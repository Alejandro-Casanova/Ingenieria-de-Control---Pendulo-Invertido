
/*
 * Include Files
 *
 */
#if defined(MATLAB_MEX_FILE)
#include "tmwtypes.h"
#include "simstruc_types.h"
#else
#include "rtwtypes.h"
#endif



/* %%%-SFUNWIZ_wrapper_includes_Changes_BEGIN --- EDIT HERE TO _END */
#include <math.h>

#ifndef MATLAB_MEX_FILE

#include <Arduino.h>

int rot1=2;
int rot2=5;
int lin1 = 19;
int lin2=17;

//int motPwr = 9;
//int motDir = 10;

//Lineal: 1850 pulsos (1600 utilizables) 32cm carrera max
//Rot: 1800 pulsos
volatile short rotPos=0; //Anti-horario Positivo
volatile short linPos=0; //Derecha Positivo

void rotCounter(){
    static unsigned long last_interrupt_time_rot = 0;
    unsigned long interrupt_time_rot = micros();
    if (interrupt_time_rot - last_interrupt_time_rot > 300){
          if ((digitalRead(rot2)==LOW))
          {
          rotPos++;
          }
          else
          {
          rotPos--;    
          }
   }
   last_interrupt_time_rot = interrupt_time_rot;
}

void linCounter(){
    static unsigned long last_interrupt_time_lin = 0;
    unsigned long interrupt_time_lin = micros();
    if (interrupt_time_lin - last_interrupt_time_lin > 300){
          if ((digitalRead(lin2)==LOW))
          {
          linPos++;
          }
          else
          {
          linPos--;    
          }
    }
    last_interrupt_time_lin = interrupt_time_lin;
}

#endif
/* %%%-SFUNWIZ_wrapper_includes_Changes_END --- EDIT HERE TO _BEGIN */
#define y_width 1

/*
 * Create external references here.  
 *
 */
/* %%%-SFUNWIZ_wrapper_externs_Changes_BEGIN --- EDIT HERE TO _END */
/* extern double func(double a); */
/* %%%-SFUNWIZ_wrapper_externs_Changes_END --- EDIT HERE TO _BEGIN */

/*
 * Output function
 *
 */
void planta_Outputs_wrapper(int16_T *rotPos_OUT,
			int16_T *linPosOut_OUT,
			const real_T *xD)
{
/* %%%-SFUNWIZ_wrapper_Outputs_Changes_BEGIN --- EDIT HERE TO _END */
if (xD[0]==1) {
    #ifndef MATLAB_MEX_FILE
    
    //digitalWrite(motDir, dir_IN[0]); //TRUE == Izquierda
    //digitalWrite(13, dir_IN[0]);
    //analogWrite(motPwr, pwm_IN[0]);
    linPosOut_OUT[0]=linPos;
    rotPos_OUT[0]=rotPos;
    
    #endif
}
/* %%%-SFUNWIZ_wrapper_Outputs_Changes_END --- EDIT HERE TO _BEGIN */
}

/*
 * Updates function
 *
 */
void planta_Update_wrapper(int16_T *rotPos_OUT,
			int16_T *linPosOut_OUT,
			real_T *xD)
{
/* %%%-SFUNWIZ_wrapper_Update_Changes_BEGIN --- EDIT HERE TO _END */
if (xD[0]!=1) {
    
    #ifndef MATLAB_MEX_FILE
    
    pinMode(12, OUTPUT);
    //pinMode(13, OUTPUT);
    digitalWrite(12,HIGH);
    pinMode(rot1, INPUT_PULLUP);
    pinMode(rot2, INPUT_PULLUP);
    pinMode(lin1, INPUT);
    pinMode(lin2, INPUT);
    
    pinMode(7, OUTPUT);
    digitalWrite(7, LOW);
    //pinMode(motPwr, OUTPUT);
    //pinMode(motDir, OUTPUT);

    //Posicionar el carro
    //digitalWrite(motDir, HIGH);
    //analogWrite(motPwr, 100);
    //delay(2500);
    //analogWrite(motPwr, 0);
    
    attachInterrupt(digitalPinToInterrupt(rot1), rotCounter, RISING);
    attachInterrupt(digitalPinToInterrupt(lin1), linCounter, RISING);
    
    //Serial.begin(9600);

    #endif
    xD[0]=1;
}
/* %%%-SFUNWIZ_wrapper_Update_Changes_END --- EDIT HERE TO _BEGIN */
}

