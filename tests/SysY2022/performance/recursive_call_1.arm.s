.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
func:
	push { r4, lr }
	vpush { s16 }
	sub sp, sp, #4
	vmov.f32 s16, s0
	cmp r1, #0
	bge label4
	mov r0, #0
	vmov s0, r0
label2:
	add sp, sp, #4
	vpop { s16 }
	pop { r4, pc }
label4:
	sub r4, r1, #1
	vmov.f32 s0, s16
	mov r1, r4
	bl func
	vadd.f32 s16, s16, s0
	vmov.f32 s0, s16
	mov r1, r4
	bl func
	vsub.f32 s0, s16, s0
	b label2
.globl main
main:
	push { lr }
	sub sp, sp, #4
	mov r0, #21
	bl _sysy_starttime
	bl getint
	movw r1, #8389
	movt r1, #16256
	vmov s0, r1
	mov r1, r0
	bl func
	vcmp.f32 s0, #0
	vmrs APSR_nzcv, FPSCR
	beq label19
label20:
	mov r0, #32
	bl _sysy_stoptime
	mov r0, #0
	add sp, sp, #4
	pop { pc }
label19:
	mov r0, #112
	bl putch
	b label20
