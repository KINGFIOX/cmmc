.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	40000000
.text
.globl main
main:
	addi sp, sp, -40
	sd s0, 32(sp)
	sd s1, 24(sp)
	sd s3, 16(sp)
	sd s2, 8(sp)
	sd ra, 0(sp)
pcrel246:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel246)
	mv s0, a0
	jal getarray
	mv s1, a0
	addiw s3, a0, -1
	srliw a0, a0, 31
	add a0, s1, a0
	sraiw s2, a0, 1
	li a0, 59
	jal _sysy_starttime
	mv a3, s3
	mv a2, zero
	addiw a1, s3, 1
	slliw a0, zero, 2
	add a0, s0, a0
	lw a4, 0(a0)
	mv a0, zero
	bge zero, a1, label11
	addiw a1, a1, -1
	slliw a5, a1, 2
	add a5, s0, a5
	lw a5, 0(a5)
	bge a5, a4, label7
	bge zero, a1, label15
	addiw a0, zero, 1
	slliw a5, a0, 2
	add a5, s0, a5
	lw a5, 0(a5)
	blt a5, a4, label11
	bne a0, a1, label21
	slliw a1, zero, 2
	add a1, s0, a1
	sw a4, 0(a1)
	slliw a5, a0, 2
	add a5, s0, a5
	lw t1, 0(a5)
	sw t1, 0(a1)
	sw a4, 0(a5)
	ble a0, s2, label18
	mv a3, a0
	addiw a1, a0, 1
	slliw a0, zero, 2
	add a0, s0, a0
	lw a4, 0(a0)
	mv a0, zero
	bge zero, a1, label11
	addiw a1, a1, -1
	slliw a5, a1, 2
	add a5, s0, a5
	lw a5, 0(a5)
	bge a5, a4, label7
	bge zero, a1, label15
	j label211
label196:
	bge a0, a1, label15
	j label211
label18:
	bge a0, s2, label20
	addiw a2, a0, 1
	addiw a1, a3, 1
	slliw a0, a2, 2
	add a0, s0, a0
	lw a4, 0(a0)
	mv a0, a2
	bge a2, a1, label11
	addiw a1, a1, -1
	slliw a5, a1, 2
	add a5, s0, a5
	lw a5, 0(a5)
	bge a5, a4, label7
	bge a2, a1, label15
	addiw a0, a2, 1
	slliw a5, a0, 2
	add a5, s0, a5
	lw a5, 0(a5)
	blt a5, a4, label11
	bne a0, a1, label21
	slliw a1, a2, 2
	add a1, s0, a1
	sw a4, 0(a1)
	slliw a5, a0, 2
	add a5, s0, a5
	lw t1, 0(a5)
	sw t1, 0(a1)
	sw a4, 0(a5)
	ble a0, s2, label18
	mv a3, a0
	addiw a1, a0, 1
	slliw a0, a2, 2
	add a0, s0, a0
	lw a4, 0(a0)
	mv a0, a2
	bge a2, a1, label11
	addiw a1, a1, -1
	slliw a5, a1, 2
	add a5, s0, a5
	lw a5, 0(a5)
	bge a5, a4, label7
	j label196
label127:
	bne a0, a1, label21
	j label140
label21:
	slliw a5, a0, 2
	add t1, s0, a5
	lw a5, 0(t1)
	slliw t2, a1, 2
	add t2, s0, t2
	lw t3, 0(t2)
	sw t3, 0(t1)
	sw a5, 0(t2)
	bge a0, a1, label11
	addiw a1, a1, -1
	slliw a5, a1, 2
	add a5, s0, a5
	lw a5, 0(a5)
	bge a5, a4, label7
	bge a0, a1, label15
	addiw a0, a0, 1
	slliw a5, a0, 2
	add a5, s0, a5
	lw a5, 0(a5)
	blt a5, a4, label11
	bne a0, a1, label21
	slliw a1, a2, 2
	add a1, s0, a1
	sw a4, 0(a1)
	slliw a5, a0, 2
	add a5, s0, a5
	lw t1, 0(a5)
	sw t1, 0(a1)
	sw a4, 0(a5)
	ble a0, s2, label18
	mv a3, a0
	addiw a1, a0, 1
	slliw a0, a2, 2
	add a0, s0, a0
	lw a4, 0(a0)
	mv a0, a2
	bge a2, a1, label11
	addiw a1, a1, -1
	slliw a5, a1, 2
	add a5, s0, a5
	lw a5, 0(a5)
	bge a5, a4, label7
	bge a2, a1, label15
	addiw a0, a2, 1
	slliw a5, a0, 2
	add a5, s0, a5
	lw a5, 0(a5)
	blt a5, a4, label11
	j label127
label181:
	addiw a1, a1, -1
	slliw a5, a1, 2
	add a5, s0, a5
	lw a5, 0(a5)
	bge a5, a4, label7
	j label196
label7:
	bge a0, a1, label11
	addiw a1, a1, -1
	slliw a5, a1, 2
	add a5, s0, a5
	lw a5, 0(a5)
	bge a5, a4, label7
	bge a0, a1, label15
	addiw a0, a0, 1
	slliw a5, a0, 2
	add a5, s0, a5
	lw a5, 0(a5)
	blt a5, a4, label11
	j label127
label211:
	addiw a0, a0, 1
	slliw a5, a0, 2
	add a5, s0, a5
	lw a5, 0(a5)
	blt a5, a4, label11
	j label127
label15:
	bne a0, a1, label21
	slliw a1, a2, 2
	add a1, s0, a1
	sw a4, 0(a1)
	slliw a5, a0, 2
	add a5, s0, a5
	lw t1, 0(a5)
	sw t1, 0(a1)
	sw a4, 0(a5)
	ble a0, s2, label18
	mv a3, a0
	addiw a1, a0, 1
	slliw a0, a2, 2
	add a0, s0, a0
	lw a4, 0(a0)
	mv a0, a2
	bge a2, a1, label11
	addiw a1, a1, -1
	slliw a5, a1, 2
	add a5, s0, a5
	lw a5, 0(a5)
	bge a5, a4, label7
	bge a2, a1, label15
	addiw a0, a2, 1
	slliw a5, a0, 2
	add a5, s0, a5
	lw a5, 0(a5)
	blt a5, a4, label11
	bne a0, a1, label21
	slliw a1, a2, 2
	add a1, s0, a1
	sw a4, 0(a1)
	slliw a5, a0, 2
	add a5, s0, a5
	lw t1, 0(a5)
	sw t1, 0(a1)
	sw a4, 0(a5)
	ble a0, s2, label18
	mv a3, a0
	addiw a1, a0, 1
	slliw a0, a2, 2
	add a0, s0, a0
	lw a4, 0(a0)
	mv a0, a2
	bge a2, a1, label11
	addiw a1, a1, -1
	slliw a5, a1, 2
	add a5, s0, a5
	lw a5, 0(a5)
	bge a5, a4, label7
	j label196
label11:
	bge a0, a1, label15
	addiw a0, a0, 1
	slliw a5, a0, 2
	add a5, s0, a5
	lw a5, 0(a5)
	blt a5, a4, label11
	bne a0, a1, label21
	slliw a1, a2, 2
	add a1, s0, a1
	sw a4, 0(a1)
	slliw a5, a0, 2
	add a5, s0, a5
	lw t1, 0(a5)
	sw t1, 0(a1)
	sw a4, 0(a5)
	ble a0, s2, label18
	mv a3, a0
	addiw a1, a0, 1
	slliw a0, a2, 2
	add a0, s0, a0
	lw a4, 0(a0)
	mv a0, a2
	bge a2, a1, label11
	addiw a1, a1, -1
	slliw a5, a1, 2
	add a5, s0, a5
	lw a5, 0(a5)
	bge a5, a4, label7
	bge a2, a1, label15
	addiw a0, a2, 1
	slliw a5, a0, 2
	add a5, s0, a5
	lw a5, 0(a5)
	blt a5, a4, label11
	bne a0, a1, label21
	slliw a1, a2, 2
	add a1, s0, a1
	sw a4, 0(a1)
	slliw a5, a0, 2
	add a5, s0, a5
	lw t1, 0(a5)
	sw t1, 0(a1)
	sw a4, 0(a5)
	ble a0, s2, label18
	j label154
label140:
	slliw a1, a2, 2
	add a1, s0, a1
	sw a4, 0(a1)
	slliw a5, a0, 2
	add a5, s0, a5
	lw t1, 0(a5)
	sw t1, 0(a1)
	sw a4, 0(a5)
	ble a0, s2, label18
label154:
	mv a3, a0
	addiw a1, a0, 1
	slliw a0, a2, 2
	add a0, s0, a0
	lw a4, 0(a0)
	mv a0, a2
	bge a2, a1, label11
	j label181
label20:
	li a0, 61
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	slli a0, s2, 2
	add a0, s0, a0
	lw a0, 0(a0)
	slli a1, a0, 1
	srli a1, a1, 56
	add a1, a0, a1
	sraiw a1, a1, 8
	li a2, 256
	mulw a1, a1, a2
	subw a0, a0, a1
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s3, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
