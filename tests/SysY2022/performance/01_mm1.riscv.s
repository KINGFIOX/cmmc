.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
A:
	.zero	4194304
.align 4
B:
	.zero	4194304
.align 4
C:
	.zero	4194304
.text
.globl main
main:
	addi sp, sp, -64
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s2, 40(sp)
	sd s1, 32(sp)
	sd s6, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
pcrel1578:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel1578)
pcrel1579:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel1579)
pcrel1580:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel1580)
	mv s4, zero
	bge zero, s0, label126
	ble s0, zero, label8
	slli a0, zero, 12
	add s6, s2, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	j label1506
label126:
	mv s4, zero
	bge zero, s0, label11
	ble s0, zero, label114
	slli a0, zero, 12
	add s6, s1, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	j label1444
label11:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	mv a1, zero
	bge zero, s0, label148
	slliw a2, zero, 12
	add a3, s3, a2
	ble s0, zero, label28
	mv a2, zero
	addiw a4, zero, 16
	bge a4, s0, label20
	j label19
label148:
	mv a1, zero
	slliw a2, zero, 12
	add a3, s1, a2
	bge zero, s0, label233
	mv a2, zero
	bge zero, s0, label33
	slliw a4, zero, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a2, zero, 1
	bge a2, s0, label33
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a2, a2, 1
	bge a2, s0, label33
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a2, a2, 1
	bge a2, s0, label33
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label35
	j label1426
label20:
	addiw a4, a2, 16
	bge a4, s0, label22
	j label27
label233:
	mv a1, zero
	bge zero, s0, label589
	slliw a2, zero, 12
	add a3, s1, a2
	ble s0, zero, label109
	mv a2, zero
	addiw a4, zero, 16
	bge a4, s0, label100
	j label108
label1426:
	addiw a2, a2, 1
	bge a2, s0, label33
label1456:
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label35
	j label1486
label33:
	addiw a1, a1, 1
	slliw a2, a1, 12
	add a3, s1, a2
	bge a1, s0, label233
	mv a2, zero
	bge zero, s0, label33
	slliw a4, zero, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a2, zero, 1
	bge a2, s0, label33
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a2, a2, 1
	bge a2, s0, label33
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a2, a2, 1
	bge a2, s0, label33
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a2, a2, 1
	bge a2, s0, label33
	j label1456
label1444:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	j label1474
label1486:
	addiw a2, a2, 1
	bge a2, s0, label33
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label35
	j label1486
label35:
	ble s0, zero, label51
	slliw a4, a2, 12
	add a4, s3, a4
	li a5, 16
	ble s0, a5, label255
	j label1237
label44:
	slli t2, t1, 2
	add t2, a4, t2
	lw t3, 0(t2)
	slli t4, t1, 2
	add t4, a3, t4
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label51
	j label44
label51:
	addiw a2, a2, 1
	bge a2, s0, label33
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a2, a2, 1
	bge a2, s0, label33
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a2, a2, 1
	bge a2, s0, label33
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a2, a2, 1
	bge a2, s0, label33
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a2, a2, 1
	bge a2, s0, label33
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label35
	j label1486
label19:
	slli a2, a2, 2
	add a2, a3, a2
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
	mv a2, a4
	addiw a4, a4, 16
	bge a4, s0, label20
	j label19
label589:
	mv a1, zero
	slliw a2, zero, 12
	add a3, s3, a2
	bge zero, s0, label77
	mv a2, zero
	bge zero, s0, label76
	slliw a4, zero, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	addiw a2, zero, 1
	bge a2, s0, label76
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	addiw a2, a2, 1
	bge a2, s0, label76
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	addiw a2, a2, 1
	bge a2, s0, label76
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	j label1522
label77:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label952
	mv a1, zero
	bge zero, s0, label148
	slliw a2, zero, 12
	add a3, s3, a2
	ble s0, zero, label28
	mv a2, zero
	addiw a4, zero, 16
	bge a4, s0, label20
	j label19
label952:
	mv a2, zero
	mv s2, zero
	bge zero, s0, label81
	ble s0, zero, label83
	slli a0, zero, 12
	add a4, s1, a0
	mv a1, zero
	mv a0, zero
	addiw a3, zero, 16
	bge a3, s0, label89
	j label96
label81:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s2, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
label1292:
	slli a5, a1, 2
	add a5, t1, a5
	lw t2, 0(a5)
	li a5, 16
	mv t4, zero
	j label63
label59:
	addiw a2, a2, 1
	bge a2, s0, label76
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	addiw a2, a2, 1
	bge a2, s0, label76
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	addiw a2, a2, 1
	bge a2, s0, label76
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	addiw a2, a2, 1
	bge a2, s0, label76
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	addiw a2, a2, 1
	bge a2, s0, label76
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	j label1493
label60:
	ble s0, zero, label59
	slliw a4, a2, 12
	add a4, s1, a4
	li a5, 16
	ble s0, a5, label617
	j label1292
label835:
	mv t1, t3
	j label74
label73:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 12(t2)
	lw t4, 16(t2)
	lw t5, 16(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 16(t2)
	lw t4, 20(t2)
	lw t5, 20(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 20(t2)
	lw t4, 24(t2)
	lw t5, 24(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 24(t2)
	lw t4, 28(t2)
	lw t5, 28(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 28(t2)
	lw t4, 32(t2)
	lw t5, 32(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 32(t2)
	lw t4, 36(t2)
	lw t5, 36(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 36(t2)
	lw t4, 40(t2)
	lw t5, 40(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 40(t2)
	lw t4, 44(t2)
	lw t5, 44(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 44(t2)
	lw t4, 48(t2)
	lw t5, 48(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 48(t2)
	lw t4, 52(t2)
	lw t5, 52(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 52(t2)
	lw t4, 56(t2)
	lw t5, 56(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 56(t2)
	lw t4, 60(t2)
	lw t3, 60(t3)
	mulw t3, a5, t3
	addw t3, t3, t4
	sw t3, 60(t2)
	mv t3, t1
	addiw t1, t1, 16
	bge t1, s0, label835
	j label73
label74:
	slli t2, t1, 2
	add t2, a4, t2
	lw t3, 0(t2)
	slli t4, t1, 2
	add t4, a3, t4
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label59
	j label74
label1522:
	addiw a2, a2, 1
	bge a2, s0, label76
label1463:
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label60
label1493:
	addiw a2, a2, 1
	bge a2, s0, label76
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	j label1493
label76:
	addiw a1, a1, 1
	slliw a2, a1, 12
	add a3, s3, a2
	bge a1, s0, label77
	mv a2, zero
	bge zero, s0, label76
	slliw a4, zero, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	addiw a2, zero, 1
	bge a2, s0, label76
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	addiw a2, a2, 1
	bge a2, s0, label76
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	addiw a2, a2, 1
	bge a2, s0, label76
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	addiw a2, a2, 1
	bge a2, s0, label76
	j label1463
label104:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label109
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label109
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label109
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label109
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label109
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label109
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label109
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label109
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label109
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label109
	j label1531
label109:
	addiw a1, a1, 1
	bge a1, s0, label589
	slliw a2, a1, 12
	add a3, s1, a2
	ble s0, zero, label109
	mv a2, zero
	addiw a4, zero, 16
	bge a4, s0, label100
	j label108
label1531:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label109
	j label1531
label1514:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	j label1514
label28:
	addiw a1, a1, 1
	bge a1, s0, label148
	slliw a2, a1, 12
	add a3, s3, a2
	ble s0, zero, label28
	mv a2, zero
	addiw a4, zero, 16
	bge a4, s0, label20
	j label19
label1237:
	slli a5, a1, 2
	add a5, t1, a5
	lw t2, 0(a5)
	li a5, 16
	mv t4, zero
	j label48
label255:
	mv t3, zero
	slli a5, a1, 2
	add a5, t1, a5
	lw a5, 0(a5)
	addiw t1, zero, 16
	bge t1, s0, label42
	j label41
label42:
	addiw t1, t3, 16
	bge t1, s0, label366
label46:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 12(t2)
	lw t4, 16(t2)
	lw t5, 16(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 16(t2)
	lw t4, 20(t2)
	lw t5, 20(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 20(t2)
	lw t4, 24(t2)
	lw t5, 24(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 24(t2)
	lw t4, 28(t2)
	lw t5, 28(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 28(t2)
	lw t4, 32(t2)
	lw t5, 32(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 32(t2)
	lw t4, 36(t2)
	lw t5, 36(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 36(t2)
	lw t4, 40(t2)
	lw t5, 40(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 40(t2)
	lw t4, 44(t2)
	lw t5, 44(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 44(t2)
	lw t4, 48(t2)
	lw t5, 48(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 48(t2)
	lw t4, 52(t2)
	lw t5, 52(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 52(t2)
	lw t4, 56(t2)
	lw t5, 56(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 56(t2)
	lw t4, 60(t2)
	lw t3, 60(t3)
	mulw t3, a5, t3
	addw t3, t3, t4
	sw t3, 60(t2)
	mv t3, t1
	addiw t1, t1, 16
	bge t1, s0, label366
	j label46
label41:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 12(t2)
	lw t4, 16(t2)
	lw t5, 16(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 16(t2)
	lw t4, 20(t2)
	lw t5, 20(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 20(t2)
	lw t4, 24(t2)
	lw t5, 24(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 24(t2)
	lw t4, 28(t2)
	lw t5, 28(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 28(t2)
	lw t4, 32(t2)
	lw t5, 32(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 32(t2)
	lw t4, 36(t2)
	lw t5, 36(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 36(t2)
	lw t4, 40(t2)
	lw t5, 40(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 40(t2)
	lw t4, 44(t2)
	lw t5, 44(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 44(t2)
	lw t4, 48(t2)
	lw t5, 48(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 48(t2)
	lw t4, 52(t2)
	lw t5, 52(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 52(t2)
	lw t4, 56(t2)
	lw t5, 56(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 56(t2)
	lw t4, 60(t2)
	lw t3, 60(t3)
	mulw t3, a5, t3
	addw t3, t3, t4
	sw t3, 60(t2)
	mv t3, t1
	addiw t1, t1, 16
	bge t1, s0, label42
	j label41
label48:
	slli t3, t4, 2
	add t3, a4, t3
	lw t5, 0(t3)
	slli t4, t4, 2
	add t4, a3, t4
	lw t6, 0(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 0(t3)
	lw t5, 4(t3)
	lw t6, 4(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 4(t3)
	lw t5, 8(t3)
	lw t6, 8(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 8(t3)
	lw t5, 12(t3)
	lw t6, 12(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 12(t3)
	lw t5, 16(t3)
	lw t6, 16(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 16(t3)
	lw t5, 20(t3)
	lw t6, 20(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 20(t3)
	lw t5, 24(t3)
	lw t6, 24(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 24(t3)
	lw t5, 28(t3)
	lw t6, 28(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 28(t3)
	lw t5, 32(t3)
	lw t6, 32(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 32(t3)
	lw t5, 36(t3)
	lw t6, 36(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 36(t3)
	lw t5, 40(t3)
	lw t6, 40(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 40(t3)
	lw t5, 44(t3)
	lw t6, 44(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 44(t3)
	lw t5, 48(t3)
	lw t6, 48(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 48(t3)
	lw t5, 52(t3)
	lw t6, 52(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 52(t3)
	lw t5, 56(t3)
	lw t6, 56(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 56(t3)
	lw t5, 60(t3)
	lw t4, 60(t4)
	mulw t4, t2, t4
	addw t4, t4, t5
	sw t4, 60(t3)
	addiw t3, a5, 16
	bge t3, s0, label583
	mv t4, a5
	mv a5, t3
	j label48
label583:
	mv t3, a5
	slli a5, a1, 2
	add a5, t1, a5
	lw a5, 0(a5)
	addiw t1, t3, 16
	bge t1, s0, label42
	j label41
label366:
	mv t1, t3
	j label44
label63:
	slli t3, t4, 2
	add t3, a4, t3
	lw t5, 0(t3)
	slli t4, t4, 2
	add t4, a3, t4
	lw t6, 0(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 0(t3)
	lw t5, 4(t3)
	lw t6, 4(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 4(t3)
	lw t5, 8(t3)
	lw t6, 8(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 8(t3)
	lw t5, 12(t3)
	lw t6, 12(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 12(t3)
	lw t5, 16(t3)
	lw t6, 16(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 16(t3)
	lw t5, 20(t3)
	lw t6, 20(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 20(t3)
	lw t5, 24(t3)
	lw t6, 24(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 24(t3)
	lw t5, 28(t3)
	lw t6, 28(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 28(t3)
	lw t5, 32(t3)
	lw t6, 32(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 32(t3)
	lw t5, 36(t3)
	lw t6, 36(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 36(t3)
	lw t5, 40(t3)
	lw t6, 40(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 40(t3)
	lw t5, 44(t3)
	lw t6, 44(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 44(t3)
	lw t5, 48(t3)
	lw t6, 48(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 48(t3)
	lw t5, 52(t3)
	lw t6, 52(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 52(t3)
	lw t5, 56(t3)
	lw t6, 56(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 56(t3)
	lw t5, 60(t3)
	lw t4, 60(t4)
	mulw t4, t2, t4
	addw t4, t4, t5
	sw t4, 60(t3)
	addiw t3, a5, 16
	bge t3, s0, label723
	mv t4, a5
	mv a5, t3
	j label63
label723:
	mv t3, a5
	slli a5, a1, 2
	add a5, t1, a5
	lw a5, 0(a5)
	addiw t1, t3, 16
	bge t1, s0, label71
	j label70
label71:
	addiw t1, t3, 16
	bge t1, s0, label835
	j label73
label70:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 12(t2)
	lw t4, 16(t2)
	lw t5, 16(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 16(t2)
	lw t4, 20(t2)
	lw t5, 20(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 20(t2)
	lw t4, 24(t2)
	lw t5, 24(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 24(t2)
	lw t4, 28(t2)
	lw t5, 28(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 28(t2)
	lw t4, 32(t2)
	lw t5, 32(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 32(t2)
	lw t4, 36(t2)
	lw t5, 36(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 36(t2)
	lw t4, 40(t2)
	lw t5, 40(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 40(t2)
	lw t4, 44(t2)
	lw t5, 44(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 44(t2)
	lw t4, 48(t2)
	lw t5, 48(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 48(t2)
	lw t4, 52(t2)
	lw t5, 52(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 52(t2)
	lw t4, 56(t2)
	lw t5, 56(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 56(t2)
	lw t4, 60(t2)
	lw t3, 60(t3)
	mulw t3, a5, t3
	addw t3, t3, t4
	sw t3, 60(t2)
	mv t3, t1
	addiw t1, t1, 16
	bge t1, s0, label71
	j label70
label617:
	mv t3, zero
	slli a5, a1, 2
	add a5, t1, a5
	lw a5, 0(a5)
	addiw t1, zero, 16
	bge t1, s0, label71
	j label70
label1506:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
label1450:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
label1510:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	j label1510
label1474:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	j label1504
label114:
	addiw s4, s4, 1
	bge s4, s0, label11
	ble s0, zero, label114
	slli a0, s4, 12
	add s6, s1, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	j label1474
label1504:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
label1534:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	j label1534
label8:
	addiw s4, s4, 1
	bge s4, s0, label126
	ble s0, zero, label8
	slli a0, s4, 12
	add s6, s2, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	j label1450
label100:
	addiw a4, a2, 16
	bge a4, s0, label102
label107:
	slli a2, a2, 2
	add a2, a3, a2
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
	mv a2, a4
	addiw a4, a4, 16
	bge a4, s0, label102
	j label107
label102:
	addiw a4, a2, 16
	bge a4, s0, label104
	j label106
label22:
	addiw a4, a2, 16
	bge a4, s0, label24
label26:
	slli a2, a2, 2
	add a2, a3, a2
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
	mv a2, a4
	addiw a4, a4, 16
	bge a4, s0, label24
	j label26
label24:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	j label1514
label108:
	slli a2, a2, 2
	add a2, a3, a2
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
	mv a2, a4
	addiw a4, a4, 16
	bge a4, s0, label100
	j label108
label106:
	slli a2, a2, 2
	add a2, a3, a2
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
	mv a2, a4
	addiw a4, a4, 16
	bge a4, s0, label104
	j label106
label27:
	slli a2, a2, 2
	add a2, a3, a2
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
	mv a2, a4
	addiw a4, a4, 16
	bge a4, s0, label22
	j label27
label89:
	addiw a3, a0, 16
	bge a3, s0, label92
label95:
	slli a0, a0, 2
	add a0, a4, a0
	lw t1, 0(a0)
	lw a5, 4(a0)
	addw a1, a1, t1
	addw a1, a1, a5
	lw a5, 8(a0)
	addw a1, a1, a5
	lw a5, 12(a0)
	addw a1, a1, a5
	lw a5, 16(a0)
	addw a1, a1, a5
	lw a5, 20(a0)
	addw a1, a1, a5
	lw a5, 24(a0)
	addw a1, a1, a5
	lw a5, 28(a0)
	addw a1, a1, a5
	lw a5, 32(a0)
	addw a1, a1, a5
	lw a5, 36(a0)
	addw a1, a1, a5
	lw a5, 40(a0)
	addw a1, a1, a5
	lw a5, 44(a0)
	addw a1, a1, a5
	lw a5, 48(a0)
	addw a1, a1, a5
	lw a5, 52(a0)
	addw a1, a1, a5
	lw a5, 56(a0)
	addw a1, a1, a5
	lw a0, 60(a0)
	addw a1, a1, a0
	mv a0, a3
	addiw a3, a3, 16
	bge a3, s0, label92
	j label95
label92:
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a1, a1, a3
	addiw a0, a0, 1
	bge a0, s0, label981
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a1, a1, a3
	addiw a0, a0, 1
	bge a0, s0, label981
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a1, a1, a3
	addiw a0, a0, 1
	bge a0, s0, label981
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a1, a1, a3
	addiw a0, a0, 1
	bge a0, s0, label981
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a1, a1, a3
	addiw a0, a0, 1
	bge a0, s0, label981
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a1, a1, a3
	addiw a0, a0, 1
	bge a0, s0, label981
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a1, a1, a3
	addiw a0, a0, 1
	bge a0, s0, label981
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a1, a1, a3
	addiw a0, a0, 1
	bge a0, s0, label981
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a1, a1, a3
	addiw a0, a0, 1
	bge a0, s0, label981
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a1, a1, a3
	addiw a0, a0, 1
	bge a0, s0, label981
	j label1530
label981:
	mv s2, a1
	addiw a2, a2, 1
	bge a2, s0, label81
	ble s0, zero, label83
	slli a0, a2, 12
	add a4, s1, a0
	mv a0, zero
	addiw a3, zero, 16
	bge a3, s0, label89
	j label96
label1530:
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a1, a1, a3
	addiw a0, a0, 1
	bge a0, s0, label981
	j label1530
label96:
	slli a0, a0, 2
	add a0, a4, a0
	lw a5, 0(a0)
	lw t1, 4(a0)
	addw a1, a1, a5
	addw a1, a1, t1
	lw a5, 8(a0)
	addw a1, a1, a5
	lw a5, 12(a0)
	addw a1, a1, a5
	lw a5, 16(a0)
	addw a1, a1, a5
	lw a5, 20(a0)
	addw a1, a1, a5
	lw a5, 24(a0)
	addw a1, a1, a5
	lw a5, 28(a0)
	addw a1, a1, a5
	lw a5, 32(a0)
	addw a1, a1, a5
	lw a5, 36(a0)
	addw a1, a1, a5
	lw a5, 40(a0)
	addw a1, a1, a5
	lw a5, 44(a0)
	addw a1, a1, a5
	lw a5, 48(a0)
	addw a1, a1, a5
	lw a5, 52(a0)
	addw a1, a1, a5
	lw a5, 56(a0)
	addw a1, a1, a5
	lw a0, 60(a0)
	addw a1, a1, a0
	mv a0, a3
	addiw a3, a3, 16
	bge a3, s0, label89
	j label96
label83:
	addiw a2, a2, 1
	bge a2, s0, label81
	ble s0, zero, label83
	slli a0, a2, 12
	add a4, s1, a0
	mv a1, s2
	mv a0, zero
	addiw a3, zero, 16
	bge a3, s0, label89
	j label96
