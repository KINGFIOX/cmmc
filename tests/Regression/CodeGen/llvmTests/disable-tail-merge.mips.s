.data
.align 4
.globl g0
g0:
	.4byte	0
.align 4
.globl g1
g1:
	.4byte	0
.section .rodata
.bss
.text
.globl test1
test1:
	lui $t1, %hi(g0)
	addiu $t0, $t1, %lo(g0)
	lw $t1, %lo(g0)($t1)
	sltu $t2, $zero, $a0
	bne $t2, $zero, label12
	nop
	addiu $t1, $t1, 11
	sw $t1, 0($t0)
	lui $t0, %hi(g1)
	lw $t0, %lo(g1)($t0)
	addiu $v0, $t0, 23
	b label3
	nop
label12:
	addiu $t1, $t1, 1
	sw $t1, 0($t0)
	lui $t0, %hi(g1)
	lw $t0, %lo(g1)($t0)
	addiu $v0, $t0, 23
label3:
	lui $t0, %hi(g1)
	sw $v0, %lo(g1)($t0)
	jr $ra
	nop