.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1065361605
.bss
.text
func:
	addi sp, sp, -24
	fsw f8, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
	fmv.s f8, f10
	bge a1, zero, label9
	fmv.w.x f10, zero
	j label2
label9:
	addiw s0, a1, -1
	fmv.s f10, f8
	mv a1, s0
	jal func
	fadd.s f8, f8, f10
	fmv.s f10, f8
	mv a1, s0
	jal func
	fsub.s f10, f8, f10
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	flw f8, 16(sp)
	addi sp, sp, 24
	ret
.globl main
main:
	addi sp, sp, -8
	sd ra, 0(sp)
	li a0, 21
	jal _sysy_starttime
	jal getint
pcrel41:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a2, a1, %pcrel_lo(pcrel41)
	flw f10, 0(a2)
	mv a1, a0
	jal func
	flw f11, 0(a2)
	fsub.s f10, f10, f11
	fmv.w.x f11, zero
	feq.s a0, f10, f11
	bne a0, zero, label22
label23:
	li a0, 32
	jal _sysy_stoptime
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
label22:
	li a0, 112
	jal putch
	j label23
