#include "matmul.h"
#include <stdint.h>
#define mm_X (*(volatile uint32_t*)0x38300000)
#define mm_Y (*(volatile uint32_t*)0x38300010)
#define reg_mprj_datal (*(volatile uint32_t*)0x2600000c)

int* __attribute__ ( ( section ( ".mprjram" ) ) ) matmul()
{
/*
	int i=0;
	int j;
	int k;
	int sum;
	int kk;
	unsigned int count = 0;
	for (i=0; i<MATMUL_SIZE; i++){
		for (j=0; j<MATMUL_SIZE; j++){
			sum = 0;
			for(k = 0;k<MATMUL_SIZE;k++)
				sum += MatA[(i*MATMUL_SIZE) + k] * MatB[(k*MATMUL_SIZE) + j];
			result[(i*MATMUL_SIZE) + j] = sum;
		}
	}
	return result;
*/
	reg_mprj_datal = 0xAB200000;
	uint8_t i, j;
	for (i=0; i<MATMUL_SIZE*MATMUL_SIZE; i++){
		mm_X = MatB[i];
	}
	for (i=0; i<MATMUL_SIZE*MATMUL_SIZE; i++){
		mm_X = MatA[i];
	}

	for(i=0;i<MATMUL_SIZE*MATMUL_SIZE;i++){
		result[i] = mm_Y;
	}
	reg_mprj_datal = 0xAB2F0000;
	return result;
}
