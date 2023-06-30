.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	3191654481
	.4byte	1038821134
	.4byte	3206230588
	.4byte	3191992809
	.4byte	1038256634
.bss
.align 4
imgIn:
	.zero	552960
.align 4
imgOut:
	.zero	552960
.align 4
my_y1:
	.zero	552960
.align 4
my_y2:
	.zero	552960
.text
.globl main
main:
	addi sp, sp, -24
	sd s1, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
pcrel1782:
	auipc a0, %pcrel_hi(imgIn)
	addi a0, a0, %pcrel_lo(pcrel1782)
	mv s1, a0
	jal getfarray
	li a0, 156
	jal _sysy_starttime
pcrel1783:
	auipc a0, %pcrel_hi(imgOut)
	addi s0, a0, %pcrel_lo(pcrel1783)
pcrel1784:
	auipc a0, %pcrel_hi(my_y1)
	addi a0, a0, %pcrel_lo(pcrel1784)
pcrel1785:
	auipc a1, %pcrel_hi(my_y2)
	addi a1, a1, %pcrel_lo(pcrel1785)
	mv a4, zero
	li a2, 512
	bge zero, a2, label158
label157:
	li a3, 1080
	mulw a2, a4, a3
	add a2, s1, a2
	mulw a3, a4, a3
	add a3, a0, a3
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	mv t3, zero
	addiw a5, zero, 4
	li t1, 270
	bge a5, t1, label1337
	j label146
label158:
	mv a4, zero
	li a2, 512
	bge zero, a2, label162
	j label6
label162:
	mv a5, zero
	li a2, 512
	bge zero, a2, label439
	li a4, 1080
	mulw a2, zero, a4
	add a2, a1, a2
	mulw a3, zero, a4
	add a3, a0, a3
	mulw a4, zero, a4
	add a4, s0, a4
	mv t4, zero
	addiw t1, zero, 4
	li t2, 270
	bge t1, t2, label41
	j label40
label6:
	li a3, 1080
	mulw a2, a4, a3
	add a2, s1, a2
	mulw a3, a4, a3
	add a3, a1, a3
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	fmv.w.x f13, zero
	li t3, 269
	addiw a5, t3, -4
	blt a5, zero, label14
label13:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(label13)
	flw f14, 0(t1)
	fmul.s f14, f14, f11
	flw f15, 4(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t1)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	sh2add t2, t3, a3
	fsw f12, 0(t2)
	sh2add t3, t3, a2
	flw f13, 0(t3)
	flw f14, 0(t1)
	fmul.s f14, f14, f13
	flw f15, 4(t1)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -4(t2)
	flw f11, -4(t3)
	flw f14, 0(t1)
	fmul.s f14, f14, f11
	flw f15, 4(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t1)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	fsw f12, -8(t2)
	flw f13, -8(t3)
	flw f14, 0(t1)
	fmul.s f14, f14, f13
	flw f15, 4(t1)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -12(t2)
	flw f11, -12(t3)
	mv t3, a5
	addiw a5, a5, -4
	blt a5, zero, label14
	j label13
label14:
	addiw a5, t3, -4
	blt a5, zero, label21
	j label20
label439:
	mv a2, zero
	li a3, 270
	bge zero, a3, label560
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	mv t1, zero
	addiw a3, zero, 4
	li a4, 512
	bge a3, a4, label57
	j label75
label560:
	mv a2, zero
	li a3, 270
	bge zero, a3, label883
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	fmv.w.x f13, zero
	li t1, 511
	addiw a3, t1, -4
	blt a3, zero, label100
	j label121
label883:
	mv a5, zero
	li a2, 512
	bge zero, a2, label93
	j label890
label93:
	li a0, 158
	jal _sysy_stoptime
	li a0, 138240
	mv a1, s0
	jal putfarray
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
label121:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label121)
	flw f14, 0(a4)
	fmul.s f14, f14, f11
	flw f15, 4(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t2, 1080
	mulw a5, t1, t2
	add a5, a1, a5
	sh2add t3, a2, a5
	fsw f12, 0(t3)
	mulw t1, t1, t2
	add t1, s0, t1
	sh2add t2, a2, t1
	flw f13, 0(t2)
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	addi t2, a5, -1080
	sh2add t2, a2, t2
	fsw f10, 0(t2)
	addi t2, t1, -1080
	sh2add t2, a2, t2
	flw f11, 0(t2)
	flw f14, 0(a4)
	fmul.s f14, f14, f11
	flw f15, 4(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t2, -2160
	add t3, a5, t2
	sh2add t3, a2, t3
	fsw f12, 0(t3)
	add t3, t1, t2
	sh2add t3, a2, t3
	flw f13, 0(t3)
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	addi a4, t2, -1080
	add a5, a5, a4
	sh2add a5, a2, a5
	fsw f10, 0(a5)
	add a4, t1, a4
	sh2add a4, a2, a4
	flw f11, 0(a4)
	mv t1, a3
	addiw a3, a3, -4
	blt a3, zero, label100
	j label121
label438:
	li a4, 1080
	mulw a2, a5, a4
	add a2, a1, a2
	mulw a3, a5, a4
	add a3, a0, a3
	mulw a4, a5, a4
	add a4, s0, a4
	mv t4, zero
	addiw t1, zero, 4
	li t2, 270
	bge t1, t2, label41
label40:
	sh2add t2, t4, a3
	flw f10, 0(t2)
	sh2add t3, t4, a2
	flw f11, 0(t3)
	fadd.s f10, f10, f11
	sh2add t4, t4, a4
	fsw f10, 0(t4)
	flw f10, 4(t2)
	flw f11, 4(t3)
	fadd.s f10, f10, f11
	fsw f10, 4(t4)
	flw f10, 8(t2)
	flw f11, 8(t3)
	fadd.s f10, f10, f11
	fsw f10, 8(t4)
	flw f10, 12(t2)
	flw f11, 12(t3)
	fadd.s f10, f10, f11
	fsw f10, 12(t4)
	mv t4, t1
	addiw t1, t1, 4
	li t2, 270
	bge t1, t2, label41
	j label40
label514:
	mv t1, t4
	sh2add t2, t4, a3
	flw f10, 0(t2)
	sh2add t2, t4, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t4, a4
	fsw f10, 0(t2)
	addiw t1, t4, 1
	li t2, 270
	bge t1, t2, label48
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label48
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label48
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label48
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label48
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label48
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label48
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label48
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label48
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label48
	j label1775
label48:
	addiw a5, a5, 1
	li a2, 512
	bge a5, a2, label439
	j label438
label1775:
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label48
	j label1775
label890:
	li a4, 1080
	mulw a2, a5, a4
	add a2, a1, a2
	mulw a3, a5, a4
	add a3, a0, a3
	mulw a4, a5, a4
	add a4, s0, a4
	mv t4, zero
	addiw t1, zero, 4
	li t2, 270
	bge t1, t2, label84
label83:
	sh2add t2, t4, a3
	flw f10, 0(t2)
	sh2add t3, t4, a2
	flw f11, 0(t3)
	fadd.s f10, f10, f11
	sh2add t4, t4, a4
	fsw f10, 0(t4)
	flw f10, 4(t2)
	flw f11, 4(t3)
	fadd.s f10, f10, f11
	fsw f10, 4(t4)
	flw f10, 8(t2)
	flw f11, 8(t3)
	fadd.s f10, f10, f11
	fsw f10, 8(t4)
	flw f10, 12(t2)
	flw f11, 12(t3)
	fadd.s f10, f10, f11
	fsw f10, 12(t4)
	mv t4, t1
	addiw t1, t1, 4
	li t2, 270
	bge t1, t2, label84
	j label83
label86:
	addiw t1, t4, 4
	li t2, 270
	bge t1, t2, label939
	j label91
label939:
	mv t1, t4
	sh2add t2, t4, a3
	flw f10, 0(t2)
	sh2add t2, t4, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t4, a4
	fsw f10, 0(t2)
	addiw t1, t4, 1
	li t2, 270
	bge t1, t2, label90
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label90
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label90
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label90
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label90
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label90
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label90
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label90
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label90
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label90
	j label1776
label90:
	addiw a5, a5, 1
	li a2, 512
	bge a5, a2, label93
	j label890
label91:
	sh2add t2, t4, a3
	flw f10, 0(t2)
	sh2add t3, t4, a2
	flw f11, 0(t3)
	fadd.s f10, f10, f11
	sh2add t4, t4, a4
	fsw f10, 0(t4)
	flw f10, 4(t2)
	flw f11, 4(t3)
	fadd.s f10, f10, f11
	fsw f10, 4(t4)
	flw f10, 8(t2)
	flw f11, 8(t3)
	fadd.s f10, f10, f11
	fsw f10, 8(t4)
	flw f10, 12(t2)
	flw f11, 12(t3)
	fadd.s f10, f10, f11
	fsw f10, 12(t4)
	mv t4, t1
	addiw t1, t1, 4
	li t2, 270
	bge t1, t2, label939
	j label91
label1776:
	sh2add t2, t1, a3
	flw f10, 0(t2)
	sh2add t2, t1, a2
	flw f11, 0(t2)
	fadd.s f10, f10, f11
	sh2add t2, t1, a4
	fsw f10, 0(t2)
	addiw t1, t1, 1
	li t2, 270
	bge t1, t2, label90
	j label1776
label57:
	addiw a3, t1, 4
	li a4, 512
	bge a3, a4, label573
	j label62
label573:
	fmv.s f13, f11
	addiw a3, t1, 4
	li a4, 512
	bge a3, a4, label668
label68:
	li t2, 1080
	mulw a4, t1, t2
	add a5, s0, a4
	sh2add a4, a2, a5
	flw f14, 0(a4)
pcrel1786:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(pcrel1786)
	flw f11, 12(a4)
	fmul.s f11, f11, f14
	flw f15, 16(a4)
	fmul.s f13, f15, f13
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	flw f13, 8(a4)
	fmul.s f12, f13, f12
	fadd.s f11, f11, f12
	mulw t1, t1, t2
	add t1, a0, t1
	sh2add t3, a2, t1
	fsw f11, 0(t3)
	addi t3, a5, 1080
	sh2add t3, a2, t3
	flw f12, 0(t3)
	flw f13, 12(a4)
	fmul.s f13, f13, f12
	flw f15, 16(a4)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f11
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	addi t3, t1, 1080
	sh2add t3, a2, t3
	fsw f10, 0(t3)
	slli t2, t2, 1
	add t3, a5, t2
	sh2add t3, a2, t3
	flw f13, 0(t3)
	flw f14, 12(a4)
	fmul.s f14, f14, f13
	flw f15, 16(a4)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a4)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	add t3, t1, t2
	sh2add t3, a2, t3
	fsw f12, 0(t3)
	addi t2, t2, 1080
	add a5, a5, t2
	sh2add a5, a2, a5
	flw f11, 0(a5)
	flw f14, 12(a4)
	fmul.s f14, f14, f11
	flw f15, 16(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f12
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	add a4, t1, t2
	sh2add a4, a2, a4
	fsw f10, 0(a4)
	mv t1, a3
	fmv.s f13, f11
	addiw a3, a3, 4
	li a4, 512
	bge a3, a4, label668
	j label68
label668:
	mv a3, t1
label69:
	li a4, 1080
	mulw a5, a3, a4
	add a5, s0, a5
	sh2add a5, a2, a5
	flw f11, 0(a5)
pcrel1787:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a5, a5, %pcrel_lo(pcrel1787)
	flw f14, 12(a5)
	fmul.s f14, f14, f11
	flw f15, 16(a5)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a5)
	fmul.s f12, f14, f12
	fadd.s f14, f13, f12
	mulw a4, a3, a4
	add a4, a0, a4
	sh2add a4, a2, a4
	fsw f14, 0(a4)
	addiw a3, a3, 1
	li a4, 512
	bge a3, a4, label74
	fmv.s f13, f11
	fmv.s f12, f10
	fmv.s f10, f14
	j label69
label1337:
	fmv.s f13, f11
	addiw a5, t3, 4
	li t1, 270
	bge a5, t1, label133
label145:
	sh2add t2, t3, a2
	flw f14, 0(t2)
pcrel1788:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(pcrel1788)
	flw f11, 12(t1)
	fmul.s f11, f11, f14
	flw f15, 16(t1)
	fmul.s f13, f15, f13
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	flw f13, 8(t1)
	fmul.s f12, f13, f12
	fadd.s f11, f11, f12
	sh2add t3, t3, a3
	fsw f11, 0(t3)
	flw f12, 4(t2)
	flw f13, 12(t1)
	fmul.s f13, f13, f12
	flw f15, 16(t1)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f11
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 4(t3)
	flw f13, 8(t2)
	flw f14, 12(t1)
	fmul.s f14, f14, f13
	flw f15, 16(t1)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t1)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	fsw f12, 8(t3)
	flw f11, 12(t2)
	flw f14, 12(t1)
	fmul.s f14, f14, f11
	flw f15, 16(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f12
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 12(t3)
	mv t3, a5
	fmv.s f13, f11
	addiw a5, a5, 4
	li t1, 270
	bge a5, t1, label133
	j label145
label133:
	addiw a5, t3, 4
	li t1, 270
	bge a5, t1, label1347
	j label138
label1347:
	mv a5, t3
	j label139
label138:
	sh2add t2, t3, a2
	flw f14, 0(t2)
pcrel1789:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(pcrel1789)
	flw f11, 12(t1)
	fmul.s f11, f11, f14
	flw f15, 16(t1)
	fmul.s f13, f15, f13
	fadd.s f11, f11, f13
	fadd.s f11, f11, f10
	flw f13, 8(t1)
	fmul.s f12, f13, f12
	fadd.s f11, f11, f12
	sh2add t3, t3, a3
	fsw f11, 0(t3)
	flw f12, 4(t2)
	flw f13, 12(t1)
	fmul.s f13, f13, f12
	flw f15, 16(t1)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f11
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 4(t3)
	flw f13, 8(t2)
	flw f14, 12(t1)
	fmul.s f14, f14, f13
	flw f15, 16(t1)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t1)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	fsw f12, 8(t3)
	flw f11, 12(t2)
	flw f14, 12(t1)
	fmul.s f14, f14, f11
	flw f15, 16(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f12
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 12(t3)
	mv t3, a5
	fmv.s f13, f11
	addiw a5, a5, 4
	li t1, 270
	bge a5, t1, label1347
	j label138
label139:
	sh2add t1, a5, a2
	flw f11, 0(t1)
pcrel1790:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(pcrel1790)
	flw f14, 12(t1)
	fmul.s f14, f14, f11
	flw f15, 16(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t1)
	fmul.s f12, f14, f12
	fadd.s f14, f13, f12
	sh2add t1, a5, a3
	fsw f14, 0(t1)
	addiw a5, a5, 1
	li t1, 270
	bge a5, t1, label144
	fmv.s f13, f11
	fmv.s f12, f10
	fmv.s f10, f14
	j label139
label144:
	addiw a4, a4, 1
	li a2, 512
	bge a4, a2, label158
	j label157
label100:
	addiw a3, t1, -4
	blt a3, zero, label1018
	j label106
label1018:
	fmv.s f14, f13
	addiw a3, t1, -4
	blt a3, zero, label1113
	j label120
label106:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label106)
	flw f14, 0(a4)
	fmul.s f14, f14, f11
	flw f15, 4(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t2, 1080
	mulw a5, t1, t2
	add a5, a1, a5
	sh2add t3, a2, a5
	fsw f12, 0(t3)
	mulw t1, t1, t2
	add t1, s0, t1
	sh2add t2, a2, t1
	flw f13, 0(t2)
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	addi t2, a5, -1080
	sh2add t2, a2, t2
	fsw f10, 0(t2)
	addi t2, t1, -1080
	sh2add t2, a2, t2
	flw f11, 0(t2)
	flw f14, 0(a4)
	fmul.s f14, f14, f11
	flw f15, 4(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t2, -2160
	add t3, a5, t2
	sh2add t3, a2, t3
	fsw f12, 0(t3)
	add t3, t1, t2
	sh2add t3, a2, t3
	flw f13, 0(t3)
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	addi a4, t2, -1080
	add a5, a5, a4
	sh2add a5, a2, a5
	fsw f10, 0(a5)
	add a4, t1, a4
	sh2add a4, a2, a4
	flw f11, 0(a4)
	mv t1, a3
	addiw a3, a3, -4
	blt a3, zero, label1018
	j label106
label1113:
	mv a3, t1
label113:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label113)
	flw f13, 0(a4)
	fmul.s f13, f13, f11
	flw f15, 4(a4)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f13, f13, f12
	li a4, 1080
	mulw a5, a3, a4
	add a5, a1, a5
	sh2add a5, a2, a5
	fsw f13, 0(a5)
	mulw a4, a3, a4
	add a4, s0, a4
	sh2add a4, a2, a4
	flw f15, 0(a4)
	addiw a3, a3, -1
	blt a3, zero, label119
	fmv.s f12, f10
	fmv.s f14, f11
	fmv.s f10, f13
	fmv.s f11, f15
	j label113
label75:
	li t2, 1080
	mulw a4, t1, t2
	add a5, s0, a4
	sh2add a4, a2, a5
	flw f13, 0(a4)
pcrel1791:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(pcrel1791)
	flw f14, 12(a4)
	fmul.s f14, f14, f13
	flw f15, 16(a4)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f11, f11, f12
	mulw t1, t1, t2
	add t1, a0, t1
	sh2add t3, a2, t1
	fsw f11, 0(t3)
	addi t3, a5, 1080
	sh2add t3, a2, t3
	flw f12, 0(t3)
	flw f14, 12(a4)
	fmul.s f14, f14, f12
	flw f15, 16(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	addi t3, t1, 1080
	sh2add t3, a2, t3
	fsw f10, 0(t3)
	slli t2, t2, 1
	add t3, a5, t2
	sh2add t3, a2, t3
	flw f13, 0(t3)
	flw f14, 12(a4)
	fmul.s f14, f14, f13
	flw f15, 16(a4)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a4)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	add t3, t1, t2
	sh2add t3, a2, t3
	fsw f12, 0(t3)
	addi t2, t2, 1080
	add a5, a5, t2
	sh2add a5, a2, a5
	flw f11, 0(a5)
	flw f14, 12(a4)
	fmul.s f14, f14, f11
	flw f15, 16(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f12
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	add a4, t1, t2
	sh2add a4, a2, a4
	fsw f10, 0(a4)
	mv t1, a3
	addiw a3, a3, 4
	li a4, 512
	bge a3, a4, label57
	j label75
label62:
	li t2, 1080
	mulw a4, t1, t2
	add a5, s0, a4
	sh2add a4, a2, a5
	flw f13, 0(a4)
pcrel1792:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(pcrel1792)
	flw f14, 12(a4)
	fmul.s f14, f14, f13
	flw f15, 16(a4)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f11, f11, f12
	mulw t1, t1, t2
	add t1, a0, t1
	sh2add t3, a2, t1
	fsw f11, 0(t3)
	addi t3, a5, 1080
	sh2add t3, a2, t3
	flw f12, 0(t3)
	flw f14, 12(a4)
	fmul.s f14, f14, f12
	flw f15, 16(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	addi t3, t1, 1080
	sh2add t3, a2, t3
	fsw f10, 0(t3)
	slli t2, t2, 1
	add t3, a5, t2
	sh2add t3, a2, t3
	flw f13, 0(t3)
	flw f14, 12(a4)
	fmul.s f14, f14, f13
	flw f15, 16(a4)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(a4)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	add t3, t1, t2
	sh2add t3, a2, t3
	fsw f12, 0(t3)
	addi t2, t2, 1080
	add a5, a5, t2
	sh2add a5, a2, a5
	flw f11, 0(a5)
	flw f14, 12(a4)
	fmul.s f14, f14, f11
	flw f15, 16(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f12
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	add a4, t1, t2
	sh2add a4, a2, a4
	fsw f10, 0(a4)
	mv t1, a3
	addiw a3, a3, 4
	li a4, 512
	bge a3, a4, label573
	j label62
label49:
	sh2add t2, t4, a3
	flw f10, 0(t2)
	sh2add t3, t4, a2
	flw f11, 0(t3)
	fadd.s f10, f10, f11
	sh2add t4, t4, a4
	fsw f10, 0(t4)
	flw f10, 4(t2)
	flw f11, 4(t3)
	fadd.s f10, f10, f11
	fsw f10, 4(t4)
	flw f10, 8(t2)
	flw f11, 8(t3)
	fadd.s f10, f10, f11
	fsw f10, 8(t4)
	flw f10, 12(t2)
	flw f11, 12(t3)
	fadd.s f10, f10, f11
	fsw f10, 12(t4)
	mv t4, t1
	addiw t1, t1, 4
	li t2, 270
	bge t1, t2, label514
	j label49
label120:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a4, a4, %pcrel_lo(label120)
	flw f13, 0(a4)
	fmul.s f13, f13, f11
	flw f15, 4(a4)
	fmul.s f14, f15, f14
	fadd.s f13, f13, f14
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t2, 1080
	mulw a5, t1, t2
	add a5, a1, a5
	sh2add t3, a2, a5
	fsw f12, 0(t3)
	mulw t1, t1, t2
	add t1, s0, t1
	sh2add t2, a2, t1
	flw f13, 0(t2)
	flw f14, 0(a4)
	fmul.s f14, f14, f13
	flw f15, 4(a4)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(a4)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	addi t2, a5, -1080
	sh2add t2, a2, t2
	fsw f10, 0(t2)
	addi t2, t1, -1080
	sh2add t2, a2, t2
	flw f11, 0(t2)
	flw f14, 0(a4)
	fmul.s f14, f14, f11
	flw f15, 4(a4)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(a4)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	li t2, -2160
	add t3, a5, t2
	sh2add t3, a2, t3
	fsw f12, 0(t3)
	add t3, t1, t2
	sh2add t3, a2, t3
	flw f14, 0(t3)
	flw f13, 0(a4)
	fmul.s f13, f13, f14
	flw f15, 4(a4)
	fmul.s f11, f15, f11
	fadd.s f11, f13, f11
	fadd.s f11, f11, f12
	flw f13, 8(a4)
	fmul.s f10, f13, f10
	fadd.s f10, f11, f10
	addi a4, t2, -1080
	add a5, a5, a4
	sh2add a5, a2, a5
	fsw f10, 0(a5)
	add a4, t1, a4
	sh2add a4, a2, a4
	flw f11, 0(a4)
	mv t1, a3
	addiw a3, a3, -4
	blt a3, zero, label1113
	j label120
label119:
	addiw a2, a2, 1
	li a3, 270
	bge a2, a3, label883
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	fmv.w.x f13, zero
	li t1, 511
	addiw a3, t1, -4
	blt a3, zero, label100
	j label121
label84:
	addiw t1, t4, 4
	li t2, 270
	bge t1, t2, label86
label92:
	sh2add t2, t4, a3
	flw f10, 0(t2)
	sh2add t3, t4, a2
	flw f11, 0(t3)
	fadd.s f10, f10, f11
	sh2add t4, t4, a4
	fsw f10, 0(t4)
	flw f10, 4(t2)
	flw f11, 4(t3)
	fadd.s f10, f10, f11
	fsw f10, 4(t4)
	flw f10, 8(t2)
	flw f11, 8(t3)
	fadd.s f10, f10, f11
	fsw f10, 8(t4)
	flw f10, 12(t2)
	flw f11, 12(t3)
	fadd.s f10, f10, f11
	fsw f10, 12(t4)
	mv t4, t1
	addiw t1, t1, 4
	li t2, 270
	bge t1, t2, label86
	j label92
label146:
	sh2add t2, t3, a2
	flw f13, 0(t2)
pcrel1793:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(pcrel1793)
	flw f14, 12(t1)
	fmul.s f14, f14, f13
	flw f15, 16(t1)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f10
	flw f14, 8(t1)
	fmul.s f12, f14, f12
	fadd.s f11, f11, f12
	sh2add t3, t3, a3
	fsw f11, 0(t3)
	flw f12, 4(t2)
	flw f14, 12(t1)
	fmul.s f14, f14, f12
	flw f15, 16(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f11
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 4(t3)
	flw f13, 8(t2)
	flw f14, 12(t1)
	fmul.s f14, f14, f13
	flw f15, 16(t1)
	fmul.s f12, f15, f12
	fadd.s f12, f14, f12
	fadd.s f12, f12, f10
	flw f14, 8(t1)
	fmul.s f11, f14, f11
	fadd.s f12, f12, f11
	fsw f12, 8(t3)
	flw f11, 12(t2)
	flw f14, 12(t1)
	fmul.s f14, f14, f11
	flw f15, 16(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f12
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f13, f10
	fsw f10, 12(t3)
	mv t3, a5
	addiw a5, a5, 4
	li t1, 270
	bge a5, t1, label1337
	j label146
label74:
	addiw a2, a2, 1
	li a3, 270
	bge a2, a3, label560
	fmv.w.x f10, zero
	fmv.w.x f11, zero
	fmv.w.x f12, zero
	mv t1, zero
	addiw a3, zero, 4
	li a4, 512
	bge a3, a4, label57
	j label75
label41:
	addiw t1, t4, 4
	li t2, 270
	bge t1, t2, label44
label43:
	sh2add t2, t4, a3
	flw f10, 0(t2)
	sh2add t3, t4, a2
	flw f11, 0(t3)
	fadd.s f10, f10, f11
	sh2add t4, t4, a4
	fsw f10, 0(t4)
	flw f10, 4(t2)
	flw f11, 4(t3)
	fadd.s f10, f10, f11
	fsw f10, 4(t4)
	flw f10, 8(t2)
	flw f11, 8(t3)
	fadd.s f10, f10, f11
	fsw f10, 8(t4)
	flw f10, 12(t2)
	flw f11, 12(t3)
	fadd.s f10, f10, f11
	fsw f10, 12(t4)
	mv t4, t1
	addiw t1, t1, 4
	li t2, 270
	bge t1, t2, label44
	j label43
label20:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(label20)
	flw f14, 0(t1)
	fmul.s f14, f14, f11
	flw f15, 4(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t1)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	sh2add t2, t3, a3
	fsw f12, 0(t2)
	sh2add t3, t3, a2
	flw f13, 0(t3)
	flw f14, 0(t1)
	fmul.s f14, f14, f13
	flw f15, 4(t1)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -4(t2)
	flw f11, -4(t3)
	flw f14, 0(t1)
	fmul.s f14, f14, f11
	flw f15, 4(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t1)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	fsw f12, -8(t2)
	flw f13, -8(t3)
	flw f14, 0(t1)
	fmul.s f14, f14, f13
	flw f15, 4(t1)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -12(t2)
	flw f11, -12(t3)
	mv t3, a5
	addiw a5, a5, -4
	blt a5, zero, label21
	j label20
label21:
	addiw a5, t3, -4
	blt a5, zero, label333
	j label27
label333:
	mv a5, t3
	j label28
label27:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(label27)
	flw f14, 0(t1)
	fmul.s f14, f14, f11
	flw f15, 4(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t1)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	sh2add t2, t3, a3
	fsw f12, 0(t2)
	sh2add t3, t3, a2
	flw f13, 0(t3)
	flw f14, 0(t1)
	fmul.s f14, f14, f13
	flw f15, 4(t1)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -4(t2)
	flw f11, -4(t3)
	flw f14, 0(t1)
	fmul.s f14, f14, f11
	flw f15, 4(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t1)
	fmul.s f12, f14, f12
	fadd.s f12, f13, f12
	fsw f12, -8(t2)
	flw f13, -8(t3)
	flw f14, 0(t1)
	fmul.s f14, f14, f13
	flw f15, 4(t1)
	fmul.s f11, f15, f11
	fadd.s f11, f14, f11
	fadd.s f11, f11, f12
	flw f14, 8(t1)
	fmul.s f10, f14, f10
	fadd.s f10, f11, f10
	fsw f10, -12(t2)
	flw f11, -12(t3)
	mv t3, a5
	addiw a5, a5, -4
	blt a5, zero, label333
	j label27
label28:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t1, t1, %pcrel_lo(label28)
	flw f14, 0(t1)
	fmul.s f14, f14, f11
	flw f15, 4(t1)
	fmul.s f13, f15, f13
	fadd.s f13, f14, f13
	fadd.s f13, f13, f10
	flw f14, 8(t1)
	fmul.s f12, f14, f12
	fadd.s f14, f13, f12
	sh2add t1, a5, a3
	fsw f14, 0(t1)
	sh2add t1, a5, a2
	flw f15, 0(t1)
	addiw a5, a5, -1
	blt a5, zero, label34
	fmv.s f12, f10
	fmv.s f13, f11
	fmv.s f10, f14
	fmv.s f11, f15
	j label28
label44:
	addiw t1, t4, 4
	li t2, 270
	bge t1, t2, label514
	j label49
label34:
	addiw a4, a4, 1
	li a2, 512
	bge a4, a2, label162
	j label6
