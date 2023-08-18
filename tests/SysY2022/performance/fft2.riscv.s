.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
temp:
	.zero	8388608
.p2align 3
a:
	.zero	8388608
.p2align 3
b:
	.zero	8388608
.text
.p2align 2
multiply:
	addi sp, sp, -80
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	sd s1, 24(sp)
	mv s1, a1
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	beq a1, zero, label54
	li a1, 1
	beq s1, a1, label49
	addiw a1, s1, 1
	li a2, 3
	bgeu a1, a2, label9
	mv a0, zero
label6:
	slliw a1, a0, 1
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a5, t0, 1
	mul a0, a1, a2
	srli a4, a0, 63
	srai a3, a0, 58
	add a2, a4, a3
	lui a4, 524288
	mulw a3, a2, a5
	addiw a2, a4, 1
	subw a0, a1, a3
	li a3, 1
	and a1, s1, a2
	beq a1, a3, label8
	j label2
label54:
	mv a0, zero
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
label9:
	addiw a1, s1, -2
	mv a0, s1
	bge s1, zero, label473
	addiw a0, s1, 1
label473:
	sraiw s2, a0, 1
	li a2, 2
	bgeu a1, a2, label10
	lui a3, 70493
	lui a5, 243712
	addiw a1, a3, -2031
	addiw a3, a5, 1
	mul a0, s0, a1
	srli a4, a0, 63
	srai a2, a0, 58
	add a1, a4, a2
	mulw a2, a1, a3
	subw a0, s0, a2
	j label6
label10:
	addiw a1, s1, 3
	li a2, 7
	bltu a1, a2, label83
	addiw a1, s1, -4
	mv a0, s1
	bge s1, zero, label480
	addiw a0, s1, 3
label480:
	sraiw s3, a0, 2
	li a2, 4
	bgeu a1, a2, label16
	lui a3, 70493
	lui a5, 243712
	addiw a1, a3, -2031
	addiw a3, a5, 1
	mul a0, s0, a1
	srli a4, a0, 63
	srai a2, a0, 58
	add a1, a4, a2
	mulw a2, a1, a3
	subw a0, s0, a2
	j label11
label83:
	mv a0, zero
label11:
	slliw a1, a0, 1
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a5, t0, 1
	mul a0, a1, a2
	srli a4, a0, 63
	srai a3, a0, 58
	add a2, a4, a3
	lui a4, 524288
	mulw a3, a2, a5
	addiw a2, a4, 1
	subw a0, a1, a3
	li a3, 1
	and a1, s2, a2
	beq a1, a3, label13
	j label6
label16:
	addiw a1, s3, 1
	li a2, 3
	bltu a1, a2, label104
	addiw a1, s3, -2
	mv a0, s1
	bge s1, zero, label489
	addiw a0, s1, 7
label489:
	sraiw s4, a0, 3
	li a2, 2
	bgeu a1, a2, label22
	lui a3, 70493
	lui a5, 243712
	addiw a1, a3, -2031
	addiw a4, a5, 1
	mul a0, s0, a1
	srli a3, a0, 63
	srai a2, a0, 58
	add a1, a3, a2
	mulw a2, a1, a4
	subw a0, s0, a2
	j label17
label104:
	mv a0, zero
label17:
	slliw a1, a0, 1
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a4, t0, 1
	mul a0, a1, a2
	srli a5, a0, 63
	srai a3, a0, 58
	add a2, a5, a3
	lui a5, 524288
	mulw a3, a2, a4
	addiw a2, a5, 1
	subw a0, a1, a3
	li a3, 1
	and a1, s3, a2
	beq a1, a3, label19
	j label11
label22:
	addiw a1, s1, 15
	mv a0, s1
	bge s1, zero, label493
	addiw a0, s1, 15
label493:
	sraiw s5, a0, 4
	li a2, 31
	bgeu a1, a2, label23
	mv a0, zero
label45:
	slliw a1, a0, 1
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a5, t0, 1
	mul a0, a1, a2
	srli a4, a0, 63
	srai a3, a0, 58
	add a2, a4, a3
	lui a4, 524288
	mulw a3, a2, a5
	addiw a2, a4, 1
	subw a0, a1, a3
	li a3, 1
	and a1, s4, a2
	bne a1, a3, label17
	addw a1, s0, a0
	lui a4, 70493
	addiw a2, a4, -2031
	addiw a4, t0, 1
	mul a0, a1, a2
	srli a5, a0, 63
	srai a3, a0, 58
	add a2, a5, a3
	mulw a3, a2, a4
	subw a0, a1, a3
	j label17
label23:
	addiw a1, s1, -16
	li a0, 16
	bgeu a1, a0, label25
	lui a3, 70493
	lui a5, 243712
	addiw a1, a3, -2031
	addiw a4, a5, 1
	mul a0, s0, a1
	srli a3, a0, 63
	srai a2, a0, 58
	add a1, a3, a2
	mulw a2, a1, a4
	subw a0, s0, a2
	j label45
label25:
	addiw a1, s5, 1
	li a2, 3
	bltu a1, a2, label137
	addiw a1, s5, -2
	mv a0, s1
	bge s1, zero, label497
	addiw a0, s1, 31
label497:
	sraiw s6, a0, 5
	li a2, 2
	bgeu a1, a2, label27
	lui a3, 70493
	lui a5, 243712
	addiw a1, a3, -2031
	addiw a3, a5, 1
	mul a0, s0, a1
	srli a4, a0, 63
	srai a2, a0, 58
	add a1, a4, a2
	mulw a2, a1, a3
	subw a0, s0, a2
	j label42
label137:
	mv a0, zero
label42:
	slliw a1, a0, 1
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a4, t0, 1
	mul a0, a1, a2
	srli a5, a0, 63
	srai a3, a0, 58
	add a2, a5, a3
	lui a5, 524288
	mulw a3, a2, a4
	addiw a2, a5, 1
	subw a0, a1, a3
	li a3, 1
	and a1, s5, a2
	bne a1, a3, label45
	addw a1, s0, a0
	lui a4, 70493
	addiw a2, a4, -2031
	addiw a4, t0, 1
	mul a0, a1, a2
	srli a5, a0, 63
	srai a3, a0, 58
	add a2, a5, a3
	mulw a3, a2, a4
	subw a0, a1, a3
	j label45
label27:
	addiw a1, s5, 3
	li a2, 7
	bgeu a1, a2, label31
	mv a0, zero
	j label28
label36:
	addw a1, s0, a0
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a4, t0, 1
	mul a0, a1, a2
	srli a5, a0, 63
	srai a3, a0, 58
	add a2, a5, a3
	mulw a3, a2, a4
	subw a0, a1, a3
label28:
	slliw a1, a0, 1
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a4, t0, 1
	mul a0, a1, a2
	srli a5, a0, 63
	srai a3, a0, 58
	add a2, a5, a3
	lui a5, 524288
	mulw a3, a2, a4
	addiw a2, a5, 1
	subw a0, a1, a3
	li a3, 1
	and a1, s6, a2
	bne a1, a3, label42
	addw a1, s0, a0
	lui a4, 70493
	addiw a2, a4, -2031
	addiw a4, t0, 1
	mul a0, a1, a2
	srli a5, a0, 63
	srai a3, a0, 58
	add a2, a5, a3
	mulw a3, a2, a4
	subw a0, a1, a3
	j label42
label31:
	addiw a1, s5, -4
	mv a0, s1
	bge s1, zero, label504
	addiw a0, s1, 63
label504:
	sraiw s7, a0, 6
	li a2, 4
	bltu a1, a2, label32
	addiw a1, s7, 1
	li a2, 3
	bgeu a1, a2, label37
	mv a0, zero
label34:
	slliw a1, a0, 1
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a4, t0, 1
	mul a0, a1, a2
	srli a5, a0, 63
	srai a3, a0, 58
	add a2, a5, a3
	lui a5, 524288
	mulw a3, a2, a4
	addiw a2, a5, 1
	subw a0, a1, a3
	li a3, 1
	and a1, s7, a2
	beq a1, a3, label36
	j label28
label37:
	addiw a1, s7, -2
	mv a0, s1
	bge s1, zero, label513
	addiw a0, s1, 127
label513:
	sraiw s8, a0, 7
	li a2, 2
	bltu a1, a2, label40
	mv a2, s1
	bge s1, zero, label515
	addiw a2, s1, 255
label515:
	sraiw a1, a2, 8
	mv a0, s0
	jal multiply
	slliw a1, a0, 1
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a5, t0, 1
	mul a0, a1, a2
	srli a4, a0, 63
	srai a3, a0, 58
	add a2, a4, a3
	lui a4, 524288
	mulw a3, a2, a5
	addiw a2, a4, 1
	subw a0, a1, a3
	li a3, 1
	and a1, s8, a2
	beq a1, a3, label39
	j label34
label19:
	addw a1, s0, a0
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a5, t0, 1
	mul a0, a1, a2
	srli a4, a0, 63
	srai a3, a0, 58
	add a2, a4, a3
	mulw a3, a2, a5
	subw a0, a1, a3
	j label11
label13:
	addw a1, s0, a0
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a4, t0, 1
	mul a0, a1, a2
	srli a5, a0, 63
	srai a3, a0, 58
	add a2, a5, a3
	mulw a3, a2, a4
	subw a0, a1, a3
	j label6
label39:
	addw a1, s0, a0
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a4, t0, 1
	mul a0, a1, a2
	srli a5, a0, 63
	srai a3, a0, 58
	add a2, a5, a3
	mulw a3, a2, a4
	subw a0, a1, a3
	j label34
label40:
	lui a3, 70493
	lui a5, 243712
	addiw a1, a3, -2031
	addiw a4, a5, 1
	mul a0, s0, a1
	srli a3, a0, 63
	srai a2, a0, 58
	add a1, a3, a2
	mulw a2, a1, a4
	subw a0, s0, a2
	j label34
label32:
	lui a3, 70493
	lui a5, 243712
	addiw a1, a3, -2031
	addiw a3, a5, 1
	mul a0, s0, a1
	srli a4, a0, 63
	srai a2, a0, 58
	add a1, a4, a2
	mulw a2, a1, a3
	subw a0, s0, a2
	j label28
label8:
	addw a1, s0, a0
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a5, t0, 1
	mul a0, a1, a2
	srli a4, a0, 63
	srai a3, a0, 58
	add a2, a4, a3
	mulw a3, a2, a5
	subw a0, a1, a3
	j label2
label49:
	lui a3, 70493
	lui a5, 243712
	addiw a1, a3, -2031
	addiw a3, a5, 1
	mul a0, s0, a1
	srli a4, a0, 63
	srai a2, a0, 58
	add a1, a4, a2
	mulw a2, a1, a3
	subw a0, s0, a2
	j label2
.p2align 2
power:
	addi sp, sp, -24
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s1, 16(sp)
	mv s1, a1
	bne a1, zero, label762
	li a0, 1
label760:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
label762:
	mv a2, s1
	bge s1, zero, label784
	addiw a2, s1, 1
label784:
	sraiw a1, a2, 1
	mv a0, s0
	jal power
	mv a1, a0
	jal multiply
	li a4, 1
	lui a3, 524288
	addiw a2, a3, 1
	and a1, s1, a2
	bne a1, a4, label760
	mv a1, s0
	jal multiply
	j label760
.p2align 2
fft:
	addi sp, sp, -72
	sd ra, 0(sp)
	sd s1, 8(sp)
	mv s1, a0
	sd s6, 16(sp)
	lui a0, 70493
	li s6, 1
	sd s2, 24(sp)
	mv s2, a1
	sd s0, 32(sp)
	lui a1, 243712
	mv s0, a3
	sd s5, 40(sp)
	addiw s5, a0, -2031
	sd s4, 48(sp)
	addiw s4, a1, 1
	sd s3, 56(sp)
	sd s7, 64(sp)
	beq a2, s6, label562
	mv a1, a2
	bge a2, zero, label739
	addiw a1, a2, 1
label739:
	sraiw s3, a1, 1
pcrel758:
	auipc a3, %pcrel_hi(temp)
	addiw a1, a2, -3
	addi a0, a3, %pcrel_lo(pcrel758)
	sh2add a4, s3, a0
	ble a2, zero, label582
	mv a3, zero
	j label564
.p2align 2
label566:
	sh2add t3, a5, s1
	sh2add t2, t1, a4
	lw t0, 0(t3)
	sw t0, 0(t2)
	addiw a3, a3, 1
	ble a2, a3, label568
.p2align 2
label564:
	andi t0, a3, 1
	addw a5, s2, a3
	mv t2, a3
	bge a3, zero, label741
	addiw t2, a3, 1
label741:
	sraiw t1, t2, 1
	bne t0, zero, label566
	sh2add t2, a5, s1
	addiw a3, a3, 1
	sh2add t3, t1, a0
	lw t0, 0(t2)
	sw t0, 0(t3)
	bgt a2, a3, label564
label568:
	li a4, 3
	ble a2, a4, label623
	addiw t0, s2, 1
	mv a3, a0
	mv a5, zero
	sh2add a4, t0, s1
	j label577
.p2align 2
label695:
	mv t3, a0
.p2align 2
label584:
	addw a1, s2, t2
	sh2add t4, a1, t1
	sh2add t5, a1, s1
	lw t6, 0(t5)
	lw a1, 0(t4)
	mv a0, t3
	jal multiply
	addw a1, t6, a0
	mul a2, a1, s5
	srli t0, a2, 63
	srai a3, a2, 58
	add a4, t0, a3
	subw a3, t6, a0
	mulw a5, a4, s4
	subw a2, a1, a5
	addw a1, a3, s4
	sw a2, 0(t5)
	mul a2, a1, s5
	srli a5, a2, 63
	srai a0, a2, 58
	add a3, a5, a0
	mulw a4, a3, s4
	subw a2, a1, a4
	sw a2, 0(t4)
	mv a0, t3
	mv a1, s0
	jal multiply
	addiw t2, t2, 1
	bgt s3, t2, label695
label562:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	addi sp, sp, 72
	ret
.p2align 2
label580:
	addi a3, a3, 16
.p2align 2
label577:
	addw t0, s2, a5
	lw t2, 0(a3)
	sh2add t1, t0, s1
	sh2add t0, a5, a4
	addiw a5, a5, 4
	sw t2, 0(t1)
	lw t3, 4(a3)
	sw t3, 0(t0)
	lw t1, 8(a3)
	sw t1, 4(t0)
	lw t2, 12(a3)
	sw t2, 8(t0)
	bgt a1, a5, label580
label569:
	ble a2, a5, label582
	sh2add a0, a5, a0
	mv a1, a5
	j label572
label575:
	addi a0, a0, 4
label572:
	addw a4, s2, a1
	lw a5, 0(a0)
	addiw a1, a1, 1
	sh2add a3, a4, s1
	sw a5, 0(a3)
	bgt a2, a1, label575
label582:
	mv a0, s0
	mv a1, s0
	jal multiply
	mv s7, a0
	mv a0, s1
	mv a1, s2
	mv a2, s3
	mv a3, s7
	jal fft
	mv a0, s1
	addw a1, s2, s3
	mv a2, s3
	mv a3, s7
	jal fft
	ble s3, zero, label562
	sh2add t1, s3, s1
	mv t2, zero
	mv t3, s6
	j label584
label623:
	mv a5, zero
	j label569
.p2align 2
.globl main
main:
	addi sp, sp, -48
pcrel875:
	auipc a1, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel875)
	sd s3, 16(sp)
	sd s2, 24(sp)
	sd s4, 32(sp)
	sd s1, 40(sp)
	mv a0, s0
	jal getarray
pcrel876:
	auipc a1, %pcrel_hi(b)
	mv s3, a0
	addi s2, a1, %pcrel_lo(pcrel876)
	mv a0, s2
	jal getarray
	mv s4, a0
	li a0, 60
	jal _sysy_starttime
	li a6, 1
	addiw a1, s3, -1
	addw s1, s4, a1
	ble s1, a6, label794
.p2align 2
label792:
	slliw a0, a6, 1
	mv a6, a0
	bgt s1, a0, label792
label794:
	lui a2, 243712
	li a0, 3
	divw a7, a2, a6
	mv a1, a7
	jal power
	mv a1, zero
	mv s3, a0
	mv a0, s0
	mv a2, a6
	mv a3, s3
	jal fft
	mv a1, zero
	mv a0, s2
	mv a2, a6
	mv a3, s3
	jal fft
	ble a6, zero, label796
	mv t1, s0
	mv t2, zero
.p2align 2
label804:
	sh2add a2, t2, s2
	lw a0, 0(t1)
	lw a1, 0(a2)
	jal multiply
	addiw t2, t2, 1
	sw a0, 0(t1)
	ble a6, t2, label796
	addi t1, t1, 4
	j label804
label796:
	lui a2, 243712
	li a0, 3
	subw a1, a2, a7
	jal power
	mv a1, zero
	mv a3, a0
	mv a0, s0
	mv a2, a6
	jal fft
	ble a6, zero, label797
	mv a0, a6
	lui a2, 243712
	addiw a1, a2, -1
	jal power
	mv t3, zero
	mv t2, s0
	mv t1, a0
	j label799
.p2align 2
label802:
	addi t2, t2, 4
.p2align 2
label799:
	lw a0, 0(t2)
	mv a1, t1
	jal multiply
	addiw t3, t3, 1
	sw a0, 0(t2)
	bgt a6, t3, label802
label797:
	li a0, 79
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s4, 32(sp)
	ld s1, 40(sp)
	addi sp, sp, 48
	ret
