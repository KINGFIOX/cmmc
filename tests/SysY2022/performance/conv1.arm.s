.arch armv7ve
.data
.section .rodata
.bss
.align 4
a:
	.zero	40000000
.align 4
b:
	.zero	40000000
.align 4
kernelid:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #68
	bl getint
	mov r4, r0
	bl getint
	mov r6, r0
	str r0, [sp, #20]
	bl getint
	mov r5, r0
	str r0, [sp, #28]
	ldr r6, [sp, #20]
	mul r2, r6, r0
	str r2, [sp, #24]
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r5, r0
	str r0, [sp, #12]
	bl getarray
	movw r0, #:lower16:kernelid
	movt r0, #:upper16:kernelid
	mov r1, r0
	str r0, [sp, #32]
	bl getarray
	mov r1, r0
	str r0, [sp, #36]
	add r0, r4, r4, lsr #31
	asr r1, r0, #1
	str r1, [sp, #40]
	mov r0, #109
	bl _sysy_starttime
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	str r2, [sp, #44]
	ldr r1, [sp, #36]
	cmp r1, #0
	ble label79
	mov r0, #0
	str r0, [sp, #48]
	ldr r1, [sp, #32]
	ldr r6, [r1, r0, lsl #2]
	str r6, [sp, #52]
	str r0, [sp, #16]
label4:
	ldr r1, [sp, #40]
	ldr r0, [sp, #16]
	sub r0, r0, r1
	str r0, [sp, #56]
	ldr r1, [sp, #40]
	ldr r0, [sp, #16]
	add r1, r1, r0
	str r1, [sp, #4]
	ldr r5, [sp, #28]
	ldr r0, [sp, #16]
	mul r1, r5, r0
	str r1, [sp, #0]
	mov r0, #0
	str r0, [sp, #8]
	ldr r1, [sp, #40]
	sub r2, r0, r1
	ldr r1, [sp, #40]
	add r3, r1, r0
	ldr r0, [sp, #56]
	mov r4, #0
label8:
	mov r1, r2
label11:
	cmp r0, #0
	bge label14
	mov r5, #0
	ldr r6, [sp, #52]
	cmp r6, #0
	bne label47
	add r4, r4, r5
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	b label727
label174:
	str r0, [sp, #16]
	b label4
label727:
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	b label759
label169:
	str r0, [sp, #8]
	ldr r1, [sp, #40]
	sub r2, r0, r1
	ldr r1, [sp, #40]
	add r3, r1, r0
	ldr r0, [sp, #56]
	mov r4, #0
	mov r1, r2
	cmp r0, #0
	bge label14
	mov r5, #0
	ldr r6, [sp, #52]
	cmp r6, #0
	bne label47
	add r4, r4, r5
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	b label727
label37:
	ldr r2, [sp, #44]
	add r3, r2, r0, lsl #2
	ldr r2, [sp, #44]
	ldr r4, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	add r2, r5, r0, lsl #2
	ldr r5, [sp, #12]
	str r4, [r5, r0, lsl #2]
	ldr r0, [r3, #4]
	str r0, [r2, #4]
	ldr r0, [r3, #8]
	str r0, [r2, #8]
	ldr r0, [r3, #12]
	str r0, [r2, #12]
	ldr r0, [r3, #16]
	str r0, [r2, #16]
	ldr r0, [r3, #20]
	str r0, [r2, #20]
	ldr r0, [r3, #24]
	str r0, [r2, #24]
	ldr r0, [r3, #28]
	str r0, [r2, #28]
	ldr r0, [r3, #32]
	str r0, [r2, #32]
	ldr r0, [r3, #36]
	str r0, [r2, #36]
	ldr r0, [r3, #40]
	str r0, [r2, #40]
	ldr r0, [r3, #44]
	str r0, [r2, #44]
	ldr r0, [r3, #48]
	str r0, [r2, #48]
	ldr r0, [r3, #52]
	str r0, [r2, #52]
	ldr r0, [r3, #56]
	str r0, [r2, #56]
	ldr r0, [r3, #60]
	str r0, [r2, #60]
	mov r0, r1
	add r1, r1, #16
	ldr r2, [sp, #24]
	cmp r1, r2
	bge label38
	b label37
label38:
	add r1, r0, #16
	ldr r2, [sp, #24]
	cmp r1, r2
	bge label40
	b label45
label47:
	ldr r6, [sp, #52]
	cmp r6, #1
	bne label48
	mov r7, #1
	mov r6, #0
	cmp r7, #1073741824
	bge label418
	b label74
label48:
	ldr r6, [sp, #52]
	cmp r6, #2
	bne label49
	cmp r4, r5
	ble label70
	add r1, r1, #1
	cmp r1, r3
	blt label11
	add r0, r0, #1
	ldr r1, [sp, #4]
	cmp r0, r1
	blt label8
	ldr r1, [sp, #0]
	ldr r0, [sp, #8]
	add r0, r0, r1
	ldr r2, [sp, #44]
	str r4, [r2, r0, lsl #2]
	ldr r0, [sp, #8]
	add r0, r0, #1
	ldr r5, [sp, #28]
	cmp r0, r5
	blt label169
	ldr r0, [sp, #16]
	add r0, r0, #1
	ldr r6, [sp, #20]
	cmp r0, r6
	blt label174
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label46
	mov r0, #0
	add r1, r0, #16
	ldr r2, [sp, #24]
	cmp r1, r2
	bge label38
	b label37
label49:
	ldr r6, [sp, #52]
	cmp r6, #3
	bne label59
	mov r7, #1
	mov r6, #0
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label56
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label56
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label56
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label56
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	b label747
label370:
	mov r4, r6
	add r1, r1, #1
	cmp r1, r3
	blt label11
	add r0, r0, #1
	ldr r1, [sp, #4]
	cmp r0, r1
	blt label8
	ldr r1, [sp, #0]
	ldr r0, [sp, #8]
	add r0, r0, r1
	ldr r2, [sp, #44]
	str r6, [r2, r0, lsl #2]
	ldr r0, [sp, #8]
	add r0, r0, #1
	ldr r5, [sp, #28]
	cmp r0, r5
	blt label169
	ldr r0, [sp, #16]
	add r0, r0, #1
	ldr r6, [sp, #20]
	cmp r0, r6
	blt label174
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label46
	mov r0, #0
	add r1, r0, #16
	ldr r2, [sp, #24]
	cmp r1, r2
	bge label38
	b label37
label747:
	sdiv r8, r4, r7
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label56
	b label778
label59:
	ldr r6, [sp, #52]
	cmp r6, #4
	bne label390
	mov r7, #1
	mov r6, #0
	cmp r7, #1073741824
	bge label394
	sdiv r8, r4, r7
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label68
	sdiv r8, r5, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label68
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label394
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label68
	sdiv r8, r5, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label68
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label394
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label68
	sdiv r8, r5, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label68
	b label722
label390:
	mov r4, #0
	add r1, r1, #1
	cmp r1, r3
	blt label11
	add r0, r0, #1
	ldr r1, [sp, #4]
	cmp r0, r1
	blt label8
	ldr r1, [sp, #0]
	ldr r0, [sp, #8]
	add r0, r0, r1
	ldr r2, [sp, #44]
	str r4, [r2, r0, lsl #2]
	ldr r0, [sp, #8]
	add r0, r0, #1
	ldr r5, [sp, #28]
	cmp r0, r5
	blt label169
	ldr r0, [sp, #16]
	add r0, r0, #1
	ldr r6, [sp, #20]
	cmp r0, r6
	blt label174
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label46
	mov r0, #0
	add r1, r0, #16
	ldr r2, [sp, #24]
	cmp r1, r2
	bge label38
	b label37
label722:
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label394
	b label757
label70:
	mov r4, r5
	add r1, r1, #1
	cmp r1, r3
	blt label11
	add r0, r0, #1
	ldr r1, [sp, #4]
	cmp r0, r1
	blt label8
	ldr r1, [sp, #0]
	ldr r0, [sp, #8]
	add r0, r0, r1
	ldr r2, [sp, #44]
	str r5, [r2, r0, lsl #2]
	ldr r0, [sp, #8]
	add r0, r0, #1
	ldr r5, [sp, #28]
	cmp r0, r5
	blt label169
	ldr r0, [sp, #16]
	add r0, r0, #1
	ldr r6, [sp, #20]
	cmp r0, r6
	blt label174
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label46
	mov r0, #0
	add r1, r0, #16
	ldr r2, [sp, #24]
	cmp r1, r2
	bge label38
	b label37
label759:
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	b label794
label16:
	ldr r5, [sp, #28]
	cmp r1, r5
	blt label17
	mov r5, #0
	ldr r6, [sp, #52]
	cmp r6, #0
	bne label47
	add r4, r4, r5
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
label794:
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
label798:
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	b label798
label17:
	ldr r5, [sp, #28]
	mla r6, r0, r5, r1
	ldr r5, [sp, #12]
	ldr r5, [r5, r6, lsl #2]
	ldr r6, [sp, #52]
	cmp r6, #0
	bne label47
	add r4, r4, r5
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	b label794
label21:
	cmp r4, #0
	bge label29
	add r4, r4, #1073741824
	cmp r4, #0
	bge label29
	add r4, r4, #1073741824
	cmp r4, #0
	bge label29
	add r4, r4, #1073741824
	cmp r4, #0
	bge label29
	add r4, r4, #1073741824
	cmp r4, #0
	bge label29
	add r4, r4, #1073741824
	cmp r4, #0
	bge label29
	add r4, r4, #1073741824
	cmp r4, #0
	bge label29
	add r4, r4, #1073741824
	cmp r4, #0
	bge label29
	add r4, r4, #1073741824
	cmp r4, #0
	bge label29
	add r4, r4, #1073741824
	cmp r4, #0
	bge label29
	add r4, r4, #1073741824
	cmp r4, #0
	bge label29
label797:
	add r4, r4, #1073741824
	cmp r4, #0
	bge label29
	b label797
label29:
	add r1, r1, #1
	cmp r1, r3
	blt label11
	add r0, r0, #1
	ldr r1, [sp, #4]
	cmp r0, r1
	blt label8
	ldr r1, [sp, #0]
	ldr r0, [sp, #8]
	add r0, r0, r1
	ldr r2, [sp, #44]
	str r4, [r2, r0, lsl #2]
	ldr r0, [sp, #8]
	add r0, r0, #1
	ldr r5, [sp, #28]
	cmp r0, r5
	blt label169
	ldr r0, [sp, #16]
	add r0, r0, #1
	ldr r6, [sp, #20]
	cmp r0, r6
	blt label174
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label46
	mov r0, #0
	add r1, r0, #16
	ldr r2, [sp, #24]
	cmp r1, r2
	bge label38
	b label37
label14:
	cmp r1, #0
	bge label15
	mov r5, #0
	ldr r6, [sp, #52]
	cmp r6, #0
	bne label47
	add r4, r4, r5
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	b label794
label15:
	ldr r6, [sp, #20]
	cmp r0, r6
	blt label16
	mov r5, #0
	ldr r6, [sp, #52]
	cmp r6, #0
	bne label47
	add r4, r4, r5
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	add r4, r4, #-1073741824
	cmp r4, #1073741824
	ble label21
	b label794
label74:
	sdiv r9, r4, r7
	mov r8, #2
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	mls r9, r10, r8, r9
	sdiv r10, r5, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	mls r8, r11, r8, r10
	cmp r9, r8
	bne label77
	lsl r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label418
	b label74
label77:
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label418
	b label74
label418:
	mov r4, r6
	add r1, r1, #1
	cmp r1, r3
	blt label11
	add r0, r0, #1
	ldr r1, [sp, #4]
	cmp r0, r1
	blt label8
	ldr r1, [sp, #0]
	ldr r0, [sp, #8]
	add r0, r0, r1
	ldr r2, [sp, #44]
	str r6, [r2, r0, lsl #2]
	ldr r0, [sp, #8]
	add r0, r0, #1
	ldr r5, [sp, #28]
	cmp r0, r5
	blt label169
	ldr r0, [sp, #16]
	add r0, r0, #1
	ldr r6, [sp, #20]
	cmp r0, r6
	blt label174
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label46
	mov r0, #0
	add r1, r0, #16
	ldr r2, [sp, #24]
	cmp r1, r2
	bge label38
	b label37
label778:
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	b label809
label56:
	sdiv r8, r5, r7
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label57
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label56
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label56
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label56
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label56
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
label809:
	sdiv r8, r4, r7
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label56
	b label778
label486:
	str r0, [sp, #48]
	ldr r1, [sp, #32]
	ldr r6, [r1, r0, lsl #2]
	str r6, [sp, #52]
	mov r0, #0
	str r0, [sp, #16]
	b label4
label40:
	add r1, r0, #16
	ldr r2, [sp, #24]
	cmp r1, r2
	bge label43
label42:
	ldr r2, [sp, #44]
	add r3, r2, r0, lsl #2
	ldr r2, [sp, #44]
	ldr r4, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	add r2, r5, r0, lsl #2
	ldr r5, [sp, #12]
	str r4, [r5, r0, lsl #2]
	ldr r0, [r3, #4]
	str r0, [r2, #4]
	ldr r0, [r3, #8]
	str r0, [r2, #8]
	ldr r0, [r3, #12]
	str r0, [r2, #12]
	ldr r0, [r3, #16]
	str r0, [r2, #16]
	ldr r0, [r3, #20]
	str r0, [r2, #20]
	ldr r0, [r3, #24]
	str r0, [r2, #24]
	ldr r0, [r3, #28]
	str r0, [r2, #28]
	ldr r0, [r3, #32]
	str r0, [r2, #32]
	ldr r0, [r3, #36]
	str r0, [r2, #36]
	ldr r0, [r3, #40]
	str r0, [r2, #40]
	ldr r0, [r3, #44]
	str r0, [r2, #44]
	ldr r0, [r3, #48]
	str r0, [r2, #48]
	ldr r0, [r3, #52]
	str r0, [r2, #52]
	ldr r0, [r3, #56]
	str r0, [r2, #56]
	ldr r0, [r3, #60]
	str r0, [r2, #60]
	mov r0, r1
	add r1, r1, #16
	ldr r2, [sp, #24]
	cmp r1, r2
	bge label43
	b label42
label43:
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r0, r2
	bge label46
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r0, r2
	bge label46
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r0, r2
	bge label46
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r0, r2
	bge label46
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r0, r2
	bge label46
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r0, r2
	bge label46
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r0, r2
	bge label46
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r0, r2
	bge label46
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r0, r2
	bge label46
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r0, r2
	bge label46
	b label804
label46:
	ldr r0, [sp, #48]
	add r0, r0, #1
	ldr r1, [sp, #36]
	cmp r0, r1
	bge label79
	b label486
label804:
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r0, r2
	bge label46
	b label804
label57:
	lsl r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label56
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label56
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label56
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label56
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label370
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label56
	b label778
label394:
	mov r4, r6
	add r1, r1, #1
	cmp r1, r3
	blt label11
	add r0, r0, #1
	ldr r1, [sp, #4]
	cmp r0, r1
	blt label8
	ldr r1, [sp, #0]
	ldr r0, [sp, #8]
	add r0, r0, r1
	ldr r2, [sp, #44]
	str r6, [r2, r0, lsl #2]
	ldr r0, [sp, #8]
	add r0, r0, #1
	ldr r5, [sp, #28]
	cmp r0, r5
	blt label169
	ldr r0, [sp, #16]
	add r0, r0, #1
	ldr r6, [sp, #20]
	cmp r0, r6
	blt label174
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label46
	mov r0, #0
	add r1, r0, #16
	ldr r2, [sp, #24]
	cmp r1, r2
	bge label38
	b label37
label757:
	sdiv r8, r4, r7
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label68
	b label788
label68:
	lsl r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label394
	sdiv r8, r4, r7
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label68
	sdiv r8, r5, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label68
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label394
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label68
	sdiv r8, r5, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label68
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label394
	sdiv r8, r4, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label68
	sdiv r8, r5, r7
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label68
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label394
	b label757
label819:
	lsl r6, r6, #1
	add r6, r6, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label394
	b label757
label788:
	sdiv r8, r5, r7
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r9, r8
	cmp r8, #1
	bne label68
	b label819
label45:
	ldr r2, [sp, #44]
	add r3, r2, r0, lsl #2
	ldr r2, [sp, #44]
	ldr r4, [r2, r0, lsl #2]
	ldr r5, [sp, #12]
	add r2, r5, r0, lsl #2
	ldr r5, [sp, #12]
	str r4, [r5, r0, lsl #2]
	ldr r0, [r3, #4]
	str r0, [r2, #4]
	ldr r0, [r3, #8]
	str r0, [r2, #8]
	ldr r0, [r3, #12]
	str r0, [r2, #12]
	ldr r0, [r3, #16]
	str r0, [r2, #16]
	ldr r0, [r3, #20]
	str r0, [r2, #20]
	ldr r0, [r3, #24]
	str r0, [r2, #24]
	ldr r0, [r3, #28]
	str r0, [r2, #28]
	ldr r0, [r3, #32]
	str r0, [r2, #32]
	ldr r0, [r3, #36]
	str r0, [r2, #36]
	ldr r0, [r3, #40]
	str r0, [r2, #40]
	ldr r0, [r3, #44]
	str r0, [r2, #44]
	ldr r0, [r3, #48]
	str r0, [r2, #48]
	ldr r0, [r3, #52]
	str r0, [r2, #52]
	ldr r0, [r3, #56]
	str r0, [r2, #56]
	ldr r0, [r3, #60]
	str r0, [r2, #60]
	mov r0, r1
	add r1, r1, #16
	ldr r2, [sp, #24]
	cmp r1, r2
	bge label40
	b label45
label79:
	mov r0, #116
	bl _sysy_stoptime
	ldr r2, [sp, #24]
	mov r0, r2
	ldr r5, [sp, #12]
	mov r1, r5
	bl putarray
	mov r0, #0
	add sp, sp, #68
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
