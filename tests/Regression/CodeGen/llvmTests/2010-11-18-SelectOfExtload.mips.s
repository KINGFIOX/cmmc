.data
.bss
.globl u
u:
	.zero	1
.globl s
s:
	.zero	1
.text
.p2align 2
.globl foo
foo:
	beq $a0, $zero, label8
	nop
	lui $t0, %hi(u)
	lb $t0, %lo(u)($t0)
	andi $v0, $t0, 255
	b label3
	nop
label8:
	lui $t0, %hi(s)
	lb $t0, %lo(s)($t0)
	sll $t0, $t0, 24
	sra $v0, $t0, 24
label3:
	jr $ra
	nop
