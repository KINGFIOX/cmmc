.data
.text
.p2align 2
.globl A
A:
	andi $t0, $a0, 255
	andi $t1, $a1, 255
	addu $t0, $t0, $t1
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl B
B:
	andi $t0, $a0, 65535
	andi $t1, $a1, 65535
	addu $t0, $t0, $t1
	andi $v0, $t0, 65535
	jr $ra
	nop
