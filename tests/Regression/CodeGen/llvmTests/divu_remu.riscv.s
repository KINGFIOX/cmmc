.data
.align 4
.globl iiii
iiii:
	.4byte	103
.align 4
.globl jjjj
jjjj:
	.4byte	4
.align 4
.globl kkkk
kkkk:
	.4byte	0
.align 4
.globl llll
llll:
	.4byte	0
.section .rodata
.bss
.text
.globl test
test:
pcrel22:
	auipc a0, %pcrel_hi(iiii)
	lw a0, %pcrel_lo(pcrel22)(a0)
pcrel23:
	auipc a1, %pcrel_hi(jjjj)
	lw a1, %pcrel_lo(pcrel23)(a1)
	divuw a2, a0, a1
pcrel24:
	auipc a3, %pcrel_hi(kkkk)
	sw a2, %pcrel_lo(pcrel24)(a3)
	remuw a0, a0, a1
pcrel25:
	auipc a1, %pcrel_hi(llll)
	sw a0, %pcrel_lo(pcrel25)(a1)
	ret