.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.p2align 2
.globl i
i:
	.4byte	1
.p2align 2
.globl j
j:
	.4byte	2
.p2align 2
.globl k
k:
	.4byte	0
.text
.p2align 2
.globl t
t:
pcrel22:
	auipc a1, %pcrel_hi(i)
pcrel23:
	auipc a3, %pcrel_hi(j)
	lw a0, %pcrel_lo(pcrel22)(a1)
	li a1, 1
	lw a2, %pcrel_lo(pcrel23)(a3)
	bne a0, a2, label21
	li a1, 3
label21:
	zext.w a0, a1
pcrel24:
	auipc a2, %pcrel_hi(k)
	sw a0, %pcrel_lo(pcrel24)(a2)
	ret
