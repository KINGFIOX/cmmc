.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 2
.globl X
X:
	.byte	0
	.byte	0
.text
.p2align 2
.globl foo
foo:
	mv a1, a0
	ble a0, zero, label10
pcrel33:
	auipc a0, %pcrel_hi(X)
	li a3, 1
	sh zero, %pcrel_lo(pcrel33)(a0)
	addi a2, a0, %pcrel_lo(pcrel33)
	bne a1, a3, label16
	li a0, 1
	j label5
label10:
	mv a0, zero
label5:
	ret
label16:
	li a0, 1
label3:
	li a4, 65535
	and a3, a0, a4
	addiw a0, a0, 1
	sh a3, 0(a2)
	bne a1, a0, label3
	j label5
