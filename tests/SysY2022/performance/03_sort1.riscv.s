.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	120000040
.text
radixSort:
	addi sp, sp, -248
	sd s1, 240(sp)
	sd s3, 232(sp)
	sd s2, 224(sp)
	sd s0, 216(sp)
	sd s5, 208(sp)
	sd s4, 200(sp)
	sd ra, 192(sp)
	mv s1, a1
	addi s3, sp, 0
	addi s2, sp, 64
	addi s0, sp, 128
	addiw a1, a2, 1
	slt a1, a1, a3
	xori a1, a1, 1
	xori a4, a0, -1
	sltiu a4, a4, 1
	or a1, a1, a4
	sw zero, 128(sp)
	sw zero, 4(s0)
	sw zero, 8(s0)
	sw zero, 12(s0)
	sw zero, 16(s0)
	sw zero, 20(s0)
	sw zero, 24(s0)
	sw zero, 28(s0)
	sw zero, 32(s0)
	sw zero, 36(s0)
	sw zero, 40(s0)
	sw zero, 44(s0)
	sw zero, 48(s0)
	sw zero, 52(s0)
	sw zero, 56(s0)
	sw zero, 60(s0)
	sw zero, 64(sp)
	sw zero, 4(s2)
	sw zero, 8(s2)
	sw zero, 12(s2)
	sw zero, 16(s2)
	sw zero, 20(s2)
	sw zero, 24(s2)
	sw zero, 28(s2)
	sw zero, 32(s2)
	sw zero, 36(s2)
	sw zero, 40(s2)
	sw zero, 44(s2)
	sw zero, 48(s2)
	sw zero, 52(s2)
	sw zero, 56(s2)
	sw zero, 60(s2)
	sw zero, 0(sp)
	sw zero, 4(s3)
	sw zero, 8(s3)
	sw zero, 12(s3)
	sw zero, 16(s3)
	sw zero, 20(s3)
	sw zero, 24(s3)
	sw zero, 28(s3)
	sw zero, 32(s3)
	sw zero, 36(s3)
	sw zero, 40(s3)
	sw zero, 44(s3)
	sw zero, 48(s3)
	sw zero, 52(s3)
	sw zero, 56(s3)
	sw zero, 60(s3)
	beq a1, zero, label3
label2:
	ld ra, 192(sp)
	ld s4, 200(sp)
	ld s5, 208(sp)
	ld s0, 216(sp)
	ld s2, 224(sp)
	ld s3, 232(sp)
	ld s1, 240(sp)
	addi sp, sp, 248
	ret
label3:
	addiw s4, a0, -1
	bge a2, a3, label4
	mv a1, a2
label97:
	sh2add a4, a1, s1
	lw a4, 0(a4)
	ble a0, zero, label99
	mv t0, zero
label101:
	addiw a5, t0, 4
	ble a0, a5, label104
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	j label101
label104:
	addiw a5, t0, 4
	ble a0, a5, label459
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	j label104
label459:
	mv a5, t0
label108:
	addiw t0, a5, 4
	ble a0, t0, label111
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	j label108
label111:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label99
	j label111
label99:
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	andi a5, a5, -16
	subw a4, a4, a5
	sh2add a4, a4, s3
	lw a5, 0(a4)
	addiw a5, a5, 1
	sw a5, 0(a4)
	addiw a1, a1, 1
	ble a3, a1, label4
	j label97
label4:
	sw a2, 128(sp)
	lw a1, 0(sp)
	addw a1, a2, a1
	sw a1, 64(sp)
	li a1, 1
label5:
	addiw a3, a1, -1
	sh2add a3, a3, s2
	lw a5, 0(a3)
	sh2add a3, a1, s0
	sw a5, 0(a3)
	sh2add a4, a1, s3
	lw t0, 0(a4)
	addw t0, a5, t0
	sh2add a5, a1, s2
	sw t0, 0(a5)
	sw t0, 4(a3)
	lw t1, 4(a4)
	addw t0, t0, t1
	sw t0, 4(a5)
	sw t0, 8(a3)
	lw t1, 8(a4)
	addw t0, t0, t1
	sw t0, 8(a5)
	sw t0, 12(a3)
	lw a3, 12(a4)
	addw a3, t0, a3
	sw a3, 12(a5)
	addiw a3, a1, 4
	li a4, 13
	bge a3, a4, label7
	mv a1, a3
	j label5
label7:
	addiw a1, a1, 3
	sh2add a1, a1, s2
	lw a5, 0(a1)
	sh2add a4, a3, s0
	sw a5, 0(a4)
	sh2add a3, a3, s3
	lw t0, 0(a3)
	addw a5, a5, t0
	sw a5, 4(a1)
	sw a5, 4(a4)
	lw t0, 4(a3)
	addw a5, a5, t0
	sw a5, 8(a1)
	sw a5, 8(a4)
	lw a3, 8(a3)
	addw a3, a5, a3
	sw a3, 12(a1)
	mv a1, zero
label8:
	li a3, 16
	bge a1, a3, label10
	sh2add a3, a1, s0
	lw a3, 0(a3)
	j label17
label10:
	sw a2, 128(sp)
	lw a0, 0(sp)
	addw a0, a2, a0
	sw a0, 64(sp)
	mv s5, zero
	j label11
label19:
	addiw a1, a1, 1
	j label8
label17:
	sh2add a4, a1, s2
	lw a4, 0(a4)
	bge a3, a4, label19
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label290
	mv a5, a3
	mv t1, zero
	j label21
label290:
	mv a5, a3
	j label36
label21:
	addiw t0, t1, 4
	ble a0, t0, label25
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	j label21
label36:
	slli t0, a5, 1
	srli t0, t0, 60
	add t0, a5, t0
	andi t0, t0, -16
	subw a5, a5, t0
	beq a1, a5, label38
	j label41
label38:
	sh2add a5, a4, s1
	sw a3, 0(a5)
	addiw a3, a4, 1
	sh2add a4, a1, s0
	sw a3, 0(a4)
	j label17
label41:
	sh2add a5, a5, s0
	lw t0, 0(a5)
	sh2add t1, t0, s1
	lw a4, 0(t1)
	sw a3, 0(t1)
	addiw a3, t0, 1
	sw a3, 0(a5)
	ble a0, zero, label334
	mv a3, a4
	mv t0, zero
	j label82
label334:
	mv a3, a4
label42:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	andi a5, a5, -16
	subw a3, a3, a5
	beq a1, a3, label339
	j label338
label82:
	addiw a5, t0, 4
	ble a0, a5, label85
	j label413
label338:
	mv a3, a4
	ble a0, zero, label342
	mv t0, zero
	j label65
label342:
	mv a4, a3
label46:
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	andi a5, a5, -16
	subw a4, a4, a5
	sh2add a5, a4, s0
	lw t0, 0(a5)
	sh2add t1, t0, s1
	lw a4, 0(t1)
	sw a3, 0(t1)
	addiw a3, t0, 1
	sw a3, 0(a5)
	ble a0, zero, label353
	mv a3, a4
	mv t0, zero
	j label48
label353:
	mv a3, a4
	j label63
label48:
	addiw a5, t0, 4
	ble a0, a5, label51
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	j label48
label63:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	andi a5, a5, -16
	subw a3, a3, a5
	beq a1, a3, label339
	j label338
label65:
	addiw a5, t0, 4
	ble a0, a5, label69
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	j label65
label69:
	addiw a5, t0, 4
	ble a0, a5, label393
	j label392
label393:
	mv a5, t0
label72:
	addiw t0, a5, 4
	ble a0, t0, label76
	j label397
label76:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label46
	j label76
label51:
	addiw a5, t0, 4
	ble a0, a5, label363
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	j label51
label363:
	mv a5, t0
label54:
	addiw t0, a5, 4
	ble a0, t0, label58
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	j label54
label58:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label63
	j label58
label392:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	j label69
label397:
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	j label72
label25:
	addiw t0, t1, 4
	ble a0, t0, label301
	j label300
label301:
	mv t0, t1
label28:
	addiw t1, t0, 4
	ble a0, t1, label31
	j label305
label31:
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label36
	j label31
label85:
	addiw a5, t0, 4
	ble a0, a5, label419
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	j label85
label419:
	mv a5, t0
label89:
	addiw t0, a5, 4
	ble a0, t0, label93
	j label424
label93:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label42
	j label93
label305:
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	sraiw a5, a5, 16
	mv t0, t1
	j label28
label300:
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	j label25
label424:
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	j label89
label413:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	j label82
label339:
	mv a3, a4
	sh2add a4, a1, s0
	lw a4, 0(a4)
	sh2add a5, a4, s1
	sw a3, 0(a5)
	addiw a3, a4, 1
	sh2add a4, a1, s0
	sw a3, 0(a4)
	j label17
label11:
	li a0, 16
	bge s5, a0, label2
	ble s5, zero, label14
	j label15
label14:
	sh2add a0, s5, s0
	lw a2, 0(a0)
	sh2add a0, s5, s2
	lw a3, 0(a0)
	mv a0, s4
	mv a1, s1
	jal radixSort
	addiw s5, s5, 1
	j label11
label15:
	addiw a0, s5, -1
	sh2add a0, a0, s2
	lw a0, 0(a0)
	sh2add a1, s5, s0
	sw a0, 0(a1)
	sh2add a1, s5, s3
	lw a1, 0(a1)
	addw a0, a0, a1
	sh2add a1, s5, s2
	sw a0, 0(a1)
	sh2add a0, s5, s0
	lw a2, 0(a0)
	sh2add a0, s5, s2
	lw a3, 0(a0)
	mv a0, s4
	mv a1, s1
	jal radixSort
	addiw s5, s5, 1
	j label11
.globl main
main:
	addi sp, sp, -32
	sd s2, 24(sp)
	sd s1, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
pcrel711:
	auipc a0, %pcrel_hi(a)
	addi s2, a0, %pcrel_lo(pcrel711)
	mv s1, s2
	mv a0, s2
	jal getarray
	mv s0, a0
	li a0, 90
	jal _sysy_starttime
	li a0, 8
	mv a1, s2
	mv a2, zero
	mv a3, s0
	jal radixSort
	ble s0, zero, label627
	mv a0, zero
	mv a2, zero
	j label609
label627:
	mv s0, zero
	j label620
label609:
	addiw a1, a0, 4
	ble s0, a1, label632
	j label612
label632:
	mv a1, a2
	j label613
label612:
	sh2add a3, a0, s1
	lw t0, 0(a3)
	lw a5, 4(a3)
	addiw a4, a0, 3
	remw a5, a5, a4
	addiw t1, a0, 1
	mulw t1, a5, t1
	addiw a5, a0, 2
	remw t0, t0, a5
	mulw t0, a0, t0
	addw a2, a2, t0
	addw a2, t1, a2
	lw t0, 8(a3)
	remw t0, t0, a1
	mulw a5, a5, t0
	addw a2, a2, a5
	lw a3, 12(a3)
	addiw a0, a0, 5
	remw a0, a3, a0
	mulw a0, a4, a0
	addw a2, a2, a0
	mv a0, a1
	j label609
label613:
	addiw a2, a0, 4
	ble s0, a2, label617
	sh2add a3, a0, s1
	lw t0, 0(a3)
	lw a5, 4(a3)
	addiw a4, a0, 3
	remw a5, a5, a4
	addiw t1, a0, 1
	mulw t1, a5, t1
	addiw a5, a0, 2
	remw t0, t0, a5
	mulw t0, a0, t0
	addw a1, a1, t0
	addw a1, t1, a1
	lw t0, 8(a3)
	remw t0, t0, a2
	mulw a5, a5, t0
	addw a1, a1, a5
	lw a3, 12(a3)
	addiw a0, a0, 5
	remw a0, a3, a0
	mulw a0, a4, a0
	addw a1, a1, a0
	mv a0, a2
	j label613
label617:
	sh2add a2, a0, s1
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	ble s0, a0, label699
	j label617
label699:
	mv s0, a1
label620:
	li a0, 102
	jal _sysy_stoptime
	subw a0, zero, s0
	max a0, a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
