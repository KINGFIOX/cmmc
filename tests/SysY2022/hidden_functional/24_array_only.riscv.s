.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[8] RegSpill[0] CalleeSaved[56]
	addi sp, sp, -64
	li a0, -1
	sd ra, 0(sp)
	zext.w a1, a0
	sd s2, 8(sp)
	addi s2, sp, 56
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s1, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	sd a1, 56(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	mv a0, s2
	jal getarray
	li s3, 5
	beq s1, zero, label39
	lw s5, 56(sp)
	mv s2, zero
label3:
	bge s5, s3, label28
	mv s4, s5
	j label6
.p2align 2
label13:
	lw a1, 56(sp)
	addw a0, s1, a1
	sw a0, 56(sp)
	beq s0, zero, label19
	mv a0, s0
.p2align 2
label16:
	addiw a0, a0, -1
	slliw s4, s4, 1
	bne a0, zero, label16
.p2align 2
label19:
	addw s4, s1, s4
	bne s0, zero, label83
	lw a1, 56(sp)
	subw s5, a1, s1
	sw s5, 56(sp)
	bge s4, s3, label28
.p2align 2
label6:
	mv a0, s2
	jal putint
	mv a0, s4
	jal putint
	mv a0, s1
	jal putint
	mv a0, s5
	jal putint
	beq s0, zero, label13
	lw a1, 56(sp)
	mv a0, s0
.p2align 2
label10:
	addiw a0, a0, -1
	slliw a1, a1, 1
	bne a0, zero, label10
	addw a0, s1, a1
	sw a0, 56(sp)
	beq s0, zero, label19
	addiw a0, s0, -1
	slliw s4, s4, 1
	bne a0, zero, label16
	addw s4, s1, s4
	lw a1, 56(sp)
	slliw a1, a1, 1
	subw s5, a1, s1
	sw s5, 56(sp)
	blt s4, s3, label6
	j label28
.p2align 2
label83:
	lw a1, 56(sp)
	addiw a0, s0, -1
	slliw a1, a1, 1
	beq a0, zero, label152
.p2align 2
label23:
	addiw a0, a0, -1
	slliw a1, a1, 1
	bne a0, zero, label23
	subw s5, a1, s1
	sw s5, 56(sp)
	blt s4, s3, label6
label28:
	beq s0, zero, label32
	mv a1, s0
	j label29
label109:
	mv s2, a0
label29:
	addiw a1, a1, -1
	slliw a0, s2, 1
	bne a1, zero, label109
	mv s2, a0
label32:
	addiw a0, s2, 1
	beq s0, zero, label34
	mv a1, s0
label36:
	addiw a1, a1, -1
	slliw a0, a0, 1
	bne a1, zero, label36
label34:
	ld a1, 56(sp)
	srai a2, a1, 32
	sext.w s5, a1
	addw s2, a0, s5
	bne s2, a2, label3
label39:
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s1, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 64
	ret
.p2align 2
label152:
	subw s5, a1, s1
	sw s5, 56(sp)
	blt s4, s3, label6
	j label28
