.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl PR15705
PR15705:
	mv a4, a3
	beq a0, a2, label13
	mv a4, a1
label13:
	beq a0, a1, label15
	mv a2, a4
label15:
	mv a0, a2
	ret
