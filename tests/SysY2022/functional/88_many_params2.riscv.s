.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
b:
	.zero	12508
.align 8
a:
	.zero	16348
.text
.globl main
main:
.p2align 2
	addi sp, sp, -64
pcrel533:
	auipc a0, %pcrel_hi(a)
	mv a1, zero
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a0, %pcrel_lo(pcrel533)
	sd s5, 16(sp)
	sd s2, 24(sp)
	sd s3, 32(sp)
	sd s4, 40(sp)
	sd s1, 48(sp)
	sd s6, 56(sp)
.p2align 2
label2:
	sh2add a0, a1, s0
	li a2, 4032
	sd zero, 0(a0)
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	sd zero, 64(a0)
	sd zero, 72(a0)
	sd zero, 80(a0)
	sd zero, 88(a0)
	sd zero, 96(a0)
	sd zero, 104(a0)
	sd zero, 112(a0)
	sd zero, 120(a0)
	sd zero, 128(a0)
	sd zero, 136(a0)
	sd zero, 144(a0)
	sd zero, 152(a0)
	sd zero, 160(a0)
	sd zero, 168(a0)
	sd zero, 176(a0)
	sd zero, 184(a0)
	sd zero, 192(a0)
	sd zero, 200(a0)
	sd zero, 208(a0)
	sd zero, 216(a0)
	sd zero, 224(a0)
	sd zero, 232(a0)
	sd zero, 240(a0)
	sd zero, 248(a0)
	addi a0, a1, 64
	bge a0, a2, label4
	mv a1, a0
	j label2
label4:
	sh2add a0, a0, s0
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	sw zero, 16(a0)
	sw zero, 20(a0)
	sw zero, 24(a0)
	sw zero, 28(a0)
	sw zero, 32(a0)
	sw zero, 36(a0)
	sw zero, 40(a0)
	sw zero, 44(a0)
	sw zero, 48(a0)
	sw zero, 52(a0)
	sw zero, 56(a0)
	sw zero, 60(a0)
	sw zero, 64(a0)
	sw zero, 68(a0)
	sw zero, 72(a0)
	sw zero, 76(a0)
	sw zero, 80(a0)
	sw zero, 84(a0)
	sw zero, 88(a0)
	sw zero, 92(a0)
	sw zero, 96(a0)
	sw zero, 100(a0)
	sw zero, 104(a0)
	sw zero, 108(a0)
	sw zero, 112(a0)
	sw zero, 116(a0)
	sw zero, 120(a0)
	sw zero, 124(a0)
	sw zero, 128(a0)
	sw zero, 132(a0)
	sw zero, 136(a0)
	sw zero, 140(a0)
	sw zero, 144(a0)
	sw zero, 148(a0)
	sw zero, 152(a0)
	sw zero, 156(a0)
	sw zero, 160(a0)
	sw zero, 164(a0)
	sw zero, 168(a0)
	sw zero, 172(a0)
	sw zero, 176(a0)
	sw zero, 180(a0)
	sw zero, 184(a0)
	sw zero, 188(a0)
	addi a0, a1, 112
.p2align 2
label5:
	sh2add a1, a0, s0
	addi a0, a0, 1
	sw zero, 0(a1)
	li a1, 4087
	blt a0, a1, label5
pcrel534:
	auipc a2, %pcrel_hi(b)
	addi a1, a2, %pcrel_lo(pcrel534)
	mv a2, zero
.p2align 2
label8:
	sh2add a0, a2, a1
	li a3, 3072
	sd zero, 0(a0)
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	sd zero, 64(a0)
	sd zero, 72(a0)
	sd zero, 80(a0)
	sd zero, 88(a0)
	sd zero, 96(a0)
	sd zero, 104(a0)
	sd zero, 112(a0)
	sd zero, 120(a0)
	sd zero, 128(a0)
	sd zero, 136(a0)
	sd zero, 144(a0)
	sd zero, 152(a0)
	sd zero, 160(a0)
	sd zero, 168(a0)
	sd zero, 176(a0)
	sd zero, 184(a0)
	sd zero, 192(a0)
	sd zero, 200(a0)
	sd zero, 208(a0)
	sd zero, 216(a0)
	sd zero, 224(a0)
	sd zero, 232(a0)
	sd zero, 240(a0)
	sd zero, 248(a0)
	addi a0, a2, 64
	bge a0, a3, label10
	mv a2, a0
	j label8
label10:
	sh2add a0, a0, a1
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	sw zero, 16(a0)
	sw zero, 20(a0)
	sw zero, 24(a0)
	sw zero, 28(a0)
	sw zero, 32(a0)
	sw zero, 36(a0)
	sw zero, 40(a0)
	sw zero, 44(a0)
	sw zero, 48(a0)
	sw zero, 52(a0)
	sw zero, 56(a0)
	sw zero, 60(a0)
	sw zero, 64(a0)
	sw zero, 68(a0)
	sw zero, 72(a0)
	sw zero, 76(a0)
	sw zero, 80(a0)
	sw zero, 84(a0)
	sw zero, 88(a0)
	sw zero, 92(a0)
	sw zero, 96(a0)
	sw zero, 100(a0)
	sw zero, 104(a0)
	sw zero, 108(a0)
	sw zero, 112(a0)
	sw zero, 116(a0)
	sw zero, 120(a0)
	sw zero, 124(a0)
	sw zero, 128(a0)
	sw zero, 132(a0)
	sw zero, 136(a0)
	sw zero, 140(a0)
	sw zero, 144(a0)
	sw zero, 148(a0)
	sw zero, 152(a0)
	sw zero, 156(a0)
	sw zero, 160(a0)
	sw zero, 164(a0)
	sw zero, 168(a0)
	sw zero, 172(a0)
	sw zero, 176(a0)
	sw zero, 180(a0)
	sw zero, 184(a0)
	sw zero, 188(a0)
	addi a0, a2, 112
.p2align 2
label11:
	sh2add a2, a0, a1
	addi a0, a0, 1
	sw zero, 0(a2)
	li a2, 3127
	blt a0, a2, label11
	li a2, 4560
	li a3, 6
	li a4, 11
	addi s2, a1, 1416
	mv s6, zero
	add a0, s0, a2
	mv s1, s2
	sw a3, 0(a0)
	li a3, 7
	addi a0, a2, 8
	add a2, s0, a0
	addi a0, a0, 4
	sw a3, 0(a2)
	li a3, 4
	add a2, s0, a0
	sw a3, 0(a2)
	addi a2, a0, 12
	li a0, 9
	add a3, s0, a2
	sw a0, 0(a3)
	addi a3, a2, 16
	add a2, s0, a3
	li a3, 1
	sw a4, 0(a2)
	li a2, 2
	sw a3, 1420(a1)
	li a3, 3
	sw a2, 1424(a1)
	li a2, 8040
	sw a3, 1428(a1)
	sw a0, 1452(a1)
	add a0, a1, a2
	lw s3, 1416(a1)
	li a2, 12108
	lw s4, 0(a0)
	add a0, a1, a2
	lw s5, 0(a0)
.p2align 2
label14:
	sh2add a1, s6, s1
	lw a0, 0(a1)
	jal putint
	li a0, 10
	addiw s6, s6, 1
	blt s6, a0, label14
	jal putch
	li a1, 4584
	add a2, s0, a1
	lw a0, 0(a2)
	jal putint
	li a0, 10
	jal putch
	li a1, 10
	bge s5, a1, label24
	addiw a0, s5, 8
	bge a0, a1, label318
	mv a0, s4
	mv a1, s5
.p2align 2
label18:
	sh2add a2, a1, s2
	li a3, 128875
	li a4, -1932965947
	addiw a1, a1, 8
	mulw t0, a0, a3
	mul t1, t0, a4
	srli t2, t1, 32
	add a5, t2, t0
	srliw t3, a5, 31
	sraiw t1, a5, 11
	li a5, 3724
	add t2, t3, t1
	mulw t1, t2, a5
	subw t0, t0, t1
	addiw t1, a0, 7
	sw t0, 0(a2)
	mulw t0, t1, a3
	mul t2, t0, a4
	srli t3, t2, 32
	add t1, t3, t0
	srliw t3, t1, 31
	sraiw t2, t1, 11
	add t4, t3, t2
	mulw t1, t4, a5
	subw t0, t0, t1
	addiw t1, a0, 14
	sw t0, 4(a2)
	mulw t0, t1, a3
	mul t2, t0, a4
	srli t3, t2, 32
	add t1, t3, t0
	srliw t3, t1, 31
	sraiw t2, t1, 11
	add t1, t3, t2
	mulw t2, t1, a5
	addiw t1, a0, 21
	subw t0, t0, t2
	sw t0, 8(a2)
	mulw t0, t1, a3
	mul t2, t0, a4
	srli t3, t2, 32
	add t1, t3, t0
	srliw t3, t1, 31
	sraiw t2, t1, 11
	add t1, t3, t2
	mulw t2, t1, a5
	addiw t1, a0, 28
	subw t0, t0, t2
	sw t0, 12(a2)
	mulw t0, t1, a3
	mul t2, t0, a4
	srli t3, t2, 32
	add t1, t3, t0
	srliw t3, t1, 31
	sraiw t2, t1, 11
	add t1, t3, t2
	mulw t2, t1, a5
	addiw t1, a0, 35
	subw t0, t0, t2
	sw t0, 16(a2)
	mulw t0, t1, a3
	mul t2, t0, a4
	srli t3, t2, 32
	add t1, t3, t0
	srliw t4, t1, 31
	sraiw t2, t1, 11
	add t3, t4, t2
	mulw t1, t3, a5
	subw t0, t0, t1
	addiw t1, a0, 42
	sw t0, 20(a2)
	mulw t0, t1, a3
	mul t2, t0, a4
	srli t3, t2, 32
	add t1, t3, t0
	srliw t4, t1, 31
	sraiw t2, t1, 11
	add t3, t4, t2
	mulw t1, t3, a5
	subw t0, t0, t1
	addiw t1, a0, 49
	mulw a3, t1, a3
	sw t0, 24(a2)
	mul t0, a3, a4
	srli t1, t0, 32
	add a4, t1, a3
	srliw t2, a4, 31
	sraiw t0, a4, 11
	add t1, t2, t0
	mulw a4, t1, a5
	subw a3, a3, a4
	sw a3, 28(a2)
	li a3, 2
	addiw a2, a0, 56
	bge a1, a3, label356
	mv a0, a2
	j label18
label356:
	mv a0, a1
	mv a1, a2
label21:
	sh2add a2, a0, s2
	li a5, 128875
	li a4, -1932965947
	addiw a0, a0, 1
	mulw a3, a1, a5
	addiw a1, a1, 7
	mul a5, a3, a4
	srli t0, a5, 32
	add a4, t0, a3
	srliw t0, a4, 31
	sraiw a5, a4, 11
	add a4, t0, a5
	li a5, 3724
	mulw t0, a4, a5
	subw a3, a3, t0
	sw a3, 0(a2)
	li a2, 10
	blt a0, a2, label21
label24:
	addiw a2, s3, 3
	sh1add a0, a2, a2
	mv s0, a0
	blt a0, zero, label27
.p2align 2
label25:
	sh2add a1, s0, s1
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
	addiw s0, s0, -1
	bge s0, zero, label25
label27:
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	ld s1, 48(sp)
	ld s6, 56(sp)
	addi sp, sp, 64
	ret
label318:
	mv a0, s5
	mv a1, s4
	j label21
