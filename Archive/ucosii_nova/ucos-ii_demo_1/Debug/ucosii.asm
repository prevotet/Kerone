
ucos-ii_demo_1.elf:     file format elf32-littlearm


Disassembly of section .text:

00008058 <deregister_tm_clones-0xa8>:
	...

00008100 <deregister_tm_clones>:
    8100:	e92d4008 	push	{r3, lr}
    8104:	e300065c 	movw	r0, #1628	; 0x65c
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
    8134:	0001065f 	andeq	r0, r1, pc, asr r6

00008138 <register_tm_clones>:
    8138:	e92d4008 	push	{r3, lr}
    813c:	e300065c 	movw	r0, #1628	; 0x65c
    8140:	e300365c 	movw	r3, #1628	; 0x65c
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
    817c:	e300466c 	movw	r4, #1644	; 0x66c
    8180:	e3404001 	movt	r4, #1
    8184:	e5d43000 	ldrb	r3, [r4]
    8188:	e3530000 	cmp	r3, #0
    818c:	18bd8010 	popne	{r4, pc}
    8190:	ebffffda 	bl	8100 <deregister_tm_clones>
    8194:	e3003000 	movw	r3, #0
    8198:	e3403000 	movt	r3, #0
    819c:	e3530000 	cmp	r3, #0
    81a0:	0a000002 	beq	81b0 <__do_global_dtors_aux+0x38>
    81a4:	e300065c 	movw	r0, #1628	; 0x65c
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
    81d0:	e300065c 	movw	r0, #1628	; 0x65c
    81d4:	e3001670 	movw	r1, #1648	; 0x670
    81d8:	e3400001 	movt	r0, #1
    81dc:	e3401001 	movt	r1, #1
    81e0:	e320f000 	nop	{0}
    81e4:	e3000658 	movw	r0, #1624	; 0x658
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

00008214 <OS_TaskIdle>:
    8214:	e92d4010 	push	{r4, lr}
    8218:	e3024690 	movw	r4, #9872	; 0x2690
    821c:	e3404001 	movt	r4, #1
    8220:	eb000d42 	bl	b730 <OS_CPU_SR_Save>
    8224:	e5943000 	ldr	r3, [r4]
    8228:	e2833001 	add	r3, r3, #1
    822c:	e5843000 	str	r3, [r4]
    8230:	eb000d51 	bl	b77c <OS_CPU_SR_Restore>
    8234:	eb000e7a 	bl	bc24 <OSTaskIdleHook>
    8238:	eafffff8 	b	8220 <OS_TaskIdle+0xc>

0000823c <OSEventNameGet>:
    823c:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    8240:	e302373c 	movw	r3, #10044	; 0x273c
    8244:	e3403001 	movt	r3, #1
    8248:	e1a06000 	mov	r6, r0
    824c:	e1a07001 	mov	r7, r1
    8250:	e1a05002 	mov	r5, r2
    8254:	e5d34000 	ldrb	r4, [r3]
    8258:	e3540000 	cmp	r4, #0
    825c:	1a000015 	bne	82b8 <OSEventNameGet+0x7c>
    8260:	e5d03000 	ldrb	r3, [r0]
    8264:	e2433001 	sub	r3, r3, #1
    8268:	e3530003 	cmp	r3, #3
    826c:	83a03001 	movhi	r3, #1
    8270:	85c23000 	strbhi	r3, [r2]
    8274:	8a00000d 	bhi	82b0 <OSEventNameGet+0x74>
    8278:	eb000d2c 	bl	b730 <OS_CPU_SR_Save>
    827c:	e5963014 	ldr	r3, [r6, #20]
    8280:	e5873000 	str	r3, [r7]
    8284:	e5d32000 	ldrb	r2, [r3]
    8288:	e3520000 	cmp	r2, #0
    828c:	0a00000e 	beq	82cc <OSEventNameGet+0x90>
    8290:	e5f31001 	ldrb	r1, [r3, #1]!
    8294:	e2844001 	add	r4, r4, #1
    8298:	e3510000 	cmp	r1, #0
    829c:	e6ef4074 	uxtb	r4, r4
    82a0:	1afffffa 	bne	8290 <OSEventNameGet+0x54>
    82a4:	eb000d34 	bl	b77c <OS_CPU_SR_Restore>
    82a8:	e3a03000 	mov	r3, #0
    82ac:	e5c53000 	strb	r3, [r5]
    82b0:	e1a00004 	mov	r0, r4
    82b4:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    82b8:	e3a04000 	mov	r4, #0
    82bc:	e3a03011 	mov	r3, #17
    82c0:	e1a00004 	mov	r0, r4
    82c4:	e5c23000 	strb	r3, [r2]
    82c8:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    82cc:	e1a04002 	mov	r4, r2
    82d0:	eafffff3 	b	82a4 <OSEventNameGet+0x68>

000082d4 <OSEventNameSet>:
    82d4:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    82d8:	e302373c 	movw	r3, #10044	; 0x273c
    82dc:	e3403001 	movt	r3, #1
    82e0:	e1a06000 	mov	r6, r0
    82e4:	e1a07001 	mov	r7, r1
    82e8:	e1a05002 	mov	r5, r2
    82ec:	e5d34000 	ldrb	r4, [r3]
    82f0:	e3540000 	cmp	r4, #0
    82f4:	13a03012 	movne	r3, #18
    82f8:	15c23000 	strbne	r3, [r2]
    82fc:	18bd80f8 	popne	{r3, r4, r5, r6, r7, pc}
    8300:	e5d03000 	ldrb	r3, [r0]
    8304:	e2433001 	sub	r3, r3, #1
    8308:	e3530003 	cmp	r3, #3
    830c:	83a03001 	movhi	r3, #1
    8310:	85c23000 	strbhi	r3, [r2]
    8314:	88bd80f8 	pophi	{r3, r4, r5, r6, r7, pc}
    8318:	eb000d04 	bl	b730 <OS_CPU_SR_Save>
    831c:	e5867014 	str	r7, [r6, #20]
    8320:	eb000d15 	bl	b77c <OS_CPU_SR_Restore>
    8324:	e5c54000 	strb	r4, [r5]
    8328:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

0000832c <OSInit>:
    832c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8330:	e24dd03c 	sub	sp, sp, #60	; 0x3c
    8334:	e3026718 	movw	r6, #10008	; 0x2718
    8338:	e3406001 	movt	r6, #1
    833c:	eb000e29 	bl	bbe8 <OSInitHookBegin>
    8340:	e3022690 	movw	r2, #9872	; 0x2690
    8344:	e3402001 	movt	r2, #1
    8348:	e58d201c 	str	r2, [sp, #28]
    834c:	e3a01000 	mov	r1, #0
    8350:	e5861000 	str	r1, [r6]
    8354:	e59d601c 	ldr	r6, [sp, #28]
    8358:	e302b744 	movw	fp, #10052	; 0x2744
    835c:	e3022730 	movw	r2, #10032	; 0x2730
    8360:	e340b001 	movt	fp, #1
    8364:	e3402001 	movt	r2, #1
    8368:	e3023695 	movw	r3, #9877	; 0x2695
    836c:	e3403001 	movt	r3, #1
    8370:	e58d3020 	str	r3, [sp, #32]
    8374:	e3023694 	movw	r3, #9876	; 0x2694
    8378:	e3403001 	movt	r3, #1
    837c:	e58d3024 	str	r3, [sp, #36]	; 0x24
    8380:	e3023728 	movw	r3, #10024	; 0x2728
    8384:	e5c21000 	strb	r1, [r2]
    8388:	e3403001 	movt	r3, #1
    838c:	e5c21001 	strb	r1, [r2, #1]
    8390:	e3025a38 	movw	r5, #10808	; 0x2a38
    8394:	e5c21002 	strb	r1, [r2, #2]
    8398:	e3405001 	movt	r5, #1
    839c:	e5c21003 	strb	r1, [r2, #3]
    83a0:	e302973c 	movw	r9, #10044	; 0x273c
    83a4:	e58b1000 	str	r1, [fp]
    83a8:	e3409001 	movt	r9, #1
    83ac:	e5861000 	str	r1, [r6]
    83b0:	e302a68c 	movw	sl, #9868	; 0x268c
    83b4:	e59d6024 	ldr	r6, [sp, #36]	; 0x24
    83b8:	e3028720 	movw	r8, #10016	; 0x2720
    83bc:	e5c21004 	strb	r1, [r2, #4]
    83c0:	e340a001 	movt	sl, #1
    83c4:	e5c21005 	strb	r1, [r2, #5]
    83c8:	e3408001 	movt	r8, #1
    83cc:	e5c21006 	strb	r1, [r2, #6]
    83d0:	e302768e 	movw	r7, #9870	; 0x268e
    83d4:	e5c21007 	strb	r1, [r2, #7]
    83d8:	e3407001 	movt	r7, #1
    83dc:	e59d2020 	ldr	r2, [sp, #32]
    83e0:	e302468d 	movw	r4, #9869	; 0x268d
    83e4:	e58d3028 	str	r3, [sp, #40]	; 0x28
    83e8:	e3023740 	movw	r3, #10048	; 0x2740
    83ec:	e3403001 	movt	r3, #1
    83f0:	e58d302c 	str	r3, [sp, #44]	; 0x2c
    83f4:	e5c21000 	strb	r1, [r2]
    83f8:	e3404001 	movt	r4, #1
    83fc:	e5c61000 	strb	r1, [r6]
    8400:	e302e72c 	movw	lr, #10028	; 0x272c
    8404:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
    8408:	e340e001 	movt	lr, #1
    840c:	e59d602c 	ldr	r6, [sp, #44]	; 0x2c
    8410:	e2853e69 	add	r3, r5, #1680	; 0x690
    8414:	e1a0c005 	mov	ip, r5
    8418:	e1a00001 	mov	r0, r1
    841c:	e5c91000 	strb	r1, [r9]
    8420:	e5ca1000 	strb	r1, [sl]
    8424:	e5c81000 	strb	r1, [r8]
    8428:	e5c71000 	strb	r1, [r7]
    842c:	e5c41000 	strb	r1, [r4]
    8430:	e5ce1000 	strb	r1, [lr]
    8434:	e5821000 	str	r1, [r2]
    8438:	e5861000 	str	r1, [r6]
    843c:	e4cc0001 	strb	r0, [ip], #1
    8440:	e15c0003 	cmp	ip, r3
    8444:	1afffffc 	bne	843c <OSInit+0x110>
    8448:	e30330c8 	movw	r3, #12488	; 0x30c8
    844c:	e3403001 	movt	r3, #1
    8450:	e2831c01 	add	r1, r3, #256	; 0x100
    8454:	e3a02000 	mov	r2, #0
    8458:	e4c32001 	strb	r2, [r3], #1
    845c:	e1530001 	cmp	r3, r1
    8460:	1afffffc 	bne	8458 <OSInit+0x12c>
    8464:	e3a03000 	mov	r3, #0
    8468:	e30f4fd4 	movw	r4, #65492	; 0xffd4
    846c:	e3404000 	movt	r4, #0
    8470:	e1a02003 	mov	r2, r3
    8474:	e0821003 	add	r1, r2, r3
    8478:	e2833001 	add	r3, r3, #1
    847c:	e3530014 	cmp	r3, #20
    8480:	e3020a38 	movw	r0, #10808	; 0x2a38
    8484:	e1a02103 	lsl	r2, r3, #2
    8488:	e0851201 	add	r1, r5, r1, lsl #4
    848c:	e082e003 	add	lr, r2, r3
    8490:	e30fcfd4 	movw	ip, #65492	; 0xffd4
    8494:	e3400001 	movt	r0, #1
    8498:	e340c000 	movt	ip, #0
    849c:	e085e20e 	add	lr, r5, lr, lsl #4
    84a0:	e5814048 	str	r4, [r1, #72]	; 0x48
    84a4:	e581e014 	str	lr, [r1, #20]
    84a8:	1afffff1 	bne	8474 <OSInit+0x148>
    84ac:	e302e948 	movw	lr, #10568	; 0x2948
    84b0:	e340e001 	movt	lr, #1
    84b4:	e3a07000 	mov	r7, #0
    84b8:	e3026698 	movw	r6, #9880	; 0x2698
    84bc:	e302571c 	movw	r5, #10012	; 0x271c
    84c0:	e3406001 	movt	r6, #1
    84c4:	e3405001 	movt	r5, #1
    84c8:	e28e10f0 	add	r1, lr, #240	; 0xf0
    84cc:	e1a0300e 	mov	r3, lr
    84d0:	e1a02007 	mov	r2, r7
    84d4:	e5807654 	str	r7, [r0, #1620]	; 0x654
    84d8:	e580c688 	str	ip, [r0, #1672]	; 0x688
    84dc:	e5867000 	str	r7, [r6]
    84e0:	e5850000 	str	r0, [r5]
    84e4:	e4c32001 	strb	r2, [r3], #1
    84e8:	e1530001 	cmp	r3, r1
    84ec:	1afffffc 	bne	84e4 <OSInit+0x1b8>
    84f0:	e3a03000 	mov	r3, #0
    84f4:	e1a0c003 	mov	ip, r3
    84f8:	e1a08003 	mov	r8, r3
    84fc:	e08c5003 	add	r5, ip, r3
    8500:	e2833001 	add	r3, r3, #1
    8504:	e3530009 	cmp	r3, #9
    8508:	e3022948 	movw	r2, #10568	; 0x2948
    850c:	e1a0c083 	lsl	ip, r3, #1
    8510:	e08e1185 	add	r1, lr, r5, lsl #3
    8514:	e08c6003 	add	r6, ip, r3
    8518:	e30f0fd4 	movw	r0, #65492	; 0xffd4
    851c:	e3402001 	movt	r2, #1
    8520:	e3a07000 	mov	r7, #0
    8524:	e08e6186 	add	r6, lr, r6, lsl #3
    8528:	e7ce8185 	strb	r8, [lr, r5, lsl #3]
    852c:	e5816004 	str	r6, [r1, #4]
    8530:	e3400000 	movt	r0, #0
    8534:	e5814014 	str	r4, [r1, #20]
    8538:	1affffef 	bne	84fc <OSInit+0x1d0>
    853c:	e3023738 	movw	r3, #10040	; 0x2738
    8540:	e3403001 	movt	r3, #1
    8544:	e5c270d8 	strb	r7, [r2, #216]	; 0xd8
    8548:	e58270dc 	str	r7, [r2, #220]	; 0xdc
    854c:	e58200ec 	str	r0, [r2, #236]	; 0xec
    8550:	e5832000 	str	r2, [r3]
    8554:	eb00053f 	bl	9a58 <OS_MemInit>
    8558:	e3020748 	movw	r0, #10056	; 0x2748
    855c:	e3400001 	movt	r0, #1
    8560:	e3a0c003 	mov	ip, #3
    8564:	e1a01007 	mov	r1, r7
    8568:	e2802f7f 	add	r2, r0, #508	; 0x1fc
    856c:	e3a0303f 	mov	r3, #63	; 0x3f
    8570:	e58d0004 	str	r0, [sp, #4]
    8574:	e30f0fff 	movw	r0, #65535	; 0xffff
    8578:	e58dc010 	str	ip, [sp, #16]
    857c:	e58d0000 	str	r0, [sp]
    8580:	e3a00080 	mov	r0, #128	; 0x80
    8584:	e58d700c 	str	r7, [sp, #12]
    8588:	e58d0008 	str	r0, [sp, #8]
    858c:	e3080214 	movw	r0, #33300	; 0x8214
    8590:	e3400000 	movt	r0, #0
    8594:	eb0009a1 	bl	ac20 <OSTaskCreateExt>
    8598:	e3a0003f 	mov	r0, #63	; 0x3f
    859c:	e28d2037 	add	r2, sp, #55	; 0x37
    85a0:	e30f1fd8 	movw	r1, #65496	; 0xffd8
    85a4:	e3401000 	movt	r1, #0
    85a8:	eb000aaa 	bl	b058 <OSTaskNameSet>
    85ac:	eb000d99 	bl	bc18 <OSInitHookEnd>
    85b0:	e28dd03c 	add	sp, sp, #60	; 0x3c
    85b4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

000085b8 <OSIntEnter>:
    85b8:	e302368e 	movw	r3, #9870	; 0x268e
    85bc:	e3403001 	movt	r3, #1
    85c0:	e5d33000 	ldrb	r3, [r3]
    85c4:	e3530001 	cmp	r3, #1
    85c8:	112fff1e 	bxne	lr
    85cc:	e302373c 	movw	r3, #10044	; 0x273c
    85d0:	e3403001 	movt	r3, #1
    85d4:	e5d32000 	ldrb	r2, [r3]
    85d8:	e35200ff 	cmp	r2, #255	; 0xff
    85dc:	12822001 	addne	r2, r2, #1
    85e0:	15c32000 	strbne	r2, [r3]
    85e4:	e12fff1e 	bx	lr

000085e8 <OSIntExit>:
    85e8:	e302368e 	movw	r3, #9870	; 0x268e
    85ec:	e3403001 	movt	r3, #1
    85f0:	e92d4070 	push	{r4, r5, r6, lr}
    85f4:	e24dd008 	sub	sp, sp, #8
    85f8:	e5d33000 	ldrb	r3, [r3]
    85fc:	e3530001 	cmp	r3, #1
    8600:	0a000001 	beq	860c <OSIntExit+0x24>
    8604:	e28dd008 	add	sp, sp, #8
    8608:	e8bd8070 	pop	{r4, r5, r6, pc}
    860c:	eb000c47 	bl	b730 <OS_CPU_SR_Save>
    8610:	e302373c 	movw	r3, #10044	; 0x273c
    8614:	e3403001 	movt	r3, #1
    8618:	e5d32000 	ldrb	r2, [r3]
    861c:	e3520000 	cmp	r2, #0
    8620:	1a00002c 	bne	86d8 <OSIntExit+0xf0>
    8624:	e302368c 	movw	r3, #9868	; 0x268c
    8628:	e3403001 	movt	r3, #1
    862c:	e5d33000 	ldrb	r3, [r3]
    8630:	e3530000 	cmp	r3, #0
    8634:	1a000024 	bne	86cc <OSIntExit+0xe4>
    8638:	e302272c 	movw	r2, #10028	; 0x272c
    863c:	e3402001 	movt	r2, #1
    8640:	e30f3c34 	movw	r3, #64564	; 0xfc34
    8644:	e3403000 	movt	r3, #0
    8648:	e5d2c000 	ldrb	ip, [r2]
    864c:	e3024730 	movw	r4, #10032	; 0x2730
    8650:	e3404001 	movt	r4, #1
    8654:	e3022695 	movw	r2, #9877	; 0x2695
    8658:	e3402001 	movt	r2, #1
    865c:	e30310c8 	movw	r1, #12488	; 0x30c8
    8660:	e7d3500c 	ldrb	r5, [r3, ip]
    8664:	e3401001 	movt	r1, #1
    8668:	e5d26000 	ldrb	r6, [r2]
    866c:	e302c694 	movw	ip, #9876	; 0x2694
    8670:	e340c001 	movt	ip, #1
    8674:	e3022728 	movw	r2, #10024	; 0x2728
    8678:	e7d44005 	ldrb	r4, [r4, r5]
    867c:	e3402001 	movt	r2, #1
    8680:	e7d33004 	ldrb	r3, [r3, r4]
    8684:	e0833185 	add	r3, r3, r5, lsl #3
    8688:	e6ef3073 	uxtb	r3, r3
    868c:	e5cc3000 	strb	r3, [ip]
    8690:	e1560003 	cmp	r6, r3
    8694:	e7913103 	ldr	r3, [r1, r3, lsl #2]
    8698:	e5823000 	str	r3, [r2]
    869c:	0a00000a 	beq	86cc <OSIntExit+0xe4>
    86a0:	e3022718 	movw	r2, #10008	; 0x2718
    86a4:	e3402001 	movt	r2, #1
    86a8:	e593c034 	ldr	ip, [r3, #52]	; 0x34
    86ac:	e5921000 	ldr	r1, [r2]
    86b0:	e28cc001 	add	ip, ip, #1
    86b4:	e583c034 	str	ip, [r3, #52]	; 0x34
    86b8:	e2813001 	add	r3, r1, #1
    86bc:	e5823000 	str	r3, [r2]
    86c0:	e58d0004 	str	r0, [sp, #4]
    86c4:	eb000c7f 	bl	b8c8 <OSIntCtxSw>
    86c8:	e59d0004 	ldr	r0, [sp, #4]
    86cc:	e28dd008 	add	sp, sp, #8
    86d0:	e8bd4070 	pop	{r4, r5, r6, lr}
    86d4:	ea000c28 	b	b77c <OS_CPU_SR_Restore>
    86d8:	e2422001 	sub	r2, r2, #1
    86dc:	e6ef2072 	uxtb	r2, r2
    86e0:	e5c32000 	strb	r2, [r3]
    86e4:	e3520000 	cmp	r2, #0
    86e8:	1afffff7 	bne	86cc <OSIntExit+0xe4>
    86ec:	eaffffcc 	b	8624 <OSIntExit+0x3c>

000086f0 <OSSchedLock>:
    86f0:	e92d4008 	push	{r3, lr}
    86f4:	e302368e 	movw	r3, #9870	; 0x268e
    86f8:	e3403001 	movt	r3, #1
    86fc:	e5d33000 	ldrb	r3, [r3]
    8700:	e3530001 	cmp	r3, #1
    8704:	18bd8008 	popne	{r3, pc}
    8708:	eb000c08 	bl	b730 <OS_CPU_SR_Save>
    870c:	e302373c 	movw	r3, #10044	; 0x273c
    8710:	e3403001 	movt	r3, #1
    8714:	e5d33000 	ldrb	r3, [r3]
    8718:	e3530000 	cmp	r3, #0
    871c:	1a000005 	bne	8738 <OSSchedLock+0x48>
    8720:	e302368c 	movw	r3, #9868	; 0x268c
    8724:	e3403001 	movt	r3, #1
    8728:	e5d32000 	ldrb	r2, [r3]
    872c:	e35200ff 	cmp	r2, #255	; 0xff
    8730:	12822001 	addne	r2, r2, #1
    8734:	15c32000 	strbne	r2, [r3]
    8738:	e8bd4008 	pop	{r3, lr}
    873c:	ea000c0e 	b	b77c <OS_CPU_SR_Restore>

00008740 <OSStart>:
    8740:	e302368e 	movw	r3, #9870	; 0x268e
    8744:	e3403001 	movt	r3, #1
    8748:	e92d0070 	push	{r4, r5, r6}
    874c:	e5d33000 	ldrb	r3, [r3]
    8750:	e3530000 	cmp	r3, #0
    8754:	0a000001 	beq	8760 <OSStart+0x20>
    8758:	e8bd0070 	pop	{r4, r5, r6}
    875c:	e12fff1e 	bx	lr
    8760:	e302272c 	movw	r2, #10028	; 0x272c
    8764:	e3402001 	movt	r2, #1
    8768:	e30f3c34 	movw	r3, #64564	; 0xfc34
    876c:	e3403000 	movt	r3, #0
    8770:	e5d21000 	ldrb	r1, [r2]
    8774:	e3022730 	movw	r2, #10032	; 0x2730
    8778:	e3402001 	movt	r2, #1
    877c:	e30300c8 	movw	r0, #12488	; 0x30c8
    8780:	e3024694 	movw	r4, #9876	; 0x2694
    8784:	e3400001 	movt	r0, #1
    8788:	e7d35001 	ldrb	r5, [r3, r1]
    878c:	e3404001 	movt	r4, #1
    8790:	e302c695 	movw	ip, #9877	; 0x2695
    8794:	e340c001 	movt	ip, #1
    8798:	e3021728 	movw	r1, #10024	; 0x2728
    879c:	e3401001 	movt	r1, #1
    87a0:	e7d26005 	ldrb	r6, [r2, r5]
    87a4:	e3022740 	movw	r2, #10048	; 0x2740
    87a8:	e3402001 	movt	r2, #1
    87ac:	e7d33006 	ldrb	r3, [r3, r6]
    87b0:	e0833185 	add	r3, r3, r5, lsl #3
    87b4:	e6ef3073 	uxtb	r3, r3
    87b8:	e5c43000 	strb	r3, [r4]
    87bc:	e5cc3000 	strb	r3, [ip]
    87c0:	e7903103 	ldr	r3, [r0, r3, lsl #2]
    87c4:	e5813000 	str	r3, [r1]
    87c8:	e5823000 	str	r3, [r2]
    87cc:	e8bd0070 	pop	{r4, r5, r6}
    87d0:	ea000bf8 	b	b7b8 <OSStartHighRdy>

000087d4 <OSTimeTick>:
    87d4:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    87d8:	eb000d52 	bl	bd28 <OSTimeTickHook>
    87dc:	eb000bd3 	bl	b730 <OS_CPU_SR_Save>
    87e0:	e3023744 	movw	r3, #10052	; 0x2744
    87e4:	e3403001 	movt	r3, #1
    87e8:	e5932000 	ldr	r2, [r3]
    87ec:	e2822001 	add	r2, r2, #1
    87f0:	e5832000 	str	r2, [r3]
    87f4:	eb000be0 	bl	b77c <OS_CPU_SR_Restore>
    87f8:	e302368e 	movw	r3, #9870	; 0x268e
    87fc:	e3403001 	movt	r3, #1
    8800:	e5d33000 	ldrb	r3, [r3]
    8804:	e3530001 	cmp	r3, #1
    8808:	18bd80f8 	popne	{r3, r4, r5, r6, r7, pc}
    880c:	e3022714 	movw	r2, #10004	; 0x2714
    8810:	e3402001 	movt	r2, #1
    8814:	e5d21000 	ldrb	r1, [r2]
    8818:	e3510001 	cmp	r1, #1
    881c:	08bd80f8 	popeq	{r3, r4, r5, r6, r7, pc}
    8820:	2a00002b 	bcs	88d4 <OSTimeTick+0x100>
    8824:	e3023698 	movw	r3, #9880	; 0x2698
    8828:	e3403001 	movt	r3, #1
    882c:	e5934000 	ldr	r4, [r3]
    8830:	e5d4302e 	ldrb	r3, [r4, #46]	; 0x2e
    8834:	e353003f 	cmp	r3, #63	; 0x3f
    8838:	08bd80f8 	popeq	{r3, r4, r5, r6, r7, pc}
    883c:	e302672c 	movw	r6, #10028	; 0x272c
    8840:	e3025730 	movw	r5, #10032	; 0x2730
    8844:	e3406001 	movt	r6, #1
    8848:	e3405001 	movt	r5, #1
    884c:	e3a07001 	mov	r7, #1
    8850:	eb000bb6 	bl	b730 <OS_CPU_SR_Save>
    8854:	e5943028 	ldr	r3, [r4, #40]	; 0x28
    8858:	e3530000 	cmp	r3, #0
    885c:	e2432001 	sub	r2, r3, #1
    8860:	0a000015 	beq	88bc <OSTimeTick+0xe8>
    8864:	e3520000 	cmp	r2, #0
    8868:	e5842028 	str	r2, [r4, #40]	; 0x28
    886c:	1a000012 	bne	88bc <OSTimeTick+0xe8>
    8870:	e5d4302c 	ldrb	r3, [r4, #44]	; 0x2c
    8874:	e2132037 	ands	r2, r3, #55	; 0x37
    8878:	15c4702d 	strbne	r7, [r4, #45]	; 0x2d
    887c:	120330c8 	andne	r3, r3, #200	; 0xc8
    8880:	15c4302c 	strbne	r3, [r4, #44]	; 0x2c
    8884:	e2033008 	and	r3, r3, #8
    8888:	05c4202d 	strbeq	r2, [r4, #45]	; 0x2d
    888c:	e6ef3073 	uxtb	r3, r3
    8890:	e3530000 	cmp	r3, #0
    8894:	1a000008 	bne	88bc <OSTimeTick+0xe8>
    8898:	e5d43030 	ldrb	r3, [r4, #48]	; 0x30
    889c:	e5d4c032 	ldrb	ip, [r4, #50]	; 0x32
    88a0:	e5d42031 	ldrb	r2, [r4, #49]	; 0x31
    88a4:	e5d6e000 	ldrb	lr, [r6]
    88a8:	e7d51003 	ldrb	r1, [r5, r3]
    88ac:	e18ec00c 	orr	ip, lr, ip
    88b0:	e5c6c000 	strb	ip, [r6]
    88b4:	e1812002 	orr	r2, r1, r2
    88b8:	e7c52003 	strb	r2, [r5, r3]
    88bc:	e5944014 	ldr	r4, [r4, #20]
    88c0:	eb000bad 	bl	b77c <OS_CPU_SR_Restore>
    88c4:	e5d4302e 	ldrb	r3, [r4, #46]	; 0x2e
    88c8:	e353003f 	cmp	r3, #63	; 0x3f
    88cc:	1affffdf 	bne	8850 <OSTimeTick+0x7c>
    88d0:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    88d4:	e3510002 	cmp	r1, #2
    88d8:	13a03000 	movne	r3, #0
    88dc:	e5c23000 	strb	r3, [r2]
    88e0:	eaffffcf 	b	8824 <OSTimeTick+0x50>

000088e4 <OSVersion>:
    88e4:	e3070217 	movw	r0, #29207	; 0x7217
    88e8:	e12fff1e 	bx	lr

000088ec <OS_Dummy>:
    88ec:	e12fff1e 	bx	lr

000088f0 <OS_EventTaskWait>:
    88f0:	e3023740 	movw	r3, #10048	; 0x2740
    88f4:	e3403001 	movt	r3, #1
    88f8:	e92d0030 	push	{r4, r5}
    88fc:	e3022730 	movw	r2, #10032	; 0x2730
    8900:	e5933000 	ldr	r3, [r3]
    8904:	e3402001 	movt	r2, #1
    8908:	e5d31030 	ldrb	r1, [r3, #48]	; 0x30
    890c:	e583001c 	str	r0, [r3, #28]
    8910:	e0801001 	add	r1, r0, r1
    8914:	e5d34031 	ldrb	r4, [r3, #49]	; 0x31
    8918:	e5d0c00a 	ldrb	ip, [r0, #10]
    891c:	e5d1500b 	ldrb	r5, [r1, #11]
    8920:	e1854004 	orr	r4, r5, r4
    8924:	e5c1400b 	strb	r4, [r1, #11]
    8928:	e5d31032 	ldrb	r1, [r3, #50]	; 0x32
    892c:	e181100c 	orr	r1, r1, ip
    8930:	e5c0100a 	strb	r1, [r0, #10]
    8934:	e5d30030 	ldrb	r0, [r3, #48]	; 0x30
    8938:	e5d3c031 	ldrb	ip, [r3, #49]	; 0x31
    893c:	e7d21000 	ldrb	r1, [r2, r0]
    8940:	e1c1100c 	bic	r1, r1, ip
    8944:	e7c21000 	strb	r1, [r2, r0]
    8948:	e3510000 	cmp	r1, #0
    894c:	1a000005 	bne	8968 <OS_EventTaskWait+0x78>
    8950:	e302272c 	movw	r2, #10028	; 0x272c
    8954:	e3402001 	movt	r2, #1
    8958:	e5d31032 	ldrb	r1, [r3, #50]	; 0x32
    895c:	e5d23000 	ldrb	r3, [r2]
    8960:	e1c33001 	bic	r3, r3, r1
    8964:	e5c23000 	strb	r3, [r2]
    8968:	e8bd0030 	pop	{r4, r5}
    896c:	e12fff1e 	bx	lr

00008970 <OS_EventTaskWaitMulti>:
    8970:	e3023740 	movw	r3, #10048	; 0x2740
    8974:	e3403001 	movt	r3, #1
    8978:	e92d0030 	push	{r4, r5}
    897c:	e5932000 	ldr	r2, [r3]
    8980:	e3a03000 	mov	r3, #0
    8984:	e5820020 	str	r0, [r2, #32]
    8988:	e582301c 	str	r3, [r2, #28]
    898c:	e5903000 	ldr	r3, [r0]
    8990:	e3530000 	cmp	r3, #0
    8994:	0a00000c 	beq	89cc <OS_EventTaskWaitMulti+0x5c>
    8998:	e5d21030 	ldrb	r1, [r2, #48]	; 0x30
    899c:	e5d24031 	ldrb	r4, [r2, #49]	; 0x31
    89a0:	e0831001 	add	r1, r3, r1
    89a4:	e5d3c00a 	ldrb	ip, [r3, #10]
    89a8:	e5d1500b 	ldrb	r5, [r1, #11]
    89ac:	e1854004 	orr	r4, r5, r4
    89b0:	e5c1400b 	strb	r4, [r1, #11]
    89b4:	e5d21032 	ldrb	r1, [r2, #50]	; 0x32
    89b8:	e181100c 	orr	r1, r1, ip
    89bc:	e5c3100a 	strb	r1, [r3, #10]
    89c0:	e5b03004 	ldr	r3, [r0, #4]!
    89c4:	e3530000 	cmp	r3, #0
    89c8:	1afffff2 	bne	8998 <OS_EventTaskWaitMulti+0x28>
    89cc:	e5d20030 	ldrb	r0, [r2, #48]	; 0x30
    89d0:	e3023730 	movw	r3, #10032	; 0x2730
    89d4:	e3403001 	movt	r3, #1
    89d8:	e5d2c031 	ldrb	ip, [r2, #49]	; 0x31
    89dc:	e7d31000 	ldrb	r1, [r3, r0]
    89e0:	e1c1100c 	bic	r1, r1, ip
    89e4:	e7c31000 	strb	r1, [r3, r0]
    89e8:	e3510000 	cmp	r1, #0
    89ec:	1a000005 	bne	8a08 <OS_EventTaskWaitMulti+0x98>
    89f0:	e302372c 	movw	r3, #10028	; 0x272c
    89f4:	e3403001 	movt	r3, #1
    89f8:	e5d21032 	ldrb	r1, [r2, #50]	; 0x32
    89fc:	e5d32000 	ldrb	r2, [r3]
    8a00:	e1c22001 	bic	r2, r2, r1
    8a04:	e5c32000 	strb	r2, [r3]
    8a08:	e8bd0030 	pop	{r4, r5}
    8a0c:	e12fff1e 	bx	lr

00008a10 <OS_EventTaskRemove>:
    8a10:	e5d02030 	ldrb	r2, [r0, #48]	; 0x30
    8a14:	e5d0c031 	ldrb	ip, [r0, #49]	; 0x31
    8a18:	e0812002 	add	r2, r1, r2
    8a1c:	e5d2300b 	ldrb	r3, [r2, #11]
    8a20:	e1c3300c 	bic	r3, r3, ip
    8a24:	e5c2300b 	strb	r3, [r2, #11]
    8a28:	e3530000 	cmp	r3, #0
    8a2c:	05d1300a 	ldrbeq	r3, [r1, #10]
    8a30:	05d02032 	ldrbeq	r2, [r0, #50]	; 0x32
    8a34:	01c33002 	biceq	r3, r3, r2
    8a38:	05c1300a 	strbeq	r3, [r1, #10]
    8a3c:	e12fff1e 	bx	lr

00008a40 <OS_EventTaskRemoveMulti>:
    8a40:	e5913000 	ldr	r3, [r1]
    8a44:	e92d0030 	push	{r4, r5}
    8a48:	e3530000 	cmp	r3, #0
    8a4c:	e5d0c030 	ldrb	ip, [r0, #48]	; 0x30
    8a50:	e5d05032 	ldrb	r5, [r0, #50]	; 0x32
    8a54:	e5d04031 	ldrb	r4, [r0, #49]	; 0x31
    8a58:	0a00000d 	beq	8a94 <OS_EventTaskRemoveMulti+0x54>
    8a5c:	e1e04004 	mvn	r4, r4
    8a60:	e1e05005 	mvn	r5, r5
    8a64:	e6ef4074 	uxtb	r4, r4
    8a68:	e083000c 	add	r0, r3, ip
    8a6c:	e5d0200b 	ldrb	r2, [r0, #11]
    8a70:	e0042002 	and	r2, r4, r2
    8a74:	e5c0200b 	strb	r2, [r0, #11]
    8a78:	e3520000 	cmp	r2, #0
    8a7c:	05d3200a 	ldrbeq	r2, [r3, #10]
    8a80:	00052002 	andeq	r2, r5, r2
    8a84:	05c3200a 	strbeq	r2, [r3, #10]
    8a88:	e5b13004 	ldr	r3, [r1, #4]!
    8a8c:	e3530000 	cmp	r3, #0
    8a90:	1afffff4 	bne	8a68 <OS_EventTaskRemoveMulti+0x28>
    8a94:	e8bd0030 	pop	{r4, r5}
    8a98:	e12fff1e 	bx	lr

00008a9c <OS_EventTaskRdy>:
    8a9c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    8aa0:	e1a05000 	mov	r5, r0
    8aa4:	e5d5c00a 	ldrb	ip, [r5, #10]
    8aa8:	e30f0c34 	movw	r0, #64564	; 0xfc34
    8aac:	e3400000 	movt	r0, #0
    8ab0:	e30340c8 	movw	r4, #12488	; 0x30c8
    8ab4:	e3404001 	movt	r4, #1
    8ab8:	e3a07000 	mov	r7, #0
    8abc:	e7d0c00c 	ldrb	ip, [r0, ip]
    8ac0:	e085600c 	add	r6, r5, ip
    8ac4:	e5d6600b 	ldrb	r6, [r6, #11]
    8ac8:	e7d06006 	ldrb	r6, [r0, r6]
    8acc:	e086618c 	add	r6, r6, ip, lsl #3
    8ad0:	e6ef6076 	uxtb	r6, r6
    8ad4:	e7944106 	ldr	r4, [r4, r6, lsl #2]
    8ad8:	e5d4002c 	ldrb	r0, [r4, #44]	; 0x2c
    8adc:	e5841024 	str	r1, [r4, #36]	; 0x24
    8ae0:	e1c02002 	bic	r2, r0, r2
    8ae4:	e5847028 	str	r7, [r4, #40]	; 0x28
    8ae8:	e2021008 	and	r1, r2, #8
    8aec:	e5c4202c 	strb	r2, [r4, #44]	; 0x2c
    8af0:	e5c4302d 	strb	r3, [r4, #45]	; 0x2d
    8af4:	e6ef1071 	uxtb	r1, r1
    8af8:	e1510007 	cmp	r1, r7
    8afc:	1a00000b 	bne	8b30 <OS_EventTaskRdy+0x94>
    8b00:	e302272c 	movw	r2, #10028	; 0x272c
    8b04:	e3023730 	movw	r3, #10032	; 0x2730
    8b08:	e3402001 	movt	r2, #1
    8b0c:	e3403001 	movt	r3, #1
    8b10:	e5d47032 	ldrb	r7, [r4, #50]	; 0x32
    8b14:	e5d28000 	ldrb	r8, [r2]
    8b18:	e7d3000c 	ldrb	r0, [r3, ip]
    8b1c:	e5d41031 	ldrb	r1, [r4, #49]	; 0x31
    8b20:	e1887007 	orr	r7, r8, r7
    8b24:	e5c27000 	strb	r7, [r2]
    8b28:	e1802001 	orr	r2, r0, r1
    8b2c:	e7c3200c 	strb	r2, [r3, ip]
    8b30:	e5d42030 	ldrb	r2, [r4, #48]	; 0x30
    8b34:	e5d41031 	ldrb	r1, [r4, #49]	; 0x31
    8b38:	e0852002 	add	r2, r5, r2
    8b3c:	e2822008 	add	r2, r2, #8
    8b40:	e5d23003 	ldrb	r3, [r2, #3]
    8b44:	e1c33001 	bic	r3, r3, r1
    8b48:	e5c23003 	strb	r3, [r2, #3]
    8b4c:	e3530000 	cmp	r3, #0
    8b50:	05d5300a 	ldrbeq	r3, [r5, #10]
    8b54:	05d42032 	ldrbeq	r2, [r4, #50]	; 0x32
    8b58:	01c33002 	biceq	r3, r3, r2
    8b5c:	05c5300a 	strbeq	r3, [r5, #10]
    8b60:	e5941020 	ldr	r1, [r4, #32]
    8b64:	e3510000 	cmp	r1, #0
    8b68:	0a000002 	beq	8b78 <OS_EventTaskRdy+0xdc>
    8b6c:	e1a00004 	mov	r0, r4
    8b70:	ebffffb2 	bl	8a40 <OS_EventTaskRemoveMulti>
    8b74:	e584501c 	str	r5, [r4, #28]
    8b78:	e1a00006 	mov	r0, r6
    8b7c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

00008b80 <OS_EventWaitListInit>:
    8b80:	e3a03000 	mov	r3, #0
    8b84:	e5c0300a 	strb	r3, [r0, #10]
    8b88:	e5c0300b 	strb	r3, [r0, #11]
    8b8c:	e5c0300c 	strb	r3, [r0, #12]
    8b90:	e5c0300d 	strb	r3, [r0, #13]
    8b94:	e5c0300e 	strb	r3, [r0, #14]
    8b98:	e5c0300f 	strb	r3, [r0, #15]
    8b9c:	e5c03010 	strb	r3, [r0, #16]
    8ba0:	e5c03011 	strb	r3, [r0, #17]
    8ba4:	e5c03012 	strb	r3, [r0, #18]
    8ba8:	e12fff1e 	bx	lr

00008bac <OS_MemClr>:
    8bac:	e3510000 	cmp	r1, #0
    8bb0:	012fff1e 	bxeq	lr
    8bb4:	e3a03000 	mov	r3, #0
    8bb8:	e2411001 	sub	r1, r1, #1
    8bbc:	e4c03001 	strb	r3, [r0], #1
    8bc0:	e6ff1071 	uxth	r1, r1
    8bc4:	e3510000 	cmp	r1, #0
    8bc8:	1afffffa 	bne	8bb8 <OS_MemClr+0xc>
    8bcc:	e12fff1e 	bx	lr

00008bd0 <OS_MemCopy>:
    8bd0:	e3520000 	cmp	r2, #0
    8bd4:	012fff1e 	bxeq	lr
    8bd8:	e2411001 	sub	r1, r1, #1
    8bdc:	e2422001 	sub	r2, r2, #1
    8be0:	e5f13001 	ldrb	r3, [r1, #1]!
    8be4:	e6ff2072 	uxth	r2, r2
    8be8:	e3520000 	cmp	r2, #0
    8bec:	e4c03001 	strb	r3, [r0], #1
    8bf0:	1afffff9 	bne	8bdc <OS_MemCopy+0xc>
    8bf4:	e12fff1e 	bx	lr

00008bf8 <OS_Sched>:
    8bf8:	e92d4070 	push	{r4, r5, r6, lr}
    8bfc:	e24dd008 	sub	sp, sp, #8
    8c00:	eb000aca 	bl	b730 <OS_CPU_SR_Save>
    8c04:	e302373c 	movw	r3, #10044	; 0x273c
    8c08:	e3403001 	movt	r3, #1
    8c0c:	e5d33000 	ldrb	r3, [r3]
    8c10:	e3530000 	cmp	r3, #0
    8c14:	1a000029 	bne	8cc0 <OS_Sched+0xc8>
    8c18:	e302368c 	movw	r3, #9868	; 0x268c
    8c1c:	e3403001 	movt	r3, #1
    8c20:	e5d33000 	ldrb	r3, [r3]
    8c24:	e3530000 	cmp	r3, #0
    8c28:	1a000024 	bne	8cc0 <OS_Sched+0xc8>
    8c2c:	e302272c 	movw	r2, #10028	; 0x272c
    8c30:	e3402001 	movt	r2, #1
    8c34:	e30f3c34 	movw	r3, #64564	; 0xfc34
    8c38:	e3403000 	movt	r3, #0
    8c3c:	e5d2c000 	ldrb	ip, [r2]
    8c40:	e3024730 	movw	r4, #10032	; 0x2730
    8c44:	e3404001 	movt	r4, #1
    8c48:	e3022695 	movw	r2, #9877	; 0x2695
    8c4c:	e3402001 	movt	r2, #1
    8c50:	e30310c8 	movw	r1, #12488	; 0x30c8
    8c54:	e7d3500c 	ldrb	r5, [r3, ip]
    8c58:	e3401001 	movt	r1, #1
    8c5c:	e5d26000 	ldrb	r6, [r2]
    8c60:	e302c694 	movw	ip, #9876	; 0x2694
    8c64:	e340c001 	movt	ip, #1
    8c68:	e3022728 	movw	r2, #10024	; 0x2728
    8c6c:	e7d44005 	ldrb	r4, [r4, r5]
    8c70:	e3402001 	movt	r2, #1
    8c74:	e7d33004 	ldrb	r3, [r3, r4]
    8c78:	e0833185 	add	r3, r3, r5, lsl #3
    8c7c:	e6ef3073 	uxtb	r3, r3
    8c80:	e5cc3000 	strb	r3, [ip]
    8c84:	e1560003 	cmp	r6, r3
    8c88:	e7913103 	ldr	r3, [r1, r3, lsl #2]
    8c8c:	e5823000 	str	r3, [r2]
    8c90:	0a00000a 	beq	8cc0 <OS_Sched+0xc8>
    8c94:	e3022718 	movw	r2, #10008	; 0x2718
    8c98:	e3402001 	movt	r2, #1
    8c9c:	e593c034 	ldr	ip, [r3, #52]	; 0x34
    8ca0:	e5921000 	ldr	r1, [r2]
    8ca4:	e28cc001 	add	ip, ip, #1
    8ca8:	e583c034 	str	ip, [r3, #52]	; 0x34
    8cac:	e2813001 	add	r3, r1, #1
    8cb0:	e5823000 	str	r3, [r2]
    8cb4:	e58d0004 	str	r0, [sp, #4]
    8cb8:	eb000ad5 	bl	b814 <OSCtxSw>
    8cbc:	e59d0004 	ldr	r0, [sp, #4]
    8cc0:	e28dd008 	add	sp, sp, #8
    8cc4:	e8bd4070 	pop	{r4, r5, r6, lr}
    8cc8:	ea000aab 	b	b77c <OS_CPU_SR_Restore>

00008ccc <OSSchedUnlock>:
    8ccc:	e92d4008 	push	{r3, lr}
    8cd0:	e302368e 	movw	r3, #9870	; 0x268e
    8cd4:	e3403001 	movt	r3, #1
    8cd8:	e5d33000 	ldrb	r3, [r3]
    8cdc:	e3530001 	cmp	r3, #1
    8ce0:	18bd8008 	popne	{r3, pc}
    8ce4:	eb000a91 	bl	b730 <OS_CPU_SR_Save>
    8ce8:	e302373c 	movw	r3, #10044	; 0x273c
    8cec:	e3403001 	movt	r3, #1
    8cf0:	e5d33000 	ldrb	r3, [r3]
    8cf4:	e3530000 	cmp	r3, #0
    8cf8:	1a00000c 	bne	8d30 <OSSchedUnlock+0x64>
    8cfc:	e302368c 	movw	r3, #9868	; 0x268c
    8d00:	e3403001 	movt	r3, #1
    8d04:	e5d32000 	ldrb	r2, [r3]
    8d08:	e3520000 	cmp	r2, #0
    8d0c:	0a000007 	beq	8d30 <OSSchedUnlock+0x64>
    8d10:	e2422001 	sub	r2, r2, #1
    8d14:	e6ef2072 	uxtb	r2, r2
    8d18:	e5c32000 	strb	r2, [r3]
    8d1c:	e3520000 	cmp	r2, #0
    8d20:	1a000002 	bne	8d30 <OSSchedUnlock+0x64>
    8d24:	eb000a94 	bl	b77c <OS_CPU_SR_Restore>
    8d28:	e8bd4008 	pop	{r3, lr}
    8d2c:	eaffffb1 	b	8bf8 <OS_Sched>
    8d30:	e8bd4008 	pop	{r3, lr}
    8d34:	ea000a90 	b	b77c <OS_CPU_SR_Restore>

00008d38 <OSEventPendMulti>:
    8d38:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8d3c:	e1a06001 	mov	r6, r1
    8d40:	e3a01000 	mov	r1, #0
    8d44:	e5861000 	str	r1, [r6]
    8d48:	e5904000 	ldr	r4, [r0]
    8d4c:	e24dd00c 	sub	sp, sp, #12
    8d50:	e1a05000 	mov	r5, r0
    8d54:	e1540001 	cmp	r4, r1
    8d58:	0a00000f 	beq	8d9c <OSEventPendMulti+0x64>
    8d5c:	e1a01004 	mov	r1, r4
    8d60:	e5d11000 	ldrb	r1, [r1]
    8d64:	e3510001 	cmp	r1, #1
    8d68:	0a000008 	beq	8d90 <OSEventPendMulti+0x58>
    8d6c:	e3510003 	cmp	r1, #3
    8d70:	0a000006 	beq	8d90 <OSEventPendMulti+0x58>
    8d74:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
    8d78:	e3a07000 	mov	r7, #0
    8d7c:	e3a03001 	mov	r3, #1
    8d80:	e5c23000 	strb	r3, [r2]
    8d84:	e1a00007 	mov	r0, r7
    8d88:	e28dd00c 	add	sp, sp, #12
    8d8c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    8d90:	e5b01004 	ldr	r1, [r0, #4]!
    8d94:	e3510000 	cmp	r1, #0
    8d98:	1afffff0 	bne	8d60 <OSEventPendMulti+0x28>
    8d9c:	e302173c 	movw	r1, #10044	; 0x273c
    8da0:	e3401001 	movt	r1, #1
    8da4:	e5d17000 	ldrb	r7, [r1]
    8da8:	e3570000 	cmp	r7, #0
    8dac:	1a000008 	bne	8dd4 <OSEventPendMulti+0x9c>
    8db0:	e302168c 	movw	r1, #9868	; 0x268c
    8db4:	e3401001 	movt	r1, #1
    8db8:	e5d18000 	ldrb	r8, [r1]
    8dbc:	e3580000 	cmp	r8, #0
    8dc0:	0a000008 	beq	8de8 <OSEventPendMulti+0xb0>
    8dc4:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
    8dc8:	e3a0300d 	mov	r3, #13
    8dcc:	e5c23000 	strb	r3, [r2]
    8dd0:	eaffffeb 	b	8d84 <OSEventPendMulti+0x4c>
    8dd4:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
    8dd8:	e3a03002 	mov	r3, #2
    8ddc:	e3a07000 	mov	r7, #0
    8de0:	e5c23000 	strb	r3, [r2]
    8de4:	eaffffe6 	b	8d84 <OSEventPendMulti+0x4c>
    8de8:	e88d000c 	stm	sp, {r2, r3}
    8dec:	eb000a4f 	bl	b730 <OS_CPU_SR_Save>
    8df0:	e3540000 	cmp	r4, #0
    8df4:	e89d000c 	ldm	sp, {r2, r3}
    8df8:	e1a0a000 	mov	sl, r0
    8dfc:	0a000075 	beq	8fd8 <OSEventPendMulti+0x2a0>
    8e00:	e1a0c008 	mov	ip, r8
    8e04:	e1a0e005 	mov	lr, r5
    8e08:	e1a07008 	mov	r7, r8
    8e0c:	e1a00008 	mov	r0, r8
    8e10:	e1a09008 	mov	r9, r8
    8e14:	e5d41000 	ldrb	r1, [r4]
    8e18:	e3510001 	cmp	r1, #1
    8e1c:	0a000009 	beq	8e48 <OSEventPendMulti+0x110>
    8e20:	e3510003 	cmp	r1, #3
    8e24:	0a000045 	beq	8f40 <OSEventPendMulti+0x208>
    8e28:	e1a0000a 	mov	r0, sl
    8e2c:	eb000a52 	bl	b77c <OS_CPU_SR_Restore>
    8e30:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
    8e34:	e3a03000 	mov	r3, #0
    8e38:	e5863000 	str	r3, [r6]
    8e3c:	e3a03001 	mov	r3, #1
    8e40:	e5c23000 	strb	r3, [r2]
    8e44:	eaffffce 	b	8d84 <OSEventPendMulti+0x4c>
    8e48:	e5948004 	ldr	r8, [r4, #4]
    8e4c:	e287b001 	add	fp, r7, #1
    8e50:	e3580000 	cmp	r8, #0
    8e54:	038cc002 	orreq	ip, ip, #2
    8e58:	16ff707b 	uxthne	r7, fp
    8e5c:	11a00001 	movne	r0, r1
    8e60:	14828004 	strne	r8, [r2], #4
    8e64:	06efc07c 	uxtbeq	ip, ip
    8e68:	15849004 	strne	r9, [r4, #4]
    8e6c:	14864004 	strne	r4, [r6], #4
    8e70:	e5be4004 	ldr	r4, [lr, #4]!
    8e74:	e3540000 	cmp	r4, #0
    8e78:	1affffe5 	bne	8e14 <OSEventPendMulti+0xdc>
    8e7c:	e3500001 	cmp	r0, #1
    8e80:	0a00005d 	beq	8ffc <OSEventPendMulti+0x2c4>
    8e84:	e3028740 	movw	r8, #10048	; 0x2740
    8e88:	e3408001 	movt	r8, #1
    8e8c:	e3a04000 	mov	r4, #0
    8e90:	e1a00005 	mov	r0, r5
    8e94:	e5981000 	ldr	r1, [r8]
    8e98:	e5d1e02c 	ldrb	lr, [r1, #44]	; 0x2c
    8e9c:	e5813028 	str	r3, [r1, #40]	; 0x28
    8ea0:	e5c1402d 	strb	r4, [r1, #45]	; 0x2d
    8ea4:	e1e03c8e 	mvn	r3, lr, lsl #25
    8ea8:	e1e03ca3 	mvn	r3, r3, lsr #25
    8eac:	e18c3003 	orr	r3, ip, r3
    8eb0:	e5c1302c 	strb	r3, [r1, #44]	; 0x2c
    8eb4:	e58d2000 	str	r2, [sp]
    8eb8:	ebfffeac 	bl	8970 <OS_EventTaskWaitMulti>
    8ebc:	e1a0000a 	mov	r0, sl
    8ec0:	eb000a2d 	bl	b77c <OS_CPU_SR_Restore>
    8ec4:	ebffff4b 	bl	8bf8 <OS_Sched>
    8ec8:	eb000a18 	bl	b730 <OS_CPU_SR_Save>
    8ecc:	e5983000 	ldr	r3, [r8]
    8ed0:	e59d2000 	ldr	r2, [sp]
    8ed4:	e5d3102d 	ldrb	r1, [r3, #45]	; 0x2d
    8ed8:	e1510004 	cmp	r1, r4
    8edc:	e1a0a000 	mov	sl, r0
    8ee0:	0a000022 	beq	8f70 <OSEventPendMulti+0x238>
    8ee4:	e3510002 	cmp	r1, #2
    8ee8:	11a00003 	movne	r0, r3
    8eec:	0a00001f 	beq	8f70 <OSEventPendMulti+0x238>
    8ef0:	e1a01005 	mov	r1, r5
    8ef4:	e58d2000 	str	r2, [sp]
    8ef8:	ebfffed0 	bl	8a40 <OS_EventTaskRemoveMulti>
    8efc:	e59d2000 	ldr	r2, [sp]
    8f00:	e1a05006 	mov	r5, r6
    8f04:	e5980000 	ldr	r0, [r8]
    8f08:	e5d0302d 	ldrb	r3, [r0, #45]	; 0x2d
    8f0c:	e3530000 	cmp	r3, #0
    8f10:	1a00001f 	bne	8f94 <OSEventPendMulti+0x25c>
    8f14:	e5d41000 	ldrb	r1, [r4]
    8f18:	e3510001 	cmp	r1, #1
    8f1c:	2a00003c 	bcs	9014 <OSEventPendMulti+0x2dc>
    8f20:	e1a0000a 	mov	r0, sl
    8f24:	eb000a14 	bl	b77c <OS_CPU_SR_Restore>
    8f28:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
    8f2c:	e3a03000 	mov	r3, #0
    8f30:	e5853000 	str	r3, [r5]
    8f34:	e3a03001 	mov	r3, #1
    8f38:	e5c23000 	strb	r3, [r2]
    8f3c:	eaffff90 	b	8d84 <OSEventPendMulti+0x4c>
    8f40:	e1d410b8 	ldrh	r1, [r4, #8]
    8f44:	e287b001 	add	fp, r7, #1
    8f48:	e38c8001 	orr	r8, ip, #1
    8f4c:	e3510000 	cmp	r1, #0
    8f50:	e2411001 	sub	r1, r1, #1
    8f54:	16ff707b 	uxthne	r7, fp
    8f58:	11c410b8 	strhne	r1, [r4, #8]
    8f5c:	13a00001 	movne	r0, #1
    8f60:	14864004 	strne	r4, [r6], #4
    8f64:	06efc078 	uxtbeq	ip, r8
    8f68:	14829004 	strne	r9, [r2], #4
    8f6c:	eaffffbf 	b	8e70 <OSEventPendMulti+0x138>
    8f70:	e593401c 	ldr	r4, [r3, #28]
    8f74:	e3540000 	cmp	r4, #0
    8f78:	0a00002e 	beq	9038 <OSEventPendMulti+0x300>
    8f7c:	e1a05006 	mov	r5, r6
    8f80:	e3a03000 	mov	r3, #0
    8f84:	e4854004 	str	r4, [r5], #4
    8f88:	e3a07001 	mov	r7, #1
    8f8c:	e5863004 	str	r3, [r6, #4]
    8f90:	eaffffdb 	b	8f04 <OSEventPendMulti+0x1cc>
    8f94:	e3530002 	cmp	r3, #2
    8f98:	0a000011 	beq	8fe4 <OSEventPendMulti+0x2ac>
    8f9c:	e3a03000 	mov	r3, #0
    8fa0:	e5823000 	str	r3, [r2]
    8fa4:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
    8fa8:	e3a0300a 	mov	r3, #10
    8fac:	e5c23000 	strb	r3, [r2]
    8fb0:	e5983000 	ldr	r3, [r8]
    8fb4:	e3a02000 	mov	r2, #0
    8fb8:	e1a0000a 	mov	r0, sl
    8fbc:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    8fc0:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    8fc4:	e583201c 	str	r2, [r3, #28]
    8fc8:	e5832020 	str	r2, [r3, #32]
    8fcc:	e5832024 	str	r2, [r3, #36]	; 0x24
    8fd0:	eb0009e9 	bl	b77c <OS_CPU_SR_Restore>
    8fd4:	eaffff6a 	b	8d84 <OSEventPendMulti+0x4c>
    8fd8:	e1a0c004 	mov	ip, r4
    8fdc:	e1a07004 	mov	r7, r4
    8fe0:	eaffffa7 	b	8e84 <OSEventPendMulti+0x14c>
    8fe4:	e3a03000 	mov	r3, #0
    8fe8:	e5823000 	str	r3, [r2]
    8fec:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
    8ff0:	e3a0300e 	mov	r3, #14
    8ff4:	e5c23000 	strb	r3, [r2]
    8ff8:	eaffffec 	b	8fb0 <OSEventPendMulti+0x278>
    8ffc:	e5864000 	str	r4, [r6]
    9000:	e1a0000a 	mov	r0, sl
    9004:	eb0009dc 	bl	b77c <OS_CPU_SR_Restore>
    9008:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
    900c:	e5c34000 	strb	r4, [r3]
    9010:	eaffff5b 	b	8d84 <OSEventPendMulti+0x4c>
    9014:	e3510002 	cmp	r1, #2
    9018:	9a00000a 	bls	9048 <OSEventPendMulti+0x310>
    901c:	e3510003 	cmp	r1, #3
    9020:	1affffbe 	bne	8f20 <OSEventPendMulti+0x1e8>
    9024:	e5823000 	str	r3, [r2]
    9028:	e3a03000 	mov	r3, #0
    902c:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
    9030:	e5c23000 	strb	r3, [r2]
    9034:	eaffffdd 	b	8fb0 <OSEventPendMulti+0x278>
    9038:	e3a01001 	mov	r1, #1
    903c:	e1a00003 	mov	r0, r3
    9040:	e5c3102d 	strb	r1, [r3, #45]	; 0x2d
    9044:	eaffffa9 	b	8ef0 <OSEventPendMulti+0x1b8>
    9048:	e5903024 	ldr	r3, [r0, #36]	; 0x24
    904c:	eafffff4 	b	9024 <OSEventPendMulti+0x2ec>

00009050 <OS_StrLen>:
    9050:	e5d03000 	ldrb	r3, [r0]
    9054:	e3530000 	cmp	r3, #0
    9058:	0a000007 	beq	907c <OS_StrLen+0x2c>
    905c:	e1a03000 	mov	r3, r0
    9060:	e3a00000 	mov	r0, #0
    9064:	e5f32001 	ldrb	r2, [r3, #1]!
    9068:	e2800001 	add	r0, r0, #1
    906c:	e3520000 	cmp	r2, #0
    9070:	e6ef0070 	uxtb	r0, r0
    9074:	1afffffa 	bne	9064 <OS_StrLen+0x14>
    9078:	e12fff1e 	bx	lr
    907c:	e1a00003 	mov	r0, r3
    9080:	e12fff1e 	bx	lr

00009084 <OS_TaskStatStkChk>:
    9084:	e92d4030 	push	{r4, r5, lr}
    9088:	e30350c8 	movw	r5, #12488	; 0x30c8
    908c:	e24dd00c 	sub	sp, sp, #12
    9090:	e3405001 	movt	r5, #1
    9094:	e3a04000 	mov	r4, #0
    9098:	e6ef0074 	uxtb	r0, r4
    909c:	e1a0100d 	mov	r1, sp
    90a0:	eb000847 	bl	b1c4 <OSTaskStkChk>
    90a4:	e3500000 	cmp	r0, #0
    90a8:	1a00000a 	bne	90d8 <OS_TaskStatStkChk+0x54>
    90ac:	e7953104 	ldr	r3, [r5, r4, lsl #2]
    90b0:	e3530000 	cmp	r3, #0
    90b4:	0a000007 	beq	90d8 <OS_TaskStatStkChk+0x54>
    90b8:	e3530001 	cmp	r3, #1
    90bc:	0a000005 	beq	90d8 <OS_TaskStatStkChk+0x54>
    90c0:	e593100c 	ldr	r1, [r3, #12]
    90c4:	e59d0004 	ldr	r0, [sp, #4]
    90c8:	e5932008 	ldr	r2, [r3, #8]
    90cc:	e5830044 	str	r0, [r3, #68]	; 0x44
    90d0:	e0822101 	add	r2, r2, r1, lsl #2
    90d4:	e5832040 	str	r2, [r3, #64]	; 0x40
    90d8:	e2844001 	add	r4, r4, #1
    90dc:	e3540040 	cmp	r4, #64	; 0x40
    90e0:	1affffec 	bne	9098 <OS_TaskStatStkChk+0x14>
    90e4:	e28dd00c 	add	sp, sp, #12
    90e8:	e8bd8030 	pop	{r4, r5, pc}

000090ec <OS_TCBInit>:
    90ec:	e92d45f8 	push	{r3, r4, r5, r6, r7, r8, sl, lr}
    90f0:	e1a06000 	mov	r6, r0
    90f4:	e1a0a001 	mov	sl, r1
    90f8:	e1a08002 	mov	r8, r2
    90fc:	e1a07003 	mov	r7, r3
    9100:	eb00098a 	bl	b730 <OS_CPU_SR_Save>
    9104:	e302c71c 	movw	ip, #10012	; 0x271c
    9108:	e340c001 	movt	ip, #1
    910c:	e59c4000 	ldr	r4, [ip]
    9110:	e3540000 	cmp	r4, #0
    9114:	0a00004d 	beq	9250 <OS_TCBInit+0x164>
    9118:	e5943014 	ldr	r3, [r4, #20]
    911c:	e3a05000 	mov	r5, #0
    9120:	e58c3000 	str	r3, [ip]
    9124:	eb000994 	bl	b77c <OS_CPU_SR_Restore>
    9128:	e584a000 	str	sl, [r4]
    912c:	e206c007 	and	ip, r6, #7
    9130:	e59da024 	ldr	sl, [sp, #36]	; 0x24
    9134:	e1a031a6 	lsr	r3, r6, #3
    9138:	e5848008 	str	r8, [r4, #8]
    913c:	e3a02001 	mov	r2, #1
    9140:	e1dd82b8 	ldrh	r8, [sp, #40]	; 0x28
    9144:	e1a0e312 	lsl	lr, r2, r3
    9148:	e584a004 	str	sl, [r4, #4]
    914c:	e1a02c12 	lsl	r2, r2, ip
    9150:	e59da020 	ldr	sl, [sp, #32]
    9154:	e1a00004 	mov	r0, r4
    9158:	e5c4c02f 	strb	ip, [r4, #47]	; 0x2f
    915c:	e30f1fd4 	movw	r1, #65492	; 0xffd4
    9160:	e5c4e032 	strb	lr, [r4, #50]	; 0x32
    9164:	e3401000 	movt	r1, #0
    9168:	e5c42031 	strb	r2, [r4, #49]	; 0x31
    916c:	e5841048 	str	r1, [r4, #72]	; 0x48
    9170:	e5c43030 	strb	r3, [r4, #48]	; 0x30
    9174:	e5c4602e 	strb	r6, [r4, #46]	; 0x2e
    9178:	e5c4502c 	strb	r5, [r4, #44]	; 0x2c
    917c:	e5c4502d 	strb	r5, [r4, #45]	; 0x2d
    9180:	e5845028 	str	r5, [r4, #40]	; 0x28
    9184:	e1c481b0 	strh	r8, [r4, #16]
    9188:	e1c471b2 	strh	r7, [r4, #18]
    918c:	e5c45033 	strb	r5, [r4, #51]	; 0x33
    9190:	e584501c 	str	r5, [r4, #28]
    9194:	e5845020 	str	r5, [r4, #32]
    9198:	e5845024 	str	r5, [r4, #36]	; 0x24
    919c:	e5845034 	str	r5, [r4, #52]	; 0x34
    91a0:	e584503c 	str	r5, [r4, #60]	; 0x3c
    91a4:	e5845038 	str	r5, [r4, #56]	; 0x38
    91a8:	e5845040 	str	r5, [r4, #64]	; 0x40
    91ac:	e5845044 	str	r5, [r4, #68]	; 0x44
    91b0:	e584504c 	str	r5, [r4, #76]	; 0x4c
    91b4:	e584a00c 	str	sl, [r4, #12]
    91b8:	eb000ad9 	bl	bd24 <OSTCBInitHook>
    91bc:	eb00095b 	bl	b730 <OS_CPU_SR_Save>
    91c0:	e30330c8 	movw	r3, #12488	; 0x30c8
    91c4:	e3403001 	movt	r3, #1
    91c8:	e7834106 	str	r4, [r3, r6, lsl #2]
    91cc:	eb00096a 	bl	b77c <OS_CPU_SR_Restore>
    91d0:	e1a00004 	mov	r0, r4
    91d4:	eb000a90 	bl	bc1c <OSTaskCreateHook>
    91d8:	eb000954 	bl	b730 <OS_CPU_SR_Save>
    91dc:	e302c698 	movw	ip, #9880	; 0x2698
    91e0:	e340c001 	movt	ip, #1
    91e4:	e302172c 	movw	r1, #10028	; 0x272c
    91e8:	e3401001 	movt	r1, #1
    91ec:	e5d4e030 	ldrb	lr, [r4, #48]	; 0x30
    91f0:	e59c3000 	ldr	r3, [ip]
    91f4:	e3022730 	movw	r2, #10032	; 0x2730
    91f8:	e5845018 	str	r5, [r4, #24]
    91fc:	e3402001 	movt	r2, #1
    9200:	e1530005 	cmp	r3, r5
    9204:	e5d17000 	ldrb	r7, [r1]
    9208:	e5843014 	str	r3, [r4, #20]
    920c:	15834018 	strne	r4, [r3, #24]
    9210:	e3023720 	movw	r3, #10016	; 0x2720
    9214:	e5d46032 	ldrb	r6, [r4, #50]	; 0x32
    9218:	e3403001 	movt	r3, #1
    921c:	e7d2800e 	ldrb	r8, [r2, lr]
    9220:	e5d45031 	ldrb	r5, [r4, #49]	; 0x31
    9224:	e1876006 	orr	r6, r7, r6
    9228:	e5d37000 	ldrb	r7, [r3]
    922c:	e58c4000 	str	r4, [ip]
    9230:	e1885005 	orr	r5, r8, r5
    9234:	e287c001 	add	ip, r7, #1
    9238:	e5c16000 	strb	r6, [r1]
    923c:	e7c2500e 	strb	r5, [r2, lr]
    9240:	e5c3c000 	strb	ip, [r3]
    9244:	eb00094c 	bl	b77c <OS_CPU_SR_Restore>
    9248:	e3a00000 	mov	r0, #0
    924c:	e8bd85f8 	pop	{r3, r4, r5, r6, r7, r8, sl, pc}
    9250:	eb000949 	bl	b77c <OS_CPU_SR_Restore>
    9254:	e3a00042 	mov	r0, #66	; 0x42
    9258:	e8bd85f8 	pop	{r3, r4, r5, r6, r7, r8, sl, pc}

0000925c <OSMboxAccept>:
    925c:	e92d4038 	push	{r3, r4, r5, lr}
    9260:	e1a04000 	mov	r4, r0
    9264:	e5d03000 	ldrb	r3, [r0]
    9268:	e3530001 	cmp	r3, #1
    926c:	13a05000 	movne	r5, #0
    9270:	1a000004 	bne	9288 <OSMboxAccept+0x2c>
    9274:	eb00092d 	bl	b730 <OS_CPU_SR_Save>
    9278:	e5945004 	ldr	r5, [r4, #4]
    927c:	e3a03000 	mov	r3, #0
    9280:	e5843004 	str	r3, [r4, #4]
    9284:	eb00093c 	bl	b77c <OS_CPU_SR_Restore>
    9288:	e1a00005 	mov	r0, r5
    928c:	e8bd8038 	pop	{r3, r4, r5, pc}

00009290 <OSMboxCreate>:
    9290:	e302373c 	movw	r3, #10044	; 0x273c
    9294:	e3403001 	movt	r3, #1
    9298:	e92d4070 	push	{r4, r5, r6, lr}
    929c:	e1a06000 	mov	r6, r0
    92a0:	e5d35000 	ldrb	r5, [r3]
    92a4:	e3550000 	cmp	r5, #0
    92a8:	13a04000 	movne	r4, #0
    92ac:	1a000011 	bne	92f8 <OSMboxCreate+0x68>
    92b0:	eb00091e 	bl	b730 <OS_CPU_SR_Save>
    92b4:	e3023738 	movw	r3, #10040	; 0x2738
    92b8:	e3403001 	movt	r3, #1
    92bc:	e5934000 	ldr	r4, [r3]
    92c0:	e3540000 	cmp	r4, #0
    92c4:	0a00000d 	beq	9300 <OSMboxCreate+0x70>
    92c8:	e5942004 	ldr	r2, [r4, #4]
    92cc:	e5832000 	str	r2, [r3]
    92d0:	eb000929 	bl	b77c <OS_CPU_SR_Restore>
    92d4:	e3a03001 	mov	r3, #1
    92d8:	e1c450b8 	strh	r5, [r4, #8]
    92dc:	e5c43000 	strb	r3, [r4]
    92e0:	e1a00004 	mov	r0, r4
    92e4:	e30f3fd4 	movw	r3, #65492	; 0xffd4
    92e8:	e5846004 	str	r6, [r4, #4]
    92ec:	e3403000 	movt	r3, #0
    92f0:	e5843014 	str	r3, [r4, #20]
    92f4:	ebfffe21 	bl	8b80 <OS_EventWaitListInit>
    92f8:	e1a00004 	mov	r0, r4
    92fc:	e8bd8070 	pop	{r4, r5, r6, pc}
    9300:	eb00091d 	bl	b77c <OS_CPU_SR_Restore>
    9304:	e1a00004 	mov	r0, r4
    9308:	e8bd8070 	pop	{r4, r5, r6, pc}

0000930c <OSMboxDel>:
    930c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    9310:	e1a04000 	mov	r4, r0
    9314:	e5d03000 	ldrb	r3, [r0]
    9318:	e24dd008 	sub	sp, sp, #8
    931c:	e1a05002 	mov	r5, r2
    9320:	e3530001 	cmp	r3, #1
    9324:	13a03001 	movne	r3, #1
    9328:	15c23000 	strbne	r3, [r2]
    932c:	0a000002 	beq	933c <OSMboxDel+0x30>
    9330:	e1a00004 	mov	r0, r4
    9334:	e28dd008 	add	sp, sp, #8
    9338:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    933c:	e302373c 	movw	r3, #10044	; 0x273c
    9340:	e3403001 	movt	r3, #1
    9344:	e5d33000 	ldrb	r3, [r3]
    9348:	e3530000 	cmp	r3, #0
    934c:	13a0300f 	movne	r3, #15
    9350:	15c23000 	strbne	r3, [r2]
    9354:	1afffff5 	bne	9330 <OSMboxDel+0x24>
    9358:	e58d1004 	str	r1, [sp, #4]
    935c:	eb0008f3 	bl	b730 <OS_CPU_SR_Save>
    9360:	e5d4700a 	ldrb	r7, [r4, #10]
    9364:	e59d1004 	ldr	r1, [sp, #4]
    9368:	e2977000 	adds	r7, r7, #0
    936c:	13a07001 	movne	r7, #1
    9370:	e3510000 	cmp	r1, #0
    9374:	e1a06007 	mov	r6, r7
    9378:	e1a08000 	mov	r8, r0
    937c:	1a00000f 	bne	93c0 <OSMboxDel+0xb4>
    9380:	e3570000 	cmp	r7, #0
    9384:	1a000013 	bne	93d8 <OSMboxDel+0xcc>
    9388:	e3023738 	movw	r3, #10040	; 0x2738
    938c:	e3403001 	movt	r3, #1
    9390:	e5c47000 	strb	r7, [r4]
    9394:	e30f2fd4 	movw	r2, #65492	; 0xffd4
    9398:	e5931000 	ldr	r1, [r3]
    939c:	e3402000 	movt	r2, #0
    93a0:	e1c470b8 	strh	r7, [r4, #8]
    93a4:	e5842014 	str	r2, [r4, #20]
    93a8:	e5841004 	str	r1, [r4, #4]
    93ac:	e5834000 	str	r4, [r3]
    93b0:	eb0008f1 	bl	b77c <OS_CPU_SR_Restore>
    93b4:	e1a04007 	mov	r4, r7
    93b8:	e5c57000 	strb	r7, [r5]
    93bc:	eaffffdb 	b	9330 <OSMboxDel+0x24>
    93c0:	e3510001 	cmp	r1, #1
    93c4:	0a000007 	beq	93e8 <OSMboxDel+0xdc>
    93c8:	eb0008eb 	bl	b77c <OS_CPU_SR_Restore>
    93cc:	e3a03007 	mov	r3, #7
    93d0:	e5c53000 	strb	r3, [r5]
    93d4:	eaffffd5 	b	9330 <OSMboxDel+0x24>
    93d8:	eb0008e7 	bl	b77c <OS_CPU_SR_Restore>
    93dc:	e3a03049 	mov	r3, #73	; 0x49
    93e0:	e5c53000 	strb	r3, [r5]
    93e4:	eaffffd1 	b	9330 <OSMboxDel+0x24>
    93e8:	e3570000 	cmp	r7, #0
    93ec:	0a000007 	beq	9410 <OSMboxDel+0x104>
    93f0:	e3a02002 	mov	r2, #2
    93f4:	e1a00004 	mov	r0, r4
    93f8:	e1a03002 	mov	r3, r2
    93fc:	e3a01000 	mov	r1, #0
    9400:	ebfffda5 	bl	8a9c <OS_EventTaskRdy>
    9404:	e5d4300a 	ldrb	r3, [r4, #10]
    9408:	e3530000 	cmp	r3, #0
    940c:	1afffff7 	bne	93f0 <OSMboxDel+0xe4>
    9410:	e3023738 	movw	r3, #10040	; 0x2738
    9414:	e3403001 	movt	r3, #1
    9418:	e3a01000 	mov	r1, #0
    941c:	e5c41000 	strb	r1, [r4]
    9420:	e593c000 	ldr	ip, [r3]
    9424:	e30f2fd4 	movw	r2, #65492	; 0xffd4
    9428:	e1c410b8 	strh	r1, [r4, #8]
    942c:	e3402000 	movt	r2, #0
    9430:	e1a00008 	mov	r0, r8
    9434:	e5842014 	str	r2, [r4, #20]
    9438:	e584c004 	str	ip, [r4, #4]
    943c:	e5834000 	str	r4, [r3]
    9440:	eb0008cd 	bl	b77c <OS_CPU_SR_Restore>
    9444:	e3560001 	cmp	r6, #1
    9448:	0a000002 	beq	9458 <OSMboxDel+0x14c>
    944c:	e3a04000 	mov	r4, #0
    9450:	e5c54000 	strb	r4, [r5]
    9454:	eaffffb5 	b	9330 <OSMboxDel+0x24>
    9458:	ebfffde6 	bl	8bf8 <OS_Sched>
    945c:	eafffffa 	b	944c <OSMboxDel+0x140>

00009460 <OSMboxPend>:
    9460:	e92d45f8 	push	{r3, r4, r5, r6, r7, r8, sl, lr}
    9464:	e1a04000 	mov	r4, r0
    9468:	e5d03000 	ldrb	r3, [r0]
    946c:	e1a08001 	mov	r8, r1
    9470:	e1a07002 	mov	r7, r2
    9474:	e3530001 	cmp	r3, #1
    9478:	13a03001 	movne	r3, #1
    947c:	13a05000 	movne	r5, #0
    9480:	15c23000 	strbne	r3, [r2]
    9484:	1a000016 	bne	94e4 <OSMboxPend+0x84>
    9488:	e302373c 	movw	r3, #10044	; 0x273c
    948c:	e3403001 	movt	r3, #1
    9490:	e5d35000 	ldrb	r5, [r3]
    9494:	e3550000 	cmp	r5, #0
    9498:	13a03002 	movne	r3, #2
    949c:	13a05000 	movne	r5, #0
    94a0:	15c23000 	strbne	r3, [r2]
    94a4:	1a00000e 	bne	94e4 <OSMboxPend+0x84>
    94a8:	e302368c 	movw	r3, #9868	; 0x268c
    94ac:	e3403001 	movt	r3, #1
    94b0:	e5d36000 	ldrb	r6, [r3]
    94b4:	e3560000 	cmp	r6, #0
    94b8:	13a0300d 	movne	r3, #13
    94bc:	15c23000 	strbne	r3, [r2]
    94c0:	1a000007 	bne	94e4 <OSMboxPend+0x84>
    94c4:	eb000899 	bl	b730 <OS_CPU_SR_Save>
    94c8:	e5945004 	ldr	r5, [r4, #4]
    94cc:	e3550000 	cmp	r5, #0
    94d0:	e1a0a000 	mov	sl, r0
    94d4:	0a000004 	beq	94ec <OSMboxPend+0x8c>
    94d8:	e5846004 	str	r6, [r4, #4]
    94dc:	eb0008a6 	bl	b77c <OS_CPU_SR_Restore>
    94e0:	e5c76000 	strb	r6, [r7]
    94e4:	e1a00005 	mov	r0, r5
    94e8:	e8bd85f8 	pop	{r3, r4, r5, r6, r7, r8, sl, pc}
    94ec:	e3026740 	movw	r6, #10048	; 0x2740
    94f0:	e3406001 	movt	r6, #1
    94f4:	e1a00004 	mov	r0, r4
    94f8:	e5963000 	ldr	r3, [r6]
    94fc:	e5d3202c 	ldrb	r2, [r3, #44]	; 0x2c
    9500:	e5838028 	str	r8, [r3, #40]	; 0x28
    9504:	e5c3502d 	strb	r5, [r3, #45]	; 0x2d
    9508:	e3822002 	orr	r2, r2, #2
    950c:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    9510:	ebfffcf6 	bl	88f0 <OS_EventTaskWait>
    9514:	e1a0000a 	mov	r0, sl
    9518:	eb000897 	bl	b77c <OS_CPU_SR_Restore>
    951c:	ebfffdb5 	bl	8bf8 <OS_Sched>
    9520:	eb000882 	bl	b730 <OS_CPU_SR_Save>
    9524:	e1a08000 	mov	r8, r0
    9528:	e5960000 	ldr	r0, [r6]
    952c:	e5d0302d 	ldrb	r3, [r0, #45]	; 0x2d
    9530:	e3530000 	cmp	r3, #0
    9534:	1a00000c 	bne	956c <OSMboxPend+0x10c>
    9538:	e5905024 	ldr	r5, [r0, #36]	; 0x24
    953c:	e5c73000 	strb	r3, [r7]
    9540:	e5963000 	ldr	r3, [r6]
    9544:	e3a02000 	mov	r2, #0
    9548:	e1a00008 	mov	r0, r8
    954c:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    9550:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    9554:	e583201c 	str	r2, [r3, #28]
    9558:	e5832020 	str	r2, [r3, #32]
    955c:	e5832024 	str	r2, [r3, #36]	; 0x24
    9560:	eb000885 	bl	b77c <OS_CPU_SR_Restore>
    9564:	e1a00005 	mov	r0, r5
    9568:	e8bd85f8 	pop	{r3, r4, r5, r6, r7, r8, sl, pc}
    956c:	e3530002 	cmp	r3, #2
    9570:	0a000004 	beq	9588 <OSMboxPend+0x128>
    9574:	e1a01004 	mov	r1, r4
    9578:	ebfffd24 	bl	8a10 <OS_EventTaskRemove>
    957c:	e3a0300a 	mov	r3, #10
    9580:	e5c73000 	strb	r3, [r7]
    9584:	eaffffed 	b	9540 <OSMboxPend+0xe0>
    9588:	e3a0300e 	mov	r3, #14
    958c:	e5c73000 	strb	r3, [r7]
    9590:	eaffffea 	b	9540 <OSMboxPend+0xe0>

00009594 <OSMboxPendAbort>:
    9594:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    9598:	e1a04000 	mov	r4, r0
    959c:	e5d05000 	ldrb	r5, [r0]
    95a0:	e24dd008 	sub	sp, sp, #8
    95a4:	e1a06002 	mov	r6, r2
    95a8:	e3550001 	cmp	r5, #1
    95ac:	0a000005 	beq	95c8 <OSMboxPendAbort+0x34>
    95b0:	e3a05000 	mov	r5, #0
    95b4:	e3a03001 	mov	r3, #1
    95b8:	e5c23000 	strb	r3, [r2]
    95bc:	e1a00005 	mov	r0, r5
    95c0:	e28dd008 	add	sp, sp, #8
    95c4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    95c8:	e58d1004 	str	r1, [sp, #4]
    95cc:	eb000857 	bl	b730 <OS_CPU_SR_Save>
    95d0:	e5d4800a 	ldrb	r8, [r4, #10]
    95d4:	e59d1004 	ldr	r1, [sp, #4]
    95d8:	e3580000 	cmp	r8, #0
    95dc:	e1a07000 	mov	r7, r0
    95e0:	0a000018 	beq	9648 <OSMboxPendAbort+0xb4>
    95e4:	e3510001 	cmp	r1, #1
    95e8:	0a00000a 	beq	9618 <OSMboxPendAbort+0x84>
    95ec:	e3a02002 	mov	r2, #2
    95f0:	e1a00004 	mov	r0, r4
    95f4:	e3a01000 	mov	r1, #0
    95f8:	e1a03002 	mov	r3, r2
    95fc:	ebfffd26 	bl	8a9c <OS_EventTaskRdy>
    9600:	e1a00007 	mov	r0, r7
    9604:	eb00085c 	bl	b77c <OS_CPU_SR_Restore>
    9608:	ebfffd7a 	bl	8bf8 <OS_Sched>
    960c:	e3a0300e 	mov	r3, #14
    9610:	e5c63000 	strb	r3, [r6]
    9614:	eaffffe8 	b	95bc <OSMboxPendAbort+0x28>
    9618:	e3a05000 	mov	r5, #0
    961c:	e3a02002 	mov	r2, #2
    9620:	e1a00004 	mov	r0, r4
    9624:	e1a03002 	mov	r3, r2
    9628:	e3a01000 	mov	r1, #0
    962c:	ebfffd1a 	bl	8a9c <OS_EventTaskRdy>
    9630:	e5d4300a 	ldrb	r3, [r4, #10]
    9634:	e2855001 	add	r5, r5, #1
    9638:	e3530000 	cmp	r3, #0
    963c:	e6ef5075 	uxtb	r5, r5
    9640:	1afffff5 	bne	961c <OSMboxPendAbort+0x88>
    9644:	eaffffed 	b	9600 <OSMboxPendAbort+0x6c>
    9648:	eb00084b 	bl	b77c <OS_CPU_SR_Restore>
    964c:	e1a05008 	mov	r5, r8
    9650:	e5c68000 	strb	r8, [r6]
    9654:	eaffffd8 	b	95bc <OSMboxPendAbort+0x28>

00009658 <OSMboxPost>:
    9658:	e92d4030 	push	{r4, r5, lr}
    965c:	e1a04000 	mov	r4, r0
    9660:	e5d03000 	ldrb	r3, [r0]
    9664:	e24dd00c 	sub	sp, sp, #12
    9668:	e3530001 	cmp	r3, #1
    966c:	13a00001 	movne	r0, #1
    9670:	0a000001 	beq	967c <OSMboxPost+0x24>
    9674:	e28dd00c 	add	sp, sp, #12
    9678:	e8bd8030 	pop	{r4, r5, pc}
    967c:	e58d1004 	str	r1, [sp, #4]
    9680:	eb00082a 	bl	b730 <OS_CPU_SR_Save>
    9684:	e5d4300a 	ldrb	r3, [r4, #10]
    9688:	e59d1004 	ldr	r1, [sp, #4]
    968c:	e3530000 	cmp	r3, #0
    9690:	e1a05000 	mov	r5, r0
    9694:	1a000005 	bne	96b0 <OSMboxPost+0x58>
    9698:	e5945004 	ldr	r5, [r4, #4]
    969c:	e3550000 	cmp	r5, #0
    96a0:	0a00000b 	beq	96d4 <OSMboxPost+0x7c>
    96a4:	eb000834 	bl	b77c <OS_CPU_SR_Restore>
    96a8:	e3a00014 	mov	r0, #20
    96ac:	eafffff0 	b	9674 <OSMboxPost+0x1c>
    96b0:	e3a02002 	mov	r2, #2
    96b4:	e3a03000 	mov	r3, #0
    96b8:	e1a00004 	mov	r0, r4
    96bc:	ebfffcf6 	bl	8a9c <OS_EventTaskRdy>
    96c0:	e1a00005 	mov	r0, r5
    96c4:	eb00082c 	bl	b77c <OS_CPU_SR_Restore>
    96c8:	ebfffd4a 	bl	8bf8 <OS_Sched>
    96cc:	e3a00000 	mov	r0, #0
    96d0:	eaffffe7 	b	9674 <OSMboxPost+0x1c>
    96d4:	e5841004 	str	r1, [r4, #4]
    96d8:	eb000827 	bl	b77c <OS_CPU_SR_Restore>
    96dc:	e1a00005 	mov	r0, r5
    96e0:	eaffffe3 	b	9674 <OSMboxPost+0x1c>

000096e4 <OSMboxPostOpt>:
    96e4:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    96e8:	e1a04000 	mov	r4, r0
    96ec:	e5d03000 	ldrb	r3, [r0]
    96f0:	e1a05001 	mov	r5, r1
    96f4:	e1a06002 	mov	r6, r2
    96f8:	e3530001 	cmp	r3, #1
    96fc:	0a000001 	beq	9708 <OSMboxPostOpt+0x24>
    9700:	e3a00001 	mov	r0, #1
    9704:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    9708:	eb000808 	bl	b730 <OS_CPU_SR_Save>
    970c:	e5d4300a 	ldrb	r3, [r4, #10]
    9710:	e3530000 	cmp	r3, #0
    9714:	e1a07000 	mov	r7, r0
    9718:	0a000011 	beq	9764 <OSMboxPostOpt+0x80>
    971c:	e2163001 	ands	r3, r6, #1
    9720:	0a000015 	beq	977c <OSMboxPostOpt+0x98>
    9724:	e3a03000 	mov	r3, #0
    9728:	e1a00004 	mov	r0, r4
    972c:	e1a01005 	mov	r1, r5
    9730:	e3a02002 	mov	r2, #2
    9734:	ebfffcd8 	bl	8a9c <OS_EventTaskRdy>
    9738:	e5d4300a 	ldrb	r3, [r4, #10]
    973c:	e3530000 	cmp	r3, #0
    9740:	1afffff7 	bne	9724 <OSMboxPostOpt+0x40>
    9744:	e2066004 	and	r6, r6, #4
    9748:	e1a00007 	mov	r0, r7
    974c:	eb00080a 	bl	b77c <OS_CPU_SR_Restore>
    9750:	e6ef6076 	uxtb	r6, r6
    9754:	e3560000 	cmp	r6, #0
    9758:	0a00000c 	beq	9790 <OSMboxPostOpt+0xac>
    975c:	e3a00000 	mov	r0, #0
    9760:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    9764:	e5946004 	ldr	r6, [r4, #4]
    9768:	e3560000 	cmp	r6, #0
    976c:	0a00000a 	beq	979c <OSMboxPostOpt+0xb8>
    9770:	eb000801 	bl	b77c <OS_CPU_SR_Restore>
    9774:	e3a00014 	mov	r0, #20
    9778:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    977c:	e1a00004 	mov	r0, r4
    9780:	e1a01005 	mov	r1, r5
    9784:	e3a02002 	mov	r2, #2
    9788:	ebfffcc3 	bl	8a9c <OS_EventTaskRdy>
    978c:	eaffffec 	b	9744 <OSMboxPostOpt+0x60>
    9790:	ebfffd18 	bl	8bf8 <OS_Sched>
    9794:	e1a00006 	mov	r0, r6
    9798:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    979c:	e5845004 	str	r5, [r4, #4]
    97a0:	eb0007f5 	bl	b77c <OS_CPU_SR_Restore>
    97a4:	e1a00006 	mov	r0, r6
    97a8:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

000097ac <OSMboxQuery>:
    97ac:	e92d4010 	push	{r4, lr}
    97b0:	e1a04000 	mov	r4, r0
    97b4:	e5d03000 	ldrb	r3, [r0]
    97b8:	e24dd008 	sub	sp, sp, #8
    97bc:	e3530001 	cmp	r3, #1
    97c0:	13a00001 	movne	r0, #1
    97c4:	0a000001 	beq	97d0 <OSMboxQuery+0x24>
    97c8:	e28dd008 	add	sp, sp, #8
    97cc:	e8bd8010 	pop	{r4, pc}
    97d0:	e58d1004 	str	r1, [sp, #4]
    97d4:	eb0007d5 	bl	b730 <OS_CPU_SR_Save>
    97d8:	e59d1004 	ldr	r1, [sp, #4]
    97dc:	e1a02004 	mov	r2, r4
    97e0:	e5f2c00a 	ldrb	ip, [r2, #10]!
    97e4:	e2813004 	add	r3, r1, #4
    97e8:	e281e00c 	add	lr, r1, #12
    97ec:	e5c1c00c 	strb	ip, [r1, #12]
    97f0:	e5f2c001 	ldrb	ip, [r2, #1]!
    97f4:	e4c3c001 	strb	ip, [r3], #1
    97f8:	e153000e 	cmp	r3, lr
    97fc:	1afffffb 	bne	97f0 <OSMboxQuery+0x44>
    9800:	e5943004 	ldr	r3, [r4, #4]
    9804:	e5813000 	str	r3, [r1]
    9808:	eb0007db 	bl	b77c <OS_CPU_SR_Restore>
    980c:	e3a00000 	mov	r0, #0
    9810:	eaffffec 	b	97c8 <OSMboxQuery+0x1c>

00009814 <OSMemCreate>:
    9814:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    9818:	e1a06002 	mov	r6, r2
    981c:	e1a0a000 	mov	sl, r0
    9820:	e1a09001 	mov	r9, r1
    9824:	e1a08003 	mov	r8, r3
    9828:	eb0007c0 	bl	b730 <OS_CPU_SR_Save>
    982c:	e3022724 	movw	r2, #10020	; 0x2724
    9830:	e3402001 	movt	r2, #1
    9834:	e5927000 	ldr	r7, [r2]
    9838:	e3570000 	cmp	r7, #0
    983c:	0a000017 	beq	98a0 <OSMemCreate+0x8c>
    9840:	e5973004 	ldr	r3, [r7, #4]
    9844:	e5823000 	str	r3, [r2]
    9848:	eb0007cb 	bl	b77c <OS_CPU_SR_Restore>
    984c:	e2592001 	subs	r2, r9, #1
    9850:	0a000017 	beq	98b4 <OSMemCreate+0xa0>
    9854:	e1a0400a 	mov	r4, sl
    9858:	e3a0c000 	mov	ip, #0
    985c:	e28cc001 	add	ip, ip, #1
    9860:	e0845006 	add	r5, r4, r6
    9864:	e152000c 	cmp	r2, ip
    9868:	e5845000 	str	r5, [r4]
    986c:	e1a04005 	mov	r4, r5
    9870:	1afffff9 	bne	985c <OSMemCreate+0x48>
    9874:	e022a692 	mla	r2, r2, r6, sl
    9878:	e3a03000 	mov	r3, #0
    987c:	e1a00007 	mov	r0, r7
    9880:	e5823000 	str	r3, [r2]
    9884:	e587a000 	str	sl, [r7]
    9888:	e587a004 	str	sl, [r7, #4]
    988c:	e5879010 	str	r9, [r7, #16]
    9890:	e587900c 	str	r9, [r7, #12]
    9894:	e5876008 	str	r6, [r7, #8]
    9898:	e5c83000 	strb	r3, [r8]
    989c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
    98a0:	eb0007b5 	bl	b77c <OS_CPU_SR_Restore>
    98a4:	e3a0305a 	mov	r3, #90	; 0x5a
    98a8:	e1a00007 	mov	r0, r7
    98ac:	e5c83000 	strb	r3, [r8]
    98b0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
    98b4:	e1a0200a 	mov	r2, sl
    98b8:	eaffffee 	b	9878 <OSMemCreate+0x64>

000098bc <OSMemGet>:
    98bc:	e92d4070 	push	{r4, r5, r6, lr}
    98c0:	e1a04000 	mov	r4, r0
    98c4:	e1a06001 	mov	r6, r1
    98c8:	eb000798 	bl	b730 <OS_CPU_SR_Save>
    98cc:	e5943010 	ldr	r3, [r4, #16]
    98d0:	e3530000 	cmp	r3, #0
    98d4:	0a000009 	beq	9900 <OSMemGet+0x44>
    98d8:	e5945004 	ldr	r5, [r4, #4]
    98dc:	e2433001 	sub	r3, r3, #1
    98e0:	e5952000 	ldr	r2, [r5]
    98e4:	e5843010 	str	r3, [r4, #16]
    98e8:	e5842004 	str	r2, [r4, #4]
    98ec:	eb0007a2 	bl	b77c <OS_CPU_SR_Restore>
    98f0:	e3a03000 	mov	r3, #0
    98f4:	e1a00005 	mov	r0, r5
    98f8:	e5c63000 	strb	r3, [r6]
    98fc:	e8bd8070 	pop	{r4, r5, r6, pc}
    9900:	e1a05003 	mov	r5, r3
    9904:	eb00079c 	bl	b77c <OS_CPU_SR_Restore>
    9908:	e3a0305d 	mov	r3, #93	; 0x5d
    990c:	e1a00005 	mov	r0, r5
    9910:	e5c63000 	strb	r3, [r6]
    9914:	e8bd8070 	pop	{r4, r5, r6, pc}

00009918 <OSMemNameGet>:
    9918:	e302373c 	movw	r3, #10044	; 0x273c
    991c:	e3403001 	movt	r3, #1
    9920:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    9924:	e1a05000 	mov	r5, r0
    9928:	e5d34000 	ldrb	r4, [r3]
    992c:	e1a07001 	mov	r7, r1
    9930:	e1a06002 	mov	r6, r2
    9934:	e3540000 	cmp	r4, #0
    9938:	0a000004 	beq	9950 <OSMemNameGet+0x38>
    993c:	e3a05000 	mov	r5, #0
    9940:	e3a03011 	mov	r3, #17
    9944:	e1a00005 	mov	r0, r5
    9948:	e5c23000 	strb	r3, [r2]
    994c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    9950:	eb000776 	bl	b730 <OS_CPU_SR_Save>
    9954:	e1a08000 	mov	r8, r0
    9958:	e5950014 	ldr	r0, [r5, #20]
    995c:	e5870000 	str	r0, [r7]
    9960:	ebfffdba 	bl	9050 <OS_StrLen>
    9964:	e1a05000 	mov	r5, r0
    9968:	e1a00008 	mov	r0, r8
    996c:	eb000782 	bl	b77c <OS_CPU_SR_Restore>
    9970:	e5c64000 	strb	r4, [r6]
    9974:	e1a00005 	mov	r0, r5
    9978:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0000997c <OSMemNameSet>:
    997c:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    9980:	e302373c 	movw	r3, #10044	; 0x273c
    9984:	e3403001 	movt	r3, #1
    9988:	e1a06000 	mov	r6, r0
    998c:	e1a07001 	mov	r7, r1
    9990:	e1a05002 	mov	r5, r2
    9994:	e5d34000 	ldrb	r4, [r3]
    9998:	e3540000 	cmp	r4, #0
    999c:	13a03012 	movne	r3, #18
    99a0:	15c23000 	strbne	r3, [r2]
    99a4:	18bd80f8 	popne	{r3, r4, r5, r6, r7, pc}
    99a8:	eb000760 	bl	b730 <OS_CPU_SR_Save>
    99ac:	e5867014 	str	r7, [r6, #20]
    99b0:	eb000771 	bl	b77c <OS_CPU_SR_Restore>
    99b4:	e5c54000 	strb	r4, [r5]
    99b8:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

000099bc <OSMemPut>:
    99bc:	e92d4038 	push	{r3, r4, r5, lr}
    99c0:	e1a04000 	mov	r4, r0
    99c4:	e1a05001 	mov	r5, r1
    99c8:	eb000758 	bl	b730 <OS_CPU_SR_Save>
    99cc:	e5943010 	ldr	r3, [r4, #16]
    99d0:	e594200c 	ldr	r2, [r4, #12]
    99d4:	e1530002 	cmp	r3, r2
    99d8:	3a000002 	bcc	99e8 <OSMemPut+0x2c>
    99dc:	eb000766 	bl	b77c <OS_CPU_SR_Restore>
    99e0:	e3a0005e 	mov	r0, #94	; 0x5e
    99e4:	e8bd8038 	pop	{r3, r4, r5, pc}
    99e8:	e5942004 	ldr	r2, [r4, #4]
    99ec:	e2833001 	add	r3, r3, #1
    99f0:	e5852000 	str	r2, [r5]
    99f4:	e5845004 	str	r5, [r4, #4]
    99f8:	e5843010 	str	r3, [r4, #16]
    99fc:	eb00075e 	bl	b77c <OS_CPU_SR_Restore>
    9a00:	e3a00000 	mov	r0, #0
    9a04:	e8bd8038 	pop	{r3, r4, r5, pc}

00009a08 <OSMemQuery>:
    9a08:	e92d4038 	push	{r3, r4, r5, lr}
    9a0c:	e1a04001 	mov	r4, r1
    9a10:	e1a05000 	mov	r5, r0
    9a14:	eb000745 	bl	b730 <OS_CPU_SR_Save>
    9a18:	e2851008 	add	r1, r5, #8
    9a1c:	e595e000 	ldr	lr, [r5]
    9a20:	e595c004 	ldr	ip, [r5, #4]
    9a24:	e891000e 	ldm	r1, {r1, r2, r3}
    9a28:	e584e000 	str	lr, [r4]
    9a2c:	e584c004 	str	ip, [r4, #4]
    9a30:	e584200c 	str	r2, [r4, #12]
    9a34:	e5843010 	str	r3, [r4, #16]
    9a38:	e5841008 	str	r1, [r4, #8]
    9a3c:	eb00074e 	bl	b77c <OS_CPU_SR_Restore>
    9a40:	e594200c 	ldr	r2, [r4, #12]
    9a44:	e5943010 	ldr	r3, [r4, #16]
    9a48:	e3a00000 	mov	r0, #0
    9a4c:	e0633002 	rsb	r3, r3, r2
    9a50:	e5843014 	str	r3, [r4, #20]
    9a54:	e8bd8038 	pop	{r3, r4, r5, pc}

00009a58 <OS_MemInit>:
    9a58:	e92d4070 	push	{r4, r5, r6, lr}
    9a5c:	e302069c 	movw	r0, #9884	; 0x269c
    9a60:	e3a01078 	mov	r1, #120	; 0x78
    9a64:	e3400001 	movt	r0, #1
    9a68:	ebfffc4f 	bl	8bac <OS_MemClr>
    9a6c:	e302469c 	movw	r4, #9884	; 0x269c
    9a70:	e3a03000 	mov	r3, #0
    9a74:	e30f6fd4 	movw	r6, #65492	; 0xffd4
    9a78:	e3404001 	movt	r4, #1
    9a7c:	e3406000 	movt	r6, #0
    9a80:	e1a00003 	mov	r0, r3
    9a84:	e080c003 	add	ip, r0, r3
    9a88:	e2833001 	add	r3, r3, #1
    9a8c:	e3530004 	cmp	r3, #4
    9a90:	e302269c 	movw	r2, #9884	; 0x269c
    9a94:	e1a00083 	lsl	r0, r3, #1
    9a98:	e084c18c 	add	ip, r4, ip, lsl #3
    9a9c:	e0805003 	add	r5, r0, r3
    9aa0:	e30f1fd4 	movw	r1, #65492	; 0xffd4
    9aa4:	e3402001 	movt	r2, #1
    9aa8:	e3401000 	movt	r1, #0
    9aac:	e0845185 	add	r5, r4, r5, lsl #3
    9ab0:	e58c6014 	str	r6, [ip, #20]
    9ab4:	e58c5004 	str	r5, [ip, #4]
    9ab8:	1afffff1 	bne	9a84 <OS_MemInit+0x2c>
    9abc:	e3023724 	movw	r3, #10020	; 0x2724
    9ac0:	e3403001 	movt	r3, #1
    9ac4:	e5821074 	str	r1, [r2, #116]	; 0x74
    9ac8:	e3a01000 	mov	r1, #0
    9acc:	e5832000 	str	r2, [r3]
    9ad0:	e5821064 	str	r1, [r2, #100]	; 0x64
    9ad4:	e8bd8070 	pop	{r4, r5, r6, pc}

00009ad8 <OSMutex_RdyAtPrio>:
    9ad8:	e5d02030 	ldrb	r2, [r0, #48]	; 0x30
    9adc:	e3023730 	movw	r3, #10032	; 0x2730
    9ae0:	e3403001 	movt	r3, #1
    9ae4:	e5d0c031 	ldrb	ip, [r0, #49]	; 0x31
    9ae8:	e92d05f0 	push	{r4, r5, r6, r7, r8, sl}
    9aec:	e3a06001 	mov	r6, #1
    9af0:	e7d34002 	ldrb	r4, [r3, r2]
    9af4:	e3025695 	movw	r5, #9877	; 0x2695
    9af8:	e3405001 	movt	r5, #1
    9afc:	e1c4c00c 	bic	ip, r4, ip
    9b00:	e7c3c002 	strb	ip, [r3, r2]
    9b04:	e35c0000 	cmp	ip, #0
    9b08:	e302272c 	movw	r2, #10028	; 0x272c
    9b0c:	e3402001 	movt	r2, #1
    9b10:	e5c0102e 	strb	r1, [r0, #46]	; 0x2e
    9b14:	05d04032 	ldrbeq	r4, [r0, #50]	; 0x32
    9b18:	05d2c000 	ldrbeq	ip, [r2]
    9b1c:	e5c51000 	strb	r1, [r5]
    9b20:	01ccc004 	biceq	ip, ip, r4
    9b24:	e2014007 	and	r4, r1, #7
    9b28:	05c2c000 	strbeq	ip, [r2]
    9b2c:	e7e2c1d1 	ubfx	ip, r1, #3, #3
    9b30:	e1a07c16 	lsl	r7, r6, ip
    9b34:	e1a06416 	lsl	r6, r6, r4
    9b38:	e5c0402f 	strb	r4, [r0, #47]	; 0x2f
    9b3c:	e30340c8 	movw	r4, #12488	; 0x30c8
    9b40:	e5c0c030 	strb	ip, [r0, #48]	; 0x30
    9b44:	e6ef7077 	uxtb	r7, r7
    9b48:	e6ef6076 	uxtb	r6, r6
    9b4c:	e5c07032 	strb	r7, [r0, #50]	; 0x32
    9b50:	e5c06031 	strb	r6, [r0, #49]	; 0x31
    9b54:	e3404001 	movt	r4, #1
    9b58:	e5d2a000 	ldrb	sl, [r2]
    9b5c:	e7d3800c 	ldrb	r8, [r3, ip]
    9b60:	e187700a 	orr	r7, r7, sl
    9b64:	e7840101 	str	r0, [r4, r1, lsl #2]
    9b68:	e1866008 	orr	r6, r6, r8
    9b6c:	e5c27000 	strb	r7, [r2]
    9b70:	e7c3600c 	strb	r6, [r3, ip]
    9b74:	e8bd05f0 	pop	{r4, r5, r6, r7, r8, sl}
    9b78:	e12fff1e 	bx	lr

00009b7c <OSMutexAccept>:
    9b7c:	e92d4070 	push	{r4, r5, r6, lr}
    9b80:	e1a04000 	mov	r4, r0
    9b84:	e5d03000 	ldrb	r3, [r0]
    9b88:	e1a05001 	mov	r5, r1
    9b8c:	e3530004 	cmp	r3, #4
    9b90:	0a000003 	beq	9ba4 <OSMutexAccept+0x28>
    9b94:	e3a03001 	mov	r3, #1
    9b98:	e3a00000 	mov	r0, #0
    9b9c:	e5c13000 	strb	r3, [r1]
    9ba0:	e8bd8070 	pop	{r4, r5, r6, pc}
    9ba4:	e302373c 	movw	r3, #10044	; 0x273c
    9ba8:	e3403001 	movt	r3, #1
    9bac:	e5d36000 	ldrb	r6, [r3]
    9bb0:	e3560000 	cmp	r6, #0
    9bb4:	0a000003 	beq	9bc8 <OSMutexAccept+0x4c>
    9bb8:	e3a03002 	mov	r3, #2
    9bbc:	e3a00000 	mov	r0, #0
    9bc0:	e5c13000 	strb	r3, [r1]
    9bc4:	e8bd8070 	pop	{r4, r5, r6, pc}
    9bc8:	eb0006d8 	bl	b730 <OS_CPU_SR_Save>
    9bcc:	e1d430b8 	ldrh	r3, [r4, #8]
    9bd0:	e6ef2073 	uxtb	r2, r3
    9bd4:	e35200ff 	cmp	r2, #255	; 0xff
    9bd8:	e1a0c000 	mov	ip, r0
    9bdc:	1a000014 	bne	9c34 <OSMutexAccept+0xb8>
    9be0:	e3022740 	movw	r2, #10048	; 0x2740
    9be4:	e3402001 	movt	r2, #1
    9be8:	e1a01423 	lsr	r1, r3, #8
    9bec:	e2033cff 	and	r3, r3, #65280	; 0xff00
    9bf0:	e5922000 	ldr	r2, [r2]
    9bf4:	e35100ff 	cmp	r1, #255	; 0xff
    9bf8:	e1c430b8 	strh	r3, [r4, #8]
    9bfc:	e5d2e02e 	ldrb	lr, [r2, #46]	; 0x2e
    9c00:	e5842004 	str	r2, [r4, #4]
    9c04:	e183300e 	orr	r3, r3, lr
    9c08:	e1c430b8 	strh	r3, [r4, #8]
    9c0c:	0a000002 	beq	9c1c <OSMutexAccept+0xa0>
    9c10:	e5d2302e 	ldrb	r3, [r2, #46]	; 0x2e
    9c14:	e1530001 	cmp	r3, r1
    9c18:	9a000009 	bls	9c44 <OSMutexAccept+0xc8>
    9c1c:	e1a0000c 	mov	r0, ip
    9c20:	eb0006d5 	bl	b77c <OS_CPU_SR_Restore>
    9c24:	e3a03000 	mov	r3, #0
    9c28:	e3a00001 	mov	r0, #1
    9c2c:	e5c53000 	strb	r3, [r5]
    9c30:	e8bd8070 	pop	{r4, r5, r6, pc}
    9c34:	eb0006d0 	bl	b77c <OS_CPU_SR_Restore>
    9c38:	e1a00006 	mov	r0, r6
    9c3c:	e5c56000 	strb	r6, [r5]
    9c40:	e8bd8070 	pop	{r4, r5, r6, pc}
    9c44:	eb0006cc 	bl	b77c <OS_CPU_SR_Restore>
    9c48:	e3a03078 	mov	r3, #120	; 0x78
    9c4c:	e3a00001 	mov	r0, #1
    9c50:	e5c53000 	strb	r3, [r5]
    9c54:	e8bd8070 	pop	{r4, r5, r6, pc}

00009c58 <OSMutexCreate>:
    9c58:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    9c5c:	e302373c 	movw	r3, #10044	; 0x273c
    9c60:	e3403001 	movt	r3, #1
    9c64:	e1a05000 	mov	r5, r0
    9c68:	e1a06001 	mov	r6, r1
    9c6c:	e5d34000 	ldrb	r4, [r3]
    9c70:	e3540000 	cmp	r4, #0
    9c74:	13a03010 	movne	r3, #16
    9c78:	13a04000 	movne	r4, #0
    9c7c:	15c13000 	strbne	r3, [r1]
    9c80:	1a000020 	bne	9d08 <OSMutexCreate+0xb0>
    9c84:	eb0006a9 	bl	b730 <OS_CPU_SR_Save>
    9c88:	e35500ff 	cmp	r5, #255	; 0xff
    9c8c:	e1a01000 	mov	r1, r0
    9c90:	0a00002b 	beq	9d44 <OSMutexCreate+0xec>
    9c94:	e30330c8 	movw	r3, #12488	; 0x30c8
    9c98:	e3403001 	movt	r3, #1
    9c9c:	e7932105 	ldr	r2, [r3, r5, lsl #2]
    9ca0:	e3520000 	cmp	r2, #0
    9ca4:	1a000019 	bne	9d10 <OSMutexCreate+0xb8>
    9ca8:	e3022738 	movw	r2, #10040	; 0x2738
    9cac:	e3402001 	movt	r2, #1
    9cb0:	e3a00001 	mov	r0, #1
    9cb4:	e7830105 	str	r0, [r3, r5, lsl #2]
    9cb8:	e5924000 	ldr	r4, [r2]
    9cbc:	e3540000 	cmp	r4, #0
    9cc0:	0a000017 	beq	9d24 <OSMutexCreate+0xcc>
    9cc4:	e5943004 	ldr	r3, [r4, #4]
    9cc8:	e1a00001 	mov	r0, r1
    9ccc:	e1a05405 	lsl	r5, r5, #8
    9cd0:	e3a07000 	mov	r7, #0
    9cd4:	e38550ff 	orr	r5, r5, #255	; 0xff
    9cd8:	e5823000 	str	r3, [r2]
    9cdc:	eb0006a6 	bl	b77c <OS_CPU_SR_Restore>
    9ce0:	e3a03004 	mov	r3, #4
    9ce4:	e1c450b8 	strh	r5, [r4, #8]
    9ce8:	e5c43000 	strb	r3, [r4]
    9cec:	e1a00004 	mov	r0, r4
    9cf0:	e30f3fd4 	movw	r3, #65492	; 0xffd4
    9cf4:	e5847004 	str	r7, [r4, #4]
    9cf8:	e3403000 	movt	r3, #0
    9cfc:	e5843014 	str	r3, [r4, #20]
    9d00:	ebfffb9e 	bl	8b80 <OS_EventWaitListInit>
    9d04:	e5c67000 	strb	r7, [r6]
    9d08:	e1a00004 	mov	r0, r4
    9d0c:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    9d10:	eb000699 	bl	b77c <OS_CPU_SR_Restore>
    9d14:	e3a03028 	mov	r3, #40	; 0x28
    9d18:	e1a00004 	mov	r0, r4
    9d1c:	e5c63000 	strb	r3, [r6]
    9d20:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    9d24:	e7834105 	str	r4, [r3, r5, lsl #2]
    9d28:	e1a00001 	mov	r0, r1
    9d2c:	e3a04000 	mov	r4, #0
    9d30:	eb000691 	bl	b77c <OS_CPU_SR_Restore>
    9d34:	e3a03004 	mov	r3, #4
    9d38:	e1a00004 	mov	r0, r4
    9d3c:	e5c63000 	strb	r3, [r6]
    9d40:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    9d44:	e3022738 	movw	r2, #10040	; 0x2738
    9d48:	e3402001 	movt	r2, #1
    9d4c:	e5924000 	ldr	r4, [r2]
    9d50:	e3540000 	cmp	r4, #0
    9d54:	1affffda 	bne	9cc4 <OSMutexCreate+0x6c>
    9d58:	eafffff2 	b	9d28 <OSMutexCreate+0xd0>

00009d5c <OSMutexDel>:
    9d5c:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    9d60:	e1a04000 	mov	r4, r0
    9d64:	e5d03000 	ldrb	r3, [r0]
    9d68:	e24dd00c 	sub	sp, sp, #12
    9d6c:	e1a05002 	mov	r5, r2
    9d70:	e3530004 	cmp	r3, #4
    9d74:	13a03001 	movne	r3, #1
    9d78:	15c23000 	strbne	r3, [r2]
    9d7c:	0a000002 	beq	9d8c <OSMutexDel+0x30>
    9d80:	e1a00004 	mov	r0, r4
    9d84:	e28dd00c 	add	sp, sp, #12
    9d88:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    9d8c:	e302373c 	movw	r3, #10044	; 0x273c
    9d90:	e3403001 	movt	r3, #1
    9d94:	e5d33000 	ldrb	r3, [r3]
    9d98:	e3530000 	cmp	r3, #0
    9d9c:	13a0300f 	movne	r3, #15
    9da0:	15c23000 	strbne	r3, [r2]
    9da4:	1afffff5 	bne	9d80 <OSMutexDel+0x24>
    9da8:	e58d1004 	str	r1, [sp, #4]
    9dac:	eb00065f 	bl	b730 <OS_CPU_SR_Save>
    9db0:	e5d4300a 	ldrb	r3, [r4, #10]
    9db4:	e59d1004 	ldr	r1, [sp, #4]
    9db8:	e2936000 	adds	r6, r3, #0
    9dbc:	13a06001 	movne	r6, #1
    9dc0:	e3510000 	cmp	r1, #0
    9dc4:	e1a07000 	mov	r7, r0
    9dc8:	1a000016 	bne	9e28 <OSMutexDel+0xcc>
    9dcc:	e3560000 	cmp	r6, #0
    9dd0:	1a00001a 	bne	9e40 <OSMutexDel+0xe4>
    9dd4:	e1d420b8 	ldrh	r2, [r4, #8]
    9dd8:	e30f3fd4 	movw	r3, #65492	; 0xffd4
    9ddc:	e3403000 	movt	r3, #0
    9de0:	e5843014 	str	r3, [r4, #20]
    9de4:	e1a02422 	lsr	r2, r2, #8
    9de8:	e35200ff 	cmp	r2, #255	; 0xff
    9dec:	130330c8 	movwne	r3, #12488	; 0x30c8
    9df0:	13403001 	movtne	r3, #1
    9df4:	17836102 	strne	r6, [r3, r2, lsl #2]
    9df8:	e3023738 	movw	r3, #10040	; 0x2738
    9dfc:	e3403001 	movt	r3, #1
    9e00:	e3a06000 	mov	r6, #0
    9e04:	e5c46000 	strb	r6, [r4]
    9e08:	e5932000 	ldr	r2, [r3]
    9e0c:	e1c460b8 	strh	r6, [r4, #8]
    9e10:	e5834000 	str	r4, [r3]
    9e14:	e5842004 	str	r2, [r4, #4]
    9e18:	e1a04006 	mov	r4, r6
    9e1c:	eb000656 	bl	b77c <OS_CPU_SR_Restore>
    9e20:	e5c56000 	strb	r6, [r5]
    9e24:	eaffffd5 	b	9d80 <OSMutexDel+0x24>
    9e28:	e3510001 	cmp	r1, #1
    9e2c:	0a000007 	beq	9e50 <OSMutexDel+0xf4>
    9e30:	eb000651 	bl	b77c <OS_CPU_SR_Restore>
    9e34:	e3a03007 	mov	r3, #7
    9e38:	e5c53000 	strb	r3, [r5]
    9e3c:	eaffffcf 	b	9d80 <OSMutexDel+0x24>
    9e40:	eb00064d 	bl	b77c <OS_CPU_SR_Restore>
    9e44:	e3a03049 	mov	r3, #73	; 0x49
    9e48:	e5c53000 	strb	r3, [r5]
    9e4c:	eaffffcb 	b	9d80 <OSMutexDel+0x24>
    9e50:	e1d410b8 	ldrh	r1, [r4, #8]
    9e54:	e1a02421 	lsr	r2, r1, #8
    9e58:	e35200ff 	cmp	r2, #255	; 0xff
    9e5c:	0a000005 	beq	9e78 <OSMutexDel+0x11c>
    9e60:	e5940004 	ldr	r0, [r4, #4]
    9e64:	e3500000 	cmp	r0, #0
    9e68:	0a000002 	beq	9e78 <OSMutexDel+0x11c>
    9e6c:	e5d0c02e 	ldrb	ip, [r0, #46]	; 0x2e
    9e70:	e15c0002 	cmp	ip, r2
    9e74:	0a000024 	beq	9f0c <OSMutexDel+0x1b0>
    9e78:	e3530000 	cmp	r3, #0
    9e7c:	0a000007 	beq	9ea0 <OSMutexDel+0x144>
    9e80:	e3a03002 	mov	r3, #2
    9e84:	e1a00004 	mov	r0, r4
    9e88:	e3a01000 	mov	r1, #0
    9e8c:	e3a02010 	mov	r2, #16
    9e90:	ebfffb01 	bl	8a9c <OS_EventTaskRdy>
    9e94:	e5d4300a 	ldrb	r3, [r4, #10]
    9e98:	e3530000 	cmp	r3, #0
    9e9c:	1afffff7 	bne	9e80 <OSMutexDel+0x124>
    9ea0:	e1d420b8 	ldrh	r2, [r4, #8]
    9ea4:	e30f3fd4 	movw	r3, #65492	; 0xffd4
    9ea8:	e3403000 	movt	r3, #0
    9eac:	e5843014 	str	r3, [r4, #20]
    9eb0:	e1a02422 	lsr	r2, r2, #8
    9eb4:	e35200ff 	cmp	r2, #255	; 0xff
    9eb8:	130330c8 	movwne	r3, #12488	; 0x30c8
    9ebc:	13403001 	movtne	r3, #1
    9ec0:	13a01000 	movne	r1, #0
    9ec4:	17831102 	strne	r1, [r3, r2, lsl #2]
    9ec8:	e3023738 	movw	r3, #10040	; 0x2738
    9ecc:	e3403001 	movt	r3, #1
    9ed0:	e3a02000 	mov	r2, #0
    9ed4:	e5c42000 	strb	r2, [r4]
    9ed8:	e5931000 	ldr	r1, [r3]
    9edc:	e1a00007 	mov	r0, r7
    9ee0:	e1c420b8 	strh	r2, [r4, #8]
    9ee4:	e5834000 	str	r4, [r3]
    9ee8:	e5841004 	str	r1, [r4, #4]
    9eec:	eb000622 	bl	b77c <OS_CPU_SR_Restore>
    9ef0:	e3560001 	cmp	r6, #1
    9ef4:	0a000002 	beq	9f04 <OSMutexDel+0x1a8>
    9ef8:	e3a04000 	mov	r4, #0
    9efc:	e5c54000 	strb	r4, [r5]
    9f00:	eaffff9e 	b	9d80 <OSMutexDel+0x24>
    9f04:	ebfffb3b 	bl	8bf8 <OS_Sched>
    9f08:	eafffffa 	b	9ef8 <OSMutexDel+0x19c>
    9f0c:	e6ef1071 	uxtb	r1, r1
    9f10:	ebfffef0 	bl	9ad8 <OSMutex_RdyAtPrio>
    9f14:	e5d4300a 	ldrb	r3, [r4, #10]
    9f18:	eaffffd6 	b	9e78 <OSMutexDel+0x11c>

00009f1c <OSMutexPend>:
    9f1c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    9f20:	e1a04000 	mov	r4, r0
    9f24:	e5d03000 	ldrb	r3, [r0]
    9f28:	e24dd00c 	sub	sp, sp, #12
    9f2c:	e3530004 	cmp	r3, #4
    9f30:	13a03001 	movne	r3, #1
    9f34:	15c23000 	strbne	r3, [r2]
    9f38:	0a000001 	beq	9f44 <OSMutexPend+0x28>
    9f3c:	e28dd00c 	add	sp, sp, #12
    9f40:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    9f44:	e302373c 	movw	r3, #10044	; 0x273c
    9f48:	e3403001 	movt	r3, #1
    9f4c:	e5d33000 	ldrb	r3, [r3]
    9f50:	e3530000 	cmp	r3, #0
    9f54:	13a03002 	movne	r3, #2
    9f58:	15c23000 	strbne	r3, [r2]
    9f5c:	1afffff6 	bne	9f3c <OSMutexPend+0x20>
    9f60:	e302368c 	movw	r3, #9868	; 0x268c
    9f64:	e3403001 	movt	r3, #1
    9f68:	e5d33000 	ldrb	r3, [r3]
    9f6c:	e3530000 	cmp	r3, #0
    9f70:	13a0300d 	movne	r3, #13
    9f74:	15c23000 	strbne	r3, [r2]
    9f78:	1affffef 	bne	9f3c <OSMutexPend+0x20>
    9f7c:	e58d1004 	str	r1, [sp, #4]
    9f80:	e58d2000 	str	r2, [sp]
    9f84:	eb0005e9 	bl	b730 <OS_CPU_SR_Save>
    9f88:	e1d430b8 	ldrh	r3, [r4, #8]
    9f8c:	e59d1004 	ldr	r1, [sp, #4]
    9f90:	e59d2000 	ldr	r2, [sp]
    9f94:	e6efe073 	uxtb	lr, r3
    9f98:	e1a06423 	lsr	r6, r3, #8
    9f9c:	e35e00ff 	cmp	lr, #255	; 0xff
    9fa0:	e6efc076 	uxtb	ip, r6
    9fa4:	e1a07000 	mov	r7, r0
    9fa8:	0a000066 	beq	a148 <OSMutexPend+0x22c>
    9fac:	e35c00ff 	cmp	ip, #255	; 0xff
    9fb0:	03025740 	movweq	r5, #10048	; 0x2740
    9fb4:	03405001 	movteq	r5, #1
    9fb8:	0a000039 	beq	a0a4 <OSMutexPend+0x188>
    9fbc:	e5943004 	ldr	r3, [r4, #4]
    9fc0:	e3025740 	movw	r5, #10048	; 0x2740
    9fc4:	e3405001 	movt	r5, #1
    9fc8:	e5d3002e 	ldrb	r0, [r3, #46]	; 0x2e
    9fcc:	e150000c 	cmp	r0, ip
    9fd0:	9a000033 	bls	a0a4 <OSMutexPend+0x188>
    9fd4:	e5950000 	ldr	r0, [r5]
    9fd8:	e5d0002e 	ldrb	r0, [r0, #46]	; 0x2e
    9fdc:	e150000e 	cmp	r0, lr
    9fe0:	2a00002f 	bcs	a0a4 <OSMutexPend+0x188>
    9fe4:	e5d38030 	ldrb	r8, [r3, #48]	; 0x30
    9fe8:	e3020730 	movw	r0, #10032	; 0x2730
    9fec:	e3400001 	movt	r0, #1
    9ff0:	e5d3e031 	ldrb	lr, [r3, #49]	; 0x31
    9ff4:	e7d0a008 	ldrb	sl, [r0, r8]
    9ff8:	e11a000e 	tst	sl, lr
    9ffc:	0a00006b 	beq	a1b0 <OSMutexPend+0x294>
    a000:	e1cae00e 	bic	lr, sl, lr
    a004:	e7c0e008 	strb	lr, [r0, r8]
    a008:	e35e0000 	cmp	lr, #0
    a00c:	13a0a001 	movne	sl, #1
    a010:	1a000006 	bne	a030 <OSMutexPend+0x114>
    a014:	e302e72c 	movw	lr, #10028	; 0x272c
    a018:	e340e001 	movt	lr, #1
    a01c:	e5d39032 	ldrb	r9, [r3, #50]	; 0x32
    a020:	e3a0a001 	mov	sl, #1
    a024:	e5de8000 	ldrb	r8, [lr]
    a028:	e1c88009 	bic	r8, r8, r9
    a02c:	e5ce8000 	strb	r8, [lr]
    a030:	e3a08001 	mov	r8, #1
    a034:	e1a0e1ac 	lsr	lr, ip, #3
    a038:	e2066007 	and	r6, r6, #7
    a03c:	e15a0008 	cmp	sl, r8
    a040:	e1a0ae18 	lsl	sl, r8, lr
    a044:	e1a08618 	lsl	r8, r8, r6
    a048:	e5c3c02e 	strb	ip, [r3, #46]	; 0x2e
    a04c:	e6efa07a 	uxtb	sl, sl
    a050:	e6ef8078 	uxtb	r8, r8
    a054:	e5c3e030 	strb	lr, [r3, #48]	; 0x30
    a058:	e5c3602f 	strb	r6, [r3, #47]	; 0x2f
    a05c:	e5c3a032 	strb	sl, [r3, #50]	; 0x32
    a060:	e5c38031 	strb	r8, [r3, #49]	; 0x31
    a064:	0a000062 	beq	a1f4 <OSMutexPend+0x2d8>
    a068:	e593001c 	ldr	r0, [r3, #28]
    a06c:	e3500000 	cmp	r0, #0
    a070:	0a000008 	beq	a098 <OSMutexPend+0x17c>
    a074:	e5d0e00a 	ldrb	lr, [r0, #10]
    a078:	e18aa00e 	orr	sl, sl, lr
    a07c:	e5c0a00a 	strb	sl, [r0, #10]
    a080:	e5d36030 	ldrb	r6, [r3, #48]	; 0x30
    a084:	e5d3e031 	ldrb	lr, [r3, #49]	; 0x31
    a088:	e0800006 	add	r0, r0, r6
    a08c:	e5d0600b 	ldrb	r6, [r0, #11]
    a090:	e186e00e 	orr	lr, r6, lr
    a094:	e5c0e00b 	strb	lr, [r0, #11]
    a098:	e30300c8 	movw	r0, #12488	; 0x30c8
    a09c:	e3400001 	movt	r0, #1
    a0a0:	e780310c 	str	r3, [r0, ip, lsl #2]
    a0a4:	e5953000 	ldr	r3, [r5]
    a0a8:	e3a0e000 	mov	lr, #0
    a0ac:	e1a00004 	mov	r0, r4
    a0b0:	e5d3c02c 	ldrb	ip, [r3, #44]	; 0x2c
    a0b4:	e5c3e02d 	strb	lr, [r3, #45]	; 0x2d
    a0b8:	e5831028 	str	r1, [r3, #40]	; 0x28
    a0bc:	e38cc010 	orr	ip, ip, #16
    a0c0:	e5c3c02c 	strb	ip, [r3, #44]	; 0x2c
    a0c4:	e58d2000 	str	r2, [sp]
    a0c8:	ebfffa08 	bl	88f0 <OS_EventTaskWait>
    a0cc:	e1a00007 	mov	r0, r7
    a0d0:	eb0005a9 	bl	b77c <OS_CPU_SR_Restore>
    a0d4:	ebfffac7 	bl	8bf8 <OS_Sched>
    a0d8:	eb000594 	bl	b730 <OS_CPU_SR_Save>
    a0dc:	e59d2000 	ldr	r2, [sp]
    a0e0:	e1a06000 	mov	r6, r0
    a0e4:	e5950000 	ldr	r0, [r5]
    a0e8:	e5d0302d 	ldrb	r3, [r0, #45]	; 0x2d
    a0ec:	e3530000 	cmp	r3, #0
    a0f0:	1a00000a 	bne	a120 <OSMutexPend+0x204>
    a0f4:	e5c23000 	strb	r3, [r2]
    a0f8:	e5953000 	ldr	r3, [r5]
    a0fc:	e3a02000 	mov	r2, #0
    a100:	e1a00006 	mov	r0, r6
    a104:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    a108:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    a10c:	e583201c 	str	r2, [r3, #28]
    a110:	e5832020 	str	r2, [r3, #32]
    a114:	e28dd00c 	add	sp, sp, #12
    a118:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    a11c:	ea000596 	b	b77c <OS_CPU_SR_Restore>
    a120:	e3530002 	cmp	r3, #2
    a124:	03a0300e 	moveq	r3, #14
    a128:	05c23000 	strbeq	r3, [r2]
    a12c:	0afffff1 	beq	a0f8 <OSMutexPend+0x1dc>
    a130:	e1a01004 	mov	r1, r4
    a134:	e58d2000 	str	r2, [sp]
    a138:	ebfffa34 	bl	8a10 <OS_EventTaskRemove>
    a13c:	e3a0300a 	mov	r3, #10
    a140:	e59d2000 	ldr	r2, [sp]
    a144:	eaffffea 	b	a0f4 <OSMutexPend+0x1d8>
    a148:	e3021740 	movw	r1, #10048	; 0x2740
    a14c:	e3401001 	movt	r1, #1
    a150:	e2033cff 	and	r3, r3, #65280	; 0xff00
    a154:	e35c00ff 	cmp	ip, #255	; 0xff
    a158:	e5911000 	ldr	r1, [r1]
    a15c:	e1c430b8 	strh	r3, [r4, #8]
    a160:	e5d1e02e 	ldrb	lr, [r1, #46]	; 0x2e
    a164:	e5841004 	str	r1, [r4, #4]
    a168:	e183300e 	orr	r3, r3, lr
    a16c:	e1c430b8 	strh	r3, [r4, #8]
    a170:	0a000002 	beq	a180 <OSMutexPend+0x264>
    a174:	e5d1302e 	ldrb	r3, [r1, #46]	; 0x2e
    a178:	e153000c 	cmp	r3, ip
    a17c:	9a000006 	bls	a19c <OSMutexPend+0x280>
    a180:	e1a00007 	mov	r0, r7
    a184:	e58d2000 	str	r2, [sp]
    a188:	eb00057b 	bl	b77c <OS_CPU_SR_Restore>
    a18c:	e59d2000 	ldr	r2, [sp]
    a190:	e3a03000 	mov	r3, #0
    a194:	e5c23000 	strb	r3, [r2]
    a198:	eaffff67 	b	9f3c <OSMutexPend+0x20>
    a19c:	eb000576 	bl	b77c <OS_CPU_SR_Restore>
    a1a0:	e59d2000 	ldr	r2, [sp]
    a1a4:	e3a03078 	mov	r3, #120	; 0x78
    a1a8:	e5c23000 	strb	r3, [r2]
    a1ac:	eaffff62 	b	9f3c <OSMutexPend+0x20>
    a1b0:	e593901c 	ldr	r9, [r3, #28]
    a1b4:	e3590000 	cmp	r9, #0
    a1b8:	0a00000b 	beq	a1ec <OSMutexPend+0x2d0>
    a1bc:	e0898008 	add	r8, r9, r8
    a1c0:	e5d8a00b 	ldrb	sl, [r8, #11]
    a1c4:	e1cae00e 	bic	lr, sl, lr
    a1c8:	e5c8e00b 	strb	lr, [r8, #11]
    a1cc:	e35e0000 	cmp	lr, #0
    a1d0:	1a000005 	bne	a1ec <OSMutexPend+0x2d0>
    a1d4:	e5d38032 	ldrb	r8, [r3, #50]	; 0x32
    a1d8:	e3a0a000 	mov	sl, #0
    a1dc:	e5d9e00a 	ldrb	lr, [r9, #10]
    a1e0:	e1cee008 	bic	lr, lr, r8
    a1e4:	e5c9e00a 	strb	lr, [r9, #10]
    a1e8:	eaffff90 	b	a030 <OSMutexPend+0x114>
    a1ec:	e3a0a000 	mov	sl, #0
    a1f0:	eaffff8e 	b	a030 <OSMutexPend+0x114>
    a1f4:	e302672c 	movw	r6, #10028	; 0x272c
    a1f8:	e3406001 	movt	r6, #1
    a1fc:	e7d0b00e 	ldrb	fp, [r0, lr]
    a200:	e5d69000 	ldrb	r9, [r6]
    a204:	e188800b 	orr	r8, r8, fp
    a208:	e7c0800e 	strb	r8, [r0, lr]
    a20c:	e18aa009 	orr	sl, sl, r9
    a210:	e5c6a000 	strb	sl, [r6]
    a214:	eaffff9f 	b	a098 <OSMutexPend+0x17c>

0000a218 <OSMutexPost>:
    a218:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    a21c:	e302373c 	movw	r3, #10044	; 0x273c
    a220:	e3403001 	movt	r3, #1
    a224:	e1a04000 	mov	r4, r0
    a228:	e5d33000 	ldrb	r3, [r3]
    a22c:	e3530000 	cmp	r3, #0
    a230:	0a000001 	beq	a23c <OSMutexPost+0x24>
    a234:	e3a00005 	mov	r0, #5
    a238:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    a23c:	e5d03000 	ldrb	r3, [r0]
    a240:	e3530004 	cmp	r3, #4
    a244:	0a000001 	beq	a250 <OSMutexPost+0x38>
    a248:	e3a00001 	mov	r0, #1
    a24c:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    a250:	eb000536 	bl	b730 <OS_CPU_SR_Save>
    a254:	e3023740 	movw	r3, #10048	; 0x2740
    a258:	e3403001 	movt	r3, #1
    a25c:	e5942004 	ldr	r2, [r4, #4]
    a260:	e1d410b8 	ldrh	r1, [r4, #8]
    a264:	e5933000 	ldr	r3, [r3]
    a268:	e1520003 	cmp	r2, r3
    a26c:	e1a05000 	mov	r5, r0
    a270:	0a000002 	beq	a280 <OSMutexPost+0x68>
    a274:	eb000540 	bl	b77c <OS_CPU_SR_Restore>
    a278:	e3a00064 	mov	r0, #100	; 0x64
    a27c:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    a280:	e1a06421 	lsr	r6, r1, #8
    a284:	e35600ff 	cmp	r6, #255	; 0xff
    a288:	0a000006 	beq	a2a8 <OSMutexPost+0x90>
    a28c:	e5d2302e 	ldrb	r3, [r2, #46]	; 0x2e
    a290:	e1530006 	cmp	r3, r6
    a294:	0a00002b 	beq	a348 <OSMutexPost+0x130>
    a298:	e30330c8 	movw	r3, #12488	; 0x30c8
    a29c:	e3403001 	movt	r3, #1
    a2a0:	e3a02001 	mov	r2, #1
    a2a4:	e7832106 	str	r2, [r3, r6, lsl #2]
    a2a8:	e5d4700a 	ldrb	r7, [r4, #10]
    a2ac:	e3570000 	cmp	r7, #0
    a2b0:	0a000018 	beq	a318 <OSMutexPost+0x100>
    a2b4:	e3a01000 	mov	r1, #0
    a2b8:	e3a02010 	mov	r2, #16
    a2bc:	e1a03001 	mov	r3, r1
    a2c0:	e1a00004 	mov	r0, r4
    a2c4:	ebfff9f4 	bl	8a9c <OS_EventTaskRdy>
    a2c8:	e30330c8 	movw	r3, #12488	; 0x30c8
    a2cc:	e3403001 	movt	r3, #1
    a2d0:	e1d420b8 	ldrh	r2, [r4, #8]
    a2d4:	e3c220ff 	bic	r2, r2, #255	; 0xff
    a2d8:	e1500006 	cmp	r0, r6
    a2dc:	e7933100 	ldr	r3, [r3, r0, lsl #2]
    a2e0:	e1800002 	orr	r0, r0, r2
    a2e4:	e1c400b8 	strh	r0, [r4, #8]
    a2e8:	83a07000 	movhi	r7, #0
    a2ec:	93a07001 	movls	r7, #1
    a2f0:	e35600ff 	cmp	r6, #255	; 0xff
    a2f4:	e5843004 	str	r3, [r4, #4]
    a2f8:	e1a00005 	mov	r0, r5
    a2fc:	03a07000 	moveq	r7, #0
    a300:	e3570000 	cmp	r7, #0
    a304:	0a00000b 	beq	a338 <OSMutexPost+0x120>
    a308:	eb00051b 	bl	b77c <OS_CPU_SR_Restore>
    a30c:	ebfffa39 	bl	8bf8 <OS_Sched>
    a310:	e3a00078 	mov	r0, #120	; 0x78
    a314:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    a318:	e1d430b8 	ldrh	r3, [r4, #8]
    a31c:	e1a00005 	mov	r0, r5
    a320:	e5847004 	str	r7, [r4, #4]
    a324:	e38330ff 	orr	r3, r3, #255	; 0xff
    a328:	e1c430b8 	strh	r3, [r4, #8]
    a32c:	eb000512 	bl	b77c <OS_CPU_SR_Restore>
    a330:	e1a00007 	mov	r0, r7
    a334:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    a338:	eb00050f 	bl	b77c <OS_CPU_SR_Restore>
    a33c:	ebfffa2d 	bl	8bf8 <OS_Sched>
    a340:	e1a00007 	mov	r0, r7
    a344:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    a348:	e1a00002 	mov	r0, r2
    a34c:	e6ef1071 	uxtb	r1, r1
    a350:	ebfffde0 	bl	9ad8 <OSMutex_RdyAtPrio>
    a354:	eaffffcf 	b	a298 <OSMutexPost+0x80>

0000a358 <OSMutexQuery>:
    a358:	e302373c 	movw	r3, #10044	; 0x273c
    a35c:	e3403001 	movt	r3, #1
    a360:	e92d4030 	push	{r4, r5, lr}
    a364:	e1a05000 	mov	r5, r0
    a368:	e5d34000 	ldrb	r4, [r3]
    a36c:	e24dd00c 	sub	sp, sp, #12
    a370:	e3540000 	cmp	r4, #0
    a374:	13a00006 	movne	r0, #6
    a378:	0a000001 	beq	a384 <OSMutexQuery+0x2c>
    a37c:	e28dd00c 	add	sp, sp, #12
    a380:	e8bd8030 	pop	{r4, r5, pc}
    a384:	e5d53000 	ldrb	r3, [r5]
    a388:	e3530004 	cmp	r3, #4
    a38c:	13a00001 	movne	r0, #1
    a390:	1afffff9 	bne	a37c <OSMutexQuery+0x24>
    a394:	e58d1004 	str	r1, [sp, #4]
    a398:	eb0004e4 	bl	b730 <OS_CPU_SR_Save>
    a39c:	e1d530b8 	ldrh	r3, [r5, #8]
    a3a0:	e59d1004 	ldr	r1, [sp, #4]
    a3a4:	e1a03423 	lsr	r3, r3, #8
    a3a8:	e281c008 	add	ip, r1, #8
    a3ac:	e5c1300b 	strb	r3, [r1, #11]
    a3b0:	e5d53008 	ldrb	r3, [r5, #8]
    a3b4:	e35300ff 	cmp	r3, #255	; 0xff
    a3b8:	15c14009 	strbne	r4, [r1, #9]
    a3bc:	e5c1300a 	strb	r3, [r1, #10]
    a3c0:	03a03001 	moveq	r3, #1
    a3c4:	05c13009 	strbeq	r3, [r1, #9]
    a3c8:	e5f5200a 	ldrb	r2, [r5, #10]!
    a3cc:	e1a03001 	mov	r3, r1
    a3d0:	e5c12008 	strb	r2, [r1, #8]
    a3d4:	e5f52001 	ldrb	r2, [r5, #1]!
    a3d8:	e4c32001 	strb	r2, [r3], #1
    a3dc:	e153000c 	cmp	r3, ip
    a3e0:	1afffffb 	bne	a3d4 <OSMutexQuery+0x7c>
    a3e4:	eb0004e4 	bl	b77c <OS_CPU_SR_Restore>
    a3e8:	e3a00000 	mov	r0, #0
    a3ec:	eaffffe2 	b	a37c <OSMutexQuery+0x24>

0000a3f0 <OSSemAccept>:
    a3f0:	e92d4038 	push	{r3, r4, r5, lr}
    a3f4:	e1a05000 	mov	r5, r0
    a3f8:	e5d03000 	ldrb	r3, [r0]
    a3fc:	e3530003 	cmp	r3, #3
    a400:	13a04000 	movne	r4, #0
    a404:	0a000001 	beq	a410 <OSSemAccept+0x20>
    a408:	e1a00004 	mov	r0, r4
    a40c:	e8bd8038 	pop	{r3, r4, r5, pc}
    a410:	eb0004c6 	bl	b730 <OS_CPU_SR_Save>
    a414:	e1d540b8 	ldrh	r4, [r5, #8]
    a418:	e3540000 	cmp	r4, #0
    a41c:	12443001 	subne	r3, r4, #1
    a420:	11c530b8 	strhne	r3, [r5, #8]
    a424:	eb0004d4 	bl	b77c <OS_CPU_SR_Restore>
    a428:	e1a00004 	mov	r0, r4
    a42c:	e8bd8038 	pop	{r3, r4, r5, pc}

0000a430 <OSSemCreate>:
    a430:	e302373c 	movw	r3, #10044	; 0x273c
    a434:	e3403001 	movt	r3, #1
    a438:	e92d4070 	push	{r4, r5, r6, lr}
    a43c:	e1a06000 	mov	r6, r0
    a440:	e5d35000 	ldrb	r5, [r3]
    a444:	e3550000 	cmp	r5, #0
    a448:	13a04000 	movne	r4, #0
    a44c:	1a000011 	bne	a498 <OSSemCreate+0x68>
    a450:	eb0004b6 	bl	b730 <OS_CPU_SR_Save>
    a454:	e3023738 	movw	r3, #10040	; 0x2738
    a458:	e3403001 	movt	r3, #1
    a45c:	e5934000 	ldr	r4, [r3]
    a460:	e3540000 	cmp	r4, #0
    a464:	0a00000d 	beq	a4a0 <OSSemCreate+0x70>
    a468:	e5942004 	ldr	r2, [r4, #4]
    a46c:	e5832000 	str	r2, [r3]
    a470:	eb0004c1 	bl	b77c <OS_CPU_SR_Restore>
    a474:	e3a03003 	mov	r3, #3
    a478:	e1c460b8 	strh	r6, [r4, #8]
    a47c:	e5c43000 	strb	r3, [r4]
    a480:	e1a00004 	mov	r0, r4
    a484:	e30f3fd4 	movw	r3, #65492	; 0xffd4
    a488:	e5845004 	str	r5, [r4, #4]
    a48c:	e3403000 	movt	r3, #0
    a490:	e5843014 	str	r3, [r4, #20]
    a494:	ebfff9b9 	bl	8b80 <OS_EventWaitListInit>
    a498:	e1a00004 	mov	r0, r4
    a49c:	e8bd8070 	pop	{r4, r5, r6, pc}
    a4a0:	eb0004b5 	bl	b77c <OS_CPU_SR_Restore>
    a4a4:	e1a00004 	mov	r0, r4
    a4a8:	e8bd8070 	pop	{r4, r5, r6, pc}

0000a4ac <OSSemDel>:
    a4ac:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    a4b0:	e1a04000 	mov	r4, r0
    a4b4:	e5d03000 	ldrb	r3, [r0]
    a4b8:	e24dd008 	sub	sp, sp, #8
    a4bc:	e1a05002 	mov	r5, r2
    a4c0:	e3530003 	cmp	r3, #3
    a4c4:	13a03001 	movne	r3, #1
    a4c8:	15c23000 	strbne	r3, [r2]
    a4cc:	0a000002 	beq	a4dc <OSSemDel+0x30>
    a4d0:	e1a00004 	mov	r0, r4
    a4d4:	e28dd008 	add	sp, sp, #8
    a4d8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    a4dc:	e302373c 	movw	r3, #10044	; 0x273c
    a4e0:	e3403001 	movt	r3, #1
    a4e4:	e5d33000 	ldrb	r3, [r3]
    a4e8:	e3530000 	cmp	r3, #0
    a4ec:	13a0300f 	movne	r3, #15
    a4f0:	15c23000 	strbne	r3, [r2]
    a4f4:	1afffff5 	bne	a4d0 <OSSemDel+0x24>
    a4f8:	e58d1004 	str	r1, [sp, #4]
    a4fc:	eb00048b 	bl	b730 <OS_CPU_SR_Save>
    a500:	e5d4700a 	ldrb	r7, [r4, #10]
    a504:	e59d1004 	ldr	r1, [sp, #4]
    a508:	e2977000 	adds	r7, r7, #0
    a50c:	13a07001 	movne	r7, #1
    a510:	e3510000 	cmp	r1, #0
    a514:	e1a06007 	mov	r6, r7
    a518:	e1a08000 	mov	r8, r0
    a51c:	1a00000f 	bne	a560 <OSSemDel+0xb4>
    a520:	e3570000 	cmp	r7, #0
    a524:	1a000013 	bne	a578 <OSSemDel+0xcc>
    a528:	e3023738 	movw	r3, #10040	; 0x2738
    a52c:	e3403001 	movt	r3, #1
    a530:	e5c47000 	strb	r7, [r4]
    a534:	e30f2fd4 	movw	r2, #65492	; 0xffd4
    a538:	e5931000 	ldr	r1, [r3]
    a53c:	e3402000 	movt	r2, #0
    a540:	e1c470b8 	strh	r7, [r4, #8]
    a544:	e5842014 	str	r2, [r4, #20]
    a548:	e5841004 	str	r1, [r4, #4]
    a54c:	e5834000 	str	r4, [r3]
    a550:	eb000489 	bl	b77c <OS_CPU_SR_Restore>
    a554:	e1a04007 	mov	r4, r7
    a558:	e5c57000 	strb	r7, [r5]
    a55c:	eaffffdb 	b	a4d0 <OSSemDel+0x24>
    a560:	e3510001 	cmp	r1, #1
    a564:	0a000007 	beq	a588 <OSSemDel+0xdc>
    a568:	eb000483 	bl	b77c <OS_CPU_SR_Restore>
    a56c:	e3a03007 	mov	r3, #7
    a570:	e5c53000 	strb	r3, [r5]
    a574:	eaffffd5 	b	a4d0 <OSSemDel+0x24>
    a578:	eb00047f 	bl	b77c <OS_CPU_SR_Restore>
    a57c:	e3a03049 	mov	r3, #73	; 0x49
    a580:	e5c53000 	strb	r3, [r5]
    a584:	eaffffd1 	b	a4d0 <OSSemDel+0x24>
    a588:	e3570000 	cmp	r7, #0
    a58c:	0a000007 	beq	a5b0 <OSSemDel+0x104>
    a590:	e3a03002 	mov	r3, #2
    a594:	e1a00004 	mov	r0, r4
    a598:	e3a01000 	mov	r1, #0
    a59c:	e3a02001 	mov	r2, #1
    a5a0:	ebfff93d 	bl	8a9c <OS_EventTaskRdy>
    a5a4:	e5d4300a 	ldrb	r3, [r4, #10]
    a5a8:	e3530000 	cmp	r3, #0
    a5ac:	1afffff7 	bne	a590 <OSSemDel+0xe4>
    a5b0:	e3023738 	movw	r3, #10040	; 0x2738
    a5b4:	e3403001 	movt	r3, #1
    a5b8:	e3a01000 	mov	r1, #0
    a5bc:	e5c41000 	strb	r1, [r4]
    a5c0:	e593c000 	ldr	ip, [r3]
    a5c4:	e30f2fd4 	movw	r2, #65492	; 0xffd4
    a5c8:	e1c410b8 	strh	r1, [r4, #8]
    a5cc:	e3402000 	movt	r2, #0
    a5d0:	e1a00008 	mov	r0, r8
    a5d4:	e5842014 	str	r2, [r4, #20]
    a5d8:	e584c004 	str	ip, [r4, #4]
    a5dc:	e5834000 	str	r4, [r3]
    a5e0:	eb000465 	bl	b77c <OS_CPU_SR_Restore>
    a5e4:	e3560001 	cmp	r6, #1
    a5e8:	0a000002 	beq	a5f8 <OSSemDel+0x14c>
    a5ec:	e3a04000 	mov	r4, #0
    a5f0:	e5c54000 	strb	r4, [r5]
    a5f4:	eaffffb5 	b	a4d0 <OSSemDel+0x24>
    a5f8:	ebfff97e 	bl	8bf8 <OS_Sched>
    a5fc:	eafffffa 	b	a5ec <OSSemDel+0x140>

0000a600 <OSSemPend>:
    a600:	e92d4070 	push	{r4, r5, r6, lr}
    a604:	e1a04000 	mov	r4, r0
    a608:	e5d03000 	ldrb	r3, [r0]
    a60c:	e24dd008 	sub	sp, sp, #8
    a610:	e3530003 	cmp	r3, #3
    a614:	13a03001 	movne	r3, #1
    a618:	15c23000 	strbne	r3, [r2]
    a61c:	0a000001 	beq	a628 <OSSemPend+0x28>
    a620:	e28dd008 	add	sp, sp, #8
    a624:	e8bd8070 	pop	{r4, r5, r6, pc}
    a628:	e302373c 	movw	r3, #10044	; 0x273c
    a62c:	e3403001 	movt	r3, #1
    a630:	e5d33000 	ldrb	r3, [r3]
    a634:	e3530000 	cmp	r3, #0
    a638:	13a03002 	movne	r3, #2
    a63c:	15c23000 	strbne	r3, [r2]
    a640:	1afffff6 	bne	a620 <OSSemPend+0x20>
    a644:	e302368c 	movw	r3, #9868	; 0x268c
    a648:	e3403001 	movt	r3, #1
    a64c:	e5d35000 	ldrb	r5, [r3]
    a650:	e3550000 	cmp	r5, #0
    a654:	13a0300d 	movne	r3, #13
    a658:	15c23000 	strbne	r3, [r2]
    a65c:	1affffef 	bne	a620 <OSSemPend+0x20>
    a660:	e58d1004 	str	r1, [sp, #4]
    a664:	e58d2000 	str	r2, [sp]
    a668:	eb000430 	bl	b730 <OS_CPU_SR_Save>
    a66c:	e1d4c0b8 	ldrh	ip, [r4, #8]
    a670:	e59d1004 	ldr	r1, [sp, #4]
    a674:	e35c0000 	cmp	ip, #0
    a678:	e59d2000 	ldr	r2, [sp]
    a67c:	e1a06000 	mov	r6, r0
    a680:	1a000029 	bne	a72c <OSSemPend+0x12c>
    a684:	e3025740 	movw	r5, #10048	; 0x2740
    a688:	e3405001 	movt	r5, #1
    a68c:	e1a00004 	mov	r0, r4
    a690:	e5953000 	ldr	r3, [r5]
    a694:	e5d3e02c 	ldrb	lr, [r3, #44]	; 0x2c
    a698:	e5c3c02d 	strb	ip, [r3, #45]	; 0x2d
    a69c:	e5831028 	str	r1, [r3, #40]	; 0x28
    a6a0:	e38ec001 	orr	ip, lr, #1
    a6a4:	e5c3c02c 	strb	ip, [r3, #44]	; 0x2c
    a6a8:	e58d2000 	str	r2, [sp]
    a6ac:	ebfff88f 	bl	88f0 <OS_EventTaskWait>
    a6b0:	e1a00006 	mov	r0, r6
    a6b4:	eb000430 	bl	b77c <OS_CPU_SR_Restore>
    a6b8:	ebfff94e 	bl	8bf8 <OS_Sched>
    a6bc:	eb00041b 	bl	b730 <OS_CPU_SR_Save>
    a6c0:	e59d2000 	ldr	r2, [sp]
    a6c4:	e1a06000 	mov	r6, r0
    a6c8:	e5950000 	ldr	r0, [r5]
    a6cc:	e5d0302d 	ldrb	r3, [r0, #45]	; 0x2d
    a6d0:	e3530000 	cmp	r3, #0
    a6d4:	1a00000a 	bne	a704 <OSSemPend+0x104>
    a6d8:	e5c23000 	strb	r3, [r2]
    a6dc:	e5953000 	ldr	r3, [r5]
    a6e0:	e3a02000 	mov	r2, #0
    a6e4:	e1a00006 	mov	r0, r6
    a6e8:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    a6ec:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    a6f0:	e583201c 	str	r2, [r3, #28]
    a6f4:	e5832020 	str	r2, [r3, #32]
    a6f8:	e28dd008 	add	sp, sp, #8
    a6fc:	e8bd4070 	pop	{r4, r5, r6, lr}
    a700:	ea00041d 	b	b77c <OS_CPU_SR_Restore>
    a704:	e3530002 	cmp	r3, #2
    a708:	03a0300e 	moveq	r3, #14
    a70c:	05c23000 	strbeq	r3, [r2]
    a710:	0afffff1 	beq	a6dc <OSSemPend+0xdc>
    a714:	e1a01004 	mov	r1, r4
    a718:	e58d2000 	str	r2, [sp]
    a71c:	ebfff8bb 	bl	8a10 <OS_EventTaskRemove>
    a720:	e3a0300a 	mov	r3, #10
    a724:	e59d2000 	ldr	r2, [sp]
    a728:	eaffffea 	b	a6d8 <OSSemPend+0xd8>
    a72c:	e24cc001 	sub	ip, ip, #1
    a730:	e1c4c0b8 	strh	ip, [r4, #8]
    a734:	eb000410 	bl	b77c <OS_CPU_SR_Restore>
    a738:	e59d2000 	ldr	r2, [sp]
    a73c:	e5c25000 	strb	r5, [r2]
    a740:	eaffffb6 	b	a620 <OSSemPend+0x20>

0000a744 <OSSemPendAbort>:
    a744:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    a748:	e1a04000 	mov	r4, r0
    a74c:	e5d03000 	ldrb	r3, [r0]
    a750:	e24dd008 	sub	sp, sp, #8
    a754:	e1a06002 	mov	r6, r2
    a758:	e3530003 	cmp	r3, #3
    a75c:	0a000005 	beq	a778 <OSSemPendAbort+0x34>
    a760:	e3a05000 	mov	r5, #0
    a764:	e3a03001 	mov	r3, #1
    a768:	e5c23000 	strb	r3, [r2]
    a76c:	e1a00005 	mov	r0, r5
    a770:	e28dd008 	add	sp, sp, #8
    a774:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    a778:	e58d1004 	str	r1, [sp, #4]
    a77c:	eb0003eb 	bl	b730 <OS_CPU_SR_Save>
    a780:	e5d4700a 	ldrb	r7, [r4, #10]
    a784:	e59d1004 	ldr	r1, [sp, #4]
    a788:	e3570000 	cmp	r7, #0
    a78c:	e1a08000 	mov	r8, r0
    a790:	0a000019 	beq	a7fc <OSSemPendAbort+0xb8>
    a794:	e3510001 	cmp	r1, #1
    a798:	0a00000b 	beq	a7cc <OSSemPendAbort+0x88>
    a79c:	e1a00004 	mov	r0, r4
    a7a0:	e3a01000 	mov	r1, #0
    a7a4:	e3a02001 	mov	r2, #1
    a7a8:	e3a03002 	mov	r3, #2
    a7ac:	ebfff8ba 	bl	8a9c <OS_EventTaskRdy>
    a7b0:	e3a05001 	mov	r5, #1
    a7b4:	e1a00008 	mov	r0, r8
    a7b8:	eb0003ef 	bl	b77c <OS_CPU_SR_Restore>
    a7bc:	ebfff90d 	bl	8bf8 <OS_Sched>
    a7c0:	e3a0300e 	mov	r3, #14
    a7c4:	e5c63000 	strb	r3, [r6]
    a7c8:	eaffffe7 	b	a76c <OSSemPendAbort+0x28>
    a7cc:	e3a05000 	mov	r5, #0
    a7d0:	e3a03002 	mov	r3, #2
    a7d4:	e1a00004 	mov	r0, r4
    a7d8:	e3a01000 	mov	r1, #0
    a7dc:	e3a02001 	mov	r2, #1
    a7e0:	ebfff8ad 	bl	8a9c <OS_EventTaskRdy>
    a7e4:	e5d4300a 	ldrb	r3, [r4, #10]
    a7e8:	e2855001 	add	r5, r5, #1
    a7ec:	e3530000 	cmp	r3, #0
    a7f0:	e6ef5075 	uxtb	r5, r5
    a7f4:	1afffff5 	bne	a7d0 <OSSemPendAbort+0x8c>
    a7f8:	eaffffed 	b	a7b4 <OSSemPendAbort+0x70>
    a7fc:	eb0003de 	bl	b77c <OS_CPU_SR_Restore>
    a800:	e1a05007 	mov	r5, r7
    a804:	e5c67000 	strb	r7, [r6]
    a808:	eaffffd7 	b	a76c <OSSemPendAbort+0x28>

0000a80c <OSSemPost>:
    a80c:	e92d4070 	push	{r4, r5, r6, lr}
    a810:	e1a04000 	mov	r4, r0
    a814:	e5d03000 	ldrb	r3, [r0]
    a818:	e3530003 	cmp	r3, #3
    a81c:	0a000001 	beq	a828 <OSSemPost+0x1c>
    a820:	e3a00001 	mov	r0, #1
    a824:	e8bd8070 	pop	{r4, r5, r6, pc}
    a828:	eb0003c0 	bl	b730 <OS_CPU_SR_Save>
    a82c:	e5d4500a 	ldrb	r5, [r4, #10]
    a830:	e3550000 	cmp	r5, #0
    a834:	e1a06000 	mov	r6, r0
    a838:	1a00000b 	bne	a86c <OSSemPost+0x60>
    a83c:	e1d430b8 	ldrh	r3, [r4, #8]
    a840:	e30f2fff 	movw	r2, #65535	; 0xffff
    a844:	e1530002 	cmp	r3, r2
    a848:	0a000004 	beq	a860 <OSSemPost+0x54>
    a84c:	e2833001 	add	r3, r3, #1
    a850:	e1c430b8 	strh	r3, [r4, #8]
    a854:	eb0003c8 	bl	b77c <OS_CPU_SR_Restore>
    a858:	e1a00005 	mov	r0, r5
    a85c:	e8bd8070 	pop	{r4, r5, r6, pc}
    a860:	eb0003c5 	bl	b77c <OS_CPU_SR_Restore>
    a864:	e3a00033 	mov	r0, #51	; 0x33
    a868:	e8bd8070 	pop	{r4, r5, r6, pc}
    a86c:	e3a01000 	mov	r1, #0
    a870:	e3a02001 	mov	r2, #1
    a874:	e1a03001 	mov	r3, r1
    a878:	e1a00004 	mov	r0, r4
    a87c:	ebfff886 	bl	8a9c <OS_EventTaskRdy>
    a880:	e1a00006 	mov	r0, r6
    a884:	eb0003bc 	bl	b77c <OS_CPU_SR_Restore>
    a888:	ebfff8da 	bl	8bf8 <OS_Sched>
    a88c:	e3a00000 	mov	r0, #0
    a890:	e8bd8070 	pop	{r4, r5, r6, pc}

0000a894 <OSSemQuery>:
    a894:	e92d4010 	push	{r4, lr}
    a898:	e1a04000 	mov	r4, r0
    a89c:	e5d03000 	ldrb	r3, [r0]
    a8a0:	e24dd008 	sub	sp, sp, #8
    a8a4:	e3530003 	cmp	r3, #3
    a8a8:	13a00001 	movne	r0, #1
    a8ac:	0a000001 	beq	a8b8 <OSSemQuery+0x24>
    a8b0:	e28dd008 	add	sp, sp, #8
    a8b4:	e8bd8010 	pop	{r4, pc}
    a8b8:	e58d1004 	str	r1, [sp, #4]
    a8bc:	eb00039b 	bl	b730 <OS_CPU_SR_Save>
    a8c0:	e59d1004 	ldr	r1, [sp, #4]
    a8c4:	e1a02004 	mov	r2, r4
    a8c8:	e5f2c00a 	ldrb	ip, [r2, #10]!
    a8cc:	e2813002 	add	r3, r1, #2
    a8d0:	e281e00a 	add	lr, r1, #10
    a8d4:	e5c1c00a 	strb	ip, [r1, #10]
    a8d8:	e5f2c001 	ldrb	ip, [r2, #1]!
    a8dc:	e4c3c001 	strb	ip, [r3], #1
    a8e0:	e153000e 	cmp	r3, lr
    a8e4:	1afffffb 	bne	a8d8 <OSSemQuery+0x44>
    a8e8:	e1d430b8 	ldrh	r3, [r4, #8]
    a8ec:	e1c130b0 	strh	r3, [r1]
    a8f0:	eb0003a1 	bl	b77c <OS_CPU_SR_Restore>
    a8f4:	e3a00000 	mov	r0, #0
    a8f8:	eaffffec 	b	a8b0 <OSSemQuery+0x1c>

0000a8fc <OSSemSet>:
    a8fc:	e92d4010 	push	{r4, lr}
    a900:	e1a04000 	mov	r4, r0
    a904:	e5d03000 	ldrb	r3, [r0]
    a908:	e24dd008 	sub	sp, sp, #8
    a90c:	e3530003 	cmp	r3, #3
    a910:	0a000003 	beq	a924 <OSSemSet+0x28>
    a914:	e3a03001 	mov	r3, #1
    a918:	e5c23000 	strb	r3, [r2]
    a91c:	e28dd008 	add	sp, sp, #8
    a920:	e8bd8010 	pop	{r4, pc}
    a924:	e58d1004 	str	r1, [sp, #4]
    a928:	e58d2000 	str	r2, [sp]
    a92c:	eb00037f 	bl	b730 <OS_CPU_SR_Save>
    a930:	e59d2000 	ldr	r2, [sp]
    a934:	e3a03000 	mov	r3, #0
    a938:	e5c23000 	strb	r3, [r2]
    a93c:	e1d430b8 	ldrh	r3, [r4, #8]
    a940:	e59d1004 	ldr	r1, [sp, #4]
    a944:	e3530000 	cmp	r3, #0
    a948:	1a000004 	bne	a960 <OSSemSet+0x64>
    a94c:	e5d4300a 	ldrb	r3, [r4, #10]
    a950:	e3530000 	cmp	r3, #0
    a954:	13a03049 	movne	r3, #73	; 0x49
    a958:	15c23000 	strbne	r3, [r2]
    a95c:	1a000000 	bne	a964 <OSSemSet+0x68>
    a960:	e1c410b8 	strh	r1, [r4, #8]
    a964:	e28dd008 	add	sp, sp, #8
    a968:	e8bd4010 	pop	{r4, lr}
    a96c:	ea000382 	b	b77c <OS_CPU_SR_Restore>

0000a970 <OSTaskChangePrio>:
    a970:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    a974:	e1a04001 	mov	r4, r1
    a978:	e1a05000 	mov	r5, r0
    a97c:	eb00036b 	bl	b730 <OS_CPU_SR_Save>
    a980:	e30330c8 	movw	r3, #12488	; 0x30c8
    a984:	e3403001 	movt	r3, #1
    a988:	e7932104 	ldr	r2, [r3, r4, lsl #2]
    a98c:	e3520000 	cmp	r2, #0
    a990:	e1a0a000 	mov	sl, r0
    a994:	0a000002 	beq	a9a4 <OSTaskChangePrio+0x34>
    a998:	eb000377 	bl	b77c <OS_CPU_SR_Restore>
    a99c:	e3a00028 	mov	r0, #40	; 0x28
    a9a0:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    a9a4:	e35500ff 	cmp	r5, #255	; 0xff
    a9a8:	03022740 	movweq	r2, #10048	; 0x2740
    a9ac:	03402001 	movteq	r2, #1
    a9b0:	05922000 	ldreq	r2, [r2]
    a9b4:	05d2502e 	ldrbeq	r5, [r2, #46]	; 0x2e
    a9b8:	e793c105 	ldr	ip, [r3, r5, lsl #2]
    a9bc:	e30330c8 	movw	r3, #12488	; 0x30c8
    a9c0:	e3403001 	movt	r3, #1
    a9c4:	e35c0000 	cmp	ip, #0
    a9c8:	0a000058 	beq	ab30 <OSTaskChangePrio+0x1c0>
    a9cc:	e35c0001 	cmp	ip, #1
    a9d0:	0a000059 	beq	ab3c <OSTaskChangePrio+0x1cc>
    a9d4:	e3a02000 	mov	r2, #0
    a9d8:	e7832105 	str	r2, [r3, r5, lsl #2]
    a9dc:	e783c104 	str	ip, [r3, r4, lsl #2]
    a9e0:	e3023730 	movw	r3, #10032	; 0x2730
    a9e4:	e5dc7030 	ldrb	r7, [ip, #48]	; 0x30
    a9e8:	e3403001 	movt	r3, #1
    a9ec:	e5dc8031 	ldrb	r8, [ip, #49]	; 0x31
    a9f0:	e3a06001 	mov	r6, #1
    a9f4:	e1a0e1a4 	lsr	lr, r4, #3
    a9f8:	e2049007 	and	r9, r4, #7
    a9fc:	e7d32007 	ldrb	r2, [r3, r7]
    aa00:	e1a05e16 	lsl	r5, r6, lr
    aa04:	e1a06916 	lsl	r6, r6, r9
    aa08:	e5dc0032 	ldrb	r0, [ip, #50]	; 0x32
    aa0c:	e1120008 	tst	r2, r8
    aa10:	e6ef5075 	uxtb	r5, r5
    aa14:	e6ef6076 	uxtb	r6, r6
    aa18:	0a00000b 	beq	aa4c <OSTaskChangePrio+0xdc>
    aa1c:	e1c22008 	bic	r2, r2, r8
    aa20:	e7c32007 	strb	r2, [r3, r7]
    aa24:	e3520000 	cmp	r2, #0
    aa28:	e302272c 	movw	r2, #10028	; 0x272c
    aa2c:	e3402001 	movt	r2, #1
    aa30:	e7d3100e 	ldrb	r1, [r3, lr]
    aa34:	e5d2b000 	ldrb	fp, [r2]
    aa38:	01cbb000 	biceq	fp, fp, r0
    aa3c:	e18bb005 	orr	fp, fp, r5
    aa40:	e5c2b000 	strb	fp, [r2]
    aa44:	e1862001 	orr	r2, r6, r1
    aa48:	e7c3200e 	strb	r2, [r3, lr]
    aa4c:	e59c301c 	ldr	r3, [ip, #28]
    aa50:	e3530000 	cmp	r3, #0
    aa54:	0a00000c 	beq	aa8c <OSTaskChangePrio+0x11c>
    aa58:	e0831007 	add	r1, r3, r7
    aa5c:	e5d1200b 	ldrb	r2, [r1, #11]
    aa60:	e1c22008 	bic	r2, r2, r8
    aa64:	e5c1200b 	strb	r2, [r1, #11]
    aa68:	e5d3100a 	ldrb	r1, [r3, #10]
    aa6c:	e3520000 	cmp	r2, #0
    aa70:	e083200e 	add	r2, r3, lr
    aa74:	01c11000 	biceq	r1, r1, r0
    aa78:	e1811005 	orr	r1, r1, r5
    aa7c:	e5c3100a 	strb	r1, [r3, #10]
    aa80:	e5d2300b 	ldrb	r3, [r2, #11]
    aa84:	e1863003 	orr	r3, r6, r3
    aa88:	e5c2300b 	strb	r3, [r2, #11]
    aa8c:	e59c1020 	ldr	r1, [ip, #32]
    aa90:	e3510000 	cmp	r1, #0
    aa94:	0a000015 	beq	aaf0 <OSTaskChangePrio+0x180>
    aa98:	e5913000 	ldr	r3, [r1]
    aa9c:	e3530000 	cmp	r3, #0
    aaa0:	0a000012 	beq	aaf0 <OSTaskChangePrio+0x180>
    aaa4:	e1e08008 	mvn	r8, r8
    aaa8:	e1e00000 	mvn	r0, r0
    aaac:	e6ef8078 	uxtb	r8, r8
    aab0:	e083b007 	add	fp, r3, r7
    aab4:	e5db200b 	ldrb	r2, [fp, #11]
    aab8:	e0082002 	and	r2, r8, r2
    aabc:	e5cb200b 	strb	r2, [fp, #11]
    aac0:	e5d3b00a 	ldrb	fp, [r3, #10]
    aac4:	e3520000 	cmp	r2, #0
    aac8:	e083200e 	add	r2, r3, lr
    aacc:	0000b00b 	andeq	fp, r0, fp
    aad0:	e18bb005 	orr	fp, fp, r5
    aad4:	e5c3b00a 	strb	fp, [r3, #10]
    aad8:	e5d2300b 	ldrb	r3, [r2, #11]
    aadc:	e1863003 	orr	r3, r6, r3
    aae0:	e5c2300b 	strb	r3, [r2, #11]
    aae4:	e5b13004 	ldr	r3, [r1, #4]!
    aae8:	e3530000 	cmp	r3, #0
    aaec:	1affffef 	bne	aab0 <OSTaskChangePrio+0x140>
    aaf0:	e5cc402e 	strb	r4, [ip, #46]	; 0x2e
    aaf4:	e1a0000a 	mov	r0, sl
    aaf8:	e5cce030 	strb	lr, [ip, #48]	; 0x30
    aafc:	e5cc902f 	strb	r9, [ip, #47]	; 0x2f
    ab00:	e5cc5032 	strb	r5, [ip, #50]	; 0x32
    ab04:	e5cc6031 	strb	r6, [ip, #49]	; 0x31
    ab08:	eb00031b 	bl	b77c <OS_CPU_SR_Restore>
    ab0c:	e302368e 	movw	r3, #9870	; 0x268e
    ab10:	e3403001 	movt	r3, #1
    ab14:	e5d33000 	ldrb	r3, [r3]
    ab18:	e3530001 	cmp	r3, #1
    ab1c:	0a000001 	beq	ab28 <OSTaskChangePrio+0x1b8>
    ab20:	e3a00000 	mov	r0, #0
    ab24:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    ab28:	ebfff832 	bl	8bf8 <OS_Sched>
    ab2c:	eafffffb 	b	ab20 <OSTaskChangePrio+0x1b0>
    ab30:	eb000311 	bl	b77c <OS_CPU_SR_Restore>
    ab34:	e3a00029 	mov	r0, #41	; 0x29
    ab38:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    ab3c:	eb00030e 	bl	b77c <OS_CPU_SR_Restore>
    ab40:	e3a00043 	mov	r0, #67	; 0x43
    ab44:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}

0000ab48 <OSTaskCreate>:
    ab48:	e92d45f0 	push	{r4, r5, r6, r7, r8, sl, lr}
    ab4c:	e24dd014 	sub	sp, sp, #20
    ab50:	e1a0a000 	mov	sl, r0
    ab54:	e1a08001 	mov	r8, r1
    ab58:	e1a05002 	mov	r5, r2
    ab5c:	e1a06003 	mov	r6, r3
    ab60:	eb0002f2 	bl	b730 <OS_CPU_SR_Save>
    ab64:	e302c73c 	movw	ip, #10044	; 0x273c
    ab68:	e340c001 	movt	ip, #1
    ab6c:	e5dcc000 	ldrb	ip, [ip]
    ab70:	e35c0000 	cmp	ip, #0
    ab74:	1a000009 	bne	aba0 <OSTaskCreate+0x58>
    ab78:	e30340c8 	movw	r4, #12488	; 0x30c8
    ab7c:	e3404001 	movt	r4, #1
    ab80:	e7947106 	ldr	r7, [r4, r6, lsl #2]
    ab84:	e3570000 	cmp	r7, #0
    ab88:	0a000007 	beq	abac <OSTaskCreate+0x64>
    ab8c:	eb0002fa 	bl	b77c <OS_CPU_SR_Restore>
    ab90:	e3a05028 	mov	r5, #40	; 0x28
    ab94:	e1a00005 	mov	r0, r5
    ab98:	e28dd014 	add	sp, sp, #20
    ab9c:	e8bd85f0 	pop	{r4, r5, r6, r7, r8, sl, pc}
    aba0:	eb0002f5 	bl	b77c <OS_CPU_SR_Restore>
    aba4:	e3a0503c 	mov	r5, #60	; 0x3c
    aba8:	eafffff9 	b	ab94 <OSTaskCreate+0x4c>
    abac:	e3a03001 	mov	r3, #1
    abb0:	e7843106 	str	r3, [r4, r6, lsl #2]
    abb4:	eb0002f0 	bl	b77c <OS_CPU_SR_Restore>
    abb8:	e1a02005 	mov	r2, r5
    abbc:	e1a01008 	mov	r1, r8
    abc0:	e1a03007 	mov	r3, r7
    abc4:	e1a0000a 	mov	r0, sl
    abc8:	eb000418 	bl	bc30 <OSTaskStkInit>
    abcc:	e58d7000 	str	r7, [sp]
    abd0:	e58d7004 	str	r7, [sp, #4]
    abd4:	e1a02007 	mov	r2, r7
    abd8:	e58d7008 	str	r7, [sp, #8]
    abdc:	e1a03007 	mov	r3, r7
    abe0:	e1a01000 	mov	r1, r0
    abe4:	e1a00006 	mov	r0, r6
    abe8:	ebfff93f 	bl	90ec <OS_TCBInit>
    abec:	e2505000 	subs	r5, r0, #0
    abf0:	1a000006 	bne	ac10 <OSTaskCreate+0xc8>
    abf4:	e302368e 	movw	r3, #9870	; 0x268e
    abf8:	e3403001 	movt	r3, #1
    abfc:	e5d33000 	ldrb	r3, [r3]
    ac00:	e3530001 	cmp	r3, #1
    ac04:	1affffe2 	bne	ab94 <OSTaskCreate+0x4c>
    ac08:	ebfff7fa 	bl	8bf8 <OS_Sched>
    ac0c:	eaffffe0 	b	ab94 <OSTaskCreate+0x4c>
    ac10:	eb0002c6 	bl	b730 <OS_CPU_SR_Save>
    ac14:	e7847106 	str	r7, [r4, r6, lsl #2]
    ac18:	eb0002d7 	bl	b77c <OS_CPU_SR_Restore>
    ac1c:	eaffffdc 	b	ab94 <OSTaskCreate+0x4c>

0000ac20 <OSTaskCreateExt>:
    ac20:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    ac24:	e24dd010 	sub	sp, sp, #16
    ac28:	e1a07000 	mov	r7, r0
    ac2c:	e1a08001 	mov	r8, r1
    ac30:	e1a0a002 	mov	sl, r2
    ac34:	e1a06003 	mov	r6, r3
    ac38:	e1dd54b0 	ldrh	r5, [sp, #64]	; 0x40
    ac3c:	eb0002bb 	bl	b730 <OS_CPU_SR_Save>
    ac40:	e302c73c 	movw	ip, #10044	; 0x273c
    ac44:	e340c001 	movt	ip, #1
    ac48:	e5dcc000 	ldrb	ip, [ip]
    ac4c:	e35c0000 	cmp	ip, #0
    ac50:	1a000009 	bne	ac7c <OSTaskCreateExt+0x5c>
    ac54:	e30340c8 	movw	r4, #12488	; 0x30c8
    ac58:	e3404001 	movt	r4, #1
    ac5c:	e7949106 	ldr	r9, [r4, r6, lsl #2]
    ac60:	e3590000 	cmp	r9, #0
    ac64:	0a000007 	beq	ac88 <OSTaskCreateExt+0x68>
    ac68:	eb0002c3 	bl	b77c <OS_CPU_SR_Restore>
    ac6c:	e3a05028 	mov	r5, #40	; 0x28
    ac70:	e1a00005 	mov	r0, r5
    ac74:	e28dd010 	add	sp, sp, #16
    ac78:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
    ac7c:	eb0002be 	bl	b77c <OS_CPU_SR_Restore>
    ac80:	e3a0503c 	mov	r5, #60	; 0x3c
    ac84:	eafffff9 	b	ac70 <OSTaskCreateExt+0x50>
    ac88:	e3a03001 	mov	r3, #1
    ac8c:	e7843106 	str	r3, [r4, r6, lsl #2]
    ac90:	eb0002b9 	bl	b77c <OS_CPU_SR_Restore>
    ac94:	e2053003 	and	r3, r5, #3
    ac98:	e3530003 	cmp	r3, #3
    ac9c:	1a000006 	bne	acbc <OSTaskCreateExt+0x9c>
    aca0:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
    aca4:	e3530000 	cmp	r3, #0
    aca8:	0a000003 	beq	acbc <OSTaskCreateExt+0x9c>
    acac:	e59d2034 	ldr	r2, [sp, #52]	; 0x34
    acb0:	e2533001 	subs	r3, r3, #1
    acb4:	e4829004 	str	r9, [r2], #4
    acb8:	1afffffc 	bne	acb0 <OSTaskCreateExt+0x90>
    acbc:	e1a03005 	mov	r3, r5
    acc0:	e1a01008 	mov	r1, r8
    acc4:	e1a0200a 	mov	r2, sl
    acc8:	e1a00007 	mov	r0, r7
    accc:	eb0003d7 	bl	bc30 <OSTaskStkInit>
    acd0:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
    acd4:	e59d2034 	ldr	r2, [sp, #52]	; 0x34
    acd8:	e58d3000 	str	r3, [sp]
    acdc:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
    ace0:	e98d0028 	stmib	sp, {r3, r5}
    ace4:	e1dd33b0 	ldrh	r3, [sp, #48]	; 0x30
    ace8:	e1a01000 	mov	r1, r0
    acec:	e1a00006 	mov	r0, r6
    acf0:	ebfff8fd 	bl	90ec <OS_TCBInit>
    acf4:	e2505000 	subs	r5, r0, #0
    acf8:	1a000006 	bne	ad18 <OSTaskCreateExt+0xf8>
    acfc:	e302368e 	movw	r3, #9870	; 0x268e
    ad00:	e3403001 	movt	r3, #1
    ad04:	e5d33000 	ldrb	r3, [r3]
    ad08:	e3530001 	cmp	r3, #1
    ad0c:	1affffd7 	bne	ac70 <OSTaskCreateExt+0x50>
    ad10:	ebfff7b8 	bl	8bf8 <OS_Sched>
    ad14:	eaffffd5 	b	ac70 <OSTaskCreateExt+0x50>
    ad18:	eb000284 	bl	b730 <OS_CPU_SR_Save>
    ad1c:	e3a03000 	mov	r3, #0
    ad20:	e7843106 	str	r3, [r4, r6, lsl #2]
    ad24:	eb000294 	bl	b77c <OS_CPU_SR_Restore>
    ad28:	eaffffd0 	b	ac70 <OSTaskCreateExt+0x50>

0000ad2c <OSTaskDel>:
    ad2c:	e302373c 	movw	r3, #10044	; 0x273c
    ad30:	e3403001 	movt	r3, #1
    ad34:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    ad38:	e1a04000 	mov	r4, r0
    ad3c:	e5d33000 	ldrb	r3, [r3]
    ad40:	e3530000 	cmp	r3, #0
    ad44:	0a000001 	beq	ad50 <OSTaskDel+0x24>
    ad48:	e3a00040 	mov	r0, #64	; 0x40
    ad4c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    ad50:	e350003f 	cmp	r0, #63	; 0x3f
    ad54:	1a000001 	bne	ad60 <OSTaskDel+0x34>
    ad58:	e3a0003e 	mov	r0, #62	; 0x3e
    ad5c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    ad60:	eb000272 	bl	b730 <OS_CPU_SR_Save>
    ad64:	e35400ff 	cmp	r4, #255	; 0xff
    ad68:	e30360c8 	movw	r6, #12488	; 0x30c8
    ad6c:	e3406001 	movt	r6, #1
    ad70:	03023740 	movweq	r3, #10048	; 0x2740
    ad74:	03403001 	movteq	r3, #1
    ad78:	e1a08000 	mov	r8, r0
    ad7c:	05933000 	ldreq	r3, [r3]
    ad80:	05d3402e 	ldrbeq	r4, [r3, #46]	; 0x2e
    ad84:	e7965104 	ldr	r5, [r6, r4, lsl #2]
    ad88:	e3550000 	cmp	r5, #0
    ad8c:	0a000058 	beq	aef4 <OSTaskDel+0x1c8>
    ad90:	e3550001 	cmp	r5, #1
    ad94:	0a000059 	beq	af00 <OSTaskDel+0x1d4>
    ad98:	e5d51030 	ldrb	r1, [r5, #48]	; 0x30
    ad9c:	e3023730 	movw	r3, #10032	; 0x2730
    ada0:	e3403001 	movt	r3, #1
    ada4:	e5d50031 	ldrb	r0, [r5, #49]	; 0x31
    ada8:	e7d32001 	ldrb	r2, [r3, r1]
    adac:	e1c22000 	bic	r2, r2, r0
    adb0:	e7c32001 	strb	r2, [r3, r1]
    adb4:	e3520000 	cmp	r2, #0
    adb8:	0a000043 	beq	aecc <OSTaskDel+0x1a0>
    adbc:	e595101c 	ldr	r1, [r5, #28]
    adc0:	e3510000 	cmp	r1, #0
    adc4:	0a000001 	beq	add0 <OSTaskDel+0xa4>
    adc8:	e1a00005 	mov	r0, r5
    adcc:	ebfff70f 	bl	8a10 <OS_EventTaskRemove>
    add0:	e5951020 	ldr	r1, [r5, #32]
    add4:	e3510000 	cmp	r1, #0
    add8:	0a000001 	beq	ade4 <OSTaskDel+0xb8>
    addc:	e1a00005 	mov	r0, r5
    ade0:	ebfff716 	bl	8a40 <OS_EventTaskRemoveMulti>
    ade4:	e302768c 	movw	r7, #9868	; 0x268c
    ade8:	e3407001 	movt	r7, #1
    adec:	e3a03000 	mov	r3, #0
    adf0:	e1a00008 	mov	r0, r8
    adf4:	e5d72000 	ldrb	r2, [r7]
    adf8:	e5853028 	str	r3, [r5, #40]	; 0x28
    adfc:	e35200ff 	cmp	r2, #255	; 0xff
    ae00:	e5c5302c 	strb	r3, [r5, #44]	; 0x2c
    ae04:	e5c5302d 	strb	r3, [r5, #45]	; 0x2d
    ae08:	12822001 	addne	r2, r2, #1
    ae0c:	15c72000 	strbne	r2, [r7]
    ae10:	eb000259 	bl	b77c <OS_CPU_SR_Restore>
    ae14:	ebfff6b4 	bl	88ec <OS_Dummy>
    ae18:	eb000244 	bl	b730 <OS_CPU_SR_Save>
    ae1c:	e5d72000 	ldrb	r2, [r7]
    ae20:	e302368c 	movw	r3, #9868	; 0x268c
    ae24:	e3403001 	movt	r3, #1
    ae28:	e3520000 	cmp	r2, #0
    ae2c:	12422001 	subne	r2, r2, #1
    ae30:	15c32000 	strbne	r2, [r3]
    ae34:	e1a08000 	mov	r8, r0
    ae38:	e1a00005 	mov	r0, r5
    ae3c:	eb000377 	bl	bc20 <OSTaskDelHook>
    ae40:	e3a02000 	mov	r2, #0
    ae44:	e3023720 	movw	r3, #10016	; 0x2720
    ae48:	e7862104 	str	r2, [r6, r4, lsl #2]
    ae4c:	e3403001 	movt	r3, #1
    ae50:	e5952018 	ldr	r2, [r5, #24]
    ae54:	e1a00008 	mov	r0, r8
    ae58:	e3520000 	cmp	r2, #0
    ae5c:	e5d31000 	ldrb	r1, [r3]
    ae60:	e2411001 	sub	r1, r1, #1
    ae64:	e5c31000 	strb	r1, [r3]
    ae68:	15953014 	ldrne	r3, [r5, #20]
    ae6c:	03023698 	movweq	r3, #9880	; 0x2698
    ae70:	05951014 	ldreq	r1, [r5, #20]
    ae74:	03403001 	movteq	r3, #1
    ae78:	15823014 	strne	r3, [r2, #20]
    ae7c:	15953014 	ldrne	r3, [r5, #20]
    ae80:	05831000 	streq	r1, [r3]
    ae84:	05812018 	streq	r2, [r1, #24]
    ae88:	15832018 	strne	r2, [r3, #24]
    ae8c:	e302371c 	movw	r3, #10012	; 0x271c
    ae90:	e3403001 	movt	r3, #1
    ae94:	e30f2fd4 	movw	r2, #65492	; 0xffd4
    ae98:	e3402000 	movt	r2, #0
    ae9c:	e5852048 	str	r2, [r5, #72]	; 0x48
    aea0:	e5931000 	ldr	r1, [r3]
    aea4:	e5835000 	str	r5, [r3]
    aea8:	e5851014 	str	r1, [r5, #20]
    aeac:	eb000232 	bl	b77c <OS_CPU_SR_Restore>
    aeb0:	e302368e 	movw	r3, #9870	; 0x268e
    aeb4:	e3403001 	movt	r3, #1
    aeb8:	e5d33000 	ldrb	r3, [r3]
    aebc:	e3530001 	cmp	r3, #1
    aec0:	0a000008 	beq	aee8 <OSTaskDel+0x1bc>
    aec4:	e3a00000 	mov	r0, #0
    aec8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    aecc:	e302372c 	movw	r3, #10028	; 0x272c
    aed0:	e3403001 	movt	r3, #1
    aed4:	e5d51032 	ldrb	r1, [r5, #50]	; 0x32
    aed8:	e5d32000 	ldrb	r2, [r3]
    aedc:	e1c22001 	bic	r2, r2, r1
    aee0:	e5c32000 	strb	r2, [r3]
    aee4:	eaffffb4 	b	adbc <OSTaskDel+0x90>
    aee8:	ebfff742 	bl	8bf8 <OS_Sched>
    aeec:	e3a00000 	mov	r0, #0
    aef0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    aef4:	eb000220 	bl	b77c <OS_CPU_SR_Restore>
    aef8:	e3a00043 	mov	r0, #67	; 0x43
    aefc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    af00:	eb00021d 	bl	b77c <OS_CPU_SR_Restore>
    af04:	e3a0003d 	mov	r0, #61	; 0x3d
    af08:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0000af0c <OSTaskDelReq>:
    af0c:	e350003f 	cmp	r0, #63	; 0x3f
    af10:	e92d4010 	push	{r4, lr}
    af14:	e1a04000 	mov	r4, r0
    af18:	03a0403e 	moveq	r4, #62	; 0x3e
    af1c:	0a00000d 	beq	af58 <OSTaskDelReq+0x4c>
    af20:	e35400ff 	cmp	r4, #255	; 0xff
    af24:	0a00000d 	beq	af60 <OSTaskDelReq+0x54>
    af28:	eb000200 	bl	b730 <OS_CPU_SR_Save>
    af2c:	e30330c8 	movw	r3, #12488	; 0x30c8
    af30:	e3403001 	movt	r3, #1
    af34:	e7933104 	ldr	r3, [r3, r4, lsl #2]
    af38:	e3530000 	cmp	r3, #0
    af3c:	0a000013 	beq	af90 <OSTaskDelReq+0x84>
    af40:	e3530001 	cmp	r3, #1
    af44:	0a00000d 	beq	af80 <OSTaskDelReq+0x74>
    af48:	e3a0203f 	mov	r2, #63	; 0x3f
    af4c:	e5c32033 	strb	r2, [r3, #51]	; 0x33
    af50:	eb000209 	bl	b77c <OS_CPU_SR_Restore>
    af54:	e3a04000 	mov	r4, #0
    af58:	e1a00004 	mov	r0, r4
    af5c:	e8bd8010 	pop	{r4, pc}
    af60:	eb0001f2 	bl	b730 <OS_CPU_SR_Save>
    af64:	e3023740 	movw	r3, #10048	; 0x2740
    af68:	e3403001 	movt	r3, #1
    af6c:	e5933000 	ldr	r3, [r3]
    af70:	e5d34033 	ldrb	r4, [r3, #51]	; 0x33
    af74:	eb000200 	bl	b77c <OS_CPU_SR_Restore>
    af78:	e1a00004 	mov	r0, r4
    af7c:	e8bd8010 	pop	{r4, pc}
    af80:	e3a0403d 	mov	r4, #61	; 0x3d
    af84:	eb0001fc 	bl	b77c <OS_CPU_SR_Restore>
    af88:	e1a00004 	mov	r0, r4
    af8c:	e8bd8010 	pop	{r4, pc}
    af90:	eb0001f9 	bl	b77c <OS_CPU_SR_Restore>
    af94:	e3a04043 	mov	r4, #67	; 0x43
    af98:	eaffffee 	b	af58 <OSTaskDelReq+0x4c>

0000af9c <OSTaskNameGet>:
    af9c:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    afa0:	e302373c 	movw	r3, #10044	; 0x273c
    afa4:	e3403001 	movt	r3, #1
    afa8:	e1a04000 	mov	r4, r0
    afac:	e1a06001 	mov	r6, r1
    afb0:	e1a05002 	mov	r5, r2
    afb4:	e5d33000 	ldrb	r3, [r3]
    afb8:	e3530000 	cmp	r3, #0
    afbc:	0a000004 	beq	afd4 <OSTaskNameGet+0x38>
    afc0:	e3a04000 	mov	r4, #0
    afc4:	e3a03011 	mov	r3, #17
    afc8:	e5c23000 	strb	r3, [r2]
    afcc:	e1a00004 	mov	r0, r4
    afd0:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    afd4:	eb0001d5 	bl	b730 <OS_CPU_SR_Save>
    afd8:	e35400ff 	cmp	r4, #255	; 0xff
    afdc:	03023740 	movweq	r3, #10048	; 0x2740
    afe0:	03403001 	movteq	r3, #1
    afe4:	e1a07000 	mov	r7, r0
    afe8:	05933000 	ldreq	r3, [r3]
    afec:	05d3402e 	ldrbeq	r4, [r3, #46]	; 0x2e
    aff0:	e30330c8 	movw	r3, #12488	; 0x30c8
    aff4:	e3403001 	movt	r3, #1
    aff8:	e7934104 	ldr	r4, [r3, r4, lsl #2]
    affc:	e3540000 	cmp	r4, #0
    b000:	0a000010 	beq	b048 <OSTaskNameGet+0xac>
    b004:	e3540001 	cmp	r4, #1
    b008:	0a000009 	beq	b034 <OSTaskNameGet+0x98>
    b00c:	e5940048 	ldr	r0, [r4, #72]	; 0x48
    b010:	e5860000 	str	r0, [r6]
    b014:	ebfff80d 	bl	9050 <OS_StrLen>
    b018:	e1a04000 	mov	r4, r0
    b01c:	e1a00007 	mov	r0, r7
    b020:	eb0001d5 	bl	b77c <OS_CPU_SR_Restore>
    b024:	e3a03000 	mov	r3, #0
    b028:	e1a00004 	mov	r0, r4
    b02c:	e5c53000 	strb	r3, [r5]
    b030:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    b034:	eb0001d0 	bl	b77c <OS_CPU_SR_Restore>
    b038:	e3a04000 	mov	r4, #0
    b03c:	e3a03043 	mov	r3, #67	; 0x43
    b040:	e5c53000 	strb	r3, [r5]
    b044:	eaffffe0 	b	afcc <OSTaskNameGet+0x30>
    b048:	eb0001cb 	bl	b77c <OS_CPU_SR_Restore>
    b04c:	e3a03043 	mov	r3, #67	; 0x43
    b050:	e5c53000 	strb	r3, [r5]
    b054:	eaffffdc 	b	afcc <OSTaskNameGet+0x30>

0000b058 <OSTaskNameSet>:
    b058:	e302373c 	movw	r3, #10044	; 0x273c
    b05c:	e3403001 	movt	r3, #1
    b060:	e92d4070 	push	{r4, r5, r6, lr}
    b064:	e1a05000 	mov	r5, r0
    b068:	e5d33000 	ldrb	r3, [r3]
    b06c:	e1a06001 	mov	r6, r1
    b070:	e1a04002 	mov	r4, r2
    b074:	e3530000 	cmp	r3, #0
    b078:	13a03012 	movne	r3, #18
    b07c:	15c23000 	strbne	r3, [r2]
    b080:	18bd8070 	popne	{r4, r5, r6, pc}
    b084:	eb0001a9 	bl	b730 <OS_CPU_SR_Save>
    b088:	e35500ff 	cmp	r5, #255	; 0xff
    b08c:	03023740 	movweq	r3, #10048	; 0x2740
    b090:	03403001 	movteq	r3, #1
    b094:	05933000 	ldreq	r3, [r3]
    b098:	05d3502e 	ldrbeq	r5, [r3, #46]	; 0x2e
    b09c:	e30330c8 	movw	r3, #12488	; 0x30c8
    b0a0:	e3403001 	movt	r3, #1
    b0a4:	e7933105 	ldr	r3, [r3, r5, lsl #2]
    b0a8:	e3530000 	cmp	r3, #0
    b0ac:	0a000006 	beq	b0cc <OSTaskNameSet+0x74>
    b0b0:	e3530001 	cmp	r3, #1
    b0b4:	0a000004 	beq	b0cc <OSTaskNameSet+0x74>
    b0b8:	e5836048 	str	r6, [r3, #72]	; 0x48
    b0bc:	eb0001ae 	bl	b77c <OS_CPU_SR_Restore>
    b0c0:	e3a03000 	mov	r3, #0
    b0c4:	e5c43000 	strb	r3, [r4]
    b0c8:	e8bd8070 	pop	{r4, r5, r6, pc}
    b0cc:	eb0001aa 	bl	b77c <OS_CPU_SR_Restore>
    b0d0:	e3a03043 	mov	r3, #67	; 0x43
    b0d4:	e5c43000 	strb	r3, [r4]
    b0d8:	e8bd8070 	pop	{r4, r5, r6, pc}

0000b0dc <OSTaskResume>:
    b0dc:	e92d4070 	push	{r4, r5, r6, lr}
    b0e0:	e1a04000 	mov	r4, r0
    b0e4:	eb000191 	bl	b730 <OS_CPU_SR_Save>
    b0e8:	e30330c8 	movw	r3, #12488	; 0x30c8
    b0ec:	e3403001 	movt	r3, #1
    b0f0:	e7933104 	ldr	r3, [r3, r4, lsl #2]
    b0f4:	e3530000 	cmp	r3, #0
    b0f8:	0a000028 	beq	b1a0 <OSTaskResume+0xc4>
    b0fc:	e3530001 	cmp	r3, #1
    b100:	0a000029 	beq	b1ac <OSTaskResume+0xd0>
    b104:	e5d3202c 	ldrb	r2, [r3, #44]	; 0x2c
    b108:	e2021008 	and	r1, r2, #8
    b10c:	e6ef1071 	uxtb	r1, r1
    b110:	e3510000 	cmp	r1, #0
    b114:	0a00001b 	beq	b188 <OSTaskResume+0xac>
    b118:	e20240f7 	and	r4, r2, #247	; 0xf7
    b11c:	e5c3402c 	strb	r4, [r3, #44]	; 0x2c
    b120:	e3540000 	cmp	r4, #0
    b124:	1a00001a 	bne	b194 <OSTaskResume+0xb8>
    b128:	e5935028 	ldr	r5, [r3, #40]	; 0x28
    b12c:	e3550000 	cmp	r5, #0
    b130:	1a000017 	bne	b194 <OSTaskResume+0xb8>
    b134:	e5d3c030 	ldrb	ip, [r3, #48]	; 0x30
    b138:	e302172c 	movw	r1, #10028	; 0x272c
    b13c:	e3022730 	movw	r2, #10032	; 0x2730
    b140:	e3401001 	movt	r1, #1
    b144:	e3402001 	movt	r2, #1
    b148:	e5d34032 	ldrb	r4, [r3, #50]	; 0x32
    b14c:	e5d16000 	ldrb	r6, [r1]
    b150:	e7d2e00c 	ldrb	lr, [r2, ip]
    b154:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    b158:	e1864004 	orr	r4, r6, r4
    b15c:	e5c14000 	strb	r4, [r1]
    b160:	e18e3003 	orr	r3, lr, r3
    b164:	e7c2300c 	strb	r3, [r2, ip]
    b168:	eb000183 	bl	b77c <OS_CPU_SR_Restore>
    b16c:	e302368e 	movw	r3, #9870	; 0x268e
    b170:	e3403001 	movt	r3, #1
    b174:	e5d33000 	ldrb	r3, [r3]
    b178:	e3530001 	cmp	r3, #1
    b17c:	0a00000d 	beq	b1b8 <OSTaskResume+0xdc>
    b180:	e3a00000 	mov	r0, #0
    b184:	e8bd8070 	pop	{r4, r5, r6, pc}
    b188:	eb00017b 	bl	b77c <OS_CPU_SR_Restore>
    b18c:	e3a00044 	mov	r0, #68	; 0x44
    b190:	e8bd8070 	pop	{r4, r5, r6, pc}
    b194:	eb000178 	bl	b77c <OS_CPU_SR_Restore>
    b198:	e3a00000 	mov	r0, #0
    b19c:	e8bd8070 	pop	{r4, r5, r6, pc}
    b1a0:	eb000175 	bl	b77c <OS_CPU_SR_Restore>
    b1a4:	e3a00046 	mov	r0, #70	; 0x46
    b1a8:	e8bd8070 	pop	{r4, r5, r6, pc}
    b1ac:	eb000172 	bl	b77c <OS_CPU_SR_Restore>
    b1b0:	e3a00043 	mov	r0, #67	; 0x43
    b1b4:	e8bd8070 	pop	{r4, r5, r6, pc}
    b1b8:	ebfff68e 	bl	8bf8 <OS_Sched>
    b1bc:	e1a00005 	mov	r0, r5
    b1c0:	e8bd8070 	pop	{r4, r5, r6, pc}

0000b1c4 <OSTaskStkChk>:
    b1c4:	e3a03000 	mov	r3, #0
    b1c8:	e5813000 	str	r3, [r1]
    b1cc:	e5813004 	str	r3, [r1, #4]
    b1d0:	e92d4070 	push	{r4, r5, r6, lr}
    b1d4:	e1a05000 	mov	r5, r0
    b1d8:	e1a04001 	mov	r4, r1
    b1dc:	eb000153 	bl	b730 <OS_CPU_SR_Save>
    b1e0:	e35500ff 	cmp	r5, #255	; 0xff
    b1e4:	03023740 	movweq	r3, #10048	; 0x2740
    b1e8:	03403001 	movteq	r3, #1
    b1ec:	05933000 	ldreq	r3, [r3]
    b1f0:	05d3502e 	ldrbeq	r5, [r3, #46]	; 0x2e
    b1f4:	e30330c8 	movw	r3, #12488	; 0x30c8
    b1f8:	e3403001 	movt	r3, #1
    b1fc:	e7933105 	ldr	r3, [r3, r5, lsl #2]
    b200:	e3530000 	cmp	r3, #0
    b204:	0a000016 	beq	b264 <OSTaskStkChk+0xa0>
    b208:	e3530001 	cmp	r3, #1
    b20c:	0a000014 	beq	b264 <OSTaskStkChk+0xa0>
    b210:	e1d321b0 	ldrh	r2, [r3, #16]
    b214:	e3120001 	tst	r2, #1
    b218:	1a000002 	bne	b228 <OSTaskStkChk+0x64>
    b21c:	eb000156 	bl	b77c <OS_CPU_SR_Restore>
    b220:	e3a00045 	mov	r0, #69	; 0x45
    b224:	e8bd8070 	pop	{r4, r5, r6, pc}
    b228:	e5935008 	ldr	r5, [r3, #8]
    b22c:	e593600c 	ldr	r6, [r3, #12]
    b230:	eb000151 	bl	b77c <OS_CPU_SR_Restore>
    b234:	e5953000 	ldr	r3, [r5]
    b238:	e3530000 	cmp	r3, #0
    b23c:	1a00000b 	bne	b270 <OSTaskStkChk+0xac>
    b240:	e1a02005 	mov	r2, r5
    b244:	e5b20004 	ldr	r0, [r2, #4]!
    b248:	e2833001 	add	r3, r3, #1
    b24c:	e3500000 	cmp	r0, #0
    b250:	0afffffb 	beq	b244 <OSTaskStkChk+0x80>
    b254:	e0636006 	rsb	r6, r3, r6
    b258:	e3a00000 	mov	r0, #0
    b25c:	e8840048 	stm	r4, {r3, r6}
    b260:	e8bd8070 	pop	{r4, r5, r6, pc}
    b264:	eb000144 	bl	b77c <OS_CPU_SR_Restore>
    b268:	e3a00043 	mov	r0, #67	; 0x43
    b26c:	e8bd8070 	pop	{r4, r5, r6, pc}
    b270:	e3a03000 	mov	r3, #0
    b274:	eafffff6 	b	b254 <OSTaskStkChk+0x90>

0000b278 <OSTaskSuspend>:
    b278:	e92d4038 	push	{r3, r4, r5, lr}
    b27c:	e1a04000 	mov	r4, r0
    b280:	eb00012a 	bl	b730 <OS_CPU_SR_Save>
    b284:	e35400ff 	cmp	r4, #255	; 0xff
    b288:	e3023740 	movw	r3, #10048	; 0x2740
    b28c:	e3403001 	movt	r3, #1
    b290:	0a000023 	beq	b324 <OSTaskSuspend+0xac>
    b294:	e5933000 	ldr	r3, [r3]
    b298:	e5d3502e 	ldrb	r5, [r3, #46]	; 0x2e
    b29c:	e0553004 	subs	r3, r5, r4
    b2a0:	e2735000 	rsbs	r5, r3, #0
    b2a4:	e0b55003 	adcs	r5, r5, r3
    b2a8:	e30330c8 	movw	r3, #12488	; 0x30c8
    b2ac:	e3403001 	movt	r3, #1
    b2b0:	e7933104 	ldr	r3, [r3, r4, lsl #2]
    b2b4:	e3530000 	cmp	r3, #0
    b2b8:	0a000020 	beq	b340 <OSTaskSuspend+0xc8>
    b2bc:	e3530001 	cmp	r3, #1
    b2c0:	0a000021 	beq	b34c <OSTaskSuspend+0xd4>
    b2c4:	e5d3c030 	ldrb	ip, [r3, #48]	; 0x30
    b2c8:	e3022730 	movw	r2, #10032	; 0x2730
    b2cc:	e3402001 	movt	r2, #1
    b2d0:	e5d3e031 	ldrb	lr, [r3, #49]	; 0x31
    b2d4:	e7d2100c 	ldrb	r1, [r2, ip]
    b2d8:	e1c1100e 	bic	r1, r1, lr
    b2dc:	e7c2100c 	strb	r1, [r2, ip]
    b2e0:	e3510000 	cmp	r1, #0
    b2e4:	0a000007 	beq	b308 <OSTaskSuspend+0x90>
    b2e8:	e5d3202c 	ldrb	r2, [r3, #44]	; 0x2c
    b2ec:	e3822008 	orr	r2, r2, #8
    b2f0:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    b2f4:	eb000120 	bl	b77c <OS_CPU_SR_Restore>
    b2f8:	e3550001 	cmp	r5, #1
    b2fc:	0a00000c 	beq	b334 <OSTaskSuspend+0xbc>
    b300:	e3a00000 	mov	r0, #0
    b304:	e8bd8038 	pop	{r3, r4, r5, pc}
    b308:	e302272c 	movw	r2, #10028	; 0x272c
    b30c:	e3402001 	movt	r2, #1
    b310:	e5d3c032 	ldrb	ip, [r3, #50]	; 0x32
    b314:	e5d21000 	ldrb	r1, [r2]
    b318:	e1c1100c 	bic	r1, r1, ip
    b31c:	e5c21000 	strb	r1, [r2]
    b320:	eafffff0 	b	b2e8 <OSTaskSuspend+0x70>
    b324:	e5933000 	ldr	r3, [r3]
    b328:	e3a05001 	mov	r5, #1
    b32c:	e5d3402e 	ldrb	r4, [r3, #46]	; 0x2e
    b330:	eaffffdc 	b	b2a8 <OSTaskSuspend+0x30>
    b334:	ebfff62f 	bl	8bf8 <OS_Sched>
    b338:	e3a00000 	mov	r0, #0
    b33c:	e8bd8038 	pop	{r3, r4, r5, pc}
    b340:	eb00010d 	bl	b77c <OS_CPU_SR_Restore>
    b344:	e3a00048 	mov	r0, #72	; 0x48
    b348:	e8bd8038 	pop	{r3, r4, r5, pc}
    b34c:	eb00010a 	bl	b77c <OS_CPU_SR_Restore>
    b350:	e3a00043 	mov	r0, #67	; 0x43
    b354:	e8bd8038 	pop	{r3, r4, r5, pc}

0000b358 <OSTaskQuery>:
    b358:	e92d4070 	push	{r4, r5, r6, lr}
    b35c:	e1a04000 	mov	r4, r0
    b360:	e1a06001 	mov	r6, r1
    b364:	eb0000f1 	bl	b730 <OS_CPU_SR_Save>
    b368:	e35400ff 	cmp	r4, #255	; 0xff
    b36c:	03023740 	movweq	r3, #10048	; 0x2740
    b370:	03403001 	movteq	r3, #1
    b374:	e1a05000 	mov	r5, r0
    b378:	05933000 	ldreq	r3, [r3]
    b37c:	05d3402e 	ldrbeq	r4, [r3, #46]	; 0x2e
    b380:	e30330c8 	movw	r3, #12488	; 0x30c8
    b384:	e3403001 	movt	r3, #1
    b388:	e7931104 	ldr	r1, [r3, r4, lsl #2]
    b38c:	e3510000 	cmp	r1, #0
    b390:	0a00000b 	beq	b3c4 <OSTaskQuery+0x6c>
    b394:	e3510001 	cmp	r1, #1
    b398:	0a000006 	beq	b3b8 <OSTaskQuery+0x60>
    b39c:	e3a02050 	mov	r2, #80	; 0x50
    b3a0:	e1a00006 	mov	r0, r6
    b3a4:	ebfff609 	bl	8bd0 <OS_MemCopy>
    b3a8:	e1a00005 	mov	r0, r5
    b3ac:	eb0000f2 	bl	b77c <OS_CPU_SR_Restore>
    b3b0:	e3a00000 	mov	r0, #0
    b3b4:	e8bd8070 	pop	{r4, r5, r6, pc}
    b3b8:	eb0000ef 	bl	b77c <OS_CPU_SR_Restore>
    b3bc:	e3a00043 	mov	r0, #67	; 0x43
    b3c0:	e8bd8070 	pop	{r4, r5, r6, pc}
    b3c4:	eb0000ec 	bl	b77c <OS_CPU_SR_Restore>
    b3c8:	e3a00029 	mov	r0, #41	; 0x29
    b3cc:	e8bd8070 	pop	{r4, r5, r6, pc}

0000b3d0 <OSTaskRegGet>:
    b3d0:	e92d4070 	push	{r4, r5, r6, lr}
    b3d4:	e1a04000 	mov	r4, r0
    b3d8:	e1a06001 	mov	r6, r1
    b3dc:	e1a05002 	mov	r5, r2
    b3e0:	eb0000d2 	bl	b730 <OS_CPU_SR_Save>
    b3e4:	e35400ff 	cmp	r4, #255	; 0xff
    b3e8:	03023740 	movweq	r3, #10048	; 0x2740
    b3ec:	130330c8 	movwne	r3, #12488	; 0x30c8
    b3f0:	03403001 	movteq	r3, #1
    b3f4:	13403001 	movtne	r3, #1
    b3f8:	05933000 	ldreq	r3, [r3]
    b3fc:	17933104 	ldrne	r3, [r3, r4, lsl #2]
    b400:	e0836106 	add	r6, r3, r6, lsl #2
    b404:	e596404c 	ldr	r4, [r6, #76]	; 0x4c
    b408:	eb0000db 	bl	b77c <OS_CPU_SR_Restore>
    b40c:	e3a03000 	mov	r3, #0
    b410:	e5c53000 	strb	r3, [r5]
    b414:	e1a00004 	mov	r0, r4
    b418:	e8bd8070 	pop	{r4, r5, r6, pc}

0000b41c <OSTaskRegGetID>:
    b41c:	e92d4038 	push	{r3, r4, r5, lr}
    b420:	e1a05000 	mov	r5, r0
    b424:	eb0000c1 	bl	b730 <OS_CPU_SR_Save>
    b428:	e302368d 	movw	r3, #9869	; 0x268d
    b42c:	e3403001 	movt	r3, #1
    b430:	e5d34000 	ldrb	r4, [r3]
    b434:	e3540000 	cmp	r4, #0
    b438:	1a000005 	bne	b454 <OSTaskRegGetID+0x38>
    b43c:	e3a02001 	mov	r2, #1
    b440:	e5c32000 	strb	r2, [r3]
    b444:	eb0000cc 	bl	b77c <OS_CPU_SR_Restore>
    b448:	e5c54000 	strb	r4, [r5]
    b44c:	e1a00004 	mov	r0, r4
    b450:	e8bd8038 	pop	{r3, r4, r5, pc}
    b454:	e3e03069 	mvn	r3, #105	; 0x69
    b458:	e3a04001 	mov	r4, #1
    b45c:	e5c53000 	strb	r3, [r5]
    b460:	eb0000c5 	bl	b77c <OS_CPU_SR_Restore>
    b464:	e1a00004 	mov	r0, r4
    b468:	e8bd8038 	pop	{r3, r4, r5, pc}

0000b46c <OSTaskRegSet>:
    b46c:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    b470:	e1a05003 	mov	r5, r3
    b474:	e1a04000 	mov	r4, r0
    b478:	e1a06001 	mov	r6, r1
    b47c:	e1a07002 	mov	r7, r2
    b480:	eb0000aa 	bl	b730 <OS_CPU_SR_Save>
    b484:	e35400ff 	cmp	r4, #255	; 0xff
    b488:	03023740 	movweq	r3, #10048	; 0x2740
    b48c:	1303c0c8 	movwne	ip, #12488	; 0x30c8
    b490:	03403001 	movteq	r3, #1
    b494:	1340c001 	movtne	ip, #1
    b498:	05933000 	ldreq	r3, [r3]
    b49c:	179c3104 	ldrne	r3, [ip, r4, lsl #2]
    b4a0:	e0836106 	add	r6, r3, r6, lsl #2
    b4a4:	e586704c 	str	r7, [r6, #76]	; 0x4c
    b4a8:	eb0000b3 	bl	b77c <OS_CPU_SR_Restore>
    b4ac:	e3a03000 	mov	r3, #0
    b4b0:	e5c53000 	strb	r3, [r5]
    b4b4:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

0000b4b8 <OS_TaskReturn>:
    b4b8:	e92d4008 	push	{r3, lr}
    b4bc:	e3023740 	movw	r3, #10048	; 0x2740
    b4c0:	e3403001 	movt	r3, #1
    b4c4:	e5930000 	ldr	r0, [r3]
    b4c8:	eb0001d6 	bl	bc28 <OSTaskReturnHook>
    b4cc:	e3a000ff 	mov	r0, #255	; 0xff
    b4d0:	e8bd4008 	pop	{r3, lr}
    b4d4:	eafffe14 	b	ad2c <OSTaskDel>

0000b4d8 <OS_TaskStkClr>:
    b4d8:	e2022003 	and	r2, r2, #3
    b4dc:	e3520003 	cmp	r2, #3
    b4e0:	112fff1e 	bxne	lr
    b4e4:	e3510000 	cmp	r1, #0
    b4e8:	012fff1e 	bxeq	lr
    b4ec:	e3a03000 	mov	r3, #0
    b4f0:	e2511001 	subs	r1, r1, #1
    b4f4:	e4803004 	str	r3, [r0], #4
    b4f8:	1afffffc 	bne	b4f0 <OS_TaskStkClr+0x18>
    b4fc:	e12fff1e 	bx	lr

0000b500 <OSTimeDly>:
    b500:	e302373c 	movw	r3, #10044	; 0x273c
    b504:	e3403001 	movt	r3, #1
    b508:	e92d4010 	push	{r4, lr}
    b50c:	e1a04000 	mov	r4, r0
    b510:	e5d33000 	ldrb	r3, [r3]
    b514:	e3530000 	cmp	r3, #0
    b518:	18bd8010 	popne	{r4, pc}
    b51c:	e302368c 	movw	r3, #9868	; 0x268c
    b520:	e3403001 	movt	r3, #1
    b524:	e5d33000 	ldrb	r3, [r3]
    b528:	e3530000 	cmp	r3, #0
    b52c:	18bd8010 	popne	{r4, pc}
    b530:	e3500000 	cmp	r0, #0
    b534:	08bd8010 	popeq	{r4, pc}
    b538:	eb00007c 	bl	b730 <OS_CPU_SR_Save>
    b53c:	e3022740 	movw	r2, #10048	; 0x2740
    b540:	e3402001 	movt	r2, #1
    b544:	e3023730 	movw	r3, #10032	; 0x2730
    b548:	e3403001 	movt	r3, #1
    b54c:	e5922000 	ldr	r2, [r2]
    b550:	e5d2c030 	ldrb	ip, [r2, #48]	; 0x30
    b554:	e5d2e031 	ldrb	lr, [r2, #49]	; 0x31
    b558:	e7d3100c 	ldrb	r1, [r3, ip]
    b55c:	e1c1100e 	bic	r1, r1, lr
    b560:	e7c3100c 	strb	r1, [r3, ip]
    b564:	e3510000 	cmp	r1, #0
    b568:	1a000005 	bne	b584 <OSTimeDly+0x84>
    b56c:	e302372c 	movw	r3, #10028	; 0x272c
    b570:	e3403001 	movt	r3, #1
    b574:	e5d2c032 	ldrb	ip, [r2, #50]	; 0x32
    b578:	e5d31000 	ldrb	r1, [r3]
    b57c:	e1c1100c 	bic	r1, r1, ip
    b580:	e5c31000 	strb	r1, [r3]
    b584:	e5824028 	str	r4, [r2, #40]	; 0x28
    b588:	eb00007b 	bl	b77c <OS_CPU_SR_Restore>
    b58c:	e8bd4010 	pop	{r4, lr}
    b590:	eafff598 	b	8bf8 <OS_Sched>

0000b594 <OSTimeDlyHMSM>:
    b594:	e302c73c 	movw	ip, #10044	; 0x273c
    b598:	e340c001 	movt	ip, #1
    b59c:	e92d4010 	push	{r4, lr}
    b5a0:	e5dcc000 	ldrb	ip, [ip]
    b5a4:	e35c0000 	cmp	ip, #0
    b5a8:	0a000001 	beq	b5b4 <OSTimeDlyHMSM+0x20>
    b5ac:	e3a00055 	mov	r0, #85	; 0x55
    b5b0:	e8bd8010 	pop	{r4, pc}
    b5b4:	e302c68c 	movw	ip, #9868	; 0x268c
    b5b8:	e340c001 	movt	ip, #1
    b5bc:	e5dc4000 	ldrb	r4, [ip]
    b5c0:	e3540000 	cmp	r4, #0
    b5c4:	0a000001 	beq	b5d0 <OSTimeDlyHMSM+0x3c>
    b5c8:	e3a00032 	mov	r0, #50	; 0x32
    b5cc:	e8bd8010 	pop	{r4, pc}
    b5d0:	e3a0cffa 	mov	ip, #1000	; 0x3e8
    b5d4:	e0611201 	rsb	r1, r1, r1, lsl #4
    b5d8:	e003039c 	mul	r3, ip, r3
    b5dc:	e0822101 	add	r2, r2, r1, lsl #2
    b5e0:	e3a01ee1 	mov	r1, #3600	; 0xe10
    b5e4:	e304edd3 	movw	lr, #19923	; 0x4dd3
    b5e8:	e0202091 	mla	r0, r1, r0, r2
    b5ec:	e341e062 	movt	lr, #4194	; 0x1062
    b5f0:	e08e239e 	umull	r2, lr, lr, r3
    b5f4:	e000009c 	mul	r0, ip, r0
    b5f8:	e080032e 	add	r0, r0, lr, lsr #6
    b5fc:	ebffffbf 	bl	b500 <OSTimeDly>
    b600:	e1a00004 	mov	r0, r4
    b604:	e8bd8010 	pop	{r4, pc}

0000b608 <OSTimeDlyResume>:
    b608:	e350003e 	cmp	r0, #62	; 0x3e
    b60c:	e92d4070 	push	{r4, r5, r6, lr}
    b610:	e1a04000 	mov	r4, r0
    b614:	9a000001 	bls	b620 <OSTimeDlyResume+0x18>
    b618:	e3a0002a 	mov	r0, #42	; 0x2a
    b61c:	e8bd8070 	pop	{r4, r5, r6, pc}
    b620:	eb000042 	bl	b730 <OS_CPU_SR_Save>
    b624:	e30330c8 	movw	r3, #12488	; 0x30c8
    b628:	e3403001 	movt	r3, #1
    b62c:	e7933104 	ldr	r3, [r3, r4, lsl #2]
    b630:	e3530000 	cmp	r3, #0
    b634:	e1a01000 	mov	r1, r0
    b638:	0a000029 	beq	b6e4 <OSTimeDlyResume+0xdc>
    b63c:	e3530001 	cmp	r3, #1
    b640:	0a000027 	beq	b6e4 <OSTimeDlyResume+0xdc>
    b644:	e5932028 	ldr	r2, [r3, #40]	; 0x28
    b648:	e3520000 	cmp	r2, #0
    b64c:	0a00000f 	beq	b690 <OSTimeDlyResume+0x88>
    b650:	e5d3202c 	ldrb	r2, [r3, #44]	; 0x2c
    b654:	e3a00000 	mov	r0, #0
    b658:	e5830028 	str	r0, [r3, #40]	; 0x28
    b65c:	e2120037 	ands	r0, r2, #55	; 0x37
    b660:	120220c8 	andne	r2, r2, #200	; 0xc8
    b664:	15c3202c 	strbne	r2, [r3, #44]	; 0x2c
    b668:	e2022008 	and	r2, r2, #8
    b66c:	13a00001 	movne	r0, #1
    b670:	e5c3002d 	strb	r0, [r3, #45]	; 0x2d
    b674:	e6ef4072 	uxtb	r4, r2
    b678:	e3540000 	cmp	r4, #0
    b67c:	0a000006 	beq	b69c <OSTimeDlyResume+0x94>
    b680:	e1a00001 	mov	r0, r1
    b684:	eb00003c 	bl	b77c <OS_CPU_SR_Restore>
    b688:	e3a00000 	mov	r0, #0
    b68c:	e8bd8070 	pop	{r4, r5, r6, pc}
    b690:	eb000039 	bl	b77c <OS_CPU_SR_Restore>
    b694:	e3a00050 	mov	r0, #80	; 0x50
    b698:	e8bd8070 	pop	{r4, r5, r6, pc}
    b69c:	e5d3e030 	ldrb	lr, [r3, #48]	; 0x30
    b6a0:	e302c72c 	movw	ip, #10028	; 0x272c
    b6a4:	e3022730 	movw	r2, #10032	; 0x2730
    b6a8:	e340c001 	movt	ip, #1
    b6ac:	e3402001 	movt	r2, #1
    b6b0:	e5d35032 	ldrb	r5, [r3, #50]	; 0x32
    b6b4:	e5dc6000 	ldrb	r6, [ip]
    b6b8:	e1a00001 	mov	r0, r1
    b6bc:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    b6c0:	e7d2100e 	ldrb	r1, [r2, lr]
    b6c4:	e1865005 	orr	r5, r6, r5
    b6c8:	e5cc5000 	strb	r5, [ip]
    b6cc:	e1813003 	orr	r3, r1, r3
    b6d0:	e7c2300e 	strb	r3, [r2, lr]
    b6d4:	eb000028 	bl	b77c <OS_CPU_SR_Restore>
    b6d8:	ebfff546 	bl	8bf8 <OS_Sched>
    b6dc:	e1a00004 	mov	r0, r4
    b6e0:	e8bd8070 	pop	{r4, r5, r6, pc}
    b6e4:	eb000024 	bl	b77c <OS_CPU_SR_Restore>
    b6e8:	e3a00043 	mov	r0, #67	; 0x43
    b6ec:	e8bd8070 	pop	{r4, r5, r6, pc}

0000b6f0 <OSTimeGet>:
    b6f0:	e92d4010 	push	{r4, lr}
    b6f4:	eb00000d 	bl	b730 <OS_CPU_SR_Save>
    b6f8:	e3023744 	movw	r3, #10052	; 0x2744
    b6fc:	e3403001 	movt	r3, #1
    b700:	e5934000 	ldr	r4, [r3]
    b704:	eb00001c 	bl	b77c <OS_CPU_SR_Restore>
    b708:	e1a00004 	mov	r0, r4
    b70c:	e8bd8010 	pop	{r4, pc}

0000b710 <OSTimeSet>:
    b710:	e92d4010 	push	{r4, lr}
    b714:	e1a04000 	mov	r4, r0
    b718:	eb000004 	bl	b730 <OS_CPU_SR_Save>
    b71c:	e3023744 	movw	r3, #10052	; 0x2744
    b720:	e3403001 	movt	r3, #1
    b724:	e5834000 	str	r4, [r3]
    b728:	e8bd4010 	pop	{r4, lr}
    b72c:	ea000012 	b	b77c <OS_CPU_SR_Restore>

0000b730 <OS_CPU_SR_Save>:
    b730:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    b734:	e59f146c 	ldr	r1, [pc, #1132]	; bba8 <OS_CPU_ARM_CtxID_Get+0x8>
    b738:	e5910000 	ldr	r0, [r1]
    b73c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    b740:	e10f0000 	mrs	r0, CPSR
    b744:	e59f1460 	ldr	r1, [pc, #1120]	; bbac <OS_CPU_ARM_CtxID_Get+0xc>
    b748:	e0001001 	and	r1, r0, r1
    b74c:	e49d0004 	pop	{r0}		; (ldr r0, [sp], #4)
    b750:	e1800001 	orr	r0, r0, r1
    b754:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    b758:	e38000c0 	orr	r0, r0, #192	; 0xc0
    b75c:	e12cf000 	msr	CPSR_fs, r0
    b760:	e59f1448 	ldr	r1, [pc, #1096]	; bbb0 <OS_CPU_ARM_CtxID_Get+0x10>
    b764:	e0000001 	and	r0, r0, r1
    b768:	e59f1438 	ldr	r1, [pc, #1080]	; bba8 <OS_CPU_ARM_CtxID_Get+0x8>
    b76c:	e5810000 	str	r0, [r1]
    b770:	e49d0004 	pop	{r0}		; (ldr r0, [sp], #4)
    b774:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    b778:	e12fff1e 	bx	lr

0000b77c <OS_CPU_SR_Restore>:
    b77c:	e92d0003 	push	{r0, r1}
    b780:	e12cf000 	msr	CPSR_fs, r0
    b784:	e59f1424 	ldr	r1, [pc, #1060]	; bbb0 <OS_CPU_ARM_CtxID_Get+0x10>
    b788:	e0000001 	and	r0, r0, r1
    b78c:	e59f1414 	ldr	r1, [pc, #1044]	; bba8 <OS_CPU_ARM_CtxID_Get+0x8>
    b790:	e5810000 	str	r0, [r1]
    b794:	e2000080 	and	r0, r0, #128	; 0x80
    b798:	e3500000 	cmp	r0, #0
    b79c:	1a000003 	bne	b7b0 <OS_CPU_SR_Restore_Exit>
    b7a0:	e59f040c 	ldr	r0, [pc, #1036]	; bbb4 <OS_CPU_ARM_CtxID_Get+0x14>
    b7a4:	e5900000 	ldr	r0, [r0]
    b7a8:	e3500000 	cmp	r0, #0
    b7ac:	1f00001f 	svcne	0x0000001f

0000b7b0 <OS_CPU_SR_Restore_Exit>:
    b7b0:	e8bd0003 	pop	{r0, r1}
    b7b4:	e12fff1e 	bx	lr

0000b7b8 <OSStartHighRdy>:
    b7b8:	e59f03f8 	ldr	r0, [pc, #1016]	; bbb8 <OS_CPU_ARM_CtxID_Get+0x18>
    b7bc:	e1a0e00f 	mov	lr, pc
    b7c0:	e12fff10 	bx	r0
    b7c4:	e59f03f0 	ldr	r0, [pc, #1008]	; bbbc <OS_CPU_ARM_CtxID_Get+0x1c>
    b7c8:	e3a01001 	mov	r1, #1
    b7cc:	e5c01000 	strb	r1, [r0]
    b7d0:	e59f03e8 	ldr	r0, [pc, #1000]	; bbc0 <OS_CPU_ARM_CtxID_Get+0x20>
    b7d4:	e5900000 	ldr	r0, [r0]
    b7d8:	e590d000 	ldr	sp, [r0]
    b7dc:	e8bd0001 	ldmfd	sp!, {r0}
    b7e0:	e12cf000 	msr	CPSR_fs, r0
    b7e4:	e59f13c4 	ldr	r1, [pc, #964]	; bbb0 <OS_CPU_ARM_CtxID_Get+0x10>
    b7e8:	e0000001 	and	r0, r0, r1
    b7ec:	e59f13b4 	ldr	r1, [pc, #948]	; bba8 <OS_CPU_ARM_CtxID_Get+0x8>
    b7f0:	e5810000 	str	r0, [r1]
    b7f4:	e2000080 	and	r0, r0, #128	; 0x80
    b7f8:	e3500000 	cmp	r0, #0
    b7fc:	1a000003 	bne	b810 <OSStartHighRdy_Exit>
    b800:	e59f03ac 	ldr	r0, [pc, #940]	; bbb4 <OS_CPU_ARM_CtxID_Get+0x14>
    b804:	e5900000 	ldr	r0, [r0]
    b808:	e3500000 	cmp	r0, #0
    b80c:	1f00001f 	svcne	0x0000001f

0000b810 <OSStartHighRdy_Exit>:
    b810:	e8bddfff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}

0000b814 <OSCtxSw>:
    b814:	e92d4000 	stmfd	sp!, {lr}
    b818:	e92d4000 	stmfd	sp!, {lr}
    b81c:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    b820:	e10f0000 	mrs	r0, CPSR
    b824:	e59f137c 	ldr	r1, [pc, #892]	; bba8 <OS_CPU_ARM_CtxID_Get+0x8>
    b828:	e5910000 	ldr	r0, [r1]
    b82c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    b830:	e10f0000 	mrs	r0, CPSR
    b834:	e59f1370 	ldr	r1, [pc, #880]	; bbac <OS_CPU_ARM_CtxID_Get+0xc>
    b838:	e0001001 	and	r1, r0, r1
    b83c:	e49d0004 	pop	{r0}		; (ldr r0, [sp], #4)
    b840:	e1800001 	orr	r0, r0, r1
    b844:	e31e0001 	tst	lr, #1
    b848:	13800020 	orrne	r0, r0, #32
    b84c:	e92d0001 	stmfd	sp!, {r0}
    b850:	e59f036c 	ldr	r0, [pc, #876]	; bbc4 <OS_CPU_ARM_CtxID_Get+0x24>
    b854:	e5901000 	ldr	r1, [r0]
    b858:	e581d000 	str	sp, [r1]
    b85c:	e59f0354 	ldr	r0, [pc, #852]	; bbb8 <OS_CPU_ARM_CtxID_Get+0x18>
    b860:	e1a0e00f 	mov	lr, pc
    b864:	e12fff10 	bx	r0
    b868:	e59f0358 	ldr	r0, [pc, #856]	; bbc8 <OS_CPU_ARM_CtxID_Get+0x28>
    b86c:	e59f1358 	ldr	r1, [pc, #856]	; bbcc <OS_CPU_ARM_CtxID_Get+0x2c>
    b870:	e5d12000 	ldrb	r2, [r1]
    b874:	e5c02000 	strb	r2, [r0]
    b878:	e59f0344 	ldr	r0, [pc, #836]	; bbc4 <OS_CPU_ARM_CtxID_Get+0x24>
    b87c:	e59f133c 	ldr	r1, [pc, #828]	; bbc0 <OS_CPU_ARM_CtxID_Get+0x20>
    b880:	e5912000 	ldr	r2, [r1]
    b884:	e5802000 	str	r2, [r0]
    b888:	e592d000 	ldr	sp, [r2]
    b88c:	f57ff01f 	clrex
    b890:	e8bd0001 	ldmfd	sp!, {r0}
    b894:	e12cf000 	msr	CPSR_fs, r0
    b898:	e59f1310 	ldr	r1, [pc, #784]	; bbb0 <OS_CPU_ARM_CtxID_Get+0x10>
    b89c:	e0000001 	and	r0, r0, r1
    b8a0:	e59f1300 	ldr	r1, [pc, #768]	; bba8 <OS_CPU_ARM_CtxID_Get+0x8>
    b8a4:	e5810000 	str	r0, [r1]
    b8a8:	e2000080 	and	r0, r0, #128	; 0x80
    b8ac:	e3500000 	cmp	r0, #0
    b8b0:	1a000003 	bne	b8c4 <OSCtxSw_Exit>
    b8b4:	e59f02f8 	ldr	r0, [pc, #760]	; bbb4 <OS_CPU_ARM_CtxID_Get+0x14>
    b8b8:	e5900000 	ldr	r0, [r0]
    b8bc:	e3500000 	cmp	r0, #0
    b8c0:	1f00001f 	svcne	0x0000001f

0000b8c4 <OSCtxSw_Exit>:
    b8c4:	e8bddfff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}

0000b8c8 <OSIntCtxSw>:
    b8c8:	e59f02e8 	ldr	r0, [pc, #744]	; bbb8 <OS_CPU_ARM_CtxID_Get+0x18>
    b8cc:	e1a0e00f 	mov	lr, pc
    b8d0:	e12fff10 	bx	r0
    b8d4:	e59f02ec 	ldr	r0, [pc, #748]	; bbc8 <OS_CPU_ARM_CtxID_Get+0x28>
    b8d8:	e59f12ec 	ldr	r1, [pc, #748]	; bbcc <OS_CPU_ARM_CtxID_Get+0x2c>
    b8dc:	e5d12000 	ldrb	r2, [r1]
    b8e0:	e5c02000 	strb	r2, [r0]
    b8e4:	e59f02d8 	ldr	r0, [pc, #728]	; bbc4 <OS_CPU_ARM_CtxID_Get+0x24>
    b8e8:	e59f12d0 	ldr	r1, [pc, #720]	; bbc0 <OS_CPU_ARM_CtxID_Get+0x20>
    b8ec:	e5912000 	ldr	r2, [r1]
    b8f0:	e5802000 	str	r2, [r0]
    b8f4:	e592d000 	ldr	sp, [r2]
    b8f8:	f57ff01f 	clrex
    b8fc:	e8bd0001 	ldmfd	sp!, {r0}
    b900:	e12cf000 	msr	CPSR_fs, r0
    b904:	e59f12a4 	ldr	r1, [pc, #676]	; bbb0 <OS_CPU_ARM_CtxID_Get+0x10>
    b908:	e0000001 	and	r0, r0, r1
    b90c:	e59f1294 	ldr	r1, [pc, #660]	; bba8 <OS_CPU_ARM_CtxID_Get+0x8>
    b910:	e5810000 	str	r0, [r1]
    b914:	e2000080 	and	r0, r0, #128	; 0x80
    b918:	e3500000 	cmp	r0, #0
    b91c:	1a000003 	bne	b930 <OSIntCtxSw_Exit>
    b920:	e59f028c 	ldr	r0, [pc, #652]	; bbb4 <OS_CPU_ARM_CtxID_Get+0x14>
    b924:	e5900000 	ldr	r0, [r0]
    b928:	e3500000 	cmp	r0, #0
    b92c:	1f00001f 	svcne	0x0000001f

0000b930 <OSIntCtxSw_Exit>:
    b930:	e8bddfff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}

0000b934 <OS_CPU_ARM_ExceptDataAbortHndlr>:
    b934:	e92d4000 	stmfd	sp!, {lr}
    b938:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    b93c:	e59f128c 	ldr	r1, [pc, #652]	; bbd0 <OS_CPU_ARM_CtxID_Get+0x30>
    b940:	e5910000 	ldr	r0, [r1]
    b944:	e92d0001 	stmfd	sp!, {r0}
    b948:	e3a00006 	mov	r0, #6
    b94c:	e59f3268 	ldr	r3, [pc, #616]	; bbbc <OS_CPU_ARM_CtxID_Get+0x1c>
    b950:	e5d34000 	ldrb	r4, [r3]
    b954:	e3540001 	cmp	r4, #1
    b958:	1a000038 	bne	ba40 <OS_CPU_ARM_IRQHndlr_BreakNothing>
    b95c:	e59f3270 	ldr	r3, [pc, #624]	; bbd4 <OS_CPU_ARM_CtxID_Get+0x34>
    b960:	e5d34000 	ldrb	r4, [r3]
    b964:	e2844001 	add	r4, r4, #1
    b968:	e5c34000 	strb	r4, [r3]
    b96c:	e3540001 	cmp	r4, #1
    b970:	1a00001b 	bne	b9e4 <OS_CPU_ARM_IRQHndlr_BreakIRQ>

0000b974 <OS_CPU_ARM_IRQHndlr_BreakTask>:
    b974:	e59f3248 	ldr	r3, [pc, #584]	; bbc4 <OS_CPU_ARM_CtxID_Get+0x24>
    b978:	e5934000 	ldr	r4, [r3]
    b97c:	e584d000 	str	sp, [r4]
    b980:	e59f3250 	ldr	r3, [pc, #592]	; bbd8 <OS_CPU_ARM_CtxID_Get+0x38>
    b984:	e593d000 	ldr	sp, [r3]
    b988:	e59f124c 	ldr	r1, [pc, #588]	; bbdc <OS_CPU_ARM_CtxID_Get+0x3c>
    b98c:	e1a0e00f 	mov	lr, pc
    b990:	e12fff11 	bx	r1
    b994:	e59f0244 	ldr	r0, [pc, #580]	; bbe0 <OS_CPU_ARM_CtxID_Get+0x40>
    b998:	e1a0e00f 	mov	lr, pc
    b99c:	e12fff10 	bx	r0
    b9a0:	e59f321c 	ldr	r3, [pc, #540]	; bbc4 <OS_CPU_ARM_CtxID_Get+0x24>
    b9a4:	e5934000 	ldr	r4, [r3]
    b9a8:	e594d000 	ldr	sp, [r4]
    b9ac:	e8bd0001 	ldmfd	sp!, {r0}
    b9b0:	e12cf000 	msr	CPSR_fs, r0
    b9b4:	e59f11f4 	ldr	r1, [pc, #500]	; bbb0 <OS_CPU_ARM_CtxID_Get+0x10>
    b9b8:	e0000001 	and	r0, r0, r1
    b9bc:	e59f11e4 	ldr	r1, [pc, #484]	; bba8 <OS_CPU_ARM_CtxID_Get+0x8>
    b9c0:	e5810000 	str	r0, [r1]
    b9c4:	e2000080 	and	r0, r0, #128	; 0x80
    b9c8:	e3500000 	cmp	r0, #0
    b9cc:	1a000003 	bne	b9e0 <BreakTask_Exit>
    b9d0:	e59f01dc 	ldr	r0, [pc, #476]	; bbb4 <OS_CPU_ARM_CtxID_Get+0x14>
    b9d4:	e5900000 	ldr	r0, [r0]
    b9d8:	e3500000 	cmp	r0, #0
    b9dc:	1f00001f 	svcne	0x0000001f

0000b9e0 <BreakTask_Exit>:
    b9e0:	e8bddfff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}

0000b9e4 <OS_CPU_ARM_IRQHndlr_BreakIRQ>:
    b9e4:	e59f31f8 	ldr	r3, [pc, #504]	; bbe4 <OS_CPU_ARM_CtxID_Get+0x44>
    b9e8:	e583d000 	str	sp, [r3]
    b9ec:	e59f31e8 	ldr	r3, [pc, #488]	; bbdc <OS_CPU_ARM_CtxID_Get+0x3c>
    b9f0:	e1a0e00f 	mov	lr, pc
    b9f4:	e12fff13 	bx	r3
    b9f8:	e59f31d4 	ldr	r3, [pc, #468]	; bbd4 <OS_CPU_ARM_CtxID_Get+0x34>
    b9fc:	e5d34000 	ldrb	r4, [r3]
    ba00:	e2444001 	sub	r4, r4, #1
    ba04:	e5c34000 	strb	r4, [r3]
    ba08:	e8bd0001 	ldmfd	sp!, {r0}
    ba0c:	e12cf000 	msr	CPSR_fs, r0
    ba10:	e59f1198 	ldr	r1, [pc, #408]	; bbb0 <OS_CPU_ARM_CtxID_Get+0x10>
    ba14:	e0000001 	and	r0, r0, r1
    ba18:	e59f1188 	ldr	r1, [pc, #392]	; bba8 <OS_CPU_ARM_CtxID_Get+0x8>
    ba1c:	e5810000 	str	r0, [r1]
    ba20:	e2000080 	and	r0, r0, #128	; 0x80
    ba24:	e3500000 	cmp	r0, #0
    ba28:	1a000003 	bne	ba3c <BreakIRQ_Exit>
    ba2c:	e59f0180 	ldr	r0, [pc, #384]	; bbb4 <OS_CPU_ARM_CtxID_Get+0x14>
    ba30:	e5900000 	ldr	r0, [r0]
    ba34:	e3500000 	cmp	r0, #0
    ba38:	1f00001f 	svcne	0x0000001f

0000ba3c <BreakIRQ_Exit>:
    ba3c:	e8bddfff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}

0000ba40 <OS_CPU_ARM_IRQHndlr_BreakNothing>:
    ba40:	e59f3194 	ldr	r3, [pc, #404]	; bbdc <OS_CPU_ARM_CtxID_Get+0x3c>
    ba44:	e1a0e00f 	mov	lr, pc
    ba48:	e12fff13 	bx	r3
    ba4c:	e8bd0001 	ldmfd	sp!, {r0}
    ba50:	e12cf000 	msr	CPSR_fs, r0
    ba54:	e59f1154 	ldr	r1, [pc, #340]	; bbb0 <OS_CPU_ARM_CtxID_Get+0x10>
    ba58:	e0000001 	and	r0, r0, r1
    ba5c:	e59f1144 	ldr	r1, [pc, #324]	; bba8 <OS_CPU_ARM_CtxID_Get+0x8>
    ba60:	e5810000 	str	r0, [r1]
    ba64:	e2000080 	and	r0, r0, #128	; 0x80
    ba68:	e3500000 	cmp	r0, #0
    ba6c:	1a000003 	bne	ba80 <BreakNTH_Exit>
    ba70:	e59f013c 	ldr	r0, [pc, #316]	; bbb4 <OS_CPU_ARM_CtxID_Get+0x14>
    ba74:	e5900000 	ldr	r0, [r0]
    ba78:	e3500000 	cmp	r0, #0
    ba7c:	1f00001f 	svcne	0x0000001f

0000ba80 <BreakNTH_Exit>:
    ba80:	e8bddfff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
    ba84:	e8bddfff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}

0000ba88 <OS_CPU_SR_INT_En>:
    ba88:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    ba8c:	e59f1114 	ldr	r1, [pc, #276]	; bba8 <OS_CPU_ARM_CtxID_Get+0x8>
    ba90:	e5910000 	ldr	r0, [r1]
    ba94:	e3c000c0 	bic	r0, r0, #192	; 0xc0
    ba98:	e59f1110 	ldr	r1, [pc, #272]	; bbb0 <OS_CPU_ARM_CtxID_Get+0x10>
    ba9c:	e0000001 	and	r0, r0, r1
    baa0:	e59f1100 	ldr	r1, [pc, #256]	; bba8 <OS_CPU_ARM_CtxID_Get+0x8>
    baa4:	e5810000 	str	r0, [r1]
    baa8:	e59f0104 	ldr	r0, [pc, #260]	; bbb4 <OS_CPU_ARM_CtxID_Get+0x14>
    baac:	e5900000 	ldr	r0, [r0]
    bab0:	e3500000 	cmp	r0, #0
    bab4:	1f00001f 	svcne	0x0000001f
    bab8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    babc:	e12fff1e 	bx	lr

0000bac0 <OS_CPU_SR_INT_Dis>:
    bac0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    bac4:	e59f10dc 	ldr	r1, [pc, #220]	; bba8 <OS_CPU_ARM_CtxID_Get+0x8>
    bac8:	e5910000 	ldr	r0, [r1]
    bacc:	e38000c0 	orr	r0, r0, #192	; 0xc0
    bad0:	e59f10d8 	ldr	r1, [pc, #216]	; bbb0 <OS_CPU_ARM_CtxID_Get+0x10>
    bad4:	e0000001 	and	r0, r0, r1
    bad8:	e59f10c8 	ldr	r1, [pc, #200]	; bba8 <OS_CPU_ARM_CtxID_Get+0x8>
    badc:	e5810000 	str	r0, [r1]
    bae0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    bae4:	e12fff1e 	bx	lr

0000bae8 <OS_CPU_SR_IRQ_En>:
    bae8:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    baec:	e59f10b4 	ldr	r1, [pc, #180]	; bba8 <OS_CPU_ARM_CtxID_Get+0x8>
    baf0:	e5910000 	ldr	r0, [r1]
    baf4:	e3c00080 	bic	r0, r0, #128	; 0x80
    baf8:	e59f10b0 	ldr	r1, [pc, #176]	; bbb0 <OS_CPU_ARM_CtxID_Get+0x10>
    bafc:	e0000001 	and	r0, r0, r1
    bb00:	e59f10a0 	ldr	r1, [pc, #160]	; bba8 <OS_CPU_ARM_CtxID_Get+0x8>
    bb04:	e5810000 	str	r0, [r1]
    bb08:	e59f00a4 	ldr	r0, [pc, #164]	; bbb4 <OS_CPU_ARM_CtxID_Get+0x14>
    bb0c:	e5900000 	ldr	r0, [r0]
    bb10:	e3500000 	cmp	r0, #0
    bb14:	1f00001f 	svcne	0x0000001f
    bb18:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    bb1c:	e12fff1e 	bx	lr

0000bb20 <OS_CPU_SR_IRQ_Dis>:
    bb20:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    bb24:	e59f107c 	ldr	r1, [pc, #124]	; bba8 <OS_CPU_ARM_CtxID_Get+0x8>
    bb28:	e5910000 	ldr	r0, [r1]
    bb2c:	e3800080 	orr	r0, r0, #128	; 0x80
    bb30:	e59f1078 	ldr	r1, [pc, #120]	; bbb0 <OS_CPU_ARM_CtxID_Get+0x10>
    bb34:	e0000001 	and	r0, r0, r1
    bb38:	e59f1068 	ldr	r1, [pc, #104]	; bba8 <OS_CPU_ARM_CtxID_Get+0x8>
    bb3c:	e5810000 	str	r0, [r1]
    bb40:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    bb44:	e12fff1e 	bx	lr

0000bb48 <OS_CPU_SR_FIQ_En>:
    bb48:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    bb4c:	e59f1054 	ldr	r1, [pc, #84]	; bba8 <OS_CPU_ARM_CtxID_Get+0x8>
    bb50:	e5910000 	ldr	r0, [r1]
    bb54:	e3c00040 	bic	r0, r0, #64	; 0x40
    bb58:	e59f1050 	ldr	r1, [pc, #80]	; bbb0 <OS_CPU_ARM_CtxID_Get+0x10>
    bb5c:	e0000001 	and	r0, r0, r1
    bb60:	e59f1040 	ldr	r1, [pc, #64]	; bba8 <OS_CPU_ARM_CtxID_Get+0x8>
    bb64:	e5810000 	str	r0, [r1]
    bb68:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    bb6c:	e12fff1e 	bx	lr

0000bb70 <OS_CPU_SR_FIQ_Dis>:
    bb70:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    bb74:	e59f102c 	ldr	r1, [pc, #44]	; bba8 <OS_CPU_ARM_CtxID_Get+0x8>
    bb78:	e5910000 	ldr	r0, [r1]
    bb7c:	e3800040 	orr	r0, r0, #64	; 0x40
    bb80:	e59f1028 	ldr	r1, [pc, #40]	; bbb0 <OS_CPU_ARM_CtxID_Get+0x10>
    bb84:	e0000001 	and	r0, r0, r1
    bb88:	e59f1018 	ldr	r1, [pc, #24]	; bba8 <OS_CPU_ARM_CtxID_Get+0x8>
    bb8c:	e5810000 	str	r0, [r1]
    bb90:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    bb94:	e12fff1e 	bx	lr

0000bb98 <OS_CPU_ARM_CtxID_Set>:
    bb98:	ee0d0f30 	mcr	15, 0, r0, cr13, cr0, {1}
    bb9c:	e12fff1e 	bx	lr

0000bba0 <OS_CPU_ARM_CtxID_Get>:
    bba0:	ee1d0f30 	mrc	15, 0, r0, cr13, cr0, {1}
    bba4:	e12fff1e 	bx	lr
    bba8:	000133dc 	ldrdeq	r3, [r1], -ip
    bbac:	f80f0000 			; <UNDEFINED> instruction: 0xf80f0000
    bbb0:	0000ffff 	strdeq	pc, [r0], -pc	; <UNPREDICTABLE>
    bbb4:	000133e4 	andeq	r3, r1, r4, ror #7
    bbb8:	0000bd20 	andeq	fp, r0, r0, lsr #26
    bbbc:	0001268e 	andeq	r2, r1, lr, lsl #13
    bbc0:	00012728 	andeq	r2, r1, r8, lsr #14
    bbc4:	00012740 	andeq	r2, r1, r0, asr #14
    bbc8:	00012695 	muleq	r1, r5, r6
    bbcc:	00012694 	muleq	r1, r4, r6
    bbd0:	000133e0 	andeq	r3, r1, r0, ror #7
    bbd4:	0001273c 	andeq	r2, r1, ip, lsr r7
    bbd8:	000131c8 	andeq	r3, r1, r8, asr #3
    bbdc:	0000be14 	andeq	fp, r0, r4, lsl lr
    bbe0:	000085e8 	andeq	r8, r0, r8, ror #11
    bbe4:	000131cc 	andeq	r3, r1, ip, asr #3

0000bbe8 <OSInitHookBegin>:
    bbe8:	e30331d0 	movw	r3, #12752	; 0x31d0
    bbec:	e3403001 	movt	r3, #1
    bbf0:	e2831c02 	add	r1, r3, #512	; 0x200
    bbf4:	e3a02000 	mov	r2, #0
    bbf8:	e4832004 	str	r2, [r3], #4
    bbfc:	e1530001 	cmp	r3, r1
    bc00:	1afffffc 	bne	bbf8 <OSInitHookBegin+0x10>
    bc04:	e30321c8 	movw	r2, #12744	; 0x31c8
    bc08:	e3402001 	movt	r2, #1
    bc0c:	e3c33007 	bic	r3, r3, #7
    bc10:	e5823000 	str	r3, [r2]
    bc14:	e12fff1e 	bx	lr

0000bc18 <OSInitHookEnd>:
    bc18:	e12fff1e 	bx	lr

0000bc1c <OSTaskCreateHook>:
    bc1c:	ea0008f5 	b	dff8 <App_TaskCreateHook>

0000bc20 <OSTaskDelHook>:
    bc20:	ea0008f5 	b	dffc <App_TaskDelHook>

0000bc24 <OSTaskIdleHook>:
    bc24:	ea0008f5 	b	e000 <App_TaskIdleHook>

0000bc28 <OSTaskReturnHook>:
    bc28:	ea0008f5 	b	e004 <App_TaskReturnHook>

0000bc2c <OSTaskStatHook>:
    bc2c:	ea0008f5 	b	e008 <App_TaskStatHook>

0000bc30 <OSTaskStkInit>:
    bc30:	e2822004 	add	r2, r2, #4
    bc34:	e3100001 	tst	r0, #1
    bc38:	e92d0ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp}
    bc3c:	e3c22007 	bic	r2, r2, #7
    bc40:	e24dd010 	sub	sp, sp, #16
    bc44:	e3c00001 	bic	r0, r0, #1
    bc48:	e5020004 	str	r0, [r2, #-4]
    bc4c:	e30b04b8 	movw	r0, #46264	; 0xb4b8
    bc50:	e3400000 	movt	r0, #0
    bc54:	e58d0008 	str	r0, [sp, #8]
    bc58:	e3000202 	movw	r0, #514	; 0x202
    bc5c:	e7df0810 	bfi	r0, r0, #16, #16
    bc60:	e58d000c 	str	r0, [sp, #12]
    bc64:	e3003303 	movw	r3, #771	; 0x303
    bc68:	e59d0008 	ldr	r0, [sp, #8]
    bc6c:	e7df3813 	bfi	r3, r3, #16, #16
    bc70:	e58d3004 	str	r3, [sp, #4]
    bc74:	e301b212 	movw	fp, #4626	; 0x1212
    bc78:	e3019111 	movw	r9, #4369	; 0x1111
    bc7c:	e7dfb81b 	bfi	fp, fp, #16, #16
    bc80:	e5020008 	str	r0, [r2, #-8]
    bc84:	e7df9819 	bfi	r9, r9, #16, #16
    bc88:	e59d0004 	ldr	r0, [sp, #4]
    bc8c:	e301a010 	movw	sl, #4112	; 0x1010
    bc90:	e3008909 	movw	r8, #2313	; 0x909
    bc94:	e7dfa81a 	bfi	sl, sl, #16, #16
    bc98:	e7df8818 	bfi	r8, r8, #16, #16
    bc9c:	e3007808 	movw	r7, #2056	; 0x808
    bca0:	e5020030 	str	r0, [r2, #-48]	; 0xffffffd0
    bca4:	e7df7817 	bfi	r7, r7, #16, #16
    bca8:	e59d000c 	ldr	r0, [sp, #12]
    bcac:	e3006707 	movw	r6, #1799	; 0x707
    bcb0:	e3005606 	movw	r5, #1542	; 0x606
    bcb4:	e7df6816 	bfi	r6, r6, #16, #16
    bcb8:	e7df5815 	bfi	r5, r5, #16, #16
    bcbc:	e3004505 	movw	r4, #1285	; 0x505
    bcc0:	e5020034 	str	r0, [r2, #-52]	; 0xffffffcc
    bcc4:	e7df4814 	bfi	r4, r4, #16, #16
    bcc8:	e300c404 	movw	ip, #1028	; 0x404
    bccc:	e3003101 	movw	r3, #257	; 0x101
    bcd0:	e7dfc81c 	bfi	ip, ip, #16, #16
    bcd4:	e7df3813 	bfi	r3, r3, #16, #16
    bcd8:	e502b00c 	str	fp, [r2, #-12]
    bcdc:	e2420040 	sub	r0, r2, #64	; 0x40
    bce0:	e5023038 	str	r3, [r2, #-56]	; 0xffffffc8
    bce4:	13a03030 	movne	r3, #48	; 0x30
    bce8:	03a03e11 	moveq	r3, #272	; 0x110
    bcec:	e5029010 	str	r9, [r2, #-16]
    bcf0:	e502a014 	str	sl, [r2, #-20]	; 0xffffffec
    bcf4:	e5028018 	str	r8, [r2, #-24]	; 0xffffffe8
    bcf8:	e502701c 	str	r7, [r2, #-28]	; 0xffffffe4
    bcfc:	e5026020 	str	r6, [r2, #-32]	; 0xffffffe0
    bd00:	e5025024 	str	r5, [r2, #-36]	; 0xffffffdc
    bd04:	e5024028 	str	r4, [r2, #-40]	; 0xffffffd8
    bd08:	e502c02c 	str	ip, [r2, #-44]	; 0xffffffd4
    bd0c:	e502103c 	str	r1, [r2, #-60]	; 0xffffffc4
    bd10:	e5023040 	str	r3, [r2, #-64]	; 0xffffffc0
    bd14:	e28dd010 	add	sp, sp, #16
    bd18:	e8bd0ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp}
    bd1c:	e12fff1e 	bx	lr

0000bd20 <OSTaskSwHook>:
    bd20:	ea0008b9 	b	e00c <App_TaskSwHook>

0000bd24 <OSTCBInitHook>:
    bd24:	ea0008b9 	b	e010 <App_TCBInitHook>

0000bd28 <OSTimeTickHook>:
    bd28:	ea0008b9 	b	e014 <App_TimeTickHook>

0000bd2c <OS_CPU_InitExceptVect>:
    bd2c:	e3a03000 	mov	r3, #0
    bd30:	e30f2018 	movw	r2, #61464	; 0xf018
    bd34:	e92d0070 	push	{r4, r5, r6}
    bd38:	e34e259f 	movt	r2, #58783	; 0xe59f
    bd3c:	e30b6934 	movw	r6, #47412	; 0xb934
    bd40:	e30b5934 	movw	r5, #47412	; 0xb934
    bd44:	e3406000 	movt	r6, #0
    bd48:	e30b4934 	movw	r4, #47412	; 0xb934
    bd4c:	e3405000 	movt	r5, #0
    bd50:	e3404000 	movt	r4, #0
    bd54:	e30bc934 	movw	ip, #47412	; 0xb934
    bd58:	e30b0934 	movw	r0, #47412	; 0xb934
    bd5c:	e340c000 	movt	ip, #0
    bd60:	e3400000 	movt	r0, #0
    bd64:	e30b1934 	movw	r1, #47412	; 0xb934
    bd68:	e5832000 	str	r2, [r3]
    bd6c:	e3401000 	movt	r1, #0
    bd70:	e5836024 	str	r6, [r3, #36]	; 0x24
    bd74:	e5832008 	str	r2, [r3, #8]
    bd78:	e5835028 	str	r5, [r3, #40]	; 0x28
    bd7c:	e583200c 	str	r2, [r3, #12]
    bd80:	e583402c 	str	r4, [r3, #44]	; 0x2c
    bd84:	e5832010 	str	r2, [r3, #16]
    bd88:	e583c030 	str	ip, [r3, #48]	; 0x30
    bd8c:	e5832018 	str	r2, [r3, #24]
    bd90:	e5830038 	str	r0, [r3, #56]	; 0x38
    bd94:	e583201c 	str	r2, [r3, #28]
    bd98:	e583103c 	str	r1, [r3, #60]	; 0x3c
    bd9c:	e8bd0070 	pop	{r4, r5, r6}
    bda0:	e12fff1e 	bx	lr

0000bda4 <OS_CPU_ExceptStkChk>:
    bda4:	e30331d0 	movw	r3, #12752	; 0x31d0
    bda8:	e3403001 	movt	r3, #1
    bdac:	e5930000 	ldr	r0, [r3]
    bdb0:	e3500000 	cmp	r0, #0
    bdb4:	1a000006 	bne	bdd4 <OS_CPU_ExceptStkChk+0x30>
    bdb8:	e5b32004 	ldr	r2, [r3, #4]!
    bdbc:	e2800001 	add	r0, r0, #1
    bdc0:	e3520000 	cmp	r2, #0
    bdc4:	112fff1e 	bxne	lr
    bdc8:	e3500080 	cmp	r0, #128	; 0x80
    bdcc:	1afffff9 	bne	bdb8 <OS_CPU_ExceptStkChk+0x14>
    bdd0:	e12fff1e 	bx	lr
    bdd4:	e3a00000 	mov	r0, #0
    bdd8:	e12fff1e 	bx	lr

0000bddc <OS_CSP_TickISR_Handler>:
    bddc:	eafff27c 	b	87d4 <OSTimeTick>

0000bde0 <guest_OS_CSP_TickInit>:
    bde0:	e3a00000 	mov	r0, #0
    bde4:	e3a0102a 	mov	r1, #42	; 0x2a
    bde8:	e92d4008 	push	{r3, lr}
    bdec:	e30b2ddc 	movw	r2, #48604	; 0xbddc
    bdf0:	e1a03000 	mov	r3, r0
    bdf4:	e3402000 	movt	r2, #0
    bdf8:	eb0004ad 	bl	d0b4 <CSP_IntVectReg>
    bdfc:	e3500001 	cmp	r0, #1
    be00:	18bd8008 	popne	{r3, pc}
    be04:	e3a00ffa 	mov	r0, #1000	; 0x3e8
    be08:	eb000791 	bl	dc54 <guest_OS_Timer_Register>
    be0c:	e8bd4008 	pop	{r3, lr}
    be10:	ea000797 	b	dc74 <guest_OS_Timer_Enable>

0000be14 <OS_CPU_IntHandler>:
    be14:	e92d4008 	push	{r3, lr}
    be18:	e2403006 	sub	r3, r0, #6
    be1c:	e3530001 	cmp	r3, #1
    be20:	8a000003 	bhi	be34 <OS_CPU_IntHandler+0x20>
    be24:	eb000780 	bl	dc2c <guest_IRQ_Acknowledge>
    be28:	e6ff0070 	uxth	r0, r0
    be2c:	e8bd4008 	pop	{r3, lr}
    be30:	ea0004c7 	b	d154 <CSP_IntHandlerSrc>
    be34:	e6ef0070 	uxtb	r0, r0
    be38:	e8bd4008 	pop	{r3, lr}
    be3c:	ea000738 	b	db24 <OS_CSP_BSP_ExceptHandler>

0000be40 <ASCII_IsAlpha>:
    be40:	e20000df 	and	r0, r0, #223	; 0xdf
    be44:	e2400041 	sub	r0, r0, #65	; 0x41
    be48:	e3500019 	cmp	r0, #25
    be4c:	83a00000 	movhi	r0, #0
    be50:	93a00001 	movls	r0, #1
    be54:	e12fff1e 	bx	lr

0000be58 <ASCII_IsAlphaNum>:
    be58:	e3c03020 	bic	r3, r0, #32
    be5c:	e2433041 	sub	r3, r3, #65	; 0x41
    be60:	e3530019 	cmp	r3, #25
    be64:	9a000004 	bls	be7c <ASCII_IsAlphaNum+0x24>
    be68:	e2400030 	sub	r0, r0, #48	; 0x30
    be6c:	e3500009 	cmp	r0, #9
    be70:	83a00000 	movhi	r0, #0
    be74:	93a00001 	movls	r0, #1
    be78:	e12fff1e 	bx	lr
    be7c:	e3a00001 	mov	r0, #1
    be80:	e12fff1e 	bx	lr

0000be84 <ASCII_IsLower>:
    be84:	e2400061 	sub	r0, r0, #97	; 0x61
    be88:	e3500019 	cmp	r0, #25
    be8c:	83a00000 	movhi	r0, #0
    be90:	93a00001 	movls	r0, #1
    be94:	e12fff1e 	bx	lr

0000be98 <ASCII_IsUpper>:
    be98:	e2400041 	sub	r0, r0, #65	; 0x41
    be9c:	e3500019 	cmp	r0, #25
    bea0:	83a00000 	movhi	r0, #0
    bea4:	93a00001 	movls	r0, #1
    bea8:	e12fff1e 	bx	lr

0000beac <ASCII_IsDig>:
    beac:	e2400030 	sub	r0, r0, #48	; 0x30
    beb0:	e3500009 	cmp	r0, #9
    beb4:	83a00000 	movhi	r0, #0
    beb8:	93a00001 	movls	r0, #1
    bebc:	e12fff1e 	bx	lr

0000bec0 <ASCII_IsDigOct>:
    bec0:	e2400030 	sub	r0, r0, #48	; 0x30
    bec4:	e3500007 	cmp	r0, #7
    bec8:	83a00000 	movhi	r0, #0
    becc:	93a00001 	movls	r0, #1
    bed0:	e12fff1e 	bx	lr

0000bed4 <ASCII_IsDigHex>:
    bed4:	e2402041 	sub	r2, r0, #65	; 0x41
    bed8:	e2403030 	sub	r3, r0, #48	; 0x30
    bedc:	e3530009 	cmp	r3, #9
    bee0:	83520005 	cmphi	r2, #5
    bee4:	9a000004 	bls	befc <ASCII_IsDigHex+0x28>
    bee8:	e2400061 	sub	r0, r0, #97	; 0x61
    beec:	e3500005 	cmp	r0, #5
    bef0:	83a00000 	movhi	r0, #0
    bef4:	93a00001 	movls	r0, #1
    bef8:	e12fff1e 	bx	lr
    befc:	e3a00001 	mov	r0, #1
    bf00:	e12fff1e 	bx	lr

0000bf04 <ASCII_IsBlank>:
    bf04:	e3500020 	cmp	r0, #32
    bf08:	13500009 	cmpne	r0, #9
    bf0c:	13a00000 	movne	r0, #0
    bf10:	03a00001 	moveq	r0, #1
    bf14:	e12fff1e 	bx	lr

0000bf18 <ASCII_IsSpace>:
    bf18:	e3500020 	cmp	r0, #32
    bf1c:	1350000d 	cmpne	r0, #13
    bf20:	0a000007 	beq	bf44 <ASCII_IsSpace+0x2c>
    bf24:	e350000a 	cmp	r0, #10
    bf28:	1350000c 	cmpne	r0, #12
    bf2c:	0a000004 	beq	bf44 <ASCII_IsSpace+0x2c>
    bf30:	e20000fd 	and	r0, r0, #253	; 0xfd
    bf34:	e2503009 	subs	r3, r0, #9
    bf38:	e2730000 	rsbs	r0, r3, #0
    bf3c:	e0b00003 	adcs	r0, r0, r3
    bf40:	e12fff1e 	bx	lr
    bf44:	e3a00001 	mov	r0, #1
    bf48:	e12fff1e 	bx	lr

0000bf4c <ASCII_IsPrint>:
    bf4c:	e2400020 	sub	r0, r0, #32
    bf50:	e350005e 	cmp	r0, #94	; 0x5e
    bf54:	83a00000 	movhi	r0, #0
    bf58:	93a00001 	movls	r0, #1
    bf5c:	e12fff1e 	bx	lr

0000bf60 <ASCII_IsGraph>:
    bf60:	e2400021 	sub	r0, r0, #33	; 0x21
    bf64:	e350005d 	cmp	r0, #93	; 0x5d
    bf68:	83a00000 	movhi	r0, #0
    bf6c:	93a00001 	movls	r0, #1
    bf70:	e12fff1e 	bx	lr

0000bf74 <ASCII_IsPunct>:
    bf74:	e2403020 	sub	r3, r0, #32
    bf78:	e353005e 	cmp	r3, #94	; 0x5e
    bf7c:	8a00000a 	bhi	bfac <ASCII_IsPunct+0x38>
    bf80:	e3500020 	cmp	r0, #32
    bf84:	0a000008 	beq	bfac <ASCII_IsPunct+0x38>
    bf88:	e3c03020 	bic	r3, r0, #32
    bf8c:	e2433041 	sub	r3, r3, #65	; 0x41
    bf90:	e3530019 	cmp	r3, #25
    bf94:	9a000004 	bls	bfac <ASCII_IsPunct+0x38>
    bf98:	e2400030 	sub	r0, r0, #48	; 0x30
    bf9c:	e3500009 	cmp	r0, #9
    bfa0:	93a00000 	movls	r0, #0
    bfa4:	83a00001 	movhi	r0, #1
    bfa8:	e12fff1e 	bx	lr
    bfac:	e3a00000 	mov	r0, #0
    bfb0:	e12fff1e 	bx	lr

0000bfb4 <ASCII_IsCtrl>:
    bfb4:	e350007f 	cmp	r0, #127	; 0x7f
    bfb8:	1350001f 	cmpne	r0, #31
    bfbc:	83a00000 	movhi	r0, #0
    bfc0:	93a00001 	movls	r0, #1
    bfc4:	e12fff1e 	bx	lr

0000bfc8 <ASCII_ToLower>:
    bfc8:	e2403041 	sub	r3, r0, #65	; 0x41
    bfcc:	e3530019 	cmp	r3, #25
    bfd0:	92800020 	addls	r0, r0, #32
    bfd4:	96ef0070 	uxtbls	r0, r0
    bfd8:	e12fff1e 	bx	lr

0000bfdc <ASCII_ToUpper>:
    bfdc:	e2403061 	sub	r3, r0, #97	; 0x61
    bfe0:	e3530019 	cmp	r3, #25
    bfe4:	92400020 	subls	r0, r0, #32
    bfe8:	96ef0070 	uxtbls	r0, r0
    bfec:	e12fff1e 	bx	lr

0000bff0 <ASCII_Cmp>:
    bff0:	e2403061 	sub	r3, r0, #97	; 0x61
    bff4:	e3530019 	cmp	r3, #25
    bff8:	e2413061 	sub	r3, r1, #97	; 0x61
    bffc:	92400020 	subls	r0, r0, #32
    c000:	96ef0070 	uxtbls	r0, r0
    c004:	e3530019 	cmp	r3, #25
    c008:	92411020 	subls	r1, r1, #32
    c00c:	96ef1071 	uxtbls	r1, r1
    c010:	e0502001 	subs	r2, r0, r1
    c014:	e2720000 	rsbs	r0, r2, #0
    c018:	e0b00002 	adcs	r0, r0, r2
    c01c:	e12fff1e 	bx	lr

0000c020 <Math_RandSetSeed>:
    c020:	e92d4010 	push	{r4, lr}
    c024:	e1a04000 	mov	r4, r0
    c028:	eb000530 	bl	d4f0 <CPU_SR_Save>
    c02c:	e30333d0 	movw	r3, #13264	; 0x33d0
    c030:	e3403001 	movt	r3, #1
    c034:	e5834000 	str	r4, [r3]
    c038:	e8bd4010 	pop	{r4, lr}
    c03c:	ea00053e 	b	d53c <CPU_SR_Restore>

0000c040 <Math_Init>:
    c040:	e3a00001 	mov	r0, #1
    c044:	eafffff5 	b	c020 <Math_RandSetSeed>

0000c048 <Math_Rand>:
    c048:	e92d4010 	push	{r4, lr}
    c04c:	eb000527 	bl	d4f0 <CPU_SR_Save>
    c050:	e30333d0 	movw	r3, #13264	; 0x33d0
    c054:	e3403001 	movt	r3, #1
    c058:	e3042e6d 	movw	r2, #20077	; 0x4e6d
    c05c:	e34421c6 	movt	r2, #16838	; 0x41c6
    c060:	e5931000 	ldr	r1, [r3]
    c064:	e0020192 	mul	r2, r2, r1
    c068:	e2822a03 	add	r2, r2, #12288	; 0x3000
    c06c:	e2822039 	add	r2, r2, #57	; 0x39
    c070:	e3c24102 	bic	r4, r2, #-2147483648	; 0x80000000
    c074:	e5834000 	str	r4, [r3]
    c078:	eb00052f 	bl	d53c <CPU_SR_Restore>
    c07c:	e1a00004 	mov	r0, r4
    c080:	e8bd8010 	pop	{r4, pc}

0000c084 <Math_RandSeed>:
    c084:	e3043e6d 	movw	r3, #20077	; 0x4e6d
    c088:	e34431c6 	movt	r3, #16838	; 0x41c6
    c08c:	e0000093 	mul	r0, r3, r0
    c090:	e2800a03 	add	r0, r0, #12288	; 0x3000
    c094:	e2800039 	add	r0, r0, #57	; 0x39
    c098:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
    c09c:	e12fff1e 	bx	lr

0000c0a0 <Mem_Init>:
    c0a0:	e12fff1e 	bx	lr

0000c0a4 <Mem_Set>:
    c0a4:	e3520000 	cmp	r2, #0
    c0a8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    c0ac:	0a000025 	beq	c148 <Mem_Set+0xa4>
    c0b0:	e3500000 	cmp	r0, #0
    c0b4:	0a000023 	beq	c148 <Mem_Set+0xa4>
    c0b8:	e1814401 	orr	r4, r1, r1, lsl #8
    c0bc:	e2103003 	ands	r3, r0, #3
    c0c0:	e1a0c000 	mov	ip, r0
    c0c4:	e1814404 	orr	r4, r1, r4, lsl #8
    c0c8:	e1814404 	orr	r4, r1, r4, lsl #8
    c0cc:	0a00000a 	beq	c0fc <Mem_Set+0x58>
    c0d0:	e2522001 	subs	r2, r2, #1
    c0d4:	e2833001 	add	r3, r3, #1
    c0d8:	e4cc1001 	strb	r1, [ip], #1
    c0dc:	03a00000 	moveq	r0, #0
    c0e0:	13a00001 	movne	r0, #1
    c0e4:	e3530003 	cmp	r3, #3
    c0e8:	83a00000 	movhi	r0, #0
    c0ec:	92000001 	andls	r0, r0, #1
    c0f0:	e3500000 	cmp	r0, #0
    c0f4:	1afffff5 	bne	c0d0 <Mem_Set+0x2c>
    c0f8:	e1a0000c 	mov	r0, ip
    c0fc:	e3520003 	cmp	r2, #3
    c100:	9a00000a 	bls	c130 <Mem_Set+0x8c>
    c104:	e1a0c000 	mov	ip, r0
    c108:	e1a03002 	mov	r3, r2
    c10c:	e2433004 	sub	r3, r3, #4
    c110:	e48c4004 	str	r4, [ip], #4
    c114:	e3530003 	cmp	r3, #3
    c118:	8afffffb 	bhi	c10c <Mem_Set+0x68>
    c11c:	e2423004 	sub	r3, r2, #4
    c120:	e2022003 	and	r2, r2, #3
    c124:	e3c33003 	bic	r3, r3, #3
    c128:	e2833004 	add	r3, r3, #4
    c12c:	e0800003 	add	r0, r0, r3
    c130:	e3520000 	cmp	r2, #0
    c134:	0a000003 	beq	c148 <Mem_Set+0xa4>
    c138:	e0802002 	add	r2, r0, r2
    c13c:	e4c01001 	strb	r1, [r0], #1
    c140:	e1500002 	cmp	r0, r2
    c144:	1afffffc 	bne	c13c <Mem_Set+0x98>
    c148:	e8bd0010 	ldmfd	sp!, {r4}
    c14c:	e12fff1e 	bx	lr

0000c150 <Mem_Clr>:
    c150:	e1a02001 	mov	r2, r1
    c154:	e3a01000 	mov	r1, #0
    c158:	eaffffd1 	b	c0a4 <Mem_Set>

0000c15c <Mem_Cmp>:
    c15c:	e252c000 	subs	ip, r2, #0
    c160:	e92d01f0 	push	{r4, r5, r6, r7, r8}
    c164:	03a00001 	moveq	r0, #1
    c168:	0a000016 	beq	c1c8 <Mem_Cmp+0x6c>
    c16c:	e3500000 	cmp	r0, #0
    c170:	0a000014 	beq	c1c8 <Mem_Cmp+0x6c>
    c174:	e3510000 	cmp	r1, #0
    c178:	0a000014 	beq	c1d0 <Mem_Cmp+0x74>
    c17c:	e080300c 	add	r3, r0, ip
    c180:	e081200c 	add	r2, r1, ip
    c184:	e2036003 	and	r6, r3, #3
    c188:	e2021003 	and	r1, r2, #3
    c18c:	e1560001 	cmp	r6, r1
    c190:	0a000010 	beq	c1d8 <Mem_Cmp+0x7c>
    c194:	e1a0400c 	mov	r4, ip
    c198:	e0634004 	rsb	r4, r3, r4
    c19c:	e573c001 	ldrb	ip, [r3, #-1]!
    c1a0:	e5720001 	ldrb	r0, [r2, #-1]!
    c1a4:	e0841003 	add	r1, r4, r3
    c1a8:	e05cc000 	subs	ip, ip, r0
    c1ac:	e27c0000 	rsbs	r0, ip, #0
    c1b0:	e0b0000c 	adcs	r0, r0, ip
    c1b4:	e3510000 	cmp	r1, #0
    c1b8:	03a01000 	moveq	r1, #0
    c1bc:	12001001 	andne	r1, r0, #1
    c1c0:	e3510000 	cmp	r1, #0
    c1c4:	1afffff4 	bne	c19c <Mem_Cmp+0x40>
    c1c8:	e8bd01f0 	pop	{r4, r5, r6, r7, r8}
    c1cc:	e12fff1e 	bx	lr
    c1d0:	e1a00001 	mov	r0, r1
    c1d4:	eafffffb 	b	c1c8 <Mem_Cmp+0x6c>
    c1d8:	e3560000 	cmp	r6, #0
    c1dc:	0a000018 	beq	c244 <Mem_Cmp+0xe8>
    c1e0:	e2435001 	sub	r5, r3, #1
    c1e4:	e2421001 	sub	r1, r2, #1
    c1e8:	e1a0400c 	mov	r4, ip
    c1ec:	ea000001 	b	c1f8 <Mem_Cmp+0x9c>
    c1f0:	e3580000 	cmp	r8, #0
    c1f4:	0a000013 	beq	c248 <Mem_Cmp+0xec>
    c1f8:	e5d10000 	ldrb	r0, [r1]
    c1fc:	e1a03005 	mov	r3, r5
    c200:	e5d57000 	ldrb	r7, [r5]
    c204:	e1a02001 	mov	r2, r1
    c208:	e2455001 	sub	r5, r5, #1
    c20c:	e2411001 	sub	r1, r1, #1
    c210:	e0577000 	subs	r7, r7, r0
    c214:	e2770000 	rsbs	r0, r7, #0
    c218:	e0b00007 	adcs	r0, r0, r7
    c21c:	e2544001 	subs	r4, r4, #1
    c220:	e06c7004 	rsb	r7, ip, r4
    c224:	e0878006 	add	r8, r7, r6
    c228:	03a07000 	moveq	r7, #0
    c22c:	12007001 	andne	r7, r0, #1
    c230:	e3570000 	cmp	r7, #0
    c234:	1affffed 	bne	c1f0 <Mem_Cmp+0x94>
    c238:	e3500000 	cmp	r0, #0
    c23c:	0affffe1 	beq	c1c8 <Mem_Cmp+0x6c>
    c240:	ea000000 	b	c248 <Mem_Cmp+0xec>
    c244:	e1a0400c 	mov	r4, ip
    c248:	e3540003 	cmp	r4, #3
    c24c:	9a000017 	bls	c2b0 <Mem_Cmp+0x154>
    c250:	e2430004 	sub	r0, r3, #4
    c254:	e2421004 	sub	r1, r2, #4
    c258:	e591c000 	ldr	ip, [r1]
    c25c:	e2444004 	sub	r4, r4, #4
    c260:	e5905000 	ldr	r5, [r0]
    c264:	e1a03000 	mov	r3, r0
    c268:	e1a02001 	mov	r2, r1
    c26c:	e2400004 	sub	r0, r0, #4
    c270:	e055500c 	subs	r5, r5, ip
    c274:	e2411004 	sub	r1, r1, #4
    c278:	e275c000 	rsbs	ip, r5, #0
    c27c:	e0bcc005 	adcs	ip, ip, r5
    c280:	e3540003 	cmp	r4, #3
    c284:	93a05000 	movls	r5, #0
    c288:	820c5001 	andhi	r5, ip, #1
    c28c:	e3550000 	cmp	r5, #0
    c290:	1afffff0 	bne	c258 <Mem_Cmp+0xfc>
    c294:	e1a0000c 	mov	r0, ip
    c298:	e3540000 	cmp	r4, #0
    c29c:	03a0c000 	moveq	ip, #0
    c2a0:	120cc001 	andne	ip, ip, #1
    c2a4:	e35c0000 	cmp	ip, #0
    c2a8:	1affffba 	bne	c198 <Mem_Cmp+0x3c>
    c2ac:	eaffffc5 	b	c1c8 <Mem_Cmp+0x6c>
    c2b0:	e3a0c001 	mov	ip, #1
    c2b4:	eafffff6 	b	c294 <Mem_Cmp+0x138>

0000c2b8 <Str_ParseNbr_Int32>:
    c2b8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    c2bc:	e24dd014 	sub	sp, sp, #20
    c2c0:	e1a06002 	mov	r6, r2
    c2c4:	e251a000 	subs	sl, r1, #0
    c2c8:	e59d2038 	ldr	r2, [sp, #56]	; 0x38
    c2cc:	028da00c 	addeq	sl, sp, #12
    c2d0:	e1a09003 	mov	r9, r3
    c2d4:	e3a08000 	mov	r8, #0
    c2d8:	e3520000 	cmp	r2, #0
    c2dc:	e58a0000 	str	r0, [sl]
    c2e0:	028d300b 	addeq	r3, sp, #11
    c2e4:	058d3038 	streq	r3, [sp, #56]	; 0x38
    c2e8:	e59d2038 	ldr	r2, [sp, #56]	; 0x38
    c2ec:	e3500000 	cmp	r0, #0
    c2f0:	e1a07000 	mov	r7, r0
    c2f4:	e5c28000 	strb	r8, [r2]
    c2f8:	0a000069 	beq	c4a4 <Str_ParseNbr_Int32+0x1ec>
    c2fc:	e2562001 	subs	r2, r6, #1
    c300:	e2723000 	rsbs	r3, r2, #0
    c304:	e0b33002 	adcs	r3, r3, r2
    c308:	e3560024 	cmp	r6, #36	; 0x24
    c30c:	83833001 	orrhi	r3, r3, #1
    c310:	e1530008 	cmp	r3, r8
    c314:	0a000002 	beq	c324 <Str_ParseNbr_Int32+0x6c>
    c318:	e1a00008 	mov	r0, r8
    c31c:	e28dd014 	add	sp, sp, #20
    c320:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    c324:	e5d00000 	ldrb	r0, [r0]
    c328:	ebfffefa 	bl	bf18 <ASCII_IsSpace>
    c32c:	e3500001 	cmp	r0, #1
    c330:	1a00005d 	bne	c4ac <Str_ParseNbr_Int32+0x1f4>
    c334:	e2874001 	add	r4, r7, #1
    c338:	e1a05004 	mov	r5, r4
    c33c:	e2844001 	add	r4, r4, #1
    c340:	e5d50000 	ldrb	r0, [r5]
    c344:	ebfffef3 	bl	bf18 <ASCII_IsSpace>
    c348:	e3500001 	cmp	r0, #1
    c34c:	0afffff9 	beq	c338 <Str_ParseNbr_Int32+0x80>
    c350:	e5d54000 	ldrb	r4, [r5]
    c354:	e354002b 	cmp	r4, #43	; 0x2b
    c358:	0a00004c 	beq	c490 <Str_ParseNbr_Int32+0x1d8>
    c35c:	e354002d 	cmp	r4, #45	; 0x2d
    c360:	13a02000 	movne	r2, #0
    c364:	158d2004 	strne	r2, [sp, #4]
    c368:	0a00001b 	beq	c3dc <Str_ParseNbr_Int32+0x124>
    c36c:	e3560008 	cmp	r6, #8
    c370:	0a000021 	beq	c3fc <Str_ParseNbr_Int32+0x144>
    c374:	e3560010 	cmp	r6, #16
    c378:	0a000024 	beq	c410 <Str_ParseNbr_Int32+0x158>
    c37c:	e3560000 	cmp	r6, #0
    c380:	1a000024 	bne	c418 <Str_ParseNbr_Int32+0x160>
    c384:	e3540030 	cmp	r4, #48	; 0x30
    c388:	11a09005 	movne	r9, r5
    c38c:	13a0600a 	movne	r6, #10
    c390:	0a000054 	beq	c4e8 <Str_ParseNbr_Int32+0x230>
    c394:	e3a0b000 	mov	fp, #0
    c398:	e30f2d38 	movw	r2, #64824	; 0xfd38
    c39c:	e1a0800b 	mov	r8, fp
    c3a0:	e3402000 	movt	r2, #0
    c3a4:	e58d2000 	str	r2, [sp]
    c3a8:	e1a00004 	mov	r0, r4
    c3ac:	ebfffea9 	bl	be58 <ASCII_IsAlphaNum>
    c3b0:	e3500001 	cmp	r0, #1
    c3b4:	0a000019 	beq	c420 <Str_ParseNbr_Int32+0x168>
    c3b8:	e35b0001 	cmp	fp, #1
    c3bc:	e59d3004 	ldr	r3, [sp, #4]
    c3c0:	e59d2038 	ldr	r2, [sp, #56]	; 0x38
    c3c4:	03e08000 	mvneq	r8, #0
    c3c8:	e1550009 	cmp	r5, r9
    c3cc:	01a09007 	moveq	r9, r7
    c3d0:	e58a9000 	str	r9, [sl]
    c3d4:	e5c23000 	strb	r3, [r2]
    c3d8:	eaffffce 	b	c318 <Str_ParseNbr_Int32+0x60>
    c3dc:	e3590001 	cmp	r9, #1
    c3e0:	058d9004 	streq	r9, [sp, #4]
    c3e4:	05d54001 	ldrbeq	r4, [r5, #1]
    c3e8:	13a03001 	movne	r3, #1
    c3ec:	02855001 	addeq	r5, r5, #1
    c3f0:	158d3004 	strne	r3, [sp, #4]
    c3f4:	e3560008 	cmp	r6, #8
    c3f8:	1affffdd 	bne	c374 <Str_ParseNbr_Int32+0xbc>
    c3fc:	e3540030 	cmp	r4, #48	; 0x30
    c400:	1a000004 	bne	c418 <Str_ParseNbr_Int32+0x160>
    c404:	e2859001 	add	r9, r5, #1
    c408:	e5d54001 	ldrb	r4, [r5, #1]
    c40c:	eaffffe0 	b	c394 <Str_ParseNbr_Int32+0xdc>
    c410:	e3540030 	cmp	r4, #48	; 0x30
    c414:	0a000026 	beq	c4b4 <Str_ParseNbr_Int32+0x1fc>
    c418:	e1a09005 	mov	r9, r5
    c41c:	eaffffdc 	b	c394 <Str_ParseNbr_Int32+0xdc>
    c420:	e1a00004 	mov	r0, r4
    c424:	ebfffea0 	bl	beac <ASCII_IsDig>
    c428:	e3500001 	cmp	r0, #1
    c42c:	02444030 	subeq	r4, r4, #48	; 0x30
    c430:	06ef4074 	uxtbeq	r4, r4
    c434:	0a000005 	beq	c450 <Str_ParseNbr_Int32+0x198>
    c438:	e1a00004 	mov	r0, r4
    c43c:	ebfffe90 	bl	be84 <ASCII_IsLower>
    c440:	e3500001 	cmp	r0, #1
    c444:	02444057 	subeq	r4, r4, #87	; 0x57
    c448:	12444037 	subne	r4, r4, #55	; 0x37
    c44c:	e6ef4074 	uxtb	r4, r4
    c450:	e1560004 	cmp	r6, r4
    c454:	9affffd7 	bls	c3b8 <Str_ParseNbr_Int32+0x100>
    c458:	e35b0000 	cmp	fp, #0
    c45c:	1a000009 	bne	c488 <Str_ParseNbr_Int32+0x1d0>
    c460:	e59d2000 	ldr	r2, [sp]
    c464:	e7923106 	ldr	r3, [r2, r6, lsl #2]
    c468:	e1530008 	cmp	r3, r8
    c46c:	3a000005 	bcc	c488 <Str_ParseNbr_Int32+0x1d0>
    c470:	e0284896 	mla	r8, r6, r8, r4
    c474:	e1540008 	cmp	r4, r8
    c478:	93a0b000 	movls	fp, #0
    c47c:	83a0b001 	movhi	fp, #1
    c480:	e5f94001 	ldrb	r4, [r9, #1]!
    c484:	eaffffc7 	b	c3a8 <Str_ParseNbr_Int32+0xf0>
    c488:	e3a0b001 	mov	fp, #1
    c48c:	eafffffb 	b	c480 <Str_ParseNbr_Int32+0x1c8>
    c490:	e5d54001 	ldrb	r4, [r5, #1]
    c494:	e3a03000 	mov	r3, #0
    c498:	e2855001 	add	r5, r5, #1
    c49c:	e58d3004 	str	r3, [sp, #4]
    c4a0:	eaffffb1 	b	c36c <Str_ParseNbr_Int32+0xb4>
    c4a4:	e1a08000 	mov	r8, r0
    c4a8:	eaffff9a 	b	c318 <Str_ParseNbr_Int32+0x60>
    c4ac:	e1a05007 	mov	r5, r7
    c4b0:	eaffffa6 	b	c350 <Str_ParseNbr_Int32+0x98>
    c4b4:	e5d54001 	ldrb	r4, [r5, #1]
    c4b8:	e2859001 	add	r9, r5, #1
    c4bc:	e3540058 	cmp	r4, #88	; 0x58
    c4c0:	0a000001 	beq	c4cc <Str_ParseNbr_Int32+0x214>
    c4c4:	e3540078 	cmp	r4, #120	; 0x78
    c4c8:	1affffb1 	bne	c394 <Str_ParseNbr_Int32+0xdc>
    c4cc:	e5d50002 	ldrb	r0, [r5, #2]
    c4d0:	ebfffe7f 	bl	bed4 <ASCII_IsDigHex>
    c4d4:	e3500001 	cmp	r0, #1
    c4d8:	02859002 	addeq	r9, r5, #2
    c4dc:	15d54001 	ldrbne	r4, [r5, #1]
    c4e0:	05d54002 	ldrbeq	r4, [r5, #2]
    c4e4:	eaffffaa 	b	c394 <Str_ParseNbr_Int32+0xdc>
    c4e8:	e5d54001 	ldrb	r4, [r5, #1]
    c4ec:	e2859001 	add	r9, r5, #1
    c4f0:	e3540058 	cmp	r4, #88	; 0x58
    c4f4:	0a000002 	beq	c504 <Str_ParseNbr_Int32+0x24c>
    c4f8:	e3540078 	cmp	r4, #120	; 0x78
    c4fc:	13a06008 	movne	r6, #8
    c500:	1affffa3 	bne	c394 <Str_ParseNbr_Int32+0xdc>
    c504:	e5d50002 	ldrb	r0, [r5, #2]
    c508:	e3a06010 	mov	r6, #16
    c50c:	ebfffe70 	bl	bed4 <ASCII_IsDigHex>
    c510:	e3500001 	cmp	r0, #1
    c514:	02859002 	addeq	r9, r5, #2
    c518:	15d54001 	ldrbne	r4, [r5, #1]
    c51c:	05d54002 	ldrbeq	r4, [r5, #2]
    c520:	eaffff9b 	b	c394 <Str_ParseNbr_Int32+0xdc>

0000c524 <Str_FmtNbr_Int32>:
    c524:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    c528:	e24dd01c 	sub	sp, sp, #28
    c52c:	e1a05002 	mov	r5, r2
    c530:	e1a04000 	mov	r4, r0
    c534:	e59dc04c 	ldr	ip, [sp, #76]	; 0x4c
    c538:	e1a08001 	mov	r8, r1
    c53c:	e5dd2044 	ldrb	r2, [sp, #68]	; 0x44
    c540:	e35c0000 	cmp	ip, #0
    c544:	e58d3004 	str	r3, [sp, #4]
    c548:	e5dd7040 	ldrb	r7, [sp, #64]	; 0x40
    c54c:	e58d200c 	str	r2, [sp, #12]
    c550:	0a00009f 	beq	c7d4 <Str_FmtNbr_Int32+0x2b0>
    c554:	e2453002 	sub	r3, r5, #2
    c558:	e3530022 	cmp	r3, #34	; 0x22
    c55c:	83a06001 	movhi	r6, #1
    c560:	9a000074 	bls	c738 <Str_FmtNbr_Int32+0x214>
    c564:	e3570000 	cmp	r7, #0
    c568:	1a000076 	bne	c748 <Str_FmtNbr_Int32+0x224>
    c56c:	e3560000 	cmp	r6, #0
    c570:	1a000022 	bne	c600 <Str_FmtNbr_Int32+0xdc>
    c574:	e1540005 	cmp	r4, r5
    c578:	3a000098 	bcc	c7e0 <Str_FmtNbr_Int32+0x2bc>
    c57c:	e1a00004 	mov	r0, r4
    c580:	e3a0b001 	mov	fp, #1
    c584:	e1a01005 	mov	r1, r5
    c588:	e28bb001 	add	fp, fp, #1
    c58c:	eb000bdc 	bl	f504 <__aeabi_uidiv>
    c590:	e6efb07b 	uxtb	fp, fp
    c594:	e1500005 	cmp	r0, r5
    c598:	2afffff9 	bcs	c584 <Str_FmtNbr_Int32+0x60>
    c59c:	e1a0200b 	mov	r2, fp
    c5a0:	e59dc004 	ldr	ip, [sp, #4]
    c5a4:	e25c0001 	subs	r0, ip, #1
    c5a8:	e2703000 	rsbs	r3, r0, #0
    c5ac:	e0b33000 	adcs	r3, r3, r0
    c5b0:	e0822003 	add	r2, r2, r3
    c5b4:	e1580002 	cmp	r8, r2
    c5b8:	ba00000f 	blt	c5fc <Str_FmtNbr_Int32+0xd8>
    c5bc:	e15b0008 	cmp	fp, r8
    c5c0:	21a0b008 	movcs	fp, r8
    c5c4:	e3570000 	cmp	r7, #0
    c5c8:	0a00007c 	beq	c7c0 <Str_FmtNbr_Int32+0x29c>
    c5cc:	e06b2008 	rsb	r2, fp, r8
    c5d0:	e1a0a008 	mov	sl, r8
    c5d4:	e6ef2072 	uxtb	r2, r2
    c5d8:	e1530002 	cmp	r3, r2
    c5dc:	03a0c000 	moveq	ip, #0
    c5e0:	058dc010 	streq	ip, [sp, #16]
    c5e4:	0a000078 	beq	c7cc <Str_FmtNbr_Int32+0x2a8>
    c5e8:	e2571030 	subs	r1, r7, #48	; 0x30
    c5ec:	e271c000 	rsbs	ip, r1, #0
    c5f0:	e0bcc001 	adcs	ip, ip, r1
    c5f4:	e58dc010 	str	ip, [sp, #16]
    c5f8:	ea000073 	b	c7cc <Str_FmtNbr_Int32+0x2a8>
    c5fc:	e1a0b004 	mov	fp, r4
    c600:	e1a0a008 	mov	sl, r8
    c604:	e3a06001 	mov	r6, #1
    c608:	e5dd3048 	ldrb	r3, [sp, #72]	; 0x48
    c60c:	e59dc04c 	ldr	ip, [sp, #76]	; 0x4c
    c610:	e3530000 	cmp	r3, #0
    c614:	e08c300a 	add	r3, ip, sl
    c618:	13a01000 	movne	r1, #0
    c61c:	17cc100a 	strbne	r1, [ip, sl]
    c620:	e35a0000 	cmp	sl, #0
    c624:	e2439001 	sub	r9, r3, #1
    c628:	0a000032 	beq	c6f8 <Str_FmtNbr_Int32+0x1d4>
    c62c:	e24a3001 	sub	r3, sl, #1
    c630:	e3a02000 	mov	r2, #0
    c634:	e58d3014 	str	r3, [sp, #20]
    c638:	e1a03006 	mov	r3, r6
    c63c:	e58d2008 	str	r2, [sp, #8]
    c640:	e1a0600b 	mov	r6, fp
    c644:	e1a04002 	mov	r4, r2
    c648:	e1a0b00a 	mov	fp, sl
    c64c:	e3a0803f 	mov	r8, #63	; 0x3f
    c650:	e1a0a003 	mov	sl, r3
    c654:	ea000013 	b	c6a8 <Str_FmtNbr_Int32+0x184>
    c658:	e1a00006 	mov	r0, r6
    c65c:	e1a01005 	mov	r1, r5
    c660:	eb000c22 	bl	f6f0 <__aeabi_uidivmod>
    c664:	e6ef1071 	uxtb	r1, r1
    c668:	e3510009 	cmp	r1, #9
    c66c:	92811030 	addls	r1, r1, #48	; 0x30
    c670:	94491001 	strbls	r1, [r9], #-1
    c674:	9a000004 	bls	c68c <Str_FmtNbr_Int32+0x168>
    c678:	e59dc00c 	ldr	ip, [sp, #12]
    c67c:	e35c0001 	cmp	ip, #1
    c680:	12811037 	addne	r1, r1, #55	; 0x37
    c684:	02811057 	addeq	r1, r1, #87	; 0x57
    c688:	e4491001 	strb	r1, [r9], #-1
    c68c:	e1a00006 	mov	r0, r6
    c690:	e1a01005 	mov	r1, r5
    c694:	eb000b9a 	bl	f504 <__aeabi_uidiv>
    c698:	e1a06000 	mov	r6, r0
    c69c:	e2844001 	add	r4, r4, #1
    c6a0:	e15b0004 	cmp	fp, r4
    c6a4:	9a000012 	bls	c6f4 <Str_FmtNbr_Int32+0x1d0>
    c6a8:	e35a0000 	cmp	sl, #0
    c6ac:	14498001 	strbne	r8, [r9], #-1
    c6b0:	1afffff9 	bne	c69c <Str_FmtNbr_Int32+0x178>
    c6b4:	e2961000 	adds	r1, r6, #0
    c6b8:	13a01001 	movne	r1, #1
    c6bc:	e3540000 	cmp	r4, #0
    c6c0:	03811001 	orreq	r1, r1, #1
    c6c4:	e3510000 	cmp	r1, #0
    c6c8:	1affffe2 	bne	c658 <Str_FmtNbr_Int32+0x134>
    c6cc:	e59d2004 	ldr	r2, [sp, #4]
    c6d0:	e3520001 	cmp	r2, #1
    c6d4:	0a00000c 	beq	c70c <Str_FmtNbr_Int32+0x1e8>
    c6d8:	e3570000 	cmp	r7, #0
    c6dc:	e2844001 	add	r4, r4, #1
    c6e0:	14497001 	strbne	r7, [r9], #-1
    c6e4:	13a06000 	movne	r6, #0
    c6e8:	01a06007 	moveq	r6, r7
    c6ec:	e15b0004 	cmp	fp, r4
    c6f0:	8affffec 	bhi	c6a8 <Str_FmtNbr_Int32+0x184>
    c6f4:	e1a0600a 	mov	r6, sl
    c6f8:	e3560000 	cmp	r6, #0
    c6fc:	1a000034 	bne	c7d4 <Str_FmtNbr_Int32+0x2b0>
    c700:	e59d004c 	ldr	r0, [sp, #76]	; 0x4c
    c704:	e28dd01c 	add	sp, sp, #28
    c708:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    c70c:	e59d3008 	ldr	r3, [sp, #8]
    c710:	e59dc010 	ldr	ip, [sp, #16]
    c714:	e183100c 	orr	r1, r3, ip
    c718:	e31100ff 	tst	r1, #255	; 0xff
    c71c:	1a000021 	bne	c7a8 <Str_FmtNbr_Int32+0x284>
    c720:	e3a0302d 	mov	r3, #45	; 0x2d
    c724:	e3a0c001 	mov	ip, #1
    c728:	e4493001 	strb	r3, [r9], #-1
    c72c:	e3a06000 	mov	r6, #0
    c730:	e58dc008 	str	ip, [sp, #8]
    c734:	eaffffd8 	b	c69c <Str_FmtNbr_Int32+0x178>
    c738:	e2716001 	rsbs	r6, r1, #1
    c73c:	33a06000 	movcc	r6, #0
    c740:	e3570000 	cmp	r7, #0
    c744:	0affff88 	beq	c56c <Str_FmtNbr_Int32+0x48>
    c748:	e1a00007 	mov	r0, r7
    c74c:	ebfffdfe 	bl	bf4c <ASCII_IsPrint>
    c750:	e3500001 	cmp	r0, #1
    c754:	1affffa9 	bne	c600 <Str_FmtNbr_Int32+0xdc>
    c758:	e3570030 	cmp	r7, #48	; 0x30
    c75c:	0affff82 	beq	c56c <Str_FmtNbr_Int32+0x48>
    c760:	e59d200c 	ldr	r2, [sp, #12]
    c764:	e2473030 	sub	r3, r7, #48	; 0x30
    c768:	e3520001 	cmp	r2, #1
    c76c:	e6ef3073 	uxtb	r3, r3
    c770:	12472041 	subne	r2, r7, #65	; 0x41
    c774:	02472061 	subeq	r2, r7, #97	; 0x61
    c778:	e355000a 	cmp	r5, #10
    c77c:	91530005 	cmpls	r3, r5
    c780:	e6ef2072 	uxtb	r2, r2
    c784:	3affff9d 	bcc	c600 <Str_FmtNbr_Int32+0xdc>
    c788:	e355000a 	cmp	r5, #10
    c78c:	9affff76 	bls	c56c <Str_FmtNbr_Int32+0x48>
    c790:	e3530009 	cmp	r3, #9
    c794:	9affff99 	bls	c600 <Str_FmtNbr_Int32+0xdc>
    c798:	e245300a 	sub	r3, r5, #10
    c79c:	e1520003 	cmp	r2, r3
    c7a0:	3affff96 	bcc	c600 <Str_FmtNbr_Int32+0xdc>
    c7a4:	eaffff70 	b	c56c <Str_FmtNbr_Int32+0x48>
    c7a8:	e35c0000 	cmp	ip, #0
    c7ac:	0affffc9 	beq	c6d8 <Str_FmtNbr_Int32+0x1b4>
    c7b0:	e59d2014 	ldr	r2, [sp, #20]
    c7b4:	e1520004 	cmp	r2, r4
    c7b8:	1affffc6 	bne	c6d8 <Str_FmtNbr_Int32+0x1b4>
    c7bc:	eaffffd7 	b	c720 <Str_FmtNbr_Int32+0x1fc>
    c7c0:	e08b3003 	add	r3, fp, r3
    c7c4:	e58d7010 	str	r7, [sp, #16]
    c7c8:	e6efa073 	uxtb	sl, r3
    c7cc:	e1a0b004 	mov	fp, r4
    c7d0:	eaffff8c 	b	c608 <Str_FmtNbr_Int32+0xe4>
    c7d4:	e3a0c000 	mov	ip, #0
    c7d8:	e58dc04c 	str	ip, [sp, #76]	; 0x4c
    c7dc:	eaffffc7 	b	c700 <Str_FmtNbr_Int32+0x1dc>
    c7e0:	e3a02001 	mov	r2, #1
    c7e4:	e1a0b002 	mov	fp, r2
    c7e8:	eaffff6c 	b	c5a0 <Str_FmtNbr_Int32+0x7c>

0000c7ec <Str_Len>:
    c7ec:	e2503000 	subs	r3, r0, #0
    c7f0:	0a00000c 	beq	c828 <Str_Len+0x3c>
    c7f4:	e5d30000 	ldrb	r0, [r3]
    c7f8:	e3500000 	cmp	r0, #0
    c7fc:	012fff1e 	bxeq	lr
    c800:	e3a00000 	mov	r0, #0
    c804:	e3730001 	cmn	r3, #1
    c808:	e2800001 	add	r0, r0, #1
    c80c:	012fff1e 	bxeq	lr
    c810:	e5f32001 	ldrb	r2, [r3, #1]!
    c814:	e3520000 	cmp	r2, #0
    c818:	012fff1e 	bxeq	lr
    c81c:	e3700001 	cmn	r0, #1
    c820:	1afffff7 	bne	c804 <Str_Len+0x18>
    c824:	e12fff1e 	bx	lr
    c828:	e1a00003 	mov	r0, r3
    c82c:	e12fff1e 	bx	lr

0000c830 <Str_Len_N>:
    c830:	e2503000 	subs	r3, r0, #0
    c834:	0a00000e 	beq	c874 <Str_Len_N+0x44>
    c838:	e5d30000 	ldrb	r0, [r3]
    c83c:	e3500000 	cmp	r0, #0
    c840:	012fff1e 	bxeq	lr
    c844:	e3510000 	cmp	r1, #0
    c848:	0a00000b 	beq	c87c <Str_Len_N+0x4c>
    c84c:	e3a00000 	mov	r0, #0
    c850:	e3730001 	cmn	r3, #1
    c854:	e2800001 	add	r0, r0, #1
    c858:	012fff1e 	bxeq	lr
    c85c:	e5f32001 	ldrb	r2, [r3, #1]!
    c860:	e3520000 	cmp	r2, #0
    c864:	012fff1e 	bxeq	lr
    c868:	e1500001 	cmp	r0, r1
    c86c:	1afffff7 	bne	c850 <Str_Len_N+0x20>
    c870:	e12fff1e 	bx	lr
    c874:	e1a00003 	mov	r0, r3
    c878:	e12fff1e 	bx	lr
    c87c:	e1a00001 	mov	r0, r1
    c880:	e12fff1e 	bx	lr

0000c884 <Str_Copy_N>:
    c884:	e3500000 	cmp	r0, #0
    c888:	e92d0070 	push	{r4, r5, r6}
    c88c:	0a00001e 	beq	c90c <Str_Copy_N+0x88>
    c890:	e3510000 	cmp	r1, #0
    c894:	0a00001c 	beq	c90c <Str_Copy_N+0x88>
    c898:	e5d1c000 	ldrb	ip, [r1]
    c89c:	e35c0000 	cmp	ip, #0
    c8a0:	0a00001b 	beq	c914 <Str_Copy_N+0x90>
    c8a4:	e3520000 	cmp	r2, #0
    c8a8:	0a000015 	beq	c904 <Str_Copy_N+0x80>
    c8ac:	e2811001 	add	r1, r1, #1
    c8b0:	e1a03000 	mov	r3, r0
    c8b4:	e3a04000 	mov	r4, #0
    c8b8:	ea000004 	b	c8d0 <Str_Copy_N+0x4c>
    c8bc:	e4d1c001 	ldrb	ip, [r1], #1
    c8c0:	e35c0000 	cmp	ip, #0
    c8c4:	0a000008 	beq	c8ec <Str_Copy_N+0x68>
    c8c8:	e1540002 	cmp	r4, r2
    c8cc:	0a000006 	beq	c8ec <Str_Copy_N+0x68>
    c8d0:	e4c3c001 	strb	ip, [r3], #1
    c8d4:	e3530000 	cmp	r3, #0
    c8d8:	13510000 	cmpne	r1, #0
    c8dc:	e1a05001 	mov	r5, r1
    c8e0:	e2844001 	add	r4, r4, #1
    c8e4:	e1a06003 	mov	r6, r3
    c8e8:	1afffff3 	bne	c8bc <Str_Copy_N+0x38>
    c8ec:	e3530000 	cmp	r3, #0
    c8f0:	13550000 	cmpne	r5, #0
    c8f4:	0a000004 	beq	c90c <Str_Copy_N+0x88>
    c8f8:	e1520004 	cmp	r2, r4
    c8fc:	83a03000 	movhi	r3, #0
    c900:	85c63000 	strbhi	r3, [r6]
    c904:	e8bd0070 	pop	{r4, r5, r6}
    c908:	e12fff1e 	bx	lr
    c90c:	e3a00000 	mov	r0, #0
    c910:	eafffffb 	b	c904 <Str_Copy_N+0x80>
    c914:	e1a06000 	mov	r6, r0
    c918:	e1a0400c 	mov	r4, ip
    c91c:	eafffff5 	b	c8f8 <Str_Copy_N+0x74>

0000c920 <Str_Copy>:
    c920:	e3e02000 	mvn	r2, #0
    c924:	eaffffd6 	b	c884 <Str_Copy_N>

0000c928 <Str_Cat_N>:
    c928:	e3500000 	cmp	r0, #0
    c92c:	e92d0030 	push	{r4, r5}
    c930:	0a00000b 	beq	c964 <Str_Cat_N+0x3c>
    c934:	e3510000 	cmp	r1, #0
    c938:	0a000009 	beq	c964 <Str_Cat_N+0x3c>
    c93c:	e3520000 	cmp	r2, #0
    c940:	11a03000 	movne	r3, r0
    c944:	0a000007 	beq	c968 <Str_Cat_N+0x40>
    c948:	e1a0c003 	mov	ip, r3
    c94c:	e2833001 	add	r3, r3, #1
    c950:	e5dc4000 	ldrb	r4, [ip]
    c954:	e3540000 	cmp	r4, #0
    c958:	0a000004 	beq	c970 <Str_Cat_N+0x48>
    c95c:	e3530000 	cmp	r3, #0
    c960:	1afffff8 	bne	c948 <Str_Cat_N+0x20>
    c964:	e3a00000 	mov	r0, #0
    c968:	e8bd0030 	pop	{r4, r5}
    c96c:	e12fff1e 	bx	lr
    c970:	e35c0000 	cmp	ip, #0
    c974:	0afffffa 	beq	c964 <Str_Cat_N+0x3c>
    c978:	e5d14000 	ldrb	r4, [r1]
    c97c:	e3540000 	cmp	r4, #0
    c980:	0a000015 	beq	c9dc <Str_Cat_N+0xb4>
    c984:	e1a0300c 	mov	r3, ip
    c988:	e2811001 	add	r1, r1, #1
    c98c:	e08c2002 	add	r2, ip, r2
    c990:	ea000001 	b	c99c <Str_Cat_N+0x74>
    c994:	e1530002 	cmp	r3, r2
    c998:	0a000008 	beq	c9c0 <Str_Cat_N+0x98>
    c99c:	e4c34001 	strb	r4, [r3], #1
    c9a0:	e3530000 	cmp	r3, #0
    c9a4:	13510000 	cmpne	r1, #0
    c9a8:	e1a05001 	mov	r5, r1
    c9ac:	e1a0c003 	mov	ip, r3
    c9b0:	0a000002 	beq	c9c0 <Str_Cat_N+0x98>
    c9b4:	e4d14001 	ldrb	r4, [r1], #1
    c9b8:	e3540000 	cmp	r4, #0
    c9bc:	1afffff4 	bne	c994 <Str_Cat_N+0x6c>
    c9c0:	e35c0000 	cmp	ip, #0
    c9c4:	13550000 	cmpne	r5, #0
    c9c8:	13a05000 	movne	r5, #0
    c9cc:	03a05001 	moveq	r5, #1
    c9d0:	0affffe3 	beq	c964 <Str_Cat_N+0x3c>
    c9d4:	e5cc5000 	strb	r5, [ip]
    c9d8:	eaffffe2 	b	c968 <Str_Cat_N+0x40>
    c9dc:	e1a05001 	mov	r5, r1
    c9e0:	eafffff6 	b	c9c0 <Str_Cat_N+0x98>

0000c9e4 <Str_Cat>:
    c9e4:	e3e02000 	mvn	r2, #0
    c9e8:	eaffffce 	b	c928 <Str_Cat_N>

0000c9ec <Str_Cmp_N>:
    c9ec:	e3520000 	cmp	r2, #0
    c9f0:	e92d0030 	push	{r4, r5}
    c9f4:	0a000022 	beq	ca84 <Str_Cmp_N+0x98>
    c9f8:	e3500000 	cmp	r0, #0
    c9fc:	0a000029 	beq	caa8 <Str_Cmp_N+0xbc>
    ca00:	e3510000 	cmp	r1, #0
    ca04:	05d02000 	ldrbeq	r2, [r0]
    ca08:	0a00001d 	beq	ca84 <Str_Cmp_N+0x98>
    ca0c:	e5d15000 	ldrb	r5, [r1]
    ca10:	e2803001 	add	r3, r0, #1
    ca14:	e5d0c000 	ldrb	ip, [r0]
    ca18:	e2811001 	add	r1, r1, #1
    ca1c:	e15c0005 	cmp	ip, r5
    ca20:	1a000016 	bne	ca80 <Str_Cmp_N+0x94>
    ca24:	e35c0000 	cmp	ip, #0
    ca28:	0a000023 	beq	cabc <Str_Cmp_N+0xd0>
    ca2c:	e3510000 	cmp	r1, #0
    ca30:	13530000 	cmpne	r3, #0
    ca34:	0a000018 	beq	ca9c <Str_Cmp_N+0xb0>
    ca38:	e3a04000 	mov	r4, #0
    ca3c:	ea000008 	b	ca64 <Str_Cmp_N+0x78>
    ca40:	e35c0000 	cmp	ip, #0
    ca44:	0a00001c 	beq	cabc <Str_Cmp_N+0xd0>
    ca48:	e3510000 	cmp	r1, #0
    ca4c:	13530000 	cmpne	r3, #0
    ca50:	03a00000 	moveq	r0, #0
    ca54:	13a00001 	movne	r0, #1
    ca58:	0a00000c 	beq	ca90 <Str_Cmp_N+0xa4>
    ca5c:	e1540002 	cmp	r4, r2
    ca60:	0a000017 	beq	cac4 <Str_Cmp_N+0xd8>
    ca64:	e4d3c001 	ldrb	ip, [r3], #1
    ca68:	e2844001 	add	r4, r4, #1
    ca6c:	e4d15001 	ldrb	r5, [r1], #1
    ca70:	e15c0005 	cmp	ip, r5
    ca74:	0afffff1 	beq	ca40 <Str_Cmp_N+0x54>
    ca78:	e1520004 	cmp	r2, r4
    ca7c:	0a000010 	beq	cac4 <Str_Cmp_N+0xd8>
    ca80:	e065200c 	rsb	r2, r5, ip
    ca84:	e6bf0072 	sxth	r0, r2
    ca88:	e8bd0030 	pop	{r4, r5}
    ca8c:	e12fff1e 	bx	lr
    ca90:	e1520004 	cmp	r2, r4
    ca94:	01a02000 	moveq	r2, r0
    ca98:	0afffff9 	beq	ca84 <Str_Cmp_N+0x98>
    ca9c:	e3530000 	cmp	r3, #0
    caa0:	15d32000 	ldrbne	r2, [r3]
    caa4:	1afffff6 	bne	ca84 <Str_Cmp_N+0x98>
    caa8:	e3510000 	cmp	r1, #0
    caac:	01a02001 	moveq	r2, r1
    cab0:	15d12000 	ldrbne	r2, [r1]
    cab4:	12622000 	rsbne	r2, r2, #0
    cab8:	eafffff1 	b	ca84 <Str_Cmp_N+0x98>
    cabc:	e1a0200c 	mov	r2, ip
    cac0:	eaffffef 	b	ca84 <Str_Cmp_N+0x98>
    cac4:	e3a02000 	mov	r2, #0
    cac8:	eaffffed 	b	ca84 <Str_Cmp_N+0x98>

0000cacc <Str_Cmp>:
    cacc:	e3e02000 	mvn	r2, #0
    cad0:	eaffffc5 	b	c9ec <Str_Cmp_N>

0000cad4 <Str_CmpIgnoreCase_N>:
    cad4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    cad8:	e2528000 	subs	r8, r2, #0
    cadc:	e1a06000 	mov	r6, r0
    cae0:	e1a05001 	mov	r5, r1
    cae4:	0a00002d 	beq	cba0 <Str_CmpIgnoreCase_N+0xcc>
    cae8:	e3500000 	cmp	r0, #0
    caec:	0a000033 	beq	cbc0 <Str_CmpIgnoreCase_N+0xec>
    caf0:	e3510000 	cmp	r1, #0
    caf4:	e5d00000 	ldrb	r0, [r0]
    caf8:	0a00002e 	beq	cbb8 <Str_CmpIgnoreCase_N+0xe4>
    cafc:	ebfffd31 	bl	bfc8 <ASCII_ToLower>
    cb00:	e2864001 	add	r4, r6, #1
    cb04:	e2855001 	add	r5, r5, #1
    cb08:	e1a07000 	mov	r7, r0
    cb0c:	e5550001 	ldrb	r0, [r5, #-1]
    cb10:	ebfffd2c 	bl	bfc8 <ASCII_ToLower>
    cb14:	e1570000 	cmp	r7, r0
    cb18:	1a000019 	bne	cb84 <Str_CmpIgnoreCase_N+0xb0>
    cb1c:	e5d63000 	ldrb	r3, [r6]
    cb20:	e3530000 	cmp	r3, #0
    cb24:	0a00001b 	beq	cb98 <Str_CmpIgnoreCase_N+0xc4>
    cb28:	e3550000 	cmp	r5, #0
    cb2c:	13540000 	cmpne	r4, #0
    cb30:	0a000018 	beq	cb98 <Str_CmpIgnoreCase_N+0xc4>
    cb34:	e3a06000 	mov	r6, #0
    cb38:	ea000007 	b	cb5c <Str_CmpIgnoreCase_N+0x88>
    cb3c:	e5543001 	ldrb	r3, [r4, #-1]
    cb40:	e3530000 	cmp	r3, #0
    cb44:	0a000011 	beq	cb90 <Str_CmpIgnoreCase_N+0xbc>
    cb48:	e3550000 	cmp	r5, #0
    cb4c:	13540000 	cmpne	r4, #0
    cb50:	0a00000e 	beq	cb90 <Str_CmpIgnoreCase_N+0xbc>
    cb54:	e1560008 	cmp	r6, r8
    cb58:	0a000010 	beq	cba0 <Str_CmpIgnoreCase_N+0xcc>
    cb5c:	e4d40001 	ldrb	r0, [r4], #1
    cb60:	e2866001 	add	r6, r6, #1
    cb64:	ebfffd17 	bl	bfc8 <ASCII_ToLower>
    cb68:	e1a07000 	mov	r7, r0
    cb6c:	e4d50001 	ldrb	r0, [r5], #1
    cb70:	ebfffd14 	bl	bfc8 <ASCII_ToLower>
    cb74:	e1570000 	cmp	r7, r0
    cb78:	0affffef 	beq	cb3c <Str_CmpIgnoreCase_N+0x68>
    cb7c:	e1580006 	cmp	r8, r6
    cb80:	0a000006 	beq	cba0 <Str_CmpIgnoreCase_N+0xcc>
    cb84:	e0600007 	rsb	r0, r0, r7
    cb88:	e6bf0070 	sxth	r0, r0
    cb8c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    cb90:	e1580006 	cmp	r8, r6
    cb94:	0a000001 	beq	cba0 <Str_CmpIgnoreCase_N+0xcc>
    cb98:	e3570000 	cmp	r7, #0
    cb9c:	1a000002 	bne	cbac <Str_CmpIgnoreCase_N+0xd8>
    cba0:	e3a00000 	mov	r0, #0
    cba4:	e6bf0070 	sxth	r0, r0
    cba8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    cbac:	e3540000 	cmp	r4, #0
    cbb0:	15d40000 	ldrbne	r0, [r4]
    cbb4:	0a000001 	beq	cbc0 <Str_CmpIgnoreCase_N+0xec>
    cbb8:	ebfffd02 	bl	bfc8 <ASCII_ToLower>
    cbbc:	eafffff8 	b	cba4 <Str_CmpIgnoreCase_N+0xd0>
    cbc0:	e3550000 	cmp	r5, #0
    cbc4:	0afffff5 	beq	cba0 <Str_CmpIgnoreCase_N+0xcc>
    cbc8:	e5d50000 	ldrb	r0, [r5]
    cbcc:	ebfffcfd 	bl	bfc8 <ASCII_ToLower>
    cbd0:	e2600000 	rsb	r0, r0, #0
    cbd4:	eafffff2 	b	cba4 <Str_CmpIgnoreCase_N+0xd0>

0000cbd8 <Str_CmpIgnoreCase>:
    cbd8:	e3e02000 	mvn	r2, #0
    cbdc:	eaffffbc 	b	cad4 <Str_CmpIgnoreCase_N>

0000cbe0 <Str_Char_N>:
    cbe0:	e3500000 	cmp	r0, #0
    cbe4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    cbe8:	0a00000e 	beq	cc28 <Str_Char_N+0x48>
    cbec:	e3510000 	cmp	r1, #0
    cbf0:	0a00000c 	beq	cc28 <Str_Char_N+0x48>
    cbf4:	e1a03000 	mov	r3, r0
    cbf8:	e3a0c000 	mov	ip, #0
    cbfc:	e1a00003 	mov	r0, r3
    cc00:	e4d34001 	ldrb	r4, [r3], #1
    cc04:	e3540000 	cmp	r4, #0
    cc08:	0a000009 	beq	cc34 <Str_Char_N+0x54>
    cc0c:	e1540002 	cmp	r4, r2
    cc10:	0a00000c 	beq	cc48 <Str_Char_N+0x68>
    cc14:	e15c0001 	cmp	ip, r1
    cc18:	e28cc001 	add	ip, ip, #1
    cc1c:	0a000001 	beq	cc28 <Str_Char_N+0x48>
    cc20:	e3530000 	cmp	r3, #0
    cc24:	1afffff4 	bne	cbfc <Str_Char_N+0x1c>
    cc28:	e3a00000 	mov	r0, #0
    cc2c:	e8bd0010 	ldmfd	sp!, {r4}
    cc30:	e12fff1e 	bx	lr
    cc34:	e151000c 	cmp	r1, ip
    cc38:	9afffffa 	bls	cc28 <Str_Char_N+0x48>
    cc3c:	e3520000 	cmp	r2, #0
    cc40:	0afffff9 	beq	cc2c <Str_Char_N+0x4c>
    cc44:	eafffff7 	b	cc28 <Str_Char_N+0x48>
    cc48:	e151000c 	cmp	r1, ip
    cc4c:	8afffff6 	bhi	cc2c <Str_Char_N+0x4c>
    cc50:	eafffff4 	b	cc28 <Str_Char_N+0x48>

0000cc54 <Str_Char>:
    cc54:	e1a02001 	mov	r2, r1
    cc58:	e3e01000 	mvn	r1, #0
    cc5c:	eaffffdf 	b	cbe0 <Str_Char_N>

0000cc60 <Str_Char_Last_N>:
    cc60:	e92d0030 	push	{r4, r5}
    cc64:	e2505000 	subs	r5, r0, #0
    cc68:	0a000023 	beq	ccfc <Str_Char_Last_N+0x9c>
    cc6c:	e3510000 	cmp	r1, #0
    cc70:	0a00001f 	beq	ccf4 <Str_Char_Last_N+0x94>
    cc74:	e2410001 	sub	r0, r1, #1
    cc78:	e1a0c005 	mov	ip, r5
    cc7c:	e3a03000 	mov	r3, #0
    cc80:	e4dc4001 	ldrb	r4, [ip], #1
    cc84:	e3540000 	cmp	r4, #0
    cc88:	0a000004 	beq	cca0 <Str_Char_Last_N+0x40>
    cc8c:	e1500003 	cmp	r0, r3
    cc90:	0a000002 	beq	cca0 <Str_Char_Last_N+0x40>
    cc94:	e35c0000 	cmp	ip, #0
    cc98:	e2833001 	add	r3, r3, #1
    cc9c:	1afffff7 	bne	cc80 <Str_Char_Last_N+0x20>
    cca0:	e0950003 	adds	r0, r5, r3
    cca4:	0a000010 	beq	ccec <Str_Char_Last_N+0x8c>
    cca8:	e1550000 	cmp	r5, r0
    ccac:	0a00000b 	beq	cce0 <Str_Char_Last_N+0x80>
    ccb0:	e5d03000 	ldrb	r3, [r0]
    ccb4:	e1530002 	cmp	r3, r2
    ccb8:	0a00000b 	beq	ccec <Str_Char_Last_N+0x8c>
    ccbc:	e2403001 	sub	r3, r0, #1
    ccc0:	ea000002 	b	ccd0 <Str_Char_Last_N+0x70>
    ccc4:	e5d01000 	ldrb	r1, [r0]
    ccc8:	e1510002 	cmp	r1, r2
    cccc:	0a000006 	beq	ccec <Str_Char_Last_N+0x8c>
    ccd0:	e1530005 	cmp	r3, r5
    ccd4:	e1a00003 	mov	r0, r3
    ccd8:	e2433001 	sub	r3, r3, #1
    ccdc:	1afffff8 	bne	ccc4 <Str_Char_Last_N+0x64>
    cce0:	e5d03000 	ldrb	r3, [r0]
    cce4:	e1530002 	cmp	r3, r2
    cce8:	13a00000 	movne	r0, #0
    ccec:	e8bd0030 	pop	{r4, r5}
    ccf0:	e12fff1e 	bx	lr
    ccf4:	e1a00001 	mov	r0, r1
    ccf8:	eafffffb 	b	ccec <Str_Char_Last_N+0x8c>
    ccfc:	e1a00005 	mov	r0, r5
    cd00:	eafffff9 	b	ccec <Str_Char_Last_N+0x8c>

0000cd04 <Str_Char_Last>:
    cd04:	e1a02001 	mov	r2, r1
    cd08:	e3e01000 	mvn	r1, #0
    cd0c:	eaffffd3 	b	cc60 <Str_Char_Last_N>

0000cd10 <Str_Char_Replace>:
    cd10:	e3500000 	cmp	r0, #0
    cd14:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    cd18:	0a00000b 	beq	cd4c <Str_Char_Replace+0x3c>
    cd1c:	e2803001 	add	r3, r0, #1
    cd20:	e553c001 	ldrb	ip, [r3, #-1]
    cd24:	e2834001 	add	r4, r3, #1
    cd28:	e35c0000 	cmp	ip, #0
    cd2c:	0a000006 	beq	cd4c <Str_Char_Replace+0x3c>
    cd30:	e1530000 	cmp	r3, r0
    cd34:	0a000004 	beq	cd4c <Str_Char_Replace+0x3c>
    cd38:	e151000c 	cmp	r1, ip
    cd3c:	05432001 	strbeq	r2, [r3, #-1]
    cd40:	e3530000 	cmp	r3, #0
    cd44:	e1a03004 	mov	r3, r4
    cd48:	1afffff4 	bne	cd20 <Str_Char_Replace+0x10>
    cd4c:	e8bd0010 	ldmfd	sp!, {r4}
    cd50:	e12fff1e 	bx	lr

0000cd54 <Str_Char_Replace_N>:
    cd54:	e3500000 	cmp	r0, #0
    cd58:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    cd5c:	0a00000c 	beq	cd94 <Str_Char_Replace_N+0x40>
    cd60:	e3530000 	cmp	r3, #0
    cd64:	0a00000c 	beq	cd9c <Str_Char_Replace_N+0x48>
    cd68:	e1a0c000 	mov	ip, r0
    cd6c:	e4dc4001 	ldrb	r4, [ip], #1
    cd70:	e3540000 	cmp	r4, #0
    cd74:	0a000006 	beq	cd94 <Str_Char_Replace_N+0x40>
    cd78:	e3530000 	cmp	r3, #0
    cd7c:	e2433001 	sub	r3, r3, #1
    cd80:	0a000003 	beq	cd94 <Str_Char_Replace_N+0x40>
    cd84:	e1540001 	cmp	r4, r1
    cd88:	054c2001 	strbeq	r2, [ip, #-1]
    cd8c:	e35c0000 	cmp	ip, #0
    cd90:	1afffff5 	bne	cd6c <Str_Char_Replace_N+0x18>
    cd94:	e8bd0010 	ldmfd	sp!, {r4}
    cd98:	e12fff1e 	bx	lr
    cd9c:	e1a00003 	mov	r0, r3
    cda0:	eafffffb 	b	cd94 <Str_Char_Replace_N+0x40>

0000cda4 <Str_Str_N>:
    cda4:	e92d45f8 	push	{r3, r4, r5, r6, r7, r8, sl, lr}
    cda8:	e2506000 	subs	r6, r0, #0
    cdac:	e1a07001 	mov	r7, r1
    cdb0:	0a000030 	beq	ce78 <Str_Str_N+0xd4>
    cdb4:	e3510000 	cmp	r1, #0
    cdb8:	0a000032 	beq	ce88 <Str_Str_N+0xe4>
    cdbc:	e3520000 	cmp	r2, #0
    cdc0:	0a00002e 	beq	ce80 <Str_Str_N+0xdc>
    cdc4:	e3720001 	cmn	r2, #1
    cdc8:	e1a05006 	mov	r5, r6
    cdcc:	12821001 	addne	r1, r2, #1
    cdd0:	e1a0c006 	mov	ip, r6
    cdd4:	01a01002 	moveq	r1, r2
    cdd8:	e3a03000 	mov	r3, #0
    cddc:	e4dc4001 	ldrb	r4, [ip], #1
    cde0:	e3540000 	cmp	r4, #0
    cde4:	0a000004 	beq	cdfc <Str_Str_N+0x58>
    cde8:	e1530002 	cmp	r3, r2
    cdec:	0a000002 	beq	cdfc <Str_Str_N+0x58>
    cdf0:	e35c0000 	cmp	ip, #0
    cdf4:	e2833001 	add	r3, r3, #1
    cdf8:	1afffff7 	bne	cddc <Str_Str_N+0x38>
    cdfc:	e1a02007 	mov	r2, r7
    ce00:	e3a04000 	mov	r4, #0
    ce04:	e4d2c001 	ldrb	ip, [r2], #1
    ce08:	e35c0000 	cmp	ip, #0
    ce0c:	0a000004 	beq	ce24 <Str_Str_N+0x80>
    ce10:	e1540001 	cmp	r4, r1
    ce14:	0a000002 	beq	ce24 <Str_Str_N+0x80>
    ce18:	e3520000 	cmp	r2, #0
    ce1c:	e2844001 	add	r4, r4, #1
    ce20:	1afffff7 	bne	ce04 <Str_Str_N+0x60>
    ce24:	e3540000 	cmp	r4, #0
    ce28:	0a000012 	beq	ce78 <Str_Str_N+0xd4>
    ce2c:	e1530004 	cmp	r3, r4
    ce30:	3a00000f 	bcc	ce74 <Str_Str_N+0xd0>
    ce34:	e0966003 	adds	r6, r6, r3
    ce38:	0a00000e 	beq	ce78 <Str_Str_N+0xd4>
    ce3c:	e0976004 	adds	r6, r7, r4
    ce40:	0a00000c 	beq	ce78 <Str_Str_N+0xd4>
    ce44:	e064a003 	rsb	sl, r4, r3
    ce48:	e3a08000 	mov	r8, #0
    ce4c:	e0886005 	add	r6, r8, r5
    ce50:	e1a01007 	mov	r1, r7
    ce54:	e1a02004 	mov	r2, r4
    ce58:	e2888001 	add	r8, r8, #1
    ce5c:	e1a00006 	mov	r0, r6
    ce60:	ebfffee1 	bl	c9ec <Str_Cmp_N>
    ce64:	e3500000 	cmp	r0, #0
    ce68:	0a000002 	beq	ce78 <Str_Str_N+0xd4>
    ce6c:	e15a0008 	cmp	sl, r8
    ce70:	2afffff5 	bcs	ce4c <Str_Str_N+0xa8>
    ce74:	e3a06000 	mov	r6, #0
    ce78:	e1a00006 	mov	r0, r6
    ce7c:	e8bd85f8 	pop	{r3, r4, r5, r6, r7, r8, sl, pc}
    ce80:	e1a06002 	mov	r6, r2
    ce84:	eafffffb 	b	ce78 <Str_Str_N+0xd4>
    ce88:	e1a06001 	mov	r6, r1
    ce8c:	eafffff9 	b	ce78 <Str_Str_N+0xd4>

0000ce90 <Str_Str>:
    ce90:	e3e02000 	mvn	r2, #0
    ce94:	eaffffc2 	b	cda4 <Str_Str_N>

0000ce98 <Str_FmtNbr_Int32U>:
    ce98:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    ce9c:	e24dd014 	sub	sp, sp, #20
    cea0:	e5ddc018 	ldrb	ip, [sp, #24]
    cea4:	e58d3000 	str	r3, [sp]
    cea8:	e3a03000 	mov	r3, #0
    ceac:	e58dc004 	str	ip, [sp, #4]
    ceb0:	e5ddc01c 	ldrb	ip, [sp, #28]
    ceb4:	e58dc008 	str	ip, [sp, #8]
    ceb8:	e59dc020 	ldr	ip, [sp, #32]
    cebc:	e58dc00c 	str	ip, [sp, #12]
    cec0:	ebfffd97 	bl	c524 <Str_FmtNbr_Int32>
    cec4:	e28dd014 	add	sp, sp, #20
    cec8:	e8bd8000 	ldmfd	sp!, {pc}

0000cecc <Str_FmtNbr_Int32S>:
    cecc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    ced0:	e24dd014 	sub	sp, sp, #20
    ced4:	e3500000 	cmp	r0, #0
    ced8:	e5ddc018 	ldrb	ip, [sp, #24]
    cedc:	b2600000 	rsblt	r0, r0, #0
    cee0:	b3a0e001 	movlt	lr, #1
    cee4:	a3a0e000 	movge	lr, #0
    cee8:	e58d3000 	str	r3, [sp]
    ceec:	e1a0300e 	mov	r3, lr
    cef0:	e58dc004 	str	ip, [sp, #4]
    cef4:	e5ddc01c 	ldrb	ip, [sp, #28]
    cef8:	e58dc008 	str	ip, [sp, #8]
    cefc:	e59dc020 	ldr	ip, [sp, #32]
    cf00:	e58dc00c 	str	ip, [sp, #12]
    cf04:	ebfffd86 	bl	c524 <Str_FmtNbr_Int32>
    cf08:	e28dd014 	add	sp, sp, #20
    cf0c:	e8bd8000 	ldmfd	sp!, {pc}

0000cf10 <Str_ParseNbr_Int32U>:
    cf10:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    cf14:	e24dd00c 	sub	sp, sp, #12
    cf18:	e3a03000 	mov	r3, #0
    cf1c:	e58d3000 	str	r3, [sp]
    cf20:	ebfffce4 	bl	c2b8 <Str_ParseNbr_Int32>
    cf24:	e28dd00c 	add	sp, sp, #12
    cf28:	e8bd8000 	ldmfd	sp!, {pc}

0000cf2c <Str_ParseNbr_Int32S>:
    cf2c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    cf30:	e24dd014 	sub	sp, sp, #20
    cf34:	e3a03001 	mov	r3, #1
    cf38:	e28dc00f 	add	ip, sp, #15
    cf3c:	e58dc000 	str	ip, [sp]
    cf40:	ebfffcdc 	bl	c2b8 <Str_ParseNbr_Int32>
    cf44:	e5dd300f 	ldrb	r3, [sp, #15]
    cf48:	e3530000 	cmp	r3, #0
    cf4c:	1a000003 	bne	cf60 <Str_ParseNbr_Int32S+0x34>
    cf50:	e3500000 	cmp	r0, #0
    cf54:	b3e00102 	mvnlt	r0, #-2147483648	; 0x80000000
    cf58:	e28dd014 	add	sp, sp, #20
    cf5c:	e8bd8000 	ldmfd	sp!, {pc}
    cf60:	e3500000 	cmp	r0, #0
    cf64:	a2600000 	rsbge	r0, r0, #0
    cf68:	b3a00102 	movlt	r0, #-2147483648	; 0x80000000
    cf6c:	eafffff9 	b	cf58 <Str_ParseNbr_Int32S+0x2c>

0000cf70 <CSP_GPIO_Init>:
    cf70:	e12fff1e 	bx	lr

0000cf74 <CSP_GPIO_Cfg>:
    cf74:	e3a00001 	mov	r0, #1
    cf78:	e12fff1e 	bx	lr

0000cf7c <CSP_GPIO_BitClr>:
    cf7c:	e12fff1e 	bx	lr

0000cf80 <CSP_GPIO_BitSet>:
    cf80:	e12fff1e 	bx	lr

0000cf84 <CSP_GPIO_BitToggle>:
    cf84:	e12fff1e 	bx	lr

0000cf88 <CSP_GPIO_Rd>:
    cf88:	e3a00000 	mov	r0, #0
    cf8c:	e12fff1e 	bx	lr

0000cf90 <CSP_GPIO_Wr>:
    cf90:	e12fff1e 	bx	lr

0000cf94 <CSP_GPIO_IntClr>:
    cf94:	e3a00000 	mov	r0, #0
    cf98:	e12fff1e 	bx	lr

0000cf9c <CSP_GPIO_IntStatGet>:
    cf9c:	e3a00000 	mov	r0, #0
    cfa0:	e12fff1e 	bx	lr

0000cfa4 <CSP_IntClr>:
    cfa4:	ea000324 	b	dc3c <guest_CSP_IntClr>

0000cfa8 <CSP_IntDis>:
    cfa8:	e1a022a1 	lsr	r2, r1, #5
    cfac:	e3a03d46 	mov	r3, #4480	; 0x1180
    cfb0:	e34f38f0 	movt	r3, #63728	; 0xf8f0
    cfb4:	e201101f 	and	r1, r1, #31
    cfb8:	e3a00001 	mov	r0, #1
    cfbc:	e1a01110 	lsl	r1, r0, r1
    cfc0:	e7831102 	str	r1, [r3, r2, lsl #2]
    cfc4:	e12fff1e 	bx	lr

0000cfc8 <CSP_IntDisAll>:
    cfc8:	e3a03a01 	mov	r3, #4096	; 0x1000
    cfcc:	e34f38f0 	movt	r3, #63728	; 0xf8f0
    cfd0:	e5932000 	ldr	r2, [r3]
    cfd4:	e3c22001 	bic	r2, r2, #1
    cfd8:	e5832000 	str	r2, [r3]
    cfdc:	e12fff1e 	bx	lr

0000cfe0 <CSP_IntEn>:
    cfe0:	e1a022a1 	lsr	r2, r1, #5
    cfe4:	e3a03c11 	mov	r3, #4352	; 0x1100
    cfe8:	e34f38f0 	movt	r3, #63728	; 0xf8f0
    cfec:	e201101f 	and	r1, r1, #31
    cff0:	e3a00001 	mov	r0, #1
    cff4:	e1a01110 	lsl	r1, r0, r1
    cff8:	e7831102 	str	r1, [r3, r2, lsl #2]
    cffc:	e12fff1e 	bx	lr

0000d000 <CSP_IntInit>:
    d000:	e92d4070 	push	{r4, r5, r6, lr}
    d004:	e3006688 	movw	r6, #1672	; 0x688
    d008:	e3406001 	movt	r6, #1
    d00c:	e3a04000 	mov	r4, #0
    d010:	eb000136 	bl	d4f0 <CPU_SR_Save>
    d014:	e1a05000 	mov	r5, r0
    d018:	e0860184 	add	r0, r6, r4, lsl #3
    d01c:	eb000126 	bl	d4bc <CSP_IntVectClr>
    d020:	e2844001 	add	r4, r4, #1
    d024:	e1a00005 	mov	r0, r5
    d028:	eb000143 	bl	d53c <CPU_SR_Restore>
    d02c:	e3540c01 	cmp	r4, #256	; 0x100
    d030:	1afffff6 	bne	d010 <CSP_IntInit+0x10>
    d034:	e8bd8070 	pop	{r4, r5, r6, pc}

0000d038 <CSP_IntSrcCfg>:
    d038:	e3500000 	cmp	r0, #0
    d03c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    d040:	13a00000 	movne	r0, #0
    d044:	1a000018 	bne	d0ac <CSP_IntSrcCfg+0x74>
    d048:	e35100ff 	cmp	r1, #255	; 0xff
    d04c:	8a000016 	bhi	d0ac <CSP_IntSrcCfg+0x74>
    d050:	e242c010 	sub	ip, r2, #16
    d054:	e35c00ef 	cmp	ip, #239	; 0xef
    d058:	8a000013 	bhi	d0ac <CSP_IntSrcCfg+0x74>
    d05c:	e2014003 	and	r4, r1, #3
    d060:	e1a0c121 	lsr	ip, r1, #2
    d064:	e3a00b05 	mov	r0, #5120	; 0x1400
    d068:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    d06c:	e3530001 	cmp	r3, #1
    d070:	e1a03184 	lsl	r3, r4, #3
    d074:	e1a02312 	lsl	r2, r2, r3
    d078:	e78c2000 	str	r2, [ip, r0]
    d07c:	e1a02221 	lsr	r2, r1, #4
    d080:	e201100f 	and	r1, r1, #15
    d084:	e3a03b07 	mov	r3, #7168	; 0x1c00
    d088:	e34f38f0 	movt	r3, #63728	; 0xf8f0
    d08c:	e3a0c001 	mov	ip, #1
    d090:	e1a01c11 	lsl	r1, r1, ip
    d094:	e7924003 	ldr	r4, [r2, r3]
    d098:	e081100c 	add	r1, r1, ip
    d09c:	e1a0000c 	mov	r0, ip
    d0a0:	91c4c11c 	bicls	ip, r4, ip, lsl r1
    d0a4:	8184c11c 	orrhi	ip, r4, ip, lsl r1
    d0a8:	e782c003 	str	ip, [r2, r3]
    d0ac:	e8bd0010 	ldmfd	sp!, {r4}
    d0b0:	e12fff1e 	bx	lr

0000d0b4 <CSP_IntVectReg>:
    d0b4:	e3500000 	cmp	r0, #0
    d0b8:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    d0bc:	e1a04001 	mov	r4, r1
    d0c0:	e1a06002 	mov	r6, r2
    d0c4:	e1a05003 	mov	r5, r3
    d0c8:	1a00000d 	bne	d104 <CSP_IntVectReg+0x50>
    d0cc:	e35100ff 	cmp	r1, #255	; 0xff
    d0d0:	88bd80f8 	pophi	{r3, r4, r5, r6, r7, pc}
    d0d4:	eb000105 	bl	d4f0 <CPU_SR_Save>
    d0d8:	e1a01006 	mov	r1, r6
    d0dc:	e1a02005 	mov	r2, r5
    d0e0:	e1a07000 	mov	r7, r0
    d0e4:	e3000688 	movw	r0, #1672	; 0x688
    d0e8:	e3400001 	movt	r0, #1
    d0ec:	e0800184 	add	r0, r0, r4, lsl #3
    d0f0:	eb0000f5 	bl	d4cc <CSP_IntVectSet>
    d0f4:	e1a00007 	mov	r0, r7
    d0f8:	eb00010f 	bl	d53c <CPU_SR_Restore>
    d0fc:	e3a00001 	mov	r0, #1
    d100:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    d104:	e3a00000 	mov	r0, #0
    d108:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

0000d10c <CSP_IntVectUnreg>:
    d10c:	e3500000 	cmp	r0, #0
    d110:	e92d4038 	push	{r3, r4, r5, lr}
    d114:	e1a04001 	mov	r4, r1
    d118:	1a00000b 	bne	d14c <CSP_IntVectUnreg+0x40>
    d11c:	e35100ff 	cmp	r1, #255	; 0xff
    d120:	88bd8038 	pophi	{r3, r4, r5, pc}
    d124:	eb0000f1 	bl	d4f0 <CPU_SR_Save>
    d128:	e1a05000 	mov	r5, r0
    d12c:	e3000688 	movw	r0, #1672	; 0x688
    d130:	e3400001 	movt	r0, #1
    d134:	e0800184 	add	r0, r0, r4, lsl #3
    d138:	eb0000df 	bl	d4bc <CSP_IntVectClr>
    d13c:	e1a00005 	mov	r0, r5
    d140:	eb0000fd 	bl	d53c <CPU_SR_Restore>
    d144:	e3a00001 	mov	r0, #1
    d148:	e8bd8038 	pop	{r3, r4, r5, pc}
    d14c:	e3a00000 	mov	r0, #0
    d150:	e8bd8038 	pop	{r3, r4, r5, pc}

0000d154 <CSP_IntHandlerSrc>:
    d154:	e35000ff 	cmp	r0, #255	; 0xff
    d158:	e92d4010 	push	{r4, lr}
    d15c:	e1a04000 	mov	r4, r0
    d160:	e24dd008 	sub	sp, sp, #8
    d164:	9a000001 	bls	d170 <CSP_IntHandlerSrc+0x1c>
    d168:	e28dd008 	add	sp, sp, #8
    d16c:	e8bd8010 	pop	{r4, pc}
    d170:	e3003688 	movw	r3, #1672	; 0x688
    d174:	e3403001 	movt	r3, #1
    d178:	e0832180 	add	r2, r3, r0, lsl #3
    d17c:	e8920003 	ldm	r2, {r0, r1}
    d180:	e88d0003 	stm	sp, {r0, r1}
    d184:	e1a0000d 	mov	r0, sp
    d188:	eb0000d1 	bl	d4d4 <CSP_IntVectDeref>
    d18c:	e3a00000 	mov	r0, #0
    d190:	e1a01004 	mov	r1, r4
    d194:	eb0002a8 	bl	dc3c <guest_CSP_IntClr>
    d198:	eafffff2 	b	d168 <CSP_IntHandlerSrc+0x14>

0000d19c <CSP_IntHandler>:
    d19c:	e12fff1e 	bx	lr

0000d1a0 <CSP_PM_Init>:
    d1a0:	e12fff1e 	bx	lr

0000d1a4 <CSP_PM_CPU_ClkFreqGet>:
    d1a4:	e3040355 	movw	r0, #17237	; 0x4355
    d1a8:	e34103de 	movt	r0, #5086	; 0x13de
    d1ac:	e12fff1e 	bx	lr

0000d1b0 <CSP_PM_PerClkCfg>:
    d1b0:	e3a00001 	mov	r0, #1
    d1b4:	e12fff1e 	bx	lr

0000d1b8 <CSP_PM_PerClkEn>:
    d1b8:	e3500016 	cmp	r0, #22
    d1bc:	93043fff 	movwls	r3, #20479	; 0x4fff
    d1c0:	934f3fa0 	movtls	r3, #65440	; 0xffa0
    d1c4:	95132f7f 	ldrls	r2, [r3, #-3967]	; 0xfffff081
    d1c8:	91800002 	orrls	r0, r0, r2
    d1cc:	95030f7f 	strls	r0, [r3, #-3967]	; 0xfffff081
    d1d0:	e12fff1e 	bx	lr

0000d1d4 <CSP_PM_PerClkDis>:
    d1d4:	e3500016 	cmp	r0, #22
    d1d8:	93043fff 	movwls	r3, #20479	; 0x4fff
    d1dc:	934f3fa0 	movtls	r3, #65440	; 0xffa0
    d1e0:	95132f7f 	ldrls	r2, [r3, #-3967]	; 0xfffff081
    d1e4:	91c20000 	bicls	r0, r2, r0
    d1e8:	95030f7f 	strls	r0, [r3, #-3967]	; 0xfffff081
    d1ec:	e12fff1e 	bx	lr

0000d1f0 <CSP_PM_PerClkFreqGet>:
    d1f0:	e3500015 	cmp	r0, #21
    d1f4:	979ff100 	ldrls	pc, [pc, r0, lsl #2]
    d1f8:	ea000024 	b	d290 <CSP_PM_PerClkFreqGet+0xa0>
    d1fc:	0000d2c8 	andeq	sp, r0, r8, asr #5
    d200:	0000d2bc 			; <UNDEFINED> instruction: 0x0000d2bc
    d204:	0000d2a4 	andeq	sp, r0, r4, lsr #5
    d208:	0000d260 	andeq	sp, r0, r0, ror #4
    d20c:	0000d2b0 			; <UNDEFINED> instruction: 0x0000d2b0
    d210:	0000d278 	andeq	sp, r0, r8, ror r2
    d214:	0000d284 	andeq	sp, r0, r4, lsl #5
    d218:	0000d26c 	andeq	sp, r0, ip, ror #4
    d21c:	0000d26c 	andeq	sp, r0, ip, ror #4
    d220:	0000d254 	andeq	sp, r0, r4, asr r2
    d224:	0000d254 	andeq	sp, r0, r4, asr r2
    d228:	0000d260 	andeq	sp, r0, r0, ror #4
    d22c:	0000d298 	muleq	r0, r8, r2
    d230:	0000d278 	andeq	sp, r0, r8, ror r2
    d234:	0000d254 	andeq	sp, r0, r4, asr r2
    d238:	0000d2d4 	ldrdeq	sp, [r0], -r4
    d23c:	0000d260 	andeq	sp, r0, r0, ror #4
    d240:	0000d260 	andeq	sp, r0, r0, ror #4
    d244:	0000d254 	andeq	sp, r0, r4, asr r2
    d248:	0000d254 	andeq	sp, r0, r4, asr r2
    d24c:	0000d254 	andeq	sp, r0, r4, asr r2
    d250:	0000d254 	andeq	sp, r0, r4, asr r2
    d254:	e30f0080 	movw	r0, #61568	; 0xf080
    d258:	e34002fa 	movt	r0, #762	; 0x2fa
    d25c:	e12fff1e 	bx	lr
    d260:	e3a00cc2 	mov	r0, #49664	; 0xc200
    d264:	e3400beb 	movt	r0, #3051	; 0xbeb
    d268:	e12fff1e 	bx	lr
    d26c:	e3a00c87 	mov	r0, #34560	; 0x8700
    d270:	e3400393 	movt	r0, #915	; 0x393
    d274:	e12fff1e 	bx	lr
    d278:	e3070840 	movw	r0, #30784	; 0x7840
    d27c:	e340017d 	movt	r0, #381	; 0x17d
    d280:	e12fff1e 	bx	lr
    d284:	e3050940 	movw	r0, #22848	; 0x5940
    d288:	e3400773 	movt	r0, #1907	; 0x773
    d28c:	e12fff1e 	bx	lr
    d290:	e3a00000 	mov	r0, #0
    d294:	e12fff1e 	bx	lr
    d298:	e3060bcb 	movw	r0, #27595	; 0x6bcb
    d29c:	e340069f 	movt	r0, #1695	; 0x69f
    d2a0:	e12fff1e 	bx	lr
    d2a4:	e3a00fe6 	mov	r0, #920	; 0x398
    d2a8:	e340009b 	movt	r0, #155	; 0x9b
    d2ac:	e12fff1e 	bx	lr
    d2b0:	e3a00ce1 	mov	r0, #57600	; 0xe100
    d2b4:	e34005f5 	movt	r0, #1525	; 0x5f5
    d2b8:	e12fff1e 	bx	lr
    d2bc:	e3000541 	movw	r0, #1345	; 0x541
    d2c0:	e3410fca 	movt	r0, #8138	; 0x1fca
    d2c4:	e12fff1e 	bx	lr
    d2c8:	e3090cc0 	movw	r0, #40128	; 0x9cc0
    d2cc:	e34207c1 	movt	r0, #10177	; 0x27c1
    d2d0:	e12fff1e 	bx	lr
    d2d4:	e3040ddc 	movw	r0, #19932	; 0x4ddc
    d2d8:	e340016b 	movt	r0, #363	; 0x16b
    d2dc:	e12fff1e 	bx	lr

0000d2e0 <CSP_PM_SysClkEn>:
    d2e0:	e3500003 	cmp	r0, #3
    d2e4:	812fff1e 	bxhi	lr
    d2e8:	e3500001 	cmp	r0, #1
    d2ec:	0a00000e 	beq	d32c <CSP_PM_SysClkEn+0x4c>
    d2f0:	2a000005 	bcs	d30c <CSP_PM_SysClkEn+0x2c>
    d2f4:	e3043fff 	movw	r3, #20479	; 0x4fff
    d2f8:	e34f3fa0 	movt	r3, #65440	; 0xffa0
    d2fc:	e5132fdf 	ldr	r2, [r3, #-4063]	; 0xfffff021
    d300:	e3822001 	orr	r2, r2, #1
    d304:	e5032fdf 	str	r2, [r3, #-4063]	; 0xfffff021
    d308:	e12fff1e 	bx	lr
    d30c:	e3500002 	cmp	r0, #2
    d310:	112fff1e 	bxne	lr
    d314:	e3043fff 	movw	r3, #20479	; 0x4fff
    d318:	e34f3fa0 	movt	r3, #65440	; 0xffa0
    d31c:	e5132f9f 	ldr	r2, [r3, #-3999]	; 0xfffff061
    d320:	e3822001 	orr	r2, r2, #1
    d324:	e5032f9f 	str	r2, [r3, #-3999]	; 0xfffff061
    d328:	e12fff1e 	bx	lr
    d32c:	e3043fff 	movw	r3, #20479	; 0x4fff
    d330:	e34f3fa0 	movt	r3, #65440	; 0xffa0
    d334:	e5132f5f 	ldr	r2, [r3, #-3935]	; 0xfffff0a1
    d338:	e3822001 	orr	r2, r2, #1
    d33c:	e5032f5f 	str	r2, [r3, #-3935]	; 0xfffff0a1
    d340:	e12fff1e 	bx	lr

0000d344 <CSP_PM_SysClkDis>:
    d344:	e3500003 	cmp	r0, #3
    d348:	812fff1e 	bxhi	lr
    d34c:	e3500001 	cmp	r0, #1
    d350:	0a00000e 	beq	d390 <CSP_PM_SysClkDis+0x4c>
    d354:	2a000005 	bcs	d370 <CSP_PM_SysClkDis+0x2c>
    d358:	e3043fff 	movw	r3, #20479	; 0x4fff
    d35c:	e34f3fa0 	movt	r3, #65440	; 0xffa0
    d360:	e5132fdf 	ldr	r2, [r3, #-4063]	; 0xfffff021
    d364:	e3c22001 	bic	r2, r2, #1
    d368:	e5032fdf 	str	r2, [r3, #-4063]	; 0xfffff021
    d36c:	e12fff1e 	bx	lr
    d370:	e3500002 	cmp	r0, #2
    d374:	112fff1e 	bxne	lr
    d378:	e3043fff 	movw	r3, #20479	; 0x4fff
    d37c:	e34f3fa0 	movt	r3, #65440	; 0xffa0
    d380:	e5132f9f 	ldr	r2, [r3, #-3999]	; 0xfffff061
    d384:	e3c22001 	bic	r2, r2, #1
    d388:	e5032f9f 	str	r2, [r3, #-3999]	; 0xfffff061
    d38c:	e12fff1e 	bx	lr
    d390:	e3043fff 	movw	r3, #20479	; 0x4fff
    d394:	e34f3fa0 	movt	r3, #65440	; 0xffa0
    d398:	e5132f5f 	ldr	r2, [r3, #-3935]	; 0xfffff0a1
    d39c:	e3c22001 	bic	r2, r2, #1
    d3a0:	e5032f5f 	str	r2, [r3, #-3935]	; 0xfffff0a1
    d3a4:	e12fff1e 	bx	lr

0000d3a8 <CSP_PM_SysClkFreqGet>:
    d3a8:	e3040355 	movw	r0, #17237	; 0x4355
    d3ac:	e34103de 	movt	r0, #5086	; 0x13de
    d3b0:	e12fff1e 	bx	lr

0000d3b4 <CSP_PM_SysClkDivCfg>:
    d3b4:	e24dd008 	sub	sp, sp, #8
    d3b8:	e3a00001 	mov	r0, #1
    d3bc:	e28dd008 	add	sp, sp, #8
    d3c0:	e12fff1e 	bx	lr

0000d3c4 <CSP_TmrCfg>:
    d3c4:	e3500001 	cmp	r0, #1
    d3c8:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    d3cc:	e1a04000 	mov	r4, r0
    d3d0:	e24dd00c 	sub	sp, sp, #12
    d3d4:	9a000002 	bls	d3e4 <CSP_TmrCfg+0x20>
    d3d8:	e3a00000 	mov	r0, #0
    d3dc:	e28dd00c 	add	sp, sp, #12
    d3e0:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    d3e4:	e2205001 	eor	r5, r0, #1
    d3e8:	e3510000 	cmp	r1, #0
    d3ec:	13a05000 	movne	r5, #0
    d3f0:	02055001 	andeq	r5, r5, #1
    d3f4:	e3550000 	cmp	r5, #0
    d3f8:	1afffff6 	bne	d3d8 <CSP_TmrCfg+0x14>
    d3fc:	e3a00002 	mov	r0, #2
    d400:	e58d1004 	str	r1, [sp, #4]
    d404:	ebffffe7 	bl	d3a8 <CSP_PM_SysClkFreqGet>
    d408:	e3540000 	cmp	r4, #0
    d40c:	e1a06000 	mov	r6, r0
    d410:	11a00005 	movne	r0, r5
    d414:	1afffff0 	bne	d3dc <CSP_TmrCfg+0x18>
    d418:	eb000034 	bl	d4f0 <CPU_SR_Save>
    d41c:	e34f58f0 	movt	r5, #63728	; 0xf8f0
    d420:	e59d1004 	ldr	r1, [sp, #4]
    d424:	e5854600 	str	r4, [r5, #1536]	; 0x600
    d428:	e3a04001 	mov	r4, #1
    d42c:	e585460c 	str	r4, [r5, #1548]	; 0x60c
    d430:	e1a07000 	mov	r7, r0
    d434:	e1a00006 	mov	r0, r6
    d438:	eb000831 	bl	f504 <__aeabi_uidiv>
    d43c:	e2403001 	sub	r3, r0, #1
    d440:	e1a00007 	mov	r0, r7
    d444:	e5853600 	str	r3, [r5, #1536]	; 0x600
    d448:	e3a03006 	mov	r3, #6
    d44c:	e5853608 	str	r3, [r5, #1544]	; 0x608
    d450:	eb000039 	bl	d53c <CPU_SR_Restore>
    d454:	e1a00004 	mov	r0, r4
    d458:	eaffffdf 	b	d3dc <CSP_TmrCfg+0x18>

0000d45c <CSP_TmrOutCmpCfg>:
    d45c:	e3a00001 	mov	r0, #1
    d460:	e12fff1e 	bx	lr

0000d464 <CSP_TmrIntClr>:
    d464:	e3500001 	cmp	r0, #1
    d468:	812fff1e 	bxhi	lr
    d46c:	e3500000 	cmp	r0, #0
    d470:	03a03000 	moveq	r3, #0
    d474:	034f38f0 	movteq	r3, #63728	; 0xf8f0
    d478:	03a02001 	moveq	r2, #1
    d47c:	0583260c 	streq	r2, [r3, #1548]	; 0x60c
    d480:	e12fff1e 	bx	lr

0000d484 <CSP_TmrRst>:
    d484:	e12fff1e 	bx	lr

0000d488 <CSP_TmrRd>:
    d488:	e3a00000 	mov	r0, #0
    d48c:	e12fff1e 	bx	lr

0000d490 <CSP_TmrStart>:
    d490:	e3500001 	cmp	r0, #1
    d494:	812fff1e 	bxhi	lr
    d498:	e3500000 	cmp	r0, #0
    d49c:	03a03000 	moveq	r3, #0
    d4a0:	034f38f0 	movteq	r3, #63728	; 0xf8f0
    d4a4:	05932608 	ldreq	r2, [r3, #1544]	; 0x608
    d4a8:	03822001 	orreq	r2, r2, #1
    d4ac:	05832608 	streq	r2, [r3, #1544]	; 0x608
    d4b0:	e12fff1e 	bx	lr

0000d4b4 <CSP_TmrStop>:
    d4b4:	e12fff1e 	bx	lr

0000d4b8 <CSP_TmrWr>:
    d4b8:	e12fff1e 	bx	lr

0000d4bc <CSP_IntVectClr>:
    d4bc:	e3a03000 	mov	r3, #0
    d4c0:	e5803000 	str	r3, [r0]
    d4c4:	e5803004 	str	r3, [r0, #4]
    d4c8:	e12fff1e 	bx	lr

0000d4cc <CSP_IntVectSet>:
    d4cc:	e8800006 	stm	r0, {r1, r2}
    d4d0:	e12fff1e 	bx	lr

0000d4d4 <CSP_IntVectDeref>:
    d4d4:	e92d4008 	push	{r3, lr}
    d4d8:	e5903000 	ldr	r3, [r0]
    d4dc:	e5900004 	ldr	r0, [r0, #4]
    d4e0:	e3530000 	cmp	r3, #0
    d4e4:	08bd8008 	popeq	{r3, pc}
    d4e8:	e12fff33 	blx	r3
    d4ec:	e8bd8008 	pop	{r3, pc}

0000d4f0 <CPU_SR_Save>:
    d4f0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    d4f4:	e59f1374 	ldr	r1, [pc, #884]	; d870 <CPU_CtxID_Get+0x8>
    d4f8:	e5910000 	ldr	r0, [r1]
    d4fc:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    d500:	e10f0000 	mrs	r0, CPSR
    d504:	e59f1368 	ldr	r1, [pc, #872]	; d874 <CPU_CtxID_Get+0xc>
    d508:	e0001001 	and	r1, r0, r1
    d50c:	e49d0004 	pop	{r0}		; (ldr r0, [sp], #4)
    d510:	e1800001 	orr	r0, r0, r1
    d514:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    d518:	e38000c0 	orr	r0, r0, #192	; 0xc0
    d51c:	e12cf000 	msr	CPSR_fs, r0
    d520:	e59f1350 	ldr	r1, [pc, #848]	; d878 <CPU_CtxID_Get+0x10>
    d524:	e0000001 	and	r0, r0, r1
    d528:	e59f1340 	ldr	r1, [pc, #832]	; d870 <CPU_CtxID_Get+0x8>
    d52c:	e5810000 	str	r0, [r1]
    d530:	e49d0004 	pop	{r0}		; (ldr r0, [sp], #4)
    d534:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    d538:	e12fff1e 	bx	lr

0000d53c <CPU_SR_Restore>:
    d53c:	e92d0003 	push	{r0, r1}
    d540:	e12cf000 	msr	CPSR_fs, r0
    d544:	e59f132c 	ldr	r1, [pc, #812]	; d878 <CPU_CtxID_Get+0x10>
    d548:	e0000001 	and	r0, r0, r1
    d54c:	e59f131c 	ldr	r1, [pc, #796]	; d870 <CPU_CtxID_Get+0x8>
    d550:	e5810000 	str	r0, [r1]
    d554:	e2000080 	and	r0, r0, #128	; 0x80
    d558:	e3500000 	cmp	r0, #0
    d55c:	1a000003 	bne	d570 <CPU_SR_Restore_Exit>
    d560:	e59f0314 	ldr	r0, [pc, #788]	; d87c <CPU_CtxID_Get+0x14>
    d564:	e5900000 	ldr	r0, [r0]
    d568:	e3500000 	cmp	r0, #0
    d56c:	1f00001f 	svcne	0x0000001f

0000d570 <CPU_SR_Restore_Exit>:
    d570:	e8bd0003 	pop	{r0, r1}
    d574:	e12fff1e 	bx	lr

0000d578 <CPU_IntDis>:
    d578:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    d57c:	e59f12ec 	ldr	r1, [pc, #748]	; d870 <CPU_CtxID_Get+0x8>
    d580:	e5910000 	ldr	r0, [r1]
    d584:	e38000c0 	orr	r0, r0, #192	; 0xc0
    d588:	e59f12e8 	ldr	r1, [pc, #744]	; d878 <CPU_CtxID_Get+0x10>
    d58c:	e0000001 	and	r0, r0, r1
    d590:	e59f12d8 	ldr	r1, [pc, #728]	; d870 <CPU_CtxID_Get+0x8>
    d594:	e5810000 	str	r0, [r1]
    d598:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    d59c:	e12fff1e 	bx	lr

0000d5a0 <CPU_IntEn>:
    d5a0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    d5a4:	e59f12c4 	ldr	r1, [pc, #708]	; d870 <CPU_CtxID_Get+0x8>
    d5a8:	e5910000 	ldr	r0, [r1]
    d5ac:	e3c000c0 	bic	r0, r0, #192	; 0xc0
    d5b0:	e59f12c0 	ldr	r1, [pc, #704]	; d878 <CPU_CtxID_Get+0x10>
    d5b4:	e0000001 	and	r0, r0, r1
    d5b8:	e59f12b0 	ldr	r1, [pc, #688]	; d870 <CPU_CtxID_Get+0x8>
    d5bc:	e5810000 	str	r0, [r1]
    d5c0:	e59f02b4 	ldr	r0, [pc, #692]	; d87c <CPU_CtxID_Get+0x14>
    d5c4:	e5900000 	ldr	r0, [r0]
    d5c8:	e3500000 	cmp	r0, #0
    d5cc:	1f00001f 	svcne	0x0000001f
    d5d0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    d5d4:	e12fff1e 	bx	lr

0000d5d8 <CPU_IRQ_Dis>:
    d5d8:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    d5dc:	e59f128c 	ldr	r1, [pc, #652]	; d870 <CPU_CtxID_Get+0x8>
    d5e0:	e5910000 	ldr	r0, [r1]
    d5e4:	e3800080 	orr	r0, r0, #128	; 0x80
    d5e8:	e59f1288 	ldr	r1, [pc, #648]	; d878 <CPU_CtxID_Get+0x10>
    d5ec:	e0000001 	and	r0, r0, r1
    d5f0:	e59f1278 	ldr	r1, [pc, #632]	; d870 <CPU_CtxID_Get+0x8>
    d5f4:	e5810000 	str	r0, [r1]
    d5f8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    d5fc:	e12fff1e 	bx	lr

0000d600 <CPU_IRQ_En>:
    d600:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    d604:	e59f1264 	ldr	r1, [pc, #612]	; d870 <CPU_CtxID_Get+0x8>
    d608:	e5910000 	ldr	r0, [r1]
    d60c:	e3c00080 	bic	r0, r0, #128	; 0x80
    d610:	e59f1260 	ldr	r1, [pc, #608]	; d878 <CPU_CtxID_Get+0x10>
    d614:	e0000001 	and	r0, r0, r1
    d618:	e59f1250 	ldr	r1, [pc, #592]	; d870 <CPU_CtxID_Get+0x8>
    d61c:	e5810000 	str	r0, [r1]
    d620:	e59f0254 	ldr	r0, [pc, #596]	; d87c <CPU_CtxID_Get+0x14>
    d624:	e5900000 	ldr	r0, [r0]
    d628:	e3500000 	cmp	r0, #0
    d62c:	1f00001f 	svcne	0x0000001f
    d630:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    d634:	e12fff1e 	bx	lr

0000d638 <CPU_FIQ_Dis>:
    d638:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    d63c:	e59f122c 	ldr	r1, [pc, #556]	; d870 <CPU_CtxID_Get+0x8>
    d640:	e5910000 	ldr	r0, [r1]
    d644:	e3800040 	orr	r0, r0, #64	; 0x40
    d648:	e59f1228 	ldr	r1, [pc, #552]	; d878 <CPU_CtxID_Get+0x10>
    d64c:	e0000001 	and	r0, r0, r1
    d650:	e59f1218 	ldr	r1, [pc, #536]	; d870 <CPU_CtxID_Get+0x8>
    d654:	e5810000 	str	r0, [r1]
    d658:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    d65c:	e12fff1e 	bx	lr

0000d660 <CPU_FIQ_En>:
    d660:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    d664:	e59f1204 	ldr	r1, [pc, #516]	; d870 <CPU_CtxID_Get+0x8>
    d668:	e5910000 	ldr	r0, [r1]
    d66c:	e3c00040 	bic	r0, r0, #64	; 0x40
    d670:	e59f1200 	ldr	r1, [pc, #512]	; d878 <CPU_CtxID_Get+0x10>
    d674:	e0000001 	and	r0, r0, r1
    d678:	e59f11f0 	ldr	r1, [pc, #496]	; d870 <CPU_CtxID_Get+0x8>
    d67c:	e5810000 	str	r0, [r1]
    d680:	e59f01f4 	ldr	r0, [pc, #500]	; d87c <CPU_CtxID_Get+0x14>
    d684:	e5900000 	ldr	r0, [r0]
    d688:	e3500000 	cmp	r0, #0
    d68c:	1f00001f 	svcne	0x0000001f
    d690:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    d694:	e12fff1e 	bx	lr

0000d698 <CPU_CntLeadZeros>:
    d698:	e16f0f10 	clz	r0, r0
    d69c:	e12fff1e 	bx	lr

0000d6a0 <CPU_PMU_Dis>:
    d6a0:	ee190f1c 	mrc	15, 0, r0, cr9, cr12, {0}
    d6a4:	e3c00004 	bic	r0, r0, #4
    d6a8:	ee090f1c 	mcr	15, 0, r0, cr9, cr12, {0}
    d6ac:	e12fff1e 	bx	lr

0000d6b0 <CPU_PMU_En>:
    d6b0:	ee190f1c 	mrc	15, 0, r0, cr9, cr12, {0}
    d6b4:	e3800001 	orr	r0, r0, #1
    d6b8:	ee090f1c 	mcr	15, 0, r0, cr9, cr12, {0}
    d6bc:	e12fff1e 	bx	lr

0000d6c0 <CPU_PMU_Rst>:
    d6c0:	ee190f1c 	mrc	15, 0, r0, cr9, cr12, {0}
    d6c4:	e3800006 	orr	r0, r0, #6
    d6c8:	ee090f1c 	mcr	15, 0, r0, cr9, cr12, {0}
    d6cc:	e12fff1e 	bx	lr

0000d6d0 <CPU_PMU_CtrDis>:
    d6d0:	e3500002 	cmp	r0, #2
    d6d4:	812fff1e 	bxhi	lr
    d6d8:	e3a01001 	mov	r1, #1
    d6dc:	e1a00011 	lsl	r0, r1, r0
    d6e0:	ee090f5c 	mcr	15, 0, r0, cr9, cr12, {2}
    d6e4:	e12fff1e 	bx	lr

0000d6e8 <CPU_PMU_CtrEn>:
    d6e8:	e3500002 	cmp	r0, #2
    d6ec:	812fff1e 	bxhi	lr
    d6f0:	e3a01001 	mov	r1, #1
    d6f4:	e1a00011 	lsl	r0, r1, r0
    d6f8:	ee090f3c 	mcr	15, 0, r0, cr9, cr12, {1}
    d6fc:	e12fff1e 	bx	lr

0000d700 <CPU_PMU_CtrEventSet>:
    d700:	e3500002 	cmp	r0, #2
    d704:	812fff1e 	bxhi	lr
    d708:	ee192fbc 	mrc	15, 0, r2, cr9, cr12, {5}
    d70c:	e3c2201f 	bic	r2, r2, #31
    d710:	e1822000 	orr	r2, r2, r0
    d714:	ee092fbc 	mcr	15, 0, r2, cr9, cr12, {5}
    d718:	ee192f3d 	mrc	15, 0, r2, cr9, cr13, {1}
    d71c:	e3c220ff 	bic	r2, r2, #255	; 0xff
    d720:	e1822001 	orr	r2, r2, r1
    d724:	ee092f3d 	mcr	15, 0, r2, cr9, cr13, {1}
    d728:	e12fff1e 	bx	lr

0000d72c <CPU_PMU_CtrGet>:
    d72c:	e3500002 	cmp	r0, #2
    d730:	812fff1e 	bxhi	lr
    d734:	ee191fbc 	mrc	15, 0, r1, cr9, cr12, {5}
    d738:	e3c1101f 	bic	r1, r1, #31
    d73c:	e1811000 	orr	r1, r1, r0
    d740:	ee091fbc 	mcr	15, 0, r1, cr9, cr12, {5}
    d744:	ee190f5d 	mrc	15, 0, r0, cr9, cr13, {2}
    d748:	e12fff1e 	bx	lr

0000d74c <CPU_PMU_CtrRst>:
    d74c:	e3500002 	cmp	r0, #2
    d750:	812fff1e 	bxhi	lr
    d754:	ee191fbc 	mrc	15, 0, r1, cr9, cr12, {5}
    d758:	e3c1101f 	bic	r1, r1, #31
    d75c:	e1811000 	orr	r1, r1, r0
    d760:	ee091fbc 	mcr	15, 0, r1, cr9, cr12, {5}
    d764:	e3a00000 	mov	r0, #0
    d768:	ee090f5d 	mcr	15, 0, r0, cr9, cr13, {2}
    d76c:	e12fff1e 	bx	lr

0000d770 <CPU_PMU_CtrCycleDis>:
    d770:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
    d774:	ee090f5c 	mcr	15, 0, r0, cr9, cr12, {2}
    d778:	e12fff1e 	bx	lr

0000d77c <CPU_PMU_CtrCycleEn>:
    d77c:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
    d780:	ee090f3c 	mcr	15, 0, r0, cr9, cr12, {1}
    d784:	e12fff1e 	bx	lr

0000d788 <CPU_PMU_CtrCycleGet>:
    d788:	ee190f1d 	mrc	15, 0, r0, cr9, cr13, {0}
    d78c:	e12fff1e 	bx	lr

0000d790 <CPU_PMU_CtrCycleRst>:
    d790:	ee190f1c 	mrc	15, 0, r0, cr9, cr12, {0}
    d794:	e3800004 	orr	r0, r0, #4
    d798:	ee090f1c 	mcr	15, 0, r0, cr9, cr12, {0}
    d79c:	e12fff1e 	bx	lr

0000d7a0 <CPU_MMU_En>:
    d7a0:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    d7a4:	e3800001 	orr	r0, r0, #1
    d7a8:	f57ff04f 	dsb	sy
    d7ac:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    d7b0:	f57ff06f 	isb	sy
    d7b4:	e12fff1e 	bx	lr

0000d7b8 <CPU_MMU_Dis>:
    d7b8:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    d7bc:	e3c00001 	bic	r0, r0, #1
    d7c0:	f57ff04f 	dsb	sy
    d7c4:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    d7c8:	e12fff1e 	bx	lr

0000d7cc <CPU_MMU_RegionEn>:
    d7cc:	e92d0030 	push	{r4, r5}
    d7d0:	ee104f90 	mrc	15, 0, r4, cr0, cr0, {4}
    d7d4:	e1a04424 	lsr	r4, r4, #8
    d7d8:	e204400f 	and	r4, r4, #15
    d7dc:	e1500004 	cmp	r0, r4
    d7e0:	5a000013 	bpl	d834 <CPU_MMU_RegionEnExitFail>
    d7e4:	e353001f 	cmp	r3, #31
    d7e8:	ba000011 	blt	d834 <CPU_MMU_RegionEnExitFail>
    d7ec:	ee060f12 	mcr	15, 0, r0, cr6, cr2, {0}
    d7f0:	ee164f51 	mrc	15, 0, r4, cr6, cr1, {2}
    d7f4:	e2044001 	and	r4, r4, #1
    d7f8:	e3540000 	cmp	r4, #0
    d7fc:	1a00000c 	bne	d834 <CPU_MMU_RegionEnExitFail>
    d800:	ee061f11 	mcr	15, 0, r1, cr6, cr1, {0}
    d804:	e59d4008 	ldr	r4, [sp, #8]
    d808:	ee064f91 	mcr	15, 0, r4, cr6, cr1, {4}
    d80c:	e1a04402 	lsl	r4, r2, #8
    d810:	e16f5f13 	clz	r5, r3
    d814:	e265501f 	rsb	r5, r5, #31
    d818:	e1a05085 	lsl	r5, r5, #1
    d81c:	e1844005 	orr	r4, r4, r5
    d820:	e3844001 	orr	r4, r4, #1
    d824:	ee064f51 	mcr	15, 0, r4, cr6, cr1, {2}
    d828:	e3a00001 	mov	r0, #1
    d82c:	e8bd0030 	pop	{r4, r5}
    d830:	e12fff1e 	bx	lr

0000d834 <CPU_MMU_RegionEnExitFail>:
    d834:	e3a00000 	mov	r0, #0
    d838:	e8bd0030 	pop	{r4, r5}
    d83c:	e12fff1e 	bx	lr

0000d840 <CPU_MMU_RegionDis>:
    d840:	ee101f90 	mrc	15, 0, r1, cr0, cr0, {4}
    d844:	e1a01421 	lsr	r1, r1, #8
    d848:	e201100f 	and	r1, r1, #15
    d84c:	e1500001 	cmp	r0, r1
    d850:	5a000001 	bpl	d85c <CPU_MMU_RegionDisExit>
    d854:	e3a01000 	mov	r1, #0
    d858:	ee061f51 	mcr	15, 0, r1, cr6, cr1, {2}

0000d85c <CPU_MMU_RegionDisExit>:
    d85c:	e12fff1e 	bx	lr

0000d860 <CPU_CtxID_Set>:
    d860:	ee0d0f30 	mcr	15, 0, r0, cr13, cr0, {1}
    d864:	e12fff1e 	bx	lr

0000d868 <CPU_CtxID_Get>:
    d868:	ee1d0f30 	mrc	15, 0, r0, cr13, cr0, {1}
    d86c:	e12fff1e 	bx	lr
    d870:	000133dc 	ldrdeq	r3, [r1], -ip
    d874:	f80f0000 			; <UNDEFINED> instruction: 0xf80f0000
    d878:	0000ffff 	strdeq	pc, [r0], -pc	; <UNPREDICTABLE>
    d87c:	000133e4 	andeq	r3, r1, r4, ror #7

0000d880 <CPU_Init>:
    d880:	e12fff1e 	bx	lr

0000d884 <CPU_SW_Exception>:
    d884:	eafffffe 	b	d884 <CPU_SW_Exception>

0000d888 <CPU_CntLeadZeros08>:
    d888:	e92d4008 	push	{r3, lr}
    d88c:	ebffff81 	bl	d698 <CPU_CntLeadZeros>
    d890:	e2400018 	sub	r0, r0, #24
    d894:	e8bd8008 	pop	{r3, pc}

0000d898 <CPU_CntLeadZeros16>:
    d898:	e92d4008 	push	{r3, lr}
    d89c:	ebffff7d 	bl	d698 <CPU_CntLeadZeros>
    d8a0:	e2400010 	sub	r0, r0, #16
    d8a4:	e8bd8008 	pop	{r3, pc}

0000d8a8 <CPU_CntLeadZeros32>:
    d8a8:	eaffff7a 	b	d698 <CPU_CntLeadZeros>

0000d8ac <CPU_CntLeadZeros64>:
    d8ac:	e3e02000 	mvn	r2, #0
    d8b0:	e3a03000 	mov	r3, #0
    d8b4:	e1530001 	cmp	r3, r1
    d8b8:	01520000 	cmpeq	r2, r0
    d8bc:	2a000011 	bcs	d908 <CPU_CntLeadZeros64+0x5c>
    d8c0:	e3e02000 	mvn	r2, #0
    d8c4:	e30f3fff 	movw	r3, #65535	; 0xffff
    d8c8:	e1530001 	cmp	r3, r1
    d8cc:	01520000 	cmpeq	r2, r0
    d8d0:	e3e02000 	mvn	r2, #0
    d8d4:	2a000025 	bcs	d970 <CPU_CntLeadZeros64+0xc4>
    d8d8:	e3e034ff 	mvn	r3, #-16777216	; 0xff000000
    d8dc:	e1530001 	cmp	r3, r1
    d8e0:	01520000 	cmpeq	r2, r0
    d8e4:	31a02c21 	lsrcc	r2, r1, #24
    d8e8:	e30f3dcc 	movw	r3, #64972	; 0xfdcc
    d8ec:	21a02821 	lsrcs	r2, r1, #16
    d8f0:	33403000 	movtcc	r3, #0
    d8f4:	23403000 	movtcs	r3, #0
    d8f8:	37d30002 	ldrbcc	r0, [r3, r2]
    d8fc:	27d30002 	ldrbcs	r0, [r3, r2]
    d900:	22800008 	addcs	r0, r0, #8
    d904:	e12fff1e 	bx	lr
    d908:	e30f2fff 	movw	r2, #65535	; 0xffff
    d90c:	e3a03000 	mov	r3, #0
    d910:	e1530001 	cmp	r3, r1
    d914:	01520000 	cmpeq	r2, r0
    d918:	2a00000b 	bcs	d94c <CPU_CntLeadZeros64+0xa0>
    d91c:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    d920:	e3a03000 	mov	r3, #0
    d924:	e1530001 	cmp	r3, r1
    d928:	01520000 	cmpeq	r2, r0
    d92c:	2a00001c 	bcs	d9a4 <CPU_CntLeadZeros64+0xf8>
    d930:	e1a03c20 	lsr	r3, r0, #24
    d934:	e30f2dcc 	movw	r2, #64972	; 0xfdcc
    d938:	e1833401 	orr	r3, r3, r1, lsl #8
    d93c:	e3402000 	movt	r2, #0
    d940:	e7d20003 	ldrb	r0, [r2, r3]
    d944:	e2800020 	add	r0, r0, #32
    d948:	e12fff1e 	bx	lr
    d94c:	e3510000 	cmp	r1, #0
    d950:	035000ff 	cmpeq	r0, #255	; 0xff
    d954:	8a000019 	bhi	d9c0 <CPU_CntLeadZeros64+0x114>
    d958:	e30f3dcc 	movw	r3, #64972	; 0xfdcc
    d95c:	e3403000 	movt	r3, #0
    d960:	e0830000 	add	r0, r3, r0
    d964:	e5d00000 	ldrb	r0, [r0]
    d968:	e2800038 	add	r0, r0, #56	; 0x38
    d96c:	e12fff1e 	bx	lr
    d970:	e3a030ff 	mov	r3, #255	; 0xff
    d974:	e1530001 	cmp	r3, r1
    d978:	01520000 	cmpeq	r2, r0
    d97c:	31a02421 	lsrcc	r2, r1, #8
    d980:	e30f3dcc 	movw	r3, #64972	; 0xfdcc
    d984:	33403000 	movtcc	r3, #0
    d988:	23403000 	movtcs	r3, #0
    d98c:	21a02001 	movcs	r2, r1
    d990:	37d30002 	ldrbcc	r0, [r3, r2]
    d994:	32800010 	addcc	r0, r0, #16
    d998:	27d30002 	ldrbcs	r0, [r3, r2]
    d99c:	22800018 	addcs	r0, r0, #24
    d9a0:	e12fff1e 	bx	lr
    d9a4:	e1a03820 	lsr	r3, r0, #16
    d9a8:	e30f2dcc 	movw	r2, #64972	; 0xfdcc
    d9ac:	e1833801 	orr	r3, r3, r1, lsl #16
    d9b0:	e3402000 	movt	r2, #0
    d9b4:	e7d20003 	ldrb	r0, [r2, r3]
    d9b8:	e2800028 	add	r0, r0, #40	; 0x28
    d9bc:	e12fff1e 	bx	lr
    d9c0:	e1a03420 	lsr	r3, r0, #8
    d9c4:	e30f2dcc 	movw	r2, #64972	; 0xfdcc
    d9c8:	e1833c01 	orr	r3, r3, r1, lsl #24
    d9cc:	e3402000 	movt	r2, #0
    d9d0:	e7d20003 	ldrb	r0, [r2, r3]
    d9d4:	e2800030 	add	r0, r0, #48	; 0x30
    d9d8:	e12fff1e 	bx	lr

0000d9dc <CPU_CntTrailZeros>:
    d9dc:	e3500000 	cmp	r0, #0
    d9e0:	e92d4008 	push	{r3, lr}
    d9e4:	1a000001 	bne	d9f0 <CPU_CntTrailZeros+0x14>
    d9e8:	e3a00020 	mov	r0, #32
    d9ec:	e8bd8008 	pop	{r3, pc}
    d9f0:	e2603000 	rsb	r3, r0, #0
    d9f4:	e0030000 	and	r0, r3, r0
    d9f8:	ebffff26 	bl	d698 <CPU_CntLeadZeros>
    d9fc:	e260001f 	rsb	r0, r0, #31
    da00:	e8bd8008 	pop	{r3, pc}

0000da04 <CPU_CntTrailZeros08>:
    da04:	e3500000 	cmp	r0, #0
    da08:	e92d4008 	push	{r3, lr}
    da0c:	1a000001 	bne	da18 <CPU_CntTrailZeros08+0x14>
    da10:	e3a00008 	mov	r0, #8
    da14:	e8bd8008 	pop	{r3, pc}
    da18:	e2603000 	rsb	r3, r0, #0
    da1c:	e0000003 	and	r0, r0, r3
    da20:	ebffff98 	bl	d888 <CPU_CntLeadZeros08>
    da24:	e2600007 	rsb	r0, r0, #7
    da28:	e8bd8008 	pop	{r3, pc}

0000da2c <CPU_CntTrailZeros16>:
    da2c:	e3500000 	cmp	r0, #0
    da30:	e92d4008 	push	{r3, lr}
    da34:	1a000001 	bne	da40 <CPU_CntTrailZeros16+0x14>
    da38:	e3a00010 	mov	r0, #16
    da3c:	e8bd8008 	pop	{r3, pc}
    da40:	e2603000 	rsb	r3, r0, #0
    da44:	e0000003 	and	r0, r0, r3
    da48:	ebffff92 	bl	d898 <CPU_CntLeadZeros16>
    da4c:	e260000f 	rsb	r0, r0, #15
    da50:	e8bd8008 	pop	{r3, pc}

0000da54 <CPU_CntTrailZeros32>:
    da54:	e3500000 	cmp	r0, #0
    da58:	e92d4008 	push	{r3, lr}
    da5c:	1a000001 	bne	da68 <CPU_CntTrailZeros32+0x14>
    da60:	e3a00020 	mov	r0, #32
    da64:	e8bd8008 	pop	{r3, pc}
    da68:	e2603000 	rsb	r3, r0, #0
    da6c:	e0030000 	and	r0, r3, r0
    da70:	ebffff08 	bl	d698 <CPU_CntLeadZeros>
    da74:	e260001f 	rsb	r0, r0, #31
    da78:	e8bd8008 	pop	{r3, pc}

0000da7c <CPU_CntTrailZeros64>:
    da7c:	e92d4008 	push	{r3, lr}
    da80:	e1903001 	orrs	r3, r0, r1
    da84:	1a000001 	bne	da90 <CPU_CntTrailZeros64+0x14>
    da88:	e3a00040 	mov	r0, #64	; 0x40
    da8c:	e8bd8008 	pop	{r3, pc}
    da90:	e2702000 	rsbs	r2, r0, #0
    da94:	e2e13000 	rsc	r3, r1, #0
    da98:	e0000002 	and	r0, r0, r2
    da9c:	e0011003 	and	r1, r1, r3
    daa0:	ebffff81 	bl	d8ac <CPU_CntLeadZeros64>
    daa4:	e260003f 	rsb	r0, r0, #63	; 0x3f
    daa8:	e8bd8008 	pop	{r3, pc}

0000daac <enable_caches>:
    daac:	e12fff1e 	bx	lr

0000dab0 <disable_caches>:
    dab0:	e92d4008 	push	{r3, lr}
    dab4:	eb0002a4 	bl	e54c <Xil_DCacheDisable>
    dab8:	e8bd4008 	pop	{r3, lr}
    dabc:	ea000299 	b	e528 <Xil_ICacheDisable>

0000dac0 <init_uart>:
    dac0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    dac4:	e3a00000 	mov	r0, #0
    dac8:	e24dd044 	sub	sp, sp, #68	; 0x44
    dacc:	eb000659 	bl	f438 <XUartPs_LookupConfig>
    dad0:	e1a01000 	mov	r1, r0
    dad4:	e28d0004 	add	r0, sp, #4
    dad8:	e5912004 	ldr	r2, [r1, #4]
    dadc:	eb00060c 	bl	f314 <XUartPs_CfgInitialize>
    dae0:	e28d0004 	add	r0, sp, #4
    dae4:	e3a01cc2 	mov	r1, #49664	; 0xc200
    dae8:	e3401001 	movt	r1, #1
    daec:	eb000598 	bl	f154 <XUartPs_SetBaudRate>
    daf0:	e28dd044 	add	sp, sp, #68	; 0x44
    daf4:	e8bd8000 	ldmfd	sp!, {pc}

0000daf8 <init_platform>:
    daf8:	eafffff0 	b	dac0 <init_uart>

0000dafc <cleanup_platform>:
    dafc:	eaffffeb 	b	dab0 <disable_caches>

0000db00 <BSP_Init>:
    db00:	e92d4008 	push	{r3, lr}
    db04:	eb00003d 	bl	dc00 <guest_CPU_IntDis>
    db08:	eb00003e 	bl	dc08 <guest_ICacheEnable>
    db0c:	eb00003e 	bl	dc0c <guest_DCacheEnable>
    db10:	e8bd4008 	pop	{r3, lr}
    db14:	eafffd39 	b	d000 <CSP_IntInit>

0000db18 <BSP_CPU_ClkFreq>:
    db18:	e3040b40 	movw	r0, #19264	; 0x4b40
    db1c:	e340004c 	movt	r0, #76	; 0x4c
    db20:	e12fff1e 	bx	lr

0000db24 <OS_CSP_BSP_ExceptHandler>:
    db24:	e3500004 	cmp	r0, #4
    db28:	812fff1e 	bxhi	lr
    db2c:	eafffffe 	b	db2c <OS_CSP_BSP_ExceptHandler+0x8>

0000db30 <BSP_OS_SemCreate>:
    db30:	e92d4030 	push	{r4, r5, lr}
    db34:	e1a04000 	mov	r4, r0
    db38:	e24dd00c 	sub	sp, sp, #12
    db3c:	e1a00001 	mov	r0, r1
    db40:	e1a05002 	mov	r5, r2
    db44:	ebfff239 	bl	a430 <OSSemCreate>
    db48:	e2503000 	subs	r3, r0, #0
    db4c:	01a00003 	moveq	r0, r3
    db50:	0a000004 	beq	db68 <BSP_OS_SemCreate+0x38>
    db54:	e5843000 	str	r3, [r4]
    db58:	e1a01005 	mov	r1, r5
    db5c:	e28d2007 	add	r2, sp, #7
    db60:	ebffe9db 	bl	82d4 <OSEventNameSet>
    db64:	e3a00001 	mov	r0, #1
    db68:	e28dd00c 	add	sp, sp, #12
    db6c:	e8bd8030 	pop	{r4, r5, pc}

0000db70 <BSP_OS_SemWait>:
    db70:	e3a02ffa 	mov	r2, #1000	; 0x3e8
    db74:	e3043dd3 	movw	r3, #19923	; 0x4dd3
    db78:	e0010192 	mul	r1, r2, r1
    db7c:	e3413062 	movt	r3, #4194	; 0x1062
    db80:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    db84:	e24dd00c 	sub	sp, sp, #12
    db88:	e5900000 	ldr	r0, [r0]
    db8c:	e28d2007 	add	r2, sp, #7
    db90:	e081c193 	umull	ip, r1, r3, r1
    db94:	e1a01321 	lsr	r1, r1, #6
    db98:	ebfff298 	bl	a600 <OSSemPend>
    db9c:	e5dd0007 	ldrb	r0, [sp, #7]
    dba0:	e2700001 	rsbs	r0, r0, #1
    dba4:	33a00000 	movcc	r0, #0
    dba8:	e28dd00c 	add	sp, sp, #12
    dbac:	e8bd8000 	ldmfd	sp!, {pc}

0000dbb0 <BSP_OS_SemPost>:
    dbb0:	e92d4008 	push	{r3, lr}
    dbb4:	e5900000 	ldr	r0, [r0]
    dbb8:	ebfff313 	bl	a80c <OSSemPost>
    dbbc:	e2700001 	rsbs	r0, r0, #1
    dbc0:	33a00000 	movcc	r0, #0
    dbc4:	e8bd8008 	pop	{r3, pc}

0000dbc8 <BSP_OS_TimeDlyMs>:
    dbc8:	e3042dd3 	movw	r2, #19923	; 0x4dd3
    dbcc:	e3023710 	movw	r3, #10000	; 0x2710
    dbd0:	e3412062 	movt	r2, #4194	; 0x1062
    dbd4:	e1500003 	cmp	r0, r3
    dbd8:	31a03000 	movcc	r3, r0
    dbdc:	e3a0cffa 	mov	ip, #1000	; 0x3e8
    dbe0:	e3a00000 	mov	r0, #0
    dbe4:	e0821392 	umull	r1, r2, r2, r3
    dbe8:	e1a01000 	mov	r1, r0
    dbec:	e1a02322 	lsr	r2, r2, #6
    dbf0:	e063329c 	mls	r3, ip, r2, r3
    dbf4:	e6ef2072 	uxtb	r2, r2
    dbf8:	e6ff3073 	uxth	r3, r3
    dbfc:	eafff664 	b	b594 <OSTimeDlyHMSM>

0000dc00 <guest_CPU_IntDis>:
    dc00:	eafff7c6 	b	bb20 <OS_CPU_SR_IRQ_Dis>

0000dc04 <guest_CPU_IntEn>:
    dc04:	eafff7b7 	b	bae8 <OS_CPU_SR_IRQ_En>

0000dc08 <guest_ICacheEnable>:
    dc08:	ea000072 	b	ddd8 <sys_icache_enable>

0000dc0c <guest_DCacheEnable>:
    dc0c:	ea00006c 	b	ddc4 <sys_dcache_enable>

0000dc10 <guest_ICacheDisable>:
    dc10:	ea000066 	b	ddb0 <sys_icache_disable>

0000dc14 <guest_DCacheDisable>:
    dc14:	ea000060 	b	dd9c <sys_dcache_disable>

0000dc18 <guest_IRQ_Register>:
    dc18:	e1a03000 	mov	r3, r0
    dc1c:	e1a02001 	mov	r2, r1
    dc20:	e3a00000 	mov	r0, #0
    dc24:	e1a01003 	mov	r1, r3
    dc28:	ea00006f 	b	ddec <sys_virq_ctrl>

0000dc2c <guest_IRQ_Acknowledge>:
    dc2c:	e30333dc 	movw	r3, #13276	; 0x33dc
    dc30:	e3403001 	movt	r3, #1
    dc34:	e593000c 	ldr	r0, [r3, #12]
    dc38:	e12fff1e 	bx	lr

0000dc3c <guest_CSP_IntClr>:
    dc3c:	e30333dc 	movw	r3, #13276	; 0x33dc
    dc40:	e3403001 	movt	r3, #1
    dc44:	e0831001 	add	r1, r3, r1
    dc48:	e3a02001 	mov	r2, #1
    dc4c:	e5c12010 	strb	r2, [r1, #16]
    dc50:	e12fff1e 	bx	lr

0000dc54 <guest_OS_Timer_Register>:
    dc54:	e1a01000 	mov	r1, r0
    dc58:	e3a00000 	mov	r0, #0
    dc5c:	e1a02000 	mov	r2, r0
    dc60:	ea00006a 	b	de10 <sys_vtimer_ctrl>

0000dc64 <guest_OS_Timer_Disable>:
    dc64:	e3a01000 	mov	r1, #0
    dc68:	e3a00001 	mov	r0, #1
    dc6c:	e1a02001 	mov	r2, r1
    dc70:	ea000066 	b	de10 <sys_vtimer_ctrl>

0000dc74 <guest_OS_Timer_Enable>:
    dc74:	e3a01000 	mov	r1, #0
    dc78:	e3a00002 	mov	r0, #2
    dc7c:	e1a02001 	mov	r2, r1
    dc80:	ea000062 	b	de10 <sys_vtimer_ctrl>

0000dc84 <guest_OS_Mbox_Post>:
    dc84:	ea00006a 	b	de34 <sys_mbox_post>

0000dc88 <guest_OS_Mbox_Read>:
    dc88:	ea00006f 	b	de4c <sys_mbox_read>

0000dc8c <guest_OS_GetPhysAddr>:
    dc8c:	ea000074 	b	de64 <sys_address_v2p>

0000dc90 <guest_idle>:
    dc90:	e12fff1e 	bx	lr

0000dc94 <_guest_os_start>:
    dc94:	e51fd000 	ldr	sp, [pc, #-0]	; dc9c <_guest_os_start+0x8>
    dc98:	ea000005 	b	dcb4 <_guest_os_start_pre>
    dc9c:	00017450 	andeq	r7, r1, r0, asr r4
    dca0:	0001066c 	andeq	r0, r1, ip, ror #12
    dca4:	0001066c 	andeq	r0, r1, ip, ror #12
    dca8:	0001066c 	andeq	r0, r1, ip, ror #12
    dcac:	00013450 	andeq	r3, r1, r0, asr r4
    dcb0:	00017450 	andeq	r7, r1, r0, asr r4

0000dcb4 <_guest_os_start_pre>:
    dcb4:	e3a00000 	mov	r0, #0
    dcb8:	e51f1020 	ldr	r1, [pc, #-32]	; dca0 <_guest_os_start+0xc>
    dcbc:	e51f2020 	ldr	r2, [pc, #-32]	; dca4 <_guest_os_start+0x10>
    dcc0:	e1510002 	cmp	r1, r2
    dcc4:	aa000001 	bge	dcd0 <_guest_os_start_pre+0x1c>
    dcc8:	e4810004 	str	r0, [r1], #4
    dccc:	eafffffb 	b	dcc0 <_guest_os_start_pre+0xc>
    dcd0:	e51f1030 	ldr	r1, [pc, #-48]	; dca8 <_guest_os_start+0x14>
    dcd4:	e51f2030 	ldr	r2, [pc, #-48]	; dcac <_guest_os_start+0x18>
    dcd8:	e1510002 	cmp	r1, r2
    dcdc:	aa000001 	bge	dce8 <_guest_os_start_pre+0x34>
    dce0:	e4810004 	str	r0, [r1], #4
    dce4:	eafffffb 	b	dcd8 <_guest_os_start_pre+0x24>
    dce8:	e51fd040 	ldr	sp, [pc, #-64]	; dcb0 <_guest_os_start+0x1c>
    dcec:	eb0006a4 	bl	f784 <__libc_init_array>
    dcf0:	e3a00000 	mov	r0, #0
    dcf4:	e3a01000 	mov	r1, #0
    dcf8:	eb000778 	bl	fae0 <main>
    dcfc:	eb000691 	bl	f748 <__libc_fini_array>
    dd00:	eb000683 	bl	f714 <exit>
    dd04:	eafffffe 	b	dd04 <_guest_os_start_pre+0x50>

0000dd08 <Xil_Time_SetTime>:
    dd08:	e92d4070 	push	{r4, r5, r6, lr}
    dd0c:	e3a04f82 	mov	r4, #520	; 0x208
    dd10:	e34f48f0 	movt	r4, #63728	; 0xf8f0
    dd14:	e1a06000 	mov	r6, r0
    dd18:	e1a05001 	mov	r5, r1
    dd1c:	e3a01000 	mov	r1, #0
    dd20:	e1a00004 	mov	r0, r4
    dd24:	eb000296 	bl	e784 <Xil_Out32>
    dd28:	e1a01006 	mov	r1, r6
    dd2c:	e3a00c02 	mov	r0, #512	; 0x200
    dd30:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    dd34:	eb000292 	bl	e784 <Xil_Out32>
    dd38:	e1a01005 	mov	r1, r5
    dd3c:	e3a00f81 	mov	r0, #516	; 0x204
    dd40:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    dd44:	eb00028e 	bl	e784 <Xil_Out32>
    dd48:	e1a00004 	mov	r0, r4
    dd4c:	e3a01001 	mov	r1, #1
    dd50:	e8bd4070 	pop	{r4, r5, r6, lr}
    dd54:	ea00028a 	b	e784 <Xil_Out32>

0000dd58 <timeprint_low>:
    dd58:	e92d4008 	push	{r3, lr}
    dd5c:	e3a00c02 	mov	r0, #512	; 0x200
    dd60:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    dd64:	eb00027d 	bl	e760 <Xil_In32>
    dd68:	e1a01000 	mov	r1, r0
    dd6c:	e30f0fe8 	movw	r0, #65512	; 0xffe8
    dd70:	e3400000 	movt	r0, #0
    dd74:	e8bd4008 	pop	{r3, lr}
    dd78:	ea000302 	b	e988 <xil_printf>

0000dd7c <syscall>:
    dd7c:	e92d4000 	stmfd	sp!, {lr}
    dd80:	ef000000 	svc	0x00000000
    dd84:	e8bd8000 	ldmfd	sp!, {pc}

0000dd88 <sys_yield>:
    dd88:	e3a01000 	mov	r1, #0
    dd8c:	e3a00001 	mov	r0, #1
    dd90:	e1a02001 	mov	r2, r1
    dd94:	e1a03001 	mov	r3, r1
    dd98:	eafffff7 	b	dd7c <syscall>

0000dd9c <sys_dcache_disable>:
    dd9c:	e3a01000 	mov	r1, #0
    dda0:	e3a00003 	mov	r0, #3
    dda4:	e1a02001 	mov	r2, r1
    dda8:	e1a03001 	mov	r3, r1
    ddac:	eafffff2 	b	dd7c <syscall>

0000ddb0 <sys_icache_disable>:
    ddb0:	e3a01000 	mov	r1, #0
    ddb4:	e3a00004 	mov	r0, #4
    ddb8:	e1a02001 	mov	r2, r1
    ddbc:	e1a03001 	mov	r3, r1
    ddc0:	eaffffed 	b	dd7c <syscall>

0000ddc4 <sys_dcache_enable>:
    ddc4:	e3a01000 	mov	r1, #0
    ddc8:	e3a00005 	mov	r0, #5
    ddcc:	e1a02001 	mov	r2, r1
    ddd0:	e1a03001 	mov	r3, r1
    ddd4:	eaffffe8 	b	dd7c <syscall>

0000ddd8 <sys_icache_enable>:
    ddd8:	e3a01000 	mov	r1, #0
    dddc:	e3a00006 	mov	r0, #6
    dde0:	e1a02001 	mov	r2, r1
    dde4:	e1a03001 	mov	r3, r1
    dde8:	eaffffe3 	b	dd7c <syscall>

0000ddec <sys_virq_ctrl>:
    ddec:	e1a0c001 	mov	ip, r1
    ddf0:	e1a03002 	mov	r3, r2
    ddf4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    ddf8:	e1a04000 	mov	r4, r0
    ddfc:	e1a01004 	mov	r1, r4
    de00:	e3a00008 	mov	r0, #8
    de04:	e1a0200c 	mov	r2, ip
    de08:	e8bd0010 	ldmfd	sp!, {r4}
    de0c:	eaffffda 	b	dd7c <syscall>

0000de10 <sys_vtimer_ctrl>:
    de10:	e1a0c001 	mov	ip, r1
    de14:	e1a03002 	mov	r3, r2
    de18:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    de1c:	e1a04000 	mov	r4, r0
    de20:	e1a01004 	mov	r1, r4
    de24:	e3a0000b 	mov	r0, #11
    de28:	e1a0200c 	mov	r2, ip
    de2c:	e8bd0010 	ldmfd	sp!, {r4}
    de30:	eaffffd1 	b	dd7c <syscall>

0000de34 <sys_mbox_post>:
    de34:	e1a03000 	mov	r3, r0
    de38:	e1a02001 	mov	r2, r1
    de3c:	e3a0000d 	mov	r0, #13
    de40:	e1a01003 	mov	r1, r3
    de44:	e3a03000 	mov	r3, #0
    de48:	eaffffcb 	b	dd7c <syscall>

0000de4c <sys_mbox_read>:
    de4c:	e1a03000 	mov	r3, r0
    de50:	e1a02001 	mov	r2, r1
    de54:	e3a0000e 	mov	r0, #14
    de58:	e1a01003 	mov	r1, r3
    de5c:	e3a03000 	mov	r3, #0
    de60:	eaffffc5 	b	dd7c <syscall>

0000de64 <sys_address_v2p>:
    de64:	e3a02000 	mov	r2, #0
    de68:	e1a01000 	mov	r1, r0
    de6c:	e1a03002 	mov	r3, r2
    de70:	e3a0001a 	mov	r0, #26
    de74:	eaffffc0 	b	dd7c <syscall>

0000de78 <AppPrint>:
    de78:	e92d4030 	push	{r4, r5, lr}
    de7c:	e30343d8 	movw	r4, #13272	; 0x33d8
    de80:	e3404001 	movt	r4, #1
    de84:	e24dd00c 	sub	sp, sp, #12
    de88:	e1a05000 	mov	r5, r0
    de8c:	e3a01000 	mov	r1, #0
    de90:	e28d2007 	add	r2, sp, #7
    de94:	e5940000 	ldr	r0, [r4]
    de98:	ebfff01f 	bl	9f1c <OSMutexPend>
    de9c:	e1a00005 	mov	r0, r5
    dea0:	eb00005c 	bl	e018 <print>
    dea4:	e5940000 	ldr	r0, [r4]
    dea8:	ebfff0da 	bl	a218 <OSMutexPost>
    deac:	e28dd00c 	add	sp, sp, #12
    deb0:	e8bd8030 	pop	{r4, r5, pc}

0000deb4 <AppTaskStart>:
    deb4:	e92d4080 	push	{r7, lr}
    deb8:	e30f0fec 	movw	r0, #65516	; 0xffec
    debc:	e24dd020 	sub	sp, sp, #32
    dec0:	e3400000 	movt	r0, #0
    dec4:	eb000053 	bl	e018 <print>
    dec8:	e3004e88 	movw	r4, #3720	; 0xe88
    decc:	ebfff7c3 	bl	bde0 <guest_OS_CSP_TickInit>
    ded0:	e3404001 	movt	r4, #1
    ded4:	ebfff871 	bl	c0a0 <Mem_Init>
    ded8:	e3a06000 	mov	r6, #0
    dedc:	ebfff857 	bl	c040 <Math_Init>
    dee0:	e28d101f 	add	r1, sp, #31
    dee4:	e3a00014 	mov	r0, #20
    dee8:	e3a05003 	mov	r5, #3
    deec:	ebffef59 	bl	9c58 <OSMutexCreate>
    def0:	e303c3d8 	movw	ip, #13272	; 0x33d8
    def4:	e340c001 	movt	ip, #1
    def8:	e3a0e002 	mov	lr, #2
    defc:	e2842e7f 	add	r2, r4, #2032	; 0x7f0
    df00:	e3a07c02 	mov	r7, #512	; 0x200
    df04:	e1a01006 	mov	r1, r6
    df08:	e282200c 	add	r2, r2, #12
    df0c:	e1a0300e 	mov	r3, lr
    df10:	e98d0090 	stmib	sp, {r4, r7}
    df14:	e58de000 	str	lr, [sp]
    df18:	e58d600c 	str	r6, [sp, #12]
    df1c:	e58d5010 	str	r5, [sp, #16]
    df20:	e58c0000 	str	r0, [ip]
    df24:	e30d0fc0 	movw	r0, #57280	; 0xdfc0
    df28:	e3400000 	movt	r0, #0
    df2c:	ebfff33b 	bl	ac20 <OSTaskCreateExt>
    df30:	e2842eff 	add	r2, r4, #4080	; 0xff0
    df34:	e30d0f88 	movw	r0, #57224	; 0xdf88
    df38:	e2844b02 	add	r4, r4, #2048	; 0x800
    df3c:	e58d5000 	str	r5, [sp]
    df40:	e3400000 	movt	r0, #0
    df44:	e58d4004 	str	r4, [sp, #4]
    df48:	e1a01006 	mov	r1, r6
    df4c:	e58d7008 	str	r7, [sp, #8]
    df50:	e282200c 	add	r2, r2, #12
    df54:	e58d600c 	str	r6, [sp, #12]
    df58:	e1a03005 	mov	r3, r5
    df5c:	e58d5010 	str	r5, [sp, #16]
    df60:	ebfff32e 	bl	ac20 <OSTaskCreateExt>
    df64:	e3a00000 	mov	r0, #0
    df68:	e3a03064 	mov	r3, #100	; 0x64
    df6c:	e1a01000 	mov	r1, r0
    df70:	e1a02000 	mov	r2, r0
    df74:	ebfff586 	bl	b594 <OSTimeDlyHMSM>
    df78:	e3000004 	movw	r0, #4
    df7c:	e3400001 	movt	r0, #1
    df80:	ebffffbc 	bl	de78 <AppPrint>
    df84:	eafffff6 	b	df64 <AppTaskStart+0xb0>

0000df88 <AppTask5>:
    df88:	e92d4038 	push	{r3, r4, r5, lr}
    df8c:	e3000008 	movw	r0, #8
    df90:	e3400001 	movt	r0, #1
    df94:	e3a04a02 	mov	r4, #8192	; 0x2000
    df98:	ebffffb6 	bl	de78 <AppPrint>
    df9c:	e3414000 	movt	r4, #4096	; 0x1000
    dfa0:	e3a05001 	mov	r5, #1
    dfa4:	e3a00000 	mov	r0, #0
    dfa8:	e3a0303c 	mov	r3, #60	; 0x3c
    dfac:	e1a01000 	mov	r1, r0
    dfb0:	e1a02000 	mov	r2, r0
    dfb4:	ebfff576 	bl	b594 <OSTimeDlyHMSM>
    dfb8:	e5845004 	str	r5, [r4, #4]
    dfbc:	eafffff8 	b	dfa4 <AppTask5+0x1c>

0000dfc0 <AppTask4>:
    dfc0:	e92d4010 	push	{r4, lr}
    dfc4:	e300001c 	movw	r0, #28
    dfc8:	e3400001 	movt	r0, #1
    dfcc:	e3a04001 	mov	r4, #1
    dfd0:	ebffffa8 	bl	de78 <AppPrint>
    dfd4:	e3a00000 	mov	r0, #0
    dfd8:	e3a03032 	mov	r3, #50	; 0x32
    dfdc:	e1a01000 	mov	r1, r0
    dfe0:	e1a02000 	mov	r2, r0
    dfe4:	ebfff56a 	bl	b594 <OSTimeDlyHMSM>
    dfe8:	e3a03a01 	mov	r3, #4096	; 0x1000
    dfec:	e7df3813 	bfi	r3, r3, #16, #16
    dff0:	e5834004 	str	r4, [r3, #4]
    dff4:	eafffff6 	b	dfd4 <AppTask4+0x14>

0000dff8 <App_TaskCreateHook>:
    dff8:	e12fff1e 	bx	lr

0000dffc <App_TaskDelHook>:
    dffc:	e12fff1e 	bx	lr

0000e000 <App_TaskIdleHook>:
    e000:	eaffff22 	b	dc90 <guest_idle>

0000e004 <App_TaskReturnHook>:
    e004:	e12fff1e 	bx	lr

0000e008 <App_TaskStatHook>:
    e008:	e12fff1e 	bx	lr

0000e00c <App_TaskSwHook>:
    e00c:	e12fff1e 	bx	lr

0000e010 <App_TCBInitHook>:
    e010:	e12fff1e 	bx	lr

0000e014 <App_TimeTickHook>:
    e014:	e12fff1e 	bx	lr

0000e018 <print>:
    e018:	e92d4010 	push	{r4, lr}
    e01c:	e1a04000 	mov	r4, r0
    e020:	e5d00000 	ldrb	r0, [r0]
    e024:	e3500000 	cmp	r0, #0
    e028:	08bd8010 	popeq	{r4, pc}
    e02c:	eb000508 	bl	f454 <outbyte>
    e030:	e5f40001 	ldrb	r0, [r4, #1]!
    e034:	e3500000 	cmp	r0, #0
    e038:	1afffffb 	bne	e02c <print+0x14>
    e03c:	e8bd8010 	pop	{r4, pc}

0000e040 <Xil_DCacheInvalidateRange>:
    e040:	e3510000 	cmp	r1, #0
    e044:	e92d4008 	push	{r3, lr}
    e048:	0a00000c 	beq	e080 <Xil_DCacheInvalidateRange+0x40>
    e04c:	e0813000 	add	r3, r1, r0
    e050:	e3a02000 	mov	r2, #0
    e054:	e3c0001f 	bic	r0, r0, #31
    e058:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
    e05c:	e1530000 	cmp	r3, r0
    e060:	9a000006 	bls	e080 <Xil_DCacheInvalidateRange+0x40>
    e064:	e3a02a02 	mov	r2, #8192	; 0x2000
    e068:	e34f28f0 	movt	r2, #63728	; 0xf8f0
    e06c:	ee070f36 	mcr	15, 0, r0, cr7, cr6, {1}
    e070:	e5820770 	str	r0, [r2, #1904]	; 0x770
    e074:	e2800020 	add	r0, r0, #32
    e078:	e1530000 	cmp	r3, r0
    e07c:	8afffffa 	bhi	e06c <Xil_DCacheInvalidateRange+0x2c>
    e080:	f57ff04f 	dsb	sy
    e084:	e3020730 	movw	r0, #10032	; 0x2730
    e088:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e08c:	eb0001b3 	bl	e760 <Xil_In32>
    e090:	e3500000 	cmp	r0, #0
    e094:	1afffffa 	bne	e084 <Xil_DCacheInvalidateRange+0x44>
    e098:	e8bd8008 	pop	{r3, pc}

0000e09c <Xil_DCacheFlushRange>:
    e09c:	e3510000 	cmp	r1, #0
    e0a0:	e92d4008 	push	{r3, lr}
    e0a4:	0a00000c 	beq	e0dc <Xil_DCacheFlushRange+0x40>
    e0a8:	e0813000 	add	r3, r1, r0
    e0ac:	e3a02000 	mov	r2, #0
    e0b0:	e3c0001f 	bic	r0, r0, #31
    e0b4:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
    e0b8:	e1530000 	cmp	r3, r0
    e0bc:	9a000006 	bls	e0dc <Xil_DCacheFlushRange+0x40>
    e0c0:	e3a02a02 	mov	r2, #8192	; 0x2000
    e0c4:	e34f28f0 	movt	r2, #63728	; 0xf8f0
    e0c8:	ee070f3e 	mcr	15, 0, r0, cr7, cr14, {1}
    e0cc:	e58207f0 	str	r0, [r2, #2032]	; 0x7f0
    e0d0:	e2800020 	add	r0, r0, #32
    e0d4:	e1530000 	cmp	r3, r0
    e0d8:	8afffffa 	bhi	e0c8 <Xil_DCacheFlushRange+0x2c>
    e0dc:	f57ff04f 	dsb	sy
    e0e0:	e3020730 	movw	r0, #10032	; 0x2730
    e0e4:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e0e8:	eb00019c 	bl	e760 <Xil_In32>
    e0ec:	e3500000 	cmp	r0, #0
    e0f0:	1afffffa 	bne	e0e0 <Xil_DCacheFlushRange+0x44>
    e0f4:	e8bd8008 	pop	{r3, pc}

0000e0f8 <Xil_ICacheInvalidateRange>:
    e0f8:	e3510000 	cmp	r1, #0
    e0fc:	e92d4008 	push	{r3, lr}
    e100:	0a00000c 	beq	e138 <Xil_ICacheInvalidateRange+0x40>
    e104:	e0813000 	add	r3, r1, r0
    e108:	e3a02001 	mov	r2, #1
    e10c:	e3c0001f 	bic	r0, r0, #31
    e110:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
    e114:	e1530000 	cmp	r3, r0
    e118:	9a000006 	bls	e138 <Xil_ICacheInvalidateRange+0x40>
    e11c:	e3a02a02 	mov	r2, #8192	; 0x2000
    e120:	e34f28f0 	movt	r2, #63728	; 0xf8f0
    e124:	ee070f35 	mcr	15, 0, r0, cr7, cr5, {1}
    e128:	e5820770 	str	r0, [r2, #1904]	; 0x770
    e12c:	e2800020 	add	r0, r0, #32
    e130:	e1530000 	cmp	r3, r0
    e134:	8afffffa 	bhi	e124 <Xil_ICacheInvalidateRange+0x2c>
    e138:	f57ff04f 	dsb	sy
    e13c:	e3020730 	movw	r0, #10032	; 0x2730
    e140:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e144:	eb000185 	bl	e760 <Xil_In32>
    e148:	e3500000 	cmp	r0, #0
    e14c:	1afffffa 	bne	e13c <Xil_ICacheInvalidateRange+0x44>
    e150:	e8bd8008 	pop	{r3, pc}

0000e154 <Xil_L1DCacheInvalidate>:
    e154:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    e158:	e3a03000 	mov	r3, #0
    e15c:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    e160:	f57ff06f 	isb	sy
    e164:	ee304f10 	mrc	15, 1, r4, cr0, cr0, {0}
    e168:	e7e806d4 	ubfx	r0, r4, #13, #9
    e16c:	e7e681d4 	ubfx	r8, r4, #3, #7
    e170:	e2800001 	add	r0, r0, #1
    e174:	e2888001 	add	r8, r8, #1
    e178:	e3a05001 	mov	r5, #1
    e17c:	e3a06000 	mov	r6, #0
    e180:	e1a01008 	mov	r1, r8
    e184:	e1a00380 	lsl	r0, r0, #7
    e188:	eb0004dd 	bl	f504 <__aeabi_uidiv>
    e18c:	e2043007 	and	r3, r4, #7
    e190:	e2833004 	add	r3, r3, #4
    e194:	e1a07006 	mov	r7, r6
    e198:	e1a05315 	lsl	r5, r5, r3
    e19c:	e1a00330 	lsr	r0, r0, r3
    e1a0:	e2401001 	sub	r1, r0, #1
    e1a4:	e0215195 	mla	r1, r5, r1, r5
    e1a8:	e3500000 	cmp	r0, #0
    e1ac:	e1a04f06 	lsl	r4, r6, #30
    e1b0:	11a02007 	movne	r2, r7
    e1b4:	13a03000 	movne	r3, #0
    e1b8:	0a000006 	beq	e1d8 <Xil_L1DCacheInvalidate+0x84>
    e1bc:	e182c004 	orr	ip, r2, r4
    e1c0:	ee07cf56 	mcr	15, 0, ip, cr7, cr6, {2}
    e1c4:	e2833001 	add	r3, r3, #1
    e1c8:	e0822005 	add	r2, r2, r5
    e1cc:	e1530000 	cmp	r3, r0
    e1d0:	1afffff9 	bne	e1bc <Xil_L1DCacheInvalidate+0x68>
    e1d4:	e0877001 	add	r7, r7, r1
    e1d8:	e2866001 	add	r6, r6, #1
    e1dc:	e1580006 	cmp	r8, r6
    e1e0:	8afffff0 	bhi	e1a8 <Xil_L1DCacheInvalidate+0x54>
    e1e4:	f57ff04f 	dsb	sy
    e1e8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0000e1ec <Xil_L1DCacheEnable>:
    e1ec:	e92d4010 	push	{r4, lr}
    e1f0:	ee114f10 	mrc	15, 0, r4, cr1, cr0, {0}
    e1f4:	e3140004 	tst	r4, #4
    e1f8:	18bd8010 	popne	{r4, pc}
    e1fc:	ebffffd4 	bl	e154 <Xil_L1DCacheInvalidate>
    e200:	e3844004 	orr	r4, r4, #4
    e204:	ee014f10 	mcr	15, 0, r4, cr1, cr0, {0}
    e208:	e8bd8010 	pop	{r4, pc}

0000e20c <Xil_L1DCacheInvalidateLine>:
    e20c:	e3a03000 	mov	r3, #0
    e210:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    e214:	e3c0001f 	bic	r0, r0, #31
    e218:	ee070f36 	mcr	15, 0, r0, cr7, cr6, {1}
    e21c:	f57ff04f 	dsb	sy
    e220:	e12fff1e 	bx	lr

0000e224 <Xil_L1DCacheInvalidateRange>:
    e224:	e3510000 	cmp	r1, #0
    e228:	0a000009 	beq	e254 <Xil_L1DCacheInvalidateRange+0x30>
    e22c:	e0813000 	add	r3, r1, r0
    e230:	e3a02000 	mov	r2, #0
    e234:	e3c0001f 	bic	r0, r0, #31
    e238:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
    e23c:	e1530000 	cmp	r3, r0
    e240:	9a000003 	bls	e254 <Xil_L1DCacheInvalidateRange+0x30>
    e244:	ee070f36 	mcr	15, 0, r0, cr7, cr6, {1}
    e248:	e2800020 	add	r0, r0, #32
    e24c:	e1530000 	cmp	r3, r0
    e250:	8afffffb 	bhi	e244 <Xil_L1DCacheInvalidateRange+0x20>
    e254:	f57ff04f 	dsb	sy
    e258:	e12fff1e 	bx	lr

0000e25c <Xil_L1DCacheFlush>:
    e25c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    e260:	e3a03000 	mov	r3, #0
    e264:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    e268:	f57ff06f 	isb	sy
    e26c:	ee304f10 	mrc	15, 1, r4, cr0, cr0, {0}
    e270:	e7e806d4 	ubfx	r0, r4, #13, #9
    e274:	e7e681d4 	ubfx	r8, r4, #3, #7
    e278:	e2800001 	add	r0, r0, #1
    e27c:	e2888001 	add	r8, r8, #1
    e280:	e3a05001 	mov	r5, #1
    e284:	e3a06000 	mov	r6, #0
    e288:	e1a01008 	mov	r1, r8
    e28c:	e1a00380 	lsl	r0, r0, #7
    e290:	eb00049b 	bl	f504 <__aeabi_uidiv>
    e294:	e2043007 	and	r3, r4, #7
    e298:	e2833004 	add	r3, r3, #4
    e29c:	e1a07006 	mov	r7, r6
    e2a0:	e1a05315 	lsl	r5, r5, r3
    e2a4:	e1a00330 	lsr	r0, r0, r3
    e2a8:	e2401001 	sub	r1, r0, #1
    e2ac:	e0215195 	mla	r1, r5, r1, r5
    e2b0:	e3500000 	cmp	r0, #0
    e2b4:	e1a04f06 	lsl	r4, r6, #30
    e2b8:	11a02007 	movne	r2, r7
    e2bc:	13a03000 	movne	r3, #0
    e2c0:	0a000006 	beq	e2e0 <Xil_L1DCacheFlush+0x84>
    e2c4:	e182c004 	orr	ip, r2, r4
    e2c8:	ee07cf5e 	mcr	15, 0, ip, cr7, cr14, {2}
    e2cc:	e2833001 	add	r3, r3, #1
    e2d0:	e0822005 	add	r2, r2, r5
    e2d4:	e1530000 	cmp	r3, r0
    e2d8:	1afffff9 	bne	e2c4 <Xil_L1DCacheFlush+0x68>
    e2dc:	e0877001 	add	r7, r7, r1
    e2e0:	e2866001 	add	r6, r6, #1
    e2e4:	e1580006 	cmp	r8, r6
    e2e8:	8afffff0 	bhi	e2b0 <Xil_L1DCacheFlush+0x54>
    e2ec:	f57ff04f 	dsb	sy
    e2f0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0000e2f4 <Xil_L1DCacheDisable>:
    e2f4:	e92d4008 	push	{r3, lr}
    e2f8:	ebffffd7 	bl	e25c <Xil_L1DCacheFlush>
    e2fc:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
    e300:	e3c33004 	bic	r3, r3, #4
    e304:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
    e308:	e8bd8008 	pop	{r3, pc}

0000e30c <Xil_L1DCacheFlushLine>:
    e30c:	e3a03000 	mov	r3, #0
    e310:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    e314:	e3c0001f 	bic	r0, r0, #31
    e318:	ee070f3e 	mcr	15, 0, r0, cr7, cr14, {1}
    e31c:	f57ff04f 	dsb	sy
    e320:	e12fff1e 	bx	lr

0000e324 <Xil_L1DCacheFlushRange>:
    e324:	e3510000 	cmp	r1, #0
    e328:	0a000009 	beq	e354 <Xil_L1DCacheFlushRange+0x30>
    e32c:	e0813000 	add	r3, r1, r0
    e330:	e3a02000 	mov	r2, #0
    e334:	e3c0001f 	bic	r0, r0, #31
    e338:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
    e33c:	e1530000 	cmp	r3, r0
    e340:	9a000003 	bls	e354 <Xil_L1DCacheFlushRange+0x30>
    e344:	ee070f3e 	mcr	15, 0, r0, cr7, cr14, {1}
    e348:	e2800020 	add	r0, r0, #32
    e34c:	e1530000 	cmp	r3, r0
    e350:	8afffffb 	bhi	e344 <Xil_L1DCacheFlushRange+0x20>
    e354:	f57ff04f 	dsb	sy
    e358:	e12fff1e 	bx	lr

0000e35c <Xil_L1DCacheStoreLine>:
    e35c:	e3a03000 	mov	r3, #0
    e360:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    e364:	e3c0001f 	bic	r0, r0, #31
    e368:	ee070f3a 	mcr	15, 0, r0, cr7, cr10, {1}
    e36c:	f57ff04f 	dsb	sy
    e370:	e12fff1e 	bx	lr

0000e374 <Xil_L1ICacheEnable>:
    e374:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
    e378:	e2132a01 	ands	r2, r3, #4096	; 0x1000
    e37c:	112fff1e 	bxne	lr
    e380:	ee072f15 	mcr	15, 0, r2, cr7, cr5, {0}
    e384:	e3833a01 	orr	r3, r3, #4096	; 0x1000
    e388:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
    e38c:	e12fff1e 	bx	lr

0000e390 <Xil_L1ICacheDisable>:
    e390:	f57ff04f 	dsb	sy
    e394:	e3a03000 	mov	r3, #0
    e398:	ee073f15 	mcr	15, 0, r3, cr7, cr5, {0}
    e39c:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
    e3a0:	e3c33a01 	bic	r3, r3, #4096	; 0x1000
    e3a4:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
    e3a8:	e12fff1e 	bx	lr

0000e3ac <Xil_L1ICacheInvalidate>:
    e3ac:	e3a03001 	mov	r3, #1
    e3b0:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    e3b4:	e3a03000 	mov	r3, #0
    e3b8:	ee073f15 	mcr	15, 0, r3, cr7, cr5, {0}
    e3bc:	f57ff04f 	dsb	sy
    e3c0:	e12fff1e 	bx	lr

0000e3c4 <Xil_L1ICacheInvalidateLine>:
    e3c4:	e3a03001 	mov	r3, #1
    e3c8:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    e3cc:	e3c0001f 	bic	r0, r0, #31
    e3d0:	ee070f35 	mcr	15, 0, r0, cr7, cr5, {1}
    e3d4:	f57ff04f 	dsb	sy
    e3d8:	e12fff1e 	bx	lr

0000e3dc <Xil_L1ICacheInvalidateRange>:
    e3dc:	e3510000 	cmp	r1, #0
    e3e0:	0a000009 	beq	e40c <Xil_L1ICacheInvalidateRange+0x30>
    e3e4:	e0813000 	add	r3, r1, r0
    e3e8:	e3a02001 	mov	r2, #1
    e3ec:	e3c0001f 	bic	r0, r0, #31
    e3f0:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
    e3f4:	e1530000 	cmp	r3, r0
    e3f8:	9a000003 	bls	e40c <Xil_L1ICacheInvalidateRange+0x30>
    e3fc:	ee070f35 	mcr	15, 0, r0, cr7, cr5, {1}
    e400:	e2800020 	add	r0, r0, #32
    e404:	e1530000 	cmp	r3, r0
    e408:	8afffffb 	bhi	e3fc <Xil_L1ICacheInvalidateRange+0x20>
    e40c:	f57ff04f 	dsb	sy
    e410:	e12fff1e 	bx	lr

0000e414 <Xil_L2CacheEnable>:
    e414:	e92d4008 	push	{r3, lr}
    e418:	e3a00c21 	mov	r0, #8448	; 0x2100
    e41c:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e420:	eb0000ce 	bl	e760 <Xil_In32>
    e424:	e3100001 	tst	r0, #1
    e428:	1a00001e 	bne	e4a8 <Xil_L2CacheEnable+0x94>
    e42c:	e3020104 	movw	r0, #8452	; 0x2104
    e430:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e434:	eb0000c9 	bl	e760 <Xil_In32>
    e438:	e3c0180e 	bic	r1, r0, #917504	; 0xe0000
    e43c:	e3020104 	movw	r0, #8452	; 0x2104
    e440:	e3811207 	orr	r1, r1, #1879048192	; 0x70000000
    e444:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e448:	e3811a21 	orr	r1, r1, #135168	; 0x21000
    e44c:	eb0000cc 	bl	e784 <Xil_Out32>
    e450:	e3001121 	movw	r1, #289	; 0x121
    e454:	e3020108 	movw	r0, #8456	; 0x2108
    e458:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e45c:	eb0000c8 	bl	e784 <Xil_Out32>
    e460:	e3001121 	movw	r1, #289	; 0x121
    e464:	e302010c 	movw	r0, #8460	; 0x210c
    e468:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e46c:	eb0000c4 	bl	e784 <Xil_Out32>
    e470:	e302021c 	movw	r0, #8732	; 0x221c
    e474:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e478:	eb0000b8 	bl	e760 <Xil_In32>
    e47c:	e1a01000 	mov	r1, r0
    e480:	e3020220 	movw	r0, #8736	; 0x2220
    e484:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e488:	eb0000bd 	bl	e784 <Xil_Out32>
    e48c:	e3a00c21 	mov	r0, #8448	; 0x2100
    e490:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e494:	eb0000b1 	bl	e760 <Xil_In32>
    e498:	e3801001 	orr	r1, r0, #1
    e49c:	e3a00c21 	mov	r0, #8448	; 0x2100
    e4a0:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e4a4:	eb0000b6 	bl	e784 <Xil_Out32>
    e4a8:	f57ff04f 	dsb	sy
    e4ac:	e8bd8008 	pop	{r3, pc}

0000e4b0 <Xil_ICacheEnable>:
    e4b0:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
    e4b4:	e2132a01 	ands	r2, r3, #4096	; 0x1000
    e4b8:	1a000002 	bne	e4c8 <Xil_ICacheEnable+0x18>
    e4bc:	ee072f15 	mcr	15, 0, r2, cr7, cr5, {0}
    e4c0:	e3833a01 	orr	r3, r3, #4096	; 0x1000
    e4c4:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
    e4c8:	eaffffd1 	b	e414 <Xil_L2CacheEnable>

0000e4cc <Xil_DCacheEnable>:
    e4cc:	e92d4008 	push	{r3, lr}
    e4d0:	ebffff45 	bl	e1ec <Xil_L1DCacheEnable>
    e4d4:	e8bd4008 	pop	{r3, lr}
    e4d8:	eaffffcd 	b	e414 <Xil_L2CacheEnable>

0000e4dc <Xil_L2CacheDisable>:
    e4dc:	e30207fc 	movw	r0, #10236	; 0x27fc
    e4e0:	e30f1fff 	movw	r1, #65535	; 0xffff
    e4e4:	e92d4008 	push	{r3, lr}
    e4e8:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e4ec:	eb0000a4 	bl	e784 <Xil_Out32>
    e4f0:	e3020730 	movw	r0, #10032	; 0x2730
    e4f4:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e4f8:	eb000098 	bl	e760 <Xil_In32>
    e4fc:	e3500000 	cmp	r0, #0
    e500:	1afffffa 	bne	e4f0 <Xil_L2CacheDisable+0x14>
    e504:	f57ff04f 	dsb	sy
    e508:	e3a00c21 	mov	r0, #8448	; 0x2100
    e50c:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e510:	eb000092 	bl	e760 <Xil_In32>
    e514:	e3c01001 	bic	r1, r0, #1
    e518:	e3a00c21 	mov	r0, #8448	; 0x2100
    e51c:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e520:	e8bd4008 	pop	{r3, lr}
    e524:	ea000096 	b	e784 <Xil_Out32>

0000e528 <Xil_ICacheDisable>:
    e528:	e92d4008 	push	{r3, lr}
    e52c:	ebffffea 	bl	e4dc <Xil_L2CacheDisable>
    e530:	f57ff04f 	dsb	sy
    e534:	e3a03000 	mov	r3, #0
    e538:	ee073f15 	mcr	15, 0, r3, cr7, cr5, {0}
    e53c:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
    e540:	e3c33a01 	bic	r3, r3, #4096	; 0x1000
    e544:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
    e548:	e8bd8008 	pop	{r3, pc}

0000e54c <Xil_DCacheDisable>:
    e54c:	e92d4008 	push	{r3, lr}
    e550:	ebffffe1 	bl	e4dc <Xil_L2CacheDisable>
    e554:	e8bd4008 	pop	{r3, lr}
    e558:	eaffff65 	b	e2f4 <Xil_L1DCacheDisable>

0000e55c <Xil_L2CacheInvalidate>:
    e55c:	e302077c 	movw	r0, #10108	; 0x277c
    e560:	e30f1fff 	movw	r1, #65535	; 0xffff
    e564:	e92d4008 	push	{r3, lr}
    e568:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e56c:	eb000084 	bl	e784 <Xil_Out32>
    e570:	e3020730 	movw	r0, #10032	; 0x2730
    e574:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e578:	eb000078 	bl	e760 <Xil_In32>
    e57c:	e3500000 	cmp	r0, #0
    e580:	1afffffa 	bne	e570 <Xil_L2CacheInvalidate+0x14>
    e584:	f57ff04f 	dsb	sy
    e588:	e8bd8008 	pop	{r3, pc}

0000e58c <Xil_ICacheInvalidate>:
    e58c:	e3a03001 	mov	r3, #1
    e590:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    e594:	e3a03000 	mov	r3, #0
    e598:	ee073f15 	mcr	15, 0, r3, cr7, cr5, {0}
    e59c:	f57ff04f 	dsb	sy
    e5a0:	eaffffed 	b	e55c <Xil_L2CacheInvalidate>

0000e5a4 <Xil_DCacheInvalidate>:
    e5a4:	e92d4008 	push	{r3, lr}
    e5a8:	ebfffee9 	bl	e154 <Xil_L1DCacheInvalidate>
    e5ac:	e8bd4008 	pop	{r3, lr}
    e5b0:	eaffffe9 	b	e55c <Xil_L2CacheInvalidate>

0000e5b4 <Xil_L2CacheInvalidateLine>:
    e5b4:	e1a01000 	mov	r1, r0
    e5b8:	e3020770 	movw	r0, #10096	; 0x2770
    e5bc:	e92d4008 	push	{r3, lr}
    e5c0:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e5c4:	eb00006e 	bl	e784 <Xil_Out32>
    e5c8:	f57ff04f 	dsb	sy
    e5cc:	e8bd8008 	pop	{r3, pc}

0000e5d0 <Xil_ICacheInvalidateLine>:
    e5d0:	e3a03001 	mov	r3, #1
    e5d4:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    e5d8:	e3c0301f 	bic	r3, r0, #31
    e5dc:	ee073f35 	mcr	15, 0, r3, cr7, cr5, {1}
    e5e0:	f57ff04f 	dsb	sy
    e5e4:	eafffff2 	b	e5b4 <Xil_L2CacheInvalidateLine>

0000e5e8 <Xil_DCacheInvalidateLine>:
    e5e8:	e3a03000 	mov	r3, #0
    e5ec:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    e5f0:	e3c0301f 	bic	r3, r0, #31
    e5f4:	ee073f36 	mcr	15, 0, r3, cr7, cr6, {1}
    e5f8:	f57ff04f 	dsb	sy
    e5fc:	eaffffec 	b	e5b4 <Xil_L2CacheInvalidateLine>

0000e600 <Xil_L2CacheInvalidateRange>:
    e600:	e3510000 	cmp	r1, #0
    e604:	e92d4008 	push	{r3, lr}
    e608:	0a000009 	beq	e634 <Xil_L2CacheInvalidateRange+0x34>
    e60c:	e0813000 	add	r3, r1, r0
    e610:	e3c0001f 	bic	r0, r0, #31
    e614:	e1530000 	cmp	r3, r0
    e618:	9a000005 	bls	e634 <Xil_L2CacheInvalidateRange+0x34>
    e61c:	e3a02a02 	mov	r2, #8192	; 0x2000
    e620:	e34f28f0 	movt	r2, #63728	; 0xf8f0
    e624:	e5820770 	str	r0, [r2, #1904]	; 0x770
    e628:	e2800020 	add	r0, r0, #32
    e62c:	e1530000 	cmp	r3, r0
    e630:	8afffffb 	bhi	e624 <Xil_L2CacheInvalidateRange+0x24>
    e634:	e3020730 	movw	r0, #10032	; 0x2730
    e638:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e63c:	eb000047 	bl	e760 <Xil_In32>
    e640:	e3500000 	cmp	r0, #0
    e644:	1afffffa 	bne	e634 <Xil_L2CacheInvalidateRange+0x34>
    e648:	f57ff04f 	dsb	sy
    e64c:	e8bd8008 	pop	{r3, pc}

0000e650 <Xil_L2CacheFlush>:
    e650:	e30207fc 	movw	r0, #10236	; 0x27fc
    e654:	e30f1fff 	movw	r1, #65535	; 0xffff
    e658:	e92d4008 	push	{r3, lr}
    e65c:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e660:	eb000047 	bl	e784 <Xil_Out32>
    e664:	e3020730 	movw	r0, #10032	; 0x2730
    e668:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e66c:	eb00003b 	bl	e760 <Xil_In32>
    e670:	e3500000 	cmp	r0, #0
    e674:	1afffffa 	bne	e664 <Xil_L2CacheFlush+0x14>
    e678:	f57ff04f 	dsb	sy
    e67c:	e8bd8008 	pop	{r3, pc}

0000e680 <Xil_DCacheFlush>:
    e680:	e92d4008 	push	{r3, lr}
    e684:	ebfffef4 	bl	e25c <Xil_L1DCacheFlush>
    e688:	e8bd4008 	pop	{r3, lr}
    e68c:	eaffffef 	b	e650 <Xil_L2CacheFlush>

0000e690 <Xil_L2CacheFlushLine>:
    e690:	e1a01000 	mov	r1, r0
    e694:	e30207f0 	movw	r0, #10224	; 0x27f0
    e698:	e92d4008 	push	{r3, lr}
    e69c:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e6a0:	eb000037 	bl	e784 <Xil_Out32>
    e6a4:	f57ff04f 	dsb	sy
    e6a8:	e8bd8008 	pop	{r3, pc}

0000e6ac <Xil_DCacheFlushLine>:
    e6ac:	e3a03000 	mov	r3, #0
    e6b0:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    e6b4:	e3c0301f 	bic	r3, r0, #31
    e6b8:	ee073f3e 	mcr	15, 0, r3, cr7, cr14, {1}
    e6bc:	f57ff04f 	dsb	sy
    e6c0:	eafffff2 	b	e690 <Xil_L2CacheFlushLine>

0000e6c4 <Xil_L2CacheFlushRange>:
    e6c4:	e3510000 	cmp	r1, #0
    e6c8:	e92d4008 	push	{r3, lr}
    e6cc:	0a000009 	beq	e6f8 <Xil_L2CacheFlushRange+0x34>
    e6d0:	e0813000 	add	r3, r1, r0
    e6d4:	e3c0001f 	bic	r0, r0, #31
    e6d8:	e1530000 	cmp	r3, r0
    e6dc:	9a000005 	bls	e6f8 <Xil_L2CacheFlushRange+0x34>
    e6e0:	e3a02a02 	mov	r2, #8192	; 0x2000
    e6e4:	e34f28f0 	movt	r2, #63728	; 0xf8f0
    e6e8:	e58207f0 	str	r0, [r2, #2032]	; 0x7f0
    e6ec:	e2800020 	add	r0, r0, #32
    e6f0:	e1530000 	cmp	r3, r0
    e6f4:	8afffffb 	bhi	e6e8 <Xil_L2CacheFlushRange+0x24>
    e6f8:	e3020730 	movw	r0, #10032	; 0x2730
    e6fc:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e700:	eb000016 	bl	e760 <Xil_In32>
    e704:	e3500000 	cmp	r0, #0
    e708:	1afffffa 	bne	e6f8 <Xil_L2CacheFlushRange+0x34>
    e70c:	f57ff04f 	dsb	sy
    e710:	e8bd8008 	pop	{r3, pc}

0000e714 <Xil_L2CacheStoreLine>:
    e714:	e1a01000 	mov	r1, r0
    e718:	e30207b0 	movw	r0, #10160	; 0x27b0
    e71c:	e92d4008 	push	{r3, lr}
    e720:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    e724:	eb000016 	bl	e784 <Xil_Out32>
    e728:	f57ff04f 	dsb	sy
    e72c:	e8bd8008 	pop	{r3, pc}

0000e730 <Xil_DCacheStoreLine>:
    e730:	e3a03000 	mov	r3, #0
    e734:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    e738:	e3c0301f 	bic	r3, r0, #31
    e73c:	ee073f3a 	mcr	15, 0, r3, cr7, cr10, {1}
    e740:	f57ff04f 	dsb	sy
    e744:	eafffff2 	b	e714 <Xil_L2CacheStoreLine>

0000e748 <Xil_In8>:
    e748:	f57ff05f 	dmb	sy
    e74c:	e5d00000 	ldrb	r0, [r0]
    e750:	e12fff1e 	bx	lr

0000e754 <Xil_In16>:
    e754:	f57ff05f 	dmb	sy
    e758:	e1d000b0 	ldrh	r0, [r0]
    e75c:	e12fff1e 	bx	lr

0000e760 <Xil_In32>:
    e760:	f57ff05f 	dmb	sy
    e764:	e5900000 	ldr	r0, [r0]
    e768:	e12fff1e 	bx	lr

0000e76c <Xil_Out8>:
    e76c:	e5c01000 	strb	r1, [r0]
    e770:	f57ff05f 	dmb	sy
    e774:	e12fff1e 	bx	lr

0000e778 <Xil_Out16>:
    e778:	e1c010b0 	strh	r1, [r0]
    e77c:	f57ff05f 	dmb	sy
    e780:	e12fff1e 	bx	lr

0000e784 <Xil_Out32>:
    e784:	e5801000 	str	r1, [r0]
    e788:	f57ff05f 	dmb	sy
    e78c:	e12fff1e 	bx	lr

0000e790 <Xil_In16BE>:
    e790:	f57ff05f 	dmb	sy
    e794:	e1d030b0 	ldrh	r3, [r0]
    e798:	e1a02423 	lsr	r2, r3, #8
    e79c:	e1820403 	orr	r0, r2, r3, lsl #8
    e7a0:	e6ff0070 	uxth	r0, r0
    e7a4:	e12fff1e 	bx	lr

0000e7a8 <Xil_In32BE>:
    e7a8:	f57ff05f 	dmb	sy
    e7ac:	e5903000 	ldr	r3, [r0]
    e7b0:	e7e70453 	ubfx	r0, r3, #8, #8
    e7b4:	e1a02823 	lsr	r2, r3, #16
    e7b8:	e6ff3073 	uxth	r3, r3
    e7bc:	e1a01422 	lsr	r1, r2, #8
    e7c0:	e1800403 	orr	r0, r0, r3, lsl #8
    e7c4:	e1812402 	orr	r2, r1, r2, lsl #8
    e7c8:	e6ff2072 	uxth	r2, r2
    e7cc:	e1820800 	orr	r0, r2, r0, lsl #16
    e7d0:	e12fff1e 	bx	lr

0000e7d4 <Xil_Out16BE>:
    e7d4:	e1a03421 	lsr	r3, r1, #8
    e7d8:	e1831401 	orr	r1, r3, r1, lsl #8
    e7dc:	e1c010b0 	strh	r1, [r0]
    e7e0:	f57ff05f 	dmb	sy
    e7e4:	e12fff1e 	bx	lr

0000e7e8 <Xil_Out32BE>:
    e7e8:	e1a03821 	lsr	r3, r1, #16
    e7ec:	e7e72451 	ubfx	r2, r1, #8, #8
    e7f0:	e6ff1071 	uxth	r1, r1
    e7f4:	e1a0c423 	lsr	ip, r3, #8
    e7f8:	e18c3403 	orr	r3, ip, r3, lsl #8
    e7fc:	e1821401 	orr	r1, r2, r1, lsl #8
    e800:	e6ff3073 	uxth	r3, r3
    e804:	e1831801 	orr	r1, r3, r1, lsl #16
    e808:	e5801000 	str	r1, [r0]
    e80c:	f57ff05f 	dmb	sy
    e810:	e12fff1e 	bx	lr

0000e814 <Xil_EndianSwap16>:
    e814:	e1a03420 	lsr	r3, r0, #8
    e818:	e1830400 	orr	r0, r3, r0, lsl #8
    e81c:	e6ff0070 	uxth	r0, r0
    e820:	e12fff1e 	bx	lr

0000e824 <Xil_EndianSwap32>:
    e824:	e1a03820 	lsr	r3, r0, #16
    e828:	e7e71450 	ubfx	r1, r0, #8, #8
    e82c:	e6ff0070 	uxth	r0, r0
    e830:	e1a02423 	lsr	r2, r3, #8
    e834:	e1823403 	orr	r3, r2, r3, lsl #8
    e838:	e1810400 	orr	r0, r1, r0, lsl #8
    e83c:	e6ff3073 	uxth	r3, r3
    e840:	e1830800 	orr	r0, r3, r0, lsl #16
    e844:	e12fff1e 	bx	lr

0000e848 <padding>:
    e848:	e92d4038 	push	{r3, r4, r5, lr}
    e84c:	e1a05001 	mov	r5, r1
    e850:	e5913010 	ldr	r3, [r1, #16]
    e854:	e3530000 	cmp	r3, #0
    e858:	08bd8038 	popeq	{r3, r4, r5, pc}
    e85c:	e3500000 	cmp	r0, #0
    e860:	08bd8038 	popeq	{r3, r4, r5, pc}
    e864:	e5914000 	ldr	r4, [r1]
    e868:	e5913004 	ldr	r3, [r1, #4]
    e86c:	e1540003 	cmp	r4, r3
    e870:	a8bd8038 	popge	{r3, r4, r5, pc}
    e874:	e5d5000c 	ldrb	r0, [r5, #12]
    e878:	e2844001 	add	r4, r4, #1
    e87c:	eb0002f4 	bl	f454 <outbyte>
    e880:	e5953004 	ldr	r3, [r5, #4]
    e884:	e1540003 	cmp	r4, r3
    e888:	bafffff9 	blt	e874 <padding+0x2c>
    e88c:	e8bd8038 	pop	{r3, r4, r5, pc}

0000e890 <outnum>:
    e890:	e300c1e0 	movw	ip, #480	; 0x1e0
    e894:	e340c001 	movt	ip, #1
    e898:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    e89c:	e1a05000 	mov	r5, r0
    e8a0:	e1a06001 	mov	r6, r1
    e8a4:	e1a04fa0 	lsr	r4, r0, #31
    e8a8:	e1a07002 	mov	r7, r2
    e8ac:	e24dd038 	sub	sp, sp, #56	; 0x38
    e8b0:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
    e8b4:	e356000a 	cmp	r6, #10
    e8b8:	13a04000 	movne	r4, #0
    e8bc:	02044001 	andeq	r4, r4, #1
    e8c0:	e28de004 	add	lr, sp, #4
    e8c4:	e3540000 	cmp	r4, #0
    e8c8:	12655000 	rsbne	r5, r5, #0
    e8cc:	13a08001 	movne	r8, #1
    e8d0:	01a08004 	moveq	r8, r4
    e8d4:	e59cc000 	ldr	ip, [ip]
    e8d8:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
    e8dc:	e28d3019 	add	r3, sp, #25
    e8e0:	e5cec000 	strb	ip, [lr]
    e8e4:	e1a00005 	mov	r0, r5
    e8e8:	e1a01006 	mov	r1, r6
    e8ec:	e1a04003 	mov	r4, r3
    e8f0:	eb00037e 	bl	f6f0 <__aeabi_uidivmod>
    e8f4:	e28d2038 	add	r2, sp, #56	; 0x38
    e8f8:	e1a00005 	mov	r0, r5
    e8fc:	e0823001 	add	r3, r2, r1
    e900:	e1a01006 	mov	r1, r6
    e904:	e5533034 	ldrb	r3, [r3, #-52]	; 0xffffffcc
    e908:	e5443001 	strb	r3, [r4, #-1]
    e90c:	eb0002fc 	bl	f504 <__aeabi_uidiv>
    e910:	e2843001 	add	r3, r4, #1
    e914:	e2505000 	subs	r5, r0, #0
    e918:	1afffff1 	bne	e8e4 <outnum+0x54>
    e91c:	e3580000 	cmp	r8, #0
    e920:	e28d5018 	add	r5, sp, #24
    e924:	13a0202d 	movne	r2, #45	; 0x2d
    e928:	15c42000 	strbne	r2, [r4]
    e92c:	11a04003 	movne	r4, r3
    e930:	e1a00005 	mov	r0, r5
    e934:	e1a06004 	mov	r6, r4
    e938:	e3a03000 	mov	r3, #0
    e93c:	e4463001 	strb	r3, [r6], #-1
    e940:	eb0003ae 	bl	f800 <strlen>
    e944:	e5973014 	ldr	r3, [r7, #20]
    e948:	e1a01007 	mov	r1, r7
    e94c:	e5870000 	str	r0, [r7]
    e950:	e2730001 	rsbs	r0, r3, #1
    e954:	33a00000 	movcc	r0, #0
    e958:	ebffffba 	bl	e848 <padding>
    e95c:	e1550006 	cmp	r5, r6
    e960:	8a000003 	bhi	e974 <outnum+0xe4>
    e964:	e5740001 	ldrb	r0, [r4, #-1]!
    e968:	eb0002b9 	bl	f454 <outbyte>
    e96c:	e1540005 	cmp	r4, r5
    e970:	1afffffb 	bne	e964 <outnum+0xd4>
    e974:	e5970014 	ldr	r0, [r7, #20]
    e978:	e1a01007 	mov	r1, r7
    e97c:	ebffffb1 	bl	e848 <padding>
    e980:	e28dd038 	add	sp, sp, #56	; 0x38
    e984:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0000e988 <xil_printf>:
    e988:	e92d000f 	push	{r0, r1, r2, r3}
    e98c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    e990:	e24dd024 	sub	sp, sp, #36	; 0x24
    e994:	e28d304c 	add	r3, sp, #76	; 0x4c
    e998:	e59db048 	ldr	fp, [sp, #72]	; 0x48
    e99c:	e58d3004 	str	r3, [sp, #4]
    e9a0:	e5db0000 	ldrb	r0, [fp]
    e9a4:	e3500000 	cmp	r0, #0
    e9a8:	0a000096 	beq	ec08 <xil_printf+0x280>
    e9ac:	e3006220 	movw	r6, #544	; 0x220
    e9b0:	e3a05000 	mov	r5, #0
    e9b4:	e3406001 	movt	r6, #1
    e9b8:	e3a08020 	mov	r8, #32
    e9bc:	e3077fff 	movw	r7, #32767	; 0x7fff
    e9c0:	ea000005 	b	e9dc <xil_printf+0x54>
    e9c4:	e1a0400b 	mov	r4, fp
    e9c8:	eb0002a1 	bl	f454 <outbyte>
    e9cc:	e5d40001 	ldrb	r0, [r4, #1]
    e9d0:	e284b001 	add	fp, r4, #1
    e9d4:	e3500000 	cmp	r0, #0
    e9d8:	0a00008a 	beq	ec08 <xil_printf+0x280>
    e9dc:	e3500025 	cmp	r0, #37	; 0x25
    e9e0:	1afffff7 	bne	e9c4 <xil_printf+0x3c>
    e9e4:	e596c000 	ldr	ip, [r6]
    e9e8:	e3a0a000 	mov	sl, #0
    e9ec:	e5db0001 	ldrb	r0, [fp, #1]
    e9f0:	e1a0900a 	mov	r9, sl
    e9f4:	e58d5018 	str	r5, [sp, #24]
    e9f8:	e08c3000 	add	r3, ip, r0
    e9fc:	e58d501c 	str	r5, [sp, #28]
    ea00:	e5cd8014 	strb	r8, [sp, #20]
    ea04:	e58d7010 	str	r7, [sp, #16]
    ea08:	e5d32001 	ldrb	r2, [r3, #1]
    ea0c:	e28b4001 	add	r4, fp, #1
    ea10:	e2021004 	and	r1, r2, #4
    ea14:	e6ef1071 	uxtb	r1, r1
    ea18:	e3510000 	cmp	r1, #0
    ea1c:	0a000012 	beq	ea6c <xil_printf+0xe4>
    ea20:	e35a0000 	cmp	sl, #0
    ea24:	0a0000d5 	beq	ed80 <xil_printf+0x3f8>
    ea28:	e28bb002 	add	fp, fp, #2
    ea2c:	e3a02000 	mov	r2, #0
    ea30:	e2401030 	sub	r1, r0, #48	; 0x30
    ea34:	e5db0000 	ldrb	r0, [fp]
    ea38:	e0822102 	add	r2, r2, r2, lsl #2
    ea3c:	e1a0400b 	mov	r4, fp
    ea40:	e08c3000 	add	r3, ip, r0
    ea44:	e28bb001 	add	fp, fp, #1
    ea48:	e0812082 	add	r2, r1, r2, lsl #1
    ea4c:	e5d31001 	ldrb	r1, [r3, #1]
    ea50:	e2011004 	and	r1, r1, #4
    ea54:	e6ef1071 	uxtb	r1, r1
    ea58:	e3510000 	cmp	r1, #0
    ea5c:	1afffff3 	bne	ea30 <xil_printf+0xa8>
    ea60:	e58d2010 	str	r2, [sp, #16]
    ea64:	e244b001 	sub	fp, r4, #1
    ea68:	eaffffe6 	b	ea08 <xil_printf+0x80>
    ea6c:	e2022003 	and	r2, r2, #3
    ea70:	e1a03000 	mov	r3, r0
    ea74:	e3520001 	cmp	r2, #1
    ea78:	02803020 	addeq	r3, r0, #32
    ea7c:	e2433025 	sub	r3, r3, #37	; 0x25
    ea80:	e3530053 	cmp	r3, #83	; 0x53
    ea84:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
    ea88:	eaffffcf 	b	e9cc <xil_printf+0x44>
    ea8c:	0000ed74 	andeq	lr, r0, r4, ror sp
    ea90:	0000e9cc 	andeq	lr, r0, ip, asr #19
    ea94:	0000e9cc 	andeq	lr, r0, ip, asr #19
    ea98:	0000e9cc 	andeq	lr, r0, ip, asr #19
    ea9c:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eaa0:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eaa4:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eaa8:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eaac:	0000ed5c 	andeq	lr, r0, ip, asr sp
    eab0:	0000ed48 	andeq	lr, r0, r8, asr #26
    eab4:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eab8:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eabc:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eac0:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eac4:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eac8:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eacc:	0000e9cc 	andeq	lr, r0, ip, asr #19
    ead0:	0000e9cc 	andeq	lr, r0, ip, asr #19
    ead4:	0000e9cc 	andeq	lr, r0, ip, asr #19
    ead8:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eadc:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eae0:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eae4:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eae8:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eaec:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eaf0:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eaf4:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eaf8:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eafc:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb00:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb04:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb08:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb0c:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb10:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb14:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb18:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb1c:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb20:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb24:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb28:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb2c:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb30:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb34:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb38:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb3c:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb40:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb44:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb48:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb4c:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb50:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb54:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb58:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb5c:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb60:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb64:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb68:	0000ecf0 	strdeq	lr, [r0], -r0
    eb6c:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb70:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb74:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb78:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb7c:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb80:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb84:	0000ecd8 	ldrdeq	lr, [r0], -r8
    eb88:	0000ecbc 			; <UNDEFINED> instruction: 0x0000ecbc
    eb8c:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb90:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb94:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb98:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eb9c:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eba0:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eba4:	0000e9cc 	andeq	lr, r0, ip, asr #19
    eba8:	0000eca8 	andeq	lr, r0, r8, lsr #25
    ebac:	0000e9cc 	andeq	lr, r0, ip, asr #19
    ebb0:	0000e9cc 	andeq	lr, r0, ip, asr #19
    ebb4:	0000e9cc 	andeq	lr, r0, ip, asr #19
    ebb8:	0000e9cc 	andeq	lr, r0, ip, asr #19
    ebbc:	0000e9cc 	andeq	lr, r0, ip, asr #19
    ebc0:	0000e9cc 	andeq	lr, r0, ip, asr #19
    ebc4:	0000ec18 	andeq	lr, r0, r8, lsl ip
    ebc8:	0000e9cc 	andeq	lr, r0, ip, asr #19
    ebcc:	0000e9cc 	andeq	lr, r0, ip, asr #19
    ebd0:	0000e9cc 	andeq	lr, r0, ip, asr #19
    ebd4:	0000e9cc 	andeq	lr, r0, ip, asr #19
    ebd8:	0000ebdc 	ldrdeq	lr, [r0], -ip
    ebdc:	e59d3004 	ldr	r3, [sp, #4]
    ebe0:	e28d2008 	add	r2, sp, #8
    ebe4:	e3a01010 	mov	r1, #16
    ebe8:	e2830004 	add	r0, r3, #4
    ebec:	e58d0004 	str	r0, [sp, #4]
    ebf0:	e5930000 	ldr	r0, [r3]
    ebf4:	ebffff25 	bl	e890 <outnum>
    ebf8:	e5d40001 	ldrb	r0, [r4, #1]
    ebfc:	e284b001 	add	fp, r4, #1
    ec00:	e3500000 	cmp	r0, #0
    ec04:	1affff74 	bne	e9dc <xil_printf+0x54>
    ec08:	e28dd024 	add	sp, sp, #36	; 0x24
    ec0c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    ec10:	e28dd010 	add	sp, sp, #16
    ec14:	e12fff1e 	bx	lr
    ec18:	e59d3004 	ldr	r3, [sp, #4]
    ec1c:	e2832004 	add	r2, r3, #4
    ec20:	e58d2004 	str	r2, [sp, #4]
    ec24:	e593a000 	ldr	sl, [r3]
    ec28:	e1a0000a 	mov	r0, sl
    ec2c:	eb0002f3 	bl	f800 <strlen>
    ec30:	e28d1008 	add	r1, sp, #8
    ec34:	e58d0008 	str	r0, [sp, #8]
    ec38:	e59d001c 	ldr	r0, [sp, #28]
    ec3c:	e2700001 	rsbs	r0, r0, #1
    ec40:	33a00000 	movcc	r0, #0
    ec44:	ebfffeff 	bl	e848 <padding>
    ec48:	e5da3000 	ldrb	r3, [sl]
    ec4c:	e3530000 	cmp	r3, #0
    ec50:	0a000010 	beq	ec98 <xil_printf+0x310>
    ec54:	e59d3010 	ldr	r3, [sp, #16]
    ec58:	e3530000 	cmp	r3, #0
    ec5c:	e2433001 	sub	r3, r3, #1
    ec60:	e58d3010 	str	r3, [sp, #16]
    ec64:	0a00000b 	beq	ec98 <xil_printf+0x310>
    ec68:	e24aa001 	sub	sl, sl, #1
    ec6c:	ea000004 	b	ec84 <xil_printf+0x2fc>
    ec70:	e59d3010 	ldr	r3, [sp, #16]
    ec74:	e3530000 	cmp	r3, #0
    ec78:	e2433001 	sub	r3, r3, #1
    ec7c:	e58d3010 	str	r3, [sp, #16]
    ec80:	0a000004 	beq	ec98 <xil_printf+0x310>
    ec84:	e5fa0001 	ldrb	r0, [sl, #1]!
    ec88:	eb0001f1 	bl	f454 <outbyte>
    ec8c:	e5da3001 	ldrb	r3, [sl, #1]
    ec90:	e3530000 	cmp	r3, #0
    ec94:	1afffff5 	bne	ec70 <xil_printf+0x2e8>
    ec98:	e59d001c 	ldr	r0, [sp, #28]
    ec9c:	e28d1008 	add	r1, sp, #8
    eca0:	ebfffee8 	bl	e848 <padding>
    eca4:	eaffff48 	b	e9cc <xil_printf+0x44>
    eca8:	e5db0002 	ldrb	r0, [fp, #2]
    ecac:	e3a09001 	mov	r9, #1
    ecb0:	e1a0b004 	mov	fp, r4
    ecb4:	e08c3000 	add	r3, ip, r0
    ecb8:	eaffff52 	b	ea08 <xil_printf+0x80>
    ecbc:	e59d3004 	ldr	r3, [sp, #4]
    ecc0:	e3a0100a 	mov	r1, #10
    ecc4:	e28d2008 	add	r2, sp, #8
    ecc8:	e2830004 	add	r0, r3, #4
    eccc:	e58d0004 	str	r0, [sp, #4]
    ecd0:	e5930000 	ldr	r0, [r3]
    ecd4:	eaffffc6 	b	ebf4 <xil_printf+0x26c>
    ecd8:	e59d3004 	ldr	r3, [sp, #4]
    ecdc:	e2832004 	add	r2, r3, #4
    ece0:	e58d2004 	str	r2, [sp, #4]
    ece4:	e5d30000 	ldrb	r0, [r3]
    ece8:	eb0001d9 	bl	f454 <outbyte>
    ecec:	eaffff36 	b	e9cc <xil_printf+0x44>
    ecf0:	e2403061 	sub	r3, r0, #97	; 0x61
    ecf4:	e3530011 	cmp	r3, #17
    ecf8:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
    ecfc:	ea000041 	b	ee08 <xil_printf+0x480>
    ed00:	0000ee10 	andeq	lr, r0, r0, lsl lr
    ed04:	0000ee08 	andeq	lr, r0, r8, lsl #28
    ed08:	0000ee08 	andeq	lr, r0, r8, lsl #28
    ed0c:	0000ee08 	andeq	lr, r0, r8, lsl #28
    ed10:	0000ee08 	andeq	lr, r0, r8, lsl #28
    ed14:	0000ee08 	andeq	lr, r0, r8, lsl #28
    ed18:	0000ee08 	andeq	lr, r0, r8, lsl #28
    ed1c:	0000ee1c 	andeq	lr, r0, ip, lsl lr
    ed20:	0000ee08 	andeq	lr, r0, r8, lsl #28
    ed24:	0000ee08 	andeq	lr, r0, r8, lsl #28
    ed28:	0000ee08 	andeq	lr, r0, r8, lsl #28
    ed2c:	0000ee08 	andeq	lr, r0, r8, lsl #28
    ed30:	0000ee08 	andeq	lr, r0, r8, lsl #28
    ed34:	0000ee28 	andeq	lr, r0, r8, lsr #28
    ed38:	0000ee08 	andeq	lr, r0, r8, lsl #28
    ed3c:	0000ee08 	andeq	lr, r0, r8, lsl #28
    ed40:	0000ee08 	andeq	lr, r0, r8, lsl #28
    ed44:	0000edec 	andeq	lr, r0, ip, ror #27
    ed48:	e5db0002 	ldrb	r0, [fp, #2]
    ed4c:	e3a0a001 	mov	sl, #1
    ed50:	e1a0b004 	mov	fp, r4
    ed54:	e08c3000 	add	r3, ip, r0
    ed58:	eaffff2a 	b	ea08 <xil_printf+0x80>
    ed5c:	e5db0002 	ldrb	r0, [fp, #2]
    ed60:	e3a03001 	mov	r3, #1
    ed64:	e1a0b004 	mov	fp, r4
    ed68:	e58d301c 	str	r3, [sp, #28]
    ed6c:	e08c3000 	add	r3, ip, r0
    ed70:	eaffff24 	b	ea08 <xil_printf+0x80>
    ed74:	e3a00025 	mov	r0, #37	; 0x25
    ed78:	eb0001b5 	bl	f454 <outbyte>
    ed7c:	eaffff12 	b	e9cc <xil_printf+0x44>
    ed80:	e5db1001 	ldrb	r1, [fp, #1]
    ed84:	e3500030 	cmp	r0, #48	; 0x30
    ed88:	05cd0014 	strbeq	r0, [sp, #20]
    ed8c:	e08c2001 	add	r2, ip, r1
    ed90:	e5d22001 	ldrb	r2, [r2, #1]
    ed94:	e2022004 	and	r2, r2, #4
    ed98:	e6ef2072 	uxtb	r2, r2
    ed9c:	e3520000 	cmp	r2, #0
    eda0:	0a00000d 	beq	eddc <xil_printf+0x454>
    eda4:	e28bb002 	add	fp, fp, #2
    eda8:	e1a00001 	mov	r0, r1
    edac:	e3a02000 	mov	r2, #0
    edb0:	e2401030 	sub	r1, r0, #48	; 0x30
    edb4:	e1a0400b 	mov	r4, fp
    edb8:	e4db0001 	ldrb	r0, [fp], #1
    edbc:	e0822102 	add	r2, r2, r2, lsl #2
    edc0:	e08c3000 	add	r3, ip, r0
    edc4:	e0812082 	add	r2, r1, r2, lsl #1
    edc8:	e5d31001 	ldrb	r1, [r3, #1]
    edcc:	e2011004 	and	r1, r1, #4
    edd0:	e6ef1071 	uxtb	r1, r1
    edd4:	e3510000 	cmp	r1, #0
    edd8:	1afffff4 	bne	edb0 <xil_printf+0x428>
    eddc:	e58d200c 	str	r2, [sp, #12]
    ede0:	e3a02001 	mov	r2, #1
    ede4:	e58d2018 	str	r2, [sp, #24]
    ede8:	eaffff1d 	b	ea64 <xil_printf+0xdc>
    edec:	e3a0000d 	mov	r0, #13
    edf0:	eb000197 	bl	f454 <outbyte>
    edf4:	e5db0003 	ldrb	r0, [fp, #3]
    edf8:	e28bb002 	add	fp, fp, #2
    edfc:	e596c000 	ldr	ip, [r6]
    ee00:	e08c3000 	add	r3, ip, r0
    ee04:	eafffeff 	b	ea08 <xil_printf+0x80>
    ee08:	eb000191 	bl	f454 <outbyte>
    ee0c:	eafffff8 	b	edf4 <xil_printf+0x46c>
    ee10:	e3a00007 	mov	r0, #7
    ee14:	eb00018e 	bl	f454 <outbyte>
    ee18:	eafffff5 	b	edf4 <xil_printf+0x46c>
    ee1c:	e3a00008 	mov	r0, #8
    ee20:	eb00018b 	bl	f454 <outbyte>
    ee24:	eafffff2 	b	edf4 <xil_printf+0x46c>
    ee28:	e3a0000d 	mov	r0, #13
    ee2c:	eb000188 	bl	f454 <outbyte>
    ee30:	e3a0000a 	mov	r0, #10
    ee34:	eb000186 	bl	f454 <outbyte>
    ee38:	eaffffed 	b	edf4 <xil_printf+0x46c>

0000ee3c <XUartPs_StubHandler>:
    ee3c:	e92d4008 	push	{r3, lr}
    ee40:	e30001f4 	movw	r0, #500	; 0x1f4
    ee44:	e3a01e2a 	mov	r1, #672	; 0x2a0
    ee48:	e3400001 	movt	r0, #1
    ee4c:	eb000184 	bl	f464 <Xil_Assert>
    ee50:	e303344c 	movw	r3, #13388	; 0x344c
    ee54:	e3403001 	movt	r3, #1
    ee58:	e3a02001 	mov	r2, #1
    ee5c:	e5832000 	str	r2, [r3]
    ee60:	e8bd8008 	pop	{r3, pc}

0000ee64 <XUartPs_SendBuffer>:
    ee64:	e92d4038 	push	{r3, r4, r5, lr}
    ee68:	e1a04000 	mov	r4, r0
    ee6c:	e3a05000 	mov	r5, #0
    ee70:	ea000007 	b	ee94 <XUartPs_SendBuffer+0x30>
    ee74:	e1550003 	cmp	r5, r3
    ee78:	2a00000b 	bcs	eeac <XUartPs_SendBuffer+0x48>
    ee7c:	e594301c 	ldr	r3, [r4, #28]
    ee80:	e5940004 	ldr	r0, [r4, #4]
    ee84:	e7d31005 	ldrb	r1, [r3, r5]
    ee88:	e2800030 	add	r0, r0, #48	; 0x30
    ee8c:	ebfffe3c 	bl	e784 <Xil_Out32>
    ee90:	e2855001 	add	r5, r5, #1
    ee94:	e5940004 	ldr	r0, [r4, #4]
    ee98:	e280002c 	add	r0, r0, #44	; 0x2c
    ee9c:	ebfffe2f 	bl	e760 <Xil_In32>
    eea0:	e5943024 	ldr	r3, [r4, #36]	; 0x24
    eea4:	e3100010 	tst	r0, #16
    eea8:	0afffff1 	beq	ee74 <XUartPs_SendBuffer+0x10>
    eeac:	e594201c 	ldr	r2, [r4, #28]
    eeb0:	e0653003 	rsb	r3, r5, r3
    eeb4:	e5940004 	ldr	r0, [r4, #4]
    eeb8:	e0822005 	add	r2, r2, r5
    eebc:	e5843024 	str	r3, [r4, #36]	; 0x24
    eec0:	e584201c 	str	r2, [r4, #28]
    eec4:	e2800010 	add	r0, r0, #16
    eec8:	ebfffe24 	bl	e760 <Xil_In32>
    eecc:	e3100007 	tst	r0, #7
    eed0:	0a000003 	beq	eee4 <XUartPs_SendBuffer+0x80>
    eed4:	e5943004 	ldr	r3, [r4, #4]
    eed8:	e3801008 	orr	r1, r0, #8
    eedc:	e2830008 	add	r0, r3, #8
    eee0:	ebfffe27 	bl	e784 <Xil_Out32>
    eee4:	e1a00005 	mov	r0, r5
    eee8:	e8bd8038 	pop	{r3, r4, r5, pc}

0000eeec <XUartPs_Send>:
    eeec:	e92d4070 	push	{r4, r5, r6, lr}
    eef0:	e2505000 	subs	r5, r0, #0
    eef4:	e24dd008 	sub	sp, sp, #8
    eef8:	e1a06001 	mov	r6, r1
    eefc:	0a000020 	beq	ef84 <XUartPs_Send+0x98>
    ef00:	e303444c 	movw	r4, #13388	; 0x344c
    ef04:	e3510000 	cmp	r1, #0
    ef08:	e3404001 	movt	r4, #1
    ef0c:	e3a03000 	mov	r3, #0
    ef10:	e5843000 	str	r3, [r4]
    ef14:	0a000023 	beq	efa8 <XUartPs_Send+0xbc>
    ef18:	e5951014 	ldr	r1, [r5, #20]
    ef1c:	e3013111 	movw	r3, #4369	; 0x1111
    ef20:	e3413111 	movt	r3, #4369	; 0x1111
    ef24:	e1510003 	cmp	r1, r3
    ef28:	0a000008 	beq	ef50 <XUartPs_Send+0x64>
    ef2c:	e30001f4 	movw	r0, #500	; 0x1f4
    ef30:	e3001112 	movw	r1, #274	; 0x112
    ef34:	e3400001 	movt	r0, #1
    ef38:	eb000149 	bl	f464 <Xil_Assert>
    ef3c:	e3a03001 	mov	r3, #1
    ef40:	e5843000 	str	r3, [r4]
    ef44:	e3a00000 	mov	r0, #0
    ef48:	e28dd008 	add	sp, sp, #8
    ef4c:	e8bd8070 	pop	{r4, r5, r6, pc}
    ef50:	e5950004 	ldr	r0, [r5, #4]
    ef54:	e3a01018 	mov	r1, #24
    ef58:	e58d2004 	str	r2, [sp, #4]
    ef5c:	e280000c 	add	r0, r0, #12
    ef60:	ebfffe07 	bl	e784 <Xil_Out32>
    ef64:	e59d2004 	ldr	r2, [sp, #4]
    ef68:	e1a00005 	mov	r0, r5
    ef6c:	e585601c 	str	r6, [r5, #28]
    ef70:	e5852020 	str	r2, [r5, #32]
    ef74:	e5852024 	str	r2, [r5, #36]	; 0x24
    ef78:	e28dd008 	add	sp, sp, #8
    ef7c:	e8bd4070 	pop	{r4, r5, r6, lr}
    ef80:	eaffffb7 	b	ee64 <XUartPs_SendBuffer>
    ef84:	e30001f4 	movw	r0, #500	; 0x1f4
    ef88:	e3a01e11 	mov	r1, #272	; 0x110
    ef8c:	e3400001 	movt	r0, #1
    ef90:	eb000133 	bl	f464 <Xil_Assert>
    ef94:	e303344c 	movw	r3, #13388	; 0x344c
    ef98:	e3403001 	movt	r3, #1
    ef9c:	e3a02001 	mov	r2, #1
    efa0:	e5832000 	str	r2, [r3]
    efa4:	eaffffe6 	b	ef44 <XUartPs_Send+0x58>
    efa8:	e30001f4 	movw	r0, #500	; 0x1f4
    efac:	e3001111 	movw	r1, #273	; 0x111
    efb0:	e3400001 	movt	r0, #1
    efb4:	eb00012a 	bl	f464 <Xil_Assert>
    efb8:	e3a03001 	mov	r3, #1
    efbc:	e5843000 	str	r3, [r4]
    efc0:	eaffffdf 	b	ef44 <XUartPs_Send+0x58>

0000efc4 <XUartPs_ReceiveBuffer>:
    efc4:	e92d4070 	push	{r4, r5, r6, lr}
    efc8:	e1a04000 	mov	r4, r0
    efcc:	e5900004 	ldr	r0, [r0, #4]
    efd0:	e280002c 	add	r0, r0, #44	; 0x2c
    efd4:	ebfffde1 	bl	e760 <Xil_In32>
    efd8:	e5943030 	ldr	r3, [r4, #48]	; 0x30
    efdc:	e3530000 	cmp	r3, #0
    efe0:	0a000017 	beq	f044 <XUartPs_ReceiveBuffer+0x80>
    efe4:	e2105002 	ands	r5, r0, #2
    efe8:	0a000002 	beq	eff8 <XUartPs_ReceiveBuffer+0x34>
    efec:	ea000016 	b	f04c <XUartPs_ReceiveBuffer+0x88>
    eff0:	e3100002 	tst	r0, #2
    eff4:	1a00000b 	bne	f028 <XUartPs_ReceiveBuffer+0x64>
    eff8:	e5940004 	ldr	r0, [r4, #4]
    effc:	e5946028 	ldr	r6, [r4, #40]	; 0x28
    f000:	e2800030 	add	r0, r0, #48	; 0x30
    f004:	ebfffdd5 	bl	e760 <Xil_In32>
    f008:	e7c60005 	strb	r0, [r6, r5]
    f00c:	e2855001 	add	r5, r5, #1
    f010:	e5940004 	ldr	r0, [r4, #4]
    f014:	e280002c 	add	r0, r0, #44	; 0x2c
    f018:	ebfffdd0 	bl	e760 <Xil_In32>
    f01c:	e5943030 	ldr	r3, [r4, #48]	; 0x30
    f020:	e1530005 	cmp	r3, r5
    f024:	8afffff1 	bhi	eff0 <XUartPs_ReceiveBuffer+0x2c>
    f028:	e5942028 	ldr	r2, [r4, #40]	; 0x28
    f02c:	e0653003 	rsb	r3, r5, r3
    f030:	e1a00005 	mov	r0, r5
    f034:	e5843030 	str	r3, [r4, #48]	; 0x30
    f038:	e0825005 	add	r5, r2, r5
    f03c:	e5845028 	str	r5, [r4, #40]	; 0x28
    f040:	e8bd8070 	pop	{r4, r5, r6, pc}
    f044:	e1a05003 	mov	r5, r3
    f048:	eafffff6 	b	f028 <XUartPs_ReceiveBuffer+0x64>
    f04c:	e3a05000 	mov	r5, #0
    f050:	eafffff4 	b	f028 <XUartPs_ReceiveBuffer+0x64>

0000f054 <XUartPs_Recv>:
    f054:	e92d4070 	push	{r4, r5, r6, lr}
    f058:	e2505000 	subs	r5, r0, #0
    f05c:	e24dd008 	sub	sp, sp, #8
    f060:	e1a06001 	mov	r6, r1
    f064:	0a000029 	beq	f110 <XUartPs_Recv+0xbc>
    f068:	e303444c 	movw	r4, #13388	; 0x344c
    f06c:	e3510000 	cmp	r1, #0
    f070:	e3404001 	movt	r4, #1
    f074:	e3a0c000 	mov	ip, #0
    f078:	e584c000 	str	ip, [r4]
    f07c:	0a00002d 	beq	f138 <XUartPs_Recv+0xe4>
    f080:	e5951014 	ldr	r1, [r5, #20]
    f084:	e3013111 	movw	r3, #4369	; 0x1111
    f088:	e3413111 	movt	r3, #4369	; 0x1111
    f08c:	e1510003 	cmp	r1, r3
    f090:	0a000009 	beq	f0bc <XUartPs_Recv+0x68>
    f094:	e30001f4 	movw	r0, #500	; 0x1f4
    f098:	e3001155 	movw	r1, #341	; 0x155
    f09c:	e3400001 	movt	r0, #1
    f0a0:	e1a0600c 	mov	r6, ip
    f0a4:	eb0000ee 	bl	f464 <Xil_Assert>
    f0a8:	e3a03001 	mov	r3, #1
    f0ac:	e5843000 	str	r3, [r4]
    f0b0:	e1a00006 	mov	r0, r6
    f0b4:	e28dd008 	add	sp, sp, #8
    f0b8:	e8bd8070 	pop	{r4, r5, r6, pc}
    f0bc:	e5950004 	ldr	r0, [r5, #4]
    f0c0:	e58d2004 	str	r2, [sp, #4]
    f0c4:	e2800010 	add	r0, r0, #16
    f0c8:	ebfffda4 	bl	e760 <Xil_In32>
    f0cc:	e3011fff 	movw	r1, #8191	; 0x1fff
    f0d0:	e1a04000 	mov	r4, r0
    f0d4:	e5950004 	ldr	r0, [r5, #4]
    f0d8:	e280000c 	add	r0, r0, #12
    f0dc:	ebfffda8 	bl	e784 <Xil_Out32>
    f0e0:	e59d2004 	ldr	r2, [sp, #4]
    f0e4:	e1a00005 	mov	r0, r5
    f0e8:	e5856028 	str	r6, [r5, #40]	; 0x28
    f0ec:	e585202c 	str	r2, [r5, #44]	; 0x2c
    f0f0:	e5852030 	str	r2, [r5, #48]	; 0x30
    f0f4:	ebffffb2 	bl	efc4 <XUartPs_ReceiveBuffer>
    f0f8:	e1a01004 	mov	r1, r4
    f0fc:	e1a06000 	mov	r6, r0
    f100:	e5950004 	ldr	r0, [r5, #4]
    f104:	e2800008 	add	r0, r0, #8
    f108:	ebfffd9d 	bl	e784 <Xil_Out32>
    f10c:	eaffffe7 	b	f0b0 <XUartPs_Recv+0x5c>
    f110:	e30001f4 	movw	r0, #500	; 0x1f4
    f114:	e3001153 	movw	r1, #339	; 0x153
    f118:	e3400001 	movt	r0, #1
    f11c:	e1a06005 	mov	r6, r5
    f120:	eb0000cf 	bl	f464 <Xil_Assert>
    f124:	e303344c 	movw	r3, #13388	; 0x344c
    f128:	e3403001 	movt	r3, #1
    f12c:	e3a02001 	mov	r2, #1
    f130:	e5832000 	str	r2, [r3]
    f134:	eaffffdd 	b	f0b0 <XUartPs_Recv+0x5c>
    f138:	e30001f4 	movw	r0, #500	; 0x1f4
    f13c:	e3a01f55 	mov	r1, #340	; 0x154
    f140:	e3400001 	movt	r0, #1
    f144:	eb0000c6 	bl	f464 <Xil_Assert>
    f148:	e3a03001 	mov	r3, #1
    f14c:	e5843000 	str	r3, [r4]
    f150:	eaffffd6 	b	f0b0 <XUartPs_Recv+0x5c>

0000f154 <XUartPs_SetBaudRate>:
    f154:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    f158:	e250b000 	subs	fp, r0, #0
    f15c:	e24dd00c 	sub	sp, sp, #12
    f160:	e1a05001 	mov	r5, r1
    f164:	0a000060 	beq	f2ec <XUartPs_SetBaudRate+0x198>
    f168:	e59b2014 	ldr	r2, [fp, #20]
    f16c:	e3013111 	movw	r3, #4369	; 0x1111
    f170:	e3413111 	movt	r3, #4369	; 0x1111
    f174:	e303444c 	movw	r4, #13388	; 0x344c
    f178:	e1520003 	cmp	r2, r3
    f17c:	e3404001 	movt	r4, #1
    f180:	e3a06000 	mov	r6, #0
    f184:	e5846000 	str	r6, [r4]
    f188:	1a00000b 	bne	f1bc <XUartPs_SetBaudRate+0x68>
    f18c:	e3a03cc2 	mov	r3, #49664	; 0xc200
    f190:	e3403001 	movt	r3, #1
    f194:	e1510003 	cmp	r1, r3
    f198:	8a00000f 	bhi	f1dc <XUartPs_SetBaudRate+0x88>
    f19c:	e351006d 	cmp	r1, #109	; 0x6d
    f1a0:	9a000010 	bls	f1e8 <XUartPs_SetBaudRate+0x94>
    f1a4:	e59b3008 	ldr	r3, [fp, #8]
    f1a8:	e1530081 	cmp	r3, r1, lsl #1
    f1ac:	2a000010 	bcs	f1f4 <XUartPs_SetBaudRate+0xa0>
    f1b0:	e300041f 	movw	r0, #1055	; 0x41f
    f1b4:	e28dd00c 	add	sp, sp, #12
    f1b8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    f1bc:	e30001f4 	movw	r0, #500	; 0x1f4
    f1c0:	e300122f 	movw	r1, #559	; 0x22f
    f1c4:	e3400001 	movt	r0, #1
    f1c8:	eb0000a5 	bl	f464 <Xil_Assert>
    f1cc:	e3a03001 	mov	r3, #1
    f1d0:	e1a00006 	mov	r0, r6
    f1d4:	e5843000 	str	r3, [r4]
    f1d8:	eafffff5 	b	f1b4 <XUartPs_SetBaudRate+0x60>
    f1dc:	e30001f4 	movw	r0, #500	; 0x1f4
    f1e0:	e3a01e23 	mov	r1, #560	; 0x230
    f1e4:	eafffff6 	b	f1c4 <XUartPs_SetBaudRate+0x70>
    f1e8:	e30001f4 	movw	r0, #500	; 0x1f4
    f1ec:	e3001231 	movw	r1, #561	; 0x231
    f1f0:	eafffff3 	b	f1c4 <XUartPs_SetBaudRate+0x70>
    f1f4:	e59b0004 	ldr	r0, [fp, #4]
    f1f8:	e0859105 	add	r9, r5, r5, lsl #2
    f1fc:	e3a04005 	mov	r4, #5
    f200:	e3e07000 	mvn	r7, #0
    f204:	e2800004 	add	r0, r0, #4
    f208:	ebfffd54 	bl	e760 <Xil_In32>
    f20c:	e59b6008 	ldr	r6, [fp, #8]
    f210:	e3a03000 	mov	r3, #0
    f214:	e58d3000 	str	r3, [sp]
    f218:	e58d3004 	str	r3, [sp, #4]
    f21c:	e3100001 	tst	r0, #1
    f220:	11a061a6 	lsrne	r6, r6, #3
    f224:	e1a01009 	mov	r1, r9
    f228:	e1a00006 	mov	r0, r6
    f22c:	eb0000b4 	bl	f504 <__aeabi_uidiv>
    f230:	e2448001 	sub	r8, r4, #1
    f234:	e0899005 	add	r9, r9, r5
    f238:	e6ef8078 	uxtb	r8, r8
    f23c:	e1a0a000 	mov	sl, r0
    f240:	e1a00006 	mov	r0, r6
    f244:	e0010a94 	mul	r1, r4, sl
    f248:	eb0000ad 	bl	f504 <__aeabi_uidiv>
    f24c:	e2844001 	add	r4, r4, #1
    f250:	e1550000 	cmp	r5, r0
    f254:	e0651000 	rsb	r1, r5, r0
    f258:	80601005 	rsbhi	r1, r0, r5
    f25c:	e1510007 	cmp	r1, r7
    f260:	388d0500 	stmcc	sp, {r8, sl}
    f264:	31a07001 	movcc	r7, r1
    f268:	e3540c01 	cmp	r4, #256	; 0x100
    f26c:	1affffec 	bne	f224 <XUartPs_SetBaudRate+0xd0>
    f270:	e3a00064 	mov	r0, #100	; 0x64
    f274:	e1a01005 	mov	r1, r5
    f278:	e0000790 	mul	r0, r0, r7
    f27c:	eb0000a0 	bl	f504 <__aeabi_uidiv>
    f280:	e3500003 	cmp	r0, #3
    f284:	8affffc9 	bhi	f1b0 <XUartPs_SetBaudRate+0x5c>
    f288:	e59b4004 	ldr	r4, [fp, #4]
    f28c:	e1a00004 	mov	r0, r4
    f290:	ebfffd32 	bl	e760 <Xil_In32>
    f294:	e3c0103c 	bic	r1, r0, #60	; 0x3c
    f298:	e1a00004 	mov	r0, r4
    f29c:	e3811028 	orr	r1, r1, #40	; 0x28
    f2a0:	ebfffd37 	bl	e784 <Xil_Out32>
    f2a4:	e59b0004 	ldr	r0, [fp, #4]
    f2a8:	e59d1004 	ldr	r1, [sp, #4]
    f2ac:	e2800018 	add	r0, r0, #24
    f2b0:	ebfffd33 	bl	e784 <Xil_Out32>
    f2b4:	e59b0004 	ldr	r0, [fp, #4]
    f2b8:	e59d1000 	ldr	r1, [sp]
    f2bc:	e2800034 	add	r0, r0, #52	; 0x34
    f2c0:	ebfffd2f 	bl	e784 <Xil_Out32>
    f2c4:	e59b4004 	ldr	r4, [fp, #4]
    f2c8:	e1a00004 	mov	r0, r4
    f2cc:	ebfffd23 	bl	e760 <Xil_In32>
    f2d0:	e3c0103c 	bic	r1, r0, #60	; 0x3c
    f2d4:	e1a00004 	mov	r0, r4
    f2d8:	e3811014 	orr	r1, r1, #20
    f2dc:	ebfffd28 	bl	e784 <Xil_Out32>
    f2e0:	e3a00000 	mov	r0, #0
    f2e4:	e58b5018 	str	r5, [fp, #24]
    f2e8:	eaffffb1 	b	f1b4 <XUartPs_SetBaudRate+0x60>
    f2ec:	e30001f4 	movw	r0, #500	; 0x1f4
    f2f0:	e300122e 	movw	r1, #558	; 0x22e
    f2f4:	e3400001 	movt	r0, #1
    f2f8:	eb000059 	bl	f464 <Xil_Assert>
    f2fc:	e303344c 	movw	r3, #13388	; 0x344c
    f300:	e3403001 	movt	r3, #1
    f304:	e3a02001 	mov	r2, #1
    f308:	e1a0000b 	mov	r0, fp
    f30c:	e5832000 	str	r2, [r3]
    f310:	eaffffa7 	b	f1b4 <XUartPs_SetBaudRate+0x60>

0000f314 <XUartPs_CfgInitialize>:
    f314:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    f318:	e2504000 	subs	r4, r0, #0
    f31c:	e1a03001 	mov	r3, r1
    f320:	0a00003a 	beq	f410 <XUartPs_CfgInitialize+0xfc>
    f324:	e303644c 	movw	r6, #13388	; 0x344c
    f328:	e3510000 	cmp	r1, #0
    f32c:	e3406001 	movt	r6, #1
    f330:	e3a05000 	mov	r5, #0
    f334:	e5865000 	str	r5, [r6]
    f338:	0a00002c 	beq	f3f0 <XUartPs_CfgInitialize+0xdc>
    f33c:	e591e008 	ldr	lr, [r1, #8]
    f340:	e30ece3c 	movw	ip, #60988	; 0xee3c
    f344:	e591100c 	ldr	r1, [r1, #12]
    f348:	e340c000 	movt	ip, #0
    f34c:	e5842004 	str	r2, [r4, #4]
    f350:	e3013111 	movw	r3, #4369	; 0x1111
    f354:	e584e008 	str	lr, [r4, #8]
    f358:	e7df3813 	bfi	r3, r3, #16, #16
    f35c:	e584100c 	str	r1, [r4, #12]
    f360:	e3a01cc2 	mov	r1, #49664	; 0xc200
    f364:	e584c034 	str	ip, [r4, #52]	; 0x34
    f368:	e3401001 	movt	r1, #1
    f36c:	e584501c 	str	r5, [r4, #28]
    f370:	e5845024 	str	r5, [r4, #36]	; 0x24
    f374:	e5845020 	str	r5, [r4, #32]
    f378:	e5845028 	str	r5, [r4, #40]	; 0x28
    f37c:	e5845030 	str	r5, [r4, #48]	; 0x30
    f380:	e584502c 	str	r5, [r4, #44]	; 0x2c
    f384:	e5843014 	str	r3, [r4, #20]
    f388:	ebffff71 	bl	f154 <XUartPs_SetBaudRate>
    f38c:	e2507000 	subs	r7, r0, #0
    f390:	15845014 	strne	r5, [r4, #20]
    f394:	1a000013 	bne	f3e8 <XUartPs_CfgInitialize+0xd4>
    f398:	e5940004 	ldr	r0, [r4, #4]
    f39c:	e2800004 	add	r0, r0, #4
    f3a0:	ebfffcee 	bl	e760 <Xil_In32>
    f3a4:	e5943004 	ldr	r3, [r4, #4]
    f3a8:	e3c010be 	bic	r1, r0, #190	; 0xbe
    f3ac:	e2830004 	add	r0, r3, #4
    f3b0:	e3811020 	orr	r1, r1, #32
    f3b4:	ebfffcf2 	bl	e784 <Xil_Out32>
    f3b8:	e5940004 	ldr	r0, [r4, #4]
    f3bc:	e3a01008 	mov	r1, #8
    f3c0:	e2800020 	add	r0, r0, #32
    f3c4:	ebfffcee 	bl	e784 <Xil_Out32>
    f3c8:	e5940004 	ldr	r0, [r4, #4]
    f3cc:	e3a01001 	mov	r1, #1
    f3d0:	e280001c 	add	r0, r0, #28
    f3d4:	ebfffcea 	bl	e784 <Xil_Out32>
    f3d8:	e5940004 	ldr	r0, [r4, #4]
    f3dc:	e3011fff 	movw	r1, #8191	; 0x1fff
    f3e0:	e280000c 	add	r0, r0, #12
    f3e4:	ebfffce6 	bl	e784 <Xil_Out32>
    f3e8:	e1a00007 	mov	r0, r7
    f3ec:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    f3f0:	e30001f4 	movw	r0, #500	; 0x1f4
    f3f4:	e3a01090 	mov	r1, #144	; 0x90
    f3f8:	e3400001 	movt	r0, #1
    f3fc:	e1a07003 	mov	r7, r3
    f400:	eb000017 	bl	f464 <Xil_Assert>
    f404:	e3a03001 	mov	r3, #1
    f408:	e5863000 	str	r3, [r6]
    f40c:	eafffff5 	b	f3e8 <XUartPs_CfgInitialize+0xd4>
    f410:	e30001f4 	movw	r0, #500	; 0x1f4
    f414:	e3a0108f 	mov	r1, #143	; 0x8f
    f418:	e3400001 	movt	r0, #1
    f41c:	e1a07004 	mov	r7, r4
    f420:	eb00000f 	bl	f464 <Xil_Assert>
    f424:	e303344c 	movw	r3, #13388	; 0x344c
    f428:	e3403001 	movt	r3, #1
    f42c:	e3a02001 	mov	r2, #1
    f430:	e5832000 	str	r2, [r3]
    f434:	eaffffeb 	b	f3e8 <XUartPs_CfgInitialize+0xd4>

0000f438 <XUartPs_LookupConfig>:
    f438:	e3003210 	movw	r3, #528	; 0x210
    f43c:	e3403001 	movt	r3, #1
    f440:	e1d320b0 	ldrh	r2, [r3]
    f444:	e1520000 	cmp	r2, r0
    f448:	01a00003 	moveq	r0, r3
    f44c:	13a00000 	movne	r0, #0
    f450:	e12fff1e 	bx	lr

0000f454 <outbyte>:
    f454:	e1a01000 	mov	r1, r0
    f458:	e3a00a01 	mov	r0, #4096	; 0x1000
    f45c:	e34e0000 	movt	r0, #57344	; 0xe000
    f460:	ea000010 	b	f4a8 <XUartPs_SendByte>

0000f464 <Xil_Assert>:
    f464:	e92d4008 	push	{r3, lr}
    f468:	e3023688 	movw	r3, #9864	; 0x2688
    f46c:	e3403001 	movt	r3, #1
    f470:	e5933000 	ldr	r3, [r3]
    f474:	e3530000 	cmp	r3, #0
    f478:	0a000000 	beq	f480 <Xil_Assert+0x1c>
    f47c:	e12fff33 	blx	r3
    f480:	e300320c 	movw	r3, #524	; 0x20c
    f484:	e3403001 	movt	r3, #1
    f488:	e5933000 	ldr	r3, [r3]
    f48c:	e3530000 	cmp	r3, #0
    f490:	08bd8008 	popeq	{r3, pc}
    f494:	eafffffe 	b	f494 <Xil_Assert+0x30>

0000f498 <Xil_AssertSetCallback>:
    f498:	e3023688 	movw	r3, #9864	; 0x2688
    f49c:	e3403001 	movt	r3, #1
    f4a0:	e5830000 	str	r0, [r3]
    f4a4:	e12fff1e 	bx	lr

0000f4a8 <XUartPs_SendByte>:
    f4a8:	e92d4070 	push	{r4, r5, r6, lr}
    f4ac:	e280402c 	add	r4, r0, #44	; 0x2c
    f4b0:	e1a05000 	mov	r5, r0
    f4b4:	e1a06001 	mov	r6, r1
    f4b8:	e1a00004 	mov	r0, r4
    f4bc:	ebfffca7 	bl	e760 <Xil_In32>
    f4c0:	e3100010 	tst	r0, #16
    f4c4:	1afffffb 	bne	f4b8 <XUartPs_SendByte+0x10>
    f4c8:	e2850030 	add	r0, r5, #48	; 0x30
    f4cc:	e1a01006 	mov	r1, r6
    f4d0:	e8bd4070 	pop	{r4, r5, r6, lr}
    f4d4:	eafffcaa 	b	e784 <Xil_Out32>

0000f4d8 <XUartPs_RecvByte>:
    f4d8:	e92d4038 	push	{r3, r4, r5, lr}
    f4dc:	e280402c 	add	r4, r0, #44	; 0x2c
    f4e0:	e1a05000 	mov	r5, r0
    f4e4:	e1a00004 	mov	r0, r4
    f4e8:	ebfffc9c 	bl	e760 <Xil_In32>
    f4ec:	e3100002 	tst	r0, #2
    f4f0:	1afffffb 	bne	f4e4 <XUartPs_RecvByte+0xc>
    f4f4:	e2850030 	add	r0, r5, #48	; 0x30
    f4f8:	ebfffc98 	bl	e760 <Xil_In32>
    f4fc:	e6ef0070 	uxtb	r0, r0
    f500:	e8bd8038 	pop	{r3, r4, r5, pc}

0000f504 <__aeabi_uidiv>:
    f504:	e2512001 	subs	r2, r1, #1
    f508:	012fff1e 	bxeq	lr
    f50c:	3a000074 	bcc	f6e4 <__aeabi_uidiv+0x1e0>
    f510:	e1500001 	cmp	r0, r1
    f514:	9a00006b 	bls	f6c8 <__aeabi_uidiv+0x1c4>
    f518:	e1110002 	tst	r1, r2
    f51c:	0a00006c 	beq	f6d4 <__aeabi_uidiv+0x1d0>
    f520:	e16f3f10 	clz	r3, r0
    f524:	e16f2f11 	clz	r2, r1
    f528:	e0423003 	sub	r3, r2, r3
    f52c:	e273301f 	rsbs	r3, r3, #31
    f530:	10833083 	addne	r3, r3, r3, lsl #1
    f534:	e3a02000 	mov	r2, #0
    f538:	108ff103 	addne	pc, pc, r3, lsl #2
    f53c:	e320f000 	nop	{0}
    f540:	e1500f81 	cmp	r0, r1, lsl #31
    f544:	e0a22002 	adc	r2, r2, r2
    f548:	20400f81 	subcs	r0, r0, r1, lsl #31
    f54c:	e1500f01 	cmp	r0, r1, lsl #30
    f550:	e0a22002 	adc	r2, r2, r2
    f554:	20400f01 	subcs	r0, r0, r1, lsl #30
    f558:	e1500e81 	cmp	r0, r1, lsl #29
    f55c:	e0a22002 	adc	r2, r2, r2
    f560:	20400e81 	subcs	r0, r0, r1, lsl #29
    f564:	e1500e01 	cmp	r0, r1, lsl #28
    f568:	e0a22002 	adc	r2, r2, r2
    f56c:	20400e01 	subcs	r0, r0, r1, lsl #28
    f570:	e1500d81 	cmp	r0, r1, lsl #27
    f574:	e0a22002 	adc	r2, r2, r2
    f578:	20400d81 	subcs	r0, r0, r1, lsl #27
    f57c:	e1500d01 	cmp	r0, r1, lsl #26
    f580:	e0a22002 	adc	r2, r2, r2
    f584:	20400d01 	subcs	r0, r0, r1, lsl #26
    f588:	e1500c81 	cmp	r0, r1, lsl #25
    f58c:	e0a22002 	adc	r2, r2, r2
    f590:	20400c81 	subcs	r0, r0, r1, lsl #25
    f594:	e1500c01 	cmp	r0, r1, lsl #24
    f598:	e0a22002 	adc	r2, r2, r2
    f59c:	20400c01 	subcs	r0, r0, r1, lsl #24
    f5a0:	e1500b81 	cmp	r0, r1, lsl #23
    f5a4:	e0a22002 	adc	r2, r2, r2
    f5a8:	20400b81 	subcs	r0, r0, r1, lsl #23
    f5ac:	e1500b01 	cmp	r0, r1, lsl #22
    f5b0:	e0a22002 	adc	r2, r2, r2
    f5b4:	20400b01 	subcs	r0, r0, r1, lsl #22
    f5b8:	e1500a81 	cmp	r0, r1, lsl #21
    f5bc:	e0a22002 	adc	r2, r2, r2
    f5c0:	20400a81 	subcs	r0, r0, r1, lsl #21
    f5c4:	e1500a01 	cmp	r0, r1, lsl #20
    f5c8:	e0a22002 	adc	r2, r2, r2
    f5cc:	20400a01 	subcs	r0, r0, r1, lsl #20
    f5d0:	e1500981 	cmp	r0, r1, lsl #19
    f5d4:	e0a22002 	adc	r2, r2, r2
    f5d8:	20400981 	subcs	r0, r0, r1, lsl #19
    f5dc:	e1500901 	cmp	r0, r1, lsl #18
    f5e0:	e0a22002 	adc	r2, r2, r2
    f5e4:	20400901 	subcs	r0, r0, r1, lsl #18
    f5e8:	e1500881 	cmp	r0, r1, lsl #17
    f5ec:	e0a22002 	adc	r2, r2, r2
    f5f0:	20400881 	subcs	r0, r0, r1, lsl #17
    f5f4:	e1500801 	cmp	r0, r1, lsl #16
    f5f8:	e0a22002 	adc	r2, r2, r2
    f5fc:	20400801 	subcs	r0, r0, r1, lsl #16
    f600:	e1500781 	cmp	r0, r1, lsl #15
    f604:	e0a22002 	adc	r2, r2, r2
    f608:	20400781 	subcs	r0, r0, r1, lsl #15
    f60c:	e1500701 	cmp	r0, r1, lsl #14
    f610:	e0a22002 	adc	r2, r2, r2
    f614:	20400701 	subcs	r0, r0, r1, lsl #14
    f618:	e1500681 	cmp	r0, r1, lsl #13
    f61c:	e0a22002 	adc	r2, r2, r2
    f620:	20400681 	subcs	r0, r0, r1, lsl #13
    f624:	e1500601 	cmp	r0, r1, lsl #12
    f628:	e0a22002 	adc	r2, r2, r2
    f62c:	20400601 	subcs	r0, r0, r1, lsl #12
    f630:	e1500581 	cmp	r0, r1, lsl #11
    f634:	e0a22002 	adc	r2, r2, r2
    f638:	20400581 	subcs	r0, r0, r1, lsl #11
    f63c:	e1500501 	cmp	r0, r1, lsl #10
    f640:	e0a22002 	adc	r2, r2, r2
    f644:	20400501 	subcs	r0, r0, r1, lsl #10
    f648:	e1500481 	cmp	r0, r1, lsl #9
    f64c:	e0a22002 	adc	r2, r2, r2
    f650:	20400481 	subcs	r0, r0, r1, lsl #9
    f654:	e1500401 	cmp	r0, r1, lsl #8
    f658:	e0a22002 	adc	r2, r2, r2
    f65c:	20400401 	subcs	r0, r0, r1, lsl #8
    f660:	e1500381 	cmp	r0, r1, lsl #7
    f664:	e0a22002 	adc	r2, r2, r2
    f668:	20400381 	subcs	r0, r0, r1, lsl #7
    f66c:	e1500301 	cmp	r0, r1, lsl #6
    f670:	e0a22002 	adc	r2, r2, r2
    f674:	20400301 	subcs	r0, r0, r1, lsl #6
    f678:	e1500281 	cmp	r0, r1, lsl #5
    f67c:	e0a22002 	adc	r2, r2, r2
    f680:	20400281 	subcs	r0, r0, r1, lsl #5
    f684:	e1500201 	cmp	r0, r1, lsl #4
    f688:	e0a22002 	adc	r2, r2, r2
    f68c:	20400201 	subcs	r0, r0, r1, lsl #4
    f690:	e1500181 	cmp	r0, r1, lsl #3
    f694:	e0a22002 	adc	r2, r2, r2
    f698:	20400181 	subcs	r0, r0, r1, lsl #3
    f69c:	e1500101 	cmp	r0, r1, lsl #2
    f6a0:	e0a22002 	adc	r2, r2, r2
    f6a4:	20400101 	subcs	r0, r0, r1, lsl #2
    f6a8:	e1500081 	cmp	r0, r1, lsl #1
    f6ac:	e0a22002 	adc	r2, r2, r2
    f6b0:	20400081 	subcs	r0, r0, r1, lsl #1
    f6b4:	e1500001 	cmp	r0, r1
    f6b8:	e0a22002 	adc	r2, r2, r2
    f6bc:	20400001 	subcs	r0, r0, r1
    f6c0:	e1a00002 	mov	r0, r2
    f6c4:	e12fff1e 	bx	lr
    f6c8:	03a00001 	moveq	r0, #1
    f6cc:	13a00000 	movne	r0, #0
    f6d0:	e12fff1e 	bx	lr
    f6d4:	e16f2f11 	clz	r2, r1
    f6d8:	e262201f 	rsb	r2, r2, #31
    f6dc:	e1a00230 	lsr	r0, r0, r2
    f6e0:	e12fff1e 	bx	lr
    f6e4:	e3500000 	cmp	r0, #0
    f6e8:	13e00000 	mvnne	r0, #0
    f6ec:	ea000007 	b	f710 <__aeabi_idiv0>

0000f6f0 <__aeabi_uidivmod>:
    f6f0:	e3510000 	cmp	r1, #0
    f6f4:	0afffffa 	beq	f6e4 <__aeabi_uidiv+0x1e0>
    f6f8:	e92d4003 	push	{r0, r1, lr}
    f6fc:	ebffff80 	bl	f504 <__aeabi_uidiv>
    f700:	e8bd4006 	pop	{r1, r2, lr}
    f704:	e0030092 	mul	r3, r2, r0
    f708:	e0411003 	sub	r1, r1, r3
    f70c:	e12fff1e 	bx	lr

0000f710 <__aeabi_idiv0>:
    f710:	e12fff1e 	bx	lr

0000f714 <exit>:
    f714:	e92d4008 	push	{r3, lr}
    f718:	e3a01000 	mov	r1, #0
    f71c:	e1a04000 	mov	r4, r0
    f720:	eb000051 	bl	f86c <__call_exitprocs>
    f724:	e30f3fd0 	movw	r3, #65488	; 0xffd0
    f728:	e3403000 	movt	r3, #0
    f72c:	e5930000 	ldr	r0, [r3]
    f730:	e590303c 	ldr	r3, [r0, #60]	; 0x3c
    f734:	e3530000 	cmp	r3, #0
    f738:	0a000000 	beq	f740 <exit+0x2c>
    f73c:	e12fff33 	blx	r3
    f740:	e1a00004 	mov	r0, r4
    f744:	eb0000e4 	bl	fadc <_exit>

0000f748 <__libc_fini_array>:
    f748:	e92d4038 	push	{r3, r4, r5, lr}
    f74c:	e300466c 	movw	r4, #1644	; 0x66c
    f750:	e3005668 	movw	r5, #1640	; 0x668
    f754:	e3404001 	movt	r4, #1
    f758:	e3405001 	movt	r5, #1
    f75c:	e0654004 	rsb	r4, r5, r4
    f760:	e1b04144 	asrs	r4, r4, #2
    f764:	10855104 	addne	r5, r5, r4, lsl #2
    f768:	0a000003 	beq	f77c <__libc_fini_array+0x34>
    f76c:	e5353004 	ldr	r3, [r5, #-4]!
    f770:	e12fff33 	blx	r3
    f774:	e2544001 	subs	r4, r4, #1
    f778:	1afffffb 	bne	f76c <__libc_fini_array+0x24>
    f77c:	e8bd4038 	pop	{r3, r4, r5, lr}
    f780:	ea000125 	b	fc1c <_fini>

0000f784 <__libc_init_array>:
    f784:	e92d4070 	push	{r4, r5, r6, lr}
    f788:	e3006660 	movw	r6, #1632	; 0x660
    f78c:	e3005660 	movw	r5, #1632	; 0x660
    f790:	e3406001 	movt	r6, #1
    f794:	e3405001 	movt	r5, #1
    f798:	e0656006 	rsb	r6, r5, r6
    f79c:	e1b06146 	asrs	r6, r6, #2
    f7a0:	12455004 	subne	r5, r5, #4
    f7a4:	13a04000 	movne	r4, #0
    f7a8:	0a000004 	beq	f7c0 <__libc_init_array+0x3c>
    f7ac:	e5b53004 	ldr	r3, [r5, #4]!
    f7b0:	e2844001 	add	r4, r4, #1
    f7b4:	e12fff33 	blx	r3
    f7b8:	e1560004 	cmp	r6, r4
    f7bc:	1afffffa 	bne	f7ac <__libc_init_array+0x28>
    f7c0:	e3006668 	movw	r6, #1640	; 0x668
    f7c4:	e3005660 	movw	r5, #1632	; 0x660
    f7c8:	e3406001 	movt	r6, #1
    f7cc:	e3405001 	movt	r5, #1
    f7d0:	e0656006 	rsb	r6, r5, r6
    f7d4:	eb00010a 	bl	fc04 <_init>
    f7d8:	e1b06146 	asrs	r6, r6, #2
    f7dc:	08bd8070 	popeq	{r4, r5, r6, pc}
    f7e0:	e2455004 	sub	r5, r5, #4
    f7e4:	e3a04000 	mov	r4, #0
    f7e8:	e5b53004 	ldr	r3, [r5, #4]!
    f7ec:	e2844001 	add	r4, r4, #1
    f7f0:	e12fff33 	blx	r3
    f7f4:	e1560004 	cmp	r6, r4
    f7f8:	1afffffa 	bne	f7e8 <__libc_init_array+0x64>
    f7fc:	e8bd8070 	pop	{r4, r5, r6, pc}

0000f800 <strlen>:
    f800:	f5d0f000 	pld	[r0]
    f804:	e3c01003 	bic	r1, r0, #3
    f808:	e2100003 	ands	r0, r0, #3
    f80c:	e2600000 	rsb	r0, r0, #0
    f810:	e4913004 	ldr	r3, [r1], #4
    f814:	e280c004 	add	ip, r0, #4
    f818:	e1a0c18c 	lsl	ip, ip, #3
    f81c:	e3e02000 	mvn	r2, #0
    f820:	11833c32 	orrne	r3, r3, r2, lsr ip
    f824:	e300c101 	movw	ip, #257	; 0x101
    f828:	e18cc80c 	orr	ip, ip, ip, lsl #16
    f82c:	e043200c 	sub	r2, r3, ip
    f830:	e1c22003 	bic	r2, r2, r3
    f834:	e012238c 	ands	r2, r2, ip, lsl #7
    f838:	04913004 	ldreq	r3, [r1], #4
    f83c:	02800004 	addeq	r0, r0, #4
    f840:	f5d1f008 	pld	[r1, #8]
    f844:	0043200c 	subeq	r2, r3, ip
    f848:	01c22003 	biceq	r2, r2, r3
    f84c:	0012238c 	andseq	r2, r2, ip, lsl #7
    f850:	04913004 	ldreq	r3, [r1], #4
    f854:	02800004 	addeq	r0, r0, #4
    f858:	0afffff3 	beq	f82c <strlen+0x2c>
    f85c:	e6ff2f32 	rbit	r2, r2
    f860:	e16f2f12 	clz	r2, r2
    f864:	e08001a2 	add	r0, r0, r2, lsr #3
    f868:	e12fff1e 	bx	lr

0000f86c <__call_exitprocs>:
    f86c:	e30f3fd0 	movw	r3, #65488	; 0xffd0
    f870:	e3403000 	movt	r3, #0
    f874:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    f878:	e24dd014 	sub	sp, sp, #20
    f87c:	e5933000 	ldr	r3, [r3]
    f880:	e1a06001 	mov	r6, r1
    f884:	e3a0a001 	mov	sl, #1
    f888:	e3002000 	movw	r2, #0
    f88c:	e58d0008 	str	r0, [sp, #8]
    f890:	e3402000 	movt	r2, #0
    f894:	e58d3004 	str	r3, [sp, #4]
    f898:	e2833f52 	add	r3, r3, #328	; 0x148
    f89c:	e58d2000 	str	r2, [sp]
    f8a0:	e58d300c 	str	r3, [sp, #12]
    f8a4:	e59d2004 	ldr	r2, [sp, #4]
    f8a8:	e59db00c 	ldr	fp, [sp, #12]
    f8ac:	e5927148 	ldr	r7, [r2, #328]	; 0x148
    f8b0:	e3570000 	cmp	r7, #0
    f8b4:	0a000032 	beq	f984 <__call_exitprocs+0x118>
    f8b8:	e5975004 	ldr	r5, [r7, #4]
    f8bc:	e2554001 	subs	r4, r5, #1
    f8c0:	4a00002c 	bmi	f978 <__call_exitprocs+0x10c>
    f8c4:	e285501f 	add	r5, r5, #31
    f8c8:	e2878088 	add	r8, r7, #136	; 0x88
    f8cc:	e0885105 	add	r5, r8, r5, lsl #2
    f8d0:	ea000006 	b	f8f0 <__call_exitprocs+0x84>
    f8d4:	e5953000 	ldr	r3, [r5]
    f8d8:	e1530006 	cmp	r3, r6
    f8dc:	0a000005 	beq	f8f8 <__call_exitprocs+0x8c>
    f8e0:	e2444001 	sub	r4, r4, #1
    f8e4:	e2455004 	sub	r5, r5, #4
    f8e8:	e3740001 	cmn	r4, #1
    f8ec:	0a000021 	beq	f978 <__call_exitprocs+0x10c>
    f8f0:	e3560000 	cmp	r6, #0
    f8f4:	1afffff6 	bne	f8d4 <__call_exitprocs+0x68>
    f8f8:	e5973004 	ldr	r3, [r7, #4]
    f8fc:	e0682005 	rsb	r2, r8, r5
    f900:	e0872002 	add	r2, r7, r2
    f904:	e2433001 	sub	r3, r3, #1
    f908:	e1530004 	cmp	r3, r4
    f90c:	e5123078 	ldr	r3, [r2, #-120]	; 0xffffff88
    f910:	05874004 	streq	r4, [r7, #4]
    f914:	13a01000 	movne	r1, #0
    f918:	15021078 	strne	r1, [r2, #-120]	; 0xffffff88
    f91c:	e3530000 	cmp	r3, #0
    f920:	0affffee 	beq	f8e0 <__call_exitprocs+0x74>
    f924:	e5971188 	ldr	r1, [r7, #392]	; 0x188
    f928:	e1a0241a 	lsl	r2, sl, r4
    f92c:	e5979004 	ldr	r9, [r7, #4]
    f930:	e1120001 	tst	r2, r1
    f934:	0a000014 	beq	f98c <__call_exitprocs+0x120>
    f938:	e597118c 	ldr	r1, [r7, #396]	; 0x18c
    f93c:	e1120001 	tst	r2, r1
    f940:	1a000013 	bne	f994 <__call_exitprocs+0x128>
    f944:	e59d0008 	ldr	r0, [sp, #8]
    f948:	e5151080 	ldr	r1, [r5, #-128]	; 0xffffff80
    f94c:	e12fff33 	blx	r3
    f950:	e5973004 	ldr	r3, [r7, #4]
    f954:	e1530009 	cmp	r3, r9
    f958:	1affffd1 	bne	f8a4 <__call_exitprocs+0x38>
    f95c:	e59b3000 	ldr	r3, [fp]
    f960:	e1530007 	cmp	r3, r7
    f964:	1affffce 	bne	f8a4 <__call_exitprocs+0x38>
    f968:	e2444001 	sub	r4, r4, #1
    f96c:	e2455004 	sub	r5, r5, #4
    f970:	e3740001 	cmn	r4, #1
    f974:	1affffdd 	bne	f8f0 <__call_exitprocs+0x84>
    f978:	e59d2000 	ldr	r2, [sp]
    f97c:	e3520000 	cmp	r2, #0
    f980:	1a000006 	bne	f9a0 <__call_exitprocs+0x134>
    f984:	e28dd014 	add	sp, sp, #20
    f988:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    f98c:	e12fff33 	blx	r3
    f990:	eaffffee 	b	f950 <__call_exitprocs+0xe4>
    f994:	e5150080 	ldr	r0, [r5, #-128]	; 0xffffff80
    f998:	e12fff33 	blx	r3
    f99c:	eaffffeb 	b	f950 <__call_exitprocs+0xe4>
    f9a0:	e5973004 	ldr	r3, [r7, #4]
    f9a4:	e3530000 	cmp	r3, #0
    f9a8:	e5973000 	ldr	r3, [r7]
    f9ac:	1a000006 	bne	f9cc <__call_exitprocs+0x160>
    f9b0:	e3530000 	cmp	r3, #0
    f9b4:	0a000004 	beq	f9cc <__call_exitprocs+0x160>
    f9b8:	e1a00007 	mov	r0, r7
    f9bc:	e58b3000 	str	r3, [fp]
    f9c0:	e320f000 	nop	{0}
    f9c4:	e59b7000 	ldr	r7, [fp]
    f9c8:	eaffffb8 	b	f8b0 <__call_exitprocs+0x44>
    f9cc:	e1a0b007 	mov	fp, r7
    f9d0:	e1a07003 	mov	r7, r3
    f9d4:	eaffffb5 	b	f8b0 <__call_exitprocs+0x44>

0000f9d8 <atexit>:
    f9d8:	e1a01000 	mov	r1, r0
    f9dc:	e3a00000 	mov	r0, #0
    f9e0:	e1a02000 	mov	r2, r0
    f9e4:	e1a03000 	mov	r3, r0
    f9e8:	eaffffff 	b	f9ec <__register_exitproc>

0000f9ec <__register_exitproc>:
    f9ec:	e30fcfd0 	movw	ip, #65488	; 0xffd0
    f9f0:	e340c000 	movt	ip, #0
    f9f4:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    f9f8:	e1a06000 	mov	r6, r0
    f9fc:	e59c4000 	ldr	r4, [ip]
    fa00:	e24dd014 	sub	sp, sp, #20
    fa04:	e594c148 	ldr	ip, [r4, #328]	; 0x148
    fa08:	e35c0000 	cmp	ip, #0
    fa0c:	0284cf53 	addeq	ip, r4, #332	; 0x14c
    fa10:	0584c148 	streq	ip, [r4, #328]	; 0x148
    fa14:	e59c5004 	ldr	r5, [ip, #4]
    fa18:	e355001f 	cmp	r5, #31
    fa1c:	da000016 	ble	fa7c <__register_exitproc+0x90>
    fa20:	e300c000 	movw	ip, #0
    fa24:	e340c000 	movt	ip, #0
    fa28:	e35c0000 	cmp	ip, #0
    fa2c:	1a000001 	bne	fa38 <__register_exitproc+0x4c>
    fa30:	e3e00000 	mvn	r0, #0
    fa34:	ea000018 	b	fa9c <__register_exitproc+0xb0>
    fa38:	e3a00e19 	mov	r0, #400	; 0x190
    fa3c:	e58d100c 	str	r1, [sp, #12]
    fa40:	e58d2008 	str	r2, [sp, #8]
    fa44:	e58d3004 	str	r3, [sp, #4]
    fa48:	e320f000 	nop	{0}
    fa4c:	e59d100c 	ldr	r1, [sp, #12]
    fa50:	e59d2008 	ldr	r2, [sp, #8]
    fa54:	e59d3004 	ldr	r3, [sp, #4]
    fa58:	e250c000 	subs	ip, r0, #0
    fa5c:	0afffff3 	beq	fa30 <__register_exitproc+0x44>
    fa60:	e5945148 	ldr	r5, [r4, #328]	; 0x148
    fa64:	e3a00000 	mov	r0, #0
    fa68:	e58c0004 	str	r0, [ip, #4]
    fa6c:	e58c5000 	str	r5, [ip]
    fa70:	e584c148 	str	ip, [r4, #328]	; 0x148
    fa74:	e58c0188 	str	r0, [ip, #392]	; 0x188
    fa78:	e58c018c 	str	r0, [ip, #396]	; 0x18c
    fa7c:	e3560000 	cmp	r6, #0
    fa80:	e59c4004 	ldr	r4, [ip, #4]
    fa84:	1a000006 	bne	faa4 <__register_exitproc+0xb8>
    fa88:	e2843002 	add	r3, r4, #2
    fa8c:	e3a00000 	mov	r0, #0
    fa90:	e2844001 	add	r4, r4, #1
    fa94:	e58c4004 	str	r4, [ip, #4]
    fa98:	e78c1103 	str	r1, [ip, r3, lsl #2]
    fa9c:	e28dd014 	add	sp, sp, #20
    faa0:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    faa4:	e3560002 	cmp	r6, #2
    faa8:	e08c6104 	add	r6, ip, r4, lsl #2
    faac:	e59c7188 	ldr	r7, [ip, #392]	; 0x188
    fab0:	e3a00001 	mov	r0, #1
    fab4:	e5863108 	str	r3, [r6, #264]	; 0x108
    fab8:	e1a00410 	lsl	r0, r0, r4
    fabc:	059c318c 	ldreq	r3, [ip, #396]	; 0x18c
    fac0:	e1877000 	orr	r7, r7, r0
    fac4:	e1a05006 	mov	r5, r6
    fac8:	e58c7188 	str	r7, [ip, #392]	; 0x188
    facc:	01830000 	orreq	r0, r3, r0
    fad0:	e5862088 	str	r2, [r6, #136]	; 0x88
    fad4:	058c018c 	streq	r0, [ip, #396]	; 0x18c
    fad8:	eaffffea 	b	fa88 <__register_exitproc+0x9c>

0000fadc <_exit>:
    fadc:	eafffffe 	b	fadc <_exit>

0000fae0 <main>:
    fae0:	e92d4010 	push	{r4, lr}
    fae4:	e3000030 	movw	r0, #48	; 0x30
    fae8:	e24dd018 	sub	sp, sp, #24
    faec:	e3400001 	movt	r0, #1
    faf0:	ebfff948 	bl	e018 <print>
    faf4:	e30b0934 	movw	r0, #47412	; 0xb934
    faf8:	e30313dc 	movw	r1, #13276	; 0x33dc
    fafc:	e3400000 	movt	r0, #0
    fb00:	e3401001 	movt	r1, #1
    fb04:	e3a04000 	mov	r4, #0
    fb08:	ebfff842 	bl	dc18 <guest_IRQ_Register>
    fb0c:	ebfff83b 	bl	dc00 <guest_CPU_IntDis>
    fb10:	ebfff7fa 	bl	db00 <BSP_Init>
    fb14:	ebfff759 	bl	d880 <CPU_Init>
    fb18:	e30001dc 	movw	r0, #476	; 0x1dc
    fb1c:	e3400001 	movt	r0, #1
    fb20:	ebfff93c 	bl	e018 <print>
    fb24:	e3000050 	movw	r0, #80	; 0x50
    fb28:	e3400001 	movt	r0, #1
    fb2c:	ebfff939 	bl	e018 <print>
    fb30:	e300005c 	movw	r0, #92	; 0x5c
    fb34:	e3400001 	movt	r0, #1
    fb38:	ebfff936 	bl	e018 <print>
    fb3c:	e3000068 	movw	r0, #104	; 0x68
    fb40:	e3400001 	movt	r0, #1
    fb44:	ebfff933 	bl	e018 <print>
    fb48:	e300009c 	movw	r0, #156	; 0x9c
    fb4c:	e3400001 	movt	r0, #1
    fb50:	ebfff930 	bl	e018 <print>
    fb54:	e30000d8 	movw	r0, #216	; 0xd8
    fb58:	e3400001 	movt	r0, #1
    fb5c:	ebfff92d 	bl	e018 <print>
    fb60:	e3000114 	movw	r0, #276	; 0x114
    fb64:	e3400001 	movt	r0, #1
    fb68:	ebfff92a 	bl	e018 <print>
    fb6c:	e3000150 	movw	r0, #336	; 0x150
    fb70:	e3400001 	movt	r0, #1
    fb74:	ebfff927 	bl	e018 <print>
    fb78:	e3000184 	movw	r0, #388	; 0x184
    fb7c:	e3400001 	movt	r0, #1
    fb80:	ebfff924 	bl	e018 <print>
    fb84:	e30001b0 	movw	r0, #432	; 0x1b0
    fb88:	e3400001 	movt	r0, #1
    fb8c:	ebfff921 	bl	e018 <print>
    fb90:	ebffe1e5 	bl	832c <OSInit>
    fb94:	e59f0048 	ldr	r0, [pc, #72]	; fbe4 <main+0x104>
    fb98:	e3a0c008 	mov	ip, #8
    fb9c:	e1a01004 	mov	r1, r4
    fba0:	e2802e7f 	add	r2, r0, #2032	; 0x7f0
    fba4:	e1a0300c 	mov	r3, ip
    fba8:	e282200c 	add	r2, r2, #12
    fbac:	e58dc000 	str	ip, [sp]
    fbb0:	e58d0004 	str	r0, [sp, #4]
    fbb4:	e3a0c003 	mov	ip, #3
    fbb8:	e58d400c 	str	r4, [sp, #12]
    fbbc:	e3a00c02 	mov	r0, #512	; 0x200
    fbc0:	e58dc010 	str	ip, [sp, #16]
    fbc4:	e58d0008 	str	r0, [sp, #8]
    fbc8:	e30d0eb4 	movw	r0, #57012	; 0xdeb4
    fbcc:	e3400000 	movt	r0, #0
    fbd0:	ebffec12 	bl	ac20 <OSTaskCreateExt>
    fbd4:	ebffe2d9 	bl	8740 <OSStart>
    fbd8:	e1a00004 	mov	r0, r4
    fbdc:	e28dd018 	add	sp, sp, #24
    fbe0:	e8bd8010 	pop	{r4, pc}
    fbe4:	00011e88 	andeq	r1, r1, r8, lsl #29

0000fbe8 <register_fini>:
    fbe8:	e3003000 	movw	r3, #0
    fbec:	e3403000 	movt	r3, #0
    fbf0:	e3530000 	cmp	r3, #0
    fbf4:	012fff1e 	bxeq	lr
    fbf8:	e30f0748 	movw	r0, #63304	; 0xf748
    fbfc:	e3400000 	movt	r0, #0
    fc00:	eaffff74 	b	f9d8 <atexit>

Disassembly of section .init:

0000fc04 <_init>:
    fc04:	e1a0c00d 	mov	ip, sp
    fc08:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
    fc0c:	e24cb004 	sub	fp, ip, #4
    fc10:	e24bd028 	sub	sp, fp, #40	; 0x28
    fc14:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
    fc18:	e12fff1e 	bx	lr

Disassembly of section .fini:

0000fc1c <_fini>:
    fc1c:	e1a0c00d 	mov	ip, sp
    fc20:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
    fc24:	e24cb004 	sub	fp, ip, #4
    fc28:	e24bd028 	sub	sp, fp, #40	; 0x28
    fc2c:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
    fc30:	e12fff1e 	bx	lr

Disassembly of section .rodata:

0000fc34 <OSUnMapTbl>:
    fc34:	00010000 	andeq	r0, r1, r0
    fc38:	00010002 	andeq	r0, r1, r2
    fc3c:	00010003 	andeq	r0, r1, r3
    fc40:	00010002 	andeq	r0, r1, r2
    fc44:	00010004 	andeq	r0, r1, r4
    fc48:	00010002 	andeq	r0, r1, r2
    fc4c:	00010003 	andeq	r0, r1, r3
    fc50:	00010002 	andeq	r0, r1, r2
    fc54:	00010005 	andeq	r0, r1, r5
    fc58:	00010002 	andeq	r0, r1, r2
    fc5c:	00010003 	andeq	r0, r1, r3
    fc60:	00010002 	andeq	r0, r1, r2
    fc64:	00010004 	andeq	r0, r1, r4
    fc68:	00010002 	andeq	r0, r1, r2
    fc6c:	00010003 	andeq	r0, r1, r3
    fc70:	00010002 	andeq	r0, r1, r2
    fc74:	00010006 	andeq	r0, r1, r6
    fc78:	00010002 	andeq	r0, r1, r2
    fc7c:	00010003 	andeq	r0, r1, r3
    fc80:	00010002 	andeq	r0, r1, r2
    fc84:	00010004 	andeq	r0, r1, r4
    fc88:	00010002 	andeq	r0, r1, r2
    fc8c:	00010003 	andeq	r0, r1, r3
    fc90:	00010002 	andeq	r0, r1, r2
    fc94:	00010005 	andeq	r0, r1, r5
    fc98:	00010002 	andeq	r0, r1, r2
    fc9c:	00010003 	andeq	r0, r1, r3
    fca0:	00010002 	andeq	r0, r1, r2
    fca4:	00010004 	andeq	r0, r1, r4
    fca8:	00010002 	andeq	r0, r1, r2
    fcac:	00010003 	andeq	r0, r1, r3
    fcb0:	00010002 	andeq	r0, r1, r2
    fcb4:	00010007 	andeq	r0, r1, r7
    fcb8:	00010002 	andeq	r0, r1, r2
    fcbc:	00010003 	andeq	r0, r1, r3
    fcc0:	00010002 	andeq	r0, r1, r2
    fcc4:	00010004 	andeq	r0, r1, r4
    fcc8:	00010002 	andeq	r0, r1, r2
    fccc:	00010003 	andeq	r0, r1, r3
    fcd0:	00010002 	andeq	r0, r1, r2
    fcd4:	00010005 	andeq	r0, r1, r5
    fcd8:	00010002 	andeq	r0, r1, r2
    fcdc:	00010003 	andeq	r0, r1, r3
    fce0:	00010002 	andeq	r0, r1, r2
    fce4:	00010004 	andeq	r0, r1, r4
    fce8:	00010002 	andeq	r0, r1, r2
    fcec:	00010003 	andeq	r0, r1, r3
    fcf0:	00010002 	andeq	r0, r1, r2
    fcf4:	00010006 	andeq	r0, r1, r6
    fcf8:	00010002 	andeq	r0, r1, r2
    fcfc:	00010003 	andeq	r0, r1, r3
    fd00:	00010002 	andeq	r0, r1, r2
    fd04:	00010004 	andeq	r0, r1, r4
    fd08:	00010002 	andeq	r0, r1, r2
    fd0c:	00010003 	andeq	r0, r1, r3
    fd10:	00010002 	andeq	r0, r1, r2
    fd14:	00010005 	andeq	r0, r1, r5
    fd18:	00010002 	andeq	r0, r1, r2
    fd1c:	00010003 	andeq	r0, r1, r3
    fd20:	00010002 	andeq	r0, r1, r2
    fd24:	00010004 	andeq	r0, r1, r4
    fd28:	00010002 	andeq	r0, r1, r2
    fd2c:	00010003 	andeq	r0, r1, r3
    fd30:	00010002 	andeq	r0, r1, r2

0000fd34 <OSDebugEn>:
    fd34:	00000000 	andeq	r0, r0, r0

0000fd38 <Str_MultOvfThTbl_Int32U>:
    fd38:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    fd3c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    fd40:	7fffffff 	svcvc	0x00ffffff
    fd44:	55555555 	ldrbpl	r5, [r5, #-1365]	; 0xfffffaab
    fd48:	3fffffff 	svccc	0x00ffffff
    fd4c:	33333333 	teqcc	r3, #-872415232	; 0xcc000000
    fd50:	2aaaaaaa 	bcs	feaba800 <CPU_ARM_BIT_CNTES_C+0x7eaba800>
    fd54:	24924924 	ldrcs	r4, [r2], #2340	; 0x924
    fd58:	1fffffff 	svcne	0x00ffffff
    fd5c:	1c71c71c 	ldclne	7, cr12, [r1], #-112	; 0xffffff90
    fd60:	19999999 	ldmibne	r9, {r0, r3, r4, r7, r8, fp, ip, pc}
    fd64:	1745d174 	smlsldxne	sp, r5, r4, r1
    fd68:	15555555 	ldrbne	r5, [r5, #-1365]	; 0xfffffaab
    fd6c:	13b13b13 			; <UNDEFINED> instruction: 0x13b13b13
    fd70:	12492492 	subne	r2, r9, #-1845493760	; 0x92000000
    fd74:	11111111 	tstne	r1, r1, lsl r1
    fd78:	0fffffff 	svceq	0x00ffffff
    fd7c:	0f0f0f0f 	svceq	0x000f0f0f
    fd80:	0e38e38e 	cdpeq	3, 3, cr14, cr8, cr14, {4}
    fd84:	0d79435e 	ldcleq	3, cr4, [r9, #-376]!	; 0xfffffe88
    fd88:	0ccccccc 	stcleq	12, cr12, [ip], {204}	; 0xcc
    fd8c:	0c30c30c 	ldceq	3, cr12, [r0], #-48	; 0xffffffd0
    fd90:	0ba2e8ba 	bleq	fe8ca080 <CPU_ARM_BIT_CNTES_C+0x7e8ca080>
    fd94:	0b21642c 	bleq	868e4c <__stack+0x8519fc>
    fd98:	0aaaaaaa 	beq	feaba848 <CPU_ARM_BIT_CNTES_C+0x7eaba848>
    fd9c:	0a3d70a3 	beq	f6c030 <__stack+0xf54be0>
    fda0:	09d89d89 	ldmibeq	r8, {r0, r3, r7, r8, sl, fp, ip, pc}^
    fda4:	097b425e 	ldmdbeq	fp!, {r1, r2, r3, r4, r6, r9, lr}^
    fda8:	09249249 	stmdbeq	r4!, {r0, r3, r6, r9, ip, pc}
    fdac:	08d3dcb0 	ldmeq	r3, {r4, r5, r7, sl, fp, ip, lr, pc}^
    fdb0:	08888888 	stmeq	r8, {r3, r7, fp, pc}
    fdb4:	08421084 	stmdaeq	r2, {r2, r7, ip}^
    fdb8:	07ffffff 			; <UNDEFINED> instruction: 0x07ffffff
    fdbc:	07c1f07c 			; <UNDEFINED> instruction: 0x07c1f07c
    fdc0:	07878787 	streq	r8, [r7, r7, lsl #15]
    fdc4:	07507507 	ldrbeq	r7, [r0, -r7, lsl #10]
    fdc8:	071c71c7 	ldreq	r7, [ip, -r7, asr #3]

0000fdcc <CPU_CntLeadZerosTbl>:
    fdcc:	06060708 	streq	r0, [r6], -r8, lsl #14
    fdd0:	05050505 	streq	r0, [r5, #-1285]	; 0xfffffafb
    fdd4:	04040404 	streq	r0, [r4], #-1028	; 0xfffffbfc
    fdd8:	04040404 	streq	r0, [r4], #-1028	; 0xfffffbfc
    fddc:	03030303 	movweq	r0, #13059	; 0x3303
    fde0:	03030303 	movweq	r0, #13059	; 0x3303
    fde4:	03030303 	movweq	r0, #13059	; 0x3303
    fde8:	03030303 	movweq	r0, #13059	; 0x3303
    fdec:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    fdf0:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    fdf4:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    fdf8:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    fdfc:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    fe00:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    fe04:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    fe08:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    fe0c:	01010101 	tsteq	r1, r1, lsl #2
    fe10:	01010101 	tsteq	r1, r1, lsl #2
    fe14:	01010101 	tsteq	r1, r1, lsl #2
    fe18:	01010101 	tsteq	r1, r1, lsl #2
    fe1c:	01010101 	tsteq	r1, r1, lsl #2
    fe20:	01010101 	tsteq	r1, r1, lsl #2
    fe24:	01010101 	tsteq	r1, r1, lsl #2
    fe28:	01010101 	tsteq	r1, r1, lsl #2
    fe2c:	01010101 	tsteq	r1, r1, lsl #2
    fe30:	01010101 	tsteq	r1, r1, lsl #2
    fe34:	01010101 	tsteq	r1, r1, lsl #2
    fe38:	01010101 	tsteq	r1, r1, lsl #2
    fe3c:	01010101 	tsteq	r1, r1, lsl #2
    fe40:	01010101 	tsteq	r1, r1, lsl #2
    fe44:	01010101 	tsteq	r1, r1, lsl #2
    fe48:	01010101 	tsteq	r1, r1, lsl #2
	...

0000fecc <_ctype_>:
    fecc:	20202000 	eorcs	r2, r0, r0
    fed0:	20202020 	eorcs	r2, r0, r0, lsr #32
    fed4:	28282020 	stmdacs	r8!, {r5, sp}
    fed8:	20282828 	eorcs	r2, r8, r8, lsr #16
    fedc:	20202020 	eorcs	r2, r0, r0, lsr #32
    fee0:	20202020 	eorcs	r2, r0, r0, lsr #32
    fee4:	20202020 	eorcs	r2, r0, r0, lsr #32
    fee8:	20202020 	eorcs	r2, r0, r0, lsr #32
    feec:	10108820 	andsne	r8, r0, r0, lsr #16
    fef0:	10101010 	andsne	r1, r0, r0, lsl r0
    fef4:	10101010 	andsne	r1, r0, r0, lsl r0
    fef8:	10101010 	andsne	r1, r0, r0, lsl r0
    fefc:	04040410 	streq	r0, [r4], #-1040	; 0xfffffbf0
    ff00:	04040404 	streq	r0, [r4], #-1028	; 0xfffffbfc
    ff04:	10040404 	andne	r0, r4, r4, lsl #8
    ff08:	10101010 	andsne	r1, r0, r0, lsl r0
    ff0c:	41411010 	cmpmi	r1, r0, lsl r0
    ff10:	41414141 	cmpmi	r1, r1, asr #2
    ff14:	01010101 	tsteq	r1, r1, lsl #2
    ff18:	01010101 	tsteq	r1, r1, lsl #2
    ff1c:	01010101 	tsteq	r1, r1, lsl #2
    ff20:	01010101 	tsteq	r1, r1, lsl #2
    ff24:	01010101 	tsteq	r1, r1, lsl #2
    ff28:	10101010 	andsne	r1, r0, r0, lsl r0
    ff2c:	42421010 	submi	r1, r2, #16
    ff30:	42424242 	submi	r4, r2, #536870916	; 0x20000004
    ff34:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    ff38:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    ff3c:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    ff40:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    ff44:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    ff48:	10101010 	andsne	r1, r0, r0, lsl r0
    ff4c:	00000020 	andeq	r0, r0, r0, lsr #32
	...

0000ffd0 <_global_impure_ptr>:
    ffd0:	00010230 	andeq	r0, r1, r0, lsr r2
    ffd4:	0000003f 	andeq	r0, r0, pc, lsr r0
    ffd8:	4f2f4375 	svcmi	0x002f4375
    ffdc:	49492d53 	stmdbmi	r9, {r0, r1, r4, r6, r8, sl, fp, sp}^
    ffe0:	6c644920 	stclvs	9, cr4, [r4], #-128	; 0xffffff80
    ffe4:	00000065 	andeq	r0, r0, r5, rrx
    ffe8:	00007825 	andeq	r7, r0, r5, lsr #16
    ffec:	6b736154 	blvs	1ce8544 <__stack+0x1cd10f4>
    fff0:	61745320 	cmnvs	r4, r0, lsr #6
    fff4:	43207472 	teqmi	r0, #1912602624	; 0x72000000
    fff8:	74616572 	strbtvc	r6, [r1], #-1394	; 0xfffffa8e
    fffc:	0a0d6465 	beq	369198 <__stack+0x351d48>
   10000:	00000000 	andeq	r0, r0, r0
   10004:	00000078 	andeq	r0, r0, r8, ror r0
   10008:	6b736154 	blvs	1ce8560 <__stack+0x1cd1110>
   1000c:	20352320 	eorscs	r2, r5, r0, lsr #6
   10010:	72617453 	rsbvc	r7, r1, #1392508928	; 0x53000000
   10014:	0d646574 	cfstr64eq	mvdx6, [r4, #-464]!	; 0xfffffe30
   10018:	0000000a 	andeq	r0, r0, sl
   1001c:	6b736154 	blvs	1ce8574 <__stack+0x1cd1124>
   10020:	20342320 	eorscs	r2, r4, r0, lsr #6
   10024:	72617453 	rsbvc	r7, r1, #1392508928	; 0x53000000
   10028:	0d646574 	cfstr64eq	mvdx6, [r4, #-464]!	; 0xfffffe30
   1002c:	0000000a 	andeq	r0, r0, sl
   10030:	2a2a2a2a 	bcs	a9a8e0 <__stack+0xa83490>
   10034:	75202a2a 	strvc	r2, [r0, #-2602]!	; 0xfffff5d6
   10038:	534f2f43 	movtpl	r2, #65347	; 0xff43
   1003c:	2049492d 	subcs	r4, r9, sp, lsr #18
   10040:	72617473 	rsbvc	r7, r1, #1929379840	; 0x73000000
   10044:	2a2a2074 	bcs	a9821c <__stack+0xa80dcc>
   10048:	2a2a2a2a 	bcs	a9a8f8 <__stack+0xa834a8>
   1004c:	00000a0d 	andeq	r0, r0, sp, lsl #20
   10050:	7263694d 	rsbvc	r6, r3, #1261568	; 0x134000
   10054:	0d6d7569 	cfstr64eq	mvdx7, [sp, #-420]!	; 0xfffffe5c
   10058:	0000000a 	andeq	r0, r0, sl
   1005c:	534f4375 	movtpl	r4, #62325	; 0xf375
   10060:	0d49492d 	stcleq	9, cr4, [r9, #-180]	; 0xffffff4c
   10064:	000a0d0a 	andeq	r0, sl, sl, lsl #26
   10068:	73696854 	cmnvc	r9, #84, 16	; 0x540000
   1006c:	70706120 	rsbsvc	r6, r0, r0, lsr #2
   10070:	6163696c 	cmnvs	r3, ip, ror #18
   10074:	6e6f6974 	mcrvs	9, 3, r6, cr15, cr4, {3}
   10078:	6e757220 	cdpvs	2, 7, cr7, cr5, cr0, {1}
   1007c:	68742073 	ldmdavs	r4!, {r0, r1, r4, r5, r6, sp}^
   10080:	20656572 	rsbcs	r6, r5, r2, ror r5
   10084:	66666964 	strbtvs	r6, [r6], -r4, ror #18
   10088:	6e657265 	cdpvs	2, 6, cr7, cr5, cr5, {3}
   1008c:	61742074 	cmnvs	r4, r4, ror r0
   10090:	3a736b73 	bcc	1ceae64 <__stack+0x1cd3a14>
   10094:	0a0d0a0d 	beq	3528d0 <__stack+0x33b480>
   10098:	00000000 	andeq	r0, r0, r0
   1009c:	54202e31 	strtpl	r2, [r0], #-3633	; 0xfffff1cf
   100a0:	206b7361 	rsbcs	r7, fp, r1, ror #6
   100a4:	72617453 	rsbvc	r7, r1, #1392508928	; 0x53000000
   100a8:	49203a74 	stmdbmi	r0!, {r2, r4, r5, r6, r9, fp, ip, sp}
   100ac:	6974696e 	ldmdbvs	r4!, {r1, r2, r3, r5, r6, r8, fp, sp, lr}^
   100b0:	7a696c61 	bvc	1a6b23c <__stack+0x1a53dec>
   100b4:	74207365 	strtvc	r7, [r0], #-869	; 0xfffffc9b
   100b8:	4f206568 	svcmi	0x00206568
   100bc:	6e612053 	mcrvs	0, 3, r2, cr1, cr3, {2}
   100c0:	72632064 	rsbvc	r2, r3, #100	; 0x64
   100c4:	65746165 	ldrbvs	r6, [r4, #-357]!	; 0xfffffe9b
   100c8:	61742073 	cmnvs	r4, r3, ror r0
   100cc:	20736b73 	rsbscs	r6, r3, r3, ror fp
   100d0:	0d646e61 	stcleq	14, cr6, [r4, #-388]!	; 0xfffffe7c
   100d4:	0000000a 	andeq	r0, r0, sl
   100d8:	20202020 	eorcs	r2, r0, r0, lsr #32
   100dc:	20202020 	eorcs	r2, r0, r0, lsr #32
   100e0:	20202020 	eorcs	r2, r0, r0, lsr #32
   100e4:	6f202020 	svcvs	0x00202020
   100e8:	72656874 	rsbvc	r6, r5, #116, 16	; 0x740000
   100ec:	72656b20 	rsbvc	r6, r5, #32, 22	; 0x8000
   100f0:	206c656e 	rsbcs	r6, ip, lr, ror #10
   100f4:	656a626f 	strbvs	r6, [sl, #-623]!	; 0xfffffd91
   100f8:	20737463 	rsbscs	r7, r3, r3, ror #8
   100fc:	68637573 	stmdavs	r3!, {r0, r1, r4, r5, r6, r8, sl, ip, sp, lr}^
   10100:	20736120 	rsbscs	r6, r3, r0, lsr #2
   10104:	616d6573 	smcvs	54867	; 0xd653
   10108:	726f6870 	rsbvc	r6, pc, #112, 16	; 0x700000
   1010c:	0d2e7365 	stceq	3, cr7, [lr, #-404]!	; 0xfffffe6c
   10110:	0000000a 	andeq	r0, r0, sl
   10114:	20202020 	eorcs	r2, r0, r0, lsr #32
   10118:	20202020 	eorcs	r2, r0, r0, lsr #32
   1011c:	20202020 	eorcs	r2, r0, r0, lsr #32
   10120:	54202020 	strtpl	r2, [r0], #-32	; 0xffffffe0
   10124:	20736968 	rsbscs	r6, r3, r8, ror #18
   10128:	6b736174 	blvs	1ce8700 <__stack+0x1cd12b0>
   1012c:	6d657220 	sfmvs	f7, 2, [r5, #-128]!	; 0xffffff80
   10130:	736e6961 	cmnvc	lr, #1589248	; 0x184000
   10134:	6e757220 	cdpvs	2, 7, cr7, cr5, cr0, {1}
   10138:	676e696e 	strbvs	r6, [lr, -lr, ror #18]!
   1013c:	646e6120 	strbtvs	r6, [lr], #-288	; 0xfffffee0
   10140:	69727020 	ldmdbvs	r2!, {r5, ip, sp, lr}^
   10144:	6e69746e 	cdpvs	4, 6, cr7, cr9, cr14, {3}
   10148:	0d612067 	stcleq	0, cr2, [r1, #-412]!	; 0xfffffe64
   1014c:	0000000a 	andeq	r0, r0, sl
   10150:	20202020 	eorcs	r2, r0, r0, lsr #32
   10154:	20202020 	eorcs	r2, r0, r0, lsr #32
   10158:	20202020 	eorcs	r2, r0, r0, lsr #32
   1015c:	64202020 	strtvs	r2, [r0], #-32	; 0xffffffe0
   10160:	2720746f 	strcs	r7, [r0, -pc, ror #8]!
   10164:	6520272e 	strvs	r2, [r0, #-1838]!	; 0xfffff8d2
   10168:	79726576 	ldmdbvc	r2!, {r1, r2, r4, r5, r6, r8, sl, sp, lr}^
   1016c:	30303120 	eorscc	r3, r0, r0, lsr #2
   10170:	6c696d20 	stclvs	13, cr6, [r9], #-128	; 0xffffff80
   10174:	6573696c 	ldrbvs	r6, [r3, #-2412]!	; 0xfffff694
   10178:	646e6f63 	strbtvs	r6, [lr], #-3939	; 0xfffff09d
   1017c:	0a0d2e73 	beq	35bb50 <__stack+0x344700>
   10180:	00000000 	andeq	r0, r0, r0
   10184:	54202e32 	strtpl	r2, [r0], #-3634	; 0xfffff1ce
   10188:	206b7361 	rsbcs	r7, fp, r1, ror #6
   1018c:	20203123 	eorcs	r3, r0, r3, lsr #2
   10190:	50203a20 	eorpl	r3, r0, r0, lsr #20
   10194:	746e6972 	strbtvc	r6, [lr], #-2418	; 0xfffff68e
   10198:	31272073 	teqcc	r7, r3, ror r0
   1019c:	76652027 	strbtvc	r2, [r5], -r7, lsr #32
   101a0:	20797265 	rsbscs	r7, r9, r5, ror #4
   101a4:	65732d31 	ldrbvs	r2, [r3, #-3377]!	; 0xfffff2cf
   101a8:	646e6f63 	strbtvs	r6, [lr], #-3939	; 0xfffff09d
   101ac:	000a0d2e 	andeq	r0, sl, lr, lsr #26
   101b0:	54202e33 	strtpl	r2, [r0], #-3635	; 0xfffff1cd
   101b4:	206b7361 	rsbcs	r7, fp, r1, ror #6
   101b8:	20203223 	eorcs	r3, r0, r3, lsr #4
   101bc:	50203a20 	eorpl	r3, r0, r0, lsr #20
   101c0:	746e6972 	strbtvc	r6, [lr], #-2418	; 0xfffff68e
   101c4:	32272073 	eorcc	r2, r7, #115	; 0x73
   101c8:	76652027 	strbtvc	r2, [r5], -r7, lsr #32
   101cc:	20797265 	rsbscs	r7, r9, r5, ror #4
   101d0:	65732d32 	ldrbvs	r2, [r3, #-3378]!	; 0xfffff2ce
   101d4:	646e6f63 	strbtvs	r6, [lr], #-3939	; 0xfffff09d
   101d8:	0a0d2e73 	beq	35bbac <__stack+0x34475c>
   101dc:	00000a0d 	andeq	r0, r0, sp, lsl #20
   101e0:	33323130 	teqcc	r2, #48, 2
   101e4:	37363534 			; <UNDEFINED> instruction: 0x37363534
   101e8:	42413938 	submi	r3, r1, #56, 18	; 0xe0000
   101ec:	46454443 	strbmi	r4, [r5], -r3, asr #8
   101f0:	00000000 	andeq	r0, r0, r0
   101f4:	72617578 	rsbvc	r7, r1, #120, 10	; 0x1e000000
   101f8:	2e737074 	mrccs	0, 3, r7, cr3, cr4, {3}
   101fc:	00000063 	andeq	r0, r0, r3, rrx
   10200:	00000043 	andeq	r0, r0, r3, asr #32

Disassembly of section .data:

00010208 <__data_start>:
   10208:	00000000 	andeq	r0, r0, r0

0001020c <Xil_AssertWait>:
   1020c:	00000001 	andeq	r0, r0, r1

00010210 <XUartPs_ConfigTable>:
   10210:	00000000 	andeq	r0, r0, r0
   10214:	e0001000 	and	r1, r0, r0
   10218:	02faf080 	rscseq	pc, sl, #128	; 0x80
   1021c:	00000000 	andeq	r0, r0, r0

00010220 <__ctype_ptr__>:
   10220:	0000fecc 	andeq	pc, r0, ip, asr #29
   10224:	00000000 	andeq	r0, r0, r0

00010228 <_impure_ptr>:
   10228:	00010230 	andeq	r0, r1, r0, lsr r2
   1022c:	00000000 	andeq	r0, r0, r0

00010230 <impure_data>:
   10230:	00000000 	andeq	r0, r0, r0
   10234:	0001051c 	andeq	r0, r1, ip, lsl r5
   10238:	00010584 	andeq	r0, r1, r4, lsl #11
   1023c:	000105ec 	andeq	r0, r1, ip, ror #11
	...
   10264:	00010200 	andeq	r0, r1, r0, lsl #4
	...
   102d8:	00000001 	andeq	r0, r0, r1
   102dc:	00000000 	andeq	r0, r0, r0
   102e0:	abcd330e 	blge	ff35cf20 <CPU_ARM_BIT_CNTES_C+0x7f35cf20>
   102e4:	e66d1234 			; <UNDEFINED> instruction: 0xe66d1234
   102e8:	0005deec 	andeq	sp, r5, ip, ror #29
   102ec:	0000000b 	andeq	r0, r0, fp
	...

00010658 <__JCR_END__>:
   10658:	00000000 	andeq	r0, r0, r0

Disassembly of section .eh_frame:

0001065c <__EH_FRAME_BEGIN__>:
   1065c:	00000000 	andeq	r0, r0, r0

Disassembly of section .init_array:

00010660 <__eh_framehdr_end>:
   10660:	0000fbe8 	andeq	pc, r0, r8, ror #23

00010664 <__frame_dummy_init_array_entry>:
   10664:	000081bc 			; <UNDEFINED> instruction: 0x000081bc

Disassembly of section .fini_array:

00010668 <__fini_array_start>:
   10668:	00008178 	andeq	r8, r0, r8, ror r1

Disassembly of section .ARM.attributes:

0001066c <__ARM.attributes_start>:
   1066c:	00003241 	andeq	r3, r0, r1, asr #4
   10670:	61656100 	cmnvs	r5, r0, lsl #2
   10674:	01006962 	tsteq	r0, r2, ror #18
   10678:	00000028 	andeq	r0, r0, r8, lsr #32
   1067c:	412d3705 	teqmi	sp, r5, lsl #14
   10680:	070a0600 	streq	r0, [sl, -r0, lsl #12]
   10684:	09010841 	stmdbeq	r1, {r0, r6, fp}
   10688:	0c030a02 	stceq	10, cr0, [r3], {2}
   1068c:	14041201 	strne	r1, [r4], #-513	; 0xfffffdff
   10690:	17011501 	strne	r1, [r1, -r1, lsl #10]
   10694:	1a011803 	bne	566a8 <__stack+0x3f258>
   10698:	22031b01 	andcs	r1, r3, #1024	; 0x400
   1069c:	Address 0x0001069c is out of bounds.


Disassembly of section .bss:

0001066c <__bss_start>:
   1066c:	00000000 	andeq	r0, r0, r0

00010670 <object.8489>:
	...

00010688 <CSP_MainVectTbl>:
	...

00010e88 <AppTask1Stk>:
	...

00011688 <AppTask2Stk>:
	...

00011e88 <AppTaskStartStk>:
	...

00012688 <Xil_AssertCallbackRoutine>:
   12688:	00000000 	andeq	r0, r0, r0

0001268c <OSLockNesting>:
	...

0001268d <OSTaskRegNextAvailID>:
	...

0001268e <OSRunning>:
	...

00012690 <OSIdleCtr>:
   12690:	00000000 	andeq	r0, r0, r0

00012694 <OSPrioHighRdy>:
	...

00012695 <OSPrioCur>:
   12695:	00000000 	andeq	r0, r0, r0

00012698 <OSTCBList>:
   12698:	00000000 	andeq	r0, r0, r0

0001269c <OSMemTbl>:
	...

00012714 <OSTickStepState>:
   12714:	00000000 	andeq	r0, r0, r0

00012718 <OSCtxSwCtr>:
   12718:	00000000 	andeq	r0, r0, r0

0001271c <OSTCBFreeList>:
   1271c:	00000000 	andeq	r0, r0, r0

00012720 <OSTaskCtr>:
   12720:	00000000 	andeq	r0, r0, r0

00012724 <OSMemFreeList>:
   12724:	00000000 	andeq	r0, r0, r0

00012728 <OSTCBHighRdy>:
   12728:	00000000 	andeq	r0, r0, r0

0001272c <OSRdyGrp>:
   1272c:	00000000 	andeq	r0, r0, r0

00012730 <OSRdyTbl>:
	...

00012738 <OSEventFreeList>:
   12738:	00000000 	andeq	r0, r0, r0

0001273c <OSIntNesting>:
   1273c:	00000000 	andeq	r0, r0, r0

00012740 <OSTCBCur>:
   12740:	00000000 	andeq	r0, r0, r0

00012744 <OSTime>:
   12744:	00000000 	andeq	r0, r0, r0

00012748 <OSTaskIdleStk>:
	...

00012948 <OSEventTbl>:
	...

00012a38 <OSTCBTbl>:
	...

000130c8 <OSTCBPrioTbl>:
	...

000131c8 <OS_CPU_ExceptStkBase>:
   131c8:	00000000 	andeq	r0, r0, r0

000131cc <OS_CPU_ExceptStkPtr>:
   131cc:	00000000 	andeq	r0, r0, r0

000131d0 <OS_CPU_ExceptStk>:
	...

000133d0 <Math_RandSeedCur>:
   133d0:	00000000 	andeq	r0, r0, r0

000133d4 <BSP_CPU_ClkFreq_MHz>:
   133d4:	00000000 	andeq	r0, r0, r0

000133d8 <AppMutexPrint>:
   133d8:	00000000 	andeq	r0, r0, r0

000133dc <vpsr>:
	...

0001344c <Xil_AssertStatus>:
   1344c:	00000000 	andeq	r0, r0, r0

Disassembly of section .heap:

00013450 <HeapBase>:
	...

Disassembly of section .stack:

00015450 <_stack_end>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <__stack+0x10b98d4>
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
      18:	00e01800 	rsceq	r1, r0, r0, lsl #16
      1c:	00e04000 	rsceq	r4, r0, r0
      20:	00000000 	andeq	r0, r0, r0
      24:	0c010200 	sfmeq	f0, 4, [r1], {-0}
      28:	01000000 	mrseq	r0, (UNDEF: 0)
      2c:	e0180117 	ands	r0, r8, r7, lsl r1
      30:	e0400000 	sub	r0, r0, r0
      34:	00000000 	andeq	r0, r0, r0
      38:	58010000 	stmdapl	r1, {}	; <UNPREDICTABLE>
      3c:	03000000 	movweq	r0, #0
      40:	00727470 	rsbseq	r7, r2, r0, ror r4
      44:	00581701 	subseq	r1, r8, r1, lsl #14
      48:	00200000 	eoreq	r0, r0, r0
      4c:	30040000 	andcc	r0, r4, r0
      50:	650000e0 	strvs	r0, [r0, #-224]	; 0xffffff20
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
      84:	ba010000 	blt	4008c <__stack+0x28c3c>
      88:	12000001 	andne	r0, r0, #1
      8c:	40000000 	andmi	r0, r0, r0
      90:	480000e0 	stmdami	r0, {r5, r6, r7}
      94:	3b0000e7 	blcc	438 <_ABORT_STACK_SIZE+0x38>
      98:	02000000 	andeq	r0, r0, #0
      9c:	01a20801 			; <UNDEFINED> instruction: 0x01a20801
      a0:	02020000 	andeq	r0, r2, #0
      a4:	0001fb07 	andeq	pc, r1, r7, lsl #22
      a8:	33750300 	cmncc	r5, #0, 6
      ac:	5c020032 	stcpl	0, cr0, [r2], {50}	; 0x32
      b0:	0000003e 	andeq	r0, r0, lr, lsr r0
      b4:	eb070402 	bl	1c10c4 <__stack+0x1a9c74>
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
     14c:	ea010103 	b	40560 <__stack+0x29110>
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
     1bc:	00e04001 	rsceq	r4, r0, r1
     1c0:	00e09c00 	rsceq	r9, r0, r0, lsl #24
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
     220:	e0901047 	adds	r1, r0, r7, asr #32
     224:	0d0c0000 	stceq	0, cr0, [ip, #-0]
     228:	11000000 	mrsne	r0, (UNDEF: 0)
     22c:	00000092 	muleq	r0, r2, r0
     230:	01c00412 	biceq	r0, r0, r2, lsl r4
     234:	33130000 	tstcc	r3, #0
     238:	14000000 	strne	r0, [r0], #-0
     23c:	00016f01 	andeq	r6, r1, r1, lsl #30
     240:	01090100 	mrseq	r0, (UNDEF: 25)
     244:	00e09c01 	rsceq	r9, r0, r1, lsl #24
     248:	00e0f800 	rsceq	pc, r0, r0, lsl #16
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
     29c:	1a500100 	bne	14006a4 <__stack+0x13e9254>
     2a0:	000002c7 	andeq	r0, r0, r7, asr #5
     2a4:	ba010e01 	blt	43ab0 <__stack+0x2c660>
     2a8:	f0000001 			; <UNDEFINED> instruction: 0xf0000001
     2ac:	1047c0cf 	subne	ip, r7, pc, asr #1
     2b0:	0000e0ec 	andeq	lr, r0, ip, ror #1
     2b4:	00000d0c 	andeq	r0, r0, ip, lsl #26
     2b8:	17011400 	strne	r1, [r1, -r0, lsl #8]
     2bc:	01000002 	tsteq	r0, r2
     2c0:	f801019f 			; <UNDEFINED> instruction: 0xf801019f
     2c4:	540000e0 	strpl	r0, [r0], #-224	; 0xffffff20
     2c8:	e00000e1 	and	r0, r0, r1, ror #1
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
     32c:	e1481047 	cmp	r8, r7, asr #32
     330:	0d0c0000 	stceq	0, cr0, [ip, #-0]
     334:	1b000000 	blne	33c <CPU_ARM_CTRL_INT_DIS+0x27c>
     338:	00031801 	andeq	r1, r3, r1, lsl #16
     33c:	02190100 	andseq	r0, r9, #0, 2
     340:	00e15401 	rsceq	r5, r1, r1, lsl #8
     344:	00e1ec00 	rsceq	lr, r1, r0, lsl #24
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
     3ec:	641d5001 	ldrvs	r5, [sp], #-1
     3f0:	680000e1 	stmdavs	r0, {r0, r5, r6, r7}
     3f4:	1c0000e1 	stcne	0, cr0, [r0], {225}	; 0xe1
     3f8:	00000271 	andeq	r0, r0, r1, ror r2
     3fc:	92022301 	andls	r2, r2, #67108864	; 0x4000000
     400:	51000000 	mrspl	r0, (UNDEF: 0)
     404:	00000001 	andeq	r0, r0, r1
     408:	4c011400 	cfstrsmi	mvf1, [r1], {-0}
     40c:	01000004 	tsteq	r0, r4
     410:	ec0101d5 	stfs	f0, [r1], {213}	; 0xd5
     414:	0c0000e1 	stceq	0, cr0, [r0], {225}	; 0xe1
     418:	660000e2 	strvs	r0, [r0], -r2, ror #1
     41c:	01000002 	tsteq	r0, r2
     420:	000003e4 	andeq	r0, r0, r4, ror #7
     424:	00018419 	andeq	r8, r1, r9, lsl r4
     428:	01d70100 	bicseq	r0, r7, r0, lsl #2
     42c:	00000092 	muleq	r0, r2, r0
     430:	f01e5401 			; <UNDEFINED> instruction: 0xf01e5401
     434:	f40000e1 	vst4.<illegal width 64>	{d0-d3}, [r0 :128], r1
     438:	da0000e1 	ble	7c4 <_ABORT_STACK_SIZE+0x3c4>
     43c:	1c000003 	stcne	0, cr0, [r0], {3}
     440:	00000271 	andeq	r0, r0, r1, ror r2
     444:	9201db01 	andls	sp, r1, #1024	; 0x400
     448:	86000000 	strhi	r0, [r0], -r0
     44c:	00000002 	andeq	r0, r0, r2
     450:	00e20010 	rsceq	r0, r2, r0, lsl r0
     454:	0002c100 	andeq	ip, r2, r0, lsl #2
     458:	ea1f0000 	b	7c0460 <__stack+0x7a9010>
     45c:	0c000000 	stceq	0, cr0, [r0], {-0}
     460:	240000e2 	strcs	r0, [r0], #-226	; 0xffffff1e
     464:	020000e2 	andeq	r0, r0, #226	; 0xe2
     468:	0301007d 	movweq	r0, #4221	; 0x107d
     46c:	20000004 	andcs	r0, r0, r4
     470:	000000f9 	strdeq	r0, [r0], -r9
     474:	00000299 	muleq	r0, r9, r2
     478:	58012100 	stmdapl	r1, {r8, sp}
     47c:	01000003 	tsteq	r0, r3
     480:	24010278 	strcs	r0, [r1], #-632	; 0xfffffd88
     484:	5c0000e2 	stcpl	0, cr0, [r0], {226}	; 0xe2
     488:	020000e2 	andeq	r0, r0, #226	; 0xe2
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
     4b4:	7a010000 	bvc	404bc <__stack+0x2906c>
     4b8:	0001b502 	andeq	fp, r1, r2, lsl #10
     4bc:	65182000 	ldrvs	r2, [r8, #-0]
     4c0:	0100646e 	tsteq	r0, lr, ror #8
     4c4:	0092027b 	addseq	r0, r2, fp, ror r2
     4c8:	02d80000 	sbcseq	r0, r8, #0
     4cc:	1b000000 	blne	4d4 <_ABORT_STACK_SIZE+0xd4>
     4d0:	0000d301 	andeq	sp, r0, r1, lsl #6
     4d4:	02a50100 	adceq	r0, r5, #0, 2
     4d8:	00e25c01 	rsceq	r5, r2, r1, lsl #24
     4dc:	00e2f400 	rsceq	pc, r2, r0, lsl #8
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
     584:	6c1d5001 	ldcvs	0, cr5, [sp], {1}
     588:	700000e2 	andvc	r0, r0, r2, ror #1
     58c:	1c0000e2 	stcne	0, cr0, [r0], {226}	; 0xe2
     590:	00000271 	andeq	r0, r0, r1, ror r2
     594:	9202af01 	andls	sl, r2, #1, 30
     598:	0b000000 	bleq	5a0 <_ABORT_STACK_SIZE+0x1a0>
     59c:	00000003 	andeq	r0, r0, r3
     5a0:	a2011400 	andge	r1, r1, #0, 8
     5a4:	01000002 	tsteq	r0, r2
     5a8:	f40101f8 	vst4.<illegal width 64>	{d0,d2,d4,d6}, [r1 :256], r8
     5ac:	0c0000e2 	stceq	0, cr0, [r0], {226}	; 0xe2
     5b0:	200000e3 	andcs	r0, r0, r3, ror #1
     5b4:	01000004 	tsteq	r0, r4
     5b8:	0000057c 	andeq	r0, r0, ip, ror r5
     5bc:	00018419 	andeq	r8, r1, r9, lsl r4
     5c0:	01fa0100 	mvnseq	r0, r0, lsl #2
     5c4:	00000092 	muleq	r0, r2, r0
     5c8:	fc1e5301 	ldc2	3, cr5, [lr], {1}
     5cc:	000000e2 	andeq	r0, r0, r2, ror #1
     5d0:	720000e3 	andvc	r0, r0, #227	; 0xe3
     5d4:	1c000005 	stcne	0, cr0, [r0], {5}
     5d8:	00000271 	andeq	r0, r0, r1, ror r2
     5dc:	92020101 	andls	r0, r2, #1073741824	; 0x40000000
     5e0:	40000000 	andmi	r0, r0, r0
     5e4:	00000004 	andeq	r0, r0, r4
     5e8:	00e2fc10 	rsceq	pc, r2, r0, lsl ip	; <UNPREDICTABLE>
     5ec:	00045900 	andeq	r5, r4, r0, lsl #18
     5f0:	061f0000 	ldreq	r0, [pc], -r0
     5f4:	0c000001 	stceq	0, cr0, [r0], {1}
     5f8:	240000e3 	strcs	r0, [r0], #-227	; 0xffffff1d
     5fc:	020000e3 	andeq	r0, r0, #227	; 0xe3
     600:	9b01007d 	blls	407fc <__stack+0x293ac>
     604:	20000005 	andcs	r0, r0, r5
     608:	00000115 	andeq	r0, r0, r5, lsl r1
     60c:	00000453 	andeq	r0, r0, r3, asr r4
     610:	3d012100 	stfccs	f2, [r1, #-0]
     614:	01000001 	tsteq	r0, r1
     618:	24010304 	strcs	r0, [r1], #-772	; 0xfffffcfc
     61c:	5c0000e3 	stcpl	0, cr0, [r0], {227}	; 0xe3
     620:	020000e3 	andeq	r0, r0, #227	; 0xe3
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
     66c:	0000e35c 	andeq	lr, r0, ip, asr r3
     670:	0000e374 	andeq	lr, r0, r4, ror r3
     674:	01007d02 	tsteq	r0, r2, lsl #26
     678:	00000610 	andeq	r0, r0, r0, lsl r6
     67c:	00013120 	andeq	r3, r1, r0, lsr #2
     680:	0004a500 	andeq	sl, r4, r0, lsl #10
     684:	681f0000 	ldmdavs	pc, {}	; <UNPREDICTABLE>
     688:	74000000 	strvc	r0, [r0], #-0
     68c:	900000e3 	andls	r0, r0, r3, ror #1
     690:	020000e3 	andeq	r0, r0, #227	; 0xe3
     694:	3e01007d 	mcrcc	0, 0, r0, cr1, cr13, {3}
     698:	22000006 	andcs	r0, r0, #6
     69c:	00000077 	andeq	r0, r0, r7, ror r0
     6a0:	741d5301 	ldrvc	r5, [sp], #-769	; 0xfffffcff
     6a4:	780000e3 	stmdavc	r0, {r0, r1, r5, r6, r7}
     6a8:	220000e3 	andcs	r0, r0, #227	; 0xe3
     6ac:	00000084 	andeq	r0, r0, r4, lsl #1
     6b0:	00005301 	andeq	r5, r0, r1, lsl #6
     6b4:	0000991f 	andeq	r9, r0, pc, lsl r9
     6b8:	00e39000 	rsceq	r9, r3, r0
     6bc:	00e3ac00 	rsceq	sl, r3, r0, lsl #24
     6c0:	007d0200 	rsbseq	r0, sp, r0, lsl #4
     6c4:	00066e01 	andeq	r6, r6, r1, lsl #28
     6c8:	00a82200 	adceq	r2, r8, r0, lsl #4
     6cc:	53010000 	movwpl	r0, #4096	; 0x1000
     6d0:	00e39c1d 	rsceq	r9, r3, sp, lsl ip
     6d4:	00e3a000 	rsceq	sl, r3, r0
     6d8:	00b52300 	adcseq	r2, r5, r0, lsl #6
     6dc:	04c60000 	strbeq	r0, [r6], #0
     6e0:	00000000 	andeq	r0, r0, r0
     6e4:	0000c324 	andeq	ip, r0, r4, lsr #6
     6e8:	00e3ac00 	rsceq	sl, r3, r0, lsl #24
     6ec:	00e3c400 	rsceq	ip, r3, r0, lsl #8
     6f0:	007d0200 	rsbseq	r0, sp, r0, lsl #4
     6f4:	00ce1f01 	sbceq	r1, lr, r1, lsl #30
     6f8:	e3c40000 	bic	r0, r4, #0
     6fc:	e3dc0000 	bics	r0, ip, #0
     700:	7d020000 	stcvc	0, cr0, [r2, #-0]
     704:	069e0100 	ldreq	r0, [lr], r0, lsl #2
     708:	dd200000 	stcle	0, cr0, [r0, #-0]
     70c:	d9000000 	stmdble	r0, {}	; <UNPREDICTABLE>
     710:	00000004 	andeq	r0, r0, r4
     714:	04780121 	ldrbteq	r0, [r8], #-289	; 0xfffffedf
     718:	b8010000 	stmdalt	r1, {}	; <UNPREDICTABLE>
     71c:	e3dc0103 	bics	r0, ip, #-1073741824	; 0xc0000000
     720:	e4140000 	ldr	r0, [r4], #-0
     724:	7d020000 	stcvc	0, cr0, [r2, #-0]
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
     75c:	bb010064 	bllt	408f4 <__stack+0x294a4>
     760:	00009203 	andeq	r9, r0, r3, lsl #4
     764:	00051800 	andeq	r1, r5, r0, lsl #16
     768:	01140000 	tsteq	r4, r0
     76c:	00000246 	andeq	r0, r0, r6, asr #4
     770:	0103e401 	tsteq	r3, r1, lsl #8
     774:	0000e414 	andeq	lr, r0, r4, lsl r4
     778:	0000e4b0 			; <UNDEFINED> instruction: 0x0000e4b0
     77c:	0000052b 	andeq	r0, r0, fp, lsr #10
     780:	00078901 	andeq	r8, r7, r1, lsl #18
     784:	042f1c00 	strteq	r1, [pc], #-3072	; 78c <_ABORT_STACK_SIZE+0x38c>
     788:	e6010000 	str	r0, [r1], -r0
     78c:	00009203 	andeq	r9, r0, r3, lsl #4
     790:	00054b00 	andeq	r4, r5, r0, lsl #22
     794:	e4241000 	strt	r1, [r4], #-0
     798:	0d0c0000 	stceq	0, cr0, [ip, #-0]
     79c:	38100000 	ldmdacc	r0, {}	; <UNPREDICTABLE>
     7a0:	0c0000e4 	stceq	0, cr0, [r0], {228}	; 0xe4
     7a4:	1000000d 	andne	r0, r0, sp
     7a8:	0000e450 	andeq	lr, r0, r0, asr r4
     7ac:	00000d24 	andeq	r0, r0, r4, lsr #26
     7b0:	00e46025 	rsceq	r6, r4, r5, lsr #32
     7b4:	000d2400 	andeq	r2, sp, r0, lsl #8
     7b8:	00074f00 	andeq	r4, r7, r0, lsl #30
     7bc:	51012600 	tstpl	r1, r0, lsl #12
     7c0:	01210a03 	teqeq	r1, r3, lsl #20
     7c4:	e4702500 	ldrbt	r2, [r0], #-1280	; 0xfffffb00
     7c8:	0d240000 	stceq	0, cr0, [r4, #-0]
     7cc:	07640000 	strbeq	r0, [r4, -r0]!
     7d0:	01260000 	teqeq	r6, r0
     7d4:	210a0351 	tstcs	sl, r1, asr r3
     7d8:	7c100001 	ldcvc	0, cr0, [r0], {1}
     7dc:	0c0000e4 	stceq	0, cr0, [r0], {228}	; 0xe4
     7e0:	1000000d 	andne	r0, r0, sp
     7e4:	0000e48c 	andeq	lr, r0, ip, lsl #9
     7e8:	00000d24 	andeq	r0, r0, r4, lsr #26
     7ec:	00e49810 	rsceq	r9, r4, r0, lsl r8
     7f0:	000d0c00 	andeq	r0, sp, r0, lsl #24
     7f4:	e4a81000 	strt	r1, [r8], #0
     7f8:	0d240000 	stceq	0, cr0, [r4, #-0]
     7fc:	21000000 	mrscs	r0, (UNDEF: 0)
     800:	00015e01 	andeq	r5, r1, r1, lsl #28
     804:	01540100 	cmpeq	r4, r0, lsl #2
     808:	00e4b001 	rsceq	fp, r4, r1
     80c:	00e4cc00 	rsceq	ip, r4, r0, lsl #24
     810:	007d0200 	rsbseq	r0, sp, r0, lsl #4
     814:	0007e701 	andeq	lr, r7, r1, lsl #14
     818:	00682700 	rsbeq	r2, r8, r0, lsl #14
     81c:	e4b00000 	ldrt	r0, [r0], #0
     820:	e4c80000 	strb	r0, [r8], #0
     824:	56010000 	strpl	r0, [r1], -r0
     828:	0007dc01 	andeq	sp, r7, r1, lsl #24
     82c:	e4b01d00 	ldrt	r1, [r0], #3328	; 0xd00
     830:	e4c80000 	strb	r0, [r8], #0
     834:	77230000 	strvc	r0, [r3, -r0]!
     838:	9d000000 	stcls	0, cr0, [r0, #-0]
     83c:	1d000005 	stcne	0, cr0, [r0, #-20]	; 0xffffffec
     840:	0000e4b0 			; <UNDEFINED> instruction: 0x0000e4b0
     844:	0000e4b4 			; <UNDEFINED> instruction: 0x0000e4b4
     848:	00008422 	andeq	r8, r0, r2, lsr #8
     84c:	00530100 	subseq	r0, r3, r0, lsl #2
     850:	cc280000 	stcgt	0, cr0, [r8], #-0
     854:	010000e4 	smlatteq	r0, r4, r0, r0
     858:	000006f4 	strdeq	r0, [r0], -r4
     85c:	96010900 	strls	r0, [r1], -r0, lsl #18
     860:	01000000 	mrseq	r0, (UNDEF: 0)
     864:	e4cc015c 	strb	r0, [ip], #348	; 0x15c
     868:	e4dc0000 	ldrb	r0, [ip], #0
     86c:	05b00000 	ldreq	r0, [r0, #0]!
     870:	15010000 	strne	r0, [r1, #-0]
     874:	10000008 	andne	r0, r0, r8
     878:	0000e4d4 	ldrdeq	lr, [r0], -r4
     87c:	00000393 	muleq	r0, r3, r3
     880:	00e4dc28 	rsceq	sp, r4, r8, lsr #24
     884:	06f40100 	ldrbteq	r0, [r4], r0, lsl #2
     888:	14000000 	strne	r0, [r0], #-0
     88c:	00028f01 	andeq	r8, r2, r1, lsl #30
     890:	04130100 	ldreq	r0, [r3], #-256	; 0xffffff00
     894:	00e4dc01 	rsceq	sp, r4, r1, lsl #24
     898:	00e52800 	rsceq	r2, r5, r0, lsl #16
     89c:	0005d000 	andeq	sp, r5, r0
     8a0:	08720100 	ldmdaeq	r2!, {r8}^
     8a4:	2f1c0000 	svccs	0x001c0000
     8a8:	01000004 	tsteq	r0, r4
     8ac:	00920415 	addseq	r0, r2, r5, lsl r4
     8b0:	05f00000 	ldrbeq	r0, [r0, #0]!
     8b4:	f0250000 			; <UNDEFINED> instruction: 0xf0250000
     8b8:	240000e4 	strcs	r0, [r0], #-228	; 0xffffff1c
     8bc:	5500000d 	strpl	r0, [r0, #-13]
     8c0:	26000008 	strcs	r0, [r0], -r8
     8c4:	0a035101 	beq	d4cd0 <__stack+0xbd880>
     8c8:	1000ffff 	strdne	pc, [r0], -pc	; <UNPREDICTABLE>
     8cc:	0000e4fc 	strdeq	lr, [r0], -ip
     8d0:	00000d0c 	andeq	r0, r0, ip, lsl #26
     8d4:	00e51410 	rsceq	r1, r5, r0, lsl r4
     8d8:	000d0c00 	andeq	r0, sp, r0, lsl #24
     8dc:	e5282800 	str	r2, [r8, #-2048]!	; 0xfffff800
     8e0:	24010000 	strcs	r0, [r1], #-0
     8e4:	0000000d 	andeq	r0, r0, sp
     8e8:	04140114 	ldreq	r0, [r4], #-276	; 0xfffffeec
     8ec:	65010000 	strvs	r0, [r1, #-0]
     8f0:	e5280101 	str	r0, [r8, #-257]!	; 0xfffffeff
     8f4:	e54c0000 	strb	r0, [ip, #-0]
     8f8:	060e0000 	streq	r0, [lr], -r0
     8fc:	d0010000 	andle	r0, r1, r0
     900:	27000008 	strcs	r0, [r0, -r8]
     904:	00000099 	muleq	r0, r9, r0
     908:	0000e530 	andeq	lr, r0, r0, lsr r5
     90c:	0000e54c 	andeq	lr, r0, ip, asr #10
     910:	c6016801 	strgt	r6, [r1], -r1, lsl #16
     914:	1d000008 	stcne	0, cr0, [r0, #-32]	; 0xffffffe0
     918:	0000e530 	andeq	lr, r0, r0, lsr r5
     91c:	0000e54c 	andeq	lr, r0, ip, asr #10
     920:	0000a822 	andeq	sl, r0, r2, lsr #16
     924:	1d530100 	ldfnee	f0, [r3, #-0]
     928:	0000e53c 	andeq	lr, r0, ip, lsr r5
     92c:	0000e540 	andeq	lr, r0, r0, asr #10
     930:	0000b523 	andeq	fp, r0, r3, lsr #10
     934:	00062e00 	andeq	r2, r6, r0, lsl #28
     938:	00000000 	andeq	r0, r0, r0
     93c:	00e53010 	rsceq	r3, r5, r0, lsl r0
     940:	00081500 	andeq	r1, r8, r0, lsl #10
     944:	01090000 	mrseq	r0, (UNDEF: 9)
     948:	000000ed 	andeq	r0, r0, sp, ror #1
     94c:	4c016d01 	stcmi	13, cr6, [r1], {1}
     950:	5c0000e5 	stcpl	0, cr0, [r0], {229}	; 0xe5
     954:	410000e5 	smlattmi	r0, r5, r0, r0
     958:	01000006 	tsteq	r0, r6
     95c:	000008fe 	strdeq	r0, [r0], -lr
     960:	00e55410 	rsceq	r5, r5, r0, lsl r4
     964:	00081500 	andeq	r1, r8, r0, lsl #10
     968:	e55c2800 	ldrb	r2, [ip, #-2048]	; 0xfffff800
     96c:	2b010000 	blcs	40974 <__stack+0x29524>
     970:	00000005 	andeq	r0, r0, r5
     974:	00ff0114 	rscseq	r0, pc, r4, lsl r1	; <UNPREDICTABLE>
     978:	39010000 	stmdbcc	r1, {}	; <UNPREDICTABLE>
     97c:	e55c0104 	ldrb	r0, [ip, #-260]	; 0xfffffefc
     980:	e58c0000 	str	r0, [ip]
     984:	06610000 	strbteq	r0, [r1], -r0
     988:	46010000 	strmi	r0, [r1], -r0
     98c:	19000009 	stmdbne	r0, {r0, r3}
     990:	0000042f 	andeq	r0, r0, pc, lsr #8
     994:	92043b01 	andls	r3, r4, #1024	; 0x400
     998:	01000000 	mrseq	r0, (UNDEF: 0)
     99c:	e5702550 	ldrb	r2, [r0, #-1360]!	; 0xfffffab0
     9a0:	0d240000 	stceq	0, cr0, [r4, #-0]
     9a4:	093c0000 	ldmdbeq	ip!, {}	; <UNPREDICTABLE>
     9a8:	01260000 	teqeq	r6, r0
     9ac:	ff0a0351 			; <UNDEFINED> instruction: 0xff0a0351
     9b0:	7c1000ff 	ldcvc	0, cr0, [r0], {255}	; 0xff
     9b4:	0c0000e5 	stceq	0, cr0, [r0], {229}	; 0xe5
     9b8:	0000000d 	andeq	r0, r0, sp
     9bc:	04370121 	ldrteq	r0, [r7], #-289	; 0xfffffedf
     9c0:	76010000 	strvc	r0, [r1], -r0
     9c4:	e58c0101 	str	r0, [ip, #257]	; 0x101
     9c8:	e5a40000 	str	r0, [r4, #0]!
     9cc:	7d020000 	stcvc	0, cr0, [r2, #-0]
     9d0:	097b0100 	ldmdbeq	fp!, {r8}^
     9d4:	c3290000 	teqgt	r9, #0
     9d8:	8c000000 	stchi	0, cr0, [r0], {-0}
     9dc:	a00000e5 	andge	r0, r0, r5, ror #1
     9e0:	010000e5 	smlatteq	r0, r5, r0, r0
     9e4:	a4280178 	strtge	r0, [r8], #-376	; 0xfffffe88
     9e8:	010000e5 	smlatteq	r0, r5, r0, r0
     9ec:	000008fe 	strdeq	r0, [r0], -lr
     9f0:	9c010900 	stcls	9, cr0, [r1], {-0}
     9f4:	01000003 	tsteq	r0, r3
     9f8:	e5a4017e 	str	r0, [r4, #382]!	; 0x17e
     9fc:	e5b40000 	ldr	r0, [r4, #0]!
     a00:	06810000 	streq	r0, [r1], r0
     a04:	a9010000 	stmdbge	r1, {}	; <UNPREDICTABLE>
     a08:	10000009 	andne	r0, r0, r9
     a0c:	0000e5ac 	andeq	lr, r0, ip, lsr #11
     a10:	000002c1 	andeq	r0, r0, r1, asr #5
     a14:	00e5b428 	rsceq	fp, r5, r8, lsr #8
     a18:	08fe0100 	ldmeq	lr!, {r8}^
     a1c:	14000000 	strne	r0, [r0], #-0
     a20:	00037401 	andeq	r7, r3, r1, lsl #8
     a24:	045a0100 	ldrbeq	r0, [sl], #-256	; 0xffffff00
     a28:	00e5b401 	rsceq	fp, r5, r1, lsl #8
     a2c:	00e5d000 	rsceq	sp, r5, r0
     a30:	0006a100 	andeq	sl, r6, r0, lsl #2
     a34:	09e60100 	stmibeq	r6!, {r8}^
     a38:	61150000 	tstvs	r5, r0
     a3c:	01007264 	tsteq	r0, r4, ror #4
     a40:	0092045a 	addseq	r0, r2, sl, asr r4
     a44:	06c10000 	strbeq	r0, [r1], r0
     a48:	c82a0000 	stmdagt	sl!, {}	; <UNPREDICTABLE>
     a4c:	240000e5 	strcs	r0, [r0], #-229	; 0xffffff1b
     a50:	2600000d 	strcs	r0, [r0], -sp
     a54:	f3035101 	vrhadd.u8	d5, d3, d1
     a58:	00005001 	andeq	r5, r0, r1
     a5c:	02760121 	rsbseq	r0, r6, #1073741832	; 0x40000008
     a60:	89010000 	stmdbhi	r1, {}	; <UNPREDICTABLE>
     a64:	e5d00101 	ldrb	r0, [r0, #257]	; 0x101
     a68:	e5e80000 	strb	r0, [r8, #0]!
     a6c:	7d020000 	stcvc	0, cr0, [r2, #-0]
     a70:	0a350100 	beq	d40e78 <__stack+0xd29a28>
     a74:	61160000 	tstvs	r6, r0
     a78:	01007264 	tsteq	r0, r4, ror #4
     a7c:	00920189 	addseq	r0, r2, r9, lsl #3
     a80:	50010000 	andpl	r0, r1, r0
     a84:	0000ce27 	andeq	ip, r0, r7, lsr #28
     a88:	00e5d000 	rsceq	sp, r5, r0
     a8c:	00e5e400 	rsceq	lr, r5, r0, lsl #8
     a90:	018b0100 	orreq	r0, fp, r0, lsl #2
     a94:	00000a2a 	andeq	r0, r0, sl, lsr #20
     a98:	0000dd2b 	andeq	sp, r0, fp, lsr #26
     a9c:	00500100 	subseq	r0, r0, r0, lsl #2
     aa0:	00e5e828 	rsceq	lr, r5, r8, lsr #16
     aa4:	09a90100 	stmibeq	r9!, {r8}
     aa8:	2c000000 	stccs	0, cr0, [r0], {-0}
     aac:	00045f01 	andeq	r5, r4, r1, lsl #30
     ab0:	01930100 	orrseq	r0, r3, r0, lsl #2
     ab4:	0000e5e8 	andeq	lr, r0, r8, ror #11
     ab8:	0000e600 	andeq	lr, r0, r0, lsl #12
     abc:	01007d02 	tsteq	r0, r2, lsl #26
     ac0:	00000a81 	andeq	r0, r0, r1, lsl #21
     ac4:	7264610b 	rsbvc	r6, r4, #-1073741822	; 0xc0000002
     ac8:	92930100 	addsls	r0, r3, #0, 2
     acc:	01000000 	mrseq	r0, (UNDEF: 0)
     ad0:	00ea2d50 	rsceq	r2, sl, r0, asr sp
     ad4:	e5e80000 	strb	r0, [r8, #0]!
     ad8:	e5fc0000 	ldrb	r0, [ip, #0]!
     adc:	95010000 	strls	r0, [r1, #-0]
     ae0:	00000a76 	andeq	r0, r0, r6, ror sl
     ae4:	0000f92b 	andeq	pc, r0, fp, lsr #18
     ae8:	00500100 	subseq	r0, r0, r0, lsl #2
     aec:	00e60028 	rsceq	r0, r6, r8, lsr #32
     af0:	09a90100 	stmibeq	r9!, {r8}
     af4:	14000000 	strne	r0, [r0], #-0
     af8:	0002fd01 	andeq	pc, r2, r1, lsl #26
     afc:	04720100 	ldrbteq	r0, [r2], #-256	; 0xffffff00
     b00:	00e60001 	rsceq	r0, r6, r1
     b04:	00e65000 	rsceq	r5, r6, r0
     b08:	0006ed00 	andeq	lr, r6, r0, lsl #26
     b0c:	0b010100 	bleq	40f14 <__stack+0x29ac4>
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
     b6c:	e6401047 	strb	r1, [r0], -r7, asr #32
     b70:	0d0c0000 	stceq	0, cr0, [ip, #-0]
     b74:	14000000 	strne	r0, [r0], #-0
     b78:	0002b601 	andeq	fp, r2, r1, lsl #12
     b7c:	04a00100 	strteq	r0, [r0], #256	; 0x100
     b80:	00e65001 	rsceq	r5, r6, r1
     b84:	00e68000 	rsceq	r8, r6, r0
     b88:	00075f00 	andeq	r5, r7, r0, lsl #30
     b8c:	0b490100 	bleq	1240f94 <__stack+0x1229b44>
     b90:	2f190000 	svccs	0x00190000
     b94:	01000004 	tsteq	r0, r4
     b98:	009204a2 	addseq	r0, r2, r2, lsr #9
     b9c:	50010000 	andpl	r0, r1, r0
     ba0:	00e66425 	rsceq	r6, r6, r5, lsr #8
     ba4:	000d2400 	andeq	r2, sp, r0, lsl #8
     ba8:	000b3f00 	andeq	r3, fp, r0, lsl #30
     bac:	51012600 	tstpl	r1, r0, lsl #12
     bb0:	ffff0a03 			; <UNDEFINED> instruction: 0xffff0a03
     bb4:	e6701000 	ldrbt	r1, [r0], -r0
     bb8:	0d0c0000 	stceq	0, cr0, [ip, #-0]
     bbc:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
     bc0:	00025801 	andeq	r5, r2, r1, lsl #16
     bc4:	01df0100 	bicseq	r0, pc, r0, lsl #2
     bc8:	0000e680 	andeq	lr, r0, r0, lsl #13
     bcc:	0000e690 	muleq	r0, r0, r6
     bd0:	0000077f 	andeq	r0, r0, pc, ror r7
     bd4:	000b7701 	andeq	r7, fp, r1, lsl #14
     bd8:	e6881000 	str	r1, [r8], r0
     bdc:	04590000 	ldrbeq	r0, [r9], #-0
     be0:	90280000 	eorls	r0, r8, r0
     be4:	010000e6 	smlatteq	r0, r6, r0, r0
     be8:	00000b01 	andeq	r0, r0, r1, lsl #22
     bec:	2f011400 	svccs	0x00011400
     bf0:	01000003 	tsteq	r0, r3
     bf4:	900104c1 	andls	r0, r1, r1, asr #9
     bf8:	ac0000e6 	stcge	0, cr0, [r0], {230}	; 0xe6
     bfc:	9f0000e6 	svcls	0x000000e6
     c00:	01000007 	tsteq	r0, r7
     c04:	00000bb4 			; <UNDEFINED> instruction: 0x00000bb4
     c08:	72646115 	rsbvc	r6, r4, #1073741829	; 0x40000005
     c0c:	04c10100 	strbeq	r0, [r1], #256	; 0x100
     c10:	00000092 	muleq	r0, r2, r0
     c14:	000007bf 			; <UNDEFINED> instruction: 0x000007bf
     c18:	00e6a42a 	rsceq	sl, r6, sl, lsr #8
     c1c:	000d2400 	andeq	r2, sp, r0, lsl #8
     c20:	51012600 	tstpl	r1, r0, lsl #12
     c24:	5001f303 	andpl	pc, r1, r3, lsl #6
     c28:	012c0000 	teqeq	ip, r0
     c2c:	000003c5 	andeq	r0, r0, r5, asr #7
     c30:	ac01f401 	cfstrsge	mvf15, [r1], {1}
     c34:	c40000e6 	strgt	r0, [r0], #-230	; 0xffffff1a
     c38:	020000e6 	andeq	r0, r0, #230	; 0xe6
     c3c:	0001007d 	andeq	r0, r1, sp, ror r0
     c40:	0b00000c 	bleq	c78 <_SUPERVISOR_STACK_SIZE+0x478>
     c44:	00726461 	rsbseq	r6, r2, r1, ror #8
     c48:	0092f401 	addseq	pc, r2, r1, lsl #8
     c4c:	50010000 	andpl	r0, r1, r0
     c50:	0001062d 	andeq	r0, r1, sp, lsr #12
     c54:	00e6ac00 	rsceq	sl, r6, r0, lsl #24
     c58:	00e6c000 	rsceq	ip, r6, r0
     c5c:	f5f60100 			; <UNDEFINED> instruction: 0xf5f60100
     c60:	2b00000b 	blcs	c94 <_SUPERVISOR_STACK_SIZE+0x494>
     c64:	00000115 	andeq	r0, r0, r5, lsl r1
     c68:	28005001 	stmdacs	r0, {r0, ip, lr}
     c6c:	0000e6c4 	andeq	lr, r0, r4, asr #13
     c70:	000b7701 	andeq	r7, fp, r1, lsl #14
     c74:	01140000 	tsteq	r4, r0
     c78:	0000018c 	andeq	r0, r0, ip, lsl #3
     c7c:	0104d901 	tsteq	r4, r1, lsl #18
     c80:	0000e6c4 	andeq	lr, r0, r4, asr #13
     c84:	0000e714 	andeq	lr, r0, r4, lsl r7
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
     cb4:	db010000 	blle	40cbc <__stack+0x2986c>
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
     cec:	00e70410 	rsceq	r0, r7, r0, lsl r4
     cf0:	000d0c00 	andeq	r0, sp, r0, lsl #24
     cf4:	01140000 	tsteq	r4, r0
     cf8:	00000115 	andeq	r0, r0, r5, lsl r1
     cfc:	01050701 	tsteq	r5, r1, lsl #14
     d00:	0000e714 	andeq	lr, r0, r4, lsl r7
     d04:	0000e730 	andeq	lr, r0, r0, lsr r7
     d08:	0000085d 	andeq	r0, r0, sp, asr r8
     d0c:	000cbd01 	andeq	fp, ip, r1, lsl #26
     d10:	64611500 	strbtvs	r1, [r1], #-1280	; 0xfffffb00
     d14:	07010072 	smlsdxeq	r1, r2, r0, r0
     d18:	00009205 	andeq	r9, r0, r5, lsl #4
     d1c:	00087d00 	andeq	r7, r8, r0, lsl #26
     d20:	e7282a00 	str	r2, [r8, -r0, lsl #20]!
     d24:	0d240000 	stceq	0, cr0, [r4, #-0]
     d28:	01260000 	teqeq	r6, r0
     d2c:	01f30351 	mvnseq	r0, r1, asr r3
     d30:	21000050 	qaddcs	r0, r0, r0
     d34:	00034401 	andeq	r4, r3, r1, lsl #8
     d38:	01430100 	mrseq	r0, (UNDEF: 83)
     d3c:	00e73001 	rsceq	r3, r7, r1
     d40:	00e74800 	rsceq	r4, r7, r0, lsl #16
     d44:	007d0200 	rsbseq	r0, sp, r0, lsl #4
     d48:	000d0c01 	andeq	r0, sp, r1, lsl #24
     d4c:	64611600 	strbtvs	r1, [r1], #-1536	; 0xfffffa00
     d50:	43010072 	movwmi	r0, #4210	; 0x1072
     d54:	00009201 	andeq	r9, r0, r1, lsl #4
     d58:	27500100 	ldrbcs	r0, [r0, -r0, lsl #2]
     d5c:	00000122 	andeq	r0, r0, r2, lsr #2
     d60:	0000e730 	andeq	lr, r0, r0, lsr r7
     d64:	0000e744 	andeq	lr, r0, r4, asr #14
     d68:	01014501 	tsteq	r1, r1, lsl #10
     d6c:	2b00000d 	blcs	da8 <_SUPERVISOR_STACK_SIZE+0x5a8>
     d70:	00000131 	andeq	r0, r0, r1, lsr r1
     d74:	28005001 	stmdacs	r0, {r0, ip, lr}
     d78:	0000e748 	andeq	lr, r0, r8, asr #14
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
     dc8:	00e74800 	rsceq	r4, r7, r0, lsl #16
     dcc:	00e84800 	rsceq	r4, r8, r0, lsl #16
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
     e18:	bb050203 	bllt	14162c <__stack+0x12a1dc>
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
     e78:	aa010900 	bge	43280 <__stack+0x2be30>
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
     f1c:	48000000 	stmdami	r0, {}	; <UNPREDICTABLE>
     f20:	540000e7 	strpl	r0, [r0], #-231	; 0xffffff19
     f24:	020000e7 	andeq	r0, r0, #231	; 0xe7
     f28:	8f01007d 	svchi	0x0001007d
     f2c:	0c000001 	stceq	0, cr0, [r0], {1}
     f30:	00000839 	andeq	r0, r0, r9, lsr r8
     f34:	00486701 	subeq	r6, r8, r1, lsl #14
     f38:	08a90000 	stmiaeq	r9!, {}	; <UNPREDICTABLE>
     f3c:	0d000000 	stceq	0, cr0, [r0, #-0]
     f40:	000000c9 	andeq	r0, r0, r9, asr #1
     f44:	0000e754 	andeq	lr, r0, r4, asr r7
     f48:	0000e760 	andeq	lr, r0, r0, ror #14
     f4c:	01007d02 	tsteq	r0, r2, lsl #26
     f50:	000001ae 	andeq	r0, r0, lr, lsr #3
     f54:	0000db0e 	andeq	sp, r0, lr, lsl #22
     f58:	0008ca00 	andeq	ip, r8, r0, lsl #20
     f5c:	440d0000 	strmi	r0, [sp], #-0
     f60:	60000001 	andvs	r0, r0, r1
     f64:	6c0000e7 	stcvs	0, cr0, [r0], {231}	; 0xe7
     f68:	020000e7 	andeq	r0, r0, #231	; 0xe7
     f6c:	cd01007d 	stcgt	0, cr0, [r1, #-500]	; 0xfffffe0c
     f70:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
     f74:	00000156 	andeq	r0, r0, r6, asr r1
     f78:	000008eb 	andeq	r0, r0, fp, ror #17
     f7c:	94010f00 	strls	r0, [r1], #-3840	; 0xfffff100
     f80:	01000004 	tsteq	r0, r4
     f84:	e76c01ad 	strb	r0, [ip, -sp, lsr #3]!
     f88:	e7780000 	ldrb	r0, [r8, -r0]!
     f8c:	7d020000 	stcvc	0, cr0, [r2, #-0]
     f90:	02010100 	andeq	r0, r1, #0, 2
     f94:	15100000 	ldrne	r0, [r0, #-0]
     f98:	01000005 	tsteq	r0, r5
     f9c:	000048ad 	andeq	r4, r0, sp, lsr #17
     fa0:	10500100 	subsne	r0, r0, r0, lsl #2
     fa4:	000006c6 	andeq	r0, r0, r6, asr #13
     fa8:	0025ad01 	eoreq	sl, r5, r1, lsl #26
     fac:	51010000 	mrspl	r0, (UNDEF: 1)
     fb0:	00a40d00 	adceq	r0, r4, r0, lsl #26
     fb4:	e7780000 	ldrb	r0, [r8, -r0]!
     fb8:	e7840000 	str	r0, [r4, r0]
     fbc:	7d020000 	stcvc	0, cr0, [r2, #-0]
     fc0:	02250100 	eoreq	r0, r5, #0, 2
     fc4:	b2110000 	andslt	r0, r1, #0
     fc8:	01000000 	mrseq	r0, (UNDEF: 0)
     fcc:	00bd1150 	adcseq	r1, sp, r0, asr r1
     fd0:	51010000 	mrspl	r0, (UNDEF: 1)
     fd4:	011f0d00 	tsteq	pc, r0, lsl #26
     fd8:	e7840000 	str	r0, [r4, r0]
     fdc:	e7900000 	ldr	r0, [r0, r0]
     fe0:	7d020000 	stcvc	0, cr0, [r2, #-0]
     fe4:	02490100 	subeq	r0, r9, #0, 2
     fe8:	2d110000 	ldccs	0, cr0, [r1, #-0]
     fec:	01000001 	tsteq	r0, r1
     ff0:	01381150 	teqeq	r8, r0, asr r1
     ff4:	51010000 	mrspl	r0, (UNDEF: 1)
     ff8:	cf010b00 	svcgt	0x00010b00
     ffc:	01000004 	tsteq	r0, r4
    1000:	003601f5 	ldrshteq	r0, [r6], -r5
    1004:	e7900000 	ldr	r0, [r0, r0]
    1008:	e7a80000 	str	r0, [r8, r0]!
    100c:	7d020000 	stcvc	0, cr0, [r2, #-0]
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
    1040:	0000e790 	muleq	r0, r0, r7
    1044:	0000e798 	muleq	r0, r8, r7
    1048:	02a8fd01 	adceq	pc, r8, #1, 26	; 0x40
    104c:	db0e0000 	blle	381054 <__stack+0x369c04>
    1050:	0c000000 	stceq	0, cr0, [r0], {-0}
    1054:	00000009 	andeq	r0, r0, r9
    1058:	00008414 	andeq	r8, r0, r4, lsl r4
    105c:	00e79800 	rsceq	r9, r7, r0, lsl #16
    1060:	00e7a000 	rsceq	sl, r7, r0
    1064:	11ff0100 	mvnsne	r0, r0, lsl #2
    1068:	00000097 	muleq	r0, r7, r0
    106c:	00005301 	andeq	r5, r0, r1, lsl #6
    1070:	050a0115 	streq	r0, [sl, #-277]	; 0xfffffeeb
    1074:	16010000 	strne	r0, [r1], -r0
    1078:	00480101 	subeq	r0, r8, r1, lsl #2
    107c:	e7a80000 	str	r0, [r8, r0]!
    1080:	e7d40000 	ldrb	r0, [r4, r0]
    1084:	7d020000 	stcvc	0, cr0, [r2, #-0]
    1088:	03590100 	cmpeq	r9, #0, 2
    108c:	39160000 	ldmdbcc	r6, {}	; <UNPREDICTABLE>
    1090:	01000008 	tsteq	r0, r8
    1094:	00480116 	subeq	r0, r8, r6, lsl r1
    1098:	092d0000 	pusheq	{}	; <UNPREDICTABLE>
    109c:	da170000 	ble	5c10a4 <__stack+0x5a9c54>
    10a0:	01000004 	tsteq	r0, r4
    10a4:	00480118 	subeq	r0, r8, r8, lsl r1
    10a8:	53010000 	movwpl	r0, #4096	; 0x1000
    10ac:	0004df0a 	andeq	sp, r4, sl, lsl #30
    10b0:	01190100 	tsteq	r9, r0, lsl #2
    10b4:	00000048 	andeq	r0, r0, r8, asr #32
    10b8:	00014418 	andeq	r4, r1, r8, lsl r4
    10bc:	00e7a800 	rsceq	sl, r7, r0, lsl #16
    10c0:	00e7b000 	rsceq	fp, r7, r0
    10c4:	011e0100 	tsteq	lr, r0, lsl #2
    10c8:	00000326 	andeq	r0, r0, r6, lsr #6
    10cc:	0001560e 	andeq	r5, r1, lr, lsl #12
    10d0:	00092d00 	andeq	r2, r9, r0, lsl #26
    10d4:	e7190000 	ldr	r0, [r9, -r0]
    10d8:	b0000000 	andlt	r0, r0, r0
    10dc:	cc0000e7 	stcgt	0, cr0, [r0], {231}	; 0xe7
    10e0:	010000e7 	smlatteq	r0, r7, r0, r0
    10e4:	fa0e0120 	blx	38156c <__stack+0x36a11c>
    10e8:	4e000000 	cdpmi	0, 0, cr0, cr0, cr0, {0}
    10ec:	1a000009 	bne	1118 <_SUPERVISOR_STACK_SIZE+0x918>
    10f0:	00000000 	andeq	r0, r0, r0
    10f4:	0001061b 	andeq	r0, r1, fp, lsl r6
    10f8:	00096100 	andeq	r6, r9, r0, lsl #2
    10fc:	01121b00 	tsteq	r2, r0, lsl #22
    1100:	097f0000 	ldmdbeq	pc!, {}^	; <UNPREDICTABLE>
    1104:	00000000 	andeq	r0, r0, r0
    1108:	ba011c00 	blt	48110 <__stack+0x30cc0>
    110c:	01000004 	tsteq	r0, r4
    1110:	d4010138 	strle	r0, [r1], #-312	; 0xfffffec8
    1114:	e80000e7 	stmda	r0, {r0, r1, r2, r5, r6, r7}
    1118:	020000e7 	andeq	r0, r0, #231	; 0xe7
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
    1154:	0000e7d4 	ldrdeq	lr, [r0], -r4
    1158:	0000e7dc 	ldrdeq	lr, [r0], -ip
    115c:	bd013f01 	stclt	15, cr3, [r1, #-4]
    1160:	0e000003 	cdpeq	0, 0, cr0, cr0, cr3, {0}
    1164:	00000097 	muleq	r0, r7, r0
    1168:	00000992 	muleq	r0, r2, r9
    116c:	00a41900 	adceq	r1, r4, r0, lsl #18
    1170:	e7dc0000 	ldrb	r0, [ip, r0]
    1174:	e7e80000 	strb	r0, [r8, r0]!
    1178:	43010000 	movwmi	r0, #4096	; 0x1000
    117c:	00bd1101 	adcseq	r1, sp, r1, lsl #2
    1180:	51010000 	mrspl	r0, (UNDEF: 1)
    1184:	0000b211 	andeq	fp, r0, r1, lsl r2
    1188:	00500100 	subseq	r0, r0, r0, lsl #2
    118c:	e6011c00 	str	r1, [r1], -r0, lsl #24
    1190:	01000004 	tsteq	r0, r4
    1194:	e8010156 	stmda	r1, {r1, r2, r4, r6, r8}
    1198:	140000e7 	strne	r0, [r0], #-231	; 0xffffff19
    119c:	020000e8 	andeq	r0, r0, #232	; 0xe8
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
    11d8:	0000e7e8 	andeq	lr, r0, r8, ror #15
    11dc:	0000e808 	andeq	lr, r0, r8, lsl #16
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
    120c:	e8080000 	stmda	r8, {}	; <UNPREDICTABLE>
    1210:	e8140000 	ldmda	r4, {}	; <UNPREDICTABLE>
    1214:	5e010000 	cdppl	0, 0, cr0, cr1, cr0, {0}
    1218:	01381101 	teqeq	r8, r1, lsl #2
    121c:	51010000 	mrspl	r0, (UNDEF: 1)
    1220:	00012d11 	andeq	r2, r1, r1, lsl sp
    1224:	00500100 	subseq	r0, r0, r0, lsl #2
    1228:	00840d00 	addeq	r0, r4, r0, lsl #26
    122c:	e8140000 	ldmda	r4, {}	; <UNPREDICTABLE>
    1230:	e8240000 	stmda	r4!, {}	; <UNPREDICTABLE>
    1234:	7d020000 	stcvc	0, cr0, [r2, #-0]
    1238:	04980100 	ldreq	r0, [r8], #256	; 0x100
    123c:	970e0000 	strls	r0, [lr, -r0]
    1240:	5a000000 	bpl	1248 <_SUPERVISOR_STACK_SIZE+0xa48>
    1244:	0000000a 	andeq	r0, r0, sl
    1248:	0000e71e 	andeq	lr, r0, lr, lsl r7
    124c:	00e82400 	rsceq	r2, r8, r0, lsl #8
    1250:	00e84800 	rsceq	r4, r8, r0, lsl #16
    1254:	007d0200 	rsbseq	r0, sp, r0, lsl #4
    1258:	00fa0e01 	rscseq	r0, sl, r1, lsl #28
    125c:	0a7b0000 	beq	1ec1264 <__stack+0x1ea9e14>
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
    128c:	48000000 	stmdami	r0, {}	; <UNPREDICTABLE>
    1290:	3c0000e8 	stccc	0, cr0, [r0], {232}	; 0xe8
    1294:	c80000ee 	stmdagt	r0, {r1, r2, r3, r5, r6, r7}
    1298:	02000003 	andeq	r0, r0, #3
    129c:	01a40601 			; <UNDEFINED> instruction: 0x01a40601
    12a0:	01020000 	mrseq	r0, (UNDEF: 2)
    12a4:	0001a208 	andeq	sl, r1, r8, lsl #4
    12a8:	05020200 	streq	r0, [r2, #-512]	; 0xfffffe00
    12ac:	000003bb 			; <UNDEFINED> instruction: 0x000003bb
    12b0:	fb070202 	blx	1c1ac2 <__stack+0x1aa672>
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
    12f0:	ab080102 	blge	201700 <__stack+0x1ea2b0>
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
    1354:	0b002302 	bleq	9f64 <OSMutexPend+0x48>
    1358:	0000056a 	andeq	r0, r0, sl, ror #10
    135c:	00411501 	subeq	r1, r1, r1, lsl #10
    1360:	23020000 	movwcs	r0, #8192	; 0x2000
    1364:	05760b04 	ldrbeq	r0, [r6, #-2820]!	; 0xfffff4fc
    1368:	16010000 	strne	r0, [r1], -r0
    136c:	00000041 	andeq	r0, r0, r1, asr #32
    1370:	0b082302 	bleq	209f80 <__stack+0x1f2b30>
    1374:	0000061f 	andeq	r0, r0, pc, lsl r6
    1378:	007a1701 	rsbseq	r1, sl, r1, lsl #14
    137c:	23020000 	movwcs	r0, #8192	; 0x2000
    1380:	05a00b0c 	streq	r0, [r0, #2828]!	; 0xb0c
    1384:	18010000 	stmdane	r1, {}	; <UNPREDICTABLE>
    1388:	00000041 	andeq	r0, r0, r1, asr #32
    138c:	0b102302 	bleq	409f9c <__stack+0x3f2b4c>
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
    1424:	48000001 	stmdami	r0, {r0}
    1428:	900000e8 	andls	r0, r0, r8, ror #1
    142c:	220000e8 	andcs	r0, r0, #232	; 0xe8
    1430:	0100000b 	tsteq	r0, fp
    1434:	00000212 	andeq	r0, r0, r2, lsl r2
    1438:	00014b12 	andeq	r4, r1, r2, lsl fp
    143c:	000b4200 	andeq	r4, fp, r0, lsl #4
    1440:	01561200 	cmpeq	r6, r0, lsl #4
    1444:	0b630000 	bleq	18c144c <__stack+0x18a9ffc>
    1448:	61130000 	tstvs	r3, r0
    144c:	14000001 	strne	r0, [r0], #-1
    1450:	0000013e 	andeq	r0, r0, lr, lsr r1
    1454:	0000e864 	andeq	lr, r0, r4, ror #16
    1458:	0000e890 	muleq	r0, r0, r8
    145c:	56122c01 	ldrpl	r2, [r2], -r1, lsl #24
    1460:	81000001 	tsthi	r0, r1
    1464:	1500000b 	strne	r0, [r0, #-11]
    1468:	0000e864 	andeq	lr, r0, r4, ror #16
    146c:	0000e890 	muleq	r0, r0, r8
    1470:	00016116 	andeq	r6, r1, r6, lsl r1
    1474:	17540100 	ldrbne	r0, [r4, -r0, lsl #2]
    1478:	0000014b 	andeq	r0, r0, fp, asr #2
    147c:	00e88018 	rsceq	r8, r8, r8, lsl r0
    1480:	00054200 	andeq	r4, r5, r0, lsl #4
    1484:	00000000 	andeq	r0, r0, r0
    1488:	00054d19 	andeq	r4, r5, r9, lsl sp
    148c:	01500100 	cmpeq	r0, r0, lsl #2
    1490:	0000e890 	muleq	r0, r0, r8
    1494:	0000e988 	andeq	lr, r0, r8, lsl #19
    1498:	00000b9f 	muleq	r0, pc, fp	; <UNPREDICTABLE>
    149c:	0002df01 	andeq	sp, r2, r1, lsl #30
    14a0:	006e1a00 	rsbeq	r1, lr, r0, lsl #20
    14a4:	02df5001 	sbcseq	r5, pc, #1
    14a8:	0bcc0000 	bleq	ff3014b0 <CPU_ARM_BIT_CNTES_C+0x7f3014b0>
    14ac:	ba1b0000 	blt	6c14b4 <__stack+0x6aa064>
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
    1514:	0000e944 	andeq	lr, r0, r4, asr #18
    1518:	00000556 	andeq	r0, r0, r6, asr r5
    151c:	000002b1 			; <UNDEFINED> instruction: 0x000002b1
    1520:	0250011f 	subseq	r0, r0, #-1073741817	; 0xc0000007
    1524:	1e000075 	mcrne	0, 0, r0, cr0, cr5, {3}
    1528:	0000e95c 	andeq	lr, r0, ip, asr r9
    152c:	0000013e 	andeq	r0, r0, lr, lsr r1
    1530:	000002c5 	andeq	r0, r0, r5, asr #5
    1534:	0251011f 	subseq	r0, r1, #-1073741817	; 0xc0000007
    1538:	18000077 	stmdane	r0, {r0, r1, r2, r4, r5, r6}
    153c:	0000e96c 	andeq	lr, r0, ip, ror #18
    1540:	00000542 	andeq	r0, r0, r2, asr #10
    1544:	00e98020 	rsceq	r8, r9, r0, lsr #32
    1548:	00013e00 	andeq	r3, r1, r0, lsl #28
    154c:	51011f00 	tstpl	r1, r0, lsl #30
    1550:	00007702 	andeq	r7, r0, r2, lsl #14
    1554:	005d0600 	subseq	r0, sp, r0, lsl #12
    1558:	7a210000 	bvc	841560 <__stack+0x82a110>
    155c:	f4000000 	vst4.8	{d0-d3}, [r0], r0
    1560:	22000002 	andcs	r0, r0, #2
    1564:	00000064 	andeq	r0, r0, r4, rrx
    1568:	7a21001f 	bvc	8415ec <__stack+0x82a19c>
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
    15a8:	88019501 	stmdahi	r1, {r0, r8, sl, ip, pc}
    15ac:	3c0000e9 	stccc	0, cr0, [r0], {233}	; 0xe9
    15b0:	7e0000ee 	cdpvc	0, 0, cr0, cr0, cr14, {7}
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
    15ec:	9b010072 	blls	417bc <__stack+0x2a36c>
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
    1630:	0000ea30 	andeq	lr, r0, r0, lsr sl
    1634:	0000ea60 	andeq	lr, r0, r0, ror #20
    1638:	03e6b601 	mvneq	fp, #1048576	; 0x100000
    163c:	87170000 	ldrhi	r0, [r7, -r0]
    1640:	2a000001 	bcs	164c <_SUPERVISOR_STACK_SIZE+0xe4c>
    1644:	00000030 	andeq	r0, r0, r0, lsr r0
    1648:	0001922b 	andeq	r9, r1, fp, lsr #4
    164c:	000e9500 	andeq	r9, lr, r0, lsl #10
    1650:	019b2b00 	orrseq	r2, fp, r0, lsl #22
    1654:	0eb40000 	cdpeq	0, 11, cr0, cr4, cr0, {0}
    1658:	00000000 	andeq	r0, r0, r0
    165c:	00ea6c2c 	rsceq	r6, sl, ip, lsr #24
    1660:	00ea7c00 	rsceq	r7, sl, r0, lsl #24
    1664:	00040300 	andeq	r0, r4, r0, lsl #6
    1668:	5f5f1c00 	svcpl	0x005f1c00
    166c:	c2010078 	andgt	r0, r1, #120	; 0x78
    1670:	00000041 	andeq	r0, r0, r1, asr #32
    1674:	00000ec7 	andeq	r0, r0, r7, asr #29
    1678:	03092900 	movweq	r2, #39168	; 0x9900
    167c:	ec280000 	stc	0, cr0, [r8], #-0
    1680:	eca40000 	stc	0, cr0, [r4]
    1684:	e1010000 	mrs	r0, (UNDEF: 1)
    1688:	0000046c 	andeq	r0, r0, ip, ror #8
    168c:	00032012 	andeq	r2, r3, r2, lsl r0
    1690:	000fa100 	andeq	sl, pc, r0, lsl #2
    1694:	03161200 	tsteq	r6, #0, 4
    1698:	0fe90000 	svceq	0x00e90000
    169c:	301e0000 	andscc	r0, lr, r0
    16a0:	560000ec 	strpl	r0, [r0], -ip, ror #1
    16a4:	3c000005 	stccc	0, cr0, [r0], {5}
    16a8:	1f000004 	svcne	0x00000004
    16ac:	7a025001 	bvc	956b8 <__stack+0x7e268>
    16b0:	481e0000 	ldmdami	lr, {}	; <UNPREDICTABLE>
    16b4:	3e0000ec 	cdpcc	0, 0, cr0, cr0, cr12, {7}
    16b8:	51000001 	tstpl	r0, r1
    16bc:	1f000004 	svcne	0x00000004
    16c0:	91035101 	tstls	r3, r1, lsl #2
    16c4:	18007f88 	stmdane	r0, {r3, r7, r8, r9, sl, fp, ip, sp, lr}
    16c8:	0000ec8c 	andeq	lr, r0, ip, lsl #25
    16cc:	00000542 	andeq	r0, r0, r2, asr #10
    16d0:	00eca420 	rsceq	sl, ip, r0, lsr #8
    16d4:	00013e00 	andeq	r3, r1, r0, lsl #28
    16d8:	51011f00 	tstpl	r1, r0, lsl #30
    16dc:	7f889103 	svcvc	0x00889103
    16e0:	762d0000 	strtvc	r0, [sp], -r0
    16e4:	80000001 	andhi	r0, r0, r1
    16e8:	480000ed 	stmdami	r0, {r0, r2, r3, r5, r6, r7}
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
    1718:	0000e9cc 	andeq	lr, r0, ip, asr #19
    171c:	00000542 	andeq	r0, r0, r2, asr #10
    1720:	00ebf818 	rsceq	pc, fp, r8, lsl r8	; <UNPREDICTABLE>
    1724:	00021200 	andeq	r1, r2, r0, lsl #4
    1728:	ecec1800 	stcl	8, cr1, [ip]
    172c:	05420000 	strbeq	r0, [r2, #-0]
    1730:	7c1e0000 	ldcvc	0, cr0, [lr], {-0}
    1734:	420000ed 	andmi	r0, r0, #237	; 0xed
    1738:	d0000005 	andle	r0, r0, r5
    173c:	1f000004 	svcne	0x00000004
    1740:	08025001 	stmdaeq	r2, {r0, ip, lr}
    1744:	f41e0025 			; <UNDEFINED> instruction: 0xf41e0025
    1748:	420000ed 	andmi	r0, r0, #237	; 0xed
    174c:	e3000005 	movw	r0, #5
    1750:	1f000004 	svcne	0x00000004
    1754:	3d015001 	stccc	0, cr5, [r1, #-4]
    1758:	ee0c1800 	cdp	8, 0, cr1, cr12, cr0, {0}
    175c:	05420000 	strbeq	r0, [r2, #-0]
    1760:	181e0000 	ldmdane	lr, {}	; <UNPREDICTABLE>
    1764:	420000ee 	andmi	r0, r0, #238	; 0xee
    1768:	ff000005 			; <UNDEFINED> instruction: 0xff000005
    176c:	1f000004 	svcne	0x00000004
    1770:	37015001 	strcc	r5, [r1, -r1]
    1774:	ee241e00 	cdp	14, 2, cr1, cr4, cr0, {0}
    1778:	05420000 	strbeq	r0, [r2, #-0]
    177c:	05120000 	ldreq	r0, [r2, #-0]
    1780:	011f0000 	tsteq	pc, r0
    1784:	00380150 	eorseq	r0, r8, r0, asr r1
    1788:	00ee301e 	rsceq	r3, lr, lr, lsl r0
    178c:	00054200 	andeq	r4, r5, r0, lsl #4
    1790:	00052500 	andeq	r2, r5, r0, lsl #10
    1794:	50011f00 	andpl	r1, r1, r0, lsl #30
    1798:	20003d01 	andcs	r3, r0, r1, lsl #26
    179c:	0000ee38 	andeq	lr, r0, r8, lsr lr
    17a0:	00000542 	andeq	r0, r0, r2, asr #10
    17a4:	0150011f 	cmpeq	r0, pc, lsl r1
    17a8:	2e00003a 	mcrcs	0, 0, r0, cr0, cr10, {1}
    17ac:	0000057b 	andeq	r0, r0, fp, ror r5
    17b0:	00815506 	addeq	r5, r1, r6, lsl #10
    17b4:	01010000 	mrseq	r0, (UNDEF: 1)
    17b8:	0086012f 	addeq	r0, r6, pc, lsr #2
    17bc:	0d010000 	stceq	0, cr0, [r1, #-0]
    17c0:	05560101 	ldrbeq	r0, [r6, #-257]	; 0xfffffeff
    17c4:	7a300000 	bvc	c017cc <__stack+0xbea37c>
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
    17f8:	ee3c0000 	cdp	0, 3, cr0, cr12, cr0, {0}
    17fc:	f4380000 			; <UNDEFINED> instruction: 0xf4380000
    1800:	06080000 	streq	r0, [r8], -r0
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
    1834:	5a5c0200 	bpl	170203c <__stack+0x16eabec>
    1838:	02000000 	andeq	r0, r0, #0
    183c:	02eb0704 	rsceq	r0, fp, #4, 14	; 0x100000
    1840:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    1844:	0002e607 	andeq	lr, r2, r7, lsl #12
    1848:	08010200 	stmdaeq	r1, {r9}
    184c:	000001ab 	andeq	r0, r0, fp, lsr #3
    1850:	bb050202 	bllt	142060 <__stack+0x12ac10>
    1854:	02000003 	andeq	r0, r0, #3
    1858:	03930504 	orrseq	r0, r3, #4, 10	; 0x1000000
    185c:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    1860:	00038e05 	andeq	r8, r3, r5, lsl #28
    1864:	8a040400 	bhi	10286c <__stack+0xeb41c>
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
    19d0:	3c010297 	sfmcc	f0, 4, [r1], {151}	; 0x97
    19d4:	640000ee 	strvs	r0, [r0], #-238	; 0xffffff12
    19d8:	530000ee 	movwpl	r0, #238	; 0xee
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
    1a14:	00ee500f 	rsceq	r5, lr, pc
    1a18:	0007cc00 	andeq	ip, r7, r0, lsl #24
    1a1c:	51011000 	mrspl	r1, (UNDEF: 1)
    1a20:	02a00a03 	adceq	r0, r0, #12288	; 0x3000
    1a24:	05500110 	ldrbeq	r0, [r0, #-272]	; 0xfffffef0
    1a28:	0101f403 	tsteq	r1, r3, lsl #8
    1a2c:	11000000 	mrsne	r0, (UNDEF: 0)
    1a30:	00065001 	andeq	r5, r6, r1
    1a34:	01910100 	orrseq	r0, r1, r0, lsl #2
    1a38:	00002501 	andeq	r2, r0, r1, lsl #10
    1a3c:	00ee6400 	rsceq	r6, lr, r0, lsl #8
    1a40:	00eeec00 	rsceq	lr, lr, r0, lsl #24
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
    1a7c:	90130000 	andsls	r0, r3, r0
    1a80:	e50000ee 	str	r0, [r0, #-238]	; 0xffffff12
    1a84:	13000007 	movwne	r0, #7
    1a88:	0000eea0 	andeq	lr, r0, r0, lsr #29
    1a8c:	000007fe 	strdeq	r0, [r0], -lr
    1a90:	00eecc13 	rsceq	ip, lr, r3, lsl ip
    1a94:	0007fe00 	andeq	pc, r7, r0, lsl #28
    1a98:	eee41300 	cdp	3, 14, cr1, cr4, cr0, {0}
    1a9c:	07e50000 	strbeq	r0, [r5, r0]!
    1aa0:	04000000 	streq	r0, [r0], #-0
    1aa4:	0001dd04 	andeq	sp, r1, r4, lsl #26
    1aa8:	f2011100 	vrhadd.s8	d1, d1, d0
    1aac:	01000006 	tsteq	r0, r6
    1ab0:	25010108 	strcs	r0, [r1, #-264]	; 0xfffffef8
    1ab4:	ec000000 	stc	0, cr0, [r0], {-0}
    1ab8:	c40000ee 	strgt	r0, [r0], #-238	; 0xffffff12
    1abc:	460000ef 	strmi	r0, [r0], -pc, ror #1
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
    1b04:	00ef3c15 	rsceq	r3, pc, r5, lsl ip	; <UNPREDICTABLE>
    1b08:	0007cc00 	andeq	ip, r7, r0, lsl #24
    1b0c:	00034100 	andeq	r4, r3, r0, lsl #2
    1b10:	51011000 	mrspl	r1, (UNDEF: 1)
    1b14:	01120a03 	tsteq	r2, r3, lsl #20
    1b18:	05500110 	ldrbeq	r0, [r0, #-272]	; 0xfffffef0
    1b1c:	0101f403 	tsteq	r1, r3, lsl #8
    1b20:	64150000 	ldrvs	r0, [r5], #-0
    1b24:	e50000ef 	str	r0, [r0, #-239]	; 0xffffff11
    1b28:	54000007 	strpl	r0, [r0], #-7
    1b2c:	10000003 	andne	r0, r0, r3
    1b30:	48015101 	stmdami	r1, {r0, r8, ip, lr}
    1b34:	ef841600 	svc	0x00841600
    1b38:	4e010000 	cdpmi	0, 0, cr0, cr1, cr0, {0}
    1b3c:	69000002 	stmdbvs	r0, {r1}
    1b40:	10000003 	andne	r0, r0, r3
    1b44:	75025001 	strvc	r5, [r2, #-1]
    1b48:	94150000 	ldrls	r0, [r5], #-0
    1b4c:	cc0000ef 	stcgt	0, cr0, [r0], {239}	; 0xef
    1b50:	87000007 	strhi	r0, [r0, -r7]
    1b54:	10000003 	andne	r0, r0, r3
    1b58:	0a035101 	beq	d5f64 <__stack+0xbeb14>
    1b5c:	01100110 	tsteq	r0, r0, lsl r1
    1b60:	f4030550 	vst3.16	{d0,d2,d4}, [r3 :64], r0
    1b64:	00000101 	andeq	r0, r0, r1, lsl #2
    1b68:	00efb80f 	rsceq	fp, pc, pc, lsl #16
    1b6c:	0007cc00 	andeq	ip, r7, r0, lsl #24
    1b70:	51011000 	mrspl	r1, (UNDEF: 1)
    1b74:	01110a03 	tsteq	r1, r3, lsl #20
    1b78:	05500110 	ldrbeq	r0, [r0, #-272]	; 0xfffffef0
    1b7c:	0101f403 	tsteq	r1, r3, lsl #8
    1b80:	11000000 	mrsne	r0, (UNDEF: 0)
    1b84:	0008cd01 	andeq	ip, r8, r1, lsl #26
    1b88:	01e30100 	mvneq	r0, r0, lsl #2
    1b8c:	00002501 	andeq	r2, r0, r1, lsl #10
    1b90:	00efc400 	rsceq	ip, pc, r0, lsl #8
    1b94:	00f05400 	rscseq	r5, r0, r0, lsl #8
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
    1bd0:	d8130000 	ldmdale	r3, {}	; <UNPREDICTABLE>
    1bd4:	fe0000ef 	cdp2	0, 0, cr0, cr0, cr15, {7}
    1bd8:	13000007 	movwne	r0, #7
    1bdc:	0000f008 	andeq	pc, r0, r8
    1be0:	000007fe 	strdeq	r0, [r0], -lr
    1be4:	00f01c13 	rscseq	r1, r0, r3, lsl ip
    1be8:	0007fe00 	andeq	pc, r7, r0, lsl #28
    1bec:	01110000 	tsteq	r1, r0
    1bf0:	000008e3 	andeq	r0, r0, r3, ror #17
    1bf4:	01014a01 	tsteq	r1, r1, lsl #20
    1bf8:	00000025 	andeq	r0, r0, r5, lsr #32
    1bfc:	0000f054 	andeq	pc, r0, r4, asr r0	; <UNPREDICTABLE>
    1c00:	0000f154 	andeq	pc, r0, r4, asr r1	; <UNPREDICTABLE>
    1c04:	00001325 	andeq	r1, r0, r5, lsr #6
    1c08:	00051901 	andeq	r1, r5, r1, lsl #18
    1c0c:	08c10e00 	stmiaeq	r1, {r9, sl, fp}^
    1c10:	4a010000 	bmi	41c18 <__stack+0x2a7c8>
    1c14:	0002c201 	andeq	ip, r2, r1, lsl #4
    1c18:	00135100 	andseq	r5, r3, r0, lsl #2
    1c1c:	06630e00 	strbteq	r0, [r3], -r0, lsl #28
    1c20:	4b010000 	blmi	41c28 <__stack+0x2a7d8>
    1c24:	00011f01 	andeq	r1, r1, r1, lsl #30
    1c28:	0013b100 	andseq	fp, r3, r0, lsl #2
    1c2c:	070c0e00 	streq	r0, [ip, -r0, lsl #28]
    1c30:	4b010000 	blmi	41c38 <__stack+0x2a7e8>
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
    1c5c:	f0a81500 			; <UNDEFINED> instruction: 0xf0a81500
    1c60:	07cc0000 	strbeq	r0, [ip, r0]
    1c64:	049a0000 	ldreq	r0, [sl], #0
    1c68:	01100000 	tsteq	r0, r0
    1c6c:	550a0351 	strpl	r0, [sl, #-849]	; 0xfffffcaf
    1c70:	50011001 	andpl	r1, r1, r1
    1c74:	01f40305 	mvnseq	r0, r5, lsl #6
    1c78:	13000001 	movwne	r0, #1
    1c7c:	0000f0cc 	andeq	pc, r0, ip, asr #1
    1c80:	000007fe 	strdeq	r0, [r0], -lr
    1c84:	00f0e015 	rscseq	lr, r0, r5, lsl r0
    1c88:	0007e500 	andeq	lr, r7, r0, lsl #10
    1c8c:	0004b800 	andeq	fp, r4, r0, lsl #16
    1c90:	51011000 	mrspl	r1, (UNDEF: 1)
    1c94:	1fff0a03 	svcne	0x00ff0a03
    1c98:	f0f81500 			; <UNDEFINED> instruction: 0xf0f81500
    1c9c:	03a20000 			; <UNDEFINED> instruction: 0x03a20000
    1ca0:	04cc0000 	strbeq	r0, [ip], #0
    1ca4:	01100000 	tsteq	r0, r0
    1ca8:	00750250 	rsbseq	r0, r5, r0, asr r2
    1cac:	f10c1500 			; <UNDEFINED> instruction: 0xf10c1500
    1cb0:	07e50000 	strbeq	r0, [r5, r0]!
    1cb4:	04e00000 	strbteq	r0, [r0], #0
    1cb8:	01100000 	tsteq	r0, r0
    1cbc:	00740251 	rsbseq	r0, r4, r1, asr r2
    1cc0:	f1241500 			; <UNDEFINED> instruction: 0xf1241500
    1cc4:	07cc0000 	strbeq	r0, [ip, r0]
    1cc8:	04fe0000 	ldrbteq	r0, [lr], #0
    1ccc:	01100000 	tsteq	r0, r0
    1cd0:	530a0351 	movwpl	r0, #41809	; 0xa351
    1cd4:	50011001 	andpl	r1, r1, r1
    1cd8:	01f40305 	mvnseq	r0, r5, lsl #6
    1cdc:	0f000001 	svceq	0x00000001
    1ce0:	0000f148 	andeq	pc, r0, r8, asr #2
    1ce4:	000007cc 	andeq	r0, r0, ip, asr #15
    1ce8:	03510110 	cmpeq	r1, #16, 2
    1cec:	1001540a 	andne	r5, r1, sl, lsl #8
    1cf0:	03055001 	movweq	r5, #20481	; 0x5001
    1cf4:	000101f4 	strdeq	r0, [r1], -r4
    1cf8:	01170000 	tsteq	r7, r0
    1cfc:	000007ee 	andeq	r0, r0, lr, ror #15
    1d00:	01021e01 	tsteq	r2, r1, lsl #28
    1d04:	0000008f 	andeq	r0, r0, pc, lsl #1
    1d08:	0000f154 	andeq	pc, r0, r4, asr r1	; <UNPREDICTABLE>
    1d0c:	0000f314 	andeq	pc, r0, r4, lsl r3	; <UNPREDICTABLE>
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
    1dd4:	f1cc1500 			; <UNDEFINED> instruction: 0xf1cc1500
    1dd8:	07cc0000 	strbeq	r0, [ip, r0]
    1ddc:	060b0000 	streq	r0, [fp], -r0
    1de0:	01100000 	tsteq	r0, r0
    1de4:	f4030550 	vst3.16	{d0,d2,d4}, [r3 :64], r0
    1de8:	00000101 	andeq	r0, r0, r1, lsl #2
    1dec:	00f20c13 	rscseq	r0, r2, r3, lsl ip
    1df0:	0007fe00 	andeq	pc, r7, r0, lsl #28
    1df4:	f2941500 	vabal.s16	<illegal reg q0.5>, d4, d0
    1df8:	07fe0000 	ldrbeq	r0, [lr, r0]!
    1dfc:	06280000 	strteq	r0, [r8], -r0
    1e00:	01100000 	tsteq	r0, r0
    1e04:	00740250 	rsbseq	r0, r4, r0, asr r2
    1e08:	f2a41500 	vabal.s32	<illegal reg q0.5>, d4, d0
    1e0c:	07e50000 	strbeq	r0, [r5, r0]!
    1e10:	063c0000 	ldrteq	r0, [ip], -r0
    1e14:	01100000 	tsteq	r0, r0
    1e18:	00740250 	rsbseq	r0, r4, r0, asr r2
    1e1c:	f2b41500 	vext.8	d1, d4, d0, #5
    1e20:	07e50000 	strbeq	r0, [r5, r0]!
    1e24:	06510000 	ldrbeq	r0, [r1], -r0
    1e28:	01100000 	tsteq	r0, r0
    1e2c:	4c910351 	ldcmi	3, cr0, [r1], {81}	; 0x51
    1e30:	c4150006 	ldrgt	r0, [r5], #-6
    1e34:	e50000f2 	str	r0, [r0, #-242]	; 0xffffff0e
    1e38:	66000007 	strvs	r0, [r0], -r7
    1e3c:	10000006 	andne	r0, r0, r6
    1e40:	7d035101 	stfvcs	f5, [r3, #-4]
    1e44:	15000600 	strne	r0, [r0, #-1536]	; 0xfffffa00
    1e48:	0000f2d0 	ldrdeq	pc, [r0], -r0
    1e4c:	000007fe 	strdeq	r0, [r0], -lr
    1e50:	0000067a 	andeq	r0, r0, sl, ror r6
    1e54:	02500110 	subseq	r0, r0, #16, 2
    1e58:	15000074 	strne	r0, [r0, #-116]	; 0xffffff8c
    1e5c:	0000f2e0 	andeq	pc, r0, r0, ror #5
    1e60:	000007e5 	andeq	r0, r0, r5, ror #15
    1e64:	0000068e 	andeq	r0, r0, lr, lsl #13
    1e68:	02500110 	subseq	r0, r0, #16, 2
    1e6c:	0f000074 	svceq	0x00000074
    1e70:	0000f2fc 	strdeq	pc, [r0], -ip
    1e74:	000007cc 	andeq	r0, r0, ip, asr #15
    1e78:	03510110 	cmpeq	r1, #16, 2
    1e7c:	10022e0a 	andne	r2, r2, sl, lsl #28
    1e80:	03055001 	movweq	r5, #20481	; 0x5001
    1e84:	000101f4 	strdeq	r0, [r1], -r4
    1e88:	01180000 	tsteq	r8, r0
    1e8c:	000006cc 	andeq	r0, r0, ip, asr #13
    1e90:	8f018501 	svchi	0x00018501
    1e94:	14000000 	strne	r0, [r0], #-0
    1e98:	380000f3 	stmdacc	r0, {r0, r1, r4, r5, r6, r7}
    1e9c:	0d0000f4 	stceq	0, cr0, [r0, #-976]	; 0xfffffc30
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
    1f00:	8c150000 	ldchi	0, cr0, [r5], {-0}
    1f04:	190000f3 	stmdbne	r0, {r0, r1, r4, r5, r6, r7}
    1f08:	35000005 	strcc	r0, [r0, #-5]
    1f0c:	10000007 	andne	r0, r0, r7
    1f10:	74025001 	strvc	r5, [r2], #-1
    1f14:	a4130000 	ldrge	r0, [r3], #-0
    1f18:	fe0000f3 	mcr2	0, 0, r0, cr0, cr3, {7}
    1f1c:	13000007 	movwne	r0, #7
    1f20:	0000f3b8 			; <UNDEFINED> instruction: 0x0000f3b8
    1f24:	000007e5 	andeq	r0, r0, r5, ror #15
    1f28:	00f3c815 	rscseq	ip, r3, r5, lsl r8
    1f2c:	0007e500 	andeq	lr, r7, r0, lsl #10
    1f30:	00075a00 	andeq	r5, r7, r0, lsl #20
    1f34:	51011000 	mrspl	r1, (UNDEF: 1)
    1f38:	15003801 	strne	r3, [r0, #-2049]	; 0xfffff7ff
    1f3c:	0000f3d8 	ldrdeq	pc, [r0], -r8
    1f40:	000007e5 	andeq	r0, r0, r5, ror #15
    1f44:	0000076d 	andeq	r0, r0, sp, ror #14
    1f48:	01510110 	cmpeq	r1, r0, lsl r1
    1f4c:	e8150031 	ldmda	r5, {r0, r4, r5}
    1f50:	e50000f3 	str	r0, [r0, #-243]	; 0xffffff0d
    1f54:	82000007 	andhi	r0, r0, #7
    1f58:	10000007 	andne	r0, r0, r7
    1f5c:	0a035101 	beq	d6368 <__stack+0xbef18>
    1f60:	15001fff 	strne	r1, [r0, #-4095]	; 0xfffff001
    1f64:	0000f404 	andeq	pc, r0, r4, lsl #8
    1f68:	000007cc 	andeq	r0, r0, ip, asr #15
    1f6c:	0000079f 	muleq	r0, pc, r7	; <UNPREDICTABLE>
    1f70:	02510110 	subseq	r0, r1, #16, 2
    1f74:	01109008 	tsteq	r0, r8
    1f78:	f4030550 	vst3.16	{d0,d2,d4}, [r3 :64], r0
    1f7c:	00000101 	andeq	r0, r0, r1, lsl #2
    1f80:	00f4240f 	rscseq	r2, r4, pc, lsl #8
    1f84:	0007cc00 	andeq	ip, r7, r0, lsl #24
    1f88:	51011000 	mrspl	r1, (UNDEF: 1)
    1f8c:	108f0802 	addne	r0, pc, r2, lsl #16
    1f90:	03055001 	movweq	r5, #20481	; 0x5001
    1f94:	000101f4 	strdeq	r0, [r1], -r4
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
    200c:	00f43800 	rscseq	r3, r4, r0, lsl #16
    2010:	00f45400 	rscseq	r5, r4, r0, lsl #8
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
    20d4:	0000f438 	andeq	pc, r0, r8, lsr r4	; <UNPREDICTABLE>
    20d8:	0000f454 	andeq	pc, r0, r4, asr r4	; <UNPREDICTABLE>
    20dc:	01007d02 	tsteq	r0, r2, lsl #26
    20e0:	0000011b 	andeq	r0, r0, fp, lsl r1
    20e4:	0008ab09 	andeq	sl, r8, r9, lsl #22
    20e8:	2c5a0100 	ldfcse	f0, [sl], {-0}
    20ec:	9e000000 	cdpls	0, 0, cr0, cr0, cr0, {0}
    20f0:	0a000018 	beq	2158 <_HEAP_SIZE+0x158>
    20f4:	00000933 	andeq	r0, r0, r3, lsr r9
    20f8:	011b5c01 	tsteq	fp, r1, lsl #24
    20fc:	18bf0000 	ldmne	pc!, {}	; <UNPREDICTABLE>
    2100:	6b0b0000 	blvs	2c2108 <__stack+0x2aacb8>
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
    213c:	3a010000 	bcc	42144 <__stack+0x2acf4>
    2140:	12000009 	andne	r0, r0, #9
    2144:	54000000 	strpl	r0, [r0], #-0
    2148:	640000f4 	strvs	r0, [r0], #-244	; 0xffffff0c
    214c:	860000f4 			; <UNDEFINED> instruction: 0x860000f4
    2150:	02000009 	andeq	r0, r0, #9
    2154:	02003875 	andeq	r3, r0, #7667712	; 0x750000
    2158:	00002f5a 	andeq	r2, r0, sl, asr pc
    215c:	08010300 	stmdaeq	r1, {r8, r9}
    2160:	000001a2 	andeq	r0, r0, r2, lsr #3
    2164:	fb070203 	blx	1c297a <__stack+0x1ab52a>
    2168:	02000001 	andeq	r0, r0, #1
    216c:	00323375 	eorseq	r3, r2, r5, ror r3
    2170:	00485c02 	subeq	r5, r8, r2, lsl #24
    2174:	04030000 	streq	r0, [r3], #-0
    2178:	0002eb07 	andeq	lr, r2, r7, lsl #22
    217c:	07080300 	streq	r0, [r8, -r0, lsl #6]
    2180:	000002e6 	andeq	r0, r0, r6, ror #5
    2184:	ab080103 	blge	202598 <__stack+0x1eb148>
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
    21b0:	0000f454 	andeq	pc, r0, r4, asr r4	; <UNPREDICTABLE>
    21b4:	0000f464 	andeq	pc, r0, r4, ror #8
    21b8:	01007d02 	tsteq	r0, r2, lsl #26
    21bc:	000000aa 	andeq	r0, r0, sl, lsr #1
    21c0:	01006306 	tsteq	r0, r6, lsl #6
    21c4:	00005610 	andeq	r5, r0, r0, lsl r6
    21c8:	0018eb00 	andseq	lr, r8, r0, lsl #22
    21cc:	f4640700 	vld1.8	{d16}, [r4], r0
    21d0:	aa010000 	bge	421d8 <__stack+0x2ad88>
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
    2208:	0000f464 	andeq	pc, r0, r4, ror #8
    220c:	0000f4a8 	andeq	pc, r0, r8, lsr #9
    2210:	000009f3 	strdeq	r0, [r0], -r3
    2214:	a2080102 	andge	r0, r8, #-2147483648	; 0x80000000
    2218:	02000001 	andeq	r0, r0, #1
    221c:	01fb0702 	mvnseq	r0, r2, lsl #14
    2220:	04020000 	streq	r0, [r2], #-0
    2224:	0002eb07 	andeq	lr, r2, r7, lsl #22
    2228:	07080200 	streq	r0, [r8, -r0, lsl #4]
    222c:	000002e6 	andeq	r0, r0, r6, ror #5
    2230:	ab080102 	blge	202640 <__stack+0x1eb1f0>
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
    2284:	6b010000 	blvs	4228c <__stack+0x2ae3c>
    2288:	00f46401 	rscseq	r6, r4, r1, lsl #8
    228c:	00f49800 	rscseq	r9, r4, r0, lsl #16
    2290:	00190c00 	andseq	r0, r9, r0, lsl #24
    2294:	00de0100 	sbcseq	r0, lr, r0, lsl #2
    2298:	7e0a0000 	cdpvc	0, 0, cr0, cr10, cr0, {0}
    229c:	01000009 	tsteq	r0, r9
    22a0:	00007f6b 	andeq	r7, r0, fp, ror #30
    22a4:	00192c00 	andseq	r2, r9, r0, lsl #24
    22a8:	01250a00 	teqeq	r5, r0, lsl #20
    22ac:	6b010000 	blvs	422b4 <__stack+0x2ae64>
    22b0:	0000008a 	andeq	r0, r0, sl, lsl #1
    22b4:	0000194d 	andeq	r1, r0, sp, asr #18
    22b8:	00f4800b 	rscseq	r8, r4, fp
    22bc:	51010c00 	tstpl	r1, r0, lsl #24
    22c0:	5101f303 	tstpl	r1, r3, lsl #6
    22c4:	0350010c 	cmpeq	r0, #12, 2
    22c8:	005001f3 	ldrsheq	r0, [r0], #-19	; 0xffffffed
    22cc:	68010d00 	stmdavs	r1, {r8, sl, fp}
    22d0:	01000009 	tsteq	r0, r9
    22d4:	f4980186 			; <UNDEFINED> instruction: 0xf4980186
    22d8:	f4a80000 	vld1.8	{d0[0]}, [r8], r0
    22dc:	7d020000 	stcvc	0, cr0, [r2, #-0]
    22e0:	01050100 	mrseq	r0, (UNDEF: 21)
    22e4:	950e0000 	strls	r0, [lr, #-0]
    22e8:	01000009 	tsteq	r0, r9
    22ec:	00005d86 	andeq	r5, r0, r6, lsl #27
    22f0:	00500100 	subseq	r0, r0, r0, lsl #2
    22f4:	0009830f 	andeq	r8, r9, pc, lsl #6
    22f8:	5d580100 	ldfple	f0, [r8, #-0]
    22fc:	05000000 	streq	r0, [r0, #-0]
    2300:	01268803 	teqeq	r6, r3, lsl #16
    2304:	081f1000 	ldmdaeq	pc, {ip}	; <UNPREDICTABLE>
    2308:	4e010000 	cdpmi	0, 0, cr0, cr1, cr0, {0}
    230c:	00000128 	andeq	r0, r0, r8, lsr #2
    2310:	4c030501 	cfstr32mi	mvfx0, [r3], {1}
    2314:	02000134 	andeq	r0, r0, #52, 2
    2318:	02f00704 	rscseq	r0, r0, #4, 14	; 0x100000
    231c:	9d100000 	ldcls	0, cr0, [r0, #-0]
    2320:	01000009 	tsteq	r0, r9
    2324:	00008a55 	andeq	r8, r0, r5, asr sl
    2328:	03050100 	movweq	r0, #20736	; 0x5100
    232c:	0001020c 	andeq	r0, r1, ip, lsl #4
    2330:	0000f100 	andeq	pc, r0, r0, lsl #2
    2334:	82000200 	andhi	r0, r0, #0, 4
    2338:	0400000b 	streq	r0, [r0], #-11
    233c:	00000001 	andeq	r0, r0, r1
    2340:	09b90100 	ldmibeq	r9!, {r8}
    2344:	076e0000 	strbeq	r0, [lr, -r0]!
    2348:	0a4b0000 	beq	12c2350 <__stack+0x12aaf00>
    234c:	01020000 	mrseq	r0, (UNDEF: 2)
    2350:	0001a208 	andeq	sl, r1, r8, lsl #4
    2354:	31750300 	cmncc	r5, r0, lsl #6
    2358:	5b010036 	blpl	42438 <__stack+0x2afe8>
    235c:	0000002f 	andeq	r0, r0, pc, lsr #32
    2360:	fb070202 	blx	1c2b72 <__stack+0x1ab722>
    2364:	03000001 	movweq	r0, #1
    2368:	00323375 	eorseq	r3, r2, r5, ror r3
    236c:	00415c01 	subeq	r5, r1, r1, lsl #24
    2370:	04020000 	streq	r0, [r2], #-0
    2374:	0002eb07 	andeq	lr, r2, r7, lsl #22
    2378:	07080200 	streq	r0, [r8, -r0, lsl #4]
    237c:	000002e6 	andeq	r0, r0, r6, ror #5
    2380:	ab080102 	blge	202790 <__stack+0x1eb340>
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
    2410:	0a000005 	beq	242c <_HEAP_SIZE+0x42c>
    2414:	0000091f 	andeq	r0, r0, pc, lsl r9
    2418:	00cb1603 	sbceq	r1, fp, r3, lsl #12
    241c:	05010000 	streq	r0, [r1, #-0]
    2420:	01021003 	tsteq	r2, r3
    2424:	01590000 	cmpeq	r9, r0
    2428:	00020000 	andeq	r0, r2, r0
    242c:	00000c01 	andeq	r0, r0, r1, lsl #24
    2430:	00000104 	andeq	r0, r0, r4, lsl #2
    2434:	d6010000 	strle	r0, [r1], -r0
    2438:	6e000009 	cdpvs	0, 0, cr0, cr0, cr9, {0}
    243c:	a8000007 	stmdage	r0, {r0, r1, r2}
    2440:	040000f4 	streq	r0, [r0], #-244	; 0xffffff0c
    2444:	a40000f5 	strge	r0, [r0], #-245	; 0xffffff0b
    2448:	0200000a 	andeq	r0, r0, #10
    244c:	02003875 	andeq	r3, r0, #7667712	; 0x750000
    2450:	00002f5a 	andeq	r2, r0, sl, asr pc
    2454:	08010300 	stmdaeq	r1, {r8, r9}
    2458:	000001a2 	andeq	r0, r0, r2, lsr #3
    245c:	fb070203 	blx	1c2c72 <__stack+0x1ab822>
    2460:	02000001 	andeq	r0, r0, #1
    2464:	00323375 	eorseq	r3, r2, r5, ror r3
    2468:	00485c02 	subeq	r5, r8, r2, lsl #24
    246c:	04030000 	streq	r0, [r3], #-0
    2470:	0002eb07 	andeq	lr, r2, r7, lsl #22
    2474:	07080300 	streq	r0, [r8, -r0, lsl #6]
    2478:	000002e6 	andeq	r0, r0, r6, ror #5
    247c:	ab080103 	blge	202890 <__stack+0x1eb440>
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
    24a8:	0000f4a8 	andeq	pc, r0, r8, lsr #9
    24ac:	0000f4d8 	ldrdeq	pc, [r0], -r8
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
    24d8:	0000f4c0 	andeq	pc, r0, r0, asr #9
    24dc:	0000012f 	andeq	r0, r0, pc, lsr #2
    24e0:	000000c5 	andeq	r0, r0, r5, asr #1
    24e4:	02500108 	subseq	r0, r0, #8, 2
    24e8:	09000074 	stmdbeq	r0, {r2, r4, r5, r6}
    24ec:	0000f4d8 	ldrdeq	pc, [r0], -r8
    24f0:	00014701 	andeq	r4, r1, r1, lsl #14
    24f4:	51010800 	tstpl	r1, r0, lsl #16
    24f8:	08007602 	stmdaeq	r0, {r1, r9, sl, ip, sp, lr}
    24fc:	75025001 	strvc	r5, [r2, #-1]
    2500:	0a000030 	beq	25c8 <_HEAP_SIZE+0x5c8>
    2504:	0009c501 	andeq	ip, r9, r1, lsl #10
    2508:	016c0100 	cmneq	ip, r0, lsl #2
    250c:	00000025 	andeq	r0, r0, r5, lsr #32
    2510:	0000f4d8 	ldrdeq	pc, [r0], -r8
    2514:	0000f504 	andeq	pc, r0, r4, lsl #10
    2518:	000019cd 	andeq	r1, r0, sp, asr #19
    251c:	00012f01 	andeq	r2, r1, r1, lsl #30
    2520:	07620600 	strbeq	r0, [r2, -r0, lsl #12]!
    2524:	6c010000 	stcvs	0, cr0, [r1], {-0}
    2528:	0000003d 	andeq	r0, r0, sp, lsr r0
    252c:	000019ed 	andeq	r1, r0, sp, ror #19
    2530:	00f4ec07 	rscseq	lr, r4, r7, lsl #24
    2534:	00012f00 	andeq	r2, r1, r0, lsl #30
    2538:	00011e00 	andeq	r1, r1, r0, lsl #28
    253c:	50010800 	andpl	r0, r1, r0, lsl #16
    2540:	00007402 	andeq	r7, r0, r2, lsl #8
    2544:	00f4fc0b 	rscseq	pc, r4, fp, lsl #24
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
    259c:	0000fadc 	ldrdeq	pc, [r0], -ip
    25a0:	0000fae0 	andeq	pc, r0, r0, ror #21
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
    2604:	00fadc01 	rscseq	sp, sl, r1, lsl #24
    2608:	00fae000 	rscseq	lr, sl, r0
    260c:	007d0200 	rsbseq	r0, sp, r0, lsl #4
    2610:	09e30501 	stmibeq	r3!, {r0, r8, sl}^
    2614:	2f010000 	svccs	0x00010000
    2618:	00000041 	andeq	r0, r0, r1, asr #32
    261c:	00005001 	andeq	r5, r0, r1

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0c3f012e 	ldfeqs	f0, [pc], #-184	; ffffff64 <CPU_ARM_BIT_CNTES_C+0x7fffff64>
  18:	0b3a0e03 	bleq	e8382c <__stack+0xe6c3dc>
  1c:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
  20:	01120111 	tsteq	r2, r1, lsl r1
  24:	42970640 	addsmi	r0, r7, #64, 12	; 0x4000000
  28:	0013010c 	andseq	r0, r3, ip, lsl #2
  2c:	00050300 	andeq	r0, r5, r0, lsl #6
  30:	0b3a0803 	bleq	e82044 <__stack+0xe6abf4>
  34:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  38:	00000602 	andeq	r0, r0, r2, lsl #12
  3c:	01828904 	orreq	r8, r2, r4, lsl #18
  40:	31011100 	mrscc	r1, (UNDEF: 17)
  44:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
  48:	0b0b000f 	bleq	2c008c <__stack+0x2a8c3c>
  4c:	00001349 	andeq	r1, r0, r9, asr #6
  50:	0b002406 	bleq	9070 <OS_StrLen+0x20>
  54:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
  58:	0700000e 	streq	r0, [r0, -lr]
  5c:	0c3f012e 	ldfeqs	f0, [pc], #-184	; ffffffac <CPU_ARM_BIT_CNTES_C+0x7fffffac>
  60:	0b3a0e03 	bleq	e83874 <__stack+0xe6c424>
  64:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
  68:	00000c3c 	andeq	r0, r0, ip, lsr ip
  6c:	49000508 	stmdbmi	r0, {r3, r8, sl}
  70:	00000013 	andeq	r0, r0, r3, lsl r0
  74:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
  78:	030b130e 	movweq	r1, #45838	; 0xb30e
  7c:	110e1b0e 	tstne	lr, lr, lsl #22
  80:	10011201 	andne	r1, r1, r1, lsl #4
  84:	02000006 	andeq	r0, r0, #6
  88:	0b0b0024 	bleq	2c0120 <__stack+0x2a8cd0>
  8c:	0e030b3e 	vmoveq.16	d3[0], r0
  90:	16030000 	strne	r0, [r3], -r0
  94:	3a080300 	bcc	200c9c <__stack+0x1e984c>
  98:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  9c:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
  a0:	0c3f012e 	ldfeqs	f0, [pc], #-184	; fffffff0 <CPU_ARM_BIT_CNTES_C+0x7ffffff0>
  a4:	0b3a0e03 	bleq	e838b8 <__stack+0xe6c468>
  a8:	0c27053b 	cfstr32eq	mvfx0, [r7], #-236	; 0xffffff14
  ac:	13010b20 	movwne	r0, #6944	; 0x1b20
  b0:	34050000 	strcc	r0, [r5], #-0
  b4:	3a0e0300 	bcc	380cbc <__stack+0x36986c>
  b8:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
  bc:	06000013 			; <UNDEFINED> instruction: 0x06000013
  c0:	0000010b 	andeq	r0, r0, fp, lsl #2
  c4:	3f002e07 	svccc	0x00002e07
  c8:	3a0e030c 	bcc	380d00 <__stack+0x3698b0>
  cc:	27053b0b 	strcs	r3, [r5, -fp, lsl #22]
  d0:	000b200c 	andeq	r2, fp, ip
  d4:	00050800 	andeq	r0, r5, r0, lsl #16
  d8:	0b3a0803 	bleq	e820ec <__stack+0xe6ac9c>
  dc:	1349053b 	movtne	r0, #38203	; 0x953b
  e0:	2e090000 	cdpcs	0, 0, cr0, cr9, cr0, {0}
  e4:	030c3f01 	movweq	r3, #52993	; 0xcf01
  e8:	3b0b3a0e 	blcc	2ce928 <__stack+0x2b74d8>
  ec:	110c270b 	tstne	ip, fp, lsl #14
  f0:	40011201 	andmi	r1, r1, r1, lsl #4
  f4:	0c429706 	mcrreq	7, 0, r9, r2, cr6
  f8:	00001301 	andeq	r1, r0, r1, lsl #6
  fc:	0300050a 	movweq	r0, #1290	; 0x50a
 100:	3b0b3a08 	blcc	2ce928 <__stack+0x2b74d8>
 104:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 108:	0b000006 	bleq	128 <CPU_ARM_CTRL_INT_DIS+0x68>
 10c:	08030005 	stmdaeq	r3, {r0, r2}
 110:	0b3b0b3a 	bleq	ec2e00 <__stack+0xeab9b0>
 114:	0a021349 	beq	84e40 <__stack+0x6d9f0>
 118:	340c0000 	strcc	r0, [ip], #-0
 11c:	3a0e0300 	bcc	380d24 <__stack+0x3698d4>
 120:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 124:	000b1c13 	andeq	r1, fp, r3, lsl ip
 128:	00340d00 	eorseq	r0, r4, r0, lsl #26
 12c:	0b3a0803 	bleq	e82140 <__stack+0xe6acf0>
 130:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 134:	00000602 	andeq	r0, r0, r2, lsl #12
 138:	0300340e 	movweq	r3, #1038	; 0x40e
 13c:	3b0b3a0e 	blcc	2ce97c <__stack+0x2b752c>
 140:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 144:	0f00000a 	svceq	0x0000000a
 148:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 14c:	0b3b0b3a 	bleq	ec2e3c <__stack+0xeab9ec>
 150:	0d1c1349 	ldceq	3, cr1, [ip, #-292]	; 0xfffffedc
 154:	89100000 	ldmdbhi	r0, {}	; <UNPREDICTABLE>
 158:	11000182 	smlabbne	r0, r2, r1, r0
 15c:	00133101 	andseq	r3, r3, r1, lsl #2
 160:	00261100 	eoreq	r1, r6, r0, lsl #2
 164:	00001349 	andeq	r1, r0, r9, asr #6
 168:	0b000f12 	bleq	3db8 <_HEAP_SIZE+0x1db8>
 16c:	0013490b 	andseq	r4, r3, fp, lsl #18
 170:	00351300 	eorseq	r1, r5, r0, lsl #6
 174:	00001349 	andeq	r1, r0, r9, asr #6
 178:	3f012e14 	svccc	0x00012e14
 17c:	3a0e030c 	bcc	380db4 <__stack+0x369964>
 180:	27053b0b 	strcs	r3, [r5, -fp, lsl #22]
 184:	1201110c 	andne	r1, r1, #12, 2
 188:	97064001 	strls	r4, [r6, -r1]
 18c:	13010c42 	movwne	r0, #7234	; 0x1c42
 190:	05150000 	ldreq	r0, [r5, #-0]
 194:	3a080300 	bcc	200d9c <__stack+0x1e994c>
 198:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 19c:	00060213 	andeq	r0, r6, r3, lsl r2
 1a0:	00051600 	andeq	r1, r5, r0, lsl #12
 1a4:	0b3a0803 	bleq	e821b8 <__stack+0xe6ad68>
 1a8:	1349053b 	movtne	r0, #38203	; 0x953b
 1ac:	00000a02 	andeq	r0, r0, r2, lsl #20
 1b0:	03003417 	movweq	r3, #1047	; 0x417
 1b4:	3b0b3a0e 	blcc	2ce9f4 <__stack+0x2b75a4>
 1b8:	1c134905 	ldcne	9, cr4, [r3], {5}
 1bc:	1800000b 	stmdane	r0, {r0, r1, r3}
 1c0:	08030034 	stmdaeq	r3, {r2, r4, r5}
 1c4:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 1c8:	06021349 	streq	r1, [r2], -r9, asr #6
 1cc:	34190000 	ldrcc	r0, [r9], #-0
 1d0:	3a0e0300 	bcc	380dd8 <__stack+0x369988>
 1d4:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 1d8:	000a0213 	andeq	r0, sl, r3, lsl r2
 1dc:	00341a00 	eorseq	r1, r4, r0, lsl #20
 1e0:	0b3a0e03 	bleq	e839f4 <__stack+0xe6c5a4>
 1e4:	1349053b 	movtne	r0, #38203	; 0x953b
 1e8:	00000d1c 	andeq	r0, r0, ip, lsl sp
 1ec:	3f012e1b 	svccc	0x00012e1b
 1f0:	3a0e030c 	bcc	380e28 <__stack+0x3699d8>
 1f4:	27053b0b 	strcs	r3, [r5, -fp, lsl #22]
 1f8:	1201110c 	andne	r1, r1, #12, 2
 1fc:	96064001 	strls	r4, [r6], -r1
 200:	13010c42 	movwne	r0, #7234	; 0x1c42
 204:	341c0000 	ldrcc	r0, [ip], #-0
 208:	3a0e0300 	bcc	380e10 <__stack+0x3699c0>
 20c:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 210:	00060213 	andeq	r0, r6, r3, lsl r2
 214:	010b1d00 	tsteq	fp, r0, lsl #26
 218:	01120111 	tsteq	r2, r1, lsl r1
 21c:	0b1e0000 	bleq	780224 <__stack+0x768dd4>
 220:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
 224:	00130101 	andseq	r0, r3, r1, lsl #2
 228:	012e1f00 	teqeq	lr, r0, lsl #30
 22c:	01111331 	tsteq	r1, r1, lsr r3
 230:	0a400112 	beq	1000680 <__stack+0xfe9230>
 234:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
 238:	20000013 	andcs	r0, r0, r3, lsl r0
 23c:	13310005 	teqne	r1, #5
 240:	00000602 	andeq	r0, r0, r2, lsl #12
 244:	3f012e21 	svccc	0x00012e21
 248:	3a0e030c 	bcc	380e80 <__stack+0x369a30>
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
 290:	0a020001 	beq	8029c <__stack+0x68e4c>
 294:	000a4291 	muleq	sl, r1, r2
 298:	011d2700 	tsteq	sp, r0, lsl #14
 29c:	01111331 	tsteq	r1, r1, lsr r3
 2a0:	0b580112 	bleq	16006f0 <__stack+0x15e92a0>
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
 2e0:	0b3a0e03 	bleq	e83af4 <__stack+0xe6c6a4>
 2e4:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
 2e8:	01120111 	tsteq	r2, r1, lsl r1
 2ec:	42970a40 	addsmi	r0, r7, #64, 20	; 0x40000
 2f0:	0013010c 	andseq	r0, r3, ip, lsl #2
 2f4:	011d2d00 	tsteq	sp, r0, lsl #26
 2f8:	01111331 	tsteq	r1, r1, lsr r3
 2fc:	0b580112 	bleq	160074c <__stack+0x15e92fc>
 300:	13010b59 	movwne	r0, #7001	; 0x1b59
 304:	2e2e0000 	cdpcs	0, 2, cr0, cr14, cr0, {0}
 308:	030c3f01 	movweq	r3, #52993	; 0xcf01
 30c:	3b0b3a0e 	blcc	2ceb4c <__stack+0x2b76fc>
 310:	490c270b 	stmdbmi	ip, {r0, r1, r3, r8, r9, sl, sp}
 314:	010c3c13 	tsteq	ip, r3, lsl ip
 318:	2f000013 	svccs	0x00000013
 31c:	13490005 	movtne	r0, #36869	; 0x9005
 320:	2e300000 	cdpcs	0, 3, cr0, cr0, cr0, {0}
 324:	030c3f01 	movweq	r3, #52993	; 0xcf01
 328:	3b0b3a0e 	blcc	2ceb68 <__stack+0x2b7718>
 32c:	3c0c270b 	stccc	7, cr2, [ip], {11}
 330:	0000000c 	andeq	r0, r0, ip
 334:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 338:	030b130e 	movweq	r1, #45838	; 0xb30e
 33c:	110e1b0e 	tstne	lr, lr, lsl #22
 340:	10011201 	andne	r1, r1, r1, lsl #4
 344:	02000006 	andeq	r0, r0, #6
 348:	08030016 	stmdaeq	r3, {r1, r2, r4}
 34c:	0b3b0b3a 	bleq	ec303c <__stack+0xeabbec>
 350:	00001349 	andeq	r1, r0, r9, asr #6
 354:	0b002403 	bleq	9368 <OSMboxDel+0x5c>
 358:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 35c:	0400000e 	streq	r0, [r0], #-14
 360:	0b0b0024 	bleq	2c03f8 <__stack+0x2a8fa8>
 364:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
 368:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
 36c:	030c3f01 	movweq	r3, #52993	; 0xcf01
 370:	3b0b3a0e 	blcc	2cebb0 <__stack+0x2b7760>
 374:	490c2705 	stmdbmi	ip, {r0, r2, r8, r9, sl, sp}
 378:	010b2013 	tsteq	fp, r3, lsl r0
 37c:	06000013 			; <UNDEFINED> instruction: 0x06000013
 380:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 384:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 388:	00001349 	andeq	r1, r0, r9, asr #6
 38c:	3f012e07 	svccc	0x00012e07
 390:	3a0e030c 	bcc	380fc8 <__stack+0x369b78>
 394:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 398:	010b200c 	tsteq	fp, ip
 39c:	08000013 	stmdaeq	r0, {r0, r1, r4}
 3a0:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 3a4:	0b3b0b3a 	bleq	ec3094 <__stack+0xeabc44>
 3a8:	00001349 	andeq	r1, r0, r9, asr #6
 3ac:	3f012e09 	svccc	0x00012e09
 3b0:	3a0e030c 	bcc	380fe8 <__stack+0x369b98>
 3b4:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 3b8:	2013490c 	andscs	r4, r3, ip, lsl #18
 3bc:	0013010b 	andseq	r0, r3, fp, lsl #2
 3c0:	00340a00 	eorseq	r0, r4, r0, lsl #20
 3c4:	0b3a0e03 	bleq	e83bd8 <__stack+0xe6c788>
 3c8:	1349053b 	movtne	r0, #38203	; 0x953b
 3cc:	2e0b0000 	cdpcs	0, 0, cr0, cr11, cr0, {0}
 3d0:	030c3f01 	movweq	r3, #52993	; 0xcf01
 3d4:	3b0b3a0e 	blcc	2cec14 <__stack+0x2b77c4>
 3d8:	490c270b 	stmdbmi	ip, {r0, r1, r3, r8, r9, sl, sp}
 3dc:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 3e0:	970a4001 	strls	r4, [sl, -r1]
 3e4:	13010c42 	movwne	r0, #7234	; 0x1c42
 3e8:	050c0000 	streq	r0, [ip, #-0]
 3ec:	3a0e0300 	bcc	380ff4 <__stack+0x369ba4>
 3f0:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 3f4:	00060213 	andeq	r0, r6, r3, lsl r2
 3f8:	012e0d00 	teqeq	lr, r0, lsl #26
 3fc:	01111331 	tsteq	r1, r1, lsr r3
 400:	0a400112 	beq	1000850 <__stack+0xfe9400>
 404:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
 408:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
 40c:	13310005 	teqne	r1, #5
 410:	00000602 	andeq	r0, r0, r2, lsl #12
 414:	3f012e0f 	svccc	0x00012e0f
 418:	3a0e030c 	bcc	381050 <__stack+0x369c00>
 41c:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 420:	1201110c 	andne	r1, r1, #12, 2
 424:	970a4001 	strls	r4, [sl, -r1]
 428:	13010c42 	movwne	r0, #7234	; 0x1c42
 42c:	05100000 	ldreq	r0, [r0, #-0]
 430:	3a0e0300 	bcc	381038 <__stack+0x369be8>
 434:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 438:	000a0213 	andeq	r0, sl, r3, lsl r2
 43c:	00051100 	andeq	r1, r5, r0, lsl #2
 440:	0a021331 	beq	8510c <__stack+0x6dcbc>
 444:	34120000 	ldrcc	r0, [r2], #-0
 448:	3a0e0300 	bcc	381050 <__stack+0x369c00>
 44c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 450:	13000013 	movwne	r0, #19
 454:	1331011d 	teqne	r1, #1073741831	; 0x40000007
 458:	01120111 	tsteq	r2, r1, lsl r1
 45c:	0b590b58 	bleq	16431c4 <__stack+0x162bd74>
 460:	00001301 	andeq	r1, r0, r1, lsl #6
 464:	31011d14 	tstcc	r1, r4, lsl sp
 468:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 46c:	590b5801 	stmdbpl	fp, {r0, fp, ip, lr}
 470:	1500000b 	strne	r0, [r0, #-11]
 474:	0c3f012e 	ldfeqs	f0, [pc], #-184	; 3c4 <CPU_ARM_CTRL_INT_DIS+0x304>
 478:	0b3a0e03 	bleq	e83c8c <__stack+0xe6c83c>
 47c:	0c27053b 	cfstr32eq	mvfx0, [r7], #-236	; 0xffffff14
 480:	01111349 	tsteq	r1, r9, asr #6
 484:	0a400112 	beq	10008d4 <__stack+0xfe9484>
 488:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
 48c:	16000013 			; <UNDEFINED> instruction: 0x16000013
 490:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 494:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 498:	06021349 	streq	r1, [r2], -r9, asr #6
 49c:	34170000 	ldrcc	r0, [r7], #-0
 4a0:	3a0e0300 	bcc	3810a8 <__stack+0x369c58>
 4a4:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 4a8:	000a0213 	andeq	r0, sl, r3, lsl r2
 4ac:	011d1800 	tsteq	sp, r0, lsl #16
 4b0:	01111331 	tsteq	r1, r1, lsr r3
 4b4:	0b580112 	bleq	1600904 <__stack+0x15e94b4>
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
 4ec:	0a400112 	beq	100093c <__stack+0xfe94ec>
 4f0:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
 4f4:	1d000013 	stcne	0, cr0, [r0, #-76]	; 0xffffffb4
 4f8:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 4fc:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 500:	0a021349 	beq	8522c <__stack+0x6dddc>
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
 538:	0b3e0b0b 	bleq	f8316c <__stack+0xf6bd1c>
 53c:	00000803 	andeq	r0, r0, r3, lsl #16
 540:	0b000f04 	bleq	4158 <_HEAP_SIZE+0x2158>
 544:	0500000b 	streq	r0, [r0, #-11]
 548:	0b0b000f 	bleq	2c058c <__stack+0x2a913c>
 54c:	00001349 	andeq	r1, r0, r9, asr #6
 550:	49002606 	stmdbmi	r0, {r1, r2, r9, sl, sp}
 554:	07000013 	smladeq	r0, r3, r0, r0
 558:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 55c:	0b3b0b3a 	bleq	ec324c <__stack+0xeabdfc>
 560:	00001349 	andeq	r1, r0, r9, asr #6
 564:	03011308 	movweq	r1, #4872	; 0x1308
 568:	3a0b0b0e 	bcc	2c31a8 <__stack+0x2abd58>
 56c:	010b3b0b 	tsteq	fp, fp, lsl #22
 570:	09000013 	stmdbeq	r0, {r0, r1, r4}
 574:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
 578:	0a381349 	beq	e052a4 <__stack+0xdede54>
 57c:	00000c34 	andeq	r0, r0, r4, lsr ip
 580:	03000d0a 	movweq	r0, #3338	; 0xd0a
 584:	3b0b3a08 	blcc	2cedac <__stack+0x2b795c>
 588:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
 58c:	0b00000a 	bleq	5bc <_ABORT_STACK_SIZE+0x1bc>
 590:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
 594:	0b3b0b3a 	bleq	ec3284 <__stack+0xeabe34>
 598:	0a381349 	beq	e052c4 <__stack+0xdede74>
 59c:	2e0c0000 	cdpcs	0, 0, cr0, cr12, cr0, {0}
 5a0:	3a0e0301 	bcc	3811ac <__stack+0x369d5c>
 5a4:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 5a8:	010b200c 	tsteq	fp, ip
 5ac:	0d000013 	stceq	0, cr0, [r0, #-76]	; 0xffffffb4
 5b0:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 5b4:	0b3b0b3a 	bleq	ec32a4 <__stack+0xeabe54>
 5b8:	00001349 	andeq	r1, r0, r9, asr #6
 5bc:	0300050e 	movweq	r0, #1294	; 0x50e
 5c0:	3b0b3a08 	blcc	2cede8 <__stack+0x2b7998>
 5c4:	0013490b 	andseq	r4, r3, fp, lsl #18
 5c8:	00340f00 	eorseq	r0, r4, r0, lsl #30
 5cc:	0b3a0803 	bleq	e825e0 <__stack+0xe6b190>
 5d0:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 5d4:	2e100000 	cdpcs	0, 1, cr0, cr0, cr0, {0}
 5d8:	3a0e0301 	bcc	3811e4 <__stack+0x369d94>
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
 614:	0b590b58 	bleq	164337c <__stack+0x162bf2c>
 618:	0b150000 	bleq	540620 <__stack+0x5291d0>
 61c:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
 620:	16000001 	strne	r0, [r0], -r1
 624:	13310034 	teqne	r1, #52	; 0x34
 628:	00000a02 	andeq	r0, r0, r2, lsl #20
 62c:	31000517 	tstcc	r0, r7, lsl r5
 630:	18000013 	stmdane	r0, {r0, r1, r4}
 634:	00018289 	andeq	r8, r1, r9, lsl #5
 638:	13310111 	teqne	r1, #1073741828	; 0x40000004
 63c:	2e190000 	cdpcs	0, 1, cr0, cr9, cr0, {0}
 640:	3a0e0301 	bcc	38124c <__stack+0x369dfc>
 644:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 648:	1201110c 	andne	r1, r1, #12, 2
 64c:	96064001 	strls	r4, [r6], -r1
 650:	13010c42 	movwne	r0, #7234	; 0x1c42
 654:	051a0000 	ldreq	r0, [sl, #-0]
 658:	3a080300 	bcc	201260 <__stack+0x1e9e10>
 65c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 660:	00060213 	andeq	r0, r6, r3, lsl r2
 664:	00051b00 	andeq	r1, r5, r0, lsl #22
 668:	0b3a0e03 	bleq	e83e7c <__stack+0xe6ca2c>
 66c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 670:	00000602 	andeq	r0, r0, r2, lsl #12
 674:	0300341c 	movweq	r3, #1052	; 0x41c
 678:	3b0b3a08 	blcc	2ceea0 <__stack+0x2b7a50>
 67c:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 680:	1d000006 	stcne	0, cr0, [r0, #-24]	; 0xffffffe8
 684:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 688:	0b3b0b3a 	bleq	ec3378 <__stack+0xeabf28>
 68c:	0a021349 	beq	853b8 <__stack+0x6df68>
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
 6cc:	3a0e030c 	bcc	381304 <__stack+0x369eb4>
 6d0:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 6d4:	1201110c 	andne	r1, r1, #12, 2
 6d8:	97064001 	strls	r4, [r6, -r1]
 6dc:	13010c42 	movwne	r0, #7234	; 0x1c42
 6e0:	05240000 	streq	r0, [r4, #-0]!
 6e4:	3a0e0300 	bcc	3812ec <__stack+0x369e9c>
 6e8:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 6ec:	000a0213 	andeq	r0, sl, r3, lsl r2
 6f0:	00182500 	andseq	r2, r8, r0, lsl #10
 6f4:	34260000 	strtcc	r0, [r6], #-0
 6f8:	3a0e0300 	bcc	381300 <__stack+0x369eb0>
 6fc:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 700:	00060213 	andeq	r0, r6, r3, lsl r2
 704:	00342700 	eorseq	r2, r4, r0, lsl #14
 708:	0b3a0803 	bleq	e8271c <__stack+0xe6b2cc>
 70c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 710:	00000a02 	andeq	r0, r0, r2, lsl #20
 714:	03000a28 	movweq	r0, #2600	; 0xa28
 718:	3b0b3a0e 	blcc	2cef58 <__stack+0x2b7b08>
 71c:	2900000b 	stmdbcs	r0, {r0, r1, r3}
 720:	1331011d 	teqne	r1, #1073741831	; 0x40000007
 724:	01120111 	tsteq	r2, r1, lsl r1
 728:	0b590b58 	bleq	1643490 <__stack+0x162c040>
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
 754:	0b590b58 	bleq	16434bc <__stack+0x162c06c>
 758:	00001301 	andeq	r1, r0, r1, lsl #6
 75c:	0300342e 	movweq	r3, #1070	; 0x42e
 760:	3b0b3a0e 	blcc	2cefa0 <__stack+0x2b7b50>
 764:	3f13490b 	svccc	0x0013490b
 768:	000c3c0c 	andeq	r3, ip, ip, lsl #24
 76c:	012e2f00 	teqeq	lr, r0, lsl #30
 770:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 774:	0b3b0b3a 	bleq	ec3464 <__stack+0xeac014>
 778:	0c3c0c27 	ldceq	12, cr0, [ip], #-156	; 0xffffff64
 77c:	00001301 	andeq	r1, r0, r1, lsl #6
 780:	49000530 	stmdbmi	r0, {r4, r5, r8, sl}
 784:	31000013 	tstcc	r0, r3, lsl r0
 788:	0c3f012e 	ldfeqs	f0, [pc], #-184	; 6d8 <_ABORT_STACK_SIZE+0x2d8>
 78c:	0b3a0e03 	bleq	e83fa0 <__stack+0xe6cb50>
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
 7bc:	0b3a0803 	bleq	e827d0 <__stack+0xe6b380>
 7c0:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 7c4:	0f040000 	svceq	0x00040000
 7c8:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 7cc:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
 7d0:	13490026 	movtne	r0, #36902	; 0x9026
 7d4:	24060000 	strcs	r0, [r6], #-0
 7d8:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 7dc:	0008030b 	andeq	r0, r8, fp, lsl #6
 7e0:	01130700 	tsteq	r3, r0, lsl #14
 7e4:	0b3a0b0b 	bleq	e83418 <__stack+0xe6bfc8>
 7e8:	1301053b 	movwne	r0, #5435	; 0x153b
 7ec:	0d080000 	stceq	0, cr0, [r8, #-0]
 7f0:	3a0e0300 	bcc	3813f8 <__stack+0x369fa8>
 7f4:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 7f8:	000a3813 	andeq	r3, sl, r3, lsl r8
 7fc:	00160900 	andseq	r0, r6, r0, lsl #18
 800:	0b3a0e03 	bleq	e84014 <__stack+0xe6cbc4>
 804:	1349053b 	movtne	r0, #38203	; 0x953b
 808:	150a0000 	strne	r0, [sl, #-0]
 80c:	010c2701 	tsteq	ip, r1, lsl #14
 810:	0b000013 	bleq	864 <_SUPERVISOR_STACK_SIZE+0x64>
 814:	13490005 	movtne	r0, #36869	; 0x9005
 818:	0f0c0000 	svceq	0x000c0000
 81c:	000b0b00 	andeq	r0, fp, r0, lsl #22
 820:	012e0d00 	teqeq	lr, r0, lsl #26
 824:	0b3a0e03 	bleq	e84038 <__stack+0xe6cbe8>
 828:	0c27053b 	cfstr32eq	mvfx0, [r7], #-236	; 0xffffff14
 82c:	01120111 	tsteq	r2, r1, lsl r1
 830:	42970640 	addsmi	r0, r7, #64, 12	; 0x4000000
 834:	0013010c 	andseq	r0, r3, ip, lsl #2
 838:	00050e00 	andeq	r0, r5, r0, lsl #28
 83c:	0b3a0e03 	bleq	e84050 <__stack+0xe6cc00>
 840:	1349053b 	movtne	r0, #38203	; 0x953b
 844:	00000602 	andeq	r0, r0, r2, lsl #12
 848:	0182890f 	orreq	r8, r2, pc, lsl #18
 84c:	31011101 	tstcc	r1, r1, lsl #2
 850:	10000013 	andne	r0, r0, r3, lsl r0
 854:	0001828a 	andeq	r8, r1, sl, lsl #5
 858:	42910a02 	addsmi	r0, r1, #8192	; 0x2000
 85c:	1100000a 	tstne	r0, sl
 860:	0c3f012e 	ldfeqs	f0, [pc], #-184	; 7b0 <_ABORT_STACK_SIZE+0x3b0>
 864:	0b3a0e03 	bleq	e84078 <__stack+0xe6cc28>
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
 898:	0b3a0e03 	bleq	e840ac <__stack+0xe6cc5c>
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
 8c4:	0b3a0e03 	bleq	e840d8 <__stack+0xe6cc88>
 8c8:	0c27053b 	cfstr32eq	mvfx0, [r7], #-236	; 0xffffff14
 8cc:	01111349 	tsteq	r1, r9, asr #6
 8d0:	06400112 			; <UNDEFINED> instruction: 0x06400112
 8d4:	010c4296 			; <UNDEFINED> instruction: 0x010c4296
 8d8:	18000013 	stmdane	r0, {r0, r1, r4}
 8dc:	0c3f012e 	ldfeqs	f0, [pc], #-184	; 82c <_SUPERVISOR_STACK_SIZE+0x2c>
 8e0:	0b3a0e03 	bleq	e840f4 <__stack+0xe6cca4>
 8e4:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
 8e8:	01111349 	tsteq	r1, r9, asr #6
 8ec:	06400112 			; <UNDEFINED> instruction: 0x06400112
 8f0:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
 8f4:	19000013 	stmdbne	r0, {r0, r1, r4}
 8f8:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 8fc:	0b3b0b3a 	bleq	ec35ec <__stack+0xeac19c>
 900:	06021349 	streq	r1, [r2], -r9, asr #6
 904:	341a0000 	ldrcc	r0, [sl], #-0
 908:	3a0e0300 	bcc	381510 <__stack+0x36a0c0>
 90c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 910:	00060213 	andeq	r0, r6, r3, lsl r2
 914:	00341b00 	eorseq	r1, r4, r0, lsl #22
 918:	0b3a0e03 	bleq	e8412c <__stack+0xe6ccdc>
 91c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 920:	0c3c0c3f 	ldceq	12, cr0, [ip], #-252	; 0xffffff04
 924:	2e1c0000 	cdpcs	0, 1, cr0, cr12, cr0, {0}
 928:	030c3f01 	movweq	r3, #52993	; 0xcf01
 92c:	3b0b3a0e 	blcc	2cf16c <__stack+0x2b7d1c>
 930:	3c0c270b 	stccc	7, cr2, [ip], {11}
 934:	0013010c 	andseq	r0, r3, ip, lsl #2
 938:	012e1d00 	teqeq	lr, r0, lsl #26
 93c:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 940:	0b3b0b3a 	bleq	ec3630 <__stack+0xeac1e0>
 944:	13490c27 	movtne	r0, #39975	; 0x9c27
 948:	00000c3c 	andeq	r0, r0, ip, lsr ip
 94c:	01110100 	tsteq	r1, r0, lsl #2
 950:	0b130e25 	bleq	4c41ec <__stack+0x4acd9c>
 954:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 958:	01120111 	tsteq	r2, r1, lsl r1
 95c:	00000610 	andeq	r0, r0, r0, lsl r6
 960:	0b002402 	bleq	9970 <OSMemNameGet+0x58>
 964:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 968:	0300000e 	movweq	r0, #14
 96c:	08030016 	stmdaeq	r3, {r1, r2, r4}
 970:	0b3b0b3a 	bleq	ec3660 <__stack+0xeac210>
 974:	00001349 	andeq	r1, r0, r9, asr #6
 978:	0b002404 	bleq	9990 <OSMemNameSet+0x14>
 97c:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 980:	05000008 	streq	r0, [r0, #-8]
 984:	0b0b0113 	bleq	2c0dd8 <__stack+0x2a9988>
 988:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 98c:	00001301 	andeq	r1, r0, r1, lsl #6
 990:	03000d06 	movweq	r0, #3334	; 0xd06
 994:	3b0b3a0e 	blcc	2cf1d4 <__stack+0x2b7d84>
 998:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
 99c:	0700000a 	streq	r0, [r0, -sl]
 9a0:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 9a4:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 9a8:	00001349 	andeq	r1, r0, r9, asr #6
 9ac:	3f012e08 	svccc	0x00012e08
 9b0:	3a0e030c 	bcc	3815e8 <__stack+0x36a198>
 9b4:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 9b8:	1113490c 	tstne	r3, ip, lsl #18
 9bc:	40011201 	andmi	r1, r1, r1, lsl #4
 9c0:	0c42970a 	mcrreq	7, 0, r9, r2, cr10
 9c4:	00001301 	andeq	r1, r0, r1, lsl #6
 9c8:	03000509 	movweq	r0, #1289	; 0x509
 9cc:	3b0b3a0e 	blcc	2cf20c <__stack+0x2b7dbc>
 9d0:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 9d4:	0a000006 	beq	9f4 <_SUPERVISOR_STACK_SIZE+0x1f4>
 9d8:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 9dc:	0b3b0b3a 	bleq	ec36cc <__stack+0xeac27c>
 9e0:	06021349 	streq	r1, [r2], -r9, asr #6
 9e4:	340b0000 	strcc	r0, [fp], #-0
 9e8:	3a0e0300 	bcc	3815f0 <__stack+0x36a1a0>
 9ec:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 9f0:	000b1c13 	andeq	r1, fp, r3, lsl ip
 9f4:	000f0c00 	andeq	r0, pc, r0, lsl #24
 9f8:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 9fc:	010d0000 	mrseq	r0, (UNDEF: 13)
 a00:	01134901 	tsteq	r3, r1, lsl #18
 a04:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
 a08:	00000021 	andeq	r0, r0, r1, lsr #32
 a0c:	0300340f 	movweq	r3, #1039	; 0x40f
 a10:	3b0b3a0e 	blcc	2cf250 <__stack+0x2b7e00>
 a14:	3f13490b 	svccc	0x0013490b
 a18:	000c3c0c 	andeq	r3, ip, ip, lsl #24
 a1c:	11010000 	mrsne	r0, (UNDEF: 1)
 a20:	130e2501 	movwne	r2, #58625	; 0xe501
 a24:	1b0e030b 	blne	381658 <__stack+0x36a208>
 a28:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 a2c:	00061001 	andeq	r1, r6, r1
 a30:	00160200 	andseq	r0, r6, r0, lsl #4
 a34:	0b3a0803 	bleq	e82a48 <__stack+0xe6b5f8>
 a38:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 a3c:	24030000 	strcs	r0, [r3], #-0
 a40:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 a44:	000e030b 	andeq	r0, lr, fp, lsl #6
 a48:	00240400 	eoreq	r0, r4, r0, lsl #8
 a4c:	0b3e0b0b 	bleq	f83680 <__stack+0xf6c230>
 a50:	00000803 	andeq	r0, r0, r3, lsl #16
 a54:	3f012e05 	svccc	0x00012e05
 a58:	3a0e030c 	bcc	381690 <__stack+0x36a240>
 a5c:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 a60:	1201110c 	andne	r1, r1, #12, 2
 a64:	970a4001 	strls	r4, [sl, -r1]
 a68:	13010c42 	movwne	r0, #7234	; 0x1c42
 a6c:	05060000 	streq	r0, [r6, #-0]
 a70:	3a080300 	bcc	201678 <__stack+0x1ea228>
 a74:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 a78:	00060213 	andeq	r0, r6, r3, lsl r2
 a7c:	82890700 	addhi	r0, r9, #0, 14
 a80:	01110001 	tsteq	r1, r1
 a84:	310c4295 			; <UNDEFINED> instruction: 0x310c4295
 a88:	08000013 	stmdaeq	r0, {r0, r1, r4}
 a8c:	0c3f012e 	ldfeqs	f0, [pc], #-184	; 9dc <_SUPERVISOR_STACK_SIZE+0x1dc>
 a90:	0b3a0e03 	bleq	e842a4 <__stack+0xe6ce54>
 a94:	0c27053b 	cfstr32eq	mvfx0, [r7], #-236	; 0xffffff14
 a98:	00000c3c 	andeq	r0, r0, ip, lsr ip
 a9c:	49000509 	stmdbmi	r0, {r0, r3, r8, sl}
 aa0:	00000013 	andeq	r0, r0, r3, lsl r0
 aa4:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 aa8:	030b130e 	movweq	r1, #45838	; 0xb30e
 aac:	110e1b0e 	tstne	lr, lr, lsl #22
 ab0:	10011201 	andne	r1, r1, r1, lsl #4
 ab4:	02000006 	andeq	r0, r0, #6
 ab8:	0b0b0024 	bleq	2c0b50 <__stack+0x2a9700>
 abc:	0e030b3e 	vmoveq.16	d3[0], r0
 ac0:	16030000 	strne	r0, [r3], -r0
 ac4:	3a0e0300 	bcc	3816cc <__stack+0x36a27c>
 ac8:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 acc:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
 ad0:	0b0b000f 	bleq	2c0b14 <__stack+0x2a96c4>
 ad4:	00001349 	andeq	r1, r0, r9, asr #6
 ad8:	27011505 	strcs	r1, [r1, -r5, lsl #10]
 adc:	0013010c 	andseq	r0, r3, ip, lsl #2
 ae0:	00050600 	andeq	r0, r5, r0, lsl #12
 ae4:	00001349 	andeq	r1, r0, r9, asr #6
 ae8:	49002607 	stmdbmi	r0, {r0, r1, r2, r9, sl, sp}
 aec:	08000013 	stmdaeq	r0, {r0, r1, r4}
 af0:	0b0b0024 	bleq	2c0b88 <__stack+0x2a9738>
 af4:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
 af8:	2e090000 	cdpcs	0, 0, cr0, cr9, cr0, {0}
 afc:	030c3f01 	movweq	r3, #52993	; 0xcf01
 b00:	3b0b3a0e 	blcc	2cf340 <__stack+0x2b7ef0>
 b04:	110c270b 	tstne	ip, fp, lsl #14
 b08:	40011201 	andmi	r1, r1, r1, lsl #4
 b0c:	0c429706 	mcrreq	7, 0, r9, r2, cr6
 b10:	00001301 	andeq	r1, r0, r1, lsl #6
 b14:	0300050a 	movweq	r0, #1290	; 0x50a
 b18:	3b0b3a0e 	blcc	2cf358 <__stack+0x2b7f08>
 b1c:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 b20:	0b000006 	bleq	b40 <_SUPERVISOR_STACK_SIZE+0x340>
 b24:	01018289 	smlabbeq	r1, r9, r2, r8
 b28:	00000111 	andeq	r0, r0, r1, lsl r1
 b2c:	01828a0c 	orreq	r8, r2, ip, lsl #20
 b30:	910a0200 	mrsls	r0, R10_fiq
 b34:	00000a42 	andeq	r0, r0, r2, asr #20
 b38:	3f012e0d 	svccc	0x00012e0d
 b3c:	3a0e030c 	bcc	381774 <__stack+0x36a324>
 b40:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 b44:	1201110c 	andne	r1, r1, #12, 2
 b48:	970a4001 	strls	r4, [sl, -r1]
 b4c:	13010c42 	movwne	r0, #7234	; 0x1c42
 b50:	050e0000 	streq	r0, [lr, #-0]
 b54:	3a0e0300 	bcc	38175c <__stack+0x36a30c>
 b58:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 b5c:	000a0213 	andeq	r0, sl, r3, lsl r2
 b60:	00340f00 	eorseq	r0, r4, r0, lsl #30
 b64:	0b3a0e03 	bleq	e84378 <__stack+0xe6cf28>
 b68:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 b6c:	00000a02 	andeq	r0, r0, r2, lsl #20
 b70:	03003410 	movweq	r3, #1040	; 0x410
 b74:	3b0b3a0e 	blcc	2cf3b4 <__stack+0x2b7f64>
 b78:	3f13490b 	svccc	0x0013490b
 b7c:	000a020c 	andeq	r0, sl, ip, lsl #4
 b80:	11010000 	mrsne	r0, (UNDEF: 1)
 b84:	130e2501 	movwne	r2, #58625	; 0xe501
 b88:	1b0e030b 	blne	3817bc <__stack+0x36a36c>
 b8c:	0006100e 	andeq	r1, r6, lr
 b90:	00240200 	eoreq	r0, r4, r0, lsl #4
 b94:	0b3e0b0b 	bleq	f837c8 <__stack+0xf6c378>
 b98:	00000e03 	andeq	r0, r0, r3, lsl #28
 b9c:	03001603 	movweq	r1, #1539	; 0x603
 ba0:	3b0b3a08 	blcc	2cf3c8 <__stack+0x2b7f78>
 ba4:	0013490b 	andseq	r4, r3, fp, lsl #18
 ba8:	00240400 	eoreq	r0, r4, r0, lsl #8
 bac:	0b3e0b0b 	bleq	f837e0 <__stack+0xf6c390>
 bb0:	00000803 	andeq	r0, r0, r3, lsl #16
 bb4:	0b011305 	bleq	457d0 <__stack+0x2e380>
 bb8:	3b0b3a0b 	blcc	2cf3ec <__stack+0x2b7f9c>
 bbc:	00130105 	andseq	r0, r3, r5, lsl #2
 bc0:	000d0600 	andeq	r0, sp, r0, lsl #12
 bc4:	0b3a0e03 	bleq	e843d8 <__stack+0xe6cf88>
 bc8:	1349053b 	movtne	r0, #38203	; 0x953b
 bcc:	00000a38 	andeq	r0, r0, r8, lsr sl
 bd0:	03001607 	movweq	r1, #1543	; 0x607
 bd4:	3b0b3a0e 	blcc	2cf414 <__stack+0x2b7fc4>
 bd8:	00134905 	andseq	r4, r3, r5, lsl #18
 bdc:	01010800 	tsteq	r1, r0, lsl #16
 be0:	13011349 	movwne	r1, #4937	; 0x1349
 be4:	21090000 	mrscs	r0, (UNDEF: 9)
 be8:	2f134900 	svccs	0x00134900
 bec:	0a00000b 	beq	c20 <_SUPERVISOR_STACK_SIZE+0x420>
 bf0:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 bf4:	0b3b0b3a 	bleq	ec38e4 <__stack+0xeac494>
 bf8:	0c3f1349 	ldceq	3, cr1, [pc], #-292	; adc <_SUPERVISOR_STACK_SIZE+0x2dc>
 bfc:	00000a02 	andeq	r0, r0, r2, lsl #20
 c00:	01110100 	tsteq	r1, r0, lsl #2
 c04:	0b130e25 	bleq	4c44a0 <__stack+0x4ad050>
 c08:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 c0c:	01120111 	tsteq	r2, r1, lsl r1
 c10:	00000610 	andeq	r0, r0, r0, lsl r6
 c14:	03001602 	movweq	r1, #1538	; 0x602
 c18:	3b0b3a08 	blcc	2cf440 <__stack+0x2b7ff0>
 c1c:	0013490b 	andseq	r4, r3, fp, lsl #18
 c20:	00240300 	eoreq	r0, r4, r0, lsl #6
 c24:	0b3e0b0b 	bleq	f83858 <__stack+0xf6c408>
 c28:	00000e03 	andeq	r0, r0, r3, lsl #28
 c2c:	0b002404 	bleq	9c44 <OSMutexAccept+0xc8>
 c30:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 c34:	05000008 	streq	r0, [r0, #-8]
 c38:	0c3f012e 	ldfeqs	f0, [pc], #-184	; b88 <_SUPERVISOR_STACK_SIZE+0x388>
 c3c:	0b3a0e03 	bleq	e84450 <__stack+0xe6d000>
 c40:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
 c44:	01120111 	tsteq	r2, r1, lsl r1
 c48:	42970640 	addsmi	r0, r7, #64, 12	; 0x4000000
 c4c:	0013010c 	andseq	r0, r3, ip, lsl #2
 c50:	00050600 	andeq	r0, r5, r0, lsl #12
 c54:	0b3a0e03 	bleq	e84468 <__stack+0xe6d018>
 c58:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 c5c:	00000602 	andeq	r0, r0, r2, lsl #12
 c60:	01828907 	orreq	r8, r2, r7, lsl #18
 c64:	31011101 	tstcc	r1, r1, lsl #2
 c68:	00130113 	andseq	r0, r3, r3, lsl r1
 c6c:	828a0800 	addhi	r0, sl, #0, 16
 c70:	0a020001 	beq	80c7c <__stack+0x6982c>
 c74:	000a4291 	muleq	sl, r1, r2
 c78:	82890900 	addhi	r0, r9, #0, 18
 c7c:	01110101 	tsteq	r1, r1, lsl #2
 c80:	310c4295 			; <UNDEFINED> instruction: 0x310c4295
 c84:	0a000013 	beq	cd8 <_SUPERVISOR_STACK_SIZE+0x4d8>
 c88:	0c3f012e 	ldfeqs	f0, [pc], #-184	; bd8 <_SUPERVISOR_STACK_SIZE+0x3d8>
 c8c:	0b3a0e03 	bleq	e844a0 <__stack+0xe6d050>
 c90:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
 c94:	01111349 	tsteq	r1, r9, asr #6
 c98:	06400112 			; <UNDEFINED> instruction: 0x06400112
 c9c:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
 ca0:	0b000013 	bleq	cf4 <_SUPERVISOR_STACK_SIZE+0x4f4>
 ca4:	01018289 	smlabbeq	r1, r9, r2, r8
 ca8:	13310111 	teqne	r1, #1073741828	; 0x40000004
 cac:	2e0c0000 	cdpcs	0, 0, cr0, cr12, cr0, {0}
 cb0:	030c3f01 	movweq	r3, #52993	; 0xcf01
 cb4:	3b0b3a0e 	blcc	2cf4f4 <__stack+0x2b80a4>
 cb8:	490c270b 	stmdbmi	ip, {r0, r1, r3, r8, r9, sl, sp}
 cbc:	010c3c13 	tsteq	ip, r3, lsl ip
 cc0:	0d000013 	stceq	0, cr0, [r0, #-76]	; 0xffffffb4
 cc4:	13490005 	movtne	r0, #36869	; 0x9005
 cc8:	2e0e0000 	cdpcs	0, 0, cr0, cr14, cr0, {0}
 ccc:	030c3f01 	movweq	r3, #52993	; 0xcf01
 cd0:	3b0b3a0e 	blcc	2cf510 <__stack+0x2b80c0>
 cd4:	3c0c270b 	stccc	7, cr2, [ip], {11}
 cd8:	0000000c 	andeq	r0, r0, ip
 cdc:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 ce0:	030b130e 	movweq	r1, #45838	; 0xb30e
 ce4:	110e1b0e 	tstne	lr, lr, lsl #22
 ce8:	10011201 	andne	r1, r1, r1, lsl #4
 cec:	02000006 	andeq	r0, r0, #6
 cf0:	0b0b0024 	bleq	2c0d88 <__stack+0x2a9938>
 cf4:	0e030b3e 	vmoveq.16	d3[0], r0
 cf8:	24030000 	strcs	r0, [r3], #-0
 cfc:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 d00:	0008030b 	andeq	r0, r8, fp, lsl #6
 d04:	012e0400 	teqeq	lr, r0, lsl #8
 d08:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 d0c:	0b3b0b3a 	bleq	ec39fc <__stack+0xeac5ac>
 d10:	01110c27 	tsteq	r1, r7, lsr #24
 d14:	0a400112 	beq	1001164 <__stack+0xfe9d14>
 d18:	000c4297 	muleq	ip, r7, r2
 d1c:	00050500 	andeq	r0, r5, r0, lsl #10
 d20:	0b3a0e03 	bleq	e84534 <__stack+0xe6d0e4>
 d24:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 d28:	00000a02 	andeq	r0, r0, r2, lsl #20
	...

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
     fd0:	5b510001 	blpl	1440fdc <__stack+0x1429b8c>
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
    1438:	6b520001 	blvs	1481444 <__stack+0x1469ff4>
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
    16d8:	1b25f700 	blne	97f2e0 <__stack+0x967e90>
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
    1934:	1b500001 	blne	1401940 <__stack+0x13ea4f0>
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
    1a04:	00000000 	andeq	r0, r0, r0
    1a08:	Address 0x00001a08 is out of bounds.


Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	0000e018 	andeq	lr, r0, r8, lsl r0
  14:	00000028 	andeq	r0, r0, r8, lsr #32
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	00760002 	rsbseq	r0, r6, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	0000e040 	andeq	lr, r0, r0, asr #32
  34:	00000708 	andeq	r0, r0, r8, lsl #14
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	0db00002 	ldceq	0, cr0, [r0, #8]!
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	0000e748 	andeq	lr, r0, r8, asr #14
  54:	00000100 	andeq	r0, r0, r0, lsl #2
	...
  60:	0000001c 	andeq	r0, r0, ip, lsl r0
  64:	12760002 	rsbsne	r0, r6, #2
  68:	00040000 	andeq	r0, r4, r0
  6c:	00000000 	andeq	r0, r0, r0
  70:	0000e848 	andeq	lr, r0, r8, asr #16
  74:	000005f4 	strdeq	r0, [r0], -r4
	...
  80:	0000001c 	andeq	r0, r0, ip, lsl r0
  84:	17e10002 	strbne	r0, [r1, r2]!
  88:	00040000 	andeq	r0, r4, r0
  8c:	00000000 	andeq	r0, r0, r0
  90:	0000ee3c 	andeq	lr, r0, ip, lsr lr
  94:	000005fc 	strdeq	r0, [r0], -ip
	...
  a0:	0000001c 	andeq	r0, r0, ip, lsl r0
  a4:	1ff40002 	svcne	0x00f40002
  a8:	00040000 	andeq	r0, r4, r0
  ac:	00000000 	andeq	r0, r0, r0
  b0:	0000f438 	andeq	pc, r0, r8, lsr r4	; <UNPREDICTABLE>
  b4:	0000001c 	andeq	r0, r0, ip, lsl r0
	...
  c0:	0000001c 	andeq	r0, r0, ip, lsl r0
  c4:	212e0002 	teqcs	lr, r2
  c8:	00040000 	andeq	r0, r4, r0
  cc:	00000000 	andeq	r0, r0, r0
  d0:	0000f454 	andeq	pc, r0, r4, asr r4	; <UNPREDICTABLE>
  d4:	00000010 	andeq	r0, r0, r0, lsl r0
	...
  e0:	0000001c 	andeq	r0, r0, ip, lsl r0
  e4:	21ef0002 	mvncs	r0, r2
  e8:	00040000 	andeq	r0, r4, r0
  ec:	00000000 	andeq	r0, r0, r0
  f0:	0000f464 	andeq	pc, r0, r4, ror #8
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
 128:	0000f4a8 	andeq	pc, r0, r8, lsr #9
 12c:	0000005c 	andeq	r0, r0, ip, asr r0
	...
 138:	0000001c 	andeq	r0, r0, ip, lsl r0
 13c:	25830002 	strcs	r0, [r3, #2]
 140:	00040000 	andeq	r0, r4, r0
 144:	00000000 	andeq	r0, r0, r0
 148:	0000fadc 	ldrdeq	pc, [r0], -ip
 14c:	00000004 	andeq	r0, r0, r4
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
  28:	18020500 	stmdane	r2, {r8, sl}
  2c:	030000e0 	movweq	r0, #224	; 0xe0
  30:	2f2e0117 	svccs	0x002e0117
  34:	08022d67 	stmdaeq	r2, {r0, r1, r2, r5, r6, r8, sl, fp, sp}
  38:	cf010100 	svcgt	0x00010100
  3c:	02000002 	andeq	r0, r0, #2
  40:	00003d00 	andeq	r3, r0, r0, lsl #26
  44:	fb010200 	blx	4084e <__stack+0x293fe>
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
  84:	00e04002 	rsceq	r4, r0, r2
  88:	01a90300 			; <UNDEFINED> instruction: 0x01a90300
  8c:	79031901 	stmdbvc	r3, {r0, r8, fp, ip}
  90:	3232352e 	eorscc	r3, r2, #192937984	; 0xb800000
  94:	0330312b 	teqeq	r0, #-1073741814	; 0xc000000a
  98:	78034a0b 	stmdavc	r3, {r0, r1, r3, r9, fp, lr}
  9c:	032f364a 	teqeq	pc, #77594624	; 0x4a00000
  a0:	11032e74 	tstne	r3, r4, ror lr
  a4:	0402004a 	streq	r0, [r2], #-74	; 0xffffffb6
  a8:	02003101 	andeq	r3, r0, #1073741824	; 0x40000000
  ac:	4b680104 	blmi	1a004c4 <__stack+0x19e9074>
  b0:	192e3803 	stmdbne	lr!, {r0, r1, fp, ip, sp}
  b4:	352e7903 	strcc	r7, [lr, #-2307]!	; 0xfffff6fd
  b8:	312b3232 	teqcc	fp, r2, lsr r2
  bc:	4a0b0330 	bmi	2c0d84 <__stack+0x2a9934>
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
 13c:	4a7f8803 	bmi	1fe2150 <__stack+0x1fcad00>
 140:	314f3333 	cmpcc	pc, r3, lsr r3	; <UNPREDICTABLE>
 144:	00f70330 	rscseq	r0, r7, r0, lsr r3
 148:	4c4b134a 	mcrrmi	3, 4, r1, fp, cr10
 14c:	164a1403 	strbne	r1, [sl], -r3, lsl #8
 150:	312b324e 	teqcc	fp, lr, asr #4
 154:	03364c30 	teqeq	r6, #48, 24	; 0x3000
 158:	0f032e76 	svceq	0x00032e76
 15c:	4a10034a 	bmi	400e8c <__stack+0x3e9a3c>
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
 1bc:	4b134a13 	blmi	4d2a10 <__stack+0x4bb5c0>
 1c0:	4a0f034c 	bmi	3c0ef8 <__stack+0x3a9aa8>
 1c4:	314f3317 	cmpcc	pc, r7, lsl r3	; <UNPREDICTABLE>
 1c8:	4a0f0330 	bmi	3c0e90 <__stack+0x3a9a40>
 1cc:	334e3115 	movtcc	r3, #57621	; 0xe115
 1d0:	4a0f0330 	bmi	3c0e98 <__stack+0x3a9a48>
 1d4:	034c4c13 	movteq	r4, #52243	; 0xcc13
 1d8:	4b134a11 	blmi	4d2a24 <__stack+0x4bb5d4>
 1dc:	4a14034c 	bmi	500f14 <__stack+0x4e9ac4>
 1e0:	2b324e16 	blcs	c93a40 <__stack+0xc7c5f0>
 1e4:	364c3031 			; <UNDEFINED> instruction: 0x364c3031
 1e8:	032e7603 	teqeq	lr, #3145728	; 0x300000
 1ec:	0f034a0f 	svceq	0x00034a0f
 1f0:	4c69314a 	stfmie	f3, [r9], #-296	; 0xfffffed8
 1f4:	2f2d3068 	svccs	0x002d3068
 1f8:	84868468 	strhi	r8, [r6], #1128	; 0x468
 1fc:	6b2d6969 	blvs	b5a7a8 <__stack+0xb43358>
 200:	4a7ad003 	bmi	1eb4214 <__stack+0x1e9cdc4>
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
 240:	ca032d30 	bgt	cb708 <__stack+0xb42b8>
 244:	46162e07 	ldrmi	r2, [r6], -r7, lsl #28
 248:	04020032 	streq	r0, [r2], #-50	; 0xffffffce
 24c:	02004f01 	andeq	r4, r0, #1, 30
 250:	4d680104 	stfmie	f0, [r8, #-16]!
 254:	4a7aaf03 	bmi	1eabe68 <__stack+0x1e94a18>
 258:	01049503 	tsteq	r4, r3, lsl #10
 25c:	ea034c4c 	b	d3394 <__stack+0xbbf44>
 260:	03112e7b 	tsteq	r1, #1968	; 0x7b0
 264:	2f2e7e86 	svccs	0x002e7e86
 268:	da032d30 	ble	cb730 <__stack+0xb42e0>
 26c:	2d2f2e07 	stccs	14, cr2, [pc, #-28]!	; 258 <CPU_ARM_CTRL_INT_DIS+0x198>
 270:	ab034d2f 	blge	d3734 <__stack+0xbc2e4>
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
 2cc:	fa034a78 	blx	d2cb4 <__stack+0xbb864>
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
 348:	00e74802 	rsceq	r4, r7, r2, lsl #16
 34c:	00e70300 	rsceq	r0, r7, r0, lsl #6
 350:	2f2f1601 	svccs	0x002f1601
 354:	162e1103 	strtne	r1, [lr], -r3, lsl #2
 358:	11032f2f 	tstne	r3, pc, lsr #30
 35c:	2f2f162e 	svccs	0x002f162e
 360:	162e1203 	strtne	r1, [lr], -r3, lsl #4
 364:	4a13032f 	bmi	4c1028 <__stack+0x4a9bd8>
 368:	13032f16 	movwne	r2, #16150	; 0x3f16
 36c:	032f164a 	teqeq	pc, #77594624	; 0x4a00000
 370:	8d034a13 	vstrhi	s8, [r3, #-76]	; 0xffffffb4
 374:	032f017f 	teqeq	pc, #-1073741793	; 0xc000001f
 378:	032e01eb 	teqeq	lr, #-1073741766	; 0xc000003a
 37c:	034a7f96 	movteq	r7, #44950	; 0xaf96
 380:	83034a12 	movwhi	r4, #14866	; 0x3a12
 384:	032f017f 	teqeq	pc, #-1073741793	; 0xc000001f
 388:	2a2e01ef 	bcs	b80b4c <__stack+0xb696fc>
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
 3b8:	4a0f034b 	bmi	3c10ec <__stack+0x3a9c9c>
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
 3f8:	6b64655c 	blvs	1919970 <__stack+0x1902520>
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
 4f4:	00e84802 	rsceq	r4, r8, r2, lsl #16
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
 528:	6b030104 	blvs	c0940 <__stack+0xa94f0>
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
 554:	4b672f49 	blmi	19cc280 <__stack+0x19b4e30>
 558:	03674c49 	cmneq	r7, #18688	; 0x4900
 55c:	0b034a24 	bleq	d2df4 <__stack+0xbb9a4>
 560:	2e750366 	cdpcs	3, 7, cr0, cr5, cr6, {3}
 564:	302e0b03 	eorcc	r0, lr, r3, lsl #22
 568:	4b820a03 	blmi	fe082d7c <CPU_ARM_BIT_CNTES_C+0x7e082d7c>
 56c:	4a7a032f 	bmi	1e81230 <__stack+0x1e69de0>
 570:	6c86292d 	stcvs	9, cr2, [r6], {45}	; 0x2d
 574:	2c332fbb 	ldccs	15, cr2, [r3], #-748	; 0xfffffd14
 578:	60038330 	andvs	r8, r3, r0, lsr r3
 57c:	4a6c034a 	bmi	1b012ac <__stack+0x1ae9e5c>
 580:	4b492f2d 	blmi	124c23c <__stack+0x1234dec>
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
 5ac:	9b036c49 	blls	db6d8 <__stack+0xc4288>
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
 5fc:	4b304b2e 	blmi	c132bc <__stack+0xbfbe6c>
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
 67c:	ee3c0205 	cdp	2, 3, cr0, cr12, cr5, {0}
 680:	98030000 	stmdals	r3, {}	; <UNPREDICTABLE>
 684:	03350105 	teqeq	r5, #1073741825	; 0x40000001
 688:	20087df2 	strdcs	r7, [r8], -r2
 68c:	00362f2e 	eorseq	r2, r6, lr, lsr #30
 690:	06020402 	streq	r0, [r2], -r2, lsl #8
 694:	a650062e 	ldrbge	r0, [r0], -lr, lsr #12
 698:	01040200 	mrseq	r0, R12_usr
 69c:	002e7203 	eoreq	r7, lr, r3, lsl #4
 6a0:	67010402 	strvs	r0, [r1, -r2, lsl #8]
 6a4:	01040200 	mrseq	r0, R12_usr
 6a8:	4a14032d 	bmi	501364 <__stack+0x4e9f14>
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
 804:	aa030204 	bge	c101c <__stack+0xa9bcc>
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
 83c:	4a24032e 	bmi	9014fc <__stack+0x8ea0ac>
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
 914:	6b010100 	blvs	40d1c <__stack+0x298cc>
 918:	02000000 	andeq	r0, r0, #0
 91c:	00005300 	andeq	r5, r0, r0, lsl #6
 920:	fb010200 	blx	4112a <__stack+0x29cda>
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
 974:	38020500 	stmdacc	r2, {r8, sl}
 978:	030000f4 	movweq	r0, #244	; 0xf4
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
 9e0:	54020500 	strpl	r0, [r2], #-1280	; 0xfffffb00
 9e4:	030000f4 	movweq	r0, #244	; 0xf4
 9e8:	2f01010f 	svccs	0x0001010f
 9ec:	0202114b 	andeq	r1, r2, #-1073741806	; 0xc0000012
 9f0:	54010100 	strpl	r0, [r1], #-256	; 0xffffff00
 9f4:	02000000 	andeq	r0, r0, #0
 9f8:	00003300 	andeq	r3, r0, r0, lsl #6
 9fc:	fb010200 	blx	41206 <__stack+0x29db6>
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
 a30:	64020500 	strvs	r0, [r2], #-1280	; 0xfffffb00
 a34:	030000f4 	movweq	r0, #244	; 0xf4
 a38:	300100eb 	andcc	r0, r1, fp, ror #1
 a3c:	0402009f 	streq	r0, [r2], #-159	; 0xffffff61
 a40:	12033401 	andne	r3, r3, #16777216	; 0x1000000
 a44:	080213ba 	stmdaeq	r2, {r1, r3, r4, r5, r7, r8, r9, ip}
 a48:	55010100 	strpl	r0, [r1, #-256]	; 0xffffff00
 a4c:	02000000 	andeq	r0, r0, #0
 a50:	00004f00 	andeq	r4, r0, r0, lsl #30
 a54:	fb010200 	blx	4125e <__stack+0x29e0e>
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
 b00:	0000f4a8 	andeq	pc, r0, r8, lsr #9
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
 bc8:	fadc0205 	blx	ff7013e4 <CPU_ARM_BIT_CNTES_C+0x7f7013e4>
 bcc:	2f030000 	svccs	0x00030000
 bd0:	00020201 	andeq	r0, r2, r1, lsl #4
 bd4:	Address 0x00000bd4 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	20554e47 	subscs	r4, r5, r7, asr #28
   4:	2e342043 	cdpcs	0, 3, cr2, cr4, cr3, {2}
   8:	00322e37 	eorseq	r2, r2, r7, lsr lr
   c:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
  10:	3a430074 	bcc	10c01e8 <__stack+0x10a8d98>
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
 588:	7a697300 	bvc	1a5d190 <__stack+0x1a45d40>
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
 6dc:	7a696c61 	bvc	1a5b868 <__stack+0x1a44418>
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
 76c:	3a430073 	bcc	10c0940 <__stack+0x10a94f0>
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
 868:	6b636f6c 	blvs	18dc620 <__stack+0x18c51d0>
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

Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000014 	andeq	r0, r0, r4, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	0000e018 	andeq	lr, r0, r8, lsl r0
  1c:	00000028 	andeq	r0, r0, r8, lsr #32
  20:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
  24:	00018e02 	andeq	r8, r1, r2, lsl #28
  28:	0000000c 	andeq	r0, r0, ip
  2c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  30:	7c020001 	stcvc	0, cr0, [r2], {1}
  34:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  38:	00000014 	andeq	r0, r0, r4, lsl r0
  3c:	00000028 	andeq	r0, r0, r8, lsr #32
  40:	0000e040 	andeq	lr, r0, r0, asr #32
  44:	0000005c 	andeq	r0, r0, ip, asr r0
  48:	83080e44 	movwhi	r0, #36420	; 0x8e44
  4c:	00018e02 	andeq	r8, r1, r2, lsl #28
  50:	00000014 	andeq	r0, r0, r4, lsl r0
  54:	00000028 	andeq	r0, r0, r8, lsr #32
  58:	0000e09c 	muleq	r0, ip, r0
  5c:	0000005c 	andeq	r0, r0, ip, asr r0
  60:	83080e44 	movwhi	r0, #36420	; 0x8e44
  64:	00018e02 	andeq	r8, r1, r2, lsl #28
  68:	00000014 	andeq	r0, r0, r4, lsl r0
  6c:	00000028 	andeq	r0, r0, r8, lsr #32
  70:	0000e0f8 	strdeq	lr, [r0], -r8
  74:	0000005c 	andeq	r0, r0, ip, asr r0
  78:	83080e44 	movwhi	r0, #36420	; 0x8e44
  7c:	00018e02 	andeq	r8, r1, r2, lsl #28
  80:	0000001c 	andeq	r0, r0, ip, lsl r0
  84:	00000028 	andeq	r0, r0, r8, lsr #32
  88:	0000e154 	andeq	lr, r0, r4, asr r1
  8c:	00000098 	muleq	r0, r8, r0
  90:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
  94:	86058506 	strhi	r8, [r5], -r6, lsl #10
  98:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
  9c:	00018e02 	andeq	r8, r1, r2, lsl #28
  a0:	00000014 	andeq	r0, r0, r4, lsl r0
  a4:	00000028 	andeq	r0, r0, r8, lsr #32
  a8:	0000e1ec 	andeq	lr, r0, ip, ror #3
  ac:	00000020 	andeq	r0, r0, r0, lsr #32
  b0:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
  b4:	00018e02 	andeq	r8, r1, r2, lsl #28
  b8:	0000000c 	andeq	r0, r0, ip
  bc:	00000028 	andeq	r0, r0, r8, lsr #32
  c0:	0000e20c 	andeq	lr, r0, ip, lsl #4
  c4:	00000018 	andeq	r0, r0, r8, lsl r0
  c8:	0000000c 	andeq	r0, r0, ip
  cc:	00000028 	andeq	r0, r0, r8, lsr #32
  d0:	0000e224 	andeq	lr, r0, r4, lsr #4
  d4:	00000038 	andeq	r0, r0, r8, lsr r0
  d8:	0000001c 	andeq	r0, r0, ip, lsl r0
  dc:	00000028 	andeq	r0, r0, r8, lsr #32
  e0:	0000e25c 	andeq	lr, r0, ip, asr r2
  e4:	00000098 	muleq	r0, r8, r0
  e8:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
  ec:	86058506 	strhi	r8, [r5], -r6, lsl #10
  f0:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
  f4:	00018e02 	andeq	r8, r1, r2, lsl #28
  f8:	00000014 	andeq	r0, r0, r4, lsl r0
  fc:	00000028 	andeq	r0, r0, r8, lsr #32
 100:	0000e2f4 	strdeq	lr, [r0], -r4
 104:	00000018 	andeq	r0, r0, r8, lsl r0
 108:	83080e42 	movwhi	r0, #36418	; 0x8e42
 10c:	00018e02 	andeq	r8, r1, r2, lsl #28
 110:	0000000c 	andeq	r0, r0, ip
 114:	00000028 	andeq	r0, r0, r8, lsr #32
 118:	0000e30c 	andeq	lr, r0, ip, lsl #6
 11c:	00000018 	andeq	r0, r0, r8, lsl r0
 120:	0000000c 	andeq	r0, r0, ip
 124:	00000028 	andeq	r0, r0, r8, lsr #32
 128:	0000e324 	andeq	lr, r0, r4, lsr #6
 12c:	00000038 	andeq	r0, r0, r8, lsr r0
 130:	0000000c 	andeq	r0, r0, ip
 134:	00000028 	andeq	r0, r0, r8, lsr #32
 138:	0000e35c 	andeq	lr, r0, ip, asr r3
 13c:	00000018 	andeq	r0, r0, r8, lsl r0
 140:	0000000c 	andeq	r0, r0, ip
 144:	00000028 	andeq	r0, r0, r8, lsr #32
 148:	0000e374 	andeq	lr, r0, r4, ror r3
 14c:	0000001c 	andeq	r0, r0, ip, lsl r0
 150:	0000000c 	andeq	r0, r0, ip
 154:	00000028 	andeq	r0, r0, r8, lsr #32
 158:	0000e390 	muleq	r0, r0, r3
 15c:	0000001c 	andeq	r0, r0, ip, lsl r0
 160:	0000000c 	andeq	r0, r0, ip
 164:	00000028 	andeq	r0, r0, r8, lsr #32
 168:	0000e3ac 	andeq	lr, r0, ip, lsr #7
 16c:	00000018 	andeq	r0, r0, r8, lsl r0
 170:	0000000c 	andeq	r0, r0, ip
 174:	00000028 	andeq	r0, r0, r8, lsr #32
 178:	0000e3c4 	andeq	lr, r0, r4, asr #7
 17c:	00000018 	andeq	r0, r0, r8, lsl r0
 180:	0000000c 	andeq	r0, r0, ip
 184:	00000028 	andeq	r0, r0, r8, lsr #32
 188:	0000e3dc 	ldrdeq	lr, [r0], -ip
 18c:	00000038 	andeq	r0, r0, r8, lsr r0
 190:	00000014 	andeq	r0, r0, r4, lsl r0
 194:	00000028 	andeq	r0, r0, r8, lsr #32
 198:	0000e414 	andeq	lr, r0, r4, lsl r4
 19c:	0000009c 	muleq	r0, ip, r0
 1a0:	83080e42 	movwhi	r0, #36418	; 0x8e42
 1a4:	00018e02 	andeq	r8, r1, r2, lsl #28
 1a8:	0000000c 	andeq	r0, r0, ip
 1ac:	00000028 	andeq	r0, r0, r8, lsr #32
 1b0:	0000e4b0 			; <UNDEFINED> instruction: 0x0000e4b0
 1b4:	0000001c 	andeq	r0, r0, ip, lsl r0
 1b8:	00000014 	andeq	r0, r0, r4, lsl r0
 1bc:	00000028 	andeq	r0, r0, r8, lsr #32
 1c0:	0000e4cc 	andeq	lr, r0, ip, asr #9
 1c4:	00000010 	andeq	r0, r0, r0, lsl r0
 1c8:	83080e42 	movwhi	r0, #36418	; 0x8e42
 1cc:	00018e02 	andeq	r8, r1, r2, lsl #28
 1d0:	00000014 	andeq	r0, r0, r4, lsl r0
 1d4:	00000028 	andeq	r0, r0, r8, lsr #32
 1d8:	0000e4dc 	ldrdeq	lr, [r0], -ip
 1dc:	0000004c 	andeq	r0, r0, ip, asr #32
 1e0:	83080e46 	movwhi	r0, #36422	; 0x8e46
 1e4:	00018e02 	andeq	r8, r1, r2, lsl #28
 1e8:	00000014 	andeq	r0, r0, r4, lsl r0
 1ec:	00000028 	andeq	r0, r0, r8, lsr #32
 1f0:	0000e528 	andeq	lr, r0, r8, lsr #10
 1f4:	00000024 	andeq	r0, r0, r4, lsr #32
 1f8:	83080e42 	movwhi	r0, #36418	; 0x8e42
 1fc:	00018e02 	andeq	r8, r1, r2, lsl #28
 200:	00000014 	andeq	r0, r0, r4, lsl r0
 204:	00000028 	andeq	r0, r0, r8, lsr #32
 208:	0000e54c 	andeq	lr, r0, ip, asr #10
 20c:	00000010 	andeq	r0, r0, r0, lsl r0
 210:	83080e42 	movwhi	r0, #36418	; 0x8e42
 214:	00018e02 	andeq	r8, r1, r2, lsl #28
 218:	00000014 	andeq	r0, r0, r4, lsl r0
 21c:	00000028 	andeq	r0, r0, r8, lsr #32
 220:	0000e55c 	andeq	lr, r0, ip, asr r5
 224:	00000030 	andeq	r0, r0, r0, lsr r0
 228:	83080e46 	movwhi	r0, #36422	; 0x8e46
 22c:	00018e02 	andeq	r8, r1, r2, lsl #28
 230:	0000000c 	andeq	r0, r0, ip
 234:	00000028 	andeq	r0, r0, r8, lsr #32
 238:	0000e58c 	andeq	lr, r0, ip, lsl #11
 23c:	00000018 	andeq	r0, r0, r8, lsl r0
 240:	00000014 	andeq	r0, r0, r4, lsl r0
 244:	00000028 	andeq	r0, r0, r8, lsr #32
 248:	0000e5a4 	andeq	lr, r0, r4, lsr #11
 24c:	00000010 	andeq	r0, r0, r0, lsl r0
 250:	83080e42 	movwhi	r0, #36418	; 0x8e42
 254:	00018e02 	andeq	r8, r1, r2, lsl #28
 258:	00000014 	andeq	r0, r0, r4, lsl r0
 25c:	00000028 	andeq	r0, r0, r8, lsr #32
 260:	0000e5b4 			; <UNDEFINED> instruction: 0x0000e5b4
 264:	0000001c 	andeq	r0, r0, ip, lsl r0
 268:	83080e46 	movwhi	r0, #36422	; 0x8e46
 26c:	00018e02 	andeq	r8, r1, r2, lsl #28
 270:	0000000c 	andeq	r0, r0, ip
 274:	00000028 	andeq	r0, r0, r8, lsr #32
 278:	0000e5d0 	ldrdeq	lr, [r0], -r0
 27c:	00000018 	andeq	r0, r0, r8, lsl r0
 280:	0000000c 	andeq	r0, r0, ip
 284:	00000028 	andeq	r0, r0, r8, lsr #32
 288:	0000e5e8 	andeq	lr, r0, r8, ror #11
 28c:	00000018 	andeq	r0, r0, r8, lsl r0
 290:	00000014 	andeq	r0, r0, r4, lsl r0
 294:	00000028 	andeq	r0, r0, r8, lsr #32
 298:	0000e600 	andeq	lr, r0, r0, lsl #12
 29c:	00000050 	andeq	r0, r0, r0, asr r0
 2a0:	83080e44 	movwhi	r0, #36420	; 0x8e44
 2a4:	00018e02 	andeq	r8, r1, r2, lsl #28
 2a8:	00000014 	andeq	r0, r0, r4, lsl r0
 2ac:	00000028 	andeq	r0, r0, r8, lsr #32
 2b0:	0000e650 	andeq	lr, r0, r0, asr r6
 2b4:	00000030 	andeq	r0, r0, r0, lsr r0
 2b8:	83080e46 	movwhi	r0, #36422	; 0x8e46
 2bc:	00018e02 	andeq	r8, r1, r2, lsl #28
 2c0:	00000014 	andeq	r0, r0, r4, lsl r0
 2c4:	00000028 	andeq	r0, r0, r8, lsr #32
 2c8:	0000e680 	andeq	lr, r0, r0, lsl #13
 2cc:	00000010 	andeq	r0, r0, r0, lsl r0
 2d0:	83080e42 	movwhi	r0, #36418	; 0x8e42
 2d4:	00018e02 	andeq	r8, r1, r2, lsl #28
 2d8:	00000014 	andeq	r0, r0, r4, lsl r0
 2dc:	00000028 	andeq	r0, r0, r8, lsr #32
 2e0:	0000e690 	muleq	r0, r0, r6
 2e4:	0000001c 	andeq	r0, r0, ip, lsl r0
 2e8:	83080e46 	movwhi	r0, #36422	; 0x8e46
 2ec:	00018e02 	andeq	r8, r1, r2, lsl #28
 2f0:	0000000c 	andeq	r0, r0, ip
 2f4:	00000028 	andeq	r0, r0, r8, lsr #32
 2f8:	0000e6ac 	andeq	lr, r0, ip, lsr #13
 2fc:	00000018 	andeq	r0, r0, r8, lsl r0
 300:	00000014 	andeq	r0, r0, r4, lsl r0
 304:	00000028 	andeq	r0, r0, r8, lsr #32
 308:	0000e6c4 	andeq	lr, r0, r4, asr #13
 30c:	00000050 	andeq	r0, r0, r0, asr r0
 310:	83080e44 	movwhi	r0, #36420	; 0x8e44
 314:	00018e02 	andeq	r8, r1, r2, lsl #28
 318:	00000014 	andeq	r0, r0, r4, lsl r0
 31c:	00000028 	andeq	r0, r0, r8, lsr #32
 320:	0000e714 	andeq	lr, r0, r4, lsl r7
 324:	0000001c 	andeq	r0, r0, ip, lsl r0
 328:	83080e46 	movwhi	r0, #36422	; 0x8e46
 32c:	00018e02 	andeq	r8, r1, r2, lsl #28
 330:	0000000c 	andeq	r0, r0, ip
 334:	00000028 	andeq	r0, r0, r8, lsr #32
 338:	0000e730 	andeq	lr, r0, r0, lsr r7
 33c:	00000018 	andeq	r0, r0, r8, lsl r0
 340:	0000000c 	andeq	r0, r0, ip
 344:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 348:	7c020001 	stcvc	0, cr0, [r2], {1}
 34c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 350:	0000000c 	andeq	r0, r0, ip
 354:	00000340 	andeq	r0, r0, r0, asr #6
 358:	0000e748 	andeq	lr, r0, r8, asr #14
 35c:	0000000c 	andeq	r0, r0, ip
 360:	0000000c 	andeq	r0, r0, ip
 364:	00000340 	andeq	r0, r0, r0, asr #6
 368:	0000e754 	andeq	lr, r0, r4, asr r7
 36c:	0000000c 	andeq	r0, r0, ip
 370:	0000000c 	andeq	r0, r0, ip
 374:	00000340 	andeq	r0, r0, r0, asr #6
 378:	0000e760 	andeq	lr, r0, r0, ror #14
 37c:	0000000c 	andeq	r0, r0, ip
 380:	0000000c 	andeq	r0, r0, ip
 384:	00000340 	andeq	r0, r0, r0, asr #6
 388:	0000e76c 	andeq	lr, r0, ip, ror #14
 38c:	0000000c 	andeq	r0, r0, ip
 390:	0000000c 	andeq	r0, r0, ip
 394:	00000340 	andeq	r0, r0, r0, asr #6
 398:	0000e778 	andeq	lr, r0, r8, ror r7
 39c:	0000000c 	andeq	r0, r0, ip
 3a0:	0000000c 	andeq	r0, r0, ip
 3a4:	00000340 	andeq	r0, r0, r0, asr #6
 3a8:	0000e784 	andeq	lr, r0, r4, lsl #15
 3ac:	0000000c 	andeq	r0, r0, ip
 3b0:	0000000c 	andeq	r0, r0, ip
 3b4:	00000340 	andeq	r0, r0, r0, asr #6
 3b8:	0000e790 	muleq	r0, r0, r7
 3bc:	00000018 	andeq	r0, r0, r8, lsl r0
 3c0:	0000000c 	andeq	r0, r0, ip
 3c4:	00000340 	andeq	r0, r0, r0, asr #6
 3c8:	0000e7a8 	andeq	lr, r0, r8, lsr #15
 3cc:	0000002c 	andeq	r0, r0, ip, lsr #32
 3d0:	0000000c 	andeq	r0, r0, ip
 3d4:	00000340 	andeq	r0, r0, r0, asr #6
 3d8:	0000e7d4 	ldrdeq	lr, [r0], -r4
 3dc:	00000014 	andeq	r0, r0, r4, lsl r0
 3e0:	0000000c 	andeq	r0, r0, ip
 3e4:	00000340 	andeq	r0, r0, r0, asr #6
 3e8:	0000e7e8 	andeq	lr, r0, r8, ror #15
 3ec:	0000002c 	andeq	r0, r0, ip, lsr #32
 3f0:	0000000c 	andeq	r0, r0, ip
 3f4:	00000340 	andeq	r0, r0, r0, asr #6
 3f8:	0000e814 	andeq	lr, r0, r4, lsl r8
 3fc:	00000010 	andeq	r0, r0, r0, lsl r0
 400:	0000000c 	andeq	r0, r0, ip
 404:	00000340 	andeq	r0, r0, r0, asr #6
 408:	0000e824 	andeq	lr, r0, r4, lsr #16
 40c:	00000024 	andeq	r0, r0, r4, lsr #32
 410:	0000000c 	andeq	r0, r0, ip
 414:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 418:	7c020001 	stcvc	0, cr0, [r2], {1}
 41c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 420:	00000018 	andeq	r0, r0, r8, lsl r0
 424:	00000410 	andeq	r0, r0, r0, lsl r4
 428:	0000e848 	andeq	lr, r0, r8, asr #16
 42c:	00000048 	andeq	r0, r0, r8, asr #32
 430:	83100e42 	tsthi	r0, #1056	; 0x420
 434:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 438:	00018e02 	andeq	r8, r1, r2, lsl #28
 43c:	00000020 	andeq	r0, r0, r0, lsr #32
 440:	00000410 	andeq	r0, r0, r0, lsl r4
 444:	0000e890 	muleq	r0, r0, r8
 448:	000000f8 	strdeq	r0, [r0], -r8
 44c:	84180e46 	ldrhi	r0, [r8], #-3654	; 0xfffff1ba
 450:	86058506 	strhi	r8, [r5], -r6, lsl #10
 454:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 458:	4a018e02 	bmi	63c68 <__stack+0x4c818>
 45c:	0000500e 	andeq	r5, r0, lr
 460:	00000030 	andeq	r0, r0, r0, lsr r0
 464:	00000410 	andeq	r0, r0, r0, lsl r4
 468:	0000e988 	andeq	lr, r0, r8, lsl #19
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
 4ac:	0000ee3c 	andeq	lr, r0, ip, lsr lr
 4b0:	00000028 	andeq	r0, r0, r8, lsr #32
 4b4:	83080e42 	movwhi	r0, #36418	; 0x8e42
 4b8:	00018e02 	andeq	r8, r1, r2, lsl #28
 4bc:	00000018 	andeq	r0, r0, r8, lsl r0
 4c0:	00000494 	muleq	r0, r4, r4
 4c4:	0000ee64 	andeq	lr, r0, r4, ror #28
 4c8:	00000088 	andeq	r0, r0, r8, lsl #1
 4cc:	83100e42 	tsthi	r0, #1056	; 0x420
 4d0:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 4d4:	00018e02 	andeq	r8, r1, r2, lsl #28
 4d8:	0000001c 	andeq	r0, r0, ip, lsl r0
 4dc:	00000494 	muleq	r0, r4, r4
 4e0:	0000eeec 	andeq	lr, r0, ip, ror #29
 4e4:	000000d8 	ldrdeq	r0, [r0], -r8
 4e8:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
 4ec:	86038504 	strhi	r8, [r3], -r4, lsl #10
 4f0:	44018e02 	strmi	r8, [r1], #-3586	; 0xfffff1fe
 4f4:	0000180e 	andeq	r1, r0, lr, lsl #16
 4f8:	00000018 	andeq	r0, r0, r8, lsl r0
 4fc:	00000494 	muleq	r0, r4, r4
 500:	0000efc4 	andeq	lr, r0, r4, asr #31
 504:	00000090 	muleq	r0, r0, r0
 508:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
 50c:	86038504 	strhi	r8, [r3], -r4, lsl #10
 510:	00018e02 	andeq	r8, r1, r2, lsl #28
 514:	0000001c 	andeq	r0, r0, ip, lsl r0
 518:	00000494 	muleq	r0, r4, r4
 51c:	0000f054 	andeq	pc, r0, r4, asr r0	; <UNPREDICTABLE>
 520:	00000100 	andeq	r0, r0, r0, lsl #2
 524:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
 528:	86038504 	strhi	r8, [r3], -r4, lsl #10
 52c:	44018e02 	strmi	r8, [r1], #-3586	; 0xfffff1fe
 530:	0000180e 	andeq	r1, r0, lr, lsl #16
 534:	00000024 	andeq	r0, r0, r4, lsr #32
 538:	00000494 	muleq	r0, r4, r4
 53c:	0000f154 	andeq	pc, r0, r4, asr r1	; <UNPREDICTABLE>
 540:	000001c0 	andeq	r0, r0, r0, asr #3
 544:	84240e42 	strthi	r0, [r4], #-3650	; 0xfffff1be
 548:	86088509 	strhi	r8, [r8], -r9, lsl #10
 54c:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
 550:	8a048905 	bhi	12296c <__stack+0x10b51c>
 554:	8e028b03 	vmlahi.f64	d8, d2, d3
 558:	300e4401 	andcc	r4, lr, r1, lsl #8
 55c:	0000001c 	andeq	r0, r0, ip, lsl r0
 560:	00000494 	muleq	r0, r4, r4
 564:	0000f314 	andeq	pc, r0, r4, lsl r3	; <UNPREDICTABLE>
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
 594:	0000f438 	andeq	pc, r0, r8, lsr r4	; <UNPREDICTABLE>
 598:	0000001c 	andeq	r0, r0, ip, lsl r0
 59c:	0000000c 	andeq	r0, r0, ip
 5a0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 5a4:	7c020001 	stcvc	0, cr0, [r2], {1}
 5a8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 5ac:	0000000c 	andeq	r0, r0, ip
 5b0:	0000059c 	muleq	r0, ip, r5
 5b4:	0000f454 	andeq	pc, r0, r4, asr r4	; <UNPREDICTABLE>
 5b8:	00000010 	andeq	r0, r0, r0, lsl r0
 5bc:	0000000c 	andeq	r0, r0, ip
 5c0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 5c4:	7c020001 	stcvc	0, cr0, [r2], {1}
 5c8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 5cc:	00000014 	andeq	r0, r0, r4, lsl r0
 5d0:	000005bc 			; <UNDEFINED> instruction: 0x000005bc
 5d4:	0000f464 	andeq	pc, r0, r4, ror #8
 5d8:	00000034 	andeq	r0, r0, r4, lsr r0
 5dc:	83080e42 	movwhi	r0, #36418	; 0x8e42
 5e0:	00018e02 	andeq	r8, r1, r2, lsl #28
 5e4:	0000000c 	andeq	r0, r0, ip
 5e8:	000005bc 			; <UNDEFINED> instruction: 0x000005bc
 5ec:	0000f498 	muleq	r0, r8, r4
 5f0:	00000010 	andeq	r0, r0, r0, lsl r0
 5f4:	0000000c 	andeq	r0, r0, ip
 5f8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 5fc:	7c020001 	stcvc	0, cr0, [r2], {1}
 600:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 604:	00000018 	andeq	r0, r0, r8, lsl r0
 608:	000005f4 	strdeq	r0, [r0], -r4
 60c:	0000f4a8 	andeq	pc, r0, r8, lsr #9
 610:	00000030 	andeq	r0, r0, r0, lsr r0
 614:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
 618:	86038504 	strhi	r8, [r3], -r4, lsl #10
 61c:	00018e02 	andeq	r8, r1, r2, lsl #28
 620:	00000018 	andeq	r0, r0, r8, lsl r0
 624:	000005f4 	strdeq	r0, [r0], -r4
 628:	0000f4d8 	ldrdeq	pc, [r0], -r8
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
 654:	0000f504 	andeq	pc, r0, r4, lsl #10
 658:	000001ec 	andeq	r0, r0, ip, ror #3
 65c:	0000000c 	andeq	r0, r0, ip
 660:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 664:	7c020001 	stcvc	0, cr0, [r2], {1}
 668:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 66c:	00000014 	andeq	r0, r0, r4, lsl r0
 670:	0000065c 	andeq	r0, r0, ip, asr r6
 674:	0000f714 	andeq	pc, r0, r4, lsl r7	; <UNPREDICTABLE>
 678:	00000034 	andeq	r0, r0, r4, lsr r0
 67c:	83080e42 	movwhi	r0, #36418	; 0x8e42
 680:	00018e02 	andeq	r8, r1, r2, lsl #28
 684:	0000000c 	andeq	r0, r0, ip
 688:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 68c:	7c020001 	stcvc	0, cr0, [r2], {1}
 690:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 694:	00000018 	andeq	r0, r0, r8, lsl r0
 698:	00000684 	andeq	r0, r0, r4, lsl #13
 69c:	0000f748 	andeq	pc, r0, r8, asr #14
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
 6c8:	0000f784 	andeq	pc, r0, r4, lsl #15
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
 6f4:	0000f800 	andeq	pc, r0, r0, lsl #16
 6f8:	0000006c 	andeq	r0, r0, ip, rrx
 6fc:	0000000c 	andeq	r0, r0, ip
 700:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 704:	7c020001 	stcvc	0, cr0, [r2], {1}
 708:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 70c:	0000000c 	andeq	r0, r0, ip
 710:	000006fc 	strdeq	r0, [r0], -ip
 714:	0000fbe8 	andeq	pc, r0, r8, ror #23
 718:	0000001c 	andeq	r0, r0, ip, lsl r0
 71c:	00000024 	andeq	r0, r0, r4, lsr #32
 720:	000006fc 	strdeq	r0, [r0], -ip
 724:	0000f86c 	andeq	pc, r0, ip, ror #16
 728:	0000016c 	andeq	r0, r0, ip, ror #2
 72c:	84240e46 	strthi	r0, [r4], #-3654	; 0xfffff1ba
 730:	86088509 	strhi	r8, [r8], -r9, lsl #10
 734:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
 738:	8a048905 	bhi	122b54 <__stack+0x10b704>
 73c:	8e028b03 	vmlahi.f64	d8, d2, d3
 740:	380e4201 	stmdacc	lr, {r0, r9, lr}
 744:	0000000c 	andeq	r0, r0, ip
 748:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 74c:	7c020001 	stcvc	0, cr0, [r2], {1}
 750:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 754:	0000000c 	andeq	r0, r0, ip
 758:	00000744 	andeq	r0, r0, r4, asr #14
 75c:	0000f9d8 	ldrdeq	pc, [r0], -r8
 760:	00000014 	andeq	r0, r0, r4, lsl r0
 764:	0000000c 	andeq	r0, r0, ip
 768:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 76c:	7c020001 	stcvc	0, cr0, [r2], {1}
 770:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 774:	0000001c 	andeq	r0, r0, ip, lsl r0
 778:	00000764 	andeq	r0, r0, r4, ror #14
 77c:	0000f9ec 	andeq	pc, r0, ip, ror #19
 780:	000000f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 784:	84140e46 	ldrhi	r0, [r4], #-3654	; 0xfffff1ba
 788:	86048505 	strhi	r8, [r4], -r5, lsl #10
 78c:	8e028703 	cdphi	7, 0, cr8, cr2, cr3, {0}
 790:	280e4601 	stmdacs	lr, {r0, r9, sl, lr}
 794:	0000000c 	andeq	r0, r0, ip
 798:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 79c:	7c020001 	stcvc	0, cr0, [r2], {1}
 7a0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 7a4:	0000000c 	andeq	r0, r0, ip
 7a8:	00000794 	muleq	r0, r4, r7
 7ac:	0000fadc 	ldrdeq	pc, [r0], -ip
 7b0:	00000004 	andeq	r0, r0, r4

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
