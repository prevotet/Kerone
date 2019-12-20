
nova.elf:     file format elf32-littlearm


Disassembly of section .init:

00200000 <_init>:
  200000:	e1a0c00d 	mov	ip, sp
  200004:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
  200008:	e24cb004 	sub	fp, ip, #4

0020000c <_start>:
  20000c:	e321f0d3 	msr	CPSR_c, #211	; 0xd3
  200010:	ee110f30 	mrc	15, 0, r0, cr1, cr0, {1}
  200014:	e3800040 	orr	r0, r0, #64	; 0x40
  200018:	e3800001 	orr	r0, r0, #1
  20001c:	ee010f30 	mcr	15, 0, r0, cr1, cr0, {1}
  200020:	e59f4228 	ldr	r4, [pc, #552]	; 200250 <_start+0x244>
  200024:	e1a00004 	mov	r0, r4
  200028:	e3a03000 	mov	r3, #0
  20002c:	e2806901 	add	r6, r0, #16384	; 0x4000
  200030:	e4803004 	str	r3, [r0], #4
  200034:	e4803004 	str	r3, [r0], #4
  200038:	e4803004 	str	r3, [r0], #4
  20003c:	e4803004 	str	r3, [r0], #4
  200040:	e1300006 	teq	r0, r6
  200044:	1afffff9 	bne	200030 <_start+0x24>
  200048:	e59f5204 	ldr	r5, [pc, #516]	; 200254 <_start+0x248>
  20004c:	e3a03000 	mov	r3, #0
  200050:	e1a07004 	mov	r7, r4
  200054:	e59f61fc 	ldr	r6, [pc, #508]	; 200258 <_start+0x24c>
  200058:	e4875004 	str	r5, [r7], #4
  20005c:	e2855601 	add	r5, r5, #1048576	; 0x100000
  200060:	e2833601 	add	r3, r3, #1048576	; 0x100000
  200064:	e1530006 	cmp	r3, r6
  200068:	dafffffa 	ble	200058 <_start+0x4c>
  20006c:	e59f31e8 	ldr	r3, [pc, #488]	; 20025c <_start+0x250>
  200070:	e59f51dc 	ldr	r5, [pc, #476]	; 200254 <_start+0x248>
  200074:	e0855003 	add	r5, r5, r3
  200078:	e3a07b03 	mov	r7, #3072	; 0xc00
  20007c:	e1a07107 	lsl	r7, r7, #2
  200080:	e0847007 	add	r7, r4, r7
  200084:	e59f31d4 	ldr	r3, [pc, #468]	; 200260 <_start+0x254>
  200088:	e3a06501 	mov	r6, #4194304	; 0x400000
  20008c:	e4875004 	str	r5, [r7], #4
  200090:	e2855601 	add	r5, r5, #1048576	; 0x100000
  200094:	e2866601 	add	r6, r6, #1048576	; 0x100000
  200098:	e1560003 	cmp	r6, r3
  20009c:	bafffffa 	blt	20008c <_start+0x80>
  2000a0:	e3a0320e 	mov	r3, #-536870912	; 0xe0000000
  2000a4:	e1a06003 	mov	r6, r3
  2000a8:	e59f51b4 	ldr	r5, [pc, #436]	; 200264 <_start+0x258>
  2000ac:	e0855003 	add	r5, r5, r3
  2000b0:	e3a07c0e 	mov	r7, #3584	; 0xe00
  2000b4:	e1a07107 	lsl	r7, r7, #2
  2000b8:	e0847007 	add	r7, r4, r7
  2000bc:	e59f31a4 	ldr	r3, [pc, #420]	; 200268 <_start+0x25c>
  2000c0:	e4875004 	str	r5, [r7], #4
  2000c4:	e2855601 	add	r5, r5, #1048576	; 0x100000
  2000c8:	e2866601 	add	r6, r6, #1048576	; 0x100000
  2000cc:	e1560003 	cmp	r6, r3
  2000d0:	bafffffa 	blt	2000c0 <_start+0xb4>
  2000d4:	e3a034e1 	mov	r3, #-520093696	; 0xe1000000
  2000d8:	e1a06003 	mov	r6, r3
  2000dc:	e59f5180 	ldr	r5, [pc, #384]	; 200264 <_start+0x258>
  2000e0:	e0855003 	add	r5, r5, r3
  2000e4:	e3a07ee1 	mov	r7, #3600	; 0xe10
  2000e8:	e1a07107 	lsl	r7, r7, #2
  2000ec:	e0847007 	add	r7, r4, r7
  2000f0:	e3a034e6 	mov	r3, #-436207616	; 0xe6000000
  2000f4:	e4875004 	str	r5, [r7], #4
  2000f8:	e2855601 	add	r5, r5, #1048576	; 0x100000
  2000fc:	e2866601 	add	r6, r6, #1048576	; 0x100000
  200100:	e1560003 	cmp	r6, r3
  200104:	bafffffa 	blt	2000f4 <_start+0xe8>
  200108:	e3a0333e 	mov	r3, #-134217728	; 0xf8000000
  20010c:	e1a06003 	mov	r6, r3
  200110:	e59f514c 	ldr	r5, [pc, #332]	; 200264 <_start+0x258>
  200114:	e0855003 	add	r5, r5, r3
  200118:	e3a07d3e 	mov	r7, #3968	; 0xf80
  20011c:	e1a07107 	lsl	r7, r7, #2
  200120:	e0847007 	add	r7, r4, r7
  200124:	e3a034f9 	mov	r3, #-117440512	; 0xf9000000
  200128:	e4875004 	str	r5, [r7], #4
  20012c:	e2855601 	add	r5, r5, #1048576	; 0x100000
  200130:	e2866601 	add	r6, r6, #1048576	; 0x100000
  200134:	e1560003 	cmp	r6, r3
  200138:	bafffffa 	blt	200128 <_start+0x11c>
  20013c:	e3a0333f 	mov	r3, #-67108864	; 0xfc000000
  200140:	e1a06003 	mov	r6, r3
  200144:	e59f5118 	ldr	r5, [pc, #280]	; 200264 <_start+0x258>
  200148:	e0855003 	add	r5, r5, r3
  20014c:	e3a07d3f 	mov	r7, #4032	; 0xfc0
  200150:	e1a07107 	lsl	r7, r7, #2
  200154:	e0847007 	add	r7, r4, r7
  200158:	e3a034fe 	mov	r3, #-33554432	; 0xfe000000
  20015c:	e4875004 	str	r5, [r7], #4
  200160:	e2855601 	add	r5, r5, #1048576	; 0x100000
  200164:	e2866601 	add	r6, r6, #1048576	; 0x100000
  200168:	e1560003 	cmp	r6, r3
  20016c:	bafffffa 	blt	20015c <_start+0x150>
  200170:	e284504a 	add	r5, r4, #74	; 0x4a
  200174:	ee025f10 	mcr	15, 0, r5, cr2, cr0, {0}
  200178:	e3a06015 	mov	r6, #21
  20017c:	ee036f10 	mcr	15, 0, r6, cr3, cr0, {0}
  200180:	e59f00e4 	ldr	r0, [pc, #228]	; 20026c <_start+0x260>
  200184:	f57ff06f 	isb	sy
  200188:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
  20018c:	f57ff06f 	isb	sy
  200190:	e1a00000 	nop			; (mov r0, r0)
  200194:	ee111f50 	mrc	15, 0, r1, cr1, cr0, {2}
  200198:	e381160f 	orr	r1, r1, #15728640	; 0xf00000
  20019c:	ee011f50 	mcr	15, 0, r1, cr1, cr0, {2}
  2001a0:	eef81a10 	vmrs	r1, fpexc
  2001a4:	e3811101 	orr	r1, r1, #1073741824	; 0x40000000
  2001a8:	eee81a10 	vmsr	fpexc, r1
  2001ac:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
  2001b0:	e3800b02 	orr	r0, r0, #2048	; 0x800
  2001b4:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
  2001b8:	ee110f30 	mrc	15, 0, r0, cr1, cr0, {1}
  2001bc:	e3800004 	orr	r0, r0, #4
  2001c0:	e3800002 	orr	r0, r0, #2
  2001c4:	ee010f30 	mcr	15, 0, r0, cr1, cr0, {1}
  2001c8:	e10f7000 	mrs	r7, CPSR
  2001cc:	e1a03007 	mov	r3, r7
  2001d0:	e3e0501f 	mvn	r5, #31
  2001d4:	e0056003 	and	r6, r5, r3
  2001d8:	e3866012 	orr	r6, r6, #18
  2001dc:	e129f006 	msr	CPSR_fc, r6
  2001e0:	e59fd088 	ldr	sp, [pc, #136]	; 200270 <_start+0x264>
  2001e4:	e129f007 	msr	CPSR_fc, r7
  2001e8:	e10f7000 	mrs	r7, CPSR
  2001ec:	e1a03007 	mov	r3, r7
  2001f0:	e3e0501f 	mvn	r5, #31
  2001f4:	e0056003 	and	r6, r5, r3
  2001f8:	e386601b 	orr	r6, r6, #27
  2001fc:	e129f006 	msr	CPSR_fc, r6
  200200:	e59fd06c 	ldr	sp, [pc, #108]	; 200274 <_start+0x268>
  200204:	e129f007 	msr	CPSR_fc, r7
  200208:	e10f7000 	mrs	r7, CPSR
  20020c:	e1a03007 	mov	r3, r7
  200210:	e3e0501f 	mvn	r5, #31
  200214:	e0056003 	and	r6, r5, r3
  200218:	e3866017 	orr	r6, r6, #23
  20021c:	e129f006 	msr	CPSR_fc, r6
  200220:	e59fd050 	ldr	sp, [pc, #80]	; 200278 <_start+0x26c>
  200224:	e129f007 	msr	CPSR_fc, r7
  200228:	e10f7000 	mrs	r7, CPSR
  20022c:	e1a03007 	mov	r3, r7
  200230:	e3e0501f 	mvn	r5, #31
  200234:	e0056003 	and	r6, r5, r3
  200238:	e3866017 	orr	r6, r6, #23
  20023c:	e129f006 	msr	CPSR_fc, r6
  200240:	e59fd030 	ldr	sp, [pc, #48]	; 200278 <_start+0x26c>
  200244:	e129f007 	msr	CPSR_fc, r7
  200248:	e59fd02c 	ldr	sp, [pc, #44]	; 20027c <_start+0x270>
  20024c:	e59ff02c 	ldr	pc, [pc, #44]	; 200280 <_start+0x274>
  200250:	00408000 	subeq	r8, r0, r0
  200254:	0001140e 	andeq	r1, r1, lr, lsl #8
  200258:	00202000 	eoreq	r2, r0, r0
  20025c:	00400000 	subeq	r0, r0, r0
  200260:	01800000 	orreq	r0, r0, r0
  200264:	00000c06 	andeq	r0, r0, r6, lsl #24
  200268:	e0300000 	eors	r0, r0, r0
  20026c:	08c5387d 	stmiaeq	r5, {r0, r2, r3, r4, r5, r6, fp, ip, sp}^
  200270:	cffff000 	svcgt	0x00fff000
  200274:	cfffe000 	svcgt	0x00ffe000
  200278:	cfffd000 	svcgt	0x00ffd000
  20027c:	00202000 	eoreq	r2, r0, r0
  200280:	c00002e0 	andgt	r0, r0, r0, ror #5
  200284:	e24bd028 	sub	sp, fp, #40	; 0x28
  200288:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
  20028c:	e12fff1e 	bx	lr

Disassembly of section .text:

c0000000 <deregister_tm_clones>:
c0000000:	e92d4008 	push	{r3, lr}
c0000004:	e3060108 	movw	r0, #24840	; 0x6108
c0000008:	e59f3024 	ldr	r3, [pc, #36]	; c0000034 <deregister_tm_clones+0x34>
c000000c:	e34c0000 	movt	r0, #49152	; 0xc000
c0000010:	e0603003 	rsb	r3, r0, r3
c0000014:	e3530006 	cmp	r3, #6
c0000018:	98bd8008 	popls	{r3, pc}
c000001c:	e3003000 	movw	r3, #0
c0000020:	e3403000 	movt	r3, #0
c0000024:	e3530000 	cmp	r3, #0
c0000028:	08bd8008 	popeq	{r3, pc}
c000002c:	e12fff33 	blx	r3
c0000030:	e8bd8008 	pop	{r3, pc}
c0000034:	c000610b 	andgt	r6, r0, fp, lsl #2

c0000038 <register_tm_clones>:
c0000038:	e92d4008 	push	{r3, lr}
c000003c:	e3060108 	movw	r0, #24840	; 0x6108
c0000040:	e3063108 	movw	r3, #24840	; 0x6108
c0000044:	e34c0000 	movt	r0, #49152	; 0xc000
c0000048:	e34c3000 	movt	r3, #49152	; 0xc000
c000004c:	e0603003 	rsb	r3, r0, r3
c0000050:	e1a03143 	asr	r3, r3, #2
c0000054:	e0833fa3 	add	r3, r3, r3, lsr #31
c0000058:	e1b010c3 	asrs	r1, r3, #1
c000005c:	08bd8008 	popeq	{r3, pc}
c0000060:	e3002000 	movw	r2, #0
c0000064:	e3402000 	movt	r2, #0
c0000068:	e3520000 	cmp	r2, #0
c000006c:	08bd8008 	popeq	{r3, pc}
c0000070:	e12fff32 	blx	r2
c0000074:	e8bd8008 	pop	{r3, pc}

c0000078 <__do_global_dtors_aux>:
c0000078:	e92d4010 	push	{r4, lr}
c000007c:	e3064b08 	movw	r4, #27400	; 0x6b08
c0000080:	e34c4000 	movt	r4, #49152	; 0xc000
c0000084:	e5d43000 	ldrb	r3, [r4]
c0000088:	e3530000 	cmp	r3, #0
c000008c:	18bd8010 	popne	{r4, pc}
c0000090:	ebffffda 	bl	c0000000 <deregister_tm_clones>
c0000094:	e3003000 	movw	r3, #0
c0000098:	e3403000 	movt	r3, #0
c000009c:	e3530000 	cmp	r3, #0
c00000a0:	0a000002 	beq	c00000b0 <__do_global_dtors_aux+0x38>
c00000a4:	e3060108 	movw	r0, #24840	; 0x6108
c00000a8:	e34c0000 	movt	r0, #49152	; 0xc000
c00000ac:	e320f000 	nop	{0}
c00000b0:	e3a03001 	mov	r3, #1
c00000b4:	e5c43000 	strb	r3, [r4]
c00000b8:	e8bd8010 	pop	{r4, pc}

c00000bc <frame_dummy>:
c00000bc:	e92d4008 	push	{r3, lr}
c00000c0:	e3003000 	movw	r3, #0
c00000c4:	e3403000 	movt	r3, #0
c00000c8:	e3530000 	cmp	r3, #0
c00000cc:	0a000004 	beq	c00000e4 <frame_dummy+0x28>
c00000d0:	e3060108 	movw	r0, #24840	; 0x6108
c00000d4:	e3061b0c 	movw	r1, #27404	; 0x6b0c
c00000d8:	e34c0000 	movt	r0, #49152	; 0xc000
c00000dc:	e34c1000 	movt	r1, #49152	; 0xc000
c00000e0:	e320f000 	nop	{0}
c00000e4:	e3060104 	movw	r0, #24836	; 0x6104
c00000e8:	e34c0000 	movt	r0, #49152	; 0xc000
c00000ec:	e5903000 	ldr	r3, [r0]
c00000f0:	e3530000 	cmp	r3, #0
c00000f4:	0a000004 	beq	c000010c <frame_dummy+0x50>
c00000f8:	e3003000 	movw	r3, #0
c00000fc:	e3403000 	movt	r3, #0
c0000100:	e3530000 	cmp	r3, #0
c0000104:	0a000000 	beq	c000010c <frame_dummy+0x50>
c0000108:	e12fff33 	blx	r3
c000010c:	e8bd4008 	pop	{r3, lr}
c0000110:	eaffffc8 	b	c0000038 <register_tm_clones>
	...

c0000120 <vector_svc>:
c0000120:	e24dd044 	sub	sp, sp, #68	; 0x44
c0000124:	e88d1fff 	stm	sp, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
c0000128:	e28d803c 	add	r8, sp, #60	; 0x3c
c000012c:	e9486000 	stmdb	r8, {sp, lr}^
c0000130:	e14f8000 	mrs	r8, SPSR
c0000134:	e3a0703c 	mov	r7, #60	; 0x3c
c0000138:	e3a06040 	mov	r6, #64	; 0x40
c000013c:	e78de007 	str	lr, [sp, r7]
c0000140:	e78d8006 	str	r8, [sp, r6]
c0000144:	e24e0004 	sub	r0, lr, #4
c0000148:	e5900000 	ldr	r0, [r0]
c000014c:	e3c004ff 	bic	r0, r0, #-16777216	; 0xff000000
c0000150:	e3a0d20d 	mov	sp, #-805306368	; 0xd0000000
c0000154:	ea000e59 	b	c0003ac0 <syscall_handler>

c0000158 <vector_irq>:
c0000158:	e25ee004 	subs	lr, lr, #4
c000015c:	e24dd00c 	sub	sp, sp, #12
c0000160:	e8ad4001 	stmia	sp!, {r0, lr}
c0000164:	e14f0000 	mrs	r0, SPSR
c0000168:	e8ad0001 	stmia	sp!, {r0}
c000016c:	e10f0000 	mrs	r0, CPSR
c0000170:	e3e0e01f 	mvn	lr, #31
c0000174:	e000000e 	and	r0, r0, lr
c0000178:	e3800013 	orr	r0, r0, #19
c000017c:	e169f000 	msr	SPSR_fc, r0
c0000180:	e1a0000d 	mov	r0, sp
c0000184:	e59fe138 	ldr	lr, [pc, #312]	; c00002c4 <__abt_usr+0x44>
c0000188:	e1b0f00e 	movs	pc, lr

c000018c <vector_und>:
c000018c:	e25ee004 	subs	lr, lr, #4
c0000190:	e24dd00c 	sub	sp, sp, #12
c0000194:	e8ad4001 	stmia	sp!, {r0, lr}
c0000198:	e14f0000 	mrs	r0, SPSR
c000019c:	e8ad0001 	stmia	sp!, {r0}
c00001a0:	e10f0000 	mrs	r0, CPSR
c00001a4:	e3e0e01f 	mvn	lr, #31
c00001a8:	e000000e 	and	r0, r0, lr
c00001ac:	e3800013 	orr	r0, r0, #19
c00001b0:	e169f000 	msr	SPSR_fc, r0
c00001b4:	e1a0000d 	mov	r0, sp
c00001b8:	e59fe108 	ldr	lr, [pc, #264]	; c00002c8 <__abt_usr+0x48>
c00001bc:	e1b0f00e 	movs	pc, lr

c00001c0 <vector_abort>:
c00001c0:	e25ee008 	subs	lr, lr, #8
c00001c4:	e24dd00c 	sub	sp, sp, #12
c00001c8:	e8ad4001 	stmia	sp!, {r0, lr}
c00001cc:	e14f0000 	mrs	r0, SPSR
c00001d0:	e8ad0001 	stmia	sp!, {r0}
c00001d4:	e10f0000 	mrs	r0, CPSR
c00001d8:	e3e0e01f 	mvn	lr, #31
c00001dc:	e000000e 	and	r0, r0, lr
c00001e0:	e3800013 	orr	r0, r0, #19
c00001e4:	e169f000 	msr	SPSR_fc, r0
c00001e8:	e1a0000d 	mov	r0, sp
c00001ec:	e59fe0d8 	ldr	lr, [pc, #216]	; c00002cc <__abt_usr+0x4c>
c00001f0:	e1b0f00e 	movs	pc, lr

c00001f4 <vector_prefetch>:
c00001f4:	ea000f9c 	b	c000406c <prefetch>

c00001f8 <__irq_usr>:
c00001f8:	e24dd044 	sub	sp, sp, #68	; 0x44
c00001fc:	e240000c 	sub	r0, r0, #12
c0000200:	e590e000 	ldr	lr, [r0]
c0000204:	e58de000 	str	lr, [sp]
c0000208:	e28dd004 	add	sp, sp, #4
c000020c:	e88d1ffe 	stm	sp, {r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
c0000210:	e24dd004 	sub	sp, sp, #4
c0000214:	e28d803c 	add	r8, sp, #60	; 0x3c
c0000218:	e9486000 	stmdb	r8, {sp, lr}^
c000021c:	e3a0703c 	mov	r7, #60	; 0x3c
c0000220:	e3a06040 	mov	r6, #64	; 0x40
c0000224:	e5901004 	ldr	r1, [r0, #4]
c0000228:	e5902008 	ldr	r2, [r0, #8]
c000022c:	e78d1007 	str	r1, [sp, r7]
c0000230:	e78d2006 	str	r2, [sp, r6]
c0000234:	e3a0d20d 	mov	sp, #-805306368	; 0xd0000000
c0000238:	ea000be1 	b	c00031c4 <irq_handler>

c000023c <__und_usr>:
c000023c:	e24dd044 	sub	sp, sp, #68	; 0x44
c0000240:	e240000c 	sub	r0, r0, #12
c0000244:	e590e000 	ldr	lr, [r0]
c0000248:	e58de000 	str	lr, [sp]
c000024c:	e28dd004 	add	sp, sp, #4
c0000250:	e88d1ffe 	stm	sp, {r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
c0000254:	e24dd004 	sub	sp, sp, #4
c0000258:	e28d803c 	add	r8, sp, #60	; 0x3c
c000025c:	e9486000 	stmdb	r8, {sp, lr}^
c0000260:	e3a0703c 	mov	r7, #60	; 0x3c
c0000264:	e3a06040 	mov	r6, #64	; 0x40
c0000268:	e5901004 	ldr	r1, [r0, #4]
c000026c:	e5902008 	ldr	r2, [r0, #8]
c0000270:	e78d1007 	str	r1, [sp, r7]
c0000274:	e78d2006 	str	r2, [sp, r6]
c0000278:	e3a0d20d 	mov	sp, #-805306368	; 0xd0000000
c000027c:	ea000f0f 	b	c0003ec0 <und_handler_vfp>

c0000280 <__abt_usr>:
c0000280:	e24dd044 	sub	sp, sp, #68	; 0x44
c0000284:	e240000c 	sub	r0, r0, #12
c0000288:	e590e000 	ldr	lr, [r0]
c000028c:	e58de000 	str	lr, [sp]
c0000290:	e28dd004 	add	sp, sp, #4
c0000294:	e88d1ffe 	stm	sp, {r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
c0000298:	e24dd004 	sub	sp, sp, #4
c000029c:	e28d803c 	add	r8, sp, #60	; 0x3c
c00002a0:	e9486000 	stmdb	r8, {sp, lr}^
c00002a4:	e3a0703c 	mov	r7, #60	; 0x3c
c00002a8:	e3a06040 	mov	r6, #64	; 0x40
c00002ac:	e5901004 	ldr	r1, [r0, #4]
c00002b0:	e5902008 	ldr	r2, [r0, #8]
c00002b4:	e78d1007 	str	r1, [sp, r7]
c00002b8:	e78d2006 	str	r2, [sp, r6]
c00002bc:	e3a0d20d 	mov	sp, #-805306368	; 0xd0000000
c00002c0:	ea000f3c 	b	c0003fb8 <abort_handler>
c00002c4:	c00001f8 	strdgt	r0, [r0], -r8
c00002c8:	c000023c 	andgt	r0, r0, ip, lsr r2
c00002cc:	c0000280 	andgt	r0, r0, r0, lsl #5
c00002d0:	e320f000 	nop	{0}
c00002d4:	e320f000 	nop	{0}
c00002d8:	e320f000 	nop	{0}
c00002dc:	e320f000 	nop	{0}

c00002e0 <jmp_init>:
c00002e0:	eb000f67 	bl	c0004084 <init>
c00002e4:	e3a0d20d 	mov	sp, #-805306368	; 0xd0000000
c00002e8:	e51f0000 	ldr	r0, [pc, #-0]	; c00002f0 <jmp_init+0x10>
c00002ec:	ea000fc0 	b	c00041f4 <bootstrap>
c00002f0:	0180b000 	orreq	fp, r0, r0

c00002f4 <flush_kern_tlb_range>:
c00002f4:	f57ff04f 	dsb	sy
c00002f8:	e1a00620 	lsr	r0, r0, #12
c00002fc:	e1a01621 	lsr	r1, r1, #12
c0000300:	e1a00600 	lsl	r0, r0, #12
c0000304:	e1a01601 	lsl	r1, r1, #12
c0000308:	ee080f33 	mcr	15, 0, r0, cr8, cr3, {1}
c000030c:	e2800a01 	add	r0, r0, #4096	; 0x1000
c0000310:	e1500001 	cmp	r0, r1
c0000314:	3afffffb 	bcc	c0000308 <flush_kern_tlb_range+0x14>
c0000318:	f57ff04f 	dsb	sy
c000031c:	f57ff06f 	isb	sy
c0000320:	e1a0f00e 	mov	pc, lr

c0000324 <vector_start>:
c0000324:	ea000006 	b	c0000344 <reset>
c0000328:	e59ff01c 	ldr	pc, [pc, #28]	; c000034c <vector_end>
c000032c:	e59ff01c 	ldr	pc, [pc, #28]	; c0000350 <vector_end+0x4>
c0000330:	e59ff01c 	ldr	pc, [pc, #28]	; c0000354 <vector_end+0x8>
c0000334:	e59ff01c 	ldr	pc, [pc, #28]	; c0000358 <vector_end+0xc>
c0000338:	e320f000 	nop	{0}
c000033c:	e59ff018 	ldr	pc, [pc, #24]	; c000035c <vector_end+0x10>
c0000340:	ea000000 	b	c0000348 <vector_fiq>

c0000344 <reset>:
c0000344:	e320f000 	nop	{0}

c0000348 <vector_fiq>:
c0000348:	e320f000 	nop	{0}

c000034c <vector_end>:
c000034c:	c000018c 	andgt	r0, r0, ip, lsl #3
c0000350:	c0000120 	andgt	r0, r0, r0, lsr #2
c0000354:	c00001f4 	strdgt	r0, [r0], -r4
c0000358:	c00001c0 	andgt	r0, r0, r0, asr #3
c000035c:	c0000158 	andgt	r0, r0, r8, asr r1

c0000360 <__aeabi_uidiv>:
c0000360:	e2512001 	subs	r2, r1, #1
c0000364:	012fff1e 	bxeq	lr
c0000368:	3a000074 	bcc	c0000540 <__aeabi_uidiv+0x1e0>
c000036c:	e1500001 	cmp	r0, r1
c0000370:	9a00006b 	bls	c0000524 <__aeabi_uidiv+0x1c4>
c0000374:	e1110002 	tst	r1, r2
c0000378:	0a00006c 	beq	c0000530 <__aeabi_uidiv+0x1d0>
c000037c:	e16f3f10 	clz	r3, r0
c0000380:	e16f2f11 	clz	r2, r1
c0000384:	e0423003 	sub	r3, r2, r3
c0000388:	e273301f 	rsbs	r3, r3, #31
c000038c:	10833083 	addne	r3, r3, r3, lsl #1
c0000390:	e3a02000 	mov	r2, #0
c0000394:	108ff103 	addne	pc, pc, r3, lsl #2
c0000398:	e320f000 	nop	{0}
c000039c:	e1500f81 	cmp	r0, r1, lsl #31
c00003a0:	e0a22002 	adc	r2, r2, r2
c00003a4:	20400f81 	subcs	r0, r0, r1, lsl #31
c00003a8:	e1500f01 	cmp	r0, r1, lsl #30
c00003ac:	e0a22002 	adc	r2, r2, r2
c00003b0:	20400f01 	subcs	r0, r0, r1, lsl #30
c00003b4:	e1500e81 	cmp	r0, r1, lsl #29
c00003b8:	e0a22002 	adc	r2, r2, r2
c00003bc:	20400e81 	subcs	r0, r0, r1, lsl #29
c00003c0:	e1500e01 	cmp	r0, r1, lsl #28
c00003c4:	e0a22002 	adc	r2, r2, r2
c00003c8:	20400e01 	subcs	r0, r0, r1, lsl #28
c00003cc:	e1500d81 	cmp	r0, r1, lsl #27
c00003d0:	e0a22002 	adc	r2, r2, r2
c00003d4:	20400d81 	subcs	r0, r0, r1, lsl #27
c00003d8:	e1500d01 	cmp	r0, r1, lsl #26
c00003dc:	e0a22002 	adc	r2, r2, r2
c00003e0:	20400d01 	subcs	r0, r0, r1, lsl #26
c00003e4:	e1500c81 	cmp	r0, r1, lsl #25
c00003e8:	e0a22002 	adc	r2, r2, r2
c00003ec:	20400c81 	subcs	r0, r0, r1, lsl #25
c00003f0:	e1500c01 	cmp	r0, r1, lsl #24
c00003f4:	e0a22002 	adc	r2, r2, r2
c00003f8:	20400c01 	subcs	r0, r0, r1, lsl #24
c00003fc:	e1500b81 	cmp	r0, r1, lsl #23
c0000400:	e0a22002 	adc	r2, r2, r2
c0000404:	20400b81 	subcs	r0, r0, r1, lsl #23
c0000408:	e1500b01 	cmp	r0, r1, lsl #22
c000040c:	e0a22002 	adc	r2, r2, r2
c0000410:	20400b01 	subcs	r0, r0, r1, lsl #22
c0000414:	e1500a81 	cmp	r0, r1, lsl #21
c0000418:	e0a22002 	adc	r2, r2, r2
c000041c:	20400a81 	subcs	r0, r0, r1, lsl #21
c0000420:	e1500a01 	cmp	r0, r1, lsl #20
c0000424:	e0a22002 	adc	r2, r2, r2
c0000428:	20400a01 	subcs	r0, r0, r1, lsl #20
c000042c:	e1500981 	cmp	r0, r1, lsl #19
c0000430:	e0a22002 	adc	r2, r2, r2
c0000434:	20400981 	subcs	r0, r0, r1, lsl #19
c0000438:	e1500901 	cmp	r0, r1, lsl #18
c000043c:	e0a22002 	adc	r2, r2, r2
c0000440:	20400901 	subcs	r0, r0, r1, lsl #18
c0000444:	e1500881 	cmp	r0, r1, lsl #17
c0000448:	e0a22002 	adc	r2, r2, r2
c000044c:	20400881 	subcs	r0, r0, r1, lsl #17
c0000450:	e1500801 	cmp	r0, r1, lsl #16
c0000454:	e0a22002 	adc	r2, r2, r2
c0000458:	20400801 	subcs	r0, r0, r1, lsl #16
c000045c:	e1500781 	cmp	r0, r1, lsl #15
c0000460:	e0a22002 	adc	r2, r2, r2
c0000464:	20400781 	subcs	r0, r0, r1, lsl #15
c0000468:	e1500701 	cmp	r0, r1, lsl #14
c000046c:	e0a22002 	adc	r2, r2, r2
c0000470:	20400701 	subcs	r0, r0, r1, lsl #14
c0000474:	e1500681 	cmp	r0, r1, lsl #13
c0000478:	e0a22002 	adc	r2, r2, r2
c000047c:	20400681 	subcs	r0, r0, r1, lsl #13
c0000480:	e1500601 	cmp	r0, r1, lsl #12
c0000484:	e0a22002 	adc	r2, r2, r2
c0000488:	20400601 	subcs	r0, r0, r1, lsl #12
c000048c:	e1500581 	cmp	r0, r1, lsl #11
c0000490:	e0a22002 	adc	r2, r2, r2
c0000494:	20400581 	subcs	r0, r0, r1, lsl #11
c0000498:	e1500501 	cmp	r0, r1, lsl #10
c000049c:	e0a22002 	adc	r2, r2, r2
c00004a0:	20400501 	subcs	r0, r0, r1, lsl #10
c00004a4:	e1500481 	cmp	r0, r1, lsl #9
c00004a8:	e0a22002 	adc	r2, r2, r2
c00004ac:	20400481 	subcs	r0, r0, r1, lsl #9
c00004b0:	e1500401 	cmp	r0, r1, lsl #8
c00004b4:	e0a22002 	adc	r2, r2, r2
c00004b8:	20400401 	subcs	r0, r0, r1, lsl #8
c00004bc:	e1500381 	cmp	r0, r1, lsl #7
c00004c0:	e0a22002 	adc	r2, r2, r2
c00004c4:	20400381 	subcs	r0, r0, r1, lsl #7
c00004c8:	e1500301 	cmp	r0, r1, lsl #6
c00004cc:	e0a22002 	adc	r2, r2, r2
c00004d0:	20400301 	subcs	r0, r0, r1, lsl #6
c00004d4:	e1500281 	cmp	r0, r1, lsl #5
c00004d8:	e0a22002 	adc	r2, r2, r2
c00004dc:	20400281 	subcs	r0, r0, r1, lsl #5
c00004e0:	e1500201 	cmp	r0, r1, lsl #4
c00004e4:	e0a22002 	adc	r2, r2, r2
c00004e8:	20400201 	subcs	r0, r0, r1, lsl #4
c00004ec:	e1500181 	cmp	r0, r1, lsl #3
c00004f0:	e0a22002 	adc	r2, r2, r2
c00004f4:	20400181 	subcs	r0, r0, r1, lsl #3
c00004f8:	e1500101 	cmp	r0, r1, lsl #2
c00004fc:	e0a22002 	adc	r2, r2, r2
c0000500:	20400101 	subcs	r0, r0, r1, lsl #2
c0000504:	e1500081 	cmp	r0, r1, lsl #1
c0000508:	e0a22002 	adc	r2, r2, r2
c000050c:	20400081 	subcs	r0, r0, r1, lsl #1
c0000510:	e1500001 	cmp	r0, r1
c0000514:	e0a22002 	adc	r2, r2, r2
c0000518:	20400001 	subcs	r0, r0, r1
c000051c:	e1a00002 	mov	r0, r2
c0000520:	e12fff1e 	bx	lr
c0000524:	03a00001 	moveq	r0, #1
c0000528:	13a00000 	movne	r0, #0
c000052c:	e12fff1e 	bx	lr
c0000530:	e16f2f11 	clz	r2, r1
c0000534:	e262201f 	rsb	r2, r2, #31
c0000538:	e1a00230 	lsr	r0, r0, r2
c000053c:	e12fff1e 	bx	lr
c0000540:	e3500000 	cmp	r0, #0
c0000544:	13e00000 	mvnne	r0, #0
c0000548:	ea000007 	b	c000056c <__aeabi_idiv0>

c000054c <__aeabi_uidivmod>:
c000054c:	e3510000 	cmp	r1, #0
c0000550:	0afffffa 	beq	c0000540 <__aeabi_uidiv+0x1e0>
c0000554:	e92d4003 	push	{r0, r1, lr}
c0000558:	ebffff80 	bl	c0000360 <__aeabi_uidiv>
c000055c:	e8bd4006 	pop	{r1, r2, lr}
c0000560:	e0030092 	mul	r3, r2, r0
c0000564:	e0411003 	sub	r1, r1, r3
c0000568:	e12fff1e 	bx	lr

c000056c <__aeabi_idiv0>:
c000056c:	e12fff1e 	bx	lr

c0000570 <memcpy>:
c0000570:	e3520003 	cmp	r2, #3
c0000574:	e92d0ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp}
c0000578:	e24dd058 	sub	sp, sp, #88	; 0x58
c000057c:	8a00000a 	bhi	c00005ac <memcpy+0x3c>
c0000580:	e3520000 	cmp	r2, #0
c0000584:	0a000005 	beq	c00005a0 <memcpy+0x30>
c0000588:	e3a03000 	mov	r3, #0
c000058c:	e7d1c003 	ldrb	ip, [r1, r3]
c0000590:	e7c0c003 	strb	ip, [r0, r3]
c0000594:	e2833001 	add	r3, r3, #1
c0000598:	e1530002 	cmp	r3, r2
c000059c:	1afffffa 	bne	c000058c <memcpy+0x1c>
c00005a0:	e28dd058 	add	sp, sp, #88	; 0x58
c00005a4:	e8bd0ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp}
c00005a8:	e12fff1e 	bx	lr
c00005ac:	e3100003 	tst	r0, #3
c00005b0:	e0802002 	add	r2, r0, r2
c00005b4:	e58d2020 	str	r2, [sp, #32]
c00005b8:	0a00000b 	beq	c00005ec <memcpy+0x7c>
c00005bc:	e2803001 	add	r3, r0, #1
c00005c0:	e2812001 	add	r2, r1, #1
c00005c4:	e2031003 	and	r1, r3, #3
c00005c8:	e552c001 	ldrb	ip, [r2, #-1]
c00005cc:	e3510000 	cmp	r1, #0
c00005d0:	e1a0b003 	mov	fp, r3
c00005d4:	e1a01002 	mov	r1, r2
c00005d8:	e2833001 	add	r3, r3, #1
c00005dc:	e543c002 	strb	ip, [r3, #-2]
c00005e0:	e2822001 	add	r2, r2, #1
c00005e4:	1afffff6 	bne	c00005c4 <memcpy+0x54>
c00005e8:	ea000000 	b	c00005f0 <memcpy+0x80>
c00005ec:	e1a0b000 	mov	fp, r0
c00005f0:	e2113003 	ands	r3, r1, #3
c00005f4:	1a00001f 	bne	c0000678 <memcpy+0x108>
c00005f8:	e59d2020 	ldr	r2, [sp, #32]
c00005fc:	e06b9002 	rsb	r9, fp, r2
c0000600:	e359000f 	cmp	r9, #15
c0000604:	ca000032 	bgt	c00006d4 <memcpy+0x164>
c0000608:	e3590003 	cmp	r9, #3
c000060c:	c28b3004 	addgt	r3, fp, #4
c0000610:	c2812004 	addgt	r2, r1, #4
c0000614:	da000009 	ble	c0000640 <memcpy+0xd0>
c0000618:	e59d4020 	ldr	r4, [sp, #32]
c000061c:	e1a0b003 	mov	fp, r3
c0000620:	e512c004 	ldr	ip, [r2, #-4]
c0000624:	e0631004 	rsb	r1, r3, r4
c0000628:	e2833004 	add	r3, r3, #4
c000062c:	e3510003 	cmp	r1, #3
c0000630:	e1a01002 	mov	r1, r2
c0000634:	e503c008 	str	ip, [r3, #-8]
c0000638:	e2822004 	add	r2, r2, #4
c000063c:	cafffff5 	bgt	c0000618 <memcpy+0xa8>
c0000640:	e59d8020 	ldr	r8, [sp, #32]
c0000644:	e158000b 	cmp	r8, fp
c0000648:	9affffd4 	bls	c00005a0 <memcpy+0x30>
c000064c:	e59da020 	ldr	sl, [sp, #32]
c0000650:	e28b3001 	add	r3, fp, #1
c0000654:	e2811001 	add	r1, r1, #1
c0000658:	e28a2001 	add	r2, sl, #1
c000065c:	e551c001 	ldrb	ip, [r1, #-1]
c0000660:	e2833001 	add	r3, r3, #1
c0000664:	e1530002 	cmp	r3, r2
c0000668:	e2811001 	add	r1, r1, #1
c000066c:	e543c002 	strb	ip, [r3, #-2]
c0000670:	1afffff9 	bne	c000065c <memcpy+0xec>
c0000674:	eaffffc9 	b	c00005a0 <memcpy+0x30>
c0000678:	e59da020 	ldr	sl, [sp, #32]
c000067c:	e0632001 	rsb	r2, r3, r1
c0000680:	e06bc00a 	rsb	ip, fp, sl
c0000684:	e35c0003 	cmp	ip, #3
c0000688:	e592c000 	ldr	ip, [r2]
c000068c:	daffffeb 	ble	c0000640 <memcpy+0xd0>
c0000690:	e2635004 	rsb	r5, r3, #4
c0000694:	e1a06183 	lsl	r6, r3, #3
c0000698:	e28b3004 	add	r3, fp, #4
c000069c:	e1a05185 	lsl	r5, r5, #3
c00006a0:	e59d8020 	ldr	r8, [sp, #32]
c00006a4:	e1a0b003 	mov	fp, r3
c00006a8:	e5b24004 	ldr	r4, [r2, #4]!
c00006ac:	e1a0c63c 	lsr	ip, ip, r6
c00006b0:	e0637008 	rsb	r7, r3, r8
c00006b4:	e2833004 	add	r3, r3, #4
c00006b8:	e3570003 	cmp	r7, #3
c00006bc:	e2811004 	add	r1, r1, #4
c00006c0:	e18cc514 	orr	ip, ip, r4, lsl r5
c00006c4:	e503c008 	str	ip, [r3, #-8]
c00006c8:	e1a0c004 	mov	ip, r4
c00006cc:	cafffff3 	bgt	c00006a0 <memcpy+0x130>
c00006d0:	eaffffda 	b	c0000640 <memcpy+0xd0>
c00006d4:	e31b000f 	tst	fp, #15
c00006d8:	0a000082 	beq	c00008e8 <memcpy+0x378>
c00006dc:	e28b2004 	add	r2, fp, #4
c00006e0:	e2813004 	add	r3, r1, #4
c00006e4:	e513c004 	ldr	ip, [r3, #-4]
c00006e8:	e312000f 	tst	r2, #15
c00006ec:	e1a0b002 	mov	fp, r2
c00006f0:	e1a01003 	mov	r1, r3
c00006f4:	e2822004 	add	r2, r2, #4
c00006f8:	e2833004 	add	r3, r3, #4
c00006fc:	e50bc004 	str	ip, [fp, #-4]
c0000700:	1afffff7 	bne	c00006e4 <memcpy+0x174>
c0000704:	e59d3020 	ldr	r3, [sp, #32]
c0000708:	e311000f 	tst	r1, #15
c000070c:	e06b9003 	rsb	r9, fp, r3
c0000710:	1a000082 	bne	c0000920 <memcpy+0x3b0>
c0000714:	e3590d0a 	cmp	r9, #640	; 0x280
c0000718:	f5d1f040 	pld	[r1, #64]	; 0x40
c000071c:	f5d1f080 	pld	[r1, #128]	; 0x80
c0000720:	f5d1f0c0 	pld	[r1, #192]	; 0xc0
c0000724:	2a000080 	bcs	c000092c <memcpy+0x3bc>
c0000728:	e3a03010 	mov	r3, #16
c000072c:	e3a02040 	mov	r2, #64	; 0x40
c0000730:	e3a0cc01 	mov	ip, #256	; 0x100
c0000734:	e3a07000 	mov	r7, #0
c0000738:	e159000c 	cmp	r9, ip
c000073c:	3a00010e 	bcc	c0000b7c <memcpy+0x60c>
c0000740:	e1a02007 	mov	r2, r7
c0000744:	e1a0700c 	mov	r7, ip
c0000748:	e58d0040 	str	r0, [sp, #64]	; 0x40
c000074c:	e2826010 	add	r6, r2, #16
c0000750:	e2825020 	add	r5, r2, #32
c0000754:	e2824030 	add	r4, r2, #48	; 0x30
c0000758:	e282a060 	add	sl, r2, #96	; 0x60
c000075c:	e58da018 	str	sl, [sp, #24]
c0000760:	e282c040 	add	ip, r2, #64	; 0x40
c0000764:	e2823050 	add	r3, r2, #80	; 0x50
c0000768:	e2820070 	add	r0, r2, #112	; 0x70
c000076c:	e282a080 	add	sl, r2, #128	; 0x80
c0000770:	e58d001c 	str	r0, [sp, #28]
c0000774:	e58da024 	str	sl, [sp, #36]	; 0x24
c0000778:	e2820090 	add	r0, r2, #144	; 0x90
c000077c:	e282a0a0 	add	sl, r2, #160	; 0xa0
c0000780:	e58d0028 	str	r0, [sp, #40]	; 0x28
c0000784:	e58da02c 	str	sl, [sp, #44]	; 0x2c
c0000788:	e28200b0 	add	r0, r2, #176	; 0xb0
c000078c:	e282a0c0 	add	sl, r2, #192	; 0xc0
c0000790:	e58d0030 	str	r0, [sp, #48]	; 0x30
c0000794:	e58da034 	str	sl, [sp, #52]	; 0x34
c0000798:	e28200d0 	add	r0, r2, #208	; 0xd0
c000079c:	e282a0e0 	add	sl, r2, #224	; 0xe0
c00007a0:	e58d0038 	str	r0, [sp, #56]	; 0x38
c00007a4:	e58da03c 	str	sl, [sp, #60]	; 0x3c
c00007a8:	e28200f0 	add	r0, r2, #240	; 0xf0
c00007ac:	e081a002 	add	sl, r1, r2
c00007b0:	e08b2002 	add	r2, fp, r2
c00007b4:	ecda0b04 	vldmia	sl, {d16-d17}
c00007b8:	e081a006 	add	sl, r1, r6
c00007bc:	ecc20b04 	vstmia	r2, {d16-d17}
c00007c0:	e08b6006 	add	r6, fp, r6
c00007c4:	ecda0b04 	vldmia	sl, {d16-d17}
c00007c8:	e0812005 	add	r2, r1, r5
c00007cc:	ecc60b04 	vstmia	r6, {d16-d17}
c00007d0:	e08b5005 	add	r5, fp, r5
c00007d4:	ecd20b04 	vldmia	r2, {d16-d17}
c00007d8:	e0812004 	add	r2, r1, r4
c00007dc:	ecc50b04 	vstmia	r5, {d16-d17}
c00007e0:	e08b4004 	add	r4, fp, r4
c00007e4:	ecd20b04 	vldmia	r2, {d16-d17}
c00007e8:	ecc40b04 	vstmia	r4, {d16-d17}
c00007ec:	e59d4018 	ldr	r4, [sp, #24]
c00007f0:	e081200c 	add	r2, r1, ip
c00007f4:	e08bc00c 	add	ip, fp, ip
c00007f8:	ecd20b04 	vldmia	r2, {d16-d17}
c00007fc:	e0812003 	add	r2, r1, r3
c0000800:	eccc0b04 	vstmia	ip, {d16-d17}
c0000804:	e08b3003 	add	r3, fp, r3
c0000808:	ecd20b04 	vldmia	r2, {d16-d17}
c000080c:	e0812004 	add	r2, r1, r4
c0000810:	ecc30b04 	vstmia	r3, {d16-d17}
c0000814:	e08b3004 	add	r3, fp, r4
c0000818:	e59d401c 	ldr	r4, [sp, #28]
c000081c:	ecd20b04 	vldmia	r2, {d16-d17}
c0000820:	ecc30b04 	vstmia	r3, {d16-d17}
c0000824:	e0812004 	add	r2, r1, r4
c0000828:	e08b3004 	add	r3, fp, r4
c000082c:	e59d4024 	ldr	r4, [sp, #36]	; 0x24
c0000830:	ecd20b04 	vldmia	r2, {d16-d17}
c0000834:	ecc30b04 	vstmia	r3, {d16-d17}
c0000838:	e2878c01 	add	r8, r7, #256	; 0x100
c000083c:	e0812004 	add	r2, r1, r4
c0000840:	e08b3004 	add	r3, fp, r4
c0000844:	e59d4028 	ldr	r4, [sp, #40]	; 0x28
c0000848:	ecd20b04 	vldmia	r2, {d16-d17}
c000084c:	ecc30b04 	vstmia	r3, {d16-d17}
c0000850:	e1590008 	cmp	r9, r8
c0000854:	e0812004 	add	r2, r1, r4
c0000858:	e08b3004 	add	r3, fp, r4
c000085c:	e59d402c 	ldr	r4, [sp, #44]	; 0x2c
c0000860:	ecd20b04 	vldmia	r2, {d16-d17}
c0000864:	ecc30b04 	vstmia	r3, {d16-d17}
c0000868:	e0812004 	add	r2, r1, r4
c000086c:	e08b3004 	add	r3, fp, r4
c0000870:	ecd20b04 	vldmia	r2, {d16-d17}
c0000874:	ecc30b04 	vstmia	r3, {d16-d17}
c0000878:	e59d4030 	ldr	r4, [sp, #48]	; 0x30
c000087c:	e0812004 	add	r2, r1, r4
c0000880:	e08b3004 	add	r3, fp, r4
c0000884:	e59d4034 	ldr	r4, [sp, #52]	; 0x34
c0000888:	ecd20b04 	vldmia	r2, {d16-d17}
c000088c:	ecc30b04 	vstmia	r3, {d16-d17}
c0000890:	e0812004 	add	r2, r1, r4
c0000894:	e08b3004 	add	r3, fp, r4
c0000898:	e59d4038 	ldr	r4, [sp, #56]	; 0x38
c000089c:	ecd20b04 	vldmia	r2, {d16-d17}
c00008a0:	ecc30b04 	vstmia	r3, {d16-d17}
c00008a4:	e0812004 	add	r2, r1, r4
c00008a8:	e08b3004 	add	r3, fp, r4
c00008ac:	e59d403c 	ldr	r4, [sp, #60]	; 0x3c
c00008b0:	ecd20b04 	vldmia	r2, {d16-d17}
c00008b4:	ecc30b04 	vstmia	r3, {d16-d17}
c00008b8:	e0812004 	add	r2, r1, r4
c00008bc:	e08b3004 	add	r3, fp, r4
c00008c0:	ecd20b04 	vldmia	r2, {d16-d17}
c00008c4:	e0812000 	add	r2, r1, r0
c00008c8:	ecc30b04 	vstmia	r3, {d16-d17}
c00008cc:	e08b3000 	add	r3, fp, r0
c00008d0:	ecd20b04 	vldmia	r2, {d16-d17}
c00008d4:	e1a02007 	mov	r2, r7
c00008d8:	ecc30b04 	vstmia	r3, {d16-d17}
c00008dc:	3a0000a3 	bcc	c0000b70 <memcpy+0x600>
c00008e0:	e1a07008 	mov	r7, r8
c00008e4:	eaffff98 	b	c000074c <memcpy+0x1dc>
c00008e8:	e311000f 	tst	r1, #15
c00008ec:	0affff88 	beq	c0000714 <memcpy+0x1a4>
c00008f0:	e5913000 	ldr	r3, [r1]
c00008f4:	e28bb010 	add	fp, fp, #16
c00008f8:	e2811010 	add	r1, r1, #16
c00008fc:	e50b3010 	str	r3, [fp, #-16]
c0000900:	e511300c 	ldr	r3, [r1, #-12]
c0000904:	e50b300c 	str	r3, [fp, #-12]
c0000908:	e5113008 	ldr	r3, [r1, #-8]
c000090c:	e50b3008 	str	r3, [fp, #-8]
c0000910:	e5113004 	ldr	r3, [r1, #-4]
c0000914:	e50b3004 	str	r3, [fp, #-4]
c0000918:	e59d3020 	ldr	r3, [sp, #32]
c000091c:	e06b9003 	rsb	r9, fp, r3
c0000920:	e359000f 	cmp	r9, #15
c0000924:	cafffff1 	bgt	c00008f0 <memcpy+0x380>
c0000928:	eaffff36 	b	c0000608 <memcpy+0x98>
c000092c:	e2494d0a 	sub	r4, r9, #640	; 0x280
c0000930:	f5d1f100 	pld	[r1, #256]	; 0x100
c0000934:	e35400ff 	cmp	r4, #255	; 0xff
c0000938:	e58d403c 	str	r4, [sp, #60]	; 0x3c
c000093c:	f5d1f140 	pld	[r1, #320]	; 0x140
c0000940:	f5d1f180 	pld	[r1, #384]	; 0x180
c0000944:	f5d1f1c0 	pld	[r1, #448]	; 0x1c0
c0000948:	f5d1f200 	pld	[r1, #512]	; 0x200
c000094c:	f5d1f240 	pld	[r1, #576]	; 0x240
c0000950:	f5d1f280 	pld	[r1, #640]	; 0x280
c0000954:	f5d1f2c0 	pld	[r1, #704]	; 0x2c0
c0000958:	9a0000a4 	bls	c0000bf0 <memcpy+0x680>
c000095c:	e3a06000 	mov	r6, #0
c0000960:	e2818c03 	add	r8, r1, #768	; 0x300
c0000964:	e281ad0d 	add	sl, r1, #832	; 0x340
c0000968:	e281cd0e 	add	ip, r1, #896	; 0x380
c000096c:	e2812d0f 	add	r2, r1, #960	; 0x3c0
c0000970:	e3a03c01 	mov	r3, #256	; 0x100
c0000974:	e58d8040 	str	r8, [sp, #64]	; 0x40
c0000978:	e58da044 	str	sl, [sp, #68]	; 0x44
c000097c:	e58dc048 	str	ip, [sp, #72]	; 0x48
c0000980:	e58d204c 	str	r2, [sp, #76]	; 0x4c
c0000984:	e58d3018 	str	r3, [sp, #24]
c0000988:	e58d9050 	str	r9, [sp, #80]	; 0x50
c000098c:	e58d0054 	str	r0, [sp, #84]	; 0x54
c0000990:	e2867010 	add	r7, r6, #16
c0000994:	e2865020 	add	r5, r6, #32
c0000998:	e2864030 	add	r4, r6, #48	; 0x30
c000099c:	e286c040 	add	ip, r6, #64	; 0x40
c00009a0:	e2862050 	add	r2, r6, #80	; 0x50
c00009a4:	e2863060 	add	r3, r6, #96	; 0x60
c00009a8:	e2868070 	add	r8, r6, #112	; 0x70
c00009ac:	e286a080 	add	sl, r6, #128	; 0x80
c00009b0:	e58d801c 	str	r8, [sp, #28]
c00009b4:	e2860090 	add	r0, r6, #144	; 0x90
c00009b8:	e58da024 	str	sl, [sp, #36]	; 0x24
c00009bc:	e28680a0 	add	r8, r6, #160	; 0xa0
c00009c0:	e58d0028 	str	r0, [sp, #40]	; 0x28
c00009c4:	e286a0b0 	add	sl, r6, #176	; 0xb0
c00009c8:	e28600c0 	add	r0, r6, #192	; 0xc0
c00009cc:	e28690e0 	add	r9, r6, #224	; 0xe0
c00009d0:	e58d802c 	str	r8, [sp, #44]	; 0x2c
c00009d4:	e28680d0 	add	r8, r6, #208	; 0xd0
c00009d8:	e58da030 	str	sl, [sp, #48]	; 0x30
c00009dc:	e081a006 	add	sl, r1, r6
c00009e0:	e58d0034 	str	r0, [sp, #52]	; 0x34
c00009e4:	e28600f0 	add	r0, r6, #240	; 0xf0
c00009e8:	e08b6006 	add	r6, fp, r6
c00009ec:	e58d6014 	str	r6, [sp, #20]
c00009f0:	e59d6018 	ldr	r6, [sp, #24]
c00009f4:	ecda0b04 	vldmia	sl, {d16-d17}
c00009f8:	e59da03c 	ldr	sl, [sp, #60]	; 0x3c
c00009fc:	e58d8038 	str	r8, [sp, #56]	; 0x38
c0000a00:	e2868c01 	add	r8, r6, #256	; 0x100
c0000a04:	e158000a 	cmp	r8, sl
c0000a08:	e58d8018 	str	r8, [sp, #24]
c0000a0c:	e59d8014 	ldr	r8, [sp, #20]
c0000a10:	ecc80b04 	vstmia	r8, {d16-d17}
c0000a14:	e0818007 	add	r8, r1, r7
c0000a18:	e08b7007 	add	r7, fp, r7
c0000a1c:	ecd80b04 	vldmia	r8, {d16-d17}
c0000a20:	e0818005 	add	r8, r1, r5
c0000a24:	ecc70b04 	vstmia	r7, {d16-d17}
c0000a28:	e08b5005 	add	r5, fp, r5
c0000a2c:	ecd80b04 	vldmia	r8, {d16-d17}
c0000a30:	e0817004 	add	r7, r1, r4
c0000a34:	ecc50b04 	vstmia	r5, {d16-d17}
c0000a38:	e08b4004 	add	r4, fp, r4
c0000a3c:	ecd70b04 	vldmia	r7, {d16-d17}
c0000a40:	e081500c 	add	r5, r1, ip
c0000a44:	ecc40b04 	vstmia	r4, {d16-d17}
c0000a48:	e08bc00c 	add	ip, fp, ip
c0000a4c:	ecd50b04 	vldmia	r5, {d16-d17}
c0000a50:	e0814002 	add	r4, r1, r2
c0000a54:	eccc0b04 	vstmia	ip, {d16-d17}
c0000a58:	ecd40b04 	vldmia	r4, {d16-d17}
c0000a5c:	e59d401c 	ldr	r4, [sp, #28]
c0000a60:	e08b2002 	add	r2, fp, r2
c0000a64:	e081c003 	add	ip, r1, r3
c0000a68:	ecc20b04 	vstmia	r2, {d16-d17}
c0000a6c:	e08b3003 	add	r3, fp, r3
c0000a70:	ecdc0b04 	vldmia	ip, {d16-d17}
c0000a74:	e0812004 	add	r2, r1, r4
c0000a78:	ecc30b04 	vstmia	r3, {d16-d17}
c0000a7c:	e08b3004 	add	r3, fp, r4
c0000a80:	e59d4024 	ldr	r4, [sp, #36]	; 0x24
c0000a84:	ecd20b04 	vldmia	r2, {d16-d17}
c0000a88:	ecc30b04 	vstmia	r3, {d16-d17}
c0000a8c:	e0812004 	add	r2, r1, r4
c0000a90:	e08b3004 	add	r3, fp, r4
c0000a94:	e59d4028 	ldr	r4, [sp, #40]	; 0x28
c0000a98:	ecd20b04 	vldmia	r2, {d16-d17}
c0000a9c:	ecc30b04 	vstmia	r3, {d16-d17}
c0000aa0:	e0812004 	add	r2, r1, r4
c0000aa4:	e08b3004 	add	r3, fp, r4
c0000aa8:	ecd20b04 	vldmia	r2, {d16-d17}
c0000aac:	ecc30b04 	vstmia	r3, {d16-d17}
c0000ab0:	e59d402c 	ldr	r4, [sp, #44]	; 0x2c
c0000ab4:	e59d804c 	ldr	r8, [sp, #76]	; 0x4c
c0000ab8:	e0812004 	add	r2, r1, r4
c0000abc:	e08b3004 	add	r3, fp, r4
c0000ac0:	e59d4030 	ldr	r4, [sp, #48]	; 0x30
c0000ac4:	ecd20b04 	vldmia	r2, {d16-d17}
c0000ac8:	ecc30b04 	vstmia	r3, {d16-d17}
c0000acc:	f5d8f000 	pld	[r8]
c0000ad0:	e0812004 	add	r2, r1, r4
c0000ad4:	e08b3004 	add	r3, fp, r4
c0000ad8:	e59d4034 	ldr	r4, [sp, #52]	; 0x34
c0000adc:	ecd20b04 	vldmia	r2, {d16-d17}
c0000ae0:	ecc30b04 	vstmia	r3, {d16-d17}
c0000ae4:	e0812004 	add	r2, r1, r4
c0000ae8:	e08b3004 	add	r3, fp, r4
c0000aec:	e59d4038 	ldr	r4, [sp, #56]	; 0x38
c0000af0:	ecd20b04 	vldmia	r2, {d16-d17}
c0000af4:	ecc30b04 	vstmia	r3, {d16-d17}
c0000af8:	e0812004 	add	r2, r1, r4
c0000afc:	e08b3004 	add	r3, fp, r4
c0000b00:	ecd20b04 	vldmia	r2, {d16-d17}
c0000b04:	e59d4048 	ldr	r4, [sp, #72]	; 0x48
c0000b08:	ecc30b04 	vstmia	r3, {d16-d17}
c0000b0c:	e0812009 	add	r2, r1, r9
c0000b10:	e08b3009 	add	r3, fp, r9
c0000b14:	ecd20b04 	vldmia	r2, {d16-d17}
c0000b18:	e0812000 	add	r2, r1, r0
c0000b1c:	ecc30b04 	vstmia	r3, {d16-d17}
c0000b20:	e08b3000 	add	r3, fp, r0
c0000b24:	ecd20b04 	vldmia	r2, {d16-d17}
c0000b28:	e59d0040 	ldr	r0, [sp, #64]	; 0x40
c0000b2c:	ecc30b04 	vstmia	r3, {d16-d17}
c0000b30:	e59d2044 	ldr	r2, [sp, #68]	; 0x44
c0000b34:	f5d4f000 	pld	[r4]
c0000b38:	f5d0f000 	pld	[r0]
c0000b3c:	f5d2f000 	pld	[r2]
c0000b40:	9affff92 	bls	c0000990 <memcpy+0x420>
c0000b44:	e59d9050 	ldr	r9, [sp, #80]	; 0x50
c0000b48:	e59d0054 	ldr	r0, [sp, #84]	; 0x54
c0000b4c:	e2493d0e 	sub	r3, r9, #896	; 0x380
c0000b50:	e1a03423 	lsr	r3, r3, #8
c0000b54:	e2832001 	add	r2, r3, #1
c0000b58:	e2833002 	add	r3, r3, #2
c0000b5c:	e1a07402 	lsl	r7, r2, #8
c0000b60:	e1a0c403 	lsl	ip, r3, #8
c0000b64:	e2872040 	add	r2, r7, #64	; 0x40
c0000b68:	e2873010 	add	r3, r7, #16
c0000b6c:	eafffef1 	b	c0000738 <memcpy+0x1c8>
c0000b70:	e59d0040 	ldr	r0, [sp, #64]	; 0x40
c0000b74:	e2872040 	add	r2, r7, #64	; 0x40
c0000b78:	e2873010 	add	r3, r7, #16
c0000b7c:	e1590002 	cmp	r9, r2
c0000b80:	3a00001e 	bcc	c0000c00 <memcpy+0x690>
c0000b84:	e1a03007 	mov	r3, r7
c0000b88:	e1a07002 	mov	r7, r2
c0000b8c:	e2875040 	add	r5, r7, #64	; 0x40
c0000b90:	e2834010 	add	r4, r3, #16
c0000b94:	e1590005 	cmp	r9, r5
c0000b98:	e283c020 	add	ip, r3, #32
c0000b9c:	e2832030 	add	r2, r3, #48	; 0x30
c0000ba0:	e0816003 	add	r6, r1, r3
c0000ba4:	e08b3003 	add	r3, fp, r3
c0000ba8:	ecd60b04 	vldmia	r6, {d16-d17}
c0000bac:	e0816004 	add	r6, r1, r4
c0000bb0:	ecc30b04 	vstmia	r3, {d16-d17}
c0000bb4:	e08b4004 	add	r4, fp, r4
c0000bb8:	ecd60b04 	vldmia	r6, {d16-d17}
c0000bbc:	e081300c 	add	r3, r1, ip
c0000bc0:	ecc40b04 	vstmia	r4, {d16-d17}
c0000bc4:	e08bc00c 	add	ip, fp, ip
c0000bc8:	ecd30b04 	vldmia	r3, {d16-d17}
c0000bcc:	e0813002 	add	r3, r1, r2
c0000bd0:	eccc0b04 	vstmia	ip, {d16-d17}
c0000bd4:	e08b2002 	add	r2, fp, r2
c0000bd8:	ecd30b04 	vldmia	r3, {d16-d17}
c0000bdc:	e1a03007 	mov	r3, r7
c0000be0:	ecc20b04 	vstmia	r2, {d16-d17}
c0000be4:	3a000004 	bcc	c0000bfc <memcpy+0x68c>
c0000be8:	e1a07005 	mov	r7, r5
c0000bec:	eaffffe6 	b	c0000b8c <memcpy+0x61c>
c0000bf0:	e3a0cc01 	mov	ip, #256	; 0x100
c0000bf4:	e3a07000 	mov	r7, #0
c0000bf8:	eafffed0 	b	c0000740 <memcpy+0x1d0>
c0000bfc:	e2873010 	add	r3, r7, #16
c0000c00:	e1590003 	cmp	r9, r3
c0000c04:	3a00000a 	bcc	c0000c34 <memcpy+0x6c4>
c0000c08:	e1a02007 	mov	r2, r7
c0000c0c:	e1a07003 	mov	r7, r3
c0000c10:	e2873010 	add	r3, r7, #16
c0000c14:	e0814002 	add	r4, r1, r2
c0000c18:	e1590003 	cmp	r9, r3
c0000c1c:	e08bc002 	add	ip, fp, r2
c0000c20:	ecd40b04 	vldmia	r4, {d16-d17}
c0000c24:	e1a02007 	mov	r2, r7
c0000c28:	eccc0b04 	vstmia	ip, {d16-d17}
c0000c2c:	21a07003 	movcs	r7, r3
c0000c30:	2afffff6 	bcs	c0000c10 <memcpy+0x6a0>
c0000c34:	e59d2020 	ldr	r2, [sp, #32]
c0000c38:	e08bb007 	add	fp, fp, r7
c0000c3c:	e0811007 	add	r1, r1, r7
c0000c40:	e06b9002 	rsb	r9, fp, r2
c0000c44:	eafffe6f 	b	c0000608 <memcpy+0x98>

c0000c48 <memset>:
c0000c48:	e3520003 	cmp	r2, #3
c0000c4c:	e6efc071 	uxtb	ip, r1
c0000c50:	e92d01f0 	push	{r4, r5, r6, r7, r8}
c0000c54:	8a000008 	bhi	c0000c7c <memset+0x34>
c0000c58:	e3520000 	cmp	r2, #0
c0000c5c:	0a000004 	beq	c0000c74 <memset+0x2c>
c0000c60:	e0822000 	add	r2, r2, r0
c0000c64:	e1a03000 	mov	r3, r0
c0000c68:	e4c3c001 	strb	ip, [r3], #1
c0000c6c:	e1530002 	cmp	r3, r2
c0000c70:	1afffffc 	bne	c0000c68 <memset+0x20>
c0000c74:	e8bd01f0 	pop	{r4, r5, r6, r7, r8}
c0000c78:	e12fff1e 	bx	lr
c0000c7c:	e3100003 	tst	r0, #3
c0000c80:	e0802002 	add	r2, r0, r2
c0000c84:	0a000007 	beq	c0000ca8 <memset+0x60>
c0000c88:	e2804001 	add	r4, r0, #1
c0000c8c:	e2045003 	and	r5, r4, #3
c0000c90:	e1a03004 	mov	r3, r4
c0000c94:	e3550000 	cmp	r5, #0
c0000c98:	e544c001 	strb	ip, [r4, #-1]
c0000c9c:	e2844001 	add	r4, r4, #1
c0000ca0:	1afffff9 	bne	c0000c8c <memset+0x44>
c0000ca4:	ea000000 	b	c0000cac <memset+0x64>
c0000ca8:	e1a03000 	mov	r3, r0
c0000cac:	e0635002 	rsb	r5, r3, r2
c0000cb0:	e08c740c 	add	r7, ip, ip, lsl #8
c0000cb4:	e355000f 	cmp	r5, #15
c0000cb8:	e0877807 	add	r7, r7, r7, lsl #16
c0000cbc:	ca000011 	bgt	c0000d08 <memset+0xc0>
c0000cc0:	e3550003 	cmp	r5, #3
c0000cc4:	da000006 	ble	c0000ce4 <memset+0x9c>
c0000cc8:	e2831004 	add	r1, r3, #4
c0000ccc:	e0614002 	rsb	r4, r1, r2
c0000cd0:	e1a03001 	mov	r3, r1
c0000cd4:	e3540003 	cmp	r4, #3
c0000cd8:	e5017004 	str	r7, [r1, #-4]
c0000cdc:	e2811004 	add	r1, r1, #4
c0000ce0:	cafffff9 	bgt	c0000ccc <memset+0x84>
c0000ce4:	e1530002 	cmp	r3, r2
c0000ce8:	2affffe1 	bcs	c0000c74 <memset+0x2c>
c0000cec:	e2833001 	add	r3, r3, #1
c0000cf0:	e2822001 	add	r2, r2, #1
c0000cf4:	e543c001 	strb	ip, [r3, #-1]
c0000cf8:	e2833001 	add	r3, r3, #1
c0000cfc:	e1530002 	cmp	r3, r2
c0000d00:	1afffffb 	bne	c0000cf4 <memset+0xac>
c0000d04:	eaffffda 	b	c0000c74 <memset+0x2c>
c0000d08:	e313000f 	tst	r3, #15
c0000d0c:	0a000006 	beq	c0000d2c <memset+0xe4>
c0000d10:	e2834004 	add	r4, r3, #4
c0000d14:	e314000f 	tst	r4, #15
c0000d18:	e1a03004 	mov	r3, r4
c0000d1c:	e5047004 	str	r7, [r4, #-4]
c0000d20:	e2844004 	add	r4, r4, #4
c0000d24:	1afffffa 	bne	c0000d14 <memset+0xcc>
c0000d28:	e0635002 	rsb	r5, r3, r2
c0000d2c:	e35500ff 	cmp	r5, #255	; 0xff
c0000d30:	eee01b90 	vdup.8	q8, r1
c0000d34:	9a000027 	bls	c0000dd8 <memset+0x190>
c0000d38:	e3a01c01 	mov	r1, #256	; 0x100
c0000d3c:	e3a06000 	mov	r6, #0
c0000d40:	e2818c01 	add	r8, r1, #256	; 0x100
c0000d44:	e0834006 	add	r4, r3, r6
c0000d48:	e1550008 	cmp	r5, r8
c0000d4c:	e1a06001 	mov	r6, r1
c0000d50:	ecc40b04 	vstmia	r4, {d16-d17}
c0000d54:	edc40b04 	vstr	d16, [r4, #16]
c0000d58:	edc41b06 	vstr	d17, [r4, #24]
c0000d5c:	edc40b08 	vstr	d16, [r4, #32]
c0000d60:	edc41b0a 	vstr	d17, [r4, #40]	; 0x28
c0000d64:	edc40b0c 	vstr	d16, [r4, #48]	; 0x30
c0000d68:	edc41b0e 	vstr	d17, [r4, #56]	; 0x38
c0000d6c:	edc40b10 	vstr	d16, [r4, #64]	; 0x40
c0000d70:	edc41b12 	vstr	d17, [r4, #72]	; 0x48
c0000d74:	edc40b14 	vstr	d16, [r4, #80]	; 0x50
c0000d78:	edc41b16 	vstr	d17, [r4, #88]	; 0x58
c0000d7c:	edc40b18 	vstr	d16, [r4, #96]	; 0x60
c0000d80:	edc41b1a 	vstr	d17, [r4, #104]	; 0x68
c0000d84:	edc40b1c 	vstr	d16, [r4, #112]	; 0x70
c0000d88:	edc41b1e 	vstr	d17, [r4, #120]	; 0x78
c0000d8c:	edc40b20 	vstr	d16, [r4, #128]	; 0x80
c0000d90:	edc41b22 	vstr	d17, [r4, #136]	; 0x88
c0000d94:	edc40b24 	vstr	d16, [r4, #144]	; 0x90
c0000d98:	edc41b26 	vstr	d17, [r4, #152]	; 0x98
c0000d9c:	edc40b28 	vstr	d16, [r4, #160]	; 0xa0
c0000da0:	edc41b2a 	vstr	d17, [r4, #168]	; 0xa8
c0000da4:	edc40b2c 	vstr	d16, [r4, #176]	; 0xb0
c0000da8:	edc41b2e 	vstr	d17, [r4, #184]	; 0xb8
c0000dac:	edc40b30 	vstr	d16, [r4, #192]	; 0xc0
c0000db0:	edc41b32 	vstr	d17, [r4, #200]	; 0xc8
c0000db4:	edc40b34 	vstr	d16, [r4, #208]	; 0xd0
c0000db8:	edc41b36 	vstr	d17, [r4, #216]	; 0xd8
c0000dbc:	edc40b38 	vstr	d16, [r4, #224]	; 0xe0
c0000dc0:	edc41b3a 	vstr	d17, [r4, #232]	; 0xe8
c0000dc4:	edc40b3c 	vstr	d16, [r4, #240]	; 0xf0
c0000dc8:	edc41b3e 	vstr	d17, [r4, #248]	; 0xf8
c0000dcc:	3a000016 	bcc	c0000e2c <memset+0x1e4>
c0000dd0:	e1a01008 	mov	r1, r8
c0000dd4:	eaffffd9 	b	c0000d40 <memset+0xf8>
c0000dd8:	e3a04010 	mov	r4, #16
c0000ddc:	e3a06040 	mov	r6, #64	; 0x40
c0000de0:	e3a01000 	mov	r1, #0
c0000de4:	e1550006 	cmp	r5, r6
c0000de8:	3a000013 	bcc	c0000e3c <memset+0x1f4>
c0000dec:	e1a08001 	mov	r8, r1
c0000df0:	e1a01006 	mov	r1, r6
c0000df4:	e2816040 	add	r6, r1, #64	; 0x40
c0000df8:	e0834008 	add	r4, r3, r8
c0000dfc:	e1550006 	cmp	r5, r6
c0000e00:	e1a08001 	mov	r8, r1
c0000e04:	ecc40b04 	vstmia	r4, {d16-d17}
c0000e08:	edc40b04 	vstr	d16, [r4, #16]
c0000e0c:	edc41b06 	vstr	d17, [r4, #24]
c0000e10:	edc40b08 	vstr	d16, [r4, #32]
c0000e14:	edc41b0a 	vstr	d17, [r4, #40]	; 0x28
c0000e18:	edc40b0c 	vstr	d16, [r4, #48]	; 0x30
c0000e1c:	edc41b0e 	vstr	d17, [r4, #56]	; 0x38
c0000e20:	3a000004 	bcc	c0000e38 <memset+0x1f0>
c0000e24:	e1a01006 	mov	r1, r6
c0000e28:	eafffff1 	b	c0000df4 <memset+0x1ac>
c0000e2c:	e2816040 	add	r6, r1, #64	; 0x40
c0000e30:	e2814010 	add	r4, r1, #16
c0000e34:	eaffffea 	b	c0000de4 <memset+0x19c>
c0000e38:	e2814010 	add	r4, r1, #16
c0000e3c:	e1550004 	cmp	r5, r4
c0000e40:	3a000008 	bcc	c0000e68 <memset+0x220>
c0000e44:	e1a06001 	mov	r6, r1
c0000e48:	e1a01004 	mov	r1, r4
c0000e4c:	e2814010 	add	r4, r1, #16
c0000e50:	e0838006 	add	r8, r3, r6
c0000e54:	e1550004 	cmp	r5, r4
c0000e58:	e1a06001 	mov	r6, r1
c0000e5c:	ecc80b04 	vstmia	r8, {d16-d17}
c0000e60:	21a01004 	movcs	r1, r4
c0000e64:	2afffff8 	bcs	c0000e4c <memset+0x204>
c0000e68:	e0833001 	add	r3, r3, r1
c0000e6c:	e0635002 	rsb	r5, r3, r2
c0000e70:	eaffff92 	b	c0000cc0 <memset+0x78>

c0000e74 <strlen>:
c0000e74:	f5d0f000 	pld	[r0]
c0000e78:	e3c01003 	bic	r1, r0, #3
c0000e7c:	e2100003 	ands	r0, r0, #3
c0000e80:	e2600000 	rsb	r0, r0, #0
c0000e84:	e4913004 	ldr	r3, [r1], #4
c0000e88:	e280c004 	add	ip, r0, #4
c0000e8c:	e1a0c18c 	lsl	ip, ip, #3
c0000e90:	e3e02000 	mvn	r2, #0
c0000e94:	11833c32 	orrne	r3, r3, r2, lsr ip
c0000e98:	e300c101 	movw	ip, #257	; 0x101
c0000e9c:	e18cc80c 	orr	ip, ip, ip, lsl #16
c0000ea0:	e043200c 	sub	r2, r3, ip
c0000ea4:	e1c22003 	bic	r2, r2, r3
c0000ea8:	e012238c 	ands	r2, r2, ip, lsl #7
c0000eac:	04913004 	ldreq	r3, [r1], #4
c0000eb0:	02800004 	addeq	r0, r0, #4
c0000eb4:	f5d1f008 	pld	[r1, #8]
c0000eb8:	0043200c 	subeq	r2, r3, ip
c0000ebc:	01c22003 	biceq	r2, r2, r3
c0000ec0:	0012238c 	andseq	r2, r2, ip, lsl #7
c0000ec4:	04913004 	ldreq	r3, [r1], #4
c0000ec8:	02800004 	addeq	r0, r0, #4
c0000ecc:	0afffff3 	beq	c0000ea0 <strlen+0x2c>
c0000ed0:	e6ff2f32 	rbit	r2, r2
c0000ed4:	e16f2f12 	clz	r2, r2
c0000ed8:	e08001a2 	add	r0, r0, r2, lsr #3
c0000edc:	e12fff1e 	bx	lr

c0000ee0 <tolower>:
c0000ee0:	e3053dd4 	movw	r3, #24020	; 0x5dd4
c0000ee4:	e34c3000 	movt	r3, #49152	; 0xc000
c0000ee8:	e5933000 	ldr	r3, [r3]
c0000eec:	e0833000 	add	r3, r3, r0
c0000ef0:	e5d33001 	ldrb	r3, [r3, #1]
c0000ef4:	e2033003 	and	r3, r3, #3
c0000ef8:	e3530001 	cmp	r3, #1
c0000efc:	02800020 	addeq	r0, r0, #32
c0000f00:	e12fff1e 	bx	lr

c0000f04 <_Z16platform_cpu_diej>:
c0000f04:	e92d4008 	push	{r3, lr}
c0000f08:	eb000511 	bl	c0002354 <Xil_DCacheFlush>
c0000f0c:	eb000489 	bl	c0002138 <Xil_ICacheInvalidate>
c0000f10:	e3a03000 	mov	r3, #0
c0000f14:	ee073f15 	mcr	15, 0, r3, cr7, cr5, {0}
c0000f18:	f57ff04f 	dsb	sy
c0000f1c:	ee112f30 	mrc	15, 0, r2, cr1, cr0, {1}
c0000f20:	e3c22040 	bic	r2, r2, #64	; 0x40
c0000f24:	ee012f30 	mcr	15, 0, r2, cr1, cr0, {1}
c0000f28:	ee112f10 	mrc	15, 0, r2, cr1, cr0, {0}
c0000f2c:	e3c22004 	bic	r2, r2, #4
c0000f30:	ee012f10 	mcr	15, 0, r2, cr1, cr0, {0}
c0000f34:	f57ff04f 	dsb	sy
c0000f38:	e320f003 	wfi
c0000f3c:	eafffffc 	b	c0000f34 <_Z16platform_cpu_diej+0x30>

c0000f40 <_Z20XTtcPs_CfgInitializeP6XTtcPsP13XTtcPs_Configm>:
c0000f40:	e92d4038 	push	{r3, r4, r5, lr}
c0000f44:	e1a04000 	mov	r4, r0
c0000f48:	e1d130b0 	ldrh	r3, [r1]
c0000f4c:	e282000c 	add	r0, r2, #12
c0000f50:	e5911008 	ldr	r1, [r1, #8]
c0000f54:	e5842004 	str	r2, [r4, #4]
c0000f58:	e1c430b0 	strh	r3, [r4]
c0000f5c:	e5841008 	str	r1, [r4, #8]
c0000f60:	eb0005bc 	bl	c0002658 <_Z8Xil_In32m>
c0000f64:	e3100001 	tst	r0, #1
c0000f68:	1a000001 	bne	c0000f74 <_Z20XTtcPs_CfgInitializeP6XTtcPsP13XTtcPs_Configm+0x34>
c0000f6c:	e3a00005 	mov	r0, #5
c0000f70:	e8bd8038 	pop	{r3, r4, r5, pc}
c0000f74:	e5940004 	ldr	r0, [r4, #4]
c0000f78:	e3a01021 	mov	r1, #33	; 0x21
c0000f7c:	e280000c 	add	r0, r0, #12
c0000f80:	eb0005ba 	bl	c0002670 <_Z9Xil_Out32mm>
c0000f84:	e5940004 	ldr	r0, [r4, #4]
c0000f88:	e3a01000 	mov	r1, #0
c0000f8c:	eb0005b7 	bl	c0002670 <_Z9Xil_Out32mm>
c0000f90:	e5940004 	ldr	r0, [r4, #4]
c0000f94:	e3a01000 	mov	r1, #0
c0000f98:	e2800024 	add	r0, r0, #36	; 0x24
c0000f9c:	eb0005b3 	bl	c0002670 <_Z9Xil_Out32mm>
c0000fa0:	e5940004 	ldr	r0, [r4, #4]
c0000fa4:	e3a01000 	mov	r1, #0
c0000fa8:	e280003c 	add	r0, r0, #60	; 0x3c
c0000fac:	eb0005af 	bl	c0002670 <_Z9Xil_Out32mm>
c0000fb0:	e5940004 	ldr	r0, [r4, #4]
c0000fb4:	e3a01000 	mov	r1, #0
c0000fb8:	e2800048 	add	r0, r0, #72	; 0x48
c0000fbc:	eb0005ab 	bl	c0002670 <_Z9Xil_Out32mm>
c0000fc0:	e5940004 	ldr	r0, [r4, #4]
c0000fc4:	e3a01000 	mov	r1, #0
c0000fc8:	e2800048 	add	r0, r0, #72	; 0x48
c0000fcc:	eb0005a7 	bl	c0002670 <_Z9Xil_Out32mm>
c0000fd0:	e5940004 	ldr	r0, [r4, #4]
c0000fd4:	e3a01000 	mov	r1, #0
c0000fd8:	e2800060 	add	r0, r0, #96	; 0x60
c0000fdc:	eb0005a3 	bl	c0002670 <_Z9Xil_Out32mm>
c0000fe0:	e5940004 	ldr	r0, [r4, #4]
c0000fe4:	e3a0101f 	mov	r1, #31
c0000fe8:	e2800054 	add	r0, r0, #84	; 0x54
c0000fec:	eb00059f 	bl	c0002670 <_Z9Xil_Out32mm>
c0000ff0:	e5945004 	ldr	r5, [r4, #4]
c0000ff4:	e3013111 	movw	r3, #4369	; 0x1111
c0000ff8:	e7df3813 	bfi	r3, r3, #16, #16
c0000ffc:	e285500c 	add	r5, r5, #12
c0001000:	e584300c 	str	r3, [r4, #12]
c0001004:	e1a00005 	mov	r0, r5
c0001008:	eb000592 	bl	c0002658 <_Z8Xil_In32m>
c000100c:	e3801010 	orr	r1, r0, #16
c0001010:	e1a00005 	mov	r0, r5
c0001014:	eb000595 	bl	c0002670 <_Z9Xil_Out32mm>
c0001018:	e3a00000 	mov	r0, #0
c000101c:	e8bd8038 	pop	{r3, r4, r5, pc}

c0001020 <_Z20XTtcPs_SetMatchValueP6XTtcPsht>:
c0001020:	e5900004 	ldr	r0, [r0, #4]
c0001024:	e0813081 	add	r3, r1, r1, lsl #1
c0001028:	e1a01002 	mov	r1, r2
c000102c:	e2800030 	add	r0, r0, #48	; 0x30
c0001030:	e0800103 	add	r0, r0, r3, lsl #2
c0001034:	ea00058d 	b	c0002670 <_Z9Xil_Out32mm>

c0001038 <_Z20XTtcPs_GetMatchValueP6XTtcPsh>:
c0001038:	e92d4008 	push	{r3, lr}
c000103c:	e0811081 	add	r1, r1, r1, lsl #1
c0001040:	e5903004 	ldr	r3, [r0, #4]
c0001044:	e2830030 	add	r0, r3, #48	; 0x30
c0001048:	e0800101 	add	r0, r0, r1, lsl #2
c000104c:	eb000581 	bl	c0002658 <_Z8Xil_In32m>
c0001050:	e6ff0070 	uxth	r0, r0
c0001054:	e8bd8008 	pop	{r3, pc}

c0001058 <_Z19XTtcPs_SetPrescalerP6XTtcPsh>:
c0001058:	e92d4038 	push	{r3, r4, r5, lr}
c000105c:	e1a04000 	mov	r4, r0
c0001060:	e5900004 	ldr	r0, [r0, #4]
c0001064:	e1a05001 	mov	r5, r1
c0001068:	eb00057a 	bl	c0002658 <_Z8Xil_In32m>
c000106c:	e355000f 	cmp	r5, #15
c0001070:	91a05085 	lslls	r5, r5, #1
c0001074:	9205501e 	andls	r5, r5, #30
c0001078:	93855001 	orrls	r5, r5, #1
c000107c:	e3c0101f 	bic	r1, r0, #31
c0001080:	e5940004 	ldr	r0, [r4, #4]
c0001084:	91811005 	orrls	r1, r1, r5
c0001088:	e8bd4038 	pop	{r3, r4, r5, lr}
c000108c:	ea000577 	b	c0002670 <_Z9Xil_Out32mm>

c0001090 <_Z19XTtcPs_GetPrescalerP6XTtcPs>:
c0001090:	e92d4008 	push	{r3, lr}
c0001094:	e5900004 	ldr	r0, [r0, #4]
c0001098:	eb00056e 	bl	c0002658 <_Z8Xil_In32m>
c000109c:	e3100001 	tst	r0, #1
c00010a0:	17e300d0 	ubfxne	r0, r0, #1, #4
c00010a4:	03a00010 	moveq	r0, #16
c00010a8:	e8bd8008 	pop	{r3, pc}

c00010ac <_Z27XTtcPs_CalcIntervalFromFreqP6XTtcPsmPtPh>:
c00010ac:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
c00010b0:	e1a06001 	mov	r6, r1
c00010b4:	e5905008 	ldr	r5, [r0, #8]
c00010b8:	e1a0a002 	mov	sl, r2
c00010bc:	e1a08003 	mov	r8, r3
c00010c0:	e1a00005 	mov	r0, r5
c00010c4:	ebfffca5 	bl	c0000360 <__aeabi_uidiv>
c00010c8:	e3500003 	cmp	r0, #3
c00010cc:	9a00000d 	bls	c0001108 <_Z27XTtcPs_CalcIntervalFromFreqP6XTtcPsmPtPh+0x5c>
c00010d0:	e30f7fff 	movw	r7, #65535	; 0xffff
c00010d4:	e1500007 	cmp	r0, r7
c00010d8:	83a04001 	movhi	r4, #1
c00010dc:	9a00000d 	bls	c0001118 <_Z27XTtcPs_CalcIntervalFromFreqP6XTtcPsmPtPh+0x6c>
c00010e0:	e244c001 	sub	ip, r4, #1
c00010e4:	e1a01416 	lsl	r1, r6, r4
c00010e8:	e1a00005 	mov	r0, r5
c00010ec:	e2844001 	add	r4, r4, #1
c00010f0:	e1a0900c 	mov	r9, ip
c00010f4:	ebfffc99 	bl	c0000360 <__aeabi_uidiv>
c00010f8:	e1500007 	cmp	r0, r7
c00010fc:	9a000009 	bls	c0001128 <_Z27XTtcPs_CalcIntervalFromFreqP6XTtcPsmPtPh+0x7c>
c0001100:	e3540011 	cmp	r4, #17
c0001104:	1afffff5 	bne	c00010e0 <_Z27XTtcPs_CalcIntervalFromFreqP6XTtcPsmPtPh+0x34>
c0001108:	e3e03000 	mvn	r3, #0
c000110c:	e1ca30b0 	strh	r3, [sl]
c0001110:	e5c83000 	strb	r3, [r8]
c0001114:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
c0001118:	e1ca00b0 	strh	r0, [sl]
c000111c:	e3a03010 	mov	r3, #16
c0001120:	e5c83000 	strb	r3, [r8]
c0001124:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
c0001128:	e1ca00b0 	strh	r0, [sl]
c000112c:	e5c89000 	strb	r9, [r8]
c0001130:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

c0001134 <_Z17XTtcPs_SetOptionsP6XTtcPsm>:
c0001134:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
c0001138:	e1a04000 	mov	r4, r0
c000113c:	e5900004 	ldr	r0, [r0, #4]
c0001140:	e1a05001 	mov	r5, r1
c0001144:	eb000543 	bl	c0002658 <_Z8Xil_In32m>
c0001148:	e1a07000 	mov	r7, r0
c000114c:	e5940004 	ldr	r0, [r4, #4]
c0001150:	e280000c 	add	r0, r0, #12
c0001154:	eb00053f 	bl	c0002658 <_Z8Xil_In32m>
c0001158:	e3053370 	movw	r3, #21360	; 0x5370
c000115c:	e34c3000 	movt	r3, #49152	; 0xc000
c0001160:	e2832008 	add	r2, r3, #8
c0001164:	e1a06000 	mov	r6, r0
c0001168:	e283005c 	add	r0, r3, #92	; 0x5c
c000116c:	e512c008 	ldr	ip, [r2, #-8]
c0001170:	e5931008 	ldr	r1, [r3, #8]
c0001174:	e115000c 	tst	r5, ip
c0001178:	0a000010 	beq	c00011c0 <_Z17XTtcPs_SetOptionsP6XTtcPsm+0x8c>
c000117c:	e3510000 	cmp	r1, #0
c0001180:	1a000017 	bne	c00011e4 <_Z17XTtcPs_SetOptionsP6XTtcPsm+0xb0>
c0001184:	e5121004 	ldr	r1, [r2, #-4]
c0001188:	e282200c 	add	r2, r2, #12
c000118c:	e1520000 	cmp	r2, r0
c0001190:	e283300c 	add	r3, r3, #12
c0001194:	e1877001 	orr	r7, r7, r1
c0001198:	1afffff3 	bne	c000116c <_Z17XTtcPs_SetOptionsP6XTtcPsm+0x38>
c000119c:	e5940004 	ldr	r0, [r4, #4]
c00011a0:	e1a01007 	mov	r1, r7
c00011a4:	eb000531 	bl	c0002670 <_Z9Xil_Out32mm>
c00011a8:	e5940004 	ldr	r0, [r4, #4]
c00011ac:	e1a01006 	mov	r1, r6
c00011b0:	e280000c 	add	r0, r0, #12
c00011b4:	eb00052d 	bl	c0002670 <_Z9Xil_Out32mm>
c00011b8:	e3a00000 	mov	r0, #0
c00011bc:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
c00011c0:	e3510000 	cmp	r1, #0
c00011c4:	1a00000a 	bne	c00011f4 <_Z17XTtcPs_SetOptionsP6XTtcPsm+0xc0>
c00011c8:	e5121004 	ldr	r1, [r2, #-4]
c00011cc:	e282200c 	add	r2, r2, #12
c00011d0:	e1520000 	cmp	r2, r0
c00011d4:	e283300c 	add	r3, r3, #12
c00011d8:	e1c77001 	bic	r7, r7, r1
c00011dc:	1affffe2 	bne	c000116c <_Z17XTtcPs_SetOptionsP6XTtcPsm+0x38>
c00011e0:	eaffffed 	b	c000119c <_Z17XTtcPs_SetOptionsP6XTtcPsm+0x68>
c00011e4:	e351000c 	cmp	r1, #12
c00011e8:	0a00000a 	beq	c0001218 <_Z17XTtcPs_SetOptionsP6XTtcPsm+0xe4>
c00011ec:	e3a00001 	mov	r0, #1
c00011f0:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
c00011f4:	e351000c 	cmp	r1, #12
c00011f8:	1afffffb 	bne	c00011ec <_Z17XTtcPs_SetOptionsP6XTtcPsm+0xb8>
c00011fc:	e5121004 	ldr	r1, [r2, #-4]
c0001200:	e282200c 	add	r2, r2, #12
c0001204:	e1520000 	cmp	r2, r0
c0001208:	e283300c 	add	r3, r3, #12
c000120c:	e1c66001 	bic	r6, r6, r1
c0001210:	1affffd5 	bne	c000116c <_Z17XTtcPs_SetOptionsP6XTtcPsm+0x38>
c0001214:	eaffffe0 	b	c000119c <_Z17XTtcPs_SetOptionsP6XTtcPsm+0x68>
c0001218:	e5121004 	ldr	r1, [r2, #-4]
c000121c:	e282200c 	add	r2, r2, #12
c0001220:	e1520000 	cmp	r2, r0
c0001224:	e283300c 	add	r3, r3, #12
c0001228:	e1866001 	orr	r6, r6, r1
c000122c:	1affffce 	bne	c000116c <_Z17XTtcPs_SetOptionsP6XTtcPsm+0x38>
c0001230:	eaffffd9 	b	c000119c <_Z17XTtcPs_SetOptionsP6XTtcPsm+0x68>

c0001234 <_Z17XTtcPs_GetOptionsP6XTtcPs>:
c0001234:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
c0001238:	e1a07000 	mov	r7, r0
c000123c:	e59f4038 	ldr	r4, [pc, #56]	; c000127c <_Z17XTtcPs_GetOptionsP6XTtcPs+0x48>
c0001240:	e3a05000 	mov	r5, #0
c0001244:	e2846054 	add	r6, r4, #84	; 0x54
c0001248:	e5942000 	ldr	r2, [r4]
c000124c:	e284400c 	add	r4, r4, #12
c0001250:	e5970004 	ldr	r0, [r7, #4]
c0001254:	e0820000 	add	r0, r2, r0
c0001258:	eb0004fe 	bl	c0002658 <_Z8Xil_In32m>
c000125c:	e5143010 	ldr	r3, [r4, #-16]
c0001260:	e1100003 	tst	r0, r3
c0001264:	15143014 	ldrne	r3, [r4, #-20]	; 0xffffffec
c0001268:	11855003 	orrne	r5, r5, r3
c000126c:	e1540006 	cmp	r4, r6
c0001270:	1afffff4 	bne	c0001248 <_Z17XTtcPs_GetOptionsP6XTtcPs+0x14>
c0001274:	e1a00005 	mov	r0, r5
c0001278:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
c000127c:	c0005378 	andgt	r5, r0, r8, ror r3

c0001280 <_Z15XTtcPs_SelfTestP6XTtcPs>:
c0001280:	e5900004 	ldr	r0, [r0, #4]
c0001284:	e92d4008 	push	{r3, lr}
c0001288:	e280000c 	add	r0, r0, #12
c000128c:	eb0004f1 	bl	c0002658 <_Z8Xil_In32m>
c0001290:	e2500021 	subs	r0, r0, #33	; 0x21
c0001294:	13a00001 	movne	r0, #1
c0001298:	e8bd8008 	pop	{r3, pc}

c000129c <_Z19XTtcPs_LookupConfigt>:
c000129c:	e3053dd8 	movw	r3, #24024	; 0x5dd8
c00012a0:	e34c3000 	movt	r3, #49152	; 0xc000
c00012a4:	e1d320b0 	ldrh	r2, [r3]
c00012a8:	e1520000 	cmp	r2, r0
c00012ac:	0a00000c 	beq	c00012e4 <_Z19XTtcPs_LookupConfigt+0x48>
c00012b0:	e1d320bc 	ldrh	r2, [r3, #12]
c00012b4:	e1520000 	cmp	r2, r0
c00012b8:	0a000005 	beq	c00012d4 <_Z19XTtcPs_LookupConfigt+0x38>
c00012bc:	e1d321b8 	ldrh	r2, [r3, #24]
c00012c0:	e1520000 	cmp	r2, r0
c00012c4:	03a00002 	moveq	r0, #2
c00012c8:	0a000002 	beq	c00012d8 <_Z19XTtcPs_LookupConfigt+0x3c>
c00012cc:	e3a00000 	mov	r0, #0
c00012d0:	e12fff1e 	bx	lr
c00012d4:	e3a00001 	mov	r0, #1
c00012d8:	e0800080 	add	r0, r0, r0, lsl #1
c00012dc:	e0830100 	add	r0, r3, r0, lsl #2
c00012e0:	e12fff1e 	bx	lr
c00012e4:	e3a00000 	mov	r0, #0
c00012e8:	eafffffa 	b	c00012d8 <_Z19XTtcPs_LookupConfigt+0x3c>

c00012ec <_Z14Gic_SetPendingP7XScuGicm>:
c00012ec:	e351000f 	cmp	r1, #15
c00012f0:	8a000001 	bhi	c00012fc <_Z14Gic_SetPendingP7XScuGicm+0x10>
c00012f4:	e3a02001 	mov	r2, #1
c00012f8:	ea000119 	b	c0001764 <_Z20XScuGic_SoftwareIntrP7XScuGicmm>
c00012fc:	e5902000 	ldr	r2, [r0]
c0001300:	e1a002a1 	lsr	r0, r1, #5
c0001304:	e2800080 	add	r0, r0, #128	; 0x80
c0001308:	e201301f 	and	r3, r1, #31
c000130c:	e3a01001 	mov	r1, #1
c0001310:	e5922008 	ldr	r2, [r2, #8]
c0001314:	e1a01311 	lsl	r1, r1, r3
c0001318:	e0820100 	add	r0, r2, r0, lsl #2
c000131c:	ea0004d3 	b	c0002670 <_Z9Xil_Out32mm>

c0001320 <_Z16Gic_ClearPendingP7XScuGicm>:
c0001320:	e5903000 	ldr	r3, [r0]
c0001324:	e1a002a1 	lsr	r0, r1, #5
c0001328:	e28000a0 	add	r0, r0, #160	; 0xa0
c000132c:	e3a02001 	mov	r2, #1
c0001330:	e201101f 	and	r1, r1, #31
c0001334:	e5933008 	ldr	r3, [r3, #8]
c0001338:	e1a01112 	lsl	r1, r2, r1
c000133c:	e0830100 	add	r0, r3, r0, lsl #2
c0001340:	ea0004ca 	b	c0002670 <_Z9Xil_Out32mm>

c0001344 <_Z19Gic_SetPendingGroupP7XScuGicPm>:
c0001344:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
c0001348:	e1a06001 	mov	r6, r1
c000134c:	e1d140b0 	ldrh	r4, [r1]
c0001350:	e1a07000 	mov	r7, r0
c0001354:	e3a05000 	mov	r5, #0
c0001358:	e7961005 	ldr	r1, [r6, r5]
c000135c:	e3510000 	cmp	r1, #0
c0001360:	1a000013 	bne	c00013b4 <_Z19Gic_SetPendingGroupP7XScuGicPm+0x70>
c0001364:	e2855004 	add	r5, r5, #4
c0001368:	e355000c 	cmp	r5, #12
c000136c:	1afffff9 	bne	c0001358 <_Z19Gic_SetPendingGroupP7XScuGicPm+0x14>
c0001370:	e3540000 	cmp	r4, #0
c0001374:	08bd80f8 	popeq	{r3, r4, r5, r6, r7, pc}
c0001378:	e3a05000 	mov	r5, #0
c000137c:	ea000002 	b	c000138c <_Z19Gic_SetPendingGroupP7XScuGicPm+0x48>
c0001380:	e1b040c4 	asrs	r4, r4, #1
c0001384:	e2855001 	add	r5, r5, #1
c0001388:	0a000008 	beq	c00013b0 <_Z19Gic_SetPendingGroupP7XScuGicPm+0x6c>
c000138c:	e3140001 	tst	r4, #1
c0001390:	0afffffa 	beq	c0001380 <_Z19Gic_SetPendingGroupP7XScuGicPm+0x3c>
c0001394:	e1a01005 	mov	r1, r5
c0001398:	e1a00007 	mov	r0, r7
c000139c:	e3a02001 	mov	r2, #1
c00013a0:	e2855001 	add	r5, r5, #1
c00013a4:	eb0000ee 	bl	c0001764 <_Z20XScuGic_SoftwareIntrP7XScuGicmm>
c00013a8:	e1b040c4 	asrs	r4, r4, #1
c00013ac:	1afffff6 	bne	c000138c <_Z19Gic_SetPendingGroupP7XScuGicPm+0x48>
c00013b0:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
c00013b4:	e5972000 	ldr	r2, [r7]
c00013b8:	e2850c02 	add	r0, r5, #512	; 0x200
c00013bc:	e5923008 	ldr	r3, [r2, #8]
c00013c0:	e0800003 	add	r0, r0, r3
c00013c4:	eb0004a9 	bl	c0002670 <_Z9Xil_Out32mm>
c00013c8:	eaffffe5 	b	c0001364 <_Z19Gic_SetPendingGroupP7XScuGicPm+0x20>

c00013cc <_Z21Gic_ClearPendingGroupP7XScuGicPm>:
c00013cc:	e92d4070 	push	{r4, r5, r6, lr}
c00013d0:	e1a06000 	mov	r6, r0
c00013d4:	e1a05001 	mov	r5, r1
c00013d8:	e3a04000 	mov	r4, #0
c00013dc:	e7951004 	ldr	r1, [r5, r4]
c00013e0:	e3510000 	cmp	r1, #0
c00013e4:	1a000003 	bne	c00013f8 <_Z21Gic_ClearPendingGroupP7XScuGicPm+0x2c>
c00013e8:	e2844004 	add	r4, r4, #4
c00013ec:	e354000c 	cmp	r4, #12
c00013f0:	1afffff9 	bne	c00013dc <_Z21Gic_ClearPendingGroupP7XScuGicPm+0x10>
c00013f4:	e8bd8070 	pop	{r4, r5, r6, pc}
c00013f8:	e5962000 	ldr	r2, [r6]
c00013fc:	e2840d0a 	add	r0, r4, #640	; 0x280
c0001400:	e5923008 	ldr	r3, [r2, #8]
c0001404:	e0800003 	add	r0, r0, r3
c0001408:	eb000498 	bl	c0002670 <_Z9Xil_Out32mm>
c000140c:	eafffff5 	b	c00013e8 <_Z21Gic_ClearPendingGroupP7XScuGicPm+0x1c>

c0001410 <_Z24Gic_GetPendingStateGroupP7XScuGicPm>:
c0001410:	e92d4070 	push	{r4, r5, r6, lr}
c0001414:	e1a06000 	mov	r6, r0
c0001418:	e1a05001 	mov	r5, r1
c000141c:	e3a04000 	mov	r4, #0
c0001420:	e5963000 	ldr	r3, [r6]
c0001424:	e2842c02 	add	r2, r4, #512	; 0x200
c0001428:	e5930008 	ldr	r0, [r3, #8]
c000142c:	e0820000 	add	r0, r2, r0
c0001430:	eb000488 	bl	c0002658 <_Z8Xil_In32m>
c0001434:	e7850004 	str	r0, [r5, r4]
c0001438:	e2844004 	add	r4, r4, #4
c000143c:	e354000c 	cmp	r4, #12
c0001440:	1afffff6 	bne	c0001420 <_Z24Gic_GetPendingStateGroupP7XScuGicPm+0x10>
c0001444:	e8bd8070 	pop	{r4, r5, r6, pc}

c0001448 <_Z18Gic_SetEnableGroupP7XScuGicPm>:
c0001448:	e92d4070 	push	{r4, r5, r6, lr}
c000144c:	e1a06000 	mov	r6, r0
c0001450:	e1a05001 	mov	r5, r1
c0001454:	e3a04000 	mov	r4, #0
c0001458:	e7951004 	ldr	r1, [r5, r4]
c000145c:	e3510000 	cmp	r1, #0
c0001460:	1a000003 	bne	c0001474 <_Z18Gic_SetEnableGroupP7XScuGicPm+0x2c>
c0001464:	e2844004 	add	r4, r4, #4
c0001468:	e354000c 	cmp	r4, #12
c000146c:	1afffff9 	bne	c0001458 <_Z18Gic_SetEnableGroupP7XScuGicPm+0x10>
c0001470:	e8bd8070 	pop	{r4, r5, r6, pc}
c0001474:	e5962000 	ldr	r2, [r6]
c0001478:	e2840c01 	add	r0, r4, #256	; 0x100
c000147c:	e5923008 	ldr	r3, [r2, #8]
c0001480:	e0800003 	add	r0, r0, r3
c0001484:	eb000479 	bl	c0002670 <_Z9Xil_Out32mm>
c0001488:	eafffff5 	b	c0001464 <_Z18Gic_SetEnableGroupP7XScuGicPm+0x1c>

c000148c <_Z20Gic_ClearEnableGroupP7XScuGicPm>:
c000148c:	e92d4070 	push	{r4, r5, r6, lr}
c0001490:	e1a06000 	mov	r6, r0
c0001494:	e1a05001 	mov	r5, r1
c0001498:	e3a04000 	mov	r4, #0
c000149c:	e7951004 	ldr	r1, [r5, r4]
c00014a0:	e3510000 	cmp	r1, #0
c00014a4:	1a000003 	bne	c00014b8 <_Z20Gic_ClearEnableGroupP7XScuGicPm+0x2c>
c00014a8:	e2844004 	add	r4, r4, #4
c00014ac:	e354000c 	cmp	r4, #12
c00014b0:	1afffff9 	bne	c000149c <_Z20Gic_ClearEnableGroupP7XScuGicPm+0x10>
c00014b4:	e8bd8070 	pop	{r4, r5, r6, pc}
c00014b8:	e5962000 	ldr	r2, [r6]
c00014bc:	e2840d06 	add	r0, r4, #384	; 0x180
c00014c0:	e5923008 	ldr	r3, [r2, #8]
c00014c4:	e0800003 	add	r0, r0, r3
c00014c8:	eb000468 	bl	c0002670 <_Z9Xil_Out32mm>
c00014cc:	eafffff5 	b	c00014a8 <_Z20Gic_ClearEnableGroupP7XScuGicPm+0x1c>

c00014d0 <_Z23Gic_GetEnableStateGroupP7XScuGicPm>:
c00014d0:	e92d4070 	push	{r4, r5, r6, lr}
c00014d4:	e1a06000 	mov	r6, r0
c00014d8:	e1a05001 	mov	r5, r1
c00014dc:	e3a04000 	mov	r4, #0
c00014e0:	e5963000 	ldr	r3, [r6]
c00014e4:	e2842c01 	add	r2, r4, #256	; 0x100
c00014e8:	e5930008 	ldr	r0, [r3, #8]
c00014ec:	e0820000 	add	r0, r2, r0
c00014f0:	eb000458 	bl	c0002658 <_Z8Xil_In32m>
c00014f4:	e7850004 	str	r0, [r5, r4]
c00014f8:	e2844004 	add	r4, r4, #4
c00014fc:	e354000c 	cmp	r4, #12
c0001500:	1afffff6 	bne	c00014e0 <_Z23Gic_GetEnableStateGroupP7XScuGicPm+0x10>
c0001504:	e8bd8070 	pop	{r4, r5, r6, pc}

c0001508 <_Z15Gic_GetPriorityP7XScuGicmPh>:
c0001508:	e92d4038 	push	{r3, r4, r5, lr}
c000150c:	e1a04001 	mov	r4, r1
c0001510:	e5903000 	ldr	r3, [r0]
c0001514:	e3c10003 	bic	r0, r1, #3
c0001518:	e2800b01 	add	r0, r0, #1024	; 0x400
c000151c:	e1a05002 	mov	r5, r2
c0001520:	e2044003 	and	r4, r4, #3
c0001524:	e5933008 	ldr	r3, [r3, #8]
c0001528:	e1a04184 	lsl	r4, r4, #3
c000152c:	e0800003 	add	r0, r0, r3
c0001530:	eb000448 	bl	c0002658 <_Z8Xil_In32m>
c0001534:	e1a00430 	lsr	r0, r0, r4
c0001538:	e5c50000 	strb	r0, [r5]
c000153c:	e8bd8038 	pop	{r3, r4, r5, pc}

c0001540 <_ZL11StubHandlerPv>:
c0001540:	e92d4010 	push	{r4, lr}
c0001544:	e1a04000 	mov	r4, r0
c0001548:	e30503c4 	movw	r0, #21444	; 0x53c4
c000154c:	e34c0000 	movt	r0, #49152	; 0xc000
c0001550:	eb000c23 	bl	c00045e4 <print>
c0001554:	e5943008 	ldr	r3, [r4, #8]
c0001558:	e2833001 	add	r3, r3, #1
c000155c:	e5843008 	str	r3, [r4, #8]
c0001560:	e8bd8010 	pop	{r4, pc}

c0001564 <_Z21XScuGic_CfgInitializeP7XScuGicP14XScuGic_Configm>:
c0001564:	e92d4038 	push	{r3, r4, r5, lr}
c0001568:	e1a04000 	mov	r4, r0
c000156c:	e5905000 	ldr	r5, [r0]
c0001570:	e3a0e000 	mov	lr, #0
c0001574:	e3040fd4 	movw	r0, #20436	; 0x4fd4
c0001578:	e34c0000 	movt	r0, #49152	; 0xc000
c000157c:	e1a03001 	mov	r3, r1
c0001580:	e1a0c00e 	mov	ip, lr
c0001584:	e5852004 	str	r2, [r5, #4]
c0001588:	e8844002 	stm	r4, {r1, lr}
c000158c:	e593200c 	ldr	r2, [r3, #12]
c0001590:	e28cc001 	add	ip, ip, #1
c0001594:	e5834010 	str	r4, [r3, #16]
c0001598:	e2833008 	add	r3, r3, #8
c000159c:	e3520000 	cmp	r2, #0
c00015a0:	05830004 	streq	r0, [r3, #4]
c00015a4:	e35c005f 	cmp	ip, #95	; 0x5f
c00015a8:	1afffff7 	bne	c000158c <_Z21XScuGic_CfgInitializeP7XScuGicP14XScuGic_Configm+0x28>
c00015ac:	e5910008 	ldr	r0, [r1, #8]
c00015b0:	e3a01000 	mov	r1, #0
c00015b4:	eb00042d 	bl	c0002670 <_Z9Xil_Out32mm>
c00015b8:	e3a05020 	mov	r5, #32
c00015bc:	e5943000 	ldr	r3, [r4]
c00015c0:	e1a00225 	lsr	r0, r5, #4
c00015c4:	e2800c03 	add	r0, r0, #768	; 0x300
c00015c8:	e3a01000 	mov	r1, #0
c00015cc:	e2855010 	add	r5, r5, #16
c00015d0:	e5933008 	ldr	r3, [r3, #8]
c00015d4:	e0830100 	add	r0, r3, r0, lsl #2
c00015d8:	eb000424 	bl	c0002670 <_Z9Xil_Out32mm>
c00015dc:	e3550060 	cmp	r5, #96	; 0x60
c00015e0:	1afffff5 	bne	c00015bc <_Z21XScuGic_CfgInitializeP7XScuGicP14XScuGic_Configm+0x58>
c00015e4:	e3a05000 	mov	r5, #0
c00015e8:	e5943000 	ldr	r3, [r4]
c00015ec:	e3c50003 	bic	r0, r5, #3
c00015f0:	e2800b01 	add	r0, r0, #1024	; 0x400
c00015f4:	e30a10a0 	movw	r1, #41120	; 0xa0a0
c00015f8:	e2855004 	add	r5, r5, #4
c00015fc:	e34a10a0 	movt	r1, #41120	; 0xa0a0
c0001600:	e5933008 	ldr	r3, [r3, #8]
c0001604:	e0800003 	add	r0, r0, r3
c0001608:	eb000418 	bl	c0002670 <_Z9Xil_Out32mm>
c000160c:	e3550060 	cmp	r5, #96	; 0x60
c0001610:	1afffff4 	bne	c00015e8 <_Z21XScuGic_CfgInitializeP7XScuGicP14XScuGic_Configm+0x84>
c0001614:	e3a05020 	mov	r5, #32
c0001618:	e5943000 	ldr	r3, [r4]
c000161c:	e3c50003 	bic	r0, r5, #3
c0001620:	e2800b02 	add	r0, r0, #2048	; 0x800
c0001624:	e3001101 	movw	r1, #257	; 0x101
c0001628:	e2855004 	add	r5, r5, #4
c000162c:	e3401101 	movt	r1, #257	; 0x101
c0001630:	e5933008 	ldr	r3, [r3, #8]
c0001634:	e0800003 	add	r0, r0, r3
c0001638:	eb00040c 	bl	c0002670 <_Z9Xil_Out32mm>
c000163c:	e3550060 	cmp	r5, #96	; 0x60
c0001640:	1afffff4 	bne	c0001618 <_Z21XScuGic_CfgInitializeP7XScuGicP14XScuGic_Configm+0xb4>
c0001644:	e3a05000 	mov	r5, #0
c0001648:	e5943000 	ldr	r3, [r4]
c000164c:	e1a002a5 	lsr	r0, r5, #5
c0001650:	e2800060 	add	r0, r0, #96	; 0x60
c0001654:	e3e01000 	mvn	r1, #0
c0001658:	e2855020 	add	r5, r5, #32
c000165c:	e5933008 	ldr	r3, [r3, #8]
c0001660:	e0830100 	add	r0, r3, r0, lsl #2
c0001664:	eb000401 	bl	c0002670 <_Z9Xil_Out32mm>
c0001668:	e3550060 	cmp	r5, #96	; 0x60
c000166c:	1afffff5 	bne	c0001648 <_Z21XScuGic_CfgInitializeP7XScuGicP14XScuGic_Configm+0xe4>
c0001670:	e5943000 	ldr	r3, [r4]
c0001674:	e3a01001 	mov	r1, #1
c0001678:	e5930008 	ldr	r0, [r3, #8]
c000167c:	eb0003fb 	bl	c0002670 <_Z9Xil_Out32mm>
c0001680:	e5943000 	ldr	r3, [r4]
c0001684:	e3a010f0 	mov	r1, #240	; 0xf0
c0001688:	e5930004 	ldr	r0, [r3, #4]
c000168c:	e2800004 	add	r0, r0, #4
c0001690:	eb0003f6 	bl	c0002670 <_Z9Xil_Out32mm>
c0001694:	e5943000 	ldr	r3, [r4]
c0001698:	e3a01007 	mov	r1, #7
c000169c:	e5930004 	ldr	r0, [r3, #4]
c00016a0:	eb0003f2 	bl	c0002670 <_Z9Xil_Out32mm>
c00016a4:	e3013111 	movw	r3, #4369	; 0x1111
c00016a8:	e3a00000 	mov	r0, #0
c00016ac:	e7df3813 	bfi	r3, r3, #16, #16
c00016b0:	e5843004 	str	r3, [r4, #4]
c00016b4:	e8bd8038 	pop	{r3, r4, r5, pc}

c00016b8 <_Z15XScuGic_ConnectP7XScuGicmPFvPvES1_>:
c00016b8:	e590c000 	ldr	ip, [r0]
c00016bc:	e2811001 	add	r1, r1, #1
c00016c0:	e3a00000 	mov	r0, #0
c00016c4:	e08c1181 	add	r1, ip, r1, lsl #3
c00016c8:	e981000c 	stmib	r1, {r2, r3}
c00016cc:	e12fff1e 	bx	lr

c00016d0 <_Z18XScuGic_DisconnectP7XScuGicm>:
c00016d0:	e92d4038 	push	{r3, r4, r5, lr}
c00016d4:	e1a04000 	mov	r4, r0
c00016d8:	e5903000 	ldr	r3, [r0]
c00016dc:	e1a002a1 	lsr	r0, r1, #5
c00016e0:	e2800060 	add	r0, r0, #96	; 0x60
c00016e4:	e201201f 	and	r2, r1, #31
c00016e8:	e1a05001 	mov	r5, r1
c00016ec:	e3a01001 	mov	r1, #1
c00016f0:	e5933008 	ldr	r3, [r3, #8]
c00016f4:	e1a01211 	lsl	r1, r1, r2
c00016f8:	e2855001 	add	r5, r5, #1
c00016fc:	e0830100 	add	r0, r3, r0, lsl #2
c0001700:	eb0003da 	bl	c0002670 <_Z9Xil_Out32mm>
c0001704:	e5942000 	ldr	r2, [r4]
c0001708:	e3013540 	movw	r3, #5440	; 0x1540
c000170c:	e34c3000 	movt	r3, #49152	; 0xc000
c0001710:	e0825185 	add	r5, r2, r5, lsl #3
c0001714:	e9850018 	stmib	r5, {r3, r4}
c0001718:	e8bd8038 	pop	{r3, r4, r5, pc}

c000171c <_Z14XScuGic_EnableP7XScuGicm>:
c000171c:	e5903000 	ldr	r3, [r0]
c0001720:	e1a002a1 	lsr	r0, r1, #5
c0001724:	e2800040 	add	r0, r0, #64	; 0x40
c0001728:	e3a02001 	mov	r2, #1
c000172c:	e201101f 	and	r1, r1, #31
c0001730:	e5933008 	ldr	r3, [r3, #8]
c0001734:	e1a01112 	lsl	r1, r2, r1
c0001738:	e0830100 	add	r0, r3, r0, lsl #2
c000173c:	ea0003cb 	b	c0002670 <_Z9Xil_Out32mm>

c0001740 <_Z15XScuGic_DisableP7XScuGicm>:
c0001740:	e5903000 	ldr	r3, [r0]
c0001744:	e1a002a1 	lsr	r0, r1, #5
c0001748:	e2800060 	add	r0, r0, #96	; 0x60
c000174c:	e3a02001 	mov	r2, #1
c0001750:	e201101f 	and	r1, r1, #31
c0001754:	e5933008 	ldr	r3, [r3, #8]
c0001758:	e1a01112 	lsl	r1, r2, r1
c000175c:	e0830100 	add	r0, r3, r0, lsl #2
c0001760:	ea0003c2 	b	c0002670 <_Z9Xil_Out32mm>

c0001764 <_Z20XScuGic_SoftwareIntrP7XScuGicmm>:
c0001764:	e92d4008 	push	{r3, lr}
c0001768:	e1812802 	orr	r2, r1, r2, lsl #16
c000176c:	e5903000 	ldr	r3, [r0]
c0001770:	e3a0100f 	mov	r1, #15
c0001774:	e34010ff 	movt	r1, #255	; 0xff
c0001778:	e0021001 	and	r1, r2, r1
c000177c:	e5930008 	ldr	r0, [r3, #8]
c0001780:	e2800c0f 	add	r0, r0, #3840	; 0xf00
c0001784:	eb0003b9 	bl	c0002670 <_Z9Xil_Out32mm>
c0001788:	e3a00000 	mov	r0, #0
c000178c:	e8bd8008 	pop	{r3, pc}

c0001790 <_Z30XScuGic_SetPriorityTriggerTypeP7XScuGicmhh>:
c0001790:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
c0001794:	e1a04001 	mov	r4, r1
c0001798:	e5901000 	ldr	r1, [r0]
c000179c:	e1a05000 	mov	r5, r0
c00017a0:	e3c46003 	bic	r6, r4, #3
c00017a4:	e1a08002 	mov	r8, r2
c00017a8:	e2866b01 	add	r6, r6, #1024	; 0x400
c00017ac:	e1a07003 	mov	r7, r3
c00017b0:	e5910008 	ldr	r0, [r1, #8]
c00017b4:	e0860000 	add	r0, r6, r0
c00017b8:	eb0003a6 	bl	c0002658 <_Z8Xil_In32m>
c00017bc:	e5953000 	ldr	r3, [r5]
c00017c0:	e204c003 	and	ip, r4, #3
c00017c4:	e20810f8 	and	r1, r8, #248	; 0xf8
c00017c8:	e1a0c18c 	lsl	ip, ip, #3
c00017cc:	e5932008 	ldr	r2, [r3, #8]
c00017d0:	e3a030ff 	mov	r3, #255	; 0xff
c00017d4:	e1c03c13 	bic	r3, r0, r3, lsl ip
c00017d8:	e0860002 	add	r0, r6, r2
c00017dc:	e1831c11 	orr	r1, r3, r1, lsl ip
c00017e0:	e1a06224 	lsr	r6, r4, #4
c00017e4:	eb0003a1 	bl	c0002670 <_Z9Xil_Out32mm>
c00017e8:	e5953000 	ldr	r3, [r5]
c00017ec:	e2866c03 	add	r6, r6, #768	; 0x300
c00017f0:	e204400f 	and	r4, r4, #15
c00017f4:	e5930008 	ldr	r0, [r3, #8]
c00017f8:	e1a06106 	lsl	r6, r6, #2
c00017fc:	e1a04084 	lsl	r4, r4, #1
c0001800:	e0860000 	add	r0, r6, r0
c0001804:	eb000393 	bl	c0002658 <_Z8Xil_In32m>
c0001808:	e5953000 	ldr	r3, [r5]
c000180c:	e3a01003 	mov	r1, #3
c0001810:	e5933008 	ldr	r3, [r3, #8]
c0001814:	e1c01411 	bic	r1, r0, r1, lsl r4
c0001818:	e0860003 	add	r0, r6, r3
c000181c:	e1811417 	orr	r1, r1, r7, lsl r4
c0001820:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
c0001824:	ea000391 	b	c0002670 <_Z9Xil_Out32mm>

c0001828 <_Z30XScuGic_GetPriorityTriggerTypeP7XScuGicmPhS1_>:
c0001828:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
c000182c:	e1a05000 	mov	r5, r0
c0001830:	e5900000 	ldr	r0, [r0]
c0001834:	e1a04001 	mov	r4, r1
c0001838:	e3c11003 	bic	r1, r1, #3
c000183c:	e1a06002 	mov	r6, r2
c0001840:	e2811b01 	add	r1, r1, #1024	; 0x400
c0001844:	e1a07003 	mov	r7, r3
c0001848:	e5900008 	ldr	r0, [r0, #8]
c000184c:	e0810000 	add	r0, r1, r0
c0001850:	eb000380 	bl	c0002658 <_Z8Xil_In32m>
c0001854:	e2042003 	and	r2, r4, #3
c0001858:	e1a03224 	lsr	r3, r4, #4
c000185c:	e204400f 	and	r4, r4, #15
c0001860:	e1a02182 	lsl	r2, r2, #3
c0001864:	e2833c03 	add	r3, r3, #768	; 0x300
c0001868:	e1a04084 	lsl	r4, r4, #1
c000186c:	e1a00230 	lsr	r0, r0, r2
c0001870:	e5c60000 	strb	r0, [r6]
c0001874:	e5952000 	ldr	r2, [r5]
c0001878:	e5920008 	ldr	r0, [r2, #8]
c000187c:	e0800103 	add	r0, r0, r3, lsl #2
c0001880:	eb000374 	bl	c0002658 <_Z8Xil_In32m>
c0001884:	e1a00430 	lsr	r0, r0, r4
c0001888:	e2004003 	and	r4, r0, #3
c000188c:	e5c74000 	strb	r4, [r7]
c0001890:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

c0001894 <_Z24XScuGic_DeviceInitializem>:
c0001894:	e92d4038 	push	{r3, r4, r5, lr}
c0001898:	e3053dfc 	movw	r3, #24060	; 0x5dfc
c000189c:	e34c3000 	movt	r3, #49152	; 0xc000
c00018a0:	e3a05fc1 	mov	r5, #772	; 0x304
c00018a4:	e3a01000 	mov	r1, #0
c00018a8:	e3a04020 	mov	r4, #32
c00018ac:	e0253095 	mla	r5, r5, r0, r3
c00018b0:	e5950008 	ldr	r0, [r5, #8]
c00018b4:	eb00036d 	bl	c0002670 <_Z9Xil_Out32mm>
c00018b8:	e1a00224 	lsr	r0, r4, #4
c00018bc:	e5953008 	ldr	r3, [r5, #8]
c00018c0:	e2800c03 	add	r0, r0, #768	; 0x300
c00018c4:	e3a01000 	mov	r1, #0
c00018c8:	e2844010 	add	r4, r4, #16
c00018cc:	e0830100 	add	r0, r3, r0, lsl #2
c00018d0:	eb000366 	bl	c0002670 <_Z9Xil_Out32mm>
c00018d4:	e3540060 	cmp	r4, #96	; 0x60
c00018d8:	1afffff6 	bne	c00018b8 <_Z24XScuGic_DeviceInitializem+0x24>
c00018dc:	e3a04000 	mov	r4, #0
c00018e0:	e3c40003 	bic	r0, r4, #3
c00018e4:	e5953008 	ldr	r3, [r5, #8]
c00018e8:	e2800b01 	add	r0, r0, #1024	; 0x400
c00018ec:	e30a10a0 	movw	r1, #41120	; 0xa0a0
c00018f0:	e0800003 	add	r0, r0, r3
c00018f4:	e34a10a0 	movt	r1, #41120	; 0xa0a0
c00018f8:	e2844004 	add	r4, r4, #4
c00018fc:	eb00035b 	bl	c0002670 <_Z9Xil_Out32mm>
c0001900:	e3540060 	cmp	r4, #96	; 0x60
c0001904:	1afffff5 	bne	c00018e0 <_Z24XScuGic_DeviceInitializem+0x4c>
c0001908:	e3a04020 	mov	r4, #32
c000190c:	e3c40003 	bic	r0, r4, #3
c0001910:	e5953008 	ldr	r3, [r5, #8]
c0001914:	e2800b02 	add	r0, r0, #2048	; 0x800
c0001918:	e3001101 	movw	r1, #257	; 0x101
c000191c:	e0800003 	add	r0, r0, r3
c0001920:	e3401101 	movt	r1, #257	; 0x101
c0001924:	e2844004 	add	r4, r4, #4
c0001928:	eb000350 	bl	c0002670 <_Z9Xil_Out32mm>
c000192c:	e3540060 	cmp	r4, #96	; 0x60
c0001930:	1afffff5 	bne	c000190c <_Z24XScuGic_DeviceInitializem+0x78>
c0001934:	e3a04000 	mov	r4, #0
c0001938:	e1a002a4 	lsr	r0, r4, #5
c000193c:	e5953008 	ldr	r3, [r5, #8]
c0001940:	e2800060 	add	r0, r0, #96	; 0x60
c0001944:	e3e01000 	mvn	r1, #0
c0001948:	e2844020 	add	r4, r4, #32
c000194c:	e0830100 	add	r0, r3, r0, lsl #2
c0001950:	eb000346 	bl	c0002670 <_Z9Xil_Out32mm>
c0001954:	e3540060 	cmp	r4, #96	; 0x60
c0001958:	1afffff6 	bne	c0001938 <_Z24XScuGic_DeviceInitializem+0xa4>
c000195c:	e5950008 	ldr	r0, [r5, #8]
c0001960:	e3a01001 	mov	r1, #1
c0001964:	eb000341 	bl	c0002670 <_Z9Xil_Out32mm>
c0001968:	e5950004 	ldr	r0, [r5, #4]
c000196c:	e3a010f0 	mov	r1, #240	; 0xf0
c0001970:	e2800004 	add	r0, r0, #4
c0001974:	eb00033d 	bl	c0002670 <_Z9Xil_Out32mm>
c0001978:	e5950004 	ldr	r0, [r5, #4]
c000197c:	e3a01007 	mov	r1, #7
c0001980:	eb00033a 	bl	c0002670 <_Z9Xil_Out32mm>
c0001984:	e3a00000 	mov	r0, #0
c0001988:	e8bd8038 	pop	{r3, r4, r5, pc}

c000198c <_Z30XScuGic_DeviceInterruptHandlerPv>:
c000198c:	e92d4038 	push	{r3, r4, r5, lr}
c0001990:	e3053dfc 	movw	r3, #24060	; 0x5dfc
c0001994:	e34c3000 	movt	r3, #49152	; 0xc000
c0001998:	e3a05fc1 	mov	r5, #772	; 0x304
c000199c:	e0253095 	mla	r5, r5, r0, r3
c00019a0:	e5950004 	ldr	r0, [r5, #4]
c00019a4:	e280000c 	add	r0, r0, #12
c00019a8:	eb00032a 	bl	c0002658 <_Z8Xil_In32m>
c00019ac:	e1a04b00 	lsl	r4, r0, #22
c00019b0:	e1a04b24 	lsr	r4, r4, #22
c00019b4:	e354005f 	cmp	r4, #95	; 0x5f
c00019b8:	8a000004 	bhi	c00019d0 <_Z30XScuGic_DeviceInterruptHandlerPv+0x44>
c00019bc:	e2843001 	add	r3, r4, #1
c00019c0:	e0853183 	add	r3, r5, r3, lsl #3
c00019c4:	e5932004 	ldr	r2, [r3, #4]
c00019c8:	e5930008 	ldr	r0, [r3, #8]
c00019cc:	e12fff32 	blx	r2
c00019d0:	e5950004 	ldr	r0, [r5, #4]
c00019d4:	e1a01004 	mov	r1, r4
c00019d8:	e2800010 	add	r0, r0, #16
c00019dc:	e8bd4038 	pop	{r3, r4, r5, lr}
c00019e0:	ea000322 	b	c0002670 <_Z9Xil_Out32mm>

c00019e4 <_Z23XScuGic_RegisterHandlermiPFvPvES_>:
c00019e4:	e305cdfc 	movw	ip, #24060	; 0x5dfc
c00019e8:	e34cc000 	movt	ip, #49152	; 0xc000
c00019ec:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
c00019f0:	e59c4004 	ldr	r4, [ip, #4]
c00019f4:	e1500004 	cmp	r0, r4
c00019f8:	02811001 	addeq	r1, r1, #1
c00019fc:	008cc181 	addeq	ip, ip, r1, lsl #3
c0001a00:	098c000c 	stmibeq	ip, {r2, r3}
c0001a04:	e8bd0010 	ldmfd	sp!, {r4}
c0001a08:	e12fff1e 	bx	lr

c0001a0c <_Z32XScuGic_SetPriTrigTypeByDistAddrmmhh>:
c0001a0c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
c0001a10:	e3c16003 	bic	r6, r1, #3
c0001a14:	e2866b01 	add	r6, r6, #1024	; 0x400
c0001a18:	e1a05000 	mov	r5, r0
c0001a1c:	e0866000 	add	r6, r6, r0
c0001a20:	e1a04001 	mov	r4, r1
c0001a24:	e1a08002 	mov	r8, r2
c0001a28:	e1a07003 	mov	r7, r3
c0001a2c:	e1a00006 	mov	r0, r6
c0001a30:	eb000308 	bl	c0002658 <_Z8Xil_In32m>
c0001a34:	e204c003 	and	ip, r4, #3
c0001a38:	e20810f8 	and	r1, r8, #248	; 0xf8
c0001a3c:	e3a030ff 	mov	r3, #255	; 0xff
c0001a40:	e1a0c18c 	lsl	ip, ip, #3
c0001a44:	e1c03c13 	bic	r3, r0, r3, lsl ip
c0001a48:	e1a00006 	mov	r0, r6
c0001a4c:	e1831c11 	orr	r1, r3, r1, lsl ip
c0001a50:	eb000306 	bl	c0002670 <_Z9Xil_Out32mm>
c0001a54:	e1a03224 	lsr	r3, r4, #4
c0001a58:	e2833c03 	add	r3, r3, #768	; 0x300
c0001a5c:	e204400f 	and	r4, r4, #15
c0001a60:	e0855103 	add	r5, r5, r3, lsl #2
c0001a64:	e1a04084 	lsl	r4, r4, #1
c0001a68:	e1a00005 	mov	r0, r5
c0001a6c:	eb0002f9 	bl	c0002658 <_Z8Xil_In32m>
c0001a70:	e3a01003 	mov	r1, #3
c0001a74:	e1c01411 	bic	r1, r0, r1, lsl r4
c0001a78:	e1a00005 	mov	r0, r5
c0001a7c:	e1811417 	orr	r1, r1, r7, lsl r4
c0001a80:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
c0001a84:	ea0002f9 	b	c0002670 <_Z9Xil_Out32mm>

c0001a88 <_Z32XScuGic_GetPriTrigTypeByDistAddrmmPhS_>:
c0001a88:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
c0001a8c:	e1a04001 	mov	r4, r1
c0001a90:	e3c11003 	bic	r1, r1, #3
c0001a94:	e1a05000 	mov	r5, r0
c0001a98:	e2811b01 	add	r1, r1, #1024	; 0x400
c0001a9c:	e1a06002 	mov	r6, r2
c0001aa0:	e0810000 	add	r0, r1, r0
c0001aa4:	e1a07003 	mov	r7, r3
c0001aa8:	eb0002ea 	bl	c0002658 <_Z8Xil_In32m>
c0001aac:	e2043003 	and	r3, r4, #3
c0001ab0:	e1a02224 	lsr	r2, r4, #4
c0001ab4:	e204400f 	and	r4, r4, #15
c0001ab8:	e2822c03 	add	r2, r2, #768	; 0x300
c0001abc:	e1a03183 	lsl	r3, r3, #3
c0001ac0:	e1a04084 	lsl	r4, r4, #1
c0001ac4:	e1a03330 	lsr	r3, r0, r3
c0001ac8:	e0850102 	add	r0, r5, r2, lsl #2
c0001acc:	e5c63000 	strb	r3, [r6]
c0001ad0:	eb0002e0 	bl	c0002658 <_Z8Xil_In32m>
c0001ad4:	e1a00430 	lsr	r0, r0, r4
c0001ad8:	e2004003 	and	r4, r0, #3
c0001adc:	e5c74000 	strb	r4, [r7]
c0001ae0:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

c0001ae4 <_Z24XScuGic_InterruptHandlerP7XScuGic>:
c0001ae4:	e92d4038 	push	{r3, r4, r5, lr}
c0001ae8:	e1a05000 	mov	r5, r0
c0001aec:	e5903000 	ldr	r3, [r0]
c0001af0:	e5930004 	ldr	r0, [r3, #4]
c0001af4:	e280000c 	add	r0, r0, #12
c0001af8:	eb0002d6 	bl	c0002658 <_Z8Xil_In32m>
c0001afc:	e3063b28 	movw	r3, #27432	; 0x6b28
c0001b00:	e34c3000 	movt	r3, #49152	; 0xc000
c0001b04:	e1a04b00 	lsl	r4, r0, #22
c0001b08:	e1a04b24 	lsr	r4, r4, #22
c0001b0c:	e5834000 	str	r4, [r3]
c0001b10:	e354005f 	cmp	r4, #95	; 0x5f
c0001b14:	8a000005 	bhi	c0001b30 <_Z24XScuGic_InterruptHandlerP7XScuGic+0x4c>
c0001b18:	e5952000 	ldr	r2, [r5]
c0001b1c:	e2843001 	add	r3, r4, #1
c0001b20:	e0823183 	add	r3, r2, r3, lsl #3
c0001b24:	e5932004 	ldr	r2, [r3, #4]
c0001b28:	e5930008 	ldr	r0, [r3, #8]
c0001b2c:	e12fff32 	blx	r2
c0001b30:	e5953000 	ldr	r3, [r5]
c0001b34:	e1a01004 	mov	r1, r4
c0001b38:	e5930004 	ldr	r0, [r3, #4]
c0001b3c:	e2800010 	add	r0, r0, #16
c0001b40:	e8bd4038 	pop	{r3, r4, r5, lr}
c0001b44:	ea0002c9 	b	c0002670 <_Z9Xil_Out32mm>

c0001b48 <_Z16XScuGic_SelfTestP7XScuGic>:
c0001b48:	e92d4070 	push	{r4, r5, r6, lr}
c0001b4c:	e3a04000 	mov	r4, #0
c0001b50:	e1a06000 	mov	r6, r0
c0001b54:	e1a05004 	mov	r5, r4
c0001b58:	e5963000 	ldr	r3, [r6]
c0001b5c:	e2842eff 	add	r2, r4, #4080	; 0xff0
c0001b60:	e5930008 	ldr	r0, [r3, #8]
c0001b64:	e0820000 	add	r0, r2, r0
c0001b68:	eb0002ba 	bl	c0002658 <_Z8Xil_In32m>
c0001b6c:	e1a03084 	lsl	r3, r4, #1
c0001b70:	e2844004 	add	r4, r4, #4
c0001b74:	e3540010 	cmp	r4, #16
c0001b78:	e1855310 	orr	r5, r5, r0, lsl r3
c0001b7c:	1afffff5 	bne	c0001b58 <_Z16XScuGic_SelfTestP7XScuGic+0x10>
c0001b80:	e30f000d 	movw	r0, #61453	; 0xf00d
c0001b84:	e34b0105 	movt	r0, #45317	; 0xb105
c0001b88:	e0550000 	subs	r0, r5, r0
c0001b8c:	13a00001 	movne	r0, #1
c0001b90:	e8bd8070 	pop	{r4, r5, r6, pc}

c0001b94 <_Z20XScuGic_LookupConfigt>:
c0001b94:	e3053dfc 	movw	r3, #24060	; 0x5dfc
c0001b98:	e34c3000 	movt	r3, #49152	; 0xc000
c0001b9c:	e1d320b0 	ldrh	r2, [r3]
c0001ba0:	e1520000 	cmp	r2, r0
c0001ba4:	01a00003 	moveq	r0, r3
c0001ba8:	13a00000 	movne	r0, #0
c0001bac:	e12fff1e 	bx	lr

c0001bb0 <outbyte>:
c0001bb0:	e1a01000 	mov	r1, r0
c0001bb4:	e3a00a01 	mov	r0, #4096	; 0x1000
c0001bb8:	e34e0000 	movt	r0, #57344	; 0xe000
c0001bbc:	ea000465 	b	c0002d58 <_Z16XUartPs_SendBytemh>

c0001bc0 <_Z14Private_TmrCfgm>:
c0001bc0:	e2501000 	subs	r1, r0, #0
c0001bc4:	e92d4010 	push	{r4, lr}
c0001bc8:	0a00000b 	beq	c0001bfc <_Z14Private_TmrCfgm+0x3c>
c0001bcc:	e3a04000 	mov	r4, #0
c0001bd0:	e34f48f0 	movt	r4, #63728	; 0xf8f0
c0001bd4:	e3a03000 	mov	r3, #0
c0001bd8:	e3040355 	movw	r0, #17237	; 0x4355
c0001bdc:	e584360c 	str	r3, [r4, #1548]	; 0x60c
c0001be0:	e34103de 	movt	r0, #5086	; 0x13de
c0001be4:	ebfff9dd 	bl	c0000360 <__aeabi_uidiv>
c0001be8:	e3a03006 	mov	r3, #6
c0001bec:	e5843608 	str	r3, [r4, #1544]	; 0x608
c0001bf0:	e2400001 	sub	r0, r0, #1
c0001bf4:	e5840600 	str	r0, [r4, #1536]	; 0x600
c0001bf8:	e8bd8010 	pop	{r4, pc}
c0001bfc:	e30503e4 	movw	r0, #21476	; 0x53e4
c0001c00:	e34c0000 	movt	r0, #49152	; 0xc000
c0001c04:	e8bd4010 	pop	{r4, lr}
c0001c08:	ea000a75 	b	c00045e4 <print>

c0001c0c <_Z16Private_TmrStartv>:
c0001c0c:	e3a03000 	mov	r3, #0
c0001c10:	e34f38f0 	movt	r3, #63728	; 0xf8f0
c0001c14:	e5932608 	ldr	r2, [r3, #1544]	; 0x608
c0001c18:	e3822001 	orr	r2, r2, #1
c0001c1c:	e5832608 	str	r2, [r3, #1544]	; 0x608
c0001c20:	e12fff1e 	bx	lr

c0001c24 <_Z20Private_TmrOutCmpCfgv>:
c0001c24:	e3a00000 	mov	r0, #0
c0001c28:	e12fff1e 	bx	lr

c0001c2c <_Z17Private_TmrIntClrv>:
c0001c2c:	e3a03000 	mov	r3, #0
c0001c30:	e34f38f0 	movt	r3, #63728	; 0xf8f0
c0001c34:	e593260c 	ldr	r2, [r3, #1548]	; 0x60c
c0001c38:	e3822001 	orr	r2, r2, #1
c0001c3c:	e583260c 	str	r2, [r3, #1548]	; 0x60c
c0001c40:	e12fff1e 	bx	lr

c0001c44 <_Z14Private_TmrRstv>:
c0001c44:	e12fff1e 	bx	lr

c0001c48 <_Z13Private_TmrRdv>:
c0001c48:	e3a03000 	mov	r3, #0
c0001c4c:	e34f38f0 	movt	r3, #63728	; 0xf8f0
c0001c50:	e5930604 	ldr	r0, [r3, #1540]	; 0x604
c0001c54:	e12fff1e 	bx	lr

c0001c58 <_Z15Private_TmrStopv>:
c0001c58:	e12fff1e 	bx	lr

c0001c5c <_Z13Private_TmrWrm>:
c0001c5c:	e3a03000 	mov	r3, #0
c0001c60:	e34f38f0 	movt	r3, #63728	; 0xf8f0
c0001c64:	e5830604 	str	r0, [r3, #1540]	; 0x604
c0001c68:	e12fff1e 	bx	lr

c0001c6c <Xil_DCacheFlushRange>:
c0001c6c:	e10f2000 	mrs	r2, CPSR
c0001c70:	e38230c0 	orr	r3, r2, #192	; 0xc0
c0001c74:	e129f003 	msr	CPSR_fc, r3
c0001c78:	e3510000 	cmp	r1, #0
c0001c7c:	0a00000b 	beq	c0001cb0 <Xil_DCacheFlushRange+0x44>
c0001c80:	e0811000 	add	r1, r1, r0
c0001c84:	e3c0001f 	bic	r0, r0, #31
c0001c88:	e1510000 	cmp	r1, r0
c0001c8c:	9a000007 	bls	c0001cb0 <Xil_DCacheFlushRange+0x44>
c0001c90:	e3a03a02 	mov	r3, #8192	; 0x2000
c0001c94:	e34f38f0 	movt	r3, #63728	; 0xf8f0
c0001c98:	ee070f5e 	mcr	15, 0, r0, cr7, cr14, {2}
c0001c9c:	e58307f0 	str	r0, [r3, #2032]	; 0x7f0
c0001ca0:	f57ff04f 	dsb	sy
c0001ca4:	e2800020 	add	r0, r0, #32
c0001ca8:	e1510000 	cmp	r1, r0
c0001cac:	8afffff9 	bhi	c0001c98 <Xil_DCacheFlushRange+0x2c>
c0001cb0:	f57ff04f 	dsb	sy
c0001cb4:	e129f002 	msr	CPSR_fc, r2
c0001cb8:	e12fff1e 	bx	lr

c0001cbc <Xil_ICacheInvalidateRange>:
c0001cbc:	e10f2000 	mrs	r2, CPSR
c0001cc0:	e38230c0 	orr	r3, r2, #192	; 0xc0
c0001cc4:	e129f003 	msr	CPSR_fc, r3
c0001cc8:	e3510000 	cmp	r1, #0
c0001ccc:	0a00000d 	beq	c0001d08 <Xil_ICacheInvalidateRange+0x4c>
c0001cd0:	e0811000 	add	r1, r1, r0
c0001cd4:	e3a03001 	mov	r3, #1
c0001cd8:	e3c0001f 	bic	r0, r0, #31
c0001cdc:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
c0001ce0:	e1510000 	cmp	r1, r0
c0001ce4:	9a000007 	bls	c0001d08 <Xil_ICacheInvalidateRange+0x4c>
c0001ce8:	e3a03a02 	mov	r3, #8192	; 0x2000
c0001cec:	e34f38f0 	movt	r3, #63728	; 0xf8f0
c0001cf0:	e5830770 	str	r0, [r3, #1904]	; 0x770
c0001cf4:	f57ff04f 	dsb	sy
c0001cf8:	ee070f35 	mcr	15, 0, r0, cr7, cr5, {1}
c0001cfc:	e2800020 	add	r0, r0, #32
c0001d00:	e1510000 	cmp	r1, r0
c0001d04:	8afffff9 	bhi	c0001cf0 <Xil_ICacheInvalidateRange+0x34>
c0001d08:	f57ff04f 	dsb	sy
c0001d0c:	e129f002 	msr	CPSR_fc, r2
c0001d10:	e12fff1e 	bx	lr

c0001d14 <Xil_L1DCacheInvalidate>:
c0001d14:	e92d45f8 	push	{r3, r4, r5, r6, r7, r8, sl, lr}
c0001d18:	e10fa000 	mrs	sl, CPSR
c0001d1c:	e38a30c0 	orr	r3, sl, #192	; 0xc0
c0001d20:	e129f003 	msr	CPSR_fc, r3
c0001d24:	e3a03000 	mov	r3, #0
c0001d28:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
c0001d2c:	ee304f10 	mrc	15, 1, r4, cr0, cr0, {0}
c0001d30:	e7e806d4 	ubfx	r0, r4, #13, #9
c0001d34:	e7e681d4 	ubfx	r8, r4, #3, #7
c0001d38:	e2800001 	add	r0, r0, #1
c0001d3c:	e2888001 	add	r8, r8, #1
c0001d40:	e3a05001 	mov	r5, #1
c0001d44:	e3a06000 	mov	r6, #0
c0001d48:	e1a01008 	mov	r1, r8
c0001d4c:	e1a00380 	lsl	r0, r0, #7
c0001d50:	ebfff982 	bl	c0000360 <__aeabi_uidiv>
c0001d54:	e2043007 	and	r3, r4, #7
c0001d58:	e2833004 	add	r3, r3, #4
c0001d5c:	e1a07006 	mov	r7, r6
c0001d60:	e1a05315 	lsl	r5, r5, r3
c0001d64:	e1a00330 	lsr	r0, r0, r3
c0001d68:	e2401001 	sub	r1, r0, #1
c0001d6c:	e0215195 	mla	r1, r5, r1, r5
c0001d70:	e3500000 	cmp	r0, #0
c0001d74:	e1a04f06 	lsl	r4, r6, #30
c0001d78:	11a02007 	movne	r2, r7
c0001d7c:	13a03000 	movne	r3, #0
c0001d80:	0a000006 	beq	c0001da0 <Xil_L1DCacheInvalidate+0x8c>
c0001d84:	e182c004 	orr	ip, r2, r4
c0001d88:	ee07cf56 	mcr	15, 0, ip, cr7, cr6, {2}
c0001d8c:	e2833001 	add	r3, r3, #1
c0001d90:	e0822005 	add	r2, r2, r5
c0001d94:	e1530000 	cmp	r3, r0
c0001d98:	1afffff9 	bne	c0001d84 <Xil_L1DCacheInvalidate+0x70>
c0001d9c:	e0877001 	add	r7, r7, r1
c0001da0:	e2866001 	add	r6, r6, #1
c0001da4:	e1580006 	cmp	r8, r6
c0001da8:	8afffff0 	bhi	c0001d70 <Xil_L1DCacheInvalidate+0x5c>
c0001dac:	f57ff04f 	dsb	sy
c0001db0:	e129f00a 	msr	CPSR_fc, sl
c0001db4:	e8bd85f8 	pop	{r3, r4, r5, r6, r7, r8, sl, pc}

c0001db8 <Xil_L1DCacheEnable>:
c0001db8:	e92d4010 	push	{r4, lr}
c0001dbc:	ee114f10 	mrc	15, 0, r4, cr1, cr0, {0}
c0001dc0:	e3140004 	tst	r4, #4
c0001dc4:	18bd8010 	popne	{r4, pc}
c0001dc8:	ebffffd1 	bl	c0001d14 <Xil_L1DCacheInvalidate>
c0001dcc:	e3844004 	orr	r4, r4, #4
c0001dd0:	ee014f10 	mcr	15, 0, r4, cr1, cr0, {0}
c0001dd4:	e8bd8010 	pop	{r4, pc}

c0001dd8 <Xil_L1DCacheInvalidateLine>:
c0001dd8:	e3a03000 	mov	r3, #0
c0001ddc:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
c0001de0:	e3c0001f 	bic	r0, r0, #31
c0001de4:	ee070f36 	mcr	15, 0, r0, cr7, cr6, {1}
c0001de8:	f57ff04f 	dsb	sy
c0001dec:	e12fff1e 	bx	lr

c0001df0 <Xil_L1DCacheInvalidateRange>:
c0001df0:	e10f3000 	mrs	r3, CPSR
c0001df4:	e38320c0 	orr	r2, r3, #192	; 0xc0
c0001df8:	e129f002 	msr	CPSR_fc, r2
c0001dfc:	e3510000 	cmp	r1, #0
c0001e00:	0a000009 	beq	c0001e2c <Xil_L1DCacheInvalidateRange+0x3c>
c0001e04:	e0811000 	add	r1, r1, r0
c0001e08:	e3a02000 	mov	r2, #0
c0001e0c:	e3c0001f 	bic	r0, r0, #31
c0001e10:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
c0001e14:	e1510000 	cmp	r1, r0
c0001e18:	9a000003 	bls	c0001e2c <Xil_L1DCacheInvalidateRange+0x3c>
c0001e1c:	ee070f36 	mcr	15, 0, r0, cr7, cr6, {1}
c0001e20:	e2800020 	add	r0, r0, #32
c0001e24:	e1510000 	cmp	r1, r0
c0001e28:	8afffffb 	bhi	c0001e1c <Xil_L1DCacheInvalidateRange+0x2c>
c0001e2c:	f57ff04f 	dsb	sy
c0001e30:	e129f003 	msr	CPSR_fc, r3
c0001e34:	e12fff1e 	bx	lr

c0001e38 <Xil_L1DCacheFlush>:
c0001e38:	e92d45f8 	push	{r3, r4, r5, r6, r7, r8, sl, lr}
c0001e3c:	e10fa000 	mrs	sl, CPSR
c0001e40:	e38a30c0 	orr	r3, sl, #192	; 0xc0
c0001e44:	e129f003 	msr	CPSR_fc, r3
c0001e48:	e3a03000 	mov	r3, #0
c0001e4c:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
c0001e50:	ee304f10 	mrc	15, 1, r4, cr0, cr0, {0}
c0001e54:	e7e806d4 	ubfx	r0, r4, #13, #9
c0001e58:	e7e681d4 	ubfx	r8, r4, #3, #7
c0001e5c:	e2800001 	add	r0, r0, #1
c0001e60:	e2888001 	add	r8, r8, #1
c0001e64:	e3a05001 	mov	r5, #1
c0001e68:	e3a06000 	mov	r6, #0
c0001e6c:	e1a01008 	mov	r1, r8
c0001e70:	e1a00380 	lsl	r0, r0, #7
c0001e74:	ebfff939 	bl	c0000360 <__aeabi_uidiv>
c0001e78:	e2043007 	and	r3, r4, #7
c0001e7c:	e2833004 	add	r3, r3, #4
c0001e80:	e1a07006 	mov	r7, r6
c0001e84:	e1a05315 	lsl	r5, r5, r3
c0001e88:	e1a00330 	lsr	r0, r0, r3
c0001e8c:	e2401001 	sub	r1, r0, #1
c0001e90:	e0215195 	mla	r1, r5, r1, r5
c0001e94:	e3500000 	cmp	r0, #0
c0001e98:	e1a04f06 	lsl	r4, r6, #30
c0001e9c:	11a02007 	movne	r2, r7
c0001ea0:	13a03000 	movne	r3, #0
c0001ea4:	0a000006 	beq	c0001ec4 <Xil_L1DCacheFlush+0x8c>
c0001ea8:	e182c004 	orr	ip, r2, r4
c0001eac:	ee07cf5e 	mcr	15, 0, ip, cr7, cr14, {2}
c0001eb0:	e2833001 	add	r3, r3, #1
c0001eb4:	e0822005 	add	r2, r2, r5
c0001eb8:	e1530000 	cmp	r3, r0
c0001ebc:	1afffff9 	bne	c0001ea8 <Xil_L1DCacheFlush+0x70>
c0001ec0:	e0877001 	add	r7, r7, r1
c0001ec4:	e2866001 	add	r6, r6, #1
c0001ec8:	e1580006 	cmp	r8, r6
c0001ecc:	8afffff0 	bhi	c0001e94 <Xil_L1DCacheFlush+0x5c>
c0001ed0:	f57ff04f 	dsb	sy
c0001ed4:	e129f00a 	msr	CPSR_fc, sl
c0001ed8:	e8bd85f8 	pop	{r3, r4, r5, r6, r7, r8, sl, pc}

c0001edc <Xil_L1DCacheDisable>:
c0001edc:	e92d4008 	push	{r3, lr}
c0001ee0:	ebffffd4 	bl	c0001e38 <Xil_L1DCacheFlush>
c0001ee4:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
c0001ee8:	e3c33004 	bic	r3, r3, #4
c0001eec:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
c0001ef0:	e8bd8008 	pop	{r3, pc}

c0001ef4 <Xil_L1DCacheFlushLine>:
c0001ef4:	e3a03000 	mov	r3, #0
c0001ef8:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
c0001efc:	e3c0001f 	bic	r0, r0, #31
c0001f00:	ee070f3e 	mcr	15, 0, r0, cr7, cr14, {1}
c0001f04:	f57ff04f 	dsb	sy
c0001f08:	e12fff1e 	bx	lr

c0001f0c <Xil_L1DCacheFlushRange>:
c0001f0c:	e10f3000 	mrs	r3, CPSR
c0001f10:	e38320c0 	orr	r2, r3, #192	; 0xc0
c0001f14:	e129f002 	msr	CPSR_fc, r2
c0001f18:	e3510000 	cmp	r1, #0
c0001f1c:	0a000009 	beq	c0001f48 <Xil_L1DCacheFlushRange+0x3c>
c0001f20:	e0811000 	add	r1, r1, r0
c0001f24:	e3a02000 	mov	r2, #0
c0001f28:	e3c0001f 	bic	r0, r0, #31
c0001f2c:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
c0001f30:	e1510000 	cmp	r1, r0
c0001f34:	9a000003 	bls	c0001f48 <Xil_L1DCacheFlushRange+0x3c>
c0001f38:	ee070f3e 	mcr	15, 0, r0, cr7, cr14, {1}
c0001f3c:	e2800020 	add	r0, r0, #32
c0001f40:	e1510000 	cmp	r1, r0
c0001f44:	8afffffb 	bhi	c0001f38 <Xil_L1DCacheFlushRange+0x2c>
c0001f48:	f57ff04f 	dsb	sy
c0001f4c:	e129f003 	msr	CPSR_fc, r3
c0001f50:	e12fff1e 	bx	lr

c0001f54 <Xil_L1DCacheStoreLine>:
c0001f54:	e3a03000 	mov	r3, #0
c0001f58:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
c0001f5c:	e3c0001f 	bic	r0, r0, #31
c0001f60:	ee070f3a 	mcr	15, 0, r0, cr7, cr10, {1}
c0001f64:	f57ff04f 	dsb	sy
c0001f68:	e12fff1e 	bx	lr

c0001f6c <Xil_L1ICacheEnable>:
c0001f6c:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
c0001f70:	e2132a01 	ands	r2, r3, #4096	; 0x1000
c0001f74:	112fff1e 	bxne	lr
c0001f78:	ee072f15 	mcr	15, 0, r2, cr7, cr5, {0}
c0001f7c:	e3833a01 	orr	r3, r3, #4096	; 0x1000
c0001f80:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
c0001f84:	e12fff1e 	bx	lr

c0001f88 <Xil_L1ICacheDisable>:
c0001f88:	f57ff04f 	dsb	sy
c0001f8c:	e3a03000 	mov	r3, #0
c0001f90:	ee073f15 	mcr	15, 0, r3, cr7, cr5, {0}
c0001f94:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
c0001f98:	e3c33a01 	bic	r3, r3, #4096	; 0x1000
c0001f9c:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
c0001fa0:	e12fff1e 	bx	lr

c0001fa4 <Xil_L1ICacheInvalidate>:
c0001fa4:	e3a03001 	mov	r3, #1
c0001fa8:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
c0001fac:	e3a03000 	mov	r3, #0
c0001fb0:	ee073f15 	mcr	15, 0, r3, cr7, cr5, {0}
c0001fb4:	f57ff04f 	dsb	sy
c0001fb8:	e12fff1e 	bx	lr

c0001fbc <Xil_L1ICacheInvalidateLine>:
c0001fbc:	e3a03001 	mov	r3, #1
c0001fc0:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
c0001fc4:	e3c0001f 	bic	r0, r0, #31
c0001fc8:	ee070f35 	mcr	15, 0, r0, cr7, cr5, {1}
c0001fcc:	f57ff04f 	dsb	sy
c0001fd0:	e12fff1e 	bx	lr

c0001fd4 <Xil_L1ICacheInvalidateRange>:
c0001fd4:	e10f3000 	mrs	r3, CPSR
c0001fd8:	e38320c0 	orr	r2, r3, #192	; 0xc0
c0001fdc:	e129f002 	msr	CPSR_fc, r2
c0001fe0:	e3510000 	cmp	r1, #0
c0001fe4:	0a000009 	beq	c0002010 <Xil_L1ICacheInvalidateRange+0x3c>
c0001fe8:	e0811000 	add	r1, r1, r0
c0001fec:	e3a02001 	mov	r2, #1
c0001ff0:	e3c0001f 	bic	r0, r0, #31
c0001ff4:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
c0001ff8:	e1510000 	cmp	r1, r0
c0001ffc:	9a000003 	bls	c0002010 <Xil_L1ICacheInvalidateRange+0x3c>
c0002000:	ee070f35 	mcr	15, 0, r0, cr7, cr5, {1}
c0002004:	e2800020 	add	r0, r0, #32
c0002008:	e1510000 	cmp	r1, r0
c000200c:	8afffffb 	bhi	c0002000 <Xil_L1ICacheInvalidateRange+0x2c>
c0002010:	f57ff04f 	dsb	sy
c0002014:	e129f003 	msr	CPSR_fc, r3
c0002018:	e12fff1e 	bx	lr

c000201c <Xil_L2CacheInvalidate>:
c000201c:	e302077c 	movw	r0, #10108	; 0x277c
c0002020:	e30f1fff 	movw	r1, #65535	; 0xffff
c0002024:	e92d4008 	push	{r3, lr}
c0002028:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c000202c:	eb00018f 	bl	c0002670 <_Z9Xil_Out32mm>
c0002030:	e302077c 	movw	r0, #10108	; 0x277c
c0002034:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c0002038:	eb000186 	bl	c0002658 <_Z8Xil_In32m>
c000203c:	e6ff1070 	uxth	r1, r0
c0002040:	e3510000 	cmp	r1, #0
c0002044:	1afffff9 	bne	c0002030 <Xil_L2CacheInvalidate+0x14>
c0002048:	e3a00d9d 	mov	r0, #10048	; 0x2740
c000204c:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c0002050:	eb000186 	bl	c0002670 <_Z9Xil_Out32mm>
c0002054:	f57ff04f 	dsb	sy
c0002058:	e8bd8008 	pop	{r3, pc}

c000205c <Xil_L2CacheEnable>:
c000205c:	e92d4010 	push	{r4, lr}
c0002060:	e3a00c21 	mov	r0, #8448	; 0x2100
c0002064:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c0002068:	eb00017a 	bl	c0002658 <_Z8Xil_In32m>
c000206c:	e2104001 	ands	r4, r0, #1
c0002070:	18bd8010 	popne	{r4, pc}
c0002074:	e3020104 	movw	r0, #8452	; 0x2104
c0002078:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c000207c:	eb000175 	bl	c0002658 <_Z8Xil_In32m>
c0002080:	e3c0180e 	bic	r1, r0, #917504	; 0xe0000
c0002084:	e3020104 	movw	r0, #8452	; 0x2104
c0002088:	e3811472 	orr	r1, r1, #1912602624	; 0x72000000
c000208c:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c0002090:	e3811836 	orr	r1, r1, #3538944	; 0x360000
c0002094:	eb000175 	bl	c0002670 <_Z9Xil_Out32mm>
c0002098:	e3001111 	movw	r1, #273	; 0x111
c000209c:	e3020108 	movw	r0, #8456	; 0x2108
c00020a0:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c00020a4:	eb000171 	bl	c0002670 <_Z9Xil_Out32mm>
c00020a8:	e3001121 	movw	r1, #289	; 0x121
c00020ac:	e302010c 	movw	r0, #8460	; 0x210c
c00020b0:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c00020b4:	eb00016d 	bl	c0002670 <_Z9Xil_Out32mm>
c00020b8:	e302021c 	movw	r0, #8732	; 0x221c
c00020bc:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c00020c0:	eb000164 	bl	c0002658 <_Z8Xil_In32m>
c00020c4:	e1a01000 	mov	r1, r0
c00020c8:	e3020220 	movw	r0, #8736	; 0x2220
c00020cc:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c00020d0:	eb000166 	bl	c0002670 <_Z9Xil_Out32mm>
c00020d4:	ebffffd0 	bl	c000201c <Xil_L2CacheInvalidate>
c00020d8:	e3a00c21 	mov	r0, #8448	; 0x2100
c00020dc:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c00020e0:	eb00015c 	bl	c0002658 <_Z8Xil_In32m>
c00020e4:	e3801001 	orr	r1, r0, #1
c00020e8:	e3a00c21 	mov	r0, #8448	; 0x2100
c00020ec:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c00020f0:	eb00015e 	bl	c0002670 <_Z9Xil_Out32mm>
c00020f4:	e1a01004 	mov	r1, r4
c00020f8:	e3a00d9d 	mov	r0, #10048	; 0x2740
c00020fc:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c0002100:	eb00015a 	bl	c0002670 <_Z9Xil_Out32mm>
c0002104:	f57ff04f 	dsb	sy
c0002108:	e8bd8010 	pop	{r4, pc}

c000210c <Xil_ICacheEnable>:
c000210c:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
c0002110:	e2132a01 	ands	r2, r3, #4096	; 0x1000
c0002114:	1a000002 	bne	c0002124 <Xil_ICacheEnable+0x18>
c0002118:	ee072f15 	mcr	15, 0, r2, cr7, cr5, {0}
c000211c:	e3833a01 	orr	r3, r3, #4096	; 0x1000
c0002120:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
c0002124:	eaffffcc 	b	c000205c <Xil_L2CacheEnable>

c0002128 <Xil_DCacheEnable>:
c0002128:	e92d4008 	push	{r3, lr}
c000212c:	ebffff21 	bl	c0001db8 <Xil_L1DCacheEnable>
c0002130:	e8bd4008 	pop	{r3, lr}
c0002134:	eaffffc8 	b	c000205c <Xil_L2CacheEnable>

c0002138 <Xil_ICacheInvalidate>:
c0002138:	e92d4010 	push	{r4, lr}
c000213c:	e10f4000 	mrs	r4, CPSR
c0002140:	e38430c0 	orr	r3, r4, #192	; 0xc0
c0002144:	e129f003 	msr	CPSR_fc, r3
c0002148:	ebffffb3 	bl	c000201c <Xil_L2CacheInvalidate>
c000214c:	e3a03001 	mov	r3, #1
c0002150:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
c0002154:	e3a03000 	mov	r3, #0
c0002158:	ee073f15 	mcr	15, 0, r3, cr7, cr5, {0}
c000215c:	f57ff04f 	dsb	sy
c0002160:	e129f004 	msr	CPSR_fc, r4
c0002164:	e8bd8010 	pop	{r4, pc}

c0002168 <Xil_DCacheInvalidate>:
c0002168:	e92d4010 	push	{r4, lr}
c000216c:	e10f4000 	mrs	r4, CPSR
c0002170:	e38430c0 	orr	r3, r4, #192	; 0xc0
c0002174:	e129f003 	msr	CPSR_fc, r3
c0002178:	ebffffa7 	bl	c000201c <Xil_L2CacheInvalidate>
c000217c:	ebfffee4 	bl	c0001d14 <Xil_L1DCacheInvalidate>
c0002180:	e129f004 	msr	CPSR_fc, r4
c0002184:	e8bd8010 	pop	{r4, pc}

c0002188 <Xil_L2CacheInvalidateLine>:
c0002188:	e1a01000 	mov	r1, r0
c000218c:	e3020770 	movw	r0, #10096	; 0x2770
c0002190:	e92d4008 	push	{r3, lr}
c0002194:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c0002198:	eb000134 	bl	c0002670 <_Z9Xil_Out32mm>
c000219c:	f57ff04f 	dsb	sy
c00021a0:	e8bd8008 	pop	{r3, pc}

c00021a4 <Xil_ICacheInvalidateLine>:
c00021a4:	e92d4038 	push	{r3, r4, r5, lr}
c00021a8:	e1a05000 	mov	r5, r0
c00021ac:	e10f4000 	mrs	r4, CPSR
c00021b0:	e38430c0 	orr	r3, r4, #192	; 0xc0
c00021b4:	e129f003 	msr	CPSR_fc, r3
c00021b8:	ebfffff2 	bl	c0002188 <Xil_L2CacheInvalidateLine>
c00021bc:	e3a03001 	mov	r3, #1
c00021c0:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
c00021c4:	e3c5501f 	bic	r5, r5, #31
c00021c8:	ee075f35 	mcr	15, 0, r5, cr7, cr5, {1}
c00021cc:	f57ff04f 	dsb	sy
c00021d0:	e129f004 	msr	CPSR_fc, r4
c00021d4:	e8bd8038 	pop	{r3, r4, r5, pc}

c00021d8 <Xil_DCacheInvalidateLine>:
c00021d8:	e92d4038 	push	{r3, r4, r5, lr}
c00021dc:	e1a05000 	mov	r5, r0
c00021e0:	e10f4000 	mrs	r4, CPSR
c00021e4:	e38430c0 	orr	r3, r4, #192	; 0xc0
c00021e8:	e129f003 	msr	CPSR_fc, r3
c00021ec:	ebffffe5 	bl	c0002188 <Xil_L2CacheInvalidateLine>
c00021f0:	e3a03000 	mov	r3, #0
c00021f4:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
c00021f8:	e3c5501f 	bic	r5, r5, #31
c00021fc:	ee075f36 	mcr	15, 0, r5, cr7, cr6, {1}
c0002200:	f57ff04f 	dsb	sy
c0002204:	e129f004 	msr	CPSR_fc, r4
c0002208:	e8bd8038 	pop	{r3, r4, r5, pc}

c000220c <Xil_L2CacheInvalidateRange>:
c000220c:	e92d4070 	push	{r4, r5, r6, lr}
c0002210:	e10f6000 	mrs	r6, CPSR
c0002214:	e38630c0 	orr	r3, r6, #192	; 0xc0
c0002218:	e129f003 	msr	CPSR_fc, r3
c000221c:	e3510000 	cmp	r1, #0
c0002220:	1a000002 	bne	c0002230 <Xil_L2CacheInvalidateRange+0x24>
c0002224:	f57ff04f 	dsb	sy
c0002228:	e129f006 	msr	CPSR_fc, r6
c000222c:	e8bd8070 	pop	{r4, r5, r6, pc}
c0002230:	e0815000 	add	r5, r1, r0
c0002234:	e3c0401f 	bic	r4, r0, #31
c0002238:	e3a01003 	mov	r1, #3
c000223c:	e3a00dbd 	mov	r0, #12096	; 0x2f40
c0002240:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c0002244:	eb000109 	bl	c0002670 <_Z9Xil_Out32mm>
c0002248:	e1550004 	cmp	r5, r4
c000224c:	83a03a02 	movhi	r3, #8192	; 0x2000
c0002250:	834f38f0 	movthi	r3, #63728	; 0xf8f0
c0002254:	9a000003 	bls	c0002268 <Xil_L2CacheInvalidateRange+0x5c>
c0002258:	e5834770 	str	r4, [r3, #1904]	; 0x770
c000225c:	e2844020 	add	r4, r4, #32
c0002260:	e1550004 	cmp	r5, r4
c0002264:	8afffffb 	bhi	c0002258 <Xil_L2CacheInvalidateRange+0x4c>
c0002268:	e3a00dbd 	mov	r0, #12096	; 0x2f40
c000226c:	e3a01000 	mov	r1, #0
c0002270:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c0002274:	eb0000fd 	bl	c0002670 <_Z9Xil_Out32mm>
c0002278:	eaffffe9 	b	c0002224 <Xil_L2CacheInvalidateRange+0x18>

c000227c <Xil_L2CacheFlush>:
c000227c:	e3a01003 	mov	r1, #3
c0002280:	e3a00dbd 	mov	r0, #12096	; 0x2f40
c0002284:	e92d4010 	push	{r4, lr}
c0002288:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c000228c:	eb0000f7 	bl	c0002670 <_Z9Xil_Out32mm>
c0002290:	e30207fc 	movw	r0, #10236	; 0x27fc
c0002294:	e30f1fff 	movw	r1, #65535	; 0xffff
c0002298:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c000229c:	eb0000f3 	bl	c0002670 <_Z9Xil_Out32mm>
c00022a0:	e30207fc 	movw	r0, #10236	; 0x27fc
c00022a4:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c00022a8:	eb0000ea 	bl	c0002658 <_Z8Xil_In32m>
c00022ac:	e6ff4070 	uxth	r4, r0
c00022b0:	e3540000 	cmp	r4, #0
c00022b4:	1afffff9 	bne	c00022a0 <Xil_L2CacheFlush+0x24>
c00022b8:	e1a01004 	mov	r1, r4
c00022bc:	e3a00d9d 	mov	r0, #10048	; 0x2740
c00022c0:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c00022c4:	eb0000e9 	bl	c0002670 <_Z9Xil_Out32mm>
c00022c8:	e1a01004 	mov	r1, r4
c00022cc:	e3a00dbd 	mov	r0, #12096	; 0x2f40
c00022d0:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c00022d4:	eb0000e5 	bl	c0002670 <_Z9Xil_Out32mm>
c00022d8:	f57ff04f 	dsb	sy
c00022dc:	e8bd8010 	pop	{r4, pc}

c00022e0 <Xil_L2CacheDisable>:
c00022e0:	e92d4008 	push	{r3, lr}
c00022e4:	e3a00c21 	mov	r0, #8448	; 0x2100
c00022e8:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c00022ec:	eb0000d9 	bl	c0002658 <_Z8Xil_In32m>
c00022f0:	e3100001 	tst	r0, #1
c00022f4:	08bd8008 	popeq	{r3, pc}
c00022f8:	ebffffdf 	bl	c000227c <Xil_L2CacheFlush>
c00022fc:	e3a00c21 	mov	r0, #8448	; 0x2100
c0002300:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c0002304:	eb0000d3 	bl	c0002658 <_Z8Xil_In32m>
c0002308:	e3c01001 	bic	r1, r0, #1
c000230c:	e3a00c21 	mov	r0, #8448	; 0x2100
c0002310:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c0002314:	eb0000d5 	bl	c0002670 <_Z9Xil_Out32mm>
c0002318:	f57ff04f 	dsb	sy
c000231c:	e8bd8008 	pop	{r3, pc}

c0002320 <Xil_ICacheDisable>:
c0002320:	e92d4008 	push	{r3, lr}
c0002324:	ebffffed 	bl	c00022e0 <Xil_L2CacheDisable>
c0002328:	f57ff04f 	dsb	sy
c000232c:	e3a03000 	mov	r3, #0
c0002330:	ee073f15 	mcr	15, 0, r3, cr7, cr5, {0}
c0002334:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
c0002338:	e3c33a01 	bic	r3, r3, #4096	; 0x1000
c000233c:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
c0002340:	e8bd8008 	pop	{r3, pc}

c0002344 <Xil_DCacheDisable>:
c0002344:	e92d4008 	push	{r3, lr}
c0002348:	ebffffe4 	bl	c00022e0 <Xil_L2CacheDisable>
c000234c:	e8bd4008 	pop	{r3, lr}
c0002350:	eafffee1 	b	c0001edc <Xil_L1DCacheDisable>

c0002354 <Xil_DCacheFlush>:
c0002354:	e92d4010 	push	{r4, lr}
c0002358:	e10f4000 	mrs	r4, CPSR
c000235c:	e38430c0 	orr	r3, r4, #192	; 0xc0
c0002360:	e129f003 	msr	CPSR_fc, r3
c0002364:	ebfffeb3 	bl	c0001e38 <Xil_L1DCacheFlush>
c0002368:	ebffffc3 	bl	c000227c <Xil_L2CacheFlush>
c000236c:	e129f004 	msr	CPSR_fc, r4
c0002370:	e8bd8010 	pop	{r4, pc}

c0002374 <Xil_L2CacheFlushLine>:
c0002374:	e92d4010 	push	{r4, lr}
c0002378:	e1a04000 	mov	r4, r0
c000237c:	e1a01004 	mov	r1, r4
c0002380:	e30207b0 	movw	r0, #10160	; 0x27b0
c0002384:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c0002388:	eb0000b8 	bl	c0002670 <_Z9Xil_Out32mm>
c000238c:	e1a01004 	mov	r1, r4
c0002390:	e3020770 	movw	r0, #10096	; 0x2770
c0002394:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c0002398:	eb0000b4 	bl	c0002670 <_Z9Xil_Out32mm>
c000239c:	f57ff04f 	dsb	sy
c00023a0:	e8bd8010 	pop	{r4, pc}

c00023a4 <Xil_DCacheFlushLine>:
c00023a4:	e92d4070 	push	{r4, r5, r6, lr}
c00023a8:	e1a06000 	mov	r6, r0
c00023ac:	e10f5000 	mrs	r5, CPSR
c00023b0:	e38530c0 	orr	r3, r5, #192	; 0xc0
c00023b4:	e129f003 	msr	CPSR_fc, r3
c00023b8:	e3a03000 	mov	r3, #0
c00023bc:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
c00023c0:	e3c0301f 	bic	r3, r0, #31
c00023c4:	ee073f3e 	mcr	15, 0, r3, cr7, cr14, {1}
c00023c8:	f57ff04f 	dsb	sy
c00023cc:	e3a04dbd 	mov	r4, #12096	; 0x2f40
c00023d0:	e34f48f0 	movt	r4, #63728	; 0xf8f0
c00023d4:	e3a01003 	mov	r1, #3
c00023d8:	e1a00004 	mov	r0, r4
c00023dc:	eb0000a3 	bl	c0002670 <_Z9Xil_Out32mm>
c00023e0:	e1a00006 	mov	r0, r6
c00023e4:	ebffffe2 	bl	c0002374 <Xil_L2CacheFlushLine>
c00023e8:	e1a00004 	mov	r0, r4
c00023ec:	e3a01000 	mov	r1, #0
c00023f0:	eb00009e 	bl	c0002670 <_Z9Xil_Out32mm>
c00023f4:	e129f005 	msr	CPSR_fc, r5
c00023f8:	e8bd8070 	pop	{r4, r5, r6, pc}

c00023fc <Xil_DCacheInvalidateRange>:
c00023fc:	e92d4070 	push	{r4, r5, r6, lr}
c0002400:	e10f6000 	mrs	r6, CPSR
c0002404:	e38630c0 	orr	r3, r6, #192	; 0xc0
c0002408:	e129f003 	msr	CPSR_fc, r3
c000240c:	e3510000 	cmp	r1, #0
c0002410:	0a000011 	beq	c000245c <Xil_DCacheInvalidateRange+0x60>
c0002414:	e0815000 	add	r5, r1, r0
c0002418:	e3a03000 	mov	r3, #0
c000241c:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
c0002420:	e310001f 	tst	r0, #31
c0002424:	01a04000 	moveq	r4, r0
c0002428:	1a00001f 	bne	c00024ac <Xil_DCacheInvalidateRange+0xb0>
c000242c:	e315001f 	tst	r5, #31
c0002430:	1a00000c 	bne	c0002468 <Xil_DCacheInvalidateRange+0x6c>
c0002434:	e1540005 	cmp	r4, r5
c0002438:	2a000007 	bcs	c000245c <Xil_DCacheInvalidateRange+0x60>
c000243c:	e3a03a02 	mov	r3, #8192	; 0x2000
c0002440:	e34f38f0 	movt	r3, #63728	; 0xf8f0
c0002444:	e5834770 	str	r4, [r3, #1904]	; 0x770
c0002448:	f57ff04f 	dsb	sy
c000244c:	ee074f36 	mcr	15, 0, r4, cr7, cr6, {1}
c0002450:	e2844020 	add	r4, r4, #32
c0002454:	e1550004 	cmp	r5, r4
c0002458:	8afffff9 	bhi	c0002444 <Xil_DCacheInvalidateRange+0x48>
c000245c:	f57ff04f 	dsb	sy
c0002460:	e129f006 	msr	CPSR_fc, r6
c0002464:	e8bd8070 	pop	{r4, r5, r6, pc}
c0002468:	e3c5501f 	bic	r5, r5, #31
c000246c:	e3a01003 	mov	r1, #3
c0002470:	e3a00dbd 	mov	r0, #12096	; 0x2f40
c0002474:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c0002478:	eb00007c 	bl	c0002670 <_Z9Xil_Out32mm>
c000247c:	e1a00005 	mov	r0, r5
c0002480:	ebffffbb 	bl	c0002374 <Xil_L2CacheFlushLine>
c0002484:	e3a01000 	mov	r1, #0
c0002488:	e3a00dbd 	mov	r0, #12096	; 0x2f40
c000248c:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c0002490:	eb000076 	bl	c0002670 <_Z9Xil_Out32mm>
c0002494:	e3a03000 	mov	r3, #0
c0002498:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
c000249c:	e3c4301f 	bic	r3, r4, #31
c00024a0:	ee073f3e 	mcr	15, 0, r3, cr7, cr14, {1}
c00024a4:	f57ff04f 	dsb	sy
c00024a8:	eaffffe1 	b	c0002434 <Xil_DCacheInvalidateRange+0x38>
c00024ac:	e3c0401f 	bic	r4, r0, #31
c00024b0:	e3a01003 	mov	r1, #3
c00024b4:	e3a00dbd 	mov	r0, #12096	; 0x2f40
c00024b8:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c00024bc:	eb00006b 	bl	c0002670 <_Z9Xil_Out32mm>
c00024c0:	e1a00004 	mov	r0, r4
c00024c4:	ebffffaa 	bl	c0002374 <Xil_L2CacheFlushLine>
c00024c8:	e3a01000 	mov	r1, #0
c00024cc:	e3a00dbd 	mov	r0, #12096	; 0x2f40
c00024d0:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c00024d4:	eb000065 	bl	c0002670 <_Z9Xil_Out32mm>
c00024d8:	e3a03000 	mov	r3, #0
c00024dc:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
c00024e0:	ee074f3e 	mcr	15, 0, r4, cr7, cr14, {1}
c00024e4:	f57ff04f 	dsb	sy
c00024e8:	e315001f 	tst	r5, #31
c00024ec:	e2844020 	add	r4, r4, #32
c00024f0:	0affffcf 	beq	c0002434 <Xil_DCacheInvalidateRange+0x38>
c00024f4:	eaffffdb 	b	c0002468 <Xil_DCacheInvalidateRange+0x6c>

c00024f8 <Xil_L2CacheFlushRange>:
c00024f8:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
c00024fc:	e10f7000 	mrs	r7, CPSR
c0002500:	e38730c0 	orr	r3, r7, #192	; 0xc0
c0002504:	e129f003 	msr	CPSR_fc, r3
c0002508:	e3510000 	cmp	r1, #0
c000250c:	1a000002 	bne	c000251c <Xil_L2CacheFlushRange+0x24>
c0002510:	f57ff04f 	dsb	sy
c0002514:	e129f007 	msr	CPSR_fc, r7
c0002518:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
c000251c:	e0815000 	add	r5, r1, r0
c0002520:	e3c0401f 	bic	r4, r0, #31
c0002524:	e3a01003 	mov	r1, #3
c0002528:	e3a00dbd 	mov	r0, #12096	; 0x2f40
c000252c:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c0002530:	eb00004e 	bl	c0002670 <_Z9Xil_Out32mm>
c0002534:	e1550004 	cmp	r5, r4
c0002538:	83a06a02 	movhi	r6, #8192	; 0x2000
c000253c:	834f68f0 	movthi	r6, #63728	; 0xf8f0
c0002540:	9a000007 	bls	c0002564 <Xil_L2CacheFlushRange+0x6c>
c0002544:	e58647f0 	str	r4, [r6, #2032]	; 0x7f0
c0002548:	e3a00d9d 	mov	r0, #10048	; 0x2740
c000254c:	e3a01000 	mov	r1, #0
c0002550:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c0002554:	e2844020 	add	r4, r4, #32
c0002558:	eb000044 	bl	c0002670 <_Z9Xil_Out32mm>
c000255c:	e1550004 	cmp	r5, r4
c0002560:	8afffff7 	bhi	c0002544 <Xil_L2CacheFlushRange+0x4c>
c0002564:	e3a00dbd 	mov	r0, #12096	; 0x2f40
c0002568:	e3a01000 	mov	r1, #0
c000256c:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c0002570:	eb00003e 	bl	c0002670 <_Z9Xil_Out32mm>
c0002574:	eaffffe5 	b	c0002510 <Xil_L2CacheFlushRange+0x18>

c0002578 <Xil_L2CacheStoreLine>:
c0002578:	e1a01000 	mov	r1, r0
c000257c:	e30207b0 	movw	r0, #10160	; 0x27b0
c0002580:	e92d4008 	push	{r3, lr}
c0002584:	e34f08f0 	movt	r0, #63728	; 0xf8f0
c0002588:	eb000038 	bl	c0002670 <_Z9Xil_Out32mm>
c000258c:	f57ff04f 	dsb	sy
c0002590:	e8bd8008 	pop	{r3, pc}

c0002594 <Xil_DCacheStoreLine>:
c0002594:	e92d4010 	push	{r4, lr}
c0002598:	e10f4000 	mrs	r4, CPSR
c000259c:	e38430c0 	orr	r3, r4, #192	; 0xc0
c00025a0:	e129f003 	msr	CPSR_fc, r3
c00025a4:	e3a03000 	mov	r3, #0
c00025a8:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
c00025ac:	e3c0301f 	bic	r3, r0, #31
c00025b0:	ee073f3a 	mcr	15, 0, r3, cr7, cr10, {1}
c00025b4:	f57ff04f 	dsb	sy
c00025b8:	ebffffee 	bl	c0002578 <Xil_L2CacheStoreLine>
c00025bc:	e129f004 	msr	CPSR_fc, r4
c00025c0:	e8bd8010 	pop	{r4, pc}

c00025c4 <_ZL24Xil_ExceptionNullHandlerPv>:
c00025c4:	eafffffe 	b	c00025c4 <_ZL24Xil_ExceptionNullHandlerPv>

c00025c8 <Xil_ExceptionInit>:
c00025c8:	e3061b2c 	movw	r1, #27436	; 0x6b2c
c00025cc:	e34c1000 	movt	r1, #49152	; 0xc000
c00025d0:	e302c5c4 	movw	ip, #9668	; 0x25c4
c00025d4:	e34cc000 	movt	ip, #49152	; 0xc000
c00025d8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
c00025dc:	e3a03000 	mov	r3, #0
c00025e0:	e1a04001 	mov	r4, r1
c00025e4:	e7912003 	ldr	r2, [r1, r3]
c00025e8:	e3520000 	cmp	r2, #0
c00025ec:	01a00004 	moveq	r0, r4
c00025f0:	07a0c003 	streq	ip, [r0, r3]!
c00025f4:	e2833008 	add	r3, r3, #8
c00025f8:	05802004 	streq	r2, [r0, #4]
c00025fc:	e3530038 	cmp	r3, #56	; 0x38
c0002600:	1afffff7 	bne	c00025e4 <Xil_ExceptionInit+0x1c>
c0002604:	e8bd0010 	ldmfd	sp!, {r4}
c0002608:	e12fff1e 	bx	lr

c000260c <Xil_ExceptionRegisterHandler>:
c000260c:	e3063b2c 	movw	r3, #27436	; 0x6b2c
c0002610:	e34c3000 	movt	r3, #49152	; 0xc000
c0002614:	e083c180 	add	ip, r3, r0, lsl #3
c0002618:	e7831180 	str	r1, [r3, r0, lsl #3]
c000261c:	e58c2004 	str	r2, [ip, #4]
c0002620:	e12fff1e 	bx	lr

c0002624 <Xil_ExceptionRemoveHandler>:
c0002624:	e3063b2c 	movw	r3, #27436	; 0x6b2c
c0002628:	e34c3000 	movt	r3, #49152	; 0xc000
c000262c:	e0831180 	add	r1, r3, r0, lsl #3
c0002630:	e30225c4 	movw	r2, #9668	; 0x25c4
c0002634:	e34c2000 	movt	r2, #49152	; 0xc000
c0002638:	e7832180 	str	r2, [r3, r0, lsl #3]
c000263c:	e3a03000 	mov	r3, #0
c0002640:	e5813004 	str	r3, [r1, #4]
c0002644:	e12fff1e 	bx	lr

c0002648 <_Z7Xil_In8m>:
c0002648:	e5d00000 	ldrb	r0, [r0]
c000264c:	e12fff1e 	bx	lr

c0002650 <_Z8Xil_In16m>:
c0002650:	e1d000b0 	ldrh	r0, [r0]
c0002654:	e12fff1e 	bx	lr

c0002658 <_Z8Xil_In32m>:
c0002658:	e5900000 	ldr	r0, [r0]
c000265c:	e12fff1e 	bx	lr

c0002660 <_Z8Xil_Out8mh>:
c0002660:	e5c01000 	strb	r1, [r0]
c0002664:	e12fff1e 	bx	lr

c0002668 <_Z9Xil_Out16mt>:
c0002668:	e1c010b0 	strh	r1, [r0]
c000266c:	e12fff1e 	bx	lr

c0002670 <_Z9Xil_Out32mm>:
c0002670:	e5801000 	str	r1, [r0]
c0002674:	e12fff1e 	bx	lr

c0002678 <_Z10Xil_In16BEm>:
c0002678:	e1d030b0 	ldrh	r3, [r0]
c000267c:	e1a02423 	lsr	r2, r3, #8
c0002680:	e1820403 	orr	r0, r2, r3, lsl #8
c0002684:	e6ff0070 	uxth	r0, r0
c0002688:	e12fff1e 	bx	lr

c000268c <_Z10Xil_In32BEm>:
c000268c:	e5903000 	ldr	r3, [r0]
c0002690:	e7e70453 	ubfx	r0, r3, #8, #8
c0002694:	e1a02823 	lsr	r2, r3, #16
c0002698:	e6ff3073 	uxth	r3, r3
c000269c:	e1a01422 	lsr	r1, r2, #8
c00026a0:	e1800403 	orr	r0, r0, r3, lsl #8
c00026a4:	e1812402 	orr	r2, r1, r2, lsl #8
c00026a8:	e6ff2072 	uxth	r2, r2
c00026ac:	e1820800 	orr	r0, r2, r0, lsl #16
c00026b0:	e12fff1e 	bx	lr

c00026b4 <_Z11Xil_Out16BEmt>:
c00026b4:	e1a03421 	lsr	r3, r1, #8
c00026b8:	e1831401 	orr	r1, r3, r1, lsl #8
c00026bc:	e1c010b0 	strh	r1, [r0]
c00026c0:	e12fff1e 	bx	lr

c00026c4 <_Z11Xil_Out32BEmm>:
c00026c4:	e1a03821 	lsr	r3, r1, #16
c00026c8:	e7e72451 	ubfx	r2, r1, #8, #8
c00026cc:	e6ff1071 	uxth	r1, r1
c00026d0:	e1a0c423 	lsr	ip, r3, #8
c00026d4:	e18c3403 	orr	r3, ip, r3, lsl #8
c00026d8:	e1821401 	orr	r1, r2, r1, lsl #8
c00026dc:	e6ff3073 	uxth	r3, r3
c00026e0:	e1831801 	orr	r1, r3, r1, lsl #16
c00026e4:	e5801000 	str	r1, [r0]
c00026e8:	e12fff1e 	bx	lr

c00026ec <_Z16Xil_EndianSwap16t>:
c00026ec:	e1a03420 	lsr	r3, r0, #8
c00026f0:	e1830400 	orr	r0, r3, r0, lsl #8
c00026f4:	e6ff0070 	uxth	r0, r0
c00026f8:	e12fff1e 	bx	lr

c00026fc <_Z16Xil_EndianSwap32m>:
c00026fc:	e1a03820 	lsr	r3, r0, #16
c0002700:	e7e71450 	ubfx	r1, r0, #8, #8
c0002704:	e6ff0070 	uxth	r0, r0
c0002708:	e1a02423 	lsr	r2, r3, #8
c000270c:	e1823403 	orr	r3, r2, r3, lsl #8
c0002710:	e1810400 	orr	r0, r1, r0, lsl #8
c0002714:	e6ff3073 	uxth	r3, r3
c0002718:	e1830800 	orr	r0, r3, r0, lsl #16
c000271c:	e12fff1e 	bx	lr

c0002720 <padding>:
c0002720:	e92d4038 	push	{r3, r4, r5, lr}
c0002724:	e1a05001 	mov	r5, r1
c0002728:	e5913010 	ldr	r3, [r1, #16]
c000272c:	e3530000 	cmp	r3, #0
c0002730:	08bd8038 	popeq	{r3, r4, r5, pc}
c0002734:	e3500000 	cmp	r0, #0
c0002738:	08bd8038 	popeq	{r3, r4, r5, pc}
c000273c:	e5914000 	ldr	r4, [r1]
c0002740:	e5913004 	ldr	r3, [r1, #4]
c0002744:	e1540003 	cmp	r4, r3
c0002748:	a8bd8038 	popge	{r3, r4, r5, pc}
c000274c:	e5d5000c 	ldrb	r0, [r5, #12]
c0002750:	e2844001 	add	r4, r4, #1
c0002754:	ebfffd15 	bl	c0001bb0 <outbyte>
c0002758:	e5953004 	ldr	r3, [r5, #4]
c000275c:	e1540003 	cmp	r4, r3
c0002760:	bafffff9 	blt	c000274c <padding+0x2c>
c0002764:	e8bd8038 	pop	{r3, r4, r5, pc}

c0002768 <outs>:
c0002768:	e92d4038 	push	{r3, r4, r5, lr}
c000276c:	e1a04001 	mov	r4, r1
c0002770:	e1a05000 	mov	r5, r0
c0002774:	ebfff9be 	bl	c0000e74 <strlen>
c0002778:	e5943014 	ldr	r3, [r4, #20]
c000277c:	e1a01004 	mov	r1, r4
c0002780:	e5840000 	str	r0, [r4]
c0002784:	e2730001 	rsbs	r0, r3, #1
c0002788:	33a00000 	movcc	r0, #0
c000278c:	ebffffe3 	bl	c0002720 <padding>
c0002790:	e5d53000 	ldrb	r3, [r5]
c0002794:	e3530000 	cmp	r3, #0
c0002798:	0a00000f 	beq	c00027dc <outs+0x74>
c000279c:	e5943008 	ldr	r3, [r4, #8]
c00027a0:	e3530000 	cmp	r3, #0
c00027a4:	e2433001 	sub	r3, r3, #1
c00027a8:	e5843008 	str	r3, [r4, #8]
c00027ac:	0a00000a 	beq	c00027dc <outs+0x74>
c00027b0:	e2455001 	sub	r5, r5, #1
c00027b4:	e5f50001 	ldrb	r0, [r5, #1]!
c00027b8:	ebfffcfc 	bl	c0001bb0 <outbyte>
c00027bc:	e5d53001 	ldrb	r3, [r5, #1]
c00027c0:	e3530000 	cmp	r3, #0
c00027c4:	0a000004 	beq	c00027dc <outs+0x74>
c00027c8:	e5943008 	ldr	r3, [r4, #8]
c00027cc:	e3530000 	cmp	r3, #0
c00027d0:	e2433001 	sub	r3, r3, #1
c00027d4:	e5843008 	str	r3, [r4, #8]
c00027d8:	1afffff5 	bne	c00027b4 <outs+0x4c>
c00027dc:	e5940014 	ldr	r0, [r4, #20]
c00027e0:	e1a01004 	mov	r1, r4
c00027e4:	e8bd4038 	pop	{r3, r4, r5, lr}
c00027e8:	eaffffcc 	b	c0002720 <padding>

c00027ec <outnum>:
c00027ec:	e305c410 	movw	ip, #21520	; 0x5410
c00027f0:	e34cc000 	movt	ip, #49152	; 0xc000
c00027f4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
c00027f8:	e1a05000 	mov	r5, r0
c00027fc:	e1a06001 	mov	r6, r1
c0002800:	e1a04fa0 	lsr	r4, r0, #31
c0002804:	e1a07002 	mov	r7, r2
c0002808:	e24dd038 	sub	sp, sp, #56	; 0x38
c000280c:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
c0002810:	e356000a 	cmp	r6, #10
c0002814:	13a04000 	movne	r4, #0
c0002818:	02044001 	andeq	r4, r4, #1
c000281c:	e28de004 	add	lr, sp, #4
c0002820:	e3540000 	cmp	r4, #0
c0002824:	12655000 	rsbne	r5, r5, #0
c0002828:	13a08001 	movne	r8, #1
c000282c:	01a08004 	moveq	r8, r4
c0002830:	e59cc000 	ldr	ip, [ip]
c0002834:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
c0002838:	e28d3019 	add	r3, sp, #25
c000283c:	e5cec000 	strb	ip, [lr]
c0002840:	e1a00005 	mov	r0, r5
c0002844:	e1a01006 	mov	r1, r6
c0002848:	e1a04003 	mov	r4, r3
c000284c:	ebfff73e 	bl	c000054c <__aeabi_uidivmod>
c0002850:	e28d2038 	add	r2, sp, #56	; 0x38
c0002854:	e1a00005 	mov	r0, r5
c0002858:	e0823001 	add	r3, r2, r1
c000285c:	e1a01006 	mov	r1, r6
c0002860:	e5533034 	ldrb	r3, [r3, #-52]	; 0xffffffcc
c0002864:	e5443001 	strb	r3, [r4, #-1]
c0002868:	ebfff6bc 	bl	c0000360 <__aeabi_uidiv>
c000286c:	e2843001 	add	r3, r4, #1
c0002870:	e2505000 	subs	r5, r0, #0
c0002874:	1afffff1 	bne	c0002840 <outnum+0x54>
c0002878:	e3580000 	cmp	r8, #0
c000287c:	e28d5018 	add	r5, sp, #24
c0002880:	13a0202d 	movne	r2, #45	; 0x2d
c0002884:	15c42000 	strbne	r2, [r4]
c0002888:	11a04003 	movne	r4, r3
c000288c:	e1a00005 	mov	r0, r5
c0002890:	e1a06004 	mov	r6, r4
c0002894:	e3a03000 	mov	r3, #0
c0002898:	e4463001 	strb	r3, [r6], #-1
c000289c:	ebfff974 	bl	c0000e74 <strlen>
c00028a0:	e5973014 	ldr	r3, [r7, #20]
c00028a4:	e1a01007 	mov	r1, r7
c00028a8:	e5870000 	str	r0, [r7]
c00028ac:	e2730001 	rsbs	r0, r3, #1
c00028b0:	33a00000 	movcc	r0, #0
c00028b4:	ebffff99 	bl	c0002720 <padding>
c00028b8:	e1550006 	cmp	r5, r6
c00028bc:	8a000003 	bhi	c00028d0 <outnum+0xe4>
c00028c0:	e5740001 	ldrb	r0, [r4, #-1]!
c00028c4:	ebfffcb9 	bl	c0001bb0 <outbyte>
c00028c8:	e1540005 	cmp	r4, r5
c00028cc:	1afffffb 	bne	c00028c0 <outnum+0xd4>
c00028d0:	e5970014 	ldr	r0, [r7, #20]
c00028d4:	e1a01007 	mov	r1, r7
c00028d8:	ebffff90 	bl	c0002720 <padding>
c00028dc:	e28dd038 	add	sp, sp, #56	; 0x38
c00028e0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

c00028e4 <getnum>:
c00028e4:	e590c000 	ldr	ip, [r0]
c00028e8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
c00028ec:	e1a04000 	mov	r4, r0
c00028f0:	e5dc1000 	ldrb	r1, [ip]
c00028f4:	e2413030 	sub	r3, r1, #48	; 0x30
c00028f8:	e3530009 	cmp	r3, #9
c00028fc:	8a00000b 	bhi	c0002930 <getnum+0x4c>
c0002900:	e28c2001 	add	r2, ip, #1
c0002904:	e3a00000 	mov	r0, #0
c0002908:	e0800100 	add	r0, r0, r0, lsl #2
c000290c:	e1a0c002 	mov	ip, r2
c0002910:	e4d21001 	ldrb	r1, [r2], #1
c0002914:	e0830080 	add	r0, r3, r0, lsl #1
c0002918:	e2413030 	sub	r3, r1, #48	; 0x30
c000291c:	e3530009 	cmp	r3, #9
c0002920:	9afffff8 	bls	c0002908 <getnum+0x24>
c0002924:	e584c000 	str	ip, [r4]
c0002928:	e8bd0010 	ldmfd	sp!, {r4}
c000292c:	e12fff1e 	bx	lr
c0002930:	e3a00000 	mov	r0, #0
c0002934:	eafffffa 	b	c0002924 <getnum+0x40>

c0002938 <xil_printf>:
c0002938:	e92d000f 	push	{r0, r1, r2, r3}
c000293c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
c0002940:	e24dd024 	sub	sp, sp, #36	; 0x24
c0002944:	e28d304c 	add	r3, sp, #76	; 0x4c
c0002948:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
c000294c:	e58d3004 	str	r3, [sp, #4]
c0002950:	e5d10000 	ldrb	r0, [r1]
c0002954:	e3500000 	cmp	r0, #0
c0002958:	0a00008d 	beq	c0002b94 <xil_printf+0x25c>
c000295c:	e1a08001 	mov	r8, r1
c0002960:	e3a06000 	mov	r6, #0
c0002964:	e3a09020 	mov	r9, #32
c0002968:	e307afff 	movw	sl, #32767	; 0x7fff
c000296c:	ea000005 	b	c0002988 <xil_printf+0x50>
c0002970:	e1a04008 	mov	r4, r8
c0002974:	ebfffc8d 	bl	c0001bb0 <outbyte>
c0002978:	e5d40001 	ldrb	r0, [r4, #1]
c000297c:	e2848001 	add	r8, r4, #1
c0002980:	e3500000 	cmp	r0, #0
c0002984:	0a000082 	beq	c0002b94 <xil_printf+0x25c>
c0002988:	e3500025 	cmp	r0, #37	; 0x25
c000298c:	1afffff7 	bne	c0002970 <xil_printf+0x38>
c0002990:	e5d85001 	ldrb	r5, [r8, #1]
c0002994:	e3a0b000 	mov	fp, #0
c0002998:	e1a0700b 	mov	r7, fp
c000299c:	e58d6018 	str	r6, [sp, #24]
c00029a0:	e2453030 	sub	r3, r5, #48	; 0x30
c00029a4:	e58d601c 	str	r6, [sp, #28]
c00029a8:	e5cd9014 	strb	r9, [sp, #20]
c00029ac:	e58da010 	str	sl, [sp, #16]
c00029b0:	e3530009 	cmp	r3, #9
c00029b4:	e2884001 	add	r4, r8, #1
c00029b8:	8a000010 	bhi	c0002a00 <xil_printf+0xc8>
c00029bc:	e35b0000 	cmp	fp, #0
c00029c0:	0a0000b7 	beq	c0002ca4 <xil_printf+0x36c>
c00029c4:	e2881002 	add	r1, r8, #2
c00029c8:	e3a02000 	mov	r2, #0
c00029cc:	e5d15000 	ldrb	r5, [r1]
c00029d0:	e0822102 	add	r2, r2, r2, lsl #2
c00029d4:	e1a04001 	mov	r4, r1
c00029d8:	e2811001 	add	r1, r1, #1
c00029dc:	e0832082 	add	r2, r3, r2, lsl #1
c00029e0:	e2453030 	sub	r3, r5, #48	; 0x30
c00029e4:	e3530009 	cmp	r3, #9
c00029e8:	9afffff7 	bls	c00029cc <xil_printf+0x94>
c00029ec:	e58d2010 	str	r2, [sp, #16]
c00029f0:	e3530009 	cmp	r3, #9
c00029f4:	e2448001 	sub	r8, r4, #1
c00029f8:	e2884001 	add	r4, r8, #1
c00029fc:	9affffee 	bls	c00029bc <xil_printf+0x84>
c0002a00:	e1a00005 	mov	r0, r5
c0002a04:	ebfff935 	bl	c0000ee0 <tolower>
c0002a08:	e2400025 	sub	r0, r0, #37	; 0x25
c0002a0c:	e3500053 	cmp	r0, #83	; 0x53
c0002a10:	979ff100 	ldrls	pc, [pc, r0, lsl #2]
c0002a14:	eaffffd7 	b	c0002978 <xil_printf+0x40>
c0002a18:	c0002c98 	mulgt	r0, r8, ip
c0002a1c:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a20:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a24:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a28:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a2c:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a30:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a34:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a38:	c0002c80 	andgt	r2, r0, r0, lsl #25
c0002a3c:	c0002c6c 	andgt	r2, r0, ip, ror #24
c0002a40:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a44:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a48:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a4c:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a50:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a54:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a58:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a5c:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a60:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a64:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a68:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a6c:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a70:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a74:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a78:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a7c:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a80:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a84:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a88:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a8c:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a90:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a94:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a98:	c0002978 	andgt	r2, r0, r8, ror r9
c0002a9c:	c0002978 	andgt	r2, r0, r8, ror r9
c0002aa0:	c0002978 	andgt	r2, r0, r8, ror r9
c0002aa4:	c0002978 	andgt	r2, r0, r8, ror r9
c0002aa8:	c0002978 	andgt	r2, r0, r8, ror r9
c0002aac:	c0002978 	andgt	r2, r0, r8, ror r9
c0002ab0:	c0002978 	andgt	r2, r0, r8, ror r9
c0002ab4:	c0002978 	andgt	r2, r0, r8, ror r9
c0002ab8:	c0002978 	andgt	r2, r0, r8, ror r9
c0002abc:	c0002978 	andgt	r2, r0, r8, ror r9
c0002ac0:	c0002978 	andgt	r2, r0, r8, ror r9
c0002ac4:	c0002978 	andgt	r2, r0, r8, ror r9
c0002ac8:	c0002978 	andgt	r2, r0, r8, ror r9
c0002acc:	c0002978 	andgt	r2, r0, r8, ror r9
c0002ad0:	c0002978 	andgt	r2, r0, r8, ror r9
c0002ad4:	c0002978 	andgt	r2, r0, r8, ror r9
c0002ad8:	c0002978 	andgt	r2, r0, r8, ror r9
c0002adc:	c0002978 	andgt	r2, r0, r8, ror r9
c0002ae0:	c0002978 	andgt	r2, r0, r8, ror r9
c0002ae4:	c0002978 	andgt	r2, r0, r8, ror r9
c0002ae8:	c0002978 	andgt	r2, r0, r8, ror r9
c0002aec:	c0002978 	andgt	r2, r0, r8, ror r9
c0002af0:	c0002978 	andgt	r2, r0, r8, ror r9
c0002af4:	c0002c14 	andgt	r2, r0, r4, lsl ip
c0002af8:	c0002978 	andgt	r2, r0, r8, ror r9
c0002afc:	c0002978 	andgt	r2, r0, r8, ror r9
c0002b00:	c0002978 	andgt	r2, r0, r8, ror r9
c0002b04:	c0002978 	andgt	r2, r0, r8, ror r9
c0002b08:	c0002978 	andgt	r2, r0, r8, ror r9
c0002b0c:	c0002978 	andgt	r2, r0, r8, ror r9
c0002b10:	c0002bfc 	strdgt	r2, [r0], -ip
c0002b14:	c0002bd4 	ldrdgt	r2, [r0], -r4
c0002b18:	c0002978 	andgt	r2, r0, r8, ror r9
c0002b1c:	c0002978 	andgt	r2, r0, r8, ror r9
c0002b20:	c0002978 	andgt	r2, r0, r8, ror r9
c0002b24:	c0002978 	andgt	r2, r0, r8, ror r9
c0002b28:	c0002978 	andgt	r2, r0, r8, ror r9
c0002b2c:	c0002978 	andgt	r2, r0, r8, ror r9
c0002b30:	c0002978 	andgt	r2, r0, r8, ror r9
c0002b34:	c0002bc0 	andgt	r2, r0, r0, asr #23
c0002b38:	c0002978 	andgt	r2, r0, r8, ror r9
c0002b3c:	c0002978 	andgt	r2, r0, r8, ror r9
c0002b40:	c0002978 	andgt	r2, r0, r8, ror r9
c0002b44:	c0002978 	andgt	r2, r0, r8, ror r9
c0002b48:	c0002978 	andgt	r2, r0, r8, ror r9
c0002b4c:	c0002978 	andgt	r2, r0, r8, ror r9
c0002b50:	c0002ba4 	andgt	r2, r0, r4, lsr #23
c0002b54:	c0002978 	andgt	r2, r0, r8, ror r9
c0002b58:	c0002978 	andgt	r2, r0, r8, ror r9
c0002b5c:	c0002978 	andgt	r2, r0, r8, ror r9
c0002b60:	c0002978 	andgt	r2, r0, r8, ror r9
c0002b64:	c0002b68 	andgt	r2, r0, r8, ror #22
c0002b68:	e59d3004 	ldr	r3, [sp, #4]
c0002b6c:	e28d2008 	add	r2, sp, #8
c0002b70:	e3a01010 	mov	r1, #16
c0002b74:	e2830004 	add	r0, r3, #4
c0002b78:	e58d0004 	str	r0, [sp, #4]
c0002b7c:	e5930000 	ldr	r0, [r3]
c0002b80:	ebffff19 	bl	c00027ec <outnum>
c0002b84:	e5d40001 	ldrb	r0, [r4, #1]
c0002b88:	e2848001 	add	r8, r4, #1
c0002b8c:	e3500000 	cmp	r0, #0
c0002b90:	1affff7c 	bne	c0002988 <xil_printf+0x50>
c0002b94:	e28dd024 	add	sp, sp, #36	; 0x24
c0002b98:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
c0002b9c:	e28dd010 	add	sp, sp, #16
c0002ba0:	e12fff1e 	bx	lr
c0002ba4:	e59d3004 	ldr	r3, [sp, #4]
c0002ba8:	e28d1008 	add	r1, sp, #8
c0002bac:	e2832004 	add	r2, r3, #4
c0002bb0:	e58d2004 	str	r2, [sp, #4]
c0002bb4:	e5930000 	ldr	r0, [r3]
c0002bb8:	ebfffeea 	bl	c0002768 <outs>
c0002bbc:	eaffff6d 	b	c0002978 <xil_printf+0x40>
c0002bc0:	e5d85002 	ldrb	r5, [r8, #2]
c0002bc4:	e3a07001 	mov	r7, #1
c0002bc8:	e1a08004 	mov	r8, r4
c0002bcc:	e2453030 	sub	r3, r5, #48	; 0x30
c0002bd0:	eaffff76 	b	c00029b0 <xil_printf+0x78>
c0002bd4:	e59d3004 	ldr	r3, [sp, #4]
c0002bd8:	e3550044 	cmp	r5, #68	; 0x44
c0002bdc:	11a05007 	movne	r5, r7
c0002be0:	03875001 	orreq	r5, r7, #1
c0002be4:	e3a0100a 	mov	r1, #10
c0002be8:	e28d2008 	add	r2, sp, #8
c0002bec:	e2830004 	add	r0, r3, #4
c0002bf0:	e58d0004 	str	r0, [sp, #4]
c0002bf4:	e5930000 	ldr	r0, [r3]
c0002bf8:	eaffffe0 	b	c0002b80 <xil_printf+0x248>
c0002bfc:	e59d3004 	ldr	r3, [sp, #4]
c0002c00:	e2832004 	add	r2, r3, #4
c0002c04:	e58d2004 	str	r2, [sp, #4]
c0002c08:	e5d30000 	ldrb	r0, [r3]
c0002c0c:	ebfffbe7 	bl	c0001bb0 <outbyte>
c0002c10:	eaffff58 	b	c0002978 <xil_printf+0x40>
c0002c14:	e2453061 	sub	r3, r5, #97	; 0x61
c0002c18:	e3530011 	cmp	r3, #17
c0002c1c:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
c0002c20:	ea00003e 	b	c0002d20 <xil_printf+0x3e8>
c0002c24:	c0002d2c 	andgt	r2, r0, ip, lsr #26
c0002c28:	c0002d20 	andgt	r2, r0, r0, lsr #26
c0002c2c:	c0002d20 	andgt	r2, r0, r0, lsr #26
c0002c30:	c0002d20 	andgt	r2, r0, r0, lsr #26
c0002c34:	c0002d20 	andgt	r2, r0, r0, lsr #26
c0002c38:	c0002d20 	andgt	r2, r0, r0, lsr #26
c0002c3c:	c0002d20 	andgt	r2, r0, r0, lsr #26
c0002c40:	c0002d38 	andgt	r2, r0, r8, lsr sp
c0002c44:	c0002d20 	andgt	r2, r0, r0, lsr #26
c0002c48:	c0002d20 	andgt	r2, r0, r0, lsr #26
c0002c4c:	c0002d20 	andgt	r2, r0, r0, lsr #26
c0002c50:	c0002d20 	andgt	r2, r0, r0, lsr #26
c0002c54:	c0002d20 	andgt	r2, r0, r0, lsr #26
c0002c58:	c0002d44 	andgt	r2, r0, r4, asr #26
c0002c5c:	c0002d20 	andgt	r2, r0, r0, lsr #26
c0002c60:	c0002d20 	andgt	r2, r0, r0, lsr #26
c0002c64:	c0002d20 	andgt	r2, r0, r0, lsr #26
c0002c68:	c0002d08 	andgt	r2, r0, r8, lsl #26
c0002c6c:	e5d85002 	ldrb	r5, [r8, #2]
c0002c70:	e3a0b001 	mov	fp, #1
c0002c74:	e1a08004 	mov	r8, r4
c0002c78:	e2453030 	sub	r3, r5, #48	; 0x30
c0002c7c:	eaffff4b 	b	c00029b0 <xil_printf+0x78>
c0002c80:	e5d85002 	ldrb	r5, [r8, #2]
c0002c84:	e3a03001 	mov	r3, #1
c0002c88:	e1a08004 	mov	r8, r4
c0002c8c:	e58d301c 	str	r3, [sp, #28]
c0002c90:	e2453030 	sub	r3, r5, #48	; 0x30
c0002c94:	eaffff45 	b	c00029b0 <xil_printf+0x78>
c0002c98:	e3a00025 	mov	r0, #37	; 0x25
c0002c9c:	ebfffbc3 	bl	c0001bb0 <outbyte>
c0002ca0:	eaffff34 	b	c0002978 <xil_printf+0x40>
c0002ca4:	e5d80001 	ldrb	r0, [r8, #1]
c0002ca8:	e3550030 	cmp	r5, #48	; 0x30
c0002cac:	05cd5014 	strbeq	r5, [sp, #20]
c0002cb0:	e2400030 	sub	r0, r0, #48	; 0x30
c0002cb4:	e3500009 	cmp	r0, #9
c0002cb8:	8a00000d 	bhi	c0002cf4 <xil_printf+0x3bc>
c0002cbc:	e2881002 	add	r1, r8, #2
c0002cc0:	e3a02000 	mov	r2, #0
c0002cc4:	e1a03000 	mov	r3, r0
c0002cc8:	e0822102 	add	r2, r2, r2, lsl #2
c0002ccc:	e1a04001 	mov	r4, r1
c0002cd0:	e4d15001 	ldrb	r5, [r1], #1
c0002cd4:	e0832082 	add	r2, r3, r2, lsl #1
c0002cd8:	e2453030 	sub	r3, r5, #48	; 0x30
c0002cdc:	e3530009 	cmp	r3, #9
c0002ce0:	9afffff8 	bls	c0002cc8 <xil_printf+0x390>
c0002ce4:	e58d200c 	str	r2, [sp, #12]
c0002ce8:	e3a02001 	mov	r2, #1
c0002cec:	e58d2018 	str	r2, [sp, #24]
c0002cf0:	eaffff3e 	b	c00029f0 <xil_printf+0xb8>
c0002cf4:	e3a02000 	mov	r2, #0
c0002cf8:	e58d200c 	str	r2, [sp, #12]
c0002cfc:	e3a02001 	mov	r2, #1
c0002d00:	e58d2018 	str	r2, [sp, #24]
c0002d04:	eaffff39 	b	c00029f0 <xil_printf+0xb8>
c0002d08:	e3a0000d 	mov	r0, #13
c0002d0c:	ebfffba7 	bl	c0001bb0 <outbyte>
c0002d10:	e5d85003 	ldrb	r5, [r8, #3]
c0002d14:	e2888002 	add	r8, r8, #2
c0002d18:	e2453030 	sub	r3, r5, #48	; 0x30
c0002d1c:	eaffff23 	b	c00029b0 <xil_printf+0x78>
c0002d20:	e1a00005 	mov	r0, r5
c0002d24:	ebfffba1 	bl	c0001bb0 <outbyte>
c0002d28:	eafffff8 	b	c0002d10 <xil_printf+0x3d8>
c0002d2c:	e3a00007 	mov	r0, #7
c0002d30:	ebfffb9e 	bl	c0001bb0 <outbyte>
c0002d34:	eafffff5 	b	c0002d10 <xil_printf+0x3d8>
c0002d38:	e3a00008 	mov	r0, #8
c0002d3c:	ebfffb9b 	bl	c0001bb0 <outbyte>
c0002d40:	eafffff2 	b	c0002d10 <xil_printf+0x3d8>
c0002d44:	e3a0000d 	mov	r0, #13
c0002d48:	ebfffb98 	bl	c0001bb0 <outbyte>
c0002d4c:	e3a0000a 	mov	r0, #10
c0002d50:	ebfffb96 	bl	c0001bb0 <outbyte>
c0002d54:	eaffffed 	b	c0002d10 <xil_printf+0x3d8>

c0002d58 <_Z16XUartPs_SendBytemh>:
c0002d58:	e92d4070 	push	{r4, r5, r6, lr}
c0002d5c:	e280402c 	add	r4, r0, #44	; 0x2c
c0002d60:	e1a05000 	mov	r5, r0
c0002d64:	e1a06001 	mov	r6, r1
c0002d68:	e1a00004 	mov	r0, r4
c0002d6c:	ebfffe39 	bl	c0002658 <_Z8Xil_In32m>
c0002d70:	e3100010 	tst	r0, #16
c0002d74:	1afffffb 	bne	c0002d68 <_Z16XUartPs_SendBytemh+0x10>
c0002d78:	e2850030 	add	r0, r5, #48	; 0x30
c0002d7c:	e1a01006 	mov	r1, r6
c0002d80:	e8bd4070 	pop	{r4, r5, r6, lr}
c0002d84:	eafffe39 	b	c0002670 <_Z9Xil_Out32mm>

c0002d88 <_Z16XUartPs_RecvBytem>:
c0002d88:	e92d4038 	push	{r3, r4, r5, lr}
c0002d8c:	e280402c 	add	r4, r0, #44	; 0x2c
c0002d90:	e1a05000 	mov	r5, r0
c0002d94:	e1a00004 	mov	r0, r4
c0002d98:	ebfffe2e 	bl	c0002658 <_Z8Xil_In32m>
c0002d9c:	e3100002 	tst	r0, #2
c0002da0:	1afffffb 	bne	c0002d94 <_Z16XUartPs_RecvBytem+0xc>
c0002da4:	e2850030 	add	r0, r5, #48	; 0x30
c0002da8:	ebfffe2a 	bl	c0002658 <_Z8Xil_In32m>
c0002dac:	e6ef0070 	uxtb	r0, r0
c0002db0:	e8bd8038 	pop	{r3, r4, r5, pc}

c0002db4 <_Z15XUartPs_ResetHwm>:
c0002db4:	e92d4010 	push	{r4, lr}
c0002db8:	e3011fff 	movw	r1, #8191	; 0x1fff
c0002dbc:	e1a04000 	mov	r4, r0
c0002dc0:	e280000c 	add	r0, r0, #12
c0002dc4:	ebfffe29 	bl	c0002670 <_Z9Xil_Out32mm>
c0002dc8:	e1a00004 	mov	r0, r4
c0002dcc:	e3a01028 	mov	r1, #40	; 0x28
c0002dd0:	ebfffe26 	bl	c0002670 <_Z9Xil_Out32mm>
c0002dd4:	e1a00004 	mov	r0, r4
c0002dd8:	e3a01003 	mov	r1, #3
c0002ddc:	ebfffe23 	bl	c0002670 <_Z9Xil_Out32mm>
c0002de0:	e2840014 	add	r0, r4, #20
c0002de4:	e3011fff 	movw	r1, #8191	; 0x1fff
c0002de8:	ebfffe20 	bl	c0002670 <_Z9Xil_Out32mm>
c0002dec:	e2840004 	add	r0, r4, #4
c0002df0:	e3a01000 	mov	r1, #0
c0002df4:	ebfffe1d 	bl	c0002670 <_Z9Xil_Out32mm>
c0002df8:	e2840020 	add	r0, r4, #32
c0002dfc:	e3a01020 	mov	r1, #32
c0002e00:	ebfffe1a 	bl	c0002670 <_Z9Xil_Out32mm>
c0002e04:	e2840044 	add	r0, r4, #68	; 0x44
c0002e08:	e3a01020 	mov	r1, #32
c0002e0c:	ebfffe17 	bl	c0002670 <_Z9Xil_Out32mm>
c0002e10:	e284001c 	add	r0, r4, #28
c0002e14:	e3a01000 	mov	r1, #0
c0002e18:	ebfffe14 	bl	c0002670 <_Z9Xil_Out32mm>
c0002e1c:	e2840018 	add	r0, r4, #24
c0002e20:	e300128b 	movw	r1, #651	; 0x28b
c0002e24:	ebfffe11 	bl	c0002670 <_Z9Xil_Out32mm>
c0002e28:	e2840034 	add	r0, r4, #52	; 0x34
c0002e2c:	e3a0100f 	mov	r1, #15
c0002e30:	ebfffe0e 	bl	c0002670 <_Z9Xil_Out32mm>
c0002e34:	e1a00004 	mov	r0, r4
c0002e38:	e3a01f4a 	mov	r1, #296	; 0x128
c0002e3c:	e8bd4010 	pop	{r4, lr}
c0002e40:	eafffe0a 	b	c0002670 <_Z9Xil_Out32mm>

c0002e44 <_exit>:
c0002e44:	eafffffe 	b	c0002e44 <_exit>

c0002e48 <_Z11inst_decodem>:
c0002e48:	e2003c0e 	and	r3, r0, #3584	; 0xe00
c0002e4c:	e3530c0a 	cmp	r3, #2560	; 0xa00
c0002e50:	0a000001 	beq	c0002e5c <_Z11inst_decodem+0x14>
c0002e54:	e3a00001 	mov	r0, #1
c0002e58:	e12fff1e 	bx	lr
c0002e5c:	e200340e 	and	r3, r0, #234881024	; 0xe000000
c0002e60:	e3530303 	cmp	r3, #201326592	; 0xc000000
c0002e64:	0a000002 	beq	c0002e74 <_Z11inst_decodem+0x2c>
c0002e68:	e200040f 	and	r0, r0, #251658240	; 0xf000000
c0002e6c:	e350040e 	cmp	r0, #234881024	; 0xe000000
c0002e70:	1afffff7 	bne	c0002e54 <_Z11inst_decodem+0xc>
c0002e74:	e3a00000 	mov	r0, #0
c0002e78:	e12fff1e 	bx	lr

c0002e7c <_ZN2Ec16ret_user_sysexitEv>:
c0002e7c:	e3063b88 	movw	r3, #27528	; 0x6b88
c0002e80:	e34c3000 	movt	r3, #49152	; 0xc000
c0002e84:	e24dd008 	sub	sp, sp, #8
c0002e88:	e5933000 	ldr	r3, [r3]
c0002e8c:	e2833010 	add	r3, r3, #16
c0002e90:	e58d3004 	str	r3, [sp, #4]
c0002e94:	e59dd004 	ldr	sp, [sp, #4]
c0002e98:	e8dd7fff 	ldm	sp, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, sp, lr}^
c0002e9c:	e28dd03c 	add	sp, sp, #60	; 0x3c
c0002ea0:	f8bd0a00 	rfeia	sp!
c0002ea4:	e28dd008 	add	sp, sp, #8
c0002ea8:	e12fff1e 	bx	lr

c0002eac <_ZN2EcC1Emmi>:
c0002eac:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
c0002eb0:	e1a04000 	mov	r4, r0
c0002eb4:	e1a05001 	mov	r5, r1
c0002eb8:	e1a07002 	mov	r7, r2
c0002ebc:	e3a01000 	mov	r1, #0
c0002ec0:	e3a02090 	mov	r2, #144	; 0x90
c0002ec4:	e2800084 	add	r0, r0, #132	; 0x84
c0002ec8:	e1a08003 	mov	r8, r3
c0002ecc:	ebfff75d 	bl	c0000c48 <memset>
c0002ed0:	e3060b84 	movw	r0, #27524	; 0x6b84
c0002ed4:	e34c0000 	movt	r0, #49152	; 0xc000
c0002ed8:	e306eb9c 	movw	lr, #27548	; 0x6b9c
c0002edc:	e34ce000 	movt	lr, #49152	; 0xc000
c0002ee0:	e584504c 	str	r5, [r4, #76]	; 0x4c
c0002ee4:	e590c000 	ldr	ip, [r0]
c0002ee8:	e3a06010 	mov	r6, #16
c0002eec:	e5847044 	str	r7, [r4, #68]	; 0x44
c0002ef0:	e3003101 	movw	r3, #257	; 0x101
c0002ef4:	e28cc001 	add	ip, ip, #1
c0002ef8:	e5846050 	str	r6, [r4, #80]	; 0x50
c0002efc:	e580c000 	str	ip, [r0]
c0002f00:	e3025e7c 	movw	r5, #11900	; 0x2e7c
c0002f04:	e5848000 	str	r8, [r4]
c0002f08:	e34c5000 	movt	r5, #49152	; 0xc000
c0002f0c:	e584c004 	str	ip, [r4, #4]
c0002f10:	e3081000 	movw	r1, #32768	; 0x8000
c0002f14:	e584500c 	str	r5, [r4, #12]
c0002f18:	e3401040 	movt	r1, #64	; 0x40
c0002f1c:	e5843008 	str	r3, [r4, #8]
c0002f20:	e3050424 	movw	r0, #21540	; 0x5424
c0002f24:	e5841054 	str	r1, [r4, #84]	; 0x54
c0002f28:	e34c0000 	movt	r0, #49152	; 0xc000
c0002f2c:	e78e410c 	str	r4, [lr, ip, lsl #2]
c0002f30:	e1a0100c 	mov	r1, ip
c0002f34:	e584608c 	str	r6, [r4, #140]	; 0x8c
c0002f38:	ebfffe7e 	bl	c0002938 <xil_printf>
c0002f3c:	e1a00004 	mov	r0, r4
c0002f40:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

c0002f44 <_ZN2EcC1Emimi>:
c0002f44:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
c0002f48:	e1a04000 	mov	r4, r0
c0002f4c:	e1a07001 	mov	r7, r1
c0002f50:	e1a06002 	mov	r6, r2
c0002f54:	e3a01000 	mov	r1, #0
c0002f58:	e3a02090 	mov	r2, #144	; 0x90
c0002f5c:	e2800084 	add	r0, r0, #132	; 0x84
c0002f60:	e1a08003 	mov	r8, r3
c0002f64:	e59d5018 	ldr	r5, [sp, #24]
c0002f68:	ebfff736 	bl	c0000c48 <memset>
c0002f6c:	e3060b84 	movw	r0, #27524	; 0x6b84
c0002f70:	e34c0000 	movt	r0, #49152	; 0xc000
c0002f74:	e306cb9c 	movw	ip, #27548	; 0x6b9c
c0002f78:	e3550000 	cmp	r5, #0
c0002f7c:	e5901000 	ldr	r1, [r0]
c0002f80:	e34cc000 	movt	ip, #49152	; 0xc000
c0002f84:	e3a03010 	mov	r3, #16
c0002f88:	e302ee7c 	movw	lr, #11900	; 0x2e7c
c0002f8c:	e2811001 	add	r1, r1, #1
c0002f90:	e5843050 	str	r3, [r4, #80]	; 0x50
c0002f94:	e34ce000 	movt	lr, #49152	; 0xc000
c0002f98:	e5801000 	str	r1, [r0]
c0002f9c:	e584e00c 	str	lr, [r4, #12]
c0002fa0:	e1813401 	orr	r3, r1, r1, lsl #8
c0002fa4:	e584704c 	str	r7, [r4, #76]	; 0x4c
c0002fa8:	e3a02000 	mov	r2, #0
c0002fac:	e5848054 	str	r8, [r4, #84]	; 0x54
c0002fb0:	e5842044 	str	r2, [r4, #68]	; 0x44
c0002fb4:	e5846000 	str	r6, [r4]
c0002fb8:	e984000a 	stmib	r4, {r1, r3}
c0002fbc:	e78c4101 	str	r4, [ip, r1, lsl #2]
c0002fc0:	1a000008 	bne	c0002fe8 <_ZN2EcC1Emimi+0xa4>
c0002fc4:	e3a0302a 	mov	r3, #42	; 0x2a
c0002fc8:	e5843084 	str	r3, [r4, #132]	; 0x84
c0002fcc:	e3a03040 	mov	r3, #64	; 0x40
c0002fd0:	e584308c 	str	r3, [r4, #140]	; 0x8c
c0002fd4:	e3050424 	movw	r0, #21540	; 0x5424
c0002fd8:	e34c0000 	movt	r0, #49152	; 0xc000
c0002fdc:	ebfffe55 	bl	c0002938 <xil_printf>
c0002fe0:	e1a00004 	mov	r0, r4
c0002fe4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
c0002fe8:	e3550001 	cmp	r5, #1
c0002fec:	0a000004 	beq	c0003004 <_ZN2EcC1Emimi+0xc0>
c0002ff0:	e3050430 	movw	r0, #21552	; 0x5430
c0002ff4:	e34c0000 	movt	r0, #49152	; 0xc000
c0002ff8:	eb000583 	bl	c000460c <_Z5panicPKc>
c0002ffc:	e5941004 	ldr	r1, [r4, #4]
c0003000:	eafffff3 	b	c0002fd4 <_ZN2EcC1Emimi+0x90>
c0003004:	e3063b98 	movw	r3, #27544	; 0x6b98
c0003008:	e34c3000 	movt	r3, #49152	; 0xc000
c000300c:	e3a0202b 	mov	r2, #43	; 0x2b
c0003010:	e5842084 	str	r2, [r4, #132]	; 0x84
c0003014:	e5834000 	str	r4, [r3]
c0003018:	e3a02020 	mov	r2, #32
c000301c:	e584208c 	str	r2, [r4, #140]	; 0x8c
c0003020:	eaffffeb 	b	c0002fd4 <_ZN2EcC1Emimi+0x90>

c0003024 <_ZN2Ec11root_invokeEv>:
c0003024:	e3068b88 	movw	r8, #27528	; 0x6b88
c0003028:	e34c8000 	movt	r8, #49152	; 0xc000
c000302c:	e92d4880 	push	{r7, fp, lr}
c0003030:	e3050454 	movw	r0, #21588	; 0x5454
c0003034:	e24dd014 	sub	sp, sp, #20
c0003038:	e34c0000 	movt	r0, #49152	; 0xc000
c000303c:	eb000568 	bl	c00045e4 <print>
c0003040:	e5983000 	ldr	r3, [r8]
c0003044:	e593a010 	ldr	sl, [r3, #16]
c0003048:	e1a0000a 	mov	r0, sl
c000304c:	eb0005be 	bl	c000474c <_ZN4Ptab5remapEm>
c0003050:	e304357f 	movw	r3, #17791	; 0x457f
c0003054:	e344364c 	movt	r3, #17996	; 0x464c
c0003058:	e5902000 	ldr	r2, [r0]
c000305c:	e1a04000 	mov	r4, r0
c0003060:	e1520003 	cmp	r2, r3
c0003064:	0a00004f 	beq	c00031a8 <_ZN2Ec11root_invokeEv+0x184>
c0003068:	e3050474 	movw	r0, #21620	; 0x5474
c000306c:	e34c0000 	movt	r0, #49152	; 0xc000
c0003070:	eb000565 	bl	c000460c <_Z5panicPKc>
c0003074:	e5983000 	ldr	r3, [r8]
c0003078:	e3029e7c 	movw	r9, #11900	; 0x2e7c
c000307c:	e5942018 	ldr	r2, [r4, #24]
c0003080:	e34c9000 	movt	r9, #49152	; 0xc000
c0003084:	e594001c 	ldr	r0, [r4, #28]
c0003088:	e1d462bc 	ldrh	r6, [r4, #44]	; 0x2c
c000308c:	e08a0000 	add	r0, sl, r0
c0003090:	e583204c 	str	r2, [r3, #76]	; 0x4c
c0003094:	eb0005ac 	bl	c000474c <_ZN4Ptab5remapEm>
c0003098:	e3560000 	cmp	r6, #0
c000309c:	e2800020 	add	r0, r0, #32
c00030a0:	e58d0004 	str	r0, [sp, #4]
c00030a4:	0a000030 	beq	c000316c <_ZN2Ec11root_invokeEv+0x148>
c00030a8:	e59db004 	ldr	fp, [sp, #4]
c00030ac:	ea000002 	b	c00030bc <_ZN2Ec11root_invokeEv+0x98>
c00030b0:	e2566001 	subs	r6, r6, #1
c00030b4:	e28bb020 	add	fp, fp, #32
c00030b8:	0a00002b 	beq	c000316c <_ZN2Ec11root_invokeEv+0x148>
c00030bc:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
c00030c0:	e3520001 	cmp	r2, #1
c00030c4:	1afffff9 	bne	c00030b0 <_ZN2Ec11root_invokeEv+0x8c>
c00030c8:	e3050490 	movw	r0, #21648	; 0x5490
c00030cc:	e34c0000 	movt	r0, #49152	; 0xc000
c00030d0:	eb000543 	bl	c00045e4 <print>
c00030d4:	e51b1010 	ldr	r1, [fp, #-16]
c00030d8:	e51b200c 	ldr	r2, [fp, #-12]
c00030dc:	e1510002 	cmp	r1, r2
c00030e0:	1a00002c 	bne	c0003198 <_ZN2Ec11root_invokeEv+0x174>
c00030e4:	e51b101c 	ldr	r1, [fp, #-28]	; 0xffffffe4
c00030e8:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
c00030ec:	e0212002 	eor	r2, r1, r2
c00030f0:	e1a02a02 	lsl	r2, r2, #20
c00030f4:	e1a02a22 	lsr	r2, r2, #20
c00030f8:	e3520000 	cmp	r2, #0
c00030fc:	1a000025 	bne	c0003198 <_ZN2Ec11root_invokeEv+0x174>
c0003100:	e51b5010 	ldr	r5, [fp, #-16]
c0003104:	e51b701c 	ldr	r7, [fp, #-28]	; 0xffffffe4
c0003108:	e2855eff 	add	r5, r5, #4080	; 0xff0
c000310c:	e51b4018 	ldr	r4, [fp, #-24]	; 0xffffffe8
c0003110:	e285500f 	add	r5, r5, #15
c0003114:	e08a7007 	add	r7, sl, r7
c0003118:	e3c55eff 	bic	r5, r5, #4080	; 0xff0
c000311c:	e3c77eff 	bic	r7, r7, #4080	; 0xff0
c0003120:	e3d5500f 	bics	r5, r5, #15
c0003124:	e3c44eff 	bic	r4, r4, #4080	; 0xff0
c0003128:	e3c7700f 	bic	r7, r7, #15
c000312c:	e3c4400f 	bic	r4, r4, #15
c0003130:	10647007 	rsbne	r7, r4, r7
c0003134:	0a000006 	beq	c0003154 <_ZN2Ec11root_invokeEv+0x130>
c0003138:	e1a00004 	mov	r0, r4
c000313c:	e0871004 	add	r1, r7, r4
c0003140:	e3a02000 	mov	r2, #0
c0003144:	e2844a01 	add	r4, r4, #4096	; 0x1000
c0003148:	eb000533 	bl	c000461c <_ZN4Ptab14insert_mappingEmmm>
c000314c:	e2555a01 	subs	r5, r5, #4096	; 0x1000
c0003150:	1afffff8 	bne	c0003138 <_ZN2Ec11root_invokeEv+0x114>
c0003154:	e30504d8 	movw	r0, #21720	; 0x54d8
c0003158:	e34c0000 	movt	r0, #49152	; 0xc000
c000315c:	eb000520 	bl	c00045e4 <print>
c0003160:	e2566001 	subs	r6, r6, #1
c0003164:	e28bb020 	add	fp, fp, #32
c0003168:	1affffd3 	bne	c00030bc <_ZN2Ec11root_invokeEv+0x98>
c000316c:	e5983000 	ldr	r3, [r8]
c0003170:	e583900c 	str	r9, [r3, #12]
c0003174:	e5932008 	ldr	r2, [r3, #8]
c0003178:	ee0d2f30 	mcr	15, 0, r2, cr13, cr0, {1}
c000317c:	e2833010 	add	r3, r3, #16
c0003180:	e58d300c 	str	r3, [sp, #12]
c0003184:	e59dd00c 	ldr	sp, [sp, #12]
c0003188:	e8dd7fff 	ldm	sp, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, sp, lr}^
c000318c:	e28dd03c 	add	sp, sp, #60	; 0x3c
c0003190:	f8bd0a00 	rfeia	sp!
c0003194:	eaffffc3 	b	c00030a8 <_ZN2Ec11root_invokeEv+0x84>
c0003198:	e30504bc 	movw	r0, #21692	; 0x54bc
c000319c:	e34c0000 	movt	r0, #49152	; 0xc000
c00031a0:	eb000519 	bl	c000460c <_Z5panicPKc>
c00031a4:	eaffffd5 	b	c0003100 <_ZN2Ec11root_invokeEv+0xdc>
c00031a8:	e5d03005 	ldrb	r3, [r0, #5]
c00031ac:	e3530001 	cmp	r3, #1
c00031b0:	1affffac 	bne	c0003068 <_ZN2Ec11root_invokeEv+0x44>
c00031b4:	e1d031b0 	ldrh	r3, [r0, #16]
c00031b8:	e3530002 	cmp	r3, #2
c00031bc:	1affffa9 	bne	c0003068 <_ZN2Ec11root_invokeEv+0x44>
c00031c0:	eaffffab 	b	c0003074 <_ZN2Ec11root_invokeEv+0x50>

c00031c4 <irq_handler>:
c00031c4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
c00031c8:	e3060bf8 	movw	r0, #27640	; 0x6bf8
c00031cc:	e24dd00c 	sub	sp, sp, #12
c00031d0:	e34c0000 	movt	r0, #49152	; 0xc000
c00031d4:	ebfffa42 	bl	c0001ae4 <_Z24XScuGic_InterruptHandlerP7XScuGic>
c00031d8:	e3063b88 	movw	r3, #27528	; 0x6b88
c00031dc:	e34c3000 	movt	r3, #49152	; 0xc000
c00031e0:	e5933000 	ldr	r3, [r3]
c00031e4:	e2833010 	add	r3, r3, #16
c00031e8:	e58d3004 	str	r3, [sp, #4]
c00031ec:	e59dd004 	ldr	sp, [sp, #4]
c00031f0:	e8dd7fff 	ldm	sp, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, sp, lr}^
c00031f4:	e28dd03c 	add	sp, sp, #60	; 0x3c
c00031f8:	f8bd0a00 	rfeia	sp!
c00031fc:	e28dd00c 	add	sp, sp, #12
c0003200:	e8bd8000 	ldmfd	sp!, {pc}

c0003204 <_ZN2Ec7enqueueEv>:
c0003204:	e3063b8c 	movw	r3, #27532	; 0x6b8c
c0003208:	e34c3000 	movt	r3, #49152	; 0xc000
c000320c:	e5901000 	ldr	r1, [r0]
c0003210:	e5932000 	ldr	r2, [r3]
c0003214:	e1510002 	cmp	r1, r2
c0003218:	e3062b64 	movw	r2, #27492	; 0x6b64
c000321c:	e34c2000 	movt	r2, #49152	; 0xc000
c0003220:	85831000 	strhi	r1, [r3]
c0003224:	e7923101 	ldr	r3, [r2, r1, lsl #2]
c0003228:	e3530000 	cmp	r3, #0
c000322c:	0580011c 	streq	r0, [r0, #284]	; 0x11c
c0003230:	05800118 	streq	r0, [r0, #280]	; 0x118
c0003234:	15932118 	ldrne	r2, [r3, #280]	; 0x118
c0003238:	1580311c 	strne	r3, [r0, #284]	; 0x11c
c000323c:	07820101 	streq	r0, [r2, r1, lsl #2]
c0003240:	15802118 	strne	r2, [r0, #280]	; 0x118
c0003244:	1582011c 	strne	r0, [r2, #284]	; 0x11c
c0003248:	15830118 	strne	r0, [r3, #280]	; 0x118
c000324c:	e12fff1e 	bx	lr

c0003250 <_ZN2EcC1EPFvvEm>:
c0003250:	e92d4038 	push	{r3, r4, r5, lr}
c0003254:	e1a04000 	mov	r4, r0
c0003258:	e1a05002 	mov	r5, r2
c000325c:	e580100c 	str	r1, [r0, #12]
c0003260:	e3a02090 	mov	r2, #144	; 0x90
c0003264:	e3a01000 	mov	r1, #0
c0003268:	e2800084 	add	r0, r0, #132	; 0x84
c000326c:	ebfff675 	bl	c0000c48 <memset>
c0003270:	e3a0e001 	mov	lr, #1
c0003274:	e306cb84 	movw	ip, #27524	; 0x6b84
c0003278:	e3063b9c 	movw	r3, #27548	; 0x6b9c
c000327c:	e34cc000 	movt	ip, #49152	; 0xc000
c0003280:	e34c3000 	movt	r3, #49152	; 0xc000
c0003284:	e584e004 	str	lr, [r4, #4]
c0003288:	e1a0100e 	mov	r1, lr
c000328c:	e5845010 	str	r5, [r4, #16]
c0003290:	e3a02010 	mov	r2, #16
c0003294:	e3000101 	movw	r0, #257	; 0x101
c0003298:	e5842050 	str	r2, [r4, #80]	; 0x50
c000329c:	e5840008 	str	r0, [r4, #8]
c00032a0:	e3a02000 	mov	r2, #0
c00032a4:	e3050424 	movw	r0, #21540	; 0x5424
c00032a8:	e5842000 	str	r2, [r4]
c00032ac:	e34c0000 	movt	r0, #49152	; 0xc000
c00032b0:	e3082000 	movw	r2, #32768	; 0x8000
c00032b4:	e3402040 	movt	r2, #64	; 0x40
c00032b8:	e5842054 	str	r2, [r4, #84]	; 0x54
c00032bc:	e3a02040 	mov	r2, #64	; 0x40
c00032c0:	e584208c 	str	r2, [r4, #140]	; 0x8c
c00032c4:	e58ce000 	str	lr, [ip]
c00032c8:	e5834004 	str	r4, [r3, #4]
c00032cc:	ebfffd99 	bl	c0002938 <xil_printf>
c00032d0:	e1a00004 	mov	r0, r4
c00032d4:	ebffffca 	bl	c0003204 <_ZN2Ec7enqueueEv>
c00032d8:	e1a00004 	mov	r0, r4
c00032dc:	e8bd8038 	pop	{r3, r4, r5, pc}

c00032e0 <_ZN2Ec7dequeueEv>:
c00032e0:	e5902000 	ldr	r2, [r0]
c00032e4:	e3063b64 	movw	r3, #27492	; 0x6b64
c00032e8:	e34c3000 	movt	r3, #49152	; 0xc000
c00032ec:	e92d0030 	push	{r4, r5}
c00032f0:	e7931102 	ldr	r1, [r3, r2, lsl #2]
c00032f4:	e1510000 	cmp	r1, r0
c00032f8:	0a000023 	beq	c000338c <_ZN2Ec7dequeueEv+0xac>
c00032fc:	e590111c 	ldr	r1, [r0, #284]	; 0x11c
c0003300:	e306cb8c 	movw	ip, #27532	; 0x6b8c
c0003304:	e5904118 	ldr	r4, [r0, #280]	; 0x118
c0003308:	e34cc000 	movt	ip, #49152	; 0xc000
c000330c:	e59c5000 	ldr	r5, [ip]
c0003310:	e5814118 	str	r4, [r1, #280]	; 0x118
c0003314:	e5904118 	ldr	r4, [r0, #280]	; 0x118
c0003318:	e1520005 	cmp	r2, r5
c000331c:	e584111c 	str	r1, [r4, #284]	; 0x11c
c0003320:	0a00000b 	beq	c0003354 <_ZN2Ec7dequeueEv+0x74>
c0003324:	e3063b94 	movw	r3, #27540	; 0x6b94
c0003328:	e34c3000 	movt	r3, #49152	; 0xc000
c000332c:	e5932000 	ldr	r2, [r3]
c0003330:	e3520000 	cmp	r2, #0
c0003334:	0a000019 	beq	c00033a0 <_ZN2Ec7dequeueEv+0xc0>
c0003338:	e5923118 	ldr	r3, [r2, #280]	; 0x118
c000333c:	e580211c 	str	r2, [r0, #284]	; 0x11c
c0003340:	e5803118 	str	r3, [r0, #280]	; 0x118
c0003344:	e583011c 	str	r0, [r3, #284]	; 0x11c
c0003348:	e5820118 	str	r0, [r2, #280]	; 0x118
c000334c:	e8bd0030 	pop	{r4, r5}
c0003350:	e12fff1e 	bx	lr
c0003354:	e7931102 	ldr	r1, [r3, r2, lsl #2]
c0003358:	e3063b64 	movw	r3, #27492	; 0x6b64
c000335c:	e34c3000 	movt	r3, #49152	; 0xc000
c0003360:	e3510000 	cmp	r1, #0
c0003364:	1affffee 	bne	c0003324 <_ZN2Ec7dequeueEv+0x44>
c0003368:	e3520000 	cmp	r2, #0
c000336c:	0affffec 	beq	c0003324 <_ZN2Ec7dequeueEv+0x44>
c0003370:	e0833102 	add	r3, r3, r2, lsl #2
c0003374:	e5331004 	ldr	r1, [r3, #-4]!
c0003378:	e2422001 	sub	r2, r2, #1
c000337c:	e3510000 	cmp	r1, #0
c0003380:	0a00000a 	beq	c00033b0 <_ZN2Ec7dequeueEv+0xd0>
c0003384:	e58c2000 	str	r2, [ip]
c0003388:	eaffffe5 	b	c0003324 <_ZN2Ec7dequeueEv+0x44>
c000338c:	e590111c 	ldr	r1, [r0, #284]	; 0x11c
c0003390:	e1500001 	cmp	r0, r1
c0003394:	03a01000 	moveq	r1, #0
c0003398:	e7831102 	str	r1, [r3, r2, lsl #2]
c000339c:	eaffffd6 	b	c00032fc <_ZN2Ec7dequeueEv+0x1c>
c00033a0:	e580011c 	str	r0, [r0, #284]	; 0x11c
c00033a4:	e5800118 	str	r0, [r0, #280]	; 0x118
c00033a8:	e5830000 	str	r0, [r3]
c00033ac:	eaffffe6 	b	c000334c <_ZN2Ec7dequeueEv+0x6c>
c00033b0:	e3520000 	cmp	r2, #0
c00033b4:	1affffee 	bne	c0003374 <_ZN2Ec7dequeueEv+0x94>
c00033b8:	eafffff1 	b	c0003384 <_ZN2Ec7dequeueEv+0xa4>

c00033bc <_ZN2Ec7requeueEv>:
c00033bc:	e3062b94 	movw	r2, #27540	; 0x6b94
c00033c0:	e34c2000 	movt	r2, #49152	; 0xc000
c00033c4:	e92d4008 	push	{r3, lr}
c00033c8:	e1a03000 	mov	r3, r0
c00033cc:	e5921000 	ldr	r1, [r2]
c00033d0:	e1510000 	cmp	r1, r0
c00033d4:	0a00000e 	beq	c0003414 <_ZN2Ec7requeueEv+0x58>
c00033d8:	e593211c 	ldr	r2, [r3, #284]	; 0x11c
c00033dc:	e1a00003 	mov	r0, r3
c00033e0:	e5931118 	ldr	r1, [r3, #280]	; 0x118
c00033e4:	e5821118 	str	r1, [r2, #280]	; 0x118
c00033e8:	e5933118 	ldr	r3, [r3, #280]	; 0x118
c00033ec:	e583211c 	str	r2, [r3, #284]	; 0x11c
c00033f0:	ebffff83 	bl	c0003204 <_ZN2Ec7enqueueEv>
c00033f4:	e3062b88 	movw	r2, #27528	; 0x6b88
c00033f8:	e34c2000 	movt	r2, #49152	; 0xc000
c00033fc:	e3063b64 	movw	r3, #27492	; 0x6b64
c0003400:	e34c3000 	movt	r3, #49152	; 0xc000
c0003404:	e5922000 	ldr	r2, [r2]
c0003408:	e5921000 	ldr	r1, [r2]
c000340c:	e7832101 	str	r2, [r3, r1, lsl #2]
c0003410:	e8bd8008 	pop	{r3, pc}
c0003414:	e590111c 	ldr	r1, [r0, #284]	; 0x11c
c0003418:	e1500001 	cmp	r0, r1
c000341c:	03a01000 	moveq	r1, #0
c0003420:	e5821000 	str	r1, [r2]
c0003424:	eaffffeb 	b	c00033d8 <_ZN2Ec7requeueEv+0x1c>

c0003428 <_ZN2Ec13sys_create_ecEv>:
c0003428:	e92d4030 	push	{r4, r5, lr}
c000342c:	e3a01e12 	mov	r1, #288	; 0x120
c0003430:	e24dd00c 	sub	sp, sp, #12
c0003434:	e3060bdc 	movw	r0, #27612	; 0x6bdc
c0003438:	e34c0000 	movt	r0, #49152	; 0xc000
c000343c:	e3064b88 	movw	r4, #27528	; 0x6b88
c0003440:	eb000393 	bl	c0004294 <_ZN6Kalloc5allocEj>
c0003444:	e34c4000 	movt	r4, #49152	; 0xc000
c0003448:	e5943000 	ldr	r3, [r4]
c000344c:	e2831014 	add	r1, r3, #20
c0003450:	e891000e 	ldm	r1, {r1, r2, r3}
c0003454:	e1a05000 	mov	r5, r0
c0003458:	ebfffe93 	bl	c0002eac <_ZN2EcC1Emmi>
c000345c:	e594c000 	ldr	ip, [r4]
c0003460:	e1a02005 	mov	r2, r5
c0003464:	e305050c 	movw	r0, #21772	; 0x550c
c0003468:	e34c0000 	movt	r0, #49152	; 0xc000
c000346c:	e59ce018 	ldr	lr, [ip, #24]
c0003470:	e1a0100c 	mov	r1, ip
c0003474:	e59c3014 	ldr	r3, [ip, #20]
c0003478:	e58de000 	str	lr, [sp]
c000347c:	e59cc01c 	ldr	ip, [ip, #28]
c0003480:	e58dc004 	str	ip, [sp, #4]
c0003484:	ebfffd2b 	bl	c0002938 <xil_printf>
c0003488:	e1a00005 	mov	r0, r5
c000348c:	e28dd00c 	add	sp, sp, #12
c0003490:	e8bd4030 	pop	{r4, r5, lr}
c0003494:	eaffff5a 	b	c0003204 <_ZN2Ec7enqueueEv>

c0003498 <_ZN2Ec16IVC_Channel_SendEii>:
c0003498:	e92d4070 	push	{r4, r5, r6, lr}
c000349c:	e1a04000 	mov	r4, r0
c00034a0:	e1a05001 	mov	r5, r1
c00034a4:	e2800084 	add	r0, r0, #132	; 0x84
c00034a8:	e3a01000 	mov	r1, #0
c00034ac:	e1a06002 	mov	r6, r2
c00034b0:	eb0006e8 	bl	c0005058 <_Z18vGic_InsertPendingP11vGicContexti>
c00034b4:	e594205c 	ldr	r2, [r4, #92]	; 0x5c
c00034b8:	e0843105 	add	r3, r4, r5, lsl #2
c00034bc:	e3a01001 	mov	r1, #1
c00034c0:	e1825511 	orr	r5, r2, r1, lsl r5
c00034c4:	e584505c 	str	r5, [r4, #92]	; 0x5c
c00034c8:	e5836060 	str	r6, [r3, #96]	; 0x60
c00034cc:	e8bd8070 	pop	{r4, r5, r6, pc}

c00034d0 <_ZN2Ec14ec_vtimer_ctrlEv>:
c00034d0:	e3063b88 	movw	r3, #27528	; 0x6b88
c00034d4:	e34c3000 	movt	r3, #49152	; 0xc000
c00034d8:	e5933000 	ldr	r3, [r3]
c00034dc:	e5932014 	ldr	r2, [r3, #20]
c00034e0:	e3520001 	cmp	r2, #1
c00034e4:	0a000009 	beq	c0003510 <_ZN2Ec14ec_vtimer_ctrlEv+0x40>
c00034e8:	3a000004 	bcc	c0003500 <_ZN2Ec14ec_vtimer_ctrlEv+0x30>
c00034ec:	e3520002 	cmp	r2, #2
c00034f0:	0a000008 	beq	c0003518 <_ZN2Ec14ec_vtimer_ctrlEv+0x48>
c00034f4:	e3050544 	movw	r0, #21828	; 0x5544
c00034f8:	e34c0000 	movt	r0, #49152	; 0xc000
c00034fc:	ea000438 	b	c00045e4 <print>
c0003500:	e5931018 	ldr	r1, [r3, #24]
c0003504:	e5930084 	ldr	r0, [r3, #132]	; 0x84
c0003508:	e5831088 	str	r1, [r3, #136]	; 0x88
c000350c:	ea0006b4 	b	c0004fe4 <_Z13vtimer_configmm>
c0003510:	e5930084 	ldr	r0, [r3, #132]	; 0x84
c0003514:	ea000739 	b	c0005200 <_Z21vGIC_DisableInterrupti>
c0003518:	e5930084 	ldr	r0, [r3, #132]	; 0x84
c000351c:	ea000731 	b	c00051e8 <_Z20vGIC_EnableInterrupti>

c0003520 <_ZN2Ec12ec_virq_ctrlEv>:
c0003520:	e92d4010 	push	{r4, lr}
c0003524:	e3064b88 	movw	r4, #27528	; 0x6b88
c0003528:	e34c4000 	movt	r4, #49152	; 0xc000
c000352c:	e5943000 	ldr	r3, [r4]
c0003530:	e5932014 	ldr	r2, [r3, #20]
c0003534:	e3520001 	cmp	r2, #1
c0003538:	0a000011 	beq	c0003584 <_ZN2Ec12ec_virq_ctrlEv+0x64>
c000353c:	3a000005 	bcc	c0003558 <_ZN2Ec12ec_virq_ctrlEv+0x38>
c0003540:	e3520002 	cmp	r2, #2
c0003544:	0a000011 	beq	c0003590 <_ZN2Ec12ec_virq_ctrlEv+0x70>
c0003548:	e3050568 	movw	r0, #21864	; 0x5568
c000354c:	e34c0000 	movt	r0, #49152	; 0xc000
c0003550:	e8bd4010 	pop	{r4, lr}
c0003554:	ea000422 	b	c00045e4 <print>
c0003558:	e5931018 	ldr	r1, [r3, #24]
c000355c:	e2830084 	add	r0, r3, #132	; 0x84
c0003560:	eb00071e 	bl	c00051e0 <_Z29vGIC_SetInterruptRoutineEntryP11vGicContextm>
c0003564:	e5941000 	ldr	r1, [r4]
c0003568:	e3a02000 	mov	r2, #0
c000356c:	e591301c 	ldr	r3, [r1, #28]
c0003570:	e5813058 	str	r3, [r1, #88]	; 0x58
c0003574:	e3a010d0 	mov	r1, #208	; 0xd0
c0003578:	e5832008 	str	r2, [r3, #8]
c000357c:	e8830006 	stm	r3, {r1, r2}
c0003580:	e8bd8010 	pop	{r4, pc}
c0003584:	e5930018 	ldr	r0, [r3, #24]
c0003588:	e8bd4010 	pop	{r4, lr}
c000358c:	ea00071b 	b	c0005200 <_Z21vGIC_DisableInterrupti>
c0003590:	e5930018 	ldr	r0, [r3, #24]
c0003594:	e8bd4010 	pop	{r4, lr}
c0003598:	ea000712 	b	c00051e8 <_Z20vGIC_EnableInterrupti>

c000359c <_ZN2Ec15ec_virq_handlerEi>:
c000359c:	e92d4070 	push	{r4, r5, r6, lr}
c00035a0:	e3064b88 	movw	r4, #27528	; 0x6b88
c00035a4:	e34c4000 	movt	r4, #49152	; 0xc000
c00035a8:	e24dd008 	sub	sp, sp, #8
c00035ac:	e1a05000 	mov	r5, r0
c00035b0:	e5943000 	ldr	r3, [r4]
c00035b4:	e5932058 	ldr	r2, [r3, #88]	; 0x58
c00035b8:	e5926000 	ldr	r6, [r2]
c00035bc:	e3160080 	tst	r6, #128	; 0x80
c00035c0:	1a000027 	bne	c0003664 <_ZN2Ec15ec_virq_handlerEi+0xc8>
c00035c4:	e0832005 	add	r2, r3, r5
c00035c8:	e5d220ac 	ldrb	r2, [r2, #172]	; 0xac
c00035cc:	e3520000 	cmp	r2, #0
c00035d0:	0a00000c 	beq	c0003608 <_ZN2Ec15ec_virq_handlerEi+0x6c>
c00035d4:	e5931058 	ldr	r1, [r3, #88]	; 0x58
c00035d8:	e0811005 	add	r1, r1, r5
c00035dc:	e5d12010 	ldrb	r2, [r1, #16]
c00035e0:	e3520000 	cmp	r2, #0
c00035e4:	1a000001 	bne	c00035f0 <_ZN2Ec15ec_virq_handlerEi+0x54>
c00035e8:	e28dd008 	add	sp, sp, #8
c00035ec:	e8bd8070 	pop	{r4, r5, r6, pc}
c00035f0:	e3a02000 	mov	r2, #0
c00035f4:	e2830084 	add	r0, r3, #132	; 0x84
c00035f8:	e5c12010 	strb	r2, [r1, #16]
c00035fc:	e1a01005 	mov	r1, r5
c0003600:	eb0006e7 	bl	c00051a4 <_Z22vGic_SetInterruptStateP11vGicContexti8IRQState>
c0003604:	e5943000 	ldr	r3, [r4]
c0003608:	e593e04c 	ldr	lr, [r3, #76]	; 0x4c
c000360c:	e2830084 	add	r0, r3, #132	; 0x84
c0003610:	e593c044 	ldr	ip, [r3, #68]	; 0x44
c0003614:	e1a01005 	mov	r1, r5
c0003618:	e3a02001 	mov	r2, #1
c000361c:	e52ce004 	str	lr, [ip, #-4]!
c0003620:	e593e090 	ldr	lr, [r3, #144]	; 0x90
c0003624:	e583c044 	str	ip, [r3, #68]	; 0x44
c0003628:	e583e04c 	str	lr, [r3, #76]	; 0x4c
c000362c:	eb0006dc 	bl	c00051a4 <_Z22vGic_SetInterruptStateP11vGicContexti8IRQState>
c0003630:	e5941000 	ldr	r1, [r4]
c0003634:	e3a03000 	mov	r3, #0
c0003638:	e34f380f 	movt	r3, #63503	; 0xf80f
c000363c:	e6ff0076 	uxth	r0, r6
c0003640:	e3866080 	orr	r6, r6, #128	; 0x80
c0003644:	e5912058 	ldr	r2, [r1, #88]	; 0x58
c0003648:	e5911050 	ldr	r1, [r1, #80]	; 0x50
c000364c:	e0013003 	and	r3, r1, r3
c0003650:	e582500c 	str	r5, [r2, #12]
c0003654:	e1803003 	orr	r3, r0, r3
c0003658:	e5826000 	str	r6, [r2]
c000365c:	e5823004 	str	r3, [r2, #4]
c0003660:	eaffffe0 	b	c00035e8 <_ZN2Ec15ec_virq_handlerEi+0x4c>
c0003664:	e28d1007 	add	r1, sp, #7
c0003668:	eb0006c7 	bl	c000518c <_Z16vGIC_GetPriorityiPh>
c000366c:	e5943000 	ldr	r3, [r4]
c0003670:	e5dd1007 	ldrb	r1, [sp, #7]
c0003674:	e593208c 	ldr	r2, [r3, #140]	; 0x8c
c0003678:	e1510002 	cmp	r1, r2
c000367c:	baffffd0 	blt	c00035c4 <_ZN2Ec15ec_virq_handlerEi+0x28>
c0003680:	e5933058 	ldr	r3, [r3, #88]	; 0x58
c0003684:	e5932008 	ldr	r2, [r3, #8]
c0003688:	e3520000 	cmp	r2, #0
c000368c:	05835008 	streq	r5, [r3, #8]
c0003690:	eaffffd4 	b	c00035e8 <_ZN2Ec15ec_virq_handlerEi+0x4c>

c0003694 <_ZN2Ec9sys_remapEv>:
c0003694:	e3063b88 	movw	r3, #27528	; 0x6b88
c0003698:	e34c3000 	movt	r3, #49152	; 0xc000
c000369c:	e5933000 	ldr	r3, [r3]
c00036a0:	e5930014 	ldr	r0, [r3, #20]
c00036a4:	ea000441 	b	c00047b0 <_ZN4Ptab10user_remapEm>

c00036a8 <_ZN2Ec18sys_insert_mappingEv>:
c00036a8:	e3063b88 	movw	r3, #27528	; 0x6b88
c00036ac:	e34c3000 	movt	r3, #49152	; 0xc000
c00036b0:	e92d4070 	push	{r4, r5, r6, lr}
c00036b4:	e3050588 	movw	r0, #21896	; 0x5588
c00036b8:	e5933000 	ldr	r3, [r3]
c00036bc:	e34c0000 	movt	r0, #49152	; 0xc000
c00036c0:	e593501c 	ldr	r5, [r3, #28]
c00036c4:	e5936014 	ldr	r6, [r3, #20]
c00036c8:	e5934018 	ldr	r4, [r3, #24]
c00036cc:	e1a03005 	mov	r3, r5
c00036d0:	e1a01006 	mov	r1, r6
c00036d4:	e1a02004 	mov	r2, r4
c00036d8:	ebfffc96 	bl	c0002938 <xil_printf>
c00036dc:	e3550000 	cmp	r5, #0
c00036e0:	08bd8070 	popeq	{r4, r5, r6, pc}
c00036e4:	e0646006 	rsb	r6, r4, r6
c00036e8:	e1a00004 	mov	r0, r4
c00036ec:	e0861004 	add	r1, r6, r4
c00036f0:	e3a02000 	mov	r2, #0
c00036f4:	e2844a01 	add	r4, r4, #4096	; 0x1000
c00036f8:	eb0003c7 	bl	c000461c <_ZN4Ptab14insert_mappingEmmm>
c00036fc:	e2555a01 	subs	r5, r5, #4096	; 0x1000
c0003700:	1afffff8 	bne	c00036e8 <_ZN2Ec18sys_insert_mappingEv+0x40>
c0003704:	e8bd8070 	pop	{r4, r5, r6, pc}

c0003708 <_ZN2Ec15sys_create_pdirEv>:
c0003708:	e92d45f8 	push	{r3, r4, r5, r6, r7, r8, sl, lr}
c000370c:	e3068b88 	movw	r8, #27528	; 0x6b88
c0003710:	e34c8000 	movt	r8, #49152	; 0xc000
c0003714:	e30505a0 	movw	r0, #21920	; 0x55a0
c0003718:	e34c0000 	movt	r0, #49152	; 0xc000
c000371c:	e5983000 	ldr	r3, [r8]
c0003720:	e5937014 	ldr	r7, [r3, #20]
c0003724:	e5934018 	ldr	r4, [r3, #24]
c0003728:	e593501c 	ldr	r5, [r3, #28]
c000372c:	e1a01007 	mov	r1, r7
c0003730:	e1a02004 	mov	r2, r4
c0003734:	e1a03005 	mov	r3, r5
c0003738:	ebfffc7e 	bl	c0002938 <xil_printf>
c000373c:	e3060bdc 	movw	r0, #27612	; 0x6bdc
c0003740:	e34c0000 	movt	r0, #49152	; 0xc000
c0003744:	eb000305 	bl	c0004360 <_ZN6Kalloc17alloc_shadow_pdirEv>
c0003748:	e1a01000 	mov	r1, r0
c000374c:	e1a06000 	mov	r6, r0
c0003750:	e30505c0 	movw	r0, #21952	; 0x55c0
c0003754:	e34c0000 	movt	r0, #49152	; 0xc000
c0003758:	ebfffc76 	bl	c0002938 <xil_printf>
c000375c:	e2860a03 	add	r0, r6, #12288	; 0x3000
c0003760:	eb0002f6 	bl	c0004340 <_ZN6Kalloc9phys2virtEm>
c0003764:	e1a0a000 	mov	sl, r0
c0003768:	e3080000 	movw	r0, #32768	; 0x8000
c000376c:	e3400040 	movt	r0, #64	; 0x40
c0003770:	eb0002f2 	bl	c0004340 <_ZN6Kalloc9phys2virtEm>
c0003774:	e3a02a01 	mov	r2, #4096	; 0x1000
c0003778:	e2801a03 	add	r1, r0, #12288	; 0x3000
c000377c:	e1a0000a 	mov	r0, sl
c0003780:	ebfff37a 	bl	c0000570 <memcpy>
c0003784:	e3550000 	cmp	r5, #0
c0003788:	10647007 	rsbne	r7, r4, r7
c000378c:	0a000007 	beq	c00037b0 <_ZN2Ec15sys_create_pdirEv+0xa8>
c0003790:	e1a01004 	mov	r1, r4
c0003794:	e0872004 	add	r2, r7, r4
c0003798:	e1a00006 	mov	r0, r6
c000379c:	e3a03000 	mov	r3, #0
c00037a0:	eb00041a 	bl	c0004810 <_ZN4Ptab21insert_shadow_mappingEmmmi>
c00037a4:	e2555a01 	subs	r5, r5, #4096	; 0x1000
c00037a8:	e2844a01 	add	r4, r4, #4096	; 0x1000
c00037ac:	1afffff7 	bne	c0003790 <_ZN2Ec15sys_create_pdirEv+0x88>
c00037b0:	e5983000 	ldr	r3, [r8]
c00037b4:	e5836010 	str	r6, [r3, #16]
c00037b8:	e8bd85f8 	pop	{r3, r4, r5, r6, r7, r8, sl, pc}

c00037bc <_ZN2Ec19sys_create_guest_osEi>:
c00037bc:	e92d4070 	push	{r4, r5, r6, lr}
c00037c0:	e3a01e12 	mov	r1, #288	; 0x120
c00037c4:	e24dd008 	sub	sp, sp, #8
c00037c8:	e1a06000 	mov	r6, r0
c00037cc:	e3060bdc 	movw	r0, #27612	; 0x6bdc
c00037d0:	e34c0000 	movt	r0, #49152	; 0xc000
c00037d4:	eb0002ae 	bl	c0004294 <_ZN6Kalloc5allocEj>
c00037d8:	e3065b88 	movw	r5, #27528	; 0x6b88
c00037dc:	e34c5000 	movt	r5, #49152	; 0xc000
c00037e0:	e5953000 	ldr	r3, [r5]
c00037e4:	e2831014 	add	r1, r3, #20
c00037e8:	e891000e 	ldm	r1, {r1, r2, r3}
c00037ec:	e58d6000 	str	r6, [sp]
c00037f0:	e1a04000 	mov	r4, r0
c00037f4:	ebfffdd2 	bl	c0002f44 <_ZN2EcC1Emimi>
c00037f8:	e5942000 	ldr	r2, [r4]
c00037fc:	e30505e4 	movw	r0, #21988	; 0x55e4
c0003800:	e594304c 	ldr	r3, [r4, #76]	; 0x4c
c0003804:	e34c0000 	movt	r0, #49152	; 0xc000
c0003808:	e5951000 	ldr	r1, [r5]
c000380c:	e58d2000 	str	r2, [sp]
c0003810:	e1a02004 	mov	r2, r4
c0003814:	e594c054 	ldr	ip, [r4, #84]	; 0x54
c0003818:	e58dc004 	str	ip, [sp, #4]
c000381c:	ebfffc45 	bl	c0002938 <xil_printf>
c0003820:	e1a00004 	mov	r0, r4
c0003824:	e28dd008 	add	sp, sp, #8
c0003828:	e8bd4070 	pop	{r4, r5, r6, lr}
c000382c:	eafffe74 	b	c0003204 <_ZN2Ec7enqueueEv>

c0003830 <_ZN2Ec10ttbr0_loadEv>:
c0003830:	e3063b88 	movw	r3, #27528	; 0x6b88
c0003834:	e34c3000 	movt	r3, #49152	; 0xc000
c0003838:	e5932000 	ldr	r2, [r3]
c000383c:	e5903054 	ldr	r3, [r0, #84]	; 0x54
c0003840:	e5922054 	ldr	r2, [r2, #84]	; 0x54
c0003844:	e1530002 	cmp	r3, r2
c0003848:	012fff1e 	bxeq	lr
c000384c:	e3a02000 	mov	r2, #0
c0003850:	ee0d2f30 	mcr	15, 0, r2, cr13, cr0, {1}
c0003854:	ee121f10 	mrc	15, 0, r1, cr2, cr0, {0}
c0003858:	e1a02b03 	lsl	r2, r3, #22
c000385c:	e1a02b22 	lsr	r2, r2, #22
c0003860:	e3520000 	cmp	r2, #0
c0003864:	1a000006 	bne	c0003884 <_ZN2Ec10ttbr0_loadEv+0x54>
c0003868:	e1a02b01 	lsl	r2, r1, #22
c000386c:	e1a02b22 	lsr	r2, r2, #22
c0003870:	e0823003 	add	r3, r2, r3
c0003874:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
c0003878:	e5903008 	ldr	r3, [r0, #8]
c000387c:	ee0d3f30 	mcr	15, 0, r3, cr13, cr0, {1}
c0003880:	e12fff1e 	bx	lr
c0003884:	e3050624 	movw	r0, #22052	; 0x5624
c0003888:	e34c0000 	movt	r0, #49152	; 0xc000
c000388c:	ea000354 	b	c00045e4 <print>

c0003890 <_ZN2Ec16sys_change_to_ecEPS_>:
c0003890:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
c0003894:	e3066b88 	movw	r6, #27528	; 0x6b88
c0003898:	e34c6000 	movt	r6, #49152	; 0xc000
c000389c:	e1a04000 	mov	r4, r0
c00038a0:	e5960000 	ldr	r0, [r6]
c00038a4:	e1540000 	cmp	r4, r0
c00038a8:	08bd80f8 	popeq	{r3, r4, r5, r6, r7, pc}
c00038ac:	e3a07000 	mov	r7, #0
c00038b0:	eee87a10 	vmsr	fpexc, r7
c00038b4:	e2841084 	add	r1, r4, #132	; 0x84
c00038b8:	e2800084 	add	r0, r0, #132	; 0x84
c00038bc:	eb0005f9 	bl	c00050a8 <_Z11vGic_SwitchP11vGicContextS0_>
c00038c0:	e1a00004 	mov	r0, r4
c00038c4:	ebffffd9 	bl	c0003830 <_ZN2Ec10ttbr0_loadEv>
c00038c8:	e594305c 	ldr	r3, [r4, #92]	; 0x5c
c00038cc:	e1530007 	cmp	r3, r7
c00038d0:	0a000009 	beq	c00038fc <_ZN2Ec16sys_change_to_ecEPS_+0x6c>
c00038d4:	e284505c 	add	r5, r4, #92	; 0x5c
c00038d8:	e594c058 	ldr	ip, [r4, #88]	; 0x58
c00038dc:	e8b5000f 	ldm	r5!, {r0, r1, r2, r3}
c00038e0:	e28cc070 	add	ip, ip, #112	; 0x70
c00038e4:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
c00038e8:	e8b5000f 	ldm	r5!, {r0, r1, r2, r3}
c00038ec:	e5955000 	ldr	r5, [r5]
c00038f0:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
c00038f4:	e58c5000 	str	r5, [ip]
c00038f8:	e584705c 	str	r7, [r4, #92]	; 0x5c
c00038fc:	e5864000 	str	r4, [r6]
c0003900:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

c0003904 <_ZN2Ec9sys_yieldEv>:
c0003904:	e3063b88 	movw	r3, #27528	; 0x6b88
c0003908:	e34c3000 	movt	r3, #49152	; 0xc000
c000390c:	e5933000 	ldr	r3, [r3]
c0003910:	e593011c 	ldr	r0, [r3, #284]	; 0x11c
c0003914:	eaffffdd 	b	c0003890 <_ZN2Ec16sys_change_to_ecEPS_>

c0003918 <_ZN2Ec8scheduleEv>:
c0003918:	e92d4038 	push	{r3, r4, r5, lr}
c000391c:	e3065b8c 	movw	r5, #27532	; 0x6b8c
c0003920:	e34c5000 	movt	r5, #49152	; 0xc000
c0003924:	e3064b64 	movw	r4, #27492	; 0x6b64
c0003928:	e34c4000 	movt	r4, #49152	; 0xc000
c000392c:	e5953000 	ldr	r3, [r5]
c0003930:	e7940103 	ldr	r0, [r4, r3, lsl #2]
c0003934:	e3500000 	cmp	r0, #0
c0003938:	0a000001 	beq	c0003944 <_ZN2Ec8scheduleEv+0x2c>
c000393c:	e8bd4038 	pop	{r3, r4, r5, lr}
c0003940:	eaffffd2 	b	c0003890 <_ZN2Ec16sys_change_to_ecEPS_>
c0003944:	e305064c 	movw	r0, #22092	; 0x564c
c0003948:	e34c0000 	movt	r0, #49152	; 0xc000
c000394c:	eb00032e 	bl	c000460c <_Z5panicPKc>
c0003950:	e5953000 	ldr	r3, [r5]
c0003954:	e7940103 	ldr	r0, [r4, r3, lsl #2]
c0003958:	eafffff7 	b	c000393c <_ZN2Ec8scheduleEv+0x24>

c000395c <_ZN2Ec15Service_enqueueEi>:
c000395c:	e3500001 	cmp	r0, #1
c0003960:	e92d4008 	push	{r3, lr}
c0003964:	0a000003 	beq	c0003978 <_ZN2Ec15Service_enqueueEi+0x1c>
c0003968:	e3050678 	movw	r0, #22136	; 0x5678
c000396c:	e34c0000 	movt	r0, #49152	; 0xc000
c0003970:	e8bd4008 	pop	{r3, lr}
c0003974:	ea00031a 	b	c00045e4 <print>
c0003978:	e3062b90 	movw	r2, #27536	; 0x6b90
c000397c:	e34c2000 	movt	r2, #49152	; 0xc000
c0003980:	e3063b9c 	movw	r3, #27548	; 0x6b9c
c0003984:	e34c3000 	movt	r3, #49152	; 0xc000
c0003988:	e5922000 	ldr	r2, [r2]
c000398c:	e7930102 	ldr	r0, [r3, r2, lsl #2]
c0003990:	ebfffe89 	bl	c00033bc <_ZN2Ec7requeueEv>
c0003994:	e8bd4008 	pop	{r3, lr}
c0003998:	eaffffde 	b	c0003918 <_ZN2Ec8scheduleEv>

c000399c <_ZN2Ec12RTOS_dequeueEv>:
c000399c:	e92d4008 	push	{r3, lr}
c00039a0:	e3063b98 	movw	r3, #27544	; 0x6b98
c00039a4:	e34c3000 	movt	r3, #49152	; 0xc000
c00039a8:	e5930000 	ldr	r0, [r3]
c00039ac:	ebfffe4b 	bl	c00032e0 <_ZN2Ec7dequeueEv>
c00039b0:	ebffffd8 	bl	c0003918 <_ZN2Ec8scheduleEv>
c00039b4:	e3063b88 	movw	r3, #27528	; 0x6b88
c00039b8:	e34c3000 	movt	r3, #49152	; 0xc000
c00039bc:	e5933000 	ldr	r3, [r3]
c00039c0:	e5930080 	ldr	r0, [r3, #128]	; 0x80
c00039c4:	e8bd4008 	pop	{r3, lr}
c00039c8:	eafff8a3 	b	c0001c5c <_Z13Private_TmrWrm>

c00039cc <_ZN2Ec12RTOS_enqueueEv>:
c00039cc:	e92d4038 	push	{r3, r4, r5, lr}
c00039d0:	e3063b88 	movw	r3, #27528	; 0x6b88
c00039d4:	e3064b98 	movw	r4, #27544	; 0x6b98
c00039d8:	e34c3000 	movt	r3, #49152	; 0xc000
c00039dc:	e34c4000 	movt	r4, #49152	; 0xc000
c00039e0:	e5935000 	ldr	r5, [r3]
c00039e4:	e5943000 	ldr	r3, [r4]
c00039e8:	e1550003 	cmp	r5, r3
c00039ec:	08bd8038 	popeq	{r3, r4, r5, pc}
c00039f0:	ebfff894 	bl	c0001c48 <_Z13Private_TmrRdv>
c00039f4:	e5850080 	str	r0, [r5, #128]	; 0x80
c00039f8:	e5940000 	ldr	r0, [r4]
c00039fc:	ebfffe6e 	bl	c00033bc <_ZN2Ec7requeueEv>
c0003a00:	e8bd4038 	pop	{r3, r4, r5, lr}
c0003a04:	eaffffc3 	b	c0003918 <_ZN2Ec8scheduleEv>

c0003a08 <_ZN2Ec21sys_create_messageboxEv>:
c0003a08:	e92d4038 	push	{r3, r4, r5, lr}
c0003a0c:	e3063b88 	movw	r3, #27528	; 0x6b88
c0003a10:	e34c3000 	movt	r3, #49152	; 0xc000
c0003a14:	e5933000 	ldr	r3, [r3]
c0003a18:	e5935014 	ldr	r5, [r3, #20]
c0003a1c:	e3550000 	cmp	r5, #0
c0003a20:	d8bd8038 	pople	{r3, r4, r5, pc}
c0003a24:	e3a04000 	mov	r4, #0
c0003a28:	e1a00004 	mov	r0, r4
c0003a2c:	e2844001 	add	r4, r4, #1
c0003a30:	eb000275 	bl	c000440c <_ZN6msgbox10msg_createEi>
c0003a34:	e1550004 	cmp	r5, r4
c0003a38:	1afffffa 	bne	c0003a28 <_ZN2Ec21sys_create_messageboxEv+0x20>
c0003a3c:	e8bd8038 	pop	{r3, r4, r5, pc}

c0003a40 <_ZN2Ec12ec_mbox_postEv>:
c0003a40:	e92d4010 	push	{r4, lr}
c0003a44:	e3064b88 	movw	r4, #27528	; 0x6b88
c0003a48:	e34c4000 	movt	r4, #49152	; 0xc000
c0003a4c:	e3063be4 	movw	r3, #27620	; 0x6be4
c0003a50:	e34c3000 	movt	r3, #49152	; 0xc000
c0003a54:	e5942000 	ldr	r2, [r4]
c0003a58:	e5920014 	ldr	r0, [r2, #20]
c0003a5c:	e5921018 	ldr	r1, [r2, #24]
c0003a60:	e7930100 	ldr	r0, [r3, r0, lsl #2]
c0003a64:	eb000279 	bl	c0004450 <_ZN6msgbox8msg_postEm>
c0003a68:	e5943000 	ldr	r3, [r4]
c0003a6c:	e3500000 	cmp	r0, #0
c0003a70:	05830010 	streq	r0, [r3, #16]
c0003a74:	13a02001 	movne	r2, #1
c0003a78:	15832010 	strne	r2, [r3, #16]
c0003a7c:	e8bd8010 	pop	{r4, pc}

c0003a80 <_ZN2Ec12ec_mbox_readEv>:
c0003a80:	e92d4010 	push	{r4, lr}
c0003a84:	e3064b88 	movw	r4, #27528	; 0x6b88
c0003a88:	e34c4000 	movt	r4, #49152	; 0xc000
c0003a8c:	e3063be4 	movw	r3, #27620	; 0x6be4
c0003a90:	e34c3000 	movt	r3, #49152	; 0xc000
c0003a94:	e5942000 	ldr	r2, [r4]
c0003a98:	e5920014 	ldr	r0, [r2, #20]
c0003a9c:	e5921018 	ldr	r1, [r2, #24]
c0003aa0:	e7930100 	ldr	r0, [r3, r0, lsl #2]
c0003aa4:	eb00029b 	bl	c0004518 <_ZN6msgbox8msg_readEPm>
c0003aa8:	e5943000 	ldr	r3, [r4]
c0003aac:	e3500000 	cmp	r0, #0
c0003ab0:	05830010 	streq	r0, [r3, #16]
c0003ab4:	13a02001 	movne	r2, #1
c0003ab8:	15832010 	strne	r2, [r3, #16]
c0003abc:	e8bd8010 	pop	{r4, pc}

c0003ac0 <syscall_handler>:
c0003ac0:	e3500000 	cmp	r0, #0
c0003ac4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
c0003ac8:	03063b88 	movweq	r3, #27528	; 0x6b88
c0003acc:	034c3000 	movteq	r3, #49152	; 0xc000
c0003ad0:	e24dd00c 	sub	sp, sp, #12
c0003ad4:	11a01000 	movne	r1, r0
c0003ad8:	05933000 	ldreq	r3, [r3]
c0003adc:	05931010 	ldreq	r1, [r3, #16]
c0003ae0:	e351001f 	cmp	r1, #31
c0003ae4:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
c0003ae8:	ea0000ef 	b	c0003eac <syscall_handler+0x3ec>
c0003aec:	c0003e8c 	andgt	r3, r0, ip, lsl #29
c0003af0:	c0003e78 	andgt	r3, r0, r8, ror lr
c0003af4:	c0003eac 	andgt	r3, r0, ip, lsr #29
c0003af8:	c0003e64 	andgt	r3, r0, r4, ror #28
c0003afc:	c0003e50 	andgt	r3, r0, r0, asr lr
c0003b00:	c0003e3c 	andgt	r3, r0, ip, lsr lr
c0003b04:	c0003e28 	andgt	r3, r0, r8, lsr #28
c0003b08:	c0003eac 	andgt	r3, r0, ip, lsr #29
c0003b0c:	c0003e14 	andgt	r3, r0, r4, lsl lr
c0003b10:	c0003df4 	strdgt	r3, [r0], -r4
c0003b14:	c0003dd4 	ldrdgt	r3, [r0], -r4
c0003b18:	c0003dc0 	andgt	r3, r0, r0, asr #27
c0003b1c:	c0003da0 	andgt	r3, r0, r0, lsr #27
c0003b20:	c0003d80 	andgt	r3, r0, r0, lsl #27
c0003b24:	c0003d60 	andgt	r3, r0, r0, ror #26
c0003b28:	c0003d40 	andgt	r3, r0, r0, asr #26
c0003b2c:	c0003d1c 	andgt	r3, r0, ip, lsl sp
c0003b30:	c0003cfc 	strdgt	r3, [r0], -ip
c0003b34:	c0003cd4 	ldrdgt	r3, [r0], -r4
c0003b38:	c0003ca8 	andgt	r3, r0, r8, lsr #25
c0003b3c:	c0003eac 	andgt	r3, r0, ip, lsr #29
c0003b40:	c0003eac 	andgt	r3, r0, ip, lsr #29
c0003b44:	c0003eac 	andgt	r3, r0, ip, lsr #29
c0003b48:	c0003c70 	andgt	r3, r0, r0, ror ip
c0003b4c:	c0003c3c 	andgt	r3, r0, ip, lsr ip
c0003b50:	c0003eac 	andgt	r3, r0, ip, lsr #29
c0003b54:	c0003c18 	andgt	r3, r0, r8, lsl ip
c0003b58:	c0003bf4 	strdgt	r3, [r0], -r4
c0003b5c:	c0003be0 	andgt	r3, r0, r0, ror #23
c0003b60:	c0003eac 	andgt	r3, r0, ip, lsr #29
c0003b64:	c0003bb4 			; <UNDEFINED> instruction: 0xc0003bb4
c0003b68:	c0003b6c 	andgt	r3, r0, ip, ror #22
c0003b6c:	e3064b88 	movw	r4, #27528	; 0x6b88
c0003b70:	e34c4000 	movt	r4, #49152	; 0xc000
c0003b74:	e5943000 	ldr	r3, [r4]
c0003b78:	e5933058 	ldr	r3, [r3, #88]	; 0x58
c0003b7c:	e5930008 	ldr	r0, [r3, #8]
c0003b80:	ebfffe85 	bl	c000359c <_ZN2Ec15ec_virq_handlerEi>
c0003b84:	e5943000 	ldr	r3, [r4]
c0003b88:	e3a01000 	mov	r1, #0
c0003b8c:	e5932058 	ldr	r2, [r3, #88]	; 0x58
c0003b90:	e5821008 	str	r1, [r2, #8]
c0003b94:	e2833010 	add	r3, r3, #16
c0003b98:	e58d3004 	str	r3, [sp, #4]
c0003b9c:	e59dd004 	ldr	sp, [sp, #4]
c0003ba0:	e8dd7fff 	ldm	sp, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, sp, lr}^
c0003ba4:	e28dd03c 	add	sp, sp, #60	; 0x3c
c0003ba8:	f8bd0a00 	rfeia	sp!
c0003bac:	e28dd00c 	add	sp, sp, #12
c0003bb0:	e8bd8000 	ldmfd	sp!, {pc}
c0003bb4:	e3064b88 	movw	r4, #27528	; 0x6b88
c0003bb8:	e34c4000 	movt	r4, #49152	; 0xc000
c0003bbc:	e3063b9c 	movw	r3, #27548	; 0x6b9c
c0003bc0:	e34c3000 	movt	r3, #49152	; 0xc000
c0003bc4:	e5942000 	ldr	r2, [r4]
c0003bc8:	e2820014 	add	r0, r2, #20
c0003bcc:	e8900007 	ldm	r0, {r0, r1, r2}
c0003bd0:	e7930100 	ldr	r0, [r3, r0, lsl #2]
c0003bd4:	ebfffe2f 	bl	c0003498 <_ZN2Ec16IVC_Channel_SendEii>
c0003bd8:	e5943000 	ldr	r3, [r4]
c0003bdc:	eaffffec 	b	c0003b94 <syscall_handler+0xd4>
c0003be0:	ebffff6d 	bl	c000399c <_ZN2Ec12RTOS_dequeueEv>
c0003be4:	e3063b88 	movw	r3, #27528	; 0x6b88
c0003be8:	e34c3000 	movt	r3, #49152	; 0xc000
c0003bec:	e5933000 	ldr	r3, [r3]
c0003bf0:	eaffffe7 	b	c0003b94 <syscall_handler+0xd4>
c0003bf4:	e30507e8 	movw	r0, #22504	; 0x57e8
c0003bf8:	e34c0000 	movt	r0, #49152	; 0xc000
c0003bfc:	eb000278 	bl	c00045e4 <print>
c0003c00:	e3a00001 	mov	r0, #1
c0003c04:	ebfffeec 	bl	c00037bc <_ZN2Ec19sys_create_guest_osEi>
c0003c08:	e3063b88 	movw	r3, #27528	; 0x6b88
c0003c0c:	e34c3000 	movt	r3, #49152	; 0xc000
c0003c10:	e5933000 	ldr	r3, [r3]
c0003c14:	eaffffde 	b	c0003b94 <syscall_handler+0xd4>
c0003c18:	e3064b88 	movw	r4, #27528	; 0x6b88
c0003c1c:	e34c4000 	movt	r4, #49152	; 0xc000
c0003c20:	e5945000 	ldr	r5, [r4]
c0003c24:	e5950054 	ldr	r0, [r5, #84]	; 0x54
c0003c28:	e5951014 	ldr	r1, [r5, #20]
c0003c2c:	eb00035e 	bl	c00049ac <_ZN6Ualloc9virt2physEmm>
c0003c30:	e5943000 	ldr	r3, [r4]
c0003c34:	e5850010 	str	r0, [r5, #16]
c0003c38:	eaffffd5 	b	c0003b94 <syscall_handler+0xd4>
c0003c3c:	e3064b88 	movw	r4, #27528	; 0x6b88
c0003c40:	e34c4000 	movt	r4, #49152	; 0xc000
c0003c44:	e3063b9c 	movw	r3, #27548	; 0x6b9c
c0003c48:	e34c3000 	movt	r3, #49152	; 0xc000
c0003c4c:	e5942000 	ldr	r2, [r4]
c0003c50:	e2820014 	add	r0, r2, #20
c0003c54:	e8900007 	ldm	r0, {r0, r1, r2}
c0003c58:	e7933100 	ldr	r3, [r3, r0, lsl #2]
c0003c5c:	e5930054 	ldr	r0, [r3, #84]	; 0x54
c0003c60:	e5933008 	ldr	r3, [r3, #8]
c0003c64:	eb00031c 	bl	c00048dc <_ZN4Ptab18set_page_attributeEmmii>
c0003c68:	e5943000 	ldr	r3, [r4]
c0003c6c:	eaffffc8 	b	c0003b94 <syscall_handler+0xd4>
c0003c70:	e3064b88 	movw	r4, #27528	; 0x6b88
c0003c74:	e34c4000 	movt	r4, #49152	; 0xc000
c0003c78:	e3060b9c 	movw	r0, #27548	; 0x6b9c
c0003c7c:	e34c0000 	movt	r0, #49152	; 0xc000
c0003c80:	e5942000 	ldr	r2, [r4]
c0003c84:	e3a03002 	mov	r3, #2
c0003c88:	e592c014 	ldr	ip, [r2, #20]
c0003c8c:	e5921018 	ldr	r1, [r2, #24]
c0003c90:	e592201c 	ldr	r2, [r2, #28]
c0003c94:	e790010c 	ldr	r0, [r0, ip, lsl #2]
c0003c98:	e5900054 	ldr	r0, [r0, #84]	; 0x54
c0003c9c:	eb0002db 	bl	c0004810 <_ZN4Ptab21insert_shadow_mappingEmmmi>
c0003ca0:	e5943000 	ldr	r3, [r4]
c0003ca4:	eaffffba 	b	c0003b94 <syscall_handler+0xd4>
c0003ca8:	e30507c0 	movw	r0, #22464	; 0x57c0
c0003cac:	e34c0000 	movt	r0, #49152	; 0xc000
c0003cb0:	eb00024b 	bl	c00045e4 <print>
c0003cb4:	e3063b88 	movw	r3, #27528	; 0x6b88
c0003cb8:	e34c3000 	movt	r3, #49152	; 0xc000
c0003cbc:	e3062b90 	movw	r2, #27536	; 0x6b90
c0003cc0:	e34c2000 	movt	r2, #49152	; 0xc000
c0003cc4:	e5933000 	ldr	r3, [r3]
c0003cc8:	e5931004 	ldr	r1, [r3, #4]
c0003ccc:	e5821000 	str	r1, [r2]
c0003cd0:	eaffffaf 	b	c0003b94 <syscall_handler+0xd4>
c0003cd4:	e3064b88 	movw	r4, #27528	; 0x6b88
c0003cd8:	e34c4000 	movt	r4, #49152	; 0xc000
c0003cdc:	e5940000 	ldr	r0, [r4]
c0003ce0:	e5903014 	ldr	r3, [r0, #20]
c0003ce4:	e3530000 	cmp	r3, #0
c0003ce8:	1580304c 	strne	r3, [r0, #76]	; 0x4c
c0003cec:	ebfffd7b 	bl	c00032e0 <_ZN2Ec7dequeueEv>
c0003cf0:	ebffff08 	bl	c0003918 <_ZN2Ec8scheduleEv>
c0003cf4:	e5943000 	ldr	r3, [r4]
c0003cf8:	eaffffa5 	b	c0003b94 <syscall_handler+0xd4>
c0003cfc:	e305079c 	movw	r0, #22428	; 0x579c
c0003d00:	e34c0000 	movt	r0, #49152	; 0xc000
c0003d04:	eb000236 	bl	c00045e4 <print>
c0003d08:	ebffff02 	bl	c0003918 <_ZN2Ec8scheduleEv>
c0003d0c:	e3063b88 	movw	r3, #27528	; 0x6b88
c0003d10:	e34c3000 	movt	r3, #49152	; 0xc000
c0003d14:	e5933000 	ldr	r3, [r3]
c0003d18:	eaffff9d 	b	c0003b94 <syscall_handler+0xd4>
c0003d1c:	e3050778 	movw	r0, #22392	; 0x5778
c0003d20:	e34c0000 	movt	r0, #49152	; 0xc000
c0003d24:	eb00022e 	bl	c00045e4 <print>
c0003d28:	e3a00000 	mov	r0, #0
c0003d2c:	ebfffea2 	bl	c00037bc <_ZN2Ec19sys_create_guest_osEi>
c0003d30:	e3063b88 	movw	r3, #27528	; 0x6b88
c0003d34:	e34c3000 	movt	r3, #49152	; 0xc000
c0003d38:	e5933000 	ldr	r3, [r3]
c0003d3c:	eaffff94 	b	c0003b94 <syscall_handler+0xd4>
c0003d40:	e3050750 	movw	r0, #22352	; 0x5750
c0003d44:	e34c0000 	movt	r0, #49152	; 0xc000
c0003d48:	eb000225 	bl	c00045e4 <print>
c0003d4c:	ebfffe6d 	bl	c0003708 <_ZN2Ec15sys_create_pdirEv>
c0003d50:	e3063b88 	movw	r3, #27528	; 0x6b88
c0003d54:	e34c3000 	movt	r3, #49152	; 0xc000
c0003d58:	e5933000 	ldr	r3, [r3]
c0003d5c:	eaffff8c 	b	c0003b94 <syscall_handler+0xd4>
c0003d60:	e3050730 	movw	r0, #22320	; 0x5730
c0003d64:	e34c0000 	movt	r0, #49152	; 0xc000
c0003d68:	eb00021d 	bl	c00045e4 <print>
c0003d6c:	ebffff43 	bl	c0003a80 <_ZN2Ec12ec_mbox_readEv>
c0003d70:	e3063b88 	movw	r3, #27528	; 0x6b88
c0003d74:	e34c3000 	movt	r3, #49152	; 0xc000
c0003d78:	e5933000 	ldr	r3, [r3]
c0003d7c:	eaffff84 	b	c0003b94 <syscall_handler+0xd4>
c0003d80:	e3050710 	movw	r0, #22288	; 0x5710
c0003d84:	e34c0000 	movt	r0, #49152	; 0xc000
c0003d88:	eb000215 	bl	c00045e4 <print>
c0003d8c:	ebffff2b 	bl	c0003a40 <_ZN2Ec12ec_mbox_postEv>
c0003d90:	e3063b88 	movw	r3, #27528	; 0x6b88
c0003d94:	e34c3000 	movt	r3, #49152	; 0xc000
c0003d98:	e5933000 	ldr	r3, [r3]
c0003d9c:	eaffff7c 	b	c0003b94 <syscall_handler+0xd4>
c0003da0:	e30506ec 	movw	r0, #22252	; 0x56ec
c0003da4:	e34c0000 	movt	r0, #49152	; 0xc000
c0003da8:	eb00020d 	bl	c00045e4 <print>
c0003dac:	ebffff15 	bl	c0003a08 <_ZN2Ec21sys_create_messageboxEv>
c0003db0:	e3063b88 	movw	r3, #27528	; 0x6b88
c0003db4:	e34c3000 	movt	r3, #49152	; 0xc000
c0003db8:	e5933000 	ldr	r3, [r3]
c0003dbc:	eaffff74 	b	c0003b94 <syscall_handler+0xd4>
c0003dc0:	ebfffdc2 	bl	c00034d0 <_ZN2Ec14ec_vtimer_ctrlEv>
c0003dc4:	e3063b88 	movw	r3, #27528	; 0x6b88
c0003dc8:	e34c3000 	movt	r3, #49152	; 0xc000
c0003dcc:	e5933000 	ldr	r3, [r3]
c0003dd0:	eaffff6f 	b	c0003b94 <syscall_handler+0xd4>
c0003dd4:	e30506d0 	movw	r0, #22224	; 0x56d0
c0003dd8:	e34c0000 	movt	r0, #49152	; 0xc000
c0003ddc:	eb000200 	bl	c00045e4 <print>
c0003de0:	ebfffe30 	bl	c00036a8 <_ZN2Ec18sys_insert_mappingEv>
c0003de4:	e3063b88 	movw	r3, #27528	; 0x6b88
c0003de8:	e34c3000 	movt	r3, #49152	; 0xc000
c0003dec:	e5933000 	ldr	r3, [r3]
c0003df0:	eaffff67 	b	c0003b94 <syscall_handler+0xd4>
c0003df4:	e30506b0 	movw	r0, #22192	; 0x56b0
c0003df8:	e34c0000 	movt	r0, #49152	; 0xc000
c0003dfc:	eb0001f8 	bl	c00045e4 <print>
c0003e00:	ebfffe23 	bl	c0003694 <_ZN2Ec9sys_remapEv>
c0003e04:	e3063b88 	movw	r3, #27528	; 0x6b88
c0003e08:	e34c3000 	movt	r3, #49152	; 0xc000
c0003e0c:	e5933000 	ldr	r3, [r3]
c0003e10:	eaffff5f 	b	c0003b94 <syscall_handler+0xd4>
c0003e14:	ebfffdc1 	bl	c0003520 <_ZN2Ec12ec_virq_ctrlEv>
c0003e18:	e3063b88 	movw	r3, #27528	; 0x6b88
c0003e1c:	e34c3000 	movt	r3, #49152	; 0xc000
c0003e20:	e5933000 	ldr	r3, [r3]
c0003e24:	eaffff5a 	b	c0003b94 <syscall_handler+0xd4>
c0003e28:	ebfff8b7 	bl	c000210c <Xil_ICacheEnable>
c0003e2c:	e3063b88 	movw	r3, #27528	; 0x6b88
c0003e30:	e34c3000 	movt	r3, #49152	; 0xc000
c0003e34:	e5933000 	ldr	r3, [r3]
c0003e38:	eaffff55 	b	c0003b94 <syscall_handler+0xd4>
c0003e3c:	ebfff8b9 	bl	c0002128 <Xil_DCacheEnable>
c0003e40:	e3063b88 	movw	r3, #27528	; 0x6b88
c0003e44:	e34c3000 	movt	r3, #49152	; 0xc000
c0003e48:	e5933000 	ldr	r3, [r3]
c0003e4c:	eaffff50 	b	c0003b94 <syscall_handler+0xd4>
c0003e50:	ebfff932 	bl	c0002320 <Xil_ICacheDisable>
c0003e54:	e3063b88 	movw	r3, #27528	; 0x6b88
c0003e58:	e34c3000 	movt	r3, #49152	; 0xc000
c0003e5c:	e5933000 	ldr	r3, [r3]
c0003e60:	eaffff4b 	b	c0003b94 <syscall_handler+0xd4>
c0003e64:	ebfff936 	bl	c0002344 <Xil_DCacheDisable>
c0003e68:	e3063b88 	movw	r3, #27528	; 0x6b88
c0003e6c:	e34c3000 	movt	r3, #49152	; 0xc000
c0003e70:	e5933000 	ldr	r3, [r3]
c0003e74:	eaffff46 	b	c0003b94 <syscall_handler+0xd4>
c0003e78:	ebfffea1 	bl	c0003904 <_ZN2Ec9sys_yieldEv>
c0003e7c:	e3063b88 	movw	r3, #27528	; 0x6b88
c0003e80:	e34c3000 	movt	r3, #49152	; 0xc000
c0003e84:	e5933000 	ldr	r3, [r3]
c0003e88:	eaffff41 	b	c0003b94 <syscall_handler+0xd4>
c0003e8c:	e3050694 	movw	r0, #22164	; 0x5694
c0003e90:	e34c0000 	movt	r0, #49152	; 0xc000
c0003e94:	eb0001d2 	bl	c00045e4 <print>
c0003e98:	ebfffd62 	bl	c0003428 <_ZN2Ec13sys_create_ecEv>
c0003e9c:	e3063b88 	movw	r3, #27528	; 0x6b88
c0003ea0:	e34c3000 	movt	r3, #49152	; 0xc000
c0003ea4:	e5933000 	ldr	r3, [r3]
c0003ea8:	eaffff39 	b	c0003b94 <syscall_handler+0xd4>
c0003eac:	e305080c 	movw	r0, #22540	; 0x580c
c0003eb0:	e34c0000 	movt	r0, #49152	; 0xc000
c0003eb4:	ebfffa9f 	bl	c0002938 <xil_printf>
c0003eb8:	e3a00001 	mov	r0, #1
c0003ebc:	ebfffbe0 	bl	c0002e44 <_exit>

c0003ec0 <und_handler_vfp>:
c0003ec0:	e3064b88 	movw	r4, #27528	; 0x6b88
c0003ec4:	e34c4000 	movt	r4, #49152	; 0xc000
c0003ec8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
c0003ecc:	e24dd00c 	sub	sp, sp, #12
c0003ed0:	e5943000 	ldr	r3, [r4]
c0003ed4:	e593304c 	ldr	r3, [r3, #76]	; 0x4c
c0003ed8:	e5930000 	ldr	r0, [r3]
c0003edc:	ebfffbd9 	bl	c0002e48 <_Z11inst_decodem>
c0003ee0:	e3500000 	cmp	r0, #0
c0003ee4:	1a00001f 	bne	c0003f68 <und_handler_vfp+0xa8>
c0003ee8:	e3a03101 	mov	r3, #1073741824	; 0x40000000
c0003eec:	eee83a10 	vmsr	fpexc, r3
c0003ef0:	e5943000 	ldr	r3, [r4]
c0003ef4:	e3065b88 	movw	r5, #27528	; 0x6b88
c0003ef8:	e34c5000 	movt	r5, #49152	; 0xc000
c0003efc:	e5932114 	ldr	r2, [r3, #276]	; 0x114
c0003f00:	e3520000 	cmp	r2, #0
c0003f04:	0a000020 	beq	c0003f8c <und_handler_vfp+0xcc>
c0003f08:	e3065bf4 	movw	r5, #27636	; 0x6bf4
c0003f0c:	e34c5000 	movt	r5, #49152	; 0xc000
c0003f10:	e5950000 	ldr	r0, [r5]
c0003f14:	e3500000 	cmp	r0, #0
c0003f18:	0a000005 	beq	c0003f34 <und_handler_vfp+0x74>
c0003f1c:	e5902104 	ldr	r2, [r0, #260]	; 0x104
c0003f20:	e5933004 	ldr	r3, [r3, #4]
c0003f24:	e1520003 	cmp	r2, r3
c0003f28:	0a000003 	beq	c0003f3c <und_handler_vfp+0x7c>
c0003f2c:	eb0002e0 	bl	c0004ab4 <_ZN3Fpc8fpc_saveEv>
c0003f30:	e5943000 	ldr	r3, [r4]
c0003f34:	e5930114 	ldr	r0, [r3, #276]	; 0x114
c0003f38:	eb0002e9 	bl	c0004ae4 <_ZN3Fpc11fpc_restoreEv>
c0003f3c:	e5943000 	ldr	r3, [r4]
c0003f40:	e2832010 	add	r2, r3, #16
c0003f44:	e58d2004 	str	r2, [sp, #4]
c0003f48:	e5933114 	ldr	r3, [r3, #276]	; 0x114
c0003f4c:	e5853000 	str	r3, [r5]
c0003f50:	e59dd004 	ldr	sp, [sp, #4]
c0003f54:	e8dd7fff 	ldm	sp, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, sp, lr}^
c0003f58:	e28dd03c 	add	sp, sp, #60	; 0x3c
c0003f5c:	f8bd0a00 	rfeia	sp!
c0003f60:	e28dd00c 	add	sp, sp, #12
c0003f64:	e8bd8000 	ldmfd	sp!, {pc}
c0003f68:	e5943000 	ldr	r3, [r4]
c0003f6c:	e3050824 	movw	r0, #22564	; 0x5824
c0003f70:	e34c0000 	movt	r0, #49152	; 0xc000
c0003f74:	e593104c 	ldr	r1, [r3, #76]	; 0x4c
c0003f78:	ebfffa6e 	bl	c0002938 <xil_printf>
c0003f7c:	e3050830 	movw	r0, #22576	; 0x5830
c0003f80:	e34c0000 	movt	r0, #49152	; 0xc000
c0003f84:	eb0001a0 	bl	c000460c <_Z5panicPKc>
c0003f88:	eaffffd6 	b	c0003ee8 <und_handler_vfp+0x28>
c0003f8c:	e3a01f42 	mov	r1, #264	; 0x108
c0003f90:	e3060bdc 	movw	r0, #27612	; 0x6bdc
c0003f94:	e34c0000 	movt	r0, #49152	; 0xc000
c0003f98:	eb0000bd 	bl	c0004294 <_ZN6Kalloc5allocEj>
c0003f9c:	e5953000 	ldr	r3, [r5]
c0003fa0:	e5931004 	ldr	r1, [r3, #4]
c0003fa4:	e1a06000 	mov	r6, r0
c0003fa8:	eb0002bd 	bl	c0004aa4 <_ZN3FpcC1Em>
c0003fac:	e5953000 	ldr	r3, [r5]
c0003fb0:	e5836114 	str	r6, [r3, #276]	; 0x114
c0003fb4:	eaffffd3 	b	c0003f08 <und_handler_vfp+0x48>

c0003fb8 <abort_handler>:
c0003fb8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
c0003fbc:	e24dd00c 	sub	sp, sp, #12
c0003fc0:	ee165f10 	mrc	15, 0, r5, cr6, cr0, {0}
c0003fc4:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
c0003fc8:	e3064b88 	movw	r4, #27528	; 0x6b88
c0003fcc:	e34c4000 	movt	r4, #49152	; 0xc000
c0003fd0:	e2033b02 	and	r3, r3, #2048	; 0x800
c0003fd4:	e305084c 	movw	r0, #22604	; 0x584c
c0003fd8:	e5941000 	ldr	r1, [r4]
c0003fdc:	e1a02005 	mov	r2, r5
c0003fe0:	e34c0000 	movt	r0, #49152	; 0xc000
c0003fe4:	e591104c 	ldr	r1, [r1, #76]	; 0x4c
c0003fe8:	ebfffa52 	bl	c0002938 <xil_printf>
c0003fec:	e285320f 	add	r3, r5, #-268435456	; 0xf0000000
c0003ff0:	e3530401 	cmp	r3, #16777216	; 0x1000000
c0003ff4:	2a000015 	bcs	c0004050 <abort_handler+0x98>
c0003ff8:	e3062b90 	movw	r2, #27536	; 0x6b90
c0003ffc:	e34c2000 	movt	r2, #49152	; 0xc000
c0004000:	e5941000 	ldr	r1, [r4]
c0004004:	e3063b9c 	movw	r3, #27548	; 0x6b9c
c0004008:	e5922000 	ldr	r2, [r2]
c000400c:	e34c3000 	movt	r3, #49152	; 0xc000
c0004010:	e591c004 	ldr	ip, [r1, #4]
c0004014:	e7933102 	ldr	r3, [r3, r2, lsl #2]
c0004018:	e5912000 	ldr	r2, [r1]
c000401c:	e1a00003 	mov	r0, r3
c0004020:	e583c010 	str	ip, [r3, #16]
c0004024:	e5835014 	str	r5, [r3, #20]
c0004028:	e5832018 	str	r2, [r3, #24]
c000402c:	ebfffce2 	bl	c00033bc <_ZN2Ec7requeueEv>
c0004030:	ebfffe38 	bl	c0003918 <_ZN2Ec8scheduleEv>
c0004034:	e5943000 	ldr	r3, [r4]
c0004038:	e2833010 	add	r3, r3, #16
c000403c:	e58d3004 	str	r3, [sp, #4]
c0004040:	e59dd004 	ldr	sp, [sp, #4]
c0004044:	e8dd7fff 	ldm	sp, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, sp, lr}^
c0004048:	e28dd03c 	add	sp, sp, #60	; 0x3c
c000404c:	f8bd0a00 	rfeia	sp!
c0004050:	e3050870 	movw	r0, #22640	; 0x5870
c0004054:	e34c0000 	movt	r0, #49152	; 0xc000
c0004058:	eb000161 	bl	c00045e4 <print>
c000405c:	eafffffe 	b	c000405c <abort_handler+0xa4>

c0004060 <abort>:
c0004060:	e92d4008 	push	{r3, lr}
c0004064:	e3a00001 	mov	r0, #1
c0004068:	ebfffb75 	bl	c0002e44 <_exit>

c000406c <prefetch>:
c000406c:	e92d4008 	push	{r3, lr}
c0004070:	e305087c 	movw	r0, #22652	; 0x587c
c0004074:	e34c0000 	movt	r0, #49152	; 0xc000
c0004078:	eb000159 	bl	c00045e4 <print>
c000407c:	e3a00001 	mov	r0, #1
c0004080:	ebfffb6f 	bl	c0002e44 <_exit>

c0004084 <init>:
c0004084:	e92d4030 	push	{r4, r5, lr}
c0004088:	e24dd00c 	sub	sp, sp, #12
c000408c:	e10f3000 	mrs	r3, CPSR
c0004090:	e3833080 	orr	r3, r3, #128	; 0x80
c0004094:	e129f003 	msr	CPSR_fc, r3
c0004098:	e3064114 	movw	r4, #24852	; 0x6114
c000409c:	e306510c 	movw	r5, #24844	; 0x610c
c00040a0:	e34c4000 	movt	r4, #49152	; 0xc000
c00040a4:	e34c5000 	movt	r5, #49152	; 0xc000
c00040a8:	e1540005 	cmp	r4, r5
c00040ac:	0a000003 	beq	c00040c0 <init+0x3c>
c00040b0:	e5343004 	ldr	r3, [r4, #-4]!
c00040b4:	e12fff33 	blx	r3
c00040b8:	e1540005 	cmp	r4, r5
c00040bc:	1afffffb 	bne	c00040b0 <init+0x2c>
c00040c0:	e3062100 	movw	r2, #24832	; 0x6100
c00040c4:	e34c2000 	movt	r2, #49152	; 0xc000
c00040c8:	e30538c0 	movw	r3, #22720	; 0x58c0
c00040cc:	e3050894 	movw	r0, #22676	; 0x5894
c00040d0:	e5921000 	ldr	r1, [r2]
c00040d4:	e34c3000 	movt	r3, #49152	; 0xc000
c00040d8:	e34c0000 	movt	r0, #49152	; 0xc000
c00040dc:	e58d3000 	str	r3, [sp]
c00040e0:	e30528a8 	movw	r2, #22696	; 0x58a8
c00040e4:	e30538b4 	movw	r3, #22708	; 0x58b4
c00040e8:	e34c2000 	movt	r2, #49152	; 0xc000
c00040ec:	e34c3000 	movt	r3, #49152	; 0xc000
c00040f0:	ebfffa10 	bl	c0002938 <xil_printf>
c00040f4:	e3a01002 	mov	r1, #2
c00040f8:	e1a02001 	mov	r2, r1
c00040fc:	e3060bdc 	movw	r0, #27612	; 0x6bdc
c0004100:	e34c0000 	movt	r0, #49152	; 0xc000
c0004104:	eb000071 	bl	c00042d0 <_ZN6Kalloc10alloc_pageEjNS_4FillE>
c0004108:	eb000090 	bl	c0004350 <_ZN6Kalloc9virt2physEPv>
c000410c:	e3a01001 	mov	r1, #1
c0004110:	e3a02000 	mov	r2, #0
c0004114:	e1a04000 	mov	r4, r0
c0004118:	e3060bdc 	movw	r0, #27612	; 0x6bdc
c000411c:	e34c0000 	movt	r0, #49152	; 0xc000
c0004120:	eb00006a 	bl	c00042d0 <_ZN6Kalloc10alloc_pageEjNS_4FillE>
c0004124:	eb000089 	bl	c0004350 <_ZN6Kalloc9virt2physEPv>
c0004128:	e3a02001 	mov	r2, #1
c000412c:	e1a01000 	mov	r1, r0
c0004130:	e3a00a0f 	mov	r0, #61440	; 0xf000
c0004134:	e34c0fff 	movt	r0, #53247	; 0xcfff
c0004138:	eb000137 	bl	c000461c <_ZN4Ptab14insert_mappingEmmm>
c000413c:	e3a01001 	mov	r1, #1
c0004140:	e3a02000 	mov	r2, #0
c0004144:	e3060bdc 	movw	r0, #27612	; 0x6bdc
c0004148:	e34c0000 	movt	r0, #49152	; 0xc000
c000414c:	eb00005f 	bl	c00042d0 <_ZN6Kalloc10alloc_pageEjNS_4FillE>
c0004150:	eb00007e 	bl	c0004350 <_ZN6Kalloc9virt2physEPv>
c0004154:	e3a02001 	mov	r2, #1
c0004158:	e1a01000 	mov	r1, r0
c000415c:	e3a00a0e 	mov	r0, #57344	; 0xe000
c0004160:	e34c0fff 	movt	r0, #53247	; 0xcfff
c0004164:	eb00012c 	bl	c000461c <_ZN4Ptab14insert_mappingEmmm>
c0004168:	e3a01001 	mov	r1, #1
c000416c:	e3a02000 	mov	r2, #0
c0004170:	e3060bdc 	movw	r0, #27612	; 0x6bdc
c0004174:	e34c0000 	movt	r0, #49152	; 0xc000
c0004178:	eb000054 	bl	c00042d0 <_ZN6Kalloc10alloc_pageEjNS_4FillE>
c000417c:	eb000073 	bl	c0004350 <_ZN6Kalloc9virt2physEPv>
c0004180:	e3a02001 	mov	r2, #1
c0004184:	e1a01000 	mov	r1, r0
c0004188:	e3a00a0d 	mov	r0, #53248	; 0xd000
c000418c:	e34c0fff 	movt	r0, #53247	; 0xcfff
c0004190:	eb000121 	bl	c000461c <_ZN4Ptab14insert_mappingEmmm>
c0004194:	e3a01001 	mov	r1, #1
c0004198:	e3a02000 	mov	r2, #0
c000419c:	e3060bdc 	movw	r0, #27612	; 0x6bdc
c00041a0:	e34c0000 	movt	r0, #49152	; 0xc000
c00041a4:	eb000049 	bl	c00042d0 <_ZN6Kalloc10alloc_pageEjNS_4FillE>
c00041a8:	eb000068 	bl	c0004350 <_ZN6Kalloc9virt2physEPv>
c00041ac:	e3a02001 	mov	r2, #1
c00041b0:	e1a01000 	mov	r1, r0
c00041b4:	e3a00903 	mov	r0, #49152	; 0xc000
c00041b8:	e34c0fff 	movt	r0, #53247	; 0xcfff
c00041bc:	eb000116 	bl	c000461c <_ZN4Ptab14insert_mappingEmmm>
c00041c0:	e1a01004 	mov	r1, r4
c00041c4:	e3a0020d 	mov	r0, #-805306368	; 0xd0000000
c00041c8:	e3a02001 	mov	r2, #1
c00041cc:	eb000112 	bl	c000461c <_ZN4Ptab14insert_mappingEmmm>
c00041d0:	e2841a01 	add	r1, r4, #4096	; 0x1000
c00041d4:	e3a02001 	mov	r2, #1
c00041d8:	e3a00a01 	mov	r0, #4096	; 0x1000
c00041dc:	e34d0000 	movt	r0, #53248	; 0xd000
c00041e0:	eb00010d 	bl	c000461c <_ZN4Ptab14insert_mappingEmmm>
c00041e4:	eb000210 	bl	c0004a2c <_ZN3Vec8vec_initEv>
c00041e8:	e28dd00c 	add	sp, sp, #12
c00041ec:	e8bd4030 	pop	{r4, r5, lr}
c00041f0:	ea000352 	b	c0004f40 <_Z8irq_initv>

c00041f4 <bootstrap>:
c00041f4:	e92d4008 	push	{r3, lr}
c00041f8:	e1a05000 	mov	r5, r0
c00041fc:	e3080000 	movw	r0, #32768	; 0x8000
c0004200:	e3400040 	movt	r0, #64	; 0x40
c0004204:	eb00004d 	bl	c0004340 <_ZN6Kalloc9phys2virtEm>
c0004208:	e302c000 	movw	ip, #8192	; 0x2000
c000420c:	e340c020 	movt	ip, #32
c0004210:	e3a03000 	mov	r3, #0
c0004214:	e1a0e003 	mov	lr, r3
c0004218:	e1a0ca2c 	lsr	ip, ip, #20
c000421c:	e2400004 	sub	r0, r0, #4
c0004220:	e2833001 	add	r3, r3, #1
c0004224:	e5a0e004 	str	lr, [r0, #4]!
c0004228:	e15c0003 	cmp	ip, r3
c000422c:	2afffffb 	bcs	c0004220 <bootstrap+0x2c>
c0004230:	ebfff847 	bl	c0002354 <Xil_DCacheFlush>
c0004234:	ebfff7bf 	bl	c0002138 <Xil_ICacheInvalidate>
c0004238:	f57ff04f 	dsb	sy
c000423c:	e3a03000 	mov	r3, #0
c0004240:	ee083f13 	mcr	15, 0, r3, cr8, cr3, {0}
c0004244:	f57ff04f 	dsb	sy
c0004248:	f57ff06f 	isb	sy
c000424c:	e30508cc 	movw	r0, #22732	; 0x58cc
c0004250:	e34c0000 	movt	r0, #49152	; 0xc000
c0004254:	eb0000e2 	bl	c00045e4 <print>
c0004258:	e3a01e12 	mov	r1, #288	; 0x120
c000425c:	e3060bdc 	movw	r0, #27612	; 0x6bdc
c0004260:	e34c0000 	movt	r0, #49152	; 0xc000
c0004264:	eb00000a 	bl	c0004294 <_ZN6Kalloc5allocEj>
c0004268:	e1a02005 	mov	r2, r5
c000426c:	e3031024 	movw	r1, #12324	; 0x3024
c0004270:	e34c1000 	movt	r1, #49152	; 0xc000
c0004274:	e1a04000 	mov	r4, r0
c0004278:	ebfffbf4 	bl	c0003250 <_ZN2EcC1EPFvvEm>
c000427c:	e3063b88 	movw	r3, #27528	; 0x6b88
c0004280:	e34c3000 	movt	r3, #49152	; 0xc000
c0004284:	e5834000 	str	r4, [r3]
c0004288:	e3a0320d 	mov	r3, #-805306368	; 0xd0000000
c000428c:	e1a0d003 	mov	sp, r3
c0004290:	e594f00c 	ldr	pc, [r4, #12]

c0004294 <_ZN6Kalloc5allocEj>:
c0004294:	e92d4038 	push	{r3, r4, r5, lr}
c0004298:	e1a04000 	mov	r4, r0
c000429c:	e5900004 	ldr	r0, [r0, #4]
c00042a0:	e1a05001 	mov	r5, r1
c00042a4:	e5943000 	ldr	r3, [r4]
c00042a8:	e0610000 	rsb	r0, r1, r0
c00042ac:	e1500003 	cmp	r0, r3
c00042b0:	2a000004 	bcs	c00042c8 <_ZN6Kalloc5allocEj+0x34>
c00042b4:	e3050914 	movw	r0, #22804	; 0x5914
c00042b8:	e34c0000 	movt	r0, #49152	; 0xc000
c00042bc:	eb0000d2 	bl	c000460c <_Z5panicPKc>
c00042c0:	e5940004 	ldr	r0, [r4, #4]
c00042c4:	e0650000 	rsb	r0, r5, r0
c00042c8:	e5840004 	str	r0, [r4, #4]
c00042cc:	e8bd8038 	pop	{r3, r4, r5, pc}

c00042d0 <_ZN6Kalloc10alloc_pageEjNS_4FillE>:
c00042d0:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
c00042d4:	e1a06601 	lsl	r6, r1, #12
c00042d8:	e5905000 	ldr	r5, [r0]
c00042dc:	e1a07002 	mov	r7, r2
c00042e0:	e5902004 	ldr	r2, [r0, #4]
c00042e4:	e1a04000 	mov	r4, r0
c00042e8:	e0863005 	add	r3, r6, r5
c00042ec:	e1530002 	cmp	r3, r2
c00042f0:	8a00000c 	bhi	c0004328 <_ZN6Kalloc10alloc_pageEjNS_4FillE+0x58>
c00042f4:	e3570000 	cmp	r7, #0
c00042f8:	e5843000 	str	r3, [r4]
c00042fc:	0a000007 	beq	c0004320 <_ZN6Kalloc10alloc_pageEjNS_4FillE+0x50>
c0004300:	e3560000 	cmp	r6, #0
c0004304:	0a000005 	beq	c0004320 <_ZN6Kalloc10alloc_pageEjNS_4FillE+0x50>
c0004308:	e3570001 	cmp	r7, #1
c000430c:	e1a00005 	mov	r0, r5
c0004310:	e1a02006 	mov	r2, r6
c0004314:	13e01000 	mvnne	r1, #0
c0004318:	03a01000 	moveq	r1, #0
c000431c:	ebfff249 	bl	c0000c48 <memset>
c0004320:	e1a00005 	mov	r0, r5
c0004324:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
c0004328:	e3050914 	movw	r0, #22804	; 0x5914
c000432c:	e34c0000 	movt	r0, #49152	; 0xc000
c0004330:	eb0000b5 	bl	c000460c <_Z5panicPKc>
c0004334:	e5943000 	ldr	r3, [r4]
c0004338:	e0863003 	add	r3, r6, r3
c000433c:	eaffffec 	b	c00042f4 <_ZN6Kalloc10alloc_pageEjNS_4FillE+0x24>

c0004340 <_ZN6Kalloc9phys2virtEm>:
c0004340:	e3003000 	movw	r3, #0
c0004344:	e34b3fc0 	movt	r3, #49088	; 0xbfc0
c0004348:	e0830000 	add	r0, r3, r0
c000434c:	e12fff1e 	bx	lr

c0004350 <_ZN6Kalloc9virt2physEPv>:
c0004350:	e3003000 	movw	r3, #0
c0004354:	e34b3fc0 	movt	r3, #49088	; 0xbfc0
c0004358:	e0630000 	rsb	r0, r3, r0
c000435c:	e12fff1e 	bx	lr

c0004360 <_ZN6Kalloc17alloc_shadow_pdirEv>:
c0004360:	e5902000 	ldr	r2, [r0]
c0004364:	e92d4038 	push	{r3, r4, r5, lr}
c0004368:	e1a04000 	mov	r4, r0
c000436c:	e1a03902 	lsl	r3, r2, #18
c0004370:	e1a03923 	lsr	r3, r3, #18
c0004374:	e3530000 	cmp	r3, #0
c0004378:	0a000008 	beq	c00043a0 <_ZN6Kalloc17alloc_shadow_pdirEv+0x40>
c000437c:	e2822a01 	add	r2, r2, #4096	; 0x1000
c0004380:	ea000000 	b	c0004388 <_ZN6Kalloc17alloc_shadow_pdirEv+0x28>
c0004384:	e1a02001 	mov	r2, r1
c0004388:	e1a03902 	lsl	r3, r2, #18
c000438c:	e2821a01 	add	r1, r2, #4096	; 0x1000
c0004390:	e1a03923 	lsr	r3, r3, #18
c0004394:	e3530000 	cmp	r3, #0
c0004398:	1afffff9 	bne	c0004384 <_ZN6Kalloc17alloc_shadow_pdirEv+0x24>
c000439c:	e5842000 	str	r2, [r4]
c00043a0:	e5943004 	ldr	r3, [r4, #4]
c00043a4:	e2822901 	add	r2, r2, #16384	; 0x4000
c00043a8:	e1520003 	cmp	r2, r3
c00043ac:	9a000002 	bls	c00043bc <_ZN6Kalloc17alloc_shadow_pdirEv+0x5c>
c00043b0:	e305093c 	movw	r0, #22844	; 0x593c
c00043b4:	e34c0000 	movt	r0, #49152	; 0xc000
c00043b8:	eb000093 	bl	c000460c <_Z5panicPKc>
c00043bc:	e5945000 	ldr	r5, [r4]
c00043c0:	e305096c 	movw	r0, #22892	; 0x596c
c00043c4:	e34c0000 	movt	r0, #49152	; 0xc000
c00043c8:	e2851901 	add	r1, r5, #16384	; 0x4000
c00043cc:	e5841000 	str	r1, [r4]
c00043d0:	ebfff958 	bl	c0002938 <xil_printf>
c00043d4:	e3000000 	movw	r0, #0
c00043d8:	e34b0fc0 	movt	r0, #49088	; 0xbfc0
c00043dc:	e0600005 	rsb	r0, r0, r5
c00043e0:	e8bd8038 	pop	{r3, r4, r5, pc}

c00043e4 <_GLOBAL__sub_I__ZN6Kalloc9allocatorE>:
c00043e4:	e3063bdc 	movw	r3, #27612	; 0x6bdc
c00043e8:	e34c3000 	movt	r3, #49152	; 0xc000
c00043ec:	e30c1000 	movw	r1, #49152	; 0xc000
c00043f0:	e3002000 	movw	r2, #0
c00043f4:	e34c1000 	movt	r1, #49152	; 0xc000
c00043f8:	e34c2140 	movt	r2, #49472	; 0xc140
c00043fc:	e8830006 	stm	r3, {r1, r2}
c0004400:	e12fff1e 	bx	lr

c0004404 <_ZN6msgboxC1Ei>:
c0004404:	e5801000 	str	r1, [r0]
c0004408:	e12fff1e 	bx	lr

c000440c <_ZN6msgbox10msg_createEi>:
c000440c:	e92d4010 	push	{r4, lr}
c0004410:	e3a01034 	mov	r1, #52	; 0x34
c0004414:	e1a04000 	mov	r4, r0
c0004418:	e3060bdc 	movw	r0, #27612	; 0x6bdc
c000441c:	e34c0000 	movt	r0, #49152	; 0xc000
c0004420:	ebffff9b 	bl	c0004294 <_ZN6Kalloc5allocEj>
c0004424:	e3063be4 	movw	r3, #27620	; 0x6be4
c0004428:	e34c3000 	movt	r3, #49152	; 0xc000
c000442c:	e1a01004 	mov	r1, r4
c0004430:	e1a0c000 	mov	ip, r0
c0004434:	e5804000 	str	r4, [r0]
c0004438:	e1a0200c 	mov	r2, ip
c000443c:	e30509a0 	movw	r0, #22944	; 0x59a0
c0004440:	e783c104 	str	ip, [r3, r4, lsl #2]
c0004444:	e34c0000 	movt	r0, #49152	; 0xc000
c0004448:	e8bd4010 	pop	{r4, lr}
c000444c:	eafff939 	b	c0002938 <xil_printf>

c0004450 <_ZN6msgbox8msg_postEm>:
c0004450:	e1a03000 	mov	r3, r0
c0004454:	e5900004 	ldr	r0, [r0, #4]
c0004458:	e92d4010 	push	{r4, lr}
c000445c:	e3500001 	cmp	r0, #1
c0004460:	0a00001a 	beq	c00044d0 <_ZN6msgbox8msg_postEm+0x80>
c0004464:	e3500002 	cmp	r0, #2
c0004468:	0a000013 	beq	c00044bc <_ZN6msgbox8msg_postEm+0x6c>
c000446c:	e3500000 	cmp	r0, #0
c0004470:	1a00000c 	bne	c00044a8 <_ZN6msgbox8msg_postEm+0x58>
c0004474:	e593202c 	ldr	r2, [r3, #44]	; 0x2c
c0004478:	e593c028 	ldr	ip, [r3, #40]	; 0x28
c000447c:	e2824002 	add	r4, r2, #2
c0004480:	e3520007 	cmp	r2, #7
c0004484:	12822001 	addne	r2, r2, #1
c0004488:	e28cc001 	add	ip, ip, #1
c000448c:	03a02000 	moveq	r2, #0
c0004490:	e7831104 	str	r1, [r3, r4, lsl #2]
c0004494:	e583202c 	str	r2, [r3, #44]	; 0x2c
c0004498:	e3a02001 	mov	r2, #1
c000449c:	e583c028 	str	ip, [r3, #40]	; 0x28
c00044a0:	e5832004 	str	r2, [r3, #4]
c00044a4:	e8bd8010 	pop	{r4, pc}
c00044a8:	e30509f4 	movw	r0, #23028	; 0x59f4
c00044ac:	e34c0000 	movt	r0, #49152	; 0xc000
c00044b0:	eb00004b 	bl	c00045e4 <print>
c00044b4:	e3a00003 	mov	r0, #3
c00044b8:	e8bd8010 	pop	{r4, pc}
c00044bc:	e30509cc 	movw	r0, #22988	; 0x59cc
c00044c0:	e34c0000 	movt	r0, #49152	; 0xc000
c00044c4:	eb000046 	bl	c00045e4 <print>
c00044c8:	e3a00001 	mov	r0, #1
c00044cc:	e8bd8010 	pop	{r4, pc}
c00044d0:	e593202c 	ldr	r2, [r3, #44]	; 0x2c
c00044d4:	e2820001 	add	r0, r2, #1
c00044d8:	e2822002 	add	r2, r2, #2
c00044dc:	e3500008 	cmp	r0, #8
c00044e0:	1583002c 	strne	r0, [r3, #44]	; 0x2c
c00044e4:	e7831102 	str	r1, [r3, r2, lsl #2]
c00044e8:	e3a00000 	mov	r0, #0
c00044ec:	03a02000 	moveq	r2, #0
c00044f0:	0583202c 	streq	r2, [r3, #44]	; 0x2c
c00044f4:	e5932028 	ldr	r2, [r3, #40]	; 0x28
c00044f8:	e2822001 	add	r2, r2, #1
c00044fc:	e5832028 	str	r2, [r3, #40]	; 0x28
c0004500:	e3520008 	cmp	r2, #8
c0004504:	0a000000 	beq	c000450c <_ZN6msgbox8msg_postEm+0xbc>
c0004508:	e8bd8010 	pop	{r4, pc}
c000450c:	e3a02002 	mov	r2, #2
c0004510:	e5832004 	str	r2, [r3, #4]
c0004514:	e8bd8010 	pop	{r4, pc}

c0004518 <_ZN6msgbox8msg_readEPm>:
c0004518:	e5902004 	ldr	r2, [r0, #4]
c000451c:	e92d4008 	push	{r3, lr}
c0004520:	e3520001 	cmp	r2, #1
c0004524:	e1a03000 	mov	r3, r0
c0004528:	0a00001c 	beq	c00045a0 <_ZN6msgbox8msg_readEPm+0x88>
c000452c:	e3520002 	cmp	r2, #2
c0004530:	0a00000b 	beq	c0004564 <_ZN6msgbox8msg_readEPm+0x4c>
c0004534:	e3520000 	cmp	r2, #0
c0004538:	1a000004 	bne	c0004550 <_ZN6msgbox8msg_readEPm+0x38>
c000453c:	e3050a24 	movw	r0, #23076	; 0x5a24
c0004540:	e34c0000 	movt	r0, #49152	; 0xc000
c0004544:	eb000026 	bl	c00045e4 <print>
c0004548:	e3a00002 	mov	r0, #2
c000454c:	e8bd8008 	pop	{r3, pc}
c0004550:	e3050a4c 	movw	r0, #23116	; 0x5a4c
c0004554:	e34c0000 	movt	r0, #49152	; 0xc000
c0004558:	eb000021 	bl	c00045e4 <print>
c000455c:	e3a00003 	mov	r0, #3
c0004560:	e8bd8008 	pop	{r3, pc}
c0004564:	e5902030 	ldr	r2, [r0, #48]	; 0x30
c0004568:	e2820002 	add	r0, r2, #2
c000456c:	e2822001 	add	r2, r2, #1
c0004570:	e3520008 	cmp	r2, #8
c0004574:	e7930100 	ldr	r0, [r3, r0, lsl #2]
c0004578:	03a02000 	moveq	r2, #0
c000457c:	e5810000 	str	r0, [r1]
c0004580:	e3a01001 	mov	r1, #1
c0004584:	e5832030 	str	r2, [r3, #48]	; 0x30
c0004588:	e3a00000 	mov	r0, #0
c000458c:	e5932028 	ldr	r2, [r3, #40]	; 0x28
c0004590:	e5831004 	str	r1, [r3, #4]
c0004594:	e2422001 	sub	r2, r2, #1
c0004598:	e5832028 	str	r2, [r3, #40]	; 0x28
c000459c:	e8bd8008 	pop	{r3, pc}
c00045a0:	e5902030 	ldr	r2, [r0, #48]	; 0x30
c00045a4:	e2820002 	add	r0, r2, #2
c00045a8:	e2822001 	add	r2, r2, #1
c00045ac:	e3520008 	cmp	r2, #8
c00045b0:	e7930100 	ldr	r0, [r3, r0, lsl #2]
c00045b4:	03a02000 	moveq	r2, #0
c00045b8:	e5810000 	str	r0, [r1]
c00045bc:	e5930028 	ldr	r0, [r3, #40]	; 0x28
c00045c0:	e5832030 	str	r2, [r3, #48]	; 0x30
c00045c4:	e2400001 	sub	r0, r0, #1
c00045c8:	e5830028 	str	r0, [r3, #40]	; 0x28
c00045cc:	e3500000 	cmp	r0, #0
c00045d0:	1a000001 	bne	c00045dc <_ZN6msgbox8msg_readEPm+0xc4>
c00045d4:	e5830004 	str	r0, [r3, #4]
c00045d8:	e8bd8008 	pop	{r3, pc}
c00045dc:	e3a00000 	mov	r0, #0
c00045e0:	e8bd8008 	pop	{r3, pc}

c00045e4 <print>:
c00045e4:	e92d4010 	push	{r4, lr}
c00045e8:	e1a04000 	mov	r4, r0
c00045ec:	e5d00000 	ldrb	r0, [r0]
c00045f0:	e3500000 	cmp	r0, #0
c00045f4:	08bd8010 	popeq	{r4, pc}
c00045f8:	ebfff56c 	bl	c0001bb0 <outbyte>
c00045fc:	e5f40001 	ldrb	r0, [r4, #1]!
c0004600:	e3500000 	cmp	r0, #0
c0004604:	1afffffb 	bne	c00045f8 <print+0x14>
c0004608:	e8bd8010 	pop	{r4, pc}

c000460c <_Z5panicPKc>:
c000460c:	e92d4008 	push	{r3, lr}
c0004610:	ebfffff3 	bl	c00045e4 <print>
c0004614:	e3a00001 	mov	r0, #1
c0004618:	ebfffa09 	bl	c0002e44 <_exit>

c000461c <_ZN4Ptab14insert_mappingEmmm>:
c000461c:	e92d45f8 	push	{r3, r4, r5, r6, r7, r8, sl, lr}
c0004620:	e1a04000 	mov	r4, r0
c0004624:	e3080000 	movw	r0, #32768	; 0x8000
c0004628:	e3400040 	movt	r0, #64	; 0x40
c000462c:	e1a05001 	mov	r5, r1
c0004630:	e1a08002 	mov	r8, r2
c0004634:	ebffff41 	bl	c0004340 <_ZN6Kalloc9phys2virtEm>
c0004638:	e1a06a24 	lsr	r6, r4, #20
c000463c:	e1a07000 	mov	r7, r0
c0004640:	e7900106 	ldr	r0, [r0, r6, lsl #2]
c0004644:	e3100001 	tst	r0, #1
c0004648:	1a000016 	bne	c00046a8 <_ZN4Ptab14insert_mappingEmmm+0x8c>
c000464c:	e3a01001 	mov	r1, #1
c0004650:	e3060bdc 	movw	r0, #27612	; 0x6bdc
c0004654:	e1a02001 	mov	r2, r1
c0004658:	e34c0000 	movt	r0, #49152	; 0xc000
c000465c:	ebffff1b 	bl	c00042d0 <_ZN6Kalloc10alloc_pageEjNS_4FillE>
c0004660:	e1a0a000 	mov	sl, r0
c0004664:	ebffff39 	bl	c0004350 <_ZN6Kalloc9virt2physEPv>
c0004668:	e2800001 	add	r0, r0, #1
c000466c:	e7870106 	str	r0, [r7, r6, lsl #2]
c0004670:	e3c53eff 	bic	r3, r5, #4080	; 0xff0
c0004674:	e7e72654 	ubfx	r2, r4, #12, #8
c0004678:	e3c3300f 	bic	r3, r3, #15
c000467c:	e3580001 	cmp	r8, #1
c0004680:	02833e45 	addeq	r3, r3, #1104	; 0x450
c0004684:	12833ec7 	addne	r3, r3, #3184	; 0xc70
c0004688:	e283300e 	add	r3, r3, #14
c000468c:	e3050a7c 	movw	r0, #23164	; 0x5a7c
c0004690:	e78a3102 	str	r3, [sl, r2, lsl #2]
c0004694:	e1a01004 	mov	r1, r4
c0004698:	e34c0000 	movt	r0, #49152	; 0xc000
c000469c:	e1a02005 	mov	r2, r5
c00046a0:	e8bd45f8 	pop	{r3, r4, r5, r6, r7, r8, sl, lr}
c00046a4:	eafff8a3 	b	c0002938 <xil_printf>
c00046a8:	e3c00eff 	bic	r0, r0, #4080	; 0xff0
c00046ac:	e3c0000f 	bic	r0, r0, #15
c00046b0:	ebffff22 	bl	c0004340 <_ZN6Kalloc9phys2virtEm>
c00046b4:	e1a0a000 	mov	sl, r0
c00046b8:	eaffffec 	b	c0004670 <_ZN4Ptab14insert_mappingEmmm+0x54>

c00046bc <_ZN4Ptab14insert_sectionEmmmm>:
c00046bc:	e92d4070 	push	{r4, r5, r6, lr}
c00046c0:	e1a06003 	mov	r6, r3
c00046c4:	e1a05001 	mov	r5, r1
c00046c8:	e1a04002 	mov	r4, r2
c00046cc:	ebffff1b 	bl	c0004340 <_ZN6Kalloc9phys2virtEm>
c00046d0:	e3560001 	cmp	r6, #1
c00046d4:	0a000015 	beq	c0004730 <_ZN4Ptab14insert_sectionEmmmm+0x74>
c00046d8:	3a00000d 	bcc	c0004714 <_ZN4Ptab14insert_sectionEmmmm+0x58>
c00046dc:	e3560002 	cmp	r6, #2
c00046e0:	1a000005 	bne	c00046fc <_ZN4Ptab14insert_sectionEmmmm+0x40>
c00046e4:	e1a03a24 	lsr	r3, r4, #20
c00046e8:	e1a02a25 	lsr	r2, r5, #20
c00046ec:	e1a03a03 	lsl	r3, r3, #20
c00046f0:	e3833b03 	orr	r3, r3, #3072	; 0xc00
c00046f4:	e3833006 	orr	r3, r3, #6
c00046f8:	e7803102 	str	r3, [r0, r2, lsl #2]
c00046fc:	e3050ab8 	movw	r0, #23224	; 0x5ab8
c0004700:	e1a01005 	mov	r1, r5
c0004704:	e34c0000 	movt	r0, #49152	; 0xc000
c0004708:	e1a02004 	mov	r2, r4
c000470c:	e8bd4070 	pop	{r4, r5, r6, lr}
c0004710:	eafff888 	b	c0002938 <xil_printf>
c0004714:	e1a02a24 	lsr	r2, r4, #20
c0004718:	e1a03a25 	lsr	r3, r5, #20
c000471c:	e1a02a02 	lsl	r2, r2, #20
c0004720:	e3822b47 	orr	r2, r2, #72704	; 0x11c00
c0004724:	e382200e 	orr	r2, r2, #14
c0004728:	e7802103 	str	r2, [r0, r3, lsl #2]
c000472c:	eafffff2 	b	c00046fc <_ZN4Ptab14insert_sectionEmmmm+0x40>
c0004730:	e1a02a24 	lsr	r2, r4, #20
c0004734:	e1a03a25 	lsr	r3, r5, #20
c0004738:	e1a02a02 	lsl	r2, r2, #20
c000473c:	e3822b45 	orr	r2, r2, #70656	; 0x11400
c0004740:	e382200e 	orr	r2, r2, #14
c0004744:	e7802103 	str	r2, [r0, r3, lsl #2]
c0004748:	eaffffeb 	b	c00046fc <_ZN4Ptab14insert_sectionEmmmm+0x40>

c000474c <_ZN4Ptab5remapEm>:
c000474c:	e92d4070 	push	{r4, r5, r6, lr}
c0004750:	e1a04000 	mov	r4, r0
c0004754:	e3080000 	movw	r0, #32768	; 0x8000
c0004758:	e3400040 	movt	r0, #64	; 0x40
c000475c:	ebfffef7 	bl	c0004340 <_ZN6Kalloc9phys2virtEm>
c0004760:	e3a05ddf 	mov	r5, #14272	; 0x37c0
c0004764:	e1a06000 	mov	r6, r0
c0004768:	ebfff6f9 	bl	c0002354 <Xil_DCacheFlush>
c000476c:	e3a004df 	mov	r0, #-553648128	; 0xdf000000
c0004770:	e3a01000 	mov	r1, #0
c0004774:	e7861005 	str	r1, [r6, r5]
c0004778:	e34d1f10 	movt	r1, #57104	; 0xdf10
c000477c:	ebffeedc 	bl	c00002f4 <flush_kern_tlb_range>
c0004780:	e1a03a24 	lsr	r3, r4, #20
c0004784:	e3050af8 	movw	r0, #23288	; 0x5af8
c0004788:	e3c444ff 	bic	r4, r4, #-16777216	; 0xff000000
c000478c:	e1a03a03 	lsl	r3, r3, #20
c0004790:	e34c0000 	movt	r0, #49152	; 0xc000
c0004794:	e3833b45 	orr	r3, r3, #70656	; 0x11400
c0004798:	e383300e 	orr	r3, r3, #14
c000479c:	e7863005 	str	r3, [r6, r5]
c00047a0:	ebffff8f 	bl	c00045e4 <print>
c00047a4:	e3c4060f 	bic	r0, r4, #15728640	; 0xf00000
c00047a8:	e28004df 	add	r0, r0, #-553648128	; 0xdf000000
c00047ac:	e8bd8070 	pop	{r4, r5, r6, pc}

c00047b0 <_ZN4Ptab10user_remapEm>:
c00047b0:	e92d4070 	push	{r4, r5, r6, lr}
c00047b4:	e1a06000 	mov	r6, r0
c00047b8:	e3080000 	movw	r0, #32768	; 0x8000
c00047bc:	e3400040 	movt	r0, #64	; 0x40
c00047c0:	ebfffede 	bl	c0004340 <_ZN6Kalloc9phys2virtEm>
c00047c4:	e30347c4 	movw	r4, #14276	; 0x37c4
c00047c8:	e1a06a26 	lsr	r6, r6, #20
c00047cc:	e1a06a06 	lsl	r6, r6, #20
c00047d0:	e3866b47 	orr	r6, r6, #72704	; 0x11c00
c00047d4:	e386600e 	orr	r6, r6, #14
c00047d8:	e1a05000 	mov	r5, r0
c00047dc:	ebfff6dc 	bl	c0002354 <Xil_DCacheFlush>
c00047e0:	e3a00000 	mov	r0, #0
c00047e4:	e7850004 	str	r0, [r5, r4]
c00047e8:	e1a03000 	mov	r3, r0
c00047ec:	e34d0f10 	movt	r0, #57104	; 0xdf10
c00047f0:	e1a01003 	mov	r1, r3
c00047f4:	e34d1f20 	movt	r1, #57120	; 0xdf20
c00047f8:	ebffeebd 	bl	c00002f4 <flush_kern_tlb_range>
c00047fc:	e3050b20 	movw	r0, #23328	; 0x5b20
c0004800:	e7856004 	str	r6, [r5, r4]
c0004804:	e34c0000 	movt	r0, #49152	; 0xc000
c0004808:	e8bd4070 	pop	{r4, r5, r6, lr}
c000480c:	eaffff74 	b	c00045e4 <print>

c0004810 <_ZN4Ptab21insert_shadow_mappingEmmmi>:
c0004810:	e92d45f8 	push	{r3, r4, r5, r6, r7, r8, sl, lr}
c0004814:	e1a08002 	mov	r8, r2
c0004818:	e1a06a21 	lsr	r6, r1, #20
c000481c:	e1a05001 	mov	r5, r1
c0004820:	e1a04003 	mov	r4, r3
c0004824:	ebfffec5 	bl	c0004340 <_ZN6Kalloc9phys2virtEm>
c0004828:	e1a07000 	mov	r7, r0
c000482c:	e7900106 	ldr	r0, [r0, r6, lsl #2]
c0004830:	e2102001 	ands	r2, r0, #1
c0004834:	1a000014 	bne	c000488c <_ZN4Ptab21insert_shadow_mappingEmmmi+0x7c>
c0004838:	e3a01001 	mov	r1, #1
c000483c:	e3060bdc 	movw	r0, #27612	; 0x6bdc
c0004840:	e34c0000 	movt	r0, #49152	; 0xc000
c0004844:	ebfffea1 	bl	c00042d0 <_ZN6Kalloc10alloc_pageEjNS_4FillE>
c0004848:	e1a0a000 	mov	sl, r0
c000484c:	ebfffebf 	bl	c0004350 <_ZN6Kalloc9virt2physEPv>
c0004850:	e3540001 	cmp	r4, #1
c0004854:	e2800001 	add	r0, r0, #1
c0004858:	e7870106 	str	r0, [r7, r6, lsl #2]
c000485c:	0a000010 	beq	c00048a4 <_ZN4Ptab21insert_shadow_mappingEmmmi+0x94>
c0004860:	e3540002 	cmp	r4, #2
c0004864:	0a000015 	beq	c00048c0 <_ZN4Ptab21insert_shadow_mappingEmmmi+0xb0>
c0004868:	e3540000 	cmp	r4, #0
c000486c:	18bd85f8 	popne	{r3, r4, r5, r6, r7, r8, sl, pc}
c0004870:	e3c88eff 	bic	r8, r8, #4080	; 0xff0
c0004874:	e7e75655 	ubfx	r5, r5, #12, #8
c0004878:	e3c8800f 	bic	r8, r8, #15
c000487c:	e2888ec7 	add	r8, r8, #3184	; 0xc70
c0004880:	e288800e 	add	r8, r8, #14
c0004884:	e78a8105 	str	r8, [sl, r5, lsl #2]
c0004888:	e8bd85f8 	pop	{r3, r4, r5, r6, r7, r8, sl, pc}
c000488c:	e3c00eff 	bic	r0, r0, #4080	; 0xff0
c0004890:	e3c0000f 	bic	r0, r0, #15
c0004894:	ebfffea9 	bl	c0004340 <_ZN6Kalloc9phys2virtEm>
c0004898:	e3540001 	cmp	r4, #1
c000489c:	e1a0a000 	mov	sl, r0
c00048a0:	1affffee 	bne	c0004860 <_ZN4Ptab21insert_shadow_mappingEmmmi+0x50>
c00048a4:	e3c88eff 	bic	r8, r8, #4080	; 0xff0
c00048a8:	e7e75655 	ubfx	r5, r5, #12, #8
c00048ac:	e3c8800f 	bic	r8, r8, #15
c00048b0:	e2888e83 	add	r8, r8, #2096	; 0x830
c00048b4:	e2888006 	add	r8, r8, #6
c00048b8:	e78a8105 	str	r8, [sl, r5, lsl #2]
c00048bc:	e8bd85f8 	pop	{r3, r4, r5, r6, r7, r8, sl, pc}
c00048c0:	e3c88eff 	bic	r8, r8, #4080	; 0xff0
c00048c4:	e7e75655 	ubfx	r5, r5, #12, #8
c00048c8:	e3c8800f 	bic	r8, r8, #15
c00048cc:	e2888e82 	add	r8, r8, #2080	; 0x820
c00048d0:	e2888006 	add	r8, r8, #6
c00048d4:	e78a8105 	str	r8, [sl, r5, lsl #2]
c00048d8:	e8bd85f8 	pop	{r3, r4, r5, r6, r7, r8, sl, pc}

c00048dc <_ZN4Ptab18set_page_attributeEmmii>:
c00048dc:	e92d4070 	push	{r4, r5, r6, lr}
c00048e0:	e1a04001 	mov	r4, r1
c00048e4:	e1a05002 	mov	r5, r2
c00048e8:	e1a06003 	mov	r6, r3
c00048ec:	ebfffe93 	bl	c0004340 <_ZN6Kalloc9phys2virtEm>
c00048f0:	e1a02a24 	lsr	r2, r4, #20
c00048f4:	e7900102 	ldr	r0, [r0, r2, lsl #2]
c00048f8:	e3100001 	tst	r0, #1
c00048fc:	0a000010 	beq	c0004944 <_ZN4Ptab18set_page_attributeEmmii+0x68>
c0004900:	e3c00eff 	bic	r0, r0, #4080	; 0xff0
c0004904:	e3c0000f 	bic	r0, r0, #15
c0004908:	ebfffe8c 	bl	c0004340 <_ZN6Kalloc9phys2virtEm>
c000490c:	e3550001 	cmp	r5, #1
c0004910:	e1a03000 	mov	r3, r0
c0004914:	0a00000e 	beq	c0004954 <_ZN4Ptab18set_page_attributeEmmii+0x78>
c0004918:	e3550002 	cmp	r5, #2
c000491c:	0a00001c 	beq	c0004994 <_ZN4Ptab18set_page_attributeEmmii+0xb8>
c0004920:	e3550000 	cmp	r5, #0
c0004924:	1a000016 	bne	c0004984 <_ZN4Ptab18set_page_attributeEmmii+0xa8>
c0004928:	e7e72654 	ubfx	r2, r4, #12, #8
c000492c:	e3050b70 	movw	r0, #23408	; 0x5b70
c0004930:	e1a01004 	mov	r1, r4
c0004934:	e34c0000 	movt	r0, #49152	; 0xc000
c0004938:	e7835102 	str	r5, [r3, r2, lsl #2]
c000493c:	ebfff7fd 	bl	c0002938 <xil_printf>
c0004940:	ea000008 	b	c0004968 <_ZN4Ptab18set_page_attributeEmmii+0x8c>
c0004944:	e3050b50 	movw	r0, #23376	; 0x5b50
c0004948:	e34c0000 	movt	r0, #49152	; 0xc000
c000494c:	e8bd4070 	pop	{r4, r5, r6, lr}
c0004950:	eaffff23 	b	c00045e4 <print>
c0004954:	e7e72654 	ubfx	r2, r4, #12, #8
c0004958:	e7901102 	ldr	r1, [r0, r2, lsl #2]
c000495c:	e3c11e23 	bic	r1, r1, #560	; 0x230
c0004960:	e3811020 	orr	r1, r1, #32
c0004964:	e7801102 	str	r1, [r0, r2, lsl #2]
c0004968:	e3c44eff 	bic	r4, r4, #4080	; 0xff0
c000496c:	e206600f 	and	r6, r6, #15
c0004970:	e3c4400f 	bic	r4, r4, #15
c0004974:	e1864004 	orr	r4, r6, r4
c0004978:	ee084f33 	mcr	15, 0, r4, cr8, cr3, {1}
c000497c:	ee084f36 	mcr	15, 0, r4, cr8, cr6, {1}
c0004980:	e8bd8070 	pop	{r4, r5, r6, pc}
c0004984:	e3050b9c 	movw	r0, #23452	; 0x5b9c
c0004988:	e34c0000 	movt	r0, #49152	; 0xc000
c000498c:	ebffff14 	bl	c00045e4 <print>
c0004990:	eafffff4 	b	c0004968 <_ZN4Ptab18set_page_attributeEmmii+0x8c>
c0004994:	e7e72654 	ubfx	r2, r4, #12, #8
c0004998:	e7901102 	ldr	r1, [r0, r2, lsl #2]
c000499c:	e3c11e23 	bic	r1, r1, #560	; 0x230
c00049a0:	e3811030 	orr	r1, r1, #48	; 0x30
c00049a4:	e7801102 	str	r1, [r0, r2, lsl #2]
c00049a8:	eaffffee 	b	c0004968 <_ZN4Ptab18set_page_attributeEmmii+0x8c>

c00049ac <_ZN6Ualloc9virt2physEmm>:
c00049ac:	e92d4038 	push	{r3, r4, r5, lr}
c00049b0:	e1a04001 	mov	r4, r1
c00049b4:	ebfffe61 	bl	c0004340 <_ZN6Kalloc9phys2virtEm>
c00049b8:	e1a03a24 	lsr	r3, r4, #20
c00049bc:	e7902103 	ldr	r2, [r0, r3, lsl #2]
c00049c0:	e2023003 	and	r3, r2, #3
c00049c4:	e3530002 	cmp	r3, #2
c00049c8:	0a000012 	beq	c0004a18 <_ZN6Ualloc9virt2physEmm+0x6c>
c00049cc:	e2125001 	ands	r5, r2, #1
c00049d0:	1a000005 	bne	c00049ec <_ZN6Ualloc9virt2physEmm+0x40>
c00049d4:	e1a01004 	mov	r1, r4
c00049d8:	e3050bb8 	movw	r0, #23480	; 0x5bb8
c00049dc:	e34c0000 	movt	r0, #49152	; 0xc000
c00049e0:	ebfff7d4 	bl	c0002938 <xil_printf>
c00049e4:	e1a00005 	mov	r0, r5
c00049e8:	e8bd8038 	pop	{r3, r4, r5, pc}
c00049ec:	e3c20eff 	bic	r0, r2, #4080	; 0xff0
c00049f0:	e3c0000f 	bic	r0, r0, #15
c00049f4:	ebfffe51 	bl	c0004340 <_ZN6Kalloc9phys2virtEm>
c00049f8:	e7e73654 	ubfx	r3, r4, #12, #8
c00049fc:	e1a04a04 	lsl	r4, r4, #20
c0004a00:	e1a04a24 	lsr	r4, r4, #20
c0004a04:	e7900103 	ldr	r0, [r0, r3, lsl #2]
c0004a08:	e3c00eff 	bic	r0, r0, #4080	; 0xff0
c0004a0c:	e3c0000f 	bic	r0, r0, #15
c0004a10:	e1800004 	orr	r0, r0, r4
c0004a14:	e8bd8038 	pop	{r3, r4, r5, pc}
c0004a18:	e1a02a22 	lsr	r2, r2, #20
c0004a1c:	e3c444ff 	bic	r4, r4, #-16777216	; 0xff000000
c0004a20:	e3c4460f 	bic	r4, r4, #15728640	; 0xf00000
c0004a24:	e1840a02 	orr	r0, r4, r2, lsl #20
c0004a28:	e8bd8038 	pop	{r3, r4, r5, pc}

c0004a2c <_ZN3Vec8vec_initEv>:
c0004a2c:	e92d4010 	push	{r4, lr}
c0004a30:	e3a01001 	mov	r1, #1
c0004a34:	e3a02000 	mov	r2, #0
c0004a38:	e3060bdc 	movw	r0, #27612	; 0x6bdc
c0004a3c:	e34c0000 	movt	r0, #49152	; 0xc000
c0004a40:	e3a04000 	mov	r4, #0
c0004a44:	ebfffe21 	bl	c00042d0 <_ZN6Kalloc10alloc_pageEjNS_4FillE>
c0004a48:	e34f4fff 	movt	r4, #65535	; 0xffff
c0004a4c:	ebfffe3f 	bl	c0004350 <_ZN6Kalloc9virt2physEPv>
c0004a50:	e3a02001 	mov	r2, #1
c0004a54:	e1a01000 	mov	r1, r0
c0004a58:	e1a00004 	mov	r0, r4
c0004a5c:	ebfffeee 	bl	c000461c <_ZN4Ptab14insert_mappingEmmm>
c0004a60:	e59f2038 	ldr	r2, [pc, #56]	; c0004aa0 <_ZN3Vec8vec_initEv+0x74>
c0004a64:	e3001324 	movw	r1, #804	; 0x324
c0004a68:	e34c1000 	movt	r1, #49152	; 0xc000
c0004a6c:	e1a00004 	mov	r0, r4
c0004a70:	e0612002 	rsb	r2, r1, r2
c0004a74:	ebffeebd 	bl	c0000570 <memcpy>
c0004a78:	f57ff04f 	dsb	sy
c0004a7c:	e3a03000 	mov	r3, #0
c0004a80:	ee083f13 	mcr	15, 0, r3, cr8, cr3, {0}
c0004a84:	f57ff04f 	dsb	sy
c0004a88:	f57ff06f 	isb	sy
c0004a8c:	f57ff04f 	dsb	sy
c0004a90:	ee083f33 	mcr	15, 0, r3, cr8, cr3, {1}
c0004a94:	f57ff04f 	dsb	sy
c0004a98:	f57ff06f 	isb	sy
c0004a9c:	e8bd8010 	pop	{r4, pc}
c0004aa0:	c0000368 	andgt	r0, r0, r8, ror #6

c0004aa4 <_ZN3FpcC1Em>:
c0004aa4:	e3a02000 	mov	r2, #0
c0004aa8:	e5801104 	str	r1, [r0, #260]	; 0x104
c0004aac:	e5802100 	str	r2, [r0, #256]	; 0x100
c0004ab0:	e12fff1e 	bx	lr

c0004ab4 <_ZN3Fpc8fpc_saveEv>:
c0004ab4:	e24dd008 	sub	sp, sp, #8
c0004ab8:	e2800f41 	add	r0, r0, #260	; 0x104
c0004abc:	e58d0004 	str	r0, [sp, #4]
c0004ac0:	e1a0000d 	mov	r0, sp
c0004ac4:	e59dd004 	ldr	sp, [sp, #4]
c0004ac8:	eef11a10 	vmrs	r1, fpscr
c0004acc:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
c0004ad0:	ed2d0a20 	vpush	{s0-s31}
c0004ad4:	ed6d0b20 	vpush	{d16-d31}
c0004ad8:	e1a0d000 	mov	sp, r0
c0004adc:	e28dd008 	add	sp, sp, #8
c0004ae0:	e12fff1e 	bx	lr

c0004ae4 <_ZN3Fpc11fpc_restoreEv>:
c0004ae4:	e24dd008 	sub	sp, sp, #8
c0004ae8:	e58d0004 	str	r0, [sp, #4]
c0004aec:	e1a0000d 	mov	r0, sp
c0004af0:	e59dd004 	ldr	sp, [sp, #4]
c0004af4:	ecfd0b20 	vpop	{d16-d31}
c0004af8:	ecbd0a20 	vpop	{s0-s31}
c0004afc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
c0004b00:	eee11a10 	vmsr	fpscr, r1
c0004b04:	e1a0d000 	mov	sp, r0
c0004b08:	e28dd008 	add	sp, sp, #8
c0004b0c:	e12fff1e 	bx	lr

c0004b10 <_Z22PRR_monitor_irqHandlerPv>:
c0004b10:	e92d4008 	push	{r3, lr}
c0004b14:	e3a00001 	mov	r0, #1
c0004b18:	ebfffb8f 	bl	c000395c <_ZN2Ec15Service_enqueueEi>
c0004b1c:	e3063b28 	movw	r3, #27432	; 0x6b28
c0004b20:	e34c3000 	movt	r3, #49152	; 0xc000
c0004b24:	e3a02201 	mov	r2, #268435456	; 0x10000000
c0004b28:	e3a01000 	mov	r1, #0
c0004b2c:	e5821000 	str	r1, [r2]
c0004b30:	e5930000 	ldr	r0, [r3]
c0004b34:	e8bd4008 	pop	{r3, lr}
c0004b38:	eafffa97 	b	c000359c <_ZN2Ec15ec_virq_handlerEi>

c0004b3c <_Z15rtos_tmrHandlerPv>:
c0004b3c:	e92d4010 	push	{r4, lr}
c0004b40:	e3064c28 	movw	r4, #27688	; 0x6c28
c0004b44:	e34c4000 	movt	r4, #49152	; 0xc000
c0004b48:	e5940014 	ldr	r0, [r4, #20]
c0004b4c:	e2800054 	add	r0, r0, #84	; 0x54
c0004b50:	ebfff6c0 	bl	c0002658 <_Z8Xil_In32m>
c0004b54:	e1a01000 	mov	r1, r0
c0004b58:	e5940014 	ldr	r0, [r4, #20]
c0004b5c:	e2800054 	add	r0, r0, #84	; 0x54
c0004b60:	ebfff6c2 	bl	c0002670 <_Z9Xil_Out32mm>
c0004b64:	ebfffb98 	bl	c00039cc <_ZN2Ec12RTOS_enqueueEv>
c0004b68:	e3a0002b 	mov	r0, #43	; 0x2b
c0004b6c:	e8bd4010 	pop	{r4, lr}
c0004b70:	eafffa89 	b	c000359c <_ZN2Ec15ec_virq_handlerEi>

c0004b74 <_Z15ucos_tmrHandlerPv>:
c0004b74:	e92d4010 	push	{r4, lr}
c0004b78:	e3064c28 	movw	r4, #27688	; 0x6c28
c0004b7c:	e34c4000 	movt	r4, #49152	; 0xc000
c0004b80:	e3050bf0 	movw	r0, #23536	; 0x5bf0
c0004b84:	e34c0000 	movt	r0, #49152	; 0xc000
c0004b88:	ebfffe95 	bl	c00045e4 <print>
c0004b8c:	e5940004 	ldr	r0, [r4, #4]
c0004b90:	e2800054 	add	r0, r0, #84	; 0x54
c0004b94:	ebfff6af 	bl	c0002658 <_Z8Xil_In32m>
c0004b98:	e1a01000 	mov	r1, r0
c0004b9c:	e5940004 	ldr	r0, [r4, #4]
c0004ba0:	e2800054 	add	r0, r0, #84	; 0x54
c0004ba4:	ebfff6b1 	bl	c0002670 <_Z9Xil_Out32mm>
c0004ba8:	e3a0002a 	mov	r0, #42	; 0x2a
c0004bac:	e8bd4010 	pop	{r4, lr}
c0004bb0:	eafffa79 	b	c000359c <_ZN2Ec15ec_virq_handlerEi>

c0004bb4 <_Z15nova_tmrHandlerPv>:
c0004bb4:	e92d4008 	push	{r3, lr}
c0004bb8:	ebfff41b 	bl	c0001c2c <_Z17Private_TmrIntClrv>
c0004bbc:	e8bd4008 	pop	{r3, lr}
c0004bc0:	eafffb4f 	b	c0003904 <_ZN2Ec9sys_yieldEv>

c0004bc4 <_Z16check_ClockRatiov>:
c0004bc4:	e92d4038 	push	{r3, r4, r5, lr}
c0004bc8:	e3a0433e 	mov	r4, #-134217728	; 0xf8000000
c0004bcc:	e59431c4 	ldr	r3, [r4, #452]	; 0x1c4
c0004bd0:	e3530001 	cmp	r3, #1
c0004bd4:	13a05001 	movne	r5, #1
c0004bd8:	0a000006 	beq	c0004bf8 <_Z16check_ClockRatiov+0x34>
c0004bdc:	e3050c30 	movw	r0, #23600	; 0x5c30
c0004be0:	e34c0000 	movt	r0, #49152	; 0xc000
c0004be4:	ebfffe7e 	bl	c00045e4 <print>
c0004be8:	e58451c4 	str	r5, [r4, #452]	; 0x1c4
c0004bec:	e59431c4 	ldr	r3, [r4, #452]	; 0x1c4
c0004bf0:	e3530001 	cmp	r3, #1
c0004bf4:	1afffff8 	bne	c0004bdc <_Z16check_ClockRatiov+0x18>
c0004bf8:	e3050bf4 	movw	r0, #23540	; 0x5bf4
c0004bfc:	e34c0000 	movt	r0, #49152	; 0xc000
c0004c00:	e8bd4038 	pop	{r3, r4, r5, lr}
c0004c04:	eafffe76 	b	c00045e4 <print>

c0004c08 <_Z10TTC_TmrCfgii>:
c0004c08:	e251c000 	subs	ip, r1, #0
c0004c0c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
c0004c10:	e1a05000 	mov	r5, r0
c0004c14:	e24dd008 	sub	sp, sp, #8
c0004c18:	0a00001d 	beq	c0004c94 <_Z10TTC_TmrCfgii+0x8c>
c0004c1c:	e0807080 	add	r7, r0, r0, lsl #1
c0004c20:	e3068c28 	movw	r8, #27688	; 0x6c28
c0004c24:	e34c8000 	movt	r8, #49152	; 0xc000
c0004c28:	e3066c04 	movw	r6, #27652	; 0x6c04
c0004c2c:	e1a07107 	lsl	r7, r7, #2
c0004c30:	e34c6000 	movt	r6, #49152	; 0xc000
c0004c34:	e0888200 	add	r8, r8, r0, lsl #4
c0004c38:	e0864007 	add	r4, r6, r7
c0004c3c:	e2842004 	add	r2, r4, #4
c0004c40:	e2843006 	add	r3, r4, #6
c0004c44:	e1a00008 	mov	r0, r8
c0004c48:	e786c007 	str	ip, [r6, r7]
c0004c4c:	ebfff116 	bl	c00010ac <_Z27XTtcPs_CalcIntervalFromFreqP6XTtcPsmPtPh>
c0004c50:	e1a00008 	mov	r0, r8
c0004c54:	e5d41006 	ldrb	r1, [r4, #6]
c0004c58:	ebfff0fe 	bl	c0001058 <_Z19XTtcPs_SetPrescalerP6XTtcPsh>
c0004c5c:	e5980004 	ldr	r0, [r8, #4]
c0004c60:	e1d410b4 	ldrh	r1, [r4, #4]
c0004c64:	e2800024 	add	r0, r0, #36	; 0x24
c0004c68:	ebfff680 	bl	c0002670 <_Z9Xil_Out32mm>
c0004c6c:	e5d4e006 	ldrb	lr, [r4, #6]
c0004c70:	e1d4c0b4 	ldrh	ip, [r4, #4]
c0004c74:	e3050c6c 	movw	r0, #23660	; 0x5c6c
c0004c78:	e1d430b8 	ldrh	r3, [r4, #8]
c0004c7c:	e34c0000 	movt	r0, #49152	; 0xc000
c0004c80:	e7962007 	ldr	r2, [r6, r7]
c0004c84:	e1a01005 	mov	r1, r5
c0004c88:	e58de000 	str	lr, [sp]
c0004c8c:	e58dc004 	str	ip, [sp, #4]
c0004c90:	ebfff728 	bl	c0002938 <xil_printf>
c0004c94:	e28dd008 	add	sp, sp, #8
c0004c98:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

c0004c9c <_Z11TTC_TmrIniti>:
c0004c9c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
c0004ca0:	e1a04000 	mov	r4, r0
c0004ca4:	e0808080 	add	r8, r0, r0, lsl #1
c0004ca8:	e24dd008 	sub	sp, sp, #8
c0004cac:	e6ff0070 	uxth	r0, r0
c0004cb0:	e3067c1c 	movw	r7, #27676	; 0x6c1c
c0004cb4:	ebfff178 	bl	c000129c <_Z19XTtcPs_LookupConfigt>
c0004cb8:	e34c7000 	movt	r7, #49152	; 0xc000
c0004cbc:	e3065c04 	movw	r5, #27652	; 0x6c04
c0004cc0:	e1a08108 	lsl	r8, r8, #2
c0004cc4:	e34c5000 	movt	r5, #49152	; 0xc000
c0004cc8:	e0856008 	add	r6, r5, r8
c0004ccc:	e3500000 	cmp	r0, #0
c0004cd0:	e1a01000 	mov	r1, r0
c0004cd4:	e7870104 	str	r0, [r7, r4, lsl #2]
c0004cd8:	0a00001e 	beq	c0004d58 <_Z11TTC_TmrIniti+0xbc>
c0004cdc:	e3060c28 	movw	r0, #27688	; 0x6c28
c0004ce0:	e34c0000 	movt	r0, #49152	; 0xc000
c0004ce4:	e0807204 	add	r7, r0, r4, lsl #4
c0004ce8:	e5912004 	ldr	r2, [r1, #4]
c0004cec:	e1a00007 	mov	r0, r7
c0004cf0:	ebfff092 	bl	c0000f40 <_Z20XTtcPs_CfgInitializeP6XTtcPsP13XTtcPs_Configm>
c0004cf4:	e3500000 	cmp	r0, #0
c0004cf8:	0a000002 	beq	c0004d08 <_Z11TTC_TmrIniti+0x6c>
c0004cfc:	e3050cd0 	movw	r0, #23760	; 0x5cd0
c0004d00:	e34c0000 	movt	r0, #49152	; 0xc000
c0004d04:	ebfffe36 	bl	c00045e4 <print>
c0004d08:	e1d610b8 	ldrh	r1, [r6, #8]
c0004d0c:	e1a00007 	mov	r0, r7
c0004d10:	e3811024 	orr	r1, r1, #36	; 0x24
c0004d14:	e1c610b8 	strh	r1, [r6, #8]
c0004d18:	ebfff105 	bl	c0001134 <_Z17XTtcPs_SetOptionsP6XTtcPsm>
c0004d1c:	e1a00004 	mov	r0, r4
c0004d20:	e7951008 	ldr	r1, [r5, r8]
c0004d24:	ebffffb7 	bl	c0004c08 <_Z10TTC_TmrCfgii>
c0004d28:	e5d6e006 	ldrb	lr, [r6, #6]
c0004d2c:	e1d6c0b4 	ldrh	ip, [r6, #4]
c0004d30:	e3050c6c 	movw	r0, #23660	; 0x5c6c
c0004d34:	e1d630b8 	ldrh	r3, [r6, #8]
c0004d38:	e34c0000 	movt	r0, #49152	; 0xc000
c0004d3c:	e7952008 	ldr	r2, [r5, r8]
c0004d40:	e1a01004 	mov	r1, r4
c0004d44:	e58de000 	str	lr, [sp]
c0004d48:	e58dc004 	str	ip, [sp, #4]
c0004d4c:	ebfff6f9 	bl	c0002938 <xil_printf>
c0004d50:	e28dd008 	add	sp, sp, #8
c0004d54:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
c0004d58:	e3050cb4 	movw	r0, #23732	; 0x5cb4
c0004d5c:	e34c0000 	movt	r0, #49152	; 0xc000
c0004d60:	ebfffe1f 	bl	c00045e4 <print>
c0004d64:	e7971104 	ldr	r1, [r7, r4, lsl #2]
c0004d68:	eaffffdb 	b	c0004cdc <_Z11TTC_TmrIniti+0x40>

c0004d6c <_Z8GIC_Initv>:
c0004d6c:	e92d4010 	push	{r4, lr}
c0004d70:	e3a00000 	mov	r0, #0
c0004d74:	e24dd008 	sub	sp, sp, #8
c0004d78:	e3064c24 	movw	r4, #27684	; 0x6c24
c0004d7c:	ebfff384 	bl	c0001b94 <_Z20XScuGic_LookupConfigt>
c0004d80:	e34c4000 	movt	r4, #49152	; 0xc000
c0004d84:	e3500000 	cmp	r0, #0
c0004d88:	e1a01000 	mov	r1, r0
c0004d8c:	e5840000 	str	r0, [r4]
c0004d90:	0a000065 	beq	c0004f2c <_Z8GIC_Initv+0x1c0>
c0004d94:	e3060bf8 	movw	r0, #27640	; 0x6bf8
c0004d98:	e5912004 	ldr	r2, [r1, #4]
c0004d9c:	e34c0000 	movt	r0, #49152	; 0xc000
c0004da0:	ebfff1ef 	bl	c0001564 <_Z21XScuGic_CfgInitializeP7XScuGicP14XScuGic_Configm>
c0004da4:	e3500000 	cmp	r0, #0
c0004da8:	1a00005b 	bne	c0004f1c <_Z8GIC_Initv+0x1b0>
c0004dac:	e3a04000 	mov	r4, #0
c0004db0:	e1a01004 	mov	r1, r4
c0004db4:	e28d2006 	add	r2, sp, #6
c0004db8:	e28d3007 	add	r3, sp, #7
c0004dbc:	e3060bf8 	movw	r0, #27640	; 0x6bf8
c0004dc0:	e34c0000 	movt	r0, #49152	; 0xc000
c0004dc4:	ebfff297 	bl	c0001828 <_Z30XScuGic_GetPriorityTriggerTypeP7XScuGicmPhS1_>
c0004dc8:	e1a01004 	mov	r1, r4
c0004dcc:	e3060bf8 	movw	r0, #27640	; 0x6bf8
c0004dd0:	e3a02080 	mov	r2, #128	; 0x80
c0004dd4:	e34c0000 	movt	r0, #49152	; 0xc000
c0004dd8:	e5dd3007 	ldrb	r3, [sp, #7]
c0004ddc:	e2844001 	add	r4, r4, #1
c0004de0:	ebfff26a 	bl	c0001790 <_Z30XScuGic_SetPriorityTriggerTypeP7XScuGicmhh>
c0004de4:	e354005d 	cmp	r4, #93	; 0x5d
c0004de8:	1afffff0 	bne	c0004db0 <_Z8GIC_Initv+0x44>
c0004dec:	e3a0101d 	mov	r1, #29
c0004df0:	e3a02008 	mov	r2, #8
c0004df4:	e3a03003 	mov	r3, #3
c0004df8:	e3060bf8 	movw	r0, #27640	; 0x6bf8
c0004dfc:	e34c0000 	movt	r0, #49152	; 0xc000
c0004e00:	ebfff262 	bl	c0001790 <_Z30XScuGic_SetPriorityTriggerTypeP7XScuGicmhh>
c0004e04:	e3a0102a 	mov	r1, #42	; 0x2a
c0004e08:	e3a02040 	mov	r2, #64	; 0x40
c0004e0c:	e3a03003 	mov	r3, #3
c0004e10:	e3060bf8 	movw	r0, #27640	; 0x6bf8
c0004e14:	e34c0000 	movt	r0, #49152	; 0xc000
c0004e18:	ebfff25c 	bl	c0001790 <_Z30XScuGic_SetPriorityTriggerTypeP7XScuGicmhh>
c0004e1c:	e3a0102b 	mov	r1, #43	; 0x2b
c0004e20:	e3a02020 	mov	r2, #32
c0004e24:	e3a03003 	mov	r3, #3
c0004e28:	e3060bf8 	movw	r0, #27640	; 0x6bf8
c0004e2c:	e34c0000 	movt	r0, #49152	; 0xc000
c0004e30:	ebfff256 	bl	c0001790 <_Z30XScuGic_SetPriorityTriggerTypeP7XScuGicmhh>
c0004e34:	e3a03000 	mov	r3, #0
c0004e38:	e34f38f0 	movt	r3, #63728	; 0xf8f0
c0004e3c:	e3a020f8 	mov	r2, #248	; 0xf8
c0004e40:	e3060bf8 	movw	r0, #27640	; 0x6bf8
c0004e44:	e3a0101d 	mov	r1, #29
c0004e48:	e5832104 	str	r2, [r3, #260]	; 0x104
c0004e4c:	e34c0000 	movt	r0, #49152	; 0xc000
c0004e50:	e3042bb4 	movw	r2, #19380	; 0x4bb4
c0004e54:	e3063c28 	movw	r3, #27688	; 0x6c28
c0004e58:	e34c2000 	movt	r2, #49152	; 0xc000
c0004e5c:	e34c3000 	movt	r3, #49152	; 0xc000
c0004e60:	ebfff214 	bl	c00016b8 <_Z15XScuGic_ConnectP7XScuGicmPFvPvES1_>
c0004e64:	e3500000 	cmp	r0, #0
c0004e68:	1a000027 	bne	c0004f0c <_Z8GIC_Initv+0x1a0>
c0004e6c:	e3060bf8 	movw	r0, #27640	; 0x6bf8
c0004e70:	e3a0102a 	mov	r1, #42	; 0x2a
c0004e74:	e34c0000 	movt	r0, #49152	; 0xc000
c0004e78:	e3042b74 	movw	r2, #19316	; 0x4b74
c0004e7c:	e3a03000 	mov	r3, #0
c0004e80:	e34c2000 	movt	r2, #49152	; 0xc000
c0004e84:	ebfff20b 	bl	c00016b8 <_Z15XScuGic_ConnectP7XScuGicmPFvPvES1_>
c0004e88:	e3500000 	cmp	r0, #0
c0004e8c:	1a00001a 	bne	c0004efc <_Z8GIC_Initv+0x190>
c0004e90:	e3060bf8 	movw	r0, #27640	; 0x6bf8
c0004e94:	e3a0102b 	mov	r1, #43	; 0x2b
c0004e98:	e34c0000 	movt	r0, #49152	; 0xc000
c0004e9c:	e3042b3c 	movw	r2, #19260	; 0x4b3c
c0004ea0:	e3a03000 	mov	r3, #0
c0004ea4:	e34c2000 	movt	r2, #49152	; 0xc000
c0004ea8:	ebfff202 	bl	c00016b8 <_Z15XScuGic_ConnectP7XScuGicmPFvPvES1_>
c0004eac:	e3500000 	cmp	r0, #0
c0004eb0:	1a00000d 	bne	c0004eec <_Z8GIC_Initv+0x180>
c0004eb4:	e3060bf8 	movw	r0, #27640	; 0x6bf8
c0004eb8:	e3a0105a 	mov	r1, #90	; 0x5a
c0004ebc:	e34c0000 	movt	r0, #49152	; 0xc000
c0004ec0:	e3042b10 	movw	r2, #19216	; 0x4b10
c0004ec4:	e3a03000 	mov	r3, #0
c0004ec8:	e34c2000 	movt	r2, #49152	; 0xc000
c0004ecc:	ebfff1f9 	bl	c00016b8 <_Z15XScuGic_ConnectP7XScuGicmPFvPvES1_>
c0004ed0:	e3500000 	cmp	r0, #0
c0004ed4:	0a000002 	beq	c0004ee4 <_Z8GIC_Initv+0x178>
c0004ed8:	e3050d74 	movw	r0, #23924	; 0x5d74
c0004edc:	e34c0000 	movt	r0, #49152	; 0xc000
c0004ee0:	ebfffdbf 	bl	c00045e4 <print>
c0004ee4:	e28dd008 	add	sp, sp, #8
c0004ee8:	e8bd8010 	pop	{r4, pc}
c0004eec:	e3050d48 	movw	r0, #23880	; 0x5d48
c0004ef0:	e34c0000 	movt	r0, #49152	; 0xc000
c0004ef4:	ebfffdba 	bl	c00045e4 <print>
c0004ef8:	eaffffed 	b	c0004eb4 <_Z8GIC_Initv+0x148>
c0004efc:	e3050d48 	movw	r0, #23880	; 0x5d48
c0004f00:	e34c0000 	movt	r0, #49152	; 0xc000
c0004f04:	ebfffdb6 	bl	c00045e4 <print>
c0004f08:	eaffffe0 	b	c0004e90 <_Z8GIC_Initv+0x124>
c0004f0c:	e3050d24 	movw	r0, #23844	; 0x5d24
c0004f10:	e34c0000 	movt	r0, #49152	; 0xc000
c0004f14:	ebfffdb2 	bl	c00045e4 <print>
c0004f18:	eaffffd3 	b	c0004e6c <_Z8GIC_Initv+0x100>
c0004f1c:	e3050d08 	movw	r0, #23816	; 0x5d08
c0004f20:	e34c0000 	movt	r0, #49152	; 0xc000
c0004f24:	ebfffdae 	bl	c00045e4 <print>
c0004f28:	eaffff9f 	b	c0004dac <_Z8GIC_Initv+0x40>
c0004f2c:	e3050cec 	movw	r0, #23788	; 0x5cec
c0004f30:	e34c0000 	movt	r0, #49152	; 0xc000
c0004f34:	ebfffdaa 	bl	c00045e4 <print>
c0004f38:	e5941000 	ldr	r1, [r4]
c0004f3c:	eaffff94 	b	c0004d94 <_Z8GIC_Initv+0x28>

c0004f40 <_Z8irq_initv>:
c0004f40:	e92d4038 	push	{r3, r4, r5, lr}
c0004f44:	e30504b8 	movw	r0, #21688	; 0x54b8
c0004f48:	e3064c28 	movw	r4, #27688	; 0x6c28
c0004f4c:	e34c0000 	movt	r0, #49152	; 0xc000
c0004f50:	e34c4000 	movt	r4, #49152	; 0xc000
c0004f54:	ebfffda2 	bl	c00045e4 <print>
c0004f58:	ebffff19 	bl	c0004bc4 <_Z16check_ClockRatiov>
c0004f5c:	e3a00000 	mov	r0, #0
c0004f60:	ebffff4d 	bl	c0004c9c <_Z11TTC_TmrIniti>
c0004f64:	e5945004 	ldr	r5, [r4, #4]
c0004f68:	e2855060 	add	r5, r5, #96	; 0x60
c0004f6c:	e1a00005 	mov	r0, r5
c0004f70:	ebfff5b8 	bl	c0002658 <_Z8Xil_In32m>
c0004f74:	e3801001 	orr	r1, r0, #1
c0004f78:	e1a00005 	mov	r0, r5
c0004f7c:	ebfff5bb 	bl	c0002670 <_Z9Xil_Out32mm>
c0004f80:	e3a00001 	mov	r0, #1
c0004f84:	ebffff44 	bl	c0004c9c <_Z11TTC_TmrIniti>
c0004f88:	e5944014 	ldr	r4, [r4, #20]
c0004f8c:	e2844060 	add	r4, r4, #96	; 0x60
c0004f90:	e1a00004 	mov	r0, r4
c0004f94:	ebfff5af 	bl	c0002658 <_Z8Xil_In32m>
c0004f98:	e3801001 	orr	r1, r0, #1
c0004f9c:	e1a00004 	mov	r0, r4
c0004fa0:	ebfff5b2 	bl	c0002670 <_Z9Xil_Out32mm>
c0004fa4:	e3a00021 	mov	r0, #33	; 0x21
c0004fa8:	ebfff304 	bl	c0001bc0 <_Z14Private_TmrCfgm>
c0004fac:	ebfff316 	bl	c0001c0c <_Z16Private_TmrStartv>
c0004fb0:	ebffff6d 	bl	c0004d6c <_Z8GIC_Initv>
c0004fb4:	e3a0101d 	mov	r1, #29
c0004fb8:	e3060bf8 	movw	r0, #27640	; 0x6bf8
c0004fbc:	e34c0000 	movt	r0, #49152	; 0xc000
c0004fc0:	ebfff1d5 	bl	c000171c <_Z14XScuGic_EnableP7XScuGicm>
c0004fc4:	e3050d98 	movw	r0, #23960	; 0x5d98
c0004fc8:	e34c0000 	movt	r0, #49152	; 0xc000
c0004fcc:	e8bd4038 	pop	{r3, r4, r5, lr}
c0004fd0:	eafffd83 	b	c00045e4 <print>

c0004fd4 <_Z15Default_HandlerPv>:
c0004fd4:	e3063b28 	movw	r3, #27432	; 0x6b28
c0004fd8:	e34c3000 	movt	r3, #49152	; 0xc000
c0004fdc:	e5930000 	ldr	r0, [r3]
c0004fe0:	eafff96d 	b	c000359c <_ZN2Ec15ec_virq_handlerEi>

c0004fe4 <_Z13vtimer_configmm>:
c0004fe4:	e350002a 	cmp	r0, #42	; 0x2a
c0004fe8:	e1a03000 	mov	r3, r0
c0004fec:	e92d4010 	push	{r4, lr}
c0004ff0:	0a000006 	beq	c0005010 <_Z13vtimer_configmm+0x2c>
c0004ff4:	e350002b 	cmp	r0, #43	; 0x2b
c0004ff8:	0a000010 	beq	c0005040 <_Z13vtimer_configmm+0x5c>
c0004ffc:	e3050db0 	movw	r0, #23984	; 0x5db0
c0005000:	e1a01003 	mov	r1, r3
c0005004:	e34c0000 	movt	r0, #49152	; 0xc000
c0005008:	e8bd4010 	pop	{r4, lr}
c000500c:	eafff649 	b	c0002938 <xil_printf>
c0005010:	e3a00000 	mov	r0, #0
c0005014:	ebfffefb 	bl	c0004c08 <_Z10TTC_TmrCfgii>
c0005018:	e3063c28 	movw	r3, #27688	; 0x6c28
c000501c:	e34c3000 	movt	r3, #49152	; 0xc000
c0005020:	e5934004 	ldr	r4, [r3, #4]
c0005024:	e284400c 	add	r4, r4, #12
c0005028:	e1a00004 	mov	r0, r4
c000502c:	ebfff589 	bl	c0002658 <_Z8Xil_In32m>
c0005030:	e3c01001 	bic	r1, r0, #1
c0005034:	e1a00004 	mov	r0, r4
c0005038:	e8bd4010 	pop	{r4, lr}
c000503c:	eafff58b 	b	c0002670 <_Z9Xil_Out32mm>
c0005040:	e3a00001 	mov	r0, #1
c0005044:	ebfffeef 	bl	c0004c08 <_Z10TTC_TmrCfgii>
c0005048:	e3063c28 	movw	r3, #27688	; 0x6c28
c000504c:	e34c3000 	movt	r3, #49152	; 0xc000
c0005050:	e5934014 	ldr	r4, [r3, #20]
c0005054:	eafffff2 	b	c0005024 <_Z13vtimer_configmm+0x40>

c0005058 <_Z18vGic_InsertPendingP11vGicContexti>:
c0005058:	e3510000 	cmp	r1, #0
c000505c:	e281201f 	add	r2, r1, #31
c0005060:	e1a03fc1 	asr	r3, r1, #31
c0005064:	a1a02001 	movge	r2, r1
c0005068:	e1a022c2 	asr	r2, r2, #5
c000506c:	e1a03da3 	lsr	r3, r3, #27
c0005070:	e2822006 	add	r2, r2, #6
c0005074:	e0811003 	add	r1, r1, r3
c0005078:	e201101f 	and	r1, r1, #31
c000507c:	e0800102 	add	r0, r0, r2, lsl #2
c0005080:	e0633001 	rsb	r3, r3, r1
c0005084:	e3a01001 	mov	r1, #1
c0005088:	e5902004 	ldr	r2, [r0, #4]
c000508c:	e1821311 	orr	r1, r2, r1, lsl r3
c0005090:	e5801004 	str	r1, [r0, #4]
c0005094:	e12fff1e 	bx	lr

c0005098 <_Z15vGic_SetPendingi>:
c0005098:	e1a01000 	mov	r1, r0
c000509c:	e3060bf8 	movw	r0, #27640	; 0x6bf8
c00050a0:	e34c0000 	movt	r0, #49152	; 0xc000
c00050a4:	eafff090 	b	c00012ec <_Z14Gic_SetPendingP7XScuGicm>

c00050a8 <_Z11vGic_SwitchP11vGicContextS0_>:
c00050a8:	e92d40f0 	push	{r4, r5, r6, r7, lr}
c00050ac:	e1a05001 	mov	r5, r1
c00050b0:	e5911004 	ldr	r1, [r1, #4]
c00050b4:	e1a04000 	mov	r4, r0
c00050b8:	e595c000 	ldr	ip, [r5]
c00050bc:	e24dd014 	sub	sp, sp, #20
c00050c0:	e2913000 	adds	r3, r1, #0
c00050c4:	e8900005 	ldm	r0, {r0, r2}
c00050c8:	13a03001 	movne	r3, #1
c00050cc:	e15c0000 	cmp	ip, r0
c00050d0:	13a03000 	movne	r3, #0
c00050d4:	e1510002 	cmp	r1, r2
c00050d8:	03a03000 	moveq	r3, #0
c00050dc:	12033001 	andne	r3, r3, #1
c00050e0:	e3530000 	cmp	r3, #0
c00050e4:	1a000025 	bne	c0005180 <_Z11vGic_SwitchP11vGicContextS0_+0xd8>
c00050e8:	e2841010 	add	r1, r4, #16
c00050ec:	e3060bf8 	movw	r0, #27640	; 0x6bf8
c00050f0:	e34c0000 	movt	r0, #49152	; 0xc000
c00050f4:	ebfff0f5 	bl	c00014d0 <_Z23Gic_GetEnableStateGroupP7XScuGicPm>
c00050f8:	e2851010 	add	r1, r5, #16
c00050fc:	e3060bf8 	movw	r0, #27640	; 0x6bf8
c0005100:	e34c0000 	movt	r0, #49152	; 0xc000
c0005104:	ebfff0cf 	bl	c0001448 <_Z18Gic_SetEnableGroupP7XScuGicPm>
c0005108:	e3050be4 	movw	r0, #23524	; 0x5be4
c000510c:	e28d1004 	add	r1, sp, #4
c0005110:	e34c0000 	movt	r0, #49152	; 0xc000
c0005114:	e1a0c004 	mov	ip, r4
c0005118:	e1a02005 	mov	r2, r5
c000511c:	e3a03000 	mov	r3, #0
c0005120:	e28cc004 	add	ip, ip, #4
c0005124:	e2822004 	add	r2, r2, #4
c0005128:	e7907003 	ldr	r7, [r0, r3]
c000512c:	e59ce00c 	ldr	lr, [ip, #12]
c0005130:	e592600c 	ldr	r6, [r2, #12]
c0005134:	e1cee007 	bic	lr, lr, r7
c0005138:	e1cee006 	bic	lr, lr, r6
c000513c:	e781e003 	str	lr, [r1, r3]
c0005140:	e2833004 	add	r3, r3, #4
c0005144:	e353000c 	cmp	r3, #12
c0005148:	1afffff4 	bne	c0005120 <_Z11vGic_SwitchP11vGicContextS0_+0x78>
c000514c:	e3060bf8 	movw	r0, #27640	; 0x6bf8
c0005150:	e34c0000 	movt	r0, #49152	; 0xc000
c0005154:	ebfff0cc 	bl	c000148c <_Z20Gic_ClearEnableGroupP7XScuGicPm>
c0005158:	e3a03000 	mov	r3, #0
c000515c:	e3060bf8 	movw	r0, #27640	; 0x6bf8
c0005160:	e584301c 	str	r3, [r4, #28]
c0005164:	e5843020 	str	r3, [r4, #32]
c0005168:	e34c0000 	movt	r0, #49152	; 0xc000
c000516c:	e5843024 	str	r3, [r4, #36]	; 0x24
c0005170:	e285101c 	add	r1, r5, #28
c0005174:	ebfff072 	bl	c0001344 <_Z19Gic_SetPendingGroupP7XScuGicPm>
c0005178:	e28dd014 	add	sp, sp, #20
c000517c:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
c0005180:	e3a0002a 	mov	r0, #42	; 0x2a
c0005184:	ebffff96 	bl	c0004fe4 <_Z13vtimer_configmm>
c0005188:	eaffffd6 	b	c00050e8 <_Z11vGic_SwitchP11vGicContextS0_+0x40>

c000518c <_Z16vGIC_GetPriorityiPh>:
c000518c:	e1a03000 	mov	r3, r0
c0005190:	e1a02001 	mov	r2, r1
c0005194:	e3060bf8 	movw	r0, #27640	; 0x6bf8
c0005198:	e1a01003 	mov	r1, r3
c000519c:	e34c0000 	movt	r0, #49152	; 0xc000
c00051a0:	eafff0d8 	b	c0001508 <_Z15Gic_GetPriorityP7XScuGicmPh>

c00051a4 <_Z22vGic_SetInterruptStateP11vGicContexti8IRQState>:
c00051a4:	e3520001 	cmp	r2, #1
c00051a8:	e0803001 	add	r3, r0, r1
c00051ac:	05801088 	streq	r1, [r0, #136]	; 0x88
c00051b0:	e5c32028 	strb	r2, [r3, #40]	; 0x28
c00051b4:	012fff1e 	bxeq	lr
c00051b8:	2a000003 	bcs	c00051cc <_Z22vGic_SetInterruptStateP11vGicContexti8IRQState+0x28>
c00051bc:	e3a03000 	mov	r3, #0
c00051c0:	e5803088 	str	r3, [r0, #136]	; 0x88
c00051c4:	e580308c 	str	r3, [r0, #140]	; 0x8c
c00051c8:	e12fff1e 	bx	lr
c00051cc:	e3520002 	cmp	r2, #2
c00051d0:	03a03000 	moveq	r3, #0
c00051d4:	0580108c 	streq	r1, [r0, #140]	; 0x8c
c00051d8:	05803088 	streq	r3, [r0, #136]	; 0x88
c00051dc:	e12fff1e 	bx	lr

c00051e0 <_Z29vGIC_SetInterruptRoutineEntryP11vGicContextm>:
c00051e0:	e580100c 	str	r1, [r0, #12]
c00051e4:	e12fff1e 	bx	lr

c00051e8 <_Z20vGIC_EnableInterrupti>:
c00051e8:	e350001d 	cmp	r0, #29
c00051ec:	e1a01000 	mov	r1, r0
c00051f0:	012fff1e 	bxeq	lr
c00051f4:	e3060bf8 	movw	r0, #27640	; 0x6bf8
c00051f8:	e34c0000 	movt	r0, #49152	; 0xc000
c00051fc:	eafff146 	b	c000171c <_Z14XScuGic_EnableP7XScuGicm>

c0005200 <_Z21vGIC_DisableInterrupti>:
c0005200:	e350001d 	cmp	r0, #29
c0005204:	e1a01000 	mov	r1, r0
c0005208:	012fff1e 	bxeq	lr
c000520c:	e3060bf8 	movw	r0, #27640	; 0x6bf8
c0005210:	e34c0000 	movt	r0, #49152	; 0xc000
c0005214:	eafff149 	b	c0001740 <_Z15XScuGic_DisableP7XScuGicm>

c0005218 <_Z8vGIC_ACKP11vGicContext>:
c0005218:	e1a03000 	mov	r3, r0
c000521c:	e5900088 	ldr	r0, [r0, #136]	; 0x88
c0005220:	e3a02000 	mov	r2, #0
c0005224:	e5832088 	str	r2, [r3, #136]	; 0x88
c0005228:	e0832000 	add	r2, r3, r0
c000522c:	e583008c 	str	r0, [r3, #140]	; 0x8c
c0005230:	e3a03002 	mov	r3, #2
c0005234:	e5c23028 	strb	r3, [r2, #40]	; 0x28
c0005238:	e12fff1e 	bx	lr

c000523c <_Z8vGIC_EOIP11vGicContexti>:
c000523c:	e0801001 	add	r1, r0, r1
c0005240:	e3a03000 	mov	r3, #0
c0005244:	e5803088 	str	r3, [r0, #136]	; 0x88
c0005248:	e5c13028 	strb	r3, [r1, #40]	; 0x28
c000524c:	e580308c 	str	r3, [r0, #140]	; 0x8c
c0005250:	e12fff1e 	bx	lr

Disassembly of section .fini:

c0005254 <_fini>:
c0005254:	e1a0c00d 	mov	ip, sp
c0005258:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
c000525c:	e24cb004 	sub	fp, ip, #4
c0005260:	e24bd028 	sub	sp, fp, #40	; 0x28
c0005264:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
c0005268:	e12fff1e 	bx	lr

Disassembly of section .rodata:

c000526c <__rodata_start>:
c000526c:	20202000 	eorcs	r2, r0, r0
c0005270:	20202020 	eorcs	r2, r0, r0, lsr #32
c0005274:	28282020 	stmdacs	r8!, {r5, sp}
c0005278:	20282828 	eorcs	r2, r8, r8, lsr #16
c000527c:	20202020 	eorcs	r2, r0, r0, lsr #32
c0005280:	20202020 	eorcs	r2, r0, r0, lsr #32
c0005284:	20202020 	eorcs	r2, r0, r0, lsr #32
c0005288:	20202020 	eorcs	r2, r0, r0, lsr #32
c000528c:	10108820 	andsne	r8, r0, r0, lsr #16
c0005290:	10101010 	andsne	r1, r0, r0, lsl r0
c0005294:	10101010 	andsne	r1, r0, r0, lsl r0
c0005298:	10101010 	andsne	r1, r0, r0, lsl r0
c000529c:	04040410 	streq	r0, [r4], #-1040	; 0xfffffbf0
c00052a0:	04040404 	streq	r0, [r4], #-1028	; 0xfffffbfc
c00052a4:	10040404 	andne	r0, r4, r4, lsl #8
c00052a8:	10101010 	andsne	r1, r0, r0, lsl r0
c00052ac:	41411010 	cmpmi	r1, r0, lsl r0
c00052b0:	41414141 	cmpmi	r1, r1, asr #2
c00052b4:	01010101 	tsteq	r1, r1, lsl #2
c00052b8:	01010101 	tsteq	r1, r1, lsl #2
c00052bc:	01010101 	tsteq	r1, r1, lsl #2
c00052c0:	01010101 	tsteq	r1, r1, lsl #2
c00052c4:	01010101 	tsteq	r1, r1, lsl #2
c00052c8:	10101010 	andsne	r1, r0, r0, lsl r0
c00052cc:	42421010 	submi	r1, r2, #16
c00052d0:	42424242 	submi	r4, r2, #536870916	; 0x20000004
c00052d4:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
c00052d8:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
c00052dc:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
c00052e0:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
c00052e4:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
c00052e8:	10101010 	andsne	r1, r0, r0, lsl r0
c00052ec:	00000020 	andeq	r0, r0, r0, lsr #32
	...

c0005370 <_ZL18TmrCtrOptionsTable>:
c0005370:	00000001 	andeq	r0, r0, r1
c0005374:	00000020 	andeq	r0, r0, r0, lsr #32
c0005378:	00000000 	andeq	r0, r0, r0
c000537c:	00000002 	andeq	r0, r0, r2
c0005380:	00000040 	andeq	r0, r0, r0, asr #32
c0005384:	00000000 	andeq	r0, r0, r0
c0005388:	00000004 	andeq	r0, r0, r4
c000538c:	00000002 	andeq	r0, r0, r2
c0005390:	0000000c 	andeq	r0, r0, ip
c0005394:	00000008 	andeq	r0, r0, r8
c0005398:	00000004 	andeq	r0, r0, r4
c000539c:	0000000c 	andeq	r0, r0, ip
c00053a0:	00000010 	andeq	r0, r0, r0, lsl r0
c00053a4:	00000008 	andeq	r0, r0, r8
c00053a8:	0000000c 	andeq	r0, r0, ip
c00053ac:	00000020 	andeq	r0, r0, r0, lsr #32
c00053b0:	00000020 	andeq	r0, r0, r0, lsr #32
c00053b4:	0000000c 	andeq	r0, r0, ip
c00053b8:	00000040 	andeq	r0, r0, r0, asr #32
c00053bc:	00000040 	andeq	r0, r0, r0, asr #32
c00053c0:	0000000c 	andeq	r0, r0, ip
c00053c4:	52415720 	subpl	r5, r1, #32, 14	; 0x800000
c00053c8:	474e494e 	strbmi	r4, [lr, -lr, asr #18]
c00053cc:	6e55203a 	mrcvs	0, 2, r2, cr5, cr10, {1}
c00053d0:	646e6168 	strbtvs	r6, [lr], #-360	; 0xfffffe98
c00053d4:	2064656c 	rsbcs	r6, r4, ip, ror #10
c00053d8:	3a515249 	bcc	c1459d04 <__bss_end+0x59d04>
c00053dc:	0a642520 	beq	c190e864 <__bss_end+0x50e864>
c00053e0:	0000000d 	andeq	r0, r0, sp
c00053e4:	74726956 	ldrbtvc	r6, [r2], #-2390	; 0xfffff6aa
c00053e8:	206c6175 	rsbcs	r6, ip, r5, ror r1
c00053ec:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
c00053f0:	73692072 	cmnvc	r9, #114	; 0x72
c00053f4:	74657320 	strbtvc	r7, [r5], #-800	; 0xfffffce0
c00053f8:	206f7420 	rsbcs	r7, pc, r0, lsr #8
c00053fc:	65657266 	strbvs	r7, [r5, #-614]!	; 0xfffffd9a
c0005400:	6e75722d 	cdpvs	2, 7, cr7, cr5, cr13, {1}
c0005404:	676e696e 	strbvs	r6, [lr, -lr, ror #18]!
c0005408:	0d0a2021 	stceq	0, cr2, [sl, #-132]	; 0xffffff7c
c000540c:	00000000 	andeq	r0, r0, r0
c0005410:	33323130 	teqcc	r2, #48, 2
c0005414:	37363534 			; <UNDEFINED> instruction: 0x37363534
c0005418:	42413938 	submi	r3, r1, #56, 18	; 0xe0000
c000541c:	46454443 	strbmi	r4, [r5], -r3, asr #8
c0005420:	00000000 	andeq	r0, r0, r0
c0005424:	494d5628 	stmdbmi	sp, {r3, r5, r9, sl, ip, lr}^
c0005428:	64253d44 	strtvs	r3, [r5], #-3396	; 0xfffff2bc
c000542c:	000d0a29 	andeq	r0, sp, r9, lsr #20
c0005430:	4f525245 	svcmi	0x00525245
c0005434:	55203a52 	strpl	r3, [r0, #-2642]!	; 0xfffff5ae
c0005438:	6f6e6b6e 	svcvs	0x006e6b6e
c000543c:	67206e77 			; <UNDEFINED> instruction: 0x67206e77
c0005440:	74736575 	ldrbtvc	r6, [r3], #-1397	; 0xfffffa8b
c0005444:	20534f20 	subscs	r4, r3, r0, lsr #30
c0005448:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
c000544c:	0d0a2021 	stceq	0, cr2, [sl, #-132]	; 0xffffff7c
c0005450:	00000000 	andeq	r0, r0, r0
c0005454:	63450d0a 	movtvs	r0, #23818	; 0x5d0a
c0005458:	6f723a3a 	svcvs	0x00723a3a
c000545c:	695f746f 	ldmdbvs	pc, {r0, r1, r2, r3, r5, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
c0005460:	6b6f766e 	blvs	c1be2e20 <__bss_end+0x7e2e20>
c0005464:	53203a65 	teqpl	r0, #413696	; 0x65000
c0005468:	74726174 	ldrbtvc	r6, [r2], #-372	; 0xfffffe8c
c000546c:	0d0a2020 	stceq	0, cr2, [sl, #-128]	; 0xffffff80
c0005470:	00000000 	andeq	r0, r0, r0
c0005474:	3a3a6345 	bcc	c0e9e190 <_mempool_f+0xe92190>
c0005478:	746f6f72 	strbtvc	r6, [pc], #-3954	; c0005480 <_ZL18TmrCtrOptionsTable+0x110>
c000547c:	766e695f 			; <UNDEFINED> instruction: 0x766e695f
c0005480:	3a656b6f 	bcc	c1960244 <__bss_end+0x560244>
c0005484:	206f4e20 	rsbcs	r4, pc, r0, lsr #28
c0005488:	0a464c45 	beq	c11985a4 <_mempool_f+0x118c5a4>
c000548c:	00000000 	andeq	r0, r0, r0
c0005490:	3a3a6345 	bcc	c0e9e1ac <_mempool_f+0xe921ac>
c0005494:	746f6f72 	strbtvc	r6, [pc], #-3954	; c000549c <_ZL18TmrCtrOptionsTable+0x12c>
c0005498:	766e695f 			; <UNDEFINED> instruction: 0x766e695f
c000549c:	3a656b6f 	bcc	c1960260 <__bss_end+0x560260>
c00054a0:	67656220 	strbvs	r6, [r5, -r0, lsr #4]!
c00054a4:	74206e69 	strtvc	r6, [r0], #-3689	; 0xfffff197
c00054a8:	6f6c206f 	svcvs	0x006c206f
c00054ac:	70206461 	eorvc	r6, r0, r1, ror #8
c00054b0:	72676f72 	rsbvc	r6, r7, #456	; 0x1c8
c00054b4:	20206d61 	eorcs	r6, r0, r1, ror #26
c00054b8:	00000d0a 	andeq	r0, r0, sl, lsl #26
c00054bc:	3a3a6345 	bcc	c0e9e1d8 <_mempool_f+0xe921d8>
c00054c0:	746f6f72 	strbtvc	r6, [pc], #-3954	; c00054c8 <_ZL18TmrCtrOptionsTable+0x158>
c00054c4:	766e695f 			; <UNDEFINED> instruction: 0x766e695f
c00054c8:	3a656b6f 	bcc	c196028c <__bss_end+0x56028c>
c00054cc:	64614220 	strbtvs	r4, [r1], #-544	; 0xfffffde0
c00054d0:	464c4520 	strbmi	r4, [ip], -r0, lsr #10
c00054d4:	0000000a 	andeq	r0, r0, sl
c00054d8:	3a3a6345 	bcc	c0e9e1f4 <_mempool_f+0xe921f4>
c00054dc:	746f6f72 	strbtvc	r6, [pc], #-3954	; c00054e4 <_ZL18TmrCtrOptionsTable+0x174>
c00054e0:	766e695f 			; <UNDEFINED> instruction: 0x766e695f
c00054e4:	3a656b6f 	bcc	c19602a8 <__bss_end+0x5602a8>
c00054e8:	63757320 	cmnvs	r5, #32, 6	; 0x80000000
c00054ec:	73736563 	cmnvc	r3, #415236096	; 0x18c00000
c00054f0:	206f7420 	rsbcs	r7, pc, r0, lsr #8
c00054f4:	64616f6c 	strbtvs	r6, [r1], #-3948	; 0xfffff094
c00054f8:	65737520 	ldrbvs	r7, [r3, #-1312]!	; 0xfffffae0
c00054fc:	72702072 	rsbsvc	r2, r0, #114	; 0x72
c0005500:	6172676f 	cmnvs	r2, pc, ror #14
c0005504:	0a20206d 	beq	c080d6c0 <_mempool_f+0x8016c0>
c0005508:	0000000d 	andeq	r0, r0, sp
c000550c:	2d2d2d09 	stccs	13, cr2, [sp, #-36]!	; 0xffffffdc
c0005510:	253a4345 	ldrcs	r4, [sl, #-837]!	; 0xfffffcbb
c0005514:	203a2078 	eorscs	r2, sl, r8, ror r0
c0005518:	5f737953 	svcpl	0x00737953
c000551c:	61657263 	cmnvs	r5, r3, ror #4
c0005520:	655f6574 	ldrbvs	r6, [pc, #-1396]	; c0004fb4 <_Z8irq_initv+0x74>
c0005524:	43452063 	movtmi	r2, #20579	; 0x5063
c0005528:	2078253a 	rsbscs	r2, r8, sl, lsr r5
c000552c:	3d435028 	stclcc	0, cr5, [r3, #-160]	; 0xffffff60
c0005530:	53207825 	teqpl	r0, #2424832	; 0x250000
c0005534:	78253d50 	stmdavc	r5!, {r4, r6, r8, sl, fp, ip, sp}
c0005538:	3d725020 	ldclcc	0, cr5, [r2, #-128]!	; 0xffffff80
c000553c:	0a296425 	beq	c0a5e5d8 <_mempool_f+0xa525d8>
c0005540:	0000000d 	andeq	r0, r0, sp
c0005544:	61766e49 	cmnvs	r6, r9, asr #28
c0005548:	2064696c 	rsbcs	r6, r4, ip, ror #18
c000554c:	74726976 	ldrbtvc	r6, [r2], #-2422	; 0xfffff68a
c0005550:	206c6175 	rsbcs	r6, ip, r5, ror r1
c0005554:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
c0005558:	706f2072 	rsbvc	r2, pc, r2, ror r0	; <UNPREDICTABLE>
c000555c:	74617265 	strbtvc	r7, [r1], #-613	; 0xfffffd9b
c0005560:	216e6f69 	cmncs	lr, r9, ror #30
c0005564:	000d0a20 	andeq	r0, sp, r0, lsr #20
c0005568:	74726956 	ldrbtvc	r6, [r2], #-2390	; 0xfffff6aa
c000556c:	206c6175 	rsbcs	r6, ip, r5, ror r1
c0005570:	20515249 	subscs	r5, r1, r9, asr #4
c0005574:	7265706f 	rsbvc	r7, r5, #111	; 0x6f
c0005578:	6f697461 	svcvs	0x00697461
c000557c:	7265206e 	rsbvc	r2, r5, #110	; 0x6e
c0005580:	21726f72 	cmncs	r2, r2, ror pc
c0005584:	000d0a20 	andeq	r0, sp, r0, lsr #20
c0005588:	3a207441 	bcc	c0822694 <_mempool_f+0x816694>
c000558c:	20782520 	rsbscs	r2, r8, r0, lsr #10
c0005590:	7825202c 	stmdavc	r5!, {r2, r3, r5, sp}
c0005594:	25202c20 	strcs	r2, [r0, #-3104]!	; 0xfffff3e0
c0005598:	0d0a2078 	stceq	0, cr2, [sl, #-480]	; 0xfffffe20
c000559c:	00000000 	andeq	r0, r0, r0
c00055a0:	2077654e 	rsbscs	r6, r7, lr, asr #10
c00055a4:	6920534f 	stmdbvs	r0!, {r0, r1, r2, r3, r6, r8, r9, ip, lr}
c00055a8:	3a6f666e 	bcc	c1bdef68 <__bss_end+0x7def68>
c00055ac:	20782520 	rsbscs	r2, r8, r0, lsr #10
c00055b0:	7825202c 	stmdavc	r5!, {r2, r3, r5, sp}
c00055b4:	25202c20 	strcs	r2, [r0, #-3104]!	; 0xfffff3e0
c00055b8:	0d0a2078 	stceq	0, cr2, [sl, #-480]	; 0xfffffe20
c00055bc:	00000000 	andeq	r0, r0, r0
c00055c0:	64616853 	strbtvs	r6, [r1], #-2131	; 0xfffff7ad
c00055c4:	7020776f 	eorvc	r7, r0, pc, ror #14
c00055c8:	20726964 	rsbscs	r6, r2, r4, ror #18
c00055cc:	63207369 	teqvs	r0, #-1543503871	; 0xa4000001
c00055d0:	74616572 	strbtvc	r6, [r1], #-1394	; 0xfffffa8e
c00055d4:	61206465 	teqvs	r0, r5, ror #8
c00055d8:	203a2074 	eorscs	r2, sl, r4, ror r0
c00055dc:	20207825 	eorcs	r7, r0, r5, lsr #16
c00055e0:	00000d0a 	andeq	r0, r0, sl, lsl #26
c00055e4:	2d2d2d09 	stccs	13, cr2, [sp, #-36]!	; 0xffffffdc
c00055e8:	253a4345 	ldrcs	r4, [sl, #-837]!	; 0xfffffcbb
c00055ec:	203a2078 	eorscs	r2, sl, r8, ror r0
c00055f0:	5f737973 	svcpl	0x00737973
c00055f4:	61657263 	cmnvs	r5, r3, ror #4
c00055f8:	675f6574 			; <UNDEFINED> instruction: 0x675f6574
c00055fc:	74736575 	ldrbtvc	r6, [r3], #-1397	; 0xfffffa8b
c0005600:	20736f5f 	rsbscs	r6, r3, pc, asr pc
c0005604:	253a4345 	ldrcs	r4, [sl, #-837]!	; 0xfffffcbb
c0005608:	50282078 	eorpl	r2, r8, r8, ror r0
c000560c:	78253d43 	stmdavc	r5!, {r0, r1, r6, r8, sl, fp, ip, sp}
c0005610:	3d725020 	ldclcc	0, cr5, [r2, #-128]!	; 0xffffff80
c0005614:	50206425 	eorpl	r6, r0, r5, lsr #8
c0005618:	3d524944 	ldclcc	9, cr4, [r2, #-272]	; 0xfffffef0
c000561c:	0a297825 	beq	c0a636b8 <_mempool_f+0xa576b8>
c0005620:	0000000d 	andeq	r0, r0, sp
c0005624:	635f6365 	cmpvs	pc, #-1811939327	; 0x94000001
c0005628:	676e6168 	strbvs	r6, [lr, -r8, ror #2]!
c000562c:	72652065 	rsbvc	r2, r5, #101	; 0x65
c0005630:	3a726f72 	bcc	c1ca1400 <__bss_end+0x8a1400>
c0005634:	766e6920 	strbtvc	r6, [lr], -r0, lsr #18
c0005638:	64696c61 	strbtvs	r6, [r9], #-3169	; 0xfffff39f
c000563c:	61687320 	cmnvs	r8, r0, lsr #6
c0005640:	20776f64 	rsbscs	r6, r7, r4, ror #30
c0005644:	72696470 	rsbvc	r6, r9, #112, 8	; 0x70000000
c0005648:	000d0a20 	andeq	r0, sp, r0, lsr #20
c000564c:	2d202009 	stccs	0, cr2, [r0, #-36]!	; 0xffffffdc
c0005650:	63452d2d 	movtvs	r2, #23853	; 0x5d2d
c0005654:	63533a3a 	cmpvs	r3, #237568	; 0x3a000
c0005658:	75646568 	strbvc	r6, [r4, #-1384]!	; 0xfffffa98
c000565c:	203a656c 	eorscs	r6, sl, ip, ror #10
c0005660:	4f525245 	svcmi	0x00525245
c0005664:	4e203a52 	mcrmi	10, 1, r3, cr0, cr2, {2}
c0005668:	6176206f 	cmnvs	r6, pc, rrx
c000566c:	2064696c 	rsbcs	r6, r4, ip, ror #18
c0005670:	0a2e4345 	beq	c0b9638c <_mempool_f+0xb8a38c>
c0005674:	0000000d 	andeq	r0, r0, sp
c0005678:	6f727245 	svcvs	0x00727245
c000567c:	75203a72 	strvc	r3, [r0, #-2674]!	; 0xfffff58e
c0005680:	6f6e6b6e 	svcvs	0x006e6b6e
c0005684:	73206e77 	teqvc	r0, #1904	; 0x770
c0005688:	69767265 	ldmdbvs	r6!, {r0, r2, r5, r6, r9, ip, sp, lr}^
c000568c:	20216563 	eorcs	r6, r1, r3, ror #10
c0005690:	00000d0a 	andeq	r0, r0, sl, lsl #26
c0005694:	53595309 	cmppl	r9, #603979776	; 0x24000000
c0005698:	4c4c4143 	stfmie	f4, [ip], {67}	; 0x43
c000569c:	73202d20 	teqvc	r0, #32, 26	; 0x800
c00056a0:	635f7379 	cmpvs	pc, #-469762047	; 0xe4000001
c00056a4:	74616572 	strbtvc	r6, [r1], #-1394	; 0xfffffa8e
c00056a8:	63655f65 	cmnvs	r5, #404	; 0x194
c00056ac:	00000d0a 	andeq	r0, r0, sl, lsl #26
c00056b0:	53595309 	cmppl	r9, #603979776	; 0x24000000
c00056b4:	4c4c4143 	stfmie	f4, [ip], {67}	; 0x43
c00056b8:	52202d20 	eorpl	r2, r0, #32, 26	; 0x800
c00056bc:	70616d65 	rsbvc	r6, r1, r5, ror #26
c00056c0:	65737520 	ldrbvs	r7, [r3, #-1312]!	; 0xfffffae0
c00056c4:	70732072 	rsbsvc	r2, r3, r2, ror r0
c00056c8:	0a656361 	beq	c195e454 <__bss_end+0x55e454>
c00056cc:	0000000d 	andeq	r0, r0, sp
c00056d0:	53595309 	cmppl	r9, #603979776	; 0x24000000
c00056d4:	4c4c4143 	stfmie	f4, [ip], {67}	; 0x43
c00056d8:	49202d20 	stmdbmi	r0!, {r5, r8, sl, fp, sp}
c00056dc:	7265736e 	rsbvc	r7, r5, #-1207959551	; 0xb8000001
c00056e0:	616d2074 	smcvs	53764	; 0xd204
c00056e4:	6e697070 	mcrvs	0, 3, r7, cr9, cr0, {3}
c00056e8:	000d0a67 	andeq	r0, sp, r7, ror #20
c00056ec:	53595309 	cmppl	r9, #603979776	; 0x24000000
c00056f0:	4c4c4143 	stfmie	f4, [ip], {67}	; 0x43
c00056f4:	43202d20 	teqmi	r0, #32, 26	; 0x800
c00056f8:	74616572 	strbtvc	r6, [r1], #-1394	; 0xfffffa8e
c00056fc:	656d2065 	strbvs	r2, [sp, #-101]!	; 0xffffff9b
c0005700:	67617373 			; <UNDEFINED> instruction: 0x67617373
c0005704:	6f622065 	svcvs	0x00622065
c0005708:	20736578 	rsbscs	r6, r3, r8, ror r5
c000570c:	00000d0a 	andeq	r0, r0, sl, lsl #26
c0005710:	53595309 	cmppl	r9, #603979776	; 0x24000000
c0005714:	4c4c4143 	stfmie	f4, [ip], {67}	; 0x43
c0005718:	50202d20 	eorpl	r2, r0, r0, lsr #26
c000571c:	2074736f 	rsbscs	r7, r4, pc, ror #6
c0005720:	656d2061 	strbvs	r2, [sp, #-97]!	; 0xffffff9f
c0005724:	67617373 			; <UNDEFINED> instruction: 0x67617373
c0005728:	0d0a2065 	stceq	0, cr2, [sl, #-404]	; 0xfffffe6c
c000572c:	00000000 	andeq	r0, r0, r0
c0005730:	53595309 	cmppl	r9, #603979776	; 0x24000000
c0005734:	4c4c4143 	stfmie	f4, [ip], {67}	; 0x43
c0005738:	52202d20 	eorpl	r2, r0, #32, 26	; 0x800
c000573c:	20646165 	rsbcs	r6, r4, r5, ror #2
c0005740:	656d2061 	strbvs	r2, [sp, #-97]!	; 0xffffff9f
c0005744:	67617373 			; <UNDEFINED> instruction: 0x67617373
c0005748:	0d0a2065 	stceq	0, cr2, [sl, #-404]	; 0xfffffe6c
c000574c:	00000000 	andeq	r0, r0, r0
c0005750:	53595309 	cmppl	r9, #603979776	; 0x24000000
c0005754:	4c4c4143 	stfmie	f4, [ip], {67}	; 0x43
c0005758:	43202d20 	teqmi	r0, #32, 26	; 0x800
c000575c:	74616572 	strbtvc	r6, [r1], #-1394	; 0xfffffa8e
c0005760:	20612065 	rsbcs	r2, r1, r5, rrx
c0005764:	64616873 	strbtvs	r6, [r1], #-2163	; 0xfffff78d
c0005768:	6d20776f 	stcvs	7, cr7, [r0, #-444]!	; 0xfffffe44
c000576c:	69707061 	ldmdbvs	r0!, {r0, r5, r6, ip, sp, lr}^
c0005770:	0a20676e 	beq	c081f530 <_mempool_f+0x813530>
c0005774:	0000000d 	andeq	r0, r0, sp
c0005778:	53595309 	cmppl	r9, #603979776	; 0x24000000
c000577c:	4c4c4143 	stfmie	f4, [ip], {67}	; 0x43
c0005780:	43202d20 	teqmi	r0, #32, 26	; 0x800
c0005784:	74616572 	strbtvc	r6, [r1], #-1394	; 0xfffffa8e
c0005788:	20612065 	rsbcs	r2, r1, r5, rrx
c000578c:	73657567 	cmnvc	r5, #432013312	; 0x19c00000
c0005790:	534f2074 	movtpl	r2, #61556	; 0xf074
c0005794:	20434520 	subcs	r4, r3, r0, lsr #10
c0005798:	00000d0a 	andeq	r0, r0, sl, lsl #26
c000579c:	53595309 	cmppl	r9, #603979776	; 0x24000000
c00057a0:	4c4c4143 	stfmie	f4, [ip], {67}	; 0x43
c00057a4:	52202d20 	eorpl	r2, r0, #32, 26	; 0x800
c00057a8:	68637365 	stmdavs	r3!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}^
c00057ac:	6c756465 	cfldrdvs	mvd6, [r5], #-404	; 0xfffffe6c
c00057b0:	6c612065 	stclvs	0, cr2, [r1], #-404	; 0xfffffe6c
c00057b4:	4345206c 	movtmi	r2, #20588	; 0x506c
c00057b8:	0d0a2073 	stceq	0, cr2, [sl, #-460]	; 0xfffffe34
c00057bc:	00000000 	andeq	r0, r0, r0
c00057c0:	53595309 	cmppl	r9, #603979776	; 0x24000000
c00057c4:	4c4c4143 	stfmie	f4, [ip], {67}	; 0x43
c00057c8:	52202d20 	eorpl	r2, r0, #32, 26	; 0x800
c00057cc:	73696765 	cmnvc	r9, #26476544	; 0x1940000
c00057d0:	20726574 	rsbscs	r6, r2, r4, ror r5
c00057d4:	74207768 	strtvc	r7, [r0], #-1896	; 0xfffff898
c00057d8:	206b7361 	rsbcs	r7, fp, r1, ror #6
c00057dc:	616e616d 	cmnvs	lr, sp, ror #2
c00057e0:	20726567 	rsbscs	r6, r2, r7, ror #10
c00057e4:	00000d0a 	andeq	r0, r0, sl, lsl #26
c00057e8:	53595309 	cmppl	r9, #603979776	; 0x24000000
c00057ec:	4c4c4143 	stfmie	f4, [ip], {67}	; 0x43
c00057f0:	43202d20 	teqmi	r0, #32, 26	; 0x800
c00057f4:	74616572 	strbtvc	r6, [r1], #-1394	; 0xfffffa8e
c00057f8:	20612065 	rsbcs	r2, r1, r5, rrx
c00057fc:	73657567 	cmnvc	r5, #432013312	; 0x19c00000
c0005800:	54522074 	ldrbpl	r2, [r2], #-116	; 0xffffff8c
c0005804:	0a20534f 	beq	c081a548 <_mempool_f+0x80e548>
c0005808:	0000000d 	andeq	r0, r0, sp
c000580c:	63737973 	cmnvs	r3, #1884160	; 0x1cc000
c0005810:	206c6c61 	rsbcs	r6, ip, r1, ror #24
c0005814:	2d206425 	cfstrscs	mvf6, [r0, #-148]!	; 0xffffff6c
c0005818:	6b6e7520 	blvs	c1ba2ca0 <__bss_end+0x7a2ca0>
c000581c:	6e776f6e 	cdpvs	15, 7, cr6, cr7, cr14, {3}
c0005820:	0000000a 	andeq	r0, r0, sl
c0005824:	5b207441 	blpl	c0822930 <_mempool_f+0x816930>
c0005828:	78257830 	stmdavc	r5!, {r4, r5, fp, ip, sp, lr}
c000582c:	00203a5d 	eoreq	r3, r0, sp, asr sl
c0005830:	74736e49 	ldrbtvc	r6, [r3], #-3657	; 0xfffff1b7
c0005834:	74637572 	strbtvc	r7, [r3], #-1394	; 0xfffffa8e
c0005838:	206e6f69 	rsbcs	r6, lr, r9, ror #30
c000583c:	70617274 	rsbvc	r7, r1, r4, ror r2
c0005840:	72726520 	rsbsvc	r6, r2, #32, 10	; 0x8000000
c0005844:	202e726f 	eorcs	r7, lr, pc, ror #4
c0005848:	00000d0a 	andeq	r0, r0, sl, lsl #26
c000584c:	41544144 	cmpmi	r4, r4, asr #2
c0005850:	4f424120 	svcmi	0x00424120
c0005854:	203a5452 	eorscs	r5, sl, r2, asr r4
c0005858:	253d4350 	ldrcs	r4, [sp, #-848]!	; 0xfffffcb0
c000585c:	41202c78 	teqmi	r0, r8, ror ip
c0005860:	3d726464 	cfldrdcc	mvd6, [r2, #-400]!	; 0xfffffe70
c0005864:	202c7825 	eorcs	r7, ip, r5, lsr #16
c0005868:	253d504f 	ldrcs	r5, [sp, #-79]!	; 0xffffffb1
c000586c:	000d0a78 	andeq	r0, sp, r8, ror sl
c0005870:	4f525245 	svcmi	0x00525245
c0005874:	0a202152 	beq	c080ddc4 <_mempool_f+0x801dc4>
c0005878:	0000000d 	andeq	r0, r0, sp
c000587c:	45435845 	strbmi	r5, [r3, #-2117]	; 0xfffff7bb
c0005880:	4f495450 	svcmi	0x00495450
c0005884:	50203a4e 	eorpl	r3, r0, lr, asr #20
c0005888:	45464552 	strbmi	r4, [r6, #-1362]	; 0xfffffaae
c000588c:	2e484354 	mcrcs	3, 2, r4, cr8, cr4, {2}
c0005890:	000d0a20 	andeq	r0, sp, r0, lsr #20
c0005894:	3a73250c 	bcc	c1cceccc <__bss_end+0x8ceccc>
c0005898:	20732520 	rsbscs	r2, r3, r0, lsr #10
c000589c:	5b207325 	blpl	c0822538 <_mempool_f+0x816538>
c00058a0:	0a5d7325 	beq	c176253c <__bss_end+0x36253c>
c00058a4:	000d0a0d 	andeq	r0, sp, sp, lsl #20
c00058a8:	2072614d 	rsbscs	r6, r2, sp, asr #2
c00058ac:	32203332 	eorcc	r3, r0, #-939524096	; 0xc8000000
c00058b0:	00363130 	eorseq	r3, r6, r0, lsr r1
c00058b4:	353a3631 	ldrcc	r3, [sl, #-1585]!	; 0xfffff9cf
c00058b8:	37353a36 			; <UNDEFINED> instruction: 0x37353a36
c00058bc:	00000000 	andeq	r0, r0, r0
c00058c0:	20636367 	rsbcs	r6, r3, r7, ror #6
c00058c4:	2e372e34 	mrccs	14, 1, r2, cr7, cr4, {1}
c00058c8:	00000033 	andeq	r0, r0, r3, lsr r0
c00058cc:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
c00058d0:	63657320 	cmnvs	r5, #32, 6	; 0x80000000
c00058d4:	6e6f6974 	mcrvs	9, 3, r6, cr15, cr4, {3}
c00058d8:	73616820 	cmnvc	r1, #32, 16	; 0x200000
c00058dc:	65656220 	strbvs	r6, [r5, #-544]!	; 0xfffffde0
c00058e0:	6e75206e 	cdpvs	0, 7, cr2, cr5, cr14, {3}
c00058e4:	7070616d 	rsbsvc	r6, r0, sp, ror #2
c00058e8:	0a206465 	beq	c081ea84 <_mempool_f+0x812a84>
c00058ec:	0000000d 	andeq	r0, r0, sp
c00058f0:	41564f4e 	cmpmi	r6, lr, asr #30
c00058f4:	63694d20 	cmnvs	r9, #32, 26	; 0x800
c00058f8:	79686f72 	stmdbvc	r8!, {r1, r4, r5, r6, r8, r9, sl, fp, sp, lr}^
c00058fc:	76726570 			; <UNDEFINED> instruction: 0x76726570
c0005900:	726f7369 	rsbvc	r7, pc, #-1543503871	; 0xa4000001
c0005904:	4d524120 	ldfmie	f4, [r2, #-128]	; 0xffffff80
c0005908:	72657620 	rsbvc	r7, r5, #32, 12	; 0x2000000
c000590c:	6e6f6973 	mcrvs	9, 3, r6, cr15, cr3, {3}
c0005910:	00000000 	andeq	r0, r0, r0
c0005914:	6c6c614b 	stfvse	f6, [ip], #-300	; 0xfffffed4
c0005918:	3a3a636f 	bcc	c0e9e6dc <_mempool_f+0xe926dc>
c000591c:	6f6c6c61 	svcvs	0x006c6c61
c0005920:	61705f63 	cmnvs	r0, r3, ror #30
c0005924:	203a6567 	eorscs	r6, sl, r7, ror #10
c0005928:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
c000592c:	68206c65 	stmdavs	r0!, {r0, r2, r5, r6, sl, fp, sp, lr}
c0005930:	6e207361 	cdpvs	3, 2, cr7, cr0, cr1, {3}
c0005934:	656d206f 	strbvs	r2, [sp, #-111]!	; 0xffffff91
c0005938:	00000a6d 	andeq	r0, r0, sp, ror #20
c000593c:	6c6c614b 	stfvse	f6, [ip], #-300	; 0xfffffed4
c0005940:	613a636f 	teqvs	sl, pc, ror #6
c0005944:	636f6c6c 	cmnvs	pc, #108, 24	; 0x6c00
c0005948:	6168735f 	cmnvs	r8, pc, asr r3
c000594c:	5f776f64 	svcpl	0x00776f64
c0005950:	72696470 	rsbvc	r6, r9, #112, 8	; 0x70000000
c0005954:	656b203a 	strbvs	r2, [fp, #-58]!	; 0xffffffc6
c0005958:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
c000595c:	73616820 	cmnvc	r1, #32, 16	; 0x200000
c0005960:	206f6e20 	rsbcs	r6, pc, r0, lsr #28
c0005964:	0a6d656d 	beq	c1b5ef20 <__bss_end+0x75ef20>
c0005968:	0000000d 	andeq	r0, r0, sp
c000596c:	6c6c614b 	stfvse	f6, [ip], #-300	; 0xfffffed4
c0005970:	3a3a636f 	bcc	c0e9e734 <_mempool_f+0xe92734>
c0005974:	6f6c6c61 	svcvs	0x006c6c61
c0005978:	68735f63 	ldmdavs	r3!, {r0, r1, r5, r6, r8, r9, sl, fp, ip, lr}^
c000597c:	776f6461 	strbvc	r6, [pc, -r1, ror #8]!
c0005980:	6964705f 	stmdbvs	r4!, {r0, r1, r2, r3, r4, r6, ip, sp, lr}^
c0005984:	62203a72 	eorvs	r3, r0, #466944	; 0x72000
c0005988:	6e696765 	cdpvs	7, 6, cr6, cr9, cr5, {3}
c000598c:	20736920 	rsbscs	r6, r3, r0, lsr #18
c0005990:	6e616863 	cdpvs	8, 6, cr6, cr1, cr3, {3}
c0005994:	3a646567 	bcc	c191ef38 <__bss_end+0x51ef38>
c0005998:	0a782520 	beq	c1e0ee20 <__bss_end+0xa0ee20>
c000599c:	0000000d 	andeq	r0, r0, sp
c00059a0:	2d2d0909 	stccs	9, cr0, [sp, #-36]!	; 0xffffffdc
c00059a4:	6267734d 	rsbvs	r7, r7, #872415233	; 0x34000001
c00059a8:	6320786f 	teqvs	r0, #7274496	; 0x6f0000
c00059ac:	74616572 	strbtvc	r6, [r1], #-1394	; 0xfffffa8e
c00059b0:	203a6465 	eorscs	r6, sl, r5, ror #8
c00059b4:	3d204449 	cfstrscc	mvf4, [r0, #-292]!	; 0xfffffedc
c00059b8:	2c642520 	cfstr64cs	mvdx2, [r4], #-128	; 0xffffff80
c00059bc:	64646120 	strbtvs	r6, [r4], #-288	; 0xfffffee0
c00059c0:	203d2072 	eorscs	r2, sp, r2, ror r0
c00059c4:	0a207825 	beq	c0823a60 <_mempool_f+0x817a60>
c00059c8:	0000000d 	andeq	r0, r0, sp
c00059cc:	2d2d0909 	stccs	9, cr0, [sp, #-36]!	; 0xffffffdc
c00059d0:	73654d2d 	cmnvc	r5, #2880	; 0xb40
c00059d4:	65676173 	strbvs	r6, [r7, #-371]!	; 0xfffffe8d
c00059d8:	786f6220 	stmdavc	pc!, {r5, r9, sp, lr}^	; <UNPREDICTABLE>
c00059dc:	736f7020 	cmnvc	pc, #32
c00059e0:	72652074 	rsbvc	r2, r5, #116	; 0x74
c00059e4:	3a726f72 	bcc	c1ca17b4 <__bss_end+0x8a17b4>
c00059e8:	4c554620 	mrrcmi	6, 2, r4, r5, cr0
c00059ec:	0d0a204c 	stceq	0, cr2, [sl, #-304]	; 0xfffffed0
c00059f0:	00000000 	andeq	r0, r0, r0
c00059f4:	2d2d0909 	stccs	9, cr0, [sp, #-36]!	; 0xffffffdc
c00059f8:	73654d2d 	cmnvc	r5, #2880	; 0xb40
c00059fc:	65676173 	strbvs	r6, [r7, #-371]!	; 0xfffffe8d
c0005a00:	786f6220 	stmdavc	pc!, {r5, r9, sp, lr}^	; <UNPREDICTABLE>
c0005a04:	736f7020 	cmnvc	pc, #32
c0005a08:	72652074 	rsbvc	r2, r5, #116	; 0x74
c0005a0c:	3a726f72 	bcc	c1ca17dc <__bss_end+0x8a17dc>
c0005a10:	6b6e5520 	blvs	c1b9ae98 <__bss_end+0x79ae98>
c0005a14:	6e776f6e 	cdpvs	15, 7, cr6, cr7, cr14, {3}
c0005a18:	61747320 	cmnvs	r4, r0, lsr #6
c0005a1c:	0a206574 	beq	c081eff4 <_mempool_f+0x812ff4>
c0005a20:	0000000d 	andeq	r0, r0, sp
c0005a24:	2d2d0909 	stccs	9, cr0, [sp, #-36]!	; 0xffffffdc
c0005a28:	73654d2d 	cmnvc	r5, #2880	; 0xb40
c0005a2c:	65676173 	strbvs	r6, [r7, #-371]!	; 0xfffffe8d
c0005a30:	786f6220 	stmdavc	pc!, {r5, r9, sp, lr}^	; <UNPREDICTABLE>
c0005a34:	61657220 	cmnvs	r5, r0, lsr #4
c0005a38:	72652064 	rsbvc	r2, r5, #100	; 0x64
c0005a3c:	3a726f72 	bcc	c1ca180c <__bss_end+0x8a180c>
c0005a40:	504d4520 	subpl	r4, sp, r0, lsr #10
c0005a44:	0a205954 	beq	c081bf9c <_mempool_f+0x80ff9c>
c0005a48:	0000000d 	andeq	r0, r0, sp
c0005a4c:	2d2d0909 	stccs	9, cr0, [sp, #-36]!	; 0xffffffdc
c0005a50:	73654d2d 	cmnvc	r5, #2880	; 0xb40
c0005a54:	65676173 	strbvs	r6, [r7, #-371]!	; 0xfffffe8d
c0005a58:	786f6220 	stmdavc	pc!, {r5, r9, sp, lr}^	; <UNPREDICTABLE>
c0005a5c:	61657220 	cmnvs	r5, r0, lsr #4
c0005a60:	72652064 	rsbvc	r2, r5, #100	; 0x64
c0005a64:	3a726f72 	bcc	c1ca1834 <__bss_end+0x8a1834>
c0005a68:	6b6e5520 	blvs	c1b9aef0 <__bss_end+0x79aef0>
c0005a6c:	6e776f6e 	cdpvs	15, 7, cr6, cr7, cr14, {3}
c0005a70:	61747320 	cmnvs	r4, r0, lsr #6
c0005a74:	0a206574 	beq	c081f04c <_mempool_f+0x81304c>
c0005a78:	0000000d 	andeq	r0, r0, sp
c0005a7c:	62617450 	rsbvs	r7, r1, #80, 8	; 0x50000000
c0005a80:	6e693a3a 	mcrvs	10, 3, r3, cr9, cr10, {1}
c0005a84:	74726573 	ldrbtvc	r6, [r2], #-1395	; 0xfffffa8d
c0005a88:	70616d5f 	rsbvc	r6, r1, pc, asr sp
c0005a8c:	676e6970 			; <UNDEFINED> instruction: 0x676e6970
c0005a90:	2061203a 	rsbcs	r2, r1, sl, lsr r0
c0005a94:	70204b34 	eorvc	r4, r0, r4, lsr fp
c0005a98:	20656761 	rsbcs	r6, r5, r1, ror #14
c0005a9c:	69207369 	stmdbvs	r0!, {r0, r3, r5, r6, r8, r9, ip, sp, lr}
c0005aa0:	7265736e 	rsbvc	r7, r5, #-1207959551	; 0xb8000001
c0005aa4:	20646574 	rsbcs	r6, r4, r4, ror r5
c0005aa8:	25207461 	strcs	r7, [r0, #-1121]!	; 0xfffffb9f
c0005aac:	25282078 	strcs	r2, [r8, #-120]!	; 0xffffff88
c0005ab0:	0a202978 	beq	c0810098 <_mempool_f+0x804098>
c0005ab4:	0000000d 	andeq	r0, r0, sp
c0005ab8:	62617450 	rsbvs	r7, r1, #80, 8	; 0x50000000
c0005abc:	6e693a3a 	mcrvs	10, 3, r3, cr9, cr10, {1}
c0005ac0:	74726573 	ldrbtvc	r6, [r2], #-1395	; 0xfffffa8d
c0005ac4:	6365735f 	cmnvs	r5, #2080374785	; 0x7c000001
c0005ac8:	6e6f6974 	mcrvs	9, 3, r6, cr15, cr4, {3}
c0005acc:	2061203a 	rsbcs	r2, r1, sl, lsr r0
c0005ad0:	73204d31 	teqvc	r0, #3136	; 0xc40
c0005ad4:	69746365 	ldmdbvs	r4!, {r0, r2, r5, r6, r8, r9, sp, lr}^
c0005ad8:	69206e6f 	stmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}
c0005adc:	6e692073 	mcrvs	0, 3, r2, cr9, cr3, {3}
c0005ae0:	74726573 	ldrbtvc	r6, [r2], #-1395	; 0xfffffa8d
c0005ae4:	61206465 	teqvs	r0, r5, ror #8
c0005ae8:	78252074 	stmdavc	r5!, {r2, r4, r5, r6, sp}
c0005aec:	78252820 	stmdavc	r5!, {r5, fp, sp}
c0005af0:	0d0a2029 	stceq	0, cr2, [sl, #-164]	; 0xffffff5c
c0005af4:	00000000 	andeq	r0, r0, r0
c0005af8:	62617450 	rsbvs	r7, r1, #80, 8	; 0x50000000
c0005afc:	65723a3a 	ldrbvs	r3, [r2, #-2618]!	; 0xfffff5c6
c0005b00:	3a70616d 	bcc	c1c1e0bc <__bss_end+0x81e0bc>
c0005b04:	34206120 	strtcc	r6, [r0], #-288	; 0xfffffee0
c0005b08:	6573204d 	ldrbvs	r2, [r3, #-77]!	; 0xffffffb3
c0005b0c:	6f697463 	svcvs	0x00697463
c0005b10:	7369206e 	cmnvc	r9, #110	; 0x6e
c0005b14:	6d657220 	sfmvs	f7, 2, [r5, #-128]!	; 0xffffff80
c0005b18:	65707061 	ldrbvs	r7, [r0, #-97]!	; 0xffffff9f
c0005b1c:	000d0a64 	andeq	r0, sp, r4, ror #20
c0005b20:	62617450 	rsbvs	r7, r1, #80, 8	; 0x50000000
c0005b24:	73753a3a 	cmnvc	r5, #237568	; 0x3a000
c0005b28:	725f7265 	subsvc	r7, pc, #1342177286	; 0x50000006
c0005b2c:	70616d65 	rsbvc	r6, r1, r5, ror #26
c0005b30:	2061203a 	rsbcs	r2, r1, sl, lsr r0
c0005b34:	73204d34 	teqvc	r0, #52, 26	; 0xd00
c0005b38:	69746365 	ldmdbvs	r4!, {r0, r2, r5, r6, r8, r9, sp, lr}^
c0005b3c:	69206e6f 	stmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}
c0005b40:	65722073 	ldrbvs	r2, [r2, #-115]!	; 0xffffff8d
c0005b44:	7070616d 	rsbsvc	r6, r0, sp, ror #2
c0005b48:	0d0a6465 	cfstrseq	mvf6, [sl, #-404]	; 0xfffffe6c
c0005b4c:	00000000 	andeq	r0, r0, r0
c0005b50:	62617450 	rsbvs	r7, r1, #80, 8	; 0x50000000
c0005b54:	70203a3a 	eorvc	r3, r0, sl, lsr sl
c0005b58:	20656761 	rsbcs	r6, r5, r1, ror #14
c0005b5c:	73656f64 	cmnvc	r5, #100, 30	; 0x190
c0005b60:	746f6e20 	strbtvc	r6, [pc], #-3616	; c0005b68 <_ZL18TmrCtrOptionsTable+0x7f8>
c0005b64:	69786520 	ldmdbvs	r8!, {r5, r8, sl, sp, lr}^
c0005b68:	202e7473 	eorcs	r7, lr, r3, ror r4
c0005b6c:	00000d0a 	andeq	r0, r0, sl, lsl #26
c0005b70:	62617450 	rsbvs	r7, r1, #80, 8	; 0x50000000
c0005b74:	2061203a 	rsbcs	r2, r1, sl, lsr r0
c0005b78:	70204b34 	eorvc	r4, r0, r4, lsr fp
c0005b7c:	20656761 	rsbcs	r6, r5, r1, ror #14
c0005b80:	64207369 	strtvs	r7, [r0], #-873	; 0xfffffc97
c0005b84:	74656c65 	strbtvc	r6, [r5], #-3173	; 0xfffff39b
c0005b88:	61206465 	teqvs	r0, r5, ror #8
c0005b8c:	78252074 	stmdavc	r5!, {r2, r4, r5, r6, sp}
c0005b90:	78252820 	stmdavc	r5!, {r5, fp, sp}
c0005b94:	0d0a2029 	stceq	0, cr2, [sl, #-164]	; 0xffffff5c
c0005b98:	00000000 	andeq	r0, r0, r0
c0005b9c:	62617450 	rsbvs	r7, r1, #80, 8	; 0x50000000
c0005ba0:	6e55203a 	mrcvs	0, 2, r2, cr5, cr10, {1}
c0005ba4:	6f776e6b 	svcvs	0x00776e6b
c0005ba8:	6170206e 	cmnvs	r0, lr, rrx
c0005bac:	61206567 	teqvs	r0, r7, ror #10
c0005bb0:	20727474 	rsbscs	r7, r2, r4, ror r4
c0005bb4:	00000d0a 	andeq	r0, r0, sl, lsl #26
c0005bb8:	6c6c6155 	stfvse	f6, [ip], #-340	; 0xfffffeac
c0005bbc:	203a636f 	eorscs	r6, sl, pc, ror #6
c0005bc0:	65676170 	strbvs	r6, [r7, #-368]!	; 0xfffffe90
c0005bc4:	7825203a 	stmdavc	r5!, {r1, r3, r4, r5, sp}
c0005bc8:	78252820 	stmdavc	r5!, {r5, fp, sp}
c0005bcc:	6f642029 	svcvs	0x00642029
c0005bd0:	6e207365 	cdpvs	3, 2, cr7, cr0, cr5, {3}
c0005bd4:	6520746f 	strvs	r7, [r0, #-1135]!	; 0xfffffb91
c0005bd8:	74736978 	ldrbtvc	r6, [r3], #-2424	; 0xfffff688
c0005bdc:	0d0a202e 	stceq	0, cr2, [sl, #-184]	; 0xffffff48
c0005be0:	00000000 	andeq	r0, r0, r0

c0005be4 <_ZL14ReserveIrqMask>:
c0005be4:	2000ffff 	strdcs	pc, [r0], -pc	; <UNPREDICTABLE>
c0005be8:	00000800 	andeq	r0, r0, r0, lsl #16
c0005bec:	04000000 	streq	r0, [r0], #-0
c0005bf0:	00207c20 	eoreq	r7, r0, r0, lsr #24
c0005bf4:	20555043 	subscs	r5, r5, r3, asr #32
c0005bf8:	636f6c43 	cmnvs	pc, #17152	; 0x4300
c0005bfc:	6152206b 	cmpvs	r2, fp, rrx
c0005c00:	206f6974 	rsbcs	r6, pc, r4, ror r9	; <UNPREDICTABLE>
c0005c04:	65646f4d 	strbvs	r6, [r4, #-3917]!	; 0xfffff0b3
c0005c08:	323a3620 	eorscc	r3, sl, #32, 12	; 0x2000000
c0005c0c:	2820313a 	stmdacs	r0!, {r1, r3, r4, r5, r8, ip, sp}
c0005c10:	4d373636 	ldcmi	6, cr3, [r7, #-216]!	; 0xffffff28
c0005c14:	33207a48 	teqcc	r0, #72, 20	; 0x48000
c0005c18:	484d3333 	stmdami	sp, {r0, r1, r4, r5, r8, r9, ip, sp}^
c0005c1c:	3232207a 	eorscc	r2, r2, #122	; 0x7a
c0005c20:	7a484d32 	bvc	c12190f0 <_mempool_f+0x120d0f0>
c0005c24:	31313120 	teqcc	r1, r0, lsr #2
c0005c28:	297a484d 	ldmdbcs	sl!, {r0, r2, r3, r6, fp, lr}^
c0005c2c:	000d0a20 	andeq	r0, sp, r0, lsr #20
c0005c30:	20555043 	subscs	r5, r5, r3, asr #32
c0005c34:	636f6c43 	cmnvs	pc, #17152	; 0x4300
c0005c38:	6152206b 	cmpvs	r2, fp, rrx
c0005c3c:	206f6974 	rsbcs	r6, pc, r4, ror r9	; <UNPREDICTABLE>
c0005c40:	65646f4d 	strbvs	r6, [r4, #-3917]!	; 0xfffff0b3
c0005c44:	323a3420 	eorscc	r3, sl, #32, 8	; 0x20000000
c0005c48:	2820313a 	stmdacs	r0!, {r1, r3, r4, r5, r8, ip, sp}
c0005c4c:	4d333335 	ldcmi	3, cr3, [r3, #-212]!	; 0xffffff2c
c0005c50:	32207a48 	eorcc	r7, r0, #72, 20	; 0x48000
c0005c54:	484d3736 	stmdami	sp, {r1, r2, r4, r5, r8, r9, sl, ip, sp}^
c0005c58:	3632207a 			; <UNDEFINED> instruction: 0x3632207a
c0005c5c:	7a484d37 	bvc	c1219140 <_mempool_f+0x120d140>
c0005c60:	33333120 	teqcc	r3, #32, 2
c0005c64:	297a484d 	ldmdbcs	sl!, {r0, r2, r3, r6, fp, lr}^
c0005c68:	000d0a20 	andeq	r0, sp, r0, lsr #20
c0005c6c:	25435454 	strbcs	r5, [r3, #-1108]	; 0xfffffbac
c0005c70:	4f203a64 	svcmi	0x00203a64
c0005c74:	75707475 	ldrbvc	r7, [r0, #-1141]!	; 0xfffffb8b
c0005c78:	207a4874 	rsbscs	r4, sl, r4, ror r8
c0005c7c:	6425203d 	strtvs	r2, [r5], #-61	; 0xffffffc3
c0005c80:	704f203b 	subvc	r2, pc, fp, lsr r0	; <UNPREDICTABLE>
c0005c84:	6e6f6974 	mcrvs	9, 3, r6, cr15, cr4, {3}
c0005c88:	203d2073 	eorscs	r2, sp, r3, ror r0
c0005c8c:	203b7825 	eorscs	r7, fp, r5, lsr #16
c0005c90:	73657250 	cmnvc	r5, #80, 4
c0005c94:	656c6163 	strbvs	r6, [ip, #-355]!	; 0xfffffe9d
c0005c98:	203d2072 	eorscs	r2, sp, r2, ror r0
c0005c9c:	203b6425 	eorscs	r6, fp, r5, lsr #8
c0005ca0:	65746e49 	ldrbvs	r6, [r4, #-3657]!	; 0xfffff1b7
c0005ca4:	6c617672 	stclvs	6, cr7, [r1], #-456	; 0xfffffe38
c0005ca8:	25203d20 	strcs	r3, [r0, #-3360]!	; 0xfffff2e0
c0005cac:	0d0a2064 	stceq	0, cr2, [sl, #-400]	; 0xfffffe70
c0005cb0:	00000000 	andeq	r0, r0, r0
c0005cb4:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
c0005cb8:	65672072 	strbvs	r2, [r7, #-114]!	; 0xffffff8e
c0005cbc:	6f632074 	svcvs	0x00632074
c0005cc0:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
c0005cc4:	72726520 	rsbsvc	r6, r2, #32, 10	; 0x8000000
c0005cc8:	2121726f 	teqcs	r1, pc, ror #4
c0005ccc:	00000d0a 	andeq	r0, r0, sl, lsl #26
c0005cd0:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
c0005cd4:	6e692072 	mcrvs	0, 3, r2, cr9, cr2, {3}
c0005cd8:	61697469 	cmnvs	r9, r9, ror #8
c0005cdc:	657a696c 	ldrbvs	r6, [sl, #-2412]!	; 0xfffff694
c0005ce0:	72726520 	rsbsvc	r6, r2, #32, 10	; 0x8000000
c0005ce4:	2121726f 	teqcs	r1, pc, ror #4
c0005ce8:	00000d0a 	andeq	r0, r0, sl, lsl #26
c0005cec:	20434947 	subcs	r4, r3, r7, asr #18
c0005cf0:	20746567 	rsbscs	r6, r4, r7, ror #10
c0005cf4:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
c0005cf8:	65206769 	strvs	r6, [r0, #-1897]!	; 0xfffff897
c0005cfc:	726f7272 	rsbvc	r7, pc, #536870919	; 0x20000007
c0005d00:	0d0a2121 	stfeqs	f2, [sl, #-132]	; 0xffffff7c
c0005d04:	00000000 	andeq	r0, r0, r0
c0005d08:	20434947 	subcs	r4, r3, r7, asr #18
c0005d0c:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xfffff197
c0005d10:	696c6169 	stmdbvs	ip!, {r0, r3, r5, r6, r8, sp, lr}^
c0005d14:	6520657a 	strvs	r6, [r0, #-1402]!	; 0xfffffa86
c0005d18:	726f7272 	rsbvc	r7, pc, #536870919	; 0x20000007
c0005d1c:	0d0a2121 	stfeqs	f2, [sl, #-132]	; 0xffffff7c
c0005d20:	00000000 	andeq	r0, r0, r0
c0005d24:	20434947 	subcs	r4, r3, r7, asr #18
c0005d28:	6e6e6f63 	cdpvs	15, 6, cr6, cr14, cr3, {3}
c0005d2c:	20746365 	rsbscs	r6, r4, r5, ror #6
c0005d30:	20435454 	subcs	r5, r3, r4, asr r4
c0005d34:	646e6168 	strbtvs	r6, [lr], #-360	; 0xfffffe98
c0005d38:	2072656c 	rsbscs	r6, r2, ip, ror #10
c0005d3c:	6f727265 	svcvs	0x00727265
c0005d40:	0a212172 	beq	c084e310 <_mempool_f+0x842310>
c0005d44:	0000000d 	andeq	r0, r0, sp
c0005d48:	20434947 	subcs	r4, r3, r7, asr #18
c0005d4c:	6e6e6f63 	cdpvs	15, 6, cr6, cr14, cr3, {3}
c0005d50:	20746365 	rsbscs	r6, r4, r5, ror #6
c0005d54:	76697250 			; <UNDEFINED> instruction: 0x76697250
c0005d58:	20657461 	rsbcs	r7, r5, r1, ror #8
c0005d5c:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
c0005d60:	61682072 	smcvs	33282	; 0x8202
c0005d64:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
c0005d68:	72652072 	rsbvc	r2, r5, #114	; 0x72
c0005d6c:	21726f72 	cmncs	r2, r2, ror pc
c0005d70:	000d0a21 	andeq	r0, sp, r1, lsr #20
c0005d74:	20434947 	subcs	r4, r3, r7, asr #18
c0005d78:	6e6e6f63 	cdpvs	15, 6, cr6, cr14, cr3, {3}
c0005d7c:	20746365 	rsbscs	r6, r4, r5, ror #6
c0005d80:	20525250 	subscs	r5, r2, r0, asr r2
c0005d84:	696e6f6d 	stmdbvs	lr!, {r0, r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
c0005d88:	20726f74 	rsbscs	r6, r2, r4, ror pc
c0005d8c:	6f727265 	svcvs	0x00727265
c0005d90:	0a212172 	beq	c084e360 <_mempool_f+0x842360>
c0005d94:	0000000d 	andeq	r0, r0, sp
c0005d98:	20434947 	subcs	r4, r3, r7, asr #18
c0005d9c:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
c0005da0:	69206769 	stmdbvs	r0!, {r0, r3, r5, r6, r8, r9, sl, sp, lr}
c0005da4:	6f642073 	svcvs	0x00642073
c0005da8:	0a2e656e 	beq	c0b9f368 <_mempool_f+0xb93368>
c0005dac:	0000000d 	andeq	r0, r0, sp
c0005db0:	656d6954 	strbvs	r6, [sp, #-2388]!	; 0xfffff6ac
c0005db4:	6f632072 	svcvs	0x00632072
c0005db8:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
c0005dbc:	72726520 	rsbsvc	r6, r2, #32, 10	; 0x8000000
c0005dc0:	203a726f 	eorscs	r7, sl, pc, ror #4
c0005dc4:	3d204449 	cfstrscc	mvf4, [r0, #-292]!	; 0xfffffedc
c0005dc8:	20642520 	rsbcs	r2, r4, r0, lsr #10
c0005dcc:	00000d0a 	andeq	r0, r0, sl, lsl #26

Disassembly of section .data:

c0005dd0 <__data_start>:
c0005dd0:	00000000 	andeq	r0, r0, r0

c0005dd4 <__ctype_ptr__>:
c0005dd4:	c000526c 	andgt	r5, r0, ip, ror #4

c0005dd8 <XTtcPs_ConfigTable>:
c0005dd8:	00000000 	andeq	r0, r0, r0
c0005ddc:	f8001000 			; <UNDEFINED> instruction: 0xf8001000
c0005de0:	069f6bcb 	ldreq	r6, [pc], fp, asr #23
c0005de4:	00000001 	andeq	r0, r0, r1
c0005de8:	f8001004 			; <UNDEFINED> instruction: 0xf8001004
c0005dec:	069f6bcb 	ldreq	r6, [pc], fp, asr #23
c0005df0:	00000002 	andeq	r0, r0, r2
c0005df4:	f8001008 			; <UNDEFINED> instruction: 0xf8001008
c0005df8:	069f6bcb 	ldreq	r6, [pc], fp, asr #23

c0005dfc <XScuGic_ConfigTable>:
c0005dfc:	00000000 	andeq	r0, r0, r0
c0005e00:	f8f00100 			; <UNDEFINED> instruction: 0xf8f00100
c0005e04:	f8f01000 			; <UNDEFINED> instruction: 0xf8f01000
	...

c0006100 <version>:
c0006100:	c00058f0 	strdgt	r5, [r0], -r0

c0006104 <__JCR_END__>:
c0006104:	00000000 	andeq	r0, r0, r0

Disassembly of section .eh_frame:

c0006108 <__EH_FRAME_BEGIN__>:
c0006108:	00000000 	andeq	r0, r0, r0

Disassembly of section .init_array:

c000610c <__eh_framehdr_end>:
c000610c:	c00000bc 	strhgt	r0, [r0], -ip
c0006110:	c00043e4 	andgt	r4, r0, r4, ror #7

Disassembly of section .fini_array:

c0006114 <__fini_array_start>:
c0006114:	c0000078 	andgt	r0, r0, r8, ror r0

Disassembly of section .ARM.attributes:

c0006118 <__ARM.attributes_start>:
c0006118:	00003241 	andeq	r3, r0, r1, asr #4
c000611c:	61656100 	cmnvs	r5, r0, lsl #2
c0006120:	01006962 	tsteq	r0, r2, ror #18
c0006124:	00000028 	andeq	r0, r0, r8, lsr #32
c0006128:	412d3705 	teqmi	sp, r5, lsl #14
c000612c:	070a0600 	streq	r0, [sl, -r0, lsl #12]
c0006130:	09010841 	stmdbeq	r1, {r0, r6, fp}
c0006134:	0c030a02 	stceq	10, cr0, [r3], {2}
c0006138:	14041201 	strne	r1, [r4], #-513	; 0xfffffdff
c000613c:	17011501 	strne	r1, [r1, -r1, lsl #10]
c0006140:	1a011803 	bne	c004c154 <_mempool_f+0x40154>
c0006144:	22031b01 	andcs	r1, r3, #1024	; 0x400
c0006148:	Address 0xc0006148 is out of bounds.


Disassembly of section .bss:

c0006b07 <__bss_start>:
	...

c0006b08 <completed.8489>:
c0006b08:	00000000 	andeq	r0, r0, r0

c0006b0c <object.8494>:
	...

c0006b24 <irq_count>:
c0006b24:	00000000 	andeq	r0, r0, r0

c0006b28 <IRQ_ID>:
c0006b28:	00000000 	andeq	r0, r0, r0

c0006b2c <XExc_VectorTable>:
	...

c0006b64 <_ZN2Ec4listE>:
	...

c0006b84 <_ZN2Ec12vmid_counterE>:
c0006b84:	00000000 	andeq	r0, r0, r0

c0006b88 <_ZN2Ec7currentE>:
c0006b88:	00000000 	andeq	r0, r0, r0

c0006b8c <_ZN2Ec8prio_topE>:
c0006b8c:	00000000 	andeq	r0, r0, r0

c0006b90 <_ZN2Ec9hw_mgr_idE>:
c0006b90:	00000000 	andeq	r0, r0, r0

c0006b94 <_ZN2Ec12suspend_listE>:
c0006b94:	00000000 	andeq	r0, r0, r0

c0006b98 <_ZN2Ec4RTOSE>:
c0006b98:	00000000 	andeq	r0, r0, r0

c0006b9c <_ZN2Ec7vm_listE>:
	...

c0006bdc <_ZN6Kalloc9allocatorE>:
	...

c0006be4 <_ZN6msgbox4mboxE>:
	...

c0006bf4 <_ZN3Fpc11fpc_currentE>:
c0006bf4:	00000000 	andeq	r0, r0, r0

c0006bf8 <gicInst>:
	...

c0006c04 <_ZL13SettingsTable>:
	...

c0006c1c <tmrConfig>:
	...

c0006c24 <gicConfig>:
c0006c24:	00000000 	andeq	r0, r0, r0

c0006c28 <tmrInst>:
	...

c000c000 <_mempool_f>:
	...

Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c010001 	stcvc	0, cr0, [r1], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	0000000c 	andeq	r0, r0, ip
  14:	00000000 	andeq	r0, r0, r0
  18:	c0000360 	andgt	r0, r0, r0, ror #6
  1c:	000001ec 	andeq	r0, r0, ip, ror #3
  20:	0000000c 	andeq	r0, r0, ip
  24:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  28:	7c020001 	stcvc	0, cr0, [r2], {1}
  2c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  30:	00000024 	andeq	r0, r0, r4, lsr #32
  34:	00000020 	andeq	r0, r0, r0, lsr #32
  38:	c0000570 	andgt	r0, r0, r0, ror r5
  3c:	000006d8 	ldrdeq	r0, [r0], -r8
  40:	84200e44 	strthi	r0, [r0], #-3652	; 0xfffff1bc
  44:	86078508 	strhi	r8, [r7], -r8, lsl #10
  48:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
  4c:	8a038904 	bhi	e2464 <_SUPERVISOR_STACK_SIZE+0xe1c64>
  50:	42018b02 	andmi	r8, r1, #2048	; 0x800
  54:	0000780e 	andeq	r7, r0, lr, lsl #16
  58:	0000000c 	andeq	r0, r0, ip
  5c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  60:	7c020001 	stcvc	0, cr0, [r2], {1}
  64:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  68:	0000001c 	andeq	r0, r0, ip, lsl r0
  6c:	00000058 	andeq	r0, r0, r8, asr r0
  70:	c0000c48 	andgt	r0, r0, r8, asr #24
  74:	0000022c 	andeq	r0, r0, ip, lsr #4
  78:	84140e46 	ldrhi	r0, [r4], #-3654	; 0xfffff1ba
  7c:	86048505 	strhi	r8, [r4], -r5, lsl #10
  80:	88028703 	stmdahi	r2, {r0, r1, r8, r9, sl, pc}
  84:	00000001 	andeq	r0, r0, r1
  88:	0000000c 	andeq	r0, r0, ip
  8c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  90:	7c020001 	stcvc	0, cr0, [r2], {1}
  94:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  98:	0000000c 	andeq	r0, r0, ip
  9c:	00000088 	andeq	r0, r0, r8, lsl #1
  a0:	c0000e74 	andgt	r0, r0, r4, ror lr
  a4:	0000006c 	andeq	r0, r0, ip, rrx
  a8:	0000000c 	andeq	r0, r0, ip
  ac:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  b0:	7c020001 	stcvc	0, cr0, [r2], {1}
  b4:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  b8:	0000000c 	andeq	r0, r0, ip
  bc:	000000a8 	andeq	r0, r0, r8, lsr #1
  c0:	c0000ee0 	andgt	r0, r0, r0, ror #29
  c4:	00000024 	andeq	r0, r0, r4, lsr #32
