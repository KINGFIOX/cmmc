.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, lr }
	movw r12, #20672
	movt r12, #18
	sub sp, sp, r12
	movw r12, #13816
	movt r12, #12
	add r2, sp, r12
	str r2, [sp, #144]
	movw r12, #7016
	movt r12, #6
	add r2, sp, r12
	str r2, [sp, #128]
	add r1, sp, #216
	str r1, [sp, #136]
	mov r0, #62
	bl _sysy_starttime
	mov r0, #0
label2:
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	mov r2, #1065353216
	vmov s0, r2
	vstr s0, [r1, #0]
	vstr s0, [r1, #4]
	vstr s0, [r1, #8]
	vstr s0, [r1, #12]
	vstr s0, [r1, #16]
	vstr s0, [r1, #20]
	vstr s0, [r1, #24]
	vstr s0, [r1, #28]
	vstr s0, [r1, #32]
	vstr s0, [r1, #36]
	vstr s0, [r1, #40]
	vstr s0, [r1, #44]
	vstr s0, [r1, #48]
	vstr s0, [r1, #52]
	vstr s0, [r1, #56]
	vstr s0, [r1, #60]
	add r0, r0, #16
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label215
	b label2
label215:
	mov r0, #0
	str r0, [sp, #152]
	vmov s0, r0
	mov r3, r0
	str r0, [sp, #168]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label221
	b label10
label221:
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label985
	b label37
label985:
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	str r1, [sp, #160]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label1735
	b label64
label37:
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #15
	str r3, [sp, #12]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #14
	str r3, [sp, #16]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #13
	str r3, [sp, #20]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #12
	str r3, [sp, #24]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #11
	str r3, [sp, #148]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #10
	str r3, [sp, #156]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #9
	str r3, [sp, #164]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #8
	str r3, [sp, #172]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #7
	str r3, [sp, #180]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #6
	movw r12, #20640
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #5
	str r3, [sp, #28]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #4
	str r3, [sp, #32]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #3
	str r3, [sp, #36]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #2
	str r3, [sp, #40]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #1
	str r3, [sp, #68]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label38
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label1013
	b label59
label1013:
	mov r0, r1
	add r2, r1, #16
	str r2, [sp, #192]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label1018
	b label58
label1018:
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label1023
	b label50
label1023:
	mov r0, r1
	add r2, r1, #16
	movw r12, #20608
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label55
label54:
	add r4, r0, #1
	ldr r3, [sp, #68]
	add r1, r4, r3
	ldr r3, [sp, #68]
	add r2, r3, r0
	mul r1, r2, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r5, r0, #2
	add r1, r5, r1
	vmov s1, r1
	vcvt.f32.s32 s2, s1
	ldr r2, [sp, #144]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	vldr s3, [r1, #4]
	vdiv.f32 s2, s3, s2
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	ldr r3, [sp, #68]
	add r3, r0, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r2, r4, r2
	vmov s3, r2
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	ldr r3, [sp, #68]
	add r2, r5, r3
	ldr r3, [sp, #40]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #3
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #36]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #4
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #32]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #5
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #28]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #6
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	movw r12, #20640
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #7
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #180]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #8
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #172]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #9
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #164]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #10
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #156]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #11
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #148]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #12
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #24]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #13
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #20]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #14
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #16]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #15
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #12]
	add r0, r3, r0
	mul r0, r0, r2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	movw r12, #20608
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r2, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20608
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	mov r0, r2
	add r2, r2, #16
	movw r12, #20608
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label55
	b label54
label58:
	add r4, r0, #1
	ldr r3, [sp, #68]
	add r1, r4, r3
	ldr r3, [sp, #68]
	add r6, r0, r3
	mul r1, r6, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r5, r0, #2
	add r1, r5, r1
	vmov s1, r1
	vcvt.f32.s32 s2, s1
	ldr r2, [sp, #144]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	vldr s3, [r1, #4]
	vdiv.f32 s2, s3, s2
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	mul r2, r2, r6
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r2, r4, r2
	vmov s3, r2
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	ldr r3, [sp, #68]
	add r2, r5, r3
	ldr r3, [sp, #40]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #3
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #36]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #4
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #32]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #5
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #28]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #6
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	movw r12, #20640
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #7
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #180]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #8
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #172]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #9
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #164]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #10
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #156]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #11
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #148]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #12
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #24]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #13
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #20]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #14
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #16]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #15
	add r3, r2, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r2, r2, r3
	ldr r3, [sp, #12]
	add r0, r0, r3
	mul r0, r0, r2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r2, [sp, #192]
	add r0, r2, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #192]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #192]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label1018
	b label58
label59:
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r1
	ldr r3, [sp, #68]
	add r4, r1, r3
	mul r2, r2, r4
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r1, #1
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #144]
	add r2, r2, r1, lsl #2
	vldr s2, [r2, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #40]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #2
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #36]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #3
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #32]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #4
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #28]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #5
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20640
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #6
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #180]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #7
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #172]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #8
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #164]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #9
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #156]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #10
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #148]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #11
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #24]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #12
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #20]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #13
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #16]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #14
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #12]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r1, r1, #15
	add r1, r1, r3
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r0
	mul r1, r4, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r1, r0, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label1013
	b label59
label55:
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r0
	ldr r3, [sp, #68]
	add r2, r3, r0
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	add r1, r0, #1
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #144]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label38
	mov r0, r1
	b label55
label10:
	ldr r3, [sp, #168]
	add r2, r3, #15
	movw r12, #20648
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	ldr r3, [sp, #168]
	add r2, r3, #14
	str r2, [sp, #108]
	ldr r3, [sp, #168]
	add r2, r3, #13
	str r2, [sp, #104]
	ldr r3, [sp, #168]
	add r2, r3, #12
	str r2, [sp, #100]
	ldr r3, [sp, #168]
	add r2, r3, #11
	str r2, [sp, #96]
	ldr r3, [sp, #168]
	add r2, r3, #10
	str r2, [sp, #188]
	ldr r3, [sp, #168]
	add r2, r3, #9
	str r2, [sp, #196]
	ldr r3, [sp, #168]
	add r2, r3, #8
	str r2, [sp, #204]
	ldr r3, [sp, #168]
	add r2, r3, #7
	str r2, [sp, #212]
	ldr r3, [sp, #168]
	add r2, r3, #6
	movw r12, #7004
	movt r12, #6
	add r12, sp, r12
	str r2, [r12, #0]
	ldr r3, [sp, #168]
	add r2, r3, #5
	movw r12, #20652
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	ldr r3, [sp, #168]
	add r2, r3, #4
	movw r12, #13812
	movt r12, #12
	add r12, sp, r12
	str r2, [r12, #0]
	ldr r3, [sp, #168]
	add r2, r3, #3
	movw r12, #13804
	movt r12, #12
	add r12, sp, r12
	str r2, [r12, #0]
	ldr r3, [sp, #168]
	add r2, r3, #2
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	ldr r3, [sp, #168]
	add r2, r3, #1
	str r2, [sp, #176]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label11
	add r2, r0, #16
	movw r12, #7000
	movt r12, #6
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label18
	b label17
label1735:
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	str r1, [sp, #84]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label91
	b label134
label91:
	ldr r0, [sp, #152]
	add r0, r0, #1
	cmp r0, #1000
	bge label92
	str r0, [sp, #152]
	mov r0, #0
	vmov s0, r0
	mov r3, r0
	str r0, [sp, #168]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label221
	b label10
label92:
	mov r0, #76
	bl _sysy_stoptime
	mov r0, #0
	vmov s0, r0
	add r3, r0, #16
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	bge label96
	b label133
label134:
	ldr r3, [sp, #84]
	add r4, r3, #15
	str r4, [sp, #140]
	ldr r3, [sp, #84]
	add r3, r3, #14
	str r3, [sp, #132]
	ldr r3, [sp, #84]
	add r3, r3, #13
	str r3, [sp, #124]
	ldr r3, [sp, #84]
	add r4, r3, #12
	str r4, [sp, #120]
	ldr r3, [sp, #84]
	add r3, r3, #11
	str r3, [sp, #44]
	ldr r3, [sp, #84]
	add r3, r3, #10
	str r3, [sp, #48]
	ldr r3, [sp, #84]
	add r4, r3, #9
	str r4, [sp, #52]
	ldr r3, [sp, #84]
	add r3, r3, #8
	str r3, [sp, #56]
	ldr r3, [sp, #84]
	add r3, r3, #7
	str r3, [sp, #60]
	ldr r3, [sp, #84]
	add r4, r3, #6
	str r4, [sp, #116]
	ldr r3, [sp, #84]
	add r3, r3, #5
	str r3, [sp, #112]
	ldr r3, [sp, #84]
	add r4, r3, #4
	str r4, [sp, #0]
	ldr r3, [sp, #84]
	add r3, r3, #3
	str r3, [sp, #4]
	ldr r3, [sp, #84]
	add r4, r3, #2
	str r4, [sp, #8]
	ldr r3, [sp, #84]
	add r2, r3, #1
	str r2, [sp, #64]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label3107
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label3112
	b label153
label3107:
	mov r0, r1
	ldr r1, [sp, #136]
	ldr r3, [sp, #84]
	add r1, r1, r3, lsl #2
	vstr s0, [r1, #0]
	ldr r2, [sp, #64]
	mov r3, r2
	str r2, [sp, #84]
	mov r1, r0
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	bge label91
	b label134
label3112:
	mov r0, r1
	add r2, r1, #16
	movw r12, #13800
	movt r12, #12
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label142
label141:
	add r4, r0, #1
	ldr r2, [sp, #64]
	add r1, r4, r2
	ldr r2, [sp, #64]
	add r6, r0, r2
	mul r1, r6, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r5, r0, #2
	add r1, r5, r1
	vmov s1, r1
	vcvt.f32.s32 s2, s1
	ldr r2, [sp, #144]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	vldr s3, [r1, #4]
	vdiv.f32 s2, s3, s2
	ldr r3, [sp, #84]
	add r2, r3, r0
	mul r2, r2, r6
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r2, r4, r2
	vmov s3, r2
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	ldr r2, [sp, #64]
	add r2, r5, r2
	ldr r4, [sp, #8]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #3
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #4]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #4
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #0]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #5
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #112]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #6
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #116]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #7
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #60]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #8
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #56]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #9
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #52]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #10
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #48]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #11
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #44]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #12
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #120]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #13
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #124]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #14
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #132]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #15
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #140]
	add r0, r0, r4
	mul r0, r0, r2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	movw r12, #13800
	movt r12, #12
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r2, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #13800
	movt r12, #12
	add r12, sp, r12
	ldr r2, [r12, #0]
	mov r0, r2
	add r2, r2, #16
	movw r12, #13800
	movt r12, #12
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label142
	b label141
label142:
	add r2, r0, #16
	str r2, [sp, #208]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label145
	b label152
label149:
	ldr r3, [sp, #84]
	add r1, r3, r0
	ldr r2, [sp, #64]
	add r2, r2, r0
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	add r1, r0, #1
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #144]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label3494
	mov r0, r1
	b label149
label3494:
	mov r0, r1
	ldr r1, [sp, #136]
	ldr r3, [sp, #84]
	add r1, r1, r3, lsl #2
	vstr s0, [r1, #0]
	ldr r2, [sp, #64]
	mov r3, r2
	str r2, [sp, #84]
	mov r1, r0
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	bge label91
	b label134
label153:
	ldr r3, [sp, #84]
	add r4, r3, r1
	ldr r2, [sp, #64]
	add r3, r1, r2
	mul r2, r4, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r4, r1, #1
	add r2, r4, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #144]
	add r2, r2, r1, lsl #2
	vldr s2, [r2, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r4, [sp, #8]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #2
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #4]
	add r3, r1, r3
	mul r4, r4, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #3
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r4, [sp, #0]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #4
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #112]
	add r3, r1, r3
	mul r4, r4, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #5
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r4, [sp, #116]
	add r5, r1, r4
	mul r3, r3, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #6
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #60]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #7
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #56]
	add r3, r1, r3
	mul r4, r4, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #8
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r4, [sp, #52]
	add r5, r1, r4
	mul r3, r3, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #9
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #48]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #10
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #44]
	add r3, r1, r3
	mul r4, r4, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #11
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r4, [sp, #120]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #12
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #124]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #13
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #132]
	add r3, r1, r3
	mul r4, r5, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #14
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r4, [sp, #140]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r1, r1, #15
	add r1, r1, r3
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #84]
	add r1, r3, r0
	mul r1, r4, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r1, r0, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label3112
	b label153
label145:
	add r2, r0, #16
	movw r12, #20632
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label149
label148:
	add r4, r0, #1
	ldr r2, [sp, #64]
	add r1, r4, r2
	ldr r2, [sp, #64]
	add r2, r2, r0
	mul r1, r2, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r5, r0, #2
	add r1, r5, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #144]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vldr s3, [r1, #4]
	vdiv.f32 s1, s3, s1
	ldr r3, [sp, #84]
	add r3, r3, r0
	ldr r2, [sp, #64]
	add r2, r0, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r2, r4, r2
	vmov s3, r2
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r5, r2
	ldr r4, [sp, #8]
	add r3, r4, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #3
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #4]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #4
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #0]
	add r3, r4, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #5
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #112]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #6
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #116]
	add r3, r4, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #7
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #60]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #8
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #56]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #9
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #52]
	add r3, r4, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #10
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #48]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #11
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #44]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #12
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #120]
	add r3, r4, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #13
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #124]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #14
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #132]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #15
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #140]
	add r0, r4, r0
	mul r0, r0, r2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	movw r12, #20632
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r2, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20632
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	mov r0, r2
	add r2, r2, #16
	movw r12, #20632
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label149
	b label148
label17:
	add r1, r0, #1
	ldr r2, [sp, #176]
	add r1, r1, r2
	ldr r2, [sp, #176]
	add r4, r0, r2
	mul r1, r4, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r2, [sp, #176]
	add r1, r2, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	vldr s2, [r1, #0]
	vldr s3, [r1, #4]
	vdiv.f32 s1, s3, s1
	ldr r3, [sp, #168]
	add r2, r3, r0
	mul r2, r2, r4
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s3, r2
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	add r3, r0, #2
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #3
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #13804
	movt r12, #12
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #4
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #13812
	movt r12, #12
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #5
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #20652
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #6
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #7004
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #7
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #212]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #8
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #204]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #9
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #196]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #10
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #188]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #11
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #96]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #12
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #100]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #13
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #104]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #14
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #108]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #15
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #20648
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r0, r2
	mul r0, r0, r3
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r2, [sp, #176]
	add r0, r2, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7000
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	mov r0, r2
	add r2, r2, #16
	movw r12, #7000
	movt r12, #6
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label18
	b label17
label18:
	add r2, r0, #16
	str r2, [sp, #200]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label22
label21:
	add r1, r0, #1
	ldr r2, [sp, #176]
	add r1, r1, r2
	ldr r2, [sp, #176]
	add r4, r0, r2
	mul r1, r4, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r2, [sp, #176]
	add r1, r2, r1
	vmov s1, r1
	vcvt.f32.s32 s2, s1
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	vldr s3, [r1, #4]
	vdiv.f32 s2, s3, s2
	ldr r3, [sp, #168]
	add r2, r3, r0
	mul r2, r2, r4
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s3, r2
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	add r3, r0, #2
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #3
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #13804
	movt r12, #12
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #4
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #13812
	movt r12, #12
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #5
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #20652
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #6
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #7004
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #7
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #212]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #8
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #204]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #9
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #196]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #10
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #188]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #11
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #96]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #12
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #100]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #13
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #104]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #14
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #108]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #15
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #20648
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r0, r2
	mul r0, r0, r3
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r2, [sp, #176]
	add r0, r2, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #200]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #200]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label22
	b label21
label22:
	add r2, r0, #16
	movw r12, #7008
	movt r12, #6
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label26
	b label25
label26:
	add r2, r0, #16
	movw r12, #20616
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label30
	b label29
label30:
	ldr r3, [sp, #168]
	add r1, r3, r0
	ldr r2, [sp, #176]
	add r2, r2, r0
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r2, [sp, #176]
	add r1, r2, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	vldr s2, [r1, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label11
	b label30
label29:
	add r1, r0, #1
	ldr r2, [sp, #176]
	add r1, r1, r2
	ldr r2, [sp, #176]
	add r2, r2, r0
	mul r1, r2, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r2, [sp, #176]
	add r1, r2, r1
	vmov s1, r1
	vcvt.f32.s32 s2, s1
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	vldr s3, [r1, #4]
	vdiv.f32 s2, s3, s2
	ldr r3, [sp, #168]
	add r3, r3, r0
	ldr r2, [sp, #176]
	add r2, r0, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s3, r2
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	add r3, r0, #2
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r2, r0
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #3
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #13804
	movt r12, #12
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r2, r0
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #4
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #13812
	movt r12, #12
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r2, r0
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #5
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #20652
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r2, r0
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #6
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #7004
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r2, r0
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #7
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #212]
	add r2, r2, r0
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #8
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #204]
	add r2, r2, r0
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #9
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #196]
	add r2, r2, r0
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #10
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #188]
	add r2, r2, r0
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #11
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #96]
	add r2, r2, r0
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #12
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #100]
	add r2, r2, r0
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #13
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #104]
	add r2, r2, r0
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #14
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #108]
	add r2, r2, r0
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #15
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #20648
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r2, r0
	mul r0, r0, r3
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r2, [sp, #176]
	add r0, r2, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20616
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	mov r0, r2
	add r2, r2, #16
	movw r12, #20616
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label30
	b label29
label25:
	add r1, r0, #1
	ldr r2, [sp, #176]
	add r1, r1, r2
	ldr r2, [sp, #176]
	add r4, r0, r2
	mul r1, r4, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r2, [sp, #176]
	add r1, r2, r1
	vmov s1, r1
	vcvt.f32.s32 s2, s1
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	vldr s3, [r1, #4]
	vdiv.f32 s2, s3, s2
	ldr r3, [sp, #168]
	add r2, r3, r0
	mul r2, r2, r4
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s3, r2
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	add r3, r0, #2
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #3
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #13804
	movt r12, #12
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #4
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #13812
	movt r12, #12
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #5
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #20652
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #6
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #7004
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #7
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #212]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #8
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #204]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #9
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #196]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #10
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #188]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #11
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #96]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #12
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #100]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #13
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #104]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #14
	ldr r2, [sp, #176]
	add r3, r3, r2
	ldr r2, [sp, #108]
	add r2, r0, r2
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r2, r3
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r0, #15
	ldr r2, [sp, #176]
	add r3, r3, r2
	movw r12, #20648
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r0, r2
	mul r0, r0, r3
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r2, [sp, #176]
	add r0, r2, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7008
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	mov r0, r2
	add r2, r2, #16
	movw r12, #7008
	movt r12, #6
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label26
	b label25
label50:
	add r4, r1, #1
	ldr r3, [sp, #68]
	add r2, r4, r3
	ldr r3, [sp, #68]
	add r6, r1, r3
	mul r2, r6, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r5, r1, #2
	add r2, r5, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #144]
	add r2, r2, r1, lsl #2
	vldr s2, [r2, #0]
	vldr s3, [r2, #4]
	vdiv.f32 s1, s3, s1
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r1
	mul r3, r3, r6
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r3, r4, r3
	vmov s3, r3
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r4, r5, r3
	ldr r3, [sp, #40]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #3
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r4, r4, r3
	ldr r3, [sp, #36]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #4
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r4, r4, r3
	ldr r3, [sp, #32]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #5
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r4, r4, r3
	ldr r3, [sp, #28]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #6
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r4, r4, r3
	movw r12, #20640
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #7
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r4, r4, r3
	ldr r3, [sp, #180]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #8
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r4, r4, r3
	ldr r3, [sp, #172]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #9
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r4, r4, r3
	ldr r3, [sp, #164]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #10
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r4, r4, r3
	ldr r3, [sp, #156]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #11
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r4, r4, r3
	ldr r3, [sp, #148]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #12
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r4, r4, r3
	ldr r3, [sp, #24]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #13
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r4, r4, r3
	ldr r3, [sp, #20]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #14
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r4, r4, r3
	ldr r3, [sp, #16]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #15
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #68]
	add r4, r4, r3
	ldr r3, [sp, #12]
	add r1, r1, r3
	mul r1, r1, r4
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r1, r0, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label1023
	b label50
label64:
	ldr r3, [sp, #160]
	add r3, r3, #15
	str r3, [sp, #80]
	ldr r3, [sp, #160]
	add r3, r3, #14
	movw r12, #20604
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #160]
	add r3, r3, #13
	str r3, [sp, #92]
	ldr r3, [sp, #160]
	add r3, r3, #12
	movw r12, #20612
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #160]
	add r3, r3, #11
	movw r12, #20668
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #160]
	add r3, r3, #10
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #160]
	add r3, r3, #9
	movw r12, #7012
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #160]
	add r3, r3, #8
	movw r12, #20636
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #160]
	add r3, r3, #7
	str r3, [sp, #76]
	ldr r3, [sp, #160]
	add r3, r3, #6
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #160]
	add r3, r3, #5
	str r3, [sp, #72]
	ldr r3, [sp, #160]
	add r3, r3, #4
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #160]
	add r3, r3, #3
	movw r12, #20664
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #160]
	add r3, r3, #2
	str r3, [sp, #88]
	ldr r3, [sp, #160]
	add r3, r3, #1
	str r3, [sp, #184]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label84
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label1761
label68:
	add r2, r1, #1
	ldr r3, [sp, #184]
	add r2, r2, r3
	ldr r3, [sp, #184]
	add r4, r1, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #128]
	add r2, r2, r1, lsl #2
	vldr s2, [r2, #0]
	vldr s3, [r2, #4]
	vdiv.f32 s1, s3, s1
	ldr r3, [sp, #160]
	add r3, r3, r1
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #184]
	add r3, r3, r4
	vmov s3, r3
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	add r4, r1, #2
	ldr r3, [sp, #184]
	add r4, r4, r3
	ldr r3, [sp, #88]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #184]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #3
	ldr r3, [sp, #184]
	add r4, r4, r3
	movw r12, #20664
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #184]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #4
	ldr r3, [sp, #184]
	add r4, r4, r3
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #184]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #5
	ldr r3, [sp, #184]
	add r4, r4, r3
	ldr r3, [sp, #72]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #184]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #6
	ldr r3, [sp, #184]
	add r4, r4, r3
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #184]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #7
	ldr r3, [sp, #184]
	add r4, r4, r3
	ldr r3, [sp, #76]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #184]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #8
	ldr r3, [sp, #184]
	add r4, r4, r3
	movw r12, #20636
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #184]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #9
	ldr r3, [sp, #184]
	add r4, r4, r3
	movw r12, #7012
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #184]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #10
	ldr r3, [sp, #184]
	add r4, r4, r3
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #184]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #11
	ldr r3, [sp, #184]
	add r4, r4, r3
	movw r12, #20668
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #184]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #12
	ldr r3, [sp, #184]
	add r4, r4, r3
	movw r12, #20612
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #184]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #13
	ldr r3, [sp, #184]
	add r4, r4, r3
	ldr r3, [sp, #92]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #184]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #14
	ldr r3, [sp, #184]
	add r4, r4, r3
	movw r12, #20604
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #184]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #15
	ldr r3, [sp, #184]
	add r4, r4, r3
	ldr r3, [sp, #80]
	add r1, r1, r3
	mul r1, r1, r4
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r3, [sp, #184]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label1761
	b label68
label84:
	ldr r2, [sp, #144]
	ldr r3, [sp, #160]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	ldr r3, [sp, #184]
	str r3, [sp, #160]
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label1735
	b label64
label1761:
	mov r0, r1
	add r2, r1, #16
	movw r12, #13808
	movt r12, #12
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label72
	b label83
label72:
	add r2, r0, #16
	movw r12, #20600
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label75
label82:
	add r1, r0, #1
	ldr r3, [sp, #184]
	add r1, r1, r3
	ldr r3, [sp, #184]
	add r4, r0, r3
	mul r1, r4, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r3, [sp, #184]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s2, s1
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	vldr s3, [r1, #4]
	vdiv.f32 s2, s3, s2
	ldr r3, [sp, #160]
	add r2, r3, r0
	mul r2, r2, r4
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s3, r2
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	add r2, r0, #2
	ldr r3, [sp, #184]
	add r2, r2, r3
	ldr r3, [sp, #88]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #3
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20664
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #4
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #5
	ldr r3, [sp, #184]
	add r2, r2, r3
	ldr r3, [sp, #72]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #6
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #7
	ldr r3, [sp, #184]
	add r2, r2, r3
	ldr r3, [sp, #76]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #8
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20636
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #9
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #7012
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #10
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #11
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20668
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #12
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20612
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #13
	ldr r3, [sp, #184]
	add r2, r2, r3
	ldr r3, [sp, #92]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #14
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20604
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #15
	ldr r3, [sp, #184]
	add r2, r2, r3
	ldr r3, [sp, #80]
	add r0, r0, r3
	mul r0, r0, r2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r3, [sp, #184]
	add r0, r3, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20600
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	mov r0, r2
	add r2, r2, #16
	movw r12, #20600
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label75
	b label82
label75:
	add r2, r0, #16
	movw r12, #20624
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label78
	b label81
label78:
	ldr r3, [sp, #160]
	add r1, r3, r0
	ldr r3, [sp, #184]
	add r2, r3, r0
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r3, [sp, #184]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label1967
	b label78
label1967:
	mov r1, r0
	ldr r2, [sp, #144]
	ldr r3, [sp, #160]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	ldr r3, [sp, #184]
	str r3, [sp, #160]
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label1735
	b label64
label83:
	add r1, r0, #1
	ldr r3, [sp, #184]
	add r1, r1, r3
	ldr r3, [sp, #184]
	add r4, r0, r3
	mul r1, r4, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r3, [sp, #184]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s2, s1
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	vldr s3, [r1, #4]
	vdiv.f32 s2, s3, s2
	ldr r3, [sp, #160]
	add r2, r3, r0
	mul r2, r2, r4
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s3, r2
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	add r2, r0, #2
	ldr r3, [sp, #184]
	add r2, r2, r3
	ldr r3, [sp, #88]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #3
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20664
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #4
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #5
	ldr r3, [sp, #184]
	add r2, r2, r3
	ldr r3, [sp, #72]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #6
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #7
	ldr r3, [sp, #184]
	add r2, r2, r3
	ldr r3, [sp, #76]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #8
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20636
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #9
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #7012
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #10
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #11
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20668
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #12
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20612
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #13
	ldr r3, [sp, #184]
	add r2, r2, r3
	ldr r3, [sp, #92]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #14
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20604
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #15
	ldr r3, [sp, #184]
	add r2, r2, r3
	ldr r3, [sp, #80]
	add r0, r0, r3
	mul r0, r0, r2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r3, [sp, #184]
	add r0, r3, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #13808
	movt r12, #12
	add r12, sp, r12
	ldr r2, [r12, #0]
	mov r0, r2
	add r2, r2, #16
	movw r12, #13808
	movt r12, #12
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label72
	b label83
label81:
	add r1, r0, #1
	ldr r3, [sp, #184]
	add r1, r1, r3
	ldr r3, [sp, #184]
	add r2, r3, r0
	mul r1, r2, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r3, [sp, #184]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vldr s3, [r1, #4]
	vdiv.f32 s1, s3, s1
	ldr r3, [sp, #160]
	add r2, r3, r0
	ldr r3, [sp, #184]
	add r3, r0, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s3, r2
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	add r2, r0, #2
	ldr r3, [sp, #184]
	add r2, r2, r3
	ldr r3, [sp, #88]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #3
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20664
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #4
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #5
	ldr r3, [sp, #184]
	add r2, r2, r3
	ldr r3, [sp, #72]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #6
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #7
	ldr r3, [sp, #184]
	add r2, r2, r3
	ldr r3, [sp, #76]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #8
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20636
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #9
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #7012
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #10
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #11
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20668
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #12
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20612
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #13
	ldr r3, [sp, #184]
	add r2, r2, r3
	ldr r3, [sp, #92]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #14
	ldr r3, [sp, #184]
	add r2, r2, r3
	movw r12, #20604
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #184]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #15
	ldr r3, [sp, #184]
	add r2, r2, r3
	ldr r3, [sp, #80]
	add r0, r3, r0
	mul r0, r0, r2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r3, [sp, #184]
	add r0, r3, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20624
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	mov r0, r2
	add r2, r2, #16
	movw r12, #20624
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label78
	b label81
label152:
	add r4, r0, #1
	ldr r2, [sp, #64]
	add r1, r4, r2
	ldr r2, [sp, #64]
	add r6, r0, r2
	mul r1, r6, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r5, r0, #2
	add r1, r5, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #144]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vldr s3, [r1, #4]
	vdiv.f32 s1, s3, s1
	ldr r3, [sp, #84]
	add r2, r3, r0
	mul r2, r2, r6
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r2, r4, r2
	vmov s3, r2
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r5, r2
	ldr r4, [sp, #8]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #3
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #4]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #4
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #0]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #5
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #112]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #6
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #116]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #7
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #60]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #8
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #56]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #9
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #52]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #10
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #48]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #11
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #44]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #12
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #120]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #13
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #124]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #14
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #132]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #15
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #140]
	add r0, r0, r4
	mul r0, r0, r2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r2, [sp, #208]
	add r0, r2, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #208]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #208]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label145
	b label152
label11:
	ldr r2, [sp, #144]
	ldr r3, [sp, #168]
	add r1, r2, r3, lsl #2
	vstr s0, [r1, #0]
	ldr r2, [sp, #176]
	mov r3, r2
	str r2, [sp, #168]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label221
	b label10
label38:
	ldr r2, [sp, #128]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	ldr r3, [sp, #68]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label985
	b label37
label96:
	add r3, r0, #16
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	bge label100
	b label99
label100:
	add r3, r0, #16
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	bge label103
	b label132
label103:
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s1, s0, s1
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label2632
	vmov.f32 s0, s1
	b label103
label2632:
	mov r0, #0
	vmov s0, r0
	add r1, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label110
label109:
	ldr r2, [sp, #128]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #12]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #16]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #20]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #24]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #28]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #32]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #36]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #40]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #44]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #48]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #52]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #56]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #60]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	mov r0, r1
	add r1, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label110
	b label109
label110:
	add r1, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label114
	b label113
label114:
	add r1, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label118
	b label117
label118:
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label121
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label121
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label121
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label121
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label121
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label121
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label121
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label121
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label121
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label121
label4545:
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label121
	b label4545
label121:
	vdiv.f32 s1, s1, s0
	mov r0, #1065353216
	vmov s0, r0
	vdiv.f32 s2, s1, s0
	vsub.f32 s3, s0, s2
	movw r0, #14269
	movt r0, #13702
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	bgt label2867
	movw r0, #14269
	movt r0, #46470
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwmi r0, #1
	cmp r0, #0
	beq label128
	b label2872
label2867:
	mov r0, #1
	cmp r0, #0
	beq label128
	vadd.f32 s0, s0, s2
	mov r0, #1056964608
	vmov s2, r0
	vmul.f32 s0, s0, s2
	vdiv.f32 s2, s1, s0
	vsub.f32 s3, s0, s2
	movw r0, #14269
	movt r0, #13702
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	bgt label2867
	movw r0, #14269
	movt r0, #46470
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwmi r0, #1
	cmp r0, #0
	beq label128
	b label2872
label128:
	mov r0, #1065353216
	vmov s1, r0
	vsub.f32 s0, s0, s1
	movw r0, #14269
	movt r0, #13702
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bls label2888
	b label4507
label2872:
	vadd.f32 s0, s0, s2
	mov r0, #1056964608
	vmov s2, r0
	vmul.f32 s0, s0, s2
	vdiv.f32 s2, s1, s0
	vsub.f32 s3, s0, s2
	movw r0, #14269
	movt r0, #13702
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	bgt label2867
	movw r0, #14269
	movt r0, #46470
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwmi r0, #1
	cmp r0, #0
	beq label128
	b label2872
label117:
	ldr r2, [sp, #128]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #12]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #16]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #20]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #24]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #28]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #32]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #36]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #40]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #44]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #48]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #52]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #56]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #60]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	mov r0, r1
	add r1, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label118
	b label117
label113:
	ldr r2, [sp, #128]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #12]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #16]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #20]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #24]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #28]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #32]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #36]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #40]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #44]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #48]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #52]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #56]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #60]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	mov r0, r1
	add r1, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label114
	b label113
label132:
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r2, [sp, #128]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vldr s3, [r1, #4]
	vldr s4, [r0, #4]
	vmul.f32 s3, s3, s4
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s3
	vldr s1, [r1, #8]
	vldr s2, [r0, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	vldr s2, [r0, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	vldr s2, [r0, #16]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	vldr s2, [r0, #20]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	vldr s2, [r0, #24]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	vldr s2, [r0, #28]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	vldr s2, [r0, #32]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	vldr s2, [r0, #36]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	vldr s2, [r0, #40]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	vldr s2, [r0, #44]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	vldr s2, [r0, #48]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	vldr s2, [r0, #52]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	vldr s2, [r0, #56]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	vldr s2, [r0, #60]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r0, r3
	add r3, r3, #16
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	bge label103
	b label132
label99:
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r2, [sp, #128]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vldr s3, [r1, #4]
	vldr s4, [r0, #4]
	vmul.f32 s3, s3, s4
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s3
	vldr s1, [r1, #8]
	vldr s2, [r0, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	vldr s2, [r0, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	vldr s2, [r0, #16]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	vldr s2, [r0, #20]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	vldr s2, [r0, #24]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	vldr s2, [r0, #28]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	vldr s2, [r0, #32]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	vldr s2, [r0, #36]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	vldr s2, [r0, #40]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	vldr s2, [r0, #44]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	vldr s2, [r0, #48]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	vldr s2, [r0, #52]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	vldr s2, [r0, #56]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	vldr s2, [r0, #60]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r0, r3
	add r3, r3, #16
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	bge label100
	b label99
label133:
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r2, [sp, #128]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vldr s3, [r1, #4]
	vldr s4, [r0, #4]
	vmul.f32 s3, s3, s4
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s3
	vldr s1, [r1, #8]
	vldr s2, [r0, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	vldr s2, [r0, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	vldr s2, [r0, #16]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	vldr s2, [r0, #20]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	vldr s2, [r0, #24]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	vldr s2, [r0, #28]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	vldr s2, [r0, #32]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	vldr s2, [r0, #36]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	vldr s2, [r0, #40]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	vldr s2, [r0, #44]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	vldr s2, [r0, #48]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	vldr s2, [r0, #52]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	vldr s2, [r0, #56]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	vldr s2, [r0, #60]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r0, r3
	add r3, r3, #16
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	bge label96
	b label133
label2888:
	movw r0, #14269
	movt r0, #46470
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwge r0, #1
label129:
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	movw r12, #20672
	movt r12, #18
	add sp, sp, r12
	pop { r4, r5, r6, pc }
label4507:
	mov r0, #0
	b label129
