.data
.align 4
.globl y
y:
	.zero	4
.align 4
.globl arr
arr:
	.zero	400
.text
.globl load
load:
	sll $t0, $a1, 2
	addu $t1, $a0, $t0
	lw $t2, 0($t1)
	move $v0, $t2
	jr $ra
	nop
.globl store
store:
	sll $t0, $a1, 2
	addu $t1, $a0, $t0
	sw $a2, 0($t1)
	jr $ra
	nop
.globl gep_const
gep_const:
	lw $t0, 12($a0)
	move $v0, $t0
	jr $ra
	nop
.globl gep1
gep1:
	sll $t0, $a1, 2
	addu $t1, $a0, $t0
	lw $t2, 0($t1)
	move $v0, $t2
	jr $ra
	nop
.globl gep2
gep2:
	addiu $t0, $a1, 3
	sll $t1, $t0, 2
	addu $t2, $a0, $t1
	lw $t3, 0($t2)
	move $v0, $t3
	jr $ra
	nop
.globl gepseq
gepseq:
	sll $t0, $a1, 2
	addu $t1, $a0, $t0
	lw $t2, 0($t1)
	lw $t3, 4($t1)
	lw $t4, 8($t1)
	lw $t5, 12($t1)
	addu $t6, $t2, $t3
	addu $t7, $t6, $t4
	addu $t8, $t7, $t5
	move $v0, $t8
	jr $ra
	nop
.globl lb
lb:
	lb $t0, 1($a0)
	move $v0, $t0
	jr $ra
	nop
.globl sb
sb:
	sb $a1, 1($a0)
	jr $ra
	nop
.globl global_addressing_scalar
global_addressing_scalar:
	lui $t0, %hi(y)
	lw $t1, %lo(y)($t0)
	move $v0, $t1
	jr $ra
	nop
.globl global_addressing_array
global_addressing_array:
	lui $t0, %hi(arr)
	addiu $t1, $t0, %lo(arr)
	sll $t2, $a0, 2
	addu $t3, $t1, $t2
	lw $t4, 0($t3)
	move $v0, $t4
	jr $ra
	nop
