.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
temp:
	.zero	8388608
.align 4
a:
	.zero	8388608
.align 4
b:
	.zero	8388608
.text
multiply:
	addi sp, sp, -32
	sd s0, 24(sp)
	mv s0, a0
	sd s1, 16(sp)
	mv s1, a1
	sd s2, 8(sp)
	sd ra, 0(sp)
	bne a1, zero, label4
	mv a0, zero
label2:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
label4:
	li a1, 1
	bne s1, a1, label5
	li a2, 288737297
	mul a0, s0, a2
	li a2, 998244353
	srli a3, a0, 63
	srai a1, a0, 58
	add a0, a3, a1
	mulw a1, a0, a2
	subw a0, s0, a1
	j label2
label5:
	addiw a0, s1, 1
	li a1, 3
	bgeu a0, a1, label9
	mv a0, zero
	j label6
label9:
	addiw a1, s1, -2
	srliw a2, s1, 31
	add a0, s1, a2
	li a2, 2
	sraiw s2, a0, 1
	bgeu a1, a2, label11
	j label127
label6:
	slliw a0, a0, 1
	li a3, 288737297
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 58
	add a1, a3, a2
	li a3, -2147483647
	li a2, 998244353
	mulw a4, a1, a2
	li a2, 1
	and a1, s1, a3
	subw a0, a0, a4
	bne a1, a2, label2
	addw a1, s0, a0
	li a3, 288737297
	li a4, 998244353
	mul a0, a1, a3
	srli a3, a0, 63
	srai a2, a0, 58
	add a0, a3, a2
	mulw a2, a0, a4
	subw a0, a1, a2
	j label2
label127:
	li a2, 288737297
	mul a0, s0, a2
	li a2, 998244353
	srli a3, a0, 63
	srai a1, a0, 58
	add a0, a3, a1
	mulw a1, a0, a2
	subw a0, s0, a1
	j label6
label11:
	slli a1, s1, 1
	srli a0, a1, 62
	add a2, s1, a0
	mv a0, s0
	sraiw a1, a2, 2
	jal multiply
	li a3, 288737297
	slliw a1, a0, 1
	mul a0, a1, a3
	srli a3, a0, 63
	srai a2, a0, 58
	add a0, a3, a2
	li a2, 998244353
	mulw a3, a0, a2
	li a2, -2147483647
	subw a0, a1, a3
	li a3, 1
	and a1, s2, a2
	bne a1, a3, label6
	addw a1, s0, a0
	li a3, 288737297
	mul a0, a1, a3
	srli a3, a0, 63
	srai a2, a0, 58
	add a0, a3, a2
	li a2, 998244353
	mulw a3, a0, a2
	subw a0, a1, a3
	j label6
power:
	addi sp, sp, -24
	sd s0, 16(sp)
	mv s0, a0
	sd s1, 8(sp)
	mv s1, a1
	sd ra, 0(sp)
	bne a1, zero, label347
	li a0, 1
label345:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label347:
	srliw a2, s1, 31
	mv a0, s0
	add a3, s1, a2
	sraiw a1, a3, 1
	jal power
	mv a1, a0
	jal multiply
	li a3, 1
	li a2, -2147483647
	and a1, s1, a2
	bne a1, a3, label345
	mv a1, s0
	jal multiply
	j label345
fft:
	addi sp, sp, -56
	sd s1, 48(sp)
	mv s1, a0
	sd s2, 40(sp)
	mv s2, a1
	sd s0, 32(sp)
	srliw a1, a2, 31
	mv s0, a3
	add a0, a2, a1
	sd s5, 24(sp)
pcrel343:
	auipc a1, %pcrel_hi(temp)
	sd s3, 16(sp)
	sraiw s3, a0, 1
	sd s4, 8(sp)
	addi a0, a1, %pcrel_lo(pcrel343)
	sd ra, 0(sp)
	li a1, 1
	bne a2, a1, label154
	j label144
label154:
	mv a1, zero
	ble a2, zero, label134
	mv a3, zero
	sext.w a4, s2
	mv t1, zero
	sh2add a5, a4, s1
	mv t0, zero
	lw a3, 0(a5)
	li a1, 1
	mv a4, zero
	mv a5, a0
	sw a3, 0(a0)
	ble a2, a1, label134
	andi a3, a1, 1
	bne a3, zero, label133
	addw a4, s2, a1
	srliw t1, a1, 31
	sh2add a5, a4, s1
	add t0, a1, t1
	lw a3, 0(a5)
	addiw a1, a1, 1
	sraiw a4, t0, 1
	sh2add a5, a4, a0
	sw a3, 0(a5)
	ble a2, a1, label134
	andi a3, a1, 1
	bne a3, zero, label133
	addw a4, s2, a1
	srliw t1, a1, 31
	sh2add a5, a4, s1
	add t0, a1, t1
	lw a3, 0(a5)
	addiw a1, a1, 1
	sraiw a4, t0, 1
	sh2add a5, a4, a0
	sw a3, 0(a5)
	ble a2, a1, label134
	andi a3, a1, 1
	bne a3, zero, label133
	j label326
label134:
	addiw a4, s2, 1
	addiw a5, s2, 2
	addiw t0, s2, 3
	ble a2, zero, label140
	mv a1, zero
	li a3, 4
	ble a2, a3, label138
	j label137
label331:
	andi a3, a1, 1
	bne a3, zero, label133
	j label326
label133:
	srliw a4, a1, 31
	add a3, a1, a4
	addw a4, s2, a1
	sraiw t0, a3, 1
	addiw a1, a1, 1
	addw a5, s3, t0
	sh2add a3, a5, a0
	sh2add a5, a4, s1
	lw t0, 0(a5)
	sw t0, 0(a3)
	ble a2, a1, label134
	andi a3, a1, 1
	bne a3, zero, label133
	addw a4, s2, a1
	srliw t1, a1, 31
	sh2add a5, a4, s1
	add t0, a1, t1
	lw a3, 0(a5)
	addiw a1, a1, 1
	sraiw a4, t0, 1
	sh2add a5, a4, a0
	sw a3, 0(a5)
	ble a2, a1, label134
	andi a3, a1, 1
	bne a3, zero, label133
	addw a4, s2, a1
	srliw t1, a1, 31
	sh2add a5, a4, s1
	add t0, a1, t1
	lw a3, 0(a5)
	addiw a1, a1, 1
	sraiw a4, t0, 1
	sh2add a5, a4, a0
	sw a3, 0(a5)
	ble a2, a1, label134
	andi a3, a1, 1
	bne a3, zero, label133
	addw a4, s2, a1
	srliw t1, a1, 31
	sh2add a5, a4, s1
	add t0, a1, t1
	lw a3, 0(a5)
	addiw a1, a1, 1
	sraiw a4, t0, 1
	sh2add a5, a4, a0
	sw a3, 0(a5)
	ble a2, a1, label134
	andi a3, a1, 1
	bne a3, zero, label133
	addw a4, s2, a1
	srliw t1, a1, 31
	sh2add a5, a4, s1
	add t0, a1, t1
	lw a3, 0(a5)
	addiw a1, a1, 1
	sraiw a4, t0, 1
	sh2add a5, a4, a0
	sw a3, 0(a5)
	ble a2, a1, label134
	andi a3, a1, 1
	bne a3, zero, label133
label326:
	addw a4, s2, a1
	srliw t1, a1, 31
	sh2add a5, a4, s1
	add t0, a1, t1
	lw a3, 0(a5)
	addiw a1, a1, 1
	sraiw a4, t0, 1
	sh2add a5, a4, a0
	sw a3, 0(a5)
	ble a2, a1, label134
	j label331
label137:
	addw t3, s2, a1
	sh2add t1, a1, a0
	sh2add t2, t3, s1
	lw t3, 0(t1)
	sw t3, 0(t2)
	addw t3, a4, a1
	lw t2, 4(t1)
	sh2add t4, t3, s1
	addw t3, a5, a1
	addw a1, t0, a1
	sw t2, 0(t4)
	sh2add t4, t3, s1
	lw t2, 8(t1)
	sw t2, 0(t4)
	sh2add t2, a1, s1
	lw t1, 12(t1)
	mv a1, a3
	sw t1, 0(t2)
	addiw a3, a3, 4
	ble a2, a3, label138
	j label137
label138:
	addw a4, s2, a1
	sh2add a5, a1, a0
	sh2add a3, a4, s1
	addiw a1, a1, 1
	lw a4, 0(a5)
	sw a4, 0(a3)
	ble a2, a1, label140
	j label138
label144:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s5, 24(sp)
	ld s0, 32(sp)
	ld s2, 40(sp)
	ld s1, 48(sp)
	addi sp, sp, 56
	ret
label140:
	mv a0, s0
	mv a1, s0
	jal multiply
	mv s5, a0
	mv a0, s1
	mv a1, s2
	mv a2, s3
	mv a3, s5
	jal fft
	mv a0, s1
	addw s4, s2, s3
	mv a1, s4
	mv a2, s3
	mv a3, s5
	jal fft
	ble s3, zero, label144
	mv a5, zero
	li t0, 1
label141:
	addw a0, s2, a5
	sh2add t2, a0, s1
	addw a0, s4, a5
	lw t3, 0(t2)
	sh2add t1, a0, s1
	lw a1, 0(t1)
	mv a0, t0
	jal multiply
	li a1, 288737297
	addw a3, t3, a0
	mul a2, a3, a1
	srli t5, a2, 63
	srai t4, a2, 58
	li a2, 998244353
	add a4, t5, t4
	mulw t4, a4, a2
	subw a4, t3, a0
	subw a3, a3, t4
	addw a0, a4, a2
	mul a1, a0, a1
	sw a3, 0(t2)
	srli a4, a1, 63
	srai a3, a1, 58
	add t2, a4, a3
	mulw a2, t2, a2
	subw a1, a0, a2
	sw a1, 0(t1)
	mv a0, t0
	mv a1, s0
	jal multiply
	addiw a5, a5, 1
	ble s3, a5, label144
	mv t0, a0
	j label141
.globl main
main:
	addi sp, sp, -32
pcrel456:
	auipc a1, %pcrel_hi(a)
	sd s0, 24(sp)
	addi a0, a1, %pcrel_lo(pcrel456)
	sd s1, 16(sp)
	mv s0, a0
	sd s2, 8(sp)
	sd ra, 0(sp)
	jal getarray
pcrel457:
	auipc a1, %pcrel_hi(b)
	addiw s1, a0, -1
	addi a0, a1, %pcrel_lo(pcrel457)
	mv s2, a0
	jal getarray
	addw s1, s1, a0
	li a0, 60
	jal _sysy_starttime
	li a1, 1
	ble s1, a1, label394
	li a0, 1
	slliw a0, a0, 1
	ble s1, a0, label399
	slliw a0, a0, 1
	ble s1, a0, label399
	slliw a0, a0, 1
	ble s1, a0, label399
	slliw a0, a0, 1
	ble s1, a0, label399
	slliw a0, a0, 1
	ble s1, a0, label399
	slliw a0, a0, 1
	ble s1, a0, label399
	slliw a0, a0, 1
	ble s1, a0, label399
	slliw a0, a0, 1
	ble s1, a0, label399
	slliw a0, a0, 1
	ble s1, a0, label399
	slliw a0, a0, 1
	ble s1, a0, label399
	j label373
label394:
	li t6, 1
	j label375
label373:
	slliw a0, a0, 1
	ble s1, a0, label399
	j label373
label399:
	mv t6, a0
label375:
	lui a1, 243712
	li a0, 3
	divw a6, a1, t6
	mv a1, a6
	jal power
	mv a1, zero
	mv a7, a0
	mv a0, s0
	mv a2, t6
	mv a3, a7
	jal fft
	mv a1, zero
	mv a0, s2
	mv a2, t6
	mv a3, a7
	jal fft
	ble t6, zero, label379
	mv a5, zero
label377:
	sh2add t0, a5, s0
	sh2add a2, a5, s2
	lw a0, 0(t0)
	lw a1, 0(a2)
	jal multiply
	addiw a5, a5, 1
	sw a0, 0(t0)
	ble t6, a5, label379
	j label377
label379:
	lui a2, 243712
	li a0, 3
	subw a1, a2, a6
	jal power
	mv a1, zero
	mv a3, a0
	mv a0, s0
	mv a2, t6
	jal fft
	ble t6, zero, label383
	mv a0, t6
	li a1, 998244351
	jal power
	mv t0, zero
	mv a5, a0
label381:
	sh2add t1, t0, s0
	lw a0, 0(t1)
	mv a1, a5
	jal multiply
	addiw t0, t0, 1
	sw a0, 0(t1)
	ble t6, t0, label383
	j label381
label383:
	li a0, 79
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
