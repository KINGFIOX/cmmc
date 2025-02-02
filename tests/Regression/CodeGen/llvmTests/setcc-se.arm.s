.arch armv7ve
.data
.bss
.p2align 2
.globl g1
g1:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl seteq0
seteq0:
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.p2align 4
.globl setne0
setne0:
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	bx lr
.p2align 4
.globl slti_beq0
slti_beq0:
	cmn r0, #32768
	bge label14
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
label14:
	bx lr
.p2align 4
.globl slti_beq1
slti_beq1:
	mvn r1, #32768
	cmp r0, r1
	bge label26
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
label26:
	bx lr
.p2align 4
.globl slti_beq2
slti_beq2:
	movw r1, #32767
	cmp r0, r1
	bge label39
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
label39:
	bx lr
.p2align 4
.globl slti_beq3
slti_beq3:
	cmp r0, #32768
	bge label52
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
label52:
	bx lr
.p2align 4
.globl sltiu_beq0
sltiu_beq0:
	movw r1, #32767
	cmp r0, r1
	bhs label64
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
label64:
	bx lr
.p2align 4
.globl sltiu_beq1
sltiu_beq1:
	cmp r0, #32768
	bhs label76
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
label76:
	bx lr
.p2align 4
.globl sltiu_beq2
sltiu_beq2:
	cmn r0, #32768
	bhs label87
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
label87:
	bx lr
.p2align 4
.globl sltiu_beq3
sltiu_beq3:
	mvn r1, #32768
	cmp r0, r1
	bhs label98
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
label98:
	bx lr
