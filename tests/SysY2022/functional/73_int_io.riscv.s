.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -120
	lui a0, 419430
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 56
	sd s5, 16(sp)
	sd s3, 24(sp)
	li s3, 9
	sd s2, 32(sp)
	li s2, 10
	sd s1, 40(sp)
	addiw s1, a0, 1639
	sd s4, 48(sp)
label2:
	jal getch
	addiw s4, a0, -48
	bgtu s4, s3, label2
label3:
	jal getch
	addiw a1, a0, -48
	bgeu a1, s2, label6
	sh2add a0, s4, s4
	sh1add s4, a0, a1
	j label3
label6:
	ble s4, zero, label25
.p2align 2
label9:
	jal getch
	addiw s5, a0, -48
	bgtu s5, s3, label9
.p2align 2
label10:
	jal getch
	addiw a1, a0, -48
	bgeu a1, s2, label55
	sh2add a0, s5, s5
	sh1add s5, a0, a1
	j label10
.p2align 2
label55:
	ble s5, zero, label130
	mv a0, s0
	mv a2, s5
	mv a1, zero
.p2align 2
label20:
	mul a4, a2, s1
	addiw a1, a1, 1
	srli t0, a4, 63
	srai a5, a4, 34
	add a3, t0, a5
	sh2add t1, a3, a3
	slliw a4, t1, 1
	subw t0, a2, a4
	mv a2, a3
	addi a5, t0, 48
	sw a5, 0(a0)
	ble a3, zero, label86
	addi a0, a0, 4
	j label20
.p2align 2
label16:
	mv a0, s2
	jal putch
	addiw s4, s4, -1
	bgt s4, zero, label9
	j label25
.p2align 2
label17:
	addiw s5, s5, -1
	sh2add a1, s5, s0
	lw a0, 0(a1)
	jal putch
	bgt s5, zero, label17
	j label16
.p2align 2
label86:
	mv s5, a1
	bgt a1, zero, label17
	j label16
label25:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s1, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 120
	ret
label130:
	mv s5, zero
	j label16
