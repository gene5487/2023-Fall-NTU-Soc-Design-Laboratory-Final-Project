	.file	"app.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/ubuntu/Desktop/project/testbench_integrated/uart" "app.c"
	.section	.mprjram,"ax",@progbits
	.align	2
	.globl	app
	.type	app, @function
app:
.LFB0:
	.file 1 "app.c"
	.loc 1 14 56
	.cfi_startproc
	.loc 1 16 2
.LVL0:
	.loc 1 17 2
	.loc 1 18 2
	.loc 1 19 2
	.loc 1 20 2
	.loc 1 21 2
	.loc 1 22 2
	.loc 1 23 2
	.loc 1 24 2
	.loc 1 25 2
	.loc 1 26 2
	.loc 1 27 2
	.loc 1 28 2
	.loc 1 29 2
	.loc 1 30 2
	.loc 1 14 56 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	sw	s1,8(sp)
	.cfi_offset 8, -4
	.cfi_offset 9, -8
	.loc 1 30 36
	li	a4,-1420820480
	li	a5,637534208
	lui	a0,%hi(.LANCHOR0)
	sw	a4,12(a5)
	.loc 1 31 2 is_stmt 1
	.loc 1 31 58
	.loc 1 21 10 is_stmt 0
	li	t3,0
	.loc 1 20 10
	li	a1,0
	.loc 1 19 10
	li	a4,0
	.loc 1 18 10
	li	t5,0
	.loc 1 17 10
	li	a7,0
	.loc 1 16 10
	li	a2,0
	addi	a0,a0,%lo(.LANCHOR0)
	.loc 1 32 14
	li	t4,943718400
	.loc 1 43 38
	li	s1,942669824
	.loc 1 38 63
	li	t1,9
	.loc 1 39 38
	li	s0,940572672
	.loc 1 34 54
	li	t2,21
	.loc 1 35 38
	li	t0,941621248
	.loc 1 31 58
	li	t6,15
	li	a6,10
.LVL1:
.L2:
	.loc 1 32 3 is_stmt 1
	.loc 1 32 14 is_stmt 0
	lw	a5,0(t4)
.LVL2:
	.loc 1 34 3 is_stmt 1
	.loc 1 34 17 is_stmt 0
	andi	a3,a5,4
	.loc 1 34 6
	beq	a3,zero,.L3
	.loc 1 34 54 discriminator 1
	bgtu	a2,t2,.L3
	.loc 1 35 4 is_stmt 1
	.loc 1 35 46 is_stmt 0
	slli	a3,a2,2
	add	a3,a0,a3
	lw	a3,0(a3)
	.loc 1 36 19
	addi	a2,a2,1
	andi	a2,a2,0xff
	.loc 1 35 38
	sw	a3,0(t0)
	.loc 1 36 4 is_stmt 1
.LVL3:
.L4:
	.loc 1 48 3
	.loc 1 48 17 is_stmt 0
	andi	a3,a5,8
	.loc 1 48 6
	beq	a3,zero,.L6
	.loc 1 48 52 discriminator 1
	bgtu	a4,a6,.L6
	.loc 1 49 4 is_stmt 1
	.loc 1 49 36 is_stmt 0
	lw	a5,16(t0)
.LVL4:
	.loc 1 50 4 is_stmt 1
	.loc 1 50 20 is_stmt 0
	addi	a4,a4,1
	andi	a4,a4,0xff
.LVL5:
.L7:
	.loc 1 31 58 is_stmt 1
	bleu	a4,a6,.L2
	.loc 1 31 31 is_stmt 0 discriminator 1
	bleu	a1,t1,.L2
	.loc 1 31 58 discriminator 2
	bleu	t3,t6,.L2
.L14:
	.loc 1 61 2 is_stmt 1
	.loc 1 63 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.loc 1 61 36
	li	a5,637534208
	li	a4,-1419837440
.LVL6:
	sw	a4,12(a5)
	.loc 1 62 2 is_stmt 1
	.loc 1 63 1 is_stmt 0
	lw	s1,8(sp)
	.cfi_restore 9
	addi	a0,a0,88
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL7:
.L6:
	.cfi_restore_state
	.loc 1 52 8 is_stmt 1
	.loc 1 52 22 is_stmt 0
	andi	a3,a5,2
	.loc 1 52 11
	beq	a3,zero,.L8
	.loc 1 52 61 discriminator 1
	bgtu	a1,t1,.L9
	.loc 1 53 4 is_stmt 1
	.loc 1 54 22 is_stmt 0
	addi	a1,a1,1
	.loc 1 53 41
	lw	a5,16(s0)
.LVL8:
	.loc 1 54 4 is_stmt 1
	.loc 1 54 22 is_stmt 0
	andi	a1,a1,0xff
.LVL9:
	j	.L7
.LVL10:
.L3:
	.loc 1 38 8 is_stmt 1
	.loc 1 38 22 is_stmt 0
	andi	a3,a5,1
	.loc 1 38 11
	beq	a3,zero,.L5
	.loc 1 38 63 discriminator 1
	bgtu	a7,t1,.L5
	.loc 1 39 4 is_stmt 1
	.loc 1 39 41 is_stmt 0
	slli	a3,a7,2
	add	a3,a0,a3
	lw	a3,88(a3)
	.loc 1 40 21
	addi	a7,a7,1
	andi	a7,a7,0xff
	.loc 1 39 38
	sw	a3,0(s0)
	.loc 1 40 4 is_stmt 1
.LVL11:
	.loc 1 40 21 is_stmt 0
	j	.L4
.LVL12:
.L5:
	.loc 1 42 8 is_stmt 1
	.loc 1 42 22 is_stmt 0
	andi	a3,a5,16
	.loc 1 42 11
	beq	a3,zero,.L4
	.loc 1 43 4 is_stmt 1
	.loc 1 43 44 is_stmt 0
	slli	a3,t5,2
	add	a3,a0,a3
	lw	a3,128(a3)
	.loc 1 44 18
	addi	t5,t5,1
	andi	t5,t5,0xff
	.loc 1 43 38
	sw	a3,0(s1)
	.loc 1 44 4 is_stmt 1
.LVL13:
	j	.L4
.LVL14:
.L8:
	.loc 1 56 8
	.loc 1 56 22 is_stmt 0
	andi	a5,a5,32
.LVL15:
	.loc 1 56 11
	beq	a5,zero,.L7
.L10:
	.loc 1 56 55 discriminator 1
	bleu	t3,t6,.L13
.LVL16:
	.loc 1 31 58 is_stmt 1
	bleu	a4,a6,.L2
	.loc 1 31 31 is_stmt 0
	bleu	a1,t1,.L2
	.loc 1 61 2 is_stmt 1
	.loc 1 63 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.loc 1 61 36
	li	a5,637534208
	li	a4,-1419837440
.LVL17:
	sw	a4,12(a5)
	.loc 1 62 2 is_stmt 1
	.loc 1 63 1 is_stmt 0
	lw	s1,8(sp)
	.cfi_restore 9
	addi	a0,a0,88
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL18:
.L9:
	.cfi_restore_state
	.loc 1 56 8 is_stmt 1
	.loc 1 56 22 is_stmt 0
	andi	a5,a5,32
.LVL19:
	.loc 1 56 11
	bne	a5,zero,.L10
.LVL20:
	.loc 1 31 58 is_stmt 1
	bleu	a4,a6,.L2
	bleu	t3,t6,.L2
	j	.L14
.LVL21:
.L13:
	.loc 1 57 4
	.loc 1 58 19 is_stmt 0
	addi	t3,t3,1
	.loc 1 57 38
	lw	a5,16(s1)
	.loc 1 58 4 is_stmt 1
	.loc 1 58 19 is_stmt 0
	andi	t3,t3,0xff
.LVL22:
	j	.L7
	.cfi_endproc
.LFE0:
	.size	app, .-app
	.globl	result
	.globl	Matx
	.globl	MatB
	.globl	MatA
	.globl	outputsignal
	.globl	inputs
	.globl	inputsignal
	.globl	inputbuffer
	.globl	taps
	.globl	A
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	inputs, @object
	.size	inputs, 88
inputs:
	.word	0
	.word	-10
	.word	-9
	.word	23
	.word	56
	.word	63
	.word	56
	.word	23
	.word	-9
	.word	-10
	.word	0
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
	.type	A, @object
	.size	A, 40
A:
	.word	893
	.word	40
	.word	3233
	.word	4267
	.word	2669
	.word	2541
	.word	9073
	.word	6023
	.word	5681
	.word	4622
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
	.type	inputsignal, @object
	.size	inputsignal, 44
inputsignal:
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
	.type	taps, @object
	.size	taps, 44
taps:
	.word	0
	.word	-10
	.word	-9
	.word	23
	.word	56
	.word	63
	.word	56
	.word	23
	.word	-9
	.word	-10
	.word	0
	.bss
	.align	2
	.type	result, @object
	.size	result, 64
result:
	.zero	64
	.type	outputsignal, @object
	.size	outputsignal, 44
outputsignal:
	.zero	44
	.type	inputbuffer, @object
	.size	inputbuffer, 44
inputbuffer:
	.zero	44
	.text
.Letext0:
	.file 2 "fir.h"
	.file 3 "matmul.h"
	.file 4 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h"
	.file 5 "qsort.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x265
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.4byte	.LASF35
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL7
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x6
	.4byte	0x3d
	.4byte	0x36
	.byte	0x4
	.4byte	0x36
	.byte	0x9
	.byte	0
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.byte	0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0xa
	.string	"A"
	.byte	0x5
	.byte	0x5
	.byte	0x5
	.4byte	0x26
	.byte	0x5
	.byte	0x3
	.4byte	A
	.byte	0x6
	.4byte	0x3d
	.4byte	0x64
	.byte	0x4
	.4byte	0x36
	.byte	0xa
	.byte	0
	.byte	0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0x6
	.byte	0x5
	.4byte	0x54
	.byte	0x5
	.byte	0x3
	.4byte	taps
	.byte	0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x7
	.byte	0x5
	.4byte	0x54
	.byte	0x5
	.byte	0x3
	.4byte	inputbuffer
	.byte	0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	0x54
	.byte	0x5
	.byte	0x3
	.4byte	inputsignal
	.byte	0x6
	.4byte	0x3d
	.4byte	0xaa
	.byte	0x4
	.4byte	0x36
	.byte	0x15
	.byte	0
	.byte	0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x9
	.byte	0x5
	.4byte	0x9a
	.byte	0x5
	.byte	0x3
	.4byte	inputs
	.byte	0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0xa
	.byte	0x5
	.4byte	0x54
	.byte	0x5
	.byte	0x3
	.4byte	outputsignal
	.byte	0x6
	.4byte	0x3d
	.4byte	0xde
	.byte	0x4
	.4byte	0x36
	.byte	0xf
	.byte	0
	.byte	0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x5
	.byte	0x6
	.4byte	0xce
	.byte	0x5
	.byte	0x3
	.4byte	MatA
	.byte	0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0xa
	.byte	0x6
	.4byte	0xce
	.byte	0x5
	.byte	0x3
	.4byte	MatB
	.byte	0x6
	.4byte	0x3d
	.4byte	0x112
	.byte	0x4
	.4byte	0x36
	.byte	0x1f
	.byte	0
	.byte	0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0xf
	.byte	0x6
	.4byte	0x102
	.byte	0x5
	.byte	0x3
	.4byte	Matx
	.byte	0x2
	.4byte	.LASF11
	.byte	0x3
	.byte	0x16
	.byte	0x6
	.4byte	0xce
	.byte	0x5
	.byte	0x3
	.4byte	result
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF15
	.byte	0x7
	.4byte	.LASF18
	.byte	0x2e
	.byte	0x17
	.4byte	0x15d
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF17
	.byte	0x7
	.4byte	.LASF19
	.byte	0x34
	.byte	0x1b
	.4byte	0x176
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.byte	0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF21
	.byte	0xb
	.string	"app"
	.byte	0x1
	.byte	0xe
	.byte	0x33
	.4byte	0x256
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.4byte	0x256
	.byte	0x3
	.4byte	.LASF22
	.byte	0x10
	.byte	0xa
	.4byte	0x152
	.4byte	.LLST0
	.byte	0x3
	.4byte	.LASF23
	.byte	0x11
	.byte	0xa
	.4byte	0x152
	.4byte	.LLST1
	.byte	0x3
	.4byte	.LASF24
	.byte	0x12
	.byte	0xa
	.4byte	0x152
	.4byte	.LLST2
	.byte	0x3
	.4byte	.LASF25
	.byte	0x13
	.byte	0xa
	.4byte	0x152
	.4byte	.LLST3
	.byte	0x3
	.4byte	.LASF26
	.byte	0x14
	.byte	0xa
	.4byte	0x152
	.4byte	.LLST4
	.byte	0x3
	.4byte	.LASF27
	.byte	0x15
	.byte	0xa
	.4byte	0x152
	.4byte	.LLST5
	.byte	0x3
	.4byte	.LASF28
	.byte	0x16
	.byte	0x6
	.4byte	0x3d
	.4byte	.LLST6
	.byte	0xc
	.4byte	.LASF36
	.byte	0x1
	.byte	0x17
	.byte	0x6
	.4byte	0x25c
	.byte	0x5
	.4byte	.LASF29
	.byte	0x18
	.4byte	0x16b
	.byte	0x8
	.byte	0x5
	.4byte	.LASF30
	.byte	0x19
	.4byte	0x16b
	.byte	0x2
	.byte	0x5
	.4byte	.LASF31
	.byte	0x1a
	.4byte	0x16b
	.byte	0x20
	.byte	0x5
	.4byte	.LASF32
	.byte	0x1b
	.4byte	0x16b
	.byte	0x4
	.byte	0x5
	.4byte	.LASF33
	.byte	0x1c
	.4byte	0x16b
	.byte	0x1
	.byte	0x5
	.4byte	.LASF34
	.byte	0x1d
	.4byte	0x16b
	.byte	0x10
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x3d
	.byte	0xe
	.4byte	0x3d
	.byte	0x4
	.4byte	0x36
	.byte	0x24
	.byte	0
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
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x1
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
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x4
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
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
	.byte	0xc
	.byte	0x34
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x1
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
	.4byte	.LVL3
	.4byte	.LVL10
	.byte	0x1
	.byte	0x5c
	.byte	0x7
	.4byte	.LVL14
	.4byte	.LFE0
	.byte	0x1
	.byte	0x5c
	.byte	0
.LLST1:
	.byte	0x7
	.4byte	.LVL0
	.4byte	.LVL1
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL3
	.4byte	.LVL10
	.byte	0x1
	.byte	0x61
	.byte	0x7
	.4byte	.LVL11
	.4byte	.LVL12
	.byte	0x1
	.byte	0x61
	.byte	0x7
	.4byte	.LVL14
	.4byte	.LFE0
	.byte	0x1
	.byte	0x61
	.byte	0
.LLST2:
	.byte	0x7
	.4byte	.LVL0
	.4byte	.LVL1
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL3
	.4byte	.LVL10
	.byte	0x1
	.byte	0x6e
	.byte	0x7
	.4byte	.LVL13
	.4byte	.LFE0
	.byte	0x1
	.byte	0x6e
	.byte	0
.LLST3:
	.byte	0x7
	.4byte	.LVL0
	.4byte	.LVL1
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL5
	.4byte	.LVL6
	.byte	0x1
	.byte	0x5e
	.byte	0x7
	.4byte	.LVL16
	.4byte	.LVL17
	.byte	0x1
	.byte	0x5e
	.byte	0x7
	.4byte	.LVL20
	.4byte	.LVL21
	.byte	0x1
	.byte	0x5e
	.byte	0
.LLST4:
	.byte	0x7
	.4byte	.LVL0
	.4byte	.LVL1
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL5
	.4byte	.LVL7
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.4byte	.LVL9
	.4byte	.LVL10
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.4byte	.LVL16
	.4byte	.LVL18
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.4byte	.LVL20
	.4byte	.LVL21
	.byte	0x1
	.byte	0x5b
	.byte	0
.LLST5:
	.byte	0x7
	.4byte	.LVL0
	.4byte	.LVL1
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL5
	.4byte	.LVL7
	.byte	0x1
	.byte	0x6c
	.byte	0x7
	.4byte	.LVL16
	.4byte	.LVL18
	.byte	0x1
	.byte	0x6c
	.byte	0x7
	.4byte	.LVL20
	.4byte	.LVL21
	.byte	0x1
	.byte	0x6c
	.byte	0x7
	.4byte	.LVL22
	.4byte	.LFE0
	.byte	0x1
	.byte	0x6c
	.byte	0
.LLST6:
	.byte	0x7
	.4byte	.LVL0
	.4byte	.LVL1
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL2
	.4byte	.LVL4
	.byte	0x1
	.byte	0x5f
	.byte	0x7
	.4byte	.LVL7
	.4byte	.LVL8
	.byte	0x1
	.byte	0x5f
	.byte	0x7
	.4byte	.LVL10
	.4byte	.LVL15
	.byte	0x1
	.byte	0x5f
	.byte	0x7
	.4byte	.LVL18
	.4byte	.LVL19
	.byte	0x1
	.byte	0x5f
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
.LLRL7:
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"inputsignal"
.LASF6:
	.string	"inputs"
.LASF8:
	.string	"MatA"
.LASF9:
	.string	"MatB"
.LASF26:
	.string	"qsort_output_count"
.LASF30:
	.string	"qsort_read_mask"
.LASF10:
	.string	"Matx"
.LASF33:
	.string	"qsort_write_mask"
.LASF36:
	.string	"app_output"
.LASF16:
	.string	"unsigned char"
.LASF20:
	.string	"long unsigned int"
.LASF17:
	.string	"short unsigned int"
.LASF19:
	.string	"uint32_t"
.LASF31:
	.string	"mm_read_mask"
.LASF23:
	.string	"qsort_input_count"
.LASF32:
	.string	"fir_write_mask"
.LASF27:
	.string	"mm_output_count"
.LASF2:
	.string	"unsigned int"
.LASF24:
	.string	"mm_input_count"
.LASF35:
	.string	"GNU C17 12.1.0 -mabi=ilp32 -mtune=rocket -misa-spec=2.2 -march=rv32i -g -O3 -ffreestanding"
.LASF21:
	.string	"long long unsigned int"
.LASF18:
	.string	"uint8_t"
.LASF11:
	.string	"result"
.LASF25:
	.string	"fir_output_count"
.LASF29:
	.string	"fir_read_mask"
.LASF22:
	.string	"fir_input_count"
.LASF7:
	.string	"outputsignal"
.LASF15:
	.string	"long long int"
.LASF3:
	.string	"taps"
.LASF13:
	.string	"short int"
.LASF28:
	.string	"mstatus"
.LASF4:
	.string	"inputbuffer"
.LASF14:
	.string	"long int"
.LASF34:
	.string	"mm_write_mask"
.LASF12:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"app.c"
.LASF1:
	.string	"/home/ubuntu/Desktop/project/testbench_integrated/uart"
	.ident	"GCC: (g1ea978e3066) 12.1.0"
