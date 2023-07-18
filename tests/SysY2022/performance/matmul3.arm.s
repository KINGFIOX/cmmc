.arch armv7ve
.data
.bss
.align 4
a:
	.zero	4000000
.align 4
b:
	.zero	4000000
.align 4
c:
	.zero	4000000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r5, #0
	movw r7, #:lower16:b
	movw r4, #:lower16:a
	sub sp, sp, #20
	movt r7, #:upper16:b
	movt r4, #:upper16:a
	str r4, [sp, #4]
	movw r4, #:lower16:c
	movt r4, #:upper16:c
	str r4, [sp, #0]
	str r7, [sp, #8]
	cmp r5, #1000
	bge label4
	b label44
label4:
	mov r0, #23
	bl _sysy_starttime
	mov r0, #0
	cmp r0, #1000
	bge label60
	b label59
label60:
	mov r2, #0
	mov r0, #4000
	ldr r4, [sp, #0]
	cmp r2, #1000
	mla r3, r2, r0, r4
	ldr r4, [sp, #4]
	mla r1, r2, r0, r4
	bge label200
	mov r0, #0
	cmp r0, #1000
	bge label15
label623:
	mov r4, #0
	mov r5, r4
	b label16
label200:
	mov r2, #0
	mov r0, #4000
	ldr r4, [sp, #0]
	cmp r2, #1000
	mla r1, r2, r0, r4
	bge label253
	mvn r0, #-2147483648
	mov r3, #0
	cmp r3, #1000
	bge label503
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r0, r4
	movge r0, r4
	cmp r3, #1000
	bge label503
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r0, r4
	movge r0, r4
	cmp r3, #1000
	bge label503
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r0, r4
	movge r0, r4
	cmp r3, #1000
	bge label503
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r0, r4
	movge r0, r4
	cmp r3, #1000
	bge label503
	b label639
label15:
	add r2, r2, #1
	mov r0, #4000
	ldr r4, [sp, #0]
	cmp r2, #1000
	mla r3, r2, r0, r4
	ldr r4, [sp, #4]
	mla r1, r2, r0, r4
	bge label200
	mov r0, #0
	cmp r0, #1000
	bge label15
	b label623
label16:
	mov r6, #4000
	ldr r7, [sp, #8]
	ldr r8, [r1, r4, lsl #2]
	mla r6, r4, r6, r7
	add r7, r1, r4, lsl #2
	add r4, r4, #4
	cmp r4, #1000
	add r10, r6, #4000
	ldr r9, [r6, r0, lsl #2]
	ldr r11, [r7, #4]
	ldr r10, [r10, r0, lsl #2]
	mul r10, r11, r10
	mla r8, r8, r9, r10
	ldr r10, [r7, #8]
	add r9, r6, #8000
	ldr r9, [r9, r0, lsl #2]
	ldr r7, [r7, #12]
	mla r8, r10, r9, r8
	movw r9, #12000
	add r6, r6, r9
	ldr r6, [r6, r0, lsl #2]
	mla r6, r7, r6, r8
	add r5, r5, r6
	bge label19
	b label16
label19:
	str r5, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #1000
	bge label15
	b label623
label639:
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r0, r4
	movge r0, r4
	b label37
label253:
	mov r0, #0
	cmp r0, #1000
	bge label257
	b label256
label257:
	mov r5, #0
	mov r0, r5
	cmp r5, #1000
	bge label31
label617:
	mov r1, #4000
	ldr r4, [sp, #0]
	mov r2, #0
	mla r1, r0, r1, r4
	mov r4, r5
	b label33
label31:
	mov r0, #92
	bl _sysy_stoptime
	mov r0, r5
	bl putint
	mov r0, #0
	b label46
label37:
	cmp r3, #1000
	bge label503
	b label639
label503:
	mov r3, #0
label40:
	add r4, r1, r3, lsl #2
	str r0, [r1, r3, lsl #2]
	add r3, r3, #16
	str r0, [r4, #4]
	cmp r3, #992
	str r0, [r4, #8]
	str r0, [r4, #12]
	str r0, [r4, #16]
	str r0, [r4, #20]
	str r0, [r4, #24]
	str r0, [r4, #28]
	str r0, [r4, #32]
	str r0, [r4, #36]
	str r0, [r4, #40]
	str r0, [r4, #44]
	str r0, [r4, #48]
	str r0, [r4, #52]
	str r0, [r4, #56]
	str r0, [r4, #60]
	bge label42
	b label40
label42:
	add r4, r1, r3, lsl #2
	str r0, [r1, r3, lsl #2]
	add r2, r2, #1
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #12]
	str r0, [r4, #16]
	str r0, [r4, #20]
	str r0, [r4, #24]
	str r0, [r4, #28]
	mov r0, #4000
	ldr r4, [sp, #0]
	cmp r2, #1000
	mla r1, r2, r0, r4
	bge label253
	mvn r0, #-2147483648
	mov r3, #0
	cmp r3, #1000
	bge label503
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r0, r4
	movge r0, r4
	cmp r3, #1000
	bge label503
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r0, r4
	movge r0, r4
	cmp r3, #1000
	bge label503
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r0, r4
	movge r0, r4
	cmp r3, #1000
	bge label503
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r0, r4
	movge r0, r4
	cmp r3, #1000
	bge label503
	b label639
label33:
	add r3, r1, r2, lsl #2
	ldr r5, [r1, r2, lsl #2]
	add r2, r2, #16
	cmp r2, #992
	add r4, r4, r5
	ldr r5, [r3, #4]
	add r4, r4, r5
	ldr r5, [r3, #8]
	add r4, r4, r5
	ldr r5, [r3, #12]
	add r4, r4, r5
	ldr r5, [r3, #16]
	add r4, r4, r5
	ldr r5, [r3, #20]
	add r4, r4, r5
	ldr r5, [r3, #24]
	add r4, r4, r5
	ldr r5, [r3, #28]
	add r4, r4, r5
	ldr r5, [r3, #32]
	add r4, r4, r5
	ldr r5, [r3, #36]
	add r4, r4, r5
	ldr r5, [r3, #40]
	add r4, r4, r5
	ldr r5, [r3, #44]
	add r4, r4, r5
	ldr r5, [r3, #48]
	add r4, r4, r5
	ldr r5, [r3, #52]
	add r4, r4, r5
	ldr r5, [r3, #56]
	ldr r3, [r3, #60]
	add r4, r4, r5
	add r3, r4, r3
	bge label36
	mov r4, r3
	b label33
label36:
	add r4, r1, r2, lsl #2
	add r0, r0, #1
	ldr r1, [r1, r2, lsl #2]
	ldr r2, [r4, #4]
	add r1, r3, r1
	add r1, r1, r2
	ldr r2, [r4, #8]
	add r1, r1, r2
	ldr r2, [r4, #12]
	add r1, r1, r2
	ldr r2, [r4, #16]
	add r1, r1, r2
	ldr r2, [r4, #20]
	add r1, r1, r2
	ldr r2, [r4, #24]
	add r1, r1, r2
	ldr r2, [r4, #28]
	add r5, r1, r2
	cmp r0, #1000
	bge label31
	b label617
label256:
	mov r1, #4000
	ldr r4, [sp, #0]
	mov r2, #0
	mla r1, r0, r1, r4
	b label25
label27:
	mov r3, #4000
	ldr r4, [sp, #0]
	mla r3, r2, r3, r4
	ldr r4, [r3, r0, lsl #2]
	rsb r5, r4, #0
	str r5, [r1, r2, lsl #2]
	add r4, r1, r2, lsl #2
	add r1, r3, #4000
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #4]
	add r1, r3, #8000
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #8]
	movw r1, #12000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #12]
	add r1, r3, #16000
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #16]
	movw r1, #20000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #20]
	movw r1, #24000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #24]
	movw r1, #28000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	add r0, r0, #1
	rsb r1, r1, #0
	str r1, [r4, #28]
	cmp r0, #1000
	bge label257
	b label256
label25:
	mov r3, #4000
	ldr r4, [sp, #0]
	mla r3, r2, r3, r4
	ldr r4, [r3, r0, lsl #2]
	rsb r5, r4, #0
	str r5, [r1, r2, lsl #2]
	add r4, r1, r2, lsl #2
	add r5, r3, #4000
	add r2, r2, #16
	ldr r5, [r5, r0, lsl #2]
	cmp r2, #992
	rsb r5, r5, #0
	str r5, [r4, #4]
	add r5, r3, #8000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #8]
	movw r5, #12000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #12]
	add r5, r3, #16000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #16]
	movw r5, #20000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #20]
	movw r5, #24000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #24]
	movw r5, #28000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #28]
	add r5, r3, #32000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #32]
	movw r5, #36000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #36]
	movw r5, #40000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #40]
	movw r5, #44000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #44]
	movw r5, #48000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #48]
	movw r5, #52000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #52]
	movw r5, #56000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #56]
	movw r5, #60000
	add r3, r3, r5
	ldr r3, [r3, r0, lsl #2]
	rsb r3, r3, #0
	str r3, [r4, #60]
	bge label27
	b label25
label44:
	mov r0, #4000
	ldr r4, [sp, #4]
	mla r0, r5, r0, r4
	bl getarray
	cmp r0, #1000
	beq label45
	b label46
label45:
	add r5, r5, #1
	cmp r5, #1000
	bge label4
	b label44
label46:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label59:
	mov r1, #4000
	ldr r7, [sp, #8]
	mov r2, #0
	mla r1, r0, r1, r7
label8:
	mov r3, #4000
	ldr r4, [sp, #4]
	mla r3, r2, r3, r4
	add r4, r1, r2, lsl #2
	ldr r5, [r3, r0, lsl #2]
	str r5, [r1, r2, lsl #2]
	add r2, r2, #16
	add r5, r3, #4000
	cmp r2, #992
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #4]
	add r5, r3, #8000
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #8]
	movw r5, #12000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #12]
	add r5, r3, #16000
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #16]
	movw r5, #20000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #20]
	movw r5, #24000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #24]
	movw r5, #28000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #28]
	add r5, r3, #32000
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #32]
	movw r5, #36000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #36]
	movw r5, #40000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #40]
	movw r5, #44000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #44]
	movw r5, #48000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #48]
	movw r5, #52000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #52]
	movw r5, #56000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r4, #56]
	movw r5, #60000
	add r3, r3, r5
	ldr r3, [r3, r0, lsl #2]
	str r3, [r4, #60]
	bge label10
	b label8
label10:
	mov r3, #4000
	ldr r4, [sp, #4]
	mla r3, r2, r3, r4
	add r4, r1, r2, lsl #2
	ldr r5, [r3, r0, lsl #2]
	str r5, [r1, r2, lsl #2]
	add r1, r3, #4000
	ldr r1, [r1, r0, lsl #2]
	str r1, [r4, #4]
	add r1, r3, #8000
	ldr r1, [r1, r0, lsl #2]
	str r1, [r4, #8]
	movw r1, #12000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	str r1, [r4, #12]
	add r1, r3, #16000
	ldr r1, [r1, r0, lsl #2]
	str r1, [r4, #16]
	movw r1, #20000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	str r1, [r4, #20]
	movw r1, #24000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	str r1, [r4, #24]
	movw r1, #28000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	add r0, r0, #1
	str r1, [r4, #28]
	cmp r0, #1000
	bge label60
	b label59
