.data
.section .rodata
.bss
.text
.globl f1
f1:
	mult $a0, $a1
	mflo $t0
	subu $v0, $a2, $t0
	jr $ra
	nop
.globl f2
f2:
	mult $a0, $a1
	mflo $t0
	subu $v0, $t0, $a2
	jr $ra
	nop