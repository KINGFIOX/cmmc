.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl i
i:
	.4byte	5
.align 4
.globl j
j:
	.4byte	5
.align 4
.globl result
result:
	.4byte	0
.text
.globl test
test:
pcrel24:
	auipc a0, %pcrel_hi(j)
pcrel25:
	auipc a1, %pcrel_hi(i)
	lw a0, %pcrel_lo(pcrel24)(a0)
	lw a1, %pcrel_lo(pcrel25)(a1)
	xor a0, a0, a1
	sltu a0, zero, a0
	bne a0, zero, label3
	li a0, 1
pcrel26:
	auipc a1, %pcrel_hi(result)
	sw a0, %pcrel_lo(pcrel26)(a1)
label3:
	ret
