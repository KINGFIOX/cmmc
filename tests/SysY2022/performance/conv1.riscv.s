.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	40000000
.align 4
b:
	.zero	40000000
.align 4
kernelid:
	.zero	40000
.text
.globl main
main:
	addi sp, sp, -104
	sd s3, 96(sp)
	sd s2, 88(sp)
	sd s0, 80(sp)
	sd s5, 72(sp)
	sd s1, 64(sp)
	sd s6, 56(sp)
	sd s4, 48(sp)
	sd s7, 40(sp)
	sd s8, 32(sp)
	sd s9, 24(sp)
	sd s10, 16(sp)
	sd s11, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s3, a0
	jal getint
	mv s2, a0
	jal getint
pcrel519:
	auipc a1, %pcrel_hi(a)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel519)
	mv s1, a0
	jal getarray
pcrel520:
	auipc a1, %pcrel_hi(kernelid)
	addi a0, a1, %pcrel_lo(pcrel520)
	mv s4, a0
	jal getarray
	mv s5, a0
	srliw a0, s3, 31
	add a1, s3, a0
	li a0, 109
	sraiw s3, a1, 1
	jal _sysy_starttime
	ble s5, zero, label62
	mulw a1, s2, s0
pcrel521:
	auipc a2, %pcrel_hi(b)
	addi a0, a2, %pcrel_lo(pcrel521)
	mv a2, zero
	mv a5, s4
	mv a4, zero
	lw a3, 0(s4)
	subw a5, zero, s3
	sext.w t0, s3
	mv t1, zero
	mv t2, zero
	subw t3, zero, s3
	sext.w t4, s3
	mv t5, a5
	mv a7, zero
	slt t6, a5, s2
	slti s6, a5, 0
	xori a6, t6, 1
	or t6, a6, s6
	mv a6, t3
	j label12
label7:
	subw t3, t2, s3
	addw t4, s3, t2
	mv t5, a5
	mv a7, zero
	slt t6, a5, s2
	slti s6, a5, 0
	xori a6, t6, 1
	or t6, a6, s6
	mv a6, t3
label12:
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s9, s6, s7
	beq s9, zero, label61
	j label100
label404:
	lui s6, 786432
	lui s7, 262144
	addw a7, a7, s6
	ble a7, s7, label20
label438:
	lui s6, 786432
	lui s7, 262144
	addw a7, a7, s6
	ble a7, s7, label20
label439:
	lui s6, 786432
	lui s7, 262144
	addw a7, a7, s6
	ble a7, s7, label20
	addw a7, a7, s6
	ble a7, s7, label20
label18:
	lui s6, 786432
	lui s7, 262144
	addw a7, a7, s6
	ble a7, s7, label20
	j label18
label444:
	mv a5, zero
	li a3, 4
	ble a1, a3, label33
	j label32
label128:
	mv a7, s8
	slti s7, a6, 0
	slt s8, a6, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s9, s6, s7
	beq s9, zero, label61
	mv s6, zero
	bne a3, zero, label36
	sext.w a7, a7
	lui s6, 262144
	ble a7, s6, label20
	lui s6, 786432
	lui s7, 262144
	addw a7, a7, s6
	ble a7, s7, label20
	addw a7, a7, s6
	ble a7, s7, label20
	j label438
label133:
	mv a7, s8
	slt t6, t5, s2
	slti s6, t5, 0
	xori a6, t6, 1
	or t6, a6, s6
	mv a6, t3
	slti s7, t3, 0
	slt s8, t3, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s9, s6, s7
	beq s9, zero, label61
	mv s6, zero
	bne a3, zero, label36
	sext.w a7, a7
	lui s6, 262144
	ble a7, s6, label20
	lui s6, 786432
	lui s7, 262144
	addw a7, a7, s6
	ble a7, s7, label20
	j label404
label32:
	sh2add a4, a5, a0
	sh2add a5, a5, s1
	lw t0, 0(a4)
	sw t0, 0(a5)
	lw t1, 4(a4)
	sw t1, 4(a5)
	lw t0, 8(a4)
	sw t0, 8(a5)
	lw a4, 12(a4)
	sw a4, 12(a5)
	mv a5, a3
	addiw a3, a3, 4
	ble a1, a3, label33
	j label32
label37:
	li s7, 2
	bne a3, s7, label38
	max s8, a7, s6
	addiw a6, a6, 1
	bgt t4, a6, label128
	addiw t5, t5, 1
	bgt t0, t5, label133
	addw t4, t1, t2
	addiw t2, t2, 1
	sh2add t3, t4, a0
	sw s8, 0(t3)
	bgt s0, t2, label7
	addiw a4, a4, 1
	bgt s2, a4, label5
	j label410
label38:
	li s7, 3
	bne a3, s7, label46
	mv s8, zero
	li s7, 1
	lui s9, 262144
	bge s7, s9, label24
	divw s10, a7, s7
	li s11, -2147483647
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label44
	mv s9, zero
	slliw s7, s7, 1
	li s8, 1
	lui s9, 262144
	bge s7, s9, label24
	divw s10, a7, s7
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label44
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label24
	j label419
label46:
	li s8, 4
	bne a3, s8, label217
	mv s7, zero
	li s8, 1
	lui s9, 262144
	bge s8, s9, label221
	divw s10, a7, s8
	li s11, -2147483647
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label53
	divw s9, s6, s8
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label53
	mv s9, zero
	slliw s8, s8, 1
	li s7, 1
	lui s9, 262144
	bge s8, s9, label221
	j label220
label217:
	mv s8, zero
	addiw a6, a6, 1
	bgt t4, a6, label128
	addiw t5, t5, 1
	bgt t0, t5, label133
	addw t4, t1, t2
	addiw t2, t2, 1
	sh2add t3, t4, a0
	sw zero, 0(t3)
	bgt s0, t2, label7
	addiw a4, a4, 1
	bgt s2, a4, label5
	ble a1, zero, label35
	j label444
label221:
	mv s8, s7
	addiw a6, a6, 1
	bgt t4, a6, label128
	addiw t5, t5, 1
	bgt t0, t5, label133
	addw t4, t1, t2
	addiw t2, t2, 1
	sh2add t3, t4, a0
	sw s7, 0(t3)
	bgt s0, t2, label7
	addiw a4, a4, 1
	bgt s2, a4, label5
	ble a1, zero, label35
	j label444
label61:
	mulw s6, s0, t5
	addw s8, a6, s6
	sh2add s7, s8, s1
	lw s6, 0(s7)
	bne a3, zero, label36
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label20
	lui s6, 786432
	lui s7, 262144
	addw a7, a7, s6
	ble a7, s7, label20
	addw a7, a7, s6
	ble a7, s7, label20
	addw a7, a7, s6
	ble a7, s7, label20
	j label439
label367:
	lui s6, 786432
	lui s7, 262144
	addw a7, a7, s6
	ble a7, s7, label20
	j label404
label36:
	li s7, 1
	bne a3, s7, label37
	mv s8, zero
	lui s9, 262144
	bge s7, s9, label24
label58:
	divw s9, a7, s7
	srliw s10, s9, 31
	add s10, s9, s10
	andi s11, s10, -2
	divw s10, s6, s7
	subw s9, s9, s11
	srliw s11, s10, 31
	add s11, s10, s11
	andi s11, s11, -2
	subw s10, s10, s11
	bne s9, s10, label60
	slliw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	bge s7, s9, label24
	j label58
label60:
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label24
	j label58
label20:
	bge a7, zero, label118
	lui s6, 262144
	addw a7, a7, s6
	bge a7, zero, label123
	addw a7, a7, s6
	bge a7, zero, label123
	addw a7, a7, s6
	bge a7, zero, label123
	addw a7, a7, s6
	bge a7, zero, label123
	j label442
label118:
	mv s8, a7
	addiw a6, a6, 1
	bgt t4, a6, label128
	addiw t5, t5, 1
	bgt t0, t5, label133
	addw t4, t1, t2
	addiw t2, t2, 1
	sh2add t3, t4, a0
	sw a7, 0(t3)
	bgt s0, t2, label7
	addiw a4, a4, 1
	bgt s2, a4, label5
	ble a1, zero, label35
	j label444
label123:
	mv s8, a7
label24:
	addiw a6, a6, 1
	bgt t4, a6, label128
	addiw t5, t5, 1
	bgt t0, t5, label133
	addw t4, t1, t2
	addiw t2, t2, 1
	sh2add t3, t4, a0
	sw s8, 0(t3)
	bgt s0, t2, label7
	addiw a4, a4, 1
	bgt s2, a4, label5
label410:
	ble a1, zero, label35
	j label444
label442:
	lui s6, 262144
	addw a7, a7, s6
	bge a7, zero, label123
label22:
	lui s6, 262144
	addw a7, a7, s6
	bge a7, zero, label123
	j label22
label419:
	divw s10, a7, s7
	li s11, -2147483647
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label44
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label24
	j label419
label44:
	divw s10, s6, s7
	li s11, -2147483647
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label45
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label24
	divw s10, a7, s7
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label44
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label24
	divw s10, a7, s7
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label44
	j label459
label45:
	slliw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	bge s7, s9, label24
	divw s10, a7, s7
	li s11, -2147483647
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label44
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label24
	divw s10, a7, s7
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label44
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label24
	j label419
label459:
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	bge s7, s9, label24
	j label419
label220:
	divw s10, a7, s8
	li s11, -2147483647
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label53
	j label357
label100:
	mv s6, zero
	bne a3, zero, label36
	j label330
label35:
	addiw a2, a2, 1
	ble s5, a2, label62
	sh2add a5, a2, s4
	mv a4, zero
	lw a3, 0(a5)
	subw a5, zero, s3
	sext.w t0, s3
	mv t1, zero
	mv t2, zero
	subw t3, zero, s3
	sext.w t4, s3
	mv t5, a5
	mv a7, zero
	slt t6, a5, s2
	slti s6, a5, 0
	xori a6, t6, 1
	or t6, a6, s6
	mv a6, t3
	slti s7, t3, 0
	slt s8, t3, s0
	or s6, t6, s7
	xori s7, s8, 1
	or s9, s6, s7
	beq s9, zero, label61
	j label100
label357:
	divw s9, s6, s8
	li s11, -2147483647
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label53
	slliw s9, s7, 1
	slliw s8, s8, 1
	addiw s7, s9, 1
	lui s9, 262144
	bge s8, s9, label221
	j label462
label53:
	slliw s7, s7, 1
	slliw s8, s8, 1
	lui s9, 262144
	bge s8, s9, label221
	divw s10, a7, s8
	li s11, -2147483647
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label53
	divw s9, s6, s8
	and s10, s9, s11
	li s9, 1
	bne s10, s9, label53
	slliw s9, s7, 1
	slliw s8, s8, 1
	addiw s7, s9, 1
	lui s9, 262144
	bge s8, s9, label221
	divw s10, a7, s8
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label53
	j label357
label462:
	divw s10, a7, s8
	li s11, -2147483647
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label53
	j label357
label330:
	addw a7, a7, s6
	lui s6, 262144
	ble a7, s6, label20
	j label367
label5:
	subw a5, a4, s3
	addw t0, s3, a4
	mulw t1, s0, a4
	mv t2, zero
	j label7
label33:
	sh2add t0, a5, a0
	sh2add a4, a5, s1
	lw a3, 0(t0)
	addiw a5, a5, 1
	sw a3, 0(a4)
	ble a1, a5, label35
	j label33
label62:
	li a0, 116
	jal _sysy_stoptime
	mv a1, s1
	mulw a0, s2, s0
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s11, 8(sp)
	ld s10, 16(sp)
	ld s9, 24(sp)
	ld s8, 32(sp)
	ld s7, 40(sp)
	ld s4, 48(sp)
	ld s6, 56(sp)
	ld s1, 64(sp)
	ld s5, 72(sp)
	ld s0, 80(sp)
	ld s2, 88(sp)
	ld s3, 96(sp)
	addi sp, sp, 104
	ret
