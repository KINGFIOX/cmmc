.data
.bss
.align 4
.globl a
a:
	.zero	4
.text
.p2align 2
.globl foo
foo:
	lui $t0, %hi(a)
	lw $v0, %lo(a)($t0)
	jr $ra
	nop
