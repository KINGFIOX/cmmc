.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
tape:
	.zero	262144
.align 4
program:
	.zero	131072
.text
.globl main
main:
.p2align 2
	addi sp, sp, -40
	sd s0, 32(sp)
	sd s1, 24(sp)
	sd s2, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
	bgt a0, zero, label37
	mv a0, zero
pcrel171:
	auipc a2, %pcrel_hi(program)
	mv s2, zero
	addi a1, a2, %pcrel_lo(pcrel171)
	mv a0, a1
	mv s0, a1
	sw zero, 0(a1)
pcrel172:
	auipc a1, %pcrel_hi(tape)
	mv s3, zero
	addi s1, a1, %pcrel_lo(pcrel172)
	j label4
label37:
	auipc a1, %pcrel_hi(program)
	mv s2, zero
	addi s1, a1, %pcrel_lo(label37)
	j label32
label30:
	mv a0, zero
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
.p2align 2
label32:
	jal getch
	sh2add a1, s2, s1
	addiw s2, s2, 1
	sw a0, 0(a1)
	bgt s0, s2, label32
	mv a0, s0
pcrel173:
	auipc a2, %pcrel_hi(program)
	mv s2, zero
	addi a1, a2, %pcrel_lo(pcrel173)
	sh2add a0, s0, a1
	mv s0, a1
	sw zero, 0(a0)
pcrel174:
	auipc a1, %pcrel_hi(tape)
	mv s3, zero
	addi s1, a1, %pcrel_lo(pcrel174)
	mv a1, s0
	lw a0, 0(s0)
	bne a0, zero, label7
	j label30
.p2align 2
label4:
	sh2add a1, s3, s0
	lw a0, 0(a1)
	beq a0, zero, label30
.p2align 2
label7:
	li a1, 62
	beq a0, a1, label8
	li a1, 60
	beq a0, a1, label13
	li a1, 43
	beq a0, a1, label15
	j label16
.p2align 2
label8:
	addiw s2, s2, 1
.p2align 2
label9:
	addiw s3, s3, 1
	sh2add a1, s3, s0
	lw a0, 0(a1)
	bne a0, zero, label7
	j label30
.p2align 2
label13:
	addiw s2, s2, -1
	addiw s3, s3, 1
	sh2add a1, s3, s0
	lw a0, 0(a1)
	bne a0, zero, label7
	j label30
label16:
	li a1, 45
	beq a0, a1, label73
	li a1, 46
	beq a0, a1, label28
	li a1, 44
	beq a0, a1, label27
	li a1, 93
	beq a0, a1, label20
	j label9
label27:
	jal getch
	sh2add a1, s2, s1
	sw a0, 0(a1)
	j label9
label20:
	sh2add a0, s2, s1
	lw a1, 0(a0)
	beq a1, zero, label9
	li a0, 1
label21:
	ble a0, zero, label9
	addiw s3, s3, -1
	li a2, 91
	sh2add a3, s3, s0
	lw a1, 0(a3)
	beq a1, a2, label25
	j label103
label15:
	sh2add a0, s2, s1
	lw a2, 0(a0)
	addi a1, a2, 1
	sw a1, 0(a0)
	j label9
label103:
	xori a2, a1, 93
	sltiu a1, a2, 1
	addw a0, a0, a1
	j label21
label25:
	addiw a0, a0, -1
	j label21
label73:
	sh2add a0, s2, s1
	lw a1, 0(a0)
	addi a2, a1, -1
	sw a2, 0(a0)
	j label9
label28:
	sh2add a1, s2, s1
	lw a0, 0(a1)
	jal putch
	j label9
