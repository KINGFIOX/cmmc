.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
.globl B
B:
	.zero	4000
.align 8
.globl A
A:
	.zero	4000
.align 8
.globl P
P:
	.zero	4000
.text
.p2align 2
.globl foo
foo:
	ble a0, zero, label5
pcrel53:
	auipc a2, %pcrel_hi(B)
pcrel54:
	auipc a3, %pcrel_hi(A)
pcrel55:
	auipc a4, %pcrel_hi(P)
	li t0, 64
	li a5, 1
	addi a1, a2, %pcrel_lo(pcrel53)
	flw f11, %pcrel_lo(pcrel53)(a2)
	addi a2, a3, %pcrel_lo(pcrel54)
	fadd.s f10, f11, f11
	fsw f10, %pcrel_lo(pcrel54)(a3)
	sw t0, %pcrel_lo(pcrel55)(a4)
	addi a3, a4, %pcrel_lo(pcrel55)
	beq a0, a5, label5
	li a4, 1
label3:
	li t1, 4294967295
	and a5, a4, t1
	sh2add t0, a5, a1
	flw f11, 0(t0)
	sh2add t0, a5, a2
	fadd.s f10, f11, f11
	sh2add a5, a5, a3
	fsw f10, 0(t0)
	slliw t0, a4, 1
	addiw a4, a4, 1
	addi t1, t0, 64
	sw t1, 0(a5)
	bne a0, a4, label3
label5:
	ret
