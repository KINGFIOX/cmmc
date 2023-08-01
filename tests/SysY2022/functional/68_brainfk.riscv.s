.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
tape:
	.zero	262144
.align 8
program:
	.zero	131072
.text
.p2align 2
.globl main
main:
	addi sp, sp, -40
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s0, 16(sp)
	sd s2, 24(sp)
	sd s3, 32(sp)
	jal getint
	mv s1, a0
pcrel188:
	auipc a0, %pcrel_hi(program)
	addi s0, a0, %pcrel_lo(pcrel188)
	ble s1, zero, label37
	mv s2, zero
	j label31
label4:
	sh2add a1, s3, s0
	lw a0, 0(a1)
	bne a0, zero, label7
	j label30
.p2align 2
label31:
	jal getch
	sh2add a1, s2, s0
	addiw s2, s2, 1
	sw a0, 0(a1)
	bgt s1, s2, label31
	sh2add a0, s1, s0
pcrel189:
	auipc a1, %pcrel_hi(tape)
	mv s2, zero
	addi s1, a1, %pcrel_lo(pcrel189)
	sw zero, 0(a0)
	mv s3, zero
	j label4
.p2align 2
label7:
	li a1, 62
	bne a0, a1, label52
	addiw s2, s2, 1
.p2align 2
label9:
	addiw s3, s3, 1
	sh2add a1, s3, s0
	lw a0, 0(a1)
	bne a0, zero, label7
label30:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 40
	ret
.p2align 2
label52:
	li a1, 60
	bne a0, a1, label160
	addiw s2, s2, -1
	addiw s3, s3, 1
	sh2add a1, s3, s0
	lw a0, 0(a1)
	bne a0, zero, label7
	j label30
.p2align 2
label160:
	li a1, 43
	bne a0, a1, label170
	sh2add a0, s2, s1
	lw a1, 0(a0)
	addi a2, a1, 1
	sw a2, 0(a0)
	addiw s3, s3, 1
	sh2add a1, s3, s0
	lw a0, 0(a1)
	bne a0, zero, label7
	j label30
.p2align 2
label170:
	li a1, 45
	beq a0, a1, label29
	li a1, 46
	beq a0, a1, label28
	li a1, 44
	bne a0, a1, label19
	jal getch
	sh2add a1, s2, s1
	sw a0, 0(a1)
	j label9
label19:
	li a1, 93
	bne a0, a1, label9
	sh2add a0, s2, s1
	lw a1, 0(a0)
	beq a1, zero, label9
	mv a1, s3
	li a0, 1
	bgt a0, zero, label24
label94:
	mv s3, a1
	j label9
.p2align 2
label24:
	addiw a1, a1, -1
	li a3, 91
	sh2add a4, a1, s0
	lw a2, 0(a4)
	beq a2, a3, label26
	xori a2, a2, 93
	sltiu a3, a2, 1
	addw a0, a0, a3
	bgt a0, zero, label24
	j label94
.p2align 2
label26:
	addiw a0, a0, -1
	bgt a0, zero, label24
	j label94
label29:
	sh2add a0, s2, s1
	lw a1, 0(a0)
	addi a2, a1, -1
	sw a2, 0(a0)
	addiw s3, s3, 1
	sh2add a1, s3, s0
	lw a0, 0(a1)
	bne a0, zero, label7
	j label30
label28:
	sh2add a1, s2, s1
	lw a0, 0(a1)
	jal putch
	addiw s3, s3, 1
	sh2add a1, s3, s0
	lw a0, 0(a1)
	bne a0, zero, label7
	j label30
label37:
	mv s1, zero
	mv a0, s0
pcrel190:
	auipc a1, %pcrel_hi(tape)
	mv s2, zero
	addi s1, a1, %pcrel_lo(pcrel190)
	sw zero, 0(s0)
	mv s3, zero
	j label4
