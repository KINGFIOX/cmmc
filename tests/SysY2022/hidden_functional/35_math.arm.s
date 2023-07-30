.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
my_sqrt:
.p2align 4
	push { lr }
	movw r0, #0
	sub sp, sp, #4
	movt r0, #17096
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	ble label7
	movw r0, #0
	movt r0, #17096
	vmov s1, r0
	vdiv.f32 s0, s0, s1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	ble label4
	movw r0, #0
	movt r0, #17096
	vmov s1, r0
	vdiv.f32 s0, s0, s1
	bl my_sqrt
	movw r0, #0
	movt r0, #16672
	vmov s1, r0
	vmul.f32 s0, s0, s1
	vmul.f32 s0, s0, s1
	b label5
label4:
	vadd.f32 s1, s0, s0
	movw r0, #0
	movt r0, #16512
	vmov s2, r0
	mov r0, #1040187392
	vadd.f32 s2, s0, s2
	vdiv.f32 s2, s1, s2
	vmov s1, r0
	mov r0, #1056964608
	vmul.f32 s3, s0, s1
	vmov s1, r0
	movw r0, #0
	movt r0, #16672
	vadd.f32 s3, s3, s1
	vadd.f32 s2, s3, s2
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s0, s0, s2
	vadd.f32 s0, s2, s0
	vmul.f32 s0, s0, s1
	vmov s1, r0
	vmul.f32 s0, s0, s1
label5:
	add sp, sp, #4
	pop { pc }
label7:
	vadd.f32 s1, s0, s0
	movw r0, #0
	movt r0, #16512
	vmov s2, r0
	mov r0, #1040187392
	vadd.f32 s2, s0, s2
	vdiv.f32 s2, s1, s2
	vmov s1, r0
	mov r0, #1056964608
	vmul.f32 s3, s0, s1
	vmov s1, r0
	vadd.f32 s3, s3, s1
	vadd.f32 s2, s3, s2
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s0, s0, s2
	vadd.f32 s0, s2, s0
	vmul.f32 s0, s0, s1
	b label5
asr5:
.p2align 4
	push { lr }
	vpush { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28 }
	vmov.f32 s19, s0
	mov r0, #1056964608
	vmov.f32 s18, s1
	vsub.f32 s1, s1, s0
	vmov s0, r0
	mov r0, #1065353216
	vmul.f32 s1, s1, s0
	vadd.f32 s16, s19, s1
	vsub.f32 s5, s18, s16
	vmul.f32 s1, s5, s0
	vadd.f32 s17, s16, s1
	vmov s1, r0
	movw r0, #0
	movt r0, #16512
	vmov s4, r0
	movw r0, #0
	vdiv.f32 s21, s1, s17
	movt r0, #16576
	vdiv.f32 s22, s1, s18
	vdiv.f32 s24, s1, s16
	vmul.f32 s6, s21, s4
	vadd.f32 s6, s24, s6
	vadd.f32 s6, s6, s22
	vmul.f32 s6, s6, s5
	vmov s5, r0
	movw r0, #0
	movt r0, #16752
	vmov s7, r0
	vdiv.f32 s23, s6, s5
	vsub.f32 s6, s16, s19
	vmul.f32 s7, s2, s7
	vmul.f32 s0, s6, s0
	vadd.f32 s20, s19, s0
	vdiv.f32 s0, s1, s20
	vdiv.f32 s1, s1, s19
	vmul.f32 s4, s0, s4
	vadd.f32 s4, s1, s4
	vadd.f32 s4, s4, s24
	vmul.f32 s4, s4, s6
	vdiv.f32 s4, s4, s5
	vadd.f32 s5, s4, s23
	vsub.f32 s3, s5, s3
	vabs.f32 s6, s3
	vcmp.f32 s6, s7
	vmrs APSR_nzcv, FPSCR
	bls label118
	vsub.f32 s3, s16, s20
	mov r0, #1056964608
	vsub.f32 s9, s20, s19
	vmov s5, r0
	mov r0, #1065353216
	vmul.f32 s6, s3, s5
	vmul.f32 s2, s2, s5
	vmul.f32 s10, s9, s5
	vadd.f32 s7, s20, s6
	vmul.f32 s25, s2, s5
	vadd.f32 s10, s19, s10
	vmov s6, r0
	movw r0, #0
	movt r0, #16512
	vdiv.f32 s8, s6, s7
	vmov s7, r0
	movw r0, #0
	movt r0, #16576
	vdiv.f32 s6, s6, s10
	vmul.f32 s8, s8, s7
	vadd.f32 s8, s0, s8
	vmul.f32 s6, s6, s7
	vadd.f32 s8, s8, s24
	vadd.f32 s1, s1, s6
	vmul.f32 s3, s8, s3
	vadd.f32 s0, s1, s0
	vmov s8, r0
	movw r0, #0
	movt r0, #16752
	vmov s6, r0
	vmul.f32 s0, s0, s9
	vdiv.f32 s3, s3, s8
	vmul.f32 s27, s2, s6
	vdiv.f32 s26, s0, s8
	vadd.f32 s0, s26, s3
	vsub.f32 s1, s0, s4
	vabs.f32 s4, s1
	vcmp.f32 s4, s27
	vmrs APSR_nzcv, FPSCR
	bls label122
	b label127
label123:
	vsub.f32 s2, s17, s16
	mov r0, #1056964608
	vsub.f32 s5, s18, s17
	vmov s0, r0
	mov r0, #1065353216
	vmul.f32 s1, s2, s0
	vmul.f32 s0, s5, s0
	vadd.f32 s3, s16, s1
	vadd.f32 s0, s17, s0
	vmov s1, r0
	movw r0, #0
	movt r0, #16512
	vmov s4, r0
	movw r0, #0
	vdiv.f32 s3, s1, s3
	movt r0, #16576
	vdiv.f32 s0, s1, s0
	vmul.f32 s3, s3, s4
	vadd.f32 s3, s24, s3
	vmul.f32 s0, s0, s4
	vadd.f32 s3, s3, s21
	vadd.f32 s0, s21, s0
	vmul.f32 s3, s3, s2
	vadd.f32 s0, s0, s22
	vmov s2, r0
	vmul.f32 s0, s0, s5
	vdiv.f32 s3, s3, s2
	vdiv.f32 s20, s0, s2
	vadd.f32 s0, s3, s20
	vsub.f32 s1, s0, s23
	vabs.f32 s2, s1
	vcmp.f32 s2, s27
	vmrs APSR_nzcv, FPSCR
	bls label125
	vmov.f32 s0, s16
	mov r0, #1
	vmov.f32 s1, s17
	vmov.f32 s2, s25
	bl asr5
	mov r0, #1
	vmov.f32 s16, s0
	vmov.f32 s0, s17
	vmov.f32 s1, s18
	vmov.f32 s2, s25
	vmov.f32 s3, s20
	bl asr5
	vadd.f32 s0, s16, s0
	vadd.f32 s0, s19, s0
	b label119
label127:
	vmov.f32 s0, s20
	mov r0, #1
	vmov.f32 s1, s16
	vmov.f32 s2, s25
	bl asr5
	mov r0, #1
	vmov.f32 s28, s0
	vmov.f32 s0, s19
	vmov.f32 s1, s20
	vmov.f32 s2, s25
	vmov.f32 s3, s26
	bl asr5
	vadd.f32 s19, s0, s28
	b label123
label118:
	movw r0, #0
	movt r0, #16752
	vmov s0, r0
	vdiv.f32 s0, s3, s0
	vadd.f32 s0, s5, s0
label119:
	vpop { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28 }
	pop { pc }
label125:
	movw r0, #0
	movt r0, #16752
	vmov s2, r0
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s19, s0
	b label119
label122:
	movw r0, #0
	movt r0, #16752
	vmov s2, r0
	vdiv.f32 s1, s1, s2
	vadd.f32 s19, s0, s1
	b label123
eee:
.p2align 4
	push { lr }
	movw r0, #4719
	sub sp, sp, #4
	movt r0, #14979
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bgt label269
	b label287
label267:
	add sp, sp, #4
	pop { pc }
label269:
	mov r0, #1056964608
	vmov s1, r0
	movw r0, #4719
	movt r0, #14979
	vmul.f32 s0, s0, s1
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bgt label286
	vmul.f32 s1, s0, s0
	mov r0, #1056964608
	vmov s2, r0
	mov r0, #1065353216
	vmul.f32 s1, s1, s2
	vmov s2, r0
	mov r0, #3
	vadd.f32 s3, s0, s2
	vadd.f32 s3, s3, s1
	vmov.f32 s1, s0
.p2align 4
label271:
	vmul.f32 s4, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s4
	cmp r0, #0
	bne label271
	movw r0, #0
	movt r0, #16576
	vmov s1, r0
	mov r0, #1065353216
	vdiv.f32 s1, s2, s1
	vmov s2, r0
	mov r0, #4
	vadd.f32 s3, s3, s1
	vmov.f32 s1, s0
	vmul.f32 s4, s2, s0
	ands r1, r0, #1
	vmul.f32 s1, s0, s0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s4
	cmp r0, #0
	beq label348
.p2align 4
label276:
	vmul.f32 s4, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s4
	cmp r0, #0
	bne label276
.p2align 4
label348:
	movw r0, #0
	movt r0, #16832
	vmov s1, r0
	mov r0, #1065353216
	vdiv.f32 s1, s2, s1
	vadd.f32 s2, s3, s1
	vmov s1, r0
	mov r0, #5
	vmul.f32 s3, s1, s0
	ands r1, r0, #1
	vmul.f32 s0, s0, s0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s1, s3
	cmp r0, #0
	bne label281
.p2align 4
label435:
	movw r0, #0
	movt r0, #17136
	vmov s0, r0
	vdiv.f32 s0, s1, s0
	vadd.f32 s0, s2, s0
	vmul.f32 s0, s0, s0
	b label267
.p2align 4
label281:
	vmul.f32 s3, s1, s0
	ands r1, r0, #1
	vmul.f32 s0, s0, s0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s1, s3
	cmp r0, #0
	bne label281
	b label435
label286:
	mov r0, #1056964608
	vmov s1, r0
	vmul.f32 s0, s0, s1
	bl eee
	vmul.f32 s0, s0, s0
	vmul.f32 s0, s0, s0
	b label267
label287:
	vmul.f32 s1, s0, s0
	mov r0, #1056964608
	vmov s2, r0
	mov r0, #1065353216
	vmov s3, r0
	mov r0, #3
	vmul.f32 s1, s1, s2
	vadd.f32 s2, s0, s3
	vadd.f32 s2, s2, s1
	vmov.f32 s1, s0
.p2align 4
label288:
	vmul.f32 s4, s3, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s3, s4
	cmp r0, #0
	bne label288
	movw r0, #0
	movt r0, #16576
	vmov s1, r0
	mov r0, #1065353216
	vdiv.f32 s1, s3, s1
	vmov s3, r0
	mov r0, #4
	vadd.f32 s2, s2, s1
	vmov.f32 s1, s0
	vmul.f32 s4, s3, s0
	ands r1, r0, #1
	vmul.f32 s1, s0, s0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s3, s4
	cmp r0, #0
	beq label406
.p2align 4
label293:
	vmul.f32 s4, s3, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s3, s4
	cmp r0, #0
	bne label293
.p2align 4
label406:
	movw r0, #0
	movt r0, #16832
	vmov s1, r0
	mov r0, #1065353216
	vdiv.f32 s1, s3, s1
	vadd.f32 s1, s2, s1
	vmov s2, r0
	mov r0, #5
	vmul.f32 s3, s2, s0
	ands r1, r0, #1
	vmul.f32 s0, s0, s0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	bne label298
.p2align 4
label437:
	movw r0, #0
	movt r0, #17136
	vmov s0, r0
	vdiv.f32 s0, s2, s0
	vadd.f32 s0, s1, s0
	b label267
.p2align 4
label298:
	vmul.f32 s3, s2, s0
	ands r1, r0, #1
	vmul.f32 s0, s0, s0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	bne label298
	b label437
my_exp:
.p2align 4
	push { lr }
	vcmp.f32 s0, #0
	sub sp, sp, #4
	vmrs APSR_nzcv, FPSCR
	bmi label439
	vcvt.s32.f32 s1, s0
	vmov r0, s1
	vcvt.f32.s32 s1, s1
	vsub.f32 s0, s0, s1
	cmp r0, #0
	blt label473
	bne label496
	mov r0, #1065353216
	vmov s5, r0
	b label443
label496:
	mov r1, #1065353216
	vmov s1, r1
	movw r1, #63572
	movt r1, #16429
	vmov s2, r1
	b label452
label440:
	add sp, sp, #4
	pop { pc }
label473:
	rsb r0, r0, #0
	mov r1, #1065353216
	vmov s2, r1
	movw r1, #63572
	movt r1, #16429
	vmov s1, r1
	b label446
label443:
	bl eee
	vmul.f32 s0, s5, s0
	b label440
.p2align 4
label446:
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	bne label446
	mov r0, #1065353216
	vmov s1, r0
	vdiv.f32 s5, s1, s2
	b label443
.p2align 4
label452:
	vmul.f32 s3, s1, s2
	ands r1, r0, #1
	vmul.f32 s2, s2, s2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s1, s3
	cmp r0, #0
	bne label452
	vmov.f32 s5, s1
	b label443
label439:
	vneg.f32 s0, s0
	bl my_exp
	mov r0, #1065353216
	vmov s1, r0
	vdiv.f32 s0, s1, s0
	b label440
.globl main
main:
.p2align 4
	push { r4, r5, lr }
	vpush { s16, s17, s18 }
	bl getint
	movs r4, r0
	beq label520
.p2align 4
label521:
	bl getfloat
	vabs.f32 s18, s0
	vmov.f32 s16, s0
	bl getfloat
	vmov.f32 s17, s0
	vmov.f32 s0, s18
	bl putfloat
	mov r0, #32
	bl putch
	vmov.f32 s1, s16
	mov r0, #1065353216
	vmov s0, r0
	mov r0, #2
.p2align 4
label522:
	vmul.f32 s2, s0, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s0, s2
	cmp r0, #0
	bne label522
	bl putfloat
	vmov.f32 s0, s16
	bl my_sqrt
	mov r0, #32
	vmov.f32 s18, s0
	bl putch
	vmov.f32 s0, s18
	bl putfloat
	vmov.f32 s0, s16
	bl my_exp
	mov r0, #32
	vmov.f32 s18, s0
	bl putch
	vmov.f32 s0, s18
	bl putfloat
	mov r0, #32
	bl putch
	mov r5, #0
	vcmp.f32 s16, #0
	mov r0, #1065353216
	vmov s1, r0
	mov r0, #1056964608
	vmrs APSR_nzcv, FPSCR
	vmov s2, r0
	movwgt r5, #1
	movw r0, #0
	movt r0, #16512
	vsub.f32 s0, s16, s1
	vmov s3, r0
	movw r0, #0
	movt r0, #16576
	vmul.f32 s2, s0, s2
	vadd.f32 s2, s2, s1
	vdiv.f32 s2, s1, s2
	vmul.f32 s2, s2, s3
	vadd.f32 s2, s2, s1
	vdiv.f32 s1, s1, s16
	vadd.f32 s1, s2, s1
	vmul.f32 s0, s1, s0
	vmov s1, r0
	vdiv.f32 s18, s0, s1
	bgt label534
	mov r0, #45
	bl putch
	b label527
label520:
	mov r0, #0
	vpop { s16, s17, s18 }
	pop { r4, r5, pc }
.p2align 4
label529:
	mov r0, #32
	bl putch
	vcmp.f32 s16, #0
	vmrs APSR_nzcv, FPSCR
	bgt label530
	mov r0, #45
	bl putch
.p2align 4
label532:
	mov r0, #10
	bl putch
	subs r4, r4, #1
	bne label521
	b label520
.p2align 4
label533:
	mov r0, #1065353216
	vmov s11, r0
	mov r0, #1056964608
	vmov s1, r0
	movw r0, #0
	movt r0, #16512
	vsub.f32 s0, s17, s11
	vmov s2, r0
	movw r0, #0
	movt r0, #16576
	vmul.f32 s1, s0, s1
	vadd.f32 s1, s1, s11
	vdiv.f32 s1, s11, s1
	vmul.f32 s1, s1, s2
	vdiv.f32 s2, s11, s17
	vadd.f32 s1, s1, s11
	vadd.f32 s1, s1, s2
	vmul.f32 s0, s1, s0
	vmov s1, r0
	movw r0, #52343
	movt r0, #12843
	vmov s12, r0
	mov r0, #1
	vdiv.f32 s3, s0, s1
	vmov.f32 s0, s11
	vmov.f32 s1, s17
	vmov.f32 s2, s12
	bl asr5
	mov r0, #1
	vmov.f32 s13, s0
	vmov.f32 s0, s11
	vmov.f32 s1, s16
	vmov.f32 s2, s12
	vmov.f32 s3, s18
	bl asr5
	vdiv.f32 s0, s13, s0
	bl putfloat
	b label529
.p2align 4
label527:
	mov r0, #32
	bl putch
	mov r0, #0
	vcmp.f32 s17, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	ands r0, r5, r0
	bne label533
	mov r0, #45
	bl putch
	b label529
.p2align 4
label534:
	mov r0, #1065353216
	vmov.f32 s1, s16
	vmov s0, r0
	vmov.f32 s3, s18
	movw r0, #52343
	movt r0, #12843
	vmov s2, r0
	mov r0, #1
	bl asr5
	bl putfloat
	b label527
.p2align 4
label530:
	mov r0, #1065353216
	vmov.f32 s1, s16
	vmov s0, r0
	vmov.f32 s3, s18
	movw r0, #52343
	movt r0, #12843
	vmov s2, r0
	mov r0, #1
	bl asr5
	vmul.f32 s0, s17, s0
	bl my_exp
	bl putfloat
	b label532
