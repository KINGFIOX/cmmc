.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -64
	li a1, 4
	li a0, 3
	li a2, 5
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 24
	sd s1, 16(sp)
	sw a1, 24(sp)
	li a1, 9
	sw a0, 28(sp)
	li a0, 2
	sw a1, 32(sp)
	li a1, 6
	sw a0, 36(sp)
	li a0, 1
	sw zero, 40(sp)
	sw a0, 44(sp)
	sw a1, 48(sp)
	li a1, 7
	sw a2, 52(sp)
	li a2, 8
	sw a1, 56(sp)
	sw a2, 60(sp)
	li a1, 10
	blt a0, a1, label4
label25:
	mv s1, zero
	j label10
.p2align 2
label4:
	sh2add a3, a0, s0
	addiw a2, a0, -1
	lw a1, 0(a3)
	addiw a3, a2, 1
	bge a2, zero, label8
.p2align 2
label7:
	sh2add a2, a3, s0
	addiw a0, a0, 1
	sw a1, 0(a2)
	li a1, 10
	blt a0, a1, label4
	j label25
.p2align 2
label10:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 10
	jal putch
	li a0, 10
	addiw s1, s1, 1
	blt s1, a0, label10
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 64
	ret
.p2align 2
label8:
	sh2add a5, a2, s0
	lw a4, 0(a5)
	bge a1, a4, label7
	sh2add a3, a3, s0
	addiw a2, a2, -1
	sw a4, 0(a3)
	addiw a3, a2, 1
	bge a2, zero, label8
	sh2add a2, a3, s0
	addiw a0, a0, 1
	sw a1, 0(a2)
	li a1, 10
	blt a0, a1, label4
	j label25
