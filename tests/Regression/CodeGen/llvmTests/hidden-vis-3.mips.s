.data
.bss
.p2align 2
.globl x
x:
	.zero	4
.p2align 2
.globl y
y:
	.zero	4
.text
.p2align 2
.globl t
t:
	lui $t0, %hi(y)
	lw $t0, %lo(y)($t0)
	lui $t1, %hi(x)
	lw $t1, %lo(x)($t1)
	addu $v0, $t0, $t1
	jr $ra
	nop
