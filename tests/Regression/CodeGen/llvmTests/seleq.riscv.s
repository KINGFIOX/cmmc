.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl t
t:
	.4byte	10
.align 4
.globl f
f:
	.4byte	199
.align 4
.globl a
a:
	.4byte	1
.align 4
.globl b
b:
	.4byte	10
.align 4
.globl c
c:
	.4byte	1
.align 4
.globl z1
z1:
	.4byte	0
.align 4
.globl z2
z2:
	.4byte	0
.align 4
.globl z3
z3:
	.4byte	0
.align 4
.globl z4
z4:
	.4byte	0
.text
.globl calc_seleq
calc_seleq:
.p2align 2
pcrel86:
	auipc a0, %pcrel_hi(a)
pcrel87:
	auipc a1, %pcrel_hi(b)
	lw a3, %pcrel_lo(pcrel86)(a0)
pcrel88:
	auipc a0, %pcrel_hi(f)
	lw a4, %pcrel_lo(pcrel87)(a1)
	addi a1, a0, %pcrel_lo(pcrel88)
pcrel89:
	auipc a0, %pcrel_hi(t)
	addi a2, a0, %pcrel_lo(pcrel89)
	beq a3, a4, label30
	lw a0, 0(a2)
	j label2
label30:
	lw a0, 0(a1)
label2:
	auipc a5, %pcrel_hi(z1)
	sw a0, %pcrel_lo(label2)(a5)
	beq a3, a4, label4
	lw a0, 0(a2)
	j label5
label4:
	lw a0, 0(a1)
label5:
	auipc a4, %pcrel_hi(z2)
	sw a0, %pcrel_lo(label5)(a4)
pcrel90:
	auipc a0, %pcrel_hi(c)
	lw a4, %pcrel_lo(pcrel90)(a0)
	bne a3, a4, label45
	lw a0, 0(a2)
label8:
	auipc a5, %pcrel_hi(z3)
	sw a0, %pcrel_lo(label8)(a5)
	beq a3, a4, label10
	j label52
label45:
	lw a0, 0(a1)
	j label8
label52:
	lw a0, 0(a1)
	j label11
label10:
	lw a0, 0(a2)
label11:
	auipc a1, %pcrel_hi(z4)
	sw a0, %pcrel_lo(label11)(a1)
	ret
