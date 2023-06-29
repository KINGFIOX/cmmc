.arch armv7ve
.data
.bss
.align 4
a:
	.zero	4000000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, lr }
	vpush { s16 }
	sub sp, sp, #8000
	mov r5, sp
	add r6, sp, #4000
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	mov r7, #0
	cmp r7, #1000
	bge label8
	mov r0, #4000
	mla r0, r7, r0, r4
	bl getfarray
	cmp r0, #1000
	beq label5
	b label6
label8:
	mov r0, #42
	bl _sysy_starttime
	mov r0, #0
	vmov s0, r0
	cmp r0, #100
	bge label74
	mov r1, #0
	cmp r1, #1000
	bge label115
	b label342
label74:
	mov r0, #0
	vmov.f32 s16, s0
	cmp r0, #1000
	bge label15
	b label77
label115:
	mov r1, #0
	cmp r1, #1000
	bge label159
	b label39
label159:
	vmov.f32 s2, s0
	mov r1, #0
	cmp r1, #1000
	bge label33
label34:
	add r2, r6, r1, lsl #2
	vldr s0, [r2, #0]
	add r2, r5, r1, lsl #2
	vldr s1, [r2, #0]
	mov r2, #4000
	mla r3, r1, r2, r4
	mov r2, #0
	b label35
label39:
	add r2, r6, r1, lsl #2
	vldr s1, [r2, #0]
	mov r2, #4000
	mla r3, r1, r2, r4
	mov r2, #0
	vmov s2, r2
	b label40
label44:
	vmul.f32 s5, s1, s1
	vsub.f32 s6, s5, s4
	vcmp.f32 s6, #0
	vmrs APSR_nzcv, FPSCR
	vneg.f32 s7, s6
	vmovmi.f32 s6, s7
	movw r2, #4719
	movt r2, #14979
	vmov s7, r2
	vcmp.f32 s6, s7
	vmrs APSR_nzcv, FPSCR
	bgt label48
	add r2, r5, r1, lsl #2
	vstr s1, [r2, #0]
	add r1, r1, #1
	cmp r1, #1000
	bge label159
	b label39
label48:
	vcmp.f32 s5, s4
	vmrs APSR_nzcv, FPSCR
	bgt label49
	b label50
label49:
	vadd.f32 s3, s1, s2
	mov r2, #1056964608
	vmov s5, r2
	vmul.f32 s5, s3, s5
	vmov.f32 s3, s1
	vmov.f32 s1, s5
	b label44
label50:
	vadd.f32 s2, s1, s3
	mov r2, #1056964608
	vmov s5, r2
	vmul.f32 s5, s2, s5
	vmov.f32 s2, s1
	vmov.f32 s1, s5
	b label44
label40:
	add r7, r3, r2, lsl #2
	vldr s3, [r7, #0]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #4]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #8]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #12]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #16]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #20]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #24]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #28]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	add r2, r2, #8
	cmp r2, #1000
	bge label43
	b label40
label43:
	movw r2, #0
	movt r2, #17530
	vmov s1, r2
	vdiv.f32 s1, s2, s1
	movw r2, #55050
	movt r2, #15395
	vmov s2, r2
	vadd.f32 s4, s1, s2
	mov r2, #1056964608
	vmov s1, r2
	vmul.f32 s1, s4, s1
	mov r2, #0
	vmov s2, r2
	vmov.f32 s3, s4
	b label44
label35:
	add r7, r3, r2, lsl #2
	vldr s3, [r7, #0]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vstr s3, [r7, #0]
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #4]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vadd.f32 s2, s2, s3
	vstr s3, [r7, #4]
	vldr s3, [r7, #8]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vadd.f32 s2, s2, s3
	vstr s3, [r7, #8]
	vldr s3, [r7, #12]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vadd.f32 s2, s2, s3
	vstr s3, [r7, #12]
	vldr s3, [r7, #16]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vadd.f32 s2, s2, s3
	vstr s3, [r7, #16]
	vldr s3, [r7, #20]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vadd.f32 s2, s2, s3
	vstr s3, [r7, #20]
	vldr s3, [r7, #24]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vadd.f32 s2, s2, s3
	vstr s3, [r7, #24]
	vldr s3, [r7, #28]
	vsub.f32 s3, s3, s0
	vdiv.f32 s3, s3, s1
	vadd.f32 s2, s2, s3
	vstr s3, [r7, #28]
	add r2, r2, #8
	cmp r2, #1000
	bge label38
	b label35
label38:
	add r1, r1, #1
	cmp r1, #1000
	bge label33
	b label34
label342:
	mov r2, #4000
	mla r3, r1, r2, r4
	mov r2, #0
	vmov s1, r2
	b label24
label33:
	add r0, r0, #1
	vmov.f32 s0, s2
	cmp r0, #100
	bge label74
	mov r1, #0
	cmp r1, #1000
	bge label115
	b label342
label24:
	add r7, r3, r2, lsl #2
	vldr s2, [r7, #0]
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #4]
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #8]
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #12]
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #16]
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #20]
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #24]
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #28]
	vadd.f32 s1, s1, s2
	add r2, r2, #8
	cmp r2, #1000
	bge label27
	b label24
label27:
	movw r2, #0
	movt r2, #17530
	vmov s2, r2
	vdiv.f32 s1, s1, s2
	add r2, r6, r1, lsl #2
	vstr s1, [r2, #0]
	add r1, r1, #1
	cmp r1, #1000
	bge label115
	b label342
label77:
	mov r1, #4000
	mla r2, r0, r1, r4
	mov r1, #0
	b label17
label20:
	add r0, r0, #1
	cmp r0, #1000
	bge label15
	b label77
label17:
	add r3, r2, r1, lsl #2
	vldr s0, [r3, #0]
	vadd.f32 s0, s16, s0
	vldr s1, [r3, #4]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #8]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #12]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #16]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #20]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #24]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #28]
	vadd.f32 s16, s0, s1
	add r1, r1, #8
	cmp r1, #1000
	bge label20
	b label17
label5:
	add r7, r7, #1
	cmp r7, #1000
	bge label8
	mov r0, #4000
	mla r0, r7, r0, r4
	bl getfarray
	cmp r0, #1000
	beq label5
label6:
	add sp, sp, #8000
	vpop { s16 }
	pop { r4, r5, r6, r7, pc }
label15:
	mov r0, #95
	bl _sysy_stoptime
	vmov.f32 s0, s16
	bl putfloat
	mov r0, #0
	b label6
