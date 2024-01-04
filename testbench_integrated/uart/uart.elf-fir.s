	.file	"fir.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/ubuntu/Desktop/project/testbench/uart" "fir.c"
	.section	.mprjram,"ax",@progbits
	.align	2
	.globl	initfir
	.type	initfir, @function
initfir:
.LFB0:
	.file 1 "fir.c"
	.loc 1 7 61
	.cfi_startproc
	.loc 1 8 2
.LBB2:
	.loc 1 8 6
.LVL0:
	.loc 1 8 16
	.loc 1 9 3
	.loc 1 9 18 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	sw	zero,0(a5)
	.loc 1 10 3 is_stmt 1
	.loc 1 10 19 is_stmt 0
	sw	zero,44(a5)
	.loc 1 8 22 is_stmt 1
.LVL1:
	.loc 1 8 16
	.loc 1 9 3
	.loc 1 9 18 is_stmt 0
	sw	zero,4(a5)
	.loc 1 10 3 is_stmt 1
	.loc 1 10 19 is_stmt 0
	sw	zero,48(a5)
	.loc 1 8 22 is_stmt 1
.LVL2:
	.loc 1 8 16
	.loc 1 9 3
	.loc 1 9 18 is_stmt 0
	sw	zero,8(a5)
	.loc 1 10 3 is_stmt 1
	.loc 1 10 19 is_stmt 0
	sw	zero,52(a5)
	.loc 1 8 22 is_stmt 1
.LVL3:
	.loc 1 8 16
	.loc 1 9 3
	.loc 1 9 18 is_stmt 0
	sw	zero,12(a5)
	.loc 1 10 3 is_stmt 1
	.loc 1 10 19 is_stmt 0
	sw	zero,56(a5)
	.loc 1 8 22 is_stmt 1
.LVL4:
	.loc 1 8 16
	.loc 1 9 3
	.loc 1 9 18 is_stmt 0
	sw	zero,16(a5)
	.loc 1 10 3 is_stmt 1
	.loc 1 10 19 is_stmt 0
	sw	zero,60(a5)
	.loc 1 8 22 is_stmt 1
.LVL5:
	.loc 1 8 16
	.loc 1 9 3
	.loc 1 9 18 is_stmt 0
	sw	zero,20(a5)
	.loc 1 10 3 is_stmt 1
	.loc 1 10 19 is_stmt 0
	sw	zero,64(a5)
	.loc 1 8 22 is_stmt 1
.LVL6:
	.loc 1 8 16
	.loc 1 9 3
	.loc 1 9 18 is_stmt 0
	sw	zero,24(a5)
	.loc 1 10 3 is_stmt 1
	.loc 1 10 19 is_stmt 0
	sw	zero,68(a5)
	.loc 1 8 22 is_stmt 1
.LVL7:
	.loc 1 8 16
	.loc 1 9 3
	.loc 1 9 18 is_stmt 0
	sw	zero,28(a5)
	.loc 1 10 3 is_stmt 1
	.loc 1 10 19 is_stmt 0
	sw	zero,72(a5)
	.loc 1 8 22 is_stmt 1
.LVL8:
	.loc 1 8 16
	.loc 1 9 3
	.loc 1 9 18 is_stmt 0
	sw	zero,32(a5)
	.loc 1 10 3 is_stmt 1
	.loc 1 10 19 is_stmt 0
	sw	zero,76(a5)
	.loc 1 8 22 is_stmt 1
.LVL9:
	.loc 1 8 16
	.loc 1 9 3
	.loc 1 9 18 is_stmt 0
	sw	zero,36(a5)
	.loc 1 10 3 is_stmt 1
	.loc 1 10 19 is_stmt 0
	sw	zero,80(a5)
	.loc 1 8 22 is_stmt 1
.LVL10:
	.loc 1 8 16
	.loc 1 9 3
	.loc 1 9 18 is_stmt 0
	sw	zero,40(a5)
	.loc 1 10 3 is_stmt 1
	.loc 1 10 19 is_stmt 0
	sw	zero,84(a5)
	.loc 1 8 22 is_stmt 1
.LVL11:
	.loc 1 8 16
.LBE2:
	.loc 1 12 1 is_stmt 0
	ret
	.cfi_endproc
.LFE0:
	.size	initfir, .-initfir
	.globl	__mulsi3
	.align	2
	.globl	firfilter
	.type	firfilter, @function
firfilter:
.LFB1:
	.loc 1 14 76 is_stmt 1
	.cfi_startproc
.LVL12:
.LBB3:
	.loc 1 16 31 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
.LBE3:
	.loc 1 14 76
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
.LBB4:
	.loc 1 16 31
	addi	a5,a5,%lo(.LANCHOR0)
.LBE4:
	.loc 1 14 76
	sw	s0,56(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	sw	s7,28(sp)
	sw	s8,24(sp)
	sw	s9,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
.LBB5:
	.loc 1 16 31
	lw	s3,36(a5)
	lw	s4,32(a5)
	lw	s5,28(a5)
	lw	s6,24(a5)
	lw	s7,20(a5)
	lw	s8,16(a5)
	lw	s9,12(a5)
	lw	s2,8(a5)
.LBE5:
.LBB6:
	.loc 1 22 23
	lui	s0,%hi(.LANCHOR1)
.LBE6:
	.loc 1 14 76
	sw	s10,16(sp)
	sw	s11,12(sp)
.LBB7:
	.loc 1 22 23
	addi	s0,s0,%lo(.LANCHOR1)
	.cfi_offset 26, -48
	.cfi_offset 27, -52
.LBE7:
.LBB8:
	.loc 1 16 31
	lw	s11,0(a5)
	lw	s10,4(a5)
.LBE8:
	.loc 1 14 76
	sw	ra,60(sp)
	sw	s1,52(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
.LBB9:
	.loc 1 22 26
	lw	a1,0(s0)
.LBE9:
	.loc 1 15 2 is_stmt 1
.LBB10:
	.loc 1 15 6
.LVL13:
	.loc 1 15 20
	.loc 1 16 3
	.loc 1 16 18 is_stmt 0
	sw	s3,40(a5)
	.loc 1 15 25 is_stmt 1
.LVL14:
	.loc 1 15 20
	.loc 1 16 3
	.loc 1 16 18 is_stmt 0
	sw	s4,36(a5)
	.loc 1 15 25 is_stmt 1
.LVL15:
	.loc 1 15 20
	.loc 1 16 3
	.loc 1 16 18 is_stmt 0
	sw	s5,32(a5)
	.loc 1 15 25 is_stmt 1
.LVL16:
	.loc 1 15 20
	.loc 1 16 3
	.loc 1 16 18 is_stmt 0
	sw	s6,28(a5)
	.loc 1 15 25 is_stmt 1
.LVL17:
	.loc 1 15 20
	.loc 1 16 3
	.loc 1 16 18 is_stmt 0
	sw	s7,24(a5)
	.loc 1 15 25 is_stmt 1
.LVL18:
	.loc 1 15 20
	.loc 1 16 3
	.loc 1 16 18 is_stmt 0
	sw	s8,20(a5)
	.loc 1 15 25 is_stmt 1
.LVL19:
	.loc 1 15 20
	.loc 1 16 3
	.loc 1 16 18 is_stmt 0
	sw	s9,16(a5)
	.loc 1 15 25 is_stmt 1
.LVL20:
	.loc 1 15 20
	.loc 1 16 3
	.loc 1 16 18 is_stmt 0
	sw	s2,12(a5)
	.loc 1 15 25 is_stmt 1
.LVL21:
	.loc 1 15 20
	.loc 1 16 3
	.loc 1 16 18 is_stmt 0
	sw	s10,8(a5)
	.loc 1 15 25 is_stmt 1
.LVL22:
	.loc 1 15 20
	.loc 1 16 3
	.loc 1 16 18 is_stmt 0
	sw	s11,4(a5)
	.loc 1 15 25 is_stmt 1
.LVL23:
	.loc 1 15 20
.LBE10:
	.loc 1 18 2
	.loc 1 18 17 is_stmt 0
	sw	a0,0(a5)
	.loc 1 20 2 is_stmt 1
.LVL24:
	.loc 1 21 2
.LBB11:
	.loc 1 21 6
	.loc 1 21 16
	.loc 1 22 3
	.loc 1 21 22
	.loc 1 21 16
	.loc 1 22 3
	.loc 1 22 26 is_stmt 0
	call	__mulsi3
.LVL25:
	lw	a1,4(s0)
	mv	s1,a0
	mv	a0,s11
	call	__mulsi3
.LVL26:
	lw	a1,8(s0)
	mv	a5,a0
	mv	a0,s10
	.loc 1 22 16
	add	s1,s1,a5
.LVL27:
	.loc 1 21 22 is_stmt 1
	.loc 1 21 16
	.loc 1 22 3
	.loc 1 22 26 is_stmt 0
	call	__mulsi3
.LVL28:
	lw	a1,12(s0)
	mv	a5,a0
	mv	a0,s2
	.loc 1 22 16
	add	s1,a5,s1
.LVL29:
	.loc 1 21 22 is_stmt 1
	.loc 1 21 16
	.loc 1 22 3
	.loc 1 22 26 is_stmt 0
	call	__mulsi3
.LVL30:
	lw	a1,16(s0)
	mv	s2,a0
	mv	a0,s9
	call	__mulsi3
.LVL31:
	lw	a1,20(s0)
	.loc 1 22 16
	add	s2,s2,s1
.LVL32:
	.loc 1 21 22 is_stmt 1
	.loc 1 21 16
	.loc 1 22 3
	.loc 1 22 26 is_stmt 0
	mv	s1,a0
	mv	a0,s8
	call	__mulsi3
.LVL33:
	lw	a1,24(s0)
	.loc 1 22 16
	add	s1,s1,s2
.LVL34:
	.loc 1 21 22 is_stmt 1
	.loc 1 21 16
	.loc 1 22 3
	.loc 1 22 26 is_stmt 0
	mv	s2,a0
	mv	a0,s7
	call	__mulsi3
.LVL35:
	lw	a1,28(s0)
	.loc 1 22 16
	add	s2,s2,s1
.LVL36:
	.loc 1 21 22 is_stmt 1
	.loc 1 21 16
	.loc 1 22 3
	.loc 1 22 26 is_stmt 0
	mv	s1,a0
	mv	a0,s6
	call	__mulsi3
.LVL37:
	lw	a1,32(s0)
	.loc 1 22 16
	add	s1,s1,s2
.LVL38:
	.loc 1 21 22 is_stmt 1
	.loc 1 21 16
	.loc 1 22 3
	.loc 1 22 26 is_stmt 0
	mv	s2,a0
	mv	a0,s5
	call	__mulsi3
.LVL39:
	lw	a1,36(s0)
	.loc 1 22 16
	add	s2,s2,s1
.LVL40:
	.loc 1 21 22 is_stmt 1
	.loc 1 21 16
	.loc 1 22 3
	.loc 1 22 26 is_stmt 0
	mv	s1,a0
	mv	a0,s4
	call	__mulsi3
.LVL41:
	lw	a1,40(s0)
	mv	a5,a0
	.loc 1 22 16
	add	s1,s1,s2
.LVL42:
	.loc 1 21 22 is_stmt 1
	.loc 1 21 16
	.loc 1 22 3
	.loc 1 22 26 is_stmt 0
	mv	a0,s3
	.loc 1 22 16
	add	s1,a5,s1
.LVL43:
	.loc 1 21 22 is_stmt 1
	.loc 1 21 16
	.loc 1 22 3
	.loc 1 21 22
	.loc 1 21 16
.LBE11:
	.loc 1 24 2
.LBB12:
	.loc 1 22 26 is_stmt 0
	call	__mulsi3
.LVL44:
.LBE12:
	.loc 1 25 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	lw	s4,40(sp)
	.cfi_restore 20
	lw	s5,36(sp)
	.cfi_restore 21
	lw	s6,32(sp)
	.cfi_restore 22
	lw	s7,28(sp)
	.cfi_restore 23
	lw	s8,24(sp)
	.cfi_restore 24
	lw	s9,20(sp)
	.cfi_restore 25
	add	a0,a0,s1
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s10,16(sp)
	.cfi_restore 26
	lw	s11,12(sp)
	.cfi_restore 27
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	firfilter, .-firfilter
	.align	2
	.globl	fir
	.type	fir, @function
fir:
.LFB2:
	.loc 1 27 56 is_stmt 1
	.cfi_startproc
	.loc 1 35 2
	.loc 1 38 43 is_stmt 0
	lui	a4,%hi(.LANCHOR1)
	addi	a4,a4,%lo(.LANCHOR1)
	lw	a2,0(a4)
	lw	a0,4(a4)
	.loc 1 35 36
	li	a3,637534208
	li	a5,-1425014784
	sw	a5,12(a3)
	.loc 1 36 2 is_stmt 1
	.loc 1 37 2
.LVL45:
	.loc 1 37 11
	.loc 1 38 3
	.loc 1 38 43 is_stmt 0
	lw	a1,8(a4)
	.loc 1 38 37
	li	a5,941621248
	sw	a2,0(a5)
	.loc 1 37 16 is_stmt 1
.LVL46:
	.loc 1 37 11
	.loc 1 38 3
	.loc 1 38 43 is_stmt 0
	lw	a2,12(a4)
	.loc 1 38 37
	sw	a0,0(a5)
	.loc 1 37 16 is_stmt 1
.LVL47:
	.loc 1 37 11
	.loc 1 38 3
	.loc 1 38 43 is_stmt 0
	lw	a0,16(a4)
	.loc 1 38 37
	sw	a1,0(a5)
	.loc 1 37 16 is_stmt 1
.LVL48:
	.loc 1 37 11
	.loc 1 38 3
	.loc 1 38 43 is_stmt 0
	lw	a1,20(a4)
	.loc 1 38 37
	sw	a2,0(a5)
	.loc 1 37 16 is_stmt 1
.LVL49:
	.loc 1 37 11
	.loc 1 38 3
	.loc 1 38 43 is_stmt 0
	lw	a2,24(a4)
	.loc 1 38 37
	sw	a0,0(a5)
	.loc 1 37 16 is_stmt 1
.LVL50:
	.loc 1 37 11
	.loc 1 38 3
	.loc 1 38 43 is_stmt 0
	lw	a0,28(a4)
	.loc 1 38 37
	sw	a1,0(a5)
	.loc 1 37 16 is_stmt 1
.LVL51:
	.loc 1 37 11
	.loc 1 38 3
	.loc 1 38 43 is_stmt 0
	lw	a1,32(a4)
	.loc 1 38 37
	sw	a2,0(a5)
	.loc 1 37 16 is_stmt 1
.LVL52:
	.loc 1 37 11
	.loc 1 38 3
	.loc 1 38 43 is_stmt 0
	lw	a2,36(a4)
	.loc 1 38 37
	sw	a0,0(a5)
	.loc 1 37 16 is_stmt 1
.LVL53:
	.loc 1 37 11
	.loc 1 38 3
	.loc 1 38 43 is_stmt 0
	lw	a0,40(a4)
	.loc 1 38 37
	sw	a1,0(a5)
	.loc 1 37 16 is_stmt 1
.LVL54:
	.loc 1 37 11
	.loc 1 38 3
	.loc 1 41 50 is_stmt 0
	lw	a1,44(a4)
	.loc 1 38 37
	sw	a2,0(a5)
	.loc 1 37 16 is_stmt 1
.LVL55:
	.loc 1 37 11
	.loc 1 38 3
	.loc 1 41 50 is_stmt 0
	lw	a2,48(a4)
	.loc 1 38 37
	sw	a0,0(a5)
	.loc 1 37 16 is_stmt 1
.LVL56:
	.loc 1 37 11
	.loc 1 41 3
	.loc 1 41 37 is_stmt 0
	sw	a1,0(a5)
	.loc 1 42 3 is_stmt 1
	.loc 1 42 22 is_stmt 0
	lw	a6,16(a5)
	.loc 1 41 37
	sw	a2,0(a5)
	.loc 1 42 22
	lw	a1,16(a5)
	.loc 1 41 50
	lw	a2,52(a4)
	.loc 1 42 19
	lui	a0,%hi(.LANCHOR0)
	addi	a0,a0,%lo(.LANCHOR0)
	sw	a6,44(a0)
	.loc 1 40 16 is_stmt 1
.LVL57:
	.loc 1 40 11
	.loc 1 41 3
	.loc 1 42 3
	.loc 1 42 19 is_stmt 0
	sw	a1,48(a0)
	.loc 1 40 16 is_stmt 1
.LVL58:
	.loc 1 40 11
	.loc 1 41 3
	.loc 1 41 37 is_stmt 0
	sw	a2,0(a5)
	.loc 1 42 3 is_stmt 1
	.loc 1 41 50 is_stmt 0
	lw	a1,56(a4)
	lw	a2,60(a4)
	lw	a7,64(a4)
	.loc 1 42 22
	lw	t4,16(a5)
	.loc 1 41 50
	lw	a6,68(a4)
	.loc 1 41 37
	sw	a1,0(a5)
	.loc 1 42 22
	lw	t3,16(a5)
	.loc 1 41 50
	lw	a1,72(a4)
	.loc 1 41 37
	sw	a2,0(a5)
	.loc 1 42 22
	lw	t1,16(a5)
	.loc 1 41 50
	lw	a2,76(a4)
	.loc 1 41 37
	sw	a7,0(a5)
	.loc 1 42 22
	lw	a7,16(a5)
	.loc 1 41 50
	lw	t6,80(a4)
	.loc 1 41 37
	sw	a6,0(a5)
	.loc 1 42 22
	lw	a6,16(a5)
	.loc 1 41 37
	sw	a1,0(a5)
	.loc 1 42 22
	lw	a1,16(a5)
	.loc 1 41 37
	sw	a2,0(a5)
	.loc 1 42 22
	lw	a2,16(a5)
	.loc 1 41 50
	lw	t5,84(a4)
	.loc 1 41 37
	sw	t6,0(a5)
	.loc 1 42 22
	lw	a4,16(a5)
	.loc 1 41 37
	sw	t5,0(a5)
	.loc 1 42 19
	sw	t4,52(a0)
	.loc 1 40 16 is_stmt 1
.LVL59:
	.loc 1 40 11
	.loc 1 41 3
	.loc 1 42 3
	.loc 1 42 19 is_stmt 0
	sw	a4,80(a0)
	sw	t3,56(a0)
	.loc 1 40 16 is_stmt 1
.LVL60:
	.loc 1 40 11
	.loc 1 41 3
	.loc 1 42 3
	.loc 1 42 19 is_stmt 0
	sw	t1,60(a0)
	.loc 1 40 16 is_stmt 1
.LVL61:
	.loc 1 40 11
	.loc 1 41 3
	.loc 1 42 3
	.loc 1 42 19 is_stmt 0
	sw	a7,64(a0)
	.loc 1 40 16 is_stmt 1
.LVL62:
	.loc 1 40 11
	.loc 1 41 3
	.loc 1 42 3
	.loc 1 42 19 is_stmt 0
	sw	a6,68(a0)
	.loc 1 40 16 is_stmt 1
.LVL63:
	.loc 1 40 11
	.loc 1 41 3
	.loc 1 42 3
	.loc 1 42 19 is_stmt 0
	sw	a1,72(a0)
	.loc 1 40 16 is_stmt 1
.LVL64:
	.loc 1 40 11
	.loc 1 41 3
	.loc 1 42 3
	.loc 1 42 19 is_stmt 0
	sw	a2,76(a0)
	.loc 1 40 16 is_stmt 1
.LVL65:
	.loc 1 40 11
	.loc 1 41 3
	.loc 1 42 3
	.loc 1 40 16
	.loc 1 40 11
	.loc 1 41 3
	.loc 1 42 3
	.loc 1 42 22 is_stmt 0
	lw	a5,16(a5)
	.loc 1 44 36
	li	a4,-1424031744
	sw	a4,12(a3)
	.loc 1 42 19
	sw	a5,84(a0)
	.loc 1 40 16 is_stmt 1
.LVL66:
	.loc 1 40 11
	.loc 1 44 2
	.loc 1 45 2
	.loc 1 46 1 is_stmt 0
	addi	a0,a0,44
	ret
	.cfi_endproc
.LFE2:
	.size	fir, .-fir
	.globl	outputsignal
	.globl	inputs
	.globl	inputsignal
	.globl	inputbuffer
	.globl	taps
	.data
	.align	2
	.set	.LANCHOR1,. + 0
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
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	inputbuffer, @object
	.size	inputbuffer, 44
inputbuffer:
	.zero	44
	.type	outputsignal, @object
	.size	outputsignal, 44
outputsignal:
	.zero	44
	.text
.Letext0:
	.file 2 "fir.h"
	.file 3 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x218
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.4byte	.LASF19
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL8
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x5
	.4byte	0x3d
	.4byte	0x36
	.byte	0x6
	.4byte	0x36
	.byte	0xa
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.byte	0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF3
	.byte	0x6
	.4byte	0x26
	.byte	0x5
	.byte	0x3
	.4byte	taps
	.byte	0x3
	.4byte	.LASF4
	.byte	0x7
	.4byte	0x26
	.byte	0x5
	.byte	0x3
	.4byte	inputbuffer
	.byte	0x3
	.4byte	.LASF5
	.byte	0x8
	.4byte	0x26
	.byte	0x5
	.byte	0x3
	.4byte	inputsignal
	.byte	0x5
	.4byte	0x3d
	.4byte	0x84
	.byte	0x6
	.4byte	0x36
	.byte	0x15
	.byte	0
	.byte	0x3
	.4byte	.LASF6
	.byte	0x9
	.4byte	0x74
	.byte	0x5
	.byte	0x3
	.4byte	inputs
	.byte	0x3
	.4byte	.LASF7
	.byte	0xa
	.4byte	0x26
	.byte	0x5
	.byte	0x3
	.4byte	outputsignal
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF8
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.byte	0x7
	.4byte	.LASF14
	.byte	0x2e
	.byte	0x17
	.4byte	0xcb
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF13
	.byte	0x7
	.4byte	.LASF15
	.byte	0x34
	.byte	0x1b
	.4byte	0xe4
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF17
	.byte	0xa
	.string	"fir"
	.byte	0x1
	.byte	0x1b
	.byte	0x33
	.4byte	0x119
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x119
	.byte	0x4
	.string	"i"
	.byte	0x24
	.4byte	0xc0
	.4byte	.LLST7
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x3d
	.byte	0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0xe
	.byte	0x32
	.4byte	0x3d
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x1e5
	.byte	0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0xe
	.byte	0x40
	.4byte	0x3d
	.4byte	.LLST1
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0x14
	.byte	0x6
	.4byte	0x3d
	.4byte	.LLST2
	.byte	0xf
	.4byte	.LLRL3
	.4byte	0x16f
	.byte	0x4
	.string	"i"
	.byte	0xf
	.4byte	0x3d
	.4byte	.LLST4
	.byte	0
	.byte	0x10
	.4byte	.LLRL5
	.byte	0x4
	.string	"i"
	.byte	0x15
	.4byte	0x3d
	.4byte	.LLST6
	.byte	0x1
	.4byte	.LVL25
	.4byte	0x212
	.byte	0x1
	.4byte	.LVL26
	.4byte	0x212
	.byte	0x1
	.4byte	.LVL28
	.4byte	0x212
	.byte	0x1
	.4byte	.LVL30
	.4byte	0x212
	.byte	0x1
	.4byte	.LVL31
	.4byte	0x212
	.byte	0x1
	.4byte	.LVL33
	.4byte	0x212
	.byte	0x1
	.4byte	.LVL35
	.4byte	0x212
	.byte	0x1
	.4byte	.LVL37
	.4byte	0x212
	.byte	0x1
	.4byte	.LVL39
	.4byte	0x212
	.byte	0x1
	.4byte	.LVL41
	.4byte	0x212
	.byte	0x1
	.4byte	.LVL44
	.4byte	0x212
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0x7
	.byte	0x33
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.4byte	0x212
	.byte	0x12
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x4
	.string	"i"
	.byte	0x8
	.4byte	0x3d
	.4byte	.LLST0
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0x7d
	.byte	0x1
	.byte	0x7f
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2
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
	.byte	0x3
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
	.byte	0x5
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0xa
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0x27
	.byte	0x19
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
	.byte	0xd
	.byte	0x5
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
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
.LLST7:
	.byte	0x7
	.4byte	.LVL45
	.4byte	.LVL46
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL46
	.4byte	.LVL47
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL47
	.4byte	.LVL48
	.byte	0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL48
	.4byte	.LVL49
	.byte	0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL49
	.4byte	.LVL50
	.byte	0x2
	.byte	0x34
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL50
	.4byte	.LVL51
	.byte	0x2
	.byte	0x35
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL51
	.4byte	.LVL52
	.byte	0x2
	.byte	0x36
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL52
	.4byte	.LVL53
	.byte	0x2
	.byte	0x37
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL53
	.4byte	.LVL54
	.byte	0x2
	.byte	0x38
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL54
	.4byte	.LVL55
	.byte	0x2
	.byte	0x39
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL55
	.4byte	.LVL56
	.byte	0x2
	.byte	0x3a
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL56
	.4byte	.LVL57
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL57
	.4byte	.LVL58
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL58
	.4byte	.LVL59
	.byte	0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL59
	.4byte	.LVL60
	.byte	0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL60
	.4byte	.LVL61
	.byte	0x2
	.byte	0x34
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL61
	.4byte	.LVL62
	.byte	0x2
	.byte	0x35
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL62
	.4byte	.LVL63
	.byte	0x2
	.byte	0x36
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL63
	.4byte	.LVL64
	.byte	0x2
	.byte	0x37
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL64
	.4byte	.LVL65
	.byte	0x2
	.byte	0x38
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL65
	.4byte	.LVL66
	.byte	0x2
	.byte	0x3a
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL66
	.4byte	.LFE2
	.byte	0x2
	.byte	0x3b
	.byte	0x9f
	.byte	0
.LLST1:
	.byte	0x7
	.4byte	.LVL12
	.4byte	.LVL25-1
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.4byte	.LVL25-1
	.4byte	.LFE1
	.byte	0x4
	.byte	0xa3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.byte	0
.LLST2:
	.byte	0x7
	.4byte	.LVL24
	.4byte	.LVL25-1
	.byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1e
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL27
	.4byte	.LVL32
	.byte	0x1
	.byte	0x59
	.byte	0x7
	.4byte	.LVL32
	.4byte	.LVL34
	.byte	0x1
	.byte	0x62
	.byte	0x7
	.4byte	.LVL34
	.4byte	.LVL36
	.byte	0x1
	.byte	0x59
	.byte	0x7
	.4byte	.LVL36
	.4byte	.LVL38
	.byte	0x1
	.byte	0x62
	.byte	0x7
	.4byte	.LVL38
	.4byte	.LVL40
	.byte	0x1
	.byte	0x59
	.byte	0x7
	.4byte	.LVL40
	.4byte	.LVL42
	.byte	0x1
	.byte	0x62
	.byte	0x7
	.4byte	.LVL42
	.4byte	.LVL43
	.byte	0x1
	.byte	0x59
	.byte	0x7
	.4byte	.LVL43
	.4byte	.LVL44-1
	.byte	0x9
	.byte	0x7b
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1e
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LLST4:
	.byte	0x7
	.4byte	.LVL13
	.4byte	.LVL14
	.byte	0x2
	.byte	0x3a
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL14
	.4byte	.LVL15
	.byte	0x2
	.byte	0x39
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL15
	.4byte	.LVL16
	.byte	0x2
	.byte	0x38
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL16
	.4byte	.LVL17
	.byte	0x2
	.byte	0x37
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL17
	.4byte	.LVL18
	.byte	0x2
	.byte	0x36
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL18
	.4byte	.LVL19
	.byte	0x2
	.byte	0x35
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL19
	.4byte	.LVL20
	.byte	0x2
	.byte	0x34
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL20
	.4byte	.LVL21
	.byte	0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL21
	.4byte	.LVL22
	.byte	0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL22
	.4byte	.LVL23
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL23
	.4byte	.LFE1
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LLST6:
	.byte	0x7
	.4byte	.LVL24
	.4byte	.LVL27
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL27
	.4byte	.LVL29
	.byte	0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL29
	.4byte	.LVL32
	.byte	0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL32
	.4byte	.LVL34
	.byte	0x2
	.byte	0x34
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL34
	.4byte	.LVL36
	.byte	0x2
	.byte	0x35
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL36
	.4byte	.LVL38
	.byte	0x2
	.byte	0x36
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL38
	.4byte	.LVL40
	.byte	0x2
	.byte	0x37
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL40
	.4byte	.LVL42
	.byte	0x2
	.byte	0x38
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL42
	.4byte	.LVL43
	.byte	0x2
	.byte	0x39
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL43
	.4byte	.LFE1
	.byte	0x2
	.byte	0x3b
	.byte	0x9f
	.byte	0
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
	.4byte	.LFE0
	.byte	0x2
	.byte	0x3b
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
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
.LLRL3:
	.byte	0x6
	.4byte	.LBB3
	.4byte	.LBE3
	.byte	0x6
	.4byte	.LBB4
	.4byte	.LBE4
	.byte	0x6
	.4byte	.LBB5
	.4byte	.LBE5
	.byte	0x6
	.4byte	.LBB8
	.4byte	.LBE8
	.byte	0x6
	.4byte	.LBB10
	.4byte	.LBE10
	.byte	0
.LLRL5:
	.byte	0x6
	.4byte	.LBB6
	.4byte	.LBE6
	.byte	0x6
	.4byte	.LBB7
	.4byte	.LBE7
	.byte	0x6
	.4byte	.LBB9
	.4byte	.LBE9
	.byte	0x6
	.4byte	.LBB11
	.4byte	.LBE11
	.byte	0x6
	.4byte	.LBB12
	.4byte	.LBE12
	.byte	0
.LLRL8:
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"inputsignal"
.LASF22:
	.string	"initfir"
.LASF6:
	.string	"inputs"
.LASF12:
	.string	"unsigned char"
.LASF16:
	.string	"long unsigned int"
.LASF13:
	.string	"short unsigned int"
.LASF15:
	.string	"uint32_t"
.LASF18:
	.string	"outputsample"
.LASF23:
	.string	"__mulsi3"
.LASF2:
	.string	"unsigned int"
.LASF19:
	.string	"GNU C17 12.1.0 -mabi=ilp32 -mtune=rocket -misa-spec=2.2 -march=rv32i -g -O3 -ffreestanding"
.LASF17:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint8_t"
.LASF20:
	.string	"firfilter"
.LASF7:
	.string	"outputsignal"
.LASF11:
	.string	"long long int"
.LASF3:
	.string	"taps"
.LASF9:
	.string	"short int"
.LASF4:
	.string	"inputbuffer"
.LASF10:
	.string	"long int"
.LASF8:
	.string	"signed char"
.LASF21:
	.string	"inputsample"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"fir.c"
.LASF1:
	.string	"/home/ubuntu/Desktop/project/testbench/uart"
	.ident	"GCC: (g1ea978e3066) 12.1.0"
