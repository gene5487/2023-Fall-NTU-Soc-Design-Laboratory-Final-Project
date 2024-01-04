	.file	"counter_la_uart.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/ubuntu/Desktop/project/testbench/uart" "counter_la_uart.c"
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB321:
	.file 1 "counter_la_uart.c"
	.loc 1 56 1
	.cfi_startproc
	.loc 1 58 5
	.loc 1 86 5
	.loc 1 56 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 86 53
	li	a2,1
	.loc 1 88 39
	li	a3,8192
	.loc 1 86 53
	li	a4,-268419072
	.loc 1 88 39
	li	a5,637534208
	.loc 1 86 53
	sw	a2,-2048(a4)
	.loc 1 88 5 is_stmt 1
	.loc 1 88 39 is_stmt 0
	addi	a4,a3,-2039
	sw	a4,160(a5)
	.loc 1 89 5 is_stmt 1
	.loc 1 89 39 is_stmt 0
	sw	a4,156(a5)
	.loc 1 90 5 is_stmt 1
	.loc 1 90 39 is_stmt 0
	sw	a4,152(a5)
	.loc 1 91 5 is_stmt 1
	.loc 1 91 39 is_stmt 0
	sw	a4,148(a5)
	.loc 1 92 5 is_stmt 1
	.loc 1 92 39 is_stmt 0
	sw	a4,144(a5)
	.loc 1 93 5 is_stmt 1
	.loc 1 93 39 is_stmt 0
	sw	a4,140(a5)
	.loc 1 94 5 is_stmt 1
	.loc 1 94 39 is_stmt 0
	sw	a4,136(a5)
	.loc 1 95 5 is_stmt 1
	.loc 1 95 39 is_stmt 0
	sw	a4,132(a5)
	.loc 1 96 5 is_stmt 1
	.loc 1 96 39 is_stmt 0
	sw	a4,128(a5)
	.loc 1 97 5 is_stmt 1
	.loc 1 97 39 is_stmt 0
	sw	a4,124(a5)
	.loc 1 98 5 is_stmt 1
	.loc 1 98 39 is_stmt 0
	sw	a4,120(a5)
	.loc 1 99 5 is_stmt 1
	.loc 1 99 39 is_stmt 0
	sw	a4,116(a5)
	.loc 1 100 5 is_stmt 1
	.loc 1 100 39 is_stmt 0
	sw	a4,112(a5)
	.loc 1 101 5 is_stmt 1
	.loc 1 101 39 is_stmt 0
	sw	a4,108(a5)
	.loc 1 102 5 is_stmt 1
	.loc 1 102 39 is_stmt 0
	sw	a4,104(a5)
	.loc 1 103 5 is_stmt 1
	.loc 1 103 39 is_stmt 0
	sw	a4,100(a5)
	.loc 1 105 5 is_stmt 1
	.loc 1 105 39 is_stmt 0
	sw	a4,96(a5)
	.loc 1 106 5 is_stmt 1
	.loc 1 106 39 is_stmt 0
	sw	a4,92(a5)
	.loc 1 107 5 is_stmt 1
	.loc 1 107 39 is_stmt 0
	sw	a4,88(a5)
	.loc 1 108 5 is_stmt 1
	.loc 1 108 39 is_stmt 0
	sw	a4,84(a5)
	.loc 1 109 5 is_stmt 1
	.loc 1 109 39 is_stmt 0
	sw	a4,80(a5)
	.loc 1 110 5 is_stmt 1
	.loc 1 110 39 is_stmt 0
	sw	a4,76(a5)
	.loc 1 111 5 is_stmt 1
	.loc 1 111 39 is_stmt 0
	sw	a4,72(a5)
	.loc 1 112 5 is_stmt 1
	.loc 1 112 39 is_stmt 0
	sw	a4,68(a5)
	.loc 1 113 5 is_stmt 1
	.loc 1 113 39 is_stmt 0
	sw	a4,64(a5)
	.loc 1 114 5 is_stmt 1
	.loc 1 114 39 is_stmt 0
	sw	a4,52(a5)
	.loc 1 115 5 is_stmt 1
	.loc 1 115 39 is_stmt 0
	sw	a4,48(a5)
	.loc 1 116 5 is_stmt 1
	.loc 1 116 39 is_stmt 0
	sw	a4,44(a5)
	.loc 1 117 5 is_stmt 1
	.loc 1 117 39 is_stmt 0
	sw	a4,40(a5)
	.loc 1 118 5 is_stmt 1
	.loc 1 120 39 is_stmt 0
	addi	a3,a3,-2040
	.loc 1 118 39
	sw	a4,36(a5)
	.loc 1 120 5 is_stmt 1
	.loc 1 120 39 is_stmt 0
	sw	a3,60(a5)
	.loc 1 121 5 is_stmt 1
	.loc 1 121 39 is_stmt 0
	li	a4,1026
	sw	a4,56(a5)
	.loc 1 125 2 is_stmt 1
	.loc 1 126 10 is_stmt 0
	li	s0,637534208
	.loc 1 125 36
	sw	a2,0(a5)
	.loc 1 126 2 is_stmt 1
	.loc 1 126 43 is_stmt 0
	li	a4,1
.L2:
	.loc 1 126 43 is_stmt 1 discriminator 1
	.loc 1 126 10 is_stmt 0 discriminator 1
	lw	a5,0(s0)
	.loc 1 126 43 discriminator 1
	beq	a5,a4,.L2
	.loc 1 130 2 is_stmt 1
	.loc 1 130 114 is_stmt 0
	li	a5,-268423168
	sw	zero,12(a5)
	.loc 1 130 57
	sw	zero,28(a5)
	.loc 1 131 2 is_stmt 1
	.loc 1 131 112 is_stmt 0
	li	a4,-1
	sw	a4,8(a5)
	.loc 1 131 56
	sw	a4,24(a5)
	.loc 1 132 2 is_stmt 1
	.loc 1 132 112 is_stmt 0
	sw	zero,4(a5)
	.loc 1 132 56
	sw	zero,20(a5)
	.loc 1 133 2 is_stmt 1
	.loc 1 133 100 is_stmt 0
	sw	zero,0(a5)
	.loc 1 133 50
	sw	zero,16(a5)
	.loc 1 136 2 is_stmt 1
	.loc 1 136 36 is_stmt 0
	li	a4,-1421869056
	sw	a4,12(s0)
	.loc 1 139 2 is_stmt 1
	.loc 1 139 56 is_stmt 0
	sw	zero,56(a5)
	.loc 1 142 2 is_stmt 1
	.loc 1 142 112 is_stmt 0
	sw	zero,8(a5)
	.loc 1 142 56
	sw	zero,24(a5)
	.loc 1 154 2 is_stmt 1
	.loc 1 154 13 is_stmt 0
	call	fir
.LVL0:
	.loc 1 155 2 is_stmt 1
	.loc 1 155 43 is_stmt 0
	lw	a3,0(a0)
	.loc 1 156 47
	lw	a4,4(a0)
	.loc 1 157 47
	lw	a5,8(a0)
	.loc 1 158 47
	lw	a2,12(a0)
	.loc 1 155 43
	slli	a3,a3,16
	.loc 1 155 36
	sw	a3,12(s0)
	.loc 1 156 2 is_stmt 1
	.loc 1 156 47 is_stmt 0
	slli	a4,a4,16
	.loc 1 159 47
	lw	a3,16(a0)
	.loc 1 157 47
	slli	a5,a5,16
	.loc 1 156 36
	sw	a4,12(s0)
	.loc 1 157 2 is_stmt 1
	.loc 1 160 47 is_stmt 0
	lw	a4,20(a0)
	.loc 1 158 47
	slli	a2,a2,16
	.loc 1 157 36
	sw	a5,12(s0)
	.loc 1 158 2 is_stmt 1
	.loc 1 161 47 is_stmt 0
	lw	a5,24(a0)
	.loc 1 159 47
	slli	a3,a3,16
	.loc 1 158 36
	sw	a2,12(s0)
	.loc 1 159 2 is_stmt 1
	.loc 1 162 47 is_stmt 0
	lw	a2,28(a0)
	.loc 1 160 47
	slli	a4,a4,16
	.loc 1 159 36
	sw	a3,12(s0)
	.loc 1 160 2 is_stmt 1
	.loc 1 163 47 is_stmt 0
	lw	a3,32(a0)
	.loc 1 161 47
	slli	a5,a5,16
	.loc 1 160 36
	sw	a4,12(s0)
	.loc 1 161 2 is_stmt 1
	.loc 1 164 47 is_stmt 0
	lw	a4,36(a0)
	.loc 1 162 47
	slli	a2,a2,16
	.loc 1 161 36
	sw	a5,12(s0)
	.loc 1 162 2 is_stmt 1
	.loc 1 165 48 is_stmt 0
	lw	a5,40(a0)
	.loc 1 163 47
	slli	a3,a3,16
	.loc 1 162 36
	sw	a2,12(s0)
	.loc 1 163 2 is_stmt 1
	.loc 1 163 36 is_stmt 0
	sw	a3,12(s0)
	.loc 1 164 2 is_stmt 1
	.loc 1 164 47 is_stmt 0
	slli	a4,a4,16
	.loc 1 164 36
	sw	a4,12(s0)
	.loc 1 165 2 is_stmt 1
	.loc 1 165 48 is_stmt 0
	slli	a5,a5,16
	.loc 1 165 36
	sw	a5,12(s0)
	.loc 1 170 2 is_stmt 1
	.loc 1 170 14 is_stmt 0
	call	matmul
.LVL1:
	.loc 1 171 2 is_stmt 1
	.loc 1 171 44 is_stmt 0
	lw	a5,0(a0)
	.loc 1 172 48
	lw	a2,4(a0)
	.loc 1 173 48
	lw	a3,8(a0)
	.loc 1 174 48
	lw	a4,12(a0)
	.loc 1 171 44
	slli	a5,a5,16
	.loc 1 171 36
	sw	a5,12(s0)
	.loc 1 172 2 is_stmt 1
	.loc 1 172 48 is_stmt 0
	slli	a2,a2,16
	.loc 1 175 48
	lw	a5,36(a0)
	.loc 1 173 48
	slli	a3,a3,16
	.loc 1 172 36
	sw	a2,12(s0)
	.loc 1 173 2 is_stmt 1
	.loc 1 173 36 is_stmt 0
	sw	a3,12(s0)
	.loc 1 174 2 is_stmt 1
	.loc 1 174 48 is_stmt 0
	slli	a4,a4,16
	.loc 1 174 36
	sw	a4,12(s0)
	.loc 1 175 2 is_stmt 1
	.loc 1 175 48 is_stmt 0
	slli	a5,a5,16
	.loc 1 175 36
	sw	a5,12(s0)
	.loc 1 242 2 is_stmt 1
	.loc 1 242 14 is_stmt 0
	call	qsort
.LVL2:
	.loc 1 243 2 is_stmt 1
	.loc 1 243 44 is_stmt 0
	lw	a5,0(a0)
	.loc 1 244 48
	lw	a4,4(a0)
	.loc 1 245 48
	lw	a1,8(a0)
	.loc 1 246 48
	lw	a2,12(a0)
	.loc 1 243 44
	slli	a5,a5,16
	.loc 1 247 48
	lw	a3,16(a0)
	.loc 1 243 36
	sw	a5,12(s0)
	.loc 1 244 2 is_stmt 1
	.loc 1 244 48 is_stmt 0
	slli	a4,a4,16
	.loc 1 244 36
	sw	a4,12(s0)
	.loc 1 245 2 is_stmt 1
	.loc 1 245 48 is_stmt 0
	slli	a1,a1,16
	.loc 1 248 48
	lw	a4,20(a0)
	.loc 1 246 48
	slli	a2,a2,16
	.loc 1 245 36
	sw	a1,12(s0)
	.loc 1 246 2 is_stmt 1
	.loc 1 249 48 is_stmt 0
	lw	a1,24(a0)
	.loc 1 247 48
	slli	a3,a3,16
	.loc 1 246 36
	sw	a2,12(s0)
	.loc 1 247 2 is_stmt 1
	.loc 1 250 48 is_stmt 0
	lw	a2,28(a0)
	.loc 1 248 48
	slli	a4,a4,16
	.loc 1 247 36
	sw	a3,12(s0)
	.loc 1 248 2 is_stmt 1
	.loc 1 251 48 is_stmt 0
	lw	a3,32(a0)
	.loc 1 249 48
	slli	a1,a1,16
	.loc 1 248 36
	sw	a4,12(s0)
	.loc 1 249 2 is_stmt 1
	.loc 1 252 48 is_stmt 0
	lw	a4,36(a0)
	.loc 1 250 48
	slli	a2,a2,16
	.loc 1 249 36
	sw	a1,12(s0)
	.loc 1 250 2 is_stmt 1
	.loc 1 250 36 is_stmt 0
	sw	a2,12(s0)
	.loc 1 251 2 is_stmt 1
	.loc 1 251 48 is_stmt 0
	slli	a3,a3,16
	.loc 1 251 36
	sw	a3,12(s0)
	.loc 1 252 2 is_stmt 1
	.loc 1 252 48 is_stmt 0
	slli	a4,a4,16
	.loc 1 252 36
	sw	a4,12(s0)
	.loc 1 253 2 is_stmt 1
	.loc 1 298 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 253 36
	sw	a5,12(s0)
	.loc 1 298 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE321:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x115
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x5
	.4byte	.LASF15
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL2
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x6
	.4byte	.LASF16
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x5c
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.4byte	.LASF11
	.byte	0x23
	.4byte	0x88
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x6a
	.byte	0x4
	.4byte	.LASF12
	.byte	0x22
	.4byte	0x88
	.4byte	0x9e
	.byte	0x2
	.byte	0
	.byte	0x9
	.string	"fir"
	.byte	0x1
	.byte	0x21
	.byte	0xd
	.4byte	0x88
	.4byte	0xb0
	.byte	0x2
	.byte	0
	.byte	0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0x37
	.byte	0x6
	.4byte	.LFB321
	.4byte	.LFE321-.LFB321
	.byte	0x1
	.byte	0x9c
	.byte	0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x3a
	.byte	0x9
	.4byte	0x6a
	.byte	0xc
	.string	"tmp"
	.byte	0x1
	.byte	0x9a
	.byte	0x7
	.4byte	0x88
	.4byte	.LLST0
	.byte	0xd
	.4byte	.LASF13
	.byte	0x1
	.byte	0xaa
	.byte	0x7
	.4byte	0x88
	.4byte	.LLST1
	.byte	0xe
	.4byte	.LASF14
	.byte	0x1
	.byte	0xf2
	.byte	0x7
	.4byte	0x88
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.4byte	.LVL0
	.4byte	0x9e
	.byte	0x3
	.4byte	.LVL1
	.4byte	0x8e
	.byte	0x3
	.4byte	.LVL2
	.4byte	0x78
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x48
	.byte	0
	.byte	0x7d
	.byte	0x1
	.byte	0x7f
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0xd
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
	.byte	0x16
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0x18
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
	.4byte	.LVL1-1
	.byte	0x1
	.byte	0x5a
	.byte	0
.LLST1:
	.byte	0x7
	.4byte	.LVL1
	.4byte	.LVL2-1
	.byte	0x1
	.byte	0x5a
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
	.4byte	.LFB321
	.4byte	.LFE321-.LFB321
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
.LLRL2:
	.byte	0x6
	.4byte	.LFB321
	.4byte	.LFE321
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"tmp1"
.LASF14:
	.string	"tmp2"
.LASF12:
	.string	"matmul"
.LASF11:
	.string	"qsort"
.LASF6:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF17:
	.string	"main"
.LASF10:
	.string	"unsigned int"
.LASF15:
	.string	"GNU C17 12.1.0 -mabi=ilp32 -mtune=rocket -misa-spec=2.2 -march=rv32i -g -O3 -ffreestanding"
.LASF9:
	.string	"long long unsigned int"
.LASF5:
	.string	"long long int"
.LASF18:
	.string	"mask"
.LASF3:
	.string	"short int"
.LASF16:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF2:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/ubuntu/Desktop/project/testbench/uart"
.LASF0:
	.string	"counter_la_uart.c"
	.ident	"GCC: (g1ea978e3066) 12.1.0"
