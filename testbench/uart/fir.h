#ifndef __FIR_H__
#define __FIR_H__

#define FIR_N 11

int taps[FIR_N] = {0,-10,-9,23,56,63,56,23,-9,-10,0};
int inputbuffer[FIR_N];
int inputsignal[FIR_N] = {1,2,3,4,5,6,7,8,9,10,11};
int inputs[FIR_N*2] = {0,-10,-9,23,56,63,56,23,-9,-10,0,1,2,3,4,5,6,7,8,9,10,11};
int outputsignal[64];
#endif
