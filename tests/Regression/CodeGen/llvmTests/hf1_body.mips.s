.data
.bss
.p2align 2
.globl x
x:
	.zero	4
.text
.p2align 2
.globl v_sf
v_sf:
	lui $t0, %hi(x)
	swc1 $f12, %lo(x)($t0)
	jr $ra
	nop
