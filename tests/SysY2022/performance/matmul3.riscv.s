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
pcrel681:
	auipc a0, %pcrel_hi(a)
	sd s2, 32(sp)
	addi s2, a0, %pcrel_lo(pcrel681)
	sd s0, 24(sp)
pcrel682:
	auipc a0, %pcrel_hi(c)
	sd s1, 16(sp)
	addi s0, a0, %pcrel_lo(pcrel682)
	sd s3, 8(sp)
pcrel683:
	auipc a0, %pcrel_hi(b)
	mv s3, zero
	addi s1, a0, %pcrel_lo(pcrel683)
	sd ra, 0(sp)
	li a0, 1000
	bge zero, a0, label4
	j label44
label4:
	li a0, 23
	jal _sysy_starttime
	mv a0, zero
	li a1, 1000
	bge zero, a1, label60
	j label59
label60:
	mv a2, zero
	li a1, 4000
	li a4, 1000
	mv a5, zero
	mv a0, zero
	mv a1, s2
	mv a3, s0
	bge zero, a4, label200
	li a5, 1000
	bge zero, a5, label15
label658:
	mv a4, zero
	mv a5, zero
	j label16
label200:
	mv a1, zero
	li a3, 4000
	mv a0, zero
	li a3, 1000
	mv a2, s0
	bge zero, a3, label253
	li a0, 2147483647
	mv a3, zero
	li a4, 1000
	bge zero, a4, label503
	mv a5, s0
	li a3, 1
	lw a4, 0(s0)
	min a0, a0, a4
	li a4, 1000
	bge a3, a4, label503
	sh2add a5, a3, s0
	addiw a3, a3, 1
	lw a4, 0(a5)
	min a0, a0, a4
	li a4, 1000
	bge a3, a4, label503
	sh2add a5, a3, s0
	addiw a3, a3, 1
	lw a4, 0(a5)
	min a0, a0, a4
	li a4, 1000
	bge a3, a4, label503
	sh2add a5, a3, s0
	addiw a3, a3, 1
	lw a4, 0(a5)
	min a0, a0, a4
	li a4, 1000
	bge a3, a4, label503
	j label674
label15:
	addiw a2, a2, 1
	li a1, 4000
	li a4, 1000
	mul a5, a2, a1
	mul a0, a2, a1
	add a1, s2, a5
	add a3, s0, a0
	bge a2, a4, label200
	mv a0, zero
	li a5, 1000
	bge zero, a5, label15
	j label658
label16:
	li t2, 4000
	mul t1, a4, t2
	add t0, s1, t1
	add a6, t0, t2
	sh2add t1, a4, a1
	sh2add t4, a0, t0
	addiw a4, a4, 4
	lw t3, 0(t1)
	sh2add t6, a0, a6
	lw t4, 0(t4)
	lw t5, 4(t1)
	lw a6, 0(t6)
	mulw t6, t5, a6
	mulw t5, t3, t4
	slli t4, t2, 1
	addw t3, t6, t5
	add t5, t0, t4
	lw t4, 8(t1)
	sh2add t2, a0, t5
	lw t6, 0(t2)
	mulw t5, t4, t6
	li t4, 12000
	addw t2, t3, t5
	add t5, t0, t4
	lw t0, 12(t1)
	sh2add t3, a0, t5
	lw t4, 0(t3)
	mulw t1, t0, t4
	addw t0, t2, t1
	addw a5, a5, t0
	li t0, 1000
	bge a4, t0, label19
	j label16
label19:
	sh2add a4, a0, a3
	addiw a0, a0, 1
	sw a5, 0(a4)
	li a5, 1000
	bge a0, a5, label15
	j label658
label674:
	sh2add a5, a3, a2
	addiw a3, a3, 1
	lw a4, 0(a5)
	min a0, a0, a4
	j label37
label253:
	mv a0, zero
	li a1, 1000
	bge zero, a1, label257
	j label256
label257:
	mv s1, zero
	mv a0, zero
	li a1, 1000
	bge zero, a1, label31
label652:
	li a2, 4000
	mv a4, s1
	mul a3, a0, a2
	mv a2, zero
	add a1, s0, a3
	j label33
label31:
	li a0, 92
	jal _sysy_stoptime
	mv a0, s1
	jal putint
	mv a0, zero
	j label46
label37:
	li a4, 1000
	bge a3, a4, label503
	j label674
label503:
	mv a3, zero
label40:
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
	bge a3, a4, label42
	j label40
label42:
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
	bge a1, a3, label253
	li a0, 2147483647
	mv a3, zero
	li a4, 1000
	bge zero, a4, label503
	mv a5, a2
	li a3, 1
	lw a4, 0(a2)
	min a0, a0, a4
	li a4, 1000
	bge a3, a4, label503
	sh2add a5, a3, a2
	addiw a3, a3, 1
	lw a4, 0(a5)
	min a0, a0, a4
	li a4, 1000
	bge a3, a4, label503
	sh2add a5, a3, a2
	addiw a3, a3, 1
	lw a4, 0(a5)
	min a0, a0, a4
	li a4, 1000
	bge a3, a4, label503
	sh2add a5, a3, a2
	addiw a3, a3, 1
	lw a4, 0(a5)
	min a0, a0, a4
	li a4, 1000
	bge a3, a4, label503
	j label674
label33:
	sh2add a3, a2, a1
	lw a5, 0(a3)
	addiw a2, a2, 16
	lw t1, 4(a3)
	addw a4, a4, a5
	lw t0, 8(a3)
	addw a5, a4, t1
	lw t1, 12(a3)
	addw a4, a5, t0
	lw t0, 16(a3)
	addw a5, a4, t1
	lw t1, 20(a3)
	addw a4, a5, t0
	lw t0, 24(a3)
	addw a5, a4, t1
	lw t1, 28(a3)
	addw a4, a5, t0
	lw t0, 32(a3)
	addw a5, a4, t1
	lw t1, 36(a3)
	addw a4, a5, t0
	lw t0, 40(a3)
	addw a5, a4, t1
	lw t1, 44(a3)
	addw a4, a5, t0
	lw t0, 48(a3)
	addw a5, a4, t1
	lw t1, 52(a3)
	addw a4, a5, t0
	lw t0, 56(a3)
	addw a5, a4, t1
	addw a4, a5, t0
	lw a5, 60(a3)
	addw a3, a4, a5
	li a4, 992
	bge a2, a4, label36
	mv a4, a3
	j label33
label36:
	sh2add a1, a2, a1
	addiw a0, a0, 1
	lw a2, 0(a1)
	lw a4, 4(a1)
	addw a3, a3, a2
	addw a2, a3, a4
	lw a3, 8(a1)
	addw a4, a2, a3
	lw a2, 12(a1)
	addw a3, a4, a2
	lw a4, 16(a1)
	lw a5, 20(a1)
	addw a2, a3, a4
	lw a4, 24(a1)
	addw a3, a2, a5
	lw a1, 28(a1)
	addw a2, a3, a4
	addw s1, a2, a1
	li a1, 1000
	bge a0, a1, label31
	j label652
label256:
	li a2, 4000
	mul a3, a0, a2
	mv a2, zero
	add a1, s0, a3
	j label25
label27:
	li a4, 4000
	sh2add a1, a2, a1
	mul a5, a2, a4
	add a3, s0, a5
	add a2, a3, a4
	sh2add t0, a0, a3
	slli a4, a4, 1
	lw t1, 0(t0)
	subw a5, zero, t1
	sw a5, 0(a1)
	sh2add a5, a0, a2
	lw t0, 0(a5)
	add a5, a3, a4
	subw a2, zero, t0
	sw a2, 4(a1)
	sh2add a2, a0, a5
	lw t0, 0(a2)
	li a2, 12000
	subw a5, zero, t0
	add t0, a3, a2
	slli a2, a2, 1
	sw a5, 8(a1)
	sh2add a5, a0, t0
	lw t1, 0(a5)
	slli a5, a4, 1
	subw t0, zero, t1
	add a4, a3, a5
	li t1, 20000
	sw t0, 12(a1)
	sh2add t0, a0, a4
	lw a5, 0(t0)
	subw a4, zero, a5
	add a5, a3, t1
	sh2add t0, a0, a5
	sw a4, 16(a1)
	lw a4, 0(t0)
	add t0, a3, a2
	subw a5, zero, a4
	sh2add a4, a0, t0
	sw a5, 20(a1)
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
	bge a0, a1, label257
	j label256
label25:
	li a5, 4000
	mul a4, a2, a5
	add a3, s0, a4
	sh2add t2, a0, a3
	sh2add a4, a2, a1
	addiw a2, a2, 16
	lw t1, 0(t2)
	subw t0, zero, t1
	add t1, a3, a5
	slli a5, a5, 1
	sh2add t2, a0, t1
	sw t0, 0(a4)
	lw t0, 0(t2)
	subw t1, zero, t0
	add t0, a3, a5
	sw t1, 4(a4)
	sh2add t1, a0, t0
	lw t2, 0(t1)
	li t1, 12000
	subw t0, zero, t2
	add t2, a3, t1
	sh2add t3, a0, t2
	sw t0, 8(a4)
	lw t0, 0(t3)
	subw t2, zero, t0
	slli t0, a5, 1
	add t3, a3, t0
	sw t2, 12(a4)
	sh2add a5, a0, t3
	lw t2, 0(a5)
	li a5, 20000
	subw t3, zero, t2
	add t4, a3, a5
	slli a5, a5, 1
	sh2add t2, a0, t4
	sw t3, 16(a4)
	lw t3, 0(t2)
	slli t2, t1, 1
	subw t4, zero, t3
	add t1, a3, t2
	sh2add t3, a0, t1
	sw t4, 20(a4)
	lw t2, 0(t3)
	li t3, 28000
	subw t1, zero, t2
	add t2, a3, t3
	sw t1, 24(a4)
	sh2add t1, a0, t2
	lw t3, 0(t1)
	subw t2, zero, t3
	slli t3, t0, 1
	add t0, a3, t3
	sw t2, 28(a4)
	sh2add t1, a0, t0
	lw t2, 0(t1)
	li t1, 36000
	subw t0, zero, t2
	sw t0, 32(a4)
	add t0, a3, t1
	sh2add t2, a0, t0
	lw t1, 0(t2)
	subw t0, zero, t1
	add t1, a3, a5
	sw t0, 36(a4)
	sh2add t0, a0, t1
	lw a5, 0(t0)
	subw t1, zero, a5
	li a5, 44000
	add t0, a3, a5
	sw t1, 40(a4)
	sh2add t1, a0, t0
	lw a5, 0(t1)
	li t1, 48000
	subw t0, zero, a5
	sw t0, 44(a4)
	add t0, a3, t1
	sh2add a5, a0, t0
	lw t1, 0(a5)
	li a5, 52000
	subw t0, zero, t1
	add t1, a3, a5
	sh2add t2, a0, t1
	sw t0, 48(a4)
	lw t0, 0(t2)
	subw a5, zero, t0
	li t0, 56000
	add t1, a3, t0
	sw a5, 52(a4)
	sh2add t2, a0, t1
	lw a5, 0(t2)
	subw t0, zero, a5
	li a5, 60000
	add a3, a3, a5
	sw t0, 56(a4)
	sh2add t0, a0, a3
	lw a5, 0(t0)
	subw a3, zero, a5
	sw a3, 60(a4)
	li a3, 992
	bge a2, a3, label27
	j label25
label44:
	li a2, 4000
	mul a1, s3, a2
	add a0, s2, a1
	jal getarray
	li a1, 1000
	beq a0, a1, label45
	j label46
label45:
	addiw s3, s3, 1
	li a0, 1000
	bge s3, a0, label4
	j label44
label46:
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	ld s2, 32(sp)
	addi sp, sp, 40
	ret
label59:
	li a4, 4000
	mv a2, zero
	mul a3, a0, a4
	add a1, s1, a3
label8:
	li a5, 4000
	mul a3, a2, a5
	add a4, s2, a3
	sh2add t1, a0, a4
	add t2, a4, a5
	sh2add a3, a2, a1
	slli a5, a5, 1
	addiw a2, a2, 16
	lw t0, 0(t1)
	sw t0, 0(a3)
	sh2add t0, a0, t2
	lw t1, 0(t0)
	sw t1, 4(a3)
	add t1, a4, a5
	sh2add t0, a0, t1
	li t1, 12000
	lw t2, 0(t0)
	sw t2, 8(a3)
	add t2, a4, t1
	slli t1, t1, 1
	sh2add t0, a0, t2
	lw t3, 0(t0)
	slli t0, a5, 1
	add a5, a4, t0
	sw t3, 12(a3)
	sh2add t2, a0, a5
	li a5, 20000
	lw t3, 0(t2)
	sw t3, 16(a3)
	add t3, a4, a5
	slli a5, a5, 1
	sh2add t4, a0, t3
	lw t2, 0(t4)
	sw t2, 20(a3)
	add t2, a4, t1
	li t1, 28000
	sh2add t4, a0, t2
	add t2, a4, t1
	lw t3, 0(t4)
	sw t3, 24(a3)
	sh2add t3, a0, t2
	slli t2, t0, 1
	lw t1, 0(t3)
	add t0, a4, t2
	sw t1, 28(a3)
	sh2add t1, a0, t0
	li t0, 36000
	lw t2, 0(t1)
	sw t2, 32(a3)
	add t2, a4, t0
	sh2add t1, a0, t2
	li t2, 44000
	lw t0, 0(t1)
	add t1, a4, a5
	sw t0, 36(a3)
	sh2add t0, a0, t1
	add t1, a4, t2
	lw a5, 0(t0)
	sh2add t0, a0, t1
	sw a5, 40(a3)
	lw a5, 0(t0)
	li t0, 48000
	add t1, a4, t0
	sw a5, 44(a3)
	sh2add a5, a0, t1
	lw t0, 0(a5)
	li a5, 52000
	sw t0, 48(a3)
	add t0, a4, a5
	sh2add t1, a0, t0
	li t0, 56000
	lw a5, 0(t1)
	add t1, a4, t0
	sw a5, 52(a3)
	sh2add a5, a0, t1
	li t1, 60000
	lw t0, 0(a5)
	add a4, a4, t1
	sh2add a5, a0, a4
	sw t0, 56(a3)
	lw t0, 0(a5)
	sw t0, 60(a3)
	li a3, 992
	bge a2, a3, label10
	j label8
label10:
	li a4, 4000
	sh2add a1, a2, a1
	mul a5, a2, a4
	add a3, s2, a5
	sh2add t0, a0, a3
	lw a5, 0(t0)
	add t0, a3, a4
	slli a4, a4, 1
	sh2add a2, a0, t0
	sw a5, 0(a1)
	lw a5, 0(a2)
	add a2, a3, a4
	sh2add t0, a0, a2
	sw a5, 4(a1)
	li a2, 12000
	lw a5, 0(t0)
	add t1, a3, a2
	slli a2, a2, 1
	sh2add t0, a0, t1
	sw a5, 8(a1)
	lw a5, 0(t0)
	slli t0, a4, 1
	add t1, a3, t0
	sw a5, 12(a1)
	sh2add a4, a0, t1
	lw a5, 0(a4)
	li a4, 20000
	sw a5, 16(a1)
	add a5, a3, a4
	sh2add t0, a0, a5
	add a5, a3, a2
	lw a4, 0(t0)
	sw a4, 20(a1)
	sh2add a4, a0, a5
	lw a2, 0(a4)
	li a4, 28000
	sw a2, 24(a1)
	add a2, a3, a4
	sh2add a5, a0, a2
	addiw a0, a0, 1
	lw a3, 0(a5)
	sw a3, 28(a1)
	li a1, 1000
	bge a0, a1, label60
	j label59
