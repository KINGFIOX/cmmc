.data
.data
.align 4
.globl i
i:
	.4byte	4294967291
.align 4
.globl j
j:
	.4byte	10
.align 4
.globl k
k:
	.4byte	4294967291
.align 4
.globl result1
result1:
	.4byte	0
.align 4
.globl result2
result2:
	.4byte	1
.text
.globl test
test:
.p2align 2
	lui $t0, %hi(i)
	lw $t2, %lo(i)($t0)
	lui $t0, %hi(j)
	lw $t3, %lo(j)($t0)
	move $t0, $t2
	lui $t1, %hi(result1)
	addiu $t1, $t1, %lo(result1)
	subu $t2, $t3, $t2
	bgtz $t2, label2
	nop
label3:
	lui $t2, %hi(k)
	lw $t2, %lo(k)($t2)
	subu $t0, $t0, $t2
	bgtz $t0, label4
	nop
label5:
	jr $ra
	nop
label2:
	li $t2, 1
	sw $t2, 0($t1)
	b label3
	nop
label4:
	sw $zero, 0($t1)
	b label5
	nop
