.data
.text
.p2align 2
.globl test
test:
	subu $t0, $zero, $a0
	andi $v0, $t0, 255
	jr $ra
	nop
