.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
matrix:
	.zero	80000000
.align 4
a:
	.zero	400000
.text
.globl main
main:
	addi sp, sp, -32
	sd s1, 24(sp)
	sd s2, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
pcrel534:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel534)
	mv s2, a0
	jal getarray
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
pcrel535:
	auipc a0, %pcrel_hi(matrix)
	addi a0, a0, %pcrel_lo(pcrel535)
	ble s1, zero, label10
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label5
	j label4
label5:
	addiw a2, a1, 16
	bge a2, s1, label7
label9:
	slli a3, a1, 2
	add a3, a0, a3
	sw a1, 0(a3)
	addiw a4, a1, 1
	sw a4, 4(a3)
	addiw a4, a1, 2
	sw a4, 8(a3)
	addiw a4, a1, 3
	sw a4, 12(a3)
	addiw a4, a1, 4
	sw a4, 16(a3)
	addiw a4, a1, 5
	sw a4, 20(a3)
	addiw a4, a1, 6
	sw a4, 24(a3)
	addiw a4, a1, 7
	sw a4, 28(a3)
	addiw a4, a1, 8
	sw a4, 32(a3)
	addiw a4, a1, 9
	sw a4, 36(a3)
	addiw a4, a1, 10
	sw a4, 40(a3)
	addiw a4, a1, 11
	sw a4, 44(a3)
	addiw a4, a1, 12
	sw a4, 48(a3)
	addiw a4, a1, 13
	sw a4, 52(a3)
	addiw a4, a1, 14
	sw a4, 56(a3)
	addiw a1, a1, 15
	sw a1, 60(a3)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label7
	j label9
label7:
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	j label504
label10:
	ble s0, zero, label22
	mv a1, zero
	slli a2, zero, 2
	add a2, s2, a2
	lw a4, 0(a2)
	divw a5, s1, a4
	mv a2, zero
	mulw t1, a4, zero
	bge zero, a5, label15
	mv a3, zero
	bge zero, a4, label18
	j label20
label485:
	bge a2, a3, label20
	j label497
label18:
	addiw a2, a2, 1
	mulw t1, a4, a2
	bge a2, a5, label15
	mv a3, zero
	bge zero, a4, label18
	bge a2, zero, label20
	addiw a3, zero, 1
	bge a3, a4, label18
	bge a2, a3, label20
	addiw a3, a3, 1
	bge a3, a4, label18
	bge a2, a3, label20
	addiw a3, a3, 1
	bge a3, a4, label18
	bge a2, a3, label20
	addiw a3, a3, 1
	bge a3, a4, label18
	j label485
label15:
	addiw a1, a1, 1
	bge a1, s0, label22
	slli a2, a1, 2
	add a2, s2, a2
	lw a4, 0(a2)
	divw a5, s1, a4
	mv a2, zero
	mulw t1, a4, zero
	bge zero, a5, label15
	mv a3, zero
	bge zero, a4, label18
	j label20
label22:
	ble s0, zero, label165
	mv a2, zero
	mv a1, zero
	addiw a3, zero, 16
	bge a3, s0, label26
label33:
	slli a4, a1, 2
	add a4, a0, a4
	lw a5, 0(a4)
	lw t1, 4(a4)
	addiw t2, a1, 1
	mulw t2, t2, t2
	mulw t1, t2, t1
	mulw t2, a1, a1
	mulw a5, t2, a5
	addw a2, a2, a5
	addw a2, a2, t1
	lw a5, 8(a4)
	addiw t1, a1, 2
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 12(a4)
	addiw t1, a1, 3
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 16(a4)
	addiw t1, a1, 4
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 20(a4)
	addiw t1, a1, 5
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 24(a4)
	addiw t1, a1, 6
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 28(a4)
	addiw t1, a1, 7
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 32(a4)
	addiw t1, a1, 8
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 36(a4)
	addiw t1, a1, 9
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 40(a4)
	addiw t1, a1, 10
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 44(a4)
	addiw t1, a1, 11
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 48(a4)
	addiw t1, a1, 12
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 52(a4)
	addiw t1, a1, 13
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 56(a4)
	addiw t1, a1, 14
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a4, 60(a4)
	addiw a1, a1, 15
	mulw a1, a1, a1
	mulw a1, a1, a4
	addw a2, a2, a1
	mv a1, a3
	addiw a3, a3, 16
	bge a3, s0, label26
	j label33
label497:
	addiw a3, a3, 1
	bge a3, a4, label18
	j label509
label20:
	addw t2, a3, t1
	slliw t2, t2, 2
	add t2, a0, t2
	lw t3, 0(t2)
	mulw t4, a5, a3
	addw t4, a2, t4
	slliw t4, t4, 2
	add t4, a0, t4
	sw t3, 0(t4)
	sw t3, 0(t2)
	addiw a3, a3, 1
	bge a3, a4, label18
	bge a2, a3, label20
	addiw a3, a3, 1
	bge a3, a4, label18
	bge a2, a3, label20
	addiw a3, a3, 1
	bge a3, a4, label18
	bge a2, a3, label20
	addiw a3, a3, 1
	bge a3, a4, label18
	bge a2, a3, label20
	addiw a3, a3, 1
	bge a3, a4, label18
	bge a2, a3, label20
	j label497
label509:
	bge a2, a3, label20
	j label497
label504:
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	j label504
label26:
	addiw a3, a1, 16
	bge a3, s0, label29
label32:
	slli a4, a1, 2
	add a4, a0, a4
	lw a5, 0(a4)
	lw t1, 4(a4)
	addiw t2, a1, 1
	mulw t2, t2, t2
	mulw t1, t2, t1
	mulw t2, a1, a1
	mulw a5, t2, a5
	addw a2, a2, a5
	addw a2, a2, t1
	lw a5, 8(a4)
	addiw t1, a1, 2
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 12(a4)
	addiw t1, a1, 3
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 16(a4)
	addiw t1, a1, 4
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 20(a4)
	addiw t1, a1, 5
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 24(a4)
	addiw t1, a1, 6
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 28(a4)
	addiw t1, a1, 7
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 32(a4)
	addiw t1, a1, 8
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 36(a4)
	addiw t1, a1, 9
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 40(a4)
	addiw t1, a1, 10
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 44(a4)
	addiw t1, a1, 11
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 48(a4)
	addiw t1, a1, 12
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 52(a4)
	addiw t1, a1, 13
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a5, 56(a4)
	addiw t1, a1, 14
	mulw t1, t1, t1
	mulw a5, t1, a5
	addw a2, a2, a5
	lw a4, 60(a4)
	addiw a1, a1, 15
	mulw a1, a1, a1
	mulw a1, a1, a4
	addw a2, a2, a1
	mv a1, a3
	addiw a3, a3, 16
	bge a3, s0, label29
	j label32
label29:
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a4, a3
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label186
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a4, a3
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label186
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a4, a3
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label186
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a4, a3
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label186
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a4, a3
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label186
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a4, a3
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label186
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a4, a3
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label186
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a4, a3
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label186
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a4, a3
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label186
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a4, a3
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label186
	j label514
label186:
	mv s0, a2
	li a0, 47
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label396
	j label416
label514:
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a4, a3
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label186
	j label514
label165:
	mv s0, zero
	li a0, 47
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label396
	j label416
label4:
	slli a3, a1, 2
	add a3, a0, a3
	sw a1, 0(a3)
	addiw a4, a1, 1
	sw a4, 4(a3)
	addiw a4, a1, 2
	sw a4, 8(a3)
	addiw a4, a1, 3
	sw a4, 12(a3)
	addiw a4, a1, 4
	sw a4, 16(a3)
	addiw a4, a1, 5
	sw a4, 20(a3)
	addiw a4, a1, 6
	sw a4, 24(a3)
	addiw a4, a1, 7
	sw a4, 28(a3)
	addiw a4, a1, 8
	sw a4, 32(a3)
	addiw a4, a1, 9
	sw a4, 36(a3)
	addiw a4, a1, 10
	sw a4, 40(a3)
	addiw a4, a1, 11
	sw a4, 44(a3)
	addiw a4, a1, 12
	sw a4, 48(a3)
	addiw a4, a1, 13
	sw a4, 52(a3)
	addiw a4, a1, 14
	sw a4, 56(a3)
	addiw a1, a1, 15
	sw a1, 60(a3)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label5
	j label4
label416:
	mv a0, s0
label396:
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
