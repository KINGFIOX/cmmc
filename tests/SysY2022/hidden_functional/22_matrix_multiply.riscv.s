.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	40000
.align 4
b:
	.zero	40000
.align 4
res:
	.zero	40000
.text
.globl main
main:
	addi sp, sp, -88
	sd s0, 80(sp)
	sd s5, 72(sp)
	sd s2, 64(sp)
	sd s3, 56(sp)
	sd s1, 48(sp)
	sd s6, 40(sp)
	sd s4, 32(sp)
	sd s7, 24(sp)
	sd s8, 16(sp)
	sd s9, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s6, zero
	mv s2, a0
pcrel252:
	auipc a0, %pcrel_hi(a)
	addi s5, a0, %pcrel_lo(pcrel252)
pcrel253:
	auipc a0, %pcrel_hi(b)
	addi s3, a0, %pcrel_lo(pcrel253)
pcrel254:
	auipc a0, %pcrel_hi(res)
	addi s1, a0, %pcrel_lo(pcrel254)
	ble s0, zero, label8
	li a0, 400
	mv a1, zero
	mv s4, s5
	ble s2, zero, label7
label210:
	mv s7, zero
label5:
	jal getint
	sh2add a1, s7, s4
	addiw s7, s7, 1
	sw a0, 0(a1)
	ble s2, s7, label7
	j label5
label8:
	jal getint
	mv s7, a0
	jal getint
	mv s8, zero
	mv s4, a0
	ble s7, zero, label70
	li a1, 400
	mv a0, zero
	mv s6, s3
	ble s4, zero, label14
	j label212
label70:
	mv a3, zero
	li a1, 400
	mv a0, zero
	mv a1, s5
	mv a2, s1
	ble s0, zero, label92
	ble s4, zero, label30
	ble s2, zero, label20
	mv a4, s1
	mv t0, zero
	lw t1, 0(s1)
	li a4, 4
	ble s2, a4, label26
	j label25
label92:
	mv s2, zero
	ble s0, zero, label33
	li a1, 400
	mv a0, zero
	mv s3, s1
	ble s4, zero, label37
	j label230
label25:
	li t3, 400
	mul t2, t0, t3
	sh2add t0, t0, a1
	add a5, s3, t2
	addi t6, a5, 400
	sh2add t3, a0, a5
	lw t2, 0(t0)
	sh2add t4, a0, t6
	lw t3, 0(t3)
	lw t5, 4(t0)
	lw t6, 0(t4)
	mulw t2, t2, t3
	addw t3, t1, t2
	mulw t4, t5, t6
	lw t2, 8(t0)
	addw t1, t4, t3
	addi t4, a5, 800
	sh2add t3, a0, t4
	lw t5, 0(t3)
	addi t3, a5, 1200
	lw a5, 12(t0)
	mulw t4, t2, t5
	sh2add t2, a0, t3
	addw t1, t1, t4
	lw t0, 0(t2)
	mulw t2, a5, t0
	mv t0, a4
	addw t1, t1, t2
	addiw a4, a4, 4
	ble s2, a4, label26
	j label25
label26:
	li a4, 400
	sh2add t3, t0, a1
	mul a5, t0, a4
	addiw t0, t0, 1
	add t2, s3, a5
	lw a5, 0(t3)
	sh2add a4, a0, t2
	lw t2, 0(a4)
	mulw a4, a5, t2
	addw t1, t1, a4
	ble s2, t0, label29
	j label26
label212:
	mv s9, zero
label12:
	jal getint
	sh2add a1, s9, s6
	addiw s9, s9, 1
	sw a0, 0(a1)
	ble s4, s9, label14
	j label12
label30:
	addiw a3, a3, 1
	li a1, 400
	mul a0, a3, a1
	add a1, s5, a0
	add a2, s1, a0
	ble s0, a3, label92
	mv a0, zero
	ble s4, zero, label30
	ble s2, zero, label20
	mv a4, a2
	mv t0, zero
	lw t1, 0(a2)
	li a4, 4
	ble s2, a4, label26
	j label25
label20:
	addiw a0, a0, 1
	ble s4, a0, label30
	ble s2, zero, label20
	sh2add a4, a0, a2
	mv t0, zero
	lw t1, 0(a4)
	li a4, 4
	ble s2, a4, label26
	j label25
label230:
	mv s5, zero
label35:
	sh2add a1, s5, s3
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
	addiw s5, s5, 1
	ble s4, s5, label37
	j label35
label37:
	li a0, 10
	jal putch
	addiw s2, s2, 1
	ble s0, s2, label33
	li a1, 400
	mul a0, s2, a1
	add s3, s1, a0
	ble s4, zero, label37
	j label230
label29:
	sh2add a4, a0, a2
	sw t1, 0(a4)
	addiw a0, a0, 1
	ble s4, a0, label30
	ble s2, zero, label20
	sh2add a4, a0, a2
	mv t0, zero
	lw t1, 0(a4)
	li a4, 4
	ble s2, a4, label26
	j label25
label7:
	addiw s6, s6, 1
	ble s0, s6, label8
	li a0, 400
	mul a1, s6, a0
	add s4, s5, a1
	ble s2, zero, label7
	j label210
label14:
	addiw s8, s8, 1
	ble s7, s8, label70
	li a1, 400
	mul a0, s8, a1
	add s6, s3, a0
	ble s4, zero, label14
	j label212
label33:
	mv a0, zero
	ld ra, 0(sp)
	ld s9, 8(sp)
	ld s8, 16(sp)
	ld s7, 24(sp)
	ld s4, 32(sp)
	ld s6, 40(sp)
	ld s1, 48(sp)
	ld s3, 56(sp)
	ld s2, 64(sp)
	ld s5, 72(sp)
	ld s0, 80(sp)
	addi sp, sp, 88
	ret
