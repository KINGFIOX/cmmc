.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl t
t:
	push { r4, r5 }
	mov r2, r1
	cmp r0, r1
	bne label16
	b label2
label16:
	mov r1, r0
	mov r0, r2
	rsb r5, r2, #0
	mov r3, r2
	mov r4, #0
	b label7
label2:
	pop { r4, r5 }
	bx lr
label7:
	mla r2, r5, r4, r1
	cmp r3, r2
	bge label11
	sub r2, r2, r0
	cmp r0, r2
	bne label10
label29:
	mov r0, r2
	b label2
label10:
	add r4, r4, #1
	b label7
label11:
	sub r0, r0, r2
	cmp r2, r0
	bne label36
	b label29
label36:
	mov r1, r2
	rsb r5, r0, #0
	mov r3, r0
	mov r4, #0
	b label7
