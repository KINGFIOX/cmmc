.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
graphColoring:
	addi sp, sp, -48
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s2, 16(sp)
	mv s2, a2
	sd s1, 24(sp)
	mv s1, a3
	sd s4, 32(sp)
	li s4, 4
	sd s3, 40(sp)
	beq a2, s4, label25
	li s3, 1
label15:
	bge s3, s4, label53
	sh2add a0, s2, s1
	addiw a2, s2, 1
	li a1, 3
	sw s3, 0(a0)
	mv a0, s0
	mv a3, s1
	jal graphColoring
	beq a0, zero, label73
	li a0, 1
	j label13
label25:
	mv a2, zero
label2:
	bge a2, s4, label28
	slliw a1, a2, 4
	addiw a0, a2, 1
	add a3, s0, a1
	mv a1, a0
label5:
	bge a1, s4, label35
	sh2add a5, a1, a3
	lw a4, 0(a5)
	bne a4, zero, label8
label42:
	addiw a1, a1, 1
	j label5
label8:
	sh2add a5, a1, s1
	sh2add t0, a2, s1
	lw a4, 0(a5)
	lw a5, 0(t0)
	bne a4, a5, label42
label53:
	mv a0, zero
label13:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s4, 32(sp)
	ld s3, 40(sp)
	addi sp, sp, 48
	ret
label28:
	mv s0, zero
label10:
	sh2add a2, s0, s1
	lw a0, 0(a2)
	jal putint
	li a0, 32
	jal putch
	addiw s0, s0, 1
	blt s0, s4, label10
	li a0, 10
	jal putch
	li a0, 1
	j label13
label73:
	sh2add a1, s2, s1
	addiw s3, s3, 1
	sw zero, 0(a1)
	j label15
label35:
	mv a2, a0
	j label2
.p2align 2
.globl main
main:
	addi sp, sp, -88
	li a2, 1
	li a1, 4294967296
	sd ra, 0(sp)
	addi a3, sp, 72
	addi a0, sp, 8
	add.uw a2, a2, zero
	ori a4, a1, 1
	sd a1, 8(sp)
	sd a4, 16(sp)
	sd a2, 24(sp)
	sd a2, 32(sp)
	sd a4, 40(sp)
	sd a1, 48(sp)
	li a1, 3
	sd a2, 56(sp)
	sd a2, 64(sp)
	mv a2, zero
	sd zero, 72(sp)
	sd zero, 80(sp)
	jal graphColoring
	bne a0, zero, label106
	li a0, 78
	jal putch
	li a0, 111
	jal putch
	li a0, 116
	jal putch
	li a0, 32
	jal putch
	li a0, 101
	jal putch
	li a0, 120
	jal putch
	li a0, 105
	jal putch
	li a0, 115
	jal putch
	li a0, 116
	jal putch
label106:
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 88
	ret
