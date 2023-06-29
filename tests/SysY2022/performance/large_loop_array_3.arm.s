.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r5, r6, r7, r8, lr }
	vpush { s16 }
	sub sp, sp, #65536
	mov r6, sp
	add r7, sp, #32768
	bl getint
	mov r5, r0
	mov r0, #22
	bl _sysy_starttime
	mov r0, #0
	vmov s16, r0
	mov r1, #1065353216
	vmov s0, r1
	vmov s1, r0
	mov r1, r0
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label33
	mov r2, #10
	movw r3, #26215
	movt r3, #26214
	smmul r3, r0, r3
	asr r8, r3, #2
	add r3, r8, r3, lsr #31
	mls r2, r3, r2, r0
	cmp r2, #0
	beq label32
	mov r2, #1065353216
	vmov s0, r2
	mov r2, #0
	vmov s1, r2
	cmp r0, r5
	bge label14
	b label229
label33:
	mov r0, #39
	bl _sysy_stoptime
	movw r0, #19627
	movt r0, #23170
	vmov s0, r0
	vsub.f32 s0, s16, s0
	movw r0, #14269
	movt r0, #13702
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwls r0, #1
	movw r1, #14269
	movt r1, #46470
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r1, #0
	movwge r1, #1
	orr r0, r0, r1
	cmp r0, #0
	beq label207
	mov r0, #0
	bl putint
	mov r0, #0
	b label36
label207:
	mov r0, #1
	bl putint
	mov r0, #1
label36:
	add sp, sp, #65536
	vpop { s16 }
	pop { r5, r6, r7, r8, pc }
label229:
	vmov s2, r1
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	add r2, r7, r1, lsl #2
	vstr s3, [r2, #0]
	vadd.f32 s2, s0, s2
	add r2, r6, r1, lsl #2
	vstr s2, [r2, #0]
	add r1, r1, #1
	cmp r1, r5
	bge label14
	b label64
label14:
	cmp r5, #0
	ble label76
	mov r2, #0
	vmov s2, r2
	add r3, r2, #4
	cmp r3, r5
	bge label18
	b label29
label76:
	mov r2, #0
	vmov s2, r2
	vadd.f32 s16, s16, s2
	add r0, r0, #1
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label33
	mov r2, #10
	movw r3, #26215
	movt r3, #26214
	smmul r3, r0, r3
	asr r8, r3, #2
	add r3, r8, r3, lsr #31
	mls r2, r3, r2, r0
	cmp r2, #0
	beq label32
	mov r2, #1065353216
	vmov s0, r2
	mov r2, #0
	vmov s1, r2
	cmp r1, r5
	bge label14
	b label229
label249:
	add r3, r7, r2, lsl #2
	vldr s3, [r3, #0]
	add r3, r6, r2, lsl #2
	vldr s4, [r3, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r2, r2, #1
	cmp r2, r5
	bge label30
	b label249
label30:
	vadd.f32 s16, s16, s2
	add r0, r0, #1
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label33
	mov r2, #10
	movw r3, #26215
	movt r3, #26214
	smmul r3, r0, r3
	asr r8, r3, #2
	add r3, r8, r3, lsr #31
	mls r2, r3, r2, r0
	cmp r2, #0
	beq label32
	mov r2, #1065353216
	vmov s0, r2
	mov r2, #0
	vmov s1, r2
	cmp r1, r5
	bge label14
	b label229
label32:
	movw r2, #52429
	movt r2, #15820
	vmov s2, r2
	vadd.f32 s1, s1, s2
	movw r2, #52429
	movt r2, #15948
	vmov s2, r2
	vadd.f32 s0, s0, s2
	cmp r1, r5
	bge label14
label64:
	vmov s2, r1
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	add r2, r7, r1, lsl #2
	vstr s3, [r2, #0]
	vadd.f32 s2, s0, s2
	add r2, r6, r1, lsl #2
	vstr s2, [r2, #0]
	add r1, r1, #1
	cmp r1, r5
	bge label14
	b label64
label18:
	add r3, r2, #4
	cmp r3, r5
	bge label21
label28:
	add r8, r7, r2, lsl #2
	vldr s3, [r8, #0]
	add r2, r6, r2, lsl #2
	vldr s4, [r2, #0]
	vldr s5, [r8, #4]
	vldr s6, [r2, #4]
	vmul.f32 s5, s5, s6
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vadd.f32 s2, s2, s5
	vldr s3, [r8, #8]
	vldr s4, [r2, #8]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #12]
	vldr s4, [r2, #12]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	mov r2, r3
	add r3, r3, #4
	cmp r3, r5
	bge label21
	b label28
label21:
	add r3, r2, #4
	cmp r3, r5
	bge label24
	b label27
label24:
	add r3, r7, r2, lsl #2
	vldr s3, [r3, #0]
	add r3, r6, r2, lsl #2
	vldr s4, [r3, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r2, r2, #1
	cmp r2, r5
	bge label30
	add r3, r7, r2, lsl #2
	vldr s3, [r3, #0]
	add r3, r6, r2, lsl #2
	vldr s4, [r3, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r2, r2, #1
	cmp r2, r5
	bge label30
	add r3, r7, r2, lsl #2
	vldr s3, [r3, #0]
	add r3, r6, r2, lsl #2
	vldr s4, [r3, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r2, r2, #1
	cmp r2, r5
	bge label30
	add r3, r7, r2, lsl #2
	vldr s3, [r3, #0]
	add r3, r6, r2, lsl #2
	vldr s4, [r3, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r2, r2, #1
	cmp r2, r5
	bge label30
	add r3, r7, r2, lsl #2
	vldr s3, [r3, #0]
	add r3, r6, r2, lsl #2
	vldr s4, [r3, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r2, r2, #1
	cmp r2, r5
	bge label30
	add r3, r7, r2, lsl #2
	vldr s3, [r3, #0]
	add r3, r6, r2, lsl #2
	vldr s4, [r3, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r2, r2, #1
	cmp r2, r5
	bge label30
	add r3, r7, r2, lsl #2
	vldr s3, [r3, #0]
	add r3, r6, r2, lsl #2
	vldr s4, [r3, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r2, r2, #1
	cmp r2, r5
	bge label30
	add r3, r7, r2, lsl #2
	vldr s3, [r3, #0]
	add r3, r6, r2, lsl #2
	vldr s4, [r3, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r2, r2, #1
	cmp r2, r5
	bge label30
	add r3, r7, r2, lsl #2
	vldr s3, [r3, #0]
	add r3, r6, r2, lsl #2
	vldr s4, [r3, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r2, r2, #1
	cmp r2, r5
	bge label30
	add r3, r7, r2, lsl #2
	vldr s3, [r3, #0]
	add r3, r6, r2, lsl #2
	vldr s4, [r3, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	add r2, r2, #1
	cmp r2, r5
	bge label30
	b label249
label29:
	add r8, r7, r2, lsl #2
	vldr s3, [r8, #0]
	add r2, r6, r2, lsl #2
	vldr s4, [r2, #0]
	vldr s5, [r8, #4]
	vldr s6, [r2, #4]
	vmul.f32 s5, s5, s6
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vadd.f32 s2, s2, s5
	vldr s3, [r8, #8]
	vldr s4, [r2, #8]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #12]
	vldr s4, [r2, #12]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	mov r2, r3
	add r3, r3, #4
	cmp r3, r5
	bge label18
	b label29
label27:
	add r8, r7, r2, lsl #2
	vldr s3, [r8, #0]
	add r2, r6, r2, lsl #2
	vldr s4, [r2, #0]
	vldr s5, [r8, #4]
	vldr s6, [r2, #4]
	vmul.f32 s5, s5, s6
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vadd.f32 s2, s2, s5
	vldr s3, [r8, #8]
	vldr s4, [r2, #8]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #12]
	vldr s4, [r2, #12]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	mov r2, r3
	add r3, r3, #4
	cmp r3, r5
	bge label24
	b label27
