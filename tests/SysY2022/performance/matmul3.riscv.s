.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	4000000
.align 4
b:
	.zero	4000000
.align 4
c:
	.zero	4000000
.text
.globl main
main:
	addi sp, sp, -40
pcrel683:
	auipc a0, %pcrel_hi(a)
	sd s2, 32(sp)
	addi s2, a0, %pcrel_lo(pcrel683)
	sd s0, 24(sp)
pcrel684:
	auipc a0, %pcrel_hi(c)
	sd s1, 16(sp)
	addi s0, a0, %pcrel_lo(pcrel684)
	sd s3, 8(sp)
pcrel685:
	auipc a0, %pcrel_hi(b)
	mv s3, zero
	addi s1, a0, %pcrel_lo(pcrel685)
	sd ra, 0(sp)
	li a0, 1000
	bge zero, a0, label6
label4:
	li a1, 4000
	mul a2, s3, a1
	add a0, s2, a2
	jal getarray
	li a1, 1000
	beq a0, a1, label5
	j label46
label6:
	li a0, 23
	jal _sysy_starttime
	mv a0, zero
	li a1, 1000
	bge zero, a1, label68
	j label67
label68:
	mv a2, zero
	li a1, 4000
	li a5, 1000
	mv a4, zero
	mv a0, zero
	mv a1, s2
	mv a3, s0
	bge zero, a5, label208
	j label658
label46:
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	ld s2, 32(sp)
	addi sp, sp, 40
	ret
label658:
	mv a4, zero
	mv a5, zero
	j label17
label208:
	mv a1, zero
	li a3, 4000
	mv a0, zero
	li a3, 1000
	mv a2, s0
	bge zero, a3, label261
	li a0, 2147483647
	mv a3, zero
	li a4, 1000
	bge zero, a4, label511
	mv a5, s0
	li a3, 1
	lw a4, 0(s0)
	min a0, a0, a4
	li a4, 1000
	bge a3, a4, label511
	sh2add a5, a3, s0
	addiw a3, a3, 1
	lw a4, 0(a5)
	min a0, a0, a4
	li a4, 1000
	bge a3, a4, label511
	sh2add a5, a3, s0
	addiw a3, a3, 1
	lw a4, 0(a5)
	min a0, a0, a4
	li a4, 1000
	bge a3, a4, label511
	sh2add a5, a3, s0
	addiw a3, a3, 1
	lw a4, 0(a5)
	min a0, a0, a4
	li a4, 1000
	bge a3, a4, label511
	j label676
label17:
	li t2, 4000
	mul t1, a4, t2
	add t0, s1, t1
	add a6, t0, t2
	sh2add t1, a4, a1
	sh2add t4, a0, t0
	addiw a4, a4, 4
	lw t3, 0(t1)
	sh2add t5, a0, a6
	lw t4, 0(t4)
	lw t6, 4(t1)
	lw a6, 0(t5)
	mulw t5, t6, a6
	mulw t6, t3, t4
	slli t4, t2, 1
	addw t3, t5, t6
	add t5, t0, t4
	lw t4, 8(t1)
	sh2add t2, a0, t5
	lw t5, 0(t2)
	lw t1, 12(t1)
	mulw t6, t4, t5
	addw t2, t3, t6
	li t3, 12000
	add t4, t0, t3
	sh2add t0, a0, t4
	lw t3, 0(t0)
	mulw t0, t1, t3
	addw t1, t2, t0
	li t0, 1000
	addw a5, a5, t1
	bge a4, t0, label20
	j label17
label20:
	sh2add a4, a0, a3
	addiw a0, a0, 1
	sw a5, 0(a4)
	li a5, 1000
	bge a0, a5, label21
	j label658
label261:
	mv a0, zero
	li a1, 1000
	bge zero, a1, label265
label264:
	li a2, 4000
	mul a3, a0, a2
	mv a2, zero
	add a1, s0, a3
	j label27
label265:
	mv s1, zero
	mv a0, zero
	li a1, 1000
	bge zero, a1, label33
label653:
	li a2, 4000
	mv a4, s1
	mul a3, a0, a2
	mv a2, zero
	add a1, s0, a3
	j label35
label511:
	mv a3, zero
label42:
	sh2add a4, a3, a2
	sw a0, 0(a4)
	addiw a3, a3, 16
	sw a0, 4(a4)
	sw a0, 8(a4)
	sw a0, 12(a4)
	sw a0, 16(a4)
	sw a0, 20(a4)
	sw a0, 24(a4)
	sw a0, 28(a4)
	sw a0, 32(a4)
	sw a0, 36(a4)
	sw a0, 40(a4)
	sw a0, 44(a4)
	sw a0, 48(a4)
	sw a0, 52(a4)
	sw a0, 56(a4)
	sw a0, 60(a4)
	li a4, 992
	bge a3, a4, label44
	j label42
label44:
	sh2add a2, a3, a2
	addiw a1, a1, 1
	sw a0, 0(a2)
	sw a0, 4(a2)
	sw a0, 8(a2)
	sw a0, 12(a2)
	sw a0, 16(a2)
	sw a0, 20(a2)
	sw a0, 24(a2)
	sw a0, 28(a2)
	li a3, 4000
	mul a0, a1, a3
	li a3, 1000
	add a2, s0, a0
	bge a1, a3, label261
	li a0, 2147483647
	mv a3, zero
	li a4, 1000
	bge zero, a4, label511
	mv a5, a2
	li a3, 1
	lw a4, 0(a2)
	min a0, a0, a4
	li a4, 1000
	bge a3, a4, label511
	sh2add a5, a3, a2
	addiw a3, a3, 1
	lw a4, 0(a5)
	min a0, a0, a4
	li a4, 1000
	bge a3, a4, label511
	sh2add a5, a3, a2
	addiw a3, a3, 1
	lw a4, 0(a5)
	min a0, a0, a4
	li a4, 1000
	bge a3, a4, label511
	sh2add a5, a3, a2
	addiw a3, a3, 1
	lw a4, 0(a5)
	min a0, a0, a4
	li a4, 1000
	bge a3, a4, label511
	j label676
label35:
	sh2add a3, a2, a1
	lw a5, 0(a3)
	addiw a2, a2, 16
	lw t1, 4(a3)
	addw a4, a4, a5
	lw t0, 8(a3)
	addw a5, a4, t1
	addw a4, a5, t0
	lw a5, 12(a3)
	addw t0, a4, a5
	lw a4, 16(a3)
	lw t1, 20(a3)
	addw a5, t0, a4
	lw t0, 24(a3)
	addw a4, a5, t1
	lw t1, 28(a3)
	addw a5, a4, t0
	lw t0, 32(a3)
	addw a4, a5, t1
	lw t1, 36(a3)
	addw a5, a4, t0
	lw t0, 40(a3)
	addw a4, a5, t1
	lw t1, 44(a3)
	addw a5, a4, t0
	lw t0, 48(a3)
	addw a4, a5, t1
	lw t1, 52(a3)
	addw a5, a4, t0
	lw t0, 56(a3)
	addw a4, a5, t1
	addw a5, a4, t0
	lw a4, 60(a3)
	addw a3, a5, a4
	li a4, 992
	bge a2, a4, label38
	mv a4, a3
	j label35
label38:
	sh2add a1, a2, a1
	addiw a0, a0, 1
	lw a2, 0(a1)
	lw a4, 4(a1)
	addw a3, a3, a2
	lw a5, 8(a1)
	addw a2, a3, a4
	lw a4, 12(a1)
	addw a3, a2, a5
	addw a2, a3, a4
	lw a3, 16(a1)
	addw a4, a2, a3
	lw a2, 20(a1)
	addw a3, a4, a2
	lw a4, 24(a1)
	lw a1, 28(a1)
	addw a2, a3, a4
	addw s1, a2, a1
	li a1, 1000
	bge a0, a1, label33
	j label653
label27:
	li a5, 4000
	mul a4, a2, a5
	add a3, s0, a4
	sh2add t2, a0, a3
	sh2add a4, a2, a1
	addiw a2, a2, 16
	lw t1, 0(t2)
	add t2, a3, a5
	subw t0, zero, t1
	slli a5, a5, 1
	sh2add t1, a0, t2
	sw t0, 0(a4)
	lw t0, 0(t1)
	subw t2, zero, t0
	add t0, a3, a5
	sw t2, 4(a4)
	sh2add t2, a0, t0
	lw t1, 0(t2)
	subw t0, zero, t1
	li t1, 12000
	sw t0, 8(a4)
	add t0, a3, t1
	slli t1, t1, 1
	sh2add t2, a0, t0
	slli t0, a5, 1
	lw t3, 0(t2)
	add t2, a3, t0
	subw t4, zero, t3
	slli t0, t0, 1
	sh2add t3, a0, t2
	sw t4, 12(a4)
	lw a5, 0(t3)
	subw t2, zero, a5
	li a5, 20000
	add t3, a3, a5
	sw t2, 16(a4)
	slli a5, a5, 1
	sh2add t4, a0, t3
	lw t2, 0(t4)
	subw t3, zero, t2
	add t2, a3, t1
	sw t3, 20(a4)
	sh2add t3, a0, t2
	li t2, 28000
	lw t1, 0(t3)
	add t3, a3, t2
	subw t4, zero, t1
	sh2add t1, a0, t3
	sw t4, 24(a4)
	lw t2, 0(t1)
	add t1, a3, t0
	subw t3, zero, t2
	sh2add t2, a0, t1
	sw t3, 28(a4)
	lw t0, 0(t2)
	subw t1, zero, t0
	li t0, 36000
	add t2, a3, t0
	sw t1, 32(a4)
	sh2add t1, a0, t2
	lw t0, 0(t1)
	add t1, a3, a5
	subw t2, zero, t0
	sh2add t0, a0, t1
	li t1, 44000
	sw t2, 36(a4)
	lw a5, 0(t0)
	add t0, a3, t1
	subw t2, zero, a5
	sh2add a5, a0, t0
	sw t2, 40(a4)
	li t2, 48000
	lw t1, 0(a5)
	add a5, a3, t2
	subw t0, zero, t1
	sh2add t1, a0, a5
	sw t0, 44(a4)
	lw t0, 0(t1)
	li t1, 52000
	subw a5, zero, t0
	sw a5, 48(a4)
	add a5, a3, t1
	sh2add t0, a0, a5
	lw t1, 0(t0)
	li t0, 56000
	subw a5, zero, t1
	sw a5, 52(a4)
	add a5, a3, t0
	sh2add t2, a0, a5
	li a5, 60000
	lw t1, 0(t2)
	add a3, a3, a5
	subw t0, zero, t1
	sw t0, 56(a4)
	sh2add t0, a0, a3
	lw a5, 0(t0)
	subw a3, zero, a5
	sw a3, 60(a4)
	li a3, 992
	bge a2, a3, label29
	j label27
label29:
	li a4, 4000
	sh2add a1, a2, a1
	mul a5, a2, a4
	add a3, s0, a5
	add a2, a3, a4
	sh2add t1, a0, a3
	slli a4, a4, 1
	lw t0, 0(t1)
	subw a5, zero, t0
	sh2add t0, a0, a2
	sw a5, 0(a1)
	lw a5, 0(t0)
	subw a2, zero, a5
	add a5, a3, a4
	slli a4, a4, 1
	sh2add t0, a0, a5
	sw a2, 4(a1)
	lw a2, 0(t0)
	subw a5, zero, a2
	li a2, 12000
	sw a5, 8(a1)
	add a5, a3, a2
	sh2add t1, a0, a5
	lw t0, 0(t1)
	subw a5, zero, t0
	sw a5, 12(a1)
	add a5, a3, a4
	sh2add t0, a0, a5
	lw a4, 0(t0)
	subw a5, zero, a4
	li a4, 20000
	sw a5, 16(a1)
	add a5, a3, a4
	sh2add t0, a0, a5
	slli a5, a2, 1
	lw a4, 0(t0)
	add a2, a3, a5
	subw t1, zero, a4
	sh2add a4, a0, a2
	sw t1, 20(a1)
	lw a5, 0(a4)
	subw a2, zero, a5
	li a5, 28000
	add a4, a3, a5
	sw a2, 24(a1)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	lw a3, 0(a2)
	subw a4, zero, a3
	sw a4, 28(a1)
	li a1, 1000
	bge a0, a1, label265
	j label264
label21:
	addiw a2, a2, 1
	li a1, 4000
	li a5, 1000
	mul a4, a2, a1
	mul a0, a2, a1
	add a1, s2, a4
	add a3, s0, a0
	bge a2, a5, label208
	mv a0, zero
	bge zero, a5, label21
	j label658
label676:
	sh2add a5, a3, a2
	addiw a3, a3, 1
	lw a4, 0(a5)
	min a0, a0, a4
	li a4, 1000
	bge a3, a4, label511
	j label676
label33:
	li a0, 92
	jal _sysy_stoptime
	mv a0, s1
	jal putint
	mv a0, zero
	j label46
label67:
	li a3, 4000
	mv a2, zero
	mul a4, a0, a3
	add a1, s1, a4
	j label10
label12:
	li a4, 4000
	sh2add a1, a2, a1
	mul a5, a2, a4
	add a3, s2, a5
	sh2add t0, a0, a3
	lw a5, 0(t0)
	sw a5, 0(a1)
	add a5, a3, a4
	slli a4, a4, 1
	sh2add t0, a0, a5
	lw a2, 0(t0)
	sw a2, 4(a1)
	add a2, a3, a4
	slli a4, a4, 1
	sh2add t0, a0, a2
	li a2, 12000
	lw a5, 0(t0)
	sw a5, 8(a1)
	add a5, a3, a2
	sh2add t0, a0, a5
	lw t1, 0(t0)
	add t0, a3, a4
	li a4, 20000
	sw t1, 12(a1)
	sh2add t1, a0, t0
	add t0, a3, a4
	lw a5, 0(t1)
	sw a5, 16(a1)
	sh2add a5, a0, t0
	lw a4, 0(a5)
	slli a5, a2, 1
	add a2, a3, a5
	sw a4, 20(a1)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	li a4, 28000
	sw a5, 24(a1)
	add a5, a3, a4
	sh2add a2, a0, a5
	addiw a0, a0, 1
	lw a3, 0(a2)
	sw a3, 28(a1)
	li a1, 1000
	bge a0, a1, label68
	j label67
label10:
	li a5, 4000
	mul a3, a2, a5
	add a4, s2, a3
	sh2add t1, a0, a4
	sh2add a3, a2, a1
	addiw a2, a2, 16
	lw t0, 0(t1)
	add t1, a4, a5
	slli a5, a5, 1
	sw t0, 0(a3)
	sh2add t0, a0, t1
	add t1, a4, a5
	lw t2, 0(t0)
	sh2add t0, a0, t1
	li t1, 12000
	sw t2, 4(a3)
	lw t2, 0(t0)
	add t0, a4, t1
	slli t1, t1, 1
	sw t2, 8(a3)
	sh2add t2, a0, t0
	slli t0, a5, 1
	lw t3, 0(t2)
	add a5, a4, t0
	slli t0, t0, 1
	sw t3, 12(a3)
	sh2add t3, a0, a5
	li a5, 20000
	lw t2, 0(t3)
	add t3, a4, a5
	slli a5, a5, 1
	sw t2, 16(a3)
	sh2add t2, a0, t3
	lw t4, 0(t2)
	sw t4, 20(a3)
	add t4, a4, t1
	li t1, 28000
	sh2add t2, a0, t4
	lw t3, 0(t2)
	add t2, a4, t1
	sw t3, 24(a3)
	sh2add t3, a0, t2
	lw t1, 0(t3)
	li t3, 36000
	sw t1, 28(a3)
	add t1, a4, t0
	sh2add t2, a0, t1
	lw t0, 0(t2)
	add t2, a4, t3
	sh2add t1, a0, t2
	sw t0, 32(a3)
	li t2, 44000
	lw t0, 0(t1)
	add t1, a4, a5
	sw t0, 36(a3)
	sh2add t0, a0, t1
	add t1, a4, t2
	lw a5, 0(t0)
	li t2, 48000
	sh2add t0, a0, t1
	sw a5, 40(a3)
	lw a5, 0(t0)
	add t0, a4, t2
	sh2add t1, a0, t0
	sw a5, 44(a3)
	li t0, 52000
	lw a5, 0(t1)
	sw a5, 48(a3)
	add a5, a4, t0
	sh2add t1, a0, a5
	li a5, 56000
	lw t0, 0(t1)
	sw t0, 52(a3)
	add t0, a4, a5
	sh2add t1, a0, t0
	lw a5, 0(t1)
	li t1, 60000
	add t0, a4, t1
	sw a5, 56(a3)
	sh2add a5, a0, t0
	lw a4, 0(a5)
	sw a4, 60(a3)
	li a3, 992
	bge a2, a3, label12
	j label10
label5:
	addiw s3, s3, 1
	li a0, 1000
	bge s3, a0, label6
	j label4
