.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
QuickSort:
	addi sp, sp, -80
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	sd s1, 24(sp)
	mv s1, a2
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	blt a1, a2, label3
label2:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
label9:
	addiw a1, s2, 1
	ble s1, a1, label2
label3:
	sh2add a3, a1, s0
	mv a4, s1
	mv s2, a1
	lw a0, 0(a3)
	addiw a2, a0, -1
.p2align 2
label5:
	ble a4, s2, label8
	sh2add a3, a4, s0
	blt s2, a4, label76
	sh2add a5, s2, s0
	lw t0, 0(a5)
	ble a0, t0, label360
.p2align 2
label83:
	addiw s2, s2, 1
	addi a5, a5, 4
	ble a4, s2, label5
	lw t0, 0(a5)
	bgt a0, t0, label83
label360:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label5
.p2align 2
label76:
	lw a5, 0(a3)
	bge a2, a5, label274
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s2, a4, label76
	sh2add a5, s2, s0
	ble a4, s2, label5
	lw t0, 0(a5)
	bgt a0, t0, label83
	j label360
label8:
	sh2add a2, s2, s0
	addiw s3, s2, -1
	sw a0, 0(a2)
	bge a1, s3, label9
label10:
	sh2add a3, a1, s0
	mv a4, s3
	mv s4, a1
	lw a0, 0(a3)
	addiw a2, a0, -1
	j label12
.p2align 2
label337:
	lw t0, 0(a5)
	ble a0, t0, label356
.p2align 2
label27:
	addiw s4, s4, 1
	addi a5, a5, 4
	bgt a4, s4, label337
.p2align 2
label12:
	ble a4, s4, label29
	sh2add a3, a4, s0
	bge s4, a4, label124
.p2align 2
label19:
	lw a5, 0(a3)
	bge a2, a5, label129
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s4, a4, label19
	sh2add a5, s4, s0
	ble a4, s4, label12
	lw t0, 0(a5)
	bgt a0, t0, label27
	j label356
.p2align 2
label124:
	sh2add a5, s4, s0
	ble a4, s4, label12
	lw t0, 0(a5)
	bgt a0, t0, label27
	j label356
label29:
	sh2add a2, s4, s0
	addiw s5, s4, -1
	sw a0, 0(a2)
	bge a1, s5, label30
label31:
	sh2add a3, a1, s0
	mv a4, s5
	mv s6, a1
	lw a0, 0(a3)
	addiw a2, a0, -1
	j label33
.p2align 2
label340:
	lw t0, 0(a5)
	ble a0, t0, label349
.p2align 2
label48:
	addiw s6, s6, 1
	addi a5, a5, 4
	bgt a4, s6, label340
.p2align 2
label33:
	ble a4, s6, label50
	sh2add a3, a4, s0
	bge s6, a4, label40
.p2align 2
label41:
	lw a5, 0(a3)
	bge a2, a5, label183
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s6, a4, label41
	sh2add a5, s6, s0
	ble a4, s6, label33
	lw t0, 0(a5)
	bgt a0, t0, label48
	j label349
.p2align 2
label40:
	sh2add a5, s6, s0
	ble a4, s6, label33
	lw t0, 0(a5)
	bgt a0, t0, label48
	j label349
label50:
	sh2add a2, s6, s0
	addiw s7, s6, -1
	sw a0, 0(a2)
	bge a1, s7, label51
label52:
	sh2add a3, a1, s0
	mv a4, s7
	mv s8, a1
	lw a0, 0(a3)
	addiw a2, a0, -1
	j label54
.p2align 2
label62:
	sh2add a5, s8, s0
.p2align 2
label63:
	bgt a4, s8, label66
.p2align 2
label54:
	ble a4, s8, label57
	sh2add a3, a4, s0
	bge s8, a4, label62
.p2align 2
label69:
	lw a5, 0(a3)
	bge a2, a5, label256
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s8, a4, label69
	sh2add a5, s8, s0
	ble a4, s8, label54
	lw t0, 0(a5)
	bgt a0, t0, label67
	j label248
.p2align 2
label66:
	lw t0, 0(a5)
	ble a0, t0, label248
.p2align 2
label67:
	addiw s8, s8, 1
	addi a5, a5, 4
	ble a4, s8, label54
	lw t0, 0(a5)
	bgt a0, t0, label67
label248:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label54
label57:
	sh2add a3, s8, s0
	addiw a2, s8, -1
	sw a0, 0(a3)
	mv a0, s0
	jal QuickSort
	addiw a1, s8, 1
	bgt s7, a1, label52
	j label51
label274:
	sh2add t0, s2, s0
	addiw s2, s2, 1
	sw a5, 0(t0)
	sh2add a5, s2, s0
	ble a4, s2, label5
	lw t0, 0(a5)
	bgt a0, t0, label83
	j label360
label129:
	sh2add t0, s4, s0
	addiw s4, s4, 1
	sw a5, 0(t0)
	sh2add a5, s4, s0
	ble a4, s4, label12
	lw t0, 0(a5)
	bgt a0, t0, label27
	j label356
label183:
	sh2add t0, s6, s0
	addiw s6, s6, 1
	sw a5, 0(t0)
	sh2add a5, s6, s0
	ble a4, s6, label33
	lw t0, 0(a5)
	bgt a0, t0, label48
	j label349
label30:
	addiw a1, s4, 1
	bgt s3, a1, label10
	j label9
label51:
	addiw a1, s6, 1
	bgt s5, a1, label31
	j label30
label356:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label12
label349:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label33
label256:
	sh2add t0, s8, s0
	addiw s8, s8, 1
	sw a5, 0(t0)
	sh2add a5, s8, s0
	j label63
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[40] RegSpill[0] CalleeSaved[32]
	addi sp, sp, -72
	li a2, 3
	li a3, 2
	li a4, 5
	addi t1, sp, 32
	slli a1, a2, 32
	sd ra, 0(sp)
	li a2, 9
	addi a0, a1, 4
	sd s0, 8(sp)
	slli a1, a3, 32
	sd s1, 16(sp)
	li a3, 1
	sd s2, 24(sp)
	sd a0, 32(sp)
	addi a0, a1, 9
	slli a1, a3, 32
	sd a0, 40(sp)
	slli a0, a4, 32
	sd a1, 48(sp)
	li a4, 8
	addi a3, a0, 6
	slli a1, a4, 32
	sd a3, 56(sp)
	addi a3, a1, 7
	mv a1, zero
	sd a3, 64(sp)
	mv a0, t1
	jal QuickSort
	li s0, 10
	bge a0, s0, label393
	sh2add s1, a0, t1
	mv s2, a0
.p2align 2
label389:
	lw a0, 0(s1)
	jal putint
	mv a0, s0
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label393
	addi s1, s1, 4
	j label389
label393:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 72
	ret
