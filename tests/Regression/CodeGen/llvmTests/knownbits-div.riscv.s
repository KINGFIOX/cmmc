.data
.section .rodata
.bss
.text
.globl sdiv_exact_even_even_fail_unknown
sdiv_exact_even_even_fail_unknown:
	andi a0, a0, 255
	andi a0, a0, -2
	slli a0, a0, 24
	srai a0, a0, 24
	andi a1, a1, 255
	andi a1, a1, -2
	slli a1, a1, 24
	srai a1, a1, 24
	divw a0, a0, a1
	andi a0, a0, 1
	andi a0, a0, 255
	ret
.globl sdiv_exact_odd_odd
sdiv_exact_odd_odd:
	andi a0, a0, 255
	ori a0, a0, 1
	slli a0, a0, 24
	srai a0, a0, 24
	andi a1, a1, 255
	ori a1, a1, 1
	slli a1, a1, 24
	srai a1, a1, 24
	divw a0, a0, a1
	andi a0, a0, 1
	andi a0, a0, 255
	ret
.globl sdiv_neg_neg_high_bits
sdiv_neg_neg_high_bits:
	andi a0, a0, 255
	ori a0, a0, -128
	slli a0, a0, 24
	srai a0, a0, 24
	andi a1, a1, 255
	ori a1, a1, -125
	slli a1, a1, 24
	srai a1, a1, 24
	divw a0, a0, a1
	andi a0, a0, -128
	andi a0, a0, 255
	ret
.globl udiv_exact_even_even_fail_unknown
udiv_exact_even_even_fail_unknown:
	andi a0, a0, 255
	andi a0, a0, -2
	andi a1, a1, 255
	andi a1, a1, -2
	divw a0, a0, a1
	andi a0, a0, 1
	andi a0, a0, 255
	ret
.globl udiv_exact_even_odd
udiv_exact_even_odd:
	andi a0, a0, 255
	andi a0, a0, -2
	andi a1, a1, 255
	ori a1, a1, 1
	divw a0, a0, a1
	andi a0, a0, 1
	andi a0, a0, 255
	ret