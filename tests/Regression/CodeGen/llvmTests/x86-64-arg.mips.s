.data
.text
.p2align 2
.globl test
test:
	sll $t0, $a0, 16
	sra $v0, $t0, 16
	jr $ra
	nop
