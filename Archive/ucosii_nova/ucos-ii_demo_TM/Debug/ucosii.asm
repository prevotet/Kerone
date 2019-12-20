
ucos-ii_demo_TM.elf:     file format elf32-littlearm


Disassembly of section .text:

00008058 <deregister_tm_clones-0xa8>:
	...

00008100 <deregister_tm_clones>:
    8100:	e92d4008 	push	{r3, lr}
    8104:	e3080624 	movw	r0, #34340	; 0x8624
    8108:	e59f3024 	ldr	r3, [pc, #36]	; 8134 <deregister_tm_clones+0x34>
    810c:	e3400001 	movt	r0, #1
    8110:	e0603003 	rsb	r3, r0, r3
    8114:	e3530006 	cmp	r3, #6
    8118:	98bd8008 	popls	{r3, pc}
    811c:	e3003000 	movw	r3, #0
    8120:	e3403000 	movt	r3, #0
    8124:	e3530000 	cmp	r3, #0
    8128:	08bd8008 	popeq	{r3, pc}
    812c:	e12fff33 	blx	r3
    8130:	e8bd8008 	pop	{r3, pc}
    8134:	00018627 	andeq	r8, r1, r7, lsr #12

00008138 <register_tm_clones>:
    8138:	e92d4008 	push	{r3, lr}
    813c:	e3080624 	movw	r0, #34340	; 0x8624
    8140:	e3083624 	movw	r3, #34340	; 0x8624
    8144:	e3400001 	movt	r0, #1
    8148:	e3403001 	movt	r3, #1
    814c:	e0603003 	rsb	r3, r0, r3
    8150:	e1a03143 	asr	r3, r3, #2
    8154:	e0833fa3 	add	r3, r3, r3, lsr #31
    8158:	e1b010c3 	asrs	r1, r3, #1
    815c:	08bd8008 	popeq	{r3, pc}
    8160:	e3002000 	movw	r2, #0
    8164:	e3402000 	movt	r2, #0
    8168:	e3520000 	cmp	r2, #0
    816c:	08bd8008 	popeq	{r3, pc}
    8170:	e12fff32 	blx	r2
    8174:	e8bd8008 	pop	{r3, pc}

00008178 <__do_global_dtors_aux>:
    8178:	e92d4010 	push	{r4, lr}
    817c:	e3084634 	movw	r4, #34356	; 0x8634
    8180:	e3404001 	movt	r4, #1
    8184:	e5d43000 	ldrb	r3, [r4]
    8188:	e3530000 	cmp	r3, #0
    818c:	18bd8010 	popne	{r4, pc}
    8190:	ebffffda 	bl	8100 <deregister_tm_clones>
    8194:	e3003000 	movw	r3, #0
    8198:	e3403000 	movt	r3, #0
    819c:	e3530000 	cmp	r3, #0
    81a0:	0a000002 	beq	81b0 <__do_global_dtors_aux+0x38>
    81a4:	e3080624 	movw	r0, #34340	; 0x8624
    81a8:	e3400001 	movt	r0, #1
    81ac:	e320f000 	nop	{0}
    81b0:	e3a03001 	mov	r3, #1
    81b4:	e5c43000 	strb	r3, [r4]
    81b8:	e8bd8010 	pop	{r4, pc}

000081bc <frame_dummy>:
    81bc:	e92d4008 	push	{r3, lr}
    81c0:	e3003000 	movw	r3, #0
    81c4:	e3403000 	movt	r3, #0
    81c8:	e3530000 	cmp	r3, #0
    81cc:	0a000004 	beq	81e4 <frame_dummy+0x28>
    81d0:	e3080624 	movw	r0, #34340	; 0x8624
    81d4:	e3081638 	movw	r1, #34360	; 0x8638
    81d8:	e3400001 	movt	r0, #1
    81dc:	e3401001 	movt	r1, #1
    81e0:	e320f000 	nop	{0}
    81e4:	e3080620 	movw	r0, #34336	; 0x8620
    81e8:	e3400001 	movt	r0, #1
    81ec:	e5903000 	ldr	r3, [r0]
    81f0:	e3530000 	cmp	r3, #0
    81f4:	0a000004 	beq	820c <frame_dummy+0x50>
    81f8:	e3003000 	movw	r3, #0
    81fc:	e3403000 	movt	r3, #0
    8200:	e3530000 	cmp	r3, #0
    8204:	0a000000 	beq	820c <frame_dummy+0x50>
    8208:	e12fff33 	blx	r3
    820c:	e8bd4008 	pop	{r3, lr}
    8210:	eaffffc8 	b	8138 <register_tm_clones>

00008214 <OSEventNameGet>:
    8214:	e92d4800 	push	{fp, lr}
    8218:	e28db004 	add	fp, sp, #4
    821c:	e24dd018 	sub	sp, sp, #24
    8220:	e50b0010 	str	r0, [fp, #-16]
    8224:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    8228:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
    822c:	e3a03000 	mov	r3, #0
    8230:	e50b3008 	str	r3, [fp, #-8]
    8234:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    8238:	e3403019 	movt	r3, #25
    823c:	e5d33000 	ldrb	r3, [r3]
    8240:	e3530000 	cmp	r3, #0
    8244:	0a000004 	beq	825c <OSEventNameGet+0x48>
    8248:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    824c:	e3a02011 	mov	r2, #17
    8250:	e5c32000 	strb	r2, [r3]
    8254:	e3a03000 	mov	r3, #0
    8258:	ea00001c 	b	82d0 <OSEventNameGet+0xbc>
    825c:	e51b3010 	ldr	r3, [fp, #-16]
    8260:	e5d33000 	ldrb	r3, [r3]
    8264:	e2433001 	sub	r3, r3, #1
    8268:	e3530003 	cmp	r3, #3
    826c:	8a000013 	bhi	82c0 <OSEventNameGet+0xac>
    8270:	e1a00000 	nop			; (mov r0, r0)
    8274:	eb001c0d 	bl	f2b0 <OS_CPU_SR_Save>
    8278:	e50b0008 	str	r0, [fp, #-8]
    827c:	e51b3010 	ldr	r3, [fp, #-16]
    8280:	e5932014 	ldr	r2, [r3, #20]
    8284:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    8288:	e5832000 	str	r2, [r3]
    828c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    8290:	e5933000 	ldr	r3, [r3]
    8294:	e1a00003 	mov	r0, r3
    8298:	eb00067a 	bl	9c88 <OS_StrLen>
    829c:	e1a03000 	mov	r3, r0
    82a0:	e54b3009 	strb	r3, [fp, #-9]
    82a4:	e51b0008 	ldr	r0, [fp, #-8]
    82a8:	eb001c13 	bl	f2fc <OS_CPU_SR_Restore>
    82ac:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    82b0:	e3a02000 	mov	r2, #0
    82b4:	e5c32000 	strb	r2, [r3]
    82b8:	e55b3009 	ldrb	r3, [fp, #-9]
    82bc:	ea000003 	b	82d0 <OSEventNameGet+0xbc>
    82c0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    82c4:	e3a02001 	mov	r2, #1
    82c8:	e5c32000 	strb	r2, [r3]
    82cc:	e3a03000 	mov	r3, #0
    82d0:	e1a00003 	mov	r0, r3
    82d4:	e24bd004 	sub	sp, fp, #4
    82d8:	e8bd8800 	pop	{fp, pc}

000082dc <OSEventNameSet>:
    82dc:	e92d4800 	push	{fp, lr}
    82e0:	e28db004 	add	fp, sp, #4
    82e4:	e24dd018 	sub	sp, sp, #24
    82e8:	e50b0010 	str	r0, [fp, #-16]
    82ec:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    82f0:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
    82f4:	e3a03000 	mov	r3, #0
    82f8:	e50b3008 	str	r3, [fp, #-8]
    82fc:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    8300:	e3403019 	movt	r3, #25
    8304:	e5d33000 	ldrb	r3, [r3]
    8308:	e3530000 	cmp	r3, #0
    830c:	0a000003 	beq	8320 <OSEventNameSet+0x44>
    8310:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    8314:	e3a02012 	mov	r2, #18
    8318:	e5c32000 	strb	r2, [r3]
    831c:	ea000014 	b	8374 <OSEventNameSet+0x98>
    8320:	e51b3010 	ldr	r3, [fp, #-16]
    8324:	e5d33000 	ldrb	r3, [r3]
    8328:	e2433001 	sub	r3, r3, #1
    832c:	e3530003 	cmp	r3, #3
    8330:	8a00000b 	bhi	8364 <OSEventNameSet+0x88>
    8334:	e1a00000 	nop			; (mov r0, r0)
    8338:	eb001bdc 	bl	f2b0 <OS_CPU_SR_Save>
    833c:	e50b0008 	str	r0, [fp, #-8]
    8340:	e51b3010 	ldr	r3, [fp, #-16]
    8344:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    8348:	e5832014 	str	r2, [r3, #20]
    834c:	e51b0008 	ldr	r0, [fp, #-8]
    8350:	eb001be9 	bl	f2fc <OS_CPU_SR_Restore>
    8354:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    8358:	e3a02000 	mov	r2, #0
    835c:	e5c32000 	strb	r2, [r3]
    8360:	ea000003 	b	8374 <OSEventNameSet+0x98>
    8364:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    8368:	e3a02001 	mov	r2, #1
    836c:	e5c32000 	strb	r2, [r3]
    8370:	e1a00000 	nop			; (mov r0, r0)
    8374:	e24bd004 	sub	sp, fp, #4
    8378:	e8bd8800 	pop	{fp, pc}

0000837c <OSEventPendMulti>:
    837c:	e92d4800 	push	{fp, lr}
    8380:	e28db004 	add	fp, sp, #4
    8384:	e24dd028 	sub	sp, sp, #40	; 0x28
    8388:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
    838c:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
    8390:	e50b2028 	str	r2, [fp, #-40]	; 0xffffffd8
    8394:	e50b302c 	str	r3, [fp, #-44]	; 0xffffffd4
    8398:	e3a03000 	mov	r3, #0
    839c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    83a0:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    83a4:	e3a02000 	mov	r2, #0
    83a8:	e5832000 	str	r2, [r3]
    83ac:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    83b0:	e50b3008 	str	r3, [fp, #-8]
    83b4:	e51b3008 	ldr	r3, [fp, #-8]
    83b8:	e5933000 	ldr	r3, [r3]
    83bc:	e50b300c 	str	r3, [fp, #-12]
    83c0:	ea000017 	b	8424 <OSEventPendMulti+0xa8>
    83c4:	e51b300c 	ldr	r3, [fp, #-12]
    83c8:	e5d33000 	ldrb	r3, [r3]
    83cc:	e3530002 	cmp	r3, #2
    83d0:	0a000008 	beq	83f8 <OSEventPendMulti+0x7c>
    83d4:	e3530003 	cmp	r3, #3
    83d8:	0a000008 	beq	8400 <OSEventPendMulti+0x84>
    83dc:	e3530001 	cmp	r3, #1
    83e0:	0a000008 	beq	8408 <OSEventPendMulti+0x8c>
    83e4:	e59b3004 	ldr	r3, [fp, #4]
    83e8:	e3a02001 	mov	r2, #1
    83ec:	e5c32000 	strb	r2, [r3]
    83f0:	e3a03000 	mov	r3, #0
    83f4:	ea000176 	b	89d4 <OSEventPendMulti+0x658>
    83f8:	e1a00000 	nop			; (mov r0, r0)
    83fc:	ea000002 	b	840c <OSEventPendMulti+0x90>
    8400:	e1a00000 	nop			; (mov r0, r0)
    8404:	ea000000 	b	840c <OSEventPendMulti+0x90>
    8408:	e1a00000 	nop			; (mov r0, r0)
    840c:	e51b3008 	ldr	r3, [fp, #-8]
    8410:	e2833004 	add	r3, r3, #4
    8414:	e50b3008 	str	r3, [fp, #-8]
    8418:	e51b3008 	ldr	r3, [fp, #-8]
    841c:	e5933000 	ldr	r3, [r3]
    8420:	e50b300c 	str	r3, [fp, #-12]
    8424:	e51b300c 	ldr	r3, [fp, #-12]
    8428:	e3530000 	cmp	r3, #0
    842c:	1affffe4 	bne	83c4 <OSEventPendMulti+0x48>
    8430:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    8434:	e3403019 	movt	r3, #25
    8438:	e5d33000 	ldrb	r3, [r3]
    843c:	e3530000 	cmp	r3, #0
    8440:	0a000004 	beq	8458 <OSEventPendMulti+0xdc>
    8444:	e59b3004 	ldr	r3, [fp, #4]
    8448:	e3a02002 	mov	r2, #2
    844c:	e5c32000 	strb	r2, [r3]
    8450:	e3a03000 	mov	r3, #0
    8454:	ea00015e 	b	89d4 <OSEventPendMulti+0x658>
    8458:	e30a3e8c 	movw	r3, #44684	; 0xae8c
    845c:	e3403019 	movt	r3, #25
    8460:	e5d33000 	ldrb	r3, [r3]
    8464:	e3530000 	cmp	r3, #0
    8468:	0a000004 	beq	8480 <OSEventPendMulti+0x104>
    846c:	e59b3004 	ldr	r3, [fp, #4]
    8470:	e3a0200d 	mov	r2, #13
    8474:	e5c32000 	strb	r2, [r3]
    8478:	e3a03000 	mov	r3, #0
    847c:	ea000154 	b	89d4 <OSEventPendMulti+0x658>
    8480:	e3a03000 	mov	r3, #0
    8484:	e54b300d 	strb	r3, [fp, #-13]
    8488:	e3a03000 	mov	r3, #0
    848c:	e14b31b0 	strh	r3, [fp, #-16]
    8490:	e3a03000 	mov	r3, #0
    8494:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
    8498:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    849c:	e50b3008 	str	r3, [fp, #-8]
    84a0:	e51b3008 	ldr	r3, [fp, #-8]
    84a4:	e5933000 	ldr	r3, [r3]
    84a8:	e50b300c 	str	r3, [fp, #-12]
    84ac:	eb001b7f 	bl	f2b0 <OS_CPU_SR_Save>
    84b0:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    84b4:	ea000088 	b	86dc <OSEventPendMulti+0x360>
    84b8:	e51b300c 	ldr	r3, [fp, #-12]
    84bc:	e5d33000 	ldrb	r3, [r3]
    84c0:	e3530002 	cmp	r3, #2
    84c4:	0a000042 	beq	85d4 <OSEventPendMulti+0x258>
    84c8:	e3530003 	cmp	r3, #3
    84cc:	0a000002 	beq	84dc <OSEventPendMulti+0x160>
    84d0:	e3530001 	cmp	r3, #1
    84d4:	0a000020 	beq	855c <OSEventPendMulti+0x1e0>
    84d8:	ea00006f 	b	869c <OSEventPendMulti+0x320>
    84dc:	e51b300c 	ldr	r3, [fp, #-12]
    84e0:	e1d330b8 	ldrh	r3, [r3, #8]
    84e4:	e3530000 	cmp	r3, #0
    84e8:	0a000017 	beq	854c <OSEventPendMulti+0x1d0>
    84ec:	e51b300c 	ldr	r3, [fp, #-12]
    84f0:	e1d330b8 	ldrh	r3, [r3, #8]
    84f4:	e2433001 	sub	r3, r3, #1
    84f8:	e6ff2073 	uxth	r2, r3
    84fc:	e51b300c 	ldr	r3, [fp, #-12]
    8500:	e1c320b8 	strh	r2, [r3, #8]
    8504:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    8508:	e51b200c 	ldr	r2, [fp, #-12]
    850c:	e5832000 	str	r2, [r3]
    8510:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    8514:	e2833004 	add	r3, r3, #4
    8518:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
    851c:	e3a03001 	mov	r3, #1
    8520:	e54b300d 	strb	r3, [fp, #-13]
    8524:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    8528:	e3a02000 	mov	r2, #0
    852c:	e5832000 	str	r2, [r3]
    8530:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    8534:	e2833004 	add	r3, r3, #4
    8538:	e50b3028 	str	r3, [fp, #-40]	; 0xffffffd8
    853c:	e15b31b0 	ldrh	r3, [fp, #-16]
    8540:	e2833001 	add	r3, r3, #1
    8544:	e14b31b0 	strh	r3, [fp, #-16]
    8548:	ea00005d 	b	86c4 <OSEventPendMulti+0x348>
    854c:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
    8550:	e3833001 	orr	r3, r3, #1
    8554:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
    8558:	ea000059 	b	86c4 <OSEventPendMulti+0x348>
    855c:	e51b300c 	ldr	r3, [fp, #-12]
    8560:	e5933004 	ldr	r3, [r3, #4]
    8564:	e3530000 	cmp	r3, #0
    8568:	0a000015 	beq	85c4 <OSEventPendMulti+0x248>
    856c:	e51b300c 	ldr	r3, [fp, #-12]
    8570:	e5932004 	ldr	r2, [r3, #4]
    8574:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    8578:	e5832000 	str	r2, [r3]
    857c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    8580:	e2833004 	add	r3, r3, #4
    8584:	e50b3028 	str	r3, [fp, #-40]	; 0xffffffd8
    8588:	e51b300c 	ldr	r3, [fp, #-12]
    858c:	e3a02000 	mov	r2, #0
    8590:	e5832004 	str	r2, [r3, #4]
    8594:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    8598:	e51b200c 	ldr	r2, [fp, #-12]
    859c:	e5832000 	str	r2, [r3]
    85a0:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    85a4:	e2833004 	add	r3, r3, #4
    85a8:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
    85ac:	e3a03001 	mov	r3, #1
    85b0:	e54b300d 	strb	r3, [fp, #-13]
    85b4:	e15b31b0 	ldrh	r3, [fp, #-16]
    85b8:	e2833001 	add	r3, r3, #1
    85bc:	e14b31b0 	strh	r3, [fp, #-16]
    85c0:	ea00003f 	b	86c4 <OSEventPendMulti+0x348>
    85c4:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
    85c8:	e3833002 	orr	r3, r3, #2
    85cc:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
    85d0:	ea00003b 	b	86c4 <OSEventPendMulti+0x348>
    85d4:	e51b300c 	ldr	r3, [fp, #-12]
    85d8:	e5933004 	ldr	r3, [r3, #4]
    85dc:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
    85e0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    85e4:	e1d331b6 	ldrh	r3, [r3, #22]
    85e8:	e3530000 	cmp	r3, #0
    85ec:	0a000026 	beq	868c <OSEventPendMulti+0x310>
    85f0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    85f4:	e5933010 	ldr	r3, [r3, #16]
    85f8:	e5931000 	ldr	r1, [r3]
    85fc:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
    8600:	e5821000 	str	r1, [r2]
    8604:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
    8608:	e2822004 	add	r2, r2, #4
    860c:	e50b2028 	str	r2, [fp, #-40]	; 0xffffffd8
    8610:	e2832004 	add	r2, r3, #4
    8614:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8618:	e5832010 	str	r2, [r3, #16]
    861c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8620:	e5932010 	ldr	r2, [r3, #16]
    8624:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8628:	e5933008 	ldr	r3, [r3, #8]
    862c:	e1520003 	cmp	r2, r3
    8630:	1a000003 	bne	8644 <OSEventPendMulti+0x2c8>
    8634:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8638:	e5932004 	ldr	r2, [r3, #4]
    863c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8640:	e5832010 	str	r2, [r3, #16]
    8644:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8648:	e1d331b6 	ldrh	r3, [r3, #22]
    864c:	e2433001 	sub	r3, r3, #1
    8650:	e6ff2073 	uxth	r2, r3
    8654:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8658:	e1c321b6 	strh	r2, [r3, #22]
    865c:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    8660:	e51b200c 	ldr	r2, [fp, #-12]
    8664:	e5832000 	str	r2, [r3]
    8668:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    866c:	e2833004 	add	r3, r3, #4
    8670:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
    8674:	e3a03001 	mov	r3, #1
    8678:	e54b300d 	strb	r3, [fp, #-13]
    867c:	e15b31b0 	ldrh	r3, [fp, #-16]
    8680:	e2833001 	add	r3, r3, #1
    8684:	e14b31b0 	strh	r3, [fp, #-16]
    8688:	ea00000d 	b	86c4 <OSEventPendMulti+0x348>
    868c:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
    8690:	e3833004 	orr	r3, r3, #4
    8694:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
    8698:	ea000009 	b	86c4 <OSEventPendMulti+0x348>
    869c:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
    86a0:	eb001b15 	bl	f2fc <OS_CPU_SR_Restore>
    86a4:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    86a8:	e3a02000 	mov	r2, #0
    86ac:	e5832000 	str	r2, [r3]
    86b0:	e59b3004 	ldr	r3, [fp, #4]
    86b4:	e3a02001 	mov	r2, #1
    86b8:	e5c32000 	strb	r2, [r3]
    86bc:	e15b31b0 	ldrh	r3, [fp, #-16]
    86c0:	ea0000c3 	b	89d4 <OSEventPendMulti+0x658>
    86c4:	e51b3008 	ldr	r3, [fp, #-8]
    86c8:	e2833004 	add	r3, r3, #4
    86cc:	e50b3008 	str	r3, [fp, #-8]
    86d0:	e51b3008 	ldr	r3, [fp, #-8]
    86d4:	e5933000 	ldr	r3, [r3]
    86d8:	e50b300c 	str	r3, [fp, #-12]
    86dc:	e51b300c 	ldr	r3, [fp, #-12]
    86e0:	e3530000 	cmp	r3, #0
    86e4:	1affff73 	bne	84b8 <OSEventPendMulti+0x13c>
    86e8:	e55b300d 	ldrb	r3, [fp, #-13]
    86ec:	e3530001 	cmp	r3, #1
    86f0:	1a000009 	bne	871c <OSEventPendMulti+0x3a0>
    86f4:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    86f8:	e3a02000 	mov	r2, #0
    86fc:	e5832000 	str	r2, [r3]
    8700:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
    8704:	eb001afc 	bl	f2fc <OS_CPU_SR_Restore>
    8708:	e59b3004 	ldr	r3, [fp, #4]
    870c:	e3a02000 	mov	r2, #0
    8710:	e5c32000 	strb	r2, [r3]
    8714:	e15b31b0 	ldrh	r3, [fp, #-16]
    8718:	ea0000ad 	b	89d4 <OSEventPendMulti+0x658>
    871c:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    8720:	e3403019 	movt	r3, #25
    8724:	e5932000 	ldr	r2, [r3]
    8728:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    872c:	e3403019 	movt	r3, #25
    8730:	e5933000 	ldr	r3, [r3]
    8734:	e5d3102c 	ldrb	r1, [r3, #44]	; 0x2c
    8738:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
    873c:	e1813003 	orr	r3, r1, r3
    8740:	e6ef3073 	uxtb	r3, r3
    8744:	e1e03c83 	mvn	r3, r3, lsl #25
    8748:	e1e03ca3 	mvn	r3, r3, lsr #25
    874c:	e6ef3073 	uxtb	r3, r3
    8750:	e5c2302c 	strb	r3, [r2, #44]	; 0x2c
    8754:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    8758:	e3403019 	movt	r3, #25
    875c:	e5933000 	ldr	r3, [r3]
    8760:	e3a02000 	mov	r2, #0
    8764:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    8768:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    876c:	e3403019 	movt	r3, #25
    8770:	e5933000 	ldr	r3, [r3]
    8774:	e51b202c 	ldr	r2, [fp, #-44]	; 0xffffffd4
    8778:	e5832028 	str	r2, [r3, #40]	; 0x28
    877c:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
    8780:	eb0002c5 	bl	929c <OS_EventTaskWaitMulti>
    8784:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
    8788:	eb001adb 	bl	f2fc <OS_CPU_SR_Restore>
    878c:	eb0004e9 	bl	9b38 <OS_Sched>
    8790:	eb001ac6 	bl	f2b0 <OS_CPU_SR_Save>
    8794:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    8798:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    879c:	e3403019 	movt	r3, #25
    87a0:	e5933000 	ldr	r3, [r3]
    87a4:	e5d3302d 	ldrb	r3, [r3, #45]	; 0x2d
    87a8:	e3530000 	cmp	r3, #0
    87ac:	0a000001 	beq	87b8 <OSEventPendMulti+0x43c>
    87b0:	e3530002 	cmp	r3, #2
    87b4:	1a00001f 	bne	8838 <OSEventPendMulti+0x4bc>
    87b8:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    87bc:	e3403019 	movt	r3, #25
    87c0:	e5933000 	ldr	r3, [r3]
    87c4:	e593301c 	ldr	r3, [r3, #28]
    87c8:	e50b300c 	str	r3, [fp, #-12]
    87cc:	e51b300c 	ldr	r3, [fp, #-12]
    87d0:	e3530000 	cmp	r3, #0
    87d4:	0a00000b 	beq	8808 <OSEventPendMulti+0x48c>
    87d8:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    87dc:	e51b200c 	ldr	r2, [fp, #-12]
    87e0:	e5832000 	str	r2, [r3]
    87e4:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    87e8:	e2833004 	add	r3, r3, #4
    87ec:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
    87f0:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    87f4:	e3a02000 	mov	r2, #0
    87f8:	e5832000 	str	r2, [r3]
    87fc:	e3a03001 	mov	r3, #1
    8800:	e14b31b0 	strh	r3, [fp, #-16]
    8804:	ea000012 	b	8854 <OSEventPendMulti+0x4d8>
    8808:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    880c:	e3403019 	movt	r3, #25
    8810:	e5933000 	ldr	r3, [r3]
    8814:	e3a02001 	mov	r2, #1
    8818:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    881c:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    8820:	e3403019 	movt	r3, #25
    8824:	e5933000 	ldr	r3, [r3]
    8828:	e1a00003 	mov	r0, r3
    882c:	e51b1020 	ldr	r1, [fp, #-32]	; 0xffffffe0
    8830:	eb000335 	bl	950c <OS_EventTaskRemoveMulti>
    8834:	ea000006 	b	8854 <OSEventPendMulti+0x4d8>
    8838:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    883c:	e3403019 	movt	r3, #25
    8840:	e5933000 	ldr	r3, [r3]
    8844:	e1a00003 	mov	r0, r3
    8848:	e51b1020 	ldr	r1, [fp, #-32]	; 0xffffffe0
    884c:	eb00032e 	bl	950c <OS_EventTaskRemoveMulti>
    8850:	e1a00000 	nop			; (mov r0, r0)
    8854:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    8858:	e3403019 	movt	r3, #25
    885c:	e5933000 	ldr	r3, [r3]
    8860:	e5d3302d 	ldrb	r3, [r3, #45]	; 0x2d
    8864:	e3530000 	cmp	r3, #0
    8868:	0a000002 	beq	8878 <OSEventPendMulti+0x4fc>
    886c:	e3530002 	cmp	r3, #2
    8870:	0a000027 	beq	8914 <OSEventPendMulti+0x598>
    8874:	ea000030 	b	893c <OSEventPendMulti+0x5c0>
    8878:	e51b300c 	ldr	r3, [fp, #-12]
    887c:	e5d33000 	ldrb	r3, [r3]
    8880:	e3530001 	cmp	r3, #1
    8884:	ba000014 	blt	88dc <OSEventPendMulti+0x560>
    8888:	e3530002 	cmp	r3, #2
    888c:	da000008 	ble	88b4 <OSEventPendMulti+0x538>
    8890:	e3530003 	cmp	r3, #3
    8894:	1a000010 	bne	88dc <OSEventPendMulti+0x560>
    8898:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    889c:	e3a02000 	mov	r2, #0
    88a0:	e5832000 	str	r2, [r3]
    88a4:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    88a8:	e2833004 	add	r3, r3, #4
    88ac:	e50b3028 	str	r3, [fp, #-40]	; 0xffffffd8
    88b0:	ea000013 	b	8904 <OSEventPendMulti+0x588>
    88b4:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    88b8:	e3403019 	movt	r3, #25
    88bc:	e5933000 	ldr	r3, [r3]
    88c0:	e5932024 	ldr	r2, [r3, #36]	; 0x24
    88c4:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    88c8:	e5832000 	str	r2, [r3]
    88cc:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    88d0:	e2833004 	add	r3, r3, #4
    88d4:	e50b3028 	str	r3, [fp, #-40]	; 0xffffffd8
    88d8:	ea000009 	b	8904 <OSEventPendMulti+0x588>
    88dc:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
    88e0:	eb001a85 	bl	f2fc <OS_CPU_SR_Restore>
    88e4:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    88e8:	e3a02000 	mov	r2, #0
    88ec:	e5832000 	str	r2, [r3]
    88f0:	e59b3004 	ldr	r3, [fp, #4]
    88f4:	e3a02001 	mov	r2, #1
    88f8:	e5c32000 	strb	r2, [r3]
    88fc:	e15b31b0 	ldrh	r3, [fp, #-16]
    8900:	ea000033 	b	89d4 <OSEventPendMulti+0x658>
    8904:	e59b3004 	ldr	r3, [fp, #4]
    8908:	e3a02000 	mov	r2, #0
    890c:	e5c32000 	strb	r2, [r3]
    8910:	ea000013 	b	8964 <OSEventPendMulti+0x5e8>
    8914:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    8918:	e3a02000 	mov	r2, #0
    891c:	e5832000 	str	r2, [r3]
    8920:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    8924:	e2833004 	add	r3, r3, #4
    8928:	e50b3028 	str	r3, [fp, #-40]	; 0xffffffd8
    892c:	e59b3004 	ldr	r3, [fp, #4]
    8930:	e3a0200e 	mov	r2, #14
    8934:	e5c32000 	strb	r2, [r3]
    8938:	ea000009 	b	8964 <OSEventPendMulti+0x5e8>
    893c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    8940:	e3a02000 	mov	r2, #0
    8944:	e5832000 	str	r2, [r3]
    8948:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    894c:	e2833004 	add	r3, r3, #4
    8950:	e50b3028 	str	r3, [fp, #-40]	; 0xffffffd8
    8954:	e59b3004 	ldr	r3, [fp, #4]
    8958:	e3a0200a 	mov	r2, #10
    895c:	e5c32000 	strb	r2, [r3]
    8960:	e1a00000 	nop			; (mov r0, r0)
    8964:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    8968:	e3403019 	movt	r3, #25
    896c:	e5933000 	ldr	r3, [r3]
    8970:	e3a02000 	mov	r2, #0
    8974:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    8978:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    897c:	e3403019 	movt	r3, #25
    8980:	e5933000 	ldr	r3, [r3]
    8984:	e3a02000 	mov	r2, #0
    8988:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    898c:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    8990:	e3403019 	movt	r3, #25
    8994:	e5933000 	ldr	r3, [r3]
    8998:	e3a02000 	mov	r2, #0
    899c:	e583201c 	str	r2, [r3, #28]
    89a0:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    89a4:	e3403019 	movt	r3, #25
    89a8:	e5933000 	ldr	r3, [r3]
    89ac:	e3a02000 	mov	r2, #0
    89b0:	e5832020 	str	r2, [r3, #32]
    89b4:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    89b8:	e3403019 	movt	r3, #25
    89bc:	e5933000 	ldr	r3, [r3]
    89c0:	e3a02000 	mov	r2, #0
    89c4:	e5832024 	str	r2, [r3, #36]	; 0x24
    89c8:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
    89cc:	eb001a4a 	bl	f2fc <OS_CPU_SR_Restore>
    89d0:	e15b31b0 	ldrh	r3, [fp, #-16]
    89d4:	e1a00003 	mov	r0, r3
    89d8:	e24bd004 	sub	sp, fp, #4
    89dc:	e8bd8800 	pop	{fp, pc}

000089e0 <OSInit>:
    89e0:	e92d4800 	push	{fp, lr}
    89e4:	e28db004 	add	fp, sp, #4
    89e8:	eb001b5e 	bl	f768 <OSInitHookBegin>
    89ec:	eb00036b 	bl	97a0 <OS_InitMisc>
    89f0:	eb00038f 	bl	9834 <OS_InitRdyList>
    89f4:	eb0003d3 	bl	9948 <OS_InitTCBList>
    89f8:	eb00031f 	bl	967c <OS_InitEventList>
    89fc:	eb00093b 	bl	aef0 <OS_MemInit>
    8a00:	eb001153 	bl	cf54 <OS_QInit>
    8a04:	eb0003b2 	bl	98d4 <OS_InitTaskIdle>
    8a08:	eb001b7b 	bl	f7fc <OSInitHookEnd>
    8a0c:	e8bd8800 	pop	{fp, pc}

00008a10 <OSIntEnter>:
    8a10:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8a14:	e28db000 	add	fp, sp, #0
    8a18:	e30a3e8e 	movw	r3, #44686	; 0xae8e
    8a1c:	e3403019 	movt	r3, #25
    8a20:	e5d33000 	ldrb	r3, [r3]
    8a24:	e3530001 	cmp	r3, #1
    8a28:	1a00000c 	bne	8a60 <OSIntEnter+0x50>
    8a2c:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    8a30:	e3403019 	movt	r3, #25
    8a34:	e5d33000 	ldrb	r3, [r3]
    8a38:	e35300ff 	cmp	r3, #255	; 0xff
    8a3c:	0a000007 	beq	8a60 <OSIntEnter+0x50>
    8a40:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    8a44:	e3403019 	movt	r3, #25
    8a48:	e5d33000 	ldrb	r3, [r3]
    8a4c:	e2833001 	add	r3, r3, #1
    8a50:	e6ef2073 	uxtb	r2, r3
    8a54:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    8a58:	e3403019 	movt	r3, #25
    8a5c:	e5c32000 	strb	r2, [r3]
    8a60:	e28bd000 	add	sp, fp, #0
    8a64:	e8bd0800 	ldmfd	sp!, {fp}
    8a68:	e12fff1e 	bx	lr

00008a6c <OSIntExit>:
    8a6c:	e92d4800 	push	{fp, lr}
    8a70:	e28db004 	add	fp, sp, #4
    8a74:	e24dd008 	sub	sp, sp, #8
    8a78:	e3a03000 	mov	r3, #0
    8a7c:	e50b3008 	str	r3, [fp, #-8]
    8a80:	e30a3e8e 	movw	r3, #44686	; 0xae8e
    8a84:	e3403019 	movt	r3, #25
    8a88:	e5d33000 	ldrb	r3, [r3]
    8a8c:	e3530001 	cmp	r3, #1
    8a90:	1a00003b 	bne	8b84 <OSIntExit+0x118>
    8a94:	eb001a05 	bl	f2b0 <OS_CPU_SR_Save>
    8a98:	e50b0008 	str	r0, [fp, #-8]
    8a9c:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    8aa0:	e3403019 	movt	r3, #25
    8aa4:	e5d33000 	ldrb	r3, [r3]
    8aa8:	e3530000 	cmp	r3, #0
    8aac:	0a000007 	beq	8ad0 <OSIntExit+0x64>
    8ab0:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    8ab4:	e3403019 	movt	r3, #25
    8ab8:	e5d33000 	ldrb	r3, [r3]
    8abc:	e2433001 	sub	r3, r3, #1
    8ac0:	e6ef2073 	uxtb	r2, r3
    8ac4:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    8ac8:	e3403019 	movt	r3, #25
    8acc:	e5c32000 	strb	r2, [r3]
    8ad0:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    8ad4:	e3403019 	movt	r3, #25
    8ad8:	e5d33000 	ldrb	r3, [r3]
    8adc:	e3530000 	cmp	r3, #0
    8ae0:	1a000025 	bne	8b7c <OSIntExit+0x110>
    8ae4:	e30a3e8c 	movw	r3, #44684	; 0xae8c
    8ae8:	e3403019 	movt	r3, #25
    8aec:	e5d33000 	ldrb	r3, [r3]
    8af0:	e3530000 	cmp	r3, #0
    8af4:	1a000020 	bne	8b7c <OSIntExit+0x110>
    8af8:	eb000444 	bl	9c10 <OS_SchedNew>
    8afc:	e30a3e94 	movw	r3, #44692	; 0xae94
    8b00:	e3403019 	movt	r3, #25
    8b04:	e5d33000 	ldrb	r3, [r3]
    8b08:	e1a02003 	mov	r2, r3
    8b0c:	e30b392c 	movw	r3, #47404	; 0xb92c
    8b10:	e3403019 	movt	r3, #25
    8b14:	e7932102 	ldr	r2, [r3, r2, lsl #2]
    8b18:	e30a3f88 	movw	r3, #44936	; 0xaf88
    8b1c:	e3403019 	movt	r3, #25
    8b20:	e5832000 	str	r2, [r3]
    8b24:	e30a3e94 	movw	r3, #44692	; 0xae94
    8b28:	e3403019 	movt	r3, #25
    8b2c:	e5d32000 	ldrb	r2, [r3]
    8b30:	e30a3e95 	movw	r3, #44693	; 0xae95
    8b34:	e3403019 	movt	r3, #25
    8b38:	e5d33000 	ldrb	r3, [r3]
    8b3c:	e1520003 	cmp	r2, r3
    8b40:	0a00000d 	beq	8b7c <OSIntExit+0x110>
    8b44:	e30a3f88 	movw	r3, #44936	; 0xaf88
    8b48:	e3403019 	movt	r3, #25
    8b4c:	e5933000 	ldr	r3, [r3]
    8b50:	e5932034 	ldr	r2, [r3, #52]	; 0x34
    8b54:	e2822001 	add	r2, r2, #1
    8b58:	e5832034 	str	r2, [r3, #52]	; 0x34
    8b5c:	e30a3f18 	movw	r3, #44824	; 0xaf18
    8b60:	e3403019 	movt	r3, #25
    8b64:	e5933000 	ldr	r3, [r3]
    8b68:	e2832001 	add	r2, r3, #1
    8b6c:	e30a3f18 	movw	r3, #44824	; 0xaf18
    8b70:	e3403019 	movt	r3, #25
    8b74:	e5832000 	str	r2, [r3]
    8b78:	eb001a32 	bl	f448 <OSIntCtxSw>
    8b7c:	e51b0008 	ldr	r0, [fp, #-8]
    8b80:	eb0019dd 	bl	f2fc <OS_CPU_SR_Restore>
    8b84:	e24bd004 	sub	sp, fp, #4
    8b88:	e8bd8800 	pop	{fp, pc}

00008b8c <OSSchedLock>:
    8b8c:	e92d4800 	push	{fp, lr}
    8b90:	e28db004 	add	fp, sp, #4
    8b94:	e24dd008 	sub	sp, sp, #8
    8b98:	e3a03000 	mov	r3, #0
    8b9c:	e50b3008 	str	r3, [fp, #-8]
    8ba0:	e30a3e8e 	movw	r3, #44686	; 0xae8e
    8ba4:	e3403019 	movt	r3, #25
    8ba8:	e5d33000 	ldrb	r3, [r3]
    8bac:	e3530001 	cmp	r3, #1
    8bb0:	1a000015 	bne	8c0c <OSSchedLock+0x80>
    8bb4:	eb0019bd 	bl	f2b0 <OS_CPU_SR_Save>
    8bb8:	e50b0008 	str	r0, [fp, #-8]
    8bbc:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    8bc0:	e3403019 	movt	r3, #25
    8bc4:	e5d33000 	ldrb	r3, [r3]
    8bc8:	e3530000 	cmp	r3, #0
    8bcc:	1a00000c 	bne	8c04 <OSSchedLock+0x78>
    8bd0:	e30a3e8c 	movw	r3, #44684	; 0xae8c
    8bd4:	e3403019 	movt	r3, #25
    8bd8:	e5d33000 	ldrb	r3, [r3]
    8bdc:	e35300ff 	cmp	r3, #255	; 0xff
    8be0:	0a000007 	beq	8c04 <OSSchedLock+0x78>
    8be4:	e30a3e8c 	movw	r3, #44684	; 0xae8c
    8be8:	e3403019 	movt	r3, #25
    8bec:	e5d33000 	ldrb	r3, [r3]
    8bf0:	e2833001 	add	r3, r3, #1
    8bf4:	e6ef2073 	uxtb	r2, r3
    8bf8:	e30a3e8c 	movw	r3, #44684	; 0xae8c
    8bfc:	e3403019 	movt	r3, #25
    8c00:	e5c32000 	strb	r2, [r3]
    8c04:	e51b0008 	ldr	r0, [fp, #-8]
    8c08:	eb0019bb 	bl	f2fc <OS_CPU_SR_Restore>
    8c0c:	e24bd004 	sub	sp, fp, #4
    8c10:	e8bd8800 	pop	{fp, pc}

00008c14 <OSSchedUnlock>:
    8c14:	e92d4800 	push	{fp, lr}
    8c18:	e28db004 	add	fp, sp, #4
    8c1c:	e24dd008 	sub	sp, sp, #8
    8c20:	e3a03000 	mov	r3, #0
    8c24:	e50b3008 	str	r3, [fp, #-8]
    8c28:	e30a3e8e 	movw	r3, #44686	; 0xae8e
    8c2c:	e3403019 	movt	r3, #25
    8c30:	e5d33000 	ldrb	r3, [r3]
    8c34:	e3530001 	cmp	r3, #1
    8c38:	1a000024 	bne	8cd0 <OSSchedUnlock+0xbc>
    8c3c:	eb00199b 	bl	f2b0 <OS_CPU_SR_Save>
    8c40:	e50b0008 	str	r0, [fp, #-8]
    8c44:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    8c48:	e3403019 	movt	r3, #25
    8c4c:	e5d33000 	ldrb	r3, [r3]
    8c50:	e3530000 	cmp	r3, #0
    8c54:	1a00001b 	bne	8cc8 <OSSchedUnlock+0xb4>
    8c58:	e30a3e8c 	movw	r3, #44684	; 0xae8c
    8c5c:	e3403019 	movt	r3, #25
    8c60:	e5d33000 	ldrb	r3, [r3]
    8c64:	e3530000 	cmp	r3, #0
    8c68:	0a000013 	beq	8cbc <OSSchedUnlock+0xa8>
    8c6c:	e30a3e8c 	movw	r3, #44684	; 0xae8c
    8c70:	e3403019 	movt	r3, #25
    8c74:	e5d33000 	ldrb	r3, [r3]
    8c78:	e2433001 	sub	r3, r3, #1
    8c7c:	e6ef2073 	uxtb	r2, r3
    8c80:	e30a3e8c 	movw	r3, #44684	; 0xae8c
    8c84:	e3403019 	movt	r3, #25
    8c88:	e5c32000 	strb	r2, [r3]
    8c8c:	e30a3e8c 	movw	r3, #44684	; 0xae8c
    8c90:	e3403019 	movt	r3, #25
    8c94:	e5d33000 	ldrb	r3, [r3]
    8c98:	e3530000 	cmp	r3, #0
    8c9c:	1a000003 	bne	8cb0 <OSSchedUnlock+0x9c>
    8ca0:	e51b0008 	ldr	r0, [fp, #-8]
    8ca4:	eb001994 	bl	f2fc <OS_CPU_SR_Restore>
    8ca8:	eb0003a2 	bl	9b38 <OS_Sched>
    8cac:	ea000007 	b	8cd0 <OSSchedUnlock+0xbc>
    8cb0:	e51b0008 	ldr	r0, [fp, #-8]
    8cb4:	eb001990 	bl	f2fc <OS_CPU_SR_Restore>
    8cb8:	ea000004 	b	8cd0 <OSSchedUnlock+0xbc>
    8cbc:	e51b0008 	ldr	r0, [fp, #-8]
    8cc0:	eb00198d 	bl	f2fc <OS_CPU_SR_Restore>
    8cc4:	ea000001 	b	8cd0 <OSSchedUnlock+0xbc>
    8cc8:	e51b0008 	ldr	r0, [fp, #-8]
    8ccc:	eb00198a 	bl	f2fc <OS_CPU_SR_Restore>
    8cd0:	e24bd004 	sub	sp, fp, #4
    8cd4:	e8bd8800 	pop	{fp, pc}

00008cd8 <OSStart>:
    8cd8:	e92d4800 	push	{fp, lr}
    8cdc:	e28db004 	add	fp, sp, #4
    8ce0:	e30a3e8e 	movw	r3, #44686	; 0xae8e
    8ce4:	e3403019 	movt	r3, #25
    8ce8:	e5d33000 	ldrb	r3, [r3]
    8cec:	e3530000 	cmp	r3, #0
    8cf0:	1a000017 	bne	8d54 <OSStart+0x7c>
    8cf4:	eb0003c5 	bl	9c10 <OS_SchedNew>
    8cf8:	e30a3e94 	movw	r3, #44692	; 0xae94
    8cfc:	e3403019 	movt	r3, #25
    8d00:	e5d32000 	ldrb	r2, [r3]
    8d04:	e30a3e95 	movw	r3, #44693	; 0xae95
    8d08:	e3403019 	movt	r3, #25
    8d0c:	e5c32000 	strb	r2, [r3]
    8d10:	e30a3e94 	movw	r3, #44692	; 0xae94
    8d14:	e3403019 	movt	r3, #25
    8d18:	e5d33000 	ldrb	r3, [r3]
    8d1c:	e1a02003 	mov	r2, r3
    8d20:	e30b392c 	movw	r3, #47404	; 0xb92c
    8d24:	e3403019 	movt	r3, #25
    8d28:	e7932102 	ldr	r2, [r3, r2, lsl #2]
    8d2c:	e30a3f88 	movw	r3, #44936	; 0xaf88
    8d30:	e3403019 	movt	r3, #25
    8d34:	e5832000 	str	r2, [r3]
    8d38:	e30a3f88 	movw	r3, #44936	; 0xaf88
    8d3c:	e3403019 	movt	r3, #25
    8d40:	e5932000 	ldr	r2, [r3]
    8d44:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    8d48:	e3403019 	movt	r3, #25
    8d4c:	e5832000 	str	r2, [r3]
    8d50:	eb001978 	bl	f338 <OSStartHighRdy>
    8d54:	e8bd8800 	pop	{fp, pc}

00008d58 <OSTimeTick>:
    8d58:	e92d4800 	push	{fp, lr}
    8d5c:	e28db004 	add	fp, sp, #4
    8d60:	e24dd010 	sub	sp, sp, #16
    8d64:	e3a03000 	mov	r3, #0
    8d68:	e50b3010 	str	r3, [fp, #-16]
    8d6c:	eb001b60 	bl	faf4 <OSTimeTickHook>
    8d70:	eb00194e 	bl	f2b0 <OS_CPU_SR_Save>
    8d74:	e50b0010 	str	r0, [fp, #-16]
    8d78:	e30a3fa8 	movw	r3, #44968	; 0xafa8
    8d7c:	e3403019 	movt	r3, #25
    8d80:	e5933000 	ldr	r3, [r3]
    8d84:	e2832001 	add	r2, r3, #1
    8d88:	e30a3fa8 	movw	r3, #44968	; 0xafa8
    8d8c:	e3403019 	movt	r3, #25
    8d90:	e5832000 	str	r2, [r3]
    8d94:	e51b0010 	ldr	r0, [fp, #-16]
    8d98:	eb001957 	bl	f2fc <OS_CPU_SR_Restore>
    8d9c:	e30a3e8e 	movw	r3, #44686	; 0xae8e
    8da0:	e3403019 	movt	r3, #25
    8da4:	e5d33000 	ldrb	r3, [r3]
    8da8:	e3530001 	cmp	r3, #1
    8dac:	1a00006f 	bne	8f70 <OSTimeTick+0x218>
    8db0:	e30a3f14 	movw	r3, #44820	; 0xaf14
    8db4:	e3403019 	movt	r3, #25
    8db8:	e5d33000 	ldrb	r3, [r3]
    8dbc:	e3530001 	cmp	r3, #1
    8dc0:	0a000006 	beq	8de0 <OSTimeTick+0x88>
    8dc4:	e3530002 	cmp	r3, #2
    8dc8:	0a000007 	beq	8dec <OSTimeTick+0x94>
    8dcc:	e3530000 	cmp	r3, #0
    8dd0:	1a00000c 	bne	8e08 <OSTimeTick+0xb0>
    8dd4:	e3a03001 	mov	r3, #1
    8dd8:	e54b3009 	strb	r3, [fp, #-9]
    8ddc:	ea000010 	b	8e24 <OSTimeTick+0xcc>
    8de0:	e3a03000 	mov	r3, #0
    8de4:	e54b3009 	strb	r3, [fp, #-9]
    8de8:	ea00000d 	b	8e24 <OSTimeTick+0xcc>
    8dec:	e3a03001 	mov	r3, #1
    8df0:	e54b3009 	strb	r3, [fp, #-9]
    8df4:	e30a3f14 	movw	r3, #44820	; 0xaf14
    8df8:	e3403019 	movt	r3, #25
    8dfc:	e3a02001 	mov	r2, #1
    8e00:	e5c32000 	strb	r2, [r3]
    8e04:	ea000006 	b	8e24 <OSTimeTick+0xcc>
    8e08:	e3a03001 	mov	r3, #1
    8e0c:	e54b3009 	strb	r3, [fp, #-9]
    8e10:	e30a3f14 	movw	r3, #44820	; 0xaf14
    8e14:	e3403019 	movt	r3, #25
    8e18:	e3a02000 	mov	r2, #0
    8e1c:	e5c32000 	strb	r2, [r3]
    8e20:	e1a00000 	nop			; (mov r0, r0)
    8e24:	e55b3009 	ldrb	r3, [fp, #-9]
    8e28:	e3530000 	cmp	r3, #0
    8e2c:	0a00004e 	beq	8f6c <OSTimeTick+0x214>
    8e30:	e30a3e98 	movw	r3, #44696	; 0xae98
    8e34:	e3403019 	movt	r3, #25
    8e38:	e5933000 	ldr	r3, [r3]
    8e3c:	e50b3008 	str	r3, [fp, #-8]
    8e40:	ea000044 	b	8f58 <OSTimeTick+0x200>
    8e44:	eb001919 	bl	f2b0 <OS_CPU_SR_Save>
    8e48:	e50b0010 	str	r0, [fp, #-16]
    8e4c:	e51b3008 	ldr	r3, [fp, #-8]
    8e50:	e5933028 	ldr	r3, [r3, #40]	; 0x28
    8e54:	e3530000 	cmp	r3, #0
    8e58:	0a000039 	beq	8f44 <OSTimeTick+0x1ec>
    8e5c:	e51b3008 	ldr	r3, [fp, #-8]
    8e60:	e5933028 	ldr	r3, [r3, #40]	; 0x28
    8e64:	e2432001 	sub	r2, r3, #1
    8e68:	e51b3008 	ldr	r3, [fp, #-8]
    8e6c:	e5832028 	str	r2, [r3, #40]	; 0x28
    8e70:	e51b3008 	ldr	r3, [fp, #-8]
    8e74:	e5933028 	ldr	r3, [r3, #40]	; 0x28
    8e78:	e3530000 	cmp	r3, #0
    8e7c:	1a000030 	bne	8f44 <OSTimeTick+0x1ec>
    8e80:	e51b3008 	ldr	r3, [fp, #-8]
    8e84:	e5d3302c 	ldrb	r3, [r3, #44]	; 0x2c
    8e88:	e2033037 	and	r3, r3, #55	; 0x37
    8e8c:	e3530000 	cmp	r3, #0
    8e90:	0a000009 	beq	8ebc <OSTimeTick+0x164>
    8e94:	e51b3008 	ldr	r3, [fp, #-8]
    8e98:	e5d3302c 	ldrb	r3, [r3, #44]	; 0x2c
    8e9c:	e3c33037 	bic	r3, r3, #55	; 0x37
    8ea0:	e6ef2073 	uxtb	r2, r3
    8ea4:	e51b3008 	ldr	r3, [fp, #-8]
    8ea8:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    8eac:	e51b3008 	ldr	r3, [fp, #-8]
    8eb0:	e3a02001 	mov	r2, #1
    8eb4:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    8eb8:	ea000002 	b	8ec8 <OSTimeTick+0x170>
    8ebc:	e51b3008 	ldr	r3, [fp, #-8]
    8ec0:	e3a02000 	mov	r2, #0
    8ec4:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    8ec8:	e51b3008 	ldr	r3, [fp, #-8]
    8ecc:	e5d3302c 	ldrb	r3, [r3, #44]	; 0x2c
    8ed0:	e2033008 	and	r3, r3, #8
    8ed4:	e3530000 	cmp	r3, #0
    8ed8:	1a000019 	bne	8f44 <OSTimeTick+0x1ec>
    8edc:	e51b3008 	ldr	r3, [fp, #-8]
    8ee0:	e5d32032 	ldrb	r2, [r3, #50]	; 0x32
    8ee4:	e30a3f90 	movw	r3, #44944	; 0xaf90
    8ee8:	e3403019 	movt	r3, #25
    8eec:	e5d33000 	ldrb	r3, [r3]
    8ef0:	e1823003 	orr	r3, r2, r3
    8ef4:	e6ef2073 	uxtb	r2, r3
    8ef8:	e30a3f90 	movw	r3, #44944	; 0xaf90
    8efc:	e3403019 	movt	r3, #25
    8f00:	e5c32000 	strb	r2, [r3]
    8f04:	e51b3008 	ldr	r3, [fp, #-8]
    8f08:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    8f0c:	e1a02003 	mov	r2, r3
    8f10:	e51b3008 	ldr	r3, [fp, #-8]
    8f14:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    8f18:	e1a01003 	mov	r1, r3
    8f1c:	e30a3f94 	movw	r3, #44948	; 0xaf94
    8f20:	e3403019 	movt	r3, #25
    8f24:	e7d31001 	ldrb	r1, [r3, r1]
    8f28:	e51b3008 	ldr	r3, [fp, #-8]
    8f2c:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    8f30:	e1813003 	orr	r3, r1, r3
    8f34:	e6ef1073 	uxtb	r1, r3
    8f38:	e30a3f94 	movw	r3, #44948	; 0xaf94
    8f3c:	e3403019 	movt	r3, #25
    8f40:	e7c31002 	strb	r1, [r3, r2]
    8f44:	e51b3008 	ldr	r3, [fp, #-8]
    8f48:	e5933014 	ldr	r3, [r3, #20]
    8f4c:	e50b3008 	str	r3, [fp, #-8]
    8f50:	e51b0010 	ldr	r0, [fp, #-16]
    8f54:	eb0018e8 	bl	f2fc <OS_CPU_SR_Restore>
    8f58:	e51b3008 	ldr	r3, [fp, #-8]
    8f5c:	e5d3302e 	ldrb	r3, [r3, #46]	; 0x2e
    8f60:	e353003f 	cmp	r3, #63	; 0x3f
    8f64:	1affffb6 	bne	8e44 <OSTimeTick+0xec>
    8f68:	ea000000 	b	8f70 <OSTimeTick+0x218>
    8f6c:	e1a00000 	nop			; (mov r0, r0)
    8f70:	e24bd004 	sub	sp, fp, #4
    8f74:	e8bd8800 	pop	{fp, pc}

00008f78 <OSVersion>:
    8f78:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8f7c:	e28db000 	add	fp, sp, #0
    8f80:	e3073217 	movw	r3, #29207	; 0x7217
    8f84:	e1a00003 	mov	r0, r3
    8f88:	e28bd000 	add	sp, fp, #0
    8f8c:	e8bd0800 	ldmfd	sp!, {fp}
    8f90:	e12fff1e 	bx	lr

00008f94 <OS_Dummy>:
    8f94:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8f98:	e28db000 	add	fp, sp, #0
    8f9c:	e28bd000 	add	sp, fp, #0
    8fa0:	e8bd0800 	ldmfd	sp!, {fp}
    8fa4:	e12fff1e 	bx	lr

00008fa8 <OS_EventTaskRdy>:
    8fa8:	e92d4800 	push	{fp, lr}
    8fac:	e28db004 	add	fp, sp, #4
    8fb0:	e24dd018 	sub	sp, sp, #24
    8fb4:	e50b0010 	str	r0, [fp, #-16]
    8fb8:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    8fbc:	e54b2015 	strb	r2, [fp, #-21]	; 0xffffffeb
    8fc0:	e54b3016 	strb	r3, [fp, #-22]	; 0xffffffea
    8fc4:	e51b3010 	ldr	r3, [fp, #-16]
    8fc8:	e5d3300a 	ldrb	r3, [r3, #10]
    8fcc:	e1a02003 	mov	r2, r3
    8fd0:	e3073628 	movw	r3, #30248	; 0x7628
    8fd4:	e3403001 	movt	r3, #1
    8fd8:	e7d33002 	ldrb	r3, [r3, r2]
    8fdc:	e54b3005 	strb	r3, [fp, #-5]
    8fe0:	e55b2005 	ldrb	r2, [fp, #-5]
    8fe4:	e51b1010 	ldr	r1, [fp, #-16]
    8fe8:	e3a03008 	mov	r3, #8
    8fec:	e0812002 	add	r2, r1, r2
    8ff0:	e0823003 	add	r3, r2, r3
    8ff4:	e5d33003 	ldrb	r3, [r3, #3]
    8ff8:	e1a02003 	mov	r2, r3
    8ffc:	e3073628 	movw	r3, #30248	; 0x7628
    9000:	e3403001 	movt	r3, #1
    9004:	e7d33002 	ldrb	r3, [r3, r2]
    9008:	e54b3006 	strb	r3, [fp, #-6]
    900c:	e55b3005 	ldrb	r3, [fp, #-5]
    9010:	e1a03183 	lsl	r3, r3, #3
    9014:	e6ef2073 	uxtb	r2, r3
    9018:	e55b3006 	ldrb	r3, [fp, #-6]
    901c:	e0823003 	add	r3, r2, r3
    9020:	e54b3007 	strb	r3, [fp, #-7]
    9024:	e55b2007 	ldrb	r2, [fp, #-7]
    9028:	e30b392c 	movw	r3, #47404	; 0xb92c
    902c:	e3403019 	movt	r3, #25
    9030:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    9034:	e50b300c 	str	r3, [fp, #-12]
    9038:	e51b300c 	ldr	r3, [fp, #-12]
    903c:	e3a02000 	mov	r2, #0
    9040:	e5832028 	str	r2, [r3, #40]	; 0x28
    9044:	e51b300c 	ldr	r3, [fp, #-12]
    9048:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    904c:	e5832024 	str	r2, [r3, #36]	; 0x24
    9050:	e51b300c 	ldr	r3, [fp, #-12]
    9054:	e5d3202c 	ldrb	r2, [r3, #44]	; 0x2c
    9058:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
    905c:	e1e03003 	mvn	r3, r3
    9060:	e6ef3073 	uxtb	r3, r3
    9064:	e0023003 	and	r3, r2, r3
    9068:	e6ef2073 	uxtb	r2, r3
    906c:	e51b300c 	ldr	r3, [fp, #-12]
    9070:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    9074:	e51b300c 	ldr	r3, [fp, #-12]
    9078:	e55b2016 	ldrb	r2, [fp, #-22]	; 0xffffffea
    907c:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    9080:	e51b300c 	ldr	r3, [fp, #-12]
    9084:	e5d3302c 	ldrb	r3, [r3, #44]	; 0x2c
    9088:	e2033008 	and	r3, r3, #8
    908c:	e3530000 	cmp	r3, #0
    9090:	1a000015 	bne	90ec <OS_EventTaskRdy+0x144>
    9094:	e51b300c 	ldr	r3, [fp, #-12]
    9098:	e5d32032 	ldrb	r2, [r3, #50]	; 0x32
    909c:	e30a3f90 	movw	r3, #44944	; 0xaf90
    90a0:	e3403019 	movt	r3, #25
    90a4:	e5d33000 	ldrb	r3, [r3]
    90a8:	e1823003 	orr	r3, r2, r3
    90ac:	e6ef2073 	uxtb	r2, r3
    90b0:	e30a3f90 	movw	r3, #44944	; 0xaf90
    90b4:	e3403019 	movt	r3, #25
    90b8:	e5c32000 	strb	r2, [r3]
    90bc:	e55b2005 	ldrb	r2, [fp, #-5]
    90c0:	e55b1005 	ldrb	r1, [fp, #-5]
    90c4:	e30a3f94 	movw	r3, #44948	; 0xaf94
    90c8:	e3403019 	movt	r3, #25
    90cc:	e7d31001 	ldrb	r1, [r3, r1]
    90d0:	e51b300c 	ldr	r3, [fp, #-12]
    90d4:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    90d8:	e1813003 	orr	r3, r1, r3
    90dc:	e6ef1073 	uxtb	r1, r3
    90e0:	e30a3f94 	movw	r3, #44948	; 0xaf94
    90e4:	e3403019 	movt	r3, #25
    90e8:	e7c31002 	strb	r1, [r3, r2]
    90ec:	e51b000c 	ldr	r0, [fp, #-12]
    90f0:	e51b1010 	ldr	r1, [fp, #-16]
    90f4:	eb0000d5 	bl	9450 <OS_EventTaskRemove>
    90f8:	e51b300c 	ldr	r3, [fp, #-12]
    90fc:	e5933020 	ldr	r3, [r3, #32]
    9100:	e3530000 	cmp	r3, #0
    9104:	0a000007 	beq	9128 <OS_EventTaskRdy+0x180>
    9108:	e51b300c 	ldr	r3, [fp, #-12]
    910c:	e5933020 	ldr	r3, [r3, #32]
    9110:	e51b000c 	ldr	r0, [fp, #-12]
    9114:	e1a01003 	mov	r1, r3
    9118:	eb0000fb 	bl	950c <OS_EventTaskRemoveMulti>
    911c:	e51b300c 	ldr	r3, [fp, #-12]
    9120:	e51b2010 	ldr	r2, [fp, #-16]
    9124:	e583201c 	str	r2, [r3, #28]
    9128:	e55b3007 	ldrb	r3, [fp, #-7]
    912c:	e1a00003 	mov	r0, r3
    9130:	e24bd004 	sub	sp, fp, #4
    9134:	e8bd8800 	pop	{fp, pc}

00009138 <OS_EventTaskWait>:
    9138:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    913c:	e28db000 	add	fp, sp, #0
    9140:	e24dd014 	sub	sp, sp, #20
    9144:	e50b0010 	str	r0, [fp, #-16]
    9148:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    914c:	e3403019 	movt	r3, #25
    9150:	e5933000 	ldr	r3, [r3]
    9154:	e51b2010 	ldr	r2, [fp, #-16]
    9158:	e583201c 	str	r2, [r3, #28]
    915c:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    9160:	e3403019 	movt	r3, #25
    9164:	e5933000 	ldr	r3, [r3]
    9168:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    916c:	e1a01003 	mov	r1, r3
    9170:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    9174:	e3403019 	movt	r3, #25
    9178:	e5933000 	ldr	r3, [r3]
    917c:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    9180:	e1a02003 	mov	r2, r3
    9184:	e51b0010 	ldr	r0, [fp, #-16]
    9188:	e3a03008 	mov	r3, #8
    918c:	e0802002 	add	r2, r0, r2
    9190:	e0823003 	add	r3, r2, r3
    9194:	e5d32003 	ldrb	r2, [r3, #3]
    9198:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    919c:	e3403019 	movt	r3, #25
    91a0:	e5933000 	ldr	r3, [r3]
    91a4:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    91a8:	e1823003 	orr	r3, r2, r3
    91ac:	e6ef2073 	uxtb	r2, r3
    91b0:	e51b0010 	ldr	r0, [fp, #-16]
    91b4:	e3a03008 	mov	r3, #8
    91b8:	e0801001 	add	r1, r0, r1
    91bc:	e0813003 	add	r3, r1, r3
    91c0:	e5c32003 	strb	r2, [r3, #3]
    91c4:	e51b3010 	ldr	r3, [fp, #-16]
    91c8:	e5d3200a 	ldrb	r2, [r3, #10]
    91cc:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    91d0:	e3403019 	movt	r3, #25
    91d4:	e5933000 	ldr	r3, [r3]
    91d8:	e5d33032 	ldrb	r3, [r3, #50]	; 0x32
    91dc:	e1823003 	orr	r3, r2, r3
    91e0:	e6ef2073 	uxtb	r2, r3
    91e4:	e51b3010 	ldr	r3, [fp, #-16]
    91e8:	e5c3200a 	strb	r2, [r3, #10]
    91ec:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    91f0:	e3403019 	movt	r3, #25
    91f4:	e5933000 	ldr	r3, [r3]
    91f8:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    91fc:	e54b3005 	strb	r3, [fp, #-5]
    9200:	e55b2005 	ldrb	r2, [fp, #-5]
    9204:	e55b1005 	ldrb	r1, [fp, #-5]
    9208:	e30a3f94 	movw	r3, #44948	; 0xaf94
    920c:	e3403019 	movt	r3, #25
    9210:	e7d31001 	ldrb	r1, [r3, r1]
    9214:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    9218:	e3403019 	movt	r3, #25
    921c:	e5933000 	ldr	r3, [r3]
    9220:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    9224:	e1e03003 	mvn	r3, r3
    9228:	e6ef3073 	uxtb	r3, r3
    922c:	e0013003 	and	r3, r1, r3
    9230:	e6ef1073 	uxtb	r1, r3
    9234:	e30a3f94 	movw	r3, #44948	; 0xaf94
    9238:	e3403019 	movt	r3, #25
    923c:	e7c31002 	strb	r1, [r3, r2]
    9240:	e55b2005 	ldrb	r2, [fp, #-5]
    9244:	e30a3f94 	movw	r3, #44948	; 0xaf94
    9248:	e3403019 	movt	r3, #25
    924c:	e7d33002 	ldrb	r3, [r3, r2]
    9250:	e3530000 	cmp	r3, #0
    9254:	1a00000d 	bne	9290 <OS_EventTaskWait+0x158>
    9258:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    925c:	e3403019 	movt	r3, #25
    9260:	e5933000 	ldr	r3, [r3]
    9264:	e5d33032 	ldrb	r3, [r3, #50]	; 0x32
    9268:	e1e03003 	mvn	r3, r3
    926c:	e6ef2073 	uxtb	r2, r3
    9270:	e30a3f90 	movw	r3, #44944	; 0xaf90
    9274:	e3403019 	movt	r3, #25
    9278:	e5d33000 	ldrb	r3, [r3]
    927c:	e0023003 	and	r3, r2, r3
    9280:	e6ef2073 	uxtb	r2, r3
    9284:	e30a3f90 	movw	r3, #44944	; 0xaf90
    9288:	e3403019 	movt	r3, #25
    928c:	e5c32000 	strb	r2, [r3]
    9290:	e28bd000 	add	sp, fp, #0
    9294:	e8bd0800 	ldmfd	sp!, {fp}
    9298:	e12fff1e 	bx	lr

0000929c <OS_EventTaskWaitMulti>:
    929c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    92a0:	e28db000 	add	fp, sp, #0
    92a4:	e24dd01c 	sub	sp, sp, #28
    92a8:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    92ac:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    92b0:	e3403019 	movt	r3, #25
    92b4:	e5933000 	ldr	r3, [r3]
    92b8:	e3a02000 	mov	r2, #0
    92bc:	e583201c 	str	r2, [r3, #28]
    92c0:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    92c4:	e3403019 	movt	r3, #25
    92c8:	e5933000 	ldr	r3, [r3]
    92cc:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
    92d0:	e5832020 	str	r2, [r3, #32]
    92d4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    92d8:	e50b3008 	str	r3, [fp, #-8]
    92dc:	e51b3008 	ldr	r3, [fp, #-8]
    92e0:	e5933000 	ldr	r3, [r3]
    92e4:	e50b300c 	str	r3, [fp, #-12]
    92e8:	ea000029 	b	9394 <OS_EventTaskWaitMulti+0xf8>
    92ec:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    92f0:	e3403019 	movt	r3, #25
    92f4:	e5933000 	ldr	r3, [r3]
    92f8:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    92fc:	e1a01003 	mov	r1, r3
    9300:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    9304:	e3403019 	movt	r3, #25
    9308:	e5933000 	ldr	r3, [r3]
    930c:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    9310:	e1a02003 	mov	r2, r3
    9314:	e51b000c 	ldr	r0, [fp, #-12]
    9318:	e3a03008 	mov	r3, #8
    931c:	e0802002 	add	r2, r0, r2
    9320:	e0823003 	add	r3, r2, r3
    9324:	e5d32003 	ldrb	r2, [r3, #3]
    9328:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    932c:	e3403019 	movt	r3, #25
    9330:	e5933000 	ldr	r3, [r3]
    9334:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    9338:	e1823003 	orr	r3, r2, r3
    933c:	e6ef2073 	uxtb	r2, r3
    9340:	e51b000c 	ldr	r0, [fp, #-12]
    9344:	e3a03008 	mov	r3, #8
    9348:	e0801001 	add	r1, r0, r1
    934c:	e0813003 	add	r3, r1, r3
    9350:	e5c32003 	strb	r2, [r3, #3]
    9354:	e51b300c 	ldr	r3, [fp, #-12]
    9358:	e5d3200a 	ldrb	r2, [r3, #10]
    935c:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    9360:	e3403019 	movt	r3, #25
    9364:	e5933000 	ldr	r3, [r3]
    9368:	e5d33032 	ldrb	r3, [r3, #50]	; 0x32
    936c:	e1823003 	orr	r3, r2, r3
    9370:	e6ef2073 	uxtb	r2, r3
    9374:	e51b300c 	ldr	r3, [fp, #-12]
    9378:	e5c3200a 	strb	r2, [r3, #10]
    937c:	e51b3008 	ldr	r3, [fp, #-8]
    9380:	e2833004 	add	r3, r3, #4
    9384:	e50b3008 	str	r3, [fp, #-8]
    9388:	e51b3008 	ldr	r3, [fp, #-8]
    938c:	e5933000 	ldr	r3, [r3]
    9390:	e50b300c 	str	r3, [fp, #-12]
    9394:	e51b300c 	ldr	r3, [fp, #-12]
    9398:	e3530000 	cmp	r3, #0
    939c:	1affffd2 	bne	92ec <OS_EventTaskWaitMulti+0x50>
    93a0:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    93a4:	e3403019 	movt	r3, #25
    93a8:	e5933000 	ldr	r3, [r3]
    93ac:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    93b0:	e54b300d 	strb	r3, [fp, #-13]
    93b4:	e55b200d 	ldrb	r2, [fp, #-13]
    93b8:	e55b100d 	ldrb	r1, [fp, #-13]
    93bc:	e30a3f94 	movw	r3, #44948	; 0xaf94
    93c0:	e3403019 	movt	r3, #25
    93c4:	e7d31001 	ldrb	r1, [r3, r1]
    93c8:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    93cc:	e3403019 	movt	r3, #25
    93d0:	e5933000 	ldr	r3, [r3]
    93d4:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    93d8:	e1e03003 	mvn	r3, r3
    93dc:	e6ef3073 	uxtb	r3, r3
    93e0:	e0013003 	and	r3, r1, r3
    93e4:	e6ef1073 	uxtb	r1, r3
    93e8:	e30a3f94 	movw	r3, #44948	; 0xaf94
    93ec:	e3403019 	movt	r3, #25
    93f0:	e7c31002 	strb	r1, [r3, r2]
    93f4:	e55b200d 	ldrb	r2, [fp, #-13]
    93f8:	e30a3f94 	movw	r3, #44948	; 0xaf94
    93fc:	e3403019 	movt	r3, #25
    9400:	e7d33002 	ldrb	r3, [r3, r2]
    9404:	e3530000 	cmp	r3, #0
    9408:	1a00000d 	bne	9444 <OS_EventTaskWaitMulti+0x1a8>
    940c:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    9410:	e3403019 	movt	r3, #25
    9414:	e5933000 	ldr	r3, [r3]
    9418:	e5d33032 	ldrb	r3, [r3, #50]	; 0x32
    941c:	e1e03003 	mvn	r3, r3
    9420:	e6ef2073 	uxtb	r2, r3
    9424:	e30a3f90 	movw	r3, #44944	; 0xaf90
    9428:	e3403019 	movt	r3, #25
    942c:	e5d33000 	ldrb	r3, [r3]
    9430:	e0023003 	and	r3, r2, r3
    9434:	e6ef2073 	uxtb	r2, r3
    9438:	e30a3f90 	movw	r3, #44944	; 0xaf90
    943c:	e3403019 	movt	r3, #25
    9440:	e5c32000 	strb	r2, [r3]
    9444:	e28bd000 	add	sp, fp, #0
    9448:	e8bd0800 	ldmfd	sp!, {fp}
    944c:	e12fff1e 	bx	lr

00009450 <OS_EventTaskRemove>:
    9450:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    9454:	e28db000 	add	fp, sp, #0
    9458:	e24dd014 	sub	sp, sp, #20
    945c:	e50b0010 	str	r0, [fp, #-16]
    9460:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    9464:	e51b3010 	ldr	r3, [fp, #-16]
    9468:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    946c:	e54b3005 	strb	r3, [fp, #-5]
    9470:	e55b1005 	ldrb	r1, [fp, #-5]
    9474:	e55b2005 	ldrb	r2, [fp, #-5]
    9478:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
    947c:	e3a03008 	mov	r3, #8
    9480:	e0802002 	add	r2, r0, r2
    9484:	e0823003 	add	r3, r2, r3
    9488:	e5d32003 	ldrb	r2, [r3, #3]
    948c:	e51b3010 	ldr	r3, [fp, #-16]
    9490:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    9494:	e1e03003 	mvn	r3, r3
    9498:	e6ef3073 	uxtb	r3, r3
    949c:	e0023003 	and	r3, r2, r3
    94a0:	e6ef2073 	uxtb	r2, r3
    94a4:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
    94a8:	e3a03008 	mov	r3, #8
    94ac:	e0801001 	add	r1, r0, r1
    94b0:	e0813003 	add	r3, r1, r3
    94b4:	e5c32003 	strb	r2, [r3, #3]
    94b8:	e55b2005 	ldrb	r2, [fp, #-5]
    94bc:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
    94c0:	e3a03008 	mov	r3, #8
    94c4:	e0812002 	add	r2, r1, r2
    94c8:	e0823003 	add	r3, r2, r3
    94cc:	e5d33003 	ldrb	r3, [r3, #3]
    94d0:	e3530000 	cmp	r3, #0
    94d4:	1a000009 	bne	9500 <OS_EventTaskRemove+0xb0>
    94d8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    94dc:	e5d3200a 	ldrb	r2, [r3, #10]
    94e0:	e51b3010 	ldr	r3, [fp, #-16]
    94e4:	e5d33032 	ldrb	r3, [r3, #50]	; 0x32
    94e8:	e1e03003 	mvn	r3, r3
    94ec:	e6ef3073 	uxtb	r3, r3
    94f0:	e0023003 	and	r3, r2, r3
    94f4:	e6ef2073 	uxtb	r2, r3
    94f8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    94fc:	e5c3200a 	strb	r2, [r3, #10]
    9500:	e28bd000 	add	sp, fp, #0
    9504:	e8bd0800 	ldmfd	sp!, {fp}
    9508:	e12fff1e 	bx	lr

0000950c <OS_EventTaskRemoveMulti>:
    950c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    9510:	e28db000 	add	fp, sp, #0
    9514:	e24dd01c 	sub	sp, sp, #28
    9518:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    951c:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
    9520:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    9524:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    9528:	e54b300d 	strb	r3, [fp, #-13]
    952c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    9530:	e5d33032 	ldrb	r3, [r3, #50]	; 0x32
    9534:	e54b300e 	strb	r3, [fp, #-14]
    9538:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    953c:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    9540:	e54b300f 	strb	r3, [fp, #-15]
    9544:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    9548:	e50b3008 	str	r3, [fp, #-8]
    954c:	e51b3008 	ldr	r3, [fp, #-8]
    9550:	e5933000 	ldr	r3, [r3]
    9554:	e50b300c 	str	r3, [fp, #-12]
    9558:	ea000027 	b	95fc <OS_EventTaskRemoveMulti+0xf0>
    955c:	e55b100d 	ldrb	r1, [fp, #-13]
    9560:	e55b200d 	ldrb	r2, [fp, #-13]
    9564:	e51b000c 	ldr	r0, [fp, #-12]
    9568:	e3a03008 	mov	r3, #8
    956c:	e0802002 	add	r2, r0, r2
    9570:	e0823003 	add	r3, r2, r3
    9574:	e5d32003 	ldrb	r2, [r3, #3]
    9578:	e55b300f 	ldrb	r3, [fp, #-15]
    957c:	e1e03003 	mvn	r3, r3
    9580:	e6ef3073 	uxtb	r3, r3
    9584:	e0023003 	and	r3, r2, r3
    9588:	e6ef2073 	uxtb	r2, r3
    958c:	e51b000c 	ldr	r0, [fp, #-12]
    9590:	e3a03008 	mov	r3, #8
    9594:	e0801001 	add	r1, r0, r1
    9598:	e0813003 	add	r3, r1, r3
    959c:	e5c32003 	strb	r2, [r3, #3]
    95a0:	e55b200d 	ldrb	r2, [fp, #-13]
    95a4:	e51b100c 	ldr	r1, [fp, #-12]
    95a8:	e3a03008 	mov	r3, #8
    95ac:	e0812002 	add	r2, r1, r2
    95b0:	e0823003 	add	r3, r2, r3
    95b4:	e5d33003 	ldrb	r3, [r3, #3]
    95b8:	e3530000 	cmp	r3, #0
    95bc:	1a000008 	bne	95e4 <OS_EventTaskRemoveMulti+0xd8>
    95c0:	e51b300c 	ldr	r3, [fp, #-12]
    95c4:	e5d3200a 	ldrb	r2, [r3, #10]
    95c8:	e55b300e 	ldrb	r3, [fp, #-14]
    95cc:	e1e03003 	mvn	r3, r3
    95d0:	e6ef3073 	uxtb	r3, r3
    95d4:	e0023003 	and	r3, r2, r3
    95d8:	e6ef2073 	uxtb	r2, r3
    95dc:	e51b300c 	ldr	r3, [fp, #-12]
    95e0:	e5c3200a 	strb	r2, [r3, #10]
    95e4:	e51b3008 	ldr	r3, [fp, #-8]
    95e8:	e2833004 	add	r3, r3, #4
    95ec:	e50b3008 	str	r3, [fp, #-8]
    95f0:	e51b3008 	ldr	r3, [fp, #-8]
    95f4:	e5933000 	ldr	r3, [r3]
    95f8:	e50b300c 	str	r3, [fp, #-12]
    95fc:	e51b300c 	ldr	r3, [fp, #-12]
    9600:	e3530000 	cmp	r3, #0
    9604:	1affffd4 	bne	955c <OS_EventTaskRemoveMulti+0x50>
    9608:	e28bd000 	add	sp, fp, #0
    960c:	e8bd0800 	ldmfd	sp!, {fp}
    9610:	e12fff1e 	bx	lr

00009614 <OS_EventWaitListInit>:
    9614:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    9618:	e28db000 	add	fp, sp, #0
    961c:	e24dd014 	sub	sp, sp, #20
    9620:	e50b0010 	str	r0, [fp, #-16]
    9624:	e51b3010 	ldr	r3, [fp, #-16]
    9628:	e3a02000 	mov	r2, #0
    962c:	e5c3200a 	strb	r2, [r3, #10]
    9630:	e3a03000 	mov	r3, #0
    9634:	e54b3005 	strb	r3, [fp, #-5]
    9638:	ea000009 	b	9664 <OS_EventWaitListInit+0x50>
    963c:	e55b2005 	ldrb	r2, [fp, #-5]
    9640:	e51b1010 	ldr	r1, [fp, #-16]
    9644:	e3a03008 	mov	r3, #8
    9648:	e0812002 	add	r2, r1, r2
    964c:	e0823003 	add	r3, r2, r3
    9650:	e3a02000 	mov	r2, #0
    9654:	e5c32003 	strb	r2, [r3, #3]
    9658:	e55b3005 	ldrb	r3, [fp, #-5]
    965c:	e2833001 	add	r3, r3, #1
    9660:	e54b3005 	strb	r3, [fp, #-5]
    9664:	e55b3005 	ldrb	r3, [fp, #-5]
    9668:	e3530007 	cmp	r3, #7
    966c:	9afffff2 	bls	963c <OS_EventWaitListInit+0x28>
    9670:	e28bd000 	add	sp, fp, #0
    9674:	e8bd0800 	ldmfd	sp!, {fp}
    9678:	e12fff1e 	bx	lr

0000967c <OS_InitEventList>:
    967c:	e92d4800 	push	{fp, lr}
    9680:	e28db004 	add	fp, sp, #4
    9684:	e24dd010 	sub	sp, sp, #16
    9688:	e30b01ac 	movw	r0, #45484	; 0xb1ac
    968c:	e3400019 	movt	r0, #25
    9690:	e3a010f0 	mov	r1, #240	; 0xf0
    9694:	eb0000f6 	bl	9a74 <OS_MemClr>
    9698:	e3a03000 	mov	r3, #0
    969c:	e14b30b6 	strh	r3, [fp, #-6]
    96a0:	ea000021 	b	972c <OS_InitEventList+0xb0>
    96a4:	e15b30b6 	ldrh	r3, [fp, #-6]
    96a8:	e2833001 	add	r3, r3, #1
    96ac:	e14b30b8 	strh	r3, [fp, #-8]
    96b0:	e15b20b6 	ldrh	r2, [fp, #-6]
    96b4:	e1a03002 	mov	r3, r2
    96b8:	e1a03083 	lsl	r3, r3, #1
    96bc:	e0833002 	add	r3, r3, r2
    96c0:	e1a03183 	lsl	r3, r3, #3
    96c4:	e30b21ac 	movw	r2, #45484	; 0xb1ac
    96c8:	e3402019 	movt	r2, #25
    96cc:	e0833002 	add	r3, r3, r2
    96d0:	e50b300c 	str	r3, [fp, #-12]
    96d4:	e15b20b8 	ldrh	r2, [fp, #-8]
    96d8:	e1a03002 	mov	r3, r2
    96dc:	e1a03083 	lsl	r3, r3, #1
    96e0:	e0833002 	add	r3, r3, r2
    96e4:	e1a03183 	lsl	r3, r3, #3
    96e8:	e30b21ac 	movw	r2, #45484	; 0xb1ac
    96ec:	e3402019 	movt	r2, #25
    96f0:	e0833002 	add	r3, r3, r2
    96f4:	e50b3010 	str	r3, [fp, #-16]
    96f8:	e51b300c 	ldr	r3, [fp, #-12]
    96fc:	e3a02000 	mov	r2, #0
    9700:	e5c32000 	strb	r2, [r3]
    9704:	e51b300c 	ldr	r3, [fp, #-12]
    9708:	e51b2010 	ldr	r2, [fp, #-16]
    970c:	e5832004 	str	r2, [r3, #4]
    9710:	e51b200c 	ldr	r2, [fp, #-12]
    9714:	e3073728 	movw	r3, #30504	; 0x7728
    9718:	e3403001 	movt	r3, #1
    971c:	e5823014 	str	r3, [r2, #20]
    9720:	e15b30b6 	ldrh	r3, [fp, #-6]
    9724:	e2833001 	add	r3, r3, #1
    9728:	e14b30b6 	strh	r3, [fp, #-6]
    972c:	e15b30b6 	ldrh	r3, [fp, #-6]
    9730:	e3530008 	cmp	r3, #8
    9734:	9affffda 	bls	96a4 <OS_InitEventList+0x28>
    9738:	e15b20b6 	ldrh	r2, [fp, #-6]
    973c:	e1a03002 	mov	r3, r2
    9740:	e1a03083 	lsl	r3, r3, #1
    9744:	e0833002 	add	r3, r3, r2
    9748:	e1a03183 	lsl	r3, r3, #3
    974c:	e30b21ac 	movw	r2, #45484	; 0xb1ac
    9750:	e3402019 	movt	r2, #25
    9754:	e0833002 	add	r3, r3, r2
    9758:	e50b300c 	str	r3, [fp, #-12]
    975c:	e51b300c 	ldr	r3, [fp, #-12]
    9760:	e3a02000 	mov	r2, #0
    9764:	e5c32000 	strb	r2, [r3]
    9768:	e51b300c 	ldr	r3, [fp, #-12]
    976c:	e3a02000 	mov	r2, #0
    9770:	e5832004 	str	r2, [r3, #4]
    9774:	e51b200c 	ldr	r2, [fp, #-12]
    9778:	e3073728 	movw	r3, #30504	; 0x7728
    977c:	e3403001 	movt	r3, #1
    9780:	e5823014 	str	r3, [r2, #20]
    9784:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    9788:	e3403019 	movt	r3, #25
    978c:	e30b21ac 	movw	r2, #45484	; 0xb1ac
    9790:	e3402019 	movt	r2, #25
    9794:	e5832000 	str	r2, [r3]
    9798:	e24bd004 	sub	sp, fp, #4
    979c:	e8bd8800 	pop	{fp, pc}

000097a0 <OS_InitMisc>:
    97a0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    97a4:	e28db000 	add	fp, sp, #0
    97a8:	e30a3fa8 	movw	r3, #44968	; 0xafa8
    97ac:	e3403019 	movt	r3, #25
    97b0:	e3a02000 	mov	r2, #0
    97b4:	e5832000 	str	r2, [r3]
    97b8:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    97bc:	e3403019 	movt	r3, #25
    97c0:	e3a02000 	mov	r2, #0
    97c4:	e5c32000 	strb	r2, [r3]
    97c8:	e30a3e8c 	movw	r3, #44684	; 0xae8c
    97cc:	e3403019 	movt	r3, #25
    97d0:	e3a02000 	mov	r2, #0
    97d4:	e5c32000 	strb	r2, [r3]
    97d8:	e30a3f20 	movw	r3, #44832	; 0xaf20
    97dc:	e3403019 	movt	r3, #25
    97e0:	e3a02000 	mov	r2, #0
    97e4:	e5c32000 	strb	r2, [r3]
    97e8:	e30a3e8e 	movw	r3, #44686	; 0xae8e
    97ec:	e3403019 	movt	r3, #25
    97f0:	e3a02000 	mov	r2, #0
    97f4:	e5c32000 	strb	r2, [r3]
    97f8:	e30a3f18 	movw	r3, #44824	; 0xaf18
    97fc:	e3403019 	movt	r3, #25
    9800:	e3a02000 	mov	r2, #0
    9804:	e5832000 	str	r2, [r3]
    9808:	e30a3e90 	movw	r3, #44688	; 0xae90
    980c:	e3403019 	movt	r3, #25
    9810:	e3a02000 	mov	r2, #0
    9814:	e5832000 	str	r2, [r3]
    9818:	e30a3e8d 	movw	r3, #44685	; 0xae8d
    981c:	e3403019 	movt	r3, #25
    9820:	e3a02000 	mov	r2, #0
    9824:	e5c32000 	strb	r2, [r3]
    9828:	e28bd000 	add	sp, fp, #0
    982c:	e8bd0800 	ldmfd	sp!, {fp}
    9830:	e12fff1e 	bx	lr

00009834 <OS_InitRdyList>:
    9834:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    9838:	e28db000 	add	fp, sp, #0
    983c:	e24dd00c 	sub	sp, sp, #12
    9840:	e30a3f90 	movw	r3, #44944	; 0xaf90
    9844:	e3403019 	movt	r3, #25
    9848:	e3a02000 	mov	r2, #0
    984c:	e5c32000 	strb	r2, [r3]
    9850:	e3a03000 	mov	r3, #0
    9854:	e54b3005 	strb	r3, [fp, #-5]
    9858:	ea000007 	b	987c <OS_InitRdyList+0x48>
    985c:	e55b2005 	ldrb	r2, [fp, #-5]
    9860:	e30a3f94 	movw	r3, #44948	; 0xaf94
    9864:	e3403019 	movt	r3, #25
    9868:	e3a01000 	mov	r1, #0
    986c:	e7c31002 	strb	r1, [r3, r2]
    9870:	e55b3005 	ldrb	r3, [fp, #-5]
    9874:	e2833001 	add	r3, r3, #1
    9878:	e54b3005 	strb	r3, [fp, #-5]
    987c:	e55b3005 	ldrb	r3, [fp, #-5]
    9880:	e3530007 	cmp	r3, #7
    9884:	9afffff4 	bls	985c <OS_InitRdyList+0x28>
    9888:	e30a3e95 	movw	r3, #44693	; 0xae95
    988c:	e3403019 	movt	r3, #25
    9890:	e3a02000 	mov	r2, #0
    9894:	e5c32000 	strb	r2, [r3]
    9898:	e30a3e94 	movw	r3, #44692	; 0xae94
    989c:	e3403019 	movt	r3, #25
    98a0:	e3a02000 	mov	r2, #0
    98a4:	e5c32000 	strb	r2, [r3]
    98a8:	e30a3f88 	movw	r3, #44936	; 0xaf88
    98ac:	e3403019 	movt	r3, #25
    98b0:	e3a02000 	mov	r2, #0
    98b4:	e5832000 	str	r2, [r3]
    98b8:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    98bc:	e3403019 	movt	r3, #25
    98c0:	e3a02000 	mov	r2, #0
    98c4:	e5832000 	str	r2, [r3]
    98c8:	e28bd000 	add	sp, fp, #0
    98cc:	e8bd0800 	ldmfd	sp!, {fp}
    98d0:	e12fff1e 	bx	lr

000098d4 <OS_InitTaskIdle>:
    98d4:	e92d4800 	push	{fp, lr}
    98d8:	e28db004 	add	fp, sp, #4
    98dc:	e24dd020 	sub	sp, sp, #32
    98e0:	e30f3fff 	movw	r3, #65535	; 0xffff
    98e4:	e58d3000 	str	r3, [sp]
    98e8:	e30a3fac 	movw	r3, #44972	; 0xafac
    98ec:	e3403019 	movt	r3, #25
    98f0:	e58d3004 	str	r3, [sp, #4]
    98f4:	e3a03080 	mov	r3, #128	; 0x80
    98f8:	e58d3008 	str	r3, [sp, #8]
    98fc:	e3a03000 	mov	r3, #0
    9900:	e58d300c 	str	r3, [sp, #12]
    9904:	e3a03003 	mov	r3, #3
    9908:	e58d3010 	str	r3, [sp, #16]
    990c:	e3090ce0 	movw	r0, #40160	; 0x9ce0
    9910:	e3400000 	movt	r0, #0
    9914:	e3a01000 	mov	r1, #0
    9918:	e59f2024 	ldr	r2, [pc, #36]	; 9944 <OS_InitTaskIdle+0x70>
    991c:	e3a0303f 	mov	r3, #63	; 0x3f
    9920:	eb001185 	bl	df3c <OSTaskCreateExt>
    9924:	e24b3005 	sub	r3, fp, #5
    9928:	e3a0003f 	mov	r0, #63	; 0x3f
    992c:	e307172c 	movw	r1, #30508	; 0x772c
    9930:	e3401001 	movt	r1, #1
    9934:	e1a02003 	mov	r2, r3
    9938:	eb001325 	bl	e5d4 <OSTaskNameSet>
    993c:	e24bd004 	sub	sp, fp, #4
    9940:	e8bd8800 	pop	{fp, pc}
    9944:	0019b1a8 	andseq	fp, r9, r8, lsr #3

00009948 <OS_InitTCBList>:
    9948:	e92d4800 	push	{fp, lr}
    994c:	e28db004 	add	fp, sp, #4
    9950:	e24dd010 	sub	sp, sp, #16
    9954:	e30b029c 	movw	r0, #45724	; 0xb29c
    9958:	e3400019 	movt	r0, #25
    995c:	e3a01e69 	mov	r1, #1680	; 0x690
    9960:	eb000043 	bl	9a74 <OS_MemClr>
    9964:	e30b092c 	movw	r0, #47404	; 0xb92c
    9968:	e3400019 	movt	r0, #25
    996c:	e3a01c01 	mov	r1, #256	; 0x100
    9970:	eb00003f 	bl	9a74 <OS_MemClr>
    9974:	e3a03000 	mov	r3, #0
    9978:	e54b3005 	strb	r3, [fp, #-5]
    997c:	ea00001e 	b	99fc <OS_InitTCBList+0xb4>
    9980:	e55b3005 	ldrb	r3, [fp, #-5]
    9984:	e2833001 	add	r3, r3, #1
    9988:	e54b3006 	strb	r3, [fp, #-6]
    998c:	e55b2005 	ldrb	r2, [fp, #-5]
    9990:	e1a03002 	mov	r3, r2
    9994:	e1a03103 	lsl	r3, r3, #2
    9998:	e0833002 	add	r3, r3, r2
    999c:	e1a03203 	lsl	r3, r3, #4
    99a0:	e30b229c 	movw	r2, #45724	; 0xb29c
    99a4:	e3402019 	movt	r2, #25
    99a8:	e0833002 	add	r3, r3, r2
    99ac:	e50b300c 	str	r3, [fp, #-12]
    99b0:	e55b2006 	ldrb	r2, [fp, #-6]
    99b4:	e1a03002 	mov	r3, r2
    99b8:	e1a03103 	lsl	r3, r3, #2
    99bc:	e0833002 	add	r3, r3, r2
    99c0:	e1a03203 	lsl	r3, r3, #4
    99c4:	e30b229c 	movw	r2, #45724	; 0xb29c
    99c8:	e3402019 	movt	r2, #25
    99cc:	e0833002 	add	r3, r3, r2
    99d0:	e50b3010 	str	r3, [fp, #-16]
    99d4:	e51b300c 	ldr	r3, [fp, #-12]
    99d8:	e51b2010 	ldr	r2, [fp, #-16]
    99dc:	e5832014 	str	r2, [r3, #20]
    99e0:	e51b200c 	ldr	r2, [fp, #-12]
    99e4:	e3073728 	movw	r3, #30504	; 0x7728
    99e8:	e3403001 	movt	r3, #1
    99ec:	e5823048 	str	r3, [r2, #72]	; 0x48
    99f0:	e55b3005 	ldrb	r3, [fp, #-5]
    99f4:	e2833001 	add	r3, r3, #1
    99f8:	e54b3005 	strb	r3, [fp, #-5]
    99fc:	e55b3005 	ldrb	r3, [fp, #-5]
    9a00:	e3530013 	cmp	r3, #19
    9a04:	9affffdd 	bls	9980 <OS_InitTCBList+0x38>
    9a08:	e55b2005 	ldrb	r2, [fp, #-5]
    9a0c:	e1a03002 	mov	r3, r2
    9a10:	e1a03103 	lsl	r3, r3, #2
    9a14:	e0833002 	add	r3, r3, r2
    9a18:	e1a03203 	lsl	r3, r3, #4
    9a1c:	e30b229c 	movw	r2, #45724	; 0xb29c
    9a20:	e3402019 	movt	r2, #25
    9a24:	e0833002 	add	r3, r3, r2
    9a28:	e50b300c 	str	r3, [fp, #-12]
    9a2c:	e51b300c 	ldr	r3, [fp, #-12]
    9a30:	e3a02000 	mov	r2, #0
    9a34:	e5832014 	str	r2, [r3, #20]
    9a38:	e51b200c 	ldr	r2, [fp, #-12]
    9a3c:	e3073728 	movw	r3, #30504	; 0x7728
    9a40:	e3403001 	movt	r3, #1
    9a44:	e5823048 	str	r3, [r2, #72]	; 0x48
    9a48:	e30a3e98 	movw	r3, #44696	; 0xae98
    9a4c:	e3403019 	movt	r3, #25
    9a50:	e3a02000 	mov	r2, #0
    9a54:	e5832000 	str	r2, [r3]
    9a58:	e30a3f1c 	movw	r3, #44828	; 0xaf1c
    9a5c:	e3403019 	movt	r3, #25
    9a60:	e30b229c 	movw	r2, #45724	; 0xb29c
    9a64:	e3402019 	movt	r2, #25
    9a68:	e5832000 	str	r2, [r3]
    9a6c:	e24bd004 	sub	sp, fp, #4
    9a70:	e8bd8800 	pop	{fp, pc}

00009a74 <OS_MemClr>:
    9a74:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    9a78:	e28db000 	add	fp, sp, #0
    9a7c:	e24dd00c 	sub	sp, sp, #12
    9a80:	e50b0008 	str	r0, [fp, #-8]
    9a84:	e1a03001 	mov	r3, r1
    9a88:	e14b30ba 	strh	r3, [fp, #-10]
    9a8c:	ea000008 	b	9ab4 <OS_MemClr+0x40>
    9a90:	e51b3008 	ldr	r3, [fp, #-8]
    9a94:	e3a02000 	mov	r2, #0
    9a98:	e5c32000 	strb	r2, [r3]
    9a9c:	e51b3008 	ldr	r3, [fp, #-8]
    9aa0:	e2833001 	add	r3, r3, #1
    9aa4:	e50b3008 	str	r3, [fp, #-8]
    9aa8:	e15b30ba 	ldrh	r3, [fp, #-10]
    9aac:	e2433001 	sub	r3, r3, #1
    9ab0:	e14b30ba 	strh	r3, [fp, #-10]
    9ab4:	e15b30ba 	ldrh	r3, [fp, #-10]
    9ab8:	e3530000 	cmp	r3, #0
    9abc:	1afffff3 	bne	9a90 <OS_MemClr+0x1c>
    9ac0:	e28bd000 	add	sp, fp, #0
    9ac4:	e8bd0800 	ldmfd	sp!, {fp}
    9ac8:	e12fff1e 	bx	lr

00009acc <OS_MemCopy>:
    9acc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    9ad0:	e28db000 	add	fp, sp, #0
    9ad4:	e24dd014 	sub	sp, sp, #20
    9ad8:	e50b0008 	str	r0, [fp, #-8]
    9adc:	e50b100c 	str	r1, [fp, #-12]
    9ae0:	e1a03002 	mov	r3, r2
    9ae4:	e14b30be 	strh	r3, [fp, #-14]
    9ae8:	ea00000c 	b	9b20 <OS_MemCopy+0x54>
    9aec:	e51b300c 	ldr	r3, [fp, #-12]
    9af0:	e5d32000 	ldrb	r2, [r3]
    9af4:	e51b3008 	ldr	r3, [fp, #-8]
    9af8:	e5c32000 	strb	r2, [r3]
    9afc:	e51b3008 	ldr	r3, [fp, #-8]
    9b00:	e2833001 	add	r3, r3, #1
    9b04:	e50b3008 	str	r3, [fp, #-8]
    9b08:	e51b300c 	ldr	r3, [fp, #-12]
    9b0c:	e2833001 	add	r3, r3, #1
    9b10:	e50b300c 	str	r3, [fp, #-12]
    9b14:	e15b30be 	ldrh	r3, [fp, #-14]
    9b18:	e2433001 	sub	r3, r3, #1
    9b1c:	e14b30be 	strh	r3, [fp, #-14]
    9b20:	e15b30be 	ldrh	r3, [fp, #-14]
    9b24:	e3530000 	cmp	r3, #0
    9b28:	1affffef 	bne	9aec <OS_MemCopy+0x20>
    9b2c:	e28bd000 	add	sp, fp, #0
    9b30:	e8bd0800 	ldmfd	sp!, {fp}
    9b34:	e12fff1e 	bx	lr

00009b38 <OS_Sched>:
    9b38:	e92d4800 	push	{fp, lr}
    9b3c:	e28db004 	add	fp, sp, #4
    9b40:	e24dd008 	sub	sp, sp, #8
    9b44:	e3a03000 	mov	r3, #0
    9b48:	e50b3008 	str	r3, [fp, #-8]
    9b4c:	eb0015d7 	bl	f2b0 <OS_CPU_SR_Save>
    9b50:	e50b0008 	str	r0, [fp, #-8]
    9b54:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    9b58:	e3403019 	movt	r3, #25
    9b5c:	e5d33000 	ldrb	r3, [r3]
    9b60:	e3530000 	cmp	r3, #0
    9b64:	1a000025 	bne	9c00 <OS_Sched+0xc8>
    9b68:	e30a3e8c 	movw	r3, #44684	; 0xae8c
    9b6c:	e3403019 	movt	r3, #25
    9b70:	e5d33000 	ldrb	r3, [r3]
    9b74:	e3530000 	cmp	r3, #0
    9b78:	1a000020 	bne	9c00 <OS_Sched+0xc8>
    9b7c:	eb000023 	bl	9c10 <OS_SchedNew>
    9b80:	e30a3e94 	movw	r3, #44692	; 0xae94
    9b84:	e3403019 	movt	r3, #25
    9b88:	e5d33000 	ldrb	r3, [r3]
    9b8c:	e1a02003 	mov	r2, r3
    9b90:	e30b392c 	movw	r3, #47404	; 0xb92c
    9b94:	e3403019 	movt	r3, #25
    9b98:	e7932102 	ldr	r2, [r3, r2, lsl #2]
    9b9c:	e30a3f88 	movw	r3, #44936	; 0xaf88
    9ba0:	e3403019 	movt	r3, #25
    9ba4:	e5832000 	str	r2, [r3]
    9ba8:	e30a3e94 	movw	r3, #44692	; 0xae94
    9bac:	e3403019 	movt	r3, #25
    9bb0:	e5d32000 	ldrb	r2, [r3]
    9bb4:	e30a3e95 	movw	r3, #44693	; 0xae95
    9bb8:	e3403019 	movt	r3, #25
    9bbc:	e5d33000 	ldrb	r3, [r3]
    9bc0:	e1520003 	cmp	r2, r3
    9bc4:	0a00000d 	beq	9c00 <OS_Sched+0xc8>
    9bc8:	e30a3f88 	movw	r3, #44936	; 0xaf88
    9bcc:	e3403019 	movt	r3, #25
    9bd0:	e5933000 	ldr	r3, [r3]
    9bd4:	e5932034 	ldr	r2, [r3, #52]	; 0x34
    9bd8:	e2822001 	add	r2, r2, #1
    9bdc:	e5832034 	str	r2, [r3, #52]	; 0x34
    9be0:	e30a3f18 	movw	r3, #44824	; 0xaf18
    9be4:	e3403019 	movt	r3, #25
    9be8:	e5933000 	ldr	r3, [r3]
    9bec:	e2832001 	add	r2, r3, #1
    9bf0:	e30a3f18 	movw	r3, #44824	; 0xaf18
    9bf4:	e3403019 	movt	r3, #25
    9bf8:	e5832000 	str	r2, [r3]
    9bfc:	eb0015e4 	bl	f394 <OSCtxSw>
    9c00:	e51b0008 	ldr	r0, [fp, #-8]
    9c04:	eb0015bc 	bl	f2fc <OS_CPU_SR_Restore>
    9c08:	e24bd004 	sub	sp, fp, #4
    9c0c:	e8bd8800 	pop	{fp, pc}

00009c10 <OS_SchedNew>:
    9c10:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    9c14:	e28db000 	add	fp, sp, #0
    9c18:	e24dd00c 	sub	sp, sp, #12
    9c1c:	e30a3f90 	movw	r3, #44944	; 0xaf90
    9c20:	e3403019 	movt	r3, #25
    9c24:	e5d33000 	ldrb	r3, [r3]
    9c28:	e1a02003 	mov	r2, r3
    9c2c:	e3073628 	movw	r3, #30248	; 0x7628
    9c30:	e3403001 	movt	r3, #1
    9c34:	e7d33002 	ldrb	r3, [r3, r2]
    9c38:	e54b3005 	strb	r3, [fp, #-5]
    9c3c:	e55b3005 	ldrb	r3, [fp, #-5]
    9c40:	e1a03183 	lsl	r3, r3, #3
    9c44:	e6ef2073 	uxtb	r2, r3
    9c48:	e55b1005 	ldrb	r1, [fp, #-5]
    9c4c:	e30a3f94 	movw	r3, #44948	; 0xaf94
    9c50:	e3403019 	movt	r3, #25
    9c54:	e7d33001 	ldrb	r3, [r3, r1]
    9c58:	e1a01003 	mov	r1, r3
    9c5c:	e3073628 	movw	r3, #30248	; 0x7628
    9c60:	e3403001 	movt	r3, #1
    9c64:	e7d33001 	ldrb	r3, [r3, r1]
    9c68:	e0823003 	add	r3, r2, r3
    9c6c:	e6ef2073 	uxtb	r2, r3
    9c70:	e30a3e94 	movw	r3, #44692	; 0xae94
    9c74:	e3403019 	movt	r3, #25
    9c78:	e5c32000 	strb	r2, [r3]
    9c7c:	e28bd000 	add	sp, fp, #0
    9c80:	e8bd0800 	ldmfd	sp!, {fp}
    9c84:	e12fff1e 	bx	lr

00009c88 <OS_StrLen>:
    9c88:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    9c8c:	e28db000 	add	fp, sp, #0
    9c90:	e24dd014 	sub	sp, sp, #20
    9c94:	e50b0010 	str	r0, [fp, #-16]
    9c98:	e3a03000 	mov	r3, #0
    9c9c:	e54b3005 	strb	r3, [fp, #-5]
    9ca0:	ea000005 	b	9cbc <OS_StrLen+0x34>
    9ca4:	e51b3010 	ldr	r3, [fp, #-16]
    9ca8:	e2833001 	add	r3, r3, #1
    9cac:	e50b3010 	str	r3, [fp, #-16]
    9cb0:	e55b3005 	ldrb	r3, [fp, #-5]
    9cb4:	e2833001 	add	r3, r3, #1
    9cb8:	e54b3005 	strb	r3, [fp, #-5]
    9cbc:	e51b3010 	ldr	r3, [fp, #-16]
    9cc0:	e5d33000 	ldrb	r3, [r3]
    9cc4:	e3530000 	cmp	r3, #0
    9cc8:	1afffff5 	bne	9ca4 <OS_StrLen+0x1c>
    9ccc:	e55b3005 	ldrb	r3, [fp, #-5]
    9cd0:	e1a00003 	mov	r0, r3
    9cd4:	e28bd000 	add	sp, fp, #0
    9cd8:	e8bd0800 	ldmfd	sp!, {fp}
    9cdc:	e12fff1e 	bx	lr

00009ce0 <OS_TaskIdle>:
    9ce0:	e92d4800 	push	{fp, lr}
    9ce4:	e28db004 	add	fp, sp, #4
    9ce8:	e24dd010 	sub	sp, sp, #16
    9cec:	e50b0010 	str	r0, [fp, #-16]
    9cf0:	e3a03000 	mov	r3, #0
    9cf4:	e50b3008 	str	r3, [fp, #-8]
    9cf8:	eb00156c 	bl	f2b0 <OS_CPU_SR_Save>
    9cfc:	e50b0008 	str	r0, [fp, #-8]
    9d00:	e30a3e90 	movw	r3, #44688	; 0xae90
    9d04:	e3403019 	movt	r3, #25
    9d08:	e5933000 	ldr	r3, [r3]
    9d0c:	e2832001 	add	r2, r3, #1
    9d10:	e30a3e90 	movw	r3, #44688	; 0xae90
    9d14:	e3403019 	movt	r3, #25
    9d18:	e5832000 	str	r2, [r3]
    9d1c:	e51b0008 	ldr	r0, [fp, #-8]
    9d20:	eb001575 	bl	f2fc <OS_CPU_SR_Restore>
    9d24:	eb0016c9 	bl	f850 <OSTaskIdleHook>
    9d28:	eafffff2 	b	9cf8 <OS_TaskIdle+0x18>

00009d2c <OS_TaskStatStkChk>:
    9d2c:	e92d4800 	push	{fp, lr}
    9d30:	e28db004 	add	fp, sp, #4
    9d34:	e24dd010 	sub	sp, sp, #16
    9d38:	e3a03000 	mov	r3, #0
    9d3c:	e54b3005 	strb	r3, [fp, #-5]
    9d40:	ea000022 	b	9dd0 <OS_TaskStatStkChk+0xa4>
    9d44:	e55b2005 	ldrb	r2, [fp, #-5]
    9d48:	e24b3014 	sub	r3, fp, #20
    9d4c:	e1a00002 	mov	r0, r2
    9d50:	e1a01003 	mov	r1, r3
    9d54:	eb0012ba 	bl	e844 <OSTaskStkChk>
    9d58:	e1a03000 	mov	r3, r0
    9d5c:	e54b3006 	strb	r3, [fp, #-6]
    9d60:	e55b3006 	ldrb	r3, [fp, #-6]
    9d64:	e3530000 	cmp	r3, #0
    9d68:	1a000015 	bne	9dc4 <OS_TaskStatStkChk+0x98>
    9d6c:	e55b2005 	ldrb	r2, [fp, #-5]
    9d70:	e30b392c 	movw	r3, #47404	; 0xb92c
    9d74:	e3403019 	movt	r3, #25
    9d78:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    9d7c:	e50b300c 	str	r3, [fp, #-12]
    9d80:	e51b300c 	ldr	r3, [fp, #-12]
    9d84:	e3530000 	cmp	r3, #0
    9d88:	0a00000d 	beq	9dc4 <OS_TaskStatStkChk+0x98>
    9d8c:	e51b300c 	ldr	r3, [fp, #-12]
    9d90:	e3530001 	cmp	r3, #1
    9d94:	0a00000a 	beq	9dc4 <OS_TaskStatStkChk+0x98>
    9d98:	e51b300c 	ldr	r3, [fp, #-12]
    9d9c:	e5932008 	ldr	r2, [r3, #8]
    9da0:	e51b300c 	ldr	r3, [fp, #-12]
    9da4:	e593300c 	ldr	r3, [r3, #12]
    9da8:	e1a03103 	lsl	r3, r3, #2
    9dac:	e0822003 	add	r2, r2, r3
    9db0:	e51b300c 	ldr	r3, [fp, #-12]
    9db4:	e5832040 	str	r2, [r3, #64]	; 0x40
    9db8:	e51b2010 	ldr	r2, [fp, #-16]
    9dbc:	e51b300c 	ldr	r3, [fp, #-12]
    9dc0:	e5832044 	str	r2, [r3, #68]	; 0x44
    9dc4:	e55b3005 	ldrb	r3, [fp, #-5]
    9dc8:	e2833001 	add	r3, r3, #1
    9dcc:	e54b3005 	strb	r3, [fp, #-5]
    9dd0:	e55b3005 	ldrb	r3, [fp, #-5]
    9dd4:	e353003f 	cmp	r3, #63	; 0x3f
    9dd8:	9affffd9 	bls	9d44 <OS_TaskStatStkChk+0x18>
    9ddc:	e24bd004 	sub	sp, fp, #4
    9de0:	e8bd8800 	pop	{fp, pc}

00009de4 <OS_TCBInit>:
    9de4:	e92d4800 	push	{fp, lr}
    9de8:	e28db004 	add	fp, sp, #4
    9dec:	e24dd020 	sub	sp, sp, #32
    9df0:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
    9df4:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
    9df8:	e1a02000 	mov	r2, r0
    9dfc:	e54b2015 	strb	r2, [fp, #-21]	; 0xffffffeb
    9e00:	e14b31b8 	strh	r3, [fp, #-24]	; 0xffffffe8
    9e04:	e3a03000 	mov	r3, #0
    9e08:	e50b300c 	str	r3, [fp, #-12]
    9e0c:	eb001527 	bl	f2b0 <OS_CPU_SR_Save>
    9e10:	e50b000c 	str	r0, [fp, #-12]
    9e14:	e30a3f1c 	movw	r3, #44828	; 0xaf1c
    9e18:	e3403019 	movt	r3, #25
    9e1c:	e5933000 	ldr	r3, [r3]
    9e20:	e50b3010 	str	r3, [fp, #-16]
    9e24:	e51b3010 	ldr	r3, [fp, #-16]
    9e28:	e3530000 	cmp	r3, #0
    9e2c:	0a0000b8 	beq	a114 <OS_TCBInit+0x330>
    9e30:	e51b3010 	ldr	r3, [fp, #-16]
    9e34:	e5932014 	ldr	r2, [r3, #20]
    9e38:	e30a3f1c 	movw	r3, #44828	; 0xaf1c
    9e3c:	e3403019 	movt	r3, #25
    9e40:	e5832000 	str	r2, [r3]
    9e44:	e51b000c 	ldr	r0, [fp, #-12]
    9e48:	eb00152b 	bl	f2fc <OS_CPU_SR_Restore>
    9e4c:	e51b3010 	ldr	r3, [fp, #-16]
    9e50:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
    9e54:	e5832000 	str	r2, [r3]
    9e58:	e51b3010 	ldr	r3, [fp, #-16]
    9e5c:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
    9e60:	e5c3202e 	strb	r2, [r3, #46]	; 0x2e
    9e64:	e51b3010 	ldr	r3, [fp, #-16]
    9e68:	e3a02000 	mov	r2, #0
    9e6c:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    9e70:	e51b3010 	ldr	r3, [fp, #-16]
    9e74:	e3a02000 	mov	r2, #0
    9e78:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    9e7c:	e51b3010 	ldr	r3, [fp, #-16]
    9e80:	e3a02000 	mov	r2, #0
    9e84:	e5832028 	str	r2, [r3, #40]	; 0x28
    9e88:	e51b3010 	ldr	r3, [fp, #-16]
    9e8c:	e59b2008 	ldr	r2, [fp, #8]
    9e90:	e5832004 	str	r2, [r3, #4]
    9e94:	e51b3010 	ldr	r3, [fp, #-16]
    9e98:	e59b2004 	ldr	r2, [fp, #4]
    9e9c:	e583200c 	str	r2, [r3, #12]
    9ea0:	e51b3010 	ldr	r3, [fp, #-16]
    9ea4:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
    9ea8:	e5832008 	str	r2, [r3, #8]
    9eac:	e51b3010 	ldr	r3, [fp, #-16]
    9eb0:	e1db20bc 	ldrh	r2, [fp, #12]
    9eb4:	e1c321b0 	strh	r2, [r3, #16]
    9eb8:	e51b3010 	ldr	r3, [fp, #-16]
    9ebc:	e15b21b8 	ldrh	r2, [fp, #-24]	; 0xffffffe8
    9ec0:	e1c321b2 	strh	r2, [r3, #18]
    9ec4:	e51b3010 	ldr	r3, [fp, #-16]
    9ec8:	e3a02000 	mov	r2, #0
    9ecc:	e5c32033 	strb	r2, [r3, #51]	; 0x33
    9ed0:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
    9ed4:	e1a031a3 	lsr	r3, r3, #3
    9ed8:	e6ef2073 	uxtb	r2, r3
    9edc:	e51b3010 	ldr	r3, [fp, #-16]
    9ee0:	e5c32030 	strb	r2, [r3, #48]	; 0x30
    9ee4:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
    9ee8:	e2033007 	and	r3, r3, #7
    9eec:	e6ef2073 	uxtb	r2, r3
    9ef0:	e51b3010 	ldr	r3, [fp, #-16]
    9ef4:	e5c3202f 	strb	r2, [r3, #47]	; 0x2f
    9ef8:	e51b3010 	ldr	r3, [fp, #-16]
    9efc:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    9f00:	e3a02001 	mov	r2, #1
    9f04:	e1a03312 	lsl	r3, r2, r3
    9f08:	e6ef2073 	uxtb	r2, r3
    9f0c:	e51b3010 	ldr	r3, [fp, #-16]
    9f10:	e5c32032 	strb	r2, [r3, #50]	; 0x32
    9f14:	e51b3010 	ldr	r3, [fp, #-16]
    9f18:	e5d3302f 	ldrb	r3, [r3, #47]	; 0x2f
    9f1c:	e3a02001 	mov	r2, #1
    9f20:	e1a03312 	lsl	r3, r2, r3
    9f24:	e6ef2073 	uxtb	r2, r3
    9f28:	e51b3010 	ldr	r3, [fp, #-16]
    9f2c:	e5c32031 	strb	r2, [r3, #49]	; 0x31
    9f30:	e51b3010 	ldr	r3, [fp, #-16]
    9f34:	e3a02000 	mov	r2, #0
    9f38:	e583201c 	str	r2, [r3, #28]
    9f3c:	e51b3010 	ldr	r3, [fp, #-16]
    9f40:	e3a02000 	mov	r2, #0
    9f44:	e5832020 	str	r2, [r3, #32]
    9f48:	e51b3010 	ldr	r3, [fp, #-16]
    9f4c:	e3a02000 	mov	r2, #0
    9f50:	e5832024 	str	r2, [r3, #36]	; 0x24
    9f54:	e51b3010 	ldr	r3, [fp, #-16]
    9f58:	e3a02000 	mov	r2, #0
    9f5c:	e5832034 	str	r2, [r3, #52]	; 0x34
    9f60:	e51b3010 	ldr	r3, [fp, #-16]
    9f64:	e3a02000 	mov	r2, #0
    9f68:	e583203c 	str	r2, [r3, #60]	; 0x3c
    9f6c:	e51b3010 	ldr	r3, [fp, #-16]
    9f70:	e3a02000 	mov	r2, #0
    9f74:	e5832038 	str	r2, [r3, #56]	; 0x38
    9f78:	e51b3010 	ldr	r3, [fp, #-16]
    9f7c:	e3a02000 	mov	r2, #0
    9f80:	e5832040 	str	r2, [r3, #64]	; 0x40
    9f84:	e51b3010 	ldr	r3, [fp, #-16]
    9f88:	e3a02000 	mov	r2, #0
    9f8c:	e5832044 	str	r2, [r3, #68]	; 0x44
    9f90:	e51b2010 	ldr	r2, [fp, #-16]
    9f94:	e3073728 	movw	r3, #30504	; 0x7728
    9f98:	e3403001 	movt	r3, #1
    9f9c:	e5823048 	str	r3, [r2, #72]	; 0x48
    9fa0:	e3a03000 	mov	r3, #0
    9fa4:	e54b3005 	strb	r3, [fp, #-5]
    9fa8:	ea00000b 	b	9fdc <OS_TCBInit+0x1f8>
    9fac:	e55b3005 	ldrb	r3, [fp, #-5]
    9fb0:	e51b1010 	ldr	r1, [fp, #-16]
    9fb4:	e2832012 	add	r2, r3, #18
    9fb8:	e3a03004 	mov	r3, #4
    9fbc:	e1a02102 	lsl	r2, r2, #2
    9fc0:	e0812002 	add	r2, r1, r2
    9fc4:	e0823003 	add	r3, r2, r3
    9fc8:	e3a02000 	mov	r2, #0
    9fcc:	e5832000 	str	r2, [r3]
    9fd0:	e55b3005 	ldrb	r3, [fp, #-5]
    9fd4:	e2833001 	add	r3, r3, #1
    9fd8:	e54b3005 	strb	r3, [fp, #-5]
    9fdc:	e55b3005 	ldrb	r3, [fp, #-5]
    9fe0:	e3530000 	cmp	r3, #0
    9fe4:	0afffff0 	beq	9fac <OS_TCBInit+0x1c8>
    9fe8:	e51b0010 	ldr	r0, [fp, #-16]
    9fec:	eb0016b8 	bl	fad4 <OSTCBInitHook>
    9ff0:	eb0014ae 	bl	f2b0 <OS_CPU_SR_Save>
    9ff4:	e50b000c 	str	r0, [fp, #-12]
    9ff8:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
    9ffc:	e30b392c 	movw	r3, #47404	; 0xb92c
    a000:	e3403019 	movt	r3, #25
    a004:	e51b1010 	ldr	r1, [fp, #-16]
    a008:	e7831102 	str	r1, [r3, r2, lsl #2]
    a00c:	e51b000c 	ldr	r0, [fp, #-12]
    a010:	eb0014b9 	bl	f2fc <OS_CPU_SR_Restore>
    a014:	e51b0010 	ldr	r0, [fp, #-16]
    a018:	eb0015fc 	bl	f810 <OSTaskCreateHook>
    a01c:	eb0014a3 	bl	f2b0 <OS_CPU_SR_Save>
    a020:	e50b000c 	str	r0, [fp, #-12]
    a024:	e30a3e98 	movw	r3, #44696	; 0xae98
    a028:	e3403019 	movt	r3, #25
    a02c:	e5932000 	ldr	r2, [r3]
    a030:	e51b3010 	ldr	r3, [fp, #-16]
    a034:	e5832014 	str	r2, [r3, #20]
    a038:	e51b3010 	ldr	r3, [fp, #-16]
    a03c:	e3a02000 	mov	r2, #0
    a040:	e5832018 	str	r2, [r3, #24]
    a044:	e30a3e98 	movw	r3, #44696	; 0xae98
    a048:	e3403019 	movt	r3, #25
    a04c:	e5933000 	ldr	r3, [r3]
    a050:	e3530000 	cmp	r3, #0
    a054:	0a000004 	beq	a06c <OS_TCBInit+0x288>
    a058:	e30a3e98 	movw	r3, #44696	; 0xae98
    a05c:	e3403019 	movt	r3, #25
    a060:	e5933000 	ldr	r3, [r3]
    a064:	e51b2010 	ldr	r2, [fp, #-16]
    a068:	e5832018 	str	r2, [r3, #24]
    a06c:	e30a3e98 	movw	r3, #44696	; 0xae98
    a070:	e3403019 	movt	r3, #25
    a074:	e51b2010 	ldr	r2, [fp, #-16]
    a078:	e5832000 	str	r2, [r3]
    a07c:	e51b3010 	ldr	r3, [fp, #-16]
    a080:	e5d32032 	ldrb	r2, [r3, #50]	; 0x32
    a084:	e30a3f90 	movw	r3, #44944	; 0xaf90
    a088:	e3403019 	movt	r3, #25
    a08c:	e5d33000 	ldrb	r3, [r3]
    a090:	e1823003 	orr	r3, r2, r3
    a094:	e6ef2073 	uxtb	r2, r3
    a098:	e30a3f90 	movw	r3, #44944	; 0xaf90
    a09c:	e3403019 	movt	r3, #25
    a0a0:	e5c32000 	strb	r2, [r3]
    a0a4:	e51b3010 	ldr	r3, [fp, #-16]
    a0a8:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    a0ac:	e1a02003 	mov	r2, r3
    a0b0:	e51b3010 	ldr	r3, [fp, #-16]
    a0b4:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    a0b8:	e1a01003 	mov	r1, r3
    a0bc:	e30a3f94 	movw	r3, #44948	; 0xaf94
    a0c0:	e3403019 	movt	r3, #25
    a0c4:	e7d31001 	ldrb	r1, [r3, r1]
    a0c8:	e51b3010 	ldr	r3, [fp, #-16]
    a0cc:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    a0d0:	e1813003 	orr	r3, r1, r3
    a0d4:	e6ef1073 	uxtb	r1, r3
    a0d8:	e30a3f94 	movw	r3, #44948	; 0xaf94
    a0dc:	e3403019 	movt	r3, #25
    a0e0:	e7c31002 	strb	r1, [r3, r2]
    a0e4:	e30a3f20 	movw	r3, #44832	; 0xaf20
    a0e8:	e3403019 	movt	r3, #25
    a0ec:	e5d33000 	ldrb	r3, [r3]
    a0f0:	e2833001 	add	r3, r3, #1
    a0f4:	e6ef2073 	uxtb	r2, r3
    a0f8:	e30a3f20 	movw	r3, #44832	; 0xaf20
    a0fc:	e3403019 	movt	r3, #25
    a100:	e5c32000 	strb	r2, [r3]
    a104:	e51b000c 	ldr	r0, [fp, #-12]
    a108:	eb00147b 	bl	f2fc <OS_CPU_SR_Restore>
    a10c:	e3a03000 	mov	r3, #0
    a110:	ea000002 	b	a120 <OS_TCBInit+0x33c>
    a114:	e51b000c 	ldr	r0, [fp, #-12]
    a118:	eb001477 	bl	f2fc <OS_CPU_SR_Restore>
    a11c:	e3a03042 	mov	r3, #66	; 0x42
    a120:	e1a00003 	mov	r0, r3
    a124:	e24bd004 	sub	sp, fp, #4
    a128:	e8bd8800 	pop	{fp, pc}

0000a12c <OSMboxAccept>:
    a12c:	e92d4800 	push	{fp, lr}
    a130:	e28db004 	add	fp, sp, #4
    a134:	e24dd010 	sub	sp, sp, #16
    a138:	e50b0010 	str	r0, [fp, #-16]
    a13c:	e3a03000 	mov	r3, #0
    a140:	e50b3008 	str	r3, [fp, #-8]
    a144:	e51b3010 	ldr	r3, [fp, #-16]
    a148:	e5d33000 	ldrb	r3, [r3]
    a14c:	e3530001 	cmp	r3, #1
    a150:	0a000001 	beq	a15c <OSMboxAccept+0x30>
    a154:	e3a03000 	mov	r3, #0
    a158:	ea00000a 	b	a188 <OSMboxAccept+0x5c>
    a15c:	eb001453 	bl	f2b0 <OS_CPU_SR_Save>
    a160:	e50b0008 	str	r0, [fp, #-8]
    a164:	e51b3010 	ldr	r3, [fp, #-16]
    a168:	e5933004 	ldr	r3, [r3, #4]
    a16c:	e50b300c 	str	r3, [fp, #-12]
    a170:	e51b3010 	ldr	r3, [fp, #-16]
    a174:	e3a02000 	mov	r2, #0
    a178:	e5832004 	str	r2, [r3, #4]
    a17c:	e51b0008 	ldr	r0, [fp, #-8]
    a180:	eb00145d 	bl	f2fc <OS_CPU_SR_Restore>
    a184:	e51b300c 	ldr	r3, [fp, #-12]
    a188:	e1a00003 	mov	r0, r3
    a18c:	e24bd004 	sub	sp, fp, #4
    a190:	e8bd8800 	pop	{fp, pc}

0000a194 <OSMboxCreate>:
    a194:	e92d4800 	push	{fp, lr}
    a198:	e28db004 	add	fp, sp, #4
    a19c:	e24dd010 	sub	sp, sp, #16
    a1a0:	e50b0010 	str	r0, [fp, #-16]
    a1a4:	e3a03000 	mov	r3, #0
    a1a8:	e50b3008 	str	r3, [fp, #-8]
    a1ac:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    a1b0:	e3403019 	movt	r3, #25
    a1b4:	e5d33000 	ldrb	r3, [r3]
    a1b8:	e3530000 	cmp	r3, #0
    a1bc:	0a000001 	beq	a1c8 <OSMboxCreate+0x34>
    a1c0:	e3a03000 	mov	r3, #0
    a1c4:	ea000026 	b	a264 <OSMboxCreate+0xd0>
    a1c8:	eb001438 	bl	f2b0 <OS_CPU_SR_Save>
    a1cc:	e50b0008 	str	r0, [fp, #-8]
    a1d0:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    a1d4:	e3403019 	movt	r3, #25
    a1d8:	e5933000 	ldr	r3, [r3]
    a1dc:	e50b300c 	str	r3, [fp, #-12]
    a1e0:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    a1e4:	e3403019 	movt	r3, #25
    a1e8:	e5933000 	ldr	r3, [r3]
    a1ec:	e3530000 	cmp	r3, #0
    a1f0:	0a000006 	beq	a210 <OSMboxCreate+0x7c>
    a1f4:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    a1f8:	e3403019 	movt	r3, #25
    a1fc:	e5933000 	ldr	r3, [r3]
    a200:	e5932004 	ldr	r2, [r3, #4]
    a204:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    a208:	e3403019 	movt	r3, #25
    a20c:	e5832000 	str	r2, [r3]
    a210:	e51b0008 	ldr	r0, [fp, #-8]
    a214:	eb001438 	bl	f2fc <OS_CPU_SR_Restore>
    a218:	e51b300c 	ldr	r3, [fp, #-12]
    a21c:	e3530000 	cmp	r3, #0
    a220:	0a00000e 	beq	a260 <OSMboxCreate+0xcc>
    a224:	e51b300c 	ldr	r3, [fp, #-12]
    a228:	e3a02001 	mov	r2, #1
    a22c:	e5c32000 	strb	r2, [r3]
    a230:	e51b300c 	ldr	r3, [fp, #-12]
    a234:	e3a02000 	mov	r2, #0
    a238:	e1c320b8 	strh	r2, [r3, #8]
    a23c:	e51b300c 	ldr	r3, [fp, #-12]
    a240:	e51b2010 	ldr	r2, [fp, #-16]
    a244:	e5832004 	str	r2, [r3, #4]
    a248:	e51b200c 	ldr	r2, [fp, #-12]
    a24c:	e3073740 	movw	r3, #30528	; 0x7740
    a250:	e3403001 	movt	r3, #1
    a254:	e5823014 	str	r3, [r2, #20]
    a258:	e51b000c 	ldr	r0, [fp, #-12]
    a25c:	ebfffcec 	bl	9614 <OS_EventWaitListInit>
    a260:	e51b300c 	ldr	r3, [fp, #-12]
    a264:	e1a00003 	mov	r0, r3
    a268:	e24bd004 	sub	sp, fp, #4
    a26c:	e8bd8800 	pop	{fp, pc}

0000a270 <OSMboxDel>:
    a270:	e92d4800 	push	{fp, lr}
    a274:	e28db004 	add	fp, sp, #4
    a278:	e24dd020 	sub	sp, sp, #32
    a27c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    a280:	e1a03001 	mov	r3, r1
    a284:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
    a288:	e54b3019 	strb	r3, [fp, #-25]	; 0xffffffe7
    a28c:	e3a03000 	mov	r3, #0
    a290:	e50b3010 	str	r3, [fp, #-16]
    a294:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a298:	e5d33000 	ldrb	r3, [r3]
    a29c:	e3530001 	cmp	r3, #1
    a2a0:	0a000004 	beq	a2b8 <OSMboxDel+0x48>
    a2a4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    a2a8:	e3a02001 	mov	r2, #1
    a2ac:	e5c32000 	strb	r2, [r3]
    a2b0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a2b4:	ea000073 	b	a488 <OSMboxDel+0x218>
    a2b8:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    a2bc:	e3403019 	movt	r3, #25
    a2c0:	e5d33000 	ldrb	r3, [r3]
    a2c4:	e3530000 	cmp	r3, #0
    a2c8:	0a000004 	beq	a2e0 <OSMboxDel+0x70>
    a2cc:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    a2d0:	e3a0200f 	mov	r2, #15
    a2d4:	e5c32000 	strb	r2, [r3]
    a2d8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a2dc:	ea000069 	b	a488 <OSMboxDel+0x218>
    a2e0:	eb0013f2 	bl	f2b0 <OS_CPU_SR_Save>
    a2e4:	e50b0010 	str	r0, [fp, #-16]
    a2e8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a2ec:	e5d3300a 	ldrb	r3, [r3, #10]
    a2f0:	e3530000 	cmp	r3, #0
    a2f4:	0a000002 	beq	a304 <OSMboxDel+0x94>
    a2f8:	e3a03001 	mov	r3, #1
    a2fc:	e54b3005 	strb	r3, [fp, #-5]
    a300:	ea000001 	b	a30c <OSMboxDel+0x9c>
    a304:	e3a03000 	mov	r3, #0
    a308:	e54b3005 	strb	r3, [fp, #-5]
    a30c:	e55b3019 	ldrb	r3, [fp, #-25]	; 0xffffffe7
    a310:	e3530000 	cmp	r3, #0
    a314:	0a000002 	beq	a324 <OSMboxDel+0xb4>
    a318:	e3530001 	cmp	r3, #1
    a31c:	0a00002c 	beq	a3d4 <OSMboxDel+0x164>
    a320:	ea00004f 	b	a464 <OSMboxDel+0x1f4>
    a324:	e55b3005 	ldrb	r3, [fp, #-5]
    a328:	e3530000 	cmp	r3, #0
    a32c:	1a00001a 	bne	a39c <OSMboxDel+0x12c>
    a330:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
    a334:	e3073740 	movw	r3, #30528	; 0x7740
    a338:	e3403001 	movt	r3, #1
    a33c:	e5823014 	str	r3, [r2, #20]
    a340:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a344:	e3a02000 	mov	r2, #0
    a348:	e5c32000 	strb	r2, [r3]
    a34c:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    a350:	e3403019 	movt	r3, #25
    a354:	e5932000 	ldr	r2, [r3]
    a358:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a35c:	e5832004 	str	r2, [r3, #4]
    a360:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a364:	e3a02000 	mov	r2, #0
    a368:	e1c320b8 	strh	r2, [r3, #8]
    a36c:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    a370:	e3403019 	movt	r3, #25
    a374:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
    a378:	e5832000 	str	r2, [r3]
    a37c:	e51b0010 	ldr	r0, [fp, #-16]
    a380:	eb0013dd 	bl	f2fc <OS_CPU_SR_Restore>
    a384:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    a388:	e3a02000 	mov	r2, #0
    a38c:	e5c32000 	strb	r2, [r3]
    a390:	e3a03000 	mov	r3, #0
    a394:	e50b300c 	str	r3, [fp, #-12]
    a398:	ea000039 	b	a484 <OSMboxDel+0x214>
    a39c:	e51b0010 	ldr	r0, [fp, #-16]
    a3a0:	eb0013d5 	bl	f2fc <OS_CPU_SR_Restore>
    a3a4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    a3a8:	e3a02049 	mov	r2, #73	; 0x49
    a3ac:	e5c32000 	strb	r2, [r3]
    a3b0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a3b4:	e50b300c 	str	r3, [fp, #-12]
    a3b8:	ea000031 	b	a484 <OSMboxDel+0x214>
    a3bc:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
    a3c0:	e3a01000 	mov	r1, #0
    a3c4:	e3a02002 	mov	r2, #2
    a3c8:	e3a03002 	mov	r3, #2
    a3cc:	ebfffaf5 	bl	8fa8 <OS_EventTaskRdy>
    a3d0:	ea000000 	b	a3d8 <OSMboxDel+0x168>
    a3d4:	e1a00000 	nop			; (mov r0, r0)
    a3d8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a3dc:	e5d3300a 	ldrb	r3, [r3, #10]
    a3e0:	e3530000 	cmp	r3, #0
    a3e4:	1afffff4 	bne	a3bc <OSMboxDel+0x14c>
    a3e8:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
    a3ec:	e3073740 	movw	r3, #30528	; 0x7740
    a3f0:	e3403001 	movt	r3, #1
    a3f4:	e5823014 	str	r3, [r2, #20]
    a3f8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a3fc:	e3a02000 	mov	r2, #0
    a400:	e5c32000 	strb	r2, [r3]
    a404:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    a408:	e3403019 	movt	r3, #25
    a40c:	e5932000 	ldr	r2, [r3]
    a410:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a414:	e5832004 	str	r2, [r3, #4]
    a418:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a41c:	e3a02000 	mov	r2, #0
    a420:	e1c320b8 	strh	r2, [r3, #8]
    a424:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    a428:	e3403019 	movt	r3, #25
    a42c:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
    a430:	e5832000 	str	r2, [r3]
    a434:	e51b0010 	ldr	r0, [fp, #-16]
    a438:	eb0013af 	bl	f2fc <OS_CPU_SR_Restore>
    a43c:	e55b3005 	ldrb	r3, [fp, #-5]
    a440:	e3530001 	cmp	r3, #1
    a444:	1a000000 	bne	a44c <OSMboxDel+0x1dc>
    a448:	ebfffdba 	bl	9b38 <OS_Sched>
    a44c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    a450:	e3a02000 	mov	r2, #0
    a454:	e5c32000 	strb	r2, [r3]
    a458:	e3a03000 	mov	r3, #0
    a45c:	e50b300c 	str	r3, [fp, #-12]
    a460:	ea000007 	b	a484 <OSMboxDel+0x214>
    a464:	e51b0010 	ldr	r0, [fp, #-16]
    a468:	eb0013a3 	bl	f2fc <OS_CPU_SR_Restore>
    a46c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    a470:	e3a02007 	mov	r2, #7
    a474:	e5c32000 	strb	r2, [r3]
    a478:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a47c:	e50b300c 	str	r3, [fp, #-12]
    a480:	e1a00000 	nop			; (mov r0, r0)
    a484:	e51b300c 	ldr	r3, [fp, #-12]
    a488:	e1a00003 	mov	r0, r3
    a48c:	e24bd004 	sub	sp, fp, #4
    a490:	e8bd8800 	pop	{fp, pc}

0000a494 <OSMboxPend>:
    a494:	e92d4800 	push	{fp, lr}
    a498:	e28db004 	add	fp, sp, #4
    a49c:	e24dd018 	sub	sp, sp, #24
    a4a0:	e50b0010 	str	r0, [fp, #-16]
    a4a4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    a4a8:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
    a4ac:	e3a03000 	mov	r3, #0
    a4b0:	e50b300c 	str	r3, [fp, #-12]
    a4b4:	e51b3010 	ldr	r3, [fp, #-16]
    a4b8:	e5d33000 	ldrb	r3, [r3]
    a4bc:	e3530001 	cmp	r3, #1
    a4c0:	0a000004 	beq	a4d8 <OSMboxPend+0x44>
    a4c4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a4c8:	e3a02001 	mov	r2, #1
    a4cc:	e5c32000 	strb	r2, [r3]
    a4d0:	e3a03000 	mov	r3, #0
    a4d4:	ea000080 	b	a6dc <OSMboxPend+0x248>
    a4d8:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    a4dc:	e3403019 	movt	r3, #25
    a4e0:	e5d33000 	ldrb	r3, [r3]
    a4e4:	e3530000 	cmp	r3, #0
    a4e8:	0a000004 	beq	a500 <OSMboxPend+0x6c>
    a4ec:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a4f0:	e3a02002 	mov	r2, #2
    a4f4:	e5c32000 	strb	r2, [r3]
    a4f8:	e3a03000 	mov	r3, #0
    a4fc:	ea000076 	b	a6dc <OSMboxPend+0x248>
    a500:	e30a3e8c 	movw	r3, #44684	; 0xae8c
    a504:	e3403019 	movt	r3, #25
    a508:	e5d33000 	ldrb	r3, [r3]
    a50c:	e3530000 	cmp	r3, #0
    a510:	0a000004 	beq	a528 <OSMboxPend+0x94>
    a514:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a518:	e3a0200d 	mov	r2, #13
    a51c:	e5c32000 	strb	r2, [r3]
    a520:	e3a03000 	mov	r3, #0
    a524:	ea00006c 	b	a6dc <OSMboxPend+0x248>
    a528:	eb001360 	bl	f2b0 <OS_CPU_SR_Save>
    a52c:	e50b000c 	str	r0, [fp, #-12]
    a530:	e51b3010 	ldr	r3, [fp, #-16]
    a534:	e5933004 	ldr	r3, [r3, #4]
    a538:	e50b3008 	str	r3, [fp, #-8]
    a53c:	e51b3008 	ldr	r3, [fp, #-8]
    a540:	e3530000 	cmp	r3, #0
    a544:	0a000009 	beq	a570 <OSMboxPend+0xdc>
    a548:	e51b3010 	ldr	r3, [fp, #-16]
    a54c:	e3a02000 	mov	r2, #0
    a550:	e5832004 	str	r2, [r3, #4]
    a554:	e51b000c 	ldr	r0, [fp, #-12]
    a558:	eb001367 	bl	f2fc <OS_CPU_SR_Restore>
    a55c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a560:	e3a02000 	mov	r2, #0
    a564:	e5c32000 	strb	r2, [r3]
    a568:	e51b3008 	ldr	r3, [fp, #-8]
    a56c:	ea00005a 	b	a6dc <OSMboxPend+0x248>
    a570:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    a574:	e3403019 	movt	r3, #25
    a578:	e5932000 	ldr	r2, [r3]
    a57c:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    a580:	e3403019 	movt	r3, #25
    a584:	e5933000 	ldr	r3, [r3]
    a588:	e5d3302c 	ldrb	r3, [r3, #44]	; 0x2c
    a58c:	e3833002 	orr	r3, r3, #2
    a590:	e6ef3073 	uxtb	r3, r3
    a594:	e5c2302c 	strb	r3, [r2, #44]	; 0x2c
    a598:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    a59c:	e3403019 	movt	r3, #25
    a5a0:	e5933000 	ldr	r3, [r3]
    a5a4:	e3a02000 	mov	r2, #0
    a5a8:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    a5ac:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    a5b0:	e3403019 	movt	r3, #25
    a5b4:	e5933000 	ldr	r3, [r3]
    a5b8:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    a5bc:	e5832028 	str	r2, [r3, #40]	; 0x28
    a5c0:	e51b0010 	ldr	r0, [fp, #-16]
    a5c4:	ebfffadb 	bl	9138 <OS_EventTaskWait>
    a5c8:	e51b000c 	ldr	r0, [fp, #-12]
    a5cc:	eb00134a 	bl	f2fc <OS_CPU_SR_Restore>
    a5d0:	ebfffd58 	bl	9b38 <OS_Sched>
    a5d4:	eb001335 	bl	f2b0 <OS_CPU_SR_Save>
    a5d8:	e50b000c 	str	r0, [fp, #-12]
    a5dc:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    a5e0:	e3403019 	movt	r3, #25
    a5e4:	e5933000 	ldr	r3, [r3]
    a5e8:	e5d3302d 	ldrb	r3, [r3, #45]	; 0x2d
    a5ec:	e3530000 	cmp	r3, #0
    a5f0:	0a000002 	beq	a600 <OSMboxPend+0x16c>
    a5f4:	e3530002 	cmp	r3, #2
    a5f8:	0a000009 	beq	a624 <OSMboxPend+0x190>
    a5fc:	ea00000e 	b	a63c <OSMboxPend+0x1a8>
    a600:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    a604:	e3403019 	movt	r3, #25
    a608:	e5933000 	ldr	r3, [r3]
    a60c:	e5933024 	ldr	r3, [r3, #36]	; 0x24
    a610:	e50b3008 	str	r3, [fp, #-8]
    a614:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a618:	e3a02000 	mov	r2, #0
    a61c:	e5c32000 	strb	r2, [r3]
    a620:	ea000011 	b	a66c <OSMboxPend+0x1d8>
    a624:	e3a03000 	mov	r3, #0
    a628:	e50b3008 	str	r3, [fp, #-8]
    a62c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a630:	e3a0200e 	mov	r2, #14
    a634:	e5c32000 	strb	r2, [r3]
    a638:	ea00000b 	b	a66c <OSMboxPend+0x1d8>
    a63c:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    a640:	e3403019 	movt	r3, #25
    a644:	e5933000 	ldr	r3, [r3]
    a648:	e1a00003 	mov	r0, r3
    a64c:	e51b1010 	ldr	r1, [fp, #-16]
    a650:	ebfffb7e 	bl	9450 <OS_EventTaskRemove>
    a654:	e3a03000 	mov	r3, #0
    a658:	e50b3008 	str	r3, [fp, #-8]
    a65c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a660:	e3a0200a 	mov	r2, #10
    a664:	e5c32000 	strb	r2, [r3]
    a668:	e1a00000 	nop			; (mov r0, r0)
    a66c:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    a670:	e3403019 	movt	r3, #25
    a674:	e5933000 	ldr	r3, [r3]
    a678:	e3a02000 	mov	r2, #0
    a67c:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    a680:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    a684:	e3403019 	movt	r3, #25
    a688:	e5933000 	ldr	r3, [r3]
    a68c:	e3a02000 	mov	r2, #0
    a690:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    a694:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    a698:	e3403019 	movt	r3, #25
    a69c:	e5933000 	ldr	r3, [r3]
    a6a0:	e3a02000 	mov	r2, #0
    a6a4:	e583201c 	str	r2, [r3, #28]
    a6a8:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    a6ac:	e3403019 	movt	r3, #25
    a6b0:	e5933000 	ldr	r3, [r3]
    a6b4:	e3a02000 	mov	r2, #0
    a6b8:	e5832020 	str	r2, [r3, #32]
    a6bc:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    a6c0:	e3403019 	movt	r3, #25
    a6c4:	e5933000 	ldr	r3, [r3]
    a6c8:	e3a02000 	mov	r2, #0
    a6cc:	e5832024 	str	r2, [r3, #36]	; 0x24
    a6d0:	e51b000c 	ldr	r0, [fp, #-12]
    a6d4:	eb001308 	bl	f2fc <OS_CPU_SR_Restore>
    a6d8:	e51b3008 	ldr	r3, [fp, #-8]
    a6dc:	e1a00003 	mov	r0, r3
    a6e0:	e24bd004 	sub	sp, fp, #4
    a6e4:	e8bd8800 	pop	{fp, pc}

0000a6e8 <OSMboxPendAbort>:
    a6e8:	e92d4800 	push	{fp, lr}
    a6ec:	e28db004 	add	fp, sp, #4
    a6f0:	e24dd018 	sub	sp, sp, #24
    a6f4:	e50b0010 	str	r0, [fp, #-16]
    a6f8:	e1a03001 	mov	r3, r1
    a6fc:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
    a700:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
    a704:	e3a03000 	mov	r3, #0
    a708:	e50b300c 	str	r3, [fp, #-12]
    a70c:	e51b3010 	ldr	r3, [fp, #-16]
    a710:	e5d33000 	ldrb	r3, [r3]
    a714:	e3530001 	cmp	r3, #1
    a718:	0a000004 	beq	a730 <OSMboxPendAbort+0x48>
    a71c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a720:	e3a02001 	mov	r2, #1
    a724:	e5c32000 	strb	r2, [r3]
    a728:	e3a03000 	mov	r3, #0
    a72c:	ea000031 	b	a7f8 <OSMboxPendAbort+0x110>
    a730:	eb0012de 	bl	f2b0 <OS_CPU_SR_Save>
    a734:	e50b000c 	str	r0, [fp, #-12]
    a738:	e51b3010 	ldr	r3, [fp, #-16]
    a73c:	e5d3300a 	ldrb	r3, [r3, #10]
    a740:	e3530000 	cmp	r3, #0
    a744:	0a000025 	beq	a7e0 <OSMboxPendAbort+0xf8>
    a748:	e3a03000 	mov	r3, #0
    a74c:	e54b3005 	strb	r3, [fp, #-5]
    a750:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
    a754:	e3530001 	cmp	r3, #1
    a758:	0a000009 	beq	a784 <OSMboxPendAbort+0x9c>
    a75c:	ea00000e 	b	a79c <OSMboxPendAbort+0xb4>
    a760:	e51b0010 	ldr	r0, [fp, #-16]
    a764:	e3a01000 	mov	r1, #0
    a768:	e3a02002 	mov	r2, #2
    a76c:	e3a03002 	mov	r3, #2
    a770:	ebfffa0c 	bl	8fa8 <OS_EventTaskRdy>
    a774:	e55b3005 	ldrb	r3, [fp, #-5]
    a778:	e2833001 	add	r3, r3, #1
    a77c:	e54b3005 	strb	r3, [fp, #-5]
    a780:	ea000000 	b	a788 <OSMboxPendAbort+0xa0>
    a784:	e1a00000 	nop			; (mov r0, r0)
    a788:	e51b3010 	ldr	r3, [fp, #-16]
    a78c:	e5d3300a 	ldrb	r3, [r3, #10]
    a790:	e3530000 	cmp	r3, #0
    a794:	1afffff1 	bne	a760 <OSMboxPendAbort+0x78>
    a798:	ea000008 	b	a7c0 <OSMboxPendAbort+0xd8>
    a79c:	e51b0010 	ldr	r0, [fp, #-16]
    a7a0:	e3a01000 	mov	r1, #0
    a7a4:	e3a02002 	mov	r2, #2
    a7a8:	e3a03002 	mov	r3, #2
    a7ac:	ebfff9fd 	bl	8fa8 <OS_EventTaskRdy>
    a7b0:	e55b3005 	ldrb	r3, [fp, #-5]
    a7b4:	e2833001 	add	r3, r3, #1
    a7b8:	e54b3005 	strb	r3, [fp, #-5]
    a7bc:	e1a00000 	nop			; (mov r0, r0)
    a7c0:	e51b000c 	ldr	r0, [fp, #-12]
    a7c4:	eb0012cc 	bl	f2fc <OS_CPU_SR_Restore>
    a7c8:	ebfffcda 	bl	9b38 <OS_Sched>
    a7cc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a7d0:	e3a0200e 	mov	r2, #14
    a7d4:	e5c32000 	strb	r2, [r3]
    a7d8:	e55b3005 	ldrb	r3, [fp, #-5]
    a7dc:	ea000005 	b	a7f8 <OSMboxPendAbort+0x110>
    a7e0:	e51b000c 	ldr	r0, [fp, #-12]
    a7e4:	eb0012c4 	bl	f2fc <OS_CPU_SR_Restore>
    a7e8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a7ec:	e3a02000 	mov	r2, #0
    a7f0:	e5c32000 	strb	r2, [r3]
    a7f4:	e3a03000 	mov	r3, #0
    a7f8:	e1a00003 	mov	r0, r3
    a7fc:	e24bd004 	sub	sp, fp, #4
    a800:	e8bd8800 	pop	{fp, pc}

0000a804 <OSMboxPost>:
    a804:	e92d4800 	push	{fp, lr}
    a808:	e28db004 	add	fp, sp, #4
    a80c:	e24dd010 	sub	sp, sp, #16
    a810:	e50b0010 	str	r0, [fp, #-16]
    a814:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    a818:	e3a03000 	mov	r3, #0
    a81c:	e50b3008 	str	r3, [fp, #-8]
    a820:	e51b3010 	ldr	r3, [fp, #-16]
    a824:	e5d33000 	ldrb	r3, [r3]
    a828:	e3530001 	cmp	r3, #1
    a82c:	0a000001 	beq	a838 <OSMboxPost+0x34>
    a830:	e3a03001 	mov	r3, #1
    a834:	ea00001d 	b	a8b0 <OSMboxPost+0xac>
    a838:	eb00129c 	bl	f2b0 <OS_CPU_SR_Save>
    a83c:	e50b0008 	str	r0, [fp, #-8]
    a840:	e51b3010 	ldr	r3, [fp, #-16]
    a844:	e5d3300a 	ldrb	r3, [r3, #10]
    a848:	e3530000 	cmp	r3, #0
    a84c:	0a000009 	beq	a878 <OSMboxPost+0x74>
    a850:	e51b0010 	ldr	r0, [fp, #-16]
    a854:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
    a858:	e3a02002 	mov	r2, #2
    a85c:	e3a03000 	mov	r3, #0
    a860:	ebfff9d0 	bl	8fa8 <OS_EventTaskRdy>
    a864:	e51b0008 	ldr	r0, [fp, #-8]
    a868:	eb0012a3 	bl	f2fc <OS_CPU_SR_Restore>
    a86c:	ebfffcb1 	bl	9b38 <OS_Sched>
    a870:	e3a03000 	mov	r3, #0
    a874:	ea00000d 	b	a8b0 <OSMboxPost+0xac>
    a878:	e51b3010 	ldr	r3, [fp, #-16]
    a87c:	e5933004 	ldr	r3, [r3, #4]
    a880:	e3530000 	cmp	r3, #0
    a884:	0a000003 	beq	a898 <OSMboxPost+0x94>
    a888:	e51b0008 	ldr	r0, [fp, #-8]
    a88c:	eb00129a 	bl	f2fc <OS_CPU_SR_Restore>
    a890:	e3a03014 	mov	r3, #20
    a894:	ea000005 	b	a8b0 <OSMboxPost+0xac>
    a898:	e51b3010 	ldr	r3, [fp, #-16]
    a89c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    a8a0:	e5832004 	str	r2, [r3, #4]
    a8a4:	e51b0008 	ldr	r0, [fp, #-8]
    a8a8:	eb001293 	bl	f2fc <OS_CPU_SR_Restore>
    a8ac:	e3a03000 	mov	r3, #0
    a8b0:	e1a00003 	mov	r0, r3
    a8b4:	e24bd004 	sub	sp, fp, #4
    a8b8:	e8bd8800 	pop	{fp, pc}

0000a8bc <OSMboxPostOpt>:
    a8bc:	e92d4800 	push	{fp, lr}
    a8c0:	e28db004 	add	fp, sp, #4
    a8c4:	e24dd018 	sub	sp, sp, #24
    a8c8:	e50b0010 	str	r0, [fp, #-16]
    a8cc:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    a8d0:	e1a03002 	mov	r3, r2
    a8d4:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
    a8d8:	e3a03000 	mov	r3, #0
    a8dc:	e50b3008 	str	r3, [fp, #-8]
    a8e0:	e51b3010 	ldr	r3, [fp, #-16]
    a8e4:	e5d33000 	ldrb	r3, [r3]
    a8e8:	e3530001 	cmp	r3, #1
    a8ec:	0a000001 	beq	a8f8 <OSMboxPostOpt+0x3c>
    a8f0:	e3a03001 	mov	r3, #1
    a8f4:	ea000030 	b	a9bc <OSMboxPostOpt+0x100>
    a8f8:	eb00126c 	bl	f2b0 <OS_CPU_SR_Save>
    a8fc:	e50b0008 	str	r0, [fp, #-8]
    a900:	e51b3010 	ldr	r3, [fp, #-16]
    a904:	e5d3300a 	ldrb	r3, [r3, #10]
    a908:	e3530000 	cmp	r3, #0
    a90c:	0a00001c 	beq	a984 <OSMboxPostOpt+0xc8>
    a910:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
    a914:	e2033001 	and	r3, r3, #1
    a918:	e3530000 	cmp	r3, #0
    a91c:	0a00000a 	beq	a94c <OSMboxPostOpt+0x90>
    a920:	ea000004 	b	a938 <OSMboxPostOpt+0x7c>
    a924:	e51b0010 	ldr	r0, [fp, #-16]
    a928:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
    a92c:	e3a02002 	mov	r2, #2
    a930:	e3a03000 	mov	r3, #0
    a934:	ebfff99b 	bl	8fa8 <OS_EventTaskRdy>
    a938:	e51b3010 	ldr	r3, [fp, #-16]
    a93c:	e5d3300a 	ldrb	r3, [r3, #10]
    a940:	e3530000 	cmp	r3, #0
    a944:	1afffff6 	bne	a924 <OSMboxPostOpt+0x68>
    a948:	ea000004 	b	a960 <OSMboxPostOpt+0xa4>
    a94c:	e51b0010 	ldr	r0, [fp, #-16]
    a950:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
    a954:	e3a02002 	mov	r2, #2
    a958:	e3a03000 	mov	r3, #0
    a95c:	ebfff991 	bl	8fa8 <OS_EventTaskRdy>
    a960:	e51b0008 	ldr	r0, [fp, #-8]
    a964:	eb001264 	bl	f2fc <OS_CPU_SR_Restore>
    a968:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
    a96c:	e2033004 	and	r3, r3, #4
    a970:	e3530000 	cmp	r3, #0
    a974:	1a000000 	bne	a97c <OSMboxPostOpt+0xc0>
    a978:	ebfffc6e 	bl	9b38 <OS_Sched>
    a97c:	e3a03000 	mov	r3, #0
    a980:	ea00000d 	b	a9bc <OSMboxPostOpt+0x100>
    a984:	e51b3010 	ldr	r3, [fp, #-16]
    a988:	e5933004 	ldr	r3, [r3, #4]
    a98c:	e3530000 	cmp	r3, #0
    a990:	0a000003 	beq	a9a4 <OSMboxPostOpt+0xe8>
    a994:	e51b0008 	ldr	r0, [fp, #-8]
    a998:	eb001257 	bl	f2fc <OS_CPU_SR_Restore>
    a99c:	e3a03014 	mov	r3, #20
    a9a0:	ea000005 	b	a9bc <OSMboxPostOpt+0x100>
    a9a4:	e51b3010 	ldr	r3, [fp, #-16]
    a9a8:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    a9ac:	e5832004 	str	r2, [r3, #4]
    a9b0:	e51b0008 	ldr	r0, [fp, #-8]
    a9b4:	eb001250 	bl	f2fc <OS_CPU_SR_Restore>
    a9b8:	e3a03000 	mov	r3, #0
    a9bc:	e1a00003 	mov	r0, r3
    a9c0:	e24bd004 	sub	sp, fp, #4
    a9c4:	e8bd8800 	pop	{fp, pc}

0000a9c8 <OSMboxQuery>:
    a9c8:	e92d4800 	push	{fp, lr}
    a9cc:	e28db004 	add	fp, sp, #4
    a9d0:	e24dd018 	sub	sp, sp, #24
    a9d4:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    a9d8:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
    a9dc:	e3a03000 	mov	r3, #0
    a9e0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    a9e4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    a9e8:	e5d33000 	ldrb	r3, [r3]
    a9ec:	e3530001 	cmp	r3, #1
    a9f0:	0a000001 	beq	a9fc <OSMboxQuery+0x34>
    a9f4:	e3a03001 	mov	r3, #1
    a9f8:	ea000025 	b	aa94 <OSMboxQuery+0xcc>
    a9fc:	eb00122b 	bl	f2b0 <OS_CPU_SR_Save>
    aa00:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
    aa04:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    aa08:	e5d3200a 	ldrb	r2, [r3, #10]
    aa0c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    aa10:	e5c3200c 	strb	r2, [r3, #12]
    aa14:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    aa18:	e283300b 	add	r3, r3, #11
    aa1c:	e50b300c 	str	r3, [fp, #-12]
    aa20:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    aa24:	e2833004 	add	r3, r3, #4
    aa28:	e50b3010 	str	r3, [fp, #-16]
    aa2c:	e3a03000 	mov	r3, #0
    aa30:	e54b3005 	strb	r3, [fp, #-5]
    aa34:	ea00000c 	b	aa6c <OSMboxQuery+0xa4>
    aa38:	e51b300c 	ldr	r3, [fp, #-12]
    aa3c:	e5d32000 	ldrb	r2, [r3]
    aa40:	e51b3010 	ldr	r3, [fp, #-16]
    aa44:	e5c32000 	strb	r2, [r3]
    aa48:	e51b3010 	ldr	r3, [fp, #-16]
    aa4c:	e2833001 	add	r3, r3, #1
    aa50:	e50b3010 	str	r3, [fp, #-16]
    aa54:	e51b300c 	ldr	r3, [fp, #-12]
    aa58:	e2833001 	add	r3, r3, #1
    aa5c:	e50b300c 	str	r3, [fp, #-12]
    aa60:	e55b3005 	ldrb	r3, [fp, #-5]
    aa64:	e2833001 	add	r3, r3, #1
    aa68:	e54b3005 	strb	r3, [fp, #-5]
    aa6c:	e55b3005 	ldrb	r3, [fp, #-5]
    aa70:	e3530007 	cmp	r3, #7
    aa74:	9affffef 	bls	aa38 <OSMboxQuery+0x70>
    aa78:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    aa7c:	e5932004 	ldr	r2, [r3, #4]
    aa80:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    aa84:	e5832000 	str	r2, [r3]
    aa88:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
    aa8c:	eb00121a 	bl	f2fc <OS_CPU_SR_Restore>
    aa90:	e3a03000 	mov	r3, #0
    aa94:	e1a00003 	mov	r0, r3
    aa98:	e24bd004 	sub	sp, fp, #4
    aa9c:	e8bd8800 	pop	{fp, pc}

0000aaa0 <OSMemCreate>:
    aaa0:	e92d4800 	push	{fp, lr}
    aaa4:	e28db004 	add	fp, sp, #4
    aaa8:	e24dd028 	sub	sp, sp, #40	; 0x28
    aaac:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
    aab0:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
    aab4:	e50b2028 	str	r2, [fp, #-40]	; 0xffffffd8
    aab8:	e50b302c 	str	r3, [fp, #-44]	; 0xffffffd4
    aabc:	e3a03000 	mov	r3, #0
    aac0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    aac4:	eb0011f9 	bl	f2b0 <OS_CPU_SR_Save>
    aac8:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
    aacc:	e30a3f24 	movw	r3, #44836	; 0xaf24
    aad0:	e3403019 	movt	r3, #25
    aad4:	e5933000 	ldr	r3, [r3]
    aad8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    aadc:	e30a3f24 	movw	r3, #44836	; 0xaf24
    aae0:	e3403019 	movt	r3, #25
    aae4:	e5933000 	ldr	r3, [r3]
    aae8:	e3530000 	cmp	r3, #0
    aaec:	0a000006 	beq	ab0c <OSMemCreate+0x6c>
    aaf0:	e30a3f24 	movw	r3, #44836	; 0xaf24
    aaf4:	e3403019 	movt	r3, #25
    aaf8:	e5933000 	ldr	r3, [r3]
    aafc:	e5932004 	ldr	r2, [r3, #4]
    ab00:	e30a3f24 	movw	r3, #44836	; 0xaf24
    ab04:	e3403019 	movt	r3, #25
    ab08:	e5832000 	str	r2, [r3]
    ab0c:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
    ab10:	eb0011f9 	bl	f2fc <OS_CPU_SR_Restore>
    ab14:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    ab18:	e3530000 	cmp	r3, #0
    ab1c:	1a000004 	bne	ab34 <OSMemCreate+0x94>
    ab20:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
    ab24:	e3a0205a 	mov	r2, #90	; 0x5a
    ab28:	e5c32000 	strb	r2, [r3]
    ab2c:	e3a03000 	mov	r3, #0
    ab30:	ea00002f 	b	abf4 <OSMemCreate+0x154>
    ab34:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    ab38:	e50b300c 	str	r3, [fp, #-12]
    ab3c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    ab40:	e50b3008 	str	r3, [fp, #-8]
    ab44:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    ab48:	e2433001 	sub	r3, r3, #1
    ab4c:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
    ab50:	e3a03000 	mov	r3, #0
    ab54:	e50b3010 	str	r3, [fp, #-16]
    ab58:	ea00000b 	b	ab8c <OSMemCreate+0xec>
    ab5c:	e51b2008 	ldr	r2, [fp, #-8]
    ab60:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    ab64:	e0823003 	add	r3, r2, r3
    ab68:	e50b3008 	str	r3, [fp, #-8]
    ab6c:	e51b300c 	ldr	r3, [fp, #-12]
    ab70:	e51b2008 	ldr	r2, [fp, #-8]
    ab74:	e5832000 	str	r2, [r3]
    ab78:	e51b3008 	ldr	r3, [fp, #-8]
    ab7c:	e50b300c 	str	r3, [fp, #-12]
    ab80:	e51b3010 	ldr	r3, [fp, #-16]
    ab84:	e2833001 	add	r3, r3, #1
    ab88:	e50b3010 	str	r3, [fp, #-16]
    ab8c:	e51b2010 	ldr	r2, [fp, #-16]
    ab90:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    ab94:	e1520003 	cmp	r2, r3
    ab98:	3affffef 	bcc	ab5c <OSMemCreate+0xbc>
    ab9c:	e51b300c 	ldr	r3, [fp, #-12]
    aba0:	e3a02000 	mov	r2, #0
    aba4:	e5832000 	str	r2, [r3]
    aba8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    abac:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
    abb0:	e5832000 	str	r2, [r3]
    abb4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    abb8:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
    abbc:	e5832004 	str	r2, [r3, #4]
    abc0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    abc4:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
    abc8:	e5832010 	str	r2, [r3, #16]
    abcc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    abd0:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
    abd4:	e583200c 	str	r2, [r3, #12]
    abd8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    abdc:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
    abe0:	e5832008 	str	r2, [r3, #8]
    abe4:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
    abe8:	e3a02000 	mov	r2, #0
    abec:	e5c32000 	strb	r2, [r3]
    abf0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    abf4:	e1a00003 	mov	r0, r3
    abf8:	e24bd004 	sub	sp, fp, #4
    abfc:	e8bd8800 	pop	{fp, pc}

0000ac00 <OSMemGet>:
    ac00:	e92d4800 	push	{fp, lr}
    ac04:	e28db004 	add	fp, sp, #4
    ac08:	e24dd010 	sub	sp, sp, #16
    ac0c:	e50b0010 	str	r0, [fp, #-16]
    ac10:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    ac14:	e3a03000 	mov	r3, #0
    ac18:	e50b3008 	str	r3, [fp, #-8]
    ac1c:	eb0011a3 	bl	f2b0 <OS_CPU_SR_Save>
    ac20:	e50b0008 	str	r0, [fp, #-8]
    ac24:	e51b3010 	ldr	r3, [fp, #-16]
    ac28:	e5933010 	ldr	r3, [r3, #16]
    ac2c:	e3530000 	cmp	r3, #0
    ac30:	0a000012 	beq	ac80 <OSMemGet+0x80>
    ac34:	e51b3010 	ldr	r3, [fp, #-16]
    ac38:	e5933004 	ldr	r3, [r3, #4]
    ac3c:	e50b300c 	str	r3, [fp, #-12]
    ac40:	e51b300c 	ldr	r3, [fp, #-12]
    ac44:	e5932000 	ldr	r2, [r3]
    ac48:	e51b3010 	ldr	r3, [fp, #-16]
    ac4c:	e5832004 	str	r2, [r3, #4]
    ac50:	e51b3010 	ldr	r3, [fp, #-16]
    ac54:	e5933010 	ldr	r3, [r3, #16]
    ac58:	e2432001 	sub	r2, r3, #1
    ac5c:	e51b3010 	ldr	r3, [fp, #-16]
    ac60:	e5832010 	str	r2, [r3, #16]
    ac64:	e51b0008 	ldr	r0, [fp, #-8]
    ac68:	eb0011a3 	bl	f2fc <OS_CPU_SR_Restore>
    ac6c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    ac70:	e3a02000 	mov	r2, #0
    ac74:	e5c32000 	strb	r2, [r3]
    ac78:	e51b300c 	ldr	r3, [fp, #-12]
    ac7c:	ea000005 	b	ac98 <OSMemGet+0x98>
    ac80:	e51b0008 	ldr	r0, [fp, #-8]
    ac84:	eb00119c 	bl	f2fc <OS_CPU_SR_Restore>
    ac88:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    ac8c:	e3a0205d 	mov	r2, #93	; 0x5d
    ac90:	e5c32000 	strb	r2, [r3]
    ac94:	e3a03000 	mov	r3, #0
    ac98:	e1a00003 	mov	r0, r3
    ac9c:	e24bd004 	sub	sp, fp, #4
    aca0:	e8bd8800 	pop	{fp, pc}

0000aca4 <OSMemNameGet>:
    aca4:	e92d4800 	push	{fp, lr}
    aca8:	e28db004 	add	fp, sp, #4
    acac:	e24dd018 	sub	sp, sp, #24
    acb0:	e50b0010 	str	r0, [fp, #-16]
    acb4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    acb8:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
    acbc:	e3a03000 	mov	r3, #0
    acc0:	e50b3008 	str	r3, [fp, #-8]
    acc4:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    acc8:	e3403019 	movt	r3, #25
    accc:	e5d33000 	ldrb	r3, [r3]
    acd0:	e3530000 	cmp	r3, #0
    acd4:	0a000004 	beq	acec <OSMemNameGet+0x48>
    acd8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    acdc:	e3a02011 	mov	r2, #17
    ace0:	e5c32000 	strb	r2, [r3]
    ace4:	e3a03000 	mov	r3, #0
    ace8:	ea000011 	b	ad34 <OSMemNameGet+0x90>
    acec:	eb00116f 	bl	f2b0 <OS_CPU_SR_Save>
    acf0:	e50b0008 	str	r0, [fp, #-8]
    acf4:	e51b3010 	ldr	r3, [fp, #-16]
    acf8:	e5932014 	ldr	r2, [r3, #20]
    acfc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    ad00:	e5832000 	str	r2, [r3]
    ad04:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    ad08:	e5933000 	ldr	r3, [r3]
    ad0c:	e1a00003 	mov	r0, r3
    ad10:	ebfffbdc 	bl	9c88 <OS_StrLen>
    ad14:	e1a03000 	mov	r3, r0
    ad18:	e54b3009 	strb	r3, [fp, #-9]
    ad1c:	e51b0008 	ldr	r0, [fp, #-8]
    ad20:	eb001175 	bl	f2fc <OS_CPU_SR_Restore>
    ad24:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    ad28:	e3a02000 	mov	r2, #0
    ad2c:	e5c32000 	strb	r2, [r3]
    ad30:	e55b3009 	ldrb	r3, [fp, #-9]
    ad34:	e1a00003 	mov	r0, r3
    ad38:	e24bd004 	sub	sp, fp, #4
    ad3c:	e8bd8800 	pop	{fp, pc}

0000ad40 <OSMemNameSet>:
    ad40:	e92d4800 	push	{fp, lr}
    ad44:	e28db004 	add	fp, sp, #4
    ad48:	e24dd018 	sub	sp, sp, #24
    ad4c:	e50b0010 	str	r0, [fp, #-16]
    ad50:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    ad54:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
    ad58:	e3a03000 	mov	r3, #0
    ad5c:	e50b3008 	str	r3, [fp, #-8]
    ad60:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    ad64:	e3403019 	movt	r3, #25
    ad68:	e5d33000 	ldrb	r3, [r3]
    ad6c:	e3530000 	cmp	r3, #0
    ad70:	0a000003 	beq	ad84 <OSMemNameSet+0x44>
    ad74:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    ad78:	e3a02012 	mov	r2, #18
    ad7c:	e5c32000 	strb	r2, [r3]
    ad80:	ea000009 	b	adac <OSMemNameSet+0x6c>
    ad84:	eb001149 	bl	f2b0 <OS_CPU_SR_Save>
    ad88:	e50b0008 	str	r0, [fp, #-8]
    ad8c:	e51b3010 	ldr	r3, [fp, #-16]
    ad90:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    ad94:	e5832014 	str	r2, [r3, #20]
    ad98:	e51b0008 	ldr	r0, [fp, #-8]
    ad9c:	eb001156 	bl	f2fc <OS_CPU_SR_Restore>
    ada0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    ada4:	e3a02000 	mov	r2, #0
    ada8:	e5c32000 	strb	r2, [r3]
    adac:	e24bd004 	sub	sp, fp, #4
    adb0:	e8bd8800 	pop	{fp, pc}

0000adb4 <OSMemPut>:
    adb4:	e92d4800 	push	{fp, lr}
    adb8:	e28db004 	add	fp, sp, #4
    adbc:	e24dd010 	sub	sp, sp, #16
    adc0:	e50b0010 	str	r0, [fp, #-16]
    adc4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    adc8:	e3a03000 	mov	r3, #0
    adcc:	e50b3008 	str	r3, [fp, #-8]
    add0:	eb001136 	bl	f2b0 <OS_CPU_SR_Save>
    add4:	e50b0008 	str	r0, [fp, #-8]
    add8:	e51b3010 	ldr	r3, [fp, #-16]
    addc:	e5932010 	ldr	r2, [r3, #16]
    ade0:	e51b3010 	ldr	r3, [fp, #-16]
    ade4:	e593300c 	ldr	r3, [r3, #12]
    ade8:	e1520003 	cmp	r2, r3
    adec:	3a000003 	bcc	ae00 <OSMemPut+0x4c>
    adf0:	e51b0008 	ldr	r0, [fp, #-8]
    adf4:	eb001140 	bl	f2fc <OS_CPU_SR_Restore>
    adf8:	e3a0305e 	mov	r3, #94	; 0x5e
    adfc:	ea00000e 	b	ae3c <OSMemPut+0x88>
    ae00:	e51b3010 	ldr	r3, [fp, #-16]
    ae04:	e5932004 	ldr	r2, [r3, #4]
    ae08:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    ae0c:	e5832000 	str	r2, [r3]
    ae10:	e51b3010 	ldr	r3, [fp, #-16]
    ae14:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    ae18:	e5832004 	str	r2, [r3, #4]
    ae1c:	e51b3010 	ldr	r3, [fp, #-16]
    ae20:	e5933010 	ldr	r3, [r3, #16]
    ae24:	e2832001 	add	r2, r3, #1
    ae28:	e51b3010 	ldr	r3, [fp, #-16]
    ae2c:	e5832010 	str	r2, [r3, #16]
    ae30:	e51b0008 	ldr	r0, [fp, #-8]
    ae34:	eb001130 	bl	f2fc <OS_CPU_SR_Restore>
    ae38:	e3a03000 	mov	r3, #0
    ae3c:	e1a00003 	mov	r0, r3
    ae40:	e24bd004 	sub	sp, fp, #4
    ae44:	e8bd8800 	pop	{fp, pc}

0000ae48 <OSMemQuery>:
    ae48:	e92d4800 	push	{fp, lr}
    ae4c:	e28db004 	add	fp, sp, #4
    ae50:	e24dd010 	sub	sp, sp, #16
    ae54:	e50b0010 	str	r0, [fp, #-16]
    ae58:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    ae5c:	e3a03000 	mov	r3, #0
    ae60:	e50b3008 	str	r3, [fp, #-8]
    ae64:	eb001111 	bl	f2b0 <OS_CPU_SR_Save>
    ae68:	e50b0008 	str	r0, [fp, #-8]
    ae6c:	e51b3010 	ldr	r3, [fp, #-16]
    ae70:	e5932000 	ldr	r2, [r3]
    ae74:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    ae78:	e5832000 	str	r2, [r3]
    ae7c:	e51b3010 	ldr	r3, [fp, #-16]
    ae80:	e5932004 	ldr	r2, [r3, #4]
    ae84:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    ae88:	e5832004 	str	r2, [r3, #4]
    ae8c:	e51b3010 	ldr	r3, [fp, #-16]
    ae90:	e5932008 	ldr	r2, [r3, #8]
    ae94:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    ae98:	e5832008 	str	r2, [r3, #8]
    ae9c:	e51b3010 	ldr	r3, [fp, #-16]
    aea0:	e593200c 	ldr	r2, [r3, #12]
    aea4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    aea8:	e583200c 	str	r2, [r3, #12]
    aeac:	e51b3010 	ldr	r3, [fp, #-16]
    aeb0:	e5932010 	ldr	r2, [r3, #16]
    aeb4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    aeb8:	e5832010 	str	r2, [r3, #16]
    aebc:	e51b0008 	ldr	r0, [fp, #-8]
    aec0:	eb00110d 	bl	f2fc <OS_CPU_SR_Restore>
    aec4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    aec8:	e593200c 	ldr	r2, [r3, #12]
    aecc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    aed0:	e5933010 	ldr	r3, [r3, #16]
    aed4:	e0632002 	rsb	r2, r3, r2
    aed8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    aedc:	e5832014 	str	r2, [r3, #20]
    aee0:	e3a03000 	mov	r3, #0
    aee4:	e1a00003 	mov	r0, r3
    aee8:	e24bd004 	sub	sp, fp, #4
    aeec:	e8bd8800 	pop	{fp, pc}

0000aef0 <OS_MemInit>:
    aef0:	e92d4800 	push	{fp, lr}
    aef4:	e28db004 	add	fp, sp, #4
    aef8:	e24dd008 	sub	sp, sp, #8
    aefc:	e30a0e9c 	movw	r0, #44700	; 0xae9c
    af00:	e3400019 	movt	r0, #25
    af04:	e3a01078 	mov	r1, #120	; 0x78
    af08:	ebfffad9 	bl	9a74 <OS_MemClr>
    af0c:	e3a03000 	mov	r3, #0
    af10:	e14b30b6 	strh	r3, [fp, #-6]
    af14:	ea00001a 	b	af84 <OS_MemInit+0x94>
    af18:	e15b20b6 	ldrh	r2, [fp, #-6]
    af1c:	e1a03002 	mov	r3, r2
    af20:	e1a03083 	lsl	r3, r3, #1
    af24:	e0833002 	add	r3, r3, r2
    af28:	e1a03183 	lsl	r3, r3, #3
    af2c:	e30a2e9c 	movw	r2, #44700	; 0xae9c
    af30:	e3402019 	movt	r2, #25
    af34:	e0833002 	add	r3, r3, r2
    af38:	e50b300c 	str	r3, [fp, #-12]
    af3c:	e15b30b6 	ldrh	r3, [fp, #-6]
    af40:	e2832001 	add	r2, r3, #1
    af44:	e1a03002 	mov	r3, r2
    af48:	e1a03083 	lsl	r3, r3, #1
    af4c:	e0833002 	add	r3, r3, r2
    af50:	e1a03183 	lsl	r3, r3, #3
    af54:	e30a2e9c 	movw	r2, #44700	; 0xae9c
    af58:	e3402019 	movt	r2, #25
    af5c:	e0832002 	add	r2, r3, r2
    af60:	e51b300c 	ldr	r3, [fp, #-12]
    af64:	e5832004 	str	r2, [r3, #4]
    af68:	e51b200c 	ldr	r2, [fp, #-12]
    af6c:	e3073744 	movw	r3, #30532	; 0x7744
    af70:	e3403001 	movt	r3, #1
    af74:	e5823014 	str	r3, [r2, #20]
    af78:	e15b30b6 	ldrh	r3, [fp, #-6]
    af7c:	e2833001 	add	r3, r3, #1
    af80:	e14b30b6 	strh	r3, [fp, #-6]
    af84:	e15b30b6 	ldrh	r3, [fp, #-6]
    af88:	e3530003 	cmp	r3, #3
    af8c:	9affffe1 	bls	af18 <OS_MemInit+0x28>
    af90:	e15b20b6 	ldrh	r2, [fp, #-6]
    af94:	e1a03002 	mov	r3, r2
    af98:	e1a03083 	lsl	r3, r3, #1
    af9c:	e0833002 	add	r3, r3, r2
    afa0:	e1a03183 	lsl	r3, r3, #3
    afa4:	e30a2e9c 	movw	r2, #44700	; 0xae9c
    afa8:	e3402019 	movt	r2, #25
    afac:	e0833002 	add	r3, r3, r2
    afb0:	e50b300c 	str	r3, [fp, #-12]
    afb4:	e51b300c 	ldr	r3, [fp, #-12]
    afb8:	e3a02000 	mov	r2, #0
    afbc:	e5832004 	str	r2, [r3, #4]
    afc0:	e51b200c 	ldr	r2, [fp, #-12]
    afc4:	e3073744 	movw	r3, #30532	; 0x7744
    afc8:	e3403001 	movt	r3, #1
    afcc:	e5823014 	str	r3, [r2, #20]
    afd0:	e30a3f24 	movw	r3, #44836	; 0xaf24
    afd4:	e3403019 	movt	r3, #25
    afd8:	e30a2e9c 	movw	r2, #44700	; 0xae9c
    afdc:	e3402019 	movt	r2, #25
    afe0:	e5832000 	str	r2, [r3]
    afe4:	e24bd004 	sub	sp, fp, #4
    afe8:	e8bd8800 	pop	{fp, pc}

0000afec <OSMutexAccept>:
    afec:	e92d4800 	push	{fp, lr}
    aff0:	e28db004 	add	fp, sp, #4
    aff4:	e24dd010 	sub	sp, sp, #16
    aff8:	e50b0010 	str	r0, [fp, #-16]
    affc:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    b000:	e3a03000 	mov	r3, #0
    b004:	e50b3008 	str	r3, [fp, #-8]
    b008:	e51b3010 	ldr	r3, [fp, #-16]
    b00c:	e5d33000 	ldrb	r3, [r3]
    b010:	e3530004 	cmp	r3, #4
    b014:	0a000004 	beq	b02c <OSMutexAccept+0x40>
    b018:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b01c:	e3a02001 	mov	r2, #1
    b020:	e5c32000 	strb	r2, [r3]
    b024:	e3a03000 	mov	r3, #0
    b028:	ea000047 	b	b14c <OSMutexAccept+0x160>
    b02c:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    b030:	e3403019 	movt	r3, #25
    b034:	e5d33000 	ldrb	r3, [r3]
    b038:	e3530000 	cmp	r3, #0
    b03c:	0a000004 	beq	b054 <OSMutexAccept+0x68>
    b040:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b044:	e3a02002 	mov	r2, #2
    b048:	e5c32000 	strb	r2, [r3]
    b04c:	e3a03000 	mov	r3, #0
    b050:	ea00003d 	b	b14c <OSMutexAccept+0x160>
    b054:	eb001095 	bl	f2b0 <OS_CPU_SR_Save>
    b058:	e50b0008 	str	r0, [fp, #-8]
    b05c:	e51b3010 	ldr	r3, [fp, #-16]
    b060:	e1d330b8 	ldrh	r3, [r3, #8]
    b064:	e1a03423 	lsr	r3, r3, #8
    b068:	e6ff3073 	uxth	r3, r3
    b06c:	e54b3009 	strb	r3, [fp, #-9]
    b070:	e51b3010 	ldr	r3, [fp, #-16]
    b074:	e1d330b8 	ldrh	r3, [r3, #8]
    b078:	e6ef3073 	uxtb	r3, r3
    b07c:	e35300ff 	cmp	r3, #255	; 0xff
    b080:	1a00002b 	bne	b134 <OSMutexAccept+0x148>
    b084:	e51b3010 	ldr	r3, [fp, #-16]
    b088:	e1d330b8 	ldrh	r3, [r3, #8]
    b08c:	e3c330ff 	bic	r3, r3, #255	; 0xff
    b090:	e6ff2073 	uxth	r2, r3
    b094:	e51b3010 	ldr	r3, [fp, #-16]
    b098:	e1c320b8 	strh	r2, [r3, #8]
    b09c:	e51b3010 	ldr	r3, [fp, #-16]
    b0a0:	e1d320b8 	ldrh	r2, [r3, #8]
    b0a4:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    b0a8:	e3403019 	movt	r3, #25
    b0ac:	e5933000 	ldr	r3, [r3]
    b0b0:	e5d3302e 	ldrb	r3, [r3, #46]	; 0x2e
    b0b4:	e1823003 	orr	r3, r2, r3
    b0b8:	e6ff2073 	uxth	r2, r3
    b0bc:	e51b3010 	ldr	r3, [fp, #-16]
    b0c0:	e1c320b8 	strh	r2, [r3, #8]
    b0c4:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    b0c8:	e3403019 	movt	r3, #25
    b0cc:	e5932000 	ldr	r2, [r3]
    b0d0:	e51b3010 	ldr	r3, [fp, #-16]
    b0d4:	e5832004 	str	r2, [r3, #4]
    b0d8:	e55b3009 	ldrb	r3, [fp, #-9]
    b0dc:	e35300ff 	cmp	r3, #255	; 0xff
    b0e0:	0a00000c 	beq	b118 <OSMutexAccept+0x12c>
    b0e4:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    b0e8:	e3403019 	movt	r3, #25
    b0ec:	e5933000 	ldr	r3, [r3]
    b0f0:	e5d3302e 	ldrb	r3, [r3, #46]	; 0x2e
    b0f4:	e55b2009 	ldrb	r2, [fp, #-9]
    b0f8:	e1520003 	cmp	r2, r3
    b0fc:	3a000005 	bcc	b118 <OSMutexAccept+0x12c>
    b100:	e51b0008 	ldr	r0, [fp, #-8]
    b104:	eb00107c 	bl	f2fc <OS_CPU_SR_Restore>
    b108:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b10c:	e3a02078 	mov	r2, #120	; 0x78
    b110:	e5c32000 	strb	r2, [r3]
    b114:	ea000004 	b	b12c <OSMutexAccept+0x140>
    b118:	e51b0008 	ldr	r0, [fp, #-8]
    b11c:	eb001076 	bl	f2fc <OS_CPU_SR_Restore>
    b120:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b124:	e3a02000 	mov	r2, #0
    b128:	e5c32000 	strb	r2, [r3]
    b12c:	e3a03001 	mov	r3, #1
    b130:	ea000005 	b	b14c <OSMutexAccept+0x160>
    b134:	e51b0008 	ldr	r0, [fp, #-8]
    b138:	eb00106f 	bl	f2fc <OS_CPU_SR_Restore>
    b13c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b140:	e3a02000 	mov	r2, #0
    b144:	e5c32000 	strb	r2, [r3]
    b148:	e3a03000 	mov	r3, #0
    b14c:	e1a00003 	mov	r0, r3
    b150:	e24bd004 	sub	sp, fp, #4
    b154:	e8bd8800 	pop	{fp, pc}

0000b158 <OSMutexCreate>:
    b158:	e92d4800 	push	{fp, lr}
    b15c:	e28db004 	add	fp, sp, #4
    b160:	e24dd010 	sub	sp, sp, #16
    b164:	e1a03000 	mov	r3, r0
    b168:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    b16c:	e54b300d 	strb	r3, [fp, #-13]
    b170:	e3a03000 	mov	r3, #0
    b174:	e50b3008 	str	r3, [fp, #-8]
    b178:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    b17c:	e3403019 	movt	r3, #25
    b180:	e5d33000 	ldrb	r3, [r3]
    b184:	e3530000 	cmp	r3, #0
    b188:	0a000004 	beq	b1a0 <OSMutexCreate+0x48>
    b18c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b190:	e3a02010 	mov	r2, #16
    b194:	e5c32000 	strb	r2, [r3]
    b198:	e3a03000 	mov	r3, #0
    b19c:	ea00004d 	b	b2d8 <OSMutexCreate+0x180>
    b1a0:	eb001042 	bl	f2b0 <OS_CPU_SR_Save>
    b1a4:	e50b0008 	str	r0, [fp, #-8]
    b1a8:	e55b300d 	ldrb	r3, [fp, #-13]
    b1ac:	e35300ff 	cmp	r3, #255	; 0xff
    b1b0:	0a000011 	beq	b1fc <OSMutexCreate+0xa4>
    b1b4:	e55b200d 	ldrb	r2, [fp, #-13]
    b1b8:	e30b392c 	movw	r3, #47404	; 0xb92c
    b1bc:	e3403019 	movt	r3, #25
    b1c0:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    b1c4:	e3530000 	cmp	r3, #0
    b1c8:	0a000006 	beq	b1e8 <OSMutexCreate+0x90>
    b1cc:	e51b0008 	ldr	r0, [fp, #-8]
    b1d0:	eb001049 	bl	f2fc <OS_CPU_SR_Restore>
    b1d4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b1d8:	e3a02028 	mov	r2, #40	; 0x28
    b1dc:	e5c32000 	strb	r2, [r3]
    b1e0:	e3a03000 	mov	r3, #0
    b1e4:	ea00003b 	b	b2d8 <OSMutexCreate+0x180>
    b1e8:	e55b200d 	ldrb	r2, [fp, #-13]
    b1ec:	e30b392c 	movw	r3, #47404	; 0xb92c
    b1f0:	e3403019 	movt	r3, #25
    b1f4:	e3a01001 	mov	r1, #1
    b1f8:	e7831102 	str	r1, [r3, r2, lsl #2]
    b1fc:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    b200:	e3403019 	movt	r3, #25
    b204:	e5933000 	ldr	r3, [r3]
    b208:	e50b300c 	str	r3, [fp, #-12]
    b20c:	e51b300c 	ldr	r3, [fp, #-12]
    b210:	e3530000 	cmp	r3, #0
    b214:	1a00000e 	bne	b254 <OSMutexCreate+0xfc>
    b218:	e55b300d 	ldrb	r3, [fp, #-13]
    b21c:	e35300ff 	cmp	r3, #255	; 0xff
    b220:	0a000004 	beq	b238 <OSMutexCreate+0xe0>
    b224:	e55b200d 	ldrb	r2, [fp, #-13]
    b228:	e30b392c 	movw	r3, #47404	; 0xb92c
    b22c:	e3403019 	movt	r3, #25
    b230:	e3a01000 	mov	r1, #0
    b234:	e7831102 	str	r1, [r3, r2, lsl #2]
    b238:	e51b0008 	ldr	r0, [fp, #-8]
    b23c:	eb00102e 	bl	f2fc <OS_CPU_SR_Restore>
    b240:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b244:	e3a02004 	mov	r2, #4
    b248:	e5c32000 	strb	r2, [r3]
    b24c:	e51b300c 	ldr	r3, [fp, #-12]
    b250:	ea000020 	b	b2d8 <OSMutexCreate+0x180>
    b254:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    b258:	e3403019 	movt	r3, #25
    b25c:	e5933000 	ldr	r3, [r3]
    b260:	e5932004 	ldr	r2, [r3, #4]
    b264:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    b268:	e3403019 	movt	r3, #25
    b26c:	e5832000 	str	r2, [r3]
    b270:	e51b0008 	ldr	r0, [fp, #-8]
    b274:	eb001020 	bl	f2fc <OS_CPU_SR_Restore>
    b278:	e51b300c 	ldr	r3, [fp, #-12]
    b27c:	e3a02004 	mov	r2, #4
    b280:	e5c32000 	strb	r2, [r3]
    b284:	e55b300d 	ldrb	r3, [fp, #-13]
    b288:	e6ff3073 	uxth	r3, r3
    b28c:	e1a03403 	lsl	r3, r3, #8
    b290:	e6ff3073 	uxth	r3, r3
    b294:	e38330ff 	orr	r3, r3, #255	; 0xff
    b298:	e6ff2073 	uxth	r2, r3
    b29c:	e51b300c 	ldr	r3, [fp, #-12]
    b2a0:	e1c320b8 	strh	r2, [r3, #8]
    b2a4:	e51b300c 	ldr	r3, [fp, #-12]
    b2a8:	e3a02000 	mov	r2, #0
    b2ac:	e5832004 	str	r2, [r3, #4]
    b2b0:	e51b200c 	ldr	r2, [fp, #-12]
    b2b4:	e3073748 	movw	r3, #30536	; 0x7748
    b2b8:	e3403001 	movt	r3, #1
    b2bc:	e5823014 	str	r3, [r2, #20]
    b2c0:	e51b000c 	ldr	r0, [fp, #-12]
    b2c4:	ebfff8d2 	bl	9614 <OS_EventWaitListInit>
    b2c8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b2cc:	e3a02000 	mov	r2, #0
    b2d0:	e5c32000 	strb	r2, [r3]
    b2d4:	e51b300c 	ldr	r3, [fp, #-12]
    b2d8:	e1a00003 	mov	r0, r3
    b2dc:	e24bd004 	sub	sp, fp, #4
    b2e0:	e8bd8800 	pop	{fp, pc}

0000b2e4 <OSMutexDel>:
    b2e4:	e92d4800 	push	{fp, lr}
    b2e8:	e28db004 	add	fp, sp, #4
    b2ec:	e24dd028 	sub	sp, sp, #40	; 0x28
    b2f0:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
    b2f4:	e1a03001 	mov	r3, r1
    b2f8:	e50b2028 	str	r2, [fp, #-40]	; 0xffffffd8
    b2fc:	e54b3021 	strb	r3, [fp, #-33]	; 0xffffffdf
    b300:	e3a03000 	mov	r3, #0
    b304:	e50b3010 	str	r3, [fp, #-16]
    b308:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b30c:	e5d33000 	ldrb	r3, [r3]
    b310:	e3530004 	cmp	r3, #4
    b314:	0a000004 	beq	b32c <OSMutexDel+0x48>
    b318:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    b31c:	e3a02001 	mov	r2, #1
    b320:	e5c32000 	strb	r2, [r3]
    b324:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b328:	ea0000a8 	b	b5d0 <OSMutexDel+0x2ec>
    b32c:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    b330:	e3403019 	movt	r3, #25
    b334:	e5d33000 	ldrb	r3, [r3]
    b338:	e3530000 	cmp	r3, #0
    b33c:	0a000004 	beq	b354 <OSMutexDel+0x70>
    b340:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    b344:	e3a0200f 	mov	r2, #15
    b348:	e5c32000 	strb	r2, [r3]
    b34c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b350:	ea00009e 	b	b5d0 <OSMutexDel+0x2ec>
    b354:	eb000fd5 	bl	f2b0 <OS_CPU_SR_Save>
    b358:	e50b0010 	str	r0, [fp, #-16]
    b35c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b360:	e5d3300a 	ldrb	r3, [r3, #10]
    b364:	e3530000 	cmp	r3, #0
    b368:	0a000002 	beq	b378 <OSMutexDel+0x94>
    b36c:	e3a03001 	mov	r3, #1
    b370:	e54b3005 	strb	r3, [fp, #-5]
    b374:	ea000001 	b	b380 <OSMutexDel+0x9c>
    b378:	e3a03000 	mov	r3, #0
    b37c:	e54b3005 	strb	r3, [fp, #-5]
    b380:	e55b3021 	ldrb	r3, [fp, #-33]	; 0xffffffdf
    b384:	e3530000 	cmp	r3, #0
    b388:	0a000002 	beq	b398 <OSMutexDel+0xb4>
    b38c:	e3530001 	cmp	r3, #1
    b390:	0a000033 	beq	b464 <OSMutexDel+0x180>
    b394:	ea000084 	b	b5ac <OSMutexDel+0x2c8>
    b398:	e55b3005 	ldrb	r3, [fp, #-5]
    b39c:	e3530000 	cmp	r3, #0
    b3a0:	1a000027 	bne	b444 <OSMutexDel+0x160>
    b3a4:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
    b3a8:	e3073748 	movw	r3, #30536	; 0x7748
    b3ac:	e3403001 	movt	r3, #1
    b3b0:	e5823014 	str	r3, [r2, #20]
    b3b4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b3b8:	e1d330b8 	ldrh	r3, [r3, #8]
    b3bc:	e1a03423 	lsr	r3, r3, #8
    b3c0:	e6ff3073 	uxth	r3, r3
    b3c4:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
    b3c8:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
    b3cc:	e35300ff 	cmp	r3, #255	; 0xff
    b3d0:	0a000004 	beq	b3e8 <OSMutexDel+0x104>
    b3d4:	e55b2011 	ldrb	r2, [fp, #-17]	; 0xffffffef
    b3d8:	e30b392c 	movw	r3, #47404	; 0xb92c
    b3dc:	e3403019 	movt	r3, #25
    b3e0:	e3a01000 	mov	r1, #0
    b3e4:	e7831102 	str	r1, [r3, r2, lsl #2]
    b3e8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b3ec:	e3a02000 	mov	r2, #0
    b3f0:	e5c32000 	strb	r2, [r3]
    b3f4:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    b3f8:	e3403019 	movt	r3, #25
    b3fc:	e5932000 	ldr	r2, [r3]
    b400:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b404:	e5832004 	str	r2, [r3, #4]
    b408:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b40c:	e3a02000 	mov	r2, #0
    b410:	e1c320b8 	strh	r2, [r3, #8]
    b414:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    b418:	e3403019 	movt	r3, #25
    b41c:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
    b420:	e5832000 	str	r2, [r3]
    b424:	e51b0010 	ldr	r0, [fp, #-16]
    b428:	eb000fb3 	bl	f2fc <OS_CPU_SR_Restore>
    b42c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    b430:	e3a02000 	mov	r2, #0
    b434:	e5c32000 	strb	r2, [r3]
    b438:	e3a03000 	mov	r3, #0
    b43c:	e50b300c 	str	r3, [fp, #-12]
    b440:	ea000061 	b	b5cc <OSMutexDel+0x2e8>
    b444:	e51b0010 	ldr	r0, [fp, #-16]
    b448:	eb000fab 	bl	f2fc <OS_CPU_SR_Restore>
    b44c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    b450:	e3a02049 	mov	r2, #73	; 0x49
    b454:	e5c32000 	strb	r2, [r3]
    b458:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b45c:	e50b300c 	str	r3, [fp, #-12]
    b460:	ea000059 	b	b5cc <OSMutexDel+0x2e8>
    b464:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b468:	e1d330b8 	ldrh	r3, [r3, #8]
    b46c:	e1a03423 	lsr	r3, r3, #8
    b470:	e6ff3073 	uxth	r3, r3
    b474:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
    b478:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
    b47c:	e35300ff 	cmp	r3, #255	; 0xff
    b480:	0a000018 	beq	b4e8 <OSMutexDel+0x204>
    b484:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b488:	e1d330b8 	ldrh	r3, [r3, #8]
    b48c:	e54b3012 	strb	r3, [fp, #-18]	; 0xffffffee
    b490:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b494:	e5933004 	ldr	r3, [r3, #4]
    b498:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    b49c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    b4a0:	e3530000 	cmp	r3, #0
    b4a4:	0a00000f 	beq	b4e8 <OSMutexDel+0x204>
    b4a8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    b4ac:	e5d3302e 	ldrb	r3, [r3, #46]	; 0x2e
    b4b0:	e55b2011 	ldrb	r2, [fp, #-17]	; 0xffffffef
    b4b4:	e1520003 	cmp	r2, r3
    b4b8:	1a00000a 	bne	b4e8 <OSMutexDel+0x204>
    b4bc:	e55b3012 	ldrb	r3, [fp, #-18]	; 0xffffffee
    b4c0:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
    b4c4:	e1a01003 	mov	r1, r3
    b4c8:	eb00028c 	bl	bf00 <OSMutex_RdyAtPrio>
    b4cc:	ea000005 	b	b4e8 <OSMutexDel+0x204>
    b4d0:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
    b4d4:	e3a01000 	mov	r1, #0
    b4d8:	e3a02010 	mov	r2, #16
    b4dc:	e3a03002 	mov	r3, #2
    b4e0:	ebfff6b0 	bl	8fa8 <OS_EventTaskRdy>
    b4e4:	ea000000 	b	b4ec <OSMutexDel+0x208>
    b4e8:	e1a00000 	nop			; (mov r0, r0)
    b4ec:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b4f0:	e5d3300a 	ldrb	r3, [r3, #10]
    b4f4:	e3530000 	cmp	r3, #0
    b4f8:	1afffff4 	bne	b4d0 <OSMutexDel+0x1ec>
    b4fc:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
    b500:	e3073748 	movw	r3, #30536	; 0x7748
    b504:	e3403001 	movt	r3, #1
    b508:	e5823014 	str	r3, [r2, #20]
    b50c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b510:	e1d330b8 	ldrh	r3, [r3, #8]
    b514:	e1a03423 	lsr	r3, r3, #8
    b518:	e6ff3073 	uxth	r3, r3
    b51c:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
    b520:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
    b524:	e35300ff 	cmp	r3, #255	; 0xff
    b528:	0a000004 	beq	b540 <OSMutexDel+0x25c>
    b52c:	e55b2011 	ldrb	r2, [fp, #-17]	; 0xffffffef
    b530:	e30b392c 	movw	r3, #47404	; 0xb92c
    b534:	e3403019 	movt	r3, #25
    b538:	e3a01000 	mov	r1, #0
    b53c:	e7831102 	str	r1, [r3, r2, lsl #2]
    b540:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b544:	e3a02000 	mov	r2, #0
    b548:	e5c32000 	strb	r2, [r3]
    b54c:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    b550:	e3403019 	movt	r3, #25
    b554:	e5932000 	ldr	r2, [r3]
    b558:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b55c:	e5832004 	str	r2, [r3, #4]
    b560:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b564:	e3a02000 	mov	r2, #0
    b568:	e1c320b8 	strh	r2, [r3, #8]
    b56c:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    b570:	e3403019 	movt	r3, #25
    b574:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
    b578:	e5832000 	str	r2, [r3]
    b57c:	e51b0010 	ldr	r0, [fp, #-16]
    b580:	eb000f5d 	bl	f2fc <OS_CPU_SR_Restore>
    b584:	e55b3005 	ldrb	r3, [fp, #-5]
    b588:	e3530001 	cmp	r3, #1
    b58c:	1a000000 	bne	b594 <OSMutexDel+0x2b0>
    b590:	ebfff968 	bl	9b38 <OS_Sched>
    b594:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    b598:	e3a02000 	mov	r2, #0
    b59c:	e5c32000 	strb	r2, [r3]
    b5a0:	e3a03000 	mov	r3, #0
    b5a4:	e50b300c 	str	r3, [fp, #-12]
    b5a8:	ea000007 	b	b5cc <OSMutexDel+0x2e8>
    b5ac:	e51b0010 	ldr	r0, [fp, #-16]
    b5b0:	eb000f51 	bl	f2fc <OS_CPU_SR_Restore>
    b5b4:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    b5b8:	e3a02007 	mov	r2, #7
    b5bc:	e5c32000 	strb	r2, [r3]
    b5c0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b5c4:	e50b300c 	str	r3, [fp, #-12]
    b5c8:	e1a00000 	nop			; (mov r0, r0)
    b5cc:	e51b300c 	ldr	r3, [fp, #-12]
    b5d0:	e1a00003 	mov	r0, r3
    b5d4:	e24bd004 	sub	sp, fp, #4
    b5d8:	e8bd8800 	pop	{fp, pc}

0000b5dc <OSMutexPend>:
    b5dc:	e92d4800 	push	{fp, lr}
    b5e0:	e28db004 	add	fp, sp, #4
    b5e4:	e24dd028 	sub	sp, sp, #40	; 0x28
    b5e8:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
    b5ec:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
    b5f0:	e50b2028 	str	r2, [fp, #-40]	; 0xffffffd8
    b5f4:	e3a03000 	mov	r3, #0
    b5f8:	e50b300c 	str	r3, [fp, #-12]
    b5fc:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b600:	e5d33000 	ldrb	r3, [r3]
    b604:	e3530004 	cmp	r3, #4
    b608:	0a000003 	beq	b61c <OSMutexPend+0x40>
    b60c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    b610:	e3a02001 	mov	r2, #1
    b614:	e5c32000 	strb	r2, [r3]
    b618:	ea00016a 	b	bbc8 <OSMutexPend+0x5ec>
    b61c:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    b620:	e3403019 	movt	r3, #25
    b624:	e5d33000 	ldrb	r3, [r3]
    b628:	e3530000 	cmp	r3, #0
    b62c:	0a000003 	beq	b640 <OSMutexPend+0x64>
    b630:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    b634:	e3a02002 	mov	r2, #2
    b638:	e5c32000 	strb	r2, [r3]
    b63c:	ea000161 	b	bbc8 <OSMutexPend+0x5ec>
    b640:	e30a3e8c 	movw	r3, #44684	; 0xae8c
    b644:	e3403019 	movt	r3, #25
    b648:	e5d33000 	ldrb	r3, [r3]
    b64c:	e3530000 	cmp	r3, #0
    b650:	0a000003 	beq	b664 <OSMutexPend+0x88>
    b654:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    b658:	e3a0200d 	mov	r2, #13
    b65c:	e5c32000 	strb	r2, [r3]
    b660:	ea000158 	b	bbc8 <OSMutexPend+0x5ec>
    b664:	eb000f11 	bl	f2b0 <OS_CPU_SR_Save>
    b668:	e50b000c 	str	r0, [fp, #-12]
    b66c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b670:	e1d330b8 	ldrh	r3, [r3, #8]
    b674:	e1a03423 	lsr	r3, r3, #8
    b678:	e6ff3073 	uxth	r3, r3
    b67c:	e54b300d 	strb	r3, [fp, #-13]
    b680:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b684:	e1d330b8 	ldrh	r3, [r3, #8]
    b688:	e6ef3073 	uxtb	r3, r3
    b68c:	e35300ff 	cmp	r3, #255	; 0xff
    b690:	1a00002a 	bne	b740 <OSMutexPend+0x164>
    b694:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b698:	e1d330b8 	ldrh	r3, [r3, #8]
    b69c:	e3c330ff 	bic	r3, r3, #255	; 0xff
    b6a0:	e6ff2073 	uxth	r2, r3
    b6a4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b6a8:	e1c320b8 	strh	r2, [r3, #8]
    b6ac:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b6b0:	e1d320b8 	ldrh	r2, [r3, #8]
    b6b4:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    b6b8:	e3403019 	movt	r3, #25
    b6bc:	e5933000 	ldr	r3, [r3]
    b6c0:	e5d3302e 	ldrb	r3, [r3, #46]	; 0x2e
    b6c4:	e1823003 	orr	r3, r2, r3
    b6c8:	e6ff2073 	uxth	r2, r3
    b6cc:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b6d0:	e1c320b8 	strh	r2, [r3, #8]
    b6d4:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    b6d8:	e3403019 	movt	r3, #25
    b6dc:	e5932000 	ldr	r2, [r3]
    b6e0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b6e4:	e5832004 	str	r2, [r3, #4]
    b6e8:	e55b300d 	ldrb	r3, [fp, #-13]
    b6ec:	e35300ff 	cmp	r3, #255	; 0xff
    b6f0:	0a00000c 	beq	b728 <OSMutexPend+0x14c>
    b6f4:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    b6f8:	e3403019 	movt	r3, #25
    b6fc:	e5933000 	ldr	r3, [r3]
    b700:	e5d3302e 	ldrb	r3, [r3, #46]	; 0x2e
    b704:	e55b200d 	ldrb	r2, [fp, #-13]
    b708:	e1520003 	cmp	r2, r3
    b70c:	3a000005 	bcc	b728 <OSMutexPend+0x14c>
    b710:	e51b000c 	ldr	r0, [fp, #-12]
    b714:	eb000ef8 	bl	f2fc <OS_CPU_SR_Restore>
    b718:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    b71c:	e3a02078 	mov	r2, #120	; 0x78
    b720:	e5c32000 	strb	r2, [r3]
    b724:	ea000127 	b	bbc8 <OSMutexPend+0x5ec>
    b728:	e51b000c 	ldr	r0, [fp, #-12]
    b72c:	eb000ef2 	bl	f2fc <OS_CPU_SR_Restore>
    b730:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    b734:	e3a02000 	mov	r2, #0
    b738:	e5c32000 	strb	r2, [r3]
    b73c:	ea000121 	b	bbc8 <OSMutexPend+0x5ec>
    b740:	e55b300d 	ldrb	r3, [fp, #-13]
    b744:	e35300ff 	cmp	r3, #255	; 0xff
    b748:	0a0000d2 	beq	ba98 <OSMutexPend+0x4bc>
    b74c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b750:	e1d330b8 	ldrh	r3, [r3, #8]
    b754:	e54b300e 	strb	r3, [fp, #-14]
    b758:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    b75c:	e5933004 	ldr	r3, [r3, #4]
    b760:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    b764:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b768:	e5d3302e 	ldrb	r3, [r3, #46]	; 0x2e
    b76c:	e55b200d 	ldrb	r2, [fp, #-13]
    b770:	e1520003 	cmp	r2, r3
    b774:	2a0000c7 	bcs	ba98 <OSMutexPend+0x4bc>
    b778:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    b77c:	e3403019 	movt	r3, #25
    b780:	e5933000 	ldr	r3, [r3]
    b784:	e5d3302e 	ldrb	r3, [r3, #46]	; 0x2e
    b788:	e55b200e 	ldrb	r2, [fp, #-14]
    b78c:	e1520003 	cmp	r2, r3
    b790:	9a0000c0 	bls	ba98 <OSMutexPend+0x4bc>
    b794:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b798:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    b79c:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
    b7a0:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
    b7a4:	e30a3f94 	movw	r3, #44948	; 0xaf94
    b7a8:	e3403019 	movt	r3, #25
    b7ac:	e7d32002 	ldrb	r2, [r3, r2]
    b7b0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b7b4:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    b7b8:	e0023003 	and	r3, r2, r3
    b7bc:	e6ef3073 	uxtb	r3, r3
    b7c0:	e3530000 	cmp	r3, #0
    b7c4:	0a000022 	beq	b854 <OSMutexPend+0x278>
    b7c8:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
    b7cc:	e55b1015 	ldrb	r1, [fp, #-21]	; 0xffffffeb
    b7d0:	e30a3f94 	movw	r3, #44948	; 0xaf94
    b7d4:	e3403019 	movt	r3, #25
    b7d8:	e7d31001 	ldrb	r1, [r3, r1]
    b7dc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b7e0:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    b7e4:	e1e03003 	mvn	r3, r3
    b7e8:	e6ef3073 	uxtb	r3, r3
    b7ec:	e0013003 	and	r3, r1, r3
    b7f0:	e6ef1073 	uxtb	r1, r3
    b7f4:	e30a3f94 	movw	r3, #44948	; 0xaf94
    b7f8:	e3403019 	movt	r3, #25
    b7fc:	e7c31002 	strb	r1, [r3, r2]
    b800:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
    b804:	e30a3f94 	movw	r3, #44948	; 0xaf94
    b808:	e3403019 	movt	r3, #25
    b80c:	e7d33002 	ldrb	r3, [r3, r2]
    b810:	e3530000 	cmp	r3, #0
    b814:	1a00000b 	bne	b848 <OSMutexPend+0x26c>
    b818:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b81c:	e5d33032 	ldrb	r3, [r3, #50]	; 0x32
    b820:	e1e03003 	mvn	r3, r3
    b824:	e6ef2073 	uxtb	r2, r3
    b828:	e30a3f90 	movw	r3, #44944	; 0xaf90
    b82c:	e3403019 	movt	r3, #25
    b830:	e5d33000 	ldrb	r3, [r3]
    b834:	e0023003 	and	r3, r2, r3
    b838:	e6ef2073 	uxtb	r2, r3
    b83c:	e30a3f90 	movw	r3, #44944	; 0xaf90
    b840:	e3403019 	movt	r3, #25
    b844:	e5c32000 	strb	r2, [r3]
    b848:	e3a03001 	mov	r3, #1
    b84c:	e54b3005 	strb	r3, [fp, #-5]
    b850:	ea00002e 	b	b910 <OSMutexPend+0x334>
    b854:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b858:	e593301c 	ldr	r3, [r3, #28]
    b85c:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
    b860:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    b864:	e3530000 	cmp	r3, #0
    b868:	0a000026 	beq	b908 <OSMutexPend+0x32c>
    b86c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b870:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    b874:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
    b878:	e55b1015 	ldrb	r1, [fp, #-21]	; 0xffffffeb
    b87c:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
    b880:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
    b884:	e3a03008 	mov	r3, #8
    b888:	e0802002 	add	r2, r0, r2
    b88c:	e0823003 	add	r3, r2, r3
    b890:	e5d32003 	ldrb	r2, [r3, #3]
    b894:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b898:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    b89c:	e1e03003 	mvn	r3, r3
    b8a0:	e6ef3073 	uxtb	r3, r3
    b8a4:	e0023003 	and	r3, r2, r3
    b8a8:	e6ef2073 	uxtb	r2, r3
    b8ac:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
    b8b0:	e3a03008 	mov	r3, #8
    b8b4:	e0801001 	add	r1, r0, r1
    b8b8:	e0813003 	add	r3, r1, r3
    b8bc:	e5c32003 	strb	r2, [r3, #3]
    b8c0:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
    b8c4:	e51b101c 	ldr	r1, [fp, #-28]	; 0xffffffe4
    b8c8:	e3a03008 	mov	r3, #8
    b8cc:	e0812002 	add	r2, r1, r2
    b8d0:	e0823003 	add	r3, r2, r3
    b8d4:	e5d33003 	ldrb	r3, [r3, #3]
    b8d8:	e3530000 	cmp	r3, #0
    b8dc:	1a000009 	bne	b908 <OSMutexPend+0x32c>
    b8e0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    b8e4:	e5d3200a 	ldrb	r2, [r3, #10]
    b8e8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b8ec:	e5d33032 	ldrb	r3, [r3, #50]	; 0x32
    b8f0:	e1e03003 	mvn	r3, r3
    b8f4:	e6ef3073 	uxtb	r3, r3
    b8f8:	e0023003 	and	r3, r2, r3
    b8fc:	e6ef2073 	uxtb	r2, r3
    b900:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    b904:	e5c3200a 	strb	r2, [r3, #10]
    b908:	e3a03000 	mov	r3, #0
    b90c:	e54b3005 	strb	r3, [fp, #-5]
    b910:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b914:	e55b200d 	ldrb	r2, [fp, #-13]
    b918:	e5c3202e 	strb	r2, [r3, #46]	; 0x2e
    b91c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b920:	e5d3302e 	ldrb	r3, [r3, #46]	; 0x2e
    b924:	e1a031a3 	lsr	r3, r3, #3
    b928:	e6ef2073 	uxtb	r2, r3
    b92c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b930:	e5c32030 	strb	r2, [r3, #48]	; 0x30
    b934:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b938:	e5d3302e 	ldrb	r3, [r3, #46]	; 0x2e
    b93c:	e2033007 	and	r3, r3, #7
    b940:	e6ef2073 	uxtb	r2, r3
    b944:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b948:	e5c3202f 	strb	r2, [r3, #47]	; 0x2f
    b94c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b950:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    b954:	e3a02001 	mov	r2, #1
    b958:	e1a03312 	lsl	r3, r2, r3
    b95c:	e6ef2073 	uxtb	r2, r3
    b960:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b964:	e5c32032 	strb	r2, [r3, #50]	; 0x32
    b968:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b96c:	e5d3302f 	ldrb	r3, [r3, #47]	; 0x2f
    b970:	e3a02001 	mov	r2, #1
    b974:	e1a03312 	lsl	r3, r2, r3
    b978:	e6ef2073 	uxtb	r2, r3
    b97c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b980:	e5c32031 	strb	r2, [r3, #49]	; 0x31
    b984:	e55b3005 	ldrb	r3, [fp, #-5]
    b988:	e3530001 	cmp	r3, #1
    b98c:	1a00001a 	bne	b9fc <OSMutexPend+0x420>
    b990:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b994:	e5d32032 	ldrb	r2, [r3, #50]	; 0x32
    b998:	e30a3f90 	movw	r3, #44944	; 0xaf90
    b99c:	e3403019 	movt	r3, #25
    b9a0:	e5d33000 	ldrb	r3, [r3]
    b9a4:	e1823003 	orr	r3, r2, r3
    b9a8:	e6ef2073 	uxtb	r2, r3
    b9ac:	e30a3f90 	movw	r3, #44944	; 0xaf90
    b9b0:	e3403019 	movt	r3, #25
    b9b4:	e5c32000 	strb	r2, [r3]
    b9b8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b9bc:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    b9c0:	e1a02003 	mov	r2, r3
    b9c4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b9c8:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    b9cc:	e1a01003 	mov	r1, r3
    b9d0:	e30a3f94 	movw	r3, #44948	; 0xaf94
    b9d4:	e3403019 	movt	r3, #25
    b9d8:	e7d31001 	ldrb	r1, [r3, r1]
    b9dc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    b9e0:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    b9e4:	e1813003 	orr	r3, r1, r3
    b9e8:	e6ef1073 	uxtb	r1, r3
    b9ec:	e30a3f94 	movw	r3, #44948	; 0xaf94
    b9f0:	e3403019 	movt	r3, #25
    b9f4:	e7c31002 	strb	r1, [r3, r2]
    b9f8:	ea000021 	b	ba84 <OSMutexPend+0x4a8>
    b9fc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    ba00:	e593301c 	ldr	r3, [r3, #28]
    ba04:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
    ba08:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    ba0c:	e3530000 	cmp	r3, #0
    ba10:	0a00001b 	beq	ba84 <OSMutexPend+0x4a8>
    ba14:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    ba18:	e5d3200a 	ldrb	r2, [r3, #10]
    ba1c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    ba20:	e5d33032 	ldrb	r3, [r3, #50]	; 0x32
    ba24:	e1823003 	orr	r3, r2, r3
    ba28:	e6ef2073 	uxtb	r2, r3
    ba2c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    ba30:	e5c3200a 	strb	r2, [r3, #10]
    ba34:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    ba38:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    ba3c:	e1a01003 	mov	r1, r3
    ba40:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    ba44:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    ba48:	e1a02003 	mov	r2, r3
    ba4c:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
    ba50:	e3a03008 	mov	r3, #8
    ba54:	e0802002 	add	r2, r0, r2
    ba58:	e0823003 	add	r3, r2, r3
    ba5c:	e5d32003 	ldrb	r2, [r3, #3]
    ba60:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    ba64:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    ba68:	e1823003 	orr	r3, r2, r3
    ba6c:	e6ef2073 	uxtb	r2, r3
    ba70:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
    ba74:	e3a03008 	mov	r3, #8
    ba78:	e0801001 	add	r1, r0, r1
    ba7c:	e0813003 	add	r3, r1, r3
    ba80:	e5c32003 	strb	r2, [r3, #3]
    ba84:	e55b200d 	ldrb	r2, [fp, #-13]
    ba88:	e30b392c 	movw	r3, #47404	; 0xb92c
    ba8c:	e3403019 	movt	r3, #25
    ba90:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
    ba94:	e7831102 	str	r1, [r3, r2, lsl #2]
    ba98:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    ba9c:	e3403019 	movt	r3, #25
    baa0:	e5932000 	ldr	r2, [r3]
    baa4:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    baa8:	e3403019 	movt	r3, #25
    baac:	e5933000 	ldr	r3, [r3]
    bab0:	e5d3302c 	ldrb	r3, [r3, #44]	; 0x2c
    bab4:	e3833010 	orr	r3, r3, #16
    bab8:	e6ef3073 	uxtb	r3, r3
    babc:	e5c2302c 	strb	r3, [r2, #44]	; 0x2c
    bac0:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    bac4:	e3403019 	movt	r3, #25
    bac8:	e5933000 	ldr	r3, [r3]
    bacc:	e3a02000 	mov	r2, #0
    bad0:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    bad4:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    bad8:	e3403019 	movt	r3, #25
    badc:	e5933000 	ldr	r3, [r3]
    bae0:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
    bae4:	e5832028 	str	r2, [r3, #40]	; 0x28
    bae8:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
    baec:	ebfff591 	bl	9138 <OS_EventTaskWait>
    baf0:	e51b000c 	ldr	r0, [fp, #-12]
    baf4:	eb000e00 	bl	f2fc <OS_CPU_SR_Restore>
    baf8:	ebfff80e 	bl	9b38 <OS_Sched>
    bafc:	eb000deb 	bl	f2b0 <OS_CPU_SR_Save>
    bb00:	e50b000c 	str	r0, [fp, #-12]
    bb04:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    bb08:	e3403019 	movt	r3, #25
    bb0c:	e5933000 	ldr	r3, [r3]
    bb10:	e5d3302d 	ldrb	r3, [r3, #45]	; 0x2d
    bb14:	e3530000 	cmp	r3, #0
    bb18:	0a000002 	beq	bb28 <OSMutexPend+0x54c>
    bb1c:	e3530002 	cmp	r3, #2
    bb20:	0a000004 	beq	bb38 <OSMutexPend+0x55c>
    bb24:	ea000007 	b	bb48 <OSMutexPend+0x56c>
    bb28:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    bb2c:	e3a02000 	mov	r2, #0
    bb30:	e5c32000 	strb	r2, [r3]
    bb34:	ea00000d 	b	bb70 <OSMutexPend+0x594>
    bb38:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    bb3c:	e3a0200e 	mov	r2, #14
    bb40:	e5c32000 	strb	r2, [r3]
    bb44:	ea000009 	b	bb70 <OSMutexPend+0x594>
    bb48:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    bb4c:	e3403019 	movt	r3, #25
    bb50:	e5933000 	ldr	r3, [r3]
    bb54:	e1a00003 	mov	r0, r3
    bb58:	e51b1020 	ldr	r1, [fp, #-32]	; 0xffffffe0
    bb5c:	ebfff63b 	bl	9450 <OS_EventTaskRemove>
    bb60:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    bb64:	e3a0200a 	mov	r2, #10
    bb68:	e5c32000 	strb	r2, [r3]
    bb6c:	e1a00000 	nop			; (mov r0, r0)
    bb70:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    bb74:	e3403019 	movt	r3, #25
    bb78:	e5933000 	ldr	r3, [r3]
    bb7c:	e3a02000 	mov	r2, #0
    bb80:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    bb84:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    bb88:	e3403019 	movt	r3, #25
    bb8c:	e5933000 	ldr	r3, [r3]
    bb90:	e3a02000 	mov	r2, #0
    bb94:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    bb98:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    bb9c:	e3403019 	movt	r3, #25
    bba0:	e5933000 	ldr	r3, [r3]
    bba4:	e3a02000 	mov	r2, #0
    bba8:	e583201c 	str	r2, [r3, #28]
    bbac:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    bbb0:	e3403019 	movt	r3, #25
    bbb4:	e5933000 	ldr	r3, [r3]
    bbb8:	e3a02000 	mov	r2, #0
    bbbc:	e5832020 	str	r2, [r3, #32]
    bbc0:	e51b000c 	ldr	r0, [fp, #-12]
    bbc4:	eb000dcc 	bl	f2fc <OS_CPU_SR_Restore>
    bbc8:	e24bd004 	sub	sp, fp, #4
    bbcc:	e8bd8800 	pop	{fp, pc}

0000bbd0 <OSMutexPost>:
    bbd0:	e92d4800 	push	{fp, lr}
    bbd4:	e28db004 	add	fp, sp, #4
    bbd8:	e24dd010 	sub	sp, sp, #16
    bbdc:	e50b0010 	str	r0, [fp, #-16]
    bbe0:	e3a03000 	mov	r3, #0
    bbe4:	e50b3008 	str	r3, [fp, #-8]
    bbe8:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    bbec:	e3403019 	movt	r3, #25
    bbf0:	e5d33000 	ldrb	r3, [r3]
    bbf4:	e3530000 	cmp	r3, #0
    bbf8:	0a000001 	beq	bc04 <OSMutexPost+0x34>
    bbfc:	e3a03005 	mov	r3, #5
    bc00:	ea00006c 	b	bdb8 <OSMutexPost+0x1e8>
    bc04:	e51b3010 	ldr	r3, [fp, #-16]
    bc08:	e5d33000 	ldrb	r3, [r3]
    bc0c:	e3530004 	cmp	r3, #4
    bc10:	0a000001 	beq	bc1c <OSMutexPost+0x4c>
    bc14:	e3a03001 	mov	r3, #1
    bc18:	ea000066 	b	bdb8 <OSMutexPost+0x1e8>
    bc1c:	eb000da3 	bl	f2b0 <OS_CPU_SR_Save>
    bc20:	e50b0008 	str	r0, [fp, #-8]
    bc24:	e51b3010 	ldr	r3, [fp, #-16]
    bc28:	e1d330b8 	ldrh	r3, [r3, #8]
    bc2c:	e1a03423 	lsr	r3, r3, #8
    bc30:	e6ff3073 	uxth	r3, r3
    bc34:	e54b3009 	strb	r3, [fp, #-9]
    bc38:	e51b3010 	ldr	r3, [fp, #-16]
    bc3c:	e1d330b8 	ldrh	r3, [r3, #8]
    bc40:	e54b300a 	strb	r3, [fp, #-10]
    bc44:	e51b3010 	ldr	r3, [fp, #-16]
    bc48:	e5932004 	ldr	r2, [r3, #4]
    bc4c:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    bc50:	e3403019 	movt	r3, #25
    bc54:	e5933000 	ldr	r3, [r3]
    bc58:	e1520003 	cmp	r2, r3
    bc5c:	0a000003 	beq	bc70 <OSMutexPost+0xa0>
    bc60:	e51b0008 	ldr	r0, [fp, #-8]
    bc64:	eb000da4 	bl	f2fc <OS_CPU_SR_Restore>
    bc68:	e3a03064 	mov	r3, #100	; 0x64
    bc6c:	ea000051 	b	bdb8 <OSMutexPost+0x1e8>
    bc70:	e55b3009 	ldrb	r3, [fp, #-9]
    bc74:	e35300ff 	cmp	r3, #255	; 0xff
    bc78:	0a000012 	beq	bcc8 <OSMutexPost+0xf8>
    bc7c:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    bc80:	e3403019 	movt	r3, #25
    bc84:	e5933000 	ldr	r3, [r3]
    bc88:	e5d3302e 	ldrb	r3, [r3, #46]	; 0x2e
    bc8c:	e55b2009 	ldrb	r2, [fp, #-9]
    bc90:	e1520003 	cmp	r2, r3
    bc94:	1a000006 	bne	bcb4 <OSMutexPost+0xe4>
    bc98:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    bc9c:	e3403019 	movt	r3, #25
    bca0:	e5932000 	ldr	r2, [r3]
    bca4:	e55b300a 	ldrb	r3, [fp, #-10]
    bca8:	e1a00002 	mov	r0, r2
    bcac:	e1a01003 	mov	r1, r3
    bcb0:	eb000092 	bl	bf00 <OSMutex_RdyAtPrio>
    bcb4:	e55b2009 	ldrb	r2, [fp, #-9]
    bcb8:	e30b392c 	movw	r3, #47404	; 0xb92c
    bcbc:	e3403019 	movt	r3, #25
    bcc0:	e3a01001 	mov	r1, #1
    bcc4:	e7831102 	str	r1, [r3, r2, lsl #2]
    bcc8:	e51b3010 	ldr	r3, [fp, #-16]
    bccc:	e5d3300a 	ldrb	r3, [r3, #10]
    bcd0:	e3530000 	cmp	r3, #0
    bcd4:	0a00002b 	beq	bd88 <OSMutexPost+0x1b8>
    bcd8:	e51b0010 	ldr	r0, [fp, #-16]
    bcdc:	e3a01000 	mov	r1, #0
    bce0:	e3a02010 	mov	r2, #16
    bce4:	e3a03000 	mov	r3, #0
    bce8:	ebfff4ae 	bl	8fa8 <OS_EventTaskRdy>
    bcec:	e1a03000 	mov	r3, r0
    bcf0:	e54b300a 	strb	r3, [fp, #-10]
    bcf4:	e51b3010 	ldr	r3, [fp, #-16]
    bcf8:	e1d330b8 	ldrh	r3, [r3, #8]
    bcfc:	e3c330ff 	bic	r3, r3, #255	; 0xff
    bd00:	e6ff2073 	uxth	r2, r3
    bd04:	e51b3010 	ldr	r3, [fp, #-16]
    bd08:	e1c320b8 	strh	r2, [r3, #8]
    bd0c:	e51b3010 	ldr	r3, [fp, #-16]
    bd10:	e1d320b8 	ldrh	r2, [r3, #8]
    bd14:	e55b300a 	ldrb	r3, [fp, #-10]
    bd18:	e6ff3073 	uxth	r3, r3
    bd1c:	e1823003 	orr	r3, r2, r3
    bd20:	e6ff2073 	uxth	r2, r3
    bd24:	e51b3010 	ldr	r3, [fp, #-16]
    bd28:	e1c320b8 	strh	r2, [r3, #8]
    bd2c:	e55b200a 	ldrb	r2, [fp, #-10]
    bd30:	e30b392c 	movw	r3, #47404	; 0xb92c
    bd34:	e3403019 	movt	r3, #25
    bd38:	e7932102 	ldr	r2, [r3, r2, lsl #2]
    bd3c:	e51b3010 	ldr	r3, [fp, #-16]
    bd40:	e5832004 	str	r2, [r3, #4]
    bd44:	e55b3009 	ldrb	r3, [fp, #-9]
    bd48:	e35300ff 	cmp	r3, #255	; 0xff
    bd4c:	0a000008 	beq	bd74 <OSMutexPost+0x1a4>
    bd50:	e55b200a 	ldrb	r2, [fp, #-10]
    bd54:	e55b3009 	ldrb	r3, [fp, #-9]
    bd58:	e1520003 	cmp	r2, r3
    bd5c:	8a000004 	bhi	bd74 <OSMutexPost+0x1a4>
    bd60:	e51b0008 	ldr	r0, [fp, #-8]
    bd64:	eb000d64 	bl	f2fc <OS_CPU_SR_Restore>
    bd68:	ebfff772 	bl	9b38 <OS_Sched>
    bd6c:	e3a03078 	mov	r3, #120	; 0x78
    bd70:	ea000010 	b	bdb8 <OSMutexPost+0x1e8>
    bd74:	e51b0008 	ldr	r0, [fp, #-8]
    bd78:	eb000d5f 	bl	f2fc <OS_CPU_SR_Restore>
    bd7c:	ebfff76d 	bl	9b38 <OS_Sched>
    bd80:	e3a03000 	mov	r3, #0
    bd84:	ea00000b 	b	bdb8 <OSMutexPost+0x1e8>
    bd88:	e51b3010 	ldr	r3, [fp, #-16]
    bd8c:	e1d330b8 	ldrh	r3, [r3, #8]
    bd90:	e38330ff 	orr	r3, r3, #255	; 0xff
    bd94:	e6ff2073 	uxth	r2, r3
    bd98:	e51b3010 	ldr	r3, [fp, #-16]
    bd9c:	e1c320b8 	strh	r2, [r3, #8]
    bda0:	e51b3010 	ldr	r3, [fp, #-16]
    bda4:	e3a02000 	mov	r2, #0
    bda8:	e5832004 	str	r2, [r3, #4]
    bdac:	e51b0008 	ldr	r0, [fp, #-8]
    bdb0:	eb000d51 	bl	f2fc <OS_CPU_SR_Restore>
    bdb4:	e3a03000 	mov	r3, #0
    bdb8:	e1a00003 	mov	r0, r3
    bdbc:	e24bd004 	sub	sp, fp, #4
    bdc0:	e8bd8800 	pop	{fp, pc}

0000bdc4 <OSMutexQuery>:
    bdc4:	e92d4800 	push	{fp, lr}
    bdc8:	e28db004 	add	fp, sp, #4
    bdcc:	e24dd018 	sub	sp, sp, #24
    bdd0:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    bdd4:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
    bdd8:	e3a03000 	mov	r3, #0
    bddc:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    bde0:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    bde4:	e3403019 	movt	r3, #25
    bde8:	e5d33000 	ldrb	r3, [r3]
    bdec:	e3530000 	cmp	r3, #0
    bdf0:	0a000001 	beq	bdfc <OSMutexQuery+0x38>
    bdf4:	e3a03006 	mov	r3, #6
    bdf8:	ea00003d 	b	bef4 <OSMutexQuery+0x130>
    bdfc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    be00:	e5d33000 	ldrb	r3, [r3]
    be04:	e3530004 	cmp	r3, #4
    be08:	0a000001 	beq	be14 <OSMutexQuery+0x50>
    be0c:	e3a03001 	mov	r3, #1
    be10:	ea000037 	b	bef4 <OSMutexQuery+0x130>
    be14:	eb000d25 	bl	f2b0 <OS_CPU_SR_Save>
    be18:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
    be1c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    be20:	e1d330b8 	ldrh	r3, [r3, #8]
    be24:	e1a03423 	lsr	r3, r3, #8
    be28:	e6ff3073 	uxth	r3, r3
    be2c:	e6ef2073 	uxtb	r2, r3
    be30:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    be34:	e5c3200b 	strb	r2, [r3, #11]
    be38:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    be3c:	e1d330b8 	ldrh	r3, [r3, #8]
    be40:	e6ef2073 	uxtb	r2, r3
    be44:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    be48:	e5c3200a 	strb	r2, [r3, #10]
    be4c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    be50:	e5d3300a 	ldrb	r3, [r3, #10]
    be54:	e35300ff 	cmp	r3, #255	; 0xff
    be58:	1a000003 	bne	be6c <OSMutexQuery+0xa8>
    be5c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    be60:	e3a02001 	mov	r2, #1
    be64:	e5c32009 	strb	r2, [r3, #9]
    be68:	ea000002 	b	be78 <OSMutexQuery+0xb4>
    be6c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    be70:	e3a02000 	mov	r2, #0
    be74:	e5c32009 	strb	r2, [r3, #9]
    be78:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    be7c:	e5d3200a 	ldrb	r2, [r3, #10]
    be80:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    be84:	e5c32008 	strb	r2, [r3, #8]
    be88:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    be8c:	e283300b 	add	r3, r3, #11
    be90:	e50b300c 	str	r3, [fp, #-12]
    be94:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    be98:	e50b3010 	str	r3, [fp, #-16]
    be9c:	e3a03000 	mov	r3, #0
    bea0:	e54b3005 	strb	r3, [fp, #-5]
    bea4:	ea00000c 	b	bedc <OSMutexQuery+0x118>
    bea8:	e51b300c 	ldr	r3, [fp, #-12]
    beac:	e5d32000 	ldrb	r2, [r3]
    beb0:	e51b3010 	ldr	r3, [fp, #-16]
    beb4:	e5c32000 	strb	r2, [r3]
    beb8:	e51b3010 	ldr	r3, [fp, #-16]
    bebc:	e2833001 	add	r3, r3, #1
    bec0:	e50b3010 	str	r3, [fp, #-16]
    bec4:	e51b300c 	ldr	r3, [fp, #-12]
    bec8:	e2833001 	add	r3, r3, #1
    becc:	e50b300c 	str	r3, [fp, #-12]
    bed0:	e55b3005 	ldrb	r3, [fp, #-5]
    bed4:	e2833001 	add	r3, r3, #1
    bed8:	e54b3005 	strb	r3, [fp, #-5]
    bedc:	e55b3005 	ldrb	r3, [fp, #-5]
    bee0:	e3530007 	cmp	r3, #7
    bee4:	9affffef 	bls	bea8 <OSMutexQuery+0xe4>
    bee8:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
    beec:	eb000d02 	bl	f2fc <OS_CPU_SR_Restore>
    bef0:	e3a03000 	mov	r3, #0
    bef4:	e1a00003 	mov	r0, r3
    bef8:	e24bd004 	sub	sp, fp, #4
    befc:	e8bd8800 	pop	{fp, pc}

0000bf00 <OSMutex_RdyAtPrio>:
    bf00:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    bf04:	e28db000 	add	fp, sp, #0
    bf08:	e24dd014 	sub	sp, sp, #20
    bf0c:	e50b0010 	str	r0, [fp, #-16]
    bf10:	e1a03001 	mov	r3, r1
    bf14:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
    bf18:	e51b3010 	ldr	r3, [fp, #-16]
    bf1c:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    bf20:	e54b3005 	strb	r3, [fp, #-5]
    bf24:	e55b2005 	ldrb	r2, [fp, #-5]
    bf28:	e55b1005 	ldrb	r1, [fp, #-5]
    bf2c:	e30a3f94 	movw	r3, #44948	; 0xaf94
    bf30:	e3403019 	movt	r3, #25
    bf34:	e7d31001 	ldrb	r1, [r3, r1]
    bf38:	e51b3010 	ldr	r3, [fp, #-16]
    bf3c:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    bf40:	e1e03003 	mvn	r3, r3
    bf44:	e6ef3073 	uxtb	r3, r3
    bf48:	e0013003 	and	r3, r1, r3
    bf4c:	e6ef1073 	uxtb	r1, r3
    bf50:	e30a3f94 	movw	r3, #44948	; 0xaf94
    bf54:	e3403019 	movt	r3, #25
    bf58:	e7c31002 	strb	r1, [r3, r2]
    bf5c:	e55b2005 	ldrb	r2, [fp, #-5]
    bf60:	e30a3f94 	movw	r3, #44948	; 0xaf94
    bf64:	e3403019 	movt	r3, #25
    bf68:	e7d33002 	ldrb	r3, [r3, r2]
    bf6c:	e3530000 	cmp	r3, #0
    bf70:	1a00000b 	bne	bfa4 <OSMutex_RdyAtPrio+0xa4>
    bf74:	e51b3010 	ldr	r3, [fp, #-16]
    bf78:	e5d33032 	ldrb	r3, [r3, #50]	; 0x32
    bf7c:	e1e03003 	mvn	r3, r3
    bf80:	e6ef2073 	uxtb	r2, r3
    bf84:	e30a3f90 	movw	r3, #44944	; 0xaf90
    bf88:	e3403019 	movt	r3, #25
    bf8c:	e5d33000 	ldrb	r3, [r3]
    bf90:	e0023003 	and	r3, r2, r3
    bf94:	e6ef2073 	uxtb	r2, r3
    bf98:	e30a3f90 	movw	r3, #44944	; 0xaf90
    bf9c:	e3403019 	movt	r3, #25
    bfa0:	e5c32000 	strb	r2, [r3]
    bfa4:	e51b3010 	ldr	r3, [fp, #-16]
    bfa8:	e55b2011 	ldrb	r2, [fp, #-17]	; 0xffffffef
    bfac:	e5c3202e 	strb	r2, [r3, #46]	; 0x2e
    bfb0:	e30a3e95 	movw	r3, #44693	; 0xae95
    bfb4:	e3403019 	movt	r3, #25
    bfb8:	e55b2011 	ldrb	r2, [fp, #-17]	; 0xffffffef
    bfbc:	e5c32000 	strb	r2, [r3]
    bfc0:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
    bfc4:	e1a031a3 	lsr	r3, r3, #3
    bfc8:	e6ef3073 	uxtb	r3, r3
    bfcc:	e2033007 	and	r3, r3, #7
    bfd0:	e6ef2073 	uxtb	r2, r3
    bfd4:	e51b3010 	ldr	r3, [fp, #-16]
    bfd8:	e5c32030 	strb	r2, [r3, #48]	; 0x30
    bfdc:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
    bfe0:	e2033007 	and	r3, r3, #7
    bfe4:	e6ef2073 	uxtb	r2, r3
    bfe8:	e51b3010 	ldr	r3, [fp, #-16]
    bfec:	e5c3202f 	strb	r2, [r3, #47]	; 0x2f
    bff0:	e51b3010 	ldr	r3, [fp, #-16]
    bff4:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    bff8:	e3a02001 	mov	r2, #1
    bffc:	e1a03312 	lsl	r3, r2, r3
    c000:	e6ef2073 	uxtb	r2, r3
    c004:	e51b3010 	ldr	r3, [fp, #-16]
    c008:	e5c32032 	strb	r2, [r3, #50]	; 0x32
    c00c:	e51b3010 	ldr	r3, [fp, #-16]
    c010:	e5d3302f 	ldrb	r3, [r3, #47]	; 0x2f
    c014:	e3a02001 	mov	r2, #1
    c018:	e1a03312 	lsl	r3, r2, r3
    c01c:	e6ef2073 	uxtb	r2, r3
    c020:	e51b3010 	ldr	r3, [fp, #-16]
    c024:	e5c32031 	strb	r2, [r3, #49]	; 0x31
    c028:	e51b3010 	ldr	r3, [fp, #-16]
    c02c:	e5d32032 	ldrb	r2, [r3, #50]	; 0x32
    c030:	e30a3f90 	movw	r3, #44944	; 0xaf90
    c034:	e3403019 	movt	r3, #25
    c038:	e5d33000 	ldrb	r3, [r3]
    c03c:	e1823003 	orr	r3, r2, r3
    c040:	e6ef2073 	uxtb	r2, r3
    c044:	e30a3f90 	movw	r3, #44944	; 0xaf90
    c048:	e3403019 	movt	r3, #25
    c04c:	e5c32000 	strb	r2, [r3]
    c050:	e51b3010 	ldr	r3, [fp, #-16]
    c054:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    c058:	e1a02003 	mov	r2, r3
    c05c:	e51b3010 	ldr	r3, [fp, #-16]
    c060:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    c064:	e1a01003 	mov	r1, r3
    c068:	e30a3f94 	movw	r3, #44948	; 0xaf94
    c06c:	e3403019 	movt	r3, #25
    c070:	e7d31001 	ldrb	r1, [r3, r1]
    c074:	e51b3010 	ldr	r3, [fp, #-16]
    c078:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    c07c:	e1813003 	orr	r3, r1, r3
    c080:	e6ef1073 	uxtb	r1, r3
    c084:	e30a3f94 	movw	r3, #44948	; 0xaf94
    c088:	e3403019 	movt	r3, #25
    c08c:	e7c31002 	strb	r1, [r3, r2]
    c090:	e55b2011 	ldrb	r2, [fp, #-17]	; 0xffffffef
    c094:	e30b392c 	movw	r3, #47404	; 0xb92c
    c098:	e3403019 	movt	r3, #25
    c09c:	e51b1010 	ldr	r1, [fp, #-16]
    c0a0:	e7831102 	str	r1, [r3, r2, lsl #2]
    c0a4:	e28bd000 	add	sp, fp, #0
    c0a8:	e8bd0800 	ldmfd	sp!, {fp}
    c0ac:	e12fff1e 	bx	lr

0000c0b0 <OSQAccept>:
    c0b0:	e92d4800 	push	{fp, lr}
    c0b4:	e28db004 	add	fp, sp, #4
    c0b8:	e24dd018 	sub	sp, sp, #24
    c0bc:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    c0c0:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
    c0c4:	e3a03000 	mov	r3, #0
    c0c8:	e50b300c 	str	r3, [fp, #-12]
    c0cc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    c0d0:	e5d33000 	ldrb	r3, [r3]
    c0d4:	e3530002 	cmp	r3, #2
    c0d8:	0a000004 	beq	c0f0 <OSQAccept+0x40>
    c0dc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    c0e0:	e3a02001 	mov	r2, #1
    c0e4:	e5c32000 	strb	r2, [r3]
    c0e8:	e3a03000 	mov	r3, #0
    c0ec:	ea00002b 	b	c1a0 <OSQAccept+0xf0>
    c0f0:	eb000c6e 	bl	f2b0 <OS_CPU_SR_Save>
    c0f4:	e50b000c 	str	r0, [fp, #-12]
    c0f8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    c0fc:	e5933004 	ldr	r3, [r3, #4]
    c100:	e50b3010 	str	r3, [fp, #-16]
    c104:	e51b3010 	ldr	r3, [fp, #-16]
    c108:	e1d331b6 	ldrh	r3, [r3, #22]
    c10c:	e3530000 	cmp	r3, #0
    c110:	0a00001a 	beq	c180 <OSQAccept+0xd0>
    c114:	e51b3010 	ldr	r3, [fp, #-16]
    c118:	e5933010 	ldr	r3, [r3, #16]
    c11c:	e5932000 	ldr	r2, [r3]
    c120:	e50b2008 	str	r2, [fp, #-8]
    c124:	e2832004 	add	r2, r3, #4
    c128:	e51b3010 	ldr	r3, [fp, #-16]
    c12c:	e5832010 	str	r2, [r3, #16]
    c130:	e51b3010 	ldr	r3, [fp, #-16]
    c134:	e1d331b6 	ldrh	r3, [r3, #22]
    c138:	e2433001 	sub	r3, r3, #1
    c13c:	e6ff2073 	uxth	r2, r3
    c140:	e51b3010 	ldr	r3, [fp, #-16]
    c144:	e1c321b6 	strh	r2, [r3, #22]
    c148:	e51b3010 	ldr	r3, [fp, #-16]
    c14c:	e5932010 	ldr	r2, [r3, #16]
    c150:	e51b3010 	ldr	r3, [fp, #-16]
    c154:	e5933008 	ldr	r3, [r3, #8]
    c158:	e1520003 	cmp	r2, r3
    c15c:	1a000003 	bne	c170 <OSQAccept+0xc0>
    c160:	e51b3010 	ldr	r3, [fp, #-16]
    c164:	e5932004 	ldr	r2, [r3, #4]
    c168:	e51b3010 	ldr	r3, [fp, #-16]
    c16c:	e5832010 	str	r2, [r3, #16]
    c170:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    c174:	e3a02000 	mov	r2, #0
    c178:	e5c32000 	strb	r2, [r3]
    c17c:	ea000004 	b	c194 <OSQAccept+0xe4>
    c180:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    c184:	e3a0201f 	mov	r2, #31
    c188:	e5c32000 	strb	r2, [r3]
    c18c:	e3a03000 	mov	r3, #0
    c190:	e50b3008 	str	r3, [fp, #-8]
    c194:	e51b000c 	ldr	r0, [fp, #-12]
    c198:	eb000c57 	bl	f2fc <OS_CPU_SR_Restore>
    c19c:	e51b3008 	ldr	r3, [fp, #-8]
    c1a0:	e1a00003 	mov	r0, r3
    c1a4:	e24bd004 	sub	sp, fp, #4
    c1a8:	e8bd8800 	pop	{fp, pc}

0000c1ac <OSQCreate>:
    c1ac:	e92d4800 	push	{fp, lr}
    c1b0:	e28db004 	add	fp, sp, #4
    c1b4:	e24dd018 	sub	sp, sp, #24
    c1b8:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    c1bc:	e1a03001 	mov	r3, r1
    c1c0:	e14b31ba 	strh	r3, [fp, #-26]	; 0xffffffe6
    c1c4:	e3a03000 	mov	r3, #0
    c1c8:	e50b300c 	str	r3, [fp, #-12]
    c1cc:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    c1d0:	e3403019 	movt	r3, #25
    c1d4:	e5d33000 	ldrb	r3, [r3]
    c1d8:	e3530000 	cmp	r3, #0
    c1dc:	0a000001 	beq	c1e8 <OSQCreate+0x3c>
    c1e0:	e3a03000 	mov	r3, #0
    c1e4:	ea00005b 	b	c358 <OSQCreate+0x1ac>
    c1e8:	eb000c30 	bl	f2b0 <OS_CPU_SR_Save>
    c1ec:	e50b000c 	str	r0, [fp, #-12]
    c1f0:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    c1f4:	e3403019 	movt	r3, #25
    c1f8:	e5933000 	ldr	r3, [r3]
    c1fc:	e50b3008 	str	r3, [fp, #-8]
    c200:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    c204:	e3403019 	movt	r3, #25
    c208:	e5933000 	ldr	r3, [r3]
    c20c:	e3530000 	cmp	r3, #0
    c210:	0a000006 	beq	c230 <OSQCreate+0x84>
    c214:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    c218:	e3403019 	movt	r3, #25
    c21c:	e5933000 	ldr	r3, [r3]
    c220:	e5932004 	ldr	r2, [r3, #4]
    c224:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    c228:	e3403019 	movt	r3, #25
    c22c:	e5832000 	str	r2, [r3]
    c230:	e51b000c 	ldr	r0, [fp, #-12]
    c234:	eb000c30 	bl	f2fc <OS_CPU_SR_Restore>
    c238:	e51b3008 	ldr	r3, [fp, #-8]
    c23c:	e3530000 	cmp	r3, #0
    c240:	0a000043 	beq	c354 <OSQCreate+0x1a8>
    c244:	eb000c19 	bl	f2b0 <OS_CPU_SR_Save>
    c248:	e50b000c 	str	r0, [fp, #-12]
    c24c:	e30a3f8c 	movw	r3, #44940	; 0xaf8c
    c250:	e3403019 	movt	r3, #25
    c254:	e5933000 	ldr	r3, [r3]
    c258:	e50b3010 	str	r3, [fp, #-16]
    c25c:	e51b3010 	ldr	r3, [fp, #-16]
    c260:	e3530000 	cmp	r3, #0
    c264:	0a00002d 	beq	c320 <OSQCreate+0x174>
    c268:	e30a3f8c 	movw	r3, #44940	; 0xaf8c
    c26c:	e3403019 	movt	r3, #25
    c270:	e5933000 	ldr	r3, [r3]
    c274:	e5932000 	ldr	r2, [r3]
    c278:	e30a3f8c 	movw	r3, #44940	; 0xaf8c
    c27c:	e3403019 	movt	r3, #25
    c280:	e5832000 	str	r2, [r3]
    c284:	e51b000c 	ldr	r0, [fp, #-12]
    c288:	eb000c1b 	bl	f2fc <OS_CPU_SR_Restore>
    c28c:	e51b3010 	ldr	r3, [fp, #-16]
    c290:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
    c294:	e5832004 	str	r2, [r3, #4]
    c298:	e15b31ba 	ldrh	r3, [fp, #-26]	; 0xffffffe6
    c29c:	e1a03103 	lsl	r3, r3, #2
    c2a0:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
    c2a4:	e0822003 	add	r2, r2, r3
    c2a8:	e51b3010 	ldr	r3, [fp, #-16]
    c2ac:	e5832008 	str	r2, [r3, #8]
    c2b0:	e51b3010 	ldr	r3, [fp, #-16]
    c2b4:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
    c2b8:	e583200c 	str	r2, [r3, #12]
    c2bc:	e51b3010 	ldr	r3, [fp, #-16]
    c2c0:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
    c2c4:	e5832010 	str	r2, [r3, #16]
    c2c8:	e51b3010 	ldr	r3, [fp, #-16]
    c2cc:	e15b21ba 	ldrh	r2, [fp, #-26]	; 0xffffffe6
    c2d0:	e1c321b4 	strh	r2, [r3, #20]
    c2d4:	e51b3010 	ldr	r3, [fp, #-16]
    c2d8:	e3a02000 	mov	r2, #0
    c2dc:	e1c321b6 	strh	r2, [r3, #22]
    c2e0:	e51b3008 	ldr	r3, [fp, #-8]
    c2e4:	e3a02002 	mov	r2, #2
    c2e8:	e5c32000 	strb	r2, [r3]
    c2ec:	e51b3008 	ldr	r3, [fp, #-8]
    c2f0:	e3a02000 	mov	r2, #0
    c2f4:	e1c320b8 	strh	r2, [r3, #8]
    c2f8:	e51b3008 	ldr	r3, [fp, #-8]
    c2fc:	e51b2010 	ldr	r2, [fp, #-16]
    c300:	e5832004 	str	r2, [r3, #4]
    c304:	e51b2008 	ldr	r2, [fp, #-8]
    c308:	e307374c 	movw	r3, #30540	; 0x774c
    c30c:	e3403001 	movt	r3, #1
    c310:	e5823014 	str	r3, [r2, #20]
    c314:	e51b0008 	ldr	r0, [fp, #-8]
    c318:	ebfff4bd 	bl	9614 <OS_EventWaitListInit>
    c31c:	ea00000c 	b	c354 <OSQCreate+0x1a8>
    c320:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    c324:	e3403019 	movt	r3, #25
    c328:	e5932000 	ldr	r2, [r3]
    c32c:	e51b3008 	ldr	r3, [fp, #-8]
    c330:	e5832004 	str	r2, [r3, #4]
    c334:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    c338:	e3403019 	movt	r3, #25
    c33c:	e51b2008 	ldr	r2, [fp, #-8]
    c340:	e5832000 	str	r2, [r3]
    c344:	e51b000c 	ldr	r0, [fp, #-12]
    c348:	eb000beb 	bl	f2fc <OS_CPU_SR_Restore>
    c34c:	e3a03000 	mov	r3, #0
    c350:	e50b3008 	str	r3, [fp, #-8]
    c354:	e51b3008 	ldr	r3, [fp, #-8]
    c358:	e1a00003 	mov	r0, r3
    c35c:	e24bd004 	sub	sp, fp, #4
    c360:	e8bd8800 	pop	{fp, pc}

0000c364 <OSQDel>:
    c364:	e92d4800 	push	{fp, lr}
    c368:	e28db004 	add	fp, sp, #4
    c36c:	e24dd020 	sub	sp, sp, #32
    c370:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    c374:	e1a03001 	mov	r3, r1
    c378:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
    c37c:	e54b3019 	strb	r3, [fp, #-25]	; 0xffffffe7
    c380:	e3a03000 	mov	r3, #0
    c384:	e50b3010 	str	r3, [fp, #-16]
    c388:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    c38c:	e5d33000 	ldrb	r3, [r3]
    c390:	e3530002 	cmp	r3, #2
    c394:	0a000004 	beq	c3ac <OSQDel+0x48>
    c398:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    c39c:	e3a02001 	mov	r2, #1
    c3a0:	e5c32000 	strb	r2, [r3]
    c3a4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    c3a8:	ea00008b 	b	c5dc <OSQDel+0x278>
    c3ac:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    c3b0:	e3403019 	movt	r3, #25
    c3b4:	e5d33000 	ldrb	r3, [r3]
    c3b8:	e3530000 	cmp	r3, #0
    c3bc:	0a000004 	beq	c3d4 <OSQDel+0x70>
    c3c0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    c3c4:	e3a0200f 	mov	r2, #15
    c3c8:	e5c32000 	strb	r2, [r3]
    c3cc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    c3d0:	ea000081 	b	c5dc <OSQDel+0x278>
    c3d4:	eb000bb5 	bl	f2b0 <OS_CPU_SR_Save>
    c3d8:	e50b0010 	str	r0, [fp, #-16]
    c3dc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    c3e0:	e5d3300a 	ldrb	r3, [r3, #10]
    c3e4:	e3530000 	cmp	r3, #0
    c3e8:	0a000002 	beq	c3f8 <OSQDel+0x94>
    c3ec:	e3a03001 	mov	r3, #1
    c3f0:	e54b3005 	strb	r3, [fp, #-5]
    c3f4:	ea000001 	b	c400 <OSQDel+0x9c>
    c3f8:	e3a03000 	mov	r3, #0
    c3fc:	e54b3005 	strb	r3, [fp, #-5]
    c400:	e55b3019 	ldrb	r3, [fp, #-25]	; 0xffffffe7
    c404:	e3530000 	cmp	r3, #0
    c408:	0a000002 	beq	c418 <OSQDel+0xb4>
    c40c:	e3530001 	cmp	r3, #1
    c410:	0a000038 	beq	c4f8 <OSQDel+0x194>
    c414:	ea000067 	b	c5b8 <OSQDel+0x254>
    c418:	e55b3005 	ldrb	r3, [fp, #-5]
    c41c:	e3530000 	cmp	r3, #0
    c420:	1a000026 	bne	c4c0 <OSQDel+0x15c>
    c424:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
    c428:	e307374c 	movw	r3, #30540	; 0x774c
    c42c:	e3403001 	movt	r3, #1
    c430:	e5823014 	str	r3, [r2, #20]
    c434:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    c438:	e5933004 	ldr	r3, [r3, #4]
    c43c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    c440:	e30a3f8c 	movw	r3, #44940	; 0xaf8c
    c444:	e3403019 	movt	r3, #25
    c448:	e5932000 	ldr	r2, [r3]
    c44c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    c450:	e5832000 	str	r2, [r3]
    c454:	e30a3f8c 	movw	r3, #44940	; 0xaf8c
    c458:	e3403019 	movt	r3, #25
    c45c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    c460:	e5832000 	str	r2, [r3]
    c464:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    c468:	e3a02000 	mov	r2, #0
    c46c:	e5c32000 	strb	r2, [r3]
    c470:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    c474:	e3403019 	movt	r3, #25
    c478:	e5932000 	ldr	r2, [r3]
    c47c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    c480:	e5832004 	str	r2, [r3, #4]
    c484:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    c488:	e3a02000 	mov	r2, #0
    c48c:	e1c320b8 	strh	r2, [r3, #8]
    c490:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    c494:	e3403019 	movt	r3, #25
    c498:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
    c49c:	e5832000 	str	r2, [r3]
    c4a0:	e51b0010 	ldr	r0, [fp, #-16]
    c4a4:	eb000b94 	bl	f2fc <OS_CPU_SR_Restore>
    c4a8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    c4ac:	e3a02000 	mov	r2, #0
    c4b0:	e5c32000 	strb	r2, [r3]
    c4b4:	e3a03000 	mov	r3, #0
    c4b8:	e50b300c 	str	r3, [fp, #-12]
    c4bc:	ea000045 	b	c5d8 <OSQDel+0x274>
    c4c0:	e51b0010 	ldr	r0, [fp, #-16]
    c4c4:	eb000b8c 	bl	f2fc <OS_CPU_SR_Restore>
    c4c8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    c4cc:	e3a02049 	mov	r2, #73	; 0x49
    c4d0:	e5c32000 	strb	r2, [r3]
    c4d4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    c4d8:	e50b300c 	str	r3, [fp, #-12]
    c4dc:	ea00003d 	b	c5d8 <OSQDel+0x274>
    c4e0:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
    c4e4:	e3a01000 	mov	r1, #0
    c4e8:	e3a02004 	mov	r2, #4
    c4ec:	e3a03002 	mov	r3, #2
    c4f0:	ebfff2ac 	bl	8fa8 <OS_EventTaskRdy>
    c4f4:	ea000000 	b	c4fc <OSQDel+0x198>
    c4f8:	e1a00000 	nop			; (mov r0, r0)
    c4fc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    c500:	e5d3300a 	ldrb	r3, [r3, #10]
    c504:	e3530000 	cmp	r3, #0
    c508:	1afffff4 	bne	c4e0 <OSQDel+0x17c>
    c50c:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
    c510:	e307374c 	movw	r3, #30540	; 0x774c
    c514:	e3403001 	movt	r3, #1
    c518:	e5823014 	str	r3, [r2, #20]
    c51c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    c520:	e5933004 	ldr	r3, [r3, #4]
    c524:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    c528:	e30a3f8c 	movw	r3, #44940	; 0xaf8c
    c52c:	e3403019 	movt	r3, #25
    c530:	e5932000 	ldr	r2, [r3]
    c534:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    c538:	e5832000 	str	r2, [r3]
    c53c:	e30a3f8c 	movw	r3, #44940	; 0xaf8c
    c540:	e3403019 	movt	r3, #25
    c544:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    c548:	e5832000 	str	r2, [r3]
    c54c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    c550:	e3a02000 	mov	r2, #0
    c554:	e5c32000 	strb	r2, [r3]
    c558:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    c55c:	e3403019 	movt	r3, #25
    c560:	e5932000 	ldr	r2, [r3]
    c564:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    c568:	e5832004 	str	r2, [r3, #4]
    c56c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    c570:	e3a02000 	mov	r2, #0
    c574:	e1c320b8 	strh	r2, [r3, #8]
    c578:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    c57c:	e3403019 	movt	r3, #25
    c580:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
    c584:	e5832000 	str	r2, [r3]
    c588:	e51b0010 	ldr	r0, [fp, #-16]
    c58c:	eb000b5a 	bl	f2fc <OS_CPU_SR_Restore>
    c590:	e55b3005 	ldrb	r3, [fp, #-5]
    c594:	e3530001 	cmp	r3, #1
    c598:	1a000000 	bne	c5a0 <OSQDel+0x23c>
    c59c:	ebfff565 	bl	9b38 <OS_Sched>
    c5a0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    c5a4:	e3a02000 	mov	r2, #0
    c5a8:	e5c32000 	strb	r2, [r3]
    c5ac:	e3a03000 	mov	r3, #0
    c5b0:	e50b300c 	str	r3, [fp, #-12]
    c5b4:	ea000007 	b	c5d8 <OSQDel+0x274>
    c5b8:	e51b0010 	ldr	r0, [fp, #-16]
    c5bc:	eb000b4e 	bl	f2fc <OS_CPU_SR_Restore>
    c5c0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    c5c4:	e3a02007 	mov	r2, #7
    c5c8:	e5c32000 	strb	r2, [r3]
    c5cc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    c5d0:	e50b300c 	str	r3, [fp, #-12]
    c5d4:	e1a00000 	nop			; (mov r0, r0)
    c5d8:	e51b300c 	ldr	r3, [fp, #-12]
    c5dc:	e1a00003 	mov	r0, r3
    c5e0:	e24bd004 	sub	sp, fp, #4
    c5e4:	e8bd8800 	pop	{fp, pc}

0000c5e8 <OSQFlush>:
    c5e8:	e92d4800 	push	{fp, lr}
    c5ec:	e28db004 	add	fp, sp, #4
    c5f0:	e24dd010 	sub	sp, sp, #16
    c5f4:	e50b0010 	str	r0, [fp, #-16]
    c5f8:	e3a03000 	mov	r3, #0
    c5fc:	e50b3008 	str	r3, [fp, #-8]
    c600:	eb000b2a 	bl	f2b0 <OS_CPU_SR_Save>
    c604:	e50b0008 	str	r0, [fp, #-8]
    c608:	e51b3010 	ldr	r3, [fp, #-16]
    c60c:	e5933004 	ldr	r3, [r3, #4]
    c610:	e50b300c 	str	r3, [fp, #-12]
    c614:	e51b300c 	ldr	r3, [fp, #-12]
    c618:	e5932004 	ldr	r2, [r3, #4]
    c61c:	e51b300c 	ldr	r3, [fp, #-12]
    c620:	e583200c 	str	r2, [r3, #12]
    c624:	e51b300c 	ldr	r3, [fp, #-12]
    c628:	e5932004 	ldr	r2, [r3, #4]
    c62c:	e51b300c 	ldr	r3, [fp, #-12]
    c630:	e5832010 	str	r2, [r3, #16]
    c634:	e51b300c 	ldr	r3, [fp, #-12]
    c638:	e3a02000 	mov	r2, #0
    c63c:	e1c321b6 	strh	r2, [r3, #22]
    c640:	e51b0008 	ldr	r0, [fp, #-8]
    c644:	eb000b2c 	bl	f2fc <OS_CPU_SR_Restore>
    c648:	e3a03000 	mov	r3, #0
    c64c:	e1a00003 	mov	r0, r3
    c650:	e24bd004 	sub	sp, fp, #4
    c654:	e8bd8800 	pop	{fp, pc}

0000c658 <OSQPend>:
    c658:	e92d4800 	push	{fp, lr}
    c65c:	e28db004 	add	fp, sp, #4
    c660:	e24dd020 	sub	sp, sp, #32
    c664:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    c668:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
    c66c:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
    c670:	e3a03000 	mov	r3, #0
    c674:	e50b300c 	str	r3, [fp, #-12]
    c678:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    c67c:	e5d33000 	ldrb	r3, [r3]
    c680:	e3530002 	cmp	r3, #2
    c684:	0a000004 	beq	c69c <OSQPend+0x44>
    c688:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    c68c:	e3a02001 	mov	r2, #1
    c690:	e5c32000 	strb	r2, [r3]
    c694:	e3a03000 	mov	r3, #0
    c698:	ea000095 	b	c8f4 <OSQPend+0x29c>
    c69c:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    c6a0:	e3403019 	movt	r3, #25
    c6a4:	e5d33000 	ldrb	r3, [r3]
    c6a8:	e3530000 	cmp	r3, #0
    c6ac:	0a000004 	beq	c6c4 <OSQPend+0x6c>
    c6b0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    c6b4:	e3a02002 	mov	r2, #2
    c6b8:	e5c32000 	strb	r2, [r3]
    c6bc:	e3a03000 	mov	r3, #0
    c6c0:	ea00008b 	b	c8f4 <OSQPend+0x29c>
    c6c4:	e30a3e8c 	movw	r3, #44684	; 0xae8c
    c6c8:	e3403019 	movt	r3, #25
    c6cc:	e5d33000 	ldrb	r3, [r3]
    c6d0:	e3530000 	cmp	r3, #0
    c6d4:	0a000004 	beq	c6ec <OSQPend+0x94>
    c6d8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    c6dc:	e3a0200d 	mov	r2, #13
    c6e0:	e5c32000 	strb	r2, [r3]
    c6e4:	e3a03000 	mov	r3, #0
    c6e8:	ea000081 	b	c8f4 <OSQPend+0x29c>
    c6ec:	eb000aef 	bl	f2b0 <OS_CPU_SR_Save>
    c6f0:	e50b000c 	str	r0, [fp, #-12]
    c6f4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    c6f8:	e5933004 	ldr	r3, [r3, #4]
    c6fc:	e50b3010 	str	r3, [fp, #-16]
    c700:	e51b3010 	ldr	r3, [fp, #-16]
    c704:	e1d331b6 	ldrh	r3, [r3, #22]
    c708:	e3530000 	cmp	r3, #0
    c70c:	0a00001d 	beq	c788 <OSQPend+0x130>
    c710:	e51b3010 	ldr	r3, [fp, #-16]
    c714:	e5933010 	ldr	r3, [r3, #16]
    c718:	e5932000 	ldr	r2, [r3]
    c71c:	e50b2008 	str	r2, [fp, #-8]
    c720:	e2832004 	add	r2, r3, #4
    c724:	e51b3010 	ldr	r3, [fp, #-16]
    c728:	e5832010 	str	r2, [r3, #16]
    c72c:	e51b3010 	ldr	r3, [fp, #-16]
    c730:	e1d331b6 	ldrh	r3, [r3, #22]
    c734:	e2433001 	sub	r3, r3, #1
    c738:	e6ff2073 	uxth	r2, r3
    c73c:	e51b3010 	ldr	r3, [fp, #-16]
    c740:	e1c321b6 	strh	r2, [r3, #22]
    c744:	e51b3010 	ldr	r3, [fp, #-16]
    c748:	e5932010 	ldr	r2, [r3, #16]
    c74c:	e51b3010 	ldr	r3, [fp, #-16]
    c750:	e5933008 	ldr	r3, [r3, #8]
    c754:	e1520003 	cmp	r2, r3
    c758:	1a000003 	bne	c76c <OSQPend+0x114>
    c75c:	e51b3010 	ldr	r3, [fp, #-16]
    c760:	e5932004 	ldr	r2, [r3, #4]
    c764:	e51b3010 	ldr	r3, [fp, #-16]
    c768:	e5832010 	str	r2, [r3, #16]
    c76c:	e51b000c 	ldr	r0, [fp, #-12]
    c770:	eb000ae1 	bl	f2fc <OS_CPU_SR_Restore>
    c774:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    c778:	e3a02000 	mov	r2, #0
    c77c:	e5c32000 	strb	r2, [r3]
    c780:	e51b3008 	ldr	r3, [fp, #-8]
    c784:	ea00005a 	b	c8f4 <OSQPend+0x29c>
    c788:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    c78c:	e3403019 	movt	r3, #25
    c790:	e5932000 	ldr	r2, [r3]
    c794:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    c798:	e3403019 	movt	r3, #25
    c79c:	e5933000 	ldr	r3, [r3]
    c7a0:	e5d3302c 	ldrb	r3, [r3, #44]	; 0x2c
    c7a4:	e3833004 	orr	r3, r3, #4
    c7a8:	e6ef3073 	uxtb	r3, r3
    c7ac:	e5c2302c 	strb	r3, [r2, #44]	; 0x2c
    c7b0:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    c7b4:	e3403019 	movt	r3, #25
    c7b8:	e5933000 	ldr	r3, [r3]
    c7bc:	e3a02000 	mov	r2, #0
    c7c0:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    c7c4:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    c7c8:	e3403019 	movt	r3, #25
    c7cc:	e5933000 	ldr	r3, [r3]
    c7d0:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
    c7d4:	e5832028 	str	r2, [r3, #40]	; 0x28
    c7d8:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
    c7dc:	ebfff255 	bl	9138 <OS_EventTaskWait>
    c7e0:	e51b000c 	ldr	r0, [fp, #-12]
    c7e4:	eb000ac4 	bl	f2fc <OS_CPU_SR_Restore>
    c7e8:	ebfff4d2 	bl	9b38 <OS_Sched>
    c7ec:	eb000aaf 	bl	f2b0 <OS_CPU_SR_Save>
    c7f0:	e50b000c 	str	r0, [fp, #-12]
    c7f4:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    c7f8:	e3403019 	movt	r3, #25
    c7fc:	e5933000 	ldr	r3, [r3]
    c800:	e5d3302d 	ldrb	r3, [r3, #45]	; 0x2d
    c804:	e3530000 	cmp	r3, #0
    c808:	0a000002 	beq	c818 <OSQPend+0x1c0>
    c80c:	e3530002 	cmp	r3, #2
    c810:	0a000009 	beq	c83c <OSQPend+0x1e4>
    c814:	ea00000e 	b	c854 <OSQPend+0x1fc>
    c818:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    c81c:	e3403019 	movt	r3, #25
    c820:	e5933000 	ldr	r3, [r3]
    c824:	e5933024 	ldr	r3, [r3, #36]	; 0x24
    c828:	e50b3008 	str	r3, [fp, #-8]
    c82c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    c830:	e3a02000 	mov	r2, #0
    c834:	e5c32000 	strb	r2, [r3]
    c838:	ea000011 	b	c884 <OSQPend+0x22c>
    c83c:	e3a03000 	mov	r3, #0
    c840:	e50b3008 	str	r3, [fp, #-8]
    c844:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    c848:	e3a0200e 	mov	r2, #14
    c84c:	e5c32000 	strb	r2, [r3]
    c850:	ea00000b 	b	c884 <OSQPend+0x22c>
    c854:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    c858:	e3403019 	movt	r3, #25
    c85c:	e5933000 	ldr	r3, [r3]
    c860:	e1a00003 	mov	r0, r3
    c864:	e51b1018 	ldr	r1, [fp, #-24]	; 0xffffffe8
    c868:	ebfff2f8 	bl	9450 <OS_EventTaskRemove>
    c86c:	e3a03000 	mov	r3, #0
    c870:	e50b3008 	str	r3, [fp, #-8]
    c874:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    c878:	e3a0200a 	mov	r2, #10
    c87c:	e5c32000 	strb	r2, [r3]
    c880:	e1a00000 	nop			; (mov r0, r0)
    c884:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    c888:	e3403019 	movt	r3, #25
    c88c:	e5933000 	ldr	r3, [r3]
    c890:	e3a02000 	mov	r2, #0
    c894:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    c898:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    c89c:	e3403019 	movt	r3, #25
    c8a0:	e5933000 	ldr	r3, [r3]
    c8a4:	e3a02000 	mov	r2, #0
    c8a8:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    c8ac:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    c8b0:	e3403019 	movt	r3, #25
    c8b4:	e5933000 	ldr	r3, [r3]
    c8b8:	e3a02000 	mov	r2, #0
    c8bc:	e583201c 	str	r2, [r3, #28]
    c8c0:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    c8c4:	e3403019 	movt	r3, #25
    c8c8:	e5933000 	ldr	r3, [r3]
    c8cc:	e3a02000 	mov	r2, #0
    c8d0:	e5832020 	str	r2, [r3, #32]
    c8d4:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    c8d8:	e3403019 	movt	r3, #25
    c8dc:	e5933000 	ldr	r3, [r3]
    c8e0:	e3a02000 	mov	r2, #0
    c8e4:	e5832024 	str	r2, [r3, #36]	; 0x24
    c8e8:	e51b000c 	ldr	r0, [fp, #-12]
    c8ec:	eb000a82 	bl	f2fc <OS_CPU_SR_Restore>
    c8f0:	e51b3008 	ldr	r3, [fp, #-8]
    c8f4:	e1a00003 	mov	r0, r3
    c8f8:	e24bd004 	sub	sp, fp, #4
    c8fc:	e8bd8800 	pop	{fp, pc}

0000c900 <OSQPendAbort>:
    c900:	e92d4800 	push	{fp, lr}
    c904:	e28db004 	add	fp, sp, #4
    c908:	e24dd018 	sub	sp, sp, #24
    c90c:	e50b0010 	str	r0, [fp, #-16]
    c910:	e1a03001 	mov	r3, r1
    c914:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
    c918:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
    c91c:	e3a03000 	mov	r3, #0
    c920:	e50b300c 	str	r3, [fp, #-12]
    c924:	e51b3010 	ldr	r3, [fp, #-16]
    c928:	e5d33000 	ldrb	r3, [r3]
    c92c:	e3530002 	cmp	r3, #2
    c930:	0a000004 	beq	c948 <OSQPendAbort+0x48>
    c934:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    c938:	e3a02001 	mov	r2, #1
    c93c:	e5c32000 	strb	r2, [r3]
    c940:	e3a03000 	mov	r3, #0
    c944:	ea000031 	b	ca10 <OSQPendAbort+0x110>
    c948:	eb000a58 	bl	f2b0 <OS_CPU_SR_Save>
    c94c:	e50b000c 	str	r0, [fp, #-12]
    c950:	e51b3010 	ldr	r3, [fp, #-16]
    c954:	e5d3300a 	ldrb	r3, [r3, #10]
    c958:	e3530000 	cmp	r3, #0
    c95c:	0a000025 	beq	c9f8 <OSQPendAbort+0xf8>
    c960:	e3a03000 	mov	r3, #0
    c964:	e54b3005 	strb	r3, [fp, #-5]
    c968:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
    c96c:	e3530001 	cmp	r3, #1
    c970:	0a000009 	beq	c99c <OSQPendAbort+0x9c>
    c974:	ea00000e 	b	c9b4 <OSQPendAbort+0xb4>
    c978:	e51b0010 	ldr	r0, [fp, #-16]
    c97c:	e3a01000 	mov	r1, #0
    c980:	e3a02004 	mov	r2, #4
    c984:	e3a03002 	mov	r3, #2
    c988:	ebfff186 	bl	8fa8 <OS_EventTaskRdy>
    c98c:	e55b3005 	ldrb	r3, [fp, #-5]
    c990:	e2833001 	add	r3, r3, #1
    c994:	e54b3005 	strb	r3, [fp, #-5]
    c998:	ea000000 	b	c9a0 <OSQPendAbort+0xa0>
    c99c:	e1a00000 	nop			; (mov r0, r0)
    c9a0:	e51b3010 	ldr	r3, [fp, #-16]
    c9a4:	e5d3300a 	ldrb	r3, [r3, #10]
    c9a8:	e3530000 	cmp	r3, #0
    c9ac:	1afffff1 	bne	c978 <OSQPendAbort+0x78>
    c9b0:	ea000008 	b	c9d8 <OSQPendAbort+0xd8>
    c9b4:	e51b0010 	ldr	r0, [fp, #-16]
    c9b8:	e3a01000 	mov	r1, #0
    c9bc:	e3a02004 	mov	r2, #4
    c9c0:	e3a03002 	mov	r3, #2
    c9c4:	ebfff177 	bl	8fa8 <OS_EventTaskRdy>
    c9c8:	e55b3005 	ldrb	r3, [fp, #-5]
    c9cc:	e2833001 	add	r3, r3, #1
    c9d0:	e54b3005 	strb	r3, [fp, #-5]
    c9d4:	e1a00000 	nop			; (mov r0, r0)
    c9d8:	e51b000c 	ldr	r0, [fp, #-12]
    c9dc:	eb000a46 	bl	f2fc <OS_CPU_SR_Restore>
    c9e0:	ebfff454 	bl	9b38 <OS_Sched>
    c9e4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    c9e8:	e3a0200e 	mov	r2, #14
    c9ec:	e5c32000 	strb	r2, [r3]
    c9f0:	e55b3005 	ldrb	r3, [fp, #-5]
    c9f4:	ea000005 	b	ca10 <OSQPendAbort+0x110>
    c9f8:	e51b000c 	ldr	r0, [fp, #-12]
    c9fc:	eb000a3e 	bl	f2fc <OS_CPU_SR_Restore>
    ca00:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    ca04:	e3a02000 	mov	r2, #0
    ca08:	e5c32000 	strb	r2, [r3]
    ca0c:	e3a03000 	mov	r3, #0
    ca10:	e1a00003 	mov	r0, r3
    ca14:	e24bd004 	sub	sp, fp, #4
    ca18:	e8bd8800 	pop	{fp, pc}

0000ca1c <OSQPost>:
    ca1c:	e92d4800 	push	{fp, lr}
    ca20:	e28db004 	add	fp, sp, #4
    ca24:	e24dd010 	sub	sp, sp, #16
    ca28:	e50b0010 	str	r0, [fp, #-16]
    ca2c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    ca30:	e3a03000 	mov	r3, #0
    ca34:	e50b3008 	str	r3, [fp, #-8]
    ca38:	e51b3010 	ldr	r3, [fp, #-16]
    ca3c:	e5d33000 	ldrb	r3, [r3]
    ca40:	e3530002 	cmp	r3, #2
    ca44:	0a000001 	beq	ca50 <OSQPost+0x34>
    ca48:	e3a03001 	mov	r3, #1
    ca4c:	ea000036 	b	cb2c <OSQPost+0x110>
    ca50:	eb000a16 	bl	f2b0 <OS_CPU_SR_Save>
    ca54:	e50b0008 	str	r0, [fp, #-8]
    ca58:	e51b3010 	ldr	r3, [fp, #-16]
    ca5c:	e5d3300a 	ldrb	r3, [r3, #10]
    ca60:	e3530000 	cmp	r3, #0
    ca64:	0a000009 	beq	ca90 <OSQPost+0x74>
    ca68:	e51b0010 	ldr	r0, [fp, #-16]
    ca6c:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
    ca70:	e3a02004 	mov	r2, #4
    ca74:	e3a03000 	mov	r3, #0
    ca78:	ebfff14a 	bl	8fa8 <OS_EventTaskRdy>
    ca7c:	e51b0008 	ldr	r0, [fp, #-8]
    ca80:	eb000a1d 	bl	f2fc <OS_CPU_SR_Restore>
    ca84:	ebfff42b 	bl	9b38 <OS_Sched>
    ca88:	e3a03000 	mov	r3, #0
    ca8c:	ea000026 	b	cb2c <OSQPost+0x110>
    ca90:	e51b3010 	ldr	r3, [fp, #-16]
    ca94:	e5933004 	ldr	r3, [r3, #4]
    ca98:	e50b300c 	str	r3, [fp, #-12]
    ca9c:	e51b300c 	ldr	r3, [fp, #-12]
    caa0:	e1d321b6 	ldrh	r2, [r3, #22]
    caa4:	e51b300c 	ldr	r3, [fp, #-12]
    caa8:	e1d331b4 	ldrh	r3, [r3, #20]
    caac:	e1520003 	cmp	r2, r3
    cab0:	3a000003 	bcc	cac4 <OSQPost+0xa8>
    cab4:	e51b0008 	ldr	r0, [fp, #-8]
    cab8:	eb000a0f 	bl	f2fc <OS_CPU_SR_Restore>
    cabc:	e3a0301e 	mov	r3, #30
    cac0:	ea000019 	b	cb2c <OSQPost+0x110>
    cac4:	e51b300c 	ldr	r3, [fp, #-12]
    cac8:	e593300c 	ldr	r3, [r3, #12]
    cacc:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    cad0:	e5832000 	str	r2, [r3]
    cad4:	e2832004 	add	r2, r3, #4
    cad8:	e51b300c 	ldr	r3, [fp, #-12]
    cadc:	e583200c 	str	r2, [r3, #12]
    cae0:	e51b300c 	ldr	r3, [fp, #-12]
    cae4:	e1d331b6 	ldrh	r3, [r3, #22]
    cae8:	e2833001 	add	r3, r3, #1
    caec:	e6ff2073 	uxth	r2, r3
    caf0:	e51b300c 	ldr	r3, [fp, #-12]
    caf4:	e1c321b6 	strh	r2, [r3, #22]
    caf8:	e51b300c 	ldr	r3, [fp, #-12]
    cafc:	e593200c 	ldr	r2, [r3, #12]
    cb00:	e51b300c 	ldr	r3, [fp, #-12]
    cb04:	e5933008 	ldr	r3, [r3, #8]
    cb08:	e1520003 	cmp	r2, r3
    cb0c:	1a000003 	bne	cb20 <OSQPost+0x104>
    cb10:	e51b300c 	ldr	r3, [fp, #-12]
    cb14:	e5932004 	ldr	r2, [r3, #4]
    cb18:	e51b300c 	ldr	r3, [fp, #-12]
    cb1c:	e583200c 	str	r2, [r3, #12]
    cb20:	e51b0008 	ldr	r0, [fp, #-8]
    cb24:	eb0009f4 	bl	f2fc <OS_CPU_SR_Restore>
    cb28:	e3a03000 	mov	r3, #0
    cb2c:	e1a00003 	mov	r0, r3
    cb30:	e24bd004 	sub	sp, fp, #4
    cb34:	e8bd8800 	pop	{fp, pc}

0000cb38 <OSQPostFront>:
    cb38:	e92d4800 	push	{fp, lr}
    cb3c:	e28db004 	add	fp, sp, #4
    cb40:	e24dd010 	sub	sp, sp, #16
    cb44:	e50b0010 	str	r0, [fp, #-16]
    cb48:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    cb4c:	e3a03000 	mov	r3, #0
    cb50:	e50b3008 	str	r3, [fp, #-8]
    cb54:	e51b3010 	ldr	r3, [fp, #-16]
    cb58:	e5d33000 	ldrb	r3, [r3]
    cb5c:	e3530002 	cmp	r3, #2
    cb60:	0a000001 	beq	cb6c <OSQPostFront+0x34>
    cb64:	e3a03001 	mov	r3, #1
    cb68:	ea000038 	b	cc50 <OSQPostFront+0x118>
    cb6c:	eb0009cf 	bl	f2b0 <OS_CPU_SR_Save>
    cb70:	e50b0008 	str	r0, [fp, #-8]
    cb74:	e51b3010 	ldr	r3, [fp, #-16]
    cb78:	e5d3300a 	ldrb	r3, [r3, #10]
    cb7c:	e3530000 	cmp	r3, #0
    cb80:	0a000009 	beq	cbac <OSQPostFront+0x74>
    cb84:	e51b0010 	ldr	r0, [fp, #-16]
    cb88:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
    cb8c:	e3a02004 	mov	r2, #4
    cb90:	e3a03000 	mov	r3, #0
    cb94:	ebfff103 	bl	8fa8 <OS_EventTaskRdy>
    cb98:	e51b0008 	ldr	r0, [fp, #-8]
    cb9c:	eb0009d6 	bl	f2fc <OS_CPU_SR_Restore>
    cba0:	ebfff3e4 	bl	9b38 <OS_Sched>
    cba4:	e3a03000 	mov	r3, #0
    cba8:	ea000028 	b	cc50 <OSQPostFront+0x118>
    cbac:	e51b3010 	ldr	r3, [fp, #-16]
    cbb0:	e5933004 	ldr	r3, [r3, #4]
    cbb4:	e50b300c 	str	r3, [fp, #-12]
    cbb8:	e51b300c 	ldr	r3, [fp, #-12]
    cbbc:	e1d321b6 	ldrh	r2, [r3, #22]
    cbc0:	e51b300c 	ldr	r3, [fp, #-12]
    cbc4:	e1d331b4 	ldrh	r3, [r3, #20]
    cbc8:	e1520003 	cmp	r2, r3
    cbcc:	3a000003 	bcc	cbe0 <OSQPostFront+0xa8>
    cbd0:	e51b0008 	ldr	r0, [fp, #-8]
    cbd4:	eb0009c8 	bl	f2fc <OS_CPU_SR_Restore>
    cbd8:	e3a0301e 	mov	r3, #30
    cbdc:	ea00001b 	b	cc50 <OSQPostFront+0x118>
    cbe0:	e51b300c 	ldr	r3, [fp, #-12]
    cbe4:	e5932010 	ldr	r2, [r3, #16]
    cbe8:	e51b300c 	ldr	r3, [fp, #-12]
    cbec:	e5933004 	ldr	r3, [r3, #4]
    cbf0:	e1520003 	cmp	r2, r3
    cbf4:	1a000003 	bne	cc08 <OSQPostFront+0xd0>
    cbf8:	e51b300c 	ldr	r3, [fp, #-12]
    cbfc:	e5932008 	ldr	r2, [r3, #8]
    cc00:	e51b300c 	ldr	r3, [fp, #-12]
    cc04:	e5832010 	str	r2, [r3, #16]
    cc08:	e51b300c 	ldr	r3, [fp, #-12]
    cc0c:	e5933010 	ldr	r3, [r3, #16]
    cc10:	e2432004 	sub	r2, r3, #4
    cc14:	e51b300c 	ldr	r3, [fp, #-12]
    cc18:	e5832010 	str	r2, [r3, #16]
    cc1c:	e51b300c 	ldr	r3, [fp, #-12]
    cc20:	e5933010 	ldr	r3, [r3, #16]
    cc24:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    cc28:	e5832000 	str	r2, [r3]
    cc2c:	e51b300c 	ldr	r3, [fp, #-12]
    cc30:	e1d331b6 	ldrh	r3, [r3, #22]
    cc34:	e2833001 	add	r3, r3, #1
    cc38:	e6ff2073 	uxth	r2, r3
    cc3c:	e51b300c 	ldr	r3, [fp, #-12]
    cc40:	e1c321b6 	strh	r2, [r3, #22]
    cc44:	e51b0008 	ldr	r0, [fp, #-8]
    cc48:	eb0009ab 	bl	f2fc <OS_CPU_SR_Restore>
    cc4c:	e3a03000 	mov	r3, #0
    cc50:	e1a00003 	mov	r0, r3
    cc54:	e24bd004 	sub	sp, fp, #4
    cc58:	e8bd8800 	pop	{fp, pc}

0000cc5c <OSQPostOpt>:
    cc5c:	e92d4800 	push	{fp, lr}
    cc60:	e28db004 	add	fp, sp, #4
    cc64:	e24dd018 	sub	sp, sp, #24
    cc68:	e50b0010 	str	r0, [fp, #-16]
    cc6c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    cc70:	e1a03002 	mov	r3, r2
    cc74:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
    cc78:	e3a03000 	mov	r3, #0
    cc7c:	e50b3008 	str	r3, [fp, #-8]
    cc80:	e51b3010 	ldr	r3, [fp, #-16]
    cc84:	e5d33000 	ldrb	r3, [r3]
    cc88:	e3530002 	cmp	r3, #2
    cc8c:	0a000001 	beq	cc98 <OSQPostOpt+0x3c>
    cc90:	e3a03001 	mov	r3, #1
    cc94:	ea000061 	b	ce20 <OSQPostOpt+0x1c4>
    cc98:	eb000984 	bl	f2b0 <OS_CPU_SR_Save>
    cc9c:	e50b0008 	str	r0, [fp, #-8]
    cca0:	e51b3010 	ldr	r3, [fp, #-16]
    cca4:	e5d3300a 	ldrb	r3, [r3, #10]
    cca8:	e3530000 	cmp	r3, #0
    ccac:	0a00001c 	beq	cd24 <OSQPostOpt+0xc8>
    ccb0:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
    ccb4:	e2033001 	and	r3, r3, #1
    ccb8:	e3530000 	cmp	r3, #0
    ccbc:	0a00000a 	beq	ccec <OSQPostOpt+0x90>
    ccc0:	ea000004 	b	ccd8 <OSQPostOpt+0x7c>
    ccc4:	e51b0010 	ldr	r0, [fp, #-16]
    ccc8:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
    cccc:	e3a02004 	mov	r2, #4
    ccd0:	e3a03000 	mov	r3, #0
    ccd4:	ebfff0b3 	bl	8fa8 <OS_EventTaskRdy>
    ccd8:	e51b3010 	ldr	r3, [fp, #-16]
    ccdc:	e5d3300a 	ldrb	r3, [r3, #10]
    cce0:	e3530000 	cmp	r3, #0
    cce4:	1afffff6 	bne	ccc4 <OSQPostOpt+0x68>
    cce8:	ea000004 	b	cd00 <OSQPostOpt+0xa4>
    ccec:	e51b0010 	ldr	r0, [fp, #-16]
    ccf0:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
    ccf4:	e3a02004 	mov	r2, #4
    ccf8:	e3a03000 	mov	r3, #0
    ccfc:	ebfff0a9 	bl	8fa8 <OS_EventTaskRdy>
    cd00:	e51b0008 	ldr	r0, [fp, #-8]
    cd04:	eb00097c 	bl	f2fc <OS_CPU_SR_Restore>
    cd08:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
    cd0c:	e2033004 	and	r3, r3, #4
    cd10:	e3530000 	cmp	r3, #0
    cd14:	1a000000 	bne	cd1c <OSQPostOpt+0xc0>
    cd18:	ebfff386 	bl	9b38 <OS_Sched>
    cd1c:	e3a03000 	mov	r3, #0
    cd20:	ea00003e 	b	ce20 <OSQPostOpt+0x1c4>
    cd24:	e51b3010 	ldr	r3, [fp, #-16]
    cd28:	e5933004 	ldr	r3, [r3, #4]
    cd2c:	e50b300c 	str	r3, [fp, #-12]
    cd30:	e51b300c 	ldr	r3, [fp, #-12]
    cd34:	e1d321b6 	ldrh	r2, [r3, #22]
    cd38:	e51b300c 	ldr	r3, [fp, #-12]
    cd3c:	e1d331b4 	ldrh	r3, [r3, #20]
    cd40:	e1520003 	cmp	r2, r3
    cd44:	3a000003 	bcc	cd58 <OSQPostOpt+0xfc>
    cd48:	e51b0008 	ldr	r0, [fp, #-8]
    cd4c:	eb00096a 	bl	f2fc <OS_CPU_SR_Restore>
    cd50:	e3a0301e 	mov	r3, #30
    cd54:	ea000031 	b	ce20 <OSQPostOpt+0x1c4>
    cd58:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
    cd5c:	e2033002 	and	r3, r3, #2
    cd60:	e3530000 	cmp	r3, #0
    cd64:	0a000013 	beq	cdb8 <OSQPostOpt+0x15c>
    cd68:	e51b300c 	ldr	r3, [fp, #-12]
    cd6c:	e5932010 	ldr	r2, [r3, #16]
    cd70:	e51b300c 	ldr	r3, [fp, #-12]
    cd74:	e5933004 	ldr	r3, [r3, #4]
    cd78:	e1520003 	cmp	r2, r3
    cd7c:	1a000003 	bne	cd90 <OSQPostOpt+0x134>
    cd80:	e51b300c 	ldr	r3, [fp, #-12]
    cd84:	e5932008 	ldr	r2, [r3, #8]
    cd88:	e51b300c 	ldr	r3, [fp, #-12]
    cd8c:	e5832010 	str	r2, [r3, #16]
    cd90:	e51b300c 	ldr	r3, [fp, #-12]
    cd94:	e5933010 	ldr	r3, [r3, #16]
    cd98:	e2432004 	sub	r2, r3, #4
    cd9c:	e51b300c 	ldr	r3, [fp, #-12]
    cda0:	e5832010 	str	r2, [r3, #16]
    cda4:	e51b300c 	ldr	r3, [fp, #-12]
    cda8:	e5933010 	ldr	r3, [r3, #16]
    cdac:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    cdb0:	e5832000 	str	r2, [r3]
    cdb4:	ea000010 	b	cdfc <OSQPostOpt+0x1a0>
    cdb8:	e51b300c 	ldr	r3, [fp, #-12]
    cdbc:	e593300c 	ldr	r3, [r3, #12]
    cdc0:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    cdc4:	e5832000 	str	r2, [r3]
    cdc8:	e2832004 	add	r2, r3, #4
    cdcc:	e51b300c 	ldr	r3, [fp, #-12]
    cdd0:	e583200c 	str	r2, [r3, #12]
    cdd4:	e51b300c 	ldr	r3, [fp, #-12]
    cdd8:	e593200c 	ldr	r2, [r3, #12]
    cddc:	e51b300c 	ldr	r3, [fp, #-12]
    cde0:	e5933008 	ldr	r3, [r3, #8]
    cde4:	e1520003 	cmp	r2, r3
    cde8:	1a000003 	bne	cdfc <OSQPostOpt+0x1a0>
    cdec:	e51b300c 	ldr	r3, [fp, #-12]
    cdf0:	e5932004 	ldr	r2, [r3, #4]
    cdf4:	e51b300c 	ldr	r3, [fp, #-12]
    cdf8:	e583200c 	str	r2, [r3, #12]
    cdfc:	e51b300c 	ldr	r3, [fp, #-12]
    ce00:	e1d331b6 	ldrh	r3, [r3, #22]
    ce04:	e2833001 	add	r3, r3, #1
    ce08:	e6ff2073 	uxth	r2, r3
    ce0c:	e51b300c 	ldr	r3, [fp, #-12]
    ce10:	e1c321b6 	strh	r2, [r3, #22]
    ce14:	e51b0008 	ldr	r0, [fp, #-8]
    ce18:	eb000937 	bl	f2fc <OS_CPU_SR_Restore>
    ce1c:	e3a03000 	mov	r3, #0
    ce20:	e1a00003 	mov	r0, r3
    ce24:	e24bd004 	sub	sp, fp, #4
    ce28:	e8bd8800 	pop	{fp, pc}

0000ce2c <OSQQuery>:
    ce2c:	e92d4800 	push	{fp, lr}
    ce30:	e28db004 	add	fp, sp, #4
    ce34:	e24dd020 	sub	sp, sp, #32
    ce38:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
    ce3c:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
    ce40:	e3a03000 	mov	r3, #0
    ce44:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    ce48:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    ce4c:	e5d33000 	ldrb	r3, [r3]
    ce50:	e3530002 	cmp	r3, #2
    ce54:	0a000001 	beq	ce60 <OSQQuery+0x34>
    ce58:	e3a03001 	mov	r3, #1
    ce5c:	ea000039 	b	cf48 <OSQQuery+0x11c>
    ce60:	eb000912 	bl	f2b0 <OS_CPU_SR_Save>
    ce64:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
    ce68:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    ce6c:	e5d3200a 	ldrb	r2, [r3, #10]
    ce70:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    ce74:	e5c32010 	strb	r2, [r3, #16]
    ce78:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    ce7c:	e283300b 	add	r3, r3, #11
    ce80:	e50b300c 	str	r3, [fp, #-12]
    ce84:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    ce88:	e2833008 	add	r3, r3, #8
    ce8c:	e50b3010 	str	r3, [fp, #-16]
    ce90:	e3a03000 	mov	r3, #0
    ce94:	e54b3005 	strb	r3, [fp, #-5]
    ce98:	ea00000c 	b	ced0 <OSQQuery+0xa4>
    ce9c:	e51b300c 	ldr	r3, [fp, #-12]
    cea0:	e5d32000 	ldrb	r2, [r3]
    cea4:	e51b3010 	ldr	r3, [fp, #-16]
    cea8:	e5c32000 	strb	r2, [r3]
    ceac:	e51b3010 	ldr	r3, [fp, #-16]
    ceb0:	e2833001 	add	r3, r3, #1
    ceb4:	e50b3010 	str	r3, [fp, #-16]
    ceb8:	e51b300c 	ldr	r3, [fp, #-12]
    cebc:	e2833001 	add	r3, r3, #1
    cec0:	e50b300c 	str	r3, [fp, #-12]
    cec4:	e55b3005 	ldrb	r3, [fp, #-5]
    cec8:	e2833001 	add	r3, r3, #1
    cecc:	e54b3005 	strb	r3, [fp, #-5]
    ced0:	e55b3005 	ldrb	r3, [fp, #-5]
    ced4:	e3530007 	cmp	r3, #7
    ced8:	9affffef 	bls	ce9c <OSQQuery+0x70>
    cedc:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    cee0:	e5933004 	ldr	r3, [r3, #4]
    cee4:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    cee8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    ceec:	e1d331b6 	ldrh	r3, [r3, #22]
    cef0:	e3530000 	cmp	r3, #0
    cef4:	0a000005 	beq	cf10 <OSQQuery+0xe4>
    cef8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    cefc:	e5933010 	ldr	r3, [r3, #16]
    cf00:	e5932000 	ldr	r2, [r3]
    cf04:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    cf08:	e5832000 	str	r2, [r3]
    cf0c:	ea000002 	b	cf1c <OSQQuery+0xf0>
    cf10:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    cf14:	e3a02000 	mov	r2, #0
    cf18:	e5832000 	str	r2, [r3]
    cf1c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    cf20:	e1d321b6 	ldrh	r2, [r3, #22]
    cf24:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    cf28:	e1c320b4 	strh	r2, [r3, #4]
    cf2c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    cf30:	e1d321b4 	ldrh	r2, [r3, #20]
    cf34:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    cf38:	e1c320b6 	strh	r2, [r3, #6]
    cf3c:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
    cf40:	eb0008ed 	bl	f2fc <OS_CPU_SR_Restore>
    cf44:	e3a03000 	mov	r3, #0
    cf48:	e1a00003 	mov	r0, r3
    cf4c:	e24bd004 	sub	sp, fp, #4
    cf50:	e8bd8800 	pop	{fp, pc}

0000cf54 <OS_QInit>:
    cf54:	e92d4800 	push	{fp, lr}
    cf58:	e28db004 	add	fp, sp, #4
    cf5c:	e24dd010 	sub	sp, sp, #16
    cf60:	e30a0f28 	movw	r0, #44840	; 0xaf28
    cf64:	e3400019 	movt	r0, #25
    cf68:	e3a01060 	mov	r1, #96	; 0x60
    cf6c:	ebfff2c0 	bl	9a74 <OS_MemClr>
    cf70:	e3a03000 	mov	r3, #0
    cf74:	e14b30b6 	strh	r3, [fp, #-6]
    cf78:	ea00001a 	b	cfe8 <OS_QInit+0x94>
    cf7c:	e15b30b6 	ldrh	r3, [fp, #-6]
    cf80:	e2833001 	add	r3, r3, #1
    cf84:	e14b30b8 	strh	r3, [fp, #-8]
    cf88:	e15b20b6 	ldrh	r2, [fp, #-6]
    cf8c:	e1a03002 	mov	r3, r2
    cf90:	e1a03083 	lsl	r3, r3, #1
    cf94:	e0833002 	add	r3, r3, r2
    cf98:	e1a03183 	lsl	r3, r3, #3
    cf9c:	e30a2f28 	movw	r2, #44840	; 0xaf28
    cfa0:	e3402019 	movt	r2, #25
    cfa4:	e0833002 	add	r3, r3, r2
    cfa8:	e50b300c 	str	r3, [fp, #-12]
    cfac:	e15b20b8 	ldrh	r2, [fp, #-8]
    cfb0:	e1a03002 	mov	r3, r2
    cfb4:	e1a03083 	lsl	r3, r3, #1
    cfb8:	e0833002 	add	r3, r3, r2
    cfbc:	e1a03183 	lsl	r3, r3, #3
    cfc0:	e30a2f28 	movw	r2, #44840	; 0xaf28
    cfc4:	e3402019 	movt	r2, #25
    cfc8:	e0833002 	add	r3, r3, r2
    cfcc:	e50b3010 	str	r3, [fp, #-16]
    cfd0:	e51b300c 	ldr	r3, [fp, #-12]
    cfd4:	e51b2010 	ldr	r2, [fp, #-16]
    cfd8:	e5832000 	str	r2, [r3]
    cfdc:	e15b30b6 	ldrh	r3, [fp, #-6]
    cfe0:	e2833001 	add	r3, r3, #1
    cfe4:	e14b30b6 	strh	r3, [fp, #-6]
    cfe8:	e15b30b6 	ldrh	r3, [fp, #-6]
    cfec:	e3530002 	cmp	r3, #2
    cff0:	9affffe1 	bls	cf7c <OS_QInit+0x28>
    cff4:	e15b20b6 	ldrh	r2, [fp, #-6]
    cff8:	e1a03002 	mov	r3, r2
    cffc:	e1a03083 	lsl	r3, r3, #1
    d000:	e0833002 	add	r3, r3, r2
    d004:	e1a03183 	lsl	r3, r3, #3
    d008:	e30a2f28 	movw	r2, #44840	; 0xaf28
    d00c:	e3402019 	movt	r2, #25
    d010:	e0833002 	add	r3, r3, r2
    d014:	e50b300c 	str	r3, [fp, #-12]
    d018:	e51b300c 	ldr	r3, [fp, #-12]
    d01c:	e3a02000 	mov	r2, #0
    d020:	e5832000 	str	r2, [r3]
    d024:	e30a3f8c 	movw	r3, #44940	; 0xaf8c
    d028:	e3403019 	movt	r3, #25
    d02c:	e30a2f28 	movw	r2, #44840	; 0xaf28
    d030:	e3402019 	movt	r2, #25
    d034:	e5832000 	str	r2, [r3]
    d038:	e24bd004 	sub	sp, fp, #4
    d03c:	e8bd8800 	pop	{fp, pc}

0000d040 <OSSemAccept>:
    d040:	e92d4800 	push	{fp, lr}
    d044:	e28db004 	add	fp, sp, #4
    d048:	e24dd010 	sub	sp, sp, #16
    d04c:	e50b0010 	str	r0, [fp, #-16]
    d050:	e3a03000 	mov	r3, #0
    d054:	e50b3008 	str	r3, [fp, #-8]
    d058:	e51b3010 	ldr	r3, [fp, #-16]
    d05c:	e5d33000 	ldrb	r3, [r3]
    d060:	e3530003 	cmp	r3, #3
    d064:	0a000001 	beq	d070 <OSSemAccept+0x30>
    d068:	e3a03000 	mov	r3, #0
    d06c:	ea000010 	b	d0b4 <OSSemAccept+0x74>
    d070:	eb00088e 	bl	f2b0 <OS_CPU_SR_Save>
    d074:	e50b0008 	str	r0, [fp, #-8]
    d078:	e51b3010 	ldr	r3, [fp, #-16]
    d07c:	e1d330b8 	ldrh	r3, [r3, #8]
    d080:	e14b30ba 	strh	r3, [fp, #-10]
    d084:	e15b30ba 	ldrh	r3, [fp, #-10]
    d088:	e3530000 	cmp	r3, #0
    d08c:	0a000005 	beq	d0a8 <OSSemAccept+0x68>
    d090:	e51b3010 	ldr	r3, [fp, #-16]
    d094:	e1d330b8 	ldrh	r3, [r3, #8]
    d098:	e2433001 	sub	r3, r3, #1
    d09c:	e6ff2073 	uxth	r2, r3
    d0a0:	e51b3010 	ldr	r3, [fp, #-16]
    d0a4:	e1c320b8 	strh	r2, [r3, #8]
    d0a8:	e51b0008 	ldr	r0, [fp, #-8]
    d0ac:	eb000892 	bl	f2fc <OS_CPU_SR_Restore>
    d0b0:	e15b30ba 	ldrh	r3, [fp, #-10]
    d0b4:	e1a00003 	mov	r0, r3
    d0b8:	e24bd004 	sub	sp, fp, #4
    d0bc:	e8bd8800 	pop	{fp, pc}

0000d0c0 <OSSemCreate>:
    d0c0:	e92d4800 	push	{fp, lr}
    d0c4:	e28db004 	add	fp, sp, #4
    d0c8:	e24dd010 	sub	sp, sp, #16
    d0cc:	e1a03000 	mov	r3, r0
    d0d0:	e14b30be 	strh	r3, [fp, #-14]
    d0d4:	e3a03000 	mov	r3, #0
    d0d8:	e50b3008 	str	r3, [fp, #-8]
    d0dc:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    d0e0:	e3403019 	movt	r3, #25
    d0e4:	e5d33000 	ldrb	r3, [r3]
    d0e8:	e3530000 	cmp	r3, #0
    d0ec:	0a000001 	beq	d0f8 <OSSemCreate+0x38>
    d0f0:	e3a03000 	mov	r3, #0
    d0f4:	ea000026 	b	d194 <OSSemCreate+0xd4>
    d0f8:	eb00086c 	bl	f2b0 <OS_CPU_SR_Save>
    d0fc:	e50b0008 	str	r0, [fp, #-8]
    d100:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    d104:	e3403019 	movt	r3, #25
    d108:	e5933000 	ldr	r3, [r3]
    d10c:	e50b300c 	str	r3, [fp, #-12]
    d110:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    d114:	e3403019 	movt	r3, #25
    d118:	e5933000 	ldr	r3, [r3]
    d11c:	e3530000 	cmp	r3, #0
    d120:	0a000006 	beq	d140 <OSSemCreate+0x80>
    d124:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    d128:	e3403019 	movt	r3, #25
    d12c:	e5933000 	ldr	r3, [r3]
    d130:	e5932004 	ldr	r2, [r3, #4]
    d134:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    d138:	e3403019 	movt	r3, #25
    d13c:	e5832000 	str	r2, [r3]
    d140:	e51b0008 	ldr	r0, [fp, #-8]
    d144:	eb00086c 	bl	f2fc <OS_CPU_SR_Restore>
    d148:	e51b300c 	ldr	r3, [fp, #-12]
    d14c:	e3530000 	cmp	r3, #0
    d150:	0a00000e 	beq	d190 <OSSemCreate+0xd0>
    d154:	e51b300c 	ldr	r3, [fp, #-12]
    d158:	e3a02003 	mov	r2, #3
    d15c:	e5c32000 	strb	r2, [r3]
    d160:	e51b300c 	ldr	r3, [fp, #-12]
    d164:	e15b20be 	ldrh	r2, [fp, #-14]
    d168:	e1c320b8 	strh	r2, [r3, #8]
    d16c:	e51b300c 	ldr	r3, [fp, #-12]
    d170:	e3a02000 	mov	r2, #0
    d174:	e5832004 	str	r2, [r3, #4]
    d178:	e51b200c 	ldr	r2, [fp, #-12]
    d17c:	e3073750 	movw	r3, #30544	; 0x7750
    d180:	e3403001 	movt	r3, #1
    d184:	e5823014 	str	r3, [r2, #20]
    d188:	e51b000c 	ldr	r0, [fp, #-12]
    d18c:	ebfff120 	bl	9614 <OS_EventWaitListInit>
    d190:	e51b300c 	ldr	r3, [fp, #-12]
    d194:	e1a00003 	mov	r0, r3
    d198:	e24bd004 	sub	sp, fp, #4
    d19c:	e8bd8800 	pop	{fp, pc}

0000d1a0 <OSSemDel>:
    d1a0:	e92d4800 	push	{fp, lr}
    d1a4:	e28db004 	add	fp, sp, #4
    d1a8:	e24dd020 	sub	sp, sp, #32
    d1ac:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    d1b0:	e1a03001 	mov	r3, r1
    d1b4:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
    d1b8:	e54b3019 	strb	r3, [fp, #-25]	; 0xffffffe7
    d1bc:	e3a03000 	mov	r3, #0
    d1c0:	e50b3010 	str	r3, [fp, #-16]
    d1c4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d1c8:	e5d33000 	ldrb	r3, [r3]
    d1cc:	e3530003 	cmp	r3, #3
    d1d0:	0a000004 	beq	d1e8 <OSSemDel+0x48>
    d1d4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    d1d8:	e3a02001 	mov	r2, #1
    d1dc:	e5c32000 	strb	r2, [r3]
    d1e0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d1e4:	ea000073 	b	d3b8 <OSSemDel+0x218>
    d1e8:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    d1ec:	e3403019 	movt	r3, #25
    d1f0:	e5d33000 	ldrb	r3, [r3]
    d1f4:	e3530000 	cmp	r3, #0
    d1f8:	0a000004 	beq	d210 <OSSemDel+0x70>
    d1fc:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    d200:	e3a0200f 	mov	r2, #15
    d204:	e5c32000 	strb	r2, [r3]
    d208:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d20c:	ea000069 	b	d3b8 <OSSemDel+0x218>
    d210:	eb000826 	bl	f2b0 <OS_CPU_SR_Save>
    d214:	e50b0010 	str	r0, [fp, #-16]
    d218:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d21c:	e5d3300a 	ldrb	r3, [r3, #10]
    d220:	e3530000 	cmp	r3, #0
    d224:	0a000002 	beq	d234 <OSSemDel+0x94>
    d228:	e3a03001 	mov	r3, #1
    d22c:	e54b3005 	strb	r3, [fp, #-5]
    d230:	ea000001 	b	d23c <OSSemDel+0x9c>
    d234:	e3a03000 	mov	r3, #0
    d238:	e54b3005 	strb	r3, [fp, #-5]
    d23c:	e55b3019 	ldrb	r3, [fp, #-25]	; 0xffffffe7
    d240:	e3530000 	cmp	r3, #0
    d244:	0a000002 	beq	d254 <OSSemDel+0xb4>
    d248:	e3530001 	cmp	r3, #1
    d24c:	0a00002c 	beq	d304 <OSSemDel+0x164>
    d250:	ea00004f 	b	d394 <OSSemDel+0x1f4>
    d254:	e55b3005 	ldrb	r3, [fp, #-5]
    d258:	e3530000 	cmp	r3, #0
    d25c:	1a00001a 	bne	d2cc <OSSemDel+0x12c>
    d260:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
    d264:	e3073750 	movw	r3, #30544	; 0x7750
    d268:	e3403001 	movt	r3, #1
    d26c:	e5823014 	str	r3, [r2, #20]
    d270:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d274:	e3a02000 	mov	r2, #0
    d278:	e5c32000 	strb	r2, [r3]
    d27c:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    d280:	e3403019 	movt	r3, #25
    d284:	e5932000 	ldr	r2, [r3]
    d288:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d28c:	e5832004 	str	r2, [r3, #4]
    d290:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d294:	e3a02000 	mov	r2, #0
    d298:	e1c320b8 	strh	r2, [r3, #8]
    d29c:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    d2a0:	e3403019 	movt	r3, #25
    d2a4:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
    d2a8:	e5832000 	str	r2, [r3]
    d2ac:	e51b0010 	ldr	r0, [fp, #-16]
    d2b0:	eb000811 	bl	f2fc <OS_CPU_SR_Restore>
    d2b4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    d2b8:	e3a02000 	mov	r2, #0
    d2bc:	e5c32000 	strb	r2, [r3]
    d2c0:	e3a03000 	mov	r3, #0
    d2c4:	e50b300c 	str	r3, [fp, #-12]
    d2c8:	ea000039 	b	d3b4 <OSSemDel+0x214>
    d2cc:	e51b0010 	ldr	r0, [fp, #-16]
    d2d0:	eb000809 	bl	f2fc <OS_CPU_SR_Restore>
    d2d4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    d2d8:	e3a02049 	mov	r2, #73	; 0x49
    d2dc:	e5c32000 	strb	r2, [r3]
    d2e0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d2e4:	e50b300c 	str	r3, [fp, #-12]
    d2e8:	ea000031 	b	d3b4 <OSSemDel+0x214>
    d2ec:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
    d2f0:	e3a01000 	mov	r1, #0
    d2f4:	e3a02001 	mov	r2, #1
    d2f8:	e3a03002 	mov	r3, #2
    d2fc:	ebffef29 	bl	8fa8 <OS_EventTaskRdy>
    d300:	ea000000 	b	d308 <OSSemDel+0x168>
    d304:	e1a00000 	nop			; (mov r0, r0)
    d308:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d30c:	e5d3300a 	ldrb	r3, [r3, #10]
    d310:	e3530000 	cmp	r3, #0
    d314:	1afffff4 	bne	d2ec <OSSemDel+0x14c>
    d318:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
    d31c:	e3073750 	movw	r3, #30544	; 0x7750
    d320:	e3403001 	movt	r3, #1
    d324:	e5823014 	str	r3, [r2, #20]
    d328:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d32c:	e3a02000 	mov	r2, #0
    d330:	e5c32000 	strb	r2, [r3]
    d334:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    d338:	e3403019 	movt	r3, #25
    d33c:	e5932000 	ldr	r2, [r3]
    d340:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d344:	e5832004 	str	r2, [r3, #4]
    d348:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d34c:	e3a02000 	mov	r2, #0
    d350:	e1c320b8 	strh	r2, [r3, #8]
    d354:	e30a3f9c 	movw	r3, #44956	; 0xaf9c
    d358:	e3403019 	movt	r3, #25
    d35c:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
    d360:	e5832000 	str	r2, [r3]
    d364:	e51b0010 	ldr	r0, [fp, #-16]
    d368:	eb0007e3 	bl	f2fc <OS_CPU_SR_Restore>
    d36c:	e55b3005 	ldrb	r3, [fp, #-5]
    d370:	e3530001 	cmp	r3, #1
    d374:	1a000000 	bne	d37c <OSSemDel+0x1dc>
    d378:	ebfff1ee 	bl	9b38 <OS_Sched>
    d37c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    d380:	e3a02000 	mov	r2, #0
    d384:	e5c32000 	strb	r2, [r3]
    d388:	e3a03000 	mov	r3, #0
    d38c:	e50b300c 	str	r3, [fp, #-12]
    d390:	ea000007 	b	d3b4 <OSSemDel+0x214>
    d394:	e51b0010 	ldr	r0, [fp, #-16]
    d398:	eb0007d7 	bl	f2fc <OS_CPU_SR_Restore>
    d39c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    d3a0:	e3a02007 	mov	r2, #7
    d3a4:	e5c32000 	strb	r2, [r3]
    d3a8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d3ac:	e50b300c 	str	r3, [fp, #-12]
    d3b0:	e1a00000 	nop			; (mov r0, r0)
    d3b4:	e51b300c 	ldr	r3, [fp, #-12]
    d3b8:	e1a00003 	mov	r0, r3
    d3bc:	e24bd004 	sub	sp, fp, #4
    d3c0:	e8bd8800 	pop	{fp, pc}

0000d3c4 <OSSemPend>:
    d3c4:	e92d4800 	push	{fp, lr}
    d3c8:	e28db004 	add	fp, sp, #4
    d3cc:	e24dd018 	sub	sp, sp, #24
    d3d0:	e50b0010 	str	r0, [fp, #-16]
    d3d4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    d3d8:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
    d3dc:	e3a03000 	mov	r3, #0
    d3e0:	e50b3008 	str	r3, [fp, #-8]
    d3e4:	e51b3010 	ldr	r3, [fp, #-16]
    d3e8:	e5d33000 	ldrb	r3, [r3]
    d3ec:	e3530003 	cmp	r3, #3
    d3f0:	0a000003 	beq	d404 <OSSemPend+0x40>
    d3f4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d3f8:	e3a02001 	mov	r2, #1
    d3fc:	e5c32000 	strb	r2, [r3]
    d400:	ea00006f 	b	d5c4 <OSSemPend+0x200>
    d404:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    d408:	e3403019 	movt	r3, #25
    d40c:	e5d33000 	ldrb	r3, [r3]
    d410:	e3530000 	cmp	r3, #0
    d414:	0a000003 	beq	d428 <OSSemPend+0x64>
    d418:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d41c:	e3a02002 	mov	r2, #2
    d420:	e5c32000 	strb	r2, [r3]
    d424:	ea000066 	b	d5c4 <OSSemPend+0x200>
    d428:	e30a3e8c 	movw	r3, #44684	; 0xae8c
    d42c:	e3403019 	movt	r3, #25
    d430:	e5d33000 	ldrb	r3, [r3]
    d434:	e3530000 	cmp	r3, #0
    d438:	0a000003 	beq	d44c <OSSemPend+0x88>
    d43c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d440:	e3a0200d 	mov	r2, #13
    d444:	e5c32000 	strb	r2, [r3]
    d448:	ea00005d 	b	d5c4 <OSSemPend+0x200>
    d44c:	eb000797 	bl	f2b0 <OS_CPU_SR_Save>
    d450:	e50b0008 	str	r0, [fp, #-8]
    d454:	e51b3010 	ldr	r3, [fp, #-16]
    d458:	e1d330b8 	ldrh	r3, [r3, #8]
    d45c:	e3530000 	cmp	r3, #0
    d460:	0a00000b 	beq	d494 <OSSemPend+0xd0>
    d464:	e51b3010 	ldr	r3, [fp, #-16]
    d468:	e1d330b8 	ldrh	r3, [r3, #8]
    d46c:	e2433001 	sub	r3, r3, #1
    d470:	e6ff2073 	uxth	r2, r3
    d474:	e51b3010 	ldr	r3, [fp, #-16]
    d478:	e1c320b8 	strh	r2, [r3, #8]
    d47c:	e51b0008 	ldr	r0, [fp, #-8]
    d480:	eb00079d 	bl	f2fc <OS_CPU_SR_Restore>
    d484:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d488:	e3a02000 	mov	r2, #0
    d48c:	e5c32000 	strb	r2, [r3]
    d490:	ea00004b 	b	d5c4 <OSSemPend+0x200>
    d494:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    d498:	e3403019 	movt	r3, #25
    d49c:	e5932000 	ldr	r2, [r3]
    d4a0:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    d4a4:	e3403019 	movt	r3, #25
    d4a8:	e5933000 	ldr	r3, [r3]
    d4ac:	e5d3302c 	ldrb	r3, [r3, #44]	; 0x2c
    d4b0:	e3833001 	orr	r3, r3, #1
    d4b4:	e6ef3073 	uxtb	r3, r3
    d4b8:	e5c2302c 	strb	r3, [r2, #44]	; 0x2c
    d4bc:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    d4c0:	e3403019 	movt	r3, #25
    d4c4:	e5933000 	ldr	r3, [r3]
    d4c8:	e3a02000 	mov	r2, #0
    d4cc:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    d4d0:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    d4d4:	e3403019 	movt	r3, #25
    d4d8:	e5933000 	ldr	r3, [r3]
    d4dc:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    d4e0:	e5832028 	str	r2, [r3, #40]	; 0x28
    d4e4:	e51b0010 	ldr	r0, [fp, #-16]
    d4e8:	ebffef12 	bl	9138 <OS_EventTaskWait>
    d4ec:	e51b0008 	ldr	r0, [fp, #-8]
    d4f0:	eb000781 	bl	f2fc <OS_CPU_SR_Restore>
    d4f4:	ebfff18f 	bl	9b38 <OS_Sched>
    d4f8:	eb00076c 	bl	f2b0 <OS_CPU_SR_Save>
    d4fc:	e50b0008 	str	r0, [fp, #-8]
    d500:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    d504:	e3403019 	movt	r3, #25
    d508:	e5933000 	ldr	r3, [r3]
    d50c:	e5d3302d 	ldrb	r3, [r3, #45]	; 0x2d
    d510:	e3530000 	cmp	r3, #0
    d514:	0a000002 	beq	d524 <OSSemPend+0x160>
    d518:	e3530002 	cmp	r3, #2
    d51c:	0a000004 	beq	d534 <OSSemPend+0x170>
    d520:	ea000007 	b	d544 <OSSemPend+0x180>
    d524:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d528:	e3a02000 	mov	r2, #0
    d52c:	e5c32000 	strb	r2, [r3]
    d530:	ea00000d 	b	d56c <OSSemPend+0x1a8>
    d534:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d538:	e3a0200e 	mov	r2, #14
    d53c:	e5c32000 	strb	r2, [r3]
    d540:	ea000009 	b	d56c <OSSemPend+0x1a8>
    d544:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    d548:	e3403019 	movt	r3, #25
    d54c:	e5933000 	ldr	r3, [r3]
    d550:	e1a00003 	mov	r0, r3
    d554:	e51b1010 	ldr	r1, [fp, #-16]
    d558:	ebffefbc 	bl	9450 <OS_EventTaskRemove>
    d55c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d560:	e3a0200a 	mov	r2, #10
    d564:	e5c32000 	strb	r2, [r3]
    d568:	e1a00000 	nop			; (mov r0, r0)
    d56c:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    d570:	e3403019 	movt	r3, #25
    d574:	e5933000 	ldr	r3, [r3]
    d578:	e3a02000 	mov	r2, #0
    d57c:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    d580:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    d584:	e3403019 	movt	r3, #25
    d588:	e5933000 	ldr	r3, [r3]
    d58c:	e3a02000 	mov	r2, #0
    d590:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    d594:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    d598:	e3403019 	movt	r3, #25
    d59c:	e5933000 	ldr	r3, [r3]
    d5a0:	e3a02000 	mov	r2, #0
    d5a4:	e583201c 	str	r2, [r3, #28]
    d5a8:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    d5ac:	e3403019 	movt	r3, #25
    d5b0:	e5933000 	ldr	r3, [r3]
    d5b4:	e3a02000 	mov	r2, #0
    d5b8:	e5832020 	str	r2, [r3, #32]
    d5bc:	e51b0008 	ldr	r0, [fp, #-8]
    d5c0:	eb00074d 	bl	f2fc <OS_CPU_SR_Restore>
    d5c4:	e24bd004 	sub	sp, fp, #4
    d5c8:	e8bd8800 	pop	{fp, pc}

0000d5cc <OSSemPendAbort>:
    d5cc:	e92d4800 	push	{fp, lr}
    d5d0:	e28db004 	add	fp, sp, #4
    d5d4:	e24dd018 	sub	sp, sp, #24
    d5d8:	e50b0010 	str	r0, [fp, #-16]
    d5dc:	e1a03001 	mov	r3, r1
    d5e0:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
    d5e4:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
    d5e8:	e3a03000 	mov	r3, #0
    d5ec:	e50b300c 	str	r3, [fp, #-12]
    d5f0:	e51b3010 	ldr	r3, [fp, #-16]
    d5f4:	e5d33000 	ldrb	r3, [r3]
    d5f8:	e3530003 	cmp	r3, #3
    d5fc:	0a000004 	beq	d614 <OSSemPendAbort+0x48>
    d600:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d604:	e3a02001 	mov	r2, #1
    d608:	e5c32000 	strb	r2, [r3]
    d60c:	e3a03000 	mov	r3, #0
    d610:	ea000031 	b	d6dc <OSSemPendAbort+0x110>
    d614:	eb000725 	bl	f2b0 <OS_CPU_SR_Save>
    d618:	e50b000c 	str	r0, [fp, #-12]
    d61c:	e51b3010 	ldr	r3, [fp, #-16]
    d620:	e5d3300a 	ldrb	r3, [r3, #10]
    d624:	e3530000 	cmp	r3, #0
    d628:	0a000025 	beq	d6c4 <OSSemPendAbort+0xf8>
    d62c:	e3a03000 	mov	r3, #0
    d630:	e54b3005 	strb	r3, [fp, #-5]
    d634:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
    d638:	e3530001 	cmp	r3, #1
    d63c:	0a000009 	beq	d668 <OSSemPendAbort+0x9c>
    d640:	ea00000e 	b	d680 <OSSemPendAbort+0xb4>
    d644:	e51b0010 	ldr	r0, [fp, #-16]
    d648:	e3a01000 	mov	r1, #0
    d64c:	e3a02001 	mov	r2, #1
    d650:	e3a03002 	mov	r3, #2
    d654:	ebffee53 	bl	8fa8 <OS_EventTaskRdy>
    d658:	e55b3005 	ldrb	r3, [fp, #-5]
    d65c:	e2833001 	add	r3, r3, #1
    d660:	e54b3005 	strb	r3, [fp, #-5]
    d664:	ea000000 	b	d66c <OSSemPendAbort+0xa0>
    d668:	e1a00000 	nop			; (mov r0, r0)
    d66c:	e51b3010 	ldr	r3, [fp, #-16]
    d670:	e5d3300a 	ldrb	r3, [r3, #10]
    d674:	e3530000 	cmp	r3, #0
    d678:	1afffff1 	bne	d644 <OSSemPendAbort+0x78>
    d67c:	ea000008 	b	d6a4 <OSSemPendAbort+0xd8>
    d680:	e51b0010 	ldr	r0, [fp, #-16]
    d684:	e3a01000 	mov	r1, #0
    d688:	e3a02001 	mov	r2, #1
    d68c:	e3a03002 	mov	r3, #2
    d690:	ebffee44 	bl	8fa8 <OS_EventTaskRdy>
    d694:	e55b3005 	ldrb	r3, [fp, #-5]
    d698:	e2833001 	add	r3, r3, #1
    d69c:	e54b3005 	strb	r3, [fp, #-5]
    d6a0:	e1a00000 	nop			; (mov r0, r0)
    d6a4:	e51b000c 	ldr	r0, [fp, #-12]
    d6a8:	eb000713 	bl	f2fc <OS_CPU_SR_Restore>
    d6ac:	ebfff121 	bl	9b38 <OS_Sched>
    d6b0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d6b4:	e3a0200e 	mov	r2, #14
    d6b8:	e5c32000 	strb	r2, [r3]
    d6bc:	e55b3005 	ldrb	r3, [fp, #-5]
    d6c0:	ea000005 	b	d6dc <OSSemPendAbort+0x110>
    d6c4:	e51b000c 	ldr	r0, [fp, #-12]
    d6c8:	eb00070b 	bl	f2fc <OS_CPU_SR_Restore>
    d6cc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d6d0:	e3a02000 	mov	r2, #0
    d6d4:	e5c32000 	strb	r2, [r3]
    d6d8:	e3a03000 	mov	r3, #0
    d6dc:	e1a00003 	mov	r0, r3
    d6e0:	e24bd004 	sub	sp, fp, #4
    d6e4:	e8bd8800 	pop	{fp, pc}

0000d6e8 <OSSemPost>:
    d6e8:	e92d4800 	push	{fp, lr}
    d6ec:	e28db004 	add	fp, sp, #4
    d6f0:	e24dd010 	sub	sp, sp, #16
    d6f4:	e50b0010 	str	r0, [fp, #-16]
    d6f8:	e3a03000 	mov	r3, #0
    d6fc:	e50b3008 	str	r3, [fp, #-8]
    d700:	e51b3010 	ldr	r3, [fp, #-16]
    d704:	e5d33000 	ldrb	r3, [r3]
    d708:	e3530003 	cmp	r3, #3
    d70c:	0a000001 	beq	d718 <OSSemPost+0x30>
    d710:	e3a03001 	mov	r3, #1
    d714:	ea000021 	b	d7a0 <OSSemPost+0xb8>
    d718:	eb0006e4 	bl	f2b0 <OS_CPU_SR_Save>
    d71c:	e50b0008 	str	r0, [fp, #-8]
    d720:	e51b3010 	ldr	r3, [fp, #-16]
    d724:	e5d3300a 	ldrb	r3, [r3, #10]
    d728:	e3530000 	cmp	r3, #0
    d72c:	0a000009 	beq	d758 <OSSemPost+0x70>
    d730:	e51b0010 	ldr	r0, [fp, #-16]
    d734:	e3a01000 	mov	r1, #0
    d738:	e3a02001 	mov	r2, #1
    d73c:	e3a03000 	mov	r3, #0
    d740:	ebffee18 	bl	8fa8 <OS_EventTaskRdy>
    d744:	e51b0008 	ldr	r0, [fp, #-8]
    d748:	eb0006eb 	bl	f2fc <OS_CPU_SR_Restore>
    d74c:	ebfff0f9 	bl	9b38 <OS_Sched>
    d750:	e3a03000 	mov	r3, #0
    d754:	ea000011 	b	d7a0 <OSSemPost+0xb8>
    d758:	e51b3010 	ldr	r3, [fp, #-16]
    d75c:	e1d320b8 	ldrh	r2, [r3, #8]
    d760:	e30f3fff 	movw	r3, #65535	; 0xffff
    d764:	e1520003 	cmp	r2, r3
    d768:	0a000009 	beq	d794 <OSSemPost+0xac>
    d76c:	e51b3010 	ldr	r3, [fp, #-16]
    d770:	e1d330b8 	ldrh	r3, [r3, #8]
    d774:	e2833001 	add	r3, r3, #1
    d778:	e6ff2073 	uxth	r2, r3
    d77c:	e51b3010 	ldr	r3, [fp, #-16]
    d780:	e1c320b8 	strh	r2, [r3, #8]
    d784:	e51b0008 	ldr	r0, [fp, #-8]
    d788:	eb0006db 	bl	f2fc <OS_CPU_SR_Restore>
    d78c:	e3a03000 	mov	r3, #0
    d790:	ea000002 	b	d7a0 <OSSemPost+0xb8>
    d794:	e51b0008 	ldr	r0, [fp, #-8]
    d798:	eb0006d7 	bl	f2fc <OS_CPU_SR_Restore>
    d79c:	e3a03033 	mov	r3, #51	; 0x33
    d7a0:	e1a00003 	mov	r0, r3
    d7a4:	e24bd004 	sub	sp, fp, #4
    d7a8:	e8bd8800 	pop	{fp, pc}

0000d7ac <OSSemQuery>:
    d7ac:	e92d4800 	push	{fp, lr}
    d7b0:	e28db004 	add	fp, sp, #4
    d7b4:	e24dd018 	sub	sp, sp, #24
    d7b8:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    d7bc:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
    d7c0:	e3a03000 	mov	r3, #0
    d7c4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    d7c8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d7cc:	e5d33000 	ldrb	r3, [r3]
    d7d0:	e3530003 	cmp	r3, #3
    d7d4:	0a000001 	beq	d7e0 <OSSemQuery+0x34>
    d7d8:	e3a03001 	mov	r3, #1
    d7dc:	ea000025 	b	d878 <OSSemQuery+0xcc>
    d7e0:	eb0006b2 	bl	f2b0 <OS_CPU_SR_Save>
    d7e4:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
    d7e8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d7ec:	e5d3200a 	ldrb	r2, [r3, #10]
    d7f0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    d7f4:	e5c3200a 	strb	r2, [r3, #10]
    d7f8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d7fc:	e283300b 	add	r3, r3, #11
    d800:	e50b300c 	str	r3, [fp, #-12]
    d804:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    d808:	e2833002 	add	r3, r3, #2
    d80c:	e50b3010 	str	r3, [fp, #-16]
    d810:	e3a03000 	mov	r3, #0
    d814:	e54b3005 	strb	r3, [fp, #-5]
    d818:	ea00000c 	b	d850 <OSSemQuery+0xa4>
    d81c:	e51b300c 	ldr	r3, [fp, #-12]
    d820:	e5d32000 	ldrb	r2, [r3]
    d824:	e51b3010 	ldr	r3, [fp, #-16]
    d828:	e5c32000 	strb	r2, [r3]
    d82c:	e51b3010 	ldr	r3, [fp, #-16]
    d830:	e2833001 	add	r3, r3, #1
    d834:	e50b3010 	str	r3, [fp, #-16]
    d838:	e51b300c 	ldr	r3, [fp, #-12]
    d83c:	e2833001 	add	r3, r3, #1
    d840:	e50b300c 	str	r3, [fp, #-12]
    d844:	e55b3005 	ldrb	r3, [fp, #-5]
    d848:	e2833001 	add	r3, r3, #1
    d84c:	e54b3005 	strb	r3, [fp, #-5]
    d850:	e55b3005 	ldrb	r3, [fp, #-5]
    d854:	e3530007 	cmp	r3, #7
    d858:	9affffef 	bls	d81c <OSSemQuery+0x70>
    d85c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d860:	e1d320b8 	ldrh	r2, [r3, #8]
    d864:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    d868:	e1c320b0 	strh	r2, [r3]
    d86c:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
    d870:	eb0006a1 	bl	f2fc <OS_CPU_SR_Restore>
    d874:	e3a03000 	mov	r3, #0
    d878:	e1a00003 	mov	r0, r3
    d87c:	e24bd004 	sub	sp, fp, #4
    d880:	e8bd8800 	pop	{fp, pc}

0000d884 <OSSemSet>:
    d884:	e92d4800 	push	{fp, lr}
    d888:	e28db004 	add	fp, sp, #4
    d88c:	e24dd018 	sub	sp, sp, #24
    d890:	e50b0010 	str	r0, [fp, #-16]
    d894:	e1a03001 	mov	r3, r1
    d898:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
    d89c:	e14b31b2 	strh	r3, [fp, #-18]	; 0xffffffee
    d8a0:	e3a03000 	mov	r3, #0
    d8a4:	e50b3008 	str	r3, [fp, #-8]
    d8a8:	e51b3010 	ldr	r3, [fp, #-16]
    d8ac:	e5d33000 	ldrb	r3, [r3]
    d8b0:	e3530003 	cmp	r3, #3
    d8b4:	0a000003 	beq	d8c8 <OSSemSet+0x44>
    d8b8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d8bc:	e3a02001 	mov	r2, #1
    d8c0:	e5c32000 	strb	r2, [r3]
    d8c4:	ea000019 	b	d930 <OSSemSet+0xac>
    d8c8:	eb000678 	bl	f2b0 <OS_CPU_SR_Save>
    d8cc:	e50b0008 	str	r0, [fp, #-8]
    d8d0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d8d4:	e3a02000 	mov	r2, #0
    d8d8:	e5c32000 	strb	r2, [r3]
    d8dc:	e51b3010 	ldr	r3, [fp, #-16]
    d8e0:	e1d330b8 	ldrh	r3, [r3, #8]
    d8e4:	e3530000 	cmp	r3, #0
    d8e8:	0a000003 	beq	d8fc <OSSemSet+0x78>
    d8ec:	e51b3010 	ldr	r3, [fp, #-16]
    d8f0:	e15b21b2 	ldrh	r2, [fp, #-18]	; 0xffffffee
    d8f4:	e1c320b8 	strh	r2, [r3, #8]
    d8f8:	ea00000a 	b	d928 <OSSemSet+0xa4>
    d8fc:	e51b3010 	ldr	r3, [fp, #-16]
    d900:	e5d3300a 	ldrb	r3, [r3, #10]
    d904:	e3530000 	cmp	r3, #0
    d908:	1a000003 	bne	d91c <OSSemSet+0x98>
    d90c:	e51b3010 	ldr	r3, [fp, #-16]
    d910:	e15b21b2 	ldrh	r2, [fp, #-18]	; 0xffffffee
    d914:	e1c320b8 	strh	r2, [r3, #8]
    d918:	ea000002 	b	d928 <OSSemSet+0xa4>
    d91c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    d920:	e3a02049 	mov	r2, #73	; 0x49
    d924:	e5c32000 	strb	r2, [r3]
    d928:	e51b0008 	ldr	r0, [fp, #-8]
    d92c:	eb000672 	bl	f2fc <OS_CPU_SR_Restore>
    d930:	e24bd004 	sub	sp, fp, #4
    d934:	e8bd8800 	pop	{fp, pc}

0000d938 <OSTaskChangePrio>:
    d938:	e92d4800 	push	{fp, lr}
    d93c:	e28db004 	add	fp, sp, #4
    d940:	e24dd020 	sub	sp, sp, #32
    d944:	e1a02000 	mov	r2, r0
    d948:	e1a03001 	mov	r3, r1
    d94c:	e54b201d 	strb	r2, [fp, #-29]	; 0xffffffe3
    d950:	e54b301e 	strb	r3, [fp, #-30]	; 0xffffffe2
    d954:	e3a03000 	mov	r3, #0
    d958:	e50b3010 	str	r3, [fp, #-16]
    d95c:	eb000653 	bl	f2b0 <OS_CPU_SR_Save>
    d960:	e50b0010 	str	r0, [fp, #-16]
    d964:	e55b201e 	ldrb	r2, [fp, #-30]	; 0xffffffe2
    d968:	e30b392c 	movw	r3, #47404	; 0xb92c
    d96c:	e3403019 	movt	r3, #25
    d970:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    d974:	e3530000 	cmp	r3, #0
    d978:	0a000003 	beq	d98c <OSTaskChangePrio+0x54>
    d97c:	e51b0010 	ldr	r0, [fp, #-16]
    d980:	eb00065d 	bl	f2fc <OS_CPU_SR_Restore>
    d984:	e3a03028 	mov	r3, #40	; 0x28
    d988:	ea000118 	b	ddf0 <OSTaskChangePrio+0x4b8>
    d98c:	e55b301d 	ldrb	r3, [fp, #-29]	; 0xffffffe3
    d990:	e35300ff 	cmp	r3, #255	; 0xff
    d994:	1a000004 	bne	d9ac <OSTaskChangePrio+0x74>
    d998:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    d99c:	e3403019 	movt	r3, #25
    d9a0:	e5933000 	ldr	r3, [r3]
    d9a4:	e5d3302e 	ldrb	r3, [r3, #46]	; 0x2e
    d9a8:	e54b301d 	strb	r3, [fp, #-29]	; 0xffffffe3
    d9ac:	e55b201d 	ldrb	r2, [fp, #-29]	; 0xffffffe3
    d9b0:	e30b392c 	movw	r3, #47404	; 0xb92c
    d9b4:	e3403019 	movt	r3, #25
    d9b8:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    d9bc:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    d9c0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    d9c4:	e3530000 	cmp	r3, #0
    d9c8:	1a000003 	bne	d9dc <OSTaskChangePrio+0xa4>
    d9cc:	e51b0010 	ldr	r0, [fp, #-16]
    d9d0:	eb000649 	bl	f2fc <OS_CPU_SR_Restore>
    d9d4:	e3a03029 	mov	r3, #41	; 0x29
    d9d8:	ea000104 	b	ddf0 <OSTaskChangePrio+0x4b8>
    d9dc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    d9e0:	e3530001 	cmp	r3, #1
    d9e4:	1a000003 	bne	d9f8 <OSTaskChangePrio+0xc0>
    d9e8:	e51b0010 	ldr	r0, [fp, #-16]
    d9ec:	eb000642 	bl	f2fc <OS_CPU_SR_Restore>
    d9f0:	e3a03043 	mov	r3, #67	; 0x43
    d9f4:	ea0000fd 	b	ddf0 <OSTaskChangePrio+0x4b8>
    d9f8:	e55b301e 	ldrb	r3, [fp, #-30]	; 0xffffffe2
    d9fc:	e1a031a3 	lsr	r3, r3, #3
    da00:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
    da04:	e55b301e 	ldrb	r3, [fp, #-30]	; 0xffffffe2
    da08:	e2033007 	and	r3, r3, #7
    da0c:	e54b3016 	strb	r3, [fp, #-22]	; 0xffffffea
    da10:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
    da14:	e3a02001 	mov	r2, #1
    da18:	e1a03312 	lsl	r3, r2, r3
    da1c:	e54b3017 	strb	r3, [fp, #-23]	; 0xffffffe9
    da20:	e55b3016 	ldrb	r3, [fp, #-22]	; 0xffffffea
    da24:	e3a02001 	mov	r2, #1
    da28:	e1a03312 	lsl	r3, r2, r3
    da2c:	e54b3018 	strb	r3, [fp, #-24]	; 0xffffffe8
    da30:	e55b201d 	ldrb	r2, [fp, #-29]	; 0xffffffe3
    da34:	e30b392c 	movw	r3, #47404	; 0xb92c
    da38:	e3403019 	movt	r3, #25
    da3c:	e3a01000 	mov	r1, #0
    da40:	e7831102 	str	r1, [r3, r2, lsl #2]
    da44:	e55b201e 	ldrb	r2, [fp, #-30]	; 0xffffffe2
    da48:	e30b392c 	movw	r3, #47404	; 0xb92c
    da4c:	e3403019 	movt	r3, #25
    da50:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
    da54:	e7831102 	str	r1, [r3, r2, lsl #2]
    da58:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    da5c:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    da60:	e54b3019 	strb	r3, [fp, #-25]	; 0xffffffe7
    da64:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    da68:	e5d33032 	ldrb	r3, [r3, #50]	; 0x32
    da6c:	e54b301a 	strb	r3, [fp, #-26]	; 0xffffffe6
    da70:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    da74:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    da78:	e54b301b 	strb	r3, [fp, #-27]	; 0xffffffe5
    da7c:	e55b2019 	ldrb	r2, [fp, #-25]	; 0xffffffe7
    da80:	e30a3f94 	movw	r3, #44948	; 0xaf94
    da84:	e3403019 	movt	r3, #25
    da88:	e7d32002 	ldrb	r2, [r3, r2]
    da8c:	e55b301b 	ldrb	r3, [fp, #-27]	; 0xffffffe5
    da90:	e0023003 	and	r3, r2, r3
    da94:	e6ef3073 	uxtb	r3, r3
    da98:	e3530000 	cmp	r3, #0
    da9c:	0a000031 	beq	db68 <OSTaskChangePrio+0x230>
    daa0:	e55b2019 	ldrb	r2, [fp, #-25]	; 0xffffffe7
    daa4:	e55b1019 	ldrb	r1, [fp, #-25]	; 0xffffffe7
    daa8:	e30a3f94 	movw	r3, #44948	; 0xaf94
    daac:	e3403019 	movt	r3, #25
    dab0:	e7d31001 	ldrb	r1, [r3, r1]
    dab4:	e55b301b 	ldrb	r3, [fp, #-27]	; 0xffffffe5
    dab8:	e1e03003 	mvn	r3, r3
    dabc:	e6ef3073 	uxtb	r3, r3
    dac0:	e0013003 	and	r3, r1, r3
    dac4:	e6ef1073 	uxtb	r1, r3
    dac8:	e30a3f94 	movw	r3, #44948	; 0xaf94
    dacc:	e3403019 	movt	r3, #25
    dad0:	e7c31002 	strb	r1, [r3, r2]
    dad4:	e55b2019 	ldrb	r2, [fp, #-25]	; 0xffffffe7
    dad8:	e30a3f94 	movw	r3, #44948	; 0xaf94
    dadc:	e3403019 	movt	r3, #25
    dae0:	e7d33002 	ldrb	r3, [r3, r2]
    dae4:	e3530000 	cmp	r3, #0
    dae8:	1a00000a 	bne	db18 <OSTaskChangePrio+0x1e0>
    daec:	e55b301a 	ldrb	r3, [fp, #-26]	; 0xffffffe6
    daf0:	e1e03003 	mvn	r3, r3
    daf4:	e6ef2073 	uxtb	r2, r3
    daf8:	e30a3f90 	movw	r3, #44944	; 0xaf90
    dafc:	e3403019 	movt	r3, #25
    db00:	e5d33000 	ldrb	r3, [r3]
    db04:	e0023003 	and	r3, r2, r3
    db08:	e6ef2073 	uxtb	r2, r3
    db0c:	e30a3f90 	movw	r3, #44944	; 0xaf90
    db10:	e3403019 	movt	r3, #25
    db14:	e5c32000 	strb	r2, [r3]
    db18:	e30a3f90 	movw	r3, #44944	; 0xaf90
    db1c:	e3403019 	movt	r3, #25
    db20:	e5d32000 	ldrb	r2, [r3]
    db24:	e55b3017 	ldrb	r3, [fp, #-23]	; 0xffffffe9
    db28:	e1823003 	orr	r3, r2, r3
    db2c:	e6ef2073 	uxtb	r2, r3
    db30:	e30a3f90 	movw	r3, #44944	; 0xaf90
    db34:	e3403019 	movt	r3, #25
    db38:	e5c32000 	strb	r2, [r3]
    db3c:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
    db40:	e55b1015 	ldrb	r1, [fp, #-21]	; 0xffffffeb
    db44:	e30a3f94 	movw	r3, #44948	; 0xaf94
    db48:	e3403019 	movt	r3, #25
    db4c:	e7d31001 	ldrb	r1, [r3, r1]
    db50:	e55b3018 	ldrb	r3, [fp, #-24]	; 0xffffffe8
    db54:	e1813003 	orr	r3, r1, r3
    db58:	e6ef1073 	uxtb	r1, r3
    db5c:	e30a3f94 	movw	r3, #44948	; 0xaf94
    db60:	e3403019 	movt	r3, #25
    db64:	e7c31002 	strb	r1, [r3, r2]
    db68:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    db6c:	e593301c 	ldr	r3, [r3, #28]
    db70:	e50b3008 	str	r3, [fp, #-8]
    db74:	e51b3008 	ldr	r3, [fp, #-8]
    db78:	e3530000 	cmp	r3, #0
    db7c:	0a000037 	beq	dc60 <OSTaskChangePrio+0x328>
    db80:	e55b1019 	ldrb	r1, [fp, #-25]	; 0xffffffe7
    db84:	e55b2019 	ldrb	r2, [fp, #-25]	; 0xffffffe7
    db88:	e51b0008 	ldr	r0, [fp, #-8]
    db8c:	e3a03008 	mov	r3, #8
    db90:	e0802002 	add	r2, r0, r2
    db94:	e0823003 	add	r3, r2, r3
    db98:	e5d32003 	ldrb	r2, [r3, #3]
    db9c:	e55b301b 	ldrb	r3, [fp, #-27]	; 0xffffffe5
    dba0:	e1e03003 	mvn	r3, r3
    dba4:	e6ef3073 	uxtb	r3, r3
    dba8:	e0023003 	and	r3, r2, r3
    dbac:	e6ef2073 	uxtb	r2, r3
    dbb0:	e51b0008 	ldr	r0, [fp, #-8]
    dbb4:	e3a03008 	mov	r3, #8
    dbb8:	e0801001 	add	r1, r0, r1
    dbbc:	e0813003 	add	r3, r1, r3
    dbc0:	e5c32003 	strb	r2, [r3, #3]
    dbc4:	e55b2019 	ldrb	r2, [fp, #-25]	; 0xffffffe7
    dbc8:	e51b1008 	ldr	r1, [fp, #-8]
    dbcc:	e3a03008 	mov	r3, #8
    dbd0:	e0812002 	add	r2, r1, r2
    dbd4:	e0823003 	add	r3, r2, r3
    dbd8:	e5d33003 	ldrb	r3, [r3, #3]
    dbdc:	e3530000 	cmp	r3, #0
    dbe0:	1a000008 	bne	dc08 <OSTaskChangePrio+0x2d0>
    dbe4:	e51b3008 	ldr	r3, [fp, #-8]
    dbe8:	e5d3200a 	ldrb	r2, [r3, #10]
    dbec:	e55b301a 	ldrb	r3, [fp, #-26]	; 0xffffffe6
    dbf0:	e1e03003 	mvn	r3, r3
    dbf4:	e6ef3073 	uxtb	r3, r3
    dbf8:	e0023003 	and	r3, r2, r3
    dbfc:	e6ef2073 	uxtb	r2, r3
    dc00:	e51b3008 	ldr	r3, [fp, #-8]
    dc04:	e5c3200a 	strb	r2, [r3, #10]
    dc08:	e51b3008 	ldr	r3, [fp, #-8]
    dc0c:	e5d3200a 	ldrb	r2, [r3, #10]
    dc10:	e55b3017 	ldrb	r3, [fp, #-23]	; 0xffffffe9
    dc14:	e1823003 	orr	r3, r2, r3
    dc18:	e6ef2073 	uxtb	r2, r3
    dc1c:	e51b3008 	ldr	r3, [fp, #-8]
    dc20:	e5c3200a 	strb	r2, [r3, #10]
    dc24:	e55b1015 	ldrb	r1, [fp, #-21]	; 0xffffffeb
    dc28:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
    dc2c:	e51b0008 	ldr	r0, [fp, #-8]
    dc30:	e3a03008 	mov	r3, #8
    dc34:	e0802002 	add	r2, r0, r2
    dc38:	e0823003 	add	r3, r2, r3
    dc3c:	e5d32003 	ldrb	r2, [r3, #3]
    dc40:	e55b3018 	ldrb	r3, [fp, #-24]	; 0xffffffe8
    dc44:	e1823003 	orr	r3, r2, r3
    dc48:	e6ef2073 	uxtb	r2, r3
    dc4c:	e51b0008 	ldr	r0, [fp, #-8]
    dc50:	e3a03008 	mov	r3, #8
    dc54:	e0801001 	add	r1, r0, r1
    dc58:	e0813003 	add	r3, r1, r3
    dc5c:	e5c32003 	strb	r2, [r3, #3]
    dc60:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    dc64:	e5933020 	ldr	r3, [r3, #32]
    dc68:	e3530000 	cmp	r3, #0
    dc6c:	0a000047 	beq	dd90 <OSTaskChangePrio+0x458>
    dc70:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    dc74:	e5933020 	ldr	r3, [r3, #32]
    dc78:	e50b300c 	str	r3, [fp, #-12]
    dc7c:	e51b300c 	ldr	r3, [fp, #-12]
    dc80:	e5933000 	ldr	r3, [r3]
    dc84:	e50b3008 	str	r3, [fp, #-8]
    dc88:	ea00003d 	b	dd84 <OSTaskChangePrio+0x44c>
    dc8c:	e55b1019 	ldrb	r1, [fp, #-25]	; 0xffffffe7
    dc90:	e55b2019 	ldrb	r2, [fp, #-25]	; 0xffffffe7
    dc94:	e51b0008 	ldr	r0, [fp, #-8]
    dc98:	e3a03008 	mov	r3, #8
    dc9c:	e0802002 	add	r2, r0, r2
    dca0:	e0823003 	add	r3, r2, r3
    dca4:	e5d32003 	ldrb	r2, [r3, #3]
    dca8:	e55b301b 	ldrb	r3, [fp, #-27]	; 0xffffffe5
    dcac:	e1e03003 	mvn	r3, r3
    dcb0:	e6ef3073 	uxtb	r3, r3
    dcb4:	e0023003 	and	r3, r2, r3
    dcb8:	e6ef2073 	uxtb	r2, r3
    dcbc:	e51b0008 	ldr	r0, [fp, #-8]
    dcc0:	e3a03008 	mov	r3, #8
    dcc4:	e0801001 	add	r1, r0, r1
    dcc8:	e0813003 	add	r3, r1, r3
    dccc:	e5c32003 	strb	r2, [r3, #3]
    dcd0:	e55b2019 	ldrb	r2, [fp, #-25]	; 0xffffffe7
    dcd4:	e51b1008 	ldr	r1, [fp, #-8]
    dcd8:	e3a03008 	mov	r3, #8
    dcdc:	e0812002 	add	r2, r1, r2
    dce0:	e0823003 	add	r3, r2, r3
    dce4:	e5d33003 	ldrb	r3, [r3, #3]
    dce8:	e3530000 	cmp	r3, #0
    dcec:	1a000008 	bne	dd14 <OSTaskChangePrio+0x3dc>
    dcf0:	e51b3008 	ldr	r3, [fp, #-8]
    dcf4:	e5d3200a 	ldrb	r2, [r3, #10]
    dcf8:	e55b301a 	ldrb	r3, [fp, #-26]	; 0xffffffe6
    dcfc:	e1e03003 	mvn	r3, r3
    dd00:	e6ef3073 	uxtb	r3, r3
    dd04:	e0023003 	and	r3, r2, r3
    dd08:	e6ef2073 	uxtb	r2, r3
    dd0c:	e51b3008 	ldr	r3, [fp, #-8]
    dd10:	e5c3200a 	strb	r2, [r3, #10]
    dd14:	e51b3008 	ldr	r3, [fp, #-8]
    dd18:	e5d3200a 	ldrb	r2, [r3, #10]
    dd1c:	e55b3017 	ldrb	r3, [fp, #-23]	; 0xffffffe9
    dd20:	e1823003 	orr	r3, r2, r3
    dd24:	e6ef2073 	uxtb	r2, r3
    dd28:	e51b3008 	ldr	r3, [fp, #-8]
    dd2c:	e5c3200a 	strb	r2, [r3, #10]
    dd30:	e55b1015 	ldrb	r1, [fp, #-21]	; 0xffffffeb
    dd34:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
    dd38:	e51b0008 	ldr	r0, [fp, #-8]
    dd3c:	e3a03008 	mov	r3, #8
    dd40:	e0802002 	add	r2, r0, r2
    dd44:	e0823003 	add	r3, r2, r3
    dd48:	e5d32003 	ldrb	r2, [r3, #3]
    dd4c:	e55b3018 	ldrb	r3, [fp, #-24]	; 0xffffffe8
    dd50:	e1823003 	orr	r3, r2, r3
    dd54:	e6ef2073 	uxtb	r2, r3
    dd58:	e51b0008 	ldr	r0, [fp, #-8]
    dd5c:	e3a03008 	mov	r3, #8
    dd60:	e0801001 	add	r1, r0, r1
    dd64:	e0813003 	add	r3, r1, r3
    dd68:	e5c32003 	strb	r2, [r3, #3]
    dd6c:	e51b300c 	ldr	r3, [fp, #-12]
    dd70:	e2833004 	add	r3, r3, #4
    dd74:	e50b300c 	str	r3, [fp, #-12]
    dd78:	e51b300c 	ldr	r3, [fp, #-12]
    dd7c:	e5933000 	ldr	r3, [r3]
    dd80:	e50b3008 	str	r3, [fp, #-8]
    dd84:	e51b3008 	ldr	r3, [fp, #-8]
    dd88:	e3530000 	cmp	r3, #0
    dd8c:	1affffbe 	bne	dc8c <OSTaskChangePrio+0x354>
    dd90:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    dd94:	e55b201e 	ldrb	r2, [fp, #-30]	; 0xffffffe2
    dd98:	e5c3202e 	strb	r2, [r3, #46]	; 0x2e
    dd9c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    dda0:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
    dda4:	e5c32030 	strb	r2, [r3, #48]	; 0x30
    dda8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    ddac:	e55b2016 	ldrb	r2, [fp, #-22]	; 0xffffffea
    ddb0:	e5c3202f 	strb	r2, [r3, #47]	; 0x2f
    ddb4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    ddb8:	e55b2017 	ldrb	r2, [fp, #-23]	; 0xffffffe9
    ddbc:	e5c32032 	strb	r2, [r3, #50]	; 0x32
    ddc0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    ddc4:	e55b2018 	ldrb	r2, [fp, #-24]	; 0xffffffe8
    ddc8:	e5c32031 	strb	r2, [r3, #49]	; 0x31
    ddcc:	e51b0010 	ldr	r0, [fp, #-16]
    ddd0:	eb000549 	bl	f2fc <OS_CPU_SR_Restore>
    ddd4:	e30a3e8e 	movw	r3, #44686	; 0xae8e
    ddd8:	e3403019 	movt	r3, #25
    dddc:	e5d33000 	ldrb	r3, [r3]
    dde0:	e3530001 	cmp	r3, #1
    dde4:	1a000000 	bne	ddec <OSTaskChangePrio+0x4b4>
    dde8:	ebffef52 	bl	9b38 <OS_Sched>
    ddec:	e3a03000 	mov	r3, #0
    ddf0:	e1a00003 	mov	r0, r3
    ddf4:	e24bd004 	sub	sp, fp, #4
    ddf8:	e8bd8800 	pop	{fp, pc}

0000ddfc <OSTaskCreate>:
    ddfc:	e92d4800 	push	{fp, lr}
    de00:	e28db004 	add	fp, sp, #4
    de04:	e24dd030 	sub	sp, sp, #48	; 0x30
    de08:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    de0c:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
    de10:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
    de14:	e54b3021 	strb	r3, [fp, #-33]	; 0xffffffdf
    de18:	e3a03000 	mov	r3, #0
    de1c:	e50b3008 	str	r3, [fp, #-8]
    de20:	eb000522 	bl	f2b0 <OS_CPU_SR_Save>
    de24:	e50b0008 	str	r0, [fp, #-8]
    de28:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    de2c:	e3403019 	movt	r3, #25
    de30:	e5d33000 	ldrb	r3, [r3]
    de34:	e3530000 	cmp	r3, #0
    de38:	0a000003 	beq	de4c <OSTaskCreate+0x50>
    de3c:	e51b0008 	ldr	r0, [fp, #-8]
    de40:	eb00052d 	bl	f2fc <OS_CPU_SR_Restore>
    de44:	e3a0303c 	mov	r3, #60	; 0x3c
    de48:	ea000038 	b	df30 <OSTaskCreate+0x134>
    de4c:	e55b2021 	ldrb	r2, [fp, #-33]	; 0xffffffdf
    de50:	e30b392c 	movw	r3, #47404	; 0xb92c
    de54:	e3403019 	movt	r3, #25
    de58:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    de5c:	e3530000 	cmp	r3, #0
    de60:	1a00002f 	bne	df24 <OSTaskCreate+0x128>
    de64:	e55b2021 	ldrb	r2, [fp, #-33]	; 0xffffffdf
    de68:	e30b392c 	movw	r3, #47404	; 0xb92c
    de6c:	e3403019 	movt	r3, #25
    de70:	e3a01001 	mov	r1, #1
    de74:	e7831102 	str	r1, [r3, r2, lsl #2]
    de78:	e51b0008 	ldr	r0, [fp, #-8]
    de7c:	eb00051e 	bl	f2fc <OS_CPU_SR_Restore>
    de80:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
    de84:	e51b101c 	ldr	r1, [fp, #-28]	; 0xffffffe4
    de88:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
    de8c:	e3a03000 	mov	r3, #0
    de90:	eb00067e 	bl	f890 <OSTaskStkInit>
    de94:	e50b000c 	str	r0, [fp, #-12]
    de98:	e55b3021 	ldrb	r3, [fp, #-33]	; 0xffffffdf
    de9c:	e3a02000 	mov	r2, #0
    dea0:	e58d2000 	str	r2, [sp]
    dea4:	e3a02000 	mov	r2, #0
    dea8:	e58d2004 	str	r2, [sp, #4]
    deac:	e3a02000 	mov	r2, #0
    deb0:	e58d2008 	str	r2, [sp, #8]
    deb4:	e1a00003 	mov	r0, r3
    deb8:	e51b100c 	ldr	r1, [fp, #-12]
    debc:	e3a02000 	mov	r2, #0
    dec0:	e3a03000 	mov	r3, #0
    dec4:	ebffefc6 	bl	9de4 <OS_TCBInit>
    dec8:	e1a03000 	mov	r3, r0
    decc:	e54b300d 	strb	r3, [fp, #-13]
    ded0:	e55b300d 	ldrb	r3, [fp, #-13]
    ded4:	e3530000 	cmp	r3, #0
    ded8:	1a000006 	bne	def8 <OSTaskCreate+0xfc>
    dedc:	e30a3e8e 	movw	r3, #44686	; 0xae8e
    dee0:	e3403019 	movt	r3, #25
    dee4:	e5d33000 	ldrb	r3, [r3]
    dee8:	e3530001 	cmp	r3, #1
    deec:	1a00000a 	bne	df1c <OSTaskCreate+0x120>
    def0:	ebffef10 	bl	9b38 <OS_Sched>
    def4:	ea000008 	b	df1c <OSTaskCreate+0x120>
    def8:	eb0004ec 	bl	f2b0 <OS_CPU_SR_Save>
    defc:	e50b0008 	str	r0, [fp, #-8]
    df00:	e55b2021 	ldrb	r2, [fp, #-33]	; 0xffffffdf
    df04:	e30b392c 	movw	r3, #47404	; 0xb92c
    df08:	e3403019 	movt	r3, #25
    df0c:	e3a01000 	mov	r1, #0
    df10:	e7831102 	str	r1, [r3, r2, lsl #2]
    df14:	e51b0008 	ldr	r0, [fp, #-8]
    df18:	eb0004f7 	bl	f2fc <OS_CPU_SR_Restore>
    df1c:	e55b300d 	ldrb	r3, [fp, #-13]
    df20:	ea000002 	b	df30 <OSTaskCreate+0x134>
    df24:	e51b0008 	ldr	r0, [fp, #-8]
    df28:	eb0004f3 	bl	f2fc <OS_CPU_SR_Restore>
    df2c:	e3a03028 	mov	r3, #40	; 0x28
    df30:	e1a00003 	mov	r0, r3
    df34:	e24bd004 	sub	sp, fp, #4
    df38:	e8bd8800 	pop	{fp, pc}

0000df3c <OSTaskCreateExt>:
    df3c:	e92d4800 	push	{fp, lr}
    df40:	e28db004 	add	fp, sp, #4
    df44:	e24dd030 	sub	sp, sp, #48	; 0x30
    df48:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    df4c:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
    df50:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
    df54:	e54b3021 	strb	r3, [fp, #-33]	; 0xffffffdf
    df58:	e3a03000 	mov	r3, #0
    df5c:	e50b3008 	str	r3, [fp, #-8]
    df60:	eb0004d2 	bl	f2b0 <OS_CPU_SR_Save>
    df64:	e50b0008 	str	r0, [fp, #-8]
    df68:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    df6c:	e3403019 	movt	r3, #25
    df70:	e5d33000 	ldrb	r3, [r3]
    df74:	e3530000 	cmp	r3, #0
    df78:	0a000003 	beq	df8c <OSTaskCreateExt+0x50>
    df7c:	e51b0008 	ldr	r0, [fp, #-8]
    df80:	eb0004dd 	bl	f2fc <OS_CPU_SR_Restore>
    df84:	e3a0303c 	mov	r3, #60	; 0x3c
    df88:	ea00003d 	b	e084 <OSTaskCreateExt+0x148>
    df8c:	e55b2021 	ldrb	r2, [fp, #-33]	; 0xffffffdf
    df90:	e30b392c 	movw	r3, #47404	; 0xb92c
    df94:	e3403019 	movt	r3, #25
    df98:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    df9c:	e3530000 	cmp	r3, #0
    dfa0:	1a000034 	bne	e078 <OSTaskCreateExt+0x13c>
    dfa4:	e55b2021 	ldrb	r2, [fp, #-33]	; 0xffffffdf
    dfa8:	e30b392c 	movw	r3, #47404	; 0xb92c
    dfac:	e3403019 	movt	r3, #25
    dfb0:	e3a01001 	mov	r1, #1
    dfb4:	e7831102 	str	r1, [r3, r2, lsl #2]
    dfb8:	e51b0008 	ldr	r0, [fp, #-8]
    dfbc:	eb0004ce 	bl	f2fc <OS_CPU_SR_Restore>
    dfc0:	e1db31b4 	ldrh	r3, [fp, #20]
    dfc4:	e59b0008 	ldr	r0, [fp, #8]
    dfc8:	e59b100c 	ldr	r1, [fp, #12]
    dfcc:	e1a02003 	mov	r2, r3
    dfd0:	eb000391 	bl	ee1c <OS_TaskStkClr>
    dfd4:	e1db31b4 	ldrh	r3, [fp, #20]
    dfd8:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
    dfdc:	e51b101c 	ldr	r1, [fp, #-28]	; 0xffffffe4
    dfe0:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
    dfe4:	eb000629 	bl	f890 <OSTaskStkInit>
    dfe8:	e50b000c 	str	r0, [fp, #-12]
    dfec:	e55b2021 	ldrb	r2, [fp, #-33]	; 0xffffffdf
    dff0:	e1db30b4 	ldrh	r3, [fp, #4]
    dff4:	e59b100c 	ldr	r1, [fp, #12]
    dff8:	e58d1000 	str	r1, [sp]
    dffc:	e59b1010 	ldr	r1, [fp, #16]
    e000:	e58d1004 	str	r1, [sp, #4]
    e004:	e1db11b4 	ldrh	r1, [fp, #20]
    e008:	e58d1008 	str	r1, [sp, #8]
    e00c:	e1a00002 	mov	r0, r2
    e010:	e51b100c 	ldr	r1, [fp, #-12]
    e014:	e59b2008 	ldr	r2, [fp, #8]
    e018:	ebffef71 	bl	9de4 <OS_TCBInit>
    e01c:	e1a03000 	mov	r3, r0
    e020:	e54b300d 	strb	r3, [fp, #-13]
    e024:	e55b300d 	ldrb	r3, [fp, #-13]
    e028:	e3530000 	cmp	r3, #0
    e02c:	1a000006 	bne	e04c <OSTaskCreateExt+0x110>
    e030:	e30a3e8e 	movw	r3, #44686	; 0xae8e
    e034:	e3403019 	movt	r3, #25
    e038:	e5d33000 	ldrb	r3, [r3]
    e03c:	e3530001 	cmp	r3, #1
    e040:	1a00000a 	bne	e070 <OSTaskCreateExt+0x134>
    e044:	ebffeebb 	bl	9b38 <OS_Sched>
    e048:	ea000008 	b	e070 <OSTaskCreateExt+0x134>
    e04c:	eb000497 	bl	f2b0 <OS_CPU_SR_Save>
    e050:	e50b0008 	str	r0, [fp, #-8]
    e054:	e55b2021 	ldrb	r2, [fp, #-33]	; 0xffffffdf
    e058:	e30b392c 	movw	r3, #47404	; 0xb92c
    e05c:	e3403019 	movt	r3, #25
    e060:	e3a01000 	mov	r1, #0
    e064:	e7831102 	str	r1, [r3, r2, lsl #2]
    e068:	e51b0008 	ldr	r0, [fp, #-8]
    e06c:	eb0004a2 	bl	f2fc <OS_CPU_SR_Restore>
    e070:	e55b300d 	ldrb	r3, [fp, #-13]
    e074:	ea000002 	b	e084 <OSTaskCreateExt+0x148>
    e078:	e51b0008 	ldr	r0, [fp, #-8]
    e07c:	eb00049e 	bl	f2fc <OS_CPU_SR_Restore>
    e080:	e3a03028 	mov	r3, #40	; 0x28
    e084:	e1a00003 	mov	r0, r3
    e088:	e24bd004 	sub	sp, fp, #4
    e08c:	e8bd8800 	pop	{fp, pc}

0000e090 <OSTaskDel>:
    e090:	e92d4800 	push	{fp, lr}
    e094:	e28db004 	add	fp, sp, #4
    e098:	e24dd010 	sub	sp, sp, #16
    e09c:	e1a03000 	mov	r3, r0
    e0a0:	e54b300d 	strb	r3, [fp, #-13]
    e0a4:	e3a03000 	mov	r3, #0
    e0a8:	e50b3008 	str	r3, [fp, #-8]
    e0ac:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    e0b0:	e3403019 	movt	r3, #25
    e0b4:	e5d33000 	ldrb	r3, [r3]
    e0b8:	e3530000 	cmp	r3, #0
    e0bc:	0a000001 	beq	e0c8 <OSTaskDel+0x38>
    e0c0:	e3a03040 	mov	r3, #64	; 0x40
    e0c4:	ea0000be 	b	e3c4 <OSTaskDel+0x334>
    e0c8:	e55b300d 	ldrb	r3, [fp, #-13]
    e0cc:	e353003f 	cmp	r3, #63	; 0x3f
    e0d0:	1a000001 	bne	e0dc <OSTaskDel+0x4c>
    e0d4:	e3a0303e 	mov	r3, #62	; 0x3e
    e0d8:	ea0000b9 	b	e3c4 <OSTaskDel+0x334>
    e0dc:	eb000473 	bl	f2b0 <OS_CPU_SR_Save>
    e0e0:	e50b0008 	str	r0, [fp, #-8]
    e0e4:	e55b300d 	ldrb	r3, [fp, #-13]
    e0e8:	e35300ff 	cmp	r3, #255	; 0xff
    e0ec:	1a000004 	bne	e104 <OSTaskDel+0x74>
    e0f0:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    e0f4:	e3403019 	movt	r3, #25
    e0f8:	e5933000 	ldr	r3, [r3]
    e0fc:	e5d3302e 	ldrb	r3, [r3, #46]	; 0x2e
    e100:	e54b300d 	strb	r3, [fp, #-13]
    e104:	e55b200d 	ldrb	r2, [fp, #-13]
    e108:	e30b392c 	movw	r3, #47404	; 0xb92c
    e10c:	e3403019 	movt	r3, #25
    e110:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    e114:	e50b300c 	str	r3, [fp, #-12]
    e118:	e51b300c 	ldr	r3, [fp, #-12]
    e11c:	e3530000 	cmp	r3, #0
    e120:	1a000003 	bne	e134 <OSTaskDel+0xa4>
    e124:	e51b0008 	ldr	r0, [fp, #-8]
    e128:	eb000473 	bl	f2fc <OS_CPU_SR_Restore>
    e12c:	e3a03043 	mov	r3, #67	; 0x43
    e130:	ea0000a3 	b	e3c4 <OSTaskDel+0x334>
    e134:	e51b300c 	ldr	r3, [fp, #-12]
    e138:	e3530001 	cmp	r3, #1
    e13c:	1a000003 	bne	e150 <OSTaskDel+0xc0>
    e140:	e51b0008 	ldr	r0, [fp, #-8]
    e144:	eb00046c 	bl	f2fc <OS_CPU_SR_Restore>
    e148:	e3a0303d 	mov	r3, #61	; 0x3d
    e14c:	ea00009c 	b	e3c4 <OSTaskDel+0x334>
    e150:	e51b300c 	ldr	r3, [fp, #-12]
    e154:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    e158:	e1a02003 	mov	r2, r3
    e15c:	e51b300c 	ldr	r3, [fp, #-12]
    e160:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    e164:	e1a01003 	mov	r1, r3
    e168:	e30a3f94 	movw	r3, #44948	; 0xaf94
    e16c:	e3403019 	movt	r3, #25
    e170:	e7d31001 	ldrb	r1, [r3, r1]
    e174:	e51b300c 	ldr	r3, [fp, #-12]
    e178:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    e17c:	e1e03003 	mvn	r3, r3
    e180:	e6ef3073 	uxtb	r3, r3
    e184:	e0013003 	and	r3, r1, r3
    e188:	e6ef1073 	uxtb	r1, r3
    e18c:	e30a3f94 	movw	r3, #44948	; 0xaf94
    e190:	e3403019 	movt	r3, #25
    e194:	e7c31002 	strb	r1, [r3, r2]
    e198:	e51b300c 	ldr	r3, [fp, #-12]
    e19c:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    e1a0:	e1a02003 	mov	r2, r3
    e1a4:	e30a3f94 	movw	r3, #44948	; 0xaf94
    e1a8:	e3403019 	movt	r3, #25
    e1ac:	e7d33002 	ldrb	r3, [r3, r2]
    e1b0:	e3530000 	cmp	r3, #0
    e1b4:	1a00000b 	bne	e1e8 <OSTaskDel+0x158>
    e1b8:	e51b300c 	ldr	r3, [fp, #-12]
    e1bc:	e5d33032 	ldrb	r3, [r3, #50]	; 0x32
    e1c0:	e1e03003 	mvn	r3, r3
    e1c4:	e6ef2073 	uxtb	r2, r3
    e1c8:	e30a3f90 	movw	r3, #44944	; 0xaf90
    e1cc:	e3403019 	movt	r3, #25
    e1d0:	e5d33000 	ldrb	r3, [r3]
    e1d4:	e0023003 	and	r3, r2, r3
    e1d8:	e6ef2073 	uxtb	r2, r3
    e1dc:	e30a3f90 	movw	r3, #44944	; 0xaf90
    e1e0:	e3403019 	movt	r3, #25
    e1e4:	e5c32000 	strb	r2, [r3]
    e1e8:	e51b300c 	ldr	r3, [fp, #-12]
    e1ec:	e593301c 	ldr	r3, [r3, #28]
    e1f0:	e3530000 	cmp	r3, #0
    e1f4:	0a000004 	beq	e20c <OSTaskDel+0x17c>
    e1f8:	e51b300c 	ldr	r3, [fp, #-12]
    e1fc:	e593301c 	ldr	r3, [r3, #28]
    e200:	e51b000c 	ldr	r0, [fp, #-12]
    e204:	e1a01003 	mov	r1, r3
    e208:	ebffec90 	bl	9450 <OS_EventTaskRemove>
    e20c:	e51b300c 	ldr	r3, [fp, #-12]
    e210:	e5933020 	ldr	r3, [r3, #32]
    e214:	e3530000 	cmp	r3, #0
    e218:	0a000004 	beq	e230 <OSTaskDel+0x1a0>
    e21c:	e51b300c 	ldr	r3, [fp, #-12]
    e220:	e5933020 	ldr	r3, [r3, #32]
    e224:	e51b000c 	ldr	r0, [fp, #-12]
    e228:	e1a01003 	mov	r1, r3
    e22c:	ebffecb6 	bl	950c <OS_EventTaskRemoveMulti>
    e230:	e51b300c 	ldr	r3, [fp, #-12]
    e234:	e3a02000 	mov	r2, #0
    e238:	e5832028 	str	r2, [r3, #40]	; 0x28
    e23c:	e51b300c 	ldr	r3, [fp, #-12]
    e240:	e3a02000 	mov	r2, #0
    e244:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    e248:	e51b300c 	ldr	r3, [fp, #-12]
    e24c:	e3a02000 	mov	r2, #0
    e250:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    e254:	e30a3e8c 	movw	r3, #44684	; 0xae8c
    e258:	e3403019 	movt	r3, #25
    e25c:	e5d33000 	ldrb	r3, [r3]
    e260:	e35300ff 	cmp	r3, #255	; 0xff
    e264:	0a000007 	beq	e288 <OSTaskDel+0x1f8>
    e268:	e30a3e8c 	movw	r3, #44684	; 0xae8c
    e26c:	e3403019 	movt	r3, #25
    e270:	e5d33000 	ldrb	r3, [r3]
    e274:	e2833001 	add	r3, r3, #1
    e278:	e6ef2073 	uxtb	r2, r3
    e27c:	e30a3e8c 	movw	r3, #44684	; 0xae8c
    e280:	e3403019 	movt	r3, #25
    e284:	e5c32000 	strb	r2, [r3]
    e288:	e51b0008 	ldr	r0, [fp, #-8]
    e28c:	eb00041a 	bl	f2fc <OS_CPU_SR_Restore>
    e290:	ebffeb3f 	bl	8f94 <OS_Dummy>
    e294:	eb000405 	bl	f2b0 <OS_CPU_SR_Save>
    e298:	e50b0008 	str	r0, [fp, #-8]
    e29c:	e30a3e8c 	movw	r3, #44684	; 0xae8c
    e2a0:	e3403019 	movt	r3, #25
    e2a4:	e5d33000 	ldrb	r3, [r3]
    e2a8:	e3530000 	cmp	r3, #0
    e2ac:	0a000007 	beq	e2d0 <OSTaskDel+0x240>
    e2b0:	e30a3e8c 	movw	r3, #44684	; 0xae8c
    e2b4:	e3403019 	movt	r3, #25
    e2b8:	e5d33000 	ldrb	r3, [r3]
    e2bc:	e2433001 	sub	r3, r3, #1
    e2c0:	e6ef2073 	uxtb	r2, r3
    e2c4:	e30a3e8c 	movw	r3, #44684	; 0xae8c
    e2c8:	e3403019 	movt	r3, #25
    e2cc:	e5c32000 	strb	r2, [r3]
    e2d0:	e51b000c 	ldr	r0, [fp, #-12]
    e2d4:	eb000555 	bl	f830 <OSTaskDelHook>
    e2d8:	e30a3f20 	movw	r3, #44832	; 0xaf20
    e2dc:	e3403019 	movt	r3, #25
    e2e0:	e5d33000 	ldrb	r3, [r3]
    e2e4:	e2433001 	sub	r3, r3, #1
    e2e8:	e6ef2073 	uxtb	r2, r3
    e2ec:	e30a3f20 	movw	r3, #44832	; 0xaf20
    e2f0:	e3403019 	movt	r3, #25
    e2f4:	e5c32000 	strb	r2, [r3]
    e2f8:	e55b200d 	ldrb	r2, [fp, #-13]
    e2fc:	e30b392c 	movw	r3, #47404	; 0xb92c
    e300:	e3403019 	movt	r3, #25
    e304:	e3a01000 	mov	r1, #0
    e308:	e7831102 	str	r1, [r3, r2, lsl #2]
    e30c:	e51b300c 	ldr	r3, [fp, #-12]
    e310:	e5933018 	ldr	r3, [r3, #24]
    e314:	e3530000 	cmp	r3, #0
    e318:	1a000009 	bne	e344 <OSTaskDel+0x2b4>
    e31c:	e51b300c 	ldr	r3, [fp, #-12]
    e320:	e5933014 	ldr	r3, [r3, #20]
    e324:	e3a02000 	mov	r2, #0
    e328:	e5832018 	str	r2, [r3, #24]
    e32c:	e51b300c 	ldr	r3, [fp, #-12]
    e330:	e5932014 	ldr	r2, [r3, #20]
    e334:	e30a3e98 	movw	r3, #44696	; 0xae98
    e338:	e3403019 	movt	r3, #25
    e33c:	e5832000 	str	r2, [r3]
    e340:	ea000009 	b	e36c <OSTaskDel+0x2dc>
    e344:	e51b300c 	ldr	r3, [fp, #-12]
    e348:	e5933018 	ldr	r3, [r3, #24]
    e34c:	e51b200c 	ldr	r2, [fp, #-12]
    e350:	e5922014 	ldr	r2, [r2, #20]
    e354:	e5832014 	str	r2, [r3, #20]
    e358:	e51b300c 	ldr	r3, [fp, #-12]
    e35c:	e5933014 	ldr	r3, [r3, #20]
    e360:	e51b200c 	ldr	r2, [fp, #-12]
    e364:	e5922018 	ldr	r2, [r2, #24]
    e368:	e5832018 	str	r2, [r3, #24]
    e36c:	e30a3f1c 	movw	r3, #44828	; 0xaf1c
    e370:	e3403019 	movt	r3, #25
    e374:	e5932000 	ldr	r2, [r3]
    e378:	e51b300c 	ldr	r3, [fp, #-12]
    e37c:	e5832014 	str	r2, [r3, #20]
    e380:	e30a3f1c 	movw	r3, #44828	; 0xaf1c
    e384:	e3403019 	movt	r3, #25
    e388:	e51b200c 	ldr	r2, [fp, #-12]
    e38c:	e5832000 	str	r2, [r3]
    e390:	e51b200c 	ldr	r2, [fp, #-12]
    e394:	e3073754 	movw	r3, #30548	; 0x7754
    e398:	e3403001 	movt	r3, #1
    e39c:	e5823048 	str	r3, [r2, #72]	; 0x48
    e3a0:	e51b0008 	ldr	r0, [fp, #-8]
    e3a4:	eb0003d4 	bl	f2fc <OS_CPU_SR_Restore>
    e3a8:	e30a3e8e 	movw	r3, #44686	; 0xae8e
    e3ac:	e3403019 	movt	r3, #25
    e3b0:	e5d33000 	ldrb	r3, [r3]
    e3b4:	e3530001 	cmp	r3, #1
    e3b8:	1a000000 	bne	e3c0 <OSTaskDel+0x330>
    e3bc:	ebffeddd 	bl	9b38 <OS_Sched>
    e3c0:	e3a03000 	mov	r3, #0
    e3c4:	e1a00003 	mov	r0, r3
    e3c8:	e24bd004 	sub	sp, fp, #4
    e3cc:	e8bd8800 	pop	{fp, pc}

0000e3d0 <OSTaskDelReq>:
    e3d0:	e92d4800 	push	{fp, lr}
    e3d4:	e28db004 	add	fp, sp, #4
    e3d8:	e24dd018 	sub	sp, sp, #24
    e3dc:	e1a03000 	mov	r3, r0
    e3e0:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
    e3e4:	e3a03000 	mov	r3, #0
    e3e8:	e50b3008 	str	r3, [fp, #-8]
    e3ec:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
    e3f0:	e353003f 	cmp	r3, #63	; 0x3f
    e3f4:	1a000001 	bne	e400 <OSTaskDelReq+0x30>
    e3f8:	e3a0303e 	mov	r3, #62	; 0x3e
    e3fc:	ea000028 	b	e4a4 <OSTaskDelReq+0xd4>
    e400:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
    e404:	e35300ff 	cmp	r3, #255	; 0xff
    e408:	1a00000a 	bne	e438 <OSTaskDelReq+0x68>
    e40c:	eb0003a7 	bl	f2b0 <OS_CPU_SR_Save>
    e410:	e50b0008 	str	r0, [fp, #-8]
    e414:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    e418:	e3403019 	movt	r3, #25
    e41c:	e5933000 	ldr	r3, [r3]
    e420:	e5d33033 	ldrb	r3, [r3, #51]	; 0x33
    e424:	e54b3009 	strb	r3, [fp, #-9]
    e428:	e51b0008 	ldr	r0, [fp, #-8]
    e42c:	eb0003b2 	bl	f2fc <OS_CPU_SR_Restore>
    e430:	e55b3009 	ldrb	r3, [fp, #-9]
    e434:	ea00001a 	b	e4a4 <OSTaskDelReq+0xd4>
    e438:	eb00039c 	bl	f2b0 <OS_CPU_SR_Save>
    e43c:	e50b0008 	str	r0, [fp, #-8]
    e440:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
    e444:	e30b392c 	movw	r3, #47404	; 0xb92c
    e448:	e3403019 	movt	r3, #25
    e44c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    e450:	e50b3010 	str	r3, [fp, #-16]
    e454:	e51b3010 	ldr	r3, [fp, #-16]
    e458:	e3530000 	cmp	r3, #0
    e45c:	1a000003 	bne	e470 <OSTaskDelReq+0xa0>
    e460:	e51b0008 	ldr	r0, [fp, #-8]
    e464:	eb0003a4 	bl	f2fc <OS_CPU_SR_Restore>
    e468:	e3a03043 	mov	r3, #67	; 0x43
    e46c:	ea00000c 	b	e4a4 <OSTaskDelReq+0xd4>
    e470:	e51b3010 	ldr	r3, [fp, #-16]
    e474:	e3530001 	cmp	r3, #1
    e478:	1a000003 	bne	e48c <OSTaskDelReq+0xbc>
    e47c:	e51b0008 	ldr	r0, [fp, #-8]
    e480:	eb00039d 	bl	f2fc <OS_CPU_SR_Restore>
    e484:	e3a0303d 	mov	r3, #61	; 0x3d
    e488:	ea000005 	b	e4a4 <OSTaskDelReq+0xd4>
    e48c:	e51b3010 	ldr	r3, [fp, #-16]
    e490:	e3a0203f 	mov	r2, #63	; 0x3f
    e494:	e5c32033 	strb	r2, [r3, #51]	; 0x33
    e498:	e51b0008 	ldr	r0, [fp, #-8]
    e49c:	eb000396 	bl	f2fc <OS_CPU_SR_Restore>
    e4a0:	e3a03000 	mov	r3, #0
    e4a4:	e1a00003 	mov	r0, r3
    e4a8:	e24bd004 	sub	sp, fp, #4
    e4ac:	e8bd8800 	pop	{fp, pc}

0000e4b0 <OSTaskNameGet>:
    e4b0:	e92d4800 	push	{fp, lr}
    e4b4:	e28db004 	add	fp, sp, #4
    e4b8:	e24dd020 	sub	sp, sp, #32
    e4bc:	e1a03000 	mov	r3, r0
    e4c0:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
    e4c4:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
    e4c8:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
    e4cc:	e3a03000 	mov	r3, #0
    e4d0:	e50b3008 	str	r3, [fp, #-8]
    e4d4:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    e4d8:	e3403019 	movt	r3, #25
    e4dc:	e5d33000 	ldrb	r3, [r3]
    e4e0:	e3530000 	cmp	r3, #0
    e4e4:	0a000004 	beq	e4fc <OSTaskNameGet+0x4c>
    e4e8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    e4ec:	e3a02011 	mov	r2, #17
    e4f0:	e5c32000 	strb	r2, [r3]
    e4f4:	e3a03000 	mov	r3, #0
    e4f8:	ea000032 	b	e5c8 <OSTaskNameGet+0x118>
    e4fc:	eb00036b 	bl	f2b0 <OS_CPU_SR_Save>
    e500:	e50b0008 	str	r0, [fp, #-8]
    e504:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
    e508:	e35300ff 	cmp	r3, #255	; 0xff
    e50c:	1a000004 	bne	e524 <OSTaskNameGet+0x74>
    e510:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    e514:	e3403019 	movt	r3, #25
    e518:	e5933000 	ldr	r3, [r3]
    e51c:	e5d3302e 	ldrb	r3, [r3, #46]	; 0x2e
    e520:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
    e524:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
    e528:	e30b392c 	movw	r3, #47404	; 0xb92c
    e52c:	e3403019 	movt	r3, #25
    e530:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    e534:	e50b300c 	str	r3, [fp, #-12]
    e538:	e51b300c 	ldr	r3, [fp, #-12]
    e53c:	e3530000 	cmp	r3, #0
    e540:	1a000006 	bne	e560 <OSTaskNameGet+0xb0>
    e544:	e51b0008 	ldr	r0, [fp, #-8]
    e548:	eb00036b 	bl	f2fc <OS_CPU_SR_Restore>
    e54c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    e550:	e3a02043 	mov	r2, #67	; 0x43
    e554:	e5c32000 	strb	r2, [r3]
    e558:	e3a03000 	mov	r3, #0
    e55c:	ea000019 	b	e5c8 <OSTaskNameGet+0x118>
    e560:	e51b300c 	ldr	r3, [fp, #-12]
    e564:	e3530001 	cmp	r3, #1
    e568:	1a000006 	bne	e588 <OSTaskNameGet+0xd8>
    e56c:	e51b0008 	ldr	r0, [fp, #-8]
    e570:	eb000361 	bl	f2fc <OS_CPU_SR_Restore>
    e574:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    e578:	e3a02043 	mov	r2, #67	; 0x43
    e57c:	e5c32000 	strb	r2, [r3]
    e580:	e3a03000 	mov	r3, #0
    e584:	ea00000f 	b	e5c8 <OSTaskNameGet+0x118>
    e588:	e51b300c 	ldr	r3, [fp, #-12]
    e58c:	e5932048 	ldr	r2, [r3, #72]	; 0x48
    e590:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    e594:	e5832000 	str	r2, [r3]
    e598:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    e59c:	e5933000 	ldr	r3, [r3]
    e5a0:	e1a00003 	mov	r0, r3
    e5a4:	ebffedb7 	bl	9c88 <OS_StrLen>
    e5a8:	e1a03000 	mov	r3, r0
    e5ac:	e54b300d 	strb	r3, [fp, #-13]
    e5b0:	e51b0008 	ldr	r0, [fp, #-8]
    e5b4:	eb000350 	bl	f2fc <OS_CPU_SR_Restore>
    e5b8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    e5bc:	e3a02000 	mov	r2, #0
    e5c0:	e5c32000 	strb	r2, [r3]
    e5c4:	e55b300d 	ldrb	r3, [fp, #-13]
    e5c8:	e1a00003 	mov	r0, r3
    e5cc:	e24bd004 	sub	sp, fp, #4
    e5d0:	e8bd8800 	pop	{fp, pc}

0000e5d4 <OSTaskNameSet>:
    e5d4:	e92d4800 	push	{fp, lr}
    e5d8:	e28db004 	add	fp, sp, #4
    e5dc:	e24dd018 	sub	sp, sp, #24
    e5e0:	e1a03000 	mov	r3, r0
    e5e4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    e5e8:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
    e5ec:	e54b300d 	strb	r3, [fp, #-13]
    e5f0:	e3a03000 	mov	r3, #0
    e5f4:	e50b3008 	str	r3, [fp, #-8]
    e5f8:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    e5fc:	e3403019 	movt	r3, #25
    e600:	e5d33000 	ldrb	r3, [r3]
    e604:	e3530000 	cmp	r3, #0
    e608:	0a000003 	beq	e61c <OSTaskNameSet+0x48>
    e60c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    e610:	e3a02012 	mov	r2, #18
    e614:	e5c32000 	strb	r2, [r3]
    e618:	ea000028 	b	e6c0 <OSTaskNameSet+0xec>
    e61c:	eb000323 	bl	f2b0 <OS_CPU_SR_Save>
    e620:	e50b0008 	str	r0, [fp, #-8]
    e624:	e55b300d 	ldrb	r3, [fp, #-13]
    e628:	e35300ff 	cmp	r3, #255	; 0xff
    e62c:	1a000004 	bne	e644 <OSTaskNameSet+0x70>
    e630:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    e634:	e3403019 	movt	r3, #25
    e638:	e5933000 	ldr	r3, [r3]
    e63c:	e5d3302e 	ldrb	r3, [r3, #46]	; 0x2e
    e640:	e54b300d 	strb	r3, [fp, #-13]
    e644:	e55b200d 	ldrb	r2, [fp, #-13]
    e648:	e30b392c 	movw	r3, #47404	; 0xb92c
    e64c:	e3403019 	movt	r3, #25
    e650:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    e654:	e50b300c 	str	r3, [fp, #-12]
    e658:	e51b300c 	ldr	r3, [fp, #-12]
    e65c:	e3530000 	cmp	r3, #0
    e660:	1a000005 	bne	e67c <OSTaskNameSet+0xa8>
    e664:	e51b0008 	ldr	r0, [fp, #-8]
    e668:	eb000323 	bl	f2fc <OS_CPU_SR_Restore>
    e66c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    e670:	e3a02043 	mov	r2, #67	; 0x43
    e674:	e5c32000 	strb	r2, [r3]
    e678:	ea000010 	b	e6c0 <OSTaskNameSet+0xec>
    e67c:	e51b300c 	ldr	r3, [fp, #-12]
    e680:	e3530001 	cmp	r3, #1
    e684:	1a000005 	bne	e6a0 <OSTaskNameSet+0xcc>
    e688:	e51b0008 	ldr	r0, [fp, #-8]
    e68c:	eb00031a 	bl	f2fc <OS_CPU_SR_Restore>
    e690:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    e694:	e3a02043 	mov	r2, #67	; 0x43
    e698:	e5c32000 	strb	r2, [r3]
    e69c:	ea000007 	b	e6c0 <OSTaskNameSet+0xec>
    e6a0:	e51b300c 	ldr	r3, [fp, #-12]
    e6a4:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    e6a8:	e5832048 	str	r2, [r3, #72]	; 0x48
    e6ac:	e51b0008 	ldr	r0, [fp, #-8]
    e6b0:	eb000311 	bl	f2fc <OS_CPU_SR_Restore>
    e6b4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    e6b8:	e3a02000 	mov	r2, #0
    e6bc:	e5c32000 	strb	r2, [r3]
    e6c0:	e24bd004 	sub	sp, fp, #4
    e6c4:	e8bd8800 	pop	{fp, pc}

0000e6c8 <OSTaskResume>:
    e6c8:	e92d4800 	push	{fp, lr}
    e6cc:	e28db004 	add	fp, sp, #4
    e6d0:	e24dd010 	sub	sp, sp, #16
    e6d4:	e1a03000 	mov	r3, r0
    e6d8:	e54b300d 	strb	r3, [fp, #-13]
    e6dc:	e3a03000 	mov	r3, #0
    e6e0:	e50b3008 	str	r3, [fp, #-8]
    e6e4:	eb0002f1 	bl	f2b0 <OS_CPU_SR_Save>
    e6e8:	e50b0008 	str	r0, [fp, #-8]
    e6ec:	e55b200d 	ldrb	r2, [fp, #-13]
    e6f0:	e30b392c 	movw	r3, #47404	; 0xb92c
    e6f4:	e3403019 	movt	r3, #25
    e6f8:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    e6fc:	e50b300c 	str	r3, [fp, #-12]
    e700:	e51b300c 	ldr	r3, [fp, #-12]
    e704:	e3530000 	cmp	r3, #0
    e708:	1a000003 	bne	e71c <OSTaskResume+0x54>
    e70c:	e51b0008 	ldr	r0, [fp, #-8]
    e710:	eb0002f9 	bl	f2fc <OS_CPU_SR_Restore>
    e714:	e3a03046 	mov	r3, #70	; 0x46
    e718:	ea000046 	b	e838 <OSTaskResume+0x170>
    e71c:	e51b300c 	ldr	r3, [fp, #-12]
    e720:	e3530001 	cmp	r3, #1
    e724:	1a000003 	bne	e738 <OSTaskResume+0x70>
    e728:	e51b0008 	ldr	r0, [fp, #-8]
    e72c:	eb0002f2 	bl	f2fc <OS_CPU_SR_Restore>
    e730:	e3a03043 	mov	r3, #67	; 0x43
    e734:	ea00003f 	b	e838 <OSTaskResume+0x170>
    e738:	e51b300c 	ldr	r3, [fp, #-12]
    e73c:	e5d3302c 	ldrb	r3, [r3, #44]	; 0x2c
    e740:	e2033008 	and	r3, r3, #8
    e744:	e3530000 	cmp	r3, #0
    e748:	0a000037 	beq	e82c <OSTaskResume+0x164>
    e74c:	e51b300c 	ldr	r3, [fp, #-12]
    e750:	e5d3302c 	ldrb	r3, [r3, #44]	; 0x2c
    e754:	e3c33008 	bic	r3, r3, #8
    e758:	e6ef2073 	uxtb	r2, r3
    e75c:	e51b300c 	ldr	r3, [fp, #-12]
    e760:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    e764:	e51b300c 	ldr	r3, [fp, #-12]
    e768:	e5d3302c 	ldrb	r3, [r3, #44]	; 0x2c
    e76c:	e3530000 	cmp	r3, #0
    e770:	1a000029 	bne	e81c <OSTaskResume+0x154>
    e774:	e51b300c 	ldr	r3, [fp, #-12]
    e778:	e5933028 	ldr	r3, [r3, #40]	; 0x28
    e77c:	e3530000 	cmp	r3, #0
    e780:	1a000022 	bne	e810 <OSTaskResume+0x148>
    e784:	e51b300c 	ldr	r3, [fp, #-12]
    e788:	e5d32032 	ldrb	r2, [r3, #50]	; 0x32
    e78c:	e30a3f90 	movw	r3, #44944	; 0xaf90
    e790:	e3403019 	movt	r3, #25
    e794:	e5d33000 	ldrb	r3, [r3]
    e798:	e1823003 	orr	r3, r2, r3
    e79c:	e6ef2073 	uxtb	r2, r3
    e7a0:	e30a3f90 	movw	r3, #44944	; 0xaf90
    e7a4:	e3403019 	movt	r3, #25
    e7a8:	e5c32000 	strb	r2, [r3]
    e7ac:	e51b300c 	ldr	r3, [fp, #-12]
    e7b0:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    e7b4:	e1a02003 	mov	r2, r3
    e7b8:	e51b300c 	ldr	r3, [fp, #-12]
    e7bc:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    e7c0:	e1a01003 	mov	r1, r3
    e7c4:	e30a3f94 	movw	r3, #44948	; 0xaf94
    e7c8:	e3403019 	movt	r3, #25
    e7cc:	e7d31001 	ldrb	r1, [r3, r1]
    e7d0:	e51b300c 	ldr	r3, [fp, #-12]
    e7d4:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    e7d8:	e1813003 	orr	r3, r1, r3
    e7dc:	e6ef1073 	uxtb	r1, r3
    e7e0:	e30a3f94 	movw	r3, #44948	; 0xaf94
    e7e4:	e3403019 	movt	r3, #25
    e7e8:	e7c31002 	strb	r1, [r3, r2]
    e7ec:	e51b0008 	ldr	r0, [fp, #-8]
    e7f0:	eb0002c1 	bl	f2fc <OS_CPU_SR_Restore>
    e7f4:	e30a3e8e 	movw	r3, #44686	; 0xae8e
    e7f8:	e3403019 	movt	r3, #25
    e7fc:	e5d33000 	ldrb	r3, [r3]
    e800:	e3530001 	cmp	r3, #1
    e804:	1a000006 	bne	e824 <OSTaskResume+0x15c>
    e808:	ebffecca 	bl	9b38 <OS_Sched>
    e80c:	ea000004 	b	e824 <OSTaskResume+0x15c>
    e810:	e51b0008 	ldr	r0, [fp, #-8]
    e814:	eb0002b8 	bl	f2fc <OS_CPU_SR_Restore>
    e818:	ea000001 	b	e824 <OSTaskResume+0x15c>
    e81c:	e51b0008 	ldr	r0, [fp, #-8]
    e820:	eb0002b5 	bl	f2fc <OS_CPU_SR_Restore>
    e824:	e3a03000 	mov	r3, #0
    e828:	ea000002 	b	e838 <OSTaskResume+0x170>
    e82c:	e51b0008 	ldr	r0, [fp, #-8]
    e830:	eb0002b1 	bl	f2fc <OS_CPU_SR_Restore>
    e834:	e3a03044 	mov	r3, #68	; 0x44
    e838:	e1a00003 	mov	r0, r3
    e83c:	e24bd004 	sub	sp, fp, #4
    e840:	e8bd8800 	pop	{fp, pc}

0000e844 <OSTaskStkChk>:
    e844:	e92d4800 	push	{fp, lr}
    e848:	e28db004 	add	fp, sp, #4
    e84c:	e24dd020 	sub	sp, sp, #32
    e850:	e1a03000 	mov	r3, r0
    e854:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
    e858:	e54b301d 	strb	r3, [fp, #-29]	; 0xffffffe3
    e85c:	e3a03000 	mov	r3, #0
    e860:	e50b3010 	str	r3, [fp, #-16]
    e864:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    e868:	e3a02000 	mov	r2, #0
    e86c:	e5832000 	str	r2, [r3]
    e870:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    e874:	e3a02000 	mov	r2, #0
    e878:	e5832004 	str	r2, [r3, #4]
    e87c:	eb00028b 	bl	f2b0 <OS_CPU_SR_Save>
    e880:	e50b0010 	str	r0, [fp, #-16]
    e884:	e55b301d 	ldrb	r3, [fp, #-29]	; 0xffffffe3
    e888:	e35300ff 	cmp	r3, #255	; 0xff
    e88c:	1a000004 	bne	e8a4 <OSTaskStkChk+0x60>
    e890:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    e894:	e3403019 	movt	r3, #25
    e898:	e5933000 	ldr	r3, [r3]
    e89c:	e5d3302e 	ldrb	r3, [r3, #46]	; 0x2e
    e8a0:	e54b301d 	strb	r3, [fp, #-29]	; 0xffffffe3
    e8a4:	e55b201d 	ldrb	r2, [fp, #-29]	; 0xffffffe3
    e8a8:	e30b392c 	movw	r3, #47404	; 0xb92c
    e8ac:	e3403019 	movt	r3, #25
    e8b0:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    e8b4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    e8b8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    e8bc:	e3530000 	cmp	r3, #0
    e8c0:	1a000003 	bne	e8d4 <OSTaskStkChk+0x90>
    e8c4:	e51b0010 	ldr	r0, [fp, #-16]
    e8c8:	eb00028b 	bl	f2fc <OS_CPU_SR_Restore>
    e8cc:	e3a03043 	mov	r3, #67	; 0x43
    e8d0:	ea000031 	b	e99c <OSTaskStkChk+0x158>
    e8d4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    e8d8:	e3530001 	cmp	r3, #1
    e8dc:	1a000003 	bne	e8f0 <OSTaskStkChk+0xac>
    e8e0:	e51b0010 	ldr	r0, [fp, #-16]
    e8e4:	eb000284 	bl	f2fc <OS_CPU_SR_Restore>
    e8e8:	e3a03043 	mov	r3, #67	; 0x43
    e8ec:	ea00002a 	b	e99c <OSTaskStkChk+0x158>
    e8f0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    e8f4:	e1d331b0 	ldrh	r3, [r3, #16]
    e8f8:	e2033001 	and	r3, r3, #1
    e8fc:	e3530000 	cmp	r3, #0
    e900:	1a000003 	bne	e914 <OSTaskStkChk+0xd0>
    e904:	e51b0010 	ldr	r0, [fp, #-16]
    e908:	eb00027b 	bl	f2fc <OS_CPU_SR_Restore>
    e90c:	e3a03045 	mov	r3, #69	; 0x45
    e910:	ea000021 	b	e99c <OSTaskStkChk+0x158>
    e914:	e3a03000 	mov	r3, #0
    e918:	e50b300c 	str	r3, [fp, #-12]
    e91c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    e920:	e593300c 	ldr	r3, [r3, #12]
    e924:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    e928:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    e92c:	e5933008 	ldr	r3, [r3, #8]
    e930:	e50b3008 	str	r3, [fp, #-8]
    e934:	e51b0010 	ldr	r0, [fp, #-16]
    e938:	eb00026f 	bl	f2fc <OS_CPU_SR_Restore>
    e93c:	ea000002 	b	e94c <OSTaskStkChk+0x108>
    e940:	e51b300c 	ldr	r3, [fp, #-12]
    e944:	e2833001 	add	r3, r3, #1
    e948:	e50b300c 	str	r3, [fp, #-12]
    e94c:	e51b3008 	ldr	r3, [fp, #-8]
    e950:	e5933000 	ldr	r3, [r3]
    e954:	e3530000 	cmp	r3, #0
    e958:	13a03000 	movne	r3, #0
    e95c:	03a03001 	moveq	r3, #1
    e960:	e6ef3073 	uxtb	r3, r3
    e964:	e51b2008 	ldr	r2, [fp, #-8]
    e968:	e2822004 	add	r2, r2, #4
    e96c:	e50b2008 	str	r2, [fp, #-8]
    e970:	e3530000 	cmp	r3, #0
    e974:	1afffff1 	bne	e940 <OSTaskStkChk+0xfc>
    e978:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    e97c:	e51b200c 	ldr	r2, [fp, #-12]
    e980:	e5832000 	str	r2, [r3]
    e984:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
    e988:	e51b300c 	ldr	r3, [fp, #-12]
    e98c:	e0632002 	rsb	r2, r3, r2
    e990:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    e994:	e5832004 	str	r2, [r3, #4]
    e998:	e3a03000 	mov	r3, #0
    e99c:	e1a00003 	mov	r0, r3
    e9a0:	e24bd004 	sub	sp, fp, #4
    e9a4:	e8bd8800 	pop	{fp, pc}

0000e9a8 <OSTaskSuspend>:
    e9a8:	e92d4800 	push	{fp, lr}
    e9ac:	e28db004 	add	fp, sp, #4
    e9b0:	e24dd018 	sub	sp, sp, #24
    e9b4:	e1a03000 	mov	r3, r0
    e9b8:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
    e9bc:	e3a03000 	mov	r3, #0
    e9c0:	e50b300c 	str	r3, [fp, #-12]
    e9c4:	eb000239 	bl	f2b0 <OS_CPU_SR_Save>
    e9c8:	e50b000c 	str	r0, [fp, #-12]
    e9cc:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
    e9d0:	e35300ff 	cmp	r3, #255	; 0xff
    e9d4:	1a000007 	bne	e9f8 <OSTaskSuspend+0x50>
    e9d8:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    e9dc:	e3403019 	movt	r3, #25
    e9e0:	e5933000 	ldr	r3, [r3]
    e9e4:	e5d3302e 	ldrb	r3, [r3, #46]	; 0x2e
    e9e8:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
    e9ec:	e3a03001 	mov	r3, #1
    e9f0:	e54b3005 	strb	r3, [fp, #-5]
    e9f4:	ea00000b 	b	ea28 <OSTaskSuspend+0x80>
    e9f8:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    e9fc:	e3403019 	movt	r3, #25
    ea00:	e5933000 	ldr	r3, [r3]
    ea04:	e5d3302e 	ldrb	r3, [r3, #46]	; 0x2e
    ea08:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
    ea0c:	e1520003 	cmp	r2, r3
    ea10:	1a000002 	bne	ea20 <OSTaskSuspend+0x78>
    ea14:	e3a03001 	mov	r3, #1
    ea18:	e54b3005 	strb	r3, [fp, #-5]
    ea1c:	ea000001 	b	ea28 <OSTaskSuspend+0x80>
    ea20:	e3a03000 	mov	r3, #0
    ea24:	e54b3005 	strb	r3, [fp, #-5]
    ea28:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
    ea2c:	e30b392c 	movw	r3, #47404	; 0xb92c
    ea30:	e3403019 	movt	r3, #25
    ea34:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    ea38:	e50b3010 	str	r3, [fp, #-16]
    ea3c:	e51b3010 	ldr	r3, [fp, #-16]
    ea40:	e3530000 	cmp	r3, #0
    ea44:	1a000003 	bne	ea58 <OSTaskSuspend+0xb0>
    ea48:	e51b000c 	ldr	r0, [fp, #-12]
    ea4c:	eb00022a 	bl	f2fc <OS_CPU_SR_Restore>
    ea50:	e3a03048 	mov	r3, #72	; 0x48
    ea54:	ea000036 	b	eb34 <OSTaskSuspend+0x18c>
    ea58:	e51b3010 	ldr	r3, [fp, #-16]
    ea5c:	e3530001 	cmp	r3, #1
    ea60:	1a000003 	bne	ea74 <OSTaskSuspend+0xcc>
    ea64:	e51b000c 	ldr	r0, [fp, #-12]
    ea68:	eb000223 	bl	f2fc <OS_CPU_SR_Restore>
    ea6c:	e3a03043 	mov	r3, #67	; 0x43
    ea70:	ea00002f 	b	eb34 <OSTaskSuspend+0x18c>
    ea74:	e51b3010 	ldr	r3, [fp, #-16]
    ea78:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    ea7c:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
    ea80:	e55b2011 	ldrb	r2, [fp, #-17]	; 0xffffffef
    ea84:	e55b1011 	ldrb	r1, [fp, #-17]	; 0xffffffef
    ea88:	e30a3f94 	movw	r3, #44948	; 0xaf94
    ea8c:	e3403019 	movt	r3, #25
    ea90:	e7d31001 	ldrb	r1, [r3, r1]
    ea94:	e51b3010 	ldr	r3, [fp, #-16]
    ea98:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    ea9c:	e1e03003 	mvn	r3, r3
    eaa0:	e6ef3073 	uxtb	r3, r3
    eaa4:	e0013003 	and	r3, r1, r3
    eaa8:	e6ef1073 	uxtb	r1, r3
    eaac:	e30a3f94 	movw	r3, #44948	; 0xaf94
    eab0:	e3403019 	movt	r3, #25
    eab4:	e7c31002 	strb	r1, [r3, r2]
    eab8:	e55b2011 	ldrb	r2, [fp, #-17]	; 0xffffffef
    eabc:	e30a3f94 	movw	r3, #44948	; 0xaf94
    eac0:	e3403019 	movt	r3, #25
    eac4:	e7d33002 	ldrb	r3, [r3, r2]
    eac8:	e3530000 	cmp	r3, #0
    eacc:	1a00000b 	bne	eb00 <OSTaskSuspend+0x158>
    ead0:	e51b3010 	ldr	r3, [fp, #-16]
    ead4:	e5d33032 	ldrb	r3, [r3, #50]	; 0x32
    ead8:	e1e03003 	mvn	r3, r3
    eadc:	e6ef2073 	uxtb	r2, r3
    eae0:	e30a3f90 	movw	r3, #44944	; 0xaf90
    eae4:	e3403019 	movt	r3, #25
    eae8:	e5d33000 	ldrb	r3, [r3]
    eaec:	e0023003 	and	r3, r2, r3
    eaf0:	e6ef2073 	uxtb	r2, r3
    eaf4:	e30a3f90 	movw	r3, #44944	; 0xaf90
    eaf8:	e3403019 	movt	r3, #25
    eafc:	e5c32000 	strb	r2, [r3]
    eb00:	e51b3010 	ldr	r3, [fp, #-16]
    eb04:	e5d3302c 	ldrb	r3, [r3, #44]	; 0x2c
    eb08:	e3833008 	orr	r3, r3, #8
    eb0c:	e6ef2073 	uxtb	r2, r3
    eb10:	e51b3010 	ldr	r3, [fp, #-16]
    eb14:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    eb18:	e51b000c 	ldr	r0, [fp, #-12]
    eb1c:	eb0001f6 	bl	f2fc <OS_CPU_SR_Restore>
    eb20:	e55b3005 	ldrb	r3, [fp, #-5]
    eb24:	e3530001 	cmp	r3, #1
    eb28:	1a000000 	bne	eb30 <OSTaskSuspend+0x188>
    eb2c:	ebffec01 	bl	9b38 <OS_Sched>
    eb30:	e3a03000 	mov	r3, #0
    eb34:	e1a00003 	mov	r0, r3
    eb38:	e24bd004 	sub	sp, fp, #4
    eb3c:	e8bd8800 	pop	{fp, pc}

0000eb40 <OSTaskQuery>:
    eb40:	e92d4800 	push	{fp, lr}
    eb44:	e28db004 	add	fp, sp, #4
    eb48:	e24dd010 	sub	sp, sp, #16
    eb4c:	e1a03000 	mov	r3, r0
    eb50:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    eb54:	e54b300d 	strb	r3, [fp, #-13]
    eb58:	e3a03000 	mov	r3, #0
    eb5c:	e50b3008 	str	r3, [fp, #-8]
    eb60:	eb0001d2 	bl	f2b0 <OS_CPU_SR_Save>
    eb64:	e50b0008 	str	r0, [fp, #-8]
    eb68:	e55b300d 	ldrb	r3, [fp, #-13]
    eb6c:	e35300ff 	cmp	r3, #255	; 0xff
    eb70:	1a000004 	bne	eb88 <OSTaskQuery+0x48>
    eb74:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    eb78:	e3403019 	movt	r3, #25
    eb7c:	e5933000 	ldr	r3, [r3]
    eb80:	e5d3302e 	ldrb	r3, [r3, #46]	; 0x2e
    eb84:	e54b300d 	strb	r3, [fp, #-13]
    eb88:	e55b200d 	ldrb	r2, [fp, #-13]
    eb8c:	e30b392c 	movw	r3, #47404	; 0xb92c
    eb90:	e3403019 	movt	r3, #25
    eb94:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    eb98:	e50b300c 	str	r3, [fp, #-12]
    eb9c:	e51b300c 	ldr	r3, [fp, #-12]
    eba0:	e3530000 	cmp	r3, #0
    eba4:	1a000003 	bne	ebb8 <OSTaskQuery+0x78>
    eba8:	e51b0008 	ldr	r0, [fp, #-8]
    ebac:	eb0001d2 	bl	f2fc <OS_CPU_SR_Restore>
    ebb0:	e3a03029 	mov	r3, #41	; 0x29
    ebb4:	ea00000d 	b	ebf0 <OSTaskQuery+0xb0>
    ebb8:	e51b300c 	ldr	r3, [fp, #-12]
    ebbc:	e3530001 	cmp	r3, #1
    ebc0:	1a000003 	bne	ebd4 <OSTaskQuery+0x94>
    ebc4:	e51b0008 	ldr	r0, [fp, #-8]
    ebc8:	eb0001cb 	bl	f2fc <OS_CPU_SR_Restore>
    ebcc:	e3a03043 	mov	r3, #67	; 0x43
    ebd0:	ea000006 	b	ebf0 <OSTaskQuery+0xb0>
    ebd4:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
    ebd8:	e51b100c 	ldr	r1, [fp, #-12]
    ebdc:	e3a02050 	mov	r2, #80	; 0x50
    ebe0:	ebffebb9 	bl	9acc <OS_MemCopy>
    ebe4:	e51b0008 	ldr	r0, [fp, #-8]
    ebe8:	eb0001c3 	bl	f2fc <OS_CPU_SR_Restore>
    ebec:	e3a03000 	mov	r3, #0
    ebf0:	e1a00003 	mov	r0, r3
    ebf4:	e24bd004 	sub	sp, fp, #4
    ebf8:	e8bd8800 	pop	{fp, pc}

0000ebfc <OSTaskRegGet>:
    ebfc:	e92d4800 	push	{fp, lr}
    ec00:	e28db004 	add	fp, sp, #4
    ec04:	e24dd018 	sub	sp, sp, #24
    ec08:	e1a03001 	mov	r3, r1
    ec0c:	e50b201c 	str	r2, [fp, #-28]	; 0xffffffe4
    ec10:	e1a02000 	mov	r2, r0
    ec14:	e54b2015 	strb	r2, [fp, #-21]	; 0xffffffeb
    ec18:	e54b3016 	strb	r3, [fp, #-22]	; 0xffffffea
    ec1c:	e3a03000 	mov	r3, #0
    ec20:	e50b300c 	str	r3, [fp, #-12]
    ec24:	eb0001a1 	bl	f2b0 <OS_CPU_SR_Save>
    ec28:	e50b000c 	str	r0, [fp, #-12]
    ec2c:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
    ec30:	e35300ff 	cmp	r3, #255	; 0xff
    ec34:	1a000004 	bne	ec4c <OSTaskRegGet+0x50>
    ec38:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    ec3c:	e3403019 	movt	r3, #25
    ec40:	e5933000 	ldr	r3, [r3]
    ec44:	e50b3008 	str	r3, [fp, #-8]
    ec48:	ea000004 	b	ec60 <OSTaskRegGet+0x64>
    ec4c:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
    ec50:	e30b392c 	movw	r3, #47404	; 0xb92c
    ec54:	e3403019 	movt	r3, #25
    ec58:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    ec5c:	e50b3008 	str	r3, [fp, #-8]
    ec60:	e55b3016 	ldrb	r3, [fp, #-22]	; 0xffffffea
    ec64:	e51b1008 	ldr	r1, [fp, #-8]
    ec68:	e2832012 	add	r2, r3, #18
    ec6c:	e3a03004 	mov	r3, #4
    ec70:	e1a02102 	lsl	r2, r2, #2
    ec74:	e0812002 	add	r2, r1, r2
    ec78:	e0823003 	add	r3, r2, r3
    ec7c:	e5933000 	ldr	r3, [r3]
    ec80:	e50b3010 	str	r3, [fp, #-16]
    ec84:	e51b000c 	ldr	r0, [fp, #-12]
    ec88:	eb00019b 	bl	f2fc <OS_CPU_SR_Restore>
    ec8c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    ec90:	e3a02000 	mov	r2, #0
    ec94:	e5c32000 	strb	r2, [r3]
    ec98:	e51b3010 	ldr	r3, [fp, #-16]
    ec9c:	e1a00003 	mov	r0, r3
    eca0:	e24bd004 	sub	sp, fp, #4
    eca4:	e8bd8800 	pop	{fp, pc}

0000eca8 <OSTaskRegGetID>:
    eca8:	e92d4800 	push	{fp, lr}
    ecac:	e28db004 	add	fp, sp, #4
    ecb0:	e24dd010 	sub	sp, sp, #16
    ecb4:	e50b0010 	str	r0, [fp, #-16]
    ecb8:	e3a03000 	mov	r3, #0
    ecbc:	e50b3008 	str	r3, [fp, #-8]
    ecc0:	eb00017a 	bl	f2b0 <OS_CPU_SR_Save>
    ecc4:	e50b0008 	str	r0, [fp, #-8]
    ecc8:	e30a3e8d 	movw	r3, #44685	; 0xae8d
    eccc:	e3403019 	movt	r3, #25
    ecd0:	e5d33000 	ldrb	r3, [r3]
    ecd4:	e3530000 	cmp	r3, #0
    ecd8:	0a000006 	beq	ecf8 <OSTaskRegGetID+0x50>
    ecdc:	e51b3010 	ldr	r3, [fp, #-16]
    ece0:	e3e02069 	mvn	r2, #105	; 0x69
    ece4:	e5c32000 	strb	r2, [r3]
    ece8:	e51b0008 	ldr	r0, [fp, #-8]
    ecec:	eb000182 	bl	f2fc <OS_CPU_SR_Restore>
    ecf0:	e3a03001 	mov	r3, #1
    ecf4:	ea000011 	b	ed40 <OSTaskRegGetID+0x98>
    ecf8:	e30a3e8d 	movw	r3, #44685	; 0xae8d
    ecfc:	e3403019 	movt	r3, #25
    ed00:	e5d33000 	ldrb	r3, [r3]
    ed04:	e54b3009 	strb	r3, [fp, #-9]
    ed08:	e30a3e8d 	movw	r3, #44685	; 0xae8d
    ed0c:	e3403019 	movt	r3, #25
    ed10:	e5d33000 	ldrb	r3, [r3]
    ed14:	e2833001 	add	r3, r3, #1
    ed18:	e6ef2073 	uxtb	r2, r3
    ed1c:	e30a3e8d 	movw	r3, #44685	; 0xae8d
    ed20:	e3403019 	movt	r3, #25
    ed24:	e5c32000 	strb	r2, [r3]
    ed28:	e51b0008 	ldr	r0, [fp, #-8]
    ed2c:	eb000172 	bl	f2fc <OS_CPU_SR_Restore>
    ed30:	e51b3010 	ldr	r3, [fp, #-16]
    ed34:	e3a02000 	mov	r2, #0
    ed38:	e5c32000 	strb	r2, [r3]
    ed3c:	e55b3009 	ldrb	r3, [fp, #-9]
    ed40:	e1a00003 	mov	r0, r3
    ed44:	e24bd004 	sub	sp, fp, #4
    ed48:	e8bd8800 	pop	{fp, pc}

0000ed4c <OSTaskRegSet>:
    ed4c:	e92d4800 	push	{fp, lr}
    ed50:	e28db004 	add	fp, sp, #4
    ed54:	e24dd018 	sub	sp, sp, #24
    ed58:	e50b2014 	str	r2, [fp, #-20]	; 0xffffffec
    ed5c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    ed60:	e1a03000 	mov	r3, r0
    ed64:	e54b300d 	strb	r3, [fp, #-13]
    ed68:	e1a03001 	mov	r3, r1
    ed6c:	e54b300e 	strb	r3, [fp, #-14]
    ed70:	e3a03000 	mov	r3, #0
    ed74:	e50b300c 	str	r3, [fp, #-12]
    ed78:	eb00014c 	bl	f2b0 <OS_CPU_SR_Save>
    ed7c:	e50b000c 	str	r0, [fp, #-12]
    ed80:	e55b300d 	ldrb	r3, [fp, #-13]
    ed84:	e35300ff 	cmp	r3, #255	; 0xff
    ed88:	1a000004 	bne	eda0 <OSTaskRegSet+0x54>
    ed8c:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    ed90:	e3403019 	movt	r3, #25
    ed94:	e5933000 	ldr	r3, [r3]
    ed98:	e50b3008 	str	r3, [fp, #-8]
    ed9c:	ea000004 	b	edb4 <OSTaskRegSet+0x68>
    eda0:	e55b200d 	ldrb	r2, [fp, #-13]
    eda4:	e30b392c 	movw	r3, #47404	; 0xb92c
    eda8:	e3403019 	movt	r3, #25
    edac:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    edb0:	e50b3008 	str	r3, [fp, #-8]
    edb4:	e55b300e 	ldrb	r3, [fp, #-14]
    edb8:	e51b1008 	ldr	r1, [fp, #-8]
    edbc:	e2832012 	add	r2, r3, #18
    edc0:	e3a03004 	mov	r3, #4
    edc4:	e1a02102 	lsl	r2, r2, #2
    edc8:	e0812002 	add	r2, r1, r2
    edcc:	e0823003 	add	r3, r2, r3
    edd0:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    edd4:	e5832000 	str	r2, [r3]
    edd8:	e51b000c 	ldr	r0, [fp, #-12]
    eddc:	eb000146 	bl	f2fc <OS_CPU_SR_Restore>
    ede0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    ede4:	e3a02000 	mov	r2, #0
    ede8:	e5c32000 	strb	r2, [r3]
    edec:	e24bd004 	sub	sp, fp, #4
    edf0:	e8bd8800 	pop	{fp, pc}

0000edf4 <OS_TaskReturn>:
    edf4:	e92d4800 	push	{fp, lr}
    edf8:	e28db004 	add	fp, sp, #4
    edfc:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    ee00:	e3403019 	movt	r3, #25
    ee04:	e5933000 	ldr	r3, [r3]
    ee08:	e1a00003 	mov	r0, r3
    ee0c:	eb000293 	bl	f860 <OSTaskReturnHook>
    ee10:	e3a000ff 	mov	r0, #255	; 0xff
    ee14:	ebfffc9d 	bl	e090 <OSTaskDel>
    ee18:	e8bd8800 	pop	{fp, pc}

0000ee1c <OS_TaskStkClr>:
    ee1c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    ee20:	e28db000 	add	fp, sp, #0
    ee24:	e24dd014 	sub	sp, sp, #20
    ee28:	e50b0008 	str	r0, [fp, #-8]
    ee2c:	e50b100c 	str	r1, [fp, #-12]
    ee30:	e1a03002 	mov	r3, r2
    ee34:	e14b30be 	strh	r3, [fp, #-14]
    ee38:	e15b30be 	ldrh	r3, [fp, #-14]
    ee3c:	e2033001 	and	r3, r3, #1
    ee40:	e3530000 	cmp	r3, #0
    ee44:	0a000010 	beq	ee8c <OS_TaskStkClr+0x70>
    ee48:	e15b30be 	ldrh	r3, [fp, #-14]
    ee4c:	e2033002 	and	r3, r3, #2
    ee50:	e3530000 	cmp	r3, #0
    ee54:	0a00000c 	beq	ee8c <OS_TaskStkClr+0x70>
    ee58:	ea000008 	b	ee80 <OS_TaskStkClr+0x64>
    ee5c:	e51b300c 	ldr	r3, [fp, #-12]
    ee60:	e2433001 	sub	r3, r3, #1
    ee64:	e50b300c 	str	r3, [fp, #-12]
    ee68:	e51b3008 	ldr	r3, [fp, #-8]
    ee6c:	e3a02000 	mov	r2, #0
    ee70:	e5832000 	str	r2, [r3]
    ee74:	e51b3008 	ldr	r3, [fp, #-8]
    ee78:	e2833004 	add	r3, r3, #4
    ee7c:	e50b3008 	str	r3, [fp, #-8]
    ee80:	e51b300c 	ldr	r3, [fp, #-12]
    ee84:	e3530000 	cmp	r3, #0
    ee88:	1afffff3 	bne	ee5c <OS_TaskStkClr+0x40>
    ee8c:	e28bd000 	add	sp, fp, #0
    ee90:	e8bd0800 	ldmfd	sp!, {fp}
    ee94:	e12fff1e 	bx	lr

0000ee98 <OSTimeDly>:
    ee98:	e92d4800 	push	{fp, lr}
    ee9c:	e28db004 	add	fp, sp, #4
    eea0:	e24dd010 	sub	sp, sp, #16
    eea4:	e50b0010 	str	r0, [fp, #-16]
    eea8:	e3a03000 	mov	r3, #0
    eeac:	e50b3008 	str	r3, [fp, #-8]
    eeb0:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    eeb4:	e3403019 	movt	r3, #25
    eeb8:	e5d33000 	ldrb	r3, [r3]
    eebc:	e3530000 	cmp	r3, #0
    eec0:	1a00003b 	bne	efb4 <OSTimeDly+0x11c>
    eec4:	e30a3e8c 	movw	r3, #44684	; 0xae8c
    eec8:	e3403019 	movt	r3, #25
    eecc:	e5d33000 	ldrb	r3, [r3]
    eed0:	e3530000 	cmp	r3, #0
    eed4:	1a000038 	bne	efbc <OSTimeDly+0x124>
    eed8:	e51b3010 	ldr	r3, [fp, #-16]
    eedc:	e3530000 	cmp	r3, #0
    eee0:	0a000036 	beq	efc0 <OSTimeDly+0x128>
    eee4:	eb0000f1 	bl	f2b0 <OS_CPU_SR_Save>
    eee8:	e50b0008 	str	r0, [fp, #-8]
    eeec:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    eef0:	e3403019 	movt	r3, #25
    eef4:	e5933000 	ldr	r3, [r3]
    eef8:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    eefc:	e54b3009 	strb	r3, [fp, #-9]
    ef00:	e55b2009 	ldrb	r2, [fp, #-9]
    ef04:	e55b1009 	ldrb	r1, [fp, #-9]
    ef08:	e30a3f94 	movw	r3, #44948	; 0xaf94
    ef0c:	e3403019 	movt	r3, #25
    ef10:	e7d31001 	ldrb	r1, [r3, r1]
    ef14:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    ef18:	e3403019 	movt	r3, #25
    ef1c:	e5933000 	ldr	r3, [r3]
    ef20:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    ef24:	e1e03003 	mvn	r3, r3
    ef28:	e6ef3073 	uxtb	r3, r3
    ef2c:	e0013003 	and	r3, r1, r3
    ef30:	e6ef1073 	uxtb	r1, r3
    ef34:	e30a3f94 	movw	r3, #44948	; 0xaf94
    ef38:	e3403019 	movt	r3, #25
    ef3c:	e7c31002 	strb	r1, [r3, r2]
    ef40:	e55b2009 	ldrb	r2, [fp, #-9]
    ef44:	e30a3f94 	movw	r3, #44948	; 0xaf94
    ef48:	e3403019 	movt	r3, #25
    ef4c:	e7d33002 	ldrb	r3, [r3, r2]
    ef50:	e3530000 	cmp	r3, #0
    ef54:	1a00000d 	bne	ef90 <OSTimeDly+0xf8>
    ef58:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    ef5c:	e3403019 	movt	r3, #25
    ef60:	e5933000 	ldr	r3, [r3]
    ef64:	e5d33032 	ldrb	r3, [r3, #50]	; 0x32
    ef68:	e1e03003 	mvn	r3, r3
    ef6c:	e6ef2073 	uxtb	r2, r3
    ef70:	e30a3f90 	movw	r3, #44944	; 0xaf90
    ef74:	e3403019 	movt	r3, #25
    ef78:	e5d33000 	ldrb	r3, [r3]
    ef7c:	e0023003 	and	r3, r2, r3
    ef80:	e6ef2073 	uxtb	r2, r3
    ef84:	e30a3f90 	movw	r3, #44944	; 0xaf90
    ef88:	e3403019 	movt	r3, #25
    ef8c:	e5c32000 	strb	r2, [r3]
    ef90:	e30a3fa4 	movw	r3, #44964	; 0xafa4
    ef94:	e3403019 	movt	r3, #25
    ef98:	e5933000 	ldr	r3, [r3]
    ef9c:	e51b2010 	ldr	r2, [fp, #-16]
    efa0:	e5832028 	str	r2, [r3, #40]	; 0x28
    efa4:	e51b0008 	ldr	r0, [fp, #-8]
    efa8:	eb0000d3 	bl	f2fc <OS_CPU_SR_Restore>
    efac:	ebffeae1 	bl	9b38 <OS_Sched>
    efb0:	ea000002 	b	efc0 <OSTimeDly+0x128>
    efb4:	e1a00000 	nop			; (mov r0, r0)
    efb8:	ea000000 	b	efc0 <OSTimeDly+0x128>
    efbc:	e1a00000 	nop			; (mov r0, r0)
    efc0:	e24bd004 	sub	sp, fp, #4
    efc4:	e8bd8800 	pop	{fp, pc}

0000efc8 <OSTimeDlyHMSM>:
    efc8:	e92d4800 	push	{fp, lr}
    efcc:	e28db004 	add	fp, sp, #4
    efd0:	e24dd010 	sub	sp, sp, #16
    efd4:	e54b000d 	strb	r0, [fp, #-13]
    efd8:	e54b100e 	strb	r1, [fp, #-14]
    efdc:	e54b200f 	strb	r2, [fp, #-15]
    efe0:	e14b31b2 	strh	r3, [fp, #-18]	; 0xffffffee
    efe4:	e30a3fa0 	movw	r3, #44960	; 0xafa0
    efe8:	e3403019 	movt	r3, #25
    efec:	e5d33000 	ldrb	r3, [r3]
    eff0:	e3530000 	cmp	r3, #0
    eff4:	0a000001 	beq	f000 <OSTimeDlyHMSM+0x38>
    eff8:	e3a03055 	mov	r3, #85	; 0x55
    effc:	ea000020 	b	f084 <OSTimeDlyHMSM+0xbc>
    f000:	e30a3e8c 	movw	r3, #44684	; 0xae8c
    f004:	e3403019 	movt	r3, #25
    f008:	e5d33000 	ldrb	r3, [r3]
    f00c:	e3530000 	cmp	r3, #0
    f010:	0a000001 	beq	f01c <OSTimeDlyHMSM+0x54>
    f014:	e3a03032 	mov	r3, #50	; 0x32
    f018:	ea000019 	b	f084 <OSTimeDlyHMSM+0xbc>
    f01c:	e55b300d 	ldrb	r3, [fp, #-13]
    f020:	e3a02ee1 	mov	r2, #3600	; 0xe10
    f024:	e0010392 	mul	r1, r2, r3
    f028:	e55b200e 	ldrb	r2, [fp, #-14]
    f02c:	e1a03002 	mov	r3, r2
    f030:	e1a03203 	lsl	r3, r3, #4
    f034:	e0623003 	rsb	r3, r2, r3
    f038:	e1a03103 	lsl	r3, r3, #2
    f03c:	e0812003 	add	r2, r1, r3
    f040:	e55b300f 	ldrb	r3, [fp, #-15]
    f044:	e0823003 	add	r3, r2, r3
    f048:	e3a02064 	mov	r2, #100	; 0x64
    f04c:	e0020392 	mul	r2, r2, r3
    f050:	e15b31b2 	ldrh	r3, [fp, #-18]	; 0xffffffee
    f054:	e3a01064 	mov	r1, #100	; 0x64
    f058:	e0030391 	mul	r3, r1, r3
    f05c:	e2831f7d 	add	r1, r3, #500	; 0x1f4
    f060:	e3043dd3 	movw	r3, #19923	; 0x4dd3
    f064:	e3413062 	movt	r3, #4194	; 0x1062
    f068:	e0830193 	umull	r0, r3, r3, r1
    f06c:	e1a03323 	lsr	r3, r3, #6
    f070:	e0823003 	add	r3, r2, r3
    f074:	e50b3008 	str	r3, [fp, #-8]
    f078:	e51b0008 	ldr	r0, [fp, #-8]
    f07c:	ebffff85 	bl	ee98 <OSTimeDly>
    f080:	e3a03000 	mov	r3, #0
    f084:	e1a00003 	mov	r0, r3
    f088:	e24bd004 	sub	sp, fp, #4
    f08c:	e8bd8800 	pop	{fp, pc}

0000f090 <OSTimeDlyResume>:
    f090:	e92d4800 	push	{fp, lr}
    f094:	e28db004 	add	fp, sp, #4
    f098:	e24dd010 	sub	sp, sp, #16
    f09c:	e1a03000 	mov	r3, r0
    f0a0:	e54b300d 	strb	r3, [fp, #-13]
    f0a4:	e3a03000 	mov	r3, #0
    f0a8:	e50b3008 	str	r3, [fp, #-8]
    f0ac:	e55b300d 	ldrb	r3, [fp, #-13]
    f0b0:	e353003e 	cmp	r3, #62	; 0x3e
    f0b4:	9a000001 	bls	f0c0 <OSTimeDlyResume+0x30>
    f0b8:	e3a0302a 	mov	r3, #42	; 0x2a
    f0bc:	ea000057 	b	f220 <OSTimeDlyResume+0x190>
    f0c0:	eb00007a 	bl	f2b0 <OS_CPU_SR_Save>
    f0c4:	e50b0008 	str	r0, [fp, #-8]
    f0c8:	e55b200d 	ldrb	r2, [fp, #-13]
    f0cc:	e30b392c 	movw	r3, #47404	; 0xb92c
    f0d0:	e3403019 	movt	r3, #25
    f0d4:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    f0d8:	e50b300c 	str	r3, [fp, #-12]
    f0dc:	e51b300c 	ldr	r3, [fp, #-12]
    f0e0:	e3530000 	cmp	r3, #0
    f0e4:	1a000003 	bne	f0f8 <OSTimeDlyResume+0x68>
    f0e8:	e51b0008 	ldr	r0, [fp, #-8]
    f0ec:	eb000082 	bl	f2fc <OS_CPU_SR_Restore>
    f0f0:	e3a03043 	mov	r3, #67	; 0x43
    f0f4:	ea000049 	b	f220 <OSTimeDlyResume+0x190>
    f0f8:	e51b300c 	ldr	r3, [fp, #-12]
    f0fc:	e3530001 	cmp	r3, #1
    f100:	1a000003 	bne	f114 <OSTimeDlyResume+0x84>
    f104:	e51b0008 	ldr	r0, [fp, #-8]
    f108:	eb00007b 	bl	f2fc <OS_CPU_SR_Restore>
    f10c:	e3a03043 	mov	r3, #67	; 0x43
    f110:	ea000042 	b	f220 <OSTimeDlyResume+0x190>
    f114:	e51b300c 	ldr	r3, [fp, #-12]
    f118:	e5933028 	ldr	r3, [r3, #40]	; 0x28
    f11c:	e3530000 	cmp	r3, #0
    f120:	1a000003 	bne	f134 <OSTimeDlyResume+0xa4>
    f124:	e51b0008 	ldr	r0, [fp, #-8]
    f128:	eb000073 	bl	f2fc <OS_CPU_SR_Restore>
    f12c:	e3a03050 	mov	r3, #80	; 0x50
    f130:	ea00003a 	b	f220 <OSTimeDlyResume+0x190>
    f134:	e51b300c 	ldr	r3, [fp, #-12]
    f138:	e3a02000 	mov	r2, #0
    f13c:	e5832028 	str	r2, [r3, #40]	; 0x28
    f140:	e51b300c 	ldr	r3, [fp, #-12]
    f144:	e5d3302c 	ldrb	r3, [r3, #44]	; 0x2c
    f148:	e2033037 	and	r3, r3, #55	; 0x37
    f14c:	e3530000 	cmp	r3, #0
    f150:	0a000009 	beq	f17c <OSTimeDlyResume+0xec>
    f154:	e51b300c 	ldr	r3, [fp, #-12]
    f158:	e5d3302c 	ldrb	r3, [r3, #44]	; 0x2c
    f15c:	e3c33037 	bic	r3, r3, #55	; 0x37
    f160:	e6ef2073 	uxtb	r2, r3
    f164:	e51b300c 	ldr	r3, [fp, #-12]
    f168:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    f16c:	e51b300c 	ldr	r3, [fp, #-12]
    f170:	e3a02001 	mov	r2, #1
    f174:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    f178:	ea000002 	b	f188 <OSTimeDlyResume+0xf8>
    f17c:	e51b300c 	ldr	r3, [fp, #-12]
    f180:	e3a02000 	mov	r2, #0
    f184:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    f188:	e51b300c 	ldr	r3, [fp, #-12]
    f18c:	e5d3302c 	ldrb	r3, [r3, #44]	; 0x2c
    f190:	e2033008 	and	r3, r3, #8
    f194:	e3530000 	cmp	r3, #0
    f198:	1a00001d 	bne	f214 <OSTimeDlyResume+0x184>
    f19c:	e51b300c 	ldr	r3, [fp, #-12]
    f1a0:	e5d32032 	ldrb	r2, [r3, #50]	; 0x32
    f1a4:	e30a3f90 	movw	r3, #44944	; 0xaf90
    f1a8:	e3403019 	movt	r3, #25
    f1ac:	e5d33000 	ldrb	r3, [r3]
    f1b0:	e1823003 	orr	r3, r2, r3
    f1b4:	e6ef2073 	uxtb	r2, r3
    f1b8:	e30a3f90 	movw	r3, #44944	; 0xaf90
    f1bc:	e3403019 	movt	r3, #25
    f1c0:	e5c32000 	strb	r2, [r3]
    f1c4:	e51b300c 	ldr	r3, [fp, #-12]
    f1c8:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    f1cc:	e1a02003 	mov	r2, r3
    f1d0:	e51b300c 	ldr	r3, [fp, #-12]
    f1d4:	e5d33030 	ldrb	r3, [r3, #48]	; 0x30
    f1d8:	e1a01003 	mov	r1, r3
    f1dc:	e30a3f94 	movw	r3, #44948	; 0xaf94
    f1e0:	e3403019 	movt	r3, #25
    f1e4:	e7d31001 	ldrb	r1, [r3, r1]
    f1e8:	e51b300c 	ldr	r3, [fp, #-12]
    f1ec:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    f1f0:	e1813003 	orr	r3, r1, r3
    f1f4:	e6ef1073 	uxtb	r1, r3
    f1f8:	e30a3f94 	movw	r3, #44948	; 0xaf94
    f1fc:	e3403019 	movt	r3, #25
    f200:	e7c31002 	strb	r1, [r3, r2]
    f204:	e51b0008 	ldr	r0, [fp, #-8]
    f208:	eb00003b 	bl	f2fc <OS_CPU_SR_Restore>
    f20c:	ebffea49 	bl	9b38 <OS_Sched>
    f210:	ea000001 	b	f21c <OSTimeDlyResume+0x18c>
    f214:	e51b0008 	ldr	r0, [fp, #-8]
    f218:	eb000037 	bl	f2fc <OS_CPU_SR_Restore>
    f21c:	e3a03000 	mov	r3, #0
    f220:	e1a00003 	mov	r0, r3
    f224:	e24bd004 	sub	sp, fp, #4
    f228:	e8bd8800 	pop	{fp, pc}

0000f22c <OSTimeGet>:
    f22c:	e92d4800 	push	{fp, lr}
    f230:	e28db004 	add	fp, sp, #4
    f234:	e24dd008 	sub	sp, sp, #8
    f238:	e3a03000 	mov	r3, #0
    f23c:	e50b3008 	str	r3, [fp, #-8]
    f240:	eb00001a 	bl	f2b0 <OS_CPU_SR_Save>
    f244:	e50b0008 	str	r0, [fp, #-8]
    f248:	e30a3fa8 	movw	r3, #44968	; 0xafa8
    f24c:	e3403019 	movt	r3, #25
    f250:	e5933000 	ldr	r3, [r3]
    f254:	e50b300c 	str	r3, [fp, #-12]
    f258:	e51b0008 	ldr	r0, [fp, #-8]
    f25c:	eb000026 	bl	f2fc <OS_CPU_SR_Restore>
    f260:	e51b300c 	ldr	r3, [fp, #-12]
    f264:	e1a00003 	mov	r0, r3
    f268:	e24bd004 	sub	sp, fp, #4
    f26c:	e8bd8800 	pop	{fp, pc}

0000f270 <OSTimeSet>:
    f270:	e92d4800 	push	{fp, lr}
    f274:	e28db004 	add	fp, sp, #4
    f278:	e24dd010 	sub	sp, sp, #16
    f27c:	e50b0010 	str	r0, [fp, #-16]
    f280:	e3a03000 	mov	r3, #0
    f284:	e50b3008 	str	r3, [fp, #-8]
    f288:	eb000008 	bl	f2b0 <OS_CPU_SR_Save>
    f28c:	e50b0008 	str	r0, [fp, #-8]
    f290:	e30a3fa8 	movw	r3, #44968	; 0xafa8
    f294:	e3403019 	movt	r3, #25
    f298:	e51b2010 	ldr	r2, [fp, #-16]
    f29c:	e5832000 	str	r2, [r3]
    f2a0:	e51b0008 	ldr	r0, [fp, #-8]
    f2a4:	eb000014 	bl	f2fc <OS_CPU_SR_Restore>
    f2a8:	e24bd004 	sub	sp, fp, #4
    f2ac:	e8bd8800 	pop	{fp, pc}

0000f2b0 <OS_CPU_SR_Save>:
    f2b0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    f2b4:	e59f146c 	ldr	r1, [pc, #1132]	; f728 <OS_CPU_ARM_CtxID_Get+0x8>
    f2b8:	e5910000 	ldr	r0, [r1]
    f2bc:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    f2c0:	e10f0000 	mrs	r0, CPSR
    f2c4:	e59f1460 	ldr	r1, [pc, #1120]	; f72c <OS_CPU_ARM_CtxID_Get+0xc>
    f2c8:	e0001001 	and	r1, r0, r1
    f2cc:	e49d0004 	pop	{r0}		; (ldr r0, [sp], #4)
    f2d0:	e1800001 	orr	r0, r0, r1
    f2d4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    f2d8:	e38000c0 	orr	r0, r0, #192	; 0xc0
    f2dc:	e12cf000 	msr	CPSR_fs, r0
    f2e0:	e59f1448 	ldr	r1, [pc, #1096]	; f730 <OS_CPU_ARM_CtxID_Get+0x10>
    f2e4:	e0000001 	and	r0, r0, r1
    f2e8:	e59f1438 	ldr	r1, [pc, #1080]	; f728 <OS_CPU_ARM_CtxID_Get+0x8>
    f2ec:	e5810000 	str	r0, [r1]
    f2f0:	e49d0004 	pop	{r0}		; (ldr r0, [sp], #4)
    f2f4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    f2f8:	e12fff1e 	bx	lr

0000f2fc <OS_CPU_SR_Restore>:
    f2fc:	e92d0003 	push	{r0, r1}
    f300:	e12cf000 	msr	CPSR_fs, r0
    f304:	e59f1424 	ldr	r1, [pc, #1060]	; f730 <OS_CPU_ARM_CtxID_Get+0x10>
    f308:	e0000001 	and	r0, r0, r1
    f30c:	e59f1414 	ldr	r1, [pc, #1044]	; f728 <OS_CPU_ARM_CtxID_Get+0x8>
    f310:	e5810000 	str	r0, [r1]
    f314:	e2000080 	and	r0, r0, #128	; 0x80
    f318:	e3500000 	cmp	r0, #0
    f31c:	1a000003 	bne	f330 <OS_CPU_SR_Restore_Exit>
    f320:	e59f040c 	ldr	r0, [pc, #1036]	; f734 <OS_CPU_ARM_CtxID_Get+0x14>
    f324:	e5900000 	ldr	r0, [r0]
    f328:	e3500000 	cmp	r0, #0
    f32c:	1f00001f 	svcne	0x0000001f

0000f330 <OS_CPU_SR_Restore_Exit>:
    f330:	e8bd0003 	pop	{r0, r1}
    f334:	e12fff1e 	bx	lr

0000f338 <OSStartHighRdy>:
    f338:	e59f03f8 	ldr	r0, [pc, #1016]	; f738 <OS_CPU_ARM_CtxID_Get+0x18>
    f33c:	e1a0e00f 	mov	lr, pc
    f340:	e12fff10 	bx	r0
    f344:	e59f03f0 	ldr	r0, [pc, #1008]	; f73c <OS_CPU_ARM_CtxID_Get+0x1c>
    f348:	e3a01001 	mov	r1, #1
    f34c:	e5c01000 	strb	r1, [r0]
    f350:	e59f03e8 	ldr	r0, [pc, #1000]	; f740 <OS_CPU_ARM_CtxID_Get+0x20>
    f354:	e5900000 	ldr	r0, [r0]
    f358:	e590d000 	ldr	sp, [r0]
    f35c:	e8bd0001 	ldmfd	sp!, {r0}
    f360:	e12cf000 	msr	CPSR_fs, r0
    f364:	e59f13c4 	ldr	r1, [pc, #964]	; f730 <OS_CPU_ARM_CtxID_Get+0x10>
    f368:	e0000001 	and	r0, r0, r1
    f36c:	e59f13b4 	ldr	r1, [pc, #948]	; f728 <OS_CPU_ARM_CtxID_Get+0x8>
    f370:	e5810000 	str	r0, [r1]
    f374:	e2000080 	and	r0, r0, #128	; 0x80
    f378:	e3500000 	cmp	r0, #0
    f37c:	1a000003 	bne	f390 <OSStartHighRdy_Exit>
    f380:	e59f03ac 	ldr	r0, [pc, #940]	; f734 <OS_CPU_ARM_CtxID_Get+0x14>
    f384:	e5900000 	ldr	r0, [r0]
    f388:	e3500000 	cmp	r0, #0
    f38c:	1f00001f 	svcne	0x0000001f

0000f390 <OSStartHighRdy_Exit>:
    f390:	e8bddfff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}

0000f394 <OSCtxSw>:
    f394:	e92d4000 	stmfd	sp!, {lr}
    f398:	e92d4000 	stmfd	sp!, {lr}
    f39c:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    f3a0:	e10f0000 	mrs	r0, CPSR
    f3a4:	e59f137c 	ldr	r1, [pc, #892]	; f728 <OS_CPU_ARM_CtxID_Get+0x8>
    f3a8:	e5910000 	ldr	r0, [r1]
    f3ac:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    f3b0:	e10f0000 	mrs	r0, CPSR
    f3b4:	e59f1370 	ldr	r1, [pc, #880]	; f72c <OS_CPU_ARM_CtxID_Get+0xc>
    f3b8:	e0001001 	and	r1, r0, r1
    f3bc:	e49d0004 	pop	{r0}		; (ldr r0, [sp], #4)
    f3c0:	e1800001 	orr	r0, r0, r1
    f3c4:	e31e0001 	tst	lr, #1
    f3c8:	13800020 	orrne	r0, r0, #32
    f3cc:	e92d0001 	stmfd	sp!, {r0}
    f3d0:	e59f036c 	ldr	r0, [pc, #876]	; f744 <OS_CPU_ARM_CtxID_Get+0x24>
    f3d4:	e5901000 	ldr	r1, [r0]
    f3d8:	e581d000 	str	sp, [r1]
    f3dc:	e59f0354 	ldr	r0, [pc, #852]	; f738 <OS_CPU_ARM_CtxID_Get+0x18>
    f3e0:	e1a0e00f 	mov	lr, pc
    f3e4:	e12fff10 	bx	r0
    f3e8:	e59f0358 	ldr	r0, [pc, #856]	; f748 <OS_CPU_ARM_CtxID_Get+0x28>
    f3ec:	e59f1358 	ldr	r1, [pc, #856]	; f74c <OS_CPU_ARM_CtxID_Get+0x2c>
    f3f0:	e5d12000 	ldrb	r2, [r1]
    f3f4:	e5c02000 	strb	r2, [r0]
    f3f8:	e59f0344 	ldr	r0, [pc, #836]	; f744 <OS_CPU_ARM_CtxID_Get+0x24>
    f3fc:	e59f133c 	ldr	r1, [pc, #828]	; f740 <OS_CPU_ARM_CtxID_Get+0x20>
    f400:	e5912000 	ldr	r2, [r1]
    f404:	e5802000 	str	r2, [r0]
    f408:	e592d000 	ldr	sp, [r2]
    f40c:	f57ff01f 	clrex
    f410:	e8bd0001 	ldmfd	sp!, {r0}
    f414:	e12cf000 	msr	CPSR_fs, r0
    f418:	e59f1310 	ldr	r1, [pc, #784]	; f730 <OS_CPU_ARM_CtxID_Get+0x10>
    f41c:	e0000001 	and	r0, r0, r1
    f420:	e59f1300 	ldr	r1, [pc, #768]	; f728 <OS_CPU_ARM_CtxID_Get+0x8>
    f424:	e5810000 	str	r0, [r1]
    f428:	e2000080 	and	r0, r0, #128	; 0x80
    f42c:	e3500000 	cmp	r0, #0
    f430:	1a000003 	bne	f444 <OSCtxSw_Exit>
    f434:	e59f02f8 	ldr	r0, [pc, #760]	; f734 <OS_CPU_ARM_CtxID_Get+0x14>
    f438:	e5900000 	ldr	r0, [r0]
    f43c:	e3500000 	cmp	r0, #0
    f440:	1f00001f 	svcne	0x0000001f

0000f444 <OSCtxSw_Exit>:
    f444:	e8bddfff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}

0000f448 <OSIntCtxSw>:
    f448:	e59f02e8 	ldr	r0, [pc, #744]	; f738 <OS_CPU_ARM_CtxID_Get+0x18>
    f44c:	e1a0e00f 	mov	lr, pc
    f450:	e12fff10 	bx	r0
    f454:	e59f02ec 	ldr	r0, [pc, #748]	; f748 <OS_CPU_ARM_CtxID_Get+0x28>
    f458:	e59f12ec 	ldr	r1, [pc, #748]	; f74c <OS_CPU_ARM_CtxID_Get+0x2c>
    f45c:	e5d12000 	ldrb	r2, [r1]
    f460:	e5c02000 	strb	r2, [r0]
    f464:	e59f02d8 	ldr	r0, [pc, #728]	; f744 <OS_CPU_ARM_CtxID_Get+0x24>
    f468:	e59f12d0 	ldr	r1, [pc, #720]	; f740 <OS_CPU_ARM_CtxID_Get+0x20>
    f46c:	e5912000 	ldr	r2, [r1]
    f470:	e5802000 	str	r2, [r0]
    f474:	e592d000 	ldr	sp, [r2]
    f478:	f57ff01f 	clrex
    f47c:	e8bd0001 	ldmfd	sp!, {r0}
    f480:	e12cf000 	msr	CPSR_fs, r0
    f484:	e59f12a4 	ldr	r1, [pc, #676]	; f730 <OS_CPU_ARM_CtxID_Get+0x10>
    f488:	e0000001 	and	r0, r0, r1
    f48c:	e59f1294 	ldr	r1, [pc, #660]	; f728 <OS_CPU_ARM_CtxID_Get+0x8>
    f490:	e5810000 	str	r0, [r1]
    f494:	e2000080 	and	r0, r0, #128	; 0x80
    f498:	e3500000 	cmp	r0, #0
    f49c:	1a000003 	bne	f4b0 <OSIntCtxSw_Exit>
    f4a0:	e59f028c 	ldr	r0, [pc, #652]	; f734 <OS_CPU_ARM_CtxID_Get+0x14>
    f4a4:	e5900000 	ldr	r0, [r0]
    f4a8:	e3500000 	cmp	r0, #0
    f4ac:	1f00001f 	svcne	0x0000001f

0000f4b0 <OSIntCtxSw_Exit>:
    f4b0:	e8bddfff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}

0000f4b4 <OS_CPU_ARM_ExceptDataAbortHndlr>:
    f4b4:	e92d4000 	stmfd	sp!, {lr}
    f4b8:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    f4bc:	e59f128c 	ldr	r1, [pc, #652]	; f750 <OS_CPU_ARM_CtxID_Get+0x30>
    f4c0:	e5910000 	ldr	r0, [r1]
    f4c4:	e92d0001 	stmfd	sp!, {r0}
    f4c8:	e3a00006 	mov	r0, #6
    f4cc:	e59f3268 	ldr	r3, [pc, #616]	; f73c <OS_CPU_ARM_CtxID_Get+0x1c>
    f4d0:	e5d34000 	ldrb	r4, [r3]
    f4d4:	e3540001 	cmp	r4, #1
    f4d8:	1a000038 	bne	f5c0 <OS_CPU_ARM_IRQHndlr_BreakNothing>
    f4dc:	e59f3270 	ldr	r3, [pc, #624]	; f754 <OS_CPU_ARM_CtxID_Get+0x34>
    f4e0:	e5d34000 	ldrb	r4, [r3]
    f4e4:	e2844001 	add	r4, r4, #1
    f4e8:	e5c34000 	strb	r4, [r3]
    f4ec:	e3540001 	cmp	r4, #1
    f4f0:	1a00001b 	bne	f564 <OS_CPU_ARM_IRQHndlr_BreakIRQ>

0000f4f4 <OS_CPU_ARM_IRQHndlr_BreakTask>:
    f4f4:	e59f3248 	ldr	r3, [pc, #584]	; f744 <OS_CPU_ARM_CtxID_Get+0x24>
    f4f8:	e5934000 	ldr	r4, [r3]
    f4fc:	e584d000 	str	sp, [r4]
    f500:	e59f3250 	ldr	r3, [pc, #592]	; f758 <OS_CPU_ARM_CtxID_Get+0x38>
    f504:	e593d000 	ldr	sp, [r3]
    f508:	e59f124c 	ldr	r1, [pc, #588]	; f75c <OS_CPU_ARM_CtxID_Get+0x3c>
    f50c:	e1a0e00f 	mov	lr, pc
    f510:	e12fff11 	bx	r1
    f514:	e59f0244 	ldr	r0, [pc, #580]	; f760 <OS_CPU_ARM_CtxID_Get+0x40>
    f518:	e1a0e00f 	mov	lr, pc
    f51c:	e12fff10 	bx	r0
    f520:	e59f321c 	ldr	r3, [pc, #540]	; f744 <OS_CPU_ARM_CtxID_Get+0x24>
    f524:	e5934000 	ldr	r4, [r3]
    f528:	e594d000 	ldr	sp, [r4]
    f52c:	e8bd0001 	ldmfd	sp!, {r0}
    f530:	e12cf000 	msr	CPSR_fs, r0
    f534:	e59f11f4 	ldr	r1, [pc, #500]	; f730 <OS_CPU_ARM_CtxID_Get+0x10>
    f538:	e0000001 	and	r0, r0, r1
    f53c:	e59f11e4 	ldr	r1, [pc, #484]	; f728 <OS_CPU_ARM_CtxID_Get+0x8>
    f540:	e5810000 	str	r0, [r1]
    f544:	e2000080 	and	r0, r0, #128	; 0x80
    f548:	e3500000 	cmp	r0, #0
    f54c:	1a000003 	bne	f560 <BreakTask_Exit>
    f550:	e59f01dc 	ldr	r0, [pc, #476]	; f734 <OS_CPU_ARM_CtxID_Get+0x14>
    f554:	e5900000 	ldr	r0, [r0]
    f558:	e3500000 	cmp	r0, #0
    f55c:	1f00001f 	svcne	0x0000001f

0000f560 <BreakTask_Exit>:
    f560:	e8bddfff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}

0000f564 <OS_CPU_ARM_IRQHndlr_BreakIRQ>:
    f564:	e59f31f8 	ldr	r3, [pc, #504]	; f764 <OS_CPU_ARM_CtxID_Get+0x44>
    f568:	e583d000 	str	sp, [r3]
    f56c:	e59f31e8 	ldr	r3, [pc, #488]	; f75c <OS_CPU_ARM_CtxID_Get+0x3c>
    f570:	e1a0e00f 	mov	lr, pc
    f574:	e12fff13 	bx	r3
    f578:	e59f31d4 	ldr	r3, [pc, #468]	; f754 <OS_CPU_ARM_CtxID_Get+0x34>
    f57c:	e5d34000 	ldrb	r4, [r3]
    f580:	e2444001 	sub	r4, r4, #1
    f584:	e5c34000 	strb	r4, [r3]
    f588:	e8bd0001 	ldmfd	sp!, {r0}
    f58c:	e12cf000 	msr	CPSR_fs, r0
    f590:	e59f1198 	ldr	r1, [pc, #408]	; f730 <OS_CPU_ARM_CtxID_Get+0x10>
    f594:	e0000001 	and	r0, r0, r1
    f598:	e59f1188 	ldr	r1, [pc, #392]	; f728 <OS_CPU_ARM_CtxID_Get+0x8>
    f59c:	e5810000 	str	r0, [r1]
    f5a0:	e2000080 	and	r0, r0, #128	; 0x80
    f5a4:	e3500000 	cmp	r0, #0
    f5a8:	1a000003 	bne	f5bc <BreakIRQ_Exit>
    f5ac:	e59f0180 	ldr	r0, [pc, #384]	; f734 <OS_CPU_ARM_CtxID_Get+0x14>
    f5b0:	e5900000 	ldr	r0, [r0]
    f5b4:	e3500000 	cmp	r0, #0
    f5b8:	1f00001f 	svcne	0x0000001f

0000f5bc <BreakIRQ_Exit>:
    f5bc:	e8bddfff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}

0000f5c0 <OS_CPU_ARM_IRQHndlr_BreakNothing>:
    f5c0:	e59f3194 	ldr	r3, [pc, #404]	; f75c <OS_CPU_ARM_CtxID_Get+0x3c>
    f5c4:	e1a0e00f 	mov	lr, pc
    f5c8:	e12fff13 	bx	r3
    f5cc:	e8bd0001 	ldmfd	sp!, {r0}
    f5d0:	e12cf000 	msr	CPSR_fs, r0
    f5d4:	e59f1154 	ldr	r1, [pc, #340]	; f730 <OS_CPU_ARM_CtxID_Get+0x10>
    f5d8:	e0000001 	and	r0, r0, r1
    f5dc:	e59f1144 	ldr	r1, [pc, #324]	; f728 <OS_CPU_ARM_CtxID_Get+0x8>
    f5e0:	e5810000 	str	r0, [r1]
    f5e4:	e2000080 	and	r0, r0, #128	; 0x80
    f5e8:	e3500000 	cmp	r0, #0
    f5ec:	1a000003 	bne	f600 <BreakNTH_Exit>
    f5f0:	e59f013c 	ldr	r0, [pc, #316]	; f734 <OS_CPU_ARM_CtxID_Get+0x14>
    f5f4:	e5900000 	ldr	r0, [r0]
    f5f8:	e3500000 	cmp	r0, #0
    f5fc:	1f00001f 	svcne	0x0000001f

0000f600 <BreakNTH_Exit>:
    f600:	e8bddfff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
    f604:	e8bddfff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}

0000f608 <OS_CPU_SR_INT_En>:
    f608:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    f60c:	e59f1114 	ldr	r1, [pc, #276]	; f728 <OS_CPU_ARM_CtxID_Get+0x8>
    f610:	e5910000 	ldr	r0, [r1]
    f614:	e3c000c0 	bic	r0, r0, #192	; 0xc0
    f618:	e59f1110 	ldr	r1, [pc, #272]	; f730 <OS_CPU_ARM_CtxID_Get+0x10>
    f61c:	e0000001 	and	r0, r0, r1
    f620:	e59f1100 	ldr	r1, [pc, #256]	; f728 <OS_CPU_ARM_CtxID_Get+0x8>
    f624:	e5810000 	str	r0, [r1]
    f628:	e59f0104 	ldr	r0, [pc, #260]	; f734 <OS_CPU_ARM_CtxID_Get+0x14>
    f62c:	e5900000 	ldr	r0, [r0]
    f630:	e3500000 	cmp	r0, #0
    f634:	1f00001f 	svcne	0x0000001f
    f638:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    f63c:	e12fff1e 	bx	lr

0000f640 <OS_CPU_SR_INT_Dis>:
    f640:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    f644:	e59f10dc 	ldr	r1, [pc, #220]	; f728 <OS_CPU_ARM_CtxID_Get+0x8>
    f648:	e5910000 	ldr	r0, [r1]
    f64c:	e38000c0 	orr	r0, r0, #192	; 0xc0
    f650:	e59f10d8 	ldr	r1, [pc, #216]	; f730 <OS_CPU_ARM_CtxID_Get+0x10>
    f654:	e0000001 	and	r0, r0, r1
    f658:	e59f10c8 	ldr	r1, [pc, #200]	; f728 <OS_CPU_ARM_CtxID_Get+0x8>
    f65c:	e5810000 	str	r0, [r1]
    f660:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    f664:	e12fff1e 	bx	lr

0000f668 <OS_CPU_SR_IRQ_En>:
    f668:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    f66c:	e59f10b4 	ldr	r1, [pc, #180]	; f728 <OS_CPU_ARM_CtxID_Get+0x8>
    f670:	e5910000 	ldr	r0, [r1]
    f674:	e3c00080 	bic	r0, r0, #128	; 0x80
    f678:	e59f10b0 	ldr	r1, [pc, #176]	; f730 <OS_CPU_ARM_CtxID_Get+0x10>
    f67c:	e0000001 	and	r0, r0, r1
    f680:	e59f10a0 	ldr	r1, [pc, #160]	; f728 <OS_CPU_ARM_CtxID_Get+0x8>
    f684:	e5810000 	str	r0, [r1]
    f688:	e59f00a4 	ldr	r0, [pc, #164]	; f734 <OS_CPU_ARM_CtxID_Get+0x14>
    f68c:	e5900000 	ldr	r0, [r0]
    f690:	e3500000 	cmp	r0, #0
    f694:	1f00001f 	svcne	0x0000001f
    f698:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    f69c:	e12fff1e 	bx	lr

0000f6a0 <OS_CPU_SR_IRQ_Dis>:
    f6a0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    f6a4:	e59f107c 	ldr	r1, [pc, #124]	; f728 <OS_CPU_ARM_CtxID_Get+0x8>
    f6a8:	e5910000 	ldr	r0, [r1]
    f6ac:	e3800080 	orr	r0, r0, #128	; 0x80
    f6b0:	e59f1078 	ldr	r1, [pc, #120]	; f730 <OS_CPU_ARM_CtxID_Get+0x10>
    f6b4:	e0000001 	and	r0, r0, r1
    f6b8:	e59f1068 	ldr	r1, [pc, #104]	; f728 <OS_CPU_ARM_CtxID_Get+0x8>
    f6bc:	e5810000 	str	r0, [r1]
    f6c0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    f6c4:	e12fff1e 	bx	lr

0000f6c8 <OS_CPU_SR_FIQ_En>:
    f6c8:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    f6cc:	e59f1054 	ldr	r1, [pc, #84]	; f728 <OS_CPU_ARM_CtxID_Get+0x8>
    f6d0:	e5910000 	ldr	r0, [r1]
    f6d4:	e3c00040 	bic	r0, r0, #64	; 0x40
    f6d8:	e59f1050 	ldr	r1, [pc, #80]	; f730 <OS_CPU_ARM_CtxID_Get+0x10>
    f6dc:	e0000001 	and	r0, r0, r1
    f6e0:	e59f1040 	ldr	r1, [pc, #64]	; f728 <OS_CPU_ARM_CtxID_Get+0x8>
    f6e4:	e5810000 	str	r0, [r1]
    f6e8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    f6ec:	e12fff1e 	bx	lr

0000f6f0 <OS_CPU_SR_FIQ_Dis>:
    f6f0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    f6f4:	e59f102c 	ldr	r1, [pc, #44]	; f728 <OS_CPU_ARM_CtxID_Get+0x8>
    f6f8:	e5910000 	ldr	r0, [r1]
    f6fc:	e3800040 	orr	r0, r0, #64	; 0x40
    f700:	e59f1028 	ldr	r1, [pc, #40]	; f730 <OS_CPU_ARM_CtxID_Get+0x10>
    f704:	e0000001 	and	r0, r0, r1
    f708:	e59f1018 	ldr	r1, [pc, #24]	; f728 <OS_CPU_ARM_CtxID_Get+0x8>
    f70c:	e5810000 	str	r0, [r1]
    f710:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    f714:	e12fff1e 	bx	lr

0000f718 <OS_CPU_ARM_CtxID_Set>:
    f718:	ee0d0f30 	mcr	15, 0, r0, cr13, cr0, {1}
    f71c:	e12fff1e 	bx	lr

0000f720 <OS_CPU_ARM_CtxID_Get>:
    f720:	ee1d0f30 	mrc	15, 0, r0, cr13, cr0, {1}
    f724:	e12fff1e 	bx	lr
    f728:	0019bed4 			; <UNDEFINED> instruction: 0x0019bed4
    f72c:	f80f0000 			; <UNDEFINED> instruction: 0xf80f0000
    f730:	0000ffff 	strdeq	pc, [r0], -pc	; <UNPREDICTABLE>
    f734:	0019bedc 			; <UNDEFINED> instruction: 0x0019bedc
    f738:	0000fac4 	andeq	pc, r0, r4, asr #21
    f73c:	0019ae8e 	andseq	sl, r9, lr, lsl #29
    f740:	0019af88 	andseq	sl, r9, r8, lsl #31
    f744:	0019afa4 	andseq	sl, r9, r4, lsr #31
    f748:	0019ae95 	mulseq	r9, r5, lr
    f74c:	0019ae94 	mulseq	r9, r4, lr
    f750:	0019bed8 			; <UNDEFINED> instruction: 0x0019bed8
    f754:	0019afa0 	andseq	sl, r9, r0, lsr #31
    f758:	0019ba2c 	andseq	fp, r9, ip, lsr #20
    f75c:	0000fcd8 	ldrdeq	pc, [r0], -r8
    f760:	00008a6c 	andeq	r8, r0, ip, ror #20
    f764:	0019ba30 	andseq	fp, r9, r0, lsr sl

0000f768 <OSInitHookBegin>:
    f768:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    f76c:	e28db000 	add	fp, sp, #0
    f770:	e24dd00c 	sub	sp, sp, #12
    f774:	e30b3a34 	movw	r3, #47668	; 0xba34
    f778:	e3403019 	movt	r3, #25
    f77c:	e50b300c 	str	r3, [fp, #-12]
    f780:	e3a03080 	mov	r3, #128	; 0x80
    f784:	e50b3008 	str	r3, [fp, #-8]
    f788:	ea000008 	b	f7b0 <OSInitHookBegin+0x48>
    f78c:	e51b3008 	ldr	r3, [fp, #-8]
    f790:	e2433001 	sub	r3, r3, #1
    f794:	e50b3008 	str	r3, [fp, #-8]
    f798:	e51b300c 	ldr	r3, [fp, #-12]
    f79c:	e3a02000 	mov	r2, #0
    f7a0:	e5832000 	str	r2, [r3]
    f7a4:	e51b300c 	ldr	r3, [fp, #-12]
    f7a8:	e2833004 	add	r3, r3, #4
    f7ac:	e50b300c 	str	r3, [fp, #-12]
    f7b0:	e51b3008 	ldr	r3, [fp, #-8]
    f7b4:	e3530000 	cmp	r3, #0
    f7b8:	1afffff3 	bne	f78c <OSInitHookBegin+0x24>
    f7bc:	e30b3a2c 	movw	r3, #47660	; 0xba2c
    f7c0:	e3403019 	movt	r3, #25
    f7c4:	e59f202c 	ldr	r2, [pc, #44]	; f7f8 <OSInitHookBegin+0x90>
    f7c8:	e5832000 	str	r2, [r3]
    f7cc:	e30b3a2c 	movw	r3, #47660	; 0xba2c
    f7d0:	e3403019 	movt	r3, #25
    f7d4:	e5933000 	ldr	r3, [r3]
    f7d8:	e3c33007 	bic	r3, r3, #7
    f7dc:	e1a02003 	mov	r2, r3
    f7e0:	e30b3a2c 	movw	r3, #47660	; 0xba2c
    f7e4:	e3403019 	movt	r3, #25
    f7e8:	e5832000 	str	r2, [r3]
    f7ec:	e28bd000 	add	sp, fp, #0
    f7f0:	e8bd0800 	ldmfd	sp!, {fp}
    f7f4:	e12fff1e 	bx	lr
    f7f8:	0019bc34 	andseq	fp, r9, r4, lsr ip

0000f7fc <OSInitHookEnd>:
    f7fc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    f800:	e28db000 	add	fp, sp, #0
    f804:	e28bd000 	add	sp, fp, #0
    f808:	e8bd0800 	ldmfd	sp!, {fp}
    f80c:	e12fff1e 	bx	lr

0000f810 <OSTaskCreateHook>:
    f810:	e92d4800 	push	{fp, lr}
    f814:	e28db004 	add	fp, sp, #4
    f818:	e24dd008 	sub	sp, sp, #8
    f81c:	e50b0008 	str	r0, [fp, #-8]
    f820:	e51b0008 	ldr	r0, [fp, #-8]
    f824:	eb001562 	bl	14db4 <App_TaskCreateHook>
    f828:	e24bd004 	sub	sp, fp, #4
    f82c:	e8bd8800 	pop	{fp, pc}

0000f830 <OSTaskDelHook>:
    f830:	e92d4800 	push	{fp, lr}
    f834:	e28db004 	add	fp, sp, #4
    f838:	e24dd008 	sub	sp, sp, #8
    f83c:	e50b0008 	str	r0, [fp, #-8]
    f840:	e51b0008 	ldr	r0, [fp, #-8]
    f844:	eb001561 	bl	14dd0 <App_TaskDelHook>
    f848:	e24bd004 	sub	sp, fp, #4
    f84c:	e8bd8800 	pop	{fp, pc}

0000f850 <OSTaskIdleHook>:
    f850:	e92d4800 	push	{fp, lr}
    f854:	e28db004 	add	fp, sp, #4
    f858:	eb001563 	bl	14dec <App_TaskIdleHook>
    f85c:	e8bd8800 	pop	{fp, pc}

0000f860 <OSTaskReturnHook>:
    f860:	e92d4800 	push	{fp, lr}
    f864:	e28db004 	add	fp, sp, #4
    f868:	e24dd008 	sub	sp, sp, #8
    f86c:	e50b0008 	str	r0, [fp, #-8]
    f870:	e51b0008 	ldr	r0, [fp, #-8]
    f874:	eb001560 	bl	14dfc <App_TaskReturnHook>
    f878:	e24bd004 	sub	sp, fp, #4
    f87c:	e8bd8800 	pop	{fp, pc}

0000f880 <OSTaskStatHook>:
    f880:	e92d4800 	push	{fp, lr}
    f884:	e28db004 	add	fp, sp, #4
    f888:	eb001562 	bl	14e18 <App_TaskStatHook>
    f88c:	e8bd8800 	pop	{fp, pc}

0000f890 <OSTaskStkInit>:
    f890:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    f894:	e28db000 	add	fp, sp, #0
    f898:	e24dd01c 	sub	sp, sp, #28
    f89c:	e50b0010 	str	r0, [fp, #-16]
    f8a0:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    f8a4:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
    f8a8:	e14b31ba 	strh	r3, [fp, #-26]	; 0xffffffe6
    f8ac:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    f8b0:	e2833004 	add	r3, r3, #4
    f8b4:	e50b3008 	str	r3, [fp, #-8]
    f8b8:	e51b3008 	ldr	r3, [fp, #-8]
    f8bc:	e3c33007 	bic	r3, r3, #7
    f8c0:	e50b3008 	str	r3, [fp, #-8]
    f8c4:	e51b3010 	ldr	r3, [fp, #-16]
    f8c8:	e3c33001 	bic	r3, r3, #1
    f8cc:	e50b300c 	str	r3, [fp, #-12]
    f8d0:	e51b3008 	ldr	r3, [fp, #-8]
    f8d4:	e2433004 	sub	r3, r3, #4
    f8d8:	e50b3008 	str	r3, [fp, #-8]
    f8dc:	e51b3008 	ldr	r3, [fp, #-8]
    f8e0:	e51b200c 	ldr	r2, [fp, #-12]
    f8e4:	e5832000 	str	r2, [r3]
    f8e8:	e51b3008 	ldr	r3, [fp, #-8]
    f8ec:	e2433004 	sub	r3, r3, #4
    f8f0:	e50b3008 	str	r3, [fp, #-8]
    f8f4:	e30e3df4 	movw	r3, #60916	; 0xedf4
    f8f8:	e3403000 	movt	r3, #0
    f8fc:	e51b2008 	ldr	r2, [fp, #-8]
    f900:	e5823000 	str	r3, [r2]
    f904:	e51b3008 	ldr	r3, [fp, #-8]
    f908:	e2433004 	sub	r3, r3, #4
    f90c:	e50b3008 	str	r3, [fp, #-8]
    f910:	e51b2008 	ldr	r2, [fp, #-8]
    f914:	e3013212 	movw	r3, #4626	; 0x1212
    f918:	e3413212 	movt	r3, #4626	; 0x1212
    f91c:	e5823000 	str	r3, [r2]
    f920:	e51b3008 	ldr	r3, [fp, #-8]
    f924:	e2433004 	sub	r3, r3, #4
    f928:	e50b3008 	str	r3, [fp, #-8]
    f92c:	e51b2008 	ldr	r2, [fp, #-8]
    f930:	e3013111 	movw	r3, #4369	; 0x1111
    f934:	e3413111 	movt	r3, #4369	; 0x1111
    f938:	e5823000 	str	r3, [r2]
    f93c:	e51b3008 	ldr	r3, [fp, #-8]
    f940:	e2433004 	sub	r3, r3, #4
    f944:	e50b3008 	str	r3, [fp, #-8]
    f948:	e51b2008 	ldr	r2, [fp, #-8]
    f94c:	e3013010 	movw	r3, #4112	; 0x1010
    f950:	e3413010 	movt	r3, #4112	; 0x1010
    f954:	e5823000 	str	r3, [r2]
    f958:	e51b3008 	ldr	r3, [fp, #-8]
    f95c:	e2433004 	sub	r3, r3, #4
    f960:	e50b3008 	str	r3, [fp, #-8]
    f964:	e51b2008 	ldr	r2, [fp, #-8]
    f968:	e3003909 	movw	r3, #2313	; 0x909
    f96c:	e3403909 	movt	r3, #2313	; 0x909
    f970:	e5823000 	str	r3, [r2]
    f974:	e51b3008 	ldr	r3, [fp, #-8]
    f978:	e2433004 	sub	r3, r3, #4
    f97c:	e50b3008 	str	r3, [fp, #-8]
    f980:	e51b2008 	ldr	r2, [fp, #-8]
    f984:	e3003808 	movw	r3, #2056	; 0x808
    f988:	e3403808 	movt	r3, #2056	; 0x808
    f98c:	e5823000 	str	r3, [r2]
    f990:	e51b3008 	ldr	r3, [fp, #-8]
    f994:	e2433004 	sub	r3, r3, #4
    f998:	e50b3008 	str	r3, [fp, #-8]
    f99c:	e51b2008 	ldr	r2, [fp, #-8]
    f9a0:	e3003707 	movw	r3, #1799	; 0x707
    f9a4:	e3403707 	movt	r3, #1799	; 0x707
    f9a8:	e5823000 	str	r3, [r2]
    f9ac:	e51b3008 	ldr	r3, [fp, #-8]
    f9b0:	e2433004 	sub	r3, r3, #4
    f9b4:	e50b3008 	str	r3, [fp, #-8]
    f9b8:	e51b2008 	ldr	r2, [fp, #-8]
    f9bc:	e3003606 	movw	r3, #1542	; 0x606
    f9c0:	e3403606 	movt	r3, #1542	; 0x606
    f9c4:	e5823000 	str	r3, [r2]
    f9c8:	e51b3008 	ldr	r3, [fp, #-8]
    f9cc:	e2433004 	sub	r3, r3, #4
    f9d0:	e50b3008 	str	r3, [fp, #-8]
    f9d4:	e51b2008 	ldr	r2, [fp, #-8]
    f9d8:	e3003505 	movw	r3, #1285	; 0x505
    f9dc:	e3403505 	movt	r3, #1285	; 0x505
    f9e0:	e5823000 	str	r3, [r2]
    f9e4:	e51b3008 	ldr	r3, [fp, #-8]
    f9e8:	e2433004 	sub	r3, r3, #4
    f9ec:	e50b3008 	str	r3, [fp, #-8]
    f9f0:	e51b2008 	ldr	r2, [fp, #-8]
    f9f4:	e3003404 	movw	r3, #1028	; 0x404
    f9f8:	e3403404 	movt	r3, #1028	; 0x404
    f9fc:	e5823000 	str	r3, [r2]
    fa00:	e51b3008 	ldr	r3, [fp, #-8]
    fa04:	e2433004 	sub	r3, r3, #4
    fa08:	e50b3008 	str	r3, [fp, #-8]
    fa0c:	e51b2008 	ldr	r2, [fp, #-8]
    fa10:	e3003303 	movw	r3, #771	; 0x303
    fa14:	e3403303 	movt	r3, #771	; 0x303
    fa18:	e5823000 	str	r3, [r2]
    fa1c:	e51b3008 	ldr	r3, [fp, #-8]
    fa20:	e2433004 	sub	r3, r3, #4
    fa24:	e50b3008 	str	r3, [fp, #-8]
    fa28:	e51b2008 	ldr	r2, [fp, #-8]
    fa2c:	e3003202 	movw	r3, #514	; 0x202
    fa30:	e3403202 	movt	r3, #514	; 0x202
    fa34:	e5823000 	str	r3, [r2]
    fa38:	e51b3008 	ldr	r3, [fp, #-8]
    fa3c:	e2433004 	sub	r3, r3, #4
    fa40:	e50b3008 	str	r3, [fp, #-8]
    fa44:	e51b2008 	ldr	r2, [fp, #-8]
    fa48:	e3003101 	movw	r3, #257	; 0x101
    fa4c:	e3403101 	movt	r3, #257	; 0x101
    fa50:	e5823000 	str	r3, [r2]
    fa54:	e51b3008 	ldr	r3, [fp, #-8]
    fa58:	e2433004 	sub	r3, r3, #4
    fa5c:	e50b3008 	str	r3, [fp, #-8]
    fa60:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    fa64:	e51b3008 	ldr	r3, [fp, #-8]
    fa68:	e5832000 	str	r2, [r3]
    fa6c:	e51b3010 	ldr	r3, [fp, #-16]
    fa70:	e2033001 	and	r3, r3, #1
    fa74:	e3530000 	cmp	r3, #0
    fa78:	0a000006 	beq	fa98 <OSTaskStkInit+0x208>
    fa7c:	e51b3008 	ldr	r3, [fp, #-8]
    fa80:	e2433004 	sub	r3, r3, #4
    fa84:	e50b3008 	str	r3, [fp, #-8]
    fa88:	e51b3008 	ldr	r3, [fp, #-8]
    fa8c:	e3a02030 	mov	r2, #48	; 0x30
    fa90:	e5832000 	str	r2, [r3]
    fa94:	ea000005 	b	fab0 <OSTaskStkInit+0x220>
    fa98:	e51b3008 	ldr	r3, [fp, #-8]
    fa9c:	e2433004 	sub	r3, r3, #4
    faa0:	e50b3008 	str	r3, [fp, #-8]
    faa4:	e51b3008 	ldr	r3, [fp, #-8]
    faa8:	e3a02e11 	mov	r2, #272	; 0x110
    faac:	e5832000 	str	r2, [r3]
    fab0:	e51b3008 	ldr	r3, [fp, #-8]
    fab4:	e1a00003 	mov	r0, r3
    fab8:	e28bd000 	add	sp, fp, #0
    fabc:	e8bd0800 	ldmfd	sp!, {fp}
    fac0:	e12fff1e 	bx	lr

0000fac4 <OSTaskSwHook>:
    fac4:	e92d4800 	push	{fp, lr}
    fac8:	e28db004 	add	fp, sp, #4
    facc:	eb0014d6 	bl	14e2c <App_TaskSwHook>
    fad0:	e8bd8800 	pop	{fp, pc}

0000fad4 <OSTCBInitHook>:
    fad4:	e92d4800 	push	{fp, lr}
    fad8:	e28db004 	add	fp, sp, #4
    fadc:	e24dd008 	sub	sp, sp, #8
    fae0:	e50b0008 	str	r0, [fp, #-8]
    fae4:	e51b0008 	ldr	r0, [fp, #-8]
    fae8:	eb0014d4 	bl	14e40 <App_TCBInitHook>
    faec:	e24bd004 	sub	sp, fp, #4
    faf0:	e8bd8800 	pop	{fp, pc}

0000faf4 <OSTimeTickHook>:
    faf4:	e92d4800 	push	{fp, lr}
    faf8:	e28db004 	add	fp, sp, #4
    fafc:	eb0014d6 	bl	14e5c <App_TimeTickHook>
    fb00:	e8bd8800 	pop	{fp, pc}

0000fb04 <OS_CPU_InitExceptVect>:
    fb04:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    fb08:	e28db000 	add	fp, sp, #0
    fb0c:	e3a02000 	mov	r2, #0
    fb10:	e30f3018 	movw	r3, #61464	; 0xf018
    fb14:	e34e359f 	movt	r3, #58783	; 0xe59f
    fb18:	e5823000 	str	r3, [r2]
    fb1c:	e3a02024 	mov	r2, #36	; 0x24
    fb20:	e30f34b4 	movw	r3, #62644	; 0xf4b4
    fb24:	e3403000 	movt	r3, #0
    fb28:	e5823000 	str	r3, [r2]
    fb2c:	e3a02008 	mov	r2, #8
    fb30:	e30f3018 	movw	r3, #61464	; 0xf018
    fb34:	e34e359f 	movt	r3, #58783	; 0xe59f
    fb38:	e5823000 	str	r3, [r2]
    fb3c:	e3a02028 	mov	r2, #40	; 0x28
    fb40:	e30f34b4 	movw	r3, #62644	; 0xf4b4
    fb44:	e3403000 	movt	r3, #0
    fb48:	e5823000 	str	r3, [r2]
    fb4c:	e3a0200c 	mov	r2, #12
    fb50:	e30f3018 	movw	r3, #61464	; 0xf018
    fb54:	e34e359f 	movt	r3, #58783	; 0xe59f
    fb58:	e5823000 	str	r3, [r2]
    fb5c:	e3a0202c 	mov	r2, #44	; 0x2c
    fb60:	e30f34b4 	movw	r3, #62644	; 0xf4b4
    fb64:	e3403000 	movt	r3, #0
    fb68:	e5823000 	str	r3, [r2]
    fb6c:	e3a02010 	mov	r2, #16
    fb70:	e30f3018 	movw	r3, #61464	; 0xf018
    fb74:	e34e359f 	movt	r3, #58783	; 0xe59f
    fb78:	e5823000 	str	r3, [r2]
    fb7c:	e3a02030 	mov	r2, #48	; 0x30
    fb80:	e30f34b4 	movw	r3, #62644	; 0xf4b4
    fb84:	e3403000 	movt	r3, #0
    fb88:	e5823000 	str	r3, [r2]
    fb8c:	e3a02018 	mov	r2, #24
    fb90:	e30f3018 	movw	r3, #61464	; 0xf018
    fb94:	e34e359f 	movt	r3, #58783	; 0xe59f
    fb98:	e5823000 	str	r3, [r2]
    fb9c:	e3a02038 	mov	r2, #56	; 0x38
    fba0:	e30f34b4 	movw	r3, #62644	; 0xf4b4
    fba4:	e3403000 	movt	r3, #0
    fba8:	e5823000 	str	r3, [r2]
    fbac:	e3a0201c 	mov	r2, #28
    fbb0:	e30f3018 	movw	r3, #61464	; 0xf018
    fbb4:	e34e359f 	movt	r3, #58783	; 0xe59f
    fbb8:	e5823000 	str	r3, [r2]
    fbbc:	e3a0203c 	mov	r2, #60	; 0x3c
    fbc0:	e30f34b4 	movw	r3, #62644	; 0xf4b4
    fbc4:	e3403000 	movt	r3, #0
    fbc8:	e5823000 	str	r3, [r2]
    fbcc:	e28bd000 	add	sp, fp, #0
    fbd0:	e8bd0800 	ldmfd	sp!, {fp}
    fbd4:	e12fff1e 	bx	lr

0000fbd8 <OS_CPU_ExceptStkChk>:
    fbd8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    fbdc:	e28db000 	add	fp, sp, #0
    fbe0:	e24dd014 	sub	sp, sp, #20
    fbe4:	e3a03000 	mov	r3, #0
    fbe8:	e50b300c 	str	r3, [fp, #-12]
    fbec:	e3a03080 	mov	r3, #128	; 0x80
    fbf0:	e50b3010 	str	r3, [fp, #-16]
    fbf4:	e30b3a34 	movw	r3, #47668	; 0xba34
    fbf8:	e3403019 	movt	r3, #25
    fbfc:	e50b3008 	str	r3, [fp, #-8]
    fc00:	ea000005 	b	fc1c <OS_CPU_ExceptStkChk+0x44>
    fc04:	e51b300c 	ldr	r3, [fp, #-12]
    fc08:	e2833001 	add	r3, r3, #1
    fc0c:	e50b300c 	str	r3, [fp, #-12]
    fc10:	e51b3010 	ldr	r3, [fp, #-16]
    fc14:	e2433001 	sub	r3, r3, #1
    fc18:	e50b3010 	str	r3, [fp, #-16]
    fc1c:	e51b3008 	ldr	r3, [fp, #-8]
    fc20:	e5933000 	ldr	r3, [r3]
    fc24:	e3530000 	cmp	r3, #0
    fc28:	13a03000 	movne	r3, #0
    fc2c:	03a03001 	moveq	r3, #1
    fc30:	e6ef3073 	uxtb	r3, r3
    fc34:	e51b2008 	ldr	r2, [fp, #-8]
    fc38:	e2822004 	add	r2, r2, #4
    fc3c:	e50b2008 	str	r2, [fp, #-8]
    fc40:	e3530000 	cmp	r3, #0
    fc44:	0a000002 	beq	fc54 <OS_CPU_ExceptStkChk+0x7c>
    fc48:	e51b3010 	ldr	r3, [fp, #-16]
    fc4c:	e3530000 	cmp	r3, #0
    fc50:	1affffeb 	bne	fc04 <OS_CPU_ExceptStkChk+0x2c>
    fc54:	e51b300c 	ldr	r3, [fp, #-12]
    fc58:	e1a00003 	mov	r0, r3
    fc5c:	e28bd000 	add	sp, fp, #0
    fc60:	e8bd0800 	ldmfd	sp!, {fp}
    fc64:	e12fff1e 	bx	lr

0000fc68 <guest_OS_CSP_TickInit>:
    fc68:	e92d4800 	push	{fp, lr}
    fc6c:	e28db004 	add	fp, sp, #4
    fc70:	e24dd008 	sub	sp, sp, #8
    fc74:	e3a00000 	mov	r0, #0
    fc78:	e3a0102b 	mov	r1, #43	; 0x2b
    fc7c:	e30f2cbc 	movw	r2, #64700	; 0xfcbc
    fc80:	e3402000 	movt	r2, #0
    fc84:	e3a03000 	mov	r3, #0
    fc88:	eb000a94 	bl	126e0 <CSP_IntVectReg>
    fc8c:	e1a03000 	mov	r3, r0
    fc90:	e54b3005 	strb	r3, [fp, #-5]
    fc94:	e55b3005 	ldrb	r3, [fp, #-5]
    fc98:	e3530001 	cmp	r3, #1
    fc9c:	1a000003 	bne	fcb0 <guest_OS_CSP_TickInit+0x48>
    fca0:	e3a00064 	mov	r0, #100	; 0x64
    fca4:	eb001281 	bl	146b0 <guest_OS_Timer_Register>
    fca8:	eb001291 	bl	146f4 <guest_OS_Timer_Enable>
    fcac:	ea000000 	b	fcb4 <guest_OS_CSP_TickInit+0x4c>
    fcb0:	e1a00000 	nop			; (mov r0, r0)
    fcb4:	e24bd004 	sub	sp, fp, #4
    fcb8:	e8bd8800 	pop	{fp, pc}

0000fcbc <OS_CSP_TickISR_Handler>:
    fcbc:	e92d4800 	push	{fp, lr}
    fcc0:	e28db004 	add	fp, sp, #4
    fcc4:	e24dd008 	sub	sp, sp, #8
    fcc8:	e50b0008 	str	r0, [fp, #-8]
    fccc:	ebffe421 	bl	8d58 <OSTimeTick>
    fcd0:	e24bd004 	sub	sp, fp, #4
    fcd4:	e8bd8800 	pop	{fp, pc}

0000fcd8 <OS_CPU_IntHandler>:
    fcd8:	e92d4800 	push	{fp, lr}
    fcdc:	e28db004 	add	fp, sp, #4
    fce0:	e24dd010 	sub	sp, sp, #16
    fce4:	e50b0010 	str	r0, [fp, #-16]
    fce8:	e51b3010 	ldr	r3, [fp, #-16]
    fcec:	e2433006 	sub	r3, r3, #6
    fcf0:	e3530001 	cmp	r3, #1
    fcf4:	8a000007 	bhi	fd18 <OS_CPU_IntHandler+0x40>
    fcf8:	eb001251 	bl	14644 <guest_IRQ_Acknowledge>
    fcfc:	e1a03000 	mov	r3, r0
    fd00:	e50b3008 	str	r3, [fp, #-8]
    fd04:	e51b3008 	ldr	r3, [fp, #-8]
    fd08:	e6ff3073 	uxth	r3, r3
    fd0c:	e1a00003 	mov	r0, r3
    fd10:	eb000aba 	bl	12800 <CSP_IntHandlerSrc>
    fd14:	ea000004 	b	fd2c <OS_CPU_IntHandler+0x54>
    fd18:	e51b3010 	ldr	r3, [fp, #-16]
    fd1c:	e6ef3073 	uxtb	r3, r3
    fd20:	e1a00003 	mov	r0, r3
    fd24:	eb000f68 	bl	13acc <OS_CSP_BSP_ExceptHandler>
    fd28:	e1a00000 	nop			; (mov r0, r0)
    fd2c:	e24bd004 	sub	sp, fp, #4
    fd30:	e8bd8800 	pop	{fp, pc}

0000fd34 <ASCII_IsAlpha>:
    fd34:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    fd38:	e28db000 	add	fp, sp, #0
    fd3c:	e24dd014 	sub	sp, sp, #20
    fd40:	e1a03000 	mov	r3, r0
    fd44:	e54b300d 	strb	r3, [fp, #-13]
    fd48:	e55b300d 	ldrb	r3, [fp, #-13]
    fd4c:	e3530040 	cmp	r3, #64	; 0x40
    fd50:	9a000002 	bls	fd60 <ASCII_IsAlpha+0x2c>
    fd54:	e55b300d 	ldrb	r3, [fp, #-13]
    fd58:	e353005a 	cmp	r3, #90	; 0x5a
    fd5c:	9a000005 	bls	fd78 <ASCII_IsAlpha+0x44>
    fd60:	e55b300d 	ldrb	r3, [fp, #-13]
    fd64:	e3530060 	cmp	r3, #96	; 0x60
    fd68:	9a000004 	bls	fd80 <ASCII_IsAlpha+0x4c>
    fd6c:	e55b300d 	ldrb	r3, [fp, #-13]
    fd70:	e353007a 	cmp	r3, #122	; 0x7a
    fd74:	8a000001 	bhi	fd80 <ASCII_IsAlpha+0x4c>
    fd78:	e3a03001 	mov	r3, #1
    fd7c:	ea000000 	b	fd84 <ASCII_IsAlpha+0x50>
    fd80:	e3a03000 	mov	r3, #0
    fd84:	e54b3005 	strb	r3, [fp, #-5]
    fd88:	e55b3005 	ldrb	r3, [fp, #-5]
    fd8c:	e1a00003 	mov	r0, r3
    fd90:	e28bd000 	add	sp, fp, #0
    fd94:	e8bd0800 	ldmfd	sp!, {fp}
    fd98:	e12fff1e 	bx	lr

0000fd9c <ASCII_IsAlphaNum>:
    fd9c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    fda0:	e28db000 	add	fp, sp, #0
    fda4:	e24dd014 	sub	sp, sp, #20
    fda8:	e1a03000 	mov	r3, r0
    fdac:	e54b300d 	strb	r3, [fp, #-13]
    fdb0:	e55b300d 	ldrb	r3, [fp, #-13]
    fdb4:	e3530040 	cmp	r3, #64	; 0x40
    fdb8:	9a000002 	bls	fdc8 <ASCII_IsAlphaNum+0x2c>
    fdbc:	e55b300d 	ldrb	r3, [fp, #-13]
    fdc0:	e353005a 	cmp	r3, #90	; 0x5a
    fdc4:	9a00000b 	bls	fdf8 <ASCII_IsAlphaNum+0x5c>
    fdc8:	e55b300d 	ldrb	r3, [fp, #-13]
    fdcc:	e3530060 	cmp	r3, #96	; 0x60
    fdd0:	9a000002 	bls	fde0 <ASCII_IsAlphaNum+0x44>
    fdd4:	e55b300d 	ldrb	r3, [fp, #-13]
    fdd8:	e353007a 	cmp	r3, #122	; 0x7a
    fddc:	9a000005 	bls	fdf8 <ASCII_IsAlphaNum+0x5c>
    fde0:	e55b300d 	ldrb	r3, [fp, #-13]
    fde4:	e353002f 	cmp	r3, #47	; 0x2f
    fde8:	9a000004 	bls	fe00 <ASCII_IsAlphaNum+0x64>
    fdec:	e55b300d 	ldrb	r3, [fp, #-13]
    fdf0:	e3530039 	cmp	r3, #57	; 0x39
    fdf4:	8a000001 	bhi	fe00 <ASCII_IsAlphaNum+0x64>
    fdf8:	e3a03001 	mov	r3, #1
    fdfc:	ea000000 	b	fe04 <ASCII_IsAlphaNum+0x68>
    fe00:	e3a03000 	mov	r3, #0
    fe04:	e54b3005 	strb	r3, [fp, #-5]
    fe08:	e55b3005 	ldrb	r3, [fp, #-5]
    fe0c:	e1a00003 	mov	r0, r3
    fe10:	e28bd000 	add	sp, fp, #0
    fe14:	e8bd0800 	ldmfd	sp!, {fp}
    fe18:	e12fff1e 	bx	lr

0000fe1c <ASCII_IsLower>:
    fe1c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    fe20:	e28db000 	add	fp, sp, #0
    fe24:	e24dd014 	sub	sp, sp, #20
    fe28:	e1a03000 	mov	r3, r0
    fe2c:	e54b300d 	strb	r3, [fp, #-13]
    fe30:	e55b300d 	ldrb	r3, [fp, #-13]
    fe34:	e3530060 	cmp	r3, #96	; 0x60
    fe38:	9a000004 	bls	fe50 <ASCII_IsLower+0x34>
    fe3c:	e55b300d 	ldrb	r3, [fp, #-13]
    fe40:	e353007a 	cmp	r3, #122	; 0x7a
    fe44:	8a000001 	bhi	fe50 <ASCII_IsLower+0x34>
    fe48:	e3a03001 	mov	r3, #1
    fe4c:	ea000000 	b	fe54 <ASCII_IsLower+0x38>
    fe50:	e3a03000 	mov	r3, #0
    fe54:	e54b3005 	strb	r3, [fp, #-5]
    fe58:	e55b3005 	ldrb	r3, [fp, #-5]
    fe5c:	e1a00003 	mov	r0, r3
    fe60:	e28bd000 	add	sp, fp, #0
    fe64:	e8bd0800 	ldmfd	sp!, {fp}
    fe68:	e12fff1e 	bx	lr

0000fe6c <ASCII_IsUpper>:
    fe6c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    fe70:	e28db000 	add	fp, sp, #0
    fe74:	e24dd014 	sub	sp, sp, #20
    fe78:	e1a03000 	mov	r3, r0
    fe7c:	e54b300d 	strb	r3, [fp, #-13]
    fe80:	e55b300d 	ldrb	r3, [fp, #-13]
    fe84:	e3530040 	cmp	r3, #64	; 0x40
    fe88:	9a000004 	bls	fea0 <ASCII_IsUpper+0x34>
    fe8c:	e55b300d 	ldrb	r3, [fp, #-13]
    fe90:	e353005a 	cmp	r3, #90	; 0x5a
    fe94:	8a000001 	bhi	fea0 <ASCII_IsUpper+0x34>
    fe98:	e3a03001 	mov	r3, #1
    fe9c:	ea000000 	b	fea4 <ASCII_IsUpper+0x38>
    fea0:	e3a03000 	mov	r3, #0
    fea4:	e54b3005 	strb	r3, [fp, #-5]
    fea8:	e55b3005 	ldrb	r3, [fp, #-5]
    feac:	e1a00003 	mov	r0, r3
    feb0:	e28bd000 	add	sp, fp, #0
    feb4:	e8bd0800 	ldmfd	sp!, {fp}
    feb8:	e12fff1e 	bx	lr

0000febc <ASCII_IsDig>:
    febc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    fec0:	e28db000 	add	fp, sp, #0
    fec4:	e24dd014 	sub	sp, sp, #20
    fec8:	e1a03000 	mov	r3, r0
    fecc:	e54b300d 	strb	r3, [fp, #-13]
    fed0:	e55b300d 	ldrb	r3, [fp, #-13]
    fed4:	e353002f 	cmp	r3, #47	; 0x2f
    fed8:	9a000004 	bls	fef0 <ASCII_IsDig+0x34>
    fedc:	e55b300d 	ldrb	r3, [fp, #-13]
    fee0:	e3530039 	cmp	r3, #57	; 0x39
    fee4:	8a000001 	bhi	fef0 <ASCII_IsDig+0x34>
    fee8:	e3a03001 	mov	r3, #1
    feec:	ea000000 	b	fef4 <ASCII_IsDig+0x38>
    fef0:	e3a03000 	mov	r3, #0
    fef4:	e54b3005 	strb	r3, [fp, #-5]
    fef8:	e55b3005 	ldrb	r3, [fp, #-5]
    fefc:	e1a00003 	mov	r0, r3
    ff00:	e28bd000 	add	sp, fp, #0
    ff04:	e8bd0800 	ldmfd	sp!, {fp}
    ff08:	e12fff1e 	bx	lr

0000ff0c <ASCII_IsDigOct>:
    ff0c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    ff10:	e28db000 	add	fp, sp, #0
    ff14:	e24dd014 	sub	sp, sp, #20
    ff18:	e1a03000 	mov	r3, r0
    ff1c:	e54b300d 	strb	r3, [fp, #-13]
    ff20:	e55b300d 	ldrb	r3, [fp, #-13]
    ff24:	e353002f 	cmp	r3, #47	; 0x2f
    ff28:	9a000004 	bls	ff40 <ASCII_IsDigOct+0x34>
    ff2c:	e55b300d 	ldrb	r3, [fp, #-13]
    ff30:	e3530037 	cmp	r3, #55	; 0x37
    ff34:	8a000001 	bhi	ff40 <ASCII_IsDigOct+0x34>
    ff38:	e3a03001 	mov	r3, #1
    ff3c:	ea000000 	b	ff44 <ASCII_IsDigOct+0x38>
    ff40:	e3a03000 	mov	r3, #0
    ff44:	e54b3005 	strb	r3, [fp, #-5]
    ff48:	e55b3005 	ldrb	r3, [fp, #-5]
    ff4c:	e1a00003 	mov	r0, r3
    ff50:	e28bd000 	add	sp, fp, #0
    ff54:	e8bd0800 	ldmfd	sp!, {fp}
    ff58:	e12fff1e 	bx	lr

0000ff5c <ASCII_IsDigHex>:
    ff5c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    ff60:	e28db000 	add	fp, sp, #0
    ff64:	e24dd014 	sub	sp, sp, #20
    ff68:	e1a03000 	mov	r3, r0
    ff6c:	e54b300d 	strb	r3, [fp, #-13]
    ff70:	e55b300d 	ldrb	r3, [fp, #-13]
    ff74:	e353002f 	cmp	r3, #47	; 0x2f
    ff78:	9a000002 	bls	ff88 <ASCII_IsDigHex+0x2c>
    ff7c:	e55b300d 	ldrb	r3, [fp, #-13]
    ff80:	e3530039 	cmp	r3, #57	; 0x39
    ff84:	9a00000b 	bls	ffb8 <ASCII_IsDigHex+0x5c>
    ff88:	e55b300d 	ldrb	r3, [fp, #-13]
    ff8c:	e3530040 	cmp	r3, #64	; 0x40
    ff90:	9a000002 	bls	ffa0 <ASCII_IsDigHex+0x44>
    ff94:	e55b300d 	ldrb	r3, [fp, #-13]
    ff98:	e3530046 	cmp	r3, #70	; 0x46
    ff9c:	9a000005 	bls	ffb8 <ASCII_IsDigHex+0x5c>
    ffa0:	e55b300d 	ldrb	r3, [fp, #-13]
    ffa4:	e3530060 	cmp	r3, #96	; 0x60
    ffa8:	9a000004 	bls	ffc0 <ASCII_IsDigHex+0x64>
    ffac:	e55b300d 	ldrb	r3, [fp, #-13]
    ffb0:	e3530066 	cmp	r3, #102	; 0x66
    ffb4:	8a000001 	bhi	ffc0 <ASCII_IsDigHex+0x64>
    ffb8:	e3a03001 	mov	r3, #1
    ffbc:	ea000000 	b	ffc4 <ASCII_IsDigHex+0x68>
    ffc0:	e3a03000 	mov	r3, #0
    ffc4:	e54b3005 	strb	r3, [fp, #-5]
    ffc8:	e55b3005 	ldrb	r3, [fp, #-5]
    ffcc:	e1a00003 	mov	r0, r3
    ffd0:	e28bd000 	add	sp, fp, #0
    ffd4:	e8bd0800 	ldmfd	sp!, {fp}
    ffd8:	e12fff1e 	bx	lr

0000ffdc <ASCII_IsBlank>:
    ffdc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    ffe0:	e28db000 	add	fp, sp, #0
    ffe4:	e24dd014 	sub	sp, sp, #20
    ffe8:	e1a03000 	mov	r3, r0
    ffec:	e54b300d 	strb	r3, [fp, #-13]
    fff0:	e55b300d 	ldrb	r3, [fp, #-13]
    fff4:	e3530020 	cmp	r3, #32
    fff8:	0a000002 	beq	10008 <ASCII_IsBlank+0x2c>
    fffc:	e55b300d 	ldrb	r3, [fp, #-13]
   10000:	e3530009 	cmp	r3, #9
   10004:	1a000001 	bne	10010 <ASCII_IsBlank+0x34>
   10008:	e3a03001 	mov	r3, #1
   1000c:	ea000000 	b	10014 <ASCII_IsBlank+0x38>
   10010:	e3a03000 	mov	r3, #0
   10014:	e54b3005 	strb	r3, [fp, #-5]
   10018:	e55b3005 	ldrb	r3, [fp, #-5]
   1001c:	e1a00003 	mov	r0, r3
   10020:	e28bd000 	add	sp, fp, #0
   10024:	e8bd0800 	ldmfd	sp!, {fp}
   10028:	e12fff1e 	bx	lr

0001002c <ASCII_IsSpace>:
   1002c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10030:	e28db000 	add	fp, sp, #0
   10034:	e24dd014 	sub	sp, sp, #20
   10038:	e1a03000 	mov	r3, r0
   1003c:	e54b300d 	strb	r3, [fp, #-13]
   10040:	e55b300d 	ldrb	r3, [fp, #-13]
   10044:	e3530020 	cmp	r3, #32
   10048:	0a00000e 	beq	10088 <ASCII_IsSpace+0x5c>
   1004c:	e55b300d 	ldrb	r3, [fp, #-13]
   10050:	e353000d 	cmp	r3, #13
   10054:	0a00000b 	beq	10088 <ASCII_IsSpace+0x5c>
   10058:	e55b300d 	ldrb	r3, [fp, #-13]
   1005c:	e353000a 	cmp	r3, #10
   10060:	0a000008 	beq	10088 <ASCII_IsSpace+0x5c>
   10064:	e55b300d 	ldrb	r3, [fp, #-13]
   10068:	e353000c 	cmp	r3, #12
   1006c:	0a000005 	beq	10088 <ASCII_IsSpace+0x5c>
   10070:	e55b300d 	ldrb	r3, [fp, #-13]
   10074:	e3530009 	cmp	r3, #9
   10078:	0a000002 	beq	10088 <ASCII_IsSpace+0x5c>
   1007c:	e55b300d 	ldrb	r3, [fp, #-13]
   10080:	e353000b 	cmp	r3, #11
   10084:	1a000001 	bne	10090 <ASCII_IsSpace+0x64>
   10088:	e3a03001 	mov	r3, #1
   1008c:	ea000000 	b	10094 <ASCII_IsSpace+0x68>
   10090:	e3a03000 	mov	r3, #0
   10094:	e54b3005 	strb	r3, [fp, #-5]
   10098:	e55b3005 	ldrb	r3, [fp, #-5]
   1009c:	e1a00003 	mov	r0, r3
   100a0:	e28bd000 	add	sp, fp, #0
   100a4:	e8bd0800 	ldmfd	sp!, {fp}
   100a8:	e12fff1e 	bx	lr

000100ac <ASCII_IsPrint>:
   100ac:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   100b0:	e28db000 	add	fp, sp, #0
   100b4:	e24dd014 	sub	sp, sp, #20
   100b8:	e1a03000 	mov	r3, r0
   100bc:	e54b300d 	strb	r3, [fp, #-13]
   100c0:	e55b300d 	ldrb	r3, [fp, #-13]
   100c4:	e353001f 	cmp	r3, #31
   100c8:	9a000004 	bls	100e0 <ASCII_IsPrint+0x34>
   100cc:	e55b300d 	ldrb	r3, [fp, #-13]
   100d0:	e353007e 	cmp	r3, #126	; 0x7e
   100d4:	8a000001 	bhi	100e0 <ASCII_IsPrint+0x34>
   100d8:	e3a03001 	mov	r3, #1
   100dc:	ea000000 	b	100e4 <ASCII_IsPrint+0x38>
   100e0:	e3a03000 	mov	r3, #0
   100e4:	e54b3005 	strb	r3, [fp, #-5]
   100e8:	e55b3005 	ldrb	r3, [fp, #-5]
   100ec:	e1a00003 	mov	r0, r3
   100f0:	e28bd000 	add	sp, fp, #0
   100f4:	e8bd0800 	ldmfd	sp!, {fp}
   100f8:	e12fff1e 	bx	lr

000100fc <ASCII_IsGraph>:
   100fc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10100:	e28db000 	add	fp, sp, #0
   10104:	e24dd014 	sub	sp, sp, #20
   10108:	e1a03000 	mov	r3, r0
   1010c:	e54b300d 	strb	r3, [fp, #-13]
   10110:	e55b300d 	ldrb	r3, [fp, #-13]
   10114:	e3530020 	cmp	r3, #32
   10118:	9a000004 	bls	10130 <ASCII_IsGraph+0x34>
   1011c:	e55b300d 	ldrb	r3, [fp, #-13]
   10120:	e353007e 	cmp	r3, #126	; 0x7e
   10124:	8a000001 	bhi	10130 <ASCII_IsGraph+0x34>
   10128:	e3a03001 	mov	r3, #1
   1012c:	ea000000 	b	10134 <ASCII_IsGraph+0x38>
   10130:	e3a03000 	mov	r3, #0
   10134:	e54b3005 	strb	r3, [fp, #-5]
   10138:	e55b3005 	ldrb	r3, [fp, #-5]
   1013c:	e1a00003 	mov	r0, r3
   10140:	e28bd000 	add	sp, fp, #0
   10144:	e8bd0800 	ldmfd	sp!, {fp}
   10148:	e12fff1e 	bx	lr

0001014c <ASCII_IsPunct>:
   1014c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10150:	e28db000 	add	fp, sp, #0
   10154:	e24dd014 	sub	sp, sp, #20
   10158:	e1a03000 	mov	r3, r0
   1015c:	e54b300d 	strb	r3, [fp, #-13]
   10160:	e55b300d 	ldrb	r3, [fp, #-13]
   10164:	e353001f 	cmp	r3, #31
   10168:	9a000028 	bls	10210 <ASCII_IsPunct+0xc4>
   1016c:	e55b300d 	ldrb	r3, [fp, #-13]
   10170:	e353007e 	cmp	r3, #126	; 0x7e
   10174:	8a000025 	bhi	10210 <ASCII_IsPunct+0xc4>
   10178:	e55b300d 	ldrb	r3, [fp, #-13]
   1017c:	e3530020 	cmp	r3, #32
   10180:	0a000022 	beq	10210 <ASCII_IsPunct+0xc4>
   10184:	e55b300d 	ldrb	r3, [fp, #-13]
   10188:	e353000d 	cmp	r3, #13
   1018c:	0a00001f 	beq	10210 <ASCII_IsPunct+0xc4>
   10190:	e55b300d 	ldrb	r3, [fp, #-13]
   10194:	e353000a 	cmp	r3, #10
   10198:	0a00001c 	beq	10210 <ASCII_IsPunct+0xc4>
   1019c:	e55b300d 	ldrb	r3, [fp, #-13]
   101a0:	e353000c 	cmp	r3, #12
   101a4:	0a000019 	beq	10210 <ASCII_IsPunct+0xc4>
   101a8:	e55b300d 	ldrb	r3, [fp, #-13]
   101ac:	e3530009 	cmp	r3, #9
   101b0:	0a000016 	beq	10210 <ASCII_IsPunct+0xc4>
   101b4:	e55b300d 	ldrb	r3, [fp, #-13]
   101b8:	e353000b 	cmp	r3, #11
   101bc:	0a000013 	beq	10210 <ASCII_IsPunct+0xc4>
   101c0:	e55b300d 	ldrb	r3, [fp, #-13]
   101c4:	e3530040 	cmp	r3, #64	; 0x40
   101c8:	9a000002 	bls	101d8 <ASCII_IsPunct+0x8c>
   101cc:	e55b300d 	ldrb	r3, [fp, #-13]
   101d0:	e353005a 	cmp	r3, #90	; 0x5a
   101d4:	9a00000d 	bls	10210 <ASCII_IsPunct+0xc4>
   101d8:	e55b300d 	ldrb	r3, [fp, #-13]
   101dc:	e3530060 	cmp	r3, #96	; 0x60
   101e0:	9a000002 	bls	101f0 <ASCII_IsPunct+0xa4>
   101e4:	e55b300d 	ldrb	r3, [fp, #-13]
   101e8:	e353007a 	cmp	r3, #122	; 0x7a
   101ec:	9a000007 	bls	10210 <ASCII_IsPunct+0xc4>
   101f0:	e55b300d 	ldrb	r3, [fp, #-13]
   101f4:	e353002f 	cmp	r3, #47	; 0x2f
   101f8:	9a000002 	bls	10208 <ASCII_IsPunct+0xbc>
   101fc:	e55b300d 	ldrb	r3, [fp, #-13]
   10200:	e3530039 	cmp	r3, #57	; 0x39
   10204:	9a000001 	bls	10210 <ASCII_IsPunct+0xc4>
   10208:	e3a03001 	mov	r3, #1
   1020c:	ea000000 	b	10214 <ASCII_IsPunct+0xc8>
   10210:	e3a03000 	mov	r3, #0
   10214:	e54b3005 	strb	r3, [fp, #-5]
   10218:	e55b3005 	ldrb	r3, [fp, #-5]
   1021c:	e1a00003 	mov	r0, r3
   10220:	e28bd000 	add	sp, fp, #0
   10224:	e8bd0800 	ldmfd	sp!, {fp}
   10228:	e12fff1e 	bx	lr

0001022c <ASCII_IsCtrl>:
   1022c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10230:	e28db000 	add	fp, sp, #0
   10234:	e24dd014 	sub	sp, sp, #20
   10238:	e1a03000 	mov	r3, r0
   1023c:	e54b300d 	strb	r3, [fp, #-13]
   10240:	e55b300d 	ldrb	r3, [fp, #-13]
   10244:	e6af3073 	sxtb	r3, r3
   10248:	e3530000 	cmp	r3, #0
   1024c:	ba000002 	blt	1025c <ASCII_IsCtrl+0x30>
   10250:	e55b300d 	ldrb	r3, [fp, #-13]
   10254:	e353001f 	cmp	r3, #31
   10258:	9a000002 	bls	10268 <ASCII_IsCtrl+0x3c>
   1025c:	e55b300d 	ldrb	r3, [fp, #-13]
   10260:	e353007f 	cmp	r3, #127	; 0x7f
   10264:	1a000001 	bne	10270 <ASCII_IsCtrl+0x44>
   10268:	e3a03001 	mov	r3, #1
   1026c:	ea000000 	b	10274 <ASCII_IsCtrl+0x48>
   10270:	e3a03000 	mov	r3, #0
   10274:	e54b3005 	strb	r3, [fp, #-5]
   10278:	e55b3005 	ldrb	r3, [fp, #-5]
   1027c:	e1a00003 	mov	r0, r3
   10280:	e28bd000 	add	sp, fp, #0
   10284:	e8bd0800 	ldmfd	sp!, {fp}
   10288:	e12fff1e 	bx	lr

0001028c <ASCII_ToLower>:
   1028c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10290:	e28db000 	add	fp, sp, #0
   10294:	e24dd014 	sub	sp, sp, #20
   10298:	e1a03000 	mov	r3, r0
   1029c:	e54b300d 	strb	r3, [fp, #-13]
   102a0:	e55b300d 	ldrb	r3, [fp, #-13]
   102a4:	e3530040 	cmp	r3, #64	; 0x40
   102a8:	9a000006 	bls	102c8 <ASCII_ToLower+0x3c>
   102ac:	e55b300d 	ldrb	r3, [fp, #-13]
   102b0:	e353005a 	cmp	r3, #90	; 0x5a
   102b4:	8a000003 	bhi	102c8 <ASCII_ToLower+0x3c>
   102b8:	e55b300d 	ldrb	r3, [fp, #-13]
   102bc:	e2833020 	add	r3, r3, #32
   102c0:	e6ef3073 	uxtb	r3, r3
   102c4:	ea000000 	b	102cc <ASCII_ToLower+0x40>
   102c8:	e55b300d 	ldrb	r3, [fp, #-13]
   102cc:	e54b3005 	strb	r3, [fp, #-5]
   102d0:	e55b3005 	ldrb	r3, [fp, #-5]
   102d4:	e1a00003 	mov	r0, r3
   102d8:	e28bd000 	add	sp, fp, #0
   102dc:	e8bd0800 	ldmfd	sp!, {fp}
   102e0:	e12fff1e 	bx	lr

000102e4 <ASCII_ToUpper>:
   102e4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   102e8:	e28db000 	add	fp, sp, #0
   102ec:	e24dd014 	sub	sp, sp, #20
   102f0:	e1a03000 	mov	r3, r0
   102f4:	e54b300d 	strb	r3, [fp, #-13]
   102f8:	e55b300d 	ldrb	r3, [fp, #-13]
   102fc:	e3530060 	cmp	r3, #96	; 0x60
   10300:	9a000006 	bls	10320 <ASCII_ToUpper+0x3c>
   10304:	e55b300d 	ldrb	r3, [fp, #-13]
   10308:	e353007a 	cmp	r3, #122	; 0x7a
   1030c:	8a000003 	bhi	10320 <ASCII_ToUpper+0x3c>
   10310:	e55b300d 	ldrb	r3, [fp, #-13]
   10314:	e2433020 	sub	r3, r3, #32
   10318:	e6ef3073 	uxtb	r3, r3
   1031c:	ea000000 	b	10324 <ASCII_ToUpper+0x40>
   10320:	e55b300d 	ldrb	r3, [fp, #-13]
   10324:	e54b3005 	strb	r3, [fp, #-5]
   10328:	e55b3005 	ldrb	r3, [fp, #-5]
   1032c:	e1a00003 	mov	r0, r3
   10330:	e28bd000 	add	sp, fp, #0
   10334:	e8bd0800 	ldmfd	sp!, {fp}
   10338:	e12fff1e 	bx	lr

0001033c <ASCII_Cmp>:
   1033c:	e92d4800 	push	{fp, lr}
   10340:	e28db004 	add	fp, sp, #4
   10344:	e24dd010 	sub	sp, sp, #16
   10348:	e1a02000 	mov	r2, r0
   1034c:	e1a03001 	mov	r3, r1
   10350:	e54b200d 	strb	r2, [fp, #-13]
   10354:	e54b300e 	strb	r3, [fp, #-14]
   10358:	e55b300d 	ldrb	r3, [fp, #-13]
   1035c:	e1a00003 	mov	r0, r3
   10360:	ebffffdf 	bl	102e4 <ASCII_ToUpper>
   10364:	e1a03000 	mov	r3, r0
   10368:	e54b3005 	strb	r3, [fp, #-5]
   1036c:	e55b300e 	ldrb	r3, [fp, #-14]
   10370:	e1a00003 	mov	r0, r3
   10374:	ebffffda 	bl	102e4 <ASCII_ToUpper>
   10378:	e1a03000 	mov	r3, r0
   1037c:	e54b3006 	strb	r3, [fp, #-6]
   10380:	e55b2005 	ldrb	r2, [fp, #-5]
   10384:	e55b3006 	ldrb	r3, [fp, #-6]
   10388:	e1520003 	cmp	r2, r3
   1038c:	1a000001 	bne	10398 <ASCII_Cmp+0x5c>
   10390:	e3a03001 	mov	r3, #1
   10394:	ea000000 	b	1039c <ASCII_Cmp+0x60>
   10398:	e3a03000 	mov	r3, #0
   1039c:	e54b3007 	strb	r3, [fp, #-7]
   103a0:	e55b3007 	ldrb	r3, [fp, #-7]
   103a4:	e1a00003 	mov	r0, r3
   103a8:	e24bd004 	sub	sp, fp, #4
   103ac:	e8bd8800 	pop	{fp, pc}

000103b0 <Math_Init>:
   103b0:	e92d4800 	push	{fp, lr}
   103b4:	e28db004 	add	fp, sp, #4
   103b8:	e3a00001 	mov	r0, #1
   103bc:	eb000000 	bl	103c4 <Math_RandSetSeed>
   103c0:	e8bd8800 	pop	{fp, pc}

000103c4 <Math_RandSetSeed>:
   103c4:	e92d4800 	push	{fp, lr}
   103c8:	e28db004 	add	fp, sp, #4
   103cc:	e24dd010 	sub	sp, sp, #16
   103d0:	e50b0010 	str	r0, [fp, #-16]
   103d4:	e3a03000 	mov	r3, #0
   103d8:	e50b3008 	str	r3, [fp, #-8]
   103dc:	eb000b43 	bl	130f0 <CPU_SR_Save>
   103e0:	e50b0008 	str	r0, [fp, #-8]
   103e4:	e30b3c34 	movw	r3, #48180	; 0xbc34
   103e8:	e3403019 	movt	r3, #25
   103ec:	e51b2010 	ldr	r2, [fp, #-16]
   103f0:	e5832000 	str	r2, [r3]
   103f4:	e51b0008 	ldr	r0, [fp, #-8]
   103f8:	eb000b4f 	bl	1313c <CPU_SR_Restore>
   103fc:	e24bd004 	sub	sp, fp, #4
   10400:	e8bd8800 	pop	{fp, pc}

00010404 <Math_Rand>:
   10404:	e92d4800 	push	{fp, lr}
   10408:	e28db004 	add	fp, sp, #4
   1040c:	e24dd010 	sub	sp, sp, #16
   10410:	e3a03000 	mov	r3, #0
   10414:	e50b3008 	str	r3, [fp, #-8]
   10418:	eb000b34 	bl	130f0 <CPU_SR_Save>
   1041c:	e50b0008 	str	r0, [fp, #-8]
   10420:	e30b3c34 	movw	r3, #48180	; 0xbc34
   10424:	e3403019 	movt	r3, #25
   10428:	e5933000 	ldr	r3, [r3]
   1042c:	e50b300c 	str	r3, [fp, #-12]
   10430:	e51b000c 	ldr	r0, [fp, #-12]
   10434:	eb00000a 	bl	10464 <Math_RandSeed>
   10438:	e50b0010 	str	r0, [fp, #-16]
   1043c:	e30b3c34 	movw	r3, #48180	; 0xbc34
   10440:	e3403019 	movt	r3, #25
   10444:	e51b2010 	ldr	r2, [fp, #-16]
   10448:	e5832000 	str	r2, [r3]
   1044c:	e51b0008 	ldr	r0, [fp, #-8]
   10450:	eb000b39 	bl	1313c <CPU_SR_Restore>
   10454:	e51b3010 	ldr	r3, [fp, #-16]
   10458:	e1a00003 	mov	r0, r3
   1045c:	e24bd004 	sub	sp, fp, #4
   10460:	e8bd8800 	pop	{fp, pc}

00010464 <Math_RandSeed>:
   10464:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10468:	e28db000 	add	fp, sp, #0
   1046c:	e24dd014 	sub	sp, sp, #20
   10470:	e50b0010 	str	r0, [fp, #-16]
   10474:	e51b2010 	ldr	r2, [fp, #-16]
   10478:	e3043e6d 	movw	r3, #20077	; 0x4e6d
   1047c:	e34431c6 	movt	r3, #16838	; 0x41c6
   10480:	e0030293 	mul	r3, r3, r2
   10484:	e2833a03 	add	r3, r3, #12288	; 0x3000
   10488:	e2833039 	add	r3, r3, #57	; 0x39
   1048c:	e3c33102 	bic	r3, r3, #-2147483648	; 0x80000000
   10490:	e50b3008 	str	r3, [fp, #-8]
   10494:	e51b3008 	ldr	r3, [fp, #-8]
   10498:	e1a00003 	mov	r0, r3
   1049c:	e28bd000 	add	sp, fp, #0
   104a0:	e8bd0800 	ldmfd	sp!, {fp}
   104a4:	e12fff1e 	bx	lr

000104a8 <Mem_Init>:
   104a8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   104ac:	e28db000 	add	fp, sp, #0
   104b0:	e28bd000 	add	sp, fp, #0
   104b4:	e8bd0800 	ldmfd	sp!, {fp}
   104b8:	e12fff1e 	bx	lr

000104bc <Mem_Clr>:
   104bc:	e92d4800 	push	{fp, lr}
   104c0:	e28db004 	add	fp, sp, #4
   104c4:	e24dd008 	sub	sp, sp, #8
   104c8:	e50b0008 	str	r0, [fp, #-8]
   104cc:	e50b100c 	str	r1, [fp, #-12]
   104d0:	e51b0008 	ldr	r0, [fp, #-8]
   104d4:	e3a01000 	mov	r1, #0
   104d8:	e51b200c 	ldr	r2, [fp, #-12]
   104dc:	eb000001 	bl	104e8 <Mem_Set>
   104e0:	e24bd004 	sub	sp, fp, #4
   104e4:	e8bd8800 	pop	{fp, pc}

000104e8 <Mem_Set>:
   104e8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   104ec:	e28db000 	add	fp, sp, #0
   104f0:	e24dd02c 	sub	sp, sp, #44	; 0x2c
   104f4:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
   104f8:	e1a03001 	mov	r3, r1
   104fc:	e50b2028 	str	r2, [fp, #-40]	; 0xffffffd8
   10500:	e54b3021 	strb	r3, [fp, #-33]	; 0xffffffdf
   10504:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
   10508:	e3530000 	cmp	r3, #0
   1050c:	0a000053 	beq	10660 <Mem_Set+0x178>
   10510:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
   10514:	e3530000 	cmp	r3, #0
   10518:	0a000052 	beq	10668 <Mem_Set+0x180>
   1051c:	e3a03000 	mov	r3, #0
   10520:	e50b300c 	str	r3, [fp, #-12]
   10524:	e3a03000 	mov	r3, #0
   10528:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   1052c:	ea000009 	b	10558 <Mem_Set+0x70>
   10530:	e51b300c 	ldr	r3, [fp, #-12]
   10534:	e1a03403 	lsl	r3, r3, #8
   10538:	e50b300c 	str	r3, [fp, #-12]
   1053c:	e55b3021 	ldrb	r3, [fp, #-33]	; 0xffffffdf
   10540:	e51b200c 	ldr	r2, [fp, #-12]
   10544:	e1823003 	orr	r3, r2, r3
   10548:	e50b300c 	str	r3, [fp, #-12]
   1054c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   10550:	e2833001 	add	r3, r3, #1
   10554:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   10558:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   1055c:	e3530003 	cmp	r3, #3
   10560:	9afffff2 	bls	10530 <Mem_Set+0x48>
   10564:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
   10568:	e50b3008 	str	r3, [fp, #-8]
   1056c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
   10570:	e6ef3073 	uxtb	r3, r3
   10574:	e2033003 	and	r3, r3, #3
   10578:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
   1057c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
   10580:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10584:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   10588:	e3530000 	cmp	r3, #0
   1058c:	0a000014 	beq	105e4 <Mem_Set+0xfc>
   10590:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   10594:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   10598:	ea00000b 	b	105cc <Mem_Set+0xe4>
   1059c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   105a0:	e55b2021 	ldrb	r2, [fp, #-33]	; 0xffffffdf
   105a4:	e5c32000 	strb	r2, [r3]
   105a8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   105ac:	e2833001 	add	r3, r3, #1
   105b0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   105b4:	e51b3008 	ldr	r3, [fp, #-8]
   105b8:	e2433001 	sub	r3, r3, #1
   105bc:	e50b3008 	str	r3, [fp, #-8]
   105c0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   105c4:	e2833001 	add	r3, r3, #1
   105c8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   105cc:	e51b3008 	ldr	r3, [fp, #-8]
   105d0:	e3530000 	cmp	r3, #0
   105d4:	0a000002 	beq	105e4 <Mem_Set+0xfc>
   105d8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   105dc:	e3530003 	cmp	r3, #3
   105e0:	9affffed 	bls	1059c <Mem_Set+0xb4>
   105e4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   105e8:	e50b3010 	str	r3, [fp, #-16]
   105ec:	ea000008 	b	10614 <Mem_Set+0x12c>
   105f0:	e51b3010 	ldr	r3, [fp, #-16]
   105f4:	e51b200c 	ldr	r2, [fp, #-12]
   105f8:	e5832000 	str	r2, [r3]
   105fc:	e51b3010 	ldr	r3, [fp, #-16]
   10600:	e2833004 	add	r3, r3, #4
   10604:	e50b3010 	str	r3, [fp, #-16]
   10608:	e51b3008 	ldr	r3, [fp, #-8]
   1060c:	e2433004 	sub	r3, r3, #4
   10610:	e50b3008 	str	r3, [fp, #-8]
   10614:	e51b3008 	ldr	r3, [fp, #-8]
   10618:	e3530003 	cmp	r3, #3
   1061c:	8afffff3 	bhi	105f0 <Mem_Set+0x108>
   10620:	e51b3010 	ldr	r3, [fp, #-16]
   10624:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10628:	ea000008 	b	10650 <Mem_Set+0x168>
   1062c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10630:	e55b2021 	ldrb	r2, [fp, #-33]	; 0xffffffdf
   10634:	e5c32000 	strb	r2, [r3]
   10638:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   1063c:	e2833001 	add	r3, r3, #1
   10640:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10644:	e51b3008 	ldr	r3, [fp, #-8]
   10648:	e2433001 	sub	r3, r3, #1
   1064c:	e50b3008 	str	r3, [fp, #-8]
   10650:	e51b3008 	ldr	r3, [fp, #-8]
   10654:	e3530000 	cmp	r3, #0
   10658:	1afffff3 	bne	1062c <Mem_Set+0x144>
   1065c:	ea000002 	b	1066c <Mem_Set+0x184>
   10660:	e1a00000 	nop			; (mov r0, r0)
   10664:	ea000000 	b	1066c <Mem_Set+0x184>
   10668:	e1a00000 	nop			; (mov r0, r0)
   1066c:	e28bd000 	add	sp, fp, #0
   10670:	e8bd0800 	ldmfd	sp!, {fp}
   10674:	e12fff1e 	bx	lr

00010678 <Mem_Cmp>:
   10678:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   1067c:	e28db000 	add	fp, sp, #0
   10680:	e24dd03c 	sub	sp, sp, #60	; 0x3c
   10684:	e50b0030 	str	r0, [fp, #-48]	; 0xffffffd0
   10688:	e50b1034 	str	r1, [fp, #-52]	; 0xffffffcc
   1068c:	e50b2038 	str	r2, [fp, #-56]	; 0xffffffc8
   10690:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
   10694:	e3530000 	cmp	r3, #0
   10698:	1a000001 	bne	106a4 <Mem_Cmp+0x2c>
   1069c:	e3a03001 	mov	r3, #1
   106a0:	ea000087 	b	108c4 <Mem_Cmp+0x24c>
   106a4:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
   106a8:	e3530000 	cmp	r3, #0
   106ac:	1a000001 	bne	106b8 <Mem_Cmp+0x40>
   106b0:	e3a03000 	mov	r3, #0
   106b4:	ea000082 	b	108c4 <Mem_Cmp+0x24c>
   106b8:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
   106bc:	e3530000 	cmp	r3, #0
   106c0:	1a000001 	bne	106cc <Mem_Cmp+0x54>
   106c4:	e3a03000 	mov	r3, #0
   106c8:	ea00007d 	b	108c4 <Mem_Cmp+0x24c>
   106cc:	e3a03001 	mov	r3, #1
   106d0:	e54b301d 	strb	r3, [fp, #-29]	; 0xffffffe3
   106d4:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
   106d8:	e50b3008 	str	r3, [fp, #-8]
   106dc:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
   106e0:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
   106e4:	e0823003 	add	r3, r2, r3
   106e8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   106ec:	e51b2034 	ldr	r2, [fp, #-52]	; 0xffffffcc
   106f0:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
   106f4:	e0823003 	add	r3, r2, r3
   106f8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   106fc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10700:	e6ef3073 	uxtb	r3, r3
   10704:	e2033003 	and	r3, r3, #3
   10708:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
   1070c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   10710:	e6ef3073 	uxtb	r3, r3
   10714:	e2033003 	and	r3, r3, #3
   10718:	e50b3028 	str	r3, [fp, #-40]	; 0xffffffd8
   1071c:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
   10720:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
   10724:	e1520003 	cmp	r2, r3
   10728:	1a000001 	bne	10734 <Mem_Cmp+0xbc>
   1072c:	e3a03001 	mov	r3, #1
   10730:	ea000000 	b	10738 <Mem_Cmp+0xc0>
   10734:	e3a03000 	mov	r3, #0
   10738:	e54b3029 	strb	r3, [fp, #-41]	; 0xffffffd7
   1073c:	e55b3029 	ldrb	r3, [fp, #-41]	; 0xffffffd7
   10740:	e3530001 	cmp	r3, #1
   10744:	1a000057 	bne	108a8 <Mem_Cmp+0x230>
   10748:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
   1074c:	e3530000 	cmp	r3, #0
   10750:	0a00001f 	beq	107d4 <Mem_Cmp+0x15c>
   10754:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
   10758:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
   1075c:	ea000013 	b	107b0 <Mem_Cmp+0x138>
   10760:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10764:	e2433001 	sub	r3, r3, #1
   10768:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   1076c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   10770:	e2433001 	sub	r3, r3, #1
   10774:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   10778:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   1077c:	e5d32000 	ldrb	r2, [r3]
   10780:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   10784:	e5d33000 	ldrb	r3, [r3]
   10788:	e1520003 	cmp	r2, r3
   1078c:	0a000001 	beq	10798 <Mem_Cmp+0x120>
   10790:	e3a03000 	mov	r3, #0
   10794:	e54b301d 	strb	r3, [fp, #-29]	; 0xffffffe3
   10798:	e51b3008 	ldr	r3, [fp, #-8]
   1079c:	e2433001 	sub	r3, r3, #1
   107a0:	e50b3008 	str	r3, [fp, #-8]
   107a4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   107a8:	e2433001 	sub	r3, r3, #1
   107ac:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
   107b0:	e55b301d 	ldrb	r3, [fp, #-29]	; 0xffffffe3
   107b4:	e3530001 	cmp	r3, #1
   107b8:	1a000005 	bne	107d4 <Mem_Cmp+0x15c>
   107bc:	e51b3008 	ldr	r3, [fp, #-8]
   107c0:	e3530000 	cmp	r3, #0
   107c4:	0a000002 	beq	107d4 <Mem_Cmp+0x15c>
   107c8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   107cc:	e3530000 	cmp	r3, #0
   107d0:	1affffe2 	bne	10760 <Mem_Cmp+0xe8>
   107d4:	e55b301d 	ldrb	r3, [fp, #-29]	; 0xffffffe3
   107d8:	e3530001 	cmp	r3, #1
   107dc:	1a000031 	bne	108a8 <Mem_Cmp+0x230>
   107e0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   107e4:	e50b300c 	str	r3, [fp, #-12]
   107e8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   107ec:	e50b3010 	str	r3, [fp, #-16]
   107f0:	ea000010 	b	10838 <Mem_Cmp+0x1c0>
   107f4:	e51b300c 	ldr	r3, [fp, #-12]
   107f8:	e2433004 	sub	r3, r3, #4
   107fc:	e50b300c 	str	r3, [fp, #-12]
   10800:	e51b3010 	ldr	r3, [fp, #-16]
   10804:	e2433004 	sub	r3, r3, #4
   10808:	e50b3010 	str	r3, [fp, #-16]
   1080c:	e51b300c 	ldr	r3, [fp, #-12]
   10810:	e5932000 	ldr	r2, [r3]
   10814:	e51b3010 	ldr	r3, [fp, #-16]
   10818:	e5933000 	ldr	r3, [r3]
   1081c:	e1520003 	cmp	r2, r3
   10820:	0a000001 	beq	1082c <Mem_Cmp+0x1b4>
   10824:	e3a03000 	mov	r3, #0
   10828:	e54b301d 	strb	r3, [fp, #-29]	; 0xffffffe3
   1082c:	e51b3008 	ldr	r3, [fp, #-8]
   10830:	e2433004 	sub	r3, r3, #4
   10834:	e50b3008 	str	r3, [fp, #-8]
   10838:	e55b301d 	ldrb	r3, [fp, #-29]	; 0xffffffe3
   1083c:	e3530001 	cmp	r3, #1
   10840:	1a000002 	bne	10850 <Mem_Cmp+0x1d8>
   10844:	e51b3008 	ldr	r3, [fp, #-8]
   10848:	e3530003 	cmp	r3, #3
   1084c:	8affffe8 	bhi	107f4 <Mem_Cmp+0x17c>
   10850:	e51b300c 	ldr	r3, [fp, #-12]
   10854:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10858:	e51b3010 	ldr	r3, [fp, #-16]
   1085c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   10860:	ea000010 	b	108a8 <Mem_Cmp+0x230>
   10864:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10868:	e2433001 	sub	r3, r3, #1
   1086c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10870:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   10874:	e2433001 	sub	r3, r3, #1
   10878:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   1087c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10880:	e5d32000 	ldrb	r2, [r3]
   10884:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   10888:	e5d33000 	ldrb	r3, [r3]
   1088c:	e1520003 	cmp	r2, r3
   10890:	0a000001 	beq	1089c <Mem_Cmp+0x224>
   10894:	e3a03000 	mov	r3, #0
   10898:	e54b301d 	strb	r3, [fp, #-29]	; 0xffffffe3
   1089c:	e51b3008 	ldr	r3, [fp, #-8]
   108a0:	e2433001 	sub	r3, r3, #1
   108a4:	e50b3008 	str	r3, [fp, #-8]
   108a8:	e55b301d 	ldrb	r3, [fp, #-29]	; 0xffffffe3
   108ac:	e3530001 	cmp	r3, #1
   108b0:	1a000002 	bne	108c0 <Mem_Cmp+0x248>
   108b4:	e51b3008 	ldr	r3, [fp, #-8]
   108b8:	e3530000 	cmp	r3, #0
   108bc:	1affffe8 	bne	10864 <Mem_Cmp+0x1ec>
   108c0:	e55b301d 	ldrb	r3, [fp, #-29]	; 0xffffffe3
   108c4:	e1a00003 	mov	r0, r3
   108c8:	e28bd000 	add	sp, fp, #0
   108cc:	e8bd0800 	ldmfd	sp!, {fp}
   108d0:	e12fff1e 	bx	lr

000108d4 <Str_Len>:
   108d4:	e92d4800 	push	{fp, lr}
   108d8:	e28db004 	add	fp, sp, #4
   108dc:	e24dd010 	sub	sp, sp, #16
   108e0:	e50b0010 	str	r0, [fp, #-16]
   108e4:	e51b0010 	ldr	r0, [fp, #-16]
   108e8:	e3e01000 	mvn	r1, #0
   108ec:	eb000004 	bl	10904 <Str_Len_N>
   108f0:	e50b0008 	str	r0, [fp, #-8]
   108f4:	e51b3008 	ldr	r3, [fp, #-8]
   108f8:	e1a00003 	mov	r0, r3
   108fc:	e24bd004 	sub	sp, fp, #4
   10900:	e8bd8800 	pop	{fp, pc}

00010904 <Str_Len_N>:
   10904:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10908:	e28db000 	add	fp, sp, #0
   1090c:	e24dd014 	sub	sp, sp, #20
   10910:	e50b0010 	str	r0, [fp, #-16]
   10914:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   10918:	e51b3010 	ldr	r3, [fp, #-16]
   1091c:	e50b3008 	str	r3, [fp, #-8]
   10920:	e3a03000 	mov	r3, #0
   10924:	e50b300c 	str	r3, [fp, #-12]
   10928:	ea000005 	b	10944 <Str_Len_N+0x40>
   1092c:	e51b3008 	ldr	r3, [fp, #-8]
   10930:	e2833001 	add	r3, r3, #1
   10934:	e50b3008 	str	r3, [fp, #-8]
   10938:	e51b300c 	ldr	r3, [fp, #-12]
   1093c:	e2833001 	add	r3, r3, #1
   10940:	e50b300c 	str	r3, [fp, #-12]
   10944:	e51b3008 	ldr	r3, [fp, #-8]
   10948:	e3530000 	cmp	r3, #0
   1094c:	0a000007 	beq	10970 <Str_Len_N+0x6c>
   10950:	e51b3008 	ldr	r3, [fp, #-8]
   10954:	e5d33000 	ldrb	r3, [r3]
   10958:	e3530000 	cmp	r3, #0
   1095c:	0a000003 	beq	10970 <Str_Len_N+0x6c>
   10960:	e51b200c 	ldr	r2, [fp, #-12]
   10964:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10968:	e1520003 	cmp	r2, r3
   1096c:	3affffee 	bcc	1092c <Str_Len_N+0x28>
   10970:	e51b300c 	ldr	r3, [fp, #-12]
   10974:	e1a00003 	mov	r0, r3
   10978:	e28bd000 	add	sp, fp, #0
   1097c:	e8bd0800 	ldmfd	sp!, {fp}
   10980:	e12fff1e 	bx	lr

00010984 <Str_Copy>:
   10984:	e92d4800 	push	{fp, lr}
   10988:	e28db004 	add	fp, sp, #4
   1098c:	e24dd010 	sub	sp, sp, #16
   10990:	e50b0010 	str	r0, [fp, #-16]
   10994:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   10998:	e51b0010 	ldr	r0, [fp, #-16]
   1099c:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   109a0:	e3e02000 	mvn	r2, #0
   109a4:	eb000004 	bl	109bc <Str_Copy_N>
   109a8:	e50b0008 	str	r0, [fp, #-8]
   109ac:	e51b3008 	ldr	r3, [fp, #-8]
   109b0:	e1a00003 	mov	r0, r3
   109b4:	e24bd004 	sub	sp, fp, #4
   109b8:	e8bd8800 	pop	{fp, pc}

000109bc <Str_Copy_N>:
   109bc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   109c0:	e28db000 	add	fp, sp, #0
   109c4:	e24dd024 	sub	sp, sp, #36	; 0x24
   109c8:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
   109cc:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
   109d0:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
   109d4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   109d8:	e3530000 	cmp	r3, #0
   109dc:	1a000001 	bne	109e8 <Str_Copy_N+0x2c>
   109e0:	e3a03000 	mov	r3, #0
   109e4:	ea000036 	b	10ac4 <Str_Copy_N+0x108>
   109e8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   109ec:	e3530000 	cmp	r3, #0
   109f0:	1a000001 	bne	109fc <Str_Copy_N+0x40>
   109f4:	e3a03000 	mov	r3, #0
   109f8:	ea000031 	b	10ac4 <Str_Copy_N+0x108>
   109fc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   10a00:	e50b3008 	str	r3, [fp, #-8]
   10a04:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   10a08:	e50b300c 	str	r3, [fp, #-12]
   10a0c:	e3a03000 	mov	r3, #0
   10a10:	e50b3010 	str	r3, [fp, #-16]
   10a14:	ea00000c 	b	10a4c <Str_Copy_N+0x90>
   10a18:	e51b300c 	ldr	r3, [fp, #-12]
   10a1c:	e5d32000 	ldrb	r2, [r3]
   10a20:	e51b3008 	ldr	r3, [fp, #-8]
   10a24:	e5c32000 	strb	r2, [r3]
   10a28:	e51b3008 	ldr	r3, [fp, #-8]
   10a2c:	e2833001 	add	r3, r3, #1
   10a30:	e50b3008 	str	r3, [fp, #-8]
   10a34:	e51b300c 	ldr	r3, [fp, #-12]
   10a38:	e2833001 	add	r3, r3, #1
   10a3c:	e50b300c 	str	r3, [fp, #-12]
   10a40:	e51b3010 	ldr	r3, [fp, #-16]
   10a44:	e2833001 	add	r3, r3, #1
   10a48:	e50b3010 	str	r3, [fp, #-16]
   10a4c:	e51b3008 	ldr	r3, [fp, #-8]
   10a50:	e3530000 	cmp	r3, #0
   10a54:	0a00000a 	beq	10a84 <Str_Copy_N+0xc8>
   10a58:	e51b300c 	ldr	r3, [fp, #-12]
   10a5c:	e3530000 	cmp	r3, #0
   10a60:	0a000007 	beq	10a84 <Str_Copy_N+0xc8>
   10a64:	e51b300c 	ldr	r3, [fp, #-12]
   10a68:	e5d33000 	ldrb	r3, [r3]
   10a6c:	e3530000 	cmp	r3, #0
   10a70:	0a000003 	beq	10a84 <Str_Copy_N+0xc8>
   10a74:	e51b2010 	ldr	r2, [fp, #-16]
   10a78:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
   10a7c:	e1520003 	cmp	r2, r3
   10a80:	3affffe4 	bcc	10a18 <Str_Copy_N+0x5c>
   10a84:	e51b3008 	ldr	r3, [fp, #-8]
   10a88:	e3530000 	cmp	r3, #0
   10a8c:	0a000002 	beq	10a9c <Str_Copy_N+0xe0>
   10a90:	e51b300c 	ldr	r3, [fp, #-12]
   10a94:	e3530000 	cmp	r3, #0
   10a98:	1a000001 	bne	10aa4 <Str_Copy_N+0xe8>
   10a9c:	e3a03000 	mov	r3, #0
   10aa0:	ea000007 	b	10ac4 <Str_Copy_N+0x108>
   10aa4:	e51b2010 	ldr	r2, [fp, #-16]
   10aa8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
   10aac:	e1520003 	cmp	r2, r3
   10ab0:	2a000002 	bcs	10ac0 <Str_Copy_N+0x104>
   10ab4:	e51b3008 	ldr	r3, [fp, #-8]
   10ab8:	e3a02000 	mov	r2, #0
   10abc:	e5c32000 	strb	r2, [r3]
   10ac0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   10ac4:	e1a00003 	mov	r0, r3
   10ac8:	e28bd000 	add	sp, fp, #0
   10acc:	e8bd0800 	ldmfd	sp!, {fp}
   10ad0:	e12fff1e 	bx	lr

00010ad4 <Str_Cat>:
   10ad4:	e92d4800 	push	{fp, lr}
   10ad8:	e28db004 	add	fp, sp, #4
   10adc:	e24dd010 	sub	sp, sp, #16
   10ae0:	e50b0010 	str	r0, [fp, #-16]
   10ae4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   10ae8:	e51b0010 	ldr	r0, [fp, #-16]
   10aec:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   10af0:	e3e02000 	mvn	r2, #0
   10af4:	eb000004 	bl	10b0c <Str_Cat_N>
   10af8:	e50b0008 	str	r0, [fp, #-8]
   10afc:	e51b3008 	ldr	r3, [fp, #-8]
   10b00:	e1a00003 	mov	r0, r3
   10b04:	e24bd004 	sub	sp, fp, #4
   10b08:	e8bd8800 	pop	{fp, pc}

00010b0c <Str_Cat_N>:
   10b0c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10b10:	e28db000 	add	fp, sp, #0
   10b14:	e24dd024 	sub	sp, sp, #36	; 0x24
   10b18:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
   10b1c:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
   10b20:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
   10b24:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   10b28:	e3530000 	cmp	r3, #0
   10b2c:	1a000001 	bne	10b38 <Str_Cat_N+0x2c>
   10b30:	e3a03000 	mov	r3, #0
   10b34:	ea000047 	b	10c58 <Str_Cat_N+0x14c>
   10b38:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   10b3c:	e3530000 	cmp	r3, #0
   10b40:	1a000001 	bne	10b4c <Str_Cat_N+0x40>
   10b44:	e3a03000 	mov	r3, #0
   10b48:	ea000042 	b	10c58 <Str_Cat_N+0x14c>
   10b4c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
   10b50:	e3530000 	cmp	r3, #0
   10b54:	1a000001 	bne	10b60 <Str_Cat_N+0x54>
   10b58:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   10b5c:	ea00003d 	b	10c58 <Str_Cat_N+0x14c>
   10b60:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   10b64:	e50b3008 	str	r3, [fp, #-8]
   10b68:	ea000002 	b	10b78 <Str_Cat_N+0x6c>
   10b6c:	e51b3008 	ldr	r3, [fp, #-8]
   10b70:	e2833001 	add	r3, r3, #1
   10b74:	e50b3008 	str	r3, [fp, #-8]
   10b78:	e51b3008 	ldr	r3, [fp, #-8]
   10b7c:	e3530000 	cmp	r3, #0
   10b80:	0a000003 	beq	10b94 <Str_Cat_N+0x88>
   10b84:	e51b3008 	ldr	r3, [fp, #-8]
   10b88:	e5d33000 	ldrb	r3, [r3]
   10b8c:	e3530000 	cmp	r3, #0
   10b90:	1afffff5 	bne	10b6c <Str_Cat_N+0x60>
   10b94:	e51b3008 	ldr	r3, [fp, #-8]
   10b98:	e3530000 	cmp	r3, #0
   10b9c:	1a000001 	bne	10ba8 <Str_Cat_N+0x9c>
   10ba0:	e3a03000 	mov	r3, #0
   10ba4:	ea00002b 	b	10c58 <Str_Cat_N+0x14c>
   10ba8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   10bac:	e50b300c 	str	r3, [fp, #-12]
   10bb0:	e3a03000 	mov	r3, #0
   10bb4:	e50b3010 	str	r3, [fp, #-16]
   10bb8:	ea00000c 	b	10bf0 <Str_Cat_N+0xe4>
   10bbc:	e51b300c 	ldr	r3, [fp, #-12]
   10bc0:	e5d32000 	ldrb	r2, [r3]
   10bc4:	e51b3008 	ldr	r3, [fp, #-8]
   10bc8:	e5c32000 	strb	r2, [r3]
   10bcc:	e51b3008 	ldr	r3, [fp, #-8]
   10bd0:	e2833001 	add	r3, r3, #1
   10bd4:	e50b3008 	str	r3, [fp, #-8]
   10bd8:	e51b300c 	ldr	r3, [fp, #-12]
   10bdc:	e2833001 	add	r3, r3, #1
   10be0:	e50b300c 	str	r3, [fp, #-12]
   10be4:	e51b3010 	ldr	r3, [fp, #-16]
   10be8:	e2833001 	add	r3, r3, #1
   10bec:	e50b3010 	str	r3, [fp, #-16]
   10bf0:	e51b3008 	ldr	r3, [fp, #-8]
   10bf4:	e3530000 	cmp	r3, #0
   10bf8:	0a00000a 	beq	10c28 <Str_Cat_N+0x11c>
   10bfc:	e51b300c 	ldr	r3, [fp, #-12]
   10c00:	e3530000 	cmp	r3, #0
   10c04:	0a000007 	beq	10c28 <Str_Cat_N+0x11c>
   10c08:	e51b300c 	ldr	r3, [fp, #-12]
   10c0c:	e5d33000 	ldrb	r3, [r3]
   10c10:	e3530000 	cmp	r3, #0
   10c14:	0a000003 	beq	10c28 <Str_Cat_N+0x11c>
   10c18:	e51b2010 	ldr	r2, [fp, #-16]
   10c1c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
   10c20:	e1520003 	cmp	r2, r3
   10c24:	3affffe4 	bcc	10bbc <Str_Cat_N+0xb0>
   10c28:	e51b3008 	ldr	r3, [fp, #-8]
   10c2c:	e3530000 	cmp	r3, #0
   10c30:	0a000002 	beq	10c40 <Str_Cat_N+0x134>
   10c34:	e51b300c 	ldr	r3, [fp, #-12]
   10c38:	e3530000 	cmp	r3, #0
   10c3c:	1a000001 	bne	10c48 <Str_Cat_N+0x13c>
   10c40:	e3a03000 	mov	r3, #0
   10c44:	ea000003 	b	10c58 <Str_Cat_N+0x14c>
   10c48:	e51b3008 	ldr	r3, [fp, #-8]
   10c4c:	e3a02000 	mov	r2, #0
   10c50:	e5c32000 	strb	r2, [r3]
   10c54:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   10c58:	e1a00003 	mov	r0, r3
   10c5c:	e28bd000 	add	sp, fp, #0
   10c60:	e8bd0800 	ldmfd	sp!, {fp}
   10c64:	e12fff1e 	bx	lr

00010c68 <Str_Cmp>:
   10c68:	e92d4800 	push	{fp, lr}
   10c6c:	e28db004 	add	fp, sp, #4
   10c70:	e24dd010 	sub	sp, sp, #16
   10c74:	e50b0010 	str	r0, [fp, #-16]
   10c78:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   10c7c:	e51b0010 	ldr	r0, [fp, #-16]
   10c80:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   10c84:	e3e02000 	mvn	r2, #0
   10c88:	eb000006 	bl	10ca8 <Str_Cmp_N>
   10c8c:	e1a03000 	mov	r3, r0
   10c90:	e14b30b6 	strh	r3, [fp, #-6]
   10c94:	e15b30b6 	ldrh	r3, [fp, #-6]
   10c98:	e6bf3073 	sxth	r3, r3
   10c9c:	e1a00003 	mov	r0, r3
   10ca0:	e24bd004 	sub	sp, fp, #4
   10ca4:	e8bd8800 	pop	{fp, pc}

00010ca8 <Str_Cmp_N>:
   10ca8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10cac:	e28db000 	add	fp, sp, #0
   10cb0:	e24dd02c 	sub	sp, sp, #44	; 0x2c
   10cb4:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
   10cb8:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
   10cbc:	e50b2028 	str	r2, [fp, #-40]	; 0xffffffd8
   10cc0:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
   10cc4:	e3530000 	cmp	r3, #0
   10cc8:	1a000001 	bne	10cd4 <Str_Cmp_N+0x2c>
   10ccc:	e3a03000 	mov	r3, #0
   10cd0:	ea000079 	b	10ebc <Str_Cmp_N+0x214>
   10cd4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
   10cd8:	e3530000 	cmp	r3, #0
   10cdc:	1a00000b 	bne	10d10 <Str_Cmp_N+0x68>
   10ce0:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
   10ce4:	e3530000 	cmp	r3, #0
   10ce8:	1a000001 	bne	10cf4 <Str_Cmp_N+0x4c>
   10cec:	e3a03000 	mov	r3, #0
   10cf0:	ea000071 	b	10ebc <Str_Cmp_N+0x214>
   10cf4:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
   10cf8:	e5d33000 	ldrb	r3, [r3]
   10cfc:	e2633000 	rsb	r3, r3, #0
   10d00:	e6ff3073 	uxth	r3, r3
   10d04:	e14b31b6 	strh	r3, [fp, #-22]	; 0xffffffea
   10d08:	e15b31b6 	ldrh	r3, [fp, #-22]	; 0xffffffea
   10d0c:	ea00006a 	b	10ebc <Str_Cmp_N+0x214>
   10d10:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
   10d14:	e3530000 	cmp	r3, #0
   10d18:	1a000004 	bne	10d30 <Str_Cmp_N+0x88>
   10d1c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
   10d20:	e5d33000 	ldrb	r3, [r3]
   10d24:	e14b31b6 	strh	r3, [fp, #-22]	; 0xffffffea
   10d28:	e15b31b6 	ldrh	r3, [fp, #-22]	; 0xffffffea
   10d2c:	ea000062 	b	10ebc <Str_Cmp_N+0x214>
   10d30:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
   10d34:	e50b3008 	str	r3, [fp, #-8]
   10d38:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
   10d3c:	e50b300c 	str	r3, [fp, #-12]
   10d40:	e51b3008 	ldr	r3, [fp, #-8]
   10d44:	e50b3010 	str	r3, [fp, #-16]
   10d48:	e51b300c 	ldr	r3, [fp, #-12]
   10d4c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10d50:	e51b3010 	ldr	r3, [fp, #-16]
   10d54:	e2833001 	add	r3, r3, #1
   10d58:	e50b3010 	str	r3, [fp, #-16]
   10d5c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10d60:	e2833001 	add	r3, r3, #1
   10d64:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10d68:	e3a03000 	mov	r3, #0
   10d6c:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
   10d70:	ea00000e 	b	10db0 <Str_Cmp_N+0x108>
   10d74:	e51b3008 	ldr	r3, [fp, #-8]
   10d78:	e2833001 	add	r3, r3, #1
   10d7c:	e50b3008 	str	r3, [fp, #-8]
   10d80:	e51b300c 	ldr	r3, [fp, #-12]
   10d84:	e2833001 	add	r3, r3, #1
   10d88:	e50b300c 	str	r3, [fp, #-12]
   10d8c:	e51b3010 	ldr	r3, [fp, #-16]
   10d90:	e2833001 	add	r3, r3, #1
   10d94:	e50b3010 	str	r3, [fp, #-16]
   10d98:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10d9c:	e2833001 	add	r3, r3, #1
   10da0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10da4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   10da8:	e2833001 	add	r3, r3, #1
   10dac:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
   10db0:	e51b3008 	ldr	r3, [fp, #-8]
   10db4:	e5d32000 	ldrb	r2, [r3]
   10db8:	e51b300c 	ldr	r3, [fp, #-12]
   10dbc:	e5d33000 	ldrb	r3, [r3]
   10dc0:	e1520003 	cmp	r2, r3
   10dc4:	1a00000d 	bne	10e00 <Str_Cmp_N+0x158>
   10dc8:	e51b3008 	ldr	r3, [fp, #-8]
   10dcc:	e5d33000 	ldrb	r3, [r3]
   10dd0:	e3530000 	cmp	r3, #0
   10dd4:	0a000009 	beq	10e00 <Str_Cmp_N+0x158>
   10dd8:	e51b3010 	ldr	r3, [fp, #-16]
   10ddc:	e3530000 	cmp	r3, #0
   10de0:	0a000006 	beq	10e00 <Str_Cmp_N+0x158>
   10de4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10de8:	e3530000 	cmp	r3, #0
   10dec:	0a000003 	beq	10e00 <Str_Cmp_N+0x158>
   10df0:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
   10df4:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
   10df8:	e1520003 	cmp	r2, r3
   10dfc:	3affffdc 	bcc	10d74 <Str_Cmp_N+0xcc>
   10e00:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
   10e04:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
   10e08:	e1520003 	cmp	r2, r3
   10e0c:	1a000001 	bne	10e18 <Str_Cmp_N+0x170>
   10e10:	e3a03000 	mov	r3, #0
   10e14:	ea000028 	b	10ebc <Str_Cmp_N+0x214>
   10e18:	e51b3008 	ldr	r3, [fp, #-8]
   10e1c:	e5d32000 	ldrb	r2, [r3]
   10e20:	e51b300c 	ldr	r3, [fp, #-12]
   10e24:	e5d33000 	ldrb	r3, [r3]
   10e28:	e1520003 	cmp	r2, r3
   10e2c:	0a000008 	beq	10e54 <Str_Cmp_N+0x1ac>
   10e30:	e51b3008 	ldr	r3, [fp, #-8]
   10e34:	e5d33000 	ldrb	r3, [r3]
   10e38:	e1a02003 	mov	r2, r3
   10e3c:	e51b300c 	ldr	r3, [fp, #-12]
   10e40:	e5d33000 	ldrb	r3, [r3]
   10e44:	e0633002 	rsb	r3, r3, r2
   10e48:	e6ff3073 	uxth	r3, r3
   10e4c:	e14b31b6 	strh	r3, [fp, #-22]	; 0xffffffea
   10e50:	ea000018 	b	10eb8 <Str_Cmp_N+0x210>
   10e54:	e51b3008 	ldr	r3, [fp, #-8]
   10e58:	e5d33000 	ldrb	r3, [r3]
   10e5c:	e3530000 	cmp	r3, #0
   10e60:	1a000002 	bne	10e70 <Str_Cmp_N+0x1c8>
   10e64:	e3a03000 	mov	r3, #0
   10e68:	e14b31b6 	strh	r3, [fp, #-22]	; 0xffffffea
   10e6c:	ea000011 	b	10eb8 <Str_Cmp_N+0x210>
   10e70:	e51b3010 	ldr	r3, [fp, #-16]
   10e74:	e3530000 	cmp	r3, #0
   10e78:	1a00000b 	bne	10eac <Str_Cmp_N+0x204>
   10e7c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10e80:	e3530000 	cmp	r3, #0
   10e84:	1a000002 	bne	10e94 <Str_Cmp_N+0x1ec>
   10e88:	e3a03000 	mov	r3, #0
   10e8c:	e14b31b6 	strh	r3, [fp, #-22]	; 0xffffffea
   10e90:	ea000008 	b	10eb8 <Str_Cmp_N+0x210>
   10e94:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10e98:	e5d33000 	ldrb	r3, [r3]
   10e9c:	e2633000 	rsb	r3, r3, #0
   10ea0:	e6ff3073 	uxth	r3, r3
   10ea4:	e14b31b6 	strh	r3, [fp, #-22]	; 0xffffffea
   10ea8:	ea000002 	b	10eb8 <Str_Cmp_N+0x210>
   10eac:	e51b3010 	ldr	r3, [fp, #-16]
   10eb0:	e5d33000 	ldrb	r3, [r3]
   10eb4:	e14b31b6 	strh	r3, [fp, #-22]	; 0xffffffea
   10eb8:	e15b31b6 	ldrh	r3, [fp, #-22]	; 0xffffffea
   10ebc:	e6bf3073 	sxth	r3, r3
   10ec0:	e1a00003 	mov	r0, r3
   10ec4:	e28bd000 	add	sp, fp, #0
   10ec8:	e8bd0800 	ldmfd	sp!, {fp}
   10ecc:	e12fff1e 	bx	lr

00010ed0 <Str_CmpIgnoreCase>:
   10ed0:	e92d4800 	push	{fp, lr}
   10ed4:	e28db004 	add	fp, sp, #4
   10ed8:	e24dd010 	sub	sp, sp, #16
   10edc:	e50b0010 	str	r0, [fp, #-16]
   10ee0:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   10ee4:	e51b0010 	ldr	r0, [fp, #-16]
   10ee8:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   10eec:	e3e02000 	mvn	r2, #0
   10ef0:	eb000006 	bl	10f10 <Str_CmpIgnoreCase_N>
   10ef4:	e1a03000 	mov	r3, r0
   10ef8:	e14b30b6 	strh	r3, [fp, #-6]
   10efc:	e15b30b6 	ldrh	r3, [fp, #-6]
   10f00:	e6bf3073 	sxth	r3, r3
   10f04:	e1a00003 	mov	r0, r3
   10f08:	e24bd004 	sub	sp, fp, #4
   10f0c:	e8bd8800 	pop	{fp, pc}

00010f10 <Str_CmpIgnoreCase_N>:
   10f10:	e92d4800 	push	{fp, lr}
   10f14:	e28db004 	add	fp, sp, #4
   10f18:	e24dd028 	sub	sp, sp, #40	; 0x28
   10f1c:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
   10f20:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
   10f24:	e50b2028 	str	r2, [fp, #-40]	; 0xffffffd8
   10f28:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
   10f2c:	e3530000 	cmp	r3, #0
   10f30:	1a000001 	bne	10f3c <Str_CmpIgnoreCase_N+0x2c>
   10f34:	e3a03000 	mov	r3, #0
   10f38:	ea0000a1 	b	111c4 <Str_CmpIgnoreCase_N+0x2b4>
   10f3c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
   10f40:	e3530000 	cmp	r3, #0
   10f44:	1a000011 	bne	10f90 <Str_CmpIgnoreCase_N+0x80>
   10f48:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
   10f4c:	e3530000 	cmp	r3, #0
   10f50:	1a000001 	bne	10f5c <Str_CmpIgnoreCase_N+0x4c>
   10f54:	e3a03000 	mov	r3, #0
   10f58:	ea000099 	b	111c4 <Str_CmpIgnoreCase_N+0x2b4>
   10f5c:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
   10f60:	e5d33000 	ldrb	r3, [r3]
   10f64:	e1a00003 	mov	r0, r3
   10f68:	ebfffcc7 	bl	1028c <ASCII_ToLower>
   10f6c:	e1a03000 	mov	r3, r0
   10f70:	e54b3016 	strb	r3, [fp, #-22]	; 0xffffffea
   10f74:	e55b3016 	ldrb	r3, [fp, #-22]	; 0xffffffea
   10f78:	e6ff3073 	uxth	r3, r3
   10f7c:	e2633000 	rsb	r3, r3, #0
   10f80:	e6ff3073 	uxth	r3, r3
   10f84:	e14b31b8 	strh	r3, [fp, #-24]	; 0xffffffe8
   10f88:	e15b31b8 	ldrh	r3, [fp, #-24]	; 0xffffffe8
   10f8c:	ea00008c 	b	111c4 <Str_CmpIgnoreCase_N+0x2b4>
   10f90:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
   10f94:	e3530000 	cmp	r3, #0
   10f98:	1a000009 	bne	10fc4 <Str_CmpIgnoreCase_N+0xb4>
   10f9c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
   10fa0:	e5d33000 	ldrb	r3, [r3]
   10fa4:	e1a00003 	mov	r0, r3
   10fa8:	ebfffcb7 	bl	1028c <ASCII_ToLower>
   10fac:	e1a03000 	mov	r3, r0
   10fb0:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
   10fb4:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
   10fb8:	e14b31b8 	strh	r3, [fp, #-24]	; 0xffffffe8
   10fbc:	e15b31b8 	ldrh	r3, [fp, #-24]	; 0xffffffe8
   10fc0:	ea00007f 	b	111c4 <Str_CmpIgnoreCase_N+0x2b4>
   10fc4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
   10fc8:	e50b3008 	str	r3, [fp, #-8]
   10fcc:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
   10fd0:	e50b300c 	str	r3, [fp, #-12]
   10fd4:	e51b3008 	ldr	r3, [fp, #-8]
   10fd8:	e50b3010 	str	r3, [fp, #-16]
   10fdc:	e51b300c 	ldr	r3, [fp, #-12]
   10fe0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10fe4:	e51b3010 	ldr	r3, [fp, #-16]
   10fe8:	e2833001 	add	r3, r3, #1
   10fec:	e50b3010 	str	r3, [fp, #-16]
   10ff0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10ff4:	e2833001 	add	r3, r3, #1
   10ff8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10ffc:	e51b3008 	ldr	r3, [fp, #-8]
   11000:	e5d33000 	ldrb	r3, [r3]
   11004:	e1a00003 	mov	r0, r3
   11008:	ebfffc9f 	bl	1028c <ASCII_ToLower>
   1100c:	e1a03000 	mov	r3, r0
   11010:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
   11014:	e51b300c 	ldr	r3, [fp, #-12]
   11018:	e5d33000 	ldrb	r3, [r3]
   1101c:	e1a00003 	mov	r0, r3
   11020:	ebfffc99 	bl	1028c <ASCII_ToLower>
   11024:	e1a03000 	mov	r3, r0
   11028:	e54b3016 	strb	r3, [fp, #-22]	; 0xffffffea
   1102c:	e3a03000 	mov	r3, #0
   11030:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
   11034:	ea00001a 	b	110a4 <Str_CmpIgnoreCase_N+0x194>
   11038:	e51b3008 	ldr	r3, [fp, #-8]
   1103c:	e2833001 	add	r3, r3, #1
   11040:	e50b3008 	str	r3, [fp, #-8]
   11044:	e51b300c 	ldr	r3, [fp, #-12]
   11048:	e2833001 	add	r3, r3, #1
   1104c:	e50b300c 	str	r3, [fp, #-12]
   11050:	e51b3010 	ldr	r3, [fp, #-16]
   11054:	e2833001 	add	r3, r3, #1
   11058:	e50b3010 	str	r3, [fp, #-16]
   1105c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   11060:	e2833001 	add	r3, r3, #1
   11064:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   11068:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   1106c:	e2833001 	add	r3, r3, #1
   11070:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
   11074:	e51b3008 	ldr	r3, [fp, #-8]
   11078:	e5d33000 	ldrb	r3, [r3]
   1107c:	e1a00003 	mov	r0, r3
   11080:	ebfffc81 	bl	1028c <ASCII_ToLower>
   11084:	e1a03000 	mov	r3, r0
   11088:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
   1108c:	e51b300c 	ldr	r3, [fp, #-12]
   11090:	e5d33000 	ldrb	r3, [r3]
   11094:	e1a00003 	mov	r0, r3
   11098:	ebfffc7b 	bl	1028c <ASCII_ToLower>
   1109c:	e1a03000 	mov	r3, r0
   110a0:	e54b3016 	strb	r3, [fp, #-22]	; 0xffffffea
   110a4:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
   110a8:	e55b3016 	ldrb	r3, [fp, #-22]	; 0xffffffea
   110ac:	e1520003 	cmp	r2, r3
   110b0:	1a00000d 	bne	110ec <Str_CmpIgnoreCase_N+0x1dc>
   110b4:	e51b3008 	ldr	r3, [fp, #-8]
   110b8:	e5d33000 	ldrb	r3, [r3]
   110bc:	e3530000 	cmp	r3, #0
   110c0:	0a000009 	beq	110ec <Str_CmpIgnoreCase_N+0x1dc>
   110c4:	e51b3010 	ldr	r3, [fp, #-16]
   110c8:	e3530000 	cmp	r3, #0
   110cc:	0a000006 	beq	110ec <Str_CmpIgnoreCase_N+0x1dc>
   110d0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   110d4:	e3530000 	cmp	r3, #0
   110d8:	0a000003 	beq	110ec <Str_CmpIgnoreCase_N+0x1dc>
   110dc:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
   110e0:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
   110e4:	e1520003 	cmp	r2, r3
   110e8:	3affffd2 	bcc	11038 <Str_CmpIgnoreCase_N+0x128>
   110ec:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
   110f0:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
   110f4:	e1520003 	cmp	r2, r3
   110f8:	1a000001 	bne	11104 <Str_CmpIgnoreCase_N+0x1f4>
   110fc:	e3a03000 	mov	r3, #0
   11100:	ea00002f 	b	111c4 <Str_CmpIgnoreCase_N+0x2b4>
   11104:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
   11108:	e55b3016 	ldrb	r3, [fp, #-22]	; 0xffffffea
   1110c:	e1520003 	cmp	r2, r3
   11110:	0a000007 	beq	11134 <Str_CmpIgnoreCase_N+0x224>
   11114:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
   11118:	e6ff2073 	uxth	r2, r3
   1111c:	e55b3016 	ldrb	r3, [fp, #-22]	; 0xffffffea
   11120:	e6ff3073 	uxth	r3, r3
   11124:	e0633002 	rsb	r3, r3, r2
   11128:	e6ff3073 	uxth	r3, r3
   1112c:	e14b31b8 	strh	r3, [fp, #-24]	; 0xffffffe8
   11130:	ea000022 	b	111c0 <Str_CmpIgnoreCase_N+0x2b0>
   11134:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
   11138:	e3530000 	cmp	r3, #0
   1113c:	1a000002 	bne	1114c <Str_CmpIgnoreCase_N+0x23c>
   11140:	e3a03000 	mov	r3, #0
   11144:	e14b31b8 	strh	r3, [fp, #-24]	; 0xffffffe8
   11148:	ea00001c 	b	111c0 <Str_CmpIgnoreCase_N+0x2b0>
   1114c:	e51b3010 	ldr	r3, [fp, #-16]
   11150:	e3530000 	cmp	r3, #0
   11154:	1a000011 	bne	111a0 <Str_CmpIgnoreCase_N+0x290>
   11158:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   1115c:	e3530000 	cmp	r3, #0
   11160:	1a000002 	bne	11170 <Str_CmpIgnoreCase_N+0x260>
   11164:	e3a03000 	mov	r3, #0
   11168:	e14b31b8 	strh	r3, [fp, #-24]	; 0xffffffe8
   1116c:	ea000013 	b	111c0 <Str_CmpIgnoreCase_N+0x2b0>
   11170:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   11174:	e5d33000 	ldrb	r3, [r3]
   11178:	e1a00003 	mov	r0, r3
   1117c:	ebfffc42 	bl	1028c <ASCII_ToLower>
   11180:	e1a03000 	mov	r3, r0
   11184:	e54b3016 	strb	r3, [fp, #-22]	; 0xffffffea
   11188:	e55b3016 	ldrb	r3, [fp, #-22]	; 0xffffffea
   1118c:	e6ff3073 	uxth	r3, r3
   11190:	e2633000 	rsb	r3, r3, #0
   11194:	e6ff3073 	uxth	r3, r3
   11198:	e14b31b8 	strh	r3, [fp, #-24]	; 0xffffffe8
   1119c:	ea000007 	b	111c0 <Str_CmpIgnoreCase_N+0x2b0>
   111a0:	e51b3010 	ldr	r3, [fp, #-16]
   111a4:	e5d33000 	ldrb	r3, [r3]
   111a8:	e1a00003 	mov	r0, r3
   111ac:	ebfffc36 	bl	1028c <ASCII_ToLower>
   111b0:	e1a03000 	mov	r3, r0
   111b4:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
   111b8:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
   111bc:	e14b31b8 	strh	r3, [fp, #-24]	; 0xffffffe8
   111c0:	e15b31b8 	ldrh	r3, [fp, #-24]	; 0xffffffe8
   111c4:	e6bf3073 	sxth	r3, r3
   111c8:	e1a00003 	mov	r0, r3
   111cc:	e24bd004 	sub	sp, fp, #4
   111d0:	e8bd8800 	pop	{fp, pc}

000111d4 <Str_Char>:
   111d4:	e92d4800 	push	{fp, lr}
   111d8:	e28db004 	add	fp, sp, #4
   111dc:	e24dd010 	sub	sp, sp, #16
   111e0:	e50b0010 	str	r0, [fp, #-16]
   111e4:	e1a03001 	mov	r3, r1
   111e8:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
   111ec:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
   111f0:	e51b0010 	ldr	r0, [fp, #-16]
   111f4:	e3e01000 	mvn	r1, #0
   111f8:	e1a02003 	mov	r2, r3
   111fc:	eb000004 	bl	11214 <Str_Char_N>
   11200:	e50b0008 	str	r0, [fp, #-8]
   11204:	e51b3008 	ldr	r3, [fp, #-8]
   11208:	e1a00003 	mov	r0, r3
   1120c:	e24bd004 	sub	sp, fp, #4
   11210:	e8bd8800 	pop	{fp, pc}

00011214 <Str_Char_N>:
   11214:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   11218:	e28db000 	add	fp, sp, #0
   1121c:	e24dd01c 	sub	sp, sp, #28
   11220:	e50b0010 	str	r0, [fp, #-16]
   11224:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   11228:	e1a03002 	mov	r3, r2
   1122c:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
   11230:	e51b3010 	ldr	r3, [fp, #-16]
   11234:	e3530000 	cmp	r3, #0
   11238:	1a000001 	bne	11244 <Str_Char_N+0x30>
   1123c:	e3a03000 	mov	r3, #0
   11240:	ea000032 	b	11310 <Str_Char_N+0xfc>
   11244:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   11248:	e3530000 	cmp	r3, #0
   1124c:	1a000001 	bne	11258 <Str_Char_N+0x44>
   11250:	e3a03000 	mov	r3, #0
   11254:	ea00002d 	b	11310 <Str_Char_N+0xfc>
   11258:	e51b3010 	ldr	r3, [fp, #-16]
   1125c:	e50b3008 	str	r3, [fp, #-8]
   11260:	e3a03000 	mov	r3, #0
   11264:	e50b300c 	str	r3, [fp, #-12]
   11268:	ea000005 	b	11284 <Str_Char_N+0x70>
   1126c:	e51b3008 	ldr	r3, [fp, #-8]
   11270:	e2833001 	add	r3, r3, #1
   11274:	e50b3008 	str	r3, [fp, #-8]
   11278:	e51b300c 	ldr	r3, [fp, #-12]
   1127c:	e2833001 	add	r3, r3, #1
   11280:	e50b300c 	str	r3, [fp, #-12]
   11284:	e51b3008 	ldr	r3, [fp, #-8]
   11288:	e3530000 	cmp	r3, #0
   1128c:	0a00000c 	beq	112c4 <Str_Char_N+0xb0>
   11290:	e51b3008 	ldr	r3, [fp, #-8]
   11294:	e5d33000 	ldrb	r3, [r3]
   11298:	e3530000 	cmp	r3, #0
   1129c:	0a000008 	beq	112c4 <Str_Char_N+0xb0>
   112a0:	e51b3008 	ldr	r3, [fp, #-8]
   112a4:	e5d33000 	ldrb	r3, [r3]
   112a8:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
   112ac:	e1520003 	cmp	r2, r3
   112b0:	0a000003 	beq	112c4 <Str_Char_N+0xb0>
   112b4:	e51b200c 	ldr	r2, [fp, #-12]
   112b8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   112bc:	e1520003 	cmp	r2, r3
   112c0:	3affffe9 	bcc	1126c <Str_Char_N+0x58>
   112c4:	e51b3008 	ldr	r3, [fp, #-8]
   112c8:	e3530000 	cmp	r3, #0
   112cc:	1a000001 	bne	112d8 <Str_Char_N+0xc4>
   112d0:	e3a03000 	mov	r3, #0
   112d4:	ea00000d 	b	11310 <Str_Char_N+0xfc>
   112d8:	e51b200c 	ldr	r2, [fp, #-12]
   112dc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   112e0:	e1520003 	cmp	r2, r3
   112e4:	3a000001 	bcc	112f0 <Str_Char_N+0xdc>
   112e8:	e3a03000 	mov	r3, #0
   112ec:	ea000007 	b	11310 <Str_Char_N+0xfc>
   112f0:	e51b3008 	ldr	r3, [fp, #-8]
   112f4:	e5d33000 	ldrb	r3, [r3]
   112f8:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
   112fc:	e1520003 	cmp	r2, r3
   11300:	0a000001 	beq	1130c <Str_Char_N+0xf8>
   11304:	e3a03000 	mov	r3, #0
   11308:	ea000000 	b	11310 <Str_Char_N+0xfc>
   1130c:	e51b3008 	ldr	r3, [fp, #-8]
   11310:	e1a00003 	mov	r0, r3
   11314:	e28bd000 	add	sp, fp, #0
   11318:	e8bd0800 	ldmfd	sp!, {fp}
   1131c:	e12fff1e 	bx	lr

00011320 <Str_Char_Last>:
   11320:	e92d4800 	push	{fp, lr}
   11324:	e28db004 	add	fp, sp, #4
   11328:	e24dd010 	sub	sp, sp, #16
   1132c:	e50b0010 	str	r0, [fp, #-16]
   11330:	e1a03001 	mov	r3, r1
   11334:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
   11338:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
   1133c:	e51b0010 	ldr	r0, [fp, #-16]
   11340:	e3e01000 	mvn	r1, #0
   11344:	e1a02003 	mov	r2, r3
   11348:	eb000004 	bl	11360 <Str_Char_Last_N>
   1134c:	e50b0008 	str	r0, [fp, #-8]
   11350:	e51b3008 	ldr	r3, [fp, #-8]
   11354:	e1a00003 	mov	r0, r3
   11358:	e24bd004 	sub	sp, fp, #4
   1135c:	e8bd8800 	pop	{fp, pc}

00011360 <Str_Char_Last_N>:
   11360:	e92d4800 	push	{fp, lr}
   11364:	e28db004 	add	fp, sp, #4
   11368:	e24dd020 	sub	sp, sp, #32
   1136c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
   11370:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
   11374:	e1a03002 	mov	r3, r2
   11378:	e54b301d 	strb	r3, [fp, #-29]	; 0xffffffe3
   1137c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   11380:	e3530000 	cmp	r3, #0
   11384:	1a000001 	bne	11390 <Str_Char_Last_N+0x30>
   11388:	e3a03000 	mov	r3, #0
   1138c:	ea00002a 	b	1143c <Str_Char_Last_N+0xdc>
   11390:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   11394:	e3530000 	cmp	r3, #0
   11398:	1a000001 	bne	113a4 <Str_Char_Last_N+0x44>
   1139c:	e3a03000 	mov	r3, #0
   113a0:	ea000025 	b	1143c <Str_Char_Last_N+0xdc>
   113a4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   113a8:	e50b3008 	str	r3, [fp, #-8]
   113ac:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   113b0:	e2433001 	sub	r3, r3, #1
   113b4:	e50b300c 	str	r3, [fp, #-12]
   113b8:	e51b0008 	ldr	r0, [fp, #-8]
   113bc:	e51b100c 	ldr	r1, [fp, #-12]
   113c0:	ebfffd4f 	bl	10904 <Str_Len_N>
   113c4:	e50b0010 	str	r0, [fp, #-16]
   113c8:	e51b2008 	ldr	r2, [fp, #-8]
   113cc:	e51b3010 	ldr	r3, [fp, #-16]
   113d0:	e0823003 	add	r3, r2, r3
   113d4:	e50b3008 	str	r3, [fp, #-8]
   113d8:	e51b3008 	ldr	r3, [fp, #-8]
   113dc:	e3530000 	cmp	r3, #0
   113e0:	1a000004 	bne	113f8 <Str_Char_Last_N+0x98>
   113e4:	e3a03000 	mov	r3, #0
   113e8:	ea000013 	b	1143c <Str_Char_Last_N+0xdc>
   113ec:	e51b3008 	ldr	r3, [fp, #-8]
   113f0:	e2433001 	sub	r3, r3, #1
   113f4:	e50b3008 	str	r3, [fp, #-8]
   113f8:	e51b2008 	ldr	r2, [fp, #-8]
   113fc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   11400:	e1520003 	cmp	r2, r3
   11404:	0a000004 	beq	1141c <Str_Char_Last_N+0xbc>
   11408:	e51b3008 	ldr	r3, [fp, #-8]
   1140c:	e5d33000 	ldrb	r3, [r3]
   11410:	e55b201d 	ldrb	r2, [fp, #-29]	; 0xffffffe3
   11414:	e1520003 	cmp	r2, r3
   11418:	1afffff3 	bne	113ec <Str_Char_Last_N+0x8c>
   1141c:	e51b3008 	ldr	r3, [fp, #-8]
   11420:	e5d33000 	ldrb	r3, [r3]
   11424:	e55b201d 	ldrb	r2, [fp, #-29]	; 0xffffffe3
   11428:	e1520003 	cmp	r2, r3
   1142c:	0a000001 	beq	11438 <Str_Char_Last_N+0xd8>
   11430:	e3a03000 	mov	r3, #0
   11434:	ea000000 	b	1143c <Str_Char_Last_N+0xdc>
   11438:	e51b3008 	ldr	r3, [fp, #-8]
   1143c:	e1a00003 	mov	r0, r3
   11440:	e24bd004 	sub	sp, fp, #4
   11444:	e8bd8800 	pop	{fp, pc}

00011448 <Str_Char_Replace>:
   11448:	e92d4800 	push	{fp, lr}
   1144c:	e28db004 	add	fp, sp, #4
   11450:	e24dd010 	sub	sp, sp, #16
   11454:	e50b0010 	str	r0, [fp, #-16]
   11458:	e1a03002 	mov	r3, r2
   1145c:	e1a02001 	mov	r2, r1
   11460:	e54b2011 	strb	r2, [fp, #-17]	; 0xffffffef
   11464:	e54b3012 	strb	r3, [fp, #-18]	; 0xffffffee
   11468:	e55b2011 	ldrb	r2, [fp, #-17]	; 0xffffffef
   1146c:	e55b3012 	ldrb	r3, [fp, #-18]	; 0xffffffee
   11470:	e51b0010 	ldr	r0, [fp, #-16]
   11474:	e1a01002 	mov	r1, r2
   11478:	e1a02003 	mov	r2, r3
   1147c:	e3e03000 	mvn	r3, #0
   11480:	eb000004 	bl	11498 <Str_Char_Replace_N>
   11484:	e50b0008 	str	r0, [fp, #-8]
   11488:	e51b3008 	ldr	r3, [fp, #-8]
   1148c:	e1a00003 	mov	r0, r3
   11490:	e24bd004 	sub	sp, fp, #4
   11494:	e8bd8800 	pop	{fp, pc}

00011498 <Str_Char_Replace_N>:
   11498:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   1149c:	e28db000 	add	fp, sp, #0
   114a0:	e24dd01c 	sub	sp, sp, #28
   114a4:	e50b0010 	str	r0, [fp, #-16]
   114a8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   114ac:	e1a03001 	mov	r3, r1
   114b0:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
   114b4:	e1a03002 	mov	r3, r2
   114b8:	e54b3012 	strb	r3, [fp, #-18]	; 0xffffffee
   114bc:	e51b3010 	ldr	r3, [fp, #-16]
   114c0:	e3530000 	cmp	r3, #0
   114c4:	1a000001 	bne	114d0 <Str_Char_Replace_N+0x38>
   114c8:	e3a03000 	mov	r3, #0
   114cc:	ea000022 	b	1155c <Str_Char_Replace_N+0xc4>
   114d0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   114d4:	e3530000 	cmp	r3, #0
   114d8:	1a000001 	bne	114e4 <Str_Char_Replace_N+0x4c>
   114dc:	e3a03000 	mov	r3, #0
   114e0:	ea00001d 	b	1155c <Str_Char_Replace_N+0xc4>
   114e4:	e51b3010 	ldr	r3, [fp, #-16]
   114e8:	e50b3008 	str	r3, [fp, #-8]
   114ec:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   114f0:	e50b300c 	str	r3, [fp, #-12]
   114f4:	ea00000d 	b	11530 <Str_Char_Replace_N+0x98>
   114f8:	e51b3008 	ldr	r3, [fp, #-8]
   114fc:	e5d33000 	ldrb	r3, [r3]
   11500:	e55b2011 	ldrb	r2, [fp, #-17]	; 0xffffffef
   11504:	e1520003 	cmp	r2, r3
   11508:	1a000002 	bne	11518 <Str_Char_Replace_N+0x80>
   1150c:	e51b3008 	ldr	r3, [fp, #-8]
   11510:	e55b2012 	ldrb	r2, [fp, #-18]	; 0xffffffee
   11514:	e5c32000 	strb	r2, [r3]
   11518:	e51b3008 	ldr	r3, [fp, #-8]
   1151c:	e2833001 	add	r3, r3, #1
   11520:	e50b3008 	str	r3, [fp, #-8]
   11524:	e51b300c 	ldr	r3, [fp, #-12]
   11528:	e2433001 	sub	r3, r3, #1
   1152c:	e50b300c 	str	r3, [fp, #-12]
   11530:	e51b3008 	ldr	r3, [fp, #-8]
   11534:	e3530000 	cmp	r3, #0
   11538:	0a000006 	beq	11558 <Str_Char_Replace_N+0xc0>
   1153c:	e51b3008 	ldr	r3, [fp, #-8]
   11540:	e5d33000 	ldrb	r3, [r3]
   11544:	e3530000 	cmp	r3, #0
   11548:	0a000002 	beq	11558 <Str_Char_Replace_N+0xc0>
   1154c:	e51b300c 	ldr	r3, [fp, #-12]
   11550:	e3530000 	cmp	r3, #0
   11554:	1affffe7 	bne	114f8 <Str_Char_Replace_N+0x60>
   11558:	e51b3010 	ldr	r3, [fp, #-16]
   1155c:	e1a00003 	mov	r0, r3
   11560:	e28bd000 	add	sp, fp, #0
   11564:	e8bd0800 	ldmfd	sp!, {fp}
   11568:	e12fff1e 	bx	lr

0001156c <Str_Str>:
   1156c:	e92d4800 	push	{fp, lr}
   11570:	e28db004 	add	fp, sp, #4
   11574:	e24dd010 	sub	sp, sp, #16
   11578:	e50b0010 	str	r0, [fp, #-16]
   1157c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   11580:	e51b0010 	ldr	r0, [fp, #-16]
   11584:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   11588:	e3e02000 	mvn	r2, #0
   1158c:	eb000004 	bl	115a4 <Str_Str_N>
   11590:	e50b0008 	str	r0, [fp, #-8]
   11594:	e51b3008 	ldr	r3, [fp, #-8]
   11598:	e1a00003 	mov	r0, r3
   1159c:	e24bd004 	sub	sp, fp, #4
   115a0:	e8bd8800 	pop	{fp, pc}

000115a4 <Str_Str_N>:
   115a4:	e92d4800 	push	{fp, lr}
   115a8:	e28db004 	add	fp, sp, #4
   115ac:	e24dd038 	sub	sp, sp, #56	; 0x38
   115b0:	e50b0030 	str	r0, [fp, #-48]	; 0xffffffd0
   115b4:	e50b1034 	str	r1, [fp, #-52]	; 0xffffffcc
   115b8:	e50b2038 	str	r2, [fp, #-56]	; 0xffffffc8
   115bc:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
   115c0:	e3530000 	cmp	r3, #0
   115c4:	1a000001 	bne	115d0 <Str_Str_N+0x2c>
   115c8:	e3a03000 	mov	r3, #0
   115cc:	ea00005f 	b	11750 <Str_Str_N+0x1ac>
   115d0:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
   115d4:	e3530000 	cmp	r3, #0
   115d8:	1a000001 	bne	115e4 <Str_Str_N+0x40>
   115dc:	e3a03000 	mov	r3, #0
   115e0:	ea00005a 	b	11750 <Str_Str_N+0x1ac>
   115e4:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
   115e8:	e3530000 	cmp	r3, #0
   115ec:	1a000001 	bne	115f8 <Str_Str_N+0x54>
   115f0:	e3a03000 	mov	r3, #0
   115f4:	ea000055 	b	11750 <Str_Str_N+0x1ac>
   115f8:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
   115fc:	e3730001 	cmn	r3, #1
   11600:	0a000002 	beq	11610 <Str_Str_N+0x6c>
   11604:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
   11608:	e2833001 	add	r3, r3, #1
   1160c:	ea000000 	b	11614 <Str_Str_N+0x70>
   11610:	e3e03000 	mvn	r3, #0
   11614:	e50b300c 	str	r3, [fp, #-12]
   11618:	e51b0030 	ldr	r0, [fp, #-48]	; 0xffffffd0
   1161c:	e51b1038 	ldr	r1, [fp, #-56]	; 0xffffffc8
   11620:	ebfffcb7 	bl	10904 <Str_Len_N>
   11624:	e50b0010 	str	r0, [fp, #-16]
   11628:	e51b0034 	ldr	r0, [fp, #-52]	; 0xffffffcc
   1162c:	e51b100c 	ldr	r1, [fp, #-12]
   11630:	ebfffcb3 	bl	10904 <Str_Len_N>
   11634:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
   11638:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   1163c:	e3530000 	cmp	r3, #0
   11640:	1a000001 	bne	1164c <Str_Str_N+0xa8>
   11644:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
   11648:	ea000040 	b	11750 <Str_Str_N+0x1ac>
   1164c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11650:	e51b3010 	ldr	r3, [fp, #-16]
   11654:	e1520003 	cmp	r2, r3
   11658:	9a000001 	bls	11664 <Str_Str_N+0xc0>
   1165c:	e3a03000 	mov	r3, #0
   11660:	ea00003a 	b	11750 <Str_Str_N+0x1ac>
   11664:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
   11668:	e51b3010 	ldr	r3, [fp, #-16]
   1166c:	e0823003 	add	r3, r2, r3
   11670:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   11674:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   11678:	e3530000 	cmp	r3, #0
   1167c:	1a000001 	bne	11688 <Str_Str_N+0xe4>
   11680:	e3a03000 	mov	r3, #0
   11684:	ea000031 	b	11750 <Str_Str_N+0x1ac>
   11688:	e51b2034 	ldr	r2, [fp, #-52]	; 0xffffffcc
   1168c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   11690:	e0823003 	add	r3, r2, r3
   11694:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   11698:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   1169c:	e3530000 	cmp	r3, #0
   116a0:	1a000001 	bne	116ac <Str_Str_N+0x108>
   116a4:	e3a03000 	mov	r3, #0
   116a8:	ea000028 	b	11750 <Str_Str_N+0x1ac>
   116ac:	e51b2010 	ldr	r2, [fp, #-16]
   116b0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   116b4:	e0633002 	rsb	r3, r3, r2
   116b8:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
   116bc:	e3a03000 	mov	r3, #0
   116c0:	e50b3008 	str	r3, [fp, #-8]
   116c4:	e3a03000 	mov	r3, #0
   116c8:	e54b301d 	strb	r3, [fp, #-29]	; 0xffffffe3
   116cc:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
   116d0:	e51b3008 	ldr	r3, [fp, #-8]
   116d4:	e0823003 	add	r3, r2, r3
   116d8:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
   116dc:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
   116e0:	e51b1034 	ldr	r1, [fp, #-52]	; 0xffffffcc
   116e4:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   116e8:	ebfffd6e 	bl	10ca8 <Str_Cmp_N>
   116ec:	e1a03000 	mov	r3, r0
   116f0:	e14b32b6 	strh	r3, [fp, #-38]	; 0xffffffda
   116f4:	e15b32f6 	ldrsh	r3, [fp, #-38]	; 0xffffffda
   116f8:	e3530000 	cmp	r3, #0
   116fc:	1a000001 	bne	11708 <Str_Str_N+0x164>
   11700:	e3a03001 	mov	r3, #1
   11704:	ea000000 	b	1170c <Str_Str_N+0x168>
   11708:	e3a03000 	mov	r3, #0
   1170c:	e54b301d 	strb	r3, [fp, #-29]	; 0xffffffe3
   11710:	e51b3008 	ldr	r3, [fp, #-8]
   11714:	e2833001 	add	r3, r3, #1
   11718:	e50b3008 	str	r3, [fp, #-8]
   1171c:	e55b301d 	ldrb	r3, [fp, #-29]	; 0xffffffe3
   11720:	e3530000 	cmp	r3, #0
   11724:	1a000003 	bne	11738 <Str_Str_N+0x194>
   11728:	e51b2008 	ldr	r2, [fp, #-8]
   1172c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   11730:	e1520003 	cmp	r2, r3
   11734:	9affffe4 	bls	116cc <Str_Str_N+0x128>
   11738:	e15b32f6 	ldrsh	r3, [fp, #-38]	; 0xffffffda
   1173c:	e3530000 	cmp	r3, #0
   11740:	0a000001 	beq	1174c <Str_Str_N+0x1a8>
   11744:	e3a03000 	mov	r3, #0
   11748:	ea000000 	b	11750 <Str_Str_N+0x1ac>
   1174c:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
   11750:	e1a00003 	mov	r0, r3
   11754:	e24bd004 	sub	sp, fp, #4
   11758:	e8bd8800 	pop	{fp, pc}

0001175c <Str_FmtNbr_Int32U>:
   1175c:	e92d4800 	push	{fp, lr}
   11760:	e28db004 	add	fp, sp, #4
   11764:	e24dd020 	sub	sp, sp, #32
   11768:	e50b0010 	str	r0, [fp, #-16]
   1176c:	e54b1011 	strb	r1, [fp, #-17]	; 0xffffffef
   11770:	e54b2012 	strb	r2, [fp, #-18]	; 0xffffffee
   11774:	e54b3013 	strb	r3, [fp, #-19]	; 0xffffffed
   11778:	e55b2011 	ldrb	r2, [fp, #-17]	; 0xffffffef
   1177c:	e55b3012 	ldrb	r3, [fp, #-18]	; 0xffffffee
   11780:	e55b1013 	ldrb	r1, [fp, #-19]	; 0xffffffed
   11784:	e58d1000 	str	r1, [sp]
   11788:	e5db1004 	ldrb	r1, [fp, #4]
   1178c:	e58d1004 	str	r1, [sp, #4]
   11790:	e5db1008 	ldrb	r1, [fp, #8]
   11794:	e58d1008 	str	r1, [sp, #8]
   11798:	e59b100c 	ldr	r1, [fp, #12]
   1179c:	e58d100c 	str	r1, [sp, #12]
   117a0:	e51b0010 	ldr	r0, [fp, #-16]
   117a4:	e1a01002 	mov	r1, r2
   117a8:	e1a02003 	mov	r2, r3
   117ac:	e3a03000 	mov	r3, #0
   117b0:	eb000065 	bl	1194c <Str_FmtNbr_Int32>
   117b4:	e50b0008 	str	r0, [fp, #-8]
   117b8:	e51b3008 	ldr	r3, [fp, #-8]
   117bc:	e1a00003 	mov	r0, r3
   117c0:	e24bd004 	sub	sp, fp, #4
   117c4:	e8bd8800 	pop	{fp, pc}

000117c8 <Str_FmtNbr_Int32S>:
   117c8:	e92d4800 	push	{fp, lr}
   117cc:	e28db004 	add	fp, sp, #4
   117d0:	e24dd028 	sub	sp, sp, #40	; 0x28
   117d4:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
   117d8:	e54b1019 	strb	r1, [fp, #-25]	; 0xffffffe7
   117dc:	e54b201a 	strb	r2, [fp, #-26]	; 0xffffffe6
   117e0:	e54b301b 	strb	r3, [fp, #-27]	; 0xffffffe5
   117e4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   117e8:	e3530000 	cmp	r3, #0
   117ec:	aa000005 	bge	11808 <Str_FmtNbr_Int32S+0x40>
   117f0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   117f4:	e2633000 	rsb	r3, r3, #0
   117f8:	e50b3008 	str	r3, [fp, #-8]
   117fc:	e3a03001 	mov	r3, #1
   11800:	e54b3009 	strb	r3, [fp, #-9]
   11804:	ea000003 	b	11818 <Str_FmtNbr_Int32S+0x50>
   11808:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   1180c:	e50b3008 	str	r3, [fp, #-8]
   11810:	e3a03000 	mov	r3, #0
   11814:	e54b3009 	strb	r3, [fp, #-9]
   11818:	e51b0008 	ldr	r0, [fp, #-8]
   1181c:	e55b1019 	ldrb	r1, [fp, #-25]	; 0xffffffe7
   11820:	e55b201a 	ldrb	r2, [fp, #-26]	; 0xffffffe6
   11824:	e55b3009 	ldrb	r3, [fp, #-9]
   11828:	e55bc01b 	ldrb	ip, [fp, #-27]	; 0xffffffe5
   1182c:	e58dc000 	str	ip, [sp]
   11830:	e5dbc004 	ldrb	ip, [fp, #4]
   11834:	e58dc004 	str	ip, [sp, #4]
   11838:	e5dbc008 	ldrb	ip, [fp, #8]
   1183c:	e58dc008 	str	ip, [sp, #8]
   11840:	e59bc00c 	ldr	ip, [fp, #12]
   11844:	e58dc00c 	str	ip, [sp, #12]
   11848:	eb00003f 	bl	1194c <Str_FmtNbr_Int32>
   1184c:	e50b0010 	str	r0, [fp, #-16]
   11850:	e51b3010 	ldr	r3, [fp, #-16]
   11854:	e1a00003 	mov	r0, r3
   11858:	e24bd004 	sub	sp, fp, #4
   1185c:	e8bd8800 	pop	{fp, pc}

00011860 <Str_ParseNbr_Int32U>:
   11860:	e92d4800 	push	{fp, lr}
   11864:	e28db004 	add	fp, sp, #4
   11868:	e24dd020 	sub	sp, sp, #32
   1186c:	e50b0010 	str	r0, [fp, #-16]
   11870:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   11874:	e1a03002 	mov	r3, r2
   11878:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
   1187c:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
   11880:	e3a02000 	mov	r2, #0
   11884:	e58d2000 	str	r2, [sp]
   11888:	e51b0010 	ldr	r0, [fp, #-16]
   1188c:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   11890:	e1a02003 	mov	r2, r3
   11894:	e3a03000 	mov	r3, #0
   11898:	eb000157 	bl	11dfc <Str_ParseNbr_Int32>
   1189c:	e50b0008 	str	r0, [fp, #-8]
   118a0:	e51b3008 	ldr	r3, [fp, #-8]
   118a4:	e1a00003 	mov	r0, r3
   118a8:	e24bd004 	sub	sp, fp, #4
   118ac:	e8bd8800 	pop	{fp, pc}

000118b0 <Str_ParseNbr_Int32S>:
   118b0:	e92d4800 	push	{fp, lr}
   118b4:	e28db004 	add	fp, sp, #4
   118b8:	e24dd028 	sub	sp, sp, #40	; 0x28
   118bc:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
   118c0:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
   118c4:	e1a03002 	mov	r3, r2
   118c8:	e54b301d 	strb	r3, [fp, #-29]	; 0xffffffe3
   118cc:	e55b301d 	ldrb	r3, [fp, #-29]	; 0xffffffe3
   118d0:	e24b200d 	sub	r2, fp, #13
   118d4:	e58d2000 	str	r2, [sp]
   118d8:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
   118dc:	e51b101c 	ldr	r1, [fp, #-28]	; 0xffffffe4
   118e0:	e1a02003 	mov	r2, r3
   118e4:	e3a03001 	mov	r3, #1
   118e8:	eb000143 	bl	11dfc <Str_ParseNbr_Int32>
   118ec:	e50b000c 	str	r0, [fp, #-12]
   118f0:	e55b300d 	ldrb	r3, [fp, #-13]
   118f4:	e3530000 	cmp	r3, #0
   118f8:	1a000007 	bne	1191c <Str_ParseNbr_Int32S+0x6c>
   118fc:	e51b300c 	ldr	r3, [fp, #-12]
   11900:	e3530000 	cmp	r3, #0
   11904:	ba000001 	blt	11910 <Str_ParseNbr_Int32S+0x60>
   11908:	e51b300c 	ldr	r3, [fp, #-12]
   1190c:	ea000000 	b	11914 <Str_ParseNbr_Int32S+0x64>
   11910:	e3e03102 	mvn	r3, #-2147483648	; 0x80000000
   11914:	e50b3008 	str	r3, [fp, #-8]
   11918:	ea000007 	b	1193c <Str_ParseNbr_Int32S+0x8c>
   1191c:	e51b300c 	ldr	r3, [fp, #-12]
   11920:	e3530000 	cmp	r3, #0
   11924:	ba000002 	blt	11934 <Str_ParseNbr_Int32S+0x84>
   11928:	e51b300c 	ldr	r3, [fp, #-12]
   1192c:	e2633000 	rsb	r3, r3, #0
   11930:	ea000000 	b	11938 <Str_ParseNbr_Int32S+0x88>
   11934:	e3a03102 	mov	r3, #-2147483648	; 0x80000000
   11938:	e50b3008 	str	r3, [fp, #-8]
   1193c:	e51b3008 	ldr	r3, [fp, #-8]
   11940:	e1a00003 	mov	r0, r3
   11944:	e24bd004 	sub	sp, fp, #4
   11948:	e8bd8800 	pop	{fp, pc}

0001194c <Str_FmtNbr_Int32>:
   1194c:	e92d4800 	push	{fp, lr}
   11950:	e28db004 	add	fp, sp, #4
   11954:	e24dd028 	sub	sp, sp, #40	; 0x28
   11958:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
   1195c:	e54b1029 	strb	r1, [fp, #-41]	; 0xffffffd7
   11960:	e54b202a 	strb	r2, [fp, #-42]	; 0xffffffd6
   11964:	e54b302b 	strb	r3, [fp, #-43]	; 0xffffffd5
   11968:	e59b3010 	ldr	r3, [fp, #16]
   1196c:	e3530000 	cmp	r3, #0
   11970:	1a000001 	bne	1197c <Str_FmtNbr_Int32+0x30>
   11974:	e3a03000 	mov	r3, #0
   11978:	ea00011c 	b	11df0 <Str_FmtNbr_Int32+0x4a4>
   1197c:	e3a03000 	mov	r3, #0
   11980:	e54b301a 	strb	r3, [fp, #-26]	; 0xffffffe6
   11984:	e55b3029 	ldrb	r3, [fp, #-41]	; 0xffffffd7
   11988:	e3530000 	cmp	r3, #0
   1198c:	1a000001 	bne	11998 <Str_FmtNbr_Int32+0x4c>
   11990:	e3a03001 	mov	r3, #1
   11994:	e54b301a 	strb	r3, [fp, #-26]	; 0xffffffe6
   11998:	e55b302a 	ldrb	r3, [fp, #-42]	; 0xffffffd6
   1199c:	e3530001 	cmp	r3, #1
   119a0:	9a000002 	bls	119b0 <Str_FmtNbr_Int32+0x64>
   119a4:	e55b302a 	ldrb	r3, [fp, #-42]	; 0xffffffd6
   119a8:	e3530024 	cmp	r3, #36	; 0x24
   119ac:	9a000001 	bls	119b8 <Str_FmtNbr_Int32+0x6c>
   119b0:	e3a03001 	mov	r3, #1
   119b4:	e54b301a 	strb	r3, [fp, #-26]	; 0xffffffe6
   119b8:	e5db3004 	ldrb	r3, [fp, #4]
   119bc:	e3530000 	cmp	r3, #0
   119c0:	0a000035 	beq	11a9c <Str_FmtNbr_Int32+0x150>
   119c4:	e5db3004 	ldrb	r3, [fp, #4]
   119c8:	e1a00003 	mov	r0, r3
   119cc:	ebfff9b6 	bl	100ac <ASCII_IsPrint>
   119d0:	e1a03000 	mov	r3, r0
   119d4:	e54b301c 	strb	r3, [fp, #-28]	; 0xffffffe4
   119d8:	e55b301c 	ldrb	r3, [fp, #-28]	; 0xffffffe4
   119dc:	e3530001 	cmp	r3, #1
   119e0:	0a000002 	beq	119f0 <Str_FmtNbr_Int32+0xa4>
   119e4:	e3a03001 	mov	r3, #1
   119e8:	e54b301a 	strb	r3, [fp, #-26]	; 0xffffffe6
   119ec:	ea00002a 	b	11a9c <Str_FmtNbr_Int32+0x150>
   119f0:	e5db3004 	ldrb	r3, [fp, #4]
   119f4:	e3530030 	cmp	r3, #48	; 0x30
   119f8:	0a000027 	beq	11a9c <Str_FmtNbr_Int32+0x150>
   119fc:	e5db3004 	ldrb	r3, [fp, #4]
   11a00:	e2433030 	sub	r3, r3, #48	; 0x30
   11a04:	e54b301d 	strb	r3, [fp, #-29]	; 0xffffffe3
   11a08:	e5db3008 	ldrb	r3, [fp, #8]
   11a0c:	e3530001 	cmp	r3, #1
   11a10:	0a000003 	beq	11a24 <Str_FmtNbr_Int32+0xd8>
   11a14:	e5db3004 	ldrb	r3, [fp, #4]
   11a18:	e2433041 	sub	r3, r3, #65	; 0x41
   11a1c:	e54b3018 	strb	r3, [fp, #-24]	; 0xffffffe8
   11a20:	ea000002 	b	11a30 <Str_FmtNbr_Int32+0xe4>
   11a24:	e5db3004 	ldrb	r3, [fp, #4]
   11a28:	e2433061 	sub	r3, r3, #97	; 0x61
   11a2c:	e54b3018 	strb	r3, [fp, #-24]	; 0xffffffe8
   11a30:	e55b302a 	ldrb	r3, [fp, #-42]	; 0xffffffd6
   11a34:	e353000a 	cmp	r3, #10
   11a38:	8a000003 	bhi	11a4c <Str_FmtNbr_Int32+0x100>
   11a3c:	e55b201d 	ldrb	r2, [fp, #-29]	; 0xffffffe3
   11a40:	e55b302a 	ldrb	r3, [fp, #-42]	; 0xffffffd6
   11a44:	e1520003 	cmp	r2, r3
   11a48:	3a00000a 	bcc	11a78 <Str_FmtNbr_Int32+0x12c>
   11a4c:	e55b302a 	ldrb	r3, [fp, #-42]	; 0xffffffd6
   11a50:	e353000a 	cmp	r3, #10
   11a54:	9a000009 	bls	11a80 <Str_FmtNbr_Int32+0x134>
   11a58:	e55b301d 	ldrb	r3, [fp, #-29]	; 0xffffffe3
   11a5c:	e3530009 	cmp	r3, #9
   11a60:	9a000004 	bls	11a78 <Str_FmtNbr_Int32+0x12c>
   11a64:	e55b2018 	ldrb	r2, [fp, #-24]	; 0xffffffe8
   11a68:	e55b302a 	ldrb	r3, [fp, #-42]	; 0xffffffd6
   11a6c:	e243300a 	sub	r3, r3, #10
   11a70:	e1520003 	cmp	r2, r3
   11a74:	2a000001 	bcs	11a80 <Str_FmtNbr_Int32+0x134>
   11a78:	e3a03001 	mov	r3, #1
   11a7c:	ea000000 	b	11a84 <Str_FmtNbr_Int32+0x138>
   11a80:	e3a03000 	mov	r3, #0
   11a84:	e54b301e 	strb	r3, [fp, #-30]	; 0xffffffe2
   11a88:	e55b301e 	ldrb	r3, [fp, #-30]	; 0xffffffe2
   11a8c:	e3530001 	cmp	r3, #1
   11a90:	1a000001 	bne	11a9c <Str_FmtNbr_Int32+0x150>
   11a94:	e3a03001 	mov	r3, #1
   11a98:	e54b301a 	strb	r3, [fp, #-26]	; 0xffffffe6
   11a9c:	e59b3010 	ldr	r3, [fp, #16]
   11aa0:	e50b3008 	str	r3, [fp, #-8]
   11aa4:	e55b301a 	ldrb	r3, [fp, #-26]	; 0xffffffe6
   11aa8:	e3530000 	cmp	r3, #0
   11aac:	1a00004a 	bne	11bdc <Str_FmtNbr_Int32+0x290>
   11ab0:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
   11ab4:	e50b3010 	str	r3, [fp, #-16]
   11ab8:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
   11abc:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   11ac0:	e3a03001 	mov	r3, #1
   11ac4:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
   11ac8:	ea000008 	b	11af0 <Str_FmtNbr_Int32+0x1a4>
   11acc:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
   11ad0:	e2833001 	add	r3, r3, #1
   11ad4:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
   11ad8:	e55b302a 	ldrb	r3, [fp, #-42]	; 0xffffffd6
   11adc:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
   11ae0:	e1a01003 	mov	r1, r3
   11ae4:	eb00121c 	bl	1635c <__aeabi_uidiv>
   11ae8:	e1a03000 	mov	r3, r0
   11aec:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   11af0:	e55b202a 	ldrb	r2, [fp, #-42]	; 0xffffffd6
   11af4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   11af8:	e1520003 	cmp	r2, r3
   11afc:	9afffff2 	bls	11acc <Str_FmtNbr_Int32+0x180>
   11b00:	e55b302b 	ldrb	r3, [fp, #-43]	; 0xffffffd5
   11b04:	e3530001 	cmp	r3, #1
   11b08:	1a000001 	bne	11b14 <Str_FmtNbr_Int32+0x1c8>
   11b0c:	e3a03001 	mov	r3, #1
   11b10:	ea000000 	b	11b18 <Str_FmtNbr_Int32+0x1cc>
   11b14:	e3a03000 	mov	r3, #0
   11b18:	e54b301f 	strb	r3, [fp, #-31]	; 0xffffffe1
   11b1c:	e55b2029 	ldrb	r2, [fp, #-41]	; 0xffffffd7
   11b20:	e55b1015 	ldrb	r1, [fp, #-21]	; 0xffffffeb
   11b24:	e55b301f 	ldrb	r3, [fp, #-31]	; 0xffffffe1
   11b28:	e0813003 	add	r3, r1, r3
   11b2c:	e1520003 	cmp	r2, r3
   11b30:	ba000027 	blt	11bd4 <Str_FmtNbr_Int32+0x288>
   11b34:	e3a03000 	mov	r3, #0
   11b38:	e54b301b 	strb	r3, [fp, #-27]	; 0xffffffe5
   11b3c:	e55b2029 	ldrb	r2, [fp, #-41]	; 0xffffffd7
   11b40:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
   11b44:	e1520003 	cmp	r2, r3
   11b48:	31a03002 	movcc	r3, r2
   11b4c:	e54b3020 	strb	r3, [fp, #-32]	; 0xffffffe0
   11b50:	e5db3004 	ldrb	r3, [fp, #4]
   11b54:	e3530000 	cmp	r3, #0
   11b58:	0a000009 	beq	11b84 <Str_FmtNbr_Int32+0x238>
   11b5c:	e55b3029 	ldrb	r3, [fp, #-41]	; 0xffffffd7
   11b60:	e54b3016 	strb	r3, [fp, #-22]	; 0xffffffea
   11b64:	e55b2029 	ldrb	r2, [fp, #-41]	; 0xffffffd7
   11b68:	e55b3020 	ldrb	r3, [fp, #-32]	; 0xffffffe0
   11b6c:	e0633002 	rsb	r3, r3, r2
   11b70:	e6ef2073 	uxtb	r2, r3
   11b74:	e55b301f 	ldrb	r3, [fp, #-31]	; 0xffffffe1
   11b78:	e0633002 	rsb	r3, r3, r2
   11b7c:	e54b3017 	strb	r3, [fp, #-23]	; 0xffffffe9
   11b80:	ea000005 	b	11b9c <Str_FmtNbr_Int32+0x250>
   11b84:	e55b2020 	ldrb	r2, [fp, #-32]	; 0xffffffe0
   11b88:	e55b301f 	ldrb	r3, [fp, #-31]	; 0xffffffe1
   11b8c:	e0823003 	add	r3, r2, r3
   11b90:	e54b3016 	strb	r3, [fp, #-22]	; 0xffffffea
   11b94:	e3a03000 	mov	r3, #0
   11b98:	e54b3017 	strb	r3, [fp, #-23]	; 0xffffffe9
   11b9c:	e55b3017 	ldrb	r3, [fp, #-23]	; 0xffffffe9
   11ba0:	e3530000 	cmp	r3, #0
   11ba4:	0a000007 	beq	11bc8 <Str_FmtNbr_Int32+0x27c>
   11ba8:	e5db3004 	ldrb	r3, [fp, #4]
   11bac:	e3530030 	cmp	r3, #48	; 0x30
   11bb0:	1a000001 	bne	11bbc <Str_FmtNbr_Int32+0x270>
   11bb4:	e3a03001 	mov	r3, #1
   11bb8:	ea000000 	b	11bc0 <Str_FmtNbr_Int32+0x274>
   11bbc:	e3a03000 	mov	r3, #0
   11bc0:	e54b3019 	strb	r3, [fp, #-25]	; 0xffffffe7
   11bc4:	ea000004 	b	11bdc <Str_FmtNbr_Int32+0x290>
   11bc8:	e3a03000 	mov	r3, #0
   11bcc:	e54b3019 	strb	r3, [fp, #-25]	; 0xffffffe7
   11bd0:	ea000001 	b	11bdc <Str_FmtNbr_Int32+0x290>
   11bd4:	e3a03001 	mov	r3, #1
   11bd8:	e54b301a 	strb	r3, [fp, #-26]	; 0xffffffe6
   11bdc:	e55b301a 	ldrb	r3, [fp, #-26]	; 0xffffffe6
   11be0:	e3530000 	cmp	r3, #0
   11be4:	0a000001 	beq	11bf0 <Str_FmtNbr_Int32+0x2a4>
   11be8:	e55b3029 	ldrb	r3, [fp, #-41]	; 0xffffffd7
   11bec:	e54b3016 	strb	r3, [fp, #-22]	; 0xffffffea
   11bf0:	e55b3016 	ldrb	r3, [fp, #-22]	; 0xffffffea
   11bf4:	e51b2008 	ldr	r2, [fp, #-8]
   11bf8:	e0823003 	add	r3, r2, r3
   11bfc:	e50b3008 	str	r3, [fp, #-8]
   11c00:	e5db300c 	ldrb	r3, [fp, #12]
   11c04:	e3530000 	cmp	r3, #0
   11c08:	0a000002 	beq	11c18 <Str_FmtNbr_Int32+0x2cc>
   11c0c:	e51b3008 	ldr	r3, [fp, #-8]
   11c10:	e3a02000 	mov	r2, #0
   11c14:	e5c32000 	strb	r2, [r3]
   11c18:	e51b3008 	ldr	r3, [fp, #-8]
   11c1c:	e2433001 	sub	r3, r3, #1
   11c20:	e50b3008 	str	r3, [fp, #-8]
   11c24:	e3a03000 	mov	r3, #0
   11c28:	e50b300c 	str	r3, [fp, #-12]
   11c2c:	ea000065 	b	11dc8 <Str_FmtNbr_Int32+0x47c>
   11c30:	e55b301a 	ldrb	r3, [fp, #-26]	; 0xffffffe6
   11c34:	e3530000 	cmp	r3, #0
   11c38:	1a000057 	bne	11d9c <Str_FmtNbr_Int32+0x450>
   11c3c:	e51b3010 	ldr	r3, [fp, #-16]
   11c40:	e3530000 	cmp	r3, #0
   11c44:	1a000002 	bne	11c54 <Str_FmtNbr_Int32+0x308>
   11c48:	e51b300c 	ldr	r3, [fp, #-12]
   11c4c:	e3530000 	cmp	r3, #0
   11c50:	1a00002d 	bne	11d0c <Str_FmtNbr_Int32+0x3c0>
   11c54:	e55b302a 	ldrb	r3, [fp, #-42]	; 0xffffffd6
   11c58:	e51b2010 	ldr	r2, [fp, #-16]
   11c5c:	e1a00002 	mov	r0, r2
   11c60:	e1a01003 	mov	r1, r3
   11c64:	eb001237 	bl	16548 <__aeabi_uidivmod>
   11c68:	e1a03001 	mov	r3, r1
   11c6c:	e54b3021 	strb	r3, [fp, #-33]	; 0xffffffdf
   11c70:	e55b3021 	ldrb	r3, [fp, #-33]	; 0xffffffdf
   11c74:	e3530009 	cmp	r3, #9
   11c78:	8a000008 	bhi	11ca0 <Str_FmtNbr_Int32+0x354>
   11c7c:	e55b3021 	ldrb	r3, [fp, #-33]	; 0xffffffdf
   11c80:	e2833030 	add	r3, r3, #48	; 0x30
   11c84:	e6ef2073 	uxtb	r2, r3
   11c88:	e51b3008 	ldr	r3, [fp, #-8]
   11c8c:	e5c32000 	strb	r2, [r3]
   11c90:	e51b3008 	ldr	r3, [fp, #-8]
   11c94:	e2433001 	sub	r3, r3, #1
   11c98:	e50b3008 	str	r3, [fp, #-8]
   11c9c:	ea000013 	b	11cf0 <Str_FmtNbr_Int32+0x3a4>
   11ca0:	e5db3008 	ldrb	r3, [fp, #8]
   11ca4:	e3530001 	cmp	r3, #1
   11ca8:	0a000008 	beq	11cd0 <Str_FmtNbr_Int32+0x384>
   11cac:	e55b3021 	ldrb	r3, [fp, #-33]	; 0xffffffdf
   11cb0:	e2833037 	add	r3, r3, #55	; 0x37
   11cb4:	e6ef2073 	uxtb	r2, r3
   11cb8:	e51b3008 	ldr	r3, [fp, #-8]
   11cbc:	e5c32000 	strb	r2, [r3]
   11cc0:	e51b3008 	ldr	r3, [fp, #-8]
   11cc4:	e2433001 	sub	r3, r3, #1
   11cc8:	e50b3008 	str	r3, [fp, #-8]
   11ccc:	ea000007 	b	11cf0 <Str_FmtNbr_Int32+0x3a4>
   11cd0:	e55b3021 	ldrb	r3, [fp, #-33]	; 0xffffffdf
   11cd4:	e2833057 	add	r3, r3, #87	; 0x57
   11cd8:	e6ef2073 	uxtb	r2, r3
   11cdc:	e51b3008 	ldr	r3, [fp, #-8]
   11ce0:	e5c32000 	strb	r2, [r3]
   11ce4:	e51b3008 	ldr	r3, [fp, #-8]
   11ce8:	e2433001 	sub	r3, r3, #1
   11cec:	e50b3008 	str	r3, [fp, #-8]
   11cf0:	e55b302a 	ldrb	r3, [fp, #-42]	; 0xffffffd6
   11cf4:	e51b0010 	ldr	r0, [fp, #-16]
   11cf8:	e1a01003 	mov	r1, r3
   11cfc:	eb001196 	bl	1635c <__aeabi_uidiv>
   11d00:	e1a03000 	mov	r3, r0
   11d04:	e50b3010 	str	r3, [fp, #-16]
   11d08:	ea00002b 	b	11dbc <Str_FmtNbr_Int32+0x470>
   11d0c:	e55b302b 	ldrb	r3, [fp, #-43]	; 0xffffffd5
   11d10:	e3530001 	cmp	r3, #1
   11d14:	1a000016 	bne	11d74 <Str_FmtNbr_Int32+0x428>
   11d18:	e55b3019 	ldrb	r3, [fp, #-25]	; 0xffffffe7
   11d1c:	e3530000 	cmp	r3, #0
   11d20:	1a000002 	bne	11d30 <Str_FmtNbr_Int32+0x3e4>
   11d24:	e55b301b 	ldrb	r3, [fp, #-27]	; 0xffffffe5
   11d28:	e3530000 	cmp	r3, #0
   11d2c:	0a000007 	beq	11d50 <Str_FmtNbr_Int32+0x404>
   11d30:	e55b3019 	ldrb	r3, [fp, #-25]	; 0xffffffe7
   11d34:	e3530000 	cmp	r3, #0
   11d38:	0a00000d 	beq	11d74 <Str_FmtNbr_Int32+0x428>
   11d3c:	e55b3016 	ldrb	r3, [fp, #-22]	; 0xffffffea
   11d40:	e2432001 	sub	r2, r3, #1
   11d44:	e51b300c 	ldr	r3, [fp, #-12]
   11d48:	e1520003 	cmp	r2, r3
   11d4c:	1a000008 	bne	11d74 <Str_FmtNbr_Int32+0x428>
   11d50:	e51b3008 	ldr	r3, [fp, #-8]
   11d54:	e3a0202d 	mov	r2, #45	; 0x2d
   11d58:	e5c32000 	strb	r2, [r3]
   11d5c:	e51b3008 	ldr	r3, [fp, #-8]
   11d60:	e2433001 	sub	r3, r3, #1
   11d64:	e50b3008 	str	r3, [fp, #-8]
   11d68:	e3a03001 	mov	r3, #1
   11d6c:	e54b301b 	strb	r3, [fp, #-27]	; 0xffffffe5
   11d70:	ea000011 	b	11dbc <Str_FmtNbr_Int32+0x470>
   11d74:	e5db3004 	ldrb	r3, [fp, #4]
   11d78:	e3530000 	cmp	r3, #0
   11d7c:	0a00000d 	beq	11db8 <Str_FmtNbr_Int32+0x46c>
   11d80:	e51b3008 	ldr	r3, [fp, #-8]
   11d84:	e5db2004 	ldrb	r2, [fp, #4]
   11d88:	e5c32000 	strb	r2, [r3]
   11d8c:	e51b3008 	ldr	r3, [fp, #-8]
   11d90:	e2433001 	sub	r3, r3, #1
   11d94:	e50b3008 	str	r3, [fp, #-8]
   11d98:	ea000006 	b	11db8 <Str_FmtNbr_Int32+0x46c>
   11d9c:	e51b3008 	ldr	r3, [fp, #-8]
   11da0:	e3a0203f 	mov	r2, #63	; 0x3f
   11da4:	e5c32000 	strb	r2, [r3]
   11da8:	e51b3008 	ldr	r3, [fp, #-8]
   11dac:	e2433001 	sub	r3, r3, #1
   11db0:	e50b3008 	str	r3, [fp, #-8]
   11db4:	ea000000 	b	11dbc <Str_FmtNbr_Int32+0x470>
   11db8:	e1a00000 	nop			; (mov r0, r0)
   11dbc:	e51b300c 	ldr	r3, [fp, #-12]
   11dc0:	e2833001 	add	r3, r3, #1
   11dc4:	e50b300c 	str	r3, [fp, #-12]
   11dc8:	e55b2016 	ldrb	r2, [fp, #-22]	; 0xffffffea
   11dcc:	e51b300c 	ldr	r3, [fp, #-12]
   11dd0:	e1520003 	cmp	r2, r3
   11dd4:	8affff95 	bhi	11c30 <Str_FmtNbr_Int32+0x2e4>
   11dd8:	e55b301a 	ldrb	r3, [fp, #-26]	; 0xffffffe6
   11ddc:	e3530000 	cmp	r3, #0
   11de0:	0a000001 	beq	11dec <Str_FmtNbr_Int32+0x4a0>
   11de4:	e3a03000 	mov	r3, #0
   11de8:	ea000000 	b	11df0 <Str_FmtNbr_Int32+0x4a4>
   11dec:	e59b3010 	ldr	r3, [fp, #16]
   11df0:	e1a00003 	mov	r0, r3
   11df4:	e24bd004 	sub	sp, fp, #4
   11df8:	e8bd8800 	pop	{fp, pc}

00011dfc <Str_ParseNbr_Int32>:
   11dfc:	e92d4800 	push	{fp, lr}
   11e00:	e28db004 	add	fp, sp, #4
   11e04:	e24dd038 	sub	sp, sp, #56	; 0x38
   11e08:	e50b0030 	str	r0, [fp, #-48]	; 0xffffffd0
   11e0c:	e50b1034 	str	r1, [fp, #-52]	; 0xffffffcc
   11e10:	e54b2035 	strb	r2, [fp, #-53]	; 0xffffffcb
   11e14:	e54b3036 	strb	r3, [fp, #-54]	; 0xffffffca
   11e18:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
   11e1c:	e3530000 	cmp	r3, #0
   11e20:	1a000001 	bne	11e2c <Str_ParseNbr_Int32+0x30>
   11e24:	e24b3024 	sub	r3, fp, #36	; 0x24
   11e28:	e50b3034 	str	r3, [fp, #-52]	; 0xffffffcc
   11e2c:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
   11e30:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
   11e34:	e5832000 	str	r2, [r3]
   11e38:	e59b3004 	ldr	r3, [fp, #4]
   11e3c:	e3530000 	cmp	r3, #0
   11e40:	1a000001 	bne	11e4c <Str_ParseNbr_Int32+0x50>
   11e44:	e24b3025 	sub	r3, fp, #37	; 0x25
   11e48:	e58b3004 	str	r3, [fp, #4]
   11e4c:	e59b3004 	ldr	r3, [fp, #4]
   11e50:	e3a02000 	mov	r2, #0
   11e54:	e5c32000 	strb	r2, [r3]
   11e58:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
   11e5c:	e3530000 	cmp	r3, #0
   11e60:	1a000001 	bne	11e6c <Str_ParseNbr_Int32+0x70>
   11e64:	e3a03000 	mov	r3, #0
   11e68:	ea0000fc 	b	12260 <Str_ParseNbr_Int32+0x464>
   11e6c:	e55b3035 	ldrb	r3, [fp, #-53]	; 0xffffffcb
   11e70:	e3530001 	cmp	r3, #1
   11e74:	0a000002 	beq	11e84 <Str_ParseNbr_Int32+0x88>
   11e78:	e55b3035 	ldrb	r3, [fp, #-53]	; 0xffffffcb
   11e7c:	e3530024 	cmp	r3, #36	; 0x24
   11e80:	9a000001 	bls	11e8c <Str_ParseNbr_Int32+0x90>
   11e84:	e3a03000 	mov	r3, #0
   11e88:	ea0000f4 	b	12260 <Str_ParseNbr_Int32+0x464>
   11e8c:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
   11e90:	e50b3008 	str	r3, [fp, #-8]
   11e94:	e51b3008 	ldr	r3, [fp, #-8]
   11e98:	e5d33000 	ldrb	r3, [r3]
   11e9c:	e1a00003 	mov	r0, r3
   11ea0:	ebfff861 	bl	1002c <ASCII_IsSpace>
   11ea4:	e1a03000 	mov	r3, r0
   11ea8:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
   11eac:	ea000008 	b	11ed4 <Str_ParseNbr_Int32+0xd8>
   11eb0:	e51b3008 	ldr	r3, [fp, #-8]
   11eb4:	e2833001 	add	r3, r3, #1
   11eb8:	e50b3008 	str	r3, [fp, #-8]
   11ebc:	e51b3008 	ldr	r3, [fp, #-8]
   11ec0:	e5d33000 	ldrb	r3, [r3]
   11ec4:	e1a00003 	mov	r0, r3
   11ec8:	ebfff857 	bl	1002c <ASCII_IsSpace>
   11ecc:	e1a03000 	mov	r3, r0
   11ed0:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
   11ed4:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
   11ed8:	e3530001 	cmp	r3, #1
   11edc:	0afffff3 	beq	11eb0 <Str_ParseNbr_Int32+0xb4>
   11ee0:	e51b3008 	ldr	r3, [fp, #-8]
   11ee4:	e5d33000 	ldrb	r3, [r3]
   11ee8:	e353002b 	cmp	r3, #43	; 0x2b
   11eec:	0a000002 	beq	11efc <Str_ParseNbr_Int32+0x100>
   11ef0:	e353002d 	cmp	r3, #45	; 0x2d
   11ef4:	0a000006 	beq	11f14 <Str_ParseNbr_Int32+0x118>
   11ef8:	ea00000e 	b	11f38 <Str_ParseNbr_Int32+0x13c>
   11efc:	e51b3008 	ldr	r3, [fp, #-8]
   11f00:	e2833001 	add	r3, r3, #1
   11f04:	e50b3008 	str	r3, [fp, #-8]
   11f08:	e3a03000 	mov	r3, #0
   11f0c:	e54b3012 	strb	r3, [fp, #-18]	; 0xffffffee
   11f10:	ea00000b 	b	11f44 <Str_ParseNbr_Int32+0x148>
   11f14:	e55b3036 	ldrb	r3, [fp, #-54]	; 0xffffffca
   11f18:	e3530001 	cmp	r3, #1
   11f1c:	1a000002 	bne	11f2c <Str_ParseNbr_Int32+0x130>
   11f20:	e51b3008 	ldr	r3, [fp, #-8]
   11f24:	e2833001 	add	r3, r3, #1
   11f28:	e50b3008 	str	r3, [fp, #-8]
   11f2c:	e3a03001 	mov	r3, #1
   11f30:	e54b3012 	strb	r3, [fp, #-18]	; 0xffffffee
   11f34:	ea000002 	b	11f44 <Str_ParseNbr_Int32+0x148>
   11f38:	e3a03000 	mov	r3, #0
   11f3c:	e54b3012 	strb	r3, [fp, #-18]	; 0xffffffee
   11f40:	e1a00000 	nop			; (mov r0, r0)
   11f44:	e51b3008 	ldr	r3, [fp, #-8]
   11f48:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   11f4c:	e55b3035 	ldrb	r3, [fp, #-53]	; 0xffffffcb
   11f50:	e3530008 	cmp	r3, #8
   11f54:	0a00002a 	beq	12004 <Str_ParseNbr_Int32+0x208>
   11f58:	e3530010 	cmp	r3, #16
   11f5c:	0a000030 	beq	12024 <Str_ParseNbr_Int32+0x228>
   11f60:	e3530000 	cmp	r3, #0
   11f64:	1a00004d 	bne	120a0 <Str_ParseNbr_Int32+0x2a4>
   11f68:	e51b3008 	ldr	r3, [fp, #-8]
   11f6c:	e5d33000 	ldrb	r3, [r3]
   11f70:	e3530030 	cmp	r3, #48	; 0x30
   11f74:	1a00001f 	bne	11ff8 <Str_ParseNbr_Int32+0x1fc>
   11f78:	e51b3008 	ldr	r3, [fp, #-8]
   11f7c:	e2833001 	add	r3, r3, #1
   11f80:	e50b3008 	str	r3, [fp, #-8]
   11f84:	e51b3008 	ldr	r3, [fp, #-8]
   11f88:	e5d33000 	ldrb	r3, [r3]
   11f8c:	e3530058 	cmp	r3, #88	; 0x58
   11f90:	0a000001 	beq	11f9c <Str_ParseNbr_Int32+0x1a0>
   11f94:	e3530078 	cmp	r3, #120	; 0x78
   11f98:	1a000010 	bne	11fe0 <Str_ParseNbr_Int32+0x1e4>
   11f9c:	e3a03010 	mov	r3, #16
   11fa0:	e54b3035 	strb	r3, [fp, #-53]	; 0xffffffcb
   11fa4:	e51b3008 	ldr	r3, [fp, #-8]
   11fa8:	e5d33001 	ldrb	r3, [r3, #1]
   11fac:	e54b3019 	strb	r3, [fp, #-25]	; 0xffffffe7
   11fb0:	e55b3019 	ldrb	r3, [fp, #-25]	; 0xffffffe7
   11fb4:	e1a00003 	mov	r0, r3
   11fb8:	ebfff7e7 	bl	ff5c <ASCII_IsDigHex>
   11fbc:	e1a03000 	mov	r3, r0
   11fc0:	e54b301a 	strb	r3, [fp, #-26]	; 0xffffffe6
   11fc4:	e55b301a 	ldrb	r3, [fp, #-26]	; 0xffffffe6
   11fc8:	e3530001 	cmp	r3, #1
   11fcc:	1a000007 	bne	11ff0 <Str_ParseNbr_Int32+0x1f4>
   11fd0:	e51b3008 	ldr	r3, [fp, #-8]
   11fd4:	e2833001 	add	r3, r3, #1
   11fd8:	e50b3008 	str	r3, [fp, #-8]
   11fdc:	ea000003 	b	11ff0 <Str_ParseNbr_Int32+0x1f4>
   11fe0:	e3a03008 	mov	r3, #8
   11fe4:	e54b3035 	strb	r3, [fp, #-53]	; 0xffffffcb
   11fe8:	e1a00000 	nop			; (mov r0, r0)
   11fec:	ea00002f 	b	120b0 <Str_ParseNbr_Int32+0x2b4>
   11ff0:	e1a00000 	nop			; (mov r0, r0)
   11ff4:	ea00002d 	b	120b0 <Str_ParseNbr_Int32+0x2b4>
   11ff8:	e3a0300a 	mov	r3, #10
   11ffc:	e54b3035 	strb	r3, [fp, #-53]	; 0xffffffcb
   12000:	ea00002a 	b	120b0 <Str_ParseNbr_Int32+0x2b4>
   12004:	e51b3008 	ldr	r3, [fp, #-8]
   12008:	e5d33000 	ldrb	r3, [r3]
   1200c:	e3530030 	cmp	r3, #48	; 0x30
   12010:	1a000023 	bne	120a4 <Str_ParseNbr_Int32+0x2a8>
   12014:	e51b3008 	ldr	r3, [fp, #-8]
   12018:	e2833001 	add	r3, r3, #1
   1201c:	e50b3008 	str	r3, [fp, #-8]
   12020:	ea00001f 	b	120a4 <Str_ParseNbr_Int32+0x2a8>
   12024:	e51b3008 	ldr	r3, [fp, #-8]
   12028:	e5d33000 	ldrb	r3, [r3]
   1202c:	e3530030 	cmp	r3, #48	; 0x30
   12030:	1a00001d 	bne	120ac <Str_ParseNbr_Int32+0x2b0>
   12034:	e51b3008 	ldr	r3, [fp, #-8]
   12038:	e2833001 	add	r3, r3, #1
   1203c:	e50b3008 	str	r3, [fp, #-8]
   12040:	e51b3008 	ldr	r3, [fp, #-8]
   12044:	e5d33000 	ldrb	r3, [r3]
   12048:	e3530058 	cmp	r3, #88	; 0x58
   1204c:	0a000001 	beq	12058 <Str_ParseNbr_Int32+0x25c>
   12050:	e3530078 	cmp	r3, #120	; 0x78
   12054:	1a00000e 	bne	12094 <Str_ParseNbr_Int32+0x298>
   12058:	e51b3008 	ldr	r3, [fp, #-8]
   1205c:	e5d33001 	ldrb	r3, [r3, #1]
   12060:	e54b3019 	strb	r3, [fp, #-25]	; 0xffffffe7
   12064:	e55b3019 	ldrb	r3, [fp, #-25]	; 0xffffffe7
   12068:	e1a00003 	mov	r0, r3
   1206c:	ebfff7ba 	bl	ff5c <ASCII_IsDigHex>
   12070:	e1a03000 	mov	r3, r0
   12074:	e54b301a 	strb	r3, [fp, #-26]	; 0xffffffe6
   12078:	e55b301a 	ldrb	r3, [fp, #-26]	; 0xffffffe6
   1207c:	e3530001 	cmp	r3, #1
   12080:	1a000004 	bne	12098 <Str_ParseNbr_Int32+0x29c>
   12084:	e51b3008 	ldr	r3, [fp, #-8]
   12088:	e2833001 	add	r3, r3, #1
   1208c:	e50b3008 	str	r3, [fp, #-8]
   12090:	ea000000 	b	12098 <Str_ParseNbr_Int32+0x29c>
   12094:	ea000000 	b	1209c <Str_ParseNbr_Int32+0x2a0>
   12098:	e1a00000 	nop			; (mov r0, r0)
   1209c:	ea000002 	b	120ac <Str_ParseNbr_Int32+0x2b0>
   120a0:	ea000002 	b	120b0 <Str_ParseNbr_Int32+0x2b4>
   120a4:	e1a00000 	nop			; (mov r0, r0)
   120a8:	ea000000 	b	120b0 <Str_ParseNbr_Int32+0x2b4>
   120ac:	e1a00000 	nop			; (mov r0, r0)
   120b0:	e3a03000 	mov	r3, #0
   120b4:	e50b3010 	str	r3, [fp, #-16]
   120b8:	e3a03000 	mov	r3, #0
   120bc:	e54b3013 	strb	r3, [fp, #-19]	; 0xffffffed
   120c0:	e3a03000 	mov	r3, #0
   120c4:	e54b3014 	strb	r3, [fp, #-20]	; 0xffffffec
   120c8:	ea00004d 	b	12204 <Str_ParseNbr_Int32+0x408>
   120cc:	e51b3008 	ldr	r3, [fp, #-8]
   120d0:	e5d33000 	ldrb	r3, [r3]
   120d4:	e54b3019 	strb	r3, [fp, #-25]	; 0xffffffe7
   120d8:	e55b3019 	ldrb	r3, [fp, #-25]	; 0xffffffe7
   120dc:	e1a00003 	mov	r0, r3
   120e0:	ebfff72d 	bl	fd9c <ASCII_IsAlphaNum>
   120e4:	e1a03000 	mov	r3, r0
   120e8:	e54b301b 	strb	r3, [fp, #-27]	; 0xffffffe5
   120ec:	e55b301b 	ldrb	r3, [fp, #-27]	; 0xffffffe5
   120f0:	e3530001 	cmp	r3, #1
   120f4:	1a000040 	bne	121fc <Str_ParseNbr_Int32+0x400>
   120f8:	e55b3019 	ldrb	r3, [fp, #-25]	; 0xffffffe7
   120fc:	e1a00003 	mov	r0, r3
   12100:	ebfff76d 	bl	febc <ASCII_IsDig>
   12104:	e1a03000 	mov	r3, r0
   12108:	e54b301c 	strb	r3, [fp, #-28]	; 0xffffffe4
   1210c:	e55b301c 	ldrb	r3, [fp, #-28]	; 0xffffffe4
   12110:	e3530001 	cmp	r3, #1
   12114:	1a000003 	bne	12128 <Str_ParseNbr_Int32+0x32c>
   12118:	e55b3019 	ldrb	r3, [fp, #-25]	; 0xffffffe7
   1211c:	e2433030 	sub	r3, r3, #48	; 0x30
   12120:	e54b3009 	strb	r3, [fp, #-9]
   12124:	ea00000e 	b	12164 <Str_ParseNbr_Int32+0x368>
   12128:	e55b3019 	ldrb	r3, [fp, #-25]	; 0xffffffe7
   1212c:	e1a00003 	mov	r0, r3
   12130:	ebfff739 	bl	fe1c <ASCII_IsLower>
   12134:	e1a03000 	mov	r3, r0
   12138:	e54b301d 	strb	r3, [fp, #-29]	; 0xffffffe3
   1213c:	e55b301d 	ldrb	r3, [fp, #-29]	; 0xffffffe3
   12140:	e3530001 	cmp	r3, #1
   12144:	1a000003 	bne	12158 <Str_ParseNbr_Int32+0x35c>
   12148:	e55b3019 	ldrb	r3, [fp, #-25]	; 0xffffffe7
   1214c:	e2433057 	sub	r3, r3, #87	; 0x57
   12150:	e54b3009 	strb	r3, [fp, #-9]
   12154:	ea000002 	b	12164 <Str_ParseNbr_Int32+0x368>
   12158:	e55b3019 	ldrb	r3, [fp, #-25]	; 0xffffffe7
   1215c:	e2433037 	sub	r3, r3, #55	; 0x37
   12160:	e54b3009 	strb	r3, [fp, #-9]
   12164:	e55b2009 	ldrb	r2, [fp, #-9]
   12168:	e55b3035 	ldrb	r3, [fp, #-53]	; 0xffffffcb
   1216c:	e1520003 	cmp	r2, r3
   12170:	2a00001e 	bcs	121f0 <Str_ParseNbr_Int32+0x3f4>
   12174:	e55b3013 	ldrb	r3, [fp, #-19]	; 0xffffffed
   12178:	e3530000 	cmp	r3, #0
   1217c:	1a000017 	bne	121e0 <Str_ParseNbr_Int32+0x3e4>
   12180:	e55b2035 	ldrb	r2, [fp, #-53]	; 0xffffffcb
   12184:	e3073758 	movw	r3, #30552	; 0x7758
   12188:	e3403001 	movt	r3, #1
   1218c:	e7932102 	ldr	r2, [r3, r2, lsl #2]
   12190:	e51b3010 	ldr	r3, [fp, #-16]
   12194:	e1520003 	cmp	r2, r3
   12198:	3a00000e 	bcc	121d8 <Str_ParseNbr_Int32+0x3dc>
   1219c:	e55b2035 	ldrb	r2, [fp, #-53]	; 0xffffffcb
   121a0:	e51b3010 	ldr	r3, [fp, #-16]
   121a4:	e0030392 	mul	r3, r2, r3
   121a8:	e50b3010 	str	r3, [fp, #-16]
   121ac:	e55b3009 	ldrb	r3, [fp, #-9]
   121b0:	e51b2010 	ldr	r2, [fp, #-16]
   121b4:	e0823003 	add	r3, r2, r3
   121b8:	e50b3010 	str	r3, [fp, #-16]
   121bc:	e55b2009 	ldrb	r2, [fp, #-9]
   121c0:	e51b3010 	ldr	r3, [fp, #-16]
   121c4:	e1520003 	cmp	r2, r3
   121c8:	9a000004 	bls	121e0 <Str_ParseNbr_Int32+0x3e4>
   121cc:	e3a03001 	mov	r3, #1
   121d0:	e54b3013 	strb	r3, [fp, #-19]	; 0xffffffed
   121d4:	ea000001 	b	121e0 <Str_ParseNbr_Int32+0x3e4>
   121d8:	e3a03001 	mov	r3, #1
   121dc:	e54b3013 	strb	r3, [fp, #-19]	; 0xffffffed
   121e0:	e51b3008 	ldr	r3, [fp, #-8]
   121e4:	e2833001 	add	r3, r3, #1
   121e8:	e50b3008 	str	r3, [fp, #-8]
   121ec:	ea000004 	b	12204 <Str_ParseNbr_Int32+0x408>
   121f0:	e3a03001 	mov	r3, #1
   121f4:	e54b3014 	strb	r3, [fp, #-20]	; 0xffffffec
   121f8:	ea000001 	b	12204 <Str_ParseNbr_Int32+0x408>
   121fc:	e3a03001 	mov	r3, #1
   12200:	e54b3014 	strb	r3, [fp, #-20]	; 0xffffffec
   12204:	e55b3014 	ldrb	r3, [fp, #-20]	; 0xffffffec
   12208:	e3530000 	cmp	r3, #0
   1220c:	0affffae 	beq	120cc <Str_ParseNbr_Int32+0x2d0>
   12210:	e55b3013 	ldrb	r3, [fp, #-19]	; 0xffffffed
   12214:	e3530001 	cmp	r3, #1
   12218:	1a000001 	bne	12224 <Str_ParseNbr_Int32+0x428>
   1221c:	e3e03000 	mvn	r3, #0
   12220:	e50b3010 	str	r3, [fp, #-16]
   12224:	e51b2008 	ldr	r2, [fp, #-8]
   12228:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   1222c:	e1520003 	cmp	r2, r3
   12230:	0a000003 	beq	12244 <Str_ParseNbr_Int32+0x448>
   12234:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
   12238:	e51b2008 	ldr	r2, [fp, #-8]
   1223c:	e5832000 	str	r2, [r3]
   12240:	ea000002 	b	12250 <Str_ParseNbr_Int32+0x454>
   12244:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
   12248:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
   1224c:	e5832000 	str	r2, [r3]
   12250:	e59b3004 	ldr	r3, [fp, #4]
   12254:	e55b2012 	ldrb	r2, [fp, #-18]	; 0xffffffee
   12258:	e5c32000 	strb	r2, [r3]
   1225c:	e51b3010 	ldr	r3, [fp, #-16]
   12260:	e1a00003 	mov	r0, r3
   12264:	e24bd004 	sub	sp, fp, #4
   12268:	e8bd8800 	pop	{fp, pc}

0001226c <CSP_GPIO_Init>:
   1226c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   12270:	e28db000 	add	fp, sp, #0
   12274:	e28bd000 	add	sp, fp, #0
   12278:	e8bd0800 	ldmfd	sp!, {fp}
   1227c:	e12fff1e 	bx	lr

00012280 <CSP_GPIO_Cfg>:
   12280:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   12284:	e28db000 	add	fp, sp, #0
   12288:	e24dd014 	sub	sp, sp, #20
   1228c:	e50b100c 	str	r1, [fp, #-12]
   12290:	e14b00b6 	strh	r0, [fp, #-6]
   12294:	e14b20b8 	strh	r2, [fp, #-8]
   12298:	e14b30be 	strh	r3, [fp, #-14]
   1229c:	e3a03001 	mov	r3, #1
   122a0:	e1a00003 	mov	r0, r3
   122a4:	e28bd000 	add	sp, fp, #0
   122a8:	e8bd0800 	ldmfd	sp!, {fp}
   122ac:	e12fff1e 	bx	lr

000122b0 <CSP_GPIO_BitClr>:
   122b0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   122b4:	e28db000 	add	fp, sp, #0
   122b8:	e24dd00c 	sub	sp, sp, #12
   122bc:	e1a03000 	mov	r3, r0
   122c0:	e50b100c 	str	r1, [fp, #-12]
   122c4:	e14b30b6 	strh	r3, [fp, #-6]
   122c8:	e28bd000 	add	sp, fp, #0
   122cc:	e8bd0800 	ldmfd	sp!, {fp}
   122d0:	e12fff1e 	bx	lr

000122d4 <CSP_GPIO_BitSet>:
   122d4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   122d8:	e28db000 	add	fp, sp, #0
   122dc:	e24dd00c 	sub	sp, sp, #12
   122e0:	e1a03000 	mov	r3, r0
   122e4:	e50b100c 	str	r1, [fp, #-12]
   122e8:	e14b30b6 	strh	r3, [fp, #-6]
   122ec:	e28bd000 	add	sp, fp, #0
   122f0:	e8bd0800 	ldmfd	sp!, {fp}
   122f4:	e12fff1e 	bx	lr

000122f8 <CSP_GPIO_BitToggle>:
   122f8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   122fc:	e28db000 	add	fp, sp, #0
   12300:	e24dd00c 	sub	sp, sp, #12
   12304:	e1a03000 	mov	r3, r0
   12308:	e50b100c 	str	r1, [fp, #-12]
   1230c:	e14b30b6 	strh	r3, [fp, #-6]
   12310:	e28bd000 	add	sp, fp, #0
   12314:	e8bd0800 	ldmfd	sp!, {fp}
   12318:	e12fff1e 	bx	lr

0001231c <CSP_GPIO_Rd>:
   1231c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   12320:	e28db000 	add	fp, sp, #0
   12324:	e24dd00c 	sub	sp, sp, #12
   12328:	e1a03000 	mov	r3, r0
   1232c:	e14b30b6 	strh	r3, [fp, #-6]
   12330:	e3a03000 	mov	r3, #0
   12334:	e1a00003 	mov	r0, r3
   12338:	e28bd000 	add	sp, fp, #0
   1233c:	e8bd0800 	ldmfd	sp!, {fp}
   12340:	e12fff1e 	bx	lr

00012344 <CSP_GPIO_Wr>:
   12344:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   12348:	e28db000 	add	fp, sp, #0
   1234c:	e24dd00c 	sub	sp, sp, #12
   12350:	e1a03000 	mov	r3, r0
   12354:	e50b100c 	str	r1, [fp, #-12]
   12358:	e14b30b6 	strh	r3, [fp, #-6]
   1235c:	e28bd000 	add	sp, fp, #0
   12360:	e8bd0800 	ldmfd	sp!, {fp}
   12364:	e12fff1e 	bx	lr

00012368 <CSP_GPIO_IntClr>:
   12368:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   1236c:	e28db000 	add	fp, sp, #0
   12370:	e24dd00c 	sub	sp, sp, #12
   12374:	e1a03000 	mov	r3, r0
   12378:	e14b30b6 	strh	r3, [fp, #-6]
   1237c:	e3a03000 	mov	r3, #0
   12380:	e1a00003 	mov	r0, r3
   12384:	e28bd000 	add	sp, fp, #0
   12388:	e8bd0800 	ldmfd	sp!, {fp}
   1238c:	e12fff1e 	bx	lr

00012390 <CSP_GPIO_IntStatGet>:
   12390:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   12394:	e28db000 	add	fp, sp, #0
   12398:	e24dd00c 	sub	sp, sp, #12
   1239c:	e1a03000 	mov	r3, r0
   123a0:	e14b30b6 	strh	r3, [fp, #-6]
   123a4:	e3a03000 	mov	r3, #0
   123a8:	e1a00003 	mov	r0, r3
   123ac:	e28bd000 	add	sp, fp, #0
   123b0:	e8bd0800 	ldmfd	sp!, {fp}
   123b4:	e12fff1e 	bx	lr

000123b8 <CSP_IntClr>:
   123b8:	e92d4800 	push	{fp, lr}
   123bc:	e28db004 	add	fp, sp, #4
   123c0:	e24dd008 	sub	sp, sp, #8
   123c4:	e1a02000 	mov	r2, r0
   123c8:	e1a03001 	mov	r3, r1
   123cc:	e14b20b6 	strh	r2, [fp, #-6]
   123d0:	e14b30b8 	strh	r3, [fp, #-8]
   123d4:	e15b20b6 	ldrh	r2, [fp, #-6]
   123d8:	e15b30b8 	ldrh	r3, [fp, #-8]
   123dc:	e1a00002 	mov	r0, r2
   123e0:	e1a01003 	mov	r1, r3
   123e4:	eb00089f 	bl	14668 <guest_CSP_IntClr>
   123e8:	e24bd004 	sub	sp, fp, #4
   123ec:	e8bd8800 	pop	{fp, pc}

000123f0 <CSP_IntDis>:
   123f0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   123f4:	e28db000 	add	fp, sp, #0
   123f8:	e24dd014 	sub	sp, sp, #20
   123fc:	e1a02000 	mov	r2, r0
   12400:	e1a03001 	mov	r3, r1
   12404:	e14b20be 	strh	r2, [fp, #-14]
   12408:	e14b31b0 	strh	r3, [fp, #-16]
   1240c:	e3a03d46 	mov	r3, #4480	; 0x1180
   12410:	e34f38f0 	movt	r3, #63728	; 0xf8f0
   12414:	e50b3008 	str	r3, [fp, #-8]
   12418:	e15b31b0 	ldrh	r3, [fp, #-16]
   1241c:	e1a032a3 	lsr	r3, r3, #5
   12420:	e6ff3073 	uxth	r3, r3
   12424:	e1a03103 	lsl	r3, r3, #2
   12428:	e51b2008 	ldr	r2, [fp, #-8]
   1242c:	e0823003 	add	r3, r2, r3
   12430:	e50b3008 	str	r3, [fp, #-8]
   12434:	e51b3008 	ldr	r3, [fp, #-8]
   12438:	e15b21b0 	ldrh	r2, [fp, #-16]
   1243c:	e202201f 	and	r2, r2, #31
   12440:	e3a01001 	mov	r1, #1
   12444:	e1a02211 	lsl	r2, r1, r2
   12448:	e5832000 	str	r2, [r3]
   1244c:	e28bd000 	add	sp, fp, #0
   12450:	e8bd0800 	ldmfd	sp!, {fp}
   12454:	e12fff1e 	bx	lr

00012458 <CSP_IntDisAll>:
   12458:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   1245c:	e28db000 	add	fp, sp, #0
   12460:	e24dd00c 	sub	sp, sp, #12
   12464:	e1a03000 	mov	r3, r0
   12468:	e14b30b6 	strh	r3, [fp, #-6]
   1246c:	e3a03a01 	mov	r3, #4096	; 0x1000
   12470:	e34f38f0 	movt	r3, #63728	; 0xf8f0
   12474:	e3a02a01 	mov	r2, #4096	; 0x1000
   12478:	e34f28f0 	movt	r2, #63728	; 0xf8f0
   1247c:	e5922000 	ldr	r2, [r2]
   12480:	e3c22001 	bic	r2, r2, #1
   12484:	e5832000 	str	r2, [r3]
   12488:	e28bd000 	add	sp, fp, #0
   1248c:	e8bd0800 	ldmfd	sp!, {fp}
   12490:	e12fff1e 	bx	lr

00012494 <CSP_IntEn>:
   12494:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   12498:	e28db000 	add	fp, sp, #0
   1249c:	e24dd014 	sub	sp, sp, #20
   124a0:	e1a02000 	mov	r2, r0
   124a4:	e1a03001 	mov	r3, r1
   124a8:	e14b20be 	strh	r2, [fp, #-14]
   124ac:	e14b31b0 	strh	r3, [fp, #-16]
   124b0:	e3a03c11 	mov	r3, #4352	; 0x1100
   124b4:	e34f38f0 	movt	r3, #63728	; 0xf8f0
   124b8:	e50b3008 	str	r3, [fp, #-8]
   124bc:	e15b31b0 	ldrh	r3, [fp, #-16]
   124c0:	e1a032a3 	lsr	r3, r3, #5
   124c4:	e6ff3073 	uxth	r3, r3
   124c8:	e1a03103 	lsl	r3, r3, #2
   124cc:	e51b2008 	ldr	r2, [fp, #-8]
   124d0:	e0823003 	add	r3, r2, r3
   124d4:	e50b3008 	str	r3, [fp, #-8]
   124d8:	e51b3008 	ldr	r3, [fp, #-8]
   124dc:	e15b21b0 	ldrh	r2, [fp, #-16]
   124e0:	e202201f 	and	r2, r2, #31
   124e4:	e3a01001 	mov	r1, #1
   124e8:	e1a02211 	lsl	r2, r1, r2
   124ec:	e5832000 	str	r2, [r3]
   124f0:	e28bd000 	add	sp, fp, #0
   124f4:	e8bd0800 	ldmfd	sp!, {fp}
   124f8:	e12fff1e 	bx	lr

000124fc <CSP_IntInit>:
   124fc:	e92d4800 	push	{fp, lr}
   12500:	e28db004 	add	fp, sp, #4
   12504:	e24dd010 	sub	sp, sp, #16
   12508:	e3a03000 	mov	r3, #0
   1250c:	e50b300c 	str	r3, [fp, #-12]
   12510:	e3a03000 	mov	r3, #0
   12514:	e14b30b6 	strh	r3, [fp, #-6]
   12518:	ea00000e 	b	12558 <CSP_IntInit+0x5c>
   1251c:	e15b30b6 	ldrh	r3, [fp, #-6]
   12520:	e1a02183 	lsl	r2, r3, #3
   12524:	e3083650 	movw	r3, #34384	; 0x8650
   12528:	e3403001 	movt	r3, #1
   1252c:	e0823003 	add	r3, r2, r3
   12530:	e50b3010 	str	r3, [fp, #-16]
   12534:	eb0002ed 	bl	130f0 <CPU_SR_Save>
   12538:	e50b000c 	str	r0, [fp, #-12]
   1253c:	e51b0010 	ldr	r0, [fp, #-16]
   12540:	eb0002bc 	bl	13038 <CSP_IntVectClr>
   12544:	e51b000c 	ldr	r0, [fp, #-12]
   12548:	eb0002fb 	bl	1313c <CPU_SR_Restore>
   1254c:	e15b30b6 	ldrh	r3, [fp, #-6]
   12550:	e2833001 	add	r3, r3, #1
   12554:	e14b30b6 	strh	r3, [fp, #-6]
   12558:	e15b30b6 	ldrh	r3, [fp, #-6]
   1255c:	e35300ff 	cmp	r3, #255	; 0xff
   12560:	9affffed 	bls	1251c <CSP_IntInit+0x20>
   12564:	e24bd004 	sub	sp, fp, #4
   12568:	e8bd8800 	pop	{fp, pc}

0001256c <CSP_IntSrcCfg>:
   1256c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   12570:	e28db000 	add	fp, sp, #0
   12574:	e24dd014 	sub	sp, sp, #20
   12578:	e14b00be 	strh	r0, [fp, #-14]
   1257c:	e14b11b0 	strh	r1, [fp, #-16]
   12580:	e14b21b2 	strh	r2, [fp, #-18]	; 0xffffffee
   12584:	e14b31b4 	strh	r3, [fp, #-20]	; 0xffffffec
   12588:	e15b30be 	ldrh	r3, [fp, #-14]
   1258c:	e3530000 	cmp	r3, #0
   12590:	0a000001 	beq	1259c <CSP_IntSrcCfg+0x30>
   12594:	e3a03000 	mov	r3, #0
   12598:	ea00004c 	b	126d0 <CSP_IntSrcCfg+0x164>
   1259c:	e15b31b0 	ldrh	r3, [fp, #-16]
   125a0:	e35300ff 	cmp	r3, #255	; 0xff
   125a4:	9a000001 	bls	125b0 <CSP_IntSrcCfg+0x44>
   125a8:	e3a03000 	mov	r3, #0
   125ac:	ea000047 	b	126d0 <CSP_IntSrcCfg+0x164>
   125b0:	e15b31b2 	ldrh	r3, [fp, #-18]	; 0xffffffee
   125b4:	e35300ff 	cmp	r3, #255	; 0xff
   125b8:	93a03000 	movls	r3, #0
   125bc:	83a03001 	movhi	r3, #1
   125c0:	e6ef2073 	uxtb	r2, r3
   125c4:	e15b31b2 	ldrh	r3, [fp, #-18]	; 0xffffffee
   125c8:	e353000f 	cmp	r3, #15
   125cc:	83a03000 	movhi	r3, #0
   125d0:	93a03001 	movls	r3, #1
   125d4:	e6ef3073 	uxtb	r3, r3
   125d8:	e1823003 	orr	r3, r2, r3
   125dc:	e6ef3073 	uxtb	r3, r3
   125e0:	e3530000 	cmp	r3, #0
   125e4:	0a000001 	beq	125f0 <CSP_IntSrcCfg+0x84>
   125e8:	e3a03000 	mov	r3, #0
   125ec:	ea000037 	b	126d0 <CSP_IntSrcCfg+0x164>
   125f0:	e3a03b05 	mov	r3, #5120	; 0x1400
   125f4:	e34f38f0 	movt	r3, #63728	; 0xf8f0
   125f8:	e50b3008 	str	r3, [fp, #-8]
   125fc:	e15b31b0 	ldrh	r3, [fp, #-16]
   12600:	e1a03123 	lsr	r3, r3, #2
   12604:	e6ff3073 	uxth	r3, r3
   12608:	e51b2008 	ldr	r2, [fp, #-8]
   1260c:	e0823003 	add	r3, r2, r3
   12610:	e50b3008 	str	r3, [fp, #-8]
   12614:	e51b3008 	ldr	r3, [fp, #-8]
   12618:	e15b11b2 	ldrh	r1, [fp, #-18]	; 0xffffffee
   1261c:	e15b21b0 	ldrh	r2, [fp, #-16]
   12620:	e2022003 	and	r2, r2, #3
   12624:	e1a02182 	lsl	r2, r2, #3
   12628:	e1a02211 	lsl	r2, r1, r2
   1262c:	e5832000 	str	r2, [r3]
   12630:	e3a03b07 	mov	r3, #7168	; 0x1c00
   12634:	e34f38f0 	movt	r3, #63728	; 0xf8f0
   12638:	e50b3008 	str	r3, [fp, #-8]
   1263c:	e15b31b0 	ldrh	r3, [fp, #-16]
   12640:	e1a03223 	lsr	r3, r3, #4
   12644:	e6ff3073 	uxth	r3, r3
   12648:	e51b2008 	ldr	r2, [fp, #-8]
   1264c:	e0823003 	add	r3, r2, r3
   12650:	e50b3008 	str	r3, [fp, #-8]
   12654:	e15b31b4 	ldrh	r3, [fp, #-20]	; 0xffffffec
   12658:	e3530000 	cmp	r3, #0
   1265c:	0a000002 	beq	1266c <CSP_IntSrcCfg+0x100>
   12660:	e15b31b4 	ldrh	r3, [fp, #-20]	; 0xffffffec
   12664:	e3530001 	cmp	r3, #1
   12668:	1a00000c 	bne	126a0 <CSP_IntSrcCfg+0x134>
   1266c:	e51b3008 	ldr	r3, [fp, #-8]
   12670:	e51b2008 	ldr	r2, [fp, #-8]
   12674:	e5921000 	ldr	r1, [r2]
   12678:	e15b21b0 	ldrh	r2, [fp, #-16]
   1267c:	e202200f 	and	r2, r2, #15
   12680:	e1a02082 	lsl	r2, r2, #1
   12684:	e2822001 	add	r2, r2, #1
   12688:	e3a00001 	mov	r0, #1
   1268c:	e1a02210 	lsl	r2, r0, r2
   12690:	e1e02002 	mvn	r2, r2
   12694:	e0012002 	and	r2, r1, r2
   12698:	e5832000 	str	r2, [r3]
   1269c:	ea00000a 	b	126cc <CSP_IntSrcCfg+0x160>
   126a0:	e51b3008 	ldr	r3, [fp, #-8]
   126a4:	e51b2008 	ldr	r2, [fp, #-8]
   126a8:	e5921000 	ldr	r1, [r2]
   126ac:	e15b21b0 	ldrh	r2, [fp, #-16]
   126b0:	e202200f 	and	r2, r2, #15
   126b4:	e1a02082 	lsl	r2, r2, #1
   126b8:	e2822001 	add	r2, r2, #1
   126bc:	e3a00001 	mov	r0, #1
   126c0:	e1a02210 	lsl	r2, r0, r2
   126c4:	e1812002 	orr	r2, r1, r2
   126c8:	e5832000 	str	r2, [r3]
   126cc:	e3a03001 	mov	r3, #1
   126d0:	e1a00003 	mov	r0, r3
   126d4:	e28bd000 	add	sp, fp, #0
   126d8:	e8bd0800 	ldmfd	sp!, {fp}
   126dc:	e12fff1e 	bx	lr

000126e0 <CSP_IntVectReg>:
   126e0:	e92d4800 	push	{fp, lr}
   126e4:	e28db004 	add	fp, sp, #4
   126e8:	e24dd018 	sub	sp, sp, #24
   126ec:	e50b2014 	str	r2, [fp, #-20]	; 0xffffffec
   126f0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   126f4:	e14b00be 	strh	r0, [fp, #-14]
   126f8:	e14b11b0 	strh	r1, [fp, #-16]
   126fc:	e3a03000 	mov	r3, #0
   12700:	e50b3008 	str	r3, [fp, #-8]
   12704:	e15b30be 	ldrh	r3, [fp, #-14]
   12708:	e3530000 	cmp	r3, #0
   1270c:	0a000001 	beq	12718 <CSP_IntVectReg+0x38>
   12710:	e3a03000 	mov	r3, #0
   12714:	ea000013 	b	12768 <CSP_IntVectReg+0x88>
   12718:	e15b31b0 	ldrh	r3, [fp, #-16]
   1271c:	e35300ff 	cmp	r3, #255	; 0xff
   12720:	9a000001 	bls	1272c <CSP_IntVectReg+0x4c>
   12724:	e3a03000 	mov	r3, #0
   12728:	ea00000e 	b	12768 <CSP_IntVectReg+0x88>
   1272c:	e15b31b0 	ldrh	r3, [fp, #-16]
   12730:	e1a02183 	lsl	r2, r3, #3
   12734:	e3083650 	movw	r3, #34384	; 0x8650
   12738:	e3403001 	movt	r3, #1
   1273c:	e0823003 	add	r3, r2, r3
   12740:	e50b300c 	str	r3, [fp, #-12]
   12744:	eb000269 	bl	130f0 <CPU_SR_Save>
   12748:	e50b0008 	str	r0, [fp, #-8]
   1274c:	e51b000c 	ldr	r0, [fp, #-12]
   12750:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   12754:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   12758:	eb000243 	bl	1306c <CSP_IntVectSet>
   1275c:	e51b0008 	ldr	r0, [fp, #-8]
   12760:	eb000275 	bl	1313c <CPU_SR_Restore>
   12764:	e3a03001 	mov	r3, #1
   12768:	e1a00003 	mov	r0, r3
   1276c:	e24bd004 	sub	sp, fp, #4
   12770:	e8bd8800 	pop	{fp, pc}

00012774 <CSP_IntVectUnreg>:
   12774:	e92d4800 	push	{fp, lr}
   12778:	e28db004 	add	fp, sp, #4
   1277c:	e24dd010 	sub	sp, sp, #16
   12780:	e1a02000 	mov	r2, r0
   12784:	e1a03001 	mov	r3, r1
   12788:	e14b20be 	strh	r2, [fp, #-14]
   1278c:	e14b31b0 	strh	r3, [fp, #-16]
   12790:	e3a03000 	mov	r3, #0
   12794:	e50b3008 	str	r3, [fp, #-8]
   12798:	e15b30be 	ldrh	r3, [fp, #-14]
   1279c:	e3530000 	cmp	r3, #0
   127a0:	0a000001 	beq	127ac <CSP_IntVectUnreg+0x38>
   127a4:	e3a03000 	mov	r3, #0
   127a8:	ea000011 	b	127f4 <CSP_IntVectUnreg+0x80>
   127ac:	e15b31b0 	ldrh	r3, [fp, #-16]
   127b0:	e35300ff 	cmp	r3, #255	; 0xff
   127b4:	9a000001 	bls	127c0 <CSP_IntVectUnreg+0x4c>
   127b8:	e3a03000 	mov	r3, #0
   127bc:	ea00000c 	b	127f4 <CSP_IntVectUnreg+0x80>
   127c0:	e15b31b0 	ldrh	r3, [fp, #-16]
   127c4:	e1a02183 	lsl	r2, r3, #3
   127c8:	e3083650 	movw	r3, #34384	; 0x8650
   127cc:	e3403001 	movt	r3, #1
   127d0:	e0823003 	add	r3, r2, r3
   127d4:	e50b300c 	str	r3, [fp, #-12]
   127d8:	eb000244 	bl	130f0 <CPU_SR_Save>
   127dc:	e50b0008 	str	r0, [fp, #-8]
   127e0:	e51b000c 	ldr	r0, [fp, #-12]
   127e4:	eb000213 	bl	13038 <CSP_IntVectClr>
   127e8:	e51b0008 	ldr	r0, [fp, #-8]
   127ec:	eb000252 	bl	1313c <CPU_SR_Restore>
   127f0:	e3a03001 	mov	r3, #1
   127f4:	e1a00003 	mov	r0, r3
   127f8:	e24bd004 	sub	sp, fp, #4
   127fc:	e8bd8800 	pop	{fp, pc}

00012800 <CSP_IntHandlerSrc>:
   12800:	e92d4800 	push	{fp, lr}
   12804:	e28db004 	add	fp, sp, #4
   12808:	e24dd010 	sub	sp, sp, #16
   1280c:	e1a03000 	mov	r3, r0
   12810:	e14b30be 	strh	r3, [fp, #-14]
   12814:	e15b30be 	ldrh	r3, [fp, #-14]
   12818:	e35300ff 	cmp	r3, #255	; 0xff
   1281c:	8a00000e 	bhi	1285c <CSP_IntHandlerSrc+0x5c>
   12820:	e15b30be 	ldrh	r3, [fp, #-14]
   12824:	e3082650 	movw	r2, #34384	; 0x8650
   12828:	e3402001 	movt	r2, #1
   1282c:	e24bc00c 	sub	ip, fp, #12
   12830:	e1a03183 	lsl	r3, r3, #3
   12834:	e0823003 	add	r3, r2, r3
   12838:	e8930003 	ldm	r3, {r0, r1}
   1283c:	e88c0003 	stm	ip, {r0, r1}
   12840:	e24b300c 	sub	r3, fp, #12
   12844:	e1a00003 	mov	r0, r3
   12848:	eb000216 	bl	130a8 <CSP_IntVectDeref>
   1284c:	e15b30be 	ldrh	r3, [fp, #-14]
   12850:	e3a00000 	mov	r0, #0
   12854:	e1a01003 	mov	r1, r3
   12858:	ebfffed6 	bl	123b8 <CSP_IntClr>
   1285c:	e24bd004 	sub	sp, fp, #4
   12860:	e8bd8800 	pop	{fp, pc}

00012864 <Guest_OS_CSP_IntHandlerSrc>:
   12864:	e92d4800 	push	{fp, lr}
   12868:	e28db004 	add	fp, sp, #4
   1286c:	e24dd010 	sub	sp, sp, #16
   12870:	e1a03000 	mov	r3, r0
   12874:	e14b30be 	strh	r3, [fp, #-14]
   12878:	e15b30be 	ldrh	r3, [fp, #-14]
   1287c:	e35300ff 	cmp	r3, #255	; 0xff
   12880:	8a00000a 	bhi	128b0 <Guest_OS_CSP_IntHandlerSrc+0x4c>
   12884:	e15b30be 	ldrh	r3, [fp, #-14]
   12888:	e3082650 	movw	r2, #34384	; 0x8650
   1288c:	e3402001 	movt	r2, #1
   12890:	e24bc00c 	sub	ip, fp, #12
   12894:	e1a03183 	lsl	r3, r3, #3
   12898:	e0823003 	add	r3, r2, r3
   1289c:	e8930003 	ldm	r3, {r0, r1}
   128a0:	e88c0003 	stm	ip, {r0, r1}
   128a4:	e24b300c 	sub	r3, fp, #12
   128a8:	e1a00003 	mov	r0, r3
   128ac:	eb0001fd 	bl	130a8 <CSP_IntVectDeref>
   128b0:	e24bd004 	sub	sp, fp, #4
   128b4:	e8bd8800 	pop	{fp, pc}

000128b8 <CSP_IntHandler>:
   128b8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   128bc:	e28db000 	add	fp, sp, #0
   128c0:	e28bd000 	add	sp, fp, #0
   128c4:	e8bd0800 	ldmfd	sp!, {fp}
   128c8:	e12fff1e 	bx	lr

000128cc <CSP_PM_Init>:
   128cc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   128d0:	e28db000 	add	fp, sp, #0
   128d4:	e28bd000 	add	sp, fp, #0
   128d8:	e8bd0800 	ldmfd	sp!, {fp}
   128dc:	e12fff1e 	bx	lr

000128e0 <CSP_PM_CPU_ClkFreqGet>:
   128e0:	e92d4800 	push	{fp, lr}
   128e4:	e28db004 	add	fp, sp, #4
   128e8:	e24dd008 	sub	sp, sp, #8
   128ec:	e3a00000 	mov	r0, #0
   128f0:	eb000110 	bl	12d38 <CSP_PM_SysClkFreqGet>
   128f4:	e50b0008 	str	r0, [fp, #-8]
   128f8:	e51b3008 	ldr	r3, [fp, #-8]
   128fc:	e1a00003 	mov	r0, r3
   12900:	e24bd004 	sub	sp, fp, #4
   12904:	e8bd8800 	pop	{fp, pc}

00012908 <CSP_PM_PerClkCfg>:
   12908:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   1290c:	e28db000 	add	fp, sp, #0
   12910:	e24dd00c 	sub	sp, sp, #12
   12914:	e1a03000 	mov	r3, r0
   12918:	e50b100c 	str	r1, [fp, #-12]
   1291c:	e14b30b6 	strh	r3, [fp, #-6]
   12920:	e3a03001 	mov	r3, #1
   12924:	e1a00003 	mov	r0, r3
   12928:	e28bd000 	add	sp, fp, #0
   1292c:	e8bd0800 	ldmfd	sp!, {fp}
   12930:	e12fff1e 	bx	lr

00012934 <CSP_PM_PerClkEn>:
   12934:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   12938:	e28db000 	add	fp, sp, #0
   1293c:	e24dd00c 	sub	sp, sp, #12
   12940:	e1a03000 	mov	r3, r0
   12944:	e14b30b6 	strh	r3, [fp, #-6]
   12948:	e15b30b6 	ldrh	r3, [fp, #-6]
   1294c:	e3530016 	cmp	r3, #22
   12950:	8a000008 	bhi	12978 <CSP_PM_PerClkEn+0x44>
   12954:	e3043080 	movw	r3, #16512	; 0x4080
   12958:	e34f3fa0 	movt	r3, #65440	; 0xffa0
   1295c:	e3042080 	movw	r2, #16512	; 0x4080
   12960:	e34f2fa0 	movt	r2, #65440	; 0xffa0
   12964:	e5921000 	ldr	r1, [r2]
   12968:	e15b20b6 	ldrh	r2, [fp, #-6]
   1296c:	e1812002 	orr	r2, r1, r2
   12970:	e5832000 	str	r2, [r3]
   12974:	ea000000 	b	1297c <CSP_PM_PerClkEn+0x48>
   12978:	e1a00000 	nop			; (mov r0, r0)
   1297c:	e28bd000 	add	sp, fp, #0
   12980:	e8bd0800 	ldmfd	sp!, {fp}
   12984:	e12fff1e 	bx	lr

00012988 <CSP_PM_PerClkDis>:
   12988:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   1298c:	e28db000 	add	fp, sp, #0
   12990:	e24dd00c 	sub	sp, sp, #12
   12994:	e1a03000 	mov	r3, r0
   12998:	e14b30b6 	strh	r3, [fp, #-6]
   1299c:	e15b30b6 	ldrh	r3, [fp, #-6]
   129a0:	e3530016 	cmp	r3, #22
   129a4:	8a000009 	bhi	129d0 <CSP_PM_PerClkDis+0x48>
   129a8:	e3043080 	movw	r3, #16512	; 0x4080
   129ac:	e34f3fa0 	movt	r3, #65440	; 0xffa0
   129b0:	e3042080 	movw	r2, #16512	; 0x4080
   129b4:	e34f2fa0 	movt	r2, #65440	; 0xffa0
   129b8:	e5921000 	ldr	r1, [r2]
   129bc:	e15b20b6 	ldrh	r2, [fp, #-6]
   129c0:	e1e02002 	mvn	r2, r2
   129c4:	e0012002 	and	r2, r1, r2
   129c8:	e5832000 	str	r2, [r3]
   129cc:	ea000000 	b	129d4 <CSP_PM_PerClkDis+0x4c>
   129d0:	e1a00000 	nop			; (mov r0, r0)
   129d4:	e28bd000 	add	sp, fp, #0
   129d8:	e8bd0800 	ldmfd	sp!, {fp}
   129dc:	e12fff1e 	bx	lr

000129e0 <CSP_PM_PerClkFreqGet>:
   129e0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   129e4:	e28db000 	add	fp, sp, #0
   129e8:	e24dd014 	sub	sp, sp, #20
   129ec:	e1a03000 	mov	r3, r0
   129f0:	e14b30be 	strh	r3, [fp, #-14]
   129f4:	e15b30be 	ldrh	r3, [fp, #-14]
   129f8:	e3530015 	cmp	r3, #21
   129fc:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
   12a00:	ea00006d 	b	12bbc <CSP_PM_PerClkFreqGet+0x1dc>
   12a04:	00012a5c 	andeq	r2, r1, ip, asr sl
   12a08:	00012a6c 	andeq	r2, r1, ip, ror #20
   12a0c:	00012a7c 	andeq	r2, r1, ip, ror sl
   12a10:	00012a8c 	andeq	r2, r1, ip, lsl #21
   12a14:	00012a9c 	muleq	r1, ip, sl
   12a18:	00012aac 	andeq	r2, r1, ip, lsr #21
   12a1c:	00012abc 			; <UNDEFINED> instruction: 0x00012abc
   12a20:	00012acc 	andeq	r2, r1, ip, asr #21
   12a24:	00012adc 	ldrdeq	r2, [r1], -ip
   12a28:	00012aec 	andeq	r2, r1, ip, ror #21
   12a2c:	00012afc 	strdeq	r2, [r1], -ip
   12a30:	00012b0c 	andeq	r2, r1, ip, lsl #22
   12a34:	00012b1c 	andeq	r2, r1, ip, lsl fp
   12a38:	00012b2c 	andeq	r2, r1, ip, lsr #22
   12a3c:	00012b3c 	andeq	r2, r1, ip, lsr fp
   12a40:	00012b4c 	andeq	r2, r1, ip, asr #22
   12a44:	00012b5c 	andeq	r2, r1, ip, asr fp
   12a48:	00012b6c 	andeq	r2, r1, ip, ror #22
   12a4c:	00012b7c 	andeq	r2, r1, ip, ror fp
   12a50:	00012b8c 	andeq	r2, r1, ip, lsl #23
   12a54:	00012b9c 	muleq	r1, ip, fp
   12a58:	00012bac 	andeq	r2, r1, ip, lsr #23
   12a5c:	e3093cc0 	movw	r3, #40128	; 0x9cc0
   12a60:	e34237c1 	movt	r3, #10177	; 0x27c1
   12a64:	e50b3008 	str	r3, [fp, #-8]
   12a68:	ea000055 	b	12bc4 <CSP_PM_PerClkFreqGet+0x1e4>
   12a6c:	e3003541 	movw	r3, #1345	; 0x541
   12a70:	e3413fca 	movt	r3, #8138	; 0x1fca
   12a74:	e50b3008 	str	r3, [fp, #-8]
   12a78:	ea000051 	b	12bc4 <CSP_PM_PerClkFreqGet+0x1e4>
   12a7c:	e3a03fe6 	mov	r3, #920	; 0x398
   12a80:	e340309b 	movt	r3, #155	; 0x9b
   12a84:	e50b3008 	str	r3, [fp, #-8]
   12a88:	ea00004d 	b	12bc4 <CSP_PM_PerClkFreqGet+0x1e4>
   12a8c:	e3a03cc2 	mov	r3, #49664	; 0xc200
   12a90:	e3403beb 	movt	r3, #3051	; 0xbeb
   12a94:	e50b3008 	str	r3, [fp, #-8]
   12a98:	ea000049 	b	12bc4 <CSP_PM_PerClkFreqGet+0x1e4>
   12a9c:	e3a03ce1 	mov	r3, #57600	; 0xe100
   12aa0:	e34035f5 	movt	r3, #1525	; 0x5f5
   12aa4:	e50b3008 	str	r3, [fp, #-8]
   12aa8:	ea000045 	b	12bc4 <CSP_PM_PerClkFreqGet+0x1e4>
   12aac:	e3073840 	movw	r3, #30784	; 0x7840
   12ab0:	e340317d 	movt	r3, #381	; 0x17d
   12ab4:	e50b3008 	str	r3, [fp, #-8]
   12ab8:	ea000041 	b	12bc4 <CSP_PM_PerClkFreqGet+0x1e4>
   12abc:	e3053940 	movw	r3, #22848	; 0x5940
   12ac0:	e3403773 	movt	r3, #1907	; 0x773
   12ac4:	e50b3008 	str	r3, [fp, #-8]
   12ac8:	ea00003d 	b	12bc4 <CSP_PM_PerClkFreqGet+0x1e4>
   12acc:	e3a03c87 	mov	r3, #34560	; 0x8700
   12ad0:	e3403393 	movt	r3, #915	; 0x393
   12ad4:	e50b3008 	str	r3, [fp, #-8]
   12ad8:	ea000039 	b	12bc4 <CSP_PM_PerClkFreqGet+0x1e4>
   12adc:	e3a03c87 	mov	r3, #34560	; 0x8700
   12ae0:	e3403393 	movt	r3, #915	; 0x393
   12ae4:	e50b3008 	str	r3, [fp, #-8]
   12ae8:	ea000035 	b	12bc4 <CSP_PM_PerClkFreqGet+0x1e4>
   12aec:	e30f3080 	movw	r3, #61568	; 0xf080
   12af0:	e34032fa 	movt	r3, #762	; 0x2fa
   12af4:	e50b3008 	str	r3, [fp, #-8]
   12af8:	ea000031 	b	12bc4 <CSP_PM_PerClkFreqGet+0x1e4>
   12afc:	e30f3080 	movw	r3, #61568	; 0xf080
   12b00:	e34032fa 	movt	r3, #762	; 0x2fa
   12b04:	e50b3008 	str	r3, [fp, #-8]
   12b08:	ea00002d 	b	12bc4 <CSP_PM_PerClkFreqGet+0x1e4>
   12b0c:	e3a03cc2 	mov	r3, #49664	; 0xc200
   12b10:	e3403beb 	movt	r3, #3051	; 0xbeb
   12b14:	e50b3008 	str	r3, [fp, #-8]
   12b18:	ea000029 	b	12bc4 <CSP_PM_PerClkFreqGet+0x1e4>
   12b1c:	e3063bcb 	movw	r3, #27595	; 0x6bcb
   12b20:	e340369f 	movt	r3, #1695	; 0x69f
   12b24:	e50b3008 	str	r3, [fp, #-8]
   12b28:	ea000025 	b	12bc4 <CSP_PM_PerClkFreqGet+0x1e4>
   12b2c:	e3073840 	movw	r3, #30784	; 0x7840
   12b30:	e340317d 	movt	r3, #381	; 0x17d
   12b34:	e50b3008 	str	r3, [fp, #-8]
   12b38:	ea000021 	b	12bc4 <CSP_PM_PerClkFreqGet+0x1e4>
   12b3c:	e30f3080 	movw	r3, #61568	; 0xf080
   12b40:	e34032fa 	movt	r3, #762	; 0x2fa
   12b44:	e50b3008 	str	r3, [fp, #-8]
   12b48:	ea00001d 	b	12bc4 <CSP_PM_PerClkFreqGet+0x1e4>
   12b4c:	e3043ddc 	movw	r3, #19932	; 0x4ddc
   12b50:	e340316b 	movt	r3, #363	; 0x16b
   12b54:	e50b3008 	str	r3, [fp, #-8]
   12b58:	ea000019 	b	12bc4 <CSP_PM_PerClkFreqGet+0x1e4>
   12b5c:	e3a03cc2 	mov	r3, #49664	; 0xc200
   12b60:	e3403beb 	movt	r3, #3051	; 0xbeb
   12b64:	e50b3008 	str	r3, [fp, #-8]
   12b68:	ea000015 	b	12bc4 <CSP_PM_PerClkFreqGet+0x1e4>
   12b6c:	e3a03cc2 	mov	r3, #49664	; 0xc200
   12b70:	e3403beb 	movt	r3, #3051	; 0xbeb
   12b74:	e50b3008 	str	r3, [fp, #-8]
   12b78:	ea000011 	b	12bc4 <CSP_PM_PerClkFreqGet+0x1e4>
   12b7c:	e30f3080 	movw	r3, #61568	; 0xf080
   12b80:	e34032fa 	movt	r3, #762	; 0x2fa
   12b84:	e50b3008 	str	r3, [fp, #-8]
   12b88:	ea00000d 	b	12bc4 <CSP_PM_PerClkFreqGet+0x1e4>
   12b8c:	e30f3080 	movw	r3, #61568	; 0xf080
   12b90:	e34032fa 	movt	r3, #762	; 0x2fa
   12b94:	e50b3008 	str	r3, [fp, #-8]
   12b98:	ea000009 	b	12bc4 <CSP_PM_PerClkFreqGet+0x1e4>
   12b9c:	e30f3080 	movw	r3, #61568	; 0xf080
   12ba0:	e34032fa 	movt	r3, #762	; 0x2fa
   12ba4:	e50b3008 	str	r3, [fp, #-8]
   12ba8:	ea000005 	b	12bc4 <CSP_PM_PerClkFreqGet+0x1e4>
   12bac:	e30f3080 	movw	r3, #61568	; 0xf080
   12bb0:	e34032fa 	movt	r3, #762	; 0x2fa
   12bb4:	e50b3008 	str	r3, [fp, #-8]
   12bb8:	ea000001 	b	12bc4 <CSP_PM_PerClkFreqGet+0x1e4>
   12bbc:	e3a03000 	mov	r3, #0
   12bc0:	ea000000 	b	12bc8 <CSP_PM_PerClkFreqGet+0x1e8>
   12bc4:	e51b3008 	ldr	r3, [fp, #-8]
   12bc8:	e1a00003 	mov	r0, r3
   12bcc:	e28bd000 	add	sp, fp, #0
   12bd0:	e8bd0800 	ldmfd	sp!, {fp}
   12bd4:	e12fff1e 	bx	lr

00012bd8 <CSP_PM_SysClkEn>:
   12bd8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   12bdc:	e28db000 	add	fp, sp, #0
   12be0:	e24dd00c 	sub	sp, sp, #12
   12be4:	e1a03000 	mov	r3, r0
   12be8:	e14b30b6 	strh	r3, [fp, #-6]
   12bec:	e15b30b6 	ldrh	r3, [fp, #-6]
   12bf0:	e3530003 	cmp	r3, #3
   12bf4:	8a00001f 	bhi	12c78 <CSP_PM_SysClkEn+0xa0>
   12bf8:	e15b30b6 	ldrh	r3, [fp, #-6]
   12bfc:	e3530001 	cmp	r3, #1
   12c00:	0a00000b 	beq	12c34 <CSP_PM_SysClkEn+0x5c>
   12c04:	e3530002 	cmp	r3, #2
   12c08:	0a000011 	beq	12c54 <CSP_PM_SysClkEn+0x7c>
   12c0c:	e3530000 	cmp	r3, #0
   12c10:	1a000019 	bne	12c7c <CSP_PM_SysClkEn+0xa4>
   12c14:	e3043020 	movw	r3, #16416	; 0x4020
   12c18:	e34f3fa0 	movt	r3, #65440	; 0xffa0
   12c1c:	e3042020 	movw	r2, #16416	; 0x4020
   12c20:	e34f2fa0 	movt	r2, #65440	; 0xffa0
   12c24:	e5922000 	ldr	r2, [r2]
   12c28:	e3822001 	orr	r2, r2, #1
   12c2c:	e5832000 	str	r2, [r3]
   12c30:	ea000011 	b	12c7c <CSP_PM_SysClkEn+0xa4>
   12c34:	e30430a0 	movw	r3, #16544	; 0x40a0
   12c38:	e34f3fa0 	movt	r3, #65440	; 0xffa0
   12c3c:	e30420a0 	movw	r2, #16544	; 0x40a0
   12c40:	e34f2fa0 	movt	r2, #65440	; 0xffa0
   12c44:	e5922000 	ldr	r2, [r2]
   12c48:	e3822001 	orr	r2, r2, #1
   12c4c:	e5832000 	str	r2, [r3]
   12c50:	ea000009 	b	12c7c <CSP_PM_SysClkEn+0xa4>
   12c54:	e3043060 	movw	r3, #16480	; 0x4060
   12c58:	e34f3fa0 	movt	r3, #65440	; 0xffa0
   12c5c:	e3042060 	movw	r2, #16480	; 0x4060
   12c60:	e34f2fa0 	movt	r2, #65440	; 0xffa0
   12c64:	e5922000 	ldr	r2, [r2]
   12c68:	e3822001 	orr	r2, r2, #1
   12c6c:	e5832000 	str	r2, [r3]
   12c70:	e1a00000 	nop			; (mov r0, r0)
   12c74:	ea000000 	b	12c7c <CSP_PM_SysClkEn+0xa4>
   12c78:	e1a00000 	nop			; (mov r0, r0)
   12c7c:	e28bd000 	add	sp, fp, #0
   12c80:	e8bd0800 	ldmfd	sp!, {fp}
   12c84:	e12fff1e 	bx	lr

00012c88 <CSP_PM_SysClkDis>:
   12c88:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   12c8c:	e28db000 	add	fp, sp, #0
   12c90:	e24dd00c 	sub	sp, sp, #12
   12c94:	e1a03000 	mov	r3, r0
   12c98:	e14b30b6 	strh	r3, [fp, #-6]
   12c9c:	e15b30b6 	ldrh	r3, [fp, #-6]
   12ca0:	e3530003 	cmp	r3, #3
   12ca4:	8a00001f 	bhi	12d28 <CSP_PM_SysClkDis+0xa0>
   12ca8:	e15b30b6 	ldrh	r3, [fp, #-6]
   12cac:	e3530001 	cmp	r3, #1
   12cb0:	0a00000b 	beq	12ce4 <CSP_PM_SysClkDis+0x5c>
   12cb4:	e3530002 	cmp	r3, #2
   12cb8:	0a000011 	beq	12d04 <CSP_PM_SysClkDis+0x7c>
   12cbc:	e3530000 	cmp	r3, #0
   12cc0:	1a000019 	bne	12d2c <CSP_PM_SysClkDis+0xa4>
   12cc4:	e3043020 	movw	r3, #16416	; 0x4020
   12cc8:	e34f3fa0 	movt	r3, #65440	; 0xffa0
   12ccc:	e3042020 	movw	r2, #16416	; 0x4020
   12cd0:	e34f2fa0 	movt	r2, #65440	; 0xffa0
   12cd4:	e5922000 	ldr	r2, [r2]
   12cd8:	e3c22001 	bic	r2, r2, #1
   12cdc:	e5832000 	str	r2, [r3]
   12ce0:	ea000011 	b	12d2c <CSP_PM_SysClkDis+0xa4>
   12ce4:	e30430a0 	movw	r3, #16544	; 0x40a0
   12ce8:	e34f3fa0 	movt	r3, #65440	; 0xffa0
   12cec:	e30420a0 	movw	r2, #16544	; 0x40a0
   12cf0:	e34f2fa0 	movt	r2, #65440	; 0xffa0
   12cf4:	e5922000 	ldr	r2, [r2]
   12cf8:	e3c22001 	bic	r2, r2, #1
   12cfc:	e5832000 	str	r2, [r3]
   12d00:	ea000009 	b	12d2c <CSP_PM_SysClkDis+0xa4>
   12d04:	e3043060 	movw	r3, #16480	; 0x4060
   12d08:	e34f3fa0 	movt	r3, #65440	; 0xffa0
   12d0c:	e3042060 	movw	r2, #16480	; 0x4060
   12d10:	e34f2fa0 	movt	r2, #65440	; 0xffa0
   12d14:	e5922000 	ldr	r2, [r2]
   12d18:	e3c22001 	bic	r2, r2, #1
   12d1c:	e5832000 	str	r2, [r3]
   12d20:	e1a00000 	nop			; (mov r0, r0)
   12d24:	ea000000 	b	12d2c <CSP_PM_SysClkDis+0xa4>
   12d28:	e1a00000 	nop			; (mov r0, r0)
   12d2c:	e28bd000 	add	sp, fp, #0
   12d30:	e8bd0800 	ldmfd	sp!, {fp}
   12d34:	e12fff1e 	bx	lr

00012d38 <CSP_PM_SysClkFreqGet>:
   12d38:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   12d3c:	e28db000 	add	fp, sp, #0
   12d40:	e24dd014 	sub	sp, sp, #20
   12d44:	e1a03000 	mov	r3, r0
   12d48:	e14b30be 	strh	r3, [fp, #-14]
   12d4c:	e3043355 	movw	r3, #17237	; 0x4355
   12d50:	e34133de 	movt	r3, #5086	; 0x13de
   12d54:	e50b3008 	str	r3, [fp, #-8]
   12d58:	e51b3008 	ldr	r3, [fp, #-8]
   12d5c:	e1a00003 	mov	r0, r3
   12d60:	e28bd000 	add	sp, fp, #0
   12d64:	e8bd0800 	ldmfd	sp!, {fp}
   12d68:	e12fff1e 	bx	lr

00012d6c <CSP_PM_SysClkDivCfg>:
   12d6c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   12d70:	e28db000 	add	fp, sp, #0
   12d74:	e24dd00c 	sub	sp, sp, #12
   12d78:	e1a03000 	mov	r3, r0
   12d7c:	e50b100c 	str	r1, [fp, #-12]
   12d80:	e14b30b6 	strh	r3, [fp, #-6]
   12d84:	e3a03001 	mov	r3, #1
   12d88:	e1a00003 	mov	r0, r3
   12d8c:	e28bd000 	add	sp, fp, #0
   12d90:	e8bd0800 	ldmfd	sp!, {fp}
   12d94:	e12fff1e 	bx	lr

00012d98 <CSP_TmrCfg>:
   12d98:	e92d4800 	push	{fp, lr}
   12d9c:	e28db004 	add	fp, sp, #4
   12da0:	e24dd018 	sub	sp, sp, #24
   12da4:	e1a03000 	mov	r3, r0
   12da8:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
   12dac:	e14b31b6 	strh	r3, [fp, #-22]	; 0xffffffea
   12db0:	e3a03000 	mov	r3, #0
   12db4:	e50b3008 	str	r3, [fp, #-8]
   12db8:	e15b31b6 	ldrh	r3, [fp, #-22]	; 0xffffffea
   12dbc:	e3530001 	cmp	r3, #1
   12dc0:	9a000001 	bls	12dcc <CSP_TmrCfg+0x34>
   12dc4:	e3a03000 	mov	r3, #0
   12dc8:	ea00002b 	b	12e7c <CSP_TmrCfg+0xe4>
   12dcc:	e15b31b6 	ldrh	r3, [fp, #-22]	; 0xffffffea
   12dd0:	e3530000 	cmp	r3, #0
   12dd4:	1a000004 	bne	12dec <CSP_TmrCfg+0x54>
   12dd8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   12ddc:	e3530000 	cmp	r3, #0
   12de0:	1a000001 	bne	12dec <CSP_TmrCfg+0x54>
   12de4:	e3a03000 	mov	r3, #0
   12de8:	ea000023 	b	12e7c <CSP_TmrCfg+0xe4>
   12dec:	e3a00002 	mov	r0, #2
   12df0:	ebffffd0 	bl	12d38 <CSP_PM_SysClkFreqGet>
   12df4:	e50b000c 	str	r0, [fp, #-12]
   12df8:	e51b000c 	ldr	r0, [fp, #-12]
   12dfc:	e51b101c 	ldr	r1, [fp, #-28]	; 0xffffffe4
   12e00:	eb000d55 	bl	1635c <__aeabi_uidiv>
   12e04:	e1a03000 	mov	r3, r0
   12e08:	e2433001 	sub	r3, r3, #1
   12e0c:	e50b3010 	str	r3, [fp, #-16]
   12e10:	e15b31b6 	ldrh	r3, [fp, #-22]	; 0xffffffea
   12e14:	e3530000 	cmp	r3, #0
   12e18:	1a000016 	bne	12e78 <CSP_TmrCfg+0xe0>
   12e1c:	eb0000b3 	bl	130f0 <CPU_SR_Save>
   12e20:	e50b0008 	str	r0, [fp, #-8]
   12e24:	e3a03c06 	mov	r3, #1536	; 0x600
   12e28:	e34f38f0 	movt	r3, #63728	; 0xf8f0
   12e2c:	e3a02000 	mov	r2, #0
   12e30:	e5832000 	str	r2, [r3]
   12e34:	e300360c 	movw	r3, #1548	; 0x60c
   12e38:	e34f38f0 	movt	r3, #63728	; 0xf8f0
   12e3c:	e3a02001 	mov	r2, #1
   12e40:	e5832000 	str	r2, [r3]
   12e44:	e3a03c06 	mov	r3, #1536	; 0x600
   12e48:	e34f38f0 	movt	r3, #63728	; 0xf8f0
   12e4c:	e51b2010 	ldr	r2, [fp, #-16]
   12e50:	e5832000 	str	r2, [r3]
   12e54:	e3003608 	movw	r3, #1544	; 0x608
   12e58:	e34f38f0 	movt	r3, #63728	; 0xf8f0
   12e5c:	e3a02006 	mov	r2, #6
   12e60:	e5832000 	str	r2, [r3]
   12e64:	e51b0008 	ldr	r0, [fp, #-8]
   12e68:	eb0000b3 	bl	1313c <CPU_SR_Restore>
   12e6c:	e1a00000 	nop			; (mov r0, r0)
   12e70:	e3a03001 	mov	r3, #1
   12e74:	ea000000 	b	12e7c <CSP_TmrCfg+0xe4>
   12e78:	e3a03000 	mov	r3, #0
   12e7c:	e1a00003 	mov	r0, r3
   12e80:	e24bd004 	sub	sp, fp, #4
   12e84:	e8bd8800 	pop	{fp, pc}

00012e88 <CSP_TmrOutCmpCfg>:
   12e88:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   12e8c:	e28db000 	add	fp, sp, #0
   12e90:	e24dd014 	sub	sp, sp, #20
   12e94:	e50b3010 	str	r3, [fp, #-16]
   12e98:	e14b00b6 	strh	r0, [fp, #-6]
   12e9c:	e14b10b8 	strh	r1, [fp, #-8]
   12ea0:	e14b20ba 	strh	r2, [fp, #-10]
   12ea4:	e3a03001 	mov	r3, #1
   12ea8:	e1a00003 	mov	r0, r3
   12eac:	e28bd000 	add	sp, fp, #0
   12eb0:	e8bd0800 	ldmfd	sp!, {fp}
   12eb4:	e12fff1e 	bx	lr

00012eb8 <CSP_TmrIntClr>:
   12eb8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   12ebc:	e28db000 	add	fp, sp, #0
   12ec0:	e24dd00c 	sub	sp, sp, #12
   12ec4:	e1a03000 	mov	r3, r0
   12ec8:	e14b30b6 	strh	r3, [fp, #-6]
   12ecc:	e15b30b6 	ldrh	r3, [fp, #-6]
   12ed0:	e3530001 	cmp	r3, #1
   12ed4:	8a000009 	bhi	12f00 <CSP_TmrIntClr+0x48>
   12ed8:	e15b30b6 	ldrh	r3, [fp, #-6]
   12edc:	e3530000 	cmp	r3, #0
   12ee0:	1a000004 	bne	12ef8 <CSP_TmrIntClr+0x40>
   12ee4:	e300360c 	movw	r3, #1548	; 0x60c
   12ee8:	e34f38f0 	movt	r3, #63728	; 0xf8f0
   12eec:	e3a02001 	mov	r2, #1
   12ef0:	e5832000 	str	r2, [r3]
   12ef4:	ea000002 	b	12f04 <CSP_TmrIntClr+0x4c>
   12ef8:	e1a00000 	nop			; (mov r0, r0)
   12efc:	ea000000 	b	12f04 <CSP_TmrIntClr+0x4c>
   12f00:	e1a00000 	nop			; (mov r0, r0)
   12f04:	e28bd000 	add	sp, fp, #0
   12f08:	e8bd0800 	ldmfd	sp!, {fp}
   12f0c:	e12fff1e 	bx	lr

00012f10 <CSP_TmrRst>:
   12f10:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   12f14:	e28db000 	add	fp, sp, #0
   12f18:	e24dd00c 	sub	sp, sp, #12
   12f1c:	e1a03000 	mov	r3, r0
   12f20:	e14b30b6 	strh	r3, [fp, #-6]
   12f24:	e15b30b6 	ldrh	r3, [fp, #-6]
   12f28:	e3530000 	cmp	r3, #0
   12f2c:	e1a00000 	nop			; (mov r0, r0)
   12f30:	e28bd000 	add	sp, fp, #0
   12f34:	e8bd0800 	ldmfd	sp!, {fp}
   12f38:	e12fff1e 	bx	lr

00012f3c <CSP_TmrRd>:
   12f3c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   12f40:	e28db000 	add	fp, sp, #0
   12f44:	e24dd00c 	sub	sp, sp, #12
   12f48:	e1a03000 	mov	r3, r0
   12f4c:	e14b30b6 	strh	r3, [fp, #-6]
   12f50:	e15b30b6 	ldrh	r3, [fp, #-6]
   12f54:	e3530000 	cmp	r3, #0
   12f58:	1a000001 	bne	12f64 <CSP_TmrRd+0x28>
   12f5c:	e3a03000 	mov	r3, #0
   12f60:	ea000000 	b	12f68 <CSP_TmrRd+0x2c>
   12f64:	e3a03000 	mov	r3, #0
   12f68:	e1a00003 	mov	r0, r3
   12f6c:	e28bd000 	add	sp, fp, #0
   12f70:	e8bd0800 	ldmfd	sp!, {fp}
   12f74:	e12fff1e 	bx	lr

00012f78 <CSP_TmrStart>:
   12f78:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   12f7c:	e28db000 	add	fp, sp, #0
   12f80:	e24dd00c 	sub	sp, sp, #12
   12f84:	e1a03000 	mov	r3, r0
   12f88:	e14b30b6 	strh	r3, [fp, #-6]
   12f8c:	e15b30b6 	ldrh	r3, [fp, #-6]
   12f90:	e3530001 	cmp	r3, #1
   12f94:	8a00000c 	bhi	12fcc <CSP_TmrStart+0x54>
   12f98:	e15b30b6 	ldrh	r3, [fp, #-6]
   12f9c:	e3530000 	cmp	r3, #0
   12fa0:	1a000007 	bne	12fc4 <CSP_TmrStart+0x4c>
   12fa4:	e3003608 	movw	r3, #1544	; 0x608
   12fa8:	e34f38f0 	movt	r3, #63728	; 0xf8f0
   12fac:	e3002608 	movw	r2, #1544	; 0x608
   12fb0:	e34f28f0 	movt	r2, #63728	; 0xf8f0
   12fb4:	e5922000 	ldr	r2, [r2]
   12fb8:	e3822001 	orr	r2, r2, #1
   12fbc:	e5832000 	str	r2, [r3]
   12fc0:	ea000002 	b	12fd0 <CSP_TmrStart+0x58>
   12fc4:	e1a00000 	nop			; (mov r0, r0)
   12fc8:	ea000000 	b	12fd0 <CSP_TmrStart+0x58>
   12fcc:	e1a00000 	nop			; (mov r0, r0)
   12fd0:	e28bd000 	add	sp, fp, #0
   12fd4:	e8bd0800 	ldmfd	sp!, {fp}
   12fd8:	e12fff1e 	bx	lr

00012fdc <CSP_TmrStop>:
   12fdc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   12fe0:	e28db000 	add	fp, sp, #0
   12fe4:	e24dd00c 	sub	sp, sp, #12
   12fe8:	e1a03000 	mov	r3, r0
   12fec:	e14b30b6 	strh	r3, [fp, #-6]
   12ff0:	e15b30b6 	ldrh	r3, [fp, #-6]
   12ff4:	e3530000 	cmp	r3, #0
   12ff8:	e1a00000 	nop			; (mov r0, r0)
   12ffc:	e28bd000 	add	sp, fp, #0
   13000:	e8bd0800 	ldmfd	sp!, {fp}
   13004:	e12fff1e 	bx	lr

00013008 <CSP_TmrWr>:
   13008:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   1300c:	e28db000 	add	fp, sp, #0
   13010:	e24dd00c 	sub	sp, sp, #12
   13014:	e1a03000 	mov	r3, r0
   13018:	e50b100c 	str	r1, [fp, #-12]
   1301c:	e14b30b6 	strh	r3, [fp, #-6]
   13020:	e15b30b6 	ldrh	r3, [fp, #-6]
   13024:	e3530000 	cmp	r3, #0
   13028:	e1a00000 	nop			; (mov r0, r0)
   1302c:	e28bd000 	add	sp, fp, #0
   13030:	e8bd0800 	ldmfd	sp!, {fp}
   13034:	e12fff1e 	bx	lr

00013038 <CSP_IntVectClr>:
   13038:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   1303c:	e28db000 	add	fp, sp, #0
   13040:	e24dd00c 	sub	sp, sp, #12
   13044:	e50b0008 	str	r0, [fp, #-8]
   13048:	e51b3008 	ldr	r3, [fp, #-8]
   1304c:	e3a02000 	mov	r2, #0
   13050:	e5832000 	str	r2, [r3]
   13054:	e51b3008 	ldr	r3, [fp, #-8]
   13058:	e3a02000 	mov	r2, #0
   1305c:	e5832004 	str	r2, [r3, #4]
   13060:	e28bd000 	add	sp, fp, #0
   13064:	e8bd0800 	ldmfd	sp!, {fp}
   13068:	e12fff1e 	bx	lr

0001306c <CSP_IntVectSet>:
   1306c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   13070:	e28db000 	add	fp, sp, #0
   13074:	e24dd014 	sub	sp, sp, #20
   13078:	e50b0008 	str	r0, [fp, #-8]
   1307c:	e50b100c 	str	r1, [fp, #-12]
   13080:	e50b2010 	str	r2, [fp, #-16]
   13084:	e51b3008 	ldr	r3, [fp, #-8]
   13088:	e51b200c 	ldr	r2, [fp, #-12]
   1308c:	e5832000 	str	r2, [r3]
   13090:	e51b3008 	ldr	r3, [fp, #-8]
   13094:	e51b2010 	ldr	r2, [fp, #-16]
   13098:	e5832004 	str	r2, [r3, #4]
   1309c:	e28bd000 	add	sp, fp, #0
   130a0:	e8bd0800 	ldmfd	sp!, {fp}
   130a4:	e12fff1e 	bx	lr

000130a8 <CSP_IntVectDeref>:
   130a8:	e92d4800 	push	{fp, lr}
   130ac:	e28db004 	add	fp, sp, #4
   130b0:	e24dd010 	sub	sp, sp, #16
   130b4:	e50b0010 	str	r0, [fp, #-16]
   130b8:	e51b3010 	ldr	r3, [fp, #-16]
   130bc:	e5933000 	ldr	r3, [r3]
   130c0:	e50b3008 	str	r3, [fp, #-8]
   130c4:	e51b3010 	ldr	r3, [fp, #-16]
   130c8:	e5933004 	ldr	r3, [r3, #4]
   130cc:	e50b300c 	str	r3, [fp, #-12]
   130d0:	e51b3008 	ldr	r3, [fp, #-8]
   130d4:	e3530000 	cmp	r3, #0
   130d8:	0a000002 	beq	130e8 <CSP_IntVectDeref+0x40>
   130dc:	e51b3008 	ldr	r3, [fp, #-8]
   130e0:	e51b000c 	ldr	r0, [fp, #-12]
   130e4:	e12fff33 	blx	r3
   130e8:	e24bd004 	sub	sp, fp, #4
   130ec:	e8bd8800 	pop	{fp, pc}

000130f0 <CPU_SR_Save>:
   130f0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
   130f4:	e59f1374 	ldr	r1, [pc, #884]	; 13470 <CPU_CtxID_Get+0x8>
   130f8:	e5910000 	ldr	r0, [r1]
   130fc:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   13100:	e10f0000 	mrs	r0, CPSR
   13104:	e59f1368 	ldr	r1, [pc, #872]	; 13474 <CPU_CtxID_Get+0xc>
   13108:	e0001001 	and	r1, r0, r1
   1310c:	e49d0004 	pop	{r0}		; (ldr r0, [sp], #4)
   13110:	e1800001 	orr	r0, r0, r1
   13114:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   13118:	e38000c0 	orr	r0, r0, #192	; 0xc0
   1311c:	e12cf000 	msr	CPSR_fs, r0
   13120:	e59f1350 	ldr	r1, [pc, #848]	; 13478 <CPU_CtxID_Get+0x10>
   13124:	e0000001 	and	r0, r0, r1
   13128:	e59f1340 	ldr	r1, [pc, #832]	; 13470 <CPU_CtxID_Get+0x8>
   1312c:	e5810000 	str	r0, [r1]
   13130:	e49d0004 	pop	{r0}		; (ldr r0, [sp], #4)
   13134:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   13138:	e12fff1e 	bx	lr

0001313c <CPU_SR_Restore>:
   1313c:	e92d0003 	push	{r0, r1}
   13140:	e12cf000 	msr	CPSR_fs, r0
   13144:	e59f132c 	ldr	r1, [pc, #812]	; 13478 <CPU_CtxID_Get+0x10>
   13148:	e0000001 	and	r0, r0, r1
   1314c:	e59f131c 	ldr	r1, [pc, #796]	; 13470 <CPU_CtxID_Get+0x8>
   13150:	e5810000 	str	r0, [r1]
   13154:	e2000080 	and	r0, r0, #128	; 0x80
   13158:	e3500000 	cmp	r0, #0
   1315c:	1a000003 	bne	13170 <CPU_SR_Restore_Exit>
   13160:	e59f0314 	ldr	r0, [pc, #788]	; 1347c <CPU_CtxID_Get+0x14>
   13164:	e5900000 	ldr	r0, [r0]
   13168:	e3500000 	cmp	r0, #0
   1316c:	1f00001f 	svcne	0x0000001f

00013170 <CPU_SR_Restore_Exit>:
   13170:	e8bd0003 	pop	{r0, r1}
   13174:	e12fff1e 	bx	lr

00013178 <CPU_IntDis>:
   13178:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
   1317c:	e59f12ec 	ldr	r1, [pc, #748]	; 13470 <CPU_CtxID_Get+0x8>
   13180:	e5910000 	ldr	r0, [r1]
   13184:	e38000c0 	orr	r0, r0, #192	; 0xc0
   13188:	e59f12e8 	ldr	r1, [pc, #744]	; 13478 <CPU_CtxID_Get+0x10>
   1318c:	e0000001 	and	r0, r0, r1
   13190:	e59f12d8 	ldr	r1, [pc, #728]	; 13470 <CPU_CtxID_Get+0x8>
   13194:	e5810000 	str	r0, [r1]
   13198:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   1319c:	e12fff1e 	bx	lr

000131a0 <CPU_IntEn>:
   131a0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
   131a4:	e59f12c4 	ldr	r1, [pc, #708]	; 13470 <CPU_CtxID_Get+0x8>
   131a8:	e5910000 	ldr	r0, [r1]
   131ac:	e3c000c0 	bic	r0, r0, #192	; 0xc0
   131b0:	e59f12c0 	ldr	r1, [pc, #704]	; 13478 <CPU_CtxID_Get+0x10>
   131b4:	e0000001 	and	r0, r0, r1
   131b8:	e59f12b0 	ldr	r1, [pc, #688]	; 13470 <CPU_CtxID_Get+0x8>
   131bc:	e5810000 	str	r0, [r1]
   131c0:	e59f02b4 	ldr	r0, [pc, #692]	; 1347c <CPU_CtxID_Get+0x14>
   131c4:	e5900000 	ldr	r0, [r0]
   131c8:	e3500000 	cmp	r0, #0
   131cc:	1f00001f 	svcne	0x0000001f
   131d0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   131d4:	e12fff1e 	bx	lr

000131d8 <CPU_IRQ_Dis>:
   131d8:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
   131dc:	e59f128c 	ldr	r1, [pc, #652]	; 13470 <CPU_CtxID_Get+0x8>
   131e0:	e5910000 	ldr	r0, [r1]
   131e4:	e3800080 	orr	r0, r0, #128	; 0x80
   131e8:	e59f1288 	ldr	r1, [pc, #648]	; 13478 <CPU_CtxID_Get+0x10>
   131ec:	e0000001 	and	r0, r0, r1
   131f0:	e59f1278 	ldr	r1, [pc, #632]	; 13470 <CPU_CtxID_Get+0x8>
   131f4:	e5810000 	str	r0, [r1]
   131f8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   131fc:	e12fff1e 	bx	lr

00013200 <CPU_IRQ_En>:
   13200:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
   13204:	e59f1264 	ldr	r1, [pc, #612]	; 13470 <CPU_CtxID_Get+0x8>
   13208:	e5910000 	ldr	r0, [r1]
   1320c:	e3c00080 	bic	r0, r0, #128	; 0x80
   13210:	e59f1260 	ldr	r1, [pc, #608]	; 13478 <CPU_CtxID_Get+0x10>
   13214:	e0000001 	and	r0, r0, r1
   13218:	e59f1250 	ldr	r1, [pc, #592]	; 13470 <CPU_CtxID_Get+0x8>
   1321c:	e5810000 	str	r0, [r1]
   13220:	e59f0254 	ldr	r0, [pc, #596]	; 1347c <CPU_CtxID_Get+0x14>
   13224:	e5900000 	ldr	r0, [r0]
   13228:	e3500000 	cmp	r0, #0
   1322c:	1f00001f 	svcne	0x0000001f
   13230:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   13234:	e12fff1e 	bx	lr

00013238 <CPU_FIQ_Dis>:
   13238:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
   1323c:	e59f122c 	ldr	r1, [pc, #556]	; 13470 <CPU_CtxID_Get+0x8>
   13240:	e5910000 	ldr	r0, [r1]
   13244:	e3800040 	orr	r0, r0, #64	; 0x40
   13248:	e59f1228 	ldr	r1, [pc, #552]	; 13478 <CPU_CtxID_Get+0x10>
   1324c:	e0000001 	and	r0, r0, r1
   13250:	e59f1218 	ldr	r1, [pc, #536]	; 13470 <CPU_CtxID_Get+0x8>
   13254:	e5810000 	str	r0, [r1]
   13258:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   1325c:	e12fff1e 	bx	lr

00013260 <CPU_FIQ_En>:
   13260:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
   13264:	e59f1204 	ldr	r1, [pc, #516]	; 13470 <CPU_CtxID_Get+0x8>
   13268:	e5910000 	ldr	r0, [r1]
   1326c:	e3c00040 	bic	r0, r0, #64	; 0x40
   13270:	e59f1200 	ldr	r1, [pc, #512]	; 13478 <CPU_CtxID_Get+0x10>
   13274:	e0000001 	and	r0, r0, r1
   13278:	e59f11f0 	ldr	r1, [pc, #496]	; 13470 <CPU_CtxID_Get+0x8>
   1327c:	e5810000 	str	r0, [r1]
   13280:	e59f01f4 	ldr	r0, [pc, #500]	; 1347c <CPU_CtxID_Get+0x14>
   13284:	e5900000 	ldr	r0, [r0]
   13288:	e3500000 	cmp	r0, #0
   1328c:	1f00001f 	svcne	0x0000001f
   13290:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   13294:	e12fff1e 	bx	lr

00013298 <CPU_CntLeadZeros>:
   13298:	e16f0f10 	clz	r0, r0
   1329c:	e12fff1e 	bx	lr

000132a0 <CPU_PMU_Dis>:
   132a0:	ee190f1c 	mrc	15, 0, r0, cr9, cr12, {0}
   132a4:	e3c00004 	bic	r0, r0, #4
   132a8:	ee090f1c 	mcr	15, 0, r0, cr9, cr12, {0}
   132ac:	e12fff1e 	bx	lr

000132b0 <CPU_PMU_En>:
   132b0:	ee190f1c 	mrc	15, 0, r0, cr9, cr12, {0}
   132b4:	e3800001 	orr	r0, r0, #1
   132b8:	ee090f1c 	mcr	15, 0, r0, cr9, cr12, {0}
   132bc:	e12fff1e 	bx	lr

000132c0 <CPU_PMU_Rst>:
   132c0:	ee190f1c 	mrc	15, 0, r0, cr9, cr12, {0}
   132c4:	e3800006 	orr	r0, r0, #6
   132c8:	ee090f1c 	mcr	15, 0, r0, cr9, cr12, {0}
   132cc:	e12fff1e 	bx	lr

000132d0 <CPU_PMU_CtrDis>:
   132d0:	e3500002 	cmp	r0, #2
   132d4:	812fff1e 	bxhi	lr
   132d8:	e3a01001 	mov	r1, #1
   132dc:	e1a00011 	lsl	r0, r1, r0
   132e0:	ee090f5c 	mcr	15, 0, r0, cr9, cr12, {2}
   132e4:	e12fff1e 	bx	lr

000132e8 <CPU_PMU_CtrEn>:
   132e8:	e3500002 	cmp	r0, #2
   132ec:	812fff1e 	bxhi	lr
   132f0:	e3a01001 	mov	r1, #1
   132f4:	e1a00011 	lsl	r0, r1, r0
   132f8:	ee090f3c 	mcr	15, 0, r0, cr9, cr12, {1}
   132fc:	e12fff1e 	bx	lr

00013300 <CPU_PMU_CtrEventSet>:
   13300:	e3500002 	cmp	r0, #2
   13304:	812fff1e 	bxhi	lr
   13308:	ee192fbc 	mrc	15, 0, r2, cr9, cr12, {5}
   1330c:	e3c2201f 	bic	r2, r2, #31
   13310:	e1822000 	orr	r2, r2, r0
   13314:	ee092fbc 	mcr	15, 0, r2, cr9, cr12, {5}
   13318:	ee192f3d 	mrc	15, 0, r2, cr9, cr13, {1}
   1331c:	e3c220ff 	bic	r2, r2, #255	; 0xff
   13320:	e1822001 	orr	r2, r2, r1
   13324:	ee092f3d 	mcr	15, 0, r2, cr9, cr13, {1}
   13328:	e12fff1e 	bx	lr

0001332c <CPU_PMU_CtrGet>:
   1332c:	e3500002 	cmp	r0, #2
   13330:	812fff1e 	bxhi	lr
   13334:	ee191fbc 	mrc	15, 0, r1, cr9, cr12, {5}
   13338:	e3c1101f 	bic	r1, r1, #31
   1333c:	e1811000 	orr	r1, r1, r0
   13340:	ee091fbc 	mcr	15, 0, r1, cr9, cr12, {5}
   13344:	ee190f5d 	mrc	15, 0, r0, cr9, cr13, {2}
   13348:	e12fff1e 	bx	lr

0001334c <CPU_PMU_CtrRst>:
   1334c:	e3500002 	cmp	r0, #2
   13350:	812fff1e 	bxhi	lr
   13354:	ee191fbc 	mrc	15, 0, r1, cr9, cr12, {5}
   13358:	e3c1101f 	bic	r1, r1, #31
   1335c:	e1811000 	orr	r1, r1, r0
   13360:	ee091fbc 	mcr	15, 0, r1, cr9, cr12, {5}
   13364:	e3a00000 	mov	r0, #0
   13368:	ee090f5d 	mcr	15, 0, r0, cr9, cr13, {2}
   1336c:	e12fff1e 	bx	lr

00013370 <CPU_PMU_CtrCycleDis>:
   13370:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
   13374:	ee090f5c 	mcr	15, 0, r0, cr9, cr12, {2}
   13378:	e12fff1e 	bx	lr

0001337c <CPU_PMU_CtrCycleEn>:
   1337c:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
   13380:	ee090f3c 	mcr	15, 0, r0, cr9, cr12, {1}
   13384:	e12fff1e 	bx	lr

00013388 <CPU_PMU_CtrCycleGet>:
   13388:	ee190f1d 	mrc	15, 0, r0, cr9, cr13, {0}
   1338c:	e12fff1e 	bx	lr

00013390 <CPU_PMU_CtrCycleRst>:
   13390:	ee190f1c 	mrc	15, 0, r0, cr9, cr12, {0}
   13394:	e3800004 	orr	r0, r0, #4
   13398:	ee090f1c 	mcr	15, 0, r0, cr9, cr12, {0}
   1339c:	e12fff1e 	bx	lr

000133a0 <CPU_MMU_En>:
   133a0:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
   133a4:	e3800001 	orr	r0, r0, #1
   133a8:	f57ff04f 	dsb	sy
   133ac:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
   133b0:	f57ff06f 	isb	sy
   133b4:	e12fff1e 	bx	lr

000133b8 <CPU_MMU_Dis>:
   133b8:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
   133bc:	e3c00001 	bic	r0, r0, #1
   133c0:	f57ff04f 	dsb	sy
   133c4:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
   133c8:	e12fff1e 	bx	lr

000133cc <CPU_MMU_RegionEn>:
   133cc:	e92d0030 	push	{r4, r5}
   133d0:	ee104f90 	mrc	15, 0, r4, cr0, cr0, {4}
   133d4:	e1a04424 	lsr	r4, r4, #8
   133d8:	e204400f 	and	r4, r4, #15
   133dc:	e1500004 	cmp	r0, r4
   133e0:	5a000013 	bpl	13434 <CPU_MMU_RegionEnExitFail>
   133e4:	e353001f 	cmp	r3, #31
   133e8:	ba000011 	blt	13434 <CPU_MMU_RegionEnExitFail>
   133ec:	ee060f12 	mcr	15, 0, r0, cr6, cr2, {0}
   133f0:	ee164f51 	mrc	15, 0, r4, cr6, cr1, {2}
   133f4:	e2044001 	and	r4, r4, #1
   133f8:	e3540000 	cmp	r4, #0
   133fc:	1a00000c 	bne	13434 <CPU_MMU_RegionEnExitFail>
   13400:	ee061f11 	mcr	15, 0, r1, cr6, cr1, {0}
   13404:	e59d4008 	ldr	r4, [sp, #8]
   13408:	ee064f91 	mcr	15, 0, r4, cr6, cr1, {4}
   1340c:	e1a04402 	lsl	r4, r2, #8
   13410:	e16f5f13 	clz	r5, r3
   13414:	e265501f 	rsb	r5, r5, #31
   13418:	e1a05085 	lsl	r5, r5, #1
   1341c:	e1844005 	orr	r4, r4, r5
   13420:	e3844001 	orr	r4, r4, #1
   13424:	ee064f51 	mcr	15, 0, r4, cr6, cr1, {2}
   13428:	e3a00001 	mov	r0, #1
   1342c:	e8bd0030 	pop	{r4, r5}
   13430:	e12fff1e 	bx	lr

00013434 <CPU_MMU_RegionEnExitFail>:
   13434:	e3a00000 	mov	r0, #0
   13438:	e8bd0030 	pop	{r4, r5}
   1343c:	e12fff1e 	bx	lr

00013440 <CPU_MMU_RegionDis>:
   13440:	ee101f90 	mrc	15, 0, r1, cr0, cr0, {4}
   13444:	e1a01421 	lsr	r1, r1, #8
   13448:	e201100f 	and	r1, r1, #15
   1344c:	e1500001 	cmp	r0, r1
   13450:	5a000001 	bpl	1345c <CPU_MMU_RegionDisExit>
   13454:	e3a01000 	mov	r1, #0
   13458:	ee061f51 	mcr	15, 0, r1, cr6, cr1, {2}

0001345c <CPU_MMU_RegionDisExit>:
   1345c:	e12fff1e 	bx	lr

00013460 <CPU_CtxID_Set>:
   13460:	ee0d0f30 	mcr	15, 0, r0, cr13, cr0, {1}
   13464:	e12fff1e 	bx	lr

00013468 <CPU_CtxID_Get>:
   13468:	ee1d0f30 	mrc	15, 0, r0, cr13, cr0, {1}
   1346c:	e12fff1e 	bx	lr
   13470:	0019bed4 			; <UNDEFINED> instruction: 0x0019bed4
   13474:	f80f0000 			; <UNDEFINED> instruction: 0xf80f0000
   13478:	0000ffff 	strdeq	pc, [r0], -pc	; <UNPREDICTABLE>
   1347c:	0019bedc 			; <UNDEFINED> instruction: 0x0019bedc

00013480 <CPU_Init>:
   13480:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   13484:	e28db000 	add	fp, sp, #0
   13488:	e28bd000 	add	sp, fp, #0
   1348c:	e8bd0800 	ldmfd	sp!, {fp}
   13490:	e12fff1e 	bx	lr

00013494 <CPU_SW_Exception>:
   13494:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   13498:	e28db000 	add	fp, sp, #0
   1349c:	eafffffe 	b	1349c <CPU_SW_Exception+0x8>

000134a0 <CPU_CntLeadZeros08>:
   134a0:	e92d4800 	push	{fp, lr}
   134a4:	e28db004 	add	fp, sp, #4
   134a8:	e24dd010 	sub	sp, sp, #16
   134ac:	e1a03000 	mov	r3, r0
   134b0:	e54b300d 	strb	r3, [fp, #-13]
   134b4:	e55b300d 	ldrb	r3, [fp, #-13]
   134b8:	e1a00003 	mov	r0, r3
   134bc:	ebffff75 	bl	13298 <CPU_CntLeadZeros>
   134c0:	e50b0008 	str	r0, [fp, #-8]
   134c4:	e51b3008 	ldr	r3, [fp, #-8]
   134c8:	e2433018 	sub	r3, r3, #24
   134cc:	e50b3008 	str	r3, [fp, #-8]
   134d0:	e51b3008 	ldr	r3, [fp, #-8]
   134d4:	e1a00003 	mov	r0, r3
   134d8:	e24bd004 	sub	sp, fp, #4
   134dc:	e8bd8800 	pop	{fp, pc}

000134e0 <CPU_CntLeadZeros16>:
   134e0:	e92d4800 	push	{fp, lr}
   134e4:	e28db004 	add	fp, sp, #4
   134e8:	e24dd010 	sub	sp, sp, #16
   134ec:	e1a03000 	mov	r3, r0
   134f0:	e14b30be 	strh	r3, [fp, #-14]
   134f4:	e15b30be 	ldrh	r3, [fp, #-14]
   134f8:	e1a00003 	mov	r0, r3
   134fc:	ebffff65 	bl	13298 <CPU_CntLeadZeros>
   13500:	e50b0008 	str	r0, [fp, #-8]
   13504:	e51b3008 	ldr	r3, [fp, #-8]
   13508:	e2433010 	sub	r3, r3, #16
   1350c:	e50b3008 	str	r3, [fp, #-8]
   13510:	e51b3008 	ldr	r3, [fp, #-8]
   13514:	e1a00003 	mov	r0, r3
   13518:	e24bd004 	sub	sp, fp, #4
   1351c:	e8bd8800 	pop	{fp, pc}

00013520 <CPU_CntLeadZeros32>:
   13520:	e92d4800 	push	{fp, lr}
   13524:	e28db004 	add	fp, sp, #4
   13528:	e24dd010 	sub	sp, sp, #16
   1352c:	e50b0010 	str	r0, [fp, #-16]
   13530:	e51b0010 	ldr	r0, [fp, #-16]
   13534:	ebffff57 	bl	13298 <CPU_CntLeadZeros>
   13538:	e50b0008 	str	r0, [fp, #-8]
   1353c:	e51b3008 	ldr	r3, [fp, #-8]
   13540:	e1a00003 	mov	r0, r3
   13544:	e24bd004 	sub	sp, fp, #4
   13548:	e8bd8800 	pop	{fp, pc}

0001354c <CPU_CntLeadZeros64>:
   1354c:	e92d0bf0 	push	{r4, r5, r6, r7, r8, r9, fp}
   13550:	e28db018 	add	fp, sp, #24
   13554:	e24dd034 	sub	sp, sp, #52	; 0x34
   13558:	e14b02fc 	strd	r0, [fp, #-44]	; 0xffffffd4
   1355c:	e14b22dc 	ldrd	r2, [fp, #-44]	; 0xffffffd4
   13560:	e3e00000 	mvn	r0, #0
   13564:	e3a01000 	mov	r1, #0
   13568:	e1510003 	cmp	r1, r3
   1356c:	01500002 	cmpeq	r0, r2
   13570:	2a00004c 	bcs	136a8 <CPU_CntLeadZeros64+0x15c>
   13574:	e14b22dc 	ldrd	r2, [fp, #-44]	; 0xffffffd4
   13578:	e3e00000 	mvn	r0, #0
   1357c:	e30f1fff 	movw	r1, #65535	; 0xffff
   13580:	e1510003 	cmp	r1, r3
   13584:	01500002 	cmpeq	r0, r2
   13588:	2a000022 	bcs	13618 <CPU_CntLeadZeros64+0xcc>
   1358c:	e14b22dc 	ldrd	r2, [fp, #-44]	; 0xffffffd4
   13590:	e3e00000 	mvn	r0, #0
   13594:	e3e014ff 	mvn	r1, #-16777216	; 0xff000000
   13598:	e1510003 	cmp	r1, r3
   1359c:	01500002 	cmpeq	r0, r2
   135a0:	2a00000d 	bcs	135dc <CPU_CntLeadZeros64+0x90>
   135a4:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
   135a8:	e1a03c23 	lsr	r3, r3, #24
   135ac:	e50b3034 	str	r3, [fp, #-52]	; 0xffffffcc
   135b0:	e3a03000 	mov	r3, #0
   135b4:	e50b3030 	str	r3, [fp, #-48]	; 0xffffffd0
   135b8:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
   135bc:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
   135c0:	e30737ec 	movw	r3, #30700	; 0x77ec
   135c4:	e3403001 	movt	r3, #1
   135c8:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
   135cc:	e0833002 	add	r3, r3, r2
   135d0:	e5d33000 	ldrb	r3, [r3]
   135d4:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
   135d8:	ea000080 	b	137e0 <CPU_CntLeadZeros64+0x294>
   135dc:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
   135e0:	e1a03823 	lsr	r3, r3, #16
   135e4:	e50b303c 	str	r3, [fp, #-60]	; 0xffffffc4
   135e8:	e3a03000 	mov	r3, #0
   135ec:	e50b3038 	str	r3, [fp, #-56]	; 0xffffffc8
   135f0:	e51b303c 	ldr	r3, [fp, #-60]	; 0xffffffc4
   135f4:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
   135f8:	e30737ec 	movw	r3, #30700	; 0x77ec
   135fc:	e3403001 	movt	r3, #1
   13600:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
   13604:	e0833002 	add	r3, r3, r2
   13608:	e5d33000 	ldrb	r3, [r3]
   1360c:	e2833008 	add	r3, r3, #8
   13610:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
   13614:	ea000071 	b	137e0 <CPU_CntLeadZeros64+0x294>
   13618:	e14b22dc 	ldrd	r2, [fp, #-44]	; 0xffffffd4
   1361c:	e3e00000 	mvn	r0, #0
   13620:	e3a010ff 	mov	r1, #255	; 0xff
   13624:	e1510003 	cmp	r1, r3
   13628:	01500002 	cmpeq	r0, r2
   1362c:	2a00000e 	bcs	1366c <CPU_CntLeadZeros64+0x120>
   13630:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
   13634:	e1a03423 	lsr	r3, r3, #8
   13638:	e50b3044 	str	r3, [fp, #-68]	; 0xffffffbc
   1363c:	e3a03000 	mov	r3, #0
   13640:	e50b3040 	str	r3, [fp, #-64]	; 0xffffffc0
   13644:	e51b3044 	ldr	r3, [fp, #-68]	; 0xffffffbc
   13648:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
   1364c:	e30737ec 	movw	r3, #30700	; 0x77ec
   13650:	e3403001 	movt	r3, #1
   13654:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
   13658:	e0833002 	add	r3, r3, r2
   1365c:	e5d33000 	ldrb	r3, [r3]
   13660:	e2833010 	add	r3, r3, #16
   13664:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
   13668:	ea00005c 	b	137e0 <CPU_CntLeadZeros64+0x294>
   1366c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
   13670:	e1a03003 	mov	r3, r3
   13674:	e50b304c 	str	r3, [fp, #-76]	; 0xffffffb4
   13678:	e3a03000 	mov	r3, #0
   1367c:	e50b3048 	str	r3, [fp, #-72]	; 0xffffffb8
   13680:	e51b304c 	ldr	r3, [fp, #-76]	; 0xffffffb4
   13684:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
   13688:	e30737ec 	movw	r3, #30700	; 0x77ec
   1368c:	e3403001 	movt	r3, #1
   13690:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
   13694:	e0833002 	add	r3, r3, r2
   13698:	e5d33000 	ldrb	r3, [r3]
   1369c:	e2833018 	add	r3, r3, #24
   136a0:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
   136a4:	ea00004d 	b	137e0 <CPU_CntLeadZeros64+0x294>
   136a8:	e14b22dc 	ldrd	r2, [fp, #-44]	; 0xffffffd4
   136ac:	e30f0fff 	movw	r0, #65535	; 0xffff
   136b0:	e3a01000 	mov	r1, #0
   136b4:	e1510003 	cmp	r1, r3
   136b8:	01500002 	cmpeq	r0, r2
   136bc:	2a000027 	bcs	13760 <CPU_CntLeadZeros64+0x214>
   136c0:	e14b22dc 	ldrd	r2, [fp, #-44]	; 0xffffffd4
   136c4:	e3e004ff 	mvn	r0, #-16777216	; 0xff000000
   136c8:	e3a01000 	mov	r1, #0
   136cc:	e1510003 	cmp	r1, r3
   136d0:	01500002 	cmpeq	r0, r2
   136d4:	2a000010 	bcs	1371c <CPU_CntLeadZeros64+0x1d0>
   136d8:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
   136dc:	e1a03403 	lsl	r3, r3, #8
   136e0:	e51b202c 	ldr	r2, [fp, #-44]	; 0xffffffd4
   136e4:	e1a08c22 	lsr	r8, r2, #24
   136e8:	e1838008 	orr	r8, r3, r8
   136ec:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
   136f0:	e1a09c23 	lsr	r9, r3, #24
   136f4:	e1a03008 	mov	r3, r8
   136f8:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
   136fc:	e30737ec 	movw	r3, #30700	; 0x77ec
   13700:	e3403001 	movt	r3, #1
   13704:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
   13708:	e0833002 	add	r3, r3, r2
   1370c:	e5d33000 	ldrb	r3, [r3]
   13710:	e2833020 	add	r3, r3, #32
   13714:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
   13718:	ea000030 	b	137e0 <CPU_CntLeadZeros64+0x294>
   1371c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
   13720:	e1a03803 	lsl	r3, r3, #16
   13724:	e51b202c 	ldr	r2, [fp, #-44]	; 0xffffffd4
   13728:	e1a06822 	lsr	r6, r2, #16
   1372c:	e1836006 	orr	r6, r3, r6
   13730:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
   13734:	e1a07823 	lsr	r7, r3, #16
   13738:	e1a03006 	mov	r3, r6
   1373c:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
   13740:	e30737ec 	movw	r3, #30700	; 0x77ec
   13744:	e3403001 	movt	r3, #1
   13748:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
   1374c:	e0833002 	add	r3, r3, r2
   13750:	e5d33000 	ldrb	r3, [r3]
   13754:	e2833028 	add	r3, r3, #40	; 0x28
   13758:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
   1375c:	ea00001f 	b	137e0 <CPU_CntLeadZeros64+0x294>
   13760:	e14b22dc 	ldrd	r2, [fp, #-44]	; 0xffffffd4
   13764:	e3a000ff 	mov	r0, #255	; 0xff
   13768:	e3a01000 	mov	r1, #0
   1376c:	e1510003 	cmp	r1, r3
   13770:	01500002 	cmpeq	r0, r2
   13774:	2a000010 	bcs	137bc <CPU_CntLeadZeros64+0x270>
   13778:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
   1377c:	e1a03c03 	lsl	r3, r3, #24
   13780:	e51b202c 	ldr	r2, [fp, #-44]	; 0xffffffd4
   13784:	e1a04422 	lsr	r4, r2, #8
   13788:	e1834004 	orr	r4, r3, r4
   1378c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
   13790:	e1a05423 	lsr	r5, r3, #8
   13794:	e1a03004 	mov	r3, r4
   13798:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
   1379c:	e30737ec 	movw	r3, #30700	; 0x77ec
   137a0:	e3403001 	movt	r3, #1
   137a4:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
   137a8:	e0833002 	add	r3, r3, r2
   137ac:	e5d33000 	ldrb	r3, [r3]
   137b0:	e2833030 	add	r3, r3, #48	; 0x30
   137b4:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
   137b8:	ea000008 	b	137e0 <CPU_CntLeadZeros64+0x294>
   137bc:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
   137c0:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
   137c4:	e30737ec 	movw	r3, #30700	; 0x77ec
   137c8:	e3403001 	movt	r3, #1
   137cc:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
   137d0:	e0833002 	add	r3, r3, r2
   137d4:	e5d33000 	ldrb	r3, [r3]
   137d8:	e2833038 	add	r3, r3, #56	; 0x38
   137dc:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
   137e0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
   137e4:	e1a00003 	mov	r0, r3
   137e8:	e24bd018 	sub	sp, fp, #24
   137ec:	e8bd0bf0 	pop	{r4, r5, r6, r7, r8, r9, fp}
   137f0:	e12fff1e 	bx	lr

000137f4 <CPU_CntTrailZeros>:
   137f4:	e92d4800 	push	{fp, lr}
   137f8:	e28db004 	add	fp, sp, #4
   137fc:	e24dd018 	sub	sp, sp, #24
   13800:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
   13804:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   13808:	e3530000 	cmp	r3, #0
   1380c:	1a000001 	bne	13818 <CPU_CntTrailZeros+0x24>
   13810:	e3a03020 	mov	r3, #32
   13814:	ea00000b 	b	13848 <CPU_CntTrailZeros+0x54>
   13818:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   1381c:	e2632000 	rsb	r2, r3, #0
   13820:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   13824:	e0023003 	and	r3, r2, r3
   13828:	e50b3008 	str	r3, [fp, #-8]
   1382c:	e51b0008 	ldr	r0, [fp, #-8]
   13830:	ebfffe98 	bl	13298 <CPU_CntLeadZeros>
   13834:	e50b000c 	str	r0, [fp, #-12]
   13838:	e51b300c 	ldr	r3, [fp, #-12]
   1383c:	e263301f 	rsb	r3, r3, #31
   13840:	e50b3010 	str	r3, [fp, #-16]
   13844:	e51b3010 	ldr	r3, [fp, #-16]
   13848:	e1a00003 	mov	r0, r3
   1384c:	e24bd004 	sub	sp, fp, #4
   13850:	e8bd8800 	pop	{fp, pc}

00013854 <CPU_CntTrailZeros08>:
   13854:	e92d4800 	push	{fp, lr}
   13858:	e28db004 	add	fp, sp, #4
   1385c:	e24dd018 	sub	sp, sp, #24
   13860:	e1a03000 	mov	r3, r0
   13864:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
   13868:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
   1386c:	e3530000 	cmp	r3, #0
   13870:	1a000001 	bne	1387c <CPU_CntTrailZeros08+0x28>
   13874:	e3a03008 	mov	r3, #8
   13878:	ea00000d 	b	138b4 <CPU_CntTrailZeros08+0x60>
   1387c:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
   13880:	e2633000 	rsb	r3, r3, #0
   13884:	e6ef2073 	uxtb	r2, r3
   13888:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
   1388c:	e0023003 	and	r3, r2, r3
   13890:	e54b3005 	strb	r3, [fp, #-5]
   13894:	e55b3005 	ldrb	r3, [fp, #-5]
   13898:	e1a00003 	mov	r0, r3
   1389c:	ebfffeff 	bl	134a0 <CPU_CntLeadZeros08>
   138a0:	e50b000c 	str	r0, [fp, #-12]
   138a4:	e51b300c 	ldr	r3, [fp, #-12]
   138a8:	e2633007 	rsb	r3, r3, #7
   138ac:	e50b3010 	str	r3, [fp, #-16]
   138b0:	e51b3010 	ldr	r3, [fp, #-16]
   138b4:	e1a00003 	mov	r0, r3
   138b8:	e24bd004 	sub	sp, fp, #4
   138bc:	e8bd8800 	pop	{fp, pc}

000138c0 <CPU_CntTrailZeros16>:
   138c0:	e92d4800 	push	{fp, lr}
   138c4:	e28db004 	add	fp, sp, #4
   138c8:	e24dd018 	sub	sp, sp, #24
   138cc:	e1a03000 	mov	r3, r0
   138d0:	e14b31b6 	strh	r3, [fp, #-22]	; 0xffffffea
   138d4:	e15b31b6 	ldrh	r3, [fp, #-22]	; 0xffffffea
   138d8:	e3530000 	cmp	r3, #0
   138dc:	1a000001 	bne	138e8 <CPU_CntTrailZeros16+0x28>
   138e0:	e3a03010 	mov	r3, #16
   138e4:	ea00000d 	b	13920 <CPU_CntTrailZeros16+0x60>
   138e8:	e15b31b6 	ldrh	r3, [fp, #-22]	; 0xffffffea
   138ec:	e2633000 	rsb	r3, r3, #0
   138f0:	e6ff2073 	uxth	r2, r3
   138f4:	e15b31b6 	ldrh	r3, [fp, #-22]	; 0xffffffea
   138f8:	e0023003 	and	r3, r2, r3
   138fc:	e14b30b6 	strh	r3, [fp, #-6]
   13900:	e15b30b6 	ldrh	r3, [fp, #-6]
   13904:	e1a00003 	mov	r0, r3
   13908:	ebfffef4 	bl	134e0 <CPU_CntLeadZeros16>
   1390c:	e50b000c 	str	r0, [fp, #-12]
   13910:	e51b300c 	ldr	r3, [fp, #-12]
   13914:	e263300f 	rsb	r3, r3, #15
   13918:	e50b3010 	str	r3, [fp, #-16]
   1391c:	e51b3010 	ldr	r3, [fp, #-16]
   13920:	e1a00003 	mov	r0, r3
   13924:	e24bd004 	sub	sp, fp, #4
   13928:	e8bd8800 	pop	{fp, pc}

0001392c <CPU_CntTrailZeros32>:
   1392c:	e92d4800 	push	{fp, lr}
   13930:	e28db004 	add	fp, sp, #4
   13934:	e24dd018 	sub	sp, sp, #24
   13938:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
   1393c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   13940:	e3530000 	cmp	r3, #0
   13944:	1a000001 	bne	13950 <CPU_CntTrailZeros32+0x24>
   13948:	e3a03020 	mov	r3, #32
   1394c:	ea00000b 	b	13980 <CPU_CntTrailZeros32+0x54>
   13950:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   13954:	e2632000 	rsb	r2, r3, #0
   13958:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   1395c:	e0023003 	and	r3, r2, r3
   13960:	e50b3008 	str	r3, [fp, #-8]
   13964:	e51b0008 	ldr	r0, [fp, #-8]
   13968:	ebfffeec 	bl	13520 <CPU_CntLeadZeros32>
   1396c:	e50b000c 	str	r0, [fp, #-12]
   13970:	e51b300c 	ldr	r3, [fp, #-12]
   13974:	e263301f 	rsb	r3, r3, #31
   13978:	e50b3010 	str	r3, [fp, #-16]
   1397c:	e51b3010 	ldr	r3, [fp, #-16]
   13980:	e1a00003 	mov	r0, r3
   13984:	e24bd004 	sub	sp, fp, #4
   13988:	e8bd8800 	pop	{fp, pc}

0001398c <CPU_CntTrailZeros64>:
   1398c:	e92d4800 	push	{fp, lr}
   13990:	e28db004 	add	fp, sp, #4
   13994:	e24dd018 	sub	sp, sp, #24
   13998:	e14b01fc 	strd	r0, [fp, #-28]	; 0xffffffe4
   1399c:	e14b21dc 	ldrd	r2, [fp, #-28]	; 0xffffffe4
   139a0:	e1921003 	orrs	r1, r2, r3
   139a4:	1a000001 	bne	139b0 <CPU_CntTrailZeros64+0x24>
   139a8:	e3a03040 	mov	r3, #64	; 0x40
   139ac:	ea00000d 	b	139e8 <CPU_CntTrailZeros64+0x5c>
   139b0:	e14b21dc 	ldrd	r2, [fp, #-28]	; 0xffffffe4
   139b4:	e2720000 	rsbs	r0, r2, #0
   139b8:	e2e31000 	rsc	r1, r3, #0
   139bc:	e14b21dc 	ldrd	r2, [fp, #-28]	; 0xffffffe4
   139c0:	e0022000 	and	r2, r2, r0
   139c4:	e0033001 	and	r3, r3, r1
   139c8:	e14b20fc 	strd	r2, [fp, #-12]
   139cc:	e14b00dc 	ldrd	r0, [fp, #-12]
   139d0:	ebfffedd 	bl	1354c <CPU_CntLeadZeros64>
   139d4:	e50b0010 	str	r0, [fp, #-16]
   139d8:	e51b3010 	ldr	r3, [fp, #-16]
   139dc:	e263303f 	rsb	r3, r3, #63	; 0x3f
   139e0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   139e4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   139e8:	e1a00003 	mov	r0, r3
   139ec:	e24bd004 	sub	sp, fp, #4
   139f0:	e8bd8800 	pop	{fp, pc}

000139f4 <enable_caches>:
   139f4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   139f8:	e28db000 	add	fp, sp, #0
   139fc:	e28bd000 	add	sp, fp, #0
   13a00:	e8bd0800 	ldmfd	sp!, {fp}
   13a04:	e12fff1e 	bx	lr

00013a08 <disable_caches>:
   13a08:	e92d4800 	push	{fp, lr}
   13a0c:	e28db004 	add	fp, sp, #4
   13a10:	eb000663 	bl	153a4 <Xil_DCacheDisable>
   13a14:	eb000659 	bl	15380 <Xil_ICacheDisable>
   13a18:	e8bd8800 	pop	{fp, pc}

00013a1c <init_uart>:
   13a1c:	e92d4800 	push	{fp, lr}
   13a20:	e28db004 	add	fp, sp, #4
   13a24:	e24dd040 	sub	sp, sp, #64	; 0x40
   13a28:	e3a00000 	mov	r0, #0
   13a2c:	eb000a17 	bl	16290 <XUartPs_LookupConfig>
   13a30:	e50b0008 	str	r0, [fp, #-8]
   13a34:	e51b3008 	ldr	r3, [fp, #-8]
   13a38:	e5933004 	ldr	r3, [r3, #4]
   13a3c:	e24b2044 	sub	r2, fp, #68	; 0x44
   13a40:	e1a00002 	mov	r0, r2
   13a44:	e51b1008 	ldr	r1, [fp, #-8]
   13a48:	e1a02003 	mov	r2, r3
   13a4c:	eb0009c6 	bl	1616c <XUartPs_CfgInitialize>
   13a50:	e24b3044 	sub	r3, fp, #68	; 0x44
   13a54:	e1a00003 	mov	r0, r3
   13a58:	e3a01cc2 	mov	r1, #49664	; 0xc200
   13a5c:	e3401001 	movt	r1, #1
   13a60:	eb000951 	bl	15fac <XUartPs_SetBaudRate>
   13a64:	e24bd004 	sub	sp, fp, #4
   13a68:	e8bd8800 	pop	{fp, pc}

00013a6c <init_platform>:
   13a6c:	e92d4800 	push	{fp, lr}
   13a70:	e28db004 	add	fp, sp, #4
   13a74:	ebffffde 	bl	139f4 <enable_caches>
   13a78:	ebffffe7 	bl	13a1c <init_uart>
   13a7c:	e8bd8800 	pop	{fp, pc}

00013a80 <cleanup_platform>:
   13a80:	e92d4800 	push	{fp, lr}
   13a84:	e28db004 	add	fp, sp, #4
   13a88:	ebffffde 	bl	13a08 <disable_caches>
   13a8c:	e8bd8800 	pop	{fp, pc}

00013a90 <BSP_Init>:
   13a90:	e92d4800 	push	{fp, lr}
   13a94:	e28db004 	add	fp, sp, #4
   13a98:	eb0002c5 	bl	145b4 <guest_CPU_IntDis>
   13a9c:	eb0002cc 	bl	145d4 <guest_ICacheEnable>
   13aa0:	eb0002cf 	bl	145e4 <guest_DCacheEnable>
   13aa4:	ebfffa94 	bl	124fc <CSP_IntInit>
   13aa8:	e8bd8800 	pop	{fp, pc}

00013aac <BSP_CPU_ClkFreq>:
   13aac:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   13ab0:	e28db000 	add	fp, sp, #0
   13ab4:	e3043b40 	movw	r3, #19264	; 0x4b40
   13ab8:	e340304c 	movt	r3, #76	; 0x4c
   13abc:	e1a00003 	mov	r0, r3
   13ac0:	e28bd000 	add	sp, fp, #0
   13ac4:	e8bd0800 	ldmfd	sp!, {fp}
   13ac8:	e12fff1e 	bx	lr

00013acc <OS_CSP_BSP_ExceptHandler>:
   13acc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   13ad0:	e28db000 	add	fp, sp, #0
   13ad4:	e24dd00c 	sub	sp, sp, #12
   13ad8:	e1a03000 	mov	r3, r0
   13adc:	e54b3005 	strb	r3, [fp, #-5]
   13ae0:	e55b3005 	ldrb	r3, [fp, #-5]
   13ae4:	e2833000 	add	r3, r3, #0
   13ae8:	e3530004 	cmp	r3, #4
   13aec:	8a000000 	bhi	13af4 <OS_CSP_BSP_ExceptHandler+0x28>
   13af0:	eafffffe 	b	13af0 <OS_CSP_BSP_ExceptHandler+0x24>
   13af4:	e28bd000 	add	sp, fp, #0
   13af8:	e8bd0800 	ldmfd	sp!, {fp}
   13afc:	e12fff1e 	bx	lr

00013b00 <BSP_OS_SemCreate>:
   13b00:	e92d4800 	push	{fp, lr}
   13b04:	e28db004 	add	fp, sp, #4
   13b08:	e24dd018 	sub	sp, sp, #24
   13b0c:	e50b0010 	str	r0, [fp, #-16]
   13b10:	e1a03001 	mov	r3, r1
   13b14:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
   13b18:	e14b31b2 	strh	r3, [fp, #-18]	; 0xffffffee
   13b1c:	e15b31b2 	ldrh	r3, [fp, #-18]	; 0xffffffee
   13b20:	e1a00003 	mov	r0, r3
   13b24:	ebffe565 	bl	d0c0 <OSSemCreate>
   13b28:	e50b0008 	str	r0, [fp, #-8]
   13b2c:	e51b3008 	ldr	r3, [fp, #-8]
   13b30:	e3530000 	cmp	r3, #0
   13b34:	1a000001 	bne	13b40 <BSP_OS_SemCreate+0x40>
   13b38:	e3a03000 	mov	r3, #0
   13b3c:	ea000008 	b	13b64 <BSP_OS_SemCreate+0x64>
   13b40:	e51b3010 	ldr	r3, [fp, #-16]
   13b44:	e51b2008 	ldr	r2, [fp, #-8]
   13b48:	e5832000 	str	r2, [r3]
   13b4c:	e24b3009 	sub	r3, fp, #9
   13b50:	e51b0008 	ldr	r0, [fp, #-8]
   13b54:	e51b1018 	ldr	r1, [fp, #-24]	; 0xffffffe8
   13b58:	e1a02003 	mov	r2, r3
   13b5c:	ebffd1de 	bl	82dc <OSEventNameSet>
   13b60:	e3a03001 	mov	r3, #1
   13b64:	e1a00003 	mov	r0, r3
   13b68:	e24bd004 	sub	sp, fp, #4
   13b6c:	e8bd8800 	pop	{fp, pc}

00013b70 <BSP_OS_SemWait>:
   13b70:	e92d4800 	push	{fp, lr}
   13b74:	e28db004 	add	fp, sp, #4
   13b78:	e24dd010 	sub	sp, sp, #16
   13b7c:	e50b0010 	str	r0, [fp, #-16]
   13b80:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   13b84:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   13b88:	e3a02ffa 	mov	r2, #1000	; 0x3e8
   13b8c:	e0020392 	mul	r2, r2, r3
   13b90:	e308351f 	movw	r3, #34079	; 0x851f
   13b94:	e34531eb 	movt	r3, #20971	; 0x51eb
   13b98:	e0831293 	umull	r1, r3, r3, r2
   13b9c:	e1a032a3 	lsr	r3, r3, #5
   13ba0:	e50b3008 	str	r3, [fp, #-8]
   13ba4:	e51b3010 	ldr	r3, [fp, #-16]
   13ba8:	e5932000 	ldr	r2, [r3]
   13bac:	e24b3009 	sub	r3, fp, #9
   13bb0:	e1a00002 	mov	r0, r2
   13bb4:	e51b1008 	ldr	r1, [fp, #-8]
   13bb8:	e1a02003 	mov	r2, r3
   13bbc:	ebffe600 	bl	d3c4 <OSSemPend>
   13bc0:	e55b3009 	ldrb	r3, [fp, #-9]
   13bc4:	e3530000 	cmp	r3, #0
   13bc8:	0a000001 	beq	13bd4 <BSP_OS_SemWait+0x64>
   13bcc:	e3a03000 	mov	r3, #0
   13bd0:	ea000000 	b	13bd8 <BSP_OS_SemWait+0x68>
   13bd4:	e3a03001 	mov	r3, #1
   13bd8:	e1a00003 	mov	r0, r3
   13bdc:	e24bd004 	sub	sp, fp, #4
   13be0:	e8bd8800 	pop	{fp, pc}

00013be4 <BSP_OS_SemPost>:
   13be4:	e92d4800 	push	{fp, lr}
   13be8:	e28db004 	add	fp, sp, #4
   13bec:	e24dd010 	sub	sp, sp, #16
   13bf0:	e50b0010 	str	r0, [fp, #-16]
   13bf4:	e51b3010 	ldr	r3, [fp, #-16]
   13bf8:	e5933000 	ldr	r3, [r3]
   13bfc:	e1a00003 	mov	r0, r3
   13c00:	ebffe6b8 	bl	d6e8 <OSSemPost>
   13c04:	e1a03000 	mov	r3, r0
   13c08:	e54b3005 	strb	r3, [fp, #-5]
   13c0c:	e55b3005 	ldrb	r3, [fp, #-5]
   13c10:	e3530000 	cmp	r3, #0
   13c14:	0a000001 	beq	13c20 <BSP_OS_SemPost+0x3c>
   13c18:	e3a03000 	mov	r3, #0
   13c1c:	ea000000 	b	13c24 <BSP_OS_SemPost+0x40>
   13c20:	e3a03001 	mov	r3, #1
   13c24:	e1a00003 	mov	r0, r3
   13c28:	e24bd004 	sub	sp, fp, #4
   13c2c:	e8bd8800 	pop	{fp, pc}

00013c30 <BSP_OS_TimeDlyMs>:
   13c30:	e92d4800 	push	{fp, lr}
   13c34:	e28db004 	add	fp, sp, #4
   13c38:	e24dd010 	sub	sp, sp, #16
   13c3c:	e50b0010 	str	r0, [fp, #-16]
   13c40:	e51b2010 	ldr	r2, [fp, #-16]
   13c44:	e3023710 	movw	r3, #10000	; 0x2710
   13c48:	e1520003 	cmp	r2, r3
   13c4c:	9a000001 	bls	13c58 <BSP_OS_TimeDlyMs+0x28>
   13c50:	e3023710 	movw	r3, #10000	; 0x2710
   13c54:	e50b3010 	str	r3, [fp, #-16]
   13c58:	e51b2010 	ldr	r2, [fp, #-16]
   13c5c:	e3043dd3 	movw	r3, #19923	; 0x4dd3
   13c60:	e3413062 	movt	r3, #4194	; 0x1062
   13c64:	e0831293 	umull	r1, r3, r3, r2
   13c68:	e1a03323 	lsr	r3, r3, #6
   13c6c:	e54b3005 	strb	r3, [fp, #-5]
   13c70:	e51b2010 	ldr	r2, [fp, #-16]
   13c74:	e3043dd3 	movw	r3, #19923	; 0x4dd3
   13c78:	e3413062 	movt	r3, #4194	; 0x1062
   13c7c:	e0831293 	umull	r1, r3, r3, r2
   13c80:	e1a03323 	lsr	r3, r3, #6
   13c84:	e3a01ffa 	mov	r1, #1000	; 0x3e8
   13c88:	e0030391 	mul	r3, r1, r3
   13c8c:	e0633002 	rsb	r3, r3, r2
   13c90:	e14b30b8 	strh	r3, [fp, #-8]
   13c94:	e55b2005 	ldrb	r2, [fp, #-5]
   13c98:	e15b30b8 	ldrh	r3, [fp, #-8]
   13c9c:	e3a00000 	mov	r0, #0
   13ca0:	e3a01000 	mov	r1, #0
   13ca4:	ebffecc7 	bl	efc8 <OSTimeDlyHMSM>
   13ca8:	e24bd004 	sub	sp, fp, #4
   13cac:	e8bd8800 	pop	{fp, pc}

00013cb0 <tm_main>:
   13cb0:	e92d4800 	push	{fp, lr}
   13cb4:	e28db004 	add	fp, sp, #4
   13cb8:	e3030ce0 	movw	r0, #15584	; 0x3ce0
   13cbc:	e3400001 	movt	r0, #1
   13cc0:	eb0000ac 	bl	13f78 <tm_initialize>
   13cc4:	e3a00000 	mov	r0, #0
   13cc8:	e3a01008 	mov	r1, #8
   13ccc:	e3032dac 	movw	r2, #15788	; 0x3dac
   13cd0:	e3402001 	movt	r2, #1
   13cd4:	e3a03000 	mov	r3, #0
   13cd8:	ebfffa80 	bl	126e0 <CSP_IntVectReg>
   13cdc:	e8bd8800 	pop	{fp, pc}

00013ce0 <tm_interrupt_preemption_processing_initialize>:
   13ce0:	e92d4800 	push	{fp, lr}
   13ce4:	e28db004 	add	fp, sp, #4
   13ce8:	e3a00000 	mov	r0, #0
   13cec:	e3a01003 	mov	r1, #3
   13cf0:	e3032d38 	movw	r2, #15672	; 0x3d38
   13cf4:	e3402001 	movt	r2, #1
   13cf8:	eb0000ac 	bl	13fb0 <tm_thread_create>
   13cfc:	e3a00001 	mov	r0, #1
   13d00:	e3a0100a 	mov	r1, #10
   13d04:	e3032d68 	movw	r2, #15720	; 0x3d68
   13d08:	e3402001 	movt	r2, #1
   13d0c:	eb0000a7 	bl	13fb0 <tm_thread_create>
   13d10:	e3a00001 	mov	r0, #1
   13d14:	eb0000e5 	bl	140b0 <tm_thread_resume>
   13d18:	e3a00005 	mov	r0, #5
   13d1c:	e3a01002 	mov	r1, #2
   13d20:	e3032ddc 	movw	r2, #15836	; 0x3ddc
   13d24:	e3402001 	movt	r2, #1
   13d28:	eb0000a0 	bl	13fb0 <tm_thread_create>
   13d2c:	e3a00005 	mov	r0, #5
   13d30:	eb0000de 	bl	140b0 <tm_thread_resume>
   13d34:	e8bd8800 	pop	{fp, pc}

00013d38 <tm_interrupt_preemption_thread_0_entry>:
   13d38:	e92d4800 	push	{fp, lr}
   13d3c:	e28db004 	add	fp, sp, #4
   13d40:	e30b3c40 	movw	r3, #48192	; 0xbc40
   13d44:	e3403019 	movt	r3, #25
   13d48:	e5933000 	ldr	r3, [r3]
   13d4c:	e2832001 	add	r2, r3, #1
   13d50:	e30b3c40 	movw	r3, #48192	; 0xbc40
   13d54:	e3403019 	movt	r3, #25
   13d58:	e5832000 	str	r2, [r3]
   13d5c:	e3a00000 	mov	r0, #0
   13d60:	eb0000f2 	bl	14130 <tm_thread_suspend>
   13d64:	eafffff5 	b	13d40 <tm_interrupt_preemption_thread_0_entry+0x8>

00013d68 <tm_interrupt_preemption_thread_1_entry>:
   13d68:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   13d6c:	e28db000 	add	fp, sp, #0
   13d70:	f57ff06f 	isb	sy
   13d74:	e3a03c1f 	mov	r3, #7936	; 0x1f00
   13d78:	e34f38f0 	movt	r3, #63728	; 0xf8f0
   13d7c:	e3a02008 	mov	r2, #8
   13d80:	e3402001 	movt	r2, #1
   13d84:	e5832000 	str	r2, [r3]
   13d88:	f57ff06f 	isb	sy
   13d8c:	e30b3c44 	movw	r3, #48196	; 0xbc44
   13d90:	e3403019 	movt	r3, #25
   13d94:	e5933000 	ldr	r3, [r3]
   13d98:	e2832001 	add	r2, r3, #1
   13d9c:	e30b3c44 	movw	r3, #48196	; 0xbc44
   13da0:	e3403019 	movt	r3, #25
   13da4:	e5832000 	str	r2, [r3]
   13da8:	eafffff0 	b	13d70 <tm_interrupt_preemption_thread_1_entry+0x8>

00013dac <tm_interrupt_preemption_handler>:
   13dac:	e92d4800 	push	{fp, lr}
   13db0:	e28db004 	add	fp, sp, #4
   13db4:	e30b3c3c 	movw	r3, #48188	; 0xbc3c
   13db8:	e3403019 	movt	r3, #25
   13dbc:	e5933000 	ldr	r3, [r3]
   13dc0:	e2832001 	add	r2, r3, #1
   13dc4:	e30b3c3c 	movw	r3, #48188	; 0xbc3c
   13dc8:	e3403019 	movt	r3, #25
   13dcc:	e5832000 	str	r2, [r3]
   13dd0:	e3a00000 	mov	r0, #0
   13dd4:	eb0000b5 	bl	140b0 <tm_thread_resume>
   13dd8:	e8bd8800 	pop	{fp, pc}

00013ddc <tm_interrupt_preemption_thread_report>:
   13ddc:	e92d4800 	push	{fp, lr}
   13de0:	e28db004 	add	fp, sp, #4
   13de4:	e24dd010 	sub	sp, sp, #16
   13de8:	e3a03000 	mov	r3, #0
   13dec:	e50b300c 	str	r3, [fp, #-12]
   13df0:	e3a03000 	mov	r3, #0
   13df4:	e50b3008 	str	r3, [fp, #-8]
   13df8:	e3a0001e 	mov	r0, #30
   13dfc:	eb0000eb 	bl	141b0 <tm_thread_sleep>
   13e00:	e51b3008 	ldr	r3, [fp, #-8]
   13e04:	e283301e 	add	r3, r3, #30
   13e08:	e50b3008 	str	r3, [fp, #-8]
   13e0c:	e30708ec 	movw	r0, #30956	; 0x78ec
   13e10:	e3400001 	movt	r0, #1
   13e14:	e51b1008 	ldr	r1, [fp, #-8]
   13e18:	eb000670 	bl	157e0 <xil_printf>
   13e1c:	e30b3c40 	movw	r3, #48192	; 0xbc40
   13e20:	e3403019 	movt	r3, #25
   13e24:	e5932000 	ldr	r2, [r3]
   13e28:	e30b3c44 	movw	r3, #48196	; 0xbc44
   13e2c:	e3403019 	movt	r3, #25
   13e30:	e5933000 	ldr	r3, [r3]
   13e34:	e0822003 	add	r2, r2, r3
   13e38:	e30b3c3c 	movw	r3, #48188	; 0xbc3c
   13e3c:	e3403019 	movt	r3, #25
   13e40:	e5933000 	ldr	r3, [r3]
   13e44:	e0823003 	add	r3, r2, r3
   13e48:	e50b3010 	str	r3, [fp, #-16]
   13e4c:	e51b2010 	ldr	r2, [fp, #-16]
   13e50:	e30a3aab 	movw	r3, #43691	; 0xaaab
   13e54:	e34a3aaa 	movt	r3, #43690	; 0xaaaa
   13e58:	e0831293 	umull	r1, r3, r3, r2
   13e5c:	e1a030a3 	lsr	r3, r3, #1
   13e60:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   13e64:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   13e68:	e2432001 	sub	r2, r3, #1
   13e6c:	e30b3c40 	movw	r3, #48192	; 0xbc40
   13e70:	e3403019 	movt	r3, #25
   13e74:	e5933000 	ldr	r3, [r3]
   13e78:	e1520003 	cmp	r2, r3
   13e7c:	8a000022 	bhi	13f0c <tm_interrupt_preemption_thread_report+0x130>
   13e80:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   13e84:	e2832001 	add	r2, r3, #1
   13e88:	e30b3c40 	movw	r3, #48192	; 0xbc40
   13e8c:	e3403019 	movt	r3, #25
   13e90:	e5933000 	ldr	r3, [r3]
   13e94:	e1520003 	cmp	r2, r3
   13e98:	3a00001b 	bcc	13f0c <tm_interrupt_preemption_thread_report+0x130>
   13e9c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   13ea0:	e2432001 	sub	r2, r3, #1
   13ea4:	e30b3c44 	movw	r3, #48196	; 0xbc44
   13ea8:	e3403019 	movt	r3, #25
   13eac:	e5933000 	ldr	r3, [r3]
   13eb0:	e1520003 	cmp	r2, r3
   13eb4:	8a000014 	bhi	13f0c <tm_interrupt_preemption_thread_report+0x130>
   13eb8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   13ebc:	e2832001 	add	r2, r3, #1
   13ec0:	e30b3c44 	movw	r3, #48196	; 0xbc44
   13ec4:	e3403019 	movt	r3, #25
   13ec8:	e5933000 	ldr	r3, [r3]
   13ecc:	e1520003 	cmp	r2, r3
   13ed0:	3a00000d 	bcc	13f0c <tm_interrupt_preemption_thread_report+0x130>
   13ed4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   13ed8:	e2432001 	sub	r2, r3, #1
   13edc:	e30b3c3c 	movw	r3, #48188	; 0xbc3c
   13ee0:	e3403019 	movt	r3, #25
   13ee4:	e5933000 	ldr	r3, [r3]
   13ee8:	e1520003 	cmp	r2, r3
   13eec:	8a000006 	bhi	13f0c <tm_interrupt_preemption_thread_report+0x130>
   13ef0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   13ef4:	e2832001 	add	r2, r3, #1
   13ef8:	e30b3c3c 	movw	r3, #48188	; 0xbc3c
   13efc:	e3403019 	movt	r3, #25
   13f00:	e5933000 	ldr	r3, [r3]
   13f04:	e1520003 	cmp	r2, r3
   13f08:	2a000002 	bcs	13f18 <tm_interrupt_preemption_thread_report+0x13c>
   13f0c:	e3070940 	movw	r0, #31040	; 0x7940
   13f10:	e3400001 	movt	r0, #1
   13f14:	eb0003d5 	bl	14e70 <print>
   13f18:	e30b3c3c 	movw	r3, #48188	; 0xbc3c
   13f1c:	e3403019 	movt	r3, #25
   13f20:	e5932000 	ldr	r2, [r3]
   13f24:	e51b300c 	ldr	r3, [fp, #-12]
   13f28:	e0633002 	rsb	r3, r3, r2
   13f2c:	e307098c 	movw	r0, #31116	; 0x798c
   13f30:	e3400001 	movt	r0, #1
   13f34:	e1a01003 	mov	r1, r3
   13f38:	eb000628 	bl	157e0 <xil_printf>
   13f3c:	e30b3c3c 	movw	r3, #48188	; 0xbc3c
   13f40:	e3403019 	movt	r3, #25
   13f44:	e5933000 	ldr	r3, [r3]
   13f48:	e50b300c 	str	r3, [fp, #-12]
   13f4c:	eaffffa9 	b	13df8 <tm_interrupt_preemption_thread_report+0x1c>

00013f50 <tm_SGI>:
   13f50:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   13f54:	e28db000 	add	fp, sp, #0
   13f58:	e3a03c1f 	mov	r3, #7936	; 0x1f00
   13f5c:	e34f38f0 	movt	r3, #63728	; 0xf8f0
   13f60:	e3a02008 	mov	r2, #8
   13f64:	e3402001 	movt	r2, #1
   13f68:	e5832000 	str	r2, [r3]
   13f6c:	e28bd000 	add	sp, fp, #0
   13f70:	e8bd0800 	ldmfd	sp!, {fp}
   13f74:	e12fff1e 	bx	lr

00013f78 <tm_initialize>:
   13f78:	e92d4800 	push	{fp, lr}
   13f7c:	e28db004 	add	fp, sp, #4
   13f80:	e24dd008 	sub	sp, sp, #8
   13f84:	e50b0008 	str	r0, [fp, #-8]
   13f88:	e30b392c 	movw	r3, #47404	; 0xb92c
   13f8c:	e3403019 	movt	r3, #25
   13f90:	e59320fc 	ldr	r2, [r3, #252]	; 0xfc
   13f94:	e30a3fa4 	movw	r3, #44964	; 0xafa4
   13f98:	e3403019 	movt	r3, #25
   13f9c:	e5832000 	str	r2, [r3]
   13fa0:	e51b3008 	ldr	r3, [fp, #-8]
   13fa4:	e12fff33 	blx	r3
   13fa8:	e24bd004 	sub	sp, fp, #4
   13fac:	e8bd8800 	pop	{fp, pc}

00013fb0 <tm_thread_create>:
   13fb0:	e92d4800 	push	{fp, lr}
   13fb4:	e28db004 	add	fp, sp, #4
   13fb8:	e24dd030 	sub	sp, sp, #48	; 0x30
   13fbc:	e50b0010 	str	r0, [fp, #-16]
   13fc0:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   13fc4:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
   13fc8:	e3a00b02 	mov	r0, #2048	; 0x800
   13fcc:	eb0009a1 	bl	16658 <malloc>
   13fd0:	e1a03000 	mov	r3, r0
   13fd4:	e50b3008 	str	r3, [fp, #-8]
   13fd8:	e51b3008 	ldr	r3, [fp, #-8]
   13fdc:	e3530000 	cmp	r3, #0
   13fe0:	1a000004 	bne	13ff8 <tm_thread_create+0x48>
   13fe4:	e30709a8 	movw	r0, #31144	; 0x79a8
   13fe8:	e3400001 	movt	r0, #1
   13fec:	eb00039f 	bl	14e70 <print>
   13ff0:	e3a03001 	mov	r3, #1
   13ff4:	ea00002a 	b	140a4 <tm_thread_create+0xf4>
   13ff8:	e30b3cc0 	movw	r3, #48320	; 0xbcc0
   13ffc:	e3403019 	movt	r3, #25
   14000:	e51b2010 	ldr	r2, [fp, #-16]
   14004:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   14008:	e7831102 	str	r1, [r3, r2, lsl #2]
   1400c:	e51b3008 	ldr	r3, [fp, #-8]
   14010:	e2833e7f 	add	r3, r3, #2032	; 0x7f0
   14014:	e283300c 	add	r3, r3, #12
   14018:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   1401c:	e6efc072 	uxtb	ip, r2
   14020:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   14024:	e6ef2072 	uxtb	r2, r2
   14028:	e58d2000 	str	r2, [sp]
   1402c:	e51b2008 	ldr	r2, [fp, #-8]
   14030:	e58d2004 	str	r2, [sp, #4]
   14034:	e3a02c02 	mov	r2, #512	; 0x200
   14038:	e58d2008 	str	r2, [sp, #8]
   1403c:	e3a02000 	mov	r2, #0
   14040:	e58d200c 	str	r2, [sp, #12]
   14044:	e3a02003 	mov	r2, #3
   14048:	e58d2010 	str	r2, [sp, #16]
   1404c:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
   14050:	e3a01000 	mov	r1, #0
   14054:	e1a02003 	mov	r2, r3
   14058:	e1a0300c 	mov	r3, ip
   1405c:	ebffe7b6 	bl	df3c <OSTaskCreateExt>
   14060:	e1a03000 	mov	r3, r0
   14064:	e54b3009 	strb	r3, [fp, #-9]
   14068:	e55b3009 	ldrb	r3, [fp, #-9]
   1406c:	e3530000 	cmp	r3, #0
   14070:	0a000006 	beq	14090 <tm_thread_create+0xe0>
   14074:	e55b3009 	ldrb	r3, [fp, #-9]
   14078:	e30709c4 	movw	r0, #31172	; 0x79c4
   1407c:	e3400001 	movt	r0, #1
   14080:	e1a01003 	mov	r1, r3
   14084:	eb0005d5 	bl	157e0 <xil_printf>
   14088:	e3a03001 	mov	r3, #1
   1408c:	ea000004 	b	140a4 <tm_thread_create+0xf4>
   14090:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   14094:	e6ef3073 	uxtb	r3, r3
   14098:	e1a00003 	mov	r0, r3
   1409c:	ebffea41 	bl	e9a8 <OSTaskSuspend>
   140a0:	e3a03000 	mov	r3, #0
   140a4:	e1a00003 	mov	r0, r3
   140a8:	e24bd004 	sub	sp, fp, #4
   140ac:	e8bd8800 	pop	{fp, pc}

000140b0 <tm_thread_resume>:
   140b0:	e92d4800 	push	{fp, lr}
   140b4:	e28db004 	add	fp, sp, #4
   140b8:	e24dd010 	sub	sp, sp, #16
   140bc:	e50b0010 	str	r0, [fp, #-16]
   140c0:	e30b3cc0 	movw	r3, #48320	; 0xbcc0
   140c4:	e3403019 	movt	r3, #25
   140c8:	e51b2010 	ldr	r2, [fp, #-16]
   140cc:	e7933102 	ldr	r3, [r3, r2, lsl #2]
   140d0:	e6ef3073 	uxtb	r3, r3
   140d4:	e1a00003 	mov	r0, r3
   140d8:	ebffe97a 	bl	e6c8 <OSTaskResume>
   140dc:	e1a03000 	mov	r3, r0
   140e0:	e54b3005 	strb	r3, [fp, #-5]
   140e4:	e55b3005 	ldrb	r3, [fp, #-5]
   140e8:	e3530000 	cmp	r3, #0
   140ec:	13a03000 	movne	r3, #0
   140f0:	03a03001 	moveq	r3, #1
   140f4:	e6ef2073 	uxtb	r2, r3
   140f8:	e55b3005 	ldrb	r3, [fp, #-5]
   140fc:	e3530044 	cmp	r3, #68	; 0x44
   14100:	13a03000 	movne	r3, #0
   14104:	03a03001 	moveq	r3, #1
   14108:	e6ef3073 	uxtb	r3, r3
   1410c:	e1823003 	orr	r3, r2, r3
   14110:	e6ef3073 	uxtb	r3, r3
   14114:	e3530000 	cmp	r3, #0
   14118:	0a000001 	beq	14124 <tm_thread_resume+0x74>
   1411c:	e3a03000 	mov	r3, #0
   14120:	eaffffff 	b	14124 <tm_thread_resume+0x74>
   14124:	e1a00003 	mov	r0, r3
   14128:	e24bd004 	sub	sp, fp, #4
   1412c:	e8bd8800 	pop	{fp, pc}

00014130 <tm_thread_suspend>:
   14130:	e92d4800 	push	{fp, lr}
   14134:	e28db004 	add	fp, sp, #4
   14138:	e24dd010 	sub	sp, sp, #16
   1413c:	e50b0010 	str	r0, [fp, #-16]
   14140:	e30b3cc0 	movw	r3, #48320	; 0xbcc0
   14144:	e3403019 	movt	r3, #25
   14148:	e51b2010 	ldr	r2, [fp, #-16]
   1414c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
   14150:	e6ef3073 	uxtb	r3, r3
   14154:	e1a00003 	mov	r0, r3
   14158:	ebffea12 	bl	e9a8 <OSTaskSuspend>
   1415c:	e1a03000 	mov	r3, r0
   14160:	e54b3005 	strb	r3, [fp, #-5]
   14164:	e55b3005 	ldrb	r3, [fp, #-5]
   14168:	e3530000 	cmp	r3, #0
   1416c:	1a000001 	bne	14178 <tm_thread_suspend+0x48>
   14170:	e3a03000 	mov	r3, #0
   14174:	ea000005 	b	14190 <tm_thread_suspend+0x60>
   14178:	e55b3005 	ldrb	r3, [fp, #-5]
   1417c:	e30709e4 	movw	r0, #31204	; 0x79e4
   14180:	e3400001 	movt	r0, #1
   14184:	e1a01003 	mov	r1, r3
   14188:	eb000594 	bl	157e0 <xil_printf>
   1418c:	e3a03001 	mov	r3, #1
   14190:	e1a00003 	mov	r0, r3
   14194:	e24bd004 	sub	sp, fp, #4
   14198:	e8bd8800 	pop	{fp, pc}

0001419c <tm_thread_relinquish>:
   1419c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   141a0:	e28db000 	add	fp, sp, #0
   141a4:	e28bd000 	add	sp, fp, #0
   141a8:	e8bd0800 	ldmfd	sp!, {fp}
   141ac:	e12fff1e 	bx	lr

000141b0 <tm_thread_sleep>:
   141b0:	e92d4800 	push	{fp, lr}
   141b4:	e28db004 	add	fp, sp, #4
   141b8:	e24dd008 	sub	sp, sp, #8
   141bc:	e50b0008 	str	r0, [fp, #-8]
   141c0:	e51b3008 	ldr	r3, [fp, #-8]
   141c4:	e6ef3073 	uxtb	r3, r3
   141c8:	e3a00000 	mov	r0, #0
   141cc:	e3a01000 	mov	r1, #0
   141d0:	e1a02003 	mov	r2, r3
   141d4:	e3a03000 	mov	r3, #0
   141d8:	ebffeb7a 	bl	efc8 <OSTimeDlyHMSM>
   141dc:	e24bd004 	sub	sp, fp, #4
   141e0:	e8bd8800 	pop	{fp, pc}

000141e4 <tm_queue_create>:
   141e4:	e92d4800 	push	{fp, lr}
   141e8:	e28db004 	add	fp, sp, #4
   141ec:	e24dd008 	sub	sp, sp, #8
   141f0:	e50b0008 	str	r0, [fp, #-8]
   141f4:	e30b0c48 	movw	r0, #48200	; 0xbc48
   141f8:	e3400019 	movt	r0, #25
   141fc:	e3a01010 	mov	r1, #16
   14200:	ebffdfe9 	bl	c1ac <OSQCreate>
   14204:	e1a01000 	mov	r1, r0
   14208:	e30b3ec0 	movw	r3, #48832	; 0xbec0
   1420c:	e3403019 	movt	r3, #25
   14210:	e51b2008 	ldr	r2, [fp, #-8]
   14214:	e7831102 	str	r1, [r3, r2, lsl #2]
   14218:	e30b3ec0 	movw	r3, #48832	; 0xbec0
   1421c:	e3403019 	movt	r3, #25
   14220:	e51b2008 	ldr	r2, [fp, #-8]
   14224:	e7933102 	ldr	r3, [r3, r2, lsl #2]
   14228:	e3530000 	cmp	r3, #0
   1422c:	1a000001 	bne	14238 <tm_queue_create+0x54>
   14230:	e3a03001 	mov	r3, #1
   14234:	ea000000 	b	1423c <tm_queue_create+0x58>
   14238:	e3a03000 	mov	r3, #0
   1423c:	e1a00003 	mov	r0, r3
   14240:	e24bd004 	sub	sp, fp, #4
   14244:	e8bd8800 	pop	{fp, pc}

00014248 <tm_queue_send>:
   14248:	e92d4800 	push	{fp, lr}
   1424c:	e28db004 	add	fp, sp, #4
   14250:	e24dd010 	sub	sp, sp, #16
   14254:	e50b0010 	str	r0, [fp, #-16]
   14258:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   1425c:	e3a03000 	mov	r3, #0
   14260:	e50b3008 	str	r3, [fp, #-8]
   14264:	ea000016 	b	142c4 <tm_queue_send+0x7c>
   14268:	e30b3ec0 	movw	r3, #48832	; 0xbec0
   1426c:	e3403019 	movt	r3, #25
   14270:	e51b2010 	ldr	r2, [fp, #-16]
   14274:	e7932102 	ldr	r2, [r3, r2, lsl #2]
   14278:	e51b3008 	ldr	r3, [fp, #-8]
   1427c:	e1a03103 	lsl	r3, r3, #2
   14280:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   14284:	e0813003 	add	r3, r1, r3
   14288:	e5933000 	ldr	r3, [r3]
   1428c:	e1a00002 	mov	r0, r2
   14290:	e1a01003 	mov	r1, r3
   14294:	ebffe1e0 	bl	ca1c <OSQPost>
   14298:	e1a03000 	mov	r3, r0
   1429c:	e3530000 	cmp	r3, #0
   142a0:	0a000004 	beq	142b8 <tm_queue_send+0x70>
   142a4:	e3070a04 	movw	r0, #31236	; 0x7a04
   142a8:	e3400001 	movt	r0, #1
   142ac:	eb0002ef 	bl	14e70 <print>
   142b0:	e3a03001 	mov	r3, #1
   142b4:	ea000006 	b	142d4 <tm_queue_send+0x8c>
   142b8:	e51b3008 	ldr	r3, [fp, #-8]
   142bc:	e2833001 	add	r3, r3, #1
   142c0:	e50b3008 	str	r3, [fp, #-8]
   142c4:	e51b3008 	ldr	r3, [fp, #-8]
   142c8:	e3530003 	cmp	r3, #3
   142cc:	daffffe5 	ble	14268 <tm_queue_send+0x20>
   142d0:	e3a03000 	mov	r3, #0
   142d4:	e1a00003 	mov	r0, r3
   142d8:	e24bd004 	sub	sp, fp, #4
   142dc:	e8bd8800 	pop	{fp, pc}

000142e0 <tm_queue_receive>:
   142e0:	e92d4810 	push	{r4, fp, lr}
   142e4:	e28db008 	add	fp, sp, #8
   142e8:	e24dd014 	sub	sp, sp, #20
   142ec:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
   142f0:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
   142f4:	e3a03000 	mov	r3, #0
   142f8:	e50b3010 	str	r3, [fp, #-16]
   142fc:	ea000019 	b	14368 <tm_queue_receive+0x88>
   14300:	e51b3010 	ldr	r3, [fp, #-16]
   14304:	e1a03103 	lsl	r3, r3, #2
   14308:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
   1430c:	e0824003 	add	r4, r2, r3
   14310:	e30b3ec0 	movw	r3, #48832	; 0xbec0
   14314:	e3403019 	movt	r3, #25
   14318:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   1431c:	e7932102 	ldr	r2, [r3, r2, lsl #2]
   14320:	e24b3011 	sub	r3, fp, #17
   14324:	e1a00002 	mov	r0, r2
   14328:	e3a01000 	mov	r1, #0
   1432c:	e1a02003 	mov	r2, r3
   14330:	ebffe0c8 	bl	c658 <OSQPend>
   14334:	e1a03000 	mov	r3, r0
   14338:	e5843000 	str	r3, [r4]
   1433c:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
   14340:	e3530000 	cmp	r3, #0
   14344:	0a000004 	beq	1435c <tm_queue_receive+0x7c>
   14348:	e3070a24 	movw	r0, #31268	; 0x7a24
   1434c:	e3400001 	movt	r0, #1
   14350:	eb0002c6 	bl	14e70 <print>
   14354:	e3a03001 	mov	r3, #1
   14358:	ea000006 	b	14378 <tm_queue_receive+0x98>
   1435c:	e51b3010 	ldr	r3, [fp, #-16]
   14360:	e2833001 	add	r3, r3, #1
   14364:	e50b3010 	str	r3, [fp, #-16]
   14368:	e51b3010 	ldr	r3, [fp, #-16]
   1436c:	e3530003 	cmp	r3, #3
   14370:	daffffe2 	ble	14300 <tm_queue_receive+0x20>
   14374:	e3a03000 	mov	r3, #0
   14378:	e1a00003 	mov	r0, r3
   1437c:	e24bd008 	sub	sp, fp, #8
   14380:	e8bd8810 	pop	{r4, fp, pc}

00014384 <tm_semaphore_create>:
   14384:	e92d4800 	push	{fp, lr}
   14388:	e28db004 	add	fp, sp, #4
   1438c:	e24dd008 	sub	sp, sp, #8
   14390:	e50b0008 	str	r0, [fp, #-8]
   14394:	e3a00001 	mov	r0, #1
   14398:	ebffe348 	bl	d0c0 <OSSemCreate>
   1439c:	e1a01000 	mov	r1, r0
   143a0:	e30b3c88 	movw	r3, #48264	; 0xbc88
   143a4:	e3403019 	movt	r3, #25
   143a8:	e51b2008 	ldr	r2, [fp, #-8]
   143ac:	e7831102 	str	r1, [r3, r2, lsl #2]
   143b0:	e30b3c88 	movw	r3, #48264	; 0xbc88
   143b4:	e3403019 	movt	r3, #25
   143b8:	e51b2008 	ldr	r2, [fp, #-8]
   143bc:	e7933102 	ldr	r3, [r3, r2, lsl #2]
   143c0:	e3530000 	cmp	r3, #0
   143c4:	1a000001 	bne	143d0 <tm_semaphore_create+0x4c>
   143c8:	e3a03001 	mov	r3, #1
   143cc:	ea000000 	b	143d4 <tm_semaphore_create+0x50>
   143d0:	e3a03000 	mov	r3, #0
   143d4:	e1a00003 	mov	r0, r3
   143d8:	e24bd004 	sub	sp, fp, #4
   143dc:	e8bd8800 	pop	{fp, pc}

000143e0 <tm_semaphore_get>:
   143e0:	e92d4800 	push	{fp, lr}
   143e4:	e28db004 	add	fp, sp, #4
   143e8:	e24dd010 	sub	sp, sp, #16
   143ec:	e50b0010 	str	r0, [fp, #-16]
   143f0:	e30b3c88 	movw	r3, #48264	; 0xbc88
   143f4:	e3403019 	movt	r3, #25
   143f8:	e51b2010 	ldr	r2, [fp, #-16]
   143fc:	e7932102 	ldr	r2, [r3, r2, lsl #2]
   14400:	e24b3005 	sub	r3, fp, #5
   14404:	e1a00002 	mov	r0, r2
   14408:	e3a01000 	mov	r1, #0
   1440c:	e1a02003 	mov	r2, r3
   14410:	ebffe3eb 	bl	d3c4 <OSSemPend>
   14414:	e55b3005 	ldrb	r3, [fp, #-5]
   14418:	e3530000 	cmp	r3, #0
   1441c:	1a000001 	bne	14428 <tm_semaphore_get+0x48>
   14420:	e3a03000 	mov	r3, #0
   14424:	ea000003 	b	14438 <tm_semaphore_get+0x58>
   14428:	e3070a44 	movw	r0, #31300	; 0x7a44
   1442c:	e3400001 	movt	r0, #1
   14430:	eb00028e 	bl	14e70 <print>
   14434:	e3a03001 	mov	r3, #1
   14438:	e1a00003 	mov	r0, r3
   1443c:	e24bd004 	sub	sp, fp, #4
   14440:	e8bd8800 	pop	{fp, pc}

00014444 <tm_semaphore_put>:
   14444:	e92d4800 	push	{fp, lr}
   14448:	e28db004 	add	fp, sp, #4
   1444c:	e24dd008 	sub	sp, sp, #8
   14450:	e50b0008 	str	r0, [fp, #-8]
   14454:	e30b3c88 	movw	r3, #48264	; 0xbc88
   14458:	e3403019 	movt	r3, #25
   1445c:	e51b2008 	ldr	r2, [fp, #-8]
   14460:	e7933102 	ldr	r3, [r3, r2, lsl #2]
   14464:	e1a00003 	mov	r0, r3
   14468:	ebffe49e 	bl	d6e8 <OSSemPost>
   1446c:	e1a03000 	mov	r3, r0
   14470:	e3530000 	cmp	r3, #0
   14474:	1a000001 	bne	14480 <tm_semaphore_put+0x3c>
   14478:	e3a03000 	mov	r3, #0
   1447c:	ea000003 	b	14490 <tm_semaphore_put+0x4c>
   14480:	e3070a60 	movw	r0, #31328	; 0x7a60
   14484:	e3400001 	movt	r0, #1
   14488:	eb000278 	bl	14e70 <print>
   1448c:	e3a03001 	mov	r3, #1
   14490:	e1a00003 	mov	r0, r3
   14494:	e24bd004 	sub	sp, fp, #4
   14498:	e8bd8800 	pop	{fp, pc}

0001449c <tm_memory_pool_create>:
   1449c:	e92d4800 	push	{fp, lr}
   144a0:	e28db004 	add	fp, sp, #4
   144a4:	e24dd010 	sub	sp, sp, #16
   144a8:	e50b0010 	str	r0, [fp, #-16]
   144ac:	e24b3005 	sub	r3, fp, #5
   144b0:	e3080e50 	movw	r0, #36432	; 0x8e50
   144b4:	e3400001 	movt	r0, #1
   144b8:	e3a01004 	mov	r1, #4
   144bc:	e3a02080 	mov	r2, #128	; 0x80
   144c0:	ebffd976 	bl	aaa0 <OSMemCreate>
   144c4:	e1a01000 	mov	r1, r0
   144c8:	e30b3cb0 	movw	r3, #48304	; 0xbcb0
   144cc:	e3403019 	movt	r3, #25
   144d0:	e51b2010 	ldr	r2, [fp, #-16]
   144d4:	e7831102 	str	r1, [r3, r2, lsl #2]
   144d8:	e55b3005 	ldrb	r3, [fp, #-5]
   144dc:	e3530000 	cmp	r3, #0
   144e0:	1a000001 	bne	144ec <tm_memory_pool_create+0x50>
   144e4:	e3a03000 	mov	r3, #0
   144e8:	ea000000 	b	144f0 <tm_memory_pool_create+0x54>
   144ec:	e3a03001 	mov	r3, #1
   144f0:	e1a00003 	mov	r0, r3
   144f4:	e24bd004 	sub	sp, fp, #4
   144f8:	e8bd8800 	pop	{fp, pc}

000144fc <tm_memory_pool_allocate>:
   144fc:	e92d4800 	push	{fp, lr}
   14500:	e28db004 	add	fp, sp, #4
   14504:	e24dd010 	sub	sp, sp, #16
   14508:	e50b0010 	str	r0, [fp, #-16]
   1450c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   14510:	e30b3cb0 	movw	r3, #48304	; 0xbcb0
   14514:	e3403019 	movt	r3, #25
   14518:	e51b2010 	ldr	r2, [fp, #-16]
   1451c:	e7932102 	ldr	r2, [r3, r2, lsl #2]
   14520:	e24b3005 	sub	r3, fp, #5
   14524:	e1a00002 	mov	r0, r2
   14528:	e1a01003 	mov	r1, r3
   1452c:	ebffd9b3 	bl	ac00 <OSMemGet>
   14530:	e1a02000 	mov	r2, r0
   14534:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   14538:	e5832000 	str	r2, [r3]
   1453c:	e55b3005 	ldrb	r3, [fp, #-5]
   14540:	e3530000 	cmp	r3, #0
   14544:	1a000001 	bne	14550 <tm_memory_pool_allocate+0x54>
   14548:	e3a03000 	mov	r3, #0
   1454c:	ea000000 	b	14554 <tm_memory_pool_allocate+0x58>
   14550:	e3a03001 	mov	r3, #1
   14554:	e1a00003 	mov	r0, r3
   14558:	e24bd004 	sub	sp, fp, #4
   1455c:	e8bd8800 	pop	{fp, pc}

00014560 <tm_memory_pool_deallocate>:
   14560:	e92d4800 	push	{fp, lr}
   14564:	e28db004 	add	fp, sp, #4
   14568:	e24dd008 	sub	sp, sp, #8
   1456c:	e50b0008 	str	r0, [fp, #-8]
   14570:	e50b100c 	str	r1, [fp, #-12]
   14574:	e30b3cb0 	movw	r3, #48304	; 0xbcb0
   14578:	e3403019 	movt	r3, #25
   1457c:	e51b2008 	ldr	r2, [fp, #-8]
   14580:	e7933102 	ldr	r3, [r3, r2, lsl #2]
   14584:	e1a00003 	mov	r0, r3
   14588:	e51b100c 	ldr	r1, [fp, #-12]
   1458c:	ebffda08 	bl	adb4 <OSMemPut>
   14590:	e1a03000 	mov	r3, r0
   14594:	e3530000 	cmp	r3, #0
   14598:	1a000001 	bne	145a4 <tm_memory_pool_deallocate+0x44>
   1459c:	e3a03000 	mov	r3, #0
   145a0:	ea000000 	b	145a8 <tm_memory_pool_deallocate+0x48>
   145a4:	e3a03001 	mov	r3, #1
   145a8:	e1a00003 	mov	r0, r3
   145ac:	e24bd004 	sub	sp, fp, #4
   145b0:	e8bd8800 	pop	{fp, pc}

000145b4 <guest_CPU_IntDis>:
   145b4:	e92d4800 	push	{fp, lr}
   145b8:	e28db004 	add	fp, sp, #4
   145bc:	ebffec37 	bl	f6a0 <OS_CPU_SR_IRQ_Dis>
   145c0:	e8bd8800 	pop	{fp, pc}

000145c4 <guest_CPU_IntEn>:
   145c4:	e92d4800 	push	{fp, lr}
   145c8:	e28db004 	add	fp, sp, #4
   145cc:	ebffec25 	bl	f668 <OS_CPU_SR_IRQ_En>
   145d0:	e8bd8800 	pop	{fp, pc}

000145d4 <guest_ICacheEnable>:
   145d4:	e92d4800 	push	{fp, lr}
   145d8:	e28db004 	add	fp, sp, #4
   145dc:	eb0000dc 	bl	14954 <sys_icache_enable>
   145e0:	e8bd8800 	pop	{fp, pc}

000145e4 <guest_DCacheEnable>:
   145e4:	e92d4800 	push	{fp, lr}
   145e8:	e28db004 	add	fp, sp, #4
   145ec:	eb0000d0 	bl	14934 <sys_dcache_enable>
   145f0:	e8bd8800 	pop	{fp, pc}

000145f4 <guest_ICacheDisable>:
   145f4:	e92d4800 	push	{fp, lr}
   145f8:	e28db004 	add	fp, sp, #4
   145fc:	eb0000c4 	bl	14914 <sys_icache_disable>
   14600:	e8bd8800 	pop	{fp, pc}

00014604 <guest_DCacheDisable>:
   14604:	e92d4800 	push	{fp, lr}
   14608:	e28db004 	add	fp, sp, #4
   1460c:	eb0000b8 	bl	148f4 <sys_dcache_disable>
   14610:	e8bd8800 	pop	{fp, pc}

00014614 <guest_IRQ_Register>:
   14614:	e92d4800 	push	{fp, lr}
   14618:	e28db004 	add	fp, sp, #4
   1461c:	e24dd008 	sub	sp, sp, #8
   14620:	e50b0008 	str	r0, [fp, #-8]
   14624:	e50b100c 	str	r1, [fp, #-12]
   14628:	e51b3008 	ldr	r3, [fp, #-8]
   1462c:	e3a00000 	mov	r0, #0
   14630:	e1a01003 	mov	r1, r3
   14634:	e51b200c 	ldr	r2, [fp, #-12]
   14638:	eb0000cd 	bl	14974 <sys_virq_ctrl>
   1463c:	e24bd004 	sub	sp, fp, #4
   14640:	e8bd8800 	pop	{fp, pc}

00014644 <guest_IRQ_Acknowledge>:
   14644:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   14648:	e28db000 	add	fp, sp, #0
   1464c:	e30b3ed4 	movw	r3, #48852	; 0xbed4
   14650:	e3403019 	movt	r3, #25
   14654:	e593300c 	ldr	r3, [r3, #12]
   14658:	e1a00003 	mov	r0, r3
   1465c:	e28bd000 	add	sp, fp, #0
   14660:	e8bd0800 	ldmfd	sp!, {fp}
   14664:	e12fff1e 	bx	lr

00014668 <guest_CSP_IntClr>:
   14668:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   1466c:	e28db000 	add	fp, sp, #0
   14670:	e24dd00c 	sub	sp, sp, #12
   14674:	e1a02000 	mov	r2, r0
   14678:	e1a03001 	mov	r3, r1
   1467c:	e14b20b6 	strh	r2, [fp, #-6]
   14680:	e14b30b8 	strh	r3, [fp, #-8]
   14684:	e15b10b8 	ldrh	r1, [fp, #-8]
   14688:	e30b3ed4 	movw	r3, #48852	; 0xbed4
   1468c:	e3403019 	movt	r3, #25
   14690:	e3a02010 	mov	r2, #16
   14694:	e0833001 	add	r3, r3, r1
   14698:	e0833002 	add	r3, r3, r2
   1469c:	e3a02001 	mov	r2, #1
   146a0:	e5c32000 	strb	r2, [r3]
   146a4:	e28bd000 	add	sp, fp, #0
   146a8:	e8bd0800 	ldmfd	sp!, {fp}
   146ac:	e12fff1e 	bx	lr

000146b0 <guest_OS_Timer_Register>:
   146b0:	e92d4800 	push	{fp, lr}
   146b4:	e28db004 	add	fp, sp, #4
   146b8:	e24dd008 	sub	sp, sp, #8
   146bc:	e50b0008 	str	r0, [fp, #-8]
   146c0:	e3a00000 	mov	r0, #0
   146c4:	e51b1008 	ldr	r1, [fp, #-8]
   146c8:	e3a02000 	mov	r2, #0
   146cc:	eb0000b8 	bl	149b4 <sys_vtimer_ctrl>
   146d0:	e24bd004 	sub	sp, fp, #4
   146d4:	e8bd8800 	pop	{fp, pc}

000146d8 <guest_OS_Timer_Disable>:
   146d8:	e92d4800 	push	{fp, lr}
   146dc:	e28db004 	add	fp, sp, #4
   146e0:	e3a00001 	mov	r0, #1
   146e4:	e3a01000 	mov	r1, #0
   146e8:	e3a02000 	mov	r2, #0
   146ec:	eb0000b0 	bl	149b4 <sys_vtimer_ctrl>
   146f0:	e8bd8800 	pop	{fp, pc}

000146f4 <guest_OS_Timer_Enable>:
   146f4:	e92d4800 	push	{fp, lr}
   146f8:	e28db004 	add	fp, sp, #4
   146fc:	e3a00002 	mov	r0, #2
   14700:	e3a01000 	mov	r1, #0
   14704:	e3a02000 	mov	r2, #0
   14708:	eb0000a9 	bl	149b4 <sys_vtimer_ctrl>
   1470c:	e8bd8800 	pop	{fp, pc}

00014710 <guest_OS_Mbox_Post>:
   14710:	e92d4800 	push	{fp, lr}
   14714:	e28db004 	add	fp, sp, #4
   14718:	e24dd008 	sub	sp, sp, #8
   1471c:	e50b0008 	str	r0, [fp, #-8]
   14720:	e50b100c 	str	r1, [fp, #-12]
   14724:	e51b0008 	ldr	r0, [fp, #-8]
   14728:	e51b100c 	ldr	r1, [fp, #-12]
   1472c:	eb0000ad 	bl	149e8 <sys_mbox_post>
   14730:	e1a03000 	mov	r3, r0
   14734:	e1a00003 	mov	r0, r3
   14738:	e24bd004 	sub	sp, fp, #4
   1473c:	e8bd8800 	pop	{fp, pc}

00014740 <guest_OS_Mbox_Read>:
   14740:	e92d4800 	push	{fp, lr}
   14744:	e28db004 	add	fp, sp, #4
   14748:	e24dd008 	sub	sp, sp, #8
   1474c:	e50b0008 	str	r0, [fp, #-8]
   14750:	e50b100c 	str	r1, [fp, #-12]
   14754:	e51b0008 	ldr	r0, [fp, #-8]
   14758:	e51b100c 	ldr	r1, [fp, #-12]
   1475c:	eb0000b0 	bl	14a24 <sys_mbox_read>
   14760:	e1a03000 	mov	r3, r0
   14764:	e1a00003 	mov	r0, r3
   14768:	e24bd004 	sub	sp, fp, #4
   1476c:	e8bd8800 	pop	{fp, pc}

00014770 <guest_OS_GetPhysAddr>:
   14770:	e92d4800 	push	{fp, lr}
   14774:	e28db004 	add	fp, sp, #4
   14778:	e24dd008 	sub	sp, sp, #8
   1477c:	e50b0008 	str	r0, [fp, #-8]
   14780:	e51b0008 	ldr	r0, [fp, #-8]
   14784:	eb0000b6 	bl	14a64 <sys_address_v2p>
   14788:	e1a03000 	mov	r3, r0
   1478c:	e1a00003 	mov	r0, r3
   14790:	e24bd004 	sub	sp, fp, #4
   14794:	e8bd8800 	pop	{fp, pc}

00014798 <guest_idle>:
   14798:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   1479c:	e28db000 	add	fp, sp, #0
   147a0:	ef00001c 	svc	0x0000001c
   147a4:	e28bd000 	add	sp, fp, #0
   147a8:	e8bd0800 	ldmfd	sp!, {fp}
   147ac:	e12fff1e 	bx	lr

000147b0 <_guest_os_start>:
   147b0:	e51fd000 	ldr	sp, [pc, #-0]	; 147b8 <_guest_os_start+0x8>
   147b4:	ea000005 	b	147d0 <_guest_os_start_pre>
   147b8:	001bdf50 	andseq	sp, fp, r0, asr pc
   147bc:	00018634 	andeq	r8, r1, r4, lsr r6
   147c0:	00018634 	andeq	r8, r1, r4, lsr r6
   147c4:	00018634 	andeq	r8, r1, r4, lsr r6
   147c8:	0019bf4c 	andseq	fp, r9, ip, asr #30
   147cc:	001bdf50 	andseq	sp, fp, r0, asr pc

000147d0 <_guest_os_start_pre>:
   147d0:	e3a00000 	mov	r0, #0
   147d4:	e51f1020 	ldr	r1, [pc, #-32]	; 147bc <_guest_os_start+0xc>
   147d8:	e51f2020 	ldr	r2, [pc, #-32]	; 147c0 <_guest_os_start+0x10>
   147dc:	e1510002 	cmp	r1, r2
   147e0:	aa000001 	bge	147ec <_guest_os_start_pre+0x1c>
   147e4:	e4810004 	str	r0, [r1], #4
   147e8:	eafffffb 	b	147dc <_guest_os_start_pre+0xc>
   147ec:	e51f1030 	ldr	r1, [pc, #-48]	; 147c4 <_guest_os_start+0x14>
   147f0:	e51f2030 	ldr	r2, [pc, #-48]	; 147c8 <_guest_os_start+0x18>
   147f4:	e1510002 	cmp	r1, r2
   147f8:	aa000001 	bge	14804 <_guest_os_start_pre+0x34>
   147fc:	e4810004 	str	r0, [r1], #4
   14800:	eafffffb 	b	147f4 <_guest_os_start_pre+0x24>
   14804:	e51fd040 	ldr	sp, [pc, #-64]	; 147cc <_guest_os_start+0x1c>
   14808:	eb000773 	bl	165dc <__libc_init_array>
   1480c:	e3a00000 	mov	r0, #0
   14810:	e3a01000 	mov	r1, #0
   14814:	eb00009f 	bl	14a98 <main>
   14818:	eb000760 	bl	165a0 <__libc_fini_array>
   1481c:	eb000752 	bl	1656c <exit>
   14820:	eafffffe 	b	14820 <_guest_os_start_pre+0x50>

00014824 <Xil_Time_SetTime>:
   14824:	e92d4830 	push	{r4, r5, fp, lr}
   14828:	e28db00c 	add	fp, sp, #12
   1482c:	e24dd008 	sub	sp, sp, #8
   14830:	e14b01f4 	strd	r0, [fp, #-20]	; 0xffffffec
   14834:	e3a00f82 	mov	r0, #520	; 0x208
   14838:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   1483c:	e3a01000 	mov	r1, #0
   14840:	eb000365 	bl	155dc <Xil_Out32>
   14844:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   14848:	e3a00c02 	mov	r0, #512	; 0x200
   1484c:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   14850:	e1a01003 	mov	r1, r3
   14854:	eb000360 	bl	155dc <Xil_Out32>
   14858:	e51b3010 	ldr	r3, [fp, #-16]
   1485c:	e1a04003 	mov	r4, r3
   14860:	e3a05000 	mov	r5, #0
   14864:	e1a03004 	mov	r3, r4
   14868:	e3a00f81 	mov	r0, #516	; 0x204
   1486c:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   14870:	e1a01003 	mov	r1, r3
   14874:	eb000358 	bl	155dc <Xil_Out32>
   14878:	e3a00f82 	mov	r0, #520	; 0x208
   1487c:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   14880:	e3a01001 	mov	r1, #1
   14884:	eb000354 	bl	155dc <Xil_Out32>
   14888:	e24bd00c 	sub	sp, fp, #12
   1488c:	e8bd8830 	pop	{r4, r5, fp, pc}

00014890 <timeprint_low>:
   14890:	e92d4800 	push	{fp, lr}
   14894:	e28db004 	add	fp, sp, #4
   14898:	e24dd008 	sub	sp, sp, #8
   1489c:	e3a00c02 	mov	r0, #512	; 0x200
   148a0:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   148a4:	eb000343 	bl	155b8 <Xil_In32>
   148a8:	e1a03000 	mov	r3, r0
   148ac:	e50b3008 	str	r3, [fp, #-8]
   148b0:	e3070a7c 	movw	r0, #31356	; 0x7a7c
   148b4:	e3400001 	movt	r0, #1
   148b8:	e51b1008 	ldr	r1, [fp, #-8]
   148bc:	eb0003c7 	bl	157e0 <xil_printf>
   148c0:	e24bd004 	sub	sp, fp, #4
   148c4:	e8bd8800 	pop	{fp, pc}

000148c8 <syscall>:
   148c8:	e92d4000 	stmfd	sp!, {lr}
   148cc:	ef000000 	svc	0x00000000
   148d0:	e8bd8000 	ldmfd	sp!, {pc}

000148d4 <sys_yield>:
   148d4:	e92d4800 	push	{fp, lr}
   148d8:	e28db004 	add	fp, sp, #4
   148dc:	e3a00001 	mov	r0, #1
   148e0:	e3a01000 	mov	r1, #0
   148e4:	e3a02000 	mov	r2, #0
   148e8:	e3a03000 	mov	r3, #0
   148ec:	ebfffff5 	bl	148c8 <syscall>
   148f0:	e8bd8800 	pop	{fp, pc}

000148f4 <sys_dcache_disable>:
   148f4:	e92d4800 	push	{fp, lr}
   148f8:	e28db004 	add	fp, sp, #4
   148fc:	e3a00003 	mov	r0, #3
   14900:	e3a01000 	mov	r1, #0
   14904:	e3a02000 	mov	r2, #0
   14908:	e3a03000 	mov	r3, #0
   1490c:	ebffffed 	bl	148c8 <syscall>
   14910:	e8bd8800 	pop	{fp, pc}

00014914 <sys_icache_disable>:
   14914:	e92d4800 	push	{fp, lr}
   14918:	e28db004 	add	fp, sp, #4
   1491c:	e3a00004 	mov	r0, #4
   14920:	e3a01000 	mov	r1, #0
   14924:	e3a02000 	mov	r2, #0
   14928:	e3a03000 	mov	r3, #0
   1492c:	ebffffe5 	bl	148c8 <syscall>
   14930:	e8bd8800 	pop	{fp, pc}

00014934 <sys_dcache_enable>:
   14934:	e92d4800 	push	{fp, lr}
   14938:	e28db004 	add	fp, sp, #4
   1493c:	e3a00005 	mov	r0, #5
   14940:	e3a01000 	mov	r1, #0
   14944:	e3a02000 	mov	r2, #0
   14948:	e3a03000 	mov	r3, #0
   1494c:	ebffffdd 	bl	148c8 <syscall>
   14950:	e8bd8800 	pop	{fp, pc}

00014954 <sys_icache_enable>:
   14954:	e92d4800 	push	{fp, lr}
   14958:	e28db004 	add	fp, sp, #4
   1495c:	e3a00006 	mov	r0, #6
   14960:	e3a01000 	mov	r1, #0
   14964:	e3a02000 	mov	r2, #0
   14968:	e3a03000 	mov	r3, #0
   1496c:	ebffffd5 	bl	148c8 <syscall>
   14970:	e8bd8800 	pop	{fp, pc}

00014974 <sys_virq_ctrl>:
   14974:	e92d4800 	push	{fp, lr}
   14978:	e28db004 	add	fp, sp, #4
   1497c:	e24dd010 	sub	sp, sp, #16
   14980:	e50b0008 	str	r0, [fp, #-8]
   14984:	e50b100c 	str	r1, [fp, #-12]
   14988:	e50b2010 	str	r2, [fp, #-16]
   1498c:	e51b3008 	ldr	r3, [fp, #-8]
   14990:	e3a00008 	mov	r0, #8
   14994:	e1a01003 	mov	r1, r3
   14998:	e51b200c 	ldr	r2, [fp, #-12]
   1499c:	e51b3010 	ldr	r3, [fp, #-16]
   149a0:	ebffffc8 	bl	148c8 <syscall>
   149a4:	e1a03000 	mov	r3, r0
   149a8:	e1a00003 	mov	r0, r3
   149ac:	e24bd004 	sub	sp, fp, #4
   149b0:	e8bd8800 	pop	{fp, pc}

000149b4 <sys_vtimer_ctrl>:
   149b4:	e92d4800 	push	{fp, lr}
   149b8:	e28db004 	add	fp, sp, #4
   149bc:	e24dd010 	sub	sp, sp, #16
   149c0:	e50b0008 	str	r0, [fp, #-8]
   149c4:	e50b100c 	str	r1, [fp, #-12]
   149c8:	e50b2010 	str	r2, [fp, #-16]
   149cc:	e51b1008 	ldr	r1, [fp, #-8]
   149d0:	e51b200c 	ldr	r2, [fp, #-12]
   149d4:	e51b3010 	ldr	r3, [fp, #-16]
   149d8:	e3a0000b 	mov	r0, #11
   149dc:	ebffffb9 	bl	148c8 <syscall>
   149e0:	e24bd004 	sub	sp, fp, #4
   149e4:	e8bd8800 	pop	{fp, pc}

000149e8 <sys_mbox_post>:
   149e8:	e92d4800 	push	{fp, lr}
   149ec:	e28db004 	add	fp, sp, #4
   149f0:	e24dd008 	sub	sp, sp, #8
   149f4:	e50b0008 	str	r0, [fp, #-8]
   149f8:	e50b100c 	str	r1, [fp, #-12]
   149fc:	e51b3008 	ldr	r3, [fp, #-8]
   14a00:	e3a0000d 	mov	r0, #13
   14a04:	e1a01003 	mov	r1, r3
   14a08:	e51b200c 	ldr	r2, [fp, #-12]
   14a0c:	e3a03000 	mov	r3, #0
   14a10:	ebffffac 	bl	148c8 <syscall>
   14a14:	e1a03000 	mov	r3, r0
   14a18:	e1a00003 	mov	r0, r3
   14a1c:	e24bd004 	sub	sp, fp, #4
   14a20:	e8bd8800 	pop	{fp, pc}

00014a24 <sys_mbox_read>:
   14a24:	e92d4800 	push	{fp, lr}
   14a28:	e28db004 	add	fp, sp, #4
   14a2c:	e24dd008 	sub	sp, sp, #8
   14a30:	e50b0008 	str	r0, [fp, #-8]
   14a34:	e50b100c 	str	r1, [fp, #-12]
   14a38:	e51b2008 	ldr	r2, [fp, #-8]
   14a3c:	e51b300c 	ldr	r3, [fp, #-12]
   14a40:	e3a0000e 	mov	r0, #14
   14a44:	e1a01002 	mov	r1, r2
   14a48:	e1a02003 	mov	r2, r3
   14a4c:	e3a03000 	mov	r3, #0
   14a50:	ebffff9c 	bl	148c8 <syscall>
   14a54:	e1a03000 	mov	r3, r0
   14a58:	e1a00003 	mov	r0, r3
   14a5c:	e24bd004 	sub	sp, fp, #4
   14a60:	e8bd8800 	pop	{fp, pc}

00014a64 <sys_address_v2p>:
   14a64:	e92d4800 	push	{fp, lr}
   14a68:	e28db004 	add	fp, sp, #4
   14a6c:	e24dd008 	sub	sp, sp, #8
   14a70:	e50b0008 	str	r0, [fp, #-8]
   14a74:	e3a0001a 	mov	r0, #26
   14a78:	e51b1008 	ldr	r1, [fp, #-8]
   14a7c:	e3a02000 	mov	r2, #0
   14a80:	e3a03000 	mov	r3, #0
   14a84:	ebffff8f 	bl	148c8 <syscall>
   14a88:	e1a03000 	mov	r3, r0
   14a8c:	e1a00003 	mov	r0, r3
   14a90:	e24bd004 	sub	sp, fp, #4
   14a94:	e8bd8800 	pop	{fp, pc}

00014a98 <main>:
   14a98:	e92d4800 	push	{fp, lr}
   14a9c:	e28db004 	add	fp, sp, #4
   14aa0:	e3070a80 	movw	r0, #31360	; 0x7a80
   14aa4:	e3400001 	movt	r0, #1
   14aa8:	eb0000f0 	bl	14e70 <print>
   14aac:	e30b3ed4 	movw	r3, #48852	; 0xbed4
   14ab0:	e3403019 	movt	r3, #25
   14ab4:	e30f04b4 	movw	r0, #62644	; 0xf4b4
   14ab8:	e3400000 	movt	r0, #0
   14abc:	e1a01003 	mov	r1, r3
   14ac0:	ebfffed3 	bl	14614 <guest_IRQ_Register>
   14ac4:	ebfffeba 	bl	145b4 <guest_CPU_IntDis>
   14ac8:	ebfffbf0 	bl	13a90 <BSP_Init>
   14acc:	ebfffa6b 	bl	13480 <CPU_Init>
   14ad0:	eb000096 	bl	14d30 <AppPrintWelcomeMsg>
   14ad4:	ebffcfc1 	bl	89e0 <OSInit>
   14ad8:	eb000018 	bl	14b40 <TMTaskStart>
   14adc:	ebffd07d 	bl	8cd8 <OSStart>
   14ae0:	e3a03000 	mov	r3, #0
   14ae4:	e1a00003 	mov	r0, r3
   14ae8:	e8bd8800 	pop	{fp, pc}

00014aec <AppTaskStart>:
   14aec:	e92d4800 	push	{fp, lr}
   14af0:	e28db004 	add	fp, sp, #4
   14af4:	e24dd008 	sub	sp, sp, #8
   14af8:	e50b0008 	str	r0, [fp, #-8]
   14afc:	e3070aa0 	movw	r0, #31392	; 0x7aa0
   14b00:	e3400001 	movt	r0, #1
   14b04:	eb0000d9 	bl	14e70 <print>
   14b08:	ebffec56 	bl	fc68 <guest_OS_CSP_TickInit>
   14b0c:	ebffee65 	bl	104a8 <Mem_Init>
   14b10:	ebffee26 	bl	103b0 <Math_Init>
   14b14:	eb000043 	bl	14c28 <AppMutexCreate>
   14b18:	eb000019 	bl	14b84 <AppTaskCreate>
   14b1c:	e3a00000 	mov	r0, #0
   14b20:	e3a01000 	mov	r1, #0
   14b24:	e3a02000 	mov	r2, #0
   14b28:	e3a03064 	mov	r3, #100	; 0x64
   14b2c:	ebffe925 	bl	efc8 <OSTimeDlyHMSM>
   14b30:	e3070ab8 	movw	r0, #31416	; 0x7ab8
   14b34:	e3400001 	movt	r0, #1
   14b38:	eb000067 	bl	14cdc <AppPrint>
   14b3c:	eafffff6 	b	14b1c <AppTaskStart+0x30>

00014b40 <TMTaskStart>:
   14b40:	e92d4800 	push	{fp, lr}
   14b44:	e28db004 	add	fp, sp, #4
   14b48:	e24dd008 	sub	sp, sp, #8
   14b4c:	e50b0008 	str	r0, [fp, #-8]
   14b50:	e3070aa0 	movw	r0, #31392	; 0x7aa0
   14b54:	e3400001 	movt	r0, #1
   14b58:	eb0000c4 	bl	14e70 <print>
   14b5c:	ebffec41 	bl	fc68 <guest_OS_CSP_TickInit>
   14b60:	ebffee50 	bl	104a8 <Mem_Init>
   14b64:	ebffee11 	bl	103b0 <Math_Init>
   14b68:	ebfffc50 	bl	13cb0 <tm_main>
   14b6c:	e3070abc 	movw	r0, #31420	; 0x7abc
   14b70:	e3400001 	movt	r0, #1
   14b74:	eb0000bd 	bl	14e70 <print>
   14b78:	eb00002a 	bl	14c28 <AppMutexCreate>
   14b7c:	e24bd004 	sub	sp, fp, #4
   14b80:	e8bd8800 	pop	{fp, pc}

00014b84 <AppTaskCreate>:
   14b84:	e92d4800 	push	{fp, lr}
   14b88:	e28db004 	add	fp, sp, #4
   14b8c:	e24dd018 	sub	sp, sp, #24
   14b90:	e3a03003 	mov	r3, #3
   14b94:	e58d3000 	str	r3, [sp]
   14b98:	e3093e50 	movw	r3, #40528	; 0x9e50
   14b9c:	e3403001 	movt	r3, #1
   14ba0:	e58d3004 	str	r3, [sp, #4]
   14ba4:	e3a03c02 	mov	r3, #512	; 0x200
   14ba8:	e58d3008 	str	r3, [sp, #8]
   14bac:	e3a03000 	mov	r3, #0
   14bb0:	e58d300c 	str	r3, [sp, #12]
   14bb4:	e3a03003 	mov	r3, #3
   14bb8:	e58d3010 	str	r3, [sp, #16]
   14bbc:	e3040c5c 	movw	r0, #19548	; 0x4c5c
   14bc0:	e3400001 	movt	r0, #1
   14bc4:	e3a01000 	mov	r1, #0
   14bc8:	e59f2050 	ldr	r2, [pc, #80]	; 14c20 <AppTaskCreate+0x9c>
   14bcc:	e3a03003 	mov	r3, #3
   14bd0:	ebffe4d9 	bl	df3c <OSTaskCreateExt>
   14bd4:	e3a03004 	mov	r3, #4
   14bd8:	e58d3000 	str	r3, [sp]
   14bdc:	e30a3650 	movw	r3, #42576	; 0xa650
   14be0:	e3403001 	movt	r3, #1
   14be4:	e58d3004 	str	r3, [sp, #4]
   14be8:	e3a03c02 	mov	r3, #512	; 0x200
   14bec:	e58d3008 	str	r3, [sp, #8]
   14bf0:	e3a03000 	mov	r3, #0
   14bf4:	e58d300c 	str	r3, [sp, #12]
   14bf8:	e3a03003 	mov	r3, #3
   14bfc:	e58d3010 	str	r3, [sp, #16]
   14c00:	e3040c9c 	movw	r0, #19612	; 0x4c9c
   14c04:	e3400001 	movt	r0, #1
   14c08:	e3a01000 	mov	r1, #0
   14c0c:	e59f2010 	ldr	r2, [pc, #16]	; 14c24 <AppTaskCreate+0xa0>
   14c10:	e3a03004 	mov	r3, #4
   14c14:	ebffe4c8 	bl	df3c <OSTaskCreateExt>
   14c18:	e24bd004 	sub	sp, fp, #4
   14c1c:	e8bd8800 	pop	{fp, pc}
   14c20:	0001a64c 	andeq	sl, r1, ip, asr #12
   14c24:	0001ae4c 	andeq	sl, r1, ip, asr #28

00014c28 <AppMutexCreate>:
   14c28:	e92d4800 	push	{fp, lr}
   14c2c:	e28db004 	add	fp, sp, #4
   14c30:	e24dd008 	sub	sp, sp, #8
   14c34:	e24b3005 	sub	r3, fp, #5
   14c38:	e3a00014 	mov	r0, #20
   14c3c:	e1a01003 	mov	r1, r3
   14c40:	ebffd944 	bl	b158 <OSMutexCreate>
   14c44:	e1a02000 	mov	r2, r0
   14c48:	e30b3ed0 	movw	r3, #48848	; 0xbed0
   14c4c:	e3403019 	movt	r3, #25
   14c50:	e5832000 	str	r2, [r3]
   14c54:	e24bd004 	sub	sp, fp, #4
   14c58:	e8bd8800 	pop	{fp, pc}

00014c5c <AppTask1>:
   14c5c:	e92d4800 	push	{fp, lr}
   14c60:	e28db004 	add	fp, sp, #4
   14c64:	e24dd008 	sub	sp, sp, #8
   14c68:	e50b0008 	str	r0, [fp, #-8]
   14c6c:	e3070acc 	movw	r0, #31436	; 0x7acc
   14c70:	e3400001 	movt	r0, #1
   14c74:	eb000018 	bl	14cdc <AppPrint>
   14c78:	e3a00000 	mov	r0, #0
   14c7c:	e3a01000 	mov	r1, #0
   14c80:	e3a02001 	mov	r2, #1
   14c84:	e3a03000 	mov	r3, #0
   14c88:	ebffe8ce 	bl	efc8 <OSTimeDlyHMSM>
   14c8c:	e3070ae0 	movw	r0, #31456	; 0x7ae0
   14c90:	e3400001 	movt	r0, #1
   14c94:	eb000010 	bl	14cdc <AppPrint>
   14c98:	eafffff6 	b	14c78 <AppTask1+0x1c>

00014c9c <AppTask2>:
   14c9c:	e92d4800 	push	{fp, lr}
   14ca0:	e28db004 	add	fp, sp, #4
   14ca4:	e24dd008 	sub	sp, sp, #8
   14ca8:	e50b0008 	str	r0, [fp, #-8]
   14cac:	e3070ae4 	movw	r0, #31460	; 0x7ae4
   14cb0:	e3400001 	movt	r0, #1
   14cb4:	eb000008 	bl	14cdc <AppPrint>
   14cb8:	e3a00000 	mov	r0, #0
   14cbc:	e3a01000 	mov	r1, #0
   14cc0:	e3a02002 	mov	r2, #2
   14cc4:	e3a03000 	mov	r3, #0
   14cc8:	ebffe8be 	bl	efc8 <OSTimeDlyHMSM>
   14ccc:	e3070af8 	movw	r0, #31480	; 0x7af8
   14cd0:	e3400001 	movt	r0, #1
   14cd4:	eb000000 	bl	14cdc <AppPrint>
   14cd8:	eafffff6 	b	14cb8 <AppTask2+0x1c>

00014cdc <AppPrint>:
   14cdc:	e92d4800 	push	{fp, lr}
   14ce0:	e28db004 	add	fp, sp, #4
   14ce4:	e24dd010 	sub	sp, sp, #16
   14ce8:	e50b0010 	str	r0, [fp, #-16]
   14cec:	e30b3ed0 	movw	r3, #48848	; 0xbed0
   14cf0:	e3403019 	movt	r3, #25
   14cf4:	e5932000 	ldr	r2, [r3]
   14cf8:	e24b3005 	sub	r3, fp, #5
   14cfc:	e1a00002 	mov	r0, r2
   14d00:	e3a01000 	mov	r1, #0
   14d04:	e1a02003 	mov	r2, r3
   14d08:	ebffda33 	bl	b5dc <OSMutexPend>
   14d0c:	e51b0010 	ldr	r0, [fp, #-16]
   14d10:	eb000056 	bl	14e70 <print>
   14d14:	e30b3ed0 	movw	r3, #48848	; 0xbed0
   14d18:	e3403019 	movt	r3, #25
   14d1c:	e5933000 	ldr	r3, [r3]
   14d20:	e1a00003 	mov	r0, r3
   14d24:	ebffdba9 	bl	bbd0 <OSMutexPost>
   14d28:	e24bd004 	sub	sp, fp, #4
   14d2c:	e8bd8800 	pop	{fp, pc}

00014d30 <AppPrintWelcomeMsg>:
   14d30:	e92d4800 	push	{fp, lr}
   14d34:	e28db004 	add	fp, sp, #4
   14d38:	e3070afc 	movw	r0, #31484	; 0x7afc
   14d3c:	e3400001 	movt	r0, #1
   14d40:	eb00004a 	bl	14e70 <print>
   14d44:	e3070b00 	movw	r0, #31488	; 0x7b00
   14d48:	e3400001 	movt	r0, #1
   14d4c:	eb000047 	bl	14e70 <print>
   14d50:	e3070b0c 	movw	r0, #31500	; 0x7b0c
   14d54:	e3400001 	movt	r0, #1
   14d58:	eb000044 	bl	14e70 <print>
   14d5c:	e3070b18 	movw	r0, #31512	; 0x7b18
   14d60:	e3400001 	movt	r0, #1
   14d64:	eb000041 	bl	14e70 <print>
   14d68:	e3070b4c 	movw	r0, #31564	; 0x7b4c
   14d6c:	e3400001 	movt	r0, #1
   14d70:	eb00003e 	bl	14e70 <print>
   14d74:	e3070b88 	movw	r0, #31624	; 0x7b88
   14d78:	e3400001 	movt	r0, #1
   14d7c:	eb00003b 	bl	14e70 <print>
   14d80:	e3070bc4 	movw	r0, #31684	; 0x7bc4
   14d84:	e3400001 	movt	r0, #1
   14d88:	eb000038 	bl	14e70 <print>
   14d8c:	e3070c00 	movw	r0, #31744	; 0x7c00
   14d90:	e3400001 	movt	r0, #1
   14d94:	eb000035 	bl	14e70 <print>
   14d98:	e3070c34 	movw	r0, #31796	; 0x7c34
   14d9c:	e3400001 	movt	r0, #1
   14da0:	eb000032 	bl	14e70 <print>
   14da4:	e3070c60 	movw	r0, #31840	; 0x7c60
   14da8:	e3400001 	movt	r0, #1
   14dac:	eb00002f 	bl	14e70 <print>
   14db0:	e8bd8800 	pop	{fp, pc}

00014db4 <App_TaskCreateHook>:
   14db4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   14db8:	e28db000 	add	fp, sp, #0
   14dbc:	e24dd00c 	sub	sp, sp, #12
   14dc0:	e50b0008 	str	r0, [fp, #-8]
   14dc4:	e28bd000 	add	sp, fp, #0
   14dc8:	e8bd0800 	ldmfd	sp!, {fp}
   14dcc:	e12fff1e 	bx	lr

00014dd0 <App_TaskDelHook>:
   14dd0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   14dd4:	e28db000 	add	fp, sp, #0
   14dd8:	e24dd00c 	sub	sp, sp, #12
   14ddc:	e50b0008 	str	r0, [fp, #-8]
   14de0:	e28bd000 	add	sp, fp, #0
   14de4:	e8bd0800 	ldmfd	sp!, {fp}
   14de8:	e12fff1e 	bx	lr

00014dec <App_TaskIdleHook>:
   14dec:	e92d4800 	push	{fp, lr}
   14df0:	e28db004 	add	fp, sp, #4
   14df4:	ebfffe67 	bl	14798 <guest_idle>
   14df8:	e8bd8800 	pop	{fp, pc}

00014dfc <App_TaskReturnHook>:
   14dfc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   14e00:	e28db000 	add	fp, sp, #0
   14e04:	e24dd00c 	sub	sp, sp, #12
   14e08:	e50b0008 	str	r0, [fp, #-8]
   14e0c:	e28bd000 	add	sp, fp, #0
   14e10:	e8bd0800 	ldmfd	sp!, {fp}
   14e14:	e12fff1e 	bx	lr

00014e18 <App_TaskStatHook>:
   14e18:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   14e1c:	e28db000 	add	fp, sp, #0
   14e20:	e28bd000 	add	sp, fp, #0
   14e24:	e8bd0800 	ldmfd	sp!, {fp}
   14e28:	e12fff1e 	bx	lr

00014e2c <App_TaskSwHook>:
   14e2c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   14e30:	e28db000 	add	fp, sp, #0
   14e34:	e28bd000 	add	sp, fp, #0
   14e38:	e8bd0800 	ldmfd	sp!, {fp}
   14e3c:	e12fff1e 	bx	lr

00014e40 <App_TCBInitHook>:
   14e40:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   14e44:	e28db000 	add	fp, sp, #0
   14e48:	e24dd00c 	sub	sp, sp, #12
   14e4c:	e50b0008 	str	r0, [fp, #-8]
   14e50:	e28bd000 	add	sp, fp, #0
   14e54:	e8bd0800 	ldmfd	sp!, {fp}
   14e58:	e12fff1e 	bx	lr

00014e5c <App_TimeTickHook>:
   14e5c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   14e60:	e28db000 	add	fp, sp, #0
   14e64:	e28bd000 	add	sp, fp, #0
   14e68:	e8bd0800 	ldmfd	sp!, {fp}
   14e6c:	e12fff1e 	bx	lr

00014e70 <print>:
   14e70:	e92d4010 	push	{r4, lr}
   14e74:	e1a04000 	mov	r4, r0
   14e78:	e5d00000 	ldrb	r0, [r0]
   14e7c:	e3500000 	cmp	r0, #0
   14e80:	08bd8010 	popeq	{r4, pc}
   14e84:	eb000508 	bl	162ac <outbyte>
   14e88:	e5f40001 	ldrb	r0, [r4, #1]!
   14e8c:	e3500000 	cmp	r0, #0
   14e90:	1afffffb 	bne	14e84 <print+0x14>
   14e94:	e8bd8010 	pop	{r4, pc}

00014e98 <Xil_DCacheInvalidateRange>:
   14e98:	e3510000 	cmp	r1, #0
   14e9c:	e92d4008 	push	{r3, lr}
   14ea0:	0a00000c 	beq	14ed8 <Xil_DCacheInvalidateRange+0x40>
   14ea4:	e0813000 	add	r3, r1, r0
   14ea8:	e3a02000 	mov	r2, #0
   14eac:	e3c0001f 	bic	r0, r0, #31
   14eb0:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
   14eb4:	e1530000 	cmp	r3, r0
   14eb8:	9a000006 	bls	14ed8 <Xil_DCacheInvalidateRange+0x40>
   14ebc:	e3a02a02 	mov	r2, #8192	; 0x2000
   14ec0:	e34f28f0 	movt	r2, #63728	; 0xf8f0
   14ec4:	ee070f36 	mcr	15, 0, r0, cr7, cr6, {1}
   14ec8:	e5820770 	str	r0, [r2, #1904]	; 0x770
   14ecc:	e2800020 	add	r0, r0, #32
   14ed0:	e1530000 	cmp	r3, r0
   14ed4:	8afffffa 	bhi	14ec4 <Xil_DCacheInvalidateRange+0x2c>
   14ed8:	f57ff04f 	dsb	sy
   14edc:	e3020730 	movw	r0, #10032	; 0x2730
   14ee0:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   14ee4:	eb0001b3 	bl	155b8 <Xil_In32>
   14ee8:	e3500000 	cmp	r0, #0
   14eec:	1afffffa 	bne	14edc <Xil_DCacheInvalidateRange+0x44>
   14ef0:	e8bd8008 	pop	{r3, pc}

00014ef4 <Xil_DCacheFlushRange>:
   14ef4:	e3510000 	cmp	r1, #0
   14ef8:	e92d4008 	push	{r3, lr}
   14efc:	0a00000c 	beq	14f34 <Xil_DCacheFlushRange+0x40>
   14f00:	e0813000 	add	r3, r1, r0
   14f04:	e3a02000 	mov	r2, #0
   14f08:	e3c0001f 	bic	r0, r0, #31
   14f0c:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
   14f10:	e1530000 	cmp	r3, r0
   14f14:	9a000006 	bls	14f34 <Xil_DCacheFlushRange+0x40>
   14f18:	e3a02a02 	mov	r2, #8192	; 0x2000
   14f1c:	e34f28f0 	movt	r2, #63728	; 0xf8f0
   14f20:	ee070f3e 	mcr	15, 0, r0, cr7, cr14, {1}
   14f24:	e58207f0 	str	r0, [r2, #2032]	; 0x7f0
   14f28:	e2800020 	add	r0, r0, #32
   14f2c:	e1530000 	cmp	r3, r0
   14f30:	8afffffa 	bhi	14f20 <Xil_DCacheFlushRange+0x2c>
   14f34:	f57ff04f 	dsb	sy
   14f38:	e3020730 	movw	r0, #10032	; 0x2730
   14f3c:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   14f40:	eb00019c 	bl	155b8 <Xil_In32>
   14f44:	e3500000 	cmp	r0, #0
   14f48:	1afffffa 	bne	14f38 <Xil_DCacheFlushRange+0x44>
   14f4c:	e8bd8008 	pop	{r3, pc}

00014f50 <Xil_ICacheInvalidateRange>:
   14f50:	e3510000 	cmp	r1, #0
   14f54:	e92d4008 	push	{r3, lr}
   14f58:	0a00000c 	beq	14f90 <Xil_ICacheInvalidateRange+0x40>
   14f5c:	e0813000 	add	r3, r1, r0
   14f60:	e3a02001 	mov	r2, #1
   14f64:	e3c0001f 	bic	r0, r0, #31
   14f68:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
   14f6c:	e1530000 	cmp	r3, r0
   14f70:	9a000006 	bls	14f90 <Xil_ICacheInvalidateRange+0x40>
   14f74:	e3a02a02 	mov	r2, #8192	; 0x2000
   14f78:	e34f28f0 	movt	r2, #63728	; 0xf8f0
   14f7c:	ee070f35 	mcr	15, 0, r0, cr7, cr5, {1}
   14f80:	e5820770 	str	r0, [r2, #1904]	; 0x770
   14f84:	e2800020 	add	r0, r0, #32
   14f88:	e1530000 	cmp	r3, r0
   14f8c:	8afffffa 	bhi	14f7c <Xil_ICacheInvalidateRange+0x2c>
   14f90:	f57ff04f 	dsb	sy
   14f94:	e3020730 	movw	r0, #10032	; 0x2730
   14f98:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   14f9c:	eb000185 	bl	155b8 <Xil_In32>
   14fa0:	e3500000 	cmp	r0, #0
   14fa4:	1afffffa 	bne	14f94 <Xil_ICacheInvalidateRange+0x44>
   14fa8:	e8bd8008 	pop	{r3, pc}

00014fac <Xil_L1DCacheInvalidate>:
   14fac:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   14fb0:	e3a03000 	mov	r3, #0
   14fb4:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
   14fb8:	f57ff06f 	isb	sy
   14fbc:	ee304f10 	mrc	15, 1, r4, cr0, cr0, {0}
   14fc0:	e7e806d4 	ubfx	r0, r4, #13, #9
   14fc4:	e7e681d4 	ubfx	r8, r4, #3, #7
   14fc8:	e2800001 	add	r0, r0, #1
   14fcc:	e2888001 	add	r8, r8, #1
   14fd0:	e3a05001 	mov	r5, #1
   14fd4:	e3a06000 	mov	r6, #0
   14fd8:	e1a01008 	mov	r1, r8
   14fdc:	e1a00380 	lsl	r0, r0, #7
   14fe0:	eb0004dd 	bl	1635c <__aeabi_uidiv>
   14fe4:	e2043007 	and	r3, r4, #7
   14fe8:	e2833004 	add	r3, r3, #4
   14fec:	e1a07006 	mov	r7, r6
   14ff0:	e1a05315 	lsl	r5, r5, r3
   14ff4:	e1a00330 	lsr	r0, r0, r3
   14ff8:	e2401001 	sub	r1, r0, #1
   14ffc:	e0215195 	mla	r1, r5, r1, r5
   15000:	e3500000 	cmp	r0, #0
   15004:	e1a04f06 	lsl	r4, r6, #30
   15008:	11a02007 	movne	r2, r7
   1500c:	13a03000 	movne	r3, #0
   15010:	0a000006 	beq	15030 <Xil_L1DCacheInvalidate+0x84>
   15014:	e182c004 	orr	ip, r2, r4
   15018:	ee07cf56 	mcr	15, 0, ip, cr7, cr6, {2}
   1501c:	e2833001 	add	r3, r3, #1
   15020:	e0822005 	add	r2, r2, r5
   15024:	e1530000 	cmp	r3, r0
   15028:	1afffff9 	bne	15014 <Xil_L1DCacheInvalidate+0x68>
   1502c:	e0877001 	add	r7, r7, r1
   15030:	e2866001 	add	r6, r6, #1
   15034:	e1580006 	cmp	r8, r6
   15038:	8afffff0 	bhi	15000 <Xil_L1DCacheInvalidate+0x54>
   1503c:	f57ff04f 	dsb	sy
   15040:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

00015044 <Xil_L1DCacheEnable>:
   15044:	e92d4010 	push	{r4, lr}
   15048:	ee114f10 	mrc	15, 0, r4, cr1, cr0, {0}
   1504c:	e3140004 	tst	r4, #4
   15050:	18bd8010 	popne	{r4, pc}
   15054:	ebffffd4 	bl	14fac <Xil_L1DCacheInvalidate>
   15058:	e3844004 	orr	r4, r4, #4
   1505c:	ee014f10 	mcr	15, 0, r4, cr1, cr0, {0}
   15060:	e8bd8010 	pop	{r4, pc}

00015064 <Xil_L1DCacheInvalidateLine>:
   15064:	e3a03000 	mov	r3, #0
   15068:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
   1506c:	e3c0001f 	bic	r0, r0, #31
   15070:	ee070f36 	mcr	15, 0, r0, cr7, cr6, {1}
   15074:	f57ff04f 	dsb	sy
   15078:	e12fff1e 	bx	lr

0001507c <Xil_L1DCacheInvalidateRange>:
   1507c:	e3510000 	cmp	r1, #0
   15080:	0a000009 	beq	150ac <Xil_L1DCacheInvalidateRange+0x30>
   15084:	e0813000 	add	r3, r1, r0
   15088:	e3a02000 	mov	r2, #0
   1508c:	e3c0001f 	bic	r0, r0, #31
   15090:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
   15094:	e1530000 	cmp	r3, r0
   15098:	9a000003 	bls	150ac <Xil_L1DCacheInvalidateRange+0x30>
   1509c:	ee070f36 	mcr	15, 0, r0, cr7, cr6, {1}
   150a0:	e2800020 	add	r0, r0, #32
   150a4:	e1530000 	cmp	r3, r0
   150a8:	8afffffb 	bhi	1509c <Xil_L1DCacheInvalidateRange+0x20>
   150ac:	f57ff04f 	dsb	sy
   150b0:	e12fff1e 	bx	lr

000150b4 <Xil_L1DCacheFlush>:
   150b4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   150b8:	e3a03000 	mov	r3, #0
   150bc:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
   150c0:	f57ff06f 	isb	sy
   150c4:	ee304f10 	mrc	15, 1, r4, cr0, cr0, {0}
   150c8:	e7e806d4 	ubfx	r0, r4, #13, #9
   150cc:	e7e681d4 	ubfx	r8, r4, #3, #7
   150d0:	e2800001 	add	r0, r0, #1
   150d4:	e2888001 	add	r8, r8, #1
   150d8:	e3a05001 	mov	r5, #1
   150dc:	e3a06000 	mov	r6, #0
   150e0:	e1a01008 	mov	r1, r8
   150e4:	e1a00380 	lsl	r0, r0, #7
   150e8:	eb00049b 	bl	1635c <__aeabi_uidiv>
   150ec:	e2043007 	and	r3, r4, #7
   150f0:	e2833004 	add	r3, r3, #4
   150f4:	e1a07006 	mov	r7, r6
   150f8:	e1a05315 	lsl	r5, r5, r3
   150fc:	e1a00330 	lsr	r0, r0, r3
   15100:	e2401001 	sub	r1, r0, #1
   15104:	e0215195 	mla	r1, r5, r1, r5
   15108:	e3500000 	cmp	r0, #0
   1510c:	e1a04f06 	lsl	r4, r6, #30
   15110:	11a02007 	movne	r2, r7
   15114:	13a03000 	movne	r3, #0
   15118:	0a000006 	beq	15138 <Xil_L1DCacheFlush+0x84>
   1511c:	e182c004 	orr	ip, r2, r4
   15120:	ee07cf5e 	mcr	15, 0, ip, cr7, cr14, {2}
   15124:	e2833001 	add	r3, r3, #1
   15128:	e0822005 	add	r2, r2, r5
   1512c:	e1530000 	cmp	r3, r0
   15130:	1afffff9 	bne	1511c <Xil_L1DCacheFlush+0x68>
   15134:	e0877001 	add	r7, r7, r1
   15138:	e2866001 	add	r6, r6, #1
   1513c:	e1580006 	cmp	r8, r6
   15140:	8afffff0 	bhi	15108 <Xil_L1DCacheFlush+0x54>
   15144:	f57ff04f 	dsb	sy
   15148:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0001514c <Xil_L1DCacheDisable>:
   1514c:	e92d4008 	push	{r3, lr}
   15150:	ebffffd7 	bl	150b4 <Xil_L1DCacheFlush>
   15154:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
   15158:	e3c33004 	bic	r3, r3, #4
   1515c:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
   15160:	e8bd8008 	pop	{r3, pc}

00015164 <Xil_L1DCacheFlushLine>:
   15164:	e3a03000 	mov	r3, #0
   15168:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
   1516c:	e3c0001f 	bic	r0, r0, #31
   15170:	ee070f3e 	mcr	15, 0, r0, cr7, cr14, {1}
   15174:	f57ff04f 	dsb	sy
   15178:	e12fff1e 	bx	lr

0001517c <Xil_L1DCacheFlushRange>:
   1517c:	e3510000 	cmp	r1, #0
   15180:	0a000009 	beq	151ac <Xil_L1DCacheFlushRange+0x30>
   15184:	e0813000 	add	r3, r1, r0
   15188:	e3a02000 	mov	r2, #0
   1518c:	e3c0001f 	bic	r0, r0, #31
   15190:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
   15194:	e1530000 	cmp	r3, r0
   15198:	9a000003 	bls	151ac <Xil_L1DCacheFlushRange+0x30>
   1519c:	ee070f3e 	mcr	15, 0, r0, cr7, cr14, {1}
   151a0:	e2800020 	add	r0, r0, #32
   151a4:	e1530000 	cmp	r3, r0
   151a8:	8afffffb 	bhi	1519c <Xil_L1DCacheFlushRange+0x20>
   151ac:	f57ff04f 	dsb	sy
   151b0:	e12fff1e 	bx	lr

000151b4 <Xil_L1DCacheStoreLine>:
   151b4:	e3a03000 	mov	r3, #0
   151b8:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
   151bc:	e3c0001f 	bic	r0, r0, #31
   151c0:	ee070f3a 	mcr	15, 0, r0, cr7, cr10, {1}
   151c4:	f57ff04f 	dsb	sy
   151c8:	e12fff1e 	bx	lr

000151cc <Xil_L1ICacheEnable>:
   151cc:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
   151d0:	e2132a01 	ands	r2, r3, #4096	; 0x1000
   151d4:	112fff1e 	bxne	lr
   151d8:	ee072f15 	mcr	15, 0, r2, cr7, cr5, {0}
   151dc:	e3833a01 	orr	r3, r3, #4096	; 0x1000
   151e0:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
   151e4:	e12fff1e 	bx	lr

000151e8 <Xil_L1ICacheDisable>:
   151e8:	f57ff04f 	dsb	sy
   151ec:	e3a03000 	mov	r3, #0
   151f0:	ee073f15 	mcr	15, 0, r3, cr7, cr5, {0}
   151f4:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
   151f8:	e3c33a01 	bic	r3, r3, #4096	; 0x1000
   151fc:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
   15200:	e12fff1e 	bx	lr

00015204 <Xil_L1ICacheInvalidate>:
   15204:	e3a03001 	mov	r3, #1
   15208:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
   1520c:	e3a03000 	mov	r3, #0
   15210:	ee073f15 	mcr	15, 0, r3, cr7, cr5, {0}
   15214:	f57ff04f 	dsb	sy
   15218:	e12fff1e 	bx	lr

0001521c <Xil_L1ICacheInvalidateLine>:
   1521c:	e3a03001 	mov	r3, #1
   15220:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
   15224:	e3c0001f 	bic	r0, r0, #31
   15228:	ee070f35 	mcr	15, 0, r0, cr7, cr5, {1}
   1522c:	f57ff04f 	dsb	sy
   15230:	e12fff1e 	bx	lr

00015234 <Xil_L1ICacheInvalidateRange>:
   15234:	e3510000 	cmp	r1, #0
   15238:	0a000009 	beq	15264 <Xil_L1ICacheInvalidateRange+0x30>
   1523c:	e0813000 	add	r3, r1, r0
   15240:	e3a02001 	mov	r2, #1
   15244:	e3c0001f 	bic	r0, r0, #31
   15248:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
   1524c:	e1530000 	cmp	r3, r0
   15250:	9a000003 	bls	15264 <Xil_L1ICacheInvalidateRange+0x30>
   15254:	ee070f35 	mcr	15, 0, r0, cr7, cr5, {1}
   15258:	e2800020 	add	r0, r0, #32
   1525c:	e1530000 	cmp	r3, r0
   15260:	8afffffb 	bhi	15254 <Xil_L1ICacheInvalidateRange+0x20>
   15264:	f57ff04f 	dsb	sy
   15268:	e12fff1e 	bx	lr

0001526c <Xil_L2CacheEnable>:
   1526c:	e92d4008 	push	{r3, lr}
   15270:	e3a00c21 	mov	r0, #8448	; 0x2100
   15274:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   15278:	eb0000ce 	bl	155b8 <Xil_In32>
   1527c:	e3100001 	tst	r0, #1
   15280:	1a00001e 	bne	15300 <Xil_L2CacheEnable+0x94>
   15284:	e3020104 	movw	r0, #8452	; 0x2104
   15288:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   1528c:	eb0000c9 	bl	155b8 <Xil_In32>
   15290:	e3c0180e 	bic	r1, r0, #917504	; 0xe0000
   15294:	e3020104 	movw	r0, #8452	; 0x2104
   15298:	e3811207 	orr	r1, r1, #1879048192	; 0x70000000
   1529c:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   152a0:	e3811a21 	orr	r1, r1, #135168	; 0x21000
   152a4:	eb0000cc 	bl	155dc <Xil_Out32>
   152a8:	e3001121 	movw	r1, #289	; 0x121
   152ac:	e3020108 	movw	r0, #8456	; 0x2108
   152b0:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   152b4:	eb0000c8 	bl	155dc <Xil_Out32>
   152b8:	e3001121 	movw	r1, #289	; 0x121
   152bc:	e302010c 	movw	r0, #8460	; 0x210c
   152c0:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   152c4:	eb0000c4 	bl	155dc <Xil_Out32>
   152c8:	e302021c 	movw	r0, #8732	; 0x221c
   152cc:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   152d0:	eb0000b8 	bl	155b8 <Xil_In32>
   152d4:	e1a01000 	mov	r1, r0
   152d8:	e3020220 	movw	r0, #8736	; 0x2220
   152dc:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   152e0:	eb0000bd 	bl	155dc <Xil_Out32>
   152e4:	e3a00c21 	mov	r0, #8448	; 0x2100
   152e8:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   152ec:	eb0000b1 	bl	155b8 <Xil_In32>
   152f0:	e3801001 	orr	r1, r0, #1
   152f4:	e3a00c21 	mov	r0, #8448	; 0x2100
   152f8:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   152fc:	eb0000b6 	bl	155dc <Xil_Out32>
   15300:	f57ff04f 	dsb	sy
   15304:	e8bd8008 	pop	{r3, pc}

00015308 <Xil_ICacheEnable>:
   15308:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
   1530c:	e2132a01 	ands	r2, r3, #4096	; 0x1000
   15310:	1a000002 	bne	15320 <Xil_ICacheEnable+0x18>
   15314:	ee072f15 	mcr	15, 0, r2, cr7, cr5, {0}
   15318:	e3833a01 	orr	r3, r3, #4096	; 0x1000
   1531c:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
   15320:	eaffffd1 	b	1526c <Xil_L2CacheEnable>

00015324 <Xil_DCacheEnable>:
   15324:	e92d4008 	push	{r3, lr}
   15328:	ebffff45 	bl	15044 <Xil_L1DCacheEnable>
   1532c:	e8bd4008 	pop	{r3, lr}
   15330:	eaffffcd 	b	1526c <Xil_L2CacheEnable>

00015334 <Xil_L2CacheDisable>:
   15334:	e30207fc 	movw	r0, #10236	; 0x27fc
   15338:	e30f1fff 	movw	r1, #65535	; 0xffff
   1533c:	e92d4008 	push	{r3, lr}
   15340:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   15344:	eb0000a4 	bl	155dc <Xil_Out32>
   15348:	e3020730 	movw	r0, #10032	; 0x2730
   1534c:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   15350:	eb000098 	bl	155b8 <Xil_In32>
   15354:	e3500000 	cmp	r0, #0
   15358:	1afffffa 	bne	15348 <Xil_L2CacheDisable+0x14>
   1535c:	f57ff04f 	dsb	sy
   15360:	e3a00c21 	mov	r0, #8448	; 0x2100
   15364:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   15368:	eb000092 	bl	155b8 <Xil_In32>
   1536c:	e3c01001 	bic	r1, r0, #1
   15370:	e3a00c21 	mov	r0, #8448	; 0x2100
   15374:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   15378:	e8bd4008 	pop	{r3, lr}
   1537c:	ea000096 	b	155dc <Xil_Out32>

00015380 <Xil_ICacheDisable>:
   15380:	e92d4008 	push	{r3, lr}
   15384:	ebffffea 	bl	15334 <Xil_L2CacheDisable>
   15388:	f57ff04f 	dsb	sy
   1538c:	e3a03000 	mov	r3, #0
   15390:	ee073f15 	mcr	15, 0, r3, cr7, cr5, {0}
   15394:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
   15398:	e3c33a01 	bic	r3, r3, #4096	; 0x1000
   1539c:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
   153a0:	e8bd8008 	pop	{r3, pc}

000153a4 <Xil_DCacheDisable>:
   153a4:	e92d4008 	push	{r3, lr}
   153a8:	ebffffe1 	bl	15334 <Xil_L2CacheDisable>
   153ac:	e8bd4008 	pop	{r3, lr}
   153b0:	eaffff65 	b	1514c <Xil_L1DCacheDisable>

000153b4 <Xil_L2CacheInvalidate>:
   153b4:	e302077c 	movw	r0, #10108	; 0x277c
   153b8:	e30f1fff 	movw	r1, #65535	; 0xffff
   153bc:	e92d4008 	push	{r3, lr}
   153c0:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   153c4:	eb000084 	bl	155dc <Xil_Out32>
   153c8:	e3020730 	movw	r0, #10032	; 0x2730
   153cc:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   153d0:	eb000078 	bl	155b8 <Xil_In32>
   153d4:	e3500000 	cmp	r0, #0
   153d8:	1afffffa 	bne	153c8 <Xil_L2CacheInvalidate+0x14>
   153dc:	f57ff04f 	dsb	sy
   153e0:	e8bd8008 	pop	{r3, pc}

000153e4 <Xil_ICacheInvalidate>:
   153e4:	e3a03001 	mov	r3, #1
   153e8:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
   153ec:	e3a03000 	mov	r3, #0
   153f0:	ee073f15 	mcr	15, 0, r3, cr7, cr5, {0}
   153f4:	f57ff04f 	dsb	sy
   153f8:	eaffffed 	b	153b4 <Xil_L2CacheInvalidate>

000153fc <Xil_DCacheInvalidate>:
   153fc:	e92d4008 	push	{r3, lr}
   15400:	ebfffee9 	bl	14fac <Xil_L1DCacheInvalidate>
   15404:	e8bd4008 	pop	{r3, lr}
   15408:	eaffffe9 	b	153b4 <Xil_L2CacheInvalidate>

0001540c <Xil_L2CacheInvalidateLine>:
   1540c:	e1a01000 	mov	r1, r0
   15410:	e3020770 	movw	r0, #10096	; 0x2770
   15414:	e92d4008 	push	{r3, lr}
   15418:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   1541c:	eb00006e 	bl	155dc <Xil_Out32>
   15420:	f57ff04f 	dsb	sy
   15424:	e8bd8008 	pop	{r3, pc}

00015428 <Xil_ICacheInvalidateLine>:
   15428:	e3a03001 	mov	r3, #1
   1542c:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
   15430:	e3c0301f 	bic	r3, r0, #31
   15434:	ee073f35 	mcr	15, 0, r3, cr7, cr5, {1}
   15438:	f57ff04f 	dsb	sy
   1543c:	eafffff2 	b	1540c <Xil_L2CacheInvalidateLine>

00015440 <Xil_DCacheInvalidateLine>:
   15440:	e3a03000 	mov	r3, #0
   15444:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
   15448:	e3c0301f 	bic	r3, r0, #31
   1544c:	ee073f36 	mcr	15, 0, r3, cr7, cr6, {1}
   15450:	f57ff04f 	dsb	sy
   15454:	eaffffec 	b	1540c <Xil_L2CacheInvalidateLine>

00015458 <Xil_L2CacheInvalidateRange>:
   15458:	e3510000 	cmp	r1, #0
   1545c:	e92d4008 	push	{r3, lr}
   15460:	0a000009 	beq	1548c <Xil_L2CacheInvalidateRange+0x34>
   15464:	e0813000 	add	r3, r1, r0
   15468:	e3c0001f 	bic	r0, r0, #31
   1546c:	e1530000 	cmp	r3, r0
   15470:	9a000005 	bls	1548c <Xil_L2CacheInvalidateRange+0x34>
   15474:	e3a02a02 	mov	r2, #8192	; 0x2000
   15478:	e34f28f0 	movt	r2, #63728	; 0xf8f0
   1547c:	e5820770 	str	r0, [r2, #1904]	; 0x770
   15480:	e2800020 	add	r0, r0, #32
   15484:	e1530000 	cmp	r3, r0
   15488:	8afffffb 	bhi	1547c <Xil_L2CacheInvalidateRange+0x24>
   1548c:	e3020730 	movw	r0, #10032	; 0x2730
   15490:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   15494:	eb000047 	bl	155b8 <Xil_In32>
   15498:	e3500000 	cmp	r0, #0
   1549c:	1afffffa 	bne	1548c <Xil_L2CacheInvalidateRange+0x34>
   154a0:	f57ff04f 	dsb	sy
   154a4:	e8bd8008 	pop	{r3, pc}

000154a8 <Xil_L2CacheFlush>:
   154a8:	e30207fc 	movw	r0, #10236	; 0x27fc
   154ac:	e30f1fff 	movw	r1, #65535	; 0xffff
   154b0:	e92d4008 	push	{r3, lr}
   154b4:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   154b8:	eb000047 	bl	155dc <Xil_Out32>
   154bc:	e3020730 	movw	r0, #10032	; 0x2730
   154c0:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   154c4:	eb00003b 	bl	155b8 <Xil_In32>
   154c8:	e3500000 	cmp	r0, #0
   154cc:	1afffffa 	bne	154bc <Xil_L2CacheFlush+0x14>
   154d0:	f57ff04f 	dsb	sy
   154d4:	e8bd8008 	pop	{r3, pc}

000154d8 <Xil_DCacheFlush>:
   154d8:	e92d4008 	push	{r3, lr}
   154dc:	ebfffef4 	bl	150b4 <Xil_L1DCacheFlush>
   154e0:	e8bd4008 	pop	{r3, lr}
   154e4:	eaffffef 	b	154a8 <Xil_L2CacheFlush>

000154e8 <Xil_L2CacheFlushLine>:
   154e8:	e1a01000 	mov	r1, r0
   154ec:	e30207f0 	movw	r0, #10224	; 0x27f0
   154f0:	e92d4008 	push	{r3, lr}
   154f4:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   154f8:	eb000037 	bl	155dc <Xil_Out32>
   154fc:	f57ff04f 	dsb	sy
   15500:	e8bd8008 	pop	{r3, pc}

00015504 <Xil_DCacheFlushLine>:
   15504:	e3a03000 	mov	r3, #0
   15508:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
   1550c:	e3c0301f 	bic	r3, r0, #31
   15510:	ee073f3e 	mcr	15, 0, r3, cr7, cr14, {1}
   15514:	f57ff04f 	dsb	sy
   15518:	eafffff2 	b	154e8 <Xil_L2CacheFlushLine>

0001551c <Xil_L2CacheFlushRange>:
   1551c:	e3510000 	cmp	r1, #0
   15520:	e92d4008 	push	{r3, lr}
   15524:	0a000009 	beq	15550 <Xil_L2CacheFlushRange+0x34>
   15528:	e0813000 	add	r3, r1, r0
   1552c:	e3c0001f 	bic	r0, r0, #31
   15530:	e1530000 	cmp	r3, r0
   15534:	9a000005 	bls	15550 <Xil_L2CacheFlushRange+0x34>
   15538:	e3a02a02 	mov	r2, #8192	; 0x2000
   1553c:	e34f28f0 	movt	r2, #63728	; 0xf8f0
   15540:	e58207f0 	str	r0, [r2, #2032]	; 0x7f0
   15544:	e2800020 	add	r0, r0, #32
   15548:	e1530000 	cmp	r3, r0
   1554c:	8afffffb 	bhi	15540 <Xil_L2CacheFlushRange+0x24>
   15550:	e3020730 	movw	r0, #10032	; 0x2730
   15554:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   15558:	eb000016 	bl	155b8 <Xil_In32>
   1555c:	e3500000 	cmp	r0, #0
   15560:	1afffffa 	bne	15550 <Xil_L2CacheFlushRange+0x34>
   15564:	f57ff04f 	dsb	sy
   15568:	e8bd8008 	pop	{r3, pc}

0001556c <Xil_L2CacheStoreLine>:
   1556c:	e1a01000 	mov	r1, r0
   15570:	e30207b0 	movw	r0, #10160	; 0x27b0
   15574:	e92d4008 	push	{r3, lr}
   15578:	e34f08f0 	movt	r0, #63728	; 0xf8f0
   1557c:	eb000016 	bl	155dc <Xil_Out32>
   15580:	f57ff04f 	dsb	sy
   15584:	e8bd8008 	pop	{r3, pc}

00015588 <Xil_DCacheStoreLine>:
   15588:	e3a03000 	mov	r3, #0
   1558c:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
   15590:	e3c0301f 	bic	r3, r0, #31
   15594:	ee073f3a 	mcr	15, 0, r3, cr7, cr10, {1}
   15598:	f57ff04f 	dsb	sy
   1559c:	eafffff2 	b	1556c <Xil_L2CacheStoreLine>

000155a0 <Xil_In8>:
   155a0:	f57ff05f 	dmb	sy
   155a4:	e5d00000 	ldrb	r0, [r0]
   155a8:	e12fff1e 	bx	lr

000155ac <Xil_In16>:
   155ac:	f57ff05f 	dmb	sy
   155b0:	e1d000b0 	ldrh	r0, [r0]
   155b4:	e12fff1e 	bx	lr

000155b8 <Xil_In32>:
   155b8:	f57ff05f 	dmb	sy
   155bc:	e5900000 	ldr	r0, [r0]
   155c0:	e12fff1e 	bx	lr

000155c4 <Xil_Out8>:
   155c4:	e5c01000 	strb	r1, [r0]
   155c8:	f57ff05f 	dmb	sy
   155cc:	e12fff1e 	bx	lr

000155d0 <Xil_Out16>:
   155d0:	e1c010b0 	strh	r1, [r0]
   155d4:	f57ff05f 	dmb	sy
   155d8:	e12fff1e 	bx	lr

000155dc <Xil_Out32>:
   155dc:	e5801000 	str	r1, [r0]
   155e0:	f57ff05f 	dmb	sy
   155e4:	e12fff1e 	bx	lr

000155e8 <Xil_In16BE>:
   155e8:	f57ff05f 	dmb	sy
   155ec:	e1d030b0 	ldrh	r3, [r0]
   155f0:	e1a02423 	lsr	r2, r3, #8
   155f4:	e1820403 	orr	r0, r2, r3, lsl #8
   155f8:	e6ff0070 	uxth	r0, r0
   155fc:	e12fff1e 	bx	lr

00015600 <Xil_In32BE>:
   15600:	f57ff05f 	dmb	sy
   15604:	e5903000 	ldr	r3, [r0]
   15608:	e7e70453 	ubfx	r0, r3, #8, #8
   1560c:	e1a02823 	lsr	r2, r3, #16
   15610:	e6ff3073 	uxth	r3, r3
   15614:	e1a01422 	lsr	r1, r2, #8
   15618:	e1800403 	orr	r0, r0, r3, lsl #8
   1561c:	e1812402 	orr	r2, r1, r2, lsl #8
   15620:	e6ff2072 	uxth	r2, r2
   15624:	e1820800 	orr	r0, r2, r0, lsl #16
   15628:	e12fff1e 	bx	lr

0001562c <Xil_Out16BE>:
   1562c:	e1a03421 	lsr	r3, r1, #8
   15630:	e1831401 	orr	r1, r3, r1, lsl #8
   15634:	e1c010b0 	strh	r1, [r0]
   15638:	f57ff05f 	dmb	sy
   1563c:	e12fff1e 	bx	lr

00015640 <Xil_Out32BE>:
   15640:	e1a03821 	lsr	r3, r1, #16
   15644:	e7e72451 	ubfx	r2, r1, #8, #8
   15648:	e6ff1071 	uxth	r1, r1
   1564c:	e1a0c423 	lsr	ip, r3, #8
   15650:	e18c3403 	orr	r3, ip, r3, lsl #8
   15654:	e1821401 	orr	r1, r2, r1, lsl #8
   15658:	e6ff3073 	uxth	r3, r3
   1565c:	e1831801 	orr	r1, r3, r1, lsl #16
   15660:	e5801000 	str	r1, [r0]
   15664:	f57ff05f 	dmb	sy
   15668:	e12fff1e 	bx	lr

0001566c <Xil_EndianSwap16>:
   1566c:	e1a03420 	lsr	r3, r0, #8
   15670:	e1830400 	orr	r0, r3, r0, lsl #8
   15674:	e6ff0070 	uxth	r0, r0
   15678:	e12fff1e 	bx	lr

0001567c <Xil_EndianSwap32>:
   1567c:	e1a03820 	lsr	r3, r0, #16
   15680:	e7e71450 	ubfx	r1, r0, #8, #8
   15684:	e6ff0070 	uxth	r0, r0
   15688:	e1a02423 	lsr	r2, r3, #8
   1568c:	e1823403 	orr	r3, r2, r3, lsl #8
   15690:	e1810400 	orr	r0, r1, r0, lsl #8
   15694:	e6ff3073 	uxth	r3, r3
   15698:	e1830800 	orr	r0, r3, r0, lsl #16
   1569c:	e12fff1e 	bx	lr

000156a0 <padding>:
   156a0:	e92d4038 	push	{r3, r4, r5, lr}
   156a4:	e1a05001 	mov	r5, r1
   156a8:	e5913010 	ldr	r3, [r1, #16]
   156ac:	e3530000 	cmp	r3, #0
   156b0:	08bd8038 	popeq	{r3, r4, r5, pc}
   156b4:	e3500000 	cmp	r0, #0
   156b8:	08bd8038 	popeq	{r3, r4, r5, pc}
   156bc:	e5914000 	ldr	r4, [r1]
   156c0:	e5913004 	ldr	r3, [r1, #4]
   156c4:	e1540003 	cmp	r4, r3
   156c8:	a8bd8038 	popge	{r3, r4, r5, pc}
   156cc:	e5d5000c 	ldrb	r0, [r5, #12]
   156d0:	e2844001 	add	r4, r4, #1
   156d4:	eb0002f4 	bl	162ac <outbyte>
   156d8:	e5953004 	ldr	r3, [r5, #4]
   156dc:	e1540003 	cmp	r4, r3
   156e0:	bafffff9 	blt	156cc <padding+0x2c>
   156e4:	e8bd8038 	pop	{r3, r4, r5, pc}

000156e8 <outnum>:
   156e8:	e307cd98 	movw	ip, #32152	; 0x7d98
   156ec:	e340c001 	movt	ip, #1
   156f0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   156f4:	e1a05000 	mov	r5, r0
   156f8:	e1a06001 	mov	r6, r1
   156fc:	e1a04fa0 	lsr	r4, r0, #31
   15700:	e1a07002 	mov	r7, r2
   15704:	e24dd038 	sub	sp, sp, #56	; 0x38
   15708:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
   1570c:	e356000a 	cmp	r6, #10
   15710:	13a04000 	movne	r4, #0
   15714:	02044001 	andeq	r4, r4, #1
   15718:	e28de004 	add	lr, sp, #4
   1571c:	e3540000 	cmp	r4, #0
   15720:	12655000 	rsbne	r5, r5, #0
   15724:	13a08001 	movne	r8, #1
   15728:	01a08004 	moveq	r8, r4
   1572c:	e59cc000 	ldr	ip, [ip]
   15730:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
   15734:	e28d3019 	add	r3, sp, #25
   15738:	e5cec000 	strb	ip, [lr]
   1573c:	e1a00005 	mov	r0, r5
   15740:	e1a01006 	mov	r1, r6
   15744:	e1a04003 	mov	r4, r3
   15748:	eb00037e 	bl	16548 <__aeabi_uidivmod>
   1574c:	e28d2038 	add	r2, sp, #56	; 0x38
   15750:	e1a00005 	mov	r0, r5
   15754:	e0823001 	add	r3, r2, r1
   15758:	e1a01006 	mov	r1, r6
   1575c:	e5533034 	ldrb	r3, [r3, #-52]	; 0xffffffcc
   15760:	e5443001 	strb	r3, [r4, #-1]
   15764:	eb0002fc 	bl	1635c <__aeabi_uidiv>
   15768:	e2843001 	add	r3, r4, #1
   1576c:	e2505000 	subs	r5, r0, #0
   15770:	1afffff1 	bne	1573c <outnum+0x54>
   15774:	e3580000 	cmp	r8, #0
   15778:	e28d5018 	add	r5, sp, #24
   1577c:	13a0202d 	movne	r2, #45	; 0x2d
   15780:	15c42000 	strbne	r2, [r4]
   15784:	11a04003 	movne	r4, r3
   15788:	e1a00005 	mov	r0, r5
   1578c:	e1a06004 	mov	r6, r4
   15790:	e3a03000 	mov	r3, #0
   15794:	e4463001 	strb	r3, [r6], #-1
   15798:	eb00058f 	bl	16ddc <strlen>
   1579c:	e5973014 	ldr	r3, [r7, #20]
   157a0:	e1a01007 	mov	r1, r7
   157a4:	e5870000 	str	r0, [r7]
   157a8:	e2730001 	rsbs	r0, r3, #1
   157ac:	33a00000 	movcc	r0, #0
   157b0:	ebffffba 	bl	156a0 <padding>
   157b4:	e1550006 	cmp	r5, r6
   157b8:	8a000003 	bhi	157cc <outnum+0xe4>
   157bc:	e5740001 	ldrb	r0, [r4, #-1]!
   157c0:	eb0002b9 	bl	162ac <outbyte>
   157c4:	e1540005 	cmp	r4, r5
   157c8:	1afffffb 	bne	157bc <outnum+0xd4>
   157cc:	e5970014 	ldr	r0, [r7, #20]
   157d0:	e1a01007 	mov	r1, r7
   157d4:	ebffffb1 	bl	156a0 <padding>
   157d8:	e28dd038 	add	sp, sp, #56	; 0x38
   157dc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

000157e0 <xil_printf>:
   157e0:	e92d000f 	push	{r0, r1, r2, r3}
   157e4:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   157e8:	e24dd024 	sub	sp, sp, #36	; 0x24
   157ec:	e28d304c 	add	r3, sp, #76	; 0x4c
   157f0:	e59db048 	ldr	fp, [sp, #72]	; 0x48
   157f4:	e58d3004 	str	r3, [sp, #4]
   157f8:	e5db0000 	ldrb	r0, [fp]
   157fc:	e3500000 	cmp	r0, #0
   15800:	0a000096 	beq	15a60 <xil_printf+0x280>
   15804:	e3076dd8 	movw	r6, #32216	; 0x7dd8
   15808:	e3a05000 	mov	r5, #0
   1580c:	e3406001 	movt	r6, #1
   15810:	e3a08020 	mov	r8, #32
   15814:	e3077fff 	movw	r7, #32767	; 0x7fff
   15818:	ea000005 	b	15834 <xil_printf+0x54>
   1581c:	e1a0400b 	mov	r4, fp
   15820:	eb0002a1 	bl	162ac <outbyte>
   15824:	e5d40001 	ldrb	r0, [r4, #1]
   15828:	e284b001 	add	fp, r4, #1
   1582c:	e3500000 	cmp	r0, #0
   15830:	0a00008a 	beq	15a60 <xil_printf+0x280>
   15834:	e3500025 	cmp	r0, #37	; 0x25
   15838:	1afffff7 	bne	1581c <xil_printf+0x3c>
   1583c:	e596c000 	ldr	ip, [r6]
   15840:	e3a0a000 	mov	sl, #0
   15844:	e5db0001 	ldrb	r0, [fp, #1]
   15848:	e1a0900a 	mov	r9, sl
   1584c:	e58d5018 	str	r5, [sp, #24]
   15850:	e08c3000 	add	r3, ip, r0
   15854:	e58d501c 	str	r5, [sp, #28]
   15858:	e5cd8014 	strb	r8, [sp, #20]
   1585c:	e58d7010 	str	r7, [sp, #16]
   15860:	e5d32001 	ldrb	r2, [r3, #1]
   15864:	e28b4001 	add	r4, fp, #1
   15868:	e2021004 	and	r1, r2, #4
   1586c:	e6ef1071 	uxtb	r1, r1
   15870:	e3510000 	cmp	r1, #0
   15874:	0a000012 	beq	158c4 <xil_printf+0xe4>
   15878:	e35a0000 	cmp	sl, #0
   1587c:	0a0000d5 	beq	15bd8 <xil_printf+0x3f8>
   15880:	e28bb002 	add	fp, fp, #2
   15884:	e3a02000 	mov	r2, #0
   15888:	e2401030 	sub	r1, r0, #48	; 0x30
   1588c:	e5db0000 	ldrb	r0, [fp]
   15890:	e0822102 	add	r2, r2, r2, lsl #2
   15894:	e1a0400b 	mov	r4, fp
   15898:	e08c3000 	add	r3, ip, r0
   1589c:	e28bb001 	add	fp, fp, #1
   158a0:	e0812082 	add	r2, r1, r2, lsl #1
   158a4:	e5d31001 	ldrb	r1, [r3, #1]
   158a8:	e2011004 	and	r1, r1, #4
   158ac:	e6ef1071 	uxtb	r1, r1
   158b0:	e3510000 	cmp	r1, #0
   158b4:	1afffff3 	bne	15888 <xil_printf+0xa8>
   158b8:	e58d2010 	str	r2, [sp, #16]
   158bc:	e244b001 	sub	fp, r4, #1
   158c0:	eaffffe6 	b	15860 <xil_printf+0x80>
   158c4:	e2022003 	and	r2, r2, #3
   158c8:	e1a03000 	mov	r3, r0
   158cc:	e3520001 	cmp	r2, #1
   158d0:	02803020 	addeq	r3, r0, #32
   158d4:	e2433025 	sub	r3, r3, #37	; 0x25
   158d8:	e3530053 	cmp	r3, #83	; 0x53
   158dc:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
   158e0:	eaffffcf 	b	15824 <xil_printf+0x44>
   158e4:	00015bcc 	andeq	r5, r1, ip, asr #23
   158e8:	00015824 	andeq	r5, r1, r4, lsr #16
   158ec:	00015824 	andeq	r5, r1, r4, lsr #16
   158f0:	00015824 	andeq	r5, r1, r4, lsr #16
   158f4:	00015824 	andeq	r5, r1, r4, lsr #16
   158f8:	00015824 	andeq	r5, r1, r4, lsr #16
   158fc:	00015824 	andeq	r5, r1, r4, lsr #16
   15900:	00015824 	andeq	r5, r1, r4, lsr #16
   15904:	00015bb4 			; <UNDEFINED> instruction: 0x00015bb4
   15908:	00015ba0 	andeq	r5, r1, r0, lsr #23
   1590c:	00015824 	andeq	r5, r1, r4, lsr #16
   15910:	00015824 	andeq	r5, r1, r4, lsr #16
   15914:	00015824 	andeq	r5, r1, r4, lsr #16
   15918:	00015824 	andeq	r5, r1, r4, lsr #16
   1591c:	00015824 	andeq	r5, r1, r4, lsr #16
   15920:	00015824 	andeq	r5, r1, r4, lsr #16
   15924:	00015824 	andeq	r5, r1, r4, lsr #16
   15928:	00015824 	andeq	r5, r1, r4, lsr #16
   1592c:	00015824 	andeq	r5, r1, r4, lsr #16
   15930:	00015824 	andeq	r5, r1, r4, lsr #16
   15934:	00015824 	andeq	r5, r1, r4, lsr #16
   15938:	00015824 	andeq	r5, r1, r4, lsr #16
   1593c:	00015824 	andeq	r5, r1, r4, lsr #16
   15940:	00015824 	andeq	r5, r1, r4, lsr #16
   15944:	00015824 	andeq	r5, r1, r4, lsr #16
   15948:	00015824 	andeq	r5, r1, r4, lsr #16
   1594c:	00015824 	andeq	r5, r1, r4, lsr #16
   15950:	00015824 	andeq	r5, r1, r4, lsr #16
   15954:	00015824 	andeq	r5, r1, r4, lsr #16
   15958:	00015824 	andeq	r5, r1, r4, lsr #16
   1595c:	00015824 	andeq	r5, r1, r4, lsr #16
   15960:	00015824 	andeq	r5, r1, r4, lsr #16
   15964:	00015824 	andeq	r5, r1, r4, lsr #16
   15968:	00015824 	andeq	r5, r1, r4, lsr #16
   1596c:	00015824 	andeq	r5, r1, r4, lsr #16
   15970:	00015824 	andeq	r5, r1, r4, lsr #16
   15974:	00015824 	andeq	r5, r1, r4, lsr #16
   15978:	00015824 	andeq	r5, r1, r4, lsr #16
   1597c:	00015824 	andeq	r5, r1, r4, lsr #16
   15980:	00015824 	andeq	r5, r1, r4, lsr #16
   15984:	00015824 	andeq	r5, r1, r4, lsr #16
   15988:	00015824 	andeq	r5, r1, r4, lsr #16
   1598c:	00015824 	andeq	r5, r1, r4, lsr #16
   15990:	00015824 	andeq	r5, r1, r4, lsr #16
   15994:	00015824 	andeq	r5, r1, r4, lsr #16
   15998:	00015824 	andeq	r5, r1, r4, lsr #16
   1599c:	00015824 	andeq	r5, r1, r4, lsr #16
   159a0:	00015824 	andeq	r5, r1, r4, lsr #16
   159a4:	00015824 	andeq	r5, r1, r4, lsr #16
   159a8:	00015824 	andeq	r5, r1, r4, lsr #16
   159ac:	00015824 	andeq	r5, r1, r4, lsr #16
   159b0:	00015824 	andeq	r5, r1, r4, lsr #16
   159b4:	00015824 	andeq	r5, r1, r4, lsr #16
   159b8:	00015824 	andeq	r5, r1, r4, lsr #16
   159bc:	00015824 	andeq	r5, r1, r4, lsr #16
   159c0:	00015b48 	andeq	r5, r1, r8, asr #22
   159c4:	00015824 	andeq	r5, r1, r4, lsr #16
   159c8:	00015824 	andeq	r5, r1, r4, lsr #16
   159cc:	00015824 	andeq	r5, r1, r4, lsr #16
   159d0:	00015824 	andeq	r5, r1, r4, lsr #16
   159d4:	00015824 	andeq	r5, r1, r4, lsr #16
   159d8:	00015824 	andeq	r5, r1, r4, lsr #16
   159dc:	00015b30 	andeq	r5, r1, r0, lsr fp
   159e0:	00015b14 	andeq	r5, r1, r4, lsl fp
   159e4:	00015824 	andeq	r5, r1, r4, lsr #16
   159e8:	00015824 	andeq	r5, r1, r4, lsr #16
   159ec:	00015824 	andeq	r5, r1, r4, lsr #16
   159f0:	00015824 	andeq	r5, r1, r4, lsr #16
   159f4:	00015824 	andeq	r5, r1, r4, lsr #16
   159f8:	00015824 	andeq	r5, r1, r4, lsr #16
   159fc:	00015824 	andeq	r5, r1, r4, lsr #16
   15a00:	00015b00 	andeq	r5, r1, r0, lsl #22
   15a04:	00015824 	andeq	r5, r1, r4, lsr #16
   15a08:	00015824 	andeq	r5, r1, r4, lsr #16
   15a0c:	00015824 	andeq	r5, r1, r4, lsr #16
   15a10:	00015824 	andeq	r5, r1, r4, lsr #16
   15a14:	00015824 	andeq	r5, r1, r4, lsr #16
   15a18:	00015824 	andeq	r5, r1, r4, lsr #16
   15a1c:	00015a70 	andeq	r5, r1, r0, ror sl
   15a20:	00015824 	andeq	r5, r1, r4, lsr #16
   15a24:	00015824 	andeq	r5, r1, r4, lsr #16
   15a28:	00015824 	andeq	r5, r1, r4, lsr #16
   15a2c:	00015824 	andeq	r5, r1, r4, lsr #16
   15a30:	00015a34 	andeq	r5, r1, r4, lsr sl
   15a34:	e59d3004 	ldr	r3, [sp, #4]
   15a38:	e28d2008 	add	r2, sp, #8
   15a3c:	e3a01010 	mov	r1, #16
   15a40:	e2830004 	add	r0, r3, #4
   15a44:	e58d0004 	str	r0, [sp, #4]
   15a48:	e5930000 	ldr	r0, [r3]
   15a4c:	ebffff25 	bl	156e8 <outnum>
   15a50:	e5d40001 	ldrb	r0, [r4, #1]
   15a54:	e284b001 	add	fp, r4, #1
   15a58:	e3500000 	cmp	r0, #0
   15a5c:	1affff74 	bne	15834 <xil_printf+0x54>
   15a60:	e28dd024 	add	sp, sp, #36	; 0x24
   15a64:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   15a68:	e28dd010 	add	sp, sp, #16
   15a6c:	e12fff1e 	bx	lr
   15a70:	e59d3004 	ldr	r3, [sp, #4]
   15a74:	e2832004 	add	r2, r3, #4
   15a78:	e58d2004 	str	r2, [sp, #4]
   15a7c:	e593a000 	ldr	sl, [r3]
   15a80:	e1a0000a 	mov	r0, sl
   15a84:	eb0004d4 	bl	16ddc <strlen>
   15a88:	e28d1008 	add	r1, sp, #8
   15a8c:	e58d0008 	str	r0, [sp, #8]
   15a90:	e59d001c 	ldr	r0, [sp, #28]
   15a94:	e2700001 	rsbs	r0, r0, #1
   15a98:	33a00000 	movcc	r0, #0
   15a9c:	ebfffeff 	bl	156a0 <padding>
   15aa0:	e5da3000 	ldrb	r3, [sl]
   15aa4:	e3530000 	cmp	r3, #0
   15aa8:	0a000010 	beq	15af0 <xil_printf+0x310>
   15aac:	e59d3010 	ldr	r3, [sp, #16]
   15ab0:	e3530000 	cmp	r3, #0
   15ab4:	e2433001 	sub	r3, r3, #1
   15ab8:	e58d3010 	str	r3, [sp, #16]
   15abc:	0a00000b 	beq	15af0 <xil_printf+0x310>
   15ac0:	e24aa001 	sub	sl, sl, #1
   15ac4:	ea000004 	b	15adc <xil_printf+0x2fc>
   15ac8:	e59d3010 	ldr	r3, [sp, #16]
   15acc:	e3530000 	cmp	r3, #0
   15ad0:	e2433001 	sub	r3, r3, #1
   15ad4:	e58d3010 	str	r3, [sp, #16]
   15ad8:	0a000004 	beq	15af0 <xil_printf+0x310>
   15adc:	e5fa0001 	ldrb	r0, [sl, #1]!
   15ae0:	eb0001f1 	bl	162ac <outbyte>
   15ae4:	e5da3001 	ldrb	r3, [sl, #1]
   15ae8:	e3530000 	cmp	r3, #0
   15aec:	1afffff5 	bne	15ac8 <xil_printf+0x2e8>
   15af0:	e59d001c 	ldr	r0, [sp, #28]
   15af4:	e28d1008 	add	r1, sp, #8
   15af8:	ebfffee8 	bl	156a0 <padding>
   15afc:	eaffff48 	b	15824 <xil_printf+0x44>
   15b00:	e5db0002 	ldrb	r0, [fp, #2]
   15b04:	e3a09001 	mov	r9, #1
   15b08:	e1a0b004 	mov	fp, r4
   15b0c:	e08c3000 	add	r3, ip, r0
   15b10:	eaffff52 	b	15860 <xil_printf+0x80>
   15b14:	e59d3004 	ldr	r3, [sp, #4]
   15b18:	e3a0100a 	mov	r1, #10
   15b1c:	e28d2008 	add	r2, sp, #8
   15b20:	e2830004 	add	r0, r3, #4
   15b24:	e58d0004 	str	r0, [sp, #4]
   15b28:	e5930000 	ldr	r0, [r3]
   15b2c:	eaffffc6 	b	15a4c <xil_printf+0x26c>
   15b30:	e59d3004 	ldr	r3, [sp, #4]
   15b34:	e2832004 	add	r2, r3, #4
   15b38:	e58d2004 	str	r2, [sp, #4]
   15b3c:	e5d30000 	ldrb	r0, [r3]
   15b40:	eb0001d9 	bl	162ac <outbyte>
   15b44:	eaffff36 	b	15824 <xil_printf+0x44>
   15b48:	e2403061 	sub	r3, r0, #97	; 0x61
   15b4c:	e3530011 	cmp	r3, #17
   15b50:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
   15b54:	ea000041 	b	15c60 <xil_printf+0x480>
   15b58:	00015c68 	andeq	r5, r1, r8, ror #24
   15b5c:	00015c60 	andeq	r5, r1, r0, ror #24
   15b60:	00015c60 	andeq	r5, r1, r0, ror #24
   15b64:	00015c60 	andeq	r5, r1, r0, ror #24
   15b68:	00015c60 	andeq	r5, r1, r0, ror #24
   15b6c:	00015c60 	andeq	r5, r1, r0, ror #24
   15b70:	00015c60 	andeq	r5, r1, r0, ror #24
   15b74:	00015c74 	andeq	r5, r1, r4, ror ip
   15b78:	00015c60 	andeq	r5, r1, r0, ror #24
   15b7c:	00015c60 	andeq	r5, r1, r0, ror #24
   15b80:	00015c60 	andeq	r5, r1, r0, ror #24
   15b84:	00015c60 	andeq	r5, r1, r0, ror #24
   15b88:	00015c60 	andeq	r5, r1, r0, ror #24
   15b8c:	00015c80 	andeq	r5, r1, r0, lsl #25
   15b90:	00015c60 	andeq	r5, r1, r0, ror #24
   15b94:	00015c60 	andeq	r5, r1, r0, ror #24
   15b98:	00015c60 	andeq	r5, r1, r0, ror #24
   15b9c:	00015c44 	andeq	r5, r1, r4, asr #24
   15ba0:	e5db0002 	ldrb	r0, [fp, #2]
   15ba4:	e3a0a001 	mov	sl, #1
   15ba8:	e1a0b004 	mov	fp, r4
   15bac:	e08c3000 	add	r3, ip, r0
   15bb0:	eaffff2a 	b	15860 <xil_printf+0x80>
   15bb4:	e5db0002 	ldrb	r0, [fp, #2]
   15bb8:	e3a03001 	mov	r3, #1
   15bbc:	e1a0b004 	mov	fp, r4
   15bc0:	e58d301c 	str	r3, [sp, #28]
   15bc4:	e08c3000 	add	r3, ip, r0
   15bc8:	eaffff24 	b	15860 <xil_printf+0x80>
   15bcc:	e3a00025 	mov	r0, #37	; 0x25
   15bd0:	eb0001b5 	bl	162ac <outbyte>
   15bd4:	eaffff12 	b	15824 <xil_printf+0x44>
   15bd8:	e5db1001 	ldrb	r1, [fp, #1]
   15bdc:	e3500030 	cmp	r0, #48	; 0x30
   15be0:	05cd0014 	strbeq	r0, [sp, #20]
   15be4:	e08c2001 	add	r2, ip, r1
   15be8:	e5d22001 	ldrb	r2, [r2, #1]
   15bec:	e2022004 	and	r2, r2, #4
   15bf0:	e6ef2072 	uxtb	r2, r2
   15bf4:	e3520000 	cmp	r2, #0
   15bf8:	0a00000d 	beq	15c34 <xil_printf+0x454>
   15bfc:	e28bb002 	add	fp, fp, #2
   15c00:	e1a00001 	mov	r0, r1
   15c04:	e3a02000 	mov	r2, #0
   15c08:	e2401030 	sub	r1, r0, #48	; 0x30
   15c0c:	e1a0400b 	mov	r4, fp
   15c10:	e4db0001 	ldrb	r0, [fp], #1
   15c14:	e0822102 	add	r2, r2, r2, lsl #2
   15c18:	e08c3000 	add	r3, ip, r0
   15c1c:	e0812082 	add	r2, r1, r2, lsl #1
   15c20:	e5d31001 	ldrb	r1, [r3, #1]
   15c24:	e2011004 	and	r1, r1, #4
   15c28:	e6ef1071 	uxtb	r1, r1
   15c2c:	e3510000 	cmp	r1, #0
   15c30:	1afffff4 	bne	15c08 <xil_printf+0x428>
   15c34:	e58d200c 	str	r2, [sp, #12]
   15c38:	e3a02001 	mov	r2, #1
   15c3c:	e58d2018 	str	r2, [sp, #24]
   15c40:	eaffff1d 	b	158bc <xil_printf+0xdc>
   15c44:	e3a0000d 	mov	r0, #13
   15c48:	eb000197 	bl	162ac <outbyte>
   15c4c:	e5db0003 	ldrb	r0, [fp, #3]
   15c50:	e28bb002 	add	fp, fp, #2
   15c54:	e596c000 	ldr	ip, [r6]
   15c58:	e08c3000 	add	r3, ip, r0
   15c5c:	eafffeff 	b	15860 <xil_printf+0x80>
   15c60:	eb000191 	bl	162ac <outbyte>
   15c64:	eafffff8 	b	15c4c <xil_printf+0x46c>
   15c68:	e3a00007 	mov	r0, #7
   15c6c:	eb00018e 	bl	162ac <outbyte>
   15c70:	eafffff5 	b	15c4c <xil_printf+0x46c>
   15c74:	e3a00008 	mov	r0, #8
   15c78:	eb00018b 	bl	162ac <outbyte>
   15c7c:	eafffff2 	b	15c4c <xil_printf+0x46c>
   15c80:	e3a0000d 	mov	r0, #13
   15c84:	eb000188 	bl	162ac <outbyte>
   15c88:	e3a0000a 	mov	r0, #10
   15c8c:	eb000186 	bl	162ac <outbyte>
   15c90:	eaffffed 	b	15c4c <xil_printf+0x46c>

00015c94 <XUartPs_StubHandler>:
   15c94:	e92d4008 	push	{r3, lr}
   15c98:	e3070dac 	movw	r0, #32172	; 0x7dac
   15c9c:	e3a01e2a 	mov	r1, #672	; 0x2a0
   15ca0:	e3400001 	movt	r0, #1
   15ca4:	eb000184 	bl	162bc <Xil_Assert>
   15ca8:	e30b3f44 	movw	r3, #48964	; 0xbf44
   15cac:	e3403019 	movt	r3, #25
   15cb0:	e3a02001 	mov	r2, #1
   15cb4:	e5832000 	str	r2, [r3]
   15cb8:	e8bd8008 	pop	{r3, pc}

00015cbc <XUartPs_SendBuffer>:
   15cbc:	e92d4038 	push	{r3, r4, r5, lr}
   15cc0:	e1a04000 	mov	r4, r0
   15cc4:	e3a05000 	mov	r5, #0
   15cc8:	ea000007 	b	15cec <XUartPs_SendBuffer+0x30>
   15ccc:	e1550003 	cmp	r5, r3
   15cd0:	2a00000b 	bcs	15d04 <XUartPs_SendBuffer+0x48>
   15cd4:	e594301c 	ldr	r3, [r4, #28]
   15cd8:	e5940004 	ldr	r0, [r4, #4]
   15cdc:	e7d31005 	ldrb	r1, [r3, r5]
   15ce0:	e2800030 	add	r0, r0, #48	; 0x30
   15ce4:	ebfffe3c 	bl	155dc <Xil_Out32>
   15ce8:	e2855001 	add	r5, r5, #1
   15cec:	e5940004 	ldr	r0, [r4, #4]
   15cf0:	e280002c 	add	r0, r0, #44	; 0x2c
   15cf4:	ebfffe2f 	bl	155b8 <Xil_In32>
   15cf8:	e5943024 	ldr	r3, [r4, #36]	; 0x24
   15cfc:	e3100010 	tst	r0, #16
   15d00:	0afffff1 	beq	15ccc <XUartPs_SendBuffer+0x10>
   15d04:	e594201c 	ldr	r2, [r4, #28]
   15d08:	e0653003 	rsb	r3, r5, r3
   15d0c:	e5940004 	ldr	r0, [r4, #4]
   15d10:	e0822005 	add	r2, r2, r5
   15d14:	e5843024 	str	r3, [r4, #36]	; 0x24
   15d18:	e584201c 	str	r2, [r4, #28]
   15d1c:	e2800010 	add	r0, r0, #16
   15d20:	ebfffe24 	bl	155b8 <Xil_In32>
   15d24:	e3100007 	tst	r0, #7
   15d28:	0a000003 	beq	15d3c <XUartPs_SendBuffer+0x80>
   15d2c:	e5943004 	ldr	r3, [r4, #4]
   15d30:	e3801008 	orr	r1, r0, #8
   15d34:	e2830008 	add	r0, r3, #8
   15d38:	ebfffe27 	bl	155dc <Xil_Out32>
   15d3c:	e1a00005 	mov	r0, r5
   15d40:	e8bd8038 	pop	{r3, r4, r5, pc}

00015d44 <XUartPs_Send>:
   15d44:	e92d4070 	push	{r4, r5, r6, lr}
   15d48:	e2505000 	subs	r5, r0, #0
   15d4c:	e24dd008 	sub	sp, sp, #8
   15d50:	e1a06001 	mov	r6, r1
   15d54:	0a000020 	beq	15ddc <XUartPs_Send+0x98>
   15d58:	e30b4f44 	movw	r4, #48964	; 0xbf44
   15d5c:	e3510000 	cmp	r1, #0
   15d60:	e3404019 	movt	r4, #25
   15d64:	e3a03000 	mov	r3, #0
   15d68:	e5843000 	str	r3, [r4]
   15d6c:	0a000023 	beq	15e00 <XUartPs_Send+0xbc>
   15d70:	e5951014 	ldr	r1, [r5, #20]
   15d74:	e3013111 	movw	r3, #4369	; 0x1111
   15d78:	e3413111 	movt	r3, #4369	; 0x1111
   15d7c:	e1510003 	cmp	r1, r3
   15d80:	0a000008 	beq	15da8 <XUartPs_Send+0x64>
   15d84:	e3070dac 	movw	r0, #32172	; 0x7dac
   15d88:	e3001112 	movw	r1, #274	; 0x112
   15d8c:	e3400001 	movt	r0, #1
   15d90:	eb000149 	bl	162bc <Xil_Assert>
   15d94:	e3a03001 	mov	r3, #1
   15d98:	e5843000 	str	r3, [r4]
   15d9c:	e3a00000 	mov	r0, #0
   15da0:	e28dd008 	add	sp, sp, #8
   15da4:	e8bd8070 	pop	{r4, r5, r6, pc}
   15da8:	e5950004 	ldr	r0, [r5, #4]
   15dac:	e3a01018 	mov	r1, #24
   15db0:	e58d2004 	str	r2, [sp, #4]
   15db4:	e280000c 	add	r0, r0, #12
   15db8:	ebfffe07 	bl	155dc <Xil_Out32>
   15dbc:	e59d2004 	ldr	r2, [sp, #4]
   15dc0:	e1a00005 	mov	r0, r5
   15dc4:	e585601c 	str	r6, [r5, #28]
   15dc8:	e5852020 	str	r2, [r5, #32]
   15dcc:	e5852024 	str	r2, [r5, #36]	; 0x24
   15dd0:	e28dd008 	add	sp, sp, #8
   15dd4:	e8bd4070 	pop	{r4, r5, r6, lr}
   15dd8:	eaffffb7 	b	15cbc <XUartPs_SendBuffer>
   15ddc:	e3070dac 	movw	r0, #32172	; 0x7dac
   15de0:	e3a01e11 	mov	r1, #272	; 0x110
   15de4:	e3400001 	movt	r0, #1
   15de8:	eb000133 	bl	162bc <Xil_Assert>
   15dec:	e30b3f44 	movw	r3, #48964	; 0xbf44
   15df0:	e3403019 	movt	r3, #25
   15df4:	e3a02001 	mov	r2, #1
   15df8:	e5832000 	str	r2, [r3]
   15dfc:	eaffffe6 	b	15d9c <XUartPs_Send+0x58>
   15e00:	e3070dac 	movw	r0, #32172	; 0x7dac
   15e04:	e3001111 	movw	r1, #273	; 0x111
   15e08:	e3400001 	movt	r0, #1
   15e0c:	eb00012a 	bl	162bc <Xil_Assert>
   15e10:	e3a03001 	mov	r3, #1
   15e14:	e5843000 	str	r3, [r4]
   15e18:	eaffffdf 	b	15d9c <XUartPs_Send+0x58>

00015e1c <XUartPs_ReceiveBuffer>:
   15e1c:	e92d4070 	push	{r4, r5, r6, lr}
   15e20:	e1a04000 	mov	r4, r0
   15e24:	e5900004 	ldr	r0, [r0, #4]
   15e28:	e280002c 	add	r0, r0, #44	; 0x2c
   15e2c:	ebfffde1 	bl	155b8 <Xil_In32>
   15e30:	e5943030 	ldr	r3, [r4, #48]	; 0x30
   15e34:	e3530000 	cmp	r3, #0
   15e38:	0a000017 	beq	15e9c <XUartPs_ReceiveBuffer+0x80>
   15e3c:	e2105002 	ands	r5, r0, #2
   15e40:	0a000002 	beq	15e50 <XUartPs_ReceiveBuffer+0x34>
   15e44:	ea000016 	b	15ea4 <XUartPs_ReceiveBuffer+0x88>
   15e48:	e3100002 	tst	r0, #2
   15e4c:	1a00000b 	bne	15e80 <XUartPs_ReceiveBuffer+0x64>
   15e50:	e5940004 	ldr	r0, [r4, #4]
   15e54:	e5946028 	ldr	r6, [r4, #40]	; 0x28
   15e58:	e2800030 	add	r0, r0, #48	; 0x30
   15e5c:	ebfffdd5 	bl	155b8 <Xil_In32>
   15e60:	e7c60005 	strb	r0, [r6, r5]
   15e64:	e2855001 	add	r5, r5, #1
   15e68:	e5940004 	ldr	r0, [r4, #4]
   15e6c:	e280002c 	add	r0, r0, #44	; 0x2c
   15e70:	ebfffdd0 	bl	155b8 <Xil_In32>
   15e74:	e5943030 	ldr	r3, [r4, #48]	; 0x30
   15e78:	e1530005 	cmp	r3, r5
   15e7c:	8afffff1 	bhi	15e48 <XUartPs_ReceiveBuffer+0x2c>
   15e80:	e5942028 	ldr	r2, [r4, #40]	; 0x28
   15e84:	e0653003 	rsb	r3, r5, r3
   15e88:	e1a00005 	mov	r0, r5
   15e8c:	e5843030 	str	r3, [r4, #48]	; 0x30
   15e90:	e0825005 	add	r5, r2, r5
   15e94:	e5845028 	str	r5, [r4, #40]	; 0x28
   15e98:	e8bd8070 	pop	{r4, r5, r6, pc}
   15e9c:	e1a05003 	mov	r5, r3
   15ea0:	eafffff6 	b	15e80 <XUartPs_ReceiveBuffer+0x64>
   15ea4:	e3a05000 	mov	r5, #0
   15ea8:	eafffff4 	b	15e80 <XUartPs_ReceiveBuffer+0x64>

00015eac <XUartPs_Recv>:
   15eac:	e92d4070 	push	{r4, r5, r6, lr}
   15eb0:	e2505000 	subs	r5, r0, #0
   15eb4:	e24dd008 	sub	sp, sp, #8
   15eb8:	e1a06001 	mov	r6, r1
   15ebc:	0a000029 	beq	15f68 <XUartPs_Recv+0xbc>
   15ec0:	e30b4f44 	movw	r4, #48964	; 0xbf44
   15ec4:	e3510000 	cmp	r1, #0
   15ec8:	e3404019 	movt	r4, #25
   15ecc:	e3a0c000 	mov	ip, #0
   15ed0:	e584c000 	str	ip, [r4]
   15ed4:	0a00002d 	beq	15f90 <XUartPs_Recv+0xe4>
   15ed8:	e5951014 	ldr	r1, [r5, #20]
   15edc:	e3013111 	movw	r3, #4369	; 0x1111
   15ee0:	e3413111 	movt	r3, #4369	; 0x1111
   15ee4:	e1510003 	cmp	r1, r3
   15ee8:	0a000009 	beq	15f14 <XUartPs_Recv+0x68>
   15eec:	e3070dac 	movw	r0, #32172	; 0x7dac
   15ef0:	e3001155 	movw	r1, #341	; 0x155
   15ef4:	e3400001 	movt	r0, #1
   15ef8:	e1a0600c 	mov	r6, ip
   15efc:	eb0000ee 	bl	162bc <Xil_Assert>
   15f00:	e3a03001 	mov	r3, #1
   15f04:	e5843000 	str	r3, [r4]
   15f08:	e1a00006 	mov	r0, r6
   15f0c:	e28dd008 	add	sp, sp, #8
   15f10:	e8bd8070 	pop	{r4, r5, r6, pc}
   15f14:	e5950004 	ldr	r0, [r5, #4]
   15f18:	e58d2004 	str	r2, [sp, #4]
   15f1c:	e2800010 	add	r0, r0, #16
   15f20:	ebfffda4 	bl	155b8 <Xil_In32>
   15f24:	e3011fff 	movw	r1, #8191	; 0x1fff
   15f28:	e1a04000 	mov	r4, r0
   15f2c:	e5950004 	ldr	r0, [r5, #4]
   15f30:	e280000c 	add	r0, r0, #12
   15f34:	ebfffda8 	bl	155dc <Xil_Out32>
   15f38:	e59d2004 	ldr	r2, [sp, #4]
   15f3c:	e1a00005 	mov	r0, r5
   15f40:	e5856028 	str	r6, [r5, #40]	; 0x28
   15f44:	e585202c 	str	r2, [r5, #44]	; 0x2c
   15f48:	e5852030 	str	r2, [r5, #48]	; 0x30
   15f4c:	ebffffb2 	bl	15e1c <XUartPs_ReceiveBuffer>
   15f50:	e1a01004 	mov	r1, r4
   15f54:	e1a06000 	mov	r6, r0
   15f58:	e5950004 	ldr	r0, [r5, #4]
   15f5c:	e2800008 	add	r0, r0, #8
   15f60:	ebfffd9d 	bl	155dc <Xil_Out32>
   15f64:	eaffffe7 	b	15f08 <XUartPs_Recv+0x5c>
   15f68:	e3070dac 	movw	r0, #32172	; 0x7dac
   15f6c:	e3001153 	movw	r1, #339	; 0x153
   15f70:	e3400001 	movt	r0, #1
   15f74:	e1a06005 	mov	r6, r5
   15f78:	eb0000cf 	bl	162bc <Xil_Assert>
   15f7c:	e30b3f44 	movw	r3, #48964	; 0xbf44
   15f80:	e3403019 	movt	r3, #25
   15f84:	e3a02001 	mov	r2, #1
   15f88:	e5832000 	str	r2, [r3]
   15f8c:	eaffffdd 	b	15f08 <XUartPs_Recv+0x5c>
   15f90:	e3070dac 	movw	r0, #32172	; 0x7dac
   15f94:	e3a01f55 	mov	r1, #340	; 0x154
   15f98:	e3400001 	movt	r0, #1
   15f9c:	eb0000c6 	bl	162bc <Xil_Assert>
   15fa0:	e3a03001 	mov	r3, #1
   15fa4:	e5843000 	str	r3, [r4]
   15fa8:	eaffffd6 	b	15f08 <XUartPs_Recv+0x5c>

00015fac <XUartPs_SetBaudRate>:
   15fac:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   15fb0:	e250b000 	subs	fp, r0, #0
   15fb4:	e24dd00c 	sub	sp, sp, #12
   15fb8:	e1a05001 	mov	r5, r1
   15fbc:	0a000060 	beq	16144 <XUartPs_SetBaudRate+0x198>
   15fc0:	e59b2014 	ldr	r2, [fp, #20]
   15fc4:	e3013111 	movw	r3, #4369	; 0x1111
   15fc8:	e3413111 	movt	r3, #4369	; 0x1111
   15fcc:	e30b4f44 	movw	r4, #48964	; 0xbf44
   15fd0:	e1520003 	cmp	r2, r3
   15fd4:	e3404019 	movt	r4, #25
   15fd8:	e3a06000 	mov	r6, #0
   15fdc:	e5846000 	str	r6, [r4]
   15fe0:	1a00000b 	bne	16014 <XUartPs_SetBaudRate+0x68>
   15fe4:	e3a03cc2 	mov	r3, #49664	; 0xc200
   15fe8:	e3403001 	movt	r3, #1
   15fec:	e1510003 	cmp	r1, r3
   15ff0:	8a00000f 	bhi	16034 <XUartPs_SetBaudRate+0x88>
   15ff4:	e351006d 	cmp	r1, #109	; 0x6d
   15ff8:	9a000010 	bls	16040 <XUartPs_SetBaudRate+0x94>
   15ffc:	e59b3008 	ldr	r3, [fp, #8]
   16000:	e1530081 	cmp	r3, r1, lsl #1
   16004:	2a000010 	bcs	1604c <XUartPs_SetBaudRate+0xa0>
   16008:	e300041f 	movw	r0, #1055	; 0x41f
   1600c:	e28dd00c 	add	sp, sp, #12
   16010:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   16014:	e3070dac 	movw	r0, #32172	; 0x7dac
   16018:	e300122f 	movw	r1, #559	; 0x22f
   1601c:	e3400001 	movt	r0, #1
   16020:	eb0000a5 	bl	162bc <Xil_Assert>
   16024:	e3a03001 	mov	r3, #1
   16028:	e1a00006 	mov	r0, r6
   1602c:	e5843000 	str	r3, [r4]
   16030:	eafffff5 	b	1600c <XUartPs_SetBaudRate+0x60>
   16034:	e3070dac 	movw	r0, #32172	; 0x7dac
   16038:	e3a01e23 	mov	r1, #560	; 0x230
   1603c:	eafffff6 	b	1601c <XUartPs_SetBaudRate+0x70>
   16040:	e3070dac 	movw	r0, #32172	; 0x7dac
   16044:	e3001231 	movw	r1, #561	; 0x231
   16048:	eafffff3 	b	1601c <XUartPs_SetBaudRate+0x70>
   1604c:	e59b0004 	ldr	r0, [fp, #4]
   16050:	e0859105 	add	r9, r5, r5, lsl #2
   16054:	e3a04005 	mov	r4, #5
   16058:	e3e07000 	mvn	r7, #0
   1605c:	e2800004 	add	r0, r0, #4
   16060:	ebfffd54 	bl	155b8 <Xil_In32>
   16064:	e59b6008 	ldr	r6, [fp, #8]
   16068:	e3a03000 	mov	r3, #0
   1606c:	e58d3000 	str	r3, [sp]
   16070:	e58d3004 	str	r3, [sp, #4]
   16074:	e3100001 	tst	r0, #1
   16078:	11a061a6 	lsrne	r6, r6, #3
   1607c:	e1a01009 	mov	r1, r9
   16080:	e1a00006 	mov	r0, r6
   16084:	eb0000b4 	bl	1635c <__aeabi_uidiv>
   16088:	e2448001 	sub	r8, r4, #1
   1608c:	e0899005 	add	r9, r9, r5
   16090:	e6ef8078 	uxtb	r8, r8
   16094:	e1a0a000 	mov	sl, r0
   16098:	e1a00006 	mov	r0, r6
   1609c:	e0010a94 	mul	r1, r4, sl
   160a0:	eb0000ad 	bl	1635c <__aeabi_uidiv>
   160a4:	e2844001 	add	r4, r4, #1
   160a8:	e1550000 	cmp	r5, r0
   160ac:	e0651000 	rsb	r1, r5, r0
   160b0:	80601005 	rsbhi	r1, r0, r5
   160b4:	e1510007 	cmp	r1, r7
   160b8:	388d0500 	stmcc	sp, {r8, sl}
   160bc:	31a07001 	movcc	r7, r1
   160c0:	e3540c01 	cmp	r4, #256	; 0x100
   160c4:	1affffec 	bne	1607c <XUartPs_SetBaudRate+0xd0>
   160c8:	e3a00064 	mov	r0, #100	; 0x64
   160cc:	e1a01005 	mov	r1, r5
   160d0:	e0000790 	mul	r0, r0, r7
   160d4:	eb0000a0 	bl	1635c <__aeabi_uidiv>
   160d8:	e3500003 	cmp	r0, #3
   160dc:	8affffc9 	bhi	16008 <XUartPs_SetBaudRate+0x5c>
   160e0:	e59b4004 	ldr	r4, [fp, #4]
   160e4:	e1a00004 	mov	r0, r4
   160e8:	ebfffd32 	bl	155b8 <Xil_In32>
   160ec:	e3c0103c 	bic	r1, r0, #60	; 0x3c
   160f0:	e1a00004 	mov	r0, r4
   160f4:	e3811028 	orr	r1, r1, #40	; 0x28
   160f8:	ebfffd37 	bl	155dc <Xil_Out32>
   160fc:	e59b0004 	ldr	r0, [fp, #4]
   16100:	e59d1004 	ldr	r1, [sp, #4]
   16104:	e2800018 	add	r0, r0, #24
   16108:	ebfffd33 	bl	155dc <Xil_Out32>
   1610c:	e59b0004 	ldr	r0, [fp, #4]
   16110:	e59d1000 	ldr	r1, [sp]
   16114:	e2800034 	add	r0, r0, #52	; 0x34
   16118:	ebfffd2f 	bl	155dc <Xil_Out32>
   1611c:	e59b4004 	ldr	r4, [fp, #4]
   16120:	e1a00004 	mov	r0, r4
   16124:	ebfffd23 	bl	155b8 <Xil_In32>
   16128:	e3c0103c 	bic	r1, r0, #60	; 0x3c
   1612c:	e1a00004 	mov	r0, r4
   16130:	e3811014 	orr	r1, r1, #20
   16134:	ebfffd28 	bl	155dc <Xil_Out32>
   16138:	e3a00000 	mov	r0, #0
   1613c:	e58b5018 	str	r5, [fp, #24]
   16140:	eaffffb1 	b	1600c <XUartPs_SetBaudRate+0x60>
   16144:	e3070dac 	movw	r0, #32172	; 0x7dac
   16148:	e300122e 	movw	r1, #558	; 0x22e
   1614c:	e3400001 	movt	r0, #1
   16150:	eb000059 	bl	162bc <Xil_Assert>
   16154:	e30b3f44 	movw	r3, #48964	; 0xbf44
   16158:	e3403019 	movt	r3, #25
   1615c:	e3a02001 	mov	r2, #1
   16160:	e1a0000b 	mov	r0, fp
   16164:	e5832000 	str	r2, [r3]
   16168:	eaffffa7 	b	1600c <XUartPs_SetBaudRate+0x60>

0001616c <XUartPs_CfgInitialize>:
   1616c:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
   16170:	e2504000 	subs	r4, r0, #0
   16174:	e1a03001 	mov	r3, r1
   16178:	0a00003a 	beq	16268 <XUartPs_CfgInitialize+0xfc>
   1617c:	e30b6f44 	movw	r6, #48964	; 0xbf44
   16180:	e3510000 	cmp	r1, #0
   16184:	e3406019 	movt	r6, #25
   16188:	e3a05000 	mov	r5, #0
   1618c:	e5865000 	str	r5, [r6]
   16190:	0a00002c 	beq	16248 <XUartPs_CfgInitialize+0xdc>
   16194:	e591e008 	ldr	lr, [r1, #8]
   16198:	e305cc94 	movw	ip, #23700	; 0x5c94
   1619c:	e591100c 	ldr	r1, [r1, #12]
   161a0:	e340c001 	movt	ip, #1
   161a4:	e5842004 	str	r2, [r4, #4]
   161a8:	e3013111 	movw	r3, #4369	; 0x1111
   161ac:	e584e008 	str	lr, [r4, #8]
   161b0:	e7df3813 	bfi	r3, r3, #16, #16
   161b4:	e584100c 	str	r1, [r4, #12]
   161b8:	e3a01cc2 	mov	r1, #49664	; 0xc200
   161bc:	e584c034 	str	ip, [r4, #52]	; 0x34
   161c0:	e3401001 	movt	r1, #1
   161c4:	e584501c 	str	r5, [r4, #28]
   161c8:	e5845024 	str	r5, [r4, #36]	; 0x24
   161cc:	e5845020 	str	r5, [r4, #32]
   161d0:	e5845028 	str	r5, [r4, #40]	; 0x28
   161d4:	e5845030 	str	r5, [r4, #48]	; 0x30
   161d8:	e584502c 	str	r5, [r4, #44]	; 0x2c
   161dc:	e5843014 	str	r3, [r4, #20]
   161e0:	ebffff71 	bl	15fac <XUartPs_SetBaudRate>
   161e4:	e2507000 	subs	r7, r0, #0
   161e8:	15845014 	strne	r5, [r4, #20]
   161ec:	1a000013 	bne	16240 <XUartPs_CfgInitialize+0xd4>
   161f0:	e5940004 	ldr	r0, [r4, #4]
   161f4:	e2800004 	add	r0, r0, #4
   161f8:	ebfffcee 	bl	155b8 <Xil_In32>
   161fc:	e5943004 	ldr	r3, [r4, #4]
   16200:	e3c010be 	bic	r1, r0, #190	; 0xbe
   16204:	e2830004 	add	r0, r3, #4
   16208:	e3811020 	orr	r1, r1, #32
   1620c:	ebfffcf2 	bl	155dc <Xil_Out32>
   16210:	e5940004 	ldr	r0, [r4, #4]
   16214:	e3a01008 	mov	r1, #8
   16218:	e2800020 	add	r0, r0, #32
   1621c:	ebfffcee 	bl	155dc <Xil_Out32>
   16220:	e5940004 	ldr	r0, [r4, #4]
   16224:	e3a01001 	mov	r1, #1
   16228:	e280001c 	add	r0, r0, #28
   1622c:	ebfffcea 	bl	155dc <Xil_Out32>
   16230:	e5940004 	ldr	r0, [r4, #4]
   16234:	e3011fff 	movw	r1, #8191	; 0x1fff
   16238:	e280000c 	add	r0, r0, #12
   1623c:	ebfffce6 	bl	155dc <Xil_Out32>
   16240:	e1a00007 	mov	r0, r7
   16244:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
   16248:	e3070dac 	movw	r0, #32172	; 0x7dac
   1624c:	e3a01090 	mov	r1, #144	; 0x90
   16250:	e3400001 	movt	r0, #1
   16254:	e1a07003 	mov	r7, r3
   16258:	eb000017 	bl	162bc <Xil_Assert>
   1625c:	e3a03001 	mov	r3, #1
   16260:	e5863000 	str	r3, [r6]
   16264:	eafffff5 	b	16240 <XUartPs_CfgInitialize+0xd4>
   16268:	e3070dac 	movw	r0, #32172	; 0x7dac
   1626c:	e3a0108f 	mov	r1, #143	; 0x8f
   16270:	e3400001 	movt	r0, #1
   16274:	e1a07004 	mov	r7, r4
   16278:	eb00000f 	bl	162bc <Xil_Assert>
   1627c:	e30b3f44 	movw	r3, #48964	; 0xbf44
   16280:	e3403019 	movt	r3, #25
   16284:	e3a02001 	mov	r2, #1
   16288:	e5832000 	str	r2, [r3]
   1628c:	eaffffeb 	b	16240 <XUartPs_CfgInitialize+0xd4>

00016290 <XUartPs_LookupConfig>:
   16290:	e3073dc8 	movw	r3, #32200	; 0x7dc8
   16294:	e3403001 	movt	r3, #1
   16298:	e1d320b0 	ldrh	r2, [r3]
   1629c:	e1520000 	cmp	r2, r0
   162a0:	01a00003 	moveq	r0, r3
   162a4:	13a00000 	movne	r0, #0
   162a8:	e12fff1e 	bx	lr

000162ac <outbyte>:
   162ac:	e1a01000 	mov	r1, r0
   162b0:	e3a00a01 	mov	r0, #4096	; 0x1000
   162b4:	e34e0000 	movt	r0, #57344	; 0xe000
   162b8:	ea000010 	b	16300 <XUartPs_SendByte>

000162bc <Xil_Assert>:
   162bc:	e92d4008 	push	{r3, lr}
   162c0:	e30a3e50 	movw	r3, #44624	; 0xae50
   162c4:	e3403019 	movt	r3, #25
   162c8:	e5933000 	ldr	r3, [r3]
   162cc:	e3530000 	cmp	r3, #0
   162d0:	0a000000 	beq	162d8 <Xil_Assert+0x1c>
   162d4:	e12fff33 	blx	r3
   162d8:	e3073dc4 	movw	r3, #32196	; 0x7dc4
   162dc:	e3403001 	movt	r3, #1
   162e0:	e5933000 	ldr	r3, [r3]
   162e4:	e3530000 	cmp	r3, #0
   162e8:	08bd8008 	popeq	{r3, pc}
   162ec:	eafffffe 	b	162ec <Xil_Assert+0x30>

000162f0 <Xil_AssertSetCallback>:
   162f0:	e30a3e50 	movw	r3, #44624	; 0xae50
   162f4:	e3403019 	movt	r3, #25
   162f8:	e5830000 	str	r0, [r3]
   162fc:	e12fff1e 	bx	lr

00016300 <XUartPs_SendByte>:
   16300:	e92d4070 	push	{r4, r5, r6, lr}
   16304:	e280402c 	add	r4, r0, #44	; 0x2c
   16308:	e1a05000 	mov	r5, r0
   1630c:	e1a06001 	mov	r6, r1
   16310:	e1a00004 	mov	r0, r4
   16314:	ebfffca7 	bl	155b8 <Xil_In32>
   16318:	e3100010 	tst	r0, #16
   1631c:	1afffffb 	bne	16310 <XUartPs_SendByte+0x10>
   16320:	e2850030 	add	r0, r5, #48	; 0x30
   16324:	e1a01006 	mov	r1, r6
   16328:	e8bd4070 	pop	{r4, r5, r6, lr}
   1632c:	eafffcaa 	b	155dc <Xil_Out32>

00016330 <XUartPs_RecvByte>:
   16330:	e92d4038 	push	{r3, r4, r5, lr}
   16334:	e280402c 	add	r4, r0, #44	; 0x2c
   16338:	e1a05000 	mov	r5, r0
   1633c:	e1a00004 	mov	r0, r4
   16340:	ebfffc9c 	bl	155b8 <Xil_In32>
   16344:	e3100002 	tst	r0, #2
   16348:	1afffffb 	bne	1633c <XUartPs_RecvByte+0xc>
   1634c:	e2850030 	add	r0, r5, #48	; 0x30
   16350:	ebfffc98 	bl	155b8 <Xil_In32>
   16354:	e6ef0070 	uxtb	r0, r0
   16358:	e8bd8038 	pop	{r3, r4, r5, pc}

0001635c <__aeabi_uidiv>:
   1635c:	e2512001 	subs	r2, r1, #1
   16360:	012fff1e 	bxeq	lr
   16364:	3a000074 	bcc	1653c <__aeabi_uidiv+0x1e0>
   16368:	e1500001 	cmp	r0, r1
   1636c:	9a00006b 	bls	16520 <__aeabi_uidiv+0x1c4>
   16370:	e1110002 	tst	r1, r2
   16374:	0a00006c 	beq	1652c <__aeabi_uidiv+0x1d0>
   16378:	e16f3f10 	clz	r3, r0
   1637c:	e16f2f11 	clz	r2, r1
   16380:	e0423003 	sub	r3, r2, r3
   16384:	e273301f 	rsbs	r3, r3, #31
   16388:	10833083 	addne	r3, r3, r3, lsl #1
   1638c:	e3a02000 	mov	r2, #0
   16390:	108ff103 	addne	pc, pc, r3, lsl #2
   16394:	e320f000 	nop	{0}
   16398:	e1500f81 	cmp	r0, r1, lsl #31
   1639c:	e0a22002 	adc	r2, r2, r2
   163a0:	20400f81 	subcs	r0, r0, r1, lsl #31
   163a4:	e1500f01 	cmp	r0, r1, lsl #30
   163a8:	e0a22002 	adc	r2, r2, r2
   163ac:	20400f01 	subcs	r0, r0, r1, lsl #30
   163b0:	e1500e81 	cmp	r0, r1, lsl #29
   163b4:	e0a22002 	adc	r2, r2, r2
   163b8:	20400e81 	subcs	r0, r0, r1, lsl #29
   163bc:	e1500e01 	cmp	r0, r1, lsl #28
   163c0:	e0a22002 	adc	r2, r2, r2
   163c4:	20400e01 	subcs	r0, r0, r1, lsl #28
   163c8:	e1500d81 	cmp	r0, r1, lsl #27
   163cc:	e0a22002 	adc	r2, r2, r2
   163d0:	20400d81 	subcs	r0, r0, r1, lsl #27
   163d4:	e1500d01 	cmp	r0, r1, lsl #26
   163d8:	e0a22002 	adc	r2, r2, r2
   163dc:	20400d01 	subcs	r0, r0, r1, lsl #26
   163e0:	e1500c81 	cmp	r0, r1, lsl #25
   163e4:	e0a22002 	adc	r2, r2, r2
   163e8:	20400c81 	subcs	r0, r0, r1, lsl #25
   163ec:	e1500c01 	cmp	r0, r1, lsl #24
   163f0:	e0a22002 	adc	r2, r2, r2
   163f4:	20400c01 	subcs	r0, r0, r1, lsl #24
   163f8:	e1500b81 	cmp	r0, r1, lsl #23
   163fc:	e0a22002 	adc	r2, r2, r2
   16400:	20400b81 	subcs	r0, r0, r1, lsl #23
   16404:	e1500b01 	cmp	r0, r1, lsl #22
   16408:	e0a22002 	adc	r2, r2, r2
   1640c:	20400b01 	subcs	r0, r0, r1, lsl #22
   16410:	e1500a81 	cmp	r0, r1, lsl #21
   16414:	e0a22002 	adc	r2, r2, r2
   16418:	20400a81 	subcs	r0, r0, r1, lsl #21
   1641c:	e1500a01 	cmp	r0, r1, lsl #20
   16420:	e0a22002 	adc	r2, r2, r2
   16424:	20400a01 	subcs	r0, r0, r1, lsl #20
   16428:	e1500981 	cmp	r0, r1, lsl #19
   1642c:	e0a22002 	adc	r2, r2, r2
   16430:	20400981 	subcs	r0, r0, r1, lsl #19
   16434:	e1500901 	cmp	r0, r1, lsl #18
   16438:	e0a22002 	adc	r2, r2, r2
   1643c:	20400901 	subcs	r0, r0, r1, lsl #18
   16440:	e1500881 	cmp	r0, r1, lsl #17
   16444:	e0a22002 	adc	r2, r2, r2
   16448:	20400881 	subcs	r0, r0, r1, lsl #17
   1644c:	e1500801 	cmp	r0, r1, lsl #16
   16450:	e0a22002 	adc	r2, r2, r2
   16454:	20400801 	subcs	r0, r0, r1, lsl #16
   16458:	e1500781 	cmp	r0, r1, lsl #15
   1645c:	e0a22002 	adc	r2, r2, r2
   16460:	20400781 	subcs	r0, r0, r1, lsl #15
   16464:	e1500701 	cmp	r0, r1, lsl #14
   16468:	e0a22002 	adc	r2, r2, r2
   1646c:	20400701 	subcs	r0, r0, r1, lsl #14
   16470:	e1500681 	cmp	r0, r1, lsl #13
   16474:	e0a22002 	adc	r2, r2, r2
   16478:	20400681 	subcs	r0, r0, r1, lsl #13
   1647c:	e1500601 	cmp	r0, r1, lsl #12
   16480:	e0a22002 	adc	r2, r2, r2
   16484:	20400601 	subcs	r0, r0, r1, lsl #12
   16488:	e1500581 	cmp	r0, r1, lsl #11
   1648c:	e0a22002 	adc	r2, r2, r2
   16490:	20400581 	subcs	r0, r0, r1, lsl #11
   16494:	e1500501 	cmp	r0, r1, lsl #10
   16498:	e0a22002 	adc	r2, r2, r2
   1649c:	20400501 	subcs	r0, r0, r1, lsl #10
   164a0:	e1500481 	cmp	r0, r1, lsl #9
   164a4:	e0a22002 	adc	r2, r2, r2
   164a8:	20400481 	subcs	r0, r0, r1, lsl #9
   164ac:	e1500401 	cmp	r0, r1, lsl #8
   164b0:	e0a22002 	adc	r2, r2, r2
   164b4:	20400401 	subcs	r0, r0, r1, lsl #8
   164b8:	e1500381 	cmp	r0, r1, lsl #7
   164bc:	e0a22002 	adc	r2, r2, r2
   164c0:	20400381 	subcs	r0, r0, r1, lsl #7
   164c4:	e1500301 	cmp	r0, r1, lsl #6
   164c8:	e0a22002 	adc	r2, r2, r2
   164cc:	20400301 	subcs	r0, r0, r1, lsl #6
   164d0:	e1500281 	cmp	r0, r1, lsl #5
   164d4:	e0a22002 	adc	r2, r2, r2
   164d8:	20400281 	subcs	r0, r0, r1, lsl #5
   164dc:	e1500201 	cmp	r0, r1, lsl #4
   164e0:	e0a22002 	adc	r2, r2, r2
   164e4:	20400201 	subcs	r0, r0, r1, lsl #4
   164e8:	e1500181 	cmp	r0, r1, lsl #3
   164ec:	e0a22002 	adc	r2, r2, r2
   164f0:	20400181 	subcs	r0, r0, r1, lsl #3
   164f4:	e1500101 	cmp	r0, r1, lsl #2
   164f8:	e0a22002 	adc	r2, r2, r2
   164fc:	20400101 	subcs	r0, r0, r1, lsl #2
   16500:	e1500081 	cmp	r0, r1, lsl #1
   16504:	e0a22002 	adc	r2, r2, r2
   16508:	20400081 	subcs	r0, r0, r1, lsl #1
   1650c:	e1500001 	cmp	r0, r1
   16510:	e0a22002 	adc	r2, r2, r2
   16514:	20400001 	subcs	r0, r0, r1
   16518:	e1a00002 	mov	r0, r2
   1651c:	e12fff1e 	bx	lr
   16520:	03a00001 	moveq	r0, #1
   16524:	13a00000 	movne	r0, #0
   16528:	e12fff1e 	bx	lr
   1652c:	e16f2f11 	clz	r2, r1
   16530:	e262201f 	rsb	r2, r2, #31
   16534:	e1a00230 	lsr	r0, r0, r2
   16538:	e12fff1e 	bx	lr
   1653c:	e3500000 	cmp	r0, #0
   16540:	13e00000 	mvnne	r0, #0
   16544:	ea000007 	b	16568 <__aeabi_idiv0>

00016548 <__aeabi_uidivmod>:
   16548:	e3510000 	cmp	r1, #0
   1654c:	0afffffa 	beq	1653c <__aeabi_uidiv+0x1e0>
   16550:	e92d4003 	push	{r0, r1, lr}
   16554:	ebffff80 	bl	1635c <__aeabi_uidiv>
   16558:	e8bd4006 	pop	{r1, r2, lr}
   1655c:	e0030092 	mul	r3, r2, r0
   16560:	e0411003 	sub	r1, r1, r3
   16564:	e12fff1e 	bx	lr

00016568 <__aeabi_idiv0>:
   16568:	e12fff1e 	bx	lr

0001656c <exit>:
   1656c:	e92d4008 	push	{r3, lr}
   16570:	e3a01000 	mov	r1, #0
   16574:	e1a04000 	mov	r4, r0
   16578:	eb000232 	bl	16e48 <__call_exitprocs>
   1657c:	e3073d94 	movw	r3, #32148	; 0x7d94
   16580:	e3403001 	movt	r3, #1
   16584:	e5930000 	ldr	r0, [r3]
   16588:	e590303c 	ldr	r3, [r0, #60]	; 0x3c
   1658c:	e3530000 	cmp	r3, #0
   16590:	0a000000 	beq	16598 <exit+0x2c>
   16594:	e12fff33 	blx	r3
   16598:	e1a00004 	mov	r0, r4
   1659c:	eb000402 	bl	175ac <_exit>

000165a0 <__libc_fini_array>:
   165a0:	e92d4038 	push	{r3, r4, r5, lr}
   165a4:	e3084634 	movw	r4, #34356	; 0x8634
   165a8:	e3085630 	movw	r5, #34352	; 0x8630
   165ac:	e3404001 	movt	r4, #1
   165b0:	e3405001 	movt	r5, #1
   165b4:	e0654004 	rsb	r4, r5, r4
   165b8:	e1b04144 	asrs	r4, r4, #2
   165bc:	10855104 	addne	r5, r5, r4, lsl #2
   165c0:	0a000003 	beq	165d4 <__libc_fini_array+0x34>
   165c4:	e5353004 	ldr	r3, [r5, #-4]!
   165c8:	e12fff33 	blx	r3
   165cc:	e2544001 	subs	r4, r4, #1
   165d0:	1afffffb 	bne	165c4 <__libc_fini_array+0x24>
   165d4:	e8bd4038 	pop	{r3, r4, r5, lr}
   165d8:	ea00040c 	b	17610 <_fini>

000165dc <__libc_init_array>:
   165dc:	e92d4070 	push	{r4, r5, r6, lr}
   165e0:	e3086628 	movw	r6, #34344	; 0x8628
   165e4:	e3085628 	movw	r5, #34344	; 0x8628
   165e8:	e3406001 	movt	r6, #1
   165ec:	e3405001 	movt	r5, #1
   165f0:	e0656006 	rsb	r6, r5, r6
   165f4:	e1b06146 	asrs	r6, r6, #2
   165f8:	12455004 	subne	r5, r5, #4
   165fc:	13a04000 	movne	r4, #0
   16600:	0a000004 	beq	16618 <__libc_init_array+0x3c>
   16604:	e5b53004 	ldr	r3, [r5, #4]!
   16608:	e2844001 	add	r4, r4, #1
   1660c:	e12fff33 	blx	r3
   16610:	e1560004 	cmp	r6, r4
   16614:	1afffffa 	bne	16604 <__libc_init_array+0x28>
   16618:	e3086630 	movw	r6, #34352	; 0x8630
   1661c:	e3085628 	movw	r5, #34344	; 0x8628
   16620:	e3406001 	movt	r6, #1
   16624:	e3405001 	movt	r5, #1
   16628:	e0656006 	rsb	r6, r5, r6
   1662c:	eb0003f1 	bl	175f8 <_init>
   16630:	e1b06146 	asrs	r6, r6, #2
   16634:	08bd8070 	popeq	{r4, r5, r6, pc}
   16638:	e2455004 	sub	r5, r5, #4
   1663c:	e3a04000 	mov	r4, #0
   16640:	e5b53004 	ldr	r3, [r5, #4]!
   16644:	e2844001 	add	r4, r4, #1
   16648:	e12fff33 	blx	r3
   1664c:	e1560004 	cmp	r6, r4
   16650:	1afffffa 	bne	16640 <__libc_init_array+0x64>
   16654:	e8bd8070 	pop	{r4, r5, r6, pc}

00016658 <malloc>:
   16658:	e3073de0 	movw	r3, #32224	; 0x7de0
   1665c:	e3403001 	movt	r3, #1
   16660:	e1a01000 	mov	r1, r0
   16664:	e5930000 	ldr	r0, [r3]
   16668:	ea000004 	b	16680 <_malloc_r>

0001666c <free>:
   1666c:	e3073de0 	movw	r3, #32224	; 0x7de0
   16670:	e3403001 	movt	r3, #1
   16674:	e1a01000 	mov	r1, r0
   16678:	e5930000 	ldr	r0, [r3]
   1667c:	ea000290 	b	170c4 <_free_r>

00016680 <_malloc_r>:
   16680:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   16684:	e281400b 	add	r4, r1, #11
   16688:	e3540016 	cmp	r4, #22
   1668c:	e24dd00c 	sub	sp, sp, #12
   16690:	83c44007 	bichi	r4, r4, #7
   16694:	e1a06000 	mov	r6, r0
   16698:	93a03000 	movls	r3, #0
   1669c:	93a04010 	movls	r4, #16
   166a0:	81a03fa4 	lsrhi	r3, r4, #31
   166a4:	e1540001 	cmp	r4, r1
   166a8:	21a01003 	movcs	r1, r3
   166ac:	33831001 	orrcc	r1, r3, #1
   166b0:	e3510000 	cmp	r1, #0
   166b4:	13a0300c 	movne	r3, #12
   166b8:	13a07000 	movne	r7, #0
   166bc:	15803000 	strne	r3, [r0]
   166c0:	1a000016 	bne	16720 <_malloc_r+0xa0>
   166c4:	eb0001b4 	bl	16d9c <__malloc_lock>
   166c8:	e3540f7e 	cmp	r4, #504	; 0x1f8
   166cc:	2a000016 	bcs	1672c <_malloc_r+0xac>
   166d0:	e1a071a4 	lsr	r7, r4, #3
   166d4:	e3085210 	movw	r5, #33296	; 0x8210
   166d8:	e3405001 	movt	r5, #1
   166dc:	e0852187 	add	r2, r5, r7, lsl #3
   166e0:	e592300c 	ldr	r3, [r2, #12]
   166e4:	e1530002 	cmp	r3, r2
   166e8:	0a000151 	beq	16c34 <_malloc_r+0x5b4>
   166ec:	e593c004 	ldr	ip, [r3, #4]
   166f0:	e2837008 	add	r7, r3, #8
   166f4:	e593200c 	ldr	r2, [r3, #12]
   166f8:	e1a00006 	mov	r0, r6
   166fc:	e3ccc003 	bic	ip, ip, #3
   16700:	e5931008 	ldr	r1, [r3, #8]
   16704:	e083300c 	add	r3, r3, ip
   16708:	e593c004 	ldr	ip, [r3, #4]
   1670c:	e581200c 	str	r2, [r1, #12]
   16710:	e38cc001 	orr	ip, ip, #1
   16714:	e5821008 	str	r1, [r2, #8]
   16718:	e583c004 	str	ip, [r3, #4]
   1671c:	eb00019f 	bl	16da0 <__malloc_unlock>
   16720:	e1a00007 	mov	r0, r7
   16724:	e28dd00c 	add	sp, sp, #12
   16728:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   1672c:	e1b074a4 	lsrs	r7, r4, #9
   16730:	01a071a4 	lsreq	r7, r4, #3
   16734:	01a0c087 	lsleq	ip, r7, #1
   16738:	1a000062 	bne	168c8 <_malloc_r+0x248>
   1673c:	e3085210 	movw	r5, #33296	; 0x8210
   16740:	e3405001 	movt	r5, #1
   16744:	e085c10c 	add	ip, r5, ip, lsl #2
   16748:	e59c300c 	ldr	r3, [ip, #12]
   1674c:	e15c0003 	cmp	ip, r3
   16750:	1a000005 	bne	1676c <_malloc_r+0xec>
   16754:	ea00000a 	b	16784 <_malloc_r+0x104>
   16758:	e3520000 	cmp	r2, #0
   1675c:	aa0000dc 	bge	16ad4 <_malloc_r+0x454>
   16760:	e593300c 	ldr	r3, [r3, #12]
   16764:	e15c0003 	cmp	ip, r3
   16768:	0a000005 	beq	16784 <_malloc_r+0x104>
   1676c:	e5931004 	ldr	r1, [r3, #4]
   16770:	e3c11003 	bic	r1, r1, #3
   16774:	e0642001 	rsb	r2, r4, r1
   16778:	e352000f 	cmp	r2, #15
   1677c:	dafffff5 	ble	16758 <_malloc_r+0xd8>
   16780:	e2477001 	sub	r7, r7, #1
   16784:	e2877001 	add	r7, r7, #1
   16788:	e3082210 	movw	r2, #33296	; 0x8210
   1678c:	e5953010 	ldr	r3, [r5, #16]
   16790:	e3402001 	movt	r2, #1
   16794:	e282e008 	add	lr, r2, #8
   16798:	e153000e 	cmp	r3, lr
   1679c:	05921004 	ldreq	r1, [r2, #4]
   167a0:	0a000016 	beq	16800 <_malloc_r+0x180>
   167a4:	e5931004 	ldr	r1, [r3, #4]
   167a8:	e3c11003 	bic	r1, r1, #3
   167ac:	e064c001 	rsb	ip, r4, r1
   167b0:	e35c000f 	cmp	ip, #15
   167b4:	ca0000fc 	bgt	16bac <_malloc_r+0x52c>
   167b8:	e35c0000 	cmp	ip, #0
   167bc:	e582e014 	str	lr, [r2, #20]
   167c0:	e582e010 	str	lr, [r2, #16]
   167c4:	aa000045 	bge	168e0 <_malloc_r+0x260>
   167c8:	e3510c02 	cmp	r1, #512	; 0x200
   167cc:	2a0000d6 	bcs	16b2c <_malloc_r+0x4ac>
   167d0:	e1a011a1 	lsr	r1, r1, #3
   167d4:	e592c004 	ldr	ip, [r2, #4]
   167d8:	e3a08001 	mov	r8, #1
   167dc:	e0820181 	add	r0, r2, r1, lsl #3
   167e0:	e1a01141 	asr	r1, r1, #2
   167e4:	e18c1118 	orr	r1, ip, r8, lsl r1
   167e8:	e583000c 	str	r0, [r3, #12]
   167ec:	e590c008 	ldr	ip, [r0, #8]
   167f0:	e5821004 	str	r1, [r2, #4]
   167f4:	e583c008 	str	ip, [r3, #8]
   167f8:	e58c300c 	str	r3, [ip, #12]
   167fc:	e5803008 	str	r3, [r0, #8]
   16800:	e1a00147 	asr	r0, r7, #2
   16804:	e3a03001 	mov	r3, #1
   16808:	e1a00013 	lsl	r0, r3, r0
   1680c:	e1500001 	cmp	r0, r1
   16810:	8a00003a 	bhi	16900 <_malloc_r+0x280>
   16814:	e1110000 	tst	r1, r0
   16818:	1a000008 	bne	16840 <_malloc_r+0x1c0>
   1681c:	e1a00310 	lsl	r0, r0, r3
   16820:	e3c77003 	bic	r7, r7, #3
   16824:	e1110000 	tst	r1, r0
   16828:	e2877004 	add	r7, r7, #4
   1682c:	1a000003 	bne	16840 <_malloc_r+0x1c0>
   16830:	e1a00080 	lsl	r0, r0, #1
   16834:	e2877004 	add	r7, r7, #4
   16838:	e1110000 	tst	r1, r0
   1683c:	0afffffb 	beq	16830 <_malloc_r+0x1b0>
   16840:	e085a187 	add	sl, r5, r7, lsl #3
   16844:	e1a08007 	mov	r8, r7
   16848:	e1a0c00a 	mov	ip, sl
   1684c:	e59c200c 	ldr	r2, [ip, #12]
   16850:	e15c0002 	cmp	ip, r2
   16854:	1a000005 	bne	16870 <_malloc_r+0x1f0>
   16858:	ea0000e0 	b	16be0 <_malloc_r+0x560>
   1685c:	e3510000 	cmp	r1, #0
   16860:	aa0000f9 	bge	16c4c <_malloc_r+0x5cc>
   16864:	e592200c 	ldr	r2, [r2, #12]
   16868:	e15c0002 	cmp	ip, r2
   1686c:	0a0000db 	beq	16be0 <_malloc_r+0x560>
   16870:	e5923004 	ldr	r3, [r2, #4]
   16874:	e3c33003 	bic	r3, r3, #3
   16878:	e0641003 	rsb	r1, r4, r3
   1687c:	e351000f 	cmp	r1, #15
   16880:	dafffff5 	ble	1685c <_malloc_r+0x1dc>
   16884:	e1a07002 	mov	r7, r2
   16888:	e592c00c 	ldr	ip, [r2, #12]
   1688c:	e5b78008 	ldr	r8, [r7, #8]!
   16890:	e0823004 	add	r3, r2, r4
   16894:	e381a001 	orr	sl, r1, #1
   16898:	e3844001 	orr	r4, r4, #1
   1689c:	e1a00006 	mov	r0, r6
   168a0:	e5824004 	str	r4, [r2, #4]
   168a4:	e588c00c 	str	ip, [r8, #12]
   168a8:	e58c8008 	str	r8, [ip, #8]
   168ac:	e5853014 	str	r3, [r5, #20]
   168b0:	e5853010 	str	r3, [r5, #16]
   168b4:	e583e00c 	str	lr, [r3, #12]
   168b8:	e9834400 	stmib	r3, {sl, lr}
   168bc:	e7831001 	str	r1, [r3, r1]
   168c0:	eb000136 	bl	16da0 <__malloc_unlock>
   168c4:	eaffff95 	b	16720 <_malloc_r+0xa0>
   168c8:	e3570004 	cmp	r7, #4
   168cc:	8a00008c 	bhi	16b04 <_malloc_r+0x484>
   168d0:	e1a07324 	lsr	r7, r4, #6
   168d4:	e2877038 	add	r7, r7, #56	; 0x38
   168d8:	e1a0c087 	lsl	ip, r7, #1
   168dc:	eaffff96 	b	1673c <_malloc_r+0xbc>
   168e0:	e0831001 	add	r1, r3, r1
   168e4:	e2837008 	add	r7, r3, #8
   168e8:	e1a00006 	mov	r0, r6
   168ec:	e5913004 	ldr	r3, [r1, #4]
   168f0:	e3833001 	orr	r3, r3, #1
   168f4:	e5813004 	str	r3, [r1, #4]
   168f8:	eb000128 	bl	16da0 <__malloc_unlock>
   168fc:	eaffff87 	b	16720 <_malloc_r+0xa0>
   16900:	e5957008 	ldr	r7, [r5, #8]
   16904:	e5979004 	ldr	r9, [r7, #4]
   16908:	e3c99003 	bic	r9, r9, #3
   1690c:	e1540009 	cmp	r4, r9
   16910:	8a000002 	bhi	16920 <_malloc_r+0x2a0>
   16914:	e0643009 	rsb	r3, r4, r9
   16918:	e353000f 	cmp	r3, #15
   1691c:	ca000062 	bgt	16aac <_malloc_r+0x42c>
   16920:	e5953408 	ldr	r3, [r5, #1032]	; 0x408
   16924:	e30aae54 	movw	sl, #44628	; 0xae54
   16928:	e340a019 	movt	sl, #25
   1692c:	e1a00006 	mov	r0, r6
   16930:	e3730001 	cmn	r3, #1
   16934:	e0872009 	add	r2, r7, r9
   16938:	e59a3000 	ldr	r3, [sl]
   1693c:	e58d2004 	str	r2, [sp, #4]
   16940:	e0843003 	add	r3, r4, r3
   16944:	12833a01 	addne	r3, r3, #4096	; 0x1000
   16948:	0283b010 	addeq	fp, r3, #16
   1694c:	1283300f 	addne	r3, r3, #15
   16950:	13c33eff 	bicne	r3, r3, #4080	; 0xff0
   16954:	13c3b00f 	bicne	fp, r3, #15
   16958:	e1a0100b 	mov	r1, fp
   1695c:	eb000110 	bl	16da4 <_sbrk_r>
   16960:	e59d2004 	ldr	r2, [sp, #4]
   16964:	e3700001 	cmn	r0, #1
   16968:	e1a08000 	mov	r8, r0
   1696c:	0a0000e2 	beq	16cfc <_malloc_r+0x67c>
   16970:	e1520000 	cmp	r2, r0
   16974:	8a0000be 	bhi	16c74 <_malloc_r+0x5f4>
   16978:	e59a3004 	ldr	r3, [sl, #4]
   1697c:	e1520008 	cmp	r2, r8
   16980:	e08b3003 	add	r3, fp, r3
   16984:	e58a3004 	str	r3, [sl, #4]
   16988:	0a0000df 	beq	16d0c <_malloc_r+0x68c>
   1698c:	e5950408 	ldr	r0, [r5, #1032]	; 0x408
   16990:	e3081210 	movw	r1, #33296	; 0x8210
   16994:	e3401001 	movt	r1, #1
   16998:	e3700001 	cmn	r0, #1
   1699c:	e1a00006 	mov	r0, r6
   169a0:	10622008 	rsbne	r2, r2, r8
   169a4:	05818408 	streq	r8, [r1, #1032]	; 0x408
   169a8:	10833002 	addne	r3, r3, r2
   169ac:	158a3004 	strne	r3, [sl, #4]
   169b0:	e2183007 	ands	r3, r8, #7
   169b4:	12632008 	rsbne	r2, r3, #8
   169b8:	12633a01 	rsbne	r3, r3, #4096	; 0x1000
   169bc:	10888002 	addne	r8, r8, r2
   169c0:	12832008 	addne	r2, r3, #8
   169c4:	e088300b 	add	r3, r8, fp
   169c8:	03a02a01 	moveq	r2, #4096	; 0x1000
   169cc:	e1a03a03 	lsl	r3, r3, #20
   169d0:	e1a03a23 	lsr	r3, r3, #20
   169d4:	e063b002 	rsb	fp, r3, r2
   169d8:	e1a0100b 	mov	r1, fp
   169dc:	eb0000f0 	bl	16da4 <_sbrk_r>
   169e0:	e59a3004 	ldr	r3, [sl, #4]
   169e4:	e30a2e54 	movw	r2, #44628	; 0xae54
   169e8:	e5858008 	str	r8, [r5, #8]
   169ec:	e3402019 	movt	r2, #25
   169f0:	e3700001 	cmn	r0, #1
   169f4:	10681000 	rsbne	r1, r8, r0
   169f8:	108b1001 	addne	r1, fp, r1
   169fc:	03a01001 	moveq	r1, #1
   16a00:	13811001 	orrne	r1, r1, #1
   16a04:	03a0b000 	moveq	fp, #0
   16a08:	e1570005 	cmp	r7, r5
   16a0c:	e08b3003 	add	r3, fp, r3
   16a10:	e5881004 	str	r1, [r8, #4]
   16a14:	e58a3004 	str	r3, [sl, #4]
   16a18:	0a00000d 	beq	16a54 <_malloc_r+0x3d4>
   16a1c:	e359000f 	cmp	r9, #15
   16a20:	9a0000a8 	bls	16cc8 <_malloc_r+0x648>
   16a24:	e249100c 	sub	r1, r9, #12
   16a28:	e597e004 	ldr	lr, [r7, #4]
   16a2c:	e3c11007 	bic	r1, r1, #7
   16a30:	e3a0c005 	mov	ip, #5
   16a34:	e0870001 	add	r0, r7, r1
   16a38:	e351000f 	cmp	r1, #15
   16a3c:	e20ee001 	and	lr, lr, #1
   16a40:	e181100e 	orr	r1, r1, lr
   16a44:	e5871004 	str	r1, [r7, #4]
   16a48:	e580c004 	str	ip, [r0, #4]
   16a4c:	e580c008 	str	ip, [r0, #8]
   16a50:	8a0000b6 	bhi	16d30 <_malloc_r+0x6b0>
   16a54:	e59a102c 	ldr	r1, [sl, #44]	; 0x2c
   16a58:	e30a2e54 	movw	r2, #44628	; 0xae54
   16a5c:	e3402019 	movt	r2, #25
   16a60:	e5957008 	ldr	r7, [r5, #8]
   16a64:	e1530001 	cmp	r3, r1
   16a68:	e59a1030 	ldr	r1, [sl, #48]	; 0x30
   16a6c:	8582302c 	strhi	r3, [r2, #44]	; 0x2c
   16a70:	e30a2e54 	movw	r2, #44628	; 0xae54
   16a74:	e3402019 	movt	r2, #25
   16a78:	e1530001 	cmp	r3, r1
   16a7c:	85823030 	strhi	r3, [r2, #48]	; 0x30
   16a80:	e5973004 	ldr	r3, [r7, #4]
   16a84:	e3c33003 	bic	r3, r3, #3
   16a88:	e1540003 	cmp	r4, r3
   16a8c:	e0643003 	rsb	r3, r4, r3
   16a90:	8a000001 	bhi	16a9c <_malloc_r+0x41c>
   16a94:	e353000f 	cmp	r3, #15
   16a98:	ca000003 	bgt	16aac <_malloc_r+0x42c>
   16a9c:	e1a00006 	mov	r0, r6
   16aa0:	e3a07000 	mov	r7, #0
   16aa4:	eb0000bd 	bl	16da0 <__malloc_unlock>
   16aa8:	eaffff1c 	b	16720 <_malloc_r+0xa0>
   16aac:	e0872004 	add	r2, r7, r4
   16ab0:	e3833001 	orr	r3, r3, #1
   16ab4:	e3844001 	orr	r4, r4, #1
   16ab8:	e1a00006 	mov	r0, r6
   16abc:	e5874004 	str	r4, [r7, #4]
   16ac0:	e2877008 	add	r7, r7, #8
   16ac4:	e5823004 	str	r3, [r2, #4]
   16ac8:	e5852008 	str	r2, [r5, #8]
   16acc:	eb0000b3 	bl	16da0 <__malloc_unlock>
   16ad0:	eaffff12 	b	16720 <_malloc_r+0xa0>
   16ad4:	e0831001 	add	r1, r3, r1
   16ad8:	e593200c 	ldr	r2, [r3, #12]
   16adc:	e593c008 	ldr	ip, [r3, #8]
   16ae0:	e2837008 	add	r7, r3, #8
   16ae4:	e591e004 	ldr	lr, [r1, #4]
   16ae8:	e1a00006 	mov	r0, r6
   16aec:	e38e3001 	orr	r3, lr, #1
   16af0:	e58c200c 	str	r2, [ip, #12]
   16af4:	e582c008 	str	ip, [r2, #8]
   16af8:	e5813004 	str	r3, [r1, #4]
   16afc:	eb0000a7 	bl	16da0 <__malloc_unlock>
   16b00:	eaffff06 	b	16720 <_malloc_r+0xa0>
   16b04:	e3570014 	cmp	r7, #20
   16b08:	9287705b 	addls	r7, r7, #91	; 0x5b
   16b0c:	91a0c087 	lslls	ip, r7, #1
   16b10:	9affff09 	bls	1673c <_malloc_r+0xbc>
   16b14:	e3570054 	cmp	r7, #84	; 0x54
   16b18:	8a00005d 	bhi	16c94 <_malloc_r+0x614>
   16b1c:	e1a07624 	lsr	r7, r4, #12
   16b20:	e287706e 	add	r7, r7, #110	; 0x6e
   16b24:	e1a0c087 	lsl	ip, r7, #1
   16b28:	eaffff03 	b	1673c <_malloc_r+0xbc>
   16b2c:	e1a024a1 	lsr	r2, r1, #9
   16b30:	e3520004 	cmp	r2, #4
   16b34:	9a00004a 	bls	16c64 <_malloc_r+0x5e4>
   16b38:	e3520014 	cmp	r2, #20
   16b3c:	9282805b 	addls	r8, r2, #91	; 0x5b
   16b40:	91a0c088 	lslls	ip, r8, #1
   16b44:	9a000004 	bls	16b5c <_malloc_r+0x4dc>
   16b48:	e3520054 	cmp	r2, #84	; 0x54
   16b4c:	8a00007e 	bhi	16d4c <_malloc_r+0x6cc>
   16b50:	e1a08621 	lsr	r8, r1, #12
   16b54:	e288806e 	add	r8, r8, #110	; 0x6e
   16b58:	e1a0c088 	lsl	ip, r8, #1
   16b5c:	e085c10c 	add	ip, r5, ip, lsl #2
   16b60:	e3080210 	movw	r0, #33296	; 0x8210
   16b64:	e3400001 	movt	r0, #1
   16b68:	e59c2008 	ldr	r2, [ip, #8]
   16b6c:	e152000c 	cmp	r2, ip
   16b70:	0a00004d 	beq	16cac <_malloc_r+0x62c>
   16b74:	e5920004 	ldr	r0, [r2, #4]
   16b78:	e3c00003 	bic	r0, r0, #3
   16b7c:	e1510000 	cmp	r1, r0
   16b80:	2a000002 	bcs	16b90 <_malloc_r+0x510>
   16b84:	e5922008 	ldr	r2, [r2, #8]
   16b88:	e15c0002 	cmp	ip, r2
   16b8c:	1afffff8 	bne	16b74 <_malloc_r+0x4f4>
   16b90:	e592c00c 	ldr	ip, [r2, #12]
   16b94:	e5951004 	ldr	r1, [r5, #4]
   16b98:	e583c00c 	str	ip, [r3, #12]
   16b9c:	e5832008 	str	r2, [r3, #8]
   16ba0:	e582300c 	str	r3, [r2, #12]
   16ba4:	e58c3008 	str	r3, [ip, #8]
   16ba8:	eaffff14 	b	16800 <_malloc_r+0x180>
   16bac:	e0831004 	add	r1, r3, r4
   16bb0:	e38c5001 	orr	r5, ip, #1
   16bb4:	e5821014 	str	r1, [r2, #20]
   16bb8:	e3844001 	orr	r4, r4, #1
   16bbc:	e5821010 	str	r1, [r2, #16]
   16bc0:	e1a00006 	mov	r0, r6
   16bc4:	e5834004 	str	r4, [r3, #4]
   16bc8:	e2837008 	add	r7, r3, #8
   16bcc:	e581e00c 	str	lr, [r1, #12]
   16bd0:	e9814020 	stmib	r1, {r5, lr}
   16bd4:	e781c00c 	str	ip, [r1, ip]
   16bd8:	eb000070 	bl	16da0 <__malloc_unlock>
   16bdc:	eafffecf 	b	16720 <_malloc_r+0xa0>
   16be0:	e2888001 	add	r8, r8, #1
   16be4:	e28cc008 	add	ip, ip, #8
   16be8:	e3180003 	tst	r8, #3
   16bec:	1affff16 	bne	1684c <_malloc_r+0x1cc>
   16bf0:	e3170003 	tst	r7, #3
   16bf4:	e24a3008 	sub	r3, sl, #8
   16bf8:	e2477001 	sub	r7, r7, #1
   16bfc:	0a00005f 	beq	16d80 <_malloc_r+0x700>
   16c00:	e59aa000 	ldr	sl, [sl]
   16c04:	e15a0003 	cmp	sl, r3
   16c08:	0afffff8 	beq	16bf0 <_malloc_r+0x570>
   16c0c:	e5953004 	ldr	r3, [r5, #4]
   16c10:	e1a00080 	lsl	r0, r0, #1
   16c14:	e1500003 	cmp	r0, r3
   16c18:	8affff38 	bhi	16900 <_malloc_r+0x280>
   16c1c:	e3500000 	cmp	r0, #0
   16c20:	0affff36 	beq	16900 <_malloc_r+0x280>
   16c24:	e1130000 	tst	r3, r0
   16c28:	0a000058 	beq	16d90 <_malloc_r+0x710>
   16c2c:	e1a07008 	mov	r7, r8
   16c30:	eaffff02 	b	16840 <_malloc_r+0x1c0>
   16c34:	e2832008 	add	r2, r3, #8
   16c38:	e5933014 	ldr	r3, [r3, #20]
   16c3c:	e1520003 	cmp	r2, r3
   16c40:	02877002 	addeq	r7, r7, #2
   16c44:	0afffecf 	beq	16788 <_malloc_r+0x108>
   16c48:	eafffea7 	b	166ec <_malloc_r+0x6c>
   16c4c:	e1a07002 	mov	r7, r2
   16c50:	e0823003 	add	r3, r2, r3
   16c54:	e1a00006 	mov	r0, r6
   16c58:	e592200c 	ldr	r2, [r2, #12]
   16c5c:	e5b71008 	ldr	r1, [r7, #8]!
   16c60:	eafffea8 	b	16708 <_malloc_r+0x88>
   16c64:	e1a08321 	lsr	r8, r1, #6
   16c68:	e2888038 	add	r8, r8, #56	; 0x38
   16c6c:	e1a0c088 	lsl	ip, r8, #1
   16c70:	eaffffb9 	b	16b5c <_malloc_r+0x4dc>
   16c74:	e1570005 	cmp	r7, r5
   16c78:	e3083210 	movw	r3, #33296	; 0x8210
   16c7c:	e3403001 	movt	r3, #1
   16c80:	0affff3c 	beq	16978 <_malloc_r+0x2f8>
   16c84:	e5937008 	ldr	r7, [r3, #8]
   16c88:	e5973004 	ldr	r3, [r7, #4]
   16c8c:	e3c33003 	bic	r3, r3, #3
   16c90:	eaffff7c 	b	16a88 <_malloc_r+0x408>
   16c94:	e3570f55 	cmp	r7, #340	; 0x154
   16c98:	8a00000f 	bhi	16cdc <_malloc_r+0x65c>
   16c9c:	e1a077a4 	lsr	r7, r4, #15
   16ca0:	e2877077 	add	r7, r7, #119	; 0x77
   16ca4:	e1a0c087 	lsl	ip, r7, #1
   16ca8:	eafffea3 	b	1673c <_malloc_r+0xbc>
   16cac:	e590a004 	ldr	sl, [r0, #4]
   16cb0:	e1a08148 	asr	r8, r8, #2
   16cb4:	e3a01001 	mov	r1, #1
   16cb8:	e1a0c002 	mov	ip, r2
   16cbc:	e18a1811 	orr	r1, sl, r1, lsl r8
   16cc0:	e5801004 	str	r1, [r0, #4]
   16cc4:	eaffffb3 	b	16b98 <_malloc_r+0x518>
   16cc8:	e3a03001 	mov	r3, #1
   16ccc:	e1a07008 	mov	r7, r8
   16cd0:	e5883004 	str	r3, [r8, #4]
   16cd4:	e3a03000 	mov	r3, #0
   16cd8:	eaffff6a 	b	16a88 <_malloc_r+0x408>
   16cdc:	e3003554 	movw	r3, #1364	; 0x554
   16ce0:	e1570003 	cmp	r7, r3
   16ce4:	91a07924 	lsrls	r7, r4, #18
   16ce8:	9287707c 	addls	r7, r7, #124	; 0x7c
   16cec:	83a0c0fc 	movhi	ip, #252	; 0xfc
   16cf0:	83a0707e 	movhi	r7, #126	; 0x7e
   16cf4:	91a0c087 	lslls	ip, r7, #1
   16cf8:	eafffe8f 	b	1673c <_malloc_r+0xbc>
   16cfc:	e5957008 	ldr	r7, [r5, #8]
   16d00:	e5973004 	ldr	r3, [r7, #4]
   16d04:	e3c33003 	bic	r3, r3, #3
   16d08:	eaffff5e 	b	16a88 <_malloc_r+0x408>
   16d0c:	e1a01a02 	lsl	r1, r2, #20
   16d10:	e1a01a21 	lsr	r1, r1, #20
   16d14:	e3510000 	cmp	r1, #0
   16d18:	1affff1b 	bne	1698c <_malloc_r+0x30c>
   16d1c:	e5952008 	ldr	r2, [r5, #8]
   16d20:	e08b1009 	add	r1, fp, r9
   16d24:	e3811001 	orr	r1, r1, #1
   16d28:	e5821004 	str	r1, [r2, #4]
   16d2c:	eaffff48 	b	16a54 <_malloc_r+0x3d4>
   16d30:	e1a00006 	mov	r0, r6
   16d34:	e2871008 	add	r1, r7, #8
   16d38:	e58d2004 	str	r2, [sp, #4]
   16d3c:	eb0000e0 	bl	170c4 <_free_r>
   16d40:	e59d2004 	ldr	r2, [sp, #4]
   16d44:	e5923004 	ldr	r3, [r2, #4]
   16d48:	eaffff41 	b	16a54 <_malloc_r+0x3d4>
   16d4c:	e3520f55 	cmp	r2, #340	; 0x154
   16d50:	91a087a1 	lsrls	r8, r1, #15
   16d54:	92888077 	addls	r8, r8, #119	; 0x77
   16d58:	91a0c088 	lslls	ip, r8, #1
   16d5c:	9affff7e 	bls	16b5c <_malloc_r+0x4dc>
   16d60:	e3000554 	movw	r0, #1364	; 0x554
   16d64:	e1520000 	cmp	r2, r0
   16d68:	91a08921 	lsrls	r8, r1, #18
   16d6c:	9288807c 	addls	r8, r8, #124	; 0x7c
   16d70:	83a0c0fc 	movhi	ip, #252	; 0xfc
   16d74:	83a0807e 	movhi	r8, #126	; 0x7e
   16d78:	91a0c088 	lslls	ip, r8, #1
   16d7c:	eaffff76 	b	16b5c <_malloc_r+0x4dc>
   16d80:	e5953004 	ldr	r3, [r5, #4]
   16d84:	e1c33000 	bic	r3, r3, r0
   16d88:	e5853004 	str	r3, [r5, #4]
   16d8c:	eaffff9f 	b	16c10 <_malloc_r+0x590>
   16d90:	e1a00080 	lsl	r0, r0, #1
   16d94:	e2888004 	add	r8, r8, #4
   16d98:	eaffffa1 	b	16c24 <_malloc_r+0x5a4>

00016d9c <__malloc_lock>:
   16d9c:	e12fff1e 	bx	lr

00016da0 <__malloc_unlock>:
   16da0:	e12fff1e 	bx	lr

00016da4 <_sbrk_r>:
   16da4:	e92d4038 	push	{r3, r4, r5, lr}
   16da8:	e30b4f48 	movw	r4, #48968	; 0xbf48
   16dac:	e3404019 	movt	r4, #25
   16db0:	e1a05000 	mov	r5, r0
   16db4:	e1a00001 	mov	r0, r1
   16db8:	e3a03000 	mov	r3, #0
   16dbc:	e5843000 	str	r3, [r4]
   16dc0:	eb0001fa 	bl	175b0 <_sbrk>
   16dc4:	e3700001 	cmn	r0, #1
   16dc8:	18bd8038 	popne	{r3, r4, r5, pc}
   16dcc:	e5943000 	ldr	r3, [r4]
   16dd0:	e3530000 	cmp	r3, #0
   16dd4:	15853000 	strne	r3, [r5]
   16dd8:	e8bd8038 	pop	{r3, r4, r5, pc}

00016ddc <strlen>:
   16ddc:	f5d0f000 	pld	[r0]
   16de0:	e3c01003 	bic	r1, r0, #3
   16de4:	e2100003 	ands	r0, r0, #3
   16de8:	e2600000 	rsb	r0, r0, #0
   16dec:	e4913004 	ldr	r3, [r1], #4
   16df0:	e280c004 	add	ip, r0, #4
   16df4:	e1a0c18c 	lsl	ip, ip, #3
   16df8:	e3e02000 	mvn	r2, #0
   16dfc:	11833c32 	orrne	r3, r3, r2, lsr ip
   16e00:	e300c101 	movw	ip, #257	; 0x101
   16e04:	e18cc80c 	orr	ip, ip, ip, lsl #16
   16e08:	e043200c 	sub	r2, r3, ip
   16e0c:	e1c22003 	bic	r2, r2, r3
   16e10:	e012238c 	ands	r2, r2, ip, lsl #7
   16e14:	04913004 	ldreq	r3, [r1], #4
   16e18:	02800004 	addeq	r0, r0, #4
   16e1c:	f5d1f008 	pld	[r1, #8]
   16e20:	0043200c 	subeq	r2, r3, ip
   16e24:	01c22003 	biceq	r2, r2, r3
   16e28:	0012238c 	andseq	r2, r2, ip, lsl #7
   16e2c:	04913004 	ldreq	r3, [r1], #4
   16e30:	02800004 	addeq	r0, r0, #4
   16e34:	0afffff3 	beq	16e08 <strlen+0x2c>
   16e38:	e6ff2f32 	rbit	r2, r2
   16e3c:	e16f2f12 	clz	r2, r2
   16e40:	e08001a2 	add	r0, r0, r2, lsr #3
   16e44:	e12fff1e 	bx	lr

00016e48 <__call_exitprocs>:
   16e48:	e3073d94 	movw	r3, #32148	; 0x7d94
   16e4c:	e3403001 	movt	r3, #1
   16e50:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   16e54:	e24dd014 	sub	sp, sp, #20
   16e58:	e5933000 	ldr	r3, [r3]
   16e5c:	e1a06001 	mov	r6, r1
   16e60:	e3a0a001 	mov	sl, #1
   16e64:	e306266c 	movw	r2, #26220	; 0x666c
   16e68:	e58d0008 	str	r0, [sp, #8]
   16e6c:	e3402001 	movt	r2, #1
   16e70:	e58d3004 	str	r3, [sp, #4]
   16e74:	e2833f52 	add	r3, r3, #328	; 0x148
   16e78:	e58d2000 	str	r2, [sp]
   16e7c:	e58d300c 	str	r3, [sp, #12]
   16e80:	e59d2004 	ldr	r2, [sp, #4]
   16e84:	e59db00c 	ldr	fp, [sp, #12]
   16e88:	e5927148 	ldr	r7, [r2, #328]	; 0x148
   16e8c:	e3570000 	cmp	r7, #0
   16e90:	0a000032 	beq	16f60 <__call_exitprocs+0x118>
   16e94:	e5975004 	ldr	r5, [r7, #4]
   16e98:	e2554001 	subs	r4, r5, #1
   16e9c:	4a00002c 	bmi	16f54 <__call_exitprocs+0x10c>
   16ea0:	e285501f 	add	r5, r5, #31
   16ea4:	e2878088 	add	r8, r7, #136	; 0x88
   16ea8:	e0885105 	add	r5, r8, r5, lsl #2
   16eac:	ea000006 	b	16ecc <__call_exitprocs+0x84>
   16eb0:	e5953000 	ldr	r3, [r5]
   16eb4:	e1530006 	cmp	r3, r6
   16eb8:	0a000005 	beq	16ed4 <__call_exitprocs+0x8c>
   16ebc:	e2444001 	sub	r4, r4, #1
   16ec0:	e2455004 	sub	r5, r5, #4
   16ec4:	e3740001 	cmn	r4, #1
   16ec8:	0a000021 	beq	16f54 <__call_exitprocs+0x10c>
   16ecc:	e3560000 	cmp	r6, #0
   16ed0:	1afffff6 	bne	16eb0 <__call_exitprocs+0x68>
   16ed4:	e5973004 	ldr	r3, [r7, #4]
   16ed8:	e0682005 	rsb	r2, r8, r5
   16edc:	e0872002 	add	r2, r7, r2
   16ee0:	e2433001 	sub	r3, r3, #1
   16ee4:	e1530004 	cmp	r3, r4
   16ee8:	e5123078 	ldr	r3, [r2, #-120]	; 0xffffff88
   16eec:	05874004 	streq	r4, [r7, #4]
   16ef0:	13a01000 	movne	r1, #0
   16ef4:	15021078 	strne	r1, [r2, #-120]	; 0xffffff88
   16ef8:	e3530000 	cmp	r3, #0
   16efc:	0affffee 	beq	16ebc <__call_exitprocs+0x74>
   16f00:	e5971188 	ldr	r1, [r7, #392]	; 0x188
   16f04:	e1a0241a 	lsl	r2, sl, r4
   16f08:	e5979004 	ldr	r9, [r7, #4]
   16f0c:	e1120001 	tst	r2, r1
   16f10:	0a000014 	beq	16f68 <__call_exitprocs+0x120>
   16f14:	e597118c 	ldr	r1, [r7, #396]	; 0x18c
   16f18:	e1120001 	tst	r2, r1
   16f1c:	1a000013 	bne	16f70 <__call_exitprocs+0x128>
   16f20:	e59d0008 	ldr	r0, [sp, #8]
   16f24:	e5151080 	ldr	r1, [r5, #-128]	; 0xffffff80
   16f28:	e12fff33 	blx	r3
   16f2c:	e5973004 	ldr	r3, [r7, #4]
   16f30:	e1530009 	cmp	r3, r9
   16f34:	1affffd1 	bne	16e80 <__call_exitprocs+0x38>
   16f38:	e59b3000 	ldr	r3, [fp]
   16f3c:	e1530007 	cmp	r3, r7
   16f40:	1affffce 	bne	16e80 <__call_exitprocs+0x38>
   16f44:	e2444001 	sub	r4, r4, #1
   16f48:	e2455004 	sub	r5, r5, #4
   16f4c:	e3740001 	cmn	r4, #1
   16f50:	1affffdd 	bne	16ecc <__call_exitprocs+0x84>
   16f54:	e59d2000 	ldr	r2, [sp]
   16f58:	e3520000 	cmp	r2, #0
   16f5c:	1a000006 	bne	16f7c <__call_exitprocs+0x134>
   16f60:	e28dd014 	add	sp, sp, #20
   16f64:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   16f68:	e12fff33 	blx	r3
   16f6c:	eaffffee 	b	16f2c <__call_exitprocs+0xe4>
   16f70:	e5150080 	ldr	r0, [r5, #-128]	; 0xffffff80
   16f74:	e12fff33 	blx	r3
   16f78:	eaffffeb 	b	16f2c <__call_exitprocs+0xe4>
   16f7c:	e5973004 	ldr	r3, [r7, #4]
   16f80:	e3530000 	cmp	r3, #0
   16f84:	e5973000 	ldr	r3, [r7]
   16f88:	1a000006 	bne	16fa8 <__call_exitprocs+0x160>
   16f8c:	e3530000 	cmp	r3, #0
   16f90:	0a000004 	beq	16fa8 <__call_exitprocs+0x160>
   16f94:	e1a00007 	mov	r0, r7
   16f98:	e58b3000 	str	r3, [fp]
   16f9c:	ebfffdb2 	bl	1666c <free>
   16fa0:	e59b7000 	ldr	r7, [fp]
   16fa4:	eaffffb8 	b	16e8c <__call_exitprocs+0x44>
   16fa8:	e1a0b007 	mov	fp, r7
   16fac:	e1a07003 	mov	r7, r3
   16fb0:	eaffffb5 	b	16e8c <__call_exitprocs+0x44>

00016fb4 <atexit>:
   16fb4:	e1a01000 	mov	r1, r0
   16fb8:	e3a00000 	mov	r0, #0
   16fbc:	e1a02000 	mov	r2, r0
   16fc0:	e1a03000 	mov	r3, r0
   16fc4:	ea00013c 	b	174bc <__register_exitproc>

00016fc8 <_malloc_trim_r>:
   16fc8:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
   16fcc:	e3084210 	movw	r4, #33296	; 0x8210
   16fd0:	e3404001 	movt	r4, #1
   16fd4:	e1a07001 	mov	r7, r1
   16fd8:	e1a05000 	mov	r5, r0
   16fdc:	ebffff6e 	bl	16d9c <__malloc_lock>
   16fe0:	e5943008 	ldr	r3, [r4, #8]
   16fe4:	e5936004 	ldr	r6, [r3, #4]
   16fe8:	e3c66003 	bic	r6, r6, #3
   16fec:	e2863efe 	add	r3, r6, #4064	; 0xfe0
   16ff0:	e283300f 	add	r3, r3, #15
   16ff4:	e0677003 	rsb	r7, r7, r3
   16ff8:	e1a07627 	lsr	r7, r7, #12
   16ffc:	e2477001 	sub	r7, r7, #1
   17000:	e1a07607 	lsl	r7, r7, #12
   17004:	e3570a01 	cmp	r7, #4096	; 0x1000
   17008:	ba000006 	blt	17028 <_malloc_trim_r+0x60>
   1700c:	e1a00005 	mov	r0, r5
   17010:	e3a01000 	mov	r1, #0
   17014:	ebffff62 	bl	16da4 <_sbrk_r>
   17018:	e5943008 	ldr	r3, [r4, #8]
   1701c:	e0833006 	add	r3, r3, r6
   17020:	e1500003 	cmp	r0, r3
   17024:	0a000003 	beq	17038 <_malloc_trim_r+0x70>
   17028:	e1a00005 	mov	r0, r5
   1702c:	ebffff5b 	bl	16da0 <__malloc_unlock>
   17030:	e3a00000 	mov	r0, #0
   17034:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
   17038:	e1a00005 	mov	r0, r5
   1703c:	e2671000 	rsb	r1, r7, #0
   17040:	ebffff57 	bl	16da4 <_sbrk_r>
   17044:	e3700001 	cmn	r0, #1
   17048:	0a00000c 	beq	17080 <_malloc_trim_r+0xb8>
   1704c:	e5941008 	ldr	r1, [r4, #8]
   17050:	e30a3e58 	movw	r3, #44632	; 0xae58
   17054:	e3403019 	movt	r3, #25
   17058:	e0676006 	rsb	r6, r7, r6
   1705c:	e1a00005 	mov	r0, r5
   17060:	e3866001 	orr	r6, r6, #1
   17064:	e5932000 	ldr	r2, [r3]
   17068:	e5816004 	str	r6, [r1, #4]
   1706c:	e0677002 	rsb	r7, r7, r2
   17070:	e5837000 	str	r7, [r3]
   17074:	ebffff49 	bl	16da0 <__malloc_unlock>
   17078:	e3a00001 	mov	r0, #1
   1707c:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
   17080:	e1a00005 	mov	r0, r5
   17084:	e3a01000 	mov	r1, #0
   17088:	ebffff45 	bl	16da4 <_sbrk_r>
   1708c:	e5943008 	ldr	r3, [r4, #8]
   17090:	e0632000 	rsb	r2, r3, r0
   17094:	e352000f 	cmp	r2, #15
   17098:	daffffe2 	ble	17028 <_malloc_trim_r+0x60>
   1709c:	e308c618 	movw	ip, #34328	; 0x8618
   170a0:	e340c001 	movt	ip, #1
   170a4:	e30a1e58 	movw	r1, #44632	; 0xae58
   170a8:	e3401019 	movt	r1, #25
   170ac:	e59cc000 	ldr	ip, [ip]
   170b0:	e3822001 	orr	r2, r2, #1
   170b4:	e5832004 	str	r2, [r3, #4]
   170b8:	e06c0000 	rsb	r0, ip, r0
   170bc:	e5810000 	str	r0, [r1]
   170c0:	eaffffd8 	b	17028 <_malloc_trim_r+0x60>

000170c4 <_free_r>:
   170c4:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
   170c8:	e2516000 	subs	r6, r1, #0
   170cc:	e1a07000 	mov	r7, r0
   170d0:	08bd80f8 	popeq	{r3, r4, r5, r6, r7, pc}
   170d4:	ebffff30 	bl	16d9c <__malloc_lock>
   170d8:	e5165004 	ldr	r5, [r6, #-4]
   170dc:	e3084210 	movw	r4, #33296	; 0x8210
   170e0:	e3404001 	movt	r4, #1
   170e4:	e246c008 	sub	ip, r6, #8
   170e8:	e3c53001 	bic	r3, r5, #1
   170ec:	e08c2003 	add	r2, ip, r3
   170f0:	e5940008 	ldr	r0, [r4, #8]
   170f4:	e5921004 	ldr	r1, [r2, #4]
   170f8:	e1500002 	cmp	r0, r2
   170fc:	e3c11003 	bic	r1, r1, #3
   17100:	0a00004a 	beq	17230 <_free_r+0x16c>
   17104:	e2155001 	ands	r5, r5, #1
   17108:	e5821004 	str	r1, [r2, #4]
   1710c:	13a05000 	movne	r5, #0
   17110:	1a000009 	bne	1713c <_free_r+0x78>
   17114:	e5160008 	ldr	r0, [r6, #-8]
   17118:	e2846008 	add	r6, r4, #8
   1711c:	e060c00c 	rsb	ip, r0, ip
   17120:	e0833000 	add	r3, r3, r0
   17124:	e59c0008 	ldr	r0, [ip, #8]
   17128:	e1500006 	cmp	r0, r6
   1712c:	159c600c 	ldrne	r6, [ip, #12]
   17130:	03a05001 	moveq	r5, #1
   17134:	1580600c 	strne	r6, [r0, #12]
   17138:	15860008 	strne	r0, [r6, #8]
   1713c:	e0820001 	add	r0, r2, r1
   17140:	e5900004 	ldr	r0, [r0, #4]
   17144:	e3100001 	tst	r0, #1
   17148:	1a000009 	bne	17174 <_free_r+0xb0>
   1714c:	e3550000 	cmp	r5, #0
   17150:	e0833001 	add	r3, r3, r1
   17154:	e5921008 	ldr	r1, [r2, #8]
   17158:	1a000002 	bne	17168 <_free_r+0xa4>
   1715c:	e59f01c4 	ldr	r0, [pc, #452]	; 17328 <_free_r+0x264>
   17160:	e1510000 	cmp	r1, r0
   17164:	0a000049 	beq	17290 <_free_r+0x1cc>
   17168:	e592200c 	ldr	r2, [r2, #12]
   1716c:	e581200c 	str	r2, [r1, #12]
   17170:	e5821008 	str	r1, [r2, #8]
   17174:	e3550000 	cmp	r5, #0
   17178:	e3832001 	orr	r2, r3, #1
   1717c:	e78c3003 	str	r3, [ip, r3]
   17180:	e58c2004 	str	r2, [ip, #4]
   17184:	1a000019 	bne	171f0 <_free_r+0x12c>
   17188:	e3530c02 	cmp	r3, #512	; 0x200
   1718c:	3a00001a 	bcc	171fc <_free_r+0x138>
   17190:	e1a024a3 	lsr	r2, r3, #9
   17194:	e3520004 	cmp	r2, #4
   17198:	8a000044 	bhi	172b0 <_free_r+0x1ec>
   1719c:	e1a00323 	lsr	r0, r3, #6
   171a0:	e2800038 	add	r0, r0, #56	; 0x38
   171a4:	e1a01080 	lsl	r1, r0, #1
   171a8:	e0844101 	add	r4, r4, r1, lsl #2
   171ac:	e3081210 	movw	r1, #33296	; 0x8210
   171b0:	e3401001 	movt	r1, #1
   171b4:	e5942008 	ldr	r2, [r4, #8]
   171b8:	e1520004 	cmp	r2, r4
   171bc:	0a000045 	beq	172d8 <_free_r+0x214>
   171c0:	e5921004 	ldr	r1, [r2, #4]
   171c4:	e3c11003 	bic	r1, r1, #3
   171c8:	e1530001 	cmp	r3, r1
   171cc:	2a000002 	bcs	171dc <_free_r+0x118>
   171d0:	e5922008 	ldr	r2, [r2, #8]
   171d4:	e1540002 	cmp	r4, r2
   171d8:	1afffff8 	bne	171c0 <_free_r+0xfc>
   171dc:	e592300c 	ldr	r3, [r2, #12]
   171e0:	e58c300c 	str	r3, [ip, #12]
   171e4:	e58c2008 	str	r2, [ip, #8]
   171e8:	e582c00c 	str	ip, [r2, #12]
   171ec:	e583c008 	str	ip, [r3, #8]
   171f0:	e1a00007 	mov	r0, r7
   171f4:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
   171f8:	eafffee8 	b	16da0 <__malloc_unlock>
   171fc:	e1a031a3 	lsr	r3, r3, #3
   17200:	e5941004 	ldr	r1, [r4, #4]
   17204:	e3a00001 	mov	r0, #1
   17208:	e0842183 	add	r2, r4, r3, lsl #3
   1720c:	e1a03143 	asr	r3, r3, #2
   17210:	e1813310 	orr	r3, r1, r0, lsl r3
   17214:	e58c200c 	str	r2, [ip, #12]
   17218:	e5921008 	ldr	r1, [r2, #8]
   1721c:	e5843004 	str	r3, [r4, #4]
   17220:	e58c1008 	str	r1, [ip, #8]
   17224:	e581c00c 	str	ip, [r1, #12]
   17228:	e582c008 	str	ip, [r2, #8]
   1722c:	eaffffef 	b	171f0 <_free_r+0x12c>
   17230:	e3150001 	tst	r5, #1
   17234:	e0813003 	add	r3, r1, r3
   17238:	1a000006 	bne	17258 <_free_r+0x194>
   1723c:	e5162008 	ldr	r2, [r6, #-8]
   17240:	e062c00c 	rsb	ip, r2, ip
   17244:	e0833002 	add	r3, r3, r2
   17248:	e59c1008 	ldr	r1, [ip, #8]
   1724c:	e59c200c 	ldr	r2, [ip, #12]
   17250:	e581200c 	str	r2, [r1, #12]
   17254:	e5821008 	str	r1, [r2, #8]
   17258:	e308261c 	movw	r2, #34332	; 0x861c
   1725c:	e3402001 	movt	r2, #1
   17260:	e3831001 	orr	r1, r3, #1
   17264:	e584c008 	str	ip, [r4, #8]
   17268:	e5922000 	ldr	r2, [r2]
   1726c:	e58c1004 	str	r1, [ip, #4]
   17270:	e1530002 	cmp	r3, r2
   17274:	3affffdd 	bcc	171f0 <_free_r+0x12c>
   17278:	e30a3e54 	movw	r3, #44628	; 0xae54
   1727c:	e3403019 	movt	r3, #25
   17280:	e1a00007 	mov	r0, r7
   17284:	e5931000 	ldr	r1, [r3]
   17288:	ebffff4e 	bl	16fc8 <_malloc_trim_r>
   1728c:	eaffffd7 	b	171f0 <_free_r+0x12c>
   17290:	e584c014 	str	ip, [r4, #20]
   17294:	e3832001 	orr	r2, r3, #1
   17298:	e584c010 	str	ip, [r4, #16]
   1729c:	e58c100c 	str	r1, [ip, #12]
   172a0:	e58c1008 	str	r1, [ip, #8]
   172a4:	e58c2004 	str	r2, [ip, #4]
   172a8:	e78c3003 	str	r3, [ip, r3]
   172ac:	eaffffcf 	b	171f0 <_free_r+0x12c>
   172b0:	e3520014 	cmp	r2, #20
   172b4:	9282005b 	addls	r0, r2, #91	; 0x5b
   172b8:	91a01080 	lslls	r1, r0, #1
   172bc:	9affffb9 	bls	171a8 <_free_r+0xe4>
   172c0:	e3520054 	cmp	r2, #84	; 0x54
   172c4:	8a00000a 	bhi	172f4 <_free_r+0x230>
   172c8:	e1a00623 	lsr	r0, r3, #12
   172cc:	e280006e 	add	r0, r0, #110	; 0x6e
   172d0:	e1a01080 	lsl	r1, r0, #1
   172d4:	eaffffb3 	b	171a8 <_free_r+0xe4>
   172d8:	e5914004 	ldr	r4, [r1, #4]
   172dc:	e1a00140 	asr	r0, r0, #2
   172e0:	e3a05001 	mov	r5, #1
   172e4:	e1a03002 	mov	r3, r2
   172e8:	e1840015 	orr	r0, r4, r5, lsl r0
   172ec:	e5810004 	str	r0, [r1, #4]
   172f0:	eaffffba 	b	171e0 <_free_r+0x11c>
   172f4:	e3520f55 	cmp	r2, #340	; 0x154
   172f8:	91a007a3 	lsrls	r0, r3, #15
   172fc:	92800077 	addls	r0, r0, #119	; 0x77
   17300:	91a01080 	lslls	r1, r0, #1
   17304:	9affffa7 	bls	171a8 <_free_r+0xe4>
   17308:	e3001554 	movw	r1, #1364	; 0x554
   1730c:	e1520001 	cmp	r2, r1
   17310:	91a00923 	lsrls	r0, r3, #18
   17314:	9280007c 	addls	r0, r0, #124	; 0x7c
   17318:	83a010fc 	movhi	r1, #252	; 0xfc
   1731c:	83a0007e 	movhi	r0, #126	; 0x7e
   17320:	91a01080 	lslls	r1, r0, #1
   17324:	eaffff9f 	b	171a8 <_free_r+0xe4>
   17328:	00018218 	andeq	r8, r1, r8, lsl r2

0001732c <cleanup_glue>:
   1732c:	e92d4038 	push	{r3, r4, r5, lr}
   17330:	e1a04001 	mov	r4, r1
   17334:	e5911000 	ldr	r1, [r1]
   17338:	e1a05000 	mov	r5, r0
   1733c:	e3510000 	cmp	r1, #0
   17340:	0a000000 	beq	17348 <cleanup_glue+0x1c>
   17344:	ebfffff8 	bl	1732c <cleanup_glue>
   17348:	e1a00005 	mov	r0, r5
   1734c:	e1a01004 	mov	r1, r4
   17350:	e8bd4038 	pop	{r3, r4, r5, lr}
   17354:	eaffff5a 	b	170c4 <_free_r>

00017358 <_reclaim_reent>:
   17358:	e3073de0 	movw	r3, #32224	; 0x7de0
   1735c:	e3403001 	movt	r3, #1
   17360:	e92d4070 	push	{r4, r5, r6, lr}
   17364:	e1a05000 	mov	r5, r0
   17368:	e5933000 	ldr	r3, [r3]
   1736c:	e1500003 	cmp	r0, r3
   17370:	08bd8070 	popeq	{r4, r5, r6, pc}
   17374:	e590204c 	ldr	r2, [r0, #76]	; 0x4c
   17378:	e3520000 	cmp	r2, #0
   1737c:	0a000011 	beq	173c8 <_reclaim_reent+0x70>
   17380:	e3a03000 	mov	r3, #0
   17384:	e1a06003 	mov	r6, r3
   17388:	e7921103 	ldr	r1, [r2, r3, lsl #2]
   1738c:	e3510000 	cmp	r1, #0
   17390:	0a000005 	beq	173ac <_reclaim_reent+0x54>
   17394:	e5914000 	ldr	r4, [r1]
   17398:	e1a00005 	mov	r0, r5
   1739c:	ebffff48 	bl	170c4 <_free_r>
   173a0:	e2541000 	subs	r1, r4, #0
   173a4:	1afffffa 	bne	17394 <_reclaim_reent+0x3c>
   173a8:	e595204c 	ldr	r2, [r5, #76]	; 0x4c
   173ac:	e2866001 	add	r6, r6, #1
   173b0:	e3560020 	cmp	r6, #32
   173b4:	e1a03006 	mov	r3, r6
   173b8:	1afffff2 	bne	17388 <_reclaim_reent+0x30>
   173bc:	e1a00005 	mov	r0, r5
   173c0:	e1a01002 	mov	r1, r2
   173c4:	ebffff3e 	bl	170c4 <_free_r>
   173c8:	e5951040 	ldr	r1, [r5, #64]	; 0x40
   173cc:	e3510000 	cmp	r1, #0
   173d0:	0a000001 	beq	173dc <_reclaim_reent+0x84>
   173d4:	e1a00005 	mov	r0, r5
   173d8:	ebffff39 	bl	170c4 <_free_r>
   173dc:	e5951148 	ldr	r1, [r5, #328]	; 0x148
   173e0:	e3510000 	cmp	r1, #0
   173e4:	0a000008 	beq	1740c <_reclaim_reent+0xb4>
   173e8:	e2856f53 	add	r6, r5, #332	; 0x14c
   173ec:	e1510006 	cmp	r1, r6
   173f0:	0a000005 	beq	1740c <_reclaim_reent+0xb4>
   173f4:	e5914000 	ldr	r4, [r1]
   173f8:	e1a00005 	mov	r0, r5
   173fc:	ebffff30 	bl	170c4 <_free_r>
   17400:	e1560004 	cmp	r6, r4
   17404:	e1a01004 	mov	r1, r4
   17408:	1afffff9 	bne	173f4 <_reclaim_reent+0x9c>
   1740c:	e5951054 	ldr	r1, [r5, #84]	; 0x54
   17410:	e3510000 	cmp	r1, #0
   17414:	0a000001 	beq	17420 <_reclaim_reent+0xc8>
   17418:	e1a00005 	mov	r0, r5
   1741c:	ebffff28 	bl	170c4 <_free_r>
   17420:	e5953038 	ldr	r3, [r5, #56]	; 0x38
   17424:	e3530000 	cmp	r3, #0
   17428:	08bd8070 	popeq	{r4, r5, r6, pc}
   1742c:	e595303c 	ldr	r3, [r5, #60]	; 0x3c
   17430:	e1a00005 	mov	r0, r5
   17434:	e12fff33 	blx	r3
   17438:	e59512e0 	ldr	r1, [r5, #736]	; 0x2e0
   1743c:	e3510000 	cmp	r1, #0
   17440:	08bd8070 	popeq	{r4, r5, r6, pc}
   17444:	e1a00005 	mov	r0, r5
   17448:	e8bd4070 	pop	{r4, r5, r6, lr}
   1744c:	eaffffb6 	b	1732c <cleanup_glue>

00017450 <_wrapup_reent>:
   17450:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
   17454:	e2507000 	subs	r7, r0, #0
   17458:	03073de0 	movweq	r3, #32224	; 0x7de0
   1745c:	03403001 	movteq	r3, #1
   17460:	05937000 	ldreq	r7, [r3]
   17464:	e5976148 	ldr	r6, [r7, #328]	; 0x148
   17468:	e3560000 	cmp	r6, #0
   1746c:	0a00000c 	beq	174a4 <_wrapup_reent+0x54>
   17470:	e5965004 	ldr	r5, [r6, #4]
   17474:	e2554001 	subs	r4, r5, #1
   17478:	52855002 	addpl	r5, r5, #2
   1747c:	50865105 	addpl	r5, r6, r5, lsl #2
   17480:	4a000004 	bmi	17498 <_wrapup_reent+0x48>
   17484:	e5353004 	ldr	r3, [r5, #-4]!
   17488:	e2444001 	sub	r4, r4, #1
   1748c:	e12fff33 	blx	r3
   17490:	e3740001 	cmn	r4, #1
   17494:	1afffffa 	bne	17484 <_wrapup_reent+0x34>
   17498:	e5966000 	ldr	r6, [r6]
   1749c:	e3560000 	cmp	r6, #0
   174a0:	1afffff2 	bne	17470 <_wrapup_reent+0x20>
   174a4:	e597303c 	ldr	r3, [r7, #60]	; 0x3c
   174a8:	e3530000 	cmp	r3, #0
   174ac:	08bd80f8 	popeq	{r3, r4, r5, r6, r7, pc}
   174b0:	e1a00007 	mov	r0, r7
   174b4:	e12fff33 	blx	r3
   174b8:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

000174bc <__register_exitproc>:
   174bc:	e307cd94 	movw	ip, #32148	; 0x7d94
   174c0:	e340c001 	movt	ip, #1
   174c4:	e92d40f0 	push	{r4, r5, r6, r7, lr}
   174c8:	e1a06000 	mov	r6, r0
   174cc:	e59c4000 	ldr	r4, [ip]
   174d0:	e24dd014 	sub	sp, sp, #20
   174d4:	e594c148 	ldr	ip, [r4, #328]	; 0x148
   174d8:	e35c0000 	cmp	ip, #0
   174dc:	0284cf53 	addeq	ip, r4, #332	; 0x14c
   174e0:	0584c148 	streq	ip, [r4, #328]	; 0x148
   174e4:	e59c5004 	ldr	r5, [ip, #4]
   174e8:	e355001f 	cmp	r5, #31
   174ec:	da000016 	ble	1754c <__register_exitproc+0x90>
   174f0:	e306c658 	movw	ip, #26200	; 0x6658
   174f4:	e340c001 	movt	ip, #1
   174f8:	e35c0000 	cmp	ip, #0
   174fc:	1a000001 	bne	17508 <__register_exitproc+0x4c>
   17500:	e3e00000 	mvn	r0, #0
   17504:	ea000018 	b	1756c <__register_exitproc+0xb0>
   17508:	e3a00e19 	mov	r0, #400	; 0x190
   1750c:	e58d100c 	str	r1, [sp, #12]
   17510:	e58d2008 	str	r2, [sp, #8]
   17514:	e58d3004 	str	r3, [sp, #4]
   17518:	ebfffc4e 	bl	16658 <malloc>
   1751c:	e59d100c 	ldr	r1, [sp, #12]
   17520:	e59d2008 	ldr	r2, [sp, #8]
   17524:	e59d3004 	ldr	r3, [sp, #4]
   17528:	e250c000 	subs	ip, r0, #0
   1752c:	0afffff3 	beq	17500 <__register_exitproc+0x44>
   17530:	e5945148 	ldr	r5, [r4, #328]	; 0x148
   17534:	e3a00000 	mov	r0, #0
   17538:	e58c0004 	str	r0, [ip, #4]
   1753c:	e58c5000 	str	r5, [ip]
   17540:	e584c148 	str	ip, [r4, #328]	; 0x148
   17544:	e58c0188 	str	r0, [ip, #392]	; 0x188
   17548:	e58c018c 	str	r0, [ip, #396]	; 0x18c
   1754c:	e3560000 	cmp	r6, #0
   17550:	e59c4004 	ldr	r4, [ip, #4]
   17554:	1a000006 	bne	17574 <__register_exitproc+0xb8>
   17558:	e2843002 	add	r3, r4, #2
   1755c:	e3a00000 	mov	r0, #0
   17560:	e2844001 	add	r4, r4, #1
   17564:	e58c4004 	str	r4, [ip, #4]
   17568:	e78c1103 	str	r1, [ip, r3, lsl #2]
   1756c:	e28dd014 	add	sp, sp, #20
   17570:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
   17574:	e3560002 	cmp	r6, #2
   17578:	e08c6104 	add	r6, ip, r4, lsl #2
   1757c:	e59c7188 	ldr	r7, [ip, #392]	; 0x188
   17580:	e3a00001 	mov	r0, #1
   17584:	e5863108 	str	r3, [r6, #264]	; 0x108
   17588:	e1a00410 	lsl	r0, r0, r4
   1758c:	059c318c 	ldreq	r3, [ip, #396]	; 0x18c
   17590:	e1877000 	orr	r7, r7, r0
   17594:	e1a05006 	mov	r5, r6
   17598:	e58c7188 	str	r7, [ip, #392]	; 0x188
   1759c:	01830000 	orreq	r0, r3, r0
   175a0:	e5862088 	str	r2, [r6, #136]	; 0x88
   175a4:	058c018c 	streq	r0, [ip, #396]	; 0x18c
   175a8:	eaffffea 	b	17558 <__register_exitproc+0x9c>

000175ac <_exit>:
   175ac:	eafffffe 	b	175ac <_exit>

000175b0 <_sbrk>:
   175b0:	e30a2e88 	movw	r2, #44680	; 0xae88
   175b4:	e3402019 	movt	r2, #25
   175b8:	e30b1f50 	movw	r1, #48976	; 0xbf50
   175bc:	e3401019 	movt	r1, #25
   175c0:	e5923000 	ldr	r3, [r2]
   175c4:	e3530000 	cmp	r3, #0
   175c8:	01a03001 	moveq	r3, r1
   175cc:	e0830000 	add	r0, r3, r0
   175d0:	e5820000 	str	r0, [r2]
   175d4:	e1a00003 	mov	r0, r3
   175d8:	e12fff1e 	bx	lr

000175dc <register_fini>:
   175dc:	e3003000 	movw	r3, #0
   175e0:	e3403000 	movt	r3, #0
   175e4:	e3530000 	cmp	r3, #0
   175e8:	012fff1e 	bxeq	lr
   175ec:	e30605a0 	movw	r0, #26016	; 0x65a0
   175f0:	e3400001 	movt	r0, #1
   175f4:	eafffe6e 	b	16fb4 <atexit>

Disassembly of section .init:

000175f8 <_init>:
   175f8:	e1a0c00d 	mov	ip, sp
   175fc:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
   17600:	e24cb004 	sub	fp, ip, #4
   17604:	e24bd028 	sub	sp, fp, #40	; 0x28
   17608:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
   1760c:	e12fff1e 	bx	lr

Disassembly of section .fini:

00017610 <_fini>:
   17610:	e1a0c00d 	mov	ip, sp
   17614:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
   17618:	e24cb004 	sub	fp, ip, #4
   1761c:	e24bd028 	sub	sp, fp, #40	; 0x28
   17620:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
   17624:	e12fff1e 	bx	lr

Disassembly of section .rodata:

00017628 <OSUnMapTbl>:
   17628:	00010000 	andeq	r0, r1, r0
   1762c:	00010002 	andeq	r0, r1, r2
   17630:	00010003 	andeq	r0, r1, r3
   17634:	00010002 	andeq	r0, r1, r2
   17638:	00010004 	andeq	r0, r1, r4
   1763c:	00010002 	andeq	r0, r1, r2
   17640:	00010003 	andeq	r0, r1, r3
   17644:	00010002 	andeq	r0, r1, r2
   17648:	00010005 	andeq	r0, r1, r5
   1764c:	00010002 	andeq	r0, r1, r2
   17650:	00010003 	andeq	r0, r1, r3
   17654:	00010002 	andeq	r0, r1, r2
   17658:	00010004 	andeq	r0, r1, r4
   1765c:	00010002 	andeq	r0, r1, r2
   17660:	00010003 	andeq	r0, r1, r3
   17664:	00010002 	andeq	r0, r1, r2
   17668:	00010006 	andeq	r0, r1, r6
   1766c:	00010002 	andeq	r0, r1, r2
   17670:	00010003 	andeq	r0, r1, r3
   17674:	00010002 	andeq	r0, r1, r2
   17678:	00010004 	andeq	r0, r1, r4
   1767c:	00010002 	andeq	r0, r1, r2
   17680:	00010003 	andeq	r0, r1, r3
   17684:	00010002 	andeq	r0, r1, r2
   17688:	00010005 	andeq	r0, r1, r5
   1768c:	00010002 	andeq	r0, r1, r2
   17690:	00010003 	andeq	r0, r1, r3
   17694:	00010002 	andeq	r0, r1, r2
   17698:	00010004 	andeq	r0, r1, r4
   1769c:	00010002 	andeq	r0, r1, r2
   176a0:	00010003 	andeq	r0, r1, r3
   176a4:	00010002 	andeq	r0, r1, r2
   176a8:	00010007 	andeq	r0, r1, r7
   176ac:	00010002 	andeq	r0, r1, r2
   176b0:	00010003 	andeq	r0, r1, r3
   176b4:	00010002 	andeq	r0, r1, r2
   176b8:	00010004 	andeq	r0, r1, r4
   176bc:	00010002 	andeq	r0, r1, r2
   176c0:	00010003 	andeq	r0, r1, r3
   176c4:	00010002 	andeq	r0, r1, r2
   176c8:	00010005 	andeq	r0, r1, r5
   176cc:	00010002 	andeq	r0, r1, r2
   176d0:	00010003 	andeq	r0, r1, r3
   176d4:	00010002 	andeq	r0, r1, r2
   176d8:	00010004 	andeq	r0, r1, r4
   176dc:	00010002 	andeq	r0, r1, r2
   176e0:	00010003 	andeq	r0, r1, r3
   176e4:	00010002 	andeq	r0, r1, r2
   176e8:	00010006 	andeq	r0, r1, r6
   176ec:	00010002 	andeq	r0, r1, r2
   176f0:	00010003 	andeq	r0, r1, r3
   176f4:	00010002 	andeq	r0, r1, r2
   176f8:	00010004 	andeq	r0, r1, r4
   176fc:	00010002 	andeq	r0, r1, r2
   17700:	00010003 	andeq	r0, r1, r3
   17704:	00010002 	andeq	r0, r1, r2
   17708:	00010005 	andeq	r0, r1, r5
   1770c:	00010002 	andeq	r0, r1, r2
   17710:	00010003 	andeq	r0, r1, r3
   17714:	00010002 	andeq	r0, r1, r2
   17718:	00010004 	andeq	r0, r1, r4
   1771c:	00010002 	andeq	r0, r1, r2
   17720:	00010003 	andeq	r0, r1, r3
   17724:	00010002 	andeq	r0, r1, r2
   17728:	0000003f 	andeq	r0, r0, pc, lsr r0
   1772c:	4f2f4375 	svcmi	0x002f4375
   17730:	49492d53 	stmdbmi	r9, {r0, r1, r4, r6, r8, sl, fp, sp}^
   17734:	6c644920 	stclvs	9, cr4, [r4], #-128	; 0xffffff80
   17738:	00000065 	andeq	r0, r0, r5, rrx

0001773c <OSDebugEn>:
   1773c:	00000000 	andeq	r0, r0, r0
   17740:	0000003f 	andeq	r0, r0, pc, lsr r0
   17744:	0000003f 	andeq	r0, r0, pc, lsr r0
   17748:	0000003f 	andeq	r0, r0, pc, lsr r0
   1774c:	0000003f 	andeq	r0, r0, pc, lsr r0
   17750:	0000003f 	andeq	r0, r0, pc, lsr r0
   17754:	0000003f 	andeq	r0, r0, pc, lsr r0

00017758 <Str_MultOvfThTbl_Int32U>:
   17758:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   1775c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   17760:	7fffffff 	svcvc	0x00ffffff
   17764:	55555555 	ldrbpl	r5, [r5, #-1365]	; 0xfffffaab
   17768:	3fffffff 	svccc	0x00ffffff
   1776c:	33333333 	teqcc	r3, #-872415232	; 0xcc000000
   17770:	2aaaaaaa 	bcs	feac2220 <CPU_ARM_BIT_CNTES_C+0x7eac2220>
   17774:	24924924 	ldrcs	r4, [r2], #2340	; 0x924
   17778:	1fffffff 	svcne	0x00ffffff
   1777c:	1c71c71c 	ldclne	7, cr12, [r1], #-112	; 0xffffff90
   17780:	19999999 	ldmibne	r9, {r0, r3, r4, r7, r8, fp, ip, pc}
   17784:	1745d174 	smlsldxne	sp, r5, r4, r1
   17788:	15555555 	ldrbne	r5, [r5, #-1365]	; 0xfffffaab
   1778c:	13b13b13 			; <UNDEFINED> instruction: 0x13b13b13
   17790:	12492492 	subne	r2, r9, #-1845493760	; 0x92000000
   17794:	11111111 	tstne	r1, r1, lsl r1
   17798:	0fffffff 	svceq	0x00ffffff
   1779c:	0f0f0f0f 	svceq	0x000f0f0f
   177a0:	0e38e38e 	cdpeq	3, 3, cr14, cr8, cr14, {4}
   177a4:	0d79435e 	ldcleq	3, cr4, [r9, #-376]!	; 0xfffffe88
   177a8:	0ccccccc 	stcleq	12, cr12, [ip], {204}	; 0xcc
   177ac:	0c30c30c 	ldceq	3, cr12, [r0], #-48	; 0xffffffd0
   177b0:	0ba2e8ba 	bleq	fe8d1aa0 <CPU_ARM_BIT_CNTES_C+0x7e8d1aa0>
   177b4:	0b21642c 	bleq	87086c <__stack+0x6b291c>
   177b8:	0aaaaaaa 	beq	feac2268 <CPU_ARM_BIT_CNTES_C+0x7eac2268>
   177bc:	0a3d70a3 	beq	f73a50 <__stack+0xdb5b00>
   177c0:	09d89d89 	ldmibeq	r8, {r0, r3, r7, r8, sl, fp, ip, pc}^
   177c4:	097b425e 	ldmdbeq	fp!, {r1, r2, r3, r4, r6, r9, lr}^
   177c8:	09249249 	stmdbeq	r4!, {r0, r3, r6, r9, ip, pc}
   177cc:	08d3dcb0 	ldmeq	r3, {r4, r5, r7, sl, fp, ip, lr, pc}^
   177d0:	08888888 	stmeq	r8, {r3, r7, fp, pc}
   177d4:	08421084 	stmdaeq	r2, {r2, r7, ip}^
   177d8:	07ffffff 			; <UNDEFINED> instruction: 0x07ffffff
   177dc:	07c1f07c 			; <UNDEFINED> instruction: 0x07c1f07c
   177e0:	07878787 	streq	r8, [r7, r7, lsl #15]
   177e4:	07507507 	ldrbeq	r7, [r0, -r7, lsl #10]
   177e8:	071c71c7 	ldreq	r7, [ip, -r7, asr #3]

000177ec <CPU_CntLeadZerosTbl>:
   177ec:	06060708 	streq	r0, [r6], -r8, lsl #14
   177f0:	05050505 	streq	r0, [r5, #-1285]	; 0xfffffafb
   177f4:	04040404 	streq	r0, [r4], #-1028	; 0xfffffbfc
   177f8:	04040404 	streq	r0, [r4], #-1028	; 0xfffffbfc
   177fc:	03030303 	movweq	r0, #13059	; 0x3303
   17800:	03030303 	movweq	r0, #13059	; 0x3303
   17804:	03030303 	movweq	r0, #13059	; 0x3303
   17808:	03030303 	movweq	r0, #13059	; 0x3303
   1780c:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
   17810:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
   17814:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
   17818:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
   1781c:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
   17820:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
   17824:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
   17828:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
   1782c:	01010101 	tsteq	r1, r1, lsl #2
   17830:	01010101 	tsteq	r1, r1, lsl #2
   17834:	01010101 	tsteq	r1, r1, lsl #2
   17838:	01010101 	tsteq	r1, r1, lsl #2
   1783c:	01010101 	tsteq	r1, r1, lsl #2
   17840:	01010101 	tsteq	r1, r1, lsl #2
   17844:	01010101 	tsteq	r1, r1, lsl #2
   17848:	01010101 	tsteq	r1, r1, lsl #2
   1784c:	01010101 	tsteq	r1, r1, lsl #2
   17850:	01010101 	tsteq	r1, r1, lsl #2
   17854:	01010101 	tsteq	r1, r1, lsl #2
   17858:	01010101 	tsteq	r1, r1, lsl #2
   1785c:	01010101 	tsteq	r1, r1, lsl #2
   17860:	01010101 	tsteq	r1, r1, lsl #2
   17864:	01010101 	tsteq	r1, r1, lsl #2
   17868:	01010101 	tsteq	r1, r1, lsl #2
	...
   178ec:	2a2a2a2a 	bcs	aa219c <__stack+0x8e424c>
   178f0:	72685420 	rsbvc	r5, r8, #32, 8	; 0x20000000
   178f4:	2d646165 	stfcse	f6, [r4, #-404]!	; 0xfffffe6c
   178f8:	7274654d 	rsbsvc	r6, r4, #322961408	; 0x13400000
   178fc:	49206369 	stmdbmi	r0!, {r0, r3, r5, r6, r8, r9, sp, lr}
   17900:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
   17904:	74707572 	ldrbtvc	r7, [r0], #-1394	; 0xfffffa8e
   17908:	65725020 	ldrbvs	r5, [r2, #-32]!	; 0xffffffe0
   1790c:	74706d65 	ldrbtvc	r6, [r0], #-3429	; 0xfffff29b
   17910:	206e6f69 	rsbcs	r6, lr, r9, ror #30
   17914:	636f7250 	cmnvs	pc, #80, 4
   17918:	69737365 	ldmdbvs	r3!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}^
   1791c:	5420676e 	strtpl	r6, [r0], #-1902	; 0xfffff892
   17920:	20747365 	rsbscs	r7, r4, r5, ror #6
   17924:	2a2a2a2a 	bcs	aa21d4 <__stack+0x8e4284>
   17928:	52200a0d 	eorpl	r0, r0, #53248	; 0xd000
   1792c:	74616c65 	strbtvc	r6, [r1], #-3173	; 0xfffff39b
   17930:	20657669 	rsbcs	r7, r5, r9, ror #12
   17934:	656d6954 	strbvs	r6, [sp, #-2388]!	; 0xfffff6ac
   17938:	6425203a 	strtvs	r2, [r5], #-58	; 0xffffffc6
   1793c:	00000a0d 	andeq	r0, r0, sp, lsl #20
   17940:	4f525245 	svcmi	0x00525245
   17944:	49203a52 	stmdbmi	r0!, {r1, r4, r6, r9, fp, ip, sp}
   17948:	6c61766e 	stclvs	6, cr7, [r1], #-440	; 0xfffffe48
   1794c:	63206469 	teqvs	r0, #1761607680	; 0x69000000
   17950:	746e756f 	strbtvc	r7, [lr], #-1391	; 0xfffffa91
   17954:	76207265 	strtvc	r7, [r0], -r5, ror #4
   17958:	65756c61 	ldrbvs	r6, [r5, #-3169]!	; 0xfffff39f
   1795c:	2e297328 	cdpcs	3, 2, cr7, cr9, cr8, {1}
   17960:	746e4920 	strbtvc	r4, [lr], #-2336	; 0xfffff6e0
   17964:	75727265 	ldrbvc	r7, [r2, #-613]!	; 0xfffffd9b
   17968:	70207470 	eorvc	r7, r0, r0, ror r4
   1796c:	65636f72 	strbvs	r6, [r3, #-3954]!	; 0xfffff08e
   17970:	6e697373 	mcrvs	3, 3, r7, cr9, cr3, {3}
   17974:	65742067 	ldrbvs	r2, [r4, #-103]!	; 0xffffff99
   17978:	68207473 	stmdavs	r0!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}
   1797c:	66207361 	strtvs	r7, [r0], -r1, ror #6
   17980:	656c6961 	strbvs	r6, [ip, #-2401]!	; 0xfffff69f
   17984:	0d0a2164 	stfeqs	f2, [sl, #-400]	; 0xfffffe70
   17988:	00000000 	andeq	r0, r0, r0
   1798c:	656d6954 	strbvs	r6, [sp, #-2388]!	; 0xfffff6ac
   17990:	72655020 	rsbvc	r5, r5, #32
   17994:	20646f69 	rsbcs	r6, r4, r9, ror #30
   17998:	61746f54 	cmnvs	r4, r4, asr pc
   1799c:	20203a6c 	eorcs	r3, r0, ip, ror #20
   179a0:	0d0a6425 	cfstrseq	mvf6, [sl, #-148]	; 0xffffff6c
   179a4:	00000000 	andeq	r0, r0, r0
   179a8:	53204d54 	teqpl	r0, #84, 26	; 0x1500
   179ac:	6b636174 	blvs	18eff84 <__stack+0x1732034>
   179b0:	65724320 	ldrbvs	r4, [r2, #-800]!	; 0xfffffce0
   179b4:	6f697461 	svcvs	0x00697461
   179b8:	7245206e 	subvc	r2, r5, #110	; 0x6e
   179bc:	20726f72 	rsbscs	r6, r2, r2, ror pc
   179c0:	00000d0a 	andeq	r0, r0, sl, lsl #26
   179c4:	54204d54 	strtpl	r4, [r0], #-3412	; 0xfffff2ac
   179c8:	61657268 	cmnvs	r5, r8, ror #4
   179cc:	72432064 	subvc	r2, r3, #100	; 0x64
   179d0:	69746165 	ldmdbvs	r4!, {r0, r2, r5, r6, r8, sp, lr}^
   179d4:	45206e6f 	strmi	r6, [r0, #-3695]!	; 0xfffff191
   179d8:	726f7272 	rsbvc	r7, pc, #536870919	; 0x20000007
   179dc:	6425203a 	strtvs	r2, [r5], #-58	; 0xffffffc6
   179e0:	000d0a20 	andeq	r0, sp, r0, lsr #20
   179e4:	54204d54 	strtpl	r4, [r0], #-3412	; 0xfffff2ac
   179e8:	61657268 	cmnvs	r5, r8, ror #4
   179ec:	75532064 	ldrbvc	r2, [r3, #-100]	; 0xffffff9c
   179f0:	6e657073 	mcrvs	0, 3, r7, cr5, cr3, {3}
   179f4:	72452064 	subvc	r2, r5, #100	; 0x64
   179f8:	20726f72 	rsbscs	r6, r2, r2, ror pc
   179fc:	0d0a6425 	cfstrseq	mvf6, [sl, #-148]	; 0xffffff6c
   17a00:	00000000 	andeq	r0, r0, r0
   17a04:	54204d54 	strtpl	r4, [r0], #-3412	; 0xfffff2ac
   17a08:	61657268 	cmnvs	r5, r8, ror #4
   17a0c:	65532064 	ldrbvs	r2, [r3, #-100]	; 0xffffff9c
   17a10:	5120646e 	teqpl	r0, lr, ror #8
   17a14:	65756575 	ldrbvs	r6, [r5, #-1397]!	; 0xfffffa8b
   17a18:	72724520 	rsbsvc	r4, r2, #32, 10	; 0x8000000
   17a1c:	0a20726f 	beq	8343e0 <__stack+0x676490>
   17a20:	0000000d 	andeq	r0, r0, sp
   17a24:	54204d54 	strtpl	r4, [r0], #-3412	; 0xfffff2ac
   17a28:	61657268 	cmnvs	r5, r8, ror #4
   17a2c:	65472064 	strbvs	r2, [r7, #-100]	; 0xffffff9c
   17a30:	75512074 	ldrbvc	r2, [r1, #-116]	; 0xffffff8c
   17a34:	20657565 	rsbcs	r7, r5, r5, ror #10
   17a38:	6f727245 	svcvs	0x00727245
   17a3c:	0d0a2072 	stceq	0, cr2, [sl, #-456]	; 0xfffffe38
   17a40:	00000000 	andeq	r0, r0, r0
   17a44:	54204d54 	strtpl	r4, [r0], #-3412	; 0xfffff2ac
   17a48:	61657268 	cmnvs	r5, r8, ror #4
   17a4c:	45532064 	ldrbmi	r2, [r3, #-100]	; 0xffffff9c
   17a50:	6567204d 	strbvs	r2, [r7, #-77]!	; 0xffffffb3
   17a54:	72452074 	subvc	r2, r5, #116	; 0x74
   17a58:	20726f72 	rsbscs	r6, r2, r2, ror pc
   17a5c:	00000d0a 	andeq	r0, r0, sl, lsl #26
   17a60:	54204d54 	strtpl	r4, [r0], #-3412	; 0xfffff2ac
   17a64:	61657268 	cmnvs	r5, r8, ror #4
   17a68:	45532064 	ldrbmi	r2, [r3, #-100]	; 0xffffff9c
   17a6c:	7570204d 	ldrbvc	r2, [r0, #-77]!	; 0xffffffb3
   17a70:	72452074 	subvc	r2, r5, #116	; 0x74
   17a74:	20726f72 	rsbscs	r6, r2, r2, ror pc
   17a78:	00000d0a 	andeq	r0, r0, sl, lsl #26
   17a7c:	00007825 	andeq	r7, r0, r5, lsr #16
   17a80:	2a2a2a2a 	bcs	aa2330 <__stack+0x8e43e0>
   17a84:	75202a2a 	strvc	r2, [r0, #-2602]!	; 0xfffff5d6
   17a88:	534f2f43 	movtpl	r2, #65347	; 0xff43
   17a8c:	2049492d 	subcs	r4, r9, sp, lsr #18
   17a90:	72617473 	rsbvc	r7, r1, #1929379840	; 0x73000000
   17a94:	2a2a2074 	bcs	a9fc6c <__stack+0x8e1d1c>
   17a98:	2a2a2a2a 	bcs	aa2348 <__stack+0x8e43f8>
   17a9c:	00000a0d 	andeq	r0, r0, sp, lsl #20
   17aa0:	6b736154 	blvs	1cefff8 <__stack+0x1b320a8>
   17aa4:	61745320 	cmnvs	r4, r0, lsr #6
   17aa8:	43207472 	teqmi	r0, #1912602624	; 0x72000000
   17aac:	74616572 	strbtvc	r6, [r1], #-1394	; 0xfffffa8e
   17ab0:	0a0d6465 	beq	370c4c <__stack+0x1b2cfc>
   17ab4:	00000000 	andeq	r0, r0, r0
   17ab8:	00000078 	andeq	r0, r0, r8, ror r0
   17abc:	69204d54 	stmdbvs	r0!, {r2, r4, r6, r8, sl, fp, lr}
   17ac0:	2074696e 	rsbscs	r6, r4, lr, ror #18
   17ac4:	7265766f 	rsbvc	r7, r5, #116391936	; 0x6f00000
   17ac8:	000d0a20 	andeq	r0, sp, r0, lsr #20
   17acc:	6b736154 	blvs	1cf0024 <__stack+0x1b320d4>
   17ad0:	20312320 	eorscs	r2, r1, r0, lsr #6
   17ad4:	72617453 	rsbvc	r7, r1, #1392508928	; 0x53000000
   17ad8:	0d646574 	cfstr64eq	mvdx6, [r4, #-464]!	; 0xfffffe30
   17adc:	0000000a 	andeq	r0, r0, sl
   17ae0:	00000041 	andeq	r0, r0, r1, asr #32
   17ae4:	6b736154 	blvs	1cf003c <__stack+0x1b320ec>
   17ae8:	20322320 	eorscs	r2, r2, r0, lsr #6
   17aec:	72617453 	rsbvc	r7, r1, #1392508928	; 0x53000000
   17af0:	0d646574 	cfstr64eq	mvdx6, [r4, #-464]!	; 0xfffffe30
   17af4:	0000000a 	andeq	r0, r0, sl
   17af8:	000d0a42 	andeq	r0, sp, r2, asr #20
   17afc:	00000a0d 	andeq	r0, r0, sp, lsl #20
   17b00:	7263694d 	rsbvc	r6, r3, #1261568	; 0x134000
   17b04:	0d6d7569 	cfstr64eq	mvdx7, [sp, #-420]!	; 0xfffffe5c
   17b08:	0000000a 	andeq	r0, r0, sl
   17b0c:	534f4375 	movtpl	r4, #62325	; 0xf375
   17b10:	0d49492d 	stcleq	9, cr4, [r9, #-180]	; 0xffffff4c
   17b14:	000a0d0a 	andeq	r0, sl, sl, lsl #26
   17b18:	73696854 	cmnvc	r9, #84, 16	; 0x540000
   17b1c:	70706120 	rsbsvc	r6, r0, r0, lsr #2
   17b20:	6163696c 	cmnvs	r3, ip, ror #18
   17b24:	6e6f6974 	mcrvs	9, 3, r6, cr15, cr4, {3}
   17b28:	6e757220 	cdpvs	2, 7, cr7, cr5, cr0, {1}
   17b2c:	68742073 	ldmdavs	r4!, {r0, r1, r4, r5, r6, sp}^
   17b30:	20656572 	rsbcs	r6, r5, r2, ror r5
   17b34:	66666964 	strbtvs	r6, [r6], -r4, ror #18
   17b38:	6e657265 	cdpvs	2, 6, cr7, cr5, cr5, {3}
   17b3c:	61742074 	cmnvs	r4, r4, ror r0
   17b40:	3a736b73 	bcc	1cf2914 <__stack+0x1b349c4>
   17b44:	0a0d0a0d 	beq	35a380 <__stack+0x19c430>
   17b48:	00000000 	andeq	r0, r0, r0
   17b4c:	54202e31 	strtpl	r2, [r0], #-3633	; 0xfffff1cf
   17b50:	206b7361 	rsbcs	r7, fp, r1, ror #6
   17b54:	72617453 	rsbvc	r7, r1, #1392508928	; 0x53000000
   17b58:	49203a74 	stmdbmi	r0!, {r2, r4, r5, r6, r9, fp, ip, sp}
   17b5c:	6974696e 	ldmdbvs	r4!, {r1, r2, r3, r5, r6, r8, fp, sp, lr}^
   17b60:	7a696c61 	bvc	1a72cec <__stack+0x18b4d9c>
   17b64:	74207365 	strtvc	r7, [r0], #-869	; 0xfffffc9b
   17b68:	4f206568 	svcmi	0x00206568
   17b6c:	6e612053 	mcrvs	0, 3, r2, cr1, cr3, {2}
   17b70:	72632064 	rsbvc	r2, r3, #100	; 0x64
   17b74:	65746165 	ldrbvs	r6, [r4, #-357]!	; 0xfffffe9b
   17b78:	61742073 	cmnvs	r4, r3, ror r0
   17b7c:	20736b73 	rsbscs	r6, r3, r3, ror fp
   17b80:	0d646e61 	stcleq	14, cr6, [r4, #-388]!	; 0xfffffe7c
   17b84:	0000000a 	andeq	r0, r0, sl
   17b88:	20202020 	eorcs	r2, r0, r0, lsr #32
   17b8c:	20202020 	eorcs	r2, r0, r0, lsr #32
   17b90:	20202020 	eorcs	r2, r0, r0, lsr #32
   17b94:	6f202020 	svcvs	0x00202020
   17b98:	72656874 	rsbvc	r6, r5, #116, 16	; 0x740000
   17b9c:	72656b20 	rsbvc	r6, r5, #32, 22	; 0x8000
   17ba0:	206c656e 	rsbcs	r6, ip, lr, ror #10
   17ba4:	656a626f 	strbvs	r6, [sl, #-623]!	; 0xfffffd91
   17ba8:	20737463 	rsbscs	r7, r3, r3, ror #8
   17bac:	68637573 	stmdavs	r3!, {r0, r1, r4, r5, r6, r8, sl, ip, sp, lr}^
   17bb0:	20736120 	rsbscs	r6, r3, r0, lsr #2
   17bb4:	616d6573 	smcvs	54867	; 0xd653
   17bb8:	726f6870 	rsbvc	r6, pc, #112, 16	; 0x700000
   17bbc:	0d2e7365 	stceq	3, cr7, [lr, #-404]!	; 0xfffffe6c
   17bc0:	0000000a 	andeq	r0, r0, sl
   17bc4:	20202020 	eorcs	r2, r0, r0, lsr #32
   17bc8:	20202020 	eorcs	r2, r0, r0, lsr #32
   17bcc:	20202020 	eorcs	r2, r0, r0, lsr #32
   17bd0:	54202020 	strtpl	r2, [r0], #-32	; 0xffffffe0
   17bd4:	20736968 	rsbscs	r6, r3, r8, ror #18
   17bd8:	6b736174 	blvs	1cf01b0 <__stack+0x1b32260>
   17bdc:	6d657220 	sfmvs	f7, 2, [r5, #-128]!	; 0xffffff80
   17be0:	736e6961 	cmnvc	lr, #1589248	; 0x184000
   17be4:	6e757220 	cdpvs	2, 7, cr7, cr5, cr0, {1}
   17be8:	676e696e 	strbvs	r6, [lr, -lr, ror #18]!
   17bec:	646e6120 	strbtvs	r6, [lr], #-288	; 0xfffffee0
   17bf0:	69727020 	ldmdbvs	r2!, {r5, ip, sp, lr}^
   17bf4:	6e69746e 	cdpvs	4, 6, cr7, cr9, cr14, {3}
   17bf8:	0d612067 	stcleq	0, cr2, [r1, #-412]!	; 0xfffffe64
   17bfc:	0000000a 	andeq	r0, r0, sl
   17c00:	20202020 	eorcs	r2, r0, r0, lsr #32
   17c04:	20202020 	eorcs	r2, r0, r0, lsr #32
   17c08:	20202020 	eorcs	r2, r0, r0, lsr #32
   17c0c:	64202020 	strtvs	r2, [r0], #-32	; 0xffffffe0
   17c10:	2720746f 	strcs	r7, [r0, -pc, ror #8]!
   17c14:	6520272e 	strvs	r2, [r0, #-1838]!	; 0xfffff8d2
   17c18:	79726576 	ldmdbvc	r2!, {r1, r2, r4, r5, r6, r8, sl, sp, lr}^
   17c1c:	30303120 	eorscc	r3, r0, r0, lsr #2
   17c20:	6c696d20 	stclvs	13, cr6, [r9], #-128	; 0xffffff80
   17c24:	6573696c 	ldrbvs	r6, [r3, #-2412]!	; 0xfffff694
   17c28:	646e6f63 	strbtvs	r6, [lr], #-3939	; 0xfffff09d
   17c2c:	0a0d2e73 	beq	363600 <__stack+0x1a56b0>
   17c30:	00000000 	andeq	r0, r0, r0
   17c34:	54202e32 	strtpl	r2, [r0], #-3634	; 0xfffff1ce
   17c38:	206b7361 	rsbcs	r7, fp, r1, ror #6
   17c3c:	20203123 	eorcs	r3, r0, r3, lsr #2
   17c40:	50203a20 	eorpl	r3, r0, r0, lsr #20
   17c44:	746e6972 	strbtvc	r6, [lr], #-2418	; 0xfffff68e
   17c48:	31272073 	teqcc	r7, r3, ror r0
   17c4c:	76652027 	strbtvc	r2, [r5], -r7, lsr #32
   17c50:	20797265 	rsbscs	r7, r9, r5, ror #4
   17c54:	65732d31 	ldrbvs	r2, [r3, #-3377]!	; 0xfffff2cf
   17c58:	646e6f63 	strbtvs	r6, [lr], #-3939	; 0xfffff09d
   17c5c:	000a0d2e 	andeq	r0, sl, lr, lsr #26
   17c60:	54202e33 	strtpl	r2, [r0], #-3635	; 0xfffff1cd
   17c64:	206b7361 	rsbcs	r7, fp, r1, ror #6
   17c68:	20203223 	eorcs	r3, r0, r3, lsr #4
   17c6c:	50203a20 	eorpl	r3, r0, r0, lsr #20
   17c70:	746e6972 	strbtvc	r6, [lr], #-2418	; 0xfffff68e
   17c74:	32272073 	eorcc	r2, r7, #115	; 0x73
   17c78:	76652027 	strbtvc	r2, [r5], -r7, lsr #32
   17c7c:	20797265 	rsbscs	r7, r9, r5, ror #4
   17c80:	65732d32 	ldrbvs	r2, [r3, #-3378]!	; 0xfffff2ce
   17c84:	646e6f63 	strbtvs	r6, [lr], #-3939	; 0xfffff09d
   17c88:	0a0d2e73 	beq	36365c <__stack+0x1a570c>
   17c8c:	00000a0d 	andeq	r0, r0, sp, lsl #20

00017c90 <_ctype_>:
   17c90:	20202000 	eorcs	r2, r0, r0
   17c94:	20202020 	eorcs	r2, r0, r0, lsr #32
   17c98:	28282020 	stmdacs	r8!, {r5, sp}
   17c9c:	20282828 	eorcs	r2, r8, r8, lsr #16
   17ca0:	20202020 	eorcs	r2, r0, r0, lsr #32
   17ca4:	20202020 	eorcs	r2, r0, r0, lsr #32
   17ca8:	20202020 	eorcs	r2, r0, r0, lsr #32
   17cac:	20202020 	eorcs	r2, r0, r0, lsr #32
   17cb0:	10108820 	andsne	r8, r0, r0, lsr #16
   17cb4:	10101010 	andsne	r1, r0, r0, lsl r0
   17cb8:	10101010 	andsne	r1, r0, r0, lsl r0
   17cbc:	10101010 	andsne	r1, r0, r0, lsl r0
   17cc0:	04040410 	streq	r0, [r4], #-1040	; 0xfffffbf0
   17cc4:	04040404 	streq	r0, [r4], #-1028	; 0xfffffbfc
   17cc8:	10040404 	andne	r0, r4, r4, lsl #8
   17ccc:	10101010 	andsne	r1, r0, r0, lsl r0
   17cd0:	41411010 	cmpmi	r1, r0, lsl r0
   17cd4:	41414141 	cmpmi	r1, r1, asr #2
   17cd8:	01010101 	tsteq	r1, r1, lsl #2
   17cdc:	01010101 	tsteq	r1, r1, lsl #2
   17ce0:	01010101 	tsteq	r1, r1, lsl #2
   17ce4:	01010101 	tsteq	r1, r1, lsl #2
   17ce8:	01010101 	tsteq	r1, r1, lsl #2
   17cec:	10101010 	andsne	r1, r0, r0, lsl r0
   17cf0:	42421010 	submi	r1, r2, #16
   17cf4:	42424242 	submi	r4, r2, #536870916	; 0x20000004
   17cf8:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
   17cfc:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
   17d00:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
   17d04:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
   17d08:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
   17d0c:	10101010 	andsne	r1, r0, r0, lsl r0
   17d10:	00000020 	andeq	r0, r0, r0, lsr #32
	...

00017d94 <_global_impure_ptr>:
   17d94:	00017de8 	andeq	r7, r1, r8, ror #27
   17d98:	33323130 	teqcc	r2, #48, 2
   17d9c:	37363534 			; <UNDEFINED> instruction: 0x37363534
   17da0:	42413938 	submi	r3, r1, #56, 18	; 0xe0000
   17da4:	46454443 	strbmi	r4, [r5], -r3, asr #8
   17da8:	00000000 	andeq	r0, r0, r0
   17dac:	72617578 	rsbvc	r7, r1, #120, 10	; 0x1e000000
   17db0:	2e737074 	mrccs	0, 3, r7, cr3, cr4, {3}
   17db4:	00000063 	andeq	r0, r0, r3, rrx
   17db8:	00000043 	andeq	r0, r0, r3, asr #32

Disassembly of section .data:

00017dc0 <__data_start>:
   17dc0:	00000000 	andeq	r0, r0, r0

00017dc4 <Xil_AssertWait>:
   17dc4:	00000001 	andeq	r0, r0, r1

00017dc8 <XUartPs_ConfigTable>:
   17dc8:	00000000 	andeq	r0, r0, r0
   17dcc:	e0001000 	and	r1, r0, r0
   17dd0:	02faf080 	rscseq	pc, sl, #128	; 0x80
   17dd4:	00000000 	andeq	r0, r0, r0

00017dd8 <__ctype_ptr__>:
   17dd8:	00017c90 	muleq	r1, r0, ip
   17ddc:	00000000 	andeq	r0, r0, r0

00017de0 <_impure_ptr>:
   17de0:	00017de8 	andeq	r7, r1, r8, ror #27
   17de4:	00000000 	andeq	r0, r0, r0

00017de8 <impure_data>:
   17de8:	00000000 	andeq	r0, r0, r0
   17dec:	000180d4 	ldrdeq	r8, [r1], -r4
   17df0:	0001813c 	andeq	r8, r1, ip, lsr r1
   17df4:	000181a4 	andeq	r8, r1, r4, lsr #3
	...
   17e1c:	00017db8 			; <UNDEFINED> instruction: 0x00017db8
	...
   17e90:	00000001 	andeq	r0, r0, r1
   17e94:	00000000 	andeq	r0, r0, r0
   17e98:	abcd330e 	blge	ff364ad8 <CPU_ARM_BIT_CNTES_C+0x7f364ad8>
   17e9c:	e66d1234 			; <UNDEFINED> instruction: 0xe66d1234
   17ea0:	0005deec 	andeq	sp, r5, ip, ror #29
   17ea4:	0000000b 	andeq	r0, r0, fp
	...

00018210 <__malloc_av_>:
	...
   18218:	00018210 	andeq	r8, r1, r0, lsl r2
   1821c:	00018210 	andeq	r8, r1, r0, lsl r2
   18220:	00018218 	andeq	r8, r1, r8, lsl r2
   18224:	00018218 	andeq	r8, r1, r8, lsl r2
   18228:	00018220 	andeq	r8, r1, r0, lsr #4
   1822c:	00018220 	andeq	r8, r1, r0, lsr #4
   18230:	00018228 	andeq	r8, r1, r8, lsr #4
   18234:	00018228 	andeq	r8, r1, r8, lsr #4
   18238:	00018230 	andeq	r8, r1, r0, lsr r2
   1823c:	00018230 	andeq	r8, r1, r0, lsr r2
   18240:	00018238 	andeq	r8, r1, r8, lsr r2
   18244:	00018238 	andeq	r8, r1, r8, lsr r2
   18248:	00018240 	andeq	r8, r1, r0, asr #4
   1824c:	00018240 	andeq	r8, r1, r0, asr #4
   18250:	00018248 	andeq	r8, r1, r8, asr #4
   18254:	00018248 	andeq	r8, r1, r8, asr #4
   18258:	00018250 	andeq	r8, r1, r0, asr r2
   1825c:	00018250 	andeq	r8, r1, r0, asr r2
   18260:	00018258 	andeq	r8, r1, r8, asr r2
   18264:	00018258 	andeq	r8, r1, r8, asr r2
   18268:	00018260 	andeq	r8, r1, r0, ror #4
   1826c:	00018260 	andeq	r8, r1, r0, ror #4
   18270:	00018268 	andeq	r8, r1, r8, ror #4
   18274:	00018268 	andeq	r8, r1, r8, ror #4
   18278:	00018270 	andeq	r8, r1, r0, ror r2
   1827c:	00018270 	andeq	r8, r1, r0, ror r2
   18280:	00018278 	andeq	r8, r1, r8, ror r2
   18284:	00018278 	andeq	r8, r1, r8, ror r2
   18288:	00018280 	andeq	r8, r1, r0, lsl #5
   1828c:	00018280 	andeq	r8, r1, r0, lsl #5
   18290:	00018288 	andeq	r8, r1, r8, lsl #5
   18294:	00018288 	andeq	r8, r1, r8, lsl #5
   18298:	00018290 	muleq	r1, r0, r2
   1829c:	00018290 	muleq	r1, r0, r2
   182a0:	00018298 	muleq	r1, r8, r2
   182a4:	00018298 	muleq	r1, r8, r2
   182a8:	000182a0 	andeq	r8, r1, r0, lsr #5
   182ac:	000182a0 	andeq	r8, r1, r0, lsr #5
   182b0:	000182a8 	andeq	r8, r1, r8, lsr #5
   182b4:	000182a8 	andeq	r8, r1, r8, lsr #5
   182b8:	000182b0 			; <UNDEFINED> instruction: 0x000182b0
   182bc:	000182b0 			; <UNDEFINED> instruction: 0x000182b0
   182c0:	000182b8 			; <UNDEFINED> instruction: 0x000182b8
   182c4:	000182b8 			; <UNDEFINED> instruction: 0x000182b8
   182c8:	000182c0 	andeq	r8, r1, r0, asr #5
   182cc:	000182c0 	andeq	r8, r1, r0, asr #5
   182d0:	000182c8 	andeq	r8, r1, r8, asr #5
   182d4:	000182c8 	andeq	r8, r1, r8, asr #5
   182d8:	000182d0 	ldrdeq	r8, [r1], -r0
   182dc:	000182d0 	ldrdeq	r8, [r1], -r0
   182e0:	000182d8 	ldrdeq	r8, [r1], -r8	; <UNPREDICTABLE>
   182e4:	000182d8 	ldrdeq	r8, [r1], -r8	; <UNPREDICTABLE>
   182e8:	000182e0 	andeq	r8, r1, r0, ror #5
   182ec:	000182e0 	andeq	r8, r1, r0, ror #5
   182f0:	000182e8 	andeq	r8, r1, r8, ror #5
   182f4:	000182e8 	andeq	r8, r1, r8, ror #5
   182f8:	000182f0 	strdeq	r8, [r1], -r0
   182fc:	000182f0 	strdeq	r8, [r1], -r0
   18300:	000182f8 	strdeq	r8, [r1], -r8	; <UNPREDICTABLE>
   18304:	000182f8 	strdeq	r8, [r1], -r8	; <UNPREDICTABLE>
   18308:	00018300 	andeq	r8, r1, r0, lsl #6
   1830c:	00018300 	andeq	r8, r1, r0, lsl #6
   18310:	00018308 	andeq	r8, r1, r8, lsl #6
   18314:	00018308 	andeq	r8, r1, r8, lsl #6
   18318:	00018310 	andeq	r8, r1, r0, lsl r3
   1831c:	00018310 	andeq	r8, r1, r0, lsl r3
   18320:	00018318 	andeq	r8, r1, r8, lsl r3
   18324:	00018318 	andeq	r8, r1, r8, lsl r3
   18328:	00018320 	andeq	r8, r1, r0, lsr #6
   1832c:	00018320 	andeq	r8, r1, r0, lsr #6
   18330:	00018328 	andeq	r8, r1, r8, lsr #6
   18334:	00018328 	andeq	r8, r1, r8, lsr #6
   18338:	00018330 	andeq	r8, r1, r0, lsr r3
   1833c:	00018330 	andeq	r8, r1, r0, lsr r3
   18340:	00018338 	andeq	r8, r1, r8, lsr r3
   18344:	00018338 	andeq	r8, r1, r8, lsr r3
   18348:	00018340 	andeq	r8, r1, r0, asr #6
   1834c:	00018340 	andeq	r8, r1, r0, asr #6
   18350:	00018348 	andeq	r8, r1, r8, asr #6
   18354:	00018348 	andeq	r8, r1, r8, asr #6
   18358:	00018350 	andeq	r8, r1, r0, asr r3
   1835c:	00018350 	andeq	r8, r1, r0, asr r3
   18360:	00018358 	andeq	r8, r1, r8, asr r3
   18364:	00018358 	andeq	r8, r1, r8, asr r3
   18368:	00018360 	andeq	r8, r1, r0, ror #6
   1836c:	00018360 	andeq	r8, r1, r0, ror #6
   18370:	00018368 	andeq	r8, r1, r8, ror #6
   18374:	00018368 	andeq	r8, r1, r8, ror #6
   18378:	00018370 	andeq	r8, r1, r0, ror r3
   1837c:	00018370 	andeq	r8, r1, r0, ror r3
   18380:	00018378 	andeq	r8, r1, r8, ror r3
   18384:	00018378 	andeq	r8, r1, r8, ror r3
   18388:	00018380 	andeq	r8, r1, r0, lsl #7
   1838c:	00018380 	andeq	r8, r1, r0, lsl #7
   18390:	00018388 	andeq	r8, r1, r8, lsl #7
   18394:	00018388 	andeq	r8, r1, r8, lsl #7
   18398:	00018390 	muleq	r1, r0, r3
   1839c:	00018390 	muleq	r1, r0, r3
   183a0:	00018398 	muleq	r1, r8, r3
   183a4:	00018398 	muleq	r1, r8, r3
   183a8:	000183a0 	andeq	r8, r1, r0, lsr #7
   183ac:	000183a0 	andeq	r8, r1, r0, lsr #7
   183b0:	000183a8 	andeq	r8, r1, r8, lsr #7
   183b4:	000183a8 	andeq	r8, r1, r8, lsr #7
   183b8:	000183b0 			; <UNDEFINED> instruction: 0x000183b0
   183bc:	000183b0 			; <UNDEFINED> instruction: 0x000183b0
   183c0:	000183b8 			; <UNDEFINED> instruction: 0x000183b8
   183c4:	000183b8 			; <UNDEFINED> instruction: 0x000183b8
   183c8:	000183c0 	andeq	r8, r1, r0, asr #7
   183cc:	000183c0 	andeq	r8, r1, r0, asr #7
   183d0:	000183c8 	andeq	r8, r1, r8, asr #7
   183d4:	000183c8 	andeq	r8, r1, r8, asr #7
   183d8:	000183d0 	ldrdeq	r8, [r1], -r0
   183dc:	000183d0 	ldrdeq	r8, [r1], -r0
   183e0:	000183d8 	ldrdeq	r8, [r1], -r8	; <UNPREDICTABLE>
   183e4:	000183d8 	ldrdeq	r8, [r1], -r8	; <UNPREDICTABLE>
   183e8:	000183e0 	andeq	r8, r1, r0, ror #7
   183ec:	000183e0 	andeq	r8, r1, r0, ror #7
   183f0:	000183e8 	andeq	r8, r1, r8, ror #7
   183f4:	000183e8 	andeq	r8, r1, r8, ror #7
   183f8:	000183f0 	strdeq	r8, [r1], -r0
   183fc:	000183f0 	strdeq	r8, [r1], -r0
   18400:	000183f8 	strdeq	r8, [r1], -r8	; <UNPREDICTABLE>
   18404:	000183f8 	strdeq	r8, [r1], -r8	; <UNPREDICTABLE>
   18408:	00018400 	andeq	r8, r1, r0, lsl #8
   1840c:	00018400 	andeq	r8, r1, r0, lsl #8
   18410:	00018408 	andeq	r8, r1, r8, lsl #8
   18414:	00018408 	andeq	r8, r1, r8, lsl #8
   18418:	00018410 	andeq	r8, r1, r0, lsl r4
   1841c:	00018410 	andeq	r8, r1, r0, lsl r4
   18420:	00018418 	andeq	r8, r1, r8, lsl r4
   18424:	00018418 	andeq	r8, r1, r8, lsl r4
   18428:	00018420 	andeq	r8, r1, r0, lsr #8
   1842c:	00018420 	andeq	r8, r1, r0, lsr #8
   18430:	00018428 	andeq	r8, r1, r8, lsr #8
   18434:	00018428 	andeq	r8, r1, r8, lsr #8
   18438:	00018430 	andeq	r8, r1, r0, lsr r4
   1843c:	00018430 	andeq	r8, r1, r0, lsr r4
   18440:	00018438 	andeq	r8, r1, r8, lsr r4
   18444:	00018438 	andeq	r8, r1, r8, lsr r4
   18448:	00018440 	andeq	r8, r1, r0, asr #8
   1844c:	00018440 	andeq	r8, r1, r0, asr #8
   18450:	00018448 	andeq	r8, r1, r8, asr #8
   18454:	00018448 	andeq	r8, r1, r8, asr #8
   18458:	00018450 	andeq	r8, r1, r0, asr r4
   1845c:	00018450 	andeq	r8, r1, r0, asr r4
   18460:	00018458 	andeq	r8, r1, r8, asr r4
   18464:	00018458 	andeq	r8, r1, r8, asr r4
   18468:	00018460 	andeq	r8, r1, r0, ror #8
   1846c:	00018460 	andeq	r8, r1, r0, ror #8
   18470:	00018468 	andeq	r8, r1, r8, ror #8
   18474:	00018468 	andeq	r8, r1, r8, ror #8
   18478:	00018470 	andeq	r8, r1, r0, ror r4
   1847c:	00018470 	andeq	r8, r1, r0, ror r4
   18480:	00018478 	andeq	r8, r1, r8, ror r4
   18484:	00018478 	andeq	r8, r1, r8, ror r4
   18488:	00018480 	andeq	r8, r1, r0, lsl #9
   1848c:	00018480 	andeq	r8, r1, r0, lsl #9
   18490:	00018488 	andeq	r8, r1, r8, lsl #9
   18494:	00018488 	andeq	r8, r1, r8, lsl #9
   18498:	00018490 	muleq	r1, r0, r4
   1849c:	00018490 	muleq	r1, r0, r4
   184a0:	00018498 	muleq	r1, r8, r4
   184a4:	00018498 	muleq	r1, r8, r4
   184a8:	000184a0 	andeq	r8, r1, r0, lsr #9
   184ac:	000184a0 	andeq	r8, r1, r0, lsr #9
   184b0:	000184a8 	andeq	r8, r1, r8, lsr #9
   184b4:	000184a8 	andeq	r8, r1, r8, lsr #9
   184b8:	000184b0 			; <UNDEFINED> instruction: 0x000184b0
   184bc:	000184b0 			; <UNDEFINED> instruction: 0x000184b0
   184c0:	000184b8 			; <UNDEFINED> instruction: 0x000184b8
   184c4:	000184b8 			; <UNDEFINED> instruction: 0x000184b8
   184c8:	000184c0 	andeq	r8, r1, r0, asr #9
   184cc:	000184c0 	andeq	r8, r1, r0, asr #9
   184d0:	000184c8 	andeq	r8, r1, r8, asr #9
   184d4:	000184c8 	andeq	r8, r1, r8, asr #9
   184d8:	000184d0 	ldrdeq	r8, [r1], -r0
   184dc:	000184d0 	ldrdeq	r8, [r1], -r0
   184e0:	000184d8 	ldrdeq	r8, [r1], -r8	; <UNPREDICTABLE>
   184e4:	000184d8 	ldrdeq	r8, [r1], -r8	; <UNPREDICTABLE>
   184e8:	000184e0 	andeq	r8, r1, r0, ror #9
   184ec:	000184e0 	andeq	r8, r1, r0, ror #9
   184f0:	000184e8 	andeq	r8, r1, r8, ror #9
   184f4:	000184e8 	andeq	r8, r1, r8, ror #9
   184f8:	000184f0 	strdeq	r8, [r1], -r0
   184fc:	000184f0 	strdeq	r8, [r1], -r0
   18500:	000184f8 	strdeq	r8, [r1], -r8	; <UNPREDICTABLE>
   18504:	000184f8 	strdeq	r8, [r1], -r8	; <UNPREDICTABLE>
   18508:	00018500 	andeq	r8, r1, r0, lsl #10
   1850c:	00018500 	andeq	r8, r1, r0, lsl #10
   18510:	00018508 	andeq	r8, r1, r8, lsl #10
   18514:	00018508 	andeq	r8, r1, r8, lsl #10
   18518:	00018510 	andeq	r8, r1, r0, lsl r5
   1851c:	00018510 	andeq	r8, r1, r0, lsl r5
   18520:	00018518 	andeq	r8, r1, r8, lsl r5
   18524:	00018518 	andeq	r8, r1, r8, lsl r5
   18528:	00018520 	andeq	r8, r1, r0, lsr #10
   1852c:	00018520 	andeq	r8, r1, r0, lsr #10
   18530:	00018528 	andeq	r8, r1, r8, lsr #10
   18534:	00018528 	andeq	r8, r1, r8, lsr #10
   18538:	00018530 	andeq	r8, r1, r0, lsr r5
   1853c:	00018530 	andeq	r8, r1, r0, lsr r5
   18540:	00018538 	andeq	r8, r1, r8, lsr r5
   18544:	00018538 	andeq	r8, r1, r8, lsr r5
   18548:	00018540 	andeq	r8, r1, r0, asr #10
   1854c:	00018540 	andeq	r8, r1, r0, asr #10
   18550:	00018548 	andeq	r8, r1, r8, asr #10
   18554:	00018548 	andeq	r8, r1, r8, asr #10
   18558:	00018550 	andeq	r8, r1, r0, asr r5
   1855c:	00018550 	andeq	r8, r1, r0, asr r5
   18560:	00018558 	andeq	r8, r1, r8, asr r5
   18564:	00018558 	andeq	r8, r1, r8, asr r5
   18568:	00018560 	andeq	r8, r1, r0, ror #10
   1856c:	00018560 	andeq	r8, r1, r0, ror #10
   18570:	00018568 	andeq	r8, r1, r8, ror #10
   18574:	00018568 	andeq	r8, r1, r8, ror #10
   18578:	00018570 	andeq	r8, r1, r0, ror r5
   1857c:	00018570 	andeq	r8, r1, r0, ror r5
   18580:	00018578 	andeq	r8, r1, r8, ror r5
   18584:	00018578 	andeq	r8, r1, r8, ror r5
   18588:	00018580 	andeq	r8, r1, r0, lsl #11
   1858c:	00018580 	andeq	r8, r1, r0, lsl #11
   18590:	00018588 	andeq	r8, r1, r8, lsl #11
   18594:	00018588 	andeq	r8, r1, r8, lsl #11
   18598:	00018590 	muleq	r1, r0, r5
   1859c:	00018590 	muleq	r1, r0, r5
   185a0:	00018598 	muleq	r1, r8, r5
   185a4:	00018598 	muleq	r1, r8, r5
   185a8:	000185a0 	andeq	r8, r1, r0, lsr #11
   185ac:	000185a0 	andeq	r8, r1, r0, lsr #11
   185b0:	000185a8 	andeq	r8, r1, r8, lsr #11
   185b4:	000185a8 	andeq	r8, r1, r8, lsr #11
   185b8:	000185b0 			; <UNDEFINED> instruction: 0x000185b0
   185bc:	000185b0 			; <UNDEFINED> instruction: 0x000185b0
   185c0:	000185b8 			; <UNDEFINED> instruction: 0x000185b8
   185c4:	000185b8 			; <UNDEFINED> instruction: 0x000185b8
   185c8:	000185c0 	andeq	r8, r1, r0, asr #11
   185cc:	000185c0 	andeq	r8, r1, r0, asr #11
   185d0:	000185c8 	andeq	r8, r1, r8, asr #11
   185d4:	000185c8 	andeq	r8, r1, r8, asr #11
   185d8:	000185d0 	ldrdeq	r8, [r1], -r0
   185dc:	000185d0 	ldrdeq	r8, [r1], -r0
   185e0:	000185d8 	ldrdeq	r8, [r1], -r8	; <UNPREDICTABLE>
   185e4:	000185d8 	ldrdeq	r8, [r1], -r8	; <UNPREDICTABLE>
   185e8:	000185e0 	andeq	r8, r1, r0, ror #11
   185ec:	000185e0 	andeq	r8, r1, r0, ror #11
   185f0:	000185e8 	andeq	r8, r1, r8, ror #11
   185f4:	000185e8 	andeq	r8, r1, r8, ror #11
   185f8:	000185f0 	strdeq	r8, [r1], -r0
   185fc:	000185f0 	strdeq	r8, [r1], -r0
   18600:	000185f8 	strdeq	r8, [r1], -r8	; <UNPREDICTABLE>
   18604:	000185f8 	strdeq	r8, [r1], -r8	; <UNPREDICTABLE>
   18608:	00018600 	andeq	r8, r1, r0, lsl #12
   1860c:	00018600 	andeq	r8, r1, r0, lsl #12
   18610:	00018608 	andeq	r8, r1, r8, lsl #12
   18614:	00018608 	andeq	r8, r1, r8, lsl #12

00018618 <__malloc_sbrk_base>:
   18618:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff

0001861c <__malloc_trim_threshold>:
   1861c:	00020000 	andeq	r0, r2, r0

00018620 <__JCR_END__>:
   18620:	00000000 	andeq	r0, r0, r0

Disassembly of section .eh_frame:

00018624 <__EH_FRAME_BEGIN__>:
   18624:	00000000 	andeq	r0, r0, r0

Disassembly of section .init_array:

00018628 <__eh_framehdr_end>:
   18628:	000175dc 	ldrdeq	r7, [r1], -ip

0001862c <__frame_dummy_init_array_entry>:
   1862c:	000081bc 			; <UNDEFINED> instruction: 0x000081bc

Disassembly of section .fini_array:

00018630 <__fini_array_start>:
   18630:	00008178 	andeq	r8, r0, r8, ror r1

Disassembly of section .ARM.attributes:

00018634 <__ARM.attributes_start>:
   18634:	00003241 	andeq	r3, r0, r1, asr #4
   18638:	61656100 	cmnvs	r5, r0, lsl #2
   1863c:	01006962 	tsteq	r0, r2, ror #18
   18640:	00000028 	andeq	r0, r0, r8, lsr #32
   18644:	412d3705 	teqmi	sp, r5, lsl #14
   18648:	070a0600 	streq	r0, [sl, -r0, lsl #12]
   1864c:	09010841 	stmdbeq	r1, {r0, r6, fp}
   18650:	0c030a02 	stceq	10, cr0, [r3], {2}
   18654:	14041201 	strne	r1, [r4], #-513	; 0xfffffdff
   18658:	17011501 	strne	r1, [r1, -r1, lsl #10]
   1865c:	1a011803 	bne	5e670 <_HEAP_SIZE+0x3e670>
   18660:	22031b01 	andcs	r1, r3, #1024	; 0x400
   18664:	Address 0x00018664 is out of bounds.


Disassembly of section .bss:

00018634 <__bss_start>:
   18634:	00000000 	andeq	r0, r0, r0

00018638 <object.8489>:
	...

00018650 <CSP_MainVectTbl>:
	...

00018e50 <mem_pool>:
	...

00019650 <AppTaskStartStk>:
	...

00019e50 <AppTask1Stk>:
	...

0001a650 <AppTask2Stk>:
	...

0001ae50 <AppTask3Stk>:
	...

0019ae50 <Xil_AssertCallbackRoutine>:
  19ae50:	00000000 	andeq	r0, r0, r0

0019ae54 <__malloc_top_pad>:
  19ae54:	00000000 	andeq	r0, r0, r0

0019ae58 <__malloc_current_mallinfo>:
	...

0019ae80 <__malloc_max_sbrked_mem>:
  19ae80:	00000000 	andeq	r0, r0, r0

0019ae84 <__malloc_max_total_mem>:
  19ae84:	00000000 	andeq	r0, r0, r0

0019ae88 <heap.4133>:
  19ae88:	00000000 	andeq	r0, r0, r0

0019ae8c <OSLockNesting>:
	...

0019ae8d <OSTaskRegNextAvailID>:
	...

0019ae8e <OSRunning>:
	...

0019ae90 <OSIdleCtr>:
  19ae90:	00000000 	andeq	r0, r0, r0

0019ae94 <OSPrioHighRdy>:
	...

0019ae95 <OSPrioCur>:
  19ae95:	00000000 	andeq	r0, r0, r0

0019ae98 <OSTCBList>:
  19ae98:	00000000 	andeq	r0, r0, r0

0019ae9c <OSMemTbl>:
	...

0019af14 <OSTickStepState>:
  19af14:	00000000 	andeq	r0, r0, r0

0019af18 <OSCtxSwCtr>:
  19af18:	00000000 	andeq	r0, r0, r0

0019af1c <OSTCBFreeList>:
  19af1c:	00000000 	andeq	r0, r0, r0

0019af20 <OSTaskCtr>:
  19af20:	00000000 	andeq	r0, r0, r0

0019af24 <OSMemFreeList>:
  19af24:	00000000 	andeq	r0, r0, r0

0019af28 <OSQTbl>:
	...

0019af88 <OSTCBHighRdy>:
  19af88:	00000000 	andeq	r0, r0, r0

0019af8c <OSQFreeList>:
  19af8c:	00000000 	andeq	r0, r0, r0

0019af90 <OSRdyGrp>:
  19af90:	00000000 	andeq	r0, r0, r0

0019af94 <OSRdyTbl>:
	...

0019af9c <OSEventFreeList>:
  19af9c:	00000000 	andeq	r0, r0, r0

0019afa0 <OSIntNesting>:
  19afa0:	00000000 	andeq	r0, r0, r0

0019afa4 <OSTCBCur>:
  19afa4:	00000000 	andeq	r0, r0, r0

0019afa8 <OSTime>:
  19afa8:	00000000 	andeq	r0, r0, r0

0019afac <OSTaskIdleStk>:
	...

0019b1ac <OSEventTbl>:
	...

0019b29c <OSTCBTbl>:
	...

0019b92c <OSTCBPrioTbl>:
	...

0019ba2c <OS_CPU_ExceptStkBase>:
  19ba2c:	00000000 	andeq	r0, r0, r0

0019ba30 <OS_CPU_ExceptStkPtr>:
  19ba30:	00000000 	andeq	r0, r0, r0

0019ba34 <OS_CPU_ExceptStk>:
	...

0019bc34 <Math_RandSeedCur>:
  19bc34:	00000000 	andeq	r0, r0, r0

0019bc38 <BSP_CPU_ClkFreq_MHz>:
  19bc38:	00000000 	andeq	r0, r0, r0

0019bc3c <tm_interrupt_preemption_handler_counter>:
  19bc3c:	00000000 	andeq	r0, r0, r0

0019bc40 <tm_interrupt_preemption_thread_0_counter>:
  19bc40:	00000000 	andeq	r0, r0, r0

0019bc44 <tm_interrupt_preemption_thread_1_counter>:
  19bc44:	00000000 	andeq	r0, r0, r0

0019bc48 <CommMsg>:
	...

0019bc88 <SEMList>:
	...

0019bcb0 <MemPartition>:
	...

0019bcc0 <thread_list>:
	...

0019bec0 <QueueList>:
	...

0019bed0 <AppMutexPrint>:
  19bed0:	00000000 	andeq	r0, r0, r0

0019bed4 <vpsr>:
	...

0019bf44 <Xil_AssertStatus>:
  19bf44:	00000000 	andeq	r0, r0, r0

0019bf48 <errno>:
  19bf48:	00000000 	andeq	r0, r0, r0

Disassembly of section .heap:

0019bf4c <HeapBase-0x4>:
  19bf4c:	00000000 	andeq	r0, r0, r0

0019bf50 <HeapBase>:
	...

Disassembly of section .stack:

001bbf50 <_stack_end>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <__stack+0xf12dd4>
   4:	6f532820 	svcvs	0x00532820
   8:	65637275 	strbvs	r7, [r3, #-629]!	; 0xfffffd8b
   c:	43207972 	teqmi	r0, #1867776	; 0x1c8000
  10:	4265646f 	rsbmi	r6, r5, #1862270976	; 0x6f000000
  14:	68636e65 	stmdavs	r3!, {r0, r2, r5, r6, r9, sl, fp, sp, lr}^
  18:	74694c20 	strbtvc	r4, [r9], #-3104	; 0xfffff3e0
  1c:	30322065 	eorscc	r2, r2, r5, rrx
  20:	302e3231 	eorcc	r3, lr, r1, lsr r2
  24:	30312d39 	eorscc	r2, r1, r9, lsr sp
  28:	34202935 	strtcc	r2, [r0], #-2357	; 0xfffff6cb
  2c:	322e372e 	eorcc	r3, lr, #12058624	; 0xb80000
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
       0:	00000072 	andeq	r0, r0, r2, ror r0
       4:	00000002 	andeq	r0, r0, r2
       8:	01040000 	mrseq	r0, (UNDEF: 4)
       c:	00000000 	andeq	r0, r0, r0
      10:	00008e01 	andeq	r8, r0, r1, lsl #28
      14:	00001200 	andeq	r1, r0, r0, lsl #4
      18:	014e7000 	mrseq	r7, (UNDEF: 78)
      1c:	014e9800 	cmpeq	lr, r0, lsl #16
      20:	00000000 	andeq	r0, r0, r0
      24:	0c010200 	sfmeq	f0, 4, [r1], {-0}
      28:	01000000 	mrseq	r0, (UNDEF: 0)
      2c:	4e700117 	mrcmi	1, 3, r0, cr0, cr7, {0}
      30:	4e980001 	cdpmi	0, 9, cr0, cr8, cr1, {0}
      34:	00000001 	andeq	r0, r0, r1
      38:	58010000 	stmdapl	r1, {}	; <UNPREDICTABLE>
      3c:	03000000 	movweq	r0, #0
      40:	00727470 	rsbseq	r7, r2, r0, ror r4
      44:	00581701 	subseq	r1, r8, r1, lsl #14
      48:	00200000 	eoreq	r0, r0, r0
      4c:	88040000 	stmdahi	r4, {}	; <UNPREDICTABLE>
      50:	6500014e 	strvs	r0, [r0, #-334]	; 0xfffffeb2
      54:	00000000 	andeq	r0, r0, r0
      58:	005e0405 	subseq	r0, lr, r5, lsl #8
      5c:	01060000 	mrseq	r0, (UNDEF: 6)
      60:	0001ab08 	andeq	sl, r1, r8, lsl #22
      64:	86010700 	strhi	r0, [r1], -r0, lsl #14
      68:	01000000 	mrseq	r0, (UNDEF: 0)
      6c:	08010115 	stmdaeq	r1, {r0, r2, r4, r8}
      70:	0000005e 	andeq	r0, r0, lr, asr r0
      74:	0d360000 	ldceq	0, cr0, [r6, #-0]
      78:	00020000 	andeq	r0, r2, r0
      7c:	00000074 	andeq	r0, r0, r4, ror r0
      80:	00000104 	andeq	r0, r0, r4, lsl #2
      84:	ba010000 	blt	4008c <_HEAP_SIZE+0x2008c>
      88:	12000001 	andne	r0, r0, #1
      8c:	98000000 	stmdals	r0, {}	; <UNPREDICTABLE>
      90:	a000014e 	andge	r0, r0, lr, asr #2
      94:	3b000155 	blcc	5f0 <_ABORT_STACK_SIZE+0x1f0>
      98:	02000000 	andeq	r0, r0, #0
      9c:	01a20801 			; <UNDEFINED> instruction: 0x01a20801
      a0:	02020000 	andeq	r0, r2, #0
      a4:	0001fb07 	andeq	pc, r1, r7, lsl #22
      a8:	33750300 	cmncc	r5, #0, 6
      ac:	5c020032 	stcpl	0, cr0, [r2], {50}	; 0x32
      b0:	0000003e 	andeq	r0, r0, lr, lsr r0
      b4:	eb070402 	bl	1c10c4 <__stack+0x3174>
      b8:	02000002 	andeq	r0, r0, #2
      bc:	02e60708 	rsceq	r0, r6, #8, 14	; 0x200000
      c0:	01020000 	mrseq	r0, (UNDEF: 2)
      c4:	0001ab08 	andeq	sl, r1, r8, lsl #22
      c8:	05020200 	streq	r0, [r2, #-512]	; 0xfffffe00
      cc:	000003bb 			; <UNDEFINED> instruction: 0x000003bb
      d0:	93050402 	movwls	r0, #21506	; 0x5402
      d4:	02000003 	andeq	r0, r0, #3
      d8:	038e0508 	orreq	r0, lr, #8, 10	; 0x2000000
      dc:	01040000 	mrseq	r0, (UNDEF: 4)
      e0:	0000012a 	andeq	r0, r0, sl, lsr #2
      e4:	01034701 	tsteq	r3, r1, lsl #14
      e8:	00009201 	andeq	r9, r0, r1, lsl #4
      ec:	01840500 	orreq	r0, r4, r0, lsl #10
      f0:	49010000 	stmdbmi	r1, {}	; <UNPREDICTABLE>
      f4:	00009203 	andeq	r9, r0, r3, lsl #4
      f8:	71050600 	tstvc	r5, r0, lsl #12
      fc:	01000002 	tsteq	r0, r2
     100:	0092034d 	addseq	r0, r2, sp, asr #6
     104:	00000000 	andeq	r0, r0, r0
     108:	f0070402 			; <UNDEFINED> instruction: 0xf0070402
     10c:	04000002 	streq	r0, [r0], #-2
     110:	0002d201 	andeq	sp, r2, r1, lsl #4
     114:	036a0100 	cmneq	sl, #0, 2
     118:	00c30101 	sbceq	r0, r3, r1, lsl #2
     11c:	84050000 	strhi	r0, [r5], #-0
     120:	01000001 	tsteq	r0, r1
     124:	0092036c 	addseq	r0, r2, ip, ror #6
     128:	05060000 	streq	r0, [r6, #-0]
     12c:	00000271 	andeq	r0, r0, r1, ror r2
     130:	92037501 	andls	r7, r3, #4194304	; 0x400000
     134:	00000000 	andeq	r0, r0, r0
     138:	fd010700 	stc2	7, cr0, [r1, #-0]
     13c:	01000003 	tsteq	r0, r3
     140:	0101038a 	smlabbeq	r1, sl, r3, r0
     144:	01e00104 	mvneq	r0, r4, lsl #2
     148:	a0010000 	andge	r0, r1, r0
     14c:	ea010103 	b	40560 <_HEAP_SIZE+0x20560>
     150:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
     154:	00726461 	rsbseq	r6, r2, r1, ror #8
     158:	9203a001 	andls	sl, r3, #1
     15c:	00000000 	andeq	r0, r0, r0
     160:	03d90104 	bicseq	r0, r9, #4, 2
     164:	60010000 	andvs	r0, r1, r0
     168:	06010102 	streq	r0, [r1], -r2, lsl #2
     16c:	08000001 	stmdaeq	r0, {r0}
     170:	00726461 	rsbseq	r6, r2, r1, ror #8
     174:	92026001 	andls	r6, r2, #1
     178:	00000000 	andeq	r0, r0, r0
     17c:	00bd0104 	adcseq	r0, sp, r4, lsl #2
     180:	ed010000 	stc	0, cr0, [r1, #-0]
     184:	22010102 	andcs	r0, r1, #-2147483648	; 0x80000000
     188:	08000001 	stmdaeq	r0, {r0}
     18c:	00726461 	rsbseq	r6, r2, r1, ror #8
     190:	9202ed01 	andls	lr, r2, #1, 26	; 0x40
     194:	00000000 	andeq	r0, r0, r0
     198:	00a70104 	adceq	r0, r7, r4, lsl #2
     19c:	34010000 	strcc	r0, [r1], #-0
     1a0:	3e010103 	adfccs	f0, f1, f3
     1a4:	08000001 	stmdaeq	r0, {r0}
     1a8:	00726461 	rsbseq	r6, r2, r1, ror #8
     1ac:	92033401 	andls	r3, r3, #16777216	; 0x1000000
     1b0:	00000000 	andeq	r0, r0, r0
     1b4:	01c60109 	biceq	r0, r6, r9, lsl #2
     1b8:	a9010000 	stmdbge	r1, {}	; <UNPREDICTABLE>
     1bc:	014e9801 	cmpeq	lr, r1, lsl #16
     1c0:	014ef400 	cmpeq	lr, r0, lsl #8
     1c4:	00003e00 	andeq	r3, r0, r0, lsl #28
     1c8:	01b50100 			; <UNDEFINED> instruction: 0x01b50100
     1cc:	610a0000 	mrsvs	r0, (UNDEF: 10)
     1d0:	01007264 	tsteq	r0, r4, ror #4
     1d4:	000092a9 	andeq	r9, r0, r9, lsr #5
     1d8:	00005e00 	andeq	r5, r0, r0, lsl #28
     1dc:	656c0b00 	strbvs	r0, [ip, #-2816]!	; 0xfffff500
     1e0:	a901006e 	stmdbge	r1, {r1, r2, r3, r5, r6}
     1e4:	00000092 	muleq	r0, r2, r0
     1e8:	540c5101 	strpl	r5, [ip], #-257	; 0xfffffeff
     1ec:	01000001 	tsteq	r0, r1
     1f0:	0001b5ab 	andeq	fp, r1, fp, lsr #11
     1f4:	650d2000 	strvs	r2, [sp, #-0]
     1f8:	0100646e 	tsteq	r0, lr, ror #8
     1fc:	000092ac 	andeq	r9, r0, ip, lsr #5
     200:	00007c00 	andeq	r7, r0, r0, lsl #24
     204:	042f0e00 	strteq	r0, [pc], #-3584	; 20c <CPU_ARM_CTRL_INT_DIS+0x14c>
     208:	ad010000 	stcge	0, cr0, [r1, #-0]
     20c:	00000092 	muleq	r0, r2, r0
     210:	c70f5001 	strgt	r5, [pc, -r1]
     214:	01000002 	tsteq	r0, r2
     218:	0001baae 	andeq	fp, r1, lr, lsr #21
     21c:	c0cef000 	sbcgt	pc, lr, r0
     220:	4ee81047 	cdpmi	0, 14, cr1, cr8, cr7, {2}
     224:	0d0c0001 	stceq	0, cr0, [ip, #-4]
     228:	11000000 	mrsne	r0, (UNDEF: 0)
     22c:	00000092 	muleq	r0, r2, r0
     230:	01c00412 	biceq	r0, r0, r2, lsl r4
     234:	33130000 	tstcc	r3, #0
     238:	14000000 	strne	r0, [r0], #-0
     23c:	00016f01 	andeq	r6, r1, r1, lsl #30
     240:	01090100 	mrseq	r0, (UNDEF: 25)
     244:	014ef401 	cmpeq	lr, r1, lsl #8
     248:	014f5000 	mrseq	r5, SPSR
     24c:	00008f00 	andeq	r8, r0, r0, lsl #30
     250:	02430100 	subeq	r0, r3, #0, 2
     254:	61150000 	tstvs	r5, r0
     258:	01007264 	tsteq	r0, r4, ror #4
     25c:	00920109 	addseq	r0, r2, r9, lsl #2
     260:	00af0000 	adceq	r0, pc, r0
     264:	6c160000 	ldcvs	0, cr0, [r6], {-0}
     268:	01006e65 	tsteq	r0, r5, ror #28
     26c:	00920109 	addseq	r0, r2, r9, lsl #2
     270:	51010000 	mrspl	r0, (UNDEF: 1)
     274:	00015417 	andeq	r5, r1, r7, lsl r4
     278:	010b0100 	mrseq	r0, (UNDEF: 27)
     27c:	000001b5 			; <UNDEFINED> instruction: 0x000001b5
     280:	6e651820 	cdpvs	8, 6, cr1, cr5, cr0, {1}
     284:	0c010064 	stceq	0, cr0, [r1], {100}	; 0x64
     288:	00009201 	andeq	r9, r0, r1, lsl #4
     28c:	0000cd00 	andeq	ip, r0, r0, lsl #26
     290:	042f1900 	strteq	r1, [pc], #-2304	; 298 <CPU_ARM_CTRL_INT_DIS+0x1d8>
     294:	0d010000 	stceq	0, cr0, [r1, #-0]
     298:	00009201 	andeq	r9, r0, r1, lsl #4
     29c:	1a500100 	bne	14006a4 <__stack+0x1242754>
     2a0:	000002c7 	andeq	r0, r0, r7, asr #5
     2a4:	ba010e01 	blt	43ab0 <_HEAP_SIZE+0x23ab0>
     2a8:	f0000001 			; <UNDEFINED> instruction: 0xf0000001
     2ac:	1047c0cf 	subne	ip, r7, pc, asr #1
     2b0:	00014f44 	andeq	r4, r1, r4, asr #30
     2b4:	00000d0c 	andeq	r0, r0, ip, lsl #26
     2b8:	17011400 	strne	r1, [r1, -r0, lsl #8]
     2bc:	01000002 	tsteq	r0, r2
     2c0:	5001019f 	mulpl	r1, pc, r1	; <UNPREDICTABLE>
     2c4:	ac00014f 	stfges	f0, [r0], {79}	; 0x4f
     2c8:	e000014f 	and	r0, r0, pc, asr #2
     2cc:	01000000 	mrseq	r0, (UNDEF: 0)
     2d0:	000002c1 	andeq	r0, r0, r1, asr #5
     2d4:	72646115 	rsbvc	r6, r4, #1073741829	; 0x40000005
     2d8:	019f0100 	orrseq	r0, pc, r0, lsl #2
     2dc:	00000092 	muleq	r0, r2, r0
     2e0:	00000100 	andeq	r0, r0, r0, lsl #2
     2e4:	6e656c16 	mcrvs	12, 3, r6, cr5, cr6, {0}
     2e8:	019f0100 	orrseq	r0, pc, r0, lsl #2
     2ec:	00000092 	muleq	r0, r2, r0
     2f0:	54175101 	ldrpl	r5, [r7], #-257	; 0xfffffeff
     2f4:	01000001 	tsteq	r0, r1
     2f8:	01b501a1 			; <UNDEFINED> instruction: 0x01b501a1
     2fc:	18200000 	stmdane	r0!, {}	; <UNPREDICTABLE>
     300:	00646e65 	rsbeq	r6, r4, r5, ror #28
     304:	9201a201 	andls	sl, r1, #268435456	; 0x10000000
     308:	1e000000 	cdpne	0, 0, cr0, cr0, cr0, {0}
     30c:	19000001 	stmdbne	r0, {r0}
     310:	0000042f 	andeq	r0, r0, pc, lsr #8
     314:	9201a301 	andls	sl, r1, #67108864	; 0x4000000
     318:	01000000 	mrseq	r0, (UNDEF: 0)
     31c:	02c71a50 	sbceq	r1, r7, #80, 20	; 0x50000
     320:	a4010000 	strge	r0, [r1], #-0
     324:	0001ba01 	andeq	fp, r1, r1, lsl #20
     328:	c0cef000 	sbcgt	pc, lr, r0
     32c:	4fa01047 	svcmi	0x00a01047
     330:	0d0c0001 	stceq	0, cr0, [ip, #-4]
     334:	1b000000 	blne	33c <CPU_ARM_CTRL_INT_DIS+0x27c>
     338:	00031801 	andeq	r1, r3, r1, lsl #16
     33c:	02190100 	andseq	r0, r9, #0, 2
     340:	014fac01 	cmpeq	pc, r1, lsl #24
     344:	01504400 	cmpeq	r0, r0, lsl #8
     348:	00013100 	andeq	r3, r1, r0, lsl #2
     34c:	03930100 	orrseq	r0, r3, #0, 2
     350:	e51c0000 	ldr	r0, [ip, #-0]
     354:	01000000 	mrseq	r0, (UNDEF: 0)
     358:	0092021b 	addseq	r0, r2, fp, lsl r2
     35c:	01510000 	cmpeq	r1, r0
     360:	381c0000 	ldmdacc	ip, {}	; <UNPREDICTABLE>
     364:	01000002 	tsteq	r0, r2
     368:	0092021b 	addseq	r0, r2, fp, lsl r2
     36c:	01640000 	cmneq	r4, r0
     370:	b11c0000 	tstlt	ip, r0
     374:	01000003 	tsteq	r0, r3
     378:	0092021c 	addseq	r0, r2, ip, lsl r2
     37c:	01770000 	cmneq	r7, r0
     380:	f41c0000 			; <UNDEFINED> instruction: 0xf41c0000
     384:	01000003 	tsteq	r0, r3
     388:	0092021c 	addseq	r0, r2, ip, lsl r2
     38c:	01bb0000 			; <UNDEFINED> instruction: 0x01bb0000
     390:	3e190000 	cdpcc	0, 1, cr0, cr9, cr0, {0}
     394:	01000002 	tsteq	r0, r2
     398:	0092021c 	addseq	r0, r2, ip, lsl r2
     39c:	58010000 	stmdapl	r1, {}	; <UNPREDICTABLE>
     3a0:	79615718 	stmdbvc	r1!, {r3, r4, r8, r9, sl, ip, lr}^
     3a4:	021d0100 	andseq	r0, sp, #0, 2
     3a8:	00000092 	muleq	r0, r2, r0
     3ac:	000001df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
     3b0:	0004261c 	andeq	r2, r4, ip, lsl r6
     3b4:	021d0100 	andseq	r0, sp, #0, 2
     3b8:	00000092 	muleq	r0, r2, r0
     3bc:	000001f3 	strdeq	r0, [r0], -r3
     3c0:	74655318 	strbtvc	r5, [r5], #-792	; 0xfffffce8
     3c4:	021d0100 	andseq	r0, sp, #0, 2
     3c8:	00000092 	muleq	r0, r2, r0
     3cc:	00000212 	andeq	r0, r0, r2, lsl r2
     3d0:	0002681c 	andeq	r6, r2, ip, lsl r8
     3d4:	021d0100 	andseq	r0, sp, #0, 2
     3d8:	00000092 	muleq	r0, r2, r0
     3dc:	00000247 	andeq	r0, r0, r7, asr #4
     3e0:	00023119 	andeq	r3, r2, r9, lsl r1
     3e4:	021d0100 	andseq	r0, sp, #0, 2
     3e8:	00000092 	muleq	r0, r2, r0
     3ec:	bc1d5001 	ldclt	0, cr5, [sp], {1}
     3f0:	c000014f 	andgt	r0, r0, pc, asr #2
     3f4:	1c00014f 	stfnes	f0, [r0], {79}	; 0x4f
     3f8:	00000271 	andeq	r0, r0, r1, ror r2
     3fc:	92022301 	andls	r2, r2, #67108864	; 0x4000000
     400:	51000000 	mrspl	r0, (UNDEF: 0)
     404:	00000001 	andeq	r0, r0, r1
     408:	4c011400 	cfstrsmi	mvf1, [r1], {-0}
     40c:	01000004 	tsteq	r0, r4
     410:	440101d5 	strmi	r0, [r1], #-469	; 0xfffffe2b
     414:	64000150 	strvs	r0, [r0], #-336	; 0xfffffeb0
     418:	66000150 			; <UNDEFINED> instruction: 0x66000150
     41c:	01000002 	tsteq	r0, r2
     420:	000003e4 	andeq	r0, r0, r4, ror #7
     424:	00018419 	andeq	r8, r1, r9, lsl r4
     428:	01d70100 	bicseq	r0, r7, r0, lsl #2
     42c:	00000092 	muleq	r0, r2, r0
     430:	481e5401 	ldmdami	lr, {r0, sl, ip, lr}
     434:	4c000150 	stfmis	f0, [r0], {80}	; 0x50
     438:	da000150 	ble	980 <_SUPERVISOR_STACK_SIZE+0x180>
     43c:	1c000003 	stcne	0, cr0, [r0], {3}
     440:	00000271 	andeq	r0, r0, r1, ror r2
     444:	9201db01 	andls	sp, r1, #1024	; 0x400
     448:	86000000 	strhi	r0, [r0], -r0
     44c:	00000002 	andeq	r0, r0, r2
     450:	01505810 	cmpeq	r0, r0, lsl r8
     454:	0002c100 	andeq	ip, r2, r0, lsl #2
     458:	ea1f0000 	b	7c0460 <__stack+0x602510>
     45c:	64000000 	strvs	r0, [r0], #-0
     460:	7c000150 	stfvcs	f0, [r0], {80}	; 0x50
     464:	02000150 	andeq	r0, r0, #80, 2
     468:	0301007d 	movweq	r0, #4221	; 0x107d
     46c:	20000004 	andcs	r0, r0, r4
     470:	000000f9 	strdeq	r0, [r0], -r9
     474:	00000299 	muleq	r0, r9, r2
     478:	58012100 	stmdapl	r1, {r8, sp}
     47c:	01000003 	tsteq	r0, r3
     480:	7c010278 	sfmvc	f0, 4, [r1], {120}	; 0x78
     484:	b4000150 	strlt	r0, [r0], #-336	; 0xfffffeb0
     488:	02000150 	andeq	r0, r0, #80, 2
     48c:	5901007d 	stmdbpl	r1, {r0, r2, r3, r4, r5, r6}
     490:	15000004 	strne	r0, [r0, #-4]
     494:	00726461 	rsbseq	r6, r2, r1, ror #8
     498:	92027801 	andls	r7, r2, #65536	; 0x10000
     49c:	ba000000 	blt	4a4 <_ABORT_STACK_SIZE+0xa4>
     4a0:	16000002 	strne	r0, [r0], -r2
     4a4:	006e656c 	rsbeq	r6, lr, ip, ror #10
     4a8:	92027801 	andls	r7, r2, #65536	; 0x10000
     4ac:	01000000 	mrseq	r0, (UNDEF: 0)
     4b0:	01541751 	cmpeq	r4, r1, asr r7
     4b4:	7a010000 	bvc	404bc <_HEAP_SIZE+0x204bc>
     4b8:	0001b502 	andeq	fp, r1, r2, lsl #10
     4bc:	65182000 	ldrvs	r2, [r8, #-0]
     4c0:	0100646e 	tsteq	r0, lr, ror #8
     4c4:	0092027b 	addseq	r0, r2, fp, ror r2
     4c8:	02d80000 	sbcseq	r0, r8, #0
     4cc:	1b000000 	blne	4d4 <_ABORT_STACK_SIZE+0xd4>
     4d0:	0000d301 	andeq	sp, r0, r1, lsl #6
     4d4:	02a50100 	adceq	r0, r5, #0, 2
     4d8:	0150b401 	cmpeq	r0, r1, lsl #8
     4dc:	01514c00 	cmpeq	r1, r0, lsl #24
     4e0:	0002eb00 	andeq	lr, r2, r0, lsl #22
     4e4:	052b0100 	streq	r0, [fp, #-256]!	; 0xffffff00
     4e8:	e51c0000 	ldr	r0, [ip, #-0]
     4ec:	01000000 	mrseq	r0, (UNDEF: 0)
     4f0:	009202a7 	addseq	r0, r2, r7, lsr #5
     4f4:	030b0000 	movweq	r0, #45056	; 0xb000
     4f8:	381c0000 	ldmdacc	ip, {}	; <UNPREDICTABLE>
     4fc:	01000002 	tsteq	r0, r2
     500:	009202a7 	addseq	r0, r2, r7, lsr #5
     504:	031e0000 	tsteq	lr, #0
     508:	b11c0000 	tstlt	ip, r0
     50c:	01000003 	tsteq	r0, r3
     510:	009202a8 	addseq	r0, r2, r8, lsr #5
     514:	03310000 	teqeq	r1, #0
     518:	f41c0000 			; <UNDEFINED> instruction: 0xf41c0000
     51c:	01000003 	tsteq	r0, r3
     520:	009202a8 	addseq	r0, r2, r8, lsr #5
     524:	03750000 	cmneq	r5, #0
     528:	3e190000 	cdpcc	0, 1, cr0, cr9, cr0, {0}
     52c:	01000002 	tsteq	r0, r2
     530:	009202a8 	addseq	r0, r2, r8, lsr #5
     534:	58010000 	stmdapl	r1, {}	; <UNPREDICTABLE>
     538:	79615718 	stmdbvc	r1!, {r3, r4, r8, r9, sl, ip, lr}^
     53c:	02a90100 	adceq	r0, r9, #0, 2
     540:	00000092 	muleq	r0, r2, r0
     544:	00000399 	muleq	r0, r9, r3
     548:	0004261c 	andeq	r2, r4, ip, lsl r6
     54c:	02a90100 	adceq	r0, r9, #0, 2
     550:	00000092 	muleq	r0, r2, r0
     554:	000003ad 	andeq	r0, r0, sp, lsr #7
     558:	74655318 	strbtvc	r5, [r5], #-792	; 0xfffffce8
     55c:	02a90100 	adceq	r0, r9, #0, 2
     560:	00000092 	muleq	r0, r2, r0
     564:	000003cc 	andeq	r0, r0, ip, asr #7
     568:	0002681c 	andeq	r6, r2, ip, lsl r8
     56c:	02a90100 	adceq	r0, r9, #0, 2
     570:	00000092 	muleq	r0, r2, r0
     574:	00000401 	andeq	r0, r0, r1, lsl #8
     578:	00023119 	andeq	r3, r2, r9, lsl r1
     57c:	02a90100 	adceq	r0, r9, #0, 2
     580:	00000092 	muleq	r0, r2, r0
     584:	c41d5001 	ldrgt	r5, [sp], #-1
     588:	c8000150 	stmdagt	r0, {r4, r6, r8}
     58c:	1c000150 	stfnes	f0, [r0], {80}	; 0x50
     590:	00000271 	andeq	r0, r0, r1, ror r2
     594:	9202af01 	andls	sl, r2, #1, 30
     598:	0b000000 	bleq	5a0 <_ABORT_STACK_SIZE+0x1a0>
     59c:	00000003 	andeq	r0, r0, r3
     5a0:	a2011400 	andge	r1, r1, #0, 8
     5a4:	01000002 	tsteq	r0, r2
     5a8:	4c0101f8 	stfmis	f0, [r1], {248}	; 0xf8
     5ac:	64000151 	strvs	r0, [r0], #-337	; 0xfffffeaf
     5b0:	20000151 	andcs	r0, r0, r1, asr r1
     5b4:	01000004 	tsteq	r0, r4
     5b8:	0000057c 	andeq	r0, r0, ip, ror r5
     5bc:	00018419 	andeq	r8, r1, r9, lsl r4
     5c0:	01fa0100 	mvnseq	r0, r0, lsl #2
     5c4:	00000092 	muleq	r0, r2, r0
     5c8:	541e5301 	ldrpl	r5, [lr], #-769	; 0xfffffcff
     5cc:	58000151 	stmdapl	r0, {r0, r4, r6, r8}
     5d0:	72000151 	andvc	r0, r0, #1073741844	; 0x40000014
     5d4:	1c000005 	stcne	0, cr0, [r0], {5}
     5d8:	00000271 	andeq	r0, r0, r1, ror r2
     5dc:	92020101 	andls	r0, r2, #1073741824	; 0x40000000
     5e0:	40000000 	andmi	r0, r0, r0
     5e4:	00000004 	andeq	r0, r0, r4
     5e8:	01515410 	cmpeq	r1, r0, lsl r4
     5ec:	00045900 	andeq	r5, r4, r0, lsl #18
     5f0:	061f0000 	ldreq	r0, [pc], -r0
     5f4:	64000001 	strvs	r0, [r0], #-1
     5f8:	7c000151 	stfvcs	f0, [r0], {81}	; 0x51
     5fc:	02000151 	andeq	r0, r0, #1073741844	; 0x40000014
     600:	9b01007d 	blls	407fc <_HEAP_SIZE+0x207fc>
     604:	20000005 	andcs	r0, r0, r5
     608:	00000115 	andeq	r0, r0, r5, lsl r1
     60c:	00000453 	andeq	r0, r0, r3, asr r4
     610:	3d012100 	stfccs	f2, [r1, #-0]
     614:	01000001 	tsteq	r0, r1
     618:	7c010304 	stcvc	3, cr0, [r1], {4}
     61c:	b4000151 	strlt	r0, [r0], #-337	; 0xfffffeaf
     620:	02000151 	andeq	r0, r0, #1073741844	; 0x40000014
     624:	f101007d 	setend	le
     628:	15000005 	strne	r0, [r0, #-5]
     62c:	00726461 	rsbseq	r6, r2, r1, ror #8
     630:	92030401 	andls	r0, r3, #16777216	; 0x1000000
     634:	74000000 	strvc	r0, [r0], #-0
     638:	16000004 	strne	r0, [r0], -r4
     63c:	006e656c 	rsbeq	r6, lr, ip, ror #10
     640:	92030401 	andls	r0, r3, #16777216	; 0x1000000
     644:	01000000 	mrseq	r0, (UNDEF: 0)
     648:	01541751 	cmpeq	r4, r1, asr r7
     64c:	06010000 	streq	r0, [r1], -r0
     650:	0001b503 	andeq	fp, r1, r3, lsl #10
     654:	65182000 	ldrvs	r2, [r8, #-0]
     658:	0100646e 	tsteq	r0, lr, ror #8
     65c:	00920307 	addseq	r0, r2, r7, lsl #6
     660:	04920000 	ldreq	r0, [r2], #0
     664:	1f000000 	svcne	0x00000000
     668:	00000122 	andeq	r0, r0, r2, lsr #2
     66c:	000151b4 			; <UNDEFINED> instruction: 0x000151b4
     670:	000151cc 	andeq	r5, r1, ip, asr #3
     674:	01007d02 	tsteq	r0, r2, lsl #26
     678:	00000610 	andeq	r0, r0, r0, lsl r6
     67c:	00013120 	andeq	r3, r1, r0, lsr #2
     680:	0004a500 	andeq	sl, r4, r0, lsl #10
     684:	681f0000 	ldmdavs	pc, {}	; <UNPREDICTABLE>
     688:	cc000000 	stcgt	0, cr0, [r0], {-0}
     68c:	e8000151 	stmda	r0, {r0, r4, r6, r8}
     690:	02000151 	andeq	r0, r0, #1073741844	; 0x40000014
     694:	3e01007d 	mcrcc	0, 0, r0, cr1, cr13, {3}
     698:	22000006 	andcs	r0, r0, #6
     69c:	00000077 	andeq	r0, r0, r7, ror r0
     6a0:	cc1d5301 	ldcgt	3, cr5, [sp], {1}
     6a4:	d0000151 	andle	r0, r0, r1, asr r1
     6a8:	22000151 	andcs	r0, r0, #1073741844	; 0x40000014
     6ac:	00000084 	andeq	r0, r0, r4, lsl #1
     6b0:	00005301 	andeq	r5, r0, r1, lsl #6
     6b4:	0000991f 	andeq	r9, r0, pc, lsl r9
     6b8:	0151e800 	cmpeq	r1, r0, lsl #16
     6bc:	01520400 	cmpeq	r2, r0, lsl #8
     6c0:	007d0200 	rsbseq	r0, sp, r0, lsl #4
     6c4:	00066e01 	andeq	r6, r6, r1, lsl #28
     6c8:	00a82200 	adceq	r2, r8, r0, lsl #4
     6cc:	53010000 	movwpl	r0, #4096	; 0x1000
     6d0:	0151f41d 	cmpeq	r1, sp, lsl r4
     6d4:	0151f800 	cmpeq	r1, r0, lsl #16
     6d8:	00b52300 	adcseq	r2, r5, r0, lsl #6
     6dc:	04c60000 	strbeq	r0, [r6], #0
     6e0:	00000000 	andeq	r0, r0, r0
     6e4:	0000c324 	andeq	ip, r0, r4, lsr #6
     6e8:	01520400 	cmpeq	r2, r0, lsl #8
     6ec:	01521c00 	cmpeq	r2, r0, lsl #24
     6f0:	007d0200 	rsbseq	r0, sp, r0, lsl #4
     6f4:	00ce1f01 	sbceq	r1, lr, r1, lsl #30
     6f8:	521c0000 	andspl	r0, ip, #0
     6fc:	52340001 	eorspl	r0, r4, #1
     700:	7d020001 	stcvc	0, cr0, [r2, #-4]
     704:	069e0100 	ldreq	r0, [lr], r0, lsl #2
     708:	dd200000 	stcle	0, cr0, [r0, #-0]
     70c:	d9000000 	stmdble	r0, {}	; <UNPREDICTABLE>
     710:	00000004 	andeq	r0, r0, r4
     714:	04780121 	ldrbteq	r0, [r8], #-289	; 0xfffffedf
     718:	b8010000 	stmdalt	r1, {}	; <UNPREDICTABLE>
     71c:	52340103 	eorspl	r0, r4, #-1073741824	; 0xc0000000
     720:	526c0001 	rsbpl	r0, ip, #1
     724:	7d020001 	stcvc	0, cr0, [r2, #-4]
     728:	06f40100 	ldrbteq	r0, [r4], r0, lsl #2
     72c:	61150000 	tstvs	r5, r0
     730:	01007264 	tsteq	r0, r4, ror #4
     734:	009203b8 			; <UNDEFINED> instruction: 0x009203b8
     738:	04fa0000 	ldrbteq	r0, [sl], #0
     73c:	6c160000 	ldcvs	0, cr0, [r6], {-0}
     740:	01006e65 	tsteq	r0, r5, ror #28
     744:	009203b8 			; <UNDEFINED> instruction: 0x009203b8
     748:	51010000 	mrspl	r0, (UNDEF: 1)
     74c:	00015417 	andeq	r5, r1, r7, lsl r4
     750:	03ba0100 			; <UNDEFINED> instruction: 0x03ba0100
     754:	000001b5 			; <UNDEFINED> instruction: 0x000001b5
     758:	6e651820 	cdpvs	8, 6, cr1, cr5, cr0, {1}
     75c:	bb010064 	bllt	408f4 <_HEAP_SIZE+0x208f4>
     760:	00009203 	andeq	r9, r0, r3, lsl #4
     764:	00051800 	andeq	r1, r5, r0, lsl #16
     768:	01140000 	tsteq	r4, r0
     76c:	00000246 	andeq	r0, r0, r6, asr #4
     770:	0103e401 	tsteq	r3, r1, lsl #8
     774:	0001526c 	andeq	r5, r1, ip, ror #4
     778:	00015308 	andeq	r5, r1, r8, lsl #6
     77c:	0000052b 	andeq	r0, r0, fp, lsr #10
     780:	00078901 	andeq	r8, r7, r1, lsl #18
     784:	042f1c00 	strteq	r1, [pc], #-3072	; 78c <_ABORT_STACK_SIZE+0x38c>
     788:	e6010000 	str	r0, [r1], -r0
     78c:	00009203 	andeq	r9, r0, r3, lsl #4
     790:	00054b00 	andeq	r4, r5, r0, lsl #22
     794:	527c1000 	rsbspl	r1, ip, #0
     798:	0d0c0001 	stceq	0, cr0, [ip, #-4]
     79c:	90100000 	andsls	r0, r0, r0
     7a0:	0c000152 	stfeqs	f0, [r0], {82}	; 0x52
     7a4:	1000000d 	andne	r0, r0, sp
     7a8:	000152a8 	andeq	r5, r1, r8, lsr #5
     7ac:	00000d24 	andeq	r0, r0, r4, lsr #26
     7b0:	0152b825 	cmpeq	r2, r5, lsr #16
     7b4:	000d2400 	andeq	r2, sp, r0, lsl #8
     7b8:	00074f00 	andeq	r4, r7, r0, lsl #30
     7bc:	51012600 	tstpl	r1, r0, lsl #12
     7c0:	01210a03 	teqeq	r1, r3, lsl #20
     7c4:	52c82500 	sbcpl	r2, r8, #0, 10
     7c8:	0d240001 	stceq	0, cr0, [r4, #-4]!
     7cc:	07640000 	strbeq	r0, [r4, -r0]!
     7d0:	01260000 	teqeq	r6, r0
     7d4:	210a0351 	tstcs	sl, r1, asr r3
     7d8:	d4100001 	ldrle	r0, [r0], #-1
     7dc:	0c000152 	stfeqs	f0, [r0], {82}	; 0x52
     7e0:	1000000d 	andne	r0, r0, sp
     7e4:	000152e4 	andeq	r5, r1, r4, ror #5
     7e8:	00000d24 	andeq	r0, r0, r4, lsr #26
     7ec:	0152f010 	cmpeq	r2, r0, lsl r0
     7f0:	000d0c00 	andeq	r0, sp, r0, lsl #24
     7f4:	53001000 	movwpl	r1, #0
     7f8:	0d240001 	stceq	0, cr0, [r4, #-4]!
     7fc:	21000000 	mrscs	r0, (UNDEF: 0)
     800:	00015e01 	andeq	r5, r1, r1, lsl #28
     804:	01540100 	cmpeq	r4, r0, lsl #2
     808:	01530801 	cmpeq	r3, r1, lsl #16
     80c:	01532400 	cmpeq	r3, r0, lsl #8
     810:	007d0200 	rsbseq	r0, sp, r0, lsl #4
     814:	0007e701 	andeq	lr, r7, r1, lsl #14
     818:	00682700 	rsbeq	r2, r8, r0, lsl #14
     81c:	53080000 	movwpl	r0, #32768	; 0x8000
     820:	53200001 	teqpl	r0, #1
     824:	56010001 	strpl	r0, [r1], -r1
     828:	0007dc01 	andeq	sp, r7, r1, lsl #24
     82c:	53081d00 	movwpl	r1, #36096	; 0x8d00
     830:	53200001 	teqpl	r0, #1
     834:	77230001 	strvc	r0, [r3, -r1]!
     838:	9d000000 	stcls	0, cr0, [r0, #-0]
     83c:	1d000005 	stcne	0, cr0, [r0, #-20]	; 0xffffffec
     840:	00015308 	andeq	r5, r1, r8, lsl #6
     844:	0001530c 	andeq	r5, r1, ip, lsl #6
     848:	00008422 	andeq	r8, r0, r2, lsr #8
     84c:	00530100 	subseq	r0, r3, r0, lsl #2
     850:	24280000 	strtcs	r0, [r8], #-0
     854:	01000153 	tsteq	r0, r3, asr r1
     858:	000006f4 	strdeq	r0, [r0], -r4
     85c:	96010900 	strls	r0, [r1], -r0, lsl #18
     860:	01000000 	mrseq	r0, (UNDEF: 0)
     864:	5324015c 	teqpl	r4, #92, 2
     868:	53340001 	teqpl	r4, #1
     86c:	05b00001 	ldreq	r0, [r0, #1]!
     870:	15010000 	strne	r0, [r1, #-0]
     874:	10000008 	andne	r0, r0, r8
     878:	0001532c 	andeq	r5, r1, ip, lsr #6
     87c:	00000393 	muleq	r0, r3, r3
     880:	01533428 	cmpeq	r3, r8, lsr #8
     884:	06f40100 	ldrbteq	r0, [r4], r0, lsl #2
     888:	14000000 	strne	r0, [r0], #-0
     88c:	00028f01 	andeq	r8, r2, r1, lsl #30
     890:	04130100 	ldreq	r0, [r3], #-256	; 0xffffff00
     894:	01533401 	cmpeq	r3, r1, lsl #8
     898:	01538000 	cmpeq	r3, r0
     89c:	0005d000 	andeq	sp, r5, r0
     8a0:	08720100 	ldmdaeq	r2!, {r8}^
     8a4:	2f1c0000 	svccs	0x001c0000
     8a8:	01000004 	tsteq	r0, r4
     8ac:	00920415 	addseq	r0, r2, r5, lsl r4
     8b0:	05f00000 	ldrbeq	r0, [r0, #0]!
     8b4:	48250000 	stmdami	r5!, {}	; <UNPREDICTABLE>
     8b8:	24000153 	strcs	r0, [r0], #-339	; 0xfffffead
     8bc:	5500000d 	strpl	r0, [r0, #-13]
     8c0:	26000008 	strcs	r0, [r0], -r8
     8c4:	0a035101 	beq	d4cd0 <_HEAP_SIZE+0xb4cd0>
     8c8:	1000ffff 	strdne	pc, [r0], -pc	; <UNPREDICTABLE>
     8cc:	00015354 	andeq	r5, r1, r4, asr r3
     8d0:	00000d0c 	andeq	r0, r0, ip, lsl #26
     8d4:	01536c10 	cmpeq	r3, r0, lsl ip
     8d8:	000d0c00 	andeq	r0, sp, r0, lsl #24
     8dc:	53802800 	orrpl	r2, r0, #0, 16
     8e0:	24010001 	strcs	r0, [r1], #-1
     8e4:	0000000d 	andeq	r0, r0, sp
     8e8:	04140114 	ldreq	r0, [r4], #-276	; 0xfffffeec
     8ec:	65010000 	strvs	r0, [r1, #-0]
     8f0:	53800101 	orrpl	r0, r0, #1073741824	; 0x40000000
     8f4:	53a40001 			; <UNDEFINED> instruction: 0x53a40001
     8f8:	060e0001 	streq	r0, [lr], -r1
     8fc:	d0010000 	andle	r0, r1, r0
     900:	27000008 	strcs	r0, [r0, -r8]
     904:	00000099 	muleq	r0, r9, r0
     908:	00015388 	andeq	r5, r1, r8, lsl #7
     90c:	000153a4 	andeq	r5, r1, r4, lsr #7
     910:	c6016801 	strgt	r6, [r1], -r1, lsl #16
     914:	1d000008 	stcne	0, cr0, [r0, #-32]	; 0xffffffe0
     918:	00015388 	andeq	r5, r1, r8, lsl #7
     91c:	000153a4 	andeq	r5, r1, r4, lsr #7
     920:	0000a822 	andeq	sl, r0, r2, lsr #16
     924:	1d530100 	ldfnee	f0, [r3, #-0]
     928:	00015394 	muleq	r1, r4, r3
     92c:	00015398 	muleq	r1, r8, r3
     930:	0000b523 	andeq	fp, r0, r3, lsr #10
     934:	00062e00 	andeq	r2, r6, r0, lsl #28
     938:	00000000 	andeq	r0, r0, r0
     93c:	01538810 	cmpeq	r3, r0, lsl r8
     940:	00081500 	andeq	r1, r8, r0, lsl #10
     944:	01090000 	mrseq	r0, (UNDEF: 9)
     948:	000000ed 	andeq	r0, r0, sp, ror #1
     94c:	a4016d01 	strge	r6, [r1], #-3329	; 0xfffff2ff
     950:	b4000153 	strlt	r0, [r0], #-339	; 0xfffffead
     954:	41000153 	tstmi	r0, r3, asr r1
     958:	01000006 	tsteq	r0, r6
     95c:	000008fe 	strdeq	r0, [r0], -lr
     960:	0153ac10 	cmpeq	r3, r0, lsl ip
     964:	00081500 	andeq	r1, r8, r0, lsl #10
     968:	53b42800 			; <UNDEFINED> instruction: 0x53b42800
     96c:	2b010001 	blcs	40978 <_HEAP_SIZE+0x20978>
     970:	00000005 	andeq	r0, r0, r5
     974:	00ff0114 	rscseq	r0, pc, r4, lsl r1	; <UNPREDICTABLE>
     978:	39010000 	stmdbcc	r1, {}	; <UNPREDICTABLE>
     97c:	53b40104 			; <UNDEFINED> instruction: 0x53b40104
     980:	53e40001 	mvnpl	r0, #1
     984:	06610001 	strbteq	r0, [r1], -r1
     988:	46010000 	strmi	r0, [r1], -r0
     98c:	19000009 	stmdbne	r0, {r0, r3}
     990:	0000042f 	andeq	r0, r0, pc, lsr #8
     994:	92043b01 	andls	r3, r4, #1024	; 0x400
     998:	01000000 	mrseq	r0, (UNDEF: 0)
     99c:	53c82550 	bicpl	r2, r8, #80, 10	; 0x14000000
     9a0:	0d240001 	stceq	0, cr0, [r4, #-4]!
     9a4:	093c0000 	ldmdbeq	ip!, {}	; <UNPREDICTABLE>
     9a8:	01260000 	teqeq	r6, r0
     9ac:	ff0a0351 			; <UNDEFINED> instruction: 0xff0a0351
     9b0:	d41000ff 	ldrle	r0, [r0], #-255	; 0xffffff01
     9b4:	0c000153 	stfeqs	f0, [r0], {83}	; 0x53
     9b8:	0000000d 	andeq	r0, r0, sp
     9bc:	04370121 	ldrteq	r0, [r7], #-289	; 0xfffffedf
     9c0:	76010000 	strvc	r0, [r1], -r0
     9c4:	53e40101 	mvnpl	r0, #1073741824	; 0x40000000
     9c8:	53fc0001 	mvnspl	r0, #1
     9cc:	7d020001 	stcvc	0, cr0, [r2, #-4]
     9d0:	097b0100 	ldmdbeq	fp!, {r8}^
     9d4:	c3290000 	teqgt	r9, #0
     9d8:	e4000000 	str	r0, [r0], #-0
     9dc:	f8000153 			; <UNDEFINED> instruction: 0xf8000153
     9e0:	01000153 	tsteq	r0, r3, asr r1
     9e4:	fc280178 	stc2	1, cr0, [r8], #-480	; 0xfffffe20
     9e8:	01000153 	tsteq	r0, r3, asr r1
     9ec:	000008fe 	strdeq	r0, [r0], -lr
     9f0:	9c010900 	stcls	9, cr0, [r1], {-0}
     9f4:	01000003 	tsteq	r0, r3
     9f8:	53fc017e 	mvnspl	r0, #-2147483617	; 0x8000001f
     9fc:	540c0001 	strpl	r0, [ip], #-1
     a00:	06810001 	streq	r0, [r1], r1
     a04:	a9010000 	stmdbge	r1, {}	; <UNPREDICTABLE>
     a08:	10000009 	andne	r0, r0, r9
     a0c:	00015404 	andeq	r5, r1, r4, lsl #8
     a10:	000002c1 	andeq	r0, r0, r1, asr #5
     a14:	01540c28 	cmpeq	r4, r8, lsr #24
     a18:	08fe0100 	ldmeq	lr!, {r8}^
     a1c:	14000000 	strne	r0, [r0], #-0
     a20:	00037401 	andeq	r7, r3, r1, lsl #8
     a24:	045a0100 	ldrbeq	r0, [sl], #-256	; 0xffffff00
     a28:	01540c01 	cmpeq	r4, r1, lsl #24
     a2c:	01542800 	cmpeq	r4, r0, lsl #16
     a30:	0006a100 	andeq	sl, r6, r0, lsl #2
     a34:	09e60100 	stmibeq	r6!, {r8}^
     a38:	61150000 	tstvs	r5, r0
     a3c:	01007264 	tsteq	r0, r4, ror #4
     a40:	0092045a 	addseq	r0, r2, sl, asr r4
     a44:	06c10000 	strbeq	r0, [r1], r0
     a48:	202a0000 	eorcs	r0, sl, r0
     a4c:	24000154 	strcs	r0, [r0], #-340	; 0xfffffeac
     a50:	2600000d 	strcs	r0, [r0], -sp
     a54:	f3035101 	vrhadd.u8	d5, d3, d1
     a58:	00005001 	andeq	r5, r0, r1
     a5c:	02760121 	rsbseq	r0, r6, #1073741832	; 0x40000008
     a60:	89010000 	stmdbhi	r1, {}	; <UNPREDICTABLE>
     a64:	54280101 	strtpl	r0, [r8], #-257	; 0xfffffeff
     a68:	54400001 	strbpl	r0, [r0], #-1
     a6c:	7d020001 	stcvc	0, cr0, [r2, #-4]
     a70:	0a350100 	beq	d40e78 <__stack+0xb82f28>
     a74:	61160000 	tstvs	r6, r0
     a78:	01007264 	tsteq	r0, r4, ror #4
     a7c:	00920189 	addseq	r0, r2, r9, lsl #3
     a80:	50010000 	andpl	r0, r1, r0
     a84:	0000ce27 	andeq	ip, r0, r7, lsr #28
     a88:	01542800 	cmpeq	r4, r0, lsl #16
     a8c:	01543c00 	cmpeq	r4, r0, lsl #24
     a90:	018b0100 	orreq	r0, fp, r0, lsl #2
     a94:	00000a2a 	andeq	r0, r0, sl, lsr #20
     a98:	0000dd2b 	andeq	sp, r0, fp, lsr #26
     a9c:	00500100 	subseq	r0, r0, r0, lsl #2
     aa0:	01544028 	cmpeq	r4, r8, lsr #32
     aa4:	09a90100 	stmibeq	r9!, {r8}
     aa8:	2c000000 	stccs	0, cr0, [r0], {-0}
     aac:	00045f01 	andeq	r5, r4, r1, lsl #30
     ab0:	01930100 	orrseq	r0, r3, r0, lsl #2
     ab4:	00015440 	andeq	r5, r1, r0, asr #8
     ab8:	00015458 	andeq	r5, r1, r8, asr r4
     abc:	01007d02 	tsteq	r0, r2, lsl #26
     ac0:	00000a81 	andeq	r0, r0, r1, lsl #21
     ac4:	7264610b 	rsbvc	r6, r4, #-1073741822	; 0xc0000002
     ac8:	92930100 	addsls	r0, r3, #0, 2
     acc:	01000000 	mrseq	r0, (UNDEF: 0)
     ad0:	00ea2d50 	rsceq	r2, sl, r0, asr sp
     ad4:	54400000 	strbpl	r0, [r0], #-0
     ad8:	54540001 	ldrbpl	r0, [r4], #-1
     adc:	95010001 	strls	r0, [r1, #-1]
     ae0:	00000a76 	andeq	r0, r0, r6, ror sl
     ae4:	0000f92b 	andeq	pc, r0, fp, lsr #18
     ae8:	00500100 	subseq	r0, r0, r0, lsl #2
     aec:	01545828 	cmpeq	r4, r8, lsr #16
     af0:	09a90100 	stmibeq	r9!, {r8}
     af4:	14000000 	strne	r0, [r0], #-0
     af8:	0002fd01 	andeq	pc, r2, r1, lsl #26
     afc:	04720100 	ldrbteq	r0, [r2], #-256	; 0xffffff00
     b00:	01545801 	cmpeq	r4, r1, lsl #16
     b04:	0154a800 	cmpeq	r4, r0, lsl #16
     b08:	0006ed00 	andeq	lr, r6, r0, lsl #26
     b0c:	0b010100 	bleq	40f14 <_HEAP_SIZE+0x20f14>
     b10:	61150000 	tstvs	r5, r0
     b14:	01007264 	tsteq	r0, r4, ror #4
     b18:	00920472 	addseq	r0, r2, r2, ror r4
     b1c:	070d0000 	streq	r0, [sp, -r0]
     b20:	6c150000 	ldcvs	0, cr0, [r5], {-0}
     b24:	01006e65 	tsteq	r0, r5, ror #28
     b28:	00920472 	addseq	r0, r2, r2, ror r4
     b2c:	072b0000 	streq	r0, [fp, -r0]!
     b30:	54170000 	ldrpl	r0, [r7], #-0
     b34:	01000001 	tsteq	r0, r1
     b38:	01b50474 			; <UNDEFINED> instruction: 0x01b50474
     b3c:	18200000 	stmdane	r0!, {}	; <UNPREDICTABLE>
     b40:	00646e65 	rsbeq	r6, r4, r5, ror #28
     b44:	92047501 	andls	r7, r4, #4194304	; 0x400000
     b48:	4c000000 	stcmi	0, cr0, [r0], {-0}
     b4c:	19000007 	stmdbne	r0, {r0, r1, r2}
     b50:	0000042f 	andeq	r0, r0, pc, lsr #8
     b54:	92047601 	andls	r7, r4, #1048576	; 0x100000
     b58:	01000000 	mrseq	r0, (UNDEF: 0)
     b5c:	02c71a50 	sbceq	r1, r7, #80, 20	; 0x50000
     b60:	77010000 	strvc	r0, [r1, -r0]
     b64:	0001ba04 	andeq	fp, r1, r4, lsl #20
     b68:	c0cef000 	sbcgt	pc, lr, r0
     b6c:	54981047 	ldrpl	r1, [r8], #71	; 0x47
     b70:	0d0c0001 	stceq	0, cr0, [ip, #-4]
     b74:	14000000 	strne	r0, [r0], #-0
     b78:	0002b601 	andeq	fp, r2, r1, lsl #12
     b7c:	04a00100 	strteq	r0, [r0], #256	; 0x100
     b80:	0154a801 	cmpeq	r4, r1, lsl #16
     b84:	0154d800 	cmpeq	r4, r0, lsl #16
     b88:	00075f00 	andeq	r5, r7, r0, lsl #30
     b8c:	0b490100 	bleq	1240f94 <__stack+0x1083044>
     b90:	2f190000 	svccs	0x00190000
     b94:	01000004 	tsteq	r0, r4
     b98:	009204a2 	addseq	r0, r2, r2, lsr #9
     b9c:	50010000 	andpl	r0, r1, r0
     ba0:	0154bc25 	cmpeq	r4, r5, lsr #24
     ba4:	000d2400 	andeq	r2, sp, r0, lsl #8
     ba8:	000b3f00 	andeq	r3, fp, r0, lsl #30
     bac:	51012600 	tstpl	r1, r0, lsl #12
     bb0:	ffff0a03 			; <UNDEFINED> instruction: 0xffff0a03
     bb4:	54c81000 	strbpl	r1, [r8], #0
     bb8:	0d0c0001 	stceq	0, cr0, [ip, #-4]
     bbc:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
     bc0:	00025801 	andeq	r5, r2, r1, lsl #16
     bc4:	01df0100 	bicseq	r0, pc, r0, lsl #2
     bc8:	000154d8 	ldrdeq	r5, [r1], -r8
     bcc:	000154e8 	andeq	r5, r1, r8, ror #9
     bd0:	0000077f 	andeq	r0, r0, pc, ror r7
     bd4:	000b7701 	andeq	r7, fp, r1, lsl #14
     bd8:	54e01000 	strbtpl	r1, [r0], #0
     bdc:	04590001 	ldrbeq	r0, [r9], #-1
     be0:	e8280000 	stmda	r8!, {}	; <UNPREDICTABLE>
     be4:	01000154 	tsteq	r0, r4, asr r1
     be8:	00000b01 	andeq	r0, r0, r1, lsl #22
     bec:	2f011400 	svccs	0x00011400
     bf0:	01000003 	tsteq	r0, r3
     bf4:	e80104c1 	stmda	r1, {r0, r6, r7, sl}
     bf8:	04000154 	streq	r0, [r0], #-340	; 0xfffffeac
     bfc:	9f000155 	svcls	0x00000155
     c00:	01000007 	tsteq	r0, r7
     c04:	00000bb4 			; <UNDEFINED> instruction: 0x00000bb4
     c08:	72646115 	rsbvc	r6, r4, #1073741829	; 0x40000005
     c0c:	04c10100 	strbeq	r0, [r1], #256	; 0x100
     c10:	00000092 	muleq	r0, r2, r0
     c14:	000007bf 			; <UNDEFINED> instruction: 0x000007bf
     c18:	0154fc2a 	cmpeq	r4, sl, lsr #24
     c1c:	000d2400 	andeq	r2, sp, r0, lsl #8
     c20:	51012600 	tstpl	r1, r0, lsl #12
     c24:	5001f303 	andpl	pc, r1, r3, lsl #6
     c28:	012c0000 	teqeq	ip, r0
     c2c:	000003c5 	andeq	r0, r0, r5, asr #7
     c30:	0401f401 	streq	pc, [r1], #-1025	; 0xfffffbff
     c34:	1c000155 	stfnes	f0, [r0], {85}	; 0x55
     c38:	02000155 	andeq	r0, r0, #1073741845	; 0x40000015
     c3c:	0001007d 	andeq	r0, r1, sp, ror r0
     c40:	0b00000c 	bleq	c78 <_SUPERVISOR_STACK_SIZE+0x478>
     c44:	00726461 	rsbseq	r6, r2, r1, ror #8
     c48:	0092f401 	addseq	pc, r2, r1, lsl #8
     c4c:	50010000 	andpl	r0, r1, r0
     c50:	0001062d 	andeq	r0, r1, sp, lsr #12
     c54:	01550400 	cmpeq	r5, r0, lsl #8
     c58:	01551800 	cmpeq	r5, r0, lsl #16
     c5c:	f5f60100 			; <UNDEFINED> instruction: 0xf5f60100
     c60:	2b00000b 	blcs	c94 <_SUPERVISOR_STACK_SIZE+0x494>
     c64:	00000115 	andeq	r0, r0, r5, lsl r1
     c68:	28005001 	stmdacs	r0, {r0, ip, lr}
     c6c:	0001551c 	andeq	r5, r1, ip, lsl r5
     c70:	000b7701 	andeq	r7, fp, r1, lsl #14
     c74:	01140000 	tsteq	r4, r0
     c78:	0000018c 	andeq	r0, r0, ip, lsl #3
     c7c:	0104d901 	tsteq	r4, r1, lsl #18
     c80:	0001551c 	andeq	r5, r1, ip, lsl r5
     c84:	0001556c 	andeq	r5, r1, ip, ror #10
     c88:	000007eb 	andeq	r0, r0, fp, ror #15
     c8c:	000c8001 	andeq	r8, ip, r1
     c90:	64611500 	strbtvs	r1, [r1], #-1280	; 0xfffffb00
     c94:	d9010072 	stmdble	r1, {r1, r4, r5, r6}
     c98:	00009204 	andeq	r9, r0, r4, lsl #4
     c9c:	00080b00 	andeq	r0, r8, r0, lsl #22
     ca0:	656c1500 	strbvs	r1, [ip, #-1280]!	; 0xfffffb00
     ca4:	d901006e 	stmdble	r1, {r1, r2, r3, r5, r6}
     ca8:	00009204 	andeq	r9, r0, r4, lsl #4
     cac:	00082900 	andeq	r2, r8, r0, lsl #18
     cb0:	01541700 	cmpeq	r4, r0, lsl #14
     cb4:	db010000 	blle	40cbc <_HEAP_SIZE+0x20cbc>
     cb8:	0001b504 	andeq	fp, r1, r4, lsl #10
     cbc:	65182000 	ldrvs	r2, [r8, #-0]
     cc0:	0100646e 	tsteq	r0, lr, ror #8
     cc4:	009204dc 			; <UNDEFINED> instruction: 0x009204dc
     cc8:	084a0000 	stmdaeq	sl, {}^	; <UNPREDICTABLE>
     ccc:	2f190000 	svccs	0x00190000
     cd0:	01000004 	tsteq	r0, r4
     cd4:	009204dd 			; <UNDEFINED> instruction: 0x009204dd
     cd8:	50010000 	andpl	r0, r1, r0
     cdc:	0002c71a 	andeq	ip, r2, sl, lsl r7
     ce0:	04de0100 	ldrbeq	r0, [lr], #256	; 0x100
     ce4:	000001ba 			; <UNDEFINED> instruction: 0x000001ba
     ce8:	47c0cff0 			; <UNDEFINED> instruction: 0x47c0cff0
     cec:	01555c10 	cmpeq	r5, r0, lsl ip
     cf0:	000d0c00 	andeq	r0, sp, r0, lsl #24
     cf4:	01140000 	tsteq	r4, r0
     cf8:	00000115 	andeq	r0, r0, r5, lsl r1
     cfc:	01050701 	tsteq	r5, r1, lsl #14
     d00:	0001556c 	andeq	r5, r1, ip, ror #10
     d04:	00015588 	andeq	r5, r1, r8, lsl #11
     d08:	0000085d 	andeq	r0, r0, sp, asr r8
     d0c:	000cbd01 	andeq	fp, ip, r1, lsl #26
     d10:	64611500 	strbtvs	r1, [r1], #-1280	; 0xfffffb00
     d14:	07010072 	smlsdxeq	r1, r2, r0, r0
     d18:	00009205 	andeq	r9, r0, r5, lsl #4
     d1c:	00087d00 	andeq	r7, r8, r0, lsl #26
     d20:	55802a00 	strpl	r2, [r0, #2560]	; 0xa00
     d24:	0d240001 	stceq	0, cr0, [r4, #-4]!
     d28:	01260000 	teqeq	r6, r0
     d2c:	01f30351 	mvnseq	r0, r1, asr r3
     d30:	21000050 	qaddcs	r0, r0, r0
     d34:	00034401 	andeq	r4, r3, r1, lsl #8
     d38:	01430100 	mrseq	r0, (UNDEF: 83)
     d3c:	01558801 	cmpeq	r5, r1, lsl #16
     d40:	0155a000 	cmpeq	r5, r0
     d44:	007d0200 	rsbseq	r0, sp, r0, lsl #4
     d48:	000d0c01 	andeq	r0, sp, r1, lsl #24
     d4c:	64611600 	strbtvs	r1, [r1], #-1536	; 0xfffffa00
     d50:	43010072 	movwmi	r0, #4210	; 0x1072
     d54:	00009201 	andeq	r9, r0, r1, lsl #4
     d58:	27500100 	ldrbcs	r0, [r0, -r0, lsl #2]
     d5c:	00000122 	andeq	r0, r0, r2, lsr #2
     d60:	00015588 	andeq	r5, r1, r8, lsl #11
     d64:	0001559c 	muleq	r1, ip, r5
     d68:	01014501 	tsteq	r1, r1, lsl #10
     d6c:	2b00000d 	blcs	da8 <_SUPERVISOR_STACK_SIZE+0x5a8>
     d70:	00000131 	andeq	r0, r0, r1, lsr r1
     d74:	28005001 	stmdacs	r0, {r0, ip, lr}
     d78:	000155a0 	andeq	r5, r1, r0, lsr #11
     d7c:	000c8001 	andeq	r8, ip, r1
     d80:	012e0000 	teqeq	lr, r0
     d84:	0000020e 	andeq	r0, r0, lr, lsl #4
     d88:	3301e903 	movwcc	lr, #6403	; 0x1903
     d8c:	01000000 	mrseq	r0, (UNDEF: 0)
     d90:	00000d24 	andeq	r0, r0, r4, lsr #26
     d94:	0000332f 	andeq	r3, r0, pc, lsr #6
     d98:	01300000 	teqeq	r0, r0
     d9c:	000001b0 			; <UNDEFINED> instruction: 0x000001b0
     da0:	0101ed03 	tsteq	r1, r3, lsl #26
     da4:	0000332f 	andeq	r3, r0, pc, lsr #6
     da8:	00332f00 	eorseq	r2, r3, r0, lsl #30
     dac:	00000000 	andeq	r0, r0, r0
     db0:	000004c2 	andeq	r0, r0, r2, asr #9
     db4:	03340002 	teqeq	r4, #2
     db8:	01040000 	mrseq	r0, (UNDEF: 4)
     dbc:	00000000 	andeq	r0, r0, r0
     dc0:	0004c601 	andeq	ip, r4, r1, lsl #12
     dc4:	00001200 	andeq	r1, r0, r0, lsl #4
     dc8:	0155a000 	cmpeq	r5, r0
     dcc:	0156a000 	cmpeq	r6, r0
     dd0:	00030e00 	andeq	r0, r3, r0, lsl #28
     dd4:	38750200 	ldmdacc	r5!, {r9}^
     dd8:	2f5a0200 	svccs	0x005a0200
     ddc:	03000000 	movweq	r0, #0
     de0:	01a20801 			; <UNDEFINED> instruction: 0x01a20801
     de4:	75020000 	strvc	r0, [r2, #-0]
     de8:	02003631 	andeq	r3, r0, #51380224	; 0x3100000
     dec:	0000415b 	andeq	r4, r0, fp, asr r1
     df0:	07020300 	streq	r0, [r2, -r0, lsl #6]
     df4:	000001fb 	strdeq	r0, [r0], -fp
     df8:	32337502 	eorscc	r7, r3, #8388608	; 0x800000
     dfc:	535c0200 	cmppl	ip, #0, 4
     e00:	03000000 	movweq	r0, #0
     e04:	02eb0704 	rsceq	r0, fp, #4, 14	; 0x100000
     e08:	08030000 	stmdaeq	r3, {}	; <UNPREDICTABLE>
     e0c:	0002e607 	andeq	lr, r2, r7, lsl #12
     e10:	08010300 	stmdaeq	r1, {r8, r9}
     e14:	000001ab 	andeq	r0, r0, fp, lsr #3
     e18:	bb050203 	bllt	14162c <_HEAP_SIZE+0x12162c>
     e1c:	03000003 	movweq	r0, #3
     e20:	03930504 	orrseq	r0, r3, #4, 10	; 0x1000000
     e24:	08030000 	stmdaeq	r3, {}	; <UNPREDICTABLE>
     e28:	00038e05 	andeq	r8, r3, r5, lsl #28
     e2c:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
     e30:	00746e69 	rsbseq	r6, r4, r9, ror #28
     e34:	05200105 	streq	r0, [r0, #-261]!	; 0xfffffefb
     e38:	6d010000 	stcvs	0, cr0, [r1, #-0]
     e3c:	00360101 	eorseq	r0, r6, r1, lsl #2
     e40:	a4010000 	strge	r0, [r1], #-0
     e44:	06000000 	streq	r0, [r0], -r0
     e48:	0000049d 	muleq	r0, sp, r4
     e4c:	36016d01 	strcc	r6, [r1], -r1, lsl #26
     e50:	00000000 	andeq	r0, r0, r0
     e54:	05310107 	ldreq	r0, [r1, #-263]!	; 0xfffffef9
     e58:	c5010000 	strgt	r0, [r1, #-0]
     e5c:	00c90101 	sbceq	r0, r9, r1, lsl #2
     e60:	15080000 	strne	r0, [r8, #-0]
     e64:	01000005 	tsteq	r0, r5
     e68:	000048c5 	andeq	r4, r0, r5, asr #17
     e6c:	06c60800 	strbeq	r0, [r6], r0, lsl #16
     e70:	c5010000 	strgt	r0, [r1, #-0]
     e74:	00000036 	andeq	r0, r0, r6, lsr r0
     e78:	aa010900 	bge	43280 <_HEAP_SIZE+0x23280>
     e7c:	01000004 	tsteq	r0, r4
     e80:	0036017e 	eorseq	r0, r6, lr, ror r1
     e84:	e7010000 	str	r0, [r1, -r0]
     e88:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
     e8c:	00000839 	andeq	r0, r0, r9, lsr r8
     e90:	00487e01 	subeq	r7, r8, r1, lsl #28
     e94:	05000000 	streq	r0, [r0, #-0]
     e98:	0004f901 	andeq	pc, r4, r1, lsl #18
     e9c:	017e0100 	cmneq	lr, r0, lsl #2
     ea0:	00004801 	andeq	r4, r0, r1, lsl #16
     ea4:	011f0100 	tsteq	pc, r0, lsl #2
     ea8:	9d060000 	stcls	0, cr0, [r6, #-0]
     eac:	01000004 	tsteq	r0, r4
     eb0:	0048017e 	subeq	r0, r8, lr, ror r1
     eb4:	f20a0000 	vhadd.s8	d0, d10, d0
     eb8:	01000004 	tsteq	r0, r4
     ebc:	00360180 	eorseq	r0, r6, r0, lsl #3
     ec0:	b30a0000 	movwlt	r0, #40960	; 0xa000
     ec4:	01000004 	tsteq	r0, r4
     ec8:	00360181 	eorseq	r0, r6, r1, lsl #3
     ecc:	07000000 	streq	r0, [r0, -r0]
     ed0:	0001b001 	andeq	fp, r1, r1
     ed4:	01dd0100 	bicseq	r0, sp, r0, lsl #2
     ed8:	00014401 	andeq	r4, r1, r1, lsl #8
     edc:	05150800 	ldreq	r0, [r5, #-2048]	; 0xfffff800
     ee0:	dd010000 	stcle	0, cr0, [r1, #-0]
     ee4:	00000048 	andeq	r0, r0, r8, asr #32
     ee8:	0006c608 	andeq	ip, r6, r8, lsl #12
     eec:	48dd0100 	ldmmi	sp, {r8}^
     ef0:	00000000 	andeq	r0, r0, r0
     ef4:	020e0109 	andeq	r0, lr, #1073741826	; 0x40000002
     ef8:	95010000 	strls	r0, [r1, #-0]
     efc:	00004801 	andeq	r4, r0, r1, lsl #16
     f00:	01620100 	cmneq	r2, r0, lsl #2
     f04:	39080000 	stmdbcc	r8, {}	; <UNPREDICTABLE>
     f08:	01000008 	tsteq	r0, r8
     f0c:	00004895 	muleq	r0, r5, r8
     f10:	010b0000 	mrseq	r0, (UNDEF: 11)
     f14:	000004a2 	andeq	r0, r0, r2, lsr #9
     f18:	25016701 	strcs	r6, [r1, #-1793]	; 0xfffff8ff
     f1c:	a0000000 	andge	r0, r0, r0
     f20:	ac000155 	stfges	f0, [r0], {85}	; 0x55
     f24:	02000155 	andeq	r0, r0, #1073741845	; 0x40000015
     f28:	8f01007d 	svchi	0x0001007d
     f2c:	0c000001 	stceq	0, cr0, [r0], {1}
     f30:	00000839 	andeq	r0, r0, r9, lsr r8
     f34:	00486701 	subeq	r6, r8, r1, lsl #14
     f38:	08a90000 	stmiaeq	r9!, {}	; <UNPREDICTABLE>
     f3c:	0d000000 	stceq	0, cr0, [r0, #-0]
     f40:	000000c9 	andeq	r0, r0, r9, asr #1
     f44:	000155ac 	andeq	r5, r1, ip, lsr #11
     f48:	000155b8 			; <UNDEFINED> instruction: 0x000155b8
     f4c:	01007d02 	tsteq	r0, r2, lsl #26
     f50:	000001ae 	andeq	r0, r0, lr, lsr #3
     f54:	0000db0e 	andeq	sp, r0, lr, lsl #22
     f58:	0008ca00 	andeq	ip, r8, r0, lsl #20
     f5c:	440d0000 	strmi	r0, [sp], #-0
     f60:	b8000001 	stmdalt	r0, {r0}
     f64:	c4000155 	strgt	r0, [r0], #-341	; 0xfffffeab
     f68:	02000155 	andeq	r0, r0, #1073741845	; 0x40000015
     f6c:	cd01007d 	stcgt	0, cr0, [r1, #-500]	; 0xfffffe0c
     f70:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
     f74:	00000156 	andeq	r0, r0, r6, asr r1
     f78:	000008eb 	andeq	r0, r0, fp, ror #17
     f7c:	94010f00 	strls	r0, [r1], #-3840	; 0xfffff100
     f80:	01000004 	tsteq	r0, r4
     f84:	55c401ad 	strbpl	r0, [r4, #429]	; 0x1ad
     f88:	55d00001 	ldrbpl	r0, [r0, #1]
     f8c:	7d020001 	stcvc	0, cr0, [r2, #-4]
     f90:	02010100 	andeq	r0, r1, #0, 2
     f94:	15100000 	ldrne	r0, [r0, #-0]
     f98:	01000005 	tsteq	r0, r5
     f9c:	000048ad 	andeq	r4, r0, sp, lsr #17
     fa0:	10500100 	subsne	r0, r0, r0, lsl #2
     fa4:	000006c6 	andeq	r0, r0, r6, asr #13
     fa8:	0025ad01 	eoreq	sl, r5, r1, lsl #26
     fac:	51010000 	mrspl	r0, (UNDEF: 1)
     fb0:	00a40d00 	adceq	r0, r4, r0, lsl #26
     fb4:	55d00000 	ldrbpl	r0, [r0]
     fb8:	55dc0001 	ldrbpl	r0, [ip, #1]
     fbc:	7d020001 	stcvc	0, cr0, [r2, #-4]
     fc0:	02250100 	eoreq	r0, r5, #0, 2
     fc4:	b2110000 	andslt	r0, r1, #0
     fc8:	01000000 	mrseq	r0, (UNDEF: 0)
     fcc:	00bd1150 	adcseq	r1, sp, r0, asr r1
     fd0:	51010000 	mrspl	r0, (UNDEF: 1)
     fd4:	011f0d00 	tsteq	pc, r0, lsl #26
     fd8:	55dc0000 	ldrbpl	r0, [ip]
     fdc:	55e80001 	strbpl	r0, [r8, #1]!
     fe0:	7d020001 	stcvc	0, cr0, [r2, #-4]
     fe4:	02490100 	subeq	r0, r9, #0, 2
     fe8:	2d110000 	ldccs	0, cr0, [r1, #-0]
     fec:	01000001 	tsteq	r0, r1
     ff0:	01381150 	teqeq	r8, r0, asr r1
     ff4:	51010000 	mrspl	r0, (UNDEF: 1)
     ff8:	cf010b00 	svcgt	0x00010b00
     ffc:	01000004 	tsteq	r0, r4
    1000:	003601f5 	ldrshteq	r0, [r6], -r5
    1004:	55e80000 	strbpl	r0, [r8, #0]!
    1008:	56000001 	strpl	r0, [r0], -r1
    100c:	7d020001 	stcvc	0, cr0, [r2, #-4]
    1010:	02c00100 	sbceq	r0, r0, #0, 2
    1014:	390c0000 	stmdbcc	ip, {}	; <UNPREDICTABLE>
    1018:	01000008 	tsteq	r0, r8
    101c:	000048f5 	strdeq	r4, [r0], -r5
    1020:	00090c00 	andeq	r0, r9, r0, lsl #24
    1024:	04da1200 	ldrbeq	r1, [sl], #512	; 0x200
    1028:	f7010000 			; <UNDEFINED> instruction: 0xf7010000
    102c:	00000036 	andeq	r0, r0, r6, lsr r0
    1030:	0004df12 	andeq	sp, r4, r2, lsl pc
    1034:	36f80100 	ldrbtcc	r0, [r8], r0, lsl #2
    1038:	13000000 	movwne	r0, #0
    103c:	000000c9 	andeq	r0, r0, r9, asr #1
    1040:	000155e8 	andeq	r5, r1, r8, ror #11
    1044:	000155f0 	strdeq	r5, [r1], -r0
    1048:	02a8fd01 	adceq	pc, r8, #1, 26	; 0x40
    104c:	db0e0000 	blle	381054 <__stack+0x1c3104>
    1050:	0c000000 	stceq	0, cr0, [r0], {-0}
    1054:	00000009 	andeq	r0, r0, r9
    1058:	00008414 	andeq	r8, r0, r4, lsl r4
    105c:	0155f000 	cmpeq	r5, r0
    1060:	0155f800 	cmpeq	r5, r0, lsl #16
    1064:	11ff0100 	mvnsne	r0, r0, lsl #2
    1068:	00000097 	muleq	r0, r7, r0
    106c:	00005301 	andeq	r5, r0, r1, lsl #6
    1070:	050a0115 	streq	r0, [sl, #-277]	; 0xfffffeeb
    1074:	16010000 	strne	r0, [r1], -r0
    1078:	00480101 	subeq	r0, r8, r1, lsl #2
    107c:	56000000 	strpl	r0, [r0], -r0
    1080:	562c0001 	strtpl	r0, [ip], -r1
    1084:	7d020001 	stcvc	0, cr0, [r2, #-4]
    1088:	03590100 	cmpeq	r9, #0, 2
    108c:	39160000 	ldmdbcc	r6, {}	; <UNPREDICTABLE>
    1090:	01000008 	tsteq	r0, r8
    1094:	00480116 	subeq	r0, r8, r6, lsl r1
    1098:	092d0000 	pusheq	{}	; <UNPREDICTABLE>
    109c:	da170000 	ble	5c10a4 <__stack+0x403154>
    10a0:	01000004 	tsteq	r0, r4
    10a4:	00480118 	subeq	r0, r8, r8, lsl r1
    10a8:	53010000 	movwpl	r0, #4096	; 0x1000
    10ac:	0004df0a 	andeq	sp, r4, sl, lsl #30
    10b0:	01190100 	tsteq	r9, r0, lsl #2
    10b4:	00000048 	andeq	r0, r0, r8, asr #32
    10b8:	00014418 	andeq	r4, r1, r8, lsl r4
    10bc:	01560000 	cmpeq	r6, r0
    10c0:	01560800 	cmpeq	r6, r0, lsl #16
    10c4:	011e0100 	tsteq	lr, r0, lsl #2
    10c8:	00000326 	andeq	r0, r0, r6, lsr #6
    10cc:	0001560e 	andeq	r5, r1, lr, lsl #12
    10d0:	00092d00 	andeq	r2, r9, r0, lsl #26
    10d4:	e7190000 	ldr	r0, [r9, -r0]
    10d8:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    10dc:	24000156 	strcs	r0, [r0], #-342	; 0xfffffeaa
    10e0:	01000156 	tsteq	r0, r6, asr r1
    10e4:	fa0e0120 	blx	38156c <__stack+0x1c361c>
    10e8:	4e000000 	cdpmi	0, 0, cr0, cr0, cr0, {0}
    10ec:	1a000009 	bne	1118 <_SUPERVISOR_STACK_SIZE+0x918>
    10f0:	00000000 	andeq	r0, r0, r0
    10f4:	0001061b 	andeq	r0, r1, fp, lsl r6
    10f8:	00096100 	andeq	r6, r9, r0, lsl #2
    10fc:	01121b00 	tsteq	r2, r0, lsl #22
    1100:	097f0000 	ldmdbeq	pc!, {}^	; <UNPREDICTABLE>
    1104:	00000000 	andeq	r0, r0, r0
    1108:	ba011c00 	blt	48110 <_HEAP_SIZE+0x28110>
    110c:	01000004 	tsteq	r0, r4
    1110:	2c010138 	stfcss	f0, [r1], {56}	; 0x38
    1114:	40000156 	andmi	r0, r0, r6, asr r1
    1118:	02000156 	andeq	r0, r0, #-2147483627	; 0x80000015
    111c:	dd01007d 	stcle	0, cr0, [r1, #-500]	; 0xfffffe0c
    1120:	1d000003 	stcne	0, cr0, [r0, #-12]
    1124:	00000515 	andeq	r0, r0, r5, lsl r5
    1128:	48013801 	stmdami	r1, {r0, fp, ip, sp}
    112c:	01000000 	mrseq	r0, (UNDEF: 0)
    1130:	06c61650 			; <UNDEFINED> instruction: 0x06c61650
    1134:	38010000 	stmdacc	r1, {}	; <UNPREDICTABLE>
    1138:	00003601 	andeq	r3, r0, r1, lsl #12
    113c:	00099200 	andeq	r9, r9, r0, lsl #4
    1140:	04da1700 	ldrbeq	r1, [sl], #1792	; 0x700
    1144:	3d010000 	stccc	0, cr0, [r1, #-0]
    1148:	00003601 	andeq	r3, r0, r1, lsl #12
    114c:	18530100 	ldmdane	r3, {r8}^
    1150:	00000084 	andeq	r0, r0, r4, lsl #1
    1154:	0001562c 	andeq	r5, r1, ip, lsr #12
    1158:	00015634 	andeq	r5, r1, r4, lsr r6
    115c:	bd013f01 	stclt	15, cr3, [r1, #-4]
    1160:	0e000003 	cdpeq	0, 0, cr0, cr0, cr3, {0}
    1164:	00000097 	muleq	r0, r7, r0
    1168:	00000992 	muleq	r0, r2, r9
    116c:	00a41900 	adceq	r1, r4, r0, lsl #18
    1170:	56340000 	ldrtpl	r0, [r4], -r0
    1174:	56400001 	strbpl	r0, [r0], -r1
    1178:	43010001 	movwmi	r0, #4097	; 0x1001
    117c:	00bd1101 	adcseq	r1, sp, r1, lsl #2
    1180:	51010000 	mrspl	r0, (UNDEF: 1)
    1184:	0000b211 	andeq	fp, r0, r1, lsl r2
    1188:	00500100 	subseq	r0, r0, r0, lsl #2
    118c:	e6011c00 	str	r1, [r1], -r0, lsl #24
    1190:	01000004 	tsteq	r0, r4
    1194:	40010156 	andmi	r0, r1, r6, asr r1
    1198:	6c000156 	stfvss	f0, [r0], {86}	; 0x56
    119c:	02000156 	andeq	r0, r0, #-2147483627	; 0x80000015
    11a0:	7901007d 	stmdbvc	r1, {r0, r2, r3, r4, r5, r6}
    11a4:	1d000004 	stcne	0, cr0, [r0, #-16]
    11a8:	00000515 	andeq	r0, r0, r5, lsl r5
    11ac:	48015601 	stmdami	r1, {r0, r9, sl, ip, lr}
    11b0:	01000000 	mrseq	r0, (UNDEF: 0)
    11b4:	06c61650 			; <UNDEFINED> instruction: 0x06c61650
    11b8:	56010000 	strpl	r0, [r1], -r0
    11bc:	00004801 	andeq	r4, r0, r1, lsl #16
    11c0:	0009b300 	andeq	fp, r9, r0, lsl #6
    11c4:	04da1700 	ldrbeq	r1, [sl], #1792	; 0x700
    11c8:	58010000 	stmdapl	r1, {}	; <UNPREDICTABLE>
    11cc:	00004801 	andeq	r4, r0, r1, lsl #16
    11d0:	18510100 	ldmdane	r1, {r8}^
    11d4:	000000e7 	andeq	r0, r0, r7, ror #1
    11d8:	00015640 	andeq	r5, r1, r0, asr #12
    11dc:	00015660 	andeq	r5, r1, r0, ror #12
    11e0:	59015a01 	stmdbpl	r1, {r0, r9, fp, ip, lr}
    11e4:	0e000004 	cdpeq	0, 0, cr0, cr0, cr4, {0}
    11e8:	000000fa 	strdeq	r0, [r0], -sl
    11ec:	000009b3 			; <UNDEFINED> instruction: 0x000009b3
    11f0:	0000181a 	andeq	r1, r0, sl, lsl r8
    11f4:	01061b00 	tsteq	r6, r0, lsl #22
    11f8:	09d40000 	ldmibeq	r4, {}^	; <UNPREDICTABLE>
    11fc:	121b0000 	andsne	r0, fp, #0
    1200:	17000001 	strne	r0, [r0, -r1]
    1204:	0000000a 	andeq	r0, r0, sl
    1208:	011f1900 	tsteq	pc, r0, lsl #18
    120c:	56600000 	strbtpl	r0, [r0], -r0
    1210:	566c0001 	strbtpl	r0, [ip], -r1
    1214:	5e010001 	cdppl	0, 0, cr0, cr1, cr1, {0}
    1218:	01381101 	teqeq	r8, r1, lsl #2
    121c:	51010000 	mrspl	r0, (UNDEF: 1)
    1220:	00012d11 	andeq	r2, r1, r1, lsl sp
    1224:	00500100 	subseq	r0, r0, r0, lsl #2
    1228:	00840d00 	addeq	r0, r4, r0, lsl #26
    122c:	566c0000 	strbtpl	r0, [ip], -r0
    1230:	567c0001 	ldrbtpl	r0, [ip], -r1
    1234:	7d020001 	stcvc	0, cr0, [r2, #-4]
    1238:	04980100 	ldreq	r0, [r8], #256	; 0x100
    123c:	970e0000 	strls	r0, [lr, -r0]
    1240:	5a000000 	bpl	1248 <_SUPERVISOR_STACK_SIZE+0xa48>
    1244:	0000000a 	andeq	r0, r0, sl
    1248:	0000e71e 	andeq	lr, r0, lr, lsl r7
    124c:	01567c00 	cmpeq	r6, r0, lsl #24
    1250:	0156a000 	cmpeq	r6, r0
    1254:	007d0200 	rsbseq	r0, sp, r0, lsl #4
    1258:	00fa0e01 	rscseq	r0, sl, r1, lsl #28
    125c:	0a7b0000 	beq	1ec1264 <__stack+0x1d03314>
    1260:	061b0000 	ldreq	r0, [fp], -r0
    1264:	9c000001 	stcls	0, cr0, [r0], {1}
    1268:	1b00000a 	blne	1298 <_SUPERVISOR_STACK_SIZE+0xa98>
    126c:	00000112 	andeq	r0, r0, r2, lsl r1
    1270:	00000adf 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    1274:	05670000 	strbeq	r0, [r7, #-0]!
    1278:	00020000 	andeq	r0, r2, r0
    127c:	00000517 	andeq	r0, r0, r7, lsl r5
    1280:	00000104 	andeq	r0, r0, r4, lsl #2
    1284:	0c010000 	stceq	0, cr0, [r1], {-0}
    1288:	12000006 	andne	r0, r0, #6
    128c:	a0000000 	andge	r0, r0, r0
    1290:	94000156 	strls	r0, [r0], #-342	; 0xfffffeaa
    1294:	c800015c 	stmdagt	r0, {r2, r3, r4, r6, r8}
    1298:	02000003 	andeq	r0, r0, #3
    129c:	01a40601 			; <UNDEFINED> instruction: 0x01a40601
    12a0:	01020000 	mrseq	r0, (UNDEF: 2)
    12a4:	0001a208 	andeq	sl, r1, r8, lsl #4
    12a8:	05020200 	streq	r0, [r2, #-512]	; 0xfffffe00
    12ac:	000003bb 			; <UNDEFINED> instruction: 0x000003bb
    12b0:	fb070202 	blx	1c1ac2 <__stack+0x3b72>
    12b4:	03000001 	movweq	r0, #1
    12b8:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
    12bc:	04020074 	streq	r0, [r2], #-116	; 0xffffff8c
    12c0:	0002f007 	andeq	pc, r2, r7
    12c4:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
    12c8:	0000038e 	andeq	r0, r0, lr, lsl #7
    12cc:	e6070802 	str	r0, [r7], -r2, lsl #16
    12d0:	02000002 	andeq	r0, r0, #2
    12d4:	03930504 	orrseq	r0, r3, #4, 10	; 0x1000000
    12d8:	04020000 	streq	r0, [r2], #-0
    12dc:	0005e207 	andeq	lr, r5, r7, lsl #4
    12e0:	02040400 	andeq	r0, r4, #0, 8
    12e4:	02eb0704 	rsceq	r0, fp, #4, 14	; 0x100000
    12e8:	04050000 	streq	r0, [r5], #-0
    12ec:	0000007a 	andeq	r0, r0, sl, ror r0
    12f0:	ab080102 	blge	201700 <__stack+0x437b0>
    12f4:	05000001 	streq	r0, [r0, #-1]
    12f8:	00008704 	andeq	r8, r0, r4, lsl #14
    12fc:	007a0600 	rsbseq	r0, sl, r0, lsl #12
    1300:	89070000 	stmdbhi	r7, {}	; <UNPREDICTABLE>
    1304:	02000005 	andeq	r0, r0, #5
    1308:	000048d5 	ldrdeq	r4, [r0], -r5
    130c:	062d0700 	strteq	r0, [sp], -r0, lsl #14
    1310:	28030000 	stmdacs	r3, {}	; <UNPREDICTABLE>
    1314:	000000a2 	andeq	r0, r0, r2, lsr #1
    1318:	0005eb08 	andeq	lr, r5, r8, lsl #22
    131c:	00040400 	andeq	r0, r4, r0, lsl #8
    1320:	000000bc 	strheq	r0, [r0], -ip
    1324:	0005c809 	andeq	ip, r5, r9, lsl #16
    1328:	00006b00 	andeq	r6, r0, r0, lsl #22
    132c:	00230200 	eoreq	r0, r3, r0, lsl #4
    1330:	ed070001 	stc	0, cr0, [r7, #-4]
    1334:	03000005 	movweq	r0, #5
    1338:	00009766 	andeq	r9, r0, r6, ror #14
    133c:	05fa0800 	ldrbeq	r0, [sl, #2048]!	; 0x800
    1340:	01180000 	tsteq	r8, r0
    1344:	00012813 	andeq	r2, r1, r3, lsl r8
    1348:	656c0a00 	strbvs	r0, [ip, #-2560]!	; 0xfffff600
    134c:	1401006e 	strne	r0, [r1], #-110	; 0xffffff92
    1350:	00000041 	andeq	r0, r0, r1, asr #32
    1354:	0b002302 	bleq	9f64 <OS_TCBInit+0x180>
    1358:	0000056a 	andeq	r0, r0, sl, ror #10
    135c:	00411501 	subeq	r1, r1, r1, lsl #10
    1360:	23020000 	movwcs	r0, #8192	; 0x2000
    1364:	05760b04 	ldrbeq	r0, [r6, #-2820]!	; 0xfffff4fc
    1368:	16010000 	strne	r0, [r1], -r0
    136c:	00000041 	andeq	r0, r0, r1, asr #32
    1370:	0b082302 	bleq	209f80 <__stack+0x4c030>
    1374:	0000061f 	andeq	r0, r0, pc, lsl r6
    1378:	007a1701 	rsbseq	r1, sl, r1, lsl #14
    137c:	23020000 	movwcs	r0, #8192	; 0x2000
    1380:	05a00b0c 	streq	r0, [r0, #2828]!	; 0xb0c
    1384:	18010000 	stmdane	r1, {}	; <UNPREDICTABLE>
    1388:	00000041 	andeq	r0, r0, r1, asr #32
    138c:	0b102302 	bleq	409f9c <__stack+0x24c04c>
    1390:	00000596 	muleq	r0, r6, r5
    1394:	00411901 	subeq	r1, r1, r1, lsl #18
    1398:	23020000 	movwcs	r0, #8192	; 0x2000
    139c:	bf070014 	svclt	0x00070014
    13a0:	01000005 	tsteq	r0, r5
    13a4:	0000c71a 	andeq	ip, r0, sl, lsl r7
    13a8:	05b20700 	ldreq	r0, [r2, #1792]!	; 0x700
    13ac:	24010000 	strcs	r0, [r1], #-0
    13b0:	00000074 	andeq	r0, r0, r4, ror r0
    13b4:	0005a30c 	andeq	sl, r5, ip, lsl #6
    13b8:	012c0100 	teqeq	ip, r0, lsl #2
    13bc:	00016b01 	andeq	r6, r1, r1, lsl #22
    13c0:	05ab0d00 	streq	r0, [fp, #3328]!	; 0xd00
    13c4:	2c010000 	stccs	0, cr0, [r1], {-0}
    13c8:	0000016b 	andeq	r0, r0, fp, ror #2
    13cc:	7261700e 	rsbvc	r7, r1, #14
    13d0:	702c0100 	eorvc	r0, ip, r0, lsl #2
    13d4:	0f000001 	svceq	0x00000001
    13d8:	2e010069 	cdpcs	0, 0, cr0, cr1, cr9, {3}
    13dc:	00000041 	andeq	r0, r0, r1, asr #32
    13e0:	00410600 	subeq	r0, r1, r0, lsl #12
    13e4:	04050000 	streq	r0, [r5], #-0
    13e8:	00000128 	andeq	r0, r0, r8, lsr #2
    13ec:	0005cd10 	andeq	ip, r5, r0, lsl sp
    13f0:	01790100 	cmneq	r9, r0, lsl #2
    13f4:	00000041 	andeq	r0, r0, r1, asr #32
    13f8:	0001a601 	andeq	sl, r1, r1, lsl #12
    13fc:	06190d00 	ldreq	r0, [r9], -r0, lsl #26
    1400:	79010000 	stmdbvc	r1, {}	; <UNPREDICTABLE>
    1404:	000001a6 	andeq	r0, r0, r6, lsr #3
    1408:	01006e0f 	tsteq	r0, pc, lsl #28
    140c:	0000417b 	andeq	r4, r0, fp, ror r1
    1410:	70630f00 	rsbvc	r0, r3, r0, lsl #30
    1414:	337c0100 	cmncc	ip, #0, 2
    1418:	00000001 	andeq	r0, r0, r1
    141c:	01330405 	teqeq	r3, r5, lsl #8
    1420:	3e110000 	cdpcc	0, 1, cr0, cr1, cr0, {0}
    1424:	a0000001 	andge	r0, r0, r1
    1428:	e8000156 	stmda	r0, {r1, r2, r4, r6, r8}
    142c:	22000156 	andcs	r0, r0, #-2147483627	; 0x80000015
    1430:	0100000b 	tsteq	r0, fp
    1434:	00000212 	andeq	r0, r0, r2, lsl r2
    1438:	00014b12 	andeq	r4, r1, r2, lsl fp
    143c:	000b4200 	andeq	r4, fp, r0, lsl #4
    1440:	01561200 	cmpeq	r6, r0, lsl #4
    1444:	0b630000 	bleq	18c144c <__stack+0x17034fc>
    1448:	61130000 	tstvs	r3, r0
    144c:	14000001 	strne	r0, [r0], #-1
    1450:	0000013e 	andeq	r0, r0, lr, lsr r1
    1454:	000156bc 			; <UNDEFINED> instruction: 0x000156bc
    1458:	000156e8 	andeq	r5, r1, r8, ror #13
    145c:	56122c01 	ldrpl	r2, [r2], -r1, lsl #24
    1460:	81000001 	tsthi	r0, r1
    1464:	1500000b 	strne	r0, [r0, #-11]
    1468:	000156bc 			; <UNDEFINED> instruction: 0x000156bc
    146c:	000156e8 	andeq	r5, r1, r8, ror #13
    1470:	00016116 	andeq	r6, r1, r6, lsl r1
    1474:	17540100 	ldrbne	r0, [r4, -r0, lsl #2]
    1478:	0000014b 	andeq	r0, r0, fp, asr #2
    147c:	0156d818 	cmpeq	r6, r8, lsl r8
    1480:	00054200 	andeq	r4, r5, r0, lsl #4
    1484:	00000000 	andeq	r0, r0, r0
    1488:	00054d19 	andeq	r4, r5, r9, lsl sp
    148c:	01500100 	cmpeq	r0, r0, lsl #2
    1490:	000156e8 	andeq	r5, r1, r8, ror #13
    1494:	000157e0 	andeq	r5, r1, r0, ror #15
    1498:	00000b9f 	muleq	r0, pc, fp	; <UNPREDICTABLE>
    149c:	0002df01 	andeq	sp, r2, r1, lsl #30
    14a0:	006e1a00 	rsbeq	r1, lr, r0, lsl #20
    14a4:	02df5001 	sbcseq	r5, pc, #1
    14a8:	0bcc0000 	bleq	ff3014b0 <CPU_ARM_BIT_CNTES_C+0x7f3014b0>
    14ac:	ba1b0000 	blt	6c14b4 <__stack+0x503564>
    14b0:	01000005 	tsteq	r0, r5
    14b4:	0002df50 	andeq	sp, r2, r0, asr pc
    14b8:	000bf800 	andeq	pc, fp, r0, lsl #16
    14bc:	61701a00 	cmnvs	r0, r0, lsl #20
    14c0:	50010072 	andpl	r0, r1, r2, ror r0
    14c4:	00000170 	andeq	r0, r0, r0, ror r1
    14c8:	00000c24 	andeq	r0, r0, r4, lsr #24
    14cc:	0070631c 	rsbseq	r6, r0, ip, lsl r3
    14d0:	01335201 	teqeq	r3, r1, lsl #4
    14d4:	0c420000 	mareq	acc0, r0, r2
    14d8:	3c1d0000 	ldccc	0, cr0, [sp], {-0}
    14dc:	01000006 	tsteq	r0, r6
    14e0:	00004153 	andeq	r4, r0, r3, asr r1
    14e4:	1d580100 	ldfnee	f0, [r8, #-0]
    14e8:	00000554 	andeq	r0, r0, r4, asr r5
    14ec:	02e45401 	rsceq	r5, r4, #16777216	; 0x1000000
    14f0:	91020000 	mrsls	r0, (UNDEF: 2)
    14f4:	053b1d48 	ldreq	r1, [fp, #-3400]!	; 0xfffff2b8
    14f8:	55010000 	strpl	r0, [r1, #-0]
    14fc:	00000304 	andeq	r0, r0, r4, lsl #6
    1500:	7fb49103 	svcvc	0x00b49103
    1504:	6d756e1c 	ldclvs	14, cr6, [r5, #-112]!	; 0xffffff90
    1508:	6d560100 	ldfvse	f0, [r6, #-0]
    150c:	60000000 	andvs	r0, r0, r0
    1510:	1e00000c 	cdpne	0, 0, cr0, cr0, cr12, {0}
    1514:	0001579c 	muleq	r1, ip, r7
    1518:	00000556 	andeq	r0, r0, r6, asr r5
    151c:	000002b1 			; <UNDEFINED> instruction: 0x000002b1
    1520:	0250011f 	subseq	r0, r0, #-1073741817	; 0xc0000007
    1524:	1e000075 	mcrne	0, 0, r0, cr0, cr5, {3}
    1528:	000157b4 			; <UNDEFINED> instruction: 0x000157b4
    152c:	0000013e 	andeq	r0, r0, lr, lsr r1
    1530:	000002c5 	andeq	r0, r0, r5, asr #5
    1534:	0251011f 	subseq	r0, r1, #-1073741817	; 0xc0000007
    1538:	18000077 	stmdane	r0, {r0, r1, r2, r4, r5, r6}
    153c:	000157c4 	andeq	r5, r1, r4, asr #15
    1540:	00000542 	andeq	r0, r0, r2, asr #10
    1544:	0157d820 	cmpeq	r7, r0, lsr #16
    1548:	00013e00 	andeq	r3, r1, r0, lsl #28
    154c:	51011f00 	tstpl	r1, r0, lsl #30
    1550:	00007702 	andeq	r7, r0, r2, lsl #14
    1554:	005d0600 	subseq	r0, sp, r0, lsl #12
    1558:	7a210000 	bvc	841560 <__stack+0x683610>
    155c:	f4000000 	vst4.8	{d0-d3}, [r0], r0
    1560:	22000002 	andcs	r0, r0, #2
    1564:	00000064 	andeq	r0, r0, r4, rrx
    1568:	7a21001f 	bvc	8415ec <__stack+0x68369c>
    156c:	04000000 	streq	r0, [r0], #-0
    1570:	22000003 	andcs	r0, r0, #3
    1574:	00000064 	andeq	r0, r0, r4, rrx
    1578:	f4060010 	vst4.8	{d0-d3}, [r6 :64], r0
    157c:	0c000002 	stceq	0, cr0, [r0], {2}
    1580:	00000565 	andeq	r0, r0, r5, ror #10
    1584:	01013a01 	tsteq	r1, r1, lsl #20
    1588:	0000032c 	andeq	r0, r0, ip, lsr #6
    158c:	00706c0e 	rsbseq	r6, r0, lr, lsl #24
    1590:	01333a01 	teqeq	r3, r1, lsl #20
    1594:	700e0000 	andvc	r0, lr, r0
    1598:	01007261 	tsteq	r0, r1, ror #4
    159c:	0001703a 	andeq	r7, r1, sl, lsr r0
    15a0:	01230000 	teqeq	r3, r0
    15a4:	00000542 	andeq	r0, r0, r2, asr #10
    15a8:	e0019501 	and	r9, r1, r1, lsl #10
    15ac:	94000157 	strls	r0, [r0], #-343	; 0xfffffea9
    15b0:	7e00015c 	mcrvc	1, 0, r0, cr0, cr12, {2}
    15b4:	0100000c 	tsteq	r0, ip
    15b8:	00000535 	andeq	r0, r0, r5, lsr r5
    15bc:	00059024 	andeq	r9, r5, r4, lsr #32
    15c0:	81950100 	orrshi	r0, r5, r0, lsl #2
    15c4:	02000000 	andeq	r0, r0, #0
    15c8:	26257091 			; <UNDEFINED> instruction: 0x26257091
    15cc:	0000055b 	andeq	r0, r0, fp, asr r5
    15d0:	00419801 	subeq	r9, r1, r1, lsl #16
    15d4:	0cb70000 	ldceq	0, cr0, [r7]
    15d8:	03260000 	teqeq	r6, #0
    15dc:	01000006 	tsteq	r0, r6
    15e0:	00004199 	muleq	r0, r9, r1
    15e4:	000cd700 	andeq	sp, ip, r0, lsl #14
    15e8:	61702700 	cmnvs	r0, r0, lsl #14
    15ec:	9b010072 	blls	417bc <_HEAP_SIZE+0x217bc>
    15f0:	00000128 	andeq	r0, r0, r8, lsr #2
    15f4:	7fb09103 	svcvc	0x00b09103
    15f8:	0068631c 	rsbeq	r6, r8, ip, lsl r3
    15fc:	007a9d01 	rsbseq	r9, sl, r1, lsl #26
    1600:	0d170000 	ldceq	0, cr0, [r7, #-0]
    1604:	f51d0000 			; <UNDEFINED> instruction: 0xf51d0000
    1608:	01000005 	tsteq	r0, r5
    160c:	0000bc9e 	muleq	r0, lr, ip
    1610:	ac910300 	ldcge	3, cr0, [r1], {0}
    1614:	05d4267f 	ldrbeq	r2, [r4, #1663]	; 0x67f
    1618:	9f010000 	svcls	0x00010000
    161c:	00000074 	andeq	r0, r0, r4, ror r0
    1620:	00000dfc 	strdeq	r0, [r0], -ip
    1624:	0005d928 	andeq	sp, r5, r8, lsr #18
    1628:	29b10100 	ldmibcs	r1!, {r8}
    162c:	00000176 	andeq	r0, r0, r6, ror r1
    1630:	00015888 	andeq	r5, r1, r8, lsl #17
    1634:	000158b8 			; <UNDEFINED> instruction: 0x000158b8
    1638:	03e6b601 	mvneq	fp, #1048576	; 0x100000
    163c:	87170000 	ldrhi	r0, [r7, -r0]
    1640:	2a000001 	bcs	164c <_SUPERVISOR_STACK_SIZE+0xe4c>
    1644:	00000030 	andeq	r0, r0, r0, lsr r0
    1648:	0001922b 	andeq	r9, r1, fp, lsr #4
    164c:	000e9500 	andeq	r9, lr, r0, lsl #10
    1650:	019b2b00 	orrseq	r2, fp, r0, lsl #22
    1654:	0eb40000 	cdpeq	0, 11, cr0, cr4, cr0, {0}
    1658:	00000000 	andeq	r0, r0, r0
    165c:	0158c42c 	cmpeq	r8, ip, lsr #8
    1660:	0158d400 	cmpeq	r8, r0, lsl #8
    1664:	00040300 	andeq	r0, r4, r0, lsl #6
    1668:	5f5f1c00 	svcpl	0x005f1c00
    166c:	c2010078 	andgt	r0, r1, #120	; 0x78
    1670:	00000041 	andeq	r0, r0, r1, asr #32
    1674:	00000ec7 	andeq	r0, r0, r7, asr #29
    1678:	03092900 	movweq	r2, #39168	; 0x9900
    167c:	5a800000 	bpl	fe001684 <CPU_ARM_BIT_CNTES_C+0x7e001684>
    1680:	5afc0001 	bpl	fff0168c <CPU_ARM_BIT_CNTES_C+0x7ff0168c>
    1684:	e1010001 	tst	r1, r1
    1688:	0000046c 	andeq	r0, r0, ip, ror #8
    168c:	00032012 	andeq	r2, r3, r2, lsl r0
    1690:	000fa100 	andeq	sl, pc, r0, lsl #2
    1694:	03161200 	tsteq	r6, #0, 4
    1698:	0fe90000 	svceq	0x00e90000
    169c:	881e0000 	ldmdahi	lr, {}	; <UNPREDICTABLE>
    16a0:	5600015a 			; <UNDEFINED> instruction: 0x5600015a
    16a4:	3c000005 	stccc	0, cr0, [r0], {5}
    16a8:	1f000004 	svcne	0x00000004
    16ac:	7a025001 	bvc	956b8 <_HEAP_SIZE+0x756b8>
    16b0:	a01e0000 	andsge	r0, lr, r0
    16b4:	3e00015a 	mcrcc	1, 0, r0, cr0, cr10, {2}
    16b8:	51000001 	tstpl	r0, r1
    16bc:	1f000004 	svcne	0x00000004
    16c0:	91035101 	tstls	r3, r1, lsl #2
    16c4:	18007f88 	stmdane	r0, {r3, r7, r8, r9, sl, fp, ip, sp, lr}
    16c8:	00015ae4 	andeq	r5, r1, r4, ror #21
    16cc:	00000542 	andeq	r0, r0, r2, asr #10
    16d0:	015afc20 	cmpeq	sl, r0, lsr #24
    16d4:	00013e00 	andeq	r3, r1, r0, lsl #28
    16d8:	51011f00 	tstpl	r1, r0, lsl #30
    16dc:	7f889103 	svcvc	0x00889103
    16e0:	762d0000 	strtvc	r0, [sp], -r0
    16e4:	d8000001 	stmdale	r0, {r0}
    16e8:	4800015b 	stmdami	r0, {r0, r1, r3, r4, r6, r8}
    16ec:	01000000 	mrseq	r0, (UNDEF: 0)
    16f0:	0004a1bb 			; <UNDEFINED> instruction: 0x0004a1bb
    16f4:	01871200 	orreq	r1, r7, r0, lsl #4
    16f8:	10090000 	andne	r0, r9, r0
    16fc:	682a0000 	stmdavs	sl!, {}	; <UNPREDICTABLE>
    1700:	2b000000 	blcs	1708 <_SUPERVISOR_STACK_SIZE+0xf08>
    1704:	00000192 	muleq	r0, r2, r1
    1708:	00001021 	andeq	r1, r0, r1, lsr #32
    170c:	00019b2b 	andeq	r9, r1, fp, lsr #22
    1710:	00104000 	andseq	r4, r0, r0
    1714:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    1718:	00015824 	andeq	r5, r1, r4, lsr #16
    171c:	00000542 	andeq	r0, r0, r2, asr #10
    1720:	015a5018 	cmpeq	sl, r8, lsl r0
    1724:	00021200 	andeq	r1, r2, r0, lsl #4
    1728:	5b441800 	blpl	1107730 <__stack+0xf497e0>
    172c:	05420001 	strbeq	r0, [r2, #-1]
    1730:	d41e0000 	ldrle	r0, [lr], #-0
    1734:	4200015b 	andmi	r0, r0, #-1073741802	; 0xc0000016
    1738:	d0000005 	andle	r0, r0, r5
    173c:	1f000004 	svcne	0x00000004
    1740:	08025001 	stmdaeq	r2, {r0, ip, lr}
    1744:	4c1e0025 	ldcmi	0, cr0, [lr], {37}	; 0x25
    1748:	4200015c 	andmi	r0, r0, #92, 2
    174c:	e3000005 	movw	r0, #5
    1750:	1f000004 	svcne	0x00000004
    1754:	3d015001 	stccc	0, cr5, [r1, #-4]
    1758:	5c641800 	stclpl	8, cr1, [r4], #-0
    175c:	05420001 	strbeq	r0, [r2, #-1]
    1760:	701e0000 	andsvc	r0, lr, r0
    1764:	4200015c 	andmi	r0, r0, #92, 2
    1768:	ff000005 			; <UNDEFINED> instruction: 0xff000005
    176c:	1f000004 	svcne	0x00000004
    1770:	37015001 	strcc	r5, [r1, -r1]
    1774:	5c7c1e00 	ldclpl	14, cr1, [ip], #-0
    1778:	05420001 	strbeq	r0, [r2, #-1]
    177c:	05120000 	ldreq	r0, [r2, #-0]
    1780:	011f0000 	tsteq	pc, r0
    1784:	00380150 	eorseq	r0, r8, r0, asr r1
    1788:	015c881e 	cmpeq	ip, lr, lsl r8
    178c:	00054200 	andeq	r4, r5, r0, lsl #4
    1790:	00052500 	andeq	r2, r5, r0, lsl #10
    1794:	50011f00 	andpl	r1, r1, r0, lsl #30
    1798:	20003d01 	andcs	r3, r0, r1, lsl #26
    179c:	00015c90 	muleq	r1, r0, ip
    17a0:	00000542 	andeq	r0, r0, r2, asr #10
    17a4:	0150011f 	cmpeq	r0, pc, lsl r1
    17a8:	2e00003a 	mcrcs	0, 0, r0, cr0, cr10, {1}
    17ac:	0000057b 	andeq	r0, r0, fp, ror r5
    17b0:	00815506 	addeq	r5, r1, r6, lsl #10
    17b4:	01010000 	mrseq	r0, (UNDEF: 1)
    17b8:	0086012f 	addeq	r0, r6, pc, lsr #2
    17bc:	0d010000 	stceq	0, cr0, [r1, #-0]
    17c0:	05560101 	ldrbeq	r0, [r6, #-257]	; 0xfffffeff
    17c4:	7a300000 	bvc	c017cc <__stack+0xa4387c>
    17c8:	00000000 	andeq	r0, r0, r0
    17cc:	056f0131 	strbeq	r0, [pc, #-305]!	; 16a3 <_SUPERVISOR_STACK_SIZE+0xea3>
    17d0:	22050000 	andcs	r0, r5, #0
    17d4:	00008c01 	andeq	r8, r0, r1, lsl #24
    17d8:	81300100 	teqhi	r0, r0, lsl #2
    17dc:	00000000 	andeq	r0, r0, r0
    17e0:	00080f00 	andeq	r0, r8, r0, lsl #30
    17e4:	9b000200 	blls	1fec <_SUPERVISOR_STACK_SIZE+0x17ec>
    17e8:	04000007 	streq	r0, [r0], #-7
    17ec:	00000001 	andeq	r0, r0, r1
    17f0:	08920100 	ldmeq	r2, {r8}
    17f4:	076e0000 	strbeq	r0, [lr, -r0]!
    17f8:	5c940000 	ldcpl	0, cr0, [r4], {0}
    17fc:	62900001 	addsvs	r0, r0, #1
    1800:	06080001 	streq	r0, [r8], -r1
    1804:	04020000 	streq	r0, [r2], #-0
    1808:	0002f007 	andeq	pc, r2, r7
    180c:	38750300 	ldmdacc	r5!, {r8, r9}^
    1810:	365a0200 	ldrbcc	r0, [sl], -r0, lsl #4
    1814:	02000000 	andeq	r0, r0, #0
    1818:	01a20801 			; <UNDEFINED> instruction: 0x01a20801
    181c:	75030000 	strvc	r0, [r3, #-0]
    1820:	02003631 	andeq	r3, r0, #51380224	; 0x3100000
    1824:	0000485b 	andeq	r4, r0, fp, asr r8
    1828:	07020200 	streq	r0, [r2, -r0, lsl #4]
    182c:	000001fb 	strdeq	r0, [r0], -fp
    1830:	32337503 	eorscc	r7, r3, #12582912	; 0xc00000
    1834:	5a5c0200 	bpl	170203c <__stack+0x15440ec>
    1838:	02000000 	andeq	r0, r0, #0
    183c:	02eb0704 	rsceq	r0, fp, #4, 14	; 0x100000
    1840:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    1844:	0002e607 	andeq	lr, r2, r7, lsl #12
    1848:	08010200 	stmdaeq	r1, {r9}
    184c:	000001ab 	andeq	r0, r0, fp, lsr #3
    1850:	bb050202 	bllt	142060 <_HEAP_SIZE+0x122060>
    1854:	02000003 	andeq	r0, r0, #3
    1858:	03930504 	orrseq	r0, r3, #4, 10	; 0x1000000
    185c:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    1860:	00038e05 	andeq	r8, r3, r5, lsl #28
    1864:	8a040400 	bhi	10286c <_HEAP_SIZE+0xe286c>
    1868:	05000000 	streq	r0, [r0, #-0]
    186c:	00000068 	andeq	r0, r0, r8, rrx
    1870:	69050406 	stmdbvs	r5, {r1, r2, sl}
    1874:	0700746e 	streq	r7, [r0, -lr, ror #8]
    1878:	01100310 	tsteq	r0, r0, lsl r3
    187c:	000000dc 	ldrdeq	r0, [r0], -ip
    1880:	0008ab08 	andeq	sl, r8, r8, lsl #22
    1884:	01110300 	tsteq	r1, r0, lsl #6
    1888:	0000003d 	andeq	r0, r0, sp, lsr r0
    188c:	08002302 	stmdaeq	r0, {r1, r8, r9, sp}
    1890:	00000762 	andeq	r0, r0, r2, ror #14
    1894:	4f011203 	svcmi	0x00011203
    1898:	02000000 	andeq	r0, r0, #0
    189c:	62080423 	andvs	r0, r8, #587202560	; 0x23000000
    18a0:	03000008 	movweq	r0, #8
    18a4:	004f0113 	subeq	r0, pc, r3, lsl r1	; <UNPREDICTABLE>
    18a8:	23020000 	movwcs	r0, #8192	; 0x2000
    18ac:	072b0808 	streq	r0, [fp, -r8, lsl #16]!
    18b0:	14030000 	strne	r0, [r3], #-0
    18b4:	00008f01 	andeq	r8, r0, r1, lsl #30
    18b8:	0c230200 	sfmeq	f0, 4, [r3], #-0
    18bc:	06a60900 	strteq	r0, [r6], r0, lsl #18
    18c0:	16030000 	strne	r0, [r3], -r0
    18c4:	00009601 	andeq	r9, r0, r1, lsl #12
    18c8:	030c0700 	movweq	r0, #50944	; 0xc700
    18cc:	011f011b 	tsteq	pc, fp, lsl r1	; <UNPREDICTABLE>
    18d0:	1f080000 	svcne	0x00080000
    18d4:	03000007 	movweq	r0, #7
    18d8:	011f011c 	tsteq	pc, ip, lsl r1	; <UNPREDICTABLE>
    18dc:	23020000 	movwcs	r0, #8192	; 0x2000
    18e0:	089c0800 	ldmeq	ip, {fp}
    18e4:	1d030000 	stcne	0, cr0, [r3, #-0]
    18e8:	00002501 	andeq	r2, r0, r1, lsl #10
    18ec:	04230200 	strteq	r0, [r3], #-512	; 0xfffffe00
    18f0:	00073e08 	andeq	r3, r7, r8, lsl #28
    18f4:	011e0300 	tsteq	lr, r0, lsl #6
    18f8:	00000025 	andeq	r0, r0, r5, lsr #32
    18fc:	00082302 	andeq	r2, r8, r2, lsl #6
    1900:	002c0404 	eoreq	r0, ip, r4, lsl #8
    1904:	54090000 	strpl	r0, [r9], #-0
    1908:	03000008 	movweq	r0, #8
    190c:	00e8011f 	rsceq	r0, r8, pc, lsl r1
    1910:	e2090000 	and	r0, r9, #0
    1914:	03000006 	movweq	r0, #6
    1918:	013d013b 	teqeq	sp, fp, lsr r1
    191c:	04040000 	streq	r0, [r4], #-0
    1920:	00000143 	andeq	r0, r0, r3, asr #2
    1924:	0159010a 	cmpeq	r9, sl, lsl #2
    1928:	590b0000 	stmdbpl	fp, {}	; <UNPREDICTABLE>
    192c:	0b000001 	bleq	1938 <_SUPERVISOR_STACK_SIZE+0x1138>
    1930:	0000004f 	andeq	r0, r0, pc, asr #32
    1934:	0000250b 	andeq	r2, r0, fp, lsl #10
    1938:	040c0000 	streq	r0, [ip], #-0
    193c:	43033c07 	movwmi	r3, #15367	; 0x3c07
    1940:	0001dd01 	andeq	sp, r1, r1, lsl #26
    1944:	06ae0800 	strteq	r0, [lr], r0, lsl #16
    1948:	44030000 	strmi	r0, [r3], #-0
    194c:	0000dc01 	andeq	sp, r0, r1, lsl #24
    1950:	00230200 	eoreq	r0, r3, r0, lsl #4
    1954:	00086208 	andeq	r6, r8, r8, lsl #4
    1958:	01450300 	mrseq	r0, (UNDEF: 117)
    195c:	0000004f 	andeq	r0, r0, pc, asr #32
    1960:	08102302 	ldmdaeq	r0, {r1, r8, r9, sp}
    1964:	0000088a 	andeq	r0, r0, sl, lsl #17
    1968:	4f014603 	svcmi	0x00014603
    196c:	02000000 	andeq	r0, r0, #0
    1970:	59081423 	stmdbpl	r8, {r0, r1, r5, sl, ip}
    1974:	03000007 	movweq	r0, #7
    1978:	004f0147 	subeq	r0, pc, r7, asr #2
    197c:	23020000 	movwcs	r0, #8192	; 0x2000
    1980:	06580818 			; <UNDEFINED> instruction: 0x06580818
    1984:	49030000 	stmdbmi	r3, {}	; <UNPREDICTABLE>
    1988:	00012501 	andeq	r2, r1, r1, lsl #10
    198c:	1c230200 	sfmne	f0, 4, [r3], #-0
    1990:	0008d508 	andeq	sp, r8, r8, lsl #10
    1994:	014a0300 	mrseq	r0, (UNDEF: 122)
    1998:	00000125 	andeq	r0, r0, r5, lsr #2
    199c:	08282302 	stmdaeq	r8!, {r1, r8, r9, sp}
    19a0:	000006ea 	andeq	r0, r0, sl, ror #13
    19a4:	31014c03 	tstcc	r1, r3, lsl #24
    19a8:	02000001 	andeq	r0, r0, #1
    19ac:	e2083423 	and	r3, r8, #587202560	; 0x23000000
    19b0:	03000007 	movweq	r0, #7
    19b4:	0159014d 	cmpeq	r9, sp, asr #2
    19b8:	23020000 	movwcs	r0, #8192	; 0x2000
    19bc:	80090038 	andhi	r0, r9, r8, lsr r0
    19c0:	03000006 	movweq	r0, #6
    19c4:	015b014e 	cmpeq	fp, lr, asr #2
    19c8:	920d0000 	andls	r0, sp, #0
    19cc:	01000006 	tsteq	r0, r6
    19d0:	94010297 	strls	r0, [r1], #-663	; 0xfffffd69
    19d4:	bc00015c 	stflts	f0, [r0], {92}	; 0x5c
    19d8:	5300015c 	movwpl	r0, #348	; 0x15c
    19dc:	01000010 	tsteq	r0, r0, lsl r0
    19e0:	0000024e 	andeq	r0, r0, lr, asr #4
    19e4:	0007e20e 	andeq	lr, r7, lr, lsl #4
    19e8:	02970100 	addseq	r0, r7, #0, 2
    19ec:	00000159 	andeq	r0, r0, r9, asr r1
    19f0:	00001073 	andeq	r1, r0, r3, ror r0
    19f4:	00080e0e 	andeq	r0, r8, lr, lsl #28
    19f8:	02970100 	addseq	r0, r7, #0, 2
    19fc:	0000004f 	andeq	r0, r0, pc, asr #32
    1a00:	00001094 	muleq	r0, r4, r0
    1a04:	0006880e 	andeq	r8, r6, lr, lsl #16
    1a08:	02980100 	addseq	r0, r8, #0, 2
    1a0c:	00000025 	andeq	r0, r0, r5, lsr #32
    1a10:	000010b5 	strheq	r1, [r0], -r5
    1a14:	015ca80f 	cmpeq	ip, pc, lsl #16
    1a18:	0007cc00 	andeq	ip, r7, r0, lsl #24
    1a1c:	51011000 	mrspl	r1, (UNDEF: 1)
    1a20:	02a00a03 	adceq	r0, r0, #12288	; 0x3000
    1a24:	05500110 	ldrbeq	r0, [r0, #-272]	; 0xfffffef0
    1a28:	017dac03 	cmneq	sp, r3, lsl #24
    1a2c:	11000000 	mrsne	r0, (UNDEF: 0)
    1a30:	00065001 	andeq	r5, r6, r1
    1a34:	01910100 	orrseq	r0, r1, r0, lsl #2
    1a38:	00002501 	andeq	r2, r0, r1, lsl #10
    1a3c:	015cbc00 	cmpeq	ip, r0, lsl #24
    1a40:	015d4400 	cmpeq	sp, r0, lsl #8
    1a44:	0010d600 	andseq	sp, r0, r0, lsl #12
    1a48:	02c20100 	sbceq	r0, r2, #0, 2
    1a4c:	c10e0000 	mrsgt	r0, (UNDEF: 14)
    1a50:	01000008 	tsteq	r0, r8
    1a54:	02c20191 	sbceq	r0, r2, #1073741860	; 0x40000024
    1a58:	10f60000 	rscsne	r0, r6, r0
    1a5c:	3e120000 	cdpcc	0, 1, cr0, cr2, cr0, {0}
    1a60:	01000008 	tsteq	r0, r8
    1a64:	00250193 	mlaeq	r5, r3, r1, r0
    1a68:	11140000 	tstne	r4, r0
    1a6c:	b5120000 	ldrlt	r0, [r2, #-0]
    1a70:	01000006 	tsteq	r0, r6
    1a74:	004f0194 	umaaleq	r0, pc, r4, r1	; <UNPREDICTABLE>
    1a78:	11330000 	teqne	r3, r0
    1a7c:	e8130000 	ldmda	r3, {}	; <UNPREDICTABLE>
    1a80:	e500015c 	str	r0, [r0, #-348]	; 0xfffffea4
    1a84:	13000007 	movwne	r0, #7
    1a88:	00015cf8 	strdeq	r5, [r1], -r8
    1a8c:	000007fe 	strdeq	r0, [r0], -lr
    1a90:	015d2413 	cmpeq	sp, r3, lsl r4
    1a94:	0007fe00 	andeq	pc, r7, r0, lsl #28
    1a98:	5d3c1300 	ldcpl	3, cr1, [ip, #-0]
    1a9c:	07e50001 	strbeq	r0, [r5, r1]!
    1aa0:	04000000 	streq	r0, [r0], #-0
    1aa4:	0001dd04 	andeq	sp, r1, r4, lsl #26
    1aa8:	f2011100 	vrhadd.s8	d1, d1, d0
    1aac:	01000006 	tsteq	r0, r6
    1ab0:	25010108 	strcs	r0, [r1, #-264]	; 0xfffffef8
    1ab4:	44000000 	strmi	r0, [r0], #-0
    1ab8:	1c00015d 	stfnes	f0, [r0], {93}	; 0x5d
    1abc:	4600015e 			; <UNDEFINED> instruction: 0x4600015e
    1ac0:	01000011 	tsteq	r0, r1, lsl r0
    1ac4:	000003a2 	andeq	r0, r0, r2, lsr #7
    1ac8:	0008c10e 	andeq	ip, r8, lr, lsl #2
    1acc:	01080100 	mrseq	r0, (UNDEF: 24)
    1ad0:	000002c2 	andeq	r0, r0, r2, asr #5
    1ad4:	00001172 	andeq	r1, r0, r2, ror r1
    1ad8:	0006630e 	andeq	r6, r6, lr, lsl #6
    1adc:	01080100 	mrseq	r0, (UNDEF: 24)
    1ae0:	0000011f 	andeq	r0, r0, pc, lsl r1
    1ae4:	000011d2 	ldrdeq	r1, [r0], -r2
    1ae8:	00070c0e 	andeq	r0, r7, lr, lsl #24
    1aec:	01090100 	mrseq	r0, (UNDEF: 25)
    1af0:	00000025 	andeq	r0, r0, r5, lsr #32
    1af4:	0000121c 	andeq	r1, r0, ip, lsl r2
    1af8:	00071514 	andeq	r1, r7, r4, lsl r5
    1afc:	010b0100 	mrseq	r0, (UNDEF: 27)
    1b00:	00000025 	andeq	r0, r0, r5, lsr #32
    1b04:	015d9415 	cmpeq	sp, r5, lsl r4
    1b08:	0007cc00 	andeq	ip, r7, r0, lsl #24
    1b0c:	00034100 	andeq	r4, r3, r0, lsl #2
    1b10:	51011000 	mrspl	r1, (UNDEF: 1)
    1b14:	01120a03 	tsteq	r2, r3, lsl #20
    1b18:	05500110 	ldrbeq	r0, [r0, #-272]	; 0xfffffef0
    1b1c:	017dac03 	cmneq	sp, r3, lsl #24
    1b20:	bc150000 	ldclt	0, cr0, [r5], {-0}
    1b24:	e500015d 	str	r0, [r0, #-349]	; 0xfffffea3
    1b28:	54000007 	strpl	r0, [r0], #-7
    1b2c:	10000003 	andne	r0, r0, r3
    1b30:	48015101 	stmdami	r1, {r0, r8, ip, lr}
    1b34:	5ddc1600 	ldclpl	6, cr1, [ip]
    1b38:	4e010001 	cdpmi	0, 0, cr0, cr1, cr1, {0}
    1b3c:	69000002 	stmdbvs	r0, {r1}
    1b40:	10000003 	andne	r0, r0, r3
    1b44:	75025001 	strvc	r5, [r2, #-1]
    1b48:	ec150000 	ldc	0, cr0, [r5], {-0}
    1b4c:	cc00015d 	stfgts	f0, [r0], {93}	; 0x5d
    1b50:	87000007 	strhi	r0, [r0, -r7]
    1b54:	10000003 	andne	r0, r0, r3
    1b58:	0a035101 	beq	d5f64 <_HEAP_SIZE+0xb5f64>
    1b5c:	01100110 	tsteq	r0, r0, lsl r1
    1b60:	ac030550 	cfstr32ge	mvfx0, [r3], {80}	; 0x50
    1b64:	0000017d 	andeq	r0, r0, sp, ror r1
    1b68:	015e100f 	cmpeq	lr, pc
    1b6c:	0007cc00 	andeq	ip, r7, r0, lsl #24
    1b70:	51011000 	mrspl	r1, (UNDEF: 1)
    1b74:	01110a03 	tsteq	r1, r3, lsl #20
    1b78:	05500110 	ldrbeq	r0, [r0, #-272]	; 0xfffffef0
    1b7c:	017dac03 	cmneq	sp, r3, lsl #24
    1b80:	11000000 	mrsne	r0, (UNDEF: 0)
    1b84:	0008cd01 	andeq	ip, r8, r1, lsl #26
    1b88:	01e30100 	mvneq	r0, r0, lsl #2
    1b8c:	00002501 	andeq	r2, r0, r1, lsl #10
    1b90:	015e1c00 	cmpeq	lr, r0, lsl #24
    1b94:	015eac00 	cmpeq	lr, r0, lsl #24
    1b98:	00128800 	andseq	r8, r2, r0, lsl #16
    1b9c:	040d0100 	streq	r0, [sp], #-256	; 0xffffff00
    1ba0:	c10e0000 	mrsgt	r0, (UNDEF: 14)
    1ba4:	01000008 	tsteq	r0, r8
    1ba8:	02c201e3 	sbceq	r0, r2, #-1073741768	; 0xc0000038
    1bac:	12a80000 	adcne	r0, r8, #0
    1bb0:	02120000 	andseq	r0, r2, #0
    1bb4:	01000008 	tsteq	r0, r8
    1bb8:	004f01e5 	subeq	r0, pc, r5, ror #3
    1bbc:	12c60000 	sbcne	r0, r6, #0
    1bc0:	6f120000 	svcvs	0x00120000
    1bc4:	01000008 	tsteq	r0, r8
    1bc8:	002501e6 	eoreq	r0, r5, r6, ror #3
    1bcc:	12ef0000 	rscne	r0, pc, #0
    1bd0:	30130000 	andscc	r0, r3, r0
    1bd4:	fe00015e 	mcr2	1, 0, r0, cr0, cr14, {2}
    1bd8:	13000007 	movwne	r0, #7
    1bdc:	00015e60 	andeq	r5, r1, r0, ror #28
    1be0:	000007fe 	strdeq	r0, [r0], -lr
    1be4:	015e7413 	cmpeq	lr, r3, lsl r4
    1be8:	0007fe00 	andeq	pc, r7, r0, lsl #28
    1bec:	01110000 	tsteq	r1, r0
    1bf0:	000008e3 	andeq	r0, r0, r3, ror #17
    1bf4:	01014a01 	tsteq	r1, r1, lsl #20
    1bf8:	00000025 	andeq	r0, r0, r5, lsr #32
    1bfc:	00015eac 	andeq	r5, r1, ip, lsr #29
    1c00:	00015fac 	andeq	r5, r1, ip, lsr #31
    1c04:	00001325 	andeq	r1, r0, r5, lsr #6
    1c08:	00051901 	andeq	r1, r5, r1, lsl #18
    1c0c:	08c10e00 	stmiaeq	r1, {r9, sl, fp}^
    1c10:	4a010000 	bmi	41c18 <_HEAP_SIZE+0x21c18>
    1c14:	0002c201 	andeq	ip, r2, r1, lsl #4
    1c18:	00135100 	andseq	r5, r3, r0, lsl #2
    1c1c:	06630e00 	strbteq	r0, [r3], -r0, lsl #28
    1c20:	4b010000 	blmi	41c28 <_HEAP_SIZE+0x21c28>
    1c24:	00011f01 	andeq	r1, r1, r1, lsl #30
    1c28:	0013b100 	andseq	fp, r3, r0, lsl #2
    1c2c:	070c0e00 	streq	r0, [ip, -r0, lsl #28]
    1c30:	4b010000 	blmi	41c38 <_HEAP_SIZE+0x21c38>
    1c34:	00002501 	andeq	r2, r0, r1, lsl #10
    1c38:	00143000 	andseq	r3, r4, r0
    1c3c:	086f1200 	stmdaeq	pc!, {r9, ip}^	; <UNPREDICTABLE>
    1c40:	4d010000 	stcmi	0, cr0, [r1, #-0]
    1c44:	00002501 	andeq	r2, r0, r1, lsl #10
    1c48:	00149c00 	andseq	r9, r4, r0, lsl #24
    1c4c:	06b51200 	ldrteq	r1, [r5], r0, lsl #4
    1c50:	4e010000 	cdpmi	0, 0, cr0, cr1, cr0, {0}
    1c54:	00004f01 	andeq	r4, r0, r1, lsl #30
    1c58:	0014ba00 	andseq	fp, r4, r0, lsl #20
    1c5c:	5f001500 	svcpl	0x00001500
    1c60:	07cc0001 	strbeq	r0, [ip, r1]
    1c64:	049a0000 	ldreq	r0, [sl], #0
    1c68:	01100000 	tsteq	r0, r0
    1c6c:	550a0351 	strpl	r0, [sl, #-849]	; 0xfffffcaf
    1c70:	50011001 	andpl	r1, r1, r1
    1c74:	7dac0305 	stcvc	3, cr0, [ip, #20]!
    1c78:	13000001 	movwne	r0, #1
    1c7c:	00015f24 	andeq	r5, r1, r4, lsr #30
    1c80:	000007fe 	strdeq	r0, [r0], -lr
    1c84:	015f3815 	cmpeq	pc, r5, lsl r8	; <UNPREDICTABLE>
    1c88:	0007e500 	andeq	lr, r7, r0, lsl #10
    1c8c:	0004b800 	andeq	fp, r4, r0, lsl #16
    1c90:	51011000 	mrspl	r1, (UNDEF: 1)
    1c94:	1fff0a03 	svcne	0x00ff0a03
    1c98:	5f501500 	svcpl	0x00501500
    1c9c:	03a20001 			; <UNDEFINED> instruction: 0x03a20001
    1ca0:	04cc0000 	strbeq	r0, [ip], #0
    1ca4:	01100000 	tsteq	r0, r0
    1ca8:	00750250 	rsbseq	r0, r5, r0, asr r2
    1cac:	5f641500 	svcpl	0x00641500
    1cb0:	07e50001 	strbeq	r0, [r5, r1]!
    1cb4:	04e00000 	strbteq	r0, [r0], #0
    1cb8:	01100000 	tsteq	r0, r0
    1cbc:	00740251 	rsbseq	r0, r4, r1, asr r2
    1cc0:	5f7c1500 	svcpl	0x007c1500
    1cc4:	07cc0001 	strbeq	r0, [ip, r1]
    1cc8:	04fe0000 	ldrbteq	r0, [lr], #0
    1ccc:	01100000 	tsteq	r0, r0
    1cd0:	530a0351 	movwpl	r0, #41809	; 0xa351
    1cd4:	50011001 	andpl	r1, r1, r1
    1cd8:	7dac0305 	stcvc	3, cr0, [ip, #20]!
    1cdc:	0f000001 	svceq	0x00000001
    1ce0:	00015fa0 	andeq	r5, r1, r0, lsr #31
    1ce4:	000007cc 	andeq	r0, r0, ip, asr #15
    1ce8:	03510110 	cmpeq	r1, #16, 2
    1cec:	1001540a 	andne	r5, r1, sl, lsl #8
    1cf0:	03055001 	movweq	r5, #20481	; 0x5001
    1cf4:	00017dac 	andeq	r7, r1, ip, lsr #27
    1cf8:	01170000 	tsteq	r7, r0
    1cfc:	000007ee 	andeq	r0, r0, lr, ror #15
    1d00:	01021e01 	tsteq	r2, r1, lsl #28
    1d04:	0000008f 	andeq	r0, r0, pc, lsl #1
    1d08:	00015fac 	andeq	r5, r1, ip, lsr #31
    1d0c:	0001616c 	andeq	r6, r1, ip, ror #2
    1d10:	000014d8 	ldrdeq	r1, [r0], -r8
    1d14:	0006a901 	andeq	sl, r6, r1, lsl #18
    1d18:	08c10e00 	stmiaeq	r1, {r9, sl, fp}^
    1d1c:	1e010000 	cdpne	0, 0, cr0, cr1, cr0, {0}
    1d20:	0002c202 	andeq	ip, r2, r2, lsl #4
    1d24:	00150400 	andseq	r0, r5, r0, lsl #8
    1d28:	07590e00 	ldrbeq	r0, [r9, -r0, lsl #28]
    1d2c:	1e010000 	cdpne	0, 0, cr0, cr1, cr0, {0}
    1d30:	00004f02 	andeq	r4, r0, r2, lsl #30
    1d34:	00159000 	andseq	r9, r5, r0
    1d38:	08481400 	stmdaeq	r8, {sl, ip}^
    1d3c:	20010000 	andcs	r0, r1, r0
    1d40:	00002c02 	andeq	r2, r0, r2, lsl #24
    1d44:	06c11200 	strbeq	r1, [r1], r0, lsl #4
    1d48:	21010000 	mrscs	r0, (UNDEF: 1)
    1d4c:	00004f02 	andeq	r4, r0, r2, lsl #30
    1d50:	00161c00 	andseq	r1, r6, r0, lsl #24
    1d54:	07551200 	ldrbeq	r1, [r5, -r0, lsl #4]
    1d58:	22010000 	andcs	r0, r1, #0
    1d5c:	00004f02 	andeq	r4, r0, r2, lsl #30
    1d60:	00163a00 	andseq	r3, r6, r0, lsl #20
    1d64:	08f01200 	ldmeq	r0!, {r9, ip}^
    1d68:	23010000 	movwcs	r0, #4096	; 0x1000
    1d6c:	00004f02 	andeq	r4, r0, r2, lsl #30
    1d70:	00164d00 	andseq	r4, r6, r0, lsl #26
    1d74:	066d1200 	strbteq	r1, [sp], -r0, lsl #4
    1d78:	24010000 	strcs	r0, [r1], #-0
    1d7c:	00004f02 	andeq	r4, r0, r2, lsl #30
    1d80:	00166000 	andseq	r6, r6, r0
    1d84:	087d1200 	ldmdaeq	sp!, {r9, ip}^
    1d88:	25010000 	strcs	r0, [r1, #-0]
    1d8c:	00002c02 	andeq	r2, r0, r2, lsl #24
    1d90:	00166000 	andseq	r6, r6, r0
    1d94:	08141200 	ldmdaeq	r4, {r9, ip}
    1d98:	26010000 	strcs	r0, [r1], -r0
    1d9c:	00004f02 	andeq	r4, r0, r2, lsl #30
    1da0:	00168c00 	andseq	r8, r6, r0, lsl #24
    1da4:	06ff1200 	ldrbteq	r1, [pc], r0, lsl #4
    1da8:	27010000 	strcs	r0, [r1, -r0]
    1dac:	00004f02 	andeq	r4, r0, r2, lsl #30
    1db0:	0016c600 	andseq	ip, r6, r0, lsl #12
    1db4:	074d1200 	strbeq	r1, [sp, -r0, lsl #4]
    1db8:	28010000 	stmdacs	r1, {}	; <UNPREDICTABLE>
    1dbc:	00004f02 	andeq	r4, r0, r2, lsl #30
    1dc0:	0016e700 	andseq	lr, r6, r0, lsl #14
    1dc4:	06771200 	ldrbteq	r1, [r7], -r0, lsl #4
    1dc8:	29010000 	stmdbcs	r1, {}	; <UNPREDICTABLE>
    1dcc:	00004f02 	andeq	r4, r0, r2, lsl #30
    1dd0:	0016fa00 	andseq	pc, r6, r0, lsl #20
    1dd4:	60241500 	eorvs	r1, r4, r0, lsl #10
    1dd8:	07cc0001 	strbeq	r0, [ip, r1]
    1ddc:	060b0000 	streq	r0, [fp], -r0
    1de0:	01100000 	tsteq	r0, r0
    1de4:	ac030550 	cfstr32ge	mvfx0, [r3], {80}	; 0x50
    1de8:	0000017d 	andeq	r0, r0, sp, ror r1
    1dec:	01606413 	cmneq	r0, r3, lsl r4
    1df0:	0007fe00 	andeq	pc, r7, r0, lsl #28
    1df4:	60ec1500 	rscvs	r1, ip, r0, lsl #10
    1df8:	07fe0001 	ldrbeq	r0, [lr, r1]!
    1dfc:	06280000 	strteq	r0, [r8], -r0
    1e00:	01100000 	tsteq	r0, r0
    1e04:	00740250 	rsbseq	r0, r4, r0, asr r2
    1e08:	60fc1500 	rscsvs	r1, ip, r0, lsl #10
    1e0c:	07e50001 	strbeq	r0, [r5, r1]!
    1e10:	063c0000 	ldrteq	r0, [ip], -r0
    1e14:	01100000 	tsteq	r0, r0
    1e18:	00740250 	rsbseq	r0, r4, r0, asr r2
    1e1c:	610c1500 	tstvs	ip, r0, lsl #10
    1e20:	07e50001 	strbeq	r0, [r5, r1]!
    1e24:	06510000 	ldrbeq	r0, [r1], -r0
    1e28:	01100000 	tsteq	r0, r0
    1e2c:	4c910351 	ldcmi	3, cr0, [r1], {81}	; 0x51
    1e30:	1c150006 	ldcne	0, cr0, [r5], {6}
    1e34:	e5000161 	str	r0, [r0, #-353]	; 0xfffffe9f
    1e38:	66000007 	strvs	r0, [r0], -r7
    1e3c:	10000006 	andne	r0, r0, r6
    1e40:	7d035101 	stfvcs	f5, [r3, #-4]
    1e44:	15000600 	strne	r0, [r0, #-1536]	; 0xfffffa00
    1e48:	00016128 	andeq	r6, r1, r8, lsr #2
    1e4c:	000007fe 	strdeq	r0, [r0], -lr
    1e50:	0000067a 	andeq	r0, r0, sl, ror r6
    1e54:	02500110 	subseq	r0, r0, #16, 2
    1e58:	15000074 	strne	r0, [r0, #-116]	; 0xffffff8c
    1e5c:	00016138 	andeq	r6, r1, r8, lsr r1
    1e60:	000007e5 	andeq	r0, r0, r5, ror #15
    1e64:	0000068e 	andeq	r0, r0, lr, lsl #13
    1e68:	02500110 	subseq	r0, r0, #16, 2
    1e6c:	0f000074 	svceq	0x00000074
    1e70:	00016154 	andeq	r6, r1, r4, asr r1
    1e74:	000007cc 	andeq	r0, r0, ip, asr #15
    1e78:	03510110 	cmpeq	r1, #16, 2
    1e7c:	10022e0a 	andne	r2, r2, sl, lsl #28
    1e80:	03055001 	movweq	r5, #20481	; 0x5001
    1e84:	00017dac 	andeq	r7, r1, ip, lsr #27
    1e88:	01180000 	tsteq	r8, r0
    1e8c:	000006cc 	andeq	r0, r0, ip, asr #13
    1e90:	8f018501 	svchi	0x00018501
    1e94:	6c000000 	stcvs	0, cr0, [r0], {-0}
    1e98:	90000161 	andls	r0, r0, r1, ror #2
    1e9c:	0d000162 	stfeqs	f0, [r0, #-392]	; 0xfffffe78
    1ea0:	01000017 	tsteq	r0, r7, lsl r0
    1ea4:	000007b9 			; <UNDEFINED> instruction: 0x000007b9
    1ea8:	0008c119 	andeq	ip, r8, r9, lsl r1
    1eac:	c2850100 	addgt	r0, r5, #0, 2
    1eb0:	2d000002 	stccs	0, cr0, [r0, #-8]
    1eb4:	19000017 	stmdbne	r0, {r0, r1, r2, r4}
    1eb8:	000006ae 	andeq	r0, r0, lr, lsr #13
    1ebc:	07b98601 	ldreq	r8, [r9, r1, lsl #12]!
    1ec0:	17770000 	ldrbne	r0, [r7, -r0]!
    1ec4:	30190000 	andscc	r0, r9, r0
    1ec8:	01000008 	tsteq	r0, r8
    1ecc:	00004f86 	andeq	r4, r0, r6, lsl #31
    1ed0:	0017e800 	andseq	lr, r7, r0, lsl #16
    1ed4:	08291a00 	stmdaeq	r9!, {r9, fp, ip}
    1ed8:	88010000 	stmdahi	r1, {}	; <UNPREDICTABLE>
    1edc:	0000008f 	andeq	r0, r0, pc, lsl #1
    1ee0:	0000183b 	andeq	r1, r0, fp, lsr r8
    1ee4:	0008b41a 	andeq	fp, r8, sl, lsl r4
    1ee8:	4f890100 	svcmi	0x00890100
    1eec:	59000000 	stmdbpl	r0, {}	; <UNPREDICTABLE>
    1ef0:	1a000018 	bne	1f58 <_SUPERVISOR_STACK_SIZE+0x1758>
    1ef4:	00000759 	andeq	r0, r0, r9, asr r7
    1ef8:	004f8a01 	subeq	r8, pc, r1, lsl #20
    1efc:	18870000 	stmne	r7, {}	; <UNPREDICTABLE>
    1f00:	e4150000 	ldr	r0, [r5], #-0
    1f04:	19000161 	stmdbne	r0, {r0, r5, r6, r8}
    1f08:	35000005 	strcc	r0, [r0, #-5]
    1f0c:	10000007 	andne	r0, r0, r7
    1f10:	74025001 	strvc	r5, [r2], #-1
    1f14:	fc130000 	ldc2	0, cr0, [r3], {-0}
    1f18:	fe000161 	cdp2	1, 0, cr0, cr0, cr1, {3}
    1f1c:	13000007 	movwne	r0, #7
    1f20:	00016210 	andeq	r6, r1, r0, lsl r2
    1f24:	000007e5 	andeq	r0, r0, r5, ror #15
    1f28:	01622015 	cmneq	r2, r5, lsl r0
    1f2c:	0007e500 	andeq	lr, r7, r0, lsl #10
    1f30:	00075a00 	andeq	r5, r7, r0, lsl #20
    1f34:	51011000 	mrspl	r1, (UNDEF: 1)
    1f38:	15003801 	strne	r3, [r0, #-2049]	; 0xfffff7ff
    1f3c:	00016230 	andeq	r6, r1, r0, lsr r2
    1f40:	000007e5 	andeq	r0, r0, r5, ror #15
    1f44:	0000076d 	andeq	r0, r0, sp, ror #14
    1f48:	01510110 	cmpeq	r1, r0, lsl r1
    1f4c:	40150031 	andsmi	r0, r5, r1, lsr r0
    1f50:	e5000162 	str	r0, [r0, #-354]	; 0xfffffe9e
    1f54:	82000007 	andhi	r0, r0, #7
    1f58:	10000007 	andne	r0, r0, r7
    1f5c:	0a035101 	beq	d6368 <_HEAP_SIZE+0xb6368>
    1f60:	15001fff 	strne	r1, [r0, #-4095]	; 0xfffff001
    1f64:	0001625c 	andeq	r6, r1, ip, asr r2
    1f68:	000007cc 	andeq	r0, r0, ip, asr #15
    1f6c:	0000079f 	muleq	r0, pc, r7	; <UNPREDICTABLE>
    1f70:	02510110 	subseq	r0, r1, #16, 2
    1f74:	01109008 	tsteq	r0, r8
    1f78:	ac030550 	cfstr32ge	mvfx0, [r3], {80}	; 0x50
    1f7c:	0000017d 	andeq	r0, r0, sp, ror r1
    1f80:	01627c0f 	cmneq	r2, pc, lsl #24
    1f84:	0007cc00 	andeq	ip, r7, r0, lsl #24
    1f88:	51011000 	mrspl	r1, (UNDEF: 1)
    1f8c:	108f0802 	addne	r0, pc, r2, lsl #16
    1f90:	03055001 	movweq	r5, #20481	; 0x5001
    1f94:	00017dac 	andeq	r7, r1, ip, lsr #27
    1f98:	04040000 	streq	r0, [r4], #-0
    1f9c:	000000dc 	ldrdeq	r0, [r0], -ip
    1fa0:	00081f1b 	andeq	r1, r8, fp, lsl pc
    1fa4:	254a0400 	strbcs	r0, [sl, #-1024]	; 0xfffffc00
    1fa8:	01000000 	mrseq	r0, (UNDEF: 0)
    1fac:	45011c01 	strmi	r1, [r1, #-3073]	; 0xfffff3ff
    1fb0:	04000006 	streq	r0, [r0], #-6
    1fb4:	e501014b 	str	r0, [r1, #-331]	; 0xfffffeb5
    1fb8:	0b000007 	bleq	1fdc <_SUPERVISOR_STACK_SIZE+0x17dc>
    1fbc:	00000084 	andeq	r0, r0, r4, lsl #1
    1fc0:	00008f0b 	andeq	r8, r0, fp, lsl #30
    1fc4:	011c0000 	tsteq	ip, r0
    1fc8:	000001b0 			; <UNDEFINED> instruction: 0x000001b0
    1fcc:	0101ed05 	tsteq	r1, r5, lsl #26
    1fd0:	000007fe 	strdeq	r0, [r0], -lr
    1fd4:	00004f0b 	andeq	r4, r0, fp, lsl #30
    1fd8:	004f0b00 	subeq	r0, pc, r0, lsl #22
    1fdc:	1d000000 	stcne	0, cr0, [r0, #-0]
    1fe0:	00020e01 	andeq	r0, r2, r1, lsl #28
    1fe4:	01e90500 	mvneq	r0, r0, lsl #10
    1fe8:	0000004f 	andeq	r0, r0, pc, asr #32
    1fec:	004f0b01 	subeq	r0, pc, r1, lsl #22
    1ff0:	00000000 	andeq	r0, r0, r0
    1ff4:	00000136 	andeq	r0, r0, r6, lsr r1
    1ff8:	094d0002 	stmdbeq	sp, {r1}^
    1ffc:	01040000 	mrseq	r0, (UNDEF: 4)
    2000:	00000000 	andeq	r0, r0, r0
    2004:	0008fa01 	andeq	pc, r8, r1, lsl #20
    2008:	00076e00 	andeq	r6, r7, r0, lsl #28
    200c:	01629000 	cmneq	r2, r0
    2010:	0162ac00 	cmneq	r2, r0, lsl #24
    2014:	00091700 	andeq	r1, r9, r0, lsl #14
    2018:	08010200 	stmdaeq	r1, {r9}
    201c:	000001a2 	andeq	r0, r0, r2, lsr #3
    2020:	36317503 	ldrtcc	r7, [r1], -r3, lsl #10
    2024:	375b0200 	ldrbcc	r0, [fp, -r0, lsl #4]
    2028:	02000000 	andeq	r0, r0, #0
    202c:	01fb0702 	mvnseq	r0, r2, lsl #14
    2030:	75030000 	strvc	r0, [r3, #-0]
    2034:	02003233 	andeq	r3, r0, #805306371	; 0x30000003
    2038:	0000495c 	andeq	r4, r0, ip, asr r9
    203c:	07040200 	streq	r0, [r4, -r0, lsl #4]
    2040:	000002eb 	andeq	r0, r0, fp, ror #5
    2044:	e6070802 	str	r0, [r7], -r2, lsl #16
    2048:	02000002 	andeq	r0, r0, #2
    204c:	01ab0801 			; <UNDEFINED> instruction: 0x01ab0801
    2050:	02020000 	andeq	r0, r2, #0
    2054:	0003bb05 	andeq	fp, r3, r5, lsl #22
    2058:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
    205c:	00000393 	muleq	r0, r3, r3
    2060:	8e050802 	cdphi	8, 0, cr0, cr5, cr2, {0}
    2064:	04000003 	streq	r0, [r0], #-3
    2068:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
    206c:	10050074 	andne	r0, r5, r4, ror r0
    2070:	c0011003 	andgt	r1, r1, r3
    2074:	06000000 	streq	r0, [r0], -r0
    2078:	000008ab 	andeq	r0, r0, fp, lsr #17
    207c:	2c011103 	stfcss	f1, [r1], {3}
    2080:	02000000 	andeq	r0, r0, #0
    2084:	62060023 	andvs	r0, r6, #35	; 0x23
    2088:	03000007 	movweq	r0, #7
    208c:	003e0112 	eorseq	r0, lr, r2, lsl r1
    2090:	23020000 	movwcs	r0, #8192	; 0x2000
    2094:	08620604 	stmdaeq	r2!, {r2, r9, sl}^
    2098:	13030000 	movwne	r0, #12288	; 0x3000
    209c:	00003e01 	andeq	r3, r0, r1, lsl #28
    20a0:	08230200 	stmdaeq	r3!, {r9}
    20a4:	00072b06 	andeq	r2, r7, r6, lsl #22
    20a8:	01140300 	tsteq	r4, r0, lsl #6
    20ac:	00000073 	andeq	r0, r0, r3, ror r0
    20b0:	000c2302 	andeq	r2, ip, r2, lsl #6
    20b4:	0006a607 	andeq	sl, r6, r7, lsl #12
    20b8:	01160300 	tsteq	r6, r0, lsl #6
    20bc:	0000007a 	andeq	r0, r0, sl, ror r0
    20c0:	f0070402 			; <UNDEFINED> instruction: 0xf0070402
    20c4:	08000002 	stmdaeq	r0, {r1}
    20c8:	00090a01 	andeq	r0, r9, r1, lsl #20
    20cc:	015a0100 	cmpeq	sl, r0, lsl #2
    20d0:	0000011b 	andeq	r0, r0, fp, lsl r1
    20d4:	00016290 	muleq	r1, r0, r2
    20d8:	000162ac 	andeq	r6, r1, ip, lsr #5
    20dc:	01007d02 	tsteq	r0, r2, lsl #26
    20e0:	0000011b 	andeq	r0, r0, fp, lsl r1
    20e4:	0008ab09 	andeq	sl, r8, r9, lsl #22
    20e8:	2c5a0100 	ldfcse	f0, [sl], {-0}
    20ec:	9e000000 	cdpls	0, 0, cr0, cr0, cr0, {0}
    20f0:	0a000018 	beq	2158 <_STACK_SIZE+0x158>
    20f4:	00000933 	andeq	r0, r0, r3, lsr r9
    20f8:	011b5c01 	tsteq	fp, r1, lsl #24
    20fc:	18bf0000 	ldmne	pc!, {}	; <UNPREDICTABLE>
    2100:	6b0b0000 	blvs	2c2108 <__stack+0x1041b8>
    2104:	01000002 	tsteq	r0, r2
    2108:	0000735e 	andeq	r7, r0, lr, asr r3
    210c:	0c000000 	stceq	0, cr0, [r0], {-0}
    2110:	0000c004 	andeq	ip, r0, r4
    2114:	00c00d00 	sbceq	r0, r0, r0, lsl #26
    2118:	012c0000 	teqeq	ip, r0
    211c:	000e0000 	andeq	r0, lr, r0
    2120:	00091f0f 	andeq	r1, r9, pc, lsl #30
    2124:	21480100 	mrscs	r0, (UNDEF: 88)
    2128:	01000001 	tsteq	r0, r1
    212c:	00bd0001 	adcseq	r0, sp, r1
    2130:	00020000 	andeq	r0, r2, r0
    2134:	00000a1e 	andeq	r0, r0, lr, lsl sl
    2138:	00000104 	andeq	r0, r0, r4, lsl #2
    213c:	3a010000 	bcc	42144 <_HEAP_SIZE+0x22144>
    2140:	12000009 	andne	r0, r0, #9
    2144:	ac000000 	stcge	0, cr0, [r0], {-0}
    2148:	bc000162 	stflts	f0, [r0], {98}	; 0x62
    214c:	86000162 	strhi	r0, [r0], -r2, ror #2
    2150:	02000009 	andeq	r0, r0, #9
    2154:	02003875 	andeq	r3, r0, #7667712	; 0x750000
    2158:	00002f5a 	andeq	r2, r0, sl, asr pc
    215c:	08010300 	stmdaeq	r1, {r8, r9}
    2160:	000001a2 	andeq	r0, r0, r2, lsr #3
    2164:	fb070203 	blx	1c297a <__stack+0x4a2a>
    2168:	02000001 	andeq	r0, r0, #1
    216c:	00323375 	eorseq	r3, r2, r5, ror r3
    2170:	00485c02 	subeq	r5, r8, r2, lsl #24
    2174:	04030000 	streq	r0, [r3], #-0
    2178:	0002eb07 	andeq	lr, r2, r7, lsl #22
    217c:	07080300 	streq	r0, [r8, -r0, lsl #6]
    2180:	000002e6 	andeq	r0, r0, r6, ror #5
    2184:	ab080103 	blge	202598 <__stack+0x44648>
    2188:	03000001 	movweq	r0, #1
    218c:	03bb0502 			; <UNDEFINED> instruction: 0x03bb0502
    2190:	04030000 	streq	r0, [r3], #-0
    2194:	00039305 	andeq	r9, r3, r5, lsl #6
    2198:	05080300 	streq	r0, [r8, #-768]	; 0xfffffd00
    219c:	0000038e 	andeq	r0, r0, lr, lsl #7
    21a0:	69050404 	stmdbvs	r5, {r2, sl}
    21a4:	0500746e 	streq	r7, [r0, #-1134]	; 0xfffffb92
    21a8:	00008601 	andeq	r8, r0, r1, lsl #12
    21ac:	01100100 	tsteq	r0, r0, lsl #2
    21b0:	000162ac 	andeq	r6, r1, ip, lsr #5
    21b4:	000162bc 			; <UNDEFINED> instruction: 0x000162bc
    21b8:	01007d02 	tsteq	r0, r2, lsl #26
    21bc:	000000aa 	andeq	r0, r0, sl, lsr #1
    21c0:	01006306 	tsteq	r0, r6, lsl #6
    21c4:	00005610 	andeq	r5, r0, r0, lsl r6
    21c8:	0018eb00 	andseq	lr, r8, r0, lsl #22
    21cc:	62bc0700 	adcsvs	r0, ip, #0, 14
    21d0:	aa010001 	bge	421dc <_HEAP_SIZE+0x221dc>
    21d4:	00000000 	andeq	r0, r0, r0
    21d8:	09440108 	stmdbeq	r4, {r3, r8}^
    21dc:	94030000 	strls	r0, [r3], #-0
    21e0:	09010101 	stmdbeq	r1, {r0, r8}
    21e4:	0000003d 	andeq	r0, r0, sp, lsr r0
    21e8:	00002509 	andeq	r2, r0, r9, lsl #10
    21ec:	3e000000 	cdpcc	0, 0, cr0, cr0, cr0, {0}
    21f0:	02000001 	andeq	r0, r0, #1
    21f4:	000aa400 	andeq	sl, sl, r0, lsl #8
    21f8:	00010400 	andeq	r0, r1, r0, lsl #8
    21fc:	01000000 	mrseq	r0, (UNDEF: 0)
    2200:	000009ac 	andeq	r0, r0, ip, lsr #19
    2204:	00000012 	andeq	r0, r0, r2, lsl r0
    2208:	000162bc 			; <UNDEFINED> instruction: 0x000162bc
    220c:	00016300 	andeq	r6, r1, r0, lsl #6
    2210:	000009f3 	strdeq	r0, [r0], -r3
    2214:	a2080102 	andge	r0, r8, #-2147483648	; 0x80000000
    2218:	02000001 	andeq	r0, r0, #1
    221c:	01fb0702 	mvnseq	r0, r2, lsl #14
    2220:	04020000 	streq	r0, [r2], #-0
    2224:	0002eb07 	andeq	lr, r2, r7, lsl #22
    2228:	07080200 	streq	r0, [r8, -r0, lsl #4]
    222c:	000002e6 	andeq	r0, r0, r6, ror #5
    2230:	ab080102 	blge	202640 <__stack+0x446f0>
    2234:	02000001 	andeq	r0, r0, #1
    2238:	03bb0502 			; <UNDEFINED> instruction: 0x03bb0502
    223c:	04020000 	streq	r0, [r2], #-0
    2240:	00039305 	andeq	r9, r3, r5, lsl #6
    2244:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
    2248:	0000038e 	andeq	r0, r0, lr, lsl #7
    224c:	00095503 	andeq	r5, r9, r3, lsl #10
    2250:	68520200 	ldmdavs	r2, {r9}^
    2254:	04000000 	streq	r0, [r0], #-0
    2258:	00006e04 	andeq	r6, r0, r4, lsl #28
    225c:	7f010500 	svcvc	0x00010500
    2260:	06000000 	streq	r0, [r0], -r0
    2264:	0000007f 	andeq	r0, r0, pc, ror r0
    2268:	00008a06 	andeq	r8, r0, r6, lsl #20
    226c:	04040000 	streq	r0, [r4], #-0
    2270:	00000085 	andeq	r0, r0, r5, lsl #1
    2274:	00004107 	andeq	r4, r0, r7, lsl #2
    2278:	05040800 	streq	r0, [r4, #-2048]	; 0xfffff800
    227c:	00746e69 	rsbseq	r6, r4, r9, ror #28
    2280:	06450109 	strbeq	r0, [r5], -r9, lsl #2
    2284:	6b010000 	blvs	4228c <_HEAP_SIZE+0x2228c>
    2288:	0162bc01 	cmneq	r2, r1, lsl #24
    228c:	0162f000 	msreq	SPSR_x, r0
    2290:	00190c00 	andseq	r0, r9, r0, lsl #24
    2294:	00de0100 	sbcseq	r0, lr, r0, lsl #2
    2298:	7e0a0000 	cdpvc	0, 0, cr0, cr10, cr0, {0}
    229c:	01000009 	tsteq	r0, r9
    22a0:	00007f6b 	andeq	r7, r0, fp, ror #30
    22a4:	00192c00 	andseq	r2, r9, r0, lsl #24
    22a8:	01250a00 	teqeq	r5, r0, lsl #20
    22ac:	6b010000 	blvs	422b4 <_HEAP_SIZE+0x222b4>
    22b0:	0000008a 	andeq	r0, r0, sl, lsl #1
    22b4:	0000194d 	andeq	r1, r0, sp, asr #18
    22b8:	0162d80b 	cmneq	r2, fp, lsl #16
    22bc:	51010c00 	tstpl	r1, r0, lsl #24
    22c0:	5101f303 	tstpl	r1, r3, lsl #6
    22c4:	0350010c 	cmpeq	r0, #12, 2
    22c8:	005001f3 	ldrsheq	r0, [r0], #-19	; 0xffffffed
    22cc:	68010d00 	stmdavs	r1, {r8, sl, fp}
    22d0:	01000009 	tsteq	r0, r9
    22d4:	62f00186 	rscsvs	r0, r0, #-2147483615	; 0x80000021
    22d8:	63000001 	movwvs	r0, #1
    22dc:	7d020001 	stcvc	0, cr0, [r2, #-4]
    22e0:	01050100 	mrseq	r0, (UNDEF: 21)
    22e4:	950e0000 	strls	r0, [lr, #-0]
    22e8:	01000009 	tsteq	r0, r9
    22ec:	00005d86 	andeq	r5, r0, r6, lsl #27
    22f0:	00500100 	subseq	r0, r0, r0, lsl #2
    22f4:	0009830f 	andeq	r8, r9, pc, lsl #6
    22f8:	5d580100 	ldfple	f0, [r8, #-0]
    22fc:	05000000 	streq	r0, [r0, #-0]
    2300:	19ae5003 	stmibne	lr!, {r0, r1, ip, lr}
    2304:	081f1000 	ldmdaeq	pc, {ip}	; <UNPREDICTABLE>
    2308:	4e010000 	cdpmi	0, 0, cr0, cr1, cr0, {0}
    230c:	00000128 	andeq	r0, r0, r8, lsr #2
    2310:	44030501 	strmi	r0, [r3], #-1281	; 0xfffffaff
    2314:	020019bf 	andeq	r1, r0, #3129344	; 0x2fc000
    2318:	02f00704 	rscseq	r0, r0, #4, 14	; 0x100000
    231c:	9d100000 	ldcls	0, cr0, [r0, #-0]
    2320:	01000009 	tsteq	r0, r9
    2324:	00008a55 	andeq	r8, r0, r5, asr sl
    2328:	03050100 	movweq	r0, #20736	; 0x5100
    232c:	00017dc4 	andeq	r7, r1, r4, asr #27
    2330:	0000f100 	andeq	pc, r0, r0, lsl #2
    2334:	82000200 	andhi	r0, r0, #0, 4
    2338:	0400000b 	streq	r0, [r0], #-11
    233c:	00000001 	andeq	r0, r0, r1
    2340:	09b90100 	ldmibeq	r9!, {r8}
    2344:	076e0000 	strbeq	r0, [lr, -r0]!
    2348:	0a4b0000 	beq	12c2350 <__stack+0x1104400>
    234c:	01020000 	mrseq	r0, (UNDEF: 2)
    2350:	0001a208 	andeq	sl, r1, r8, lsl #4
    2354:	31750300 	cmncc	r5, r0, lsl #6
    2358:	5b010036 	blpl	42438 <_HEAP_SIZE+0x22438>
    235c:	0000002f 	andeq	r0, r0, pc, lsr #32
    2360:	fb070202 	blx	1c2b72 <__stack+0x4c22>
    2364:	03000001 	movweq	r0, #1
    2368:	00323375 	eorseq	r3, r2, r5, ror r3
    236c:	00415c01 	subeq	r5, r1, r1, lsl #24
    2370:	04020000 	streq	r0, [r2], #-0
    2374:	0002eb07 	andeq	lr, r2, r7, lsl #22
    2378:	07080200 	streq	r0, [r8, -r0, lsl #4]
    237c:	000002e6 	andeq	r0, r0, r6, ror #5
    2380:	ab080102 	blge	202790 <__stack+0x44840>
    2384:	02000001 	andeq	r0, r0, #1
    2388:	03bb0502 			; <UNDEFINED> instruction: 0x03bb0502
    238c:	04020000 	streq	r0, [r2], #-0
    2390:	00039305 	andeq	r9, r3, r5, lsl #6
    2394:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
    2398:	0000038e 	andeq	r0, r0, lr, lsl #7
    239c:	69050404 	stmdbvs	r5, {r2, sl}
    23a0:	0500746e 	streq	r7, [r0, #-1134]	; 0xfffffb92
    23a4:	01100210 	tsteq	r0, r0, lsl r2
    23a8:	000000b8 	strheq	r0, [r0], -r8
    23ac:	0008ab06 	andeq	sl, r8, r6, lsl #22
    23b0:	01110200 	tsteq	r1, r0, lsl #4
    23b4:	00000024 	andeq	r0, r0, r4, lsr #32
    23b8:	06002302 	streq	r2, [r0], -r2, lsl #6
    23bc:	00000762 	andeq	r0, r0, r2, ror #14
    23c0:	36011202 	strcc	r1, [r1], -r2, lsl #4
    23c4:	02000000 	andeq	r0, r0, #0
    23c8:	62060423 	andvs	r0, r6, #587202560	; 0x23000000
    23cc:	02000008 	andeq	r0, r0, #8
    23d0:	00360113 	eorseq	r0, r6, r3, lsl r1
    23d4:	23020000 	movwcs	r0, #8192	; 0x2000
    23d8:	072b0608 	streq	r0, [fp, -r8, lsl #12]!
    23dc:	14020000 	strne	r0, [r2], #-0
    23e0:	00006b01 	andeq	r6, r0, r1, lsl #22
    23e4:	0c230200 	sfmeq	f0, 4, [r3], #-0
    23e8:	06a60700 	strteq	r0, [r6], r0, lsl #14
    23ec:	16020000 	strne	r0, [r2], -r0
    23f0:	00007201 	andeq	r7, r0, r1, lsl #4
    23f4:	07040200 	streq	r0, [r4, -r0, lsl #4]
    23f8:	000002f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    23fc:	0000b808 	andeq	fp, r0, r8, lsl #16
    2400:	0000db00 	andeq	sp, r0, r0, lsl #22
    2404:	00db0900 	sbcseq	r0, fp, r0, lsl #18
    2408:	00000000 	andeq	r0, r0, r0
    240c:	e2070402 	and	r0, r7, #33554432	; 0x2000000
    2410:	0a000005 	beq	242c <_STACK_SIZE+0x42c>
    2414:	0000091f 	andeq	r0, r0, pc, lsl r9
    2418:	00cb1603 	sbceq	r1, fp, r3, lsl #12
    241c:	05010000 	streq	r0, [r1, #-0]
    2420:	017dc803 	cmneq	sp, r3, lsl #16
    2424:	01590000 	cmpeq	r9, r0
    2428:	00020000 	andeq	r0, r2, r0
    242c:	00000c01 	andeq	r0, r0, r1, lsl #24
    2430:	00000104 	andeq	r0, r0, r4, lsl #2
    2434:	d6010000 	strle	r0, [r1], -r0
    2438:	6e000009 	cdpvs	0, 0, cr0, cr0, cr9, {0}
    243c:	00000007 	andeq	r0, r0, r7
    2440:	5c000163 	stfpls	f0, [r0], {99}	; 0x63
    2444:	a4000163 	strge	r0, [r0], #-355	; 0xfffffe9d
    2448:	0200000a 	andeq	r0, r0, #10
    244c:	02003875 	andeq	r3, r0, #7667712	; 0x750000
    2450:	00002f5a 	andeq	r2, r0, sl, asr pc
    2454:	08010300 	stmdaeq	r1, {r8, r9}
    2458:	000001a2 	andeq	r0, r0, r2, lsr #3
    245c:	fb070203 	blx	1c2c72 <__stack+0x4d22>
    2460:	02000001 	andeq	r0, r0, #1
    2464:	00323375 	eorseq	r3, r2, r5, ror r3
    2468:	00485c02 	subeq	r5, r8, r2, lsl #24
    246c:	04030000 	streq	r0, [r3], #-0
    2470:	0002eb07 	andeq	lr, r2, r7, lsl #22
    2474:	07080300 	streq	r0, [r8, -r0, lsl #6]
    2478:	000002e6 	andeq	r0, r0, r6, ror #5
    247c:	ab080103 	blge	202890 <__stack+0x44940>
    2480:	03000001 	movweq	r0, #1
    2484:	03bb0502 			; <UNDEFINED> instruction: 0x03bb0502
    2488:	04030000 	streq	r0, [r3], #-0
    248c:	00039305 	andeq	r9, r3, r5, lsl #6
    2490:	05080300 	streq	r0, [r8, #-768]	; 0xfffffd00
    2494:	0000038e 	andeq	r0, r0, lr, lsl #7
    2498:	69050404 	stmdbvs	r5, {r2, sl}
    249c:	0500746e 	streq	r7, [r0, #-1134]	; 0xfffffb92
    24a0:	00094401 	andeq	r4, r9, r1, lsl #8
    24a4:	01520100 	cmpeq	r2, r0, lsl #2
    24a8:	00016300 	andeq	r6, r1, r0, lsl #6
    24ac:	00016330 	andeq	r6, r1, r0, lsr r3
    24b0:	0000196e 	andeq	r1, r0, lr, ror #18
    24b4:	0000dd01 	andeq	sp, r0, r1, lsl #26
    24b8:	07620600 	strbeq	r0, [r2, -r0, lsl #12]!
    24bc:	52010000 	andpl	r0, r1, #0
    24c0:	0000003d 	andeq	r0, r0, sp, lsr r0
    24c4:	0000198e 	andeq	r1, r0, lr, lsl #19
    24c8:	00049d06 	andeq	r9, r4, r6, lsl #26
    24cc:	25520100 	ldrbcs	r0, [r2, #-256]	; 0xffffff00
    24d0:	ac000000 	stcge	0, cr0, [r0], {-0}
    24d4:	07000019 	smladeq	r0, r9, r0, r0
    24d8:	00016318 	andeq	r6, r1, r8, lsl r3
    24dc:	0000012f 	andeq	r0, r0, pc, lsr #2
    24e0:	000000c5 	andeq	r0, r0, r5, asr #1
    24e4:	02500108 	subseq	r0, r0, #8, 2
    24e8:	09000074 	stmdbeq	r0, {r2, r4, r5, r6}
    24ec:	00016330 	andeq	r6, r1, r0, lsr r3
    24f0:	00014701 	andeq	r4, r1, r1, lsl #14
    24f4:	51010800 	tstpl	r1, r0, lsl #16
    24f8:	08007602 	stmdaeq	r0, {r1, r9, sl, ip, sp, lr}
    24fc:	75025001 	strvc	r5, [r2, #-1]
    2500:	0a000030 	beq	25c8 <_STACK_SIZE+0x5c8>
    2504:	0009c501 	andeq	ip, r9, r1, lsl #10
    2508:	016c0100 	cmneq	ip, r0, lsl #2
    250c:	00000025 	andeq	r0, r0, r5, lsr #32
    2510:	00016330 	andeq	r6, r1, r0, lsr r3
    2514:	0001635c 	andeq	r6, r1, ip, asr r3
    2518:	000019cd 	andeq	r1, r0, sp, asr #19
    251c:	00012f01 	andeq	r2, r1, r1, lsl #30
    2520:	07620600 	strbeq	r0, [r2, -r0, lsl #12]!
    2524:	6c010000 	stcvs	0, cr0, [r1], {-0}
    2528:	0000003d 	andeq	r0, r0, sp, lsr r0
    252c:	000019ed 	andeq	r1, r0, sp, ror #19
    2530:	01634407 	cmneq	r3, r7, lsl #8
    2534:	00012f00 	andeq	r2, r1, r0, lsl #30
    2538:	00011e00 	andeq	r1, r1, r0, lsl #28
    253c:	50010800 	andpl	r0, r1, r0, lsl #16
    2540:	00007402 	andeq	r7, r0, r2, lsl #8
    2544:	0163540b 	cmneq	r3, fp, lsl #8
    2548:	00012f00 	andeq	r2, r1, r0, lsl #30
    254c:	50010800 	andpl	r0, r1, r0, lsl #16
    2550:	00307502 	eorseq	r7, r0, r2, lsl #10
    2554:	0e010c00 	cdpeq	12, 0, cr0, cr1, cr0, {0}
    2558:	03000002 	movweq	r0, #2
    255c:	003d01e9 	eorseq	r0, sp, r9, ror #3
    2560:	47010000 	strmi	r0, [r1, -r0]
    2564:	0d000001 	stceq	0, cr0, [r0, #-4]
    2568:	0000003d 	andeq	r0, r0, sp, lsr r0
    256c:	b0010e00 	andlt	r0, r1, r0, lsl #28
    2570:	03000001 	movweq	r0, #1
    2574:	0d0101ed 	stfeqs	f0, [r1, #-948]	; 0xfffffc4c
    2578:	0000003d 	andeq	r0, r0, sp, lsr r0
    257c:	00003d0d 	andeq	r3, r0, sp, lsl #26
    2580:	99000000 	stmdbls	r0, {}	; <UNPREDICTABLE>
    2584:	02000000 	andeq	r0, r0, #0
    2588:	000cdc00 	andeq	sp, ip, r0, lsl #24
    258c:	00010400 	andeq	r0, r1, r0, lsl #8
    2590:	01000000 	mrseq	r0, (UNDEF: 0)
    2594:	000009ea 	andeq	r0, r0, sl, ror #19
    2598:	00000012 	andeq	r0, r0, r2, lsl r0
    259c:	000175ac 	andeq	r7, r1, ip, lsr #11
    25a0:	000175b0 			; <UNDEFINED> instruction: 0x000175b0
    25a4:	00000b21 	andeq	r0, r0, r1, lsr #22
    25a8:	a4060102 	strge	r0, [r6], #-258	; 0xfffffefe
    25ac:	02000001 	andeq	r0, r0, #1
    25b0:	01a20801 			; <UNDEFINED> instruction: 0x01a20801
    25b4:	02020000 	andeq	r0, r2, #0
    25b8:	0003bb05 	andeq	fp, r3, r5, lsl #22
    25bc:	07020200 	streq	r0, [r2, -r0, lsl #4]
    25c0:	000001fb 	strdeq	r0, [r0], -fp
    25c4:	69050403 	stmdbvs	r5, {r0, r1, sl}
    25c8:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
    25cc:	02f00704 	rscseq	r0, r0, #4, 14	; 0x100000
    25d0:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    25d4:	00038e05 	andeq	r8, r3, r5, lsl #28
    25d8:	07080200 	streq	r0, [r8, -r0, lsl #4]
    25dc:	000002e6 	andeq	r0, r0, r6, ror #5
    25e0:	93050402 	movwls	r0, #21506	; 0x5402
    25e4:	02000003 	andeq	r0, r0, #3
    25e8:	05e20704 	strbeq	r0, [r2, #1796]!	; 0x704
    25ec:	04020000 	streq	r0, [r2], #-0
    25f0:	0002eb07 	andeq	lr, r2, r7, lsl #22
    25f4:	08010200 	stmdaeq	r1, {r9}
    25f8:	000001ab 	andeq	r0, r0, fp, lsr #3
    25fc:	09f20104 	ldmibeq	r2!, {r2, r8}^
    2600:	11020000 	mrsne	r0, (UNDEF: 2)
    2604:	0175ac01 	cmneq	r5, r1, lsl #24
    2608:	0175b000 	cmneq	r5, r0
    260c:	007d0200 	rsbseq	r0, sp, r0, lsl #4
    2610:	09e30501 	stmibeq	r3!, {r0, r8, sl}^
    2614:	2f010000 	svccs	0x00010000
    2618:	00000041 	andeq	r0, r0, r1, asr #32
    261c:	00005001 	andeq	r5, r0, r1
    2620:	000000e5 	andeq	r0, r0, r5, ror #1
    2624:	0d2d0002 	stceq	0, cr0, [sp, #-8]!
    2628:	01040000 	mrseq	r0, (UNDEF: 4)
    262c:	00000000 	andeq	r0, r0, r0
    2630:	0009fd01 	andeq	pc, r9, r1, lsl #26
    2634:	00001200 	andeq	r1, r0, r0, lsl #4
    2638:	0175b000 	cmneq	r5, r0
    263c:	0175dc00 	cmneq	r5, r0, lsl #24
    2640:	000bd600 	andeq	sp, fp, r0, lsl #12
    2644:	06010200 	streq	r0, [r1], -r0, lsl #4
    2648:	000001a4 	andeq	r0, r0, r4, lsr #3
    264c:	a2080102 	andge	r0, r8, #-2147483648	; 0x80000000
    2650:	02000001 	andeq	r0, r0, #1
    2654:	03bb0502 			; <UNDEFINED> instruction: 0x03bb0502
    2658:	02020000 	andeq	r0, r2, #0
    265c:	0001fb07 	andeq	pc, r1, r7, lsl #22
    2660:	05040300 	streq	r0, [r4, #-768]	; 0xfffffd00
    2664:	00746e69 	rsbseq	r6, r4, r9, ror #28
    2668:	f0070402 			; <UNDEFINED> instruction: 0xf0070402
    266c:	02000002 	andeq	r0, r0, #2
    2670:	038e0508 	orreq	r0, lr, #8, 10	; 0x2000000
    2674:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    2678:	0002e607 	andeq	lr, r2, r7, lsl #12
    267c:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
    2680:	00000393 	muleq	r0, r3, r3
    2684:	e2070402 	and	r0, r7, #33554432	; 0x2000000
    2688:	02000005 	andeq	r0, r0, #5
    268c:	02eb0704 	rsceq	r0, fp, #4, 14	; 0x100000
    2690:	21040000 	mrscs	r0, (UNDEF: 4)
    2694:	0200000a 	andeq	r0, r0, #10
    2698:	00007d7e 	andeq	r7, r0, lr, ror sp
    269c:	83040500 	movwhi	r0, #17664	; 0x4500
    26a0:	02000000 	andeq	r0, r0, #0
    26a4:	01ab0801 			; <UNDEFINED> instruction: 0x01ab0801
    26a8:	01060000 	mrseq	r0, (UNDEF: 6)
    26ac:	00000a0f 	andeq	r0, r0, pc, lsl #20
    26b0:	72013001 	andvc	r3, r1, #1
    26b4:	b0000000 	andlt	r0, r0, r0
    26b8:	dc000175 	stfles	f0, [r0], {117}	; 0x75
    26bc:	02000175 	andeq	r0, r0, #1073741853	; 0x4000001d
    26c0:	d501007d 	strle	r0, [r1, #-125]	; 0xffffff83
    26c4:	07000000 	streq	r0, [r0, -r0]
    26c8:	000009f8 	strdeq	r0, [r0], -r8
    26cc:	00413001 	subeq	r3, r1, r1
    26d0:	1a0b0000 	bne	2c26d8 <__stack+0x104788>
    26d4:	0a080000 	beq	2026dc <__stack+0x4478c>
    26d8:	0100000a 	tsteq	r0, sl
    26dc:	0000d532 	andeq	sp, r0, r2, lsr r5
    26e0:	88030500 	stmdahi	r3, {r8, sl}
    26e4:	080019ae 	stmdaeq	r0, {r1, r2, r3, r5, r7, r8, fp, ip}
    26e8:	00000a05 	andeq	r0, r0, r5, lsl #20
    26ec:	00d53301 	sbcseq	r3, r5, r1, lsl #6
    26f0:	53010000 	movwpl	r0, #4096	; 0x1000
    26f4:	2c040500 	cfstr32cs	mvfx0, [r4], {-0}
    26f8:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
    26fc:	00000a15 	andeq	r0, r0, r5, lsl sl
    2700:	00412d01 	subeq	r2, r1, r1, lsl #26
    2704:	01010000 	mrseq	r0, (UNDEF: 1)
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0c3f012e 	ldfeqs	f0, [pc], #-184	; ffffff64 <CPU_ARM_BIT_CNTES_C+0x7fffff64>
  18:	0b3a0e03 	bleq	e8382c <__stack+0xcc58dc>
  1c:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
  20:	01120111 	tsteq	r2, r1, lsl r1
  24:	42970640 	addsmi	r0, r7, #64, 12	; 0x4000000
  28:	0013010c 	andseq	r0, r3, ip, lsl #2
  2c:	00050300 	andeq	r0, r5, r0, lsl #6
  30:	0b3a0803 	bleq	e82044 <__stack+0xcc40f4>
  34:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  38:	00000602 	andeq	r0, r0, r2, lsl #12
  3c:	01828904 	orreq	r8, r2, r4, lsl #18
  40:	31011100 	mrscc	r1, (UNDEF: 17)
  44:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
  48:	0b0b000f 	bleq	2c008c <__stack+0x10213c>
  4c:	00001349 	andeq	r1, r0, r9, asr #6
  50:	0b002406 	bleq	9070 <OS_EventTaskRdy+0xc8>
  54:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
  58:	0700000e 	streq	r0, [r0, -lr]
  5c:	0c3f012e 	ldfeqs	f0, [pc], #-184	; ffffffac <CPU_ARM_BIT_CNTES_C+0x7fffffac>
  60:	0b3a0e03 	bleq	e83874 <__stack+0xcc5924>
  64:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
  68:	00000c3c 	andeq	r0, r0, ip, lsr ip
  6c:	49000508 	stmdbmi	r0, {r3, r8, sl}
  70:	00000013 	andeq	r0, r0, r3, lsl r0
  74:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
  78:	030b130e 	movweq	r1, #45838	; 0xb30e
  7c:	110e1b0e 	tstne	lr, lr, lsl #22
  80:	10011201 	andne	r1, r1, r1, lsl #4
  84:	02000006 	andeq	r0, r0, #6
  88:	0b0b0024 	bleq	2c0120 <__stack+0x1021d0>
  8c:	0e030b3e 	vmoveq.16	d3[0], r0
  90:	16030000 	strne	r0, [r3], -r0
  94:	3a080300 	bcc	200c9c <__stack+0x42d4c>
  98:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  9c:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
  a0:	0c3f012e 	ldfeqs	f0, [pc], #-184	; fffffff0 <CPU_ARM_BIT_CNTES_C+0x7ffffff0>
  a4:	0b3a0e03 	bleq	e838b8 <__stack+0xcc5968>
  a8:	0c27053b 	cfstr32eq	mvfx0, [r7], #-236	; 0xffffff14
  ac:	13010b20 	movwne	r0, #6944	; 0x1b20
  b0:	34050000 	strcc	r0, [r5], #-0
  b4:	3a0e0300 	bcc	380cbc <__stack+0x1c2d6c>
  b8:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
  bc:	06000013 			; <UNDEFINED> instruction: 0x06000013
  c0:	0000010b 	andeq	r0, r0, fp, lsl #2
  c4:	3f002e07 	svccc	0x00002e07
  c8:	3a0e030c 	bcc	380d00 <__stack+0x1c2db0>
  cc:	27053b0b 	strcs	r3, [r5, -fp, lsl #22]
  d0:	000b200c 	andeq	r2, fp, ip
  d4:	00050800 	andeq	r0, r5, r0, lsl #16
  d8:	0b3a0803 	bleq	e820ec <__stack+0xcc419c>
  dc:	1349053b 	movtne	r0, #38203	; 0x953b
  e0:	2e090000 	cdpcs	0, 0, cr0, cr9, cr0, {0}
  e4:	030c3f01 	movweq	r3, #52993	; 0xcf01
  e8:	3b0b3a0e 	blcc	2ce928 <__stack+0x1109d8>
  ec:	110c270b 	tstne	ip, fp, lsl #14
  f0:	40011201 	andmi	r1, r1, r1, lsl #4
  f4:	0c429706 	mcrreq	7, 0, r9, r2, cr6
  f8:	00001301 	andeq	r1, r0, r1, lsl #6
  fc:	0300050a 	movweq	r0, #1290	; 0x50a
 100:	3b0b3a08 	blcc	2ce928 <__stack+0x1109d8>
 104:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 108:	0b000006 	bleq	128 <CPU_ARM_CTRL_INT_DIS+0x68>
 10c:	08030005 	stmdaeq	r3, {r0, r2}
 110:	0b3b0b3a 	bleq	ec2e00 <__stack+0xd04eb0>
 114:	0a021349 	beq	84e40 <_HEAP_SIZE+0x64e40>
 118:	340c0000 	strcc	r0, [ip], #-0
 11c:	3a0e0300 	bcc	380d24 <__stack+0x1c2dd4>
 120:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 124:	000b1c13 	andeq	r1, fp, r3, lsl ip
 128:	00340d00 	eorseq	r0, r4, r0, lsl #26
 12c:	0b3a0803 	bleq	e82140 <__stack+0xcc41f0>
 130:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 134:	00000602 	andeq	r0, r0, r2, lsl #12
 138:	0300340e 	movweq	r3, #1038	; 0x40e
 13c:	3b0b3a0e 	blcc	2ce97c <__stack+0x110a2c>
 140:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 144:	0f00000a 	svceq	0x0000000a
 148:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 14c:	0b3b0b3a 	bleq	ec2e3c <__stack+0xd04eec>
 150:	0d1c1349 	ldceq	3, cr1, [ip, #-292]	; 0xfffffedc
 154:	89100000 	ldmdbhi	r0, {}	; <UNPREDICTABLE>
 158:	11000182 	smlabbne	r0, r2, r1, r0
 15c:	00133101 	andseq	r3, r3, r1, lsl #2
 160:	00261100 	eoreq	r1, r6, r0, lsl #2
 164:	00001349 	andeq	r1, r0, r9, asr #6
 168:	0b000f12 	bleq	3db8 <_STACK_SIZE+0x1db8>
 16c:	0013490b 	andseq	r4, r3, fp, lsl #18
 170:	00351300 	eorseq	r1, r5, r0, lsl #6
 174:	00001349 	andeq	r1, r0, r9, asr #6
 178:	3f012e14 	svccc	0x00012e14
 17c:	3a0e030c 	bcc	380db4 <__stack+0x1c2e64>
 180:	27053b0b 	strcs	r3, [r5, -fp, lsl #22]
 184:	1201110c 	andne	r1, r1, #12, 2
 188:	97064001 	strls	r4, [r6, -r1]
 18c:	13010c42 	movwne	r0, #7234	; 0x1c42
 190:	05150000 	ldreq	r0, [r5, #-0]
 194:	3a080300 	bcc	200d9c <__stack+0x42e4c>
 198:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 19c:	00060213 	andeq	r0, r6, r3, lsl r2
 1a0:	00051600 	andeq	r1, r5, r0, lsl #12
 1a4:	0b3a0803 	bleq	e821b8 <__stack+0xcc4268>
 1a8:	1349053b 	movtne	r0, #38203	; 0x953b
 1ac:	00000a02 	andeq	r0, r0, r2, lsl #20
 1b0:	03003417 	movweq	r3, #1047	; 0x417
 1b4:	3b0b3a0e 	blcc	2ce9f4 <__stack+0x110aa4>
 1b8:	1c134905 	ldcne	9, cr4, [r3], {5}
 1bc:	1800000b 	stmdane	r0, {r0, r1, r3}
 1c0:	08030034 	stmdaeq	r3, {r2, r4, r5}
 1c4:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 1c8:	06021349 	streq	r1, [r2], -r9, asr #6
 1cc:	34190000 	ldrcc	r0, [r9], #-0
 1d0:	3a0e0300 	bcc	380dd8 <__stack+0x1c2e88>
 1d4:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 1d8:	000a0213 	andeq	r0, sl, r3, lsl r2
 1dc:	00341a00 	eorseq	r1, r4, r0, lsl #20
 1e0:	0b3a0e03 	bleq	e839f4 <__stack+0xcc5aa4>
 1e4:	1349053b 	movtne	r0, #38203	; 0x953b
 1e8:	00000d1c 	andeq	r0, r0, ip, lsl sp
 1ec:	3f012e1b 	svccc	0x00012e1b
 1f0:	3a0e030c 	bcc	380e28 <__stack+0x1c2ed8>
 1f4:	27053b0b 	strcs	r3, [r5, -fp, lsl #22]
 1f8:	1201110c 	andne	r1, r1, #12, 2
 1fc:	96064001 	strls	r4, [r6], -r1
 200:	13010c42 	movwne	r0, #7234	; 0x1c42
 204:	341c0000 	ldrcc	r0, [ip], #-0
 208:	3a0e0300 	bcc	380e10 <__stack+0x1c2ec0>
 20c:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 210:	00060213 	andeq	r0, r6, r3, lsl r2
 214:	010b1d00 	tsteq	fp, r0, lsl #26
 218:	01120111 	tsteq	r2, r1, lsl r1
 21c:	0b1e0000 	bleq	780224 <__stack+0x5c22d4>
 220:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
 224:	00130101 	andseq	r0, r3, r1, lsl #2
 228:	012e1f00 	teqeq	lr, r0, lsl #30
 22c:	01111331 	tsteq	r1, r1, lsr r3
 230:	0a400112 	beq	1000680 <__stack+0xe42730>
 234:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
 238:	20000013 	andcs	r0, r0, r3, lsl r0
 23c:	13310005 	teqne	r1, #5
 240:	00000602 	andeq	r0, r0, r2, lsl #12
 244:	3f012e21 	svccc	0x00012e21
 248:	3a0e030c 	bcc	380e80 <__stack+0x1c2f30>
 24c:	27053b0b 	strcs	r3, [r5, -fp, lsl #22]
 250:	1201110c 	andne	r1, r1, #12, 2
 254:	970a4001 	strls	r4, [sl, -r1]
 258:	13010c42 	movwne	r0, #7234	; 0x1c42
 25c:	34220000 	strtcc	r0, [r2], #-0
 260:	02133100 	andseq	r3, r3, #0, 2
 264:	2300000a 	movwcs	r0, #10
 268:	13310034 	teqne	r1, #52	; 0x34
 26c:	00000602 	andeq	r0, r0, r2, lsl #12
 270:	31002e24 	tstcc	r0, r4, lsr #28
 274:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 278:	970a4001 	strls	r4, [sl, -r1]
 27c:	00000c42 	andeq	r0, r0, r2, asr #24
 280:	01828925 	orreq	r8, r2, r5, lsr #18
 284:	31011101 	tstcc	r1, r1, lsl #2
 288:	00130113 	andseq	r0, r3, r3, lsl r1
 28c:	828a2600 	addhi	r2, sl, #0, 12
 290:	0a020001 	beq	8029c <_HEAP_SIZE+0x6029c>
 294:	000a4291 	muleq	sl, r1, r2
 298:	011d2700 	tsteq	sp, r0, lsl #14
 29c:	01111331 	tsteq	r1, r1, lsr r3
 2a0:	0b580112 	bleq	16006f0 <__stack+0x14427a0>
 2a4:	13010559 	movwne	r0, #5465	; 0x1559
 2a8:	89280000 	stmdbhi	r8!, {}	; <UNPREDICTABLE>
 2ac:	11000182 	smlabbne	r0, r2, r1, r0
 2b0:	0c429501 	cfstr64eq	mvdx9, [r2], {1}
 2b4:	00001331 	andeq	r1, r0, r1, lsr r3
 2b8:	31001d29 	tstcc	r0, r9, lsr #26
 2bc:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 2c0:	590b5801 	stmdbpl	fp, {r0, fp, ip, lr}
 2c4:	2a000005 	bcs	2e0 <CPU_ARM_CTRL_INT_DIS+0x220>
 2c8:	01018289 	smlabbeq	r1, r9, r2, r8
 2cc:	13310111 	teqne	r1, #1073741828	; 0x40000004
 2d0:	052b0000 	streq	r0, [fp, #-0]!
 2d4:	02133100 	andseq	r3, r3, #0, 2
 2d8:	2c00000a 	stccs	0, cr0, [r0], {10}
 2dc:	0c3f012e 	ldfeqs	f0, [pc], #-184	; 22c <CPU_ARM_CTRL_INT_DIS+0x16c>
 2e0:	0b3a0e03 	bleq	e83af4 <__stack+0xcc5ba4>
 2e4:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
 2e8:	01120111 	tsteq	r2, r1, lsl r1
 2ec:	42970a40 	addsmi	r0, r7, #64, 20	; 0x40000
 2f0:	0013010c 	andseq	r0, r3, ip, lsl #2
 2f4:	011d2d00 	tsteq	sp, r0, lsl #26
 2f8:	01111331 	tsteq	r1, r1, lsr r3
 2fc:	0b580112 	bleq	160074c <__stack+0x14427fc>
 300:	13010b59 	movwne	r0, #7001	; 0x1b59
 304:	2e2e0000 	cdpcs	0, 2, cr0, cr14, cr0, {0}
 308:	030c3f01 	movweq	r3, #52993	; 0xcf01
 30c:	3b0b3a0e 	blcc	2ceb4c <__stack+0x110bfc>
 310:	490c270b 	stmdbmi	ip, {r0, r1, r3, r8, r9, sl, sp}
 314:	010c3c13 	tsteq	ip, r3, lsl ip
 318:	2f000013 	svccs	0x00000013
 31c:	13490005 	movtne	r0, #36869	; 0x9005
 320:	2e300000 	cdpcs	0, 3, cr0, cr0, cr0, {0}
 324:	030c3f01 	movweq	r3, #52993	; 0xcf01
 328:	3b0b3a0e 	blcc	2ceb68 <__stack+0x110c18>
 32c:	3c0c270b 	stccc	7, cr2, [ip], {11}
 330:	0000000c 	andeq	r0, r0, ip
 334:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 338:	030b130e 	movweq	r1, #45838	; 0xb30e
 33c:	110e1b0e 	tstne	lr, lr, lsl #22
 340:	10011201 	andne	r1, r1, r1, lsl #4
 344:	02000006 	andeq	r0, r0, #6
 348:	08030016 	stmdaeq	r3, {r1, r2, r4}
 34c:	0b3b0b3a 	bleq	ec303c <__stack+0xd050ec>
 350:	00001349 	andeq	r1, r0, r9, asr #6
 354:	0b002403 	bleq	9368 <OS_EventTaskWaitMulti+0xcc>
 358:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 35c:	0400000e 	streq	r0, [r0], #-14
 360:	0b0b0024 	bleq	2c03f8 <__stack+0x1024a8>
 364:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
 368:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
 36c:	030c3f01 	movweq	r3, #52993	; 0xcf01
 370:	3b0b3a0e 	blcc	2cebb0 <__stack+0x110c60>
 374:	490c2705 	stmdbmi	ip, {r0, r2, r8, r9, sl, sp}
 378:	010b2013 	tsteq	fp, r3, lsl r0
 37c:	06000013 			; <UNDEFINED> instruction: 0x06000013
 380:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 384:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 388:	00001349 	andeq	r1, r0, r9, asr #6
 38c:	3f012e07 	svccc	0x00012e07
 390:	3a0e030c 	bcc	380fc8 <__stack+0x1c3078>
 394:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 398:	010b200c 	tsteq	fp, ip
 39c:	08000013 	stmdaeq	r0, {r0, r1, r4}
 3a0:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 3a4:	0b3b0b3a 	bleq	ec3094 <__stack+0xd05144>
 3a8:	00001349 	andeq	r1, r0, r9, asr #6
 3ac:	3f012e09 	svccc	0x00012e09
 3b0:	3a0e030c 	bcc	380fe8 <__stack+0x1c3098>
 3b4:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 3b8:	2013490c 	andscs	r4, r3, ip, lsl #18
 3bc:	0013010b 	andseq	r0, r3, fp, lsl #2
 3c0:	00340a00 	eorseq	r0, r4, r0, lsl #20
 3c4:	0b3a0e03 	bleq	e83bd8 <__stack+0xcc5c88>
 3c8:	1349053b 	movtne	r0, #38203	; 0x953b
 3cc:	2e0b0000 	cdpcs	0, 0, cr0, cr11, cr0, {0}
 3d0:	030c3f01 	movweq	r3, #52993	; 0xcf01
 3d4:	3b0b3a0e 	blcc	2cec14 <__stack+0x110cc4>
 3d8:	490c270b 	stmdbmi	ip, {r0, r1, r3, r8, r9, sl, sp}
 3dc:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 3e0:	970a4001 	strls	r4, [sl, -r1]
 3e4:	13010c42 	movwne	r0, #7234	; 0x1c42
 3e8:	050c0000 	streq	r0, [ip, #-0]
 3ec:	3a0e0300 	bcc	380ff4 <__stack+0x1c30a4>
 3f0:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 3f4:	00060213 	andeq	r0, r6, r3, lsl r2
 3f8:	012e0d00 	teqeq	lr, r0, lsl #26
 3fc:	01111331 	tsteq	r1, r1, lsr r3
 400:	0a400112 	beq	1000850 <__stack+0xe42900>
 404:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
 408:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
 40c:	13310005 	teqne	r1, #5
 410:	00000602 	andeq	r0, r0, r2, lsl #12
 414:	3f012e0f 	svccc	0x00012e0f
 418:	3a0e030c 	bcc	381050 <__stack+0x1c3100>
 41c:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 420:	1201110c 	andne	r1, r1, #12, 2
 424:	970a4001 	strls	r4, [sl, -r1]
 428:	13010c42 	movwne	r0, #7234	; 0x1c42
 42c:	05100000 	ldreq	r0, [r0, #-0]
 430:	3a0e0300 	bcc	381038 <__stack+0x1c30e8>
 434:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 438:	000a0213 	andeq	r0, sl, r3, lsl r2
 43c:	00051100 	andeq	r1, r5, r0, lsl #2
 440:	0a021331 	beq	8510c <_HEAP_SIZE+0x6510c>
 444:	34120000 	ldrcc	r0, [r2], #-0
 448:	3a0e0300 	bcc	381050 <__stack+0x1c3100>
 44c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 450:	13000013 	movwne	r0, #19
 454:	1331011d 	teqne	r1, #1073741831	; 0x40000007
 458:	01120111 	tsteq	r2, r1, lsl r1
 45c:	0b590b58 	bleq	16431c4 <__stack+0x1485274>
 460:	00001301 	andeq	r1, r0, r1, lsl #6
 464:	31011d14 	tstcc	r1, r4, lsl sp
 468:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 46c:	590b5801 	stmdbpl	fp, {r0, fp, ip, lr}
 470:	1500000b 	strne	r0, [r0, #-11]
 474:	0c3f012e 	ldfeqs	f0, [pc], #-184	; 3c4 <CPU_ARM_CTRL_INT_DIS+0x304>
 478:	0b3a0e03 	bleq	e83c8c <__stack+0xcc5d3c>
 47c:	0c27053b 	cfstr32eq	mvfx0, [r7], #-236	; 0xffffff14
 480:	01111349 	tsteq	r1, r9, asr #6
 484:	0a400112 	beq	10008d4 <__stack+0xe42984>
 488:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
 48c:	16000013 			; <UNDEFINED> instruction: 0x16000013
 490:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 494:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 498:	06021349 	streq	r1, [r2], -r9, asr #6
 49c:	34170000 	ldrcc	r0, [r7], #-0
 4a0:	3a0e0300 	bcc	3810a8 <__stack+0x1c3158>
 4a4:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 4a8:	000a0213 	andeq	r0, sl, r3, lsl r2
 4ac:	011d1800 	tsteq	sp, r0, lsl #16
 4b0:	01111331 	tsteq	r1, r1, lsr r3
 4b4:	0b580112 	bleq	1600904 <__stack+0x14429b4>
 4b8:	13010559 	movwne	r0, #5465	; 0x1559
 4bc:	1d190000 	ldcne	0, cr0, [r9, #-0]
 4c0:	11133101 	tstne	r3, r1, lsl #2
 4c4:	58011201 	stmdapl	r1, {r0, r9, ip}
 4c8:	0005590b 	andeq	r5, r5, fp, lsl #18
 4cc:	010b1a00 	tsteq	fp, r0, lsl #20
 4d0:	00000655 	andeq	r0, r0, r5, asr r6
 4d4:	3100341b 	tstcc	r0, fp, lsl r4
 4d8:	00060213 	andeq	r0, r6, r3, lsl r2
 4dc:	012e1c00 	teqeq	lr, r0, lsl #24
 4e0:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 4e4:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 4e8:	01110c27 	tsteq	r1, r7, lsr #24
 4ec:	0a400112 	beq	100093c <__stack+0xe429ec>
 4f0:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
 4f4:	1d000013 	stcne	0, cr0, [r0, #-76]	; 0xffffffb4
 4f8:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 4fc:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 500:	0a021349 	beq	8522c <_HEAP_SIZE+0x6522c>
 504:	2e1e0000 	cdpcs	0, 1, cr0, cr14, cr0, {0}
 508:	11133101 	tstne	r3, r1, lsl #2
 50c:	40011201 	andmi	r1, r1, r1, lsl #4
 510:	0c42970a 	mcrreq	7, 0, r9, r2, cr10
 514:	01000000 	mrseq	r0, (UNDEF: 0)
 518:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
 51c:	0e030b13 	vmoveq.32	d3[0], r0
 520:	01110e1b 	tsteq	r1, fp, lsl lr
 524:	06100112 			; <UNDEFINED> instruction: 0x06100112
 528:	24020000 	strcs	r0, [r2], #-0
 52c:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 530:	000e030b 	andeq	r0, lr, fp, lsl #6
 534:	00240300 	eoreq	r0, r4, r0, lsl #6
 538:	0b3e0b0b 	bleq	f8316c <__stack+0xdc521c>
 53c:	00000803 	andeq	r0, r0, r3, lsl #16
 540:	0b000f04 	bleq	4158 <_STACK_SIZE+0x2158>
 544:	0500000b 	streq	r0, [r0, #-11]
 548:	0b0b000f 	bleq	2c058c <__stack+0x10263c>
 54c:	00001349 	andeq	r1, r0, r9, asr #6
 550:	49002606 	stmdbmi	r0, {r1, r2, r9, sl, sp}
 554:	07000013 	smladeq	r0, r3, r0, r0
 558:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 55c:	0b3b0b3a 	bleq	ec324c <__stack+0xd052fc>
 560:	00001349 	andeq	r1, r0, r9, asr #6
 564:	03011308 	movweq	r1, #4872	; 0x1308
 568:	3a0b0b0e 	bcc	2c31a8 <__stack+0x105258>
 56c:	010b3b0b 	tsteq	fp, fp, lsl #22
 570:	09000013 	stmdbeq	r0, {r0, r1, r4}
 574:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
 578:	0a381349 	beq	e052a4 <__stack+0xc47354>
 57c:	00000c34 	andeq	r0, r0, r4, lsr ip
 580:	03000d0a 	movweq	r0, #3338	; 0xd0a
 584:	3b0b3a08 	blcc	2cedac <__stack+0x110e5c>
 588:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
 58c:	0b00000a 	bleq	5bc <_ABORT_STACK_SIZE+0x1bc>
 590:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
 594:	0b3b0b3a 	bleq	ec3284 <__stack+0xd05334>
 598:	0a381349 	beq	e052c4 <__stack+0xc47374>
 59c:	2e0c0000 	cdpcs	0, 0, cr0, cr12, cr0, {0}
 5a0:	3a0e0301 	bcc	3811ac <__stack+0x1c325c>
 5a4:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 5a8:	010b200c 	tsteq	fp, ip
 5ac:	0d000013 	stceq	0, cr0, [r0, #-76]	; 0xffffffb4
 5b0:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 5b4:	0b3b0b3a 	bleq	ec32a4 <__stack+0xd05354>
 5b8:	00001349 	andeq	r1, r0, r9, asr #6
 5bc:	0300050e 	movweq	r0, #1294	; 0x50e
 5c0:	3b0b3a08 	blcc	2cede8 <__stack+0x110e98>
 5c4:	0013490b 	andseq	r4, r3, fp, lsl #18
 5c8:	00340f00 	eorseq	r0, r4, r0, lsl #30
 5cc:	0b3a0803 	bleq	e825e0 <__stack+0xcc4690>
 5d0:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 5d4:	2e100000 	cdpcs	0, 1, cr0, cr0, cr0, {0}
 5d8:	3a0e0301 	bcc	3811e4 <__stack+0x1c3294>
 5dc:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 5e0:	2013490c 	andscs	r4, r3, ip, lsl #18
 5e4:	0013010b 	andseq	r0, r3, fp, lsl #2
 5e8:	012e1100 	teqeq	lr, r0, lsl #2
 5ec:	01111331 	tsteq	r1, r1, lsr r3
 5f0:	06400112 			; <UNDEFINED> instruction: 0x06400112
 5f4:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
 5f8:	12000013 	andne	r0, r0, #19
 5fc:	13310005 	teqne	r1, #5
 600:	00000602 	andeq	r0, r0, r2, lsl #12
 604:	31003413 	tstcc	r0, r3, lsl r4
 608:	14000013 	strne	r0, [r0], #-19	; 0xffffffed
 60c:	1331011d 	teqne	r1, #1073741831	; 0x40000007
 610:	01120111 	tsteq	r2, r1, lsl r1
 614:	0b590b58 	bleq	164337c <__stack+0x148542c>
 618:	0b150000 	bleq	540620 <__stack+0x3826d0>
 61c:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
 620:	16000001 	strne	r0, [r0], -r1
 624:	13310034 	teqne	r1, #52	; 0x34
 628:	00000a02 	andeq	r0, r0, r2, lsl #20
 62c:	31000517 	tstcc	r0, r7, lsl r5
 630:	18000013 	stmdane	r0, {r0, r1, r4}
 634:	00018289 	andeq	r8, r1, r9, lsl #5
 638:	13310111 	teqne	r1, #1073741828	; 0x40000004
 63c:	2e190000 	cdpcs	0, 1, cr0, cr9, cr0, {0}
 640:	3a0e0301 	bcc	38124c <__stack+0x1c32fc>
 644:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 648:	1201110c 	andne	r1, r1, #12, 2
 64c:	96064001 	strls	r4, [r6], -r1
 650:	13010c42 	movwne	r0, #7234	; 0x1c42
 654:	051a0000 	ldreq	r0, [sl, #-0]
 658:	3a080300 	bcc	201260 <__stack+0x43310>
 65c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 660:	00060213 	andeq	r0, r6, r3, lsl r2
 664:	00051b00 	andeq	r1, r5, r0, lsl #22
 668:	0b3a0e03 	bleq	e83e7c <__stack+0xcc5f2c>
 66c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 670:	00000602 	andeq	r0, r0, r2, lsl #12
 674:	0300341c 	movweq	r3, #1052	; 0x41c
 678:	3b0b3a08 	blcc	2ceea0 <__stack+0x110f50>
 67c:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 680:	1d000006 	stcne	0, cr0, [r0, #-24]	; 0xffffffe8
 684:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 688:	0b3b0b3a 	bleq	ec3378 <__stack+0xd05428>
 68c:	0a021349 	beq	853b8 <_HEAP_SIZE+0x653b8>
 690:	891e0000 	ldmdbhi	lr, {}	; <UNPREDICTABLE>
 694:	11010182 	smlabbne	r1, r2, r1, r0
 698:	01133101 	tsteq	r3, r1, lsl #2
 69c:	1f000013 	svcne	0x00000013
 6a0:	0001828a 	andeq	r8, r1, sl, lsl #5
 6a4:	42910a02 	addsmi	r0, r1, #8192	; 0x2000
 6a8:	2000000a 	andcs	r0, r0, sl
 6ac:	01018289 	smlabbeq	r1, r9, r2, r8
 6b0:	13310111 	teqne	r1, #1073741828	; 0x40000004
 6b4:	01210000 	teqeq	r1, r0
 6b8:	01134901 	tsteq	r3, r1, lsl #18
 6bc:	22000013 	andcs	r0, r0, #19
 6c0:	13490021 	movtne	r0, #36897	; 0x9021
 6c4:	00000b2f 	andeq	r0, r0, pc, lsr #22
 6c8:	3f012e23 	svccc	0x00012e23
 6cc:	3a0e030c 	bcc	381304 <__stack+0x1c33b4>
 6d0:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 6d4:	1201110c 	andne	r1, r1, #12, 2
 6d8:	97064001 	strls	r4, [r6, -r1]
 6dc:	13010c42 	movwne	r0, #7234	; 0x1c42
 6e0:	05240000 	streq	r0, [r4, #-0]!
 6e4:	3a0e0300 	bcc	3812ec <__stack+0x1c339c>
 6e8:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 6ec:	000a0213 	andeq	r0, sl, r3, lsl r2
 6f0:	00182500 	andseq	r2, r8, r0, lsl #10
 6f4:	34260000 	strtcc	r0, [r6], #-0
 6f8:	3a0e0300 	bcc	381300 <__stack+0x1c33b0>
 6fc:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 700:	00060213 	andeq	r0, r6, r3, lsl r2
 704:	00342700 	eorseq	r2, r4, r0, lsl #14
 708:	0b3a0803 	bleq	e8271c <__stack+0xcc47cc>
 70c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 710:	00000a02 	andeq	r0, r0, r2, lsl #20
 714:	03000a28 	movweq	r0, #2600	; 0xa28
 718:	3b0b3a0e 	blcc	2cef58 <__stack+0x111008>
 71c:	2900000b 	stmdbcs	r0, {r0, r1, r3}
 720:	1331011d 	teqne	r1, #1073741831	; 0x40000007
 724:	01120111 	tsteq	r2, r1, lsl r1
 728:	0b590b58 	bleq	1643490 <__stack+0x1485540>
 72c:	00001301 	andeq	r1, r0, r1, lsl #6
 730:	55010b2a 	strpl	r0, [r1, #-2858]	; 0xfffff4d6
 734:	2b000006 	blcs	754 <_ABORT_STACK_SIZE+0x354>
 738:	13310034 	teqne	r1, #52	; 0x34
 73c:	00000602 	andeq	r0, r0, r2, lsl #12
 740:	11010b2c 	tstne	r1, ip, lsr #22
 744:	01011201 	tsteq	r1, r1, lsl #4
 748:	2d000013 	stccs	0, cr0, [r0, #-76]	; 0xffffffb4
 74c:	1331011d 	teqne	r1, #1073741831	; 0x40000007
 750:	06550152 			; <UNDEFINED> instruction: 0x06550152
 754:	0b590b58 	bleq	16434bc <__stack+0x148556c>
 758:	00001301 	andeq	r1, r0, r1, lsl #6
 75c:	0300342e 	movweq	r3, #1070	; 0x42e
 760:	3b0b3a0e 	blcc	2cefa0 <__stack+0x111050>
 764:	3f13490b 	svccc	0x0013490b
 768:	000c3c0c 	andeq	r3, ip, ip, lsl #24
 76c:	012e2f00 	teqeq	lr, r0, lsl #30
 770:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 774:	0b3b0b3a 	bleq	ec3464 <__stack+0xd05514>
 778:	0c3c0c27 	ldceq	12, cr0, [ip], #-156	; 0xffffff64
 77c:	00001301 	andeq	r1, r0, r1, lsl #6
 780:	49000530 	stmdbmi	r0, {r4, r5, r8, sl}
 784:	31000013 	tstcc	r0, r3, lsl r0
 788:	0c3f012e 	ldfeqs	f0, [pc], #-184	; 6d8 <_ABORT_STACK_SIZE+0x2d8>
 78c:	0b3a0e03 	bleq	e83fa0 <__stack+0xcc6050>
 790:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
 794:	0c3c1349 	ldceq	3, cr1, [ip], #-292	; 0xfffffedc
 798:	01000000 	mrseq	r0, (UNDEF: 0)
 79c:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
 7a0:	0e030b13 	vmoveq.32	d3[0], r0
 7a4:	01110e1b 	tsteq	r1, fp, lsl lr
 7a8:	06100112 			; <UNDEFINED> instruction: 0x06100112
 7ac:	24020000 	strcs	r0, [r2], #-0
 7b0:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 7b4:	000e030b 	andeq	r0, lr, fp, lsl #6
 7b8:	00160300 	andseq	r0, r6, r0, lsl #6
 7bc:	0b3a0803 	bleq	e827d0 <__stack+0xcc4880>
 7c0:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 7c4:	0f040000 	svceq	0x00040000
 7c8:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 7cc:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
 7d0:	13490026 	movtne	r0, #36902	; 0x9026
 7d4:	24060000 	strcs	r0, [r6], #-0
 7d8:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 7dc:	0008030b 	andeq	r0, r8, fp, lsl #6
 7e0:	01130700 	tsteq	r3, r0, lsl #14
 7e4:	0b3a0b0b 	bleq	e83418 <__stack+0xcc54c8>
 7e8:	1301053b 	movwne	r0, #5435	; 0x153b
 7ec:	0d080000 	stceq	0, cr0, [r8, #-0]
 7f0:	3a0e0300 	bcc	3813f8 <__stack+0x1c34a8>
 7f4:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 7f8:	000a3813 	andeq	r3, sl, r3, lsl r8
 7fc:	00160900 	andseq	r0, r6, r0, lsl #18
 800:	0b3a0e03 	bleq	e84014 <__stack+0xcc60c4>
 804:	1349053b 	movtne	r0, #38203	; 0x953b
 808:	150a0000 	strne	r0, [sl, #-0]
 80c:	010c2701 	tsteq	ip, r1, lsl #14
 810:	0b000013 	bleq	864 <_SUPERVISOR_STACK_SIZE+0x64>
 814:	13490005 	movtne	r0, #36869	; 0x9005
 818:	0f0c0000 	svceq	0x000c0000
 81c:	000b0b00 	andeq	r0, fp, r0, lsl #22
 820:	012e0d00 	teqeq	lr, r0, lsl #26
 824:	0b3a0e03 	bleq	e84038 <__stack+0xcc60e8>
 828:	0c27053b 	cfstr32eq	mvfx0, [r7], #-236	; 0xffffff14
 82c:	01120111 	tsteq	r2, r1, lsl r1
 830:	42970640 	addsmi	r0, r7, #64, 12	; 0x4000000
 834:	0013010c 	andseq	r0, r3, ip, lsl #2
 838:	00050e00 	andeq	r0, r5, r0, lsl #28
 83c:	0b3a0e03 	bleq	e84050 <__stack+0xcc6100>
 840:	1349053b 	movtne	r0, #38203	; 0x953b
 844:	00000602 	andeq	r0, r0, r2, lsl #12
 848:	0182890f 	orreq	r8, r2, pc, lsl #18
 84c:	31011101 	tstcc	r1, r1, lsl #2
 850:	10000013 	andne	r0, r0, r3, lsl r0
 854:	0001828a 	andeq	r8, r1, sl, lsl #5
 858:	42910a02 	addsmi	r0, r1, #8192	; 0x2000
 85c:	1100000a 	tstne	r0, sl
 860:	0c3f012e 	ldfeqs	f0, [pc], #-184	; 7b0 <_ABORT_STACK_SIZE+0x3b0>
 864:	0b3a0e03 	bleq	e84078 <__stack+0xcc6128>
 868:	0c27053b 	cfstr32eq	mvfx0, [r7], #-236	; 0xffffff14
 86c:	01111349 	tsteq	r1, r9, asr #6
 870:	06400112 			; <UNDEFINED> instruction: 0x06400112
 874:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
 878:	12000013 	andne	r0, r0, #19
 87c:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 880:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 884:	06021349 	streq	r1, [r2], -r9, asr #6
 888:	89130000 	ldmdbhi	r3, {}	; <UNPREDICTABLE>
 88c:	11000182 	smlabbne	r0, r2, r1, r0
 890:	00133101 	andseq	r3, r3, r1, lsl #2
 894:	00341400 	eorseq	r1, r4, r0, lsl #8
 898:	0b3a0e03 	bleq	e840ac <__stack+0xcc615c>
 89c:	1349053b 	movtne	r0, #38203	; 0x953b
 8a0:	89150000 	ldmdbhi	r5, {}	; <UNPREDICTABLE>
 8a4:	11010182 	smlabbne	r1, r2, r1, r0
 8a8:	01133101 	tsteq	r3, r1, lsl #2
 8ac:	16000013 			; <UNDEFINED> instruction: 0x16000013
 8b0:	01018289 	smlabbeq	r1, r9, r2, r8
 8b4:	42950111 	addsmi	r0, r5, #1073741828	; 0x40000004
 8b8:	0113310c 	tsteq	r3, ip, lsl #2
 8bc:	17000013 	smladne	r0, r3, r0, r0
 8c0:	0c3f012e 	ldfeqs	f0, [pc], #-184	; 810 <_SUPERVISOR_STACK_SIZE+0x10>
 8c4:	0b3a0e03 	bleq	e840d8 <__stack+0xcc6188>
 8c8:	0c27053b 	cfstr32eq	mvfx0, [r7], #-236	; 0xffffff14
 8cc:	01111349 	tsteq	r1, r9, asr #6
 8d0:	06400112 			; <UNDEFINED> instruction: 0x06400112
 8d4:	010c4296 			; <UNDEFINED> instruction: 0x010c4296
 8d8:	18000013 	stmdane	r0, {r0, r1, r4}
 8dc:	0c3f012e 	ldfeqs	f0, [pc], #-184	; 82c <_SUPERVISOR_STACK_SIZE+0x2c>
 8e0:	0b3a0e03 	bleq	e840f4 <__stack+0xcc61a4>
 8e4:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
 8e8:	01111349 	tsteq	r1, r9, asr #6
 8ec:	06400112 			; <UNDEFINED> instruction: 0x06400112
 8f0:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
 8f4:	19000013 	stmdbne	r0, {r0, r1, r4}
 8f8:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 8fc:	0b3b0b3a 	bleq	ec35ec <__stack+0xd0569c>
 900:	06021349 	streq	r1, [r2], -r9, asr #6
 904:	341a0000 	ldrcc	r0, [sl], #-0
 908:	3a0e0300 	bcc	381510 <__stack+0x1c35c0>
 90c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 910:	00060213 	andeq	r0, r6, r3, lsl r2
 914:	00341b00 	eorseq	r1, r4, r0, lsl #22
 918:	0b3a0e03 	bleq	e8412c <__stack+0xcc61dc>
 91c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 920:	0c3c0c3f 	ldceq	12, cr0, [ip], #-252	; 0xffffff04
 924:	2e1c0000 	cdpcs	0, 1, cr0, cr12, cr0, {0}
 928:	030c3f01 	movweq	r3, #52993	; 0xcf01
 92c:	3b0b3a0e 	blcc	2cf16c <__stack+0x11121c>
 930:	3c0c270b 	stccc	7, cr2, [ip], {11}
 934:	0013010c 	andseq	r0, r3, ip, lsl #2
 938:	012e1d00 	teqeq	lr, r0, lsl #26
 93c:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 940:	0b3b0b3a 	bleq	ec3630 <__stack+0xd056e0>
 944:	13490c27 	movtne	r0, #39975	; 0x9c27
 948:	00000c3c 	andeq	r0, r0, ip, lsr ip
 94c:	01110100 	tsteq	r1, r0, lsl #2
 950:	0b130e25 	bleq	4c41ec <__stack+0x30629c>
 954:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 958:	01120111 	tsteq	r2, r1, lsl r1
 95c:	00000610 	andeq	r0, r0, r0, lsl r6
 960:	0b002402 	bleq	9970 <OS_InitTCBList+0x28>
 964:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 968:	0300000e 	movweq	r0, #14
 96c:	08030016 	stmdaeq	r3, {r1, r2, r4}
 970:	0b3b0b3a 	bleq	ec3660 <__stack+0xd05710>
 974:	00001349 	andeq	r1, r0, r9, asr #6
 978:	0b002404 	bleq	9990 <OS_InitTCBList+0x48>
 97c:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 980:	05000008 	streq	r0, [r0, #-8]
 984:	0b0b0113 	bleq	2c0dd8 <__stack+0x102e88>
 988:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 98c:	00001301 	andeq	r1, r0, r1, lsl #6
 990:	03000d06 	movweq	r0, #3334	; 0xd06
 994:	3b0b3a0e 	blcc	2cf1d4 <__stack+0x111284>
 998:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
 99c:	0700000a 	streq	r0, [r0, -sl]
 9a0:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 9a4:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 9a8:	00001349 	andeq	r1, r0, r9, asr #6
 9ac:	3f012e08 	svccc	0x00012e08
 9b0:	3a0e030c 	bcc	3815e8 <__stack+0x1c3698>
 9b4:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 9b8:	1113490c 	tstne	r3, ip, lsl #18
 9bc:	40011201 	andmi	r1, r1, r1, lsl #4
 9c0:	0c42970a 	mcrreq	7, 0, r9, r2, cr10
 9c4:	00001301 	andeq	r1, r0, r1, lsl #6
 9c8:	03000509 	movweq	r0, #1289	; 0x509
 9cc:	3b0b3a0e 	blcc	2cf20c <__stack+0x1112bc>
 9d0:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 9d4:	0a000006 	beq	9f4 <_SUPERVISOR_STACK_SIZE+0x1f4>
 9d8:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 9dc:	0b3b0b3a 	bleq	ec36cc <__stack+0xd0577c>
 9e0:	06021349 	streq	r1, [r2], -r9, asr #6
 9e4:	340b0000 	strcc	r0, [fp], #-0
 9e8:	3a0e0300 	bcc	3815f0 <__stack+0x1c36a0>
 9ec:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 9f0:	000b1c13 	andeq	r1, fp, r3, lsl ip
 9f4:	000f0c00 	andeq	r0, pc, r0, lsl #24
 9f8:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 9fc:	010d0000 	mrseq	r0, (UNDEF: 13)
 a00:	01134901 	tsteq	r3, r1, lsl #18
 a04:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
 a08:	00000021 	andeq	r0, r0, r1, lsr #32
 a0c:	0300340f 	movweq	r3, #1039	; 0x40f
 a10:	3b0b3a0e 	blcc	2cf250 <__stack+0x111300>
 a14:	3f13490b 	svccc	0x0013490b
 a18:	000c3c0c 	andeq	r3, ip, ip, lsl #24
 a1c:	11010000 	mrsne	r0, (UNDEF: 1)
 a20:	130e2501 	movwne	r2, #58625	; 0xe501
 a24:	1b0e030b 	blne	381658 <__stack+0x1c3708>
 a28:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 a2c:	00061001 	andeq	r1, r6, r1
 a30:	00160200 	andseq	r0, r6, r0, lsl #4
 a34:	0b3a0803 	bleq	e82a48 <__stack+0xcc4af8>
 a38:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 a3c:	24030000 	strcs	r0, [r3], #-0
 a40:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 a44:	000e030b 	andeq	r0, lr, fp, lsl #6
 a48:	00240400 	eoreq	r0, r4, r0, lsl #8
 a4c:	0b3e0b0b 	bleq	f83680 <__stack+0xdc5730>
 a50:	00000803 	andeq	r0, r0, r3, lsl #16
 a54:	3f012e05 	svccc	0x00012e05
 a58:	3a0e030c 	bcc	381690 <__stack+0x1c3740>
 a5c:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 a60:	1201110c 	andne	r1, r1, #12, 2
 a64:	970a4001 	strls	r4, [sl, -r1]
 a68:	13010c42 	movwne	r0, #7234	; 0x1c42
 a6c:	05060000 	streq	r0, [r6, #-0]
 a70:	3a080300 	bcc	201678 <__stack+0x43728>
 a74:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 a78:	00060213 	andeq	r0, r6, r3, lsl r2
 a7c:	82890700 	addhi	r0, r9, #0, 14
 a80:	01110001 	tsteq	r1, r1
 a84:	310c4295 			; <UNDEFINED> instruction: 0x310c4295
 a88:	08000013 	stmdaeq	r0, {r0, r1, r4}
 a8c:	0c3f012e 	ldfeqs	f0, [pc], #-184	; 9dc <_SUPERVISOR_STACK_SIZE+0x1dc>
 a90:	0b3a0e03 	bleq	e842a4 <__stack+0xcc6354>
 a94:	0c27053b 	cfstr32eq	mvfx0, [r7], #-236	; 0xffffff14
 a98:	00000c3c 	andeq	r0, r0, ip, lsr ip
 a9c:	49000509 	stmdbmi	r0, {r0, r3, r8, sl}
 aa0:	00000013 	andeq	r0, r0, r3, lsl r0
 aa4:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 aa8:	030b130e 	movweq	r1, #45838	; 0xb30e
 aac:	110e1b0e 	tstne	lr, lr, lsl #22
 ab0:	10011201 	andne	r1, r1, r1, lsl #4
 ab4:	02000006 	andeq	r0, r0, #6
 ab8:	0b0b0024 	bleq	2c0b50 <__stack+0x102c00>
 abc:	0e030b3e 	vmoveq.16	d3[0], r0
 ac0:	16030000 	strne	r0, [r3], -r0
 ac4:	3a0e0300 	bcc	3816cc <__stack+0x1c377c>
 ac8:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 acc:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
 ad0:	0b0b000f 	bleq	2c0b14 <__stack+0x102bc4>
 ad4:	00001349 	andeq	r1, r0, r9, asr #6
 ad8:	27011505 	strcs	r1, [r1, -r5, lsl #10]
 adc:	0013010c 	andseq	r0, r3, ip, lsl #2
 ae0:	00050600 	andeq	r0, r5, r0, lsl #12
 ae4:	00001349 	andeq	r1, r0, r9, asr #6
 ae8:	49002607 	stmdbmi	r0, {r0, r1, r2, r9, sl, sp}
 aec:	08000013 	stmdaeq	r0, {r0, r1, r4}
 af0:	0b0b0024 	bleq	2c0b88 <__stack+0x102c38>
 af4:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
 af8:	2e090000 	cdpcs	0, 0, cr0, cr9, cr0, {0}
 afc:	030c3f01 	movweq	r3, #52993	; 0xcf01
 b00:	3b0b3a0e 	blcc	2cf340 <__stack+0x1113f0>
 b04:	110c270b 	tstne	ip, fp, lsl #14
 b08:	40011201 	andmi	r1, r1, r1, lsl #4
 b0c:	0c429706 	mcrreq	7, 0, r9, r2, cr6
 b10:	00001301 	andeq	r1, r0, r1, lsl #6
 b14:	0300050a 	movweq	r0, #1290	; 0x50a
 b18:	3b0b3a0e 	blcc	2cf358 <__stack+0x111408>
 b1c:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 b20:	0b000006 	bleq	b40 <_SUPERVISOR_STACK_SIZE+0x340>
 b24:	01018289 	smlabbeq	r1, r9, r2, r8
 b28:	00000111 	andeq	r0, r0, r1, lsl r1
 b2c:	01828a0c 	orreq	r8, r2, ip, lsl #20
 b30:	910a0200 	mrsls	r0, R10_fiq
 b34:	00000a42 	andeq	r0, r0, r2, asr #20
 b38:	3f012e0d 	svccc	0x00012e0d
 b3c:	3a0e030c 	bcc	381774 <__stack+0x1c3824>
 b40:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 b44:	1201110c 	andne	r1, r1, #12, 2
 b48:	970a4001 	strls	r4, [sl, -r1]
 b4c:	13010c42 	movwne	r0, #7234	; 0x1c42
 b50:	050e0000 	streq	r0, [lr, #-0]
 b54:	3a0e0300 	bcc	38175c <__stack+0x1c380c>
 b58:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 b5c:	000a0213 	andeq	r0, sl, r3, lsl r2
 b60:	00340f00 	eorseq	r0, r4, r0, lsl #30
 b64:	0b3a0e03 	bleq	e84378 <__stack+0xcc6428>
 b68:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 b6c:	00000a02 	andeq	r0, r0, r2, lsl #20
 b70:	03003410 	movweq	r3, #1040	; 0x410
 b74:	3b0b3a0e 	blcc	2cf3b4 <__stack+0x111464>
 b78:	3f13490b 	svccc	0x0013490b
 b7c:	000a020c 	andeq	r0, sl, ip, lsl #4
 b80:	11010000 	mrsne	r0, (UNDEF: 1)
 b84:	130e2501 	movwne	r2, #58625	; 0xe501
 b88:	1b0e030b 	blne	3817bc <__stack+0x1c386c>
 b8c:	0006100e 	andeq	r1, r6, lr
 b90:	00240200 	eoreq	r0, r4, r0, lsl #4
 b94:	0b3e0b0b 	bleq	f837c8 <__stack+0xdc5878>
 b98:	00000e03 	andeq	r0, r0, r3, lsl #28
 b9c:	03001603 	movweq	r1, #1539	; 0x603
 ba0:	3b0b3a08 	blcc	2cf3c8 <__stack+0x111478>
 ba4:	0013490b 	andseq	r4, r3, fp, lsl #18
 ba8:	00240400 	eoreq	r0, r4, r0, lsl #8
 bac:	0b3e0b0b 	bleq	f837e0 <__stack+0xdc5890>
 bb0:	00000803 	andeq	r0, r0, r3, lsl #16
 bb4:	0b011305 	bleq	457d0 <_HEAP_SIZE+0x257d0>
 bb8:	3b0b3a0b 	blcc	2cf3ec <__stack+0x11149c>
 bbc:	00130105 	andseq	r0, r3, r5, lsl #2
 bc0:	000d0600 	andeq	r0, sp, r0, lsl #12
 bc4:	0b3a0e03 	bleq	e843d8 <__stack+0xcc6488>
 bc8:	1349053b 	movtne	r0, #38203	; 0x953b
 bcc:	00000a38 	andeq	r0, r0, r8, lsr sl
 bd0:	03001607 	movweq	r1, #1543	; 0x607
 bd4:	3b0b3a0e 	blcc	2cf414 <__stack+0x1114c4>
 bd8:	00134905 	andseq	r4, r3, r5, lsl #18
 bdc:	01010800 	tsteq	r1, r0, lsl #16
 be0:	13011349 	movwne	r1, #4937	; 0x1349
 be4:	21090000 	mrscs	r0, (UNDEF: 9)
 be8:	2f134900 	svccs	0x00134900
 bec:	0a00000b 	beq	c20 <_SUPERVISOR_STACK_SIZE+0x420>
 bf0:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 bf4:	0b3b0b3a 	bleq	ec38e4 <__stack+0xd05994>
 bf8:	0c3f1349 	ldceq	3, cr1, [pc], #-292	; adc <_SUPERVISOR_STACK_SIZE+0x2dc>
 bfc:	00000a02 	andeq	r0, r0, r2, lsl #20
 c00:	01110100 	tsteq	r1, r0, lsl #2
 c04:	0b130e25 	bleq	4c44a0 <__stack+0x306550>
 c08:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 c0c:	01120111 	tsteq	r2, r1, lsl r1
 c10:	00000610 	andeq	r0, r0, r0, lsl r6
 c14:	03001602 	movweq	r1, #1538	; 0x602
 c18:	3b0b3a08 	blcc	2cf440 <__stack+0x1114f0>
 c1c:	0013490b 	andseq	r4, r3, fp, lsl #18
 c20:	00240300 	eoreq	r0, r4, r0, lsl #6
 c24:	0b3e0b0b 	bleq	f83858 <__stack+0xdc5908>
 c28:	00000e03 	andeq	r0, r0, r3, lsl #28
 c2c:	0b002404 	bleq	9c44 <OS_SchedNew+0x34>
 c30:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 c34:	05000008 	streq	r0, [r0, #-8]
 c38:	0c3f012e 	ldfeqs	f0, [pc], #-184	; b88 <_SUPERVISOR_STACK_SIZE+0x388>
 c3c:	0b3a0e03 	bleq	e84450 <__stack+0xcc6500>
 c40:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
 c44:	01120111 	tsteq	r2, r1, lsl r1
 c48:	42970640 	addsmi	r0, r7, #64, 12	; 0x4000000
 c4c:	0013010c 	andseq	r0, r3, ip, lsl #2
 c50:	00050600 	andeq	r0, r5, r0, lsl #12
 c54:	0b3a0e03 	bleq	e84468 <__stack+0xcc6518>
 c58:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 c5c:	00000602 	andeq	r0, r0, r2, lsl #12
 c60:	01828907 	orreq	r8, r2, r7, lsl #18
 c64:	31011101 	tstcc	r1, r1, lsl #2
 c68:	00130113 	andseq	r0, r3, r3, lsl r1
 c6c:	828a0800 	addhi	r0, sl, #0, 16
 c70:	0a020001 	beq	80c7c <_HEAP_SIZE+0x60c7c>
 c74:	000a4291 	muleq	sl, r1, r2
 c78:	82890900 	addhi	r0, r9, #0, 18
 c7c:	01110101 	tsteq	r1, r1, lsl #2
 c80:	310c4295 			; <UNDEFINED> instruction: 0x310c4295
 c84:	0a000013 	beq	cd8 <_SUPERVISOR_STACK_SIZE+0x4d8>
 c88:	0c3f012e 	ldfeqs	f0, [pc], #-184	; bd8 <_SUPERVISOR_STACK_SIZE+0x3d8>
 c8c:	0b3a0e03 	bleq	e844a0 <__stack+0xcc6550>
 c90:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
 c94:	01111349 	tsteq	r1, r9, asr #6
 c98:	06400112 			; <UNDEFINED> instruction: 0x06400112
 c9c:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
 ca0:	0b000013 	bleq	cf4 <_SUPERVISOR_STACK_SIZE+0x4f4>
 ca4:	01018289 	smlabbeq	r1, r9, r2, r8
 ca8:	13310111 	teqne	r1, #1073741828	; 0x40000004
 cac:	2e0c0000 	cdpcs	0, 0, cr0, cr12, cr0, {0}
 cb0:	030c3f01 	movweq	r3, #52993	; 0xcf01
 cb4:	3b0b3a0e 	blcc	2cf4f4 <__stack+0x1115a4>
 cb8:	490c270b 	stmdbmi	ip, {r0, r1, r3, r8, r9, sl, sp}
 cbc:	010c3c13 	tsteq	ip, r3, lsl ip
 cc0:	0d000013 	stceq	0, cr0, [r0, #-76]	; 0xffffffb4
 cc4:	13490005 	movtne	r0, #36869	; 0x9005
 cc8:	2e0e0000 	cdpcs	0, 0, cr0, cr14, cr0, {0}
 ccc:	030c3f01 	movweq	r3, #52993	; 0xcf01
 cd0:	3b0b3a0e 	blcc	2cf510 <__stack+0x1115c0>
 cd4:	3c0c270b 	stccc	7, cr2, [ip], {11}
 cd8:	0000000c 	andeq	r0, r0, ip
 cdc:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 ce0:	030b130e 	movweq	r1, #45838	; 0xb30e
 ce4:	110e1b0e 	tstne	lr, lr, lsl #22
 ce8:	10011201 	andne	r1, r1, r1, lsl #4
 cec:	02000006 	andeq	r0, r0, #6
 cf0:	0b0b0024 	bleq	2c0d88 <__stack+0x102e38>
 cf4:	0e030b3e 	vmoveq.16	d3[0], r0
 cf8:	24030000 	strcs	r0, [r3], #-0
 cfc:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 d00:	0008030b 	andeq	r0, r8, fp, lsl #6
 d04:	012e0400 	teqeq	lr, r0, lsl #8
 d08:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 d0c:	0b3b0b3a 	bleq	ec39fc <__stack+0xd05aac>
 d10:	01110c27 	tsteq	r1, r7, lsr #24
 d14:	0a400112 	beq	1001164 <__stack+0xe43214>
 d18:	000c4297 	muleq	ip, r7, r2
 d1c:	00050500 	andeq	r0, r5, r0, lsl #10
 d20:	0b3a0e03 	bleq	e84534 <__stack+0xcc65e4>
 d24:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 d28:	00000a02 	andeq	r0, r0, r2, lsl #20
 d2c:	01110100 	tsteq	r1, r0, lsl #2
 d30:	0b130e25 	bleq	4c45cc <__stack+0x30667c>
 d34:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 d38:	01120111 	tsteq	r2, r1, lsl r1
 d3c:	00000610 	andeq	r0, r0, r0, lsl r6
 d40:	0b002402 	bleq	9d50 <OS_TaskStatStkChk+0x24>
 d44:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 d48:	0300000e 	movweq	r0, #14
 d4c:	0b0b0024 	bleq	2c0de4 <__stack+0x102e94>
 d50:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
 d54:	16040000 	strne	r0, [r4], -r0
 d58:	3a0e0300 	bcc	381960 <__stack+0x1c3a10>
 d5c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 d60:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
 d64:	0b0b000f 	bleq	2c0da8 <__stack+0x102e58>
 d68:	00001349 	andeq	r1, r0, r9, asr #6
 d6c:	3f012e06 	svccc	0x00012e06
 d70:	3a0e030c 	bcc	3819a8 <__stack+0x1c3a58>
 d74:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 d78:	1113490c 	tstne	r3, ip, lsl #18
 d7c:	40011201 	andmi	r1, r1, r1, lsl #4
 d80:	0c42970a 	mcrreq	7, 0, r9, r2, cr10
 d84:	00001301 	andeq	r1, r0, r1, lsl #6
 d88:	03000507 	movweq	r0, #1287	; 0x507
 d8c:	3b0b3a0e 	blcc	2cf5cc <__stack+0x11167c>
 d90:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 d94:	08000006 	stmdaeq	r0, {r1, r2}
 d98:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 d9c:	0b3b0b3a 	bleq	ec3a8c <__stack+0xd05b3c>
 da0:	0a021349 	beq	85acc <_HEAP_SIZE+0x65acc>
 da4:	34090000 	strcc	r0, [r9], #-0
 da8:	3a0e0300 	bcc	3819b0 <__stack+0x1c3a60>
 dac:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 db0:	3c0c3f13 	stccc	15, cr3, [ip], {19}
 db4:	0000000c 	andeq	r0, r0, ip

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
       0:	00000000 	andeq	r0, r0, r0
       4:	00000004 	andeq	r0, r0, r4
       8:	007d0002 	rsbseq	r0, sp, r2
       c:	00000004 	andeq	r0, r0, r4
      10:	00000028 	andeq	r0, r0, r8, lsr #32
      14:	087d0002 	ldmdaeq	sp!, {r1}^
	...
      24:	0000000c 	andeq	r0, r0, ip
      28:	0c500001 	mrrceq	0, 0, r0, r0, cr1	; <UNPREDICTABLE>
      2c:	14000000 	strne	r0, [r0], #-0
      30:	01000000 	mrseq	r0, (UNDEF: 0)
      34:	00005400 	andeq	r5, r0, r0, lsl #8
	...
      40:	00080000 	andeq	r0, r8, r0
      44:	00020000 	andeq	r0, r2, r0
      48:	0008007d 	andeq	r0, r8, sp, ror r0
      4c:	005c0000 	subseq	r0, ip, r0
      50:	00020000 	andeq	r0, r2, r0
      54:	0000087d 	andeq	r0, r0, sp, ror r8
	...
      60:	00180000 	andseq	r0, r8, r0
      64:	00010000 	andeq	r0, r1, r0
      68:	00001850 	andeq	r1, r0, r0, asr r8
      6c:	00004400 	andeq	r4, r0, r0, lsl #8
      70:	50000100 	andpl	r0, r0, r0, lsl #2
	...
      7c:	00000010 	andeq	r0, r0, r0, lsl r0
      80:	00000040 	andeq	r0, r0, r0, asr #32
      84:	00530001 	subseq	r0, r3, r1
      88:	00000000 	andeq	r0, r0, r0
      8c:	5c000000 	stcpl	0, cr0, [r0], {-0}
      90:	64000000 	strvs	r0, [r0], #-0
      94:	02000000 	andeq	r0, r0, #0
      98:	64007d00 	strvs	r7, [r0], #-3328	; 0xfffff300
      9c:	b8000000 	stmdalt	r0, {}	; <UNPREDICTABLE>
      a0:	02000000 	andeq	r0, r0, #0
      a4:	00087d00 	andeq	r7, r8, r0, lsl #26
      a8:	00000000 	andeq	r0, r0, r0
      ac:	5c000000 	stcpl	0, cr0, [r0], {-0}
      b0:	74000000 	strvc	r0, [r0], #-0
      b4:	01000000 	mrseq	r0, (UNDEF: 0)
      b8:	00745000 	rsbseq	r5, r4, r0
      bc:	00a00000 	adceq	r0, r0, r0
      c0:	00010000 	andeq	r0, r1, r0
      c4:	00000050 	andeq	r0, r0, r0, asr r0
      c8:	00000000 	andeq	r0, r0, r0
      cc:	00006c00 	andeq	r6, r0, r0, lsl #24
      d0:	00009c00 	andeq	r9, r0, r0, lsl #24
      d4:	53000100 	movwpl	r0, #256	; 0x100
	...
      e0:	000000b8 	strheq	r0, [r0], -r8
      e4:	000000c0 	andeq	r0, r0, r0, asr #1
      e8:	007d0002 	rsbseq	r0, sp, r2
      ec:	000000c0 	andeq	r0, r0, r0, asr #1
      f0:	00000114 	andeq	r0, r0, r4, lsl r1
      f4:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     100:	000000b8 	strheq	r0, [r0], -r8
     104:	000000d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     108:	d0500001 	subsle	r0, r0, r1
     10c:	fc000000 	stc2	0, cr0, [r0], {-0}
     110:	01000000 	mrseq	r0, (UNDEF: 0)
     114:	00005000 	andeq	r5, r0, r0
     118:	00000000 	andeq	r0, r0, r0
     11c:	00c80000 	sbceq	r0, r8, r0
     120:	00f80000 	rscseq	r0, r8, r0
     124:	00010000 	andeq	r0, r1, r0
     128:	00000053 	andeq	r0, r0, r3, asr r0
     12c:	00000000 	andeq	r0, r0, r0
     130:	00011400 	andeq	r1, r1, r0, lsl #8
     134:	00011800 	andeq	r1, r1, r0, lsl #16
     138:	7d000200 	sfmvc	f0, 4, [r0, #-0]
     13c:	00011800 	andeq	r1, r1, r0, lsl #16
     140:	0001ac00 	andeq	sl, r1, r0, lsl #24
     144:	7d000200 	sfmvc	f0, 4, [r0, #-0]
     148:	00000018 	andeq	r0, r0, r8, lsl r0
     14c:	00000000 	andeq	r0, r0, r0
     150:	00012800 	andeq	r2, r1, r0, lsl #16
     154:	00016800 	andeq	r6, r1, r0, lsl #16
     158:	54000100 	strpl	r0, [r0], #-256	; 0xffffff00
	...
     164:	0000017c 	andeq	r0, r0, ip, ror r1
     168:	00000198 	muleq	r0, r8, r1
     16c:	005c0001 	subseq	r0, ip, r1
     170:	00000000 	andeq	r0, r0, r0
     174:	2c000000 	stccs	0, cr0, [r0], {-0}
     178:	34000001 	strcc	r0, [r0], #-1
     17c:	01000001 	tsteq	r0, r1
     180:	01345000 	teqeq	r4, r0
     184:	01480000 	mrseq	r0, (UNDEF: 72)
     188:	00050000 	andeq	r0, r5, r0
     18c:	24370070 	ldrtcs	r0, [r7], #-112	; 0xffffff90
     190:	0001489f 	muleq	r1, pc, r8	; <UNPREDICTABLE>
     194:	00014b00 	andeq	r4, r1, r0, lsl #22
     198:	50000100 	andpl	r0, r0, r0, lsl #2
     19c:	0000014b 	andeq	r0, r0, fp, asr #2
     1a0:	00000168 	andeq	r0, r0, r8, ror #2
     1a4:	0074000d 	rsbseq	r0, r4, sp
     1a8:	0924ee09 	stmdbeq	r4!, {r0, r3, r9, sl, fp, sp, lr, pc}
     1ac:	012325fb 	strdeq	r2, [r3, -fp]!
     1b0:	009f2437 	addseq	r2, pc, r7, lsr r4	; <UNPREDICTABLE>
     1b4:	00000000 	andeq	r0, r0, r0
     1b8:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
     1bc:	54000001 	strpl	r0, [r0], #-1
     1c0:	07000001 	streq	r0, [r0, -r1]
     1c4:	37007400 	strcc	r7, [r0, -r0, lsl #8]
     1c8:	9f04231a 	svcls	0x0004231a
     1cc:	00000154 	andeq	r0, r0, r4, asr r1
     1d0:	00000168 	andeq	r0, r0, r8, ror #2
     1d4:	00530001 	subseq	r0, r3, r1
     1d8:	00000000 	andeq	r0, r0, r0
     1dc:	60000000 	andvs	r0, r0, r0
     1e0:	68000001 	stmdavs	r0, {r0}
     1e4:	02000001 	andeq	r0, r0, #1
     1e8:	009f3000 	addseq	r3, pc, r0
     1ec:	00000000 	andeq	r0, r0, r0
     1f0:	60000000 	andvs	r0, r0, r0
     1f4:	68000001 	stmdavs	r0, {r0}
     1f8:	02000001 	andeq	r0, r0, #1
     1fc:	9c9f3000 	ldcls	0, cr3, [pc], {0}
     200:	ac000001 	stcge	0, cr0, [r0], {1}
     204:	01000001 	tsteq	r0, r1
     208:	00005600 	andeq	r5, r0, r0, lsl #12
     20c:	00000000 	andeq	r0, r0, r0
     210:	01600000 	cmneq	r0, r0
     214:	01680000 	cmneq	r8, r0
     218:	00020000 	andeq	r0, r2, r0
     21c:	01709f30 	cmneq	r0, r0, lsr pc
     220:	017c0000 	cmneq	ip, r0
     224:	00010000 	andeq	r0, r1, r0
     228:	00018c57 	andeq	r8, r1, r7, asr ip
     22c:	00019800 	andeq	r9, r1, r0, lsl #16
     230:	52000100 	andpl	r0, r0, #0, 2
     234:	0000019c 	muleq	r0, ip, r1
     238:	000001ac 	andeq	r0, r0, ip, lsr #3
     23c:	00570001 	subseq	r0, r7, r1
     240:	00000000 	andeq	r0, r0, r0
     244:	70000000 	andvc	r0, r0, r0
     248:	7c000001 	stcvc	0, cr0, [r0], {1}
     24c:	02000001 	andeq	r0, r0, #1
     250:	8c9f3000 	ldchi	0, cr3, [pc], {0}
     254:	98000001 	stmdals	r0, {r0}
     258:	01000001 	tsteq	r0, r1
     25c:	00005300 	andeq	r5, r0, r0, lsl #6
     260:	00000000 	andeq	r0, r0, r0
     264:	01ac0000 			; <UNDEFINED> instruction: 0x01ac0000
     268:	01b00000 	movseq	r0, r0
     26c:	00020000 	andeq	r0, r2, r0
     270:	01b0007d 	rorseq	r0, sp, r0
     274:	01cc0000 	biceq	r0, ip, r0
     278:	00020000 	andeq	r0, r2, r0
     27c:	0000087d 	andeq	r0, r0, sp, ror r8
     280:	00000000 	andeq	r0, r0, r0
     284:	01b40000 			; <UNDEFINED> instruction: 0x01b40000
     288:	01c40000 	biceq	r0, r4, r0
     28c:	00010000 	andeq	r0, r1, r0
     290:	00000054 	andeq	r0, r0, r4, asr r0
     294:	00000000 	andeq	r0, r0, r0
     298:	0001cc00 	andeq	ip, r1, r0, lsl #24
     29c:	0001d800 	andeq	sp, r1, r0, lsl #16
     2a0:	50000100 	andpl	r0, r0, r0, lsl #2
     2a4:	000001d8 	ldrdeq	r0, [r0], -r8
     2a8:	000001e4 	andeq	r0, r0, r4, ror #3
     2ac:	01f30004 	mvnseq	r0, r4
     2b0:	00009f50 	andeq	r9, r0, r0, asr pc
     2b4:	00000000 	andeq	r0, r0, r0
     2b8:	01e40000 	mvneq	r0, r0
     2bc:	01f80000 	mvnseq	r0, r0
     2c0:	00010000 	andeq	r0, r1, r0
     2c4:	0001f850 	andeq	pc, r1, r0, asr r8	; <UNPREDICTABLE>
     2c8:	00021c00 	andeq	r1, r2, r0, lsl #24
     2cc:	50000100 	andpl	r0, r0, r0, lsl #2
	...
     2d8:	000001f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     2dc:	00000214 	andeq	r0, r0, r4, lsl r2
     2e0:	00530001 	subseq	r0, r3, r1
     2e4:	00000000 	andeq	r0, r0, r0
     2e8:	1c000000 	stcne	0, cr0, [r0], {-0}
     2ec:	20000002 	andcs	r0, r0, r2
     2f0:	02000002 	andeq	r0, r0, #2
     2f4:	20007d00 	andcs	r7, r0, r0, lsl #26
     2f8:	b4000002 	strlt	r0, [r0], #-2
     2fc:	02000002 	andeq	r0, r0, #2
     300:	00187d00 	andseq	r7, r8, r0, lsl #26
     304:	00000000 	andeq	r0, r0, r0
     308:	30000000 	andcc	r0, r0, r0
     30c:	70000002 	andvc	r0, r0, r2
     310:	01000002 	tsteq	r0, r2
     314:	00005400 	andeq	r5, r0, r0, lsl #8
     318:	00000000 	andeq	r0, r0, r0
     31c:	02840000 	addeq	r0, r4, #0
     320:	02a00000 	adceq	r0, r0, #0
     324:	00010000 	andeq	r0, r1, r0
     328:	0000005c 	andeq	r0, r0, ip, asr r0
     32c:	00000000 	andeq	r0, r0, r0
     330:	00023400 	andeq	r3, r2, r0, lsl #8
     334:	00023c00 	andeq	r3, r2, r0, lsl #24
     338:	50000100 	andpl	r0, r0, r0, lsl #2
     33c:	0000023c 	andeq	r0, r0, ip, lsr r2
     340:	00000250 	andeq	r0, r0, r0, asr r2
     344:	00700005 	rsbseq	r0, r0, r5
     348:	509f2437 	addspl	r2, pc, r7, lsr r4	; <UNPREDICTABLE>
     34c:	53000002 	movwpl	r0, #2
     350:	01000002 	tsteq	r0, r2
     354:	02535000 	subseq	r5, r3, #0
     358:	02700000 	rsbseq	r0, r0, #0
     35c:	000d0000 	andeq	r0, sp, r0
     360:	ee090074 	mcr	0, 0, r0, cr9, cr4, {3}
     364:	25fb0924 	ldrbcs	r0, [fp, #2340]!	; 0x924
     368:	24370123 	ldrtcs	r0, [r7], #-291	; 0xfffffedd
     36c:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
     370:	00000000 	andeq	r0, r0, r0
     374:	00024000 	andeq	r4, r2, r0
     378:	00025c00 	andeq	r5, r2, r0, lsl #24
     37c:	74000700 	strvc	r0, [r0], #-1792	; 0xfffff900
     380:	231a3700 	tstcs	sl, #0, 14
     384:	025c9f04 	subseq	r9, ip, #4, 30
     388:	02700000 	rsbseq	r0, r0, #0
     38c:	00010000 	andeq	r0, r1, r0
     390:	00000053 	andeq	r0, r0, r3, asr r0
     394:	00000000 	andeq	r0, r0, r0
     398:	00026800 	andeq	r6, r2, r0, lsl #16
     39c:	00027000 	andeq	r7, r2, r0
     3a0:	30000200 	andcc	r0, r0, r0, lsl #4
     3a4:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
     3a8:	00000000 	andeq	r0, r0, r0
     3ac:	00026800 	andeq	r6, r2, r0, lsl #16
     3b0:	00027000 	andeq	r7, r2, r0
     3b4:	30000200 	andcc	r0, r0, r0, lsl #4
     3b8:	0002a49f 	muleq	r2, pc, r4	; <UNPREDICTABLE>
     3bc:	0002b400 	andeq	fp, r2, r0, lsl #8
     3c0:	56000100 	strpl	r0, [r0], -r0, lsl #2
	...
     3cc:	00000268 	andeq	r0, r0, r8, ror #4
     3d0:	00000270 	andeq	r0, r0, r0, ror r2
     3d4:	9f300002 	svcls	0x00300002
     3d8:	00000278 	andeq	r0, r0, r8, ror r2
     3dc:	00000284 	andeq	r0, r0, r4, lsl #5
     3e0:	94570001 	ldrbls	r0, [r7], #-1
     3e4:	a0000002 	andge	r0, r0, r2
     3e8:	01000002 	tsteq	r0, r2
     3ec:	02a45200 	adceq	r5, r4, #0, 4
     3f0:	02b40000 	adcseq	r0, r4, #0
     3f4:	00010000 	andeq	r0, r1, r0
     3f8:	00000057 	andeq	r0, r0, r7, asr r0
     3fc:	00000000 	andeq	r0, r0, r0
     400:	00027800 	andeq	r7, r2, r0, lsl #16
     404:	00028400 	andeq	r8, r2, r0, lsl #8
     408:	30000200 	andcc	r0, r0, r0, lsl #4
     40c:	0002949f 	muleq	r2, pc, r4	; <UNPREDICTABLE>
     410:	0002a000 	andeq	sl, r2, r0
     414:	53000100 	movwpl	r0, #256	; 0x100
	...
     420:	000002b4 			; <UNDEFINED> instruction: 0x000002b4
     424:	000002b8 			; <UNDEFINED> instruction: 0x000002b8
     428:	007d0002 	rsbseq	r0, sp, r2
     42c:	000002b8 			; <UNDEFINED> instruction: 0x000002b8
     430:	000002cc 	andeq	r0, r0, ip, asr #5
     434:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     440:	000002c0 	andeq	r0, r0, r0, asr #5
     444:	000002c4 	andeq	r0, r0, r4, asr #5
     448:	00530001 	subseq	r0, r3, r1
     44c:	00000000 	andeq	r0, r0, r0
     450:	cc000000 	stcgt	0, cr0, [r0], {-0}
     454:	d8000002 	stmdale	r0, {r1}
     458:	01000002 	tsteq	r0, r2
     45c:	02d85000 	sbcseq	r5, r8, #0
     460:	02e40000 	rsceq	r0, r4, #0
     464:	00040000 	andeq	r0, r4, r0
     468:	9f5001f3 	svcls	0x005001f3
	...
     474:	000002e4 	andeq	r0, r0, r4, ror #5
     478:	000002f8 	strdeq	r0, [r0], -r8
     47c:	f8500001 			; <UNDEFINED> instruction: 0xf8500001
     480:	1c000002 	stcne	0, cr0, [r0], {2}
     484:	01000003 	tsteq	r0, r3
     488:	00005000 	andeq	r5, r0, r0
     48c:	00000000 	andeq	r0, r0, r0
     490:	02f00000 	rscseq	r0, r0, #0
     494:	03140000 	tsteq	r4, #0
     498:	00010000 	andeq	r0, r1, r0
     49c:	00000053 	andeq	r0, r0, r3, asr r0
     4a0:	00000000 	andeq	r0, r0, r0
     4a4:	00031c00 	andeq	r1, r3, r0, lsl #24
     4a8:	00032800 	andeq	r2, r3, r0, lsl #16
     4ac:	50000100 	andpl	r0, r0, r0, lsl #2
     4b0:	00000328 	andeq	r0, r0, r8, lsr #6
     4b4:	00000334 	andeq	r0, r0, r4, lsr r3
     4b8:	01f30004 	mvnseq	r0, r4
     4bc:	00009f50 	andeq	r9, r0, r0, asr pc
     4c0:	00000000 	andeq	r0, r0, r0
     4c4:	03600000 	cmneq	r0, #0
     4c8:	03640000 	cmneq	r4, #0
     4cc:	00010000 	andeq	r0, r1, r0
     4d0:	00000053 	andeq	r0, r0, r3, asr r0
     4d4:	00000000 	andeq	r0, r0, r0
     4d8:	00038400 	andeq	r8, r3, r0, lsl #8
     4dc:	00039000 	andeq	r9, r3, r0
     4e0:	50000100 	andpl	r0, r0, r0, lsl #2
     4e4:	00000390 	muleq	r0, r0, r3
     4e8:	0000039c 	muleq	r0, ip, r3
     4ec:	01f30004 	mvnseq	r0, r4
     4f0:	00009f50 	andeq	r9, r0, r0, asr pc
     4f4:	00000000 	andeq	r0, r0, r0
     4f8:	039c0000 	orrseq	r0, ip, #0
     4fc:	03b00000 	movseq	r0, #0
     500:	00010000 	andeq	r0, r1, r0
     504:	0003b050 	andeq	fp, r3, r0, asr r0
     508:	0003d400 	andeq	sp, r3, r0, lsl #8
     50c:	50000100 	andpl	r0, r0, r0, lsl #2
	...
     518:	000003a8 	andeq	r0, r0, r8, lsr #7
     51c:	000003cc 	andeq	r0, r0, ip, asr #7
     520:	00530001 	subseq	r0, r3, r1
     524:	00000000 	andeq	r0, r0, r0
     528:	d4000000 	strle	r0, [r0], #-0
     52c:	d8000003 	stmdale	r0, {r0, r1}
     530:	02000003 	andeq	r0, r0, #3
     534:	d8007d00 	stmdale	r0, {r8, sl, fp, ip, sp, lr}
     538:	70000003 	andvc	r0, r0, r3
     53c:	02000004 	andeq	r0, r0, #4
     540:	00087d00 	andeq	r7, r8, r0, lsl #26
     544:	00000000 	andeq	r0, r0, r0
     548:	e4000000 	str	r0, [r0], #-0
     54c:	f0000003 			; <UNDEFINED> instruction: 0xf0000003
     550:	01000003 	tsteq	r0, r3
     554:	03f85000 	mvnseq	r5, #0
     558:	03fc0000 	mvnseq	r0, #0
     55c:	00010000 	andeq	r0, r1, r0
     560:	0003fc50 	andeq	pc, r3, r0, asr ip	; <UNPREDICTABLE>
     564:	00040400 	andeq	r0, r4, r0, lsl #8
     568:	71000900 	tstvc	r0, r0, lsl #18
     56c:	10000c00 	andne	r0, r0, r0, lsl #24
     570:	9f217002 	svcls	0x00217002
     574:	00000440 	andeq	r0, r0, r0, asr #8
     578:	00000444 	andeq	r0, r0, r4, asr #8
     57c:	44500001 	ldrbmi	r0, [r0], #-1
     580:	4b000004 	blmi	598 <_ABORT_STACK_SIZE+0x198>
     584:	01000004 	tsteq	r0, r4
     588:	04585100 	ldrbeq	r5, [r8], #-256	; 0xffffff00
     58c:	04600000 	strbteq	r0, [r0], #-0
     590:	00010000 	andeq	r0, r1, r0
     594:	00000050 	andeq	r0, r0, r0, asr r0
     598:	00000000 	andeq	r0, r0, r0
     59c:	00047400 	andeq	r7, r4, r0, lsl #8
     5a0:	00048b00 	andeq	r8, r4, r0, lsl #22
     5a4:	53000100 	movwpl	r0, #256	; 0x100
	...
     5b0:	0000048c 	andeq	r0, r0, ip, lsl #9
     5b4:	00000490 	muleq	r0, r0, r4
     5b8:	007d0002 	rsbseq	r0, sp, r2
     5bc:	00000490 	muleq	r0, r0, r4
     5c0:	0000049c 	muleq	r0, ip, r4
     5c4:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     5d0:	0000049c 	muleq	r0, ip, r4
     5d4:	000004a8 	andeq	r0, r0, r8, lsr #9
     5d8:	007d0002 	rsbseq	r0, sp, r2
     5dc:	000004a8 	andeq	r0, r0, r8, lsr #9
     5e0:	000004e8 	andeq	r0, r0, r8, ror #9
     5e4:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     5f0:	000004bc 			; <UNDEFINED> instruction: 0x000004bc
     5f4:	000004cc 	andeq	r0, r0, ip, asr #9
     5f8:	d4500001 	ldrble	r0, [r0], #-1
     5fc:	dc000004 	stcle	0, cr0, [r0], {4}
     600:	01000004 	tsteq	r0, r4
     604:	00005000 	andeq	r5, r0, r0
     608:	00000000 	andeq	r0, r0, r0
     60c:	04e80000 	strbteq	r0, [r8], #0
     610:	04ec0000 	strbteq	r0, [ip], #0
     614:	00020000 	andeq	r0, r2, r0
     618:	04ec007d 	strbteq	r0, [ip], #125	; 0x7d
     61c:	050c0000 	streq	r0, [ip, #-0]
     620:	00020000 	andeq	r0, r2, r0
     624:	0000087d 	andeq	r0, r0, sp, ror r8
     628:	00000000 	andeq	r0, r0, r0
     62c:	05000000 	streq	r0, [r0, #-0]
     630:	05040000 	streq	r0, [r4, #-0]
     634:	00010000 	andeq	r0, r1, r0
     638:	00000053 	andeq	r0, r0, r3, asr r0
     63c:	00000000 	andeq	r0, r0, r0
     640:	00050c00 	andeq	r0, r5, r0, lsl #24
     644:	00051000 	andeq	r1, r5, r0
     648:	7d000200 	sfmvc	f0, 4, [r0, #-0]
     64c:	00051000 	andeq	r1, r5, r0
     650:	00051c00 	andeq	r1, r5, r0, lsl #24
     654:	7d000200 	sfmvc	f0, 4, [r0, #-0]
     658:	00000008 	andeq	r0, r0, r8
     65c:	00000000 	andeq	r0, r0, r0
     660:	00051c00 	andeq	r1, r5, r0, lsl #24
     664:	00052800 	andeq	r2, r5, r0, lsl #16
     668:	7d000200 	sfmvc	f0, 4, [r0, #-0]
     66c:	00052800 	andeq	r2, r5, r0, lsl #16
     670:	00054c00 	andeq	r4, r5, r0, lsl #24
     674:	7d000200 	sfmvc	f0, 4, [r0, #-0]
     678:	00000008 	andeq	r0, r0, r8
     67c:	00000000 	andeq	r0, r0, r0
     680:	00056400 	andeq	r6, r5, r0, lsl #8
     684:	00056800 	andeq	r6, r5, r0, lsl #16
     688:	7d000200 	sfmvc	f0, 4, [r0, #-0]
     68c:	00056800 	andeq	r6, r5, r0, lsl #16
     690:	00057400 	andeq	r7, r5, r0, lsl #8
     694:	7d000200 	sfmvc	f0, 4, [r0, #-0]
     698:	00000008 	andeq	r0, r0, r8
     69c:	00000000 	andeq	r0, r0, r0
     6a0:	00057400 	andeq	r7, r5, r0, lsl #8
     6a4:	00058000 	andeq	r8, r5, r0
     6a8:	7d000200 	sfmvc	f0, 4, [r0, #-0]
     6ac:	00058000 	andeq	r8, r5, r0
     6b0:	00059000 	andeq	r9, r5, r0
     6b4:	7d000200 	sfmvc	f0, 4, [r0, #-0]
     6b8:	00000008 	andeq	r0, r0, r8
     6bc:	00000000 	andeq	r0, r0, r0
     6c0:	00057400 	andeq	r7, r5, r0, lsl #8
     6c4:	00057c00 	andeq	r7, r5, r0, lsl #24
     6c8:	50000100 	andpl	r0, r0, r0, lsl #2
     6cc:	0000057c 	andeq	r0, r0, ip, ror r5
     6d0:	00000587 	andeq	r0, r0, r7, lsl #11
     6d4:	87510001 	ldrbhi	r0, [r1, -r1]
     6d8:	90000005 	andls	r0, r0, r5
     6dc:	04000005 	streq	r0, [r0], #-5
     6e0:	5001f300 	andpl	pc, r1, r0, lsl #6
     6e4:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
     6e8:	00000000 	andeq	r0, r0, r0
     6ec:	0005c000 	andeq	ip, r5, r0
     6f0:	0005c800 	andeq	ip, r5, r0, lsl #16
     6f4:	7d000200 	sfmvc	f0, 4, [r0, #-0]
     6f8:	0005c800 	andeq	ip, r5, r0, lsl #16
     6fc:	00061000 	andeq	r1, r6, r0
     700:	7d000200 	sfmvc	f0, 4, [r0, #-0]
     704:	00000008 	andeq	r0, r0, r8
     708:	00000000 	andeq	r0, r0, r0
     70c:	0005c000 	andeq	ip, r5, r0
     710:	0005d400 	andeq	sp, r5, r0, lsl #8
     714:	50000100 	andpl	r0, r0, r0, lsl #2
     718:	000005d4 	ldrdeq	r0, [r0], -r4
     71c:	000005f4 	strdeq	r0, [r0], -r4
     720:	00500001 	subseq	r0, r0, r1
     724:	00000000 	andeq	r0, r0, r0
     728:	c0000000 	andgt	r0, r0, r0
     72c:	f4000005 	vst4.8	{d0-d3}, [r0], r5
     730:	01000005 	tsteq	r0, r5
     734:	05f45100 	ldrbeq	r5, [r4, #256]!	; 0x100
     738:	06100000 	ldreq	r0, [r0], -r0
     73c:	00040000 	andeq	r0, r4, r0
     740:	9f5101f3 	svcls	0x005101f3
	...
     74c:	000005d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     750:	000005f4 	strdeq	r0, [r0], -r4
     754:	00530001 	subseq	r0, r3, r1
     758:	00000000 	andeq	r0, r0, r0
     75c:	10000000 	andne	r0, r0, r0
     760:	1c000006 	stcne	0, cr0, [r0], {6}
     764:	02000006 	andeq	r0, r0, #6
     768:	1c007d00 	stcne	13, cr7, [r0], {-0}
     76c:	40000006 	andmi	r0, r0, r6
     770:	02000006 	andeq	r0, r0, #6
     774:	00087d00 	andeq	r7, r8, r0, lsl #26
     778:	00000000 	andeq	r0, r0, r0
     77c:	40000000 	andmi	r0, r0, r0
     780:	44000006 	strmi	r0, [r0], #-6
     784:	02000006 	andeq	r0, r0, #6
     788:	44007d00 	strmi	r7, [r0], #-3328	; 0xfffff300
     78c:	50000006 	andpl	r0, r0, r6
     790:	02000006 	andeq	r0, r0, #6
     794:	00087d00 	andeq	r7, r8, r0, lsl #26
     798:	00000000 	andeq	r0, r0, r0
     79c:	50000000 	andpl	r0, r0, r0
     7a0:	5c000006 	stcpl	0, cr0, [r0], {6}
     7a4:	02000006 	andeq	r0, r0, #6
     7a8:	5c007d00 	stcpl	13, cr7, [r0], {-0}
     7ac:	6c000006 	stcvs	0, cr0, [r0], {6}
     7b0:	02000006 	andeq	r0, r0, #6
     7b4:	00087d00 	andeq	r7, r8, r0, lsl #26
     7b8:	00000000 	andeq	r0, r0, r0
     7bc:	50000000 	andpl	r0, r0, r0
     7c0:	58000006 	stmdapl	r0, {r1, r2}
     7c4:	01000006 	tsteq	r0, r6
     7c8:	06585000 	ldrbeq	r5, [r8], -r0
     7cc:	06630000 	strbteq	r0, [r3], -r0
     7d0:	00010000 	andeq	r0, r1, r0
     7d4:	00066351 	andeq	r6, r6, r1, asr r3
     7d8:	00066c00 	andeq	r6, r6, r0, lsl #24
     7dc:	f3000400 	vshl.u8	d0, d0, d0
     7e0:	009f5001 	addseq	r5, pc, r1
     7e4:	00000000 	andeq	r0, r0, r0
     7e8:	84000000 	strhi	r0, [r0], #-0
     7ec:	8c000006 	stchi	0, cr0, [r0], {6}
     7f0:	02000006 	andeq	r0, r0, #6
     7f4:	8c007d00 	stchi	13, cr7, [r0], {-0}
     7f8:	d4000006 	strle	r0, [r0], #-6
     7fc:	02000006 	andeq	r0, r0, #6
     800:	00087d00 	andeq	r7, r8, r0, lsl #26
     804:	00000000 	andeq	r0, r0, r0
     808:	84000000 	strhi	r0, [r0], #-0
     80c:	98000006 	stmdals	r0, {r1, r2}
     810:	01000006 	tsteq	r0, r6
     814:	06985000 	ldreq	r5, [r8], r0
     818:	06b80000 	ldrteq	r0, [r8], r0
     81c:	00010000 	andeq	r0, r1, r0
     820:	00000050 	andeq	r0, r0, r0, asr r0
     824:	00000000 	andeq	r0, r0, r0
     828:	00068400 	andeq	r8, r6, r0, lsl #8
     82c:	0006b800 	andeq	fp, r6, r0, lsl #16
     830:	51000100 	mrspl	r0, (UNDEF: 16)
     834:	000006b8 			; <UNDEFINED> instruction: 0x000006b8
     838:	000006d4 	ldrdeq	r0, [r0], -r4
     83c:	01f30004 	mvnseq	r0, r4
     840:	00009f51 	andeq	r9, r0, r1, asr pc
     844:	00000000 	andeq	r0, r0, r0
     848:	06940000 	ldreq	r0, [r4], r0
     84c:	06b80000 	ldrteq	r0, [r8], r0
     850:	00010000 	andeq	r0, r1, r0
     854:	00000053 	andeq	r0, r0, r3, asr r0
     858:	00000000 	andeq	r0, r0, r0
     85c:	0006d400 	andeq	sp, r6, r0, lsl #8
     860:	0006e000 	andeq	lr, r6, r0
     864:	7d000200 	sfmvc	f0, 4, [r0, #-0]
     868:	0006e000 	andeq	lr, r6, r0
     86c:	0006f000 	andeq	pc, r6, r0
     870:	7d000200 	sfmvc	f0, 4, [r0, #-0]
     874:	00000008 	andeq	r0, r0, r8
     878:	00000000 	andeq	r0, r0, r0
     87c:	0006d400 	andeq	sp, r6, r0, lsl #8
     880:	0006dc00 	andeq	sp, r6, r0, lsl #24
     884:	50000100 	andpl	r0, r0, r0, lsl #2
     888:	000006dc 	ldrdeq	r0, [r0], -ip
     88c:	000006e7 	andeq	r0, r0, r7, ror #13
     890:	e7510001 	ldrb	r0, [r1, -r1]
     894:	f0000006 			; <UNDEFINED> instruction: 0xf0000006
     898:	04000006 	streq	r0, [r0], #-6
     89c:	5001f300 	andpl	pc, r1, r0, lsl #6
     8a0:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
	...
     8ac:	00000800 	andeq	r0, r0, r0, lsl #16
     8b0:	50000100 	andpl	r0, r0, r0, lsl #2
     8b4:	00000008 	andeq	r0, r0, r8
     8b8:	0000000c 	andeq	r0, r0, ip
     8bc:	01f30004 	mvnseq	r0, r4
     8c0:	00009f50 	andeq	r9, r0, r0, asr pc
     8c4:	00000000 	andeq	r0, r0, r0
     8c8:	000c0000 	andeq	r0, ip, r0
     8cc:	00140000 	andseq	r0, r4, r0
     8d0:	00010000 	andeq	r0, r1, r0
     8d4:	00001450 	andeq	r1, r0, r0, asr r4
     8d8:	00001800 	andeq	r1, r0, r0, lsl #16
     8dc:	f3000400 	vshl.u8	d0, d0, d0
     8e0:	009f5001 	addseq	r5, pc, r1
     8e4:	00000000 	andeq	r0, r0, r0
     8e8:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
     8ec:	20000000 	andcs	r0, r0, r0
     8f0:	01000000 	mrseq	r0, (UNDEF: 0)
     8f4:	00205000 	eoreq	r5, r0, r0
     8f8:	00240000 	eoreq	r0, r4, r0
     8fc:	00040000 	andeq	r0, r4, r0
     900:	9f5001f3 	svcls	0x005001f3
	...
     90c:	00000048 	andeq	r0, r0, r8, asr #32
     910:	00000058 	andeq	r0, r0, r8, asr r0
     914:	58500001 	ldmdapl	r0, {r0}^
     918:	60000000 	andvs	r0, r0, r0
     91c:	04000000 	streq	r0, [r0], #-0
     920:	5001f300 	andpl	pc, r1, r0, lsl #6
     924:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
     928:	00000000 	andeq	r0, r0, r0
     92c:	00006000 	andeq	r6, r0, r0
     930:	00006c00 	andeq	r6, r0, r0, lsl #24
     934:	50000100 	andpl	r0, r0, r0, lsl #2
     938:	0000006c 	andeq	r0, r0, ip, rrx
     93c:	0000008c 	andeq	r0, r0, ip, lsl #1
     940:	01f30004 	mvnseq	r0, r4
     944:	00009f50 	andeq	r9, r0, r0, asr pc
     948:	00000000 	andeq	r0, r0, r0
     94c:	00680000 	rsbeq	r0, r8, r0
     950:	00740000 	rsbseq	r0, r4, r0
     954:	00010000 	andeq	r0, r1, r0
     958:	00000053 	andeq	r0, r0, r3, asr r0
     95c:	00000000 	andeq	r0, r0, r0
     960:	00006800 	andeq	r6, r0, r0, lsl #16
     964:	00007400 	andeq	r7, r0, r0, lsl #8
     968:	53000100 	movwpl	r0, #256	; 0x100
     96c:	0000007c 	andeq	r0, r0, ip, ror r0
     970:	00000088 	andeq	r0, r0, r8, lsl #1
     974:	00500001 	subseq	r0, r0, r1
     978:	00000000 	andeq	r0, r0, r0
     97c:	70000000 	andvc	r0, r0, r0
     980:	84000000 	strhi	r0, [r0], #-0
     984:	01000000 	mrseq	r0, (UNDEF: 0)
     988:	00005200 	andeq	r5, r0, r0, lsl #4
     98c:	00000000 	andeq	r0, r0, r0
     990:	008c0000 	addeq	r0, ip, r0
     994:	00940000 	addseq	r0, r4, r0
     998:	00010000 	andeq	r0, r1, r0
     99c:	00009451 	andeq	r9, r0, r1, asr r4
     9a0:	0000a000 	andeq	sl, r0, r0
     9a4:	f3000400 	vshl.u8	d0, d0, d0
     9a8:	009f5101 	addseq	r5, pc, r1, lsl #2
     9ac:	00000000 	andeq	r0, r0, r0
     9b0:	a0000000 	andge	r0, r0, r0
     9b4:	ac000000 	stcge	0, cr0, [r0], {-0}
     9b8:	01000000 	mrseq	r0, (UNDEF: 0)
     9bc:	00ac5100 	adceq	r5, ip, r0, lsl #2
     9c0:	00cc0000 	sbceq	r0, ip, r0
     9c4:	00040000 	andeq	r0, r4, r0
     9c8:	9f5101f3 	svcls	0x005101f3
	...
     9d4:	000000a0 	andeq	r0, r0, r0, lsr #1
     9d8:	000000ac 	andeq	r0, r0, ip, lsr #1
     9dc:	ac510001 	mrrcge	0, 0, r0, r1, cr1
     9e0:	b8000000 	stmdalt	r0, {}	; <UNPREDICTABLE>
     9e4:	04000000 	streq	r0, [r0], #-0
     9e8:	5101f300 	mrspl	pc, SP_irq	; <UNPREDICTABLE>
     9ec:	0000b89f 	muleq	r0, pc, r8	; <UNPREDICTABLE>
     9f0:	0000c000 	andeq	ip, r0, r0
     9f4:	51000100 	mrspl	r0, (UNDEF: 16)
     9f8:	000000c0 	andeq	r0, r0, r0, asr #1
     9fc:	000000cc 	andeq	r0, r0, ip, asr #1
     a00:	01f3000d 	mvnseq	r0, sp
     a04:	ffff0a51 			; <UNDEFINED> instruction: 0xffff0a51
     a08:	7224381a 	eorvc	r3, r4, #1703936	; 0x1a0000
     a0c:	009f2100 	addseq	r2, pc, r0, lsl #2
     a10:	00000000 	andeq	r0, r0, r0
     a14:	a4000000 	strge	r0, [r0], #-0
     a18:	b4000000 	strlt	r0, [r0], #-0
     a1c:	01000000 	mrseq	r0, (UNDEF: 0)
     a20:	00b45300 	adcseq	r5, r4, r0, lsl #6
     a24:	00b80000 	adcseq	r0, r8, r0
     a28:	00060000 	andeq	r0, r6, r0
     a2c:	405101f3 	ldrshmi	r0, [r1], #-19	; 0xffffffed
     a30:	00b89f25 	adcseq	r9, r8, r5, lsr #30
     a34:	00bc0000 	adcseq	r0, ip, r0
     a38:	00010000 	andeq	r0, r1, r0
     a3c:	0000bc53 	andeq	fp, r0, r3, asr ip
     a40:	0000cc00 	andeq	ip, r0, r0, lsl #24
     a44:	f3000b00 	vqrdmulh.s<illegal width 8>	d0, d0, d0
     a48:	25405101 	strbcs	r5, [r0, #-257]	; 0xfffffeff
     a4c:	007c2438 	rsbseq	r2, ip, r8, lsr r4
     a50:	00009f21 	andeq	r9, r0, r1, lsr #30
     a54:	00000000 	andeq	r0, r0, r0
     a58:	00cc0000 	sbceq	r0, ip, r0
     a5c:	00d40000 	sbcseq	r0, r4, r0
     a60:	00010000 	andeq	r0, r1, r0
     a64:	0000d450 	andeq	sp, r0, r0, asr r4
     a68:	0000dc00 	andeq	sp, r0, r0, lsl #24
     a6c:	f3000400 	vshl.u8	d0, d0, d0
     a70:	009f5001 	addseq	r5, pc, r1
     a74:	00000000 	andeq	r0, r0, r0
     a78:	dc000000 	stcle	0, cr0, [r0], {-0}
     a7c:	e8000000 	stmda	r0, {}	; <UNPREDICTABLE>
     a80:	01000000 	mrseq	r0, (UNDEF: 0)
     a84:	00e85000 	rsceq	r5, r8, r0
     a88:	01000000 	mrseq	r0, (UNDEF: 0)
     a8c:	00040000 	andeq	r0, r4, r0
     a90:	9f5001f3 	svcls	0x005001f3
	...
     a9c:	000000dc 	ldrdeq	r0, [r0], -ip
     aa0:	000000e8 	andeq	r0, r0, r8, ror #1
     aa4:	e8500001 	ldmda	r0, {r0}^
     aa8:	f4000000 	vst4.8	{d0-d3}, [r0], r0
     aac:	04000000 	streq	r0, [r0], #-0
     ab0:	5001f300 	andpl	pc, r1, r0, lsl #6
     ab4:	0000f49f 	muleq	r0, pc, r4	; <UNPREDICTABLE>
     ab8:	0000fc00 	andeq	pc, r0, r0, lsl #24
     abc:	50000100 	andpl	r0, r0, r0, lsl #2
     ac0:	000000fc 	strdeq	r0, [r0], -ip
     ac4:	00000100 	andeq	r0, r0, r0, lsl #2
     ac8:	01f3000d 	mvnseq	r0, sp
     acc:	ffff0a50 			; <UNDEFINED> instruction: 0xffff0a50
     ad0:	7124381a 	teqvc	r4, sl, lsl r8
     ad4:	009f2100 	addseq	r2, pc, r0, lsl #2
     ad8:	00000000 	andeq	r0, r0, r0
     adc:	e0000000 	and	r0, r0, r0
     ae0:	f0000000 			; <UNDEFINED> instruction: 0xf0000000
     ae4:	01000000 	mrseq	r0, (UNDEF: 0)
     ae8:	00f05300 	rscseq	r5, r0, r0, lsl #6
     aec:	00f40000 	rscseq	r0, r4, r0
     af0:	00060000 	andeq	r0, r6, r0
     af4:	405001f3 	ldrshmi	r0, [r0], #-19	; 0xffffffed
     af8:	00f49f25 	rscseq	r9, r4, r5, lsr #30
     afc:	00f80000 	rscseq	r0, r8, r0
     b00:	00010000 	andeq	r0, r1, r0
     b04:	0000f853 	andeq	pc, r0, r3, asr r8	; <UNPREDICTABLE>
     b08:	00010000 	andeq	r0, r1, r0
     b0c:	f3000b00 	vqrdmulh.s<illegal width 8>	d0, d0, d0
     b10:	25405001 	strbcs	r5, [r0, #-1]
     b14:	00722438 	rsbseq	r2, r2, r8, lsr r4
     b18:	00009f21 	andeq	r9, r0, r1, lsr #30
	...
     b24:	00040000 	andeq	r0, r4, r0
     b28:	00020000 	andeq	r0, r2, r0
     b2c:	0004007d 	andeq	r0, r4, sp, ror r0
     b30:	00480000 	subeq	r0, r8, r0
     b34:	00020000 	andeq	r0, r2, r0
     b38:	0000107d 	andeq	r1, r0, sp, ror r0
	...
     b44:	002c0000 	eoreq	r0, ip, r0
     b48:	00010000 	andeq	r0, r1, r0
     b4c:	00002c50 	andeq	r2, r0, r0, asr ip
     b50:	00004800 	andeq	r4, r0, r0, lsl #16
     b54:	f3000400 	vshl.u8	d0, d0, d0
     b58:	009f5001 	addseq	r5, pc, r1
	...
     b64:	2c000000 	stccs	0, cr0, [r0], {-0}
     b68:	01000000 	mrseq	r0, (UNDEF: 0)
     b6c:	002c5100 	eoreq	r5, ip, r0, lsl #2
     b70:	00480000 	subeq	r0, r8, r0
     b74:	00010000 	andeq	r0, r1, r0
     b78:	00000055 	andeq	r0, r0, r5, asr r0
     b7c:	00000000 	andeq	r0, r0, r0
     b80:	00001c00 	andeq	r1, r0, r0, lsl #24
     b84:	00002c00 	andeq	r2, r0, r0, lsl #24
     b88:	51000100 	mrspl	r0, (UNDEF: 16)
     b8c:	0000002c 	andeq	r0, r0, ip, lsr #32
     b90:	00000048 	andeq	r0, r0, r8, asr #32
     b94:	00550001 	subseq	r0, r5, r1
     b98:	00000000 	andeq	r0, r0, r0
     b9c:	48000000 	stmdami	r0, {}	; <UNPREDICTABLE>
     ba0:	54000000 	strpl	r0, [r0], #-0
     ba4:	02000000 	andeq	r0, r0, #0
     ba8:	54007d00 	strpl	r7, [r0], #-3328	; 0xfffff300
     bac:	68000000 	stmdavs	r0, {}	; <UNPREDICTABLE>
     bb0:	02000000 	andeq	r0, r0, #0
     bb4:	68187d00 	ldmdavs	r8, {r8, sl, fp, ip, sp, lr}
     bb8:	40000000 	andmi	r0, r0, r0
     bbc:	03000001 	movweq	r0, #1
     bc0:	00d07d00 	sbcseq	r7, r0, r0, lsl #26
	...
     bcc:	00000048 	andeq	r0, r0, r8, asr #32
     bd0:	0000006c 	andeq	r0, r0, ip, rrx
     bd4:	6c500001 	mrrcvs	0, 0, r0, r0, cr1	; <UNPREDICTABLE>
     bd8:	84000000 	strhi	r0, [r0], #-0
     bdc:	01000000 	mrseq	r0, (UNDEF: 0)
     be0:	00845500 	addeq	r5, r4, r0, lsl #10
     be4:	01400000 	mrseq	r0, (UNDEF: 64)
     be8:	00040000 	andeq	r0, r4, r0
     bec:	9f5001f3 	svcls	0x005001f3
	...
     bf8:	00000048 	andeq	r0, r0, r8, asr #32
     bfc:	0000006c 	andeq	r0, r0, ip, rrx
     c00:	6c510001 	mrrcvs	0, 0, r0, r1, cr1
     c04:	f0000000 			; <UNDEFINED> instruction: 0xf0000000
     c08:	01000000 	mrseq	r0, (UNDEF: 0)
     c0c:	00f05600 	rscseq	r5, r0, r0, lsl #12
     c10:	01400000 	mrseq	r0, (UNDEF: 64)
     c14:	00040000 	andeq	r0, r4, r0
     c18:	9f5101f3 	svcls	0x005101f3
	...
     c24:	00000048 	andeq	r0, r0, r8, asr #32
     c28:	0000006c 	andeq	r0, r0, ip, rrx
     c2c:	6c520001 	mrrcvs	0, 0, r0, r2, cr1
     c30:	40000000 	andmi	r0, r0, r0
     c34:	01000001 	tsteq	r0, r1
     c38:	00005700 	andeq	r5, r0, r0, lsl #14
     c3c:	00000000 	andeq	r0, r0, r0
     c40:	00c40000 	sbceq	r0, r4, r0
     c44:	00f80000 	rscseq	r0, r8, r0
     c48:	00010000 	andeq	r0, r1, r0
     c4c:	0000f854 	andeq	pc, r0, r4, asr r8	; <UNPREDICTABLE>
     c50:	00011c00 	andeq	r1, r1, r0, lsl #24
     c54:	56000100 	strpl	r0, [r0], -r0, lsl #2
	...
     c60:	0000009c 	muleq	r0, ip, r0
     c64:	000000c8 	andeq	r0, r0, r8, asr #1
     c68:	c8550001 	ldmdagt	r5, {r0}^
     c6c:	ec000000 	stc	0, cr0, [r0], {-0}
     c70:	01000000 	mrseq	r0, (UNDEF: 0)
     c74:	00005000 	andeq	r5, r0, r0
     c78:	00000000 	andeq	r0, r0, r0
     c7c:	01400000 	mrseq	r0, (UNDEF: 64)
     c80:	01440000 	mrseq	r0, (UNDEF: 68)
     c84:	00020000 	andeq	r0, r2, r0
     c88:	0144007d 	hvceq	16397	; 0x400d
     c8c:	01480000 	mrseq	r0, (UNDEF: 72)
     c90:	00020000 	andeq	r0, r2, r0
     c94:	0148107d 	hvceq	33037	; 0x810d
     c98:	014c0000 	mrseq	r0, (UNDEF: 76)
     c9c:	00020000 	andeq	r0, r2, r0
     ca0:	014c347d 	hvceq	49997	; 0xc34d
     ca4:	05f40000 	ldrbeq	r0, [r4, #0]!
     ca8:	00030000 	andeq	r0, r3, r0
     cac:	0000d87d 	andeq	sp, r0, sp, ror r8
     cb0:	00000000 	andeq	r0, r0, r0
     cb4:	b8000000 	stmdalt	r0, {}	; <UNPREDICTABLE>
     cb8:	c0000001 	andgt	r0, r0, r1
     cbc:	02000001 	andeq	r0, r0, #1
     cc0:	609f3000 	addsvs	r3, pc, r0
     cc4:	74000004 	strvc	r0, [r0], #-4
     cc8:	02000004 	andeq	r0, r0, #4
     ccc:	009f3100 	addseq	r3, pc, r0, lsl #2
     cd0:	00000000 	andeq	r0, r0, r0
     cd4:	b8000000 	stmdalt	r0, {}	; <UNPREDICTABLE>
     cd8:	c0000001 	andgt	r0, r0, r1
     cdc:	02000001 	andeq	r0, r0, #1
     ce0:	c09f3000 	addsgt	r3, pc, r0
     ce4:	c0000001 	andgt	r0, r0, r1
     ce8:	01000003 	tsteq	r0, r3
     cec:	03d05a00 	bicseq	r5, r0, #0, 20
     cf0:	03e00000 	mvneq	r0, #0
     cf4:	00010000 	andeq	r0, r1, r0
     cf8:	0004605a 	andeq	r6, r4, sl, asr r0
     cfc:	00050800 	andeq	r0, r5, r0, lsl #16
     d00:	5a000100 	bpl	1108 <_SUPERVISOR_STACK_SIZE+0x908>
     d04:	00000514 	andeq	r0, r0, r4, lsl r5
     d08:	000005f4 	strdeq	r0, [r0], -r4
     d0c:	005a0001 	subseq	r0, sl, r1
     d10:	00000000 	andeq	r0, r0, r0
     d14:	c8000000 	stmdagt	r0, {}	; <UNPREDICTABLE>
     d18:	e8000001 	stmda	r0, {r0}
     d1c:	01000001 	tsteq	r0, r1
     d20:	02245000 	eoreq	r5, r4, #0
     d24:	03a40000 			; <UNDEFINED> instruction: 0x03a40000
     d28:	00010000 	andeq	r0, r1, r0
     d2c:	0003d050 	andeq	sp, r3, r0, asr r0
     d30:	0003e400 	andeq	lr, r3, r0, lsl #8
     d34:	50000100 	andpl	r0, r0, r0, lsl #2
     d38:	00000460 	andeq	r0, r0, r0, ror #8
     d3c:	00000464 	andeq	r0, r0, r4, ror #8
     d40:	74500001 	ldrbvc	r0, [r0], #-1
     d44:	84000004 	strhi	r0, [r0], #-4
     d48:	01000004 	tsteq	r0, r4
     d4c:	04905000 	ldreq	r5, [r0], #0
     d50:	04a00000 	strteq	r0, [r0], #0
     d54:	00010000 	andeq	r0, r1, r0
     d58:	0004a850 	andeq	sl, r4, r0, asr r8
     d5c:	00050400 	andeq	r0, r5, r0, lsl #8
     d60:	50000100 	andpl	r0, r0, r0, lsl #2
     d64:	00000514 	andeq	r0, r0, r4, lsl r5
     d68:	00000518 	andeq	r0, r0, r8, lsl r5
     d6c:	2c500001 	mrrccs	0, 0, r0, r0, cr1	; <UNPREDICTABLE>
     d70:	30000005 	andcc	r0, r0, r5
     d74:	01000005 	tsteq	r0, r5
     d78:	05385000 	ldreq	r5, [r8, #-0]!
     d7c:	05640000 	strbeq	r0, [r4, #-0]!
     d80:	00010000 	andeq	r0, r1, r0
     d84:	0005a450 	andeq	sl, r5, r0, asr r4
     d88:	0005a800 	andeq	sl, r5, r0, lsl #16
     d8c:	50000100 	andpl	r0, r0, r0, lsl #2
     d90:	000005a8 	andeq	r0, r0, r8, lsr #11
     d94:	000005ab 	andeq	r0, r0, fp, lsr #11
     d98:	e1730004 	cmn	r3, r4
     d9c:	05c09f00 	strbeq	r9, [r0, #3840]	; 0xf00
     da0:	05c30000 	strbeq	r0, [r3]
     da4:	00010000 	andeq	r0, r1, r0
     da8:	0005c850 	andeq	ip, r5, r0, asr r8
     dac:	0005cc00 	andeq	ip, r5, r0, lsl #24
     db0:	50000100 	andpl	r0, r0, r0, lsl #2
     db4:	000005cc 	andeq	r0, r0, ip, asr #11
     db8:	000005cf 	andeq	r0, r0, pc, asr #11
     dbc:	e1730004 	cmn	r3, r4
     dc0:	05d49f00 	ldrbeq	r9, [r4, #3840]	; 0xf00
     dc4:	05d80000 	ldrbeq	r0, [r8]
     dc8:	00010000 	andeq	r0, r1, r0
     dcc:	0005d850 	andeq	sp, r5, r0, asr r8
     dd0:	0005db00 	andeq	sp, r5, r0, lsl #22
     dd4:	73000400 	movwvc	r0, #1024	; 0x400
     dd8:	e09f00e1 	adds	r0, pc, r1, ror #1
     ddc:	e4000005 	str	r0, [r0], #-5
     de0:	01000005 	tsteq	r0, r5
     de4:	05e45000 	strbeq	r5, [r4, #0]!
     de8:	05e70000 	strbeq	r0, [r7, #0]!
     dec:	00040000 	andeq	r0, r4, r0
     df0:	9f00e173 	svcls	0x0000e173
	...
     dfc:	00000154 	andeq	r0, r0, r4, asr r1
     e00:	00000184 	andeq	r0, r0, r4, lsl #3
     e04:	845b0001 	ldrbhi	r0, [fp], #-1
     e08:	8c000001 	stchi	0, cr0, [r0], {1}
     e0c:	01000001 	tsteq	r0, r1
     e10:	018c5400 	orreq	r5, ip, r0, lsl #8
     e14:	01c80000 	biceq	r0, r8, r0
     e18:	00010000 	andeq	r0, r1, r0
     e1c:	0001c85b 	andeq	ip, r1, fp, asr r8
     e20:	0001e800 	andeq	lr, r1, r0, lsl #16
     e24:	54000100 	strpl	r0, [r0], #-256	; 0xffffff00
     e28:	00000218 	andeq	r0, r0, r8, lsl r2
     e2c:	00000220 	andeq	r0, r0, r0, lsr #4
     e30:	20540001 	subscs	r0, r4, r1
     e34:	24000002 	strcs	r0, [r0], #-2
     e38:	01000002 	tsteq	r0, r2
     e3c:	02245b00 	eoreq	r5, r4, #0, 22
     e40:	03b80000 			; <UNDEFINED> instruction: 0x03b80000
     e44:	00010000 	andeq	r0, r1, r0
     e48:	0003b854 	andeq	fp, r3, r4, asr r8
     e4c:	0003d000 	andeq	sp, r3, r0
     e50:	5b000100 	blpl	1258 <_SUPERVISOR_STACK_SIZE+0xa58>
     e54:	000003d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     e58:	00000568 	andeq	r0, r0, r8, ror #10
     e5c:	94540001 	ldrbls	r0, [r4], #-1
     e60:	ac000005 	stcge	0, cr0, [r0], {5}
     e64:	01000005 	tsteq	r0, r5
     e68:	05ac5400 	streq	r5, [ip, #1024]!	; 0x400
     e6c:	05b40000 	ldreq	r0, [r4, #0]!
     e70:	00030000 	andeq	r0, r3, r0
     e74:	b49f027b 	ldrlt	r0, [pc], #635	; e7c <_SUPERVISOR_STACK_SIZE+0x67c>
     e78:	c0000005 	andgt	r0, r0, r5
     e7c:	01000005 	tsteq	r0, r5
     e80:	05c05b00 	strbeq	r5, [r0, #2816]	; 0xb00
     e84:	05f40000 	ldrbeq	r0, [r4, #0]!
     e88:	00010000 	andeq	r0, r1, r0
     e8c:	00000054 	andeq	r0, r0, r4, asr r0
     e90:	00000000 	andeq	r0, r0, r0
     e94:	0001e000 	andeq	lr, r1, r0
     e98:	0001e800 	andeq	lr, r1, r0, lsl #16
     e9c:	30000200 	andcc	r0, r0, r0, lsl #4
     ea0:	0002049f 	muleq	r2, pc, r4	; <UNPREDICTABLE>
     ea4:	00021c00 	andeq	r1, r2, r0, lsl #24
     ea8:	52000100 	andpl	r0, r0, #0, 2
	...
     eb4:	00000204 	andeq	r0, r0, r4, lsl #4
     eb8:	0000021c 	andeq	r0, r0, ip, lsl r2
     ebc:	00540001 	subseq	r0, r4, r1
     ec0:	00000000 	andeq	r0, r0, r0
     ec4:	2c000000 	stccs	0, cr0, [r0], {-0}
     ec8:	34000002 	strcc	r0, [r0], #-2
     ecc:	01000002 	tsteq	r0, r2
     ed0:	02345300 	eorseq	r5, r4, #0, 6
     ed4:	03a40000 			; <UNDEFINED> instruction: 0x03a40000
     ed8:	00010000 	andeq	r0, r1, r0
     edc:	0003d050 	andeq	sp, r3, r0, asr r0
     ee0:	0003e400 	andeq	lr, r3, r0, lsl #8
     ee4:	50000100 	andpl	r0, r0, r0, lsl #2
     ee8:	00000460 	andeq	r0, r0, r0, ror #8
     eec:	00000464 	andeq	r0, r0, r4, ror #8
     ef0:	74500001 	ldrbvc	r0, [r0], #-1
     ef4:	84000004 	strhi	r0, [r0], #-4
     ef8:	01000004 	tsteq	r0, r4
     efc:	04905000 	ldreq	r5, [r0], #0
     f00:	04a00000 	strteq	r0, [r0], #0
     f04:	00010000 	andeq	r0, r1, r0
     f08:	0004a850 	andeq	sl, r4, r0, asr r8
     f0c:	00050400 	andeq	r0, r5, r0, lsl #8
     f10:	50000100 	andpl	r0, r0, r0, lsl #2
     f14:	00000514 	andeq	r0, r0, r4, lsl r5
     f18:	00000518 	andeq	r0, r0, r8, lsl r5
     f1c:	2c500001 	mrrccs	0, 0, r0, r0, cr1	; <UNPREDICTABLE>
     f20:	30000005 	andcc	r0, r0, r5
     f24:	01000005 	tsteq	r0, r5
     f28:	05a45000 	streq	r5, [r4, #0]!
     f2c:	05a80000 	streq	r0, [r8, #0]!
     f30:	00010000 	andeq	r0, r1, r0
     f34:	0005a850 	andeq	sl, r5, r0, asr r8
     f38:	0005ab00 	andeq	sl, r5, r0, lsl #22
     f3c:	73000400 	movwvc	r0, #1024	; 0x400
     f40:	c09f00e1 	addsgt	r0, pc, r1, ror #1
     f44:	c3000005 	movwgt	r0, #5
     f48:	01000005 	tsteq	r0, r5
     f4c:	05c85000 	strbeq	r5, [r8]
     f50:	05cc0000 	strbeq	r0, [ip]
     f54:	00010000 	andeq	r0, r1, r0
     f58:	0005cc50 	andeq	ip, r5, r0, asr ip
     f5c:	0005cf00 	andeq	ip, r5, r0, lsl #30
     f60:	73000400 	movwvc	r0, #1024	; 0x400
     f64:	d49f00e1 	ldrle	r0, [pc], #225	; f6c <_SUPERVISOR_STACK_SIZE+0x76c>
     f68:	d8000005 	stmdale	r0, {r0, r2}
     f6c:	01000005 	tsteq	r0, r5
     f70:	05d85000 	ldrbeq	r5, [r8]
     f74:	05db0000 	ldrbeq	r0, [fp]
     f78:	00040000 	andeq	r0, r4, r0
     f7c:	9f00e173 	svcls	0x0000e173
     f80:	000005e0 	andeq	r0, r0, r0, ror #11
     f84:	000005e4 	andeq	r0, r0, r4, ror #11
     f88:	e4500001 	ldrb	r0, [r0], #-1
     f8c:	e7000005 	str	r0, [r0, -r5]
     f90:	04000005 	streq	r0, [r0], #-5
     f94:	00e17300 	rsceq	r7, r1, r0, lsl #6
     f98:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
     f9c:	00000000 	andeq	r0, r0, r0
     fa0:	0003e000 	andeq	lr, r3, r0
     fa4:	0003ec00 	andeq	lr, r3, r0, lsl #24
     fa8:	91000400 	tstls	r0, r0, lsl #8
     fac:	ec9f7f88 	ldc	15, cr7, [pc], {136}	; 0x88
     fb0:	ff000003 			; <UNDEFINED> instruction: 0xff000003
     fb4:	01000003 	tsteq	r0, r3
     fb8:	03ff5100 	mvnseq	r5, #0, 2
     fbc:	04580000 	ldrbeq	r0, [r8], #-0
     fc0:	00040000 	andeq	r0, r4, r0
     fc4:	9f7f8891 	svcls	0x007f8891
     fc8:	00000458 	andeq	r0, r0, r8, asr r4
     fcc:	0000045b 	andeq	r0, r0, fp, asr r4
     fd0:	5b510001 	blpl	1440fdc <__stack+0x128308c>
     fd4:	60000004 	andvs	r0, r0, r4
     fd8:	04000004 	streq	r0, [r0], #-4
     fdc:	7f889100 	svcvc	0x00889100
     fe0:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
     fe4:	00000000 	andeq	r0, r0, r0
     fe8:	0003e000 	andeq	lr, r3, r0
     fec:	00042400 	andeq	r2, r4, r0, lsl #8
     ff0:	5a000100 	bpl	13f8 <_SUPERVISOR_STACK_SIZE+0xbf8>
     ff4:	00000424 	andeq	r0, r0, r4, lsr #8
     ff8:	00000428 	andeq	r0, r0, r8, lsr #8
     ffc:	017a0003 	cmneq	sl, r3
    1000:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
    1004:	00000000 	andeq	r0, r0, r0
    1008:	00053800 	andeq	r3, r5, r0, lsl #16
    100c:	0005a400 	andeq	sl, r5, r0, lsl #8
    1010:	f2000600 	vmax.s8	d0, d0, d0
    1014:	00001615 	andeq	r1, r0, r5, lsl r6
	...
    1020:	00053800 	andeq	r3, r5, r0, lsl #16
    1024:	00056800 	andeq	r6, r5, r0, lsl #16
    1028:	30000200 	andcc	r0, r0, r0, lsl #4
    102c:	0005809f 	muleq	r5, pc, r0	; <UNPREDICTABLE>
    1030:	00059400 	andeq	r9, r5, r0, lsl #8
    1034:	52000100 	andpl	r0, r0, #0, 2
	...
    1040:	00000538 	andeq	r0, r0, r8, lsr r5
    1044:	00000568 	andeq	r0, r0, r8, ror #10
    1048:	00540001 	subseq	r0, r4, r1
	...
    1054:	04000000 	streq	r0, [r0], #-0
    1058:	02000000 	andeq	r0, r0, #0
    105c:	04007d00 	streq	r7, [r0], #-3328	; 0xfffff300
    1060:	28000000 	stmdacs	r0, {}	; <UNPREDICTABLE>
    1064:	02000000 	andeq	r0, r0, #0
    1068:	00087d00 	andeq	r7, r8, r0, lsl #26
	...
    1074:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    1078:	01000000 	mrseq	r0, (UNDEF: 0)
    107c:	00085000 	andeq	r5, r8, r0
    1080:	00280000 	eoreq	r0, r8, r0
    1084:	00040000 	andeq	r0, r4, r0
    1088:	9f5001f3 	svcls	0x005001f3
	...
    1098:	0000000c 	andeq	r0, r0, ip
    109c:	0c510001 	mrrceq	0, 0, r0, r1, cr1
    10a0:	28000000 	stmdacs	r0, {}	; <UNPREDICTABLE>
    10a4:	04000000 	streq	r0, [r0], #-0
    10a8:	5101f300 	mrspl	pc, SP_irq	; <UNPREDICTABLE>
    10ac:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
	...
    10b8:	00001300 	andeq	r1, r0, r0, lsl #6
    10bc:	52000100 	andpl	r0, r0, #0, 2
    10c0:	00000013 	andeq	r0, r0, r3, lsl r0
    10c4:	00000028 	andeq	r0, r0, r8, lsr #32
    10c8:	01f30004 	mvnseq	r0, r4
    10cc:	00009f52 	andeq	r9, r0, r2, asr pc
    10d0:	00000000 	andeq	r0, r0, r0
    10d4:	00280000 	eoreq	r0, r8, r0
    10d8:	002c0000 	eoreq	r0, ip, r0
    10dc:	00020000 	andeq	r0, r2, r0
    10e0:	002c007d 	eoreq	r0, ip, sp, ror r0
    10e4:	00b00000 	adcseq	r0, r0, r0
    10e8:	00020000 	andeq	r0, r2, r0
    10ec:	0000107d 	andeq	r1, r0, sp, ror r0
    10f0:	00000000 	andeq	r0, r0, r0
    10f4:	00280000 	eoreq	r0, r8, r0
    10f8:	00380000 	eorseq	r0, r8, r0
    10fc:	00010000 	andeq	r0, r1, r0
    1100:	00003850 	andeq	r3, r0, r0, asr r8
    1104:	0000b000 	andeq	fp, r0, r0
    1108:	54000100 	strpl	r0, [r0], #-256	; 0xffffff00
	...
    1114:	00000028 	andeq	r0, r0, r8, lsr #32
    1118:	00000038 	andeq	r0, r0, r8, lsr r0
    111c:	9f300002 	svcls	0x00300002
    1120:	00000038 	andeq	r0, r0, r8, lsr r0
    1124:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
    1128:	00550001 	subseq	r0, r5, r1
    112c:	00000000 	andeq	r0, r0, r0
    1130:	90000000 	andls	r0, r0, r0
    1134:	a4000000 	strge	r0, [r0], #-0
    1138:	01000000 	mrseq	r0, (UNDEF: 0)
    113c:	00005000 	andeq	r5, r0, r0
    1140:	00000000 	andeq	r0, r0, r0
    1144:	00b00000 	adcseq	r0, r0, r0
    1148:	00b40000 	adcseq	r0, r4, r0
    114c:	00020000 	andeq	r0, r2, r0
    1150:	00b4007d 	adcseq	r0, r4, sp, ror r0
    1154:	00bc0000 	adcseq	r0, ip, r0
    1158:	00020000 	andeq	r0, r2, r0
    115c:	00bc107d 	adcseq	r1, ip, sp, ror r0
    1160:	01880000 	orreq	r0, r8, r0
    1164:	00020000 	andeq	r0, r2, r0
    1168:	0000187d 	andeq	r1, r0, sp, ror r8
    116c:	00000000 	andeq	r0, r0, r0
    1170:	00b00000 	adcseq	r0, r0, r0
    1174:	00f40000 	rscseq	r0, r4, r0
    1178:	00010000 	andeq	r0, r1, r0
    117c:	0000f450 	andeq	pc, r0, r0, asr r4	; <UNPREDICTABLE>
    1180:	00011400 	andeq	r1, r1, r0, lsl #8
    1184:	55000100 	strpl	r0, [r0, #-256]	; 0xffffff00
    1188:	00000114 	andeq	r0, r0, r4, lsl r1
    118c:	00000118 	andeq	r0, r0, r8, lsl r1
    1190:	18500001 	ldmdane	r0, {r0}^
    1194:	48000001 	stmdami	r0, {r0}
    1198:	01000001 	tsteq	r0, r1
    119c:	01485500 	cmpeq	r8, r0, lsl #10
    11a0:	014c0000 	mrseq	r0, (UNDEF: 76)
    11a4:	00010000 	andeq	r0, r1, r0
    11a8:	00014c50 	andeq	r4, r1, r0, asr ip
    11ac:	00016c00 	andeq	r6, r1, r0, lsl #24
    11b0:	55000100 	strpl	r0, [r0, #-256]	; 0xffffff00
    11b4:	0000016c 	andeq	r0, r0, ip, ror #2
    11b8:	00000170 	andeq	r0, r0, r0, ror r1
    11bc:	70500001 	subsvc	r0, r0, r1
    11c0:	88000001 	stmdahi	r0, {r0}
    11c4:	01000001 	tsteq	r0, r1
    11c8:	00005500 	andeq	r5, r0, r0, lsl #10
    11cc:	00000000 	andeq	r0, r0, r0
    11d0:	00b00000 	adcseq	r0, r0, r0
    11d4:	00e00000 	rsceq	r0, r0, r0
    11d8:	00010000 	andeq	r0, r1, r0
    11dc:	0000e051 	andeq	lr, r0, r1, asr r0
    11e0:	00014800 	andeq	r4, r1, r0, lsl #16
    11e4:	56000100 	strpl	r0, [r0], -r0, lsl #2
    11e8:	00000148 	andeq	r0, r0, r8, asr #2
    11ec:	00000150 	andeq	r0, r0, r0, asr r1
    11f0:	50510001 	subspl	r0, r1, r1
    11f4:	6c000001 	stcvs	0, cr0, [r0], {1}
    11f8:	01000001 	tsteq	r0, r1
    11fc:	016c5600 	cmneq	ip, r0, lsl #12
    1200:	01740000 	cmneq	r4, r0
    1204:	00010000 	andeq	r0, r1, r0
    1208:	00017451 	andeq	r7, r1, r1, asr r4
    120c:	00018800 	andeq	r8, r1, r0, lsl #16
    1210:	56000100 	strpl	r0, [r0], -r0, lsl #2
	...
    121c:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
    1220:	000000ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    1224:	ff520001 			; <UNDEFINED> instruction: 0xff520001
    1228:	14000000 	strne	r0, [r0], #-0
    122c:	04000001 	streq	r0, [r0], #-1
    1230:	5201f300 	andpl	pc, r1, #0, 6
    1234:	0001149f 	muleq	r1, pc, r4	; <UNPREDICTABLE>
    1238:	00012700 	andeq	r2, r1, r0, lsl #14
    123c:	52000100 	andpl	r0, r0, #0, 2
    1240:	00000127 	andeq	r0, r0, r7, lsr #2
    1244:	00000148 	andeq	r0, r0, r8, asr #2
    1248:	01f30004 	mvnseq	r0, r4
    124c:	01489f52 	cmpeq	r8, r2, asr pc
    1250:	01570000 	cmpeq	r7, r0
    1254:	00010000 	andeq	r0, r1, r0
    1258:	00015752 	andeq	r5, r1, r2, asr r7
    125c:	00016c00 	andeq	r6, r1, r0, lsl #24
    1260:	f3000400 	vshl.u8	d0, d0, d0
    1264:	6c9f5201 	lfmvs	f5, 4, [pc], {1}
    1268:	7b000001 	blvc	1274 <_SUPERVISOR_STACK_SIZE+0xa74>
    126c:	01000001 	tsteq	r0, r1
    1270:	017b5200 	cmneq	fp, r0, lsl #4
    1274:	01880000 	orreq	r0, r8, r0
    1278:	00040000 	andeq	r0, r4, r0
    127c:	9f5201f3 	svcls	0x005201f3
	...
    1288:	00000188 	andeq	r0, r0, r8, lsl #3
    128c:	0000018c 	andeq	r0, r0, ip, lsl #3
    1290:	007d0002 	rsbseq	r0, sp, r2
    1294:	0000018c 	andeq	r0, r0, ip, lsl #3
    1298:	00000218 	andeq	r0, r0, r8, lsl r2
    129c:	107d0002 	rsbsne	r0, sp, r2
	...
    12a8:	00000188 	andeq	r0, r0, r8, lsl #3
    12ac:	00000194 	muleq	r0, r4, r1
    12b0:	94500001 	ldrbls	r0, [r0], #-1
    12b4:	18000001 	stmdane	r0, {r0}
    12b8:	01000002 	tsteq	r0, r2
    12bc:	00005400 	andeq	r5, r0, r0, lsl #8
    12c0:	00000000 	andeq	r0, r0, r0
    12c4:	019c0000 	orrseq	r0, ip, r0
    12c8:	01c00000 	biceq	r0, r0, r0
    12cc:	00010000 	andeq	r0, r1, r0
    12d0:	0001e050 	andeq	lr, r1, r0, asr r0
    12d4:	0001f800 	andeq	pc, r1, r0, lsl #16
    12d8:	50000100 	andpl	r0, r0, r0, lsl #2
    12dc:	00000208 	andeq	r0, r0, r8, lsl #4
    12e0:	00000218 	andeq	r0, r0, r8, lsl r2
    12e4:	00500001 	subseq	r0, r0, r1
    12e8:	00000000 	andeq	r0, r0, r0
    12ec:	88000000 	stmdahi	r0, {}	; <UNPREDICTABLE>
    12f0:	b4000001 	strlt	r0, [r0], #-1
    12f4:	02000001 	andeq	r0, r0, #1
    12f8:	b49f3000 	ldrlt	r3, [pc], #0	; 1300 <_SUPERVISOR_STACK_SIZE+0xb00>
    12fc:	bc000001 	stclt	0, cr0, [r0], {1}
    1300:	01000001 	tsteq	r0, r1
    1304:	01d45500 	bicseq	r5, r4, r0, lsl #10
    1308:	01ec0000 	mvneq	r0, r0
    130c:	00010000 	andeq	r0, r1, r0
    1310:	00020855 	andeq	r0, r2, r5, asr r8
    1314:	00021800 	andeq	r1, r2, r0, lsl #16
    1318:	30000200 	andcc	r0, r0, r0, lsl #4
    131c:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
    1320:	00000000 	andeq	r0, r0, r0
    1324:	00021800 	andeq	r1, r2, r0, lsl #16
    1328:	00021c00 	andeq	r1, r2, r0, lsl #24
    132c:	7d000200 	sfmvc	f0, 4, [r0, #-0]
    1330:	00021c00 	andeq	r1, r2, r0, lsl #24
    1334:	00022400 	andeq	r2, r2, r0, lsl #8
    1338:	7d000200 	sfmvc	f0, 4, [r0, #-0]
    133c:	00022410 	andeq	r2, r2, r0, lsl r4
    1340:	00031800 	andeq	r1, r3, r0, lsl #16
    1344:	7d000200 	sfmvc	f0, 4, [r0, #-0]
    1348:	00000018 	andeq	r0, r0, r8, lsl r0
    134c:	00000000 	andeq	r0, r0, r0
    1350:	00021800 	andeq	r1, r2, r0, lsl #16
    1354:	00025c00 	andeq	r5, r2, r0, lsl #24
    1358:	50000100 	andpl	r0, r0, r0, lsl #2
    135c:	0000025c 	andeq	r0, r0, ip, asr r2
    1360:	00000280 	andeq	r0, r0, r0, lsl #5
    1364:	80550001 	subshi	r0, r5, r1
    1368:	84000002 	strhi	r0, [r0], #-2
    136c:	01000002 	tsteq	r0, r2
    1370:	02845000 	addeq	r5, r4, #0
    1374:	02d40000 	sbcseq	r0, r4, #0
    1378:	00010000 	andeq	r0, r1, r0
    137c:	0002d455 	andeq	sp, r2, r5, asr r4
    1380:	0002d800 	andeq	sp, r2, r0, lsl #16
    1384:	50000100 	andpl	r0, r0, r0, lsl #2
    1388:	000002d8 	ldrdeq	r0, [r0], -r8
    138c:	000002fc 	strdeq	r0, [r0], -ip
    1390:	fc550001 	mrrc2	0, 0, r0, r5, cr1
    1394:	00000002 	andeq	r0, r0, r2
    1398:	01000003 	tsteq	r0, r3
    139c:	03005000 	movweq	r5, #0
    13a0:	03180000 	tsteq	r8, #0
    13a4:	00010000 	andeq	r0, r1, r0
    13a8:	00000055 	andeq	r0, r0, r5, asr r0
    13ac:	00000000 	andeq	r0, r0, r0
    13b0:	00021800 	andeq	r1, r2, r0, lsl #16
    13b4:	00024800 	andeq	r4, r2, r0, lsl #16
    13b8:	51000100 	mrspl	r0, (UNDEF: 16)
    13bc:	00000248 	andeq	r0, r0, r8, asr #4
    13c0:	00000268 	andeq	r0, r0, r8, ror #4
    13c4:	68560001 	ldmdavs	r6, {r0}^
    13c8:	80000002 	andhi	r0, r0, r2
    13cc:	04000002 	streq	r0, [r0], #-2
    13d0:	5101f300 	mrspl	pc, SP_irq	; <UNPREDICTABLE>
    13d4:	0002809f 	muleq	r2, pc, r0	; <UNPREDICTABLE>
    13d8:	0002c400 	andeq	ip, r2, r0, lsl #8
    13dc:	56000100 	strpl	r0, [r0], -r0, lsl #2
    13e0:	000002c4 	andeq	r0, r0, r4, asr #5
    13e4:	000002d4 	ldrdeq	r0, [r0], -r4
    13e8:	01f30004 	mvnseq	r0, r4
    13ec:	02d49f51 	sbcseq	r9, r4, #324	; 0x144
    13f0:	02dc0000 	sbcseq	r0, ip, #0
    13f4:	00010000 	andeq	r0, r1, r0
    13f8:	0002dc51 	andeq	sp, r2, r1, asr ip
    13fc:	0002e400 	andeq	lr, r2, r0, lsl #8
    1400:	56000100 	strpl	r0, [r0], -r0, lsl #2
    1404:	000002e4 	andeq	r0, r0, r4, ror #5
    1408:	000002fc 	strdeq	r0, [r0], -ip
    140c:	01f30004 	mvnseq	r0, r4
    1410:	02fc9f51 	rscseq	r9, ip, #324	; 0x144
    1414:	03040000 	movweq	r0, #16384	; 0x4000
    1418:	00010000 	andeq	r0, r1, r0
    141c:	00030451 	andeq	r0, r3, r1, asr r4
    1420:	00031800 	andeq	r1, r3, r0, lsl #16
    1424:	56000100 	strpl	r0, [r0], -r0, lsl #2
	...
    1430:	00000218 	andeq	r0, r0, r8, lsl r2
    1434:	0000026b 	andeq	r0, r0, fp, ror #4
    1438:	6b520001 	blvs	1481444 <__stack+0x12c34f4>
    143c:	80000002 	andhi	r0, r0, r2
    1440:	04000002 	streq	r0, [r0], #-2
    1444:	5201f300 	andpl	pc, r1, #0, 6
    1448:	0002809f 	muleq	r2, pc, r0	; <UNPREDICTABLE>
    144c:	00028f00 	andeq	r8, r2, r0, lsl #30
    1450:	52000100 	andpl	r0, r0, #0, 2
    1454:	0000028f 	andeq	r0, r0, pc, lsl #5
    1458:	000002d4 	ldrdeq	r0, [r0], -r4
    145c:	01f30004 	mvnseq	r0, r4
    1460:	02d49f52 	sbcseq	r9, r4, #328	; 0x148
    1464:	02e70000 	rsceq	r0, r7, #0
    1468:	00010000 	andeq	r0, r1, r0
    146c:	0002e752 	andeq	lr, r2, r2, asr r7
    1470:	0002fc00 	andeq	pc, r2, r0, lsl #24
    1474:	f3000400 	vshl.u8	d0, d0, d0
    1478:	fc9f5201 	ldc2	2, cr5, [pc], {1}
    147c:	0b000002 	bleq	148c <_SUPERVISOR_STACK_SIZE+0xc8c>
    1480:	01000003 	tsteq	r0, r3
    1484:	030b5200 	movweq	r5, #45568	; 0xb200
    1488:	03180000 	tsteq	r8, #0
    148c:	00040000 	andeq	r0, r4, r0
    1490:	9f5201f3 	svcls	0x005201f3
	...
    149c:	000002c4 	andeq	r0, r0, r4, asr #5
    14a0:	000002c8 	andeq	r0, r0, r8, asr #5
    14a4:	c8500001 	ldmdagt	r0, {r0}^
    14a8:	d4000002 	strle	r0, [r0], #-2
    14ac:	01000002 	tsteq	r0, r2
    14b0:	00005600 	andeq	r5, r0, r0, lsl #12
    14b4:	00000000 	andeq	r0, r0, r0
    14b8:	02980000 	addseq	r0, r8, #0
    14bc:	029c0000 	addseq	r0, ip, #0
    14c0:	00010000 	andeq	r0, r1, r0
    14c4:	00029c50 	andeq	r9, r2, r0, asr ip
    14c8:	0002d400 	andeq	sp, r2, r0, lsl #8
    14cc:	54000100 	strpl	r0, [r0], #-256	; 0xffffff00
	...
    14d8:	00000318 	andeq	r0, r0, r8, lsl r3
    14dc:	0000031c 	andeq	r0, r0, ip, lsl r3
    14e0:	007d0002 	rsbseq	r0, sp, r2
    14e4:	0000031c 	andeq	r0, r0, ip, lsl r3
    14e8:	00000324 	andeq	r0, r0, r4, lsr #6
    14ec:	247d0002 	ldrbtcs	r0, [sp], #-2
    14f0:	00000324 	andeq	r0, r0, r4, lsr #6
    14f4:	000004d8 	ldrdeq	r0, [r0], -r8
    14f8:	307d0002 	rsbscc	r0, sp, r2
	...
    1504:	00000318 	andeq	r0, r0, r8, lsl r3
    1508:	00000374 	andeq	r0, r0, r4, ror r3
    150c:	74500001 	ldrbvc	r0, [r0], #-1
    1510:	80000003 	andhi	r0, r0, r3
    1514:	01000003 	tsteq	r0, r3
    1518:	03805b00 	orreq	r5, r0, #0, 22
    151c:	03840000 	orreq	r0, r4, #0
    1520:	00010000 	andeq	r0, r1, r0
    1524:	00038450 	andeq	r8, r3, r0, asr r4
    1528:	0003a000 	andeq	sl, r3, r0
    152c:	5b000100 	blpl	1934 <_SUPERVISOR_STACK_SIZE+0x1134>
    1530:	000003a0 	andeq	r0, r0, r0, lsr #7
    1534:	000003a4 	andeq	r0, r0, r4, lsr #7
    1538:	a4500001 	ldrbge	r0, [r0], #-1
    153c:	ac000003 	stcge	0, cr0, [r0], {3}
    1540:	01000003 	tsteq	r0, r3
    1544:	03ac5b00 			; <UNDEFINED> instruction: 0x03ac5b00
    1548:	03b00000 	movseq	r0, #0
    154c:	00010000 	andeq	r0, r1, r0
    1550:	0003b050 	andeq	fp, r3, r0, asr r0
    1554:	0003b800 	andeq	fp, r3, r0, lsl #16
    1558:	5b000100 	blpl	1960 <_SUPERVISOR_STACK_SIZE+0x1160>
    155c:	000003b8 			; <UNDEFINED> instruction: 0x000003b8
    1560:	000003bc 			; <UNDEFINED> instruction: 0x000003bc
    1564:	bc500001 	mrrclt	0, 0, r0, r0, cr1	; <UNPREDICTABLE>
    1568:	b0000003 	andlt	r0, r0, r3
    156c:	01000004 	tsteq	r0, r4
    1570:	04b05b00 	ldrteq	r5, [r0], #2816	; 0xb00
    1574:	04b40000 	ldrteq	r0, [r4], #0
    1578:	00010000 	andeq	r0, r1, r0
    157c:	0004b450 	andeq	fp, r4, r0, asr r4
    1580:	0004d800 	andeq	sp, r4, r0, lsl #16
    1584:	5b000100 	blpl	198c <_SUPERVISOR_STACK_SIZE+0x118c>
	...
    1590:	00000318 	andeq	r0, r0, r8, lsl r3
    1594:	00000374 	andeq	r0, r0, r4, ror r3
    1598:	74510001 	ldrbvc	r0, [r1], #-1
    159c:	80000003 	andhi	r0, r0, r3
    15a0:	01000003 	tsteq	r0, r3
    15a4:	03805500 	orreq	r5, r0, #0, 10
    15a8:	03880000 	orreq	r0, r8, #0
    15ac:	00010000 	andeq	r0, r1, r0
    15b0:	00038851 	andeq	r8, r3, r1, asr r8
    15b4:	0003a000 	andeq	sl, r3, r0
    15b8:	55000100 	strpl	r0, [r0, #-256]	; 0xffffff00
    15bc:	000003a0 	andeq	r0, r0, r0, lsr #7
    15c0:	000003a8 	andeq	r0, r0, r8, lsr #7
    15c4:	a8510001 	ldmdage	r1, {r0}^
    15c8:	ac000003 	stcge	0, cr0, [r0], {3}
    15cc:	01000003 	tsteq	r0, r3
    15d0:	03ac5500 			; <UNDEFINED> instruction: 0x03ac5500
    15d4:	03b40000 			; <UNDEFINED> instruction: 0x03b40000
    15d8:	00010000 	andeq	r0, r1, r0
    15dc:	0003b451 	andeq	fp, r3, r1, asr r4
    15e0:	0003b800 	andeq	fp, r3, r0, lsl #16
    15e4:	55000100 	strpl	r0, [r0, #-256]	; 0xffffff00
    15e8:	000003b8 			; <UNDEFINED> instruction: 0x000003b8
    15ec:	000003cf 	andeq	r0, r0, pc, asr #7
    15f0:	cf510001 	svcgt	0x00510001
    15f4:	b0000003 	andlt	r0, r0, r3
    15f8:	01000004 	tsteq	r0, r4
    15fc:	04b05500 	ldrteq	r5, [r0], #1280	; 0x500
    1600:	04b80000 	ldrteq	r0, [r8], #0
    1604:	00010000 	andeq	r0, r1, r0
    1608:	0004b851 	andeq	fp, r4, r1, asr r8
    160c:	0004d800 	andeq	sp, r4, r0, lsl #16
    1610:	55000100 	strpl	r0, [r0, #-256]	; 0xffffff00
	...
    161c:	00000404 	andeq	r0, r0, r4, lsl #8
    1620:	00000408 	andeq	r0, r0, r8, lsl #8
    1624:	08500001 	ldmdaeq	r0, {r0}^
    1628:	b0000004 	andlt	r0, r0, r4
    162c:	01000004 	tsteq	r0, r4
    1630:	00005a00 	andeq	r5, r0, r0, lsl #20
    1634:	00000000 	andeq	r0, r0, r0
    1638:	04100000 	ldreq	r0, [r0], #-0
    163c:	04380000 	ldrteq	r0, [r8], #-0
    1640:	00010000 	andeq	r0, r1, r0
    1644:	00000050 	andeq	r0, r0, r0, asr r0
    1648:	00000000 	andeq	r0, r0, r0
    164c:	00041c00 	andeq	r1, r4, r0, lsl #24
    1650:	00043c00 	andeq	r3, r4, r0, lsl #24
    1654:	51000100 	mrspl	r0, (UNDEF: 16)
	...
    1660:	00000318 	andeq	r0, r0, r8, lsl r3
    1664:	00000374 	andeq	r0, r0, r4, ror r3
    1668:	9f300002 	svcls	0x00300002
    166c:	00000380 	andeq	r0, r0, r0, lsl #7
    1670:	000003e8 	andeq	r0, r0, r8, ror #7
    1674:	9f300002 	svcls	0x00300002
    1678:	000004b0 			; <UNDEFINED> instruction: 0x000004b0
    167c:	000004d8 	ldrdeq	r0, [r0], -r8
    1680:	9f300002 	svcls	0x00300002
	...
    168c:	00000318 	andeq	r0, r0, r8, lsl r3
    1690:	00000374 	andeq	r0, r0, r4, ror r3
    1694:	ff090003 			; <UNDEFINED> instruction: 0xff090003
    1698:	0003809f 	muleq	r3, pc, r0	; <UNPREDICTABLE>
    169c:	0003e800 	andeq	lr, r3, r0, lsl #16
    16a0:	09000300 	stmdbeq	r0, {r8, r9}
    16a4:	042c9fff 	strteq	r9, [ip], #-4095	; 0xfffff001
    16a8:	04b00000 	ldrteq	r0, [r0], #0
    16ac:	00010000 	andeq	r0, r1, r0
    16b0:	0004b057 	andeq	fp, r4, r7, asr r0
    16b4:	0004d800 	andeq	sp, r4, r0, lsl #16
    16b8:	09000300 	stmdbeq	r0, {r8, r9}
    16bc:	00009fff 	strdeq	r9, [r0], -pc	; <UNPREDICTABLE>
    16c0:	00000000 	andeq	r0, r0, r0
    16c4:	04340000 	ldrteq	r0, [r4], #-0
    16c8:	04b00000 	ldrteq	r0, [r0], #0
    16cc:	000f0000 	andeq	r0, pc, r0
    16d0:	64080077 	strvs	r0, [r8], #-119	; 0xffffff89
    16d4:	7525f71e 	strvc	pc, [r5, #-1822]!	; 0xfffff8e2
    16d8:	1b25f700 	blne	97f2e0 <__stack+0x7c1390>
    16dc:	009f00f7 	ldrsheq	r0, [pc], r7
    16e0:	00000000 	andeq	r0, r0, r0
    16e4:	d0000000 	andle	r0, r0, r0
    16e8:	e8000003 	stmda	r0, {r0, r1}
    16ec:	01000003 	tsteq	r0, r3
    16f0:	00005000 	andeq	r5, r0, r0
    16f4:	00000000 	andeq	r0, r0, r0
    16f8:	03d40000 	bicseq	r0, r4, #0
    16fc:	04b00000 	ldrteq	r0, [r0], #0
    1700:	00010000 	andeq	r0, r1, r0
    1704:	00000056 	andeq	r0, r0, r6, asr r0
    1708:	00000000 	andeq	r0, r0, r0
    170c:	0004d800 	andeq	sp, r4, r0, lsl #16
    1710:	0004dc00 	andeq	sp, r4, r0, lsl #24
    1714:	7d000200 	sfmvc	f0, 4, [r0, #-0]
    1718:	0004dc00 	andeq	sp, r4, r0, lsl #24
    171c:	0005fc00 	andeq	pc, r5, r0, lsl #24
    1720:	7d000200 	sfmvc	f0, 4, [r0, #-0]
    1724:	00000018 	andeq	r0, r0, r8, lsl r0
    1728:	00000000 	andeq	r0, r0, r0
    172c:	0004d800 	andeq	sp, r4, r0, lsl #16
    1730:	00054f00 	andeq	r4, r5, r0, lsl #30
    1734:	50000100 	andpl	r0, r0, r0, lsl #2
    1738:	0000054f 	andeq	r0, r0, pc, asr #10
    173c:	000005b4 			; <UNDEFINED> instruction: 0x000005b4
    1740:	b4540001 	ldrblt	r0, [r4], #-1
    1744:	b8000005 	stmdalt	r0, {r0, r2}
    1748:	01000005 	tsteq	r0, r5
    174c:	05b85000 	ldreq	r5, [r8, #0]!
    1750:	05d40000 	ldrbeq	r0, [r4]
    1754:	00010000 	andeq	r0, r1, r0
    1758:	0005d454 	andeq	sp, r5, r4, asr r4
    175c:	0005d800 	andeq	sp, r5, r0, lsl #16
    1760:	50000100 	andpl	r0, r0, r0, lsl #2
    1764:	000005d8 	ldrdeq	r0, [r0], -r8
    1768:	000005fc 	strdeq	r0, [r0], -ip
    176c:	00540001 	subseq	r0, r4, r1
    1770:	00000000 	andeq	r0, r0, r0
    1774:	d8000000 	stmdale	r0, {}	; <UNPREDICTABLE>
    1778:	0c000004 	stceq	0, cr0, [r0], {4}
    177c:	01000005 	tsteq	r0, r5
    1780:	050c5100 	streq	r5, [ip, #-256]	; 0xffffff00
    1784:	05180000 	ldreq	r0, [r8, #-0]
    1788:	00010000 	andeq	r0, r1, r0
    178c:	00051853 	andeq	r1, r5, r3, asr r8
    1790:	0005b400 	andeq	fp, r5, r0, lsl #8
    1794:	f3000400 	vshl.u8	d0, d0, d0
    1798:	b49f5101 	ldrlt	r5, [pc], #257	; 17a0 <_SUPERVISOR_STACK_SIZE+0xfa0>
    179c:	bc000005 	stclt	0, cr0, [r0], {5}
    17a0:	01000005 	tsteq	r0, r5
    17a4:	05bc5100 	ldreq	r5, [ip, #256]!	; 0x100
    17a8:	05c70000 	strbeq	r0, [r7]
    17ac:	00010000 	andeq	r0, r1, r0
    17b0:	0005c753 	andeq	ip, r5, r3, asr r7
    17b4:	0005d400 	andeq	sp, r5, r0, lsl #8
    17b8:	57000100 	strpl	r0, [r0, -r0, lsl #2]
    17bc:	000005d4 	ldrdeq	r0, [r0], -r4
    17c0:	000005dc 	ldrdeq	r0, [r0], -ip
    17c4:	dc510001 	mrrcle	0, 0, r0, r1, cr1
    17c8:	e7000005 	str	r0, [r0, -r5]
    17cc:	01000005 	tsteq	r0, r5
    17d0:	05e75300 	strbeq	r5, [r7, #768]!	; 0x300
    17d4:	05fc0000 	ldrbeq	r0, [ip, #0]!
    17d8:	00040000 	andeq	r0, r4, r0
    17dc:	9f5101f3 	svcls	0x005101f3
	...
    17e8:	000004d8 	ldrdeq	r0, [r0], -r8
    17ec:	0000054f 	andeq	r0, r0, pc, asr #10
    17f0:	4f520001 	svcmi	0x00520001
    17f4:	b4000005 	strlt	r0, [r0], #-5
    17f8:	04000005 	streq	r0, [r0], #-5
    17fc:	5201f300 	andpl	pc, r1, #0, 6
    1800:	0005b49f 	muleq	r5, pc, r4	; <UNPREDICTABLE>
    1804:	0005c700 	andeq	ip, r5, r0, lsl #14
    1808:	52000100 	andpl	r0, r0, #0, 2
    180c:	000005c7 	andeq	r0, r0, r7, asr #11
    1810:	000005d4 	ldrdeq	r0, [r0], -r4
    1814:	01f30004 	mvnseq	r0, r4
    1818:	05d49f52 	ldrbeq	r9, [r4, #3922]	; 0xf52
    181c:	05e70000 	strbeq	r0, [r7, #0]!
    1820:	00010000 	andeq	r0, r1, r0
    1824:	0005e752 	andeq	lr, r5, r2, asr r7
    1828:	0005fc00 	andeq	pc, r5, r0, lsl #24
    182c:	f3000400 	vshl.u8	d0, d0, d0
    1830:	009f5201 	addseq	r5, pc, r1, lsl #4
    1834:	00000000 	andeq	r0, r0, r0
    1838:	50000000 	andpl	r0, r0, r0
    183c:	60000005 	andvs	r0, r0, r5
    1840:	01000005 	tsteq	r0, r5
    1844:	05605000 	strbeq	r5, [r0, #-0]!
    1848:	05ac0000 	streq	r0, [ip, #0]!
    184c:	00010000 	andeq	r0, r1, r0
    1850:	00000057 	andeq	r0, r0, r7, asr r0
    1854:	00000000 	andeq	r0, r0, r0
    1858:	00056800 	andeq	r6, r5, r0, lsl #16
    185c:	00057000 	andeq	r7, r5, r0
    1860:	50000100 	andpl	r0, r0, r0, lsl #2
    1864:	00000570 	andeq	r0, r0, r0, ror r5
    1868:	00000578 	andeq	r0, r0, r8, ror r5
    186c:	00710006 	rsbseq	r0, r1, r6
    1870:	9f212008 	svcls	0x00212008
    1874:	00000578 	andeq	r0, r0, r8, ror r5
    1878:	0000057b 	andeq	r0, r0, fp, ror r5
    187c:	00510001 	subseq	r0, r1, r1
    1880:	00000000 	andeq	r0, r0, r0
    1884:	4c000000 	stcmi	0, cr0, [r0], {-0}
    1888:	ac000005 	stcge	0, cr0, [r0], {5}
    188c:	05000005 	streq	r0, [r0, #-5]
    1890:	39e10800 	stmibcc	r1!, {fp}^
    1894:	00009f24 	andeq	r9, r0, r4, lsr #30
	...
    18a0:	00140000 	andseq	r0, r4, r0
    18a4:	00010000 	andeq	r0, r1, r0
    18a8:	00001450 	andeq	r1, r0, r0, asr r4
    18ac:	00001c00 	andeq	r1, r0, r0, lsl #24
    18b0:	f3000400 	vshl.u8	d0, d0, d0
    18b4:	009f5001 	addseq	r5, pc, r1
	...
    18c0:	0c000000 	stceq	0, cr0, [r0], {-0}
    18c4:	02000000 	andeq	r0, r0, #0
    18c8:	0c9f3000 	ldceq	0, cr3, [pc], {0}
    18cc:	14000000 	strne	r0, [r0], #-0
    18d0:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    18d4:	30007300 	andcc	r7, r0, r0, lsl #6
    18d8:	00700072 	rsbseq	r0, r0, r2, ror r0
    18dc:	00012829 	andeq	r2, r1, r9, lsr #16
    18e0:	009f1316 	addseq	r1, pc, r6, lsl r3	; <UNPREDICTABLE>
	...
    18ec:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    18f0:	01000000 	mrseq	r0, (UNDEF: 0)
    18f4:	00085000 	andeq	r5, r8, r0
    18f8:	00100000 	andseq	r0, r0, r0
    18fc:	00040000 	andeq	r0, r4, r0
    1900:	9f5001f3 	svcls	0x005001f3
	...
    1910:	00000004 	andeq	r0, r0, r4
    1914:	007d0002 	rsbseq	r0, sp, r2
    1918:	00000004 	andeq	r0, r0, r4
    191c:	00000034 	andeq	r0, r0, r4, lsr r0
    1920:	087d0002 	ldmdaeq	sp!, {r1}^
	...
    1930:	0000001b 	andeq	r0, r0, fp, lsl r0
    1934:	1b500001 	blne	1401940 <__stack+0x12439f0>
    1938:	34000000 	strcc	r0, [r0], #-0
    193c:	04000000 	streq	r0, [r0], #-0
    1940:	5001f300 	andpl	pc, r1, r0, lsl #6
    1944:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
	...
    1950:	00001b00 	andeq	r1, r0, r0, lsl #22
    1954:	51000100 	mrspl	r0, (UNDEF: 16)
    1958:	0000001b 	andeq	r0, r0, fp, lsl r0
    195c:	00000034 	andeq	r0, r0, r4, lsr r0
    1960:	01f30004 	mvnseq	r0, r4
    1964:	00009f51 	andeq	r9, r0, r1, asr pc
	...
    1970:	00040000 	andeq	r0, r4, r0
    1974:	00020000 	andeq	r0, r2, r0
    1978:	0004007d 	andeq	r0, r4, sp, ror r0
    197c:	00300000 	eorseq	r0, r0, r0
    1980:	00020000 	andeq	r0, r2, r0
    1984:	0000107d 	andeq	r1, r0, sp, ror r0
	...
    1990:	00100000 	andseq	r0, r0, r0
    1994:	00010000 	andeq	r0, r1, r0
    1998:	00001050 	andeq	r1, r0, r0, asr r0
    199c:	00003000 	andeq	r3, r0, r0
    19a0:	55000100 	strpl	r0, [r0, #-256]	; 0xffffff00
	...
    19b0:	00000010 	andeq	r0, r0, r0, lsl r0
    19b4:	10510001 	subsne	r0, r1, r1
    19b8:	30000000 	andcc	r0, r0, r0
    19bc:	04000000 	streq	r0, [r0], #-0
    19c0:	5101f300 	mrspl	pc, SP_irq	; <UNPREDICTABLE>
    19c4:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
    19c8:	00000000 	andeq	r0, r0, r0
    19cc:	00003000 	andeq	r3, r0, r0
    19d0:	00003400 	andeq	r3, r0, r0, lsl #8
    19d4:	7d000200 	sfmvc	f0, 4, [r0, #-0]
    19d8:	00003400 	andeq	r3, r0, r0, lsl #8
    19dc:	00005c00 	andeq	r5, r0, r0, lsl #24
    19e0:	7d000200 	sfmvc	f0, 4, [r0, #-0]
    19e4:	00000010 	andeq	r0, r0, r0, lsl r0
    19e8:	00000000 	andeq	r0, r0, r0
    19ec:	00003000 	andeq	r3, r0, r0
    19f0:	00003c00 	andeq	r3, r0, r0, lsl #24
    19f4:	50000100 	andpl	r0, r0, r0, lsl #2
    19f8:	0000003c 	andeq	r0, r0, ip, lsr r0
    19fc:	0000005c 	andeq	r0, r0, ip, asr r0
    1a00:	00550001 	subseq	r0, r5, r1
	...
    1a0c:	20000000 	andcs	r0, r0, r0
    1a10:	01000000 	mrseq	r0, (UNDEF: 0)
    1a14:	00205000 	eoreq	r5, r0, r0
    1a18:	002c0000 	eoreq	r0, ip, r0
    1a1c:	00040000 	andeq	r0, r4, r0
    1a20:	9f5001f3 	svcls	0x005001f3
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	00014e70 	andeq	r4, r1, r0, ror lr
  14:	00000028 	andeq	r0, r0, r8, lsr #32
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	00760002 	rsbseq	r0, r6, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	00014e98 	muleq	r1, r8, lr
  34:	00000708 	andeq	r0, r0, r8, lsl #14
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	0db00002 	ldceq	0, cr0, [r0, #8]!
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	000155a0 	andeq	r5, r1, r0, lsr #11
  54:	00000100 	andeq	r0, r0, r0, lsl #2
	...
  60:	0000001c 	andeq	r0, r0, ip, lsl r0
  64:	12760002 	rsbsne	r0, r6, #2
  68:	00040000 	andeq	r0, r4, r0
  6c:	00000000 	andeq	r0, r0, r0
  70:	000156a0 	andeq	r5, r1, r0, lsr #13
  74:	000005f4 	strdeq	r0, [r0], -r4
	...
  80:	0000001c 	andeq	r0, r0, ip, lsl r0
  84:	17e10002 	strbne	r0, [r1, r2]!
  88:	00040000 	andeq	r0, r4, r0
  8c:	00000000 	andeq	r0, r0, r0
  90:	00015c94 	muleq	r1, r4, ip
  94:	000005fc 	strdeq	r0, [r0], -ip
	...
  a0:	0000001c 	andeq	r0, r0, ip, lsl r0
  a4:	1ff40002 	svcne	0x00f40002
  a8:	00040000 	andeq	r0, r4, r0
  ac:	00000000 	andeq	r0, r0, r0
  b0:	00016290 	muleq	r1, r0, r2
  b4:	0000001c 	andeq	r0, r0, ip, lsl r0
	...
  c0:	0000001c 	andeq	r0, r0, ip, lsl r0
  c4:	212e0002 	teqcs	lr, r2
  c8:	00040000 	andeq	r0, r4, r0
  cc:	00000000 	andeq	r0, r0, r0
  d0:	000162ac 	andeq	r6, r1, ip, lsr #5
  d4:	00000010 	andeq	r0, r0, r0, lsl r0
	...
  e0:	0000001c 	andeq	r0, r0, ip, lsl r0
  e4:	21ef0002 	mvncs	r0, r2
  e8:	00040000 	andeq	r0, r4, r0
  ec:	00000000 	andeq	r0, r0, r0
  f0:	000162bc 			; <UNDEFINED> instruction: 0x000162bc
  f4:	00000044 	andeq	r0, r0, r4, asr #32
	...
 100:	00000014 	andeq	r0, r0, r4, lsl r0
 104:	23310002 	teqcs	r1, #2
 108:	00040000 	andeq	r0, r4, r0
	...
 118:	0000001c 	andeq	r0, r0, ip, lsl r0
 11c:	24260002 	strtcs	r0, [r6], #-2
 120:	00040000 	andeq	r0, r4, r0
 124:	00000000 	andeq	r0, r0, r0
 128:	00016300 	andeq	r6, r1, r0, lsl #6
 12c:	0000005c 	andeq	r0, r0, ip, asr r0
	...
 138:	0000001c 	andeq	r0, r0, ip, lsl r0
 13c:	25830002 	strcs	r0, [r3, #2]
 140:	00040000 	andeq	r0, r4, r0
 144:	00000000 	andeq	r0, r0, r0
 148:	000175ac 	andeq	r7, r1, ip, lsr #11
 14c:	00000004 	andeq	r0, r0, r4
	...
 158:	0000001c 	andeq	r0, r0, ip, lsl r0
 15c:	26200002 	strtcs	r0, [r0], -r2
 160:	00040000 	andeq	r0, r4, r0
 164:	00000000 	andeq	r0, r0, r0
 168:	000175b0 			; <UNDEFINED> instruction: 0x000175b0
 16c:	0000002c 	andeq	r0, r0, ip, lsr #32
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000037 	andeq	r0, r0, r7, lsr r0
   4:	001e0002 	andseq	r0, lr, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
  20:	00632e74 	rsbeq	r2, r3, r4, ror lr
  24:	00000000 	andeq	r0, r0, r0
  28:	70020500 	andvc	r0, r2, r0, lsl #10
  2c:	0300014e 	movweq	r0, #334	; 0x14e
  30:	2f2e0117 	svccs	0x002e0117
  34:	08022d67 	stmdaeq	r2, {r0, r1, r2, r5, r6, r8, sl, fp, sp}
  38:	cf010100 	svcgt	0x00010100
  3c:	02000002 	andeq	r0, r0, #2
  40:	00003d00 	andeq	r3, r0, r0, lsl #26
  44:	fb010200 	blx	4084e <_HEAP_SIZE+0x2084e>
  48:	01000d0e 	tsteq	r0, lr, lsl #26
  4c:	00010101 	andeq	r0, r1, r1, lsl #2
  50:	00010000 	andeq	r0, r1, r0
  54:	78000100 	stmdavc	r0, {r8}
  58:	635f6c69 	cmpvs	pc, #26880	; 0x6900
  5c:	65686361 	strbvs	r6, [r8, #-865]!	; 0xfffffc9f
  60:	0000632e 	andeq	r6, r0, lr, lsr #6
  64:	69780000 	ldmdbvs	r8!, {}^	; <UNPREDICTABLE>
  68:	79745f6c 	ldmdbvc	r4!, {r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
  6c:	2e736570 	mrccs	5, 3, r6, cr3, cr0, {3}
  70:	00000068 	andeq	r0, r0, r8, rrx
  74:	6c697800 	stclvs	8, cr7, [r9], #-0
  78:	2e6f695f 	mcrcs	9, 3, r6, cr15, cr15, {2}
  7c:	00000068 	andeq	r0, r0, r8, rrx
  80:	05000000 	streq	r0, [r0, #-0]
  84:	014e9802 	cmpeq	lr, r2, lsl #16
  88:	01a90300 			; <UNDEFINED> instruction: 0x01a90300
  8c:	79031901 	stmdbvc	r3, {r0, r8, fp, ip}
  90:	3232352e 	eorscc	r3, r2, #192937984	; 0xb800000
  94:	0330312b 	teqeq	r0, #-1073741814	; 0xc000000a
  98:	78034a0b 	stmdavc	r3, {r0, r1, r3, r9, fp, lr}
  9c:	032f364a 	teqeq	pc, #77594624	; 0x4a00000
  a0:	11032e74 	tstne	r3, r4, ror lr
  a4:	0402004a 	streq	r0, [r2], #-74	; 0xffffffb6
  a8:	02003101 	andeq	r3, r0, #1073741824	; 0x40000000
  ac:	4b680104 	blmi	1a004c4 <__stack+0x1842574>
  b0:	192e3803 	stmdbne	lr!, {r0, r1, fp, ip, sp}
  b4:	352e7903 	strcc	r7, [lr, #-2307]!	; 0xfffff6fd
  b8:	312b3232 	teqcc	fp, r2, lsr r2
  bc:	4a0b0330 	bmi	2c0d84 <__stack+0x102e34>
  c0:	364a7803 	strbcc	r7, [sl], -r3, lsl #16
  c4:	2e74032f 	cdpcs	3, 7, cr0, cr4, cr15, {1}
  c8:	004a1103 	subeq	r1, sl, r3, lsl #2
  cc:	31010402 	tstcc	r1, r2, lsl #8
  d0:	01040200 	mrseq	r0, R12_usr
  d4:	ee034b68 	vmls.f64	d4, d3, d24
  d8:	03192e00 	tsteq	r9, #0, 28
  dc:	32352e79 	eorscc	r2, r5, #1936	; 0x790
  e0:	30312b32 	eorscc	r2, r1, r2, lsr fp
  e4:	034a0b03 	movteq	r0, #43779	; 0xab03
  e8:	2f364a78 	svccs	0x00364a78
  ec:	032e7403 	teqeq	lr, #50331648	; 0x3000000
  f0:	02004a11 	andeq	r4, r0, #69632	; 0x11000
  f4:	00310104 	eorseq	r0, r1, r4, lsl #2
  f8:	68010402 	stmdavs	r1, {r1, sl}
  fc:	00d2034b 	sbcseq	r0, r2, fp, asr #6
 100:	304b342e 	subcc	r3, fp, lr, lsr #8
 104:	332a3334 	teqcc	sl, #52, 6	; 0xd0000000
 108:	034a0c03 	movteq	r0, #44035	; 0xac03
 10c:	50642e79 	rsbpl	r2, r4, r9, ror lr
 110:	2e640347 	cdpcs	3, 6, cr0, cr4, cr7, {2}
 114:	01040200 	mrseq	r0, R12_usr
 118:	004a2303 	subeq	r2, sl, r3, lsl #6
 11c:	9f020402 	svcls	0x00020402
 120:	02040200 	andeq	r0, r4, #0, 4
 124:	04020031 	streq	r0, [r2], #-49	; 0xffffffcf
 128:	02002a02 	andeq	r2, r0, #8192	; 0x2000
 12c:	0c030204 	sfmeq	f0, 4, [r3], {4}
 130:	0402002e 	streq	r0, [r2], #-46	; 0xffffffd2
 134:	2e740302 	cdpcs	3, 7, cr0, cr4, cr2, {0}
 138:	66130365 	ldrvs	r0, [r3], -r5, ror #6
 13c:	4a7f8803 	bmi	1fe2150 <__stack+0x1e24200>
 140:	314f3333 	cmpcc	pc, r3, lsr r3	; <UNPREDICTABLE>
 144:	00f70330 	rscseq	r0, r7, r0, lsr r3
 148:	4c4b134a 	mcrrmi	3, 4, r1, fp, cr10
 14c:	164a1403 	strbne	r1, [sl], -r3, lsl #8
 150:	312b324e 	teqcc	fp, lr, asr #4
 154:	03364c30 	teqeq	r6, #48, 24	; 0x3000
 158:	0f032e76 	svceq	0x00032e76
 15c:	4a10034a 	bmi	400e8c <__stack+0x242f3c>
 160:	36304b34 			; <UNDEFINED> instruction: 0x36304b34
 164:	03332a33 	teqeq	r3, #208896	; 0x33000
 168:	79034a0c 	stmdbvc	r3, {r2, r3, r9, fp, lr}
 16c:	4750642e 	ldrbmi	r6, [r0, -lr, lsr #8]
 170:	002e6203 	eoreq	r6, lr, r3, lsl #4
 174:	03010402 	movweq	r0, #5122	; 0x1402
 178:	02004a25 	andeq	r4, r0, #151552	; 0x25000
 17c:	009f0204 	addseq	r0, pc, r4, lsl #4
 180:	31020402 	tstcc	r2, r2, lsl #8
 184:	02040200 	andeq	r0, r4, #0, 4
 188:	0402002a 	streq	r0, [r2], #-42	; 0xffffffd6
 18c:	2e0b0302 	cdpcs	3, 0, cr0, cr11, cr2, {0}
 190:	02040200 	andeq	r0, r4, #0, 4
 194:	652e7503 	strvs	r7, [lr, #-1283]!	; 0xfffffafd
 198:	03661203 	cmneq	r6, #805306368	; 0x30000000
 19c:	324a7e9e 	subcc	r7, sl, #2528	; 0x9e0
 1a0:	03303432 	teqeq	r0, #838860800	; 0x32000000
 1a4:	134a01e5 	movtne	r0, #41445	; 0xa1e5
 1a8:	13034c4b 	movwne	r4, #15435	; 0x3c4b
 1ac:	324e164a 	subcc	r1, lr, #77594624	; 0x4a00000
 1b0:	4c30312b 	ldfmis	f3, [r0], #-172	; 0xffffff54
 1b4:	2e760336 	mrccs	3, 3, r0, cr6, cr6, {1}
 1b8:	034a0f03 	movteq	r0, #44803	; 0xaf03
 1bc:	4b134a13 	blmi	4d2a10 <__stack+0x314ac0>
 1c0:	4a0f034c 	bmi	3c0ef8 <__stack+0x202fa8>
 1c4:	314f3317 	cmpcc	pc, r7, lsl r3	; <UNPREDICTABLE>
 1c8:	4a0f0330 	bmi	3c0e90 <__stack+0x202f40>
 1cc:	334e3115 	movtcc	r3, #57621	; 0xe115
 1d0:	4a0f0330 	bmi	3c0e98 <__stack+0x202f48>
 1d4:	034c4c13 	movteq	r4, #52243	; 0xcc13
 1d8:	4b134a11 	blmi	4d2a24 <__stack+0x314ad4>
 1dc:	4a14034c 	bmi	500f14 <__stack+0x342fc4>
 1e0:	2b324e16 	blcs	c93a40 <__stack+0xad5af0>
 1e4:	364c3031 			; <UNDEFINED> instruction: 0x364c3031
 1e8:	032e7603 	teqeq	lr, #3145728	; 0x300000
 1ec:	0f034a0f 	svceq	0x00034a0f
 1f0:	4c69314a 	stfmie	f3, [r9], #-296	; 0xfffffed8
 1f4:	2f2d3068 	svccs	0x002d3068
 1f8:	84868468 	strhi	r8, [r6], #1128	; 0x468
 1fc:	6b2d6969 	blvs	b5a7a8 <__stack+0x99c858>
 200:	4a7ad003 	bmi	1eb4214 <__stack+0x1cf62c4>
 204:	0103f803 	tsteq	r3, r3, lsl #16
 208:	30314f33 	eorscc	r4, r1, r3, lsr pc
 20c:	2e7bfc03 	cdpcs	12, 7, cr15, cr11, cr3, {0}
 210:	7e860311 	mcrvc	3, 4, r0, cr6, cr1, {0}
 214:	2d302f2e 	ldccs	15, cr2, [r0, #-184]!	; 0xffffff48
 218:	2e07b503 	cfsh32cs	mvfx11, mvfx7, #3
 21c:	00324616 	eorseq	r4, r2, r6, lsl r6
 220:	4f010402 	svcmi	0x00010402
 224:	01040200 	mrseq	r0, R12_usr
 228:	67314d68 	ldrvs	r4, [r1, -r8, ror #26]!
 22c:	c0032c68 	andgt	r2, r3, r8, ror #24
 230:	032f2e7a 	teqeq	pc, #1952	; 0x7a0
 234:	312e0487 	smlawbcc	lr, r7, r4, r0
 238:	0330334e 	teqeq	r0, #939524097	; 0x38000001
 23c:	2f4a79f2 	svccs	0x004a79f2
 240:	ca032d30 	bgt	cb708 <_HEAP_SIZE+0xab708>
 244:	46162e07 	ldrmi	r2, [r6], -r7, lsl #28
 248:	04020032 	streq	r0, [r2], #-50	; 0xffffffce
 24c:	02004f01 	andeq	r4, r0, #1, 30
 250:	4d680104 	stfmie	f0, [r8, #-16]!
 254:	4a7aaf03 	bmi	1eabe68 <__stack+0x1cedf18>
 258:	01049503 	tsteq	r4, r3, lsl #10
 25c:	ea034c4c 	b	d3394 <_HEAP_SIZE+0xb3394>
 260:	03112e7b 	tsteq	r1, #1968	; 0x7b0
 264:	2f2e7e86 	svccs	0x002e7e86
 268:	da032d30 	ble	cb730 <_HEAP_SIZE+0xab730>
 26c:	2d2f2e07 	stccs	14, cr2, [pc, #-28]!	; 258 <CPU_ARM_CTRL_INT_DIS+0x198>
 270:	ab034d2f 	blge	d3734 <_HEAP_SIZE+0xb3734>
 274:	98034a7a 	stmdals	r3, {r1, r3, r4, r5, r6, r9, fp, lr}
 278:	4c4b0104 	stfmie	f0, [fp], {4}
 27c:	2e7be803 	cdpcs	8, 7, cr14, cr11, cr3, {0}
 280:	7e880311 	mcrvc	3, 4, r0, cr8, cr1, {0}
 284:	03ce032e 	biceq	r0, lr, #-1207959552	; 0xb8000000
 288:	034c4b01 	movteq	r4, #51969	; 0xcb01
 28c:	112e7cb2 			; <UNDEFINED> instruction: 0x112e7cb2
 290:	2e07dd03 	cdpcs	13, 0, cr13, cr7, cr3, {0}
 294:	2e790319 	mrccs	3, 3, r0, cr9, cr9, {0}
 298:	302f3235 	eorcc	r3, pc, r5, lsr r2	; <UNPREDICTABLE>
 29c:	002c674b 	eoreq	r6, ip, fp, asr #14
 2a0:	52010402 	andpl	r0, r1, #33554432	; 0x2000000
 2a4:	01040200 	mrseq	r0, R12_usr
 2a8:	13034d68 	movwne	r4, #15720	; 0x3d68
 2ac:	3246164a 	subcc	r1, r6, #77594624	; 0x4a00000
 2b0:	01040200 	mrseq	r0, R12_usr
 2b4:	0402004f 	streq	r0, [r2], #-79	; 0xffffffb1
 2b8:	034d6801 	movteq	r6, #55297	; 0xd801
 2bc:	2f4a78b1 	svccs	0x004a78b1
 2c0:	e0032d30 	and	r2, r3, r0, lsr sp
 2c4:	2d2f2e07 	stccs	14, cr2, [pc, #-28]!	; 2b0 <CPU_ARM_CTRL_INT_DIS+0x1f0>
 2c8:	ae034e2f 	cdpge	14, 0, cr4, cr3, cr15, {1}
 2cc:	fa034a78 	blx	d2cb4 <_HEAP_SIZE+0xb2cb4>
 2d0:	4c4b0103 	stfmie	f0, [fp], {3}
 2d4:	2e7c8603 	cdpcs	6, 7, cr8, cr12, cr3, {0}
 2d8:	07e30311 			; <UNDEFINED> instruction: 0x07e30311
 2dc:	7903192e 	stmdbvc	r3, {r1, r2, r3, r5, r8, fp, ip}
 2e0:	2f32352e 	svccs	0x0032352e
 2e4:	2c674b30 	stclcs	11, cr4, [r7], #-192	; 0xffffff40
 2e8:	01040200 	mrseq	r0, R12_usr
 2ec:	04020052 	streq	r0, [r2], #-82	; 0xffffffae
 2f0:	034d6801 	movteq	r6, #55297	; 0xd801
 2f4:	2d2f4a13 	vstmdbcs	pc!, {s8-s26}
 2f8:	b8034d2f 	stmdalt	r3, {r0, r1, r2, r3, r5, r8, sl, fp, lr}
 2fc:	f2034a78 	vpmin.s8	q2, <illegal reg q1.5>, q12
 300:	4c4b0103 	stfmie	f0, [fp], {3}
 304:	2e7c8e03 	cdpcs	14, 7, cr8, cr12, cr3, {0}
 308:	00020211 	andeq	r0, r2, r1, lsl r2
 30c:	00b60101 	adcseq	r0, r6, r1, lsl #2
 310:	00020000 	andeq	r0, r2, r0
 314:	0000002e 	andeq	r0, r0, lr, lsr #32
 318:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 31c:	0101000d 	tsteq	r1, sp
 320:	00000101 	andeq	r0, r0, r1, lsl #2
 324:	00000100 	andeq	r0, r0, r0, lsl #2
 328:	69780001 	ldmdbvs	r8!, {r0}^
 32c:	6f695f6c 	svcvs	0x00695f6c
 330:	0000632e 	andeq	r6, r0, lr, lsr #6
 334:	69780000 	ldmdbvs	r8!, {}^	; <UNPREDICTABLE>
 338:	79745f6c 	ldmdbvc	r4!, {r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
 33c:	2e736570 	mrccs	5, 3, r6, cr3, cr0, {3}
 340:	00000068 	andeq	r0, r0, r8, rrx
 344:	05000000 	streq	r0, [r0, #-0]
 348:	0155a002 	cmpeq	r5, r2
 34c:	00e70300 	rsceq	r0, r7, r0, lsl #6
 350:	2f2f1601 	svccs	0x002f1601
 354:	162e1103 	strtne	r1, [lr], -r3, lsl #2
 358:	11032f2f 	tstne	r3, pc, lsr #30
 35c:	2f2f162e 	svccs	0x002f162e
 360:	162e1203 	strtne	r1, [lr], -r3, lsl #4
 364:	4a13032f 	bmi	4c1028 <__stack+0x3030d8>
 368:	13032f16 	movwne	r2, #16150	; 0x3f16
 36c:	032f164a 	teqeq	pc, #77594624	; 0x4a00000
 370:	8d034a13 	vstrhi	s8, [r3, #-76]	; 0xffffffb4
 374:	032f017f 	teqeq	pc, #-1073741793	; 0xc000001f
 378:	032e01eb 	teqeq	lr, #-1073741766	; 0xc000003a
 37c:	034a7f96 	movteq	r7, #44950	; 0xaf96
 380:	83034a12 	movwhi	r4, #14866	; 0x3a12
 384:	032f017f 	teqeq	pc, #-1073741793	; 0xc000001f
 388:	2a2e01ef 	bcs	b80b4c <__stack+0x9c2bfc>
 38c:	292e0a03 	stmdbcs	lr!, {r0, r1, r9, fp}
 390:	03322f2d 	teqeq	r2, #45, 30	; 0xb4
 394:	032e7f97 	teqeq	lr, #604	; 0x25c
 398:	36034a13 			; <UNDEFINED> instruction: 0x36034a13
 39c:	7edb0301 	cdpvc	3, 13, cr0, cr11, cr1, {0}
 3a0:	8c032f4a 	stchi	15, cr2, [r3], {74}	; 0x4a
 3a4:	2f034a01 	svccs	0x00034a01
 3a8:	29343201 	ldmdbcs	r4!, {r0, r9, ip, sp}
 3ac:	d3033349 	movwle	r3, #13129	; 0x3349
 3b0:	032f4a7e 	teqeq	pc, #516096	; 0x7e000
 3b4:	134a018b 	movtne	r0, #41355	; 0xa18b
 3b8:	4a0f034b 	bmi	3c10ec <__stack+0x20319c>
 3bc:	29343219 	ldmdbcs	r4!, {r0, r3, r4, r9, ip, sp}
 3c0:	022f3349 	eoreq	r3, pc, #603979777	; 0x24000001
 3c4:	01010004 	tsteq	r1, r4
 3c8:	0000023c 	andeq	r0, r0, ip, lsr r2
 3cc:	01200002 	teqeq	r0, r2
 3d0:	01020000 	mrseq	r0, (UNDEF: 2)
 3d4:	000d0efb 	strdeq	r0, [sp], -fp
 3d8:	01010101 	tsteq	r1, r1, lsl #2
 3dc:	01000000 	mrseq	r0, (UNDEF: 0)
 3e0:	63010000 	movwvs	r0, #4096	; 0x1000
 3e4:	69785c3a 	ldmdbvs	r8!, {r1, r3, r4, r5, sl, fp, ip, lr}^
 3e8:	786e696c 	stmdavc	lr!, {r2, r3, r5, r6, r8, fp, sp, lr}^
 3ec:	2e34315c 	mrccs	1, 1, r3, cr4, cr12, {2}
 3f0:	73695c36 	cmnvc	r9, #13824	; 0x3600
 3f4:	73645f65 	cmnvc	r4, #404	; 0x194
 3f8:	6b64655c 	blvs	1919970 <__stack+0x175ba20>
 3fc:	756e675c 	strbvc	r6, [lr, #-1884]!	; 0xfffff8a4
 400:	6d72615c 	ldfvse	f6, [r2, #-368]!	; 0xfffffe90
 404:	5c746e5c 	ldclpl	14, cr6, [r4], #-368	; 0xfffffe90
 408:	5c6e6962 	stclpl	9, cr6, [lr], #-392	; 0xfffffe78
 40c:	6c2f2e2e 	stcvs	14, cr2, [pc], #-184	; 35c <CPU_ARM_CTRL_INT_DIS+0x29c>
 410:	672f6269 	strvs	r6, [pc, -r9, ror #4]!
 414:	612f6363 	teqvs	pc, r3, ror #6
 418:	782d6d72 	stmdavc	sp!, {r1, r4, r5, r6, r8, sl, fp, sp, lr}
 41c:	6e696c69 	cdpvs	12, 6, cr6, cr9, cr9, {3}
 420:	61652d78 	smcvs	21208	; 0x52d8
 424:	342f6962 	strtcc	r6, [pc], #-2402	; 42c <_ABORT_STACK_SIZE+0x2c>
 428:	322e372e 	eorcc	r3, lr, #12058624	; 0xb80000
 42c:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 430:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
 434:	5c3a6300 	ldcpl	3, cr6, [sl], #-0
 438:	696c6978 	stmdbvs	ip!, {r3, r4, r5, r6, r8, fp, sp, lr}^
 43c:	315c786e 	cmpcc	ip, lr, ror #16
 440:	5c362e34 	ldcpl	14, cr2, [r6], #-208	; 0xffffff30
 444:	5f657369 	svcpl	0x00657369
 448:	655c7364 	ldrbvs	r7, [ip, #-868]	; 0xfffffc9c
 44c:	675c6b64 	ldrbvs	r6, [ip, -r4, ror #22]
 450:	615c756e 	cmpvs	ip, lr, ror #10
 454:	6e5c6d72 	mrcvs	13, 2, r6, cr12, cr2, {3}
 458:	69625c74 	stmdbvs	r2!, {r2, r4, r5, r6, sl, fp, ip, lr}^
 45c:	2e2e5c6e 	cdpcs	12, 2, cr5, cr14, cr14, {3}
 460:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 464:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
 468:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 46c:	6c69782d 	stclvs	8, cr7, [r9], #-180	; 0xffffff4c
 470:	2d786e69 	ldclcs	14, cr6, [r8, #-420]!	; 0xfffffe5c
 474:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
 478:	372e342f 	strcc	r3, [lr, -pc, lsr #8]!
 47c:	2e2f322e 	cdpcs	2, 2, cr3, cr15, cr14, {1}
 480:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 484:	2f2e2e2f 	svccs	0x002e2e2f
 488:	612f2e2e 	teqvs	pc, lr, lsr #28
 48c:	782d6d72 	stmdavc	sp!, {r1, r4, r5, r6, r8, sl, fp, sp, lr}
 490:	6e696c69 	cdpvs	12, 6, cr6, cr9, cr9, {3}
 494:	61652d78 	smcvs	21208	; 0x52d8
 498:	692f6962 	stmdbvs	pc!, {r1, r5, r6, r8, fp, sp, lr}	; <UNPREDICTABLE>
 49c:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 4a0:	00006564 	andeq	r6, r0, r4, ror #10
 4a4:	5f6c6978 	svcpl	0x006c6978
 4a8:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
 4ac:	632e6674 	teqvs	lr, #116, 12	; 0x7400000
 4b0:	00000000 	andeq	r0, r0, r0
 4b4:	64647473 	strbtvs	r7, [r4], #-1139	; 0xfffffb8d
 4b8:	682e6665 	stmdavs	lr!, {r0, r2, r5, r6, r9, sl, sp, lr}
 4bc:	00000100 	andeq	r0, r0, r0, lsl #2
 4c0:	61647473 	smcvs	18243	; 0x4743
 4c4:	682e6772 	stmdavs	lr!, {r1, r4, r5, r6, r8, r9, sl, sp, lr}
 4c8:	00000100 	andeq	r0, r0, r0, lsl #2
 4cc:	6975623c 	ldmdbvs	r5!, {r2, r3, r4, r5, r9, sp, lr}^
 4d0:	692d746c 	pushvs	{r2, r3, r5, r6, sl, ip, sp, lr}
 4d4:	00003e6e 	andeq	r3, r0, lr, ror #28
 4d8:	74730000 	ldrbtvc	r0, [r3], #-0
 4dc:	676e6972 			; <UNDEFINED> instruction: 0x676e6972
 4e0:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 4e4:	74630000 	strbtvc	r0, [r3], #-0
 4e8:	2e657079 	mcrcs	0, 3, r7, cr5, cr9, {3}
 4ec:	00020068 	andeq	r0, r2, r8, rrx
 4f0:	05000000 	streq	r0, [r0, #-0]
 4f4:	0156a002 	cmpeq	r6, r2
 4f8:	012c0300 	teqeq	ip, r0, lsl #6
 4fc:	0200312e 	andeq	r3, r0, #-2147483637	; 0x8000000b
 500:	66060104 	strvs	r0, [r6], -r4, lsl #2
 504:	2d84064a 	stccs	6, cr0, [r4, #296]	; 0x128
 508:	20032d2f 	andcs	r2, r3, pc, lsr #26
 50c:	6e461682 	cdpvs	6, 4, cr1, cr6, cr2, {4}
 510:	4e2e7803 	cdpmi	8, 2, cr7, cr14, cr3, {0}
 514:	30326232 	eorscc	r6, r2, r2, lsr r2
 518:	7603332d 	strvc	r3, [r3], -sp, lsr #6
 51c:	0033452e 	eorseq	r4, r3, lr, lsr #10
 520:	03010402 	movweq	r0, #5122	; 0x1402
 524:	02002e10 	andeq	r2, r0, #16, 28	; 0x100
 528:	6b030104 	blvs	c0940 <_HEAP_SIZE+0xa0940>
 52c:	0402004a 	streq	r0, [r2], #-74	; 0xffffffb6
 530:	2e150301 	cdpcs	3, 1, cr0, cr5, cr1, {0}
 534:	01040200 	mrseq	r0, R12_usr
 538:	0402004b 	streq	r0, [r2], #-75	; 0xffffffb5
 53c:	02002d01 	andeq	r2, r0, #1, 26	; 0x40
 540:	002f0104 	eoreq	r0, pc, r4, lsl #2
 544:	2d010402 	cfstrscs	mvf0, [r1, #-8]
 548:	01040200 	mrseq	r0, R12_usr
 54c:	2934834b 	ldmdbcs	r4!, {r0, r1, r3, r6, r8, r9, pc}
 550:	2f6a2a6b 	svccs	0x006a2a6b
 554:	4b672f49 	blmi	19cc280 <__stack+0x180e330>
 558:	03674c49 	cmneq	r7, #18688	; 0x4900
 55c:	0b034a24 	bleq	d2df4 <_HEAP_SIZE+0xb2df4>
 560:	2e750366 	cdpcs	3, 7, cr0, cr5, cr6, {3}
 564:	302e0b03 	eorcc	r0, lr, r3, lsl #22
 568:	4b820a03 	blmi	fe082d7c <CPU_ARM_BIT_CNTES_C+0x7e082d7c>
 56c:	4a7a032f 	bmi	1e81230 <__stack+0x1cc32e0>
 570:	6c86292d 	stcvs	9, cr2, [r6], {45}	; 0x2d
 574:	2c332fbb 	ldccs	15, cr2, [r3], #-748	; 0xfffffd14
 578:	60038330 	andvs	r8, r3, r0, lsr r3
 57c:	4a6c034a 	bmi	1b012ac <__stack+0x194335c>
 580:	4b492f2d 	blmi	124c23c <__stack+0x108e2ec>
 584:	9e36032d 	cdpls	3, 3, cr0, cr6, cr13, {1}
 588:	03312f36 	teqeq	r1, #54, 30	; 0xd8
 58c:	01b8021b 			; <UNDEFINED> instruction: 0x01b8021b
 590:	d6460301 	strble	r0, [r6], -r1, lsl #6
 594:	8200e103 	andhi	lr, r0, #-1073741824	; 0xc0000000
 598:	03825d03 	orreq	r5, r2, #3, 26	; 0xc0
 59c:	4b827edc 	blmi	fe0a0114 <CPU_ARM_BIT_CNTES_C+0x7e0a0114>
 5a0:	03852f2d 	orreq	r2, r5, #45, 30	; 0xb4
 5a4:	03f200d4 	mvnseq	r0, #212	; 0xd4
 5a8:	9f4a7fac 	svcls	0x004a7fac
 5ac:	9b036c49 	blls	db6d8 <_HEAP_SIZE+0xbb6d8>
 5b0:	6e036601 	cfmadd32vs	mvax0, mvfx6, mvfx3, mvfx1
 5b4:	2e62034a 	cdpcs	3, 6, cr0, cr2, cr10, {2}
 5b8:	324a1f03 	subcc	r1, sl, #3, 30
 5bc:	9fd61003 	svcls	0x00d61003
 5c0:	02630331 	rsbeq	r0, r3, #-1006632960	; 0xc4000000
 5c4:	6603012e 	strvs	r0, [r3], -lr, lsr #2
 5c8:	8216032e 	andshi	r0, r6, #-1207959552	; 0xb8000000
 5cc:	032e6a03 	teqeq	lr, #12288	; 0x3000
 5d0:	294b2e16 	stmdbcs	fp, {r1, r2, r4, r9, sl, fp, sp}^
 5d4:	7fbb034b 	svcvc	0x00bb034b
 5d8:	2e38032e 	cdpcs	3, 3, cr0, cr8, cr14, {1}
 5dc:	2e47032f 	cdpcs	3, 4, cr0, cr7, cr15, {1}
 5e0:	03ba1503 			; <UNDEFINED> instruction: 0x03ba1503
 5e4:	312c2e6b 	teqcc	ip, fp, ror #28
 5e8:	2f2d2f49 	svccs	0x002d2f49
 5ec:	9e3b032d 	cdpls	3, 3, cr0, cr11, cr13, {1}
 5f0:	6635032f 	ldrtvs	r0, [r5], -pc, lsr #6
 5f4:	67660a03 	strbvs	r0, [r6, -r3, lsl #20]!
 5f8:	72032f2a 	andvc	r2, r3, #42, 30	; 0xa8
 5fc:	4b304b2e 	blmi	c132bc <__stack+0xa5536c>
 600:	024b4b33 	subeq	r4, fp, #52224	; 0xcc00
 604:	01010002 	tsteq	r1, r2
 608:	0000030b 	andeq	r0, r0, fp, lsl #6
 60c:	00690002 	rsbeq	r0, r9, r2
 610:	01020000 	mrseq	r0, (UNDEF: 2)
 614:	000d0efb 	strdeq	r0, [sp], -fp
 618:	01010101 	tsteq	r1, r1, lsl #2
 61c:	01000000 	mrseq	r0, (UNDEF: 0)
 620:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
 624:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 628:	2f2e2e2f 	svccs	0x002e2e2f
 62c:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
 630:	00656475 	rsbeq	r6, r5, r5, ror r4
 634:	61757800 	cmnvs	r5, r0, lsl #16
 638:	73707472 	cmnvc	r0, #1912602624	; 0x72000000
 63c:	0000632e 	andeq	r6, r0, lr, lsr #6
 640:	69780000 	ldmdbvs	r8!, {}^	; <UNPREDICTABLE>
 644:	79745f6c 	ldmdbvc	r4!, {r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
 648:	2e736570 	mrccs	5, 3, r6, cr3, cr0, {3}
 64c:	00010068 	andeq	r0, r1, r8, rrx
 650:	61757800 	cmnvs	r5, r0, lsl #16
 654:	73707472 	cmnvc	r0, #1912602624	; 0x72000000
 658:	0000682e 	andeq	r6, r0, lr, lsr #16
 65c:	69780000 	ldmdbvs	r8!, {}^	; <UNPREDICTABLE>
 660:	73615f6c 	cmnvc	r1, #108, 30	; 0x1b0
 664:	74726573 	ldrbtvc	r6, [r2], #-1395	; 0xfffffa8d
 668:	0100682e 	tsteq	r0, lr, lsr #16
 66c:	69780000 	ldmdbvs	r8!, {}^	; <UNPREDICTABLE>
 670:	6f695f6c 	svcvs	0x00695f6c
 674:	0100682e 	tsteq	r0, lr, lsr #16
 678:	00000000 	andeq	r0, r0, r0
 67c:	5c940205 	lfmpl	f0, 4, [r4], {5}
 680:	98030001 	stmdals	r3, {r0}
 684:	03350105 	teqeq	r5, #1073741825	; 0x40000001
 688:	20087df2 	strdcs	r7, [r8], -r2
 68c:	00362f2e 	eorseq	r2, r6, lr, lsr #30
 690:	06020402 	streq	r0, [r2], -r2, lsl #8
 694:	a650062e 	ldrbge	r0, [r0], -lr, lsr #12
 698:	01040200 	mrseq	r0, R12_usr
 69c:	002e7203 	eoreq	r7, lr, r3, lsl #4
 6a0:	67010402 	strvs	r0, [r1, -r2, lsl #8]
 6a4:	01040200 	mrseq	r0, R12_usr
 6a8:	4a14032d 	bmi	501364 <__stack+0x343414>
 6ac:	7703362f 	strvc	r3, [r3, -pc, lsr #12]
 6b0:	362d2f2e 	strtcc	r2, [sp], -lr, lsr #30
 6b4:	03884e4d 	orreq	r4, r8, #1232	; 0x4d0
 6b8:	344a7ec6 	strbcc	r7, [sl], #-3782	; 0xfffff13a
 6bc:	2e2e7a03 	vmulcs.f32	s14, s28, s6
 6c0:	04020034 	streq	r0, [r2], #-52	; 0xffffffcc
 6c4:	002e0601 	eoreq	r0, lr, r1, lsl #12
 6c8:	06010402 	streq	r0, [r1], -r2, lsl #8
 6cc:	0402002f 	streq	r0, [r2], #-47	; 0xffffffd1
 6d0:	02002d01 	andeq	r2, r0, #1, 26	; 0x40
 6d4:	00670104 	rsbeq	r0, r7, r4, lsl #2
 6d8:	2f010402 	svccs	0x00010402
 6dc:	02040200 	andeq	r0, r4, #0, 4
 6e0:	03069e06 	movweq	r9, #28166	; 0x6e06
 6e4:	0200ba17 	andeq	fp, r0, #94208	; 0x17000
 6e8:	6f030104 	svcvs	0x00030104
 6ec:	04020066 	streq	r0, [r2], #-102	; 0xffffff9a
 6f0:	0200a401 	andeq	sl, r0, #16777216	; 0x1000000
 6f4:	00360104 	eorseq	r0, r6, r4, lsl #2
 6f8:	03010402 	movweq	r0, #5122	; 0x1402
 6fc:	02002e7a 	andeq	r2, r0, #1952	; 0x7a0
 700:	002c0104 	eoreq	r0, ip, r4, lsl #2
 704:	2f010402 	svccs	0x00010402
 708:	01040200 	mrseq	r0, R12_usr
 70c:	002e0a03 	eoreq	r0, lr, r3, lsl #20
 710:	47010402 	strmi	r0, [r1, -r2, lsl #8]
 714:	02040200 	andeq	r0, r4, #0, 4
 718:	002e6a03 	eoreq	r6, lr, r3, lsl #20
 71c:	08020402 	stmdaeq	r2, {r1, sl}
 720:	01d30321 	bicseq	r0, r3, r1, lsr #6
 724:	6d362ed6 	ldcvs	14, cr2, [r6, #-856]!	; 0xfffffca8
 728:	02040200 	andeq	r0, r4, #0, 4
 72c:	4e06ba06 	vmlami.f32	s22, s12, s12
 730:	33492f2d 	movtcc	r2, #40749	; 0x9f2d
 734:	66760330 			; <UNDEFINED> instruction: 0x66760330
 738:	2f661203 	svccs	0x00661203
 73c:	4e2d2b31 	vmovmi.16	d13[2], r2
 740:	032e5d03 	teqeq	lr, #3, 26	; 0xc0
 744:	35827ee6 	strcc	r7, [r2, #3814]	; 0xee6
 748:	2e2e7903 	cdpcs	9, 2, cr7, cr14, cr3, {0}
 74c:	04020035 	streq	r0, [r2], #-53	; 0xffffffcb
 750:	002e0601 	eoreq	r0, lr, r1, lsl #12
 754:	06010402 	streq	r0, [r1], -r2, lsl #8
 758:	0402002f 	streq	r0, [r2], #-47	; 0xffffffd1
 75c:	02002d01 	andeq	r2, r0, #1, 26	; 0x40
 760:	00670104 	rsbeq	r0, r7, r4, lsl #2
 764:	2f010402 	svccs	0x00010402
 768:	02040200 	andeq	r0, r4, #0, 4
 76c:	03069e06 	movweq	r9, #28166	; 0x6e06
 770:	0200d61e 	andeq	sp, r0, #31457280	; 0x1e00000
 774:	68030104 	stmdavs	r3, {r2, r8}
 778:	04020066 	streq	r0, [r2], #-102	; 0xffffff9a
 77c:	02008401 	andeq	r8, r0, #16777216	; 0x1000000
 780:	002c0104 	eoreq	r0, ip, r4, lsl #2
 784:	30010402 	andcc	r0, r1, r2, lsl #8
 788:	01040200 	mrseq	r0, R12_usr
 78c:	0402006c 	streq	r0, [r2], #-108	; 0xffffff94
 790:	02003501 	andeq	r3, r0, #4194304	; 0x400000
 794:	00290104 	eoreq	r0, r9, r4, lsl #2
 798:	2c010402 	cfstrscs	mvf0, [r1], {2}
 79c:	01040200 	mrseq	r0, R12_usr
 7a0:	0402002f 	streq	r0, [r2], #-47	; 0xffffffd1
 7a4:	02003401 	andeq	r3, r0, #16777216	; 0x1000000
 7a8:	00330104 	eorseq	r0, r3, r4, lsl #2
 7ac:	29010402 	stmdbcs	r1, {r1, sl}
 7b0:	01040200 	mrseq	r0, R12_usr
 7b4:	04020033 	streq	r0, [r2], #-51	; 0xffffffcd
 7b8:	02006901 	andeq	r6, r0, #16384	; 0x4000
 7bc:	61030204 	tstvs	r3, r4, lsl #4
 7c0:	0402002e 	streq	r0, [r2], #-46	; 0xffffffd2
 7c4:	033d0802 	teqeq	sp, #131072	; 0x20000
 7c8:	03d601cb 	bicseq	r0, r6, #-1073741774	; 0xc0000032
 7cc:	71032e0f 	tstvc	r3, pc, lsl #28
 7d0:	0f032e2e 	svceq	0x00032e2e
 7d4:	0402002e 	streq	r0, [r2], #-46	; 0xffffffd2
 7d8:	02002f01 	andeq	r2, r0, #1, 30
 7dc:	00650104 	rsbeq	r0, r5, r4, lsl #2
 7e0:	2f010402 	svccs	0x00010402
 7e4:	01040200 	mrseq	r0, R12_usr
 7e8:	0402002d 	streq	r0, [r2], #-45	; 0xffffffd3
 7ec:	02006701 	andeq	r6, r0, #262144	; 0x40000
 7f0:	002f0104 	eoreq	r0, pc, r4, lsl #2
 7f4:	83010402 	movwhi	r0, #5122	; 0x1402
 7f8:	01040200 	mrseq	r0, R12_usr
 7fc:	cd036750 	stcgt	7, cr6, [r3, #-320]	; 0xfffffec0
 800:	02002e00 	andeq	r2, r0, #0, 28
 804:	aa030204 	bge	c101c <_HEAP_SIZE+0xa101c>
 808:	02004a7f 	andeq	r4, r0, #520192	; 0x7f000
 80c:	004b0204 	subeq	r0, fp, r4, lsl #4
 810:	08020402 	stmdaeq	r2, {r1, sl}
 814:	660c0321 	strvs	r0, [ip], -r1, lsr #6
 818:	354a6203 	strbcc	r6, [sl, #-515]	; 0xfffffdfd
 81c:	4d2e1703 	stcmi	7, cr1, [lr, #-12]!
 820:	492e6503 	stmdbmi	lr!, {r0, r1, r8, sl, sp, lr}
 824:	2f2e1d03 	svccs	0x002e1d03
 828:	032e0c03 	teqeq	lr, #768	; 0x300
 82c:	30036650 	andcc	r6, r3, r0, asr r6
 830:	32873366 	addcc	r3, r7, #-1744830463	; 0x98000001
 834:	2e09032b 	cdpcs	3, 0, cr0, cr9, cr11, {1}
 838:	67032c30 	smladxvs	r3, r0, ip, r2
 83c:	4a24032e 	bmi	9014fc <__stack+0x7435ac>
 840:	84d85183 	ldrbhi	r5, [r8], #387	; 0x183
 844:	302cda88 	eorcc	sp, ip, r8, lsl #21
 848:	02040200 	andeq	r0, r4, #0, 4
 84c:	2e7fab03 	vaddcs.f64	d26, d15, d3
 850:	087cd903 	ldmdaeq	ip!, {r0, r1, r8, fp, ip, lr, pc}^
 854:	7803363c 	stmdavc	r3, {r2, r3, r4, r5, r9, sl, ip, sp}
 858:	0200362e 	andeq	r3, r0, #48234496	; 0x2e00000
 85c:	2e060104 	adfcss	f0, f6, f4
 860:	01040200 	mrseq	r0, R12_usr
 864:	02002f06 	andeq	r2, r0, #6, 30
 868:	002d0104 	eoreq	r0, sp, r4, lsl #2
 86c:	67010402 	strvs	r0, [r1, -r2, lsl #8]
 870:	01040200 	mrseq	r0, R12_usr
 874:	04020034 	streq	r0, [r2], #-52	; 0xffffffcc
 878:	02003401 	andeq	r3, r0, #16777216	; 0x1000000
 87c:	00290104 	eoreq	r0, r9, r4, lsl #2
 880:	33010402 	movwcc	r0, #5122	; 0x1402
 884:	01040200 	mrseq	r0, R12_usr
 888:	002e7903 	eoreq	r7, lr, r3, lsl #18
 88c:	03010402 	movweq	r0, #5122	; 0x1402
 890:	02002e14 	andeq	r2, r0, #20, 28	; 0x140
 894:	6d030104 	stfvss	f0, [r3, #-16]
 898:	0402002e 	streq	r0, [r2], #-46	; 0xffffffd2
 89c:	2e130301 	cdpcs	3, 1, cr0, cr3, cr1, {0}
 8a0:	01040200 	mrseq	r0, R12_usr
 8a4:	002e6e03 	eoreq	r6, lr, r3, lsl #28
 8a8:	03010402 	movweq	r0, #5122	; 0x1402
 8ac:	02002e19 	andeq	r2, r0, #400	; 0x190
 8b0:	6c030104 	stfvss	f0, [r3], {4}
 8b4:	0402002e 	streq	r0, [r2], #-46	; 0xffffffd2
 8b8:	2e140301 	cdpcs	3, 1, cr0, cr4, cr1, {0}
 8bc:	01040200 	mrseq	r0, R12_usr
 8c0:	002e6e03 	eoreq	r6, lr, r3, lsl #28
 8c4:	2f010402 	svccs	0x00010402
 8c8:	01040200 	mrseq	r0, R12_usr
 8cc:	0402002f 	streq	r0, [r2], #-47	; 0xffffffd1
 8d0:	02003001 	andeq	r3, r0, #1
 8d4:	002f0104 	eoreq	r0, pc, r4, lsl #2
 8d8:	2f010402 	svccs	0x00010402
 8dc:	01040200 	mrseq	r0, R12_usr
 8e0:	04020033 	streq	r0, [r2], #-51	; 0xffffffcd
 8e4:	02003501 	andeq	r3, r0, #4194304	; 0x400000
 8e8:	002f0104 	eoreq	r0, pc, r4, lsl #2
 8ec:	2f010402 	svccs	0x00010402
 8f0:	01040200 	mrseq	r0, R12_usr
 8f4:	2e09032d 	cdpcs	3, 0, cr0, cr9, cr13, {1}
 8f8:	03661403 	cmneq	r6, #50331648	; 0x3000000
 8fc:	0e032e72 	mcreq	14, 0, r2, cr3, cr2, {3}
 900:	88886c2e 	stmhi	r8, {r1, r2, r3, r5, sl, fp, sp, lr}
 904:	04020086 	streq	r0, [r2], #-134	; 0xffffff7a
 908:	7fac0302 	svcvc	0x00ac0302
 90c:	0402004a 	streq	r0, [r2], #-74	; 0xffffffb6
 910:	1402f102 	strne	pc, [r2], #-258	; 0xfffffefe
 914:	6b010100 	blvs	40d1c <_HEAP_SIZE+0x20d1c>
 918:	02000000 	andeq	r0, r0, #0
 91c:	00005300 	andeq	r5, r0, r0, lsl #6
 920:	fb010200 	blx	4112a <_HEAP_SIZE+0x2112a>
 924:	01000d0e 	tsteq	r0, lr, lsl #26
 928:	00010101 	andeq	r0, r1, r1, lsl #2
 92c:	00010000 	andeq	r0, r1, r0
 930:	2e2e0100 	sufcse	f0, f6, f0
 934:	2f2e2e2f 	svccs	0x002e2e2f
 938:	692f2e2e 	stmdbvs	pc!, {r1, r2, r3, r5, r9, sl, fp, sp}	; <UNPREDICTABLE>
 93c:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 940:	00006564 	andeq	r6, r0, r4, ror #10
 944:	72617578 	rsbvc	r7, r1, #120, 10	; 0x1e000000
 948:	5f737074 	svcpl	0x00737074
 94c:	696e6973 	stmdbvs	lr!, {r0, r1, r4, r5, r6, r8, fp, sp, lr}^
 950:	00632e74 	rsbeq	r2, r3, r4, ror lr
 954:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
 958:	745f6c69 	ldrbvc	r6, [pc], #-3177	; 960 <_SUPERVISOR_STACK_SIZE+0x160>
 95c:	73657079 	cmnvc	r5, #121	; 0x79
 960:	0100682e 	tsteq	r0, lr, lsr #16
 964:	75780000 	ldrbvc	r0, [r8, #-0]!
 968:	70747261 	rsbsvc	r7, r4, r1, ror #4
 96c:	00682e73 	rsbeq	r2, r8, r3, ror lr
 970:	00000000 	andeq	r0, r0, r0
 974:	90020500 	andls	r0, r2, r0, lsl #10
 978:	03000162 	movweq	r0, #354	; 0x162
 97c:	180100da 	stmdane	r1, {r1, r3, r4, r6, r7}
 980:	0008026d 	andeq	r0, r8, sp, ror #4
 984:	00690101 	rsbeq	r0, r9, r1, lsl #2
 988:	00020000 	andeq	r0, r2, r0
 98c:	00000050 	andeq	r0, r0, r0, asr r0
 990:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 994:	0101000d 	tsteq	r1, sp
 998:	00000101 	andeq	r0, r0, r1, lsl #2
 99c:	00000100 	andeq	r0, r0, r0, lsl #2
 9a0:	2f2e2e01 	svccs	0x002e2e01
 9a4:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 9a8:	6e692f2e 	cdpvs	15, 6, cr2, cr9, cr14, {1}
 9ac:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
 9b0:	6f000065 	svcvs	0x00000065
 9b4:	79627475 	stmdbvc	r2!, {r0, r2, r4, r5, r6, sl, ip, sp, lr}^
 9b8:	632e6574 	teqvs	lr, #116, 10	; 0x1d000000
 9bc:	00000000 	andeq	r0, r0, r0
 9c0:	5f6c6978 	svcpl	0x006c6978
 9c4:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
 9c8:	00682e73 	rsbeq	r2, r8, r3, ror lr
 9cc:	78000001 	stmdavc	r0, {r0}
 9d0:	74726175 	ldrbtvc	r6, [r2], #-373	; 0xfffffe8b
 9d4:	685f7370 	ldmdavs	pc, {r4, r5, r6, r8, r9, ip, sp, lr}^	; <UNPREDICTABLE>
 9d8:	00682e77 	rsbeq	r2, r8, r7, ror lr
 9dc:	00000001 	andeq	r0, r0, r1
 9e0:	ac020500 	cfstr32ge	mvfx0, [r2], {-0}
 9e4:	03000162 	movweq	r0, #354	; 0x162
 9e8:	2f01010f 	svccs	0x0001010f
 9ec:	0202114b 	andeq	r1, r2, #-1073741806	; 0xc0000012
 9f0:	54010100 	strpl	r0, [r1], #-256	; 0xffffff00
 9f4:	02000000 	andeq	r0, r0, #0
 9f8:	00003300 	andeq	r3, r0, r0, lsl #6
 9fc:	fb010200 	blx	41206 <_HEAP_SIZE+0x21206>
 a00:	01000d0e 	tsteq	r0, lr, lsl #26
 a04:	00010101 	andeq	r0, r1, r1, lsl #2
 a08:	00010000 	andeq	r0, r1, r0
 a0c:	78000100 	stmdavc	r0, {r8}
 a10:	615f6c69 	cmpvs	pc, r9, ror #24
 a14:	72657373 	rsbvc	r7, r5, #-872415231	; 0xcc000001
 a18:	00632e74 	rsbeq	r2, r3, r4, ror lr
 a1c:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
 a20:	615f6c69 	cmpvs	pc, r9, ror #24
 a24:	72657373 	rsbvc	r7, r5, #-872415231	; 0xcc000001
 a28:	00682e74 	rsbeq	r2, r8, r4, ror lr
 a2c:	00000000 	andeq	r0, r0, r0
 a30:	bc020500 	cfstr32lt	mvfx0, [r2], {-0}
 a34:	03000162 	movweq	r0, #354	; 0x162
 a38:	300100eb 	andcc	r0, r1, fp, ror #1
 a3c:	0402009f 	streq	r0, [r2], #-159	; 0xffffff61
 a40:	12033401 	andne	r3, r3, #16777216	; 0x1000000
 a44:	080213ba 	stmdaeq	r2, {r1, r3, r4, r5, r7, r8, r9, ip}
 a48:	55010100 	strpl	r0, [r1, #-256]	; 0xffffff00
 a4c:	02000000 	andeq	r0, r0, #0
 a50:	00004f00 	andeq	r4, r0, r0, lsl #30
 a54:	fb010200 	blx	4125e <_HEAP_SIZE+0x2125e>
 a58:	01000d0e 	tsteq	r0, lr, lsl #26
 a5c:	00010101 	andeq	r0, r1, r1, lsl #2
 a60:	00010000 	andeq	r0, r1, r0
 a64:	2e2e0100 	sufcse	f0, f6, f0
 a68:	2f2e2e2f 	svccs	0x002e2e2f
 a6c:	692f2e2e 	stmdbvs	pc!, {r1, r2, r3, r5, r9, sl, fp, sp}	; <UNPREDICTABLE>
 a70:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 a74:	00006564 	andeq	r6, r0, r4, ror #10
 a78:	5f6c6978 	svcpl	0x006c6978
 a7c:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
 a80:	00682e73 	rsbeq	r2, r8, r3, ror lr
 a84:	78000001 	stmdavc	r0, {r0}
 a88:	74726175 	ldrbtvc	r6, [r2], #-373	; 0xfffffe8b
 a8c:	682e7370 	stmdavs	lr!, {r4, r5, r6, r8, r9, ip, sp, lr}
 a90:	00000000 	andeq	r0, r0, r0
 a94:	72617578 	rsbvc	r7, r1, #120, 10	; 0x1e000000
 a98:	5f737074 	svcpl	0x00737074
 a9c:	00632e67 	rsbeq	r2, r3, r7, ror #28
 aa0:	00000000 	andeq	r0, r0, r0
 aa4:	00000079 	andeq	r0, r0, r9, ror r0
 aa8:	004f0002 	subeq	r0, pc, r2
 aac:	01020000 	mrseq	r0, (UNDEF: 2)
 ab0:	000d0efb 	strdeq	r0, [sp], -fp
 ab4:	01010101 	tsteq	r1, r1, lsl #2
 ab8:	01000000 	mrseq	r0, (UNDEF: 0)
 abc:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
 ac0:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 ac4:	2f2e2e2f 	svccs	0x002e2e2f
 ac8:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
 acc:	00656475 	rsbeq	r6, r5, r5, ror r4
 ad0:	61757800 	cmnvs	r5, r0, lsl #16
 ad4:	73707472 	cmnvc	r0, #1912602624	; 0x72000000
 ad8:	2e77685f 	mrccs	8, 3, r6, cr7, cr15, {2}
 adc:	00000063 	andeq	r0, r0, r3, rrx
 ae0:	6c697800 	stclvs	8, cr7, [r9], #-0
 ae4:	7079745f 	rsbsvc	r7, r9, pc, asr r4
 ae8:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
 aec:	00000100 	andeq	r0, r0, r0, lsl #2
 af0:	5f6c6978 	svcpl	0x006c6978
 af4:	682e6f69 	stmdavs	lr!, {r0, r3, r5, r6, r8, r9, sl, fp, sp, lr}
 af8:	00000100 	andeq	r0, r0, r0, lsl #2
 afc:	02050000 	andeq	r0, r5, #0
 b00:	00016300 	andeq	r6, r1, r0, lsl #6
 b04:	0100d203 	tsteq	r0, r3, lsl #4
 b08:	0402004a 	streq	r0, [r2], #-74	; 0xffffffb6
 b0c:	4b874e01 	blmi	fe1d4318 <CPU_ARM_BIT_CNTES_C+0x7e1d4318>
 b10:	2e11032d 	cdpcs	3, 1, cr0, cr1, cr13, {1}
 b14:	0402004a 	streq	r0, [r2], #-74	; 0xffffffb6
 b18:	4b873201 	blmi	fe1cd324 <CPU_ARM_BIT_CNTES_C+0x7e1cd324>
 b1c:	01000402 	tsteq	r0, r2, lsl #8
 b20:	0000b101 	andeq	fp, r0, r1, lsl #2
 b24:	9c000200 	sfmls	f0, 4, [r0], {-0}
 b28:	02000000 	andeq	r0, r0, #0
 b2c:	0d0efb01 	vstreq	d15, [lr, #-4]
 b30:	01010100 	mrseq	r0, (UNDEF: 17)
 b34:	00000001 	andeq	r0, r0, r1
 b38:	01000001 	tsteq	r0, r1
 b3c:	785c3a63 	ldmdavc	ip, {r0, r1, r5, r6, r9, fp, ip, sp}^
 b40:	6e696c69 	cdpvs	12, 6, cr6, cr9, cr9, {3}
 b44:	34315c78 	ldrtcc	r5, [r1], #-3192	; 0xfffff388
 b48:	695c362e 	ldmdbvs	ip, {r1, r2, r3, r5, r9, sl, ip, sp}^
 b4c:	645f6573 	ldrbvs	r6, [pc], #-1395	; b54 <_SUPERVISOR_STACK_SIZE+0x354>
 b50:	64655c73 	strbtvs	r5, [r5], #-3187	; 0xfffff38d
 b54:	6e675c6b 	cdpvs	12, 6, cr5, cr7, cr11, {3}
 b58:	72615c75 	rsbvc	r5, r1, #29952	; 0x7500
 b5c:	746e5c6d 	strbtvc	r5, [lr], #-3181	; 0xfffff393
 b60:	6e69625c 	mcrvs	2, 3, r6, cr9, cr12, {2}
 b64:	2f2e2e5c 	svccs	0x002e2e5c
 b68:	2f62696c 	svccs	0x0062696c
 b6c:	2f636367 	svccs	0x00636367
 b70:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 b74:	696c6978 	stmdbvs	ip!, {r3, r4, r5, r6, r8, fp, sp, lr}^
 b78:	652d786e 	strvs	r7, [sp, #-2158]!	; 0xfffff792
 b7c:	2f696261 	svccs	0x00696261
 b80:	2e372e34 	mrccs	14, 1, r2, cr7, cr4, {1}
 b84:	2e2e2f32 	mcrcs	15, 1, r2, cr14, cr2, {1}
 b88:	2f2e2e2f 	svccs	0x002e2e2f
 b8c:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 b90:	72612f2e 	rsbvc	r2, r1, #46, 30	; 0xb8
 b94:	69782d6d 	ldmdbvs	r8!, {r0, r2, r3, r5, r6, r8, sl, fp, sp}^
 b98:	786e696c 	stmdavc	lr!, {r2, r3, r5, r6, r8, fp, sp, lr}^
 b9c:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
 ba0:	6e692f69 	cdpvs	15, 6, cr2, cr9, cr9, {3}
 ba4:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
 ba8:	79732f65 	ldmdbvc	r3!, {r0, r2, r5, r6, r8, r9, sl, fp, sp}^
 bac:	5f000073 	svcpl	0x00000073
 bb0:	74697865 	strbtvc	r7, [r9], #-2149	; 0xfffff79b
 bb4:	0000632e 	andeq	r6, r0, lr, lsr #6
 bb8:	6e750000 	cdpvs	0, 7, cr0, cr5, cr0, {0}
 bbc:	64747369 	ldrbtvs	r7, [r4], #-873	; 0xfffffc97
 bc0:	0100682e 	tsteq	r0, lr, lsr #16
 bc4:	00000000 	andeq	r0, r0, r0
 bc8:	75ac0205 	strvc	r0, [ip, #517]!	; 0x205
 bcc:	2f030001 	svccs	0x00030001
 bd0:	00020201 	andeq	r0, r2, r1, lsl #4
 bd4:	00b30101 	adcseq	r0, r3, r1, lsl #2
 bd8:	00020000 	andeq	r0, r2, r0
 bdc:	0000009b 	muleq	r0, fp, r0
 be0:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 be4:	0101000d 	tsteq	r1, sp
 be8:	00000101 	andeq	r0, r0, r1, lsl #2
 bec:	00000100 	andeq	r0, r0, r0, lsl #2
 bf0:	5c3a6301 	ldcpl	3, cr6, [sl], #-4
 bf4:	696c6978 	stmdbvs	ip!, {r3, r4, r5, r6, r8, fp, sp, lr}^
 bf8:	315c786e 	cmpcc	ip, lr, ror #16
 bfc:	5c362e34 	ldcpl	14, cr2, [r6], #-208	; 0xffffff30
 c00:	5f657369 	svcpl	0x00657369
 c04:	655c7364 	ldrbvs	r7, [ip, #-868]	; 0xfffffc9c
 c08:	675c6b64 	ldrbvs	r6, [ip, -r4, ror #22]
 c0c:	615c756e 	cmpvs	ip, lr, ror #10
 c10:	6e5c6d72 	mrcvs	13, 2, r6, cr12, cr2, {3}
 c14:	69625c74 	stmdbvs	r2!, {r2, r4, r5, r6, sl, fp, ip, lr}^
 c18:	2e2e5c6e 	cdpcs	12, 2, cr5, cr14, cr14, {3}
 c1c:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 c20:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
 c24:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 c28:	6c69782d 	stclvs	8, cr7, [r9], #-180	; 0xffffff4c
 c2c:	2d786e69 	ldclcs	14, cr6, [r8, #-420]!	; 0xfffffe5c
 c30:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
 c34:	372e342f 	strcc	r3, [lr, -pc, lsr #8]!
 c38:	2e2f322e 	cdpcs	2, 2, cr3, cr15, cr14, {1}
 c3c:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 c40:	2f2e2e2f 	svccs	0x002e2e2f
 c44:	612f2e2e 	teqvs	pc, lr, lsr #28
 c48:	782d6d72 	stmdavc	sp!, {r1, r4, r5, r6, r8, sl, fp, sp, lr}
 c4c:	6e696c69 	cdpvs	12, 6, cr6, cr9, cr9, {3}
 c50:	61652d78 	smcvs	21208	; 0x52d8
 c54:	692f6962 	stmdbvs	pc!, {r1, r5, r6, r8, fp, sp, lr}	; <UNPREDICTABLE>
 c58:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 c5c:	732f6564 	teqvc	pc, #100, 10	; 0x19000000
 c60:	00007379 	andeq	r7, r0, r9, ror r3
 c64:	7262735f 	rsbvc	r7, r2, #2080374785	; 0x7c000001
 c68:	00632e6b 	rsbeq	r2, r3, fp, ror #28
 c6c:	74000000 	strvc	r0, [r0], #-0
 c70:	73657079 	cmnvc	r5, #121	; 0x79
 c74:	0100682e 	tsteq	r0, lr, lsr #16
 c78:	00000000 	andeq	r0, r0, r0
 c7c:	75b00205 	ldrvc	r0, [r0, #517]!	; 0x205
 c80:	30030001 	andcc	r0, r3, r1
 c84:	51db1601 	bicspl	r1, fp, r1, lsl #12
 c88:	01000402 	tsteq	r0, r2, lsl #8
 c8c:	Address 0x00000c8c is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	20554e47 	subscs	r4, r5, r7, asr #28
   4:	2e342043 	cdpcs	0, 3, cr2, cr4, cr3, {2}
   8:	00322e37 	eorseq	r2, r2, r7, lsr lr
   c:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
  10:	3a430074 	bcc	10c01e8 <__stack+0xf02298>
  14:	6c69585c 	stclvs	8, cr5, [r9], #-368	; 0xfffffe90
  18:	5c786e69 	ldclpl	14, cr6, [r8], #-420	; 0xfffffe5c
  1c:	54414958 	strbpl	r4, [r1], #-2392	; 0xfffff6a8
  20:	585c4e41 	ldmdapl	ip, {r0, r6, r9, sl, fp, lr}^
  24:	6e696c69 	cdpvs	12, 6, cr6, cr9, cr9, {3}
  28:	72705c78 	rsbsvc	r5, r0, #120, 24	; 0x7800
  2c:	745c6a6f 	ldrbvc	r6, [ip], #-2671	; 0xfffff591
  30:	726f7475 	rsbvc	r7, pc, #1962934272	; 0x75000000
  34:	6d5c6c61 	ldclvs	12, cr6, [ip, #-388]	; 0xfffffe7c
  38:	6f727079 	svcvs	0x00727079
  3c:	63755c6a 	cmnvs	r5, #27136	; 0x6a00
  40:	6969736f 	stmdbvs	r9!, {r0, r1, r2, r3, r5, r6, r8, r9, ip, sp, lr}^
  44:	766f6e5f 			; <UNDEFINED> instruction: 0x766f6e5f
  48:	63755c61 	cmnvs	r5, #24832	; 0x6100
  4c:	692d736f 	pushvs	{r0, r1, r2, r3, r5, r6, r8, r9, ip, sp, lr}
  50:	65645f69 	strbvs	r5, [r4, #-3945]!	; 0xfffff097
  54:	305f6f6d 	subscc	r6, pc, sp, ror #30
  58:	7073625f 	rsbsvc	r6, r3, pc, asr r2
  5c:	3773705c 			; <UNDEFINED> instruction: 0x3773705c
  60:	726f635f 	rsbvc	r6, pc, #2080374785	; 0x7c000001
  64:	61786574 	cmnvs	r8, r4, ror r5
  68:	5c305f39 	ldcpl	15, cr5, [r0], #-228	; 0xffffff1c
  6c:	7362696c 	cmnvc	r2, #108, 18	; 0x1b0000
  70:	755c6372 	ldrbvc	r6, [ip, #-882]	; 0xfffffc8e
  74:	69736f63 	ldmdbvs	r3!, {r0, r1, r5, r6, r8, r9, sl, fp, sp, lr}^
  78:	32765f69 	rsbscc	r5, r6, #420	; 0x1a4
  7c:	5f30305f 	svcpl	0x0030305f
  80:	72735c61 	rsbsvc	r5, r3, #24832	; 0x6100
  84:	756f0063 	strbvc	r0, [pc, #-99]!	; 29 <OS_CPU_ARM_CONTROL_THUMB+0x9>
  88:	74796274 	ldrbtvc	r6, [r9], #-628	; 0xfffffd8c
  8c:	72700065 	rsbsvc	r0, r0, #101	; 0x65
  90:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
  94:	69580063 	ldmdbvs	r8, {r0, r1, r5, r6}^
  98:	43445f6c 	movtmi	r5, #20332	; 0x4f6c
  9c:	65686361 	strbvs	r6, [r8, #-865]!	; 0xfffffc9f
  a0:	62616e45 	rsbvs	r6, r1, #1104	; 0x450
  a4:	5800656c 	stmdapl	r0, {r2, r3, r5, r6, r8, sl, sp, lr}
  a8:	4c5f6c69 	mrrcmi	12, 6, r6, pc, cr9	; <UNPREDICTABLE>
  ac:	61434431 	cmpvs	r3, r1, lsr r4
  b0:	53656863 	cmnpl	r5, #6488064	; 0x630000
  b4:	65726f74 	ldrbvs	r6, [r2, #-3956]!	; 0xfffff08c
  b8:	656e694c 	strbvs	r6, [lr, #-2380]!	; 0xfffff6b4
  bc:	6c695800 	stclvs	8, cr5, [r9], #-0
  c0:	44314c5f 	ldrtmi	r4, [r1], #-3167	; 0xfffff3a1
  c4:	68636143 	stmdavs	r3!, {r0, r1, r6, r8, sp, lr}^
  c8:	756c4665 	strbvc	r4, [ip, #-1637]!	; 0xfffff99b
  cc:	694c6873 	stmdbvs	ip, {r0, r1, r4, r5, r6, fp, sp, lr}^
  d0:	5800656e 	stmdapl	r0, {r1, r2, r3, r5, r6, r8, sl, sp, lr}
  d4:	4c5f6c69 	mrrcmi	12, 6, r6, pc, cr9	; <UNPREDICTABLE>
  d8:	61434431 	cmpvs	r3, r1, lsr r4
  dc:	46656863 	strbtmi	r6, [r5], -r3, ror #16
  e0:	6873756c 	ldmdavs	r3!, {r2, r3, r5, r6, r8, sl, ip, sp, lr}^
  e4:	69734300 	ldmdbvs	r3!, {r8, r9, lr}^
  e8:	67655264 	strbvs	r5, [r5, -r4, ror #4]!
  ec:	6c695800 	stclvs	8, cr5, [r9], #-0
  f0:	6143445f 	cmpvs	r3, pc, asr r4
  f4:	44656863 	strbtmi	r6, [r5], #-2147	; 0xfffff79d
  f8:	62617369 	rsbvs	r7, r1, #-1543503871	; 0xa4000001
  fc:	5800656c 	stmdapl	r0, {r2, r3, r5, r6, r8, sl, sp, lr}
 100:	4c5f6c69 	mrrcmi	12, 6, r6, pc, cr9	; <UNPREDICTABLE>
 104:	63614332 	cmnvs	r1, #-939524096	; 0xc8000000
 108:	6e496568 	cdpvs	5, 4, cr6, cr9, cr8, {3}
 10c:	696c6176 	stmdbvs	ip!, {r1, r2, r4, r5, r6, r8, sp, lr}^
 110:	65746164 	ldrbvs	r6, [r4, #-356]!	; 0xfffffe9c
 114:	6c695800 	stclvs	8, cr5, [r9], #-0
 118:	43324c5f 	teqmi	r2, #24320	; 0x5f00
 11c:	65686361 	strbvs	r6, [r8, #-865]!	; 0xfffffc9f
 120:	726f7453 	rsbvc	r7, pc, #1392508928	; 0x53000000
 124:	6e694c65 	cdpvs	12, 6, cr4, cr9, cr5, {3}
 128:	69580065 	ldmdbvs	r8, {r0, r2, r5, r6}^
 12c:	314c5f6c 	cmpcc	ip, ip, ror #30
 130:	63614349 	cmnvs	r1, #603979777	; 0x24000001
 134:	6e456568 	cdpvs	5, 4, cr6, cr5, cr8, {3}
 138:	656c6261 	strbvs	r6, [ip, #-609]!	; 0xfffffd9f
 13c:	6c695800 	stclvs	8, cr5, [r9], #-0
 140:	44314c5f 	ldrtmi	r4, [r1], #-3167	; 0xfffff3a1
 144:	68636143 	stmdavs	r3!, {r0, r1, r6, r8, sp, lr}^
 148:	756c4665 	strbvc	r4, [ip, #-1637]!	; 0xfffff99b
 14c:	61526873 	cmpvs	r2, r3, ror r8
 150:	0065676e 	rsbeq	r6, r5, lr, ror #14
 154:	68636163 	stmdavs	r3!, {r0, r1, r5, r6, r8, sp, lr}^
 158:	6e696c65 	cdpvs	12, 6, cr6, cr9, cr5, {3}
 15c:	69580065 	ldmdbvs	r8, {r0, r2, r5, r6}^
 160:	43495f6c 	movtmi	r5, #40812	; 0x9f6c
 164:	65686361 	strbvs	r6, [r8, #-865]!	; 0xfffffc9f
 168:	62616e45 	rsbvs	r6, r1, #1104	; 0x450
 16c:	5800656c 	stmdapl	r0, {r2, r3, r5, r6, r8, sl, sp, lr}
 170:	445f6c69 	ldrbmi	r6, [pc], #-3177	; 178 <CPU_ARM_CTRL_INT_DIS+0xb8>
 174:	68636143 	stmdavs	r3!, {r0, r1, r6, r8, sp, lr}^
 178:	756c4665 	strbvc	r4, [ip, #-1637]!	; 0xfffff99b
 17c:	61526873 	cmpvs	r2, r3, ror r8
 180:	0065676e 	rsbeq	r6, r5, lr, ror #14
 184:	6c727443 	cfldrdvs	mvd7, [r2], #-268	; 0xfffffef4
 188:	00676552 	rsbeq	r6, r7, r2, asr r5
 18c:	5f6c6958 	svcpl	0x006c6958
 190:	6143324c 	cmpvs	r3, ip, asr #4
 194:	46656863 	strbtmi	r6, [r5], -r3, ror #16
 198:	6873756c 	ldmdavs	r3!, {r2, r3, r5, r6, r8, sl, ip, sp, lr}^
 19c:	676e6152 			; <UNDEFINED> instruction: 0x676e6152
 1a0:	6e750065 	cdpvs	0, 7, cr0, cr5, cr5, {3}
 1a4:	6e676973 	mcrvs	9, 3, r6, cr7, cr3, {3}
 1a8:	63206465 	teqvs	r0, #1694498816	; 0x65000000
 1ac:	00726168 	rsbseq	r6, r2, r8, ror #2
 1b0:	5f6c6958 	svcpl	0x006c6958
 1b4:	3374754f 	cmncc	r4, #331350016	; 0x13c00000
 1b8:	69780032 	ldmdbvs	r8!, {r1, r4, r5}^
 1bc:	61635f6c 	cmnvs	r3, ip, ror #30
 1c0:	2e656863 	cdpcs	8, 6, cr6, cr5, cr3, {3}
 1c4:	69580063 	ldmdbvs	r8, {r0, r1, r5, r6}^
 1c8:	43445f6c 	movtmi	r5, #20332	; 0x4f6c
 1cc:	65686361 	strbvs	r6, [r8, #-865]!	; 0xfffffc9f
 1d0:	61766e49 	cmnvs	r6, r9, asr #28
 1d4:	6164696c 	cmnvs	r4, ip, ror #18
 1d8:	61526574 	cmpvs	r2, r4, ror r5
 1dc:	0065676e 	rsbeq	r6, r5, lr, ror #14
 1e0:	5f6c6958 	svcpl	0x006c6958
 1e4:	4349314c 	movtmi	r3, #37196	; 0x914c
 1e8:	65686361 	strbvs	r6, [r8, #-865]!	; 0xfffffc9f
 1ec:	61766e49 	cmnvs	r6, r9, asr #28
 1f0:	6164696c 	cmnvs	r4, ip, ror #18
 1f4:	694c6574 	stmdbvs	ip, {r2, r4, r5, r6, r8, sl, sp, lr}^
 1f8:	7300656e 	movwvc	r6, #1390	; 0x56e
 1fc:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 200:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
 204:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 208:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
 20c:	69580074 	ldmdbvs	r8, {r2, r4, r5, r6}^
 210:	6e495f6c 	cdpvs	15, 4, cr5, cr9, cr12, {3}
 214:	58003233 	stmdapl	r0, {r0, r1, r4, r5, r9, ip, sp}
 218:	495f6c69 	ldmdbmi	pc, {r0, r3, r5, r6, sl, fp, sp, lr}^	; <UNPREDICTABLE>
 21c:	68636143 	stmdavs	r3!, {r0, r1, r6, r8, sp, lr}^
 220:	766e4965 	strbtvc	r4, [lr], -r5, ror #18
 224:	64696c61 	strbtvs	r6, [r9], #-3169	; 0xfffff39f
 228:	52657461 	rsbpl	r7, r5, #1627389952	; 0x61000000
 22c:	65676e61 	strbvs	r6, [r7, #-3681]!	; 0xfffff19f
 230:	6d754e00 	ldclvs	14, cr4, [r5, #-0]
 234:	00746553 	rsbseq	r6, r4, r3, asr r5
 238:	65523743 	ldrbvs	r3, [r2, #-1859]	; 0xfffff8bd
 23c:	754e0067 	strbvc	r0, [lr, #-103]	; 0xffffff99
 240:	7961576d 	stmdbvc	r1!, {r0, r2, r3, r5, r6, r8, r9, sl, ip, lr}^
 244:	69580073 	ldmdbvs	r8, {r0, r1, r4, r5, r6}^
 248:	324c5f6c 	subcc	r5, ip, #108, 30	; 0x1b0
 24c:	68636143 	stmdavs	r3!, {r0, r1, r6, r8, sp, lr}^
 250:	616e4565 	cmnvs	lr, r5, ror #10
 254:	00656c62 	rsbeq	r6, r5, r2, ror #24
 258:	5f6c6958 	svcpl	0x006c6958
 25c:	63614344 	cmnvs	r1, #68, 6	; 0x10000001
 260:	6c466568 	cfstr64vs	mvdx6, [r6], {104}	; 0x68
 264:	00687375 	rsbeq	r7, r8, r5, ror r3
 268:	49746553 	ldmdbmi	r4!, {r0, r1, r4, r6, r8, sl, sp, lr}^
 26c:	7865646e 	stmdavc	r5!, {r1, r2, r3, r5, r6, sl, sp, lr}^
 270:	61767200 	cmnvs	r6, r0, lsl #4
 274:	6958006c 	ldmdbvs	r8, {r2, r3, r5, r6}^
 278:	43495f6c 	movtmi	r5, #40812	; 0x9f6c
 27c:	65686361 	strbvs	r6, [r8, #-865]!	; 0xfffffc9f
 280:	61766e49 	cmnvs	r6, r9, asr #28
 284:	6164696c 	cmnvs	r4, ip, ror #18
 288:	694c6574 	stmdbvs	ip, {r2, r4, r5, r6, r8, sl, sp, lr}^
 28c:	5800656e 	stmdapl	r0, {r1, r2, r3, r5, r6, r8, sl, sp, lr}
 290:	4c5f6c69 	mrrcmi	12, 6, r6, pc, cr9	; <UNPREDICTABLE>
 294:	63614332 	cmnvs	r1, #-939524096	; 0xc8000000
 298:	69446568 	stmdbvs	r4, {r3, r5, r6, r8, sl, sp, lr}^
 29c:	6c626173 	stfvse	f6, [r2], #-460	; 0xfffffe34
 2a0:	69580065 	ldmdbvs	r8, {r0, r2, r5, r6}^
 2a4:	314c5f6c 	cmpcc	ip, ip, ror #30
 2a8:	63614344 	cmnvs	r1, #68, 6	; 0x10000001
 2ac:	69446568 	stmdbvs	r4, {r3, r5, r6, r8, sl, sp, lr}^
 2b0:	6c626173 	stfvse	f6, [r2], #-460	; 0xfffffe34
 2b4:	69580065 	ldmdbvs	r8, {r0, r2, r5, r6}^
 2b8:	324c5f6c 	subcc	r5, ip, #108, 30	; 0x1b0
 2bc:	68636143 	stmdavs	r3!, {r0, r1, r6, r8, sp, lr}^
 2c0:	756c4665 	strbvc	r4, [ip, #-1637]!	; 0xfffff99b
 2c4:	4c006873 	stcmi	8, cr6, [r0], {115}	; 0x73
 2c8:	4f434332 	svcmi	0x00434332
 2cc:	65736666 	ldrbvs	r6, [r3, #-1638]!	; 0xfffff99a
 2d0:	69580074 	ldmdbvs	r8, {r2, r4, r5, r6}^
 2d4:	314c5f6c 	cmpcc	ip, ip, ror #30
 2d8:	63614349 	cmnvs	r1, #603979777	; 0x24000001
 2dc:	69446568 	stmdbvs	r4, {r3, r5, r6, r8, sl, sp, lr}^
 2e0:	6c626173 	stfvse	f6, [r2], #-460	; 0xfffffe34
 2e4:	6f6c0065 	svcvs	0x006c0065
 2e8:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
 2ec:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 2f0:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
 2f4:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
 2f8:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 2fc:	6c695800 	stclvs	8, cr5, [r9], #-0
 300:	43324c5f 	teqmi	r2, #24320	; 0x5f00
 304:	65686361 	strbvs	r6, [r8, #-865]!	; 0xfffffc9f
 308:	61766e49 	cmnvs	r6, r9, asr #28
 30c:	6164696c 	cmnvs	r4, ip, ror #18
 310:	61526574 	cmpvs	r2, r4, ror r5
 314:	0065676e 	rsbeq	r6, r5, lr, ror #14
 318:	5f6c6958 	svcpl	0x006c6958
 31c:	4344314c 	movtmi	r3, #16716	; 0x414c
 320:	65686361 	strbvs	r6, [r8, #-865]!	; 0xfffffc9f
 324:	61766e49 	cmnvs	r6, r9, asr #28
 328:	6164696c 	cmnvs	r4, ip, ror #18
 32c:	58006574 	stmdapl	r0, {r2, r4, r5, r6, r8, sl, sp, lr}
 330:	4c5f6c69 	mrrcmi	12, 6, r6, pc, cr9	; <UNPREDICTABLE>
 334:	63614332 	cmnvs	r1, #-939524096	; 0xc8000000
 338:	6c466568 	cfstr64vs	mvdx6, [r6], {104}	; 0x68
 33c:	4c687375 	stclmi	3, cr7, [r8], #-468	; 0xfffffe2c
 340:	00656e69 	rsbeq	r6, r5, r9, ror #28
 344:	5f6c6958 	svcpl	0x006c6958
 348:	63614344 	cmnvs	r1, #68, 6	; 0x10000001
 34c:	74536568 	ldrbvc	r6, [r3], #-1384	; 0xfffffa98
 350:	4c65726f 	sfmmi	f7, 2, [r5], #-444	; 0xfffffe44
 354:	00656e69 	rsbeq	r6, r5, r9, ror #28
 358:	5f6c6958 	svcpl	0x006c6958
 35c:	4344314c 	movtmi	r3, #16716	; 0x414c
 360:	65686361 	strbvs	r6, [r8, #-865]!	; 0xfffffc9f
 364:	61766e49 	cmnvs	r6, r9, asr #28
 368:	6164696c 	cmnvs	r4, ip, ror #18
 36c:	61526574 	cmpvs	r2, r4, ror r5
 370:	0065676e 	rsbeq	r6, r5, lr, ror #14
 374:	5f6c6958 	svcpl	0x006c6958
 378:	6143324c 	cmpvs	r3, ip, asr #4
 37c:	49656863 	stmdbmi	r5!, {r0, r1, r5, r6, fp, sp, lr}^
 380:	6c61766e 	stclvs	6, cr7, [r1], #-440	; 0xfffffe48
 384:	74616469 	strbtvc	r6, [r1], #-1129	; 0xfffffb97
 388:	6e694c65 	cdpvs	12, 6, cr4, cr9, cr5, {3}
 38c:	6f6c0065 	svcvs	0x006c0065
 390:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
 394:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 398:	00746e69 	rsbseq	r6, r4, r9, ror #28
 39c:	5f6c6958 	svcpl	0x006c6958
 3a0:	63614344 	cmnvs	r1, #68, 6	; 0x10000001
 3a4:	6e496568 	cdpvs	5, 4, cr6, cr9, cr8, {3}
 3a8:	696c6176 	stmdbvs	ip!, {r1, r2, r4, r5, r6, r8, sp, lr}^
 3ac:	65746164 	ldrbvs	r6, [r4, #-356]!	; 0xfffffe9c
 3b0:	63614300 	cmnvs	r1, #0, 6
 3b4:	69536568 	ldmdbvs	r3, {r3, r5, r6, r8, sl, sp, lr}^
 3b8:	7300657a 	movwvc	r6, #1402	; 0x57a
 3bc:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 3c0:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 3c4:	6c695800 	stclvs	8, cr5, [r9], #-0
 3c8:	6143445f 	cmpvs	r3, pc, asr r4
 3cc:	46656863 	strbtmi	r6, [r5], -r3, ror #16
 3d0:	6873756c 	ldmdavs	r3!, {r2, r3, r5, r6, r8, sl, ip, sp, lr}^
 3d4:	656e694c 	strbvs	r6, [lr, #-2380]!	; 0xfffff6b4
 3d8:	6c695800 	stclvs	8, cr5, [r9], #-0
 3dc:	44314c5f 	ldrtmi	r4, [r1], #-3167	; 0xfffff3a1
 3e0:	68636143 	stmdavs	r3!, {r0, r1, r6, r8, sp, lr}^
 3e4:	766e4965 	strbtvc	r4, [lr], -r5, ror #18
 3e8:	64696c61 	strbtvs	r6, [r9], #-3169	; 0xfffff39f
 3ec:	4c657461 	cfstrdmi	mvd7, [r5], #-388	; 0xfffffe7c
 3f0:	00656e69 	rsbeq	r6, r5, r9, ror #28
 3f4:	656e694c 	strbvs	r6, [lr, #-2380]!	; 0xfffff6b4
 3f8:	657a6953 	ldrbvs	r6, [sl, #-2387]!	; 0xfffff6ad
 3fc:	6c695800 	stclvs	8, cr5, [r9], #-0
 400:	49314c5f 	ldmdbmi	r1!, {r0, r1, r2, r3, r4, r6, sl, fp, lr}
 404:	68636143 	stmdavs	r3!, {r0, r1, r6, r8, sp, lr}^
 408:	766e4965 	strbtvc	r4, [lr], -r5, ror #18
 40c:	64696c61 	strbtvs	r6, [r9], #-3169	; 0xfffff39f
 410:	00657461 	rsbeq	r7, r5, r1, ror #8
 414:	5f6c6958 	svcpl	0x006c6958
 418:	63614349 	cmnvs	r1, #603979777	; 0x24000001
 41c:	69446568 	stmdbvs	r4, {r3, r5, r6, r8, sl, sp, lr}^
 420:	6c626173 	stfvse	f6, [r2], #-460	; 0xfffffe34
 424:	61570065 	cmpvs	r7, r5, rrx
 428:	646e4979 	strbtvs	r4, [lr], #-2425	; 0xfffff687
 42c:	4c007865 	stcmi	8, cr7, [r0], {101}	; 0x65
 430:	52434332 	subpl	r4, r3, #-939524096	; 0xc8000000
 434:	58006765 	stmdapl	r0, {r0, r2, r5, r6, r8, r9, sl, sp, lr}
 438:	495f6c69 	ldmdbmi	pc, {r0, r3, r5, r6, sl, fp, sp, lr}^	; <UNPREDICTABLE>
 43c:	68636143 	stmdavs	r3!, {r0, r1, r6, r8, sp, lr}^
 440:	766e4965 	strbtvc	r4, [lr], -r5, ror #18
 444:	64696c61 	strbtvs	r6, [r9], #-3169	; 0xfffff39f
 448:	00657461 	rsbeq	r7, r5, r1, ror #8
 44c:	5f6c6958 	svcpl	0x006c6958
 450:	4344314c 	movtmi	r3, #16716	; 0x414c
 454:	65686361 	strbvs	r6, [r8, #-865]!	; 0xfffffc9f
 458:	62616e45 	rsbvs	r6, r1, #1104	; 0x450
 45c:	5800656c 	stmdapl	r0, {r2, r3, r5, r6, r8, sl, sp, lr}
 460:	445f6c69 	ldrbmi	r6, [pc], #-3177	; 468 <_ABORT_STACK_SIZE+0x68>
 464:	68636143 	stmdavs	r3!, {r0, r1, r6, r8, sp, lr}^
 468:	766e4965 	strbtvc	r4, [lr], -r5, ror #18
 46c:	64696c61 	strbtvs	r6, [r9], #-3169	; 0xfffff39f
 470:	4c657461 	cfstrdmi	mvd7, [r5], #-388	; 0xfffffe7c
 474:	00656e69 	rsbeq	r6, r5, r9, ror #28
 478:	5f6c6958 	svcpl	0x006c6958
 47c:	4349314c 	movtmi	r3, #37196	; 0x914c
 480:	65686361 	strbvs	r6, [r8, #-865]!	; 0xfffffc9f
 484:	61766e49 	cmnvs	r6, r9, asr #28
 488:	6164696c 	cmnvs	r4, ip, ror #18
 48c:	61526574 	cmpvs	r2, r4, ror r5
 490:	0065676e 	rsbeq	r6, r5, lr, ror #14
 494:	5f6c6958 	svcpl	0x006c6958
 498:	3874754f 	ldmdacc	r4!, {r0, r1, r2, r3, r6, r8, sl, ip, sp, lr}^
 49c:	74614400 	strbtvc	r4, [r1], #-1024	; 0xfffffc00
 4a0:	69580061 	ldmdbvs	r8, {r0, r5, r6}^
 4a4:	6e495f6c 	cdpvs	15, 4, cr5, cr9, cr12, {3}
 4a8:	69580038 	ldmdbvs	r8, {r3, r4, r5}^
 4ac:	6e495f6c 	cdpvs	15, 4, cr5, cr9, cr12, {3}
 4b0:	48003631 	stmdami	r0, {r0, r4, r5, r9, sl, ip, sp}
 4b4:	726f5769 	rsbvc	r5, pc, #27525120	; 0x1a40000
 4b8:	69580064 	ldmdbvs	r8, {r2, r5, r6}^
 4bc:	754f5f6c 	strbvc	r5, [pc, #-3948]	; fffff558 <CPU_ARM_BIT_CNTES_C+0x7ffff558>
 4c0:	42363174 	eorsmi	r3, r6, #116, 2
 4c4:	69780045 	ldmdbvs	r8!, {r0, r2, r6}^
 4c8:	6f695f6c 	svcvs	0x00695f6c
 4cc:	5800632e 	stmdapl	r0, {r1, r2, r3, r5, r8, r9, sp, lr}
 4d0:	495f6c69 	ldmdbmi	pc, {r0, r3, r5, r6, sl, fp, sp, lr}^	; <UNPREDICTABLE>
 4d4:	4236316e 	eorsmi	r3, r6, #-2147483621	; 0x8000001b
 4d8:	65740045 	ldrbvs	r0, [r4, #-69]!	; 0xffffffbb
 4dc:	7200706d 	andvc	r7, r0, #109	; 0x6d
 4e0:	6c757365 	ldclvs	3, cr7, [r5], #-404	; 0xfffffe6c
 4e4:	69580074 	ldmdbvs	r8, {r2, r4, r5, r6}^
 4e8:	754f5f6c 	strbvc	r5, [pc, #-3948]	; fffff584 <CPU_ARM_BIT_CNTES_C+0x7ffff584>
 4ec:	42323374 	eorsmi	r3, r2, #116, 6	; 0xd0000001
 4f0:	6f4c0045 	svcvs	0x004c0045
 4f4:	64726f57 	ldrbtvs	r6, [r2], #-3927	; 0xfffff0a9
 4f8:	6c695800 	stclvs	8, cr5, [r9], #-0
 4fc:	646e455f 	strbtvs	r4, [lr], #-1375	; 0xfffffaa1
 500:	536e6169 	cmnpl	lr, #1073741850	; 0x4000001a
 504:	33706177 	cmncc	r0, #-1073741795	; 0xc000001d
 508:	69580032 	ldmdbvs	r8, {r1, r4, r5}^
 50c:	6e495f6c 	cdpvs	15, 4, cr5, cr9, cr12, {3}
 510:	45423233 	strbmi	r3, [r2, #-563]	; 0xfffffdcd
 514:	74754f00 	ldrbtvc	r4, [r5], #-3840	; 0xfffff100
 518:	72646441 	rsbvc	r6, r4, #1090519040	; 0x41000000
 51c:	00737365 	rsbseq	r7, r3, r5, ror #6
 520:	5f6c6958 	svcpl	0x006c6958
 524:	69646e45 	stmdbvs	r4!, {r0, r2, r6, r9, sl, fp, sp, lr}^
 528:	77536e61 	ldrbvc	r6, [r3, -r1, ror #28]
 52c:	36317061 	ldrtcc	r7, [r1], -r1, rrx
 530:	6c695800 	stclvs	8, cr5, [r9], #-0
 534:	74754f5f 	ldrbtvc	r4, [r5], #-3935	; 0xfffff0a1
 538:	64003631 	strvs	r3, [r0], #-1585	; 0xfffff9cf
 53c:	74696769 	strbtvc	r6, [r9], #-1897	; 0xfffff897
 540:	69780073 	ldmdbvs	r8!, {r0, r1, r4, r5, r6}^
 544:	72705f6c 	rsbsvc	r5, r0, #108, 30	; 0x1b0
 548:	66746e69 	ldrbtvs	r6, [r4], -r9, ror #28
 54c:	74756f00 	ldrbtvc	r6, [r5], #-3840	; 0xfffff100
 550:	006d756e 	rsbeq	r7, sp, lr, ror #10
 554:	6274756f 	rsbsvs	r7, r4, #465567744	; 0x1bc00000
 558:	6c006675 	stcvs	6, cr6, [r0], {117}	; 0x75
 55c:	5f676e6f 	svcpl	0x00676e6f
 560:	67616c66 	strbvs	r6, [r1, -r6, ror #24]!
 564:	74756f00 	ldrbtvc	r6, [r5], #-3840	; 0xfffff100
 568:	756e0073 	strbvc	r0, [lr, #-115]!	; 0xffffff8d
 56c:	7300316d 	movwvc	r3, #365	; 0x16d
 570:	656c7274 	strbvs	r7, [ip, #-628]!	; 0xfffffd8c
 574:	756e006e 	strbvc	r0, [lr, #-110]!	; 0xffffff92
 578:	5f00326d 	svcpl	0x0000326d
 57c:	7974635f 	ldmdbvc	r4!, {r0, r1, r2, r3, r4, r6, r8, r9, sp, lr}^
 580:	705f6570 	subsvc	r6, pc, r0, ror r5	; <UNPREDICTABLE>
 584:	5f5f7274 	svcpl	0x005f7274
 588:	7a697300 	bvc	1a5d190 <__stack+0x189f240>
 58c:	00745f65 	rsbseq	r5, r4, r5, ror #30
 590:	6c727463 	cfldrdvs	mvd7, [r2], #-396	; 0xfffffe74
 594:	656c0031 	strbvs	r0, [ip, #-49]!	; 0xffffffcf
 598:	665f7466 	ldrbvs	r7, [pc], -r6, ror #8
 59c:	0067616c 	rsbeq	r6, r7, ip, ror #2
 5a0:	705f6f64 	subsvc	r6, pc, r4, ror #30
 5a4:	69646461 	stmdbvs	r4!, {r0, r5, r6, sl, sp, lr}^
 5a8:	6c00676e 	stcvs	7, cr6, [r0], {110}	; 0x6e
 5ac:	616c665f 	cmnvs	ip, pc, asr r6
 5b0:	68630067 	stmdavs	r3!, {r0, r1, r2, r5, r6}^
 5b4:	74707261 	ldrbtvc	r7, [r0], #-609	; 0xfffffd9f
 5b8:	61620072 	smcvs	8194	; 0x2002
 5bc:	70006573 	andvc	r6, r0, r3, ror r5
 5c0:	6d617261 	sfmvs	f7, 2, [r1, #-388]!	; 0xfffffe7c
 5c4:	00745f73 	rsbseq	r5, r4, r3, ror pc
 5c8:	70615f5f 	rsbvc	r5, r1, pc, asr pc
 5cc:	74656700 	strbtvc	r6, [r5], #-1792	; 0xfffff900
 5d0:	006d756e 	rsbeq	r7, sp, lr, ror #10
 5d4:	6c727463 	cfldrdvs	mvd7, [r2], #-396	; 0xfffffe74
 5d8:	79727400 	ldmdbvc	r2!, {sl, ip, sp, lr}^
 5dc:	78656e5f 	stmdavc	r5!, {r0, r1, r2, r3, r4, r6, r9, sl, fp, sp, lr}^
 5e0:	69730074 	ldmdbvs	r3!, {r2, r4, r5, r6}^
 5e4:	7974657a 	ldmdbvc	r4!, {r1, r3, r4, r5, r6, r8, sl, sp, lr}^
 5e8:	5f006570 	svcpl	0x00006570
 5ec:	5f61765f 	svcpl	0x0061765f
 5f0:	7473696c 	ldrbtvc	r6, [r3], #-2412	; 0xfffff694
 5f4:	67726100 	ldrbvs	r6, [r2, -r0, lsl #2]!
 5f8:	61700070 	cmnvs	r0, r0, ror r0
 5fc:	736d6172 	cmnvc	sp, #-2147483620	; 0x8000001c
 600:	6400735f 	strvs	r7, [r0], #-863	; 0xfffffca1
 604:	665f746f 	ldrbvs	r7, [pc], -pc, ror #8
 608:	0067616c 	rsbeq	r6, r7, ip, ror #2
 60c:	5f6c6978 	svcpl	0x006c6978
 610:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
 614:	632e6674 	teqvs	lr, #116, 12	; 0x7400000
 618:	6e696c00 	cdpvs	12, 6, cr6, cr9, cr0, {0}
 61c:	70007065 	andvc	r7, r0, r5, rrx
 620:	635f6461 	cmpvs	pc, #1627389952	; 0x61000000
 624:	61726168 	cmnvs	r2, r8, ror #2
 628:	72657463 	rsbvc	r7, r5, #1660944384	; 0x63000000
 62c:	675f5f00 	ldrbvs	r5, [pc, -r0, lsl #30]
 630:	5f63756e 	svcpl	0x0063756e
 634:	6c5f6176 	ldfvse	f6, [pc], {118}	; 0x76
 638:	00747369 	rsbseq	r7, r4, r9, ror #6
 63c:	6167656e 	cmnvs	r7, lr, ror #10
 640:	65766974 	ldrbvs	r6, [r6, #-2420]!	; 0xfffff68c
 644:	6c695800 	stclvs	8, cr5, [r9], #-0
 648:	7373415f 	cmnvc	r3, #-1073741801	; 0xc0000017
 64c:	00747265 	rsbseq	r7, r4, r5, ror #4
 650:	72615558 	rsbvc	r5, r1, #88, 10	; 0x16000000
 654:	5f735074 	svcpl	0x00735074
 658:	646e6553 	strbtvs	r6, [lr], #-1363	; 0xfffffaad
 65c:	66667542 	strbtvs	r7, [r6], -r2, asr #10
 660:	42007265 	andmi	r7, r0, #1342177286	; 0x50000006
 664:	65666675 	strbvs	r6, [r6, #-1653]!	; 0xfffff98b
 668:	72745072 	rsbsvc	r5, r4, #114	; 0x72
 66c:	73654200 	cmnvc	r5, #0, 4
 670:	52425f74 	subpl	r5, r2, #116, 30	; 0x1d0
 674:	49005247 	stmdbmi	r0, {r0, r1, r2, r6, r9, ip, lr}
 678:	7475706e 	ldrbtvc	r7, [r5], #-110	; 0xffffff92
 67c:	006b6c43 	rsbeq	r6, fp, r3, asr #24
 680:	72615558 	rsbvc	r5, r1, #88, 10	; 0x16000000
 684:	00735074 	rsbseq	r5, r3, r4, ror r0
 688:	65747942 	ldrbvs	r7, [r4, #-2370]!	; 0xfffff6be
 68c:	6e756f43 	cdpvs	15, 7, cr6, cr5, cr3, {2}
 690:	55580074 	ldrbpl	r0, [r8, #-116]	; 0xffffff8c
 694:	50747261 	rsbspl	r7, r4, r1, ror #4
 698:	74535f73 	ldrbvc	r5, [r3], #-3955	; 0xfffff08d
 69c:	61486275 	hvcvs	34341	; 0x8625
 6a0:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
 6a4:	55580072 	ldrbpl	r0, [r8, #-114]	; 0xffffff8e
 6a8:	50747261 	rsbspl	r7, r4, r1, ror #4
 6ac:	6f435f73 	svcvs	0x00435f73
 6b0:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
 6b4:	726d4900 	rsbvc	r4, sp, #0, 18
 6b8:	69676552 	stmdbvs	r7!, {r1, r4, r6, r8, sl, sp, lr}^
 6bc:	72657473 	rsbvc	r7, r5, #1929379840	; 0x73000000
 6c0:	47524200 	ldrbmi	r4, [r2, -r0, lsl #4]
 6c4:	61565f52 	cmpvs	r6, r2, asr pc
 6c8:	0065756c 	rsbeq	r7, r5, ip, ror #10
 6cc:	72615558 	rsbvc	r5, r1, #88, 10	; 0x16000000
 6d0:	5f735074 	svcpl	0x00735074
 6d4:	49676643 	stmdbmi	r7!, {r0, r1, r6, r9, sl, sp, lr}^
 6d8:	6974696e 	ldmdbvs	r4!, {r1, r2, r3, r5, r6, r8, fp, sp, lr}^
 6dc:	7a696c61 	bvc	1a5b868 <__stack+0x189d918>
 6e0:	55580065 	ldrbpl	r0, [r8, #-101]	; 0xffffff9b
 6e4:	50747261 	rsbspl	r7, r4, r1, ror #4
 6e8:	61485f73 	hvcvs	34291	; 0x85f3
 6ec:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
 6f0:	55580072 	ldrbpl	r0, [r8, #-114]	; 0xffffff8e
 6f4:	50747261 	rsbspl	r7, r4, r1, ror #4
 6f8:	65535f73 	ldrbvs	r5, [r3, #-3955]	; 0xfffff08d
 6fc:	5000646e 	andpl	r6, r0, lr, ror #8
 700:	65637265 	strbvs	r7, [r3, #-613]!	; 0xfffffd9b
 704:	7245746e 	subvc	r7, r5, #1845493760	; 0x6e000000
 708:	00726f72 	rsbseq	r6, r2, r2, ror pc
 70c:	426d754e 	rsbmi	r7, sp, #327155712	; 0x13800000
 710:	73657479 	cmnvc	r5, #2030043136	; 0x79000000
 714:	74794200 	ldrbtvc	r4, [r9], #-512	; 0xfffffe00
 718:	65537365 	ldrbvs	r7, [r3, #-869]	; 0xfffffc9b
 71c:	4e00746e 	cdpmi	4, 0, cr7, cr0, cr14, {3}
 720:	42747865 	rsbsmi	r7, r4, #6619136	; 0x650000
 724:	50657479 	rsbpl	r7, r5, r9, ror r4
 728:	4d007274 	sfmmi	f7, 4, [r0, #-464]	; 0xfffffe30
 72c:	6d65646f 	cfstrdvs	mvd6, [r5, #-444]!	; 0xfffffe44
 730:	736e6950 	cmnvc	lr, #80, 18	; 0x140000
 734:	6e6e6f43 	cdpvs	15, 6, cr6, cr14, cr3, {2}
 738:	65746365 	ldrbvs	r6, [r4, #-869]!	; 0xfffffc9b
 73c:	65520064 	ldrbvs	r0, [r2, #-100]	; 0xffffff9c
 740:	6e69616d 	powvsez	f6, f1, #5.0
 744:	42676e69 	rsbmi	r6, r7, #1680	; 0x690
 748:	73657479 	cmnvc	r5, #2030043136	; 0x79000000
 74c:	646f4d00 	strbtvs	r4, [pc], #-3328	; 754 <_ABORT_STACK_SIZE+0x354>
 750:	67655265 	strbvs	r5, [r5, -r5, ror #4]!
 754:	6c614300 	stclvs	3, cr4, [r1], #-0
 758:	75614263 	strbvc	r4, [r1, #-611]!	; 0xfffffd9d
 75c:	74615264 	strbtvc	r5, [r1], #-612	; 0xfffffd9c
 760:	61420065 	cmpvs	r2, r5, rrx
 764:	64416573 	strbvs	r6, [r1], #-1395	; 0xfffffa8d
 768:	73657264 	cmnvc	r5, #100, 4	; 0x40000006
 76c:	3a430073 	bcc	10c0940 <__stack+0xf029f0>
 770:	6c69585c 	stclvs	8, cr5, [r9], #-368	; 0xfffffe90
 774:	5c786e69 	ldclpl	14, cr6, [r8], #-420	; 0xfffffe5c
 778:	54414958 	strbpl	r4, [r1], #-2392	; 0xfffff6a8
 77c:	585c4e41 	ldmdapl	ip, {r0, r6, r9, sl, fp, lr}^
 780:	6e696c69 	cdpvs	12, 6, cr6, cr9, cr9, {3}
 784:	72705c78 	rsbsvc	r5, r0, #120, 24	; 0x7800
 788:	745c6a6f 	ldrbvc	r6, [ip], #-2671	; 0xfffff591
 78c:	726f7475 	rsbvc	r7, pc, #1962934272	; 0x75000000
 790:	6d5c6c61 	ldclvs	12, cr6, [ip, #-388]	; 0xfffffe7c
 794:	6f727079 	svcvs	0x00727079
 798:	63755c6a 	cmnvs	r5, #27136	; 0x6a00
 79c:	6969736f 	stmdbvs	r9!, {r0, r1, r2, r3, r5, r6, r8, r9, ip, sp, lr}^
 7a0:	766f6e5f 			; <UNDEFINED> instruction: 0x766f6e5f
 7a4:	63755c61 	cmnvs	r5, #24832	; 0x6100
 7a8:	692d736f 	pushvs	{r0, r1, r2, r3, r5, r6, r8, r9, ip, sp, lr}
 7ac:	65645f69 	strbvs	r5, [r4, #-3945]!	; 0xfffff097
 7b0:	305f6f6d 	subscc	r6, pc, sp, ror #30
 7b4:	7073625f 	rsbsvc	r6, r3, pc, asr r2
 7b8:	3773705c 			; <UNDEFINED> instruction: 0x3773705c
 7bc:	726f635f 	rsbvc	r6, pc, #2080374785	; 0x7c000001
 7c0:	61786574 	cmnvs	r8, r4, ror r5
 7c4:	5c305f39 	ldcpl	15, cr5, [r0], #-228	; 0xffffff1c
 7c8:	7362696c 	cmnvc	r2, #108, 18	; 0x1b0000
 7cc:	755c6372 	ldrbvc	r6, [ip, #-882]	; 0xfffffc8e
 7d0:	70747261 	rsbsvc	r7, r4, r1, ror #4
 7d4:	31765f73 	cmncc	r6, r3, ror pc
 7d8:	5f34305f 	svcpl	0x0034305f
 7dc:	72735c61 	rsbsvc	r5, r3, #24832	; 0x6100
 7e0:	61430063 	cmpvs	r3, r3, rrx
 7e4:	61426c6c 	cmpvs	r2, ip, ror #24
 7e8:	65526b63 	ldrbvs	r6, [r2, #-2915]	; 0xfffff49d
 7ec:	55580066 	ldrbpl	r0, [r8, #-102]	; 0xffffff9a
 7f0:	50747261 	rsbspl	r7, r4, r1, ror #4
 7f4:	65535f73 	ldrbvs	r5, [r3, #-3955]	; 0xfffff08d
 7f8:	75614274 	strbvc	r4, [r1, #-628]!	; 0xfffffd8c
 7fc:	74615264 	strbtvc	r5, [r1], #-612	; 0xfffffd9c
 800:	73430065 	movtvc	r0, #12389	; 0x3065
 804:	67655272 			; <UNDEFINED> instruction: 0x67655272
 808:	65747369 	ldrbvs	r7, [r4, #-873]!	; 0xfffffc97
 80c:	76450072 			; <UNDEFINED> instruction: 0x76450072
 810:	00746e65 	rsbseq	r6, r4, r5, ror #28
 814:	74736542 	ldrbtvc	r6, [r3], #-1346	; 0xfffffabe
 818:	7272455f 	rsbsvc	r4, r2, #398458880	; 0x17c00000
 81c:	5800726f 	stmdapl	r0, {r0, r1, r2, r3, r5, r6, r9, ip, sp, lr}
 820:	415f6c69 	cmpmi	pc, r9, ror #24
 824:	72657373 	rsbvc	r7, r5, #-872415231	; 0xcc000001
 828:	61745374 	cmnvs	r4, r4, ror r3
 82c:	00737574 	rsbseq	r7, r3, r4, ror r5
 830:	65666645 	strbvs	r6, [r6, #-1605]!	; 0xfffff9bb
 834:	76697463 	strbtvc	r7, [r9], -r3, ror #8
 838:	64644165 	strbtvs	r4, [r4], #-357	; 0xfffffe9b
 83c:	65530072 	ldrbvs	r0, [r3, #-114]	; 0xffffff8e
 840:	6f43746e 	svcvs	0x0043746e
 844:	00746e75 	rsbseq	r6, r4, r5, ror lr
 848:	72657449 	rsbvc	r7, r5, #1224736768	; 0x49000000
 84c:	44554142 	ldrbmi	r4, [r5], #-322	; 0xfffffebe
 850:	00564944 	subseq	r4, r6, r4, asr #18
 854:	72615558 	rsbvc	r5, r1, #88, 10	; 0x16000000
 858:	42735074 	rsbsmi	r5, r3, #116	; 0x74
 85c:	65666675 	strbvs	r6, [r6, #-1653]!	; 0xfffff98b
 860:	6e490072 	mcrvs	0, 2, r0, cr9, cr2, {3}
 864:	43747570 	cmnmi	r4, #112, 10	; 0x1c000000
 868:	6b636f6c 	blvs	18dc620 <__stack+0x171e6d0>
 86c:	52007a48 	andpl	r7, r0, #72, 20	; 0x48000
 870:	69656365 	stmdbvs	r5!, {r0, r2, r5, r6, r8, r9, sp, lr}^
 874:	43646576 	cmnmi	r4, #494927872	; 0x1d800000
 878:	746e756f 	strbtvc	r7, [lr], #-1391	; 0xfffffa91
 87c:	73654200 	cmnvc	r5, #0, 4
 880:	41425f74 	hvcmi	9716	; 0x25f4
 884:	49444455 	stmdbmi	r4, {r0, r2, r4, r6, sl, lr}^
 888:	73490056 	movtvc	r0, #36950	; 0x9056
 88c:	64616552 	strbtvs	r6, [r1], #-1362	; 0xfffffaae
 890:	75780079 	ldrbvc	r0, [r8, #-121]!	; 0xffffff87
 894:	70747261 	rsbsvc	r7, r4, r1, ror #4
 898:	00632e73 	rsbeq	r2, r3, r3, ror lr
 89c:	75716552 	ldrbvc	r6, [r1, #-1362]!	; 0xfffffaae
 8a0:	65747365 	ldrbvs	r7, [r4, #-869]!	; 0xfffffc9b
 8a4:	74794264 	ldrbtvc	r4, [r9], #-612	; 0xfffffd9c
 8a8:	44007365 	strmi	r7, [r0], #-869	; 0xfffffc9b
 8ac:	63697665 	cmnvs	r9, #105906176	; 0x6500000
 8b0:	00644965 	rsbeq	r4, r4, r5, ror #18
 8b4:	65646f4d 	strbvs	r6, [r4, #-3917]!	; 0xfffff0b3
 8b8:	69676552 	stmdbvs	r7!, {r1, r4, r6, r8, sl, sp, lr}^
 8bc:	72657473 	rsbvc	r7, r5, #1929379840	; 0x73000000
 8c0:	736e4900 	cmnvc	lr, #0, 18
 8c4:	636e6174 	cmnvs	lr, #116, 2
 8c8:	72745065 	rsbsvc	r5, r4, #101	; 0x65
 8cc:	61555800 	cmpvs	r5, r0, lsl #16
 8d0:	73507472 	cmpvc	r0, #1912602624	; 0x72000000
 8d4:	6365525f 	cmnvs	r5, #-268435451	; 0xf0000005
 8d8:	65766965 	ldrbvs	r6, [r6, #-2405]!	; 0xfffff69b
 8dc:	66667542 	strbtvs	r7, [r6], -r2, asr #10
 8e0:	58007265 	stmdapl	r0, {r0, r2, r5, r6, r9, ip, sp, lr}
 8e4:	74726155 	ldrbtvc	r6, [r2], #-341	; 0xfffffeab
 8e8:	525f7350 	subspl	r7, pc, #80, 6	; 0x40000001
 8ec:	00766365 	rsbseq	r6, r6, r5, ror #6
 8f0:	64756142 	ldrbtvs	r6, [r5], #-322	; 0xfffffebe
 8f4:	6f727245 	svcvs	0x00727245
 8f8:	75780072 	ldrbvc	r0, [r8, #-114]!	; 0xffffff8e
 8fc:	70747261 	rsbsvc	r7, r4, r1, ror #4
 900:	69735f73 	ldmdbvs	r3!, {r0, r1, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
 904:	2e74696e 	cdpcs	9, 7, cr6, cr4, cr14, {3}
 908:	55580063 	ldrbpl	r0, [r8, #-99]	; 0xffffff9d
 90c:	50747261 	rsbspl	r7, r4, r1, ror #4
 910:	6f4c5f73 	svcvs	0x004c5f73
 914:	70756b6f 	rsbsvc	r6, r5, pc, ror #22
 918:	666e6f43 	strbtvs	r6, [lr], -r3, asr #30
 91c:	58006769 	stmdapl	r0, {r0, r3, r5, r6, r8, r9, sl, sp, lr}
 920:	74726155 	ldrbtvc	r6, [r2], #-341	; 0xfffffeab
 924:	435f7350 	cmpmi	pc, #80, 6	; 0x40000001
 928:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
 92c:	62615467 	rsbvs	r5, r1, #1728053248	; 0x67000000
 930:	4300656c 	movwmi	r6, #1388	; 0x56c
 934:	74506766 	ldrbvc	r6, [r0], #-1894	; 0xfffff89a
 938:	756f0072 	strbvc	r0, [pc, #-114]!	; 8ce <_SUPERVISOR_STACK_SIZE+0xce>
 93c:	74796274 	ldrbtvc	r6, [r9], #-628	; 0xfffffd8c
 940:	00632e65 	rsbeq	r2, r3, r5, ror #28
 944:	72615558 	rsbvc	r5, r1, #88, 10	; 0x16000000
 948:	5f735074 	svcpl	0x00735074
 94c:	646e6553 	strbtvs	r6, [lr], #-1363	; 0xfffffaad
 950:	65747942 	ldrbvs	r7, [r4, #-2370]!	; 0xfffff6be
 954:	6c695800 	stclvs	8, cr5, [r9], #-0
 958:	7373415f 	cmnvc	r3, #-1073741801	; 0xc0000017
 95c:	43747265 	cmnmi	r4, #1342177286	; 0x50000006
 960:	626c6c61 	rsbvs	r6, ip, #24832	; 0x6100
 964:	006b6361 	rsbeq	r6, fp, r1, ror #6
 968:	5f6c6958 	svcpl	0x006c6958
 96c:	65737341 	ldrbvs	r7, [r3, #-833]!	; 0xfffffcbf
 970:	65537472 	ldrbvs	r7, [r3, #-1138]	; 0xfffffb8e
 974:	6c614374 	stclvs	3, cr4, [r1], #-464	; 0xfffffe30
 978:	6361626c 	cmnvs	r1, #108, 4	; 0xc0000006
 97c:	6946006b 	stmdbvs	r6, {r0, r1, r3, r5, r6}^
 980:	5800656c 	stmdapl	r0, {r2, r3, r5, r6, r8, sl, sp, lr}
 984:	415f6c69 	cmpmi	pc, r9, ror #24
 988:	72657373 	rsbvc	r7, r5, #-872415231	; 0xcc000001
 98c:	6c614374 	stclvs	3, cr4, [r1], #-464	; 0xfffffe30
 990:	6361626c 	cmnvs	r1, #108, 4	; 0xc0000006
 994:	756f526b 	strbvc	r5, [pc, #-619]!	; 731 <_ABORT_STACK_SIZE+0x331>
 998:	656e6974 	strbvs	r6, [lr, #-2420]!	; 0xfffff68c
 99c:	6c695800 	stclvs	8, cr5, [r9], #-0
 9a0:	7373415f 	cmnvc	r3, #-1073741801	; 0xc0000017
 9a4:	57747265 	ldrbpl	r7, [r4, -r5, ror #4]!
 9a8:	00746961 	rsbseq	r6, r4, r1, ror #18
 9ac:	5f6c6978 	svcpl	0x006c6978
 9b0:	65737361 	ldrbvs	r7, [r3, #-865]!	; 0xfffffc9f
 9b4:	632e7472 	teqvs	lr, #1912602624	; 0x72000000
 9b8:	61757800 	cmnvs	r5, r0, lsl #16
 9bc:	73707472 	cmnvc	r0, #1912602624	; 0x72000000
 9c0:	632e675f 	teqvs	lr, #24903680	; 0x17c0000
 9c4:	61555800 	cmpvs	r5, r0, lsl #16
 9c8:	73507472 	cmpvc	r0, #1912602624	; 0x72000000
 9cc:	6365525f 	cmnvs	r5, #-268435451	; 0xf0000005
 9d0:	74794276 	ldrbtvc	r4, [r9], #-630	; 0xfffffd8a
 9d4:	75780065 	ldrbvc	r0, [r8, #-101]!	; 0xffffff9b
 9d8:	70747261 	rsbsvc	r7, r4, r1, ror #4
 9dc:	77685f73 			; <UNDEFINED> instruction: 0x77685f73
 9e0:	7300632e 	movwvc	r6, #814	; 0x32e
 9e4:	75746174 	ldrbvc	r6, [r4, #-372]!	; 0xfffffe8c
 9e8:	655f0073 	ldrbvs	r0, [pc, #-115]	; 97d <_SUPERVISOR_STACK_SIZE+0x17d>
 9ec:	2e746978 	mrccs	9, 3, r6, cr4, cr8, {3}
 9f0:	655f0063 	ldrbvs	r0, [pc, #-99]	; 995 <_SUPERVISOR_STACK_SIZE+0x195>
 9f4:	00746978 	rsbseq	r6, r4, r8, ror r9
 9f8:	72636e69 	rsbvc	r6, r3, #1680	; 0x690
 9fc:	62735f00 	rsbsvs	r5, r3, #0, 30
 a00:	632e6b72 	teqvs	lr, #116736	; 0x1c800
 a04:	65727000 	ldrbvs	r7, [r2, #-0]!
 a08:	65685f76 	strbvs	r5, [r8, #-3958]!	; 0xfffff08a
 a0c:	5f007061 	svcpl	0x00007061
 a10:	6b726273 	blvs	1c993e4 <__stack+0x1adb494>
 a14:	65685f00 	strbvs	r5, [r8, #-3840]!	; 0xfffff100
 a18:	735f7061 	cmpvc	pc, #97	; 0x61
 a1c:	74726174 	ldrbtvc	r6, [r2], #-372	; 0xfffffe8c
 a20:	64616300 	strbtvs	r6, [r1], #-768	; 0xfffffd00
 a24:	745f7264 	ldrbvc	r7, [pc], #-612	; a2c <_SUPERVISOR_STACK_SIZE+0x22c>
	...

Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000014 	andeq	r0, r0, r4, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	00014e70 	andeq	r4, r1, r0, ror lr
  1c:	00000028 	andeq	r0, r0, r8, lsr #32
  20:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
  24:	00018e02 	andeq	r8, r1, r2, lsl #28
  28:	0000000c 	andeq	r0, r0, ip
  2c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  30:	7c020001 	stcvc	0, cr0, [r2], {1}
  34:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  38:	00000014 	andeq	r0, r0, r4, lsl r0
  3c:	00000028 	andeq	r0, r0, r8, lsr #32
  40:	00014e98 	muleq	r1, r8, lr
  44:	0000005c 	andeq	r0, r0, ip, asr r0
  48:	83080e44 	movwhi	r0, #36420	; 0x8e44
  4c:	00018e02 	andeq	r8, r1, r2, lsl #28
  50:	00000014 	andeq	r0, r0, r4, lsl r0
  54:	00000028 	andeq	r0, r0, r8, lsr #32
  58:	00014ef4 	strdeq	r4, [r1], -r4	; <UNPREDICTABLE>
  5c:	0000005c 	andeq	r0, r0, ip, asr r0
  60:	83080e44 	movwhi	r0, #36420	; 0x8e44
  64:	00018e02 	andeq	r8, r1, r2, lsl #28
  68:	00000014 	andeq	r0, r0, r4, lsl r0
  6c:	00000028 	andeq	r0, r0, r8, lsr #32
  70:	00014f50 	andeq	r4, r1, r0, asr pc
  74:	0000005c 	andeq	r0, r0, ip, asr r0
  78:	83080e44 	movwhi	r0, #36420	; 0x8e44
  7c:	00018e02 	andeq	r8, r1, r2, lsl #28
  80:	0000001c 	andeq	r0, r0, ip, lsl r0
  84:	00000028 	andeq	r0, r0, r8, lsr #32
  88:	00014fac 	andeq	r4, r1, ip, lsr #31
  8c:	00000098 	muleq	r0, r8, r0
  90:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
  94:	86058506 	strhi	r8, [r5], -r6, lsl #10
  98:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
  9c:	00018e02 	andeq	r8, r1, r2, lsl #28
  a0:	00000014 	andeq	r0, r0, r4, lsl r0
  a4:	00000028 	andeq	r0, r0, r8, lsr #32
  a8:	00015044 	andeq	r5, r1, r4, asr #32
  ac:	00000020 	andeq	r0, r0, r0, lsr #32
  b0:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
  b4:	00018e02 	andeq	r8, r1, r2, lsl #28
  b8:	0000000c 	andeq	r0, r0, ip
  bc:	00000028 	andeq	r0, r0, r8, lsr #32
  c0:	00015064 	andeq	r5, r1, r4, rrx
  c4:	00000018 	andeq	r0, r0, r8, lsl r0
  c8:	0000000c 	andeq	r0, r0, ip
  cc:	00000028 	andeq	r0, r0, r8, lsr #32
  d0:	0001507c 	andeq	r5, r1, ip, ror r0
  d4:	00000038 	andeq	r0, r0, r8, lsr r0
  d8:	0000001c 	andeq	r0, r0, ip, lsl r0
  dc:	00000028 	andeq	r0, r0, r8, lsr #32
  e0:	000150b4 	strheq	r5, [r1], -r4
  e4:	00000098 	muleq	r0, r8, r0
  e8:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
  ec:	86058506 	strhi	r8, [r5], -r6, lsl #10
  f0:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
  f4:	00018e02 	andeq	r8, r1, r2, lsl #28
  f8:	00000014 	andeq	r0, r0, r4, lsl r0
  fc:	00000028 	andeq	r0, r0, r8, lsr #32
 100:	0001514c 	andeq	r5, r1, ip, asr #2
 104:	00000018 	andeq	r0, r0, r8, lsl r0
 108:	83080e42 	movwhi	r0, #36418	; 0x8e42
 10c:	00018e02 	andeq	r8, r1, r2, lsl #28
 110:	0000000c 	andeq	r0, r0, ip
 114:	00000028 	andeq	r0, r0, r8, lsr #32
 118:	00015164 	andeq	r5, r1, r4, ror #2
 11c:	00000018 	andeq	r0, r0, r8, lsl r0
 120:	0000000c 	andeq	r0, r0, ip
 124:	00000028 	andeq	r0, r0, r8, lsr #32
 128:	0001517c 	andeq	r5, r1, ip, ror r1
 12c:	00000038 	andeq	r0, r0, r8, lsr r0
 130:	0000000c 	andeq	r0, r0, ip
 134:	00000028 	andeq	r0, r0, r8, lsr #32
 138:	000151b4 			; <UNDEFINED> instruction: 0x000151b4
 13c:	00000018 	andeq	r0, r0, r8, lsl r0
 140:	0000000c 	andeq	r0, r0, ip
 144:	00000028 	andeq	r0, r0, r8, lsr #32
 148:	000151cc 	andeq	r5, r1, ip, asr #3
 14c:	0000001c 	andeq	r0, r0, ip, lsl r0
 150:	0000000c 	andeq	r0, r0, ip
 154:	00000028 	andeq	r0, r0, r8, lsr #32
 158:	000151e8 	andeq	r5, r1, r8, ror #3
 15c:	0000001c 	andeq	r0, r0, ip, lsl r0
 160:	0000000c 	andeq	r0, r0, ip
 164:	00000028 	andeq	r0, r0, r8, lsr #32
 168:	00015204 	andeq	r5, r1, r4, lsl #4
 16c:	00000018 	andeq	r0, r0, r8, lsl r0
 170:	0000000c 	andeq	r0, r0, ip
 174:	00000028 	andeq	r0, r0, r8, lsr #32
 178:	0001521c 	andeq	r5, r1, ip, lsl r2
 17c:	00000018 	andeq	r0, r0, r8, lsl r0
 180:	0000000c 	andeq	r0, r0, ip
 184:	00000028 	andeq	r0, r0, r8, lsr #32
 188:	00015234 	andeq	r5, r1, r4, lsr r2
 18c:	00000038 	andeq	r0, r0, r8, lsr r0
 190:	00000014 	andeq	r0, r0, r4, lsl r0
 194:	00000028 	andeq	r0, r0, r8, lsr #32
 198:	0001526c 	andeq	r5, r1, ip, ror #4
 19c:	0000009c 	muleq	r0, ip, r0
 1a0:	83080e42 	movwhi	r0, #36418	; 0x8e42
 1a4:	00018e02 	andeq	r8, r1, r2, lsl #28
 1a8:	0000000c 	andeq	r0, r0, ip
 1ac:	00000028 	andeq	r0, r0, r8, lsr #32
 1b0:	00015308 	andeq	r5, r1, r8, lsl #6
 1b4:	0000001c 	andeq	r0, r0, ip, lsl r0
 1b8:	00000014 	andeq	r0, r0, r4, lsl r0
 1bc:	00000028 	andeq	r0, r0, r8, lsr #32
 1c0:	00015324 	andeq	r5, r1, r4, lsr #6
 1c4:	00000010 	andeq	r0, r0, r0, lsl r0
 1c8:	83080e42 	movwhi	r0, #36418	; 0x8e42
 1cc:	00018e02 	andeq	r8, r1, r2, lsl #28
 1d0:	00000014 	andeq	r0, r0, r4, lsl r0
 1d4:	00000028 	andeq	r0, r0, r8, lsr #32
 1d8:	00015334 	andeq	r5, r1, r4, lsr r3
 1dc:	0000004c 	andeq	r0, r0, ip, asr #32
 1e0:	83080e46 	movwhi	r0, #36422	; 0x8e46
 1e4:	00018e02 	andeq	r8, r1, r2, lsl #28
 1e8:	00000014 	andeq	r0, r0, r4, lsl r0
 1ec:	00000028 	andeq	r0, r0, r8, lsr #32
 1f0:	00015380 	andeq	r5, r1, r0, lsl #7
 1f4:	00000024 	andeq	r0, r0, r4, lsr #32
 1f8:	83080e42 	movwhi	r0, #36418	; 0x8e42
 1fc:	00018e02 	andeq	r8, r1, r2, lsl #28
 200:	00000014 	andeq	r0, r0, r4, lsl r0
 204:	00000028 	andeq	r0, r0, r8, lsr #32
 208:	000153a4 	andeq	r5, r1, r4, lsr #7
 20c:	00000010 	andeq	r0, r0, r0, lsl r0
 210:	83080e42 	movwhi	r0, #36418	; 0x8e42
 214:	00018e02 	andeq	r8, r1, r2, lsl #28
 218:	00000014 	andeq	r0, r0, r4, lsl r0
 21c:	00000028 	andeq	r0, r0, r8, lsr #32
 220:	000153b4 			; <UNDEFINED> instruction: 0x000153b4
 224:	00000030 	andeq	r0, r0, r0, lsr r0
 228:	83080e46 	movwhi	r0, #36422	; 0x8e46
 22c:	00018e02 	andeq	r8, r1, r2, lsl #28
 230:	0000000c 	andeq	r0, r0, ip
 234:	00000028 	andeq	r0, r0, r8, lsr #32
 238:	000153e4 	andeq	r5, r1, r4, ror #7
 23c:	00000018 	andeq	r0, r0, r8, lsl r0
 240:	00000014 	andeq	r0, r0, r4, lsl r0
 244:	00000028 	andeq	r0, r0, r8, lsr #32
 248:	000153fc 	strdeq	r5, [r1], -ip
 24c:	00000010 	andeq	r0, r0, r0, lsl r0
 250:	83080e42 	movwhi	r0, #36418	; 0x8e42
 254:	00018e02 	andeq	r8, r1, r2, lsl #28
 258:	00000014 	andeq	r0, r0, r4, lsl r0
 25c:	00000028 	andeq	r0, r0, r8, lsr #32
 260:	0001540c 	andeq	r5, r1, ip, lsl #8
 264:	0000001c 	andeq	r0, r0, ip, lsl r0
 268:	83080e46 	movwhi	r0, #36422	; 0x8e46
 26c:	00018e02 	andeq	r8, r1, r2, lsl #28
 270:	0000000c 	andeq	r0, r0, ip
 274:	00000028 	andeq	r0, r0, r8, lsr #32
 278:	00015428 	andeq	r5, r1, r8, lsr #8
 27c:	00000018 	andeq	r0, r0, r8, lsl r0
 280:	0000000c 	andeq	r0, r0, ip
 284:	00000028 	andeq	r0, r0, r8, lsr #32
 288:	00015440 	andeq	r5, r1, r0, asr #8
 28c:	00000018 	andeq	r0, r0, r8, lsl r0
 290:	00000014 	andeq	r0, r0, r4, lsl r0
 294:	00000028 	andeq	r0, r0, r8, lsr #32
 298:	00015458 	andeq	r5, r1, r8, asr r4
 29c:	00000050 	andeq	r0, r0, r0, asr r0
 2a0:	83080e44 	movwhi	r0, #36420	; 0x8e44
 2a4:	00018e02 	andeq	r8, r1, r2, lsl #28
 2a8:	00000014 	andeq	r0, r0, r4, lsl r0
 2ac:	00000028 	andeq	r0, r0, r8, lsr #32
 2b0:	000154a8 	andeq	r5, r1, r8, lsr #9
 2b4:	00000030 	andeq	r0, r0, r0, lsr r0
 2b8:	83080e46 	movwhi	r0, #36422	; 0x8e46
 2bc:	00018e02 	andeq	r8, r1, r2, lsl #28
 2c0:	00000014 	andeq	r0, r0, r4, lsl r0
 2c4:	00000028 	andeq	r0, r0, r8, lsr #32
 2c8:	000154d8 	ldrdeq	r5, [r1], -r8
 2cc:	00000010 	andeq	r0, r0, r0, lsl r0
 2d0:	83080e42 	movwhi	r0, #36418	; 0x8e42
 2d4:	00018e02 	andeq	r8, r1, r2, lsl #28
 2d8:	00000014 	andeq	r0, r0, r4, lsl r0
 2dc:	00000028 	andeq	r0, r0, r8, lsr #32
 2e0:	000154e8 	andeq	r5, r1, r8, ror #9
 2e4:	0000001c 	andeq	r0, r0, ip, lsl r0
 2e8:	83080e46 	movwhi	r0, #36422	; 0x8e46
 2ec:	00018e02 	andeq	r8, r1, r2, lsl #28
 2f0:	0000000c 	andeq	r0, r0, ip
 2f4:	00000028 	andeq	r0, r0, r8, lsr #32
 2f8:	00015504 	andeq	r5, r1, r4, lsl #10
 2fc:	00000018 	andeq	r0, r0, r8, lsl r0
 300:	00000014 	andeq	r0, r0, r4, lsl r0
 304:	00000028 	andeq	r0, r0, r8, lsr #32
 308:	0001551c 	andeq	r5, r1, ip, lsl r5
 30c:	00000050 	andeq	r0, r0, r0, asr r0
 310:	83080e44 	movwhi	r0, #36420	; 0x8e44
 314:	00018e02 	andeq	r8, r1, r2, lsl #28
 318:	00000014 	andeq	r0, r0, r4, lsl r0
 31c:	00000028 	andeq	r0, r0, r8, lsr #32
 320:	0001556c 	andeq	r5, r1, ip, ror #10
 324:	0000001c 	andeq	r0, r0, ip, lsl r0
 328:	83080e46 	movwhi	r0, #36422	; 0x8e46
 32c:	00018e02 	andeq	r8, r1, r2, lsl #28
 330:	0000000c 	andeq	r0, r0, ip
 334:	00000028 	andeq	r0, r0, r8, lsr #32
 338:	00015588 	andeq	r5, r1, r8, lsl #11
 33c:	00000018 	andeq	r0, r0, r8, lsl r0
 340:	0000000c 	andeq	r0, r0, ip
 344:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 348:	7c020001 	stcvc	0, cr0, [r2], {1}
 34c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 350:	0000000c 	andeq	r0, r0, ip
 354:	00000340 	andeq	r0, r0, r0, asr #6
 358:	000155a0 	andeq	r5, r1, r0, lsr #11
 35c:	0000000c 	andeq	r0, r0, ip
 360:	0000000c 	andeq	r0, r0, ip
 364:	00000340 	andeq	r0, r0, r0, asr #6
 368:	000155ac 	andeq	r5, r1, ip, lsr #11
 36c:	0000000c 	andeq	r0, r0, ip
 370:	0000000c 	andeq	r0, r0, ip
 374:	00000340 	andeq	r0, r0, r0, asr #6
 378:	000155b8 			; <UNDEFINED> instruction: 0x000155b8
 37c:	0000000c 	andeq	r0, r0, ip
 380:	0000000c 	andeq	r0, r0, ip
 384:	00000340 	andeq	r0, r0, r0, asr #6
 388:	000155c4 	andeq	r5, r1, r4, asr #11
 38c:	0000000c 	andeq	r0, r0, ip
 390:	0000000c 	andeq	r0, r0, ip
 394:	00000340 	andeq	r0, r0, r0, asr #6
 398:	000155d0 	ldrdeq	r5, [r1], -r0
 39c:	0000000c 	andeq	r0, r0, ip
 3a0:	0000000c 	andeq	r0, r0, ip
 3a4:	00000340 	andeq	r0, r0, r0, asr #6
 3a8:	000155dc 	ldrdeq	r5, [r1], -ip
 3ac:	0000000c 	andeq	r0, r0, ip
 3b0:	0000000c 	andeq	r0, r0, ip
 3b4:	00000340 	andeq	r0, r0, r0, asr #6
 3b8:	000155e8 	andeq	r5, r1, r8, ror #11
 3bc:	00000018 	andeq	r0, r0, r8, lsl r0
 3c0:	0000000c 	andeq	r0, r0, ip
 3c4:	00000340 	andeq	r0, r0, r0, asr #6
 3c8:	00015600 	andeq	r5, r1, r0, lsl #12
 3cc:	0000002c 	andeq	r0, r0, ip, lsr #32
 3d0:	0000000c 	andeq	r0, r0, ip
 3d4:	00000340 	andeq	r0, r0, r0, asr #6
 3d8:	0001562c 	andeq	r5, r1, ip, lsr #12
 3dc:	00000014 	andeq	r0, r0, r4, lsl r0
 3e0:	0000000c 	andeq	r0, r0, ip
 3e4:	00000340 	andeq	r0, r0, r0, asr #6
 3e8:	00015640 	andeq	r5, r1, r0, asr #12
 3ec:	0000002c 	andeq	r0, r0, ip, lsr #32
 3f0:	0000000c 	andeq	r0, r0, ip
 3f4:	00000340 	andeq	r0, r0, r0, asr #6
 3f8:	0001566c 	andeq	r5, r1, ip, ror #12
 3fc:	00000010 	andeq	r0, r0, r0, lsl r0
 400:	0000000c 	andeq	r0, r0, ip
 404:	00000340 	andeq	r0, r0, r0, asr #6
 408:	0001567c 	andeq	r5, r1, ip, ror r6
 40c:	00000024 	andeq	r0, r0, r4, lsr #32
 410:	0000000c 	andeq	r0, r0, ip
 414:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 418:	7c020001 	stcvc	0, cr0, [r2], {1}
 41c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 420:	00000018 	andeq	r0, r0, r8, lsl r0
 424:	00000410 	andeq	r0, r0, r0, lsl r4
 428:	000156a0 	andeq	r5, r1, r0, lsr #13
 42c:	00000048 	andeq	r0, r0, r8, asr #32
 430:	83100e42 	tsthi	r0, #1056	; 0x420
 434:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 438:	00018e02 	andeq	r8, r1, r2, lsl #28
 43c:	00000020 	andeq	r0, r0, r0, lsr #32
 440:	00000410 	andeq	r0, r0, r0, lsl r4
 444:	000156e8 	andeq	r5, r1, r8, ror #13
 448:	000000f8 	strdeq	r0, [r0], -r8
 44c:	84180e46 	ldrhi	r0, [r8], #-3654	; 0xfffff1ba
 450:	86058506 	strhi	r8, [r5], -r6, lsl #10
 454:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 458:	4a018e02 	bmi	63c68 <_HEAP_SIZE+0x43c68>
 45c:	0000500e 	andeq	r5, r0, lr
 460:	00000030 	andeq	r0, r0, r0, lsr r0
 464:	00000410 	andeq	r0, r0, r0, lsl r4
 468:	000157e0 	andeq	r5, r1, r0, ror #15
 46c:	000004b4 			; <UNDEFINED> instruction: 0x000004b4
 470:	80100e42 	andshi	r0, r0, r2, asr #28
 474:	82038104 	andhi	r8, r3, #4, 2
 478:	42018302 	andmi	r8, r1, #134217728	; 0x8000000
 47c:	0d84340e 	cfstrseq	mvf3, [r4, #56]	; 0x38
 480:	0b860c85 	bleq	fe18369c <CPU_ARM_BIT_CNTES_C+0x7e18369c>
 484:	09880a87 	stmibeq	r8, {r0, r1, r2, r7, r9, fp}
 488:	078a0889 	streq	r0, [sl, r9, lsl #17]
 48c:	058e068b 	streq	r0, [lr, #1675]	; 0x68b
 490:	00580e42 	subseq	r0, r8, r2, asr #28
 494:	0000000c 	andeq	r0, r0, ip
 498:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 49c:	7c020001 	stcvc	0, cr0, [r2], {1}
 4a0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 4a4:	00000014 	andeq	r0, r0, r4, lsl r0
 4a8:	00000494 	muleq	r0, r4, r4
 4ac:	00015c94 	muleq	r1, r4, ip
 4b0:	00000028 	andeq	r0, r0, r8, lsr #32
 4b4:	83080e42 	movwhi	r0, #36418	; 0x8e42
 4b8:	00018e02 	andeq	r8, r1, r2, lsl #28
 4bc:	00000018 	andeq	r0, r0, r8, lsl r0
 4c0:	00000494 	muleq	r0, r4, r4
 4c4:	00015cbc 			; <UNDEFINED> instruction: 0x00015cbc
 4c8:	00000088 	andeq	r0, r0, r8, lsl #1
 4cc:	83100e42 	tsthi	r0, #1056	; 0x420
 4d0:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 4d4:	00018e02 	andeq	r8, r1, r2, lsl #28
 4d8:	0000001c 	andeq	r0, r0, ip, lsl r0
 4dc:	00000494 	muleq	r0, r4, r4
 4e0:	00015d44 	andeq	r5, r1, r4, asr #26
 4e4:	000000d8 	ldrdeq	r0, [r0], -r8
 4e8:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
 4ec:	86038504 	strhi	r8, [r3], -r4, lsl #10
 4f0:	44018e02 	strmi	r8, [r1], #-3586	; 0xfffff1fe
 4f4:	0000180e 	andeq	r1, r0, lr, lsl #16
 4f8:	00000018 	andeq	r0, r0, r8, lsl r0
 4fc:	00000494 	muleq	r0, r4, r4
 500:	00015e1c 	andeq	r5, r1, ip, lsl lr
 504:	00000090 	muleq	r0, r0, r0
 508:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
 50c:	86038504 	strhi	r8, [r3], -r4, lsl #10
 510:	00018e02 	andeq	r8, r1, r2, lsl #28
 514:	0000001c 	andeq	r0, r0, ip, lsl r0
 518:	00000494 	muleq	r0, r4, r4
 51c:	00015eac 	andeq	r5, r1, ip, lsr #29
 520:	00000100 	andeq	r0, r0, r0, lsl #2
 524:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
 528:	86038504 	strhi	r8, [r3], -r4, lsl #10
 52c:	44018e02 	strmi	r8, [r1], #-3586	; 0xfffff1fe
 530:	0000180e 	andeq	r1, r0, lr, lsl #16
 534:	00000024 	andeq	r0, r0, r4, lsr #32
 538:	00000494 	muleq	r0, r4, r4
 53c:	00015fac 	andeq	r5, r1, ip, lsr #31
 540:	000001c0 	andeq	r0, r0, r0, asr #3
 544:	84240e42 	strthi	r0, [r4], #-3650	; 0xfffff1be
 548:	86088509 	strhi	r8, [r8], -r9, lsl #10
 54c:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
 550:	8a048905 	bhi	12296c <_HEAP_SIZE+0x10296c>
 554:	8e028b03 	vmlahi.f64	d8, d2, d3
 558:	300e4401 	andcc	r4, lr, r1, lsl #8
 55c:	0000001c 	andeq	r0, r0, ip, lsl r0
 560:	00000494 	muleq	r0, r4, r4
 564:	0001616c 	andeq	r6, r1, ip, ror #2
 568:	00000124 	andeq	r0, r0, r4, lsr #2
 56c:	83180e42 	tsthi	r8, #1056	; 0x420
 570:	85058406 	strhi	r8, [r5, #-1030]	; 0xfffffbfa
 574:	87038604 	strhi	r8, [r3, -r4, lsl #12]
 578:	00018e02 	andeq	r8, r1, r2, lsl #28
 57c:	0000000c 	andeq	r0, r0, ip
 580:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 584:	7c020001 	stcvc	0, cr0, [r2], {1}
 588:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 58c:	0000000c 	andeq	r0, r0, ip
 590:	0000057c 	andeq	r0, r0, ip, ror r5
 594:	00016290 	muleq	r1, r0, r2
 598:	0000001c 	andeq	r0, r0, ip, lsl r0
 59c:	0000000c 	andeq	r0, r0, ip
 5a0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 5a4:	7c020001 	stcvc	0, cr0, [r2], {1}
 5a8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 5ac:	0000000c 	andeq	r0, r0, ip
 5b0:	0000059c 	muleq	r0, ip, r5
 5b4:	000162ac 	andeq	r6, r1, ip, lsr #5
 5b8:	00000010 	andeq	r0, r0, r0, lsl r0
 5bc:	0000000c 	andeq	r0, r0, ip
 5c0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 5c4:	7c020001 	stcvc	0, cr0, [r2], {1}
 5c8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 5cc:	00000014 	andeq	r0, r0, r4, lsl r0
 5d0:	000005bc 			; <UNDEFINED> instruction: 0x000005bc
 5d4:	000162bc 			; <UNDEFINED> instruction: 0x000162bc
 5d8:	00000034 	andeq	r0, r0, r4, lsr r0
 5dc:	83080e42 	movwhi	r0, #36418	; 0x8e42
 5e0:	00018e02 	andeq	r8, r1, r2, lsl #28
 5e4:	0000000c 	andeq	r0, r0, ip
 5e8:	000005bc 			; <UNDEFINED> instruction: 0x000005bc
 5ec:	000162f0 	strdeq	r6, [r1], -r0
 5f0:	00000010 	andeq	r0, r0, r0, lsl r0
 5f4:	0000000c 	andeq	r0, r0, ip
 5f8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 5fc:	7c020001 	stcvc	0, cr0, [r2], {1}
 600:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 604:	00000018 	andeq	r0, r0, r8, lsl r0
 608:	000005f4 	strdeq	r0, [r0], -r4
 60c:	00016300 	andeq	r6, r1, r0, lsl #6
 610:	00000030 	andeq	r0, r0, r0, lsr r0
 614:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
 618:	86038504 	strhi	r8, [r3], -r4, lsl #10
 61c:	00018e02 	andeq	r8, r1, r2, lsl #28
 620:	00000018 	andeq	r0, r0, r8, lsl r0
 624:	000005f4 	strdeq	r0, [r0], -r4
 628:	00016330 	andeq	r6, r1, r0, lsr r3
 62c:	0000002c 	andeq	r0, r0, ip, lsr #32
 630:	83100e42 	tsthi	r0, #1056	; 0x420
 634:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 638:	00018e02 	andeq	r8, r1, r2, lsl #28
 63c:	0000000c 	andeq	r0, r0, ip
 640:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 644:	7c010001 	stcvc	0, cr0, [r1], {1}
 648:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 64c:	0000000c 	andeq	r0, r0, ip
 650:	0000063c 	andeq	r0, r0, ip, lsr r6
 654:	0001635c 	andeq	r6, r1, ip, asr r3
 658:	000001ec 	andeq	r0, r0, ip, ror #3
 65c:	0000000c 	andeq	r0, r0, ip
 660:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 664:	7c020001 	stcvc	0, cr0, [r2], {1}
 668:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 66c:	00000014 	andeq	r0, r0, r4, lsl r0
 670:	0000065c 	andeq	r0, r0, ip, asr r6
 674:	0001656c 	andeq	r6, r1, ip, ror #10
 678:	00000034 	andeq	r0, r0, r4, lsr r0
 67c:	83080e42 	movwhi	r0, #36418	; 0x8e42
 680:	00018e02 	andeq	r8, r1, r2, lsl #28
 684:	0000000c 	andeq	r0, r0, ip
 688:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 68c:	7c020001 	stcvc	0, cr0, [r2], {1}
 690:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 694:	00000018 	andeq	r0, r0, r8, lsl r0
 698:	00000684 	andeq	r0, r0, r4, lsl #13
 69c:	000165a0 	andeq	r6, r1, r0, lsr #11
 6a0:	0000003c 	andeq	r0, r0, ip, lsr r0
 6a4:	83100e42 	tsthi	r0, #1056	; 0x420
 6a8:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 6ac:	00018e02 	andeq	r8, r1, r2, lsl #28
 6b0:	0000000c 	andeq	r0, r0, ip
 6b4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 6b8:	7c020001 	stcvc	0, cr0, [r2], {1}
 6bc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 6c0:	00000018 	andeq	r0, r0, r8, lsl r0
 6c4:	000006b0 			; <UNDEFINED> instruction: 0x000006b0
 6c8:	000165dc 	ldrdeq	r6, [r1], -ip
 6cc:	0000007c 	andeq	r0, r0, ip, ror r0
 6d0:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
 6d4:	86038504 	strhi	r8, [r3], -r4, lsl #10
 6d8:	00018e02 	andeq	r8, r1, r2, lsl #28
 6dc:	0000000c 	andeq	r0, r0, ip
 6e0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 6e4:	7c020001 	stcvc	0, cr0, [r2], {1}
 6e8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 6ec:	0000000c 	andeq	r0, r0, ip
 6f0:	000006dc 	ldrdeq	r0, [r0], -ip
 6f4:	00016658 	andeq	r6, r1, r8, asr r6
 6f8:	00000014 	andeq	r0, r0, r4, lsl r0
 6fc:	0000000c 	andeq	r0, r0, ip
 700:	000006dc 	ldrdeq	r0, [r0], -ip
 704:	0001666c 	andeq	r6, r1, ip, ror #12
 708:	00000014 	andeq	r0, r0, r4, lsl r0
 70c:	0000000c 	andeq	r0, r0, ip
 710:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 714:	7c020001 	stcvc	0, cr0, [r2], {1}
 718:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 71c:	00000024 	andeq	r0, r0, r4, lsr #32
 720:	0000070c 	andeq	r0, r0, ip, lsl #14
 724:	00016680 	andeq	r6, r1, r0, lsl #13
 728:	0000071c 	andeq	r0, r0, ip, lsl r7
 72c:	84240e42 	strthi	r0, [r4], #-3650	; 0xfffff1be
 730:	86088509 	strhi	r8, [r8], -r9, lsl #10
 734:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
 738:	8a048905 	bhi	122b54 <_HEAP_SIZE+0x102b54>
 73c:	8e028b03 	vmlahi.f64	d8, d2, d3
 740:	300e4601 	andcc	r4, lr, r1, lsl #12
 744:	0000000c 	andeq	r0, r0, ip
 748:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 74c:	7c020001 	stcvc	0, cr0, [r2], {1}
 750:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 754:	0000000c 	andeq	r0, r0, ip
 758:	00000744 	andeq	r0, r0, r4, asr #14
 75c:	00016d9c 	muleq	r1, ip, sp
 760:	00000004 	andeq	r0, r0, r4
 764:	0000000c 	andeq	r0, r0, ip
 768:	00000744 	andeq	r0, r0, r4, asr #14
 76c:	00016da0 	andeq	r6, r1, r0, lsr #27
 770:	00000004 	andeq	r0, r0, r4
 774:	0000000c 	andeq	r0, r0, ip
 778:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 77c:	7c020001 	stcvc	0, cr0, [r2], {1}
 780:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 784:	00000018 	andeq	r0, r0, r8, lsl r0
 788:	00000774 	andeq	r0, r0, r4, ror r7
 78c:	00016da4 	andeq	r6, r1, r4, lsr #27
 790:	00000038 	andeq	r0, r0, r8, lsr r0
 794:	83100e42 	tsthi	r0, #1056	; 0x420
 798:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 79c:	00018e02 	andeq	r8, r1, r2, lsl #28
 7a0:	0000000c 	andeq	r0, r0, ip
 7a4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 7a8:	7c020001 	stcvc	0, cr0, [r2], {1}
 7ac:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 7b0:	0000000c 	andeq	r0, r0, ip
 7b4:	000007a0 	andeq	r0, r0, r0, lsr #15
 7b8:	00016ddc 	ldrdeq	r6, [r1], -ip
 7bc:	0000006c 	andeq	r0, r0, ip, rrx
 7c0:	0000000c 	andeq	r0, r0, ip
 7c4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 7c8:	7c020001 	stcvc	0, cr0, [r2], {1}
 7cc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 7d0:	0000000c 	andeq	r0, r0, ip
 7d4:	000007c0 	andeq	r0, r0, r0, asr #15
 7d8:	000175dc 	ldrdeq	r7, [r1], -ip
 7dc:	0000001c 	andeq	r0, r0, ip, lsl r0
 7e0:	00000024 	andeq	r0, r0, r4, lsr #32
 7e4:	000007c0 	andeq	r0, r0, r0, asr #15
 7e8:	00016e48 	andeq	r6, r1, r8, asr #28
 7ec:	0000016c 	andeq	r0, r0, ip, ror #2
 7f0:	84240e46 	strthi	r0, [r4], #-3654	; 0xfffff1ba
 7f4:	86088509 	strhi	r8, [r8], -r9, lsl #10
 7f8:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
 7fc:	8a048905 	bhi	122c18 <_HEAP_SIZE+0x102c18>
 800:	8e028b03 	vmlahi.f64	d8, d2, d3
 804:	380e4201 	stmdacc	lr, {r0, r9, lr}
 808:	0000000c 	andeq	r0, r0, ip
 80c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 810:	7c020001 	stcvc	0, cr0, [r2], {1}
 814:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 818:	0000000c 	andeq	r0, r0, ip
 81c:	00000808 	andeq	r0, r0, r8, lsl #16
 820:	00016fb4 			; <UNDEFINED> instruction: 0x00016fb4
 824:	00000014 	andeq	r0, r0, r4, lsl r0
 828:	0000000c 	andeq	r0, r0, ip
 82c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 830:	7c020001 	stcvc	0, cr0, [r2], {1}
 834:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 838:	0000001c 	andeq	r0, r0, ip, lsl r0
 83c:	00000828 	andeq	r0, r0, r8, lsr #16
 840:	00016fc8 	andeq	r6, r1, r8, asr #31
 844:	000000fc 	strdeq	r0, [r0], -ip
 848:	83180e42 	tsthi	r8, #1056	; 0x420
 84c:	85058406 	strhi	r8, [r5, #-1030]	; 0xfffffbfa
 850:	87038604 	strhi	r8, [r3, -r4, lsl #12]
 854:	00018e02 	andeq	r8, r1, r2, lsl #28
 858:	0000001c 	andeq	r0, r0, ip, lsl r0
 85c:	00000828 	andeq	r0, r0, r8, lsr #16
 860:	000170c4 	andeq	r7, r1, r4, asr #1
 864:	00000268 	andeq	r0, r0, r8, ror #4
 868:	83180e42 	tsthi	r8, #1056	; 0x420
 86c:	85058406 	strhi	r8, [r5, #-1030]	; 0xfffffbfa
 870:	87038604 	strhi	r8, [r3, -r4, lsl #12]
 874:	00018e02 	andeq	r8, r1, r2, lsl #28
 878:	0000000c 	andeq	r0, r0, ip
 87c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 880:	7c020001 	stcvc	0, cr0, [r2], {1}
 884:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 888:	00000018 	andeq	r0, r0, r8, lsl r0
 88c:	00000878 	andeq	r0, r0, r8, ror r8
 890:	0001732c 	andeq	r7, r1, ip, lsr #6
 894:	0000002c 	andeq	r0, r0, ip, lsr #32
 898:	83100e42 	tsthi	r0, #1056	; 0x420
 89c:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 8a0:	00018e02 	andeq	r8, r1, r2, lsl #28
 8a4:	00000018 	andeq	r0, r0, r8, lsl r0
 8a8:	00000878 	andeq	r0, r0, r8, ror r8
 8ac:	00017358 	andeq	r7, r1, r8, asr r3
 8b0:	000000f8 	strdeq	r0, [r0], -r8
 8b4:	84100e46 	ldrhi	r0, [r0], #-3654	; 0xfffff1ba
 8b8:	86038504 	strhi	r8, [r3], -r4, lsl #10
 8bc:	00018e02 	andeq	r8, r1, r2, lsl #28
 8c0:	0000001c 	andeq	r0, r0, ip, lsl r0
 8c4:	00000878 	andeq	r0, r0, r8, ror r8
 8c8:	00017450 	andeq	r7, r1, r0, asr r4
 8cc:	0000006c 	andeq	r0, r0, ip, rrx
 8d0:	83180e42 	tsthi	r8, #1056	; 0x420
 8d4:	85058406 	strhi	r8, [r5, #-1030]	; 0xfffffbfa
 8d8:	87038604 	strhi	r8, [r3, -r4, lsl #12]
 8dc:	00018e02 	andeq	r8, r1, r2, lsl #28
 8e0:	0000000c 	andeq	r0, r0, ip
 8e4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 8e8:	7c020001 	stcvc	0, cr0, [r2], {1}
 8ec:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 8f0:	0000001c 	andeq	r0, r0, ip, lsl r0
 8f4:	000008e0 	andeq	r0, r0, r0, ror #17
 8f8:	000174bc 			; <UNDEFINED> instruction: 0x000174bc
 8fc:	000000f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 900:	84140e46 	ldrhi	r0, [r4], #-3654	; 0xfffff1ba
 904:	86048505 	strhi	r8, [r4], -r5, lsl #10
 908:	8e028703 	cdphi	7, 0, cr8, cr2, cr3, {0}
 90c:	280e4601 	stmdacs	lr, {r0, r9, sl, lr}
 910:	0000000c 	andeq	r0, r0, ip
 914:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 918:	7c020001 	stcvc	0, cr0, [r2], {1}
 91c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 920:	0000000c 	andeq	r0, r0, ip
 924:	00000910 	andeq	r0, r0, r0, lsl r9
 928:	000175ac 	andeq	r7, r1, ip, lsr #11
 92c:	00000004 	andeq	r0, r0, r4
 930:	0000000c 	andeq	r0, r0, ip
 934:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 938:	7c020001 	stcvc	0, cr0, [r2], {1}
 93c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 940:	0000000c 	andeq	r0, r0, ip
 944:	00000930 	andeq	r0, r0, r0, lsr r9
 948:	000175b0 			; <UNDEFINED> instruction: 0x000175b0
 94c:	0000002c 	andeq	r0, r0, ip, lsr #32

Disassembly of section .debug_ranges:

00000000 <.debug_ranges>:
   0:	00000068 	andeq	r0, r0, r8, rrx
   4:	00000070 	andeq	r0, r0, r0, ror r0
   8:	00000074 	andeq	r0, r0, r4, ror r0
   c:	00000084 	andeq	r0, r0, r4, lsl #1
	...
  18:	000000a0 	andeq	r0, r0, r0, lsr #1
  1c:	000000a8 	andeq	r0, r0, r8, lsr #1
  20:	000000ac 	andeq	r0, r0, ip, lsr #1
  24:	000000c0 	andeq	r0, r0, r0, asr #1
	...
  30:	000001e8 	andeq	r0, r0, r8, ror #3
  34:	00000204 	andeq	r0, r0, r4, lsl #4
  38:	00000208 	andeq	r0, r0, r8, lsl #4
  3c:	00000218 	andeq	r0, r0, r8, lsl r2
	...
  48:	00000538 	andeq	r0, r0, r8, lsr r5
  4c:	0000053c 	andeq	r0, r0, ip, lsr r5
  50:	00000544 	andeq	r0, r0, r4, asr #10
  54:	00000560 	andeq	r0, r0, r0, ror #10
  58:	00000568 	andeq	r0, r0, r8, ror #10
  5c:	00000594 	muleq	r0, r4, r5
	...
  68:	00000538 	andeq	r0, r0, r8, lsr r5
  6c:	0000053c 	andeq	r0, r0, ip, lsr r5
  70:	00000544 	andeq	r0, r0, r4, asr #10
  74:	00000548 	andeq	r0, r0, r8, asr #10
  78:	0000054c 	andeq	r0, r0, ip, asr #10
  7c:	00000560 	andeq	r0, r0, r0, ror #10
  80:	00000568 	andeq	r0, r0, r8, ror #10
  84:	00000580 	andeq	r0, r0, r0, lsl #11
  88:	00000584 	andeq	r0, r0, r4, lsl #11
  8c:	00000594 	muleq	r0, r4, r5
	...
