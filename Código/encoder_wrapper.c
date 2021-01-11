
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

#define rotA 2
#define rotB 3
#define linA 18
#define linB 19
volatile int linPos = 0;
volatile int rotPos = 0;
unsigned int linAold = 0;
unsigned int linBnew = 0;
unsigned int rotAold = 0;
unsigned int rotBnew = 0;

// Interrupt on A changing state
void dorotA() {
  rotBnew^rotAold ? rotPos++ : rotPos--;
  rotAold = digitalRead(rotA);
    
    if(rotPos <= -2400){
        rotPos = rotPos + 2400;
    }else if(rotPos >= 2400){
        rotPos = rotPos - 2400;
    }
}
// Interrupt on B changing state
void dorotB() {
  rotBnew = digitalRead(rotB);
  rotBnew^rotAold ? rotPos++ : rotPos--;
    
    if(rotPos <= -2400){
        rotPos = rotPos + 2400;
    }else if(rotPos >= 2400){
        rotPos = rotPos - 2400;
    }
}

// Interrupt on A changing state
void dolinA() {
  linBnew^linAold ? linPos++ : linPos--;
  linAold = digitalRead(linA);
}
// Interrupt on B changing state
void dolinB() {
  linBnew = digitalRead(linB);
  linBnew^linAold ? linPos++ : linPos--;
}

#endif
/* %%%-SFUNWIZ_wrapper_includes_Changes_END --- EDIT HERE TO _BEGIN */
#define u_width 1
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
void encoder_Outputs_wrapper(const boolean_T *reset,
			int16_T *rotpos,
			int16_T *linpos,
			const real_T *xD)
{
/* %%%-SFUNWIZ_wrapper_Outputs_Changes_BEGIN --- EDIT HERE TO _END */
if (xD[0]==1) {
    #ifndef MATLAB_MEX_FILE
    
    if(reset[0]){
        rotPos=0;   
    }  
//     if(rotPos <= -2400) {
//         rotPos = rotPos + 2400;
//     }
//     if(rotpos >= 2400) {
//         rotPos = rotPos - 2400;
//     }
    rotpos[0]=rotPos;
    linpos[0]=linPos;
    
    #endif
}
/* %%%-SFUNWIZ_wrapper_Outputs_Changes_END --- EDIT HERE TO _BEGIN */
}

/*
 * Updates function
 *
 */
void encoder_Update_wrapper(const boolean_T *reset,
			int16_T *rotpos,
			int16_T *linpos,
			real_T *xD)
{
/* %%%-SFUNWIZ_wrapper_Update_Changes_BEGIN --- EDIT HERE TO _END */
if (xD[0]!=1) {
    #ifndef MATLAB_MEX_FILE
        pinMode(rotA, INPUT_PULLUP);
        pinMode(rotB, INPUT_PULLUP);
        pinMode(linA, INPUT);
        pinMode(linB, INPUT);
        // encoder pin on interrupt 0 (pin 2)
        attachInterrupt(digitalPinToInterrupt(rotA), dorotA, CHANGE);
        // encoder pin on interrupt 1 (pin 3)
        attachInterrupt(digitalPinToInterrupt(rotB), dorotB, CHANGE);
        // encoder pin on interrupt 0 (pin 2)
        attachInterrupt(digitalPinToInterrupt(linA), dolinA, CHANGE);
        // encoder pin on interrupt 1 (pin 3)
        attachInterrupt(digitalPinToInterrupt(linB), dolinB, CHANGE);
    #endif
xD[0]=1;
}
/* %%%-SFUNWIZ_wrapper_Update_Changes_END --- EDIT HERE TO _BEGIN */
}

