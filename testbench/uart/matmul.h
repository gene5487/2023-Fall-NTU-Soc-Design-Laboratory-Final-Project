#ifndef _MATMUL_H
#define _MATMUL_H

#define MATMUL_SIZE 4
	int MatA[MATMUL_SIZE*MATMUL_SIZE] = {0, 1, 2, 3,
			0, 1, 2, 3,
			0, 1, 2, 3,
			0, 1, 2, 3,
	};
	int MatB[MATMUL_SIZE*MATMUL_SIZE] = {1, 2, 3, 4,
		5, 6, 7, 8,
		9, 10, 11, 12,
		13, 14, 15, 16,
	};
	int Matx[MATMUL_SIZE*MATMUL_SIZE*2] = {1, 2, 3, 4,
		5, 6, 7, 8,
		9, 10, 11, 12,
		13, 14, 15, 16,0, 1, 2, 3,
			0, 1, 2, 3,
			0, 1, 2, 3,
			0, 1, 2, 3,};
	int result[MATMUL_SIZE*MATMUL_SIZE];
#endif
