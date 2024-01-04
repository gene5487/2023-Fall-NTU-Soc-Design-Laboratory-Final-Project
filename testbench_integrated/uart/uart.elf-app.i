# 0 "app.c"
# 1 "/home/ubuntu/Desktop/project/testbench_integrated/uart//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "app.c"
# 1 "qsort.h" 1




int A[10] = {893, 40, 3233, 4267, 2669, 2541, 9073, 6023, 5681, 4622};
# 2 "app.c" 2
# 1 "fir.h" 1





int taps[11] = {0,-10,-9,23,56,63,56,23,-9,-10,0};
int inputbuffer[11];
int inputsignal[11] = {1,2,3,4,5,6,7,8,9,10,11};
int inputs[11*2] = {0,-10,-9,23,56,63,56,23,-9,-10,0,1,2,3,4,5,6,7,8,9,10,11};
int outputsignal[11];
# 3 "app.c" 2
# 1 "matmul.h" 1




 int MatA[4*4] = {0, 1, 2, 3,
   0, 1, 2, 3,
   0, 1, 2, 3,
   0, 1, 2, 3,
 };
 int MatB[4*4] = {1, 2, 3, 4,
  5, 6, 7, 8,
  9, 10, 11, 12,
  13, 14, 15, 16,
 };
 int Matx[4*4*2] = {1, 2, 3, 4,
  5, 6, 7, 8,
  9, 10, 11, 12,
  13, 14, 15, 16,0, 1, 2, 3,
   0, 1, 2, 3,
   0, 1, 2, 3,
   0, 1, 2, 3,};
 int result[4*4];
# 4 "app.c" 2
# 1 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint.h" 1 3 4
# 11 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint.h" 3 4
# 1 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h" 1 3 4
# 34 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h" 3 4

# 34 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h" 3 4
typedef signed char int8_t;


typedef short int int16_t;


typedef long int int32_t;


typedef long long int int64_t;


typedef unsigned char uint8_t;


typedef short unsigned int uint16_t;


typedef long unsigned int uint32_t;


typedef long long unsigned int uint64_t;




typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef long int int_least32_t;
typedef long long int int_least64_t;
typedef unsigned char uint_least8_t;
typedef short unsigned int uint_least16_t;
typedef long unsigned int uint_least32_t;
typedef long long unsigned int uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef long long unsigned int uint_fast64_t;




typedef int intptr_t;


typedef unsigned int uintptr_t;




typedef long long int intmax_t;
typedef long long unsigned int uintmax_t;
# 12 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint.h" 2 3 4
# 5 "app.c" 2
# 14 "app.c"

# 14 "app.c"
int* __attribute__ ( ( section ( ".mprjram" ) ) ) app(){

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
 (*(volatile uint32_t*)0x2600000c) = 0xAB500000;
 while (fir_output_count < 11 || qsort_output_count < 10 || mm_output_count < 16) {
  mstatus = (*(volatile uint32_t*)0x38400000);

  if (((mstatus & fir_write_mask) == fir_write_mask) && (fir_input_count < 22)) {
   (*(volatile uint32_t*)0x38200000) = inputs[fir_input_count];
   fir_input_count++;
  }
  else if (((mstatus & qsort_write_mask) == qsort_write_mask) && (qsort_input_count < 10)) {
   (*(volatile uint32_t*)0x38100000) = A[qsort_input_count];
   qsort_input_count++;
  }
  else if (((mstatus & mm_write_mask) == mm_write_mask) && (qsort_input_count < 16)) {
   (*(volatile uint32_t*)0x38300000) = Matx[mm_input_count];
   mm_input_count++;
  }


  if (((mstatus & fir_read_mask) == fir_read_mask) && (fir_output_count<11)) {
   app_output[fir_output_count] = (*(volatile uint32_t*)0x38200010);
   fir_output_count++;
  }
  else if (((mstatus & qsort_read_mask) == qsort_read_mask) && (qsort_output_count < 10)) {
   app_output[11+qsort_output_count] = (*(volatile uint32_t*)0x38100010);
   qsort_output_count++;
  }
  else if (((mstatus & mm_read_mask) == mm_read_mask) && (mm_output_count < 16)) {
   app_output[21+mm_output_count] = (*(volatile uint32_t*)0x38300010);
   mm_output_count++;
  }
 }
 (*(volatile uint32_t*)0x2600000c) = 0xAB5F0000;
 return A;
}
