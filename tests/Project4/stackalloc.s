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
	addiu $sp, $sp, -424
	sw $ra, 416($sp)
	addiu $t0, $sp, 16
	jal read
	nop
	move $t1, $v0
	blez $v0, label24
	nop
	move $t2, $zero
	b label2
	nop
label24:
	li $t2, 1
	subu $t3, $t1, $t2
	blez $t3, label14
	nop
	sll $t3, $t2, 2
	addu $t3, $t0, $t3
	lw $t4, 0($t3)
	addiu $t3, $t2, -1
	addiu $t5, $t3, 1
	blez $t5, label45
	nop
	sll $t5, $t3, 2
	addu $t5, $t0, $t5
	lw $t5, 0($t5)
	slt $t5, $t4, $t5
	beq $t5, $zero, label13
	nop
	addiu $t5, $t3, 1
	sll $t5, $t5, 2
	addu $t5, $t0, $t5
	sll $t6, $t3, 2
	addu $t6, $t0, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t5)
	addiu $t3, $t3, -1
	addiu $t5, $t3, 1
	blez $t5, label45
	nop
	sll $t5, $t3, 2
	addu $t5, $t0, $t5
	lw $t5, 0($t5)
	slt $t5, $t4, $t5
	beq $t5, $zero, label13
	nop
	addiu $t5, $t3, 1
	sll $t5, $t5, 2
	addu $t5, $t0, $t5
	sll $t6, $t3, 2
	addu $t6, $t0, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t5)
	addiu $t3, $t3, -1
	addiu $t5, $t3, 1
	blez $t5, label45
	nop
	sll $t5, $t3, 2
	addu $t5, $t0, $t5
	lw $t5, 0($t5)
	slt $t5, $t4, $t5
	beq $t5, $zero, label13
	nop
	addiu $t5, $t3, 1
	sll $t5, $t5, 2
	addu $t5, $t0, $t5
	sll $t6, $t3, 2
	addu $t6, $t0, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t5)
	addiu $t3, $t3, -1
	addiu $t5, $t3, 1
	blez $t5, label45
	nop
	sll $t5, $t3, 2
	addu $t5, $t0, $t5
	lw $t5, 0($t5)
	slt $t5, $t4, $t5
	beq $t5, $zero, label13
	nop
	b label144
	nop
label2:
	jal read
	nop
	sll $t3, $t2, 2
	addu $t3, $t0, $t3
	sw $v0, 0($t3)
	addiu $t2, $t2, 1
	subu $t3, $t1, $t2
	blez $t3, label33
	nop
	b label2
	nop
label33:
	li $t2, 1
	subu $t3, $t1, $t2
	blez $t3, label14
	nop
	sll $t3, $t2, 2
	addu $t3, $t0, $t3
	lw $t4, 0($t3)
	addiu $t3, $t2, -1
	addiu $t5, $t3, 1
	blez $t5, label45
	nop
	sll $t5, $t3, 2
	addu $t5, $t0, $t5
	lw $t5, 0($t5)
	slt $t5, $t4, $t5
	beq $t5, $zero, label13
	nop
	addiu $t5, $t3, 1
	sll $t5, $t5, 2
	addu $t5, $t0, $t5
	sll $t6, $t3, 2
	addu $t6, $t0, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t5)
	addiu $t3, $t3, -1
	addiu $t5, $t3, 1
	blez $t5, label45
	nop
	sll $t5, $t3, 2
	addu $t5, $t0, $t5
	lw $t5, 0($t5)
	slt $t5, $t4, $t5
	beq $t5, $zero, label13
	nop
	addiu $t5, $t3, 1
	sll $t5, $t5, 2
	addu $t5, $t0, $t5
	sll $t6, $t3, 2
	addu $t6, $t0, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t5)
	addiu $t3, $t3, -1
	addiu $t5, $t3, 1
	blez $t5, label45
	nop
	sll $t5, $t3, 2
	addu $t5, $t0, $t5
	lw $t5, 0($t5)
	slt $t5, $t4, $t5
	beq $t5, $zero, label13
	nop
	addiu $t5, $t3, 1
	sll $t5, $t5, 2
	addu $t5, $t0, $t5
	sll $t6, $t3, 2
	addu $t6, $t0, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t5)
	addiu $t3, $t3, -1
	addiu $t5, $t3, 1
	blez $t5, label45
	nop
	sll $t5, $t3, 2
	addu $t5, $t0, $t5
	lw $t5, 0($t5)
	slt $t5, $t4, $t5
	beq $t5, $zero, label13
	nop
	b label152
	nop
label144:
	addiu $t5, $t3, 1
	sll $t5, $t5, 2
	addu $t5, $t0, $t5
	sll $t6, $t3, 2
	addu $t6, $t0, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t5)
	addiu $t3, $t3, -1
	addiu $t5, $t3, 1
	blez $t5, label45
	nop
	b label153
	nop
label86:
	move $t2, $zero
	b label15
	nop
label45:
	move $t5, $zero
	addiu $t3, $t3, 1
	sll $t3, $t3, 2
	addu $t3, $t0, $t3
	sw $t4, 0($t3)
	addiu $t2, $t2, 1
	subu $t3, $t1, $t2
	blez $t3, label14
	nop
	sll $t3, $t2, 2
	addu $t3, $t0, $t3
	lw $t4, 0($t3)
	addiu $t3, $t2, -1
	addiu $t5, $t3, 1
	blez $t5, label45
	nop
	sll $t5, $t3, 2
	addu $t5, $t0, $t5
	lw $t5, 0($t5)
	slt $t5, $t4, $t5
	beq $t5, $zero, label13
	nop
	addiu $t5, $t3, 1
	sll $t5, $t5, 2
	addu $t5, $t0, $t5
	sll $t6, $t3, 2
	addu $t6, $t0, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t5)
	addiu $t3, $t3, -1
	addiu $t5, $t3, 1
	blez $t5, label45
	nop
	sll $t5, $t3, 2
	addu $t5, $t0, $t5
	lw $t5, 0($t5)
	slt $t5, $t4, $t5
	beq $t5, $zero, label13
	nop
	addiu $t5, $t3, 1
	sll $t5, $t5, 2
	addu $t5, $t0, $t5
	sll $t6, $t3, 2
	addu $t6, $t0, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t5)
	addiu $t3, $t3, -1
	addiu $t5, $t3, 1
	blez $t5, label45
	nop
	sll $t5, $t3, 2
	addu $t5, $t0, $t5
	lw $t5, 0($t5)
	slt $t5, $t4, $t5
	beq $t5, $zero, label13
	nop
	addiu $t5, $t3, 1
	sll $t5, $t5, 2
	addu $t5, $t0, $t5
	sll $t6, $t3, 2
	addu $t6, $t0, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t5)
	addiu $t3, $t3, -1
	addiu $t5, $t3, 1
	blez $t5, label45
	nop
	sll $t5, $t3, 2
	addu $t5, $t0, $t5
	lw $t5, 0($t5)
	slt $t5, $t4, $t5
	beq $t5, $zero, label13
	nop
label159:
	addiu $t5, $t3, 1
	sll $t5, $t5, 2
	addu $t5, $t0, $t5
	sll $t6, $t3, 2
	addu $t6, $t0, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t5)
	addiu $t3, $t3, -1
	addiu $t5, $t3, 1
	blez $t5, label45
	nop
	b label153
	nop
label14:
	blez $t1, label17
	nop
	b label86
	nop
label152:
	addiu $t5, $t3, 1
	sll $t5, $t5, 2
	addu $t5, $t0, $t5
	sll $t6, $t3, 2
	addu $t6, $t0, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t5)
	addiu $t3, $t3, -1
	addiu $t5, $t3, 1
	blez $t5, label45
	nop
label153:
	sll $t5, $t3, 2
	addu $t5, $t0, $t5
	lw $t5, 0($t5)
	slt $t5, $t4, $t5
	beq $t5, $zero, label13
	nop
	addiu $t5, $t3, 1
	sll $t5, $t5, 2
	addu $t5, $t0, $t5
	sll $t6, $t3, 2
	addu $t6, $t0, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t5)
	addiu $t3, $t3, -1
	addiu $t5, $t3, 1
	blez $t5, label45
	nop
	b label153
	nop
label13:
	addiu $t3, $t3, 1
	sll $t3, $t3, 2
	addu $t3, $t0, $t3
	sw $t4, 0($t3)
	addiu $t2, $t2, 1
	subu $t3, $t1, $t2
	blez $t3, label14
	nop
	sll $t3, $t2, 2
	addu $t3, $t0, $t3
	lw $t4, 0($t3)
	addiu $t3, $t2, -1
	addiu $t5, $t3, 1
	blez $t5, label45
	nop
	sll $t5, $t3, 2
	addu $t5, $t0, $t5
	lw $t5, 0($t5)
	slt $t5, $t4, $t5
	beq $t5, $zero, label13
	nop
	addiu $t5, $t3, 1
	sll $t5, $t5, 2
	addu $t5, $t0, $t5
	sll $t6, $t3, 2
	addu $t6, $t0, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t5)
	addiu $t3, $t3, -1
	addiu $t5, $t3, 1
	blez $t5, label45
	nop
	sll $t5, $t3, 2
	addu $t5, $t0, $t5
	lw $t5, 0($t5)
	slt $t5, $t4, $t5
	beq $t5, $zero, label13
	nop
	addiu $t5, $t3, 1
	sll $t5, $t5, 2
	addu $t5, $t0, $t5
	sll $t6, $t3, 2
	addu $t6, $t0, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t5)
	addiu $t3, $t3, -1
	addiu $t5, $t3, 1
	blez $t5, label45
	nop
	sll $t5, $t3, 2
	addu $t5, $t0, $t5
	lw $t5, 0($t5)
	slt $t5, $t4, $t5
	beq $t5, $zero, label13
	nop
	addiu $t5, $t3, 1
	sll $t5, $t5, 2
	addu $t5, $t0, $t5
	sll $t6, $t3, 2
	addu $t6, $t0, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t5)
	addiu $t3, $t3, -1
	addiu $t5, $t3, 1
	blez $t5, label45
	nop
	sll $t5, $t3, 2
	addu $t5, $t0, $t5
	lw $t5, 0($t5)
	slt $t5, $t4, $t5
	beq $t5, $zero, label13
	nop
	b label159
	nop
label15:
	sll $t3, $t2, 2
	addu $t3, $t0, $t3
	lw $a0, 0($t3)
	jal write
	nop
	addiu $t2, $t2, 1
	subu $t3, $t1, $t2
	blez $t3, label17
	nop
	b label15
	nop
label17:
	move $v0, $zero
	lw $ra, 416($sp)
	addiu $sp, $sp, 424
	jr $ra
	nop
