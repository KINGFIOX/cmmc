.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
my_sqrt:
	push { lr }
	movw r0, #0
	movt r0, #17096
	sub sp, sp, #4
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	ble label7
	vdiv.f32 s0, s0, s1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	ble label4
	vdiv.f32 s0, s0, s1
	bl my_sqrt
	movw r0, #0
	movt r0, #16672
	vmov s1, r0
	vmul.f32 s0, s0, s1
	vmul.f32 s0, s0, s1
	b label5
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
label5:
	add sp, sp, #4
	pop { pc }
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
	b label5
.p2align 4
asr5:
	push { r4, r5, r6, r7, r8, lr }
	vpush { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28 }
	movw r8, #0
	movt r8, #16752
	mov r5, #1065353216
	vmov.f32 s19, s0
	vmov.f32 s18, s1
	sub sp, sp, #4
	mov r4, #1056964608
	movw r6, #0
	movt r6, #16512
	movw r7, #0
	movt r7, #16576
	vmov s7, r8
	vsub.f32 s1, s1, s0
	vmov s4, r6
	vmov s0, r4
	vmul.f32 s7, s2, s7
	vmul.f32 s1, s1, s0
	vadd.f32 s16, s19, s1
	vsub.f32 s5, s18, s16
	vmul.f32 s1, s5, s0
	vadd.f32 s17, s16, s1
	vmov s1, r5
	vdiv.f32 s22, s1, s18
	vdiv.f32 s24, s1, s16
	vdiv.f32 s21, s1, s17
	vmul.f32 s6, s21, s4
	vadd.f32 s6, s24, s6
	vadd.f32 s6, s6, s22
	vmul.f32 s6, s6, s5
	vmov s5, r7
	vdiv.f32 s23, s6, s5
	vsub.f32 s6, s16, s19
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
	bhi label123
	vmov s0, r8
	vdiv.f32 s0, s3, s0
	vadd.f32 s0, s5, s0
label121:
	add sp, sp, #4
	vpop { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28 }
	pop { r4, r5, r6, r7, r8, pc }
label123:
	vsub.f32 s3, s16, s20
	vmov s5, r4
	vsub.f32 s9, s20, s19
	vmul.f32 s2, s2, s5
	vmul.f32 s6, s3, s5
	vmul.f32 s10, s9, s5
	vmul.f32 s25, s2, s5
	vadd.f32 s7, s20, s6
	vadd.f32 s10, s19, s10
	vmov s6, r5
	vdiv.f32 s8, s6, s7
	vmov s7, r6
	vdiv.f32 s6, s6, s10
	vmul.f32 s8, s8, s7
	vadd.f32 s8, s0, s8
	vmul.f32 s6, s6, s7
	vadd.f32 s8, s8, s24
	vadd.f32 s1, s1, s6
	vmov s6, r8
	vmul.f32 s3, s8, s3
	vadd.f32 s0, s1, s0
	vmov s8, r7
	vmul.f32 s27, s2, s6
	vmul.f32 s0, s0, s9
	vdiv.f32 s3, s3, s8
	vdiv.f32 s26, s0, s8
	vadd.f32 s0, s26, s3
	vsub.f32 s1, s0, s4
	vabs.f32 s4, s1
	vcmp.f32 s4, s27
	vmrs APSR_nzcv, FPSCR
	bhi label129
	vmov s2, r8
	vdiv.f32 s1, s1, s2
	vadd.f32 s19, s0, s1
label125:
	vsub.f32 s3, s17, s16
	vmov s0, r4
	vsub.f32 s5, s18, s17
	vmul.f32 s1, s3, s0
	vmul.f32 s0, s5, s0
	vadd.f32 s2, s16, s1
	vadd.f32 s0, s17, s0
	vmov s1, r5
	vdiv.f32 s0, s1, s0
	vdiv.f32 s4, s1, s2
	vmov s2, r6
	vmul.f32 s0, s0, s2
	vadd.f32 s0, s21, s0
	vmul.f32 s4, s4, s2
	vadd.f32 s0, s0, s22
	vadd.f32 s4, s24, s4
	vmul.f32 s0, s0, s5
	vadd.f32 s4, s4, s21
	vmul.f32 s3, s4, s3
	vmov s4, r7
	vdiv.f32 s20, s0, s4
	vdiv.f32 s3, s3, s4
	vadd.f32 s0, s3, s20
	vsub.f32 s1, s0, s23
	vabs.f32 s2, s1
	vcmp.f32 s2, s27
	vmrs APSR_nzcv, FPSCR
	bhi label127
	vmov s2, r8
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s19, s0
	b label121
label129:
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
	b label125
label127:
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
	b label121
.p2align 4
eee:
	push { lr }
	movw r0, #4719
	movt r0, #14979
	sub sp, sp, #4
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bgt label272
	vmul.f32 s1, s0, s0
	mov r0, #1056964608
	vmov s2, r0
	mov r0, #1065353216
	vmov s3, r0
	mov r0, #3
	vmul.f32 s1, s1, s2
	vadd.f32 s2, s0, s3
	vadd.f32 s1, s2, s1
	vmov.f32 s2, s0
.p2align 4
label293:
	vmul.f32 s4, s3, s2
	ands r1, r0, #1
	vmul.f32 s2, s2, s2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s3, s4
	cmp r0, #0
	bne label293
	movw r0, #0
	movt r0, #16576
	vmov s2, r0
	mov r0, #1065353216
	vdiv.f32 s2, s3, s2
	vmov s3, r0
	mov r0, #4
	vadd.f32 s1, s1, s2
	vmov.f32 s2, s0
.p2align 4
label298:
	vmul.f32 s4, s3, s2
	ands r1, r0, #1
	vmul.f32 s2, s2, s2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s3, s4
	cmp r0, #0
	bne label298
	movw r0, #0
	movt r0, #16832
	vmov s2, r0
	mov r0, #1065353216
	vdiv.f32 s2, s3, s2
	vadd.f32 s1, s1, s2
	vmov s2, r0
	mov r0, #5
.p2align 4
label303:
	vmul.f32 s3, s2, s0
	ands r1, r0, #1
	vmul.f32 s0, s0, s0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	bne label303
	movw r0, #0
	movt r0, #17136
	vmov s0, r0
	vdiv.f32 s0, s2, s0
	vadd.f32 s0, s1, s0
label290:
	add sp, sp, #4
	pop { pc }
label272:
	mov r1, #1056964608
	vmov s1, r1
	vmul.f32 s0, s0, s1
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bgt label289
	vmul.f32 s1, s0, s0
	mov r0, #1056964608
	vmov s2, r0
	mov r0, #1065353216
	vmov s3, r0
	mov r0, #3
	vmul.f32 s1, s1, s2
	vadd.f32 s2, s0, s3
	vadd.f32 s1, s2, s1
	vmov.f32 s2, s0
.p2align 4
label274:
	vmul.f32 s4, s3, s2
	ands r1, r0, #1
	vmul.f32 s2, s2, s2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s3, s4
	cmp r0, #0
	bne label274
	movw r0, #0
	movt r0, #16576
	vmov s2, r0
	mov r0, #1065353216
	vdiv.f32 s2, s3, s2
	vmov s3, r0
	mov r0, #4
	vadd.f32 s1, s1, s2
	vmov.f32 s2, s0
.p2align 4
label279:
	vmul.f32 s4, s3, s2
	ands r1, r0, #1
	vmul.f32 s2, s2, s2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s3, s4
	cmp r0, #0
	bne label279
	movw r0, #0
	movt r0, #16832
	vmov s2, r0
	mov r0, #1065353216
	vdiv.f32 s2, s3, s2
	vadd.f32 s1, s1, s2
	vmov s2, r0
	mov r0, #5
.p2align 4
label284:
	vmul.f32 s3, s2, s0
	ands r1, r0, #1
	vmul.f32 s0, s0, s0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	bne label284
	movw r0, #0
	movt r0, #17136
	vmov s0, r0
	vdiv.f32 s0, s2, s0
	vadd.f32 s0, s1, s0
	vmul.f32 s0, s0, s0
	b label290
label289:
	mov r0, #1056964608
	vmov s1, r0
	vmul.f32 s0, s0, s1
	bl eee
	vmul.f32 s0, s0, s0
	vmul.f32 s0, s0, s0
	b label290
.p2align 4
my_exp:
	push { lr }
	vcmp.f32 s0, #0
	sub sp, sp, #4
	vmrs APSR_nzcv, FPSCR
	bmi label440
	vcvt.s32.f32 s1, s0
	vmov r0, s1
	vcvt.f32.s32 s1, s1
	vsub.f32 s0, s0, s1
	cmp r0, #0
	blt label444
	beq label496
	mov r1, #1065353216
	vmov s2, r1
	movw r1, #63572
	movt r1, #16429
	vmov s1, r1
.p2align 4
label451:
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	bne label451
	vmov.f32 s5, s2
	b label442
label440:
	vneg.f32 s0, s0
	bl my_exp
	mov r0, #1065353216
	vmov s1, r0
	vdiv.f32 s0, s1, s0
label455:
	add sp, sp, #4
	pop { pc }
label444:
	rsb r0, r0, #0
	mov r1, #1065353216
	vmov s2, r1
	movw r1, #63572
	movt r1, #16429
	vmov s1, r1
.p2align 4
label445:
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	bne label445
	mov r0, #1065353216
	vmov s1, r0
	vdiv.f32 s5, s1, s2
label442:
	bl eee
	vmul.f32 s0, s5, s0
	b label455
label496:
	mov r0, #1065353216
	vmov s5, r0
	b label442
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	vpush { s16, s17, s18 }
	bl getint
	movw r7, #0
	movt r7, #16576
	movw r6, #0
	movt r6, #16512
	mov r5, #1056964608
	mov r4, #1065353216
	cmp r0, #0
	beq label536
	mov r8, r0
	b label520
.p2align 4
label531:
	vmov s0, r4
	movw r0, #52343
	movt r0, #12843
	vmov.f32 s1, s16
	vmov s2, r0
	vmov.f32 s3, s18
	mov r0, #1
	bl asr5
	vmul.f32 s0, s17, s0
	bl my_exp
	bl putfloat
.p2align 4
label529:
	mov r0, #10
	bl putch
	subs r8, r8, #1
	beq label536
.p2align 4
label520:
	bl getfloat
	vabs.f32 s18, s0
	vmov.f32 s16, s0
	bl getfloat
	vmov.f32 s17, s0
	vmov.f32 s0, s18
	bl putfloat
	mov r0, #32
	bl putch
	vmov.f32 s0, s16
	mov r0, #2
	vmov s1, r4
.p2align 4
label522:
	vmul.f32 s2, s1, s0
	ands r1, r0, #1
	vmul.f32 s0, s0, s0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s1, s2
	cmp r0, #0
	bne label522
	vmov.f32 s0, s1
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
	mov r9, #0
	vmov s1, r4
	vcmp.f32 s16, #0
	vmov s2, r5
	vmov s3, r6
	vmrs APSR_nzcv, FPSCR
	movwgt r9, #1
	vsub.f32 s0, s16, s1
	vmul.f32 s2, s0, s2
	vadd.f32 s2, s2, s1
	vdiv.f32 s2, s1, s2
	vmul.f32 s2, s2, s3
	vadd.f32 s2, s2, s1
	vdiv.f32 s1, s1, s16
	vadd.f32 s1, s2, s1
	vmul.f32 s0, s1, s0
	vmov s1, r7
	vdiv.f32 s18, s0, s1
	bgt label534
	mov r0, #45
	bl putch
.p2align 4
label527:
	mov r0, #32
	bl putch
	mov r0, #0
	vcmp.f32 s17, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	ands r0, r9, r0
	bne label533
	mov r0, #45
	bl putch
	b label528
.p2align 4
label533:
	vmov s11, r4
	movw r0, #52343
	movt r0, #12843
	vmov s1, r5
	vmov s2, r6
	vmov s12, r0
	mov r0, #1
	vsub.f32 s0, s17, s11
	vmul.f32 s1, s0, s1
	vadd.f32 s1, s1, s11
	vdiv.f32 s1, s11, s1
	vmul.f32 s1, s1, s2
	vdiv.f32 s2, s11, s17
	vadd.f32 s1, s1, s11
	vadd.f32 s1, s1, s2
	vmul.f32 s0, s1, s0
	vmov s1, r7
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
.p2align 4
label528:
	mov r0, #32
	bl putch
	vcmp.f32 s16, #0
	vmrs APSR_nzcv, FPSCR
	bgt label531
	mov r0, #45
	bl putch
	b label529
label536:
	mov r0, #0
	vpop { s16, s17, s18 }
	pop { r4, r5, r6, r7, r8, r9, pc }
.p2align 4
label534:
	vmov s0, r4
	movw r0, #52343
	movt r0, #12843
	vmov.f32 s1, s16
	vmov s2, r0
	vmov.f32 s3, s18
	mov r0, #1
	bl asr5
	bl putfloat
	b label527
