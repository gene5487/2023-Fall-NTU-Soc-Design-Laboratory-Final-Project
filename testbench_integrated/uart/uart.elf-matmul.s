	.file	"matmul.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/ubuntu/Desktop/project/testbench/uart" "matmul.c"
	.section	.mprjram,"ax",@progbits
	.align	2
	.globl	matmul
	.type	matmul, @function
matmul:
.LFB0:
	.file 1 "matmul.c"
	.loc 1 8 1
	.cfi_startproc
	.loc 1 26 2
	.loc 1 29 43 is_stmt 0
	lui	a4,%hi(.LANCHOR0)
	addi	a4,a4,%lo(.LANCHOR0)
	lw	a2,0(a4)
	.loc 1 8 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	sw	s1,8(sp)
	sw	s2,4(sp)
	.cfi_offset 8, -4
	.cfi_offset 9, -8
	.cfi_offset 18, -12
	.loc 1 29 43
	lw	a0,4(a4)
	.loc 1 26 36
	li	a3,637534208
	li	a5,-1423966208
	.loc 1 29 43
	lw	a1,8(a4)
	.loc 1 26 36
	sw	a5,12(a3)
	.loc 1 27 2 is_stmt 1
	.loc 1 28 2
.LVL0:
	.loc 1 28 13
	.loc 1 29 3
	.loc 1 29 37 is_stmt 0
	li	a5,942669824
	sw	a2,0(a5)
	.loc 1 28 20 is_stmt 1
.LVL1:
	.loc 1 28 13
	.loc 1 29 3
	.loc 1 29 43 is_stmt 0
	lw	a2,12(a4)
	.loc 1 29 37
	sw	a0,0(a5)
	.loc 1 28 20 is_stmt 1
.LVL2:
	.loc 1 28 13
	.loc 1 29 3
	.loc 1 29 43 is_stmt 0
	lw	a0,16(a4)
	.loc 1 29 37
	sw	a1,0(a5)
	.loc 1 28 20 is_stmt 1
.LVL3:
	.loc 1 28 13
	.loc 1 29 3
	.loc 1 29 43 is_stmt 0
	lw	a1,20(a4)
	.loc 1 29 37
	sw	a2,0(a5)
	.loc 1 28 20 is_stmt 1
.LVL4:
	.loc 1 28 13
	.loc 1 29 3
	.loc 1 29 43 is_stmt 0
	lw	a2,24(a4)
	.loc 1 29 37
	sw	a0,0(a5)
	.loc 1 28 20 is_stmt 1
.LVL5:
	.loc 1 28 13
	.loc 1 29 3
	.loc 1 29 43 is_stmt 0
	lw	a0,28(a4)
	.loc 1 29 37
	sw	a1,0(a5)
	.loc 1 28 20 is_stmt 1
.LVL6:
	.loc 1 28 13
	.loc 1 29 3
	.loc 1 29 43 is_stmt 0
	lw	a1,32(a4)
	.loc 1 29 37
	sw	a2,0(a5)
	.loc 1 28 20 is_stmt 1
.LVL7:
	.loc 1 28 13
	.loc 1 29 3
	.loc 1 29 43 is_stmt 0
	lw	a2,36(a4)
	.loc 1 29 37
	sw	a0,0(a5)
	.loc 1 28 20 is_stmt 1
.LVL8:
	.loc 1 28 13
	.loc 1 29 3
	.loc 1 29 43 is_stmt 0
	lw	a0,40(a4)
	.loc 1 29 37
	sw	a1,0(a5)
	.loc 1 28 20 is_stmt 1
.LVL9:
	.loc 1 28 13
	.loc 1 29 3
	.loc 1 29 43 is_stmt 0
	lw	a1,44(a4)
	.loc 1 29 37
	sw	a2,0(a5)
	.loc 1 28 20 is_stmt 1
.LVL10:
	.loc 1 28 13
	.loc 1 29 3
	.loc 1 29 43 is_stmt 0
	lw	a2,48(a4)
	.loc 1 29 37
	sw	a0,0(a5)
	.loc 1 28 20 is_stmt 1
.LVL11:
	.loc 1 28 13
	.loc 1 29 3
	.loc 1 29 43 is_stmt 0
	lw	a0,52(a4)
	.loc 1 29 37
	sw	a1,0(a5)
	.loc 1 28 20 is_stmt 1
.LVL12:
	.loc 1 28 13
	.loc 1 29 3
	.loc 1 29 43 is_stmt 0
	lw	a1,56(a4)
	.loc 1 29 37
	sw	a2,0(a5)
	.loc 1 28 20 is_stmt 1
.LVL13:
	.loc 1 28 13
	.loc 1 29 3
	.loc 1 29 43 is_stmt 0
	lw	a2,60(a4)
	.loc 1 29 37
	sw	a0,0(a5)
	.loc 1 28 20 is_stmt 1
.LVL14:
	.loc 1 28 13
	.loc 1 29 3
	.loc 1 32 43 is_stmt 0
	lw	a0,64(a4)
	.loc 1 29 37
	sw	a1,0(a5)
	.loc 1 28 20 is_stmt 1
.LVL15:
	.loc 1 28 13
	.loc 1 29 3
	.loc 1 32 43 is_stmt 0
	lw	a1,68(a4)
	.loc 1 29 37
	sw	a2,0(a5)
	.loc 1 28 20 is_stmt 1
.LVL16:
	.loc 1 28 13
	.loc 1 32 3
	.loc 1 32 43 is_stmt 0
	lw	a2,72(a4)
	.loc 1 32 37
	sw	a0,0(a5)
	.loc 1 31 20 is_stmt 1
.LVL17:
	.loc 1 31 13
	.loc 1 32 3
	.loc 1 32 43 is_stmt 0
	lw	a0,76(a4)
	.loc 1 32 37
	sw	a1,0(a5)
	.loc 1 31 20 is_stmt 1
.LVL18:
	.loc 1 31 13
	.loc 1 32 3
	.loc 1 32 43 is_stmt 0
	lw	a1,80(a4)
	.loc 1 32 37
	sw	a2,0(a5)
	.loc 1 31 20 is_stmt 1
.LVL19:
	.loc 1 31 13
	.loc 1 32 3
	.loc 1 32 43 is_stmt 0
	lw	a2,84(a4)
	.loc 1 32 37
	sw	a0,0(a5)
	.loc 1 31 20 is_stmt 1
.LVL20:
	.loc 1 31 13
	.loc 1 32 3
	.loc 1 32 43 is_stmt 0
	lw	a0,88(a4)
	.loc 1 32 37
	sw	a1,0(a5)
	.loc 1 31 20 is_stmt 1
.LVL21:
	.loc 1 31 13
	.loc 1 32 3
	.loc 1 32 43 is_stmt 0
	lw	a1,92(a4)
	.loc 1 32 37
	sw	a2,0(a5)
	.loc 1 31 20 is_stmt 1
.LVL22:
	.loc 1 31 13
	.loc 1 32 3
	.loc 1 32 43 is_stmt 0
	lw	a2,96(a4)
	.loc 1 32 37
	sw	a0,0(a5)
	.loc 1 31 20 is_stmt 1
.LVL23:
	.loc 1 31 13
	.loc 1 32 3
	.loc 1 32 43 is_stmt 0
	lw	a0,100(a4)
	.loc 1 32 37
	sw	a1,0(a5)
	.loc 1 31 20 is_stmt 1
.LVL24:
	.loc 1 31 13
	.loc 1 32 3
	.loc 1 32 43 is_stmt 0
	lw	a1,104(a4)
	.loc 1 32 37
	sw	a2,0(a5)
	.loc 1 31 20 is_stmt 1
.LVL25:
	.loc 1 31 13
	.loc 1 32 3
	.loc 1 32 43 is_stmt 0
	lw	a2,108(a4)
	.loc 1 32 37
	sw	a0,0(a5)
	.loc 1 31 20 is_stmt 1
.LVL26:
	.loc 1 31 13
	.loc 1 32 3
	.loc 1 32 43 is_stmt 0
	lw	a0,112(a4)
	.loc 1 32 37
	sw	a1,0(a5)
	.loc 1 31 20 is_stmt 1
.LVL27:
	.loc 1 31 13
	.loc 1 32 3
	.loc 1 32 43 is_stmt 0
	lw	a1,116(a4)
	.loc 1 32 37
	sw	a2,0(a5)
	.loc 1 31 20 is_stmt 1
.LVL28:
	.loc 1 31 13
	.loc 1 32 3
	.loc 1 32 43 is_stmt 0
	lw	a2,120(a4)
	.loc 1 32 37
	sw	a0,0(a5)
	.loc 1 31 20 is_stmt 1
.LVL29:
	.loc 1 31 13
	.loc 1 32 3
	.loc 1 32 43 is_stmt 0
	lw	a4,124(a4)
	.loc 1 32 37
	sw	a1,0(a5)
	.loc 1 31 20 is_stmt 1
.LVL30:
	.loc 1 31 13
	.loc 1 32 3
	.loc 1 32 37 is_stmt 0
	sw	a2,0(a5)
	.loc 1 31 20 is_stmt 1
.LVL31:
	.loc 1 31 13
	.loc 1 32 3
	.loc 1 32 37 is_stmt 0
	sw	a4,0(a5)
	.loc 1 31 20 is_stmt 1
.LVL32:
	.loc 1 31 13
	.loc 1 36 3
	.loc 1 36 16 is_stmt 0
	lw	a2,16(a5)
	.loc 1 36 13
	lui	a0,%hi(.LANCHOR1)
	.loc 1 36 16
	lw	s2,16(a5)
	lw	s1,16(a5)
	lw	s0,16(a5)
	lw	t2,16(a5)
	lw	t0,16(a5)
	lw	t6,16(a5)
	lw	t5,16(a5)
	lw	t4,16(a5)
	lw	t3,16(a5)
	lw	t1,16(a5)
	lw	a7,16(a5)
	.loc 1 36 13
	addi	a4,a0,%lo(.LANCHOR1)
	.loc 1 36 16
	lw	a6,16(a5)
	.loc 1 36 13
	sw	a2,0(a4)
	.loc 1 35 17 is_stmt 1
.LVL33:
	.loc 1 35 11
	.loc 1 36 3
	.loc 1 36 16 is_stmt 0
	lw	a1,16(a5)
	lw	a2,16(a5)
	lw	a5,16(a5)
	.loc 1 36 13
	sw	s2,4(a4)
	.loc 1 35 17 is_stmt 1
.LVL34:
	.loc 1 35 11
	.loc 1 36 3
	.loc 1 36 13 is_stmt 0
	sw	s1,8(a4)
	.loc 1 35 17 is_stmt 1
.LVL35:
	.loc 1 35 11
	.loc 1 36 3
	.loc 1 36 13 is_stmt 0
	sw	s0,12(a4)
	.loc 1 35 17 is_stmt 1
.LVL36:
	.loc 1 35 11
	.loc 1 36 3
	.loc 1 36 13 is_stmt 0
	sw	t2,16(a4)
	.loc 1 35 17 is_stmt 1
.LVL37:
	.loc 1 35 11
	.loc 1 36 3
	.loc 1 36 13 is_stmt 0
	sw	t0,20(a4)
	.loc 1 35 17 is_stmt 1
.LVL38:
	.loc 1 35 11
	.loc 1 36 3
	.loc 1 36 13 is_stmt 0
	sw	t6,24(a4)
	.loc 1 35 17 is_stmt 1
.LVL39:
	.loc 1 35 11
	.loc 1 36 3
	.loc 1 36 13 is_stmt 0
	sw	t5,28(a4)
	.loc 1 35 17 is_stmt 1
.LVL40:
	.loc 1 35 11
	.loc 1 36 3
	.loc 1 36 13 is_stmt 0
	sw	t4,32(a4)
	.loc 1 35 17 is_stmt 1
.LVL41:
	.loc 1 35 11
	.loc 1 36 3
	.loc 1 36 13 is_stmt 0
	sw	t3,36(a4)
	.loc 1 35 17 is_stmt 1
.LVL42:
	.loc 1 35 11
	.loc 1 36 3
	.loc 1 36 13 is_stmt 0
	sw	t1,40(a4)
	.loc 1 35 17 is_stmt 1
.LVL43:
	.loc 1 35 11
	.loc 1 36 3
	.loc 1 36 13 is_stmt 0
	sw	a7,44(a4)
	.loc 1 35 17 is_stmt 1
.LVL44:
	.loc 1 35 11
	.loc 1 36 3
	.loc 1 36 13 is_stmt 0
	sw	a6,48(a4)
	.loc 1 35 17 is_stmt 1
.LVL45:
	.loc 1 35 11
	.loc 1 36 3
	.loc 1 40 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.loc 1 36 13
	sw	a5,60(a4)
	sw	a1,52(a4)
	.loc 1 35 17 is_stmt 1
.LVL46:
	.loc 1 35 11
	.loc 1 36 3
	.loc 1 36 13 is_stmt 0
	sw	a2,56(a4)
	.loc 1 35 17 is_stmt 1
.LVL47:
	.loc 1 35 11
	.loc 1 36 3
	.loc 1 35 17
	.loc 1 35 11
	.loc 1 38 2
	.loc 1 38 36 is_stmt 0
	li	a5,-1422983168
	sw	a5,12(a3)
	.loc 1 39 2 is_stmt 1
	.loc 1 40 1 is_stmt 0
	lw	s1,8(sp)
	.cfi_restore 9
	lw	s2,4(sp)
	.cfi_restore 18
	addi	a0,a0,%lo(.LANCHOR1)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	matmul, .-matmul
	.globl	result
	.globl	Matx
	.globl	MatB
	.globl	MatA
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	MatB, @object
	.size	MatB, 64
MatB:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.type	MatA, @object
	.size	MatA, 64
MatA:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	0
	.word	1
	.word	2
	.word	3
	.word	0
	.word	1
	.word	2
	.word	3
	.word	0
	.word	1
	.word	2
	.word	3
	.type	Matx, @object
	.size	Matx, 128
Matx:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.word	0
	.word	1
	.word	2
	.word	3
	.word	0
	.word	1
	.word	2
	.word	3
	.word	0
	.word	1
	.word	2
	.word	3
	.word	0
	.word	1
	.word	2
	.word	3
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	result, @object
	.size	result, 64
result:
	.zero	64
	.text
.Letext0:
	.file 2 "matmul.h"
	.file 3 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x118
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x6
	.4byte	.LASF17
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL1
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x3
	.4byte	0x3d
	.4byte	0x36
	.byte	0x4
	.4byte	0x36
	.byte	0xf
	.byte	0
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.byte	0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.4byte	.LASF3
	.byte	0x5
	.4byte	0x26
	.byte	0x5
	.byte	0x3
	.4byte	MatA
	.byte	0x2
	.4byte	.LASF4
	.byte	0xa
	.4byte	0x26
	.byte	0x5
	.byte	0x3
	.4byte	MatB
	.byte	0x3
	.4byte	0x3d
	.4byte	0x74
	.byte	0x4
	.4byte	0x36
	.byte	0x1f
	.byte	0
	.byte	0x2
	.4byte	.LASF5
	.byte	0xf
	.4byte	0x64
	.byte	0x5
	.byte	0x3
	.4byte	Matx
	.byte	0x2
	.4byte	.LASF6
	.byte	0x16
	.4byte	0x26
	.byte	0x5
	.byte	0x3
	.4byte	result
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF7
	.byte	0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.byte	0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x5
	.4byte	.LASF13
	.byte	0x2e
	.byte	0x17
	.4byte	0xbb
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.byte	0x5
	.4byte	.LASF14
	.byte	0x34
	.byte	0x1b
	.4byte	0xd4
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF16
	.byte	0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x7
	.byte	0x33
	.4byte	0x115
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.4byte	0x115
	.byte	0x9
	.string	"i"
	.byte	0x1
	.byte	0x1b
	.byte	0xa
	.4byte	0xb0
	.4byte	.LLST0
	.byte	0xa
	.string	"j"
	.byte	0x1
	.byte	0x1b
	.byte	0xd
	.4byte	0xb0
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x3d
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x2
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x6
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x3
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x1f
	.byte	0x1b
	.byte	0x1f
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LLST0:
	.byte	0x7
	.4byte	.LVL0
	.4byte	.LVL1
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL1
	.4byte	.LVL2
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL2
	.4byte	.LVL3
	.byte	0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL3
	.4byte	.LVL4
	.byte	0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL4
	.4byte	.LVL5
	.byte	0x2
	.byte	0x34
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL5
	.4byte	.LVL6
	.byte	0x2
	.byte	0x35
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL6
	.4byte	.LVL7
	.byte	0x2
	.byte	0x36
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL7
	.4byte	.LVL8
	.byte	0x2
	.byte	0x37
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL8
	.4byte	.LVL9
	.byte	0x2
	.byte	0x38
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL9
	.4byte	.LVL10
	.byte	0x2
	.byte	0x39
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL10
	.4byte	.LVL11
	.byte	0x2
	.byte	0x3a
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL11
	.4byte	.LVL12
	.byte	0x2
	.byte	0x3b
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL12
	.4byte	.LVL13
	.byte	0x2
	.byte	0x3c
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL13
	.4byte	.LVL14
	.byte	0x2
	.byte	0x3d
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL14
	.4byte	.LVL15
	.byte	0x2
	.byte	0x3e
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL15
	.4byte	.LVL16
	.byte	0x2
	.byte	0x3f
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL16
	.4byte	.LVL17
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL17
	.4byte	.LVL18
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL18
	.4byte	.LVL19
	.byte	0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL19
	.4byte	.LVL20
	.byte	0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL20
	.4byte	.LVL21
	.byte	0x2
	.byte	0x34
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL21
	.4byte	.LVL22
	.byte	0x2
	.byte	0x35
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL22
	.4byte	.LVL23
	.byte	0x2
	.byte	0x36
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL23
	.4byte	.LVL24
	.byte	0x2
	.byte	0x37
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL24
	.4byte	.LVL25
	.byte	0x2
	.byte	0x38
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL25
	.4byte	.LVL26
	.byte	0x2
	.byte	0x39
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL26
	.4byte	.LVL27
	.byte	0x2
	.byte	0x3a
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL27
	.4byte	.LVL28
	.byte	0x2
	.byte	0x3b
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL28
	.4byte	.LVL29
	.byte	0x2
	.byte	0x3c
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL29
	.4byte	.LVL30
	.byte	0x2
	.byte	0x3d
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL30
	.4byte	.LVL31
	.byte	0x2
	.byte	0x3e
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL31
	.4byte	.LVL32
	.byte	0x2
	.byte	0x3f
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL32
	.4byte	.LVL33
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL33
	.4byte	.LVL34
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL34
	.4byte	.LVL35
	.byte	0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL35
	.4byte	.LVL36
	.byte	0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL36
	.4byte	.LVL37
	.byte	0x2
	.byte	0x34
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL37
	.4byte	.LVL38
	.byte	0x2
	.byte	0x35
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL38
	.4byte	.LVL39
	.byte	0x2
	.byte	0x36
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL39
	.4byte	.LVL40
	.byte	0x2
	.byte	0x37
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL40
	.4byte	.LVL41
	.byte	0x2
	.byte	0x38
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL41
	.4byte	.LVL42
	.byte	0x2
	.byte	0x39
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL42
	.4byte	.LVL43
	.byte	0x2
	.byte	0x3a
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL43
	.4byte	.LVL44
	.byte	0x2
	.byte	0x3b
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL44
	.4byte	.LVL45
	.byte	0x2
	.byte	0x3c
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL45
	.4byte	.LVL46
	.byte	0x2
	.byte	0x3d
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL46
	.4byte	.LVL47
	.byte	0x2
	.byte	0x3e
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL47
	.4byte	.LFE0
	.byte	0x2
	.byte	0x40
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL1:
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"MatA"
.LASF4:
	.string	"MatB"
.LASF18:
	.string	"matmul"
.LASF5:
	.string	"Matx"
.LASF11:
	.string	"unsigned char"
.LASF15:
	.string	"long unsigned int"
.LASF12:
	.string	"short unsigned int"
.LASF2:
	.string	"unsigned int"
.LASF17:
	.string	"GNU C17 12.1.0 -mabi=ilp32 -mtune=rocket -misa-spec=2.2 -march=rv32i -g -O3 -ffreestanding"
.LASF16:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint8_t"
.LASF6:
	.string	"result"
.LASF10:
	.string	"long long int"
.LASF8:
	.string	"short int"
.LASF14:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF7:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/ubuntu/Desktop/project/testbench/uart"
.LASF0:
	.string	"matmul.c"
	.ident	"GCC: (g1ea978e3066) 12.1.0"
