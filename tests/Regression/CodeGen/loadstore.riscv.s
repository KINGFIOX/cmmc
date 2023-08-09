.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
.globl y
y:
	.zero	4
.align 8
.globl arr
arr:
	.zero	400
.align 8
.globl x
x:
	.zero	8
.text
.p2align 2
.globl load
load:
	sh2add a2, a1, a0
	lw a0, 0(a2)
	ret
.p2align 2
.globl load_byte
load_byte:
	add a2, a0, a1
	lb a0, 0(a2)
	ret
.p2align 2
.globl load_float
load_float:
	sh2add a2, a1, a0
	flw f10, 0(a2)
	ret
.p2align 2
.globl store
store:
	sh2add a3, a1, a0
	sw a2, 0(a3)
	ret
.p2align 2
.globl store_float
store_float:
	sh2add a2, a1, a0
	fsw f10, 0(a2)
	ret
.p2align 2
.globl store_float_constant
store_float_constant:
	sh2add a2, a1, a0
	lui a3, 260096
	fmv.w.x f10, a3
	fsw f10, 0(a2)
	ret
.p2align 2
.globl gep_const
gep_const:
	lw a0, 12(a0)
	ret
.p2align 2
.globl gep1
gep1:
	sh2add a2, a1, a0
	lw a0, 0(a2)
	ret
.p2align 2
.globl gep2
gep2:
	addiw a2, a1, 3
	sh2add a3, a2, a0
	lw a0, 0(a3)
	ret
.p2align 2
.globl gepseq
gepseq:
	sh2add a2, a1, a0
	lw a4, 0(a2)
	lw a5, 4(a2)
	lw t0, 8(a2)
	addw a1, a4, a5
	lw a4, 12(a2)
	addw a3, a1, t0
	addw a0, a3, a4
	ret
.p2align 2
.globl lb
lb:
	lb a0, 1(a0)
	ret
.p2align 2
.globl sb
sb:
	sb a1, 1(a0)
	ret
.p2align 2
.globl global_addressing_scalar
global_addressing_scalar:
pcrel94:
	auipc a1, %pcrel_hi(y)
	lw a0, %pcrel_lo(pcrel94)(a1)
	ret
.p2align 2
.globl global_addressing_array
global_addressing_array:
pcrel104:
	auipc a3, %pcrel_hi(arr)
	addi a2, a3, %pcrel_lo(pcrel104)
	sh2add a1, a0, a2
	lw a0, 0(a1)
	ret
.p2align 2
.globl memset_impl
memset_impl:
	ble a0, zero, label128
pcrel222:
	auipc a1, %pcrel_hi(arr)
	li a3, 3
	addi a2, a1, %pcrel_lo(pcrel222)
	ble a0, a3, label137
	addiw a3, a0, -3
	addiw a4, a0, -18
	li a1, 15
	ble a3, a1, label155
	mv a1, a2
	mv a5, zero
	j label124
.p2align 2
label127:
	addi a1, a1, 64
.p2align 2
label124:
	sd zero, 0(a1)
	addiw a5, a5, 16
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	bgt a4, a5, label127
	mv a4, a5
label115:
	ble a3, a4, label159
	sh2add a1, a4, a2
	j label119
label122:
	addi a1, a1, 16
label119:
	sw zero, 0(a1)
	addiw a4, a4, 4
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	bgt a3, a4, label122
	mv a1, a4
label107:
	ble a0, a1, label128
	sh2add a2, a1, a2
	j label110
label113:
	addi a2, a2, 4
label110:
	sw zero, 0(a2)
	addiw a1, a1, 1
	bgt a0, a1, label113
label128:
	ret
label137:
	mv a1, zero
	j label107
label155:
	mv a4, zero
	mv a5, zero
	j label115
label159:
	mv a1, a5
	j label107
.p2align 2
.globl fused_store
fused_store:
pcrel289:
	auipc a1, %pcrel_hi(arr)
	li a2, 1
	li a4, 3
	addi a0, a1, %pcrel_lo(pcrel289)
	slli a3, a2, 32
	slli a2, a4, 32
	sd a3, %pcrel_lo(pcrel289)(a1)
	li a4, 5
	addi a3, a2, 2
	slli a1, a4, 32
	sd a3, 8(a0)
	li a4, 7
	addi a2, a1, 4
	slli a3, a4, 32
	sd a2, 16(a0)
	li a4, 9
	addi a1, a3, 6
	slli a2, a4, 32
	li a3, 11
	li a4, 13
	sd a1, 24(a0)
	addi a1, a2, 8
	slli a2, a3, 32
	sd a1, 32(a0)
	addi a1, a2, 10
	slli a2, a4, 32
	sd a1, 40(a0)
	li a4, 15
	addi a3, a2, 12
	slli a1, a4, 32
	sd a3, 48(a0)
	addi a2, a1, 14
	sd a2, 56(a0)
	ret
.p2align 2
.globl merge_store
merge_store:
pcrel300:
	auipc a2, %pcrel_hi(x)
	slli a3, a1, 32
	add.uw a4, a0, a3
	sd a4, %pcrel_lo(pcrel300)(a2)
	ret
