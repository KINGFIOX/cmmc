.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[48] RegSpill[0] CalleeSaved[40]
	addi sp, sp, -96
	fmv.w.x f11, zero
	lui a0, 262144
	sd ra, 0(sp)
	fmv.w.x f10, a0
	sd s0, 8(sp)
	lui a0, 264192
	addi s0, sp, 80
	sd s2, 16(sp)
	addi s2, sp, 64
	sd s1, 24(sp)
	addi s1, sp, 40
	sd s3, 32(sp)
	mv s3, zero
	fsw f11, 40(sp)
	fsw f11, 64(sp)
	fsw f11, 80(sp)
	fmv.w.x f11, a0
	fsw f10, 44(sp)
	fsw f10, 68(sp)
	fsw f10, 84(sp)
	fsw f11, 48(sp)
	fsw f11, 72(sp)
	fsw f11, 88(sp)
label2:
	flw f10, 0(s1)
	fcvt.w.s a0, f10, rtz
	jal putint
	li a0, 3
	addiw s3, s3, 1
	bge s3, a0, label5
	addi s1, s1, 4
	j label2
label5:
	li a0, 10
	jal putch
	mv s1, s2
	mv s2, zero
label6:
	flw f10, 0(s1)
	fcvt.w.s a0, f10, rtz
	jal putint
	li a0, 3
	addiw s2, s2, 1
	bge s2, a0, label10
	addi s1, s1, 4
	j label6
label10:
	li a0, 10
	jal putch
	mv s1, zero
label11:
	flw f10, 0(s0)
	fcvt.w.s a0, f10, rtz
	jal putint
	li a0, 3
	addiw s1, s1, 1
	bge s1, a0, label15
	addi s0, s0, 4
	j label11
label15:
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 96
	ret
