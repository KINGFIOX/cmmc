.data
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
	addi sp, sp, -104
	sd s1, 96(sp)
	sd s6, 88(sp)
	sd s2, 80(sp)
	sd s3, 72(sp)
	sd s0, 64(sp)
	sd s5, 56(sp)
	sd s4, 48(sp)
	sd s7, 40(sp)
	sd s8, 32(sp)
	sd s9, 24(sp)
	sd s10, 16(sp)
	sd s11, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s2, a0
	jal getint
	mv s3, a0
pcrel937:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel937)
	mv s0, a0
	jal getarray
pcrel938:
	auipc a0, %pcrel_hi(kernelid)
	addi a0, a0, %pcrel_lo(pcrel938)
	mv s4, a0
	jal getarray
	mv s5, a0
	li a0, 109
	jal _sysy_starttime
pcrel939:
	auipc a0, %pcrel_hi(b)
	addi a2, a0, %pcrel_lo(pcrel939)
	mulw s6, s2, s3
	ble s5, zero, label79
	mv a3, zero
	slli a0, zero, 2
	add a0, s4, a0
	lw t2, 0(a0)
	mv a4, zero
	mulw t3, zero, s3
	mv a5, zero
	srliw a0, s1, 31
	add a0, s1, a0
	sraiw a1, a0, 1
	subw a0, zero, a1
	subw t1, zero, a1
	addw t4, zero, a1
	addw t5, zero, a1
	mv t6, zero
	mv a1, t1
	bge a0, zero, label14
	mv a6, zero
	bne t2, zero, label47
	addw t6, zero, zero
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
label697:
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	j label860
label15:
	blt a0, s2, label16
	mv a6, zero
	bne t2, zero, label47
	addw t6, t6, zero
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
label860:
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
label864:
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	j label864
label21:
	bge t6, zero, label29
	li a6, 1073741824
	addw t6, t6, a6
	bge t6, zero, label29
	addw t6, t6, a6
	bge t6, zero, label29
	addw t6, t6, a6
	bge t6, zero, label29
	addw t6, t6, a6
	bge t6, zero, label29
	addw t6, t6, a6
	bge t6, zero, label29
	addw t6, t6, a6
	bge t6, zero, label29
	addw t6, t6, a6
	bge t6, zero, label29
	addw t6, t6, a6
	bge t6, zero, label29
	addw t6, t6, a6
	bge t6, zero, label29
	j label862
label29:
	addiw a1, a1, 1
	blt a1, t4, label11
	addiw a0, a0, 1
	blt a0, t5, label8
	addw a0, a5, t3
	slliw a0, a0, 2
	add a0, a2, a0
	sw t6, 0(a0)
	addiw a5, a5, 1
	blt a5, s3, label6
	addiw a4, a4, 1
	blt a4, s2, label4
	ble s6, zero, label46
	mv a0, zero
	addiw a1, zero, 16
	bge a1, s6, label38
	j label37
label862:
	li a6, 1073741824
	addw t6, t6, a6
	bge t6, zero, label29
label863:
	li a6, 1073741824
	addw t6, t6, a6
	bge t6, zero, label29
	j label863
label16:
	blt a1, s3, label17
	mv a6, zero
	bne t2, zero, label47
	addw t6, t6, zero
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	j label860
label17:
	mulw a6, a0, s3
	addw a6, a1, a6
	slliw a6, a6, 2
	add a6, s0, a6
	lw a6, 0(a6)
	bne t2, zero, label47
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	j label860
label43:
	slliw a1, a0, 2
	add a1, s0, a1
	slliw a4, a0, 2
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a1)
	addiw a0, a0, 1
	bge a0, s6, label46
	slliw a1, a0, 2
	add a1, s0, a1
	slliw a4, a0, 2
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a1)
	addiw a0, a0, 1
	bge a0, s6, label46
	slliw a1, a0, 2
	add a1, s0, a1
	slliw a4, a0, 2
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a1)
	addiw a0, a0, 1
	bge a0, s6, label46
	slliw a1, a0, 2
	add a1, s0, a1
	slliw a4, a0, 2
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a1)
	addiw a0, a0, 1
	bge a0, s6, label46
	slliw a1, a0, 2
	add a1, s0, a1
	slliw a4, a0, 2
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a1)
	addiw a0, a0, 1
	bge a0, s6, label46
	slliw a1, a0, 2
	add a1, s0, a1
	slliw a4, a0, 2
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a1)
	addiw a0, a0, 1
	bge a0, s6, label46
	slliw a1, a0, 2
	add a1, s0, a1
	slliw a4, a0, 2
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a1)
	addiw a0, a0, 1
	bge a0, s6, label46
	slliw a1, a0, 2
	add a1, s0, a1
	slliw a4, a0, 2
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a1)
	addiw a0, a0, 1
	bge a0, s6, label46
	slliw a1, a0, 2
	add a1, s0, a1
	slliw a4, a0, 2
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a1)
	addiw a0, a0, 1
	bge a0, s6, label46
	slliw a1, a0, 2
	add a1, s0, a1
	slliw a4, a0, 2
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a1)
	addiw a0, a0, 1
	bge a0, s6, label46
	j label871
label46:
	addiw a3, a3, 1
	bge a3, s5, label79
	slli a0, a3, 2
	add a0, s4, a0
	lw t2, 0(a0)
	mv a4, zero
	mulw t3, zero, s3
	mv a5, zero
	srliw a0, s1, 31
	add a0, s1, a0
	sraiw a1, a0, 1
	subw a0, zero, a1
	subw t1, zero, a1
	addw t4, zero, a1
	addw t5, zero, a1
	mv t6, zero
	mv a1, t1
	bge a0, zero, label14
	mv a6, zero
	bne t2, zero, label47
	addw t6, zero, zero
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	j label697
label47:
	li a7, 1
	bne t2, a7, label48
	li s7, 1
	mv a7, zero
	li s8, 1073741824
	bge s7, s8, label418
	j label74
label4:
	mulw t3, a4, s3
	mv a5, zero
label6:
	srliw a0, s1, 31
	add a0, s1, a0
	sraiw a1, a0, 1
	subw a0, a4, a1
	subw t1, a5, a1
	addw t4, a5, a1
	addw t5, a4, a1
	mv t6, zero
label8:
	mv a1, t1
label11:
	bge a0, zero, label14
	mv a6, zero
	bne t2, zero, label47
	addw t6, t6, zero
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	j label697
label14:
	bge a1, zero, label15
	mv a6, zero
	bne t2, zero, label47
	addw t6, t6, zero
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	li a6, -1073741824
	addw t6, t6, a6
	li a6, 1073741824
	ble t6, a6, label21
	j label860
label74:
	divw s8, t6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s10, s9, 1
	li s9, 2
	mulw s10, s10, s9
	subw s8, s8, s10
	divw s10, a6, s7
	srliw s11, s10, 31
	add s11, s10, s11
	sraiw s11, s11, 1
	mulw s9, s11, s9
	subw s9, s10, s9
	bne s8, s9, label77
	slliw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label418
	j label74
label77:
	slliw a7, a7, 1
	addiw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label418
	j label74
label418:
	mv t6, a7
	addiw a1, a1, 1
	blt a1, t4, label11
	addiw a0, a0, 1
	blt a0, t5, label8
	addw a0, a5, t3
	slliw a0, a0, 2
	add a0, a2, a0
	sw a7, 0(a0)
	addiw a5, a5, 1
	blt a5, s3, label6
	addiw a4, a4, 1
	blt a4, s2, label4
	ble s6, zero, label46
	mv a0, zero
	addiw a1, zero, 16
	bge a1, s6, label38
	j label37
label48:
	li a7, 2
	bne t2, a7, label49
	ble t6, a6, label70
	addiw a1, a1, 1
	blt a1, t4, label11
	addiw a0, a0, 1
	blt a0, t5, label8
	addw a0, a5, t3
	slliw a0, a0, 2
	add a0, a2, a0
	sw t6, 0(a0)
	addiw a5, a5, 1
	blt a5, s3, label6
	addiw a4, a4, 1
	blt a4, s2, label4
	ble s6, zero, label46
	mv a0, zero
	addiw a1, zero, 16
	bge a1, s6, label38
	j label37
label49:
	li a7, 3
	bne t2, a7, label59
	li s7, 1
	mv a7, zero
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, t6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw a7, zero, 1
	addiw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, t6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw a7, a7, 1
	addiw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, t6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw a7, a7, 1
	addiw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, t6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw a7, a7, 1
	addiw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	j label808
label370:
	mv t6, a7
	addiw a1, a1, 1
	blt a1, t4, label11
	addiw a0, a0, 1
	blt a0, t5, label8
	addw a0, a5, t3
	slliw a0, a0, 2
	add a0, a2, a0
	sw a7, 0(a0)
	addiw a5, a5, 1
	blt a5, s3, label6
	addiw a4, a4, 1
	blt a4, s2, label4
	ble s6, zero, label46
	mv a0, zero
	addiw a1, zero, 16
	bge a1, s6, label38
	j label37
label808:
	divw s8, t6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	j label843
label59:
	li a7, 4
	bne t2, a7, label390
	li s7, 1
	mv a7, zero
	li s8, 1073741824
	bge s7, s8, label394
	divw s8, t6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	slliw a7, zero, 1
	addiw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label394
	divw s8, t6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	slliw a7, a7, 1
	addiw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label394
	divw s8, t6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	j label779
label390:
	mv t6, zero
	addiw a1, a1, 1
	blt a1, t4, label11
	addiw a0, a0, 1
	blt a0, t5, label8
	addw a0, a5, t3
	slliw a0, a0, 2
	add a0, a2, a0
	sw zero, 0(a0)
	addiw a5, a5, 1
	blt a5, s3, label6
	addiw a4, a4, 1
	blt a4, s2, label4
	ble s6, zero, label46
	mv a0, zero
	addiw a1, zero, 16
	bge a1, s6, label38
	j label37
label779:
	slliw a7, a7, 1
	addiw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label394
	j label818
label843:
	slliw a7, a7, 1
	addiw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
label878:
	divw s8, t6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	j label843
label871:
	slliw a1, a0, 2
	add a1, s0, a1
	slliw a4, a0, 2
	add a4, a2, a4
	lw a4, 0(a4)
	sw a4, 0(a1)
	addiw a0, a0, 1
	bge a0, s6, label46
	j label871
label56:
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label57
	slliw a7, a7, 1
	addiw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, t6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw a7, a7, 1
	addiw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, t6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw a7, a7, 1
	addiw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, t6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw a7, a7, 1
	addiw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, t6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw a7, a7, 1
	addiw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	j label878
label57:
	slliw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, t6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw a7, a7, 1
	addiw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, t6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw a7, a7, 1
	addiw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, t6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw a7, a7, 1
	addiw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, t6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	slliw a7, a7, 1
	addiw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label370
	divw s8, t6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label56
	j label843
label818:
	divw s8, t6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	j label888
label68:
	slliw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label394
	divw s8, t6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	li s10, 2
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	slliw a7, a7, 1
	addiw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label394
	divw s8, t6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	slliw a7, a7, 1
	addiw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label394
	divw s8, t6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	divw s8, a6, s7
	srliw s9, s8, 31
	add s9, s8, s9
	sraiw s9, s9, 1
	mulw s9, s9, s10
	subw s8, s8, s9
	li s9, 1
	bne s8, s9, label68
	slliw a7, a7, 1
	addiw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label394
	j label818
label394:
	mv t6, a7
	addiw a1, a1, 1
	blt a1, t4, label11
	addiw a0, a0, 1
	blt a0, t5, label8
	addw a0, a5, t3
	slliw a0, a0, 2
	add a0, a2, a0
	sw a7, 0(a0)
	addiw a5, a5, 1
	blt a5, s3, label6
	addiw a4, a4, 1
	blt a4, s2, label4
	ble s6, zero, label46
	mv a0, zero
	addiw a1, zero, 16
	bge a1, s6, label38
	j label37
label888:
	slliw a7, a7, 1
	addiw a7, a7, 1
	slliw s7, s7, 1
	li s8, 1073741824
	bge s7, s8, label394
	j label818
label37:
	slliw a4, a0, 2
	add a4, s0, a4
	slliw a0, a0, 2
	add a0, a2, a0
	lw a5, 0(a0)
	sw a5, 0(a4)
	lw a5, 4(a0)
	sw a5, 4(a4)
	lw a5, 8(a0)
	sw a5, 8(a4)
	lw a5, 12(a0)
	sw a5, 12(a4)
	lw a5, 16(a0)
	sw a5, 16(a4)
	lw a5, 20(a0)
	sw a5, 20(a4)
	lw a5, 24(a0)
	sw a5, 24(a4)
	lw a5, 28(a0)
	sw a5, 28(a4)
	lw a5, 32(a0)
	sw a5, 32(a4)
	lw a5, 36(a0)
	sw a5, 36(a4)
	lw a5, 40(a0)
	sw a5, 40(a4)
	lw a5, 44(a0)
	sw a5, 44(a4)
	lw a5, 48(a0)
	sw a5, 48(a4)
	lw a5, 52(a0)
	sw a5, 52(a4)
	lw a5, 56(a0)
	sw a5, 56(a4)
	lw a0, 60(a0)
	sw a0, 60(a4)
	mv a0, a1
	addiw a1, a1, 16
	bge a1, s6, label38
	j label37
label38:
	addiw a1, a0, 16
	bge a1, s6, label41
label40:
	slliw a4, a0, 2
	add a4, s0, a4
	slliw a0, a0, 2
	add a0, a2, a0
	lw a5, 0(a0)
	sw a5, 0(a4)
	lw a5, 4(a0)
	sw a5, 4(a4)
	lw a5, 8(a0)
	sw a5, 8(a4)
	lw a5, 12(a0)
	sw a5, 12(a4)
	lw a5, 16(a0)
	sw a5, 16(a4)
	lw a5, 20(a0)
	sw a5, 20(a4)
	lw a5, 24(a0)
	sw a5, 24(a4)
	lw a5, 28(a0)
	sw a5, 28(a4)
	lw a5, 32(a0)
	sw a5, 32(a4)
	lw a5, 36(a0)
	sw a5, 36(a4)
	lw a5, 40(a0)
	sw a5, 40(a4)
	lw a5, 44(a0)
	sw a5, 44(a4)
	lw a5, 48(a0)
	sw a5, 48(a4)
	lw a5, 52(a0)
	sw a5, 52(a4)
	lw a5, 56(a0)
	sw a5, 56(a4)
	lw a0, 60(a0)
	sw a0, 60(a4)
	mv a0, a1
	addiw a1, a1, 16
	bge a1, s6, label41
	j label40
label70:
	mv t6, a6
	addiw a1, a1, 1
	blt a1, t4, label11
	addiw a0, a0, 1
	blt a0, t5, label8
	addw a0, a5, t3
	slliw a0, a0, 2
	add a0, a2, a0
	sw a6, 0(a0)
	addiw a5, a5, 1
	blt a5, s3, label6
	addiw a4, a4, 1
	blt a4, s2, label4
	ble s6, zero, label46
	mv a0, zero
	addiw a1, zero, 16
	bge a1, s6, label38
	j label37
label41:
	addiw a1, a0, 16
	bge a1, s6, label43
label45:
	slliw a4, a0, 2
	add a4, s0, a4
	slliw a0, a0, 2
	add a0, a2, a0
	lw a5, 0(a0)
	sw a5, 0(a4)
	lw a5, 4(a0)
	sw a5, 4(a4)
	lw a5, 8(a0)
	sw a5, 8(a4)
	lw a5, 12(a0)
	sw a5, 12(a4)
	lw a5, 16(a0)
	sw a5, 16(a4)
	lw a5, 20(a0)
	sw a5, 20(a4)
	lw a5, 24(a0)
	sw a5, 24(a4)
	lw a5, 28(a0)
	sw a5, 28(a4)
	lw a5, 32(a0)
	sw a5, 32(a4)
	lw a5, 36(a0)
	sw a5, 36(a4)
	lw a5, 40(a0)
	sw a5, 40(a4)
	lw a5, 44(a0)
	sw a5, 44(a4)
	lw a5, 48(a0)
	sw a5, 48(a4)
	lw a5, 52(a0)
	sw a5, 52(a4)
	lw a5, 56(a0)
	sw a5, 56(a4)
	lw a0, 60(a0)
	sw a0, 60(a4)
	mv a0, a1
	addiw a1, a1, 16
	bge a1, s6, label43
	j label45
label79:
	li a0, 116
	jal _sysy_stoptime
	mv a0, s6
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s11, 8(sp)
	ld s10, 16(sp)
	ld s9, 24(sp)
	ld s8, 32(sp)
	ld s7, 40(sp)
	ld s4, 48(sp)
	ld s5, 56(sp)
	ld s0, 64(sp)
	ld s3, 72(sp)
	ld s2, 80(sp)
	ld s6, 88(sp)
	ld s1, 96(sp)
	addi sp, sp, 104
	ret
