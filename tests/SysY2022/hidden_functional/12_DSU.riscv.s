.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
fa:
	.zero	400020
.text
find:
.p2align 2
	addi sp, sp, -48
pcrel73:
	auipc a1, %pcrel_hi(fa)
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	addi a0, a1, %pcrel_lo(pcrel73)
	sd s2, 24(sp)
	sh2add a1, s0, a0
	mv s1, a0
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	lw s2, 0(a1)
	bne s0, s2, label4
	mv a0, s0
label2:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label4:
	sh2add a1, s2, s1
	lw s3, 0(a1)
	bne s2, s3, label7
	mv a0, s2
	sh2add a1, s0, s1
	sw s2, 0(a1)
	j label2
label7:
	sh2add a1, s3, s1
	lw s4, 0(a1)
	bne s3, s4, label10
	mv a0, s3
	sh2add a1, s2, s1
	sw s3, 0(a1)
	sh2add a1, s0, s1
	sw s3, 0(a1)
	j label2
label10:
	sh2add a1, s4, s1
	lw a0, 0(a1)
	bne s4, a0, label13
	mv a0, s4
	sh2add a1, s3, s1
	sw s4, 0(a1)
	sh2add a1, s2, s1
	sw s4, 0(a1)
	sh2add a1, s0, s1
	sw s4, 0(a1)
	j label2
label13:
	jal find
	sh2add a1, s4, s1
	sw a0, 0(a1)
	sh2add a1, s3, s1
	sw a0, 0(a1)
	sh2add a1, s2, s1
	sw a0, 0(a1)
	sh2add a1, s0, s1
	sw a0, 0(a1)
	j label2
.globl main
main:
.p2align 2
	addi sp, sp, -56
	sd s0, 48(sp)
	sd s5, 40(sp)
	sd s1, 32(sp)
	sd s2, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label154
	mv s0, zero
	li a2, 10
	bltu a1, a2, label167
.p2align 2
label480:
	mv s2, zero
	j label84
label154:
	mv s1, a0
	mv s2, zero
.p2align 2
label75:
	jal getch
	li s0, 1
	li a2, 45
	addiw a1, a0, -48
	beq s1, a2, label450
	mv s0, s2
.p2align 2
label450:
	li a2, 9
	bgtu a1, a2, label162
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label167
	j label480
label162:
	mv s1, a0
	mv s2, s0
	j label75
label167:
	mv s1, a0
	mv s2, zero
.p2align 2
label81:
	jal getch
	sh2add a2, s2, s2
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s2, s1, a3
	bgeu a1, a2, label84
	mv s1, a0
	j label81
label84:
	jal getch
	subw a2, zero, s2
	addiw a1, a0, -48
	mv s1, a2
	bne s0, zero, label452
	mv s1, s2
label452:
	li a2, 9
	bgtu a1, a2, label185
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label198
	mv s3, zero
	mv a1, zero
	mv a0, zero
label505:
	mv a0, s3
	j label456
label185:
	mv s2, a0
	mv s3, zero
.p2align 2
label86:
	jal getch
	li s0, 1
	li a2, 45
	addiw a1, a0, -48
	beq s2, a2, label454
	mv s0, s3
.p2align 2
label454:
	li a2, 9
	bgtu a1, a2, label193
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label198
	mv s3, zero
	mv a1, zero
	mv a0, zero
	bne s0, zero, label456
	j label505
label193:
	mv s2, a0
	mv s3, s0
	j label86
label198:
	mv s2, a0
	mv s3, zero
.p2align 2
label92:
	jal getch
	sh2add a3, s3, s3
	addiw a1, a0, -48
	slliw a4, a3, 1
	li a3, 10
	addi a2, a4, -48
	addw s3, s2, a2
	bltu a1, a3, label207
	subw a1, zero, s3
	mv a0, a1
	bne s0, zero, label456
	j label505
label207:
	mv s2, a0
	j label92
label456:
	auipc a1, %pcrel_hi(fa)
	addi s0, a1, %pcrel_lo(label456)
	bgt s1, zero, label216
	mv s1, a0
	bne a0, zero, label99
	j label147
.p2align 2
label216:
	li a1, 1
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge s1, a1, label148
	mv s1, a0
	bne a0, zero, label99
	j label147
.p2align 2
label148:
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge s1, a1, label148
	mv s1, a0
	bne a0, zero, label99
label147:
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s5, 40(sp)
	ld s0, 48(sp)
	addi sp, sp, 56
	ret
.p2align 2
label99:
	jal getch
	xori a2, a0, 85
	xori a3, a0, 81
	sltu a1, zero, a3
	sltu a3, zero, a2
	and a1, a1, a3
	bne a1, zero, label99
	li a1, 81
	bne a0, a1, label101
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label304
	mv s3, zero
	li a2, 10
	bltu a1, a2, label317
.p2align 2
label498:
	mv s4, zero
	j label134
.p2align 2
label304:
	mv s4, a0
	mv s2, zero
.p2align 2
label125:
	jal getch
	li s3, 1
	li a2, 45
	addiw a1, a0, -48
	beq s4, a2, label466
	mv s3, s2
.p2align 2
label466:
	li a2, 9
	bgtu a1, a2, label312
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label317
	j label498
.p2align 2
label312:
	mv s4, a0
	mv s2, s3
	j label125
.p2align 2
label317:
	mv s2, a0
	mv s4, zero
.p2align 2
label131:
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s4, s2, a3
	bgeu a1, a2, label134
	mv s2, a0
	j label131
.p2align 2
label134:
	jal getch
	subw a2, zero, s4
	addiw a1, a0, -48
	mv s2, a2
	bne s3, zero, label468
	mv s2, s4
.p2align 2
label468:
	li a2, 9
	bgtu a1, a2, label335
	mv s3, zero
	addiw a1, a0, -48
	li a3, 10
	bltu a1, a3, label348
.p2align 2
label500:
	mv a2, zero
	j label145
.p2align 2
label335:
	mv s4, a0
	mv s3, zero
.p2align 2
label136:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s4, a3, label470
	mv a2, s3
.p2align 2
label470:
	li a3, 9
	bgtu a1, a3, label343
	mv s3, a2
	addiw a1, a0, -48
	li a3, 10
	bltu a1, a3, label348
	j label500
.p2align 2
label343:
	mv s4, a0
	mv s3, a2
	j label136
.p2align 2
label348:
	mv s4, a0
	mv s5, zero
.p2align 2
label142:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	li a3, 10
	addw a2, s4, a4
	bgeu a1, a3, label145
	mv s4, a0
	mv s5, a2
	j label142
.p2align 2
label145:
	mv a0, s2
	jal find
	subw a1, zero, a2
	mv a3, a0
	mv a0, a1
	bne s3, zero, label472
	mv a0, a2
.p2align 2
label472:
	jal find
	xor a1, a3, a0
	sltiu a0, a1, 1
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, -1
	bne s1, zero, label99
	j label147
.p2align 2
label101:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label237
	mv s2, zero
	li a2, 10
	bltu a1, a2, label250
	mv s4, zero
	mv a1, zero
	mv a0, zero
.p2align 2
label508:
	mv a0, s4
	j label460
.p2align 2
label237:
	mv s3, a0
	mv s2, zero
.p2align 2
label102:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s3, a3, label458
	mv a2, s2
.p2align 2
label458:
	li a3, 9
	bgtu a1, a3, label245
	mv s2, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label250
	mv s4, zero
	mv a1, zero
	mv a0, zero
	bne s2, zero, label460
	j label508
.p2align 2
label245:
	mv s3, a0
	mv s2, a2
	j label102
.p2align 2
label250:
	mv s3, a0
	mv s4, zero
.p2align 2
label108:
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s4, s3, a3
	bltu a1, a2, label259
	subw a1, zero, s4
	mv a0, a1
	bne s2, zero, label460
	j label508
.p2align 2
label259:
	mv s3, a0
	j label108
.p2align 2
label460:
	jal find
	mv s2, a0
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label269
	mv s3, zero
	li a2, 10
	bltu a1, a2, label282
	mv s5, zero
	mv a1, zero
	mv a0, zero
.p2align 2
label510:
	mv a0, s5
	j label464
.p2align 2
label269:
	mv s4, a0
	mv s3, zero
.p2align 2
label113:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s4, a3, label462
	mv a2, s3
.p2align 2
label462:
	li a3, 9
	bgtu a1, a3, label277
	mv s3, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label282
	mv s5, zero
	mv a1, zero
	mv a0, zero
	bne s3, zero, label464
	j label510
.p2align 2
label277:
	mv s4, a0
	mv s3, a2
	j label113
.p2align 2
label282:
	mv s4, a0
	mv s5, zero
.p2align 2
label119:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s5, s4, a4
	bltu a1, a2, label291
	subw a1, zero, s5
	mv a0, a1
	bne s3, zero, label464
	j label510
.p2align 2
label291:
	mv s4, a0
	j label119
.p2align 2
label464:
	jal find
	addiw s1, s1, -1
	sh2add a1, s2, s0
	sw a0, 0(a1)
	bne s1, zero, label99
	j label147
