.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl extend2bit_v2
extend2bit_v2:
	andi a1, a0, 255
	sext.b a2, a1
	xori a0, a2, 3
	li a2, 4294967295
	sltiu a1, a0, 1
	and a0, a1, a2
	ret
