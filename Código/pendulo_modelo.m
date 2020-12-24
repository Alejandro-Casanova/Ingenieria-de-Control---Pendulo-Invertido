%Parámetros
g=9.81;m=0.5;M=0.1;Lpend=0.4;

%Modelo linealizado del sistema
A=[0, 1,           0, 0;
   0, 0,      -m*g/M, 0;
   0, 0,           0, 1;
   0, 0, g*(M+m)/Lpend/M, 0];

B=[0;1/M;0;-1/M/Lpend];

C=[1, 0, 0, 0
   0, 0, 1, 0];

D=[0;
   0];

%Funciones de transferencia
g1=ss(A,B,C,D);
s=tf('s');
ga=1/(-M*Lpend*s^2+g*(M+m));
gx=(g-Lpend*s^2)/((M+m)*g*s^2-Lpend*M*s^4);

%Modelo linealizado del sistema Compelto
Kp=0.0494;Kb=0.0308;R=6.84;r=0.005;J=(M+m)*r^2;B=0.0003;

% AT=[0,                   1,                 0, 0;
%     0,       -Kp*Kb/M/r^2/R,           -m*g/M, 0;
%     0,                    0,                0, 1;
%     0,  Kp*Kb/M/Lpend/R/r^2,  g*(M+m)/Lpend/M, 0];
% 
% BT=[0;Kp/R/r/M;0;-Kp/R/r/M/Lpend];

AT=[0,                    1,                                   0, 0;
    0,          -(R*B+Kp*Kb)*(M+m)/M/(J+r^2),             -m*g/M, 0;
    0,                    0,                                   0, 1;
    0,     (R*B+Kb*Kp)*(M+m)/(J+r^2)/M/Lpend,    g*(M+m)/Lpend/M, 0];

BT=[0;(M+m)*r*Kp/M/(J+r^2);0;-(M+m)*r*Kp/(J+r^2)/M/Lpend];

%Sistema total (Continuo)
Gt=ss(AT,BT,C,D,'StateName',{'x' 'x_dot' 'theta' 'theta_dot'},'InputName','Voltage');

%Modelo Discreto
T=0.001;
Gtd=c2d(Gt,T,'Tustin');

%Controlabilidad y Observabilidad
P=obsv(Gt.A,Gt.C);
Qc=ctrb(Gt.A,Gt.B);

%Asignación directa de polos (Continuo)
pd=[-2 -3 -4 -1000];
K=place(Gt.A,Gt.B,pd);
Ar=Gt.A-Gt.B*K;
Gr=ss(Ar,Gt.B,Gt.C,Gt.D,'StateName',{'x' 'x_dot' 'theta' 'theta_dot'},'InputName','Voltage');

%Observador (Continuo)
%pobs=[-4,-5,-150, -500];
pobs=[-6.6,-6.6,-275, -500]; %Funciona
%pobs=[-5 -10 -15 -20]; %Para asignación directa a secas
H=place(Gt.A',Gt.C',pobs)';

%Asignación directa de polos (Discreto)
pDiscrete=exp(pd.*T);
Kd=place(Gtd.A,Gtd.B,pDiscrete);
Ard=Gtd.A-Gtd.B*Kd;
Gdr=ss(Ard,Gtd.B,Gtd.C,Gtd.D,T,'StateName',{'x' 'x_dot' 'theta' 'theta_dot'},'InputName','Voltage');

%Observador (Discreto)
pobsDiscrete=exp(pobs.*T);
Hd=place(Gtd.A',Gtd.C',pobsDiscrete)';

%Observador óptimo (Discreto)
Qobs=10;
Robs=[1 0;
      0 1;];
[Fkalman,Hkalman,F2,F3]=kalman(Gtd,Qobs,Robs);

%Filtros (para las derivadas de la salida)
filter=tf([0 0.09516],[1 -0.9048],0.001);
filter2=tf([0 10],[1 10]);
filter3=tf([0 1],[1 -0.0000454],0.01);

%LQR discreto

% Q=[500 0 0 0; %Funciona
%    0 0 0 0;
%    0 0 5000 0;
%    0 0 0 0;];
% R=0.05;
Q=[500 0 0 0;
   0 0 0 0;
   0 0 1000 0;
   0 0 0 0;];
R=0.005;
Klqr=dlqr(Gtd.A,Gtd.B,Q,R);
poles=log(eigs(Gtd.A-Gtd.B*Klqr))/T; %Polos del sistema realimentado

Alqr=Gtd.A-Gtd.B*Klqr;
Glqr=ss(Alqr,Gtd.B,Gtd.C,Gtd.D,T,'StateName',{'x' 'x_dot' 'theta' 'theta_dot'},'InputName','Voltage','OutputName',{'x' 'theta'});
x0=[0 0 0.05 0];

%ServoSistema
Cservo=[1 0 0 0];
Ahat=[Gtd.A zeros(4,1); -Gtd.C(1,1:end) 0;];
Bhat=[Gtd.B; 0];
Phat=[Gtd.A Gtd.B;-Gtd.C(1,1:end) 0];

%Discreto
%Gservo=c2d(ss(Ahat,Bhat,Cservo,0),T,'Tustin');

pservo=exp([-0.75,-2.5+1.5j,-2.5-1.5j,-14.6,-550].*T);

Kservo=acker(Ahat,Bhat,pservo);

Qservo=[2000 0 0 0 0;
        0 0 0 0 0;
        0 0 1000 0 0;
        0 0 0 0 0;
        0 0 0 0 5000];
Rservo=0.015;
% Qservo=[1000 0 0 0 0;%Funciona
%         0 0 0 0 0;
%         0 0 1000 0 0;
%         0 0 0 0 0;
%         0 0 0 0 5000];
% Rservo=0.01;

%Gtdservo=ss(Gtd.A,Gtd.B,Gtd.C(1,1:end),Gtd.D(1),T);
Gtservo=ss(Gt.A,Gt.B,[1 0 0 0],0);
Gtdservo=c2d(ss(Gt.A,Gt.B,[1 0 0 0],0),T,'Tustin');
[Kservo2,S,e]=lqi(Gtdservo,Qservo,Rservo);

%Swing-up
Tperiod=0.41;
tacc=0.02;
alfaBest=sin(2*pi*tacc/Tperiod);
Xmax=0.045;
Xmin=-0.045;