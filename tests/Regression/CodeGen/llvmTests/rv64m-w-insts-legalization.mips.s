.data
.text
.p2align 2
.globl mulw
mulw:
	move $t0, $a0
	move $t2, $a1
	subu $t1, $a0, $a1
	bgez $t1, label15
	nop
	addiu $t1, $a0, 1
	subu $t3, $a1, $t1
	bgtz $t3, label3
	nop
label20:
	move $v0, $t0
	b label8
	nop
label3:
	mult $t1, $t0
	mflo $t0
	addiu $t1, $t1, 1
	subu $t3, $t2, $t1
	bgtz $t3, label3
	nop
	b label20
	nop
label15:
	li $v0, 1
label8:
	jr $ra
	nop
