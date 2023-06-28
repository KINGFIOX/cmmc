.arch armv7ve
.data
.section .rodata
.bss
.align 4
imgIn:
	.zero	552960
.align 4
imgOut:
	.zero	552960
.align 4
my_y1:
	.zero	552960
.align 4
my_y2:
	.zero	552960
.text
.syntax unified
.arm
.fpu vfpv4
newPow:
	push { lr }
	vpush { s16 }
	vmov.f32 s16, s0
	cmp r1, #0
	bge label5
	rsb r1, r1, #0
	bl newPow
	mov r0, #1065353216
	vmov s1, r0
	vdiv.f32 s0, s1, s0
	b label3
label29:
	mov r0, #1065353216
	vmov s0, r0
label3:
	vpop { s16 }
	pop { pc }
label5:
	cmp r1, #0
	bne label22
	b label29
label22:
	sub r1, r1, #1
	vmov.f32 s0, s16
	bl newPow
	vmul.f32 s0, s16, s0
	b label3
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	movw r0, #:lower16:imgIn
	movt r0, #:upper16:imgIn
	mov r4, r0
	bl getfarray
	mov r0, #156
	bl _sysy_starttime
	mov r0, #1073741824
	vmov s0, r0
	mov r1, #0
	bl newPow
	movw r5, #:lower16:imgOut
	movt r5, #:upper16:imgOut
	str r5, [sp, #0]
	movw r0, #:lower16:my_y1
	movt r0, #:upper16:my_y1
	movw r1, #:lower16:my_y2
	movt r1, #:upper16:my_y2
	mov r2, #0
	cmp r2, #512
	bge label191
	b label190
label191:
	mov r2, #0
	cmp r2, #512
	bge label1019
	movw r3, #1080
	mla r5, r2, r3, r4
	mla r6, r2, r3, r1
	mov r3, #0
	vmov s1, r3
	vmov s2, r3
	vmov s4, r3
	vmov s3, r3
	movw r3, #269
	sub r7, r3, #16
	cmn r7, #1
	ble label155
	b label176
label1019:
	mov r3, #0
	cmp r3, #512
	bge label1023
	movw r2, #1080
	mla r6, r3, r2, r1
	mla r7, r3, r2, r0
	ldr r5, [sp, #0]
	mla r5, r3, r2, r5
	mov r2, #0
	add r4, r2, #16
	movw r8, #270
	cmp r4, r8
	bge label67
	b label66
label1023:
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	bge label1360
	mov r3, #0
	vmov s1, r3
	vmov s3, r3
	vmov s2, r3
	add r4, r3, #16
	cmp r4, #512
	bge label130
	b label129
label130:
	add r4, r3, #16
	cmp r4, #512
	bge label135
	b label147
label140:
	movw r4, #1080
	ldr r5, [sp, #0]
	mla r5, r3, r4, r5
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	movw r5, #61929
	movt r5, #48705
	vmov s5, r5
	vmul.f32 s5, s5, s4
	movw r5, #35322
	movt r5, #15842
	vmov s6, r5
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r5, #12860
	movt r5, #48923
	vmov s5, r5
	vmul.f32 s2, s5, s2
	vadd.f32 s5, s3, s2
	mla r4, r3, r4, r0
	add r4, r4, r2, lsl #2
	vstr s5, [r4, #0]
	add r3, r3, #1
	cmp r3, #512
	bge label145
	vmov.f32 s3, s4
	vmov.f32 s2, s1
	vmov.f32 s1, s5
	b label140
label145:
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	bge label1360
	mov r3, #0
	vmov s1, r3
	vmov s3, r3
	vmov s2, r3
	add r4, r3, #16
	cmp r4, #512
	bge label130
	b label129
label190:
	movw r3, #1080
	mla r5, r2, r3, r4
	mla r6, r2, r3, r0
	mov r3, #0
	vmov s1, r3
	vmov s3, r3
	vmov s2, r3
	add r7, r3, #16
	movw r8, #270
	cmp r7, r8
	bge label40
	b label58
label51:
	add r7, r5, r3, lsl #2
	vldr s4, [r7, #0]
	movw r7, #61929
	movt r7, #48705
	vmov s5, r7
	vmul.f32 s5, s5, s4
	movw r7, #35322
	movt r7, #15842
	vmov s6, r7
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r7, #12860
	movt r7, #48923
	vmov s5, r7
	vmul.f32 s2, s5, s2
	vadd.f32 s5, s3, s2
	add r7, r6, r3, lsl #2
	vstr s5, [r7, #0]
	add r3, r3, #1
	movw r7, #270
	cmp r3, r7
	bge label56
	vmov.f32 s3, s4
	vmov.f32 s2, s1
	vmov.f32 s1, s5
	b label51
label56:
	add r2, r2, #1
	cmp r2, #512
	bge label191
	b label190
label58:
	add r8, r5, r3, lsl #2
	vldr s4, [r8, #0]
	movw r9, #61929
	movt r9, #48705
	vmov s5, r9
	vmul.f32 s5, s5, s4
	movw r10, #35322
	movt r10, #15842
	vmov s6, r10
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r11, #12860
	movt r11, #48923
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	add r3, r6, r3, lsl #2
	vstr s2, [r3, #0]
	vmul.f32 s5, s0, s2
	vldr s3, [r8, #4]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmov s7, r10
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r3, #4]
	vmul.f32 s5, s0, s1
	vldr s4, [r8, #8]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r3, #8]
	vmul.f32 s5, s0, s2
	vldr s3, [r8, #12]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r3, #12]
	vmul.f32 s5, s0, s1
	vldr s4, [r8, #16]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r3, #16]
	vmul.f32 s3, s0, s2
	vldr s5, [r8, #20]
	vmov s6, r9
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r11
	vmul.f32 s1, s4, s1
	vadd.f32 s3, s3, s1
	vstr s3, [r3, #20]
	vmul.f32 s1, s0, s3
	vldr s4, [r8, #24]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s1, s1, s2
	vstr s1, [r3, #24]
	vmul.f32 s2, s0, s1
	vldr s5, [r8, #28]
	vmov s6, r9
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s2, s4, s2
	vmov s4, r11
	vmul.f32 s3, s4, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r3, #28]
	vmul.f32 s4, s0, s2
	vldr s3, [r8, #32]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r3, #32]
	vmul.f32 s4, s0, s1
	vldr s5, [r8, #36]
	vmov s6, r9
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r11
	vmul.f32 s2, s4, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r3, #36]
	vmul.f32 s3, s0, s2
	vldr s4, [r8, #40]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r3, #40]
	vmul.f32 s5, s0, s1
	vldr s3, [r8, #44]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r3, #44]
	vmul.f32 s5, s0, s2
	vldr s4, [r8, #48]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s3, s3, s1
	vstr s3, [r3, #48]
	vmul.f32 s1, s0, s3
	vldr s5, [r8, #52]
	vmov s6, r9
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s1, s4, s1
	vmov s4, r11
	vmul.f32 s2, s4, s2
	vadd.f32 s1, s1, s2
	vstr s1, [r3, #52]
	vmul.f32 s2, s0, s1
	vldr s4, [r8, #56]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s2, s5, s2
	vmov s5, r11
	vmul.f32 s3, s5, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r3, #56]
	vmul.f32 s5, s0, s2
	vldr s3, [r8, #60]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r3, #60]
	mov r3, r7
	add r7, r7, #16
	movw r8, #270
	cmp r7, r8
	bge label40
	b label58
label66:
	add r8, r7, r2, lsl #2
	vldr s1, [r8, #0]
	add r9, r6, r2, lsl #2
	vldr s2, [r9, #0]
	vadd.f32 s1, s1, s2
	add r2, r5, r2, lsl #2
	vstr s1, [r2, #0]
	vldr s1, [r8, #4]
	vldr s2, [r9, #4]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #4]
	vldr s1, [r8, #8]
	vldr s2, [r9, #8]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #8]
	vldr s1, [r8, #12]
	vldr s2, [r9, #12]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #12]
	vldr s1, [r8, #16]
	vldr s2, [r9, #16]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #16]
	vldr s1, [r8, #20]
	vldr s2, [r9, #20]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #20]
	vldr s1, [r8, #24]
	vldr s2, [r9, #24]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #24]
	vldr s1, [r8, #28]
	vldr s2, [r9, #28]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #28]
	vldr s1, [r8, #32]
	vldr s2, [r9, #32]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #32]
	vldr s1, [r8, #36]
	vldr s2, [r9, #36]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #36]
	vldr s1, [r8, #40]
	vldr s2, [r9, #40]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #40]
	vldr s1, [r8, #44]
	vldr s2, [r9, #44]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #44]
	vldr s1, [r8, #48]
	vldr s2, [r9, #48]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #48]
	vldr s1, [r8, #52]
	vldr s2, [r9, #52]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #52]
	vldr s1, [r8, #56]
	vldr s2, [r9, #56]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #56]
	vldr s1, [r8, #60]
	vldr s2, [r9, #60]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #60]
	mov r2, r4
	add r4, r4, #16
	movw r8, #270
	cmp r4, r8
	bge label67
	b label66
label73:
	add r4, r7, r2, lsl #2
	vldr s1, [r4, #0]
	add r4, r6, r2, lsl #2
	vldr s2, [r4, #0]
	vadd.f32 s1, s1, s2
	add r4, r5, r2, lsl #2
	vstr s1, [r4, #0]
	add r2, r2, #1
	movw r4, #270
	cmp r2, r4
	bge label75
	b label73
label75:
	add r3, r3, #1
	cmp r3, #512
	bge label1023
	movw r2, #1080
	mla r6, r3, r2, r1
	mla r7, r3, r2, r0
	ldr r5, [sp, #0]
	mla r5, r3, r2, r5
	mov r2, #0
	add r4, r2, #16
	movw r8, #270
	cmp r4, r8
	bge label67
	b label66
label40:
	add r7, r3, #16
	movw r8, #270
	cmp r7, r8
	bge label45
label57:
	add r8, r5, r3, lsl #2
	vldr s4, [r8, #0]
	movw r9, #61929
	movt r9, #48705
	vmov s5, r9
	vmul.f32 s5, s5, s4
	movw r10, #35322
	movt r10, #15842
	vmov s6, r10
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r11, #12860
	movt r11, #48923
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	add r3, r6, r3, lsl #2
	vstr s2, [r3, #0]
	vmul.f32 s5, s0, s2
	vldr s3, [r8, #4]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmov s7, r10
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r3, #4]
	vmul.f32 s4, s0, s1
	vldr s5, [r8, #8]
	vmov s6, r9
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r11
	vmul.f32 s2, s4, s2
	vadd.f32 s3, s3, s2
	vstr s3, [r3, #8]
	vmul.f32 s2, s0, s3
	vldr s4, [r8, #12]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s2, s5, s2
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s2, s2, s1
	vstr s2, [r3, #12]
	vmul.f32 s1, s0, s2
	vldr s5, [r8, #16]
	vmov s6, r9
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s1, s4, s1
	vmov s4, r11
	vmul.f32 s3, s4, s3
	vadd.f32 s1, s1, s3
	vstr s1, [r3, #16]
	vmul.f32 s4, s0, s1
	vldr s3, [r8, #20]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r3, #20]
	vmul.f32 s5, s0, s2
	vldr s4, [r8, #24]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r3, #24]
	vmul.f32 s5, s0, s1
	vldr s3, [r8, #28]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r3, #28]
	vmul.f32 s5, s0, s2
	vldr s4, [r8, #32]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r3, #32]
	vmul.f32 s3, s0, s1
	vldr s5, [r8, #36]
	vmov s6, r9
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r11
	vmul.f32 s2, s4, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r3, #36]
	vmul.f32 s4, s0, s2
	vldr s3, [r8, #40]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r3, #40]
	vmul.f32 s5, s0, s1
	vldr s4, [r8, #44]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r3, #44]
	vmul.f32 s5, s0, s2
	vldr s3, [r8, #48]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r3, #48]
	vmul.f32 s4, s0, s1
	vldr s6, [r8, #52]
	vmov s5, r9
	vmul.f32 s5, s5, s6
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s5, s3
	vadd.f32 s3, s3, s4
	vmov s4, r11
	vmul.f32 s2, s4, s2
	vadd.f32 s4, s3, s2
	vstr s4, [r3, #52]
	vmul.f32 s2, s0, s4
	vldr s5, [r8, #56]
	vmov s3, r9
	vmul.f32 s3, s3, s5
	vmul.f32 s6, s7, s6
	vadd.f32 s3, s3, s6
	vadd.f32 s2, s3, s2
	vmov s3, r11
	vmul.f32 s1, s3, s1
	vadd.f32 s2, s2, s1
	vstr s2, [r3, #56]
	vmul.f32 s1, s0, s2
	vldr s3, [r8, #60]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r11
	vmul.f32 s4, s5, s4
	vadd.f32 s1, s1, s4
	vstr s1, [r3, #60]
	mov r3, r7
	add r7, r7, #16
	movw r8, #270
	cmp r7, r8
	bge label45
	b label57
label45:
	add r7, r3, #16
	movw r8, #270
	cmp r7, r8
	bge label51
	b label50
label135:
	add r4, r3, #16
	cmp r4, #512
	bge label140
	b label146
label155:
	sub r7, r3, #16
	cmn r7, #1
	ble label161
	b label175
label161:
	sub r7, r3, #16
	cmn r7, #1
	ble label168
	b label167
label168:
	movw r7, #51281
	movt r7, #48700
	vmov s5, r7
	vmul.f32 s5, s5, s2
	movw r7, #9998
	movt r7, #15851
	vmov s6, r7
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r7, #12860
	movt r7, #48923
	vmov s5, r7
	vmul.f32 s4, s5, s4
	vadd.f32 s5, s3, s4
	add r7, r6, r3, lsl #2
	vstr s5, [r7, #0]
	add r7, r5, r3, lsl #2
	vldr s6, [r7, #0]
	sub r3, r3, #1
	cmn r3, #1
	ble label174
	vmov.f32 s4, s1
	vmov.f32 s3, s2
	vmov.f32 s1, s5
	vmov.f32 s2, s6
	b label168
label67:
	add r4, r2, #16
	movw r8, #270
	cmp r4, r8
	bge label70
	b label69
label70:
	add r4, r2, #16
	movw r8, #270
	cmp r4, r8
	bge label73
	b label72
label1360:
	mov r2, #0
	movw r3, #270
	cmp r2, r3
	bge label1370
	mov r3, #0
	vmov s1, r3
	vmov s2, r3
	vmov s3, r3
	vmov s5, r3
	movw r3, #511
	sub r4, r3, #16
	cmn r4, #1
	ble label102
	b label123
label1370:
	mov r3, #0
	cmp r3, #512
	bge label95
	movw r2, #1080
	mla r6, r3, r2, r1
	mla r7, r3, r2, r0
	ldr r5, [sp, #0]
	mla r5, r3, r2, r5
	mov r2, #0
	add r4, r2, #16
	movw r8, #270
	cmp r4, r8
	bge label86
	b label85
label95:
	mov r0, #158
	bl _sysy_stoptime
	mov r0, #138240
	ldr r5, [sp, #0]
	mov r1, r5
	bl putfarray
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label123:
	movw r6, #51281
	movt r6, #48700
	vmov s4, r6
	vmul.f32 s4, s4, s2
	movw r7, #9998
	movt r7, #15851
	vmov s6, r7
	vmul.f32 s5, s6, s5
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	movw r8, #12860
	movt r8, #48923
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	movw r10, #1080
	mla r9, r3, r10, r1
	add r5, r9, r2, lsl #2
	vstr s3, [r5, #0]
	vmul.f32 s5, s0, s3
	ldr r5, [sp, #0]
	mla r3, r3, r10, r5
	add r5, r3, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmov s7, r7
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	movw r5, #64456
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s5, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s2, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	sub r5, r9, #2160
	add r5, r5, r2, lsl #2
	vstr s3, [r5, #0]
	vmul.f32 s5, s0, s3
	sub r5, r3, #2160
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s2, s2, s1
	movw r5, #62296
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s1, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s1, s4, s1
	vmov s4, r8
	vmul.f32 s3, s4, s3
	vadd.f32 s1, s1, s3
	movw r5, #61216
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s4, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	movw r5, #60136
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s4, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s3, s1
	movw r5, #59056
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s3, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s3, s3, s2
	movw r5, #57976
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s3, [r10, #0]
	vmul.f32 s2, s0, s3
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s2, s4, s2
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s2, s2, s1
	sub r5, r9, #8640
	add r5, r5, r2, lsl #2
	vstr s2, [r5, #0]
	vmul.f32 s1, s0, s2
	sub r5, r3, #8640
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s1, s1, s3
	movw r5, #55816
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s5, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	movw r5, #54736
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s5, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	movw r5, #53656
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s3, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r8
	vmul.f32 s2, s4, s2
	vadd.f32 s2, s3, s2
	movw r5, #52576
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s4, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	movw r5, #51496
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s5, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s3, s3, s2
	movw r5, #50416
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s3, [r10, #0]
	vmul.f32 s2, s0, s3
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s2, s4, s2
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s2, s1
	movw r5, #49336
	movt r5, #65535
	add r6, r9, r5
	add r6, r6, r2, lsl #2
	vstr s1, [r6, #0]
	add r3, r3, r5
	add r3, r3, r2, lsl #2
	vldr s2, [r3, #0]
	mov r3, r4
	sub r4, r4, #16
	cmn r4, #1
	ble label102
	b label123
label129:
	movw r9, #1080
	ldr r5, [sp, #0]
	mla r6, r3, r9, r5
	add r5, r6, r2, lsl #2
	vldr s4, [r5, #0]
	movw r5, #61929
	movt r5, #48705
	vmov s5, r5
	vmul.f32 s5, s5, s4
	movw r7, #35322
	movt r7, #15842
	vmov s6, r7
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r8, #12860
	movt r8, #48923
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s3, s3, s2
	mla r3, r3, r9, r0
	add r10, r3, r2, lsl #2
	vstr s3, [r10, #0]
	vmul.f32 s2, s0, s3
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s5
	vmov s7, r7
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s2, s4, s2
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s2, s2, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s1, s0, s2
	add r9, r6, #2160
	add r9, r9, r2, lsl #2
	vldr s4, [r9, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s1, s1, s3
	add r9, r3, #2160
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s5, s0, s1
	movw r9, #3240
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s5, s0, s2
	movw r9, #4320
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s5, s0, s1
	movw r9, #5400
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s5, s0, s2
	movw r9, #6480
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s5, s0, s1
	movw r9, #7560
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s5, s0, s2
	add r9, r6, #8640
	add r9, r9, r2, lsl #2
	vldr s4, [r9, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	add r9, r3, #8640
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s5, s0, s1
	movw r9, #9720
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s5, s0, s2
	movw r9, #10800
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s5, s0, s1
	movw r9, #11880
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s5, s0, s2
	movw r9, #12960
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s3, s3, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s3, [r9, #0]
	vmul.f32 s1, s0, s3
	movw r9, #14040
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s1, s4, s1
	vmov s4, r8
	vmul.f32 s2, s4, s2
	vadd.f32 s1, s1, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s2, s0, s1
	movw r9, #15120
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s2, s5, s2
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s2, s2, s3
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s5, s0, s2
	movw r9, #16200
	add r6, r6, r9
	add r6, r6, r2, lsl #2
	vldr s3, [r6, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	add r3, r3, r9
	add r3, r3, r2, lsl #2
	vstr s1, [r3, #0]
	mov r3, r4
	add r4, r4, #16
	cmp r4, #512
	bge label130
	b label129
label102:
	sub r4, r3, #16
	cmn r4, #1
	ble label1725
	b label108
label1725:
	vmov.f32 s4, s3
	vmov.f32 s3, s5
	sub r4, r3, #16
	cmn r4, #1
	ble label115
	b label122
label115:
	movw r4, #51281
	movt r4, #48700
	vmov s5, r4
	vmul.f32 s5, s5, s2
	movw r4, #9998
	movt r4, #15851
	vmov s6, r4
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r4, #12860
	movt r4, #48923
	vmov s5, r4
	vmul.f32 s4, s5, s4
	vadd.f32 s5, s3, s4
	movw r4, #1080
	mla r5, r3, r4, r1
	add r5, r5, r2, lsl #2
	vstr s5, [r5, #0]
	ldr r5, [sp, #0]
	mla r4, r3, r4, r5
	add r4, r4, r2, lsl #2
	vldr s6, [r4, #0]
	sub r3, r3, #1
	cmn r3, #1
	ble label121
	vmov.f32 s4, s1
	vmov.f32 s3, s2
	vmov.f32 s1, s5
	vmov.f32 s2, s6
	b label115
label121:
	add r2, r2, #1
	movw r3, #270
	cmp r2, r3
	bge label1370
	mov r3, #0
	vmov s1, r3
	vmov s2, r3
	vmov s3, r3
	vmov s5, r3
	movw r3, #511
	sub r4, r3, #16
	cmn r4, #1
	ble label102
	b label123
label86:
	add r4, r2, #16
	movw r8, #270
	cmp r4, r8
	bge label89
	b label88
label89:
	add r4, r2, #16
	movw r8, #270
	cmp r4, r8
	bge label92
	b label91
label92:
	add r4, r7, r2, lsl #2
	vldr s0, [r4, #0]
	add r4, r6, r2, lsl #2
	vldr s1, [r4, #0]
	vadd.f32 s0, s0, s1
	add r4, r5, r2, lsl #2
	vstr s0, [r4, #0]
	add r2, r2, #1
	movw r4, #270
	cmp r2, r4
	bge label94
	b label92
label94:
	add r3, r3, #1
	cmp r3, #512
	bge label95
	movw r2, #1080
	mla r6, r3, r2, r1
	mla r7, r3, r2, r0
	ldr r5, [sp, #0]
	mla r5, r3, r2, r5
	mov r2, #0
	add r4, r2, #16
	movw r8, #270
	cmp r4, r8
	bge label86
	b label85
label91:
	add r8, r7, r2, lsl #2
	vldr s0, [r8, #0]
	add r9, r6, r2, lsl #2
	vldr s1, [r9, #0]
	vadd.f32 s0, s0, s1
	add r2, r5, r2, lsl #2
	vstr s0, [r2, #0]
	vldr s0, [r8, #4]
	vldr s1, [r9, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #4]
	vldr s0, [r8, #8]
	vldr s1, [r9, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #8]
	vldr s0, [r8, #12]
	vldr s1, [r9, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #12]
	vldr s0, [r8, #16]
	vldr s1, [r9, #16]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #16]
	vldr s0, [r8, #20]
	vldr s1, [r9, #20]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #20]
	vldr s0, [r8, #24]
	vldr s1, [r9, #24]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #24]
	vldr s0, [r8, #28]
	vldr s1, [r9, #28]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #28]
	vldr s0, [r8, #32]
	vldr s1, [r9, #32]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #32]
	vldr s0, [r8, #36]
	vldr s1, [r9, #36]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #36]
	vldr s0, [r8, #40]
	vldr s1, [r9, #40]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #40]
	vldr s0, [r8, #44]
	vldr s1, [r9, #44]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #44]
	vldr s0, [r8, #48]
	vldr s1, [r9, #48]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #48]
	vldr s0, [r8, #52]
	vldr s1, [r9, #52]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #52]
	vldr s0, [r8, #56]
	vldr s1, [r9, #56]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #56]
	vldr s0, [r8, #60]
	vldr s1, [r9, #60]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #60]
	mov r2, r4
	add r4, r4, #16
	movw r8, #270
	cmp r4, r8
	bge label92
	b label91
label88:
	add r8, r7, r2, lsl #2
	vldr s0, [r8, #0]
	add r9, r6, r2, lsl #2
	vldr s1, [r9, #0]
	vadd.f32 s0, s0, s1
	add r2, r5, r2, lsl #2
	vstr s0, [r2, #0]
	vldr s0, [r8, #4]
	vldr s1, [r9, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #4]
	vldr s0, [r8, #8]
	vldr s1, [r9, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #8]
	vldr s0, [r8, #12]
	vldr s1, [r9, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #12]
	vldr s0, [r8, #16]
	vldr s1, [r9, #16]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #16]
	vldr s0, [r8, #20]
	vldr s1, [r9, #20]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #20]
	vldr s0, [r8, #24]
	vldr s1, [r9, #24]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #24]
	vldr s0, [r8, #28]
	vldr s1, [r9, #28]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #28]
	vldr s0, [r8, #32]
	vldr s1, [r9, #32]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #32]
	vldr s0, [r8, #36]
	vldr s1, [r9, #36]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #36]
	vldr s0, [r8, #40]
	vldr s1, [r9, #40]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #40]
	vldr s0, [r8, #44]
	vldr s1, [r9, #44]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #44]
	vldr s0, [r8, #48]
	vldr s1, [r9, #48]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #48]
	vldr s0, [r8, #52]
	vldr s1, [r9, #52]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #52]
	vldr s0, [r8, #56]
	vldr s1, [r9, #56]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #56]
	vldr s0, [r8, #60]
	vldr s1, [r9, #60]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #60]
	mov r2, r4
	add r4, r4, #16
	movw r8, #270
	cmp r4, r8
	bge label89
	b label88
label85:
	add r8, r7, r2, lsl #2
	vldr s0, [r8, #0]
	add r9, r6, r2, lsl #2
	vldr s1, [r9, #0]
	vadd.f32 s0, s0, s1
	add r2, r5, r2, lsl #2
	vstr s0, [r2, #0]
	vldr s0, [r8, #4]
	vldr s1, [r9, #4]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #4]
	vldr s0, [r8, #8]
	vldr s1, [r9, #8]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #8]
	vldr s0, [r8, #12]
	vldr s1, [r9, #12]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #12]
	vldr s0, [r8, #16]
	vldr s1, [r9, #16]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #16]
	vldr s0, [r8, #20]
	vldr s1, [r9, #20]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #20]
	vldr s0, [r8, #24]
	vldr s1, [r9, #24]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #24]
	vldr s0, [r8, #28]
	vldr s1, [r9, #28]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #28]
	vldr s0, [r8, #32]
	vldr s1, [r9, #32]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #32]
	vldr s0, [r8, #36]
	vldr s1, [r9, #36]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #36]
	vldr s0, [r8, #40]
	vldr s1, [r9, #40]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #40]
	vldr s0, [r8, #44]
	vldr s1, [r9, #44]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #44]
	vldr s0, [r8, #48]
	vldr s1, [r9, #48]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #48]
	vldr s0, [r8, #52]
	vldr s1, [r9, #52]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #52]
	vldr s0, [r8, #56]
	vldr s1, [r9, #56]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #56]
	vldr s0, [r8, #60]
	vldr s1, [r9, #60]
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #60]
	mov r2, r4
	add r4, r4, #16
	movw r8, #270
	cmp r4, r8
	bge label86
	b label85
label175:
	movw r8, #51281
	movt r8, #48700
	vmov s5, r8
	vmul.f32 s5, s5, s2
	movw r9, #9998
	movt r9, #15851
	vmov s6, r9
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r10, #12860
	movt r10, #48923
	vmov s5, r10
	vmul.f32 s4, s5, s4
	vadd.f32 s3, s3, s4
	add r11, r6, r3, lsl #2
	vstr s3, [r11, #0]
	vmul.f32 s4, s0, s3
	add r3, r5, r3, lsl #2
	vldr s5, [r3, #0]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmov s7, r9
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s4
	vmov s4, r10
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r11, #-4]
	vmul.f32 s2, s0, s1
	vldr s4, [r3, #-4]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s2, s5, s2
	vmov s5, r10
	vmul.f32 s3, s5, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r11, #-8]
	vmul.f32 s5, s0, s2
	vldr s3, [r3, #-8]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r11, #-12]
	vmul.f32 s5, s0, s1
	vldr s4, [r3, #-12]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r11, #-16]
	vmul.f32 s5, s0, s2
	vldr s3, [r3, #-16]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r11, #-20]
	vmul.f32 s5, s0, s1
	vldr s4, [r3, #-20]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r11, #-24]
	vmul.f32 s3, s0, s2
	vldr s5, [r3, #-24]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r10
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r11, #-28]
	vmul.f32 s4, s0, s1
	vldr s3, [r3, #-28]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r11, #-32]
	vmul.f32 s5, s0, s2
	vldr s4, [r3, #-32]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s3, s3, s1
	vstr s3, [r11, #-36]
	vmul.f32 s1, s0, s3
	vldr s5, [r3, #-36]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s1, s4, s1
	vmov s4, r10
	vmul.f32 s2, s4, s2
	vadd.f32 s1, s1, s2
	vstr s1, [r11, #-40]
	vmul.f32 s2, s0, s1
	vldr s4, [r3, #-40]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s2, s5, s2
	vmov s5, r10
	vmul.f32 s3, s5, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r11, #-44]
	vmul.f32 s3, s0, s2
	vldr s5, [r3, #-44]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r10
	vmul.f32 s1, s4, s1
	vadd.f32 s3, s3, s1
	vstr s3, [r11, #-48]
	vmul.f32 s1, s0, s3
	vldr s4, [r3, #-48]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s1, s1, s2
	vstr s1, [r11, #-52]
	vmul.f32 s5, s0, s1
	vldr s2, [r3, #-52]
	vmov s6, r8
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s3, s5, s3
	vadd.f32 s4, s4, s3
	vstr s4, [r11, #-56]
	vmul.f32 s5, s0, s4
	vldr s3, [r3, #-56]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r11, #-60]
	vldr s2, [r3, #-60]
	mov r3, r7
	sub r7, r7, #16
	cmn r7, #1
	ble label161
	b label175
label176:
	movw r8, #51281
	movt r8, #48700
	vmov s5, r8
	vmul.f32 s5, s5, s2
	movw r9, #9998
	movt r9, #15851
	vmov s6, r9
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r10, #12860
	movt r10, #48923
	vmov s5, r10
	vmul.f32 s4, s5, s4
	vadd.f32 s3, s3, s4
	add r11, r6, r3, lsl #2
	vstr s3, [r11, #0]
	vmul.f32 s4, s0, s3
	add r3, r5, r3, lsl #2
	vldr s5, [r3, #0]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmov s7, r9
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s4
	vmov s4, r10
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r11, #-4]
	vmul.f32 s2, s0, s1
	vldr s4, [r3, #-4]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s2, s5, s2
	vmov s5, r10
	vmul.f32 s3, s5, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r11, #-8]
	vmul.f32 s3, s0, s2
	vldr s5, [r3, #-8]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r10
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r11, #-12]
	vmul.f32 s4, s0, s1
	vldr s3, [r3, #-12]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r11, #-16]
	vmul.f32 s5, s0, s2
	vldr s4, [r3, #-16]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r11, #-20]
	vmul.f32 s5, s0, s1
	vldr s3, [r3, #-20]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r11, #-24]
	vmul.f32 s5, s0, s2
	vldr s4, [r3, #-24]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r11, #-28]
	vmul.f32 s5, s0, s1
	vldr s3, [r3, #-28]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r11, #-32]
	vmul.f32 s5, s0, s2
	vldr s4, [r3, #-32]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r11, #-36]
	vmul.f32 s5, s0, s1
	vldr s3, [r3, #-36]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r11, #-40]
	vmul.f32 s4, s0, s2
	vldr s5, [r3, #-40]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r10
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r11, #-44]
	vmul.f32 s3, s0, s1
	vldr s4, [r3, #-44]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r11, #-48]
	vmul.f32 s5, s0, s2
	vldr s3, [r3, #-48]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r11, #-52]
	vmul.f32 s4, s0, s1
	vldr s5, [r3, #-52]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r10
	vmul.f32 s2, s4, s2
	vadd.f32 s4, s3, s2
	vstr s4, [r11, #-56]
	vmul.f32 s2, s0, s4
	vldr s3, [r3, #-56]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s2, s5, s2
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r11, #-60]
	vldr s2, [r3, #-60]
	mov r3, r7
	sub r7, r7, #16
	cmn r7, #1
	ble label155
	b label176
label146:
	movw r9, #1080
	ldr r5, [sp, #0]
	mla r6, r3, r9, r5
	add r5, r6, r2, lsl #2
	vldr s4, [r5, #0]
	movw r5, #61929
	movt r5, #48705
	vmov s5, r5
	vmul.f32 s5, s5, s4
	movw r7, #35322
	movt r7, #15842
	vmov s6, r7
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r8, #12860
	movt r8, #48923
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s3, s3, s2
	mla r3, r3, r9, r0
	add r10, r3, r2, lsl #2
	vstr s3, [r10, #0]
	vmul.f32 s2, s0, s3
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s5
	vmov s7, r7
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s2, s4, s2
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s2, s2, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s1, s0, s2
	add r9, r6, #2160
	add r9, r9, r2, lsl #2
	vldr s4, [r9, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s1, s1, s3
	add r9, r3, #2160
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s3, s0, s1
	movw r9, #3240
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r8
	vmul.f32 s2, s4, s2
	vadd.f32 s2, s3, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s4, s0, s2
	movw r9, #4320
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s5, s0, s1
	movw r9, #5400
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s5, s0, s2
	movw r9, #6480
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s4, s0, s1
	movw r9, #7560
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r8
	vmul.f32 s2, s4, s2
	vadd.f32 s2, s3, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s3, s0, s2
	add r9, r6, #8640
	add r9, r9, r2, lsl #2
	vldr s4, [r9, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	add r9, r3, #8640
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s5, s0, s1
	movw r9, #9720
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s5, s0, s2
	movw r9, #10800
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s3, s0, s1
	movw r9, #11880
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r8
	vmul.f32 s2, s4, s2
	vadd.f32 s2, s3, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s4, s0, s2
	movw r9, #12960
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s4, s0, s1
	movw r9, #14040
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r8
	vmul.f32 s2, s4, s2
	vadd.f32 s4, s3, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s4, [r9, #0]
	vmul.f32 s2, s0, s4
	movw r9, #15120
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s6, [r10, #0]
	vmov s3, r5
	vmul.f32 s3, s3, s6
	vmul.f32 s5, s7, s5
	vadd.f32 s3, s3, s5
	vadd.f32 s2, s3, s2
	vmov s3, r8
	vmul.f32 s1, s3, s1
	vadd.f32 s2, s2, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s1, s0, s2
	movw r9, #16200
	add r6, r6, r9
	add r6, r6, r2, lsl #2
	vldr s3, [r6, #0]
	vmov s5, r5
	vmul.f32 s5, s5, s3
	vmul.f32 s6, s7, s6
	vadd.f32 s5, s5, s6
	vadd.f32 s1, s5, s1
	vmov s5, r8
	vmul.f32 s4, s5, s4
	vadd.f32 s1, s1, s4
	add r3, r3, r9
	add r3, r3, r2, lsl #2
	vstr s1, [r3, #0]
	mov r3, r4
	add r4, r4, #16
	cmp r4, #512
	bge label140
	b label146
label122:
	movw r6, #51281
	movt r6, #48700
	vmov s5, r6
	vmul.f32 s5, s5, s2
	movw r7, #9998
	movt r7, #15851
	vmov s6, r7
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r8, #12860
	movt r8, #48923
	vmov s5, r8
	vmul.f32 s4, s5, s4
	vadd.f32 s3, s3, s4
	movw r10, #1080
	mla r9, r3, r10, r1
	add r5, r9, r2, lsl #2
	vstr s3, [r5, #0]
	vmul.f32 s5, s0, s3
	ldr r5, [sp, #0]
	mla r3, r3, r10, r5
	add r5, r3, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmov s7, r7
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	movw r5, #64456
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s5, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s2, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s2
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	sub r5, r9, #2160
	add r5, r5, r2, lsl #2
	vstr s3, [r5, #0]
	vmul.f32 s5, s0, s3
	sub r5, r3, #2160
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s2, s2, s1
	movw r5, #62296
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s1, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s1, s4, s1
	vmov s4, r8
	vmul.f32 s3, s4, s3
	vadd.f32 s1, s1, s3
	movw r5, #61216
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s4, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	movw r5, #60136
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s4, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s3, s1
	movw r5, #59056
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s3, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s3, s3, s2
	movw r5, #57976
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s3, [r10, #0]
	vmul.f32 s2, s0, s3
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s2, s4, s2
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s2, s2, s1
	sub r5, r9, #8640
	add r5, r5, r2, lsl #2
	vstr s2, [r5, #0]
	vmul.f32 s1, s0, s2
	sub r5, r3, #8640
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s1, s1, s3
	movw r5, #55816
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s3, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r8
	vmul.f32 s2, s4, s2
	vadd.f32 s2, s3, s2
	movw r5, #54736
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s4, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	movw r5, #53656
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s5, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	movw r5, #52576
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s5, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	movw r5, #51496
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s4, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r8
	vmul.f32 s2, s4, s2
	vadd.f32 s4, s3, s2
	movw r5, #50416
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s4, [r10, #0]
	vmul.f32 s2, s0, s4
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s2, s5, s2
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	movw r5, #49336
	movt r5, #65535
	add r6, r9, r5
	add r6, r6, r2, lsl #2
	vstr s1, [r6, #0]
	add r3, r3, r5
	add r3, r3, r2, lsl #2
	vldr s2, [r3, #0]
	mov r3, r4
	sub r4, r4, #16
	cmn r4, #1
	ble label115
	b label122
label147:
	movw r9, #1080
	ldr r5, [sp, #0]
	mla r6, r3, r9, r5
	add r5, r6, r2, lsl #2
	vldr s4, [r5, #0]
	movw r5, #61929
	movt r5, #48705
	vmov s5, r5
	vmul.f32 s5, s5, s4
	movw r7, #35322
	movt r7, #15842
	vmov s6, r7
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r8, #12860
	movt r8, #48923
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s3, s3, s2
	mla r3, r3, r9, r0
	add r10, r3, r2, lsl #2
	vstr s3, [r10, #0]
	vmul.f32 s2, s0, s3
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s5
	vmov s7, r7
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s2, s4, s2
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s2, s2, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s1, s0, s2
	add r9, r6, #2160
	add r9, r9, r2, lsl #2
	vldr s4, [r9, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s1, s1, s3
	add r9, r3, #2160
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s5, s0, s1
	movw r9, #3240
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s5, s0, s2
	movw r9, #4320
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s3, s0, s1
	movw r9, #5400
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r8
	vmul.f32 s2, s4, s2
	vadd.f32 s2, s3, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s4, s0, s2
	movw r9, #6480
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s4, s5, s4
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s5, s0, s1
	movw r9, #7560
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s3, s3, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s3, [r9, #0]
	vmul.f32 s2, s0, s3
	add r9, r6, #8640
	add r9, r9, r2, lsl #2
	vldr s5, [r9, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s2, s4, s2
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s2, s2, s1
	add r9, r3, #8640
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s1, s0, s2
	movw r9, #9720
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s1, s1, s3
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s5, s0, s1
	movw r9, #10800
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s5, s0, s2
	movw r9, #11880
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s5, s0, s1
	movw r9, #12960
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s3, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s4, s0, s2
	movw r9, #14040
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s5, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s3, s1
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s1, [r9, #0]
	vmul.f32 s3, s0, s1
	movw r9, #15120
	add r10, r6, r9
	add r10, r10, r2, lsl #2
	vldr s4, [r10, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	add r9, r3, r9
	add r9, r9, r2, lsl #2
	vstr s2, [r9, #0]
	vmul.f32 s5, s0, s2
	movw r9, #16200
	add r6, r6, r9
	add r6, r6, r2, lsl #2
	vldr s3, [r6, #0]
	vmov s6, r5
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	add r3, r3, r9
	add r3, r3, r2, lsl #2
	vstr s1, [r3, #0]
	mov r3, r4
	add r4, r4, #16
	cmp r4, #512
	bge label135
	b label147
label167:
	movw r8, #51281
	movt r8, #48700
	vmov s5, r8
	vmul.f32 s5, s5, s2
	movw r9, #9998
	movt r9, #15851
	vmov s6, r9
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r10, #12860
	movt r10, #48923
	vmov s5, r10
	vmul.f32 s4, s5, s4
	vadd.f32 s3, s3, s4
	add r11, r6, r3, lsl #2
	vstr s3, [r11, #0]
	vmul.f32 s5, s0, s3
	add r3, r5, r3, lsl #2
	vldr s4, [r3, #0]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmov s7, r9
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s2, s2, s1
	vstr s2, [r11, #-4]
	vmul.f32 s1, s0, s2
	vldr s5, [r3, #-4]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s1, s4, s1
	vmov s4, r10
	vmul.f32 s3, s4, s3
	vadd.f32 s1, s1, s3
	vstr s1, [r11, #-8]
	vmul.f32 s3, s0, s1
	vldr s4, [r3, #-8]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r11, #-12]
	vmul.f32 s5, s0, s2
	vldr s3, [r3, #-12]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r11, #-16]
	vmul.f32 s5, s0, s1
	vldr s4, [r3, #-16]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r11, #-20]
	vmul.f32 s5, s0, s2
	vldr s3, [r3, #-20]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r11, #-24]
	vmul.f32 s5, s0, s1
	vldr s4, [r3, #-24]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r11, #-28]
	vmul.f32 s5, s0, s2
	vldr s3, [r3, #-28]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r11, #-32]
	vmul.f32 s5, s0, s1
	vldr s4, [r3, #-32]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r10
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r11, #-36]
	vmul.f32 s5, s0, s2
	vldr s3, [r3, #-36]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r11, #-40]
	vmul.f32 s4, s0, s1
	vldr s5, [r3, #-40]
	vmov s6, r8
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r10
	vmul.f32 s2, s4, s2
	vadd.f32 s3, s3, s2
	vstr s3, [r11, #-44]
	vmul.f32 s2, s0, s3
	vldr s4, [r3, #-44]
	vmov s6, r8
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s2, s5, s2
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s2, s2, s1
	vstr s2, [r11, #-48]
	vmul.f32 s1, s0, s2
	vldr s6, [r3, #-48]
	vmov s5, r8
	vmul.f32 s5, s5, s6
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s5, s4
	vadd.f32 s1, s4, s1
	vmov s4, r10
	vmul.f32 s3, s4, s3
	vadd.f32 s1, s1, s3
	vstr s1, [r11, #-52]
	vmul.f32 s3, s0, s1
	vldr s5, [r3, #-52]
	vmov s4, r8
	vmul.f32 s4, s4, s5
	vmul.f32 s6, s7, s6
	vadd.f32 s4, s4, s6
	vadd.f32 s3, s4, s3
	vmov s4, r10
	vmul.f32 s2, s4, s2
	vadd.f32 s4, s3, s2
	vstr s4, [r11, #-56]
	vmul.f32 s2, s0, s4
	vldr s3, [r3, #-56]
	vmov s6, r8
	vmul.f32 s6, s6, s3
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s2, s5, s2
	vmov s5, r10
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	vstr s1, [r11, #-60]
	vldr s2, [r3, #-60]
	mov r3, r7
	sub r7, r7, #16
	cmn r7, #1
	ble label168
	b label167
label108:
	movw r6, #51281
	movt r6, #48700
	vmov s4, r6
	vmul.f32 s4, s4, s2
	movw r7, #9998
	movt r7, #15851
	vmov s6, r7
	vmul.f32 s5, s6, s5
	vadd.f32 s4, s4, s5
	vmul.f32 s5, s0, s1
	vadd.f32 s4, s4, s5
	movw r8, #12860
	movt r8, #48923
	vmov s5, r8
	vmul.f32 s3, s5, s3
	vadd.f32 s3, s4, s3
	movw r10, #1080
	mla r9, r3, r10, r1
	add r5, r9, r2, lsl #2
	vstr s3, [r5, #0]
	vmul.f32 s5, s0, s3
	ldr r5, [sp, #0]
	mla r3, r3, r10, r5
	add r5, r3, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmov s7, r7
	vmul.f32 s2, s7, s2
	vadd.f32 s2, s6, s2
	vadd.f32 s2, s2, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s2, s1
	movw r5, #64456
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s2, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s2, s4, s2
	vmov s4, r8
	vmul.f32 s3, s4, s3
	vadd.f32 s2, s2, s3
	sub r5, r9, #2160
	add r5, r5, r2, lsl #2
	vstr s2, [r5, #0]
	vmul.f32 s3, s0, s2
	sub r5, r3, #2160
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	movw r5, #62296
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s5, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	movw r5, #61216
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s4, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s3, s1
	movw r5, #60136
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s3, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	movw r5, #59056
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s5, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	movw r5, #57976
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s4, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r8
	vmul.f32 s2, s4, s2
	vadd.f32 s2, s3, s2
	sub r5, r9, #8640
	add r5, r5, r2, lsl #2
	vstr s2, [r5, #0]
	vmul.f32 s3, s0, s2
	sub r5, r3, #8640
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	movw r5, #55816
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s5, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	movw r5, #54736
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s5, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r8
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	movw r5, #53656
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s5, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s3, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	movw r5, #52576
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s2, [r10, #0]
	vmul.f32 s4, s0, s2
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s3, s1
	movw r5, #51496
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s1, [r10, #0]
	vmul.f32 s3, s0, s1
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s4, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r8
	vmul.f32 s2, s5, s2
	vadd.f32 s3, s3, s2
	movw r5, #50416
	movt r5, #65535
	add r10, r9, r5
	add r10, r10, r2, lsl #2
	vstr s3, [r10, #0]
	vmul.f32 s2, s0, s3
	add r5, r3, r5
	add r5, r5, r2, lsl #2
	vldr s5, [r5, #0]
	vmov s6, r6
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s2, s4, s2
	vmov s4, r8
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s2, s1
	movw r5, #49336
	movt r5, #65535
	add r6, r9, r5
	add r6, r6, r2, lsl #2
	vstr s1, [r6, #0]
	add r3, r3, r5
	add r3, r3, r2, lsl #2
	vldr s2, [r3, #0]
	mov r3, r4
	sub r4, r4, #16
	cmn r4, #1
	ble label1725
	b label108
label69:
	add r8, r7, r2, lsl #2
	vldr s1, [r8, #0]
	add r9, r6, r2, lsl #2
	vldr s2, [r9, #0]
	vadd.f32 s1, s1, s2
	add r2, r5, r2, lsl #2
	vstr s1, [r2, #0]
	vldr s1, [r8, #4]
	vldr s2, [r9, #4]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #4]
	vldr s1, [r8, #8]
	vldr s2, [r9, #8]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #8]
	vldr s1, [r8, #12]
	vldr s2, [r9, #12]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #12]
	vldr s1, [r8, #16]
	vldr s2, [r9, #16]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #16]
	vldr s1, [r8, #20]
	vldr s2, [r9, #20]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #20]
	vldr s1, [r8, #24]
	vldr s2, [r9, #24]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #24]
	vldr s1, [r8, #28]
	vldr s2, [r9, #28]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #28]
	vldr s1, [r8, #32]
	vldr s2, [r9, #32]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #32]
	vldr s1, [r8, #36]
	vldr s2, [r9, #36]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #36]
	vldr s1, [r8, #40]
	vldr s2, [r9, #40]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #40]
	vldr s1, [r8, #44]
	vldr s2, [r9, #44]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #44]
	vldr s1, [r8, #48]
	vldr s2, [r9, #48]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #48]
	vldr s1, [r8, #52]
	vldr s2, [r9, #52]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #52]
	vldr s1, [r8, #56]
	vldr s2, [r9, #56]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #56]
	vldr s1, [r8, #60]
	vldr s2, [r9, #60]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #60]
	mov r2, r4
	add r4, r4, #16
	movw r8, #270
	cmp r4, r8
	bge label70
	b label69
label72:
	add r8, r7, r2, lsl #2
	vldr s1, [r8, #0]
	add r9, r6, r2, lsl #2
	vldr s2, [r9, #0]
	vadd.f32 s1, s1, s2
	add r2, r5, r2, lsl #2
	vstr s1, [r2, #0]
	vldr s1, [r8, #4]
	vldr s2, [r9, #4]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #4]
	vldr s1, [r8, #8]
	vldr s2, [r9, #8]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #8]
	vldr s1, [r8, #12]
	vldr s2, [r9, #12]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #12]
	vldr s1, [r8, #16]
	vldr s2, [r9, #16]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #16]
	vldr s1, [r8, #20]
	vldr s2, [r9, #20]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #20]
	vldr s1, [r8, #24]
	vldr s2, [r9, #24]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #24]
	vldr s1, [r8, #28]
	vldr s2, [r9, #28]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #28]
	vldr s1, [r8, #32]
	vldr s2, [r9, #32]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #32]
	vldr s1, [r8, #36]
	vldr s2, [r9, #36]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #36]
	vldr s1, [r8, #40]
	vldr s2, [r9, #40]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #40]
	vldr s1, [r8, #44]
	vldr s2, [r9, #44]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #44]
	vldr s1, [r8, #48]
	vldr s2, [r9, #48]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #48]
	vldr s1, [r8, #52]
	vldr s2, [r9, #52]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #52]
	vldr s1, [r8, #56]
	vldr s2, [r9, #56]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #56]
	vldr s1, [r8, #60]
	vldr s2, [r9, #60]
	vadd.f32 s1, s1, s2
	vstr s1, [r2, #60]
	mov r2, r4
	add r4, r4, #16
	movw r8, #270
	cmp r4, r8
	bge label73
	b label72
label50:
	add r8, r5, r3, lsl #2
	vldr s4, [r8, #0]
	movw r9, #61929
	movt r9, #48705
	vmov s5, r9
	vmul.f32 s5, s5, s4
	movw r10, #35322
	movt r10, #15842
	vmov s6, r10
	vmul.f32 s3, s6, s3
	vadd.f32 s3, s5, s3
	vmul.f32 s5, s0, s1
	vadd.f32 s3, s3, s5
	movw r11, #12860
	movt r11, #48923
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	add r3, r6, r3, lsl #2
	vstr s2, [r3, #0]
	vmul.f32 s3, s0, s2
	vldr s5, [r8, #4]
	vmov s6, r9
	vmul.f32 s6, s6, s5
	vmov s7, r10
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s3, s4, s3
	vmov s4, r11
	vmul.f32 s1, s4, s1
	vadd.f32 s3, s3, s1
	vstr s3, [r3, #4]
	vmul.f32 s1, s0, s3
	vldr s4, [r8, #8]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s1, s1, s2
	vstr s1, [r3, #8]
	vmul.f32 s2, s0, s1
	vldr s5, [r8, #12]
	vmov s6, r9
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s2, s4, s2
	vmov s4, r11
	vmul.f32 s3, s4, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r3, #12]
	vmul.f32 s3, s0, s2
	vldr s4, [r8, #16]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r3, #16]
	vmul.f32 s5, s0, s1
	vldr s3, [r8, #20]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r3, #20]
	vmul.f32 s5, s0, s2
	vldr s4, [r8, #24]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r3, #24]
	vmul.f32 s5, s0, s1
	vldr s3, [r8, #28]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r3, #28]
	vmul.f32 s4, s0, s2
	vldr s5, [r8, #32]
	vmov s6, r9
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r11
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r3, #32]
	vmul.f32 s3, s0, s1
	vldr s4, [r8, #36]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s3, s3, s2
	vstr s3, [r3, #36]
	vmul.f32 s2, s0, s3
	vldr s5, [r8, #40]
	vmov s6, r9
	vmul.f32 s6, s6, s5
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s2, s4, s2
	vmov s4, r11
	vmul.f32 s1, s4, s1
	vadd.f32 s2, s2, s1
	vstr s2, [r3, #40]
	vmul.f32 s1, s0, s2
	vldr s4, [r8, #44]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s1, s5, s1
	vmov s5, r11
	vmul.f32 s3, s5, s3
	vadd.f32 s1, s1, s3
	vstr s1, [r3, #44]
	vmul.f32 s5, s0, s1
	vldr s3, [r8, #48]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s4, s2
	vstr s2, [r3, #48]
	vmul.f32 s4, s0, s2
	vldr s5, [r8, #52]
	vmov s6, r9
	vmul.f32 s6, s6, s5
	vmul.f32 s3, s7, s3
	vadd.f32 s3, s6, s3
	vadd.f32 s3, s3, s4
	vmov s4, r11
	vmul.f32 s1, s4, s1
	vadd.f32 s1, s3, s1
	vstr s1, [r3, #52]
	vmul.f32 s3, s0, s1
	vldr s4, [r8, #56]
	vmov s6, r9
	vmul.f32 s6, s6, s4
	vmul.f32 s5, s7, s5
	vadd.f32 s5, s6, s5
	vadd.f32 s3, s5, s3
	vmov s5, r11
	vmul.f32 s2, s5, s2
	vadd.f32 s2, s3, s2
	vstr s2, [r3, #56]
	vmul.f32 s5, s0, s2
	vldr s3, [r8, #60]
	vmov s6, r9
	vmul.f32 s6, s6, s3
	vmul.f32 s4, s7, s4
	vadd.f32 s4, s6, s4
	vadd.f32 s4, s4, s5
	vmov s5, r11
	vmul.f32 s1, s5, s1
	vadd.f32 s1, s4, s1
	vstr s1, [r3, #60]
	mov r3, r7
	add r7, r7, #16
	movw r8, #270
	cmp r7, r8
	bge label51
	b label50
label174:
	add r2, r2, #1
	cmp r2, #512
	bge label1019
	movw r3, #1080
	mla r5, r2, r3, r4
	mla r6, r2, r3, r1
	mov r3, #0
	vmov s1, r3
	vmov s2, r3
	vmov s4, r3
	vmov s3, r3
	movw r3, #269
	sub r7, r3, #16
	cmn r7, #1
	ble label155
	b label176
