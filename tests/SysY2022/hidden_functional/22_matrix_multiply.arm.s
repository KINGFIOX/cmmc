.arch armv7ve
.data
.bss
.align 8
a:
	.zero	40000
.align 8
b:
	.zero	40000
.align 8
res:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getint
	str r0, [sp, #16]
	bl getint
	mov r5, #0
	sub r7, r0, #4
	str r0, [sp, #12]
	mov r8, r0
	str r7, [sp, #4]
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	mov r4, r7
	ldr r0, [sp, #16]
	cmp r0, r5
	ble label12
.p2align 4
label5:
	ldr r8, [sp, #12]
	cmp r8, #0
	ble label6
	mov r6, r4
	mov r8, #0
	b label8
.p2align 4
label84:
	add r5, r5, #1
	add r4, r4, #400
	ldr r0, [sp, #16]
	cmp r0, r5
	bgt label5
label12:
	bl getint
	mov r5, r0
	bl getint
	mov r6, #0
	movw r4, #:lower16:b
	movt r4, #:upper16:b
	str r0, [sp, #8]
	mov r8, r0
	cmp r5, r6
	bgt label16
	b label92
.p2align 4
label8:
	bl getint
	str r0, [r6, #0]
	add r0, r8, #1
	ldr r8, [sp, #12]
	cmp r8, r0
	ble label84
	add r6, r6, #4
	mov r8, r0
	b label8
label92:
	str r7, [sp, #0]
	movw r4, #:lower16:res
	movt r4, #:upper16:res
	mov r2, #0
	mov r1, r4
	b label24
.p2align 4
label16:
	ldr r8, [sp, #8]
	cmp r8, #0
	ble label17
	mov r9, r4
	mov r8, #0
	b label19
.p2align 4
label103:
	add r6, r6, #1
	add r4, r4, #400
	cmp r5, r6
	bgt label16
	b label92
label24:
	ldr r0, [sp, #16]
	cmp r0, r2
	bgt label40
label28:
	movw r4, #:lower16:res
	movt r4, #:upper16:res
	mov r5, #0
	ldr r0, [sp, #16]
	cmp r0, r5
	bgt label32
	b label39
.p2align 4
label40:
	mov r3, r1
	mov r0, #0
	ldr r8, [sp, #8]
	cmp r8, r0
	ble label44
.p2align 4
label45:
	ldr r8, [sp, #12]
	cmp r8, #0
	ble label46
	ldr r6, [r3, #0]
	cmp r8, #4
	ble label141
	movw r4, #:lower16:b
	movt r4, #:upper16:b
	mov r5, #0
.p2align 4
label49:
	ldr r7, [sp, #0]
	add r11, r4, #400
	add r7, r7, r5, lsl #2
	add r5, r5, #4
	ldr r8, [r7, #0]
	ldr r9, [r4, r0, lsl #2]
	ldr r10, [r7, #4]
	ldr r11, [r11, r0, lsl #2]
	mul r10, r10, r11
	mla r8, r8, r9, r10
	ldr r9, [r7, #8]
	add r10, r4, #800
	ldr r10, [r10, r0, lsl #2]
	ldr r7, [r7, #12]
	mla r8, r9, r10, r8
	add r9, r4, #1200
	ldr r9, [r9, r0, lsl #2]
	mla r7, r7, r9, r8
	add r6, r6, r7
	ldr r7, [sp, #4]
	cmp r7, r5
	ble label178
	add r4, r4, #1600
	b label49
.p2align 4
label194:
	str r5, [r3, #0]
	add r0, r0, #1
	add r3, r3, #4
	ldr r8, [sp, #8]
	cmp r8, r0
	bgt label45
.p2align 4
label221:
	add r2, r2, #1
	add r1, r1, #400
	ldr r7, [sp, #0]
	add r7, r7, #400
	str r7, [sp, #0]
	ldr r0, [sp, #16]
	cmp r0, r2
	bgt label40
	b label28
.p2align 4
label178:
	mov r7, #400
	movw r4, #:lower16:b
	movt r4, #:upper16:b
	mov r8, r6
	mla r4, r5, r7, r4
	mov r6, r5
	ldr r7, [sp, #0]
	ldr r5, [r7, r5, lsl #2]
	add r6, r6, #1
	ldr r7, [r4, r0, lsl #2]
	mla r5, r5, r7, r8
	ldr r8, [sp, #12]
	cmp r8, r6
	bgt label59
	b label220
.p2align 4
label55:
	ldr r7, [sp, #0]
	ldr r5, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r7, [r4, r0, lsl #2]
	mla r5, r5, r7, r8
	ldr r8, [sp, #12]
	cmp r8, r6
	ble label194
.p2align 4
label59:
	add r4, r4, #400
	mov r8, r5
	b label55
.p2align 4
label19:
	bl getint
	str r0, [r9, #0]
	add r0, r8, #1
	ldr r8, [sp, #8]
	cmp r8, r0
	ble label103
	add r9, r9, #4
	mov r8, r0
	b label19
.p2align 4
label32:
	ldr r8, [sp, #8]
	cmp r8, #0
	ble label38
	mov r6, r4
	mov r7, #0
	b label34
.p2align 4
label38:
	mov r0, #10
	bl putch
	add r4, r4, #400
	add r5, r5, #1
	ldr r0, [sp, #16]
	cmp r0, r5
	bgt label32
label39:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label34:
	ldr r0, [r6, #0]
	bl putint
	mov r0, #32
	bl putch
	ldr r8, [sp, #8]
	add r7, r7, #1
	cmp r8, r7
	ble label38
	add r6, r6, #4
	b label34
.p2align 4
label46:
	add r0, r0, #1
	add r3, r3, #4
	ldr r8, [sp, #8]
	cmp r8, r0
	bgt label45
	add r2, r2, #1
	add r1, r1, #400
	ldr r7, [sp, #0]
	add r7, r7, #400
	str r7, [sp, #0]
	ldr r0, [sp, #16]
	cmp r0, r2
	bgt label40
	b label28
.p2align 4
label141:
	movw r4, #:lower16:b
	movt r4, #:upper16:b
	mov r8, r6
	mov r6, #0
	ldr r7, [sp, #0]
	ldr r5, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r7, [r4, r0, lsl #2]
	mla r5, r5, r7, r8
	ldr r8, [sp, #12]
	cmp r8, r6
	bgt label59
	str r5, [r3, #0]
	add r0, r0, #1
	add r3, r3, #4
	ldr r8, [sp, #8]
	cmp r8, r0
	bgt label45
	b label221
.p2align 4
label220:
	str r5, [r3, #0]
	add r0, r0, #1
	add r3, r3, #4
	ldr r8, [sp, #8]
	cmp r8, r0
	bgt label45
	add r2, r2, #1
	add r1, r1, #400
	ldr r7, [sp, #0]
	add r7, r7, #400
	str r7, [sp, #0]
	ldr r0, [sp, #16]
	cmp r0, r2
	bgt label40
	b label28
label6:
	add r5, r5, #1
	add r4, r4, #400
	ldr r0, [sp, #16]
	cmp r0, r5
	bgt label5
	b label12
label17:
	add r6, r6, #1
	add r4, r4, #400
	cmp r5, r6
	bgt label16
	b label92
label44:
	add r2, r2, #1
	add r1, r1, #400
	ldr r7, [sp, #0]
	add r7, r7, #400
	str r7, [sp, #0]
	ldr r0, [sp, #16]
	cmp r0, r2
	bgt label40
	b label28
