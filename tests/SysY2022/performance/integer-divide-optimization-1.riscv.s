.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -16
	sd s0, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
	li a0, 1016
	jal _sysy_starttime
	ble s0, zero, label18
	mv a0, zero
	mv a1, zero
	addiw a2, zero, 4
	bge a2, s0, label6
	j label5
label18:
	mv s0, zero
	j label13
label5:
	slliw a3, a0, 1
	srliw a4, a3, 31
	add a3, a3, a4
	sraiw a4, a3, 1
	li a3, 1000
	mulw a5, a4, a3
	li a4, 274877907
	mul t1, a5, a4
	srai a5, t1, 38
	srli t1, t1, 63
	add t1, t1, a5
	li a5, 300
	mulw t2, t1, a5
	li t1, 458129845
	mul t2, t2, t1
	srai t3, t2, 37
	srli t2, t2, 63
	add t2, t2, t3
	addw t3, a1, t2
	li a1, 1073790977
	mul t4, t3, a1
	srai t2, t4, 61
	srli t4, t4, 63
	add t4, t4, t2
	li t2, 2147385347
	mulw t4, t4, t2
	subw t3, t3, t4
	addiw t4, a0, 1
	slliw t4, t4, 1
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	mulw t4, t4, a3
	mul t4, t4, a4
	srai t5, t4, 38
	srli t4, t4, 63
	add t4, t4, t5
	mulw t4, t4, a5
	mul t4, t4, t1
	srai t5, t4, 37
	srli t4, t4, 63
	add t4, t4, t5
	addw t3, t3, t4
	mul t5, t3, a1
	srai t4, t5, 61
	srli t5, t5, 63
	add t4, t5, t4
	mulw t4, t4, t2
	subw t3, t3, t4
	addiw t4, a0, 2
	slliw t4, t4, 1
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	mulw t4, t4, a3
	mul t5, t4, a4
	srai t4, t5, 38
	srli t5, t5, 63
	add t4, t5, t4
	mulw t4, t4, a5
	mul t5, t4, t1
	srai t4, t5, 37
	srli t5, t5, 63
	add t4, t5, t4
	addw t3, t3, t4
	mul t5, t3, a1
	srai t4, t5, 61
	srli t5, t5, 63
	add t4, t5, t4
	mulw t4, t4, t2
	subw t3, t3, t4
	addiw a0, a0, 3
	slliw a0, a0, 1
	srliw t4, a0, 31
	add a0, a0, t4
	sraiw a0, a0, 1
	mulw a0, a0, a3
	mul a3, a0, a4
	srai a0, a3, 38
	srli a3, a3, 63
	add a0, a3, a0
	mulw a0, a0, a5
	mul a0, a0, t1
	srai a3, a0, 37
	srli a0, a0, 63
	add a0, a0, a3
	addw a0, t3, a0
	mul a1, a0, a1
	srai a3, a1, 61
	srli a1, a1, 63
	add a1, a1, a3
	mulw a1, a1, t2
	subw a1, a0, a1
	mv a0, a2
	addiw a2, a2, 4
	bge a2, s0, label6
	j label5
label10:
	slliw a2, a0, 1
	srliw a3, a2, 31
	add a2, a2, a3
	sraiw a2, a2, 1
	li a3, 1000
	mulw a2, a2, a3
	li a3, 274877907
	mul a3, a2, a3
	srai a2, a3, 38
	srli a3, a3, 63
	add a2, a3, a2
	li a3, 300
	mulw a2, a2, a3
	li a3, 458129845
	mul a3, a2, a3
	srai a2, a3, 37
	srli a3, a3, 63
	add a2, a3, a2
	addw a1, a1, a2
	li a2, 1073790977
	mul a2, a1, a2
	srai a3, a2, 61
	srli a2, a2, 63
	add a2, a2, a3
	li a3, 2147385347
	mulw a2, a2, a3
	subw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s0, label111
	j label10
label111:
	mv s0, a1
label13:
	li a0, 1031
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
label6:
	addiw a2, a0, 4
	bge a2, s0, label10
label9:
	slliw a3, a0, 1
	srliw a4, a3, 31
	add a3, a3, a4
	sraiw a4, a3, 1
	li a3, 1000
	mulw a5, a4, a3
	li a4, 274877907
	mul a5, a5, a4
	srai t1, a5, 38
	srli a5, a5, 63
	add t1, a5, t1
	li a5, 300
	mulw t2, t1, a5
	li t1, 458129845
	mul t3, t2, t1
	srai t2, t3, 37
	srli t3, t3, 63
	add t2, t3, t2
	addw t3, a1, t2
	li a1, 1073790977
	mul t2, t3, a1
	srai t4, t2, 61
	srli t2, t2, 63
	add t4, t2, t4
	li t2, 2147385347
	mulw t4, t4, t2
	subw t3, t3, t4
	addiw t4, a0, 1
	slliw t4, t4, 1
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	mulw t4, t4, a3
	mul t4, t4, a4
	srai t5, t4, 38
	srli t4, t4, 63
	add t4, t4, t5
	mulw t4, t4, a5
	mul t5, t4, t1
	srai t4, t5, 37
	srli t5, t5, 63
	add t4, t5, t4
	addw t3, t3, t4
	mul t4, t3, a1
	srai t5, t4, 61
	srli t4, t4, 63
	add t4, t4, t5
	mulw t4, t4, t2
	subw t3, t3, t4
	addiw t4, a0, 2
	slliw t4, t4, 1
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	mulw t4, t4, a3
	mul t5, t4, a4
	srai t4, t5, 38
	srli t5, t5, 63
	add t4, t5, t4
	mulw t4, t4, a5
	mul t5, t4, t1
	srai t4, t5, 37
	srli t5, t5, 63
	add t4, t5, t4
	addw t3, t3, t4
	mul t4, t3, a1
	srai t5, t4, 61
	srli t4, t4, 63
	add t4, t4, t5
	mulw t4, t4, t2
	subw t3, t3, t4
	addiw a0, a0, 3
	slliw a0, a0, 1
	srliw t4, a0, 31
	add a0, a0, t4
	sraiw a0, a0, 1
	mulw a0, a0, a3
	mul a0, a0, a4
	srai a3, a0, 38
	srli a0, a0, 63
	add a0, a0, a3
	mulw a0, a0, a5
	mul a3, a0, t1
	srai a0, a3, 37
	srli a3, a3, 63
	add a0, a3, a0
	addw a0, t3, a0
	mul a1, a0, a1
	srai a3, a1, 61
	srli a1, a1, 63
	add a1, a1, a3
	mulw a1, a1, t2
	subw a1, a0, a1
	mv a0, a2
	addiw a2, a2, 4
	bge a2, s0, label10
	j label9
