.data
.data
.p2align 2
.globl i
i:
	.4byte	5
.p2align 2
.globl j
j:
	.4byte	10
.p2align 2
.globl result
result:
	.4byte	0
.text
.p2align 2
.globl test
test:
	lui $t0, %hi(i)
	lw $t0, %lo(i)($t0)
	lui $t1, %hi(j)
	lw $t1, %lo(j)($t1)
	bne $t0, $t1, label11
	nop
label2:
	jr $ra
	nop
label11:
	li $t0, 1
	lui $t1, %hi(result)
	sw $t0, %lo(result)($t1)
	b label2
	nop
