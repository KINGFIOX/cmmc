.data
.section .rodata
.bss
.text
.globl test_sdiv16
test_sdiv16:
	slli a0, a0, 16
	srai a0, a0, 16
	slli a1, a1, 16
	srai a1, a1, 16
	divw a0, a0, a1
	li a1, 65535
	and a0, a0, a1
	ret
.globl test_sdiv32
test_sdiv32:
	divw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_sdiv8
test_sdiv8:
	slli a0, a0, 24
	srai a0, a0, 24
	slli a1, a1, 24
	srai a1, a1, 24
	divw a0, a0, a1
	andi a0, a0, 255
	ret
.globl test_srem16
test_srem16:
	slli a0, a0, 16
	srai a0, a0, 16
	slli a1, a1, 16
	srai a1, a1, 16
	remw a0, a0, a1
	li a1, 65535
	and a0, a0, a1
	ret
.globl test_srem32
test_srem32:
	remw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_srem8
test_srem8:
	slli a0, a0, 24
	srai a0, a0, 24
	slli a1, a1, 24
	srai a1, a1, 24
	remw a0, a0, a1
	andi a0, a0, 255
	ret
.globl test_udiv16
test_udiv16:
	li a2, 65535
	and a0, a0, a2
	and a1, a1, a2
	divw a0, a0, a1
	and a0, a0, a2
	ret
.globl test_udiv32
test_udiv32:
	divuw a0, a0, a1
	ret
.globl test_udiv8
test_udiv8:
	andi a0, a0, 255
	andi a1, a1, 255
	divw a0, a0, a1
	andi a0, a0, 255
	ret
.globl test_urem16
test_urem16:
	li a2, 65535
	and a0, a0, a2
	and a1, a1, a2
	remw a0, a0, a1
	and a0, a0, a2
	ret
.globl test_urem32
test_urem32:
	remuw a0, a0, a1
	ret
.globl test_urem8
test_urem8:
	andi a0, a0, 255
	andi a1, a1, 255
	remw a0, a0, a1
	andi a0, a0, 255
	ret