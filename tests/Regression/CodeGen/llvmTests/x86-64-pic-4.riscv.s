.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl a
a:
	.4byte	0
.text
.p2align 2
.globl get_a
get_a:
pcrel7:
	auipc a1, %pcrel_hi(a)
	lw a0, %pcrel_lo(pcrel7)(a1)
	ret
