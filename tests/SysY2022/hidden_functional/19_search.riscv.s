.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
a:
	.zero	3600
.text
.p2align 2
search:
	# stack usage: CalleeArg[0] Local[0] RegSpill[72] CalleeSaved[104]
	addi sp, sp, -176
	mv t0, a0
	sd ra, 0(sp)
	sd s4, 8(sp)
	mv s4, a1
	sd s1, 16(sp)
	li s1, 1
	sd s6, 24(sp)
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s2, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	sd a3, 160(sp)
	sd a0, 152(sp)
pcrel333:
	auipc a0, %pcrel_hi(a)
	sd a1, 144(sp)
	addi a3, a0, %pcrel_lo(pcrel333)
	li a1, 10
	sd a2, 136(sp)
	sd a6, 128(sp)
	sd a4, 120(sp)
	sd a5, 112(sp)
	sd a7, 104(sp)
	sd a3, 168(sp)
	ble a2, a1, label69
	lui a0, 262144
label2:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s1, 16(sp)
	ld s6, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 176
	ret
label69:
	ld a3, 160(sp)
	lui s2, 262144
	mv a0, zero
	mv s0, a3
	j label5
label21:
	addiw s6, a0, 1
	li a3, 2
	bge a1, a3, label23
label22:
	addi s0, s0, 8
	mv a0, s6
label5:
	li a1, 4
	bge a0, a1, label9
	ld t0, 152(sp)
	ld a3, 168(sp)
	slli a1, t0, 4
	ld s4, 144(sp)
	sub a2, a1, t0
	mv a1, zero
	sh3add s3, a2, a3
	mv a2, t0
	sh2add a3, s4, s3
	lw a4, 0(a3)
	beq a4, s1, label19
.p2align 2
label16:
	ld a6, 128(sp)
	lw a3, 0(a6)
	beq a2, a3, label17
	lw a3, 0(s0)
	addiw a1, a1, 1
	lw a4, 4(s0)
	slli t0, a3, 4
	addw a2, a2, a3
	addw s4, s4, a4
	subw a5, t0, a3
	sh3add s3, a5, s3
	sh2add a3, s4, s3
	lw a4, 0(a3)
	bne a4, s1, label16
	j label19
label17:
	ld a7, 104(sp)
	lw a3, 0(a7)
	bne s4, a3, label18
label19:
	ld a6, 128(sp)
	lw a3, 0(a6)
	bne a2, a3, label21
	ld a7, 104(sp)
	lw a3, 0(a7)
	bne s4, a3, label21
	mv a0, s1
	j label2
label18:
	lw a3, 0(s0)
	addiw a1, a1, 1
	slli t0, a3, 4
	addw a2, a2, a3
	lw a4, 4(s0)
	subw a5, t0, a3
	addw s4, s4, a4
	sh3add s3, a5, s3
	sh2add a3, s4, s3
	lw a4, 0(a3)
	bne a4, s1, label16
	j label19
label23:
	beq a2, zero, label22
	ld a5, 112(sp)
	lw a1, 0(a5)
	addiw a4, a1, 1
	sltiu a1, s4, 1
	xor a3, a2, a4
	sltiu a0, a3, 1
	or a4, a0, a1
	bne a4, zero, label22
	ld a4, 120(sp)
	lw a1, 0(a4)
	addiw a0, a1, 1
	beq s4, a0, label22
	sh2add a1, s4, s3
	sw zero, 0(a1)
	lw a0, 0(s0)
	lw a1, 4(s0)
	subw s7, a2, a0
	subw s8, s4, a1
	ld a2, 136(sp)
	li a1, 10
	addiw a3, a2, 1
	bgt a3, a1, label151
	ld a3, 160(sp)
	lui s9, 262144
	mv s10, zero
	mv s5, a3
	j label30
label45:
	addiw s10, s10, 1
	li a4, 2
	blt a3, a4, label46
	beq a2, zero, label46
	ld a5, 112(sp)
	lw a4, 0(a5)
	sltiu a5, a1, 1
	addiw t0, a4, 1
	xor t1, a2, t0
	sltiu a3, t1, 1
	or a4, a3, a5
	bne a4, zero, label46
	ld a4, 120(sp)
	lw a3, 0(a4)
	addiw a5, a3, 1
	bne a1, a5, label51
label46:
	addi s5, s5, 8
label30:
	li a0, 4
	bge s10, a0, label34
	slli a2, s7, 4
	ld a3, 168(sp)
	sub a1, a2, s7
	mv a2, s7
	sh3add a0, a1, a3
	mv a1, s8
	mv a3, zero
	j label36
label43:
	ld a7, 104(sp)
	lw a4, 0(a7)
	beq a1, a4, label44
label42:
	lw a4, 0(s5)
	addiw a3, a3, 1
	slli t1, a4, 4
	addw a2, a2, a4
	lw a5, 4(s5)
	subw t0, t1, a4
	addw a1, a1, a5
	sh3add a0, t0, a0
label36:
	sh2add a5, a1, a0
	lw a4, 0(a5)
	beq a4, s1, label44
	ld a6, 128(sp)
	lw a4, 0(a6)
	beq a2, a4, label43
	j label42
label44:
	ld a6, 128(sp)
	lw a4, 0(a6)
	bne a2, a4, label45
	ld a7, 104(sp)
	lw a4, 0(a7)
	beq a1, a4, label240
	j label45
label151:
	lui a0, 262144
label27:
	addiw a1, a0, 1
	sh2add a2, s4, s3
	addi s0, s0, 8
	mv a0, s6
	min s2, s2, a1
	sw s1, 0(a2)
	j label5
label9:
	lui a0, 262144
	li a1, 10
	bgt s2, a1, label2
	mv a0, s2
	j label2
label51:
	sh2add s11, a1, a0
	sw zero, 0(s11)
	lw a4, 0(s5)
	lw a3, 4(s5)
	subw a0, a2, a4
	subw a1, a1, a3
	ld a2, 136(sp)
	ld a7, 104(sp)
	addiw a2, a2, 2
	ld a5, 112(sp)
	ld a4, 120(sp)
	ld a6, 128(sp)
	ld a3, 160(sp)
	jal search
	addi s5, s5, 8
	addiw a1, a0, 1
	sw s1, 0(s11)
	min s9, s9, a1
	j label30
label34:
	lui a0, 262144
	li a1, 10
	bgt s9, a1, label27
	addiw a1, s9, 1
	sh2add a2, s4, s3
	addi s0, s0, 8
	mv a0, s6
	min s2, s2, a1
	sw s1, 0(a2)
	j label5
label240:
	addiw a1, s1, 1
	sh2add a2, s4, s3
	addi s0, s0, 8
	mv a0, s6
	min s2, s2, a1
	sw s1, 0(a2)
	j label5
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[48] RegSpill[0] CalleeSaved[104]
	addi sp, sp, -152
	li a2, -1
	sd ra, 0(sp)
	zext.w a0, a2
	sd s2, 8(sp)
	addi s2, sp, 144
	sd s4, 16(sp)
	addi s4, sp, 148
	sd s5, 24(sp)
	addi s5, sp, 104
	sd s0, 32(sp)
	li s0, 1
	sd s1, 40(sp)
	zext.w a1, s0
	sd s6, 48(sp)
	mv s6, zero
	sd s3, 56(sp)
	sd s8, 64(sp)
	mv s8, zero
	sd s7, 72(sp)
	sd s10, 80(sp)
	sd s11, 88(sp)
	sd s9, 96(sp)
	sd a1, 112(sp)
	li a1, 1
	sd a0, 120(sp)
	slli s1, a1, 32
	sub a0, zero, s1
	sd s1, 128(sp)
	sd a0, 136(sp)
pcrel1035:
	auipc a0, %pcrel_hi(a)
	sw zero, 148(sp)
	addi s3, a0, %pcrel_lo(pcrel1035)
	sw zero, 144(sp)
	j label335
.p2align 2
label1017:
	mv s6, s10
	mv s8, s11
.p2align 2
label366:
	addi a3, sp, 112
	addi a4, sp, 108
	mv a0, s8
	mv a1, s6
	mv a2, s0
	mv a5, s5
	mv a6, s4
	mv a7, s2
	jal search
	mv a1, a0
	li a2, 11
	blt a0, a2, label1003
	li a1, -1
label1003:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
.p2align 2
label335:
	jal getint
	sw a0, 108(sp)
	mv s7, a0
	jal getint
	sw a0, 104(sp)
	beq s7, zero, label369
	mv a0, s3
	mv a2, zero
	j label339
.p2align 2
label342:
	addi a0, a0, 480
.p2align 2
label339:
	ori a1, s1, 1
	addiw a2, a2, 4
	li a3, 28
	sd a1, 0(a0)
	sd a1, 8(a0)
	sd a1, 16(a0)
	sd a1, 24(a0)
	sd a1, 32(a0)
	sd a1, 40(a0)
	sd a1, 48(a0)
	sd a1, 56(a0)
	sd a1, 64(a0)
	sd a1, 72(a0)
	sd a1, 80(a0)
	sd a1, 88(a0)
	sd a1, 96(a0)
	sd a1, 104(a0)
	sd a1, 112(a0)
	sd a1, 120(a0)
	sd a1, 128(a0)
	sd a1, 136(a0)
	sd a1, 144(a0)
	sd a1, 152(a0)
	sd a1, 160(a0)
	sd a1, 168(a0)
	sd a1, 176(a0)
	sd a1, 184(a0)
	sd a1, 192(a0)
	sd a1, 200(a0)
	sd a1, 208(a0)
	sd a1, 216(a0)
	sd a1, 224(a0)
	sd a1, 232(a0)
	sd a1, 240(a0)
	sd a1, 248(a0)
	sd a1, 256(a0)
	sd a1, 264(a0)
	sd a1, 272(a0)
	sd a1, 280(a0)
	sd a1, 288(a0)
	sd a1, 296(a0)
	sd a1, 304(a0)
	sd a1, 312(a0)
	sd a1, 320(a0)
	sd a1, 328(a0)
	sd a1, 336(a0)
	sd a1, 344(a0)
	sd a1, 352(a0)
	sd a1, 360(a0)
	sd a1, 368(a0)
	sd a1, 376(a0)
	sd a1, 384(a0)
	sd a1, 392(a0)
	sd a1, 400(a0)
	sd a1, 408(a0)
	sd a1, 416(a0)
	sd a1, 424(a0)
	sd a1, 432(a0)
	sd a1, 440(a0)
	sd a1, 448(a0)
	sd a1, 456(a0)
	sd a1, 464(a0)
	sd a1, 472(a0)
	blt a2, a3, label342
	sd a1, 480(a0)
	sd a1, 488(a0)
	sd a1, 496(a0)
	sd a1, 504(a0)
	sd a1, 512(a0)
	sd a1, 520(a0)
	sd a1, 528(a0)
	sd a1, 536(a0)
	sd a1, 544(a0)
	sd a1, 552(a0)
	sd a1, 560(a0)
	sd a1, 568(a0)
	sd a1, 576(a0)
	sd a1, 584(a0)
	sd a1, 592(a0)
	sd a1, 600(a0)
	sd a1, 608(a0)
	sd a1, 616(a0)
	sd a1, 624(a0)
	sd a1, 632(a0)
	sd a1, 640(a0)
	sd a1, 648(a0)
	sd a1, 656(a0)
	sd a1, 664(a0)
	sd a1, 672(a0)
	sd a1, 680(a0)
	sd a1, 688(a0)
	sd a1, 696(a0)
	sd a1, 704(a0)
	sd a1, 712(a0)
	lw a2, 104(sp)
	ble a2, zero, label366
	addi s7, s3, 120
	mv s10, s6
	mv s11, s8
	mv s6, s0
	lw a0, 108(sp)
	bgt a0, zero, label350
	addiw s6, s0, 1
	lw a0, 104(sp)
	ble s6, a0, label365
	j label1017
.p2align 2
label1019:
	addiw s6, s6, 1
	lw a0, 104(sp)
	bgt s6, a0, label1017
.p2align 2
label365:
	addi s7, s7, 120
	lw a0, 108(sp)
	ble a0, zero, label1022
.p2align 2
label350:
	addi s8, s7, 4
	mv s9, s0
	j label351
.p2align 2
label597:
	mv s10, s9
	mv s11, s6
	lw a0, 108(sp)
	addiw s9, s9, 1
	bgt s9, a0, label1019
.p2align 2
label361:
	addi s8, s8, 4
.p2align 2
label351:
	jal getint
	li a1, 2
	sw a0, 0(s8)
	beq a0, a1, label597
	li a1, 3
	bne a0, a1, label1018
	sw s6, 148(sp)
	sw s9, 144(sp)
	addiw s9, s9, 1
	lw a0, 108(sp)
	ble s9, a0, label361
	addiw s6, s6, 1
	lw a0, 104(sp)
	ble s6, a0, label365
	j label1017
.p2align 2
label1018:
	addiw s9, s9, 1
	lw a0, 108(sp)
	ble s9, a0, label361
	addiw s6, s6, 1
	lw a0, 104(sp)
	ble s6, a0, label365
	j label1017
label369:
	mv a0, zero
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s4, 16(sp)
	ld s5, 24(sp)
	ld s0, 32(sp)
	ld s1, 40(sp)
	ld s6, 48(sp)
	ld s3, 56(sp)
	ld s8, 64(sp)
	ld s7, 72(sp)
	ld s10, 80(sp)
	ld s11, 88(sp)
	ld s9, 96(sp)
	addi sp, sp, 152
	ret
.p2align 2
label1022:
	addiw s6, s6, 1
	lw a0, 104(sp)
	ble s6, a0, label365
	j label1017
