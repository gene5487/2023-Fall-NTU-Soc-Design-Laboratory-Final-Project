#include "fir.h"
#include <stdint.h>
#define fir_X (*(volatile uint32_t*)0x38200000)
#define fir_Y (*(volatile uint32_t*)0x38200010)
#define reg_mprj_datal (*(volatile uint32_t*)0x2600000c)

void __attribute__ ( ( section ( ".mprjram" ) ) ) initfir() {
	for(int i=0; i<FIR_N; i++) {
		inputbuffer[i] = 0;
		outputsignal[i] = 0;
	}
}

int __attribute__ ( ( section ( ".mprjram" ) ) ) firfilter(int inputsample){
	for(int i=FIR_N-1; i>0; i--){
		inputbuffer[i] = inputbuffer[i-1];
	}
	inputbuffer[0] = inputsample;
	
	int outputsample = 0;
	for(int i=0; i<FIR_N; i++){
		outputsample += taps[i]*inputbuffer[i];
	}
	return outputsample;
}

int* __attribute__ ( ( section ( ".mprjram" ) ) ) fir(){
	/*
	reg_mprj_datal = 0xAB100000;
	initfir();
	for(int i=0; i<64; i++){
		outputsignal[i] = firfilter(i);
	}
	reg_mprj_datal = 0xAB1F0000;
	return outputsignal;
	*/
	
	reg_mprj_datal = 0xAB100000;
	uint8_t i;
	for(i=0;i<FIR_N;i++){
		fir_X = taps[i];
	}
	for(i=0;i<64;i++){
		fir_X = 64;
		outputsignal[i] = fir_Y;
	}
	reg_mprj_datal = 0xAB1F0000;
	return outputsignal;
	
}
		
