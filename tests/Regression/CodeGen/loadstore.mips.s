.data
.section .rodata
.p2align 2
__cmmc_fp_constant_pool:
	.4byte	1065353216
.bss
.p2align 2
.globl y
y:
	.zero	4
.p2align 3
.globl arr
arr:
	.zero	400
.p2align 3
.globl x
x:
	.zero	8
.p2align 3
.globl src
src:
	.zero	16
.p2align 3
.globl dst
dst:
	.zero	8
.text
.p2align 2
.globl load
load:
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	lw $v0, 0($t0)
	jr $ra
	nop
.p2align 2
.globl load_byte
load_byte:
	addu $t0, $a0, $a1
	lb $v0, 0($t0)
	jr $ra
	nop
.p2align 2
.globl load_float
load_float:
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	lwc1 $f0, 0($t0)
	jr $ra
	nop
.p2align 2
.globl store
store:
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	sw $a2, 0($t0)
	jr $ra
	nop
.p2align 2
.globl store_float
store_float:
	mtc1 $a2, $f4
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	swc1 $f4, 0($t0)
	jr $ra
	nop
.p2align 2
.globl store_float_constant
store_float_constant:
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	lui $t1, %hi(__cmmc_fp_constant_pool)
	addiu $t1, $t1, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 0($t1)
	swc1 $f4, 0($t0)
	jr $ra
	nop
.p2align 2
.globl gep_const
gep_const:
	lw $v0, 12($a0)
	jr $ra
	nop
.p2align 2
.globl gep1
gep1:
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	lw $v0, 0($t0)
	jr $ra
	nop
.p2align 2
.globl gep2
gep2:
	addiu $t0, $a1, 3
	sll $t0, $t0, 2
	addu $t0, $a0, $t0
	lw $v0, 0($t0)
	jr $ra
	nop
.p2align 2
.globl gepseq
gepseq:
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	lw $t1, 0($t0)
	lw $t2, 4($t0)
	addu $t1, $t1, $t2
	lw $t2, 8($t0)
	addu $t1, $t1, $t2
	lw $t0, 12($t0)
	addu $v0, $t1, $t0
	jr $ra
	nop
.p2align 2
.globl lb
lb:
	lb $v0, 1($a0)
	jr $ra
	nop
.p2align 2
.globl sb
sb:
	sb $a1, 1($a0)
	jr $ra
	nop
.p2align 2
.globl global_addressing_scalar
global_addressing_scalar:
	lui $t0, %hi(y)
	lw $v0, %lo(y)($t0)
	jr $ra
	nop
.p2align 2
.globl global_addressing_array
global_addressing_array:
	lui $t0, %hi(arr)
	addiu $t0, $t0, %lo(arr)
	sll $t1, $a0, 2
	addu $t0, $t0, $t1
	lw $v0, 0($t0)
	jr $ra
	nop
.p2align 2
.globl memset_impl
memset_impl:
	blez $a0, label129
	nop
	lui $t0, %hi(arr)
	addiu $t1, $t0, %lo(arr)
	addiu $t0, $a0, -3
	blez $t0, label138
	nop
	addiu $t3, $a0, -3
	addiu $t4, $a0, -18
	addiu $t0, $t3, -15
	blez $t0, label144
	nop
	move $t0, $t1
	move $t2, $zero
.p2align 2
label118:
	addiu $t2, $t2, 16
	sw $zero, 0($t0)
	sw $zero, 4($t0)
	sw $zero, 8($t0)
	sw $zero, 12($t0)
	sw $zero, 16($t0)
	sw $zero, 20($t0)
	sw $zero, 24($t0)
	sw $zero, 28($t0)
	sw $zero, 32($t0)
	sw $zero, 36($t0)
	sw $zero, 40($t0)
	sw $zero, 44($t0)
	sw $zero, 48($t0)
	sw $zero, 52($t0)
	sw $zero, 56($t0)
	sw $zero, 60($t0)
	subu $t5, $t4, $t2
	blez $t5, label179
	nop
	addiu $t0, $t0, 64
	b label118
	nop
label179:
	move $t4, $t2
label109:
	subu $t0, $t3, $t4
	blez $t0, label148
	nop
	sll $t0, $t4, 2
	addu $t0, $t1, $t0
	move $t2, $t4
	b label113
	nop
label116:
	addiu $t0, $t0, 16
label113:
	addiu $t2, $t2, 4
	sw $zero, 0($t0)
	sw $zero, 4($t0)
	sw $zero, 8($t0)
	sw $zero, 12($t0)
	subu $t4, $t3, $t2
	bgtz $t4, label116
	nop
label148:
	move $t0, $t2
label122:
	subu $t2, $a0, $t0
	blez $t2, label129
	nop
	sll $t2, $t0, 2
	addu $t1, $t1, $t2
	b label125
	nop
label128:
	addiu $t1, $t1, 4
label125:
	addiu $t0, $t0, 1
	sw $zero, 0($t1)
	subu $t2, $a0, $t0
	bgtz $t2, label128
	nop
label129:
	jr $ra
	nop
label144:
	move $t4, $zero
	move $t2, $zero
	b label109
	nop
label138:
	move $t0, $zero
	b label122
	nop
.p2align 2
.globl fused_store
fused_store:
	lui $t1, %hi(arr)
	addiu $t0, $t1, %lo(arr)
	sw $zero, %lo(arr)($t1)
	li $t1, 1
	sw $t1, 4($t0)
	li $t1, 2
	sw $t1, 8($t0)
	li $t1, 3
	sw $t1, 12($t0)
	li $t1, 4
	sw $t1, 16($t0)
	li $t1, 5
	sw $t1, 20($t0)
	li $t1, 6
	sw $t1, 24($t0)
	li $t1, 7
	sw $t1, 28($t0)
	li $t1, 8
	sw $t1, 32($t0)
	li $t1, 9
	sw $t1, 36($t0)
	li $t1, 10
	sw $t1, 40($t0)
	li $t1, 11
	sw $t1, 44($t0)
	li $t1, 12
	sw $t1, 48($t0)
	li $t1, 13
	sw $t1, 52($t0)
	li $t1, 14
	sw $t1, 56($t0)
	li $t1, 15
	sw $t1, 60($t0)
	jr $ra
	nop
.p2align 2
.globl merge_store
merge_store:
	lui $t0, %hi(x)
	addiu $t1, $t0, %lo(x)
	sw $a0, %lo(x)($t0)
	sw $a1, 4($t1)
	jr $ra
	nop
.p2align 2
.globl copy1
copy1:
	lui $t1, %hi(dst)
	addiu $t0, $t1, %lo(dst)
	lw $t1, %lo(dst)($t1)
	lui $t3, %hi(src)
	addiu $t2, $t3, %lo(src)
	sw $t1, %lo(src)($t3)
	lw $t0, 4($t0)
	sw $t0, 4($t2)
	jr $ra
	nop
.p2align 2
.globl copy2
copy2:
	lui $t1, %hi(src)
	addiu $t0, $t1, %lo(src)
	lw $t1, %lo(src)($t1)
	sw $t1, 8($t0)
	lw $t1, 4($t0)
	sw $t1, 12($t0)
	jr $ra
	nop
.p2align 2
.globl merge_load
merge_load:
	lui $t1, %hi(x)
	addiu $t0, $t1, %lo(x)
	lw $t1, %lo(x)($t1)
	lw $t0, 4($t0)
	addu $v0, $t1, $t0
	jr $ra
	nop
