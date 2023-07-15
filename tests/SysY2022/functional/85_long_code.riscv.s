.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
count:
	.zero	4000
.text
QuickSort:
	addi sp, sp, -32
	sd s0, 24(sp)
	mv s0, a0
	sd s1, 16(sp)
	mv s1, a2
	sd s2, 8(sp)
	sd ra, 0(sp)
	ble a2, a1, label21
	sh2add a3, a1, a0
	mv s2, a1
	lw a0, 0(a3)
	mv a3, a2
	addiw a2, a0, -1
	ble s1, a1, label8
	bge a1, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, a3, -1
	bge a1, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, a3, -1
	bge a1, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, a3, -1
	bge a1, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
label228:
	addiw a3, a3, -1
	bge s2, a3, label13
	j label194
label14:
	ble a3, s2, label18
	sh2add a4, s2, s0
	lw a5, 0(a4)
	ble a0, a5, label18
	addiw s2, s2, 1
	ble a3, s2, label18
	sh2add a4, s2, s0
	lw a5, 0(a4)
	ble a0, a5, label18
	addiw s2, s2, 1
	ble a3, s2, label18
	sh2add a4, s2, s0
	lw a5, 0(a4)
	ble a0, a5, label18
	addiw s2, s2, 1
	ble a3, s2, label18
	sh2add a4, s2, s0
	lw a5, 0(a4)
	ble a0, a5, label18
	j label218
label18:
	ble a3, s2, label5
	sh2add t0, s2, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	addiw a3, a3, -1
	sw a4, 0(a5)
	ble a3, s2, label8
	bge s2, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, a3, -1
	bge s2, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, a3, -1
	bge s2, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, a3, -1
	bge s2, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	j label228
label5:
	ble a3, s2, label8
	bge s2, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, a3, -1
	bge s2, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, a3, -1
	bge s2, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, a3, -1
	bge s2, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	j label228
label8:
	sh2add a3, s2, s0
	addiw a2, s2, -1
	sw a0, 0(a3)
	mv a0, s0
	jal QuickSort
	addiw a1, s2, 1
	ble s1, a1, label21
	sh2add a3, a1, s0
	mv s2, a1
	lw a0, 0(a3)
	mv a3, s1
	addiw a2, a0, -1
	bge a1, s1, label13
	sh2add a5, s1, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, s1, -1
	bge a1, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, a3, -1
	bge a1, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, a3, -1
	bge a1, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	j label228
label13:
	bge s2, a3, label14
	sh2add t0, a3, s0
	sh2add a5, s2, s0
	lw a4, 0(t0)
	addiw s2, s2, 1
	sw a4, 0(a5)
	ble a3, s2, label18
	sh2add a4, s2, s0
	lw a5, 0(a4)
	ble a0, a5, label18
	addiw s2, s2, 1
	ble a3, s2, label18
	sh2add a4, s2, s0
	lw a5, 0(a4)
	ble a0, a5, label18
	addiw s2, s2, 1
	ble a3, s2, label18
	sh2add a4, s2, s0
	lw a5, 0(a4)
	ble a0, a5, label18
	addiw s2, s2, 1
	ble a3, s2, label18
	sh2add a4, s2, s0
	lw a5, 0(a4)
	ble a0, a5, label18
	addiw s2, s2, 1
	ble a3, s2, label18
label236:
	sh2add a4, s2, s0
	lw a5, 0(a4)
	ble a0, a5, label18
	j label218
label194:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
label212:
	addiw a3, a3, -1
	bge s2, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	j label212
label218:
	addiw s2, s2, 1
	ble a3, s2, label18
	j label236
label21:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
.globl main
main:
	addi sp, sp, -440
	li a0, 7
	li a1, 23
	li a4, 282
	li a5, 254
	li t0, 27
	li t1, 5
	li t2, 83
	li t3, 273
	li t4, 574
	li t5, 905
	li t6, 354
	li a6, 657
	li a7, 935
	addi a2, sp, 16
	addi a3, sp, 160
	sd s0, 336(sp)
	li s0, 264
	sd s5, 344(sp)
	li s5, 929
	sd s1, 352(sp)
	li s1, 639
	sd s6, 360(sp)
	li s6, 756
	sd s2, 368(sp)
	li s2, 459
	sd s3, 376(sp)
	li s3, 29
	sd s4, 384(sp)
	li s4, 68
	sd s7, 392(sp)
	li s7, 452
	sd s11, 400(sp)
	li s11, 279
	sd s8, 408(sp)
	li s8, 28
	sd s9, 416(sp)
	li s9, 1
	sd s10, 424(sp)
	li s10, 290
	sd ra, 432(sp)
	sd a3, 304(sp)
	li a3, 26
	sd a2, 296(sp)
	li a2, 89
	sw a0, 16(sp)
	sw a1, 20(sp)
	sw a2, 24(sp)
	sw a3, 28(sp)
	sw a4, 32(sp)
	sw a5, 36(sp)
	sw t0, 40(sp)
	sw t1, 44(sp)
	sw t2, 48(sp)
	sw t3, 52(sp)
	sw t4, 56(sp)
	sw t5, 60(sp)
	sw t6, 64(sp)
	sw a6, 68(sp)
	sw a7, 72(sp)
	sw s0, 76(sp)
	sw s1, 80(sp)
	sw s2, 84(sp)
	sw s3, 88(sp)
	sw s4, 92(sp)
	sw s5, 96(sp)
	sw s6, 100(sp)
	sw s7, 104(sp)
	sd s11, 328(sp)
	sw s11, 108(sp)
	li s11, 58
	sd s11, 320(sp)
	sw s11, 112(sp)
	li s11, 87
	sd s11, 0(sp)
	sw s11, 116(sp)
	li s11, 96
	sd s11, 8(sp)
	sw s11, 120(sp)
	li s11, 36
	sd s11, 144(sp)
	sw s11, 124(sp)
	li s11, 39
	sd s11, 152(sp)
	sw s11, 128(sp)
	sw s8, 132(sp)
	sw s9, 136(sp)
	sw s10, 140(sp)
	sw a0, 160(sp)
pcrel1232:
	auipc a0, %pcrel_hi(count)
	sw a1, 164(sp)
	sw a2, 168(sp)
	addi a2, a0, %pcrel_lo(pcrel1232)
	sw a3, 172(sp)
	sw a4, 176(sp)
	sw a5, 180(sp)
	sw t0, 184(sp)
	sw t1, 188(sp)
	sw t2, 192(sp)
	sw t3, 196(sp)
	sw t4, 200(sp)
	sw t5, 204(sp)
	sw t6, 208(sp)
	sw a6, 212(sp)
	sw a7, 216(sp)
	sw s0, 220(sp)
	mv s0, zero
	sw s1, 224(sp)
	sw s2, 228(sp)
	sw s3, 232(sp)
	sw s4, 236(sp)
	sw s5, 240(sp)
	sw s6, 244(sp)
	sw s7, 248(sp)
	ld s11, 328(sp)
	sw s11, 252(sp)
	ld s11, 320(sp)
	sw s11, 256(sp)
	ld s11, 0(sp)
	sw s11, 260(sp)
	ld s11, 8(sp)
	sw s11, 264(sp)
	ld s11, 144(sp)
	sw s11, 268(sp)
	ld s11, 152(sp)
	sw s11, 272(sp)
	sw s8, 276(sp)
	sw s9, 280(sp)
	sw s10, 284(sp)
	sd a2, 288(sp)
label269:
	ld a3, 304(sp)
	sh2add a1, s0, a3
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	bge s0, a0, label440
	j label269
label440:
	mv a1, zero
	li a2, 32
	li a3, 31
	subw a4, a2, zero
	addiw a0, a4, -1
	bge zero, a3, label446
	mv a2, zero
	ble a0, zero, label277
	ld a3, 304(sp)
	mv t0, a3
	lw a4, 0(a3)
	lw a5, 4(a3)
	li t0, 1
	ble a4, a5, label460
	mv a2, a3
	sw a4, 4(a3)
	sw a5, 0(a3)
	mv a2, t0
	ble a0, t0, label277
	sh2add t0, t0, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label460
	sh2add a2, a2, a3
	sw a4, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	ble a0, t0, label277
	j label1109
label446:
	mv s0, zero
	j label278
label1109:
	ld a3, 304(sp)
	sh2add t0, a2, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label460
label1139:
	ld a3, 304(sp)
	sh2add a2, a2, a3
	sw a4, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	ble a0, t0, label277
	j label1168
label278:
	ld a3, 304(sp)
	sh2add a1, s0, a3
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	bge s0, a0, label280
	j label278
label1168:
	ld a3, 304(sp)
	sh2add t0, a2, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label460
	j label1139
label460:
	mv a2, t0
	ble a0, t0, label277
	ld a3, 304(sp)
	sh2add t0, t0, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label460
	sh2add a2, a2, a3
	sw a4, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	ble a0, t0, label277
	sh2add t0, t0, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label460
	sh2add a2, a2, a3
	sw a4, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	ble a0, t0, label277
	sh2add t0, t0, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label460
	j label1139
label277:
	addiw a1, a1, 1
	li a2, 32
	li a3, 31
	subw a4, a2, a1
	addiw a0, a4, -1
	bge a1, a3, label446
	mv a2, zero
	ble a0, zero, label277
	ld a3, 304(sp)
	mv t0, a3
	lw a4, 0(a3)
	lw a5, 4(a3)
	li t0, 1
	ble a4, a5, label460
	mv a2, a3
	sw a4, 4(a3)
	sw a5, 0(a3)
	mv a2, t0
	ble a0, t0, label277
	sh2add t0, t0, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label460
	sh2add a2, a2, a3
	sw a4, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	ble a0, t0, label277
	j label1109
label280:
	lw a1, 224(sp)
	lw a2, 220(sp)
	addw a0, a1, a2
	srliw a1, a0, 31
	add a2, a0, a1
	sraiw a0, a2, 1
	jal putint
	mv a0, zero
label281:
	ld a2, 288(sp)
	sh2add a1, a0, a2
	addiw a0, a0, 16
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	li a1, 992
	bge a0, a1, label283
	j label281
label283:
	ld a2, 288(sp)
	sh2add a0, a0, a2
	li a2, 4
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	sw zero, 16(a0)
	sw zero, 20(a0)
	sw zero, 24(a0)
	sw zero, 28(a0)
	mv a0, zero
	sd a2, 312(sp)
	mv a4, zero
	mv a1, zero
label284:
	ld a3, 304(sp)
	sh2add a1, a1, a3
	lw a5, 0(a1)
	ld a2, 288(sp)
	sh2add t0, a5, a2
	lw t1, 0(t0)
	addiw a3, t1, 1
	sw a3, 0(t0)
	lw t2, 4(a1)
	max t0, a4, a3
	sh2add a2, t2, a2
	lw t3, 0(a2)
	addiw t1, t3, 1
	blt a4, a3, label1017
	mv a5, a0
label1017:
	mv a3, t2
	blt t0, t1, label1019
	mv a3, a5
label1019:
	max a4, t0, t1
	sw t1, 0(a2)
	lw a0, 8(a1)
	ld a2, 288(sp)
	sh2add a5, a0, a2
	lw t0, 0(a5)
	addiw a2, t0, 1
	blt a4, a2, label1021
	mv a0, a3
label1021:
	max a3, a4, a2
	sw a2, 0(a5)
	lw a1, 12(a1)
	ld a2, 288(sp)
	sh2add a5, a1, a2
	lw a4, 0(a5)
	addiw a2, a4, 1
	blt a3, a2, label1023
	mv a1, a0
label1023:
	max a4, a3, a2
	sw a2, 0(a5)
	li a5, 32
	ld a2, 312(sp)
	addiw a3, a2, 4
	bge a3, a5, label551
	mv a0, a1
	sd a3, 312(sp)
	mv a1, a2
	mv a2, a3
	j label284
label551:
	ld a2, 312(sp)
	mv a0, a2
	ld a3, 304(sp)
	sh2add t0, a2, a3
	lw a5, 0(t0)
	ld a2, 288(sp)
	sh2add a3, a5, a2
	mv a2, a5
	lw t1, 0(a3)
	addiw t0, t1, 1
	blt a4, t0, label1025
	mv a2, a1
label1025:
	sw t0, 0(a3)
	max a4, a4, t0
	addiw a0, a0, 1
	li a1, 32
	bge a0, a1, label293
	mv a1, a2
	ld a3, 304(sp)
	sh2add t0, a0, a3
	lw a5, 0(t0)
	ld a2, 288(sp)
	sh2add a3, a5, a2
	mv a2, a5
	lw t1, 0(a3)
	addiw t0, t1, 1
	blt a4, t0, label1025
	mv a2, a1
	sw t0, 0(a3)
	max a4, a4, t0
	addiw a0, a0, 1
	li a1, 32
	bge a0, a1, label293
	mv a1, a2
	ld a3, 304(sp)
	sh2add t0, a0, a3
	lw a5, 0(t0)
	ld a2, 288(sp)
	sh2add a3, a5, a2
	mv a2, a5
	lw t1, 0(a3)
	addiw t0, t1, 1
	blt a4, t0, label1025
label1145:
	mv a2, a1
	sw t0, 0(a3)
	max a4, a4, t0
	addiw a0, a0, 1
	li a1, 32
	bge a0, a1, label293
	mv a1, a2
	ld a3, 304(sp)
	sh2add t0, a0, a3
	lw a5, 0(t0)
	ld a2, 288(sp)
	sh2add a3, a5, a2
	mv a2, a5
	lw t1, 0(a3)
	addiw t0, t1, 1
	blt a4, t0, label1025
	j label1145
label293:
	mv a0, a2
	jal putint
	mv a1, zero
	li a0, 4
	li a2, 32
	bge a0, a2, label297
	j label296
label297:
	ld a2, 296(sp)
	sh2add a4, a1, a2
	lw a0, 0(a4)
	ld a3, 304(sp)
	sh2add a2, a1, a3
	addiw a1, a1, 1
	sw a0, 0(a2)
	li a0, 32
	bge a1, a0, label596
	j label297
label596:
	mv a1, zero
	li a3, 32
	subw a2, a3, zero
	li a3, 31
	addiw a0, a2, -1
	bge zero, a3, label602
	mv a2, zero
	ble a0, zero, label363
	ld a3, 304(sp)
	mv t0, a3
	lw a4, 0(a3)
	lw a5, 4(a3)
	li t0, 1
	ble a4, a5, label864
	mv a2, a3
	sw a4, 4(a3)
	sw a5, 0(a3)
	mv a2, t0
	ble a0, t0, label363
	sh2add t0, t0, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label864
	sh2add a2, a2, a3
	sw a4, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	ble a0, t0, label363
	j label1133
label602:
	mv s0, zero
	j label301
label864:
	mv a2, t0
	ble a0, t0, label363
	ld a3, 304(sp)
	sh2add t0, t0, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label864
	sh2add a2, a2, a3
	sw a4, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	ble a0, t0, label363
	sh2add t0, t0, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label864
	sh2add a2, a2, a3
	sw a4, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	ble a0, t0, label363
	sh2add t0, t0, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label864
	j label1162
label1133:
	ld a3, 304(sp)
	sh2add t0, a2, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label864
	j label1162
label363:
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addiw a0, a2, -1
	bge a1, a3, label602
	mv a2, zero
	ble a0, zero, label363
	ld a3, 304(sp)
	mv t0, a3
	lw a4, 0(a3)
	lw a5, 4(a3)
	li t0, 1
	ble a4, a5, label864
	mv a2, a3
	sw a4, 4(a3)
	sw a5, 0(a3)
	mv a2, t0
	ble a0, t0, label363
	sh2add t0, t0, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label864
	sh2add a2, a2, a3
	sw a4, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	ble a0, t0, label363
	j label1133
label1162:
	ld a3, 304(sp)
	sh2add a2, a2, a3
	sw a4, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	ble a0, t0, label363
	sh2add t0, t0, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label864
	j label1162
label301:
	ld a3, 304(sp)
	sh2add a1, s0, a3
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	bge s0, a0, label610
	j label301
label610:
	mv a1, zero
	li a0, 4
	li a2, 32
	bge a0, a2, label306
	j label305
label296:
	ld a2, 296(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	ld a3, 304(sp)
	sh2add a1, a1, a3
	sw a5, 0(a1)
	lw a3, 4(a4)
	sw a3, 4(a1)
	lw a2, 8(a4)
	sw a2, 8(a1)
	lw a3, 12(a4)
	sw a3, 12(a1)
	mv a1, a0
	addiw a0, a0, 4
	li a2, 32
	bge a0, a2, label297
	j label296
label305:
	ld a2, 296(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	ld a3, 304(sp)
	sh2add a1, a1, a3
	sw a5, 0(a1)
	lw a2, 4(a4)
	sw a2, 4(a1)
	lw a3, 8(a4)
	sw a3, 8(a1)
	lw a2, 12(a4)
	sw a2, 12(a1)
	mv a1, a0
	addiw a0, a0, 4
	li a2, 32
	bge a0, a2, label306
	j label305
label306:
	ld a2, 296(sp)
	sh2add a4, a1, a2
	lw a0, 0(a4)
	ld a3, 304(sp)
	sh2add a2, a1, a3
	addiw a1, a1, 1
	sw a0, 0(a2)
	li a0, 32
	bge a1, a0, label639
	j label306
label639:
	li a0, 1
	li a1, 32
	bge a0, a1, label643
	ld a3, 304(sp)
	addiw a2, a0, -1
	sh2add a4, a0, a3
	lw a1, 0(a4)
	blt a2, zero, label313
	sh2add a5, a2, a3
	lw a4, 0(a5)
	bge a1, a4, label313
	addiw a5, a2, 1
	addiw a2, a2, -1
	sh2add t0, a5, a3
	sw a4, 0(t0)
	blt a2, zero, label313
	sh2add a5, a2, a3
	lw a4, 0(a5)
	bge a1, a4, label313
	addiw a5, a2, 1
	addiw a2, a2, -1
	sh2add t0, a5, a3
	sw a4, 0(t0)
	blt a2, zero, label313
	j label1179
label643:
	mv s0, zero
	j label316
label313:
	addiw a2, a2, 1
	addiw a0, a0, 1
	ld a3, 304(sp)
	sh2add a4, a2, a3
	sw a1, 0(a4)
	li a1, 32
	bge a0, a1, label643
	addiw a2, a0, -1
	sh2add a4, a0, a3
	lw a1, 0(a4)
	blt a2, zero, label313
	sh2add a5, a2, a3
	lw a4, 0(a5)
	bge a1, a4, label313
	addiw a5, a2, 1
	addiw a2, a2, -1
	sh2add t0, a5, a3
	sw a4, 0(t0)
	blt a2, zero, label313
	sh2add a5, a2, a3
	lw a4, 0(a5)
	bge a1, a4, label313
	addiw a5, a2, 1
	addiw a2, a2, -1
	sh2add t0, a5, a3
	sw a4, 0(t0)
	blt a2, zero, label313
	j label1179
label316:
	ld a3, 304(sp)
	sh2add a1, s0, a3
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	bge s0, a0, label674
	j label316
label674:
	mv a1, zero
	li a0, 4
	li a2, 32
	bge a0, a2, label320
	j label360
label1179:
	ld a3, 304(sp)
	sh2add a5, a2, a3
	lw a4, 0(a5)
	bge a1, a4, label313
	addiw a5, a2, 1
	addiw a2, a2, -1
	sh2add t0, a5, a3
	sw a4, 0(t0)
	blt a2, zero, label313
	j label1179
label360:
	ld a2, 296(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	ld a3, 304(sp)
	sh2add a1, a1, a3
	sw a5, 0(a1)
	lw a3, 4(a4)
	sw a3, 4(a1)
	lw a2, 8(a4)
	sw a2, 8(a1)
	lw a3, 12(a4)
	sw a3, 12(a1)
	mv a1, a0
	addiw a0, a0, 4
	li a2, 32
	bge a0, a2, label320
	j label360
label320:
	ld a2, 296(sp)
	sh2add a4, a1, a2
	lw a0, 0(a4)
	ld a3, 304(sp)
	sh2add a2, a1, a3
	addiw a1, a1, 1
	sw a0, 0(a2)
	li a0, 32
	bge a1, a0, label322
	j label320
label322:
	ld a3, 304(sp)
	mv a1, zero
	li a2, 31
	mv a0, a3
	jal QuickSort
	mv s0, zero
label323:
	ld a3, 304(sp)
	sh2add a1, s0, a3
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	bge s0, a0, label697
	j label323
label697:
	mv a1, zero
	li a0, 4
	li a2, 32
	bge a0, a2, label327
label359:
	ld a2, 296(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	ld a3, 304(sp)
	sh2add a1, a1, a3
	sw a5, 0(a1)
	lw a2, 4(a4)
	sw a2, 4(a1)
	lw a3, 8(a4)
	sw a3, 8(a1)
	lw a2, 12(a4)
	sw a2, 12(a1)
	mv a1, a0
	addiw a0, a0, 4
	li a2, 32
	bge a0, a2, label327
	j label359
label327:
	ld a2, 296(sp)
	sh2add a4, a1, a2
	lw a0, 0(a4)
	ld a3, 304(sp)
	sh2add a2, a1, a3
	addiw a1, a1, 1
	sw a0, 0(a2)
	li a0, 32
	bge a1, a0, label712
	j label327
label712:
	mv a1, zero
	mv a0, zero
	li a2, 32
	bge zero, a2, label716
	j label332
label716:
	mv s0, zero
	j label335
label332:
	ld a3, 304(sp)
	sh2add a4, a0, a3
	lw a2, 0(a4)
	slli a4, a0, 1
	addw a1, a1, a2
	srli a2, a4, 62
	add a3, a0, a2
	andi a4, a3, -4
	li a3, 3
	subw a2, a0, a4
	beq a2, a3, label334
	ld a3, 304(sp)
	sh2add a2, a0, a3
	addiw a0, a0, 1
	sw zero, 0(a2)
	li a2, 32
	bge a0, a2, label716
	j label332
label334:
	ld a3, 304(sp)
	sh2add a2, a0, a3
	addiw a0, a0, 1
	sw a1, 0(a2)
	mv a1, zero
	li a2, 32
	bge a0, a2, label716
	j label332
label335:
	ld a3, 304(sp)
	sh2add a1, s0, a3
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	bge s0, a0, label739
	j label335
label739:
	mv a1, zero
	li a0, 4
	li a2, 32
	bge a0, a2, label339
label358:
	ld a2, 296(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	ld a3, 304(sp)
	sh2add a1, a1, a3
	sw a5, 0(a1)
	lw a2, 4(a4)
	sw a2, 4(a1)
	lw a3, 8(a4)
	sw a3, 8(a1)
	lw a2, 12(a4)
	sw a2, 12(a1)
	mv a1, a0
	addiw a0, a0, 4
	li a2, 32
	bge a0, a2, label339
	j label358
label339:
	ld a2, 296(sp)
	sh2add a4, a1, a2
	lw a0, 0(a4)
	ld a3, 304(sp)
	sh2add a2, a1, a3
	addiw a1, a1, 1
	sw a0, 0(a2)
	li a0, 32
	bge a1, a0, label754
	j label339
label754:
	mv a0, zero
	mv a1, zero
	mv a2, zero
	li a3, 32
	bge zero, a3, label758
	li a3, 2
	bge zero, a3, label346
	ld a3, 304(sp)
	mv a5, a3
	li a2, 1
	lw a4, 0(a3)
	sext.w a1, a4
	li a3, 32
	bge a2, a3, label758
	li a3, 2
	bge a2, a3, label346
label1155:
	ld a3, 304(sp)
	sh2add a5, a2, a3
	addiw a2, a2, 1
	lw a4, 0(a5)
	addw a1, a1, a4
	li a3, 32
	bge a2, a3, label758
label1184:
	li a3, 2
	bge a2, a3, label346
	j label1155
label758:
	li a0, 30
	addiw a1, a0, 4
	li a2, 32
	bge a1, a2, label353
	ld a3, 304(sp)
	sh2add a0, a0, a3
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	mv a0, a1
	addiw a1, a1, 4
	bge a1, a2, label353
	sh2add a0, a0, a3
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	mv a0, a1
	addiw a1, a1, 4
	bge a1, a2, label353
	j label1185
label346:
	li a3, 2
	bne a2, a3, label348
	lw a0, 160(sp)
	li a4, 1431655766
	mul a2, a1, a4
	srli a4, a2, 63
	srli a3, a2, 32
	add a2, a4, a3
	sw a2, 160(sp)
	li a2, 3
	li a3, 32
	bge a2, a3, label758
	li a3, 2
	bge a2, a3, label346
	ld a3, 304(sp)
	sh2add a5, a2, a3
	addiw a2, a2, 1
	lw a4, 0(a5)
	addw a1, a1, a4
	li a3, 32
	bge a2, a3, label758
	li a3, 2
	bge a2, a3, label346
	ld a3, 304(sp)
	sh2add a5, a2, a3
	addiw a2, a2, 1
	lw a4, 0(a5)
	addw a1, a1, a4
	li a3, 32
	bge a2, a3, label758
	j label1184
label348:
	ld a3, 304(sp)
	sh2add a4, a2, a3
	addiw a2, a2, 1
	lw a5, 0(a4)
	addw a3, a1, a5
	li a5, 1431655766
	subw a1, a3, a0
	mul a0, a1, a5
	srli t0, a0, 63
	srli a3, a0, 32
	lw a0, -8(a4)
	add a5, t0, a3
	sw a5, -8(a4)
	li a3, 32
	bge a2, a3, label758
	li a3, 2
	bge a2, a3, label346
	ld a3, 304(sp)
	sh2add a5, a2, a3
	addiw a2, a2, 1
	lw a4, 0(a5)
	addw a1, a1, a4
	li a3, 32
	bge a2, a3, label758
	li a3, 2
	bge a2, a3, label346
	ld a3, 304(sp)
	sh2add a5, a2, a3
	addiw a2, a2, 1
	lw a4, 0(a5)
	addw a1, a1, a4
	li a3, 32
	bge a2, a3, label758
	li a3, 2
	bge a2, a3, label346
	j label1155
label1185:
	ld a3, 304(sp)
	sh2add a0, a0, a3
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	mv a0, a1
	addiw a1, a1, 4
	li a2, 32
	bge a1, a2, label353
	j label1185
label353:
	ld a3, 304(sp)
	sh2add a1, a0, a3
	addiw a0, a0, 1
	sw zero, 0(a1)
	li a1, 32
	bge a0, a1, label799
	j label353
label799:
	mv s0, zero
label355:
	ld a3, 304(sp)
	sh2add a1, s0, a3
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	bge s0, a0, label357
	j label355
label357:
	mv a0, zero
	ld ra, 432(sp)
	ld s10, 424(sp)
	ld s9, 416(sp)
	ld s8, 408(sp)
	ld s11, 400(sp)
	ld s7, 392(sp)
	ld s4, 384(sp)
	ld s3, 376(sp)
	ld s2, 368(sp)
	ld s6, 360(sp)
	ld s1, 352(sp)
	ld s5, 344(sp)
	ld s0, 336(sp)
	addi sp, sp, 440
	ret
