.data
.section .rodata
.bss
.text
.globl my_fabs
my_fabs:
	mtc1 $zero, $f4
	c.ult.s $f12, $f4
	li $t0, 1
	movt $t0, $zero, $fcc0
	bne $t0, $zero, label10
	nop
	neg.s $f0, $f12
	b label2
	nop
label10:
	mov.s $f0, $f12
label2:
	jr $ra
	nop
.globl my_fmin
my_fmin:
	c.olt.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	mov.s $f0, $f12
	movz.s $f0, $f14, $t0
	jr $ra
	nop
.globl my_fmax
my_fmax:
	c.ule.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	mov.s $f0, $f12
	movz.s $f0, $f14, $t0
	jr $ra
	nop
.globl my_trunc
my_trunc:
	trunc.w.s $f4, $f12
	cvt.s.w $f0, $f4
	jr $ra
	nop
