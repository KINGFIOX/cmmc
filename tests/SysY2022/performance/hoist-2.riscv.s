.data
.text
.globl main
main:
	addi sp, sp, -16
	sd s0, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
	li a0, 121
	jal _sysy_starttime
	ble s0, zero, label22
	mv a0, zero
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s0, label27
	j label5
label22:
	mv s0, zero
	j label17
label14:
	addiw a1, a1, 15
	li a2, 12009599
	mul a2, a1, a2
	srai a3, a2, 54
	srli a2, a2, 63
	add a2, a2, a3
	li a3, 1500000001
	mulw a2, a2, a3
	subw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s0, label56
	j label14
label56:
	mv s0, a1
label17:
	li a0, 123
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
label27:
	mv a2, a1
	addiw a1, a1, 16
	bge a1, s0, label36
label9:
	addiw a3, a0, 15
	li a0, 12009599
	mul a4, a3, a0
	srai a2, a4, 54
	srli a4, a4, 63
	add a4, a4, a2
	li a2, 1500000001
	mulw a4, a4, a2
	subw a3, a3, a4
	addiw a3, a3, 225
	mul a4, a3, a0
	srai a0, a4, 54
	srli a4, a4, 63
	add a0, a4, a0
	mulw a0, a0, a2
	subw a0, a3, a0
	mv a2, a1
	addiw a1, a1, 16
	bge a1, s0, label36
	j label9
label36:
	mv a1, a0
	mv a0, a2
	addiw a2, a2, 16
	bge a2, s0, label14
label13:
	addiw a1, a1, 15
	li a0, 12009599
	mul a4, a1, a0
	srai a3, a4, 54
	srli a4, a4, 63
	add a4, a4, a3
	li a3, 1500000001
	mulw a4, a4, a3
	subw a1, a1, a4
	addiw a1, a1, 225
	mul a4, a1, a0
	srai a0, a4, 54
	srli a4, a4, 63
	add a0, a4, a0
	mulw a0, a0, a3
	subw a1, a1, a0
	mv a0, a2
	addiw a2, a2, 16
	bge a2, s0, label14
	j label13
label5:
	addiw a3, a0, 15
	li a0, 12009599
	mul a4, a3, a0
	srai a1, a4, 54
	srli a4, a4, 63
	add a4, a4, a1
	li a1, 1500000001
	mulw a4, a4, a1
	subw a3, a3, a4
	addiw a3, a3, 225
	mul a0, a3, a0
	srai a4, a0, 54
	srli a0, a0, 63
	add a0, a0, a4
	mulw a0, a0, a1
	subw a0, a3, a0
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s0, label27
	j label5
