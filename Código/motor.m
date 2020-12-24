%Modelo Motor (libre) 
Kp=0.0494;Kb=0.0308;R=6.84;L=0.0105;B=0.0003;J1=7.55*10^-6;
s=tf('s');
G=Kp/((J1*s+B)*(L*s+R)+Kp*Kb);
%step(12*G);

%Fuerza en función de voltaje
r=0.005;m=0.5;M=0.1;J=(M+m)*r^2;
Gf=Kp*r*(m+M)*s/(s^2*(L*J+r^2*L*(M+m))+s*(R*J+L*B+r^2*R*(M+m))+(Kp*Kb+R*B));
Gf2=zpk(Gf);
%Aproximación a orden 1:
Gf3=balred(Gf,1);
Gf4=0.7113*s/(s+18.13);
%step(12*Gf);

%Modelo en espacio de estados
[num,den]=tfdata(Gf);
[A,B,C,D]=tf2ss(num{1},den{1});
Gss=ss(A,B,C,D);