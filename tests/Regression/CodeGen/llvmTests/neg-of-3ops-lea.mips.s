.data
.text
.p2align 2
.globl t0
t0:
	li $t0, 32
	subu $t0, $t0, $a0
	subu $v0, $t0, $a1
	jr $ra
	nop
.p2align 2
.globl t1
t1:
	addu $t0, $a0, $a1
	li $t1, 32
	subu $v0, $t1, $t0
	jr $ra
	nop
.p2align 2
.globl t2
t2:
	addu $t0, $a0, $a1
	li $t1, 32
	subu $v0, $t1, $t0
	jr $ra
	nop
.p2align 2
.globl t3
t3:
	addiu $t0, $a0, -32
	addu $t0, $a1, $t0
	subu $v0, $zero, $t0
	jr $ra
	nop
