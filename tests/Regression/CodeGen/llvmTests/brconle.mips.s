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
.section .rodata
.bss
.text
.globl test
test:
	lui $t0, %hi(i)
	lw $t1, %lo(i)($t0)
	lui $t0, %hi(j)
	lw $t2, %lo(j)($t0)
	move $t0, $t1
	subu $t1, $t2, $t1
	blez $t1, label2
	nop
	li $t1, 1
	lui $t2, %hi(result1)
	sw $t1, %lo(result1)($t2)
	lui $t1, %hi(k)
	lw $t1, %lo(k)($t1)
	subu $t0, $t0, $t1
	blez $t0, label4
	nop
label46:
	lui $t0, %hi(result1)
	sw $zero, %lo(result1)($t0)
	b label4
	nop
label2:
	lui $t1, %hi(k)
	lw $t1, %lo(k)($t1)
	subu $t0, $t0, $t1
	blez $t0, label4
	nop
	b label46
	nop
label4:
	jr $ra
	nop
