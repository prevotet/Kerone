
ucos-ii_demo_0.elf:     file format elf32-littlearm


Disassembly of section .text:

00006058 <deregister_tm_clones-0xa8>:
	...

00006100 <deregister_tm_clones>:
    6100:	e92d4008 	push	{r3, lr}
    6104:	e30e0524 	movw	r0, #58660	; 0xe524
    6108:	e59f3024 	ldr	r3, [pc, #36]	; 6134 <deregister_tm_clones+0x34>
    610c:	e3400000 	movt	r0, #0
    6110:	e0603003 	rsb	r3, r0, r3
    6114:	e3530006 	cmp	r3, #6
    6118:	98bd8008 	popls	{r3, pc}
    611c:	e3003000 	movw	r3, #0
    6120:	e3403000 	movt	r3, #0
    6124:	e3530000 	cmp	r3, #0
    6128:	08bd8008 	popeq	{r3, pc}
    612c:	e12fff33 	blx	r3
    6130:	e8bd8008 	pop	{r3, pc}
    6134:	0000e527 	andeq	lr, r0, r7, lsr #10

00006138 <register_tm_clones>:
    6138:	e92d4008 	push	{r3, lr}
    613c:	e30e0524 	movw	r0, #58660	; 0xe524
    6140:	e30e3524 	movw	r3, #58660	; 0xe524
    6144:	e3400000 	movt	r0, #0
    6148:	e3403000 	movt	r3, #0
    614c:	e0603003 	rsb	r3, r0, r3
    6150:	e1a03143 	asr	r3, r3, #2
    6154:	e0833fa3 	add	r3, r3, r3, lsr #31
    6158:	e1b010c3 	asrs	r1, r3, #1
    615c:	08bd8008 	popeq	{r3, pc}
    6160:	e3002000 	movw	r2, #0
    6164:	e3402000 	movt	r2, #0
    6168:	e3520000 	cmp	r2, #0
    616c:	08bd8008 	popeq	{r3, pc}
    6170:	e12fff32 	blx	r2
    6174:	e8bd8008 	pop	{r3, pc}

00006178 <__do_global_dtors_aux>:
    6178:	e92d4010 	push	{r4, lr}
    617c:	e30e4534 	movw	r4, #58676	; 0xe534
    6180:	e3404000 	movt	r4, #0
    6184:	e5d43000 	ldrb	r3, [r4]
    6188:	e3530000 	cmp	r3, #0
    618c:	18bd8010 	popne	{r4, pc}
    6190:	ebffffda 	bl	6100 <deregister_tm_clones>
    6194:	e3003000 	movw	r3, #0
    6198:	e3403000 	movt	r3, #0
    619c:	e3530000 	cmp	r3, #0
    61a0:	0a000002 	beq	61b0 <__do_global_dtors_aux+0x38>
    61a4:	e30e0524 	movw	r0, #58660	; 0xe524
    61a8:	e3400000 	movt	r0, #0
    61ac:	e320f000 	nop	{0}
    61b0:	e3a03001 	mov	r3, #1
    61b4:	e5c43000 	strb	r3, [r4]
    61b8:	e8bd8010 	pop	{r4, pc}

000061bc <frame_dummy>:
    61bc:	e92d4008 	push	{r3, lr}
    61c0:	e3003000 	movw	r3, #0
    61c4:	e3403000 	movt	r3, #0
    61c8:	e3530000 	cmp	r3, #0
    61cc:	0a000004 	beq	61e4 <frame_dummy+0x28>
    61d0:	e30e0524 	movw	r0, #58660	; 0xe524
    61d4:	e30e1538 	movw	r1, #58680	; 0xe538
    61d8:	e3400000 	movt	r0, #0
    61dc:	e3401000 	movt	r1, #0
    61e0:	e320f000 	nop	{0}
    61e4:	e30e0520 	movw	r0, #58656	; 0xe520
    61e8:	e3400000 	movt	r0, #0
    61ec:	e5903000 	ldr	r3, [r0]
    61f0:	e3530000 	cmp	r3, #0
    61f4:	0a000004 	beq	620c <frame_dummy+0x50>
    61f8:	e3003000 	movw	r3, #0
    61fc:	e3403000 	movt	r3, #0
    6200:	e3530000 	cmp	r3, #0
    6204:	0a000000 	beq	620c <frame_dummy+0x50>
    6208:	e12fff33 	blx	r3
    620c:	e8bd4008 	pop	{r3, lr}
    6210:	eaffffc8 	b	6138 <register_tm_clones>

00006214 <OS_TaskIdle>:
    6214:	e92d4010 	push	{r4, lr}
    6218:	e3004558 	movw	r4, #1368	; 0x558
    621c:	e3404001 	movt	r4, #1
    6220:	eb000d42 	bl	9730 <OS_CPU_SR_Save>
    6224:	e5943000 	ldr	r3, [r4]
    6228:	e2833001 	add	r3, r3, #1
    622c:	e5843000 	str	r3, [r4]
    6230:	eb000d44 	bl	9748 <OS_CPU_SR_Restore>
    6234:	eb000e56 	bl	9b94 <OSTaskIdleHook>
    6238:	eafffff8 	b	6220 <OS_TaskIdle+0xc>

0000623c <OSEventNameGet>:
    623c:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    6240:	e3003604 	movw	r3, #1540	; 0x604
    6244:	e3403001 	movt	r3, #1
    6248:	e1a06000 	mov	r6, r0
    624c:	e1a07001 	mov	r7, r1
    6250:	e1a05002 	mov	r5, r2
    6254:	e5d34000 	ldrb	r4, [r3]
    6258:	e3540000 	cmp	r4, #0
    625c:	1a000015 	bne	62b8 <OSEventNameGet+0x7c>
    6260:	e5d03000 	ldrb	r3, [r0]
    6264:	e2433001 	sub	r3, r3, #1
    6268:	e3530003 	cmp	r3, #3
    626c:	83a03001 	movhi	r3, #1
    6270:	85c23000 	strbhi	r3, [r2]
    6274:	8a00000d 	bhi	62b0 <OSEventNameGet+0x74>
    6278:	eb000d2c 	bl	9730 <OS_CPU_SR_Save>
    627c:	e5963014 	ldr	r3, [r6, #20]
    6280:	e5873000 	str	r3, [r7]
    6284:	e5d32000 	ldrb	r2, [r3]
    6288:	e3520000 	cmp	r2, #0
    628c:	0a00000e 	beq	62cc <OSEventNameGet+0x90>
    6290:	e5f31001 	ldrb	r1, [r3, #1]!
    6294:	e2844001 	add	r4, r4, #1
    6298:	e3510000 	cmp	r1, #0
    629c:	e6ef4074 	uxtb	r4, r4
    62a0:	1afffffa 	bne	6290 <OSEventNameGet+0x54>
    62a4:	eb000d27 	bl	9748 <OS_CPU_SR_Restore>
    62a8:	e3a03000 	mov	r3, #0
    62ac:	e5c53000 	strb	r3, [r5]
    62b0:	e1a00004 	mov	r0, r4
    62b4:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    62b8:	e3a04000 	mov	r4, #0
    62bc:	e3a03011 	mov	r3, #17
    62c0:	e1a00004 	mov	r0, r4
    62c4:	e5c23000 	strb	r3, [r2]
    62c8:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    62cc:	e1a04002 	mov	r4, r2
    62d0:	eafffff3 	b	62a4 <OSEventNameGet+0x68>

000062d4 <OSEventNameSet>:
    62d4:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    62d8:	e3003604 	movw	r3, #1540	; 0x604
    62dc:	e3403001 	movt	r3, #1
    62e0:	e1a06000 	mov	r6, r0
    62e4:	e1a07001 	mov	r7, r1
    62e8:	e1a05002 	mov	r5, r2
    62ec:	e5d34000 	ldrb	r4, [r3]
    62f0:	e3540000 	cmp	r4, #0
    62f4:	13a03012 	movne	r3, #18
    62f8:	15c23000 	strbne	r3, [r2]
    62fc:	18bd80f8 	popne	{r3, r4, r5, r6, r7, pc}
    6300:	e5d03000 	ldrb	r3, [r0]
    6304:	e2433001 	sub	r3, r3, #1
    6308:	e3530003 	cmp	r3, #3
    630c:	83a03001 	movhi	r3, #1
    6310:	85c23000 	strbhi	r3, [r2]
    6314:	88bd80f8 	pophi	{r3, r4, r5, r6, r7, pc}
    6318:	eb000d04 	bl	9730 <OS_CPU_SR_Save>
    631c:	e5867014 	str	r7, [r6, #20]
    6320:	eb000d08 	bl	9748 <OS_CPU_SR_Restore>
    6324:	e5c54000 	strb	r4, [r5]
    6328:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

0000632c <OSInit>:
    632c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    6330:	e24dd03c 	sub	sp, sp, #60	; 0x3c
    6334:	e30065e0 	movw	r6, #1504	; 0x5e0
    6338:	e3406001 	movt	r6, #1
    633c:	eb000e05 	bl	9b58 <OSInitHookBegin>
    6340:	e3002558 	movw	r2, #1368	; 0x558
    6344:	e3402001 	movt	r2, #1
    6348:	e58d201c 	str	r2, [sp, #28]
    634c:	e3a01000 	mov	r1, #0
    6350:	e5861000 	str	r1, [r6]
    6354:	e59d601c 	ldr	r6, [sp, #28]
    6358:	e300b60c 	movw	fp, #1548	; 0x60c
    635c:	e30025f8 	movw	r2, #1528	; 0x5f8
    6360:	e340b001 	movt	fp, #1
    6364:	e3402001 	movt	r2, #1
    6368:	e300355d 	movw	r3, #1373	; 0x55d
    636c:	e3403001 	movt	r3, #1
    6370:	e58d3020 	str	r3, [sp, #32]
    6374:	e300355c 	movw	r3, #1372	; 0x55c
    6378:	e3403001 	movt	r3, #1
    637c:	e58d3024 	str	r3, [sp, #36]	; 0x24
    6380:	e30035f0 	movw	r3, #1520	; 0x5f0
    6384:	e5c21000 	strb	r1, [r2]
    6388:	e3403001 	movt	r3, #1
    638c:	e5c21001 	strb	r1, [r2, #1]
    6390:	e3005900 	movw	r5, #2304	; 0x900
    6394:	e5c21002 	strb	r1, [r2, #2]
    6398:	e3405001 	movt	r5, #1
    639c:	e5c21003 	strb	r1, [r2, #3]
    63a0:	e3009604 	movw	r9, #1540	; 0x604
    63a4:	e58b1000 	str	r1, [fp]
    63a8:	e3409001 	movt	r9, #1
    63ac:	e5861000 	str	r1, [r6]
    63b0:	e300a554 	movw	sl, #1364	; 0x554
    63b4:	e59d6024 	ldr	r6, [sp, #36]	; 0x24
    63b8:	e30085e8 	movw	r8, #1512	; 0x5e8
    63bc:	e5c21004 	strb	r1, [r2, #4]
    63c0:	e340a001 	movt	sl, #1
    63c4:	e5c21005 	strb	r1, [r2, #5]
    63c8:	e3408001 	movt	r8, #1
    63cc:	e5c21006 	strb	r1, [r2, #6]
    63d0:	e3007556 	movw	r7, #1366	; 0x556
    63d4:	e5c21007 	strb	r1, [r2, #7]
    63d8:	e3407001 	movt	r7, #1
    63dc:	e59d2020 	ldr	r2, [sp, #32]
    63e0:	e3004555 	movw	r4, #1365	; 0x555
    63e4:	e58d3028 	str	r3, [sp, #40]	; 0x28
    63e8:	e3003608 	movw	r3, #1544	; 0x608
    63ec:	e3403001 	movt	r3, #1
    63f0:	e58d302c 	str	r3, [sp, #44]	; 0x2c
    63f4:	e5c21000 	strb	r1, [r2]
    63f8:	e3404001 	movt	r4, #1
    63fc:	e5c61000 	strb	r1, [r6]
    6400:	e300e5f4 	movw	lr, #1524	; 0x5f4
    6404:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
    6408:	e340e001 	movt	lr, #1
    640c:	e59d602c 	ldr	r6, [sp, #44]	; 0x2c
    6410:	e2853e69 	add	r3, r5, #1680	; 0x690
    6414:	e1a0c005 	mov	ip, r5
    6418:	e1a00001 	mov	r0, r1
    641c:	e5c91000 	strb	r1, [r9]
    6420:	e5ca1000 	strb	r1, [sl]
    6424:	e5c81000 	strb	r1, [r8]
    6428:	e5c71000 	strb	r1, [r7]
    642c:	e5c41000 	strb	r1, [r4]
    6430:	e5ce1000 	strb	r1, [lr]
    6434:	e5821000 	str	r1, [r2]
    6438:	e5861000 	str	r1, [r6]
    643c:	e4cc0001 	strb	r0, [ip], #1
    6440:	e15c0003 	cmp	ip, r3
    6444:	1afffffc 	bne	643c <OSInit+0x110>
    6448:	e3003f90 	movw	r3, #3984	; 0xf90
    644c:	e3403001 	movt	r3, #1
    6450:	e2831c01 	add	r1, r3, #256	; 0x100
    6454:	e3a02000 	mov	r2, #0
    6458:	e4c32001 	strb	r2, [r3], #1
    645c:	e1530001 	cmp	r3, r1
    6460:	1afffffc 	bne	6458 <OSInit+0x12c>
    6464:	e3a03000 	mov	r3, #0
    6468:	e30d4e78 	movw	r4, #56952	; 0xde78
    646c:	e3404000 	movt	r4, #0
    6470:	e1a02003 	mov	r2, r3
    6474:	e0821003 	add	r1, r2, r3
    6478:	e2833001 	add	r3, r3, #1
    647c:	e3530014 	cmp	r3, #20
    6480:	e3000900 	movw	r0, #2304	; 0x900
    6484:	e1a02103 	lsl	r2, r3, #2
    6488:	e0851201 	add	r1, r5, r1, lsl #4
    648c:	e082e003 	add	lr, r2, r3
    6490:	e30dce78 	movw	ip, #56952	; 0xde78
    6494:	e3400001 	movt	r0, #1
    6498:	e340c000 	movt	ip, #0
    649c:	e085e20e 	add	lr, r5, lr, lsl #4
    64a0:	e5814048 	str	r4, [r1, #72]	; 0x48
    64a4:	e581e014 	str	lr, [r1, #20]
    64a8:	1afffff1 	bne	6474 <OSInit+0x148>
    64ac:	e300e810 	movw	lr, #2064	; 0x810
    64b0:	e340e001 	movt	lr, #1
    64b4:	e3a07000 	mov	r7, #0
    64b8:	e3006560 	movw	r6, #1376	; 0x560
    64bc:	e30055e4 	movw	r5, #1508	; 0x5e4
    64c0:	e3406001 	movt	r6, #1
    64c4:	e3405001 	movt	r5, #1
    64c8:	e28e10f0 	add	r1, lr, #240	; 0xf0
    64cc:	e1a0300e 	mov	r3, lr
    64d0:	e1a02007 	mov	r2, r7
    64d4:	e5807654 	str	r7, [r0, #1620]	; 0x654
    64d8:	e580c688 	str	ip, [r0, #1672]	; 0x688
    64dc:	e5867000 	str	r7, [r6]
    64e0:	e5850000 	str	r0, [r5]
    64e4:	e4c32001 	strb	r2, [r3], #1
    64e8:	e1530001 	cmp	r3, r1
    64ec:	1afffffc 	bne	64e4 <OSInit+0x1b8>
    64f0:	e3a03000 	mov	r3, #0
    64f4:	e1a0c003 	mov	ip, r3
    64f8:	e1a08003 	mov	r8, r3
    64fc:	e08c5003 	add	r5, ip, r3
    6500:	e2833001 	add	r3, r3, #1
    6504:	e3530009 	cmp	r3, #9
    6508:	e3002810 	movw	r2, #2064	; 0x810
    650c:	e1a0c083 	lsl	ip, r3, #1
    6510:	e08e1185 	add	r1, lr, r5, lsl #3
    6514:	e08c6003 	add	r6, ip, r3
    6518:	e30d0e78 	movw	r0, #56952	; 0xde78
    651c:	e3402001 	movt	r2, #1
    6520:	e3a07000 	mov	r7, #0
    6524:	e08e6186 	add	r6, lr, r6, lsl #3
    6528:	e7ce8185 	strb	r8, [lr, r5, lsl #3]
    652c:	e5816004 	str	r6, [r1, #4]
    6530:	e3400000 	movt	r0, #0
    6534:	e5814014 	str	r4, [r1, #20]
    6538:	1affffef 	bne	64fc <OSInit+0x1d0>
    653c:	e3003600 	movw	r3, #1536	; 0x600
    6540:	e3403001 	movt	r3, #1
    6544:	e5c270d8 	strb	r7, [r2, #216]	; 0xd8
    6548:	e58270dc 	str	r7, [r2, #220]	; 0xdc
    654c:	e58200ec 	str	r0, [r2, #236]	; 0xec
    6550:	e5832000 	str	r2, [r3]
    6554:	eb00053f 	bl	7a58 <OS_MemInit>
    6558:	e3000610 	movw	r0, #1552	; 0x610
    655c:	e3400001 	movt	r0, #1
    6560:	e3a0c003 	mov	ip, #3
    6564:	e1a01007 	mov	r1, r7
    6568:	e2802f7f 	add	r2, r0, #508	; 0x1fc
    656c:	e3a0303f 	mov	r3, #63	; 0x3f
    6570:	e58d0004 	str	r0, [sp, #4]
    6574:	e30f0fff 	movw	r0, #65535	; 0xffff
    6578:	e58dc010 	str	ip, [sp, #16]
    657c:	e58d0000 	str	r0, [sp]
    6580:	e3a00080 	mov	r0, #128	; 0x80
    6584:	e58d700c 	str	r7, [sp, #12]
    6588:	e58d0008 	str	r0, [sp, #8]
    658c:	e3060214 	movw	r0, #25108	; 0x6214
    6590:	e3400000 	movt	r0, #0
    6594:	eb0009a1 	bl	8c20 <OSTaskCreateExt>
    6598:	e3a0003f 	mov	r0, #63	; 0x3f
    659c:	e28d2037 	add	r2, sp, #55	; 0x37
    65a0:	e30d1e7c 	movw	r1, #56956	; 0xde7c
    65a4:	e3401000 	movt	r1, #0
    65a8:	eb000aaa 	bl	9058 <OSTaskNameSet>
    65ac:	eb000d75 	bl	9b88 <OSInitHookEnd>
    65b0:	e28dd03c 	add	sp, sp, #60	; 0x3c
    65b4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

000065b8 <OSIntEnter>:
    65b8:	e3003556 	movw	r3, #1366	; 0x556
    65bc:	e3403001 	movt	r3, #1
    65c0:	e5d33000 	ldrb	r3, [r3]
    65c4:	e3530001 	cmp	r3, #1
    65c8:	112fff1e 	bxne	lr
    65cc:	e3003604 	movw	r3, #1540	; 0x604
    65d0:	e3403001 	movt	r3, #1
    65d4:	e5d32000 	ldrb	r2, [r3]
    65d8:	e35200ff 	cmp	r2, #255	; 0xff
    65dc:	12822001 	addne	r2, r2, #1
    65e0:	15c32000 	strbne	r2, [r3]
    65e4:	e12fff1e 	bx	lr

000065e8 <OSIntExit>:
    65e8:	e3003556 	movw	r3, #1366	; 0x556
    65ec:	e3403001 	movt	r3, #1
    65f0:	e92d4070 	push	{r4, r5, r6, lr}
    65f4:	e24dd008 	sub	sp, sp, #8
    65f8:	e5d33000 	ldrb	r3, [r3]
    65fc:	e3530001 	cmp	r3, #1
    6600:	0a000001 	beq	660c <OSIntExit+0x24>
    6604:	e28dd008 	add	sp, sp, #8
    6608:	e8bd8070 	pop	{r4, r5, r6, pc}
    660c:	eb000c47 	bl	9730 <OS_CPU_SR_Save>
    6610:	e3003604 	movw	r3, #1540	; 0x604
    6614:	e3403001 	movt	r3, #1
    6618:	e5d32000 	ldrb	r2, [r3]
    661c:	e3520000 	cmp	r2, #0
    6620:	1a00002c 	bne	66d8 <OSIntExit+0xf0>
    6624:	e3003554 	movw	r3, #1364	; 0x554
    6628:	e3403001 	movt	r3, #1
    662c:	e5d33000 	ldrb	r3, [r3]
    6630:	e3530000 	cmp	r3, #0
    6634:	1a000024 	bne	66cc <OSIntExit+0xe4>
    6638:	e30025f4 	movw	r2, #1524	; 0x5f4
    663c:	e3402001 	movt	r2, #1
    6640:	e30d3ad8 	movw	r3, #56024	; 0xdad8
    6644:	e3403000 	movt	r3, #0
    6648:	e5d2c000 	ldrb	ip, [r2]
    664c:	e30045f8 	movw	r4, #1528	; 0x5f8
    6650:	e3404001 	movt	r4, #1
    6654:	e300255d 	movw	r2, #1373	; 0x55d
    6658:	e3402001 	movt	r2, #1
    665c:	e3001f90 	movw	r1, #3984	; 0xf90
    6660:	e7d3500c 	ldrb	r5, [r3, ip]
    6664:	e3401001 	movt	r1, #1
    6668:	e5d26000 	ldrb	r6, [r2]
    666c:	e300c55c 	movw	ip, #1372	; 0x55c
    6670:	e340c001 	movt	ip, #1
    6674:	e30025f0 	movw	r2, #1520	; 0x5f0
    6678:	e7d44005 	ldrb	r4, [r4, r5]
    667c:	e3402001 	movt	r2, #1
    6680:	e7d33004 	ldrb	r3, [r3, r4]
    6684:	e0833185 	add	r3, r3, r5, lsl #3
    6688:	e6ef3073 	uxtb	r3, r3
    668c:	e5cc3000 	strb	r3, [ip]
    6690:	e1560003 	cmp	r6, r3
    6694:	e7913103 	ldr	r3, [r1, r3, lsl #2]
    6698:	e5823000 	str	r3, [r2]
    669c:	0a00000a 	beq	66cc <OSIntExit+0xe4>
    66a0:	e30025e0 	movw	r2, #1504	; 0x5e0
    66a4:	e3402001 	movt	r2, #1
    66a8:	e593c034 	ldr	ip, [r3, #52]	; 0x34
    66ac:	e5921000 	ldr	r1, [r2]
    66b0:	e28cc001 	add	ip, ip, #1
    66b4:	e583c034 	str	ip, [r3, #52]	; 0x34
    66b8:	e2813001 	add	r3, r1, #1
    66bc:	e5823000 	str	r3, [r2]
    66c0:	e58d0004 	str	r0, [sp, #4]
    66c4:	eb000c4a 	bl	97f4 <OSIntCtxSw>
    66c8:	e59d0004 	ldr	r0, [sp, #4]
    66cc:	e28dd008 	add	sp, sp, #8
    66d0:	e8bd4070 	pop	{r4, r5, r6, lr}
    66d4:	ea000c1b 	b	9748 <OS_CPU_SR_Restore>
    66d8:	e2422001 	sub	r2, r2, #1
    66dc:	e6ef2072 	uxtb	r2, r2
    66e0:	e5c32000 	strb	r2, [r3]
    66e4:	e3520000 	cmp	r2, #0
    66e8:	1afffff7 	bne	66cc <OSIntExit+0xe4>
    66ec:	eaffffcc 	b	6624 <OSIntExit+0x3c>

000066f0 <OSSchedLock>:
    66f0:	e92d4008 	push	{r3, lr}
    66f4:	e3003556 	movw	r3, #1366	; 0x556
    66f8:	e3403001 	movt	r3, #1
    66fc:	e5d33000 	ldrb	r3, [r3]
    6700:	e3530001 	cmp	r3, #1
    6704:	18bd8008 	popne	{r3, pc}
    6708:	eb000c08 	bl	9730 <OS_CPU_SR_Save>
    670c:	e3003604 	movw	r3, #1540	; 0x604
    6710:	e3403001 	movt	r3, #1
    6714:	e5d33000 	ldrb	r3, [r3]
    6718:	e3530000 	cmp	r3, #0
    671c:	1a000005 	bne	6738 <OSSchedLock+0x48>
    6720:	e3003554 	movw	r3, #1364	; 0x554
    6724:	e3403001 	movt	r3, #1
    6728:	e5d32000 	ldrb	r2, [r3]
    672c:	e35200ff 	cmp	r2, #255	; 0xff
    6730:	12822001 	addne	r2, r2, #1
    6734:	15c32000 	strbne	r2, [r3]
    6738:	e8bd4008 	pop	{r3, lr}
    673c:	ea000c01 	b	9748 <OS_CPU_SR_Restore>

00006740 <OSStart>:
    6740:	e3003556 	movw	r3, #1366	; 0x556
    6744:	e3403001 	movt	r3, #1
    6748:	e92d0070 	push	{r4, r5, r6}
    674c:	e5d33000 	ldrb	r3, [r3]
    6750:	e3530000 	cmp	r3, #0
    6754:	0a000001 	beq	6760 <OSStart+0x20>
    6758:	e8bd0070 	pop	{r4, r5, r6}
    675c:	e12fff1e 	bx	lr
    6760:	e30025f4 	movw	r2, #1524	; 0x5f4
    6764:	e3402001 	movt	r2, #1
    6768:	e30d3ad8 	movw	r3, #56024	; 0xdad8
    676c:	e3403000 	movt	r3, #0
    6770:	e5d21000 	ldrb	r1, [r2]
    6774:	e30025f8 	movw	r2, #1528	; 0x5f8
    6778:	e3402001 	movt	r2, #1
    677c:	e3000f90 	movw	r0, #3984	; 0xf90
    6780:	e300455c 	movw	r4, #1372	; 0x55c
    6784:	e3400001 	movt	r0, #1
    6788:	e7d35001 	ldrb	r5, [r3, r1]
    678c:	e3404001 	movt	r4, #1
    6790:	e300c55d 	movw	ip, #1373	; 0x55d
    6794:	e340c001 	movt	ip, #1
    6798:	e30015f0 	movw	r1, #1520	; 0x5f0
    679c:	e3401001 	movt	r1, #1
    67a0:	e7d26005 	ldrb	r6, [r2, r5]
    67a4:	e3002608 	movw	r2, #1544	; 0x608
    67a8:	e3402001 	movt	r2, #1
    67ac:	e7d33006 	ldrb	r3, [r3, r6]
    67b0:	e0833185 	add	r3, r3, r5, lsl #3
    67b4:	e6ef3073 	uxtb	r3, r3
    67b8:	e5c43000 	strb	r3, [r4]
    67bc:	e5cc3000 	strb	r3, [ip]
    67c0:	e7903103 	ldr	r3, [r0, r3, lsl #2]
    67c4:	e5813000 	str	r3, [r1]
    67c8:	e5823000 	str	r3, [r2]
    67cc:	e8bd0070 	pop	{r4, r5, r6}
    67d0:	ea000bdf 	b	9754 <OSStartHighRdy>

000067d4 <OSTimeTick>:
    67d4:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    67d8:	eb000d2e 	bl	9c98 <OSTimeTickHook>
    67dc:	eb000bd3 	bl	9730 <OS_CPU_SR_Save>
    67e0:	e300360c 	movw	r3, #1548	; 0x60c
    67e4:	e3403001 	movt	r3, #1
    67e8:	e5932000 	ldr	r2, [r3]
    67ec:	e2822001 	add	r2, r2, #1
    67f0:	e5832000 	str	r2, [r3]
    67f4:	eb000bd3 	bl	9748 <OS_CPU_SR_Restore>
    67f8:	e3003556 	movw	r3, #1366	; 0x556
    67fc:	e3403001 	movt	r3, #1
    6800:	e5d33000 	ldrb	r3, [r3]
    6804:	e3530001 	cmp	r3, #1
    6808:	18bd80f8 	popne	{r3, r4, r5, r6, r7, pc}
    680c:	e30025dc 	movw	r2, #1500	; 0x5dc
    6810:	e3402001 	movt	r2, #1
    6814:	e5d21000 	ldrb	r1, [r2]
    6818:	e3510001 	cmp	r1, #1
    681c:	08bd80f8 	popeq	{r3, r4, r5, r6, r7, pc}
    6820:	2a00002b 	bcs	68d4 <OSTimeTick+0x100>
    6824:	e3003560 	movw	r3, #1376	; 0x560
    6828:	e3403001 	movt	r3, #1
    682c:	e5934000 	ldr	r4, [r3]
    6830:	e5d4302e 	ldrb	r3, [r4, #46]	; 0x2e
    6834:	e353003f 	cmp	r3, #63	; 0x3f
    6838:	08bd80f8 	popeq	{r3, r4, r5, r6, r7, pc}
    683c:	e30065f4 	movw	r6, #1524	; 0x5f4
    6840:	e30055f8 	movw	r5, #1528	; 0x5f8
    6844:	e3406001 	movt	r6, #1
    6848:	e3405001 	movt	r5, #1
    684c:	e3a07001 	mov	r7, #1
    6850:	eb000bb6 	bl	9730 <OS_CPU_SR_Save>
    6854:	e5943028 	ldr	r3, [r4, #40]	; 0x28
    6858:	e3530000 	cmp	r3, #0
    685c:	e2432001 	sub	r2, r3, #1
    6860:	0a000015 	beq	68bc <OSTimeTick+0xe8>
    6864:	e3520000 	cmp	r2, #0
    6868:	e5842028 	str	r2, [r4, #40]	; 0x28
    686c:	1a000012 	bne	68bc <OSTimeTick+0xe8>
    6870:	e5d4302c 	ldrb	r3, [r4, #44]	; 0x2c
    6874:	e2132037 	ands	r2, r3, #55	; 0x37
    6878:	15c4702d 	strbne	r7, [r4, #45]	; 0x2d
    687c:	120330c8 	andne	r3, r3, #200	; 0xc8
    6880:	15c4302c 	strbne	r3, [r4, #44]	; 0x2c
    6884:	e2033008 	and	r3, r3, #8
    6888:	05c4202d 	strbeq	r2, [r4, #45]	; 0x2d
    688c:	e6ef3073 	uxtb	r3, r3
    6890:	e3530000 	cmp	r3, #0
    6894:	1a000008 	bne	68bc <OSTimeTick+0xe8>
    6898:	e5d43030 	ldrb	r3, [r4, #48]	; 0x30
    689c:	e5d4c032 	ldrb	ip, [r4, #50]	; 0x32
    68a0:	e5d42031 	ldrb	r2, [r4, #49]	; 0x31
    68a4:	e5d6e000 	ldrb	lr, [r6]
    68a8:	e7d51003 	ldrb	r1, [r5, r3]
    68ac:	e18ec00c 	orr	ip, lr, ip
    68b0:	e5c6c000 	strb	ip, [r6]
    68b4:	e1812002 	orr	r2, r1, r2
    68b8:	e7c52003 	strb	r2, [r5, r3]
    68bc:	e5944014 	ldr	r4, [r4, #20]
    68c0:	eb000ba0 	bl	9748 <OS_CPU_SR_Restore>
    68c4:	e5d4302e 	ldrb	r3, [r4, #46]	; 0x2e
    68c8:	e353003f 	cmp	r3, #63	; 0x3f
    68cc:	1affffdf 	bne	6850 <OSTimeTick+0x7c>
    68d0:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    68d4:	e3510002 	cmp	r1, #2
    68d8:	13a03000 	movne	r3, #0
    68dc:	e5c23000 	strb	r3, [r2]
    68e0:	eaffffcf 	b	6824 <OSTimeTick+0x50>

000068e4 <OSVersion>:
    68e4:	e3070217 	movw	r0, #29207	; 0x7217
    68e8:	e12fff1e 	bx	lr

000068ec <OS_Dummy>:
    68ec:	e12fff1e 	bx	lr

000068f0 <OS_EventTaskWait>:
    68f0:	e3003608 	movw	r3, #1544	; 0x608
    68f4:	e3403001 	movt	r3, #1
    68f8:	e92d0030 	push	{r4, r5}
    68fc:	e30025f8 	movw	r2, #1528	; 0x5f8
    6900:	e5933000 	ldr	r3, [r3]
    6904:	e3402001 	movt	r2, #1
    6908:	e5d31030 	ldrb	r1, [r3, #48]	; 0x30
    690c:	e583001c 	str	r0, [r3, #28]
    6910:	e0801001 	add	r1, r0, r1
    6914:	e5d34031 	ldrb	r4, [r3, #49]	; 0x31
    6918:	e5d0c00a 	ldrb	ip, [r0, #10]
    691c:	e5d1500b 	ldrb	r5, [r1, #11]
    6920:	e1854004 	orr	r4, r5, r4
    6924:	e5c1400b 	strb	r4, [r1, #11]
    6928:	e5d31032 	ldrb	r1, [r3, #50]	; 0x32
    692c:	e181100c 	orr	r1, r1, ip
    6930:	e5c0100a 	strb	r1, [r0, #10]
    6934:	e5d30030 	ldrb	r0, [r3, #48]	; 0x30
    6938:	e5d3c031 	ldrb	ip, [r3, #49]	; 0x31
    693c:	e7d21000 	ldrb	r1, [r2, r0]
    6940:	e1c1100c 	bic	r1, r1, ip
    6944:	e7c21000 	strb	r1, [r2, r0]
    6948:	e3510000 	cmp	r1, #0
    694c:	1a000005 	bne	6968 <OS_EventTaskWait+0x78>
    6950:	e30025f4 	movw	r2, #1524	; 0x5f4
    6954:	e3402001 	movt	r2, #1
    6958:	e5d31032 	ldrb	r1, [r3, #50]	; 0x32
    695c:	e5d23000 	ldrb	r3, [r2]
    6960:	e1c33001 	bic	r3, r3, r1
    6964:	e5c23000 	strb	r3, [r2]
    6968:	e8bd0030 	pop	{r4, r5}
    696c:	e12fff1e 	bx	lr

00006970 <OS_EventTaskWaitMulti>:
    6970:	e3003608 	movw	r3, #1544	; 0x608
    6974:	e3403001 	movt	r3, #1
    6978:	e92d0030 	push	{r4, r5}
    697c:	e5932000 	ldr	r2, [r3]
    6980:	e3a03000 	mov	r3, #0
    6984:	e5820020 	str	r0, [r2, #32]
    6988:	e582301c 	str	r3, [r2, #28]
    698c:	e5903000 	ldr	r3, [r0]
    6990:	e3530000 	cmp	r3, #0
    6994:	0a00000c 	beq	69cc <OS_EventTaskWaitMulti+0x5c>
    6998:	e5d21030 	ldrb	r1, [r2, #48]	; 0x30
    699c:	e5d24031 	ldrb	r4, [r2, #49]	; 0x31
    69a0:	e0831001 	add	r1, r3, r1
    69a4:	e5d3c00a 	ldrb	ip, [r3, #10]
    69a8:	e5d1500b 	ldrb	r5, [r1, #11]
    69ac:	e1854004 	orr	r4, r5, r4
    69b0:	e5c1400b 	strb	r4, [r1, #11]
    69b4:	e5d21032 	ldrb	r1, [r2, #50]	; 0x32
    69b8:	e181100c 	orr	r1, r1, ip
    69bc:	e5c3100a 	strb	r1, [r3, #10]
    69c0:	e5b03004 	ldr	r3, [r0, #4]!
    69c4:	e3530000 	cmp	r3, #0
    69c8:	1afffff2 	bne	6998 <OS_EventTaskWaitMulti+0x28>
    69cc:	e5d20030 	ldrb	r0, [r2, #48]	; 0x30
    69d0:	e30035f8 	movw	r3, #1528	; 0x5f8
    69d4:	e3403001 	movt	r3, #1
    69d8:	e5d2c031 	ldrb	ip, [r2, #49]	; 0x31
    69dc:	e7d31000 	ldrb	r1, [r3, r0]
    69e0:	e1c1100c 	bic	r1, r1, ip
    69e4:	e7c31000 	strb	r1, [r3, r0]
    69e8:	e3510000 	cmp	r1, #0
    69ec:	1a000005 	bne	6a08 <OS_EventTaskWaitMulti+0x98>
    69f0:	e30035f4 	movw	r3, #1524	; 0x5f4
    69f4:	e3403001 	movt	r3, #1
    69f8:	e5d21032 	ldrb	r1, [r2, #50]	; 0x32
    69fc:	e5d32000 	ldrb	r2, [r3]
    6a00:	e1c22001 	bic	r2, r2, r1
    6a04:	e5c32000 	strb	r2, [r3]
    6a08:	e8bd0030 	pop	{r4, r5}
    6a0c:	e12fff1e 	bx	lr

00006a10 <OS_EventTaskRemove>:
    6a10:	e5d02030 	ldrb	r2, [r0, #48]	; 0x30
    6a14:	e5d0c031 	ldrb	ip, [r0, #49]	; 0x31
    6a18:	e0812002 	add	r2, r1, r2
    6a1c:	e5d2300b 	ldrb	r3, [r2, #11]
    6a20:	e1c3300c 	bic	r3, r3, ip
    6a24:	e5c2300b 	strb	r3, [r2, #11]
    6a28:	e3530000 	cmp	r3, #0
    6a2c:	05d1300a 	ldrbeq	r3, [r1, #10]
    6a30:	05d02032 	ldrbeq	r2, [r0, #50]	; 0x32
    6a34:	01c33002 	biceq	r3, r3, r2
    6a38:	05c1300a 	strbeq	r3, [r1, #10]
    6a3c:	e12fff1e 	bx	lr

00006a40 <OS_EventTaskRemoveMulti>:
    6a40:	e5913000 	ldr	r3, [r1]
    6a44:	e92d0030 	push	{r4, r5}
    6a48:	e3530000 	cmp	r3, #0
    6a4c:	e5d0c030 	ldrb	ip, [r0, #48]	; 0x30
    6a50:	e5d05032 	ldrb	r5, [r0, #50]	; 0x32
    6a54:	e5d04031 	ldrb	r4, [r0, #49]	; 0x31
    6a58:	0a00000d 	beq	6a94 <OS_EventTaskRemoveMulti+0x54>
    6a5c:	e1e04004 	mvn	r4, r4
    6a60:	e1e05005 	mvn	r5, r5
    6a64:	e6ef4074 	uxtb	r4, r4
    6a68:	e083000c 	add	r0, r3, ip
    6a6c:	e5d0200b 	ldrb	r2, [r0, #11]
    6a70:	e0042002 	and	r2, r4, r2
    6a74:	e5c0200b 	strb	r2, [r0, #11]
    6a78:	e3520000 	cmp	r2, #0
    6a7c:	05d3200a 	ldrbeq	r2, [r3, #10]
    6a80:	00052002 	andeq	r2, r5, r2
    6a84:	05c3200a 	strbeq	r2, [r3, #10]
    6a88:	e5b13004 	ldr	r3, [r1, #4]!
    6a8c:	e3530000 	cmp	r3, #0
    6a90:	1afffff4 	bne	6a68 <OS_EventTaskRemoveMulti+0x28>
    6a94:	e8bd0030 	pop	{r4, r5}
    6a98:	e12fff1e 	bx	lr

00006a9c <OS_EventTaskRdy>:
    6a9c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    6aa0:	e1a05000 	mov	r5, r0
    6aa4:	e5d5c00a 	ldrb	ip, [r5, #10]
    6aa8:	e30d0ad8 	movw	r0, #56024	; 0xdad8
    6aac:	e3400000 	movt	r0, #0
    6ab0:	e3004f90 	movw	r4, #3984	; 0xf90
    6ab4:	e3404001 	movt	r4, #1
    6ab8:	e3a07000 	mov	r7, #0
    6abc:	e7d0c00c 	ldrb	ip, [r0, ip]
    6ac0:	e085600c 	add	r6, r5, ip
    6ac4:	e5d6600b 	ldrb	r6, [r6, #11]
    6ac8:	e7d06006 	ldrb	r6, [r0, r6]
    6acc:	e086618c 	add	r6, r6, ip, lsl #3
    6ad0:	e6ef6076 	uxtb	r6, r6
    6ad4:	e7944106 	ldr	r4, [r4, r6, lsl #2]
    6ad8:	e5d4002c 	ldrb	r0, [r4, #44]	; 0x2c
    6adc:	e5841024 	str	r1, [r4, #36]	; 0x24
    6ae0:	e1c02002 	bic	r2, r0, r2
    6ae4:	e5847028 	str	r7, [r4, #40]	; 0x28
    6ae8:	e2021008 	and	r1, r2, #8
    6aec:	e5c4202c 	strb	r2, [r4, #44]	; 0x2c
    6af0:	e5c4302d 	strb	r3, [r4, #45]	; 0x2d
    6af4:	e6ef1071 	uxtb	r1, r1
    6af8:	e1510007 	cmp	r1, r7
    6afc:	1a00000b 	bne	6b30 <OS_EventTaskRdy+0x94>
    6b00:	e30025f4 	movw	r2, #1524	; 0x5f4
    6b04:	e30035f8 	movw	r3, #1528	; 0x5f8
    6b08:	e3402001 	movt	r2, #1
    6b0c:	e3403001 	movt	r3, #1
    6b10:	e5d47032 	ldrb	r7, [r4, #50]	; 0x32
    6b14:	e5d28000 	ldrb	r8, [r2]
    6b18:	e7d3000c 	ldrb	r0, [r3, ip]
    6b1c:	e5d41031 	ldrb	r1, [r4, #49]	; 0x31
    6b20:	e1887007 	orr	r7, r8, r7
    6b24:	e5c27000 	strb	r7, [r2]
    6b28:	e1802001 	orr	r2, r0, r1
    6b2c:	e7c3200c 	strb	r2, [r3, ip]
    6b30:	e5d42030 	ldrb	r2, [r4, #48]	; 0x30
    6b34:	e5d41031 	ldrb	r1, [r4, #49]	; 0x31
    6b38:	e0852002 	add	r2, r5, r2
    6b3c:	e2822008 	add	r2, r2, #8
    6b40:	e5d23003 	ldrb	r3, [r2, #3]
    6b44:	e1c33001 	bic	r3, r3, r1
    6b48:	e5c23003 	strb	r3, [r2, #3]
    6b4c:	e3530000 	cmp	r3, #0
    6b50:	05d5300a 	ldrbeq	r3, [r5, #10]
    6b54:	05d42032 	ldrbeq	r2, [r4, #50]	; 0x32
    6b58:	01c33002 	biceq	r3, r3, r2
    6b5c:	05c5300a 	strbeq	r3, [r5, #10]
    6b60:	e5941020 	ldr	r1, [r4, #32]
    6b64:	e3510000 	cmp	r1, #0
    6b68:	0a000002 	beq	6b78 <OS_EventTaskRdy+0xdc>
    6b6c:	e1a00004 	mov	r0, r4
    6b70:	ebffffb2 	bl	6a40 <OS_EventTaskRemoveMulti>
    6b74:	e584501c 	str	r5, [r4, #28]
    6b78:	e1a00006 	mov	r0, r6
    6b7c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

00006b80 <OS_EventWaitListInit>:
    6b80:	e3a03000 	mov	r3, #0
    6b84:	e5c0300a 	strb	r3, [r0, #10]
    6b88:	e5c0300b 	strb	r3, [r0, #11]
    6b8c:	e5c0300c 	strb	r3, [r0, #12]
    6b90:	e5c0300d 	strb	r3, [r0, #13]
    6b94:	e5c0300e 	strb	r3, [r0, #14]
    6b98:	e5c0300f 	strb	r3, [r0, #15]
    6b9c:	e5c03010 	strb	r3, [r0, #16]
    6ba0:	e5c03011 	strb	r3, [r0, #17]
    6ba4:	e5c03012 	strb	r3, [r0, #18]
    6ba8:	e12fff1e 	bx	lr

00006bac <OS_MemClr>:
    6bac:	e3510000 	cmp	r1, #0
    6bb0:	012fff1e 	bxeq	lr
    6bb4:	e3a03000 	mov	r3, #0
    6bb8:	e2411001 	sub	r1, r1, #1
    6bbc:	e4c03001 	strb	r3, [r0], #1
    6bc0:	e6ff1071 	uxth	r1, r1
    6bc4:	e3510000 	cmp	r1, #0
    6bc8:	1afffffa 	bne	6bb8 <OS_MemClr+0xc>
    6bcc:	e12fff1e 	bx	lr

00006bd0 <OS_MemCopy>:
    6bd0:	e3520000 	cmp	r2, #0
    6bd4:	012fff1e 	bxeq	lr
    6bd8:	e2411001 	sub	r1, r1, #1
    6bdc:	e2422001 	sub	r2, r2, #1
    6be0:	e5f13001 	ldrb	r3, [r1, #1]!
    6be4:	e6ff2072 	uxth	r2, r2
    6be8:	e3520000 	cmp	r2, #0
    6bec:	e4c03001 	strb	r3, [r0], #1
    6bf0:	1afffff9 	bne	6bdc <OS_MemCopy+0xc>
    6bf4:	e12fff1e 	bx	lr

00006bf8 <OS_Sched>:
    6bf8:	e92d4070 	push	{r4, r5, r6, lr}
    6bfc:	e24dd008 	sub	sp, sp, #8
    6c00:	eb000aca 	bl	9730 <OS_CPU_SR_Save>
    6c04:	e3003604 	movw	r3, #1540	; 0x604
    6c08:	e3403001 	movt	r3, #1
    6c0c:	e5d33000 	ldrb	r3, [r3]
    6c10:	e3530000 	cmp	r3, #0
    6c14:	1a000029 	bne	6cc0 <OS_Sched+0xc8>
    6c18:	e3003554 	movw	r3, #1364	; 0x554
    6c1c:	e3403001 	movt	r3, #1
    6c20:	e5d33000 	ldrb	r3, [r3]
    6c24:	e3530000 	cmp	r3, #0
    6c28:	1a000024 	bne	6cc0 <OS_Sched+0xc8>
    6c2c:	e30025f4 	movw	r2, #1524	; 0x5f4
    6c30:	e3402001 	movt	r2, #1
    6c34:	e30d3ad8 	movw	r3, #56024	; 0xdad8
    6c38:	e3403000 	movt	r3, #0
    6c3c:	e5d2c000 	ldrb	ip, [r2]
    6c40:	e30045f8 	movw	r4, #1528	; 0x5f8
    6c44:	e3404001 	movt	r4, #1
    6c48:	e300255d 	movw	r2, #1373	; 0x55d
    6c4c:	e3402001 	movt	r2, #1
    6c50:	e3001f90 	movw	r1, #3984	; 0xf90
    6c54:	e7d3500c 	ldrb	r5, [r3, ip]
    6c58:	e3401001 	movt	r1, #1
    6c5c:	e5d26000 	ldrb	r6, [r2]
    6c60:	e300c55c 	movw	ip, #1372	; 0x55c
    6c64:	e340c001 	movt	ip, #1
    6c68:	e30025f0 	movw	r2, #1520	; 0x5f0
    6c6c:	e7d44005 	ldrb	r4, [r4, r5]
    6c70:	e3402001 	movt	r2, #1
    6c74:	e7d33004 	ldrb	r3, [r3, r4]
    6c78:	e0833185 	add	r3, r3, r5, lsl #3
    6c7c:	e6ef3073 	uxtb	r3, r3
    6c80:	e5cc3000 	strb	r3, [ip]
    6c84:	e1560003 	cmp	r6, r3
    6c88:	e7913103 	ldr	r3, [r1, r3, lsl #2]
    6c8c:	e5823000 	str	r3, [r2]
    6c90:	0a00000a 	beq	6cc0 <OS_Sched+0xc8>
    6c94:	e30025e0 	movw	r2, #1504	; 0x5e0
    6c98:	e3402001 	movt	r2, #1
    6c9c:	e593c034 	ldr	ip, [r3, #52]	; 0x34
    6ca0:	e5921000 	ldr	r1, [r2]
    6ca4:	e28cc001 	add	ip, ip, #1
    6ca8:	e583c034 	str	ip, [r3, #52]	; 0x34
    6cac:	e2813001 	add	r3, r1, #1
    6cb0:	e5823000 	str	r3, [r2]
    6cb4:	e58d0004 	str	r0, [sp, #4]
    6cb8:	eb000ab2 	bl	9788 <OSCtxSw>
    6cbc:	e59d0004 	ldr	r0, [sp, #4]
    6cc0:	e28dd008 	add	sp, sp, #8
    6cc4:	e8bd4070 	pop	{r4, r5, r6, lr}
    6cc8:	ea000a9e 	b	9748 <OS_CPU_SR_Restore>

00006ccc <OSSchedUnlock>:
    6ccc:	e92d4008 	push	{r3, lr}
    6cd0:	e3003556 	movw	r3, #1366	; 0x556
    6cd4:	e3403001 	movt	r3, #1
    6cd8:	e5d33000 	ldrb	r3, [r3]
    6cdc:	e3530001 	cmp	r3, #1
    6ce0:	18bd8008 	popne	{r3, pc}
    6ce4:	eb000a91 	bl	9730 <OS_CPU_SR_Save>
    6ce8:	e3003604 	movw	r3, #1540	; 0x604
    6cec:	e3403001 	movt	r3, #1
    6cf0:	e5d33000 	ldrb	r3, [r3]
    6cf4:	e3530000 	cmp	r3, #0
    6cf8:	1a00000c 	bne	6d30 <OSSchedUnlock+0x64>
    6cfc:	e3003554 	movw	r3, #1364	; 0x554
    6d00:	e3403001 	movt	r3, #1
    6d04:	e5d32000 	ldrb	r2, [r3]
    6d08:	e3520000 	cmp	r2, #0
    6d0c:	0a000007 	beq	6d30 <OSSchedUnlock+0x64>
    6d10:	e2422001 	sub	r2, r2, #1
    6d14:	e6ef2072 	uxtb	r2, r2
    6d18:	e5c32000 	strb	r2, [r3]
    6d1c:	e3520000 	cmp	r2, #0
    6d20:	1a000002 	bne	6d30 <OSSchedUnlock+0x64>
    6d24:	eb000a87 	bl	9748 <OS_CPU_SR_Restore>
    6d28:	e8bd4008 	pop	{r3, lr}
    6d2c:	eaffffb1 	b	6bf8 <OS_Sched>
    6d30:	e8bd4008 	pop	{r3, lr}
    6d34:	ea000a83 	b	9748 <OS_CPU_SR_Restore>

00006d38 <OSEventPendMulti>:
    6d38:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    6d3c:	e1a06001 	mov	r6, r1
    6d40:	e3a01000 	mov	r1, #0
    6d44:	e5861000 	str	r1, [r6]
    6d48:	e5904000 	ldr	r4, [r0]
    6d4c:	e24dd00c 	sub	sp, sp, #12
    6d50:	e1a05000 	mov	r5, r0
    6d54:	e1540001 	cmp	r4, r1
    6d58:	0a00000f 	beq	6d9c <OSEventPendMulti+0x64>
    6d5c:	e1a01004 	mov	r1, r4
    6d60:	e5d11000 	ldrb	r1, [r1]
    6d64:	e3510001 	cmp	r1, #1
    6d68:	0a000008 	beq	6d90 <OSEventPendMulti+0x58>
    6d6c:	e3510003 	cmp	r1, #3
    6d70:	0a000006 	beq	6d90 <OSEventPendMulti+0x58>
    6d74:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
    6d78:	e3a07000 	mov	r7, #0
    6d7c:	e3a03001 	mov	r3, #1
    6d80:	e5c23000 	strb	r3, [r2]
    6d84:	e1a00007 	mov	r0, r7
    6d88:	e28dd00c 	add	sp, sp, #12
    6d8c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    6d90:	e5b01004 	ldr	r1, [r0, #4]!
    6d94:	e3510000 	cmp	r1, #0
    6d98:	1afffff0 	bne	6d60 <OSEventPendMulti+0x28>
    6d9c:	e3001604 	movw	r1, #1540	; 0x604
    6da0:	e3401001 	movt	r1, #1
    6da4:	e5d17000 	ldrb	r7, [r1]
    6da8:	e3570000 	cmp	r7, #0
    6dac:	1a000008 	bne	6dd4 <OSEventPendMulti+0x9c>
    6db0:	e3001554 	movw	r1, #1364	; 0x554
    6db4:	e3401001 	movt	r1, #1
    6db8:	e5d18000 	ldrb	r8, [r1]
    6dbc:	e3580000 	cmp	r8, #0
    6dc0:	0a000008 	beq	6de8 <OSEventPendMulti+0xb0>
    6dc4:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
    6dc8:	e3a0300d 	mov	r3, #13
    6dcc:	e5c23000 	strb	r3, [r2]
    6dd0:	eaffffeb 	b	6d84 <OSEventPendMulti+0x4c>
    6dd4:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
    6dd8:	e3a03002 	mov	r3, #2
    6ddc:	e3a07000 	mov	r7, #0
    6de0:	e5c23000 	strb	r3, [r2]
    6de4:	eaffffe6 	b	6d84 <OSEventPendMulti+0x4c>
    6de8:	e88d000c 	stm	sp, {r2, r3}
    6dec:	eb000a4f 	bl	9730 <OS_CPU_SR_Save>
    6df0:	e3540000 	cmp	r4, #0
    6df4:	e89d000c 	ldm	sp, {r2, r3}
    6df8:	e1a0a000 	mov	sl, r0
    6dfc:	0a000075 	beq	6fd8 <OSEventPendMulti+0x2a0>
    6e00:	e1a0c008 	mov	ip, r8
    6e04:	e1a0e005 	mov	lr, r5
    6e08:	e1a07008 	mov	r7, r8
    6e0c:	e1a00008 	mov	r0, r8
    6e10:	e1a09008 	mov	r9, r8
    6e14:	e5d41000 	ldrb	r1, [r4]
    6e18:	e3510001 	cmp	r1, #1
    6e1c:	0a000009 	beq	6e48 <OSEventPendMulti+0x110>
    6e20:	e3510003 	cmp	r1, #3
    6e24:	0a000045 	beq	6f40 <OSEventPendMulti+0x208>
    6e28:	e1a0000a 	mov	r0, sl
    6e2c:	eb000a45 	bl	9748 <OS_CPU_SR_Restore>
    6e30:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
    6e34:	e3a03000 	mov	r3, #0
    6e38:	e5863000 	str	r3, [r6]
    6e3c:	e3a03001 	mov	r3, #1
    6e40:	e5c23000 	strb	r3, [r2]
    6e44:	eaffffce 	b	6d84 <OSEventPendMulti+0x4c>
    6e48:	e5948004 	ldr	r8, [r4, #4]
    6e4c:	e287b001 	add	fp, r7, #1
    6e50:	e3580000 	cmp	r8, #0
    6e54:	038cc002 	orreq	ip, ip, #2
    6e58:	16ff707b 	uxthne	r7, fp
    6e5c:	11a00001 	movne	r0, r1
    6e60:	14828004 	strne	r8, [r2], #4
    6e64:	06efc07c 	uxtbeq	ip, ip
    6e68:	15849004 	strne	r9, [r4, #4]
    6e6c:	14864004 	strne	r4, [r6], #4
    6e70:	e5be4004 	ldr	r4, [lr, #4]!
    6e74:	e3540000 	cmp	r4, #0
    6e78:	1affffe5 	bne	6e14 <OSEventPendMulti+0xdc>
    6e7c:	e3500001 	cmp	r0, #1
    6e80:	0a00005d 	beq	6ffc <OSEventPendMulti+0x2c4>
    6e84:	e3008608 	movw	r8, #1544	; 0x608
    6e88:	e3408001 	movt	r8, #1
    6e8c:	e3a04000 	mov	r4, #0
    6e90:	e1a00005 	mov	r0, r5
    6e94:	e5981000 	ldr	r1, [r8]
    6e98:	e5d1e02c 	ldrb	lr, [r1, #44]	; 0x2c
    6e9c:	e5813028 	str	r3, [r1, #40]	; 0x28
    6ea0:	e5c1402d 	strb	r4, [r1, #45]	; 0x2d
    6ea4:	e1e03c8e 	mvn	r3, lr, lsl #25
    6ea8:	e1e03ca3 	mvn	r3, r3, lsr #25
    6eac:	e18c3003 	orr	r3, ip, r3
    6eb0:	e5c1302c 	strb	r3, [r1, #44]	; 0x2c
    6eb4:	e58d2000 	str	r2, [sp]
    6eb8:	ebfffeac 	bl	6970 <OS_EventTaskWaitMulti>
    6ebc:	e1a0000a 	mov	r0, sl
    6ec0:	eb000a20 	bl	9748 <OS_CPU_SR_Restore>
    6ec4:	ebffff4b 	bl	6bf8 <OS_Sched>
    6ec8:	eb000a18 	bl	9730 <OS_CPU_SR_Save>
    6ecc:	e5983000 	ldr	r3, [r8]
    6ed0:	e59d2000 	ldr	r2, [sp]
    6ed4:	e5d3102d 	ldrb	r1, [r3, #45]	; 0x2d
    6ed8:	e1510004 	cmp	r1, r4
    6edc:	e1a0a000 	mov	sl, r0
    6ee0:	0a000022 	beq	6f70 <OSEventPendMulti+0x238>
    6ee4:	e3510002 	cmp	r1, #2
    6ee8:	11a00003 	movne	r0, r3
    6eec:	0a00001f 	beq	6f70 <OSEventPendMulti+0x238>
    6ef0:	e1a01005 	mov	r1, r5
    6ef4:	e58d2000 	str	r2, [sp]
    6ef8:	ebfffed0 	bl	6a40 <OS_EventTaskRemoveMulti>
    6efc:	e59d2000 	ldr	r2, [sp]
    6f00:	e1a05006 	mov	r5, r6
    6f04:	e5980000 	ldr	r0, [r8]
    6f08:	e5d0302d 	ldrb	r3, [r0, #45]	; 0x2d
    6f0c:	e3530000 	cmp	r3, #0
    6f10:	1a00001f 	bne	6f94 <OSEventPendMulti+0x25c>
    6f14:	e5d41000 	ldrb	r1, [r4]
    6f18:	e3510001 	cmp	r1, #1
    6f1c:	2a00003c 	bcs	7014 <OSEventPendMulti+0x2dc>
    6f20:	e1a0000a 	mov	r0, sl
    6f24:	eb000a07 	bl	9748 <OS_CPU_SR_Restore>
    6f28:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
    6f2c:	e3a03000 	mov	r3, #0
    6f30:	e5853000 	str	r3, [r5]
    6f34:	e3a03001 	mov	r3, #1
    6f38:	e5c23000 	strb	r3, [r2]
    6f3c:	eaffff90 	b	6d84 <OSEventPendMulti+0x4c>
    6f40:	e1d410b8 	ldrh	r1, [r4, #8]
    6f44:	e287b001 	add	fp, r7, #1
    6f48:	e38c8001 	orr	r8, ip, #1
    6f4c:	e3510000 	cmp	r1, #0
    6f50:	e2411001 	sub	r1, r1, #1
    6f54:	16ff707b 	uxthne	r7, fp
    6f58:	11c410b8 	strhne	r1, [r4, #8]
    6f5c:	13a00001 	movne	r0, #1
    6f60:	14864004 	strne	r4, [r6], #4
    6f64:	06efc078 	uxtbeq	ip, r8
    6f68:	14829004 	strne	r9, [r2], #4
    6f6c:	eaffffbf 	b	6e70 <OSEventPendMulti+0x138>
    6f70:	e593401c 	ldr	r4, [r3, #28]
    6f74:	e3540000 	cmp	r4, #0
    6f78:	0a00002e 	beq	7038 <OSEventPendMulti+0x300>
    6f7c:	e1a05006 	mov	r5, r6
    6f80:	e3a03000 	mov	r3, #0
    6f84:	e4854004 	str	r4, [r5], #4
    6f88:	e3a07001 	mov	r7, #1
    6f8c:	e5863004 	str	r3, [r6, #4]
    6f90:	eaffffdb 	b	6f04 <OSEventPendMulti+0x1cc>
    6f94:	e3530002 	cmp	r3, #2
    6f98:	0a000011 	beq	6fe4 <OSEventPendMulti+0x2ac>
    6f9c:	e3a03000 	mov	r3, #0
    6fa0:	e5823000 	str	r3, [r2]
    6fa4:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
    6fa8:	e3a0300a 	mov	r3, #10
    6fac:	e5c23000 	strb	r3, [r2]
    6fb0:	e5983000 	ldr	r3, [r8]
    6fb4:	e3a02000 	mov	r2, #0
    6fb8:	e1a0000a 	mov	r0, sl
    6fbc:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    6fc0:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    6fc4:	e583201c 	str	r2, [r3, #28]
    6fc8:	e5832020 	str	r2, [r3, #32]
    6fcc:	e5832024 	str	r2, [r3, #36]	; 0x24
    6fd0:	eb0009dc 	bl	9748 <OS_CPU_SR_Restore>
    6fd4:	eaffff6a 	b	6d84 <OSEventPendMulti+0x4c>
    6fd8:	e1a0c004 	mov	ip, r4
    6fdc:	e1a07004 	mov	r7, r4
    6fe0:	eaffffa7 	b	6e84 <OSEventPendMulti+0x14c>
    6fe4:	e3a03000 	mov	r3, #0
    6fe8:	e5823000 	str	r3, [r2]
    6fec:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
    6ff0:	e3a0300e 	mov	r3, #14
    6ff4:	e5c23000 	strb	r3, [r2]
    6ff8:	eaffffec 	b	6fb0 <OSEventPendMulti+0x278>
    6ffc:	e5864000 	str	r4, [r6]
    7000:	e1a0000a 	mov	r0, sl
    7004:	eb0009cf 	bl	9748 <OS_CPU_SR_Restore>
    7008:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
    700c:	e5c34000 	strb	r4, [r3]
    7010:	eaffff5b 	b	6d84 <OSEventPendMulti+0x4c>
    7014:	e3510002 	cmp	r1, #2
    7018:	9a00000a 	bls	7048 <OSEventPendMulti+0x310>
    701c:	e3510003 	cmp	r1, #3
    7020:	1affffbe 	bne	6f20 <OSEventPendMulti+0x1e8>
    7024:	e5823000 	str	r3, [r2]
    7028:	e3a03000 	mov	r3, #0
    702c:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
    7030:	e5c23000 	strb	r3, [r2]
    7034:	eaffffdd 	b	6fb0 <OSEventPendMulti+0x278>
    7038:	e3a01001 	mov	r1, #1
    703c:	e1a00003 	mov	r0, r3
    7040:	e5c3102d 	strb	r1, [r3, #45]	; 0x2d
    7044:	eaffffa9 	b	6ef0 <OSEventPendMulti+0x1b8>
    7048:	e5903024 	ldr	r3, [r0, #36]	; 0x24
    704c:	eafffff4 	b	7024 <OSEventPendMulti+0x2ec>

00007050 <OS_StrLen>:
    7050:	e5d03000 	ldrb	r3, [r0]
    7054:	e3530000 	cmp	r3, #0
    7058:	0a000007 	beq	707c <OS_StrLen+0x2c>
    705c:	e1a03000 	mov	r3, r0
    7060:	e3a00000 	mov	r0, #0
    7064:	e5f32001 	ldrb	r2, [r3, #1]!
    7068:	e2800001 	add	r0, r0, #1
    706c:	e3520000 	cmp	r2, #0
    7070:	e6ef0070 	uxtb	r0, r0
    7074:	1afffffa 	bne	7064 <OS_StrLen+0x14>
    7078:	e12fff1e 	bx	lr
    707c:	e1a00003 	mov	r0, r3
    7080:	e12fff1e 	bx	lr

00007084 <OS_TaskStatStkChk>:
    7084:	e92d4030 	push	{r4, r5, lr}
    7088:	e3005f90 	movw	r5, #3984	; 0xf90
    708c:	e24dd00c 	sub	sp, sp, #12
    7090:	e3405001 	movt	r5, #1
    7094:	e3a04000 	mov	r4, #0
    7098:	e6ef0074 	uxtb	r0, r4
    709c:	e1a0100d 	mov	r1, sp
    70a0:	eb000847 	bl	91c4 <OSTaskStkChk>
    70a4:	e3500000 	cmp	r0, #0
    70a8:	1a00000a 	bne	70d8 <OS_TaskStatStkChk+0x54>
    70ac:	e7953104 	ldr	r3, [r5, r4, lsl #2]
    70b0:	e3530000 	cmp	r3, #0
    70b4:	0a000007 	beq	70d8 <OS_TaskStatStkChk+0x54>
    70b8:	e3530001 	cmp	r3, #1
    70bc:	0a000005 	beq	70d8 <OS_TaskStatStkChk+0x54>
    70c0:	e593100c 	ldr	r1, [r3, #12]
    70c4:	e59d0004 	ldr	r0, [sp, #4]
    70c8:	e5932008 	ldr	r2, [r3, #8]
    70cc:	e5830044 	str	r0, [r3, #68]	; 0x44
    70d0:	e0822101 	add	r2, r2, r1, lsl #2
    70d4:	e5832040 	str	r2, [r3, #64]	; 0x40
    70d8:	e2844001 	add	r4, r4, #1
    70dc:	e3540040 	cmp	r4, #64	; 0x40
    70e0:	1affffec 	bne	7098 <OS_TaskStatStkChk+0x14>
    70e4:	e28dd00c 	add	sp, sp, #12
    70e8:	e8bd8030 	pop	{r4, r5, pc}

000070ec <OS_TCBInit>:
    70ec:	e92d45f8 	push	{r3, r4, r5, r6, r7, r8, sl, lr}
    70f0:	e1a06000 	mov	r6, r0
    70f4:	e1a0a001 	mov	sl, r1
    70f8:	e1a08002 	mov	r8, r2
    70fc:	e1a07003 	mov	r7, r3
    7100:	eb00098a 	bl	9730 <OS_CPU_SR_Save>
    7104:	e300c5e4 	movw	ip, #1508	; 0x5e4
    7108:	e340c001 	movt	ip, #1
    710c:	e59c4000 	ldr	r4, [ip]
    7110:	e3540000 	cmp	r4, #0
    7114:	0a00004d 	beq	7250 <OS_TCBInit+0x164>
    7118:	e5943014 	ldr	r3, [r4, #20]
    711c:	e3a05000 	mov	r5, #0
    7120:	e58c3000 	str	r3, [ip]
    7124:	eb000987 	bl	9748 <OS_CPU_SR_Restore>
    7128:	e584a000 	str	sl, [r4]
    712c:	e206c007 	and	ip, r6, #7
    7130:	e59da024 	ldr	sl, [sp, #36]	; 0x24
    7134:	e1a031a6 	lsr	r3, r6, #3
    7138:	e5848008 	str	r8, [r4, #8]
    713c:	e3a02001 	mov	r2, #1
    7140:	e1dd82b8 	ldrh	r8, [sp, #40]	; 0x28
    7144:	e1a0e312 	lsl	lr, r2, r3
    7148:	e584a004 	str	sl, [r4, #4]
    714c:	e1a02c12 	lsl	r2, r2, ip
    7150:	e59da020 	ldr	sl, [sp, #32]
    7154:	e1a00004 	mov	r0, r4
    7158:	e5c4c02f 	strb	ip, [r4, #47]	; 0x2f
    715c:	e30d1e78 	movw	r1, #56952	; 0xde78
    7160:	e5c4e032 	strb	lr, [r4, #50]	; 0x32
    7164:	e3401000 	movt	r1, #0
    7168:	e5c42031 	strb	r2, [r4, #49]	; 0x31
    716c:	e5841048 	str	r1, [r4, #72]	; 0x48
    7170:	e5c43030 	strb	r3, [r4, #48]	; 0x30
    7174:	e5c4602e 	strb	r6, [r4, #46]	; 0x2e
    7178:	e5c4502c 	strb	r5, [r4, #44]	; 0x2c
    717c:	e5c4502d 	strb	r5, [r4, #45]	; 0x2d
    7180:	e5845028 	str	r5, [r4, #40]	; 0x28
    7184:	e1c481b0 	strh	r8, [r4, #16]
    7188:	e1c471b2 	strh	r7, [r4, #18]
    718c:	e5c45033 	strb	r5, [r4, #51]	; 0x33
    7190:	e584501c 	str	r5, [r4, #28]
    7194:	e5845020 	str	r5, [r4, #32]
    7198:	e5845024 	str	r5, [r4, #36]	; 0x24
    719c:	e5845034 	str	r5, [r4, #52]	; 0x34
    71a0:	e584503c 	str	r5, [r4, #60]	; 0x3c
    71a4:	e5845038 	str	r5, [r4, #56]	; 0x38
    71a8:	e5845040 	str	r5, [r4, #64]	; 0x40
    71ac:	e5845044 	str	r5, [r4, #68]	; 0x44
    71b0:	e584504c 	str	r5, [r4, #76]	; 0x4c
    71b4:	e584a00c 	str	sl, [r4, #12]
    71b8:	eb000ab5 	bl	9c94 <OSTCBInitHook>
    71bc:	eb00095b 	bl	9730 <OS_CPU_SR_Save>
    71c0:	e3003f90 	movw	r3, #3984	; 0xf90
    71c4:	e3403001 	movt	r3, #1
    71c8:	e7834106 	str	r4, [r3, r6, lsl #2]
    71cc:	eb00095d 	bl	9748 <OS_CPU_SR_Restore>
    71d0:	e1a00004 	mov	r0, r4
    71d4:	eb000a6c 	bl	9b8c <OSTaskCreateHook>
    71d8:	eb000954 	bl	9730 <OS_CPU_SR_Save>
    71dc:	e300c560 	movw	ip, #1376	; 0x560
    71e0:	e340c001 	movt	ip, #1
    71e4:	e30015f4 	movw	r1, #1524	; 0x5f4
    71e8:	e3401001 	movt	r1, #1
    71ec:	e5d4e030 	ldrb	lr, [r4, #48]	; 0x30
    71f0:	e59c3000 	ldr	r3, [ip]
    71f4:	e30025f8 	movw	r2, #1528	; 0x5f8
    71f8:	e5845018 	str	r5, [r4, #24]
    71fc:	e3402001 	movt	r2, #1
    7200:	e1530005 	cmp	r3, r5
    7204:	e5d17000 	ldrb	r7, [r1]
    7208:	e5843014 	str	r3, [r4, #20]
    720c:	15834018 	strne	r4, [r3, #24]
    7210:	e30035e8 	movw	r3, #1512	; 0x5e8
    7214:	e5d46032 	ldrb	r6, [r4, #50]	; 0x32
    7218:	e3403001 	movt	r3, #1
    721c:	e7d2800e 	ldrb	r8, [r2, lr]
    7220:	e5d45031 	ldrb	r5, [r4, #49]	; 0x31
    7224:	e1876006 	orr	r6, r7, r6
    7228:	e5d37000 	ldrb	r7, [r3]
    722c:	e58c4000 	str	r4, [ip]
    7230:	e1885005 	orr	r5, r8, r5
    7234:	e287c001 	add	ip, r7, #1
    7238:	e5c16000 	strb	r6, [r1]
    723c:	e7c2500e 	strb	r5, [r2, lr]
    7240:	e5c3c000 	strb	ip, [r3]
    7244:	eb00093f 	bl	9748 <OS_CPU_SR_Restore>
    7248:	e3a00000 	mov	r0, #0
    724c:	e8bd85f8 	pop	{r3, r4, r5, r6, r7, r8, sl, pc}
    7250:	eb00093c 	bl	9748 <OS_CPU_SR_Restore>
    7254:	e3a00042 	mov	r0, #66	; 0x42
    7258:	e8bd85f8 	pop	{r3, r4, r5, r6, r7, r8, sl, pc}

0000725c <OSMboxAccept>:
    725c:	e92d4038 	push	{r3, r4, r5, lr}
    7260:	e1a04000 	mov	r4, r0
    7264:	e5d03000 	ldrb	r3, [r0]
    7268:	e3530001 	cmp	r3, #1
    726c:	13a05000 	movne	r5, #0
    7270:	1a000004 	bne	7288 <OSMboxAccept+0x2c>
    7274:	eb00092d 	bl	9730 <OS_CPU_SR_Save>
    7278:	e5945004 	ldr	r5, [r4, #4]
    727c:	e3a03000 	mov	r3, #0
    7280:	e5843004 	str	r3, [r4, #4]
    7284:	eb00092f 	bl	9748 <OS_CPU_SR_Restore>
    7288:	e1a00005 	mov	r0, r5
    728c:	e8bd8038 	pop	{r3, r4, r5, pc}

00007290 <OSMboxCreate>:
    7290:	e3003604 	movw	r3, #1540	; 0x604
    7294:	e3403001 	movt	r3, #1
    7298:	e92d4070 	push	{r4, r5, r6, lr}
    729c:	e1a06000 	mov	r6, r0
    72a0:	e5d35000 	ldrb	r5, [r3]
    72a4:	e3550000 	cmp	r5, #0
    72a8:	13a04000 	movne	r4, #0
    72ac:	1a000011 	bne	72f8 <OSMboxCreate+0x68>
    72b0:	eb00091e 	bl	9730 <OS_CPU_SR_Save>
    72b4:	e3003600 	movw	r3, #1536	; 0x600
    72b8:	e3403001 	movt	r3, #1
    72bc:	e5934000 	ldr	r4, [r3]
    72c0:	e3540000 	cmp	r4, #0
    72c4:	0a00000d 	beq	7300 <OSMboxCreate+0x70>
    72c8:	e5942004 	ldr	r2, [r4, #4]
    72cc:	e5832000 	str	r2, [r3]
    72d0:	eb00091c 	bl	9748 <OS_CPU_SR_Restore>
    72d4:	e3a03001 	mov	r3, #1
    72d8:	e1c450b8 	strh	r5, [r4, #8]
    72dc:	e5c43000 	strb	r3, [r4]
    72e0:	e1a00004 	mov	r0, r4
    72e4:	e30d3e78 	movw	r3, #56952	; 0xde78
    72e8:	e5846004 	str	r6, [r4, #4]
    72ec:	e3403000 	movt	r3, #0
    72f0:	e5843014 	str	r3, [r4, #20]
    72f4:	ebfffe21 	bl	6b80 <OS_EventWaitListInit>
    72f8:	e1a00004 	mov	r0, r4
    72fc:	e8bd8070 	pop	{r4, r5, r6, pc}
    7300:	eb000910 	bl	9748 <OS_CPU_SR_Restore>
    7304:	e1a00004 	mov	r0, r4
    7308:	e8bd8070 	pop	{r4, r5, r6, pc}

0000730c <OSMboxDel>:
    730c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    7310:	e1a04000 	mov	r4, r0
    7314:	e5d03000 	ldrb	r3, [r0]
    7318:	e24dd008 	sub	sp, sp, #8
    731c:	e1a05002 	mov	r5, r2
    7320:	e3530001 	cmp	r3, #1
    7324:	13a03001 	movne	r3, #1
    7328:	15c23000 	strbne	r3, [r2]
    732c:	0a000002 	beq	733c <OSMboxDel+0x30>
    7330:	e1a00004 	mov	r0, r4
    7334:	e28dd008 	add	sp, sp, #8
    7338:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    733c:	e3003604 	movw	r3, #1540	; 0x604
    7340:	e3403001 	movt	r3, #1
    7344:	e5d33000 	ldrb	r3, [r3]
    7348:	e3530000 	cmp	r3, #0
    734c:	13a0300f 	movne	r3, #15
    7350:	15c23000 	strbne	r3, [r2]
    7354:	1afffff5 	bne	7330 <OSMboxDel+0x24>
    7358:	e58d1004 	str	r1, [sp, #4]
    735c:	eb0008f3 	bl	9730 <OS_CPU_SR_Save>
    7360:	e5d4700a 	ldrb	r7, [r4, #10]
    7364:	e59d1004 	ldr	r1, [sp, #4]
    7368:	e2977000 	adds	r7, r7, #0
    736c:	13a07001 	movne	r7, #1
    7370:	e3510000 	cmp	r1, #0
    7374:	e1a06007 	mov	r6, r7
    7378:	e1a08000 	mov	r8, r0
    737c:	1a00000f 	bne	73c0 <OSMboxDel+0xb4>
    7380:	e3570000 	cmp	r7, #0
    7384:	1a000013 	bne	73d8 <OSMboxDel+0xcc>
    7388:	e3003600 	movw	r3, #1536	; 0x600
    738c:	e3403001 	movt	r3, #1
    7390:	e5c47000 	strb	r7, [r4]
    7394:	e30d2e78 	movw	r2, #56952	; 0xde78
    7398:	e5931000 	ldr	r1, [r3]
    739c:	e3402000 	movt	r2, #0
    73a0:	e1c470b8 	strh	r7, [r4, #8]
    73a4:	e5842014 	str	r2, [r4, #20]
    73a8:	e5841004 	str	r1, [r4, #4]
    73ac:	e5834000 	str	r4, [r3]
    73b0:	eb0008e4 	bl	9748 <OS_CPU_SR_Restore>
    73b4:	e1a04007 	mov	r4, r7
    73b8:	e5c57000 	strb	r7, [r5]
    73bc:	eaffffdb 	b	7330 <OSMboxDel+0x24>
    73c0:	e3510001 	cmp	r1, #1
    73c4:	0a000007 	beq	73e8 <OSMboxDel+0xdc>
    73c8:	eb0008de 	bl	9748 <OS_CPU_SR_Restore>
    73cc:	e3a03007 	mov	r3, #7
    73d0:	e5c53000 	strb	r3, [r5]
    73d4:	eaffffd5 	b	7330 <OSMboxDel+0x24>
    73d8:	eb0008da 	bl	9748 <OS_CPU_SR_Restore>
    73dc:	e3a03049 	mov	r3, #73	; 0x49
    73e0:	e5c53000 	strb	r3, [r5]
    73e4:	eaffffd1 	b	7330 <OSMboxDel+0x24>
    73e8:	e3570000 	cmp	r7, #0
    73ec:	0a000007 	beq	7410 <OSMboxDel+0x104>
    73f0:	e3a02002 	mov	r2, #2
    73f4:	e1a00004 	mov	r0, r4
    73f8:	e1a03002 	mov	r3, r2
    73fc:	e3a01000 	mov	r1, #0
    7400:	ebfffda5 	bl	6a9c <OS_EventTaskRdy>
    7404:	e5d4300a 	ldrb	r3, [r4, #10]
    7408:	e3530000 	cmp	r3, #0
    740c:	1afffff7 	bne	73f0 <OSMboxDel+0xe4>
    7410:	e3003600 	movw	r3, #1536	; 0x600
    7414:	e3403001 	movt	r3, #1
    7418:	e3a01000 	mov	r1, #0
    741c:	e5c41000 	strb	r1, [r4]
    7420:	e593c000 	ldr	ip, [r3]
    7424:	e30d2e78 	movw	r2, #56952	; 0xde78
    7428:	e1c410b8 	strh	r1, [r4, #8]
    742c:	e3402000 	movt	r2, #0
    7430:	e1a00008 	mov	r0, r8
    7434:	e5842014 	str	r2, [r4, #20]
    7438:	e584c004 	str	ip, [r4, #4]
    743c:	e5834000 	str	r4, [r3]
    7440:	eb0008c0 	bl	9748 <OS_CPU_SR_Restore>
    7444:	e3560001 	cmp	r6, #1
    7448:	0a000002 	beq	7458 <OSMboxDel+0x14c>
    744c:	e3a04000 	mov	r4, #0
    7450:	e5c54000 	strb	r4, [r5]
    7454:	eaffffb5 	b	7330 <OSMboxDel+0x24>
    7458:	ebfffde6 	bl	6bf8 <OS_Sched>
    745c:	eafffffa 	b	744c <OSMboxDel+0x140>

00007460 <OSMboxPend>:
    7460:	e92d45f8 	push	{r3, r4, r5, r6, r7, r8, sl, lr}
    7464:	e1a04000 	mov	r4, r0
    7468:	e5d03000 	ldrb	r3, [r0]
    746c:	e1a08001 	mov	r8, r1
    7470:	e1a07002 	mov	r7, r2
    7474:	e3530001 	cmp	r3, #1
    7478:	13a03001 	movne	r3, #1
    747c:	13a05000 	movne	r5, #0
    7480:	15c23000 	strbne	r3, [r2]
    7484:	1a000016 	bne	74e4 <OSMboxPend+0x84>
    7488:	e3003604 	movw	r3, #1540	; 0x604
    748c:	e3403001 	movt	r3, #1
    7490:	e5d35000 	ldrb	r5, [r3]
    7494:	e3550000 	cmp	r5, #0
    7498:	13a03002 	movne	r3, #2
    749c:	13a05000 	movne	r5, #0
    74a0:	15c23000 	strbne	r3, [r2]
    74a4:	1a00000e 	bne	74e4 <OSMboxPend+0x84>
    74a8:	e3003554 	movw	r3, #1364	; 0x554
    74ac:	e3403001 	movt	r3, #1
    74b0:	e5d36000 	ldrb	r6, [r3]
    74b4:	e3560000 	cmp	r6, #0
    74b8:	13a0300d 	movne	r3, #13
    74bc:	15c23000 	strbne	r3, [r2]
    74c0:	1a000007 	bne	74e4 <OSMboxPend+0x84>
    74c4:	eb000899 	bl	9730 <OS_CPU_SR_Save>
    74c8:	e5945004 	ldr	r5, [r4, #4]
    74cc:	e3550000 	cmp	r5, #0
    74d0:	e1a0a000 	mov	sl, r0
    74d4:	0a000004 	beq	74ec <OSMboxPend+0x8c>
    74d8:	e5846004 	str	r6, [r4, #4]
    74dc:	eb000899 	bl	9748 <OS_CPU_SR_Restore>
    74e0:	e5c76000 	strb	r6, [r7]
    74e4:	e1a00005 	mov	r0, r5
    74e8:	e8bd85f8 	pop	{r3, r4, r5, r6, r7, r8, sl, pc}
    74ec:	e3006608 	movw	r6, #1544	; 0x608
    74f0:	e3406001 	movt	r6, #1
    74f4:	e1a00004 	mov	r0, r4
    74f8:	e5963000 	ldr	r3, [r6]
    74fc:	e5d3202c 	ldrb	r2, [r3, #44]	; 0x2c
    7500:	e5838028 	str	r8, [r3, #40]	; 0x28
    7504:	e5c3502d 	strb	r5, [r3, #45]	; 0x2d
    7508:	e3822002 	orr	r2, r2, #2
    750c:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    7510:	ebfffcf6 	bl	68f0 <OS_EventTaskWait>
    7514:	e1a0000a 	mov	r0, sl
    7518:	eb00088a 	bl	9748 <OS_CPU_SR_Restore>
    751c:	ebfffdb5 	bl	6bf8 <OS_Sched>
    7520:	eb000882 	bl	9730 <OS_CPU_SR_Save>
    7524:	e1a08000 	mov	r8, r0
    7528:	e5960000 	ldr	r0, [r6]
    752c:	e5d0302d 	ldrb	r3, [r0, #45]	; 0x2d
    7530:	e3530000 	cmp	r3, #0
    7534:	1a00000c 	bne	756c <OSMboxPend+0x10c>
    7538:	e5905024 	ldr	r5, [r0, #36]	; 0x24
    753c:	e5c73000 	strb	r3, [r7]
    7540:	e5963000 	ldr	r3, [r6]
    7544:	e3a02000 	mov	r2, #0
    7548:	e1a00008 	mov	r0, r8
    754c:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    7550:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    7554:	e583201c 	str	r2, [r3, #28]
    7558:	e5832020 	str	r2, [r3, #32]
    755c:	e5832024 	str	r2, [r3, #36]	; 0x24
    7560:	eb000878 	bl	9748 <OS_CPU_SR_Restore>
    7564:	e1a00005 	mov	r0, r5
    7568:	e8bd85f8 	pop	{r3, r4, r5, r6, r7, r8, sl, pc}
    756c:	e3530002 	cmp	r3, #2
    7570:	0a000004 	beq	7588 <OSMboxPend+0x128>
    7574:	e1a01004 	mov	r1, r4
    7578:	ebfffd24 	bl	6a10 <OS_EventTaskRemove>
    757c:	e3a0300a 	mov	r3, #10
    7580:	e5c73000 	strb	r3, [r7]
    7584:	eaffffed 	b	7540 <OSMboxPend+0xe0>
    7588:	e3a0300e 	mov	r3, #14
    758c:	e5c73000 	strb	r3, [r7]
    7590:	eaffffea 	b	7540 <OSMboxPend+0xe0>

00007594 <OSMboxPendAbort>:
    7594:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    7598:	e1a04000 	mov	r4, r0
    759c:	e5d05000 	ldrb	r5, [r0]
    75a0:	e24dd008 	sub	sp, sp, #8
    75a4:	e1a06002 	mov	r6, r2
    75a8:	e3550001 	cmp	r5, #1
    75ac:	0a000005 	beq	75c8 <OSMboxPendAbort+0x34>
    75b0:	e3a05000 	mov	r5, #0
    75b4:	e3a03001 	mov	r3, #1
    75b8:	e5c23000 	strb	r3, [r2]
    75bc:	e1a00005 	mov	r0, r5
    75c0:	e28dd008 	add	sp, sp, #8
    75c4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    75c8:	e58d1004 	str	r1, [sp, #4]
    75cc:	eb000857 	bl	9730 <OS_CPU_SR_Save>
    75d0:	e5d4800a 	ldrb	r8, [r4, #10]
    75d4:	e59d1004 	ldr	r1, [sp, #4]
    75d8:	e3580000 	cmp	r8, #0
    75dc:	e1a07000 	mov	r7, r0
    75e0:	0a000018 	beq	7648 <OSMboxPendAbort+0xb4>
    75e4:	e3510001 	cmp	r1, #1
    75e8:	0a00000a 	beq	7618 <OSMboxPendAbort+0x84>
    75ec:	e3a02002 	mov	r2, #2
    75f0:	e1a00004 	mov	r0, r4
    75f4:	e3a01000 	mov	r1, #0
    75f8:	e1a03002 	mov	r3, r2
    75fc:	ebfffd26 	bl	6a9c <OS_EventTaskRdy>
    7600:	e1a00007 	mov	r0, r7
    7604:	eb00084f 	bl	9748 <OS_CPU_SR_Restore>
    7608:	ebfffd7a 	bl	6bf8 <OS_Sched>
    760c:	e3a0300e 	mov	r3, #14
    7610:	e5c63000 	strb	r3, [r6]
    7614:	eaffffe8 	b	75bc <OSMboxPendAbort+0x28>
    7618:	e3a05000 	mov	r5, #0
    761c:	e3a02002 	mov	r2, #2
    7620:	e1a00004 	mov	r0, r4
    7624:	e1a03002 	mov	r3, r2
    7628:	e3a01000 	mov	r1, #0
    762c:	ebfffd1a 	bl	6a9c <OS_EventTaskRdy>
    7630:	e5d4300a 	ldrb	r3, [r4, #10]
    7634:	e2855001 	add	r5, r5, #1
    7638:	e3530000 	cmp	r3, #0
    763c:	e6ef5075 	uxtb	r5, r5
    7640:	1afffff5 	bne	761c <OSMboxPendAbort+0x88>
    7644:	eaffffed 	b	7600 <OSMboxPendAbort+0x6c>
    7648:	eb00083e 	bl	9748 <OS_CPU_SR_Restore>
    764c:	e1a05008 	mov	r5, r8
    7650:	e5c68000 	strb	r8, [r6]
    7654:	eaffffd8 	b	75bc <OSMboxPendAbort+0x28>

00007658 <OSMboxPost>:
    7658:	e92d4030 	push	{r4, r5, lr}
    765c:	e1a04000 	mov	r4, r0
    7660:	e5d03000 	ldrb	r3, [r0]
    7664:	e24dd00c 	sub	sp, sp, #12
    7668:	e3530001 	cmp	r3, #1
    766c:	13a00001 	movne	r0, #1
    7670:	0a000001 	beq	767c <OSMboxPost+0x24>
    7674:	e28dd00c 	add	sp, sp, #12
    7678:	e8bd8030 	pop	{r4, r5, pc}
    767c:	e58d1004 	str	r1, [sp, #4]
    7680:	eb00082a 	bl	9730 <OS_CPU_SR_Save>
    7684:	e5d4300a 	ldrb	r3, [r4, #10]
    7688:	e59d1004 	ldr	r1, [sp, #4]
    768c:	e3530000 	cmp	r3, #0
    7690:	e1a05000 	mov	r5, r0
    7694:	1a000005 	bne	76b0 <OSMboxPost+0x58>
    7698:	e5945004 	ldr	r5, [r4, #4]
    769c:	e3550000 	cmp	r5, #0
    76a0:	0a00000b 	beq	76d4 <OSMboxPost+0x7c>
    76a4:	eb000827 	bl	9748 <OS_CPU_SR_Restore>
    76a8:	e3a00014 	mov	r0, #20
    76ac:	eafffff0 	b	7674 <OSMboxPost+0x1c>
    76b0:	e3a02002 	mov	r2, #2
    76b4:	e3a03000 	mov	r3, #0
    76b8:	e1a00004 	mov	r0, r4
    76bc:	ebfffcf6 	bl	6a9c <OS_EventTaskRdy>
    76c0:	e1a00005 	mov	r0, r5
    76c4:	eb00081f 	bl	9748 <OS_CPU_SR_Restore>
    76c8:	ebfffd4a 	bl	6bf8 <OS_Sched>
    76cc:	e3a00000 	mov	r0, #0
    76d0:	eaffffe7 	b	7674 <OSMboxPost+0x1c>
    76d4:	e5841004 	str	r1, [r4, #4]
    76d8:	eb00081a 	bl	9748 <OS_CPU_SR_Restore>
    76dc:	e1a00005 	mov	r0, r5
    76e0:	eaffffe3 	b	7674 <OSMboxPost+0x1c>

000076e4 <OSMboxPostOpt>:
    76e4:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    76e8:	e1a04000 	mov	r4, r0
    76ec:	e5d03000 	ldrb	r3, [r0]
    76f0:	e1a05001 	mov	r5, r1
    76f4:	e1a06002 	mov	r6, r2
    76f8:	e3530001 	cmp	r3, #1
    76fc:	0a000001 	beq	7708 <OSMboxPostOpt+0x24>
    7700:	e3a00001 	mov	r0, #1
    7704:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    7708:	eb000808 	bl	9730 <OS_CPU_SR_Save>
    770c:	e5d4300a 	ldrb	r3, [r4, #10]
    7710:	e3530000 	cmp	r3, #0
    7714:	e1a07000 	mov	r7, r0
    7718:	0a000011 	beq	7764 <OSMboxPostOpt+0x80>
    771c:	e2163001 	ands	r3, r6, #1
    7720:	0a000015 	beq	777c <OSMboxPostOpt+0x98>
    7724:	e3a03000 	mov	r3, #0
    7728:	e1a00004 	mov	r0, r4
    772c:	e1a01005 	mov	r1, r5
    7730:	e3a02002 	mov	r2, #2
    7734:	ebfffcd8 	bl	6a9c <OS_EventTaskRdy>
    7738:	e5d4300a 	ldrb	r3, [r4, #10]
    773c:	e3530000 	cmp	r3, #0
    7740:	1afffff7 	bne	7724 <OSMboxPostOpt+0x40>
    7744:	e2066004 	and	r6, r6, #4
    7748:	e1a00007 	mov	r0, r7
    774c:	eb0007fd 	bl	9748 <OS_CPU_SR_Restore>
    7750:	e6ef6076 	uxtb	r6, r6
    7754:	e3560000 	cmp	r6, #0
    7758:	0a00000c 	beq	7790 <OSMboxPostOpt+0xac>
    775c:	e3a00000 	mov	r0, #0
    7760:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    7764:	e5946004 	ldr	r6, [r4, #4]
    7768:	e3560000 	cmp	r6, #0
    776c:	0a00000a 	beq	779c <OSMboxPostOpt+0xb8>
    7770:	eb0007f4 	bl	9748 <OS_CPU_SR_Restore>
    7774:	e3a00014 	mov	r0, #20
    7778:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    777c:	e1a00004 	mov	r0, r4
    7780:	e1a01005 	mov	r1, r5
    7784:	e3a02002 	mov	r2, #2
    7788:	ebfffcc3 	bl	6a9c <OS_EventTaskRdy>
    778c:	eaffffec 	b	7744 <OSMboxPostOpt+0x60>
    7790:	ebfffd18 	bl	6bf8 <OS_Sched>
    7794:	e1a00006 	mov	r0, r6
    7798:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    779c:	e5845004 	str	r5, [r4, #4]
    77a0:	eb0007e8 	bl	9748 <OS_CPU_SR_Restore>
    77a4:	e1a00006 	mov	r0, r6
    77a8:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

000077ac <OSMboxQuery>:
    77ac:	e92d4010 	push	{r4, lr}
    77b0:	e1a04000 	mov	r4, r0
    77b4:	e5d03000 	ldrb	r3, [r0]
    77b8:	e24dd008 	sub	sp, sp, #8
    77bc:	e3530001 	cmp	r3, #1
    77c0:	13a00001 	movne	r0, #1
    77c4:	0a000001 	beq	77d0 <OSMboxQuery+0x24>
    77c8:	e28dd008 	add	sp, sp, #8
    77cc:	e8bd8010 	pop	{r4, pc}
    77d0:	e58d1004 	str	r1, [sp, #4]
    77d4:	eb0007d5 	bl	9730 <OS_CPU_SR_Save>
    77d8:	e59d1004 	ldr	r1, [sp, #4]
    77dc:	e1a02004 	mov	r2, r4
    77e0:	e5f2c00a 	ldrb	ip, [r2, #10]!
    77e4:	e2813004 	add	r3, r1, #4
    77e8:	e281e00c 	add	lr, r1, #12
    77ec:	e5c1c00c 	strb	ip, [r1, #12]
    77f0:	e5f2c001 	ldrb	ip, [r2, #1]!
    77f4:	e4c3c001 	strb	ip, [r3], #1
    77f8:	e153000e 	cmp	r3, lr
    77fc:	1afffffb 	bne	77f0 <OSMboxQuery+0x44>
    7800:	e5943004 	ldr	r3, [r4, #4]
    7804:	e5813000 	str	r3, [r1]
    7808:	eb0007ce 	bl	9748 <OS_CPU_SR_Restore>
    780c:	e3a00000 	mov	r0, #0
    7810:	eaffffec 	b	77c8 <OSMboxQuery+0x1c>

00007814 <OSMemCreate>:
    7814:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    7818:	e1a06002 	mov	r6, r2
    781c:	e1a0a000 	mov	sl, r0
    7820:	e1a09001 	mov	r9, r1
    7824:	e1a08003 	mov	r8, r3
    7828:	eb0007c0 	bl	9730 <OS_CPU_SR_Save>
    782c:	e30025ec 	movw	r2, #1516	; 0x5ec
    7830:	e3402001 	movt	r2, #1
    7834:	e5927000 	ldr	r7, [r2]
    7838:	e3570000 	cmp	r7, #0
    783c:	0a000017 	beq	78a0 <OSMemCreate+0x8c>
    7840:	e5973004 	ldr	r3, [r7, #4]
    7844:	e5823000 	str	r3, [r2]
    7848:	eb0007be 	bl	9748 <OS_CPU_SR_Restore>
    784c:	e2592001 	subs	r2, r9, #1
    7850:	0a000017 	beq	78b4 <OSMemCreate+0xa0>
    7854:	e1a0400a 	mov	r4, sl
    7858:	e3a0c000 	mov	ip, #0
    785c:	e28cc001 	add	ip, ip, #1
    7860:	e0845006 	add	r5, r4, r6
    7864:	e152000c 	cmp	r2, ip
    7868:	e5845000 	str	r5, [r4]
    786c:	e1a04005 	mov	r4, r5
    7870:	1afffff9 	bne	785c <OSMemCreate+0x48>
    7874:	e022a692 	mla	r2, r2, r6, sl
    7878:	e3a03000 	mov	r3, #0
    787c:	e1a00007 	mov	r0, r7
    7880:	e5823000 	str	r3, [r2]
    7884:	e587a000 	str	sl, [r7]
    7888:	e587a004 	str	sl, [r7, #4]
    788c:	e5879010 	str	r9, [r7, #16]
    7890:	e587900c 	str	r9, [r7, #12]
    7894:	e5876008 	str	r6, [r7, #8]
    7898:	e5c83000 	strb	r3, [r8]
    789c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
    78a0:	eb0007a8 	bl	9748 <OS_CPU_SR_Restore>
    78a4:	e3a0305a 	mov	r3, #90	; 0x5a
    78a8:	e1a00007 	mov	r0, r7
    78ac:	e5c83000 	strb	r3, [r8]
    78b0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
    78b4:	e1a0200a 	mov	r2, sl
    78b8:	eaffffee 	b	7878 <OSMemCreate+0x64>

000078bc <OSMemGet>:
    78bc:	e92d4070 	push	{r4, r5, r6, lr}
    78c0:	e1a04000 	mov	r4, r0
    78c4:	e1a06001 	mov	r6, r1
    78c8:	eb000798 	bl	9730 <OS_CPU_SR_Save>
    78cc:	e5943010 	ldr	r3, [r4, #16]
    78d0:	e3530000 	cmp	r3, #0
    78d4:	0a000009 	beq	7900 <OSMemGet+0x44>
    78d8:	e5945004 	ldr	r5, [r4, #4]
    78dc:	e2433001 	sub	r3, r3, #1
    78e0:	e5952000 	ldr	r2, [r5]
    78e4:	e5843010 	str	r3, [r4, #16]
    78e8:	e5842004 	str	r2, [r4, #4]
    78ec:	eb000795 	bl	9748 <OS_CPU_SR_Restore>
    78f0:	e3a03000 	mov	r3, #0
    78f4:	e1a00005 	mov	r0, r5
    78f8:	e5c63000 	strb	r3, [r6]
    78fc:	e8bd8070 	pop	{r4, r5, r6, pc}
    7900:	e1a05003 	mov	r5, r3
    7904:	eb00078f 	bl	9748 <OS_CPU_SR_Restore>
    7908:	e3a0305d 	mov	r3, #93	; 0x5d
    790c:	e1a00005 	mov	r0, r5
    7910:	e5c63000 	strb	r3, [r6]
    7914:	e8bd8070 	pop	{r4, r5, r6, pc}

00007918 <OSMemNameGet>:
    7918:	e3003604 	movw	r3, #1540	; 0x604
    791c:	e3403001 	movt	r3, #1
    7920:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    7924:	e1a05000 	mov	r5, r0
    7928:	e5d34000 	ldrb	r4, [r3]
    792c:	e1a07001 	mov	r7, r1
    7930:	e1a06002 	mov	r6, r2
    7934:	e3540000 	cmp	r4, #0
    7938:	0a000004 	beq	7950 <OSMemNameGet+0x38>
    793c:	e3a05000 	mov	r5, #0
    7940:	e3a03011 	mov	r3, #17
    7944:	e1a00005 	mov	r0, r5
    7948:	e5c23000 	strb	r3, [r2]
    794c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    7950:	eb000776 	bl	9730 <OS_CPU_SR_Save>
    7954:	e1a08000 	mov	r8, r0
    7958:	e5950014 	ldr	r0, [r5, #20]
    795c:	e5870000 	str	r0, [r7]
    7960:	ebfffdba 	bl	7050 <OS_StrLen>
    7964:	e1a05000 	mov	r5, r0
    7968:	e1a00008 	mov	r0, r8
    796c:	eb000775 	bl	9748 <OS_CPU_SR_Restore>
    7970:	e5c64000 	strb	r4, [r6]
    7974:	e1a00005 	mov	r0, r5
    7978:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0000797c <OSMemNameSet>:
    797c:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    7980:	e3003604 	movw	r3, #1540	; 0x604
    7984:	e3403001 	movt	r3, #1
    7988:	e1a06000 	mov	r6, r0
    798c:	e1a07001 	mov	r7, r1
    7990:	e1a05002 	mov	r5, r2
    7994:	e5d34000 	ldrb	r4, [r3]
    7998:	e3540000 	cmp	r4, #0
    799c:	13a03012 	movne	r3, #18
    79a0:	15c23000 	strbne	r3, [r2]
    79a4:	18bd80f8 	popne	{r3, r4, r5, r6, r7, pc}
    79a8:	eb000760 	bl	9730 <OS_CPU_SR_Save>
    79ac:	e5867014 	str	r7, [r6, #20]
    79b0:	eb000764 	bl	9748 <OS_CPU_SR_Restore>
    79b4:	e5c54000 	strb	r4, [r5]
    79b8:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

000079bc <OSMemPut>:
    79bc:	e92d4038 	push	{r3, r4, r5, lr}
    79c0:	e1a04000 	mov	r4, r0
    79c4:	e1a05001 	mov	r5, r1
    79c8:	eb000758 	bl	9730 <OS_CPU_SR_Save>
    79cc:	e5943010 	ldr	r3, [r4, #16]
    79d0:	e594200c 	ldr	r2, [r4, #12]
    79d4:	e1530002 	cmp	r3, r2
    79d8:	3a000002 	bcc	79e8 <OSMemPut+0x2c>
    79dc:	eb000759 	bl	9748 <OS_CPU_SR_Restore>
    79e0:	e3a0005e 	mov	r0, #94	; 0x5e
    79e4:	e8bd8038 	pop	{r3, r4, r5, pc}
    79e8:	e5942004 	ldr	r2, [r4, #4]
    79ec:	e2833001 	add	r3, r3, #1
    79f0:	e5852000 	str	r2, [r5]
    79f4:	e5845004 	str	r5, [r4, #4]
    79f8:	e5843010 	str	r3, [r4, #16]
    79fc:	eb000751 	bl	9748 <OS_CPU_SR_Restore>
    7a00:	e3a00000 	mov	r0, #0
    7a04:	e8bd8038 	pop	{r3, r4, r5, pc}

00007a08 <OSMemQuery>:
    7a08:	e92d4038 	push	{r3, r4, r5, lr}
    7a0c:	e1a04001 	mov	r4, r1
    7a10:	e1a05000 	mov	r5, r0
    7a14:	eb000745 	bl	9730 <OS_CPU_SR_Save>
    7a18:	e2851008 	add	r1, r5, #8
    7a1c:	e595e000 	ldr	lr, [r5]
    7a20:	e595c004 	ldr	ip, [r5, #4]
    7a24:	e891000e 	ldm	r1, {r1, r2, r3}
    7a28:	e584e000 	str	lr, [r4]
    7a2c:	e584c004 	str	ip, [r4, #4]
    7a30:	e584200c 	str	r2, [r4, #12]
    7a34:	e5843010 	str	r3, [r4, #16]
    7a38:	e5841008 	str	r1, [r4, #8]
    7a3c:	eb000741 	bl	9748 <OS_CPU_SR_Restore>
    7a40:	e594200c 	ldr	r2, [r4, #12]
    7a44:	e5943010 	ldr	r3, [r4, #16]
    7a48:	e3a00000 	mov	r0, #0
    7a4c:	e0633002 	rsb	r3, r3, r2
    7a50:	e5843014 	str	r3, [r4, #20]
    7a54:	e8bd8038 	pop	{r3, r4, r5, pc}

00007a58 <OS_MemInit>:
    7a58:	e92d4070 	push	{r4, r5, r6, lr}
    7a5c:	e3000564 	movw	r0, #1380	; 0x564
    7a60:	e3a01078 	mov	r1, #120	; 0x78
    7a64:	e3400001 	movt	r0, #1
    7a68:	ebfffc4f 	bl	6bac <OS_MemClr>
    7a6c:	e3004564 	movw	r4, #1380	; 0x564
    7a70:	e3a03000 	mov	r3, #0
    7a74:	e30d6e78 	movw	r6, #56952	; 0xde78
    7a78:	e3404001 	movt	r4, #1
    7a7c:	e3406000 	movt	r6, #0
    7a80:	e1a00003 	mov	r0, r3
    7a84:	e080c003 	add	ip, r0, r3
    7a88:	e2833001 	add	r3, r3, #1
    7a8c:	e3530004 	cmp	r3, #4
    7a90:	e3002564 	movw	r2, #1380	; 0x564
    7a94:	e1a00083 	lsl	r0, r3, #1
    7a98:	e084c18c 	add	ip, r4, ip, lsl #3
    7a9c:	e0805003 	add	r5, r0, r3
    7aa0:	e30d1e78 	movw	r1, #56952	; 0xde78
    7aa4:	e3402001 	movt	r2, #1
    7aa8:	e3401000 	movt	r1, #0
    7aac:	e0845185 	add	r5, r4, r5, lsl #3
    7ab0:	e58c6014 	str	r6, [ip, #20]
    7ab4:	e58c5004 	str	r5, [ip, #4]
    7ab8:	1afffff1 	bne	7a84 <OS_MemInit+0x2c>
    7abc:	e30035ec 	movw	r3, #1516	; 0x5ec
    7ac0:	e3403001 	movt	r3, #1
    7ac4:	e5821074 	str	r1, [r2, #116]	; 0x74
    7ac8:	e3a01000 	mov	r1, #0
    7acc:	e5832000 	str	r2, [r3]
    7ad0:	e5821064 	str	r1, [r2, #100]	; 0x64
    7ad4:	e8bd8070 	pop	{r4, r5, r6, pc}

00007ad8 <OSMutex_RdyAtPrio>:
    7ad8:	e5d02030 	ldrb	r2, [r0, #48]	; 0x30
    7adc:	e30035f8 	movw	r3, #1528	; 0x5f8
    7ae0:	e3403001 	movt	r3, #1
    7ae4:	e5d0c031 	ldrb	ip, [r0, #49]	; 0x31
    7ae8:	e92d05f0 	push	{r4, r5, r6, r7, r8, sl}
    7aec:	e3a06001 	mov	r6, #1
    7af0:	e7d34002 	ldrb	r4, [r3, r2]
    7af4:	e300555d 	movw	r5, #1373	; 0x55d
    7af8:	e3405001 	movt	r5, #1
    7afc:	e1c4c00c 	bic	ip, r4, ip
    7b00:	e7c3c002 	strb	ip, [r3, r2]
    7b04:	e35c0000 	cmp	ip, #0
    7b08:	e30025f4 	movw	r2, #1524	; 0x5f4
    7b0c:	e3402001 	movt	r2, #1
    7b10:	e5c0102e 	strb	r1, [r0, #46]	; 0x2e
    7b14:	05d04032 	ldrbeq	r4, [r0, #50]	; 0x32
    7b18:	05d2c000 	ldrbeq	ip, [r2]
    7b1c:	e5c51000 	strb	r1, [r5]
    7b20:	01ccc004 	biceq	ip, ip, r4
    7b24:	e2014007 	and	r4, r1, #7
    7b28:	05c2c000 	strbeq	ip, [r2]
    7b2c:	e7e2c1d1 	ubfx	ip, r1, #3, #3
    7b30:	e1a07c16 	lsl	r7, r6, ip
    7b34:	e1a06416 	lsl	r6, r6, r4
    7b38:	e5c0402f 	strb	r4, [r0, #47]	; 0x2f
    7b3c:	e3004f90 	movw	r4, #3984	; 0xf90
    7b40:	e5c0c030 	strb	ip, [r0, #48]	; 0x30
    7b44:	e6ef7077 	uxtb	r7, r7
    7b48:	e6ef6076 	uxtb	r6, r6
    7b4c:	e5c07032 	strb	r7, [r0, #50]	; 0x32
    7b50:	e5c06031 	strb	r6, [r0, #49]	; 0x31
    7b54:	e3404001 	movt	r4, #1
    7b58:	e5d2a000 	ldrb	sl, [r2]
    7b5c:	e7d3800c 	ldrb	r8, [r3, ip]
    7b60:	e187700a 	orr	r7, r7, sl
    7b64:	e7840101 	str	r0, [r4, r1, lsl #2]
    7b68:	e1866008 	orr	r6, r6, r8
    7b6c:	e5c27000 	strb	r7, [r2]
    7b70:	e7c3600c 	strb	r6, [r3, ip]
    7b74:	e8bd05f0 	pop	{r4, r5, r6, r7, r8, sl}
    7b78:	e12fff1e 	bx	lr

00007b7c <OSMutexAccept>:
    7b7c:	e92d4070 	push	{r4, r5, r6, lr}
    7b80:	e1a04000 	mov	r4, r0
    7b84:	e5d03000 	ldrb	r3, [r0]
    7b88:	e1a05001 	mov	r5, r1
    7b8c:	e3530004 	cmp	r3, #4
    7b90:	0a000003 	beq	7ba4 <OSMutexAccept+0x28>
    7b94:	e3a03001 	mov	r3, #1
    7b98:	e3a00000 	mov	r0, #0
    7b9c:	e5c13000 	strb	r3, [r1]
    7ba0:	e8bd8070 	pop	{r4, r5, r6, pc}
    7ba4:	e3003604 	movw	r3, #1540	; 0x604
    7ba8:	e3403001 	movt	r3, #1
    7bac:	e5d36000 	ldrb	r6, [r3]
    7bb0:	e3560000 	cmp	r6, #0
    7bb4:	0a000003 	beq	7bc8 <OSMutexAccept+0x4c>
    7bb8:	e3a03002 	mov	r3, #2
    7bbc:	e3a00000 	mov	r0, #0
    7bc0:	e5c13000 	strb	r3, [r1]
    7bc4:	e8bd8070 	pop	{r4, r5, r6, pc}
    7bc8:	eb0006d8 	bl	9730 <OS_CPU_SR_Save>
    7bcc:	e1d430b8 	ldrh	r3, [r4, #8]
    7bd0:	e6ef2073 	uxtb	r2, r3
    7bd4:	e35200ff 	cmp	r2, #255	; 0xff
    7bd8:	e1a0c000 	mov	ip, r0
    7bdc:	1a000014 	bne	7c34 <OSMutexAccept+0xb8>
    7be0:	e3002608 	movw	r2, #1544	; 0x608
    7be4:	e3402001 	movt	r2, #1
    7be8:	e1a01423 	lsr	r1, r3, #8
    7bec:	e2033cff 	and	r3, r3, #65280	; 0xff00
    7bf0:	e5922000 	ldr	r2, [r2]
    7bf4:	e35100ff 	cmp	r1, #255	; 0xff
    7bf8:	e1c430b8 	strh	r3, [r4, #8]
    7bfc:	e5d2e02e 	ldrb	lr, [r2, #46]	; 0x2e
    7c00:	e5842004 	str	r2, [r4, #4]
    7c04:	e183300e 	orr	r3, r3, lr
    7c08:	e1c430b8 	strh	r3, [r4, #8]
    7c0c:	0a000002 	beq	7c1c <OSMutexAccept+0xa0>
    7c10:	e5d2302e 	ldrb	r3, [r2, #46]	; 0x2e
    7c14:	e1530001 	cmp	r3, r1
    7c18:	9a000009 	bls	7c44 <OSMutexAccept+0xc8>
    7c1c:	e1a0000c 	mov	r0, ip
    7c20:	eb0006c8 	bl	9748 <OS_CPU_SR_Restore>
    7c24:	e3a03000 	mov	r3, #0
    7c28:	e3a00001 	mov	r0, #1
    7c2c:	e5c53000 	strb	r3, [r5]
    7c30:	e8bd8070 	pop	{r4, r5, r6, pc}
    7c34:	eb0006c3 	bl	9748 <OS_CPU_SR_Restore>
    7c38:	e1a00006 	mov	r0, r6
    7c3c:	e5c56000 	strb	r6, [r5]
    7c40:	e8bd8070 	pop	{r4, r5, r6, pc}
    7c44:	eb0006bf 	bl	9748 <OS_CPU_SR_Restore>
    7c48:	e3a03078 	mov	r3, #120	; 0x78
    7c4c:	e3a00001 	mov	r0, #1
    7c50:	e5c53000 	strb	r3, [r5]
    7c54:	e8bd8070 	pop	{r4, r5, r6, pc}

00007c58 <OSMutexCreate>:
    7c58:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    7c5c:	e3003604 	movw	r3, #1540	; 0x604
    7c60:	e3403001 	movt	r3, #1
    7c64:	e1a05000 	mov	r5, r0
    7c68:	e1a06001 	mov	r6, r1
    7c6c:	e5d34000 	ldrb	r4, [r3]
    7c70:	e3540000 	cmp	r4, #0
    7c74:	13a03010 	movne	r3, #16
    7c78:	13a04000 	movne	r4, #0
    7c7c:	15c13000 	strbne	r3, [r1]
    7c80:	1a000020 	bne	7d08 <OSMutexCreate+0xb0>
    7c84:	eb0006a9 	bl	9730 <OS_CPU_SR_Save>
    7c88:	e35500ff 	cmp	r5, #255	; 0xff
    7c8c:	e1a01000 	mov	r1, r0
    7c90:	0a00002b 	beq	7d44 <OSMutexCreate+0xec>
    7c94:	e3003f90 	movw	r3, #3984	; 0xf90
    7c98:	e3403001 	movt	r3, #1
    7c9c:	e7932105 	ldr	r2, [r3, r5, lsl #2]
    7ca0:	e3520000 	cmp	r2, #0
    7ca4:	1a000019 	bne	7d10 <OSMutexCreate+0xb8>
    7ca8:	e3002600 	movw	r2, #1536	; 0x600
    7cac:	e3402001 	movt	r2, #1
    7cb0:	e3a00001 	mov	r0, #1
    7cb4:	e7830105 	str	r0, [r3, r5, lsl #2]
    7cb8:	e5924000 	ldr	r4, [r2]
    7cbc:	e3540000 	cmp	r4, #0
    7cc0:	0a000017 	beq	7d24 <OSMutexCreate+0xcc>
    7cc4:	e5943004 	ldr	r3, [r4, #4]
    7cc8:	e1a00001 	mov	r0, r1
    7ccc:	e1a05405 	lsl	r5, r5, #8
    7cd0:	e3a07000 	mov	r7, #0
    7cd4:	e38550ff 	orr	r5, r5, #255	; 0xff
    7cd8:	e5823000 	str	r3, [r2]
    7cdc:	eb000699 	bl	9748 <OS_CPU_SR_Restore>
    7ce0:	e3a03004 	mov	r3, #4
    7ce4:	e1c450b8 	strh	r5, [r4, #8]
    7ce8:	e5c43000 	strb	r3, [r4]
    7cec:	e1a00004 	mov	r0, r4
    7cf0:	e30d3e78 	movw	r3, #56952	; 0xde78
    7cf4:	e5847004 	str	r7, [r4, #4]
    7cf8:	e3403000 	movt	r3, #0
    7cfc:	e5843014 	str	r3, [r4, #20]
    7d00:	ebfffb9e 	bl	6b80 <OS_EventWaitListInit>
    7d04:	e5c67000 	strb	r7, [r6]
    7d08:	e1a00004 	mov	r0, r4
    7d0c:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    7d10:	eb00068c 	bl	9748 <OS_CPU_SR_Restore>
    7d14:	e3a03028 	mov	r3, #40	; 0x28
    7d18:	e1a00004 	mov	r0, r4
    7d1c:	e5c63000 	strb	r3, [r6]
    7d20:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    7d24:	e7834105 	str	r4, [r3, r5, lsl #2]
    7d28:	e1a00001 	mov	r0, r1
    7d2c:	e3a04000 	mov	r4, #0
    7d30:	eb000684 	bl	9748 <OS_CPU_SR_Restore>
    7d34:	e3a03004 	mov	r3, #4
    7d38:	e1a00004 	mov	r0, r4
    7d3c:	e5c63000 	strb	r3, [r6]
    7d40:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    7d44:	e3002600 	movw	r2, #1536	; 0x600
    7d48:	e3402001 	movt	r2, #1
    7d4c:	e5924000 	ldr	r4, [r2]
    7d50:	e3540000 	cmp	r4, #0
    7d54:	1affffda 	bne	7cc4 <OSMutexCreate+0x6c>
    7d58:	eafffff2 	b	7d28 <OSMutexCreate+0xd0>

00007d5c <OSMutexDel>:
    7d5c:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    7d60:	e1a04000 	mov	r4, r0
    7d64:	e5d03000 	ldrb	r3, [r0]
    7d68:	e24dd00c 	sub	sp, sp, #12
    7d6c:	e1a05002 	mov	r5, r2
    7d70:	e3530004 	cmp	r3, #4
    7d74:	13a03001 	movne	r3, #1
    7d78:	15c23000 	strbne	r3, [r2]
    7d7c:	0a000002 	beq	7d8c <OSMutexDel+0x30>
    7d80:	e1a00004 	mov	r0, r4
    7d84:	e28dd00c 	add	sp, sp, #12
    7d88:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    7d8c:	e3003604 	movw	r3, #1540	; 0x604
    7d90:	e3403001 	movt	r3, #1
    7d94:	e5d33000 	ldrb	r3, [r3]
    7d98:	e3530000 	cmp	r3, #0
    7d9c:	13a0300f 	movne	r3, #15
    7da0:	15c23000 	strbne	r3, [r2]
    7da4:	1afffff5 	bne	7d80 <OSMutexDel+0x24>
    7da8:	e58d1004 	str	r1, [sp, #4]
    7dac:	eb00065f 	bl	9730 <OS_CPU_SR_Save>
    7db0:	e5d4300a 	ldrb	r3, [r4, #10]
    7db4:	e59d1004 	ldr	r1, [sp, #4]
    7db8:	e2936000 	adds	r6, r3, #0
    7dbc:	13a06001 	movne	r6, #1
    7dc0:	e3510000 	cmp	r1, #0
    7dc4:	e1a07000 	mov	r7, r0
    7dc8:	1a000016 	bne	7e28 <OSMutexDel+0xcc>
    7dcc:	e3560000 	cmp	r6, #0
    7dd0:	1a00001a 	bne	7e40 <OSMutexDel+0xe4>
    7dd4:	e1d420b8 	ldrh	r2, [r4, #8]
    7dd8:	e30d3e78 	movw	r3, #56952	; 0xde78
    7ddc:	e3403000 	movt	r3, #0
    7de0:	e5843014 	str	r3, [r4, #20]
    7de4:	e1a02422 	lsr	r2, r2, #8
    7de8:	e35200ff 	cmp	r2, #255	; 0xff
    7dec:	13003f90 	movwne	r3, #3984	; 0xf90
    7df0:	13403001 	movtne	r3, #1
    7df4:	17836102 	strne	r6, [r3, r2, lsl #2]
    7df8:	e3003600 	movw	r3, #1536	; 0x600
    7dfc:	e3403001 	movt	r3, #1
    7e00:	e3a06000 	mov	r6, #0
    7e04:	e5c46000 	strb	r6, [r4]
    7e08:	e5932000 	ldr	r2, [r3]
    7e0c:	e1c460b8 	strh	r6, [r4, #8]
    7e10:	e5834000 	str	r4, [r3]
    7e14:	e5842004 	str	r2, [r4, #4]
    7e18:	e1a04006 	mov	r4, r6
    7e1c:	eb000649 	bl	9748 <OS_CPU_SR_Restore>
    7e20:	e5c56000 	strb	r6, [r5]
    7e24:	eaffffd5 	b	7d80 <OSMutexDel+0x24>
    7e28:	e3510001 	cmp	r1, #1
    7e2c:	0a000007 	beq	7e50 <OSMutexDel+0xf4>
    7e30:	eb000644 	bl	9748 <OS_CPU_SR_Restore>
    7e34:	e3a03007 	mov	r3, #7
    7e38:	e5c53000 	strb	r3, [r5]
    7e3c:	eaffffcf 	b	7d80 <OSMutexDel+0x24>
    7e40:	eb000640 	bl	9748 <OS_CPU_SR_Restore>
    7e44:	e3a03049 	mov	r3, #73	; 0x49
    7e48:	e5c53000 	strb	r3, [r5]
    7e4c:	eaffffcb 	b	7d80 <OSMutexDel+0x24>
    7e50:	e1d410b8 	ldrh	r1, [r4, #8]
    7e54:	e1a02421 	lsr	r2, r1, #8
    7e58:	e35200ff 	cmp	r2, #255	; 0xff
    7e5c:	0a000005 	beq	7e78 <OSMutexDel+0x11c>
    7e60:	e5940004 	ldr	r0, [r4, #4]
    7e64:	e3500000 	cmp	r0, #0
    7e68:	0a000002 	beq	7e78 <OSMutexDel+0x11c>
    7e6c:	e5d0c02e 	ldrb	ip, [r0, #46]	; 0x2e
    7e70:	e15c0002 	cmp	ip, r2
    7e74:	0a000024 	beq	7f0c <OSMutexDel+0x1b0>
    7e78:	e3530000 	cmp	r3, #0
    7e7c:	0a000007 	beq	7ea0 <OSMutexDel+0x144>
    7e80:	e3a03002 	mov	r3, #2
    7e84:	e1a00004 	mov	r0, r4
    7e88:	e3a01000 	mov	r1, #0
    7e8c:	e3a02010 	mov	r2, #16
    7e90:	ebfffb01 	bl	6a9c <OS_EventTaskRdy>
    7e94:	e5d4300a 	ldrb	r3, [r4, #10]
    7e98:	e3530000 	cmp	r3, #0
    7e9c:	1afffff7 	bne	7e80 <OSMutexDel+0x124>
    7ea0:	e1d420b8 	ldrh	r2, [r4, #8]
    7ea4:	e30d3e78 	movw	r3, #56952	; 0xde78
    7ea8:	e3403000 	movt	r3, #0
    7eac:	e5843014 	str	r3, [r4, #20]
    7eb0:	e1a02422 	lsr	r2, r2, #8
    7eb4:	e35200ff 	cmp	r2, #255	; 0xff
    7eb8:	13003f90 	movwne	r3, #3984	; 0xf90
    7ebc:	13403001 	movtne	r3, #1
    7ec0:	13a01000 	movne	r1, #0
    7ec4:	17831102 	strne	r1, [r3, r2, lsl #2]
    7ec8:	e3003600 	movw	r3, #1536	; 0x600
    7ecc:	e3403001 	movt	r3, #1
    7ed0:	e3a02000 	mov	r2, #0
    7ed4:	e5c42000 	strb	r2, [r4]
    7ed8:	e5931000 	ldr	r1, [r3]
    7edc:	e1a00007 	mov	r0, r7
    7ee0:	e1c420b8 	strh	r2, [r4, #8]
    7ee4:	e5834000 	str	r4, [r3]
    7ee8:	e5841004 	str	r1, [r4, #4]
    7eec:	eb000615 	bl	9748 <OS_CPU_SR_Restore>
    7ef0:	e3560001 	cmp	r6, #1
    7ef4:	0a000002 	beq	7f04 <OSMutexDel+0x1a8>
    7ef8:	e3a04000 	mov	r4, #0
    7efc:	e5c54000 	strb	r4, [r5]
    7f00:	eaffff9e 	b	7d80 <OSMutexDel+0x24>
    7f04:	ebfffb3b 	bl	6bf8 <OS_Sched>
    7f08:	eafffffa 	b	7ef8 <OSMutexDel+0x19c>
    7f0c:	e6ef1071 	uxtb	r1, r1
    7f10:	ebfffef0 	bl	7ad8 <OSMutex_RdyAtPrio>
    7f14:	e5d4300a 	ldrb	r3, [r4, #10]
    7f18:	eaffffd6 	b	7e78 <OSMutexDel+0x11c>

00007f1c <OSMutexPend>:
    7f1c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    7f20:	e1a04000 	mov	r4, r0
    7f24:	e5d03000 	ldrb	r3, [r0]
    7f28:	e24dd00c 	sub	sp, sp, #12
    7f2c:	e3530004 	cmp	r3, #4
    7f30:	13a03001 	movne	r3, #1
    7f34:	15c23000 	strbne	r3, [r2]
    7f38:	0a000001 	beq	7f44 <OSMutexPend+0x28>
    7f3c:	e28dd00c 	add	sp, sp, #12
    7f40:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    7f44:	e3003604 	movw	r3, #1540	; 0x604
    7f48:	e3403001 	movt	r3, #1
    7f4c:	e5d33000 	ldrb	r3, [r3]
    7f50:	e3530000 	cmp	r3, #0
    7f54:	13a03002 	movne	r3, #2
    7f58:	15c23000 	strbne	r3, [r2]
    7f5c:	1afffff6 	bne	7f3c <OSMutexPend+0x20>
    7f60:	e3003554 	movw	r3, #1364	; 0x554
    7f64:	e3403001 	movt	r3, #1
    7f68:	e5d33000 	ldrb	r3, [r3]
    7f6c:	e3530000 	cmp	r3, #0
    7f70:	13a0300d 	movne	r3, #13
    7f74:	15c23000 	strbne	r3, [r2]
    7f78:	1affffef 	bne	7f3c <OSMutexPend+0x20>
    7f7c:	e58d1004 	str	r1, [sp, #4]
    7f80:	e58d2000 	str	r2, [sp]
    7f84:	eb0005e9 	bl	9730 <OS_CPU_SR_Save>
    7f88:	e1d430b8 	ldrh	r3, [r4, #8]
    7f8c:	e59d1004 	ldr	r1, [sp, #4]
    7f90:	e59d2000 	ldr	r2, [sp]
    7f94:	e6efe073 	uxtb	lr, r3
    7f98:	e1a06423 	lsr	r6, r3, #8
    7f9c:	e35e00ff 	cmp	lr, #255	; 0xff
    7fa0:	e6efc076 	uxtb	ip, r6
    7fa4:	e1a07000 	mov	r7, r0
    7fa8:	0a000066 	beq	8148 <OSMutexPend+0x22c>
    7fac:	e35c00ff 	cmp	ip, #255	; 0xff
    7fb0:	03005608 	movweq	r5, #1544	; 0x608
    7fb4:	03405001 	movteq	r5, #1
    7fb8:	0a000039 	beq	80a4 <OSMutexPend+0x188>
    7fbc:	e5943004 	ldr	r3, [r4, #4]
    7fc0:	e3005608 	movw	r5, #1544	; 0x608
    7fc4:	e3405001 	movt	r5, #1
    7fc8:	e5d3002e 	ldrb	r0, [r3, #46]	; 0x2e
    7fcc:	e150000c 	cmp	r0, ip
    7fd0:	9a000033 	bls	80a4 <OSMutexPend+0x188>
    7fd4:	e5950000 	ldr	r0, [r5]
    7fd8:	e5d0002e 	ldrb	r0, [r0, #46]	; 0x2e
    7fdc:	e150000e 	cmp	r0, lr
    7fe0:	2a00002f 	bcs	80a4 <OSMutexPend+0x188>
    7fe4:	e5d38030 	ldrb	r8, [r3, #48]	; 0x30
    7fe8:	e30005f8 	movw	r0, #1528	; 0x5f8
    7fec:	e3400001 	movt	r0, #1
    7ff0:	e5d3e031 	ldrb	lr, [r3, #49]	; 0x31
    7ff4:	e7d0a008 	ldrb	sl, [r0, r8]
    7ff8:	e11a000e 	tst	sl, lr
    7ffc:	0a00006b 	beq	81b0 <OSMutexPend+0x294>
    8000:	e1cae00e 	bic	lr, sl, lr
    8004:	e7c0e008 	strb	lr, [r0, r8]
    8008:	e35e0000 	cmp	lr, #0
    800c:	13a0a001 	movne	sl, #1
    8010:	1a000006 	bne	8030 <OSMutexPend+0x114>
    8014:	e300e5f4 	movw	lr, #1524	; 0x5f4
    8018:	e340e001 	movt	lr, #1
    801c:	e5d39032 	ldrb	r9, [r3, #50]	; 0x32
    8020:	e3a0a001 	mov	sl, #1
    8024:	e5de8000 	ldrb	r8, [lr]
    8028:	e1c88009 	bic	r8, r8, r9
    802c:	e5ce8000 	strb	r8, [lr]
    8030:	e3a08001 	mov	r8, #1
    8034:	e1a0e1ac 	lsr	lr, ip, #3
    8038:	e2066007 	and	r6, r6, #7
    803c:	e15a0008 	cmp	sl, r8
    8040:	e1a0ae18 	lsl	sl, r8, lr
    8044:	e1a08618 	lsl	r8, r8, r6
    8048:	e5c3c02e 	strb	ip, [r3, #46]	; 0x2e
    804c:	e6efa07a 	uxtb	sl, sl
    8050:	e6ef8078 	uxtb	r8, r8
    8054:	e5c3e030 	strb	lr, [r3, #48]	; 0x30
    8058:	e5c3602f 	strb	r6, [r3, #47]	; 0x2f
    805c:	e5c3a032 	strb	sl, [r3, #50]	; 0x32
    8060:	e5c38031 	strb	r8, [r3, #49]	; 0x31
    8064:	0a000062 	beq	81f4 <OSMutexPend+0x2d8>
    8068:	e593001c 	ldr	r0, [r3, #28]
    806c:	e3500000 	cmp	r0, #0
    8070:	0a000008 	beq	8098 <OSMutexPend+0x17c>
    8074:	e5d0e00a 	ldrb	lr, [r0, #10]
    8078:	e18aa00e 	orr	sl, sl, lr
    807c:	e5c0a00a 	strb	sl, [r0, #10]
    8080:	e5d36030 	ldrb	r6, [r3, #48]	; 0x30
    8084:	e5d3e031 	ldrb	lr, [r3, #49]	; 0x31
    8088:	e0800006 	add	r0, r0, r6
    808c:	e5d0600b 	ldrb	r6, [r0, #11]
    8090:	e186e00e 	orr	lr, r6, lr
    8094:	e5c0e00b 	strb	lr, [r0, #11]
    8098:	e3000f90 	movw	r0, #3984	; 0xf90
    809c:	e3400001 	movt	r0, #1
    80a0:	e780310c 	str	r3, [r0, ip, lsl #2]
    80a4:	e5953000 	ldr	r3, [r5]
    80a8:	e3a0e000 	mov	lr, #0
    80ac:	e1a00004 	mov	r0, r4
    80b0:	e5d3c02c 	ldrb	ip, [r3, #44]	; 0x2c
    80b4:	e5c3e02d 	strb	lr, [r3, #45]	; 0x2d
    80b8:	e5831028 	str	r1, [r3, #40]	; 0x28
    80bc:	e38cc010 	orr	ip, ip, #16
    80c0:	e5c3c02c 	strb	ip, [r3, #44]	; 0x2c
    80c4:	e58d2000 	str	r2, [sp]
    80c8:	ebfffa08 	bl	68f0 <OS_EventTaskWait>
    80cc:	e1a00007 	mov	r0, r7
    80d0:	eb00059c 	bl	9748 <OS_CPU_SR_Restore>
    80d4:	ebfffac7 	bl	6bf8 <OS_Sched>
    80d8:	eb000594 	bl	9730 <OS_CPU_SR_Save>
    80dc:	e59d2000 	ldr	r2, [sp]
    80e0:	e1a06000 	mov	r6, r0
    80e4:	e5950000 	ldr	r0, [r5]
    80e8:	e5d0302d 	ldrb	r3, [r0, #45]	; 0x2d
    80ec:	e3530000 	cmp	r3, #0
    80f0:	1a00000a 	bne	8120 <OSMutexPend+0x204>
    80f4:	e5c23000 	strb	r3, [r2]
    80f8:	e5953000 	ldr	r3, [r5]
    80fc:	e3a02000 	mov	r2, #0
    8100:	e1a00006 	mov	r0, r6
    8104:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    8108:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    810c:	e583201c 	str	r2, [r3, #28]
    8110:	e5832020 	str	r2, [r3, #32]
    8114:	e28dd00c 	add	sp, sp, #12
    8118:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    811c:	ea000589 	b	9748 <OS_CPU_SR_Restore>
    8120:	e3530002 	cmp	r3, #2
    8124:	03a0300e 	moveq	r3, #14
    8128:	05c23000 	strbeq	r3, [r2]
    812c:	0afffff1 	beq	80f8 <OSMutexPend+0x1dc>
    8130:	e1a01004 	mov	r1, r4
    8134:	e58d2000 	str	r2, [sp]
    8138:	ebfffa34 	bl	6a10 <OS_EventTaskRemove>
    813c:	e3a0300a 	mov	r3, #10
    8140:	e59d2000 	ldr	r2, [sp]
    8144:	eaffffea 	b	80f4 <OSMutexPend+0x1d8>
    8148:	e3001608 	movw	r1, #1544	; 0x608
    814c:	e3401001 	movt	r1, #1
    8150:	e2033cff 	and	r3, r3, #65280	; 0xff00
    8154:	e35c00ff 	cmp	ip, #255	; 0xff
    8158:	e5911000 	ldr	r1, [r1]
    815c:	e1c430b8 	strh	r3, [r4, #8]
    8160:	e5d1e02e 	ldrb	lr, [r1, #46]	; 0x2e
    8164:	e5841004 	str	r1, [r4, #4]
    8168:	e183300e 	orr	r3, r3, lr
    816c:	e1c430b8 	strh	r3, [r4, #8]
    8170:	0a000002 	beq	8180 <OSMutexPend+0x264>
    8174:	e5d1302e 	ldrb	r3, [r1, #46]	; 0x2e
    8178:	e153000c 	cmp	r3, ip
    817c:	9a000006 	bls	819c <OSMutexPend+0x280>
    8180:	e1a00007 	mov	r0, r7
    8184:	e58d2000 	str	r2, [sp]
    8188:	eb00056e 	bl	9748 <OS_CPU_SR_Restore>
    818c:	e59d2000 	ldr	r2, [sp]
    8190:	e3a03000 	mov	r3, #0
    8194:	e5c23000 	strb	r3, [r2]
    8198:	eaffff67 	b	7f3c <OSMutexPend+0x20>
    819c:	eb000569 	bl	9748 <OS_CPU_SR_Restore>
    81a0:	e59d2000 	ldr	r2, [sp]
    81a4:	e3a03078 	mov	r3, #120	; 0x78
    81a8:	e5c23000 	strb	r3, [r2]
    81ac:	eaffff62 	b	7f3c <OSMutexPend+0x20>
    81b0:	e593901c 	ldr	r9, [r3, #28]
    81b4:	e3590000 	cmp	r9, #0
    81b8:	0a00000b 	beq	81ec <OSMutexPend+0x2d0>
    81bc:	e0898008 	add	r8, r9, r8
    81c0:	e5d8a00b 	ldrb	sl, [r8, #11]
    81c4:	e1cae00e 	bic	lr, sl, lr
    81c8:	e5c8e00b 	strb	lr, [r8, #11]
    81cc:	e35e0000 	cmp	lr, #0
    81d0:	1a000005 	bne	81ec <OSMutexPend+0x2d0>
    81d4:	e5d38032 	ldrb	r8, [r3, #50]	; 0x32
    81d8:	e3a0a000 	mov	sl, #0
    81dc:	e5d9e00a 	ldrb	lr, [r9, #10]
    81e0:	e1cee008 	bic	lr, lr, r8
    81e4:	e5c9e00a 	strb	lr, [r9, #10]
    81e8:	eaffff90 	b	8030 <OSMutexPend+0x114>
    81ec:	e3a0a000 	mov	sl, #0
    81f0:	eaffff8e 	b	8030 <OSMutexPend+0x114>
    81f4:	e30065f4 	movw	r6, #1524	; 0x5f4
    81f8:	e3406001 	movt	r6, #1
    81fc:	e7d0b00e 	ldrb	fp, [r0, lr]
    8200:	e5d69000 	ldrb	r9, [r6]
    8204:	e188800b 	orr	r8, r8, fp
    8208:	e7c0800e 	strb	r8, [r0, lr]
    820c:	e18aa009 	orr	sl, sl, r9
    8210:	e5c6a000 	strb	sl, [r6]
    8214:	eaffff9f 	b	8098 <OSMutexPend+0x17c>

00008218 <OSMutexPost>:
    8218:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    821c:	e3003604 	movw	r3, #1540	; 0x604
    8220:	e3403001 	movt	r3, #1
    8224:	e1a04000 	mov	r4, r0
    8228:	e5d33000 	ldrb	r3, [r3]
    822c:	e3530000 	cmp	r3, #0
    8230:	0a000001 	beq	823c <OSMutexPost+0x24>
    8234:	e3a00005 	mov	r0, #5
    8238:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    823c:	e5d03000 	ldrb	r3, [r0]
    8240:	e3530004 	cmp	r3, #4
    8244:	0a000001 	beq	8250 <OSMutexPost+0x38>
    8248:	e3a00001 	mov	r0, #1
    824c:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    8250:	eb000536 	bl	9730 <OS_CPU_SR_Save>
    8254:	e3003608 	movw	r3, #1544	; 0x608
    8258:	e3403001 	movt	r3, #1
    825c:	e5942004 	ldr	r2, [r4, #4]
    8260:	e1d410b8 	ldrh	r1, [r4, #8]
    8264:	e5933000 	ldr	r3, [r3]
    8268:	e1520003 	cmp	r2, r3
    826c:	e1a05000 	mov	r5, r0
    8270:	0a000002 	beq	8280 <OSMutexPost+0x68>
    8274:	eb000533 	bl	9748 <OS_CPU_SR_Restore>
    8278:	e3a00064 	mov	r0, #100	; 0x64
    827c:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    8280:	e1a06421 	lsr	r6, r1, #8
    8284:	e35600ff 	cmp	r6, #255	; 0xff
    8288:	0a000006 	beq	82a8 <OSMutexPost+0x90>
    828c:	e5d2302e 	ldrb	r3, [r2, #46]	; 0x2e
    8290:	e1530006 	cmp	r3, r6
    8294:	0a00002b 	beq	8348 <OSMutexPost+0x130>
    8298:	e3003f90 	movw	r3, #3984	; 0xf90
    829c:	e3403001 	movt	r3, #1
    82a0:	e3a02001 	mov	r2, #1
    82a4:	e7832106 	str	r2, [r3, r6, lsl #2]
    82a8:	e5d4700a 	ldrb	r7, [r4, #10]
    82ac:	e3570000 	cmp	r7, #0
    82b0:	0a000018 	beq	8318 <OSMutexPost+0x100>
    82b4:	e3a01000 	mov	r1, #0
    82b8:	e3a02010 	mov	r2, #16
    82bc:	e1a03001 	mov	r3, r1
    82c0:	e1a00004 	mov	r0, r4
    82c4:	ebfff9f4 	bl	6a9c <OS_EventTaskRdy>
    82c8:	e3003f90 	movw	r3, #3984	; 0xf90
    82cc:	e3403001 	movt	r3, #1
    82d0:	e1d420b8 	ldrh	r2, [r4, #8]
    82d4:	e3c220ff 	bic	r2, r2, #255	; 0xff
    82d8:	e1500006 	cmp	r0, r6
    82dc:	e7933100 	ldr	r3, [r3, r0, lsl #2]
    82e0:	e1800002 	orr	r0, r0, r2
    82e4:	e1c400b8 	strh	r0, [r4, #8]
    82e8:	83a07000 	movhi	r7, #0
    82ec:	93a07001 	movls	r7, #1
    82f0:	e35600ff 	cmp	r6, #255	; 0xff
    82f4:	e5843004 	str	r3, [r4, #4]
    82f8:	e1a00005 	mov	r0, r5
    82fc:	03a07000 	moveq	r7, #0
    8300:	e3570000 	cmp	r7, #0
    8304:	0a00000b 	beq	8338 <OSMutexPost+0x120>
    8308:	eb00050e 	bl	9748 <OS_CPU_SR_Restore>
    830c:	ebfffa39 	bl	6bf8 <OS_Sched>
    8310:	e3a00078 	mov	r0, #120	; 0x78
    8314:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    8318:	e1d430b8 	ldrh	r3, [r4, #8]
    831c:	e1a00005 	mov	r0, r5
    8320:	e5847004 	str	r7, [r4, #4]
    8324:	e38330ff 	orr	r3, r3, #255	; 0xff
    8328:	e1c430b8 	strh	r3, [r4, #8]
    832c:	eb000505 	bl	9748 <OS_CPU_SR_Restore>
    8330:	e1a00007 	mov	r0, r7
    8334:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    8338:	eb000502 	bl	9748 <OS_CPU_SR_Restore>
    833c:	ebfffa2d 	bl	6bf8 <OS_Sched>
    8340:	e1a00007 	mov	r0, r7
    8344:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    8348:	e1a00002 	mov	r0, r2
    834c:	e6ef1071 	uxtb	r1, r1
    8350:	ebfffde0 	bl	7ad8 <OSMutex_RdyAtPrio>
    8354:	eaffffcf 	b	8298 <OSMutexPost+0x80>

00008358 <OSMutexQuery>:
    8358:	e3003604 	movw	r3, #1540	; 0x604
    835c:	e3403001 	movt	r3, #1
    8360:	e92d4030 	push	{r4, r5, lr}
    8364:	e1a05000 	mov	r5, r0
    8368:	e5d34000 	ldrb	r4, [r3]
    836c:	e24dd00c 	sub	sp, sp, #12
    8370:	e3540000 	cmp	r4, #0
    8374:	13a00006 	movne	r0, #6
    8378:	0a000001 	beq	8384 <OSMutexQuery+0x2c>
    837c:	e28dd00c 	add	sp, sp, #12
    8380:	e8bd8030 	pop	{r4, r5, pc}
    8384:	e5d53000 	ldrb	r3, [r5]
    8388:	e3530004 	cmp	r3, #4
    838c:	13a00001 	movne	r0, #1
    8390:	1afffff9 	bne	837c <OSMutexQuery+0x24>
    8394:	e58d1004 	str	r1, [sp, #4]
    8398:	eb0004e4 	bl	9730 <OS_CPU_SR_Save>
    839c:	e1d530b8 	ldrh	r3, [r5, #8]
    83a0:	e59d1004 	ldr	r1, [sp, #4]
    83a4:	e1a03423 	lsr	r3, r3, #8
    83a8:	e281c008 	add	ip, r1, #8
    83ac:	e5c1300b 	strb	r3, [r1, #11]
    83b0:	e5d53008 	ldrb	r3, [r5, #8]
    83b4:	e35300ff 	cmp	r3, #255	; 0xff
    83b8:	15c14009 	strbne	r4, [r1, #9]
    83bc:	e5c1300a 	strb	r3, [r1, #10]
    83c0:	03a03001 	moveq	r3, #1
    83c4:	05c13009 	strbeq	r3, [r1, #9]
    83c8:	e5f5200a 	ldrb	r2, [r5, #10]!
    83cc:	e1a03001 	mov	r3, r1
    83d0:	e5c12008 	strb	r2, [r1, #8]
    83d4:	e5f52001 	ldrb	r2, [r5, #1]!
    83d8:	e4c32001 	strb	r2, [r3], #1
    83dc:	e153000c 	cmp	r3, ip
    83e0:	1afffffb 	bne	83d4 <OSMutexQuery+0x7c>
    83e4:	eb0004d7 	bl	9748 <OS_CPU_SR_Restore>
    83e8:	e3a00000 	mov	r0, #0
    83ec:	eaffffe2 	b	837c <OSMutexQuery+0x24>

000083f0 <OSSemAccept>:
    83f0:	e92d4038 	push	{r3, r4, r5, lr}
    83f4:	e1a05000 	mov	r5, r0
    83f8:	e5d03000 	ldrb	r3, [r0]
    83fc:	e3530003 	cmp	r3, #3
    8400:	13a04000 	movne	r4, #0
    8404:	0a000001 	beq	8410 <OSSemAccept+0x20>
    8408:	e1a00004 	mov	r0, r4
    840c:	e8bd8038 	pop	{r3, r4, r5, pc}
    8410:	eb0004c6 	bl	9730 <OS_CPU_SR_Save>
    8414:	e1d540b8 	ldrh	r4, [r5, #8]
    8418:	e3540000 	cmp	r4, #0
    841c:	12443001 	subne	r3, r4, #1
    8420:	11c530b8 	strhne	r3, [r5, #8]
    8424:	eb0004c7 	bl	9748 <OS_CPU_SR_Restore>
    8428:	e1a00004 	mov	r0, r4
    842c:	e8bd8038 	pop	{r3, r4, r5, pc}

00008430 <OSSemCreate>:
    8430:	e3003604 	movw	r3, #1540	; 0x604
    8434:	e3403001 	movt	r3, #1
    8438:	e92d4070 	push	{r4, r5, r6, lr}
    843c:	e1a06000 	mov	r6, r0
    8440:	e5d35000 	ldrb	r5, [r3]
    8444:	e3550000 	cmp	r5, #0
    8448:	13a04000 	movne	r4, #0
    844c:	1a000011 	bne	8498 <OSSemCreate+0x68>
    8450:	eb0004b6 	bl	9730 <OS_CPU_SR_Save>
    8454:	e3003600 	movw	r3, #1536	; 0x600
    8458:	e3403001 	movt	r3, #1
    845c:	e5934000 	ldr	r4, [r3]
    8460:	e3540000 	cmp	r4, #0
    8464:	0a00000d 	beq	84a0 <OSSemCreate+0x70>
    8468:	e5942004 	ldr	r2, [r4, #4]
    846c:	e5832000 	str	r2, [r3]
    8470:	eb0004b4 	bl	9748 <OS_CPU_SR_Restore>
    8474:	e3a03003 	mov	r3, #3
    8478:	e1c460b8 	strh	r6, [r4, #8]
    847c:	e5c43000 	strb	r3, [r4]
    8480:	e1a00004 	mov	r0, r4
    8484:	e30d3e78 	movw	r3, #56952	; 0xde78
    8488:	e5845004 	str	r5, [r4, #4]
    848c:	e3403000 	movt	r3, #0
    8490:	e5843014 	str	r3, [r4, #20]
    8494:	ebfff9b9 	bl	6b80 <OS_EventWaitListInit>
    8498:	e1a00004 	mov	r0, r4
    849c:	e8bd8070 	pop	{r4, r5, r6, pc}
    84a0:	eb0004a8 	bl	9748 <OS_CPU_SR_Restore>
    84a4:	e1a00004 	mov	r0, r4
    84a8:	e8bd8070 	pop	{r4, r5, r6, pc}

000084ac <OSSemDel>:
    84ac:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    84b0:	e1a04000 	mov	r4, r0
    84b4:	e5d03000 	ldrb	r3, [r0]
    84b8:	e24dd008 	sub	sp, sp, #8
    84bc:	e1a05002 	mov	r5, r2
    84c0:	e3530003 	cmp	r3, #3
    84c4:	13a03001 	movne	r3, #1
    84c8:	15c23000 	strbne	r3, [r2]
    84cc:	0a000002 	beq	84dc <OSSemDel+0x30>
    84d0:	e1a00004 	mov	r0, r4
    84d4:	e28dd008 	add	sp, sp, #8
    84d8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    84dc:	e3003604 	movw	r3, #1540	; 0x604
    84e0:	e3403001 	movt	r3, #1
    84e4:	e5d33000 	ldrb	r3, [r3]
    84e8:	e3530000 	cmp	r3, #0
    84ec:	13a0300f 	movne	r3, #15
    84f0:	15c23000 	strbne	r3, [r2]
    84f4:	1afffff5 	bne	84d0 <OSSemDel+0x24>
    84f8:	e58d1004 	str	r1, [sp, #4]
    84fc:	eb00048b 	bl	9730 <OS_CPU_SR_Save>
    8500:	e5d4700a 	ldrb	r7, [r4, #10]
    8504:	e59d1004 	ldr	r1, [sp, #4]
    8508:	e2977000 	adds	r7, r7, #0
    850c:	13a07001 	movne	r7, #1
    8510:	e3510000 	cmp	r1, #0
    8514:	e1a06007 	mov	r6, r7
    8518:	e1a08000 	mov	r8, r0
    851c:	1a00000f 	bne	8560 <OSSemDel+0xb4>
    8520:	e3570000 	cmp	r7, #0
    8524:	1a000013 	bne	8578 <OSSemDel+0xcc>
    8528:	e3003600 	movw	r3, #1536	; 0x600
    852c:	e3403001 	movt	r3, #1
    8530:	e5c47000 	strb	r7, [r4]
    8534:	e30d2e78 	movw	r2, #56952	; 0xde78
    8538:	e5931000 	ldr	r1, [r3]
    853c:	e3402000 	movt	r2, #0
    8540:	e1c470b8 	strh	r7, [r4, #8]
    8544:	e5842014 	str	r2, [r4, #20]
    8548:	e5841004 	str	r1, [r4, #4]
    854c:	e5834000 	str	r4, [r3]
    8550:	eb00047c 	bl	9748 <OS_CPU_SR_Restore>
    8554:	e1a04007 	mov	r4, r7
    8558:	e5c57000 	strb	r7, [r5]
    855c:	eaffffdb 	b	84d0 <OSSemDel+0x24>
    8560:	e3510001 	cmp	r1, #1
    8564:	0a000007 	beq	8588 <OSSemDel+0xdc>
    8568:	eb000476 	bl	9748 <OS_CPU_SR_Restore>
    856c:	e3a03007 	mov	r3, #7
    8570:	e5c53000 	strb	r3, [r5]
    8574:	eaffffd5 	b	84d0 <OSSemDel+0x24>
    8578:	eb000472 	bl	9748 <OS_CPU_SR_Restore>
    857c:	e3a03049 	mov	r3, #73	; 0x49
    8580:	e5c53000 	strb	r3, [r5]
    8584:	eaffffd1 	b	84d0 <OSSemDel+0x24>
    8588:	e3570000 	cmp	r7, #0
    858c:	0a000007 	beq	85b0 <OSSemDel+0x104>
    8590:	e3a03002 	mov	r3, #2
    8594:	e1a00004 	mov	r0, r4
    8598:	e3a01000 	mov	r1, #0
    859c:	e3a02001 	mov	r2, #1
    85a0:	ebfff93d 	bl	6a9c <OS_EventTaskRdy>
    85a4:	e5d4300a 	ldrb	r3, [r4, #10]
    85a8:	e3530000 	cmp	r3, #0
    85ac:	1afffff7 	bne	8590 <OSSemDel+0xe4>
    85b0:	e3003600 	movw	r3, #1536	; 0x600
    85b4:	e3403001 	movt	r3, #1
    85b8:	e3a01000 	mov	r1, #0
    85bc:	e5c41000 	strb	r1, [r4]
    85c0:	e593c000 	ldr	ip, [r3]
    85c4:	e30d2e78 	movw	r2, #56952	; 0xde78
    85c8:	e1c410b8 	strh	r1, [r4, #8]
    85cc:	e3402000 	movt	r2, #0
    85d0:	e1a00008 	mov	r0, r8
    85d4:	e5842014 	str	r2, [r4, #20]
    85d8:	e584c004 	str	ip, [r4, #4]
    85dc:	e5834000 	str	r4, [r3]
    85e0:	eb000458 	bl	9748 <OS_CPU_SR_Restore>
    85e4:	e3560001 	cmp	r6, #1
    85e8:	0a000002 	beq	85f8 <OSSemDel+0x14c>
    85ec:	e3a04000 	mov	r4, #0
    85f0:	e5c54000 	strb	r4, [r5]
    85f4:	eaffffb5 	b	84d0 <OSSemDel+0x24>
    85f8:	ebfff97e 	bl	6bf8 <OS_Sched>
    85fc:	eafffffa 	b	85ec <OSSemDel+0x140>

00008600 <OSSemPend>:
    8600:	e92d4070 	push	{r4, r5, r6, lr}
    8604:	e1a04000 	mov	r4, r0
    8608:	e5d03000 	ldrb	r3, [r0]
    860c:	e24dd008 	sub	sp, sp, #8
    8610:	e3530003 	cmp	r3, #3
    8614:	13a03001 	movne	r3, #1
    8618:	15c23000 	strbne	r3, [r2]
    861c:	0a000001 	beq	8628 <OSSemPend+0x28>
    8620:	e28dd008 	add	sp, sp, #8
    8624:	e8bd8070 	pop	{r4, r5, r6, pc}
    8628:	e3003604 	movw	r3, #1540	; 0x604
    862c:	e3403001 	movt	r3, #1
    8630:	e5d33000 	ldrb	r3, [r3]
    8634:	e3530000 	cmp	r3, #0
    8638:	13a03002 	movne	r3, #2
    863c:	15c23000 	strbne	r3, [r2]
    8640:	1afffff6 	bne	8620 <OSSemPend+0x20>
    8644:	e3003554 	movw	r3, #1364	; 0x554
    8648:	e3403001 	movt	r3, #1
    864c:	e5d35000 	ldrb	r5, [r3]
    8650:	e3550000 	cmp	r5, #0
    8654:	13a0300d 	movne	r3, #13
    8658:	15c23000 	strbne	r3, [r2]
    865c:	1affffef 	bne	8620 <OSSemPend+0x20>
    8660:	e58d1004 	str	r1, [sp, #4]
    8664:	e58d2000 	str	r2, [sp]
    8668:	eb000430 	bl	9730 <OS_CPU_SR_Save>
    866c:	e1d4c0b8 	ldrh	ip, [r4, #8]
    8670:	e59d1004 	ldr	r1, [sp, #4]
    8674:	e35c0000 	cmp	ip, #0
    8678:	e59d2000 	ldr	r2, [sp]
    867c:	e1a06000 	mov	r6, r0
    8680:	1a000029 	bne	872c <OSSemPend+0x12c>
    8684:	e3005608 	movw	r5, #1544	; 0x608
    8688:	e3405001 	movt	r5, #1
    868c:	e1a00004 	mov	r0, r4
    8690:	e5953000 	ldr	r3, [r5]
    8694:	e5d3e02c 	ldrb	lr, [r3, #44]	; 0x2c
    8698:	e5c3c02d 	strb	ip, [r3, #45]	; 0x2d
    869c:	e5831028 	str	r1, [r3, #40]	; 0x28
    86a0:	e38ec001 	orr	ip, lr, #1
    86a4:	e5c3c02c 	strb	ip, [r3, #44]	; 0x2c
    86a8:	e58d2000 	str	r2, [sp]
    86ac:	ebfff88f 	bl	68f0 <OS_EventTaskWait>
    86b0:	e1a00006 	mov	r0, r6
    86b4:	eb000423 	bl	9748 <OS_CPU_SR_Restore>
    86b8:	ebfff94e 	bl	6bf8 <OS_Sched>
    86bc:	eb00041b 	bl	9730 <OS_CPU_SR_Save>
    86c0:	e59d2000 	ldr	r2, [sp]
    86c4:	e1a06000 	mov	r6, r0
    86c8:	e5950000 	ldr	r0, [r5]
    86cc:	e5d0302d 	ldrb	r3, [r0, #45]	; 0x2d
    86d0:	e3530000 	cmp	r3, #0
    86d4:	1a00000a 	bne	8704 <OSSemPend+0x104>
    86d8:	e5c23000 	strb	r3, [r2]
    86dc:	e5953000 	ldr	r3, [r5]
    86e0:	e3a02000 	mov	r2, #0
    86e4:	e1a00006 	mov	r0, r6
    86e8:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    86ec:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
    86f0:	e583201c 	str	r2, [r3, #28]
    86f4:	e5832020 	str	r2, [r3, #32]
    86f8:	e28dd008 	add	sp, sp, #8
    86fc:	e8bd4070 	pop	{r4, r5, r6, lr}
    8700:	ea000410 	b	9748 <OS_CPU_SR_Restore>
    8704:	e3530002 	cmp	r3, #2
    8708:	03a0300e 	moveq	r3, #14
    870c:	05c23000 	strbeq	r3, [r2]
    8710:	0afffff1 	beq	86dc <OSSemPend+0xdc>
    8714:	e1a01004 	mov	r1, r4
    8718:	e58d2000 	str	r2, [sp]
    871c:	ebfff8bb 	bl	6a10 <OS_EventTaskRemove>
    8720:	e3a0300a 	mov	r3, #10
    8724:	e59d2000 	ldr	r2, [sp]
    8728:	eaffffea 	b	86d8 <OSSemPend+0xd8>
    872c:	e24cc001 	sub	ip, ip, #1
    8730:	e1c4c0b8 	strh	ip, [r4, #8]
    8734:	eb000403 	bl	9748 <OS_CPU_SR_Restore>
    8738:	e59d2000 	ldr	r2, [sp]
    873c:	e5c25000 	strb	r5, [r2]
    8740:	eaffffb6 	b	8620 <OSSemPend+0x20>

00008744 <OSSemPendAbort>:
    8744:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    8748:	e1a04000 	mov	r4, r0
    874c:	e5d03000 	ldrb	r3, [r0]
    8750:	e24dd008 	sub	sp, sp, #8
    8754:	e1a06002 	mov	r6, r2
    8758:	e3530003 	cmp	r3, #3
    875c:	0a000005 	beq	8778 <OSSemPendAbort+0x34>
    8760:	e3a05000 	mov	r5, #0
    8764:	e3a03001 	mov	r3, #1
    8768:	e5c23000 	strb	r3, [r2]
    876c:	e1a00005 	mov	r0, r5
    8770:	e28dd008 	add	sp, sp, #8
    8774:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    8778:	e58d1004 	str	r1, [sp, #4]
    877c:	eb0003eb 	bl	9730 <OS_CPU_SR_Save>
    8780:	e5d4700a 	ldrb	r7, [r4, #10]
    8784:	e59d1004 	ldr	r1, [sp, #4]
    8788:	e3570000 	cmp	r7, #0
    878c:	e1a08000 	mov	r8, r0
    8790:	0a000019 	beq	87fc <OSSemPendAbort+0xb8>
    8794:	e3510001 	cmp	r1, #1
    8798:	0a00000b 	beq	87cc <OSSemPendAbort+0x88>
    879c:	e1a00004 	mov	r0, r4
    87a0:	e3a01000 	mov	r1, #0
    87a4:	e3a02001 	mov	r2, #1
    87a8:	e3a03002 	mov	r3, #2
    87ac:	ebfff8ba 	bl	6a9c <OS_EventTaskRdy>
    87b0:	e3a05001 	mov	r5, #1
    87b4:	e1a00008 	mov	r0, r8
    87b8:	eb0003e2 	bl	9748 <OS_CPU_SR_Restore>
    87bc:	ebfff90d 	bl	6bf8 <OS_Sched>
    87c0:	e3a0300e 	mov	r3, #14
    87c4:	e5c63000 	strb	r3, [r6]
    87c8:	eaffffe7 	b	876c <OSSemPendAbort+0x28>
    87cc:	e3a05000 	mov	r5, #0
    87d0:	e3a03002 	mov	r3, #2
    87d4:	e1a00004 	mov	r0, r4
    87d8:	e3a01000 	mov	r1, #0
    87dc:	e3a02001 	mov	r2, #1
    87e0:	ebfff8ad 	bl	6a9c <OS_EventTaskRdy>
    87e4:	e5d4300a 	ldrb	r3, [r4, #10]
    87e8:	e2855001 	add	r5, r5, #1
    87ec:	e3530000 	cmp	r3, #0
    87f0:	e6ef5075 	uxtb	r5, r5
    87f4:	1afffff5 	bne	87d0 <OSSemPendAbort+0x8c>
    87f8:	eaffffed 	b	87b4 <OSSemPendAbort+0x70>
    87fc:	eb0003d1 	bl	9748 <OS_CPU_SR_Restore>
    8800:	e1a05007 	mov	r5, r7
    8804:	e5c67000 	strb	r7, [r6]
    8808:	eaffffd7 	b	876c <OSSemPendAbort+0x28>

0000880c <OSSemPost>:
    880c:	e92d4070 	push	{r4, r5, r6, lr}
    8810:	e1a04000 	mov	r4, r0
    8814:	e5d03000 	ldrb	r3, [r0]
    8818:	e3530003 	cmp	r3, #3
    881c:	0a000001 	beq	8828 <OSSemPost+0x1c>
    8820:	e3a00001 	mov	r0, #1
    8824:	e8bd8070 	pop	{r4, r5, r6, pc}
    8828:	eb0003c0 	bl	9730 <OS_CPU_SR_Save>
    882c:	e5d4500a 	ldrb	r5, [r4, #10]
    8830:	e3550000 	cmp	r5, #0
    8834:	e1a06000 	mov	r6, r0
    8838:	1a00000b 	bne	886c <OSSemPost+0x60>
    883c:	e1d430b8 	ldrh	r3, [r4, #8]
    8840:	e30f2fff 	movw	r2, #65535	; 0xffff
    8844:	e1530002 	cmp	r3, r2
    8848:	0a000004 	beq	8860 <OSSemPost+0x54>
    884c:	e2833001 	add	r3, r3, #1
    8850:	e1c430b8 	strh	r3, [r4, #8]
    8854:	eb0003bb 	bl	9748 <OS_CPU_SR_Restore>
    8858:	e1a00005 	mov	r0, r5
    885c:	e8bd8070 	pop	{r4, r5, r6, pc}
    8860:	eb0003b8 	bl	9748 <OS_CPU_SR_Restore>
    8864:	e3a00033 	mov	r0, #51	; 0x33
    8868:	e8bd8070 	pop	{r4, r5, r6, pc}
    886c:	e3a01000 	mov	r1, #0
    8870:	e3a02001 	mov	r2, #1
    8874:	e1a03001 	mov	r3, r1
    8878:	e1a00004 	mov	r0, r4
    887c:	ebfff886 	bl	6a9c <OS_EventTaskRdy>
    8880:	e1a00006 	mov	r0, r6
    8884:	eb0003af 	bl	9748 <OS_CPU_SR_Restore>
    8888:	ebfff8da 	bl	6bf8 <OS_Sched>
    888c:	e3a00000 	mov	r0, #0
    8890:	e8bd8070 	pop	{r4, r5, r6, pc}

00008894 <OSSemQuery>:
    8894:	e92d4010 	push	{r4, lr}
    8898:	e1a04000 	mov	r4, r0
    889c:	e5d03000 	ldrb	r3, [r0]
    88a0:	e24dd008 	sub	sp, sp, #8
    88a4:	e3530003 	cmp	r3, #3
    88a8:	13a00001 	movne	r0, #1
    88ac:	0a000001 	beq	88b8 <OSSemQuery+0x24>
    88b0:	e28dd008 	add	sp, sp, #8
    88b4:	e8bd8010 	pop	{r4, pc}
    88b8:	e58d1004 	str	r1, [sp, #4]
    88bc:	eb00039b 	bl	9730 <OS_CPU_SR_Save>
    88c0:	e59d1004 	ldr	r1, [sp, #4]
    88c4:	e1a02004 	mov	r2, r4
    88c8:	e5f2c00a 	ldrb	ip, [r2, #10]!
    88cc:	e2813002 	add	r3, r1, #2
    88d0:	e281e00a 	add	lr, r1, #10
    88d4:	e5c1c00a 	strb	ip, [r1, #10]
    88d8:	e5f2c001 	ldrb	ip, [r2, #1]!
    88dc:	e4c3c001 	strb	ip, [r3], #1
    88e0:	e153000e 	cmp	r3, lr
    88e4:	1afffffb 	bne	88d8 <OSSemQuery+0x44>
    88e8:	e1d430b8 	ldrh	r3, [r4, #8]
    88ec:	e1c130b0 	strh	r3, [r1]
    88f0:	eb000394 	bl	9748 <OS_CPU_SR_Restore>
    88f4:	e3a00000 	mov	r0, #0
    88f8:	eaffffec 	b	88b0 <OSSemQuery+0x1c>

000088fc <OSSemSet>:
    88fc:	e92d4010 	push	{r4, lr}
    8900:	e1a04000 	mov	r4, r0
    8904:	e5d03000 	ldrb	r3, [r0]
    8908:	e24dd008 	sub	sp, sp, #8
    890c:	e3530003 	cmp	r3, #3
    8910:	0a000003 	beq	8924 <OSSemSet+0x28>
    8914:	e3a03001 	mov	r3, #1
    8918:	e5c23000 	strb	r3, [r2]
    891c:	e28dd008 	add	sp, sp, #8
    8920:	e8bd8010 	pop	{r4, pc}
    8924:	e58d1004 	str	r1, [sp, #4]
    8928:	e58d2000 	str	r2, [sp]
    892c:	eb00037f 	bl	9730 <OS_CPU_SR_Save>
    8930:	e59d2000 	ldr	r2, [sp]
    8934:	e3a03000 	mov	r3, #0
    8938:	e5c23000 	strb	r3, [r2]
    893c:	e1d430b8 	ldrh	r3, [r4, #8]
    8940:	e59d1004 	ldr	r1, [sp, #4]
    8944:	e3530000 	cmp	r3, #0
    8948:	1a000004 	bne	8960 <OSSemSet+0x64>
    894c:	e5d4300a 	ldrb	r3, [r4, #10]
    8950:	e3530000 	cmp	r3, #0
    8954:	13a03049 	movne	r3, #73	; 0x49
    8958:	15c23000 	strbne	r3, [r2]
    895c:	1a000000 	bne	8964 <OSSemSet+0x68>
    8960:	e1c410b8 	strh	r1, [r4, #8]
    8964:	e28dd008 	add	sp, sp, #8
    8968:	e8bd4010 	pop	{r4, lr}
    896c:	ea000375 	b	9748 <OS_CPU_SR_Restore>

00008970 <OSTaskChangePrio>:
    8970:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8974:	e1a04001 	mov	r4, r1
    8978:	e1a05000 	mov	r5, r0
    897c:	eb00036b 	bl	9730 <OS_CPU_SR_Save>
    8980:	e3003f90 	movw	r3, #3984	; 0xf90
    8984:	e3403001 	movt	r3, #1
    8988:	e7932104 	ldr	r2, [r3, r4, lsl #2]
    898c:	e3520000 	cmp	r2, #0
    8990:	e1a0a000 	mov	sl, r0
    8994:	0a000002 	beq	89a4 <OSTaskChangePrio+0x34>
    8998:	eb00036a 	bl	9748 <OS_CPU_SR_Restore>
    899c:	e3a00028 	mov	r0, #40	; 0x28
    89a0:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    89a4:	e35500ff 	cmp	r5, #255	; 0xff
    89a8:	03002608 	movweq	r2, #1544	; 0x608
    89ac:	03402001 	movteq	r2, #1
    89b0:	05922000 	ldreq	r2, [r2]
    89b4:	05d2502e 	ldrbeq	r5, [r2, #46]	; 0x2e
    89b8:	e793c105 	ldr	ip, [r3, r5, lsl #2]
    89bc:	e3003f90 	movw	r3, #3984	; 0xf90
    89c0:	e3403001 	movt	r3, #1
    89c4:	e35c0000 	cmp	ip, #0
    89c8:	0a000058 	beq	8b30 <OSTaskChangePrio+0x1c0>
    89cc:	e35c0001 	cmp	ip, #1
    89d0:	0a000059 	beq	8b3c <OSTaskChangePrio+0x1cc>
    89d4:	e3a02000 	mov	r2, #0
    89d8:	e7832105 	str	r2, [r3, r5, lsl #2]
    89dc:	e783c104 	str	ip, [r3, r4, lsl #2]
    89e0:	e30035f8 	movw	r3, #1528	; 0x5f8
    89e4:	e5dc7030 	ldrb	r7, [ip, #48]	; 0x30
    89e8:	e3403001 	movt	r3, #1
    89ec:	e5dc8031 	ldrb	r8, [ip, #49]	; 0x31
    89f0:	e3a06001 	mov	r6, #1
    89f4:	e1a0e1a4 	lsr	lr, r4, #3
    89f8:	e2049007 	and	r9, r4, #7
    89fc:	e7d32007 	ldrb	r2, [r3, r7]
    8a00:	e1a05e16 	lsl	r5, r6, lr
    8a04:	e1a06916 	lsl	r6, r6, r9
    8a08:	e5dc0032 	ldrb	r0, [ip, #50]	; 0x32
    8a0c:	e1120008 	tst	r2, r8
    8a10:	e6ef5075 	uxtb	r5, r5
    8a14:	e6ef6076 	uxtb	r6, r6
    8a18:	0a00000b 	beq	8a4c <OSTaskChangePrio+0xdc>
    8a1c:	e1c22008 	bic	r2, r2, r8
    8a20:	e7c32007 	strb	r2, [r3, r7]
    8a24:	e3520000 	cmp	r2, #0
    8a28:	e30025f4 	movw	r2, #1524	; 0x5f4
    8a2c:	e3402001 	movt	r2, #1
    8a30:	e7d3100e 	ldrb	r1, [r3, lr]
    8a34:	e5d2b000 	ldrb	fp, [r2]
    8a38:	01cbb000 	biceq	fp, fp, r0
    8a3c:	e18bb005 	orr	fp, fp, r5
    8a40:	e5c2b000 	strb	fp, [r2]
    8a44:	e1862001 	orr	r2, r6, r1
    8a48:	e7c3200e 	strb	r2, [r3, lr]
    8a4c:	e59c301c 	ldr	r3, [ip, #28]
    8a50:	e3530000 	cmp	r3, #0
    8a54:	0a00000c 	beq	8a8c <OSTaskChangePrio+0x11c>
    8a58:	e0831007 	add	r1, r3, r7
    8a5c:	e5d1200b 	ldrb	r2, [r1, #11]
    8a60:	e1c22008 	bic	r2, r2, r8
    8a64:	e5c1200b 	strb	r2, [r1, #11]
    8a68:	e5d3100a 	ldrb	r1, [r3, #10]
    8a6c:	e3520000 	cmp	r2, #0
    8a70:	e083200e 	add	r2, r3, lr
    8a74:	01c11000 	biceq	r1, r1, r0
    8a78:	e1811005 	orr	r1, r1, r5
    8a7c:	e5c3100a 	strb	r1, [r3, #10]
    8a80:	e5d2300b 	ldrb	r3, [r2, #11]
    8a84:	e1863003 	orr	r3, r6, r3
    8a88:	e5c2300b 	strb	r3, [r2, #11]
    8a8c:	e59c1020 	ldr	r1, [ip, #32]
    8a90:	e3510000 	cmp	r1, #0
    8a94:	0a000015 	beq	8af0 <OSTaskChangePrio+0x180>
    8a98:	e5913000 	ldr	r3, [r1]
    8a9c:	e3530000 	cmp	r3, #0
    8aa0:	0a000012 	beq	8af0 <OSTaskChangePrio+0x180>
    8aa4:	e1e08008 	mvn	r8, r8
    8aa8:	e1e00000 	mvn	r0, r0
    8aac:	e6ef8078 	uxtb	r8, r8
    8ab0:	e083b007 	add	fp, r3, r7
    8ab4:	e5db200b 	ldrb	r2, [fp, #11]
    8ab8:	e0082002 	and	r2, r8, r2
    8abc:	e5cb200b 	strb	r2, [fp, #11]
    8ac0:	e5d3b00a 	ldrb	fp, [r3, #10]
    8ac4:	e3520000 	cmp	r2, #0
    8ac8:	e083200e 	add	r2, r3, lr
    8acc:	0000b00b 	andeq	fp, r0, fp
    8ad0:	e18bb005 	orr	fp, fp, r5
    8ad4:	e5c3b00a 	strb	fp, [r3, #10]
    8ad8:	e5d2300b 	ldrb	r3, [r2, #11]
    8adc:	e1863003 	orr	r3, r6, r3
    8ae0:	e5c2300b 	strb	r3, [r2, #11]
    8ae4:	e5b13004 	ldr	r3, [r1, #4]!
    8ae8:	e3530000 	cmp	r3, #0
    8aec:	1affffef 	bne	8ab0 <OSTaskChangePrio+0x140>
    8af0:	e5cc402e 	strb	r4, [ip, #46]	; 0x2e
    8af4:	e1a0000a 	mov	r0, sl
    8af8:	e5cce030 	strb	lr, [ip, #48]	; 0x30
    8afc:	e5cc902f 	strb	r9, [ip, #47]	; 0x2f
    8b00:	e5cc5032 	strb	r5, [ip, #50]	; 0x32
    8b04:	e5cc6031 	strb	r6, [ip, #49]	; 0x31
    8b08:	eb00030e 	bl	9748 <OS_CPU_SR_Restore>
    8b0c:	e3003556 	movw	r3, #1366	; 0x556
    8b10:	e3403001 	movt	r3, #1
    8b14:	e5d33000 	ldrb	r3, [r3]
    8b18:	e3530001 	cmp	r3, #1
    8b1c:	0a000001 	beq	8b28 <OSTaskChangePrio+0x1b8>
    8b20:	e3a00000 	mov	r0, #0
    8b24:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    8b28:	ebfff832 	bl	6bf8 <OS_Sched>
    8b2c:	eafffffb 	b	8b20 <OSTaskChangePrio+0x1b0>
    8b30:	eb000304 	bl	9748 <OS_CPU_SR_Restore>
    8b34:	e3a00029 	mov	r0, #41	; 0x29
    8b38:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    8b3c:	eb000301 	bl	9748 <OS_CPU_SR_Restore>
    8b40:	e3a00043 	mov	r0, #67	; 0x43
    8b44:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}

00008b48 <OSTaskCreate>:
    8b48:	e92d45f0 	push	{r4, r5, r6, r7, r8, sl, lr}
    8b4c:	e24dd014 	sub	sp, sp, #20
    8b50:	e1a0a000 	mov	sl, r0
    8b54:	e1a08001 	mov	r8, r1
    8b58:	e1a05002 	mov	r5, r2
    8b5c:	e1a06003 	mov	r6, r3
    8b60:	eb0002f2 	bl	9730 <OS_CPU_SR_Save>
    8b64:	e300c604 	movw	ip, #1540	; 0x604
    8b68:	e340c001 	movt	ip, #1
    8b6c:	e5dcc000 	ldrb	ip, [ip]
    8b70:	e35c0000 	cmp	ip, #0
    8b74:	1a000009 	bne	8ba0 <OSTaskCreate+0x58>
    8b78:	e3004f90 	movw	r4, #3984	; 0xf90
    8b7c:	e3404001 	movt	r4, #1
    8b80:	e7947106 	ldr	r7, [r4, r6, lsl #2]
    8b84:	e3570000 	cmp	r7, #0
    8b88:	0a000007 	beq	8bac <OSTaskCreate+0x64>
    8b8c:	eb0002ed 	bl	9748 <OS_CPU_SR_Restore>
    8b90:	e3a05028 	mov	r5, #40	; 0x28
    8b94:	e1a00005 	mov	r0, r5
    8b98:	e28dd014 	add	sp, sp, #20
    8b9c:	e8bd85f0 	pop	{r4, r5, r6, r7, r8, sl, pc}
    8ba0:	eb0002e8 	bl	9748 <OS_CPU_SR_Restore>
    8ba4:	e3a0503c 	mov	r5, #60	; 0x3c
    8ba8:	eafffff9 	b	8b94 <OSTaskCreate+0x4c>
    8bac:	e3a03001 	mov	r3, #1
    8bb0:	e7843106 	str	r3, [r4, r6, lsl #2]
    8bb4:	eb0002e3 	bl	9748 <OS_CPU_SR_Restore>
    8bb8:	e1a02005 	mov	r2, r5
    8bbc:	e1a01008 	mov	r1, r8
    8bc0:	e1a03007 	mov	r3, r7
    8bc4:	e1a0000a 	mov	r0, sl
    8bc8:	eb0003f4 	bl	9ba0 <OSTaskStkInit>
    8bcc:	e58d7000 	str	r7, [sp]
    8bd0:	e58d7004 	str	r7, [sp, #4]
    8bd4:	e1a02007 	mov	r2, r7
    8bd8:	e58d7008 	str	r7, [sp, #8]
    8bdc:	e1a03007 	mov	r3, r7
    8be0:	e1a01000 	mov	r1, r0
    8be4:	e1a00006 	mov	r0, r6
    8be8:	ebfff93f 	bl	70ec <OS_TCBInit>
    8bec:	e2505000 	subs	r5, r0, #0
    8bf0:	1a000006 	bne	8c10 <OSTaskCreate+0xc8>
    8bf4:	e3003556 	movw	r3, #1366	; 0x556
    8bf8:	e3403001 	movt	r3, #1
    8bfc:	e5d33000 	ldrb	r3, [r3]
    8c00:	e3530001 	cmp	r3, #1
    8c04:	1affffe2 	bne	8b94 <OSTaskCreate+0x4c>
    8c08:	ebfff7fa 	bl	6bf8 <OS_Sched>
    8c0c:	eaffffe0 	b	8b94 <OSTaskCreate+0x4c>
    8c10:	eb0002c6 	bl	9730 <OS_CPU_SR_Save>
    8c14:	e7847106 	str	r7, [r4, r6, lsl #2]
    8c18:	eb0002ca 	bl	9748 <OS_CPU_SR_Restore>
    8c1c:	eaffffdc 	b	8b94 <OSTaskCreate+0x4c>

00008c20 <OSTaskCreateExt>:
    8c20:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    8c24:	e24dd010 	sub	sp, sp, #16
    8c28:	e1a07000 	mov	r7, r0
    8c2c:	e1a08001 	mov	r8, r1
    8c30:	e1a0a002 	mov	sl, r2
    8c34:	e1a06003 	mov	r6, r3
    8c38:	e1dd54b0 	ldrh	r5, [sp, #64]	; 0x40
    8c3c:	eb0002bb 	bl	9730 <OS_CPU_SR_Save>
    8c40:	e300c604 	movw	ip, #1540	; 0x604
    8c44:	e340c001 	movt	ip, #1
    8c48:	e5dcc000 	ldrb	ip, [ip]
    8c4c:	e35c0000 	cmp	ip, #0
    8c50:	1a000009 	bne	8c7c <OSTaskCreateExt+0x5c>
    8c54:	e3004f90 	movw	r4, #3984	; 0xf90
    8c58:	e3404001 	movt	r4, #1
    8c5c:	e7949106 	ldr	r9, [r4, r6, lsl #2]
    8c60:	e3590000 	cmp	r9, #0
    8c64:	0a000007 	beq	8c88 <OSTaskCreateExt+0x68>
    8c68:	eb0002b6 	bl	9748 <OS_CPU_SR_Restore>
    8c6c:	e3a05028 	mov	r5, #40	; 0x28
    8c70:	e1a00005 	mov	r0, r5
    8c74:	e28dd010 	add	sp, sp, #16
    8c78:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
    8c7c:	eb0002b1 	bl	9748 <OS_CPU_SR_Restore>
    8c80:	e3a0503c 	mov	r5, #60	; 0x3c
    8c84:	eafffff9 	b	8c70 <OSTaskCreateExt+0x50>
    8c88:	e3a03001 	mov	r3, #1
    8c8c:	e7843106 	str	r3, [r4, r6, lsl #2]
    8c90:	eb0002ac 	bl	9748 <OS_CPU_SR_Restore>
    8c94:	e2053003 	and	r3, r5, #3
    8c98:	e3530003 	cmp	r3, #3
    8c9c:	1a000006 	bne	8cbc <OSTaskCreateExt+0x9c>
    8ca0:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
    8ca4:	e3530000 	cmp	r3, #0
    8ca8:	0a000003 	beq	8cbc <OSTaskCreateExt+0x9c>
    8cac:	e59d2034 	ldr	r2, [sp, #52]	; 0x34
    8cb0:	e2533001 	subs	r3, r3, #1
    8cb4:	e4829004 	str	r9, [r2], #4
    8cb8:	1afffffc 	bne	8cb0 <OSTaskCreateExt+0x90>
    8cbc:	e1a03005 	mov	r3, r5
    8cc0:	e1a01008 	mov	r1, r8
    8cc4:	e1a0200a 	mov	r2, sl
    8cc8:	e1a00007 	mov	r0, r7
    8ccc:	eb0003b3 	bl	9ba0 <OSTaskStkInit>
    8cd0:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
    8cd4:	e59d2034 	ldr	r2, [sp, #52]	; 0x34
    8cd8:	e58d3000 	str	r3, [sp]
    8cdc:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
    8ce0:	e98d0028 	stmib	sp, {r3, r5}
    8ce4:	e1dd33b0 	ldrh	r3, [sp, #48]	; 0x30
    8ce8:	e1a01000 	mov	r1, r0
    8cec:	e1a00006 	mov	r0, r6
    8cf0:	ebfff8fd 	bl	70ec <OS_TCBInit>
    8cf4:	e2505000 	subs	r5, r0, #0
    8cf8:	1a000006 	bne	8d18 <OSTaskCreateExt+0xf8>
    8cfc:	e3003556 	movw	r3, #1366	; 0x556
    8d00:	e3403001 	movt	r3, #1
    8d04:	e5d33000 	ldrb	r3, [r3]
    8d08:	e3530001 	cmp	r3, #1
    8d0c:	1affffd7 	bne	8c70 <OSTaskCreateExt+0x50>
    8d10:	ebfff7b8 	bl	6bf8 <OS_Sched>
    8d14:	eaffffd5 	b	8c70 <OSTaskCreateExt+0x50>
    8d18:	eb000284 	bl	9730 <OS_CPU_SR_Save>
    8d1c:	e3a03000 	mov	r3, #0
    8d20:	e7843106 	str	r3, [r4, r6, lsl #2]
    8d24:	eb000287 	bl	9748 <OS_CPU_SR_Restore>
    8d28:	eaffffd0 	b	8c70 <OSTaskCreateExt+0x50>

00008d2c <OSTaskDel>:
    8d2c:	e3003604 	movw	r3, #1540	; 0x604
    8d30:	e3403001 	movt	r3, #1
    8d34:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    8d38:	e1a04000 	mov	r4, r0
    8d3c:	e5d33000 	ldrb	r3, [r3]
    8d40:	e3530000 	cmp	r3, #0
    8d44:	0a000001 	beq	8d50 <OSTaskDel+0x24>
    8d48:	e3a00040 	mov	r0, #64	; 0x40
    8d4c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    8d50:	e350003f 	cmp	r0, #63	; 0x3f
    8d54:	1a000001 	bne	8d60 <OSTaskDel+0x34>
    8d58:	e3a0003e 	mov	r0, #62	; 0x3e
    8d5c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    8d60:	eb000272 	bl	9730 <OS_CPU_SR_Save>
    8d64:	e35400ff 	cmp	r4, #255	; 0xff
    8d68:	e3006f90 	movw	r6, #3984	; 0xf90
    8d6c:	e3406001 	movt	r6, #1
    8d70:	03003608 	movweq	r3, #1544	; 0x608
    8d74:	03403001 	movteq	r3, #1
    8d78:	e1a08000 	mov	r8, r0
    8d7c:	05933000 	ldreq	r3, [r3]
    8d80:	05d3402e 	ldrbeq	r4, [r3, #46]	; 0x2e
    8d84:	e7965104 	ldr	r5, [r6, r4, lsl #2]
    8d88:	e3550000 	cmp	r5, #0
    8d8c:	0a000058 	beq	8ef4 <OSTaskDel+0x1c8>
    8d90:	e3550001 	cmp	r5, #1
    8d94:	0a000059 	beq	8f00 <OSTaskDel+0x1d4>
    8d98:	e5d51030 	ldrb	r1, [r5, #48]	; 0x30
    8d9c:	e30035f8 	movw	r3, #1528	; 0x5f8
    8da0:	e3403001 	movt	r3, #1
    8da4:	e5d50031 	ldrb	r0, [r5, #49]	; 0x31
    8da8:	e7d32001 	ldrb	r2, [r3, r1]
    8dac:	e1c22000 	bic	r2, r2, r0
    8db0:	e7c32001 	strb	r2, [r3, r1]
    8db4:	e3520000 	cmp	r2, #0
    8db8:	0a000043 	beq	8ecc <OSTaskDel+0x1a0>
    8dbc:	e595101c 	ldr	r1, [r5, #28]
    8dc0:	e3510000 	cmp	r1, #0
    8dc4:	0a000001 	beq	8dd0 <OSTaskDel+0xa4>
    8dc8:	e1a00005 	mov	r0, r5
    8dcc:	ebfff70f 	bl	6a10 <OS_EventTaskRemove>
    8dd0:	e5951020 	ldr	r1, [r5, #32]
    8dd4:	e3510000 	cmp	r1, #0
    8dd8:	0a000001 	beq	8de4 <OSTaskDel+0xb8>
    8ddc:	e1a00005 	mov	r0, r5
    8de0:	ebfff716 	bl	6a40 <OS_EventTaskRemoveMulti>
    8de4:	e3007554 	movw	r7, #1364	; 0x554
    8de8:	e3407001 	movt	r7, #1
    8dec:	e3a03000 	mov	r3, #0
    8df0:	e1a00008 	mov	r0, r8
    8df4:	e5d72000 	ldrb	r2, [r7]
    8df8:	e5853028 	str	r3, [r5, #40]	; 0x28
    8dfc:	e35200ff 	cmp	r2, #255	; 0xff
    8e00:	e5c5302c 	strb	r3, [r5, #44]	; 0x2c
    8e04:	e5c5302d 	strb	r3, [r5, #45]	; 0x2d
    8e08:	12822001 	addne	r2, r2, #1
    8e0c:	15c72000 	strbne	r2, [r7]
    8e10:	eb00024c 	bl	9748 <OS_CPU_SR_Restore>
    8e14:	ebfff6b4 	bl	68ec <OS_Dummy>
    8e18:	eb000244 	bl	9730 <OS_CPU_SR_Save>
    8e1c:	e5d72000 	ldrb	r2, [r7]
    8e20:	e3003554 	movw	r3, #1364	; 0x554
    8e24:	e3403001 	movt	r3, #1
    8e28:	e3520000 	cmp	r2, #0
    8e2c:	12422001 	subne	r2, r2, #1
    8e30:	15c32000 	strbne	r2, [r3]
    8e34:	e1a08000 	mov	r8, r0
    8e38:	e1a00005 	mov	r0, r5
    8e3c:	eb000353 	bl	9b90 <OSTaskDelHook>
    8e40:	e3a02000 	mov	r2, #0
    8e44:	e30035e8 	movw	r3, #1512	; 0x5e8
    8e48:	e7862104 	str	r2, [r6, r4, lsl #2]
    8e4c:	e3403001 	movt	r3, #1
    8e50:	e5952018 	ldr	r2, [r5, #24]
    8e54:	e1a00008 	mov	r0, r8
    8e58:	e3520000 	cmp	r2, #0
    8e5c:	e5d31000 	ldrb	r1, [r3]
    8e60:	e2411001 	sub	r1, r1, #1
    8e64:	e5c31000 	strb	r1, [r3]
    8e68:	15953014 	ldrne	r3, [r5, #20]
    8e6c:	03003560 	movweq	r3, #1376	; 0x560
    8e70:	05951014 	ldreq	r1, [r5, #20]
    8e74:	03403001 	movteq	r3, #1
    8e78:	15823014 	strne	r3, [r2, #20]
    8e7c:	15953014 	ldrne	r3, [r5, #20]
    8e80:	05831000 	streq	r1, [r3]
    8e84:	05812018 	streq	r2, [r1, #24]
    8e88:	15832018 	strne	r2, [r3, #24]
    8e8c:	e30035e4 	movw	r3, #1508	; 0x5e4
    8e90:	e3403001 	movt	r3, #1
    8e94:	e30d2e78 	movw	r2, #56952	; 0xde78
    8e98:	e3402000 	movt	r2, #0
    8e9c:	e5852048 	str	r2, [r5, #72]	; 0x48
    8ea0:	e5931000 	ldr	r1, [r3]
    8ea4:	e5835000 	str	r5, [r3]
    8ea8:	e5851014 	str	r1, [r5, #20]
    8eac:	eb000225 	bl	9748 <OS_CPU_SR_Restore>
    8eb0:	e3003556 	movw	r3, #1366	; 0x556
    8eb4:	e3403001 	movt	r3, #1
    8eb8:	e5d33000 	ldrb	r3, [r3]
    8ebc:	e3530001 	cmp	r3, #1
    8ec0:	0a000008 	beq	8ee8 <OSTaskDel+0x1bc>
    8ec4:	e3a00000 	mov	r0, #0
    8ec8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    8ecc:	e30035f4 	movw	r3, #1524	; 0x5f4
    8ed0:	e3403001 	movt	r3, #1
    8ed4:	e5d51032 	ldrb	r1, [r5, #50]	; 0x32
    8ed8:	e5d32000 	ldrb	r2, [r3]
    8edc:	e1c22001 	bic	r2, r2, r1
    8ee0:	e5c32000 	strb	r2, [r3]
    8ee4:	eaffffb4 	b	8dbc <OSTaskDel+0x90>
    8ee8:	ebfff742 	bl	6bf8 <OS_Sched>
    8eec:	e3a00000 	mov	r0, #0
    8ef0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    8ef4:	eb000213 	bl	9748 <OS_CPU_SR_Restore>
    8ef8:	e3a00043 	mov	r0, #67	; 0x43
    8efc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    8f00:	eb000210 	bl	9748 <OS_CPU_SR_Restore>
    8f04:	e3a0003d 	mov	r0, #61	; 0x3d
    8f08:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

00008f0c <OSTaskDelReq>:
    8f0c:	e350003f 	cmp	r0, #63	; 0x3f
    8f10:	e92d4010 	push	{r4, lr}
    8f14:	e1a04000 	mov	r4, r0
    8f18:	03a0403e 	moveq	r4, #62	; 0x3e
    8f1c:	0a00000d 	beq	8f58 <OSTaskDelReq+0x4c>
    8f20:	e35400ff 	cmp	r4, #255	; 0xff
    8f24:	0a00000d 	beq	8f60 <OSTaskDelReq+0x54>
    8f28:	eb000200 	bl	9730 <OS_CPU_SR_Save>
    8f2c:	e3003f90 	movw	r3, #3984	; 0xf90
    8f30:	e3403001 	movt	r3, #1
    8f34:	e7933104 	ldr	r3, [r3, r4, lsl #2]
    8f38:	e3530000 	cmp	r3, #0
    8f3c:	0a000013 	beq	8f90 <OSTaskDelReq+0x84>
    8f40:	e3530001 	cmp	r3, #1
    8f44:	0a00000d 	beq	8f80 <OSTaskDelReq+0x74>
    8f48:	e3a0203f 	mov	r2, #63	; 0x3f
    8f4c:	e5c32033 	strb	r2, [r3, #51]	; 0x33
    8f50:	eb0001fc 	bl	9748 <OS_CPU_SR_Restore>
    8f54:	e3a04000 	mov	r4, #0
    8f58:	e1a00004 	mov	r0, r4
    8f5c:	e8bd8010 	pop	{r4, pc}
    8f60:	eb0001f2 	bl	9730 <OS_CPU_SR_Save>
    8f64:	e3003608 	movw	r3, #1544	; 0x608
    8f68:	e3403001 	movt	r3, #1
    8f6c:	e5933000 	ldr	r3, [r3]
    8f70:	e5d34033 	ldrb	r4, [r3, #51]	; 0x33
    8f74:	eb0001f3 	bl	9748 <OS_CPU_SR_Restore>
    8f78:	e1a00004 	mov	r0, r4
    8f7c:	e8bd8010 	pop	{r4, pc}
    8f80:	e3a0403d 	mov	r4, #61	; 0x3d
    8f84:	eb0001ef 	bl	9748 <OS_CPU_SR_Restore>
    8f88:	e1a00004 	mov	r0, r4
    8f8c:	e8bd8010 	pop	{r4, pc}
    8f90:	eb0001ec 	bl	9748 <OS_CPU_SR_Restore>
    8f94:	e3a04043 	mov	r4, #67	; 0x43
    8f98:	eaffffee 	b	8f58 <OSTaskDelReq+0x4c>

00008f9c <OSTaskNameGet>:
    8f9c:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    8fa0:	e3003604 	movw	r3, #1540	; 0x604
    8fa4:	e3403001 	movt	r3, #1
    8fa8:	e1a04000 	mov	r4, r0
    8fac:	e1a06001 	mov	r6, r1
    8fb0:	e1a05002 	mov	r5, r2
    8fb4:	e5d33000 	ldrb	r3, [r3]
    8fb8:	e3530000 	cmp	r3, #0
    8fbc:	0a000004 	beq	8fd4 <OSTaskNameGet+0x38>
    8fc0:	e3a04000 	mov	r4, #0
    8fc4:	e3a03011 	mov	r3, #17
    8fc8:	e5c23000 	strb	r3, [r2]
    8fcc:	e1a00004 	mov	r0, r4
    8fd0:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    8fd4:	eb0001d5 	bl	9730 <OS_CPU_SR_Save>
    8fd8:	e35400ff 	cmp	r4, #255	; 0xff
    8fdc:	03003608 	movweq	r3, #1544	; 0x608
    8fe0:	03403001 	movteq	r3, #1
    8fe4:	e1a07000 	mov	r7, r0
    8fe8:	05933000 	ldreq	r3, [r3]
    8fec:	05d3402e 	ldrbeq	r4, [r3, #46]	; 0x2e
    8ff0:	e3003f90 	movw	r3, #3984	; 0xf90
    8ff4:	e3403001 	movt	r3, #1
    8ff8:	e7934104 	ldr	r4, [r3, r4, lsl #2]
    8ffc:	e3540000 	cmp	r4, #0
    9000:	0a000010 	beq	9048 <OSTaskNameGet+0xac>
    9004:	e3540001 	cmp	r4, #1
    9008:	0a000009 	beq	9034 <OSTaskNameGet+0x98>
    900c:	e5940048 	ldr	r0, [r4, #72]	; 0x48
    9010:	e5860000 	str	r0, [r6]
    9014:	ebfff80d 	bl	7050 <OS_StrLen>
    9018:	e1a04000 	mov	r4, r0
    901c:	e1a00007 	mov	r0, r7
    9020:	eb0001c8 	bl	9748 <OS_CPU_SR_Restore>
    9024:	e3a03000 	mov	r3, #0
    9028:	e1a00004 	mov	r0, r4
    902c:	e5c53000 	strb	r3, [r5]
    9030:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    9034:	eb0001c3 	bl	9748 <OS_CPU_SR_Restore>
    9038:	e3a04000 	mov	r4, #0
    903c:	e3a03043 	mov	r3, #67	; 0x43
    9040:	e5c53000 	strb	r3, [r5]
    9044:	eaffffe0 	b	8fcc <OSTaskNameGet+0x30>
    9048:	eb0001be 	bl	9748 <OS_CPU_SR_Restore>
    904c:	e3a03043 	mov	r3, #67	; 0x43
    9050:	e5c53000 	strb	r3, [r5]
    9054:	eaffffdc 	b	8fcc <OSTaskNameGet+0x30>

00009058 <OSTaskNameSet>:
    9058:	e3003604 	movw	r3, #1540	; 0x604
    905c:	e3403001 	movt	r3, #1
    9060:	e92d4070 	push	{r4, r5, r6, lr}
    9064:	e1a05000 	mov	r5, r0
    9068:	e5d33000 	ldrb	r3, [r3]
    906c:	e1a06001 	mov	r6, r1
    9070:	e1a04002 	mov	r4, r2
    9074:	e3530000 	cmp	r3, #0
    9078:	13a03012 	movne	r3, #18
    907c:	15c23000 	strbne	r3, [r2]
    9080:	18bd8070 	popne	{r4, r5, r6, pc}
    9084:	eb0001a9 	bl	9730 <OS_CPU_SR_Save>
    9088:	e35500ff 	cmp	r5, #255	; 0xff
    908c:	03003608 	movweq	r3, #1544	; 0x608
    9090:	03403001 	movteq	r3, #1
    9094:	05933000 	ldreq	r3, [r3]
    9098:	05d3502e 	ldrbeq	r5, [r3, #46]	; 0x2e
    909c:	e3003f90 	movw	r3, #3984	; 0xf90
    90a0:	e3403001 	movt	r3, #1
    90a4:	e7933105 	ldr	r3, [r3, r5, lsl #2]
    90a8:	e3530000 	cmp	r3, #0
    90ac:	0a000006 	beq	90cc <OSTaskNameSet+0x74>
    90b0:	e3530001 	cmp	r3, #1
    90b4:	0a000004 	beq	90cc <OSTaskNameSet+0x74>
    90b8:	e5836048 	str	r6, [r3, #72]	; 0x48
    90bc:	eb0001a1 	bl	9748 <OS_CPU_SR_Restore>
    90c0:	e3a03000 	mov	r3, #0
    90c4:	e5c43000 	strb	r3, [r4]
    90c8:	e8bd8070 	pop	{r4, r5, r6, pc}
    90cc:	eb00019d 	bl	9748 <OS_CPU_SR_Restore>
    90d0:	e3a03043 	mov	r3, #67	; 0x43
    90d4:	e5c43000 	strb	r3, [r4]
    90d8:	e8bd8070 	pop	{r4, r5, r6, pc}

000090dc <OSTaskResume>:
    90dc:	e92d4070 	push	{r4, r5, r6, lr}
    90e0:	e1a04000 	mov	r4, r0
    90e4:	eb000191 	bl	9730 <OS_CPU_SR_Save>
    90e8:	e3003f90 	movw	r3, #3984	; 0xf90
    90ec:	e3403001 	movt	r3, #1
    90f0:	e7933104 	ldr	r3, [r3, r4, lsl #2]
    90f4:	e3530000 	cmp	r3, #0
    90f8:	0a000028 	beq	91a0 <OSTaskResume+0xc4>
    90fc:	e3530001 	cmp	r3, #1
    9100:	0a000029 	beq	91ac <OSTaskResume+0xd0>
    9104:	e5d3202c 	ldrb	r2, [r3, #44]	; 0x2c
    9108:	e2021008 	and	r1, r2, #8
    910c:	e6ef1071 	uxtb	r1, r1
    9110:	e3510000 	cmp	r1, #0
    9114:	0a00001b 	beq	9188 <OSTaskResume+0xac>
    9118:	e20240f7 	and	r4, r2, #247	; 0xf7
    911c:	e5c3402c 	strb	r4, [r3, #44]	; 0x2c
    9120:	e3540000 	cmp	r4, #0
    9124:	1a00001a 	bne	9194 <OSTaskResume+0xb8>
    9128:	e5935028 	ldr	r5, [r3, #40]	; 0x28
    912c:	e3550000 	cmp	r5, #0
    9130:	1a000017 	bne	9194 <OSTaskResume+0xb8>
    9134:	e5d3c030 	ldrb	ip, [r3, #48]	; 0x30
    9138:	e30015f4 	movw	r1, #1524	; 0x5f4
    913c:	e30025f8 	movw	r2, #1528	; 0x5f8
    9140:	e3401001 	movt	r1, #1
    9144:	e3402001 	movt	r2, #1
    9148:	e5d34032 	ldrb	r4, [r3, #50]	; 0x32
    914c:	e5d16000 	ldrb	r6, [r1]
    9150:	e7d2e00c 	ldrb	lr, [r2, ip]
    9154:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    9158:	e1864004 	orr	r4, r6, r4
    915c:	e5c14000 	strb	r4, [r1]
    9160:	e18e3003 	orr	r3, lr, r3
    9164:	e7c2300c 	strb	r3, [r2, ip]
    9168:	eb000176 	bl	9748 <OS_CPU_SR_Restore>
    916c:	e3003556 	movw	r3, #1366	; 0x556
    9170:	e3403001 	movt	r3, #1
    9174:	e5d33000 	ldrb	r3, [r3]
    9178:	e3530001 	cmp	r3, #1
    917c:	0a00000d 	beq	91b8 <OSTaskResume+0xdc>
    9180:	e3a00000 	mov	r0, #0
    9184:	e8bd8070 	pop	{r4, r5, r6, pc}
    9188:	eb00016e 	bl	9748 <OS_CPU_SR_Restore>
    918c:	e3a00044 	mov	r0, #68	; 0x44
    9190:	e8bd8070 	pop	{r4, r5, r6, pc}
    9194:	eb00016b 	bl	9748 <OS_CPU_SR_Restore>
    9198:	e3a00000 	mov	r0, #0
    919c:	e8bd8070 	pop	{r4, r5, r6, pc}
    91a0:	eb000168 	bl	9748 <OS_CPU_SR_Restore>
    91a4:	e3a00046 	mov	r0, #70	; 0x46
    91a8:	e8bd8070 	pop	{r4, r5, r6, pc}
    91ac:	eb000165 	bl	9748 <OS_CPU_SR_Restore>
    91b0:	e3a00043 	mov	r0, #67	; 0x43
    91b4:	e8bd8070 	pop	{r4, r5, r6, pc}
    91b8:	ebfff68e 	bl	6bf8 <OS_Sched>
    91bc:	e1a00005 	mov	r0, r5
    91c0:	e8bd8070 	pop	{r4, r5, r6, pc}

000091c4 <OSTaskStkChk>:
    91c4:	e3a03000 	mov	r3, #0
    91c8:	e5813000 	str	r3, [r1]
    91cc:	e5813004 	str	r3, [r1, #4]
    91d0:	e92d4070 	push	{r4, r5, r6, lr}
    91d4:	e1a05000 	mov	r5, r0
    91d8:	e1a04001 	mov	r4, r1
    91dc:	eb000153 	bl	9730 <OS_CPU_SR_Save>
    91e0:	e35500ff 	cmp	r5, #255	; 0xff
    91e4:	03003608 	movweq	r3, #1544	; 0x608
    91e8:	03403001 	movteq	r3, #1
    91ec:	05933000 	ldreq	r3, [r3]
    91f0:	05d3502e 	ldrbeq	r5, [r3, #46]	; 0x2e
    91f4:	e3003f90 	movw	r3, #3984	; 0xf90
    91f8:	e3403001 	movt	r3, #1
    91fc:	e7933105 	ldr	r3, [r3, r5, lsl #2]
    9200:	e3530000 	cmp	r3, #0
    9204:	0a000016 	beq	9264 <OSTaskStkChk+0xa0>
    9208:	e3530001 	cmp	r3, #1
    920c:	0a000014 	beq	9264 <OSTaskStkChk+0xa0>
    9210:	e1d321b0 	ldrh	r2, [r3, #16]
    9214:	e3120001 	tst	r2, #1
    9218:	1a000002 	bne	9228 <OSTaskStkChk+0x64>
    921c:	eb000149 	bl	9748 <OS_CPU_SR_Restore>
    9220:	e3a00045 	mov	r0, #69	; 0x45
    9224:	e8bd8070 	pop	{r4, r5, r6, pc}
    9228:	e5935008 	ldr	r5, [r3, #8]
    922c:	e593600c 	ldr	r6, [r3, #12]
    9230:	eb000144 	bl	9748 <OS_CPU_SR_Restore>
    9234:	e5953000 	ldr	r3, [r5]
    9238:	e3530000 	cmp	r3, #0
    923c:	1a00000b 	bne	9270 <OSTaskStkChk+0xac>
    9240:	e1a02005 	mov	r2, r5
    9244:	e5b20004 	ldr	r0, [r2, #4]!
    9248:	e2833001 	add	r3, r3, #1
    924c:	e3500000 	cmp	r0, #0
    9250:	0afffffb 	beq	9244 <OSTaskStkChk+0x80>
    9254:	e0636006 	rsb	r6, r3, r6
    9258:	e3a00000 	mov	r0, #0
    925c:	e8840048 	stm	r4, {r3, r6}
    9260:	e8bd8070 	pop	{r4, r5, r6, pc}
    9264:	eb000137 	bl	9748 <OS_CPU_SR_Restore>
    9268:	e3a00043 	mov	r0, #67	; 0x43
    926c:	e8bd8070 	pop	{r4, r5, r6, pc}
    9270:	e3a03000 	mov	r3, #0
    9274:	eafffff6 	b	9254 <OSTaskStkChk+0x90>

00009278 <OSTaskSuspend>:
    9278:	e92d4038 	push	{r3, r4, r5, lr}
    927c:	e1a04000 	mov	r4, r0
    9280:	eb00012a 	bl	9730 <OS_CPU_SR_Save>
    9284:	e35400ff 	cmp	r4, #255	; 0xff
    9288:	e3003608 	movw	r3, #1544	; 0x608
    928c:	e3403001 	movt	r3, #1
    9290:	0a000023 	beq	9324 <OSTaskSuspend+0xac>
    9294:	e5933000 	ldr	r3, [r3]
    9298:	e5d3502e 	ldrb	r5, [r3, #46]	; 0x2e
    929c:	e0553004 	subs	r3, r5, r4
    92a0:	e2735000 	rsbs	r5, r3, #0
    92a4:	e0b55003 	adcs	r5, r5, r3
    92a8:	e3003f90 	movw	r3, #3984	; 0xf90
    92ac:	e3403001 	movt	r3, #1
    92b0:	e7933104 	ldr	r3, [r3, r4, lsl #2]
    92b4:	e3530000 	cmp	r3, #0
    92b8:	0a000020 	beq	9340 <OSTaskSuspend+0xc8>
    92bc:	e3530001 	cmp	r3, #1
    92c0:	0a000021 	beq	934c <OSTaskSuspend+0xd4>
    92c4:	e5d3c030 	ldrb	ip, [r3, #48]	; 0x30
    92c8:	e30025f8 	movw	r2, #1528	; 0x5f8
    92cc:	e3402001 	movt	r2, #1
    92d0:	e5d3e031 	ldrb	lr, [r3, #49]	; 0x31
    92d4:	e7d2100c 	ldrb	r1, [r2, ip]
    92d8:	e1c1100e 	bic	r1, r1, lr
    92dc:	e7c2100c 	strb	r1, [r2, ip]
    92e0:	e3510000 	cmp	r1, #0
    92e4:	0a000007 	beq	9308 <OSTaskSuspend+0x90>
    92e8:	e5d3202c 	ldrb	r2, [r3, #44]	; 0x2c
    92ec:	e3822008 	orr	r2, r2, #8
    92f0:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
    92f4:	eb000113 	bl	9748 <OS_CPU_SR_Restore>
    92f8:	e3550001 	cmp	r5, #1
    92fc:	0a00000c 	beq	9334 <OSTaskSuspend+0xbc>
    9300:	e3a00000 	mov	r0, #0
    9304:	e8bd8038 	pop	{r3, r4, r5, pc}
    9308:	e30025f4 	movw	r2, #1524	; 0x5f4
    930c:	e3402001 	movt	r2, #1
    9310:	e5d3c032 	ldrb	ip, [r3, #50]	; 0x32
    9314:	e5d21000 	ldrb	r1, [r2]
    9318:	e1c1100c 	bic	r1, r1, ip
    931c:	e5c21000 	strb	r1, [r2]
    9320:	eafffff0 	b	92e8 <OSTaskSuspend+0x70>
    9324:	e5933000 	ldr	r3, [r3]
    9328:	e3a05001 	mov	r5, #1
    932c:	e5d3402e 	ldrb	r4, [r3, #46]	; 0x2e
    9330:	eaffffdc 	b	92a8 <OSTaskSuspend+0x30>
    9334:	ebfff62f 	bl	6bf8 <OS_Sched>
    9338:	e3a00000 	mov	r0, #0
    933c:	e8bd8038 	pop	{r3, r4, r5, pc}
    9340:	eb000100 	bl	9748 <OS_CPU_SR_Restore>
    9344:	e3a00048 	mov	r0, #72	; 0x48
    9348:	e8bd8038 	pop	{r3, r4, r5, pc}
    934c:	eb0000fd 	bl	9748 <OS_CPU_SR_Restore>
    9350:	e3a00043 	mov	r0, #67	; 0x43
    9354:	e8bd8038 	pop	{r3, r4, r5, pc}

00009358 <OSTaskQuery>:
    9358:	e92d4070 	push	{r4, r5, r6, lr}
    935c:	e1a04000 	mov	r4, r0
    9360:	e1a06001 	mov	r6, r1
    9364:	eb0000f1 	bl	9730 <OS_CPU_SR_Save>
    9368:	e35400ff 	cmp	r4, #255	; 0xff
    936c:	03003608 	movweq	r3, #1544	; 0x608
    9370:	03403001 	movteq	r3, #1
    9374:	e1a05000 	mov	r5, r0
    9378:	05933000 	ldreq	r3, [r3]
    937c:	05d3402e 	ldrbeq	r4, [r3, #46]	; 0x2e
    9380:	e3003f90 	movw	r3, #3984	; 0xf90
    9384:	e3403001 	movt	r3, #1
    9388:	e7931104 	ldr	r1, [r3, r4, lsl #2]
    938c:	e3510000 	cmp	r1, #0
    9390:	0a00000b 	beq	93c4 <OSTaskQuery+0x6c>
    9394:	e3510001 	cmp	r1, #1
    9398:	0a000006 	beq	93b8 <OSTaskQuery+0x60>
    939c:	e3a02050 	mov	r2, #80	; 0x50
    93a0:	e1a00006 	mov	r0, r6
    93a4:	ebfff609 	bl	6bd0 <OS_MemCopy>
    93a8:	e1a00005 	mov	r0, r5
    93ac:	eb0000e5 	bl	9748 <OS_CPU_SR_Restore>
    93b0:	e3a00000 	mov	r0, #0
    93b4:	e8bd8070 	pop	{r4, r5, r6, pc}
    93b8:	eb0000e2 	bl	9748 <OS_CPU_SR_Restore>
    93bc:	e3a00043 	mov	r0, #67	; 0x43
    93c0:	e8bd8070 	pop	{r4, r5, r6, pc}
    93c4:	eb0000df 	bl	9748 <OS_CPU_SR_Restore>
    93c8:	e3a00029 	mov	r0, #41	; 0x29
    93cc:	e8bd8070 	pop	{r4, r5, r6, pc}

000093d0 <OSTaskRegGet>:
    93d0:	e92d4070 	push	{r4, r5, r6, lr}
    93d4:	e1a04000 	mov	r4, r0
    93d8:	e1a06001 	mov	r6, r1
    93dc:	e1a05002 	mov	r5, r2
    93e0:	eb0000d2 	bl	9730 <OS_CPU_SR_Save>
    93e4:	e35400ff 	cmp	r4, #255	; 0xff
    93e8:	03003608 	movweq	r3, #1544	; 0x608
    93ec:	13003f90 	movwne	r3, #3984	; 0xf90
    93f0:	03403001 	movteq	r3, #1
    93f4:	13403001 	movtne	r3, #1
    93f8:	05933000 	ldreq	r3, [r3]
    93fc:	17933104 	ldrne	r3, [r3, r4, lsl #2]
    9400:	e0836106 	add	r6, r3, r6, lsl #2
    9404:	e596404c 	ldr	r4, [r6, #76]	; 0x4c
    9408:	eb0000ce 	bl	9748 <OS_CPU_SR_Restore>
    940c:	e3a03000 	mov	r3, #0
    9410:	e5c53000 	strb	r3, [r5]
    9414:	e1a00004 	mov	r0, r4
    9418:	e8bd8070 	pop	{r4, r5, r6, pc}

0000941c <OSTaskRegGetID>:
    941c:	e92d4038 	push	{r3, r4, r5, lr}
    9420:	e1a05000 	mov	r5, r0
    9424:	eb0000c1 	bl	9730 <OS_CPU_SR_Save>
    9428:	e3003555 	movw	r3, #1365	; 0x555
    942c:	e3403001 	movt	r3, #1
    9430:	e5d34000 	ldrb	r4, [r3]
    9434:	e3540000 	cmp	r4, #0
    9438:	1a000005 	bne	9454 <OSTaskRegGetID+0x38>
    943c:	e3a02001 	mov	r2, #1
    9440:	e5c32000 	strb	r2, [r3]
    9444:	eb0000bf 	bl	9748 <OS_CPU_SR_Restore>
    9448:	e5c54000 	strb	r4, [r5]
    944c:	e1a00004 	mov	r0, r4
    9450:	e8bd8038 	pop	{r3, r4, r5, pc}
    9454:	e3e03069 	mvn	r3, #105	; 0x69
    9458:	e3a04001 	mov	r4, #1
    945c:	e5c53000 	strb	r3, [r5]
    9460:	eb0000b8 	bl	9748 <OS_CPU_SR_Restore>
    9464:	e1a00004 	mov	r0, r4
    9468:	e8bd8038 	pop	{r3, r4, r5, pc}

0000946c <OSTaskRegSet>:
    946c:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    9470:	e1a05003 	mov	r5, r3
    9474:	e1a04000 	mov	r4, r0
    9478:	e1a06001 	mov	r6, r1
    947c:	e1a07002 	mov	r7, r2
    9480:	eb0000aa 	bl	9730 <OS_CPU_SR_Save>
    9484:	e35400ff 	cmp	r4, #255	; 0xff
    9488:	03003608 	movweq	r3, #1544	; 0x608
    948c:	1300cf90 	movwne	ip, #3984	; 0xf90
    9490:	03403001 	movteq	r3, #1
    9494:	1340c001 	movtne	ip, #1
    9498:	05933000 	ldreq	r3, [r3]
    949c:	179c3104 	ldrne	r3, [ip, r4, lsl #2]
    94a0:	e0836106 	add	r6, r3, r6, lsl #2
    94a4:	e586704c 	str	r7, [r6, #76]	; 0x4c
    94a8:	eb0000a6 	bl	9748 <OS_CPU_SR_Restore>
    94ac:	e3a03000 	mov	r3, #0
    94b0:	e5c53000 	strb	r3, [r5]
    94b4:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

000094b8 <OS_TaskReturn>:
    94b8:	e92d4008 	push	{r3, lr}
    94bc:	e3003608 	movw	r3, #1544	; 0x608
    94c0:	e3403001 	movt	r3, #1
    94c4:	e5930000 	ldr	r0, [r3]
    94c8:	eb0001b2 	bl	9b98 <OSTaskReturnHook>
    94cc:	e3a000ff 	mov	r0, #255	; 0xff
    94d0:	e8bd4008 	pop	{r3, lr}
    94d4:	eafffe14 	b	8d2c <OSTaskDel>

000094d8 <OS_TaskStkClr>:
    94d8:	e2022003 	and	r2, r2, #3
    94dc:	e3520003 	cmp	r2, #3
    94e0:	112fff1e 	bxne	lr
    94e4:	e3510000 	cmp	r1, #0
    94e8:	012fff1e 	bxeq	lr
    94ec:	e3a03000 	mov	r3, #0
    94f0:	e2511001 	subs	r1, r1, #1
    94f4:	e4803004 	str	r3, [r0], #4
    94f8:	1afffffc 	bne	94f0 <OS_TaskStkClr+0x18>
    94fc:	e12fff1e 	bx	lr

00009500 <OSTimeDly>:
    9500:	e3003604 	movw	r3, #1540	; 0x604
    9504:	e3403001 	movt	r3, #1
    9508:	e92d4010 	push	{r4, lr}
    950c:	e1a04000 	mov	r4, r0
    9510:	e5d33000 	ldrb	r3, [r3]
    9514:	e3530000 	cmp	r3, #0
    9518:	18bd8010 	popne	{r4, pc}
    951c:	e3003554 	movw	r3, #1364	; 0x554
    9520:	e3403001 	movt	r3, #1
    9524:	e5d33000 	ldrb	r3, [r3]
    9528:	e3530000 	cmp	r3, #0
    952c:	18bd8010 	popne	{r4, pc}
    9530:	e3500000 	cmp	r0, #0
    9534:	08bd8010 	popeq	{r4, pc}
    9538:	eb00007c 	bl	9730 <OS_CPU_SR_Save>
    953c:	e3002608 	movw	r2, #1544	; 0x608
    9540:	e3402001 	movt	r2, #1
    9544:	e30035f8 	movw	r3, #1528	; 0x5f8
    9548:	e3403001 	movt	r3, #1
    954c:	e5922000 	ldr	r2, [r2]
    9550:	e5d2c030 	ldrb	ip, [r2, #48]	; 0x30
    9554:	e5d2e031 	ldrb	lr, [r2, #49]	; 0x31
    9558:	e7d3100c 	ldrb	r1, [r3, ip]
    955c:	e1c1100e 	bic	r1, r1, lr
    9560:	e7c3100c 	strb	r1, [r3, ip]
    9564:	e3510000 	cmp	r1, #0
    9568:	1a000005 	bne	9584 <OSTimeDly+0x84>
    956c:	e30035f4 	movw	r3, #1524	; 0x5f4
    9570:	e3403001 	movt	r3, #1
    9574:	e5d2c032 	ldrb	ip, [r2, #50]	; 0x32
    9578:	e5d31000 	ldrb	r1, [r3]
    957c:	e1c1100c 	bic	r1, r1, ip
    9580:	e5c31000 	strb	r1, [r3]
    9584:	e5824028 	str	r4, [r2, #40]	; 0x28
    9588:	eb00006e 	bl	9748 <OS_CPU_SR_Restore>
    958c:	e8bd4010 	pop	{r4, lr}
    9590:	eafff598 	b	6bf8 <OS_Sched>

00009594 <OSTimeDlyHMSM>:
    9594:	e300c604 	movw	ip, #1540	; 0x604
    9598:	e340c001 	movt	ip, #1
    959c:	e92d4010 	push	{r4, lr}
    95a0:	e5dcc000 	ldrb	ip, [ip]
    95a4:	e35c0000 	cmp	ip, #0
    95a8:	0a000001 	beq	95b4 <OSTimeDlyHMSM+0x20>
    95ac:	e3a00055 	mov	r0, #85	; 0x55
    95b0:	e8bd8010 	pop	{r4, pc}
    95b4:	e300c554 	movw	ip, #1364	; 0x554
    95b8:	e340c001 	movt	ip, #1
    95bc:	e5dc4000 	ldrb	r4, [ip]
    95c0:	e3540000 	cmp	r4, #0
    95c4:	0a000001 	beq	95d0 <OSTimeDlyHMSM+0x3c>
    95c8:	e3a00032 	mov	r0, #50	; 0x32
    95cc:	e8bd8010 	pop	{r4, pc}
    95d0:	e3a0cffa 	mov	ip, #1000	; 0x3e8
    95d4:	e0611201 	rsb	r1, r1, r1, lsl #4
    95d8:	e003039c 	mul	r3, ip, r3
    95dc:	e0822101 	add	r2, r2, r1, lsl #2
    95e0:	e3a01ee1 	mov	r1, #3600	; 0xe10
    95e4:	e304edd3 	movw	lr, #19923	; 0x4dd3
    95e8:	e0202091 	mla	r0, r1, r0, r2
    95ec:	e341e062 	movt	lr, #4194	; 0x1062
    95f0:	e08e239e 	umull	r2, lr, lr, r3
    95f4:	e000009c 	mul	r0, ip, r0
    95f8:	e080032e 	add	r0, r0, lr, lsr #6
    95fc:	ebffffbf 	bl	9500 <OSTimeDly>
    9600:	e1a00004 	mov	r0, r4
    9604:	e8bd8010 	pop	{r4, pc}

00009608 <OSTimeDlyResume>:
    9608:	e350003e 	cmp	r0, #62	; 0x3e
    960c:	e92d4070 	push	{r4, r5, r6, lr}
    9610:	e1a04000 	mov	r4, r0
    9614:	9a000001 	bls	9620 <OSTimeDlyResume+0x18>
    9618:	e3a0002a 	mov	r0, #42	; 0x2a
    961c:	e8bd8070 	pop	{r4, r5, r6, pc}
    9620:	eb000042 	bl	9730 <OS_CPU_SR_Save>
    9624:	e3003f90 	movw	r3, #3984	; 0xf90
    9628:	e3403001 	movt	r3, #1
    962c:	e7933104 	ldr	r3, [r3, r4, lsl #2]
    9630:	e3530000 	cmp	r3, #0
    9634:	e1a01000 	mov	r1, r0
    9638:	0a000029 	beq	96e4 <OSTimeDlyResume+0xdc>
    963c:	e3530001 	cmp	r3, #1
    9640:	0a000027 	beq	96e4 <OSTimeDlyResume+0xdc>
    9644:	e5932028 	ldr	r2, [r3, #40]	; 0x28
    9648:	e3520000 	cmp	r2, #0
    964c:	0a00000f 	beq	9690 <OSTimeDlyResume+0x88>
    9650:	e5d3202c 	ldrb	r2, [r3, #44]	; 0x2c
    9654:	e3a00000 	mov	r0, #0
    9658:	e5830028 	str	r0, [r3, #40]	; 0x28
    965c:	e2120037 	ands	r0, r2, #55	; 0x37
    9660:	120220c8 	andne	r2, r2, #200	; 0xc8
    9664:	15c3202c 	strbne	r2, [r3, #44]	; 0x2c
    9668:	e2022008 	and	r2, r2, #8
    966c:	13a00001 	movne	r0, #1
    9670:	e5c3002d 	strb	r0, [r3, #45]	; 0x2d
    9674:	e6ef4072 	uxtb	r4, r2
    9678:	e3540000 	cmp	r4, #0
    967c:	0a000006 	beq	969c <OSTimeDlyResume+0x94>
    9680:	e1a00001 	mov	r0, r1
    9684:	eb00002f 	bl	9748 <OS_CPU_SR_Restore>
    9688:	e3a00000 	mov	r0, #0
    968c:	e8bd8070 	pop	{r4, r5, r6, pc}
    9690:	eb00002c 	bl	9748 <OS_CPU_SR_Restore>
    9694:	e3a00050 	mov	r0, #80	; 0x50
    9698:	e8bd8070 	pop	{r4, r5, r6, pc}
    969c:	e5d3e030 	ldrb	lr, [r3, #48]	; 0x30
    96a0:	e300c5f4 	movw	ip, #1524	; 0x5f4
    96a4:	e30025f8 	movw	r2, #1528	; 0x5f8
    96a8:	e340c001 	movt	ip, #1
    96ac:	e3402001 	movt	r2, #1
    96b0:	e5d35032 	ldrb	r5, [r3, #50]	; 0x32
    96b4:	e5dc6000 	ldrb	r6, [ip]
    96b8:	e1a00001 	mov	r0, r1
    96bc:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
    96c0:	e7d2100e 	ldrb	r1, [r2, lr]
    96c4:	e1865005 	orr	r5, r6, r5
    96c8:	e5cc5000 	strb	r5, [ip]
    96cc:	e1813003 	orr	r3, r1, r3
    96d0:	e7c2300e 	strb	r3, [r2, lr]
    96d4:	eb00001b 	bl	9748 <OS_CPU_SR_Restore>
    96d8:	ebfff546 	bl	6bf8 <OS_Sched>
    96dc:	e1a00004 	mov	r0, r4
    96e0:	e8bd8070 	pop	{r4, r5, r6, pc}
    96e4:	eb000017 	bl	9748 <OS_CPU_SR_Restore>
    96e8:	e3a00043 	mov	r0, #67	; 0x43
    96ec:	e8bd8070 	pop	{r4, r5, r6, pc}

000096f0 <OSTimeGet>:
    96f0:	e92d4010 	push	{r4, lr}
    96f4:	eb00000d 	bl	9730 <OS_CPU_SR_Save>
    96f8:	e300360c 	movw	r3, #1548	; 0x60c
    96fc:	e3403001 	movt	r3, #1
    9700:	e5934000 	ldr	r4, [r3]
    9704:	eb00000f 	bl	9748 <OS_CPU_SR_Restore>
    9708:	e1a00004 	mov	r0, r4
    970c:	e8bd8010 	pop	{r4, pc}

00009710 <OSTimeSet>:
    9710:	e92d4010 	push	{r4, lr}
    9714:	e1a04000 	mov	r4, r0
    9718:	eb000004 	bl	9730 <OS_CPU_SR_Save>
    971c:	e300360c 	movw	r3, #1548	; 0x60c
    9720:	e3403001 	movt	r3, #1
    9724:	e5834000 	str	r4, [r3]
    9728:	e8bd4010 	pop	{r4, lr}
    972c:	ea000005 	b	9748 <OS_CPU_SR_Restore>

00009730 <OS_CPU_SR_Save>:
    9730:	e10f0000 	mrs	r0, CPSR
    9734:	ef000019 	svc	0x00000019
    9738:	e38010c0 	orr	r1, r0, #192	; 0xc0
    973c:	e121f001 	msr	CPSR_c, r1
    9740:	ef000019 	svc	0x00000019
    9744:	e12fff1e 	bx	lr

00009748 <OS_CPU_SR_Restore>:
    9748:	e121f000 	msr	CPSR_c, r0
    974c:	ef000019 	svc	0x00000019
    9750:	e12fff1e 	bx	lr

00009754 <OSStartHighRdy>:
    9754:	e59f03d0 	ldr	r0, [pc, #976]	; 9b2c <OS_CPU_ARM_CtxID_Get+0x8>
    9758:	e1a0e00f 	mov	lr, pc
    975c:	e12fff10 	bx	r0
    9760:	e59f03c8 	ldr	r0, [pc, #968]	; 9b30 <OS_CPU_ARM_CtxID_Get+0xc>
    9764:	e3a01001 	mov	r1, #1
    9768:	e5c01000 	strb	r1, [r0]
    976c:	e59f03c0 	ldr	r0, [pc, #960]	; 9b34 <OS_CPU_ARM_CtxID_Get+0x10>
    9770:	e5900000 	ldr	r0, [r0]
    9774:	e590d000 	ldr	sp, [r0]
    9778:	e8bd0001 	ldmfd	sp!, {r0}
    977c:	e12ff000 	msr	CPSR_fsxc, r0
    9780:	ef000019 	svc	0x00000019
    9784:	e8fddfff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}^

00009788 <OSCtxSw>:
    9788:	e92d4000 	stmfd	sp!, {lr}
    978c:	e92d4000 	stmfd	sp!, {lr}
    9790:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    9794:	e10f0000 	mrs	r0, CPSR
    9798:	e31e0001 	tst	lr, #1
    979c:	13800020 	orrne	r0, r0, #32
    97a0:	e92d0001 	stmfd	sp!, {r0}
    97a4:	e59f038c 	ldr	r0, [pc, #908]	; 9b38 <OS_CPU_ARM_CtxID_Get+0x14>
    97a8:	e5901000 	ldr	r1, [r0]
    97ac:	e581d000 	str	sp, [r1]
    97b0:	e59f0374 	ldr	r0, [pc, #884]	; 9b2c <OS_CPU_ARM_CtxID_Get+0x8>
    97b4:	e1a0e00f 	mov	lr, pc
    97b8:	e12fff10 	bx	r0
    97bc:	e59f0378 	ldr	r0, [pc, #888]	; 9b3c <OS_CPU_ARM_CtxID_Get+0x18>
    97c0:	e59f1378 	ldr	r1, [pc, #888]	; 9b40 <OS_CPU_ARM_CtxID_Get+0x1c>
    97c4:	e5d12000 	ldrb	r2, [r1]
    97c8:	e5c02000 	strb	r2, [r0]
    97cc:	e59f0364 	ldr	r0, [pc, #868]	; 9b38 <OS_CPU_ARM_CtxID_Get+0x14>
    97d0:	e59f135c 	ldr	r1, [pc, #860]	; 9b34 <OS_CPU_ARM_CtxID_Get+0x10>
    97d4:	e5912000 	ldr	r2, [r1]
    97d8:	e5802000 	str	r2, [r0]
    97dc:	e592d000 	ldr	sp, [r2]
    97e0:	f57ff01f 	clrex
    97e4:	e8bd0001 	ldmfd	sp!, {r0}
    97e8:	e12ff000 	msr	CPSR_fsxc, r0
    97ec:	ef000019 	svc	0x00000019
    97f0:	e8fddfff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}^

000097f4 <OSIntCtxSw>:
    97f4:	e59f0330 	ldr	r0, [pc, #816]	; 9b2c <OS_CPU_ARM_CtxID_Get+0x8>
    97f8:	e1a0e00f 	mov	lr, pc
    97fc:	e12fff10 	bx	r0
    9800:	e59f0334 	ldr	r0, [pc, #820]	; 9b3c <OS_CPU_ARM_CtxID_Get+0x18>
    9804:	e59f1334 	ldr	r1, [pc, #820]	; 9b40 <OS_CPU_ARM_CtxID_Get+0x1c>
    9808:	e5d12000 	ldrb	r2, [r1]
    980c:	e5c02000 	strb	r2, [r0]
    9810:	e59f0320 	ldr	r0, [pc, #800]	; 9b38 <OS_CPU_ARM_CtxID_Get+0x14>
    9814:	e59f1318 	ldr	r1, [pc, #792]	; 9b34 <OS_CPU_ARM_CtxID_Get+0x10>
    9818:	e5912000 	ldr	r2, [r1]
    981c:	e5802000 	str	r2, [r0]
    9820:	e592d000 	ldr	sp, [r2]
    9824:	f57ff01f 	clrex
    9828:	e8bd0001 	ldmfd	sp!, {r0}
    982c:	e12ff000 	msr	CPSR_fsxc, r0
    9830:	ef000019 	svc	0x00000019
    9834:	e8fddfff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}^

00009838 <OS_CPU_ARM_ExceptUndefInstrHndlr>:
    9838:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    983c:	e1a0200e 	mov	r2, lr
    9840:	e3a00001 	mov	r0, #1
    9844:	ea000012 	b	9894 <OS_CPU_ARM_ExceptHndlr>

00009848 <OS_CPU_ARM_ExceptSwiHndlr>:
    9848:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    984c:	e1a0200e 	mov	r2, lr
    9850:	e3a00002 	mov	r0, #2
    9854:	ea00000e 	b	9894 <OS_CPU_ARM_ExceptHndlr>

00009858 <OS_CPU_ARM_ExceptPrefetchAbortHndlr>:
    9858:	e24ee004 	sub	lr, lr, #4
    985c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    9860:	e1a0200e 	mov	r2, lr
    9864:	e3a00003 	mov	r0, #3
    9868:	ea000009 	b	9894 <OS_CPU_ARM_ExceptHndlr>

0000986c <OS_CPU_ARM_ExceptDataAbortHndlr>:
    986c:	e24ee008 	sub	lr, lr, #8
    9870:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    9874:	e1a0200e 	mov	r2, lr
    9878:	e3a00004 	mov	r0, #4
    987c:	ea000004 	b	9894 <OS_CPU_ARM_ExceptHndlr>

00009880 <OS_CPU_ARM_ExceptFiqHndlr>:
    9880:	e24ee004 	sub	lr, lr, #4
    9884:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    9888:	e1a0200e 	mov	r2, lr
    988c:	e3a00007 	mov	r0, #7
    9890:	eaffffff 	b	9894 <OS_CPU_ARM_ExceptHndlr>

00009894 <OS_CPU_ARM_ExceptHndlr>:
    9894:	e14f1000 	mrs	r1, SPSR
    9898:	e201301f 	and	r3, r1, #31
    989c:	e3530013 	cmp	r3, #19
    98a0:	1a000021 	bne	992c <OS_CPU_ARM_ExceptHndlr_BrkExcept>

000098a4 <OS_CPU_ARM_ExceptHndlr_BrkTask>:
    98a4:	e10f3000 	mrs	r3, CPSR
    98a8:	e1a0400d 	mov	r4, sp
    98ac:	e321f0d3 	msr	CPSR_c, #211	; 0xd3
    98b0:	e92d0004 	stmfd	sp!, {r2}
    98b4:	e92d4000 	stmfd	sp!, {lr}
    98b8:	e92d1fe0 	push	{r5, r6, r7, r8, r9, sl, fp, ip}
    98bc:	e8b403e0 	ldm	r4!, {r5, r6, r7, r8, r9}
    98c0:	e92d03e0 	push	{r5, r6, r7, r8, r9}
    98c4:	e92d0002 	stmfd	sp!, {r1}
    98c8:	e59f1260 	ldr	r1, [pc, #608]	; 9b30 <OS_CPU_ARM_CtxID_Get+0xc>
    98cc:	e5d11000 	ldrb	r1, [r1]
    98d0:	e3510001 	cmp	r1, #1
    98d4:	1a000008 	bne	98fc <OS_CPU_ARM_ExceptHndlr_BrkTask_1>
    98d8:	e59f1264 	ldr	r1, [pc, #612]	; 9b44 <OS_CPU_ARM_CtxID_Get+0x20>
    98dc:	e5d12000 	ldrb	r2, [r1]
    98e0:	e2822001 	add	r2, r2, #1
    98e4:	e5c12000 	strb	r2, [r1]
    98e8:	e3520001 	cmp	r2, #1
    98ec:	1a000024 	bne	9984 <OS_CPU_ARM_ExceptHndlr_BrkIRQ>
    98f0:	e59f1240 	ldr	r1, [pc, #576]	; 9b38 <OS_CPU_ARM_CtxID_Get+0x14>
    98f4:	e5912000 	ldr	r2, [r1]
    98f8:	e582d000 	str	sp, [r2]

000098fc <OS_CPU_ARM_ExceptHndlr_BrkTask_1>:
    98fc:	e12ff003 	msr	CPSR_fsxc, r3
    9900:	e59f1240 	ldr	r1, [pc, #576]	; 9b48 <OS_CPU_ARM_CtxID_Get+0x24>
    9904:	e1a0e00f 	mov	lr, pc
    9908:	e12fff11 	bx	r1
    990c:	e28dd038 	add	sp, sp, #56	; 0x38
    9910:	e321f0d3 	msr	CPSR_c, #211	; 0xd3
    9914:	e59f0230 	ldr	r0, [pc, #560]	; 9b4c <OS_CPU_ARM_CtxID_Get+0x28>
    9918:	e1a0e00f 	mov	lr, pc
    991c:	e12fff10 	bx	r0
    9920:	e8bd0001 	ldmfd	sp!, {r0}
    9924:	e12cf000 	msr	CPSR_fs, r0
    9928:	e8fddfff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}^

0000992c <OS_CPU_ARM_ExceptHndlr_BrkExcept>:
    992c:	e92d0002 	stmfd	sp!, {r1}
    9930:	e10f3000 	mrs	r3, CPSR
    9934:	e321f0d3 	msr	CPSR_c, #211	; 0xd3
    9938:	e92d0008 	stmfd	sp!, {r3}
    993c:	e59f2200 	ldr	r2, [pc, #512]	; 9b44 <OS_CPU_ARM_CtxID_Get+0x20>
    9940:	e5d24000 	ldrb	r4, [r2]
    9944:	e2844001 	add	r4, r4, #1
    9948:	e5c24000 	strb	r4, [r2]
    994c:	e12ff003 	msr	CPSR_fsxc, r3
    9950:	e59f21f0 	ldr	r2, [pc, #496]	; 9b48 <OS_CPU_ARM_CtxID_Get+0x24>
    9954:	e1a0e00f 	mov	lr, pc
    9958:	e12fff12 	bx	r2
    995c:	e321f0d3 	msr	CPSR_c, #211	; 0xd3
    9960:	e59f21dc 	ldr	r2, [pc, #476]	; 9b44 <OS_CPU_ARM_CtxID_Get+0x20>
    9964:	e5d24000 	ldrb	r4, [r2]
    9968:	e2444001 	sub	r4, r4, #1
    996c:	e5c24000 	strb	r4, [r2]
    9970:	e8bd0008 	ldmfd	sp!, {r3}
    9974:	e12ff003 	msr	CPSR_fsxc, r3
    9978:	e8bd0001 	ldmfd	sp!, {r0}
    997c:	e16ff000 	msr	SPSR_fsxc, r0
    9980:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

00009984 <OS_CPU_ARM_ExceptHndlr_BrkIRQ>:
    9984:	e12ff003 	msr	CPSR_fsxc, r3
    9988:	e59f11b8 	ldr	r1, [pc, #440]	; 9b48 <OS_CPU_ARM_CtxID_Get+0x24>
    998c:	e1a0e00f 	mov	lr, pc
    9990:	e12fff11 	bx	r1
    9994:	e28dd038 	add	sp, sp, #56	; 0x38
    9998:	e321f0d3 	msr	CPSR_c, #211	; 0xd3
    999c:	e59f21a0 	ldr	r2, [pc, #416]	; 9b44 <OS_CPU_ARM_CtxID_Get+0x20>
    99a0:	e5d24000 	ldrb	r4, [r2]
    99a4:	e2444001 	sub	r4, r4, #1
    99a8:	e5c24000 	strb	r4, [r2]
    99ac:	e8bd0001 	ldmfd	sp!, {r0}
    99b0:	e16ff000 	msr	SPSR_fsxc, r0
    99b4:	e8fddfff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}^

000099b8 <OS_CPU_ARM_ExceptIrqHndlr>:
    99b8:	e92d4000 	stmfd	sp!, {lr}
    99bc:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    99c0:	e10f1000 	mrs	r1, CPSR
    99c4:	e92d0002 	stmfd	sp!, {r1}
    99c8:	e3a00006 	mov	r0, #6
    99cc:	e59f315c 	ldr	r3, [pc, #348]	; 9b30 <OS_CPU_ARM_CtxID_Get+0xc>
    99d0:	e5d34000 	ldrb	r4, [r3]
    99d4:	e3540001 	cmp	r4, #1
    99d8:	1a000024 	bne	9a70 <OS_CPU_ARM_IRQHndlr_BreakNothing>
    99dc:	e59f3160 	ldr	r3, [pc, #352]	; 9b44 <OS_CPU_ARM_CtxID_Get+0x20>
    99e0:	e5d34000 	ldrb	r4, [r3]
    99e4:	e2844001 	add	r4, r4, #1
    99e8:	e5c34000 	strb	r4, [r3]
    99ec:	e3540001 	cmp	r4, #1
    99f0:	1a000011 	bne	9a3c <OS_CPU_ARM_IRQHndlr_BreakIRQ>

000099f4 <OS_CPU_ARM_IRQHndlr_BreakTask>:
    99f4:	e59f313c 	ldr	r3, [pc, #316]	; 9b38 <OS_CPU_ARM_CtxID_Get+0x14>
    99f8:	e5934000 	ldr	r4, [r3]
    99fc:	e584d000 	str	sp, [r4]
    9a00:	e59f3148 	ldr	r3, [pc, #328]	; 9b50 <OS_CPU_ARM_CtxID_Get+0x2c>
    9a04:	e593d000 	ldr	sp, [r3]
    9a08:	e59f1138 	ldr	r1, [pc, #312]	; 9b48 <OS_CPU_ARM_CtxID_Get+0x24>
    9a0c:	e1a0e00f 	mov	lr, pc
    9a10:	e12fff11 	bx	r1
    9a14:	e59f0130 	ldr	r0, [pc, #304]	; 9b4c <OS_CPU_ARM_CtxID_Get+0x28>
    9a18:	e1a0e00f 	mov	lr, pc
    9a1c:	e12fff10 	bx	r0
    9a20:	e59f3110 	ldr	r3, [pc, #272]	; 9b38 <OS_CPU_ARM_CtxID_Get+0x14>
    9a24:	e5934000 	ldr	r4, [r3]
    9a28:	e594d000 	ldr	sp, [r4]
    9a2c:	e8bd0001 	ldmfd	sp!, {r0}
    9a30:	e12ff000 	msr	CPSR_fsxc, r0
    9a34:	ef000019 	svc	0x00000019
    9a38:	e8fddfff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}^

00009a3c <OS_CPU_ARM_IRQHndlr_BreakIRQ>:
    9a3c:	e59f3110 	ldr	r3, [pc, #272]	; 9b54 <OS_CPU_ARM_CtxID_Get+0x30>
    9a40:	e583d000 	str	sp, [r3]
    9a44:	e59f30fc 	ldr	r3, [pc, #252]	; 9b48 <OS_CPU_ARM_CtxID_Get+0x24>
    9a48:	e1a0e00f 	mov	lr, pc
    9a4c:	e12fff13 	bx	r3
    9a50:	e59f30ec 	ldr	r3, [pc, #236]	; 9b44 <OS_CPU_ARM_CtxID_Get+0x20>
    9a54:	e5d34000 	ldrb	r4, [r3]
    9a58:	e2444001 	sub	r4, r4, #1
    9a5c:	e5c34000 	strb	r4, [r3]
    9a60:	e8bd0001 	ldmfd	sp!, {r0}
    9a64:	e12ff000 	msr	CPSR_fsxc, r0
    9a68:	ef000019 	svc	0x00000019
    9a6c:	e8fddfff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}^

00009a70 <OS_CPU_ARM_IRQHndlr_BreakNothing>:
    9a70:	e59f30d0 	ldr	r3, [pc, #208]	; 9b48 <OS_CPU_ARM_CtxID_Get+0x24>
    9a74:	e1a0e00f 	mov	lr, pc
    9a78:	e12fff13 	bx	r3
    9a7c:	e8bd0001 	ldmfd	sp!, {r0}
    9a80:	e12ff000 	msr	CPSR_fsxc, r0
    9a84:	ef000019 	svc	0x00000019
    9a88:	e8fddfff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}^

00009a8c <OS_CPU_SR_INT_En>:
    9a8c:	e10f0000 	mrs	r0, CPSR
    9a90:	ef000019 	svc	0x00000019
    9a94:	e3c000c0 	bic	r0, r0, #192	; 0xc0
    9a98:	e121f000 	msr	CPSR_c, r0
    9a9c:	ef000019 	svc	0x00000019
    9aa0:	e12fff1e 	bx	lr

00009aa4 <OS_CPU_SR_INT_Dis>:
    9aa4:	e10f0000 	mrs	r0, CPSR
    9aa8:	ef000019 	svc	0x00000019
    9aac:	e38000c0 	orr	r0, r0, #192	; 0xc0
    9ab0:	e121f000 	msr	CPSR_c, r0
    9ab4:	ef000019 	svc	0x00000019
    9ab8:	e12fff1e 	bx	lr

00009abc <OS_CPU_SR_IRQ_En>:
    9abc:	e10f0000 	mrs	r0, CPSR
    9ac0:	ef000019 	svc	0x00000019
    9ac4:	e3c00080 	bic	r0, r0, #128	; 0x80
    9ac8:	e121f000 	msr	CPSR_c, r0
    9acc:	ef000019 	svc	0x00000019
    9ad0:	e12fff1e 	bx	lr

00009ad4 <OS_CPU_SR_IRQ_Dis>:
    9ad4:	e10f0000 	mrs	r0, CPSR
    9ad8:	ef000019 	svc	0x00000019
    9adc:	e3800080 	orr	r0, r0, #128	; 0x80
    9ae0:	e121f000 	msr	CPSR_c, r0
    9ae4:	ef000019 	svc	0x00000019
    9ae8:	e12fff1e 	bx	lr

00009aec <OS_CPU_SR_FIQ_En>:
    9aec:	e10f0000 	mrs	r0, CPSR
    9af0:	ef000019 	svc	0x00000019
    9af4:	e3c00040 	bic	r0, r0, #64	; 0x40
    9af8:	e121f000 	msr	CPSR_c, r0
    9afc:	ef000019 	svc	0x00000019
    9b00:	e12fff1e 	bx	lr

00009b04 <OS_CPU_SR_FIQ_Dis>:
    9b04:	e10f0000 	mrs	r0, CPSR
    9b08:	ef000019 	svc	0x00000019
    9b0c:	e3800040 	orr	r0, r0, #64	; 0x40
    9b10:	e121f000 	msr	CPSR_c, r0
    9b14:	ef000019 	svc	0x00000019
    9b18:	e12fff1e 	bx	lr

00009b1c <OS_CPU_ARM_CtxID_Set>:
    9b1c:	ee0d0f30 	mcr	15, 0, r0, cr13, cr0, {1}
    9b20:	e12fff1e 	bx	lr

00009b24 <OS_CPU_ARM_CtxID_Get>:
    9b24:	ee1d0f30 	mrc	15, 0, r0, cr13, cr0, {1}
    9b28:	e12fff1e 	bx	lr
    9b2c:	00009c90 	muleq	r0, r0, ip
    9b30:	00010556 	andeq	r0, r1, r6, asr r5
    9b34:	000105f0 	strdeq	r0, [r1], -r0	; <UNPREDICTABLE>
    9b38:	00010608 	andeq	r0, r1, r8, lsl #12
    9b3c:	0001055d 	andeq	r0, r1, sp, asr r5
    9b40:	0001055c 	andeq	r0, r1, ip, asr r5
    9b44:	00010604 	andeq	r0, r1, r4, lsl #12
    9b48:	00009d94 	muleq	r0, r4, sp
    9b4c:	000065e8 	andeq	r6, r0, r8, ror #11
    9b50:	00011090 	muleq	r1, r0, r0
    9b54:	00011094 	muleq	r1, r4, r0

00009b58 <OSInitHookBegin>:
    9b58:	e3013098 	movw	r3, #4248	; 0x1098
    9b5c:	e3403001 	movt	r3, #1
    9b60:	e2831c02 	add	r1, r3, #512	; 0x200
    9b64:	e3a02000 	mov	r2, #0
    9b68:	e4832004 	str	r2, [r3], #4
    9b6c:	e1530001 	cmp	r3, r1
    9b70:	1afffffc 	bne	9b68 <OSInitHookBegin+0x10>
    9b74:	e3012090 	movw	r2, #4240	; 0x1090
    9b78:	e3402001 	movt	r2, #1
    9b7c:	e3c33007 	bic	r3, r3, #7
    9b80:	e5823000 	str	r3, [r2]
    9b84:	e12fff1e 	bx	lr

00009b88 <OSInitHookEnd>:
    9b88:	e12fff1e 	bx	lr

00009b8c <OSTaskCreateHook>:
    9b8c:	ea0008c3 	b	bea0 <App_TaskCreateHook>

00009b90 <OSTaskDelHook>:
    9b90:	ea0008c3 	b	bea4 <App_TaskDelHook>

00009b94 <OSTaskIdleHook>:
    9b94:	ea0008c3 	b	bea8 <App_TaskIdleHook>

00009b98 <OSTaskReturnHook>:
    9b98:	ea0008c3 	b	beac <App_TaskReturnHook>

00009b9c <OSTaskStatHook>:
    9b9c:	ea0008c3 	b	beb0 <App_TaskStatHook>

00009ba0 <OSTaskStkInit>:
    9ba0:	e2822004 	add	r2, r2, #4
    9ba4:	e3100001 	tst	r0, #1
    9ba8:	e92d0ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp}
    9bac:	e3c22007 	bic	r2, r2, #7
    9bb0:	e24dd010 	sub	sp, sp, #16
    9bb4:	e3c00001 	bic	r0, r0, #1
    9bb8:	e5020004 	str	r0, [r2, #-4]
    9bbc:	e30904b8 	movw	r0, #38072	; 0x94b8
    9bc0:	e3400000 	movt	r0, #0
    9bc4:	e58d0008 	str	r0, [sp, #8]
    9bc8:	e3000202 	movw	r0, #514	; 0x202
    9bcc:	e7df0810 	bfi	r0, r0, #16, #16
    9bd0:	e58d000c 	str	r0, [sp, #12]
    9bd4:	e3003303 	movw	r3, #771	; 0x303
    9bd8:	e59d0008 	ldr	r0, [sp, #8]
    9bdc:	e7df3813 	bfi	r3, r3, #16, #16
    9be0:	e58d3004 	str	r3, [sp, #4]
    9be4:	e301b212 	movw	fp, #4626	; 0x1212
    9be8:	e3019111 	movw	r9, #4369	; 0x1111
    9bec:	e7dfb81b 	bfi	fp, fp, #16, #16
    9bf0:	e5020008 	str	r0, [r2, #-8]
    9bf4:	e7df9819 	bfi	r9, r9, #16, #16
    9bf8:	e59d0004 	ldr	r0, [sp, #4]
    9bfc:	e301a010 	movw	sl, #4112	; 0x1010
    9c00:	e3008909 	movw	r8, #2313	; 0x909
    9c04:	e7dfa81a 	bfi	sl, sl, #16, #16
    9c08:	e7df8818 	bfi	r8, r8, #16, #16
    9c0c:	e3007808 	movw	r7, #2056	; 0x808
    9c10:	e5020030 	str	r0, [r2, #-48]	; 0xffffffd0
    9c14:	e7df7817 	bfi	r7, r7, #16, #16
    9c18:	e59d000c 	ldr	r0, [sp, #12]
    9c1c:	e3006707 	movw	r6, #1799	; 0x707
    9c20:	e3005606 	movw	r5, #1542	; 0x606
    9c24:	e7df6816 	bfi	r6, r6, #16, #16
    9c28:	e7df5815 	bfi	r5, r5, #16, #16
    9c2c:	e3004505 	movw	r4, #1285	; 0x505
    9c30:	e5020034 	str	r0, [r2, #-52]	; 0xffffffcc
    9c34:	e7df4814 	bfi	r4, r4, #16, #16
    9c38:	e300c404 	movw	ip, #1028	; 0x404
    9c3c:	e3003101 	movw	r3, #257	; 0x101
    9c40:	e7dfc81c 	bfi	ip, ip, #16, #16
    9c44:	e7df3813 	bfi	r3, r3, #16, #16
    9c48:	e502b00c 	str	fp, [r2, #-12]
    9c4c:	e2420040 	sub	r0, r2, #64	; 0x40
    9c50:	e5023038 	str	r3, [r2, #-56]	; 0xffffffc8
    9c54:	13a03030 	movne	r3, #48	; 0x30
    9c58:	03a03e11 	moveq	r3, #272	; 0x110
    9c5c:	e5029010 	str	r9, [r2, #-16]
    9c60:	e502a014 	str	sl, [r2, #-20]	; 0xffffffec
    9c64:	e5028018 	str	r8, [r2, #-24]	; 0xffffffe8
    9c68:	e502701c 	str	r7, [r2, #-28]	; 0xffffffe4
    9c6c:	e5026020 	str	r6, [r2, #-32]	; 0xffffffe0
    9c70:	e5025024 	str	r5, [r2, #-36]	; 0xffffffdc
    9c74:	e5024028 	str	r4, [r2, #-40]	; 0xffffffd8
    9c78:	e502c02c 	str	ip, [r2, #-44]	; 0xffffffd4
    9c7c:	e502103c 	str	r1, [r2, #-60]	; 0xffffffc4
    9c80:	e5023040 	str	r3, [r2, #-64]	; 0xffffffc0
    9c84:	e28dd010 	add	sp, sp, #16
    9c88:	e8bd0ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp}
    9c8c:	e12fff1e 	bx	lr

00009c90 <OSTaskSwHook>:
    9c90:	ea000887 	b	beb4 <App_TaskSwHook>

00009c94 <OSTCBInitHook>:
    9c94:	ea000887 	b	beb8 <App_TCBInitHook>

00009c98 <OSTimeTickHook>:
    9c98:	ea000887 	b	bebc <App_TimeTickHook>

00009c9c <OS_CPU_InitExceptVect>:
    9c9c:	e3a03000 	mov	r3, #0
    9ca0:	e30f2018 	movw	r2, #61464	; 0xf018
    9ca4:	e92d0070 	push	{r4, r5, r6}
    9ca8:	e34e259f 	movt	r2, #58783	; 0xe59f
    9cac:	e3096838 	movw	r6, #38968	; 0x9838
    9cb0:	e3095848 	movw	r5, #38984	; 0x9848
    9cb4:	e3406000 	movt	r6, #0
    9cb8:	e3094858 	movw	r4, #39000	; 0x9858
    9cbc:	e3405000 	movt	r5, #0
    9cc0:	e3404000 	movt	r4, #0
    9cc4:	e309c86c 	movw	ip, #39020	; 0x986c
    9cc8:	e30909b8 	movw	r0, #39352	; 0x99b8
    9ccc:	e340c000 	movt	ip, #0
    9cd0:	e3400000 	movt	r0, #0
    9cd4:	e3091880 	movw	r1, #39040	; 0x9880
    9cd8:	e5832000 	str	r2, [r3]
    9cdc:	e3401000 	movt	r1, #0
    9ce0:	e5836024 	str	r6, [r3, #36]	; 0x24
    9ce4:	e5832008 	str	r2, [r3, #8]
    9ce8:	e5835028 	str	r5, [r3, #40]	; 0x28
    9cec:	e583200c 	str	r2, [r3, #12]
    9cf0:	e583402c 	str	r4, [r3, #44]	; 0x2c
    9cf4:	e5832010 	str	r2, [r3, #16]
    9cf8:	e583c030 	str	ip, [r3, #48]	; 0x30
    9cfc:	e5832018 	str	r2, [r3, #24]
    9d00:	e5830038 	str	r0, [r3, #56]	; 0x38
    9d04:	e583201c 	str	r2, [r3, #28]
    9d08:	e583103c 	str	r1, [r3, #60]	; 0x3c
    9d0c:	e8bd0070 	pop	{r4, r5, r6}
    9d10:	e12fff1e 	bx	lr

00009d14 <OS_CPU_ExceptStkChk>:
    9d14:	e3013098 	movw	r3, #4248	; 0x1098
    9d18:	e3403001 	movt	r3, #1
    9d1c:	e5930000 	ldr	r0, [r3]
    9d20:	e3500000 	cmp	r0, #0
    9d24:	1a000006 	bne	9d44 <OS_CPU_ExceptStkChk+0x30>
    9d28:	e5b32004 	ldr	r2, [r3, #4]!
    9d2c:	e2800001 	add	r0, r0, #1
    9d30:	e3520000 	cmp	r2, #0
    9d34:	112fff1e 	bxne	lr
    9d38:	e3500080 	cmp	r0, #128	; 0x80
    9d3c:	1afffff9 	bne	9d28 <OS_CPU_ExceptStkChk+0x14>
    9d40:	e12fff1e 	bx	lr
    9d44:	e3a00000 	mov	r0, #0
    9d48:	e12fff1e 	bx	lr

00009d4c <OS_CSP_TickISR_Handler>:
    9d4c:	e92d4008 	push	{r3, lr}
    9d50:	e3a00000 	mov	r0, #0
    9d54:	eb0005a2 	bl	b3e4 <CSP_TmrIntClr>
    9d58:	e8bd4008 	pop	{r3, lr}
    9d5c:	eafff29c 	b	67d4 <OSTimeTick>

00009d60 <guest_OS_CSP_TickInit>:
    9d60:	e3a00000 	mov	r0, #0
    9d64:	e3a0101d 	mov	r1, #29
    9d68:	e92d4008 	push	{r3, lr}
    9d6c:	e3092d4c 	movw	r2, #40268	; 0x9d4c
    9d70:	e1a03000 	mov	r3, r0
    9d74:	e3402000 	movt	r2, #0
    9d78:	eb0004ad 	bl	b034 <CSP_IntVectReg>
    9d7c:	e3500001 	cmp	r0, #1
    9d80:	18bd8008 	popne	{r3, pc}
    9d84:	e3a00ffa 	mov	r0, #1000	; 0x3e8
    9d88:	eb00074c 	bl	bac0 <guest_OS_Timer_Register>
    9d8c:	e8bd4008 	pop	{r3, lr}
    9d90:	ea00074e 	b	bad0 <guest_OS_Timer_Enable>

00009d94 <OS_CPU_IntHandler>:
    9d94:	e92d4008 	push	{r3, lr}
    9d98:	e2403006 	sub	r3, r0, #6
    9d9c:	e3530001 	cmp	r3, #1
    9da0:	8a000003 	bhi	9db4 <OS_CPU_IntHandler+0x20>
    9da4:	eb000738 	bl	ba8c <guest_IRQ_Acknowledge>
    9da8:	e6ff0070 	uxth	r0, r0
    9dac:	e8bd4008 	pop	{r3, lr}
    9db0:	ea0004c7 	b	b0d4 <CSP_IntHandlerSrc>
    9db4:	e6ef0070 	uxtb	r0, r0
    9db8:	e8bd4008 	pop	{r3, lr}
    9dbc:	ea0006f7 	b	b9a0 <OS_CSP_BSP_ExceptHandler>

00009dc0 <ASCII_IsAlpha>:
    9dc0:	e20000df 	and	r0, r0, #223	; 0xdf
    9dc4:	e2400041 	sub	r0, r0, #65	; 0x41
    9dc8:	e3500019 	cmp	r0, #25
    9dcc:	83a00000 	movhi	r0, #0
    9dd0:	93a00001 	movls	r0, #1
    9dd4:	e12fff1e 	bx	lr

00009dd8 <ASCII_IsAlphaNum>:
    9dd8:	e3c03020 	bic	r3, r0, #32
    9ddc:	e2433041 	sub	r3, r3, #65	; 0x41
    9de0:	e3530019 	cmp	r3, #25
    9de4:	9a000004 	bls	9dfc <ASCII_IsAlphaNum+0x24>
    9de8:	e2400030 	sub	r0, r0, #48	; 0x30
    9dec:	e3500009 	cmp	r0, #9
    9df0:	83a00000 	movhi	r0, #0
    9df4:	93a00001 	movls	r0, #1
    9df8:	e12fff1e 	bx	lr
    9dfc:	e3a00001 	mov	r0, #1
    9e00:	e12fff1e 	bx	lr

00009e04 <ASCII_IsLower>:
    9e04:	e2400061 	sub	r0, r0, #97	; 0x61
    9e08:	e3500019 	cmp	r0, #25
    9e0c:	83a00000 	movhi	r0, #0
    9e10:	93a00001 	movls	r0, #1
    9e14:	e12fff1e 	bx	lr

00009e18 <ASCII_IsUpper>:
    9e18:	e2400041 	sub	r0, r0, #65	; 0x41
    9e1c:	e3500019 	cmp	r0, #25
    9e20:	83a00000 	movhi	r0, #0
    9e24:	93a00001 	movls	r0, #1
    9e28:	e12fff1e 	bx	lr

00009e2c <ASCII_IsDig>:
    9e2c:	e2400030 	sub	r0, r0, #48	; 0x30
    9e30:	e3500009 	cmp	r0, #9
    9e34:	83a00000 	movhi	r0, #0
    9e38:	93a00001 	movls	r0, #1
    9e3c:	e12fff1e 	bx	lr

00009e40 <ASCII_IsDigOct>:
    9e40:	e2400030 	sub	r0, r0, #48	; 0x30
    9e44:	e3500007 	cmp	r0, #7
    9e48:	83a00000 	movhi	r0, #0
    9e4c:	93a00001 	movls	r0, #1
    9e50:	e12fff1e 	bx	lr

00009e54 <ASCII_IsDigHex>:
    9e54:	e2402041 	sub	r2, r0, #65	; 0x41
    9e58:	e2403030 	sub	r3, r0, #48	; 0x30
    9e5c:	e3530009 	cmp	r3, #9
    9e60:	83520005 	cmphi	r2, #5
    9e64:	9a000004 	bls	9e7c <ASCII_IsDigHex+0x28>
    9e68:	e2400061 	sub	r0, r0, #97	; 0x61
    9e6c:	e3500005 	cmp	r0, #5
    9e70:	83a00000 	movhi	r0, #0
    9e74:	93a00001 	movls	r0, #1
    9e78:	e12fff1e 	bx	lr
    9e7c:	e3a00001 	mov	r0, #1
    9e80:	e12fff1e 	bx	lr

00009e84 <ASCII_IsBlank>:
    9e84:	e3500020 	cmp	r0, #32
    9e88:	13500009 	cmpne	r0, #9
    9e8c:	13a00000 	movne	r0, #0
    9e90:	03a00001 	moveq	r0, #1
    9e94:	e12fff1e 	bx	lr

00009e98 <ASCII_IsSpace>:
    9e98:	e3500020 	cmp	r0, #32
    9e9c:	1350000d 	cmpne	r0, #13
    9ea0:	0a000007 	beq	9ec4 <ASCII_IsSpace+0x2c>
    9ea4:	e350000a 	cmp	r0, #10
    9ea8:	1350000c 	cmpne	r0, #12
    9eac:	0a000004 	beq	9ec4 <ASCII_IsSpace+0x2c>
    9eb0:	e20000fd 	and	r0, r0, #253	; 0xfd
    9eb4:	e2503009 	subs	r3, r0, #9
    9eb8:	e2730000 	rsbs	r0, r3, #0
    9ebc:	e0b00003 	adcs	r0, r0, r3
    9ec0:	e12fff1e 	bx	lr
    9ec4:	e3a00001 	mov	r0, #1
    9ec8:	e12fff1e 	bx	lr

00009ecc <ASCII_IsPrint>:
    9ecc:	e2400020 	sub	r0, r0, #32
    9ed0:	e350005e 	cmp	r0, #94	; 0x5e
    9ed4:	83a00000 	movhi	r0, #0
    9ed8:	93a00001 	movls	r0, #1
    9edc:	e12fff1e 	bx	lr

00009ee0 <ASCII_IsGraph>:
    9ee0:	e2400021 	sub	r0, r0, #33	; 0x21
    9ee4:	e350005d 	cmp	r0, #93	; 0x5d
    9ee8:	83a00000 	movhi	r0, #0
    9eec:	93a00001 	movls	r0, #1
    9ef0:	e12fff1e 	bx	lr

00009ef4 <ASCII_IsPunct>:
    9ef4:	e2403020 	sub	r3, r0, #32
    9ef8:	e353005e 	cmp	r3, #94	; 0x5e
    9efc:	8a00000a 	bhi	9f2c <ASCII_IsPunct+0x38>
    9f00:	e3500020 	cmp	r0, #32
    9f04:	0a000008 	beq	9f2c <ASCII_IsPunct+0x38>
    9f08:	e3c03020 	bic	r3, r0, #32
    9f0c:	e2433041 	sub	r3, r3, #65	; 0x41
    9f10:	e3530019 	cmp	r3, #25
    9f14:	9a000004 	bls	9f2c <ASCII_IsPunct+0x38>
    9f18:	e2400030 	sub	r0, r0, #48	; 0x30
    9f1c:	e3500009 	cmp	r0, #9
    9f20:	93a00000 	movls	r0, #0
    9f24:	83a00001 	movhi	r0, #1
    9f28:	e12fff1e 	bx	lr
    9f2c:	e3a00000 	mov	r0, #0
    9f30:	e12fff1e 	bx	lr

00009f34 <ASCII_IsCtrl>:
    9f34:	e350007f 	cmp	r0, #127	; 0x7f
    9f38:	1350001f 	cmpne	r0, #31
    9f3c:	83a00000 	movhi	r0, #0
    9f40:	93a00001 	movls	r0, #1
    9f44:	e12fff1e 	bx	lr

00009f48 <ASCII_ToLower>:
    9f48:	e2403041 	sub	r3, r0, #65	; 0x41
    9f4c:	e3530019 	cmp	r3, #25
    9f50:	92800020 	addls	r0, r0, #32
    9f54:	96ef0070 	uxtbls	r0, r0
    9f58:	e12fff1e 	bx	lr

00009f5c <ASCII_ToUpper>:
    9f5c:	e2403061 	sub	r3, r0, #97	; 0x61
    9f60:	e3530019 	cmp	r3, #25
    9f64:	92400020 	subls	r0, r0, #32
    9f68:	96ef0070 	uxtbls	r0, r0
    9f6c:	e12fff1e 	bx	lr

00009f70 <ASCII_Cmp>:
    9f70:	e2403061 	sub	r3, r0, #97	; 0x61
    9f74:	e3530019 	cmp	r3, #25
    9f78:	e2413061 	sub	r3, r1, #97	; 0x61
    9f7c:	92400020 	subls	r0, r0, #32
    9f80:	96ef0070 	uxtbls	r0, r0
    9f84:	e3530019 	cmp	r3, #25
    9f88:	92411020 	subls	r1, r1, #32
    9f8c:	96ef1071 	uxtbls	r1, r1
    9f90:	e0502001 	subs	r2, r0, r1
    9f94:	e2720000 	rsbs	r0, r2, #0
    9f98:	e0b00002 	adcs	r0, r0, r2
    9f9c:	e12fff1e 	bx	lr

00009fa0 <Math_RandSetSeed>:
    9fa0:	e92d4010 	push	{r4, lr}
    9fa4:	e1a04000 	mov	r4, r0
    9fa8:	eb000530 	bl	b470 <CPU_SR_Save>
    9fac:	e3013298 	movw	r3, #4760	; 0x1298
    9fb0:	e3403001 	movt	r3, #1
    9fb4:	e5834000 	str	r4, [r3]
    9fb8:	e8bd4010 	pop	{r4, lr}
    9fbc:	ea000531 	b	b488 <CPU_SR_Restore>

00009fc0 <Math_Init>:
    9fc0:	e3a00001 	mov	r0, #1
    9fc4:	eafffff5 	b	9fa0 <Math_RandSetSeed>

00009fc8 <Math_Rand>:
    9fc8:	e92d4010 	push	{r4, lr}
    9fcc:	eb000527 	bl	b470 <CPU_SR_Save>
    9fd0:	e3013298 	movw	r3, #4760	; 0x1298
    9fd4:	e3403001 	movt	r3, #1
    9fd8:	e3042e6d 	movw	r2, #20077	; 0x4e6d
    9fdc:	e34421c6 	movt	r2, #16838	; 0x41c6
    9fe0:	e5931000 	ldr	r1, [r3]
    9fe4:	e0020192 	mul	r2, r2, r1
    9fe8:	e2822a03 	add	r2, r2, #12288	; 0x3000
    9fec:	e2822039 	add	r2, r2, #57	; 0x39
    9ff0:	e3c24102 	bic	r4, r2, #-2147483648	; 0x80000000
    9ff4:	e5834000 	str	r4, [r3]
    9ff8:	eb000522 	bl	b488 <CPU_SR_Restore>
    9ffc:	e1a00004 	mov	r0, r4
    a000:	e8bd8010 	pop	{r4, pc}

0000a004 <Math_RandSeed>:
    a004:	e3043e6d 	movw	r3, #20077	; 0x4e6d
    a008:	e34431c6 	movt	r3, #16838	; 0x41c6
    a00c:	e0000093 	mul	r0, r3, r0
    a010:	e2800a03 	add	r0, r0, #12288	; 0x3000
    a014:	e2800039 	add	r0, r0, #57	; 0x39
    a018:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
    a01c:	e12fff1e 	bx	lr

0000a020 <Mem_Init>:
    a020:	e12fff1e 	bx	lr

0000a024 <Mem_Set>:
    a024:	e3520000 	cmp	r2, #0
    a028:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    a02c:	0a000025 	beq	a0c8 <Mem_Set+0xa4>
    a030:	e3500000 	cmp	r0, #0
    a034:	0a000023 	beq	a0c8 <Mem_Set+0xa4>
    a038:	e1814401 	orr	r4, r1, r1, lsl #8
    a03c:	e2103003 	ands	r3, r0, #3
    a040:	e1a0c000 	mov	ip, r0
    a044:	e1814404 	orr	r4, r1, r4, lsl #8
    a048:	e1814404 	orr	r4, r1, r4, lsl #8
    a04c:	0a00000a 	beq	a07c <Mem_Set+0x58>
    a050:	e2522001 	subs	r2, r2, #1
    a054:	e2833001 	add	r3, r3, #1
    a058:	e4cc1001 	strb	r1, [ip], #1
    a05c:	03a00000 	moveq	r0, #0
    a060:	13a00001 	movne	r0, #1
    a064:	e3530003 	cmp	r3, #3
    a068:	83a00000 	movhi	r0, #0
    a06c:	92000001 	andls	r0, r0, #1
    a070:	e3500000 	cmp	r0, #0
    a074:	1afffff5 	bne	a050 <Mem_Set+0x2c>
    a078:	e1a0000c 	mov	r0, ip
    a07c:	e3520003 	cmp	r2, #3
    a080:	9a00000a 	bls	a0b0 <Mem_Set+0x8c>
    a084:	e1a0c000 	mov	ip, r0
    a088:	e1a03002 	mov	r3, r2
    a08c:	e2433004 	sub	r3, r3, #4
    a090:	e48c4004 	str	r4, [ip], #4
    a094:	e3530003 	cmp	r3, #3
    a098:	8afffffb 	bhi	a08c <Mem_Set+0x68>
    a09c:	e2423004 	sub	r3, r2, #4
    a0a0:	e2022003 	and	r2, r2, #3
    a0a4:	e3c33003 	bic	r3, r3, #3
    a0a8:	e2833004 	add	r3, r3, #4
    a0ac:	e0800003 	add	r0, r0, r3
    a0b0:	e3520000 	cmp	r2, #0
    a0b4:	0a000003 	beq	a0c8 <Mem_Set+0xa4>
    a0b8:	e0802002 	add	r2, r0, r2
    a0bc:	e4c01001 	strb	r1, [r0], #1
    a0c0:	e1500002 	cmp	r0, r2
    a0c4:	1afffffc 	bne	a0bc <Mem_Set+0x98>
    a0c8:	e8bd0010 	ldmfd	sp!, {r4}
    a0cc:	e12fff1e 	bx	lr

0000a0d0 <Mem_Clr>:
    a0d0:	e1a02001 	mov	r2, r1
    a0d4:	e3a01000 	mov	r1, #0
    a0d8:	eaffffd1 	b	a024 <Mem_Set>

0000a0dc <Mem_Cmp>:
    a0dc:	e252c000 	subs	ip, r2, #0
    a0e0:	e92d01f0 	push	{r4, r5, r6, r7, r8}
    a0e4:	03a00001 	moveq	r0, #1
    a0e8:	0a000016 	beq	a148 <Mem_Cmp+0x6c>
    a0ec:	e3500000 	cmp	r0, #0
    a0f0:	0a000014 	beq	a148 <Mem_Cmp+0x6c>
    a0f4:	e3510000 	cmp	r1, #0
    a0f8:	0a000014 	beq	a150 <Mem_Cmp+0x74>
    a0fc:	e080300c 	add	r3, r0, ip
    a100:	e081200c 	add	r2, r1, ip
    a104:	e2036003 	and	r6, r3, #3
    a108:	e2021003 	and	r1, r2, #3
    a10c:	e1560001 	cmp	r6, r1
    a110:	0a000010 	beq	a158 <Mem_Cmp+0x7c>
    a114:	e1a0400c 	mov	r4, ip
    a118:	e0634004 	rsb	r4, r3, r4
    a11c:	e573c001 	ldrb	ip, [r3, #-1]!
    a120:	e5720001 	ldrb	r0, [r2, #-1]!
    a124:	e0841003 	add	r1, r4, r3
    a128:	e05cc000 	subs	ip, ip, r0
    a12c:	e27c0000 	rsbs	r0, ip, #0
    a130:	e0b0000c 	adcs	r0, r0, ip
    a134:	e3510000 	cmp	r1, #0
    a138:	03a01000 	moveq	r1, #0
    a13c:	12001001 	andne	r1, r0, #1
    a140:	e3510000 	cmp	r1, #0
    a144:	1afffff4 	bne	a11c <Mem_Cmp+0x40>
    a148:	e8bd01f0 	pop	{r4, r5, r6, r7, r8}
    a14c:	e12fff1e 	bx	lr
    a150:	e1a00001 	mov	r0, r1
    a154:	eafffffb 	b	a148 <Mem_Cmp+0x6c>
    a158:	e3560000 	cmp	r6, #0
    a15c:	0a000018 	beq	a1c4 <Mem_Cmp+0xe8>
    a160:	e2435001 	sub	r5, r3, #1
    a164:	e2421001 	sub	r1, r2, #1
    a168:	e1a0400c 	mov	r4, ip
    a16c:	ea000001 	b	a178 <Mem_Cmp+0x9c>
    a170:	e3580000 	cmp	r8, #0
    a174:	0a000013 	beq	a1c8 <Mem_Cmp+0xec>
    a178:	e5d10000 	ldrb	r0, [r1]
    a17c:	e1a03005 	mov	r3, r5
    a180:	e5d57000 	ldrb	r7, [r5]
    a184:	e1a02001 	mov	r2, r1
    a188:	e2455001 	sub	r5, r5, #1
    a18c:	e2411001 	sub	r1, r1, #1
    a190:	e0577000 	subs	r7, r7, r0
    a194:	e2770000 	rsbs	r0, r7, #0
    a198:	e0b00007 	adcs	r0, r0, r7
    a19c:	e2544001 	subs	r4, r4, #1
    a1a0:	e06c7004 	rsb	r7, ip, r4
    a1a4:	e0878006 	add	r8, r7, r6
    a1a8:	03a07000 	moveq	r7, #0
    a1ac:	12007001 	andne	r7, r0, #1
    a1b0:	e3570000 	cmp	r7, #0
    a1b4:	1affffed 	bne	a170 <Mem_Cmp+0x94>
    a1b8:	e3500000 	cmp	r0, #0
    a1bc:	0affffe1 	beq	a148 <Mem_Cmp+0x6c>
    a1c0:	ea000000 	b	a1c8 <Mem_Cmp+0xec>
    a1c4:	e1a0400c 	mov	r4, ip
    a1c8:	e3540003 	cmp	r4, #3
    a1cc:	9a000017 	bls	a230 <Mem_Cmp+0x154>
    a1d0:	e2430004 	sub	r0, r3, #4
    a1d4:	e2421004 	sub	r1, r2, #4
    a1d8:	e591c000 	ldr	ip, [r1]
    a1dc:	e2444004 	sub	r4, r4, #4
    a1e0:	e5905000 	ldr	r5, [r0]
    a1e4:	e1a03000 	mov	r3, r0
    a1e8:	e1a02001 	mov	r2, r1
    a1ec:	e2400004 	sub	r0, r0, #4
    a1f0:	e055500c 	subs	r5, r5, ip
    a1f4:	e2411004 	sub	r1, r1, #4
    a1f8:	e275c000 	rsbs	ip, r5, #0
    a1fc:	e0bcc005 	adcs	ip, ip, r5
    a200:	e3540003 	cmp	r4, #3
    a204:	93a05000 	movls	r5, #0
    a208:	820c5001 	andhi	r5, ip, #1
    a20c:	e3550000 	cmp	r5, #0
    a210:	1afffff0 	bne	a1d8 <Mem_Cmp+0xfc>
    a214:	e1a0000c 	mov	r0, ip
    a218:	e3540000 	cmp	r4, #0
    a21c:	03a0c000 	moveq	ip, #0
    a220:	120cc001 	andne	ip, ip, #1
    a224:	e35c0000 	cmp	ip, #0
    a228:	1affffba 	bne	a118 <Mem_Cmp+0x3c>
    a22c:	eaffffc5 	b	a148 <Mem_Cmp+0x6c>
    a230:	e3a0c001 	mov	ip, #1
    a234:	eafffff6 	b	a214 <Mem_Cmp+0x138>

0000a238 <Str_ParseNbr_Int32>:
    a238:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    a23c:	e24dd014 	sub	sp, sp, #20
    a240:	e1a06002 	mov	r6, r2
    a244:	e251a000 	subs	sl, r1, #0
    a248:	e59d2038 	ldr	r2, [sp, #56]	; 0x38
    a24c:	028da00c 	addeq	sl, sp, #12
    a250:	e1a09003 	mov	r9, r3
    a254:	e3a08000 	mov	r8, #0
    a258:	e3520000 	cmp	r2, #0
    a25c:	e58a0000 	str	r0, [sl]
    a260:	028d300b 	addeq	r3, sp, #11
    a264:	058d3038 	streq	r3, [sp, #56]	; 0x38
    a268:	e59d2038 	ldr	r2, [sp, #56]	; 0x38
    a26c:	e3500000 	cmp	r0, #0
    a270:	e1a07000 	mov	r7, r0
    a274:	e5c28000 	strb	r8, [r2]
    a278:	0a000069 	beq	a424 <Str_ParseNbr_Int32+0x1ec>
    a27c:	e2562001 	subs	r2, r6, #1
    a280:	e2723000 	rsbs	r3, r2, #0
    a284:	e0b33002 	adcs	r3, r3, r2
    a288:	e3560024 	cmp	r6, #36	; 0x24
    a28c:	83833001 	orrhi	r3, r3, #1
    a290:	e1530008 	cmp	r3, r8
    a294:	0a000002 	beq	a2a4 <Str_ParseNbr_Int32+0x6c>
    a298:	e1a00008 	mov	r0, r8
    a29c:	e28dd014 	add	sp, sp, #20
    a2a0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    a2a4:	e5d00000 	ldrb	r0, [r0]
    a2a8:	ebfffefa 	bl	9e98 <ASCII_IsSpace>
    a2ac:	e3500001 	cmp	r0, #1
    a2b0:	1a00005d 	bne	a42c <Str_ParseNbr_Int32+0x1f4>
    a2b4:	e2874001 	add	r4, r7, #1
    a2b8:	e1a05004 	mov	r5, r4
    a2bc:	e2844001 	add	r4, r4, #1
    a2c0:	e5d50000 	ldrb	r0, [r5]
    a2c4:	ebfffef3 	bl	9e98 <ASCII_IsSpace>
    a2c8:	e3500001 	cmp	r0, #1
    a2cc:	0afffff9 	beq	a2b8 <Str_ParseNbr_Int32+0x80>
    a2d0:	e5d54000 	ldrb	r4, [r5]
    a2d4:	e354002b 	cmp	r4, #43	; 0x2b
    a2d8:	0a00004c 	beq	a410 <Str_ParseNbr_Int32+0x1d8>
    a2dc:	e354002d 	cmp	r4, #45	; 0x2d
    a2e0:	13a02000 	movne	r2, #0
    a2e4:	158d2004 	strne	r2, [sp, #4]
    a2e8:	0a00001b 	beq	a35c <Str_ParseNbr_Int32+0x124>
    a2ec:	e3560008 	cmp	r6, #8
    a2f0:	0a000021 	beq	a37c <Str_ParseNbr_Int32+0x144>
    a2f4:	e3560010 	cmp	r6, #16
    a2f8:	0a000024 	beq	a390 <Str_ParseNbr_Int32+0x158>
    a2fc:	e3560000 	cmp	r6, #0
    a300:	1a000024 	bne	a398 <Str_ParseNbr_Int32+0x160>
    a304:	e3540030 	cmp	r4, #48	; 0x30
    a308:	11a09005 	movne	r9, r5
    a30c:	13a0600a 	movne	r6, #10
    a310:	0a000054 	beq	a468 <Str_ParseNbr_Int32+0x230>
    a314:	e3a0b000 	mov	fp, #0
    a318:	e30d2bdc 	movw	r2, #56284	; 0xdbdc
    a31c:	e1a0800b 	mov	r8, fp
    a320:	e3402000 	movt	r2, #0
    a324:	e58d2000 	str	r2, [sp]
    a328:	e1a00004 	mov	r0, r4
    a32c:	ebfffea9 	bl	9dd8 <ASCII_IsAlphaNum>
    a330:	e3500001 	cmp	r0, #1
    a334:	0a000019 	beq	a3a0 <Str_ParseNbr_Int32+0x168>
    a338:	e35b0001 	cmp	fp, #1
    a33c:	e59d3004 	ldr	r3, [sp, #4]
    a340:	e59d2038 	ldr	r2, [sp, #56]	; 0x38
    a344:	03e08000 	mvneq	r8, #0
    a348:	e1550009 	cmp	r5, r9
    a34c:	01a09007 	moveq	r9, r7
    a350:	e58a9000 	str	r9, [sl]
    a354:	e5c23000 	strb	r3, [r2]
    a358:	eaffffce 	b	a298 <Str_ParseNbr_Int32+0x60>
    a35c:	e3590001 	cmp	r9, #1
    a360:	058d9004 	streq	r9, [sp, #4]
    a364:	05d54001 	ldrbeq	r4, [r5, #1]
    a368:	13a03001 	movne	r3, #1
    a36c:	02855001 	addeq	r5, r5, #1
    a370:	158d3004 	strne	r3, [sp, #4]
    a374:	e3560008 	cmp	r6, #8
    a378:	1affffdd 	bne	a2f4 <Str_ParseNbr_Int32+0xbc>
    a37c:	e3540030 	cmp	r4, #48	; 0x30
    a380:	1a000004 	bne	a398 <Str_ParseNbr_Int32+0x160>
    a384:	e2859001 	add	r9, r5, #1
    a388:	e5d54001 	ldrb	r4, [r5, #1]
    a38c:	eaffffe0 	b	a314 <Str_ParseNbr_Int32+0xdc>
    a390:	e3540030 	cmp	r4, #48	; 0x30
    a394:	0a000026 	beq	a434 <Str_ParseNbr_Int32+0x1fc>
    a398:	e1a09005 	mov	r9, r5
    a39c:	eaffffdc 	b	a314 <Str_ParseNbr_Int32+0xdc>
    a3a0:	e1a00004 	mov	r0, r4
    a3a4:	ebfffea0 	bl	9e2c <ASCII_IsDig>
    a3a8:	e3500001 	cmp	r0, #1
    a3ac:	02444030 	subeq	r4, r4, #48	; 0x30
    a3b0:	06ef4074 	uxtbeq	r4, r4
    a3b4:	0a000005 	beq	a3d0 <Str_ParseNbr_Int32+0x198>
    a3b8:	e1a00004 	mov	r0, r4
    a3bc:	ebfffe90 	bl	9e04 <ASCII_IsLower>
    a3c0:	e3500001 	cmp	r0, #1
    a3c4:	02444057 	subeq	r4, r4, #87	; 0x57
    a3c8:	12444037 	subne	r4, r4, #55	; 0x37
    a3cc:	e6ef4074 	uxtb	r4, r4
    a3d0:	e1560004 	cmp	r6, r4
    a3d4:	9affffd7 	bls	a338 <Str_ParseNbr_Int32+0x100>
    a3d8:	e35b0000 	cmp	fp, #0
    a3dc:	1a000009 	bne	a408 <Str_ParseNbr_Int32+0x1d0>
    a3e0:	e59d2000 	ldr	r2, [sp]
    a3e4:	e7923106 	ldr	r3, [r2, r6, lsl #2]
    a3e8:	e1530008 	cmp	r3, r8
    a3ec:	3a000005 	bcc	a408 <Str_ParseNbr_Int32+0x1d0>
    a3f0:	e0284896 	mla	r8, r6, r8, r4
    a3f4:	e1540008 	cmp	r4, r8
    a3f8:	93a0b000 	movls	fp, #0
    a3fc:	83a0b001 	movhi	fp, #1
    a400:	e5f94001 	ldrb	r4, [r9, #1]!
    a404:	eaffffc7 	b	a328 <Str_ParseNbr_Int32+0xf0>
    a408:	e3a0b001 	mov	fp, #1
    a40c:	eafffffb 	b	a400 <Str_ParseNbr_Int32+0x1c8>
    a410:	e5d54001 	ldrb	r4, [r5, #1]
    a414:	e3a03000 	mov	r3, #0
    a418:	e2855001 	add	r5, r5, #1
    a41c:	e58d3004 	str	r3, [sp, #4]
    a420:	eaffffb1 	b	a2ec <Str_ParseNbr_Int32+0xb4>
    a424:	e1a08000 	mov	r8, r0
    a428:	eaffff9a 	b	a298 <Str_ParseNbr_Int32+0x60>
    a42c:	e1a05007 	mov	r5, r7
    a430:	eaffffa6 	b	a2d0 <Str_ParseNbr_Int32+0x98>
    a434:	e5d54001 	ldrb	r4, [r5, #1]
    a438:	e2859001 	add	r9, r5, #1
    a43c:	e3540058 	cmp	r4, #88	; 0x58
    a440:	0a000001 	beq	a44c <Str_ParseNbr_Int32+0x214>
    a444:	e3540078 	cmp	r4, #120	; 0x78
    a448:	1affffb1 	bne	a314 <Str_ParseNbr_Int32+0xdc>
    a44c:	e5d50002 	ldrb	r0, [r5, #2]
    a450:	ebfffe7f 	bl	9e54 <ASCII_IsDigHex>
    a454:	e3500001 	cmp	r0, #1
    a458:	02859002 	addeq	r9, r5, #2
    a45c:	15d54001 	ldrbne	r4, [r5, #1]
    a460:	05d54002 	ldrbeq	r4, [r5, #2]
    a464:	eaffffaa 	b	a314 <Str_ParseNbr_Int32+0xdc>
    a468:	e5d54001 	ldrb	r4, [r5, #1]
    a46c:	e2859001 	add	r9, r5, #1
    a470:	e3540058 	cmp	r4, #88	; 0x58
    a474:	0a000002 	beq	a484 <Str_ParseNbr_Int32+0x24c>
    a478:	e3540078 	cmp	r4, #120	; 0x78
    a47c:	13a06008 	movne	r6, #8
    a480:	1affffa3 	bne	a314 <Str_ParseNbr_Int32+0xdc>
    a484:	e5d50002 	ldrb	r0, [r5, #2]
    a488:	e3a06010 	mov	r6, #16
    a48c:	ebfffe70 	bl	9e54 <ASCII_IsDigHex>
    a490:	e3500001 	cmp	r0, #1
    a494:	02859002 	addeq	r9, r5, #2
    a498:	15d54001 	ldrbne	r4, [r5, #1]
    a49c:	05d54002 	ldrbeq	r4, [r5, #2]
    a4a0:	eaffff9b 	b	a314 <Str_ParseNbr_Int32+0xdc>

0000a4a4 <Str_FmtNbr_Int32>:
    a4a4:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    a4a8:	e24dd01c 	sub	sp, sp, #28
    a4ac:	e1a05002 	mov	r5, r2
    a4b0:	e1a04000 	mov	r4, r0
    a4b4:	e59dc04c 	ldr	ip, [sp, #76]	; 0x4c
    a4b8:	e1a08001 	mov	r8, r1
    a4bc:	e5dd2044 	ldrb	r2, [sp, #68]	; 0x44
    a4c0:	e35c0000 	cmp	ip, #0
    a4c4:	e58d3004 	str	r3, [sp, #4]
    a4c8:	e5dd7040 	ldrb	r7, [sp, #64]	; 0x40
    a4cc:	e58d200c 	str	r2, [sp, #12]
    a4d0:	0a00009f 	beq	a754 <Str_FmtNbr_Int32+0x2b0>
    a4d4:	e2453002 	sub	r3, r5, #2
    a4d8:	e3530022 	cmp	r3, #34	; 0x22
    a4dc:	83a06001 	movhi	r6, #1
    a4e0:	9a000074 	bls	a6b8 <Str_FmtNbr_Int32+0x214>
    a4e4:	e3570000 	cmp	r7, #0
    a4e8:	1a000076 	bne	a6c8 <Str_FmtNbr_Int32+0x224>
    a4ec:	e3560000 	cmp	r6, #0
    a4f0:	1a000022 	bne	a580 <Str_FmtNbr_Int32+0xdc>
    a4f4:	e1540005 	cmp	r4, r5
    a4f8:	3a000098 	bcc	a760 <Str_FmtNbr_Int32+0x2bc>
    a4fc:	e1a00004 	mov	r0, r4
    a500:	e3a0b001 	mov	fp, #1
    a504:	e1a01005 	mov	r1, r5
    a508:	e28bb001 	add	fp, fp, #1
    a50c:	eb000ba6 	bl	d3ac <__aeabi_uidiv>
    a510:	e6efb07b 	uxtb	fp, fp
    a514:	e1500005 	cmp	r0, r5
    a518:	2afffff9 	bcs	a504 <Str_FmtNbr_Int32+0x60>
    a51c:	e1a0200b 	mov	r2, fp
    a520:	e59dc004 	ldr	ip, [sp, #4]
    a524:	e25c0001 	subs	r0, ip, #1
    a528:	e2703000 	rsbs	r3, r0, #0
    a52c:	e0b33000 	adcs	r3, r3, r0
    a530:	e0822003 	add	r2, r2, r3
    a534:	e1580002 	cmp	r8, r2
    a538:	ba00000f 	blt	a57c <Str_FmtNbr_Int32+0xd8>
    a53c:	e15b0008 	cmp	fp, r8
    a540:	21a0b008 	movcs	fp, r8
    a544:	e3570000 	cmp	r7, #0
    a548:	0a00007c 	beq	a740 <Str_FmtNbr_Int32+0x29c>
    a54c:	e06b2008 	rsb	r2, fp, r8
    a550:	e1a0a008 	mov	sl, r8
    a554:	e6ef2072 	uxtb	r2, r2
    a558:	e1530002 	cmp	r3, r2
    a55c:	03a0c000 	moveq	ip, #0
    a560:	058dc010 	streq	ip, [sp, #16]
    a564:	0a000078 	beq	a74c <Str_FmtNbr_Int32+0x2a8>
    a568:	e2571030 	subs	r1, r7, #48	; 0x30
    a56c:	e271c000 	rsbs	ip, r1, #0
    a570:	e0bcc001 	adcs	ip, ip, r1
    a574:	e58dc010 	str	ip, [sp, #16]
    a578:	ea000073 	b	a74c <Str_FmtNbr_Int32+0x2a8>
    a57c:	e1a0b004 	mov	fp, r4
    a580:	e1a0a008 	mov	sl, r8
    a584:	e3a06001 	mov	r6, #1
    a588:	e5dd3048 	ldrb	r3, [sp, #72]	; 0x48
    a58c:	e59dc04c 	ldr	ip, [sp, #76]	; 0x4c
    a590:	e3530000 	cmp	r3, #0
    a594:	e08c300a 	add	r3, ip, sl
    a598:	13a01000 	movne	r1, #0
    a59c:	17cc100a 	strbne	r1, [ip, sl]
    a5a0:	e35a0000 	cmp	sl, #0
    a5a4:	e2439001 	sub	r9, r3, #1
    a5a8:	0a000032 	beq	a678 <Str_FmtNbr_Int32+0x1d4>
    a5ac:	e24a3001 	sub	r3, sl, #1
    a5b0:	e3a02000 	mov	r2, #0
    a5b4:	e58d3014 	str	r3, [sp, #20]
    a5b8:	e1a03006 	mov	r3, r6
    a5bc:	e58d2008 	str	r2, [sp, #8]
    a5c0:	e1a0600b 	mov	r6, fp
    a5c4:	e1a04002 	mov	r4, r2
    a5c8:	e1a0b00a 	mov	fp, sl
    a5cc:	e3a0803f 	mov	r8, #63	; 0x3f
    a5d0:	e1a0a003 	mov	sl, r3
    a5d4:	ea000013 	b	a628 <Str_FmtNbr_Int32+0x184>
    a5d8:	e1a00006 	mov	r0, r6
    a5dc:	e1a01005 	mov	r1, r5
    a5e0:	eb000bec 	bl	d598 <__aeabi_uidivmod>
    a5e4:	e6ef1071 	uxtb	r1, r1
    a5e8:	e3510009 	cmp	r1, #9
    a5ec:	92811030 	addls	r1, r1, #48	; 0x30
    a5f0:	94491001 	strbls	r1, [r9], #-1
    a5f4:	9a000004 	bls	a60c <Str_FmtNbr_Int32+0x168>
    a5f8:	e59dc00c 	ldr	ip, [sp, #12]
    a5fc:	e35c0001 	cmp	ip, #1
    a600:	12811037 	addne	r1, r1, #55	; 0x37
    a604:	02811057 	addeq	r1, r1, #87	; 0x57
    a608:	e4491001 	strb	r1, [r9], #-1
    a60c:	e1a00006 	mov	r0, r6
    a610:	e1a01005 	mov	r1, r5
    a614:	eb000b64 	bl	d3ac <__aeabi_uidiv>
    a618:	e1a06000 	mov	r6, r0
    a61c:	e2844001 	add	r4, r4, #1
    a620:	e15b0004 	cmp	fp, r4
    a624:	9a000012 	bls	a674 <Str_FmtNbr_Int32+0x1d0>
    a628:	e35a0000 	cmp	sl, #0
    a62c:	14498001 	strbne	r8, [r9], #-1
    a630:	1afffff9 	bne	a61c <Str_FmtNbr_Int32+0x178>
    a634:	e2961000 	adds	r1, r6, #0
    a638:	13a01001 	movne	r1, #1
    a63c:	e3540000 	cmp	r4, #0
    a640:	03811001 	orreq	r1, r1, #1
    a644:	e3510000 	cmp	r1, #0
    a648:	1affffe2 	bne	a5d8 <Str_FmtNbr_Int32+0x134>
    a64c:	e59d2004 	ldr	r2, [sp, #4]
    a650:	e3520001 	cmp	r2, #1
    a654:	0a00000c 	beq	a68c <Str_FmtNbr_Int32+0x1e8>
    a658:	e3570000 	cmp	r7, #0
    a65c:	e2844001 	add	r4, r4, #1
    a660:	14497001 	strbne	r7, [r9], #-1
    a664:	13a06000 	movne	r6, #0
    a668:	01a06007 	moveq	r6, r7
    a66c:	e15b0004 	cmp	fp, r4
    a670:	8affffec 	bhi	a628 <Str_FmtNbr_Int32+0x184>
    a674:	e1a0600a 	mov	r6, sl
    a678:	e3560000 	cmp	r6, #0
    a67c:	1a000034 	bne	a754 <Str_FmtNbr_Int32+0x2b0>
    a680:	e59d004c 	ldr	r0, [sp, #76]	; 0x4c
    a684:	e28dd01c 	add	sp, sp, #28
    a688:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    a68c:	e59d3008 	ldr	r3, [sp, #8]
    a690:	e59dc010 	ldr	ip, [sp, #16]
    a694:	e183100c 	orr	r1, r3, ip
    a698:	e31100ff 	tst	r1, #255	; 0xff
    a69c:	1a000021 	bne	a728 <Str_FmtNbr_Int32+0x284>
    a6a0:	e3a0302d 	mov	r3, #45	; 0x2d
    a6a4:	e3a0c001 	mov	ip, #1
    a6a8:	e4493001 	strb	r3, [r9], #-1
    a6ac:	e3a06000 	mov	r6, #0
    a6b0:	e58dc008 	str	ip, [sp, #8]
    a6b4:	eaffffd8 	b	a61c <Str_FmtNbr_Int32+0x178>
    a6b8:	e2716001 	rsbs	r6, r1, #1
    a6bc:	33a06000 	movcc	r6, #0
    a6c0:	e3570000 	cmp	r7, #0
    a6c4:	0affff88 	beq	a4ec <Str_FmtNbr_Int32+0x48>
    a6c8:	e1a00007 	mov	r0, r7
    a6cc:	ebfffdfe 	bl	9ecc <ASCII_IsPrint>
    a6d0:	e3500001 	cmp	r0, #1
    a6d4:	1affffa9 	bne	a580 <Str_FmtNbr_Int32+0xdc>
    a6d8:	e3570030 	cmp	r7, #48	; 0x30
    a6dc:	0affff82 	beq	a4ec <Str_FmtNbr_Int32+0x48>
    a6e0:	e59d200c 	ldr	r2, [sp, #12]
    a6e4:	e2473030 	sub	r3, r7, #48	; 0x30
    a6e8:	e3520001 	cmp	r2, #1
    a6ec:	e6ef3073 	uxtb	r3, r3
    a6f0:	12472041 	subne	r2, r7, #65	; 0x41
    a6f4:	02472061 	subeq	r2, r7, #97	; 0x61
    a6f8:	e355000a 	cmp	r5, #10
    a6fc:	91530005 	cmpls	r3, r5
    a700:	e6ef2072 	uxtb	r2, r2
    a704:	3affff9d 	bcc	a580 <Str_FmtNbr_Int32+0xdc>
    a708:	e355000a 	cmp	r5, #10
    a70c:	9affff76 	bls	a4ec <Str_FmtNbr_Int32+0x48>
    a710:	e3530009 	cmp	r3, #9
    a714:	9affff99 	bls	a580 <Str_FmtNbr_Int32+0xdc>
    a718:	e245300a 	sub	r3, r5, #10
    a71c:	e1520003 	cmp	r2, r3
    a720:	3affff96 	bcc	a580 <Str_FmtNbr_Int32+0xdc>
    a724:	eaffff70 	b	a4ec <Str_FmtNbr_Int32+0x48>
    a728:	e35c0000 	cmp	ip, #0
    a72c:	0affffc9 	beq	a658 <Str_FmtNbr_Int32+0x1b4>
    a730:	e59d2014 	ldr	r2, [sp, #20]
    a734:	e1520004 	cmp	r2, r4
    a738:	1affffc6 	bne	a658 <Str_FmtNbr_Int32+0x1b4>
    a73c:	eaffffd7 	b	a6a0 <Str_FmtNbr_Int32+0x1fc>
    a740:	e08b3003 	add	r3, fp, r3
    a744:	e58d7010 	str	r7, [sp, #16]
    a748:	e6efa073 	uxtb	sl, r3
    a74c:	e1a0b004 	mov	fp, r4
    a750:	eaffff8c 	b	a588 <Str_FmtNbr_Int32+0xe4>
    a754:	e3a0c000 	mov	ip, #0
    a758:	e58dc04c 	str	ip, [sp, #76]	; 0x4c
    a75c:	eaffffc7 	b	a680 <Str_FmtNbr_Int32+0x1dc>
    a760:	e3a02001 	mov	r2, #1
    a764:	e1a0b002 	mov	fp, r2
    a768:	eaffff6c 	b	a520 <Str_FmtNbr_Int32+0x7c>

0000a76c <Str_Len>:
    a76c:	e2503000 	subs	r3, r0, #0
    a770:	0a00000c 	beq	a7a8 <Str_Len+0x3c>
    a774:	e5d30000 	ldrb	r0, [r3]
    a778:	e3500000 	cmp	r0, #0
    a77c:	012fff1e 	bxeq	lr
    a780:	e3a00000 	mov	r0, #0
    a784:	e3730001 	cmn	r3, #1
    a788:	e2800001 	add	r0, r0, #1
    a78c:	012fff1e 	bxeq	lr
    a790:	e5f32001 	ldrb	r2, [r3, #1]!
    a794:	e3520000 	cmp	r2, #0
    a798:	012fff1e 	bxeq	lr
    a79c:	e3700001 	cmn	r0, #1
    a7a0:	1afffff7 	bne	a784 <Str_Len+0x18>
    a7a4:	e12fff1e 	bx	lr
    a7a8:	e1a00003 	mov	r0, r3
    a7ac:	e12fff1e 	bx	lr

0000a7b0 <Str_Len_N>:
    a7b0:	e2503000 	subs	r3, r0, #0
    a7b4:	0a00000e 	beq	a7f4 <Str_Len_N+0x44>
    a7b8:	e5d30000 	ldrb	r0, [r3]
    a7bc:	e3500000 	cmp	r0, #0
    a7c0:	012fff1e 	bxeq	lr
    a7c4:	e3510000 	cmp	r1, #0
    a7c8:	0a00000b 	beq	a7fc <Str_Len_N+0x4c>
    a7cc:	e3a00000 	mov	r0, #0
    a7d0:	e3730001 	cmn	r3, #1
    a7d4:	e2800001 	add	r0, r0, #1
    a7d8:	012fff1e 	bxeq	lr
    a7dc:	e5f32001 	ldrb	r2, [r3, #1]!
    a7e0:	e3520000 	cmp	r2, #0
    a7e4:	012fff1e 	bxeq	lr
    a7e8:	e1500001 	cmp	r0, r1
    a7ec:	1afffff7 	bne	a7d0 <Str_Len_N+0x20>
    a7f0:	e12fff1e 	bx	lr
    a7f4:	e1a00003 	mov	r0, r3
    a7f8:	e12fff1e 	bx	lr
    a7fc:	e1a00001 	mov	r0, r1
    a800:	e12fff1e 	bx	lr

0000a804 <Str_Copy_N>:
    a804:	e3500000 	cmp	r0, #0
    a808:	e92d0070 	push	{r4, r5, r6}
    a80c:	0a00001e 	beq	a88c <Str_Copy_N+0x88>
    a810:	e3510000 	cmp	r1, #0
    a814:	0a00001c 	beq	a88c <Str_Copy_N+0x88>
    a818:	e5d1c000 	ldrb	ip, [r1]
    a81c:	e35c0000 	cmp	ip, #0
    a820:	0a00001b 	beq	a894 <Str_Copy_N+0x90>
    a824:	e3520000 	cmp	r2, #0
    a828:	0a000015 	beq	a884 <Str_Copy_N+0x80>
    a82c:	e2811001 	add	r1, r1, #1
    a830:	e1a03000 	mov	r3, r0
    a834:	e3a04000 	mov	r4, #0
    a838:	ea000004 	b	a850 <Str_Copy_N+0x4c>
    a83c:	e4d1c001 	ldrb	ip, [r1], #1
    a840:	e35c0000 	cmp	ip, #0
    a844:	0a000008 	beq	a86c <Str_Copy_N+0x68>
    a848:	e1540002 	cmp	r4, r2
    a84c:	0a000006 	beq	a86c <Str_Copy_N+0x68>
    a850:	e4c3c001 	strb	ip, [r3], #1
    a854:	e3530000 	cmp	r3, #0
    a858:	13510000 	cmpne	r1, #0
    a85c:	e1a05001 	mov	r5, r1
    a860:	e2844001 	add	r4, r4, #1
    a864:	e1a06003 	mov	r6, r3
    a868:	1afffff3 	bne	a83c <Str_Copy_N+0x38>
    a86c:	e3530000 	cmp	r3, #0
    a870:	13550000 	cmpne	r5, #0
    a874:	0a000004 	beq	a88c <Str_Copy_N+0x88>
    a878:	e1520004 	cmp	r2, r4
    a87c:	83a03000 	movhi	r3, #0
    a880:	85c63000 	strbhi	r3, [r6]
    a884:	e8bd0070 	pop	{r4, r5, r6}
    a888:	e12fff1e 	bx	lr
    a88c:	e3a00000 	mov	r0, #0
    a890:	eafffffb 	b	a884 <Str_Copy_N+0x80>
    a894:	e1a06000 	mov	r6, r0
    a898:	e1a0400c 	mov	r4, ip
    a89c:	eafffff5 	b	a878 <Str_Copy_N+0x74>

0000a8a0 <Str_Copy>:
    a8a0:	e3e02000 	mvn	r2, #0
    a8a4:	eaffffd6 	b	a804 <Str_Copy_N>

0000a8a8 <Str_Cat_N>:
    a8a8:	e3500000 	cmp	r0, #0
    a8ac:	e92d0030 	push	{r4, r5}
    a8b0:	0a00000b 	beq	a8e4 <Str_Cat_N+0x3c>
    a8b4:	e3510000 	cmp	r1, #0
    a8b8:	0a000009 	beq	a8e4 <Str_Cat_N+0x3c>
    a8bc:	e3520000 	cmp	r2, #0
    a8c0:	11a03000 	movne	r3, r0
    a8c4:	0a000007 	beq	a8e8 <Str_Cat_N+0x40>
    a8c8:	e1a0c003 	mov	ip, r3
    a8cc:	e2833001 	add	r3, r3, #1
    a8d0:	e5dc4000 	ldrb	r4, [ip]
    a8d4:	e3540000 	cmp	r4, #0
    a8d8:	0a000004 	beq	a8f0 <Str_Cat_N+0x48>
    a8dc:	e3530000 	cmp	r3, #0
    a8e0:	1afffff8 	bne	a8c8 <Str_Cat_N+0x20>
    a8e4:	e3a00000 	mov	r0, #0
    a8e8:	e8bd0030 	pop	{r4, r5}
    a8ec:	e12fff1e 	bx	lr
    a8f0:	e35c0000 	cmp	ip, #0
    a8f4:	0afffffa 	beq	a8e4 <Str_Cat_N+0x3c>
    a8f8:	e5d14000 	ldrb	r4, [r1]
    a8fc:	e3540000 	cmp	r4, #0
    a900:	0a000015 	beq	a95c <Str_Cat_N+0xb4>
    a904:	e1a0300c 	mov	r3, ip
    a908:	e2811001 	add	r1, r1, #1
    a90c:	e08c2002 	add	r2, ip, r2
    a910:	ea000001 	b	a91c <Str_Cat_N+0x74>
    a914:	e1530002 	cmp	r3, r2
    a918:	0a000008 	beq	a940 <Str_Cat_N+0x98>
    a91c:	e4c34001 	strb	r4, [r3], #1
    a920:	e3530000 	cmp	r3, #0
    a924:	13510000 	cmpne	r1, #0
    a928:	e1a05001 	mov	r5, r1
    a92c:	e1a0c003 	mov	ip, r3
    a930:	0a000002 	beq	a940 <Str_Cat_N+0x98>
    a934:	e4d14001 	ldrb	r4, [r1], #1
    a938:	e3540000 	cmp	r4, #0
    a93c:	1afffff4 	bne	a914 <Str_Cat_N+0x6c>
    a940:	e35c0000 	cmp	ip, #0
    a944:	13550000 	cmpne	r5, #0
    a948:	13a05000 	movne	r5, #0
    a94c:	03a05001 	moveq	r5, #1
    a950:	0affffe3 	beq	a8e4 <Str_Cat_N+0x3c>
    a954:	e5cc5000 	strb	r5, [ip]
    a958:	eaffffe2 	b	a8e8 <Str_Cat_N+0x40>
    a95c:	e1a05001 	mov	r5, r1
    a960:	eafffff6 	b	a940 <Str_Cat_N+0x98>

0000a964 <Str_Cat>:
    a964:	e3e02000 	mvn	r2, #0
    a968:	eaffffce 	b	a8a8 <Str_Cat_N>

0000a96c <Str_Cmp_N>:
    a96c:	e3520000 	cmp	r2, #0
    a970:	e92d0030 	push	{r4, r5}
    a974:	0a000022 	beq	aa04 <Str_Cmp_N+0x98>
    a978:	e3500000 	cmp	r0, #0
    a97c:	0a000029 	beq	aa28 <Str_Cmp_N+0xbc>
    a980:	e3510000 	cmp	r1, #0
    a984:	05d02000 	ldrbeq	r2, [r0]
    a988:	0a00001d 	beq	aa04 <Str_Cmp_N+0x98>
    a98c:	e5d15000 	ldrb	r5, [r1]
    a990:	e2803001 	add	r3, r0, #1
    a994:	e5d0c000 	ldrb	ip, [r0]
    a998:	e2811001 	add	r1, r1, #1
    a99c:	e15c0005 	cmp	ip, r5
    a9a0:	1a000016 	bne	aa00 <Str_Cmp_N+0x94>
    a9a4:	e35c0000 	cmp	ip, #0
    a9a8:	0a000023 	beq	aa3c <Str_Cmp_N+0xd0>
    a9ac:	e3510000 	cmp	r1, #0
    a9b0:	13530000 	cmpne	r3, #0
    a9b4:	0a000018 	beq	aa1c <Str_Cmp_N+0xb0>
    a9b8:	e3a04000 	mov	r4, #0
    a9bc:	ea000008 	b	a9e4 <Str_Cmp_N+0x78>
    a9c0:	e35c0000 	cmp	ip, #0
    a9c4:	0a00001c 	beq	aa3c <Str_Cmp_N+0xd0>
    a9c8:	e3510000 	cmp	r1, #0
    a9cc:	13530000 	cmpne	r3, #0
    a9d0:	03a00000 	moveq	r0, #0
    a9d4:	13a00001 	movne	r0, #1
    a9d8:	0a00000c 	beq	aa10 <Str_Cmp_N+0xa4>
    a9dc:	e1540002 	cmp	r4, r2
    a9e0:	0a000017 	beq	aa44 <Str_Cmp_N+0xd8>
    a9e4:	e4d3c001 	ldrb	ip, [r3], #1
    a9e8:	e2844001 	add	r4, r4, #1
    a9ec:	e4d15001 	ldrb	r5, [r1], #1
    a9f0:	e15c0005 	cmp	ip, r5
    a9f4:	0afffff1 	beq	a9c0 <Str_Cmp_N+0x54>
    a9f8:	e1520004 	cmp	r2, r4
    a9fc:	0a000010 	beq	aa44 <Str_Cmp_N+0xd8>
    aa00:	e065200c 	rsb	r2, r5, ip
    aa04:	e6bf0072 	sxth	r0, r2
    aa08:	e8bd0030 	pop	{r4, r5}
    aa0c:	e12fff1e 	bx	lr
    aa10:	e1520004 	cmp	r2, r4
    aa14:	01a02000 	moveq	r2, r0
    aa18:	0afffff9 	beq	aa04 <Str_Cmp_N+0x98>
    aa1c:	e3530000 	cmp	r3, #0
    aa20:	15d32000 	ldrbne	r2, [r3]
    aa24:	1afffff6 	bne	aa04 <Str_Cmp_N+0x98>
    aa28:	e3510000 	cmp	r1, #0
    aa2c:	01a02001 	moveq	r2, r1
    aa30:	15d12000 	ldrbne	r2, [r1]
    aa34:	12622000 	rsbne	r2, r2, #0
    aa38:	eafffff1 	b	aa04 <Str_Cmp_N+0x98>
    aa3c:	e1a0200c 	mov	r2, ip
    aa40:	eaffffef 	b	aa04 <Str_Cmp_N+0x98>
    aa44:	e3a02000 	mov	r2, #0
    aa48:	eaffffed 	b	aa04 <Str_Cmp_N+0x98>

0000aa4c <Str_Cmp>:
    aa4c:	e3e02000 	mvn	r2, #0
    aa50:	eaffffc5 	b	a96c <Str_Cmp_N>

0000aa54 <Str_CmpIgnoreCase_N>:
    aa54:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    aa58:	e2528000 	subs	r8, r2, #0
    aa5c:	e1a06000 	mov	r6, r0
    aa60:	e1a05001 	mov	r5, r1
    aa64:	0a00002d 	beq	ab20 <Str_CmpIgnoreCase_N+0xcc>
    aa68:	e3500000 	cmp	r0, #0
    aa6c:	0a000033 	beq	ab40 <Str_CmpIgnoreCase_N+0xec>
    aa70:	e3510000 	cmp	r1, #0
    aa74:	e5d00000 	ldrb	r0, [r0]
    aa78:	0a00002e 	beq	ab38 <Str_CmpIgnoreCase_N+0xe4>
    aa7c:	ebfffd31 	bl	9f48 <ASCII_ToLower>
    aa80:	e2864001 	add	r4, r6, #1
    aa84:	e2855001 	add	r5, r5, #1
    aa88:	e1a07000 	mov	r7, r0
    aa8c:	e5550001 	ldrb	r0, [r5, #-1]
    aa90:	ebfffd2c 	bl	9f48 <ASCII_ToLower>
    aa94:	e1570000 	cmp	r7, r0
    aa98:	1a000019 	bne	ab04 <Str_CmpIgnoreCase_N+0xb0>
    aa9c:	e5d63000 	ldrb	r3, [r6]
    aaa0:	e3530000 	cmp	r3, #0
    aaa4:	0a00001b 	beq	ab18 <Str_CmpIgnoreCase_N+0xc4>
    aaa8:	e3550000 	cmp	r5, #0
    aaac:	13540000 	cmpne	r4, #0
    aab0:	0a000018 	beq	ab18 <Str_CmpIgnoreCase_N+0xc4>
    aab4:	e3a06000 	mov	r6, #0
    aab8:	ea000007 	b	aadc <Str_CmpIgnoreCase_N+0x88>
    aabc:	e5543001 	ldrb	r3, [r4, #-1]
    aac0:	e3530000 	cmp	r3, #0
    aac4:	0a000011 	beq	ab10 <Str_CmpIgnoreCase_N+0xbc>
    aac8:	e3550000 	cmp	r5, #0
    aacc:	13540000 	cmpne	r4, #0
    aad0:	0a00000e 	beq	ab10 <Str_CmpIgnoreCase_N+0xbc>
    aad4:	e1560008 	cmp	r6, r8
    aad8:	0a000010 	beq	ab20 <Str_CmpIgnoreCase_N+0xcc>
    aadc:	e4d40001 	ldrb	r0, [r4], #1
    aae0:	e2866001 	add	r6, r6, #1
    aae4:	ebfffd17 	bl	9f48 <ASCII_ToLower>
    aae8:	e1a07000 	mov	r7, r0
    aaec:	e4d50001 	ldrb	r0, [r5], #1
    aaf0:	ebfffd14 	bl	9f48 <ASCII_ToLower>
    aaf4:	e1570000 	cmp	r7, r0
    aaf8:	0affffef 	beq	aabc <Str_CmpIgnoreCase_N+0x68>
    aafc:	e1580006 	cmp	r8, r6
    ab00:	0a000006 	beq	ab20 <Str_CmpIgnoreCase_N+0xcc>
    ab04:	e0600007 	rsb	r0, r0, r7
    ab08:	e6bf0070 	sxth	r0, r0
    ab0c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    ab10:	e1580006 	cmp	r8, r6
    ab14:	0a000001 	beq	ab20 <Str_CmpIgnoreCase_N+0xcc>
    ab18:	e3570000 	cmp	r7, #0
    ab1c:	1a000002 	bne	ab2c <Str_CmpIgnoreCase_N+0xd8>
    ab20:	e3a00000 	mov	r0, #0
    ab24:	e6bf0070 	sxth	r0, r0
    ab28:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    ab2c:	e3540000 	cmp	r4, #0
    ab30:	15d40000 	ldrbne	r0, [r4]
    ab34:	0a000001 	beq	ab40 <Str_CmpIgnoreCase_N+0xec>
    ab38:	ebfffd02 	bl	9f48 <ASCII_ToLower>
    ab3c:	eafffff8 	b	ab24 <Str_CmpIgnoreCase_N+0xd0>
    ab40:	e3550000 	cmp	r5, #0
    ab44:	0afffff5 	beq	ab20 <Str_CmpIgnoreCase_N+0xcc>
    ab48:	e5d50000 	ldrb	r0, [r5]
    ab4c:	ebfffcfd 	bl	9f48 <ASCII_ToLower>
    ab50:	e2600000 	rsb	r0, r0, #0
    ab54:	eafffff2 	b	ab24 <Str_CmpIgnoreCase_N+0xd0>

0000ab58 <Str_CmpIgnoreCase>:
    ab58:	e3e02000 	mvn	r2, #0
    ab5c:	eaffffbc 	b	aa54 <Str_CmpIgnoreCase_N>

0000ab60 <Str_Char_N>:
    ab60:	e3500000 	cmp	r0, #0
    ab64:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    ab68:	0a00000e 	beq	aba8 <Str_Char_N+0x48>
    ab6c:	e3510000 	cmp	r1, #0
    ab70:	0a00000c 	beq	aba8 <Str_Char_N+0x48>
    ab74:	e1a03000 	mov	r3, r0
    ab78:	e3a0c000 	mov	ip, #0
    ab7c:	e1a00003 	mov	r0, r3
    ab80:	e4d34001 	ldrb	r4, [r3], #1
    ab84:	e3540000 	cmp	r4, #0
    ab88:	0a000009 	beq	abb4 <Str_Char_N+0x54>
    ab8c:	e1540002 	cmp	r4, r2
    ab90:	0a00000c 	beq	abc8 <Str_Char_N+0x68>
    ab94:	e15c0001 	cmp	ip, r1
    ab98:	e28cc001 	add	ip, ip, #1
    ab9c:	0a000001 	beq	aba8 <Str_Char_N+0x48>
    aba0:	e3530000 	cmp	r3, #0
    aba4:	1afffff4 	bne	ab7c <Str_Char_N+0x1c>
    aba8:	e3a00000 	mov	r0, #0
    abac:	e8bd0010 	ldmfd	sp!, {r4}
    abb0:	e12fff1e 	bx	lr
    abb4:	e151000c 	cmp	r1, ip
    abb8:	9afffffa 	bls	aba8 <Str_Char_N+0x48>
    abbc:	e3520000 	cmp	r2, #0
    abc0:	0afffff9 	beq	abac <Str_Char_N+0x4c>
    abc4:	eafffff7 	b	aba8 <Str_Char_N+0x48>
    abc8:	e151000c 	cmp	r1, ip
    abcc:	8afffff6 	bhi	abac <Str_Char_N+0x4c>
    abd0:	eafffff4 	b	aba8 <Str_Char_N+0x48>

0000abd4 <Str_Char>:
    abd4:	e1a02001 	mov	r2, r1
    abd8:	e3e01000 	mvn	r1, #0
    abdc:	eaffffdf 	b	ab60 <Str_Char_N>

0000abe0 <Str_Char_Last_N>:
    abe0:	e92d0030 	push	{r4, r5}
    abe4:	e2505000 	subs	r5, r0, #0
    abe8:	0a000023 	beq	ac7c <Str_Char_Last_N+0x9c>
    abec:	e3510000 	cmp	r1, #0
    abf0:	0a00001f 	beq	ac74 <Str_Char_Last_N+0x94>
    abf4:	e2410001 	sub	r0, r1, #1
    abf8:	e1a0c005 	mov	ip, r5
    abfc:	e3a03000 	mov	r3, #0
    ac00:	e4dc4001 	ldrb	r4, [ip], #1
    ac04:	e3540000 	cmp	r4, #0
    ac08:	0a000004 	beq	ac20 <Str_Char_Last_N+0x40>
    ac0c:	e1500003 	cmp	r0, r3
    ac10:	0a000002 	beq	ac20 <Str_Char_Last_N+0x40>
    ac14:	e35c0000 	cmp	ip, #0
    ac18:	e2833001 	add	r3, r3, #1
    ac1c:	1afffff7 	bne	ac00 <Str_Char_Last_N+0x20>
    ac20:	e0950003 	adds	r0, r5, r3
    ac24:	0a000010 	beq	ac6c <Str_Char_Last_N+0x8c>
    ac28:	e1550000 	cmp	r5, r0
    ac2c:	0a00000b 	beq	ac60 <Str_Char_Last_N+0x80>
    ac30:	e5d03000 	ldrb	r3, [r0]
    ac34:	e1530002 	cmp	r3, r2
    ac38:	0a00000b 	beq	ac6c <Str_Char_Last_N+0x8c>
    ac3c:	e2403001 	sub	r3, r0, #1
    ac40:	ea000002 	b	ac50 <Str_Char_Last_N+0x70>
    ac44:	e5d01000 	ldrb	r1, [r0]
    ac48:	e1510002 	cmp	r1, r2
    ac4c:	0a000006 	beq	ac6c <Str_Char_Last_N+0x8c>
    ac50:	e1530005 	cmp	r3, r5
    ac54:	e1a00003 	mov	r0, r3
    ac58:	e2433001 	sub	r3, r3, #1
    ac5c:	1afffff8 	bne	ac44 <Str_Char_Last_N+0x64>
    ac60:	e5d03000 	ldrb	r3, [r0]
    ac64:	e1530002 	cmp	r3, r2
    ac68:	13a00000 	movne	r0, #0
    ac6c:	e8bd0030 	pop	{r4, r5}
    ac70:	e12fff1e 	bx	lr
    ac74:	e1a00001 	mov	r0, r1
    ac78:	eafffffb 	b	ac6c <Str_Char_Last_N+0x8c>
    ac7c:	e1a00005 	mov	r0, r5
    ac80:	eafffff9 	b	ac6c <Str_Char_Last_N+0x8c>

0000ac84 <Str_Char_Last>:
    ac84:	e1a02001 	mov	r2, r1
    ac88:	e3e01000 	mvn	r1, #0
    ac8c:	eaffffd3 	b	abe0 <Str_Char_Last_N>

0000ac90 <Str_Char_Replace>:
    ac90:	e3500000 	cmp	r0, #0
    ac94:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    ac98:	0a00000b 	beq	accc <Str_Char_Replace+0x3c>
    ac9c:	e2803001 	add	r3, r0, #1
    aca0:	e553c001 	ldrb	ip, [r3, #-1]
    aca4:	e2834001 	add	r4, r3, #1
    aca8:	e35c0000 	cmp	ip, #0
    acac:	0a000006 	beq	accc <Str_Char_Replace+0x3c>
    acb0:	e1530000 	cmp	r3, r0
    acb4:	0a000004 	beq	accc <Str_Char_Replace+0x3c>
    acb8:	e151000c 	cmp	r1, ip
    acbc:	05432001 	strbeq	r2, [r3, #-1]
    acc0:	e3530000 	cmp	r3, #0
    acc4:	e1a03004 	mov	r3, r4
    acc8:	1afffff4 	bne	aca0 <Str_Char_Replace+0x10>
    accc:	e8bd0010 	ldmfd	sp!, {r4}
    acd0:	e12fff1e 	bx	lr

0000acd4 <Str_Char_Replace_N>:
    acd4:	e3500000 	cmp	r0, #0
    acd8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    acdc:	0a00000c 	beq	ad14 <Str_Char_Replace_N+0x40>
    ace0:	e3530000 	cmp	r3, #0
    ace4:	0a00000c 	beq	ad1c <Str_Char_Replace_N+0x48>
    ace8:	e1a0c000 	mov	ip, r0
    acec:	e4dc4001 	ldrb	r4, [ip], #1
    acf0:	e3540000 	cmp	r4, #0
    acf4:	0a000006 	beq	ad14 <Str_Char_Replace_N+0x40>
    acf8:	e3530000 	cmp	r3, #0
    acfc:	e2433001 	sub	r3, r3, #1
    ad00:	0a000003 	beq	ad14 <Str_Char_Replace_N+0x40>
    ad04:	e1540001 	cmp	r4, r1
    ad08:	054c2001 	strbeq	r2, [ip, #-1]
    ad0c:	e35c0000 	cmp	ip, #0
    ad10:	1afffff5 	bne	acec <Str_Char_Replace_N+0x18>
    ad14:	e8bd0010 	ldmfd	sp!, {r4}
    ad18:	e12fff1e 	bx	lr
    ad1c:	e1a00003 	mov	r0, r3
    ad20:	eafffffb 	b	ad14 <Str_Char_Replace_N+0x40>

0000ad24 <Str_Str_N>:
    ad24:	e92d45f8 	push	{r3, r4, r5, r6, r7, r8, sl, lr}
    ad28:	e2506000 	subs	r6, r0, #0
    ad2c:	e1a07001 	mov	r7, r1
    ad30:	0a000030 	beq	adf8 <Str_Str_N+0xd4>
    ad34:	e3510000 	cmp	r1, #0
    ad38:	0a000032 	beq	ae08 <Str_Str_N+0xe4>
    ad3c:	e3520000 	cmp	r2, #0
    ad40:	0a00002e 	beq	ae00 <Str_Str_N+0xdc>
    ad44:	e3720001 	cmn	r2, #1
    ad48:	e1a05006 	mov	r5, r6
    ad4c:	12821001 	addne	r1, r2, #1
    ad50:	e1a0c006 	mov	ip, r6
    ad54:	01a01002 	moveq	r1, r2
    ad58:	e3a03000 	mov	r3, #0
    ad5c:	e4dc4001 	ldrb	r4, [ip], #1
    ad60:	e3540000 	cmp	r4, #0
    ad64:	0a000004 	beq	ad7c <Str_Str_N+0x58>
    ad68:	e1530002 	cmp	r3, r2
    ad6c:	0a000002 	beq	ad7c <Str_Str_N+0x58>
    ad70:	e35c0000 	cmp	ip, #0
    ad74:	e2833001 	add	r3, r3, #1
    ad78:	1afffff7 	bne	ad5c <Str_Str_N+0x38>
    ad7c:	e1a02007 	mov	r2, r7
    ad80:	e3a04000 	mov	r4, #0
    ad84:	e4d2c001 	ldrb	ip, [r2], #1
    ad88:	e35c0000 	cmp	ip, #0
    ad8c:	0a000004 	beq	ada4 <Str_Str_N+0x80>
    ad90:	e1540001 	cmp	r4, r1
    ad94:	0a000002 	beq	ada4 <Str_Str_N+0x80>
    ad98:	e3520000 	cmp	r2, #0
    ad9c:	e2844001 	add	r4, r4, #1
    ada0:	1afffff7 	bne	ad84 <Str_Str_N+0x60>
    ada4:	e3540000 	cmp	r4, #0
    ada8:	0a000012 	beq	adf8 <Str_Str_N+0xd4>
    adac:	e1530004 	cmp	r3, r4
    adb0:	3a00000f 	bcc	adf4 <Str_Str_N+0xd0>
    adb4:	e0966003 	adds	r6, r6, r3
    adb8:	0a00000e 	beq	adf8 <Str_Str_N+0xd4>
    adbc:	e0976004 	adds	r6, r7, r4
    adc0:	0a00000c 	beq	adf8 <Str_Str_N+0xd4>
    adc4:	e064a003 	rsb	sl, r4, r3
    adc8:	e3a08000 	mov	r8, #0
    adcc:	e0886005 	add	r6, r8, r5
    add0:	e1a01007 	mov	r1, r7
    add4:	e1a02004 	mov	r2, r4
    add8:	e2888001 	add	r8, r8, #1
    addc:	e1a00006 	mov	r0, r6
    ade0:	ebfffee1 	bl	a96c <Str_Cmp_N>
    ade4:	e3500000 	cmp	r0, #0
    ade8:	0a000002 	beq	adf8 <Str_Str_N+0xd4>
    adec:	e15a0008 	cmp	sl, r8
    adf0:	2afffff5 	bcs	adcc <Str_Str_N+0xa8>
    adf4:	e3a06000 	mov	r6, #0
    adf8:	e1a00006 	mov	r0, r6
    adfc:	e8bd85f8 	pop	{r3, r4, r5, r6, r7, r8, sl, pc}
    ae00:	e1a06002 	mov	r6, r2
    ae04:	eafffffb 	b	adf8 <Str_Str_N+0xd4>
    ae08:	e1a06001 	mov	r6, r1
    ae0c:	eafffff9 	b	adf8 <Str_Str_N+0xd4>

0000ae10 <Str_Str>:
    ae10:	e3e02000 	mvn	r2, #0
    ae14:	eaffffc2 	b	ad24 <Str_Str_N>

0000ae18 <Str_FmtNbr_Int32U>:
    ae18:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    ae1c:	e24dd014 	sub	sp, sp, #20
    ae20:	e5ddc018 	ldrb	ip, [sp, #24]
    ae24:	e58d3000 	str	r3, [sp]
    ae28:	e3a03000 	mov	r3, #0
    ae2c:	e58dc004 	str	ip, [sp, #4]
    ae30:	e5ddc01c 	ldrb	ip, [sp, #28]
    ae34:	e58dc008 	str	ip, [sp, #8]
    ae38:	e59dc020 	ldr	ip, [sp, #32]
    ae3c:	e58dc00c 	str	ip, [sp, #12]
    ae40:	ebfffd97 	bl	a4a4 <Str_FmtNbr_Int32>
    ae44:	e28dd014 	add	sp, sp, #20
    ae48:	e8bd8000 	ldmfd	sp!, {pc}

0000ae4c <Str_FmtNbr_Int32S>:
    ae4c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    ae50:	e24dd014 	sub	sp, sp, #20
    ae54:	e3500000 	cmp	r0, #0
    ae58:	e5ddc018 	ldrb	ip, [sp, #24]
    ae5c:	b2600000 	rsblt	r0, r0, #0
    ae60:	b3a0e001 	movlt	lr, #1
    ae64:	a3a0e000 	movge	lr, #0
    ae68:	e58d3000 	str	r3, [sp]
    ae6c:	e1a0300e 	mov	r3, lr
    ae70:	e58dc004 	str	ip, [sp, #4]
    ae74:	e5ddc01c 	ldrb	ip, [sp, #28]
    ae78:	e58dc008 	str	ip, [sp, #8]
    ae7c:	e59dc020 	ldr	ip, [sp, #32]
    ae80:	e58dc00c 	str	ip, [sp, #12]
    ae84:	ebfffd86 	bl	a4a4 <Str_FmtNbr_Int32>
    ae88:	e28dd014 	add	sp, sp, #20
    ae8c:	e8bd8000 	ldmfd	sp!, {pc}

0000ae90 <Str_ParseNbr_Int32U>:
    ae90:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    ae94:	e24dd00c 	sub	sp, sp, #12
    ae98:	e3a03000 	mov	r3, #0
    ae9c:	e58d3000 	str	r3, [sp]
    aea0:	ebfffce4 	bl	a238 <Str_ParseNbr_Int32>
    aea4:	e28dd00c 	add	sp, sp, #12
    aea8:	e8bd8000 	ldmfd	sp!, {pc}

0000aeac <Str_ParseNbr_Int32S>:
    aeac:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    aeb0:	e24dd014 	sub	sp, sp, #20
    aeb4:	e3a03001 	mov	r3, #1
    aeb8:	e28dc00f 	add	ip, sp, #15
    aebc:	e58dc000 	str	ip, [sp]
    aec0:	ebfffcdc 	bl	a238 <Str_ParseNbr_Int32>
    aec4:	e5dd300f 	ldrb	r3, [sp, #15]
    aec8:	e3530000 	cmp	r3, #0
    aecc:	1a000003 	bne	aee0 <Str_ParseNbr_Int32S+0x34>
    aed0:	e3500000 	cmp	r0, #0
    aed4:	b3e00102 	mvnlt	r0, #-2147483648	; 0x80000000
    aed8:	e28dd014 	add	sp, sp, #20
    aedc:	e8bd8000 	ldmfd	sp!, {pc}
    aee0:	e3500000 	cmp	r0, #0
    aee4:	a2600000 	rsbge	r0, r0, #0
    aee8:	b3a00102 	movlt	r0, #-2147483648	; 0x80000000
    aeec:	eafffff9 	b	aed8 <Str_ParseNbr_Int32S+0x2c>

0000aef0 <CSP_GPIO_Init>:
    aef0:	e12fff1e 	bx	lr

0000aef4 <CSP_GPIO_Cfg>:
    aef4:	e3a00001 	mov	r0, #1
    aef8:	e12fff1e 	bx	lr

0000aefc <CSP_GPIO_BitClr>:
    aefc:	e12fff1e 	bx	lr

0000af00 <CSP_GPIO_BitSet>:
    af00:	e12fff1e 	bx	lr

0000af04 <CSP_GPIO_BitToggle>:
    af04:	e12fff1e 	bx	lr

0000af08 <CSP_GPIO_Rd>:
    af08:	e3a00000 	mov	r0, #0
    af0c:	e12fff1e 	bx	lr

0000af10 <CSP_GPIO_Wr>:
    af10:	e12fff1e 	bx	lr

0000af14 <CSP_GPIO_IntClr>:
    af14:	e3a00000 	mov	r0, #0
    af18:	e12fff1e 	bx	lr

0000af1c <CSP_GPIO_IntStatGet>:
    af1c:	e3a00000 	mov	r0, #0
    af20:	e12fff1e 	bx	lr

0000af24 <CSP_IntClr>:
    af24:	ea0002de 	b	baa4 <guest_CSP_IntClr>

0000af28 <CSP_IntDis>:
    af28:	e1a022a1 	lsr	r2, r1, #5
    af2c:	e3a03d46 	mov	r3, #4480	; 0x1180
    af30:	e34f38f0 	movt	r3, #63728	; 0xf8f0
    af34:	e201101f 	and	r1, r1, #31
    af38:	e3a00001 	mov	r0, #1
    af3c:	e1a01110 	lsl	r1, r0, r1
    af40:	e7831102 	str	r1, [r3, r2, lsl #2]
    af44:	e12fff1e 	bx	lr

0000af48 <CSP_IntDisAll>:
    af48:	e3a03a01 	mov	r3, #4096	; 0x1000
    af4c:	e34f38f0 	movt	r3, #63728	; 0xf8f0
    af50:	e5932000 	ldr	r2, [r3]
    af54:	e3c22001 	bic	r2, r2, #1
    af58:	e5832000 	str	r2, [r3]
    af5c:	e12fff1e 	bx	lr

0000af60 <CSP_IntEn>:
    af60:	e1a022a1 	lsr	r2, r1, #5
    af64:	e3a03c11 	mov	r3, #4352	; 0x1100
    af68:	e34f38f0 	movt	r3, #63728	; 0xf8f0
    af6c:	e201101f 	and	r1, r1, #31
    af70:	e3a00001 	mov	r0, #1
    af74:	e1a01110 	lsl	r1, r0, r1
    af78:	e7831102 	str	r1, [r3, r2, lsl #2]
    af7c:	e12fff1e 	bx	lr

0000af80 <CSP_IntInit>:
    af80:	e92d4070 	push	{r4, r5, r6, lr}
    af84:	e30e6550 	movw	r6, #58704	; 0xe550
    af88:	e3406000 	movt	r6, #0
    af8c:	e3a04000 	mov	r4, #0
    af90:	eb000136 	bl	b470 <CPU_SR_Save>
    af94:	e1a05000 	mov	r5, r0
    af98:	e0860184 	add	r0, r6, r4, lsl #3
    af9c:	eb000126 	bl	b43c <CSP_IntVectClr>
    afa0:	e2844001 	add	r4, r4, #1
    afa4:	e1a00005 	mov	r0, r5
    afa8:	eb000136 	bl	b488 <CPU_SR_Restore>
    afac:	e3540c01 	cmp	r4, #256	; 0x100
    afb0:	1afffff6 	bne	af90 <CSP_IntInit+0x10>
    afb4:	e8bd8070 	pop	{r4, r5, r6, pc}

0000afb8 <CSP_IntSrcCfg>:
    afb8:	e3500000 	cmp	r0, #0
    afbc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    afc0:	13a00000 	movne	r0, #0
    afc4:	1a000018 	bne	b02c <CSP_IntSrcCfg+0x74>
    afc8:	e35100ff 	cmp	r1, #255	; 0xff
    afcc:	8a000016 	bhi	b02c <CSP_IntSrcCfg+0x74>
    afd0:	e242c010 	sub	ip, r2, #16
    afd4:	e35c00ef 	cmp	ip, #239	; 0xef
    afd8:	8a000013 	bhi	b02c <CSP_IntSrcCfg+0x74>
    afdc:	e2014003 	and	r4, r1, #3
    afe0:	e1a0c121 	lsr	ip, r1, #2
    afe4:	e3a00b05 	mov	r0, #5120	; 0x1400
    afe8:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    afec:	e3530001 	cmp	r3, #1
    aff0:	e1a03184 	lsl	r3, r4, #3
    aff4:	e1a02312 	lsl	r2, r2, r3
    aff8:	e78c2000 	str	r2, [ip, r0]
    affc:	e1a02221 	lsr	r2, r1, #4
    b000:	e201100f 	and	r1, r1, #15
    b004:	e3a03b07 	mov	r3, #7168	; 0x1c00
    b008:	e34f38f0 	movt	r3, #63728	; 0xf8f0
    b00c:	e3a0c001 	mov	ip, #1
    b010:	e1a01c11 	lsl	r1, r1, ip
    b014:	e7924003 	ldr	r4, [r2, r3]
    b018:	e081100c 	add	r1, r1, ip
    b01c:	e1a0000c 	mov	r0, ip
    b020:	91c4c11c 	bicls	ip, r4, ip, lsl r1
    b024:	8184c11c 	orrhi	ip, r4, ip, lsl r1
    b028:	e782c003 	str	ip, [r2, r3]
    b02c:	e8bd0010 	ldmfd	sp!, {r4}
    b030:	e12fff1e 	bx	lr

0000b034 <CSP_IntVectReg>:
    b034:	e3500000 	cmp	r0, #0
    b038:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    b03c:	e1a04001 	mov	r4, r1
    b040:	e1a06002 	mov	r6, r2
    b044:	e1a05003 	mov	r5, r3
    b048:	1a00000d 	bne	b084 <CSP_IntVectReg+0x50>
    b04c:	e35100ff 	cmp	r1, #255	; 0xff
    b050:	88bd80f8 	pophi	{r3, r4, r5, r6, r7, pc}
    b054:	eb000105 	bl	b470 <CPU_SR_Save>
    b058:	e1a01006 	mov	r1, r6
    b05c:	e1a02005 	mov	r2, r5
    b060:	e1a07000 	mov	r7, r0
    b064:	e30e0550 	movw	r0, #58704	; 0xe550
    b068:	e3400000 	movt	r0, #0
    b06c:	e0800184 	add	r0, r0, r4, lsl #3
    b070:	eb0000f5 	bl	b44c <CSP_IntVectSet>
    b074:	e1a00007 	mov	r0, r7
    b078:	eb000102 	bl	b488 <CPU_SR_Restore>
    b07c:	e3a00001 	mov	r0, #1
    b080:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    b084:	e3a00000 	mov	r0, #0
    b088:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

0000b08c <CSP_IntVectUnreg>:
    b08c:	e3500000 	cmp	r0, #0
    b090:	e92d4038 	push	{r3, r4, r5, lr}
    b094:	e1a04001 	mov	r4, r1
    b098:	1a00000b 	bne	b0cc <CSP_IntVectUnreg+0x40>
    b09c:	e35100ff 	cmp	r1, #255	; 0xff
    b0a0:	88bd8038 	pophi	{r3, r4, r5, pc}
    b0a4:	eb0000f1 	bl	b470 <CPU_SR_Save>
    b0a8:	e1a05000 	mov	r5, r0
    b0ac:	e30e0550 	movw	r0, #58704	; 0xe550
    b0b0:	e3400000 	movt	r0, #0
    b0b4:	e0800184 	add	r0, r0, r4, lsl #3
    b0b8:	eb0000df 	bl	b43c <CSP_IntVectClr>
    b0bc:	e1a00005 	mov	r0, r5
    b0c0:	eb0000f0 	bl	b488 <CPU_SR_Restore>
    b0c4:	e3a00001 	mov	r0, #1
    b0c8:	e8bd8038 	pop	{r3, r4, r5, pc}
    b0cc:	e3a00000 	mov	r0, #0
    b0d0:	e8bd8038 	pop	{r3, r4, r5, pc}

0000b0d4 <CSP_IntHandlerSrc>:
    b0d4:	e35000ff 	cmp	r0, #255	; 0xff
    b0d8:	e92d4010 	push	{r4, lr}
    b0dc:	e1a04000 	mov	r4, r0
    b0e0:	e24dd008 	sub	sp, sp, #8
    b0e4:	9a000001 	bls	b0f0 <CSP_IntHandlerSrc+0x1c>
    b0e8:	e28dd008 	add	sp, sp, #8
    b0ec:	e8bd8010 	pop	{r4, pc}
    b0f0:	e30e3550 	movw	r3, #58704	; 0xe550
    b0f4:	e3403000 	movt	r3, #0
    b0f8:	e0832180 	add	r2, r3, r0, lsl #3
    b0fc:	e8920003 	ldm	r2, {r0, r1}
    b100:	e88d0003 	stm	sp, {r0, r1}
    b104:	e1a0000d 	mov	r0, sp
    b108:	eb0000d1 	bl	b454 <CSP_IntVectDeref>
    b10c:	e3a00000 	mov	r0, #0
    b110:	e1a01004 	mov	r1, r4
    b114:	eb000262 	bl	baa4 <guest_CSP_IntClr>
    b118:	eafffff2 	b	b0e8 <CSP_IntHandlerSrc+0x14>

0000b11c <CSP_IntHandler>:
    b11c:	e12fff1e 	bx	lr

0000b120 <CSP_PM_Init>:
    b120:	e12fff1e 	bx	lr

0000b124 <CSP_PM_CPU_ClkFreqGet>:
    b124:	e3040355 	movw	r0, #17237	; 0x4355
    b128:	e34103de 	movt	r0, #5086	; 0x13de
    b12c:	e12fff1e 	bx	lr

0000b130 <CSP_PM_PerClkCfg>:
    b130:	e3a00001 	mov	r0, #1
    b134:	e12fff1e 	bx	lr

0000b138 <CSP_PM_PerClkEn>:
    b138:	e3500016 	cmp	r0, #22
    b13c:	93043fff 	movwls	r3, #20479	; 0x4fff
    b140:	934f3fa0 	movtls	r3, #65440	; 0xffa0
    b144:	95132f7f 	ldrls	r2, [r3, #-3967]	; 0xfffff081
    b148:	91800002 	orrls	r0, r0, r2
    b14c:	95030f7f 	strls	r0, [r3, #-3967]	; 0xfffff081
    b150:	e12fff1e 	bx	lr

0000b154 <CSP_PM_PerClkDis>:
    b154:	e3500016 	cmp	r0, #22
    b158:	93043fff 	movwls	r3, #20479	; 0x4fff
    b15c:	934f3fa0 	movtls	r3, #65440	; 0xffa0
    b160:	95132f7f 	ldrls	r2, [r3, #-3967]	; 0xfffff081
    b164:	91c20000 	bicls	r0, r2, r0
    b168:	95030f7f 	strls	r0, [r3, #-3967]	; 0xfffff081
    b16c:	e12fff1e 	bx	lr

0000b170 <CSP_PM_PerClkFreqGet>:
    b170:	e3500015 	cmp	r0, #21
    b174:	979ff100 	ldrls	pc, [pc, r0, lsl #2]
    b178:	ea000024 	b	b210 <CSP_PM_PerClkFreqGet+0xa0>
    b17c:	0000b248 	andeq	fp, r0, r8, asr #4
    b180:	0000b23c 	andeq	fp, r0, ip, lsr r2
    b184:	0000b224 	andeq	fp, r0, r4, lsr #4
    b188:	0000b1e0 	andeq	fp, r0, r0, ror #3
    b18c:	0000b230 	andeq	fp, r0, r0, lsr r2
    b190:	0000b1f8 	strdeq	fp, [r0], -r8
    b194:	0000b204 	andeq	fp, r0, r4, lsl #4
    b198:	0000b1ec 	andeq	fp, r0, ip, ror #3
    b19c:	0000b1ec 	andeq	fp, r0, ip, ror #3
    b1a0:	0000b1d4 	ldrdeq	fp, [r0], -r4
    b1a4:	0000b1d4 	ldrdeq	fp, [r0], -r4
    b1a8:	0000b1e0 	andeq	fp, r0, r0, ror #3
    b1ac:	0000b218 	andeq	fp, r0, r8, lsl r2
    b1b0:	0000b1f8 	strdeq	fp, [r0], -r8
    b1b4:	0000b1d4 	ldrdeq	fp, [r0], -r4
    b1b8:	0000b254 	andeq	fp, r0, r4, asr r2
    b1bc:	0000b1e0 	andeq	fp, r0, r0, ror #3
    b1c0:	0000b1e0 	andeq	fp, r0, r0, ror #3
    b1c4:	0000b1d4 	ldrdeq	fp, [r0], -r4
    b1c8:	0000b1d4 	ldrdeq	fp, [r0], -r4
    b1cc:	0000b1d4 	ldrdeq	fp, [r0], -r4
    b1d0:	0000b1d4 	ldrdeq	fp, [r0], -r4
    b1d4:	e30f0080 	movw	r0, #61568	; 0xf080
    b1d8:	e34002fa 	movt	r0, #762	; 0x2fa
    b1dc:	e12fff1e 	bx	lr
    b1e0:	e3a00cc2 	mov	r0, #49664	; 0xc200
    b1e4:	e3400beb 	movt	r0, #3051	; 0xbeb
    b1e8:	e12fff1e 	bx	lr
    b1ec:	e3a00c87 	mov	r0, #34560	; 0x8700
    b1f0:	e3400393 	movt	r0, #915	; 0x393
    b1f4:	e12fff1e 	bx	lr
    b1f8:	e3070840 	movw	r0, #30784	; 0x7840
    b1fc:	e340017d 	movt	r0, #381	; 0x17d
    b200:	e12fff1e 	bx	lr
    b204:	e3050940 	movw	r0, #22848	; 0x5940
    b208:	e3400773 	movt	r0, #1907	; 0x773
    b20c:	e12fff1e 	bx	lr
    b210:	e3a00000 	mov	r0, #0
    b214:	e12fff1e 	bx	lr
    b218:	e3060bcb 	movw	r0, #27595	; 0x6bcb
    b21c:	e340069f 	movt	r0, #1695	; 0x69f
    b220:	e12fff1e 	bx	lr
    b224:	e3a00fe6 	mov	r0, #920	; 0x398
    b228:	e340009b 	movt	r0, #155	; 0x9b
    b22c:	e12fff1e 	bx	lr
    b230:	e3a00ce1 	mov	r0, #57600	; 0xe100
    b234:	e34005f5 	movt	r0, #1525	; 0x5f5
    b238:	e12fff1e 	bx	lr
    b23c:	e3000541 	movw	r0, #1345	; 0x541
    b240:	e3410fca 	movt	r0, #8138	; 0x1fca
    b244:	e12fff1e 	bx	lr
    b248:	e3090cc0 	movw	r0, #40128	; 0x9cc0
    b24c:	e34207c1 	movt	r0, #10177	; 0x27c1
    b250:	e12fff1e 	bx	lr
    b254:	e3040ddc 	movw	r0, #19932	; 0x4ddc
    b258:	e340016b 	movt	r0, #363	; 0x16b
    b25c:	e12fff1e 	bx	lr

0000b260 <CSP_PM_SysClkEn>:
    b260:	e3500003 	cmp	r0, #3
    b264:	812fff1e 	bxhi	lr
    b268:	e3500001 	cmp	r0, #1
    b26c:	0a00000e 	beq	b2ac <CSP_PM_SysClkEn+0x4c>
    b270:	2a000005 	bcs	b28c <CSP_PM_SysClkEn+0x2c>
    b274:	e3043fff 	movw	r3, #20479	; 0x4fff
    b278:	e34f3fa0 	movt	r3, #65440	; 0xffa0
    b27c:	e5132fdf 	ldr	r2, [r3, #-4063]	; 0xfffff021
    b280:	e3822001 	orr	r2, r2, #1
    b284:	e5032fdf 	str	r2, [r3, #-4063]	; 0xfffff021
    b288:	e12fff1e 	bx	lr
    b28c:	e3500002 	cmp	r0, #2
    b290:	112fff1e 	bxne	lr
    b294:	e3043fff 	movw	r3, #20479	; 0x4fff
    b298:	e34f3fa0 	movt	r3, #65440	; 0xffa0
    b29c:	e5132f9f 	ldr	r2, [r3, #-3999]	; 0xfffff061
    b2a0:	e3822001 	orr	r2, r2, #1
    b2a4:	e5032f9f 	str	r2, [r3, #-3999]	; 0xfffff061
    b2a8:	e12fff1e 	bx	lr
    b2ac:	e3043fff 	movw	r3, #20479	; 0x4fff
    b2b0:	e34f3fa0 	movt	r3, #65440	; 0xffa0
    b2b4:	e5132f5f 	ldr	r2, [r3, #-3935]	; 0xfffff0a1
    b2b8:	e3822001 	orr	r2, r2, #1
    b2bc:	e5032f5f 	str	r2, [r3, #-3935]	; 0xfffff0a1
    b2c0:	e12fff1e 	bx	lr

0000b2c4 <CSP_PM_SysClkDis>:
    b2c4:	e3500003 	cmp	r0, #3
    b2c8:	812fff1e 	bxhi	lr
    b2cc:	e3500001 	cmp	r0, #1
    b2d0:	0a00000e 	beq	b310 <CSP_PM_SysClkDis+0x4c>
    b2d4:	2a000005 	bcs	b2f0 <CSP_PM_SysClkDis+0x2c>
    b2d8:	e3043fff 	movw	r3, #20479	; 0x4fff
    b2dc:	e34f3fa0 	movt	r3, #65440	; 0xffa0
    b2e0:	e5132fdf 	ldr	r2, [r3, #-4063]	; 0xfffff021
    b2e4:	e3c22001 	bic	r2, r2, #1
    b2e8:	e5032fdf 	str	r2, [r3, #-4063]	; 0xfffff021
    b2ec:	e12fff1e 	bx	lr
    b2f0:	e3500002 	cmp	r0, #2
    b2f4:	112fff1e 	bxne	lr
    b2f8:	e3043fff 	movw	r3, #20479	; 0x4fff
    b2fc:	e34f3fa0 	movt	r3, #65440	; 0xffa0
    b300:	e5132f9f 	ldr	r2, [r3, #-3999]	; 0xfffff061
    b304:	e3c22001 	bic	r2, r2, #1
    b308:	e5032f9f 	str	r2, [r3, #-3999]	; 0xfffff061
    b30c:	e12fff1e 	bx	lr
    b310:	e3043fff 	movw	r3, #20479	; 0x4fff
    b314:	e34f3fa0 	movt	r3, #65440	; 0xffa0
    b318:	e5132f5f 	ldr	r2, [r3, #-3935]	; 0xfffff0a1
    b31c:	e3c22001 	bic	r2, r2, #1
    b320:	e5032f5f 	str	r2, [r3, #-3935]	; 0xfffff0a1
    b324:	e12fff1e 	bx	lr

0000b328 <CSP_PM_SysClkFreqGet>:
    b328:	e3040355 	movw	r0, #17237	; 0x4355
    b32c:	e34103de 	movt	r0, #5086	; 0x13de
    b330:	e12fff1e 	bx	lr

0000b334 <CSP_PM_SysClkDivCfg>:
    b334:	e24dd008 	sub	sp, sp, #8
    b338:	e3a00001 	mov	r0, #1
    b33c:	e28dd008 	add	sp, sp, #8
    b340:	e12fff1e 	bx	lr

0000b344 <CSP_TmrCfg>:
    b344:	e3500001 	cmp	r0, #1
    b348:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    b34c:	e1a04000 	mov	r4, r0
    b350:	e24dd00c 	sub	sp, sp, #12
    b354:	9a000002 	bls	b364 <CSP_TmrCfg+0x20>
    b358:	e3a00000 	mov	r0, #0
    b35c:	e28dd00c 	add	sp, sp, #12
    b360:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    b364:	e2205001 	eor	r5, r0, #1
    b368:	e3510000 	cmp	r1, #0
    b36c:	13a05000 	movne	r5, #0
    b370:	02055001 	andeq	r5, r5, #1
    b374:	e3550000 	cmp	r5, #0
    b378:	1afffff6 	bne	b358 <CSP_TmrCfg+0x14>
    b37c:	e3a00002 	mov	r0, #2
    b380:	e58d1004 	str	r1, [sp, #4]
    b384:	ebffffe7 	bl	b328 <CSP_PM_SysClkFreqGet>
    b388:	e3540000 	cmp	r4, #0
    b38c:	e1a06000 	mov	r6, r0
    b390:	11a00005 	movne	r0, r5
    b394:	1afffff0 	bne	b35c <CSP_TmrCfg+0x18>
    b398:	eb000034 	bl	b470 <CPU_SR_Save>
    b39c:	e34f58f0 	movt	r5, #63728	; 0xf8f0
    b3a0:	e59d1004 	ldr	r1, [sp, #4]
    b3a4:	e5854600 	str	r4, [r5, #1536]	; 0x600
    b3a8:	e3a04001 	mov	r4, #1
    b3ac:	e585460c 	str	r4, [r5, #1548]	; 0x60c
    b3b0:	e1a07000 	mov	r7, r0
    b3b4:	e1a00006 	mov	r0, r6
    b3b8:	eb0007fb 	bl	d3ac <__aeabi_uidiv>
    b3bc:	e2403001 	sub	r3, r0, #1
    b3c0:	e1a00007 	mov	r0, r7
    b3c4:	e5853600 	str	r3, [r5, #1536]	; 0x600
    b3c8:	e3a03006 	mov	r3, #6
    b3cc:	e5853608 	str	r3, [r5, #1544]	; 0x608
    b3d0:	eb00002c 	bl	b488 <CPU_SR_Restore>
    b3d4:	e1a00004 	mov	r0, r4
    b3d8:	eaffffdf 	b	b35c <CSP_TmrCfg+0x18>

0000b3dc <CSP_TmrOutCmpCfg>:
    b3dc:	e3a00001 	mov	r0, #1
    b3e0:	e12fff1e 	bx	lr

0000b3e4 <CSP_TmrIntClr>:
    b3e4:	e3500001 	cmp	r0, #1
    b3e8:	812fff1e 	bxhi	lr
    b3ec:	e3500000 	cmp	r0, #0
    b3f0:	03a03000 	moveq	r3, #0
    b3f4:	034f38f0 	movteq	r3, #63728	; 0xf8f0
    b3f8:	03a02001 	moveq	r2, #1
    b3fc:	0583260c 	streq	r2, [r3, #1548]	; 0x60c
    b400:	e12fff1e 	bx	lr

0000b404 <CSP_TmrRst>:
    b404:	e12fff1e 	bx	lr

0000b408 <CSP_TmrRd>:
    b408:	e3a00000 	mov	r0, #0
    b40c:	e12fff1e 	bx	lr

0000b410 <CSP_TmrStart>:
    b410:	e3500001 	cmp	r0, #1
    b414:	812fff1e 	bxhi	lr
    b418:	e3500000 	cmp	r0, #0
    b41c:	03a03000 	moveq	r3, #0
    b420:	034f38f0 	movteq	r3, #63728	; 0xf8f0
    b424:	05932608 	ldreq	r2, [r3, #1544]	; 0x608
    b428:	03822001 	orreq	r2, r2, #1
    b42c:	05832608 	streq	r2, [r3, #1544]	; 0x608
    b430:	e12fff1e 	bx	lr

0000b434 <CSP_TmrStop>:
    b434:	e12fff1e 	bx	lr

0000b438 <CSP_TmrWr>:
    b438:	e12fff1e 	bx	lr

0000b43c <CSP_IntVectClr>:
    b43c:	e3a03000 	mov	r3, #0
    b440:	e5803000 	str	r3, [r0]
    b444:	e5803004 	str	r3, [r0, #4]
    b448:	e12fff1e 	bx	lr

0000b44c <CSP_IntVectSet>:
    b44c:	e8800006 	stm	r0, {r1, r2}
    b450:	e12fff1e 	bx	lr

0000b454 <CSP_IntVectDeref>:
    b454:	e92d4008 	push	{r3, lr}
    b458:	e5903000 	ldr	r3, [r0]
    b45c:	e5900004 	ldr	r0, [r0, #4]
    b460:	e3530000 	cmp	r3, #0
    b464:	08bd8008 	popeq	{r3, pc}
    b468:	e12fff33 	blx	r3
    b46c:	e8bd8008 	pop	{r3, pc}

0000b470 <CPU_SR_Save>:
    b470:	e10f0000 	mrs	r0, CPSR
    b474:	ef000019 	svc	0x00000019
    b478:	e38010c0 	orr	r1, r0, #192	; 0xc0
    b47c:	e121f001 	msr	CPSR_c, r1
    b480:	ef000019 	svc	0x00000019
    b484:	e12fff1e 	bx	lr

0000b488 <CPU_SR_Restore>:
    b488:	e121f000 	msr	CPSR_c, r0
    b48c:	ef000019 	svc	0x00000019
    b490:	e12fff1e 	bx	lr

0000b494 <CPU_IntDis>:
    b494:	e10f0000 	mrs	r0, CPSR
    b498:	ef000019 	svc	0x00000019
    b49c:	e38000c0 	orr	r0, r0, #192	; 0xc0
    b4a0:	e121f000 	msr	CPSR_c, r0
    b4a4:	ef000019 	svc	0x00000019
    b4a8:	e12fff1e 	bx	lr

0000b4ac <CPU_IntEn>:
    b4ac:	e10f0000 	mrs	r0, CPSR
    b4b0:	ef000019 	svc	0x00000019
    b4b4:	e3c000c0 	bic	r0, r0, #192	; 0xc0
    b4b8:	e121f000 	msr	CPSR_c, r0
    b4bc:	ef000019 	svc	0x00000019
    b4c0:	e12fff1e 	bx	lr

0000b4c4 <CPU_IRQ_Dis>:
    b4c4:	e10f0000 	mrs	r0, CPSR
    b4c8:	ef000019 	svc	0x00000019
    b4cc:	e3800080 	orr	r0, r0, #128	; 0x80
    b4d0:	e121f000 	msr	CPSR_c, r0
    b4d4:	ef000019 	svc	0x00000019
    b4d8:	e12fff1e 	bx	lr

0000b4dc <CPU_IRQ_En>:
    b4dc:	e10f0000 	mrs	r0, CPSR
    b4e0:	ef000019 	svc	0x00000019
    b4e4:	e3c00080 	bic	r0, r0, #128	; 0x80
    b4e8:	e121f000 	msr	CPSR_c, r0
    b4ec:	ef000019 	svc	0x00000019
    b4f0:	e12fff1e 	bx	lr

0000b4f4 <CPU_FIQ_Dis>:
    b4f4:	e10f0000 	mrs	r0, CPSR
    b4f8:	ef000019 	svc	0x00000019
    b4fc:	e3800040 	orr	r0, r0, #64	; 0x40
    b500:	e121f000 	msr	CPSR_c, r0
    b504:	ef000019 	svc	0x00000019
    b508:	e12fff1e 	bx	lr

0000b50c <CPU_FIQ_En>:
    b50c:	e10f0000 	mrs	r0, CPSR
    b510:	ef000019 	svc	0x00000019
    b514:	e3c00040 	bic	r0, r0, #64	; 0x40
    b518:	e121f000 	msr	CPSR_c, r0
    b51c:	ef000019 	svc	0x00000019
    b520:	e12fff1e 	bx	lr

0000b524 <CPU_CntLeadZeros>:
    b524:	e16f0f10 	clz	r0, r0
    b528:	e12fff1e 	bx	lr

0000b52c <CPU_PMU_Dis>:
    b52c:	ee190f1c 	mrc	15, 0, r0, cr9, cr12, {0}
    b530:	e3c00004 	bic	r0, r0, #4
    b534:	ee090f1c 	mcr	15, 0, r0, cr9, cr12, {0}
    b538:	e12fff1e 	bx	lr

0000b53c <CPU_PMU_En>:
    b53c:	ee190f1c 	mrc	15, 0, r0, cr9, cr12, {0}
    b540:	e3800001 	orr	r0, r0, #1
    b544:	ee090f1c 	mcr	15, 0, r0, cr9, cr12, {0}
    b548:	e12fff1e 	bx	lr

0000b54c <CPU_PMU_Rst>:
    b54c:	ee190f1c 	mrc	15, 0, r0, cr9, cr12, {0}
    b550:	e3800006 	orr	r0, r0, #6
    b554:	ee090f1c 	mcr	15, 0, r0, cr9, cr12, {0}
    b558:	e12fff1e 	bx	lr

0000b55c <CPU_PMU_CtrDis>:
    b55c:	e3500002 	cmp	r0, #2
    b560:	812fff1e 	bxhi	lr
    b564:	e3a01001 	mov	r1, #1
    b568:	e1a00011 	lsl	r0, r1, r0
    b56c:	ee090f5c 	mcr	15, 0, r0, cr9, cr12, {2}
    b570:	e12fff1e 	bx	lr

0000b574 <CPU_PMU_CtrEn>:
    b574:	e3500002 	cmp	r0, #2
    b578:	812fff1e 	bxhi	lr
    b57c:	e3a01001 	mov	r1, #1
    b580:	e1a00011 	lsl	r0, r1, r0
    b584:	ee090f3c 	mcr	15, 0, r0, cr9, cr12, {1}
    b588:	e12fff1e 	bx	lr

0000b58c <CPU_PMU_CtrEventSet>:
    b58c:	e3500002 	cmp	r0, #2
    b590:	812fff1e 	bxhi	lr
    b594:	ee192fbc 	mrc	15, 0, r2, cr9, cr12, {5}
    b598:	e3c2201f 	bic	r2, r2, #31
    b59c:	e1822000 	orr	r2, r2, r0
    b5a0:	ee092fbc 	mcr	15, 0, r2, cr9, cr12, {5}
    b5a4:	ee192f3d 	mrc	15, 0, r2, cr9, cr13, {1}
    b5a8:	e3c220ff 	bic	r2, r2, #255	; 0xff
    b5ac:	e1822001 	orr	r2, r2, r1
    b5b0:	ee092f3d 	mcr	15, 0, r2, cr9, cr13, {1}
    b5b4:	e12fff1e 	bx	lr

0000b5b8 <CPU_PMU_CtrGet>:
    b5b8:	e3500002 	cmp	r0, #2
    b5bc:	812fff1e 	bxhi	lr
    b5c0:	ee191fbc 	mrc	15, 0, r1, cr9, cr12, {5}
    b5c4:	e3c1101f 	bic	r1, r1, #31
    b5c8:	e1811000 	orr	r1, r1, r0
    b5cc:	ee091fbc 	mcr	15, 0, r1, cr9, cr12, {5}
    b5d0:	ee190f5d 	mrc	15, 0, r0, cr9, cr13, {2}
    b5d4:	e12fff1e 	bx	lr

0000b5d8 <CPU_PMU_CtrRst>:
    b5d8:	e3500002 	cmp	r0, #2
    b5dc:	812fff1e 	bxhi	lr
    b5e0:	ee191fbc 	mrc	15, 0, r1, cr9, cr12, {5}
    b5e4:	e3c1101f 	bic	r1, r1, #31
    b5e8:	e1811000 	orr	r1, r1, r0
    b5ec:	ee091fbc 	mcr	15, 0, r1, cr9, cr12, {5}
    b5f0:	e3a00000 	mov	r0, #0
    b5f4:	ee090f5d 	mcr	15, 0, r0, cr9, cr13, {2}
    b5f8:	e12fff1e 	bx	lr

0000b5fc <CPU_PMU_CtrCycleDis>:
    b5fc:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
    b600:	ee090f5c 	mcr	15, 0, r0, cr9, cr12, {2}
    b604:	e12fff1e 	bx	lr

0000b608 <CPU_PMU_CtrCycleEn>:
    b608:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
    b60c:	ee090f3c 	mcr	15, 0, r0, cr9, cr12, {1}
    b610:	e12fff1e 	bx	lr

0000b614 <CPU_PMU_CtrCycleGet>:
    b614:	ee190f1d 	mrc	15, 0, r0, cr9, cr13, {0}
    b618:	e12fff1e 	bx	lr

0000b61c <CPU_PMU_CtrCycleRst>:
    b61c:	ee190f1c 	mrc	15, 0, r0, cr9, cr12, {0}
    b620:	e3800004 	orr	r0, r0, #4
    b624:	ee090f1c 	mcr	15, 0, r0, cr9, cr12, {0}
    b628:	e12fff1e 	bx	lr

0000b62c <CPU_MMU_En>:
    b62c:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    b630:	e3800001 	orr	r0, r0, #1
    b634:	f57ff04f 	dsb	sy
    b638:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    b63c:	f57ff06f 	isb	sy
    b640:	e12fff1e 	bx	lr

0000b644 <CPU_MMU_Dis>:
    b644:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    b648:	e3c00001 	bic	r0, r0, #1
    b64c:	f57ff04f 	dsb	sy
    b650:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    b654:	e12fff1e 	bx	lr

0000b658 <CPU_MMU_RegionEn>:
    b658:	e92d0030 	push	{r4, r5}
    b65c:	ee104f90 	mrc	15, 0, r4, cr0, cr0, {4}
    b660:	e1a04424 	lsr	r4, r4, #8
    b664:	e204400f 	and	r4, r4, #15
    b668:	e1500004 	cmp	r0, r4
    b66c:	5a000013 	bpl	b6c0 <CPU_MMU_RegionEnExitFail>
    b670:	e353001f 	cmp	r3, #31
    b674:	ba000011 	blt	b6c0 <CPU_MMU_RegionEnExitFail>
    b678:	ee060f12 	mcr	15, 0, r0, cr6, cr2, {0}
    b67c:	ee164f51 	mrc	15, 0, r4, cr6, cr1, {2}
    b680:	e2044001 	and	r4, r4, #1
    b684:	e3540000 	cmp	r4, #0
    b688:	1a00000c 	bne	b6c0 <CPU_MMU_RegionEnExitFail>
    b68c:	ee061f11 	mcr	15, 0, r1, cr6, cr1, {0}
    b690:	e59d4008 	ldr	r4, [sp, #8]
    b694:	ee064f91 	mcr	15, 0, r4, cr6, cr1, {4}
    b698:	e1a04402 	lsl	r4, r2, #8
    b69c:	e16f5f13 	clz	r5, r3
    b6a0:	e265501f 	rsb	r5, r5, #31
    b6a4:	e1a05085 	lsl	r5, r5, #1
    b6a8:	e1844005 	orr	r4, r4, r5
    b6ac:	e3844001 	orr	r4, r4, #1
    b6b0:	ee064f51 	mcr	15, 0, r4, cr6, cr1, {2}
    b6b4:	e3a00001 	mov	r0, #1
    b6b8:	e8bd0030 	pop	{r4, r5}
    b6bc:	e12fff1e 	bx	lr

0000b6c0 <CPU_MMU_RegionEnExitFail>:
    b6c0:	e3a00000 	mov	r0, #0
    b6c4:	e8bd0030 	pop	{r4, r5}
    b6c8:	e12fff1e 	bx	lr

0000b6cc <CPU_MMU_RegionDis>:
    b6cc:	ee101f90 	mrc	15, 0, r1, cr0, cr0, {4}
    b6d0:	e1a01421 	lsr	r1, r1, #8
    b6d4:	e201100f 	and	r1, r1, #15
    b6d8:	e1500001 	cmp	r0, r1
    b6dc:	5a000001 	bpl	b6e8 <CPU_MMU_RegionDisExit>
    b6e0:	e3a01000 	mov	r1, #0
    b6e4:	ee061f51 	mcr	15, 0, r1, cr6, cr1, {2}

0000b6e8 <CPU_MMU_RegionDisExit>:
    b6e8:	e12fff1e 	bx	lr

0000b6ec <CPU_CtxID_Set>:
    b6ec:	ee0d0f30 	mcr	15, 0, r0, cr13, cr0, {1}
    b6f0:	e12fff1e 	bx	lr

0000b6f4 <CPU_CtxID_Get>:
    b6f4:	ee1d0f30 	mrc	15, 0, r0, cr13, cr0, {1}
    b6f8:	e12fff1e 	bx	lr

0000b6fc <CPU_Init>:
    b6fc:	e12fff1e 	bx	lr

0000b700 <CPU_SW_Exception>:
    b700:	eafffffe 	b	b700 <CPU_SW_Exception>

0000b704 <CPU_CntLeadZeros08>:
    b704:	e92d4008 	push	{r3, lr}
    b708:	ebffff85 	bl	b524 <CPU_CntLeadZeros>
    b70c:	e2400018 	sub	r0, r0, #24
    b710:	e8bd8008 	pop	{r3, pc}

0000b714 <CPU_CntLeadZeros16>:
    b714:	e92d4008 	push	{r3, lr}
    b718:	ebffff81 	bl	b524 <CPU_CntLeadZeros>
    b71c:	e2400010 	sub	r0, r0, #16
    b720:	e8bd8008 	pop	{r3, pc}

0000b724 <CPU_CntLeadZeros32>:
    b724:	eaffff7e 	b	b524 <CPU_CntLeadZeros>

0000b728 <CPU_CntLeadZeros64>:
    b728:	e3e02000 	mvn	r2, #0
    b72c:	e3a03000 	mov	r3, #0
    b730:	e1530001 	cmp	r3, r1
    b734:	01520000 	cmpeq	r2, r0
    b738:	2a000011 	bcs	b784 <CPU_CntLeadZeros64+0x5c>
    b73c:	e3e02000 	mvn	r2, #0
    b740:	e30f3fff 	movw	r3, #65535	; 0xffff
    b744:	e1530001 	cmp	r3, r1
    b748:	01520000 	cmpeq	r2, r0
    b74c:	e3e02000 	mvn	r2, #0
    b750:	2a000025 	bcs	b7ec <CPU_CntLeadZeros64+0xc4>
    b754:	e3e034ff 	mvn	r3, #-16777216	; 0xff000000
    b758:	e1530001 	cmp	r3, r1
    b75c:	01520000 	cmpeq	r2, r0
    b760:	31a02c21 	lsrcc	r2, r1, #24
    b764:	e30d3c70 	movw	r3, #56432	; 0xdc70
    b768:	21a02821 	lsrcs	r2, r1, #16
    b76c:	33403000 	movtcc	r3, #0
    b770:	23403000 	movtcs	r3, #0
    b774:	37d30002 	ldrbcc	r0, [r3, r2]
    b778:	27d30002 	ldrbcs	r0, [r3, r2]
    b77c:	22800008 	addcs	r0, r0, #8
    b780:	e12fff1e 	bx	lr
    b784:	e30f2fff 	movw	r2, #65535	; 0xffff
    b788:	e3a03000 	mov	r3, #0
    b78c:	e1530001 	cmp	r3, r1
    b790:	01520000 	cmpeq	r2, r0
    b794:	2a00000b 	bcs	b7c8 <CPU_CntLeadZeros64+0xa0>
    b798:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    b79c:	e3a03000 	mov	r3, #0
    b7a0:	e1530001 	cmp	r3, r1
    b7a4:	01520000 	cmpeq	r2, r0
    b7a8:	2a00001c 	bcs	b820 <CPU_CntLeadZeros64+0xf8>
    b7ac:	e1a03c20 	lsr	r3, r0, #24
    b7b0:	e30d2c70 	movw	r2, #56432	; 0xdc70
    b7b4:	e1833401 	orr	r3, r3, r1, lsl #8
    b7b8:	e3402000 	movt	r2, #0
    b7bc:	e7d20003 	ldrb	r0, [r2, r3]
    b7c0:	e2800020 	add	r0, r0, #32
    b7c4:	e12fff1e 	bx	lr
    b7c8:	e3510000 	cmp	r1, #0
    b7cc:	035000ff 	cmpeq	r0, #255	; 0xff
    b7d0:	8a000019 	bhi	b83c <CPU_CntLeadZeros64+0x114>
    b7d4:	e30d3c70 	movw	r3, #56432	; 0xdc70
    b7d8:	e3403000 	movt	r3, #0
    b7dc:	e0830000 	add	r0, r3, r0
    b7e0:	e5d00000 	ldrb	r0, [r0]
    b7e4:	e2800038 	add	r0, r0, #56	; 0x38
    b7e8:	e12fff1e 	bx	lr
    b7ec:	e3a030ff 	mov	r3, #255	; 0xff
    b7f0:	e1530001 	cmp	r3, r1
    b7f4:	01520000 	cmpeq	r2, r0
    b7f8:	31a02421 	lsrcc	r2, r1, #8
    b7fc:	e30d3c70 	movw	r3, #56432	; 0xdc70
    b800:	33403000 	movtcc	r3, #0
    b804:	23403000 	movtcs	r3, #0
    b808:	21a02001 	movcs	r2, r1
    b80c:	37d30002 	ldrbcc	r0, [r3, r2]
    b810:	32800010 	addcc	r0, r0, #16
    b814:	27d30002 	ldrbcs	r0, [r3, r2]
    b818:	22800018 	addcs	r0, r0, #24
    b81c:	e12fff1e 	bx	lr
    b820:	e1a03820 	lsr	r3, r0, #16
    b824:	e30d2c70 	movw	r2, #56432	; 0xdc70
    b828:	e1833801 	orr	r3, r3, r1, lsl #16
    b82c:	e3402000 	movt	r2, #0
    b830:	e7d20003 	ldrb	r0, [r2, r3]
    b834:	e2800028 	add	r0, r0, #40	; 0x28
    b838:	e12fff1e 	bx	lr
    b83c:	e1a03420 	lsr	r3, r0, #8
    b840:	e30d2c70 	movw	r2, #56432	; 0xdc70
    b844:	e1833c01 	orr	r3, r3, r1, lsl #24
    b848:	e3402000 	movt	r2, #0
    b84c:	e7d20003 	ldrb	r0, [r2, r3]
    b850:	e2800030 	add	r0, r0, #48	; 0x30
    b854:	e12fff1e 	bx	lr

0000b858 <CPU_CntTrailZeros>:
    b858:	e3500000 	cmp	r0, #0
    b85c:	e92d4008 	push	{r3, lr}
    b860:	1a000001 	bne	b86c <CPU_CntTrailZeros+0x14>
    b864:	e3a00020 	mov	r0, #32
    b868:	e8bd8008 	pop	{r3, pc}
    b86c:	e2603000 	rsb	r3, r0, #0
    b870:	e0030000 	and	r0, r3, r0
    b874:	ebffff2a 	bl	b524 <CPU_CntLeadZeros>
    b878:	e260001f 	rsb	r0, r0, #31
    b87c:	e8bd8008 	pop	{r3, pc}

0000b880 <CPU_CntTrailZeros08>:
    b880:	e3500000 	cmp	r0, #0
    b884:	e92d4008 	push	{r3, lr}
    b888:	1a000001 	bne	b894 <CPU_CntTrailZeros08+0x14>
    b88c:	e3a00008 	mov	r0, #8
    b890:	e8bd8008 	pop	{r3, pc}
    b894:	e2603000 	rsb	r3, r0, #0
    b898:	e0000003 	and	r0, r0, r3
    b89c:	ebffff98 	bl	b704 <CPU_CntLeadZeros08>
    b8a0:	e2600007 	rsb	r0, r0, #7
    b8a4:	e8bd8008 	pop	{r3, pc}

0000b8a8 <CPU_CntTrailZeros16>:
    b8a8:	e3500000 	cmp	r0, #0
    b8ac:	e92d4008 	push	{r3, lr}
    b8b0:	1a000001 	bne	b8bc <CPU_CntTrailZeros16+0x14>
    b8b4:	e3a00010 	mov	r0, #16
    b8b8:	e8bd8008 	pop	{r3, pc}
    b8bc:	e2603000 	rsb	r3, r0, #0
    b8c0:	e0000003 	and	r0, r0, r3
    b8c4:	ebffff92 	bl	b714 <CPU_CntLeadZeros16>
    b8c8:	e260000f 	rsb	r0, r0, #15
    b8cc:	e8bd8008 	pop	{r3, pc}

0000b8d0 <CPU_CntTrailZeros32>:
    b8d0:	e3500000 	cmp	r0, #0
    b8d4:	e92d4008 	push	{r3, lr}
    b8d8:	1a000001 	bne	b8e4 <CPU_CntTrailZeros32+0x14>
    b8dc:	e3a00020 	mov	r0, #32
    b8e0:	e8bd8008 	pop	{r3, pc}
    b8e4:	e2603000 	rsb	r3, r0, #0
    b8e8:	e0030000 	and	r0, r3, r0
    b8ec:	ebffff0c 	bl	b524 <CPU_CntLeadZeros>
    b8f0:	e260001f 	rsb	r0, r0, #31
    b8f4:	e8bd8008 	pop	{r3, pc}

0000b8f8 <CPU_CntTrailZeros64>:
    b8f8:	e92d4008 	push	{r3, lr}
    b8fc:	e1903001 	orrs	r3, r0, r1
    b900:	1a000001 	bne	b90c <CPU_CntTrailZeros64+0x14>
    b904:	e3a00040 	mov	r0, #64	; 0x40
    b908:	e8bd8008 	pop	{r3, pc}
    b90c:	e2702000 	rsbs	r2, r0, #0
    b910:	e2e13000 	rsc	r3, r1, #0
    b914:	e0000002 	and	r0, r0, r2
    b918:	e0011003 	and	r1, r1, r3
    b91c:	ebffff81 	bl	b728 <CPU_CntLeadZeros64>
    b920:	e260003f 	rsb	r0, r0, #63	; 0x3f
    b924:	e8bd8008 	pop	{r3, pc}

0000b928 <enable_caches>:
    b928:	e12fff1e 	bx	lr

0000b92c <disable_caches>:
    b92c:	e92d4008 	push	{r3, lr}
    b930:	eb0002af 	bl	c3f4 <Xil_DCacheDisable>
    b934:	e8bd4008 	pop	{r3, lr}
    b938:	ea0002a4 	b	c3d0 <Xil_ICacheDisable>

0000b93c <init_uart>:
    b93c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    b940:	e3a00000 	mov	r0, #0
    b944:	e24dd044 	sub	sp, sp, #68	; 0x44
    b948:	eb000664 	bl	d2e0 <XUartPs_LookupConfig>
    b94c:	e1a01000 	mov	r1, r0
    b950:	e28d0004 	add	r0, sp, #4
    b954:	e5912004 	ldr	r2, [r1, #4]
    b958:	eb000617 	bl	d1bc <XUartPs_CfgInitialize>
    b95c:	e28d0004 	add	r0, sp, #4
    b960:	e3a01cc2 	mov	r1, #49664	; 0xc200
    b964:	e3401001 	movt	r1, #1
    b968:	eb0005a3 	bl	cffc <XUartPs_SetBaudRate>
    b96c:	e28dd044 	add	sp, sp, #68	; 0x44
    b970:	e8bd8000 	ldmfd	sp!, {pc}

0000b974 <init_platform>:
    b974:	eafffff0 	b	b93c <init_uart>

0000b978 <cleanup_platform>:
    b978:	eaffffeb 	b	b92c <disable_caches>

0000b97c <BSP_Init>:
    b97c:	e92d4008 	push	{r3, lr}
    b980:	eb00003d 	bl	ba7c <guest_CPU_IntDis>
    b984:	eb00003e 	bl	ba84 <guest_Xil_ICacheEnable>
    b988:	eb00003e 	bl	ba88 <guest_Xil_DCacheEnable>
    b98c:	e8bd4008 	pop	{r3, lr}
    b990:	eafffd7a 	b	af80 <CSP_IntInit>

0000b994 <BSP_CPU_ClkFreq>:
    b994:	e3040b40 	movw	r0, #19264	; 0x4b40
    b998:	e340004c 	movt	r0, #76	; 0x4c
    b99c:	e12fff1e 	bx	lr

0000b9a0 <OS_CSP_BSP_ExceptHandler>:
    b9a0:	e3500004 	cmp	r0, #4
    b9a4:	812fff1e 	bxhi	lr
    b9a8:	eafffffe 	b	b9a8 <OS_CSP_BSP_ExceptHandler+0x8>

0000b9ac <BSP_OS_SemCreate>:
    b9ac:	e92d4030 	push	{r4, r5, lr}
    b9b0:	e1a04000 	mov	r4, r0
    b9b4:	e24dd00c 	sub	sp, sp, #12
    b9b8:	e1a00001 	mov	r0, r1
    b9bc:	e1a05002 	mov	r5, r2
    b9c0:	ebfff29a 	bl	8430 <OSSemCreate>
    b9c4:	e2503000 	subs	r3, r0, #0
    b9c8:	01a00003 	moveq	r0, r3
    b9cc:	0a000004 	beq	b9e4 <BSP_OS_SemCreate+0x38>
    b9d0:	e5843000 	str	r3, [r4]
    b9d4:	e1a01005 	mov	r1, r5
    b9d8:	e28d2007 	add	r2, sp, #7
    b9dc:	ebffea3c 	bl	62d4 <OSEventNameSet>
    b9e0:	e3a00001 	mov	r0, #1
    b9e4:	e28dd00c 	add	sp, sp, #12
    b9e8:	e8bd8030 	pop	{r4, r5, pc}

0000b9ec <BSP_OS_SemWait>:
    b9ec:	e3a02ffa 	mov	r2, #1000	; 0x3e8
    b9f0:	e3043dd3 	movw	r3, #19923	; 0x4dd3
    b9f4:	e0010192 	mul	r1, r2, r1
    b9f8:	e3413062 	movt	r3, #4194	; 0x1062
    b9fc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    ba00:	e24dd00c 	sub	sp, sp, #12
    ba04:	e5900000 	ldr	r0, [r0]
    ba08:	e28d2007 	add	r2, sp, #7
    ba0c:	e081c193 	umull	ip, r1, r3, r1
    ba10:	e1a01321 	lsr	r1, r1, #6
    ba14:	ebfff2f9 	bl	8600 <OSSemPend>
    ba18:	e5dd0007 	ldrb	r0, [sp, #7]
    ba1c:	e2700001 	rsbs	r0, r0, #1
    ba20:	33a00000 	movcc	r0, #0
    ba24:	e28dd00c 	add	sp, sp, #12
    ba28:	e8bd8000 	ldmfd	sp!, {pc}

0000ba2c <BSP_OS_SemPost>:
    ba2c:	e92d4008 	push	{r3, lr}
    ba30:	e5900000 	ldr	r0, [r0]
    ba34:	ebfff374 	bl	880c <OSSemPost>
    ba38:	e2700001 	rsbs	r0, r0, #1
    ba3c:	33a00000 	movcc	r0, #0
    ba40:	e8bd8008 	pop	{r3, pc}

0000ba44 <BSP_OS_TimeDlyMs>:
    ba44:	e3042dd3 	movw	r2, #19923	; 0x4dd3
    ba48:	e3023710 	movw	r3, #10000	; 0x2710
    ba4c:	e3412062 	movt	r2, #4194	; 0x1062
    ba50:	e1500003 	cmp	r0, r3
    ba54:	31a03000 	movcc	r3, r0
    ba58:	e3a0cffa 	mov	ip, #1000	; 0x3e8
    ba5c:	e3a00000 	mov	r0, #0
    ba60:	e0821392 	umull	r1, r2, r2, r3
    ba64:	e1a01000 	mov	r1, r0
    ba68:	e1a02322 	lsr	r2, r2, #6
    ba6c:	e063329c 	mls	r3, ip, r2, r3
    ba70:	e6ef2072 	uxtb	r2, r2
    ba74:	e6ff3073 	uxth	r3, r3
    ba78:	eafff6c5 	b	9594 <OSTimeDlyHMSM>

0000ba7c <guest_CPU_IntDis>:
    ba7c:	ea000074 	b	bc54 <sys_irq_disable>

0000ba80 <guest_CPU_IntEn>:
    ba80:	ea00005a 	b	bbf0 <sys_irq_enable>

0000ba84 <guest_Xil_ICacheEnable>:
    ba84:	ea00006d 	b	bc40 <sys_icache_enable>

0000ba88 <guest_Xil_DCacheEnable>:
    ba88:	ea000067 	b	bc2c <sys_dcache_enable>

0000ba8c <guest_IRQ_Acknowledge>:
    ba8c:	e3a01000 	mov	r1, #0
    ba90:	e3a00005 	mov	r0, #5
    ba94:	e92d4008 	push	{r3, lr}
    ba98:	e1a02001 	mov	r2, r1
    ba9c:	eb000071 	bl	bc68 <sys_virq_ctrl>
    baa0:	e8bd8008 	pop	{r3, pc}

0000baa4 <guest_CSP_IntClr>:
    baa4:	e3a00006 	mov	r0, #6
    baa8:	e3a02000 	mov	r2, #0
    baac:	ea00006d 	b	bc68 <sys_virq_ctrl>

0000bab0 <guest_IRQ_Register>:
    bab0:	e1a01000 	mov	r1, r0
    bab4:	e3a00000 	mov	r0, #0
    bab8:	e1a02000 	mov	r2, r0
    babc:	ea000069 	b	bc68 <sys_virq_ctrl>

0000bac0 <guest_OS_Timer_Register>:
    bac0:	e1a01000 	mov	r1, r0
    bac4:	e3a00000 	mov	r0, #0
    bac8:	e1a02000 	mov	r2, r0
    bacc:	ea00006e 	b	bc8c <sys_vtimer_ctrl>

0000bad0 <guest_OS_Timer_Enable>:
    bad0:	e3a01000 	mov	r1, #0
    bad4:	e3a00002 	mov	r0, #2
    bad8:	e1a02001 	mov	r2, r1
    badc:	ea00006a 	b	bc8c <sys_vtimer_ctrl>

0000bae0 <guest_OS_Mbox_Post>:
    bae0:	ea000072 	b	bcb0 <sys_mbox_post>

0000bae4 <guest_OS_Mbox_Read>:
    bae4:	ea000079 	b	bcd0 <sys_mbox_read>

0000bae8 <_guest_os_start>:
    bae8:	e51fd000 	ldr	sp, [pc, #-0]	; baf0 <_guest_os_start+0x8>
    baec:	ea000005 	b	bb08 <_guest_os_start_pre>
    baf0:	000152b0 			; <UNDEFINED> instruction: 0x000152b0
    baf4:	0000e534 	andeq	lr, r0, r4, lsr r5
    baf8:	0000e534 	andeq	lr, r0, r4, lsr r5
    bafc:	0000e534 	andeq	lr, r0, r4, lsr r5
    bb00:	000112a8 	andeq	r1, r1, r8, lsr #5
    bb04:	000152b0 			; <UNDEFINED> instruction: 0x000152b0

0000bb08 <_guest_os_start_pre>:
    bb08:	e3a00000 	mov	r0, #0
    bb0c:	e51f1020 	ldr	r1, [pc, #-32]	; baf4 <_guest_os_start+0xc>
    bb10:	e51f2020 	ldr	r2, [pc, #-32]	; baf8 <_guest_os_start+0x10>
    bb14:	e1510002 	cmp	r1, r2
    bb18:	aa000001 	bge	bb24 <_guest_os_start_pre+0x1c>
    bb1c:	e4810004 	str	r0, [r1], #4
    bb20:	eafffffb 	b	bb14 <_guest_os_start_pre+0xc>
    bb24:	e51f1030 	ldr	r1, [pc, #-48]	; bafc <_guest_os_start+0x14>
    bb28:	e51f2030 	ldr	r2, [pc, #-48]	; bb00 <_guest_os_start+0x18>
    bb2c:	e1510002 	cmp	r1, r2
    bb30:	aa000001 	bge	bb3c <_guest_os_start_pre+0x34>
    bb34:	e4810004 	str	r0, [r1], #4
    bb38:	eafffffb 	b	bb2c <_guest_os_start_pre+0x24>
    bb3c:	e51fd040 	ldr	sp, [pc, #-64]	; bb04 <_guest_os_start+0x1c>
    bb40:	eb0006b9 	bl	d62c <__libc_init_array>
    bb44:	e3a00000 	mov	r0, #0
    bb48:	e3a01000 	mov	r1, #0
    bb4c:	eb00078d 	bl	d988 <main>
    bb50:	eb0006a6 	bl	d5f0 <__libc_fini_array>
    bb54:	eb000698 	bl	d5bc <exit>
    bb58:	eafffffe 	b	bb58 <_guest_os_start_pre+0x50>

0000bb5c <XTime_SetTime>:
    bb5c:	e92d4070 	push	{r4, r5, r6, lr}
    bb60:	e3a04f82 	mov	r4, #520	; 0x208
    bb64:	e34f48f0 	movt	r4, #63728	; 0xf8f0
    bb68:	e1a06000 	mov	r6, r0
    bb6c:	e1a05001 	mov	r5, r1
    bb70:	e3a01000 	mov	r1, #0
    bb74:	e1a00004 	mov	r0, r4
    bb78:	eb0002ab 	bl	c62c <Xil_Out32>
    bb7c:	e1a01006 	mov	r1, r6
    bb80:	e3a00c02 	mov	r0, #512	; 0x200
    bb84:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    bb88:	eb0002a7 	bl	c62c <Xil_Out32>
    bb8c:	e1a01005 	mov	r1, r5
    bb90:	e3a00f81 	mov	r0, #516	; 0x204
    bb94:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    bb98:	eb0002a3 	bl	c62c <Xil_Out32>
    bb9c:	e1a00004 	mov	r0, r4
    bba0:	e3a01001 	mov	r1, #1
    bba4:	e8bd4070 	pop	{r4, r5, r6, lr}
    bba8:	ea00029f 	b	c62c <Xil_Out32>

0000bbac <timeprint_low>:
    bbac:	e92d4008 	push	{r3, lr}
    bbb0:	e3a00c02 	mov	r0, #512	; 0x200
    bbb4:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    bbb8:	eb000292 	bl	c608 <Xil_In32>
    bbbc:	e1a01000 	mov	r1, r0
    bbc0:	e30d0e8c 	movw	r0, #56972	; 0xde8c
    bbc4:	e3400000 	movt	r0, #0
    bbc8:	e8bd4008 	pop	{r3, lr}
    bbcc:	ea000317 	b	c830 <xil_printf>

0000bbd0 <syscall>:
    bbd0:	e92d4000 	stmfd	sp!, {lr}
    bbd4:	ef000000 	svc	0x00000000
    bbd8:	e8bd8000 	ldmfd	sp!, {pc}

0000bbdc <sys_yield>:
    bbdc:	e3a01000 	mov	r1, #0
    bbe0:	e3a00001 	mov	r0, #1
    bbe4:	e1a02001 	mov	r2, r1
    bbe8:	e1a03001 	mov	r3, r1
    bbec:	eafffff7 	b	bbd0 <syscall>

0000bbf0 <sys_irq_enable>:
    bbf0:	e3a01000 	mov	r1, #0
    bbf4:	e3a00002 	mov	r0, #2
    bbf8:	e1a02001 	mov	r2, r1
    bbfc:	e1a03001 	mov	r3, r1
    bc00:	eafffff2 	b	bbd0 <syscall>

0000bc04 <sys_dcache_disable>:
    bc04:	e3a01000 	mov	r1, #0
    bc08:	e3a00003 	mov	r0, #3
    bc0c:	e1a02001 	mov	r2, r1
    bc10:	e1a03001 	mov	r3, r1
    bc14:	eaffffed 	b	bbd0 <syscall>

0000bc18 <sys_icache_disable>:
    bc18:	e3a01000 	mov	r1, #0
    bc1c:	e3a00004 	mov	r0, #4
    bc20:	e1a02001 	mov	r2, r1
    bc24:	e1a03001 	mov	r3, r1
    bc28:	eaffffe8 	b	bbd0 <syscall>

0000bc2c <sys_dcache_enable>:
    bc2c:	e3a01000 	mov	r1, #0
    bc30:	e3a00005 	mov	r0, #5
    bc34:	e1a02001 	mov	r2, r1
    bc38:	e1a03001 	mov	r3, r1
    bc3c:	eaffffe3 	b	bbd0 <syscall>

0000bc40 <sys_icache_enable>:
    bc40:	e3a01000 	mov	r1, #0
    bc44:	e3a00006 	mov	r0, #6
    bc48:	e1a02001 	mov	r2, r1
    bc4c:	e1a03001 	mov	r3, r1
    bc50:	eaffffde 	b	bbd0 <syscall>

0000bc54 <sys_irq_disable>:
    bc54:	e3a01000 	mov	r1, #0
    bc58:	e3a00007 	mov	r0, #7
    bc5c:	e1a02001 	mov	r2, r1
    bc60:	e1a03001 	mov	r3, r1
    bc64:	eaffffd9 	b	bbd0 <syscall>

0000bc68 <sys_virq_ctrl>:
    bc68:	e1a0c001 	mov	ip, r1
    bc6c:	e1a03002 	mov	r3, r2
    bc70:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    bc74:	e1a04000 	mov	r4, r0
    bc78:	e1a01004 	mov	r1, r4
    bc7c:	e3a00008 	mov	r0, #8
    bc80:	e1a0200c 	mov	r2, ip
    bc84:	e8bd0010 	ldmfd	sp!, {r4}
    bc88:	eaffffd0 	b	bbd0 <syscall>

0000bc8c <sys_vtimer_ctrl>:
    bc8c:	e1a0c001 	mov	ip, r1
    bc90:	e1a03002 	mov	r3, r2
    bc94:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    bc98:	e1a04000 	mov	r4, r0
    bc9c:	e1a01004 	mov	r1, r4
    bca0:	e3a0000b 	mov	r0, #11
    bca4:	e1a0200c 	mov	r2, ip
    bca8:	e8bd0010 	ldmfd	sp!, {r4}
    bcac:	eaffffc7 	b	bbd0 <syscall>

0000bcb0 <sys_mbox_post>:
    bcb0:	e92d4008 	push	{r3, lr}
    bcb4:	e1a03000 	mov	r3, r0
    bcb8:	e1a02001 	mov	r2, r1
    bcbc:	e3a0000d 	mov	r0, #13
    bcc0:	e1a01003 	mov	r1, r3
    bcc4:	e3a03000 	mov	r3, #0
    bcc8:	ebffffc0 	bl	bbd0 <syscall>
    bccc:	e8bd8008 	pop	{r3, pc}

0000bcd0 <sys_mbox_read>:
    bcd0:	e92d4008 	push	{r3, lr}
    bcd4:	e1a03000 	mov	r3, r0
    bcd8:	e1a02001 	mov	r2, r1
    bcdc:	e3a0000e 	mov	r0, #14
    bce0:	e1a01003 	mov	r1, r3
    bce4:	e3a03000 	mov	r3, #0
    bce8:	ebffffb8 	bl	bbd0 <syscall>
    bcec:	e8bd8008 	pop	{r3, pc}

0000bcf0 <sys_void>:
    bcf0:	e92d4008 	push	{r3, lr}
    bcf4:	e3a00000 	mov	r0, #0
    bcf8:	e3a01000 	mov	r1, #0
    bcfc:	ebffff96 	bl	bb5c <XTime_SetTime>
    bd00:	e3a01000 	mov	r1, #0
    bd04:	e3a00063 	mov	r0, #99	; 0x63
    bd08:	e1a02001 	mov	r2, r1
    bd0c:	e1a03001 	mov	r3, r1
    bd10:	ebffffae 	bl	bbd0 <syscall>
    bd14:	ebffffa4 	bl	bbac <timeprint_low>
    bd18:	e30d0e90 	movw	r0, #56976	; 0xde90
    bd1c:	e3400000 	movt	r0, #0
    bd20:	e8bd4008 	pop	{r3, lr}
    bd24:	ea000065 	b	bec0 <print>

0000bd28 <AppPrint>:
    bd28:	e92d4030 	push	{r4, r5, lr}
    bd2c:	e30142a0 	movw	r4, #4768	; 0x12a0
    bd30:	e3404001 	movt	r4, #1
    bd34:	e24dd00c 	sub	sp, sp, #12
    bd38:	e1a05000 	mov	r5, r0
    bd3c:	e3a01000 	mov	r1, #0
    bd40:	e28d2007 	add	r2, sp, #7
    bd44:	e5940000 	ldr	r0, [r4]
    bd48:	ebfff073 	bl	7f1c <OSMutexPend>
    bd4c:	e1a00005 	mov	r0, r5
    bd50:	eb00005a 	bl	bec0 <print>
    bd54:	e5940000 	ldr	r0, [r4]
    bd58:	ebfff12e 	bl	8218 <OSMutexPost>
    bd5c:	e28dd00c 	add	sp, sp, #12
    bd60:	e8bd8030 	pop	{r4, r5, pc}

0000bd64 <AppTaskStart>:
    bd64:	e92d4080 	push	{r7, lr}
    bd68:	e30d0eac 	movw	r0, #57004	; 0xdeac
    bd6c:	e24dd020 	sub	sp, sp, #32
    bd70:	e3400000 	movt	r0, #0
    bd74:	eb000051 	bl	bec0 <print>
    bd78:	e30e4d50 	movw	r4, #60752	; 0xed50
    bd7c:	ebfff7f7 	bl	9d60 <guest_OS_CSP_TickInit>
    bd80:	e3404000 	movt	r4, #0
    bd84:	ebfff8a5 	bl	a020 <Mem_Init>
    bd88:	e3a06000 	mov	r6, #0
    bd8c:	ebfff88b 	bl	9fc0 <Math_Init>
    bd90:	e28d101f 	add	r1, sp, #31
    bd94:	e3a00014 	mov	r0, #20
    bd98:	e3a05003 	mov	r5, #3
    bd9c:	ebffefad 	bl	7c58 <OSMutexCreate>
    bda0:	e301c2a0 	movw	ip, #4768	; 0x12a0
    bda4:	e340c001 	movt	ip, #1
    bda8:	e3a0e002 	mov	lr, #2
    bdac:	e2842e7f 	add	r2, r4, #2032	; 0x7f0
    bdb0:	e3a07c02 	mov	r7, #512	; 0x200
    bdb4:	e1a01006 	mov	r1, r6
    bdb8:	e282200c 	add	r2, r2, #12
    bdbc:	e1a0300e 	mov	r3, lr
    bdc0:	e98d0090 	stmib	sp, {r4, r7}
    bdc4:	e58de000 	str	lr, [sp]
    bdc8:	e58d600c 	str	r6, [sp, #12]
    bdcc:	e58d5010 	str	r5, [sp, #16]
    bdd0:	e58c0000 	str	r0, [ip]
    bdd4:	e30b0e6c 	movw	r0, #48748	; 0xbe6c
    bdd8:	e3400000 	movt	r0, #0
    bddc:	ebfff38f 	bl	8c20 <OSTaskCreateExt>
    bde0:	e2842eff 	add	r2, r4, #4080	; 0xff0
    bde4:	e30b0e38 	movw	r0, #48696	; 0xbe38
    bde8:	e2844b02 	add	r4, r4, #2048	; 0x800
    bdec:	e58d5000 	str	r5, [sp]
    bdf0:	e3400000 	movt	r0, #0
    bdf4:	e58d4004 	str	r4, [sp, #4]
    bdf8:	e1a01006 	mov	r1, r6
    bdfc:	e58d7008 	str	r7, [sp, #8]
    be00:	e282200c 	add	r2, r2, #12
    be04:	e58d600c 	str	r6, [sp, #12]
    be08:	e1a03005 	mov	r3, r5
    be0c:	e58d5010 	str	r5, [sp, #16]
    be10:	ebfff382 	bl	8c20 <OSTaskCreateExt>
    be14:	e3a00000 	mov	r0, #0
    be18:	e3a03064 	mov	r3, #100	; 0x64
    be1c:	e1a01000 	mov	r1, r0
    be20:	e1a02000 	mov	r2, r0
    be24:	ebfff5da 	bl	9594 <OSTimeDlyHMSM>
    be28:	e30d0ec4 	movw	r0, #57028	; 0xdec4
    be2c:	e3400000 	movt	r0, #0
    be30:	ebffffbc 	bl	bd28 <AppPrint>
    be34:	eafffff6 	b	be14 <AppTaskStart+0xb0>

0000be38 <AppTask2>:
    be38:	e30d0ec8 	movw	r0, #57032	; 0xdec8
    be3c:	e3400000 	movt	r0, #0
    be40:	e92d4008 	push	{r3, lr}
    be44:	ebffffb7 	bl	bd28 <AppPrint>
    be48:	e3a00000 	mov	r0, #0
    be4c:	e3a02002 	mov	r2, #2
    be50:	e1a01000 	mov	r1, r0
    be54:	e3a03faf 	mov	r3, #700	; 0x2bc
    be58:	ebfff5cd 	bl	9594 <OSTimeDlyHMSM>
    be5c:	e30d0edc 	movw	r0, #57052	; 0xdedc
    be60:	e3400000 	movt	r0, #0
    be64:	ebffffaf 	bl	bd28 <AppPrint>
    be68:	eafffff6 	b	be48 <AppTask2+0x10>

0000be6c <AppTask1>:
    be6c:	e30d0ee0 	movw	r0, #57056	; 0xdee0
    be70:	e3400000 	movt	r0, #0
    be74:	e92d4008 	push	{r3, lr}
    be78:	ebffffaa 	bl	bd28 <AppPrint>
    be7c:	e3a00000 	mov	r0, #0
    be80:	e3a02001 	mov	r2, #1
    be84:	e1a01000 	mov	r1, r0
    be88:	e3a03f4b 	mov	r3, #300	; 0x12c
    be8c:	ebfff5c0 	bl	9594 <OSTimeDlyHMSM>
    be90:	e30d0ef4 	movw	r0, #57076	; 0xdef4
    be94:	e3400000 	movt	r0, #0
    be98:	ebffffa2 	bl	bd28 <AppPrint>
    be9c:	eafffff6 	b	be7c <AppTask1+0x10>

0000bea0 <App_TaskCreateHook>:
    bea0:	e12fff1e 	bx	lr

0000bea4 <App_TaskDelHook>:
    bea4:	e12fff1e 	bx	lr

0000bea8 <App_TaskIdleHook>:
    bea8:	e12fff1e 	bx	lr

0000beac <App_TaskReturnHook>:
    beac:	e12fff1e 	bx	lr

0000beb0 <App_TaskStatHook>:
    beb0:	e12fff1e 	bx	lr

0000beb4 <App_TaskSwHook>:
    beb4:	e12fff1e 	bx	lr

0000beb8 <App_TCBInitHook>:
    beb8:	e12fff1e 	bx	lr

0000bebc <App_TimeTickHook>:
    bebc:	e12fff1e 	bx	lr

0000bec0 <print>:
    bec0:	e92d4010 	push	{r4, lr}
    bec4:	e1a04000 	mov	r4, r0
    bec8:	e5d00000 	ldrb	r0, [r0]
    becc:	e3500000 	cmp	r0, #0
    bed0:	08bd8010 	popeq	{r4, pc}
    bed4:	eb000508 	bl	d2fc <outbyte>
    bed8:	e5f40001 	ldrb	r0, [r4, #1]!
    bedc:	e3500000 	cmp	r0, #0
    bee0:	1afffffb 	bne	bed4 <print+0x14>
    bee4:	e8bd8010 	pop	{r4, pc}

0000bee8 <Xil_DCacheInvalidateRange>:
    bee8:	e3510000 	cmp	r1, #0
    beec:	e92d4008 	push	{r3, lr}
    bef0:	0a00000c 	beq	bf28 <Xil_DCacheInvalidateRange+0x40>
    bef4:	e0813000 	add	r3, r1, r0
    bef8:	e3a02000 	mov	r2, #0
    befc:	e3c0001f 	bic	r0, r0, #31
    bf00:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
    bf04:	e1530000 	cmp	r3, r0
    bf08:	9a000006 	bls	bf28 <Xil_DCacheInvalidateRange+0x40>
    bf0c:	e3a02a02 	mov	r2, #8192	; 0x2000
    bf10:	e34f28f0 	movt	r2, #63728	; 0xf8f0
    bf14:	ee070f36 	mcr	15, 0, r0, cr7, cr6, {1}
    bf18:	e5820770 	str	r0, [r2, #1904]	; 0x770
    bf1c:	e2800020 	add	r0, r0, #32
    bf20:	e1530000 	cmp	r3, r0
    bf24:	8afffffa 	bhi	bf14 <Xil_DCacheInvalidateRange+0x2c>
    bf28:	f57ff04f 	dsb	sy
    bf2c:	e3020730 	movw	r0, #10032	; 0x2730
    bf30:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    bf34:	eb0001b3 	bl	c608 <Xil_In32>
    bf38:	e3500000 	cmp	r0, #0
    bf3c:	1afffffa 	bne	bf2c <Xil_DCacheInvalidateRange+0x44>
    bf40:	e8bd8008 	pop	{r3, pc}

0000bf44 <Xil_DCacheFlushRange>:
    bf44:	e3510000 	cmp	r1, #0
    bf48:	e92d4008 	push	{r3, lr}
    bf4c:	0a00000c 	beq	bf84 <Xil_DCacheFlushRange+0x40>
    bf50:	e0813000 	add	r3, r1, r0
    bf54:	e3a02000 	mov	r2, #0
    bf58:	e3c0001f 	bic	r0, r0, #31
    bf5c:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
    bf60:	e1530000 	cmp	r3, r0
    bf64:	9a000006 	bls	bf84 <Xil_DCacheFlushRange+0x40>
    bf68:	e3a02a02 	mov	r2, #8192	; 0x2000
    bf6c:	e34f28f0 	movt	r2, #63728	; 0xf8f0
    bf70:	ee070f3e 	mcr	15, 0, r0, cr7, cr14, {1}
    bf74:	e58207f0 	str	r0, [r2, #2032]	; 0x7f0
    bf78:	e2800020 	add	r0, r0, #32
    bf7c:	e1530000 	cmp	r3, r0
    bf80:	8afffffa 	bhi	bf70 <Xil_DCacheFlushRange+0x2c>
    bf84:	f57ff04f 	dsb	sy
    bf88:	e3020730 	movw	r0, #10032	; 0x2730
    bf8c:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    bf90:	eb00019c 	bl	c608 <Xil_In32>
    bf94:	e3500000 	cmp	r0, #0
    bf98:	1afffffa 	bne	bf88 <Xil_DCacheFlushRange+0x44>
    bf9c:	e8bd8008 	pop	{r3, pc}

0000bfa0 <Xil_ICacheInvalidateRange>:
    bfa0:	e3510000 	cmp	r1, #0
    bfa4:	e92d4008 	push	{r3, lr}
    bfa8:	0a00000c 	beq	bfe0 <Xil_ICacheInvalidateRange+0x40>
    bfac:	e0813000 	add	r3, r1, r0
    bfb0:	e3a02001 	mov	r2, #1
    bfb4:	e3c0001f 	bic	r0, r0, #31
    bfb8:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
    bfbc:	e1530000 	cmp	r3, r0
    bfc0:	9a000006 	bls	bfe0 <Xil_ICacheInvalidateRange+0x40>
    bfc4:	e3a02a02 	mov	r2, #8192	; 0x2000
    bfc8:	e34f28f0 	movt	r2, #63728	; 0xf8f0
    bfcc:	ee070f35 	mcr	15, 0, r0, cr7, cr5, {1}
    bfd0:	e5820770 	str	r0, [r2, #1904]	; 0x770
    bfd4:	e2800020 	add	r0, r0, #32
    bfd8:	e1530000 	cmp	r3, r0
    bfdc:	8afffffa 	bhi	bfcc <Xil_ICacheInvalidateRange+0x2c>
    bfe0:	f57ff04f 	dsb	sy
    bfe4:	e3020730 	movw	r0, #10032	; 0x2730
    bfe8:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    bfec:	eb000185 	bl	c608 <Xil_In32>
    bff0:	e3500000 	cmp	r0, #0
    bff4:	1afffffa 	bne	bfe4 <Xil_ICacheInvalidateRange+0x44>
    bff8:	e8bd8008 	pop	{r3, pc}

0000bffc <Xil_L1DCacheInvalidate>:
    bffc:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    c000:	e3a03000 	mov	r3, #0
    c004:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    c008:	f57ff06f 	isb	sy
    c00c:	ee304f10 	mrc	15, 1, r4, cr0, cr0, {0}
    c010:	e7e806d4 	ubfx	r0, r4, #13, #9
    c014:	e7e681d4 	ubfx	r8, r4, #3, #7
    c018:	e2800001 	add	r0, r0, #1
    c01c:	e2888001 	add	r8, r8, #1
    c020:	e3a05001 	mov	r5, #1
    c024:	e3a06000 	mov	r6, #0
    c028:	e1a01008 	mov	r1, r8
    c02c:	e1a00380 	lsl	r0, r0, #7
    c030:	eb0004dd 	bl	d3ac <__aeabi_uidiv>
    c034:	e2043007 	and	r3, r4, #7
    c038:	e2833004 	add	r3, r3, #4
    c03c:	e1a07006 	mov	r7, r6
    c040:	e1a05315 	lsl	r5, r5, r3
    c044:	e1a00330 	lsr	r0, r0, r3
    c048:	e2401001 	sub	r1, r0, #1
    c04c:	e0215195 	mla	r1, r5, r1, r5
    c050:	e3500000 	cmp	r0, #0
    c054:	e1a04f06 	lsl	r4, r6, #30
    c058:	11a02007 	movne	r2, r7
    c05c:	13a03000 	movne	r3, #0
    c060:	0a000006 	beq	c080 <Xil_L1DCacheInvalidate+0x84>
    c064:	e182c004 	orr	ip, r2, r4
    c068:	ee07cf56 	mcr	15, 0, ip, cr7, cr6, {2}
    c06c:	e2833001 	add	r3, r3, #1
    c070:	e0822005 	add	r2, r2, r5
    c074:	e1530000 	cmp	r3, r0
    c078:	1afffff9 	bne	c064 <Xil_L1DCacheInvalidate+0x68>
    c07c:	e0877001 	add	r7, r7, r1
    c080:	e2866001 	add	r6, r6, #1
    c084:	e1580006 	cmp	r8, r6
    c088:	8afffff0 	bhi	c050 <Xil_L1DCacheInvalidate+0x54>
    c08c:	f57ff04f 	dsb	sy
    c090:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0000c094 <Xil_L1DCacheEnable>:
    c094:	e92d4010 	push	{r4, lr}
    c098:	ee114f10 	mrc	15, 0, r4, cr1, cr0, {0}
    c09c:	e3140004 	tst	r4, #4
    c0a0:	18bd8010 	popne	{r4, pc}
    c0a4:	ebffffd4 	bl	bffc <Xil_L1DCacheInvalidate>
    c0a8:	e3844004 	orr	r4, r4, #4
    c0ac:	ee014f10 	mcr	15, 0, r4, cr1, cr0, {0}
    c0b0:	e8bd8010 	pop	{r4, pc}

0000c0b4 <Xil_L1DCacheInvalidateLine>:
    c0b4:	e3a03000 	mov	r3, #0
    c0b8:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    c0bc:	e3c0001f 	bic	r0, r0, #31
    c0c0:	ee070f36 	mcr	15, 0, r0, cr7, cr6, {1}
    c0c4:	f57ff04f 	dsb	sy
    c0c8:	e12fff1e 	bx	lr

0000c0cc <Xil_L1DCacheInvalidateRange>:
    c0cc:	e3510000 	cmp	r1, #0
    c0d0:	0a000009 	beq	c0fc <Xil_L1DCacheInvalidateRange+0x30>
    c0d4:	e0813000 	add	r3, r1, r0
    c0d8:	e3a02000 	mov	r2, #0
    c0dc:	e3c0001f 	bic	r0, r0, #31
    c0e0:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
    c0e4:	e1530000 	cmp	r3, r0
    c0e8:	9a000003 	bls	c0fc <Xil_L1DCacheInvalidateRange+0x30>
    c0ec:	ee070f36 	mcr	15, 0, r0, cr7, cr6, {1}
    c0f0:	e2800020 	add	r0, r0, #32
    c0f4:	e1530000 	cmp	r3, r0
    c0f8:	8afffffb 	bhi	c0ec <Xil_L1DCacheInvalidateRange+0x20>
    c0fc:	f57ff04f 	dsb	sy
    c100:	e12fff1e 	bx	lr

0000c104 <Xil_L1DCacheFlush>:
    c104:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    c108:	e3a03000 	mov	r3, #0
    c10c:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    c110:	f57ff06f 	isb	sy
    c114:	ee304f10 	mrc	15, 1, r4, cr0, cr0, {0}
    c118:	e7e806d4 	ubfx	r0, r4, #13, #9
    c11c:	e7e681d4 	ubfx	r8, r4, #3, #7
    c120:	e2800001 	add	r0, r0, #1
    c124:	e2888001 	add	r8, r8, #1
    c128:	e3a05001 	mov	r5, #1
    c12c:	e3a06000 	mov	r6, #0
    c130:	e1a01008 	mov	r1, r8
    c134:	e1a00380 	lsl	r0, r0, #7
    c138:	eb00049b 	bl	d3ac <__aeabi_uidiv>
    c13c:	e2043007 	and	r3, r4, #7
    c140:	e2833004 	add	r3, r3, #4
    c144:	e1a07006 	mov	r7, r6
    c148:	e1a05315 	lsl	r5, r5, r3
    c14c:	e1a00330 	lsr	r0, r0, r3
    c150:	e2401001 	sub	r1, r0, #1
    c154:	e0215195 	mla	r1, r5, r1, r5
    c158:	e3500000 	cmp	r0, #0
    c15c:	e1a04f06 	lsl	r4, r6, #30
    c160:	11a02007 	movne	r2, r7
    c164:	13a03000 	movne	r3, #0
    c168:	0a000006 	beq	c188 <Xil_L1DCacheFlush+0x84>
    c16c:	e182c004 	orr	ip, r2, r4
    c170:	ee07cf5e 	mcr	15, 0, ip, cr7, cr14, {2}
    c174:	e2833001 	add	r3, r3, #1
    c178:	e0822005 	add	r2, r2, r5
    c17c:	e1530000 	cmp	r3, r0
    c180:	1afffff9 	bne	c16c <Xil_L1DCacheFlush+0x68>
    c184:	e0877001 	add	r7, r7, r1
    c188:	e2866001 	add	r6, r6, #1
    c18c:	e1580006 	cmp	r8, r6
    c190:	8afffff0 	bhi	c158 <Xil_L1DCacheFlush+0x54>
    c194:	f57ff04f 	dsb	sy
    c198:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0000c19c <Xil_L1DCacheDisable>:
    c19c:	e92d4008 	push	{r3, lr}
    c1a0:	ebffffd7 	bl	c104 <Xil_L1DCacheFlush>
    c1a4:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
    c1a8:	e3c33004 	bic	r3, r3, #4
    c1ac:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
    c1b0:	e8bd8008 	pop	{r3, pc}

0000c1b4 <Xil_L1DCacheFlushLine>:
    c1b4:	e3a03000 	mov	r3, #0
    c1b8:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    c1bc:	e3c0001f 	bic	r0, r0, #31
    c1c0:	ee070f3e 	mcr	15, 0, r0, cr7, cr14, {1}
    c1c4:	f57ff04f 	dsb	sy
    c1c8:	e12fff1e 	bx	lr

0000c1cc <Xil_L1DCacheFlushRange>:
    c1cc:	e3510000 	cmp	r1, #0
    c1d0:	0a000009 	beq	c1fc <Xil_L1DCacheFlushRange+0x30>
    c1d4:	e0813000 	add	r3, r1, r0
    c1d8:	e3a02000 	mov	r2, #0
    c1dc:	e3c0001f 	bic	r0, r0, #31
    c1e0:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
    c1e4:	e1530000 	cmp	r3, r0
    c1e8:	9a000003 	bls	c1fc <Xil_L1DCacheFlushRange+0x30>
    c1ec:	ee070f3e 	mcr	15, 0, r0, cr7, cr14, {1}
    c1f0:	e2800020 	add	r0, r0, #32
    c1f4:	e1530000 	cmp	r3, r0
    c1f8:	8afffffb 	bhi	c1ec <Xil_L1DCacheFlushRange+0x20>
    c1fc:	f57ff04f 	dsb	sy
    c200:	e12fff1e 	bx	lr

0000c204 <Xil_L1DCacheStoreLine>:
    c204:	e3a03000 	mov	r3, #0
    c208:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    c20c:	e3c0001f 	bic	r0, r0, #31
    c210:	ee070f3a 	mcr	15, 0, r0, cr7, cr10, {1}
    c214:	f57ff04f 	dsb	sy
    c218:	e12fff1e 	bx	lr

0000c21c <Xil_L1ICacheEnable>:
    c21c:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
    c220:	e2132a01 	ands	r2, r3, #4096	; 0x1000
    c224:	112fff1e 	bxne	lr
    c228:	ee072f15 	mcr	15, 0, r2, cr7, cr5, {0}
    c22c:	e3833a01 	orr	r3, r3, #4096	; 0x1000
    c230:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
    c234:	e12fff1e 	bx	lr

0000c238 <Xil_L1ICacheDisable>:
    c238:	f57ff04f 	dsb	sy
    c23c:	e3a03000 	mov	r3, #0
    c240:	ee073f15 	mcr	15, 0, r3, cr7, cr5, {0}
    c244:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
    c248:	e3c33a01 	bic	r3, r3, #4096	; 0x1000
    c24c:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
    c250:	e12fff1e 	bx	lr

0000c254 <Xil_L1ICacheInvalidate>:
    c254:	e3a03001 	mov	r3, #1
    c258:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    c25c:	e3a03000 	mov	r3, #0
    c260:	ee073f15 	mcr	15, 0, r3, cr7, cr5, {0}
    c264:	f57ff04f 	dsb	sy
    c268:	e12fff1e 	bx	lr

0000c26c <Xil_L1ICacheInvalidateLine>:
    c26c:	e3a03001 	mov	r3, #1
    c270:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    c274:	e3c0001f 	bic	r0, r0, #31
    c278:	ee070f35 	mcr	15, 0, r0, cr7, cr5, {1}
    c27c:	f57ff04f 	dsb	sy
    c280:	e12fff1e 	bx	lr

0000c284 <Xil_L1ICacheInvalidateRange>:
    c284:	e3510000 	cmp	r1, #0
    c288:	0a000009 	beq	c2b4 <Xil_L1ICacheInvalidateRange+0x30>
    c28c:	e0813000 	add	r3, r1, r0
    c290:	e3a02001 	mov	r2, #1
    c294:	e3c0001f 	bic	r0, r0, #31
    c298:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
    c29c:	e1530000 	cmp	r3, r0
    c2a0:	9a000003 	bls	c2b4 <Xil_L1ICacheInvalidateRange+0x30>
    c2a4:	ee070f35 	mcr	15, 0, r0, cr7, cr5, {1}
    c2a8:	e2800020 	add	r0, r0, #32
    c2ac:	e1530000 	cmp	r3, r0
    c2b0:	8afffffb 	bhi	c2a4 <Xil_L1ICacheInvalidateRange+0x20>
    c2b4:	f57ff04f 	dsb	sy
    c2b8:	e12fff1e 	bx	lr

0000c2bc <Xil_L2CacheEnable>:
    c2bc:	e92d4008 	push	{r3, lr}
    c2c0:	e3a00c21 	mov	r0, #8448	; 0x2100
    c2c4:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    c2c8:	eb0000ce 	bl	c608 <Xil_In32>
    c2cc:	e3100001 	tst	r0, #1
    c2d0:	1a00001e 	bne	c350 <Xil_L2CacheEnable+0x94>
    c2d4:	e3020104 	movw	r0, #8452	; 0x2104
    c2d8:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    c2dc:	eb0000c9 	bl	c608 <Xil_In32>
    c2e0:	e3c0180e 	bic	r1, r0, #917504	; 0xe0000
    c2e4:	e3020104 	movw	r0, #8452	; 0x2104
    c2e8:	e3811207 	orr	r1, r1, #1879048192	; 0x70000000
    c2ec:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    c2f0:	e3811a21 	orr	r1, r1, #135168	; 0x21000
    c2f4:	eb0000cc 	bl	c62c <Xil_Out32>
    c2f8:	e3001121 	movw	r1, #289	; 0x121
    c2fc:	e3020108 	movw	r0, #8456	; 0x2108
    c300:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    c304:	eb0000c8 	bl	c62c <Xil_Out32>
    c308:	e3001121 	movw	r1, #289	; 0x121
    c30c:	e302010c 	movw	r0, #8460	; 0x210c
    c310:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    c314:	eb0000c4 	bl	c62c <Xil_Out32>
    c318:	e302021c 	movw	r0, #8732	; 0x221c
    c31c:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    c320:	eb0000b8 	bl	c608 <Xil_In32>
    c324:	e1a01000 	mov	r1, r0
    c328:	e3020220 	movw	r0, #8736	; 0x2220
    c32c:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    c330:	eb0000bd 	bl	c62c <Xil_Out32>
    c334:	e3a00c21 	mov	r0, #8448	; 0x2100
    c338:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    c33c:	eb0000b1 	bl	c608 <Xil_In32>
    c340:	e3801001 	orr	r1, r0, #1
    c344:	e3a00c21 	mov	r0, #8448	; 0x2100
    c348:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    c34c:	eb0000b6 	bl	c62c <Xil_Out32>
    c350:	f57ff04f 	dsb	sy
    c354:	e8bd8008 	pop	{r3, pc}

0000c358 <Xil_ICacheEnable>:
    c358:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
    c35c:	e2132a01 	ands	r2, r3, #4096	; 0x1000
    c360:	1a000002 	bne	c370 <Xil_ICacheEnable+0x18>
    c364:	ee072f15 	mcr	15, 0, r2, cr7, cr5, {0}
    c368:	e3833a01 	orr	r3, r3, #4096	; 0x1000
    c36c:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
    c370:	eaffffd1 	b	c2bc <Xil_L2CacheEnable>

0000c374 <Xil_DCacheEnable>:
    c374:	e92d4008 	push	{r3, lr}
    c378:	ebffff45 	bl	c094 <Xil_L1DCacheEnable>
    c37c:	e8bd4008 	pop	{r3, lr}
    c380:	eaffffcd 	b	c2bc <Xil_L2CacheEnable>

0000c384 <Xil_L2CacheDisable>:
    c384:	e30207fc 	movw	r0, #10236	; 0x27fc
    c388:	e30f1fff 	movw	r1, #65535	; 0xffff
    c38c:	e92d4008 	push	{r3, lr}
    c390:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    c394:	eb0000a4 	bl	c62c <Xil_Out32>
    c398:	e3020730 	movw	r0, #10032	; 0x2730
    c39c:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    c3a0:	eb000098 	bl	c608 <Xil_In32>
    c3a4:	e3500000 	cmp	r0, #0
    c3a8:	1afffffa 	bne	c398 <Xil_L2CacheDisable+0x14>
    c3ac:	f57ff04f 	dsb	sy
    c3b0:	e3a00c21 	mov	r0, #8448	; 0x2100
    c3b4:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    c3b8:	eb000092 	bl	c608 <Xil_In32>
    c3bc:	e3c01001 	bic	r1, r0, #1
    c3c0:	e3a00c21 	mov	r0, #8448	; 0x2100
    c3c4:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    c3c8:	e8bd4008 	pop	{r3, lr}
    c3cc:	ea000096 	b	c62c <Xil_Out32>

0000c3d0 <Xil_ICacheDisable>:
    c3d0:	e92d4008 	push	{r3, lr}
    c3d4:	ebffffea 	bl	c384 <Xil_L2CacheDisable>
    c3d8:	f57ff04f 	dsb	sy
    c3dc:	e3a03000 	mov	r3, #0
    c3e0:	ee073f15 	mcr	15, 0, r3, cr7, cr5, {0}
    c3e4:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
    c3e8:	e3c33a01 	bic	r3, r3, #4096	; 0x1000
    c3ec:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
    c3f0:	e8bd8008 	pop	{r3, pc}

0000c3f4 <Xil_DCacheDisable>:
    c3f4:	e92d4008 	push	{r3, lr}
    c3f8:	ebffffe1 	bl	c384 <Xil_L2CacheDisable>
    c3fc:	e8bd4008 	pop	{r3, lr}
    c400:	eaffff65 	b	c19c <Xil_L1DCacheDisable>

0000c404 <Xil_L2CacheInvalidate>:
    c404:	e302077c 	movw	r0, #10108	; 0x277c
    c408:	e30f1fff 	movw	r1, #65535	; 0xffff
    c40c:	e92d4008 	push	{r3, lr}
    c410:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    c414:	eb000084 	bl	c62c <Xil_Out32>
    c418:	e3020730 	movw	r0, #10032	; 0x2730
    c41c:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    c420:	eb000078 	bl	c608 <Xil_In32>
    c424:	e3500000 	cmp	r0, #0
    c428:	1afffffa 	bne	c418 <Xil_L2CacheInvalidate+0x14>
    c42c:	f57ff04f 	dsb	sy
    c430:	e8bd8008 	pop	{r3, pc}

0000c434 <Xil_ICacheInvalidate>:
    c434:	e3a03001 	mov	r3, #1
    c438:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    c43c:	e3a03000 	mov	r3, #0
    c440:	ee073f15 	mcr	15, 0, r3, cr7, cr5, {0}
    c444:	f57ff04f 	dsb	sy
    c448:	eaffffed 	b	c404 <Xil_L2CacheInvalidate>

0000c44c <Xil_DCacheInvalidate>:
    c44c:	e92d4008 	push	{r3, lr}
    c450:	ebfffee9 	bl	bffc <Xil_L1DCacheInvalidate>
    c454:	e8bd4008 	pop	{r3, lr}
    c458:	eaffffe9 	b	c404 <Xil_L2CacheInvalidate>

0000c45c <Xil_L2CacheInvalidateLine>:
    c45c:	e1a01000 	mov	r1, r0
    c460:	e3020770 	movw	r0, #10096	; 0x2770
    c464:	e92d4008 	push	{r3, lr}
    c468:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    c46c:	eb00006e 	bl	c62c <Xil_Out32>
    c470:	f57ff04f 	dsb	sy
    c474:	e8bd8008 	pop	{r3, pc}

0000c478 <Xil_ICacheInvalidateLine>:
    c478:	e3a03001 	mov	r3, #1
    c47c:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    c480:	e3c0301f 	bic	r3, r0, #31
    c484:	ee073f35 	mcr	15, 0, r3, cr7, cr5, {1}
    c488:	f57ff04f 	dsb	sy
    c48c:	eafffff2 	b	c45c <Xil_L2CacheInvalidateLine>

0000c490 <Xil_DCacheInvalidateLine>:
    c490:	e3a03000 	mov	r3, #0
    c494:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    c498:	e3c0301f 	bic	r3, r0, #31
    c49c:	ee073f36 	mcr	15, 0, r3, cr7, cr6, {1}
    c4a0:	f57ff04f 	dsb	sy
    c4a4:	eaffffec 	b	c45c <Xil_L2CacheInvalidateLine>

0000c4a8 <Xil_L2CacheInvalidateRange>:
    c4a8:	e3510000 	cmp	r1, #0
    c4ac:	e92d4008 	push	{r3, lr}
    c4b0:	0a000009 	beq	c4dc <Xil_L2CacheInvalidateRange+0x34>
    c4b4:	e0813000 	add	r3, r1, r0
    c4b8:	e3c0001f 	bic	r0, r0, #31
    c4bc:	e1530000 	cmp	r3, r0
    c4c0:	9a000005 	bls	c4dc <Xil_L2CacheInvalidateRange+0x34>
    c4c4:	e3a02a02 	mov	r2, #8192	; 0x2000
    c4c8:	e34f28f0 	movt	r2, #63728	; 0xf8f0
    c4cc:	e5820770 	str	r0, [r2, #1904]	; 0x770
    c4d0:	e2800020 	add	r0, r0, #32
    c4d4:	e1530000 	cmp	r3, r0
    c4d8:	8afffffb 	bhi	c4cc <Xil_L2CacheInvalidateRange+0x24>
    c4dc:	e3020730 	movw	r0, #10032	; 0x2730
    c4e0:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    c4e4:	eb000047 	bl	c608 <Xil_In32>
    c4e8:	e3500000 	cmp	r0, #0
    c4ec:	1afffffa 	bne	c4dc <Xil_L2CacheInvalidateRange+0x34>
    c4f0:	f57ff04f 	dsb	sy
    c4f4:	e8bd8008 	pop	{r3, pc}

0000c4f8 <Xil_L2CacheFlush>:
    c4f8:	e30207fc 	movw	r0, #10236	; 0x27fc
    c4fc:	e30f1fff 	movw	r1, #65535	; 0xffff
    c500:	e92d4008 	push	{r3, lr}
    c504:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    c508:	eb000047 	bl	c62c <Xil_Out32>
    c50c:	e3020730 	movw	r0, #10032	; 0x2730
    c510:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    c514:	eb00003b 	bl	c608 <Xil_In32>
    c518:	e3500000 	cmp	r0, #0
    c51c:	1afffffa 	bne	c50c <Xil_L2CacheFlush+0x14>
    c520:	f57ff04f 	dsb	sy
    c524:	e8bd8008 	pop	{r3, pc}

0000c528 <Xil_DCacheFlush>:
    c528:	e92d4008 	push	{r3, lr}
    c52c:	ebfffef4 	bl	c104 <Xil_L1DCacheFlush>
    c530:	e8bd4008 	pop	{r3, lr}
    c534:	eaffffef 	b	c4f8 <Xil_L2CacheFlush>

0000c538 <Xil_L2CacheFlushLine>:
    c538:	e1a01000 	mov	r1, r0
    c53c:	e30207f0 	movw	r0, #10224	; 0x27f0
    c540:	e92d4008 	push	{r3, lr}
    c544:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    c548:	eb000037 	bl	c62c <Xil_Out32>
    c54c:	f57ff04f 	dsb	sy
    c550:	e8bd8008 	pop	{r3, pc}

0000c554 <Xil_DCacheFlushLine>:
    c554:	e3a03000 	mov	r3, #0
    c558:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    c55c:	e3c0301f 	bic	r3, r0, #31
    c560:	ee073f3e 	mcr	15, 0, r3, cr7, cr14, {1}
    c564:	f57ff04f 	dsb	sy
    c568:	eafffff2 	b	c538 <Xil_L2CacheFlushLine>

0000c56c <Xil_L2CacheFlushRange>:
    c56c:	e3510000 	cmp	r1, #0
    c570:	e92d4008 	push	{r3, lr}
    c574:	0a000009 	beq	c5a0 <Xil_L2CacheFlushRange+0x34>
    c578:	e0813000 	add	r3, r1, r0
    c57c:	e3c0001f 	bic	r0, r0, #31
    c580:	e1530000 	cmp	r3, r0
    c584:	9a000005 	bls	c5a0 <Xil_L2CacheFlushRange+0x34>
    c588:	e3a02a02 	mov	r2, #8192	; 0x2000
    c58c:	e34f28f0 	movt	r2, #63728	; 0xf8f0
    c590:	e58207f0 	str	r0, [r2, #2032]	; 0x7f0
    c594:	e2800020 	add	r0, r0, #32
    c598:	e1530000 	cmp	r3, r0
    c59c:	8afffffb 	bhi	c590 <Xil_L2CacheFlushRange+0x24>
    c5a0:	e3020730 	movw	r0, #10032	; 0x2730
    c5a4:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    c5a8:	eb000016 	bl	c608 <Xil_In32>
    c5ac:	e3500000 	cmp	r0, #0
    c5b0:	1afffffa 	bne	c5a0 <Xil_L2CacheFlushRange+0x34>
    c5b4:	f57ff04f 	dsb	sy
    c5b8:	e8bd8008 	pop	{r3, pc}

0000c5bc <Xil_L2CacheStoreLine>:
    c5bc:	e1a01000 	mov	r1, r0
    c5c0:	e30207b0 	movw	r0, #10160	; 0x27b0
    c5c4:	e92d4008 	push	{r3, lr}
    c5c8:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    c5cc:	eb000016 	bl	c62c <Xil_Out32>
    c5d0:	f57ff04f 	dsb	sy
    c5d4:	e8bd8008 	pop	{r3, pc}

0000c5d8 <Xil_DCacheStoreLine>:
    c5d8:	e3a03000 	mov	r3, #0
    c5dc:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
    c5e0:	e3c0301f 	bic	r3, r0, #31
    c5e4:	ee073f3a 	mcr	15, 0, r3, cr7, cr10, {1}
    c5e8:	f57ff04f 	dsb	sy
    c5ec:	eafffff2 	b	c5bc <Xil_L2CacheStoreLine>

0000c5f0 <Xil_In8>:
    c5f0:	f57ff05f 	dmb	sy
    c5f4:	e5d00000 	ldrb	r0, [r0]
    c5f8:	e12fff1e 	bx	lr

0000c5fc <Xil_In16>:
    c5fc:	f57ff05f 	dmb	sy
    c600:	e1d000b0 	ldrh	r0, [r0]
    c604:	e12fff1e 	bx	lr

0000c608 <Xil_In32>:
    c608:	f57ff05f 	dmb	sy
    c60c:	e5900000 	ldr	r0, [r0]
    c610:	e12fff1e 	bx	lr

0000c614 <Xil_Out8>:
    c614:	e5c01000 	strb	r1, [r0]
    c618:	f57ff05f 	dmb	sy
    c61c:	e12fff1e 	bx	lr

0000c620 <Xil_Out16>:
    c620:	e1c010b0 	strh	r1, [r0]
    c624:	f57ff05f 	dmb	sy
    c628:	e12fff1e 	bx	lr

0000c62c <Xil_Out32>:
    c62c:	e5801000 	str	r1, [r0]
    c630:	f57ff05f 	dmb	sy
    c634:	e12fff1e 	bx	lr

0000c638 <Xil_In16BE>:
    c638:	f57ff05f 	dmb	sy
    c63c:	e1d030b0 	ldrh	r3, [r0]
    c640:	e1a02423 	lsr	r2, r3, #8
    c644:	e1820403 	orr	r0, r2, r3, lsl #8
    c648:	e6ff0070 	uxth	r0, r0
    c64c:	e12fff1e 	bx	lr

0000c650 <Xil_In32BE>:
    c650:	f57ff05f 	dmb	sy
    c654:	e5903000 	ldr	r3, [r0]
    c658:	e7e70453 	ubfx	r0, r3, #8, #8
    c65c:	e1a02823 	lsr	r2, r3, #16
    c660:	e6ff3073 	uxth	r3, r3
    c664:	e1a01422 	lsr	r1, r2, #8
    c668:	e1800403 	orr	r0, r0, r3, lsl #8
    c66c:	e1812402 	orr	r2, r1, r2, lsl #8
    c670:	e6ff2072 	uxth	r2, r2
    c674:	e1820800 	orr	r0, r2, r0, lsl #16
    c678:	e12fff1e 	bx	lr

0000c67c <Xil_Out16BE>:
    c67c:	e1a03421 	lsr	r3, r1, #8
    c680:	e1831401 	orr	r1, r3, r1, lsl #8
    c684:	e1c010b0 	strh	r1, [r0]
    c688:	f57ff05f 	dmb	sy
    c68c:	e12fff1e 	bx	lr

0000c690 <Xil_Out32BE>:
    c690:	e1a03821 	lsr	r3, r1, #16
    c694:	e7e72451 	ubfx	r2, r1, #8, #8
    c698:	e6ff1071 	uxth	r1, r1
    c69c:	e1a0c423 	lsr	ip, r3, #8
    c6a0:	e18c3403 	orr	r3, ip, r3, lsl #8
    c6a4:	e1821401 	orr	r1, r2, r1, lsl #8
    c6a8:	e6ff3073 	uxth	r3, r3
    c6ac:	e1831801 	orr	r1, r3, r1, lsl #16
    c6b0:	e5801000 	str	r1, [r0]
    c6b4:	f57ff05f 	dmb	sy
    c6b8:	e12fff1e 	bx	lr

0000c6bc <Xil_EndianSwap16>:
    c6bc:	e1a03420 	lsr	r3, r0, #8
    c6c0:	e1830400 	orr	r0, r3, r0, lsl #8
    c6c4:	e6ff0070 	uxth	r0, r0
    c6c8:	e12fff1e 	bx	lr

0000c6cc <Xil_EndianSwap32>:
    c6cc:	e1a03820 	lsr	r3, r0, #16
    c6d0:	e7e71450 	ubfx	r1, r0, #8, #8
    c6d4:	e6ff0070 	uxth	r0, r0
    c6d8:	e1a02423 	lsr	r2, r3, #8
    c6dc:	e1823403 	orr	r3, r2, r3, lsl #8
    c6e0:	e1810400 	orr	r0, r1, r0, lsl #8
    c6e4:	e6ff3073 	uxth	r3, r3
    c6e8:	e1830800 	orr	r0, r3, r0, lsl #16
    c6ec:	e12fff1e 	bx	lr

0000c6f0 <padding>:
    c6f0:	e92d4038 	push	{r3, r4, r5, lr}
    c6f4:	e1a05001 	mov	r5, r1
    c6f8:	e5913010 	ldr	r3, [r1, #16]
    c6fc:	e3530000 	cmp	r3, #0
    c700:	08bd8038 	popeq	{r3, r4, r5, pc}
    c704:	e3500000 	cmp	r0, #0
    c708:	08bd8038 	popeq	{r3, r4, r5, pc}
    c70c:	e5914000 	ldr	r4, [r1]
    c710:	e5913004 	ldr	r3, [r1, #4]
    c714:	e1540003 	cmp	r4, r3
    c718:	a8bd8038 	popge	{r3, r4, r5, pc}
    c71c:	e5d5000c 	ldrb	r0, [r5, #12]
    c720:	e2844001 	add	r4, r4, #1
    c724:	eb0002f4 	bl	d2fc <outbyte>
    c728:	e5953004 	ldr	r3, [r5, #4]
    c72c:	e1540003 	cmp	r4, r3
    c730:	bafffff9 	blt	c71c <padding+0x2c>
    c734:	e8bd8038 	pop	{r3, r4, r5, pc}

0000c738 <outnum>:
    c738:	e30ec0a8 	movw	ip, #57512	; 0xe0a8
    c73c:	e340c000 	movt	ip, #0
    c740:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    c744:	e1a05000 	mov	r5, r0
    c748:	e1a06001 	mov	r6, r1
    c74c:	e1a04fa0 	lsr	r4, r0, #31
    c750:	e1a07002 	mov	r7, r2
    c754:	e24dd038 	sub	sp, sp, #56	; 0x38
    c758:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
    c75c:	e356000a 	cmp	r6, #10
    c760:	13a04000 	movne	r4, #0
    c764:	02044001 	andeq	r4, r4, #1
    c768:	e28de004 	add	lr, sp, #4
    c76c:	e3540000 	cmp	r4, #0
    c770:	12655000 	rsbne	r5, r5, #0
    c774:	13a08001 	movne	r8, #1
    c778:	01a08004 	moveq	r8, r4
    c77c:	e59cc000 	ldr	ip, [ip]
    c780:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
    c784:	e28d3019 	add	r3, sp, #25
    c788:	e5cec000 	strb	ip, [lr]
    c78c:	e1a00005 	mov	r0, r5
    c790:	e1a01006 	mov	r1, r6
    c794:	e1a04003 	mov	r4, r3
    c798:	eb00037e 	bl	d598 <__aeabi_uidivmod>
    c79c:	e28d2038 	add	r2, sp, #56	; 0x38
    c7a0:	e1a00005 	mov	r0, r5
    c7a4:	e0823001 	add	r3, r2, r1
    c7a8:	e1a01006 	mov	r1, r6
    c7ac:	e5533034 	ldrb	r3, [r3, #-52]	; 0xffffffcc
    c7b0:	e5443001 	strb	r3, [r4, #-1]
    c7b4:	eb0002fc 	bl	d3ac <__aeabi_uidiv>
    c7b8:	e2843001 	add	r3, r4, #1
    c7bc:	e2505000 	subs	r5, r0, #0
    c7c0:	1afffff1 	bne	c78c <outnum+0x54>
    c7c4:	e3580000 	cmp	r8, #0
    c7c8:	e28d5018 	add	r5, sp, #24
    c7cc:	13a0202d 	movne	r2, #45	; 0x2d
    c7d0:	15c42000 	strbne	r2, [r4]
    c7d4:	11a04003 	movne	r4, r3
    c7d8:	e1a00005 	mov	r0, r5
    c7dc:	e1a06004 	mov	r6, r4
    c7e0:	e3a03000 	mov	r3, #0
    c7e4:	e4463001 	strb	r3, [r6], #-1
    c7e8:	eb0003ae 	bl	d6a8 <strlen>
    c7ec:	e5973014 	ldr	r3, [r7, #20]
    c7f0:	e1a01007 	mov	r1, r7
    c7f4:	e5870000 	str	r0, [r7]
    c7f8:	e2730001 	rsbs	r0, r3, #1
    c7fc:	33a00000 	movcc	r0, #0
    c800:	ebffffba 	bl	c6f0 <padding>
    c804:	e1550006 	cmp	r5, r6
    c808:	8a000003 	bhi	c81c <outnum+0xe4>
    c80c:	e5740001 	ldrb	r0, [r4, #-1]!
    c810:	eb0002b9 	bl	d2fc <outbyte>
    c814:	e1540005 	cmp	r4, r5
    c818:	1afffffb 	bne	c80c <outnum+0xd4>
    c81c:	e5970014 	ldr	r0, [r7, #20]
    c820:	e1a01007 	mov	r1, r7
    c824:	ebffffb1 	bl	c6f0 <padding>
    c828:	e28dd038 	add	sp, sp, #56	; 0x38
    c82c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0000c830 <xil_printf>:
    c830:	e92d000f 	push	{r0, r1, r2, r3}
    c834:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    c838:	e24dd024 	sub	sp, sp, #36	; 0x24
    c83c:	e28d304c 	add	r3, sp, #76	; 0x4c
    c840:	e59db048 	ldr	fp, [sp, #72]	; 0x48
    c844:	e58d3004 	str	r3, [sp, #4]
    c848:	e5db0000 	ldrb	r0, [fp]
    c84c:	e3500000 	cmp	r0, #0
    c850:	0a000096 	beq	cab0 <xil_printf+0x280>
    c854:	e30e60e8 	movw	r6, #57576	; 0xe0e8
    c858:	e3a05000 	mov	r5, #0
    c85c:	e3406000 	movt	r6, #0
    c860:	e3a08020 	mov	r8, #32
    c864:	e3077fff 	movw	r7, #32767	; 0x7fff
    c868:	ea000005 	b	c884 <xil_printf+0x54>
    c86c:	e1a0400b 	mov	r4, fp
    c870:	eb0002a1 	bl	d2fc <outbyte>
    c874:	e5d40001 	ldrb	r0, [r4, #1]
    c878:	e284b001 	add	fp, r4, #1
    c87c:	e3500000 	cmp	r0, #0
    c880:	0a00008a 	beq	cab0 <xil_printf+0x280>
    c884:	e3500025 	cmp	r0, #37	; 0x25
    c888:	1afffff7 	bne	c86c <xil_printf+0x3c>
    c88c:	e596c000 	ldr	ip, [r6]
    c890:	e3a0a000 	mov	sl, #0
    c894:	e5db0001 	ldrb	r0, [fp, #1]
    c898:	e1a0900a 	mov	r9, sl
    c89c:	e58d5018 	str	r5, [sp, #24]
    c8a0:	e08c3000 	add	r3, ip, r0
    c8a4:	e58d501c 	str	r5, [sp, #28]
    c8a8:	e5cd8014 	strb	r8, [sp, #20]
    c8ac:	e58d7010 	str	r7, [sp, #16]
    c8b0:	e5d32001 	ldrb	r2, [r3, #1]
    c8b4:	e28b4001 	add	r4, fp, #1
    c8b8:	e2021004 	and	r1, r2, #4
    c8bc:	e6ef1071 	uxtb	r1, r1
    c8c0:	e3510000 	cmp	r1, #0
    c8c4:	0a000012 	beq	c914 <xil_printf+0xe4>
    c8c8:	e35a0000 	cmp	sl, #0
    c8cc:	0a0000d5 	beq	cc28 <xil_printf+0x3f8>
    c8d0:	e28bb002 	add	fp, fp, #2
    c8d4:	e3a02000 	mov	r2, #0
    c8d8:	e2401030 	sub	r1, r0, #48	; 0x30
    c8dc:	e5db0000 	ldrb	r0, [fp]
    c8e0:	e0822102 	add	r2, r2, r2, lsl #2
    c8e4:	e1a0400b 	mov	r4, fp
    c8e8:	e08c3000 	add	r3, ip, r0
    c8ec:	e28bb001 	add	fp, fp, #1
    c8f0:	e0812082 	add	r2, r1, r2, lsl #1
    c8f4:	e5d31001 	ldrb	r1, [r3, #1]
    c8f8:	e2011004 	and	r1, r1, #4
    c8fc:	e6ef1071 	uxtb	r1, r1
    c900:	e3510000 	cmp	r1, #0
    c904:	1afffff3 	bne	c8d8 <xil_printf+0xa8>
    c908:	e58d2010 	str	r2, [sp, #16]
    c90c:	e244b001 	sub	fp, r4, #1
    c910:	eaffffe6 	b	c8b0 <xil_printf+0x80>
    c914:	e2022003 	and	r2, r2, #3
    c918:	e1a03000 	mov	r3, r0
    c91c:	e3520001 	cmp	r2, #1
    c920:	02803020 	addeq	r3, r0, #32
    c924:	e2433025 	sub	r3, r3, #37	; 0x25
    c928:	e3530053 	cmp	r3, #83	; 0x53
    c92c:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
    c930:	eaffffcf 	b	c874 <xil_printf+0x44>
    c934:	0000cc1c 	andeq	ip, r0, ip, lsl ip
    c938:	0000c874 	andeq	ip, r0, r4, ror r8
    c93c:	0000c874 	andeq	ip, r0, r4, ror r8
    c940:	0000c874 	andeq	ip, r0, r4, ror r8
    c944:	0000c874 	andeq	ip, r0, r4, ror r8
    c948:	0000c874 	andeq	ip, r0, r4, ror r8
    c94c:	0000c874 	andeq	ip, r0, r4, ror r8
    c950:	0000c874 	andeq	ip, r0, r4, ror r8
    c954:	0000cc04 	andeq	ip, r0, r4, lsl #24
    c958:	0000cbf0 	strdeq	ip, [r0], -r0
    c95c:	0000c874 	andeq	ip, r0, r4, ror r8
    c960:	0000c874 	andeq	ip, r0, r4, ror r8
    c964:	0000c874 	andeq	ip, r0, r4, ror r8
    c968:	0000c874 	andeq	ip, r0, r4, ror r8
    c96c:	0000c874 	andeq	ip, r0, r4, ror r8
    c970:	0000c874 	andeq	ip, r0, r4, ror r8
    c974:	0000c874 	andeq	ip, r0, r4, ror r8
    c978:	0000c874 	andeq	ip, r0, r4, ror r8
    c97c:	0000c874 	andeq	ip, r0, r4, ror r8
    c980:	0000c874 	andeq	ip, r0, r4, ror r8
    c984:	0000c874 	andeq	ip, r0, r4, ror r8
    c988:	0000c874 	andeq	ip, r0, r4, ror r8
    c98c:	0000c874 	andeq	ip, r0, r4, ror r8
    c990:	0000c874 	andeq	ip, r0, r4, ror r8
    c994:	0000c874 	andeq	ip, r0, r4, ror r8
    c998:	0000c874 	andeq	ip, r0, r4, ror r8
    c99c:	0000c874 	andeq	ip, r0, r4, ror r8
    c9a0:	0000c874 	andeq	ip, r0, r4, ror r8
    c9a4:	0000c874 	andeq	ip, r0, r4, ror r8
    c9a8:	0000c874 	andeq	ip, r0, r4, ror r8
    c9ac:	0000c874 	andeq	ip, r0, r4, ror r8
    c9b0:	0000c874 	andeq	ip, r0, r4, ror r8
    c9b4:	0000c874 	andeq	ip, r0, r4, ror r8
    c9b8:	0000c874 	andeq	ip, r0, r4, ror r8
    c9bc:	0000c874 	andeq	ip, r0, r4, ror r8
    c9c0:	0000c874 	andeq	ip, r0, r4, ror r8
    c9c4:	0000c874 	andeq	ip, r0, r4, ror r8
    c9c8:	0000c874 	andeq	ip, r0, r4, ror r8
    c9cc:	0000c874 	andeq	ip, r0, r4, ror r8
    c9d0:	0000c874 	andeq	ip, r0, r4, ror r8
    c9d4:	0000c874 	andeq	ip, r0, r4, ror r8
    c9d8:	0000c874 	andeq	ip, r0, r4, ror r8
    c9dc:	0000c874 	andeq	ip, r0, r4, ror r8
    c9e0:	0000c874 	andeq	ip, r0, r4, ror r8
    c9e4:	0000c874 	andeq	ip, r0, r4, ror r8
    c9e8:	0000c874 	andeq	ip, r0, r4, ror r8
    c9ec:	0000c874 	andeq	ip, r0, r4, ror r8
    c9f0:	0000c874 	andeq	ip, r0, r4, ror r8
    c9f4:	0000c874 	andeq	ip, r0, r4, ror r8
    c9f8:	0000c874 	andeq	ip, r0, r4, ror r8
    c9fc:	0000c874 	andeq	ip, r0, r4, ror r8
    ca00:	0000c874 	andeq	ip, r0, r4, ror r8
    ca04:	0000c874 	andeq	ip, r0, r4, ror r8
    ca08:	0000c874 	andeq	ip, r0, r4, ror r8
    ca0c:	0000c874 	andeq	ip, r0, r4, ror r8
    ca10:	0000cb98 	muleq	r0, r8, fp
    ca14:	0000c874 	andeq	ip, r0, r4, ror r8
    ca18:	0000c874 	andeq	ip, r0, r4, ror r8
    ca1c:	0000c874 	andeq	ip, r0, r4, ror r8
    ca20:	0000c874 	andeq	ip, r0, r4, ror r8
    ca24:	0000c874 	andeq	ip, r0, r4, ror r8
    ca28:	0000c874 	andeq	ip, r0, r4, ror r8
    ca2c:	0000cb80 	andeq	ip, r0, r0, lsl #23
    ca30:	0000cb64 	andeq	ip, r0, r4, ror #22
    ca34:	0000c874 	andeq	ip, r0, r4, ror r8
    ca38:	0000c874 	andeq	ip, r0, r4, ror r8
    ca3c:	0000c874 	andeq	ip, r0, r4, ror r8
    ca40:	0000c874 	andeq	ip, r0, r4, ror r8
    ca44:	0000c874 	andeq	ip, r0, r4, ror r8
    ca48:	0000c874 	andeq	ip, r0, r4, ror r8
    ca4c:	0000c874 	andeq	ip, r0, r4, ror r8
    ca50:	0000cb50 	andeq	ip, r0, r0, asr fp
    ca54:	0000c874 	andeq	ip, r0, r4, ror r8
    ca58:	0000c874 	andeq	ip, r0, r4, ror r8
    ca5c:	0000c874 	andeq	ip, r0, r4, ror r8
    ca60:	0000c874 	andeq	ip, r0, r4, ror r8
    ca64:	0000c874 	andeq	ip, r0, r4, ror r8
    ca68:	0000c874 	andeq	ip, r0, r4, ror r8
    ca6c:	0000cac0 	andeq	ip, r0, r0, asr #21
    ca70:	0000c874 	andeq	ip, r0, r4, ror r8
    ca74:	0000c874 	andeq	ip, r0, r4, ror r8
    ca78:	0000c874 	andeq	ip, r0, r4, ror r8
    ca7c:	0000c874 	andeq	ip, r0, r4, ror r8
    ca80:	0000ca84 	andeq	ip, r0, r4, lsl #21
    ca84:	e59d3004 	ldr	r3, [sp, #4]
    ca88:	e28d2008 	add	r2, sp, #8
    ca8c:	e3a01010 	mov	r1, #16
    ca90:	e2830004 	add	r0, r3, #4
    ca94:	e58d0004 	str	r0, [sp, #4]
    ca98:	e5930000 	ldr	r0, [r3]
    ca9c:	ebffff25 	bl	c738 <outnum>
    caa0:	e5d40001 	ldrb	r0, [r4, #1]
    caa4:	e284b001 	add	fp, r4, #1
    caa8:	e3500000 	cmp	r0, #0
    caac:	1affff74 	bne	c884 <xil_printf+0x54>
    cab0:	e28dd024 	add	sp, sp, #36	; 0x24
    cab4:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    cab8:	e28dd010 	add	sp, sp, #16
    cabc:	e12fff1e 	bx	lr
    cac0:	e59d3004 	ldr	r3, [sp, #4]
    cac4:	e2832004 	add	r2, r3, #4
    cac8:	e58d2004 	str	r2, [sp, #4]
    cacc:	e593a000 	ldr	sl, [r3]
    cad0:	e1a0000a 	mov	r0, sl
    cad4:	eb0002f3 	bl	d6a8 <strlen>
    cad8:	e28d1008 	add	r1, sp, #8
    cadc:	e58d0008 	str	r0, [sp, #8]
    cae0:	e59d001c 	ldr	r0, [sp, #28]
    cae4:	e2700001 	rsbs	r0, r0, #1
    cae8:	33a00000 	movcc	r0, #0
    caec:	ebfffeff 	bl	c6f0 <padding>
    caf0:	e5da3000 	ldrb	r3, [sl]
    caf4:	e3530000 	cmp	r3, #0
    caf8:	0a000010 	beq	cb40 <xil_printf+0x310>
    cafc:	e59d3010 	ldr	r3, [sp, #16]
    cb00:	e3530000 	cmp	r3, #0
    cb04:	e2433001 	sub	r3, r3, #1
    cb08:	e58d3010 	str	r3, [sp, #16]
    cb0c:	0a00000b 	beq	cb40 <xil_printf+0x310>
    cb10:	e24aa001 	sub	sl, sl, #1
    cb14:	ea000004 	b	cb2c <xil_printf+0x2fc>
    cb18:	e59d3010 	ldr	r3, [sp, #16]
    cb1c:	e3530000 	cmp	r3, #0
    cb20:	e2433001 	sub	r3, r3, #1
    cb24:	e58d3010 	str	r3, [sp, #16]
    cb28:	0a000004 	beq	cb40 <xil_printf+0x310>
    cb2c:	e5fa0001 	ldrb	r0, [sl, #1]!
    cb30:	eb0001f1 	bl	d2fc <outbyte>
    cb34:	e5da3001 	ldrb	r3, [sl, #1]
    cb38:	e3530000 	cmp	r3, #0
    cb3c:	1afffff5 	bne	cb18 <xil_printf+0x2e8>
    cb40:	e59d001c 	ldr	r0, [sp, #28]
    cb44:	e28d1008 	add	r1, sp, #8
    cb48:	ebfffee8 	bl	c6f0 <padding>
    cb4c:	eaffff48 	b	c874 <xil_printf+0x44>
    cb50:	e5db0002 	ldrb	r0, [fp, #2]
    cb54:	e3a09001 	mov	r9, #1
    cb58:	e1a0b004 	mov	fp, r4
    cb5c:	e08c3000 	add	r3, ip, r0
    cb60:	eaffff52 	b	c8b0 <xil_printf+0x80>
    cb64:	e59d3004 	ldr	r3, [sp, #4]
    cb68:	e3a0100a 	mov	r1, #10
    cb6c:	e28d2008 	add	r2, sp, #8
    cb70:	e2830004 	add	r0, r3, #4
    cb74:	e58d0004 	str	r0, [sp, #4]
    cb78:	e5930000 	ldr	r0, [r3]
    cb7c:	eaffffc6 	b	ca9c <xil_printf+0x26c>
    cb80:	e59d3004 	ldr	r3, [sp, #4]
    cb84:	e2832004 	add	r2, r3, #4
    cb88:	e58d2004 	str	r2, [sp, #4]
    cb8c:	e5d30000 	ldrb	r0, [r3]
    cb90:	eb0001d9 	bl	d2fc <outbyte>
    cb94:	eaffff36 	b	c874 <xil_printf+0x44>
    cb98:	e2403061 	sub	r3, r0, #97	; 0x61
    cb9c:	e3530011 	cmp	r3, #17
    cba0:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
    cba4:	ea000041 	b	ccb0 <xil_printf+0x480>
    cba8:	0000ccb8 			; <UNDEFINED> instruction: 0x0000ccb8
    cbac:	0000ccb0 			; <UNDEFINED> instruction: 0x0000ccb0
    cbb0:	0000ccb0 			; <UNDEFINED> instruction: 0x0000ccb0
    cbb4:	0000ccb0 			; <UNDEFINED> instruction: 0x0000ccb0
    cbb8:	0000ccb0 			; <UNDEFINED> instruction: 0x0000ccb0
    cbbc:	0000ccb0 			; <UNDEFINED> instruction: 0x0000ccb0
    cbc0:	0000ccb0 			; <UNDEFINED> instruction: 0x0000ccb0
    cbc4:	0000ccc4 	andeq	ip, r0, r4, asr #25
    cbc8:	0000ccb0 			; <UNDEFINED> instruction: 0x0000ccb0
    cbcc:	0000ccb0 			; <UNDEFINED> instruction: 0x0000ccb0
    cbd0:	0000ccb0 			; <UNDEFINED> instruction: 0x0000ccb0
    cbd4:	0000ccb0 			; <UNDEFINED> instruction: 0x0000ccb0
    cbd8:	0000ccb0 			; <UNDEFINED> instruction: 0x0000ccb0
    cbdc:	0000ccd0 	ldrdeq	ip, [r0], -r0
    cbe0:	0000ccb0 			; <UNDEFINED> instruction: 0x0000ccb0
    cbe4:	0000ccb0 			; <UNDEFINED> instruction: 0x0000ccb0
    cbe8:	0000ccb0 			; <UNDEFINED> instruction: 0x0000ccb0
    cbec:	0000cc94 	muleq	r0, r4, ip
    cbf0:	e5db0002 	ldrb	r0, [fp, #2]
    cbf4:	e3a0a001 	mov	sl, #1
    cbf8:	e1a0b004 	mov	fp, r4
    cbfc:	e08c3000 	add	r3, ip, r0
    cc00:	eaffff2a 	b	c8b0 <xil_printf+0x80>
    cc04:	e5db0002 	ldrb	r0, [fp, #2]
    cc08:	e3a03001 	mov	r3, #1
    cc0c:	e1a0b004 	mov	fp, r4
    cc10:	e58d301c 	str	r3, [sp, #28]
    cc14:	e08c3000 	add	r3, ip, r0
    cc18:	eaffff24 	b	c8b0 <xil_printf+0x80>
    cc1c:	e3a00025 	mov	r0, #37	; 0x25
    cc20:	eb0001b5 	bl	d2fc <outbyte>
    cc24:	eaffff12 	b	c874 <xil_printf+0x44>
    cc28:	e5db1001 	ldrb	r1, [fp, #1]
    cc2c:	e3500030 	cmp	r0, #48	; 0x30
    cc30:	05cd0014 	strbeq	r0, [sp, #20]
    cc34:	e08c2001 	add	r2, ip, r1
    cc38:	e5d22001 	ldrb	r2, [r2, #1]
    cc3c:	e2022004 	and	r2, r2, #4
    cc40:	e6ef2072 	uxtb	r2, r2
    cc44:	e3520000 	cmp	r2, #0
    cc48:	0a00000d 	beq	cc84 <xil_printf+0x454>
    cc4c:	e28bb002 	add	fp, fp, #2
    cc50:	e1a00001 	mov	r0, r1
    cc54:	e3a02000 	mov	r2, #0
    cc58:	e2401030 	sub	r1, r0, #48	; 0x30
    cc5c:	e1a0400b 	mov	r4, fp
    cc60:	e4db0001 	ldrb	r0, [fp], #1
    cc64:	e0822102 	add	r2, r2, r2, lsl #2
    cc68:	e08c3000 	add	r3, ip, r0
    cc6c:	e0812082 	add	r2, r1, r2, lsl #1
    cc70:	e5d31001 	ldrb	r1, [r3, #1]
    cc74:	e2011004 	and	r1, r1, #4
    cc78:	e6ef1071 	uxtb	r1, r1
    cc7c:	e3510000 	cmp	r1, #0
    cc80:	1afffff4 	bne	cc58 <xil_printf+0x428>
    cc84:	e58d200c 	str	r2, [sp, #12]
    cc88:	e3a02001 	mov	r2, #1
    cc8c:	e58d2018 	str	r2, [sp, #24]
    cc90:	eaffff1d 	b	c90c <xil_printf+0xdc>
    cc94:	e3a0000d 	mov	r0, #13
    cc98:	eb000197 	bl	d2fc <outbyte>
    cc9c:	e5db0003 	ldrb	r0, [fp, #3]
    cca0:	e28bb002 	add	fp, fp, #2
    cca4:	e596c000 	ldr	ip, [r6]
    cca8:	e08c3000 	add	r3, ip, r0
    ccac:	eafffeff 	b	c8b0 <xil_printf+0x80>
    ccb0:	eb000191 	bl	d2fc <outbyte>
    ccb4:	eafffff8 	b	cc9c <xil_printf+0x46c>
    ccb8:	e3a00007 	mov	r0, #7
    ccbc:	eb00018e 	bl	d2fc <outbyte>
    ccc0:	eafffff5 	b	cc9c <xil_printf+0x46c>
    ccc4:	e3a00008 	mov	r0, #8
    ccc8:	eb00018b 	bl	d2fc <outbyte>
    cccc:	eafffff2 	b	cc9c <xil_printf+0x46c>
    ccd0:	e3a0000d 	mov	r0, #13
    ccd4:	eb000188 	bl	d2fc <outbyte>
    ccd8:	e3a0000a 	mov	r0, #10
    ccdc:	eb000186 	bl	d2fc <outbyte>
    cce0:	eaffffed 	b	cc9c <xil_printf+0x46c>

0000cce4 <XUartPs_StubHandler>:
    cce4:	e92d4008 	push	{r3, lr}
    cce8:	e30e00bc 	movw	r0, #57532	; 0xe0bc
    ccec:	e3a01e2a 	mov	r1, #672	; 0x2a0
    ccf0:	e3400000 	movt	r0, #0
    ccf4:	eb000184 	bl	d30c <Xil_Assert>
    ccf8:	e30132a4 	movw	r3, #4772	; 0x12a4
    ccfc:	e3403001 	movt	r3, #1
    cd00:	e3a02001 	mov	r2, #1
    cd04:	e5832000 	str	r2, [r3]
    cd08:	e8bd8008 	pop	{r3, pc}

0000cd0c <XUartPs_SendBuffer>:
    cd0c:	e92d4038 	push	{r3, r4, r5, lr}
    cd10:	e1a04000 	mov	r4, r0
    cd14:	e3a05000 	mov	r5, #0
    cd18:	ea000007 	b	cd3c <XUartPs_SendBuffer+0x30>
    cd1c:	e1550003 	cmp	r5, r3
    cd20:	2a00000b 	bcs	cd54 <XUartPs_SendBuffer+0x48>
    cd24:	e594301c 	ldr	r3, [r4, #28]
    cd28:	e5940004 	ldr	r0, [r4, #4]
    cd2c:	e7d31005 	ldrb	r1, [r3, r5]
    cd30:	e2800030 	add	r0, r0, #48	; 0x30
    cd34:	ebfffe3c 	bl	c62c <Xil_Out32>
    cd38:	e2855001 	add	r5, r5, #1
    cd3c:	e5940004 	ldr	r0, [r4, #4]
    cd40:	e280002c 	add	r0, r0, #44	; 0x2c
    cd44:	ebfffe2f 	bl	c608 <Xil_In32>
    cd48:	e5943024 	ldr	r3, [r4, #36]	; 0x24
    cd4c:	e3100010 	tst	r0, #16
    cd50:	0afffff1 	beq	cd1c <XUartPs_SendBuffer+0x10>
    cd54:	e594201c 	ldr	r2, [r4, #28]
    cd58:	e0653003 	rsb	r3, r5, r3
    cd5c:	e5940004 	ldr	r0, [r4, #4]
    cd60:	e0822005 	add	r2, r2, r5
    cd64:	e5843024 	str	r3, [r4, #36]	; 0x24
    cd68:	e584201c 	str	r2, [r4, #28]
    cd6c:	e2800010 	add	r0, r0, #16
    cd70:	ebfffe24 	bl	c608 <Xil_In32>
    cd74:	e3100007 	tst	r0, #7
    cd78:	0a000003 	beq	cd8c <XUartPs_SendBuffer+0x80>
    cd7c:	e5943004 	ldr	r3, [r4, #4]
    cd80:	e3801008 	orr	r1, r0, #8
    cd84:	e2830008 	add	r0, r3, #8
    cd88:	ebfffe27 	bl	c62c <Xil_Out32>
    cd8c:	e1a00005 	mov	r0, r5
    cd90:	e8bd8038 	pop	{r3, r4, r5, pc}

0000cd94 <XUartPs_Send>:
    cd94:	e92d4070 	push	{r4, r5, r6, lr}
    cd98:	e2505000 	subs	r5, r0, #0
    cd9c:	e24dd008 	sub	sp, sp, #8
    cda0:	e1a06001 	mov	r6, r1
    cda4:	0a000020 	beq	ce2c <XUartPs_Send+0x98>
    cda8:	e30142a4 	movw	r4, #4772	; 0x12a4
    cdac:	e3510000 	cmp	r1, #0
    cdb0:	e3404001 	movt	r4, #1
    cdb4:	e3a03000 	mov	r3, #0
    cdb8:	e5843000 	str	r3, [r4]
    cdbc:	0a000023 	beq	ce50 <XUartPs_Send+0xbc>
    cdc0:	e5951014 	ldr	r1, [r5, #20]
    cdc4:	e3013111 	movw	r3, #4369	; 0x1111
    cdc8:	e3413111 	movt	r3, #4369	; 0x1111
    cdcc:	e1510003 	cmp	r1, r3
    cdd0:	0a000008 	beq	cdf8 <XUartPs_Send+0x64>
    cdd4:	e30e00bc 	movw	r0, #57532	; 0xe0bc
    cdd8:	e3001112 	movw	r1, #274	; 0x112
    cddc:	e3400000 	movt	r0, #0
    cde0:	eb000149 	bl	d30c <Xil_Assert>
    cde4:	e3a03001 	mov	r3, #1
    cde8:	e5843000 	str	r3, [r4]
    cdec:	e3a00000 	mov	r0, #0
    cdf0:	e28dd008 	add	sp, sp, #8
    cdf4:	e8bd8070 	pop	{r4, r5, r6, pc}
    cdf8:	e5950004 	ldr	r0, [r5, #4]
    cdfc:	e3a01018 	mov	r1, #24
    ce00:	e58d2004 	str	r2, [sp, #4]
    ce04:	e280000c 	add	r0, r0, #12
    ce08:	ebfffe07 	bl	c62c <Xil_Out32>
    ce0c:	e59d2004 	ldr	r2, [sp, #4]
    ce10:	e1a00005 	mov	r0, r5
    ce14:	e585601c 	str	r6, [r5, #28]
    ce18:	e5852020 	str	r2, [r5, #32]
    ce1c:	e5852024 	str	r2, [r5, #36]	; 0x24
    ce20:	e28dd008 	add	sp, sp, #8
    ce24:	e8bd4070 	pop	{r4, r5, r6, lr}
    ce28:	eaffffb7 	b	cd0c <XUartPs_SendBuffer>
    ce2c:	e30e00bc 	movw	r0, #57532	; 0xe0bc
    ce30:	e3a01e11 	mov	r1, #272	; 0x110
    ce34:	e3400000 	movt	r0, #0
    ce38:	eb000133 	bl	d30c <Xil_Assert>
    ce3c:	e30132a4 	movw	r3, #4772	; 0x12a4
    ce40:	e3403001 	movt	r3, #1
    ce44:	e3a02001 	mov	r2, #1
    ce48:	e5832000 	str	r2, [r3]
    ce4c:	eaffffe6 	b	cdec <XUartPs_Send+0x58>
    ce50:	e30e00bc 	movw	r0, #57532	; 0xe0bc
    ce54:	e3001111 	movw	r1, #273	; 0x111
    ce58:	e3400000 	movt	r0, #0
    ce5c:	eb00012a 	bl	d30c <Xil_Assert>
    ce60:	e3a03001 	mov	r3, #1
    ce64:	e5843000 	str	r3, [r4]
    ce68:	eaffffdf 	b	cdec <XUartPs_Send+0x58>

0000ce6c <XUartPs_ReceiveBuffer>:
    ce6c:	e92d4070 	push	{r4, r5, r6, lr}
    ce70:	e1a04000 	mov	r4, r0
    ce74:	e5900004 	ldr	r0, [r0, #4]
    ce78:	e280002c 	add	r0, r0, #44	; 0x2c
    ce7c:	ebfffde1 	bl	c608 <Xil_In32>
    ce80:	e5943030 	ldr	r3, [r4, #48]	; 0x30
    ce84:	e3530000 	cmp	r3, #0
    ce88:	0a000017 	beq	ceec <XUartPs_ReceiveBuffer+0x80>
    ce8c:	e2105002 	ands	r5, r0, #2
    ce90:	0a000002 	beq	cea0 <XUartPs_ReceiveBuffer+0x34>
    ce94:	ea000016 	b	cef4 <XUartPs_ReceiveBuffer+0x88>
    ce98:	e3100002 	tst	r0, #2
    ce9c:	1a00000b 	bne	ced0 <XUartPs_ReceiveBuffer+0x64>
    cea0:	e5940004 	ldr	r0, [r4, #4]
    cea4:	e5946028 	ldr	r6, [r4, #40]	; 0x28
    cea8:	e2800030 	add	r0, r0, #48	; 0x30
    ceac:	ebfffdd5 	bl	c608 <Xil_In32>
    ceb0:	e7c60005 	strb	r0, [r6, r5]
    ceb4:	e2855001 	add	r5, r5, #1
    ceb8:	e5940004 	ldr	r0, [r4, #4]
    cebc:	e280002c 	add	r0, r0, #44	; 0x2c
    cec0:	ebfffdd0 	bl	c608 <Xil_In32>
    cec4:	e5943030 	ldr	r3, [r4, #48]	; 0x30
    cec8:	e1530005 	cmp	r3, r5
    cecc:	8afffff1 	bhi	ce98 <XUartPs_ReceiveBuffer+0x2c>
    ced0:	e5942028 	ldr	r2, [r4, #40]	; 0x28
    ced4:	e0653003 	rsb	r3, r5, r3
    ced8:	e1a00005 	mov	r0, r5
    cedc:	e5843030 	str	r3, [r4, #48]	; 0x30
    cee0:	e0825005 	add	r5, r2, r5
    cee4:	e5845028 	str	r5, [r4, #40]	; 0x28
    cee8:	e8bd8070 	pop	{r4, r5, r6, pc}
    ceec:	e1a05003 	mov	r5, r3
    cef0:	eafffff6 	b	ced0 <XUartPs_ReceiveBuffer+0x64>
    cef4:	e3a05000 	mov	r5, #0
    cef8:	eafffff4 	b	ced0 <XUartPs_ReceiveBuffer+0x64>

0000cefc <XUartPs_Recv>:
    cefc:	e92d4070 	push	{r4, r5, r6, lr}
    cf00:	e2505000 	subs	r5, r0, #0
    cf04:	e24dd008 	sub	sp, sp, #8
    cf08:	e1a06001 	mov	r6, r1
    cf0c:	0a000029 	beq	cfb8 <XUartPs_Recv+0xbc>
    cf10:	e30142a4 	movw	r4, #4772	; 0x12a4
    cf14:	e3510000 	cmp	r1, #0
    cf18:	e3404001 	movt	r4, #1
    cf1c:	e3a0c000 	mov	ip, #0
    cf20:	e584c000 	str	ip, [r4]
    cf24:	0a00002d 	beq	cfe0 <XUartPs_Recv+0xe4>
    cf28:	e5951014 	ldr	r1, [r5, #20]
    cf2c:	e3013111 	movw	r3, #4369	; 0x1111
    cf30:	e3413111 	movt	r3, #4369	; 0x1111
    cf34:	e1510003 	cmp	r1, r3
    cf38:	0a000009 	beq	cf64 <XUartPs_Recv+0x68>
    cf3c:	e30e00bc 	movw	r0, #57532	; 0xe0bc
    cf40:	e3001155 	movw	r1, #341	; 0x155
    cf44:	e3400000 	movt	r0, #0
    cf48:	e1a0600c 	mov	r6, ip
    cf4c:	eb0000ee 	bl	d30c <Xil_Assert>
    cf50:	e3a03001 	mov	r3, #1
    cf54:	e5843000 	str	r3, [r4]
    cf58:	e1a00006 	mov	r0, r6
    cf5c:	e28dd008 	add	sp, sp, #8
    cf60:	e8bd8070 	pop	{r4, r5, r6, pc}
    cf64:	e5950004 	ldr	r0, [r5, #4]
    cf68:	e58d2004 	str	r2, [sp, #4]
    cf6c:	e2800010 	add	r0, r0, #16
    cf70:	ebfffda4 	bl	c608 <Xil_In32>
    cf74:	e3011fff 	movw	r1, #8191	; 0x1fff
    cf78:	e1a04000 	mov	r4, r0
    cf7c:	e5950004 	ldr	r0, [r5, #4]
    cf80:	e280000c 	add	r0, r0, #12
    cf84:	ebfffda8 	bl	c62c <Xil_Out32>
    cf88:	e59d2004 	ldr	r2, [sp, #4]
    cf8c:	e1a00005 	mov	r0, r5
    cf90:	e5856028 	str	r6, [r5, #40]	; 0x28
    cf94:	e585202c 	str	r2, [r5, #44]	; 0x2c
    cf98:	e5852030 	str	r2, [r5, #48]	; 0x30
    cf9c:	ebffffb2 	bl	ce6c <XUartPs_ReceiveBuffer>
    cfa0:	e1a01004 	mov	r1, r4
    cfa4:	e1a06000 	mov	r6, r0
    cfa8:	e5950004 	ldr	r0, [r5, #4]
    cfac:	e2800008 	add	r0, r0, #8
    cfb0:	ebfffd9d 	bl	c62c <Xil_Out32>
    cfb4:	eaffffe7 	b	cf58 <XUartPs_Recv+0x5c>
    cfb8:	e30e00bc 	movw	r0, #57532	; 0xe0bc
    cfbc:	e3001153 	movw	r1, #339	; 0x153
    cfc0:	e3400000 	movt	r0, #0
    cfc4:	e1a06005 	mov	r6, r5
    cfc8:	eb0000cf 	bl	d30c <Xil_Assert>
    cfcc:	e30132a4 	movw	r3, #4772	; 0x12a4
    cfd0:	e3403001 	movt	r3, #1
    cfd4:	e3a02001 	mov	r2, #1
    cfd8:	e5832000 	str	r2, [r3]
    cfdc:	eaffffdd 	b	cf58 <XUartPs_Recv+0x5c>
    cfe0:	e30e00bc 	movw	r0, #57532	; 0xe0bc
    cfe4:	e3a01f55 	mov	r1, #340	; 0x154
    cfe8:	e3400000 	movt	r0, #0
    cfec:	eb0000c6 	bl	d30c <Xil_Assert>
    cff0:	e3a03001 	mov	r3, #1
    cff4:	e5843000 	str	r3, [r4]
    cff8:	eaffffd6 	b	cf58 <XUartPs_Recv+0x5c>

0000cffc <XUartPs_SetBaudRate>:
    cffc:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    d000:	e250b000 	subs	fp, r0, #0
    d004:	e24dd00c 	sub	sp, sp, #12
    d008:	e1a05001 	mov	r5, r1
    d00c:	0a000060 	beq	d194 <XUartPs_SetBaudRate+0x198>
    d010:	e59b2014 	ldr	r2, [fp, #20]
    d014:	e3013111 	movw	r3, #4369	; 0x1111
    d018:	e3413111 	movt	r3, #4369	; 0x1111
    d01c:	e30142a4 	movw	r4, #4772	; 0x12a4
    d020:	e1520003 	cmp	r2, r3
    d024:	e3404001 	movt	r4, #1
    d028:	e3a06000 	mov	r6, #0
    d02c:	e5846000 	str	r6, [r4]
    d030:	1a00000b 	bne	d064 <XUartPs_SetBaudRate+0x68>
    d034:	e3a03cc2 	mov	r3, #49664	; 0xc200
    d038:	e3403001 	movt	r3, #1
    d03c:	e1510003 	cmp	r1, r3
    d040:	8a00000f 	bhi	d084 <XUartPs_SetBaudRate+0x88>
    d044:	e351006d 	cmp	r1, #109	; 0x6d
    d048:	9a000010 	bls	d090 <XUartPs_SetBaudRate+0x94>
    d04c:	e59b3008 	ldr	r3, [fp, #8]
    d050:	e1530081 	cmp	r3, r1, lsl #1
    d054:	2a000010 	bcs	d09c <XUartPs_SetBaudRate+0xa0>
    d058:	e300041f 	movw	r0, #1055	; 0x41f
    d05c:	e28dd00c 	add	sp, sp, #12
    d060:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    d064:	e30e00bc 	movw	r0, #57532	; 0xe0bc
    d068:	e300122f 	movw	r1, #559	; 0x22f
    d06c:	e3400000 	movt	r0, #0
    d070:	eb0000a5 	bl	d30c <Xil_Assert>
    d074:	e3a03001 	mov	r3, #1
    d078:	e1a00006 	mov	r0, r6
    d07c:	e5843000 	str	r3, [r4]
    d080:	eafffff5 	b	d05c <XUartPs_SetBaudRate+0x60>
    d084:	e30e00bc 	movw	r0, #57532	; 0xe0bc
    d088:	e3a01e23 	mov	r1, #560	; 0x230
    d08c:	eafffff6 	b	d06c <XUartPs_SetBaudRate+0x70>
    d090:	e30e00bc 	movw	r0, #57532	; 0xe0bc
    d094:	e3001231 	movw	r1, #561	; 0x231
    d098:	eafffff3 	b	d06c <XUartPs_SetBaudRate+0x70>
    d09c:	e59b0004 	ldr	r0, [fp, #4]
    d0a0:	e0859105 	add	r9, r5, r5, lsl #2
    d0a4:	e3a04005 	mov	r4, #5
    d0a8:	e3e07000 	mvn	r7, #0
    d0ac:	e2800004 	add	r0, r0, #4
    d0b0:	ebfffd54 	bl	c608 <Xil_In32>
    d0b4:	e59b6008 	ldr	r6, [fp, #8]
    d0b8:	e3a03000 	mov	r3, #0
    d0bc:	e58d3000 	str	r3, [sp]
    d0c0:	e58d3004 	str	r3, [sp, #4]
    d0c4:	e3100001 	tst	r0, #1
    d0c8:	11a061a6 	lsrne	r6, r6, #3
    d0cc:	e1a01009 	mov	r1, r9
    d0d0:	e1a00006 	mov	r0, r6
    d0d4:	eb0000b4 	bl	d3ac <__aeabi_uidiv>
    d0d8:	e2448001 	sub	r8, r4, #1
    d0dc:	e0899005 	add	r9, r9, r5
    d0e0:	e6ef8078 	uxtb	r8, r8
    d0e4:	e1a0a000 	mov	sl, r0
    d0e8:	e1a00006 	mov	r0, r6
    d0ec:	e0010a94 	mul	r1, r4, sl
    d0f0:	eb0000ad 	bl	d3ac <__aeabi_uidiv>
    d0f4:	e2844001 	add	r4, r4, #1
    d0f8:	e1550000 	cmp	r5, r0
    d0fc:	e0651000 	rsb	r1, r5, r0
    d100:	80601005 	rsbhi	r1, r0, r5
    d104:	e1510007 	cmp	r1, r7
    d108:	388d0500 	stmcc	sp, {r8, sl}
    d10c:	31a07001 	movcc	r7, r1
    d110:	e3540c01 	cmp	r4, #256	; 0x100
    d114:	1affffec 	bne	d0cc <XUartPs_SetBaudRate+0xd0>
    d118:	e3a00064 	mov	r0, #100	; 0x64
    d11c:	e1a01005 	mov	r1, r5
    d120:	e0000790 	mul	r0, r0, r7
    d124:	eb0000a0 	bl	d3ac <__aeabi_uidiv>
    d128:	e3500003 	cmp	r0, #3
    d12c:	8affffc9 	bhi	d058 <XUartPs_SetBaudRate+0x5c>
    d130:	e59b4004 	ldr	r4, [fp, #4]
    d134:	e1a00004 	mov	r0, r4
    d138:	ebfffd32 	bl	c608 <Xil_In32>
    d13c:	e3c0103c 	bic	r1, r0, #60	; 0x3c
    d140:	e1a00004 	mov	r0, r4
    d144:	e3811028 	orr	r1, r1, #40	; 0x28
    d148:	ebfffd37 	bl	c62c <Xil_Out32>
    d14c:	e59b0004 	ldr	r0, [fp, #4]
    d150:	e59d1004 	ldr	r1, [sp, #4]
    d154:	e2800018 	add	r0, r0, #24
    d158:	ebfffd33 	bl	c62c <Xil_Out32>
    d15c:	e59b0004 	ldr	r0, [fp, #4]
    d160:	e59d1000 	ldr	r1, [sp]
    d164:	e2800034 	add	r0, r0, #52	; 0x34
    d168:	ebfffd2f 	bl	c62c <Xil_Out32>
    d16c:	e59b4004 	ldr	r4, [fp, #4]
    d170:	e1a00004 	mov	r0, r4
    d174:	ebfffd23 	bl	c608 <Xil_In32>
    d178:	e3c0103c 	bic	r1, r0, #60	; 0x3c
    d17c:	e1a00004 	mov	r0, r4
    d180:	e3811014 	orr	r1, r1, #20
    d184:	ebfffd28 	bl	c62c <Xil_Out32>
    d188:	e3a00000 	mov	r0, #0
    d18c:	e58b5018 	str	r5, [fp, #24]
    d190:	eaffffb1 	b	d05c <XUartPs_SetBaudRate+0x60>
    d194:	e30e00bc 	movw	r0, #57532	; 0xe0bc
    d198:	e300122e 	movw	r1, #558	; 0x22e
    d19c:	e3400000 	movt	r0, #0
    d1a0:	eb000059 	bl	d30c <Xil_Assert>
    d1a4:	e30132a4 	movw	r3, #4772	; 0x12a4
    d1a8:	e3403001 	movt	r3, #1
    d1ac:	e3a02001 	mov	r2, #1
    d1b0:	e1a0000b 	mov	r0, fp
    d1b4:	e5832000 	str	r2, [r3]
    d1b8:	eaffffa7 	b	d05c <XUartPs_SetBaudRate+0x60>

0000d1bc <XUartPs_CfgInitialize>:
    d1bc:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    d1c0:	e2504000 	subs	r4, r0, #0
    d1c4:	e1a03001 	mov	r3, r1
    d1c8:	0a00003a 	beq	d2b8 <XUartPs_CfgInitialize+0xfc>
    d1cc:	e30162a4 	movw	r6, #4772	; 0x12a4
    d1d0:	e3510000 	cmp	r1, #0
    d1d4:	e3406001 	movt	r6, #1
    d1d8:	e3a05000 	mov	r5, #0
    d1dc:	e5865000 	str	r5, [r6]
    d1e0:	0a00002c 	beq	d298 <XUartPs_CfgInitialize+0xdc>
    d1e4:	e591e008 	ldr	lr, [r1, #8]
    d1e8:	e30ccce4 	movw	ip, #52452	; 0xcce4
    d1ec:	e591100c 	ldr	r1, [r1, #12]
    d1f0:	e340c000 	movt	ip, #0
    d1f4:	e5842004 	str	r2, [r4, #4]
    d1f8:	e3013111 	movw	r3, #4369	; 0x1111
    d1fc:	e584e008 	str	lr, [r4, #8]
    d200:	e7df3813 	bfi	r3, r3, #16, #16
    d204:	e584100c 	str	r1, [r4, #12]
    d208:	e3a01cc2 	mov	r1, #49664	; 0xc200
    d20c:	e584c034 	str	ip, [r4, #52]	; 0x34
    d210:	e3401001 	movt	r1, #1
    d214:	e584501c 	str	r5, [r4, #28]
    d218:	e5845024 	str	r5, [r4, #36]	; 0x24
    d21c:	e5845020 	str	r5, [r4, #32]
    d220:	e5845028 	str	r5, [r4, #40]	; 0x28
    d224:	e5845030 	str	r5, [r4, #48]	; 0x30
    d228:	e584502c 	str	r5, [r4, #44]	; 0x2c
    d22c:	e5843014 	str	r3, [r4, #20]
    d230:	ebffff71 	bl	cffc <XUartPs_SetBaudRate>
    d234:	e2507000 	subs	r7, r0, #0
    d238:	15845014 	strne	r5, [r4, #20]
    d23c:	1a000013 	bne	d290 <XUartPs_CfgInitialize+0xd4>
    d240:	e5940004 	ldr	r0, [r4, #4]
    d244:	e2800004 	add	r0, r0, #4
    d248:	ebfffcee 	bl	c608 <Xil_In32>
    d24c:	e5943004 	ldr	r3, [r4, #4]
    d250:	e3c010be 	bic	r1, r0, #190	; 0xbe
    d254:	e2830004 	add	r0, r3, #4
    d258:	e3811020 	orr	r1, r1, #32
    d25c:	ebfffcf2 	bl	c62c <Xil_Out32>
    d260:	e5940004 	ldr	r0, [r4, #4]
    d264:	e3a01008 	mov	r1, #8
    d268:	e2800020 	add	r0, r0, #32
    d26c:	ebfffcee 	bl	c62c <Xil_Out32>
    d270:	e5940004 	ldr	r0, [r4, #4]
    d274:	e3a01001 	mov	r1, #1
    d278:	e280001c 	add	r0, r0, #28
    d27c:	ebfffcea 	bl	c62c <Xil_Out32>
    d280:	e5940004 	ldr	r0, [r4, #4]
    d284:	e3011fff 	movw	r1, #8191	; 0x1fff
    d288:	e280000c 	add	r0, r0, #12
    d28c:	ebfffce6 	bl	c62c <Xil_Out32>
    d290:	e1a00007 	mov	r0, r7
    d294:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    d298:	e30e00bc 	movw	r0, #57532	; 0xe0bc
    d29c:	e3a01090 	mov	r1, #144	; 0x90
    d2a0:	e3400000 	movt	r0, #0
    d2a4:	e1a07003 	mov	r7, r3
    d2a8:	eb000017 	bl	d30c <Xil_Assert>
    d2ac:	e3a03001 	mov	r3, #1
    d2b0:	e5863000 	str	r3, [r6]
    d2b4:	eafffff5 	b	d290 <XUartPs_CfgInitialize+0xd4>
    d2b8:	e30e00bc 	movw	r0, #57532	; 0xe0bc
    d2bc:	e3a0108f 	mov	r1, #143	; 0x8f
    d2c0:	e3400000 	movt	r0, #0
    d2c4:	e1a07004 	mov	r7, r4
    d2c8:	eb00000f 	bl	d30c <Xil_Assert>
    d2cc:	e30132a4 	movw	r3, #4772	; 0x12a4
    d2d0:	e3403001 	movt	r3, #1
    d2d4:	e3a02001 	mov	r2, #1
    d2d8:	e5832000 	str	r2, [r3]
    d2dc:	eaffffeb 	b	d290 <XUartPs_CfgInitialize+0xd4>

0000d2e0 <XUartPs_LookupConfig>:
    d2e0:	e30e30d8 	movw	r3, #57560	; 0xe0d8
    d2e4:	e3403000 	movt	r3, #0
    d2e8:	e1d320b0 	ldrh	r2, [r3]
    d2ec:	e1520000 	cmp	r2, r0
    d2f0:	01a00003 	moveq	r0, r3
    d2f4:	13a00000 	movne	r0, #0
    d2f8:	e12fff1e 	bx	lr

0000d2fc <outbyte>:
    d2fc:	e1a01000 	mov	r1, r0
    d300:	e3a00a01 	mov	r0, #4096	; 0x1000
    d304:	e34e0000 	movt	r0, #57344	; 0xe000
    d308:	ea000010 	b	d350 <XUartPs_SendByte>

0000d30c <Xil_Assert>:
    d30c:	e92d4008 	push	{r3, lr}
    d310:	e3003550 	movw	r3, #1360	; 0x550
    d314:	e3403001 	movt	r3, #1
    d318:	e5933000 	ldr	r3, [r3]
    d31c:	e3530000 	cmp	r3, #0
    d320:	0a000000 	beq	d328 <Xil_Assert+0x1c>
    d324:	e12fff33 	blx	r3
    d328:	e30e30d4 	movw	r3, #57556	; 0xe0d4
    d32c:	e3403000 	movt	r3, #0
    d330:	e5933000 	ldr	r3, [r3]
    d334:	e3530000 	cmp	r3, #0
    d338:	08bd8008 	popeq	{r3, pc}
    d33c:	eafffffe 	b	d33c <Xil_Assert+0x30>

0000d340 <Xil_AssertSetCallback>:
    d340:	e3003550 	movw	r3, #1360	; 0x550
    d344:	e3403001 	movt	r3, #1
    d348:	e5830000 	str	r0, [r3]
    d34c:	e12fff1e 	bx	lr

0000d350 <XUartPs_SendByte>:
    d350:	e92d4070 	push	{r4, r5, r6, lr}
    d354:	e280402c 	add	r4, r0, #44	; 0x2c
    d358:	e1a05000 	mov	r5, r0
    d35c:	e1a06001 	mov	r6, r1
    d360:	e1a00004 	mov	r0, r4
    d364:	ebfffca7 	bl	c608 <Xil_In32>
    d368:	e3100010 	tst	r0, #16
    d36c:	1afffffb 	bne	d360 <XUartPs_SendByte+0x10>
    d370:	e2850030 	add	r0, r5, #48	; 0x30
    d374:	e1a01006 	mov	r1, r6
    d378:	e8bd4070 	pop	{r4, r5, r6, lr}
    d37c:	eafffcaa 	b	c62c <Xil_Out32>

0000d380 <XUartPs_RecvByte>:
    d380:	e92d4038 	push	{r3, r4, r5, lr}
    d384:	e280402c 	add	r4, r0, #44	; 0x2c
    d388:	e1a05000 	mov	r5, r0
    d38c:	e1a00004 	mov	r0, r4
    d390:	ebfffc9c 	bl	c608 <Xil_In32>
    d394:	e3100002 	tst	r0, #2
    d398:	1afffffb 	bne	d38c <XUartPs_RecvByte+0xc>
    d39c:	e2850030 	add	r0, r5, #48	; 0x30
    d3a0:	ebfffc98 	bl	c608 <Xil_In32>
    d3a4:	e6ef0070 	uxtb	r0, r0
    d3a8:	e8bd8038 	pop	{r3, r4, r5, pc}

0000d3ac <__aeabi_uidiv>:
    d3ac:	e2512001 	subs	r2, r1, #1
    d3b0:	012fff1e 	bxeq	lr
    d3b4:	3a000074 	bcc	d58c <__aeabi_uidiv+0x1e0>
    d3b8:	e1500001 	cmp	r0, r1
    d3bc:	9a00006b 	bls	d570 <__aeabi_uidiv+0x1c4>
    d3c0:	e1110002 	tst	r1, r2
    d3c4:	0a00006c 	beq	d57c <__aeabi_uidiv+0x1d0>
    d3c8:	e16f3f10 	clz	r3, r0
    d3cc:	e16f2f11 	clz	r2, r1
    d3d0:	e0423003 	sub	r3, r2, r3
    d3d4:	e273301f 	rsbs	r3, r3, #31
    d3d8:	10833083 	addne	r3, r3, r3, lsl #1
    d3dc:	e3a02000 	mov	r2, #0
    d3e0:	108ff103 	addne	pc, pc, r3, lsl #2
    d3e4:	e320f000 	nop	{0}
    d3e8:	e1500f81 	cmp	r0, r1, lsl #31
    d3ec:	e0a22002 	adc	r2, r2, r2
    d3f0:	20400f81 	subcs	r0, r0, r1, lsl #31
    d3f4:	e1500f01 	cmp	r0, r1, lsl #30
    d3f8:	e0a22002 	adc	r2, r2, r2
    d3fc:	20400f01 	subcs	r0, r0, r1, lsl #30
    d400:	e1500e81 	cmp	r0, r1, lsl #29
    d404:	e0a22002 	adc	r2, r2, r2
    d408:	20400e81 	subcs	r0, r0, r1, lsl #29
    d40c:	e1500e01 	cmp	r0, r1, lsl #28
    d410:	e0a22002 	adc	r2, r2, r2
    d414:	20400e01 	subcs	r0, r0, r1, lsl #28
    d418:	e1500d81 	cmp	r0, r1, lsl #27
    d41c:	e0a22002 	adc	r2, r2, r2
    d420:	20400d81 	subcs	r0, r0, r1, lsl #27
    d424:	e1500d01 	cmp	r0, r1, lsl #26
    d428:	e0a22002 	adc	r2, r2, r2
    d42c:	20400d01 	subcs	r0, r0, r1, lsl #26
    d430:	e1500c81 	cmp	r0, r1, lsl #25
    d434:	e0a22002 	adc	r2, r2, r2
    d438:	20400c81 	subcs	r0, r0, r1, lsl #25
    d43c:	e1500c01 	cmp	r0, r1, lsl #24
    d440:	e0a22002 	adc	r2, r2, r2
    d444:	20400c01 	subcs	r0, r0, r1, lsl #24
    d448:	e1500b81 	cmp	r0, r1, lsl #23
    d44c:	e0a22002 	adc	r2, r2, r2
    d450:	20400b81 	subcs	r0, r0, r1, lsl #23
    d454:	e1500b01 	cmp	r0, r1, lsl #22
    d458:	e0a22002 	adc	r2, r2, r2
    d45c:	20400b01 	subcs	r0, r0, r1, lsl #22
    d460:	e1500a81 	cmp	r0, r1, lsl #21
    d464:	e0a22002 	adc	r2, r2, r2
    d468:	20400a81 	subcs	r0, r0, r1, lsl #21
    d46c:	e1500a01 	cmp	r0, r1, lsl #20
    d470:	e0a22002 	adc	r2, r2, r2
    d474:	20400a01 	subcs	r0, r0, r1, lsl #20
    d478:	e1500981 	cmp	r0, r1, lsl #19
    d47c:	e0a22002 	adc	r2, r2, r2
    d480:	20400981 	subcs	r0, r0, r1, lsl #19
    d484:	e1500901 	cmp	r0, r1, lsl #18
    d488:	e0a22002 	adc	r2, r2, r2
    d48c:	20400901 	subcs	r0, r0, r1, lsl #18
    d490:	e1500881 	cmp	r0, r1, lsl #17
    d494:	e0a22002 	adc	r2, r2, r2
    d498:	20400881 	subcs	r0, r0, r1, lsl #17
    d49c:	e1500801 	cmp	r0, r1, lsl #16
    d4a0:	e0a22002 	adc	r2, r2, r2
    d4a4:	20400801 	subcs	r0, r0, r1, lsl #16
    d4a8:	e1500781 	cmp	r0, r1, lsl #15
    d4ac:	e0a22002 	adc	r2, r2, r2
    d4b0:	20400781 	subcs	r0, r0, r1, lsl #15
    d4b4:	e1500701 	cmp	r0, r1, lsl #14
    d4b8:	e0a22002 	adc	r2, r2, r2
    d4bc:	20400701 	subcs	r0, r0, r1, lsl #14
    d4c0:	e1500681 	cmp	r0, r1, lsl #13
    d4c4:	e0a22002 	adc	r2, r2, r2
    d4c8:	20400681 	subcs	r0, r0, r1, lsl #13
    d4cc:	e1500601 	cmp	r0, r1, lsl #12
    d4d0:	e0a22002 	adc	r2, r2, r2
    d4d4:	20400601 	subcs	r0, r0, r1, lsl #12
    d4d8:	e1500581 	cmp	r0, r1, lsl #11
    d4dc:	e0a22002 	adc	r2, r2, r2
    d4e0:	20400581 	subcs	r0, r0, r1, lsl #11
    d4e4:	e1500501 	cmp	r0, r1, lsl #10
    d4e8:	e0a22002 	adc	r2, r2, r2
    d4ec:	20400501 	subcs	r0, r0, r1, lsl #10
    d4f0:	e1500481 	cmp	r0, r1, lsl #9
    d4f4:	e0a22002 	adc	r2, r2, r2
    d4f8:	20400481 	subcs	r0, r0, r1, lsl #9
    d4fc:	e1500401 	cmp	r0, r1, lsl #8
    d500:	e0a22002 	adc	r2, r2, r2
    d504:	20400401 	subcs	r0, r0, r1, lsl #8
    d508:	e1500381 	cmp	r0, r1, lsl #7
    d50c:	e0a22002 	adc	r2, r2, r2
    d510:	20400381 	subcs	r0, r0, r1, lsl #7
    d514:	e1500301 	cmp	r0, r1, lsl #6
    d518:	e0a22002 	adc	r2, r2, r2
    d51c:	20400301 	subcs	r0, r0, r1, lsl #6
    d520:	e1500281 	cmp	r0, r1, lsl #5
    d524:	e0a22002 	adc	r2, r2, r2
    d528:	20400281 	subcs	r0, r0, r1, lsl #5
    d52c:	e1500201 	cmp	r0, r1, lsl #4
    d530:	e0a22002 	adc	r2, r2, r2
    d534:	20400201 	subcs	r0, r0, r1, lsl #4
    d538:	e1500181 	cmp	r0, r1, lsl #3
    d53c:	e0a22002 	adc	r2, r2, r2
    d540:	20400181 	subcs	r0, r0, r1, lsl #3
    d544:	e1500101 	cmp	r0, r1, lsl #2
    d548:	e0a22002 	adc	r2, r2, r2
    d54c:	20400101 	subcs	r0, r0, r1, lsl #2
    d550:	e1500081 	cmp	r0, r1, lsl #1
    d554:	e0a22002 	adc	r2, r2, r2
    d558:	20400081 	subcs	r0, r0, r1, lsl #1
    d55c:	e1500001 	cmp	r0, r1
    d560:	e0a22002 	adc	r2, r2, r2
    d564:	20400001 	subcs	r0, r0, r1
    d568:	e1a00002 	mov	r0, r2
    d56c:	e12fff1e 	bx	lr
    d570:	03a00001 	moveq	r0, #1
    d574:	13a00000 	movne	r0, #0
    d578:	e12fff1e 	bx	lr
    d57c:	e16f2f11 	clz	r2, r1
    d580:	e262201f 	rsb	r2, r2, #31
    d584:	e1a00230 	lsr	r0, r0, r2
    d588:	e12fff1e 	bx	lr
    d58c:	e3500000 	cmp	r0, #0
    d590:	13e00000 	mvnne	r0, #0
    d594:	ea000007 	b	d5b8 <__aeabi_idiv0>

0000d598 <__aeabi_uidivmod>:
    d598:	e3510000 	cmp	r1, #0
    d59c:	0afffffa 	beq	d58c <__aeabi_uidiv+0x1e0>
    d5a0:	e92d4003 	push	{r0, r1, lr}
    d5a4:	ebffff80 	bl	d3ac <__aeabi_uidiv>
    d5a8:	e8bd4006 	pop	{r1, r2, lr}
    d5ac:	e0030092 	mul	r3, r2, r0
    d5b0:	e0411003 	sub	r1, r1, r3
    d5b4:	e12fff1e 	bx	lr

0000d5b8 <__aeabi_idiv0>:
    d5b8:	e12fff1e 	bx	lr

0000d5bc <exit>:
    d5bc:	e92d4008 	push	{r3, lr}
    d5c0:	e3a01000 	mov	r1, #0
    d5c4:	e1a04000 	mov	r4, r0
    d5c8:	eb000051 	bl	d714 <__call_exitprocs>
    d5cc:	e30d3e74 	movw	r3, #56948	; 0xde74
    d5d0:	e3403000 	movt	r3, #0
    d5d4:	e5930000 	ldr	r0, [r3]
    d5d8:	e590303c 	ldr	r3, [r0, #60]	; 0x3c
    d5dc:	e3530000 	cmp	r3, #0
    d5e0:	0a000000 	beq	d5e8 <exit+0x2c>
    d5e4:	e12fff33 	blx	r3
    d5e8:	e1a00004 	mov	r0, r4
    d5ec:	eb0000e4 	bl	d984 <_exit>

0000d5f0 <__libc_fini_array>:
    d5f0:	e92d4038 	push	{r3, r4, r5, lr}
    d5f4:	e30e4534 	movw	r4, #58676	; 0xe534
    d5f8:	e30e5530 	movw	r5, #58672	; 0xe530
    d5fc:	e3404000 	movt	r4, #0
    d600:	e3405000 	movt	r5, #0
    d604:	e0654004 	rsb	r4, r5, r4
    d608:	e1b04144 	asrs	r4, r4, #2
    d60c:	10855104 	addne	r5, r5, r4, lsl #2
    d610:	0a000003 	beq	d624 <__libc_fini_array+0x34>
    d614:	e5353004 	ldr	r3, [r5, #-4]!
    d618:	e12fff33 	blx	r3
    d61c:	e2544001 	subs	r4, r4, #1
    d620:	1afffffb 	bne	d614 <__libc_fini_array+0x24>
    d624:	e8bd4038 	pop	{r3, r4, r5, lr}
    d628:	ea000124 	b	dac0 <_fini>

0000d62c <__libc_init_array>:
    d62c:	e92d4070 	push	{r4, r5, r6, lr}
    d630:	e30e6528 	movw	r6, #58664	; 0xe528
    d634:	e30e5528 	movw	r5, #58664	; 0xe528
    d638:	e3406000 	movt	r6, #0
    d63c:	e3405000 	movt	r5, #0
    d640:	e0656006 	rsb	r6, r5, r6
    d644:	e1b06146 	asrs	r6, r6, #2
    d648:	12455004 	subne	r5, r5, #4
    d64c:	13a04000 	movne	r4, #0
    d650:	0a000004 	beq	d668 <__libc_init_array+0x3c>
    d654:	e5b53004 	ldr	r3, [r5, #4]!
    d658:	e2844001 	add	r4, r4, #1
    d65c:	e12fff33 	blx	r3
    d660:	e1560004 	cmp	r6, r4
    d664:	1afffffa 	bne	d654 <__libc_init_array+0x28>
    d668:	e30e6530 	movw	r6, #58672	; 0xe530
    d66c:	e30e5528 	movw	r5, #58664	; 0xe528
    d670:	e3406000 	movt	r6, #0
    d674:	e3405000 	movt	r5, #0
    d678:	e0656006 	rsb	r6, r5, r6
    d67c:	eb000109 	bl	daa8 <_init>
    d680:	e1b06146 	asrs	r6, r6, #2
    d684:	08bd8070 	popeq	{r4, r5, r6, pc}
    d688:	e2455004 	sub	r5, r5, #4
    d68c:	e3a04000 	mov	r4, #0
    d690:	e5b53004 	ldr	r3, [r5, #4]!
    d694:	e2844001 	add	r4, r4, #1
    d698:	e12fff33 	blx	r3
    d69c:	e1560004 	cmp	r6, r4
    d6a0:	1afffffa 	bne	d690 <__libc_init_array+0x64>
    d6a4:	e8bd8070 	pop	{r4, r5, r6, pc}

0000d6a8 <strlen>:
    d6a8:	f5d0f000 	pld	[r0]
    d6ac:	e3c01003 	bic	r1, r0, #3
    d6b0:	e2100003 	ands	r0, r0, #3
    d6b4:	e2600000 	rsb	r0, r0, #0
    d6b8:	e4913004 	ldr	r3, [r1], #4
    d6bc:	e280c004 	add	ip, r0, #4
    d6c0:	e1a0c18c 	lsl	ip, ip, #3
    d6c4:	e3e02000 	mvn	r2, #0
    d6c8:	11833c32 	orrne	r3, r3, r2, lsr ip
    d6cc:	e300c101 	movw	ip, #257	; 0x101
    d6d0:	e18cc80c 	orr	ip, ip, ip, lsl #16
    d6d4:	e043200c 	sub	r2, r3, ip
    d6d8:	e1c22003 	bic	r2, r2, r3
    d6dc:	e012238c 	ands	r2, r2, ip, lsl #7
    d6e0:	04913004 	ldreq	r3, [r1], #4
    d6e4:	02800004 	addeq	r0, r0, #4
    d6e8:	f5d1f008 	pld	[r1, #8]
    d6ec:	0043200c 	subeq	r2, r3, ip
    d6f0:	01c22003 	biceq	r2, r2, r3
    d6f4:	0012238c 	andseq	r2, r2, ip, lsl #7
    d6f8:	04913004 	ldreq	r3, [r1], #4
    d6fc:	02800004 	addeq	r0, r0, #4
    d700:	0afffff3 	beq	d6d4 <strlen+0x2c>
    d704:	e6ff2f32 	rbit	r2, r2
    d708:	e16f2f12 	clz	r2, r2
    d70c:	e08001a2 	add	r0, r0, r2, lsr #3
    d710:	e12fff1e 	bx	lr

0000d714 <__call_exitprocs>:
    d714:	e30d3e74 	movw	r3, #56948	; 0xde74
    d718:	e3403000 	movt	r3, #0
    d71c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    d720:	e24dd014 	sub	sp, sp, #20
    d724:	e5933000 	ldr	r3, [r3]
    d728:	e1a06001 	mov	r6, r1
    d72c:	e3a0a001 	mov	sl, #1
    d730:	e3002000 	movw	r2, #0
    d734:	e58d0008 	str	r0, [sp, #8]
    d738:	e3402000 	movt	r2, #0
    d73c:	e58d3004 	str	r3, [sp, #4]
    d740:	e2833f52 	add	r3, r3, #328	; 0x148
    d744:	e58d2000 	str	r2, [sp]
    d748:	e58d300c 	str	r3, [sp, #12]
    d74c:	e59d2004 	ldr	r2, [sp, #4]
    d750:	e59db00c 	ldr	fp, [sp, #12]
    d754:	e5927148 	ldr	r7, [r2, #328]	; 0x148
    d758:	e3570000 	cmp	r7, #0
    d75c:	0a000032 	beq	d82c <__call_exitprocs+0x118>
    d760:	e5975004 	ldr	r5, [r7, #4]
    d764:	e2554001 	subs	r4, r5, #1
    d768:	4a00002c 	bmi	d820 <__call_exitprocs+0x10c>
    d76c:	e285501f 	add	r5, r5, #31
    d770:	e2878088 	add	r8, r7, #136	; 0x88
    d774:	e0885105 	add	r5, r8, r5, lsl #2
    d778:	ea000006 	b	d798 <__call_exitprocs+0x84>
    d77c:	e5953000 	ldr	r3, [r5]
    d780:	e1530006 	cmp	r3, r6
    d784:	0a000005 	beq	d7a0 <__call_exitprocs+0x8c>
    d788:	e2444001 	sub	r4, r4, #1
    d78c:	e2455004 	sub	r5, r5, #4
    d790:	e3740001 	cmn	r4, #1
    d794:	0a000021 	beq	d820 <__call_exitprocs+0x10c>
    d798:	e3560000 	cmp	r6, #0
    d79c:	1afffff6 	bne	d77c <__call_exitprocs+0x68>
    d7a0:	e5973004 	ldr	r3, [r7, #4]
    d7a4:	e0682005 	rsb	r2, r8, r5
    d7a8:	e0872002 	add	r2, r7, r2
    d7ac:	e2433001 	sub	r3, r3, #1
    d7b0:	e1530004 	cmp	r3, r4
    d7b4:	e5123078 	ldr	r3, [r2, #-120]	; 0xffffff88
    d7b8:	05874004 	streq	r4, [r7, #4]
    d7bc:	13a01000 	movne	r1, #0
    d7c0:	15021078 	strne	r1, [r2, #-120]	; 0xffffff88
    d7c4:	e3530000 	cmp	r3, #0
    d7c8:	0affffee 	beq	d788 <__call_exitprocs+0x74>
    d7cc:	e5971188 	ldr	r1, [r7, #392]	; 0x188
    d7d0:	e1a0241a 	lsl	r2, sl, r4
    d7d4:	e5979004 	ldr	r9, [r7, #4]
    d7d8:	e1120001 	tst	r2, r1
    d7dc:	0a000014 	beq	d834 <__call_exitprocs+0x120>
    d7e0:	e597118c 	ldr	r1, [r7, #396]	; 0x18c
    d7e4:	e1120001 	tst	r2, r1
    d7e8:	1a000013 	bne	d83c <__call_exitprocs+0x128>
    d7ec:	e59d0008 	ldr	r0, [sp, #8]
    d7f0:	e5151080 	ldr	r1, [r5, #-128]	; 0xffffff80
    d7f4:	e12fff33 	blx	r3
    d7f8:	e5973004 	ldr	r3, [r7, #4]
    d7fc:	e1530009 	cmp	r3, r9
    d800:	1affffd1 	bne	d74c <__call_exitprocs+0x38>
    d804:	e59b3000 	ldr	r3, [fp]
    d808:	e1530007 	cmp	r3, r7
    d80c:	1affffce 	bne	d74c <__call_exitprocs+0x38>
    d810:	e2444001 	sub	r4, r4, #1
    d814:	e2455004 	sub	r5, r5, #4
    d818:	e3740001 	cmn	r4, #1
    d81c:	1affffdd 	bne	d798 <__call_exitprocs+0x84>
    d820:	e59d2000 	ldr	r2, [sp]
    d824:	e3520000 	cmp	r2, #0
    d828:	1a000006 	bne	d848 <__call_exitprocs+0x134>
    d82c:	e28dd014 	add	sp, sp, #20
    d830:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    d834:	e12fff33 	blx	r3
    d838:	eaffffee 	b	d7f8 <__call_exitprocs+0xe4>
    d83c:	e5150080 	ldr	r0, [r5, #-128]	; 0xffffff80
    d840:	e12fff33 	blx	r3
    d844:	eaffffeb 	b	d7f8 <__call_exitprocs+0xe4>
    d848:	e5973004 	ldr	r3, [r7, #4]
    d84c:	e3530000 	cmp	r3, #0
    d850:	e5973000 	ldr	r3, [r7]
    d854:	1a000006 	bne	d874 <__call_exitprocs+0x160>
    d858:	e3530000 	cmp	r3, #0
    d85c:	0a000004 	beq	d874 <__call_exitprocs+0x160>
    d860:	e1a00007 	mov	r0, r7
    d864:	e58b3000 	str	r3, [fp]
    d868:	e320f000 	nop	{0}
    d86c:	e59b7000 	ldr	r7, [fp]
    d870:	eaffffb8 	b	d758 <__call_exitprocs+0x44>
    d874:	e1a0b007 	mov	fp, r7
    d878:	e1a07003 	mov	r7, r3
    d87c:	eaffffb5 	b	d758 <__call_exitprocs+0x44>

0000d880 <atexit>:
    d880:	e1a01000 	mov	r1, r0
    d884:	e3a00000 	mov	r0, #0
    d888:	e1a02000 	mov	r2, r0
    d88c:	e1a03000 	mov	r3, r0
    d890:	eaffffff 	b	d894 <__register_exitproc>

0000d894 <__register_exitproc>:
    d894:	e30dce74 	movw	ip, #56948	; 0xde74
    d898:	e340c000 	movt	ip, #0
    d89c:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    d8a0:	e1a06000 	mov	r6, r0
    d8a4:	e59c4000 	ldr	r4, [ip]
    d8a8:	e24dd014 	sub	sp, sp, #20
    d8ac:	e594c148 	ldr	ip, [r4, #328]	; 0x148
    d8b0:	e35c0000 	cmp	ip, #0
    d8b4:	0284cf53 	addeq	ip, r4, #332	; 0x14c
    d8b8:	0584c148 	streq	ip, [r4, #328]	; 0x148
    d8bc:	e59c5004 	ldr	r5, [ip, #4]
    d8c0:	e355001f 	cmp	r5, #31
    d8c4:	da000016 	ble	d924 <__register_exitproc+0x90>
    d8c8:	e300c000 	movw	ip, #0
    d8cc:	e340c000 	movt	ip, #0
    d8d0:	e35c0000 	cmp	ip, #0
    d8d4:	1a000001 	bne	d8e0 <__register_exitproc+0x4c>
    d8d8:	e3e00000 	mvn	r0, #0
    d8dc:	ea000018 	b	d944 <__register_exitproc+0xb0>
    d8e0:	e3a00e19 	mov	r0, #400	; 0x190
    d8e4:	e58d100c 	str	r1, [sp, #12]
    d8e8:	e58d2008 	str	r2, [sp, #8]
    d8ec:	e58d3004 	str	r3, [sp, #4]
    d8f0:	e320f000 	nop	{0}
    d8f4:	e59d100c 	ldr	r1, [sp, #12]
    d8f8:	e59d2008 	ldr	r2, [sp, #8]
    d8fc:	e59d3004 	ldr	r3, [sp, #4]
    d900:	e250c000 	subs	ip, r0, #0
    d904:	0afffff3 	beq	d8d8 <__register_exitproc+0x44>
    d908:	e5945148 	ldr	r5, [r4, #328]	; 0x148
    d90c:	e3a00000 	mov	r0, #0
    d910:	e58c0004 	str	r0, [ip, #4]
    d914:	e58c5000 	str	r5, [ip]
    d918:	e584c148 	str	ip, [r4, #328]	; 0x148
    d91c:	e58c0188 	str	r0, [ip, #392]	; 0x188
    d920:	e58c018c 	str	r0, [ip, #396]	; 0x18c
    d924:	e3560000 	cmp	r6, #0
    d928:	e59c4004 	ldr	r4, [ip, #4]
    d92c:	1a000006 	bne	d94c <__register_exitproc+0xb8>
    d930:	e2843002 	add	r3, r4, #2
    d934:	e3a00000 	mov	r0, #0
    d938:	e2844001 	add	r4, r4, #1
    d93c:	e58c4004 	str	r4, [ip, #4]
    d940:	e78c1103 	str	r1, [ip, r3, lsl #2]
    d944:	e28dd014 	add	sp, sp, #20
    d948:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    d94c:	e3560002 	cmp	r6, #2
    d950:	e08c6104 	add	r6, ip, r4, lsl #2
    d954:	e59c7188 	ldr	r7, [ip, #392]	; 0x188
    d958:	e3a00001 	mov	r0, #1
    d95c:	e5863108 	str	r3, [r6, #264]	; 0x108
    d960:	e1a00410 	lsl	r0, r0, r4
    d964:	059c318c 	ldreq	r3, [ip, #396]	; 0x18c
    d968:	e1877000 	orr	r7, r7, r0
    d96c:	e1a05006 	mov	r5, r6
    d970:	e58c7188 	str	r7, [ip, #392]	; 0x188
    d974:	01830000 	orreq	r0, r3, r0
    d978:	e5862088 	str	r2, [r6, #136]	; 0x88
    d97c:	058c018c 	streq	r0, [ip, #396]	; 0x18c
    d980:	eaffffea 	b	d930 <__register_exitproc+0x9c>

0000d984 <_exit>:
    d984:	eafffffe 	b	d984 <_exit>

0000d988 <main>:
    d988:	e92d4010 	push	{r4, lr}
    d98c:	e30d0ef8 	movw	r0, #57080	; 0xdef8
    d990:	e24dd018 	sub	sp, sp, #24
    d994:	e3400000 	movt	r0, #0
    d998:	ebfff948 	bl	bec0 <print>
    d99c:	e3a04000 	mov	r4, #0
    d9a0:	ebfff7f5 	bl	b97c <BSP_Init>
    d9a4:	ebfff754 	bl	b6fc <CPU_Init>
    d9a8:	ebfff833 	bl	ba7c <guest_CPU_IntDis>
    d9ac:	e30909b8 	movw	r0, #39352	; 0x99b8
    d9b0:	e3400000 	movt	r0, #0
    d9b4:	ebfff83d 	bl	bab0 <guest_IRQ_Register>
    d9b8:	e30e00a4 	movw	r0, #57508	; 0xe0a4
    d9bc:	e3400000 	movt	r0, #0
    d9c0:	ebfff93e 	bl	bec0 <print>
    d9c4:	e30d0f18 	movw	r0, #57112	; 0xdf18
    d9c8:	e3400000 	movt	r0, #0
    d9cc:	ebfff93b 	bl	bec0 <print>
    d9d0:	e30d0f24 	movw	r0, #57124	; 0xdf24
    d9d4:	e3400000 	movt	r0, #0
    d9d8:	ebfff938 	bl	bec0 <print>
    d9dc:	e30d0f30 	movw	r0, #57136	; 0xdf30
    d9e0:	e3400000 	movt	r0, #0
    d9e4:	ebfff935 	bl	bec0 <print>
    d9e8:	e30d0f64 	movw	r0, #57188	; 0xdf64
    d9ec:	e3400000 	movt	r0, #0
    d9f0:	ebfff932 	bl	bec0 <print>
    d9f4:	e30d0fa0 	movw	r0, #57248	; 0xdfa0
    d9f8:	e3400000 	movt	r0, #0
    d9fc:	ebfff92f 	bl	bec0 <print>
    da00:	e30d0fdc 	movw	r0, #57308	; 0xdfdc
    da04:	e3400000 	movt	r0, #0
    da08:	ebfff92c 	bl	bec0 <print>
    da0c:	e30e0018 	movw	r0, #57368	; 0xe018
    da10:	e3400000 	movt	r0, #0
    da14:	ebfff929 	bl	bec0 <print>
    da18:	e30e004c 	movw	r0, #57420	; 0xe04c
    da1c:	e3400000 	movt	r0, #0
    da20:	ebfff926 	bl	bec0 <print>
    da24:	e30e0078 	movw	r0, #57464	; 0xe078
    da28:	e3400000 	movt	r0, #0
    da2c:	ebfff923 	bl	bec0 <print>
    da30:	ebffe23d 	bl	632c <OSInit>
    da34:	e59f004c 	ldr	r0, [pc, #76]	; da88 <main+0x100>
    da38:	e3a0c008 	mov	ip, #8
    da3c:	e1a01004 	mov	r1, r4
    da40:	e2802e7f 	add	r2, r0, #2032	; 0x7f0
    da44:	e1a0300c 	mov	r3, ip
    da48:	e282200c 	add	r2, r2, #12
    da4c:	e58dc000 	str	ip, [sp]
    da50:	e58d0004 	str	r0, [sp, #4]
    da54:	e3a0c003 	mov	ip, #3
    da58:	e58d400c 	str	r4, [sp, #12]
    da5c:	e3a00c02 	mov	r0, #512	; 0x200
    da60:	e58dc010 	str	ip, [sp, #16]
    da64:	e58d0008 	str	r0, [sp, #8]
    da68:	e30b0d64 	movw	r0, #48484	; 0xbd64
    da6c:	e3400000 	movt	r0, #0
    da70:	ebffec6a 	bl	8c20 <OSTaskCreateExt>
    da74:	ebfff801 	bl	ba80 <guest_CPU_IntEn>
    da78:	ebffe330 	bl	6740 <OSStart>
    da7c:	e1a00004 	mov	r0, r4
    da80:	e28dd018 	add	sp, sp, #24
    da84:	e8bd8010 	pop	{r4, pc}
    da88:	0000fd50 	andeq	pc, r0, r0, asr sp	; <UNPREDICTABLE>

0000da8c <register_fini>:
    da8c:	e3003000 	movw	r3, #0
    da90:	e3403000 	movt	r3, #0
    da94:	e3530000 	cmp	r3, #0
    da98:	012fff1e 	bxeq	lr
    da9c:	e30d05f0 	movw	r0, #54768	; 0xd5f0
    daa0:	e3400000 	movt	r0, #0
    daa4:	eaffff75 	b	d880 <atexit>

Disassembly of section .init:

0000daa8 <_init>:
    daa8:	e1a0c00d 	mov	ip, sp
    daac:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
    dab0:	e24cb004 	sub	fp, ip, #4
    dab4:	e24bd028 	sub	sp, fp, #40	; 0x28
    dab8:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
    dabc:	e12fff1e 	bx	lr

Disassembly of section .fini:

0000dac0 <_fini>:
    dac0:	e1a0c00d 	mov	ip, sp
    dac4:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
    dac8:	e24cb004 	sub	fp, ip, #4
    dacc:	e24bd028 	sub	sp, fp, #40	; 0x28
    dad0:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
    dad4:	e12fff1e 	bx	lr

Disassembly of section .rodata:

0000dad8 <OSUnMapTbl>:
    dad8:	00010000 	andeq	r0, r1, r0
    dadc:	00010002 	andeq	r0, r1, r2
    dae0:	00010003 	andeq	r0, r1, r3
    dae4:	00010002 	andeq	r0, r1, r2
    dae8:	00010004 	andeq	r0, r1, r4
    daec:	00010002 	andeq	r0, r1, r2
    daf0:	00010003 	andeq	r0, r1, r3
    daf4:	00010002 	andeq	r0, r1, r2
    daf8:	00010005 	andeq	r0, r1, r5
    dafc:	00010002 	andeq	r0, r1, r2
    db00:	00010003 	andeq	r0, r1, r3
    db04:	00010002 	andeq	r0, r1, r2
    db08:	00010004 	andeq	r0, r1, r4
    db0c:	00010002 	andeq	r0, r1, r2
    db10:	00010003 	andeq	r0, r1, r3
    db14:	00010002 	andeq	r0, r1, r2
    db18:	00010006 	andeq	r0, r1, r6
    db1c:	00010002 	andeq	r0, r1, r2
    db20:	00010003 	andeq	r0, r1, r3
    db24:	00010002 	andeq	r0, r1, r2
    db28:	00010004 	andeq	r0, r1, r4
    db2c:	00010002 	andeq	r0, r1, r2
    db30:	00010003 	andeq	r0, r1, r3
    db34:	00010002 	andeq	r0, r1, r2
    db38:	00010005 	andeq	r0, r1, r5
    db3c:	00010002 	andeq	r0, r1, r2
    db40:	00010003 	andeq	r0, r1, r3
    db44:	00010002 	andeq	r0, r1, r2
    db48:	00010004 	andeq	r0, r1, r4
    db4c:	00010002 	andeq	r0, r1, r2
    db50:	00010003 	andeq	r0, r1, r3
    db54:	00010002 	andeq	r0, r1, r2
    db58:	00010007 	andeq	r0, r1, r7
    db5c:	00010002 	andeq	r0, r1, r2
    db60:	00010003 	andeq	r0, r1, r3
    db64:	00010002 	andeq	r0, r1, r2
    db68:	00010004 	andeq	r0, r1, r4
    db6c:	00010002 	andeq	r0, r1, r2
    db70:	00010003 	andeq	r0, r1, r3
    db74:	00010002 	andeq	r0, r1, r2
    db78:	00010005 	andeq	r0, r1, r5
    db7c:	00010002 	andeq	r0, r1, r2
    db80:	00010003 	andeq	r0, r1, r3
    db84:	00010002 	andeq	r0, r1, r2
    db88:	00010004 	andeq	r0, r1, r4
    db8c:	00010002 	andeq	r0, r1, r2
    db90:	00010003 	andeq	r0, r1, r3
    db94:	00010002 	andeq	r0, r1, r2
    db98:	00010006 	andeq	r0, r1, r6
    db9c:	00010002 	andeq	r0, r1, r2
    dba0:	00010003 	andeq	r0, r1, r3
    dba4:	00010002 	andeq	r0, r1, r2
    dba8:	00010004 	andeq	r0, r1, r4
    dbac:	00010002 	andeq	r0, r1, r2
    dbb0:	00010003 	andeq	r0, r1, r3
    dbb4:	00010002 	andeq	r0, r1, r2
    dbb8:	00010005 	andeq	r0, r1, r5
    dbbc:	00010002 	andeq	r0, r1, r2
    dbc0:	00010003 	andeq	r0, r1, r3
    dbc4:	00010002 	andeq	r0, r1, r2
    dbc8:	00010004 	andeq	r0, r1, r4
    dbcc:	00010002 	andeq	r0, r1, r2
    dbd0:	00010003 	andeq	r0, r1, r3
    dbd4:	00010002 	andeq	r0, r1, r2

0000dbd8 <OSDebugEn>:
    dbd8:	00000000 	andeq	r0, r0, r0

0000dbdc <Str_MultOvfThTbl_Int32U>:
    dbdc:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    dbe0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    dbe4:	7fffffff 	svcvc	0x00ffffff
    dbe8:	55555555 	ldrbpl	r5, [r5, #-1365]	; 0xfffffaab
    dbec:	3fffffff 	svccc	0x00ffffff
    dbf0:	33333333 	teqcc	r3, #-872415232	; 0xcc000000
    dbf4:	2aaaaaaa 	bcs	feab86a4 <CPU_ARM_BIT_CNTES_C+0x7eab86a4>
    dbf8:	24924924 	ldrcs	r4, [r2], #2340	; 0x924
    dbfc:	1fffffff 	svcne	0x00ffffff
    dc00:	1c71c71c 	ldclne	7, cr12, [r1], #-112	; 0xffffff90
    dc04:	19999999 	ldmibne	r9, {r0, r3, r4, r7, r8, fp, ip, pc}
    dc08:	1745d174 	smlsldxne	sp, r5, r4, r1
    dc0c:	15555555 	ldrbne	r5, [r5, #-1365]	; 0xfffffaab
    dc10:	13b13b13 			; <UNDEFINED> instruction: 0x13b13b13
    dc14:	12492492 	subne	r2, r9, #-1845493760	; 0x92000000
    dc18:	11111111 	tstne	r1, r1, lsl r1
    dc1c:	0fffffff 	svceq	0x00ffffff
    dc20:	0f0f0f0f 	svceq	0x000f0f0f
    dc24:	0e38e38e 	cdpeq	3, 3, cr14, cr8, cr14, {4}
    dc28:	0d79435e 	ldcleq	3, cr4, [r9, #-376]!	; 0xfffffe88
    dc2c:	0ccccccc 	stcleq	12, cr12, [ip], {204}	; 0xcc
    dc30:	0c30c30c 	ldceq	3, cr12, [r0], #-48	; 0xffffffd0
    dc34:	0ba2e8ba 	bleq	fe8c7f24 <CPU_ARM_BIT_CNTES_C+0x7e8c7f24>
    dc38:	0b21642c 	bleq	866cf0 <__stack+0x851a40>
    dc3c:	0aaaaaaa 	beq	feab86ec <CPU_ARM_BIT_CNTES_C+0x7eab86ec>
    dc40:	0a3d70a3 	beq	f69ed4 <__stack+0xf54c24>
    dc44:	09d89d89 	ldmibeq	r8, {r0, r3, r7, r8, sl, fp, ip, pc}^
    dc48:	097b425e 	ldmdbeq	fp!, {r1, r2, r3, r4, r6, r9, lr}^
    dc4c:	09249249 	stmdbeq	r4!, {r0, r3, r6, r9, ip, pc}
    dc50:	08d3dcb0 	ldmeq	r3, {r4, r5, r7, sl, fp, ip, lr, pc}^
    dc54:	08888888 	stmeq	r8, {r3, r7, fp, pc}
    dc58:	08421084 	stmdaeq	r2, {r2, r7, ip}^
    dc5c:	07ffffff 			; <UNDEFINED> instruction: 0x07ffffff
    dc60:	07c1f07c 			; <UNDEFINED> instruction: 0x07c1f07c
    dc64:	07878787 	streq	r8, [r7, r7, lsl #15]
    dc68:	07507507 	ldrbeq	r7, [r0, -r7, lsl #10]
    dc6c:	071c71c7 	ldreq	r7, [ip, -r7, asr #3]

0000dc70 <CPU_CntLeadZerosTbl>:
    dc70:	06060708 	streq	r0, [r6], -r8, lsl #14
    dc74:	05050505 	streq	r0, [r5, #-1285]	; 0xfffffafb
    dc78:	04040404 	streq	r0, [r4], #-1028	; 0xfffffbfc
    dc7c:	04040404 	streq	r0, [r4], #-1028	; 0xfffffbfc
    dc80:	03030303 	movweq	r0, #13059	; 0x3303
    dc84:	03030303 	movweq	r0, #13059	; 0x3303
    dc88:	03030303 	movweq	r0, #13059	; 0x3303
    dc8c:	03030303 	movweq	r0, #13059	; 0x3303
    dc90:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    dc94:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    dc98:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    dc9c:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    dca0:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    dca4:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    dca8:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    dcac:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    dcb0:	01010101 	tsteq	r1, r1, lsl #2
    dcb4:	01010101 	tsteq	r1, r1, lsl #2
    dcb8:	01010101 	tsteq	r1, r1, lsl #2
    dcbc:	01010101 	tsteq	r1, r1, lsl #2
    dcc0:	01010101 	tsteq	r1, r1, lsl #2
    dcc4:	01010101 	tsteq	r1, r1, lsl #2
    dcc8:	01010101 	tsteq	r1, r1, lsl #2
    dccc:	01010101 	tsteq	r1, r1, lsl #2
    dcd0:	01010101 	tsteq	r1, r1, lsl #2
    dcd4:	01010101 	tsteq	r1, r1, lsl #2
    dcd8:	01010101 	tsteq	r1, r1, lsl #2
    dcdc:	01010101 	tsteq	r1, r1, lsl #2
    dce0:	01010101 	tsteq	r1, r1, lsl #2
    dce4:	01010101 	tsteq	r1, r1, lsl #2
    dce8:	01010101 	tsteq	r1, r1, lsl #2
    dcec:	01010101 	tsteq	r1, r1, lsl #2
	...

0000dd70 <_ctype_>:
    dd70:	20202000 	eorcs	r2, r0, r0
    dd74:	20202020 	eorcs	r2, r0, r0, lsr #32
    dd78:	28282020 	stmdacs	r8!, {r5, sp}
    dd7c:	20282828 	eorcs	r2, r8, r8, lsr #16
    dd80:	20202020 	eorcs	r2, r0, r0, lsr #32
    dd84:	20202020 	eorcs	r2, r0, r0, lsr #32
    dd88:	20202020 	eorcs	r2, r0, r0, lsr #32
    dd8c:	20202020 	eorcs	r2, r0, r0, lsr #32
    dd90:	10108820 	andsne	r8, r0, r0, lsr #16
    dd94:	10101010 	andsne	r1, r0, r0, lsl r0
    dd98:	10101010 	andsne	r1, r0, r0, lsl r0
    dd9c:	10101010 	andsne	r1, r0, r0, lsl r0
    dda0:	04040410 	streq	r0, [r4], #-1040	; 0xfffffbf0
    dda4:	04040404 	streq	r0, [r4], #-1028	; 0xfffffbfc
    dda8:	10040404 	andne	r0, r4, r4, lsl #8
    ddac:	10101010 	andsne	r1, r0, r0, lsl r0
    ddb0:	41411010 	cmpmi	r1, r0, lsl r0
    ddb4:	41414141 	cmpmi	r1, r1, asr #2
    ddb8:	01010101 	tsteq	r1, r1, lsl #2
    ddbc:	01010101 	tsteq	r1, r1, lsl #2
    ddc0:	01010101 	tsteq	r1, r1, lsl #2
    ddc4:	01010101 	tsteq	r1, r1, lsl #2
    ddc8:	01010101 	tsteq	r1, r1, lsl #2
    ddcc:	10101010 	andsne	r1, r0, r0, lsl r0
    ddd0:	42421010 	submi	r1, r2, #16
    ddd4:	42424242 	submi	r4, r2, #536870916	; 0x20000004
    ddd8:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    dddc:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    dde0:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    dde4:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    dde8:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    ddec:	10101010 	andsne	r1, r0, r0, lsl r0
    ddf0:	00000020 	andeq	r0, r0, r0, lsr #32
	...

0000de74 <_global_impure_ptr>:
    de74:	0000e0f8 	strdeq	lr, [r0], -r8
    de78:	0000003f 	andeq	r0, r0, pc, lsr r0
    de7c:	4f2f4375 	svcmi	0x002f4375
    de80:	49492d53 	stmdbmi	r9, {r0, r1, r4, r6, r8, sl, fp, sp}^
    de84:	6c644920 	stclvs	9, cr4, [r4], #-128	; 0xffffff80
    de88:	00000065 	andeq	r0, r0, r5, rrx
    de8c:	00007825 	andeq	r7, r0, r5, lsr #16
    de90:	202d2d20 	eorcs	r2, sp, r0, lsr #26
    de94:	70794828 	rsbsvc	r4, r9, r8, lsr #16
    de98:	63207265 	teqvs	r0, #1342177286	; 0x50000006
    de9c:	206c6c61 	rsbcs	r6, ip, r1, ror #24
    dea0:	74697865 	strbtvc	r7, [r9], #-2149	; 0xfffff79b
    dea4:	0d0a2029 	stceq	0, cr2, [sl, #-164]	; 0xffffff5c
    dea8:	00000000 	andeq	r0, r0, r0
    deac:	6b736154 	blvs	1ce6404 <__stack+0x1cd1154>
    deb0:	61745320 	cmnvs	r4, r0, lsr #6
    deb4:	43207472 	teqmi	r0, #1912602624	; 0x72000000
    deb8:	74616572 	strbtvc	r6, [r1], #-1394	; 0xfffffa8e
    debc:	0a0d6465 	beq	367058 <__stack+0x351da8>
    dec0:	00000000 	andeq	r0, r0, r0
    dec4:	00000078 	andeq	r0, r0, r8, ror r0
    dec8:	6b736154 	blvs	1ce6420 <__stack+0x1cd1170>
    decc:	20322320 	eorscs	r2, r2, r0, lsr #6
    ded0:	72617453 	rsbvc	r7, r1, #1392508928	; 0x53000000
    ded4:	0d646574 	cfstr64eq	mvdx6, [r4, #-464]!	; 0xfffffe30
    ded8:	0000000a 	andeq	r0, r0, sl
    dedc:	00000042 	andeq	r0, r0, r2, asr #32
    dee0:	6b736154 	blvs	1ce6438 <__stack+0x1cd1188>
    dee4:	20312320 	eorscs	r2, r1, r0, lsr #6
    dee8:	72617453 	rsbvc	r7, r1, #1392508928	; 0x53000000
    deec:	0d646574 	cfstr64eq	mvdx6, [r4, #-464]!	; 0xfffffe30
    def0:	0000000a 	andeq	r0, r0, sl
    def4:	00000041 	andeq	r0, r0, r1, asr #32
    def8:	2a2a2a2a 	bcs	a987a8 <__stack+0xa834f8>
    defc:	75202a2a 	strvc	r2, [r0, #-2602]!	; 0xfffff5d6
    df00:	534f2f43 	movtpl	r2, #65347	; 0xff43
    df04:	2049492d 	subcs	r4, r9, sp, lsr #18
    df08:	72617473 	rsbvc	r7, r1, #1929379840	; 0x73000000
    df0c:	2a2a2074 	bcs	a960e4 <__stack+0xa80e34>
    df10:	2a2a2a2a 	bcs	a987c0 <__stack+0xa83510>
    df14:	00000a0d 	andeq	r0, r0, sp, lsl #20
    df18:	7263694d 	rsbvc	r6, r3, #1261568	; 0x134000
    df1c:	0d6d7569 	cfstr64eq	mvdx7, [sp, #-420]!	; 0xfffffe5c
    df20:	0000000a 	andeq	r0, r0, sl
    df24:	534f4375 	movtpl	r4, #62325	; 0xf375
    df28:	0d49492d 	stcleq	9, cr4, [r9, #-180]	; 0xffffff4c
    df2c:	000a0d0a 	andeq	r0, sl, sl, lsl #26
    df30:	73696854 	cmnvc	r9, #84, 16	; 0x540000
    df34:	70706120 	rsbsvc	r6, r0, r0, lsr #2
    df38:	6163696c 	cmnvs	r3, ip, ror #18
    df3c:	6e6f6974 	mcrvs	9, 3, r6, cr15, cr4, {3}
    df40:	6e757220 	cdpvs	2, 7, cr7, cr5, cr0, {1}
    df44:	68742073 	ldmdavs	r4!, {r0, r1, r4, r5, r6, sp}^
    df48:	20656572 	rsbcs	r6, r5, r2, ror r5
    df4c:	66666964 	strbtvs	r6, [r6], -r4, ror #18
    df50:	6e657265 	cdpvs	2, 6, cr7, cr5, cr5, {3}
    df54:	61742074 	cmnvs	r4, r4, ror r0
    df58:	3a736b73 	bcc	1ce8d2c <__stack+0x1cd3a7c>
    df5c:	0a0d0a0d 	beq	350798 <__stack+0x33b4e8>
    df60:	00000000 	andeq	r0, r0, r0
    df64:	54202e31 	strtpl	r2, [r0], #-3633	; 0xfffff1cf
    df68:	206b7361 	rsbcs	r7, fp, r1, ror #6
    df6c:	72617453 	rsbvc	r7, r1, #1392508928	; 0x53000000
    df70:	49203a74 	stmdbmi	r0!, {r2, r4, r5, r6, r9, fp, ip, sp}
    df74:	6974696e 	ldmdbvs	r4!, {r1, r2, r3, r5, r6, r8, fp, sp, lr}^
    df78:	7a696c61 	bvc	1a69104 <__stack+0x1a53e54>
    df7c:	74207365 	strtvc	r7, [r0], #-869	; 0xfffffc9b
    df80:	4f206568 	svcmi	0x00206568
    df84:	6e612053 	mcrvs	0, 3, r2, cr1, cr3, {2}
    df88:	72632064 	rsbvc	r2, r3, #100	; 0x64
    df8c:	65746165 	ldrbvs	r6, [r4, #-357]!	; 0xfffffe9b
    df90:	61742073 	cmnvs	r4, r3, ror r0
    df94:	20736b73 	rsbscs	r6, r3, r3, ror fp
    df98:	0d646e61 	stcleq	14, cr6, [r4, #-388]!	; 0xfffffe7c
    df9c:	0000000a 	andeq	r0, r0, sl
    dfa0:	20202020 	eorcs	r2, r0, r0, lsr #32
    dfa4:	20202020 	eorcs	r2, r0, r0, lsr #32
    dfa8:	20202020 	eorcs	r2, r0, r0, lsr #32
    dfac:	6f202020 	svcvs	0x00202020
    dfb0:	72656874 	rsbvc	r6, r5, #116, 16	; 0x740000
    dfb4:	72656b20 	rsbvc	r6, r5, #32, 22	; 0x8000
    dfb8:	206c656e 	rsbcs	r6, ip, lr, ror #10
    dfbc:	656a626f 	strbvs	r6, [sl, #-623]!	; 0xfffffd91
    dfc0:	20737463 	rsbscs	r7, r3, r3, ror #8
    dfc4:	68637573 	stmdavs	r3!, {r0, r1, r4, r5, r6, r8, sl, ip, sp, lr}^
    dfc8:	20736120 	rsbscs	r6, r3, r0, lsr #2
    dfcc:	616d6573 	smcvs	54867	; 0xd653
    dfd0:	726f6870 	rsbvc	r6, pc, #112, 16	; 0x700000
    dfd4:	0d2e7365 	stceq	3, cr7, [lr, #-404]!	; 0xfffffe6c
    dfd8:	0000000a 	andeq	r0, r0, sl
    dfdc:	20202020 	eorcs	r2, r0, r0, lsr #32
    dfe0:	20202020 	eorcs	r2, r0, r0, lsr #32
    dfe4:	20202020 	eorcs	r2, r0, r0, lsr #32
    dfe8:	54202020 	strtpl	r2, [r0], #-32	; 0xffffffe0
    dfec:	20736968 	rsbscs	r6, r3, r8, ror #18
    dff0:	6b736174 	blvs	1ce65c8 <__stack+0x1cd1318>
    dff4:	6d657220 	sfmvs	f7, 2, [r5, #-128]!	; 0xffffff80
    dff8:	736e6961 	cmnvc	lr, #1589248	; 0x184000
    dffc:	6e757220 	cdpvs	2, 7, cr7, cr5, cr0, {1}
    e000:	676e696e 	strbvs	r6, [lr, -lr, ror #18]!
    e004:	646e6120 	strbtvs	r6, [lr], #-288	; 0xfffffee0
    e008:	69727020 	ldmdbvs	r2!, {r5, ip, sp, lr}^
    e00c:	6e69746e 	cdpvs	4, 6, cr7, cr9, cr14, {3}
    e010:	0d612067 	stcleq	0, cr2, [r1, #-412]!	; 0xfffffe64
    e014:	0000000a 	andeq	r0, r0, sl
    e018:	20202020 	eorcs	r2, r0, r0, lsr #32
    e01c:	20202020 	eorcs	r2, r0, r0, lsr #32
    e020:	20202020 	eorcs	r2, r0, r0, lsr #32
    e024:	64202020 	strtvs	r2, [r0], #-32	; 0xffffffe0
    e028:	2720746f 	strcs	r7, [r0, -pc, ror #8]!
    e02c:	6520272e 	strvs	r2, [r0, #-1838]!	; 0xfffff8d2
    e030:	79726576 	ldmdbvc	r2!, {r1, r2, r4, r5, r6, r8, sl, sp, lr}^
    e034:	30303120 	eorscc	r3, r0, r0, lsr #2
    e038:	6c696d20 	stclvs	13, cr6, [r9], #-128	; 0xffffff80
    e03c:	6573696c 	ldrbvs	r6, [r3, #-2412]!	; 0xfffff694
    e040:	646e6f63 	strbtvs	r6, [lr], #-3939	; 0xfffff09d
    e044:	0a0d2e73 	beq	359a18 <__stack+0x344768>
    e048:	00000000 	andeq	r0, r0, r0
    e04c:	54202e32 	strtpl	r2, [r0], #-3634	; 0xfffff1ce
    e050:	206b7361 	rsbcs	r7, fp, r1, ror #6
    e054:	20203123 	eorcs	r3, r0, r3, lsr #2
    e058:	50203a20 	eorpl	r3, r0, r0, lsr #20
    e05c:	746e6972 	strbtvc	r6, [lr], #-2418	; 0xfffff68e
    e060:	31272073 	teqcc	r7, r3, ror r0
    e064:	76652027 	strbtvc	r2, [r5], -r7, lsr #32
    e068:	20797265 	rsbscs	r7, r9, r5, ror #4
    e06c:	65732d31 	ldrbvs	r2, [r3, #-3377]!	; 0xfffff2cf
    e070:	646e6f63 	strbtvs	r6, [lr], #-3939	; 0xfffff09d
    e074:	000a0d2e 	andeq	r0, sl, lr, lsr #26
    e078:	54202e33 	strtpl	r2, [r0], #-3635	; 0xfffff1cd
    e07c:	206b7361 	rsbcs	r7, fp, r1, ror #6
    e080:	20203223 	eorcs	r3, r0, r3, lsr #4
    e084:	50203a20 	eorpl	r3, r0, r0, lsr #20
    e088:	746e6972 	strbtvc	r6, [lr], #-2418	; 0xfffff68e
    e08c:	32272073 	eorcc	r2, r7, #115	; 0x73
    e090:	76652027 	strbtvc	r2, [r5], -r7, lsr #32
    e094:	20797265 	rsbscs	r7, r9, r5, ror #4
    e098:	65732d32 	ldrbvs	r2, [r3, #-3378]!	; 0xfffff2ce
    e09c:	646e6f63 	strbtvs	r6, [lr], #-3939	; 0xfffff09d
    e0a0:	0a0d2e73 	beq	359a74 <__stack+0x3447c4>
    e0a4:	00000a0d 	andeq	r0, r0, sp, lsl #20
    e0a8:	33323130 	teqcc	r2, #48, 2
    e0ac:	37363534 			; <UNDEFINED> instruction: 0x37363534
    e0b0:	42413938 	submi	r3, r1, #56, 18	; 0xe0000
    e0b4:	46454443 	strbmi	r4, [r5], -r3, asr #8
    e0b8:	00000000 	andeq	r0, r0, r0
    e0bc:	72617578 	rsbvc	r7, r1, #120, 10	; 0x1e000000
    e0c0:	2e737074 	mrccs	0, 3, r7, cr3, cr4, {3}
    e0c4:	00000063 	andeq	r0, r0, r3, rrx
    e0c8:	00000043 	andeq	r0, r0, r3, asr #32

Disassembly of section .data:

0000e0d0 <__data_start>:
    e0d0:	00000000 	andeq	r0, r0, r0

0000e0d4 <Xil_AssertWait>:
    e0d4:	00000001 	andeq	r0, r0, r1

0000e0d8 <XUartPs_ConfigTable>:
    e0d8:	00000000 	andeq	r0, r0, r0
    e0dc:	e0001000 	and	r1, r0, r0
    e0e0:	02faf080 	rscseq	pc, sl, #128	; 0x80
    e0e4:	00000000 	andeq	r0, r0, r0

0000e0e8 <__ctype_ptr__>:
    e0e8:	0000dd70 	andeq	sp, r0, r0, ror sp
    e0ec:	00000000 	andeq	r0, r0, r0

0000e0f0 <_impure_ptr>:
    e0f0:	0000e0f8 	strdeq	lr, [r0], -r8
    e0f4:	00000000 	andeq	r0, r0, r0

0000e0f8 <impure_data>:
    e0f8:	00000000 	andeq	r0, r0, r0
    e0fc:	0000e3e4 	andeq	lr, r0, r4, ror #7
    e100:	0000e44c 	andeq	lr, r0, ip, asr #8
    e104:	0000e4b4 			; <UNDEFINED> instruction: 0x0000e4b4
	...
    e12c:	0000e0c8 	andeq	lr, r0, r8, asr #1
	...
    e1a0:	00000001 	andeq	r0, r0, r1
    e1a4:	00000000 	andeq	r0, r0, r0
    e1a8:	abcd330e 	blge	ff35ade8 <CPU_ARM_BIT_CNTES_C+0x7f35ade8>
    e1ac:	e66d1234 			; <UNDEFINED> instruction: 0xe66d1234
    e1b0:	0005deec 	andeq	sp, r5, ip, ror #29
    e1b4:	0000000b 	andeq	r0, r0, fp
	...

0000e520 <__JCR_END__>:
    e520:	00000000 	andeq	r0, r0, r0

Disassembly of section .eh_frame:

0000e524 <__EH_FRAME_BEGIN__>:
    e524:	00000000 	andeq	r0, r0, r0

Disassembly of section .init_array:

0000e528 <__eh_framehdr_end>:
    e528:	0000da8c 	andeq	sp, r0, ip, lsl #21

0000e52c <__frame_dummy_init_array_entry>:
    e52c:	000061bc 			; <UNDEFINED> instruction: 0x000061bc

Disassembly of section .fini_array:

0000e530 <__fini_array_start>:
    e530:	00006178 	andeq	r6, r0, r8, ror r1

Disassembly of section .ARM.attributes:

0000e534 <__ARM.attributes_start>:
    e534:	00003241 	andeq	r3, r0, r1, asr #4
    e538:	61656100 	cmnvs	r5, r0, lsl #2
    e53c:	01006962 	tsteq	r0, r2, ror #18
    e540:	00000028 	andeq	r0, r0, r8, lsr #32
    e544:	412d3705 	teqmi	sp, r5, lsl #14
    e548:	070a0600 	streq	r0, [sl, -r0, lsl #12]
    e54c:	09010841 	stmdbeq	r1, {r0, r6, fp}
    e550:	0c030a02 	stceq	10, cr0, [r3], {2}
    e554:	14041201 	strne	r1, [r4], #-513	; 0xfffffdff
    e558:	17011501 	strne	r1, [r1, -r1, lsl #10]
    e55c:	1a011803 	bne	54570 <__stack+0x3f2c0>
    e560:	22031b01 	andcs	r1, r3, #1024	; 0x400
    e564:	Address 0x0000e564 is out of bounds.


Disassembly of section .bss:

0000e534 <__bss_start>:
    e534:	00000000 	andeq	r0, r0, r0

0000e538 <object.8489>:
	...

0000e550 <CSP_MainVectTbl>:
	...

0000ed50 <AppTask1Stk>:
	...

0000f550 <AppTask2Stk>:
	...

0000fd50 <AppTaskStartStk>:
	...

00010550 <Xil_AssertCallbackRoutine>:
   10550:	00000000 	andeq	r0, r0, r0

00010554 <OSLockNesting>:
	...

00010555 <OSTaskRegNextAvailID>:
	...

00010556 <OSRunning>:
	...

00010558 <OSIdleCtr>:
   10558:	00000000 	andeq	r0, r0, r0

0001055c <OSPrioHighRdy>:
	...

0001055d <OSPrioCur>:
   1055d:	00000000 	andeq	r0, r0, r0

00010560 <OSTCBList>:
   10560:	00000000 	andeq	r0, r0, r0

00010564 <OSMemTbl>:
	...

000105dc <OSTickStepState>:
   105dc:	00000000 	andeq	r0, r0, r0

000105e0 <OSCtxSwCtr>:
   105e0:	00000000 	andeq	r0, r0, r0

000105e4 <OSTCBFreeList>:
   105e4:	00000000 	andeq	r0, r0, r0

000105e8 <OSTaskCtr>:
   105e8:	00000000 	andeq	r0, r0, r0

000105ec <OSMemFreeList>:
   105ec:	00000000 	andeq	r0, r0, r0

000105f0 <OSTCBHighRdy>:
   105f0:	00000000 	andeq	r0, r0, r0

000105f4 <OSRdyGrp>:
   105f4:	00000000 	andeq	r0, r0, r0

000105f8 <OSRdyTbl>:
	...

00010600 <OSEventFreeList>:
   10600:	00000000 	andeq	r0, r0, r0

00010604 <OSIntNesting>:
   10604:	00000000 	andeq	r0, r0, r0

00010608 <OSTCBCur>:
   10608:	00000000 	andeq	r0, r0, r0

0001060c <OSTime>:
   1060c:	00000000 	andeq	r0, r0, r0

00010610 <OSTaskIdleStk>:
	...

00010810 <OSEventTbl>:
	...

00010900 <OSTCBTbl>:
	...

00010f90 <OSTCBPrioTbl>:
	...

00011090 <OS_CPU_ExceptStkBase>:
   11090:	00000000 	andeq	r0, r0, r0

00011094 <OS_CPU_ExceptStkPtr>:
   11094:	00000000 	andeq	r0, r0, r0

00011098 <OS_CPU_ExceptStk>:
	...

00011298 <Math_RandSeedCur>:
   11298:	00000000 	andeq	r0, r0, r0

0001129c <BSP_CPU_ClkFreq_MHz>:
   1129c:	00000000 	andeq	r0, r0, r0

000112a0 <AppMutexPrint>:
   112a0:	00000000 	andeq	r0, r0, r0

000112a4 <Xil_AssertStatus>:
   112a4:	00000000 	andeq	r0, r0, r0

Disassembly of section .heap:

000112a8 <HeapBase-0x8>:
	...

000112b0 <HeapBase>:
	...

Disassembly of section .stack:

000132b0 <_stack_end>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <__stack+0x10bba74>
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
      18:	00bec000 	adcseq	ip, lr, r0
      1c:	00bee800 	adcseq	lr, lr, r0, lsl #16
      20:	00000000 	andeq	r0, r0, r0
      24:	0c010200 	sfmeq	f0, 4, [r1], {-0}
      28:	01000000 	mrseq	r0, (UNDEF: 0)
      2c:	bec00117 	mcrlt	1, 6, r0, cr0, cr7, {0}
      30:	bee80000 	cdplt	0, 14, cr0, cr8, cr0, {0}
      34:	00000000 	andeq	r0, r0, r0
      38:	58010000 	stmdapl	r1, {}	; <UNPREDICTABLE>
      3c:	03000000 	movweq	r0, #0
      40:	00727470 	rsbseq	r7, r2, r0, ror r4
      44:	00581701 	subseq	r1, r8, r1, lsl #14
      48:	00200000 	eoreq	r0, r0, r0
      4c:	d8040000 	stmdale	r4, {}	; <UNPREDICTABLE>
      50:	650000be 	strvs	r0, [r0, #-190]	; 0xffffff42
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
      84:	ba010000 	blt	4008c <__stack+0x2addc>
      88:	12000001 	andne	r0, r0, #1
      8c:	e8000000 	stmda	r0, {}	; <UNPREDICTABLE>
      90:	f00000be 			; <UNDEFINED> instruction: 0xf00000be
      94:	3b0000c5 	blcc	3b0 <CPU_ARM_CTRL_INT_DIS+0x2f0>
      98:	02000000 	andeq	r0, r0, #0
      9c:	01a20801 			; <UNDEFINED> instruction: 0x01a20801
      a0:	02020000 	andeq	r0, r2, #0
      a4:	0001fb07 	andeq	pc, r1, r7, lsl #22
      a8:	33750300 	cmncc	r5, #0, 6
      ac:	5c020032 	stcpl	0, cr0, [r2], {50}	; 0x32
      b0:	0000003e 	andeq	r0, r0, lr, lsr r0
      b4:	eb070402 	bl	1c10c4 <__stack+0x1abe14>
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
     14c:	ea010103 	b	40560 <__stack+0x2b2b0>
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
     1bc:	00bee801 	adcseq	lr, lr, r1, lsl #16
     1c0:	00bf4400 	adcseq	r4, pc, r0, lsl #8
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
     220:	bf381047 	svclt	0x00381047
     224:	0d0c0000 	stceq	0, cr0, [ip, #-0]
     228:	11000000 	mrsne	r0, (UNDEF: 0)
     22c:	00000092 	muleq	r0, r2, r0
     230:	01c00412 	biceq	r0, r0, r2, lsl r4
     234:	33130000 	tstcc	r3, #0
     238:	14000000 	strne	r0, [r0], #-0
     23c:	00016f01 	andeq	r6, r1, r1, lsl #30
     240:	01090100 	mrseq	r0, (UNDEF: 25)
     244:	00bf4401 	adcseq	r4, pc, r1, lsl #8
     248:	00bfa000 	adcseq	sl, pc, r0
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
     29c:	1a500100 	bne	14006a4 <__stack+0x13eb3f4>
     2a0:	000002c7 	andeq	r0, r0, r7, asr #5
     2a4:	ba010e01 	blt	43ab0 <__stack+0x2e800>
     2a8:	f0000001 			; <UNDEFINED> instruction: 0xf0000001
     2ac:	1047c0cf 	subne	ip, r7, pc, asr #1
     2b0:	0000bf94 	muleq	r0, r4, pc	; <UNPREDICTABLE>
     2b4:	00000d0c 	andeq	r0, r0, ip, lsl #26
     2b8:	17011400 	strne	r1, [r1, -r0, lsl #8]
     2bc:	01000002 	tsteq	r0, r2
     2c0:	a001019f 	mulge	r1, pc, r1	; <UNPREDICTABLE>
     2c4:	fc0000bf 	stc2	0, cr0, [r0], {191}	; 0xbf
     2c8:	e00000bf 	strh	r0, [r0], -pc	; <UNPREDICTABLE>
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
     32c:	bff01047 	svclt	0x00f01047
     330:	0d0c0000 	stceq	0, cr0, [ip, #-0]
     334:	1b000000 	blne	33c <CPU_ARM_CTRL_INT_DIS+0x27c>
     338:	00031801 	andeq	r1, r3, r1, lsl #16
     33c:	02190100 	andseq	r0, r9, #0, 2
     340:	00bffc01 	adcseq	pc, pc, r1, lsl #24
     344:	00c09400 	sbceq	r9, r0, r0, lsl #8
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
     3ec:	0c1d5001 	ldceq	0, cr5, [sp], {1}
     3f0:	100000c0 	andne	r0, r0, r0, asr #1
     3f4:	1c0000c0 	stcne	0, cr0, [r0], {192}	; 0xc0
     3f8:	00000271 	andeq	r0, r0, r1, ror r2
     3fc:	92022301 	andls	r2, r2, #67108864	; 0x4000000
     400:	51000000 	mrspl	r0, (UNDEF: 0)
     404:	00000001 	andeq	r0, r0, r1
     408:	4c011400 	cfstrsmi	mvf1, [r1], {-0}
     40c:	01000004 	tsteq	r0, r4
     410:	940101d5 	strls	r0, [r1], #-469	; 0xfffffe2b
     414:	b40000c0 	strlt	r0, [r0], #-192	; 0xffffff40
     418:	660000c0 	strvs	r0, [r0], -r0, asr #1
     41c:	01000002 	tsteq	r0, r2
     420:	000003e4 	andeq	r0, r0, r4, ror #7
     424:	00018419 	andeq	r8, r1, r9, lsl r4
     428:	01d70100 	bicseq	r0, r7, r0, lsl #2
     42c:	00000092 	muleq	r0, r2, r0
     430:	981e5401 	ldmdals	lr, {r0, sl, ip, lr}
     434:	9c0000c0 	stcls	0, cr0, [r0], {192}	; 0xc0
     438:	da0000c0 	ble	740 <_ABORT_STACK_SIZE+0x340>
     43c:	1c000003 	stcne	0, cr0, [r0], {3}
     440:	00000271 	andeq	r0, r0, r1, ror r2
     444:	9201db01 	andls	sp, r1, #1024	; 0x400
     448:	86000000 	strhi	r0, [r0], -r0
     44c:	00000002 	andeq	r0, r0, r2
     450:	00c0a810 	sbceq	sl, r0, r0, lsl r8
     454:	0002c100 	andeq	ip, r2, r0, lsl #2
     458:	ea1f0000 	b	7c0460 <__stack+0x7ab1b0>
     45c:	b4000000 	strlt	r0, [r0], #-0
     460:	cc0000c0 	stcgt	0, cr0, [r0], {192}	; 0xc0
     464:	020000c0 	andeq	r0, r0, #192	; 0xc0
     468:	0301007d 	movweq	r0, #4221	; 0x107d
     46c:	20000004 	andcs	r0, r0, r4
     470:	000000f9 	strdeq	r0, [r0], -r9
     474:	00000299 	muleq	r0, r9, r2
     478:	58012100 	stmdapl	r1, {r8, sp}
     47c:	01000003 	tsteq	r0, r3
     480:	cc010278 	sfmgt	f0, 4, [r1], {120}	; 0x78
     484:	040000c0 	streq	r0, [r0], #-192	; 0xffffff40
     488:	020000c1 	andeq	r0, r0, #193	; 0xc1
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
     4b4:	7a010000 	bvc	404bc <__stack+0x2b20c>
     4b8:	0001b502 	andeq	fp, r1, r2, lsl #10
     4bc:	65182000 	ldrvs	r2, [r8, #-0]
     4c0:	0100646e 	tsteq	r0, lr, ror #8
     4c4:	0092027b 	addseq	r0, r2, fp, ror r2
     4c8:	02d80000 	sbcseq	r0, r8, #0
     4cc:	1b000000 	blne	4d4 <_ABORT_STACK_SIZE+0xd4>
     4d0:	0000d301 	andeq	sp, r0, r1, lsl #6
     4d4:	02a50100 	adceq	r0, r5, #0, 2
     4d8:	00c10401 	sbceq	r0, r1, r1, lsl #8
     4dc:	00c19c00 	sbceq	r9, r1, r0, lsl #24
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
     584:	141d5001 	ldrne	r5, [sp], #-1
     588:	180000c1 	stmdane	r0, {r0, r6, r7}
     58c:	1c0000c1 	stcne	0, cr0, [r0], {193}	; 0xc1
     590:	00000271 	andeq	r0, r0, r1, ror r2
     594:	9202af01 	andls	sl, r2, #1, 30
     598:	0b000000 	bleq	5a0 <_ABORT_STACK_SIZE+0x1a0>
     59c:	00000003 	andeq	r0, r0, r3
     5a0:	a2011400 	andge	r1, r1, #0, 8
     5a4:	01000002 	tsteq	r0, r2
     5a8:	9c0101f8 	stflss	f0, [r1], {248}	; 0xf8
     5ac:	b40000c1 	strlt	r0, [r0], #-193	; 0xffffff3f
     5b0:	200000c1 	andcs	r0, r0, r1, asr #1
     5b4:	01000004 	tsteq	r0, r4
     5b8:	0000057c 	andeq	r0, r0, ip, ror r5
     5bc:	00018419 	andeq	r8, r1, r9, lsl r4
     5c0:	01fa0100 	mvnseq	r0, r0, lsl #2
     5c4:	00000092 	muleq	r0, r2, r0
     5c8:	a41e5301 	ldrge	r5, [lr], #-769	; 0xfffffcff
     5cc:	a80000c1 	stmdage	r0, {r0, r6, r7}
     5d0:	720000c1 	andvc	r0, r0, #193	; 0xc1
     5d4:	1c000005 	stcne	0, cr0, [r0], {5}
     5d8:	00000271 	andeq	r0, r0, r1, ror r2
     5dc:	92020101 	andls	r0, r2, #1073741824	; 0x40000000
     5e0:	40000000 	andmi	r0, r0, r0
     5e4:	00000004 	andeq	r0, r0, r4
     5e8:	00c1a410 	sbceq	sl, r1, r0, lsl r4
     5ec:	00045900 	andeq	r5, r4, r0, lsl #18
     5f0:	061f0000 	ldreq	r0, [pc], -r0
     5f4:	b4000001 	strlt	r0, [r0], #-1
     5f8:	cc0000c1 	stcgt	0, cr0, [r0], {193}	; 0xc1
     5fc:	020000c1 	andeq	r0, r0, #193	; 0xc1
     600:	9b01007d 	blls	407fc <__stack+0x2b54c>
     604:	20000005 	andcs	r0, r0, r5
     608:	00000115 	andeq	r0, r0, r5, lsl r1
     60c:	00000453 	andeq	r0, r0, r3, asr r4
     610:	3d012100 	stfccs	f2, [r1, #-0]
     614:	01000001 	tsteq	r0, r1
     618:	cc010304 	stcgt	3, cr0, [r1], {4}
     61c:	040000c1 	streq	r0, [r0], #-193	; 0xffffff3f
     620:	020000c2 	andeq	r0, r0, #194	; 0xc2
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
     66c:	0000c204 	andeq	ip, r0, r4, lsl #4
     670:	0000c21c 	andeq	ip, r0, ip, lsl r2
     674:	01007d02 	tsteq	r0, r2, lsl #26
     678:	00000610 	andeq	r0, r0, r0, lsl r6
     67c:	00013120 	andeq	r3, r1, r0, lsr #2
     680:	0004a500 	andeq	sl, r4, r0, lsl #10
     684:	681f0000 	ldmdavs	pc, {}	; <UNPREDICTABLE>
     688:	1c000000 	stcne	0, cr0, [r0], {-0}
     68c:	380000c2 	stmdacc	r0, {r1, r6, r7}
     690:	020000c2 	andeq	r0, r0, #194	; 0xc2
     694:	3e01007d 	mcrcc	0, 0, r0, cr1, cr13, {3}
     698:	22000006 	andcs	r0, r0, #6
     69c:	00000077 	andeq	r0, r0, r7, ror r0
     6a0:	1c1d5301 	ldcne	3, cr5, [sp], {1}
     6a4:	200000c2 	andcs	r0, r0, r2, asr #1
     6a8:	220000c2 	andcs	r0, r0, #194	; 0xc2
     6ac:	00000084 	andeq	r0, r0, r4, lsl #1
     6b0:	00005301 	andeq	r5, r0, r1, lsl #6
     6b4:	0000991f 	andeq	r9, r0, pc, lsl r9
     6b8:	00c23800 	sbceq	r3, r2, r0, lsl #16
     6bc:	00c25400 	sbceq	r5, r2, r0, lsl #8
     6c0:	007d0200 	rsbseq	r0, sp, r0, lsl #4
     6c4:	00066e01 	andeq	r6, r6, r1, lsl #28
     6c8:	00a82200 	adceq	r2, r8, r0, lsl #4
     6cc:	53010000 	movwpl	r0, #4096	; 0x1000
     6d0:	00c2441d 	sbceq	r4, r2, sp, lsl r4
     6d4:	00c24800 	sbceq	r4, r2, r0, lsl #16
     6d8:	00b52300 	adcseq	r2, r5, r0, lsl #6
     6dc:	04c60000 	strbeq	r0, [r6], #0
     6e0:	00000000 	andeq	r0, r0, r0
     6e4:	0000c324 	andeq	ip, r0, r4, lsr #6
     6e8:	00c25400 	sbceq	r5, r2, r0, lsl #8
     6ec:	00c26c00 	sbceq	r6, r2, r0, lsl #24
     6f0:	007d0200 	rsbseq	r0, sp, r0, lsl #4
     6f4:	00ce1f01 	sbceq	r1, lr, r1, lsl #30
     6f8:	c26c0000 	rsbgt	r0, ip, #0
     6fc:	c2840000 	addgt	r0, r4, #0
     700:	7d020000 	stcvc	0, cr0, [r2, #-0]
     704:	069e0100 	ldreq	r0, [lr], r0, lsl #2
     708:	dd200000 	stcle	0, cr0, [r0, #-0]
     70c:	d9000000 	stmdble	r0, {}	; <UNPREDICTABLE>
     710:	00000004 	andeq	r0, r0, r4
     714:	04780121 	ldrbteq	r0, [r8], #-289	; 0xfffffedf
     718:	b8010000 	stmdalt	r1, {}	; <UNPREDICTABLE>
     71c:	c2840103 	addgt	r0, r4, #-1073741824	; 0xc0000000
     720:	c2bc0000 	adcsgt	r0, ip, #0
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
     75c:	bb010064 	bllt	408f4 <__stack+0x2b644>
     760:	00009203 	andeq	r9, r0, r3, lsl #4
     764:	00051800 	andeq	r1, r5, r0, lsl #16
     768:	01140000 	tsteq	r4, r0
     76c:	00000246 	andeq	r0, r0, r6, asr #4
     770:	0103e401 	tsteq	r3, r1, lsl #8
     774:	0000c2bc 			; <UNDEFINED> instruction: 0x0000c2bc
     778:	0000c358 	andeq	ip, r0, r8, asr r3
     77c:	0000052b 	andeq	r0, r0, fp, lsr #10
     780:	00078901 	andeq	r8, r7, r1, lsl #18
     784:	042f1c00 	strteq	r1, [pc], #-3072	; 78c <_ABORT_STACK_SIZE+0x38c>
     788:	e6010000 	str	r0, [r1], -r0
     78c:	00009203 	andeq	r9, r0, r3, lsl #4
     790:	00054b00 	andeq	r4, r5, r0, lsl #22
     794:	c2cc1000 	sbcgt	r1, ip, #0
     798:	0d0c0000 	stceq	0, cr0, [ip, #-0]
     79c:	e0100000 	ands	r0, r0, r0
     7a0:	0c0000c2 	stceq	0, cr0, [r0], {194}	; 0xc2
     7a4:	1000000d 	andne	r0, r0, sp
     7a8:	0000c2f8 	strdeq	ip, [r0], -r8
     7ac:	00000d24 	andeq	r0, r0, r4, lsr #26
     7b0:	00c30825 	sbceq	r0, r3, r5, lsr #16
     7b4:	000d2400 	andeq	r2, sp, r0, lsl #8
     7b8:	00074f00 	andeq	r4, r7, r0, lsl #30
     7bc:	51012600 	tstpl	r1, r0, lsl #12
     7c0:	01210a03 	teqeq	r1, r3, lsl #20
     7c4:	c3182500 	tstgt	r8, #0, 10
     7c8:	0d240000 	stceq	0, cr0, [r4, #-0]
     7cc:	07640000 	strbeq	r0, [r4, -r0]!
     7d0:	01260000 	teqeq	r6, r0
     7d4:	210a0351 	tstcs	sl, r1, asr r3
     7d8:	24100001 	ldrcs	r0, [r0], #-1
     7dc:	0c0000c3 	stceq	0, cr0, [r0], {195}	; 0xc3
     7e0:	1000000d 	andne	r0, r0, sp
     7e4:	0000c334 	andeq	ip, r0, r4, lsr r3
     7e8:	00000d24 	andeq	r0, r0, r4, lsr #26
     7ec:	00c34010 	sbceq	r4, r3, r0, lsl r0
     7f0:	000d0c00 	andeq	r0, sp, r0, lsl #24
     7f4:	c3501000 	cmpgt	r0, #0
     7f8:	0d240000 	stceq	0, cr0, [r4, #-0]
     7fc:	21000000 	mrscs	r0, (UNDEF: 0)
     800:	00015e01 	andeq	r5, r1, r1, lsl #28
     804:	01540100 	cmpeq	r4, r0, lsl #2
     808:	00c35801 	sbceq	r5, r3, r1, lsl #16
     80c:	00c37400 	sbceq	r7, r3, r0, lsl #8
     810:	007d0200 	rsbseq	r0, sp, r0, lsl #4
     814:	0007e701 	andeq	lr, r7, r1, lsl #14
     818:	00682700 	rsbeq	r2, r8, r0, lsl #14
     81c:	c3580000 	cmpgt	r8, #0
     820:	c3700000 	cmngt	r0, #0
     824:	56010000 	strpl	r0, [r1], -r0
     828:	0007dc01 	andeq	sp, r7, r1, lsl #24
     82c:	c3581d00 	cmpgt	r8, #0, 26
     830:	c3700000 	cmngt	r0, #0
     834:	77230000 	strvc	r0, [r3, -r0]!
     838:	9d000000 	stcls	0, cr0, [r0, #-0]
     83c:	1d000005 	stcne	0, cr0, [r0, #-20]	; 0xffffffec
     840:	0000c358 	andeq	ip, r0, r8, asr r3
     844:	0000c35c 	andeq	ip, r0, ip, asr r3
     848:	00008422 	andeq	r8, r0, r2, lsr #8
     84c:	00530100 	subseq	r0, r3, r0, lsl #2
     850:	74280000 	strtvc	r0, [r8], #-0
     854:	010000c3 	smlabteq	r0, r3, r0, r0
     858:	000006f4 	strdeq	r0, [r0], -r4
     85c:	96010900 	strls	r0, [r1], -r0, lsl #18
     860:	01000000 	mrseq	r0, (UNDEF: 0)
     864:	c374015c 	cmngt	r4, #92, 2
     868:	c3840000 	orrgt	r0, r4, #0
     86c:	05b00000 	ldreq	r0, [r0, #0]!
     870:	15010000 	strne	r0, [r1, #-0]
     874:	10000008 	andne	r0, r0, r8
     878:	0000c37c 	andeq	ip, r0, ip, ror r3
     87c:	00000393 	muleq	r0, r3, r3
     880:	00c38428 	sbceq	r8, r3, r8, lsr #8
     884:	06f40100 	ldrbteq	r0, [r4], r0, lsl #2
     888:	14000000 	strne	r0, [r0], #-0
     88c:	00028f01 	andeq	r8, r2, r1, lsl #30
     890:	04130100 	ldreq	r0, [r3], #-256	; 0xffffff00
     894:	00c38401 	sbceq	r8, r3, r1, lsl #8
     898:	00c3d000 	sbceq	sp, r3, r0
     89c:	0005d000 	andeq	sp, r5, r0
     8a0:	08720100 	ldmdaeq	r2!, {r8}^
     8a4:	2f1c0000 	svccs	0x001c0000
     8a8:	01000004 	tsteq	r0, r4
     8ac:	00920415 	addseq	r0, r2, r5, lsl r4
     8b0:	05f00000 	ldrbeq	r0, [r0, #0]!
     8b4:	98250000 	stmdals	r5!, {}	; <UNPREDICTABLE>
     8b8:	240000c3 	strcs	r0, [r0], #-195	; 0xffffff3d
     8bc:	5500000d 	strpl	r0, [r0, #-13]
     8c0:	26000008 	strcs	r0, [r0], -r8
     8c4:	0a035101 	beq	d4cd0 <__stack+0xbfa20>
     8c8:	1000ffff 	strdne	pc, [r0], -pc	; <UNPREDICTABLE>
     8cc:	0000c3a4 	andeq	ip, r0, r4, lsr #7
     8d0:	00000d0c 	andeq	r0, r0, ip, lsl #26
     8d4:	00c3bc10 	sbceq	fp, r3, r0, lsl ip
     8d8:	000d0c00 	andeq	r0, sp, r0, lsl #24
     8dc:	c3d02800 	bicsgt	r2, r0, #0, 16
     8e0:	24010000 	strcs	r0, [r1], #-0
     8e4:	0000000d 	andeq	r0, r0, sp
     8e8:	04140114 	ldreq	r0, [r4], #-276	; 0xfffffeec
     8ec:	65010000 	strvs	r0, [r1, #-0]
     8f0:	c3d00101 	bicsgt	r0, r0, #1073741824	; 0x40000000
     8f4:	c3f40000 	mvnsgt	r0, #0
     8f8:	060e0000 	streq	r0, [lr], -r0
     8fc:	d0010000 	andle	r0, r1, r0
     900:	27000008 	strcs	r0, [r0, -r8]
     904:	00000099 	muleq	r0, r9, r0
     908:	0000c3d8 	ldrdeq	ip, [r0], -r8
     90c:	0000c3f4 	strdeq	ip, [r0], -r4
     910:	c6016801 	strgt	r6, [r1], -r1, lsl #16
     914:	1d000008 	stcne	0, cr0, [r0, #-32]	; 0xffffffe0
     918:	0000c3d8 	ldrdeq	ip, [r0], -r8
     91c:	0000c3f4 	strdeq	ip, [r0], -r4
     920:	0000a822 	andeq	sl, r0, r2, lsr #16
     924:	1d530100 	ldfnee	f0, [r3, #-0]
     928:	0000c3e4 	andeq	ip, r0, r4, ror #7
     92c:	0000c3e8 	andeq	ip, r0, r8, ror #7
     930:	0000b523 	andeq	fp, r0, r3, lsr #10
     934:	00062e00 	andeq	r2, r6, r0, lsl #28
     938:	00000000 	andeq	r0, r0, r0
     93c:	00c3d810 	sbceq	sp, r3, r0, lsl r8
     940:	00081500 	andeq	r1, r8, r0, lsl #10
     944:	01090000 	mrseq	r0, (UNDEF: 9)
     948:	000000ed 	andeq	r0, r0, sp, ror #1
     94c:	f4016d01 			; <UNDEFINED> instruction: 0xf4016d01
     950:	040000c3 	streq	r0, [r0], #-195	; 0xffffff3d
     954:	410000c4 	smlabtmi	r0, r4, r0, r0
     958:	01000006 	tsteq	r0, r6
     95c:	000008fe 	strdeq	r0, [r0], -lr
     960:	00c3fc10 	sbceq	pc, r3, r0, lsl ip	; <UNPREDICTABLE>
     964:	00081500 	andeq	r1, r8, r0, lsl #10
     968:	c4042800 	strgt	r2, [r4], #-2048	; 0xfffff800
     96c:	2b010000 	blcs	40974 <__stack+0x2b6c4>
     970:	00000005 	andeq	r0, r0, r5
     974:	00ff0114 	rscseq	r0, pc, r4, lsl r1	; <UNPREDICTABLE>
     978:	39010000 	stmdbcc	r1, {}	; <UNPREDICTABLE>
     97c:	c4040104 	strgt	r0, [r4], #-260	; 0xfffffefc
     980:	c4340000 	ldrtgt	r0, [r4], #-0
     984:	06610000 	strbteq	r0, [r1], -r0
     988:	46010000 	strmi	r0, [r1], -r0
     98c:	19000009 	stmdbne	r0, {r0, r3}
     990:	0000042f 	andeq	r0, r0, pc, lsr #8
     994:	92043b01 	andls	r3, r4, #1024	; 0x400
     998:	01000000 	mrseq	r0, (UNDEF: 0)
     99c:	c4182550 	ldrgt	r2, [r8], #-1360	; 0xfffffab0
     9a0:	0d240000 	stceq	0, cr0, [r4, #-0]
     9a4:	093c0000 	ldmdbeq	ip!, {}	; <UNPREDICTABLE>
     9a8:	01260000 	teqeq	r6, r0
     9ac:	ff0a0351 			; <UNDEFINED> instruction: 0xff0a0351
     9b0:	241000ff 	ldrcs	r0, [r0], #-255	; 0xffffff01
     9b4:	0c0000c4 	stceq	0, cr0, [r0], {196}	; 0xc4
     9b8:	0000000d 	andeq	r0, r0, sp
     9bc:	04370121 	ldrteq	r0, [r7], #-289	; 0xfffffedf
     9c0:	76010000 	strvc	r0, [r1], -r0
     9c4:	c4340101 	ldrtgt	r0, [r4], #-257	; 0xfffffeff
     9c8:	c44c0000 	strbgt	r0, [ip], #-0
     9cc:	7d020000 	stcvc	0, cr0, [r2, #-0]
     9d0:	097b0100 	ldmdbeq	fp!, {r8}^
     9d4:	c3290000 	teqgt	r9, #0
     9d8:	34000000 	strcc	r0, [r0], #-0
     9dc:	480000c4 	stmdami	r0, {r2, r6, r7}
     9e0:	010000c4 	smlabteq	r0, r4, r0, r0
     9e4:	4c280178 	stfmis	f0, [r8], #-480	; 0xfffffe20
     9e8:	010000c4 	smlabteq	r0, r4, r0, r0
     9ec:	000008fe 	strdeq	r0, [r0], -lr
     9f0:	9c010900 	stcls	9, cr0, [r1], {-0}
     9f4:	01000003 	tsteq	r0, r3
     9f8:	c44c017e 	strbgt	r0, [ip], #-382	; 0xfffffe82
     9fc:	c45c0000 	ldrbgt	r0, [ip], #-0
     a00:	06810000 	streq	r0, [r1], r0
     a04:	a9010000 	stmdbge	r1, {}	; <UNPREDICTABLE>
     a08:	10000009 	andne	r0, r0, r9
     a0c:	0000c454 	andeq	ip, r0, r4, asr r4
     a10:	000002c1 	andeq	r0, r0, r1, asr #5
     a14:	00c45c28 	sbceq	r5, r4, r8, lsr #24
     a18:	08fe0100 	ldmeq	lr!, {r8}^
     a1c:	14000000 	strne	r0, [r0], #-0
     a20:	00037401 	andeq	r7, r3, r1, lsl #8
     a24:	045a0100 	ldrbeq	r0, [sl], #-256	; 0xffffff00
     a28:	00c45c01 	sbceq	r5, r4, r1, lsl #24
     a2c:	00c47800 	sbceq	r7, r4, r0, lsl #16
     a30:	0006a100 	andeq	sl, r6, r0, lsl #2
     a34:	09e60100 	stmibeq	r6!, {r8}^
     a38:	61150000 	tstvs	r5, r0
     a3c:	01007264 	tsteq	r0, r4, ror #4
     a40:	0092045a 	addseq	r0, r2, sl, asr r4
     a44:	06c10000 	strbeq	r0, [r1], r0
     a48:	702a0000 	eorvc	r0, sl, r0
     a4c:	240000c4 	strcs	r0, [r0], #-196	; 0xffffff3c
     a50:	2600000d 	strcs	r0, [r0], -sp
     a54:	f3035101 	vrhadd.u8	d5, d3, d1
     a58:	00005001 	andeq	r5, r0, r1
     a5c:	02760121 	rsbseq	r0, r6, #1073741832	; 0x40000008
     a60:	89010000 	stmdbhi	r1, {}	; <UNPREDICTABLE>
     a64:	c4780101 	ldrbtgt	r0, [r8], #-257	; 0xfffffeff
     a68:	c4900000 	ldrgt	r0, [r0], #0
     a6c:	7d020000 	stcvc	0, cr0, [r2, #-0]
     a70:	0a350100 	beq	d40e78 <__stack+0xd2bbc8>
     a74:	61160000 	tstvs	r6, r0
     a78:	01007264 	tsteq	r0, r4, ror #4
     a7c:	00920189 	addseq	r0, r2, r9, lsl #3
     a80:	50010000 	andpl	r0, r1, r0
     a84:	0000ce27 	andeq	ip, r0, r7, lsr #28
     a88:	00c47800 	sbceq	r7, r4, r0, lsl #16
     a8c:	00c48c00 	sbceq	r8, r4, r0, lsl #24
     a90:	018b0100 	orreq	r0, fp, r0, lsl #2
     a94:	00000a2a 	andeq	r0, r0, sl, lsr #20
     a98:	0000dd2b 	andeq	sp, r0, fp, lsr #26
     a9c:	00500100 	subseq	r0, r0, r0, lsl #2
     aa0:	00c49028 	sbceq	r9, r4, r8, lsr #32
     aa4:	09a90100 	stmibeq	r9!, {r8}
     aa8:	2c000000 	stccs	0, cr0, [r0], {-0}
     aac:	00045f01 	andeq	r5, r4, r1, lsl #30
     ab0:	01930100 	orrseq	r0, r3, r0, lsl #2
     ab4:	0000c490 	muleq	r0, r0, r4
     ab8:	0000c4a8 	andeq	ip, r0, r8, lsr #9
     abc:	01007d02 	tsteq	r0, r2, lsl #26
     ac0:	00000a81 	andeq	r0, r0, r1, lsl #21
     ac4:	7264610b 	rsbvc	r6, r4, #-1073741822	; 0xc0000002
     ac8:	92930100 	addsls	r0, r3, #0, 2
     acc:	01000000 	mrseq	r0, (UNDEF: 0)
     ad0:	00ea2d50 	rsceq	r2, sl, r0, asr sp
     ad4:	c4900000 	ldrgt	r0, [r0], #0
     ad8:	c4a40000 	strtgt	r0, [r4], #0
     adc:	95010000 	strls	r0, [r1, #-0]
     ae0:	00000a76 	andeq	r0, r0, r6, ror sl
     ae4:	0000f92b 	andeq	pc, r0, fp, lsr #18
     ae8:	00500100 	subseq	r0, r0, r0, lsl #2
     aec:	00c4a828 	sbceq	sl, r4, r8, lsr #16
     af0:	09a90100 	stmibeq	r9!, {r8}
     af4:	14000000 	strne	r0, [r0], #-0
     af8:	0002fd01 	andeq	pc, r2, r1, lsl #26
     afc:	04720100 	ldrbteq	r0, [r2], #-256	; 0xffffff00
     b00:	00c4a801 	sbceq	sl, r4, r1, lsl #16
     b04:	00c4f800 	sbceq	pc, r4, r0, lsl #16
     b08:	0006ed00 	andeq	lr, r6, r0, lsl #26
     b0c:	0b010100 	bleq	40f14 <__stack+0x2bc64>
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
     b6c:	c4e81047 	strbtgt	r1, [r8], #71	; 0x47
     b70:	0d0c0000 	stceq	0, cr0, [ip, #-0]
     b74:	14000000 	strne	r0, [r0], #-0
     b78:	0002b601 	andeq	fp, r2, r1, lsl #12
     b7c:	04a00100 	strteq	r0, [r0], #256	; 0x100
     b80:	00c4f801 	sbceq	pc, r4, r1, lsl #16
     b84:	00c52800 	sbceq	r2, r5, r0, lsl #16
     b88:	00075f00 	andeq	r5, r7, r0, lsl #30
     b8c:	0b490100 	bleq	1240f94 <__stack+0x122bce4>
     b90:	2f190000 	svccs	0x00190000
     b94:	01000004 	tsteq	r0, r4
     b98:	009204a2 	addseq	r0, r2, r2, lsr #9
     b9c:	50010000 	andpl	r0, r1, r0
     ba0:	00c50c25 	sbceq	r0, r5, r5, lsr #24
     ba4:	000d2400 	andeq	r2, sp, r0, lsl #8
     ba8:	000b3f00 	andeq	r3, fp, r0, lsl #30
     bac:	51012600 	tstpl	r1, r0, lsl #12
     bb0:	ffff0a03 			; <UNDEFINED> instruction: 0xffff0a03
     bb4:	c5181000 	ldrgt	r1, [r8, #-0]
     bb8:	0d0c0000 	stceq	0, cr0, [ip, #-0]
     bbc:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
     bc0:	00025801 	andeq	r5, r2, r1, lsl #16
     bc4:	01df0100 	bicseq	r0, pc, r0, lsl #2
     bc8:	0000c528 	andeq	ip, r0, r8, lsr #10
     bcc:	0000c538 	andeq	ip, r0, r8, lsr r5
     bd0:	0000077f 	andeq	r0, r0, pc, ror r7
     bd4:	000b7701 	andeq	r7, fp, r1, lsl #14
     bd8:	c5301000 	ldrgt	r1, [r0, #-0]!
     bdc:	04590000 	ldrbeq	r0, [r9], #-0
     be0:	38280000 	stmdacc	r8!, {}	; <UNPREDICTABLE>
     be4:	010000c5 	smlabteq	r0, r5, r0, r0
     be8:	00000b01 	andeq	r0, r0, r1, lsl #22
     bec:	2f011400 	svccs	0x00011400
     bf0:	01000003 	tsteq	r0, r3
     bf4:	380104c1 	stmdacc	r1, {r0, r6, r7, sl}
     bf8:	540000c5 	strpl	r0, [r0], #-197	; 0xffffff3b
     bfc:	9f0000c5 	svcls	0x000000c5
     c00:	01000007 	tsteq	r0, r7
     c04:	00000bb4 			; <UNDEFINED> instruction: 0x00000bb4
     c08:	72646115 	rsbvc	r6, r4, #1073741829	; 0x40000005
     c0c:	04c10100 	strbeq	r0, [r1], #256	; 0x100
     c10:	00000092 	muleq	r0, r2, r0
     c14:	000007bf 			; <UNDEFINED> instruction: 0x000007bf
     c18:	00c54c2a 	sbceq	r4, r5, sl, lsr #24
     c1c:	000d2400 	andeq	r2, sp, r0, lsl #8
     c20:	51012600 	tstpl	r1, r0, lsl #12
     c24:	5001f303 	andpl	pc, r1, r3, lsl #6
     c28:	012c0000 	teqeq	ip, r0
     c2c:	000003c5 	andeq	r0, r0, r5, asr #7
     c30:	5401f401 	strpl	pc, [r1], #-1025	; 0xfffffbff
     c34:	6c0000c5 	stcvs	0, cr0, [r0], {197}	; 0xc5
     c38:	020000c5 	andeq	r0, r0, #197	; 0xc5
     c3c:	0001007d 	andeq	r0, r1, sp, ror r0
     c40:	0b00000c 	bleq	c78 <_SUPERVISOR_STACK_SIZE+0x478>
     c44:	00726461 	rsbseq	r6, r2, r1, ror #8
     c48:	0092f401 	addseq	pc, r2, r1, lsl #8
     c4c:	50010000 	andpl	r0, r1, r0
     c50:	0001062d 	andeq	r0, r1, sp, lsr #12
     c54:	00c55400 	sbceq	r5, r5, r0, lsl #8
     c58:	00c56800 	sbceq	r6, r5, r0, lsl #16
     c5c:	f5f60100 			; <UNDEFINED> instruction: 0xf5f60100
     c60:	2b00000b 	blcs	c94 <_SUPERVISOR_STACK_SIZE+0x494>
     c64:	00000115 	andeq	r0, r0, r5, lsl r1
     c68:	28005001 	stmdacs	r0, {r0, ip, lr}
     c6c:	0000c56c 	andeq	ip, r0, ip, ror #10
     c70:	000b7701 	andeq	r7, fp, r1, lsl #14
     c74:	01140000 	tsteq	r4, r0
     c78:	0000018c 	andeq	r0, r0, ip, lsl #3
     c7c:	0104d901 	tsteq	r4, r1, lsl #18
     c80:	0000c56c 	andeq	ip, r0, ip, ror #10
     c84:	0000c5bc 			; <UNDEFINED> instruction: 0x0000c5bc
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
     cb4:	db010000 	blle	40cbc <__stack+0x2ba0c>
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
     cec:	00c5ac10 	sbceq	sl, r5, r0, lsl ip
     cf0:	000d0c00 	andeq	r0, sp, r0, lsl #24
     cf4:	01140000 	tsteq	r4, r0
     cf8:	00000115 	andeq	r0, r0, r5, lsl r1
     cfc:	01050701 	tsteq	r5, r1, lsl #14
     d00:	0000c5bc 			; <UNDEFINED> instruction: 0x0000c5bc
     d04:	0000c5d8 	ldrdeq	ip, [r0], -r8
     d08:	0000085d 	andeq	r0, r0, sp, asr r8
     d0c:	000cbd01 	andeq	fp, ip, r1, lsl #26
     d10:	64611500 	strbtvs	r1, [r1], #-1280	; 0xfffffb00
     d14:	07010072 	smlsdxeq	r1, r2, r0, r0
     d18:	00009205 	andeq	r9, r0, r5, lsl #4
     d1c:	00087d00 	andeq	r7, r8, r0, lsl #26
     d20:	c5d02a00 	ldrbgt	r2, [r0, #2560]	; 0xa00
     d24:	0d240000 	stceq	0, cr0, [r4, #-0]
     d28:	01260000 	teqeq	r6, r0
     d2c:	01f30351 	mvnseq	r0, r1, asr r3
     d30:	21000050 	qaddcs	r0, r0, r0
     d34:	00034401 	andeq	r4, r3, r1, lsl #8
     d38:	01430100 	mrseq	r0, (UNDEF: 83)
     d3c:	00c5d801 	sbceq	sp, r5, r1, lsl #16
     d40:	00c5f000 	sbceq	pc, r5, r0
     d44:	007d0200 	rsbseq	r0, sp, r0, lsl #4
     d48:	000d0c01 	andeq	r0, sp, r1, lsl #24
     d4c:	64611600 	strbtvs	r1, [r1], #-1536	; 0xfffffa00
     d50:	43010072 	movwmi	r0, #4210	; 0x1072
     d54:	00009201 	andeq	r9, r0, r1, lsl #4
     d58:	27500100 	ldrbcs	r0, [r0, -r0, lsl #2]
     d5c:	00000122 	andeq	r0, r0, r2, lsr #2
     d60:	0000c5d8 	ldrdeq	ip, [r0], -r8
     d64:	0000c5ec 	andeq	ip, r0, ip, ror #11
     d68:	01014501 	tsteq	r1, r1, lsl #10
     d6c:	2b00000d 	blcs	da8 <_SUPERVISOR_STACK_SIZE+0x5a8>
     d70:	00000131 	andeq	r0, r0, r1, lsr r1
     d74:	28005001 	stmdacs	r0, {r0, ip, lr}
     d78:	0000c5f0 	strdeq	ip, [r0], -r0
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
     dc8:	00c5f000 	sbceq	pc, r5, r0
     dcc:	00c6f000 	sbceq	pc, r6, r0
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
     e18:	bb050203 	bllt	14162c <__stack+0x12c37c>
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
     e78:	aa010900 	bge	43280 <__stack+0x2dfd0>
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
     f1c:	f0000000 			; <UNDEFINED> instruction: 0xf0000000
     f20:	fc0000c5 	stc2	0, cr0, [r0], {197}	; 0xc5
     f24:	020000c5 	andeq	r0, r0, #197	; 0xc5
     f28:	8f01007d 	svchi	0x0001007d
     f2c:	0c000001 	stceq	0, cr0, [r0], {1}
     f30:	00000839 	andeq	r0, r0, r9, lsr r8
     f34:	00486701 	subeq	r6, r8, r1, lsl #14
     f38:	08a90000 	stmiaeq	r9!, {}	; <UNPREDICTABLE>
     f3c:	0d000000 	stceq	0, cr0, [r0, #-0]
     f40:	000000c9 	andeq	r0, r0, r9, asr #1
     f44:	0000c5fc 	strdeq	ip, [r0], -ip	; <UNPREDICTABLE>
     f48:	0000c608 	andeq	ip, r0, r8, lsl #12
     f4c:	01007d02 	tsteq	r0, r2, lsl #26
     f50:	000001ae 	andeq	r0, r0, lr, lsr #3
     f54:	0000db0e 	andeq	sp, r0, lr, lsl #22
     f58:	0008ca00 	andeq	ip, r8, r0, lsl #20
     f5c:	440d0000 	strmi	r0, [sp], #-0
     f60:	08000001 	stmdaeq	r0, {r0}
     f64:	140000c6 	strne	r0, [r0], #-198	; 0xffffff3a
     f68:	020000c6 	andeq	r0, r0, #198	; 0xc6
     f6c:	cd01007d 	stcgt	0, cr0, [r1, #-500]	; 0xfffffe0c
     f70:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
     f74:	00000156 	andeq	r0, r0, r6, asr r1
     f78:	000008eb 	andeq	r0, r0, fp, ror #17
     f7c:	94010f00 	strls	r0, [r1], #-3840	; 0xfffff100
     f80:	01000004 	tsteq	r0, r4
     f84:	c61401ad 	ldrgt	r0, [r4], -sp, lsr #3
     f88:	c6200000 	strtgt	r0, [r0], -r0
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
     fb4:	c6200000 	strtgt	r0, [r0], -r0
     fb8:	c62c0000 	strtgt	r0, [ip], -r0
     fbc:	7d020000 	stcvc	0, cr0, [r2, #-0]
     fc0:	02250100 	eoreq	r0, r5, #0, 2
     fc4:	b2110000 	andslt	r0, r1, #0
     fc8:	01000000 	mrseq	r0, (UNDEF: 0)
     fcc:	00bd1150 	adcseq	r1, sp, r0, asr r1
     fd0:	51010000 	mrspl	r0, (UNDEF: 1)
     fd4:	011f0d00 	tsteq	pc, r0, lsl #26
     fd8:	c62c0000 	strtgt	r0, [ip], -r0
     fdc:	c6380000 	ldrtgt	r0, [r8], -r0
     fe0:	7d020000 	stcvc	0, cr0, [r2, #-0]
     fe4:	02490100 	subeq	r0, r9, #0, 2
     fe8:	2d110000 	ldccs	0, cr0, [r1, #-0]
     fec:	01000001 	tsteq	r0, r1
     ff0:	01381150 	teqeq	r8, r0, asr r1
     ff4:	51010000 	mrspl	r0, (UNDEF: 1)
     ff8:	cf010b00 	svcgt	0x00010b00
     ffc:	01000004 	tsteq	r0, r4
    1000:	003601f5 	ldrshteq	r0, [r6], -r5
    1004:	c6380000 	ldrtgt	r0, [r8], -r0
    1008:	c6500000 	ldrbgt	r0, [r0], -r0
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
    1040:	0000c638 	andeq	ip, r0, r8, lsr r6
    1044:	0000c640 	andeq	ip, r0, r0, asr #12
    1048:	02a8fd01 	adceq	pc, r8, #1, 26	; 0x40
    104c:	db0e0000 	blle	381054 <__stack+0x36bda4>
    1050:	0c000000 	stceq	0, cr0, [r0], {-0}
    1054:	00000009 	andeq	r0, r0, r9
    1058:	00008414 	andeq	r8, r0, r4, lsl r4
    105c:	00c64000 	sbceq	r4, r6, r0
    1060:	00c64800 	sbceq	r4, r6, r0, lsl #16
    1064:	11ff0100 	mvnsne	r0, r0, lsl #2
    1068:	00000097 	muleq	r0, r7, r0
    106c:	00005301 	andeq	r5, r0, r1, lsl #6
    1070:	050a0115 	streq	r0, [sl, #-277]	; 0xfffffeeb
    1074:	16010000 	strne	r0, [r1], -r0
    1078:	00480101 	subeq	r0, r8, r1, lsl #2
    107c:	c6500000 	ldrbgt	r0, [r0], -r0
    1080:	c67c0000 	ldrbtgt	r0, [ip], -r0
    1084:	7d020000 	stcvc	0, cr0, [r2, #-0]
    1088:	03590100 	cmpeq	r9, #0, 2
    108c:	39160000 	ldmdbcc	r6, {}	; <UNPREDICTABLE>
    1090:	01000008 	tsteq	r0, r8
    1094:	00480116 	subeq	r0, r8, r6, lsl r1
    1098:	092d0000 	pusheq	{}	; <UNPREDICTABLE>
    109c:	da170000 	ble	5c10a4 <__stack+0x5abdf4>
    10a0:	01000004 	tsteq	r0, r4
    10a4:	00480118 	subeq	r0, r8, r8, lsl r1
    10a8:	53010000 	movwpl	r0, #4096	; 0x1000
    10ac:	0004df0a 	andeq	sp, r4, sl, lsl #30
    10b0:	01190100 	tsteq	r9, r0, lsl #2
    10b4:	00000048 	andeq	r0, r0, r8, asr #32
    10b8:	00014418 	andeq	r4, r1, r8, lsl r4
    10bc:	00c65000 	sbceq	r5, r6, r0
    10c0:	00c65800 	sbceq	r5, r6, r0, lsl #16
    10c4:	011e0100 	tsteq	lr, r0, lsl #2
    10c8:	00000326 	andeq	r0, r0, r6, lsr #6
    10cc:	0001560e 	andeq	r5, r1, lr, lsl #12
    10d0:	00092d00 	andeq	r2, r9, r0, lsl #26
    10d4:	e7190000 	ldr	r0, [r9, -r0]
    10d8:	58000000 	stmdapl	r0, {}	; <UNPREDICTABLE>
    10dc:	740000c6 	strvc	r0, [r0], #-198	; 0xffffff3a
    10e0:	010000c6 	smlabteq	r0, r6, r0, r0
    10e4:	fa0e0120 	blx	38156c <__stack+0x36c2bc>
    10e8:	4e000000 	cdpmi	0, 0, cr0, cr0, cr0, {0}
    10ec:	1a000009 	bne	1118 <_SUPERVISOR_STACK_SIZE+0x918>
    10f0:	00000000 	andeq	r0, r0, r0
    10f4:	0001061b 	andeq	r0, r1, fp, lsl r6
    10f8:	00096100 	andeq	r6, r9, r0, lsl #2
    10fc:	01121b00 	tsteq	r2, r0, lsl #22
    1100:	097f0000 	ldmdbeq	pc!, {}^	; <UNPREDICTABLE>
    1104:	00000000 	andeq	r0, r0, r0
    1108:	ba011c00 	blt	48110 <__stack+0x32e60>
    110c:	01000004 	tsteq	r0, r4
    1110:	7c010138 	stfvcs	f0, [r1], {56}	; 0x38
    1114:	900000c6 	andls	r0, r0, r6, asr #1
    1118:	020000c6 	andeq	r0, r0, #198	; 0xc6
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
    1154:	0000c67c 	andeq	ip, r0, ip, ror r6
    1158:	0000c684 	andeq	ip, r0, r4, lsl #13
    115c:	bd013f01 	stclt	15, cr3, [r1, #-4]
    1160:	0e000003 	cdpeq	0, 0, cr0, cr0, cr3, {0}
    1164:	00000097 	muleq	r0, r7, r0
    1168:	00000992 	muleq	r0, r2, r9
    116c:	00a41900 	adceq	r1, r4, r0, lsl #18
    1170:	c6840000 	strgt	r0, [r4], r0
    1174:	c6900000 	ldrgt	r0, [r0], r0
    1178:	43010000 	movwmi	r0, #4096	; 0x1000
    117c:	00bd1101 	adcseq	r1, sp, r1, lsl #2
    1180:	51010000 	mrspl	r0, (UNDEF: 1)
    1184:	0000b211 	andeq	fp, r0, r1, lsl r2
    1188:	00500100 	subseq	r0, r0, r0, lsl #2
    118c:	e6011c00 	str	r1, [r1], -r0, lsl #24
    1190:	01000004 	tsteq	r0, r4
    1194:	90010156 	andls	r0, r1, r6, asr r1
    1198:	bc0000c6 	stclt	0, cr0, [r0], {198}	; 0xc6
    119c:	020000c6 	andeq	r0, r0, #198	; 0xc6
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
    11d8:	0000c690 	muleq	r0, r0, r6
    11dc:	0000c6b0 			; <UNDEFINED> instruction: 0x0000c6b0
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
    120c:	c6b00000 	ldrtgt	r0, [r0], r0
    1210:	c6bc0000 	ldrtgt	r0, [ip], r0
    1214:	5e010000 	cdppl	0, 0, cr0, cr1, cr0, {0}
    1218:	01381101 	teqeq	r8, r1, lsl #2
    121c:	51010000 	mrspl	r0, (UNDEF: 1)
    1220:	00012d11 	andeq	r2, r1, r1, lsl sp
    1224:	00500100 	subseq	r0, r0, r0, lsl #2
    1228:	00840d00 	addeq	r0, r4, r0, lsl #26
    122c:	c6bc0000 	ldrtgt	r0, [ip], r0
    1230:	c6cc0000 	strbgt	r0, [ip], r0
    1234:	7d020000 	stcvc	0, cr0, [r2, #-0]
    1238:	04980100 	ldreq	r0, [r8], #256	; 0x100
    123c:	970e0000 	strls	r0, [lr, -r0]
    1240:	5a000000 	bpl	1248 <_SUPERVISOR_STACK_SIZE+0xa48>
    1244:	0000000a 	andeq	r0, r0, sl
    1248:	0000e71e 	andeq	lr, r0, lr, lsl r7
    124c:	00c6cc00 	sbceq	ip, r6, r0, lsl #24
    1250:	00c6f000 	sbceq	pc, r6, r0
    1254:	007d0200 	rsbseq	r0, sp, r0, lsl #4
    1258:	00fa0e01 	rscseq	r0, sl, r1, lsl #28
    125c:	0a7b0000 	beq	1ec1264 <__stack+0x1eabfb4>
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
    128c:	f0000000 			; <UNDEFINED> instruction: 0xf0000000
    1290:	e40000c6 	str	r0, [r0], #-198	; 0xffffff3a
    1294:	c80000cc 	stmdagt	r0, {r2, r3, r6, r7}
    1298:	02000003 	andeq	r0, r0, #3
    129c:	01a40601 			; <UNDEFINED> instruction: 0x01a40601
    12a0:	01020000 	mrseq	r0, (UNDEF: 2)
    12a4:	0001a208 	andeq	sl, r1, r8, lsl #4
    12a8:	05020200 	streq	r0, [r2, #-512]	; 0xfffffe00
    12ac:	000003bb 			; <UNDEFINED> instruction: 0x000003bb
    12b0:	fb070202 	blx	1c1ac2 <__stack+0x1ac812>
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
    12f0:	ab080102 	blge	201700 <__stack+0x1ec450>
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
    1354:	0b002302 	bleq	9f64 <ASCII_ToUpper+0x8>
    1358:	0000056a 	andeq	r0, r0, sl, ror #10
    135c:	00411501 	subeq	r1, r1, r1, lsl #10
    1360:	23020000 	movwcs	r0, #8192	; 0x2000
    1364:	05760b04 	ldrbeq	r0, [r6, #-2820]!	; 0xfffff4fc
    1368:	16010000 	strne	r0, [r1], -r0
    136c:	00000041 	andeq	r0, r0, r1, asr #32
    1370:	0b082302 	bleq	209f80 <__stack+0x1f4cd0>
    1374:	0000061f 	andeq	r0, r0, pc, lsl r6
    1378:	007a1701 	rsbseq	r1, sl, r1, lsl #14
    137c:	23020000 	movwcs	r0, #8192	; 0x2000
    1380:	05a00b0c 	streq	r0, [r0, #2828]!	; 0xb0c
    1384:	18010000 	stmdane	r1, {}	; <UNPREDICTABLE>
    1388:	00000041 	andeq	r0, r0, r1, asr #32
    138c:	0b102302 	bleq	409f9c <__stack+0x3f4cec>
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
    1424:	f0000001 			; <UNDEFINED> instruction: 0xf0000001
    1428:	380000c6 	stmdacc	r0, {r1, r2, r6, r7}
    142c:	220000c7 	andcs	r0, r0, #199	; 0xc7
    1430:	0100000b 	tsteq	r0, fp
    1434:	00000212 	andeq	r0, r0, r2, lsl r2
    1438:	00014b12 	andeq	r4, r1, r2, lsl fp
    143c:	000b4200 	andeq	r4, fp, r0, lsl #4
    1440:	01561200 	cmpeq	r6, r0, lsl #4
    1444:	0b630000 	bleq	18c144c <__stack+0x18ac19c>
    1448:	61130000 	tstvs	r3, r0
    144c:	14000001 	strne	r0, [r0], #-1
    1450:	0000013e 	andeq	r0, r0, lr, lsr r1
    1454:	0000c70c 	andeq	ip, r0, ip, lsl #14
    1458:	0000c738 	andeq	ip, r0, r8, lsr r7
    145c:	56122c01 	ldrpl	r2, [r2], -r1, lsl #24
    1460:	81000001 	tsthi	r0, r1
    1464:	1500000b 	strne	r0, [r0, #-11]
    1468:	0000c70c 	andeq	ip, r0, ip, lsl #14
    146c:	0000c738 	andeq	ip, r0, r8, lsr r7
    1470:	00016116 	andeq	r6, r1, r6, lsl r1
    1474:	17540100 	ldrbne	r0, [r4, -r0, lsl #2]
    1478:	0000014b 	andeq	r0, r0, fp, asr #2
    147c:	00c72818 	sbceq	r2, r7, r8, lsl r8
    1480:	00054200 	andeq	r4, r5, r0, lsl #4
    1484:	00000000 	andeq	r0, r0, r0
    1488:	00054d19 	andeq	r4, r5, r9, lsl sp
    148c:	01500100 	cmpeq	r0, r0, lsl #2
    1490:	0000c738 	andeq	ip, r0, r8, lsr r7
    1494:	0000c830 	andeq	ip, r0, r0, lsr r8
    1498:	00000b9f 	muleq	r0, pc, fp	; <UNPREDICTABLE>
    149c:	0002df01 	andeq	sp, r2, r1, lsl #30
    14a0:	006e1a00 	rsbeq	r1, lr, r0, lsl #20
    14a4:	02df5001 	sbcseq	r5, pc, #1
    14a8:	0bcc0000 	bleq	ff3014b0 <CPU_ARM_BIT_CNTES_C+0x7f3014b0>
    14ac:	ba1b0000 	blt	6c14b4 <__stack+0x6ac204>
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
    1514:	0000c7ec 	andeq	ip, r0, ip, ror #15
    1518:	00000556 	andeq	r0, r0, r6, asr r5
    151c:	000002b1 			; <UNDEFINED> instruction: 0x000002b1
    1520:	0250011f 	subseq	r0, r0, #-1073741817	; 0xc0000007
    1524:	1e000075 	mcrne	0, 0, r0, cr0, cr5, {3}
    1528:	0000c804 	andeq	ip, r0, r4, lsl #16
    152c:	0000013e 	andeq	r0, r0, lr, lsr r1
    1530:	000002c5 	andeq	r0, r0, r5, asr #5
    1534:	0251011f 	subseq	r0, r1, #-1073741817	; 0xc0000007
    1538:	18000077 	stmdane	r0, {r0, r1, r2, r4, r5, r6}
    153c:	0000c814 	andeq	ip, r0, r4, lsl r8
    1540:	00000542 	andeq	r0, r0, r2, asr #10
    1544:	00c82820 	sbceq	r2, r8, r0, lsr #16
    1548:	00013e00 	andeq	r3, r1, r0, lsl #28
    154c:	51011f00 	tstpl	r1, r0, lsl #30
    1550:	00007702 	andeq	r7, r0, r2, lsl #14
    1554:	005d0600 	subseq	r0, sp, r0, lsl #12
    1558:	7a210000 	bvc	841560 <__stack+0x82c2b0>
    155c:	f4000000 	vst4.8	{d0-d3}, [r0], r0
    1560:	22000002 	andcs	r0, r0, #2
    1564:	00000064 	andeq	r0, r0, r4, rrx
    1568:	7a21001f 	bvc	8415ec <__stack+0x82c33c>
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
    15a8:	30019501 	andcc	r9, r1, r1, lsl #10
    15ac:	e40000c8 	str	r0, [r0], #-200	; 0xffffff38
    15b0:	7e0000cc 	cdpvc	0, 0, cr0, cr0, cr12, {6}
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
    15ec:	9b010072 	blls	417bc <__stack+0x2c50c>
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
    1630:	0000c8d8 	ldrdeq	ip, [r0], -r8
    1634:	0000c908 	andeq	ip, r0, r8, lsl #18
    1638:	03e6b601 	mvneq	fp, #1048576	; 0x100000
    163c:	87170000 	ldrhi	r0, [r7, -r0]
    1640:	2a000001 	bcs	164c <_SUPERVISOR_STACK_SIZE+0xe4c>
    1644:	00000030 	andeq	r0, r0, r0, lsr r0
    1648:	0001922b 	andeq	r9, r1, fp, lsr #4
    164c:	000e9500 	andeq	r9, lr, r0, lsl #10
    1650:	019b2b00 	orrseq	r2, fp, r0, lsl #22
    1654:	0eb40000 	cdpeq	0, 11, cr0, cr4, cr0, {0}
    1658:	00000000 	andeq	r0, r0, r0
    165c:	00c9142c 	sbceq	r1, r9, ip, lsr #8
    1660:	00c92400 	sbceq	r2, r9, r0, lsl #8
    1664:	00040300 	andeq	r0, r4, r0, lsl #6
    1668:	5f5f1c00 	svcpl	0x005f1c00
    166c:	c2010078 	andgt	r0, r1, #120	; 0x78
    1670:	00000041 	andeq	r0, r0, r1, asr #32
    1674:	00000ec7 	andeq	r0, r0, r7, asr #29
    1678:	03092900 	movweq	r2, #39168	; 0x9900
    167c:	cad00000 	bgt	ff401684 <CPU_ARM_BIT_CNTES_C+0x7f401684>
    1680:	cb4c0000 	blgt	1301688 <__stack+0x12ec3d8>
    1684:	e1010000 	mrs	r0, (UNDEF: 1)
    1688:	0000046c 	andeq	r0, r0, ip, ror #8
    168c:	00032012 	andeq	r2, r3, r2, lsl r0
    1690:	000fa100 	andeq	sl, pc, r0, lsl #2
    1694:	03161200 	tsteq	r6, #0, 4
    1698:	0fe90000 	svceq	0x00e90000
    169c:	d81e0000 	ldmdale	lr, {}	; <UNPREDICTABLE>
    16a0:	560000ca 	strpl	r0, [r0], -sl, asr #1
    16a4:	3c000005 	stccc	0, cr0, [r0], {5}
    16a8:	1f000004 	svcne	0x00000004
    16ac:	7a025001 	bvc	956b8 <__stack+0x80408>
    16b0:	f01e0000 			; <UNDEFINED> instruction: 0xf01e0000
    16b4:	3e0000ca 	cdpcc	0, 0, cr0, cr0, cr10, {6}
    16b8:	51000001 	tstpl	r0, r1
    16bc:	1f000004 	svcne	0x00000004
    16c0:	91035101 	tstls	r3, r1, lsl #2
    16c4:	18007f88 	stmdane	r0, {r3, r7, r8, r9, sl, fp, ip, sp, lr}
    16c8:	0000cb34 	andeq	ip, r0, r4, lsr fp
    16cc:	00000542 	andeq	r0, r0, r2, asr #10
    16d0:	00cb4c20 	sbceq	r4, fp, r0, lsr #24
    16d4:	00013e00 	andeq	r3, r1, r0, lsl #28
    16d8:	51011f00 	tstpl	r1, r0, lsl #30
    16dc:	7f889103 	svcvc	0x00889103
    16e0:	762d0000 	strtvc	r0, [sp], -r0
    16e4:	28000001 	stmdacs	r0, {r0}
    16e8:	480000cc 	stmdami	r0, {r2, r3, r6, r7}
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
    1718:	0000c874 	andeq	ip, r0, r4, ror r8
    171c:	00000542 	andeq	r0, r0, r2, asr #10
    1720:	00caa018 	sbceq	sl, sl, r8, lsl r0
    1724:	00021200 	andeq	r1, r2, r0, lsl #4
    1728:	cb941800 	blgt	fe507730 <CPU_ARM_BIT_CNTES_C+0x7e507730>
    172c:	05420000 	strbeq	r0, [r2, #-0]
    1730:	241e0000 	ldrcs	r0, [lr], #-0
    1734:	420000cc 	andmi	r0, r0, #204	; 0xcc
    1738:	d0000005 	andle	r0, r0, r5
    173c:	1f000004 	svcne	0x00000004
    1740:	08025001 	stmdaeq	r2, {r0, ip, lr}
    1744:	9c1e0025 	ldcls	0, cr0, [lr], {37}	; 0x25
    1748:	420000cc 	andmi	r0, r0, #204	; 0xcc
    174c:	e3000005 	movw	r0, #5
    1750:	1f000004 	svcne	0x00000004
    1754:	3d015001 	stccc	0, cr5, [r1, #-4]
    1758:	ccb41800 	ldcgt	8, cr1, [r4]
    175c:	05420000 	strbeq	r0, [r2, #-0]
    1760:	c01e0000 	andsgt	r0, lr, r0
    1764:	420000cc 	andmi	r0, r0, #204	; 0xcc
    1768:	ff000005 			; <UNDEFINED> instruction: 0xff000005
    176c:	1f000004 	svcne	0x00000004
    1770:	37015001 	strcc	r5, [r1, -r1]
    1774:	cccc1e00 	stclgt	14, cr1, [ip], {0}
    1778:	05420000 	strbeq	r0, [r2, #-0]
    177c:	05120000 	ldreq	r0, [r2, #-0]
    1780:	011f0000 	tsteq	pc, r0
    1784:	00380150 	eorseq	r0, r8, r0, asr r1
    1788:	00ccd81e 	sbceq	sp, ip, lr, lsl r8
    178c:	00054200 	andeq	r4, r5, r0, lsl #4
    1790:	00052500 	andeq	r2, r5, r0, lsl #10
    1794:	50011f00 	andpl	r1, r1, r0, lsl #30
    1798:	20003d01 	andcs	r3, r0, r1, lsl #26
    179c:	0000cce0 	andeq	ip, r0, r0, ror #25
    17a0:	00000542 	andeq	r0, r0, r2, asr #10
    17a4:	0150011f 	cmpeq	r0, pc, lsl r1
    17a8:	2e00003a 	mcrcs	0, 0, r0, cr0, cr10, {1}
    17ac:	0000057b 	andeq	r0, r0, fp, ror r5
    17b0:	00815506 	addeq	r5, r1, r6, lsl #10
    17b4:	01010000 	mrseq	r0, (UNDEF: 1)
    17b8:	0086012f 	addeq	r0, r6, pc, lsr #2
    17bc:	0d010000 	stceq	0, cr0, [r1, #-0]
    17c0:	05560101 	ldrbeq	r0, [r6, #-257]	; 0xfffffeff
    17c4:	7a300000 	bvc	c017cc <__stack+0xbec51c>
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
    17f8:	cce40000 	stclgt	0, cr0, [r4]
    17fc:	d2e00000 	rscle	r0, r0, #0
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
    1834:	5a5c0200 	bpl	170203c <__stack+0x16ecd8c>
    1838:	02000000 	andeq	r0, r0, #0
    183c:	02eb0704 	rsceq	r0, fp, #4, 14	; 0x100000
    1840:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    1844:	0002e607 	andeq	lr, r2, r7, lsl #12
    1848:	08010200 	stmdaeq	r1, {r9}
    184c:	000001ab 	andeq	r0, r0, fp, lsr #3
    1850:	bb050202 	bllt	142060 <__stack+0x12cdb0>
    1854:	02000003 	andeq	r0, r0, #3
    1858:	03930504 	orrseq	r0, r3, #4, 10	; 0x1000000
    185c:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    1860:	00038e05 	andeq	r8, r3, r5, lsl #28
    1864:	8a040400 	bhi	10286c <__stack+0xed5bc>
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
    19d0:	e4010297 	str	r0, [r1], #-663	; 0xfffffd69
    19d4:	0c0000cc 	stceq	0, cr0, [r0], {204}	; 0xcc
    19d8:	530000cd 	movwpl	r0, #205	; 0xcd
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
    1a14:	00ccf80f 	sbceq	pc, ip, pc, lsl #16
    1a18:	0007cc00 	andeq	ip, r7, r0, lsl #24
    1a1c:	51011000 	mrspl	r1, (UNDEF: 1)
    1a20:	02a00a03 	adceq	r0, r0, #12288	; 0x3000
    1a24:	05500110 	ldrbeq	r0, [r0, #-272]	; 0xfffffef0
    1a28:	00e0bc03 	rsceq	fp, r0, r3, lsl #24
    1a2c:	11000000 	mrsne	r0, (UNDEF: 0)
    1a30:	00065001 	andeq	r5, r6, r1
    1a34:	01910100 	orrseq	r0, r1, r0, lsl #2
    1a38:	00002501 	andeq	r2, r0, r1, lsl #10
    1a3c:	00cd0c00 	sbceq	r0, sp, r0, lsl #24
    1a40:	00cd9400 	sbceq	r9, sp, r0, lsl #8
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
    1a7c:	38130000 	ldmdacc	r3, {}	; <UNPREDICTABLE>
    1a80:	e50000cd 	str	r0, [r0, #-205]	; 0xffffff33
    1a84:	13000007 	movwne	r0, #7
    1a88:	0000cd48 	andeq	ip, r0, r8, asr #26
    1a8c:	000007fe 	strdeq	r0, [r0], -lr
    1a90:	00cd7413 	sbceq	r7, sp, r3, lsl r4
    1a94:	0007fe00 	andeq	pc, r7, r0, lsl #28
    1a98:	cd8c1300 	stcgt	3, cr1, [ip]
    1a9c:	07e50000 	strbeq	r0, [r5, r0]!
    1aa0:	04000000 	streq	r0, [r0], #-0
    1aa4:	0001dd04 	andeq	sp, r1, r4, lsl #26
    1aa8:	f2011100 	vrhadd.s8	d1, d1, d0
    1aac:	01000006 	tsteq	r0, r6
    1ab0:	25010108 	strcs	r0, [r1, #-264]	; 0xfffffef8
    1ab4:	94000000 	strls	r0, [r0], #-0
    1ab8:	6c0000cd 	stcvs	0, cr0, [r0], {205}	; 0xcd
    1abc:	460000ce 	strmi	r0, [r0], -lr, asr #1
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
    1b04:	00cde415 	sbceq	lr, sp, r5, lsl r4
    1b08:	0007cc00 	andeq	ip, r7, r0, lsl #24
    1b0c:	00034100 	andeq	r4, r3, r0, lsl #2
    1b10:	51011000 	mrspl	r1, (UNDEF: 1)
    1b14:	01120a03 	tsteq	r2, r3, lsl #20
    1b18:	05500110 	ldrbeq	r0, [r0, #-272]	; 0xfffffef0
    1b1c:	00e0bc03 	rsceq	fp, r0, r3, lsl #24
    1b20:	0c150000 	ldceq	0, cr0, [r5], {-0}
    1b24:	e50000ce 	str	r0, [r0, #-206]	; 0xffffff32
    1b28:	54000007 	strpl	r0, [r0], #-7
    1b2c:	10000003 	andne	r0, r0, r3
    1b30:	48015101 	stmdami	r1, {r0, r8, ip, lr}
    1b34:	ce2c1600 	cfmadda32gt	mvax0, mvax1, mvfx12, mvfx0
    1b38:	4e010000 	cdpmi	0, 0, cr0, cr1, cr0, {0}
    1b3c:	69000002 	stmdbvs	r0, {r1}
    1b40:	10000003 	andne	r0, r0, r3
    1b44:	75025001 	strvc	r5, [r2, #-1]
    1b48:	3c150000 	ldccc	0, cr0, [r5], {-0}
    1b4c:	cc0000ce 	stcgt	0, cr0, [r0], {206}	; 0xce
    1b50:	87000007 	strhi	r0, [r0, -r7]
    1b54:	10000003 	andne	r0, r0, r3
    1b58:	0a035101 	beq	d5f64 <__stack+0xc0cb4>
    1b5c:	01100110 	tsteq	r0, r0, lsl r1
    1b60:	bc030550 	cfstr32lt	mvfx0, [r3], {80}	; 0x50
    1b64:	000000e0 	andeq	r0, r0, r0, ror #1
    1b68:	00ce600f 	sbceq	r6, lr, pc
    1b6c:	0007cc00 	andeq	ip, r7, r0, lsl #24
    1b70:	51011000 	mrspl	r1, (UNDEF: 1)
    1b74:	01110a03 	tsteq	r1, r3, lsl #20
    1b78:	05500110 	ldrbeq	r0, [r0, #-272]	; 0xfffffef0
    1b7c:	00e0bc03 	rsceq	fp, r0, r3, lsl #24
    1b80:	11000000 	mrsne	r0, (UNDEF: 0)
    1b84:	0008cd01 	andeq	ip, r8, r1, lsl #26
    1b88:	01e30100 	mvneq	r0, r0, lsl #2
    1b8c:	00002501 	andeq	r2, r0, r1, lsl #10
    1b90:	00ce6c00 	sbceq	r6, lr, r0, lsl #24
    1b94:	00cefc00 	sbceq	pc, lr, r0, lsl #24
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
    1bd0:	80130000 	andshi	r0, r3, r0
    1bd4:	fe0000ce 	cdp2	0, 0, cr0, cr0, cr14, {6}
    1bd8:	13000007 	movwne	r0, #7
    1bdc:	0000ceb0 			; <UNDEFINED> instruction: 0x0000ceb0
    1be0:	000007fe 	strdeq	r0, [r0], -lr
    1be4:	00cec413 	sbceq	ip, lr, r3, lsl r4
    1be8:	0007fe00 	andeq	pc, r7, r0, lsl #28
    1bec:	01110000 	tsteq	r1, r0
    1bf0:	000008e3 	andeq	r0, r0, r3, ror #17
    1bf4:	01014a01 	tsteq	r1, r1, lsl #20
    1bf8:	00000025 	andeq	r0, r0, r5, lsr #32
    1bfc:	0000cefc 	strdeq	ip, [r0], -ip	; <UNPREDICTABLE>
    1c00:	0000cffc 	strdeq	ip, [r0], -ip	; <UNPREDICTABLE>
    1c04:	00001325 	andeq	r1, r0, r5, lsr #6
    1c08:	00051901 	andeq	r1, r5, r1, lsl #18
    1c0c:	08c10e00 	stmiaeq	r1, {r9, sl, fp}^
    1c10:	4a010000 	bmi	41c18 <__stack+0x2c968>
    1c14:	0002c201 	andeq	ip, r2, r1, lsl #4
    1c18:	00135100 	andseq	r5, r3, r0, lsl #2
    1c1c:	06630e00 	strbteq	r0, [r3], -r0, lsl #28
    1c20:	4b010000 	blmi	41c28 <__stack+0x2c978>
    1c24:	00011f01 	andeq	r1, r1, r1, lsl #30
    1c28:	0013b100 	andseq	fp, r3, r0, lsl #2
    1c2c:	070c0e00 	streq	r0, [ip, -r0, lsl #28]
    1c30:	4b010000 	blmi	41c38 <__stack+0x2c988>
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
    1c5c:	cf501500 	svcgt	0x00501500
    1c60:	07cc0000 	strbeq	r0, [ip, r0]
    1c64:	049a0000 	ldreq	r0, [sl], #0
    1c68:	01100000 	tsteq	r0, r0
    1c6c:	550a0351 	strpl	r0, [sl, #-849]	; 0xfffffcaf
    1c70:	50011001 	andpl	r1, r1, r1
    1c74:	e0bc0305 	adcs	r0, ip, r5, lsl #6
    1c78:	13000000 	movwne	r0, #0
    1c7c:	0000cf74 	andeq	ip, r0, r4, ror pc
    1c80:	000007fe 	strdeq	r0, [r0], -lr
    1c84:	00cf8815 	sbceq	r8, pc, r5, lsl r8	; <UNPREDICTABLE>
    1c88:	0007e500 	andeq	lr, r7, r0, lsl #10
    1c8c:	0004b800 	andeq	fp, r4, r0, lsl #16
    1c90:	51011000 	mrspl	r1, (UNDEF: 1)
    1c94:	1fff0a03 	svcne	0x00ff0a03
    1c98:	cfa01500 	svcgt	0x00a01500
    1c9c:	03a20000 			; <UNDEFINED> instruction: 0x03a20000
    1ca0:	04cc0000 	strbeq	r0, [ip], #0
    1ca4:	01100000 	tsteq	r0, r0
    1ca8:	00750250 	rsbseq	r0, r5, r0, asr r2
    1cac:	cfb41500 	svcgt	0x00b41500
    1cb0:	07e50000 	strbeq	r0, [r5, r0]!
    1cb4:	04e00000 	strbteq	r0, [r0], #0
    1cb8:	01100000 	tsteq	r0, r0
    1cbc:	00740251 	rsbseq	r0, r4, r1, asr r2
    1cc0:	cfcc1500 	svcgt	0x00cc1500
    1cc4:	07cc0000 	strbeq	r0, [ip, r0]
    1cc8:	04fe0000 	ldrbteq	r0, [lr], #0
    1ccc:	01100000 	tsteq	r0, r0
    1cd0:	530a0351 	movwpl	r0, #41809	; 0xa351
    1cd4:	50011001 	andpl	r1, r1, r1
    1cd8:	e0bc0305 	adcs	r0, ip, r5, lsl #6
    1cdc:	0f000000 	svceq	0x00000000
    1ce0:	0000cff0 	strdeq	ip, [r0], -r0
    1ce4:	000007cc 	andeq	r0, r0, ip, asr #15
    1ce8:	03510110 	cmpeq	r1, #16, 2
    1cec:	1001540a 	andne	r5, r1, sl, lsl #8
    1cf0:	03055001 	movweq	r5, #20481	; 0x5001
    1cf4:	0000e0bc 	strheq	lr, [r0], -ip
    1cf8:	01170000 	tsteq	r7, r0
    1cfc:	000007ee 	andeq	r0, r0, lr, ror #15
    1d00:	01021e01 	tsteq	r2, r1, lsl #28
    1d04:	0000008f 	andeq	r0, r0, pc, lsl #1
    1d08:	0000cffc 	strdeq	ip, [r0], -ip	; <UNPREDICTABLE>
    1d0c:	0000d1bc 			; <UNDEFINED> instruction: 0x0000d1bc
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
    1dd4:	d0741500 	rsbsle	r1, r4, r0, lsl #10
    1dd8:	07cc0000 	strbeq	r0, [ip, r0]
    1ddc:	060b0000 	streq	r0, [fp], -r0
    1de0:	01100000 	tsteq	r0, r0
    1de4:	bc030550 	cfstr32lt	mvfx0, [r3], {80}	; 0x50
    1de8:	000000e0 	andeq	r0, r0, r0, ror #1
    1dec:	00d0b413 	sbcseq	fp, r0, r3, lsl r4
    1df0:	0007fe00 	andeq	pc, r7, r0, lsl #28
    1df4:	d13c1500 	teqle	ip, r0, lsl #10
    1df8:	07fe0000 	ldrbeq	r0, [lr, r0]!
    1dfc:	06280000 	strteq	r0, [r8], -r0
    1e00:	01100000 	tsteq	r0, r0
    1e04:	00740250 	rsbseq	r0, r4, r0, asr r2
    1e08:	d14c1500 	cmple	ip, r0, lsl #10
    1e0c:	07e50000 	strbeq	r0, [r5, r0]!
    1e10:	063c0000 	ldrteq	r0, [ip], -r0
    1e14:	01100000 	tsteq	r0, r0
    1e18:	00740250 	rsbseq	r0, r4, r0, asr r2
    1e1c:	d15c1500 	cmple	ip, r0, lsl #10
    1e20:	07e50000 	strbeq	r0, [r5, r0]!
    1e24:	06510000 	ldrbeq	r0, [r1], -r0
    1e28:	01100000 	tsteq	r0, r0
    1e2c:	4c910351 	ldcmi	3, cr0, [r1], {81}	; 0x51
    1e30:	6c150006 	ldcvs	0, cr0, [r5], {6}
    1e34:	e50000d1 	str	r0, [r0, #-209]	; 0xffffff2f
    1e38:	66000007 	strvs	r0, [r0], -r7
    1e3c:	10000006 	andne	r0, r0, r6
    1e40:	7d035101 	stfvcs	f5, [r3, #-4]
    1e44:	15000600 	strne	r0, [r0, #-1536]	; 0xfffffa00
    1e48:	0000d178 	andeq	sp, r0, r8, ror r1
    1e4c:	000007fe 	strdeq	r0, [r0], -lr
    1e50:	0000067a 	andeq	r0, r0, sl, ror r6
    1e54:	02500110 	subseq	r0, r0, #16, 2
    1e58:	15000074 	strne	r0, [r0, #-116]	; 0xffffff8c
    1e5c:	0000d188 	andeq	sp, r0, r8, lsl #3
    1e60:	000007e5 	andeq	r0, r0, r5, ror #15
    1e64:	0000068e 	andeq	r0, r0, lr, lsl #13
    1e68:	02500110 	subseq	r0, r0, #16, 2
    1e6c:	0f000074 	svceq	0x00000074
    1e70:	0000d1a4 	andeq	sp, r0, r4, lsr #3
    1e74:	000007cc 	andeq	r0, r0, ip, asr #15
    1e78:	03510110 	cmpeq	r1, #16, 2
    1e7c:	10022e0a 	andne	r2, r2, sl, lsl #28
    1e80:	03055001 	movweq	r5, #20481	; 0x5001
    1e84:	0000e0bc 	strheq	lr, [r0], -ip
    1e88:	01180000 	tsteq	r8, r0
    1e8c:	000006cc 	andeq	r0, r0, ip, asr #13
    1e90:	8f018501 	svchi	0x00018501
    1e94:	bc000000 	stclt	0, cr0, [r0], {-0}
    1e98:	e00000d1 	ldrd	r0, [r0], -r1
    1e9c:	0d0000d2 	stceq	0, cr0, [r0, #-840]	; 0xfffffcb8
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
    1f00:	34150000 	ldrcc	r0, [r5], #-0
    1f04:	190000d2 	stmdbne	r0, {r1, r4, r6, r7}
    1f08:	35000005 	strcc	r0, [r0, #-5]
    1f0c:	10000007 	andne	r0, r0, r7
    1f10:	74025001 	strvc	r5, [r2], #-1
    1f14:	4c130000 	ldcmi	0, cr0, [r3], {-0}
    1f18:	fe0000d2 	mcr2	0, 0, r0, cr0, cr2, {6}
    1f1c:	13000007 	movwne	r0, #7
    1f20:	0000d260 	andeq	sp, r0, r0, ror #4
    1f24:	000007e5 	andeq	r0, r0, r5, ror #15
    1f28:	00d27015 	sbcseq	r7, r2, r5, lsl r0
    1f2c:	0007e500 	andeq	lr, r7, r0, lsl #10
    1f30:	00075a00 	andeq	r5, r7, r0, lsl #20
    1f34:	51011000 	mrspl	r1, (UNDEF: 1)
    1f38:	15003801 	strne	r3, [r0, #-2049]	; 0xfffff7ff
    1f3c:	0000d280 	andeq	sp, r0, r0, lsl #5
    1f40:	000007e5 	andeq	r0, r0, r5, ror #15
    1f44:	0000076d 	andeq	r0, r0, sp, ror #14
    1f48:	01510110 	cmpeq	r1, r0, lsl r1
    1f4c:	90150031 	andsls	r0, r5, r1, lsr r0
    1f50:	e50000d2 	str	r0, [r0, #-210]	; 0xffffff2e
    1f54:	82000007 	andhi	r0, r0, #7
    1f58:	10000007 	andne	r0, r0, r7
    1f5c:	0a035101 	beq	d6368 <__stack+0xc10b8>
    1f60:	15001fff 	strne	r1, [r0, #-4095]	; 0xfffff001
    1f64:	0000d2ac 	andeq	sp, r0, ip, lsr #5
    1f68:	000007cc 	andeq	r0, r0, ip, asr #15
    1f6c:	0000079f 	muleq	r0, pc, r7	; <UNPREDICTABLE>
    1f70:	02510110 	subseq	r0, r1, #16, 2
    1f74:	01109008 	tsteq	r0, r8
    1f78:	bc030550 	cfstr32lt	mvfx0, [r3], {80}	; 0x50
    1f7c:	000000e0 	andeq	r0, r0, r0, ror #1
    1f80:	00d2cc0f 	sbcseq	ip, r2, pc, lsl #24
    1f84:	0007cc00 	andeq	ip, r7, r0, lsl #24
    1f88:	51011000 	mrspl	r1, (UNDEF: 1)
    1f8c:	108f0802 	addne	r0, pc, r2, lsl #16
    1f90:	03055001 	movweq	r5, #20481	; 0x5001
    1f94:	0000e0bc 	strheq	lr, [r0], -ip
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
    200c:	00d2e000 	sbcseq	lr, r2, r0
    2010:	00d2fc00 	sbcseq	pc, r2, r0, lsl #24
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
    20d4:	0000d2e0 	andeq	sp, r0, r0, ror #5
    20d8:	0000d2fc 	strdeq	sp, [r0], -ip
    20dc:	01007d02 	tsteq	r0, r2, lsl #26
    20e0:	0000011b 	andeq	r0, r0, fp, lsl r1
    20e4:	0008ab09 	andeq	sl, r8, r9, lsl #22
    20e8:	2c5a0100 	ldfcse	f0, [sl], {-0}
    20ec:	9e000000 	cdpls	0, 0, cr0, cr0, cr0, {0}
    20f0:	0a000018 	beq	2158 <_HEAP_SIZE+0x158>
    20f4:	00000933 	andeq	r0, r0, r3, lsr r9
    20f8:	011b5c01 	tsteq	fp, r1, lsl #24
    20fc:	18bf0000 	ldmne	pc!, {}	; <UNPREDICTABLE>
    2100:	6b0b0000 	blvs	2c2108 <__stack+0x2ace58>
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
    213c:	3a010000 	bcc	42144 <__stack+0x2ce94>
    2140:	12000009 	andne	r0, r0, #9
    2144:	fc000000 	stc2	0, cr0, [r0], {-0}
    2148:	0c0000d2 	stceq	0, cr0, [r0], {210}	; 0xd2
    214c:	860000d3 			; <UNDEFINED> instruction: 0x860000d3
    2150:	02000009 	andeq	r0, r0, #9
    2154:	02003875 	andeq	r3, r0, #7667712	; 0x750000
    2158:	00002f5a 	andeq	r2, r0, sl, asr pc
    215c:	08010300 	stmdaeq	r1, {r8, r9}
    2160:	000001a2 	andeq	r0, r0, r2, lsr #3
    2164:	fb070203 	blx	1c297a <__stack+0x1ad6ca>
    2168:	02000001 	andeq	r0, r0, #1
    216c:	00323375 	eorseq	r3, r2, r5, ror r3
    2170:	00485c02 	subeq	r5, r8, r2, lsl #24
    2174:	04030000 	streq	r0, [r3], #-0
    2178:	0002eb07 	andeq	lr, r2, r7, lsl #22
    217c:	07080300 	streq	r0, [r8, -r0, lsl #6]
    2180:	000002e6 	andeq	r0, r0, r6, ror #5
    2184:	ab080103 	blge	202598 <__stack+0x1ed2e8>
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
    21b0:	0000d2fc 	strdeq	sp, [r0], -ip
    21b4:	0000d30c 	andeq	sp, r0, ip, lsl #6
    21b8:	01007d02 	tsteq	r0, r2, lsl #26
    21bc:	000000aa 	andeq	r0, r0, sl, lsr #1
    21c0:	01006306 	tsteq	r0, r6, lsl #6
    21c4:	00005610 	andeq	r5, r0, r0, lsl r6
    21c8:	0018eb00 	andseq	lr, r8, r0, lsl #22
    21cc:	d30c0700 	movwle	r0, #50944	; 0xc700
    21d0:	aa010000 	bge	421d8 <__stack+0x2cf28>
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
    2208:	0000d30c 	andeq	sp, r0, ip, lsl #6
    220c:	0000d350 	andeq	sp, r0, r0, asr r3
    2210:	000009f3 	strdeq	r0, [r0], -r3
    2214:	a2080102 	andge	r0, r8, #-2147483648	; 0x80000000
    2218:	02000001 	andeq	r0, r0, #1
    221c:	01fb0702 	mvnseq	r0, r2, lsl #14
    2220:	04020000 	streq	r0, [r2], #-0
    2224:	0002eb07 	andeq	lr, r2, r7, lsl #22
    2228:	07080200 	streq	r0, [r8, -r0, lsl #4]
    222c:	000002e6 	andeq	r0, r0, r6, ror #5
    2230:	ab080102 	blge	202640 <__stack+0x1ed390>
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
    2284:	6b010000 	blvs	4228c <__stack+0x2cfdc>
    2288:	00d30c01 	sbcseq	r0, r3, r1, lsl #24
    228c:	00d34000 	sbcseq	r4, r3, r0
    2290:	00190c00 	andseq	r0, r9, r0, lsl #24
    2294:	00de0100 	sbcseq	r0, lr, r0, lsl #2
    2298:	7e0a0000 	cdpvc	0, 0, cr0, cr10, cr0, {0}
    229c:	01000009 	tsteq	r0, r9
    22a0:	00007f6b 	andeq	r7, r0, fp, ror #30
    22a4:	00192c00 	andseq	r2, r9, r0, lsl #24
    22a8:	01250a00 	teqeq	r5, r0, lsl #20
    22ac:	6b010000 	blvs	422b4 <__stack+0x2d004>
    22b0:	0000008a 	andeq	r0, r0, sl, lsl #1
    22b4:	0000194d 	andeq	r1, r0, sp, asr #18
    22b8:	00d3280b 	sbcseq	r2, r3, fp, lsl #16
    22bc:	51010c00 	tstpl	r1, r0, lsl #24
    22c0:	5101f303 	tstpl	r1, r3, lsl #6
    22c4:	0350010c 	cmpeq	r0, #12, 2
    22c8:	005001f3 	ldrsheq	r0, [r0], #-19	; 0xffffffed
    22cc:	68010d00 	stmdavs	r1, {r8, sl, fp}
    22d0:	01000009 	tsteq	r0, r9
    22d4:	d3400186 	movtle	r0, #390	; 0x186
    22d8:	d3500000 	cmple	r0, #0
    22dc:	7d020000 	stcvc	0, cr0, [r2, #-0]
    22e0:	01050100 	mrseq	r0, (UNDEF: 21)
    22e4:	950e0000 	strls	r0, [lr, #-0]
    22e8:	01000009 	tsteq	r0, r9
    22ec:	00005d86 	andeq	r5, r0, r6, lsl #27
    22f0:	00500100 	subseq	r0, r0, r0, lsl #2
    22f4:	0009830f 	andeq	r8, r9, pc, lsl #6
    22f8:	5d580100 	ldfple	f0, [r8, #-0]
    22fc:	05000000 	streq	r0, [r0, #-0]
    2300:	01055003 	tsteq	r5, r3
    2304:	081f1000 	ldmdaeq	pc, {ip}	; <UNPREDICTABLE>
    2308:	4e010000 	cdpmi	0, 0, cr0, cr1, cr0, {0}
    230c:	00000128 	andeq	r0, r0, r8, lsr #2
    2310:	a4030501 	strge	r0, [r3], #-1281	; 0xfffffaff
    2314:	02000112 	andeq	r0, r0, #-2147483644	; 0x80000004
    2318:	02f00704 	rscseq	r0, r0, #4, 14	; 0x100000
    231c:	9d100000 	ldcls	0, cr0, [r0, #-0]
    2320:	01000009 	tsteq	r0, r9
    2324:	00008a55 	andeq	r8, r0, r5, asr sl
    2328:	03050100 	movweq	r0, #20736	; 0x5100
    232c:	0000e0d4 	ldrdeq	lr, [r0], -r4
    2330:	0000f100 	andeq	pc, r0, r0, lsl #2
    2334:	82000200 	andhi	r0, r0, #0, 4
    2338:	0400000b 	streq	r0, [r0], #-11
    233c:	00000001 	andeq	r0, r0, r1
    2340:	09b90100 	ldmibeq	r9!, {r8}
    2344:	076e0000 	strbeq	r0, [lr, -r0]!
    2348:	0a4b0000 	beq	12c2350 <__stack+0x12ad0a0>
    234c:	01020000 	mrseq	r0, (UNDEF: 2)
    2350:	0001a208 	andeq	sl, r1, r8, lsl #4
    2354:	31750300 	cmncc	r5, r0, lsl #6
    2358:	5b010036 	blpl	42438 <__stack+0x2d188>
    235c:	0000002f 	andeq	r0, r0, pc, lsr #32
    2360:	fb070202 	blx	1c2b72 <__stack+0x1ad8c2>
    2364:	03000001 	movweq	r0, #1
    2368:	00323375 	eorseq	r3, r2, r5, ror r3
    236c:	00415c01 	subeq	r5, r1, r1, lsl #24
    2370:	04020000 	streq	r0, [r2], #-0
    2374:	0002eb07 	andeq	lr, r2, r7, lsl #22
    2378:	07080200 	streq	r0, [r8, -r0, lsl #4]
    237c:	000002e6 	andeq	r0, r0, r6, ror #5
    2380:	ab080102 	blge	202790 <__stack+0x1ed4e0>
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
    2420:	00e0d803 	rsceq	sp, r0, r3, lsl #16
    2424:	01590000 	cmpeq	r9, r0
    2428:	00020000 	andeq	r0, r2, r0
    242c:	00000c01 	andeq	r0, r0, r1, lsl #24
    2430:	00000104 	andeq	r0, r0, r4, lsl #2
    2434:	d6010000 	strle	r0, [r1], -r0
    2438:	6e000009 	cdpvs	0, 0, cr0, cr0, cr9, {0}
    243c:	50000007 	andpl	r0, r0, r7
    2440:	ac0000d3 	stcge	0, cr0, [r0], {211}	; 0xd3
    2444:	a40000d3 	strge	r0, [r0], #-211	; 0xffffff2d
    2448:	0200000a 	andeq	r0, r0, #10
    244c:	02003875 	andeq	r3, r0, #7667712	; 0x750000
    2450:	00002f5a 	andeq	r2, r0, sl, asr pc
    2454:	08010300 	stmdaeq	r1, {r8, r9}
    2458:	000001a2 	andeq	r0, r0, r2, lsr #3
    245c:	fb070203 	blx	1c2c72 <__stack+0x1ad9c2>
    2460:	02000001 	andeq	r0, r0, #1
    2464:	00323375 	eorseq	r3, r2, r5, ror r3
    2468:	00485c02 	subeq	r5, r8, r2, lsl #24
    246c:	04030000 	streq	r0, [r3], #-0
    2470:	0002eb07 	andeq	lr, r2, r7, lsl #22
    2474:	07080300 	streq	r0, [r8, -r0, lsl #6]
    2478:	000002e6 	andeq	r0, r0, r6, ror #5
    247c:	ab080103 	blge	202890 <__stack+0x1ed5e0>
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
    24a8:	0000d350 	andeq	sp, r0, r0, asr r3
    24ac:	0000d380 	andeq	sp, r0, r0, lsl #7
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
    24d8:	0000d368 	andeq	sp, r0, r8, ror #6
    24dc:	0000012f 	andeq	r0, r0, pc, lsr #2
    24e0:	000000c5 	andeq	r0, r0, r5, asr #1
    24e4:	02500108 	subseq	r0, r0, #8, 2
    24e8:	09000074 	stmdbeq	r0, {r2, r4, r5, r6}
    24ec:	0000d380 	andeq	sp, r0, r0, lsl #7
    24f0:	00014701 	andeq	r4, r1, r1, lsl #14
    24f4:	51010800 	tstpl	r1, r0, lsl #16
    24f8:	08007602 	stmdaeq	r0, {r1, r9, sl, ip, sp, lr}
    24fc:	75025001 	strvc	r5, [r2, #-1]
    2500:	0a000030 	beq	25c8 <_HEAP_SIZE+0x5c8>
    2504:	0009c501 	andeq	ip, r9, r1, lsl #10
    2508:	016c0100 	cmneq	ip, r0, lsl #2
    250c:	00000025 	andeq	r0, r0, r5, lsr #32
    2510:	0000d380 	andeq	sp, r0, r0, lsl #7
    2514:	0000d3ac 	andeq	sp, r0, ip, lsr #7
    2518:	000019cd 	andeq	r1, r0, sp, asr #19
    251c:	00012f01 	andeq	r2, r1, r1, lsl #30
    2520:	07620600 	strbeq	r0, [r2, -r0, lsl #12]!
    2524:	6c010000 	stcvs	0, cr0, [r1], {-0}
    2528:	0000003d 	andeq	r0, r0, sp, lsr r0
    252c:	000019ed 	andeq	r1, r0, sp, ror #19
    2530:	00d39407 	sbcseq	r9, r3, r7, lsl #8
    2534:	00012f00 	andeq	r2, r1, r0, lsl #30
    2538:	00011e00 	andeq	r1, r1, r0, lsl #28
    253c:	50010800 	andpl	r0, r1, r0, lsl #16
    2540:	00007402 	andeq	r7, r0, r2, lsl #8
    2544:	00d3a40b 	sbcseq	sl, r3, fp, lsl #8
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
    259c:	0000d984 	andeq	sp, r0, r4, lsl #19
    25a0:	0000d988 	andeq	sp, r0, r8, lsl #19
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
    2604:	00d98401 	sbcseq	r8, r9, r1, lsl #8
    2608:	00d98800 	sbcseq	r8, r9, r0, lsl #16
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
  18:	0b3a0e03 	bleq	e8382c <__stack+0xe6e57c>
  1c:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
  20:	01120111 	tsteq	r2, r1, lsl r1
  24:	42970640 	addsmi	r0, r7, #64, 12	; 0x4000000
  28:	0013010c 	andseq	r0, r3, ip, lsl #2
  2c:	00050300 	andeq	r0, r5, r0, lsl #6
  30:	0b3a0803 	bleq	e82044 <__stack+0xe6cd94>
  34:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  38:	00000602 	andeq	r0, r0, r2, lsl #12
  3c:	01828904 	orreq	r8, r2, r4, lsl #18
  40:	31011100 	mrscc	r1, (UNDEF: 17)
  44:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
  48:	0b0b000f 	bleq	2c008c <__stack+0x2aaddc>
  4c:	00001349 	andeq	r1, r0, r9, asr #6
  50:	0b002406 	bleq	9070 <OSTaskNameSet+0x18>
  54:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
  58:	0700000e 	streq	r0, [r0, -lr]
  5c:	0c3f012e 	ldfeqs	f0, [pc], #-184	; ffffffac <CPU_ARM_BIT_CNTES_C+0x7fffffac>
  60:	0b3a0e03 	bleq	e83874 <__stack+0xe6e5c4>
  64:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
  68:	00000c3c 	andeq	r0, r0, ip, lsr ip
  6c:	49000508 	stmdbmi	r0, {r3, r8, sl}
  70:	00000013 	andeq	r0, r0, r3, lsl r0
  74:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
  78:	030b130e 	movweq	r1, #45838	; 0xb30e
  7c:	110e1b0e 	tstne	lr, lr, lsl #22
  80:	10011201 	andne	r1, r1, r1, lsl #4
  84:	02000006 	andeq	r0, r0, #6
  88:	0b0b0024 	bleq	2c0120 <__stack+0x2aae70>
  8c:	0e030b3e 	vmoveq.16	d3[0], r0
  90:	16030000 	strne	r0, [r3], -r0
  94:	3a080300 	bcc	200c9c <__stack+0x1eb9ec>
  98:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  9c:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
  a0:	0c3f012e 	ldfeqs	f0, [pc], #-184	; fffffff0 <CPU_ARM_BIT_CNTES_C+0x7ffffff0>
  a4:	0b3a0e03 	bleq	e838b8 <__stack+0xe6e608>
  a8:	0c27053b 	cfstr32eq	mvfx0, [r7], #-236	; 0xffffff14
  ac:	13010b20 	movwne	r0, #6944	; 0x1b20
  b0:	34050000 	strcc	r0, [r5], #-0
  b4:	3a0e0300 	bcc	380cbc <__stack+0x36ba0c>
  b8:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
  bc:	06000013 			; <UNDEFINED> instruction: 0x06000013
  c0:	0000010b 	andeq	r0, r0, fp, lsl #2
  c4:	3f002e07 	svccc	0x00002e07
  c8:	3a0e030c 	bcc	380d00 <__stack+0x36ba50>
  cc:	27053b0b 	strcs	r3, [r5, -fp, lsl #22]
  d0:	000b200c 	andeq	r2, fp, ip
  d4:	00050800 	andeq	r0, r5, r0, lsl #16
  d8:	0b3a0803 	bleq	e820ec <__stack+0xe6ce3c>
  dc:	1349053b 	movtne	r0, #38203	; 0x953b
  e0:	2e090000 	cdpcs	0, 0, cr0, cr9, cr0, {0}
  e4:	030c3f01 	movweq	r3, #52993	; 0xcf01
  e8:	3b0b3a0e 	blcc	2ce928 <__stack+0x2b9678>
  ec:	110c270b 	tstne	ip, fp, lsl #14
  f0:	40011201 	andmi	r1, r1, r1, lsl #4
  f4:	0c429706 	mcrreq	7, 0, r9, r2, cr6
  f8:	00001301 	andeq	r1, r0, r1, lsl #6
  fc:	0300050a 	movweq	r0, #1290	; 0x50a
 100:	3b0b3a08 	blcc	2ce928 <__stack+0x2b9678>
 104:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 108:	0b000006 	bleq	128 <CPU_ARM_CTRL_INT_DIS+0x68>
 10c:	08030005 	stmdaeq	r3, {r0, r2}
 110:	0b3b0b3a 	bleq	ec2e00 <__stack+0xeadb50>
 114:	0a021349 	beq	84e40 <__stack+0x6fb90>
 118:	340c0000 	strcc	r0, [ip], #-0
 11c:	3a0e0300 	bcc	380d24 <__stack+0x36ba74>
 120:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 124:	000b1c13 	andeq	r1, fp, r3, lsl ip
 128:	00340d00 	eorseq	r0, r4, r0, lsl #26
 12c:	0b3a0803 	bleq	e82140 <__stack+0xe6ce90>
 130:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 134:	00000602 	andeq	r0, r0, r2, lsl #12
 138:	0300340e 	movweq	r3, #1038	; 0x40e
 13c:	3b0b3a0e 	blcc	2ce97c <__stack+0x2b96cc>
 140:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 144:	0f00000a 	svceq	0x0000000a
 148:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 14c:	0b3b0b3a 	bleq	ec2e3c <__stack+0xeadb8c>
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
 17c:	3a0e030c 	bcc	380db4 <__stack+0x36bb04>
 180:	27053b0b 	strcs	r3, [r5, -fp, lsl #22]
 184:	1201110c 	andne	r1, r1, #12, 2
 188:	97064001 	strls	r4, [r6, -r1]
 18c:	13010c42 	movwne	r0, #7234	; 0x1c42
 190:	05150000 	ldreq	r0, [r5, #-0]
 194:	3a080300 	bcc	200d9c <__stack+0x1ebaec>
 198:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 19c:	00060213 	andeq	r0, r6, r3, lsl r2
 1a0:	00051600 	andeq	r1, r5, r0, lsl #12
 1a4:	0b3a0803 	bleq	e821b8 <__stack+0xe6cf08>
 1a8:	1349053b 	movtne	r0, #38203	; 0x953b
 1ac:	00000a02 	andeq	r0, r0, r2, lsl #20
 1b0:	03003417 	movweq	r3, #1047	; 0x417
 1b4:	3b0b3a0e 	blcc	2ce9f4 <__stack+0x2b9744>
 1b8:	1c134905 	ldcne	9, cr4, [r3], {5}
 1bc:	1800000b 	stmdane	r0, {r0, r1, r3}
 1c0:	08030034 	stmdaeq	r3, {r2, r4, r5}
 1c4:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 1c8:	06021349 	streq	r1, [r2], -r9, asr #6
 1cc:	34190000 	ldrcc	r0, [r9], #-0
 1d0:	3a0e0300 	bcc	380dd8 <__stack+0x36bb28>
 1d4:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 1d8:	000a0213 	andeq	r0, sl, r3, lsl r2
 1dc:	00341a00 	eorseq	r1, r4, r0, lsl #20
 1e0:	0b3a0e03 	bleq	e839f4 <__stack+0xe6e744>
 1e4:	1349053b 	movtne	r0, #38203	; 0x953b
 1e8:	00000d1c 	andeq	r0, r0, ip, lsl sp
 1ec:	3f012e1b 	svccc	0x00012e1b
 1f0:	3a0e030c 	bcc	380e28 <__stack+0x36bb78>
 1f4:	27053b0b 	strcs	r3, [r5, -fp, lsl #22]
 1f8:	1201110c 	andne	r1, r1, #12, 2
 1fc:	96064001 	strls	r4, [r6], -r1
 200:	13010c42 	movwne	r0, #7234	; 0x1c42
 204:	341c0000 	ldrcc	r0, [ip], #-0
 208:	3a0e0300 	bcc	380e10 <__stack+0x36bb60>
 20c:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 210:	00060213 	andeq	r0, r6, r3, lsl r2
 214:	010b1d00 	tsteq	fp, r0, lsl #26
 218:	01120111 	tsteq	r2, r1, lsl r1
 21c:	0b1e0000 	bleq	780224 <__stack+0x76af74>
 220:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
 224:	00130101 	andseq	r0, r3, r1, lsl #2
 228:	012e1f00 	teqeq	lr, r0, lsl #30
 22c:	01111331 	tsteq	r1, r1, lsr r3
 230:	0a400112 	beq	1000680 <__stack+0xfeb3d0>
 234:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
 238:	20000013 	andcs	r0, r0, r3, lsl r0
 23c:	13310005 	teqne	r1, #5
 240:	00000602 	andeq	r0, r0, r2, lsl #12
 244:	3f012e21 	svccc	0x00012e21
 248:	3a0e030c 	bcc	380e80 <__stack+0x36bbd0>
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
 290:	0a020001 	beq	8029c <__stack+0x6afec>
 294:	000a4291 	muleq	sl, r1, r2
 298:	011d2700 	tsteq	sp, r0, lsl #14
 29c:	01111331 	tsteq	r1, r1, lsr r3
 2a0:	0b580112 	bleq	16006f0 <__stack+0x15eb440>
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
 2e0:	0b3a0e03 	bleq	e83af4 <__stack+0xe6e844>
 2e4:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
 2e8:	01120111 	tsteq	r2, r1, lsl r1
 2ec:	42970a40 	addsmi	r0, r7, #64, 20	; 0x40000
 2f0:	0013010c 	andseq	r0, r3, ip, lsl #2
 2f4:	011d2d00 	tsteq	sp, r0, lsl #26
 2f8:	01111331 	tsteq	r1, r1, lsr r3
 2fc:	0b580112 	bleq	160074c <__stack+0x15eb49c>
 300:	13010b59 	movwne	r0, #7001	; 0x1b59
 304:	2e2e0000 	cdpcs	0, 2, cr0, cr14, cr0, {0}
 308:	030c3f01 	movweq	r3, #52993	; 0xcf01
 30c:	3b0b3a0e 	blcc	2ceb4c <__stack+0x2b989c>
 310:	490c270b 	stmdbmi	ip, {r0, r1, r3, r8, r9, sl, sp}
 314:	010c3c13 	tsteq	ip, r3, lsl ip
 318:	2f000013 	svccs	0x00000013
 31c:	13490005 	movtne	r0, #36869	; 0x9005
 320:	2e300000 	cdpcs	0, 3, cr0, cr0, cr0, {0}
 324:	030c3f01 	movweq	r3, #52993	; 0xcf01
 328:	3b0b3a0e 	blcc	2ceb68 <__stack+0x2b98b8>
 32c:	3c0c270b 	stccc	7, cr2, [ip], {11}
 330:	0000000c 	andeq	r0, r0, ip
 334:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 338:	030b130e 	movweq	r1, #45838	; 0xb30e
 33c:	110e1b0e 	tstne	lr, lr, lsl #22
 340:	10011201 	andne	r1, r1, r1, lsl #4
 344:	02000006 	andeq	r0, r0, #6
 348:	08030016 	stmdaeq	r3, {r1, r2, r4}
 34c:	0b3b0b3a 	bleq	ec303c <__stack+0xeadd8c>
 350:	00001349 	andeq	r1, r0, r9, asr #6
 354:	0b002403 	bleq	9368 <OSTaskQuery+0x10>
 358:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 35c:	0400000e 	streq	r0, [r0], #-14
 360:	0b0b0024 	bleq	2c03f8 <__stack+0x2ab148>
 364:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
 368:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
 36c:	030c3f01 	movweq	r3, #52993	; 0xcf01
 370:	3b0b3a0e 	blcc	2cebb0 <__stack+0x2b9900>
 374:	490c2705 	stmdbmi	ip, {r0, r2, r8, r9, sl, sp}
 378:	010b2013 	tsteq	fp, r3, lsl r0
 37c:	06000013 			; <UNDEFINED> instruction: 0x06000013
 380:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 384:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 388:	00001349 	andeq	r1, r0, r9, asr #6
 38c:	3f012e07 	svccc	0x00012e07
 390:	3a0e030c 	bcc	380fc8 <__stack+0x36bd18>
 394:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 398:	010b200c 	tsteq	fp, ip
 39c:	08000013 	stmdaeq	r0, {r0, r1, r4}
 3a0:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 3a4:	0b3b0b3a 	bleq	ec3094 <__stack+0xeadde4>
 3a8:	00001349 	andeq	r1, r0, r9, asr #6
 3ac:	3f012e09 	svccc	0x00012e09
 3b0:	3a0e030c 	bcc	380fe8 <__stack+0x36bd38>
 3b4:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 3b8:	2013490c 	andscs	r4, r3, ip, lsl #18
 3bc:	0013010b 	andseq	r0, r3, fp, lsl #2
 3c0:	00340a00 	eorseq	r0, r4, r0, lsl #20
 3c4:	0b3a0e03 	bleq	e83bd8 <__stack+0xe6e928>
 3c8:	1349053b 	movtne	r0, #38203	; 0x953b
 3cc:	2e0b0000 	cdpcs	0, 0, cr0, cr11, cr0, {0}
 3d0:	030c3f01 	movweq	r3, #52993	; 0xcf01
 3d4:	3b0b3a0e 	blcc	2cec14 <__stack+0x2b9964>
 3d8:	490c270b 	stmdbmi	ip, {r0, r1, r3, r8, r9, sl, sp}
 3dc:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 3e0:	970a4001 	strls	r4, [sl, -r1]
 3e4:	13010c42 	movwne	r0, #7234	; 0x1c42
 3e8:	050c0000 	streq	r0, [ip, #-0]
 3ec:	3a0e0300 	bcc	380ff4 <__stack+0x36bd44>
 3f0:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 3f4:	00060213 	andeq	r0, r6, r3, lsl r2
 3f8:	012e0d00 	teqeq	lr, r0, lsl #26
 3fc:	01111331 	tsteq	r1, r1, lsr r3
 400:	0a400112 	beq	1000850 <__stack+0xfeb5a0>
 404:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
 408:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
 40c:	13310005 	teqne	r1, #5
 410:	00000602 	andeq	r0, r0, r2, lsl #12
 414:	3f012e0f 	svccc	0x00012e0f
 418:	3a0e030c 	bcc	381050 <__stack+0x36bda0>
 41c:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 420:	1201110c 	andne	r1, r1, #12, 2
 424:	970a4001 	strls	r4, [sl, -r1]
 428:	13010c42 	movwne	r0, #7234	; 0x1c42
 42c:	05100000 	ldreq	r0, [r0, #-0]
 430:	3a0e0300 	bcc	381038 <__stack+0x36bd88>
 434:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 438:	000a0213 	andeq	r0, sl, r3, lsl r2
 43c:	00051100 	andeq	r1, r5, r0, lsl #2
 440:	0a021331 	beq	8510c <__stack+0x6fe5c>
 444:	34120000 	ldrcc	r0, [r2], #-0
 448:	3a0e0300 	bcc	381050 <__stack+0x36bda0>
 44c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 450:	13000013 	movwne	r0, #19
 454:	1331011d 	teqne	r1, #1073741831	; 0x40000007
 458:	01120111 	tsteq	r2, r1, lsl r1
 45c:	0b590b58 	bleq	16431c4 <__stack+0x162df14>
 460:	00001301 	andeq	r1, r0, r1, lsl #6
 464:	31011d14 	tstcc	r1, r4, lsl sp
 468:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 46c:	590b5801 	stmdbpl	fp, {r0, fp, ip, lr}
 470:	1500000b 	strne	r0, [r0, #-11]
 474:	0c3f012e 	ldfeqs	f0, [pc], #-184	; 3c4 <CPU_ARM_CTRL_INT_DIS+0x304>
 478:	0b3a0e03 	bleq	e83c8c <__stack+0xe6e9dc>
 47c:	0c27053b 	cfstr32eq	mvfx0, [r7], #-236	; 0xffffff14
 480:	01111349 	tsteq	r1, r9, asr #6
 484:	0a400112 	beq	10008d4 <__stack+0xfeb624>
 488:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
 48c:	16000013 			; <UNDEFINED> instruction: 0x16000013
 490:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 494:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 498:	06021349 	streq	r1, [r2], -r9, asr #6
 49c:	34170000 	ldrcc	r0, [r7], #-0
 4a0:	3a0e0300 	bcc	3810a8 <__stack+0x36bdf8>
 4a4:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 4a8:	000a0213 	andeq	r0, sl, r3, lsl r2
 4ac:	011d1800 	tsteq	sp, r0, lsl #16
 4b0:	01111331 	tsteq	r1, r1, lsr r3
 4b4:	0b580112 	bleq	1600904 <__stack+0x15eb654>
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
 4ec:	0a400112 	beq	100093c <__stack+0xfeb68c>
 4f0:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
 4f4:	1d000013 	stcne	0, cr0, [r0, #-76]	; 0xffffffb4
 4f8:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 4fc:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 500:	0a021349 	beq	8522c <__stack+0x6ff7c>
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
 538:	0b3e0b0b 	bleq	f8316c <__stack+0xf6debc>
 53c:	00000803 	andeq	r0, r0, r3, lsl #16
 540:	0b000f04 	bleq	4158 <_HEAP_SIZE+0x2158>
 544:	0500000b 	streq	r0, [r0, #-11]
 548:	0b0b000f 	bleq	2c058c <__stack+0x2ab2dc>
 54c:	00001349 	andeq	r1, r0, r9, asr #6
 550:	49002606 	stmdbmi	r0, {r1, r2, r9, sl, sp}
 554:	07000013 	smladeq	r0, r3, r0, r0
 558:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 55c:	0b3b0b3a 	bleq	ec324c <__stack+0xeadf9c>
 560:	00001349 	andeq	r1, r0, r9, asr #6
 564:	03011308 	movweq	r1, #4872	; 0x1308
 568:	3a0b0b0e 	bcc	2c31a8 <__stack+0x2adef8>
 56c:	010b3b0b 	tsteq	fp, fp, lsl #22
 570:	09000013 	stmdbeq	r0, {r0, r1, r4}
 574:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
 578:	0a381349 	beq	e052a4 <__stack+0xdefff4>
 57c:	00000c34 	andeq	r0, r0, r4, lsr ip
 580:	03000d0a 	movweq	r0, #3338	; 0xd0a
 584:	3b0b3a08 	blcc	2cedac <__stack+0x2b9afc>
 588:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
 58c:	0b00000a 	bleq	5bc <_ABORT_STACK_SIZE+0x1bc>
 590:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
 594:	0b3b0b3a 	bleq	ec3284 <__stack+0xeadfd4>
 598:	0a381349 	beq	e052c4 <__stack+0xdf0014>
 59c:	2e0c0000 	cdpcs	0, 0, cr0, cr12, cr0, {0}
 5a0:	3a0e0301 	bcc	3811ac <__stack+0x36befc>
 5a4:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 5a8:	010b200c 	tsteq	fp, ip
 5ac:	0d000013 	stceq	0, cr0, [r0, #-76]	; 0xffffffb4
 5b0:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 5b4:	0b3b0b3a 	bleq	ec32a4 <__stack+0xeadff4>
 5b8:	00001349 	andeq	r1, r0, r9, asr #6
 5bc:	0300050e 	movweq	r0, #1294	; 0x50e
 5c0:	3b0b3a08 	blcc	2cede8 <__stack+0x2b9b38>
 5c4:	0013490b 	andseq	r4, r3, fp, lsl #18
 5c8:	00340f00 	eorseq	r0, r4, r0, lsl #30
 5cc:	0b3a0803 	bleq	e825e0 <__stack+0xe6d330>
 5d0:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 5d4:	2e100000 	cdpcs	0, 1, cr0, cr0, cr0, {0}
 5d8:	3a0e0301 	bcc	3811e4 <__stack+0x36bf34>
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
 614:	0b590b58 	bleq	164337c <__stack+0x162e0cc>
 618:	0b150000 	bleq	540620 <__stack+0x52b370>
 61c:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
 620:	16000001 	strne	r0, [r0], -r1
 624:	13310034 	teqne	r1, #52	; 0x34
 628:	00000a02 	andeq	r0, r0, r2, lsl #20
 62c:	31000517 	tstcc	r0, r7, lsl r5
 630:	18000013 	stmdane	r0, {r0, r1, r4}
 634:	00018289 	andeq	r8, r1, r9, lsl #5
 638:	13310111 	teqne	r1, #1073741828	; 0x40000004
 63c:	2e190000 	cdpcs	0, 1, cr0, cr9, cr0, {0}
 640:	3a0e0301 	bcc	38124c <__stack+0x36bf9c>
 644:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 648:	1201110c 	andne	r1, r1, #12, 2
 64c:	96064001 	strls	r4, [r6], -r1
 650:	13010c42 	movwne	r0, #7234	; 0x1c42
 654:	051a0000 	ldreq	r0, [sl, #-0]
 658:	3a080300 	bcc	201260 <__stack+0x1ebfb0>
 65c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 660:	00060213 	andeq	r0, r6, r3, lsl r2
 664:	00051b00 	andeq	r1, r5, r0, lsl #22
 668:	0b3a0e03 	bleq	e83e7c <__stack+0xe6ebcc>
 66c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 670:	00000602 	andeq	r0, r0, r2, lsl #12
 674:	0300341c 	movweq	r3, #1052	; 0x41c
 678:	3b0b3a08 	blcc	2ceea0 <__stack+0x2b9bf0>
 67c:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 680:	1d000006 	stcne	0, cr0, [r0, #-24]	; 0xffffffe8
 684:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 688:	0b3b0b3a 	bleq	ec3378 <__stack+0xeae0c8>
 68c:	0a021349 	beq	853b8 <__stack+0x70108>
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
 6cc:	3a0e030c 	bcc	381304 <__stack+0x36c054>
 6d0:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 6d4:	1201110c 	andne	r1, r1, #12, 2
 6d8:	97064001 	strls	r4, [r6, -r1]
 6dc:	13010c42 	movwne	r0, #7234	; 0x1c42
 6e0:	05240000 	streq	r0, [r4, #-0]!
 6e4:	3a0e0300 	bcc	3812ec <__stack+0x36c03c>
 6e8:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 6ec:	000a0213 	andeq	r0, sl, r3, lsl r2
 6f0:	00182500 	andseq	r2, r8, r0, lsl #10
 6f4:	34260000 	strtcc	r0, [r6], #-0
 6f8:	3a0e0300 	bcc	381300 <__stack+0x36c050>
 6fc:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 700:	00060213 	andeq	r0, r6, r3, lsl r2
 704:	00342700 	eorseq	r2, r4, r0, lsl #14
 708:	0b3a0803 	bleq	e8271c <__stack+0xe6d46c>
 70c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 710:	00000a02 	andeq	r0, r0, r2, lsl #20
 714:	03000a28 	movweq	r0, #2600	; 0xa28
 718:	3b0b3a0e 	blcc	2cef58 <__stack+0x2b9ca8>
 71c:	2900000b 	stmdbcs	r0, {r0, r1, r3}
 720:	1331011d 	teqne	r1, #1073741831	; 0x40000007
 724:	01120111 	tsteq	r2, r1, lsl r1
 728:	0b590b58 	bleq	1643490 <__stack+0x162e1e0>
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
 754:	0b590b58 	bleq	16434bc <__stack+0x162e20c>
 758:	00001301 	andeq	r1, r0, r1, lsl #6
 75c:	0300342e 	movweq	r3, #1070	; 0x42e
 760:	3b0b3a0e 	blcc	2cefa0 <__stack+0x2b9cf0>
 764:	3f13490b 	svccc	0x0013490b
 768:	000c3c0c 	andeq	r3, ip, ip, lsl #24
 76c:	012e2f00 	teqeq	lr, r0, lsl #30
 770:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 774:	0b3b0b3a 	bleq	ec3464 <__stack+0xeae1b4>
 778:	0c3c0c27 	ldceq	12, cr0, [ip], #-156	; 0xffffff64
 77c:	00001301 	andeq	r1, r0, r1, lsl #6
 780:	49000530 	stmdbmi	r0, {r4, r5, r8, sl}
 784:	31000013 	tstcc	r0, r3, lsl r0
 788:	0c3f012e 	ldfeqs	f0, [pc], #-184	; 6d8 <_ABORT_STACK_SIZE+0x2d8>
 78c:	0b3a0e03 	bleq	e83fa0 <__stack+0xe6ecf0>
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
 7bc:	0b3a0803 	bleq	e827d0 <__stack+0xe6d520>
 7c0:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 7c4:	0f040000 	svceq	0x00040000
 7c8:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 7cc:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
 7d0:	13490026 	movtne	r0, #36902	; 0x9026
 7d4:	24060000 	strcs	r0, [r6], #-0
 7d8:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 7dc:	0008030b 	andeq	r0, r8, fp, lsl #6
 7e0:	01130700 	tsteq	r3, r0, lsl #14
 7e4:	0b3a0b0b 	bleq	e83418 <__stack+0xe6e168>
 7e8:	1301053b 	movwne	r0, #5435	; 0x153b
 7ec:	0d080000 	stceq	0, cr0, [r8, #-0]
 7f0:	3a0e0300 	bcc	3813f8 <__stack+0x36c148>
 7f4:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 7f8:	000a3813 	andeq	r3, sl, r3, lsl r8
 7fc:	00160900 	andseq	r0, r6, r0, lsl #18
 800:	0b3a0e03 	bleq	e84014 <__stack+0xe6ed64>
 804:	1349053b 	movtne	r0, #38203	; 0x953b
 808:	150a0000 	strne	r0, [sl, #-0]
 80c:	010c2701 	tsteq	ip, r1, lsl #14
 810:	0b000013 	bleq	864 <_SUPERVISOR_STACK_SIZE+0x64>
 814:	13490005 	movtne	r0, #36869	; 0x9005
 818:	0f0c0000 	svceq	0x000c0000
 81c:	000b0b00 	andeq	r0, fp, r0, lsl #22
 820:	012e0d00 	teqeq	lr, r0, lsl #26
 824:	0b3a0e03 	bleq	e84038 <__stack+0xe6ed88>
 828:	0c27053b 	cfstr32eq	mvfx0, [r7], #-236	; 0xffffff14
 82c:	01120111 	tsteq	r2, r1, lsl r1
 830:	42970640 	addsmi	r0, r7, #64, 12	; 0x4000000
 834:	0013010c 	andseq	r0, r3, ip, lsl #2
 838:	00050e00 	andeq	r0, r5, r0, lsl #28
 83c:	0b3a0e03 	bleq	e84050 <__stack+0xe6eda0>
 840:	1349053b 	movtne	r0, #38203	; 0x953b
 844:	00000602 	andeq	r0, r0, r2, lsl #12
 848:	0182890f 	orreq	r8, r2, pc, lsl #18
 84c:	31011101 	tstcc	r1, r1, lsl #2
 850:	10000013 	andne	r0, r0, r3, lsl r0
 854:	0001828a 	andeq	r8, r1, sl, lsl #5
 858:	42910a02 	addsmi	r0, r1, #8192	; 0x2000
 85c:	1100000a 	tstne	r0, sl
 860:	0c3f012e 	ldfeqs	f0, [pc], #-184	; 7b0 <_ABORT_STACK_SIZE+0x3b0>
 864:	0b3a0e03 	bleq	e84078 <__stack+0xe6edc8>
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
 898:	0b3a0e03 	bleq	e840ac <__stack+0xe6edfc>
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
 8c4:	0b3a0e03 	bleq	e840d8 <__stack+0xe6ee28>
 8c8:	0c27053b 	cfstr32eq	mvfx0, [r7], #-236	; 0xffffff14
 8cc:	01111349 	tsteq	r1, r9, asr #6
 8d0:	06400112 			; <UNDEFINED> instruction: 0x06400112
 8d4:	010c4296 			; <UNDEFINED> instruction: 0x010c4296
 8d8:	18000013 	stmdane	r0, {r0, r1, r4}
 8dc:	0c3f012e 	ldfeqs	f0, [pc], #-184	; 82c <_SUPERVISOR_STACK_SIZE+0x2c>
 8e0:	0b3a0e03 	bleq	e840f4 <__stack+0xe6ee44>
 8e4:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
 8e8:	01111349 	tsteq	r1, r9, asr #6
 8ec:	06400112 			; <UNDEFINED> instruction: 0x06400112
 8f0:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
 8f4:	19000013 	stmdbne	r0, {r0, r1, r4}
 8f8:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 8fc:	0b3b0b3a 	bleq	ec35ec <__stack+0xeae33c>
 900:	06021349 	streq	r1, [r2], -r9, asr #6
 904:	341a0000 	ldrcc	r0, [sl], #-0
 908:	3a0e0300 	bcc	381510 <__stack+0x36c260>
 90c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 910:	00060213 	andeq	r0, r6, r3, lsl r2
 914:	00341b00 	eorseq	r1, r4, r0, lsl #22
 918:	0b3a0e03 	bleq	e8412c <__stack+0xe6ee7c>
 91c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 920:	0c3c0c3f 	ldceq	12, cr0, [ip], #-252	; 0xffffff04
 924:	2e1c0000 	cdpcs	0, 1, cr0, cr12, cr0, {0}
 928:	030c3f01 	movweq	r3, #52993	; 0xcf01
 92c:	3b0b3a0e 	blcc	2cf16c <__stack+0x2b9ebc>
 930:	3c0c270b 	stccc	7, cr2, [ip], {11}
 934:	0013010c 	andseq	r0, r3, ip, lsl #2
 938:	012e1d00 	teqeq	lr, r0, lsl #26
 93c:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 940:	0b3b0b3a 	bleq	ec3630 <__stack+0xeae380>
 944:	13490c27 	movtne	r0, #39975	; 0x9c27
 948:	00000c3c 	andeq	r0, r0, ip, lsr ip
 94c:	01110100 	tsteq	r1, r0, lsl #2
 950:	0b130e25 	bleq	4c41ec <__stack+0x4aef3c>
 954:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 958:	01120111 	tsteq	r2, r1, lsl r1
 95c:	00000610 	andeq	r0, r0, r0, lsl r6
 960:	0b002402 	bleq	9970 <OS_CPU_ARM_ExceptHndlr_BrkExcept+0x44>
 964:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 968:	0300000e 	movweq	r0, #14
 96c:	08030016 	stmdaeq	r3, {r1, r2, r4}
 970:	0b3b0b3a 	bleq	ec3660 <__stack+0xeae3b0>
 974:	00001349 	andeq	r1, r0, r9, asr #6
 978:	0b002404 	bleq	9990 <OS_CPU_ARM_ExceptHndlr_BrkIRQ+0xc>
 97c:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 980:	05000008 	streq	r0, [r0, #-8]
 984:	0b0b0113 	bleq	2c0dd8 <__stack+0x2abb28>
 988:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 98c:	00001301 	andeq	r1, r0, r1, lsl #6
 990:	03000d06 	movweq	r0, #3334	; 0xd06
 994:	3b0b3a0e 	blcc	2cf1d4 <__stack+0x2b9f24>
 998:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
 99c:	0700000a 	streq	r0, [r0, -sl]
 9a0:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 9a4:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 9a8:	00001349 	andeq	r1, r0, r9, asr #6
 9ac:	3f012e08 	svccc	0x00012e08
 9b0:	3a0e030c 	bcc	3815e8 <__stack+0x36c338>
 9b4:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 9b8:	1113490c 	tstne	r3, ip, lsl #18
 9bc:	40011201 	andmi	r1, r1, r1, lsl #4
 9c0:	0c42970a 	mcrreq	7, 0, r9, r2, cr10
 9c4:	00001301 	andeq	r1, r0, r1, lsl #6
 9c8:	03000509 	movweq	r0, #1289	; 0x509
 9cc:	3b0b3a0e 	blcc	2cf20c <__stack+0x2b9f5c>
 9d0:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 9d4:	0a000006 	beq	9f4 <_SUPERVISOR_STACK_SIZE+0x1f4>
 9d8:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 9dc:	0b3b0b3a 	bleq	ec36cc <__stack+0xeae41c>
 9e0:	06021349 	streq	r1, [r2], -r9, asr #6
 9e4:	340b0000 	strcc	r0, [fp], #-0
 9e8:	3a0e0300 	bcc	3815f0 <__stack+0x36c340>
 9ec:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 9f0:	000b1c13 	andeq	r1, fp, r3, lsl ip
 9f4:	000f0c00 	andeq	r0, pc, r0, lsl #24
 9f8:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 9fc:	010d0000 	mrseq	r0, (UNDEF: 13)
 a00:	01134901 	tsteq	r3, r1, lsl #18
 a04:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
 a08:	00000021 	andeq	r0, r0, r1, lsr #32
 a0c:	0300340f 	movweq	r3, #1039	; 0x40f
 a10:	3b0b3a0e 	blcc	2cf250 <__stack+0x2b9fa0>
 a14:	3f13490b 	svccc	0x0013490b
 a18:	000c3c0c 	andeq	r3, ip, ip, lsl #24
 a1c:	11010000 	mrsne	r0, (UNDEF: 1)
 a20:	130e2501 	movwne	r2, #58625	; 0xe501
 a24:	1b0e030b 	blne	381658 <__stack+0x36c3a8>
 a28:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 a2c:	00061001 	andeq	r1, r6, r1
 a30:	00160200 	andseq	r0, r6, r0, lsl #4
 a34:	0b3a0803 	bleq	e82a48 <__stack+0xe6d798>
 a38:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 a3c:	24030000 	strcs	r0, [r3], #-0
 a40:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 a44:	000e030b 	andeq	r0, lr, fp, lsl #6
 a48:	00240400 	eoreq	r0, r4, r0, lsl #8
 a4c:	0b3e0b0b 	bleq	f83680 <__stack+0xf6e3d0>
 a50:	00000803 	andeq	r0, r0, r3, lsl #16
 a54:	3f012e05 	svccc	0x00012e05
 a58:	3a0e030c 	bcc	381690 <__stack+0x36c3e0>
 a5c:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 a60:	1201110c 	andne	r1, r1, #12, 2
 a64:	970a4001 	strls	r4, [sl, -r1]
 a68:	13010c42 	movwne	r0, #7234	; 0x1c42
 a6c:	05060000 	streq	r0, [r6, #-0]
 a70:	3a080300 	bcc	201678 <__stack+0x1ec3c8>
 a74:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 a78:	00060213 	andeq	r0, r6, r3, lsl r2
 a7c:	82890700 	addhi	r0, r9, #0, 14
 a80:	01110001 	tsteq	r1, r1
 a84:	310c4295 			; <UNDEFINED> instruction: 0x310c4295
 a88:	08000013 	stmdaeq	r0, {r0, r1, r4}
 a8c:	0c3f012e 	ldfeqs	f0, [pc], #-184	; 9dc <_SUPERVISOR_STACK_SIZE+0x1dc>
 a90:	0b3a0e03 	bleq	e842a4 <__stack+0xe6eff4>
 a94:	0c27053b 	cfstr32eq	mvfx0, [r7], #-236	; 0xffffff14
 a98:	00000c3c 	andeq	r0, r0, ip, lsr ip
 a9c:	49000509 	stmdbmi	r0, {r0, r3, r8, sl}
 aa0:	00000013 	andeq	r0, r0, r3, lsl r0
 aa4:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 aa8:	030b130e 	movweq	r1, #45838	; 0xb30e
 aac:	110e1b0e 	tstne	lr, lr, lsl #22
 ab0:	10011201 	andne	r1, r1, r1, lsl #4
 ab4:	02000006 	andeq	r0, r0, #6
 ab8:	0b0b0024 	bleq	2c0b50 <__stack+0x2ab8a0>
 abc:	0e030b3e 	vmoveq.16	d3[0], r0
 ac0:	16030000 	strne	r0, [r3], -r0
 ac4:	3a0e0300 	bcc	3816cc <__stack+0x36c41c>
 ac8:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 acc:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
 ad0:	0b0b000f 	bleq	2c0b14 <__stack+0x2ab864>
 ad4:	00001349 	andeq	r1, r0, r9, asr #6
 ad8:	27011505 	strcs	r1, [r1, -r5, lsl #10]
 adc:	0013010c 	andseq	r0, r3, ip, lsl #2
 ae0:	00050600 	andeq	r0, r5, r0, lsl #12
 ae4:	00001349 	andeq	r1, r0, r9, asr #6
 ae8:	49002607 	stmdbmi	r0, {r0, r1, r2, r9, sl, sp}
 aec:	08000013 	stmdaeq	r0, {r0, r1, r4}
 af0:	0b0b0024 	bleq	2c0b88 <__stack+0x2ab8d8>
 af4:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
 af8:	2e090000 	cdpcs	0, 0, cr0, cr9, cr0, {0}
 afc:	030c3f01 	movweq	r3, #52993	; 0xcf01
 b00:	3b0b3a0e 	blcc	2cf340 <__stack+0x2ba090>
 b04:	110c270b 	tstne	ip, fp, lsl #14
 b08:	40011201 	andmi	r1, r1, r1, lsl #4
 b0c:	0c429706 	mcrreq	7, 0, r9, r2, cr6
 b10:	00001301 	andeq	r1, r0, r1, lsl #6
 b14:	0300050a 	movweq	r0, #1290	; 0x50a
 b18:	3b0b3a0e 	blcc	2cf358 <__stack+0x2ba0a8>
 b1c:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 b20:	0b000006 	bleq	b40 <_SUPERVISOR_STACK_SIZE+0x340>
 b24:	01018289 	smlabbeq	r1, r9, r2, r8
 b28:	00000111 	andeq	r0, r0, r1, lsl r1
 b2c:	01828a0c 	orreq	r8, r2, ip, lsl #20
 b30:	910a0200 	mrsls	r0, R10_fiq
 b34:	00000a42 	andeq	r0, r0, r2, asr #20
 b38:	3f012e0d 	svccc	0x00012e0d
 b3c:	3a0e030c 	bcc	381774 <__stack+0x36c4c4>
 b40:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 b44:	1201110c 	andne	r1, r1, #12, 2
 b48:	970a4001 	strls	r4, [sl, -r1]
 b4c:	13010c42 	movwne	r0, #7234	; 0x1c42
 b50:	050e0000 	streq	r0, [lr, #-0]
 b54:	3a0e0300 	bcc	38175c <__stack+0x36c4ac>
 b58:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 b5c:	000a0213 	andeq	r0, sl, r3, lsl r2
 b60:	00340f00 	eorseq	r0, r4, r0, lsl #30
 b64:	0b3a0e03 	bleq	e84378 <__stack+0xe6f0c8>
 b68:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 b6c:	00000a02 	andeq	r0, r0, r2, lsl #20
 b70:	03003410 	movweq	r3, #1040	; 0x410
 b74:	3b0b3a0e 	blcc	2cf3b4 <__stack+0x2ba104>
 b78:	3f13490b 	svccc	0x0013490b
 b7c:	000a020c 	andeq	r0, sl, ip, lsl #4
 b80:	11010000 	mrsne	r0, (UNDEF: 1)
 b84:	130e2501 	movwne	r2, #58625	; 0xe501
 b88:	1b0e030b 	blne	3817bc <__stack+0x36c50c>
 b8c:	0006100e 	andeq	r1, r6, lr
 b90:	00240200 	eoreq	r0, r4, r0, lsl #4
 b94:	0b3e0b0b 	bleq	f837c8 <__stack+0xf6e518>
 b98:	00000e03 	andeq	r0, r0, r3, lsl #28
 b9c:	03001603 	movweq	r1, #1539	; 0x603
 ba0:	3b0b3a08 	blcc	2cf3c8 <__stack+0x2ba118>
 ba4:	0013490b 	andseq	r4, r3, fp, lsl #18
 ba8:	00240400 	eoreq	r0, r4, r0, lsl #8
 bac:	0b3e0b0b 	bleq	f837e0 <__stack+0xf6e530>
 bb0:	00000803 	andeq	r0, r0, r3, lsl #16
 bb4:	0b011305 	bleq	457d0 <__stack+0x30520>
 bb8:	3b0b3a0b 	blcc	2cf3ec <__stack+0x2ba13c>
 bbc:	00130105 	andseq	r0, r3, r5, lsl #2
 bc0:	000d0600 	andeq	r0, sp, r0, lsl #12
 bc4:	0b3a0e03 	bleq	e843d8 <__stack+0xe6f128>
 bc8:	1349053b 	movtne	r0, #38203	; 0x953b
 bcc:	00000a38 	andeq	r0, r0, r8, lsr sl
 bd0:	03001607 	movweq	r1, #1543	; 0x607
 bd4:	3b0b3a0e 	blcc	2cf414 <__stack+0x2ba164>
 bd8:	00134905 	andseq	r4, r3, r5, lsl #18
 bdc:	01010800 	tsteq	r1, r0, lsl #16
 be0:	13011349 	movwne	r1, #4937	; 0x1349
 be4:	21090000 	mrscs	r0, (UNDEF: 9)
 be8:	2f134900 	svccs	0x00134900
 bec:	0a00000b 	beq	c20 <_SUPERVISOR_STACK_SIZE+0x420>
 bf0:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 bf4:	0b3b0b3a 	bleq	ec38e4 <__stack+0xeae634>
 bf8:	0c3f1349 	ldceq	3, cr1, [pc], #-292	; adc <_SUPERVISOR_STACK_SIZE+0x2dc>
 bfc:	00000a02 	andeq	r0, r0, r2, lsl #20
 c00:	01110100 	tsteq	r1, r0, lsl #2
 c04:	0b130e25 	bleq	4c44a0 <__stack+0x4af1f0>
 c08:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 c0c:	01120111 	tsteq	r2, r1, lsl r1
 c10:	00000610 	andeq	r0, r0, r0, lsl r6
 c14:	03001602 	movweq	r1, #1538	; 0x602
 c18:	3b0b3a08 	blcc	2cf440 <__stack+0x2ba190>
 c1c:	0013490b 	andseq	r4, r3, fp, lsl #18
 c20:	00240300 	eoreq	r0, r4, r0, lsl #6
 c24:	0b3e0b0b 	bleq	f83858 <__stack+0xf6e5a8>
 c28:	00000e03 	andeq	r0, r0, r3, lsl #28
 c2c:	0b002404 	bleq	9c44 <OSTaskStkInit+0xa4>
 c30:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 c34:	05000008 	streq	r0, [r0, #-8]
 c38:	0c3f012e 	ldfeqs	f0, [pc], #-184	; b88 <_SUPERVISOR_STACK_SIZE+0x388>
 c3c:	0b3a0e03 	bleq	e84450 <__stack+0xe6f1a0>
 c40:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
 c44:	01120111 	tsteq	r2, r1, lsl r1
 c48:	42970640 	addsmi	r0, r7, #64, 12	; 0x4000000
 c4c:	0013010c 	andseq	r0, r3, ip, lsl #2
 c50:	00050600 	andeq	r0, r5, r0, lsl #12
 c54:	0b3a0e03 	bleq	e84468 <__stack+0xe6f1b8>
 c58:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 c5c:	00000602 	andeq	r0, r0, r2, lsl #12
 c60:	01828907 	orreq	r8, r2, r7, lsl #18
 c64:	31011101 	tstcc	r1, r1, lsl #2
 c68:	00130113 	andseq	r0, r3, r3, lsl r1
 c6c:	828a0800 	addhi	r0, sl, #0, 16
 c70:	0a020001 	beq	80c7c <__stack+0x6b9cc>
 c74:	000a4291 	muleq	sl, r1, r2
 c78:	82890900 	addhi	r0, r9, #0, 18
 c7c:	01110101 	tsteq	r1, r1, lsl #2
 c80:	310c4295 			; <UNDEFINED> instruction: 0x310c4295
 c84:	0a000013 	beq	cd8 <_SUPERVISOR_STACK_SIZE+0x4d8>
 c88:	0c3f012e 	ldfeqs	f0, [pc], #-184	; bd8 <_SUPERVISOR_STACK_SIZE+0x3d8>
 c8c:	0b3a0e03 	bleq	e844a0 <__stack+0xe6f1f0>
 c90:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
 c94:	01111349 	tsteq	r1, r9, asr #6
 c98:	06400112 			; <UNDEFINED> instruction: 0x06400112
 c9c:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
 ca0:	0b000013 	bleq	cf4 <_SUPERVISOR_STACK_SIZE+0x4f4>
 ca4:	01018289 	smlabbeq	r1, r9, r2, r8
 ca8:	13310111 	teqne	r1, #1073741828	; 0x40000004
 cac:	2e0c0000 	cdpcs	0, 0, cr0, cr12, cr0, {0}
 cb0:	030c3f01 	movweq	r3, #52993	; 0xcf01
 cb4:	3b0b3a0e 	blcc	2cf4f4 <__stack+0x2ba244>
 cb8:	490c270b 	stmdbmi	ip, {r0, r1, r3, r8, r9, sl, sp}
 cbc:	010c3c13 	tsteq	ip, r3, lsl ip
 cc0:	0d000013 	stceq	0, cr0, [r0, #-76]	; 0xffffffb4
 cc4:	13490005 	movtne	r0, #36869	; 0x9005
 cc8:	2e0e0000 	cdpcs	0, 0, cr0, cr14, cr0, {0}
 ccc:	030c3f01 	movweq	r3, #52993	; 0xcf01
 cd0:	3b0b3a0e 	blcc	2cf510 <__stack+0x2ba260>
 cd4:	3c0c270b 	stccc	7, cr2, [ip], {11}
 cd8:	0000000c 	andeq	r0, r0, ip
 cdc:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 ce0:	030b130e 	movweq	r1, #45838	; 0xb30e
 ce4:	110e1b0e 	tstne	lr, lr, lsl #22
 ce8:	10011201 	andne	r1, r1, r1, lsl #4
 cec:	02000006 	andeq	r0, r0, #6
 cf0:	0b0b0024 	bleq	2c0d88 <__stack+0x2abad8>
 cf4:	0e030b3e 	vmoveq.16	d3[0], r0
 cf8:	24030000 	strcs	r0, [r3], #-0
 cfc:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 d00:	0008030b 	andeq	r0, r8, fp, lsl #6
 d04:	012e0400 	teqeq	lr, r0, lsl #8
 d08:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 d0c:	0b3b0b3a 	bleq	ec39fc <__stack+0xeae74c>
 d10:	01110c27 	tsteq	r1, r7, lsr #24
 d14:	0a400112 	beq	1001164 <__stack+0xfebeb4>
 d18:	000c4297 	muleq	ip, r7, r2
 d1c:	00050500 	andeq	r0, r5, r0, lsl #10
 d20:	0b3a0e03 	bleq	e84534 <__stack+0xe6f284>
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
     fd0:	5b510001 	blpl	1440fdc <__stack+0x142bd2c>
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
    1438:	6b520001 	blvs	1481444 <__stack+0x146c194>
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
    16d8:	1b25f700 	blne	97f2e0 <__stack+0x96a030>
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
    1934:	1b500001 	blne	1401940 <__stack+0x13ec690>
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
  10:	0000bec0 	andeq	fp, r0, r0, asr #29
  14:	00000028 	andeq	r0, r0, r8, lsr #32
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	00760002 	rsbseq	r0, r6, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	0000bee8 	andeq	fp, r0, r8, ror #29
  34:	00000708 	andeq	r0, r0, r8, lsl #14
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	0db00002 	ldceq	0, cr0, [r0, #8]!
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	0000c5f0 	strdeq	ip, [r0], -r0
  54:	00000100 	andeq	r0, r0, r0, lsl #2
	...
  60:	0000001c 	andeq	r0, r0, ip, lsl r0
  64:	12760002 	rsbsne	r0, r6, #2
  68:	00040000 	andeq	r0, r4, r0
  6c:	00000000 	andeq	r0, r0, r0
  70:	0000c6f0 	strdeq	ip, [r0], -r0
  74:	000005f4 	strdeq	r0, [r0], -r4
	...
  80:	0000001c 	andeq	r0, r0, ip, lsl r0
  84:	17e10002 	strbne	r0, [r1, r2]!
  88:	00040000 	andeq	r0, r4, r0
  8c:	00000000 	andeq	r0, r0, r0
  90:	0000cce4 	andeq	ip, r0, r4, ror #25
  94:	000005fc 	strdeq	r0, [r0], -ip
	...
  a0:	0000001c 	andeq	r0, r0, ip, lsl r0
  a4:	1ff40002 	svcne	0x00f40002
  a8:	00040000 	andeq	r0, r4, r0
  ac:	00000000 	andeq	r0, r0, r0
  b0:	0000d2e0 	andeq	sp, r0, r0, ror #5
  b4:	0000001c 	andeq	r0, r0, ip, lsl r0
	...
  c0:	0000001c 	andeq	r0, r0, ip, lsl r0
  c4:	212e0002 	teqcs	lr, r2
  c8:	00040000 	andeq	r0, r4, r0
  cc:	00000000 	andeq	r0, r0, r0
  d0:	0000d2fc 	strdeq	sp, [r0], -ip
  d4:	00000010 	andeq	r0, r0, r0, lsl r0
	...
  e0:	0000001c 	andeq	r0, r0, ip, lsl r0
  e4:	21ef0002 	mvncs	r0, r2
  e8:	00040000 	andeq	r0, r4, r0
  ec:	00000000 	andeq	r0, r0, r0
  f0:	0000d30c 	andeq	sp, r0, ip, lsl #6
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
 128:	0000d350 	andeq	sp, r0, r0, asr r3
 12c:	0000005c 	andeq	r0, r0, ip, asr r0
	...
 138:	0000001c 	andeq	r0, r0, ip, lsl r0
 13c:	25830002 	strcs	r0, [r3, #2]
 140:	00040000 	andeq	r0, r4, r0
 144:	00000000 	andeq	r0, r0, r0
 148:	0000d984 	andeq	sp, r0, r4, lsl #19
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
  28:	c0020500 	andgt	r0, r2, r0, lsl #10
  2c:	030000be 	movweq	r0, #190	; 0xbe
  30:	2f2e0117 	svccs	0x002e0117
  34:	08022d67 	stmdaeq	r2, {r0, r1, r2, r5, r6, r8, sl, fp, sp}
  38:	cf010100 	svcgt	0x00010100
  3c:	02000002 	andeq	r0, r0, #2
  40:	00003d00 	andeq	r3, r0, r0, lsl #26
  44:	fb010200 	blx	4084e <__stack+0x2b59e>
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
  84:	00bee802 	adcseq	lr, lr, r2, lsl #16
  88:	01a90300 			; <UNDEFINED> instruction: 0x01a90300
  8c:	79031901 	stmdbvc	r3, {r0, r8, fp, ip}
  90:	3232352e 	eorscc	r3, r2, #192937984	; 0xb800000
  94:	0330312b 	teqeq	r0, #-1073741814	; 0xc000000a
  98:	78034a0b 	stmdavc	r3, {r0, r1, r3, r9, fp, lr}
  9c:	032f364a 	teqeq	pc, #77594624	; 0x4a00000
  a0:	11032e74 	tstne	r3, r4, ror lr
  a4:	0402004a 	streq	r0, [r2], #-74	; 0xffffffb6
  a8:	02003101 	andeq	r3, r0, #1073741824	; 0x40000000
  ac:	4b680104 	blmi	1a004c4 <__stack+0x19eb214>
  b0:	192e3803 	stmdbne	lr!, {r0, r1, fp, ip, sp}
  b4:	352e7903 	strcc	r7, [lr, #-2307]!	; 0xfffff6fd
  b8:	312b3232 	teqcc	fp, r2, lsr r2
  bc:	4a0b0330 	bmi	2c0d84 <__stack+0x2abad4>
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
 13c:	4a7f8803 	bmi	1fe2150 <__stack+0x1fccea0>
 140:	314f3333 	cmpcc	pc, r3, lsr r3	; <UNPREDICTABLE>
 144:	00f70330 	rscseq	r0, r7, r0, lsr r3
 148:	4c4b134a 	mcrrmi	3, 4, r1, fp, cr10
 14c:	164a1403 	strbne	r1, [sl], -r3, lsl #8
 150:	312b324e 	teqcc	fp, lr, asr #4
 154:	03364c30 	teqeq	r6, #48, 24	; 0x3000
 158:	0f032e76 	svceq	0x00032e76
 15c:	4a10034a 	bmi	400e8c <__stack+0x3ebbdc>
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
 1bc:	4b134a13 	blmi	4d2a10 <__stack+0x4bd760>
 1c0:	4a0f034c 	bmi	3c0ef8 <__stack+0x3abc48>
 1c4:	314f3317 	cmpcc	pc, r7, lsl r3	; <UNPREDICTABLE>
 1c8:	4a0f0330 	bmi	3c0e90 <__stack+0x3abbe0>
 1cc:	334e3115 	movtcc	r3, #57621	; 0xe115
 1d0:	4a0f0330 	bmi	3c0e98 <__stack+0x3abbe8>
 1d4:	034c4c13 	movteq	r4, #52243	; 0xcc13
 1d8:	4b134a11 	blmi	4d2a24 <__stack+0x4bd774>
 1dc:	4a14034c 	bmi	500f14 <__stack+0x4ebc64>
 1e0:	2b324e16 	blcs	c93a40 <__stack+0xc7e790>
 1e4:	364c3031 			; <UNDEFINED> instruction: 0x364c3031
 1e8:	032e7603 	teqeq	lr, #3145728	; 0x300000
 1ec:	0f034a0f 	svceq	0x00034a0f
 1f0:	4c69314a 	stfmie	f3, [r9], #-296	; 0xfffffed8
 1f4:	2f2d3068 	svccs	0x002d3068
 1f8:	84868468 	strhi	r8, [r6], #1128	; 0x468
 1fc:	6b2d6969 	blvs	b5a7a8 <__stack+0xb454f8>
 200:	4a7ad003 	bmi	1eb4214 <__stack+0x1e9ef64>
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
 240:	ca032d30 	bgt	cb708 <__stack+0xb6458>
 244:	46162e07 	ldrmi	r2, [r6], -r7, lsl #28
 248:	04020032 	streq	r0, [r2], #-50	; 0xffffffce
 24c:	02004f01 	andeq	r4, r0, #1, 30
 250:	4d680104 	stfmie	f0, [r8, #-16]!
 254:	4a7aaf03 	bmi	1eabe68 <__stack+0x1e96bb8>
 258:	01049503 	tsteq	r4, r3, lsl #10
 25c:	ea034c4c 	b	d3394 <__stack+0xbe0e4>
 260:	03112e7b 	tsteq	r1, #1968	; 0x7b0
 264:	2f2e7e86 	svccs	0x002e7e86
 268:	da032d30 	ble	cb730 <__stack+0xb6480>
 26c:	2d2f2e07 	stccs	14, cr2, [pc, #-28]!	; 258 <CPU_ARM_CTRL_INT_DIS+0x198>
 270:	ab034d2f 	blge	d3734 <__stack+0xbe484>
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
 2cc:	fa034a78 	blx	d2cb4 <__stack+0xbda04>
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
 348:	00c5f002 	sbceq	pc, r5, r2
 34c:	00e70300 	rsceq	r0, r7, r0, lsl #6
 350:	2f2f1601 	svccs	0x002f1601
 354:	162e1103 	strtne	r1, [lr], -r3, lsl #2
 358:	11032f2f 	tstne	r3, pc, lsr #30
 35c:	2f2f162e 	svccs	0x002f162e
 360:	162e1203 	strtne	r1, [lr], -r3, lsl #4
 364:	4a13032f 	bmi	4c1028 <__stack+0x4abd78>
 368:	13032f16 	movwne	r2, #16150	; 0x3f16
 36c:	032f164a 	teqeq	pc, #77594624	; 0x4a00000
 370:	8d034a13 	vstrhi	s8, [r3, #-76]	; 0xffffffb4
 374:	032f017f 	teqeq	pc, #-1073741793	; 0xc000001f
 378:	032e01eb 	teqeq	lr, #-1073741766	; 0xc000003a
 37c:	034a7f96 	movteq	r7, #44950	; 0xaf96
 380:	83034a12 	movwhi	r4, #14866	; 0x3a12
 384:	032f017f 	teqeq	pc, #-1073741793	; 0xc000001f
 388:	2a2e01ef 	bcs	b80b4c <__stack+0xb6b89c>
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
 3b8:	4a0f034b 	bmi	3c10ec <__stack+0x3abe3c>
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
 3f8:	6b64655c 	blvs	1919970 <__stack+0x19046c0>
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
 4f4:	00c6f002 	sbceq	pc, r6, r2
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
 528:	6b030104 	blvs	c0940 <__stack+0xab690>
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
 554:	4b672f49 	blmi	19cc280 <__stack+0x19b6fd0>
 558:	03674c49 	cmneq	r7, #18688	; 0x4900
 55c:	0b034a24 	bleq	d2df4 <__stack+0xbdb44>
 560:	2e750366 	cdpcs	3, 7, cr0, cr5, cr6, {3}
 564:	302e0b03 	eorcc	r0, lr, r3, lsl #22
 568:	4b820a03 	blmi	fe082d7c <CPU_ARM_BIT_CNTES_C+0x7e082d7c>
 56c:	4a7a032f 	bmi	1e81230 <__stack+0x1e6bf80>
 570:	6c86292d 	stcvs	9, cr2, [r6], {45}	; 0x2d
 574:	2c332fbb 	ldccs	15, cr2, [r3], #-748	; 0xfffffd14
 578:	60038330 	andvs	r8, r3, r0, lsr r3
 57c:	4a6c034a 	bmi	1b012ac <__stack+0x1aebffc>
 580:	4b492f2d 	blmi	124c23c <__stack+0x1236f8c>
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
 5ac:	9b036c49 	blls	db6d8 <__stack+0xc6428>
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
 5fc:	4b304b2e 	blmi	c132bc <__stack+0xbfe00c>
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
 67c:	cce40205 	sfmgt	f0, 2, [r4], #20
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
 6a8:	4a14032d 	bmi	501364 <__stack+0x4ec0b4>
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
 804:	aa030204 	bge	c101c <__stack+0xabd6c>
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
 83c:	4a24032e 	bmi	9014fc <__stack+0x8ec24c>
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
 914:	6b010100 	blvs	40d1c <__stack+0x2ba6c>
 918:	02000000 	andeq	r0, r0, #0
 91c:	00005300 	andeq	r5, r0, r0, lsl #6
 920:	fb010200 	blx	4112a <__stack+0x2be7a>
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
 974:	e0020500 	and	r0, r2, r0, lsl #10
 978:	030000d2 	movweq	r0, #210	; 0xd2
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
 9e0:	fc020500 	stc2	5, cr0, [r2], {-0}
 9e4:	030000d2 	movweq	r0, #210	; 0xd2
 9e8:	2f01010f 	svccs	0x0001010f
 9ec:	0202114b 	andeq	r1, r2, #-1073741806	; 0xc0000012
 9f0:	54010100 	strpl	r0, [r1], #-256	; 0xffffff00
 9f4:	02000000 	andeq	r0, r0, #0
 9f8:	00003300 	andeq	r3, r0, r0, lsl #6
 9fc:	fb010200 	blx	41206 <__stack+0x2bf56>
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
 a30:	0c020500 	cfstr32eq	mvfx0, [r2], {-0}
 a34:	030000d3 	movweq	r0, #211	; 0xd3
 a38:	300100eb 	andcc	r0, r1, fp, ror #1
 a3c:	0402009f 	streq	r0, [r2], #-159	; 0xffffff61
 a40:	12033401 	andne	r3, r3, #16777216	; 0x1000000
 a44:	080213ba 	stmdaeq	r2, {r1, r3, r4, r5, r7, r8, r9, ip}
 a48:	55010100 	strpl	r0, [r1, #-256]	; 0xffffff00
 a4c:	02000000 	andeq	r0, r0, #0
 a50:	00004f00 	andeq	r4, r0, r0, lsl #30
 a54:	fb010200 	blx	4125e <__stack+0x2bfae>
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
 b00:	0000d350 	andeq	sp, r0, r0, asr r3
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
 bc8:	d9840205 	stmible	r4, {r0, r2, r9}
 bcc:	2f030000 	svccs	0x00030000
 bd0:	00020201 	andeq	r0, r2, r1, lsl #4
 bd4:	Address 0x00000bd4 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	20554e47 	subscs	r4, r5, r7, asr #28
   4:	2e342043 	cdpcs	0, 3, cr2, cr4, cr3, {2}
   8:	00322e37 	eorseq	r2, r2, r7, lsr lr
   c:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
  10:	3a430074 	bcc	10c01e8 <__stack+0x10aaf38>
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
 588:	7a697300 	bvc	1a5d190 <__stack+0x1a47ee0>
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
 6dc:	7a696c61 	bvc	1a5b868 <__stack+0x1a465b8>
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
 76c:	3a430073 	bcc	10c0940 <__stack+0x10ab690>
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
 868:	6b636f6c 	blvs	18dc620 <__stack+0x18c7370>
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
  18:	0000bec0 	andeq	fp, r0, r0, asr #29
  1c:	00000028 	andeq	r0, r0, r8, lsr #32
  20:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
  24:	00018e02 	andeq	r8, r1, r2, lsl #28
  28:	0000000c 	andeq	r0, r0, ip
  2c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  30:	7c020001 	stcvc	0, cr0, [r2], {1}
  34:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  38:	00000014 	andeq	r0, r0, r4, lsl r0
  3c:	00000028 	andeq	r0, r0, r8, lsr #32
  40:	0000bee8 	andeq	fp, r0, r8, ror #29
  44:	0000005c 	andeq	r0, r0, ip, asr r0
  48:	83080e44 	movwhi	r0, #36420	; 0x8e44
  4c:	00018e02 	andeq	r8, r1, r2, lsl #28
  50:	00000014 	andeq	r0, r0, r4, lsl r0
  54:	00000028 	andeq	r0, r0, r8, lsr #32
  58:	0000bf44 	andeq	fp, r0, r4, asr #30
  5c:	0000005c 	andeq	r0, r0, ip, asr r0
  60:	83080e44 	movwhi	r0, #36420	; 0x8e44
  64:	00018e02 	andeq	r8, r1, r2, lsl #28
  68:	00000014 	andeq	r0, r0, r4, lsl r0
  6c:	00000028 	andeq	r0, r0, r8, lsr #32
  70:	0000bfa0 	andeq	fp, r0, r0, lsr #31
  74:	0000005c 	andeq	r0, r0, ip, asr r0
  78:	83080e44 	movwhi	r0, #36420	; 0x8e44
  7c:	00018e02 	andeq	r8, r1, r2, lsl #28
  80:	0000001c 	andeq	r0, r0, ip, lsl r0
  84:	00000028 	andeq	r0, r0, r8, lsr #32
  88:	0000bffc 	strdeq	fp, [r0], -ip
  8c:	00000098 	muleq	r0, r8, r0
  90:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
  94:	86058506 	strhi	r8, [r5], -r6, lsl #10
  98:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
  9c:	00018e02 	andeq	r8, r1, r2, lsl #28
  a0:	00000014 	andeq	r0, r0, r4, lsl r0
  a4:	00000028 	andeq	r0, r0, r8, lsr #32
  a8:	0000c094 	muleq	r0, r4, r0
  ac:	00000020 	andeq	r0, r0, r0, lsr #32
  b0:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
  b4:	00018e02 	andeq	r8, r1, r2, lsl #28
  b8:	0000000c 	andeq	r0, r0, ip
  bc:	00000028 	andeq	r0, r0, r8, lsr #32
  c0:	0000c0b4 	strheq	ip, [r0], -r4
  c4:	00000018 	andeq	r0, r0, r8, lsl r0
  c8:	0000000c 	andeq	r0, r0, ip
  cc:	00000028 	andeq	r0, r0, r8, lsr #32
  d0:	0000c0cc 	andeq	ip, r0, ip, asr #1
  d4:	00000038 	andeq	r0, r0, r8, lsr r0
  d8:	0000001c 	andeq	r0, r0, ip, lsl r0
  dc:	00000028 	andeq	r0, r0, r8, lsr #32
  e0:	0000c104 	andeq	ip, r0, r4, lsl #2
  e4:	00000098 	muleq	r0, r8, r0
  e8:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
  ec:	86058506 	strhi	r8, [r5], -r6, lsl #10
  f0:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
  f4:	00018e02 	andeq	r8, r1, r2, lsl #28
  f8:	00000014 	andeq	r0, r0, r4, lsl r0
  fc:	00000028 	andeq	r0, r0, r8, lsr #32
 100:	0000c19c 	muleq	r0, ip, r1
 104:	00000018 	andeq	r0, r0, r8, lsl r0
 108:	83080e42 	movwhi	r0, #36418	; 0x8e42
 10c:	00018e02 	andeq	r8, r1, r2, lsl #28
 110:	0000000c 	andeq	r0, r0, ip
 114:	00000028 	andeq	r0, r0, r8, lsr #32
 118:	0000c1b4 			; <UNDEFINED> instruction: 0x0000c1b4
 11c:	00000018 	andeq	r0, r0, r8, lsl r0
 120:	0000000c 	andeq	r0, r0, ip
 124:	00000028 	andeq	r0, r0, r8, lsr #32
 128:	0000c1cc 	andeq	ip, r0, ip, asr #3
 12c:	00000038 	andeq	r0, r0, r8, lsr r0
 130:	0000000c 	andeq	r0, r0, ip
 134:	00000028 	andeq	r0, r0, r8, lsr #32
 138:	0000c204 	andeq	ip, r0, r4, lsl #4
 13c:	00000018 	andeq	r0, r0, r8, lsl r0
 140:	0000000c 	andeq	r0, r0, ip
 144:	00000028 	andeq	r0, r0, r8, lsr #32
 148:	0000c21c 	andeq	ip, r0, ip, lsl r2
 14c:	0000001c 	andeq	r0, r0, ip, lsl r0
 150:	0000000c 	andeq	r0, r0, ip
 154:	00000028 	andeq	r0, r0, r8, lsr #32
 158:	0000c238 	andeq	ip, r0, r8, lsr r2
 15c:	0000001c 	andeq	r0, r0, ip, lsl r0
 160:	0000000c 	andeq	r0, r0, ip
 164:	00000028 	andeq	r0, r0, r8, lsr #32
 168:	0000c254 	andeq	ip, r0, r4, asr r2
 16c:	00000018 	andeq	r0, r0, r8, lsl r0
 170:	0000000c 	andeq	r0, r0, ip
 174:	00000028 	andeq	r0, r0, r8, lsr #32
 178:	0000c26c 	andeq	ip, r0, ip, ror #4
 17c:	00000018 	andeq	r0, r0, r8, lsl r0
 180:	0000000c 	andeq	r0, r0, ip
 184:	00000028 	andeq	r0, r0, r8, lsr #32
 188:	0000c284 	andeq	ip, r0, r4, lsl #5
 18c:	00000038 	andeq	r0, r0, r8, lsr r0
 190:	00000014 	andeq	r0, r0, r4, lsl r0
 194:	00000028 	andeq	r0, r0, r8, lsr #32
 198:	0000c2bc 			; <UNDEFINED> instruction: 0x0000c2bc
 19c:	0000009c 	muleq	r0, ip, r0
 1a0:	83080e42 	movwhi	r0, #36418	; 0x8e42
 1a4:	00018e02 	andeq	r8, r1, r2, lsl #28
 1a8:	0000000c 	andeq	r0, r0, ip
 1ac:	00000028 	andeq	r0, r0, r8, lsr #32
 1b0:	0000c358 	andeq	ip, r0, r8, asr r3
 1b4:	0000001c 	andeq	r0, r0, ip, lsl r0
 1b8:	00000014 	andeq	r0, r0, r4, lsl r0
 1bc:	00000028 	andeq	r0, r0, r8, lsr #32
 1c0:	0000c374 	andeq	ip, r0, r4, ror r3
 1c4:	00000010 	andeq	r0, r0, r0, lsl r0
 1c8:	83080e42 	movwhi	r0, #36418	; 0x8e42
 1cc:	00018e02 	andeq	r8, r1, r2, lsl #28
 1d0:	00000014 	andeq	r0, r0, r4, lsl r0
 1d4:	00000028 	andeq	r0, r0, r8, lsr #32
 1d8:	0000c384 	andeq	ip, r0, r4, lsl #7
 1dc:	0000004c 	andeq	r0, r0, ip, asr #32
 1e0:	83080e46 	movwhi	r0, #36422	; 0x8e46
 1e4:	00018e02 	andeq	r8, r1, r2, lsl #28
 1e8:	00000014 	andeq	r0, r0, r4, lsl r0
 1ec:	00000028 	andeq	r0, r0, r8, lsr #32
 1f0:	0000c3d0 	ldrdeq	ip, [r0], -r0
 1f4:	00000024 	andeq	r0, r0, r4, lsr #32
 1f8:	83080e42 	movwhi	r0, #36418	; 0x8e42
 1fc:	00018e02 	andeq	r8, r1, r2, lsl #28
 200:	00000014 	andeq	r0, r0, r4, lsl r0
 204:	00000028 	andeq	r0, r0, r8, lsr #32
 208:	0000c3f4 	strdeq	ip, [r0], -r4
 20c:	00000010 	andeq	r0, r0, r0, lsl r0
 210:	83080e42 	movwhi	r0, #36418	; 0x8e42
 214:	00018e02 	andeq	r8, r1, r2, lsl #28
 218:	00000014 	andeq	r0, r0, r4, lsl r0
 21c:	00000028 	andeq	r0, r0, r8, lsr #32
 220:	0000c404 	andeq	ip, r0, r4, lsl #8
 224:	00000030 	andeq	r0, r0, r0, lsr r0
 228:	83080e46 	movwhi	r0, #36422	; 0x8e46
 22c:	00018e02 	andeq	r8, r1, r2, lsl #28
 230:	0000000c 	andeq	r0, r0, ip
 234:	00000028 	andeq	r0, r0, r8, lsr #32
 238:	0000c434 	andeq	ip, r0, r4, lsr r4
 23c:	00000018 	andeq	r0, r0, r8, lsl r0
 240:	00000014 	andeq	r0, r0, r4, lsl r0
 244:	00000028 	andeq	r0, r0, r8, lsr #32
 248:	0000c44c 	andeq	ip, r0, ip, asr #8
 24c:	00000010 	andeq	r0, r0, r0, lsl r0
 250:	83080e42 	movwhi	r0, #36418	; 0x8e42
 254:	00018e02 	andeq	r8, r1, r2, lsl #28
 258:	00000014 	andeq	r0, r0, r4, lsl r0
 25c:	00000028 	andeq	r0, r0, r8, lsr #32
 260:	0000c45c 	andeq	ip, r0, ip, asr r4
 264:	0000001c 	andeq	r0, r0, ip, lsl r0
 268:	83080e46 	movwhi	r0, #36422	; 0x8e46
 26c:	00018e02 	andeq	r8, r1, r2, lsl #28
 270:	0000000c 	andeq	r0, r0, ip
 274:	00000028 	andeq	r0, r0, r8, lsr #32
 278:	0000c478 	andeq	ip, r0, r8, ror r4
 27c:	00000018 	andeq	r0, r0, r8, lsl r0
 280:	0000000c 	andeq	r0, r0, ip
 284:	00000028 	andeq	r0, r0, r8, lsr #32
 288:	0000c490 	muleq	r0, r0, r4
 28c:	00000018 	andeq	r0, r0, r8, lsl r0
 290:	00000014 	andeq	r0, r0, r4, lsl r0
 294:	00000028 	andeq	r0, r0, r8, lsr #32
 298:	0000c4a8 	andeq	ip, r0, r8, lsr #9
 29c:	00000050 	andeq	r0, r0, r0, asr r0
 2a0:	83080e44 	movwhi	r0, #36420	; 0x8e44
 2a4:	00018e02 	andeq	r8, r1, r2, lsl #28
 2a8:	00000014 	andeq	r0, r0, r4, lsl r0
 2ac:	00000028 	andeq	r0, r0, r8, lsr #32
 2b0:	0000c4f8 	strdeq	ip, [r0], -r8
 2b4:	00000030 	andeq	r0, r0, r0, lsr r0
 2b8:	83080e46 	movwhi	r0, #36422	; 0x8e46
 2bc:	00018e02 	andeq	r8, r1, r2, lsl #28
 2c0:	00000014 	andeq	r0, r0, r4, lsl r0
 2c4:	00000028 	andeq	r0, r0, r8, lsr #32
 2c8:	0000c528 	andeq	ip, r0, r8, lsr #10
 2cc:	00000010 	andeq	r0, r0, r0, lsl r0
 2d0:	83080e42 	movwhi	r0, #36418	; 0x8e42
 2d4:	00018e02 	andeq	r8, r1, r2, lsl #28
 2d8:	00000014 	andeq	r0, r0, r4, lsl r0
 2dc:	00000028 	andeq	r0, r0, r8, lsr #32
 2e0:	0000c538 	andeq	ip, r0, r8, lsr r5
 2e4:	0000001c 	andeq	r0, r0, ip, lsl r0
 2e8:	83080e46 	movwhi	r0, #36422	; 0x8e46
 2ec:	00018e02 	andeq	r8, r1, r2, lsl #28
 2f0:	0000000c 	andeq	r0, r0, ip
 2f4:	00000028 	andeq	r0, r0, r8, lsr #32
 2f8:	0000c554 	andeq	ip, r0, r4, asr r5
 2fc:	00000018 	andeq	r0, r0, r8, lsl r0
 300:	00000014 	andeq	r0, r0, r4, lsl r0
 304:	00000028 	andeq	r0, r0, r8, lsr #32
 308:	0000c56c 	andeq	ip, r0, ip, ror #10
 30c:	00000050 	andeq	r0, r0, r0, asr r0
 310:	83080e44 	movwhi	r0, #36420	; 0x8e44
 314:	00018e02 	andeq	r8, r1, r2, lsl #28
 318:	00000014 	andeq	r0, r0, r4, lsl r0
 31c:	00000028 	andeq	r0, r0, r8, lsr #32
 320:	0000c5bc 			; <UNDEFINED> instruction: 0x0000c5bc
 324:	0000001c 	andeq	r0, r0, ip, lsl r0
 328:	83080e46 	movwhi	r0, #36422	; 0x8e46
 32c:	00018e02 	andeq	r8, r1, r2, lsl #28
 330:	0000000c 	andeq	r0, r0, ip
 334:	00000028 	andeq	r0, r0, r8, lsr #32
 338:	0000c5d8 	ldrdeq	ip, [r0], -r8
 33c:	00000018 	andeq	r0, r0, r8, lsl r0
 340:	0000000c 	andeq	r0, r0, ip
 344:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 348:	7c020001 	stcvc	0, cr0, [r2], {1}
 34c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 350:	0000000c 	andeq	r0, r0, ip
 354:	00000340 	andeq	r0, r0, r0, asr #6
 358:	0000c5f0 	strdeq	ip, [r0], -r0
 35c:	0000000c 	andeq	r0, r0, ip
 360:	0000000c 	andeq	r0, r0, ip
 364:	00000340 	andeq	r0, r0, r0, asr #6
 368:	0000c5fc 	strdeq	ip, [r0], -ip	; <UNPREDICTABLE>
 36c:	0000000c 	andeq	r0, r0, ip
 370:	0000000c 	andeq	r0, r0, ip
 374:	00000340 	andeq	r0, r0, r0, asr #6
 378:	0000c608 	andeq	ip, r0, r8, lsl #12
 37c:	0000000c 	andeq	r0, r0, ip
 380:	0000000c 	andeq	r0, r0, ip
 384:	00000340 	andeq	r0, r0, r0, asr #6
 388:	0000c614 	andeq	ip, r0, r4, lsl r6
 38c:	0000000c 	andeq	r0, r0, ip
 390:	0000000c 	andeq	r0, r0, ip
 394:	00000340 	andeq	r0, r0, r0, asr #6
 398:	0000c620 	andeq	ip, r0, r0, lsr #12
 39c:	0000000c 	andeq	r0, r0, ip
 3a0:	0000000c 	andeq	r0, r0, ip
 3a4:	00000340 	andeq	r0, r0, r0, asr #6
 3a8:	0000c62c 	andeq	ip, r0, ip, lsr #12
 3ac:	0000000c 	andeq	r0, r0, ip
 3b0:	0000000c 	andeq	r0, r0, ip
 3b4:	00000340 	andeq	r0, r0, r0, asr #6
 3b8:	0000c638 	andeq	ip, r0, r8, lsr r6
 3bc:	00000018 	andeq	r0, r0, r8, lsl r0
 3c0:	0000000c 	andeq	r0, r0, ip
 3c4:	00000340 	andeq	r0, r0, r0, asr #6
 3c8:	0000c650 	andeq	ip, r0, r0, asr r6
 3cc:	0000002c 	andeq	r0, r0, ip, lsr #32
 3d0:	0000000c 	andeq	r0, r0, ip
 3d4:	00000340 	andeq	r0, r0, r0, asr #6
 3d8:	0000c67c 	andeq	ip, r0, ip, ror r6
 3dc:	00000014 	andeq	r0, r0, r4, lsl r0
 3e0:	0000000c 	andeq	r0, r0, ip
 3e4:	00000340 	andeq	r0, r0, r0, asr #6
 3e8:	0000c690 	muleq	r0, r0, r6
 3ec:	0000002c 	andeq	r0, r0, ip, lsr #32
 3f0:	0000000c 	andeq	r0, r0, ip
 3f4:	00000340 	andeq	r0, r0, r0, asr #6
 3f8:	0000c6bc 			; <UNDEFINED> instruction: 0x0000c6bc
 3fc:	00000010 	andeq	r0, r0, r0, lsl r0
 400:	0000000c 	andeq	r0, r0, ip
 404:	00000340 	andeq	r0, r0, r0, asr #6
 408:	0000c6cc 	andeq	ip, r0, ip, asr #13
 40c:	00000024 	andeq	r0, r0, r4, lsr #32
 410:	0000000c 	andeq	r0, r0, ip
 414:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 418:	7c020001 	stcvc	0, cr0, [r2], {1}
 41c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 420:	00000018 	andeq	r0, r0, r8, lsl r0
 424:	00000410 	andeq	r0, r0, r0, lsl r4
 428:	0000c6f0 	strdeq	ip, [r0], -r0
 42c:	00000048 	andeq	r0, r0, r8, asr #32
 430:	83100e42 	tsthi	r0, #1056	; 0x420
 434:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 438:	00018e02 	andeq	r8, r1, r2, lsl #28
 43c:	00000020 	andeq	r0, r0, r0, lsr #32
 440:	00000410 	andeq	r0, r0, r0, lsl r4
 444:	0000c738 	andeq	ip, r0, r8, lsr r7
 448:	000000f8 	strdeq	r0, [r0], -r8
 44c:	84180e46 	ldrhi	r0, [r8], #-3654	; 0xfffff1ba
 450:	86058506 	strhi	r8, [r5], -r6, lsl #10
 454:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 458:	4a018e02 	bmi	63c68 <__stack+0x4e9b8>
 45c:	0000500e 	andeq	r5, r0, lr
 460:	00000030 	andeq	r0, r0, r0, lsr r0
 464:	00000410 	andeq	r0, r0, r0, lsl r4
 468:	0000c830 	andeq	ip, r0, r0, lsr r8
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
 4ac:	0000cce4 	andeq	ip, r0, r4, ror #25
 4b0:	00000028 	andeq	r0, r0, r8, lsr #32
 4b4:	83080e42 	movwhi	r0, #36418	; 0x8e42
 4b8:	00018e02 	andeq	r8, r1, r2, lsl #28
 4bc:	00000018 	andeq	r0, r0, r8, lsl r0
 4c0:	00000494 	muleq	r0, r4, r4
 4c4:	0000cd0c 	andeq	ip, r0, ip, lsl #26
 4c8:	00000088 	andeq	r0, r0, r8, lsl #1
 4cc:	83100e42 	tsthi	r0, #1056	; 0x420
 4d0:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 4d4:	00018e02 	andeq	r8, r1, r2, lsl #28
 4d8:	0000001c 	andeq	r0, r0, ip, lsl r0
 4dc:	00000494 	muleq	r0, r4, r4
 4e0:	0000cd94 	muleq	r0, r4, sp
 4e4:	000000d8 	ldrdeq	r0, [r0], -r8
 4e8:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
 4ec:	86038504 	strhi	r8, [r3], -r4, lsl #10
 4f0:	44018e02 	strmi	r8, [r1], #-3586	; 0xfffff1fe
 4f4:	0000180e 	andeq	r1, r0, lr, lsl #16
 4f8:	00000018 	andeq	r0, r0, r8, lsl r0
 4fc:	00000494 	muleq	r0, r4, r4
 500:	0000ce6c 	andeq	ip, r0, ip, ror #28
 504:	00000090 	muleq	r0, r0, r0
 508:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
 50c:	86038504 	strhi	r8, [r3], -r4, lsl #10
 510:	00018e02 	andeq	r8, r1, r2, lsl #28
 514:	0000001c 	andeq	r0, r0, ip, lsl r0
 518:	00000494 	muleq	r0, r4, r4
 51c:	0000cefc 	strdeq	ip, [r0], -ip	; <UNPREDICTABLE>
 520:	00000100 	andeq	r0, r0, r0, lsl #2
 524:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
 528:	86038504 	strhi	r8, [r3], -r4, lsl #10
 52c:	44018e02 	strmi	r8, [r1], #-3586	; 0xfffff1fe
 530:	0000180e 	andeq	r1, r0, lr, lsl #16
 534:	00000024 	andeq	r0, r0, r4, lsr #32
 538:	00000494 	muleq	r0, r4, r4
 53c:	0000cffc 	strdeq	ip, [r0], -ip	; <UNPREDICTABLE>
 540:	000001c0 	andeq	r0, r0, r0, asr #3
 544:	84240e42 	strthi	r0, [r4], #-3650	; 0xfffff1be
 548:	86088509 	strhi	r8, [r8], -r9, lsl #10
 54c:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
 550:	8a048905 	bhi	12296c <__stack+0x10d6bc>
 554:	8e028b03 	vmlahi.f64	d8, d2, d3
 558:	300e4401 	andcc	r4, lr, r1, lsl #8
 55c:	0000001c 	andeq	r0, r0, ip, lsl r0
 560:	00000494 	muleq	r0, r4, r4
 564:	0000d1bc 			; <UNDEFINED> instruction: 0x0000d1bc
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
 594:	0000d2e0 	andeq	sp, r0, r0, ror #5
 598:	0000001c 	andeq	r0, r0, ip, lsl r0
 59c:	0000000c 	andeq	r0, r0, ip
 5a0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 5a4:	7c020001 	stcvc	0, cr0, [r2], {1}
 5a8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 5ac:	0000000c 	andeq	r0, r0, ip
 5b0:	0000059c 	muleq	r0, ip, r5
 5b4:	0000d2fc 	strdeq	sp, [r0], -ip
 5b8:	00000010 	andeq	r0, r0, r0, lsl r0
 5bc:	0000000c 	andeq	r0, r0, ip
 5c0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 5c4:	7c020001 	stcvc	0, cr0, [r2], {1}
 5c8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 5cc:	00000014 	andeq	r0, r0, r4, lsl r0
 5d0:	000005bc 			; <UNDEFINED> instruction: 0x000005bc
 5d4:	0000d30c 	andeq	sp, r0, ip, lsl #6
 5d8:	00000034 	andeq	r0, r0, r4, lsr r0
 5dc:	83080e42 	movwhi	r0, #36418	; 0x8e42
 5e0:	00018e02 	andeq	r8, r1, r2, lsl #28
 5e4:	0000000c 	andeq	r0, r0, ip
 5e8:	000005bc 			; <UNDEFINED> instruction: 0x000005bc
 5ec:	0000d340 	andeq	sp, r0, r0, asr #6
 5f0:	00000010 	andeq	r0, r0, r0, lsl r0
 5f4:	0000000c 	andeq	r0, r0, ip
 5f8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 5fc:	7c020001 	stcvc	0, cr0, [r2], {1}
 600:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 604:	00000018 	andeq	r0, r0, r8, lsl r0
 608:	000005f4 	strdeq	r0, [r0], -r4
 60c:	0000d350 	andeq	sp, r0, r0, asr r3
 610:	00000030 	andeq	r0, r0, r0, lsr r0
 614:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
 618:	86038504 	strhi	r8, [r3], -r4, lsl #10
 61c:	00018e02 	andeq	r8, r1, r2, lsl #28
 620:	00000018 	andeq	r0, r0, r8, lsl r0
 624:	000005f4 	strdeq	r0, [r0], -r4
 628:	0000d380 	andeq	sp, r0, r0, lsl #7
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
 654:	0000d3ac 	andeq	sp, r0, ip, lsr #7
 658:	000001ec 	andeq	r0, r0, ip, ror #3
 65c:	0000000c 	andeq	r0, r0, ip
 660:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 664:	7c020001 	stcvc	0, cr0, [r2], {1}
 668:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 66c:	00000014 	andeq	r0, r0, r4, lsl r0
 670:	0000065c 	andeq	r0, r0, ip, asr r6
 674:	0000d5bc 			; <UNDEFINED> instruction: 0x0000d5bc
 678:	00000034 	andeq	r0, r0, r4, lsr r0
 67c:	83080e42 	movwhi	r0, #36418	; 0x8e42
 680:	00018e02 	andeq	r8, r1, r2, lsl #28
 684:	0000000c 	andeq	r0, r0, ip
 688:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 68c:	7c020001 	stcvc	0, cr0, [r2], {1}
 690:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 694:	00000018 	andeq	r0, r0, r8, lsl r0
 698:	00000684 	andeq	r0, r0, r4, lsl #13
 69c:	0000d5f0 	strdeq	sp, [r0], -r0
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
 6c8:	0000d62c 	andeq	sp, r0, ip, lsr #12
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
 6f4:	0000d6a8 	andeq	sp, r0, r8, lsr #13
 6f8:	0000006c 	andeq	r0, r0, ip, rrx
 6fc:	0000000c 	andeq	r0, r0, ip
 700:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 704:	7c020001 	stcvc	0, cr0, [r2], {1}
 708:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 70c:	0000000c 	andeq	r0, r0, ip
 710:	000006fc 	strdeq	r0, [r0], -ip
 714:	0000da8c 	andeq	sp, r0, ip, lsl #21
 718:	0000001c 	andeq	r0, r0, ip, lsl r0
 71c:	00000024 	andeq	r0, r0, r4, lsr #32
 720:	000006fc 	strdeq	r0, [r0], -ip
 724:	0000d714 	andeq	sp, r0, r4, lsl r7
 728:	0000016c 	andeq	r0, r0, ip, ror #2
 72c:	84240e46 	strthi	r0, [r4], #-3654	; 0xfffff1ba
 730:	86088509 	strhi	r8, [r8], -r9, lsl #10
 734:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
 738:	8a048905 	bhi	122b54 <__stack+0x10d8a4>
 73c:	8e028b03 	vmlahi.f64	d8, d2, d3
 740:	380e4201 	stmdacc	lr, {r0, r9, lr}
 744:	0000000c 	andeq	r0, r0, ip
 748:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 74c:	7c020001 	stcvc	0, cr0, [r2], {1}
 750:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 754:	0000000c 	andeq	r0, r0, ip
 758:	00000744 	andeq	r0, r0, r4, asr #14
 75c:	0000d880 	andeq	sp, r0, r0, lsl #17
 760:	00000014 	andeq	r0, r0, r4, lsl r0
 764:	0000000c 	andeq	r0, r0, ip
 768:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 76c:	7c020001 	stcvc	0, cr0, [r2], {1}
 770:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 774:	0000001c 	andeq	r0, r0, ip, lsl r0
 778:	00000764 	andeq	r0, r0, r4, ror #14
 77c:	0000d894 	muleq	r0, r4, r8
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
 7ac:	0000d984 	andeq	sp, r0, r4, lsl #19
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
