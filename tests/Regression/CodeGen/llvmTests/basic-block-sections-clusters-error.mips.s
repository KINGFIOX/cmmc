.data
.text
.p2align 2
.globl dummy
dummy:
	mult $a0, $a1
	mflo $t0
	addu $v0, $a2, $t0
	jr $ra
	nop
