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
pcrel341:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel341)
	mv s2, a0
	jal getarray
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
pcrel342:
	auipc a0, %pcrel_hi(matrix)
	addi a1, a0, %pcrel_lo(pcrel342)
	ble s1, zero, label2
	mv a0, zero
	addiw a2, zero, 4
	bge a2, s1, label30
	sh2add a3, zero, a1
	sw zero, 0(a3)
	addiw a4, zero, 1
	sw a4, 4(a3)
	addiw a4, zero, 2
	sw a4, 8(a3)
	addiw a0, zero, 3
	sw a0, 12(a3)
	mv a0, a2
	addiw a2, a2, 4
	bge a2, s1, label30
	j label160
label2:
	ble s0, zero, label3
	mv t1, zero
	sh2add a0, zero, s2
	lw a2, 0(a0)
	divw a3, s1, a2
	mv a0, zero
	mulw a5, a2, zero
	bge zero, a3, label21
	mv a4, zero
	bge zero, a2, label24
	j label26
label21:
	addiw t1, t1, 1
	bge t1, s0, label3
	sh2add a0, t1, s2
	lw a2, 0(a0)
	divw a3, s1, a2
	mv a0, zero
	mulw a5, a2, zero
	bge zero, a3, label21
	mv a4, zero
	bge zero, a2, label24
	j label26
label293:
	bge a0, a4, label26
label305:
	addiw a4, a4, 1
	bge a4, a2, label24
	j label317
label24:
	addiw a0, a0, 1
	mulw a5, a2, a0
	bge a0, a3, label21
	mv a4, zero
	bge zero, a2, label24
	bge a0, zero, label26
	addiw a4, zero, 1
	bge a4, a2, label24
	bge a0, a4, label26
	addiw a4, a4, 1
	bge a4, a2, label24
	bge a0, a4, label26
	addiw a4, a4, 1
	bge a4, a2, label24
	bge a0, a4, label26
	addiw a4, a4, 1
	bge a4, a2, label24
	j label293
label26:
	mulw t2, a3, a4
	addw t2, a0, t2
	sh2add t2, t2, a1
	addw t3, a5, a4
	sh2add t3, t3, a1
	lw t4, 0(t3)
	sw t4, 0(t2)
	sw t4, 0(t3)
	addiw a4, a4, 1
	bge a4, a2, label24
	bge a0, a4, label26
	addiw a4, a4, 1
	bge a4, a2, label24
	bge a0, a4, label26
	addiw a4, a4, 1
	bge a4, a2, label24
	bge a0, a4, label26
	addiw a4, a4, 1
	bge a4, a2, label24
	bge a0, a4, label26
	addiw a4, a4, 1
	bge a4, a2, label24
	bge a0, a4, label26
	j label305
label317:
	bge a0, a4, label26
	j label305
label30:
	addiw a2, a0, 4
	bge a2, s1, label33
	j label165
label33:
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bge a0, s1, label2
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bge a0, s1, label2
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bge a0, s1, label2
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bge a0, s1, label2
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bge a0, s1, label2
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bge a0, s1, label2
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bge a0, s1, label2
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bge a0, s1, label2
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bge a0, s1, label2
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bge a0, s1, label2
label323:
	sh2add a2, a0, a1
	sw a0, 0(a2)
	addiw a0, a0, 1
	bge a0, s1, label2
	j label323
label3:
	ble s0, zero, label51
	mv a3, zero
	mv a2, zero
	addiw a0, zero, 4
	bge a0, s0, label56
	j label14
label51:
	mv s0, zero
	li a0, 47
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label204
label211:
	mv a0, s0
	j label204
label14:
	sh2add a4, a2, a1
	lw a5, 0(a4)
	lw t1, 4(a4)
	addiw t2, a2, 1
	mulw t2, t2, t2
	mulw t1, t1, t2
	mulw t2, a2, a2
	mulw a5, a5, t2
	addw a3, a3, a5
	addw a3, t1, a3
	lw a5, 8(a4)
	addiw t1, a2, 2
	mulw t1, t1, t1
	mulw a5, a5, t1
	addw a3, a3, a5
	lw a4, 12(a4)
	addiw a2, a2, 3
	mulw a2, a2, a2
	mulw a2, a4, a2
	addw a3, a3, a2
	mv a2, a0
	addiw a0, a0, 4
	bge a0, s0, label56
	j label14
label204:
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
label56:
	mv a0, a3
	addiw a3, a2, 4
	bge a3, s0, label10
	j label13
label10:
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a3, a4
	addw a0, a0, a3
	addiw a2, a2, 1
	bge a2, s0, label72
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a3, a4
	addw a0, a0, a3
	addiw a2, a2, 1
	bge a2, s0, label72
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a3, a4
	addw a0, a0, a3
	addiw a2, a2, 1
	bge a2, s0, label72
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a3, a4
	addw a0, a0, a3
	addiw a2, a2, 1
	bge a2, s0, label72
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a3, a4
	addw a0, a0, a3
	addiw a2, a2, 1
	bge a2, s0, label72
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a3, a4
	addw a0, a0, a3
	addiw a2, a2, 1
	bge a2, s0, label72
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a3, a4
	addw a0, a0, a3
	addiw a2, a2, 1
	bge a2, s0, label72
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a3, a4
	addw a0, a0, a3
	addiw a2, a2, 1
	bge a2, s0, label72
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a3, a4
	addw a0, a0, a3
	addiw a2, a2, 1
	bge a2, s0, label72
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a3, a4
	addw a0, a0, a3
	addiw a2, a2, 1
	bge a2, s0, label72
	j label314
label72:
	mv s0, a0
	li a0, 47
	jal _sysy_stoptime
	slti a1, s0, 0
	subw a0, zero, s0
	bne a1, zero, label204
	j label211
label314:
	sh2add a3, a2, a1
	lw a3, 0(a3)
	mulw a4, a2, a2
	mulw a3, a3, a4
	addw a0, a0, a3
	addiw a2, a2, 1
	bge a2, s0, label72
	j label314
label13:
	sh2add a4, a2, a1
	lw a5, 0(a4)
	lw t1, 4(a4)
	addiw t2, a2, 1
	mulw t2, t2, t2
	mulw t1, t1, t2
	mulw t2, a2, a2
	mulw a5, a5, t2
	addw a0, a0, a5
	addw a0, t1, a0
	lw a5, 8(a4)
	addiw t1, a2, 2
	mulw t1, t1, t1
	mulw a5, a5, t1
	addw a0, a0, a5
	lw a4, 12(a4)
	addiw a2, a2, 3
	mulw a2, a2, a2
	mulw a2, a4, a2
	addw a0, a0, a2
	mv a2, a3
	addiw a3, a3, 4
	bge a3, s0, label10
	j label13
label160:
	sh2add a3, a0, a1
	sw a0, 0(a3)
	addiw a4, a0, 1
	sw a4, 4(a3)
	addiw a4, a0, 2
	sw a4, 8(a3)
	addiw a0, a0, 3
	sw a0, 12(a3)
	mv a0, a2
	addiw a2, a2, 4
	bge a2, s1, label30
	j label160
label165:
	sh2add a3, a0, a1
	sw a0, 0(a3)
	addiw a4, a0, 1
	sw a4, 4(a3)
	addiw a4, a0, 2
	sw a4, 8(a3)
	addiw a0, a0, 3
	sw a0, 12(a3)
	mv a0, a2
	addiw a2, a2, 4
	bge a2, s1, label33
	j label165
