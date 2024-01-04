#include "qsort.h"
#include "fir.h"
#include "matmul.h"
#include <stdint.h>
#define qsort_X (*(volatile uint32_t*)0x38100000)
#define qsort_Y (*(volatile uint32_t*)0x38100010)
#define fir_X (*(volatile uint32_t*)0x38200000)
#define fir_Y (*(volatile uint32_t*)0x38200010)
#define mm_X (*(volatile uint32_t*)0x38300000)
#define mm_Y (*(volatile uint32_t*)0x38300010)
#define status (*(volatile uint32_t*)0x38400000)
#define reg_mprj_datal (*(volatile uint32_t*)0x2600000c)

int* __attribute__ ( ( section ( ".mprjram" ) ) ) app(){
	// sort(0,SIZE-1);
	uint8_t fir_input_count = 0;
	uint8_t qsort_input_count = 0;
	uint8_t mm_input_count = 0;
	uint8_t fir_output_count = 0;
	uint8_t qsort_output_count = 0;
	uint8_t mm_output_count = 0;
	int mstatus = 0;
	int app_output[37];
	uint32_t fir_read_mask = 0x00000008;
	uint32_t qsort_read_mask = 0x00000002;
	uint32_t mm_read_mask = 0x00000020;
	uint32_t fir_write_mask = 0x00000004;
	uint32_t qsort_write_mask = 0x00000001;
	uint32_t mm_write_mask = 0x00000010;
	reg_mprj_datal = 0xAB500000;
	while (fir_output_count < 11 || qsort_output_count < 10 || mm_output_count < 16) {
		mstatus = status;
		// write
		if ((mstatus & fir_write_mask) == fir_write_mask) {
			fir_X = inputs[fir_input_count];
			fir_input_count++;
		}
		else if ((mstatus & qsort_write_mask) == qsort_write_mask) {
			qsort_X = A[qsort_input_count];
			qsort_input_count++;
		}
		else if ((mstatus & mm_write_mask) == mm_write_mask) {
			mm_X = Matx[mm_input_count];
			mm_input_count++;
		}

		// read
		if ((mstatus & fir_read_mask) == fir_read_mask) {
			app_output[fir_output_count] = fir_Y;
			fir_output_count++;
		}
		else if ((mstatus & qsort_read_mask) == qsort_read_mask) {
			app_output[11+qsort_output_count] = qsort_Y;
			qsort_output_count++;
		}
		else if ((mstatus & mm_read_mask) == mm_read_mask) {
			app_output[21+mm_output_count] = mm_Y;
			mm_output_count++;
		}
	}
	reg_mprj_datal = 0xAB5F0000;
	return A;
}

