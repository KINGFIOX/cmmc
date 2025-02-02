.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.p2align 2
__cmmc_fp_constant_pool:
	.4byte	1078530010
.text
.p2align 2
.globl add_imm
add_imm:
	addiw a0, a0, 1
	ret
.p2align 2
.globl add_large_imm
add_large_imm:
	lui a1, 64
	addw a0, a0, a1
	ret
.p2align 2
.globl add_reg
add_reg:
	addw a0, a0, a1
	ret
.p2align 2
.globl and_imm
and_imm:
	andi a0, a0, 1
	ret
.p2align 2
.globl and_large_imm
and_large_imm:
	lui a1, 64
	and a0, a0, a1
	ret
.p2align 2
.globl and_reg
and_reg:
	and a0, a0, a1
	ret
.p2align 2
.globl or_imm
or_imm:
	ori a0, a0, 1
	ret
.p2align 2
.globl or_large_imm
or_large_imm:
	lui a1, 64
	or a0, a0, a1
	ret
.p2align 2
.globl or_reg
or_reg:
	or a0, a0, a1
	ret
.p2align 2
.globl xor_imm
xor_imm:
	xori a0, a0, 1
	ret
.p2align 2
.globl xor_large_imm
xor_large_imm:
	lui a1, 64
	xor a0, a0, a1
	ret
.p2align 2
.globl xor_reg
xor_reg:
	xor a0, a0, a1
	ret
.p2align 2
.globl sub_imm
sub_imm:
	addiw a0, a0, -1
	ret
.p2align 2
.globl sub_inverted_imm
sub_inverted_imm:
	li a1, 1
	subw a0, a1, a0
	ret
.p2align 2
.globl sub_reg
sub_reg:
	subw a0, a0, a1
	ret
.p2align 2
.globl mul_imm
mul_imm:
	sh1add a0, a0, a0
	ret
.p2align 2
.globl mul_to_shl
mul_to_shl:
	slliw a0, a0, 2
	ret
.p2align 2
.globl mul_reg
mul_reg:
	mulw a0, a0, a1
	ret
.p2align 2
.globl div2
div2:
	mv a1, a0
	bge a0, zero, label74
	addiw a1, a0, 1
label74:
	sraiw a0, a1, 1
	ret
.p2align 2
.globl div4
div4:
	mv a1, a0
	bge a0, zero, label80
	addiw a1, a0, 3
label80:
	sraiw a0, a1, 2
	ret
.p2align 2
.globl div3
div3:
	lui a4, 349525
	addiw a3, a4, 1366
	mul a1, a0, a3
	srli a4, a1, 63
	srli a2, a1, 32
	add a0, a4, a2
	ret
.p2align 2
.globl div11
div11:
	lui a4, 190650
	addiw a3, a4, 745
	mul a1, a0, a3
	srli a4, a1, 63
	srai a2, a1, 33
	add a0, a4, a2
	ret
.p2align 2
.globl div30
div30:
	lui a1, 559241
	addiw a2, a1, -1911
	mul a4, a0, a2
	srli a3, a4, 32
	add a1, a3, a0
	srliw a4, a1, 31
	sraiw a2, a1, 4
	add a0, a4, a2
	ret
.p2align 2
.globl divNeg30
divNeg30:
	lui a1, 489335
	addiw a2, a1, 1911
	mul a4, a0, a2
	srli a3, a4, 32
	sub a1, a3, a0
	srliw a4, a1, 31
	sraiw a2, a1, 4
	add a0, a4, a2
	ret
.p2align 2
.globl div_shl
div_shl:
	li a5, 1
	mv a2, a0
	sllw a4, a5, a1
	addiw a3, a4, -1
	bge a0, zero, label127
	addw a2, a0, a3
label127:
	sraw a0, a2, a1
	ret
.p2align 2
.globl div_reg
div_reg:
	divw a0, a0, a1
	ret
.p2align 2
.globl mod_imm
mod_imm:
	lui a4, 349525
	addiw a3, a4, 1366
	mul a1, a0, a3
	srli a4, a1, 63
	srli a2, a1, 32
	add a3, a4, a2
	sh1add a5, a3, a3
	subw a0, a0, a5
	ret
.p2align 2
.globl mod_reg
mod_reg:
	remw a0, a0, a1
	ret
.p2align 2
.globl mod2
mod2:
	mv a1, a0
	bge a0, zero, label156
	addiw a1, a0, 1
label156:
	andi a2, a1, -2
	subw a0, a0, a2
	ret
.p2align 2
.globl mod30
mod30:
	lui a2, 559241
	addiw a3, a2, -1911
	mul a4, a0, a3
	srli a1, a4, 32
	add a2, a1, a0
	srliw a5, a2, 31
	sraiw a3, a2, 4
	add a1, a5, a3
	slliw a4, a1, 4
	subw a2, a4, a1
	slli a3, a2, 1
	subw a0, a0, a3
	ret
.p2align 2
.globl mod_large1
mod_large1:
	lui a4, 281475
	lui t0, 244141
	addiw a1, a4, -103
	addiw a5, t0, -1529
	mul a2, a0, a1
	srli a4, a2, 63
	srai a3, a2, 60
	add a1, a4, a3
	mulw a2, a1, a5
	subw a0, a0, a2
	ret
.p2align 2
.globl mod_large2
mod_large2:
	lui a4, 458130
	lui t0, 73
	addiw a1, a4, -635
	addiw a5, t0, 992
	mul a2, a0, a1
	srli a4, a2, 63
	srai a3, a2, 49
	add a1, a4, a3
	mulw a2, a1, a5
	subw a0, a0, a2
	ret
.p2align 2
.globl shl_imm
shl_imm:
	slliw a0, a0, 3
	ret
.p2align 2
.globl shl_reg
shl_reg:
	sllw a0, a0, a1
	ret
.p2align 2
.globl ashr_imm
ashr_imm:
	sraiw a0, a0, 3
	ret
.p2align 2
.globl ashr_reg
ashr_reg:
	sraw a0, a0, a1
	ret
.p2align 2
.globl s2f
s2f:
	fcvt.s.w f10, a0
	ret
.p2align 2
.globl f2s
f2s:
	fcvt.w.s a0, f10, rtz
	ret
.p2align 2
.globl fadd
fadd:
	fadd.s f10, f10, f11
	ret
.p2align 2
.globl fadd_imm
fadd_imm:
	lui a0, 260096
	fmv.w.x f11, a0
	fadd.s f10, f10, f11
	ret
.p2align 2
.globl fadd_identity
fadd_identity:
	ret
.p2align 2
.globl fsub
fsub:
	fsub.s f10, f10, f11
	ret
.p2align 2
.globl fsub_imm
fsub_imm:
	lui a0, 260096
	fmv.w.x f11, a0
	fsub.s f10, f10, f11
	ret
.p2align 2
.globl fmul
fmul:
	fmul.s f10, f10, f11
	ret
.p2align 2
.globl fmul_imm
fmul_imm:
	fadd.s f10, f10, f10
	ret
.p2align 2
.globl fdiv
fdiv:
	fdiv.s f10, f10, f11
	ret
.p2align 2
.globl fdiv_imm
fdiv_imm:
	lui a0, 258048
	fmv.w.x f11, a0
	fmul.s f10, f10, f11
	ret
.p2align 2
.globl fneg
fneg:
	fneg.s f10, f10
	ret
.p2align 2
.globl s2f2s
s2f2s:
	fcvt.s.w f10, a0
	fcvt.w.s a0, f10, rtz
	ret
.p2align 2
.globl f2s2f
f2s2f:
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f10, a0
	ret
.p2align 2
.globl zero
zero:
	mv a0, zero
	ret
.p2align 2
.globl imm
imm:
	li a0, 1
	ret
.p2align 2
.globl large_imm0
large_imm0:
	lui a0, 256
	ret
.p2align 2
.globl large_imm1
large_imm1:
	lui a1, 4702
	addiw a0, a1, 1425
	ret
.p2align 2
.globl fp_zero
fp_zero:
	fmv.w.x f10, zero
	ret
.p2align 2
.globl fp_imm0
fp_imm0:
	lui a0, 266240
	fmv.w.x f10, a0
	ret
.p2align 2
.globl fp_imm1
fp_imm1:
pcrel280:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel280)
	flw f10, 0(a0)
	ret
.p2align 2
.globl and_trunc
and_trunc:
	andi a2, a0, 1
	and a0, a1, a2
	ret
.p2align 2
.globl ucmp1
ucmp1:
	addiw a1, a0, -48
	sltiu a0, a1, 10
	ret
.p2align 2
.globl ucmp2
ucmp2:
	xori a1, a0, 1
	sltiu a0, a1, 1
	ret
.p2align 2
.globl ucmp3
ucmp3:
	sltiu a0, a0, 100
	ret
.p2align 2
.globl abs
abs:
	subw a1, zero, a0
	max a0, a1, a0
	ret
.p2align 2
.globl nabs
nabs:
	subw a1, zero, a0
	min a0, a1, a0
	ret
.p2align 2
.globl absdiff
absdiff:
	subw a2, a0, a1
	subw a3, a1, a0
	max a0, a3, a2
	ret
.p2align 2
.globl mul_with_constant_0
mul_with_constant_0:
	mv a0, zero
	ret
.p2align 2
.globl mul_with_constant_1
mul_with_constant_1:
	ret
.p2align 2
.globl mul_with_constant_neg_1
mul_with_constant_neg_1:
	subw a0, zero, a0
	ret
.p2align 2
.globl mul_with_constant_100
mul_with_constant_100:
	li a1, 100
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_1000
mul_with_constant_1000:
	li a1, 1000
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_400
mul_with_constant_400:
	li a1, 400
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_1000000
mul_with_constant_1000000:
	lui a2, 244
	addiw a1, a2, 576
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_10
mul_with_constant_10:
	sh2add a1, a0, a0
	slliw a0, a1, 1
	ret
.p2align 2
.globl mul_with_constant_270
mul_with_constant_270:
	li a1, 270
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_3
mul_with_constant_3:
	sh1add a0, a0, a0
	ret
.p2align 2
.globl mul_with_constant_85
mul_with_constant_85:
	li a1, 85
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_23
mul_with_constant_23:
	li a1, 23
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_neg_23
mul_with_constant_neg_23:
	li a1, -23
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_neg_82
mul_with_constant_neg_82:
	li a1, -82
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_neg_103
mul_with_constant_neg_103:
	li a1, -103
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_neg_59
mul_with_constant_neg_59:
	li a1, -59
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_17
mul_with_constant_17:
	slliw a1, a0, 4
	addw a0, a1, a0
	ret
.p2align 2
.globl mul_with_constant_128875
mul_with_constant_128875:
	lui a2, 31
	addiw a1, a2, 1899
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_19980130
mul_with_constant_19980130:
	lui a2, 4878
	addiw a1, a2, -158
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_19971231
mul_with_constant_19971231:
	lui a2, 4876
	addiw a1, a2, -865
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_8193
mul_with_constant_8193:
	slliw a1, a0, 13
	addw a0, a1, a0
	ret
.p2align 2
.globl mul_with_constant_270369
mul_with_constant_270369:
	lui a2, 66
	addiw a1, a2, 33
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_33
mul_with_constant_33:
	slliw a1, a0, 5
	addw a0, a1, a0
	ret
.p2align 2
.globl mul_with_constant_16777216
mul_with_constant_16777216:
	slliw a0, a0, 24
	ret
.p2align 2
.globl mul_with_constant_1073741824
mul_with_constant_1073741824:
	slliw a0, a0, 30
	ret
.p2align 2
.globl mul_with_constant_60
mul_with_constant_60:
	slliw a1, a0, 4
	subw a2, a1, a0
	slliw a0, a2, 2
	ret
.p2align 2
.globl mul_with_constant_300
mul_with_constant_300:
	li a1, 300
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_10000
mul_with_constant_10000:
	li a2, 625
	slli a1, a2, 4
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_neg2
mul_neg2:
	slliw a1, a0, 1
	subw a0, zero, a1
	ret
.p2align 2
.globl andn
andn:
	fcvt.s.w f10, a1
	lui a3, 266752
	fmv.w.x f11, a3
	sltu a3, zero, a0
	feq.s a2, f10, f11
	xori a1, a2, 1
	and a0, a1, a3
	ret
.p2align 2
.globl sign
sign:
	sraiw a0, a0, 31
	ret
.p2align 2
.globl select_add_one
select_add_one:
	sltu a2, zero, a1
	addw a0, a0, a2
	ret
.p2align 2
.globl select_sub_one
select_sub_one:
	sltu a2, zero, a1
	subw a0, a0, a2
	ret
.p2align 2
.globl cutout
cutout:
	li a2, 255
	min a1, a0, a2
	max a0, a1, zero
	ret
