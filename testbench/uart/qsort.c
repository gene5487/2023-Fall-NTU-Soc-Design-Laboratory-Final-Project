#include "qsort.h"
#include <stdint.h>
#define qsort_X (*(volatile uint32_t*)0x38100000)
#define qsort_Y (*(volatile uint32_t*)0x38100010)
#define reg_mprj_datal (*(volatile uint32_t*)0x2600000c)

int __attribute__ ( ( section ( ".mprjram" ) ) ) partition(int low,int hi){
	int pivot = A[hi];
	int i = low-1,j;
	int temp;
	for(j = low;j<hi;j++){
		if(A[j] < pivot){
			i = i+1;
			temp = A[i];
			A[i] = A[j];
			A[j] = temp;
		}
	}
	if(A[hi] < A[i+1]){
		temp = A[i+1];
		A[i+1] = A[hi];
		A[hi] = temp;
	}
	return i+1;
}

void __attribute__ ( ( section ( ".mprjram" ) ) ) sort(int low, int hi){
	if(low < hi){
		int p = partition(low, hi);
		sort(low,p-1);
		sort(p+1,hi);
	}
}

int* __attribute__ ( ( section ( ".mprjram" ) ) ) qsort(){
	// sort(0,SIZE-1);
	reg_mprj_datal = 0xAB300000;
	uint8_t i;
	for(i=0;i<SIZE;i++){
		qsort_X = A[i];
	}
	for(i=0;i<SIZE;i++){
		A[i] = qsort_Y;
	}
	reg_mprj_datal = 0xAB3F0000;
	return A;
}
