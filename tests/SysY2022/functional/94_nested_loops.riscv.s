.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
arr1:
	.zero	57600
.p2align 3
arr2:
	.zero	107520
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[224] CalleeSaved[104]
	addi sp, sp, -328
	sd ra, 0(sp)
	sd s2, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s4, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s2, a0
	jal getint
	addiw a3, s2, 3
	addiw a4, s2, 2
	addiw a1, s2, 1
	mv a2, a0
	min a0, s2, a0
	addw s1, s2, a2
	sd a0, 224(sp)
	addw a0, a2, a1
	addw a1, a2, a4
	sd a0, 240(sp)
	addiw a4, s2, 4
	addw a0, a2, a3
	sd a1, 248(sp)
	addiw a3, s2, 5
	addw a1, a2, a4
	sd a0, 256(sp)
	addiw a4, s2, 6
	addw a0, a2, a3
	sd a1, 264(sp)
	addiw a3, s2, 7
	addw a1, a2, a4
	sd a0, 280(sp)
	addiw a4, s2, 8
	addw a0, a2, a3
	sd a1, 288(sp)
	addiw a3, s2, 9
	addw a1, a2, a4
	sd a0, 296(sp)
	addw a0, a2, a3
	sd a1, 304(sp)
	addiw a1, s2, 10
	sd a0, 320(sp)
	addw s0, a2, a1
	jal getint
	sd a0, 160(sp)
	jal getint
	sd a0, 176(sp)
	jal getint
	sd a0, 192(sp)
	mv a1, a0
	jal getint
	sd a0, 200(sp)
	mv a4, a0
	jal getint
	sd a0, 184(sp)
	mv t1, a0
	jal getint
	sd a0, 168(sp)
	mv t4, a0
	jal getint
pcrel842:
	auipc a2, %pcrel_hi(arr1)
	mv s4, a0
	sd a0, 152(sp)
	addi a1, a2, %pcrel_lo(pcrel842)
	li a0, 21
	sd a1, 120(sp)
	slli a5, a0, 8
	li a1, 45
	sd a5, 144(sp)
	slli a0, a1, 6
	sd a0, 136(sp)
	ld a0, 224(sp)
	ble a0, zero, label2
	ld a1, 120(sp)
	mv s4, zero
	mv s3, a1
	j label83
.p2align 2
label796:
	ld a0, 224(sp)
	ble a0, s4, label2
	li a1, 45
	slli a0, a1, 7
	add s3, s3, a0
.p2align 2
label83:
	addw a3, s1, s4
	addw a6, s0, s4
	mv s2, s3
	mv a2, zero
	ld a0, 240(sp)
	ld a1, 248(sp)
	addw a4, a0, s4
	addw a5, a1, s4
	ld a0, 256(sp)
	ld a1, 264(sp)
	addw t0, a0, s4
	addw t1, a1, s4
	ld a0, 280(sp)
	ld a1, 288(sp)
	addw t2, a0, s4
	addw t3, a1, s4
	ld a0, 296(sp)
	ld a1, 304(sp)
	addw t4, a0, s4
	addw t5, a1, s4
	ld a0, 320(sp)
	mv a1, zero
	addw t6, a0, s4
	mv a0, zero
	addiw s4, s4, 1
	j label86
.p2align 2
label487:
	mv a2, zero
.p2align 2
label86:
	addw a7, a3, a2
	addw s9, a4, a2
	addw s6, a0, a7
	addw s10, a0, s9
	slli a7, a0, 4
	addw s5, a1, s6
	sub s7, a7, a0
	slli a7, a2, 4
	slli s8, s7, 6
	sub s7, a7, a2
	add s6, s2, s8
	slli s8, s7, 4
	add a7, s6, s8
	addw s8, a5, a2
	addw s6, a1, s10
	slli s7, s6, 32
	add.uw s9, s5, s7
	addw s7, a0, s8
	sd s9, 0(a7)
	addw s8, t0, a2
	addw s5, a1, s7
	slli s10, s5, 32
	add.uw s9, s6, s10
	addw s10, a0, s8
	sd s9, 8(a7)
	addw s6, a1, s10
	addw s10, t1, a2
	slli s7, s6, 32
	add.uw s8, s5, s7
	addw s7, a0, s10
	sd s8, 16(a7)
	addw s11, a1, s7
	slli s5, s11, 32
	add.uw s7, s6, s5
	addw s5, t2, a2
	sd s7, 24(a7)
	addw s6, a0, s5
	addw s10, a1, s6
	slli s6, s10, 32
	add.uw s5, s11, s6
	addw s6, t3, a2
	sd s5, 32(a7)
	addw s6, a0, s6
	addw s11, a1, s6
	slli s6, s11, 32
	add.uw s6, s10, s6
	addw s10, t4, a2
	sd s6, 40(a7)
	sd s9, 48(a7)
	addw s9, a0, s10
	sd s8, 56(a7)
	addw s10, a1, s9
	sd s7, 64(a7)
	slli s9, s10, 32
	sd s5, 72(a7)
	add.uw s9, s11, s9
	sd s6, 80(a7)
	sd s9, 88(a7)
	sd s8, 96(a7)
	addw s8, t5, a2
	sd s7, 104(a7)
	addw s8, a0, s8
	sd s5, 112(a7)
	addw s11, a1, s8
	sd s6, 120(a7)
	slli s8, s11, 32
	sd s9, 128(a7)
	add.uw s8, s10, s8
	addw s10, t6, a2
	sd s8, 136(a7)
	sd s7, 144(a7)
	addw s7, a0, s10
	sd s5, 152(a7)
	addw s7, a1, s7
	sd s6, 160(a7)
	slli s10, s7, 32
	sd s9, 168(a7)
	add.uw s10, s11, s10
	sd s8, 176(a7)
	sd s10, 184(a7)
	sd s5, 192(a7)
	sd s6, 200(a7)
	addw s6, a6, a2
	sd s9, 208(a7)
	addiw a2, a2, 1
	addw s5, a0, s6
	sd s8, 216(a7)
	addw s9, a1, s5
	sd s10, 224(a7)
	slli s8, s9, 32
	add.uw s6, s7, s8
	sd s6, 232(a7)
	li a7, 4
	blt a2, a7, label86
	addiw a0, a0, 1
	li a7, 3
	blt a0, a7, label487
	addiw a1, a1, 1
	li a7, 2
	bge a1, a7, label796
	ld a0, 136(sp)
	mv a2, zero
	add s2, s2, a0
	mv a0, zero
	j label86
label2:
	auipc a0, %pcrel_hi(arr2)
	mv a6, zero
	mv a2, zero
	mv a1, zero
	addi a3, a0, %pcrel_lo(label2)
	mv a0, zero
	sd a3, 128(sp)
	j label3
.p2align 2
label219:
	li a7, 2
	bge a5, a7, label781
	mv a6, a5
.p2align 2
label3:
	ld a5, 144(sp)
	slli t1, a2, 3
	slli t3, a6, 3
	addiw t4, a6, 3
	addiw t6, a6, 4
	addiw t5, a6, 5
	mul t0, a0, a5
	sub t2, t1, a2
	addw a7, a0, t5
	add a4, a3, t0
	sub t1, t3, a6
	slli a5, t2, 8
	addiw t3, a6, 2
	slli t2, t1, 7
	add t0, a4, a5
	addiw a5, a6, 1
	add a4, t0, t2
	addw t1, a0, a5
	addw t2, a0, t3
	addw t0, a1, t1
	addw t3, a0, t4
	addw t1, a1, t2
	addw t4, a0, t6
	addw t2, a1, t3
	addiw t6, a6, 6
	addw t3, a1, t4
	addw s0, a0, t6
	addw t4, a1, a7
	addw t5, a1, s0
	addw a7, a6, a0
	mv a6, zero
	addw t6, a1, a7
.p2align 2
label9:
	slli s0, t0, 32
	slli s1, t2, 32
	slli s2, t4, 32
	slli s3, t6, 32
	slli s4, t1, 32
	slli s5, t3, 32
	slli s6, t5, 32
	addiw a6, a6, 1
	add.uw a7, t6, s0
	add.uw s0, t1, s1
	sd a7, 0(a4)
	add.uw s1, t3, s2
	sd s0, 8(a4)
	add.uw s2, t5, s3
	sd s1, 16(a4)
	add.uw s3, t0, s4
	sd s2, 24(a4)
	add.uw s4, t2, s5
	sd s3, 32(a4)
	add.uw s5, t4, s6
	sd s4, 40(a4)
	sd s5, 48(a4)
	sd a7, 56(a4)
	sd s0, 64(a4)
	sd s1, 72(a4)
	sd s2, 80(a4)
	sd s3, 88(a4)
	sd s4, 96(a4)
	sd s5, 104(a4)
	sd a7, 112(a4)
	sd s0, 120(a4)
	sd s1, 128(a4)
	sd s2, 136(a4)
	sd s3, 144(a4)
	sd s4, 152(a4)
	sd s5, 160(a4)
	sd a7, 168(a4)
	li a7, 4
	sd s0, 176(a4)
	sd s1, 184(a4)
	sd s2, 192(a4)
	sd s3, 200(a4)
	sd s4, 208(a4)
	sd s5, 216(a4)
	bge a6, a7, label219
	addi a4, a4, 224
	j label9
.p2align 2
label781:
	addiw a2, a2, 1
	li a7, 3
	bge a2, a7, label798
	mv a6, zero
	j label3
.p2align 2
label798:
	addiw a0, a0, 1
	li a7, 2
	bge a0, a7, label808
	mv a6, zero
	mv a2, zero
	j label3
.p2align 2
label808:
	addiw a1, a1, 1
	li a0, 10
	bge a1, a0, label815
	li a2, 21
	mv a6, zero
	slli a0, a2, 9
	mv a2, zero
	add a3, a3, a0
	mv a0, zero
	j label3
label815:
	ld a1, 120(sp)
	mv s2, zero
	mv a2, zero
	sd a1, 112(sp)
	sd zero, 104(sp)
label18:
	li a3, 21
	ld a2, 104(sp)
	slli a0, a3, 9
	ld a3, 128(sp)
	mul a1, a2, a0
	li a0, 10
	add a4, a3, a1
	sd a4, 208(sp)
	bge a2, a0, label245
	ld a1, 112(sp)
	mv a2, zero
	sd a1, 216(sp)
	sd zero, 232(sp)
label23:
	ld a5, 144(sp)
	li a1, 100
	ld a2, 232(sp)
	ld a4, 208(sp)
	mul a0, a2, a5
	add a3, a4, a0
	sd a3, 272(sp)
	bge a2, a1, label251
	ld a1, 216(sp)
	mv a0, zero
	sd a1, 312(sp)
	sub a4, zero, zero
	slli a1, a4, 8
	li a4, 1000
	add a2, a3, a1
	bge zero, a4, label257
.p2align 2
label35:
	ld a1, 312(sp)
	mv a3, zero
	sub a4, zero, zero
	li t1, 625
	slli t0, a4, 7
	slli a4, t1, 4
	add a5, a2, t0
	bge zero, a4, label269
.p2align 2
label40:
	mv a4, a1
	mv t0, zero
	lui t5, 24
	sub t4, zero, zero
	addiw t2, t5, 1696
	slli t3, t4, 5
	add t1, a5, t3
	bge zero, t2, label275
.p2align 2
label48:
	mv t2, a4
	mv t3, zero
	lui t5, 244
	addiw t4, t5, 576
	bge zero, t4, label285
.p2align 2
label56:
	slli t6, t3, 3
	li a7, 3
	ld s4, 152(sp)
	sub t5, t6, t3
	sh2add t4, t5, t1
	ble s4, a7, label297
	lw t6, 0(t2)
	lw a7, 8(t4)
	lw s0, 0(t4)
	lw a6, 4(t2)
	addw t5, t6, s0
	lw s1, 4(t4)
	ld s0, 8(t2)
	addw t6, a6, s1
	lw s3, 12(t4)
	srai s1, s0, 32
	addw a6, a7, s0
	addw a7, s1, s3
.p2align 2
label71:
	lui s3, 657125
	addiw s0, s3, -1067
	mul s1, s2, s0
	srli s4, s1, 32
	li s1, 817
	add s3, s4, s2
	srliw s7, s3, 31
	sraiw s5, s3, 9
	add s4, s7, s5
	mulw s6, s4, s1
	subw s5, s2, s6
	addw s3, t5, s5
	mul s7, s3, s0
	srli s6, s7, 32
	add s2, s6, s3
	srliw s7, s2, 31
	sraiw s4, s2, 9
	add s5, s7, s4
	mulw s6, s5, s1
	subw s8, s3, s6
	addw s2, t6, s8
	mul s7, s2, s0
	srli s5, s7, 32
	add s3, s5, s2
	srliw s7, s3, 31
	sraiw s4, s3, 9
	add s6, s7, s4
	mulw s8, s6, s1
	subw s5, s2, s8
	addw s3, a6, s5
	mul s4, s3, s0
	srli s6, s4, 32
	add s2, s6, s3
	srliw s7, s2, 31
	sraiw s0, s2, 9
	add s4, s7, s0
	li s0, 7
	mulw s5, s4, s1
	ld s4, 152(sp)
	subw s6, s3, s5
	addw s2, a7, s6
	bgt s4, s0, label71
	li a7, 4
	mv a6, s2
	ble s4, a7, label793
.p2align 2
label61:
	sh2add t5, a7, t2
	mv t6, a7
	j label62
.p2align 2
label66:
	addi t5, t5, 4
.p2align 2
label62:
	lw a7, 0(t5)
	lui s0, 657125
	li s5, 817
	addiw s1, s0, -1067
	mul s2, a6, s1
	srli s3, s2, 32
	add s0, s3, a6
	srliw s4, s0, 31
	sraiw s1, s0, 9
	add s2, s4, s1
	mulw s3, s2, s5
	sh2add s2, t6, t4
	subw s1, a6, s3
	addiw t6, t6, 1
	addw s0, a7, s1
	lw a7, 0(s2)
	ld s4, 152(sp)
	addw a6, s0, a7
	bgt s4, t6, label66
	addiw t3, t3, 1
	ld t4, 168(sp)
	ble t4, t3, label790
.p2align 2
label69:
	addi t2, t2, 8
	mv s2, a6
	lui t5, 244
	addiw t4, t5, 576
	blt t3, t4, label56
label285:
	mv a6, s2
	addiw t0, t0, 1
	ld t1, 184(sp)
	bgt t1, t0, label55
	addiw a3, a3, 1
	ld a4, 200(sp)
	bgt a4, a3, label47
	addiw a0, a0, 1
	ld a1, 192(sp)
	bgt a1, a0, label75
	ld a2, 232(sp)
	ld a0, 176(sp)
	addiw a2, a2, 1
	bgt a0, a2, label34
	j label76
.p2align 2
label790:
	addiw t0, t0, 1
	ld t1, 184(sp)
	ble t1, t0, label804
.p2align 2
label55:
	addi a4, a4, 48
	mv s2, a6
	slli t2, t0, 3
	lui t5, 24
	sub t4, t2, t0
	addiw t2, t5, 1696
	slli t3, t4, 5
	add t1, a5, t3
	blt t0, t2, label48
label275:
	mv a6, s2
	addiw a3, a3, 1
	ld a4, 200(sp)
	bgt a4, a3, label47
	addiw a0, a0, 1
	ld a1, 192(sp)
	bgt a1, a0, label75
	ld a2, 232(sp)
	ld a0, 176(sp)
	addiw a2, a2, 1
	bgt a0, a2, label34
	j label76
.p2align 2
label793:
	mv a6, s2
	addiw t3, t3, 1
	ld t4, 168(sp)
	bgt t4, t3, label69
	addiw t0, t0, 1
	ld t1, 184(sp)
	bgt t1, t0, label55
	addiw a3, a3, 1
	ld a4, 200(sp)
	bgt a4, a3, label47
label805:
	addiw a0, a0, 1
	ld a1, 192(sp)
	bgt a1, a0, label75
	ld a2, 232(sp)
	ld a0, 176(sp)
	addiw a2, a2, 1
	ble a0, a2, label76
label34:
	ld a0, 136(sp)
	mv s2, a6
	ld a1, 216(sp)
	add a1, a1, a0
	sd a1, 216(sp)
	sd a2, 232(sp)
	j label23
.p2align 2
label804:
	addiw a3, a3, 1
	ld a4, 200(sp)
	ble a4, a3, label812
.p2align 2
label47:
	addi a1, a1, 240
	mv s2, a6
	slli t1, a3, 3
	sub a4, t1, a3
	li t1, 625
	slli t0, a4, 7
	slli a4, t1, 4
	add a5, a2, t0
	blt a3, a4, label40
label269:
	mv a6, s2
	addiw a0, a0, 1
	ld a1, 192(sp)
	bgt a1, a0, label75
	ld a2, 232(sp)
	ld a0, 176(sp)
	addiw a2, a2, 1
	bgt a0, a2, label34
	j label76
label297:
	mv a7, zero
	mv a6, s2
	mv s2, zero
	ld s4, 152(sp)
	bgt s4, zero, label61
	mv a6, zero
	addiw t3, t3, 1
	ld t4, 168(sp)
	bgt t4, t3, label69
	addiw t0, t0, 1
	ld t1, 184(sp)
	bgt t1, t0, label55
	addiw a3, a3, 1
	ld a4, 200(sp)
	bgt a4, a3, label47
	j label805
.p2align 2
label812:
	addiw a0, a0, 1
	ld a1, 192(sp)
	ble a1, a0, label816
label75:
	ld a1, 312(sp)
	mv s2, a6
	slli a2, a0, 3
	addi a1, a1, 960
	sub a4, a2, a0
	sd a1, 312(sp)
	ld a3, 272(sp)
	slli a1, a4, 8
	li a4, 1000
	add a2, a3, a1
	blt a0, a4, label35
label257:
	mv a6, s2
	ld a2, 232(sp)
	ld a0, 176(sp)
	addiw a2, a2, 1
	bgt a0, a2, label34
	j label76
label816:
	ld a2, 232(sp)
	ld a0, 176(sp)
	addiw a2, a2, 1
	bgt a0, a2, label34
label76:
	ld a2, 104(sp)
	ld a0, 160(sp)
	addiw a2, a2, 1
	ble a0, a2, label365
	li a3, 45
	mv s2, a6
	ld a1, 112(sp)
	slli a0, a3, 7
	add a1, a1, a0
	sd a1, 112(sp)
	sd a2, 104(sp)
	j label18
label365:
	mv a0, a6
label79:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 328
	ret
label245:
	mv a0, s2
	j label79
label251:
	mv a6, s2
	j label76
