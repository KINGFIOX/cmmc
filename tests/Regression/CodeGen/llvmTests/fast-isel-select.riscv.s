.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl fastisel_select
fastisel_select:
	subw a2, a0, a1
	li a0, 1204476887
	bne a2, zero, label9
	mv a0, zero
label9:
	zext.w a0, a0
	ret
