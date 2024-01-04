# 0 "qsort.c"
# 1 "/home/ubuntu/Desktop/project/testbench/uart//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "qsort.c"
# 1 "qsort.h" 1




int A[10] = {893, 40, 3233, 4267, 2669, 2541, 9073, 6023, 5681, 4622};
# 2 "qsort.c" 2
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
# 3 "qsort.c" 2





# 7 "qsort.c"
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

 (*(volatile uint32_t*)0x2600000c) = 0xAB300000;
 uint8_t i;
 for(i=0;i<10;i++){
  (*(volatile uint32_t*)0x38100000) = A[i];
 }
 for(i=0;i<10;i++){
  A[i] = (*(volatile uint32_t*)0x38100010);
 }
 (*(volatile uint32_t*)0x2600000c) = 0xAB3F0000;
 return A;
}
