.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
A:
	.zero	16160400
.align 4
B:
	.zero	8040
.align 4
C:
	.zero	8040
.text
.globl main
main:
	addi sp, sp, -48
	sd s0, 40(sp)
	sd s2, 32(sp)
	sd s1, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, zero
	mv s0, a0
pcrel408:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel408)
	ble s0, zero, label4
	ble s0, zero, label41
label209:
	li a0, 8040
	mv s4, zero
	mul a0, s1, a0
	add s3, s2, a0
	j label43
label41:
	addiw s1, s1, 1
	ble s0, s1, label4
	ble s0, zero, label41
	j label209
label43:
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label41
	j label43
label4:
	ble s0, zero, label8
	j label53
label8:
	li a0, 59
	jal _sysy_starttime
pcrel409:
	auipc a1, %pcrel_hi(C)
pcrel410:
	auipc a0, %pcrel_hi(B)
	addi s1, a1, %pcrel_lo(pcrel409)
	addi a0, a0, %pcrel_lo(pcrel410)
	mv a1, zero
	ble s0, zero, label71
	mv a2, zero
	addiw a3, zero, 4
	ble s0, a3, label38
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label38
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label38
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label38
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label38
	j label362
label38:
	sh2add a3, a2, s1
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label167
	j label38
label167:
	mv a2, zero
	li a3, 8040
	mulw a3, zero, a3
	add a3, s2, a3
	ble s0, zero, label13
	mv a4, zero
	ble s0, zero, label31
	sh2add a5, zero, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, zero, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	j label337
label355:
	addiw a4, a4, 1
	ble s0, a4, label31
	j label375
label34:
	sh2add t1, a4, a0
	sh2add t0, a2, s1
	lw t2, 0(t0)
	lw t1, 0(t1)
	mulw a5, a5, t1
	addw a5, t2, a5
	sw a5, 0(t0)
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	j label355
label362:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	j label35
label71:
	mv a2, zero
	li a3, 8040
	mulw a3, zero, a3
	add a3, s2, a3
	ble s0, zero, label13
	mv a4, zero
	ble s0, zero, label31
	sh2add a5, zero, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, zero, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	j label337
label13:
	ble s0, zero, label80
	mv a2, zero
	addiw a3, zero, 4
	ble s0, a3, label27
	sh2add a2, zero, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label27
	sh2add a2, a2, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label27
	sh2add a2, a2, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label27
	sh2add a2, a2, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label27
	j label364
label80:
	mv a2, zero
	li a3, 8040
	mulw a3, zero, a3
	add a3, s2, a3
	ble s0, zero, label22
	mv a4, zero
	ble s0, zero, label21
	sh2add a5, zero, a3
	lw a5, 0(a5)
	bne a5, zero, label19
	addiw a4, zero, 1
	ble s0, a4, label21
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label19
	addiw a4, a4, 1
	ble s0, a4, label21
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label19
	addiw a4, a4, 1
	ble s0, a4, label21
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label19
	j label365
label22:
	addiw a1, a1, 1
	li a2, 50
	bge a1, a2, label23
	ble s0, zero, label71
	mv a2, zero
	addiw a3, zero, 4
	ble s0, a3, label38
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label38
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label38
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label38
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label38
	j label362
label337:
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	j label355
label31:
	addiw a2, a2, 1
	li a3, 8040
	mulw a3, a2, a3
	add a3, s2, a3
	ble s0, a2, label13
	mv a4, zero
	ble s0, zero, label31
	sh2add a5, zero, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, zero, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	j label337
label35:
	addiw a3, a2, 4
	ble s0, a3, label38
	j label362
label375:
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	j label355
label365:
	addiw a4, a4, 1
	ble s0, a4, label21
label328:
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label19
label348:
	addiw a4, a4, 1
	ble s0, a4, label21
	j label366
label19:
	sh2add t1, a4, s1
	sh2add t0, a2, a0
	lw t2, 0(t0)
	lw t1, 0(t1)
	mulw a5, a5, t1
	addw a5, t2, a5
	sw a5, 0(t0)
	addiw a4, a4, 1
	ble s0, a4, label21
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label19
	addiw a4, a4, 1
	ble s0, a4, label21
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label19
	addiw a4, a4, 1
	ble s0, a4, label21
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label19
	addiw a4, a4, 1
	ble s0, a4, label21
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label19
	addiw a4, a4, 1
	ble s0, a4, label21
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label19
	j label348
label21:
	addiw a2, a2, 1
	li a3, 8040
	mulw a3, a2, a3
	add a3, s2, a3
	ble s0, a2, label22
	mv a4, zero
	ble s0, zero, label21
	sh2add a5, zero, a3
	lw a5, 0(a5)
	bne a5, zero, label19
	addiw a4, zero, 1
	ble s0, a4, label21
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label19
	addiw a4, a4, 1
	ble s0, a4, label21
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label19
	addiw a4, a4, 1
	ble s0, a4, label21
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label19
	addiw a4, a4, 1
	ble s0, a4, label21
	j label328
label366:
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label19
	j label348
label27:
	sh2add a3, a2, a0
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label129
	j label27
label129:
	mv a2, zero
	li a3, 8040
	mulw a3, zero, a3
	add a3, s2, a3
	ble s0, zero, label22
	mv a4, zero
	ble s0, zero, label21
	sh2add a5, zero, a3
	lw a5, 0(a5)
	bne a5, zero, label19
	addiw a4, zero, 1
	ble s0, a4, label21
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label19
	addiw a4, a4, 1
	ble s0, a4, label21
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label19
	addiw a4, a4, 1
	ble s0, a4, label21
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label19
	addiw a4, a4, 1
	ble s0, a4, label21
	j label328
label364:
	sh2add a2, a2, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label27
	j label364
label23:
	li a0, 67
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label53:
	auipc a0, %pcrel_hi(B)
	mv s3, zero
	addi s1, a0, %pcrel_lo(label53)
label6:
	jal getint
	sh2add a1, s3, s1
	addiw s3, s3, 1
	sw a0, 0(a1)
	ble s0, s3, label8
	j label6
