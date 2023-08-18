.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl pass_fast_bool
pass_fast_bool:
	li a1, 66
	bne a0, zero, label7
	mv a1, zero
label7:
	zext.w a0, a1
	ret
.p2align 2
.globl pass_vector_bool
pass_vector_bool:
	li a1, 66
	bne a0, zero, label14
	mv a1, zero
label14:
	zext.w a0, a1
	ret
.p2align 2
.globl ret_true
ret_true:
	li a0, 1
	ret
