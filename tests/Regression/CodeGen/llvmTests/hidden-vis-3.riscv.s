.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 2
.globl x
x:
	.zero	4
.p2align 2
.globl y
y:
	.zero	4
.text
.p2align 2
.globl t
t:
pcrel13:
	auipc a0, %pcrel_hi(y)
pcrel14:
	auipc a3, %pcrel_hi(x)
	lw a1, %pcrel_lo(pcrel13)(a0)
	lw a2, %pcrel_lo(pcrel14)(a3)
	addw a0, a1, a2
	ret
