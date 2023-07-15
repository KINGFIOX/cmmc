.arch armv7ve
.data
.bss
.align 4
test_block:
	.zero	256
.align 4
test_dct:
	.zero	256
.align 4
test_idct:
	.zero	256
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
	vpush { s16, s17, s18, s19 }
	sub sp, sp, #4
	bl getint
	mov r5, r0
	bl getint
	mov r6, #0
	movw r7, #:lower16:test_block
	mov r4, r0
	movt r7, #:upper16:test_block
	cmp r5, r6
	ble label54
	cmp r0, #0
	ble label50
	b label583
label54:
	vmov s0, r5
	movw r0, #4059
	movw r6, #:lower16:test_dct
	mov r3, #0
	vmov s1, r4
	movt r0, #16457
	movt r6, #:upper16:test_dct
	vcvt.f32.s32 s18, s0
	vcvt.f32.s32 s19, s1
	vmov s0, r0
	vdiv.f32 s16, s0, s19
	vdiv.f32 s17, s0, s18
	add r1, r6, r3, lsl #5
	vmov s0, r3
	cmp r5, r3
	vcvt.f32.s32 s4, s0
	ble label75
	mov r2, #0
	cmp r4, r2
	ble label59
	add r0, r1, r2, lsl #2
	mov r8, #0
	vmov s0, r8
	vstr s0, [r0, #0]
	vmov s0, r2
	vcvt.f32.s32 s3, s0
	cmp r5, r8
	ble label74
	b label63
label59:
	add r3, r3, #1
	add r1, r6, r3, lsl #5
	vmov s0, r3
	cmp r5, r3
	vcvt.f32.s32 s4, s0
	ble label75
	mov r2, #0
	cmp r4, r2
	ble label59
	add r0, r1, r2, lsl #2
	mov r8, #0
	vmov s0, r8
	vstr s0, [r0, #0]
	vmov s0, r2
	vcvt.f32.s32 s3, s0
	cmp r5, r8
	ble label74
	b label63
label75:
	mov r7, #0
	cmp r5, r7
	ble label82
	b label78
label63:
	vmov s0, r8
	mov r0, #1056964608
	movw r9, #4059
	vmov s1, r0
	movt r9, #49353
	movw r0, #4059
	movt r0, #16329
	vcvt.f32.s32 s0, s0
	vadd.f32 s0, s0, s1
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vmul.f32 s0, s17, s0
	vmul.f32 s0, s0, s4
	vadd.f32 s0, s0, s1
	vmov s1, r0
	mov r0, #0
	vcmp.f32 s0, s1
	vmov s1, r9
	mov r9, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwmi r9, #1
	orrs r0, r0, r9
	add r9, r7, r8, lsl #5
	beq label65
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label65
label72:
	add r8, r8, #1
	cmp r5, r8
	ble label74
	b label63
label65:
	movw r0, #4059
	movt r0, #16457
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vcmp.f32 s0, s1
	vmov s1, r0
	movw r0, #4059
	vmrs APSR_nzcv, FPSCR
	movt r0, #49225
	vsub.f32 s2, s0, s1
	vmovgt.f32 s0, s2
	vmov s2, r0
	vadd.f32 s1, s0, s1
	vcmp.f32 s0, s2
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s0, s1
	bl my_sin_impl
	mov r10, #0
	add r0, r1, r2, lsl #2
	vmov.f32 s5, s0
	vldr s6, [r0, #0]
label67:
	vmov s0, r10
	mov r0, #1056964608
	movw r11, #4059
	vmov s1, r0
	movt r11, #49353
	movw r0, #4059
	movt r0, #16329
	vcvt.f32.s32 s0, s0
	vadd.f32 s0, s0, s1
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vmul.f32 s0, s16, s0
	vmul.f32 s0, s0, s3
	vadd.f32 s0, s0, s1
	vmov s1, r0
	mov r0, #0
	vcmp.f32 s0, s1
	vmov s1, r11
	mov r11, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwmi r11, #1
	orrs r0, r0, r11
	add r0, r9, r10, lsl #2
	vldr s1, [r0, #0]
	vmul.f32 s7, s1, s5
	beq label70
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
label70:
	movw r0, #4059
	movt r0, #16457
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vcmp.f32 s0, s1
	vmov s1, r0
	movw r0, #4059
	vmrs APSR_nzcv, FPSCR
	movt r0, #49225
	vsub.f32 s2, s0, s1
	vmovgt.f32 s0, s2
	vmov s2, r0
	vadd.f32 s1, s0, s1
	vcmp.f32 s0, s2
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s0, s1
	bl my_sin_impl
	add r10, r10, #1
	add r0, r1, r2, lsl #2
	cmp r4, r10
	vmul.f32 s0, s7, s0
	vadd.f32 s6, s6, s0
	vstr s6, [r0, #0]
	ble label72
	b label67
label74:
	add r2, r2, #1
	cmp r4, r2
	ble label59
	add r0, r1, r2, lsl #2
	mov r8, #0
	vmov s0, r8
	vstr s0, [r0, #0]
	vmov s0, r2
	vcvt.f32.s32 s3, s0
	cmp r5, r8
	ble label74
	b label63
label82:
	mov r0, #10
	bl putch
	mov r3, #0
	movw r7, #:lower16:test_idct
	movt r7, #:upper16:test_idct
	vmov s0, r3
	mov r0, #1056964608
	add r1, r7, r3, lsl #5
	cmp r5, r3
	vmov s1, r0
	vcvt.f32.s32 s0, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s4, s17, s0
	ble label318
	mov r2, #0
	cmp r4, r2
	ble label94
	b label95
label318:
	mov r6, #0
	cmp r5, r6
	ble label91
	b label87
label91:
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	vpop { s16, s17, s18, s19 }
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label94:
	add r3, r3, #1
	vmov s0, r3
	mov r0, #1056964608
	add r1, r7, r3, lsl #5
	cmp r5, r3
	vmov s1, r0
	vcvt.f32.s32 s0, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s4, s17, s0
	ble label318
	mov r2, #0
	cmp r4, r2
	ble label94
label95:
	add r0, r1, r2, lsl #2
	vldr s0, [r6, #0]
	mov r8, #1048576000
	cmp r5, #1
	vmov s1, r8
	vmul.f32 s0, s0, s1
	vstr s0, [r0, #0]
	mov r0, #1056964608
	vmov s0, r2
	vmov s1, r0
	vcvt.f32.s32 s0, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s3, s16, s0
	ble label96
	cmp r5, #5
	ble label124
	b label594
label96:
	cmp r4, #1
	ble label359
	cmp r4, #5
	ble label107
	b label595
label359:
	mov r8, #1
	cmp r5, r8
	ble label122
	cmp r4, #1
	ble label111
label112:
	vmov s0, r8
	movw r0, #4059
	movw r9, #4059
	movt r0, #16329
	movt r9, #49353
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vcvt.f32.s32 s0, s0
	vmul.f32 s0, s4, s0
	vadd.f32 s0, s0, s1
	vmov s1, r0
	mov r0, #0
	vcmp.f32 s0, s1
	vmov s1, r9
	mov r9, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwmi r9, #1
	orrs r0, r0, r9
	add r9, r6, r8, lsl #5
	beq label114
	b label431
label122:
	add r0, r1, r2, lsl #2
	add r2, r2, #1
	vldr s0, [r0, #0]
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r0, #0]
	cmp r4, r2
	ble label94
	b label95
label111:
	add r8, r8, #1
	cmp r5, r8
	ble label122
	cmp r4, #1
	ble label111
	b label112
label114:
	movw r0, #4059
	movt r0, #16457
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vcmp.f32 s0, s1
	vmov s1, r0
	movw r0, #4059
	vmrs APSR_nzcv, FPSCR
	movt r0, #49225
	vsub.f32 s2, s0, s1
	vmovgt.f32 s0, s2
	vmov s2, r0
	vadd.f32 s1, s0, s1
	vcmp.f32 s0, s2
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s0, s1
	bl my_sin_impl
	mov r10, #1
	add r0, r1, r2, lsl #2
	vmov.f32 s5, s0
	vldr s6, [r0, #0]
label116:
	vmov s0, r10
	movw r0, #4059
	movw r11, #4059
	movt r0, #16329
	movt r11, #49353
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vcvt.f32.s32 s0, s0
	vmul.f32 s0, s3, s0
	vadd.f32 s0, s0, s1
	vmov s1, r0
	mov r0, #0
	vcmp.f32 s0, s1
	vmov s1, r11
	mov r11, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwmi r11, #1
	orrs r0, r0, r11
	add r0, r9, r10, lsl #2
	vldr s1, [r0, #0]
	vmul.f32 s7, s1, s5
	beq label120
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
label120:
	movw r0, #4059
	movt r0, #16457
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vcmp.f32 s0, s1
	vmov s1, r0
	movw r0, #4059
	vmrs APSR_nzcv, FPSCR
	movt r0, #49225
	vsub.f32 s2, s0, s1
	vmovgt.f32 s0, s2
	vmov s2, r0
	vadd.f32 s1, s0, s1
	vcmp.f32 s0, s2
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s0, s1
	bl my_sin_impl
	add r10, r10, #1
	add r0, r1, r2, lsl #2
	cmp r4, r10
	vmul.f32 s0, s7, s0
	vadd.f32 s6, s6, s0
	vstr s6, [r0, #0]
	ble label111
	b label116
label431:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label114
label594:
	add r0, r1, r2, lsl #2
	mov r9, #1
	vldr s1, [r0, #0]
	mov r0, #5
	b label126
label124:
	add r0, r1, r2, lsl #2
	vldr s0, [r0, #0]
	mov r0, #1
	add r8, r6, r0, lsl #5
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r5, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ble label133
	add r8, r6, r0, lsl #5
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r5, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ble label133
	add r8, r6, r0, lsl #5
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r5, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ble label133
	add r8, r6, r0, lsl #5
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r5, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ble label133
	add r8, r6, r0, lsl #5
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r5, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ble label133
	add r8, r6, r0, lsl #5
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r5, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ble label133
	add r8, r6, r0, lsl #5
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r5, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ble label133
	add r8, r6, r0, lsl #5
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r5, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ble label133
	add r8, r6, r0, lsl #5
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r5, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ble label133
	add r8, r6, r0, lsl #5
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r5, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ble label133
	b label130
label126:
	add r8, r6, r9, lsl #5
	mov r9, #1056964608
	vldr s2, [r8, #0]
	vmov s0, r9
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #32]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #64]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #96]
	add r8, r0, #4
	cmp r5, r8
	vmul.f32 s0, s2, s0
	vadd.f32 s1, s1, s0
	ble label544
	mov r9, r0
	mov r0, r8
	b label126
label544:
	vmov.f32 s0, s1
label130:
	add r8, r6, r0, lsl #5
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r5, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ble label133
	b label130
label107:
	add r0, r1, r2, lsl #2
	vldr s0, [r0, #0]
	mov r0, #1
	add r8, r6, r0, lsl #2
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r4, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ble label106
	add r8, r6, r0, lsl #2
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r4, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ble label106
	add r8, r6, r0, lsl #2
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r4, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ble label106
	add r8, r6, r0, lsl #2
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r4, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ble label106
	add r8, r6, r0, lsl #2
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r4, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ble label106
	add r8, r6, r0, lsl #2
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r4, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ble label106
	add r8, r6, r0, lsl #2
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r4, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ble label106
	add r8, r6, r0, lsl #2
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r4, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ble label106
	add r8, r6, r0, lsl #2
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r4, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ble label106
	add r8, r6, r0, lsl #2
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r4, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ble label106
	b label103
label106:
	add r0, r1, r2, lsl #2
	mov r8, #1
	vstr s0, [r0, #0]
	cmp r5, r8
	ble label122
	cmp r4, #1
	ble label111
	b label112
label103:
	add r8, r6, r0, lsl #2
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r4, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ble label106
	b label103
label87:
	add r8, r7, r6, lsl #5
	vldr s0, [r8, #0]
	bl putfloat
	cmp r4, #1
	ble label90
	mov r9, #1
label88:
	mov r0, #32
	bl putch
	add r0, r8, r9, lsl #2
	vldr s0, [r0, #0]
	bl putfloat
	add r9, r9, #1
	cmp r4, r9
	ble label90
	b label88
label90:
	mov r0, #10
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label91
	b label87
label595:
	add r0, r1, r2, lsl #2
	mov r9, #1
	vldr s1, [r0, #0]
	mov r0, #5
	b label99
label133:
	add r0, r1, r2, lsl #2
	vstr s0, [r0, #0]
	cmp r4, #1
	ble label359
	cmp r4, #5
	ble label107
	b label595
label99:
	add r8, r6, r9, lsl #2
	mov r9, #1056964608
	vldr s2, [r8, #0]
	vmov s0, r9
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #4]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #8]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #12]
	add r8, r0, #4
	cmp r4, r8
	vmul.f32 s0, s2, s0
	vadd.f32 s1, s1, s0
	ble label389
	mov r9, r0
	mov r0, r8
	b label99
label389:
	vmov.f32 s0, s1
	b label103
label78:
	add r8, r6, r7, lsl #5
	vldr s0, [r8, #0]
	bl putfloat
	cmp r4, #1
	ble label81
	mov r9, #1
label79:
	mov r0, #32
	bl putch
	add r0, r8, r9, lsl #2
	vldr s0, [r0, #0]
	bl putfloat
	add r9, r9, #1
	cmp r4, r9
	ble label81
	b label79
label81:
	mov r0, #10
	bl putch
	add r7, r7, #1
	cmp r5, r7
	ble label82
	b label78
label583:
	add r8, r7, r6, lsl #5
	mov r9, #0
	b label52
label50:
	add r6, r6, #1
	cmp r5, r6
	ble label54
	cmp r4, #0
	ble label50
	b label583
label52:
	bl getfloat
	add r0, r8, r9, lsl #2
	add r9, r9, #1
	vstr s0, [r0, #0]
	cmp r4, r9
	ble label50
	b label52