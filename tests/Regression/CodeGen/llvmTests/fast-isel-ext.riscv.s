.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl sext_16_32
sext_16_32:
	sext.h a1, a0
	zext.w a0, a1
	ret
.p2align 2
.globl sext_1_16
sext_1_16:
	sext.h a1, a0
	zext.h a0, a1
	ret
.p2align 2
.globl sext_1_32
sext_1_32:
	zext.w a0, a0
	ret
.p2align 2
.globl sext_1_8
sext_1_8:
	sext.b a1, a0
	andi a0, a1, 255
	ret
.p2align 2
.globl sext_8_16
sext_8_16:
	sext.b a1, a0
	zext.h a0, a1
	ret
.p2align 2
.globl sext_8_32
sext_8_32:
	sext.b a1, a0
	zext.w a0, a1
	ret
.p2align 2
.globl zext_16_32
zext_16_32:
	zext.h a0, a0
	ret
.p2align 2
.globl zext_1_16
zext_1_16:
	zext.h a0, a0
	ret
.p2align 2
.globl zext_1_32
zext_1_32:
	ret
.p2align 2
.globl zext_1_8
zext_1_8:
	andi a0, a0, 255
	ret
.p2align 2
.globl zext_8_16
zext_8_16:
	andi a0, a0, 255
	ret
.p2align 2
.globl zext_8_32
zext_8_32:
	andi a0, a0, 255
	ret
