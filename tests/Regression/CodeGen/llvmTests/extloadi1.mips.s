.data
.bss
.p2align 2
.globl handler_installed_6144_b
handler_installed_6144_b:
	.zero	4
.text
.p2align 2
.globl __mf_sigusr1_respond
__mf_sigusr1_respond:
	jr $ra
	nop
