.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test1
test1:
	andi a0, a0, 255
	ret
.p2align 2
.globl test10
test10:
	srliw a2, a0, 24
	slliw a3, a0, 8
	or a4, a2, a3
	zext.h a5, a4
	addw a0, a1, a5
	ret
.p2align 2
.globl test11
test11:
	andi a2, a0, 255
	addw a0, a1, a2
	ret
.p2align 2
.globl test12
test12:
	srliw a2, a0, 8
	andi a3, a2, 255
	addw a0, a1, a3
	ret
.p2align 2
.globl test13
test13:
	srliw a2, a0, 16
	andi a3, a2, 255
	addw a0, a1, a3
	ret
.p2align 2
.globl test14
test14:
	zext.h a2, a0
	addw a0, a1, a2
	ret
.p2align 2
.globl test15
test15:
	srliw a2, a0, 8
	zext.h a3, a2
	addw a0, a1, a3
	ret
.p2align 2
.globl test16
test16:
	srliw a2, a0, 24
	slliw a3, a0, 8
	or a4, a2, a3
	zext.h a5, a4
	addw a0, a1, a5
	ret
.p2align 2
.globl test2
test2:
	andi a2, a1, 255
	addw a0, a0, a2
	ret
.p2align 2
.globl test3
test3:
	srliw a1, a0, 8
	slliw a2, a0, 24
	or a3, a1, a2
	zext.h a0, a3
	ret
.p2align 2
.globl test4
test4:
	srliw a1, a0, 8
	slliw a2, a0, 24
	or a3, a1, a2
	andi a0, a3, 255
	ret
.p2align 2
.globl test5
test5:
	zext.h a0, a0
	ret
.p2align 2
.globl test6
test6:
	zext.h a2, a1
	addw a0, a0, a2
	ret
.p2align 2
.globl test7
test7:
	srliw a2, a0, 8
	slliw a3, a0, 24
	or a4, a2, a3
	andi a5, a4, 255
	addw a0, a1, a5
	ret
.p2align 2
.globl test8
test8:
	srliw a2, a0, 16
	slliw a3, a0, 16
	or a4, a2, a3
	andi a5, a4, 255
	addw a0, a1, a5
	ret
.p2align 2
.globl test9
test9:
	srliw a2, a0, 8
	slliw a3, a0, 24
	or a4, a2, a3
	zext.h a5, a4
	addw a0, a1, a5
	ret
