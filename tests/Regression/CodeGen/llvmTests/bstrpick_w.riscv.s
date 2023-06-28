.data
.section .rodata
.bss
.text
.globl and0xf30_lshr4
and0xf30_lshr4:
	li a1, 3888
	and a0, a0, a1
	srliw a0, a0, 4
	ret
.globl and0xff0_lshr3
and0xff0_lshr3:
	li a1, 4080
	and a0, a0, a1
	srliw a0, a0, 3
	ret
.globl and0xff0_lshr4
and0xff0_lshr4:
	li a1, 4080
	and a0, a0, a1
	srliw a0, a0, 4
	ret
.globl and4080_ashr5
and4080_ashr5:
	li a1, 4080
	and a0, a0, a1
	srliw a0, a0, 5
	ret
.globl and4095
and4095:
	li a1, 4095
	and a0, a0, a1
	ret
.globl and8191
and8191:
	li a1, 8191
	and a0, a0, a1
	ret
.globl ashr20_and511
ashr20_and511:
	srliw a0, a0, 20
	andi a0, a0, 511
	ret
.globl lshr10_and255
lshr10_and255:
	srliw a0, a0, 10
	andi a0, a0, 255
	ret
.globl zext_i16_to_i32
zext_i16_to_i32:
	li a1, 65535
	and a0, a0, a1
	ret