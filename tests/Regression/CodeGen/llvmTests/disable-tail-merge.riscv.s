.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl g0
g0:
	.4byte	0
.align 4
.globl g1
g1:
	.4byte	0
.text
.p2align 2
.globl test1
test1:
pcrel38:
	auipc a2, %pcrel_hi(g0)
	lw a1, %pcrel_lo(pcrel38)(a2)
	bne a0, zero, label14
	addiw a1, a1, 11
pcrel39:
	auipc a3, %pcrel_hi(g1)
	zext.w a0, a1
	sw a0, %pcrel_lo(pcrel38)(a2)
	lw a1, %pcrel_lo(pcrel39)(a3)
	addiw a2, a1, 23
	zext.w a0, a2
	j label3
label14:
	addiw a1, a1, 1
pcrel40:
	auipc a3, %pcrel_hi(g1)
	zext.w a0, a1
pcrel41:
	auipc a2, %pcrel_hi(g0)
	sw a0, %pcrel_lo(pcrel41)(a2)
	lw a2, %pcrel_lo(pcrel40)(a3)
	addiw a1, a2, 23
	zext.w a0, a1
label3:
	auipc a1, %pcrel_hi(g1)
	sw a0, %pcrel_lo(label3)(a1)
	ret
