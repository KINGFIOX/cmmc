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
pcrel1233:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel1233)
pcrel1234:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel1234)
pcrel1235:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel1235)
	mv s5, zero
	bge zero, s0, label126
	ble s0, zero, label8
	slli a0, zero, 12
	add s4, s2, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	j label1095
label126:
	mv s4, zero
	bge zero, s0, label16
	ble s0, zero, label15
	slli a0, zero, 12
	add s5, s1, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	j label989
label16:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	mv a2, zero
	bge zero, s0, label162
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label33
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label24
	sh2add a4, zero, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label24
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label24
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label24
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label24
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label24
	j label1049
label162:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s1, a1
	bge zero, s0, label211
	mv a3, zero
	bge zero, s0, label38
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label40
	addiw a3, zero, 1
	bge a3, s0, label38
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label40
	addiw a3, a3, 1
	bge a3, s0, label38
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label40
	addiw a3, a3, 1
	bge a3, s0, label38
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label40
	addiw a3, a3, 1
	bge a3, s0, label38
	j label1007
label211:
	mv a2, zero
	bge zero, s0, label351
	slliw a1, zero, 12
	add a1, s1, a1
	ble s0, zero, label103
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label107
	sh2add a4, zero, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label107
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label107
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label107
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label107
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label107
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label107
	j label969
label1007:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label40
	j label1065
label38:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s1, a1
	bge a2, s0, label211
	mv a3, zero
	bge zero, s0, label38
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label40
	addiw a3, zero, 1
	bge a3, s0, label38
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label40
	addiw a3, a3, 1
	bge a3, s0, label38
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label40
	addiw a3, a3, 1
	bge a3, s0, label38
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label40
	addiw a3, a3, 1
	bge a3, s0, label38
	j label1007
label40:
	ble s0, zero, label56
	slliw a4, a3, 12
	add a4, s3, a4
	li t1, 4
	ble s0, t1, label233
	sh2add t1, a2, a5
	lw t1, 0(t1)
	li t2, 4
	mv t4, zero
	j label53
label233:
	mv t3, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t1, zero, 4
	bge t1, s0, label46
	j label51
label351:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s3, a1
	bge zero, s0, label61
	mv a3, zero
	bge zero, s0, label83
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label86
	addiw a3, zero, 1
	bge a3, s0, label83
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label86
	addiw a3, a3, 1
	bge a3, s0, label83
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label86
	addiw a3, a3, 1
	bge a3, s0, label83
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label86
	addiw a3, a3, 1
	bge a3, s0, label83
	j label1018
label61:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label362
	mv a2, zero
	bge zero, s0, label162
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label33
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label24
	sh2add a4, zero, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label24
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label24
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label24
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label24
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label24
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label24
	j label1107
label362:
	mv a0, zero
	mv s2, zero
	bge zero, s0, label65
	ble s0, zero, label67
	slli a1, zero, 12
	add a1, s1, a1
	mv a4, zero
	mv a3, zero
	addiw a2, zero, 4
	bge a2, s0, label73
	j label80
label65:
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
label969:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label107
	j label1027
label107:
	addiw a3, a4, 4
	bge a3, s0, label574
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label574
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label574
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label574
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label574
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label574
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label574
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label574
	j label1088
label574:
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label112
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label112
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label112
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label112
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label112
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label112
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label112
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label112
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label112
	j label1147
label112:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label103
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label103
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label103
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label103
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label103
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label103
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label103
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label103
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label103
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label103
	j label1150
label46:
	addiw t1, t3, 4
	bge t1, s0, label246
	j label50
label246:
	mv t1, t3
	sh2add t2, t3, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label56
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label56
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label56
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label56
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label56
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label56
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label56
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label56
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label56
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label56
	j label1127
label50:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t3, t3, a1
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, a5, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	mv t3, t1
	addiw t1, t1, 4
	bge t1, s0, label246
	j label50
label56:
	addiw a3, a3, 1
	bge a3, s0, label38
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label40
	addiw a3, a3, 1
	bge a3, s0, label38
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label40
	addiw a3, a3, 1
	bge a3, s0, label38
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label40
	addiw a3, a3, 1
	bge a3, s0, label38
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label40
	addiw a3, a3, 1
	bge a3, s0, label38
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label40
	j label1065
label1127:
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label56
	j label1127
label51:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t3, t3, a1
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, a5, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	mv t3, t1
	addiw t1, t1, 4
	bge t1, s0, label46
	j label51
label53:
	sh2add t3, t4, a4
	lw t5, 0(t3)
	sh2add t4, t4, a1
	lw t6, 0(t4)
	mulw t6, t1, t6
	addw t5, t5, t6
	sw t5, 0(t3)
	lw t5, 4(t3)
	lw t6, 4(t4)
	mulw t6, t1, t6
	addw t5, t5, t6
	sw t5, 4(t3)
	lw t5, 8(t3)
	lw t6, 8(t4)
	mulw t6, t1, t6
	addw t5, t5, t6
	sw t5, 8(t3)
	lw t5, 12(t3)
	lw t4, 12(t4)
	mulw t4, t1, t4
	addw t4, t5, t4
	sw t4, 12(t3)
	addiw t3, t2, 4
	bge t3, s0, label345
	mv t4, t2
	mv t2, t3
	j label53
label345:
	mv t3, t2
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t1, t2, 4
	bge t1, s0, label46
	j label51
label1065:
	addiw a3, a3, 1
	bge a3, s0, label38
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label40
	j label1065
label1150:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label103
	j label1150
label1018:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label86
	j label1076
label83:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s3, a1
	bge a2, s0, label61
	mv a3, zero
	bge zero, s0, label83
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label86
	addiw a3, zero, 1
	bge a3, s0, label83
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label86
	addiw a3, a3, 1
	bge a3, s0, label83
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label86
	addiw a3, a3, 1
	bge a3, s0, label83
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label86
	addiw a3, a3, 1
	bge a3, s0, label83
	j label1018
label1076:
	addiw a3, a3, 1
	bge a3, s0, label83
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label86
	j label1076
label24:
	addiw a3, a4, 4
	bge a3, s0, label177
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label177
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label177
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label177
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label177
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label177
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label177
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label177
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label177
	j label1112
label177:
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label29
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label29
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label29
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label29
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label29
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label29
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label29
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label29
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label29
	j label1113
label29:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	j label1116
label33:
	addiw a2, a2, 1
	bge a2, s0, label162
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, zero, label33
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label24
	sh2add a4, zero, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label24
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label24
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label24
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label24
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label24
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label24
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label24
	j label995
label1116:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	j label1116
label86:
	ble s0, zero, label85
	slliw a4, a3, 12
	add a4, s1, a4
	li t1, 4
	ble s0, t1, label440
	j label735
label85:
	addiw a3, a3, 1
	bge a3, s0, label83
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label86
	addiw a3, a3, 1
	bge a3, s0, label83
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label86
	addiw a3, a3, 1
	bge a3, s0, label83
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label86
	addiw a3, a3, 1
	bge a3, s0, label83
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label86
	addiw a3, a3, 1
	bge a3, s0, label83
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label86
	j label1076
label96:
	addiw t1, t3, 4
	bge t1, s0, label488
	j label100
label488:
	mv t1, t3
	sh2add t2, t3, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label85
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label85
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label85
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label85
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label85
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label85
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label85
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label85
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label85
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label85
label1139:
	sh2add t2, t1, a4
	lw t3, 0(t2)
	sh2add t4, t1, a1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label85
	j label1139
label735:
	sh2add t1, a2, a5
	lw t1, 0(t1)
	li t2, 4
	mv t4, zero
	j label89
label440:
	mv t2, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	mv t3, zero
	addiw t1, zero, 4
	bge t1, s0, label96
label101:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t3, t3, a1
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, a5, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	mv t3, t1
	addiw t1, t1, 4
	bge t1, s0, label96
	j label101
label89:
	sh2add t3, t4, a4
	lw t5, 0(t3)
	sh2add t4, t4, a1
	lw t6, 0(t4)
	mulw t6, t1, t6
	addw t5, t5, t6
	sw t5, 0(t3)
	lw t5, 4(t3)
	lw t6, 4(t4)
	mulw t6, t1, t6
	addw t5, t5, t6
	sw t5, 4(t3)
	lw t5, 8(t3)
	lw t6, 8(t4)
	mulw t6, t1, t6
	addw t5, t5, t6
	sw t5, 8(t3)
	lw t5, 12(t3)
	lw t4, 12(t4)
	mulw t4, t1, t4
	addw t4, t5, t4
	sw t4, 12(t3)
	addiw t3, t2, 4
	bge t3, s0, label92
	mv t4, t2
	mv t2, t3
	j label89
label92:
	sh2add a5, a2, a5
	lw a5, 0(a5)
	mv t3, t2
	addiw t1, t2, 4
	bge t1, s0, label96
	j label101
label100:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t3, t3, a1
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, a5, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	mv t3, t1
	addiw t1, t1, 4
	bge t1, s0, label488
	j label100
label1088:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label574
label1146:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label574
	j label1146
label1147:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label112
	j label1147
label1027:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label107
	j label1085
label103:
	addiw a2, a2, 1
	bge a2, s0, label351
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, zero, label103
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label107
	sh2add a4, zero, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label107
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label107
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label107
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label107
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label107
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label107
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label107
	j label1027
label1085:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label107
label1143:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label107
	j label1143
label1107:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label24
label995:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label24
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label24
	j label1111
label1049:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label24
	j label1107
label1111:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label24
	j label1111
label1113:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	bge a4, s0, label29
	j label1113
label1112:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label177
	j label1112
label983:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	j label1041
label8:
	addiw s5, s5, 1
	bge s5, s0, label126
	ble s0, zero, label8
	slli a0, s5, 12
	add s4, s2, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	j label983
label1095:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	j label983
label1041:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
label1099:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	j label1099
label989:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
label1105:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	j label1105
label73:
	addiw a2, a3, 4
	bge a2, s0, label382
	j label79
label382:
	mv a2, a4
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label391
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label391
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label391
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label391
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label391
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label391
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label391
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label391
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label391
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label391
	j label1133
label391:
	mv s2, a2
	addiw a0, a0, 1
	bge a0, s0, label65
	ble s0, zero, label67
	slli a1, a0, 12
	add a1, s1, a1
	mv a4, a2
	mv a3, zero
	addiw a2, zero, 4
	bge a2, s0, label73
	j label80
label1133:
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label391
	j label1133
label15:
	addiw s4, s4, 1
	bge s4, s0, label16
	ble s0, zero, label15
	slli a0, s4, 12
	add s5, s1, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label15
	j label989
label80:
	sh2add a3, a3, a1
	lw a5, 0(a3)
	addw a4, a4, a5
	lw a5, 4(a3)
	addw a4, a4, a5
	lw a5, 8(a3)
	addw a4, a4, a5
	lw a3, 12(a3)
	addw a4, a4, a3
	mv a3, a2
	addiw a2, a2, 4
	bge a2, s0, label73
	j label80
label79:
	sh2add a3, a3, a1
	lw a5, 0(a3)
	addw a4, a4, a5
	lw a5, 4(a3)
	addw a4, a4, a5
	lw a5, 8(a3)
	addw a4, a4, a5
	lw a3, 12(a3)
	addw a4, a4, a3
	mv a3, a2
	addiw a2, a2, 4
	bge a2, s0, label382
	j label79
label67:
	addiw a0, a0, 1
	bge a0, s0, label65
	ble s0, zero, label67
	slli a1, a0, 12
	add a1, s1, a1
	mv a4, s2
	mv a3, zero
	addiw a2, zero, 4
	bge a2, s0, label73
	j label80
