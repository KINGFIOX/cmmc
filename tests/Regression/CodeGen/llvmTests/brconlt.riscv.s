.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.p2align 2
.globl i
i:
	.4byte	5
.p2align 2
.globl j
j:
	.4byte	10
.p2align 2
.globl k
k:
	.4byte	5
.p2align 2
.globl result
result:
	.4byte	0
.text
.p2align 2
.globl test
test:
pcrel26:
	auipc a3, %pcrel_hi(j)
pcrel27:
	auipc a2, %pcrel_hi(i)
	lw a0, %pcrel_lo(pcrel26)(a3)
	lw a1, %pcrel_lo(pcrel27)(a2)
	bge a0, a1, label13
label2:
	ret
label13:
	li a0, 1
pcrel28:
	auipc a1, %pcrel_hi(result)
	sw a0, %pcrel_lo(pcrel28)(a1)
	j label2
