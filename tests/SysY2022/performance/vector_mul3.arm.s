.arch armv7ve
.data
.bss
.align 4
Vectortm:
	.zero	400000
.align 4
vectorB:
	.zero	400000
.align 4
vectorA:
	.zero	400000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	mov r0, #62
	bl _sysy_starttime
	movw r8, #:lower16:vectorA
	movt r8, #:upper16:vectorA
	str r8, [sp, #4]
	movw r8, #:lower16:vectorB
	movt r8, #:upper16:vectorB
	str r8, [sp, #0]
	movw r0, #:lower16:Vectortm
	movt r0, #:upper16:Vectortm
	mov r1, #0
label2:
	ldr r8, [sp, #4]
	add r2, r8, r1, lsl #2
	mov r3, #1065353216
	vmov s0, r3
	vstr s0, [r2, #0]
	vstr s0, [r2, #4]
	vstr s0, [r2, #8]
	vstr s0, [r2, #12]
	vstr s0, [r2, #16]
	vstr s0, [r2, #20]
	vstr s0, [r2, #24]
	vstr s0, [r2, #28]
	vstr s0, [r2, #32]
	vstr s0, [r2, #36]
	vstr s0, [r2, #40]
	vstr s0, [r2, #44]
	vstr s0, [r2, #48]
	vstr s0, [r2, #52]
	vstr s0, [r2, #56]
	vstr s0, [r2, #60]
	add r1, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label210
	b label2
label210:
	mov r1, #0
label4:
	mov r7, #0
	vmov s0, r7
	mov r3, r7
label6:
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label216
	b label10
label216:
	mov r7, #0
	vmov s0, r7
	mov r3, r7
	b label33
label10:
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label225
	b label11
label225:
	add r3, r0, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	b label6
label11:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label15
	add r8, r3, r7
	add r9, r2, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r2, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	ldr r8, [sp, #4]
	add r8, r8, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r7, #1
	add r10, r2, r10
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r2, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #2
	add r9, r2, r9
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r2, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #3
	add r9, r2, r9
	add r7, r4, r7
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r2, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	b label11
label33:
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label440
	b label129
label440:
	mov r7, #0
	vmov s0, r7
	mov r3, r7
label37:
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label446
	b label106
label446:
	mov r7, #0
	vmov s0, r7
	mov r3, r7
label41:
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label45
	b label83
label45:
	add r1, r1, #1
	cmp r1, #1000
	bge label46
	b label4
label46:
	mov r0, #76
	bl _sysy_stoptime
	mov r1, #0
	vmov s0, r1
	b label47
label83:
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label84
label87:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label91
	add r8, r3, r7
	add r9, r2, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r10, r7, #1
	add r8, r8, r10
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	add r8, r0, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r11, r7, #2
	add r9, r9, r11
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r4, r7
	mul r10, r10, r9
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r7, r7, #3
	add r7, r10, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r7, r3, r6
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r6, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	b label87
label106:
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label107
label110:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label114
	add r8, r3, r7
	add r9, r2, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r2, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	ldr r8, [sp, #0]
	add r8, r8, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r7, #1
	add r10, r2, r10
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r2, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #2
	add r9, r2, r9
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r2, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #3
	add r9, r2, r9
	add r7, r4, r7
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r2, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	b label110
label129:
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label130
label133:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label137
	add r8, r3, r7
	add r9, r2, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r10, r7, #1
	add r8, r8, r10
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	add r8, r0, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r11, r7, #2
	add r9, r9, r11
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r4, r7
	mul r10, r10, r9
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r7, r7, #3
	add r7, r10, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r7, r3, r6
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r6, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	b label133
label15:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label19
	add r8, r3, r7
	add r9, r2, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r2, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	ldr r8, [sp, #4]
	add r8, r8, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r7, #1
	add r10, r2, r10
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r2, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #2
	add r9, r2, r9
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r2, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #3
	add r9, r2, r9
	add r7, r4, r7
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r2, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	b label15
label137:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label140
	add r8, r3, r7
	add r9, r2, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r10, r7, #1
	add r8, r8, r10
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	add r8, r0, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r2, r10
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r7, #2
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r2, r9
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r7, #3
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r2, r9
	add r7, r4, r7
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r6, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	b label137
label140:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label1187
	b label150
label1187:
	mov r6, r7
label143:
	add r7, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r7, r8
	bge label146
	add r8, r3, r6
	add r9, r2, r6
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r9, r6, #1
	add r8, r8, r9
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	add r8, r0, r6, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r2, r9
	add r10, r2, r6
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r6, #2
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r2, r9
	add r10, r5, r6
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r6, #3
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r2, r9
	add r6, r4, r6
	mul r6, r9, r6
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r7, r6
	vmov s1, r6
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r6, r7
	b label143
label150:
	add r8, r3, r7
	add r9, r2, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r10, r7, #1
	add r8, r8, r10
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	add r8, r0, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r2, r10
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r7, #2
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r2, r9
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r7, #3
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r2, r9
	add r7, r4, r7
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r6, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	b label140
label146:
	add r4, r3, r6
	add r5, r2, r6
	mul r4, r4, r5
	add r4, r4, r4, lsr #31
	asr r5, r4, #1
	add r4, r6, #1
	add r5, r5, r4
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	add r5, r0, r6, lsl #2
	vldr s2, [r5, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	bge label1208
	mov r6, r4
	b label146
label1208:
	mov r7, r4
	ldr r8, [sp, #0]
	add r3, r8, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	b label33
label19:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label326
	b label29
label326:
	mov r6, r7
label22:
	add r7, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r7, r8
	bge label331
	b label25
label331:
	mov r4, r6
	b label26
label25:
	add r8, r3, r6
	add r9, r2, r6
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r2, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	ldr r8, [sp, #4]
	add r8, r8, r6, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r6, #1
	add r9, r2, r9
	add r10, r2, r6
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r2, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r6, #2
	add r9, r2, r9
	add r10, r5, r6
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r2, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r6, #3
	add r9, r2, r9
	add r6, r4, r6
	mul r6, r9, r6
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r2, r6
	vmov s1, r6
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r6, r7
	b label22
label29:
	add r8, r3, r7
	add r9, r2, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r2, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	ldr r8, [sp, #4]
	add r8, r8, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r7, #1
	add r10, r2, r10
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r2, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #2
	add r9, r2, r9
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r2, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #3
	add r9, r2, r9
	add r7, r4, r7
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r2, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	b label19
label26:
	add r5, r3, r4
	add r6, r2, r4
	mul r5, r5, r6
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r2, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	ldr r8, [sp, #4]
	add r5, r8, r4, lsl #2
	vldr s2, [r5, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r4, #1
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	bge label391
	b label26
label391:
	mov r7, r4
	add r3, r0, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	b label6
label114:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label117
	add r8, r3, r7
	add r9, r2, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r2, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	ldr r8, [sp, #0]
	add r8, r8, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r7, #1
	add r10, r2, r10
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r2, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #2
	add r9, r2, r9
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r2, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #3
	add r9, r2, r9
	add r7, r4, r7
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r2, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	b label114
label117:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label971
	b label120
label971:
	mov r6, r7
	b label121
label120:
	add r8, r3, r7
	add r9, r2, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r2, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	ldr r8, [sp, #0]
	add r8, r8, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r7, #1
	add r10, r2, r10
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r2, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #2
	add r9, r2, r9
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r2, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #3
	add r9, r2, r9
	add r7, r4, r7
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r2, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	b label117
label121:
	add r7, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r7, r8
	bge label1019
	b label127
label1019:
	mov r4, r6
	b label124
label127:
	add r8, r3, r6
	add r9, r2, r6
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r2, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	ldr r8, [sp, #0]
	add r8, r8, r6, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r6, #1
	add r9, r2, r9
	add r10, r2, r6
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r2, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r6, #2
	add r9, r2, r9
	add r10, r5, r6
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r2, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r6, #3
	add r9, r2, r9
	add r6, r4, r6
	mul r6, r9, r6
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r2, r6
	vmov s1, r6
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r6, r7
	b label121
label124:
	add r5, r3, r4
	add r6, r2, r4
	mul r5, r5, r6
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r2, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	ldr r8, [sp, #0]
	add r5, r8, r4, lsl #2
	vldr s2, [r5, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r4, #1
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	bge label1035
	b label124
label1035:
	mov r7, r4
	add r3, r0, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	b label37
label91:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label95
	add r8, r3, r7
	add r9, r2, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r10, r7, #1
	add r8, r8, r10
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	add r8, r0, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r2, r10
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r7, #2
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r2, r9
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r7, #3
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r2, r9
	add r7, r4, r7
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r6, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	b label91
label95:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label796
	b label98
label796:
	mov r6, r7
	b label99
label98:
	add r8, r3, r7
	add r9, r2, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r10, r7, #1
	add r8, r8, r10
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	add r8, r0, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r2, r10
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r7, #2
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r2, r9
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r7, #3
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r2, r9
	add r7, r4, r7
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r6, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	b label95
label99:
	add r7, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r7, r8
	bge label102
	add r8, r3, r6
	add r9, r2, r6
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r9, r6, #1
	add r8, r8, r9
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	add r8, r0, r6, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r2, r9
	add r10, r2, r6
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r6, #2
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r2, r9
	add r10, r5, r6
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r6, #3
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r2, r9
	add r6, r4, r6
	mul r6, r9, r6
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r7, r6
	vmov s1, r6
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r6, r7
	b label99
label102:
	add r4, r3, r6
	add r5, r2, r6
	mul r4, r4, r5
	add r4, r4, r4, lsr #31
	asr r5, r4, #1
	add r4, r6, #1
	add r5, r5, r4
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	add r5, r0, r6, lsl #2
	vldr s2, [r5, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	bge label860
	mov r6, r4
	b label102
label860:
	mov r7, r4
	ldr r8, [sp, #4]
	add r3, r8, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	b label41
label130:
	ldr r8, [sp, #0]
	add r3, r8, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	b label33
label107:
	add r3, r0, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	b label37
label84:
	ldr r8, [sp, #4]
	add r3, r8, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	b label41
label47:
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label50
	ldr r8, [sp, #4]
	add r2, r8, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r8, [sp, #0]
	add r1, r8, r1, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #4]
	vldr s2, [r1, #4]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #8]
	vldr s2, [r1, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #12]
	vldr s2, [r1, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r1, r0
	b label47
label50:
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label54
	ldr r8, [sp, #4]
	add r2, r8, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r8, [sp, #0]
	add r1, r8, r1, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #4]
	vldr s2, [r1, #4]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #8]
	vldr s2, [r1, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #12]
	vldr s2, [r1, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r1, r0
	b label50
label54:
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label500
	b label81
label500:
	mov r0, r1
label57:
	ldr r8, [sp, #4]
	add r1, r8, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r8, [sp, #0]
	add r1, r8, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label513
	b label57
label513:
	mov r1, #0
	vmov s1, r1
label60:
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label64
	ldr r8, [sp, #0]
	add r1, r8, r1, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #12]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	mov r1, r0
	b label60
label81:
	ldr r8, [sp, #4]
	add r2, r8, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r8, [sp, #0]
	add r1, r8, r1, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #4]
	vldr s2, [r1, #4]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #8]
	vldr s2, [r1, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #12]
	vldr s2, [r1, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r1, r0
	b label54
label64:
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label542
	b label80
label542:
	mov r0, r1
label67:
	add r1, r0, #4
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label71
	ldr r8, [sp, #0]
	add r0, r8, r0, lsl #2
	vldr s2, [r0, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #12]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	mov r0, r1
	b label67
label80:
	ldr r8, [sp, #0]
	add r1, r8, r1, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #12]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	mov r1, r0
	b label64
label71:
	ldr r8, [sp, #0]
	add r1, r8, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label74
	b label71
label74:
	vdiv.f32 s0, s0, s1
	mov r0, #1065353216
	vmov s1, r0
	vsub.f32 s1, s1, s0
	movw r0, #14269
	movt r0, #13702
	vmov s2, r0
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwgt r0, #1
	movw r1, #14269
	movt r1, #46470
	vmov s2, r1
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	mov r1, #0
	movwmi r1, #1
	orrs r0, r0, r1
	beq label588
	mov r0, #1065353216
	vmov s1, r0
	vmov.f32 s2, s0
	b label75
label588:
	mov r0, #1065353216
	vmov s1, r0
label78:
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s0, s1, s0
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
	and r0, r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label75:
	vadd.f32 s1, s1, s2
	mov r0, #1056964608
	vmov s2, r0
	vmul.f32 s1, s1, s2
	vdiv.f32 s2, s0, s1
	vsub.f32 s3, s1, s2
	movw r0, #14269
	movt r0, #13702
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwgt r0, #1
	movw r1, #14269
	movt r1, #46470
	vmov s4, r1
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	mov r1, #0
	movwmi r1, #1
	orrs r0, r0, r1
	beq label78
	b label75
