.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	40000000
.align 4
b:
	.zero	40000000
.align 4
kernelid:
	.zero	40000
.text
.globl main
main:
.p2align 2
	addi sp, sp, -104
	sd s3, 96(sp)
	sd s2, 88(sp)
	sd s0, 80(sp)
	sd s5, 72(sp)
	sd s1, 64(sp)
	sd s6, 56(sp)
	sd s4, 48(sp)
	sd s7, 40(sp)
	sd s8, 32(sp)
	sd s9, 24(sp)
	sd s11, 16(sp)
	sd s10, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s3, a0
	jal getint
	mv s2, a0
	jal getint
pcrel699:
	auipc a1, %pcrel_hi(a)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel699)
	mv s1, a0
	jal getarray
pcrel700:
	auipc a1, %pcrel_hi(kernelid)
	addi a0, a1, %pcrel_lo(pcrel700)
	mv s4, a0
	jal getarray
	mv s5, a0
	srliw a0, s3, 31
	add a1, s3, a0
	li a0, 109
	sraiw s3, a1, 1
	jal _sysy_starttime
	bgt s5, zero, label2
	j label62
.p2align 2
label3:
	sh2add a5, a2, s4
	mv a4, zero
	lw a3, 0(a5)
	subw a5, zero, s3
	sext.w t0, s3
	mv t1, zero
	mv t2, zero
	subw t3, zero, s3
	sext.w t4, s3
	mv t5, a5
	mv a7, zero
	slt t6, a5, s2
	slti s6, a5, 0
	xori a6, t6, 1
	or t6, a6, s6
	mv a6, t3
	slti s7, t3, 0
	slt s8, t3, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s6, s0, a5
	addw s7, t3, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	li s7, 1
	beq a3, s7, label186
	li s8, 2
	beq a3, s8, label54
	li s7, 3
	beq a3, s7, label192
	li s9, 4
	beq a3, s9, label217
	mv s8, zero
	addiw a6, t3, 1
	ble t4, a6, label26
.p2align 2
label551:
	mv a7, s8
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	beq s6, zero, label586
.p2align 2
label101:
	mv s6, zero
	beq a3, zero, label17
	li s7, 1
	beq a3, s7, label186
	li s8, 2
	beq a3, s8, label54
	li s7, 3
	beq a3, s7, label192
	li s9, 4
	beq a3, s9, label217
	mv s8, zero
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, zero
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	li s7, 1
	beq a3, s7, label186
	j label587
.p2align 2
label29:
	bgt a1, zero, label149
	addiw a2, a2, 1
	bgt s5, a2, label3
	j label62
.p2align 2
label149:
	mv a5, zero
.p2align 2
label30:
	addiw a3, a5, 4
	bgt a1, a3, label32
	sh2add t0, a5, a0
	sh2add a4, a5, s1
	lw a3, 0(t0)
	addiw a5, a5, 1
	sw a3, 0(a4)
	bgt a1, a5, label33
	addiw a2, a2, 1
	bgt s5, a2, label3
	j label62
.p2align 2
label32:
	sh2add a4, a5, a0
	sh2add a5, a5, s1
	lw t0, 0(a4)
	sw t0, 0(a5)
	lw t0, 4(a4)
	sw t0, 4(a5)
	lw t1, 8(a4)
	sw t1, 8(a5)
	lw a4, 12(a4)
	sw a4, 12(a5)
	mv a5, a3
	j label30
.p2align 2
label33:
	sh2add t0, a5, a0
	sh2add a4, a5, s1
	lw a3, 0(t0)
	addiw a5, a5, 1
	sw a3, 0(a4)
	bgt a1, a5, label33
	addiw a2, a2, 1
	bgt s5, a2, label3
label62:
	li a0, 116
	jal _sysy_stoptime
	mv a1, s1
	mulw a0, s2, s0
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s10, 8(sp)
	ld s11, 16(sp)
	ld s9, 24(sp)
	ld s8, 32(sp)
	ld s7, 40(sp)
	ld s4, 48(sp)
	ld s6, 56(sp)
	ld s1, 64(sp)
	ld s5, 72(sp)
	ld s0, 80(sp)
	ld s2, 88(sp)
	ld s3, 96(sp)
	addi sp, sp, 104
	ret
.p2align 2
label621:
	li s7, 1
	beq a3, s7, label186
.p2align 2
label587:
	li s8, 2
	beq a3, s8, label54
	li s7, 3
	beq a3, s7, label192
	j label633
.p2align 2
label26:
	addiw t5, t5, 1
	ble t0, t5, label27
	mv a7, s8
	slt t6, t5, s2
	slti s6, t5, 0
	xori a6, t6, 1
	or t6, a6, s6
	mv a6, t3
	slti s7, t3, 0
	slt s8, t3, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s6, s0, t5
	addw s7, t3, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	li s7, 1
	beq a3, s7, label186
	li s8, 2
	beq a3, s8, label54
	li s7, 3
	beq a3, s7, label192
	li s9, 4
	beq a3, s9, label217
	mv s8, zero
	addiw a6, t3, 1
	ble t4, a6, label26
	mv a7, zero
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	j label621
.p2align 2
label633:
	li s9, 4
	beq a3, s9, label217
	j label635
.p2align 2
label18:
	lui a7, 786432
	addw s8, s8, a7
	lui a7, 262144
	bgt s8, a7, label18
	blt s8, zero, label22
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, s8
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	li s7, 1
	beq a3, s7, label186
	li s8, 2
	beq a3, s8, label54
	li s7, 3
	beq a3, s7, label192
	li s9, 4
	beq a3, s9, label217
	mv s8, zero
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, zero
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	j label626
.p2align 2
label22:
	lui a7, 262144
	addw s8, s8, a7
	blt s8, zero, label22
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, s8
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	li s7, 1
	beq a3, s7, label186
	li s8, 2
	beq a3, s8, label54
	li s7, 3
	beq a3, s7, label192
	li s9, 4
	beq a3, s9, label217
	mv s8, zero
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, zero
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	j label629
.p2align 2
label54:
	max s8, a7, s6
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, s8
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	li s7, 1
	beq a3, s7, label186
	li s8, 2
	beq a3, s8, label54
	li s7, 3
	beq a3, s7, label192
	li s9, 4
	beq a3, s9, label217
	mv s8, zero
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, zero
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	bne a3, zero, label629
.p2align 2
label17:
	addw s8, a7, s6
	lui a7, 262144
	bgt s8, a7, label18
	blt s8, zero, label22
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, s8
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	li s7, 1
	beq a3, s7, label186
	li s8, 2
	beq a3, s8, label54
	li s7, 3
	beq a3, s7, label192
	li s9, 4
	beq a3, s9, label217
	mv s8, zero
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, zero
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
.p2align 2
label626:
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	j label629
.p2align 2
label217:
	mv s8, zero
	li s7, 1
	lui s9, 262144
	blt s7, s9, label50
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, zero
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	li s7, 1
	beq a3, s7, label186
	li s8, 2
	beq a3, s8, label54
	li s7, 3
	beq a3, s7, label192
	li s9, 4
	beq a3, s9, label217
	mv s8, zero
	addiw a6, a6, 1
	ble t4, a6, label26
.p2align 2
label610:
	mv a7, s8
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	j label645
.p2align 2
label50:
	divw s10, a7, s7
	li s11, -2147483647
	and s9, s10, s11
	li s10, 1
	beq s9, s10, label51
	slliw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label50
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, s8
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	li s7, 1
	beq a3, s7, label186
	li s8, 2
	beq a3, s8, label54
	li s7, 3
	beq a3, s7, label192
	li s9, 4
	beq a3, s9, label217
	mv s8, zero
	addiw a6, a6, 1
	ble t4, a6, label26
	j label610
.p2align 2
label51:
	divw s9, s6, s7
	li s11, -2147483647
	and s10, s9, s11
	li s9, 1
	beq s10, s9, label52
	slliw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label50
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, s8
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	li s7, 1
	beq a3, s7, label186
	li s8, 2
	beq a3, s8, label54
	li s7, 3
	beq a3, s7, label192
	li s9, 4
	beq a3, s9, label217
	mv s8, zero
	addiw a6, a6, 1
	ble t4, a6, label26
	j label610
.p2align 2
label645:
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	j label629
.p2align 2
label52:
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	blt s7, s9, label50
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, s8
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	li s7, 1
	beq a3, s7, label186
	li s8, 2
	beq a3, s8, label54
	li s7, 3
	beq a3, s7, label192
	li s9, 4
	beq a3, s9, label217
	mv s8, zero
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, zero
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	j label645
.p2align 2
label635:
	mv s8, zero
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, zero
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	j label644
.p2align 2
label192:
	mv s8, zero
	li s7, 1
	lui s9, 262144
	blt s7, s9, label42
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, zero
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	li s7, 1
	beq a3, s7, label186
	li s8, 2
	beq a3, s8, label54
	li s7, 3
	beq a3, s7, label192
	li s9, 4
	beq a3, s9, label217
.p2align 2
label568:
	mv s8, zero
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, zero
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	j label638
.p2align 2
label42:
	divw s9, a7, s7
	li s11, -2147483647
	and s10, s9, s11
	li s9, 1
	beq s10, s9, label43
	divw s10, s6, s7
	and s9, s10, s11
	li s10, 1
	beq s9, s10, label43
	slliw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label42
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, s8
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	li s7, 1
	beq a3, s7, label186
	li s8, 2
	beq a3, s8, label54
	li s7, 3
	beq a3, s7, label192
	li s9, 4
	beq a3, s9, label217
	j label568
.p2align 2
label644:
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	j label629
.p2align 2
label638:
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	j label629
.p2align 2
label43:
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	blt s7, s9, label42
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, s8
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	li s7, 1
	beq a3, s7, label186
	li s8, 2
	beq a3, s8, label54
	li s7, 3
	beq a3, s7, label192
	li s9, 4
	beq a3, s9, label217
	mv s8, zero
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, zero
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	j label638
.p2align 2
label586:
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	j label621
.p2align 2
label27:
	addw t4, t1, t2
	addiw t2, t2, 1
	sh2add t3, t4, a0
	sw s8, 0(t3)
	ble s0, t2, label28
	subw t3, t2, s3
	addw t4, s3, t2
	mv t5, a5
	mv a7, zero
	slt t6, a5, s2
	slti s6, a5, 0
	xori a6, t6, 1
	or t6, a6, s6
	mv a6, t3
	slti s7, t3, 0
	slt s8, t3, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s6, s0, a5
	addw s7, t3, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	li s7, 1
	beq a3, s7, label186
	li s8, 2
	beq a3, s8, label54
	li s7, 3
	beq a3, s7, label192
	li s9, 4
	beq a3, s9, label217
	mv s8, zero
	addiw a6, t3, 1
	ble t4, a6, label26
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	j label586
.p2align 2
label28:
	addiw a4, a4, 1
	ble s2, a4, label29
	subw a5, a4, s3
	addw t0, s3, a4
	mulw t1, s0, a4
	mv t2, zero
	subw t3, zero, s3
	sext.w t4, s3
	mv t5, a5
	mv a7, zero
	slt t6, a5, s2
	slti s6, a5, 0
	xori a6, t6, 1
	or t6, a6, s6
	mv a6, t3
	slti s7, t3, 0
	slt s8, t3, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s6, s0, a5
	addw s7, t3, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	li s7, 1
	beq a3, s7, label186
	li s8, 2
	beq a3, s8, label54
	li s7, 3
	beq a3, s7, label192
	li s9, 4
	beq a3, s9, label217
	mv s8, zero
	addiw a6, t3, 1
	ble t4, a6, label26
	j label551
.p2align 2
label629:
	li s7, 1
	bne a3, s7, label587
.p2align 2
label186:
	mv s8, zero
	li s7, 1
	lui s9, 262144
	blt s7, s9, label58
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, zero
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	li s7, 1
	beq a3, s7, label186
	li s8, 2
	beq a3, s8, label54
	li s7, 3
	beq a3, s7, label192
	li s9, 4
	beq a3, s9, label217
	mv s8, zero
	addiw a6, a6, 1
	ble t4, a6, label26
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
.p2align 2
label651:
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	j label629
.p2align 2
label616:
	mv a7, s8
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	j label651
.p2align 2
label58:
	divw s9, a7, s7
	srliw s11, s9, 31
	add s10, s9, s11
	andi s11, s10, -2
	divw s10, s6, s7
	subw s9, s9, s11
	srliw s11, s10, 31
	add s11, s10, s11
	andi s11, s11, -2
	subw s10, s10, s11
	beq s9, s10, label59
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	blt s7, s9, label58
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, s8
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	li s7, 1
	beq a3, s7, label186
	li s8, 2
	beq a3, s8, label54
	li s7, 3
	beq a3, s7, label192
	li s9, 4
	beq a3, s9, label217
	mv s8, zero
	addiw a6, a6, 1
	ble t4, a6, label26
	j label616
.p2align 2
label59:
	slliw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label58
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, s8
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s6, s0, t5
	addw s7, a6, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a3, zero, label17
	li s7, 1
	beq a3, s7, label186
	li s8, 2
	beq a3, s8, label54
	li s7, 3
	beq a3, s7, label192
	li s9, 4
	beq a3, s9, label217
	mv s8, zero
	addiw a6, a6, 1
	ble t4, a6, label26
	mv a7, zero
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	j label651
label2:
	mulw a1, s2, s0
pcrel701:
	auipc a2, %pcrel_hi(b)
	addi a0, a2, %pcrel_lo(pcrel701)
	mv a2, zero
	j label3
