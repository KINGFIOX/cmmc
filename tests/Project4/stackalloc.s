.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
.text
_entry:
    jal main
    nop
    move $a0, $v0
    li $v0, 17
    syscall
read:
    li $v0, 4
    la $a0, _prompt
    syscall
    li $v0, 5
    syscall
    jr $ra
    nop
write:
    li $v0, 1
    syscall
    li $v0, 4
    la $a0, _ret
    syscall
    move $v0, $0
    jr $ra
    nop
.globl main
main:
	addiu $sp, $sp, -464
	sw $ra, 448($sp)
	addiu $t0, $sp, 20
	jal read
	nop
	move $t1, $v0
	sw $v0, 436($sp)
	sw $t0, 424($sp)
	blez $v0, label24
	nop
	move $t0, $zero
	sw $zero, 452($sp)
	b label16
	nop
label24:
	li $t0, 1
	sw $t0, 440($sp)
	lw $t1, 436($sp)
	subu $t2, $t0, $t1
	bgez $t2, label12
	nop
label27:
	lw $t0, 440($sp)
	sll $t1, $t0, 2
	lw $t2, 424($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	addiu $t5, $t0, -1
	move $t6, $t5
	sw $t5, 456($sp)
	sw $t4, 444($sp)
	move $t0, $t5
	addiu $t1, $t5, 1
	blez $t1, label36
	nop
	b label35
	nop
label122:
	move $t0, $zero
	sw $zero, 16($sp)
	b label13
	nop
label12:
	lw $t0, 436($sp)
	blez $t0, label15
	nop
	b label122
	nop
label16:
	lw $t0, 452($sp)
	sll $t1, $t0, 2
	lw $t2, 424($sp)
	addu $t3, $t2, $t1
	jal read
	nop
	sw $v0, 0($t3)
	addiu $t4, $t0, 1
	lw $t5, 436($sp)
	subu $t6, $t4, $t5
	sw $t4, 428($sp)
	bgez $t6, label75
	nop
	move $t0, $t4
	move $t1, $t4
	sw $t4, 452($sp)
	b label16
	nop
label75:
	li $t0, 1
	sw $t0, 440($sp)
	lw $t1, 436($sp)
	subu $t2, $t0, $t1
	bgez $t2, label12
	nop
	b label27
	nop
label36:
	move $t0, $zero
	sw $zero, 432($sp)
label11:
	lw $t0, 456($sp)
	addiu $t1, $t0, 1
	sll $t2, $t1, 2
	lw $t3, 424($sp)
	addu $t4, $t3, $t2
	lw $t5, 444($sp)
	sw $t5, 0($t4)
	lw $t6, 440($sp)
	addiu $t7, $t6, 1
	move $t6, $t7
	sw $t7, 440($sp)
	move $t0, $t7
	lw $t1, 436($sp)
	subu $t2, $t7, $t1
	bgez $t2, label12
	nop
	b label27
	nop
label35:
	lw $t0, 456($sp)
	sll $t1, $t0, 2
	lw $t2, 424($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	lw $t5, 444($sp)
	slt $t6, $t5, $t4
	move $t7, $t6
	sw $t6, 432($sp)
	move $t0, $t6
	beq $t6, $zero, label11
	nop
	lw $t0, 456($sp)
	addiu $t1, $t0, 1
	sll $t2, $t1, 2
	lw $t3, 424($sp)
	addu $t4, $t3, $t2
	sll $t5, $t0, 2
	addu $t6, $t3, $t5
	lw $t7, 0($t6)
	sw $t7, 0($t4)
	addiu $t8, $t0, -1
	move $t0, $t8
	sw $t8, 456($sp)
	addiu $t1, $t8, 1
	blez $t1, label36
	nop
	b label35
	nop
label13:
	lw $t0, 16($sp)
	sll $t1, $t0, 2
	lw $t2, 424($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	move $a0, $t4
	jal write
	nop
	addiu $t5, $t0, 1
	lw $t6, 436($sp)
	subu $t7, $t5, $t6
	sw $t5, 420($sp)
	bgez $t7, label15
	nop
	move $t0, $t5
	move $t1, $t5
	sw $t5, 16($sp)
	b label13
	nop
label15:
	move $v0, $zero
	lw $ra, 448($sp)
	addiu $sp, $sp, 464
	jr $ra
	nop
