.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl f0
f0:
	slliw a3, a0, 7
	srliw a5, a0, 25
	slliw a4, a0, 9
	or a1, a3, a5
	srliw a3, a0, 23
	or a2, a1, a4
	or a0, a2, a3
	ret
.p2align 2
.globl f1
f1:
	slliw a5, a0, 7
	slliw a4, a0, 9
	or a2, a1, a5
	srliw a1, a0, 23
	or a3, a2, a4
	or a0, a3, a1
	ret
.p2align 2
.globl f2
f2:
	slliw a4, a0, 11
	slliw t0, a1, 19
	srliw a5, a0, 21
	or a2, a4, t0
	srliw a4, a1, 13
	or a3, a2, a5
	or a0, a3, a4
	ret
.p2align 2
.globl f3
f3:
	slliw a1, a0, 3
	slliw a4, a0, 5
	slliw a5, a0, 7
	slliw t0, a0, 13
	or a2, a1, a4
	or a3, a2, a5
	srliw a5, a0, 2
	slliw a2, a0, 19
	or a4, a3, t0
	srliw t0, a0, 15
	or a1, a4, a2
	or a3, a1, a5
	srliw a5, a0, 23
	or a2, a3, t0
	srliw a3, a0, 25
	or a4, a2, a5
	srliw a2, a0, 30
	or a1, a4, a3
	or a0, a1, a2
	ret
