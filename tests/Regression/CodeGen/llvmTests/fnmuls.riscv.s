.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test1
test1:
	fmul.s f12, f10, f11
	fneg.s f10, f12
	ret
.p2align 2
.globl test2
test2:
	fmul.s f12, f10, f11
	fneg.s f10, f12
	ret
