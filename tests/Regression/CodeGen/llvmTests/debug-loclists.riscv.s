.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl _Z2f1ii
_Z2f1ii:
	addw a2, a0, a1
	zext.w a0, a2
	ret
.p2align 2
.globl _Z2f2v
_Z2f2v:
	ret
