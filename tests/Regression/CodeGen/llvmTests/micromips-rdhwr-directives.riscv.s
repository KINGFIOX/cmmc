.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 2
.globl a
a:
	.zero	4
.text
.p2align 2
.globl foo
foo:
pcrel7:
	auipc a1, %pcrel_hi(a)
	lw a0, %pcrel_lo(pcrel7)(a1)
	ret
