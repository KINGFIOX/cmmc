.data
.align 4
.globl i
i:
	.4byte	5
.align 4
.globl j
j:
	.4byte	5
.align 4
.globl result
result:
	.4byte	0
.section .rodata
.bss
.text
.globl test
test:
	lui $t0, %hi(j)
	lw $t0, %lo(j)($t0)
	lui $t1, %hi(i)
	lw $t1, %lo(i)($t1)
	xor $t0, $t0, $t1
	sltu $t0, $zero, $t0
	bne $t0, $zero, label3
	nop
	li $t0, 1
	lui $t1, %hi(result)
	sw $t0, %lo(result)($t1)
label3:
	jr $ra
	nop