.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test
test:
.p2align 2
	ble a0, zero, label8
	li a1, 4950
	li a2, 65535
	mul a0, a0, a1
	rem a1, a0, a2
	sext.w a0, a1
	j label2
label8:
	mv a0, zero
label2:
	ret
.globl test2
test2:
.p2align 2
	li a3, -2147450879
	mul a4, a0, a3
	srli a5, a4, 32
	add a2, a5, a0
	srliw t0, a2, 31
	sraiw a4, a2, 15
	add a2, t0, a4
	addw a0, a0, a2
	slliw a5, a2, 16
	li a2, 65535
	subw a4, a0, a5
	mv a0, a4
	bge a4, zero, label60
	addw a0, a4, a2
label60:
	mul a4, a1, a3
	srli a5, a4, 32
	add a3, a5, a1
	srliw a5, a3, 31
	sraiw a4, a3, 15
	add a3, a5, a4
	addw a5, a1, a3
	slliw a4, a3, 16
	subw a1, a5, a4
	mv a3, a1
	bge a1, zero, label62
	addw a3, a1, a2
label62:
	addw a1, a0, a3
	sub a2, zero, a2
	addw a0, a0, a2
	xori a2, a2, -1
	addw a3, a3, a0
	mv a0, a3
	bgt a1, a2, label64
	mv a0, a1
label64:
	ret
.globl test3
test3:
.p2align 2
	slli a3, a0, 30
	add a1, a3, a0
	srli a3, a1, 63
	srai a2, a1, 61
	add a1, a3, a2
	addw a3, a0, a1
	slliw a2, a1, 31
	subw a0, a3, a2
	ret
