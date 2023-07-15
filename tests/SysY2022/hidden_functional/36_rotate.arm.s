.arch armv7ve
.data
.bss
.align 4
image:
	.zero	4194304
.text
.syntax unified
.arm
.fpu vfpv4
my_sin_impl:
	push { lr }
	vpush { s16 }
	movw r0, #14269
	vabs.f32 s1, s0
	movt r0, #13702
	vmov s2, r0
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	bhi label4
label2:
	vpop { s16 }
	pop { pc }
label4:
	movw r0, #0
	movt r0, #16448
	vmov s1, r0
	movw r0, #14269
	movt r0, #13702
	vmov s2, r0
	vdiv.f32 s0, s0, s1
	vabs.f32 s1, s0
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	bhi label7
label5:
	movw r0, #0
	movt r0, #16512
	vmov s1, r0
	movw r0, #0
	movt r0, #16448
	vmov s2, r0
	vmul.f32 s1, s0, s1
	vmul.f32 s1, s1, s0
	vmul.f32 s1, s1, s0
	vmul.f32 s0, s0, s2
	vsub.f32 s0, s0, s1
	b label2
label7:
	movw r0, #0
	movt r0, #16448
	vmov s16, r0
	vdiv.f32 s0, s0, s16
	bl my_sin_impl
	movw r0, #0
	movt r0, #16512
	vmov s1, r0
	vmul.f32 s1, s0, s1
	vmul.f32 s1, s1, s0
	vmul.f32 s1, s1, s0
	vmul.f32 s0, s0, s16
	vsub.f32 s0, s0, s1
	b label5
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	vpush { s16, s17, s18, s19, s20, s21 }
	sub sp, sp, #4
	bl getfloat
	vmov.f32 s19, s0
	bl getch
	bl getch
	cmp r0, #80
	beq label49
	b label74
label49:
	bl getch
	cmp r0, #50
	beq label50
label74:
	mvn r0, #0
	b label47
label50:
	bl getint
	mov r5, #0
	cmp r0, #1024
	mov r4, r0
	movwgt r5, #1
	bl getint
	cmp r0, #1024
	mov r6, r0
	mov r0, #0
	movwgt r0, #1
	orrs r0, r5, r0
	beq label51
	b label74
label51:
	bl getint
	cmp r0, #255
	movw r5, #:lower16:image
	add r1, r4, r4, lsr #31
	movt r5, #:upper16:image
	asr r7, r1, #1
	add r1, r6, r6, lsr #31
	vmov s0, r7
	asr r8, r1, #1
	vcvt.f32.s32 s16, s0
	vmov s0, r8
	vcvt.f32.s32 s17, s0
	beq label100
	b label74
label100:
	mov r9, #0
	cmp r6, r9
	ble label54
	cmp r4, #0
	ble label66
	b label227
label47:
	add sp, sp, #4
	vpop { s16, s17, s18, s19, s20, s21 }
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label54:
	movw r0, #4059
	movw r1, #4059
	movt r0, #16329
	movt r1, #49353
	vmov s0, r0
	vmov s4, r1
	movw r0, #4059
	mov r1, #0
	movt r0, #16585
	vmov s3, r0
	mov r0, #0
	vadd.f32 s0, s19, s0
	vdiv.f32 s1, s0, s3
	vcmp.f32 s0, s3
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s0, s4
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	orrs r9, r0, r1
	vcvt.s32.f32 s1, s1
	movw r0, #4059
	movt r0, #16457
	vmov s5, r0
	vcvt.f32.s32 s1, s1
	movw r0, #4059
	movt r0, #49225
	vmov s6, r0
	vmul.f32 s1, s1, s3
	vsub.f32 s1, s0, s1
	vmovne.f32 s0, s1
	vsub.f32 s1, s0, s3
	vcmp.f32 s0, s5
	vmrs APSR_nzcv, FPSCR
	vmovgt.f32 s0, s1
	vcmp.f32 s0, s6
	vadd.f32 s1, s0, s3
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s0, s1
	bl my_sin_impl
	mov r1, #0
	vcmp.f32 s19, s3
	vmov.f32 s1, s19
	mov r0, #0
	vmov.f32 s18, s0
	vmrs APSR_nzcv, FPSCR
	vdiv.f32 s0, s19, s3
	vcmp.f32 s19, s4
	movwgt r0, #1
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	orrs r9, r0, r1
	vcvt.s32.f32 s0, s0
	vcvt.f32.s32 s0, s0
	vmul.f32 s0, s0, s3
	vsub.f32 s0, s19, s0
	vmovne.f32 s1, s0
	vsub.f32 s2, s1, s3
	vcmp.f32 s1, s5
	vmov.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	vmovgt.f32 s0, s2
	vcmp.f32 s0, s6
	vadd.f32 s1, s0, s3
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s0, s1
	bl my_sin_impl
	mov r0, #80
	vmov.f32 s19, s0
	bl putch
	mov r0, #50
	bl putch
	mov r0, #10
	bl putch
	mov r0, r4
	bl putint
	mov r0, #32
	bl putch
	mov r0, r6
	bl putint
	mov r0, #32
	bl putch
	mov r0, #255
	bl putint
	mov r0, #10
	bl putch
	mov r9, #0
	cmp r6, r9
	ble label151
	sub r0, r9, r8
	cmp r4, #0
	vmov s0, r0
	vcvt.f32.s32 s0, s0
	vmul.f32 s21, s0, s19
	vmul.f32 s20, s0, s18
	ble label64
	b label228
label151:
	mov r0, #0
	b label47
label228:
	mov r10, #0
label58:
	sub r0, r10, r7
	mov r1, #0
	mov r2, #0
	mov r3, #0
	vmov s0, r0
	vcvt.f32.s32 s0, s0
	vmul.f32 s1, s0, s18
	vmul.f32 s0, s0, s19
	vsub.f32 s1, s1, s21
	vadd.f32 s0, s0, s20
	vadd.f32 s1, s1, s16
	vadd.f32 s0, s0, s17
	vcvt.s32.f32 s1, s1
	vcvt.s32.f32 s0, s0
	vmov r0, s1
	cmp r4, r0
	movwle r1, #1
	cmp r0, #0
	movwlt r2, #1
	orr r1, r1, r2
	vmov r2, s0
	cmp r2, #0
	movwlt r3, #1
	orrs r1, r1, r3
	beq label60
label175:
	mov r0, #0
	b label62
label60:
	cmp r6, r2
	bgt label61
	b label175
label61:
	mla r0, r4, r2, r0
	ldr r0, [r5, r0, lsl #2]
label62:
	bl putint
	mov r0, #32
	bl putch
	add r10, r10, #1
	cmp r4, r10
	ble label64
	b label58
label64:
	mov r0, #10
	bl putch
	add r9, r9, #1
	cmp r6, r9
	ble label151
	sub r0, r9, r8
	cmp r4, #0
	vmov s0, r0
	vcvt.f32.s32 s0, s0
	vmul.f32 s21, s0, s19
	vmul.f32 s20, s0, s18
	ble label64
	b label228
label66:
	add r9, r9, #1
	cmp r6, r9
	ble label54
	cmp r4, #0
	ble label66
label227:
	mul r10, r4, r9
	mov r11, #0
label68:
	bl getint
	add r1, r10, r11
	add r11, r11, #1
	str r0, [r5, r1, lsl #2]
	cmp r4, r11
	ble label66
	b label68