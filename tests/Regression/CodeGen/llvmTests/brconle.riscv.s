.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.p2align 2
.globl i
i:
	.4byte	4294967291
.p2align 2
.globl j
j:
	.4byte	10
.p2align 2
.globl k
k:
	.4byte	4294967291
.p2align 2
.globl result1
result1:
	.4byte	0
.p2align 2
.globl result2
result2:
	.4byte	1
.text
.p2align 2
.globl test
test:
pcrel40:
	auipc a0, %pcrel_hi(i)
pcrel41:
	auipc a3, %pcrel_hi(j)
	lw a1, %pcrel_lo(pcrel40)(a0)
	mv a0, a1
	lw a2, %pcrel_lo(pcrel41)(a3)
	ble a2, a1, label3
	li a1, 1
pcrel42:
	auipc a3, %pcrel_hi(result1)
	sw a1, %pcrel_lo(pcrel42)(a3)
label3:
	auipc a2, %pcrel_hi(k)
	lw a1, %pcrel_lo(label3)(a2)
	ble a0, a1, label5
pcrel43:
	auipc a0, %pcrel_hi(result1)
	sw zero, %pcrel_lo(pcrel43)(a0)
label5:
	ret
