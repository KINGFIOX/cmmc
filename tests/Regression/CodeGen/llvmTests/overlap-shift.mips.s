.data
.bss
.p2align 2
.globl G
G:
	.zero	4
.text
.p2align 2
.globl test1
test1:
	sll $t0, $a0, 2
	lui $t1, %hi(G)
	sw $t0, %lo(G)($t1)
	move $v0, $a0
	jr $ra
	nop
