.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
buffer:
	.4byte	0
	.zero	131068
.text
.globl main
main:
	addi sp, sp, -416
	sd s0, 408(sp)
	sd s5, 400(sp)
	sd s1, 392(sp)
	sd s6, 384(sp)
	sd s2, 376(sp)
	sd s3, 368(sp)
	sd s4, 360(sp)
	sd s7, 344(sp)
	sd ra, 352(sp)
	addi s0, sp, 0
	addi s1, sp, 320
	jal getint
	mv s2, a0
	jal getint
	mv s3, a0
	li a0, 161
	jal _sysy_starttime
	sw zero, 320(sp)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	sw zero, 16(s1)
pcrel720:
	auipc a0, %pcrel_hi(buffer)
	addi a0, a0, %pcrel_lo(pcrel720)
	mv a3, s2
	mv a1, s3
	ble s3, zero, label5
label70:
	mv a2, zero
label6:
	li a4, 8193
	mulw a3, a3, a4
	slli a4, a3, 1
	srli a4, a4, 47
	add a4, a3, a4
	sraiw a4, a4, 17
	addw a4, a3, a4
	li a3, 270369
	mulw a5, a4, a3
	slli t1, a5, 1
	srli t1, t1, 47
	add t1, a5, t1
	sraiw t1, t1, 17
	addw a5, a5, t1
	mulw t1, a5, a3
	slli t2, t1, 1
	srli t2, t2, 47
	add t2, t1, t2
	sraiw t2, t2, 17
	addw t3, t1, t2
	mulw a3, t3, a3
	slli t1, a3, 1
	srli t1, t1, 47
	add t1, a3, t1
	sraiw t1, t1, 17
	addw a3, a3, t1
	li t2, 33
	mulw a3, a3, t2
	slli t1, a3, 1
	srli t1, t1, 56
	add t1, a3, t1
	andi t1, t1, -256
	subw t1, a3, t1
	mulw t3, t3, t2
	slli t4, t3, 1
	srli t4, t4, 56
	add t4, t3, t4
	andi t4, t4, -256
	subw t3, t3, t4
	mulw a5, a5, t2
	slli t4, a5, 1
	srli t4, t4, 56
	add t4, a5, t4
	andi t4, t4, -256
	subw a5, a5, t4
	mulw a4, a4, t2
	slli t2, a4, 1
	srli t2, t2, 56
	add t2, a4, t2
	andi t2, t2, -256
	subw t2, a4, t2
	sh2add a4, a2, a0
	sw t2, 0(a4)
	sw a5, 4(a4)
	sw t3, 8(a4)
	sw t1, 12(a4)
	addiw a2, a2, 4
	li a4, 32000
	bge a2, a4, label9
	j label6
label9:
	li a2, 128000
	add a2, a0, a2
	li a4, 128
	sw a4, 0(a2)
	li a2, 32001
	sh2add a4, a2, a0
	sw zero, 0(a4)
	addiw a4, a2, 1
	slli a5, a4, 1
	srli a5, a5, 58
	add a5, a4, a5
	andi a5, a5, -64
	subw a5, a4, a5
	li t1, 60
	beq a5, t1, label12
	j label109
label12:
	sh2add a4, a4, a0
	sw zero, 0(a4)
	sw zero, 4(a4)
	li a5, 125
	sw a5, 8(a4)
	sw zero, 12(a4)
	addiw a5, a2, 5
	mv a4, zero
	j label13
label56:
	lw t3, 320(sp)
	addw a5, t4, t3
	subw t3, t3, a5
	addw t3, t4, t3
	subw a5, t3, a5
	sw a5, 320(sp)
	lw t3, 4(s1)
	addw a5, t2, t3
	subw t3, t3, a5
	addw t2, t2, t3
	subw a5, t2, a5
	sw a5, 4(s1)
	lw t2, 8(s1)
	addw a5, t1, t2
	subw t2, t2, a5
	addw t1, t1, t2
	subw a5, t1, a5
	sw a5, 8(s1)
	lw t1, 12(s1)
	addw a5, a4, t1
	subw t1, t1, a5
	addw a4, a4, t1
	subw a4, a4, a5
	sw a4, 12(s1)
	lw a5, 16(s1)
	addw a4, a2, a5
	subw a5, a5, a4
	addw a2, a2, a5
	subw a2, a2, a4
	sw a2, 16(s1)
	addiw a1, a1, -1
	ble a1, zero, label5
	j label70
label109:
	mv a2, a4
	sh2add a4, a4, a0
	sw zero, 0(a4)
	addiw a4, a2, 1
	slli a5, a4, 1
	srli a5, a5, 58
	add a5, a4, a5
	andi a5, a5, -64
	subw a5, a4, a5
	li t1, 60
	beq a5, t1, label12
	j label109
label13:
	sh2add a2, a4, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	sw zero, 16(a2)
	sw zero, 20(a2)
	sw zero, 24(a2)
	sw zero, 28(a2)
	sw zero, 32(a2)
	sw zero, 36(a2)
	sw zero, 40(a2)
	sw zero, 44(a2)
	sw zero, 48(a2)
	sw zero, 52(a2)
	sw zero, 56(a2)
	sw zero, 60(a2)
	addi a4, a4, 16
	li a2, 80
	bge a4, a2, label138
	j label13
label138:
	mv t6, zero
	mv t5, zero
	mv t3, zero
	li a2, -1009589776
	li a4, 271733878
	li t1, -1732584194
	li t2, -271733879
	li t4, 1732584193
	bge zero, a5, label56
label141:
	mv a6, zero
label24:
	sh2add a7, a6, t3
	sh2add a7, a7, a0
	lw s2, 0(a7)
	lw s3, 4(a7)
	slliw s3, s3, 16
	slliw s2, s2, 24
	addw s2, s3, s2
	lw s3, 8(a7)
	slliw s3, s3, 8
	addw s2, s2, s3
	lw a7, 12(a7)
	addw s2, s2, a7
	sh2add a7, a6, s0
	sw s2, 0(a7)
	addiw s2, a6, 1
	sh2add s2, s2, t3
	sh2add s2, s2, a0
	lw s3, 0(s2)
	lw s4, 4(s2)
	slliw s4, s4, 16
	slliw s3, s3, 24
	addw s3, s4, s3
	lw s4, 8(s2)
	slliw s4, s4, 8
	addw s3, s3, s4
	lw s2, 12(s2)
	addw s2, s3, s2
	sw s2, 4(a7)
	addiw s2, a6, 2
	sh2add s2, s2, t3
	sh2add s2, s2, a0
	lw s3, 0(s2)
	lw s4, 4(s2)
	slliw s4, s4, 16
	slliw s3, s3, 24
	addw s3, s4, s3
	lw s4, 8(s2)
	slliw s4, s4, 8
	addw s3, s3, s4
	lw s2, 12(s2)
	addw s2, s3, s2
	sw s2, 8(a7)
	addiw s2, a6, 3
	sh2add s2, s2, t3
	sh2add s2, s2, a0
	lw s3, 0(s2)
	lw s4, 4(s2)
	slliw s4, s4, 16
	slliw s3, s3, 24
	addw s3, s4, s3
	lw s4, 8(s2)
	slliw s4, s4, 8
	addw s3, s3, s4
	lw s2, 12(s2)
	addw s2, s3, s2
	sw s2, 12(a7)
	addiw a7, a6, 4
	li a6, 16
	bge a7, a6, label26
	mv a6, a7
	j label24
label26:
	li a6, 80
	bge a7, a6, label227
	addiw a6, a7, 4
	li s2, 80
	bge a6, s2, label29
	j label34
label227:
	mv s4, t6
	mv s5, t5
	mv t5, zero
	mv s3, a2
	mv t6, a4
	mv a6, t1
	mv s2, t2
	mv a7, t4
	li s6, 80
	bge zero, s6, label44
	li s6, 20
	bge zero, s6, label49
	j label55
label44:
	addw t4, t4, a7
	addw t2, t2, s2
	addw t1, t1, a6
	addw a4, a4, t6
	addw a2, a2, s3
	addiw t3, t3, 64
	mv t6, s4
	mv t5, s5
	bge t3, a5, label56
	j label141
label55:
	addw s4, t6, a6
	addw s4, s2, s4
	li s5, -1
	subw s5, s5, s2
	addw s4, s4, s5
	addw s6, a6, s2
	subw s6, s6, s4
	addw s5, t6, s5
	addw s5, s6, s5
	subw s6, s5, s4
	addw s5, s4, s6
	subw s6, s6, s5
	addw s4, s4, s6
	subw s5, s4, s5
	li s4, 1518500249
label46:
	slliw s6, a7, 5
	addw s3, s3, s6
	addw s3, s4, s3
	addw s3, s5, s3
	slli s6, a7, 1
	srli s6, s6, 59
	add s6, a7, s6
	andi s6, s6, -32
	subw s6, a7, s6
	addw s3, s3, s6
	sh2add s6, t5, s0
	lw s6, 0(s6)
	addw s6, s3, s6
	slliw s3, s2, 30
	slli s7, s2, 1
	srli s7, s7, 34
	add s7, s2, s7
	sraiw s7, s7, 30
	slliw s7, s7, 30
	subw s2, s2, s7
	addw s7, s3, s2
	addiw t5, t5, 1
	mv s3, t6
	mv s2, a7
	mv t6, a6
	mv a7, s6
	mv a6, s7
	li s6, 80
	bge t5, s6, label44
	li s6, 20
	bge t5, s6, label49
	j label55
label712:
	addw s4, a6, s2
	subw s5, s2, s4
	addw s5, a6, s5
	subw s5, s5, s4
	addw s4, t6, s5
	subw s5, s5, s4
	addw s5, t6, s5
	subw s5, s5, s4
	li s4, 1859775361
	j label46
label49:
	li s6, 40
	bge t5, s6, label50
	j label712
label29:
	addiw a6, a7, 4
	li s2, 80
	bge a6, s2, label237
	j label33
label237:
	mv a6, a7
label31:
	sh2add a7, a6, s0
	lw s3, -12(a7)
	lw s2, -32(a7)
	addw s4, s3, s2
	subw s3, s3, s4
	addw s2, s2, s3
	subw s2, s2, s4
	lw s4, -56(a7)
	addw s3, s2, s4
	subw s2, s2, s3
	addw s2, s4, s2
	subw s3, s2, s3
	lw s2, -64(a7)
	addw s4, s3, s2
	subw s3, s3, s4
	addw s2, s2, s3
	subw s2, s2, s4
	srliw s3, s2, 31
	add s3, s2, s3
	andi s3, s3, -2
	subw s3, s2, s3
	sh1add s2, s2, s3
	sw s2, 0(a7)
	addiw a6, a6, 1
	li a7, 80
	bge a6, a7, label267
	j label31
label267:
	mv s4, t6
	mv s5, t5
	mv t5, zero
	mv s3, a2
	mv t6, a4
	mv a6, t1
	mv s2, t2
	mv a7, t4
	li s6, 80
	bge zero, s6, label44
	li s6, 20
	bge zero, s6, label49
	j label55
label50:
	li s6, 60
	bge t5, s6, label52
	addw s4, t6, a6
	sh1add s5, s2, s4
	addw s6, a6, s2
	subw s6, s6, s5
	addw s7, t6, s2
	addw s6, s6, s7
	subw s7, s6, s5
	addw s6, s5, s7
	subw s7, s7, s6
	addw s5, s5, s7
	subw s6, s5, s6
	addw s5, s4, s6
	subw s6, s6, s5
	addw s4, s4, s6
	subw s6, s4, s5
	addw s4, s5, s6
	subw s6, s6, s4
	addw s5, s5, s6
	subw s5, s5, s4
	li s4, -1894007588
	j label46
label52:
	li s6, 80
	bge t5, s6, label46
	j label714
label33:
	sh2add a7, a7, s0
	lw s2, -12(a7)
	lw s4, -32(a7)
	addw s3, s2, s4
	subw s2, s2, s3
	addw s2, s4, s2
	subw s3, s2, s3
	lw s2, -56(a7)
	addw s4, s3, s2
	subw s3, s3, s4
	addw s3, s2, s3
	subw s4, s3, s4
	lw s5, -64(a7)
	addw s3, s4, s5
	subw s4, s4, s3
	addw s4, s5, s4
	subw s3, s4, s3
	srliw s4, s3, 31
	add s4, s3, s4
	andi s4, s4, -2
	subw s4, s3, s4
	sh1add s4, s3, s4
	sw s4, 0(a7)
	lw s5, -8(a7)
	lw s3, -28(a7)
	addw s6, s5, s3
	subw s5, s5, s6
	addw s3, s3, s5
	subw s5, s3, s6
	lw s3, -52(a7)
	addw s6, s5, s3
	subw s5, s5, s6
	addw s5, s3, s5
	subw s7, s5, s6
	lw s5, -60(a7)
	addw s6, s7, s5
	subw s7, s7, s6
	addw s5, s5, s7
	subw s5, s5, s6
	srliw s6, s5, 31
	add s6, s5, s6
	andi s6, s6, -2
	subw s6, s5, s6
	sh1add s5, s5, s6
	sw s5, 4(a7)
	lw s7, -4(a7)
	lw s6, -24(a7)
	addw s5, s7, s6
	subw s7, s7, s5
	addw s6, s6, s7
	subw s5, s6, s5
	lw s6, -48(a7)
	addw s7, s5, s6
	subw s5, s5, s7
	addw s5, s6, s5
	subw s6, s5, s7
	addw s5, s2, s6
	subw s6, s6, s5
	addw s2, s2, s6
	subw s2, s2, s5
	srliw s5, s2, 31
	add s5, s2, s5
	andi s5, s5, -2
	subw s5, s2, s5
	sh1add s2, s2, s5
	sw s2, 8(a7)
	lw s5, -20(a7)
	addw s2, s4, s5
	subw s4, s4, s2
	addw s4, s5, s4
	subw s2, s4, s2
	lw s4, -44(a7)
	addw s5, s2, s4
	subw s2, s2, s5
	addw s2, s4, s2
	subw s4, s2, s5
	addw s2, s3, s4
	subw s4, s4, s2
	addw s3, s3, s4
	subw s2, s3, s2
	srliw s3, s2, 31
	add s3, s2, s3
	andi s3, s3, -2
	subw s3, s2, s3
	sh1add s2, s2, s3
	sw s2, 12(a7)
	mv a7, a6
	addiw a6, a6, 4
	li s2, 80
	bge a6, s2, label237
	j label33
label34:
	sh2add a7, a7, s0
	lw s3, -12(a7)
	lw s4, -32(a7)
	addw s2, s3, s4
	subw s3, s3, s2
	addw s3, s4, s3
	subw s3, s3, s2
	lw s2, -56(a7)
	addw s4, s3, s2
	subw s3, s3, s4
	addw s3, s2, s3
	subw s5, s3, s4
	lw s4, -64(a7)
	addw s3, s5, s4
	subw s5, s5, s3
	addw s4, s4, s5
	subw s3, s4, s3
	srliw s4, s3, 31
	add s4, s3, s4
	andi s4, s4, -2
	subw s4, s3, s4
	sh1add s4, s3, s4
	sw s4, 0(a7)
	lw s6, -8(a7)
	lw s3, -28(a7)
	addw s5, s6, s3
	subw s6, s6, s5
	addw s3, s3, s6
	subw s5, s3, s5
	lw s3, -52(a7)
	addw s6, s5, s3
	subw s5, s5, s6
	addw s5, s3, s5
	subw s7, s5, s6
	lw s6, -60(a7)
	addw s5, s7, s6
	subw s7, s7, s5
	addw s6, s6, s7
	subw s5, s6, s5
	srliw s6, s5, 31
	add s6, s5, s6
	andi s6, s6, -2
	subw s6, s5, s6
	sh1add s5, s5, s6
	sw s5, 4(a7)
	lw s7, -4(a7)
	lw s6, -24(a7)
	addw s5, s7, s6
	subw s7, s7, s5
	addw s6, s6, s7
	subw s7, s6, s5
	lw s6, -48(a7)
	addw s5, s7, s6
	subw s7, s7, s5
	addw s6, s6, s7
	subw s6, s6, s5
	addw s5, s2, s6
	subw s6, s6, s5
	addw s2, s2, s6
	subw s2, s2, s5
	srliw s5, s2, 31
	add s5, s2, s5
	andi s5, s5, -2
	subw s5, s2, s5
	sh1add s2, s2, s5
	sw s2, 8(a7)
	lw s5, -20(a7)
	addw s2, s4, s5
	subw s4, s4, s2
	addw s4, s5, s4
	subw s5, s4, s2
	lw s4, -44(a7)
	addw s2, s5, s4
	subw s5, s5, s2
	addw s4, s4, s5
	subw s4, s4, s2
	addw s2, s3, s4
	subw s4, s4, s2
	addw s3, s3, s4
	subw s2, s3, s2
	srliw s3, s2, 31
	add s3, s2, s3
	andi s3, s3, -2
	subw s3, s2, s3
	sh1add s2, s2, s3
	sw s2, 12(a7)
	mv a7, a6
	addiw a6, a6, 4
	li s2, 80
	bge a6, s2, label29
	j label34
label714:
	addw s4, a6, s2
	subw s5, s2, s4
	addw s5, a6, s5
	subw s5, s5, s4
	addw s4, t6, s5
	subw s5, s5, s4
	addw s5, t6, s5
	subw s5, s5, s4
	li s4, -899497722
	j label46
label5:
	li a0, 184
	jal _sysy_stoptime
	li a0, 5
	mv a1, s1
	jal putarray
	mv a0, zero
	ld ra, 352(sp)
	ld s7, 344(sp)
	ld s4, 360(sp)
	ld s3, 368(sp)
	ld s2, 376(sp)
	ld s6, 384(sp)
	ld s1, 392(sp)
	ld s5, 400(sp)
	ld s0, 408(sp)
	addi sp, sp, 416
	ret
