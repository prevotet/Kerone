
ucos-ii_demo_0.elf:     file format elf32-littlearm


Disassembly of section .text:

00100000 <deregister_tm_clones>:
  100000:	e92d4008 	push	{r3, lr}
  100004:	e3070a14 	movw	r0, #31252	; 0x7a14
  100008:	e59f3024 	ldr	r3, [pc, #36]	; 100034 <deregister_tm_clones+0x34>
  10000c:	e3400010 	movt	r0, #16
  100010:	e0603003 	rsb	r3, r0, r3
  100014:	e3530006 	cmp	r3, #6
  100018:	98bd8008 	popls	{r3, pc}
  10001c:	e3003000 	movw	r3, #0
  100020:	e3403000 	movt	r3, #0
  100024:	e3530000 	cmp	r3, #0
  100028:	08bd8008 	popeq	{r3, pc}
  10002c:	e12fff33 	blx	r3
  100030:	e8bd8008 	pop	{r3, pc}
  100034:	00107a17 	andseq	r7, r0, r7, lsl sl

00100038 <register_tm_clones>:
  100038:	e92d4008 	push	{r3, lr}
  10003c:	e3070a14 	movw	r0, #31252	; 0x7a14
  100040:	e3073a14 	movw	r3, #31252	; 0x7a14
  100044:	e3400010 	movt	r0, #16
  100048:	e3403010 	movt	r3, #16
  10004c:	e0603003 	rsb	r3, r0, r3
  100050:	e1a03143 	asr	r3, r3, #2
  100054:	e0833fa3 	add	r3, r3, r3, lsr #31
  100058:	e1b010c3 	asrs	r1, r3, #1
  10005c:	08bd8008 	popeq	{r3, pc}
  100060:	e3002000 	movw	r2, #0
  100064:	e3402000 	movt	r2, #0
  100068:	e3520000 	cmp	r2, #0
  10006c:	08bd8008 	popeq	{r3, pc}
  100070:	e12fff32 	blx	r2
  100074:	e8bd8008 	pop	{r3, pc}

00100078 <__do_global_dtors_aux>:
  100078:	e92d4010 	push	{r4, lr}
  10007c:	e3074a24 	movw	r4, #31268	; 0x7a24
  100080:	e3404010 	movt	r4, #16
  100084:	e5d43000 	ldrb	r3, [r4]
  100088:	e3530000 	cmp	r3, #0
  10008c:	18bd8010 	popne	{r4, pc}
  100090:	ebffffda 	bl	100000 <deregister_tm_clones>
  100094:	e3003000 	movw	r3, #0
  100098:	e3403000 	movt	r3, #0
  10009c:	e3530000 	cmp	r3, #0
  1000a0:	0a000002 	beq	1000b0 <__do_global_dtors_aux+0x38>
  1000a4:	e3070a14 	movw	r0, #31252	; 0x7a14
  1000a8:	e3400010 	movt	r0, #16
  1000ac:	e320f000 	nop	{0}
  1000b0:	e3a03001 	mov	r3, #1
  1000b4:	e5c43000 	strb	r3, [r4]
  1000b8:	e8bd8010 	pop	{r4, pc}

001000bc <frame_dummy>:
  1000bc:	e92d4008 	push	{r3, lr}
  1000c0:	e3003000 	movw	r3, #0
  1000c4:	e3403000 	movt	r3, #0
  1000c8:	e3530000 	cmp	r3, #0
  1000cc:	0a000004 	beq	1000e4 <frame_dummy+0x28>
  1000d0:	e3070a14 	movw	r0, #31252	; 0x7a14
  1000d4:	e3071a28 	movw	r1, #31272	; 0x7a28
  1000d8:	e3400010 	movt	r0, #16
  1000dc:	e3401010 	movt	r1, #16
  1000e0:	e320f000 	nop	{0}
  1000e4:	e3070a10 	movw	r0, #31248	; 0x7a10
  1000e8:	e3400010 	movt	r0, #16
  1000ec:	e5903000 	ldr	r3, [r0]
  1000f0:	e3530000 	cmp	r3, #0
  1000f4:	0a000004 	beq	10010c <frame_dummy+0x50>
  1000f8:	e3003000 	movw	r3, #0
  1000fc:	e3403000 	movt	r3, #0
  100100:	e3530000 	cmp	r3, #0
  100104:	0a000000 	beq	10010c <frame_dummy+0x50>
  100108:	e12fff33 	blx	r3
  10010c:	e8bd4008 	pop	{r3, lr}
  100110:	eaffffc8 	b	100038 <register_tm_clones>

00100114 <OS_TaskIdle>:
  100114:	e92d4010 	push	{r4, lr}
  100118:	e3094a48 	movw	r4, #39496	; 0x9a48
  10011c:	e3404010 	movt	r4, #16
  100120:	eb0015b8 	bl	105808 <guest_OS_ENTER_CRITICAL>
  100124:	e5943000 	ldr	r3, [r4]
  100128:	e2833001 	add	r3, r3, #1
  10012c:	e5843000 	str	r3, [r4]
  100130:	eb0015b7 	bl	105814 <guest_OS_EXIT_CRITICAL>
  100134:	eb000df5 	bl	103910 <OSTaskIdleHook>
  100138:	eafffff8 	b	100120 <OS_TaskIdle+0xc>

0010013c <OSEventNameGet>:
  10013c:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
  100140:	e3093af4 	movw	r3, #39668	; 0x9af4
  100144:	e3403010 	movt	r3, #16
  100148:	e1a06000 	mov	r6, r0
  10014c:	e1a07001 	mov	r7, r1
  100150:	e1a05002 	mov	r5, r2
  100154:	e5d34000 	ldrb	r4, [r3]
  100158:	e3540000 	cmp	r4, #0
  10015c:	1a000015 	bne	1001b8 <OSEventNameGet+0x7c>
  100160:	e5d03000 	ldrb	r3, [r0]
  100164:	e2433001 	sub	r3, r3, #1
  100168:	e3530003 	cmp	r3, #3
  10016c:	83a03001 	movhi	r3, #1
  100170:	85c23000 	strbhi	r3, [r2]
  100174:	8a00000d 	bhi	1001b0 <OSEventNameGet+0x74>
  100178:	eb0015a2 	bl	105808 <guest_OS_ENTER_CRITICAL>
  10017c:	e5963014 	ldr	r3, [r6, #20]
  100180:	e5873000 	str	r3, [r7]
  100184:	e5d32000 	ldrb	r2, [r3]
  100188:	e3520000 	cmp	r2, #0
  10018c:	0a00000e 	beq	1001cc <OSEventNameGet+0x90>
  100190:	e5f31001 	ldrb	r1, [r3, #1]!
  100194:	e2844001 	add	r4, r4, #1
  100198:	e3510000 	cmp	r1, #0
  10019c:	e6ef4074 	uxtb	r4, r4
  1001a0:	1afffffa 	bne	100190 <OSEventNameGet+0x54>
  1001a4:	eb00159a 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1001a8:	e3a03000 	mov	r3, #0
  1001ac:	e5c53000 	strb	r3, [r5]
  1001b0:	e1a00004 	mov	r0, r4
  1001b4:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
  1001b8:	e3a04000 	mov	r4, #0
  1001bc:	e3a03011 	mov	r3, #17
  1001c0:	e1a00004 	mov	r0, r4
  1001c4:	e5c23000 	strb	r3, [r2]
  1001c8:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
  1001cc:	e1a04002 	mov	r4, r2
  1001d0:	eafffff3 	b	1001a4 <OSEventNameGet+0x68>

001001d4 <OSEventNameSet>:
  1001d4:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
  1001d8:	e3093af4 	movw	r3, #39668	; 0x9af4
  1001dc:	e3403010 	movt	r3, #16
  1001e0:	e1a06000 	mov	r6, r0
  1001e4:	e1a07001 	mov	r7, r1
  1001e8:	e1a05002 	mov	r5, r2
  1001ec:	e5d34000 	ldrb	r4, [r3]
  1001f0:	e3540000 	cmp	r4, #0
  1001f4:	13a03012 	movne	r3, #18
  1001f8:	15c23000 	strbne	r3, [r2]
  1001fc:	18bd80f8 	popne	{r3, r4, r5, r6, r7, pc}
  100200:	e5d03000 	ldrb	r3, [r0]
  100204:	e2433001 	sub	r3, r3, #1
  100208:	e3530003 	cmp	r3, #3
  10020c:	83a03001 	movhi	r3, #1
  100210:	85c23000 	strbhi	r3, [r2]
  100214:	88bd80f8 	pophi	{r3, r4, r5, r6, r7, pc}
  100218:	eb00157a 	bl	105808 <guest_OS_ENTER_CRITICAL>
  10021c:	e5867014 	str	r7, [r6, #20]
  100220:	eb00157b 	bl	105814 <guest_OS_EXIT_CRITICAL>
  100224:	e5c54000 	strb	r4, [r5]
  100228:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

0010022c <OSInit>:
  10022c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  100230:	e24dd03c 	sub	sp, sp, #60	; 0x3c
  100234:	e3096ad0 	movw	r6, #39632	; 0x9ad0
  100238:	e3406010 	movt	r6, #16
  10023c:	eb000da4 	bl	1038d4 <OSInitHookBegin>
  100240:	e3092a48 	movw	r2, #39496	; 0x9a48
  100244:	e3402010 	movt	r2, #16
  100248:	e58d201c 	str	r2, [sp, #28]
  10024c:	e3a01000 	mov	r1, #0
  100250:	e5861000 	str	r1, [r6]
  100254:	e59d601c 	ldr	r6, [sp, #28]
  100258:	e309bafc 	movw	fp, #39676	; 0x9afc
  10025c:	e3092ae8 	movw	r2, #39656	; 0x9ae8
  100260:	e340b010 	movt	fp, #16
  100264:	e3402010 	movt	r2, #16
  100268:	e3093a4d 	movw	r3, #39501	; 0x9a4d
  10026c:	e3403010 	movt	r3, #16
  100270:	e58d3020 	str	r3, [sp, #32]
  100274:	e3093a4c 	movw	r3, #39500	; 0x9a4c
  100278:	e3403010 	movt	r3, #16
  10027c:	e58d3024 	str	r3, [sp, #36]	; 0x24
  100280:	e3093ae0 	movw	r3, #39648	; 0x9ae0
  100284:	e5c21000 	strb	r1, [r2]
  100288:	e3403010 	movt	r3, #16
  10028c:	e5c21001 	strb	r1, [r2, #1]
  100290:	e3095df0 	movw	r5, #40432	; 0x9df0
  100294:	e5c21002 	strb	r1, [r2, #2]
  100298:	e3405010 	movt	r5, #16
  10029c:	e5c21003 	strb	r1, [r2, #3]
  1002a0:	e3099af4 	movw	r9, #39668	; 0x9af4
  1002a4:	e58b1000 	str	r1, [fp]
  1002a8:	e3409010 	movt	r9, #16
  1002ac:	e5861000 	str	r1, [r6]
  1002b0:	e309aa44 	movw	sl, #39492	; 0x9a44
  1002b4:	e59d6024 	ldr	r6, [sp, #36]	; 0x24
  1002b8:	e3098ad8 	movw	r8, #39640	; 0x9ad8
  1002bc:	e5c21004 	strb	r1, [r2, #4]
  1002c0:	e340a010 	movt	sl, #16
  1002c4:	e5c21005 	strb	r1, [r2, #5]
  1002c8:	e3408010 	movt	r8, #16
  1002cc:	e5c21006 	strb	r1, [r2, #6]
  1002d0:	e3097a46 	movw	r7, #39494	; 0x9a46
  1002d4:	e5c21007 	strb	r1, [r2, #7]
  1002d8:	e3407010 	movt	r7, #16
  1002dc:	e59d2020 	ldr	r2, [sp, #32]
  1002e0:	e3094a45 	movw	r4, #39493	; 0x9a45
  1002e4:	e58d3028 	str	r3, [sp, #40]	; 0x28
  1002e8:	e3093af8 	movw	r3, #39672	; 0x9af8
  1002ec:	e3403010 	movt	r3, #16
  1002f0:	e58d302c 	str	r3, [sp, #44]	; 0x2c
  1002f4:	e5c21000 	strb	r1, [r2]
  1002f8:	e3404010 	movt	r4, #16
  1002fc:	e5c61000 	strb	r1, [r6]
  100300:	e309eae4 	movw	lr, #39652	; 0x9ae4
  100304:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
  100308:	e340e010 	movt	lr, #16
  10030c:	e59d602c 	ldr	r6, [sp, #44]	; 0x2c
  100310:	e2853e69 	add	r3, r5, #1680	; 0x690
  100314:	e1a0c005 	mov	ip, r5
  100318:	e1a00001 	mov	r0, r1
  10031c:	e5c91000 	strb	r1, [r9]
  100320:	e5ca1000 	strb	r1, [sl]
  100324:	e5c81000 	strb	r1, [r8]
  100328:	e5c71000 	strb	r1, [r7]
  10032c:	e5c41000 	strb	r1, [r4]
  100330:	e5ce1000 	strb	r1, [lr]
  100334:	e5821000 	str	r1, [r2]
  100338:	e5861000 	str	r1, [r6]
  10033c:	e4cc0001 	strb	r0, [ip], #1
  100340:	e15c0003 	cmp	ip, r3
  100344:	1afffffc 	bne	10033c <OSInit+0x110>
  100348:	e30a3480 	movw	r3, #42112	; 0xa480
  10034c:	e3403010 	movt	r3, #16
  100350:	e2831c01 	add	r1, r3, #256	; 0x100
  100354:	e3a02000 	mov	r2, #0
  100358:	e4c32001 	strb	r2, [r3], #1
  10035c:	e1530001 	cmp	r3, r1
  100360:	1afffffc 	bne	100358 <OSInit+0x12c>
  100364:	e3a03000 	mov	r3, #0
  100368:	e30743bc 	movw	r4, #29628	; 0x73bc
  10036c:	e3404010 	movt	r4, #16
  100370:	e1a02003 	mov	r2, r3
  100374:	e0821003 	add	r1, r2, r3
  100378:	e2833001 	add	r3, r3, #1
  10037c:	e3530014 	cmp	r3, #20
  100380:	e3090df0 	movw	r0, #40432	; 0x9df0
  100384:	e1a02103 	lsl	r2, r3, #2
  100388:	e0851201 	add	r1, r5, r1, lsl #4
  10038c:	e082e003 	add	lr, r2, r3
  100390:	e307c3bc 	movw	ip, #29628	; 0x73bc
  100394:	e3400010 	movt	r0, #16
  100398:	e340c010 	movt	ip, #16
  10039c:	e085e20e 	add	lr, r5, lr, lsl #4
  1003a0:	e5814048 	str	r4, [r1, #72]	; 0x48
  1003a4:	e581e014 	str	lr, [r1, #20]
  1003a8:	1afffff1 	bne	100374 <OSInit+0x148>
  1003ac:	e309ed00 	movw	lr, #40192	; 0x9d00
  1003b0:	e340e010 	movt	lr, #16
  1003b4:	e3a07000 	mov	r7, #0
  1003b8:	e3096a50 	movw	r6, #39504	; 0x9a50
  1003bc:	e3095ad4 	movw	r5, #39636	; 0x9ad4
  1003c0:	e3406010 	movt	r6, #16
  1003c4:	e3405010 	movt	r5, #16
  1003c8:	e28e10f0 	add	r1, lr, #240	; 0xf0
  1003cc:	e1a0300e 	mov	r3, lr
  1003d0:	e1a02007 	mov	r2, r7
  1003d4:	e5807654 	str	r7, [r0, #1620]	; 0x654
  1003d8:	e580c688 	str	ip, [r0, #1672]	; 0x688
  1003dc:	e5867000 	str	r7, [r6]
  1003e0:	e5850000 	str	r0, [r5]
  1003e4:	e4c32001 	strb	r2, [r3], #1
  1003e8:	e1530001 	cmp	r3, r1
  1003ec:	1afffffc 	bne	1003e4 <OSInit+0x1b8>
  1003f0:	e3a03000 	mov	r3, #0
  1003f4:	e1a0c003 	mov	ip, r3
  1003f8:	e1a08003 	mov	r8, r3
  1003fc:	e08c5003 	add	r5, ip, r3
  100400:	e2833001 	add	r3, r3, #1
  100404:	e3530009 	cmp	r3, #9
  100408:	e3092d00 	movw	r2, #40192	; 0x9d00
  10040c:	e1a0c083 	lsl	ip, r3, #1
  100410:	e08e1185 	add	r1, lr, r5, lsl #3
  100414:	e08c6003 	add	r6, ip, r3
  100418:	e30703bc 	movw	r0, #29628	; 0x73bc
  10041c:	e3402010 	movt	r2, #16
  100420:	e3a07000 	mov	r7, #0
  100424:	e08e6186 	add	r6, lr, r6, lsl #3
  100428:	e7ce8185 	strb	r8, [lr, r5, lsl #3]
  10042c:	e5816004 	str	r6, [r1, #4]
  100430:	e3400010 	movt	r0, #16
  100434:	e5814014 	str	r4, [r1, #20]
  100438:	1affffef 	bne	1003fc <OSInit+0x1d0>
  10043c:	e3093af0 	movw	r3, #39664	; 0x9af0
  100440:	e3403010 	movt	r3, #16
  100444:	e5c270d8 	strb	r7, [r2, #216]	; 0xd8
  100448:	e58270dc 	str	r7, [r2, #220]	; 0xdc
  10044c:	e58200ec 	str	r0, [r2, #236]	; 0xec
  100450:	e5832000 	str	r2, [r3]
  100454:	eb000512 	bl	1018a4 <OS_MemInit>
  100458:	e3090b00 	movw	r0, #39680	; 0x9b00
  10045c:	e3400010 	movt	r0, #16
  100460:	e3a0c003 	mov	ip, #3
  100464:	e1a01007 	mov	r1, r7
  100468:	e2802f7f 	add	r2, r0, #508	; 0x1fc
  10046c:	e3a0303f 	mov	r3, #63	; 0x3f
  100470:	e58d0004 	str	r0, [sp, #4]
  100474:	e30f0fff 	movw	r0, #65535	; 0xffff
  100478:	e58dc010 	str	ip, [sp, #16]
  10047c:	e58d0000 	str	r0, [sp]
  100480:	e3a00080 	mov	r0, #128	; 0x80
  100484:	e58d700c 	str	r7, [sp, #12]
  100488:	e58d0008 	str	r0, [sp, #8]
  10048c:	e3000114 	movw	r0, #276	; 0x114
  100490:	e3400010 	movt	r0, #16
  100494:	eb00095b 	bl	102a08 <OSTaskCreateExt>
  100498:	e3a0003f 	mov	r0, #63	; 0x3f
  10049c:	e28d2037 	add	r2, sp, #55	; 0x37
  1004a0:	e30713c0 	movw	r1, #29632	; 0x73c0
  1004a4:	e3401010 	movt	r1, #16
  1004a8:	eb000a62 	bl	102e38 <OSTaskNameSet>
  1004ac:	eb000d14 	bl	103904 <OSInitHookEnd>
  1004b0:	e28dd03c 	add	sp, sp, #60	; 0x3c
  1004b4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

001004b8 <OSIntEnter>:
  1004b8:	e3093a46 	movw	r3, #39494	; 0x9a46
  1004bc:	e3403010 	movt	r3, #16
  1004c0:	e5d33000 	ldrb	r3, [r3]
  1004c4:	e3530001 	cmp	r3, #1
  1004c8:	112fff1e 	bxne	lr
  1004cc:	e3093af4 	movw	r3, #39668	; 0x9af4
  1004d0:	e3403010 	movt	r3, #16
  1004d4:	e5d32000 	ldrb	r2, [r3]
  1004d8:	e35200ff 	cmp	r2, #255	; 0xff
  1004dc:	12822001 	addne	r2, r2, #1
  1004e0:	15c32000 	strbne	r2, [r3]
  1004e4:	e12fff1e 	bx	lr

001004e8 <OSIntExit>:
  1004e8:	e92d4038 	push	{r3, r4, r5, lr}
  1004ec:	e3093a46 	movw	r3, #39494	; 0x9a46
  1004f0:	e3403010 	movt	r3, #16
  1004f4:	e5d33000 	ldrb	r3, [r3]
  1004f8:	e3530001 	cmp	r3, #1
  1004fc:	18bd8038 	popne	{r3, r4, r5, pc}
  100500:	eb0014c0 	bl	105808 <guest_OS_ENTER_CRITICAL>
  100504:	e3093af4 	movw	r3, #39668	; 0x9af4
  100508:	e3403010 	movt	r3, #16
  10050c:	e5d32000 	ldrb	r2, [r3]
  100510:	e3520000 	cmp	r2, #0
  100514:	1a000029 	bne	1005c0 <OSIntExit+0xd8>
  100518:	e3093a44 	movw	r3, #39492	; 0x9a44
  10051c:	e3403010 	movt	r3, #16
  100520:	e5d33000 	ldrb	r3, [r3]
  100524:	e3530000 	cmp	r3, #0
  100528:	1a000022 	bne	1005b8 <OSIntExit+0xd0>
  10052c:	e3092ae4 	movw	r2, #39652	; 0x9ae4
  100530:	e3402010 	movt	r2, #16
  100534:	e3073120 	movw	r3, #28960	; 0x7120
  100538:	e3403010 	movt	r3, #16
  10053c:	e5d20000 	ldrb	r0, [r2]
  100540:	e309cae8 	movw	ip, #39656	; 0x9ae8
  100544:	e340c010 	movt	ip, #16
  100548:	e3092a4d 	movw	r2, #39501	; 0x9a4d
  10054c:	e3402010 	movt	r2, #16
  100550:	e30a1480 	movw	r1, #42112	; 0xa480
  100554:	e7d34000 	ldrb	r4, [r3, r0]
  100558:	e3401010 	movt	r1, #16
  10055c:	e5d25000 	ldrb	r5, [r2]
  100560:	e3090a4c 	movw	r0, #39500	; 0x9a4c
  100564:	e3400010 	movt	r0, #16
  100568:	e3092ae0 	movw	r2, #39648	; 0x9ae0
  10056c:	e7dcc004 	ldrb	ip, [ip, r4]
  100570:	e3402010 	movt	r2, #16
  100574:	e7d3300c 	ldrb	r3, [r3, ip]
  100578:	e0833184 	add	r3, r3, r4, lsl #3
  10057c:	e6ef3073 	uxtb	r3, r3
  100580:	e5c03000 	strb	r3, [r0]
  100584:	e1550003 	cmp	r5, r3
  100588:	e7913103 	ldr	r3, [r1, r3, lsl #2]
  10058c:	e5823000 	str	r3, [r2]
  100590:	0a000008 	beq	1005b8 <OSIntExit+0xd0>
  100594:	e3092ad0 	movw	r2, #39632	; 0x9ad0
  100598:	e3402010 	movt	r2, #16
  10059c:	e5930034 	ldr	r0, [r3, #52]	; 0x34
  1005a0:	e5921000 	ldr	r1, [r2]
  1005a4:	e2800001 	add	r0, r0, #1
  1005a8:	e5830034 	str	r0, [r3, #52]	; 0x34
  1005ac:	e2813001 	add	r3, r1, #1
  1005b0:	e5823000 	str	r3, [r2]
  1005b4:	eb000bfd 	bl	1035b0 <OSIntCtxSw>
  1005b8:	e8bd4038 	pop	{r3, r4, r5, lr}
  1005bc:	ea001494 	b	105814 <guest_OS_EXIT_CRITICAL>
  1005c0:	e2422001 	sub	r2, r2, #1
  1005c4:	e6ef2072 	uxtb	r2, r2
  1005c8:	e5c32000 	strb	r2, [r3]
  1005cc:	e3520000 	cmp	r2, #0
  1005d0:	1afffff8 	bne	1005b8 <OSIntExit+0xd0>
  1005d4:	eaffffcf 	b	100518 <OSIntExit+0x30>

001005d8 <OSSchedLock>:
  1005d8:	e92d4008 	push	{r3, lr}
  1005dc:	e3093a46 	movw	r3, #39494	; 0x9a46
  1005e0:	e3403010 	movt	r3, #16
  1005e4:	e5d33000 	ldrb	r3, [r3]
  1005e8:	e3530001 	cmp	r3, #1
  1005ec:	18bd8008 	popne	{r3, pc}
  1005f0:	eb001484 	bl	105808 <guest_OS_ENTER_CRITICAL>
  1005f4:	e3093af4 	movw	r3, #39668	; 0x9af4
  1005f8:	e3403010 	movt	r3, #16
  1005fc:	e5d33000 	ldrb	r3, [r3]
  100600:	e3530000 	cmp	r3, #0
  100604:	1a000005 	bne	100620 <OSSchedLock+0x48>
  100608:	e3093a44 	movw	r3, #39492	; 0x9a44
  10060c:	e3403010 	movt	r3, #16
  100610:	e5d32000 	ldrb	r2, [r3]
  100614:	e35200ff 	cmp	r2, #255	; 0xff
  100618:	12822001 	addne	r2, r2, #1
  10061c:	15c32000 	strbne	r2, [r3]
  100620:	e8bd4008 	pop	{r3, lr}
  100624:	ea00147a 	b	105814 <guest_OS_EXIT_CRITICAL>

00100628 <OSStart>:
  100628:	e3093a46 	movw	r3, #39494	; 0x9a46
  10062c:	e3403010 	movt	r3, #16
  100630:	e92d0070 	push	{r4, r5, r6}
  100634:	e5d33000 	ldrb	r3, [r3]
  100638:	e3530000 	cmp	r3, #0
  10063c:	0a000001 	beq	100648 <OSStart+0x20>
  100640:	e8bd0070 	pop	{r4, r5, r6}
  100644:	e12fff1e 	bx	lr
  100648:	e3092ae4 	movw	r2, #39652	; 0x9ae4
  10064c:	e3402010 	movt	r2, #16
  100650:	e3073120 	movw	r3, #28960	; 0x7120
  100654:	e3403010 	movt	r3, #16
  100658:	e5d21000 	ldrb	r1, [r2]
  10065c:	e3092ae8 	movw	r2, #39656	; 0x9ae8
  100660:	e3402010 	movt	r2, #16
  100664:	e30a0480 	movw	r0, #42112	; 0xa480
  100668:	e3094a4c 	movw	r4, #39500	; 0x9a4c
  10066c:	e3400010 	movt	r0, #16
  100670:	e7d35001 	ldrb	r5, [r3, r1]
  100674:	e3404010 	movt	r4, #16
  100678:	e309ca4d 	movw	ip, #39501	; 0x9a4d
  10067c:	e340c010 	movt	ip, #16
  100680:	e3091ae0 	movw	r1, #39648	; 0x9ae0
  100684:	e3401010 	movt	r1, #16
  100688:	e7d26005 	ldrb	r6, [r2, r5]
  10068c:	e3092af8 	movw	r2, #39672	; 0x9af8
  100690:	e3402010 	movt	r2, #16
  100694:	e7d33006 	ldrb	r3, [r3, r6]
  100698:	e0833185 	add	r3, r3, r5, lsl #3
  10069c:	e6ef3073 	uxtb	r3, r3
  1006a0:	e5c43000 	strb	r3, [r4]
  1006a4:	e5cc3000 	strb	r3, [ip]
  1006a8:	e7903103 	ldr	r3, [r0, r3, lsl #2]
  1006ac:	e5813000 	str	r3, [r1]
  1006b0:	e5823000 	str	r3, [r2]
  1006b4:	e8bd0070 	pop	{r4, r5, r6}
  1006b8:	ea000b96 	b	103518 <OSStartHighRdy>

001006bc <OSTimeTick>:
  1006bc:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
  1006c0:	eb000cd3 	bl	103a14 <OSTimeTickHook>
  1006c4:	eb00144f 	bl	105808 <guest_OS_ENTER_CRITICAL>
  1006c8:	e3093afc 	movw	r3, #39676	; 0x9afc
  1006cc:	e3403010 	movt	r3, #16
  1006d0:	e5932000 	ldr	r2, [r3]
  1006d4:	e2822001 	add	r2, r2, #1
  1006d8:	e5832000 	str	r2, [r3]
  1006dc:	eb00144c 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1006e0:	e3093a46 	movw	r3, #39494	; 0x9a46
  1006e4:	e3403010 	movt	r3, #16
  1006e8:	e5d33000 	ldrb	r3, [r3]
  1006ec:	e3530001 	cmp	r3, #1
  1006f0:	18bd80f8 	popne	{r3, r4, r5, r6, r7, pc}
  1006f4:	e3092acc 	movw	r2, #39628	; 0x9acc
  1006f8:	e3402010 	movt	r2, #16
  1006fc:	e5d21000 	ldrb	r1, [r2]
  100700:	e3510001 	cmp	r1, #1
  100704:	08bd80f8 	popeq	{r3, r4, r5, r6, r7, pc}
  100708:	2a00002b 	bcs	1007bc <OSTimeTick+0x100>
  10070c:	e3093a50 	movw	r3, #39504	; 0x9a50
  100710:	e3403010 	movt	r3, #16
  100714:	e5934000 	ldr	r4, [r3]
  100718:	e5d4302e 	ldrb	r3, [r4, #46]	; 0x2e
  10071c:	e353003f 	cmp	r3, #63	; 0x3f
  100720:	08bd80f8 	popeq	{r3, r4, r5, r6, r7, pc}
  100724:	e3096ae4 	movw	r6, #39652	; 0x9ae4
  100728:	e3095ae8 	movw	r5, #39656	; 0x9ae8
  10072c:	e3406010 	movt	r6, #16
  100730:	e3405010 	movt	r5, #16
  100734:	e3a07001 	mov	r7, #1
  100738:	eb001432 	bl	105808 <guest_OS_ENTER_CRITICAL>
  10073c:	e5943028 	ldr	r3, [r4, #40]	; 0x28
  100740:	e3530000 	cmp	r3, #0
  100744:	e2432001 	sub	r2, r3, #1
  100748:	0a000015 	beq	1007a4 <OSTimeTick+0xe8>
  10074c:	e3520000 	cmp	r2, #0
  100750:	e5842028 	str	r2, [r4, #40]	; 0x28
  100754:	1a000012 	bne	1007a4 <OSTimeTick+0xe8>
  100758:	e5d4302c 	ldrb	r3, [r4, #44]	; 0x2c
  10075c:	e2132037 	ands	r2, r3, #55	; 0x37
  100760:	15c4702d 	strbne	r7, [r4, #45]	; 0x2d
  100764:	120330c8 	andne	r3, r3, #200	; 0xc8
  100768:	15c4302c 	strbne	r3, [r4, #44]	; 0x2c
  10076c:	e2033008 	and	r3, r3, #8
  100770:	05c4202d 	strbeq	r2, [r4, #45]	; 0x2d
  100774:	e6ef3073 	uxtb	r3, r3
  100778:	e3530000 	cmp	r3, #0
  10077c:	1a000008 	bne	1007a4 <OSTimeTick+0xe8>
  100780:	e5d43030 	ldrb	r3, [r4, #48]	; 0x30
  100784:	e5d40032 	ldrb	r0, [r4, #50]	; 0x32
  100788:	e5d42031 	ldrb	r2, [r4, #49]	; 0x31
  10078c:	e5d6c000 	ldrb	ip, [r6]
  100790:	e7d51003 	ldrb	r1, [r5, r3]
  100794:	e18c0000 	orr	r0, ip, r0
  100798:	e5c60000 	strb	r0, [r6]
  10079c:	e1812002 	orr	r2, r1, r2
  1007a0:	e7c52003 	strb	r2, [r5, r3]
  1007a4:	e5944014 	ldr	r4, [r4, #20]
  1007a8:	eb001419 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1007ac:	e5d4302e 	ldrb	r3, [r4, #46]	; 0x2e
  1007b0:	e353003f 	cmp	r3, #63	; 0x3f
  1007b4:	1affffdf 	bne	100738 <OSTimeTick+0x7c>
  1007b8:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
  1007bc:	e3510002 	cmp	r1, #2
  1007c0:	13a03000 	movne	r3, #0
  1007c4:	e5c23000 	strb	r3, [r2]
  1007c8:	eaffffcf 	b	10070c <OSTimeTick+0x50>

001007cc <OSVersion>:
  1007cc:	e3070217 	movw	r0, #29207	; 0x7217
  1007d0:	e12fff1e 	bx	lr

001007d4 <OS_Dummy>:
  1007d4:	e12fff1e 	bx	lr

001007d8 <OS_EventTaskWait>:
  1007d8:	e3093af8 	movw	r3, #39672	; 0x9af8
  1007dc:	e3403010 	movt	r3, #16
  1007e0:	e92d0030 	push	{r4, r5}
  1007e4:	e3092ae8 	movw	r2, #39656	; 0x9ae8
  1007e8:	e5933000 	ldr	r3, [r3]
  1007ec:	e3402010 	movt	r2, #16
  1007f0:	e5d31030 	ldrb	r1, [r3, #48]	; 0x30
  1007f4:	e583001c 	str	r0, [r3, #28]
  1007f8:	e0801001 	add	r1, r0, r1
  1007fc:	e5d34031 	ldrb	r4, [r3, #49]	; 0x31
  100800:	e5d0c00a 	ldrb	ip, [r0, #10]
  100804:	e5d1500b 	ldrb	r5, [r1, #11]
  100808:	e1854004 	orr	r4, r5, r4
  10080c:	e5c1400b 	strb	r4, [r1, #11]
  100810:	e5d31032 	ldrb	r1, [r3, #50]	; 0x32
  100814:	e181100c 	orr	r1, r1, ip
  100818:	e5c0100a 	strb	r1, [r0, #10]
  10081c:	e5d30030 	ldrb	r0, [r3, #48]	; 0x30
  100820:	e5d3c031 	ldrb	ip, [r3, #49]	; 0x31
  100824:	e7d21000 	ldrb	r1, [r2, r0]
  100828:	e1c1100c 	bic	r1, r1, ip
  10082c:	e7c21000 	strb	r1, [r2, r0]
  100830:	e3510000 	cmp	r1, #0
  100834:	1a000005 	bne	100850 <OS_EventTaskWait+0x78>
  100838:	e3092ae4 	movw	r2, #39652	; 0x9ae4
  10083c:	e3402010 	movt	r2, #16
  100840:	e5d31032 	ldrb	r1, [r3, #50]	; 0x32
  100844:	e5d23000 	ldrb	r3, [r2]
  100848:	e1c33001 	bic	r3, r3, r1
  10084c:	e5c23000 	strb	r3, [r2]
  100850:	e8bd0030 	pop	{r4, r5}
  100854:	e12fff1e 	bx	lr

00100858 <OS_EventTaskWaitMulti>:
  100858:	e3093af8 	movw	r3, #39672	; 0x9af8
  10085c:	e3403010 	movt	r3, #16
  100860:	e92d0030 	push	{r4, r5}
  100864:	e5932000 	ldr	r2, [r3]
  100868:	e3a03000 	mov	r3, #0
  10086c:	e5820020 	str	r0, [r2, #32]
  100870:	e582301c 	str	r3, [r2, #28]
  100874:	e5903000 	ldr	r3, [r0]
  100878:	e3530000 	cmp	r3, #0
  10087c:	0a00000c 	beq	1008b4 <OS_EventTaskWaitMulti+0x5c>
  100880:	e5d21030 	ldrb	r1, [r2, #48]	; 0x30
  100884:	e5d24031 	ldrb	r4, [r2, #49]	; 0x31
  100888:	e0831001 	add	r1, r3, r1
  10088c:	e5d3c00a 	ldrb	ip, [r3, #10]
  100890:	e5d1500b 	ldrb	r5, [r1, #11]
  100894:	e1854004 	orr	r4, r5, r4
  100898:	e5c1400b 	strb	r4, [r1, #11]
  10089c:	e5d21032 	ldrb	r1, [r2, #50]	; 0x32
  1008a0:	e181100c 	orr	r1, r1, ip
  1008a4:	e5c3100a 	strb	r1, [r3, #10]
  1008a8:	e5b03004 	ldr	r3, [r0, #4]!
  1008ac:	e3530000 	cmp	r3, #0
  1008b0:	1afffff2 	bne	100880 <OS_EventTaskWaitMulti+0x28>
  1008b4:	e5d20030 	ldrb	r0, [r2, #48]	; 0x30
  1008b8:	e3093ae8 	movw	r3, #39656	; 0x9ae8
  1008bc:	e3403010 	movt	r3, #16
  1008c0:	e5d2c031 	ldrb	ip, [r2, #49]	; 0x31
  1008c4:	e7d31000 	ldrb	r1, [r3, r0]
  1008c8:	e1c1100c 	bic	r1, r1, ip
  1008cc:	e7c31000 	strb	r1, [r3, r0]
  1008d0:	e3510000 	cmp	r1, #0
  1008d4:	1a000005 	bne	1008f0 <OS_EventTaskWaitMulti+0x98>
  1008d8:	e3093ae4 	movw	r3, #39652	; 0x9ae4
  1008dc:	e3403010 	movt	r3, #16
  1008e0:	e5d21032 	ldrb	r1, [r2, #50]	; 0x32
  1008e4:	e5d32000 	ldrb	r2, [r3]
  1008e8:	e1c22001 	bic	r2, r2, r1
  1008ec:	e5c32000 	strb	r2, [r3]
  1008f0:	e8bd0030 	pop	{r4, r5}
  1008f4:	e12fff1e 	bx	lr

001008f8 <OS_EventTaskRemove>:
  1008f8:	e5d02030 	ldrb	r2, [r0, #48]	; 0x30
  1008fc:	e5d0c031 	ldrb	ip, [r0, #49]	; 0x31
  100900:	e0812002 	add	r2, r1, r2
  100904:	e5d2300b 	ldrb	r3, [r2, #11]
  100908:	e1c3300c 	bic	r3, r3, ip
  10090c:	e5c2300b 	strb	r3, [r2, #11]
  100910:	e3530000 	cmp	r3, #0
  100914:	05d1300a 	ldrbeq	r3, [r1, #10]
  100918:	05d02032 	ldrbeq	r2, [r0, #50]	; 0x32
  10091c:	01c33002 	biceq	r3, r3, r2
  100920:	05c1300a 	strbeq	r3, [r1, #10]
  100924:	e12fff1e 	bx	lr

00100928 <OS_EventTaskRemoveMulti>:
  100928:	e5913000 	ldr	r3, [r1]
  10092c:	e92d0030 	push	{r4, r5}
  100930:	e3530000 	cmp	r3, #0
  100934:	e5d0c030 	ldrb	ip, [r0, #48]	; 0x30
  100938:	e5d05032 	ldrb	r5, [r0, #50]	; 0x32
  10093c:	e5d04031 	ldrb	r4, [r0, #49]	; 0x31
  100940:	0a00000d 	beq	10097c <OS_EventTaskRemoveMulti+0x54>
  100944:	e1e04004 	mvn	r4, r4
  100948:	e1e05005 	mvn	r5, r5
  10094c:	e6ef4074 	uxtb	r4, r4
  100950:	e083000c 	add	r0, r3, ip
  100954:	e5d0200b 	ldrb	r2, [r0, #11]
  100958:	e0042002 	and	r2, r4, r2
  10095c:	e5c0200b 	strb	r2, [r0, #11]
  100960:	e3520000 	cmp	r2, #0
  100964:	05d3200a 	ldrbeq	r2, [r3, #10]
  100968:	00052002 	andeq	r2, r5, r2
  10096c:	05c3200a 	strbeq	r2, [r3, #10]
  100970:	e5b13004 	ldr	r3, [r1, #4]!
  100974:	e3530000 	cmp	r3, #0
  100978:	1afffff4 	bne	100950 <OS_EventTaskRemoveMulti+0x28>
  10097c:	e8bd0030 	pop	{r4, r5}
  100980:	e12fff1e 	bx	lr

00100984 <OS_EventTaskRdy>:
  100984:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
  100988:	e1a05000 	mov	r5, r0
  10098c:	e5d5c00a 	ldrb	ip, [r5, #10]
  100990:	e3070120 	movw	r0, #28960	; 0x7120
  100994:	e3400010 	movt	r0, #16
  100998:	e30a4480 	movw	r4, #42112	; 0xa480
  10099c:	e3404010 	movt	r4, #16
  1009a0:	e3a07000 	mov	r7, #0
  1009a4:	e7d0c00c 	ldrb	ip, [r0, ip]
  1009a8:	e085600c 	add	r6, r5, ip
  1009ac:	e5d6600b 	ldrb	r6, [r6, #11]
  1009b0:	e7d06006 	ldrb	r6, [r0, r6]
  1009b4:	e086618c 	add	r6, r6, ip, lsl #3
  1009b8:	e6ef6076 	uxtb	r6, r6
  1009bc:	e7944106 	ldr	r4, [r4, r6, lsl #2]
  1009c0:	e5d4002c 	ldrb	r0, [r4, #44]	; 0x2c
  1009c4:	e5841024 	str	r1, [r4, #36]	; 0x24
  1009c8:	e1c02002 	bic	r2, r0, r2
  1009cc:	e5847028 	str	r7, [r4, #40]	; 0x28
  1009d0:	e2021008 	and	r1, r2, #8
  1009d4:	e5c4202c 	strb	r2, [r4, #44]	; 0x2c
  1009d8:	e5c4302d 	strb	r3, [r4, #45]	; 0x2d
  1009dc:	e6ef1071 	uxtb	r1, r1
  1009e0:	e1510007 	cmp	r1, r7
  1009e4:	1a00000b 	bne	100a18 <OS_EventTaskRdy+0x94>
  1009e8:	e3092ae4 	movw	r2, #39652	; 0x9ae4
  1009ec:	e3093ae8 	movw	r3, #39656	; 0x9ae8
  1009f0:	e3402010 	movt	r2, #16
  1009f4:	e3403010 	movt	r3, #16
  1009f8:	e5d47032 	ldrb	r7, [r4, #50]	; 0x32
  1009fc:	e5d28000 	ldrb	r8, [r2]
  100a00:	e7d3000c 	ldrb	r0, [r3, ip]
  100a04:	e5d41031 	ldrb	r1, [r4, #49]	; 0x31
  100a08:	e1887007 	orr	r7, r8, r7
  100a0c:	e5c27000 	strb	r7, [r2]
  100a10:	e1802001 	orr	r2, r0, r1
  100a14:	e7c3200c 	strb	r2, [r3, ip]
  100a18:	e5d42030 	ldrb	r2, [r4, #48]	; 0x30
  100a1c:	e5d41031 	ldrb	r1, [r4, #49]	; 0x31
  100a20:	e0852002 	add	r2, r5, r2
  100a24:	e2822008 	add	r2, r2, #8
  100a28:	e5d23003 	ldrb	r3, [r2, #3]
  100a2c:	e1c33001 	bic	r3, r3, r1
  100a30:	e5c23003 	strb	r3, [r2, #3]
  100a34:	e3530000 	cmp	r3, #0
  100a38:	05d5300a 	ldrbeq	r3, [r5, #10]
  100a3c:	05d42032 	ldrbeq	r2, [r4, #50]	; 0x32
  100a40:	01c33002 	biceq	r3, r3, r2
  100a44:	05c5300a 	strbeq	r3, [r5, #10]
  100a48:	e5941020 	ldr	r1, [r4, #32]
  100a4c:	e3510000 	cmp	r1, #0
  100a50:	0a000002 	beq	100a60 <OS_EventTaskRdy+0xdc>
  100a54:	e1a00004 	mov	r0, r4
  100a58:	ebffffb2 	bl	100928 <OS_EventTaskRemoveMulti>
  100a5c:	e584501c 	str	r5, [r4, #28]
  100a60:	e1a00006 	mov	r0, r6
  100a64:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

00100a68 <OS_EventWaitListInit>:
  100a68:	e3a03000 	mov	r3, #0
  100a6c:	e5c0300a 	strb	r3, [r0, #10]
  100a70:	e5c0300b 	strb	r3, [r0, #11]
  100a74:	e5c0300c 	strb	r3, [r0, #12]
  100a78:	e5c0300d 	strb	r3, [r0, #13]
  100a7c:	e5c0300e 	strb	r3, [r0, #14]
  100a80:	e5c0300f 	strb	r3, [r0, #15]
  100a84:	e5c03010 	strb	r3, [r0, #16]
  100a88:	e5c03011 	strb	r3, [r0, #17]
  100a8c:	e5c03012 	strb	r3, [r0, #18]
  100a90:	e12fff1e 	bx	lr

00100a94 <OS_MemClr>:
  100a94:	e3510000 	cmp	r1, #0
  100a98:	012fff1e 	bxeq	lr
  100a9c:	e3a03000 	mov	r3, #0
  100aa0:	e2411001 	sub	r1, r1, #1
  100aa4:	e4c03001 	strb	r3, [r0], #1
  100aa8:	e6ff1071 	uxth	r1, r1
  100aac:	e3510000 	cmp	r1, #0
  100ab0:	1afffffa 	bne	100aa0 <OS_MemClr+0xc>
  100ab4:	e12fff1e 	bx	lr

00100ab8 <OS_MemCopy>:
  100ab8:	e3520000 	cmp	r2, #0
  100abc:	012fff1e 	bxeq	lr
  100ac0:	e2411001 	sub	r1, r1, #1
  100ac4:	e2422001 	sub	r2, r2, #1
  100ac8:	e5f13001 	ldrb	r3, [r1, #1]!
  100acc:	e6ff2072 	uxth	r2, r2
  100ad0:	e3520000 	cmp	r2, #0
  100ad4:	e4c03001 	strb	r3, [r0], #1
  100ad8:	1afffff9 	bne	100ac4 <OS_MemCopy+0xc>
  100adc:	e12fff1e 	bx	lr

00100ae0 <OS_Sched>:
  100ae0:	e92d4038 	push	{r3, r4, r5, lr}
  100ae4:	eb001347 	bl	105808 <guest_OS_ENTER_CRITICAL>
  100ae8:	e3093af4 	movw	r3, #39668	; 0x9af4
  100aec:	e3403010 	movt	r3, #16
  100af0:	e5d33000 	ldrb	r3, [r3]
  100af4:	e3530000 	cmp	r3, #0
  100af8:	1a000027 	bne	100b9c <OS_Sched+0xbc>
  100afc:	e3093a44 	movw	r3, #39492	; 0x9a44
  100b00:	e3403010 	movt	r3, #16
  100b04:	e5d33000 	ldrb	r3, [r3]
  100b08:	e3530000 	cmp	r3, #0
  100b0c:	1a000022 	bne	100b9c <OS_Sched+0xbc>
  100b10:	e3092ae4 	movw	r2, #39652	; 0x9ae4
  100b14:	e3402010 	movt	r2, #16
  100b18:	e3073120 	movw	r3, #28960	; 0x7120
  100b1c:	e3403010 	movt	r3, #16
  100b20:	e5d20000 	ldrb	r0, [r2]
  100b24:	e309cae8 	movw	ip, #39656	; 0x9ae8
  100b28:	e340c010 	movt	ip, #16
  100b2c:	e3092a4d 	movw	r2, #39501	; 0x9a4d
  100b30:	e3402010 	movt	r2, #16
  100b34:	e30a1480 	movw	r1, #42112	; 0xa480
  100b38:	e7d34000 	ldrb	r4, [r3, r0]
  100b3c:	e3401010 	movt	r1, #16
  100b40:	e5d25000 	ldrb	r5, [r2]
  100b44:	e3090a4c 	movw	r0, #39500	; 0x9a4c
  100b48:	e3400010 	movt	r0, #16
  100b4c:	e3092ae0 	movw	r2, #39648	; 0x9ae0
  100b50:	e7dcc004 	ldrb	ip, [ip, r4]
  100b54:	e3402010 	movt	r2, #16
  100b58:	e7d3300c 	ldrb	r3, [r3, ip]
  100b5c:	e0833184 	add	r3, r3, r4, lsl #3
  100b60:	e6ef3073 	uxtb	r3, r3
  100b64:	e5c03000 	strb	r3, [r0]
  100b68:	e1550003 	cmp	r5, r3
  100b6c:	e7913103 	ldr	r3, [r1, r3, lsl #2]
  100b70:	e5823000 	str	r3, [r2]
  100b74:	0a000008 	beq	100b9c <OS_Sched+0xbc>
  100b78:	e3092ad0 	movw	r2, #39632	; 0x9ad0
  100b7c:	e3402010 	movt	r2, #16
  100b80:	e5930034 	ldr	r0, [r3, #52]	; 0x34
  100b84:	e5921000 	ldr	r1, [r2]
  100b88:	e2800001 	add	r0, r0, #1
  100b8c:	e5830034 	str	r0, [r3, #52]	; 0x34
  100b90:	e2813001 	add	r3, r1, #1
  100b94:	e5823000 	str	r3, [r2]
  100b98:	eb000a6a 	bl	103548 <OSCtxSw>
  100b9c:	e8bd4038 	pop	{r3, r4, r5, lr}
  100ba0:	ea00131b 	b	105814 <guest_OS_EXIT_CRITICAL>

00100ba4 <OSSchedUnlock>:
  100ba4:	e92d4008 	push	{r3, lr}
  100ba8:	e3093a46 	movw	r3, #39494	; 0x9a46
  100bac:	e3403010 	movt	r3, #16
  100bb0:	e5d33000 	ldrb	r3, [r3]
  100bb4:	e3530001 	cmp	r3, #1
  100bb8:	18bd8008 	popne	{r3, pc}
  100bbc:	eb001311 	bl	105808 <guest_OS_ENTER_CRITICAL>
  100bc0:	e3093af4 	movw	r3, #39668	; 0x9af4
  100bc4:	e3403010 	movt	r3, #16
  100bc8:	e5d33000 	ldrb	r3, [r3]
  100bcc:	e3530000 	cmp	r3, #0
  100bd0:	1a00000c 	bne	100c08 <OSSchedUnlock+0x64>
  100bd4:	e3093a44 	movw	r3, #39492	; 0x9a44
  100bd8:	e3403010 	movt	r3, #16
  100bdc:	e5d32000 	ldrb	r2, [r3]
  100be0:	e3520000 	cmp	r2, #0
  100be4:	0a000007 	beq	100c08 <OSSchedUnlock+0x64>
  100be8:	e2422001 	sub	r2, r2, #1
  100bec:	e6ef2072 	uxtb	r2, r2
  100bf0:	e5c32000 	strb	r2, [r3]
  100bf4:	e3520000 	cmp	r2, #0
  100bf8:	1a000002 	bne	100c08 <OSSchedUnlock+0x64>
  100bfc:	eb001304 	bl	105814 <guest_OS_EXIT_CRITICAL>
  100c00:	e8bd4008 	pop	{r3, lr}
  100c04:	eaffffb5 	b	100ae0 <OS_Sched>
  100c08:	e8bd4008 	pop	{r3, lr}
  100c0c:	ea001300 	b	105814 <guest_OS_EXIT_CRITICAL>

00100c10 <OSEventPendMulti>:
  100c10:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  100c14:	e1a07001 	mov	r7, r1
  100c18:	e3a01000 	mov	r1, #0
  100c1c:	e5871000 	str	r1, [r7]
  100c20:	e5905000 	ldr	r5, [r0]
  100c24:	e24dd00c 	sub	sp, sp, #12
  100c28:	e1a06000 	mov	r6, r0
  100c2c:	e1550001 	cmp	r5, r1
  100c30:	e59d8030 	ldr	r8, [sp, #48]	; 0x30
  100c34:	0a00000f 	beq	100c78 <OSEventPendMulti+0x68>
  100c38:	e1a04000 	mov	r4, r0
  100c3c:	e1a0c005 	mov	ip, r5
  100c40:	e5dcc000 	ldrb	ip, [ip]
  100c44:	e35c0001 	cmp	ip, #1
  100c48:	0a000007 	beq	100c6c <OSEventPendMulti+0x5c>
  100c4c:	e35c0003 	cmp	ip, #3
  100c50:	0a000005 	beq	100c6c <OSEventPendMulti+0x5c>
  100c54:	e3a04000 	mov	r4, #0
  100c58:	e3a03001 	mov	r3, #1
  100c5c:	e5c83000 	strb	r3, [r8]
  100c60:	e1a00004 	mov	r0, r4
  100c64:	e28dd00c 	add	sp, sp, #12
  100c68:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  100c6c:	e5b4c004 	ldr	ip, [r4, #4]!
  100c70:	e35c0000 	cmp	ip, #0
  100c74:	1afffff1 	bne	100c40 <OSEventPendMulti+0x30>
  100c78:	e3091af4 	movw	r1, #39668	; 0x9af4
  100c7c:	e3401010 	movt	r1, #16
  100c80:	e5d14000 	ldrb	r4, [r1]
  100c84:	e3540000 	cmp	r4, #0
  100c88:	1a00001a 	bne	100cf8 <OSEventPendMulti+0xe8>
  100c8c:	e3091a44 	movw	r1, #39492	; 0x9a44
  100c90:	e3401010 	movt	r1, #16
  100c94:	e5d1a000 	ldrb	sl, [r1]
  100c98:	e35a0000 	cmp	sl, #0
  100c9c:	13a0300d 	movne	r3, #13
  100ca0:	15c83000 	strbne	r3, [r8]
  100ca4:	1affffed 	bne	100c60 <OSEventPendMulti+0x50>
  100ca8:	e88d000c 	stm	sp, {r2, r3}
  100cac:	eb0012d5 	bl	105808 <guest_OS_ENTER_CRITICAL>
  100cb0:	e3550000 	cmp	r5, #0
  100cb4:	e89d000c 	ldm	sp, {r2, r3}
  100cb8:	0a000070 	beq	100e80 <OSEventPendMulti+0x270>
  100cbc:	e1a00006 	mov	r0, r6
  100cc0:	e1a0400a 	mov	r4, sl
  100cc4:	e1a0e00a 	mov	lr, sl
  100cc8:	e1a0900a 	mov	r9, sl
  100ccc:	e5d51000 	ldrb	r1, [r5]
  100cd0:	e3510001 	cmp	r1, #1
  100cd4:	0a00000b 	beq	100d08 <OSEventPendMulti+0xf8>
  100cd8:	e3510003 	cmp	r1, #3
  100cdc:	0a000043 	beq	100df0 <OSEventPendMulti+0x1e0>
  100ce0:	eb0012cb 	bl	105814 <guest_OS_EXIT_CRITICAL>
  100ce4:	e3a03000 	mov	r3, #0
  100ce8:	e5873000 	str	r3, [r7]
  100cec:	e3a03001 	mov	r3, #1
  100cf0:	e5c83000 	strb	r3, [r8]
  100cf4:	eaffffd9 	b	100c60 <OSEventPendMulti+0x50>
  100cf8:	e3a03002 	mov	r3, #2
  100cfc:	e3a04000 	mov	r4, #0
  100d00:	e5c83000 	strb	r3, [r8]
  100d04:	eaffffd5 	b	100c60 <OSEventPendMulti+0x50>
  100d08:	e595c004 	ldr	ip, [r5, #4]
  100d0c:	e284b001 	add	fp, r4, #1
  100d10:	e35c0000 	cmp	ip, #0
  100d14:	038aa002 	orreq	sl, sl, #2
  100d18:	16ff407b 	uxthne	r4, fp
  100d1c:	11a0e001 	movne	lr, r1
  100d20:	1482c004 	strne	ip, [r2], #4
  100d24:	06efa07a 	uxtbeq	sl, sl
  100d28:	15859004 	strne	r9, [r5, #4]
  100d2c:	14875004 	strne	r5, [r7], #4
  100d30:	e5b05004 	ldr	r5, [r0, #4]!
  100d34:	e3550000 	cmp	r5, #0
  100d38:	1affffe3 	bne	100ccc <OSEventPendMulti+0xbc>
  100d3c:	e35e0001 	cmp	lr, #1
  100d40:	0a000056 	beq	100ea0 <OSEventPendMulti+0x290>
  100d44:	e3099af8 	movw	r9, #39672	; 0x9af8
  100d48:	e3409010 	movt	r9, #16
  100d4c:	e1a00006 	mov	r0, r6
  100d50:	e3a05000 	mov	r5, #0
  100d54:	e5991000 	ldr	r1, [r9]
  100d58:	e5d1c02c 	ldrb	ip, [r1, #44]	; 0x2c
  100d5c:	e5813028 	str	r3, [r1, #40]	; 0x28
  100d60:	e5c1502d 	strb	r5, [r1, #45]	; 0x2d
  100d64:	e1e03c8c 	mvn	r3, ip, lsl #25
  100d68:	e1e03ca3 	mvn	r3, r3, lsr #25
  100d6c:	e18a3003 	orr	r3, sl, r3
  100d70:	e5c1302c 	strb	r3, [r1, #44]	; 0x2c
  100d74:	e58d2000 	str	r2, [sp]
  100d78:	ebfffeb6 	bl	100858 <OS_EventTaskWaitMulti>
  100d7c:	eb0012a4 	bl	105814 <guest_OS_EXIT_CRITICAL>
  100d80:	ebffff56 	bl	100ae0 <OS_Sched>
  100d84:	eb00129f 	bl	105808 <guest_OS_ENTER_CRITICAL>
  100d88:	e5993000 	ldr	r3, [r9]
  100d8c:	e59d2000 	ldr	r2, [sp]
  100d90:	e5d3102d 	ldrb	r1, [r3, #45]	; 0x2d
  100d94:	e1510005 	cmp	r1, r5
  100d98:	0a000020 	beq	100e20 <OSEventPendMulti+0x210>
  100d9c:	e3510002 	cmp	r1, #2
  100da0:	11a00003 	movne	r0, r3
  100da4:	0a00001d 	beq	100e20 <OSEventPendMulti+0x210>
  100da8:	e1a01006 	mov	r1, r6
  100dac:	e58d2000 	str	r2, [sp]
  100db0:	ebfffedc 	bl	100928 <OS_EventTaskRemoveMulti>
  100db4:	e59d2000 	ldr	r2, [sp]
  100db8:	e1a06007 	mov	r6, r7
  100dbc:	e5990000 	ldr	r0, [r9]
  100dc0:	e5d0302d 	ldrb	r3, [r0, #45]	; 0x2d
  100dc4:	e3530000 	cmp	r3, #0
  100dc8:	1a00001d 	bne	100e44 <OSEventPendMulti+0x234>
  100dcc:	e5d51000 	ldrb	r1, [r5]
  100dd0:	e3510001 	cmp	r1, #1
  100dd4:	2a000035 	bcs	100eb0 <OSEventPendMulti+0x2a0>
  100dd8:	eb00128d 	bl	105814 <guest_OS_EXIT_CRITICAL>
  100ddc:	e3a03000 	mov	r3, #0
  100de0:	e5863000 	str	r3, [r6]
  100de4:	e3a03001 	mov	r3, #1
  100de8:	e5c83000 	strb	r3, [r8]
  100dec:	eaffff9b 	b	100c60 <OSEventPendMulti+0x50>
  100df0:	e1d510b8 	ldrh	r1, [r5, #8]
  100df4:	e284b001 	add	fp, r4, #1
  100df8:	e38ac001 	orr	ip, sl, #1
  100dfc:	e3510000 	cmp	r1, #0
  100e00:	e2411001 	sub	r1, r1, #1
  100e04:	16ff407b 	uxthne	r4, fp
  100e08:	11c510b8 	strhne	r1, [r5, #8]
  100e0c:	13a0e001 	movne	lr, #1
  100e10:	14875004 	strne	r5, [r7], #4
  100e14:	06efa07c 	uxtbeq	sl, ip
  100e18:	14829004 	strne	r9, [r2], #4
  100e1c:	eaffffc3 	b	100d30 <OSEventPendMulti+0x120>
  100e20:	e593501c 	ldr	r5, [r3, #28]
  100e24:	e3550000 	cmp	r5, #0
  100e28:	0a000028 	beq	100ed0 <OSEventPendMulti+0x2c0>
  100e2c:	e1a06007 	mov	r6, r7
  100e30:	e3a03000 	mov	r3, #0
  100e34:	e4865004 	str	r5, [r6], #4
  100e38:	e3a04001 	mov	r4, #1
  100e3c:	e5873004 	str	r3, [r7, #4]
  100e40:	eaffffdd 	b	100dbc <OSEventPendMulti+0x1ac>
  100e44:	e3530002 	cmp	r3, #2
  100e48:	0a00000f 	beq	100e8c <OSEventPendMulti+0x27c>
  100e4c:	e3a03000 	mov	r3, #0
  100e50:	e5823000 	str	r3, [r2]
  100e54:	e3a0300a 	mov	r3, #10
  100e58:	e5c83000 	strb	r3, [r8]
  100e5c:	e5993000 	ldr	r3, [r9]
  100e60:	e3a02000 	mov	r2, #0
  100e64:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
  100e68:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
  100e6c:	e583201c 	str	r2, [r3, #28]
  100e70:	e5832020 	str	r2, [r3, #32]
  100e74:	e5832024 	str	r2, [r3, #36]	; 0x24
  100e78:	eb001265 	bl	105814 <guest_OS_EXIT_CRITICAL>
  100e7c:	eaffff77 	b	100c60 <OSEventPendMulti+0x50>
  100e80:	e1a0a005 	mov	sl, r5
  100e84:	e1a04005 	mov	r4, r5
  100e88:	eaffffad 	b	100d44 <OSEventPendMulti+0x134>
  100e8c:	e3a03000 	mov	r3, #0
  100e90:	e5823000 	str	r3, [r2]
  100e94:	e3a0300e 	mov	r3, #14
  100e98:	e5c83000 	strb	r3, [r8]
  100e9c:	eaffffee 	b	100e5c <OSEventPendMulti+0x24c>
  100ea0:	e5875000 	str	r5, [r7]
  100ea4:	eb00125a 	bl	105814 <guest_OS_EXIT_CRITICAL>
  100ea8:	e5c85000 	strb	r5, [r8]
  100eac:	eaffff6b 	b	100c60 <OSEventPendMulti+0x50>
  100eb0:	e3510002 	cmp	r1, #2
  100eb4:	9a000009 	bls	100ee0 <OSEventPendMulti+0x2d0>
  100eb8:	e3510003 	cmp	r1, #3
  100ebc:	1affffc5 	bne	100dd8 <OSEventPendMulti+0x1c8>
  100ec0:	e5823000 	str	r3, [r2]
  100ec4:	e3a03000 	mov	r3, #0
  100ec8:	e5c83000 	strb	r3, [r8]
  100ecc:	eaffffe2 	b	100e5c <OSEventPendMulti+0x24c>
  100ed0:	e3a01001 	mov	r1, #1
  100ed4:	e1a00003 	mov	r0, r3
  100ed8:	e5c3102d 	strb	r1, [r3, #45]	; 0x2d
  100edc:	eaffffb1 	b	100da8 <OSEventPendMulti+0x198>
  100ee0:	e5903024 	ldr	r3, [r0, #36]	; 0x24
  100ee4:	eafffff5 	b	100ec0 <OSEventPendMulti+0x2b0>

00100ee8 <OS_StrLen>:
  100ee8:	e5d03000 	ldrb	r3, [r0]
  100eec:	e3530000 	cmp	r3, #0
  100ef0:	0a000007 	beq	100f14 <OS_StrLen+0x2c>
  100ef4:	e1a03000 	mov	r3, r0
  100ef8:	e3a00000 	mov	r0, #0
  100efc:	e5f32001 	ldrb	r2, [r3, #1]!
  100f00:	e2800001 	add	r0, r0, #1
  100f04:	e3520000 	cmp	r2, #0
  100f08:	e6ef0070 	uxtb	r0, r0
  100f0c:	1afffffa 	bne	100efc <OS_StrLen+0x14>
  100f10:	e12fff1e 	bx	lr
  100f14:	e1a00003 	mov	r0, r3
  100f18:	e12fff1e 	bx	lr

00100f1c <OS_TaskStatStkChk>:
  100f1c:	e92d4030 	push	{r4, r5, lr}
  100f20:	e30a5480 	movw	r5, #42112	; 0xa480
  100f24:	e24dd00c 	sub	sp, sp, #12
  100f28:	e3405010 	movt	r5, #16
  100f2c:	e3a04000 	mov	r4, #0
  100f30:	e6ef0074 	uxtb	r0, r4
  100f34:	e1a0100d 	mov	r1, sp
  100f38:	eb000819 	bl	102fa4 <OSTaskStkChk>
  100f3c:	e3500000 	cmp	r0, #0
  100f40:	1a00000a 	bne	100f70 <OS_TaskStatStkChk+0x54>
  100f44:	e7953104 	ldr	r3, [r5, r4, lsl #2]
  100f48:	e3530000 	cmp	r3, #0
  100f4c:	0a000007 	beq	100f70 <OS_TaskStatStkChk+0x54>
  100f50:	e3530001 	cmp	r3, #1
  100f54:	0a000005 	beq	100f70 <OS_TaskStatStkChk+0x54>
  100f58:	e593100c 	ldr	r1, [r3, #12]
  100f5c:	e59d0004 	ldr	r0, [sp, #4]
  100f60:	e5932008 	ldr	r2, [r3, #8]
  100f64:	e5830044 	str	r0, [r3, #68]	; 0x44
  100f68:	e0822101 	add	r2, r2, r1, lsl #2
  100f6c:	e5832040 	str	r2, [r3, #64]	; 0x40
  100f70:	e2844001 	add	r4, r4, #1
  100f74:	e3540040 	cmp	r4, #64	; 0x40
  100f78:	1affffec 	bne	100f30 <OS_TaskStatStkChk+0x14>
  100f7c:	e28dd00c 	add	sp, sp, #12
  100f80:	e8bd8030 	pop	{r4, r5, pc}

00100f84 <OS_TCBInit>:
  100f84:	e92d45f8 	push	{r3, r4, r5, r6, r7, r8, sl, lr}
  100f88:	e1a06000 	mov	r6, r0
  100f8c:	e1a0a001 	mov	sl, r1
  100f90:	e1a08002 	mov	r8, r2
  100f94:	e1a07003 	mov	r7, r3
  100f98:	eb00121a 	bl	105808 <guest_OS_ENTER_CRITICAL>
  100f9c:	e309cad4 	movw	ip, #39636	; 0x9ad4
  100fa0:	e340c010 	movt	ip, #16
  100fa4:	e59c4000 	ldr	r4, [ip]
  100fa8:	e3540000 	cmp	r4, #0
  100fac:	0a00004d 	beq	1010e8 <OS_TCBInit+0x164>
  100fb0:	e5943014 	ldr	r3, [r4, #20]
  100fb4:	e3a05000 	mov	r5, #0
  100fb8:	e58c3000 	str	r3, [ip]
  100fbc:	eb001214 	bl	105814 <guest_OS_EXIT_CRITICAL>
  100fc0:	e584a000 	str	sl, [r4]
  100fc4:	e206c007 	and	ip, r6, #7
  100fc8:	e59da024 	ldr	sl, [sp, #36]	; 0x24
  100fcc:	e1a031a6 	lsr	r3, r6, #3
  100fd0:	e5848008 	str	r8, [r4, #8]
  100fd4:	e3a02001 	mov	r2, #1
  100fd8:	e1dd82b8 	ldrh	r8, [sp, #40]	; 0x28
  100fdc:	e1a0e312 	lsl	lr, r2, r3
  100fe0:	e584a004 	str	sl, [r4, #4]
  100fe4:	e1a02c12 	lsl	r2, r2, ip
  100fe8:	e59da020 	ldr	sl, [sp, #32]
  100fec:	e1a00004 	mov	r0, r4
  100ff0:	e5c4c02f 	strb	ip, [r4, #47]	; 0x2f
  100ff4:	e30713bc 	movw	r1, #29628	; 0x73bc
  100ff8:	e5c4e032 	strb	lr, [r4, #50]	; 0x32
  100ffc:	e3401010 	movt	r1, #16
  101000:	e5c42031 	strb	r2, [r4, #49]	; 0x31
  101004:	e5841048 	str	r1, [r4, #72]	; 0x48
  101008:	e5c43030 	strb	r3, [r4, #48]	; 0x30
  10100c:	e5c4602e 	strb	r6, [r4, #46]	; 0x2e
  101010:	e5c4502c 	strb	r5, [r4, #44]	; 0x2c
  101014:	e5c4502d 	strb	r5, [r4, #45]	; 0x2d
  101018:	e5845028 	str	r5, [r4, #40]	; 0x28
  10101c:	e1c471b2 	strh	r7, [r4, #18]
  101020:	e5c45033 	strb	r5, [r4, #51]	; 0x33
  101024:	e584501c 	str	r5, [r4, #28]
  101028:	e5845020 	str	r5, [r4, #32]
  10102c:	e5845024 	str	r5, [r4, #36]	; 0x24
  101030:	e5845034 	str	r5, [r4, #52]	; 0x34
  101034:	e584503c 	str	r5, [r4, #60]	; 0x3c
  101038:	e5845038 	str	r5, [r4, #56]	; 0x38
  10103c:	e5845040 	str	r5, [r4, #64]	; 0x40
  101040:	e5845044 	str	r5, [r4, #68]	; 0x44
  101044:	e584504c 	str	r5, [r4, #76]	; 0x4c
  101048:	e584a00c 	str	sl, [r4, #12]
  10104c:	e1c481b0 	strh	r8, [r4, #16]
  101050:	eb000a6e 	bl	103a10 <OSTCBInitHook>
  101054:	eb0011eb 	bl	105808 <guest_OS_ENTER_CRITICAL>
  101058:	e30a3480 	movw	r3, #42112	; 0xa480
  10105c:	e3403010 	movt	r3, #16
  101060:	e7834106 	str	r4, [r3, r6, lsl #2]
  101064:	eb0011ea 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101068:	e1a00004 	mov	r0, r4
  10106c:	eb000a25 	bl	103908 <OSTaskCreateHook>
  101070:	eb0011e4 	bl	105808 <guest_OS_ENTER_CRITICAL>
  101074:	e3090a50 	movw	r0, #39504	; 0x9a50
  101078:	e3400010 	movt	r0, #16
  10107c:	e3091ae4 	movw	r1, #39652	; 0x9ae4
  101080:	e3401010 	movt	r1, #16
  101084:	e5d4c030 	ldrb	ip, [r4, #48]	; 0x30
  101088:	e5903000 	ldr	r3, [r0]
  10108c:	e3092ae8 	movw	r2, #39656	; 0x9ae8
  101090:	e5845018 	str	r5, [r4, #24]
  101094:	e3402010 	movt	r2, #16
  101098:	e1530005 	cmp	r3, r5
  10109c:	e5d16000 	ldrb	r6, [r1]
  1010a0:	e5843014 	str	r3, [r4, #20]
  1010a4:	15834018 	strne	r4, [r3, #24]
  1010a8:	e3093ad8 	movw	r3, #39640	; 0x9ad8
  1010ac:	e5d45032 	ldrb	r5, [r4, #50]	; 0x32
  1010b0:	e3403010 	movt	r3, #16
  1010b4:	e7d2700c 	ldrb	r7, [r2, ip]
  1010b8:	e5d4e031 	ldrb	lr, [r4, #49]	; 0x31
  1010bc:	e1865005 	orr	r5, r6, r5
  1010c0:	e5d36000 	ldrb	r6, [r3]
  1010c4:	e187e00e 	orr	lr, r7, lr
  1010c8:	e5804000 	str	r4, [r0]
  1010cc:	e5c15000 	strb	r5, [r1]
  1010d0:	e2860001 	add	r0, r6, #1
  1010d4:	e7c2e00c 	strb	lr, [r2, ip]
  1010d8:	e5c30000 	strb	r0, [r3]
  1010dc:	eb0011cc 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1010e0:	e3a00000 	mov	r0, #0
  1010e4:	e8bd85f8 	pop	{r3, r4, r5, r6, r7, r8, sl, pc}
  1010e8:	eb0011c9 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1010ec:	e3a00042 	mov	r0, #66	; 0x42
  1010f0:	e8bd85f8 	pop	{r3, r4, r5, r6, r7, r8, sl, pc}

001010f4 <OSMboxAccept>:
  1010f4:	e92d4038 	push	{r3, r4, r5, lr}
  1010f8:	e1a04000 	mov	r4, r0
  1010fc:	e5d03000 	ldrb	r3, [r0]
  101100:	e3530001 	cmp	r3, #1
  101104:	13a05000 	movne	r5, #0
  101108:	1a000004 	bne	101120 <OSMboxAccept+0x2c>
  10110c:	eb0011bd 	bl	105808 <guest_OS_ENTER_CRITICAL>
  101110:	e5945004 	ldr	r5, [r4, #4]
  101114:	e3a03000 	mov	r3, #0
  101118:	e5843004 	str	r3, [r4, #4]
  10111c:	eb0011bc 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101120:	e1a00005 	mov	r0, r5
  101124:	e8bd8038 	pop	{r3, r4, r5, pc}

00101128 <OSMboxCreate>:
  101128:	e3093af4 	movw	r3, #39668	; 0x9af4
  10112c:	e3403010 	movt	r3, #16
  101130:	e92d4070 	push	{r4, r5, r6, lr}
  101134:	e1a06000 	mov	r6, r0
  101138:	e5d35000 	ldrb	r5, [r3]
  10113c:	e3550000 	cmp	r5, #0
  101140:	13a04000 	movne	r4, #0
  101144:	1a000011 	bne	101190 <OSMboxCreate+0x68>
  101148:	eb0011ae 	bl	105808 <guest_OS_ENTER_CRITICAL>
  10114c:	e3093af0 	movw	r3, #39664	; 0x9af0
  101150:	e3403010 	movt	r3, #16
  101154:	e5934000 	ldr	r4, [r3]
  101158:	e3540000 	cmp	r4, #0
  10115c:	0a00000d 	beq	101198 <OSMboxCreate+0x70>
  101160:	e5942004 	ldr	r2, [r4, #4]
  101164:	e5832000 	str	r2, [r3]
  101168:	eb0011a9 	bl	105814 <guest_OS_EXIT_CRITICAL>
  10116c:	e3a03001 	mov	r3, #1
  101170:	e1c450b8 	strh	r5, [r4, #8]
  101174:	e5c43000 	strb	r3, [r4]
  101178:	e1a00004 	mov	r0, r4
  10117c:	e30733bc 	movw	r3, #29628	; 0x73bc
  101180:	e5846004 	str	r6, [r4, #4]
  101184:	e3403010 	movt	r3, #16
  101188:	e5843014 	str	r3, [r4, #20]
  10118c:	ebfffe35 	bl	100a68 <OS_EventWaitListInit>
  101190:	e1a00004 	mov	r0, r4
  101194:	e8bd8070 	pop	{r4, r5, r6, pc}
  101198:	eb00119d 	bl	105814 <guest_OS_EXIT_CRITICAL>
  10119c:	e1a00004 	mov	r0, r4
  1011a0:	e8bd8070 	pop	{r4, r5, r6, pc}

001011a4 <OSMboxDel>:
  1011a4:	e92d40f0 	push	{r4, r5, r6, r7, lr}
  1011a8:	e1a04000 	mov	r4, r0
  1011ac:	e5d03000 	ldrb	r3, [r0]
  1011b0:	e24dd00c 	sub	sp, sp, #12
  1011b4:	e1a05002 	mov	r5, r2
  1011b8:	e3530001 	cmp	r3, #1
  1011bc:	13a03001 	movne	r3, #1
  1011c0:	15c23000 	strbne	r3, [r2]
  1011c4:	0a000002 	beq	1011d4 <OSMboxDel+0x30>
  1011c8:	e1a00004 	mov	r0, r4
  1011cc:	e28dd00c 	add	sp, sp, #12
  1011d0:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
  1011d4:	e3093af4 	movw	r3, #39668	; 0x9af4
  1011d8:	e3403010 	movt	r3, #16
  1011dc:	e5d33000 	ldrb	r3, [r3]
  1011e0:	e3530000 	cmp	r3, #0
  1011e4:	13a0300f 	movne	r3, #15
  1011e8:	15c23000 	strbne	r3, [r2]
  1011ec:	1afffff5 	bne	1011c8 <OSMboxDel+0x24>
  1011f0:	e58d1004 	str	r1, [sp, #4]
  1011f4:	eb001183 	bl	105808 <guest_OS_ENTER_CRITICAL>
  1011f8:	e5d4700a 	ldrb	r7, [r4, #10]
  1011fc:	e59d1004 	ldr	r1, [sp, #4]
  101200:	e2977000 	adds	r7, r7, #0
  101204:	13a07001 	movne	r7, #1
  101208:	e3510000 	cmp	r1, #0
  10120c:	e1a06007 	mov	r6, r7
  101210:	1a00000f 	bne	101254 <OSMboxDel+0xb0>
  101214:	e3570000 	cmp	r7, #0
  101218:	1a000013 	bne	10126c <OSMboxDel+0xc8>
  10121c:	e3093af0 	movw	r3, #39664	; 0x9af0
  101220:	e3403010 	movt	r3, #16
  101224:	e5c47000 	strb	r7, [r4]
  101228:	e30723bc 	movw	r2, #29628	; 0x73bc
  10122c:	e5931000 	ldr	r1, [r3]
  101230:	e3402010 	movt	r2, #16
  101234:	e1c470b8 	strh	r7, [r4, #8]
  101238:	e5842014 	str	r2, [r4, #20]
  10123c:	e5841004 	str	r1, [r4, #4]
  101240:	e5834000 	str	r4, [r3]
  101244:	eb001172 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101248:	e1a04007 	mov	r4, r7
  10124c:	e5c57000 	strb	r7, [r5]
  101250:	eaffffdc 	b	1011c8 <OSMboxDel+0x24>
  101254:	e3510001 	cmp	r1, #1
  101258:	0a000007 	beq	10127c <OSMboxDel+0xd8>
  10125c:	eb00116c 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101260:	e3a03007 	mov	r3, #7
  101264:	e5c53000 	strb	r3, [r5]
  101268:	eaffffd6 	b	1011c8 <OSMboxDel+0x24>
  10126c:	eb001168 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101270:	e3a03049 	mov	r3, #73	; 0x49
  101274:	e5c53000 	strb	r3, [r5]
  101278:	eaffffd2 	b	1011c8 <OSMboxDel+0x24>
  10127c:	e3570000 	cmp	r7, #0
  101280:	0a000007 	beq	1012a4 <OSMboxDel+0x100>
  101284:	e3a02002 	mov	r2, #2
  101288:	e1a00004 	mov	r0, r4
  10128c:	e1a03002 	mov	r3, r2
  101290:	e3a01000 	mov	r1, #0
  101294:	ebfffdba 	bl	100984 <OS_EventTaskRdy>
  101298:	e5d4300a 	ldrb	r3, [r4, #10]
  10129c:	e3530000 	cmp	r3, #0
  1012a0:	1afffff7 	bne	101284 <OSMboxDel+0xe0>
  1012a4:	e3093af0 	movw	r3, #39664	; 0x9af0
  1012a8:	e3403010 	movt	r3, #16
  1012ac:	e3a01000 	mov	r1, #0
  1012b0:	e5c41000 	strb	r1, [r4]
  1012b4:	e5930000 	ldr	r0, [r3]
  1012b8:	e30723bc 	movw	r2, #29628	; 0x73bc
  1012bc:	e1c410b8 	strh	r1, [r4, #8]
  1012c0:	e3402010 	movt	r2, #16
  1012c4:	e5842014 	str	r2, [r4, #20]
  1012c8:	e5840004 	str	r0, [r4, #4]
  1012cc:	e5834000 	str	r4, [r3]
  1012d0:	eb00114f 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1012d4:	e3560001 	cmp	r6, #1
  1012d8:	0a000002 	beq	1012e8 <OSMboxDel+0x144>
  1012dc:	e3a04000 	mov	r4, #0
  1012e0:	e5c54000 	strb	r4, [r5]
  1012e4:	eaffffb7 	b	1011c8 <OSMboxDel+0x24>
  1012e8:	ebfffdfc 	bl	100ae0 <OS_Sched>
  1012ec:	eafffffa 	b	1012dc <OSMboxDel+0x138>

001012f0 <OSMboxPend>:
  1012f0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
  1012f4:	e1a04000 	mov	r4, r0
  1012f8:	e5d03000 	ldrb	r3, [r0]
  1012fc:	e1a08001 	mov	r8, r1
  101300:	e1a07002 	mov	r7, r2
  101304:	e3530001 	cmp	r3, #1
  101308:	13a03001 	movne	r3, #1
  10130c:	13a05000 	movne	r5, #0
  101310:	15c23000 	strbne	r3, [r2]
  101314:	1a000015 	bne	101370 <OSMboxPend+0x80>
  101318:	e3093af4 	movw	r3, #39668	; 0x9af4
  10131c:	e3403010 	movt	r3, #16
  101320:	e5d35000 	ldrb	r5, [r3]
  101324:	e3550000 	cmp	r5, #0
  101328:	13a03002 	movne	r3, #2
  10132c:	13a05000 	movne	r5, #0
  101330:	15c23000 	strbne	r3, [r2]
  101334:	1a00000d 	bne	101370 <OSMboxPend+0x80>
  101338:	e3093a44 	movw	r3, #39492	; 0x9a44
  10133c:	e3403010 	movt	r3, #16
  101340:	e5d36000 	ldrb	r6, [r3]
  101344:	e3560000 	cmp	r6, #0
  101348:	13a0300d 	movne	r3, #13
  10134c:	15c23000 	strbne	r3, [r2]
  101350:	1a000006 	bne	101370 <OSMboxPend+0x80>
  101354:	eb00112b 	bl	105808 <guest_OS_ENTER_CRITICAL>
  101358:	e5945004 	ldr	r5, [r4, #4]
  10135c:	e3550000 	cmp	r5, #0
  101360:	0a000004 	beq	101378 <OSMboxPend+0x88>
  101364:	e5846004 	str	r6, [r4, #4]
  101368:	eb001129 	bl	105814 <guest_OS_EXIT_CRITICAL>
  10136c:	e5c76000 	strb	r6, [r7]
  101370:	e1a00005 	mov	r0, r5
  101374:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
  101378:	e3096af8 	movw	r6, #39672	; 0x9af8
  10137c:	e3406010 	movt	r6, #16
  101380:	e1a00004 	mov	r0, r4
  101384:	e5963000 	ldr	r3, [r6]
  101388:	e5d3202c 	ldrb	r2, [r3, #44]	; 0x2c
  10138c:	e5c3502d 	strb	r5, [r3, #45]	; 0x2d
  101390:	e3822002 	orr	r2, r2, #2
  101394:	e5838028 	str	r8, [r3, #40]	; 0x28
  101398:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
  10139c:	ebfffd0d 	bl	1007d8 <OS_EventTaskWait>
  1013a0:	eb00111b 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1013a4:	ebfffdcd 	bl	100ae0 <OS_Sched>
  1013a8:	eb001116 	bl	105808 <guest_OS_ENTER_CRITICAL>
  1013ac:	e5960000 	ldr	r0, [r6]
  1013b0:	e5d0302d 	ldrb	r3, [r0, #45]	; 0x2d
  1013b4:	e3530000 	cmp	r3, #0
  1013b8:	1a00000b 	bne	1013ec <OSMboxPend+0xfc>
  1013bc:	e5905024 	ldr	r5, [r0, #36]	; 0x24
  1013c0:	e5c73000 	strb	r3, [r7]
  1013c4:	e5963000 	ldr	r3, [r6]
  1013c8:	e3a02000 	mov	r2, #0
  1013cc:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
  1013d0:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
  1013d4:	e583201c 	str	r2, [r3, #28]
  1013d8:	e5832020 	str	r2, [r3, #32]
  1013dc:	e5832024 	str	r2, [r3, #36]	; 0x24
  1013e0:	eb00110b 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1013e4:	e1a00005 	mov	r0, r5
  1013e8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
  1013ec:	e3530002 	cmp	r3, #2
  1013f0:	0a000004 	beq	101408 <OSMboxPend+0x118>
  1013f4:	e1a01004 	mov	r1, r4
  1013f8:	ebfffd3e 	bl	1008f8 <OS_EventTaskRemove>
  1013fc:	e3a0300a 	mov	r3, #10
  101400:	e5c73000 	strb	r3, [r7]
  101404:	eaffffee 	b	1013c4 <OSMboxPend+0xd4>
  101408:	e3a0300e 	mov	r3, #14
  10140c:	e5c73000 	strb	r3, [r7]
  101410:	eaffffeb 	b	1013c4 <OSMboxPend+0xd4>

00101414 <OSMboxPendAbort>:
  101414:	e92d40f0 	push	{r4, r5, r6, r7, lr}
  101418:	e1a04000 	mov	r4, r0
  10141c:	e5d05000 	ldrb	r5, [r0]
  101420:	e24dd00c 	sub	sp, sp, #12
  101424:	e1a06002 	mov	r6, r2
  101428:	e3550001 	cmp	r5, #1
  10142c:	0a000005 	beq	101448 <OSMboxPendAbort+0x34>
  101430:	e3a05000 	mov	r5, #0
  101434:	e3a03001 	mov	r3, #1
  101438:	e5c23000 	strb	r3, [r2]
  10143c:	e1a00005 	mov	r0, r5
  101440:	e28dd00c 	add	sp, sp, #12
  101444:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
  101448:	e58d1004 	str	r1, [sp, #4]
  10144c:	eb0010ed 	bl	105808 <guest_OS_ENTER_CRITICAL>
  101450:	e5d4700a 	ldrb	r7, [r4, #10]
  101454:	e59d1004 	ldr	r1, [sp, #4]
  101458:	e3570000 	cmp	r7, #0
  10145c:	0a000017 	beq	1014c0 <OSMboxPendAbort+0xac>
  101460:	e3510001 	cmp	r1, #1
  101464:	0a000009 	beq	101490 <OSMboxPendAbort+0x7c>
  101468:	e3a02002 	mov	r2, #2
  10146c:	e1a00004 	mov	r0, r4
  101470:	e3a01000 	mov	r1, #0
  101474:	e1a03002 	mov	r3, r2
  101478:	ebfffd41 	bl	100984 <OS_EventTaskRdy>
  10147c:	eb0010e4 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101480:	ebfffd96 	bl	100ae0 <OS_Sched>
  101484:	e3a0300e 	mov	r3, #14
  101488:	e5c63000 	strb	r3, [r6]
  10148c:	eaffffea 	b	10143c <OSMboxPendAbort+0x28>
  101490:	e3a05000 	mov	r5, #0
  101494:	e3a02002 	mov	r2, #2
  101498:	e1a00004 	mov	r0, r4
  10149c:	e1a03002 	mov	r3, r2
  1014a0:	e3a01000 	mov	r1, #0
  1014a4:	ebfffd36 	bl	100984 <OS_EventTaskRdy>
  1014a8:	e5d4300a 	ldrb	r3, [r4, #10]
  1014ac:	e2855001 	add	r5, r5, #1
  1014b0:	e3530000 	cmp	r3, #0
  1014b4:	e6ef5075 	uxtb	r5, r5
  1014b8:	1afffff5 	bne	101494 <OSMboxPendAbort+0x80>
  1014bc:	eaffffee 	b	10147c <OSMboxPendAbort+0x68>
  1014c0:	eb0010d3 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1014c4:	e1a05007 	mov	r5, r7
  1014c8:	e5c67000 	strb	r7, [r6]
  1014cc:	eaffffda 	b	10143c <OSMboxPendAbort+0x28>

001014d0 <OSMboxPost>:
  1014d0:	e92d4030 	push	{r4, r5, lr}
  1014d4:	e1a04000 	mov	r4, r0
  1014d8:	e5d03000 	ldrb	r3, [r0]
  1014dc:	e24dd00c 	sub	sp, sp, #12
  1014e0:	e3530001 	cmp	r3, #1
  1014e4:	13a00001 	movne	r0, #1
  1014e8:	0a000001 	beq	1014f4 <OSMboxPost+0x24>
  1014ec:	e28dd00c 	add	sp, sp, #12
  1014f0:	e8bd8030 	pop	{r4, r5, pc}
  1014f4:	e58d1004 	str	r1, [sp, #4]
  1014f8:	eb0010c2 	bl	105808 <guest_OS_ENTER_CRITICAL>
  1014fc:	e5d4300a 	ldrb	r3, [r4, #10]
  101500:	e59d1004 	ldr	r1, [sp, #4]
  101504:	e3530000 	cmp	r3, #0
  101508:	1a000005 	bne	101524 <OSMboxPost+0x54>
  10150c:	e5945004 	ldr	r5, [r4, #4]
  101510:	e3550000 	cmp	r5, #0
  101514:	0a00000a 	beq	101544 <OSMboxPost+0x74>
  101518:	eb0010bd 	bl	105814 <guest_OS_EXIT_CRITICAL>
  10151c:	e3a00014 	mov	r0, #20
  101520:	eafffff1 	b	1014ec <OSMboxPost+0x1c>
  101524:	e3a02002 	mov	r2, #2
  101528:	e3a03000 	mov	r3, #0
  10152c:	e1a00004 	mov	r0, r4
  101530:	ebfffd13 	bl	100984 <OS_EventTaskRdy>
  101534:	eb0010b6 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101538:	ebfffd68 	bl	100ae0 <OS_Sched>
  10153c:	e3a00000 	mov	r0, #0
  101540:	eaffffe9 	b	1014ec <OSMboxPost+0x1c>
  101544:	e5841004 	str	r1, [r4, #4]
  101548:	eb0010b1 	bl	105814 <guest_OS_EXIT_CRITICAL>
  10154c:	e1a00005 	mov	r0, r5
  101550:	eaffffe5 	b	1014ec <OSMboxPost+0x1c>

00101554 <OSMboxPostOpt>:
  101554:	e92d4070 	push	{r4, r5, r6, lr}
  101558:	e1a04000 	mov	r4, r0
  10155c:	e5d03000 	ldrb	r3, [r0]
  101560:	e1a05001 	mov	r5, r1
  101564:	e1a06002 	mov	r6, r2
  101568:	e3530001 	cmp	r3, #1
  10156c:	0a000001 	beq	101578 <OSMboxPostOpt+0x24>
  101570:	e3a00001 	mov	r0, #1
  101574:	e8bd8070 	pop	{r4, r5, r6, pc}
  101578:	eb0010a2 	bl	105808 <guest_OS_ENTER_CRITICAL>
  10157c:	e5d4300a 	ldrb	r3, [r4, #10]
  101580:	e3530000 	cmp	r3, #0
  101584:	0a000010 	beq	1015cc <OSMboxPostOpt+0x78>
  101588:	e2163001 	ands	r3, r6, #1
  10158c:	0a000014 	beq	1015e4 <OSMboxPostOpt+0x90>
  101590:	e3a03000 	mov	r3, #0
  101594:	e1a00004 	mov	r0, r4
  101598:	e1a01005 	mov	r1, r5
  10159c:	e3a02002 	mov	r2, #2
  1015a0:	ebfffcf7 	bl	100984 <OS_EventTaskRdy>
  1015a4:	e5d4300a 	ldrb	r3, [r4, #10]
  1015a8:	e3530000 	cmp	r3, #0
  1015ac:	1afffff7 	bne	101590 <OSMboxPostOpt+0x3c>
  1015b0:	e2066004 	and	r6, r6, #4
  1015b4:	eb001096 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1015b8:	e6ef6076 	uxtb	r6, r6
  1015bc:	e3560000 	cmp	r6, #0
  1015c0:	0a00000c 	beq	1015f8 <OSMboxPostOpt+0xa4>
  1015c4:	e3a00000 	mov	r0, #0
  1015c8:	e8bd8070 	pop	{r4, r5, r6, pc}
  1015cc:	e5946004 	ldr	r6, [r4, #4]
  1015d0:	e3560000 	cmp	r6, #0
  1015d4:	0a00000a 	beq	101604 <OSMboxPostOpt+0xb0>
  1015d8:	eb00108d 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1015dc:	e3a00014 	mov	r0, #20
  1015e0:	e8bd8070 	pop	{r4, r5, r6, pc}
  1015e4:	e1a00004 	mov	r0, r4
  1015e8:	e1a01005 	mov	r1, r5
  1015ec:	e3a02002 	mov	r2, #2
  1015f0:	ebfffce3 	bl	100984 <OS_EventTaskRdy>
  1015f4:	eaffffed 	b	1015b0 <OSMboxPostOpt+0x5c>
  1015f8:	ebfffd38 	bl	100ae0 <OS_Sched>
  1015fc:	e1a00006 	mov	r0, r6
  101600:	e8bd8070 	pop	{r4, r5, r6, pc}
  101604:	e5845004 	str	r5, [r4, #4]
  101608:	eb001081 	bl	105814 <guest_OS_EXIT_CRITICAL>
  10160c:	e1a00006 	mov	r0, r6
  101610:	e8bd8070 	pop	{r4, r5, r6, pc}

00101614 <OSMboxQuery>:
  101614:	e92d4010 	push	{r4, lr}
  101618:	e1a04000 	mov	r4, r0
  10161c:	e5d03000 	ldrb	r3, [r0]
  101620:	e24dd008 	sub	sp, sp, #8
  101624:	e3530001 	cmp	r3, #1
  101628:	13a00001 	movne	r0, #1
  10162c:	0a000001 	beq	101638 <OSMboxQuery+0x24>
  101630:	e28dd008 	add	sp, sp, #8
  101634:	e8bd8010 	pop	{r4, pc}
  101638:	e58d1004 	str	r1, [sp, #4]
  10163c:	eb001071 	bl	105808 <guest_OS_ENTER_CRITICAL>
  101640:	e59d1004 	ldr	r1, [sp, #4]
  101644:	e1a02004 	mov	r2, r4
  101648:	e5f2c00a 	ldrb	ip, [r2, #10]!
  10164c:	e2813004 	add	r3, r1, #4
  101650:	e281000c 	add	r0, r1, #12
  101654:	e5c1c00c 	strb	ip, [r1, #12]
  101658:	e5f2c001 	ldrb	ip, [r2, #1]!
  10165c:	e4c3c001 	strb	ip, [r3], #1
  101660:	e1530000 	cmp	r3, r0
  101664:	1afffffb 	bne	101658 <OSMboxQuery+0x44>
  101668:	e5943004 	ldr	r3, [r4, #4]
  10166c:	e5813000 	str	r3, [r1]
  101670:	eb001067 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101674:	e3a00000 	mov	r0, #0
  101678:	eaffffec 	b	101630 <OSMboxQuery+0x1c>

0010167c <OSMemCreate>:
  10167c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
  101680:	e1a06002 	mov	r6, r2
  101684:	e1a0a000 	mov	sl, r0
  101688:	e1a09001 	mov	r9, r1
  10168c:	e1a08003 	mov	r8, r3
  101690:	eb00105c 	bl	105808 <guest_OS_ENTER_CRITICAL>
  101694:	e3092adc 	movw	r2, #39644	; 0x9adc
  101698:	e3402010 	movt	r2, #16
  10169c:	e5927000 	ldr	r7, [r2]
  1016a0:	e3570000 	cmp	r7, #0
  1016a4:	0a000017 	beq	101708 <OSMemCreate+0x8c>
  1016a8:	e5973004 	ldr	r3, [r7, #4]
  1016ac:	e5823000 	str	r3, [r2]
  1016b0:	eb001057 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1016b4:	e2592001 	subs	r2, r9, #1
  1016b8:	0a000017 	beq	10171c <OSMemCreate+0xa0>
  1016bc:	e1a0400a 	mov	r4, sl
  1016c0:	e3a0c000 	mov	ip, #0
  1016c4:	e28cc001 	add	ip, ip, #1
  1016c8:	e0845006 	add	r5, r4, r6
  1016cc:	e152000c 	cmp	r2, ip
  1016d0:	e5845000 	str	r5, [r4]
  1016d4:	e1a04005 	mov	r4, r5
  1016d8:	1afffff9 	bne	1016c4 <OSMemCreate+0x48>
  1016dc:	e022a692 	mla	r2, r2, r6, sl
  1016e0:	e3a03000 	mov	r3, #0
  1016e4:	e1a00007 	mov	r0, r7
  1016e8:	e5823000 	str	r3, [r2]
  1016ec:	e587a000 	str	sl, [r7]
  1016f0:	e587a004 	str	sl, [r7, #4]
  1016f4:	e5879010 	str	r9, [r7, #16]
  1016f8:	e587900c 	str	r9, [r7, #12]
  1016fc:	e5876008 	str	r6, [r7, #8]
  101700:	e5c83000 	strb	r3, [r8]
  101704:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
  101708:	eb001041 	bl	105814 <guest_OS_EXIT_CRITICAL>
  10170c:	e3a0305a 	mov	r3, #90	; 0x5a
  101710:	e1a00007 	mov	r0, r7
  101714:	e5c83000 	strb	r3, [r8]
  101718:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
  10171c:	e1a0200a 	mov	r2, sl
  101720:	eaffffee 	b	1016e0 <OSMemCreate+0x64>

00101724 <OSMemGet>:
  101724:	e92d4070 	push	{r4, r5, r6, lr}
  101728:	e1a04000 	mov	r4, r0
  10172c:	e1a06001 	mov	r6, r1
  101730:	eb001034 	bl	105808 <guest_OS_ENTER_CRITICAL>
  101734:	e5943010 	ldr	r3, [r4, #16]
  101738:	e3530000 	cmp	r3, #0
  10173c:	0a000009 	beq	101768 <OSMemGet+0x44>
  101740:	e5945004 	ldr	r5, [r4, #4]
  101744:	e2433001 	sub	r3, r3, #1
  101748:	e5952000 	ldr	r2, [r5]
  10174c:	e5843010 	str	r3, [r4, #16]
  101750:	e5842004 	str	r2, [r4, #4]
  101754:	eb00102e 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101758:	e3a03000 	mov	r3, #0
  10175c:	e1a00005 	mov	r0, r5
  101760:	e5c63000 	strb	r3, [r6]
  101764:	e8bd8070 	pop	{r4, r5, r6, pc}
  101768:	e1a05003 	mov	r5, r3
  10176c:	eb001028 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101770:	e3a0305d 	mov	r3, #93	; 0x5d
  101774:	e1a00005 	mov	r0, r5
  101778:	e5c63000 	strb	r3, [r6]
  10177c:	e8bd8070 	pop	{r4, r5, r6, pc}

00101780 <OSMemNameGet>:
  101780:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
  101784:	e3093af4 	movw	r3, #39668	; 0x9af4
  101788:	e3403010 	movt	r3, #16
  10178c:	e1a05000 	mov	r5, r0
  101790:	e1a07001 	mov	r7, r1
  101794:	e1a06002 	mov	r6, r2
  101798:	e5d34000 	ldrb	r4, [r3]
  10179c:	e3540000 	cmp	r4, #0
  1017a0:	0a000004 	beq	1017b8 <OSMemNameGet+0x38>
  1017a4:	e3a05000 	mov	r5, #0
  1017a8:	e3a03011 	mov	r3, #17
  1017ac:	e1a00005 	mov	r0, r5
  1017b0:	e5c23000 	strb	r3, [r2]
  1017b4:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
  1017b8:	eb001012 	bl	105808 <guest_OS_ENTER_CRITICAL>
  1017bc:	e5950014 	ldr	r0, [r5, #20]
  1017c0:	e5870000 	str	r0, [r7]
  1017c4:	ebfffdc7 	bl	100ee8 <OS_StrLen>
  1017c8:	e1a05000 	mov	r5, r0
  1017cc:	eb001010 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1017d0:	e5c64000 	strb	r4, [r6]
  1017d4:	e1a00005 	mov	r0, r5
  1017d8:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

001017dc <OSMemNameSet>:
  1017dc:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
  1017e0:	e3093af4 	movw	r3, #39668	; 0x9af4
  1017e4:	e3403010 	movt	r3, #16
  1017e8:	e1a06000 	mov	r6, r0
  1017ec:	e1a07001 	mov	r7, r1
  1017f0:	e1a05002 	mov	r5, r2
  1017f4:	e5d34000 	ldrb	r4, [r3]
  1017f8:	e3540000 	cmp	r4, #0
  1017fc:	13a03012 	movne	r3, #18
  101800:	15c23000 	strbne	r3, [r2]
  101804:	18bd80f8 	popne	{r3, r4, r5, r6, r7, pc}
  101808:	eb000ffe 	bl	105808 <guest_OS_ENTER_CRITICAL>
  10180c:	e5867014 	str	r7, [r6, #20]
  101810:	eb000fff 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101814:	e5c54000 	strb	r4, [r5]
  101818:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

0010181c <OSMemPut>:
  10181c:	e92d4038 	push	{r3, r4, r5, lr}
  101820:	e1a04000 	mov	r4, r0
  101824:	e1a05001 	mov	r5, r1
  101828:	eb000ff6 	bl	105808 <guest_OS_ENTER_CRITICAL>
  10182c:	e5943010 	ldr	r3, [r4, #16]
  101830:	e594200c 	ldr	r2, [r4, #12]
  101834:	e1530002 	cmp	r3, r2
  101838:	3a000002 	bcc	101848 <OSMemPut+0x2c>
  10183c:	eb000ff4 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101840:	e3a0005e 	mov	r0, #94	; 0x5e
  101844:	e8bd8038 	pop	{r3, r4, r5, pc}
  101848:	e5942004 	ldr	r2, [r4, #4]
  10184c:	e2833001 	add	r3, r3, #1
  101850:	e5852000 	str	r2, [r5]
  101854:	e5845004 	str	r5, [r4, #4]
  101858:	e5843010 	str	r3, [r4, #16]
  10185c:	eb000fec 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101860:	e3a00000 	mov	r0, #0
  101864:	e8bd8038 	pop	{r3, r4, r5, pc}

00101868 <OSMemQuery>:
  101868:	e92d4038 	push	{r3, r4, r5, lr}
  10186c:	e1a05000 	mov	r5, r0
  101870:	e1a04001 	mov	r4, r1
  101874:	eb000fe3 	bl	105808 <guest_OS_ENTER_CRITICAL>
  101878:	e995000f 	ldmib	r5, {r0, r1, r2, r3}
  10187c:	e595c000 	ldr	ip, [r5]
  101880:	e984000f 	stmib	r4, {r0, r1, r2, r3}
  101884:	e584c000 	str	ip, [r4]
  101888:	eb000fe1 	bl	105814 <guest_OS_EXIT_CRITICAL>
  10188c:	e594200c 	ldr	r2, [r4, #12]
  101890:	e5943010 	ldr	r3, [r4, #16]
  101894:	e3a00000 	mov	r0, #0
  101898:	e0633002 	rsb	r3, r3, r2
  10189c:	e5843014 	str	r3, [r4, #20]
  1018a0:	e8bd8038 	pop	{r3, r4, r5, pc}

001018a4 <OS_MemInit>:
  1018a4:	e92d4070 	push	{r4, r5, r6, lr}
  1018a8:	e3090a54 	movw	r0, #39508	; 0x9a54
  1018ac:	e3a01078 	mov	r1, #120	; 0x78
  1018b0:	e3400010 	movt	r0, #16
  1018b4:	ebfffc76 	bl	100a94 <OS_MemClr>
  1018b8:	e3094a54 	movw	r4, #39508	; 0x9a54
  1018bc:	e3a03000 	mov	r3, #0
  1018c0:	e30763bc 	movw	r6, #29628	; 0x73bc
  1018c4:	e3404010 	movt	r4, #16
  1018c8:	e3406010 	movt	r6, #16
  1018cc:	e1a00003 	mov	r0, r3
  1018d0:	e080c003 	add	ip, r0, r3
  1018d4:	e2833001 	add	r3, r3, #1
  1018d8:	e3530004 	cmp	r3, #4
  1018dc:	e3092a54 	movw	r2, #39508	; 0x9a54
  1018e0:	e1a00083 	lsl	r0, r3, #1
  1018e4:	e084c18c 	add	ip, r4, ip, lsl #3
  1018e8:	e0805003 	add	r5, r0, r3
  1018ec:	e30713bc 	movw	r1, #29628	; 0x73bc
  1018f0:	e3402010 	movt	r2, #16
  1018f4:	e3401010 	movt	r1, #16
  1018f8:	e0845185 	add	r5, r4, r5, lsl #3
  1018fc:	e58c6014 	str	r6, [ip, #20]
  101900:	e58c5004 	str	r5, [ip, #4]
  101904:	1afffff1 	bne	1018d0 <OS_MemInit+0x2c>
  101908:	e3093adc 	movw	r3, #39644	; 0x9adc
  10190c:	e3403010 	movt	r3, #16
  101910:	e5821074 	str	r1, [r2, #116]	; 0x74
  101914:	e3a01000 	mov	r1, #0
  101918:	e5832000 	str	r2, [r3]
  10191c:	e5821064 	str	r1, [r2, #100]	; 0x64
  101920:	e8bd8070 	pop	{r4, r5, r6, pc}

00101924 <OSMutex_RdyAtPrio>:
  101924:	e5d02030 	ldrb	r2, [r0, #48]	; 0x30
  101928:	e3093ae8 	movw	r3, #39656	; 0x9ae8
  10192c:	e3403010 	movt	r3, #16
  101930:	e5d0c031 	ldrb	ip, [r0, #49]	; 0x31
  101934:	e92d05f0 	push	{r4, r5, r6, r7, r8, sl}
  101938:	e3a06001 	mov	r6, #1
  10193c:	e7d34002 	ldrb	r4, [r3, r2]
  101940:	e3095a4d 	movw	r5, #39501	; 0x9a4d
  101944:	e3405010 	movt	r5, #16
  101948:	e1c4c00c 	bic	ip, r4, ip
  10194c:	e7c3c002 	strb	ip, [r3, r2]
  101950:	e35c0000 	cmp	ip, #0
  101954:	e3092ae4 	movw	r2, #39652	; 0x9ae4
  101958:	e3402010 	movt	r2, #16
  10195c:	e5c0102e 	strb	r1, [r0, #46]	; 0x2e
  101960:	05d04032 	ldrbeq	r4, [r0, #50]	; 0x32
  101964:	05d2c000 	ldrbeq	ip, [r2]
  101968:	e5c51000 	strb	r1, [r5]
  10196c:	01ccc004 	biceq	ip, ip, r4
  101970:	e2014007 	and	r4, r1, #7
  101974:	05c2c000 	strbeq	ip, [r2]
  101978:	e7e2c1d1 	ubfx	ip, r1, #3, #3
  10197c:	e1a07c16 	lsl	r7, r6, ip
  101980:	e1a06416 	lsl	r6, r6, r4
  101984:	e5c0402f 	strb	r4, [r0, #47]	; 0x2f
  101988:	e30a4480 	movw	r4, #42112	; 0xa480
  10198c:	e5c0c030 	strb	ip, [r0, #48]	; 0x30
  101990:	e6ef7077 	uxtb	r7, r7
  101994:	e6ef6076 	uxtb	r6, r6
  101998:	e5c07032 	strb	r7, [r0, #50]	; 0x32
  10199c:	e5c06031 	strb	r6, [r0, #49]	; 0x31
  1019a0:	e3404010 	movt	r4, #16
  1019a4:	e5d2a000 	ldrb	sl, [r2]
  1019a8:	e7d3800c 	ldrb	r8, [r3, ip]
  1019ac:	e187700a 	orr	r7, r7, sl
  1019b0:	e7840101 	str	r0, [r4, r1, lsl #2]
  1019b4:	e1866008 	orr	r6, r6, r8
  1019b8:	e5c27000 	strb	r7, [r2]
  1019bc:	e7c3600c 	strb	r6, [r3, ip]
  1019c0:	e8bd05f0 	pop	{r4, r5, r6, r7, r8, sl}
  1019c4:	e12fff1e 	bx	lr

001019c8 <OSMutexAccept>:
  1019c8:	e92d4070 	push	{r4, r5, r6, lr}
  1019cc:	e1a04000 	mov	r4, r0
  1019d0:	e5d03000 	ldrb	r3, [r0]
  1019d4:	e1a05001 	mov	r5, r1
  1019d8:	e3530004 	cmp	r3, #4
  1019dc:	0a000003 	beq	1019f0 <OSMutexAccept+0x28>
  1019e0:	e3a03001 	mov	r3, #1
  1019e4:	e3a00000 	mov	r0, #0
  1019e8:	e5c13000 	strb	r3, [r1]
  1019ec:	e8bd8070 	pop	{r4, r5, r6, pc}
  1019f0:	e3093af4 	movw	r3, #39668	; 0x9af4
  1019f4:	e3403010 	movt	r3, #16
  1019f8:	e5d36000 	ldrb	r6, [r3]
  1019fc:	e3560000 	cmp	r6, #0
  101a00:	0a000003 	beq	101a14 <OSMutexAccept+0x4c>
  101a04:	e3a03002 	mov	r3, #2
  101a08:	e3a00000 	mov	r0, #0
  101a0c:	e5c13000 	strb	r3, [r1]
  101a10:	e8bd8070 	pop	{r4, r5, r6, pc}
  101a14:	eb000f7b 	bl	105808 <guest_OS_ENTER_CRITICAL>
  101a18:	e1d430b8 	ldrh	r3, [r4, #8]
  101a1c:	e6ef2073 	uxtb	r2, r3
  101a20:	e35200ff 	cmp	r2, #255	; 0xff
  101a24:	1a000013 	bne	101a78 <OSMutexAccept+0xb0>
  101a28:	e3092af8 	movw	r2, #39672	; 0x9af8
  101a2c:	e3402010 	movt	r2, #16
  101a30:	e1a01423 	lsr	r1, r3, #8
  101a34:	e2033cff 	and	r3, r3, #65280	; 0xff00
  101a38:	e5922000 	ldr	r2, [r2]
  101a3c:	e35100ff 	cmp	r1, #255	; 0xff
  101a40:	e1c430b8 	strh	r3, [r4, #8]
  101a44:	e5d2002e 	ldrb	r0, [r2, #46]	; 0x2e
  101a48:	e5842004 	str	r2, [r4, #4]
  101a4c:	e1833000 	orr	r3, r3, r0
  101a50:	e1c430b8 	strh	r3, [r4, #8]
  101a54:	0a000002 	beq	101a64 <OSMutexAccept+0x9c>
  101a58:	e5d2302e 	ldrb	r3, [r2, #46]	; 0x2e
  101a5c:	e1530001 	cmp	r3, r1
  101a60:	9a000008 	bls	101a88 <OSMutexAccept+0xc0>
  101a64:	eb000f6a 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101a68:	e3a03000 	mov	r3, #0
  101a6c:	e3a00001 	mov	r0, #1
  101a70:	e5c53000 	strb	r3, [r5]
  101a74:	e8bd8070 	pop	{r4, r5, r6, pc}
  101a78:	eb000f65 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101a7c:	e1a00006 	mov	r0, r6
  101a80:	e5c56000 	strb	r6, [r5]
  101a84:	e8bd8070 	pop	{r4, r5, r6, pc}
  101a88:	eb000f61 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101a8c:	e3a03078 	mov	r3, #120	; 0x78
  101a90:	e3a00001 	mov	r0, #1
  101a94:	e5c53000 	strb	r3, [r5]
  101a98:	e8bd8070 	pop	{r4, r5, r6, pc}

00101a9c <OSMutexCreate>:
  101a9c:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
  101aa0:	e3093af4 	movw	r3, #39668	; 0x9af4
  101aa4:	e3403010 	movt	r3, #16
  101aa8:	e1a05000 	mov	r5, r0
  101aac:	e1a06001 	mov	r6, r1
  101ab0:	e5d34000 	ldrb	r4, [r3]
  101ab4:	e3540000 	cmp	r4, #0
  101ab8:	13a03010 	movne	r3, #16
  101abc:	13a04000 	movne	r4, #0
  101ac0:	15c13000 	strbne	r3, [r1]
  101ac4:	1a00001e 	bne	101b44 <OSMutexCreate+0xa8>
  101ac8:	eb000f4e 	bl	105808 <guest_OS_ENTER_CRITICAL>
  101acc:	e35500ff 	cmp	r5, #255	; 0xff
  101ad0:	0a000029 	beq	101b7c <OSMutexCreate+0xe0>
  101ad4:	e30a3480 	movw	r3, #42112	; 0xa480
  101ad8:	e3403010 	movt	r3, #16
  101adc:	e7932105 	ldr	r2, [r3, r5, lsl #2]
  101ae0:	e3520000 	cmp	r2, #0
  101ae4:	1a000018 	bne	101b4c <OSMutexCreate+0xb0>
  101ae8:	e3092af0 	movw	r2, #39664	; 0x9af0
  101aec:	e3402010 	movt	r2, #16
  101af0:	e3a01001 	mov	r1, #1
  101af4:	e7831105 	str	r1, [r3, r5, lsl #2]
  101af8:	e5924000 	ldr	r4, [r2]
  101afc:	e3540000 	cmp	r4, #0
  101b00:	0a000016 	beq	101b60 <OSMutexCreate+0xc4>
  101b04:	e5943004 	ldr	r3, [r4, #4]
  101b08:	e1a05405 	lsl	r5, r5, #8
  101b0c:	e3a07000 	mov	r7, #0
  101b10:	e38550ff 	orr	r5, r5, #255	; 0xff
  101b14:	e5823000 	str	r3, [r2]
  101b18:	eb000f3d 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101b1c:	e3a03004 	mov	r3, #4
  101b20:	e1c450b8 	strh	r5, [r4, #8]
  101b24:	e5c43000 	strb	r3, [r4]
  101b28:	e1a00004 	mov	r0, r4
  101b2c:	e30733bc 	movw	r3, #29628	; 0x73bc
  101b30:	e5847004 	str	r7, [r4, #4]
  101b34:	e3403010 	movt	r3, #16
  101b38:	e5843014 	str	r3, [r4, #20]
  101b3c:	ebfffbc9 	bl	100a68 <OS_EventWaitListInit>
  101b40:	e5c67000 	strb	r7, [r6]
  101b44:	e1a00004 	mov	r0, r4
  101b48:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
  101b4c:	eb000f30 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101b50:	e3a03028 	mov	r3, #40	; 0x28
  101b54:	e1a00004 	mov	r0, r4
  101b58:	e5c63000 	strb	r3, [r6]
  101b5c:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
  101b60:	e7834105 	str	r4, [r3, r5, lsl #2]
  101b64:	e3a04000 	mov	r4, #0
  101b68:	eb000f29 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101b6c:	e3a03004 	mov	r3, #4
  101b70:	e1a00004 	mov	r0, r4
  101b74:	e5c63000 	strb	r3, [r6]
  101b78:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
  101b7c:	e3092af0 	movw	r2, #39664	; 0x9af0
  101b80:	e3402010 	movt	r2, #16
  101b84:	e5924000 	ldr	r4, [r2]
  101b88:	e3540000 	cmp	r4, #0
  101b8c:	1affffdc 	bne	101b04 <OSMutexCreate+0x68>
  101b90:	eafffff3 	b	101b64 <OSMutexCreate+0xc8>

00101b94 <OSMutexDel>:
  101b94:	e92d4070 	push	{r4, r5, r6, lr}
  101b98:	e1a04000 	mov	r4, r0
  101b9c:	e5d03000 	ldrb	r3, [r0]
  101ba0:	e24dd008 	sub	sp, sp, #8
  101ba4:	e1a05002 	mov	r5, r2
  101ba8:	e3530004 	cmp	r3, #4
  101bac:	13a03001 	movne	r3, #1
  101bb0:	15c23000 	strbne	r3, [r2]
  101bb4:	0a000002 	beq	101bc4 <OSMutexDel+0x30>
  101bb8:	e1a00004 	mov	r0, r4
  101bbc:	e28dd008 	add	sp, sp, #8
  101bc0:	e8bd8070 	pop	{r4, r5, r6, pc}
  101bc4:	e3093af4 	movw	r3, #39668	; 0x9af4
  101bc8:	e3403010 	movt	r3, #16
  101bcc:	e5d33000 	ldrb	r3, [r3]
  101bd0:	e3530000 	cmp	r3, #0
  101bd4:	13a0300f 	movne	r3, #15
  101bd8:	15c23000 	strbne	r3, [r2]
  101bdc:	1afffff5 	bne	101bb8 <OSMutexDel+0x24>
  101be0:	e58d1004 	str	r1, [sp, #4]
  101be4:	eb000f07 	bl	105808 <guest_OS_ENTER_CRITICAL>
  101be8:	e5d4300a 	ldrb	r3, [r4, #10]
  101bec:	e59d1004 	ldr	r1, [sp, #4]
  101bf0:	e2936000 	adds	r6, r3, #0
  101bf4:	13a06001 	movne	r6, #1
  101bf8:	e3510000 	cmp	r1, #0
  101bfc:	1a000016 	bne	101c5c <OSMutexDel+0xc8>
  101c00:	e3560000 	cmp	r6, #0
  101c04:	1a00001a 	bne	101c74 <OSMutexDel+0xe0>
  101c08:	e1d420b8 	ldrh	r2, [r4, #8]
  101c0c:	e30733bc 	movw	r3, #29628	; 0x73bc
  101c10:	e3403010 	movt	r3, #16
  101c14:	e5843014 	str	r3, [r4, #20]
  101c18:	e1a02422 	lsr	r2, r2, #8
  101c1c:	e35200ff 	cmp	r2, #255	; 0xff
  101c20:	130a3480 	movwne	r3, #42112	; 0xa480
  101c24:	13403010 	movtne	r3, #16
  101c28:	17836102 	strne	r6, [r3, r2, lsl #2]
  101c2c:	e3093af0 	movw	r3, #39664	; 0x9af0
  101c30:	e3403010 	movt	r3, #16
  101c34:	e3a06000 	mov	r6, #0
  101c38:	e5c46000 	strb	r6, [r4]
  101c3c:	e5932000 	ldr	r2, [r3]
  101c40:	e1c460b8 	strh	r6, [r4, #8]
  101c44:	e5834000 	str	r4, [r3]
  101c48:	e5842004 	str	r2, [r4, #4]
  101c4c:	e1a04006 	mov	r4, r6
  101c50:	eb000eef 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101c54:	e5c56000 	strb	r6, [r5]
  101c58:	eaffffd6 	b	101bb8 <OSMutexDel+0x24>
  101c5c:	e3510001 	cmp	r1, #1
  101c60:	0a000007 	beq	101c84 <OSMutexDel+0xf0>
  101c64:	eb000eea 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101c68:	e3a03007 	mov	r3, #7
  101c6c:	e5c53000 	strb	r3, [r5]
  101c70:	eaffffd0 	b	101bb8 <OSMutexDel+0x24>
  101c74:	eb000ee6 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101c78:	e3a03049 	mov	r3, #73	; 0x49
  101c7c:	e5c53000 	strb	r3, [r5]
  101c80:	eaffffcc 	b	101bb8 <OSMutexDel+0x24>
  101c84:	e1d410b8 	ldrh	r1, [r4, #8]
  101c88:	e1a02421 	lsr	r2, r1, #8
  101c8c:	e35200ff 	cmp	r2, #255	; 0xff
  101c90:	0a000005 	beq	101cac <OSMutexDel+0x118>
  101c94:	e5940004 	ldr	r0, [r4, #4]
  101c98:	e3500000 	cmp	r0, #0
  101c9c:	0a000002 	beq	101cac <OSMutexDel+0x118>
  101ca0:	e5d0c02e 	ldrb	ip, [r0, #46]	; 0x2e
  101ca4:	e15c0002 	cmp	ip, r2
  101ca8:	0a000023 	beq	101d3c <OSMutexDel+0x1a8>
  101cac:	e3530000 	cmp	r3, #0
  101cb0:	0a000007 	beq	101cd4 <OSMutexDel+0x140>
  101cb4:	e3a03002 	mov	r3, #2
  101cb8:	e1a00004 	mov	r0, r4
  101cbc:	e3a01000 	mov	r1, #0
  101cc0:	e3a02010 	mov	r2, #16
  101cc4:	ebfffb2e 	bl	100984 <OS_EventTaskRdy>
  101cc8:	e5d4300a 	ldrb	r3, [r4, #10]
  101ccc:	e3530000 	cmp	r3, #0
  101cd0:	1afffff7 	bne	101cb4 <OSMutexDel+0x120>
  101cd4:	e1d420b8 	ldrh	r2, [r4, #8]
  101cd8:	e30733bc 	movw	r3, #29628	; 0x73bc
  101cdc:	e3403010 	movt	r3, #16
  101ce0:	e5843014 	str	r3, [r4, #20]
  101ce4:	e1a02422 	lsr	r2, r2, #8
  101ce8:	e35200ff 	cmp	r2, #255	; 0xff
  101cec:	130a3480 	movwne	r3, #42112	; 0xa480
  101cf0:	13403010 	movtne	r3, #16
  101cf4:	13a01000 	movne	r1, #0
  101cf8:	17831102 	strne	r1, [r3, r2, lsl #2]
  101cfc:	e3093af0 	movw	r3, #39664	; 0x9af0
  101d00:	e3403010 	movt	r3, #16
  101d04:	e3a02000 	mov	r2, #0
  101d08:	e5c42000 	strb	r2, [r4]
  101d0c:	e5931000 	ldr	r1, [r3]
  101d10:	e1c420b8 	strh	r2, [r4, #8]
  101d14:	e5834000 	str	r4, [r3]
  101d18:	e5841004 	str	r1, [r4, #4]
  101d1c:	eb000ebc 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101d20:	e3560001 	cmp	r6, #1
  101d24:	0a000002 	beq	101d34 <OSMutexDel+0x1a0>
  101d28:	e3a04000 	mov	r4, #0
  101d2c:	e5c54000 	strb	r4, [r5]
  101d30:	eaffffa0 	b	101bb8 <OSMutexDel+0x24>
  101d34:	ebfffb69 	bl	100ae0 <OS_Sched>
  101d38:	eafffffa 	b	101d28 <OSMutexDel+0x194>
  101d3c:	e6ef1071 	uxtb	r1, r1
  101d40:	ebfffef7 	bl	101924 <OSMutex_RdyAtPrio>
  101d44:	e5d4300a 	ldrb	r3, [r4, #10]
  101d48:	eaffffd7 	b	101cac <OSMutexDel+0x118>

00101d4c <OSMutexPend>:
  101d4c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
  101d50:	e1a04000 	mov	r4, r0
  101d54:	e5d03000 	ldrb	r3, [r0]
  101d58:	e24dd008 	sub	sp, sp, #8
  101d5c:	e3530004 	cmp	r3, #4
  101d60:	13a03001 	movne	r3, #1
  101d64:	15c23000 	strbne	r3, [r2]
  101d68:	0a000001 	beq	101d74 <OSMutexPend+0x28>
  101d6c:	e28dd008 	add	sp, sp, #8
  101d70:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
  101d74:	e3093af4 	movw	r3, #39668	; 0x9af4
  101d78:	e3403010 	movt	r3, #16
  101d7c:	e5d33000 	ldrb	r3, [r3]
  101d80:	e3530000 	cmp	r3, #0
  101d84:	13a03002 	movne	r3, #2
  101d88:	15c23000 	strbne	r3, [r2]
  101d8c:	1afffff6 	bne	101d6c <OSMutexPend+0x20>
  101d90:	e3093a44 	movw	r3, #39492	; 0x9a44
  101d94:	e3403010 	movt	r3, #16
  101d98:	e5d33000 	ldrb	r3, [r3]
  101d9c:	e3530000 	cmp	r3, #0
  101da0:	13a0300d 	movne	r3, #13
  101da4:	15c23000 	strbne	r3, [r2]
  101da8:	1affffef 	bne	101d6c <OSMutexPend+0x20>
  101dac:	e58d1004 	str	r1, [sp, #4]
  101db0:	e58d2000 	str	r2, [sp]
  101db4:	eb000e93 	bl	105808 <guest_OS_ENTER_CRITICAL>
  101db8:	e1d430b8 	ldrh	r3, [r4, #8]
  101dbc:	e59d1004 	ldr	r1, [sp, #4]
  101dc0:	e59d2000 	ldr	r2, [sp]
  101dc4:	e6efc073 	uxtb	ip, r3
  101dc8:	e1a0e423 	lsr	lr, r3, #8
  101dcc:	e35c00ff 	cmp	ip, #255	; 0xff
  101dd0:	e6ef007e 	uxtb	r0, lr
  101dd4:	0a000063 	beq	101f68 <OSMutexPend+0x21c>
  101dd8:	e35000ff 	cmp	r0, #255	; 0xff
  101ddc:	03095af8 	movweq	r5, #39672	; 0x9af8
  101de0:	03405010 	movteq	r5, #16
  101de4:	0a000039 	beq	101ed0 <OSMutexPend+0x184>
  101de8:	e5943004 	ldr	r3, [r4, #4]
  101dec:	e5d3502e 	ldrb	r5, [r3, #46]	; 0x2e
  101df0:	e1550000 	cmp	r5, r0
  101df4:	e3095af8 	movw	r5, #39672	; 0x9af8
  101df8:	e3405010 	movt	r5, #16
  101dfc:	9a000033 	bls	101ed0 <OSMutexPend+0x184>
  101e00:	e5956000 	ldr	r6, [r5]
  101e04:	e5d6602e 	ldrb	r6, [r6, #46]	; 0x2e
  101e08:	e156000c 	cmp	r6, ip
  101e0c:	2a00002f 	bcs	101ed0 <OSMutexPend+0x184>
  101e10:	e5d37030 	ldrb	r7, [r3, #48]	; 0x30
  101e14:	e309cae8 	movw	ip, #39656	; 0x9ae8
  101e18:	e340c010 	movt	ip, #16
  101e1c:	e5d36031 	ldrb	r6, [r3, #49]	; 0x31
  101e20:	e7dc8007 	ldrb	r8, [ip, r7]
  101e24:	e1180006 	tst	r8, r6
  101e28:	0a000067 	beq	101fcc <OSMutexPend+0x280>
  101e2c:	e1c86006 	bic	r6, r8, r6
  101e30:	e7cc6007 	strb	r6, [ip, r7]
  101e34:	e3560000 	cmp	r6, #0
  101e38:	13a08001 	movne	r8, #1
  101e3c:	1a000006 	bne	101e5c <OSMutexPend+0x110>
  101e40:	e3096ae4 	movw	r6, #39652	; 0x9ae4
  101e44:	e3406010 	movt	r6, #16
  101e48:	e5d3a032 	ldrb	sl, [r3, #50]	; 0x32
  101e4c:	e3a08001 	mov	r8, #1
  101e50:	e5d67000 	ldrb	r7, [r6]
  101e54:	e1c7700a 	bic	r7, r7, sl
  101e58:	e5c67000 	strb	r7, [r6]
  101e5c:	e3a07001 	mov	r7, #1
  101e60:	e1a061a0 	lsr	r6, r0, #3
  101e64:	e20ee007 	and	lr, lr, #7
  101e68:	e1580007 	cmp	r8, r7
  101e6c:	e1a08617 	lsl	r8, r7, r6
  101e70:	e1a07e17 	lsl	r7, r7, lr
  101e74:	e5c3002e 	strb	r0, [r3, #46]	; 0x2e
  101e78:	e6ef8078 	uxtb	r8, r8
  101e7c:	e6ef7077 	uxtb	r7, r7
  101e80:	e5c36030 	strb	r6, [r3, #48]	; 0x30
  101e84:	e5c3e02f 	strb	lr, [r3, #47]	; 0x2f
  101e88:	e5c38032 	strb	r8, [r3, #50]	; 0x32
  101e8c:	e5c37031 	strb	r7, [r3, #49]	; 0x31
  101e90:	0a00005e 	beq	102010 <OSMutexPend+0x2c4>
  101e94:	e593c01c 	ldr	ip, [r3, #28]
  101e98:	e35c0000 	cmp	ip, #0
  101e9c:	0a000008 	beq	101ec4 <OSMutexPend+0x178>
  101ea0:	e5dce00a 	ldrb	lr, [ip, #10]
  101ea4:	e188800e 	orr	r8, r8, lr
  101ea8:	e5cc800a 	strb	r8, [ip, #10]
  101eac:	e5d36030 	ldrb	r6, [r3, #48]	; 0x30
  101eb0:	e5d3e031 	ldrb	lr, [r3, #49]	; 0x31
  101eb4:	e08cc006 	add	ip, ip, r6
  101eb8:	e5dc600b 	ldrb	r6, [ip, #11]
  101ebc:	e186e00e 	orr	lr, r6, lr
  101ec0:	e5cce00b 	strb	lr, [ip, #11]
  101ec4:	e30ac480 	movw	ip, #42112	; 0xa480
  101ec8:	e340c010 	movt	ip, #16
  101ecc:	e78c3100 	str	r3, [ip, r0, lsl #2]
  101ed0:	e5953000 	ldr	r3, [r5]
  101ed4:	e3a0e000 	mov	lr, #0
  101ed8:	e1a00004 	mov	r0, r4
  101edc:	e5d3c02c 	ldrb	ip, [r3, #44]	; 0x2c
  101ee0:	e5c3e02d 	strb	lr, [r3, #45]	; 0x2d
  101ee4:	e5831028 	str	r1, [r3, #40]	; 0x28
  101ee8:	e38cc010 	orr	ip, ip, #16
  101eec:	e5c3c02c 	strb	ip, [r3, #44]	; 0x2c
  101ef0:	e58d2000 	str	r2, [sp]
  101ef4:	ebfffa37 	bl	1007d8 <OS_EventTaskWait>
  101ef8:	eb000e45 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101efc:	ebfffaf7 	bl	100ae0 <OS_Sched>
  101f00:	eb000e40 	bl	105808 <guest_OS_ENTER_CRITICAL>
  101f04:	e5950000 	ldr	r0, [r5]
  101f08:	e59d2000 	ldr	r2, [sp]
  101f0c:	e5d0302d 	ldrb	r3, [r0, #45]	; 0x2d
  101f10:	e3530000 	cmp	r3, #0
  101f14:	1a000009 	bne	101f40 <OSMutexPend+0x1f4>
  101f18:	e5c23000 	strb	r3, [r2]
  101f1c:	e5953000 	ldr	r3, [r5]
  101f20:	e3a02000 	mov	r2, #0
  101f24:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
  101f28:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
  101f2c:	e583201c 	str	r2, [r3, #28]
  101f30:	e5832020 	str	r2, [r3, #32]
  101f34:	e28dd008 	add	sp, sp, #8
  101f38:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
  101f3c:	ea000e34 	b	105814 <guest_OS_EXIT_CRITICAL>
  101f40:	e3530002 	cmp	r3, #2
  101f44:	03a0300e 	moveq	r3, #14
  101f48:	05c23000 	strbeq	r3, [r2]
  101f4c:	0afffff2 	beq	101f1c <OSMutexPend+0x1d0>
  101f50:	e1a01004 	mov	r1, r4
  101f54:	e58d2000 	str	r2, [sp]
  101f58:	ebfffa66 	bl	1008f8 <OS_EventTaskRemove>
  101f5c:	e3a0300a 	mov	r3, #10
  101f60:	e59d2000 	ldr	r2, [sp]
  101f64:	eaffffeb 	b	101f18 <OSMutexPend+0x1cc>
  101f68:	e3091af8 	movw	r1, #39672	; 0x9af8
  101f6c:	e3401010 	movt	r1, #16
  101f70:	e2033cff 	and	r3, r3, #65280	; 0xff00
  101f74:	e35000ff 	cmp	r0, #255	; 0xff
  101f78:	e5911000 	ldr	r1, [r1]
  101f7c:	e1c430b8 	strh	r3, [r4, #8]
  101f80:	e5d1c02e 	ldrb	ip, [r1, #46]	; 0x2e
  101f84:	e5841004 	str	r1, [r4, #4]
  101f88:	e183300c 	orr	r3, r3, ip
  101f8c:	e1c430b8 	strh	r3, [r4, #8]
  101f90:	0a000002 	beq	101fa0 <OSMutexPend+0x254>
  101f94:	e5d1302e 	ldrb	r3, [r1, #46]	; 0x2e
  101f98:	e1530000 	cmp	r3, r0
  101f9c:	9a000005 	bls	101fb8 <OSMutexPend+0x26c>
  101fa0:	e58d2000 	str	r2, [sp]
  101fa4:	eb000e1a 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101fa8:	e59d2000 	ldr	r2, [sp]
  101fac:	e3a03000 	mov	r3, #0
  101fb0:	e5c23000 	strb	r3, [r2]
  101fb4:	eaffff6c 	b	101d6c <OSMutexPend+0x20>
  101fb8:	eb000e15 	bl	105814 <guest_OS_EXIT_CRITICAL>
  101fbc:	e59d2000 	ldr	r2, [sp]
  101fc0:	e3a03078 	mov	r3, #120	; 0x78
  101fc4:	e5c23000 	strb	r3, [r2]
  101fc8:	eaffff67 	b	101d6c <OSMutexPend+0x20>
  101fcc:	e593a01c 	ldr	sl, [r3, #28]
  101fd0:	e35a0000 	cmp	sl, #0
  101fd4:	0a00000b 	beq	102008 <OSMutexPend+0x2bc>
  101fd8:	e08a7007 	add	r7, sl, r7
  101fdc:	e5d7800b 	ldrb	r8, [r7, #11]
  101fe0:	e1c86006 	bic	r6, r8, r6
  101fe4:	e5c7600b 	strb	r6, [r7, #11]
  101fe8:	e3560000 	cmp	r6, #0
  101fec:	1a000005 	bne	102008 <OSMutexPend+0x2bc>
  101ff0:	e5d37032 	ldrb	r7, [r3, #50]	; 0x32
  101ff4:	e3a08000 	mov	r8, #0
  101ff8:	e5da600a 	ldrb	r6, [sl, #10]
  101ffc:	e1c66007 	bic	r6, r6, r7
  102000:	e5ca600a 	strb	r6, [sl, #10]
  102004:	eaffff94 	b	101e5c <OSMutexPend+0x110>
  102008:	e3a08000 	mov	r8, #0
  10200c:	eaffff92 	b	101e5c <OSMutexPend+0x110>
  102010:	e309eae4 	movw	lr, #39652	; 0x9ae4
  102014:	e340e010 	movt	lr, #16
  102018:	e7dc9006 	ldrb	r9, [ip, r6]
  10201c:	e5dea000 	ldrb	sl, [lr]
  102020:	e1877009 	orr	r7, r7, r9
  102024:	e7cc7006 	strb	r7, [ip, r6]
  102028:	e188800a 	orr	r8, r8, sl
  10202c:	e5ce8000 	strb	r8, [lr]
  102030:	eaffffa3 	b	101ec4 <OSMutexPend+0x178>

00102034 <OSMutexPost>:
  102034:	e3093af4 	movw	r3, #39668	; 0x9af4
  102038:	e3403010 	movt	r3, #16
  10203c:	e92d4070 	push	{r4, r5, r6, lr}
  102040:	e1a04000 	mov	r4, r0
  102044:	e5d33000 	ldrb	r3, [r3]
  102048:	e3530000 	cmp	r3, #0
  10204c:	0a000001 	beq	102058 <OSMutexPost+0x24>
  102050:	e3a00005 	mov	r0, #5
  102054:	e8bd8070 	pop	{r4, r5, r6, pc}
  102058:	e5d03000 	ldrb	r3, [r0]
  10205c:	e3530004 	cmp	r3, #4
  102060:	0a000001 	beq	10206c <OSMutexPost+0x38>
  102064:	e3a00001 	mov	r0, #1
  102068:	e8bd8070 	pop	{r4, r5, r6, pc}
  10206c:	eb000de5 	bl	105808 <guest_OS_ENTER_CRITICAL>
  102070:	e3093af8 	movw	r3, #39672	; 0x9af8
  102074:	e3403010 	movt	r3, #16
  102078:	e5940004 	ldr	r0, [r4, #4]
  10207c:	e1d410b8 	ldrh	r1, [r4, #8]
  102080:	e5933000 	ldr	r3, [r3]
  102084:	e1500003 	cmp	r0, r3
  102088:	0a000002 	beq	102098 <OSMutexPost+0x64>
  10208c:	eb000de0 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102090:	e3a00064 	mov	r0, #100	; 0x64
  102094:	e8bd8070 	pop	{r4, r5, r6, pc}
  102098:	e1a05421 	lsr	r5, r1, #8
  10209c:	e35500ff 	cmp	r5, #255	; 0xff
  1020a0:	0a000006 	beq	1020c0 <OSMutexPost+0x8c>
  1020a4:	e5d0302e 	ldrb	r3, [r0, #46]	; 0x2e
  1020a8:	e1530005 	cmp	r3, r5
  1020ac:	0a000029 	beq	102158 <OSMutexPost+0x124>
  1020b0:	e30a3480 	movw	r3, #42112	; 0xa480
  1020b4:	e3403010 	movt	r3, #16
  1020b8:	e3a02001 	mov	r2, #1
  1020bc:	e7832105 	str	r2, [r3, r5, lsl #2]
  1020c0:	e5d4600a 	ldrb	r6, [r4, #10]
  1020c4:	e3560000 	cmp	r6, #0
  1020c8:	0a000017 	beq	10212c <OSMutexPost+0xf8>
  1020cc:	e3a01000 	mov	r1, #0
  1020d0:	e3a02010 	mov	r2, #16
  1020d4:	e1a03001 	mov	r3, r1
  1020d8:	e1a00004 	mov	r0, r4
  1020dc:	ebfffa28 	bl	100984 <OS_EventTaskRdy>
  1020e0:	e30a3480 	movw	r3, #42112	; 0xa480
  1020e4:	e3403010 	movt	r3, #16
  1020e8:	e1d420b8 	ldrh	r2, [r4, #8]
  1020ec:	e3c220ff 	bic	r2, r2, #255	; 0xff
  1020f0:	e1500005 	cmp	r0, r5
  1020f4:	e7933100 	ldr	r3, [r3, r0, lsl #2]
  1020f8:	e1800002 	orr	r0, r0, r2
  1020fc:	e1c400b8 	strh	r0, [r4, #8]
  102100:	83a06000 	movhi	r6, #0
  102104:	93a06001 	movls	r6, #1
  102108:	e35500ff 	cmp	r5, #255	; 0xff
  10210c:	e5843004 	str	r3, [r4, #4]
  102110:	03a06000 	moveq	r6, #0
  102114:	e3560000 	cmp	r6, #0
  102118:	0a00000a 	beq	102148 <OSMutexPost+0x114>
  10211c:	eb000dbc 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102120:	ebfffa6e 	bl	100ae0 <OS_Sched>
  102124:	e3a00078 	mov	r0, #120	; 0x78
  102128:	e8bd8070 	pop	{r4, r5, r6, pc}
  10212c:	e1d430b8 	ldrh	r3, [r4, #8]
  102130:	e5846004 	str	r6, [r4, #4]
  102134:	e38330ff 	orr	r3, r3, #255	; 0xff
  102138:	e1c430b8 	strh	r3, [r4, #8]
  10213c:	eb000db4 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102140:	e1a00006 	mov	r0, r6
  102144:	e8bd8070 	pop	{r4, r5, r6, pc}
  102148:	eb000db1 	bl	105814 <guest_OS_EXIT_CRITICAL>
  10214c:	ebfffa63 	bl	100ae0 <OS_Sched>
  102150:	e1a00006 	mov	r0, r6
  102154:	e8bd8070 	pop	{r4, r5, r6, pc}
  102158:	e6ef1071 	uxtb	r1, r1
  10215c:	ebfffdf0 	bl	101924 <OSMutex_RdyAtPrio>
  102160:	eaffffd2 	b	1020b0 <OSMutexPost+0x7c>

00102164 <OSMutexQuery>:
  102164:	e3093af4 	movw	r3, #39668	; 0x9af4
  102168:	e3403010 	movt	r3, #16
  10216c:	e92d4030 	push	{r4, r5, lr}
  102170:	e1a05000 	mov	r5, r0
  102174:	e5d34000 	ldrb	r4, [r3]
  102178:	e24dd00c 	sub	sp, sp, #12
  10217c:	e3540000 	cmp	r4, #0
  102180:	13a00006 	movne	r0, #6
  102184:	0a000001 	beq	102190 <OSMutexQuery+0x2c>
  102188:	e28dd00c 	add	sp, sp, #12
  10218c:	e8bd8030 	pop	{r4, r5, pc}
  102190:	e5d53000 	ldrb	r3, [r5]
  102194:	e3530004 	cmp	r3, #4
  102198:	13a00001 	movne	r0, #1
  10219c:	1afffff9 	bne	102188 <OSMutexQuery+0x24>
  1021a0:	e58d1004 	str	r1, [sp, #4]
  1021a4:	eb000d97 	bl	105808 <guest_OS_ENTER_CRITICAL>
  1021a8:	e1d530b8 	ldrh	r3, [r5, #8]
  1021ac:	e59d1004 	ldr	r1, [sp, #4]
  1021b0:	e1a03423 	lsr	r3, r3, #8
  1021b4:	e2810008 	add	r0, r1, #8
  1021b8:	e5c1300b 	strb	r3, [r1, #11]
  1021bc:	e5d53008 	ldrb	r3, [r5, #8]
  1021c0:	e35300ff 	cmp	r3, #255	; 0xff
  1021c4:	15c14009 	strbne	r4, [r1, #9]
  1021c8:	e5c1300a 	strb	r3, [r1, #10]
  1021cc:	03a03001 	moveq	r3, #1
  1021d0:	05c13009 	strbeq	r3, [r1, #9]
  1021d4:	e5f5200a 	ldrb	r2, [r5, #10]!
  1021d8:	e1a03001 	mov	r3, r1
  1021dc:	e5c12008 	strb	r2, [r1, #8]
  1021e0:	e5f52001 	ldrb	r2, [r5, #1]!
  1021e4:	e4c32001 	strb	r2, [r3], #1
  1021e8:	e1530000 	cmp	r3, r0
  1021ec:	1afffffb 	bne	1021e0 <OSMutexQuery+0x7c>
  1021f0:	eb000d87 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1021f4:	e3a00000 	mov	r0, #0
  1021f8:	eaffffe2 	b	102188 <OSMutexQuery+0x24>

001021fc <OSSemAccept>:
  1021fc:	e92d4038 	push	{r3, r4, r5, lr}
  102200:	e1a05000 	mov	r5, r0
  102204:	e5d03000 	ldrb	r3, [r0]
  102208:	e3530003 	cmp	r3, #3
  10220c:	13a04000 	movne	r4, #0
  102210:	0a000001 	beq	10221c <OSSemAccept+0x20>
  102214:	e1a00004 	mov	r0, r4
  102218:	e8bd8038 	pop	{r3, r4, r5, pc}
  10221c:	eb000d79 	bl	105808 <guest_OS_ENTER_CRITICAL>
  102220:	e1d540b8 	ldrh	r4, [r5, #8]
  102224:	e3540000 	cmp	r4, #0
  102228:	12443001 	subne	r3, r4, #1
  10222c:	11c530b8 	strhne	r3, [r5, #8]
  102230:	eb000d77 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102234:	e1a00004 	mov	r0, r4
  102238:	e8bd8038 	pop	{r3, r4, r5, pc}

0010223c <OSSemCreate>:
  10223c:	e3093af4 	movw	r3, #39668	; 0x9af4
  102240:	e3403010 	movt	r3, #16
  102244:	e92d4070 	push	{r4, r5, r6, lr}
  102248:	e1a06000 	mov	r6, r0
  10224c:	e5d35000 	ldrb	r5, [r3]
  102250:	e3550000 	cmp	r5, #0
  102254:	13a04000 	movne	r4, #0
  102258:	1a000011 	bne	1022a4 <OSSemCreate+0x68>
  10225c:	eb000d69 	bl	105808 <guest_OS_ENTER_CRITICAL>
  102260:	e3093af0 	movw	r3, #39664	; 0x9af0
  102264:	e3403010 	movt	r3, #16
  102268:	e5934000 	ldr	r4, [r3]
  10226c:	e3540000 	cmp	r4, #0
  102270:	0a00000d 	beq	1022ac <OSSemCreate+0x70>
  102274:	e5942004 	ldr	r2, [r4, #4]
  102278:	e5832000 	str	r2, [r3]
  10227c:	eb000d64 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102280:	e3a03003 	mov	r3, #3
  102284:	e1c460b8 	strh	r6, [r4, #8]
  102288:	e5c43000 	strb	r3, [r4]
  10228c:	e1a00004 	mov	r0, r4
  102290:	e30733bc 	movw	r3, #29628	; 0x73bc
  102294:	e5845004 	str	r5, [r4, #4]
  102298:	e3403010 	movt	r3, #16
  10229c:	e5843014 	str	r3, [r4, #20]
  1022a0:	ebfff9f0 	bl	100a68 <OS_EventWaitListInit>
  1022a4:	e1a00004 	mov	r0, r4
  1022a8:	e8bd8070 	pop	{r4, r5, r6, pc}
  1022ac:	eb000d58 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1022b0:	e1a00004 	mov	r0, r4
  1022b4:	e8bd8070 	pop	{r4, r5, r6, pc}

001022b8 <OSSemDel>:
  1022b8:	e92d40f0 	push	{r4, r5, r6, r7, lr}
  1022bc:	e1a04000 	mov	r4, r0
  1022c0:	e5d03000 	ldrb	r3, [r0]
  1022c4:	e24dd00c 	sub	sp, sp, #12
  1022c8:	e1a05002 	mov	r5, r2
  1022cc:	e3530003 	cmp	r3, #3
  1022d0:	13a03001 	movne	r3, #1
  1022d4:	15c23000 	strbne	r3, [r2]
  1022d8:	0a000002 	beq	1022e8 <OSSemDel+0x30>
  1022dc:	e1a00004 	mov	r0, r4
  1022e0:	e28dd00c 	add	sp, sp, #12
  1022e4:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
  1022e8:	e3093af4 	movw	r3, #39668	; 0x9af4
  1022ec:	e3403010 	movt	r3, #16
  1022f0:	e5d33000 	ldrb	r3, [r3]
  1022f4:	e3530000 	cmp	r3, #0
  1022f8:	13a0300f 	movne	r3, #15
  1022fc:	15c23000 	strbne	r3, [r2]
  102300:	1afffff5 	bne	1022dc <OSSemDel+0x24>
  102304:	e58d1004 	str	r1, [sp, #4]
  102308:	eb000d3e 	bl	105808 <guest_OS_ENTER_CRITICAL>
  10230c:	e5d4700a 	ldrb	r7, [r4, #10]
  102310:	e59d1004 	ldr	r1, [sp, #4]
  102314:	e2977000 	adds	r7, r7, #0
  102318:	13a07001 	movne	r7, #1
  10231c:	e3510000 	cmp	r1, #0
  102320:	e1a06007 	mov	r6, r7
  102324:	1a00000f 	bne	102368 <OSSemDel+0xb0>
  102328:	e3570000 	cmp	r7, #0
  10232c:	1a000013 	bne	102380 <OSSemDel+0xc8>
  102330:	e3093af0 	movw	r3, #39664	; 0x9af0
  102334:	e3403010 	movt	r3, #16
  102338:	e5c47000 	strb	r7, [r4]
  10233c:	e30723bc 	movw	r2, #29628	; 0x73bc
  102340:	e5931000 	ldr	r1, [r3]
  102344:	e3402010 	movt	r2, #16
  102348:	e1c470b8 	strh	r7, [r4, #8]
  10234c:	e5842014 	str	r2, [r4, #20]
  102350:	e5841004 	str	r1, [r4, #4]
  102354:	e5834000 	str	r4, [r3]
  102358:	eb000d2d 	bl	105814 <guest_OS_EXIT_CRITICAL>
  10235c:	e1a04007 	mov	r4, r7
  102360:	e5c57000 	strb	r7, [r5]
  102364:	eaffffdc 	b	1022dc <OSSemDel+0x24>
  102368:	e3510001 	cmp	r1, #1
  10236c:	0a000007 	beq	102390 <OSSemDel+0xd8>
  102370:	eb000d27 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102374:	e3a03007 	mov	r3, #7
  102378:	e5c53000 	strb	r3, [r5]
  10237c:	eaffffd6 	b	1022dc <OSSemDel+0x24>
  102380:	eb000d23 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102384:	e3a03049 	mov	r3, #73	; 0x49
  102388:	e5c53000 	strb	r3, [r5]
  10238c:	eaffffd2 	b	1022dc <OSSemDel+0x24>
  102390:	e3570000 	cmp	r7, #0
  102394:	0a000007 	beq	1023b8 <OSSemDel+0x100>
  102398:	e3a03002 	mov	r3, #2
  10239c:	e1a00004 	mov	r0, r4
  1023a0:	e3a01000 	mov	r1, #0
  1023a4:	e3a02001 	mov	r2, #1
  1023a8:	ebfff975 	bl	100984 <OS_EventTaskRdy>
  1023ac:	e5d4300a 	ldrb	r3, [r4, #10]
  1023b0:	e3530000 	cmp	r3, #0
  1023b4:	1afffff7 	bne	102398 <OSSemDel+0xe0>
  1023b8:	e3093af0 	movw	r3, #39664	; 0x9af0
  1023bc:	e3403010 	movt	r3, #16
  1023c0:	e3a01000 	mov	r1, #0
  1023c4:	e5c41000 	strb	r1, [r4]
  1023c8:	e5930000 	ldr	r0, [r3]
  1023cc:	e30723bc 	movw	r2, #29628	; 0x73bc
  1023d0:	e1c410b8 	strh	r1, [r4, #8]
  1023d4:	e3402010 	movt	r2, #16
  1023d8:	e5842014 	str	r2, [r4, #20]
  1023dc:	e5840004 	str	r0, [r4, #4]
  1023e0:	e5834000 	str	r4, [r3]
  1023e4:	eb000d0a 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1023e8:	e3560001 	cmp	r6, #1
  1023ec:	0a000002 	beq	1023fc <OSSemDel+0x144>
  1023f0:	e3a04000 	mov	r4, #0
  1023f4:	e5c54000 	strb	r4, [r5]
  1023f8:	eaffffb7 	b	1022dc <OSSemDel+0x24>
  1023fc:	ebfff9b7 	bl	100ae0 <OS_Sched>
  102400:	eafffffa 	b	1023f0 <OSSemDel+0x138>

00102404 <OSSemPend>:
  102404:	e92d4030 	push	{r4, r5, lr}
  102408:	e1a04000 	mov	r4, r0
  10240c:	e5d03000 	ldrb	r3, [r0]
  102410:	e24dd00c 	sub	sp, sp, #12
  102414:	e3530003 	cmp	r3, #3
  102418:	13a03001 	movne	r3, #1
  10241c:	15c23000 	strbne	r3, [r2]
  102420:	0a000001 	beq	10242c <OSSemPend+0x28>
  102424:	e28dd00c 	add	sp, sp, #12
  102428:	e8bd8030 	pop	{r4, r5, pc}
  10242c:	e3093af4 	movw	r3, #39668	; 0x9af4
  102430:	e3403010 	movt	r3, #16
  102434:	e5d33000 	ldrb	r3, [r3]
  102438:	e3530000 	cmp	r3, #0
  10243c:	13a03002 	movne	r3, #2
  102440:	15c23000 	strbne	r3, [r2]
  102444:	1afffff6 	bne	102424 <OSSemPend+0x20>
  102448:	e3093a44 	movw	r3, #39492	; 0x9a44
  10244c:	e3403010 	movt	r3, #16
  102450:	e5d35000 	ldrb	r5, [r3]
  102454:	e3550000 	cmp	r5, #0
  102458:	13a0300d 	movne	r3, #13
  10245c:	15c23000 	strbne	r3, [r2]
  102460:	1affffef 	bne	102424 <OSSemPend+0x20>
  102464:	e58d1004 	str	r1, [sp, #4]
  102468:	e58d2000 	str	r2, [sp]
  10246c:	eb000ce5 	bl	105808 <guest_OS_ENTER_CRITICAL>
  102470:	e1d4c0b8 	ldrh	ip, [r4, #8]
  102474:	e59d1004 	ldr	r1, [sp, #4]
  102478:	e35c0000 	cmp	ip, #0
  10247c:	e59d2000 	ldr	r2, [sp]
  102480:	1a000026 	bne	102520 <OSSemPend+0x11c>
  102484:	e3095af8 	movw	r5, #39672	; 0x9af8
  102488:	e3405010 	movt	r5, #16
  10248c:	e1a00004 	mov	r0, r4
  102490:	e5953000 	ldr	r3, [r5]
  102494:	e5d3e02c 	ldrb	lr, [r3, #44]	; 0x2c
  102498:	e5c3c02d 	strb	ip, [r3, #45]	; 0x2d
  10249c:	e5831028 	str	r1, [r3, #40]	; 0x28
  1024a0:	e38ec001 	orr	ip, lr, #1
  1024a4:	e5c3c02c 	strb	ip, [r3, #44]	; 0x2c
  1024a8:	e58d2000 	str	r2, [sp]
  1024ac:	ebfff8c9 	bl	1007d8 <OS_EventTaskWait>
  1024b0:	eb000cd7 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1024b4:	ebfff989 	bl	100ae0 <OS_Sched>
  1024b8:	eb000cd2 	bl	105808 <guest_OS_ENTER_CRITICAL>
  1024bc:	e5950000 	ldr	r0, [r5]
  1024c0:	e59d2000 	ldr	r2, [sp]
  1024c4:	e5d0302d 	ldrb	r3, [r0, #45]	; 0x2d
  1024c8:	e3530000 	cmp	r3, #0
  1024cc:	1a000009 	bne	1024f8 <OSSemPend+0xf4>
  1024d0:	e5c23000 	strb	r3, [r2]
  1024d4:	e5953000 	ldr	r3, [r5]
  1024d8:	e3a02000 	mov	r2, #0
  1024dc:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
  1024e0:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
  1024e4:	e583201c 	str	r2, [r3, #28]
  1024e8:	e5832020 	str	r2, [r3, #32]
  1024ec:	e28dd00c 	add	sp, sp, #12
  1024f0:	e8bd4030 	pop	{r4, r5, lr}
  1024f4:	ea000cc6 	b	105814 <guest_OS_EXIT_CRITICAL>
  1024f8:	e3530002 	cmp	r3, #2
  1024fc:	03a0300e 	moveq	r3, #14
  102500:	05c23000 	strbeq	r3, [r2]
  102504:	0afffff2 	beq	1024d4 <OSSemPend+0xd0>
  102508:	e1a01004 	mov	r1, r4
  10250c:	e58d2000 	str	r2, [sp]
  102510:	ebfff8f8 	bl	1008f8 <OS_EventTaskRemove>
  102514:	e3a0300a 	mov	r3, #10
  102518:	e59d2000 	ldr	r2, [sp]
  10251c:	eaffffeb 	b	1024d0 <OSSemPend+0xcc>
  102520:	e24cc001 	sub	ip, ip, #1
  102524:	e1c4c0b8 	strh	ip, [r4, #8]
  102528:	eb000cb9 	bl	105814 <guest_OS_EXIT_CRITICAL>
  10252c:	e59d2000 	ldr	r2, [sp]
  102530:	e5c25000 	strb	r5, [r2]
  102534:	eaffffba 	b	102424 <OSSemPend+0x20>

00102538 <OSSemPendAbort>:
  102538:	e92d40f0 	push	{r4, r5, r6, r7, lr}
  10253c:	e1a04000 	mov	r4, r0
  102540:	e5d03000 	ldrb	r3, [r0]
  102544:	e24dd00c 	sub	sp, sp, #12
  102548:	e1a06002 	mov	r6, r2
  10254c:	e3530003 	cmp	r3, #3
  102550:	0a000005 	beq	10256c <OSSemPendAbort+0x34>
  102554:	e3a05000 	mov	r5, #0
  102558:	e3a03001 	mov	r3, #1
  10255c:	e5c23000 	strb	r3, [r2]
  102560:	e1a00005 	mov	r0, r5
  102564:	e28dd00c 	add	sp, sp, #12
  102568:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
  10256c:	e58d1004 	str	r1, [sp, #4]
  102570:	eb000ca4 	bl	105808 <guest_OS_ENTER_CRITICAL>
  102574:	e5d4700a 	ldrb	r7, [r4, #10]
  102578:	e59d1004 	ldr	r1, [sp, #4]
  10257c:	e3570000 	cmp	r7, #0
  102580:	0a000018 	beq	1025e8 <OSSemPendAbort+0xb0>
  102584:	e3510001 	cmp	r1, #1
  102588:	0a00000a 	beq	1025b8 <OSSemPendAbort+0x80>
  10258c:	e1a00004 	mov	r0, r4
  102590:	e3a01000 	mov	r1, #0
  102594:	e3a02001 	mov	r2, #1
  102598:	e3a03002 	mov	r3, #2
  10259c:	ebfff8f8 	bl	100984 <OS_EventTaskRdy>
  1025a0:	e3a05001 	mov	r5, #1
  1025a4:	eb000c9a 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1025a8:	ebfff94c 	bl	100ae0 <OS_Sched>
  1025ac:	e3a0300e 	mov	r3, #14
  1025b0:	e5c63000 	strb	r3, [r6]
  1025b4:	eaffffe9 	b	102560 <OSSemPendAbort+0x28>
  1025b8:	e3a05000 	mov	r5, #0
  1025bc:	e3a03002 	mov	r3, #2
  1025c0:	e1a00004 	mov	r0, r4
  1025c4:	e3a01000 	mov	r1, #0
  1025c8:	e3a02001 	mov	r2, #1
  1025cc:	ebfff8ec 	bl	100984 <OS_EventTaskRdy>
  1025d0:	e5d4300a 	ldrb	r3, [r4, #10]
  1025d4:	e2855001 	add	r5, r5, #1
  1025d8:	e3530000 	cmp	r3, #0
  1025dc:	e6ef5075 	uxtb	r5, r5
  1025e0:	1afffff5 	bne	1025bc <OSSemPendAbort+0x84>
  1025e4:	eaffffee 	b	1025a4 <OSSemPendAbort+0x6c>
  1025e8:	eb000c89 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1025ec:	e1a05007 	mov	r5, r7
  1025f0:	e5c67000 	strb	r7, [r6]
  1025f4:	eaffffd9 	b	102560 <OSSemPendAbort+0x28>

001025f8 <OSSemPost>:
  1025f8:	e92d4038 	push	{r3, r4, r5, lr}
  1025fc:	e1a04000 	mov	r4, r0
  102600:	e5d03000 	ldrb	r3, [r0]
  102604:	e3530003 	cmp	r3, #3
  102608:	0a000001 	beq	102614 <OSSemPost+0x1c>
  10260c:	e3a00001 	mov	r0, #1
  102610:	e8bd8038 	pop	{r3, r4, r5, pc}
  102614:	eb000c7b 	bl	105808 <guest_OS_ENTER_CRITICAL>
  102618:	e5d4500a 	ldrb	r5, [r4, #10]
  10261c:	e3550000 	cmp	r5, #0
  102620:	1a00000b 	bne	102654 <OSSemPost+0x5c>
  102624:	e1d430b8 	ldrh	r3, [r4, #8]
  102628:	e30f2fff 	movw	r2, #65535	; 0xffff
  10262c:	e1530002 	cmp	r3, r2
  102630:	0a000004 	beq	102648 <OSSemPost+0x50>
  102634:	e2833001 	add	r3, r3, #1
  102638:	e1c430b8 	strh	r3, [r4, #8]
  10263c:	eb000c74 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102640:	e1a00005 	mov	r0, r5
  102644:	e8bd8038 	pop	{r3, r4, r5, pc}
  102648:	eb000c71 	bl	105814 <guest_OS_EXIT_CRITICAL>
  10264c:	e3a00033 	mov	r0, #51	; 0x33
  102650:	e8bd8038 	pop	{r3, r4, r5, pc}
  102654:	e3a01000 	mov	r1, #0
  102658:	e3a02001 	mov	r2, #1
  10265c:	e1a03001 	mov	r3, r1
  102660:	e1a00004 	mov	r0, r4
  102664:	ebfff8c6 	bl	100984 <OS_EventTaskRdy>
  102668:	eb000c69 	bl	105814 <guest_OS_EXIT_CRITICAL>
  10266c:	ebfff91b 	bl	100ae0 <OS_Sched>
  102670:	e3a00000 	mov	r0, #0
  102674:	e8bd8038 	pop	{r3, r4, r5, pc}

00102678 <OSSemQuery>:
  102678:	e92d4010 	push	{r4, lr}
  10267c:	e1a04000 	mov	r4, r0
  102680:	e5d03000 	ldrb	r3, [r0]
  102684:	e24dd008 	sub	sp, sp, #8
  102688:	e3530003 	cmp	r3, #3
  10268c:	13a00001 	movne	r0, #1
  102690:	0a000001 	beq	10269c <OSSemQuery+0x24>
  102694:	e28dd008 	add	sp, sp, #8
  102698:	e8bd8010 	pop	{r4, pc}
  10269c:	e58d1004 	str	r1, [sp, #4]
  1026a0:	eb000c58 	bl	105808 <guest_OS_ENTER_CRITICAL>
  1026a4:	e59d1004 	ldr	r1, [sp, #4]
  1026a8:	e1a02004 	mov	r2, r4
  1026ac:	e5f2c00a 	ldrb	ip, [r2, #10]!
  1026b0:	e2813002 	add	r3, r1, #2
  1026b4:	e281000a 	add	r0, r1, #10
  1026b8:	e5c1c00a 	strb	ip, [r1, #10]
  1026bc:	e5f2c001 	ldrb	ip, [r2, #1]!
  1026c0:	e4c3c001 	strb	ip, [r3], #1
  1026c4:	e1530000 	cmp	r3, r0
  1026c8:	1afffffb 	bne	1026bc <OSSemQuery+0x44>
  1026cc:	e1d430b8 	ldrh	r3, [r4, #8]
  1026d0:	e1c130b0 	strh	r3, [r1]
  1026d4:	eb000c4e 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1026d8:	e3a00000 	mov	r0, #0
  1026dc:	eaffffec 	b	102694 <OSSemQuery+0x1c>

001026e0 <OSSemSet>:
  1026e0:	e92d4010 	push	{r4, lr}
  1026e4:	e1a04000 	mov	r4, r0
  1026e8:	e5d03000 	ldrb	r3, [r0]
  1026ec:	e24dd008 	sub	sp, sp, #8
  1026f0:	e3530003 	cmp	r3, #3
  1026f4:	0a000003 	beq	102708 <OSSemSet+0x28>
  1026f8:	e3a03001 	mov	r3, #1
  1026fc:	e5c23000 	strb	r3, [r2]
  102700:	e28dd008 	add	sp, sp, #8
  102704:	e8bd8010 	pop	{r4, pc}
  102708:	e58d1004 	str	r1, [sp, #4]
  10270c:	e58d2000 	str	r2, [sp]
  102710:	eb000c3c 	bl	105808 <guest_OS_ENTER_CRITICAL>
  102714:	e59d2000 	ldr	r2, [sp]
  102718:	e3a03000 	mov	r3, #0
  10271c:	e5c23000 	strb	r3, [r2]
  102720:	e1d430b8 	ldrh	r3, [r4, #8]
  102724:	e59d1004 	ldr	r1, [sp, #4]
  102728:	e3530000 	cmp	r3, #0
  10272c:	1a000004 	bne	102744 <OSSemSet+0x64>
  102730:	e5d4300a 	ldrb	r3, [r4, #10]
  102734:	e3530000 	cmp	r3, #0
  102738:	13a03049 	movne	r3, #73	; 0x49
  10273c:	15c23000 	strbne	r3, [r2]
  102740:	1a000000 	bne	102748 <OSSemSet+0x68>
  102744:	e1c410b8 	strh	r1, [r4, #8]
  102748:	e28dd008 	add	sp, sp, #8
  10274c:	e8bd4010 	pop	{r4, lr}
  102750:	ea000c2f 	b	105814 <guest_OS_EXIT_CRITICAL>

00102754 <OSTaskChangePrio>:
  102754:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
  102758:	e1a04001 	mov	r4, r1
  10275c:	e1a05000 	mov	r5, r0
  102760:	eb000c28 	bl	105808 <guest_OS_ENTER_CRITICAL>
  102764:	e30a3480 	movw	r3, #42112	; 0xa480
  102768:	e3403010 	movt	r3, #16
  10276c:	e7932104 	ldr	r2, [r3, r4, lsl #2]
  102770:	e3520000 	cmp	r2, #0
  102774:	0a000002 	beq	102784 <OSTaskChangePrio+0x30>
  102778:	eb000c25 	bl	105814 <guest_OS_EXIT_CRITICAL>
  10277c:	e3a00028 	mov	r0, #40	; 0x28
  102780:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
  102784:	e35500ff 	cmp	r5, #255	; 0xff
  102788:	03092af8 	movweq	r2, #39672	; 0x9af8
  10278c:	03402010 	movteq	r2, #16
  102790:	05922000 	ldreq	r2, [r2]
  102794:	05d2502e 	ldrbeq	r5, [r2, #46]	; 0x2e
  102798:	e793c105 	ldr	ip, [r3, r5, lsl #2]
  10279c:	e30a3480 	movw	r3, #42112	; 0xa480
  1027a0:	e3403010 	movt	r3, #16
  1027a4:	e35c0000 	cmp	ip, #0
  1027a8:	0a000057 	beq	10290c <OSTaskChangePrio+0x1b8>
  1027ac:	e35c0001 	cmp	ip, #1
  1027b0:	0a000058 	beq	102918 <OSTaskChangePrio+0x1c4>
  1027b4:	e3a02000 	mov	r2, #0
  1027b8:	e7832105 	str	r2, [r3, r5, lsl #2]
  1027bc:	e783c104 	str	ip, [r3, r4, lsl #2]
  1027c0:	e3093ae8 	movw	r3, #39656	; 0x9ae8
  1027c4:	e5dc7030 	ldrb	r7, [ip, #48]	; 0x30
  1027c8:	e3403010 	movt	r3, #16
  1027cc:	e5dc8031 	ldrb	r8, [ip, #49]	; 0x31
  1027d0:	e3a06001 	mov	r6, #1
  1027d4:	e1a0e1a4 	lsr	lr, r4, #3
  1027d8:	e2049007 	and	r9, r4, #7
  1027dc:	e7d32007 	ldrb	r2, [r3, r7]
  1027e0:	e1a05e16 	lsl	r5, r6, lr
  1027e4:	e1a06916 	lsl	r6, r6, r9
  1027e8:	e5dca032 	ldrb	sl, [ip, #50]	; 0x32
  1027ec:	e1120008 	tst	r2, r8
  1027f0:	e6ef5075 	uxtb	r5, r5
  1027f4:	e6ef6076 	uxtb	r6, r6
  1027f8:	0a00000b 	beq	10282c <OSTaskChangePrio+0xd8>
  1027fc:	e1c22008 	bic	r2, r2, r8
  102800:	e7c32007 	strb	r2, [r3, r7]
  102804:	e3520000 	cmp	r2, #0
  102808:	e3092ae4 	movw	r2, #39652	; 0x9ae4
  10280c:	e3402010 	movt	r2, #16
  102810:	e7d3100e 	ldrb	r1, [r3, lr]
  102814:	e5d20000 	ldrb	r0, [r2]
  102818:	01c0000a 	biceq	r0, r0, sl
  10281c:	e1800005 	orr	r0, r0, r5
  102820:	e5c20000 	strb	r0, [r2]
  102824:	e1862001 	orr	r2, r6, r1
  102828:	e7c3200e 	strb	r2, [r3, lr]
  10282c:	e59c301c 	ldr	r3, [ip, #28]
  102830:	e3530000 	cmp	r3, #0
  102834:	0a00000c 	beq	10286c <OSTaskChangePrio+0x118>
  102838:	e0831007 	add	r1, r3, r7
  10283c:	e5d1200b 	ldrb	r2, [r1, #11]
  102840:	e1c22008 	bic	r2, r2, r8
  102844:	e5c1200b 	strb	r2, [r1, #11]
  102848:	e5d3100a 	ldrb	r1, [r3, #10]
  10284c:	e3520000 	cmp	r2, #0
  102850:	e083200e 	add	r2, r3, lr
  102854:	01c1100a 	biceq	r1, r1, sl
  102858:	e1811005 	orr	r1, r1, r5
  10285c:	e5c3100a 	strb	r1, [r3, #10]
  102860:	e5d2300b 	ldrb	r3, [r2, #11]
  102864:	e1863003 	orr	r3, r6, r3
  102868:	e5c2300b 	strb	r3, [r2, #11]
  10286c:	e59c1020 	ldr	r1, [ip, #32]
  102870:	e3510000 	cmp	r1, #0
  102874:	0a000015 	beq	1028d0 <OSTaskChangePrio+0x17c>
  102878:	e5913000 	ldr	r3, [r1]
  10287c:	e3530000 	cmp	r3, #0
  102880:	0a000012 	beq	1028d0 <OSTaskChangePrio+0x17c>
  102884:	e1e08008 	mvn	r8, r8
  102888:	e1e0a00a 	mvn	sl, sl
  10288c:	e6ef8078 	uxtb	r8, r8
  102890:	e0830007 	add	r0, r3, r7
  102894:	e5d0200b 	ldrb	r2, [r0, #11]
  102898:	e0082002 	and	r2, r8, r2
  10289c:	e5c0200b 	strb	r2, [r0, #11]
  1028a0:	e5d3000a 	ldrb	r0, [r3, #10]
  1028a4:	e3520000 	cmp	r2, #0
  1028a8:	e083200e 	add	r2, r3, lr
  1028ac:	000a0000 	andeq	r0, sl, r0
  1028b0:	e1800005 	orr	r0, r0, r5
  1028b4:	e5c3000a 	strb	r0, [r3, #10]
  1028b8:	e5d2300b 	ldrb	r3, [r2, #11]
  1028bc:	e1863003 	orr	r3, r6, r3
  1028c0:	e5c2300b 	strb	r3, [r2, #11]
  1028c4:	e5b13004 	ldr	r3, [r1, #4]!
  1028c8:	e3530000 	cmp	r3, #0
  1028cc:	1affffef 	bne	102890 <OSTaskChangePrio+0x13c>
  1028d0:	e5cc402e 	strb	r4, [ip, #46]	; 0x2e
  1028d4:	e5cce030 	strb	lr, [ip, #48]	; 0x30
  1028d8:	e5cc902f 	strb	r9, [ip, #47]	; 0x2f
  1028dc:	e5cc5032 	strb	r5, [ip, #50]	; 0x32
  1028e0:	e5cc6031 	strb	r6, [ip, #49]	; 0x31
  1028e4:	eb000bca 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1028e8:	e3093a46 	movw	r3, #39494	; 0x9a46
  1028ec:	e3403010 	movt	r3, #16
  1028f0:	e5d33000 	ldrb	r3, [r3]
  1028f4:	e3530001 	cmp	r3, #1
  1028f8:	0a000001 	beq	102904 <OSTaskChangePrio+0x1b0>
  1028fc:	e3a00000 	mov	r0, #0
  102900:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
  102904:	ebfff875 	bl	100ae0 <OS_Sched>
  102908:	eafffffb 	b	1028fc <OSTaskChangePrio+0x1a8>
  10290c:	eb000bc0 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102910:	e3a00029 	mov	r0, #41	; 0x29
  102914:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
  102918:	eb000bbd 	bl	105814 <guest_OS_EXIT_CRITICAL>
  10291c:	e3a00043 	mov	r0, #67	; 0x43
  102920:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

00102924 <OSTaskCreate>:
  102924:	e92d45f0 	push	{r4, r5, r6, r7, r8, sl, lr}
  102928:	e24dd01c 	sub	sp, sp, #28
  10292c:	e1a0a000 	mov	sl, r0
  102930:	e1a08001 	mov	r8, r1
  102934:	e1a07002 	mov	r7, r2
  102938:	e1a05003 	mov	r5, r3
  10293c:	eb000bb1 	bl	105808 <guest_OS_ENTER_CRITICAL>
  102940:	e309caf4 	movw	ip, #39668	; 0x9af4
  102944:	e340c010 	movt	ip, #16
  102948:	e5dcc000 	ldrb	ip, [ip]
  10294c:	e35c0000 	cmp	ip, #0
  102950:	1a000008 	bne	102978 <OSTaskCreate+0x54>
  102954:	e30a4480 	movw	r4, #42112	; 0xa480
  102958:	e3404010 	movt	r4, #16
  10295c:	e7946105 	ldr	r6, [r4, r5, lsl #2]
  102960:	e3560000 	cmp	r6, #0
  102964:	0a000006 	beq	102984 <OSTaskCreate+0x60>
  102968:	eb000ba9 	bl	105814 <guest_OS_EXIT_CRITICAL>
  10296c:	e3a00028 	mov	r0, #40	; 0x28
  102970:	e28dd01c 	add	sp, sp, #28
  102974:	e8bd85f0 	pop	{r4, r5, r6, r7, r8, sl, pc}
  102978:	eb000ba5 	bl	105814 <guest_OS_EXIT_CRITICAL>
  10297c:	e3a0003c 	mov	r0, #60	; 0x3c
  102980:	eafffffa 	b	102970 <OSTaskCreate+0x4c>
  102984:	e3a03001 	mov	r3, #1
  102988:	e7843105 	str	r3, [r4, r5, lsl #2]
  10298c:	eb000ba0 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102990:	e1a01008 	mov	r1, r8
  102994:	e1a02007 	mov	r2, r7
  102998:	e1a03006 	mov	r3, r6
  10299c:	e1a0000a 	mov	r0, sl
  1029a0:	eb0003dd 	bl	10391c <OSTaskStkInit>
  1029a4:	e58d6000 	str	r6, [sp]
  1029a8:	e58d6004 	str	r6, [sp, #4]
  1029ac:	e1a02006 	mov	r2, r6
  1029b0:	e58d6008 	str	r6, [sp, #8]
  1029b4:	e1a03006 	mov	r3, r6
  1029b8:	e1a01000 	mov	r1, r0
  1029bc:	e1a00005 	mov	r0, r5
  1029c0:	ebfff96f 	bl	100f84 <OS_TCBInit>
  1029c4:	e3500000 	cmp	r0, #0
  1029c8:	1a000008 	bne	1029f0 <OSTaskCreate+0xcc>
  1029cc:	e3093a46 	movw	r3, #39494	; 0x9a46
  1029d0:	e3403010 	movt	r3, #16
  1029d4:	e5d33000 	ldrb	r3, [r3]
  1029d8:	e3530001 	cmp	r3, #1
  1029dc:	1affffe3 	bne	102970 <OSTaskCreate+0x4c>
  1029e0:	e58d0014 	str	r0, [sp, #20]
  1029e4:	ebfff83d 	bl	100ae0 <OS_Sched>
  1029e8:	e59d0014 	ldr	r0, [sp, #20]
  1029ec:	eaffffdf 	b	102970 <OSTaskCreate+0x4c>
  1029f0:	e58d0014 	str	r0, [sp, #20]
  1029f4:	eb000b83 	bl	105808 <guest_OS_ENTER_CRITICAL>
  1029f8:	e7846105 	str	r6, [r4, r5, lsl #2]
  1029fc:	eb000b84 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102a00:	e59d0014 	ldr	r0, [sp, #20]
  102a04:	eaffffd9 	b	102970 <OSTaskCreate+0x4c>

00102a08 <OSTaskCreateExt>:
  102a08:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
  102a0c:	e24dd018 	sub	sp, sp, #24
  102a10:	e1a07000 	mov	r7, r0
  102a14:	e1a08001 	mov	r8, r1
  102a18:	e1a0a002 	mov	sl, r2
  102a1c:	e1a05003 	mov	r5, r3
  102a20:	e1dd64b8 	ldrh	r6, [sp, #72]	; 0x48
  102a24:	eb000b77 	bl	105808 <guest_OS_ENTER_CRITICAL>
  102a28:	e309caf4 	movw	ip, #39668	; 0x9af4
  102a2c:	e340c010 	movt	ip, #16
  102a30:	e5dcc000 	ldrb	ip, [ip]
  102a34:	e35c0000 	cmp	ip, #0
  102a38:	1a000008 	bne	102a60 <OSTaskCreateExt+0x58>
  102a3c:	e30a4480 	movw	r4, #42112	; 0xa480
  102a40:	e3404010 	movt	r4, #16
  102a44:	e7949105 	ldr	r9, [r4, r5, lsl #2]
  102a48:	e3590000 	cmp	r9, #0
  102a4c:	0a000006 	beq	102a6c <OSTaskCreateExt+0x64>
  102a50:	eb000b6f 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102a54:	e3a00028 	mov	r0, #40	; 0x28
  102a58:	e28dd018 	add	sp, sp, #24
  102a5c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
  102a60:	eb000b6b 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102a64:	e3a0003c 	mov	r0, #60	; 0x3c
  102a68:	eafffffa 	b	102a58 <OSTaskCreateExt+0x50>
  102a6c:	e3a03001 	mov	r3, #1
  102a70:	e7843105 	str	r3, [r4, r5, lsl #2]
  102a74:	eb000b66 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102a78:	e2063003 	and	r3, r6, #3
  102a7c:	e3530003 	cmp	r3, #3
  102a80:	1a000006 	bne	102aa0 <OSTaskCreateExt+0x98>
  102a84:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
  102a88:	e3530000 	cmp	r3, #0
  102a8c:	0a000003 	beq	102aa0 <OSTaskCreateExt+0x98>
  102a90:	e59d203c 	ldr	r2, [sp, #60]	; 0x3c
  102a94:	e2533001 	subs	r3, r3, #1
  102a98:	e4829004 	str	r9, [r2], #4
  102a9c:	1afffffc 	bne	102a94 <OSTaskCreateExt+0x8c>
  102aa0:	e1a01008 	mov	r1, r8
  102aa4:	e1a0200a 	mov	r2, sl
  102aa8:	e1a03006 	mov	r3, r6
  102aac:	e1a00007 	mov	r0, r7
  102ab0:	eb000399 	bl	10391c <OSTaskStkInit>
  102ab4:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
  102ab8:	e59d203c 	ldr	r2, [sp, #60]	; 0x3c
  102abc:	e58d3000 	str	r3, [sp]
  102ac0:	e59d3044 	ldr	r3, [sp, #68]	; 0x44
  102ac4:	e98d0048 	stmib	sp, {r3, r6}
  102ac8:	e1dd33b8 	ldrh	r3, [sp, #56]	; 0x38
  102acc:	e1a01000 	mov	r1, r0
  102ad0:	e1a00005 	mov	r0, r5
  102ad4:	ebfff92a 	bl	100f84 <OS_TCBInit>
  102ad8:	e3500000 	cmp	r0, #0
  102adc:	1a000008 	bne	102b04 <OSTaskCreateExt+0xfc>
  102ae0:	e3093a46 	movw	r3, #39494	; 0x9a46
  102ae4:	e3403010 	movt	r3, #16
  102ae8:	e5d33000 	ldrb	r3, [r3]
  102aec:	e3530001 	cmp	r3, #1
  102af0:	1affffd8 	bne	102a58 <OSTaskCreateExt+0x50>
  102af4:	e58d0014 	str	r0, [sp, #20]
  102af8:	ebfff7f8 	bl	100ae0 <OS_Sched>
  102afc:	e59d0014 	ldr	r0, [sp, #20]
  102b00:	eaffffd4 	b	102a58 <OSTaskCreateExt+0x50>
  102b04:	e58d0014 	str	r0, [sp, #20]
  102b08:	eb000b3e 	bl	105808 <guest_OS_ENTER_CRITICAL>
  102b0c:	e3a03000 	mov	r3, #0
  102b10:	e7843105 	str	r3, [r4, r5, lsl #2]
  102b14:	eb000b3e 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102b18:	e59d0014 	ldr	r0, [sp, #20]
  102b1c:	eaffffcd 	b	102a58 <OSTaskCreateExt+0x50>

00102b20 <OSTaskDel>:
  102b20:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
  102b24:	e3093af4 	movw	r3, #39668	; 0x9af4
  102b28:	e3403010 	movt	r3, #16
  102b2c:	e1a04000 	mov	r4, r0
  102b30:	e5d33000 	ldrb	r3, [r3]
  102b34:	e3530000 	cmp	r3, #0
  102b38:	0a000001 	beq	102b44 <OSTaskDel+0x24>
  102b3c:	e3a00040 	mov	r0, #64	; 0x40
  102b40:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
  102b44:	e350003f 	cmp	r0, #63	; 0x3f
  102b48:	1a000001 	bne	102b54 <OSTaskDel+0x34>
  102b4c:	e3a0003e 	mov	r0, #62	; 0x3e
  102b50:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
  102b54:	eb000b2b 	bl	105808 <guest_OS_ENTER_CRITICAL>
  102b58:	e35400ff 	cmp	r4, #255	; 0xff
  102b5c:	e30a6480 	movw	r6, #42112	; 0xa480
  102b60:	e3406010 	movt	r6, #16
  102b64:	03093af8 	movweq	r3, #39672	; 0x9af8
  102b68:	03403010 	movteq	r3, #16
  102b6c:	05933000 	ldreq	r3, [r3]
  102b70:	05d3402e 	ldrbeq	r4, [r3, #46]	; 0x2e
  102b74:	e7965104 	ldr	r5, [r6, r4, lsl #2]
  102b78:	e3550000 	cmp	r5, #0
  102b7c:	0a000055 	beq	102cd8 <OSTaskDel+0x1b8>
  102b80:	e3550001 	cmp	r5, #1
  102b84:	0a000056 	beq	102ce4 <OSTaskDel+0x1c4>
  102b88:	e5d51030 	ldrb	r1, [r5, #48]	; 0x30
  102b8c:	e3093ae8 	movw	r3, #39656	; 0x9ae8
  102b90:	e3403010 	movt	r3, #16
  102b94:	e5d50031 	ldrb	r0, [r5, #49]	; 0x31
  102b98:	e7d32001 	ldrb	r2, [r3, r1]
  102b9c:	e1c22000 	bic	r2, r2, r0
  102ba0:	e7c32001 	strb	r2, [r3, r1]
  102ba4:	e3520000 	cmp	r2, #0
  102ba8:	0a000040 	beq	102cb0 <OSTaskDel+0x190>
  102bac:	e595101c 	ldr	r1, [r5, #28]
  102bb0:	e3510000 	cmp	r1, #0
  102bb4:	0a000001 	beq	102bc0 <OSTaskDel+0xa0>
  102bb8:	e1a00005 	mov	r0, r5
  102bbc:	ebfff74d 	bl	1008f8 <OS_EventTaskRemove>
  102bc0:	e5951020 	ldr	r1, [r5, #32]
  102bc4:	e3510000 	cmp	r1, #0
  102bc8:	0a000001 	beq	102bd4 <OSTaskDel+0xb4>
  102bcc:	e1a00005 	mov	r0, r5
  102bd0:	ebfff754 	bl	100928 <OS_EventTaskRemoveMulti>
  102bd4:	e3097a44 	movw	r7, #39492	; 0x9a44
  102bd8:	e3407010 	movt	r7, #16
  102bdc:	e3a03000 	mov	r3, #0
  102be0:	e5853028 	str	r3, [r5, #40]	; 0x28
  102be4:	e5d72000 	ldrb	r2, [r7]
  102be8:	e5c5302c 	strb	r3, [r5, #44]	; 0x2c
  102bec:	e35200ff 	cmp	r2, #255	; 0xff
  102bf0:	e5c5302d 	strb	r3, [r5, #45]	; 0x2d
  102bf4:	12822001 	addne	r2, r2, #1
  102bf8:	15c72000 	strbne	r2, [r7]
  102bfc:	eb000b04 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102c00:	ebfff6f3 	bl	1007d4 <OS_Dummy>
  102c04:	eb000aff 	bl	105808 <guest_OS_ENTER_CRITICAL>
  102c08:	e5d72000 	ldrb	r2, [r7]
  102c0c:	e3093a44 	movw	r3, #39492	; 0x9a44
  102c10:	e3403010 	movt	r3, #16
  102c14:	e3520000 	cmp	r2, #0
  102c18:	e1a00005 	mov	r0, r5
  102c1c:	12422001 	subne	r2, r2, #1
  102c20:	15c32000 	strbne	r2, [r3]
  102c24:	eb000338 	bl	10390c <OSTaskDelHook>
  102c28:	e3a02000 	mov	r2, #0
  102c2c:	e3093ad8 	movw	r3, #39640	; 0x9ad8
  102c30:	e7862104 	str	r2, [r6, r4, lsl #2]
  102c34:	e3403010 	movt	r3, #16
  102c38:	e5952018 	ldr	r2, [r5, #24]
  102c3c:	e5d31000 	ldrb	r1, [r3]
  102c40:	e3520000 	cmp	r2, #0
  102c44:	e2411001 	sub	r1, r1, #1
  102c48:	e5c31000 	strb	r1, [r3]
  102c4c:	15953014 	ldrne	r3, [r5, #20]
  102c50:	03093a50 	movweq	r3, #39504	; 0x9a50
  102c54:	05951014 	ldreq	r1, [r5, #20]
  102c58:	03403010 	movteq	r3, #16
  102c5c:	15823014 	strne	r3, [r2, #20]
  102c60:	15953014 	ldrne	r3, [r5, #20]
  102c64:	05831000 	streq	r1, [r3]
  102c68:	05812018 	streq	r2, [r1, #24]
  102c6c:	15832018 	strne	r2, [r3, #24]
  102c70:	e3093ad4 	movw	r3, #39636	; 0x9ad4
  102c74:	e3403010 	movt	r3, #16
  102c78:	e30723bc 	movw	r2, #29628	; 0x73bc
  102c7c:	e3402010 	movt	r2, #16
  102c80:	e5852048 	str	r2, [r5, #72]	; 0x48
  102c84:	e5931000 	ldr	r1, [r3]
  102c88:	e5835000 	str	r5, [r3]
  102c8c:	e5851014 	str	r1, [r5, #20]
  102c90:	eb000adf 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102c94:	e3093a46 	movw	r3, #39494	; 0x9a46
  102c98:	e3403010 	movt	r3, #16
  102c9c:	e5d33000 	ldrb	r3, [r3]
  102ca0:	e3530001 	cmp	r3, #1
  102ca4:	0a000008 	beq	102ccc <OSTaskDel+0x1ac>
  102ca8:	e3a00000 	mov	r0, #0
  102cac:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
  102cb0:	e3093ae4 	movw	r3, #39652	; 0x9ae4
  102cb4:	e3403010 	movt	r3, #16
  102cb8:	e5d51032 	ldrb	r1, [r5, #50]	; 0x32
  102cbc:	e5d32000 	ldrb	r2, [r3]
  102cc0:	e1c22001 	bic	r2, r2, r1
  102cc4:	e5c32000 	strb	r2, [r3]
  102cc8:	eaffffb7 	b	102bac <OSTaskDel+0x8c>
  102ccc:	ebfff783 	bl	100ae0 <OS_Sched>
  102cd0:	e3a00000 	mov	r0, #0
  102cd4:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
  102cd8:	eb000acd 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102cdc:	e3a00043 	mov	r0, #67	; 0x43
  102ce0:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
  102ce4:	eb000aca 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102ce8:	e3a0003d 	mov	r0, #61	; 0x3d
  102cec:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

00102cf0 <OSTaskDelReq>:
  102cf0:	e350003f 	cmp	r0, #63	; 0x3f
  102cf4:	e92d4010 	push	{r4, lr}
  102cf8:	e1a04000 	mov	r4, r0
  102cfc:	e24dd008 	sub	sp, sp, #8
  102d00:	03a0003e 	moveq	r0, #62	; 0x3e
  102d04:	0a00000d 	beq	102d40 <OSTaskDelReq+0x50>
  102d08:	e35400ff 	cmp	r4, #255	; 0xff
  102d0c:	0a00000d 	beq	102d48 <OSTaskDelReq+0x58>
  102d10:	eb000abc 	bl	105808 <guest_OS_ENTER_CRITICAL>
  102d14:	e30a3480 	movw	r3, #42112	; 0xa480
  102d18:	e3403010 	movt	r3, #16
  102d1c:	e7933104 	ldr	r3, [r3, r4, lsl #2]
  102d20:	e3530000 	cmp	r3, #0
  102d24:	0a000013 	beq	102d78 <OSTaskDelReq+0x88>
  102d28:	e3530001 	cmp	r3, #1
  102d2c:	0a00000e 	beq	102d6c <OSTaskDelReq+0x7c>
  102d30:	e3a0203f 	mov	r2, #63	; 0x3f
  102d34:	e5c32033 	strb	r2, [r3, #51]	; 0x33
  102d38:	eb000ab5 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102d3c:	e3a00000 	mov	r0, #0
  102d40:	e28dd008 	add	sp, sp, #8
  102d44:	e8bd8010 	pop	{r4, pc}
  102d48:	eb000aae 	bl	105808 <guest_OS_ENTER_CRITICAL>
  102d4c:	e3093af8 	movw	r3, #39672	; 0x9af8
  102d50:	e3403010 	movt	r3, #16
  102d54:	e5933000 	ldr	r3, [r3]
  102d58:	e5d30033 	ldrb	r0, [r3, #51]	; 0x33
  102d5c:	e58d0004 	str	r0, [sp, #4]
  102d60:	eb000aab 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102d64:	e59d0004 	ldr	r0, [sp, #4]
  102d68:	eafffff4 	b	102d40 <OSTaskDelReq+0x50>
  102d6c:	eb000aa8 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102d70:	e3a0003d 	mov	r0, #61	; 0x3d
  102d74:	eafffff1 	b	102d40 <OSTaskDelReq+0x50>
  102d78:	eb000aa5 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102d7c:	e3a00043 	mov	r0, #67	; 0x43
  102d80:	eaffffee 	b	102d40 <OSTaskDelReq+0x50>

00102d84 <OSTaskNameGet>:
  102d84:	e3093af4 	movw	r3, #39668	; 0x9af4
  102d88:	e3403010 	movt	r3, #16
  102d8c:	e92d4070 	push	{r4, r5, r6, lr}
  102d90:	e1a05000 	mov	r5, r0
  102d94:	e5d33000 	ldrb	r3, [r3]
  102d98:	e1a06001 	mov	r6, r1
  102d9c:	e1a04002 	mov	r4, r2
  102da0:	e3530000 	cmp	r3, #0
  102da4:	0a000004 	beq	102dbc <OSTaskNameGet+0x38>
  102da8:	e3a05000 	mov	r5, #0
  102dac:	e3a03011 	mov	r3, #17
  102db0:	e5c23000 	strb	r3, [r2]
  102db4:	e1a00005 	mov	r0, r5
  102db8:	e8bd8070 	pop	{r4, r5, r6, pc}
  102dbc:	eb000a91 	bl	105808 <guest_OS_ENTER_CRITICAL>
  102dc0:	e35500ff 	cmp	r5, #255	; 0xff
  102dc4:	03093af8 	movweq	r3, #39672	; 0x9af8
  102dc8:	03403010 	movteq	r3, #16
  102dcc:	05933000 	ldreq	r3, [r3]
  102dd0:	05d3502e 	ldrbeq	r5, [r3, #46]	; 0x2e
  102dd4:	e30a3480 	movw	r3, #42112	; 0xa480
  102dd8:	e3403010 	movt	r3, #16
  102ddc:	e7935105 	ldr	r5, [r3, r5, lsl #2]
  102de0:	e3550000 	cmp	r5, #0
  102de4:	0a00000f 	beq	102e28 <OSTaskNameGet+0xa4>
  102de8:	e3550001 	cmp	r5, #1
  102dec:	0a000008 	beq	102e14 <OSTaskNameGet+0x90>
  102df0:	e5950048 	ldr	r0, [r5, #72]	; 0x48
  102df4:	e5860000 	str	r0, [r6]
  102df8:	ebfff83a 	bl	100ee8 <OS_StrLen>
  102dfc:	e1a05000 	mov	r5, r0
  102e00:	eb000a83 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102e04:	e3a03000 	mov	r3, #0
  102e08:	e1a00005 	mov	r0, r5
  102e0c:	e5c43000 	strb	r3, [r4]
  102e10:	e8bd8070 	pop	{r4, r5, r6, pc}
  102e14:	eb000a7e 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102e18:	e3a05000 	mov	r5, #0
  102e1c:	e3a03043 	mov	r3, #67	; 0x43
  102e20:	e5c43000 	strb	r3, [r4]
  102e24:	eaffffe2 	b	102db4 <OSTaskNameGet+0x30>
  102e28:	eb000a79 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102e2c:	e3a03043 	mov	r3, #67	; 0x43
  102e30:	e5c43000 	strb	r3, [r4]
  102e34:	eaffffde 	b	102db4 <OSTaskNameGet+0x30>

00102e38 <OSTaskNameSet>:
  102e38:	e3093af4 	movw	r3, #39668	; 0x9af4
  102e3c:	e3403010 	movt	r3, #16
  102e40:	e92d4070 	push	{r4, r5, r6, lr}
  102e44:	e1a05000 	mov	r5, r0
  102e48:	e5d33000 	ldrb	r3, [r3]
  102e4c:	e1a06001 	mov	r6, r1
  102e50:	e1a04002 	mov	r4, r2
  102e54:	e3530000 	cmp	r3, #0
  102e58:	13a03012 	movne	r3, #18
  102e5c:	15c23000 	strbne	r3, [r2]
  102e60:	18bd8070 	popne	{r4, r5, r6, pc}
  102e64:	eb000a67 	bl	105808 <guest_OS_ENTER_CRITICAL>
  102e68:	e35500ff 	cmp	r5, #255	; 0xff
  102e6c:	03093af8 	movweq	r3, #39672	; 0x9af8
  102e70:	03403010 	movteq	r3, #16
  102e74:	05933000 	ldreq	r3, [r3]
  102e78:	05d3502e 	ldrbeq	r5, [r3, #46]	; 0x2e
  102e7c:	e30a3480 	movw	r3, #42112	; 0xa480
  102e80:	e3403010 	movt	r3, #16
  102e84:	e7933105 	ldr	r3, [r3, r5, lsl #2]
  102e88:	e3530000 	cmp	r3, #0
  102e8c:	0a000006 	beq	102eac <OSTaskNameSet+0x74>
  102e90:	e3530001 	cmp	r3, #1
  102e94:	0a000004 	beq	102eac <OSTaskNameSet+0x74>
  102e98:	e5836048 	str	r6, [r3, #72]	; 0x48
  102e9c:	eb000a5c 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102ea0:	e3a03000 	mov	r3, #0
  102ea4:	e5c43000 	strb	r3, [r4]
  102ea8:	e8bd8070 	pop	{r4, r5, r6, pc}
  102eac:	eb000a58 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102eb0:	e3a03043 	mov	r3, #67	; 0x43
  102eb4:	e5c43000 	strb	r3, [r4]
  102eb8:	e8bd8070 	pop	{r4, r5, r6, pc}

00102ebc <OSTaskResume>:
  102ebc:	e92d4038 	push	{r3, r4, r5, lr}
  102ec0:	e1a04000 	mov	r4, r0
  102ec4:	eb000a4f 	bl	105808 <guest_OS_ENTER_CRITICAL>
  102ec8:	e30a3480 	movw	r3, #42112	; 0xa480
  102ecc:	e3403010 	movt	r3, #16
  102ed0:	e7933104 	ldr	r3, [r3, r4, lsl #2]
  102ed4:	e3530000 	cmp	r3, #0
  102ed8:	0a000028 	beq	102f80 <OSTaskResume+0xc4>
  102edc:	e3530001 	cmp	r3, #1
  102ee0:	0a000029 	beq	102f8c <OSTaskResume+0xd0>
  102ee4:	e5d3202c 	ldrb	r2, [r3, #44]	; 0x2c
  102ee8:	e2021008 	and	r1, r2, #8
  102eec:	e6ef1071 	uxtb	r1, r1
  102ef0:	e3510000 	cmp	r1, #0
  102ef4:	0a00001b 	beq	102f68 <OSTaskResume+0xac>
  102ef8:	e20220f7 	and	r2, r2, #247	; 0xf7
  102efc:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
  102f00:	e3520000 	cmp	r2, #0
  102f04:	1a00001a 	bne	102f74 <OSTaskResume+0xb8>
  102f08:	e5934028 	ldr	r4, [r3, #40]	; 0x28
  102f0c:	e3540000 	cmp	r4, #0
  102f10:	1a000017 	bne	102f74 <OSTaskResume+0xb8>
  102f14:	e5d30030 	ldrb	r0, [r3, #48]	; 0x30
  102f18:	e3091ae4 	movw	r1, #39652	; 0x9ae4
  102f1c:	e3092ae8 	movw	r2, #39656	; 0x9ae8
  102f20:	e3401010 	movt	r1, #16
  102f24:	e3402010 	movt	r2, #16
  102f28:	e5d3e032 	ldrb	lr, [r3, #50]	; 0x32
  102f2c:	e5d15000 	ldrb	r5, [r1]
  102f30:	e7d2c000 	ldrb	ip, [r2, r0]
  102f34:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
  102f38:	e185e00e 	orr	lr, r5, lr
  102f3c:	e5c1e000 	strb	lr, [r1]
  102f40:	e18c3003 	orr	r3, ip, r3
  102f44:	e7c23000 	strb	r3, [r2, r0]
  102f48:	eb000a31 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102f4c:	e3093a46 	movw	r3, #39494	; 0x9a46
  102f50:	e3403010 	movt	r3, #16
  102f54:	e5d33000 	ldrb	r3, [r3]
  102f58:	e3530001 	cmp	r3, #1
  102f5c:	0a00000d 	beq	102f98 <OSTaskResume+0xdc>
  102f60:	e3a00000 	mov	r0, #0
  102f64:	e8bd8038 	pop	{r3, r4, r5, pc}
  102f68:	eb000a29 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102f6c:	e3a00044 	mov	r0, #68	; 0x44
  102f70:	e8bd8038 	pop	{r3, r4, r5, pc}
  102f74:	eb000a26 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102f78:	e3a00000 	mov	r0, #0
  102f7c:	e8bd8038 	pop	{r3, r4, r5, pc}
  102f80:	eb000a23 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102f84:	e3a00046 	mov	r0, #70	; 0x46
  102f88:	e8bd8038 	pop	{r3, r4, r5, pc}
  102f8c:	eb000a20 	bl	105814 <guest_OS_EXIT_CRITICAL>
  102f90:	e3a00043 	mov	r0, #67	; 0x43
  102f94:	e8bd8038 	pop	{r3, r4, r5, pc}
  102f98:	ebfff6d0 	bl	100ae0 <OS_Sched>
  102f9c:	e1a00004 	mov	r0, r4
  102fa0:	e8bd8038 	pop	{r3, r4, r5, pc}

00102fa4 <OSTaskStkChk>:
  102fa4:	e3a03000 	mov	r3, #0
  102fa8:	e5813000 	str	r3, [r1]
  102fac:	e5813004 	str	r3, [r1, #4]
  102fb0:	e92d4070 	push	{r4, r5, r6, lr}
  102fb4:	e1a05000 	mov	r5, r0
  102fb8:	e1a04001 	mov	r4, r1
  102fbc:	eb000a11 	bl	105808 <guest_OS_ENTER_CRITICAL>
  102fc0:	e35500ff 	cmp	r5, #255	; 0xff
  102fc4:	03093af8 	movweq	r3, #39672	; 0x9af8
  102fc8:	03403010 	movteq	r3, #16
  102fcc:	05933000 	ldreq	r3, [r3]
  102fd0:	05d3502e 	ldrbeq	r5, [r3, #46]	; 0x2e
  102fd4:	e30a3480 	movw	r3, #42112	; 0xa480
  102fd8:	e3403010 	movt	r3, #16
  102fdc:	e7933105 	ldr	r3, [r3, r5, lsl #2]
  102fe0:	e3530000 	cmp	r3, #0
  102fe4:	0a000017 	beq	103048 <OSTaskStkChk+0xa4>
  102fe8:	e3530001 	cmp	r3, #1
  102fec:	0a000015 	beq	103048 <OSTaskStkChk+0xa4>
  102ff0:	e1d321b0 	ldrh	r2, [r3, #16]
  102ff4:	e3120001 	tst	r2, #1
  102ff8:	1a000002 	bne	103008 <OSTaskStkChk+0x64>
  102ffc:	eb000a04 	bl	105814 <guest_OS_EXIT_CRITICAL>
  103000:	e3a00045 	mov	r0, #69	; 0x45
  103004:	e8bd8070 	pop	{r4, r5, r6, pc}
  103008:	e5935008 	ldr	r5, [r3, #8]
  10300c:	e593600c 	ldr	r6, [r3, #12]
  103010:	eb0009ff 	bl	105814 <guest_OS_EXIT_CRITICAL>
  103014:	e5953000 	ldr	r3, [r5]
  103018:	e3530000 	cmp	r3, #0
  10301c:	1a00000c 	bne	103054 <OSTaskStkChk+0xb0>
  103020:	e1a02005 	mov	r2, r5
  103024:	e5b20004 	ldr	r0, [r2, #4]!
  103028:	e2833001 	add	r3, r3, #1
  10302c:	e3500000 	cmp	r0, #0
  103030:	0afffffb 	beq	103024 <OSTaskStkChk+0x80>
  103034:	e0632006 	rsb	r2, r3, r6
  103038:	e3a00000 	mov	r0, #0
  10303c:	e5843000 	str	r3, [r4]
  103040:	e5842004 	str	r2, [r4, #4]
  103044:	e8bd8070 	pop	{r4, r5, r6, pc}
  103048:	eb0009f1 	bl	105814 <guest_OS_EXIT_CRITICAL>
  10304c:	e3a00043 	mov	r0, #67	; 0x43
  103050:	e8bd8070 	pop	{r4, r5, r6, pc}
  103054:	e3a03000 	mov	r3, #0
  103058:	eafffff5 	b	103034 <OSTaskStkChk+0x90>

0010305c <OSTaskSuspend>:
  10305c:	e92d4038 	push	{r3, r4, r5, lr}
  103060:	e1a04000 	mov	r4, r0
  103064:	eb0009e7 	bl	105808 <guest_OS_ENTER_CRITICAL>
  103068:	e35400ff 	cmp	r4, #255	; 0xff
  10306c:	e3093af8 	movw	r3, #39672	; 0x9af8
  103070:	e3403010 	movt	r3, #16
  103074:	0a000023 	beq	103108 <OSTaskSuspend+0xac>
  103078:	e5933000 	ldr	r3, [r3]
  10307c:	e5d3502e 	ldrb	r5, [r3, #46]	; 0x2e
  103080:	e0553004 	subs	r3, r5, r4
  103084:	e2735000 	rsbs	r5, r3, #0
  103088:	e0b55003 	adcs	r5, r5, r3
  10308c:	e30a3480 	movw	r3, #42112	; 0xa480
  103090:	e3403010 	movt	r3, #16
  103094:	e7933104 	ldr	r3, [r3, r4, lsl #2]
  103098:	e3530000 	cmp	r3, #0
  10309c:	0a000020 	beq	103124 <OSTaskSuspend+0xc8>
  1030a0:	e3530001 	cmp	r3, #1
  1030a4:	0a000021 	beq	103130 <OSTaskSuspend+0xd4>
  1030a8:	e5d30030 	ldrb	r0, [r3, #48]	; 0x30
  1030ac:	e3092ae8 	movw	r2, #39656	; 0x9ae8
  1030b0:	e3402010 	movt	r2, #16
  1030b4:	e5d3c031 	ldrb	ip, [r3, #49]	; 0x31
  1030b8:	e7d21000 	ldrb	r1, [r2, r0]
  1030bc:	e1c1100c 	bic	r1, r1, ip
  1030c0:	e7c21000 	strb	r1, [r2, r0]
  1030c4:	e3510000 	cmp	r1, #0
  1030c8:	0a000007 	beq	1030ec <OSTaskSuspend+0x90>
  1030cc:	e5d3202c 	ldrb	r2, [r3, #44]	; 0x2c
  1030d0:	e3822008 	orr	r2, r2, #8
  1030d4:	e5c3202c 	strb	r2, [r3, #44]	; 0x2c
  1030d8:	eb0009cd 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1030dc:	e3550001 	cmp	r5, #1
  1030e0:	0a00000c 	beq	103118 <OSTaskSuspend+0xbc>
  1030e4:	e3a00000 	mov	r0, #0
  1030e8:	e8bd8038 	pop	{r3, r4, r5, pc}
  1030ec:	e3092ae4 	movw	r2, #39652	; 0x9ae4
  1030f0:	e3402010 	movt	r2, #16
  1030f4:	e5d30032 	ldrb	r0, [r3, #50]	; 0x32
  1030f8:	e5d21000 	ldrb	r1, [r2]
  1030fc:	e1c11000 	bic	r1, r1, r0
  103100:	e5c21000 	strb	r1, [r2]
  103104:	eafffff0 	b	1030cc <OSTaskSuspend+0x70>
  103108:	e5933000 	ldr	r3, [r3]
  10310c:	e3a05001 	mov	r5, #1
  103110:	e5d3402e 	ldrb	r4, [r3, #46]	; 0x2e
  103114:	eaffffdc 	b	10308c <OSTaskSuspend+0x30>
  103118:	ebfff670 	bl	100ae0 <OS_Sched>
  10311c:	e3a00000 	mov	r0, #0
  103120:	e8bd8038 	pop	{r3, r4, r5, pc}
  103124:	eb0009ba 	bl	105814 <guest_OS_EXIT_CRITICAL>
  103128:	e3a00048 	mov	r0, #72	; 0x48
  10312c:	e8bd8038 	pop	{r3, r4, r5, pc}
  103130:	eb0009b7 	bl	105814 <guest_OS_EXIT_CRITICAL>
  103134:	e3a00043 	mov	r0, #67	; 0x43
  103138:	e8bd8038 	pop	{r3, r4, r5, pc}

0010313c <OSTaskQuery>:
  10313c:	e92d4038 	push	{r3, r4, r5, lr}
  103140:	e1a04000 	mov	r4, r0
  103144:	e1a05001 	mov	r5, r1
  103148:	eb0009ae 	bl	105808 <guest_OS_ENTER_CRITICAL>
  10314c:	e35400ff 	cmp	r4, #255	; 0xff
  103150:	03093af8 	movweq	r3, #39672	; 0x9af8
  103154:	03403010 	movteq	r3, #16
  103158:	05933000 	ldreq	r3, [r3]
  10315c:	05d3402e 	ldrbeq	r4, [r3, #46]	; 0x2e
  103160:	e30a3480 	movw	r3, #42112	; 0xa480
  103164:	e3403010 	movt	r3, #16
  103168:	e7931104 	ldr	r1, [r3, r4, lsl #2]
  10316c:	e3510000 	cmp	r1, #0
  103170:	0a00000a 	beq	1031a0 <OSTaskQuery+0x64>
  103174:	e3510001 	cmp	r1, #1
  103178:	0a000005 	beq	103194 <OSTaskQuery+0x58>
  10317c:	e1a00005 	mov	r0, r5
  103180:	e3a02050 	mov	r2, #80	; 0x50
  103184:	ebfff64b 	bl	100ab8 <OS_MemCopy>
  103188:	eb0009a1 	bl	105814 <guest_OS_EXIT_CRITICAL>
  10318c:	e3a00000 	mov	r0, #0
  103190:	e8bd8038 	pop	{r3, r4, r5, pc}
  103194:	eb00099e 	bl	105814 <guest_OS_EXIT_CRITICAL>
  103198:	e3a00043 	mov	r0, #67	; 0x43
  10319c:	e8bd8038 	pop	{r3, r4, r5, pc}
  1031a0:	eb00099b 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1031a4:	e3a00029 	mov	r0, #41	; 0x29
  1031a8:	e8bd8038 	pop	{r3, r4, r5, pc}

001031ac <OSTaskRegGet>:
  1031ac:	e92d4070 	push	{r4, r5, r6, lr}
  1031b0:	e1a04000 	mov	r4, r0
  1031b4:	e1a06001 	mov	r6, r1
  1031b8:	e1a05002 	mov	r5, r2
  1031bc:	eb000991 	bl	105808 <guest_OS_ENTER_CRITICAL>
  1031c0:	e35400ff 	cmp	r4, #255	; 0xff
  1031c4:	03093af8 	movweq	r3, #39672	; 0x9af8
  1031c8:	130a3480 	movwne	r3, #42112	; 0xa480
  1031cc:	03403010 	movteq	r3, #16
  1031d0:	13403010 	movtne	r3, #16
  1031d4:	05933000 	ldreq	r3, [r3]
  1031d8:	17933104 	ldrne	r3, [r3, r4, lsl #2]
  1031dc:	e0836106 	add	r6, r3, r6, lsl #2
  1031e0:	e596404c 	ldr	r4, [r6, #76]	; 0x4c
  1031e4:	eb00098a 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1031e8:	e3a03000 	mov	r3, #0
  1031ec:	e5c53000 	strb	r3, [r5]
  1031f0:	e1a00004 	mov	r0, r4
  1031f4:	e8bd8070 	pop	{r4, r5, r6, pc}

001031f8 <OSTaskRegGetID>:
  1031f8:	e92d4038 	push	{r3, r4, r5, lr}
  1031fc:	e1a05000 	mov	r5, r0
  103200:	eb000980 	bl	105808 <guest_OS_ENTER_CRITICAL>
  103204:	e3093a45 	movw	r3, #39493	; 0x9a45
  103208:	e3403010 	movt	r3, #16
  10320c:	e5d34000 	ldrb	r4, [r3]
  103210:	e3540000 	cmp	r4, #0
  103214:	1a000005 	bne	103230 <OSTaskRegGetID+0x38>
  103218:	e3a02001 	mov	r2, #1
  10321c:	e5c32000 	strb	r2, [r3]
  103220:	eb00097b 	bl	105814 <guest_OS_EXIT_CRITICAL>
  103224:	e5c54000 	strb	r4, [r5]
  103228:	e1a00004 	mov	r0, r4
  10322c:	e8bd8038 	pop	{r3, r4, r5, pc}
  103230:	e3e03069 	mvn	r3, #105	; 0x69
  103234:	e3a04001 	mov	r4, #1
  103238:	e5c53000 	strb	r3, [r5]
  10323c:	eb000974 	bl	105814 <guest_OS_EXIT_CRITICAL>
  103240:	e1a00004 	mov	r0, r4
  103244:	e8bd8038 	pop	{r3, r4, r5, pc}

00103248 <OSTaskRegSet>:
  103248:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
  10324c:	e1a05003 	mov	r5, r3
  103250:	e1a04000 	mov	r4, r0
  103254:	e1a06001 	mov	r6, r1
  103258:	e1a07002 	mov	r7, r2
  10325c:	eb000969 	bl	105808 <guest_OS_ENTER_CRITICAL>
  103260:	e35400ff 	cmp	r4, #255	; 0xff
  103264:	03093af8 	movweq	r3, #39672	; 0x9af8
  103268:	130ac480 	movwne	ip, #42112	; 0xa480
  10326c:	03403010 	movteq	r3, #16
  103270:	1340c010 	movtne	ip, #16
  103274:	05933000 	ldreq	r3, [r3]
  103278:	179c3104 	ldrne	r3, [ip, r4, lsl #2]
  10327c:	e0836106 	add	r6, r3, r6, lsl #2
  103280:	e586704c 	str	r7, [r6, #76]	; 0x4c
  103284:	eb000962 	bl	105814 <guest_OS_EXIT_CRITICAL>
  103288:	e3a03000 	mov	r3, #0
  10328c:	e5c53000 	strb	r3, [r5]
  103290:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

00103294 <OS_TaskReturn>:
  103294:	e92d4008 	push	{r3, lr}
  103298:	e3093af8 	movw	r3, #39672	; 0x9af8
  10329c:	e3403010 	movt	r3, #16
  1032a0:	e5930000 	ldr	r0, [r3]
  1032a4:	eb00019a 	bl	103914 <OSTaskReturnHook>
  1032a8:	e3a000ff 	mov	r0, #255	; 0xff
  1032ac:	e8bd4008 	pop	{r3, lr}
  1032b0:	eafffe1a 	b	102b20 <OSTaskDel>

001032b4 <OS_TaskStkClr>:
  1032b4:	e2022003 	and	r2, r2, #3
  1032b8:	e3520003 	cmp	r2, #3
  1032bc:	112fff1e 	bxne	lr
  1032c0:	e3510000 	cmp	r1, #0
  1032c4:	012fff1e 	bxeq	lr
  1032c8:	e3a03000 	mov	r3, #0
  1032cc:	e2511001 	subs	r1, r1, #1
  1032d0:	e4803004 	str	r3, [r0], #4
  1032d4:	1afffffc 	bne	1032cc <OS_TaskStkClr+0x18>
  1032d8:	e12fff1e 	bx	lr

001032dc <OSTimeDly>:
  1032dc:	e3093af4 	movw	r3, #39668	; 0x9af4
  1032e0:	e3403010 	movt	r3, #16
  1032e4:	e92d4010 	push	{r4, lr}
  1032e8:	e1a04000 	mov	r4, r0
  1032ec:	e5d33000 	ldrb	r3, [r3]
  1032f0:	e3530000 	cmp	r3, #0
  1032f4:	18bd8010 	popne	{r4, pc}
  1032f8:	e3093a44 	movw	r3, #39492	; 0x9a44
  1032fc:	e3403010 	movt	r3, #16
  103300:	e5d33000 	ldrb	r3, [r3]
  103304:	e3530000 	cmp	r3, #0
  103308:	18bd8010 	popne	{r4, pc}
  10330c:	e3500000 	cmp	r0, #0
  103310:	08bd8010 	popeq	{r4, pc}
  103314:	eb00093b 	bl	105808 <guest_OS_ENTER_CRITICAL>
  103318:	e3092af8 	movw	r2, #39672	; 0x9af8
  10331c:	e3402010 	movt	r2, #16
  103320:	e3093ae8 	movw	r3, #39656	; 0x9ae8
  103324:	e3403010 	movt	r3, #16
  103328:	e5922000 	ldr	r2, [r2]
  10332c:	e5d20030 	ldrb	r0, [r2, #48]	; 0x30
  103330:	e5d2c031 	ldrb	ip, [r2, #49]	; 0x31
  103334:	e7d31000 	ldrb	r1, [r3, r0]
  103338:	e1c1100c 	bic	r1, r1, ip
  10333c:	e7c31000 	strb	r1, [r3, r0]
  103340:	e3510000 	cmp	r1, #0
  103344:	1a000005 	bne	103360 <OSTimeDly+0x84>
  103348:	e3093ae4 	movw	r3, #39652	; 0x9ae4
  10334c:	e3403010 	movt	r3, #16
  103350:	e5d20032 	ldrb	r0, [r2, #50]	; 0x32
  103354:	e5d31000 	ldrb	r1, [r3]
  103358:	e1c11000 	bic	r1, r1, r0
  10335c:	e5c31000 	strb	r1, [r3]
  103360:	e5824028 	str	r4, [r2, #40]	; 0x28
  103364:	eb00092a 	bl	105814 <guest_OS_EXIT_CRITICAL>
  103368:	e8bd4010 	pop	{r4, lr}
  10336c:	eafff5db 	b	100ae0 <OS_Sched>

00103370 <OSTimeDlyHMSM>:
  103370:	e309caf4 	movw	ip, #39668	; 0x9af4
  103374:	e340c010 	movt	ip, #16
  103378:	e92d4010 	push	{r4, lr}
  10337c:	e5dcc000 	ldrb	ip, [ip]
  103380:	e35c0000 	cmp	ip, #0
  103384:	0a000001 	beq	103390 <OSTimeDlyHMSM+0x20>
  103388:	e3a00055 	mov	r0, #85	; 0x55
  10338c:	e8bd8010 	pop	{r4, pc}
  103390:	e309ca44 	movw	ip, #39492	; 0x9a44
  103394:	e340c010 	movt	ip, #16
  103398:	e5dc4000 	ldrb	r4, [ip]
  10339c:	e3540000 	cmp	r4, #0
  1033a0:	0a000001 	beq	1033ac <OSTimeDlyHMSM+0x3c>
  1033a4:	e3a00032 	mov	r0, #50	; 0x32
  1033a8:	e8bd8010 	pop	{r4, pc}
  1033ac:	e3a0cffa 	mov	ip, #1000	; 0x3e8
  1033b0:	e0611201 	rsb	r1, r1, r1, lsl #4
  1033b4:	e003039c 	mul	r3, ip, r3
  1033b8:	e0822101 	add	r2, r2, r1, lsl #2
  1033bc:	e3a01ee1 	mov	r1, #3600	; 0xe10
  1033c0:	e304edd3 	movw	lr, #19923	; 0x4dd3
  1033c4:	e0202091 	mla	r0, r1, r0, r2
  1033c8:	e341e062 	movt	lr, #4194	; 0x1062
  1033cc:	e08e239e 	umull	r2, lr, lr, r3
  1033d0:	e000009c 	mul	r0, ip, r0
  1033d4:	e080032e 	add	r0, r0, lr, lsr #6
  1033d8:	ebffffbf 	bl	1032dc <OSTimeDly>
  1033dc:	e1a00004 	mov	r0, r4
  1033e0:	e8bd8010 	pop	{r4, pc}

001033e4 <OSTimeDlyResume>:
  1033e4:	e350003e 	cmp	r0, #62	; 0x3e
  1033e8:	e92d4038 	push	{r3, r4, r5, lr}
  1033ec:	e1a04000 	mov	r4, r0
  1033f0:	9a000001 	bls	1033fc <OSTimeDlyResume+0x18>
  1033f4:	e3a0002a 	mov	r0, #42	; 0x2a
  1033f8:	e8bd8038 	pop	{r3, r4, r5, pc}
  1033fc:	eb000901 	bl	105808 <guest_OS_ENTER_CRITICAL>
  103400:	e30a3480 	movw	r3, #42112	; 0xa480
  103404:	e3403010 	movt	r3, #16
  103408:	e7933104 	ldr	r3, [r3, r4, lsl #2]
  10340c:	e3530000 	cmp	r3, #0
  103410:	0a000027 	beq	1034b4 <OSTimeDlyResume+0xd0>
  103414:	e3530001 	cmp	r3, #1
  103418:	0a000025 	beq	1034b4 <OSTimeDlyResume+0xd0>
  10341c:	e5932028 	ldr	r2, [r3, #40]	; 0x28
  103420:	e3520000 	cmp	r2, #0
  103424:	0a00000e 	beq	103464 <OSTimeDlyResume+0x80>
  103428:	e5d3002c 	ldrb	r0, [r3, #44]	; 0x2c
  10342c:	e3a02000 	mov	r2, #0
  103430:	e5832028 	str	r2, [r3, #40]	; 0x28
  103434:	e2102037 	ands	r2, r0, #55	; 0x37
  103438:	120000c8 	andne	r0, r0, #200	; 0xc8
  10343c:	15c3002c 	strbne	r0, [r3, #44]	; 0x2c
  103440:	e2000008 	and	r0, r0, #8
  103444:	13a02001 	movne	r2, #1
  103448:	e5c3202d 	strb	r2, [r3, #45]	; 0x2d
  10344c:	e6ef4070 	uxtb	r4, r0
  103450:	e3540000 	cmp	r4, #0
  103454:	0a000005 	beq	103470 <OSTimeDlyResume+0x8c>
  103458:	eb0008ed 	bl	105814 <guest_OS_EXIT_CRITICAL>
  10345c:	e3a00000 	mov	r0, #0
  103460:	e8bd8038 	pop	{r3, r4, r5, pc}
  103464:	eb0008ea 	bl	105814 <guest_OS_EXIT_CRITICAL>
  103468:	e3a00050 	mov	r0, #80	; 0x50
  10346c:	e8bd8038 	pop	{r3, r4, r5, pc}
  103470:	e5d30030 	ldrb	r0, [r3, #48]	; 0x30
  103474:	e3091ae4 	movw	r1, #39652	; 0x9ae4
  103478:	e3092ae8 	movw	r2, #39656	; 0x9ae8
  10347c:	e3401010 	movt	r1, #16
  103480:	e3402010 	movt	r2, #16
  103484:	e5d3e032 	ldrb	lr, [r3, #50]	; 0x32
  103488:	e5d15000 	ldrb	r5, [r1]
  10348c:	e7d2c000 	ldrb	ip, [r2, r0]
  103490:	e5d33031 	ldrb	r3, [r3, #49]	; 0x31
  103494:	e185e00e 	orr	lr, r5, lr
  103498:	e5c1e000 	strb	lr, [r1]
  10349c:	e18c3003 	orr	r3, ip, r3
  1034a0:	e7c23000 	strb	r3, [r2, r0]
  1034a4:	eb0008da 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1034a8:	ebfff58c 	bl	100ae0 <OS_Sched>
  1034ac:	e1a00004 	mov	r0, r4
  1034b0:	e8bd8038 	pop	{r3, r4, r5, pc}
  1034b4:	eb0008d6 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1034b8:	e3a00043 	mov	r0, #67	; 0x43
  1034bc:	e8bd8038 	pop	{r3, r4, r5, pc}

001034c0 <OSTimeGet>:
  1034c0:	e92d4010 	push	{r4, lr}
  1034c4:	eb0008cf 	bl	105808 <guest_OS_ENTER_CRITICAL>
  1034c8:	e3093afc 	movw	r3, #39676	; 0x9afc
  1034cc:	e3403010 	movt	r3, #16
  1034d0:	e5934000 	ldr	r4, [r3]
  1034d4:	eb0008ce 	bl	105814 <guest_OS_EXIT_CRITICAL>
  1034d8:	e1a00004 	mov	r0, r4
  1034dc:	e8bd8010 	pop	{r4, pc}

001034e0 <OSTimeSet>:
  1034e0:	e92d4010 	push	{r4, lr}
  1034e4:	e1a04000 	mov	r4, r0
  1034e8:	eb0008c6 	bl	105808 <guest_OS_ENTER_CRITICAL>
  1034ec:	e3093afc 	movw	r3, #39676	; 0x9afc
  1034f0:	e3403010 	movt	r3, #16
  1034f4:	e5834000 	str	r4, [r3]
  1034f8:	e8bd4010 	pop	{r4, lr}
  1034fc:	ea0008c4 	b	105814 <guest_OS_EXIT_CRITICAL>

00103500 <OS_CPU_SR_Save>:
  103500:	e10f0000 	mrs	r0, CPSR
  103504:	e38010c0 	orr	r1, r0, #192	; 0xc0
  103508:	e121f001 	msr	CPSR_c, r1
  10350c:	e12fff1e 	bx	lr

00103510 <OS_CPU_SR_Restore>:
  103510:	e121f000 	msr	CPSR_c, r0
  103514:	e12fff1e 	bx	lr

00103518 <OSStartHighRdy>:
  103518:	e59f0388 	ldr	r0, [pc, #904]	; 1038a8 <OS_CPU_ARM_CtxID_Get+0x8>
  10351c:	e1a0e00f 	mov	lr, pc
  103520:	e12fff10 	bx	r0
  103524:	e59f0380 	ldr	r0, [pc, #896]	; 1038ac <OS_CPU_ARM_CtxID_Get+0xc>
  103528:	e3a01001 	mov	r1, #1
  10352c:	e5c01000 	strb	r1, [r0]
  103530:	e59f0378 	ldr	r0, [pc, #888]	; 1038b0 <OS_CPU_ARM_CtxID_Get+0x10>
  103534:	e5900000 	ldr	r0, [r0]
  103538:	e590d000 	ldr	sp, [r0]
  10353c:	e8bd0001 	ldmfd	sp!, {r0}
  103540:	e12cf000 	msr	CPSR_fs, r0
  103544:	e8fddfff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}^

00103548 <OSCtxSw>:
  103548:	e92d4000 	stmfd	sp!, {lr}
  10354c:	e92d4000 	stmfd	sp!, {lr}
  103550:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
  103554:	e10f0000 	mrs	r0, CPSR
  103558:	e31e0001 	tst	lr, #1
  10355c:	13800020 	orrne	r0, r0, #32
  103560:	e92d0001 	stmfd	sp!, {r0}
  103564:	e59f0348 	ldr	r0, [pc, #840]	; 1038b4 <OS_CPU_ARM_CtxID_Get+0x14>
  103568:	e5901000 	ldr	r1, [r0]
  10356c:	e581d000 	str	sp, [r1]
  103570:	e59f0330 	ldr	r0, [pc, #816]	; 1038a8 <OS_CPU_ARM_CtxID_Get+0x8>
  103574:	e1a0e00f 	mov	lr, pc
  103578:	e12fff10 	bx	r0
  10357c:	e59f0334 	ldr	r0, [pc, #820]	; 1038b8 <OS_CPU_ARM_CtxID_Get+0x18>
  103580:	e59f1334 	ldr	r1, [pc, #820]	; 1038bc <OS_CPU_ARM_CtxID_Get+0x1c>
  103584:	e5d12000 	ldrb	r2, [r1]
  103588:	e5c02000 	strb	r2, [r0]
  10358c:	e59f0320 	ldr	r0, [pc, #800]	; 1038b4 <OS_CPU_ARM_CtxID_Get+0x14>
  103590:	e59f1318 	ldr	r1, [pc, #792]	; 1038b0 <OS_CPU_ARM_CtxID_Get+0x10>
  103594:	e5912000 	ldr	r2, [r1]
  103598:	e5802000 	str	r2, [r0]
  10359c:	e592d000 	ldr	sp, [r2]
  1035a0:	f57ff01f 	clrex
  1035a4:	e8bd0001 	ldmfd	sp!, {r0}
  1035a8:	e12cf000 	msr	CPSR_fs, r0
  1035ac:	e8fddfff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}^

001035b0 <OSIntCtxSw>:
  1035b0:	e59f02f0 	ldr	r0, [pc, #752]	; 1038a8 <OS_CPU_ARM_CtxID_Get+0x8>
  1035b4:	e1a0e00f 	mov	lr, pc
  1035b8:	e12fff10 	bx	r0
  1035bc:	e59f02f4 	ldr	r0, [pc, #756]	; 1038b8 <OS_CPU_ARM_CtxID_Get+0x18>
  1035c0:	e59f12f4 	ldr	r1, [pc, #756]	; 1038bc <OS_CPU_ARM_CtxID_Get+0x1c>
  1035c4:	e5d12000 	ldrb	r2, [r1]
  1035c8:	e5c02000 	strb	r2, [r0]
  1035cc:	e59f02e0 	ldr	r0, [pc, #736]	; 1038b4 <OS_CPU_ARM_CtxID_Get+0x14>
  1035d0:	e59f12d8 	ldr	r1, [pc, #728]	; 1038b0 <OS_CPU_ARM_CtxID_Get+0x10>
  1035d4:	e5912000 	ldr	r2, [r1]
  1035d8:	e5802000 	str	r2, [r0]
  1035dc:	e592d000 	ldr	sp, [r2]
  1035e0:	f57ff01f 	clrex
  1035e4:	e8bd0001 	ldmfd	sp!, {r0}
  1035e8:	e12cf000 	msr	CPSR_fs, r0
  1035ec:	e8fddfff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}^

001035f0 <OS_CPU_ARM_ExceptUndefInstrHndlr>:
  1035f0:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
  1035f4:	e1a0200e 	mov	r2, lr
  1035f8:	e3a00001 	mov	r0, #1
  1035fc:	ea000012 	b	10364c <OS_CPU_ARM_ExceptHndlr>

00103600 <OS_CPU_ARM_ExceptSwiHndlr>:
  103600:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
  103604:	e1a0200e 	mov	r2, lr
  103608:	e3a00002 	mov	r0, #2
  10360c:	ea00000e 	b	10364c <OS_CPU_ARM_ExceptHndlr>

00103610 <OS_CPU_ARM_ExceptPrefetchAbortHndlr>:
  103610:	e24ee004 	sub	lr, lr, #4
  103614:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
  103618:	e1a0200e 	mov	r2, lr
  10361c:	e3a00003 	mov	r0, #3
  103620:	ea000009 	b	10364c <OS_CPU_ARM_ExceptHndlr>

00103624 <OS_CPU_ARM_ExceptDataAbortHndlr>:
  103624:	e24ee008 	sub	lr, lr, #8
  103628:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
  10362c:	e1a0200e 	mov	r2, lr
  103630:	e3a00004 	mov	r0, #4
  103634:	ea000004 	b	10364c <OS_CPU_ARM_ExceptHndlr>

00103638 <OS_CPU_ARM_ExceptFiqHndlr>:
  103638:	e24ee004 	sub	lr, lr, #4
  10363c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
  103640:	e1a0200e 	mov	r2, lr
  103644:	e3a00007 	mov	r0, #7
  103648:	eaffffff 	b	10364c <OS_CPU_ARM_ExceptHndlr>

0010364c <OS_CPU_ARM_ExceptHndlr>:
  10364c:	e14f1000 	mrs	r1, SPSR
  103650:	e201301f 	and	r3, r1, #31
  103654:	e3530013 	cmp	r3, #19
  103658:	1a000021 	bne	1036e4 <OS_CPU_ARM_ExceptHndlr_BrkExcept>

0010365c <OS_CPU_ARM_ExceptHndlr_BrkTask>:
  10365c:	e10f3000 	mrs	r3, CPSR
  103660:	e1a0400d 	mov	r4, sp
  103664:	e321f0d3 	msr	CPSR_c, #211	; 0xd3
  103668:	e92d0004 	stmfd	sp!, {r2}
  10366c:	e92d4000 	stmfd	sp!, {lr}
  103670:	e92d1fe0 	push	{r5, r6, r7, r8, r9, sl, fp, ip}
  103674:	e8b403e0 	ldm	r4!, {r5, r6, r7, r8, r9}
  103678:	e92d03e0 	push	{r5, r6, r7, r8, r9}
  10367c:	e92d0002 	stmfd	sp!, {r1}
  103680:	e59f1224 	ldr	r1, [pc, #548]	; 1038ac <OS_CPU_ARM_CtxID_Get+0xc>
  103684:	e5d11000 	ldrb	r1, [r1]
  103688:	e3510001 	cmp	r1, #1
  10368c:	1a000008 	bne	1036b4 <OS_CPU_ARM_ExceptHndlr_BrkTask_1>
  103690:	e59f1228 	ldr	r1, [pc, #552]	; 1038c0 <OS_CPU_ARM_CtxID_Get+0x20>
  103694:	e5d12000 	ldrb	r2, [r1]
  103698:	e2822001 	add	r2, r2, #1
  10369c:	e5c12000 	strb	r2, [r1]
  1036a0:	e3520001 	cmp	r2, #1
  1036a4:	1a000024 	bne	10373c <OS_CPU_ARM_ExceptHndlr_BrkIRQ>
  1036a8:	e59f1204 	ldr	r1, [pc, #516]	; 1038b4 <OS_CPU_ARM_CtxID_Get+0x14>
  1036ac:	e5912000 	ldr	r2, [r1]
  1036b0:	e582d000 	str	sp, [r2]

001036b4 <OS_CPU_ARM_ExceptHndlr_BrkTask_1>:
  1036b4:	e12ff003 	msr	CPSR_fsxc, r3
  1036b8:	e59f1204 	ldr	r1, [pc, #516]	; 1038c4 <OS_CPU_ARM_CtxID_Get+0x24>
  1036bc:	e1a0e00f 	mov	lr, pc
  1036c0:	e12fff11 	bx	r1
  1036c4:	e28dd038 	add	sp, sp, #56	; 0x38
  1036c8:	e321f0d3 	msr	CPSR_c, #211	; 0xd3
  1036cc:	e59f01f4 	ldr	r0, [pc, #500]	; 1038c8 <OS_CPU_ARM_CtxID_Get+0x28>
  1036d0:	e1a0e00f 	mov	lr, pc
  1036d4:	e12fff10 	bx	r0
  1036d8:	e8bd0001 	ldmfd	sp!, {r0}
  1036dc:	e12cf000 	msr	CPSR_fs, r0
  1036e0:	e8fddfff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}^

001036e4 <OS_CPU_ARM_ExceptHndlr_BrkExcept>:
  1036e4:	e92d0002 	stmfd	sp!, {r1}
  1036e8:	e10f3000 	mrs	r3, CPSR
  1036ec:	e321f0d3 	msr	CPSR_c, #211	; 0xd3
  1036f0:	e92d0008 	stmfd	sp!, {r3}
  1036f4:	e59f21c4 	ldr	r2, [pc, #452]	; 1038c0 <OS_CPU_ARM_CtxID_Get+0x20>
  1036f8:	e5d24000 	ldrb	r4, [r2]
  1036fc:	e2844001 	add	r4, r4, #1
  103700:	e5c24000 	strb	r4, [r2]
  103704:	e12ff003 	msr	CPSR_fsxc, r3
  103708:	e59f21b4 	ldr	r2, [pc, #436]	; 1038c4 <OS_CPU_ARM_CtxID_Get+0x24>
  10370c:	e1a0e00f 	mov	lr, pc
  103710:	e12fff12 	bx	r2
  103714:	e321f0d3 	msr	CPSR_c, #211	; 0xd3
  103718:	e59f21a0 	ldr	r2, [pc, #416]	; 1038c0 <OS_CPU_ARM_CtxID_Get+0x20>
  10371c:	e5d24000 	ldrb	r4, [r2]
  103720:	e2444001 	sub	r4, r4, #1
  103724:	e5c24000 	strb	r4, [r2]
  103728:	e8bd0008 	ldmfd	sp!, {r3}
  10372c:	e12ff003 	msr	CPSR_fsxc, r3
  103730:	e8bd0001 	ldmfd	sp!, {r0}
  103734:	e16ff000 	msr	SPSR_fsxc, r0
  103738:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

0010373c <OS_CPU_ARM_ExceptHndlr_BrkIRQ>:
  10373c:	e12ff003 	msr	CPSR_fsxc, r3
  103740:	e59f117c 	ldr	r1, [pc, #380]	; 1038c4 <OS_CPU_ARM_CtxID_Get+0x24>
  103744:	e1a0e00f 	mov	lr, pc
  103748:	e12fff11 	bx	r1
  10374c:	e28dd038 	add	sp, sp, #56	; 0x38
  103750:	e321f0d3 	msr	CPSR_c, #211	; 0xd3
  103754:	e59f2164 	ldr	r2, [pc, #356]	; 1038c0 <OS_CPU_ARM_CtxID_Get+0x20>
  103758:	e5d24000 	ldrb	r4, [r2]
  10375c:	e2444001 	sub	r4, r4, #1
  103760:	e5c24000 	strb	r4, [r2]
  103764:	e8bd0001 	ldmfd	sp!, {r0}
  103768:	e16ff000 	msr	SPSR_fsxc, r0
  10376c:	e8fddfff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}^

00103770 <OS_CPU_ARM_ExceptIrqHndlr>:
  103770:	e92d4000 	stmfd	sp!, {lr}
  103774:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
  103778:	e10f1000 	mrs	r1, CPSR
  10377c:	e92d0002 	stmfd	sp!, {r1}
  103780:	e3a00006 	mov	r0, #6
  103784:	e59f3120 	ldr	r3, [pc, #288]	; 1038ac <OS_CPU_ARM_CtxID_Get+0xc>
  103788:	e5d34000 	ldrb	r4, [r3]
  10378c:	e3540001 	cmp	r4, #1
  103790:	1a000022 	bne	103820 <OS_CPU_ARM_IRQHndlr_BreakNothing>
  103794:	e59f3124 	ldr	r3, [pc, #292]	; 1038c0 <OS_CPU_ARM_CtxID_Get+0x20>
  103798:	e5d34000 	ldrb	r4, [r3]
  10379c:	e2844001 	add	r4, r4, #1
  1037a0:	e5c34000 	strb	r4, [r3]
  1037a4:	e3540001 	cmp	r4, #1
  1037a8:	1a000010 	bne	1037f0 <OS_CPU_ARM_IRQHndlr_BreakIRQ>

001037ac <OS_CPU_ARM_IRQHndlr_BreakTask>:
  1037ac:	e59f3100 	ldr	r3, [pc, #256]	; 1038b4 <OS_CPU_ARM_CtxID_Get+0x14>
  1037b0:	e5934000 	ldr	r4, [r3]
  1037b4:	e584d000 	str	sp, [r4]
  1037b8:	e59f310c 	ldr	r3, [pc, #268]	; 1038cc <OS_CPU_ARM_CtxID_Get+0x2c>
  1037bc:	e593d000 	ldr	sp, [r3]
  1037c0:	e59f10fc 	ldr	r1, [pc, #252]	; 1038c4 <OS_CPU_ARM_CtxID_Get+0x24>
  1037c4:	e1a0e00f 	mov	lr, pc
  1037c8:	e12fff11 	bx	r1
  1037cc:	e59f00f4 	ldr	r0, [pc, #244]	; 1038c8 <OS_CPU_ARM_CtxID_Get+0x28>
  1037d0:	e1a0e00f 	mov	lr, pc
  1037d4:	e12fff10 	bx	r0
  1037d8:	e59f30d4 	ldr	r3, [pc, #212]	; 1038b4 <OS_CPU_ARM_CtxID_Get+0x14>
  1037dc:	e5934000 	ldr	r4, [r3]
  1037e0:	e594d000 	ldr	sp, [r4]
  1037e4:	e8bd0001 	ldmfd	sp!, {r0}
  1037e8:	e12cf000 	msr	CPSR_fs, r0
  1037ec:	e8fddfff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}^

001037f0 <OS_CPU_ARM_IRQHndlr_BreakIRQ>:
  1037f0:	e59f30d8 	ldr	r3, [pc, #216]	; 1038d0 <OS_CPU_ARM_CtxID_Get+0x30>
  1037f4:	e583d000 	str	sp, [r3]
  1037f8:	e59f30c4 	ldr	r3, [pc, #196]	; 1038c4 <OS_CPU_ARM_CtxID_Get+0x24>
  1037fc:	e1a0e00f 	mov	lr, pc
  103800:	e12fff13 	bx	r3
  103804:	e59f30b4 	ldr	r3, [pc, #180]	; 1038c0 <OS_CPU_ARM_CtxID_Get+0x20>
  103808:	e5d34000 	ldrb	r4, [r3]
  10380c:	e2444001 	sub	r4, r4, #1
  103810:	e5c34000 	strb	r4, [r3]
  103814:	e8bd0001 	ldmfd	sp!, {r0}
  103818:	e12cf000 	msr	CPSR_fs, r0
  10381c:	e8fddfff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}^

00103820 <OS_CPU_ARM_IRQHndlr_BreakNothing>:
  103820:	e59f309c 	ldr	r3, [pc, #156]	; 1038c4 <OS_CPU_ARM_CtxID_Get+0x24>
  103824:	e1a0e00f 	mov	lr, pc
  103828:	e12fff13 	bx	r3
  10382c:	e8bd0001 	ldmfd	sp!, {r0}
  103830:	e12cf000 	msr	CPSR_fs, r0
  103834:	e8fddfff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}^

00103838 <OS_CPU_SR_INT_En>:
  103838:	e10f0000 	mrs	r0, CPSR
  10383c:	e3c000c0 	bic	r0, r0, #192	; 0xc0
  103840:	e121f000 	msr	CPSR_c, r0
  103844:	e12fff1e 	bx	lr

00103848 <OS_CPU_SR_INT_Dis>:
  103848:	e10f0000 	mrs	r0, CPSR
  10384c:	e38000c0 	orr	r0, r0, #192	; 0xc0
  103850:	e121f000 	msr	CPSR_c, r0
  103854:	e12fff1e 	bx	lr

00103858 <OS_CPU_SR_IRQ_En>:
  103858:	e10f0000 	mrs	r0, CPSR
  10385c:	e3c00080 	bic	r0, r0, #128	; 0x80
  103860:	e121f000 	msr	CPSR_c, r0
  103864:	e12fff1e 	bx	lr

00103868 <OS_CPU_SR_IRQ_Dis>:
  103868:	e10f0000 	mrs	r0, CPSR
  10386c:	e3800080 	orr	r0, r0, #128	; 0x80
  103870:	e121f000 	msr	CPSR_c, r0
  103874:	e12fff1e 	bx	lr

00103878 <OS_CPU_SR_FIQ_En>:
  103878:	e10f0000 	mrs	r0, CPSR
  10387c:	e3c00040 	bic	r0, r0, #64	; 0x40
  103880:	e121f000 	msr	CPSR_c, r0
  103884:	e12fff1e 	bx	lr

00103888 <OS_CPU_SR_FIQ_Dis>:
  103888:	e10f0000 	mrs	r0, CPSR
  10388c:	e3800040 	orr	r0, r0, #64	; 0x40
  103890:	e121f000 	msr	CPSR_c, r0
  103894:	e12fff1e 	bx	lr

00103898 <OS_CPU_ARM_CtxID_Set>:
  103898:	ee0d0f30 	mcr	15, 0, r0, cr13, cr0, {1}
  10389c:	e12fff1e 	bx	lr

001038a0 <OS_CPU_ARM_CtxID_Get>:
  1038a0:	ee1d0f30 	mrc	15, 0, r0, cr13, cr0, {1}
  1038a4:	e12fff1e 	bx	lr
  1038a8:	00103a0c 	andseq	r3, r0, ip, lsl #20
  1038ac:	00109a46 	andseq	r9, r0, r6, asr #20
  1038b0:	00109ae0 	andseq	r9, r0, r0, ror #21
  1038b4:	00109af8 			; <UNDEFINED> instruction: 0x00109af8
  1038b8:	00109a4d 	andseq	r9, r0, sp, asr #20
  1038bc:	00109a4c 	andseq	r9, r0, ip, asr #20
  1038c0:	00109af4 			; <UNDEFINED> instruction: 0x00109af4
  1038c4:	00103b2c 	andseq	r3, r0, ip, lsr #22
  1038c8:	001004e8 	andseq	r0, r0, r8, ror #9
  1038cc:	0010a580 	andseq	sl, r0, r0, lsl #11
  1038d0:	0010a584 	andseq	sl, r0, r4, lsl #11

001038d4 <OSInitHookBegin>:
  1038d4:	e30a3588 	movw	r3, #42376	; 0xa588
  1038d8:	e3403010 	movt	r3, #16
  1038dc:	e2831c02 	add	r1, r3, #512	; 0x200
  1038e0:	e3a02000 	mov	r2, #0
  1038e4:	e4832004 	str	r2, [r3], #4
  1038e8:	e1530001 	cmp	r3, r1
  1038ec:	1afffffc 	bne	1038e4 <OSInitHookBegin+0x10>
  1038f0:	e30a2580 	movw	r2, #42368	; 0xa580
  1038f4:	e3402010 	movt	r2, #16
  1038f8:	e3c33007 	bic	r3, r3, #7
  1038fc:	e5823000 	str	r3, [r2]
  103900:	e12fff1e 	bx	lr

00103904 <OSInitHookEnd>:
  103904:	e12fff1e 	bx	lr

00103908 <OSTaskCreateHook>:
  103908:	ea000849 	b	105a34 <App_TaskCreateHook>

0010390c <OSTaskDelHook>:
  10390c:	ea000849 	b	105a38 <App_TaskDelHook>

00103910 <OSTaskIdleHook>:
  103910:	ea000849 	b	105a3c <App_TaskIdleHook>

00103914 <OSTaskReturnHook>:
  103914:	ea000849 	b	105a40 <App_TaskReturnHook>

00103918 <OSTaskStatHook>:
  103918:	ea000849 	b	105a44 <App_TaskStatHook>

0010391c <OSTaskStkInit>:
  10391c:	e2822004 	add	r2, r2, #4
  103920:	e3100001 	tst	r0, #1
  103924:	e92d0ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp}
  103928:	e3c22007 	bic	r2, r2, #7
  10392c:	e24dd010 	sub	sp, sp, #16
  103930:	e3c00001 	bic	r0, r0, #1
  103934:	e5020004 	str	r0, [r2, #-4]
  103938:	e3030294 	movw	r0, #12948	; 0x3294
  10393c:	e3400010 	movt	r0, #16
  103940:	e58d0008 	str	r0, [sp, #8]
  103944:	e3000202 	movw	r0, #514	; 0x202
  103948:	e7df0810 	bfi	r0, r0, #16, #16
  10394c:	e58d000c 	str	r0, [sp, #12]
  103950:	e3003303 	movw	r3, #771	; 0x303
  103954:	e59d0008 	ldr	r0, [sp, #8]
  103958:	e7df3813 	bfi	r3, r3, #16, #16
  10395c:	e58d3004 	str	r3, [sp, #4]
  103960:	e301b212 	movw	fp, #4626	; 0x1212
  103964:	e3019111 	movw	r9, #4369	; 0x1111
  103968:	e7dfb81b 	bfi	fp, fp, #16, #16
  10396c:	e5020008 	str	r0, [r2, #-8]
  103970:	e7df9819 	bfi	r9, r9, #16, #16
  103974:	e59d0004 	ldr	r0, [sp, #4]
  103978:	e301a010 	movw	sl, #4112	; 0x1010
  10397c:	e3008909 	movw	r8, #2313	; 0x909
  103980:	e7dfa81a 	bfi	sl, sl, #16, #16
  103984:	e7df8818 	bfi	r8, r8, #16, #16
  103988:	e3007808 	movw	r7, #2056	; 0x808
  10398c:	e5020030 	str	r0, [r2, #-48]	; 0xffffffd0
  103990:	e7df7817 	bfi	r7, r7, #16, #16
  103994:	e59d000c 	ldr	r0, [sp, #12]
  103998:	e3006707 	movw	r6, #1799	; 0x707
  10399c:	e3005606 	movw	r5, #1542	; 0x606
  1039a0:	e7df6816 	bfi	r6, r6, #16, #16
  1039a4:	e7df5815 	bfi	r5, r5, #16, #16
  1039a8:	e3004505 	movw	r4, #1285	; 0x505
  1039ac:	e5020034 	str	r0, [r2, #-52]	; 0xffffffcc
  1039b0:	e7df4814 	bfi	r4, r4, #16, #16
  1039b4:	e300c404 	movw	ip, #1028	; 0x404
  1039b8:	e3003101 	movw	r3, #257	; 0x101
  1039bc:	e7dfc81c 	bfi	ip, ip, #16, #16
  1039c0:	e7df3813 	bfi	r3, r3, #16, #16
  1039c4:	e502b00c 	str	fp, [r2, #-12]
  1039c8:	e2420040 	sub	r0, r2, #64	; 0x40
  1039cc:	e5023038 	str	r3, [r2, #-56]	; 0xffffffc8
  1039d0:	13a03033 	movne	r3, #51	; 0x33
  1039d4:	03003113 	movweq	r3, #275	; 0x113
  1039d8:	e5029010 	str	r9, [r2, #-16]
  1039dc:	e502a014 	str	sl, [r2, #-20]	; 0xffffffec
  1039e0:	e5028018 	str	r8, [r2, #-24]	; 0xffffffe8
  1039e4:	e502701c 	str	r7, [r2, #-28]	; 0xffffffe4
  1039e8:	e5026020 	str	r6, [r2, #-32]	; 0xffffffe0
  1039ec:	e5025024 	str	r5, [r2, #-36]	; 0xffffffdc
  1039f0:	e5024028 	str	r4, [r2, #-40]	; 0xffffffd8
  1039f4:	e502c02c 	str	ip, [r2, #-44]	; 0xffffffd4
  1039f8:	e502103c 	str	r1, [r2, #-60]	; 0xffffffc4
  1039fc:	e5023040 	str	r3, [r2, #-64]	; 0xffffffc0
  103a00:	e28dd010 	add	sp, sp, #16
  103a04:	e8bd0ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp}
  103a08:	e12fff1e 	bx	lr

00103a0c <OSTaskSwHook>:
  103a0c:	ea00080d 	b	105a48 <App_TaskSwHook>

00103a10 <OSTCBInitHook>:
  103a10:	ea00080d 	b	105a4c <App_TCBInitHook>

00103a14 <OSTimeTickHook>:
  103a14:	ea00080d 	b	105a50 <App_TimeTickHook>

00103a18 <OS_CPU_InitExceptVect>:
  103a18:	e3a03000 	mov	r3, #0
  103a1c:	e30f2018 	movw	r2, #61464	; 0xf018
  103a20:	e92d0070 	push	{r4, r5, r6}
  103a24:	e34e259f 	movt	r2, #58783	; 0xe59f
  103a28:	e30365f0 	movw	r6, #13808	; 0x35f0
  103a2c:	e3035600 	movw	r5, #13824	; 0x3600
  103a30:	e3406010 	movt	r6, #16
  103a34:	e3034610 	movw	r4, #13840	; 0x3610
  103a38:	e3405010 	movt	r5, #16
  103a3c:	e3404010 	movt	r4, #16
  103a40:	e303c624 	movw	ip, #13860	; 0x3624
  103a44:	e3030770 	movw	r0, #14192	; 0x3770
  103a48:	e340c010 	movt	ip, #16
  103a4c:	e3400010 	movt	r0, #16
  103a50:	e3031638 	movw	r1, #13880	; 0x3638
  103a54:	e5832000 	str	r2, [r3]
  103a58:	e3401010 	movt	r1, #16
  103a5c:	e5836024 	str	r6, [r3, #36]	; 0x24
  103a60:	e5832008 	str	r2, [r3, #8]
  103a64:	e5835028 	str	r5, [r3, #40]	; 0x28
  103a68:	e583200c 	str	r2, [r3, #12]
  103a6c:	e583402c 	str	r4, [r3, #44]	; 0x2c
  103a70:	e5832010 	str	r2, [r3, #16]
  103a74:	e583c030 	str	ip, [r3, #48]	; 0x30
  103a78:	e5832018 	str	r2, [r3, #24]
  103a7c:	e5830038 	str	r0, [r3, #56]	; 0x38
  103a80:	e583201c 	str	r2, [r3, #28]
  103a84:	e583103c 	str	r1, [r3, #60]	; 0x3c
  103a88:	e8bd0070 	pop	{r4, r5, r6}
  103a8c:	e12fff1e 	bx	lr

00103a90 <OS_CPU_ExceptStkChk>:
  103a90:	e30a3588 	movw	r3, #42376	; 0xa588
  103a94:	e3403010 	movt	r3, #16
  103a98:	e5930000 	ldr	r0, [r3]
  103a9c:	e3500000 	cmp	r0, #0
  103aa0:	1a000006 	bne	103ac0 <OS_CPU_ExceptStkChk+0x30>
  103aa4:	e5b32004 	ldr	r2, [r3, #4]!
  103aa8:	e2800001 	add	r0, r0, #1
  103aac:	e3520000 	cmp	r2, #0
  103ab0:	112fff1e 	bxne	lr
  103ab4:	e3500080 	cmp	r0, #128	; 0x80
  103ab8:	1afffff9 	bne	103aa4 <OS_CPU_ExceptStkChk+0x14>
  103abc:	e12fff1e 	bx	lr
  103ac0:	e3a00000 	mov	r0, #0
  103ac4:	e12fff1e 	bx	lr

00103ac8 <OS_CSP_TickISR_Handler>:
  103ac8:	e92d4008 	push	{r3, lr}
  103acc:	e3a00000 	mov	r0, #0
  103ad0:	eb0005ab 	bl	105184 <CSP_TmrIntClr>
  103ad4:	e8bd4008 	pop	{r3, lr}
  103ad8:	eafff2f7 	b	1006bc <OSTimeTick>

00103adc <OS_CSP_TickInit>:
  103adc:	e92d4008 	push	{r3, lr}
  103ae0:	e3a00000 	mov	r0, #0
  103ae4:	e3a01ffa 	mov	r1, #1000	; 0x3e8
  103ae8:	eb00057c 	bl	1050e0 <CSP_TmrCfg>
  103aec:	e3500001 	cmp	r0, #1
  103af0:	18bd8008 	popne	{r3, pc}
  103af4:	e3a00000 	mov	r0, #0
  103af8:	e3a0101d 	mov	r1, #29
  103afc:	e3032ac8 	movw	r2, #15048	; 0x3ac8
  103b00:	e1a03000 	mov	r3, r0
  103b04:	e3402010 	movt	r2, #16
  103b08:	eb0004b0 	bl	104dd0 <CSP_IntVectReg>
  103b0c:	e3500001 	cmp	r0, #1
  103b10:	18bd8008 	popne	{r3, pc}
  103b14:	e3a00000 	mov	r0, #0
  103b18:	eb0005a4 	bl	1051b0 <CSP_TmrStart>
  103b1c:	e3a00000 	mov	r0, #0
  103b20:	e3a0101d 	mov	r1, #29
  103b24:	e8bd4008 	pop	{r3, lr}
  103b28:	ea000475 	b	104d04 <CSP_IntEn>

00103b2c <OS_CPU_IntHandler>:
  103b2c:	e2403006 	sub	r3, r0, #6
  103b30:	e3530001 	cmp	r3, #1
  103b34:	8a000005 	bhi	103b50 <OS_CPU_IntHandler+0x24>
  103b38:	e3a03000 	mov	r3, #0
  103b3c:	e34f38f0 	movt	r3, #63728	; 0xf8f0
  103b40:	e593010c 	ldr	r0, [r3, #268]	; 0x10c
  103b44:	e1a00b00 	lsl	r0, r0, #22
  103b48:	e1a00b20 	lsr	r0, r0, #22
  103b4c:	ea0004c7 	b	104e70 <CSP_IntHandlerSrc>
  103b50:	e6ef0070 	uxtb	r0, r0
  103b54:	ea0006ea 	b	105704 <OS_CSP_BSP_ExceptHandler>

00103b58 <ASCII_IsAlpha>:
  103b58:	e20000df 	and	r0, r0, #223	; 0xdf
  103b5c:	e2400041 	sub	r0, r0, #65	; 0x41
  103b60:	e3500019 	cmp	r0, #25
  103b64:	83a00000 	movhi	r0, #0
  103b68:	93a00001 	movls	r0, #1
  103b6c:	e12fff1e 	bx	lr

00103b70 <ASCII_IsAlphaNum>:
  103b70:	e3c03020 	bic	r3, r0, #32
  103b74:	e2433041 	sub	r3, r3, #65	; 0x41
  103b78:	e3530019 	cmp	r3, #25
  103b7c:	9a000004 	bls	103b94 <ASCII_IsAlphaNum+0x24>
  103b80:	e2400030 	sub	r0, r0, #48	; 0x30
  103b84:	e3500009 	cmp	r0, #9
  103b88:	83a00000 	movhi	r0, #0
  103b8c:	93a00001 	movls	r0, #1
  103b90:	e12fff1e 	bx	lr
  103b94:	e3a00001 	mov	r0, #1
  103b98:	e12fff1e 	bx	lr

00103b9c <ASCII_IsLower>:
  103b9c:	e2400061 	sub	r0, r0, #97	; 0x61
  103ba0:	e3500019 	cmp	r0, #25
  103ba4:	83a00000 	movhi	r0, #0
  103ba8:	93a00001 	movls	r0, #1
  103bac:	e12fff1e 	bx	lr

00103bb0 <ASCII_IsUpper>:
  103bb0:	e2400041 	sub	r0, r0, #65	; 0x41
  103bb4:	e3500019 	cmp	r0, #25
  103bb8:	83a00000 	movhi	r0, #0
  103bbc:	93a00001 	movls	r0, #1
  103bc0:	e12fff1e 	bx	lr

00103bc4 <ASCII_IsDig>:
  103bc4:	e2400030 	sub	r0, r0, #48	; 0x30
  103bc8:	e3500009 	cmp	r0, #9
  103bcc:	83a00000 	movhi	r0, #0
  103bd0:	93a00001 	movls	r0, #1
  103bd4:	e12fff1e 	bx	lr

00103bd8 <ASCII_IsDigOct>:
  103bd8:	e2400030 	sub	r0, r0, #48	; 0x30
  103bdc:	e3500007 	cmp	r0, #7
  103be0:	83a00000 	movhi	r0, #0
  103be4:	93a00001 	movls	r0, #1
  103be8:	e12fff1e 	bx	lr

00103bec <ASCII_IsDigHex>:
  103bec:	e2402041 	sub	r2, r0, #65	; 0x41
  103bf0:	e2403030 	sub	r3, r0, #48	; 0x30
  103bf4:	e3530009 	cmp	r3, #9
  103bf8:	83520005 	cmphi	r2, #5
  103bfc:	9a000004 	bls	103c14 <ASCII_IsDigHex+0x28>
  103c00:	e2400061 	sub	r0, r0, #97	; 0x61
  103c04:	e3500005 	cmp	r0, #5
  103c08:	83a00000 	movhi	r0, #0
  103c0c:	93a00001 	movls	r0, #1
  103c10:	e12fff1e 	bx	lr
  103c14:	e3a00001 	mov	r0, #1
  103c18:	e12fff1e 	bx	lr

00103c1c <ASCII_IsBlank>:
  103c1c:	e3500020 	cmp	r0, #32
  103c20:	13500009 	cmpne	r0, #9
  103c24:	13a00000 	movne	r0, #0
  103c28:	03a00001 	moveq	r0, #1
  103c2c:	e12fff1e 	bx	lr

00103c30 <ASCII_IsSpace>:
  103c30:	e3500020 	cmp	r0, #32
  103c34:	1350000d 	cmpne	r0, #13
  103c38:	0a000007 	beq	103c5c <ASCII_IsSpace+0x2c>
  103c3c:	e350000a 	cmp	r0, #10
  103c40:	1350000c 	cmpne	r0, #12
  103c44:	0a000004 	beq	103c5c <ASCII_IsSpace+0x2c>
  103c48:	e20000fd 	and	r0, r0, #253	; 0xfd
  103c4c:	e2503009 	subs	r3, r0, #9
  103c50:	e2730000 	rsbs	r0, r3, #0
  103c54:	e0b00003 	adcs	r0, r0, r3
  103c58:	e12fff1e 	bx	lr
  103c5c:	e3a00001 	mov	r0, #1
  103c60:	e12fff1e 	bx	lr

00103c64 <ASCII_IsPrint>:
  103c64:	e2400020 	sub	r0, r0, #32
  103c68:	e350005e 	cmp	r0, #94	; 0x5e
  103c6c:	83a00000 	movhi	r0, #0
  103c70:	93a00001 	movls	r0, #1
  103c74:	e12fff1e 	bx	lr

00103c78 <ASCII_IsGraph>:
  103c78:	e2400021 	sub	r0, r0, #33	; 0x21
  103c7c:	e350005d 	cmp	r0, #93	; 0x5d
  103c80:	83a00000 	movhi	r0, #0
  103c84:	93a00001 	movls	r0, #1
  103c88:	e12fff1e 	bx	lr

00103c8c <ASCII_IsPunct>:
  103c8c:	e2403020 	sub	r3, r0, #32
  103c90:	e353005e 	cmp	r3, #94	; 0x5e
  103c94:	8a00000a 	bhi	103cc4 <ASCII_IsPunct+0x38>
  103c98:	e3500020 	cmp	r0, #32
  103c9c:	0a000008 	beq	103cc4 <ASCII_IsPunct+0x38>
  103ca0:	e3c03020 	bic	r3, r0, #32
  103ca4:	e2433041 	sub	r3, r3, #65	; 0x41
  103ca8:	e3530019 	cmp	r3, #25
  103cac:	9a000004 	bls	103cc4 <ASCII_IsPunct+0x38>
  103cb0:	e2400030 	sub	r0, r0, #48	; 0x30
  103cb4:	e3500009 	cmp	r0, #9
  103cb8:	93a00000 	movls	r0, #0
  103cbc:	83a00001 	movhi	r0, #1
  103cc0:	e12fff1e 	bx	lr
  103cc4:	e3a00000 	mov	r0, #0
  103cc8:	e12fff1e 	bx	lr

00103ccc <ASCII_IsCtrl>:
  103ccc:	e350007f 	cmp	r0, #127	; 0x7f
  103cd0:	1350001f 	cmpne	r0, #31
  103cd4:	83a00000 	movhi	r0, #0
  103cd8:	93a00001 	movls	r0, #1
  103cdc:	e12fff1e 	bx	lr

00103ce0 <ASCII_ToLower>:
  103ce0:	e2403041 	sub	r3, r0, #65	; 0x41
  103ce4:	e3530019 	cmp	r3, #25
  103ce8:	92800020 	addls	r0, r0, #32
  103cec:	96ef0070 	uxtbls	r0, r0
  103cf0:	e12fff1e 	bx	lr

00103cf4 <ASCII_ToUpper>:
  103cf4:	e2403061 	sub	r3, r0, #97	; 0x61
  103cf8:	e3530019 	cmp	r3, #25
  103cfc:	92400020 	subls	r0, r0, #32
  103d00:	96ef0070 	uxtbls	r0, r0
  103d04:	e12fff1e 	bx	lr

00103d08 <ASCII_Cmp>:
  103d08:	e2403061 	sub	r3, r0, #97	; 0x61
  103d0c:	e3530019 	cmp	r3, #25
  103d10:	e2413061 	sub	r3, r1, #97	; 0x61
  103d14:	92400020 	subls	r0, r0, #32
  103d18:	96ef0070 	uxtbls	r0, r0
  103d1c:	e3530019 	cmp	r3, #25
  103d20:	92411020 	subls	r1, r1, #32
  103d24:	96ef1071 	uxtbls	r1, r1
  103d28:	e0502001 	subs	r2, r0, r1
  103d2c:	e2720000 	rsbs	r0, r2, #0
  103d30:	e0b00002 	adcs	r0, r0, r2
  103d34:	e12fff1e 	bx	lr

00103d38 <Math_RandSetSeed>:
  103d38:	e92d4010 	push	{r4, lr}
  103d3c:	e1a04000 	mov	r4, r0
  103d40:	eb000532 	bl	105210 <CPU_SR_Save>
  103d44:	e30a3788 	movw	r3, #42888	; 0xa788
  103d48:	e3403010 	movt	r3, #16
  103d4c:	e5834000 	str	r4, [r3]
  103d50:	e8bd4010 	pop	{r4, lr}
  103d54:	ea000531 	b	105220 <CPU_SR_Restore>

00103d58 <Math_Init>:
  103d58:	e3a00001 	mov	r0, #1
  103d5c:	eafffff5 	b	103d38 <Math_RandSetSeed>

00103d60 <Math_Rand>:
  103d60:	e92d4010 	push	{r4, lr}
  103d64:	eb000529 	bl	105210 <CPU_SR_Save>
  103d68:	e30a3788 	movw	r3, #42888	; 0xa788
  103d6c:	e3403010 	movt	r3, #16
  103d70:	e3042e6d 	movw	r2, #20077	; 0x4e6d
  103d74:	e34421c6 	movt	r2, #16838	; 0x41c6
  103d78:	e5931000 	ldr	r1, [r3]
  103d7c:	e0020192 	mul	r2, r2, r1
  103d80:	e2822a03 	add	r2, r2, #12288	; 0x3000
  103d84:	e2822039 	add	r2, r2, #57	; 0x39
  103d88:	e3c24102 	bic	r4, r2, #-2147483648	; 0x80000000
  103d8c:	e5834000 	str	r4, [r3]
  103d90:	eb000522 	bl	105220 <CPU_SR_Restore>
  103d94:	e1a00004 	mov	r0, r4
  103d98:	e8bd8010 	pop	{r4, pc}

00103d9c <Math_RandSeed>:
  103d9c:	e3043e6d 	movw	r3, #20077	; 0x4e6d
  103da0:	e34431c6 	movt	r3, #16838	; 0x41c6
  103da4:	e0000093 	mul	r0, r3, r0
  103da8:	e2800a03 	add	r0, r0, #12288	; 0x3000
  103dac:	e2800039 	add	r0, r0, #57	; 0x39
  103db0:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
  103db4:	e12fff1e 	bx	lr

00103db8 <Mem_Init>:
  103db8:	e12fff1e 	bx	lr

00103dbc <Mem_Set>:
  103dbc:	e3520000 	cmp	r2, #0
  103dc0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
  103dc4:	0a000025 	beq	103e60 <Mem_Set+0xa4>
  103dc8:	e3500000 	cmp	r0, #0
  103dcc:	0a000023 	beq	103e60 <Mem_Set+0xa4>
  103dd0:	e1814401 	orr	r4, r1, r1, lsl #8
  103dd4:	e2103003 	ands	r3, r0, #3
  103dd8:	e1a0c000 	mov	ip, r0
  103ddc:	e1814404 	orr	r4, r1, r4, lsl #8
  103de0:	e1814404 	orr	r4, r1, r4, lsl #8
  103de4:	0a00000a 	beq	103e14 <Mem_Set+0x58>
  103de8:	e2522001 	subs	r2, r2, #1
  103dec:	e2833001 	add	r3, r3, #1
  103df0:	e4cc1001 	strb	r1, [ip], #1
  103df4:	03a00000 	moveq	r0, #0
  103df8:	13a00001 	movne	r0, #1
  103dfc:	e3530003 	cmp	r3, #3
  103e00:	83a00000 	movhi	r0, #0
  103e04:	92000001 	andls	r0, r0, #1
  103e08:	e3500000 	cmp	r0, #0
  103e0c:	1afffff5 	bne	103de8 <Mem_Set+0x2c>
  103e10:	e1a0000c 	mov	r0, ip
  103e14:	e3520003 	cmp	r2, #3
  103e18:	9a00000a 	bls	103e48 <Mem_Set+0x8c>
  103e1c:	e1a0c000 	mov	ip, r0
  103e20:	e1a03002 	mov	r3, r2
  103e24:	e2433004 	sub	r3, r3, #4
  103e28:	e48c4004 	str	r4, [ip], #4
  103e2c:	e3530003 	cmp	r3, #3
  103e30:	8afffffb 	bhi	103e24 <Mem_Set+0x68>
  103e34:	e2423004 	sub	r3, r2, #4
  103e38:	e2022003 	and	r2, r2, #3
  103e3c:	e3c33003 	bic	r3, r3, #3
  103e40:	e2833004 	add	r3, r3, #4
  103e44:	e0800003 	add	r0, r0, r3
  103e48:	e3520000 	cmp	r2, #0
  103e4c:	0a000003 	beq	103e60 <Mem_Set+0xa4>
  103e50:	e0802002 	add	r2, r0, r2
  103e54:	e4c01001 	strb	r1, [r0], #1
  103e58:	e1500002 	cmp	r0, r2
  103e5c:	1afffffc 	bne	103e54 <Mem_Set+0x98>
  103e60:	e8bd0010 	ldmfd	sp!, {r4}
  103e64:	e12fff1e 	bx	lr

00103e68 <Mem_Clr>:
  103e68:	e1a02001 	mov	r2, r1
  103e6c:	e3a01000 	mov	r1, #0
  103e70:	eaffffd1 	b	103dbc <Mem_Set>

00103e74 <Mem_Cmp>:
  103e74:	e252c000 	subs	ip, r2, #0
  103e78:	e92d01f0 	push	{r4, r5, r6, r7, r8}
  103e7c:	03a00001 	moveq	r0, #1
  103e80:	0a000016 	beq	103ee0 <Mem_Cmp+0x6c>
  103e84:	e3500000 	cmp	r0, #0
  103e88:	0a000014 	beq	103ee0 <Mem_Cmp+0x6c>
  103e8c:	e3510000 	cmp	r1, #0
  103e90:	0a000014 	beq	103ee8 <Mem_Cmp+0x74>
  103e94:	e080300c 	add	r3, r0, ip
  103e98:	e081200c 	add	r2, r1, ip
  103e9c:	e2036003 	and	r6, r3, #3
  103ea0:	e2021003 	and	r1, r2, #3
  103ea4:	e1560001 	cmp	r6, r1
  103ea8:	0a000010 	beq	103ef0 <Mem_Cmp+0x7c>
  103eac:	e1a0400c 	mov	r4, ip
  103eb0:	e0634004 	rsb	r4, r3, r4
  103eb4:	e573c001 	ldrb	ip, [r3, #-1]!
  103eb8:	e5720001 	ldrb	r0, [r2, #-1]!
  103ebc:	e0841003 	add	r1, r4, r3
  103ec0:	e05cc000 	subs	ip, ip, r0
  103ec4:	e27c0000 	rsbs	r0, ip, #0
  103ec8:	e0b0000c 	adcs	r0, r0, ip
  103ecc:	e3510000 	cmp	r1, #0
  103ed0:	03a01000 	moveq	r1, #0
  103ed4:	12001001 	andne	r1, r0, #1
  103ed8:	e3510000 	cmp	r1, #0
  103edc:	1afffff4 	bne	103eb4 <Mem_Cmp+0x40>
  103ee0:	e8bd01f0 	pop	{r4, r5, r6, r7, r8}
  103ee4:	e12fff1e 	bx	lr
  103ee8:	e1a00001 	mov	r0, r1
  103eec:	eafffffb 	b	103ee0 <Mem_Cmp+0x6c>
  103ef0:	e3560000 	cmp	r6, #0
  103ef4:	0a000018 	beq	103f5c <Mem_Cmp+0xe8>
  103ef8:	e2435001 	sub	r5, r3, #1
  103efc:	e2421001 	sub	r1, r2, #1
  103f00:	e1a0400c 	mov	r4, ip
  103f04:	ea000001 	b	103f10 <Mem_Cmp+0x9c>
  103f08:	e3580000 	cmp	r8, #0
  103f0c:	0a000013 	beq	103f60 <Mem_Cmp+0xec>
  103f10:	e5d10000 	ldrb	r0, [r1]
  103f14:	e1a03005 	mov	r3, r5
  103f18:	e5d57000 	ldrb	r7, [r5]
  103f1c:	e1a02001 	mov	r2, r1
  103f20:	e2455001 	sub	r5, r5, #1
  103f24:	e2411001 	sub	r1, r1, #1
  103f28:	e0577000 	subs	r7, r7, r0
  103f2c:	e2770000 	rsbs	r0, r7, #0
  103f30:	e0b00007 	adcs	r0, r0, r7
  103f34:	e2544001 	subs	r4, r4, #1
  103f38:	e06c7004 	rsb	r7, ip, r4
  103f3c:	e0878006 	add	r8, r7, r6
  103f40:	03a07000 	moveq	r7, #0
  103f44:	12007001 	andne	r7, r0, #1
  103f48:	e3570000 	cmp	r7, #0
  103f4c:	1affffed 	bne	103f08 <Mem_Cmp+0x94>
  103f50:	e3500000 	cmp	r0, #0
  103f54:	0affffe1 	beq	103ee0 <Mem_Cmp+0x6c>
  103f58:	ea000000 	b	103f60 <Mem_Cmp+0xec>
  103f5c:	e1a0400c 	mov	r4, ip
  103f60:	e3540003 	cmp	r4, #3
  103f64:	9a000017 	bls	103fc8 <Mem_Cmp+0x154>
  103f68:	e2430004 	sub	r0, r3, #4
  103f6c:	e2421004 	sub	r1, r2, #4
  103f70:	e591c000 	ldr	ip, [r1]
  103f74:	e2444004 	sub	r4, r4, #4
  103f78:	e5905000 	ldr	r5, [r0]
  103f7c:	e1a03000 	mov	r3, r0
  103f80:	e1a02001 	mov	r2, r1
  103f84:	e2400004 	sub	r0, r0, #4
  103f88:	e055500c 	subs	r5, r5, ip
  103f8c:	e2411004 	sub	r1, r1, #4
  103f90:	e275c000 	rsbs	ip, r5, #0
  103f94:	e0bcc005 	adcs	ip, ip, r5
  103f98:	e3540003 	cmp	r4, #3
  103f9c:	93a05000 	movls	r5, #0
  103fa0:	820c5001 	andhi	r5, ip, #1
  103fa4:	e3550000 	cmp	r5, #0
  103fa8:	1afffff0 	bne	103f70 <Mem_Cmp+0xfc>
  103fac:	e1a0000c 	mov	r0, ip
  103fb0:	e3540000 	cmp	r4, #0
  103fb4:	03a0c000 	moveq	ip, #0
  103fb8:	120cc001 	andne	ip, ip, #1
  103fbc:	e35c0000 	cmp	ip, #0
  103fc0:	1affffba 	bne	103eb0 <Mem_Cmp+0x3c>
  103fc4:	eaffffc5 	b	103ee0 <Mem_Cmp+0x6c>
  103fc8:	e3a0c001 	mov	ip, #1
  103fcc:	eafffff6 	b	103fac <Mem_Cmp+0x138>

00103fd0 <Str_ParseNbr_Int32>:
  103fd0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  103fd4:	e24dd014 	sub	sp, sp, #20
  103fd8:	e1a06002 	mov	r6, r2
  103fdc:	e251a000 	subs	sl, r1, #0
  103fe0:	e59d2038 	ldr	r2, [sp, #56]	; 0x38
  103fe4:	028da00c 	addeq	sl, sp, #12
  103fe8:	e1a09003 	mov	r9, r3
  103fec:	e3a08000 	mov	r8, #0
  103ff0:	e3520000 	cmp	r2, #0
  103ff4:	e58a0000 	str	r0, [sl]
  103ff8:	028d300b 	addeq	r3, sp, #11
  103ffc:	058d3038 	streq	r3, [sp, #56]	; 0x38
  104000:	e59d2038 	ldr	r2, [sp, #56]	; 0x38
  104004:	e3500000 	cmp	r0, #0
  104008:	e1a07000 	mov	r7, r0
  10400c:	e5c28000 	strb	r8, [r2]
  104010:	0a000069 	beq	1041bc <Str_ParseNbr_Int32+0x1ec>
  104014:	e2562001 	subs	r2, r6, #1
  104018:	e2723000 	rsbs	r3, r2, #0
  10401c:	e0b33002 	adcs	r3, r3, r2
  104020:	e3560024 	cmp	r6, #36	; 0x24
  104024:	83833001 	orrhi	r3, r3, #1
  104028:	e1530008 	cmp	r3, r8
  10402c:	0a000002 	beq	10403c <Str_ParseNbr_Int32+0x6c>
  104030:	e1a00008 	mov	r0, r8
  104034:	e28dd014 	add	sp, sp, #20
  104038:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  10403c:	e5d00000 	ldrb	r0, [r0]
  104040:	ebfffefa 	bl	103c30 <ASCII_IsSpace>
  104044:	e3500001 	cmp	r0, #1
  104048:	1a00005d 	bne	1041c4 <Str_ParseNbr_Int32+0x1f4>
  10404c:	e2874001 	add	r4, r7, #1
  104050:	e1a05004 	mov	r5, r4
  104054:	e2844001 	add	r4, r4, #1
  104058:	e5d50000 	ldrb	r0, [r5]
  10405c:	ebfffef3 	bl	103c30 <ASCII_IsSpace>
  104060:	e3500001 	cmp	r0, #1
  104064:	0afffff9 	beq	104050 <Str_ParseNbr_Int32+0x80>
  104068:	e5d54000 	ldrb	r4, [r5]
  10406c:	e354002b 	cmp	r4, #43	; 0x2b
  104070:	0a00004c 	beq	1041a8 <Str_ParseNbr_Int32+0x1d8>
  104074:	e354002d 	cmp	r4, #45	; 0x2d
  104078:	13a02000 	movne	r2, #0
  10407c:	158d2004 	strne	r2, [sp, #4]
  104080:	0a00001b 	beq	1040f4 <Str_ParseNbr_Int32+0x124>
  104084:	e3560008 	cmp	r6, #8
  104088:	0a000021 	beq	104114 <Str_ParseNbr_Int32+0x144>
  10408c:	e3560010 	cmp	r6, #16
  104090:	0a000024 	beq	104128 <Str_ParseNbr_Int32+0x158>
  104094:	e3560000 	cmp	r6, #0
  104098:	1a000024 	bne	104130 <Str_ParseNbr_Int32+0x160>
  10409c:	e3540030 	cmp	r4, #48	; 0x30
  1040a0:	11a09005 	movne	r9, r5
  1040a4:	13a0600a 	movne	r6, #10
  1040a8:	0a000054 	beq	104200 <Str_ParseNbr_Int32+0x230>
  1040ac:	e3a0b000 	mov	fp, #0
  1040b0:	e3072224 	movw	r2, #29220	; 0x7224
  1040b4:	e1a0800b 	mov	r8, fp
  1040b8:	e3402010 	movt	r2, #16
  1040bc:	e58d2000 	str	r2, [sp]
  1040c0:	e1a00004 	mov	r0, r4
  1040c4:	ebfffea9 	bl	103b70 <ASCII_IsAlphaNum>
  1040c8:	e3500001 	cmp	r0, #1
  1040cc:	0a000019 	beq	104138 <Str_ParseNbr_Int32+0x168>
  1040d0:	e35b0001 	cmp	fp, #1
  1040d4:	e59d3004 	ldr	r3, [sp, #4]
  1040d8:	e59d2038 	ldr	r2, [sp, #56]	; 0x38
  1040dc:	03e08000 	mvneq	r8, #0
  1040e0:	e1550009 	cmp	r5, r9
  1040e4:	01a09007 	moveq	r9, r7
  1040e8:	e58a9000 	str	r9, [sl]
  1040ec:	e5c23000 	strb	r3, [r2]
  1040f0:	eaffffce 	b	104030 <Str_ParseNbr_Int32+0x60>
  1040f4:	e3590001 	cmp	r9, #1
  1040f8:	058d9004 	streq	r9, [sp, #4]
  1040fc:	05d54001 	ldrbeq	r4, [r5, #1]
  104100:	13a03001 	movne	r3, #1
  104104:	02855001 	addeq	r5, r5, #1
  104108:	158d3004 	strne	r3, [sp, #4]
  10410c:	e3560008 	cmp	r6, #8
  104110:	1affffdd 	bne	10408c <Str_ParseNbr_Int32+0xbc>
  104114:	e3540030 	cmp	r4, #48	; 0x30
  104118:	1a000004 	bne	104130 <Str_ParseNbr_Int32+0x160>
  10411c:	e2859001 	add	r9, r5, #1
  104120:	e5d54001 	ldrb	r4, [r5, #1]
  104124:	eaffffe0 	b	1040ac <Str_ParseNbr_Int32+0xdc>
  104128:	e3540030 	cmp	r4, #48	; 0x30
  10412c:	0a000026 	beq	1041cc <Str_ParseNbr_Int32+0x1fc>
  104130:	e1a09005 	mov	r9, r5
  104134:	eaffffdc 	b	1040ac <Str_ParseNbr_Int32+0xdc>
  104138:	e1a00004 	mov	r0, r4
  10413c:	ebfffea0 	bl	103bc4 <ASCII_IsDig>
  104140:	e3500001 	cmp	r0, #1
  104144:	02444030 	subeq	r4, r4, #48	; 0x30
  104148:	06ef4074 	uxtbeq	r4, r4
  10414c:	0a000005 	beq	104168 <Str_ParseNbr_Int32+0x198>
  104150:	e1a00004 	mov	r0, r4
  104154:	ebfffe90 	bl	103b9c <ASCII_IsLower>
  104158:	e3500001 	cmp	r0, #1
  10415c:	02444057 	subeq	r4, r4, #87	; 0x57
  104160:	12444037 	subne	r4, r4, #55	; 0x37
  104164:	e6ef4074 	uxtb	r4, r4
  104168:	e1560004 	cmp	r6, r4
  10416c:	9affffd7 	bls	1040d0 <Str_ParseNbr_Int32+0x100>
  104170:	e35b0000 	cmp	fp, #0
  104174:	1a000009 	bne	1041a0 <Str_ParseNbr_Int32+0x1d0>
  104178:	e59d2000 	ldr	r2, [sp]
  10417c:	e7923106 	ldr	r3, [r2, r6, lsl #2]
  104180:	e1530008 	cmp	r3, r8
  104184:	3a000005 	bcc	1041a0 <Str_ParseNbr_Int32+0x1d0>
  104188:	e0284896 	mla	r8, r6, r8, r4
  10418c:	e1540008 	cmp	r4, r8
  104190:	93a0b000 	movls	fp, #0
  104194:	83a0b001 	movhi	fp, #1
  104198:	e5f94001 	ldrb	r4, [r9, #1]!
  10419c:	eaffffc7 	b	1040c0 <Str_ParseNbr_Int32+0xf0>
  1041a0:	e3a0b001 	mov	fp, #1
  1041a4:	eafffffb 	b	104198 <Str_ParseNbr_Int32+0x1c8>
  1041a8:	e5d54001 	ldrb	r4, [r5, #1]
  1041ac:	e3a03000 	mov	r3, #0
  1041b0:	e2855001 	add	r5, r5, #1
  1041b4:	e58d3004 	str	r3, [sp, #4]
  1041b8:	eaffffb1 	b	104084 <Str_ParseNbr_Int32+0xb4>
  1041bc:	e1a08000 	mov	r8, r0
  1041c0:	eaffff9a 	b	104030 <Str_ParseNbr_Int32+0x60>
  1041c4:	e1a05007 	mov	r5, r7
  1041c8:	eaffffa6 	b	104068 <Str_ParseNbr_Int32+0x98>
  1041cc:	e5d54001 	ldrb	r4, [r5, #1]
  1041d0:	e2859001 	add	r9, r5, #1
  1041d4:	e3540058 	cmp	r4, #88	; 0x58
  1041d8:	0a000001 	beq	1041e4 <Str_ParseNbr_Int32+0x214>
  1041dc:	e3540078 	cmp	r4, #120	; 0x78
  1041e0:	1affffb1 	bne	1040ac <Str_ParseNbr_Int32+0xdc>
  1041e4:	e5d50002 	ldrb	r0, [r5, #2]
  1041e8:	ebfffe7f 	bl	103bec <ASCII_IsDigHex>
  1041ec:	e3500001 	cmp	r0, #1
  1041f0:	02859002 	addeq	r9, r5, #2
  1041f4:	15d54001 	ldrbne	r4, [r5, #1]
  1041f8:	05d54002 	ldrbeq	r4, [r5, #2]
  1041fc:	eaffffaa 	b	1040ac <Str_ParseNbr_Int32+0xdc>
  104200:	e5d54001 	ldrb	r4, [r5, #1]
  104204:	e2859001 	add	r9, r5, #1
  104208:	e3540058 	cmp	r4, #88	; 0x58
  10420c:	0a000002 	beq	10421c <Str_ParseNbr_Int32+0x24c>
  104210:	e3540078 	cmp	r4, #120	; 0x78
  104214:	13a06008 	movne	r6, #8
  104218:	1affffa3 	bne	1040ac <Str_ParseNbr_Int32+0xdc>
  10421c:	e5d50002 	ldrb	r0, [r5, #2]
  104220:	e3a06010 	mov	r6, #16
  104224:	ebfffe70 	bl	103bec <ASCII_IsDigHex>
  104228:	e3500001 	cmp	r0, #1
  10422c:	02859002 	addeq	r9, r5, #2
  104230:	15d54001 	ldrbne	r4, [r5, #1]
  104234:	05d54002 	ldrbeq	r4, [r5, #2]
  104238:	eaffff9b 	b	1040ac <Str_ParseNbr_Int32+0xdc>

0010423c <Str_FmtNbr_Int32>:
  10423c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  104240:	e24dd01c 	sub	sp, sp, #28
  104244:	e1a05002 	mov	r5, r2
  104248:	e1a04000 	mov	r4, r0
  10424c:	e59dc04c 	ldr	ip, [sp, #76]	; 0x4c
  104250:	e1a08001 	mov	r8, r1
  104254:	e5dd2044 	ldrb	r2, [sp, #68]	; 0x44
  104258:	e35c0000 	cmp	ip, #0
  10425c:	e58d3004 	str	r3, [sp, #4]
  104260:	e5dd7040 	ldrb	r7, [sp, #64]	; 0x40
  104264:	e58d200c 	str	r2, [sp, #12]
  104268:	0a00009f 	beq	1044ec <Str_FmtNbr_Int32+0x2b0>
  10426c:	e2453002 	sub	r3, r5, #2
  104270:	e3530022 	cmp	r3, #34	; 0x22
  104274:	83a06001 	movhi	r6, #1
  104278:	9a000074 	bls	104450 <Str_FmtNbr_Int32+0x214>
  10427c:	e3570000 	cmp	r7, #0
  104280:	1a000076 	bne	104460 <Str_FmtNbr_Int32+0x224>
  104284:	e3560000 	cmp	r6, #0
  104288:	1a000022 	bne	104318 <Str_FmtNbr_Int32+0xdc>
  10428c:	e1540005 	cmp	r4, r5
  104290:	3a000098 	bcc	1044f8 <Str_FmtNbr_Int32+0x2bc>
  104294:	e1a00004 	mov	r0, r4
  104298:	e3a0b001 	mov	fp, #1
  10429c:	e1a01005 	mov	r1, r5
  1042a0:	e28bb001 	add	fp, fp, #1
  1042a4:	eb0009f3 	bl	106a78 <__aeabi_uidiv>
  1042a8:	e6efb07b 	uxtb	fp, fp
  1042ac:	e1500005 	cmp	r0, r5
  1042b0:	2afffff9 	bcs	10429c <Str_FmtNbr_Int32+0x60>
  1042b4:	e1a0200b 	mov	r2, fp
  1042b8:	e59dc004 	ldr	ip, [sp, #4]
  1042bc:	e25c0001 	subs	r0, ip, #1
  1042c0:	e2703000 	rsbs	r3, r0, #0
  1042c4:	e0b33000 	adcs	r3, r3, r0
  1042c8:	e0822003 	add	r2, r2, r3
  1042cc:	e1580002 	cmp	r8, r2
  1042d0:	ba00000f 	blt	104314 <Str_FmtNbr_Int32+0xd8>
  1042d4:	e15b0008 	cmp	fp, r8
  1042d8:	21a0b008 	movcs	fp, r8
  1042dc:	e3570000 	cmp	r7, #0
  1042e0:	0a00007c 	beq	1044d8 <Str_FmtNbr_Int32+0x29c>
  1042e4:	e06b2008 	rsb	r2, fp, r8
  1042e8:	e1a0a008 	mov	sl, r8
  1042ec:	e6ef2072 	uxtb	r2, r2
  1042f0:	e1530002 	cmp	r3, r2
  1042f4:	03a0c000 	moveq	ip, #0
  1042f8:	058dc010 	streq	ip, [sp, #16]
  1042fc:	0a000078 	beq	1044e4 <Str_FmtNbr_Int32+0x2a8>
  104300:	e2571030 	subs	r1, r7, #48	; 0x30
  104304:	e271c000 	rsbs	ip, r1, #0
  104308:	e0bcc001 	adcs	ip, ip, r1
  10430c:	e58dc010 	str	ip, [sp, #16]
  104310:	ea000073 	b	1044e4 <Str_FmtNbr_Int32+0x2a8>
  104314:	e1a0b004 	mov	fp, r4
  104318:	e1a0a008 	mov	sl, r8
  10431c:	e3a06001 	mov	r6, #1
  104320:	e5dd3048 	ldrb	r3, [sp, #72]	; 0x48
  104324:	e59dc04c 	ldr	ip, [sp, #76]	; 0x4c
  104328:	e3530000 	cmp	r3, #0
  10432c:	e08c300a 	add	r3, ip, sl
  104330:	13a01000 	movne	r1, #0
  104334:	17cc100a 	strbne	r1, [ip, sl]
  104338:	e35a0000 	cmp	sl, #0
  10433c:	e2439001 	sub	r9, r3, #1
  104340:	0a000032 	beq	104410 <Str_FmtNbr_Int32+0x1d4>
  104344:	e24a3001 	sub	r3, sl, #1
  104348:	e3a02000 	mov	r2, #0
  10434c:	e58d3014 	str	r3, [sp, #20]
  104350:	e1a03006 	mov	r3, r6
  104354:	e58d2008 	str	r2, [sp, #8]
  104358:	e1a0600b 	mov	r6, fp
  10435c:	e1a04002 	mov	r4, r2
  104360:	e1a0b00a 	mov	fp, sl
  104364:	e3a0803f 	mov	r8, #63	; 0x3f
  104368:	e1a0a003 	mov	sl, r3
  10436c:	ea000013 	b	1043c0 <Str_FmtNbr_Int32+0x184>
  104370:	e1a00006 	mov	r0, r6
  104374:	e1a01005 	mov	r1, r5
  104378:	eb000a39 	bl	106c64 <__aeabi_uidivmod>
  10437c:	e6ef1071 	uxtb	r1, r1
  104380:	e3510009 	cmp	r1, #9
  104384:	92811030 	addls	r1, r1, #48	; 0x30
  104388:	94491001 	strbls	r1, [r9], #-1
  10438c:	9a000004 	bls	1043a4 <Str_FmtNbr_Int32+0x168>
  104390:	e59dc00c 	ldr	ip, [sp, #12]
  104394:	e35c0001 	cmp	ip, #1
  104398:	12811037 	addne	r1, r1, #55	; 0x37
  10439c:	02811057 	addeq	r1, r1, #87	; 0x57
  1043a0:	e4491001 	strb	r1, [r9], #-1
  1043a4:	e1a00006 	mov	r0, r6
  1043a8:	e1a01005 	mov	r1, r5
  1043ac:	eb0009b1 	bl	106a78 <__aeabi_uidiv>
  1043b0:	e1a06000 	mov	r6, r0
  1043b4:	e2844001 	add	r4, r4, #1
  1043b8:	e15b0004 	cmp	fp, r4
  1043bc:	9a000012 	bls	10440c <Str_FmtNbr_Int32+0x1d0>
  1043c0:	e35a0000 	cmp	sl, #0
  1043c4:	14498001 	strbne	r8, [r9], #-1
  1043c8:	1afffff9 	bne	1043b4 <Str_FmtNbr_Int32+0x178>
  1043cc:	e2961000 	adds	r1, r6, #0
  1043d0:	13a01001 	movne	r1, #1
  1043d4:	e3540000 	cmp	r4, #0
  1043d8:	03811001 	orreq	r1, r1, #1
  1043dc:	e3510000 	cmp	r1, #0
  1043e0:	1affffe2 	bne	104370 <Str_FmtNbr_Int32+0x134>
  1043e4:	e59d2004 	ldr	r2, [sp, #4]
  1043e8:	e3520001 	cmp	r2, #1
  1043ec:	0a00000c 	beq	104424 <Str_FmtNbr_Int32+0x1e8>
  1043f0:	e3570000 	cmp	r7, #0
  1043f4:	e2844001 	add	r4, r4, #1
  1043f8:	14497001 	strbne	r7, [r9], #-1
  1043fc:	13a06000 	movne	r6, #0
  104400:	01a06007 	moveq	r6, r7
  104404:	e15b0004 	cmp	fp, r4
  104408:	8affffec 	bhi	1043c0 <Str_FmtNbr_Int32+0x184>
  10440c:	e1a0600a 	mov	r6, sl
  104410:	e3560000 	cmp	r6, #0
  104414:	1a000034 	bne	1044ec <Str_FmtNbr_Int32+0x2b0>
  104418:	e59d004c 	ldr	r0, [sp, #76]	; 0x4c
  10441c:	e28dd01c 	add	sp, sp, #28
  104420:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  104424:	e59d3008 	ldr	r3, [sp, #8]
  104428:	e59dc010 	ldr	ip, [sp, #16]
  10442c:	e183100c 	orr	r1, r3, ip
  104430:	e31100ff 	tst	r1, #255	; 0xff
  104434:	1a000021 	bne	1044c0 <Str_FmtNbr_Int32+0x284>
  104438:	e3a0302d 	mov	r3, #45	; 0x2d
  10443c:	e3a0c001 	mov	ip, #1
  104440:	e4493001 	strb	r3, [r9], #-1
  104444:	e3a06000 	mov	r6, #0
  104448:	e58dc008 	str	ip, [sp, #8]
  10444c:	eaffffd8 	b	1043b4 <Str_FmtNbr_Int32+0x178>
  104450:	e2716001 	rsbs	r6, r1, #1
  104454:	33a06000 	movcc	r6, #0
  104458:	e3570000 	cmp	r7, #0
  10445c:	0affff88 	beq	104284 <Str_FmtNbr_Int32+0x48>
  104460:	e1a00007 	mov	r0, r7
  104464:	ebfffdfe 	bl	103c64 <ASCII_IsPrint>
  104468:	e3500001 	cmp	r0, #1
  10446c:	1affffa9 	bne	104318 <Str_FmtNbr_Int32+0xdc>
  104470:	e3570030 	cmp	r7, #48	; 0x30
  104474:	0affff82 	beq	104284 <Str_FmtNbr_Int32+0x48>
  104478:	e59d200c 	ldr	r2, [sp, #12]
  10447c:	e2473030 	sub	r3, r7, #48	; 0x30
  104480:	e3520001 	cmp	r2, #1
  104484:	e6ef3073 	uxtb	r3, r3
  104488:	12472041 	subne	r2, r7, #65	; 0x41
  10448c:	02472061 	subeq	r2, r7, #97	; 0x61
  104490:	e355000a 	cmp	r5, #10
  104494:	91530005 	cmpls	r3, r5
  104498:	e6ef2072 	uxtb	r2, r2
  10449c:	3affff9d 	bcc	104318 <Str_FmtNbr_Int32+0xdc>
  1044a0:	e355000a 	cmp	r5, #10
  1044a4:	9affff76 	bls	104284 <Str_FmtNbr_Int32+0x48>
  1044a8:	e3530009 	cmp	r3, #9
  1044ac:	9affff99 	bls	104318 <Str_FmtNbr_Int32+0xdc>
  1044b0:	e245300a 	sub	r3, r5, #10
  1044b4:	e1520003 	cmp	r2, r3
  1044b8:	3affff96 	bcc	104318 <Str_FmtNbr_Int32+0xdc>
  1044bc:	eaffff70 	b	104284 <Str_FmtNbr_Int32+0x48>
  1044c0:	e35c0000 	cmp	ip, #0
  1044c4:	0affffc9 	beq	1043f0 <Str_FmtNbr_Int32+0x1b4>
  1044c8:	e59d2014 	ldr	r2, [sp, #20]
  1044cc:	e1520004 	cmp	r2, r4
  1044d0:	1affffc6 	bne	1043f0 <Str_FmtNbr_Int32+0x1b4>
  1044d4:	eaffffd7 	b	104438 <Str_FmtNbr_Int32+0x1fc>
  1044d8:	e08b3003 	add	r3, fp, r3
  1044dc:	e58d7010 	str	r7, [sp, #16]
  1044e0:	e6efa073 	uxtb	sl, r3
  1044e4:	e1a0b004 	mov	fp, r4
  1044e8:	eaffff8c 	b	104320 <Str_FmtNbr_Int32+0xe4>
  1044ec:	e3a0c000 	mov	ip, #0
  1044f0:	e58dc04c 	str	ip, [sp, #76]	; 0x4c
  1044f4:	eaffffc7 	b	104418 <Str_FmtNbr_Int32+0x1dc>
  1044f8:	e3a02001 	mov	r2, #1
  1044fc:	e1a0b002 	mov	fp, r2
  104500:	eaffff6c 	b	1042b8 <Str_FmtNbr_Int32+0x7c>

00104504 <Str_Len>:
  104504:	e2503000 	subs	r3, r0, #0
  104508:	0a00000c 	beq	104540 <Str_Len+0x3c>
  10450c:	e5d30000 	ldrb	r0, [r3]
  104510:	e3500000 	cmp	r0, #0
  104514:	012fff1e 	bxeq	lr
  104518:	e3a00000 	mov	r0, #0
  10451c:	e3730001 	cmn	r3, #1
  104520:	e2800001 	add	r0, r0, #1
  104524:	012fff1e 	bxeq	lr
  104528:	e5f32001 	ldrb	r2, [r3, #1]!
  10452c:	e3520000 	cmp	r2, #0
  104530:	012fff1e 	bxeq	lr
  104534:	e3700001 	cmn	r0, #1
  104538:	1afffff7 	bne	10451c <Str_Len+0x18>
  10453c:	e12fff1e 	bx	lr
  104540:	e1a00003 	mov	r0, r3
  104544:	e12fff1e 	bx	lr

00104548 <Str_Len_N>:
  104548:	e2503000 	subs	r3, r0, #0
  10454c:	0a00000e 	beq	10458c <Str_Len_N+0x44>
  104550:	e5d30000 	ldrb	r0, [r3]
  104554:	e3500000 	cmp	r0, #0
  104558:	012fff1e 	bxeq	lr
  10455c:	e3510000 	cmp	r1, #0
  104560:	0a00000b 	beq	104594 <Str_Len_N+0x4c>
  104564:	e3a00000 	mov	r0, #0
  104568:	e3730001 	cmn	r3, #1
  10456c:	e2800001 	add	r0, r0, #1
  104570:	012fff1e 	bxeq	lr
  104574:	e5f32001 	ldrb	r2, [r3, #1]!
  104578:	e3520000 	cmp	r2, #0
  10457c:	012fff1e 	bxeq	lr
  104580:	e1500001 	cmp	r0, r1
  104584:	1afffff7 	bne	104568 <Str_Len_N+0x20>
  104588:	e12fff1e 	bx	lr
  10458c:	e1a00003 	mov	r0, r3
  104590:	e12fff1e 	bx	lr
  104594:	e1a00001 	mov	r0, r1
  104598:	e12fff1e 	bx	lr

0010459c <Str_Copy_N>:
  10459c:	e3500000 	cmp	r0, #0
  1045a0:	e92d0070 	push	{r4, r5, r6}
  1045a4:	0a00001e 	beq	104624 <Str_Copy_N+0x88>
  1045a8:	e3510000 	cmp	r1, #0
  1045ac:	0a00001c 	beq	104624 <Str_Copy_N+0x88>
  1045b0:	e5d1c000 	ldrb	ip, [r1]
  1045b4:	e35c0000 	cmp	ip, #0
  1045b8:	0a00001b 	beq	10462c <Str_Copy_N+0x90>
  1045bc:	e3520000 	cmp	r2, #0
  1045c0:	0a000015 	beq	10461c <Str_Copy_N+0x80>
  1045c4:	e2811001 	add	r1, r1, #1
  1045c8:	e1a03000 	mov	r3, r0
  1045cc:	e3a04000 	mov	r4, #0
  1045d0:	ea000004 	b	1045e8 <Str_Copy_N+0x4c>
  1045d4:	e4d1c001 	ldrb	ip, [r1], #1
  1045d8:	e35c0000 	cmp	ip, #0
  1045dc:	0a000008 	beq	104604 <Str_Copy_N+0x68>
  1045e0:	e1540002 	cmp	r4, r2
  1045e4:	0a000006 	beq	104604 <Str_Copy_N+0x68>
  1045e8:	e4c3c001 	strb	ip, [r3], #1
  1045ec:	e3530000 	cmp	r3, #0
  1045f0:	13510000 	cmpne	r1, #0
  1045f4:	e1a05001 	mov	r5, r1
  1045f8:	e2844001 	add	r4, r4, #1
  1045fc:	e1a06003 	mov	r6, r3
  104600:	1afffff3 	bne	1045d4 <Str_Copy_N+0x38>
  104604:	e3530000 	cmp	r3, #0
  104608:	13550000 	cmpne	r5, #0
  10460c:	0a000004 	beq	104624 <Str_Copy_N+0x88>
  104610:	e1520004 	cmp	r2, r4
  104614:	83a03000 	movhi	r3, #0
  104618:	85c63000 	strbhi	r3, [r6]
  10461c:	e8bd0070 	pop	{r4, r5, r6}
  104620:	e12fff1e 	bx	lr
  104624:	e3a00000 	mov	r0, #0
  104628:	eafffffb 	b	10461c <Str_Copy_N+0x80>
  10462c:	e1a06000 	mov	r6, r0
  104630:	e1a0400c 	mov	r4, ip
  104634:	eafffff5 	b	104610 <Str_Copy_N+0x74>

00104638 <Str_Copy>:
  104638:	e3e02000 	mvn	r2, #0
  10463c:	eaffffd6 	b	10459c <Str_Copy_N>

00104640 <Str_Cat_N>:
  104640:	e3500000 	cmp	r0, #0
  104644:	e92d0030 	push	{r4, r5}
  104648:	0a00000b 	beq	10467c <Str_Cat_N+0x3c>
  10464c:	e3510000 	cmp	r1, #0
  104650:	0a000009 	beq	10467c <Str_Cat_N+0x3c>
  104654:	e3520000 	cmp	r2, #0
  104658:	11a03000 	movne	r3, r0
  10465c:	0a000007 	beq	104680 <Str_Cat_N+0x40>
  104660:	e1a0c003 	mov	ip, r3
  104664:	e2833001 	add	r3, r3, #1
  104668:	e5dc4000 	ldrb	r4, [ip]
  10466c:	e3540000 	cmp	r4, #0
  104670:	0a000004 	beq	104688 <Str_Cat_N+0x48>
  104674:	e3530000 	cmp	r3, #0
  104678:	1afffff8 	bne	104660 <Str_Cat_N+0x20>
  10467c:	e3a00000 	mov	r0, #0
  104680:	e8bd0030 	pop	{r4, r5}
  104684:	e12fff1e 	bx	lr
  104688:	e35c0000 	cmp	ip, #0
  10468c:	0afffffa 	beq	10467c <Str_Cat_N+0x3c>
  104690:	e5d14000 	ldrb	r4, [r1]
  104694:	e3540000 	cmp	r4, #0
  104698:	0a000015 	beq	1046f4 <Str_Cat_N+0xb4>
  10469c:	e1a0300c 	mov	r3, ip
  1046a0:	e2811001 	add	r1, r1, #1
  1046a4:	e08c2002 	add	r2, ip, r2
  1046a8:	ea000001 	b	1046b4 <Str_Cat_N+0x74>
  1046ac:	e1530002 	cmp	r3, r2
  1046b0:	0a000008 	beq	1046d8 <Str_Cat_N+0x98>
  1046b4:	e4c34001 	strb	r4, [r3], #1
  1046b8:	e3530000 	cmp	r3, #0
  1046bc:	13510000 	cmpne	r1, #0
  1046c0:	e1a05001 	mov	r5, r1
  1046c4:	e1a0c003 	mov	ip, r3
  1046c8:	0a000002 	beq	1046d8 <Str_Cat_N+0x98>
  1046cc:	e4d14001 	ldrb	r4, [r1], #1
  1046d0:	e3540000 	cmp	r4, #0
  1046d4:	1afffff4 	bne	1046ac <Str_Cat_N+0x6c>
  1046d8:	e35c0000 	cmp	ip, #0
  1046dc:	13550000 	cmpne	r5, #0
  1046e0:	13a05000 	movne	r5, #0
  1046e4:	03a05001 	moveq	r5, #1
  1046e8:	0affffe3 	beq	10467c <Str_Cat_N+0x3c>
  1046ec:	e5cc5000 	strb	r5, [ip]
  1046f0:	eaffffe2 	b	104680 <Str_Cat_N+0x40>
  1046f4:	e1a05001 	mov	r5, r1
  1046f8:	eafffff6 	b	1046d8 <Str_Cat_N+0x98>

001046fc <Str_Cat>:
  1046fc:	e3e02000 	mvn	r2, #0
  104700:	eaffffce 	b	104640 <Str_Cat_N>

00104704 <Str_Cmp_N>:
  104704:	e3520000 	cmp	r2, #0
  104708:	e92d0030 	push	{r4, r5}
  10470c:	0a000022 	beq	10479c <Str_Cmp_N+0x98>
  104710:	e3500000 	cmp	r0, #0
  104714:	0a000029 	beq	1047c0 <Str_Cmp_N+0xbc>
  104718:	e3510000 	cmp	r1, #0
  10471c:	05d02000 	ldrbeq	r2, [r0]
  104720:	0a00001d 	beq	10479c <Str_Cmp_N+0x98>
  104724:	e5d15000 	ldrb	r5, [r1]
  104728:	e2803001 	add	r3, r0, #1
  10472c:	e5d0c000 	ldrb	ip, [r0]
  104730:	e2811001 	add	r1, r1, #1
  104734:	e15c0005 	cmp	ip, r5
  104738:	1a000016 	bne	104798 <Str_Cmp_N+0x94>
  10473c:	e35c0000 	cmp	ip, #0
  104740:	0a000023 	beq	1047d4 <Str_Cmp_N+0xd0>
  104744:	e3510000 	cmp	r1, #0
  104748:	13530000 	cmpne	r3, #0
  10474c:	0a000018 	beq	1047b4 <Str_Cmp_N+0xb0>
  104750:	e3a04000 	mov	r4, #0
  104754:	ea000008 	b	10477c <Str_Cmp_N+0x78>
  104758:	e35c0000 	cmp	ip, #0
  10475c:	0a00001c 	beq	1047d4 <Str_Cmp_N+0xd0>
  104760:	e3510000 	cmp	r1, #0
  104764:	13530000 	cmpne	r3, #0
  104768:	03a00000 	moveq	r0, #0
  10476c:	13a00001 	movne	r0, #1
  104770:	0a00000c 	beq	1047a8 <Str_Cmp_N+0xa4>
  104774:	e1540002 	cmp	r4, r2
  104778:	0a000017 	beq	1047dc <Str_Cmp_N+0xd8>
  10477c:	e4d3c001 	ldrb	ip, [r3], #1
  104780:	e2844001 	add	r4, r4, #1
  104784:	e4d15001 	ldrb	r5, [r1], #1
  104788:	e15c0005 	cmp	ip, r5
  10478c:	0afffff1 	beq	104758 <Str_Cmp_N+0x54>
  104790:	e1520004 	cmp	r2, r4
  104794:	0a000010 	beq	1047dc <Str_Cmp_N+0xd8>
  104798:	e065200c 	rsb	r2, r5, ip
  10479c:	e6bf0072 	sxth	r0, r2
  1047a0:	e8bd0030 	pop	{r4, r5}
  1047a4:	e12fff1e 	bx	lr
  1047a8:	e1520004 	cmp	r2, r4
  1047ac:	01a02000 	moveq	r2, r0
  1047b0:	0afffff9 	beq	10479c <Str_Cmp_N+0x98>
  1047b4:	e3530000 	cmp	r3, #0
  1047b8:	15d32000 	ldrbne	r2, [r3]
  1047bc:	1afffff6 	bne	10479c <Str_Cmp_N+0x98>
  1047c0:	e3510000 	cmp	r1, #0
  1047c4:	01a02001 	moveq	r2, r1
  1047c8:	15d12000 	ldrbne	r2, [r1]
  1047cc:	12622000 	rsbne	r2, r2, #0
  1047d0:	eafffff1 	b	10479c <Str_Cmp_N+0x98>
  1047d4:	e1a0200c 	mov	r2, ip
  1047d8:	eaffffef 	b	10479c <Str_Cmp_N+0x98>
  1047dc:	e3a02000 	mov	r2, #0
  1047e0:	eaffffed 	b	10479c <Str_Cmp_N+0x98>

001047e4 <Str_Cmp>:
  1047e4:	e3e02000 	mvn	r2, #0
  1047e8:	eaffffc5 	b	104704 <Str_Cmp_N>

001047ec <Str_CmpIgnoreCase_N>:
  1047ec:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
  1047f0:	e2528000 	subs	r8, r2, #0
  1047f4:	e1a06000 	mov	r6, r0
  1047f8:	e1a05001 	mov	r5, r1
  1047fc:	0a00002d 	beq	1048b8 <Str_CmpIgnoreCase_N+0xcc>
  104800:	e3500000 	cmp	r0, #0
  104804:	0a000033 	beq	1048d8 <Str_CmpIgnoreCase_N+0xec>
  104808:	e3510000 	cmp	r1, #0
  10480c:	e5d00000 	ldrb	r0, [r0]
  104810:	0a00002e 	beq	1048d0 <Str_CmpIgnoreCase_N+0xe4>
  104814:	ebfffd31 	bl	103ce0 <ASCII_ToLower>
  104818:	e2864001 	add	r4, r6, #1
  10481c:	e2855001 	add	r5, r5, #1
  104820:	e1a07000 	mov	r7, r0
  104824:	e5550001 	ldrb	r0, [r5, #-1]
  104828:	ebfffd2c 	bl	103ce0 <ASCII_ToLower>
  10482c:	e1570000 	cmp	r7, r0
  104830:	1a000019 	bne	10489c <Str_CmpIgnoreCase_N+0xb0>
  104834:	e5d63000 	ldrb	r3, [r6]
  104838:	e3530000 	cmp	r3, #0
  10483c:	0a00001b 	beq	1048b0 <Str_CmpIgnoreCase_N+0xc4>
  104840:	e3550000 	cmp	r5, #0
  104844:	13540000 	cmpne	r4, #0
  104848:	0a000018 	beq	1048b0 <Str_CmpIgnoreCase_N+0xc4>
  10484c:	e3a06000 	mov	r6, #0
  104850:	ea000007 	b	104874 <Str_CmpIgnoreCase_N+0x88>
  104854:	e5543001 	ldrb	r3, [r4, #-1]
  104858:	e3530000 	cmp	r3, #0
  10485c:	0a000011 	beq	1048a8 <Str_CmpIgnoreCase_N+0xbc>
  104860:	e3550000 	cmp	r5, #0
  104864:	13540000 	cmpne	r4, #0
  104868:	0a00000e 	beq	1048a8 <Str_CmpIgnoreCase_N+0xbc>
  10486c:	e1560008 	cmp	r6, r8
  104870:	0a000010 	beq	1048b8 <Str_CmpIgnoreCase_N+0xcc>
  104874:	e4d40001 	ldrb	r0, [r4], #1
  104878:	e2866001 	add	r6, r6, #1
  10487c:	ebfffd17 	bl	103ce0 <ASCII_ToLower>
  104880:	e1a07000 	mov	r7, r0
  104884:	e4d50001 	ldrb	r0, [r5], #1
  104888:	ebfffd14 	bl	103ce0 <ASCII_ToLower>
  10488c:	e1570000 	cmp	r7, r0
  104890:	0affffef 	beq	104854 <Str_CmpIgnoreCase_N+0x68>
  104894:	e1580006 	cmp	r8, r6
  104898:	0a000006 	beq	1048b8 <Str_CmpIgnoreCase_N+0xcc>
  10489c:	e0600007 	rsb	r0, r0, r7
  1048a0:	e6bf0070 	sxth	r0, r0
  1048a4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
  1048a8:	e1580006 	cmp	r8, r6
  1048ac:	0a000001 	beq	1048b8 <Str_CmpIgnoreCase_N+0xcc>
  1048b0:	e3570000 	cmp	r7, #0
  1048b4:	1a000002 	bne	1048c4 <Str_CmpIgnoreCase_N+0xd8>
  1048b8:	e3a00000 	mov	r0, #0
  1048bc:	e6bf0070 	sxth	r0, r0
  1048c0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
  1048c4:	e3540000 	cmp	r4, #0
  1048c8:	15d40000 	ldrbne	r0, [r4]
  1048cc:	0a000001 	beq	1048d8 <Str_CmpIgnoreCase_N+0xec>
  1048d0:	ebfffd02 	bl	103ce0 <ASCII_ToLower>
  1048d4:	eafffff8 	b	1048bc <Str_CmpIgnoreCase_N+0xd0>
  1048d8:	e3550000 	cmp	r5, #0
  1048dc:	0afffff5 	beq	1048b8 <Str_CmpIgnoreCase_N+0xcc>
  1048e0:	e5d50000 	ldrb	r0, [r5]
  1048e4:	ebfffcfd 	bl	103ce0 <ASCII_ToLower>
  1048e8:	e2600000 	rsb	r0, r0, #0
  1048ec:	eafffff2 	b	1048bc <Str_CmpIgnoreCase_N+0xd0>

001048f0 <Str_CmpIgnoreCase>:
  1048f0:	e3e02000 	mvn	r2, #0
  1048f4:	eaffffbc 	b	1047ec <Str_CmpIgnoreCase_N>

001048f8 <Str_Char_N>:
  1048f8:	e3500000 	cmp	r0, #0
  1048fc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
  104900:	0a00000e 	beq	104940 <Str_Char_N+0x48>
  104904:	e3510000 	cmp	r1, #0
  104908:	0a00000c 	beq	104940 <Str_Char_N+0x48>
  10490c:	e1a03000 	mov	r3, r0
  104910:	e3a0c000 	mov	ip, #0
  104914:	e1a00003 	mov	r0, r3
  104918:	e4d34001 	ldrb	r4, [r3], #1
  10491c:	e3540000 	cmp	r4, #0
  104920:	0a000009 	beq	10494c <Str_Char_N+0x54>
  104924:	e1540002 	cmp	r4, r2
  104928:	0a00000c 	beq	104960 <Str_Char_N+0x68>
  10492c:	e15c0001 	cmp	ip, r1
  104930:	e28cc001 	add	ip, ip, #1
  104934:	0a000001 	beq	104940 <Str_Char_N+0x48>
  104938:	e3530000 	cmp	r3, #0
  10493c:	1afffff4 	bne	104914 <Str_Char_N+0x1c>
  104940:	e3a00000 	mov	r0, #0
  104944:	e8bd0010 	ldmfd	sp!, {r4}
  104948:	e12fff1e 	bx	lr
  10494c:	e151000c 	cmp	r1, ip
  104950:	9afffffa 	bls	104940 <Str_Char_N+0x48>
  104954:	e3520000 	cmp	r2, #0
  104958:	0afffff9 	beq	104944 <Str_Char_N+0x4c>
  10495c:	eafffff7 	b	104940 <Str_Char_N+0x48>
  104960:	e151000c 	cmp	r1, ip
  104964:	8afffff6 	bhi	104944 <Str_Char_N+0x4c>
  104968:	eafffff4 	b	104940 <Str_Char_N+0x48>

0010496c <Str_Char>:
  10496c:	e1a02001 	mov	r2, r1
  104970:	e3e01000 	mvn	r1, #0
  104974:	eaffffdf 	b	1048f8 <Str_Char_N>

00104978 <Str_Char_Last_N>:
  104978:	e92d0030 	push	{r4, r5}
  10497c:	e2505000 	subs	r5, r0, #0
  104980:	0a000023 	beq	104a14 <Str_Char_Last_N+0x9c>
  104984:	e3510000 	cmp	r1, #0
  104988:	0a00001f 	beq	104a0c <Str_Char_Last_N+0x94>
  10498c:	e2410001 	sub	r0, r1, #1
  104990:	e1a0c005 	mov	ip, r5
  104994:	e3a03000 	mov	r3, #0
  104998:	e4dc4001 	ldrb	r4, [ip], #1
  10499c:	e3540000 	cmp	r4, #0
  1049a0:	0a000004 	beq	1049b8 <Str_Char_Last_N+0x40>
  1049a4:	e1500003 	cmp	r0, r3
  1049a8:	0a000002 	beq	1049b8 <Str_Char_Last_N+0x40>
  1049ac:	e35c0000 	cmp	ip, #0
  1049b0:	e2833001 	add	r3, r3, #1
  1049b4:	1afffff7 	bne	104998 <Str_Char_Last_N+0x20>
  1049b8:	e0950003 	adds	r0, r5, r3
  1049bc:	0a000010 	beq	104a04 <Str_Char_Last_N+0x8c>
  1049c0:	e1550000 	cmp	r5, r0
  1049c4:	0a00000b 	beq	1049f8 <Str_Char_Last_N+0x80>
  1049c8:	e5d03000 	ldrb	r3, [r0]
  1049cc:	e1530002 	cmp	r3, r2
  1049d0:	0a00000b 	beq	104a04 <Str_Char_Last_N+0x8c>
  1049d4:	e2403001 	sub	r3, r0, #1
  1049d8:	ea000002 	b	1049e8 <Str_Char_Last_N+0x70>
  1049dc:	e5d01000 	ldrb	r1, [r0]
  1049e0:	e1510002 	cmp	r1, r2
  1049e4:	0a000006 	beq	104a04 <Str_Char_Last_N+0x8c>
  1049e8:	e1530005 	cmp	r3, r5
  1049ec:	e1a00003 	mov	r0, r3
  1049f0:	e2433001 	sub	r3, r3, #1
  1049f4:	1afffff8 	bne	1049dc <Str_Char_Last_N+0x64>
  1049f8:	e5d03000 	ldrb	r3, [r0]
  1049fc:	e1530002 	cmp	r3, r2
  104a00:	13a00000 	movne	r0, #0
  104a04:	e8bd0030 	pop	{r4, r5}
  104a08:	e12fff1e 	bx	lr
  104a0c:	e1a00001 	mov	r0, r1
  104a10:	eafffffb 	b	104a04 <Str_Char_Last_N+0x8c>
  104a14:	e1a00005 	mov	r0, r5
  104a18:	eafffff9 	b	104a04 <Str_Char_Last_N+0x8c>

00104a1c <Str_Char_Last>:
  104a1c:	e1a02001 	mov	r2, r1
  104a20:	e3e01000 	mvn	r1, #0
  104a24:	eaffffd3 	b	104978 <Str_Char_Last_N>

00104a28 <Str_Char_Replace>:
  104a28:	e3500000 	cmp	r0, #0
  104a2c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
  104a30:	0a00000b 	beq	104a64 <Str_Char_Replace+0x3c>
  104a34:	e2803001 	add	r3, r0, #1
  104a38:	e553c001 	ldrb	ip, [r3, #-1]
  104a3c:	e2834001 	add	r4, r3, #1
  104a40:	e35c0000 	cmp	ip, #0
  104a44:	0a000006 	beq	104a64 <Str_Char_Replace+0x3c>
  104a48:	e1530000 	cmp	r3, r0
  104a4c:	0a000004 	beq	104a64 <Str_Char_Replace+0x3c>
  104a50:	e151000c 	cmp	r1, ip
  104a54:	05432001 	strbeq	r2, [r3, #-1]
  104a58:	e3530000 	cmp	r3, #0
  104a5c:	e1a03004 	mov	r3, r4
  104a60:	1afffff4 	bne	104a38 <Str_Char_Replace+0x10>
  104a64:	e8bd0010 	ldmfd	sp!, {r4}
  104a68:	e12fff1e 	bx	lr

00104a6c <Str_Char_Replace_N>:
  104a6c:	e3500000 	cmp	r0, #0
  104a70:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
  104a74:	0a00000c 	beq	104aac <Str_Char_Replace_N+0x40>
  104a78:	e3530000 	cmp	r3, #0
  104a7c:	0a00000c 	beq	104ab4 <Str_Char_Replace_N+0x48>
  104a80:	e1a0c000 	mov	ip, r0
  104a84:	e4dc4001 	ldrb	r4, [ip], #1
  104a88:	e3540000 	cmp	r4, #0
  104a8c:	0a000006 	beq	104aac <Str_Char_Replace_N+0x40>
  104a90:	e3530000 	cmp	r3, #0
  104a94:	e2433001 	sub	r3, r3, #1
  104a98:	0a000003 	beq	104aac <Str_Char_Replace_N+0x40>
  104a9c:	e1540001 	cmp	r4, r1
  104aa0:	054c2001 	strbeq	r2, [ip, #-1]
  104aa4:	e35c0000 	cmp	ip, #0
  104aa8:	1afffff5 	bne	104a84 <Str_Char_Replace_N+0x18>
  104aac:	e8bd0010 	ldmfd	sp!, {r4}
  104ab0:	e12fff1e 	bx	lr
  104ab4:	e1a00003 	mov	r0, r3
  104ab8:	eafffffb 	b	104aac <Str_Char_Replace_N+0x40>

00104abc <Str_Str_N>:
  104abc:	e92d45f8 	push	{r3, r4, r5, r6, r7, r8, sl, lr}
  104ac0:	e2506000 	subs	r6, r0, #0
  104ac4:	e1a07001 	mov	r7, r1
  104ac8:	0a000030 	beq	104b90 <Str_Str_N+0xd4>
  104acc:	e3510000 	cmp	r1, #0
  104ad0:	0a000032 	beq	104ba0 <Str_Str_N+0xe4>
  104ad4:	e3520000 	cmp	r2, #0
  104ad8:	0a00002e 	beq	104b98 <Str_Str_N+0xdc>
  104adc:	e3720001 	cmn	r2, #1
  104ae0:	e1a05006 	mov	r5, r6
  104ae4:	12821001 	addne	r1, r2, #1
  104ae8:	e1a0c006 	mov	ip, r6
  104aec:	01a01002 	moveq	r1, r2
  104af0:	e3a03000 	mov	r3, #0
  104af4:	e4dc4001 	ldrb	r4, [ip], #1
  104af8:	e3540000 	cmp	r4, #0
  104afc:	0a000004 	beq	104b14 <Str_Str_N+0x58>
  104b00:	e1530002 	cmp	r3, r2
  104b04:	0a000002 	beq	104b14 <Str_Str_N+0x58>
  104b08:	e35c0000 	cmp	ip, #0
  104b0c:	e2833001 	add	r3, r3, #1
  104b10:	1afffff7 	bne	104af4 <Str_Str_N+0x38>
  104b14:	e1a02007 	mov	r2, r7
  104b18:	e3a04000 	mov	r4, #0
  104b1c:	e4d2c001 	ldrb	ip, [r2], #1
  104b20:	e35c0000 	cmp	ip, #0
  104b24:	0a000004 	beq	104b3c <Str_Str_N+0x80>
  104b28:	e1540001 	cmp	r4, r1
  104b2c:	0a000002 	beq	104b3c <Str_Str_N+0x80>
  104b30:	e3520000 	cmp	r2, #0
  104b34:	e2844001 	add	r4, r4, #1
  104b38:	1afffff7 	bne	104b1c <Str_Str_N+0x60>
  104b3c:	e3540000 	cmp	r4, #0
  104b40:	0a000012 	beq	104b90 <Str_Str_N+0xd4>
  104b44:	e1530004 	cmp	r3, r4
  104b48:	3a00000f 	bcc	104b8c <Str_Str_N+0xd0>
  104b4c:	e0966003 	adds	r6, r6, r3
  104b50:	0a00000e 	beq	104b90 <Str_Str_N+0xd4>
  104b54:	e0976004 	adds	r6, r7, r4
  104b58:	0a00000c 	beq	104b90 <Str_Str_N+0xd4>
  104b5c:	e064a003 	rsb	sl, r4, r3
  104b60:	e3a08000 	mov	r8, #0
  104b64:	e0886005 	add	r6, r8, r5
  104b68:	e1a01007 	mov	r1, r7
  104b6c:	e1a02004 	mov	r2, r4
  104b70:	e2888001 	add	r8, r8, #1
  104b74:	e1a00006 	mov	r0, r6
  104b78:	ebfffee1 	bl	104704 <Str_Cmp_N>
  104b7c:	e3500000 	cmp	r0, #0
  104b80:	0a000002 	beq	104b90 <Str_Str_N+0xd4>
  104b84:	e15a0008 	cmp	sl, r8
  104b88:	2afffff5 	bcs	104b64 <Str_Str_N+0xa8>
  104b8c:	e3a06000 	mov	r6, #0
  104b90:	e1a00006 	mov	r0, r6
  104b94:	e8bd85f8 	pop	{r3, r4, r5, r6, r7, r8, sl, pc}
  104b98:	e1a06002 	mov	r6, r2
  104b9c:	eafffffb 	b	104b90 <Str_Str_N+0xd4>
  104ba0:	e1a06001 	mov	r6, r1
  104ba4:	eafffff9 	b	104b90 <Str_Str_N+0xd4>

00104ba8 <Str_Str>:
  104ba8:	e3e02000 	mvn	r2, #0
  104bac:	eaffffc2 	b	104abc <Str_Str_N>

00104bb0 <Str_FmtNbr_Int32U>:
  104bb0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
  104bb4:	e24dd014 	sub	sp, sp, #20
  104bb8:	e5ddc018 	ldrb	ip, [sp, #24]
  104bbc:	e58d3000 	str	r3, [sp]
  104bc0:	e3a03000 	mov	r3, #0
  104bc4:	e58dc004 	str	ip, [sp, #4]
  104bc8:	e5ddc01c 	ldrb	ip, [sp, #28]
  104bcc:	e58dc008 	str	ip, [sp, #8]
  104bd0:	e59dc020 	ldr	ip, [sp, #32]
  104bd4:	e58dc00c 	str	ip, [sp, #12]
  104bd8:	ebfffd97 	bl	10423c <Str_FmtNbr_Int32>
  104bdc:	e28dd014 	add	sp, sp, #20
  104be0:	e8bd8000 	ldmfd	sp!, {pc}

00104be4 <Str_FmtNbr_Int32S>:
  104be4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
  104be8:	e24dd014 	sub	sp, sp, #20
  104bec:	e3500000 	cmp	r0, #0
  104bf0:	e5ddc018 	ldrb	ip, [sp, #24]
  104bf4:	b2600000 	rsblt	r0, r0, #0
  104bf8:	b3a0e001 	movlt	lr, #1
  104bfc:	a3a0e000 	movge	lr, #0
  104c00:	e58d3000 	str	r3, [sp]
  104c04:	e1a0300e 	mov	r3, lr
  104c08:	e58dc004 	str	ip, [sp, #4]
  104c0c:	e5ddc01c 	ldrb	ip, [sp, #28]
  104c10:	e58dc008 	str	ip, [sp, #8]
  104c14:	e59dc020 	ldr	ip, [sp, #32]
  104c18:	e58dc00c 	str	ip, [sp, #12]
  104c1c:	ebfffd86 	bl	10423c <Str_FmtNbr_Int32>
  104c20:	e28dd014 	add	sp, sp, #20
  104c24:	e8bd8000 	ldmfd	sp!, {pc}

00104c28 <Str_ParseNbr_Int32U>:
  104c28:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
  104c2c:	e24dd00c 	sub	sp, sp, #12
  104c30:	e3a03000 	mov	r3, #0
  104c34:	e58d3000 	str	r3, [sp]
  104c38:	ebfffce4 	bl	103fd0 <Str_ParseNbr_Int32>
  104c3c:	e28dd00c 	add	sp, sp, #12
  104c40:	e8bd8000 	ldmfd	sp!, {pc}

00104c44 <Str_ParseNbr_Int32S>:
  104c44:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
  104c48:	e24dd014 	sub	sp, sp, #20
  104c4c:	e3a03001 	mov	r3, #1
  104c50:	e28dc00f 	add	ip, sp, #15
  104c54:	e58dc000 	str	ip, [sp]
  104c58:	ebfffcdc 	bl	103fd0 <Str_ParseNbr_Int32>
  104c5c:	e5dd300f 	ldrb	r3, [sp, #15]
  104c60:	e3530000 	cmp	r3, #0
  104c64:	1a000003 	bne	104c78 <Str_ParseNbr_Int32S+0x34>
  104c68:	e3500000 	cmp	r0, #0
  104c6c:	b3e00102 	mvnlt	r0, #-2147483648	; 0x80000000
  104c70:	e28dd014 	add	sp, sp, #20
  104c74:	e8bd8000 	ldmfd	sp!, {pc}
  104c78:	e3500000 	cmp	r0, #0
  104c7c:	a2600000 	rsbge	r0, r0, #0
  104c80:	b3a00102 	movlt	r0, #-2147483648	; 0x80000000
  104c84:	eafffff9 	b	104c70 <Str_ParseNbr_Int32S+0x2c>

00104c88 <CSP_GPIO_Init>:
  104c88:	e12fff1e 	bx	lr

00104c8c <CSP_GPIO_Cfg>:
  104c8c:	e3a00001 	mov	r0, #1
  104c90:	e12fff1e 	bx	lr

00104c94 <CSP_GPIO_BitClr>:
  104c94:	e12fff1e 	bx	lr

00104c98 <CSP_GPIO_BitSet>:
  104c98:	e12fff1e 	bx	lr

00104c9c <CSP_GPIO_BitToggle>:
  104c9c:	e12fff1e 	bx	lr

00104ca0 <CSP_GPIO_Rd>:
  104ca0:	e3a00000 	mov	r0, #0
  104ca4:	e12fff1e 	bx	lr

00104ca8 <CSP_GPIO_Wr>:
  104ca8:	e12fff1e 	bx	lr

00104cac <CSP_GPIO_IntClr>:
  104cac:	e3a00000 	mov	r0, #0
  104cb0:	e12fff1e 	bx	lr

00104cb4 <CSP_GPIO_IntStatGet>:
  104cb4:	e3a00000 	mov	r0, #0
  104cb8:	e12fff1e 	bx	lr

00104cbc <CSP_IntClr>:
  104cbc:	e3a03000 	mov	r3, #0
  104cc0:	e34f38f0 	movt	r3, #63728	; 0xf8f0
  104cc4:	e5831110 	str	r1, [r3, #272]	; 0x110
  104cc8:	e12fff1e 	bx	lr

00104ccc <CSP_IntDis>:
  104ccc:	e1a022a1 	lsr	r2, r1, #5
  104cd0:	e3a03d46 	mov	r3, #4480	; 0x1180
  104cd4:	e34f38f0 	movt	r3, #63728	; 0xf8f0
  104cd8:	e201101f 	and	r1, r1, #31
  104cdc:	e3a00001 	mov	r0, #1
  104ce0:	e1a01110 	lsl	r1, r0, r1
  104ce4:	e7831102 	str	r1, [r3, r2, lsl #2]
  104ce8:	e12fff1e 	bx	lr

00104cec <CSP_IntDisAll>:
  104cec:	e3a03a01 	mov	r3, #4096	; 0x1000
  104cf0:	e34f38f0 	movt	r3, #63728	; 0xf8f0
  104cf4:	e5932000 	ldr	r2, [r3]
  104cf8:	e3c22001 	bic	r2, r2, #1
  104cfc:	e5832000 	str	r2, [r3]
  104d00:	e12fff1e 	bx	lr

00104d04 <CSP_IntEn>:
  104d04:	e1a022a1 	lsr	r2, r1, #5
  104d08:	e3a03c11 	mov	r3, #4352	; 0x1100
  104d0c:	e34f38f0 	movt	r3, #63728	; 0xf8f0
  104d10:	e201101f 	and	r1, r1, #31
  104d14:	e3a00001 	mov	r0, #1
  104d18:	e1a01110 	lsl	r1, r0, r1
  104d1c:	e7831102 	str	r1, [r3, r2, lsl #2]
  104d20:	e12fff1e 	bx	lr

00104d24 <CSP_IntInit>:
  104d24:	e92d4038 	push	{r3, r4, r5, lr}
  104d28:	e3075a40 	movw	r5, #31296	; 0x7a40
  104d2c:	e3405010 	movt	r5, #16
  104d30:	e3a04000 	mov	r4, #0
  104d34:	eb0002ad 	bl	1057f0 <guest_CPU_CRITICAL_ENTER>
  104d38:	e0850184 	add	r0, r5, r4, lsl #3
  104d3c:	e2844001 	add	r4, r4, #1
  104d40:	eb000125 	bl	1051dc <CSP_IntVectClr>
  104d44:	eb0002ac 	bl	1057fc <guest_CPU_CRITICAL_EXIT>
  104d48:	e3540c01 	cmp	r4, #256	; 0x100
  104d4c:	1afffff8 	bne	104d34 <CSP_IntInit+0x10>
  104d50:	e8bd8038 	pop	{r3, r4, r5, pc}

00104d54 <CSP_IntSrcCfg>:
  104d54:	e3500000 	cmp	r0, #0
  104d58:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
  104d5c:	13a00000 	movne	r0, #0
  104d60:	1a000018 	bne	104dc8 <CSP_IntSrcCfg+0x74>
  104d64:	e35100ff 	cmp	r1, #255	; 0xff
  104d68:	8a000016 	bhi	104dc8 <CSP_IntSrcCfg+0x74>
  104d6c:	e242c010 	sub	ip, r2, #16
  104d70:	e35c00ef 	cmp	ip, #239	; 0xef
  104d74:	8a000013 	bhi	104dc8 <CSP_IntSrcCfg+0x74>
  104d78:	e2014003 	and	r4, r1, #3
  104d7c:	e1a0c121 	lsr	ip, r1, #2
  104d80:	e3a00b05 	mov	r0, #5120	; 0x1400
  104d84:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  104d88:	e3530001 	cmp	r3, #1
  104d8c:	e1a03184 	lsl	r3, r4, #3
  104d90:	e1a02312 	lsl	r2, r2, r3
  104d94:	e78c2000 	str	r2, [ip, r0]
  104d98:	e1a02221 	lsr	r2, r1, #4
  104d9c:	e201100f 	and	r1, r1, #15
  104da0:	e3a03b07 	mov	r3, #7168	; 0x1c00
  104da4:	e34f38f0 	movt	r3, #63728	; 0xf8f0
  104da8:	e3a0c001 	mov	ip, #1
  104dac:	e1a01c11 	lsl	r1, r1, ip
  104db0:	e7924003 	ldr	r4, [r2, r3]
  104db4:	e081100c 	add	r1, r1, ip
  104db8:	e1a0000c 	mov	r0, ip
  104dbc:	91c4c11c 	bicls	ip, r4, ip, lsl r1
  104dc0:	8184c11c 	orrhi	ip, r4, ip, lsl r1
  104dc4:	e782c003 	str	ip, [r2, r3]
  104dc8:	e8bd0010 	ldmfd	sp!, {r4}
  104dcc:	e12fff1e 	bx	lr

00104dd0 <CSP_IntVectReg>:
  104dd0:	e3500000 	cmp	r0, #0
  104dd4:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
  104dd8:	e1a04001 	mov	r4, r1
  104ddc:	e1a06002 	mov	r6, r2
  104de0:	e1a05003 	mov	r5, r3
  104de4:	1a00000d 	bne	104e20 <CSP_IntVectReg+0x50>
  104de8:	e35100ff 	cmp	r1, #255	; 0xff
  104dec:	88bd80f8 	pophi	{r3, r4, r5, r6, r7, pc}
  104df0:	eb000106 	bl	105210 <CPU_SR_Save>
  104df4:	e1a01006 	mov	r1, r6
  104df8:	e1a02005 	mov	r2, r5
  104dfc:	e1a07000 	mov	r7, r0
  104e00:	e3070a40 	movw	r0, #31296	; 0x7a40
  104e04:	e3400010 	movt	r0, #16
  104e08:	e0800184 	add	r0, r0, r4, lsl #3
  104e0c:	eb0000f6 	bl	1051ec <CSP_IntVectSet>
  104e10:	e1a00007 	mov	r0, r7
  104e14:	eb000101 	bl	105220 <CPU_SR_Restore>
  104e18:	e3a00001 	mov	r0, #1
  104e1c:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
  104e20:	e3a00000 	mov	r0, #0
  104e24:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

00104e28 <CSP_IntVectUnreg>:
  104e28:	e3500000 	cmp	r0, #0
  104e2c:	e92d4038 	push	{r3, r4, r5, lr}
  104e30:	e1a04001 	mov	r4, r1
  104e34:	1a00000b 	bne	104e68 <CSP_IntVectUnreg+0x40>
  104e38:	e35100ff 	cmp	r1, #255	; 0xff
  104e3c:	88bd8038 	pophi	{r3, r4, r5, pc}
  104e40:	eb0000f2 	bl	105210 <CPU_SR_Save>
  104e44:	e1a05000 	mov	r5, r0
  104e48:	e3070a40 	movw	r0, #31296	; 0x7a40
  104e4c:	e3400010 	movt	r0, #16
  104e50:	e0800184 	add	r0, r0, r4, lsl #3
  104e54:	eb0000e0 	bl	1051dc <CSP_IntVectClr>
  104e58:	e1a00005 	mov	r0, r5
  104e5c:	eb0000ef 	bl	105220 <CPU_SR_Restore>
  104e60:	e3a00001 	mov	r0, #1
  104e64:	e8bd8038 	pop	{r3, r4, r5, pc}
  104e68:	e3a00000 	mov	r0, #0
  104e6c:	e8bd8038 	pop	{r3, r4, r5, pc}

00104e70 <CSP_IntHandlerSrc>:
  104e70:	e35000ff 	cmp	r0, #255	; 0xff
  104e74:	e92d4010 	push	{r4, lr}
  104e78:	e1a04000 	mov	r4, r0
  104e7c:	e24dd008 	sub	sp, sp, #8
  104e80:	9a000001 	bls	104e8c <CSP_IntHandlerSrc+0x1c>
  104e84:	e28dd008 	add	sp, sp, #8
  104e88:	e8bd8010 	pop	{r4, pc}
  104e8c:	e3073a40 	movw	r3, #31296	; 0x7a40
  104e90:	e3403010 	movt	r3, #16
  104e94:	e0832180 	add	r2, r3, r0, lsl #3
  104e98:	e8920003 	ldm	r2, {r0, r1}
  104e9c:	e88d0003 	stm	sp, {r0, r1}
  104ea0:	e1a0000d 	mov	r0, sp
  104ea4:	eb0000d2 	bl	1051f4 <CSP_IntVectDeref>
  104ea8:	e3a03000 	mov	r3, #0
  104eac:	e34f38f0 	movt	r3, #63728	; 0xf8f0
  104eb0:	e5834110 	str	r4, [r3, #272]	; 0x110
  104eb4:	eafffff2 	b	104e84 <CSP_IntHandlerSrc+0x14>

00104eb8 <CSP_IntHandler>:
  104eb8:	e12fff1e 	bx	lr

00104ebc <CSP_PM_Init>:
  104ebc:	e12fff1e 	bx	lr

00104ec0 <CSP_PM_CPU_ClkFreqGet>:
  104ec0:	e3040355 	movw	r0, #17237	; 0x4355
  104ec4:	e34103de 	movt	r0, #5086	; 0x13de
  104ec8:	e12fff1e 	bx	lr

00104ecc <CSP_PM_PerClkCfg>:
  104ecc:	e3a00001 	mov	r0, #1
  104ed0:	e12fff1e 	bx	lr

00104ed4 <CSP_PM_PerClkEn>:
  104ed4:	e3500016 	cmp	r0, #22
  104ed8:	93043fff 	movwls	r3, #20479	; 0x4fff
  104edc:	934f3fa0 	movtls	r3, #65440	; 0xffa0
  104ee0:	95132f7f 	ldrls	r2, [r3, #-3967]	; 0xfffff081
  104ee4:	91800002 	orrls	r0, r0, r2
  104ee8:	95030f7f 	strls	r0, [r3, #-3967]	; 0xfffff081
  104eec:	e12fff1e 	bx	lr

00104ef0 <CSP_PM_PerClkDis>:
  104ef0:	e3500016 	cmp	r0, #22
  104ef4:	93043fff 	movwls	r3, #20479	; 0x4fff
  104ef8:	934f3fa0 	movtls	r3, #65440	; 0xffa0
  104efc:	95132f7f 	ldrls	r2, [r3, #-3967]	; 0xfffff081
  104f00:	91c20000 	bicls	r0, r2, r0
  104f04:	95030f7f 	strls	r0, [r3, #-3967]	; 0xfffff081
  104f08:	e12fff1e 	bx	lr

00104f0c <CSP_PM_PerClkFreqGet>:
  104f0c:	e3500015 	cmp	r0, #21
  104f10:	979ff100 	ldrls	pc, [pc, r0, lsl #2]
  104f14:	ea000024 	b	104fac <CSP_PM_PerClkFreqGet+0xa0>
  104f18:	00104fe4 	andseq	r4, r0, r4, ror #31
  104f1c:	00104fd8 			; <UNDEFINED> instruction: 0x00104fd8
  104f20:	00104fc0 	andseq	r4, r0, r0, asr #31
  104f24:	00104f7c 	andseq	r4, r0, ip, ror pc
  104f28:	00104fcc 	andseq	r4, r0, ip, asr #31
  104f2c:	00104f94 	mulseq	r0, r4, pc	; <UNPREDICTABLE>
  104f30:	00104fa0 	andseq	r4, r0, r0, lsr #31
  104f34:	00104f88 	andseq	r4, r0, r8, lsl #31
  104f38:	00104f88 	andseq	r4, r0, r8, lsl #31
  104f3c:	00104f70 	andseq	r4, r0, r0, ror pc
  104f40:	00104f70 	andseq	r4, r0, r0, ror pc
  104f44:	00104f7c 	andseq	r4, r0, ip, ror pc
  104f48:	00104fb4 			; <UNDEFINED> instruction: 0x00104fb4
  104f4c:	00104f94 	mulseq	r0, r4, pc	; <UNPREDICTABLE>
  104f50:	00104f70 	andseq	r4, r0, r0, ror pc
  104f54:	00104ff0 			; <UNDEFINED> instruction: 0x00104ff0
  104f58:	00104f7c 	andseq	r4, r0, ip, ror pc
  104f5c:	00104f7c 	andseq	r4, r0, ip, ror pc
  104f60:	00104f70 	andseq	r4, r0, r0, ror pc
  104f64:	00104f70 	andseq	r4, r0, r0, ror pc
  104f68:	00104f70 	andseq	r4, r0, r0, ror pc
  104f6c:	00104f70 	andseq	r4, r0, r0, ror pc
  104f70:	e30f0080 	movw	r0, #61568	; 0xf080
  104f74:	e34002fa 	movt	r0, #762	; 0x2fa
  104f78:	e12fff1e 	bx	lr
  104f7c:	e3a00cc2 	mov	r0, #49664	; 0xc200
  104f80:	e3400beb 	movt	r0, #3051	; 0xbeb
  104f84:	e12fff1e 	bx	lr
  104f88:	e3a00c87 	mov	r0, #34560	; 0x8700
  104f8c:	e3400393 	movt	r0, #915	; 0x393
  104f90:	e12fff1e 	bx	lr
  104f94:	e3070840 	movw	r0, #30784	; 0x7840
  104f98:	e340017d 	movt	r0, #381	; 0x17d
  104f9c:	e12fff1e 	bx	lr
  104fa0:	e3050940 	movw	r0, #22848	; 0x5940
  104fa4:	e3400773 	movt	r0, #1907	; 0x773
  104fa8:	e12fff1e 	bx	lr
  104fac:	e3a00000 	mov	r0, #0
  104fb0:	e12fff1e 	bx	lr
  104fb4:	e3060bcb 	movw	r0, #27595	; 0x6bcb
  104fb8:	e340069f 	movt	r0, #1695	; 0x69f
  104fbc:	e12fff1e 	bx	lr
  104fc0:	e3a00fe6 	mov	r0, #920	; 0x398
  104fc4:	e340009b 	movt	r0, #155	; 0x9b
  104fc8:	e12fff1e 	bx	lr
  104fcc:	e3a00ce1 	mov	r0, #57600	; 0xe100
  104fd0:	e34005f5 	movt	r0, #1525	; 0x5f5
  104fd4:	e12fff1e 	bx	lr
  104fd8:	e3000541 	movw	r0, #1345	; 0x541
  104fdc:	e3410fca 	movt	r0, #8138	; 0x1fca
  104fe0:	e12fff1e 	bx	lr
  104fe4:	e3090cc0 	movw	r0, #40128	; 0x9cc0
  104fe8:	e34207c1 	movt	r0, #10177	; 0x27c1
  104fec:	e12fff1e 	bx	lr
  104ff0:	e3040ddc 	movw	r0, #19932	; 0x4ddc
  104ff4:	e340016b 	movt	r0, #363	; 0x16b
  104ff8:	e12fff1e 	bx	lr

00104ffc <CSP_PM_SysClkEn>:
  104ffc:	e3500003 	cmp	r0, #3
  105000:	812fff1e 	bxhi	lr
  105004:	e3500001 	cmp	r0, #1
  105008:	0a00000e 	beq	105048 <CSP_PM_SysClkEn+0x4c>
  10500c:	2a000005 	bcs	105028 <CSP_PM_SysClkEn+0x2c>
  105010:	e3043fff 	movw	r3, #20479	; 0x4fff
  105014:	e34f3fa0 	movt	r3, #65440	; 0xffa0
  105018:	e5132fdf 	ldr	r2, [r3, #-4063]	; 0xfffff021
  10501c:	e3822001 	orr	r2, r2, #1
  105020:	e5032fdf 	str	r2, [r3, #-4063]	; 0xfffff021
  105024:	e12fff1e 	bx	lr
  105028:	e3500002 	cmp	r0, #2
  10502c:	112fff1e 	bxne	lr
  105030:	e3043fff 	movw	r3, #20479	; 0x4fff
  105034:	e34f3fa0 	movt	r3, #65440	; 0xffa0
  105038:	e5132f9f 	ldr	r2, [r3, #-3999]	; 0xfffff061
  10503c:	e3822001 	orr	r2, r2, #1
  105040:	e5032f9f 	str	r2, [r3, #-3999]	; 0xfffff061
  105044:	e12fff1e 	bx	lr
  105048:	e3043fff 	movw	r3, #20479	; 0x4fff
  10504c:	e34f3fa0 	movt	r3, #65440	; 0xffa0
  105050:	e5132f5f 	ldr	r2, [r3, #-3935]	; 0xfffff0a1
  105054:	e3822001 	orr	r2, r2, #1
  105058:	e5032f5f 	str	r2, [r3, #-3935]	; 0xfffff0a1
  10505c:	e12fff1e 	bx	lr

00105060 <CSP_PM_SysClkDis>:
  105060:	e3500003 	cmp	r0, #3
  105064:	812fff1e 	bxhi	lr
  105068:	e3500001 	cmp	r0, #1
  10506c:	0a00000e 	beq	1050ac <CSP_PM_SysClkDis+0x4c>
  105070:	2a000005 	bcs	10508c <CSP_PM_SysClkDis+0x2c>
  105074:	e3043fff 	movw	r3, #20479	; 0x4fff
  105078:	e34f3fa0 	movt	r3, #65440	; 0xffa0
  10507c:	e5132fdf 	ldr	r2, [r3, #-4063]	; 0xfffff021
  105080:	e3c22001 	bic	r2, r2, #1
  105084:	e5032fdf 	str	r2, [r3, #-4063]	; 0xfffff021
  105088:	e12fff1e 	bx	lr
  10508c:	e3500002 	cmp	r0, #2
  105090:	112fff1e 	bxne	lr
  105094:	e3043fff 	movw	r3, #20479	; 0x4fff
  105098:	e34f3fa0 	movt	r3, #65440	; 0xffa0
  10509c:	e5132f9f 	ldr	r2, [r3, #-3999]	; 0xfffff061
  1050a0:	e3c22001 	bic	r2, r2, #1
  1050a4:	e5032f9f 	str	r2, [r3, #-3999]	; 0xfffff061
  1050a8:	e12fff1e 	bx	lr
  1050ac:	e3043fff 	movw	r3, #20479	; 0x4fff
  1050b0:	e34f3fa0 	movt	r3, #65440	; 0xffa0
  1050b4:	e5132f5f 	ldr	r2, [r3, #-3935]	; 0xfffff0a1
  1050b8:	e3c22001 	bic	r2, r2, #1
  1050bc:	e5032f5f 	str	r2, [r3, #-3935]	; 0xfffff0a1
  1050c0:	e12fff1e 	bx	lr

001050c4 <CSP_PM_SysClkFreqGet>:
  1050c4:	e3040355 	movw	r0, #17237	; 0x4355
  1050c8:	e34103de 	movt	r0, #5086	; 0x13de
  1050cc:	e12fff1e 	bx	lr

001050d0 <CSP_PM_SysClkDivCfg>:
  1050d0:	e24dd008 	sub	sp, sp, #8
  1050d4:	e3a00001 	mov	r0, #1
  1050d8:	e28dd008 	add	sp, sp, #8
  1050dc:	e12fff1e 	bx	lr

001050e0 <CSP_TmrCfg>:
  1050e0:	e3500001 	cmp	r0, #1
  1050e4:	e92d40f0 	push	{r4, r5, r6, r7, lr}
  1050e8:	e1a04000 	mov	r4, r0
  1050ec:	e24dd00c 	sub	sp, sp, #12
  1050f0:	9a000002 	bls	105100 <CSP_TmrCfg+0x20>
  1050f4:	e3a00000 	mov	r0, #0
  1050f8:	e28dd00c 	add	sp, sp, #12
  1050fc:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
  105100:	e2205001 	eor	r5, r0, #1
  105104:	e3510000 	cmp	r1, #0
  105108:	13a05000 	movne	r5, #0
  10510c:	02055001 	andeq	r5, r5, #1
  105110:	e3550000 	cmp	r5, #0
  105114:	1afffff6 	bne	1050f4 <CSP_TmrCfg+0x14>
  105118:	e3a00002 	mov	r0, #2
  10511c:	e58d1004 	str	r1, [sp, #4]
  105120:	ebffffe7 	bl	1050c4 <CSP_PM_SysClkFreqGet>
  105124:	e3540000 	cmp	r4, #0
  105128:	e1a06000 	mov	r6, r0
  10512c:	11a00005 	movne	r0, r5
  105130:	1afffff0 	bne	1050f8 <CSP_TmrCfg+0x18>
  105134:	eb000035 	bl	105210 <CPU_SR_Save>
  105138:	e34f58f0 	movt	r5, #63728	; 0xf8f0
  10513c:	e59d1004 	ldr	r1, [sp, #4]
  105140:	e5854600 	str	r4, [r5, #1536]	; 0x600
  105144:	e3a04001 	mov	r4, #1
  105148:	e585460c 	str	r4, [r5, #1548]	; 0x60c
  10514c:	e1a07000 	mov	r7, r0
  105150:	e1a00006 	mov	r0, r6
  105154:	eb000647 	bl	106a78 <__aeabi_uidiv>
  105158:	e2400001 	sub	r0, r0, #1
  10515c:	e5850600 	str	r0, [r5, #1536]	; 0x600
  105160:	e5953608 	ldr	r3, [r5, #1544]	; 0x608
  105164:	e1a00007 	mov	r0, r7
  105168:	e3833006 	orr	r3, r3, #6
  10516c:	e5853608 	str	r3, [r5, #1544]	; 0x608
  105170:	eb00002a 	bl	105220 <CPU_SR_Restore>
  105174:	e1a00004 	mov	r0, r4
  105178:	eaffffde 	b	1050f8 <CSP_TmrCfg+0x18>

0010517c <CSP_TmrOutCmpCfg>:
  10517c:	e3a00001 	mov	r0, #1
  105180:	e12fff1e 	bx	lr

00105184 <CSP_TmrIntClr>:
  105184:	e3500001 	cmp	r0, #1
  105188:	812fff1e 	bxhi	lr
  10518c:	e3500000 	cmp	r0, #0
  105190:	03a03000 	moveq	r3, #0
  105194:	034f38f0 	movteq	r3, #63728	; 0xf8f0
  105198:	03a02001 	moveq	r2, #1
  10519c:	0583260c 	streq	r2, [r3, #1548]	; 0x60c
  1051a0:	e12fff1e 	bx	lr

001051a4 <CSP_TmrRst>:
  1051a4:	e12fff1e 	bx	lr

001051a8 <CSP_TmrRd>:
  1051a8:	e3a00000 	mov	r0, #0
  1051ac:	e12fff1e 	bx	lr

001051b0 <CSP_TmrStart>:
  1051b0:	e3500001 	cmp	r0, #1
  1051b4:	812fff1e 	bxhi	lr
  1051b8:	e3500000 	cmp	r0, #0
  1051bc:	03a03000 	moveq	r3, #0
  1051c0:	034f38f0 	movteq	r3, #63728	; 0xf8f0
  1051c4:	05932608 	ldreq	r2, [r3, #1544]	; 0x608
  1051c8:	03822001 	orreq	r2, r2, #1
  1051cc:	05832608 	streq	r2, [r3, #1544]	; 0x608
  1051d0:	e12fff1e 	bx	lr

001051d4 <CSP_TmrStop>:
  1051d4:	e12fff1e 	bx	lr

001051d8 <CSP_TmrWr>:
  1051d8:	e12fff1e 	bx	lr

001051dc <CSP_IntVectClr>:
  1051dc:	e3a03000 	mov	r3, #0
  1051e0:	e5803000 	str	r3, [r0]
  1051e4:	e5803004 	str	r3, [r0, #4]
  1051e8:	e12fff1e 	bx	lr

001051ec <CSP_IntVectSet>:
  1051ec:	e8800006 	stm	r0, {r1, r2}
  1051f0:	e12fff1e 	bx	lr

001051f4 <CSP_IntVectDeref>:
  1051f4:	e92d4008 	push	{r3, lr}
  1051f8:	e5903000 	ldr	r3, [r0]
  1051fc:	e5900004 	ldr	r0, [r0, #4]
  105200:	e3530000 	cmp	r3, #0
  105204:	08bd8008 	popeq	{r3, pc}
  105208:	e12fff33 	blx	r3
  10520c:	e8bd8008 	pop	{r3, pc}

00105210 <CPU_SR_Save>:
  105210:	e10f0000 	mrs	r0, CPSR
  105214:	e38010c0 	orr	r1, r0, #192	; 0xc0
  105218:	e121f001 	msr	CPSR_c, r1
  10521c:	e12fff1e 	bx	lr

00105220 <CPU_SR_Restore>:
  105220:	e121f000 	msr	CPSR_c, r0
  105224:	e12fff1e 	bx	lr

00105228 <CPU_IntDis>:
  105228:	e10f0000 	mrs	r0, CPSR
  10522c:	e38000c0 	orr	r0, r0, #192	; 0xc0
  105230:	e121f000 	msr	CPSR_c, r0
  105234:	e12fff1e 	bx	lr

00105238 <CPU_IntEn>:
  105238:	e10f0000 	mrs	r0, CPSR
  10523c:	e3c000c0 	bic	r0, r0, #192	; 0xc0
  105240:	e121f000 	msr	CPSR_c, r0
  105244:	e12fff1e 	bx	lr

00105248 <CPU_IRQ_Dis>:
  105248:	e10f0000 	mrs	r0, CPSR
  10524c:	e3800080 	orr	r0, r0, #128	; 0x80
  105250:	e121f000 	msr	CPSR_c, r0
  105254:	e12fff1e 	bx	lr

00105258 <CPU_IRQ_En>:
  105258:	e10f0000 	mrs	r0, CPSR
  10525c:	e3c00080 	bic	r0, r0, #128	; 0x80
  105260:	e121f000 	msr	CPSR_c, r0
  105264:	e12fff1e 	bx	lr

00105268 <CPU_FIQ_Dis>:
  105268:	e10f0000 	mrs	r0, CPSR
  10526c:	e3800040 	orr	r0, r0, #64	; 0x40
  105270:	e121f000 	msr	CPSR_c, r0
  105274:	e12fff1e 	bx	lr

00105278 <CPU_FIQ_En>:
  105278:	e10f0000 	mrs	r0, CPSR
  10527c:	e3c00040 	bic	r0, r0, #64	; 0x40
  105280:	e121f000 	msr	CPSR_c, r0
  105284:	e12fff1e 	bx	lr

00105288 <CPU_CntLeadZeros>:
  105288:	e16f0f10 	clz	r0, r0
  10528c:	e12fff1e 	bx	lr

00105290 <CPU_PMU_Dis>:
  105290:	ee190f1c 	mrc	15, 0, r0, cr9, cr12, {0}
  105294:	e3c00004 	bic	r0, r0, #4
  105298:	ee090f1c 	mcr	15, 0, r0, cr9, cr12, {0}
  10529c:	e12fff1e 	bx	lr

001052a0 <CPU_PMU_En>:
  1052a0:	ee190f1c 	mrc	15, 0, r0, cr9, cr12, {0}
  1052a4:	e3800001 	orr	r0, r0, #1
  1052a8:	ee090f1c 	mcr	15, 0, r0, cr9, cr12, {0}
  1052ac:	e12fff1e 	bx	lr

001052b0 <CPU_PMU_Rst>:
  1052b0:	ee190f1c 	mrc	15, 0, r0, cr9, cr12, {0}
  1052b4:	e3800006 	orr	r0, r0, #6
  1052b8:	ee090f1c 	mcr	15, 0, r0, cr9, cr12, {0}
  1052bc:	e12fff1e 	bx	lr

001052c0 <CPU_PMU_CtrDis>:
  1052c0:	e3500002 	cmp	r0, #2
  1052c4:	812fff1e 	bxhi	lr
  1052c8:	e3a01001 	mov	r1, #1
  1052cc:	e1a00011 	lsl	r0, r1, r0
  1052d0:	ee090f5c 	mcr	15, 0, r0, cr9, cr12, {2}
  1052d4:	e12fff1e 	bx	lr

001052d8 <CPU_PMU_CtrEn>:
  1052d8:	e3500002 	cmp	r0, #2
  1052dc:	812fff1e 	bxhi	lr
  1052e0:	e3a01001 	mov	r1, #1
  1052e4:	e1a00011 	lsl	r0, r1, r0
  1052e8:	ee090f3c 	mcr	15, 0, r0, cr9, cr12, {1}
  1052ec:	e12fff1e 	bx	lr

001052f0 <CPU_PMU_CtrEventSet>:
  1052f0:	e3500002 	cmp	r0, #2
  1052f4:	812fff1e 	bxhi	lr
  1052f8:	ee192fbc 	mrc	15, 0, r2, cr9, cr12, {5}
  1052fc:	e3c2201f 	bic	r2, r2, #31
  105300:	e1822000 	orr	r2, r2, r0
  105304:	ee092fbc 	mcr	15, 0, r2, cr9, cr12, {5}
  105308:	ee192f3d 	mrc	15, 0, r2, cr9, cr13, {1}
  10530c:	e3c220ff 	bic	r2, r2, #255	; 0xff
  105310:	e1822001 	orr	r2, r2, r1
  105314:	ee092f3d 	mcr	15, 0, r2, cr9, cr13, {1}
  105318:	e12fff1e 	bx	lr

0010531c <CPU_PMU_CtrGet>:
  10531c:	e3500002 	cmp	r0, #2
  105320:	812fff1e 	bxhi	lr
  105324:	ee191fbc 	mrc	15, 0, r1, cr9, cr12, {5}
  105328:	e3c1101f 	bic	r1, r1, #31
  10532c:	e1811000 	orr	r1, r1, r0
  105330:	ee091fbc 	mcr	15, 0, r1, cr9, cr12, {5}
  105334:	ee190f5d 	mrc	15, 0, r0, cr9, cr13, {2}
  105338:	e12fff1e 	bx	lr

0010533c <CPU_PMU_CtrRst>:
  10533c:	e3500002 	cmp	r0, #2
  105340:	812fff1e 	bxhi	lr
  105344:	ee191fbc 	mrc	15, 0, r1, cr9, cr12, {5}
  105348:	e3c1101f 	bic	r1, r1, #31
  10534c:	e1811000 	orr	r1, r1, r0
  105350:	ee091fbc 	mcr	15, 0, r1, cr9, cr12, {5}
  105354:	e3a00000 	mov	r0, #0
  105358:	ee090f5d 	mcr	15, 0, r0, cr9, cr13, {2}
  10535c:	e12fff1e 	bx	lr

00105360 <CPU_PMU_CtrCycleDis>:
  105360:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
  105364:	ee090f5c 	mcr	15, 0, r0, cr9, cr12, {2}
  105368:	e12fff1e 	bx	lr

0010536c <CPU_PMU_CtrCycleEn>:
  10536c:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
  105370:	ee090f3c 	mcr	15, 0, r0, cr9, cr12, {1}
  105374:	e12fff1e 	bx	lr

00105378 <CPU_PMU_CtrCycleGet>:
  105378:	ee190f1d 	mrc	15, 0, r0, cr9, cr13, {0}
  10537c:	e12fff1e 	bx	lr

00105380 <CPU_PMU_CtrCycleRst>:
  105380:	ee190f1c 	mrc	15, 0, r0, cr9, cr12, {0}
  105384:	e3800004 	orr	r0, r0, #4
  105388:	ee090f1c 	mcr	15, 0, r0, cr9, cr12, {0}
  10538c:	e12fff1e 	bx	lr

00105390 <CPU_MMU_En>:
  105390:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
  105394:	e3800001 	orr	r0, r0, #1
  105398:	f57ff04f 	dsb	sy
  10539c:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
  1053a0:	f57ff06f 	isb	sy
  1053a4:	e12fff1e 	bx	lr

001053a8 <CPU_MMU_Dis>:
  1053a8:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
  1053ac:	e3c00001 	bic	r0, r0, #1
  1053b0:	f57ff04f 	dsb	sy
  1053b4:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
  1053b8:	e12fff1e 	bx	lr

001053bc <CPU_MMU_RegionEn>:
  1053bc:	e92d0030 	push	{r4, r5}
  1053c0:	ee104f90 	mrc	15, 0, r4, cr0, cr0, {4}
  1053c4:	e1a04424 	lsr	r4, r4, #8
  1053c8:	e204400f 	and	r4, r4, #15
  1053cc:	e1500004 	cmp	r0, r4
  1053d0:	5a000013 	bpl	105424 <CPU_MMU_RegionEnExitFail>
  1053d4:	e353001f 	cmp	r3, #31
  1053d8:	ba000011 	blt	105424 <CPU_MMU_RegionEnExitFail>
  1053dc:	ee060f12 	mcr	15, 0, r0, cr6, cr2, {0}
  1053e0:	ee164f51 	mrc	15, 0, r4, cr6, cr1, {2}
  1053e4:	e2044001 	and	r4, r4, #1
  1053e8:	e3540000 	cmp	r4, #0
  1053ec:	1a00000c 	bne	105424 <CPU_MMU_RegionEnExitFail>
  1053f0:	ee061f11 	mcr	15, 0, r1, cr6, cr1, {0}
  1053f4:	e59d4008 	ldr	r4, [sp, #8]
  1053f8:	ee064f91 	mcr	15, 0, r4, cr6, cr1, {4}
  1053fc:	e1a04402 	lsl	r4, r2, #8
  105400:	e16f5f13 	clz	r5, r3
  105404:	e265501f 	rsb	r5, r5, #31
  105408:	e1a05085 	lsl	r5, r5, #1
  10540c:	e1844005 	orr	r4, r4, r5
  105410:	e3844001 	orr	r4, r4, #1
  105414:	ee064f51 	mcr	15, 0, r4, cr6, cr1, {2}
  105418:	e3a00001 	mov	r0, #1
  10541c:	e8bd0030 	pop	{r4, r5}
  105420:	e12fff1e 	bx	lr

00105424 <CPU_MMU_RegionEnExitFail>:
  105424:	e3a00000 	mov	r0, #0
  105428:	e8bd0030 	pop	{r4, r5}
  10542c:	e12fff1e 	bx	lr

00105430 <CPU_MMU_RegionDis>:
  105430:	ee101f90 	mrc	15, 0, r1, cr0, cr0, {4}
  105434:	e1a01421 	lsr	r1, r1, #8
  105438:	e201100f 	and	r1, r1, #15
  10543c:	e1500001 	cmp	r0, r1
  105440:	5a000001 	bpl	10544c <CPU_MMU_RegionDisExit>
  105444:	e3a01000 	mov	r1, #0
  105448:	ee061f51 	mcr	15, 0, r1, cr6, cr1, {2}

0010544c <CPU_MMU_RegionDisExit>:
  10544c:	e12fff1e 	bx	lr

00105450 <CPU_CtxID_Set>:
  105450:	ee0d0f30 	mcr	15, 0, r0, cr13, cr0, {1}
  105454:	e12fff1e 	bx	lr

00105458 <CPU_CtxID_Get>:
  105458:	ee1d0f30 	mrc	15, 0, r0, cr13, cr0, {1}
  10545c:	e12fff1e 	bx	lr

00105460 <CPU_Init>:
  105460:	e12fff1e 	bx	lr

00105464 <CPU_SW_Exception>:
  105464:	eafffffe 	b	105464 <CPU_SW_Exception>

00105468 <CPU_CntLeadZeros08>:
  105468:	e92d4008 	push	{r3, lr}
  10546c:	ebffff85 	bl	105288 <CPU_CntLeadZeros>
  105470:	e2400018 	sub	r0, r0, #24
  105474:	e8bd8008 	pop	{r3, pc}

00105478 <CPU_CntLeadZeros16>:
  105478:	e92d4008 	push	{r3, lr}
  10547c:	ebffff81 	bl	105288 <CPU_CntLeadZeros>
  105480:	e2400010 	sub	r0, r0, #16
  105484:	e8bd8008 	pop	{r3, pc}

00105488 <CPU_CntLeadZeros32>:
  105488:	eaffff7e 	b	105288 <CPU_CntLeadZeros>

0010548c <CPU_CntLeadZeros64>:
  10548c:	e3e02000 	mvn	r2, #0
  105490:	e3a03000 	mov	r3, #0
  105494:	e1530001 	cmp	r3, r1
  105498:	01520000 	cmpeq	r2, r0
  10549c:	2a000011 	bcs	1054e8 <CPU_CntLeadZeros64+0x5c>
  1054a0:	e3e02000 	mvn	r2, #0
  1054a4:	e30f3fff 	movw	r3, #65535	; 0xffff
  1054a8:	e1530001 	cmp	r3, r1
  1054ac:	01520000 	cmpeq	r2, r0
  1054b0:	e3e02000 	mvn	r2, #0
  1054b4:	2a000025 	bcs	105550 <CPU_CntLeadZeros64+0xc4>
  1054b8:	e3e034ff 	mvn	r3, #-16777216	; 0xff000000
  1054bc:	e1530001 	cmp	r3, r1
  1054c0:	01520000 	cmpeq	r2, r0
  1054c4:	31a02c21 	lsrcc	r2, r1, #24
  1054c8:	e30732b8 	movw	r3, #29368	; 0x72b8
  1054cc:	21a02821 	lsrcs	r2, r1, #16
  1054d0:	33403010 	movtcc	r3, #16
  1054d4:	23403010 	movtcs	r3, #16
  1054d8:	37d30002 	ldrbcc	r0, [r3, r2]
  1054dc:	27d30002 	ldrbcs	r0, [r3, r2]
  1054e0:	22800008 	addcs	r0, r0, #8
  1054e4:	e12fff1e 	bx	lr
  1054e8:	e30f2fff 	movw	r2, #65535	; 0xffff
  1054ec:	e3a03000 	mov	r3, #0
  1054f0:	e1530001 	cmp	r3, r1
  1054f4:	01520000 	cmpeq	r2, r0
  1054f8:	2a00000b 	bcs	10552c <CPU_CntLeadZeros64+0xa0>
  1054fc:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
  105500:	e3a03000 	mov	r3, #0
  105504:	e1530001 	cmp	r3, r1
  105508:	01520000 	cmpeq	r2, r0
  10550c:	2a00001c 	bcs	105584 <CPU_CntLeadZeros64+0xf8>
  105510:	e1a03c20 	lsr	r3, r0, #24
  105514:	e30722b8 	movw	r2, #29368	; 0x72b8
  105518:	e1833401 	orr	r3, r3, r1, lsl #8
  10551c:	e3402010 	movt	r2, #16
  105520:	e7d20003 	ldrb	r0, [r2, r3]
  105524:	e2800020 	add	r0, r0, #32
  105528:	e12fff1e 	bx	lr
  10552c:	e3510000 	cmp	r1, #0
  105530:	035000ff 	cmpeq	r0, #255	; 0xff
  105534:	8a000019 	bhi	1055a0 <CPU_CntLeadZeros64+0x114>
  105538:	e30732b8 	movw	r3, #29368	; 0x72b8
  10553c:	e3403010 	movt	r3, #16
  105540:	e0830000 	add	r0, r3, r0
  105544:	e5d00000 	ldrb	r0, [r0]
  105548:	e2800038 	add	r0, r0, #56	; 0x38
  10554c:	e12fff1e 	bx	lr
  105550:	e3a030ff 	mov	r3, #255	; 0xff
  105554:	e1530001 	cmp	r3, r1
  105558:	01520000 	cmpeq	r2, r0
  10555c:	31a02421 	lsrcc	r2, r1, #8
  105560:	e30732b8 	movw	r3, #29368	; 0x72b8
  105564:	33403010 	movtcc	r3, #16
  105568:	23403010 	movtcs	r3, #16
  10556c:	21a02001 	movcs	r2, r1
  105570:	37d30002 	ldrbcc	r0, [r3, r2]
  105574:	32800010 	addcc	r0, r0, #16
  105578:	27d30002 	ldrbcs	r0, [r3, r2]
  10557c:	22800018 	addcs	r0, r0, #24
  105580:	e12fff1e 	bx	lr
  105584:	e1a03820 	lsr	r3, r0, #16
  105588:	e30722b8 	movw	r2, #29368	; 0x72b8
  10558c:	e1833801 	orr	r3, r3, r1, lsl #16
  105590:	e3402010 	movt	r2, #16
  105594:	e7d20003 	ldrb	r0, [r2, r3]
  105598:	e2800028 	add	r0, r0, #40	; 0x28
  10559c:	e12fff1e 	bx	lr
  1055a0:	e1a03420 	lsr	r3, r0, #8
  1055a4:	e30722b8 	movw	r2, #29368	; 0x72b8
  1055a8:	e1833c01 	orr	r3, r3, r1, lsl #24
  1055ac:	e3402010 	movt	r2, #16
  1055b0:	e7d20003 	ldrb	r0, [r2, r3]
  1055b4:	e2800030 	add	r0, r0, #48	; 0x30
  1055b8:	e12fff1e 	bx	lr

001055bc <CPU_CntTrailZeros>:
  1055bc:	e3500000 	cmp	r0, #0
  1055c0:	e92d4008 	push	{r3, lr}
  1055c4:	1a000001 	bne	1055d0 <CPU_CntTrailZeros+0x14>
  1055c8:	e3a00020 	mov	r0, #32
  1055cc:	e8bd8008 	pop	{r3, pc}
  1055d0:	e2603000 	rsb	r3, r0, #0
  1055d4:	e0030000 	and	r0, r3, r0
  1055d8:	ebffff2a 	bl	105288 <CPU_CntLeadZeros>
  1055dc:	e260001f 	rsb	r0, r0, #31
  1055e0:	e8bd8008 	pop	{r3, pc}

001055e4 <CPU_CntTrailZeros08>:
  1055e4:	e3500000 	cmp	r0, #0
  1055e8:	e92d4008 	push	{r3, lr}
  1055ec:	1a000001 	bne	1055f8 <CPU_CntTrailZeros08+0x14>
  1055f0:	e3a00008 	mov	r0, #8
  1055f4:	e8bd8008 	pop	{r3, pc}
  1055f8:	e2603000 	rsb	r3, r0, #0
  1055fc:	e0000003 	and	r0, r0, r3
  105600:	ebffff98 	bl	105468 <CPU_CntLeadZeros08>
  105604:	e2600007 	rsb	r0, r0, #7
  105608:	e8bd8008 	pop	{r3, pc}

0010560c <CPU_CntTrailZeros16>:
  10560c:	e3500000 	cmp	r0, #0
  105610:	e92d4008 	push	{r3, lr}
  105614:	1a000001 	bne	105620 <CPU_CntTrailZeros16+0x14>
  105618:	e3a00010 	mov	r0, #16
  10561c:	e8bd8008 	pop	{r3, pc}
  105620:	e2603000 	rsb	r3, r0, #0
  105624:	e0000003 	and	r0, r0, r3
  105628:	ebffff92 	bl	105478 <CPU_CntLeadZeros16>
  10562c:	e260000f 	rsb	r0, r0, #15
  105630:	e8bd8008 	pop	{r3, pc}

00105634 <CPU_CntTrailZeros32>:
  105634:	e3500000 	cmp	r0, #0
  105638:	e92d4008 	push	{r3, lr}
  10563c:	1a000001 	bne	105648 <CPU_CntTrailZeros32+0x14>
  105640:	e3a00020 	mov	r0, #32
  105644:	e8bd8008 	pop	{r3, pc}
  105648:	e2603000 	rsb	r3, r0, #0
  10564c:	e0030000 	and	r0, r3, r0
  105650:	ebffff0c 	bl	105288 <CPU_CntLeadZeros>
  105654:	e260001f 	rsb	r0, r0, #31
  105658:	e8bd8008 	pop	{r3, pc}

0010565c <CPU_CntTrailZeros64>:
  10565c:	e92d4008 	push	{r3, lr}
  105660:	e1903001 	orrs	r3, r0, r1
  105664:	1a000001 	bne	105670 <CPU_CntTrailZeros64+0x14>
  105668:	e3a00040 	mov	r0, #64	; 0x40
  10566c:	e8bd8008 	pop	{r3, pc}
  105670:	e2702000 	rsbs	r2, r0, #0
  105674:	e2e13000 	rsc	r3, r1, #0
  105678:	e0000002 	and	r0, r0, r2
  10567c:	e0011003 	and	r1, r1, r3
  105680:	ebffff81 	bl	10548c <CPU_CntLeadZeros64>
  105684:	e260003f 	rsb	r0, r0, #63	; 0x3f
  105688:	e8bd8008 	pop	{r3, pc}

0010568c <enable_caches>:
  10568c:	e12fff1e 	bx	lr

00105690 <disable_caches>:
  105690:	e92d4008 	push	{r3, lr}
  105694:	eb000258 	bl	105ffc <Xil_DCacheDisable>
  105698:	e8bd4008 	pop	{r3, lr}
  10569c:	ea00024d 	b	105fd8 <Xil_ICacheDisable>

001056a0 <init_uart>:
  1056a0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
  1056a4:	e3a00000 	mov	r0, #0
  1056a8:	e24dd044 	sub	sp, sp, #68	; 0x44
  1056ac:	eb000490 	bl	1068f4 <XUartPs_LookupConfig>
  1056b0:	e1a01000 	mov	r1, r0
  1056b4:	e28d0004 	add	r0, sp, #4
  1056b8:	e5912004 	ldr	r2, [r1, #4]
  1056bc:	eb000443 	bl	1067d0 <XUartPs_CfgInitialize>
  1056c0:	e28d0004 	add	r0, sp, #4
  1056c4:	e3a01cc2 	mov	r1, #49664	; 0xc200
  1056c8:	e3401001 	movt	r1, #1
  1056cc:	eb0003cf 	bl	106610 <XUartPs_SetBaudRate>
  1056d0:	e28dd044 	add	sp, sp, #68	; 0x44
  1056d4:	e8bd8000 	ldmfd	sp!, {pc}

001056d8 <init_platform>:
  1056d8:	eafffff0 	b	1056a0 <init_uart>

001056dc <cleanup_platform>:
  1056dc:	eaffffeb 	b	105690 <disable_caches>

001056e0 <BSP_Init>:
  1056e0:	e92d4008 	push	{r3, lr}
  1056e4:	eb00003d 	bl	1057e0 <guest_CPU_IntDis>
  1056e8:	eb00003e 	bl	1057e8 <guest_Xil_ICacheEnable>
  1056ec:	eb00003e 	bl	1057ec <guest_Xil_DCacheEnable>
  1056f0:	e8bd4008 	pop	{r3, lr}
  1056f4:	eafffd8a 	b	104d24 <CSP_IntInit>

001056f8 <BSP_CPU_ClkFreq>:
  1056f8:	e3040b40 	movw	r0, #19264	; 0x4b40
  1056fc:	e340004c 	movt	r0, #76	; 0x4c
  105700:	e12fff1e 	bx	lr

00105704 <OS_CSP_BSP_ExceptHandler>:
  105704:	e3500004 	cmp	r0, #4
  105708:	812fff1e 	bxhi	lr
  10570c:	eafffffe 	b	10570c <OS_CSP_BSP_ExceptHandler+0x8>

00105710 <BSP_OS_SemCreate>:
  105710:	e92d4030 	push	{r4, r5, lr}
  105714:	e1a04000 	mov	r4, r0
  105718:	e24dd00c 	sub	sp, sp, #12
  10571c:	e1a00001 	mov	r0, r1
  105720:	e1a05002 	mov	r5, r2
  105724:	ebfff2c4 	bl	10223c <OSSemCreate>
  105728:	e2503000 	subs	r3, r0, #0
  10572c:	01a00003 	moveq	r0, r3
  105730:	0a000004 	beq	105748 <BSP_OS_SemCreate+0x38>
  105734:	e5843000 	str	r3, [r4]
  105738:	e1a01005 	mov	r1, r5
  10573c:	e28d2007 	add	r2, sp, #7
  105740:	ebffeaa3 	bl	1001d4 <OSEventNameSet>
  105744:	e3a00001 	mov	r0, #1
  105748:	e28dd00c 	add	sp, sp, #12
  10574c:	e8bd8030 	pop	{r4, r5, pc}

00105750 <BSP_OS_SemWait>:
  105750:	e3a02ffa 	mov	r2, #1000	; 0x3e8
  105754:	e3043dd3 	movw	r3, #19923	; 0x4dd3
  105758:	e0010192 	mul	r1, r2, r1
  10575c:	e3413062 	movt	r3, #4194	; 0x1062
  105760:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
  105764:	e24dd00c 	sub	sp, sp, #12
  105768:	e5900000 	ldr	r0, [r0]
  10576c:	e28d2007 	add	r2, sp, #7
  105770:	e081c193 	umull	ip, r1, r3, r1
  105774:	e1a01321 	lsr	r1, r1, #6
  105778:	ebfff321 	bl	102404 <OSSemPend>
  10577c:	e5dd0007 	ldrb	r0, [sp, #7]
  105780:	e2700001 	rsbs	r0, r0, #1
  105784:	33a00000 	movcc	r0, #0
  105788:	e28dd00c 	add	sp, sp, #12
  10578c:	e8bd8000 	ldmfd	sp!, {pc}

00105790 <BSP_OS_SemPost>:
  105790:	e92d4008 	push	{r3, lr}
  105794:	e5900000 	ldr	r0, [r0]
  105798:	ebfff396 	bl	1025f8 <OSSemPost>
  10579c:	e2700001 	rsbs	r0, r0, #1
  1057a0:	33a00000 	movcc	r0, #0
  1057a4:	e8bd8008 	pop	{r3, pc}

001057a8 <BSP_OS_TimeDlyMs>:
  1057a8:	e3042dd3 	movw	r2, #19923	; 0x4dd3
  1057ac:	e3023710 	movw	r3, #10000	; 0x2710
  1057b0:	e3412062 	movt	r2, #4194	; 0x1062
  1057b4:	e1500003 	cmp	r0, r3
  1057b8:	31a03000 	movcc	r3, r0
  1057bc:	e3a0cffa 	mov	ip, #1000	; 0x3e8
  1057c0:	e3a00000 	mov	r0, #0
  1057c4:	e0821392 	umull	r1, r2, r2, r3
  1057c8:	e1a01000 	mov	r1, r0
  1057cc:	e1a02322 	lsr	r2, r2, #6
  1057d0:	e063329c 	mls	r3, ip, r2, r3
  1057d4:	e6ef2072 	uxtb	r2, r2
  1057d8:	e6ff3073 	uxth	r3, r3
  1057dc:	eafff6e3 	b	103370 <OSTimeDlyHMSM>

001057e0 <guest_CPU_IntDis>:
  1057e0:	ea000020 	b	105868 <sys_icache_disable>

001057e4 <guest_CPU_IntEn>:
  1057e4:	ea000029 	b	105890 <sys_icache_enable>

001057e8 <guest_Xil_ICacheEnable>:
  1057e8:	ea000028 	b	105890 <sys_icache_enable>

001057ec <guest_Xil_DCacheEnable>:
  1057ec:	ea000022 	b	10587c <sys_dcache_enable>

001057f0 <guest_CPU_CRITICAL_ENTER>:
  1057f0:	e3a00000 	mov	r0, #0
  1057f4:	e3a0101d 	mov	r1, #29
  1057f8:	eafffd33 	b	104ccc <CSP_IntDis>

001057fc <guest_CPU_CRITICAL_EXIT>:
  1057fc:	e3a00000 	mov	r0, #0
  105800:	e3a0101d 	mov	r1, #29
  105804:	eafffd3e 	b	104d04 <CSP_IntEn>

00105808 <guest_OS_ENTER_CRITICAL>:
  105808:	e3a00000 	mov	r0, #0
  10580c:	e3a0101d 	mov	r1, #29
  105810:	eafffd2d 	b	104ccc <CSP_IntDis>

00105814 <guest_OS_EXIT_CRITICAL>:
  105814:	e3a00000 	mov	r0, #0
  105818:	e3a0101d 	mov	r1, #29
  10581c:	eafffd38 	b	104d04 <CSP_IntEn>

00105820 <syscall>:
  105820:	e92d4000 	stmfd	sp!, {lr}
  105824:	ef000000 	svc	0x00000000
  105828:	e8bd8000 	ldmfd	sp!, {pc}

0010582c <sys_yield>:
  10582c:	e3a01000 	mov	r1, #0
  105830:	e3a00001 	mov	r0, #1
  105834:	e1a02001 	mov	r2, r1
  105838:	e1a03001 	mov	r3, r1
  10583c:	eafffff7 	b	105820 <syscall>

00105840 <sys_irq_enable>:
  105840:	e3a01000 	mov	r1, #0
  105844:	e3a00002 	mov	r0, #2
  105848:	e1a02001 	mov	r2, r1
  10584c:	e1a03001 	mov	r3, r1
  105850:	eafffff2 	b	105820 <syscall>

00105854 <sys_dcache_disable>:
  105854:	e3a01000 	mov	r1, #0
  105858:	e3a00003 	mov	r0, #3
  10585c:	e1a02001 	mov	r2, r1
  105860:	e1a03001 	mov	r3, r1
  105864:	eaffffed 	b	105820 <syscall>

00105868 <sys_icache_disable>:
  105868:	e3a01000 	mov	r1, #0
  10586c:	e3a00004 	mov	r0, #4
  105870:	e1a02001 	mov	r2, r1
  105874:	e1a03001 	mov	r3, r1
  105878:	eaffffe8 	b	105820 <syscall>

0010587c <sys_dcache_enable>:
  10587c:	e3a01000 	mov	r1, #0
  105880:	e3a00005 	mov	r0, #5
  105884:	e1a02001 	mov	r2, r1
  105888:	e1a03001 	mov	r3, r1
  10588c:	eaffffe3 	b	105820 <syscall>

00105890 <sys_icache_enable>:
  105890:	e3a01000 	mov	r1, #0
  105894:	e3a00006 	mov	r0, #6
  105898:	e1a02001 	mov	r2, r1
  10589c:	e1a03001 	mov	r3, r1
  1058a0:	eaffffde 	b	105820 <syscall>

001058a4 <sys_irq_disable>:
  1058a4:	e3a01000 	mov	r1, #0
  1058a8:	e3a00007 	mov	r0, #7
  1058ac:	e1a02001 	mov	r2, r1
  1058b0:	e1a03001 	mov	r3, r1
  1058b4:	eaffffd9 	b	105820 <syscall>

001058b8 <AppPrint>:
  1058b8:	e92d4030 	push	{r4, r5, lr}
  1058bc:	e30a4790 	movw	r4, #42896	; 0xa790
  1058c0:	e3404010 	movt	r4, #16
  1058c4:	e24dd00c 	sub	sp, sp, #12
  1058c8:	e1a05000 	mov	r5, r0
  1058cc:	e3a01000 	mov	r1, #0
  1058d0:	e28d2007 	add	r2, sp, #7
  1058d4:	e5940000 	ldr	r0, [r4]
  1058d8:	ebfff11b 	bl	101d4c <OSMutexPend>
  1058dc:	e1a00005 	mov	r0, r5
  1058e0:	eb00005b 	bl	105a54 <print>
  1058e4:	e5940000 	ldr	r0, [r4]
  1058e8:	ebfff1d1 	bl	102034 <OSMutexPost>
  1058ec:	e28dd00c 	add	sp, sp, #12
  1058f0:	e8bd8030 	pop	{r4, r5, pc}

001058f4 <AppTaskStart>:
  1058f4:	e92d4080 	push	{r7, lr}
  1058f8:	e30703d0 	movw	r0, #29648	; 0x73d0
  1058fc:	e24dd020 	sub	sp, sp, #32
  105900:	e3400010 	movt	r0, #16
  105904:	e3084240 	movw	r4, #33344	; 0x8240
  105908:	e3404010 	movt	r4, #16
  10590c:	eb000050 	bl	105a54 <print>
  105910:	e3a06000 	mov	r6, #0
  105914:	ebfff870 	bl	103adc <OS_CSP_TickInit>
  105918:	e3a05003 	mov	r5, #3
  10591c:	ebfff925 	bl	103db8 <Mem_Init>
  105920:	e3a07c02 	mov	r7, #512	; 0x200
  105924:	ebfff90b 	bl	103d58 <Math_Init>
  105928:	e3a00002 	mov	r0, #2
  10592c:	e2842e7f 	add	r2, r4, #2032	; 0x7f0
  105930:	e1a03000 	mov	r3, r0
  105934:	e1a01006 	mov	r1, r6
  105938:	e282200c 	add	r2, r2, #12
  10593c:	e58d0000 	str	r0, [sp]
  105940:	e3050a00 	movw	r0, #23040	; 0x5a00
  105944:	e58d4004 	str	r4, [sp, #4]
  105948:	e3400010 	movt	r0, #16
  10594c:	e58d7008 	str	r7, [sp, #8]
  105950:	e58d600c 	str	r6, [sp, #12]
  105954:	e58d5010 	str	r5, [sp, #16]
  105958:	ebfff42a 	bl	102a08 <OSTaskCreateExt>
  10595c:	e2842eff 	add	r2, r4, #4080	; 0xff0
  105960:	e1a03005 	mov	r3, r5
  105964:	e1a01006 	mov	r1, r6
  105968:	e282200c 	add	r2, r2, #12
  10596c:	e2844b02 	add	r4, r4, #2048	; 0x800
  105970:	e58d5000 	str	r5, [sp]
  105974:	e30509cc 	movw	r0, #22988	; 0x59cc
  105978:	e58d4004 	str	r4, [sp, #4]
  10597c:	e3400010 	movt	r0, #16
  105980:	e58d7008 	str	r7, [sp, #8]
  105984:	e58d600c 	str	r6, [sp, #12]
  105988:	e58d5010 	str	r5, [sp, #16]
  10598c:	ebfff41d 	bl	102a08 <OSTaskCreateExt>
  105990:	e3a00014 	mov	r0, #20
  105994:	e28d101f 	add	r1, sp, #31
  105998:	ebfff03f 	bl	101a9c <OSMutexCreate>
  10599c:	e30a3790 	movw	r3, #42896	; 0xa790
  1059a0:	e3403010 	movt	r3, #16
  1059a4:	e5830000 	str	r0, [r3]
  1059a8:	e3a00000 	mov	r0, #0
  1059ac:	e3a03064 	mov	r3, #100	; 0x64
  1059b0:	e1a01000 	mov	r1, r0
  1059b4:	e1a02000 	mov	r2, r0
  1059b8:	ebfff66c 	bl	103370 <OSTimeDlyHMSM>
  1059bc:	e30703e8 	movw	r0, #29672	; 0x73e8
  1059c0:	e3400010 	movt	r0, #16
  1059c4:	ebffffbb 	bl	1058b8 <AppPrint>
  1059c8:	eafffff6 	b	1059a8 <AppTaskStart+0xb4>

001059cc <AppTask2>:
  1059cc:	e30703ec 	movw	r0, #29676	; 0x73ec
  1059d0:	e3400010 	movt	r0, #16
  1059d4:	e92d4008 	push	{r3, lr}
  1059d8:	ebffffb6 	bl	1058b8 <AppPrint>
  1059dc:	e3a00000 	mov	r0, #0
  1059e0:	e3a02002 	mov	r2, #2
  1059e4:	e1a01000 	mov	r1, r0
  1059e8:	e1a03000 	mov	r3, r0
  1059ec:	ebfff65f 	bl	103370 <OSTimeDlyHMSM>
  1059f0:	e3070400 	movw	r0, #29696	; 0x7400
  1059f4:	e3400010 	movt	r0, #16
  1059f8:	ebffffae 	bl	1058b8 <AppPrint>
  1059fc:	eafffff6 	b	1059dc <AppTask2+0x10>

00105a00 <AppTask1>:
  105a00:	e3070404 	movw	r0, #29700	; 0x7404
  105a04:	e3400010 	movt	r0, #16
  105a08:	e92d4008 	push	{r3, lr}
  105a0c:	ebffffa9 	bl	1058b8 <AppPrint>
  105a10:	e3a00000 	mov	r0, #0
  105a14:	e3a02001 	mov	r2, #1
  105a18:	e1a01000 	mov	r1, r0
  105a1c:	e1a03000 	mov	r3, r0
  105a20:	ebfff652 	bl	103370 <OSTimeDlyHMSM>
  105a24:	e3070418 	movw	r0, #29720	; 0x7418
  105a28:	e3400010 	movt	r0, #16
  105a2c:	ebffffa1 	bl	1058b8 <AppPrint>
  105a30:	eafffff6 	b	105a10 <AppTask1+0x10>

00105a34 <App_TaskCreateHook>:
  105a34:	e12fff1e 	bx	lr

00105a38 <App_TaskDelHook>:
  105a38:	e12fff1e 	bx	lr

00105a3c <App_TaskIdleHook>:
  105a3c:	e12fff1e 	bx	lr

00105a40 <App_TaskReturnHook>:
  105a40:	e12fff1e 	bx	lr

00105a44 <App_TaskStatHook>:
  105a44:	e12fff1e 	bx	lr

00105a48 <App_TaskSwHook>:
  105a48:	e12fff1e 	bx	lr

00105a4c <App_TCBInitHook>:
  105a4c:	e12fff1e 	bx	lr

00105a50 <App_TimeTickHook>:
  105a50:	e12fff1e 	bx	lr

00105a54 <print>:
  105a54:	e92d4010 	push	{r4, lr}
  105a58:	e1a04000 	mov	r4, r0
  105a5c:	e5d00000 	ldrb	r0, [r0]
  105a60:	e3500000 	cmp	r0, #0
  105a64:	08bd8010 	popeq	{r4, pc}
  105a68:	eb0003b8 	bl	106950 <outbyte>
  105a6c:	e5f40001 	ldrb	r0, [r4, #1]!
  105a70:	e3500000 	cmp	r0, #0
  105a74:	1afffffb 	bne	105a68 <print+0x14>
  105a78:	e8bd8010 	pop	{r4, pc}
  105a7c:	00107a24 	andseq	r7, r0, r4, lsr #20
  105a80:	00107a24 	andseq	r7, r0, r4, lsr #20
  105a84:	00107a24 	andseq	r7, r0, r4, lsr #20
  105a88:	0010a798 	mulseq	r0, r8, r7
  105a8c:	0010e7a0 	andseq	lr, r0, r0, lsr #15

00105a90 <_start>:
  105a90:	eb00039e 	bl	106910 <__cpu_init>
  105a94:	e3a00000 	mov	r0, #0
  105a98:	e51f1024 	ldr	r1, [pc, #-36]	; 105a7c <print+0x28>
  105a9c:	e51f2024 	ldr	r2, [pc, #-36]	; 105a80 <print+0x2c>
  105aa0:	e1510002 	cmp	r1, r2
  105aa4:	aa000001 	bge	105ab0 <_start+0x20>
  105aa8:	e4810004 	str	r0, [r1], #4
  105aac:	eafffffb 	b	105aa0 <_start+0x10>
  105ab0:	e51f1034 	ldr	r1, [pc, #-52]	; 105a84 <print+0x30>
  105ab4:	e51f2034 	ldr	r2, [pc, #-52]	; 105a88 <print+0x34>
  105ab8:	e1510002 	cmp	r1, r2
  105abc:	aa000001 	bge	105ac8 <_start+0x38>
  105ac0:	e4810004 	str	r0, [r1], #4
  105ac4:	eafffffb 	b	105ab8 <_start+0x28>
  105ac8:	e51fd044 	ldr	sp, [pc, #-68]	; 105a8c <print+0x38>
  105acc:	eb0003b2 	bl	10699c <XSmc_NorInit>
  105ad0:	eb0003a2 	bl	106960 <XSmc_SramInit>
  105ad4:	eb000487 	bl	106cf8 <__libc_init_array>
  105ad8:	e3a00000 	mov	r0, #0
  105adc:	e3a01000 	mov	r1, #0
  105ae0:	eb000540 	bl	106fe8 <main>
  105ae4:	eb000474 	bl	106cbc <__libc_fini_array>
  105ae8:	eb000466 	bl	106c88 <exit>
  105aec:	eafffffe 	b	105aec <_start+0x5c>

00105af0 <Xil_DCacheInvalidateRange>:
  105af0:	e3510000 	cmp	r1, #0
  105af4:	e92d4008 	push	{r3, lr}
  105af8:	0a00000c 	beq	105b30 <Xil_DCacheInvalidateRange+0x40>
  105afc:	e0813000 	add	r3, r1, r0
  105b00:	e3a02000 	mov	r2, #0
  105b04:	e3c0001f 	bic	r0, r0, #31
  105b08:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
  105b0c:	e1530000 	cmp	r3, r0
  105b10:	9a000006 	bls	105b30 <Xil_DCacheInvalidateRange+0x40>
  105b14:	e3a02a02 	mov	r2, #8192	; 0x2000
  105b18:	e34f28f0 	movt	r2, #63728	; 0xf8f0
  105b1c:	ee070f36 	mcr	15, 0, r0, cr7, cr6, {1}
  105b20:	e5820770 	str	r0, [r2, #1904]	; 0x770
  105b24:	e2800020 	add	r0, r0, #32
  105b28:	e1530000 	cmp	r3, r0
  105b2c:	8afffffa 	bhi	105b1c <Xil_DCacheInvalidateRange+0x2c>
  105b30:	f57ff04f 	dsb	sy
  105b34:	e3020730 	movw	r0, #10032	; 0x2730
  105b38:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  105b3c:	eb0001b3 	bl	106210 <Xil_In32>
  105b40:	e3500000 	cmp	r0, #0
  105b44:	1afffffa 	bne	105b34 <Xil_DCacheInvalidateRange+0x44>
  105b48:	e8bd8008 	pop	{r3, pc}

00105b4c <Xil_DCacheFlushRange>:
  105b4c:	e3510000 	cmp	r1, #0
  105b50:	e92d4008 	push	{r3, lr}
  105b54:	0a00000c 	beq	105b8c <Xil_DCacheFlushRange+0x40>
  105b58:	e0813000 	add	r3, r1, r0
  105b5c:	e3a02000 	mov	r2, #0
  105b60:	e3c0001f 	bic	r0, r0, #31
  105b64:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
  105b68:	e1530000 	cmp	r3, r0
  105b6c:	9a000006 	bls	105b8c <Xil_DCacheFlushRange+0x40>
  105b70:	e3a02a02 	mov	r2, #8192	; 0x2000
  105b74:	e34f28f0 	movt	r2, #63728	; 0xf8f0
  105b78:	ee070f3e 	mcr	15, 0, r0, cr7, cr14, {1}
  105b7c:	e58207f0 	str	r0, [r2, #2032]	; 0x7f0
  105b80:	e2800020 	add	r0, r0, #32
  105b84:	e1530000 	cmp	r3, r0
  105b88:	8afffffa 	bhi	105b78 <Xil_DCacheFlushRange+0x2c>
  105b8c:	f57ff04f 	dsb	sy
  105b90:	e3020730 	movw	r0, #10032	; 0x2730
  105b94:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  105b98:	eb00019c 	bl	106210 <Xil_In32>
  105b9c:	e3500000 	cmp	r0, #0
  105ba0:	1afffffa 	bne	105b90 <Xil_DCacheFlushRange+0x44>
  105ba4:	e8bd8008 	pop	{r3, pc}

00105ba8 <Xil_ICacheInvalidateRange>:
  105ba8:	e3510000 	cmp	r1, #0
  105bac:	e92d4008 	push	{r3, lr}
  105bb0:	0a00000c 	beq	105be8 <Xil_ICacheInvalidateRange+0x40>
  105bb4:	e0813000 	add	r3, r1, r0
  105bb8:	e3a02001 	mov	r2, #1
  105bbc:	e3c0001f 	bic	r0, r0, #31
  105bc0:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
  105bc4:	e1530000 	cmp	r3, r0
  105bc8:	9a000006 	bls	105be8 <Xil_ICacheInvalidateRange+0x40>
  105bcc:	e3a02a02 	mov	r2, #8192	; 0x2000
  105bd0:	e34f28f0 	movt	r2, #63728	; 0xf8f0
  105bd4:	ee070f35 	mcr	15, 0, r0, cr7, cr5, {1}
  105bd8:	e5820770 	str	r0, [r2, #1904]	; 0x770
  105bdc:	e2800020 	add	r0, r0, #32
  105be0:	e1530000 	cmp	r3, r0
  105be4:	8afffffa 	bhi	105bd4 <Xil_ICacheInvalidateRange+0x2c>
  105be8:	f57ff04f 	dsb	sy
  105bec:	e3020730 	movw	r0, #10032	; 0x2730
  105bf0:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  105bf4:	eb000185 	bl	106210 <Xil_In32>
  105bf8:	e3500000 	cmp	r0, #0
  105bfc:	1afffffa 	bne	105bec <Xil_ICacheInvalidateRange+0x44>
  105c00:	e8bd8008 	pop	{r3, pc}

00105c04 <Xil_L1DCacheInvalidate>:
  105c04:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
  105c08:	e3a03000 	mov	r3, #0
  105c0c:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
  105c10:	f57ff06f 	isb	sy
  105c14:	ee304f10 	mrc	15, 1, r4, cr0, cr0, {0}
  105c18:	e7e806d4 	ubfx	r0, r4, #13, #9
  105c1c:	e7e681d4 	ubfx	r8, r4, #3, #7
  105c20:	e2800001 	add	r0, r0, #1
  105c24:	e2888001 	add	r8, r8, #1
  105c28:	e3a05001 	mov	r5, #1
  105c2c:	e3a06000 	mov	r6, #0
  105c30:	e1a01008 	mov	r1, r8
  105c34:	e1a00380 	lsl	r0, r0, #7
  105c38:	eb00038e 	bl	106a78 <__aeabi_uidiv>
  105c3c:	e2043007 	and	r3, r4, #7
  105c40:	e2833004 	add	r3, r3, #4
  105c44:	e1a07006 	mov	r7, r6
  105c48:	e1a05315 	lsl	r5, r5, r3
  105c4c:	e1a00330 	lsr	r0, r0, r3
  105c50:	e2401001 	sub	r1, r0, #1
  105c54:	e0215195 	mla	r1, r5, r1, r5
  105c58:	e3500000 	cmp	r0, #0
  105c5c:	e1a04f06 	lsl	r4, r6, #30
  105c60:	11a02007 	movne	r2, r7
  105c64:	13a03000 	movne	r3, #0
  105c68:	0a000006 	beq	105c88 <Xil_L1DCacheInvalidate+0x84>
  105c6c:	e182c004 	orr	ip, r2, r4
  105c70:	ee07cf56 	mcr	15, 0, ip, cr7, cr6, {2}
  105c74:	e2833001 	add	r3, r3, #1
  105c78:	e0822005 	add	r2, r2, r5
  105c7c:	e1530000 	cmp	r3, r0
  105c80:	1afffff9 	bne	105c6c <Xil_L1DCacheInvalidate+0x68>
  105c84:	e0877001 	add	r7, r7, r1
  105c88:	e2866001 	add	r6, r6, #1
  105c8c:	e1580006 	cmp	r8, r6
  105c90:	8afffff0 	bhi	105c58 <Xil_L1DCacheInvalidate+0x54>
  105c94:	f57ff04f 	dsb	sy
  105c98:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

00105c9c <Xil_L1DCacheEnable>:
  105c9c:	e92d4010 	push	{r4, lr}
  105ca0:	ee114f10 	mrc	15, 0, r4, cr1, cr0, {0}
  105ca4:	e3140004 	tst	r4, #4
  105ca8:	18bd8010 	popne	{r4, pc}
  105cac:	ebffffd4 	bl	105c04 <Xil_L1DCacheInvalidate>
  105cb0:	e3844004 	orr	r4, r4, #4
  105cb4:	ee014f10 	mcr	15, 0, r4, cr1, cr0, {0}
  105cb8:	e8bd8010 	pop	{r4, pc}

00105cbc <Xil_L1DCacheInvalidateLine>:
  105cbc:	e3a03000 	mov	r3, #0
  105cc0:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
  105cc4:	e3c0001f 	bic	r0, r0, #31
  105cc8:	ee070f36 	mcr	15, 0, r0, cr7, cr6, {1}
  105ccc:	f57ff04f 	dsb	sy
  105cd0:	e12fff1e 	bx	lr

00105cd4 <Xil_L1DCacheInvalidateRange>:
  105cd4:	e3510000 	cmp	r1, #0
  105cd8:	0a000009 	beq	105d04 <Xil_L1DCacheInvalidateRange+0x30>
  105cdc:	e0813000 	add	r3, r1, r0
  105ce0:	e3a02000 	mov	r2, #0
  105ce4:	e3c0001f 	bic	r0, r0, #31
  105ce8:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
  105cec:	e1530000 	cmp	r3, r0
  105cf0:	9a000003 	bls	105d04 <Xil_L1DCacheInvalidateRange+0x30>
  105cf4:	ee070f36 	mcr	15, 0, r0, cr7, cr6, {1}
  105cf8:	e2800020 	add	r0, r0, #32
  105cfc:	e1530000 	cmp	r3, r0
  105d00:	8afffffb 	bhi	105cf4 <Xil_L1DCacheInvalidateRange+0x20>
  105d04:	f57ff04f 	dsb	sy
  105d08:	e12fff1e 	bx	lr

00105d0c <Xil_L1DCacheFlush>:
  105d0c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
  105d10:	e3a03000 	mov	r3, #0
  105d14:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
  105d18:	f57ff06f 	isb	sy
  105d1c:	ee304f10 	mrc	15, 1, r4, cr0, cr0, {0}
  105d20:	e7e806d4 	ubfx	r0, r4, #13, #9
  105d24:	e7e681d4 	ubfx	r8, r4, #3, #7
  105d28:	e2800001 	add	r0, r0, #1
  105d2c:	e2888001 	add	r8, r8, #1
  105d30:	e3a05001 	mov	r5, #1
  105d34:	e3a06000 	mov	r6, #0
  105d38:	e1a01008 	mov	r1, r8
  105d3c:	e1a00380 	lsl	r0, r0, #7
  105d40:	eb00034c 	bl	106a78 <__aeabi_uidiv>
  105d44:	e2043007 	and	r3, r4, #7
  105d48:	e2833004 	add	r3, r3, #4
  105d4c:	e1a07006 	mov	r7, r6
  105d50:	e1a05315 	lsl	r5, r5, r3
  105d54:	e1a00330 	lsr	r0, r0, r3
  105d58:	e2401001 	sub	r1, r0, #1
  105d5c:	e0215195 	mla	r1, r5, r1, r5
  105d60:	e3500000 	cmp	r0, #0
  105d64:	e1a04f06 	lsl	r4, r6, #30
  105d68:	11a02007 	movne	r2, r7
  105d6c:	13a03000 	movne	r3, #0
  105d70:	0a000006 	beq	105d90 <Xil_L1DCacheFlush+0x84>
  105d74:	e182c004 	orr	ip, r2, r4
  105d78:	ee07cf5e 	mcr	15, 0, ip, cr7, cr14, {2}
  105d7c:	e2833001 	add	r3, r3, #1
  105d80:	e0822005 	add	r2, r2, r5
  105d84:	e1530000 	cmp	r3, r0
  105d88:	1afffff9 	bne	105d74 <Xil_L1DCacheFlush+0x68>
  105d8c:	e0877001 	add	r7, r7, r1
  105d90:	e2866001 	add	r6, r6, #1
  105d94:	e1580006 	cmp	r8, r6
  105d98:	8afffff0 	bhi	105d60 <Xil_L1DCacheFlush+0x54>
  105d9c:	f57ff04f 	dsb	sy
  105da0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

00105da4 <Xil_L1DCacheDisable>:
  105da4:	e92d4008 	push	{r3, lr}
  105da8:	ebffffd7 	bl	105d0c <Xil_L1DCacheFlush>
  105dac:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
  105db0:	e3c33004 	bic	r3, r3, #4
  105db4:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
  105db8:	e8bd8008 	pop	{r3, pc}

00105dbc <Xil_L1DCacheFlushLine>:
  105dbc:	e3a03000 	mov	r3, #0
  105dc0:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
  105dc4:	e3c0001f 	bic	r0, r0, #31
  105dc8:	ee070f3e 	mcr	15, 0, r0, cr7, cr14, {1}
  105dcc:	f57ff04f 	dsb	sy
  105dd0:	e12fff1e 	bx	lr

00105dd4 <Xil_L1DCacheFlushRange>:
  105dd4:	e3510000 	cmp	r1, #0
  105dd8:	0a000009 	beq	105e04 <Xil_L1DCacheFlushRange+0x30>
  105ddc:	e0813000 	add	r3, r1, r0
  105de0:	e3a02000 	mov	r2, #0
  105de4:	e3c0001f 	bic	r0, r0, #31
  105de8:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
  105dec:	e1530000 	cmp	r3, r0
  105df0:	9a000003 	bls	105e04 <Xil_L1DCacheFlushRange+0x30>
  105df4:	ee070f3e 	mcr	15, 0, r0, cr7, cr14, {1}
  105df8:	e2800020 	add	r0, r0, #32
  105dfc:	e1530000 	cmp	r3, r0
  105e00:	8afffffb 	bhi	105df4 <Xil_L1DCacheFlushRange+0x20>
  105e04:	f57ff04f 	dsb	sy
  105e08:	e12fff1e 	bx	lr

00105e0c <Xil_L1DCacheStoreLine>:
  105e0c:	e3a03000 	mov	r3, #0
  105e10:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
  105e14:	e3c0001f 	bic	r0, r0, #31
  105e18:	ee070f3a 	mcr	15, 0, r0, cr7, cr10, {1}
  105e1c:	f57ff04f 	dsb	sy
  105e20:	e12fff1e 	bx	lr

00105e24 <Xil_L1ICacheEnable>:
  105e24:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
  105e28:	e2132a01 	ands	r2, r3, #4096	; 0x1000
  105e2c:	112fff1e 	bxne	lr
  105e30:	ee072f15 	mcr	15, 0, r2, cr7, cr5, {0}
  105e34:	e3833a01 	orr	r3, r3, #4096	; 0x1000
  105e38:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
  105e3c:	e12fff1e 	bx	lr

00105e40 <Xil_L1ICacheDisable>:
  105e40:	f57ff04f 	dsb	sy
  105e44:	e3a03000 	mov	r3, #0
  105e48:	ee073f15 	mcr	15, 0, r3, cr7, cr5, {0}
  105e4c:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
  105e50:	e3c33a01 	bic	r3, r3, #4096	; 0x1000
  105e54:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
  105e58:	e12fff1e 	bx	lr

00105e5c <Xil_L1ICacheInvalidate>:
  105e5c:	e3a03001 	mov	r3, #1
  105e60:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
  105e64:	e3a03000 	mov	r3, #0
  105e68:	ee073f15 	mcr	15, 0, r3, cr7, cr5, {0}
  105e6c:	f57ff04f 	dsb	sy
  105e70:	e12fff1e 	bx	lr

00105e74 <Xil_L1ICacheInvalidateLine>:
  105e74:	e3a03001 	mov	r3, #1
  105e78:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
  105e7c:	e3c0001f 	bic	r0, r0, #31
  105e80:	ee070f35 	mcr	15, 0, r0, cr7, cr5, {1}
  105e84:	f57ff04f 	dsb	sy
  105e88:	e12fff1e 	bx	lr

00105e8c <Xil_L1ICacheInvalidateRange>:
  105e8c:	e3510000 	cmp	r1, #0
  105e90:	0a000009 	beq	105ebc <Xil_L1ICacheInvalidateRange+0x30>
  105e94:	e0813000 	add	r3, r1, r0
  105e98:	e3a02001 	mov	r2, #1
  105e9c:	e3c0001f 	bic	r0, r0, #31
  105ea0:	ee402f10 	mcr	15, 2, r2, cr0, cr0, {0}
  105ea4:	e1530000 	cmp	r3, r0
  105ea8:	9a000003 	bls	105ebc <Xil_L1ICacheInvalidateRange+0x30>
  105eac:	ee070f35 	mcr	15, 0, r0, cr7, cr5, {1}
  105eb0:	e2800020 	add	r0, r0, #32
  105eb4:	e1530000 	cmp	r3, r0
  105eb8:	8afffffb 	bhi	105eac <Xil_L1ICacheInvalidateRange+0x20>
  105ebc:	f57ff04f 	dsb	sy
  105ec0:	e12fff1e 	bx	lr

00105ec4 <Xil_L2CacheEnable>:
  105ec4:	e92d4008 	push	{r3, lr}
  105ec8:	e3a00c21 	mov	r0, #8448	; 0x2100
  105ecc:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  105ed0:	eb0000ce 	bl	106210 <Xil_In32>
  105ed4:	e3100001 	tst	r0, #1
  105ed8:	1a00001e 	bne	105f58 <Xil_L2CacheEnable+0x94>
  105edc:	e3020104 	movw	r0, #8452	; 0x2104
  105ee0:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  105ee4:	eb0000c9 	bl	106210 <Xil_In32>
  105ee8:	e3c0180e 	bic	r1, r0, #917504	; 0xe0000
  105eec:	e3020104 	movw	r0, #8452	; 0x2104
  105ef0:	e3811207 	orr	r1, r1, #1879048192	; 0x70000000
  105ef4:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  105ef8:	e3811a21 	orr	r1, r1, #135168	; 0x21000
  105efc:	eb0000cc 	bl	106234 <Xil_Out32>
  105f00:	e3001121 	movw	r1, #289	; 0x121
  105f04:	e3020108 	movw	r0, #8456	; 0x2108
  105f08:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  105f0c:	eb0000c8 	bl	106234 <Xil_Out32>
  105f10:	e3001121 	movw	r1, #289	; 0x121
  105f14:	e302010c 	movw	r0, #8460	; 0x210c
  105f18:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  105f1c:	eb0000c4 	bl	106234 <Xil_Out32>
  105f20:	e302021c 	movw	r0, #8732	; 0x221c
  105f24:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  105f28:	eb0000b8 	bl	106210 <Xil_In32>
  105f2c:	e1a01000 	mov	r1, r0
  105f30:	e3020220 	movw	r0, #8736	; 0x2220
  105f34:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  105f38:	eb0000bd 	bl	106234 <Xil_Out32>
  105f3c:	e3a00c21 	mov	r0, #8448	; 0x2100
  105f40:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  105f44:	eb0000b1 	bl	106210 <Xil_In32>
  105f48:	e3801001 	orr	r1, r0, #1
  105f4c:	e3a00c21 	mov	r0, #8448	; 0x2100
  105f50:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  105f54:	eb0000b6 	bl	106234 <Xil_Out32>
  105f58:	f57ff04f 	dsb	sy
  105f5c:	e8bd8008 	pop	{r3, pc}

00105f60 <Xil_ICacheEnable>:
  105f60:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
  105f64:	e2132a01 	ands	r2, r3, #4096	; 0x1000
  105f68:	1a000002 	bne	105f78 <Xil_ICacheEnable+0x18>
  105f6c:	ee072f15 	mcr	15, 0, r2, cr7, cr5, {0}
  105f70:	e3833a01 	orr	r3, r3, #4096	; 0x1000
  105f74:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
  105f78:	eaffffd1 	b	105ec4 <Xil_L2CacheEnable>

00105f7c <Xil_DCacheEnable>:
  105f7c:	e92d4008 	push	{r3, lr}
  105f80:	ebffff45 	bl	105c9c <Xil_L1DCacheEnable>
  105f84:	e8bd4008 	pop	{r3, lr}
  105f88:	eaffffcd 	b	105ec4 <Xil_L2CacheEnable>

00105f8c <Xil_L2CacheDisable>:
  105f8c:	e30207fc 	movw	r0, #10236	; 0x27fc
  105f90:	e30f1fff 	movw	r1, #65535	; 0xffff
  105f94:	e92d4008 	push	{r3, lr}
  105f98:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  105f9c:	eb0000a4 	bl	106234 <Xil_Out32>
  105fa0:	e3020730 	movw	r0, #10032	; 0x2730
  105fa4:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  105fa8:	eb000098 	bl	106210 <Xil_In32>
  105fac:	e3500000 	cmp	r0, #0
  105fb0:	1afffffa 	bne	105fa0 <Xil_L2CacheDisable+0x14>
  105fb4:	f57ff04f 	dsb	sy
  105fb8:	e3a00c21 	mov	r0, #8448	; 0x2100
  105fbc:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  105fc0:	eb000092 	bl	106210 <Xil_In32>
  105fc4:	e3c01001 	bic	r1, r0, #1
  105fc8:	e3a00c21 	mov	r0, #8448	; 0x2100
  105fcc:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  105fd0:	e8bd4008 	pop	{r3, lr}
  105fd4:	ea000096 	b	106234 <Xil_Out32>

00105fd8 <Xil_ICacheDisable>:
  105fd8:	e92d4008 	push	{r3, lr}
  105fdc:	ebffffea 	bl	105f8c <Xil_L2CacheDisable>
  105fe0:	f57ff04f 	dsb	sy
  105fe4:	e3a03000 	mov	r3, #0
  105fe8:	ee073f15 	mcr	15, 0, r3, cr7, cr5, {0}
  105fec:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
  105ff0:	e3c33a01 	bic	r3, r3, #4096	; 0x1000
  105ff4:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
  105ff8:	e8bd8008 	pop	{r3, pc}

00105ffc <Xil_DCacheDisable>:
  105ffc:	e92d4008 	push	{r3, lr}
  106000:	ebffffe1 	bl	105f8c <Xil_L2CacheDisable>
  106004:	e8bd4008 	pop	{r3, lr}
  106008:	eaffff65 	b	105da4 <Xil_L1DCacheDisable>

0010600c <Xil_L2CacheInvalidate>:
  10600c:	e302077c 	movw	r0, #10108	; 0x277c
  106010:	e30f1fff 	movw	r1, #65535	; 0xffff
  106014:	e92d4008 	push	{r3, lr}
  106018:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  10601c:	eb000084 	bl	106234 <Xil_Out32>
  106020:	e3020730 	movw	r0, #10032	; 0x2730
  106024:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  106028:	eb000078 	bl	106210 <Xil_In32>
  10602c:	e3500000 	cmp	r0, #0
  106030:	1afffffa 	bne	106020 <Xil_L2CacheInvalidate+0x14>
  106034:	f57ff04f 	dsb	sy
  106038:	e8bd8008 	pop	{r3, pc}

0010603c <Xil_ICacheInvalidate>:
  10603c:	e3a03001 	mov	r3, #1
  106040:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
  106044:	e3a03000 	mov	r3, #0
  106048:	ee073f15 	mcr	15, 0, r3, cr7, cr5, {0}
  10604c:	f57ff04f 	dsb	sy
  106050:	eaffffed 	b	10600c <Xil_L2CacheInvalidate>

00106054 <Xil_DCacheInvalidate>:
  106054:	e92d4008 	push	{r3, lr}
  106058:	ebfffee9 	bl	105c04 <Xil_L1DCacheInvalidate>
  10605c:	e8bd4008 	pop	{r3, lr}
  106060:	eaffffe9 	b	10600c <Xil_L2CacheInvalidate>

00106064 <Xil_L2CacheInvalidateLine>:
  106064:	e1a01000 	mov	r1, r0
  106068:	e3020770 	movw	r0, #10096	; 0x2770
  10606c:	e92d4008 	push	{r3, lr}
  106070:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  106074:	eb00006e 	bl	106234 <Xil_Out32>
  106078:	f57ff04f 	dsb	sy
  10607c:	e8bd8008 	pop	{r3, pc}

00106080 <Xil_ICacheInvalidateLine>:
  106080:	e3a03001 	mov	r3, #1
  106084:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
  106088:	e3c0301f 	bic	r3, r0, #31
  10608c:	ee073f35 	mcr	15, 0, r3, cr7, cr5, {1}
  106090:	f57ff04f 	dsb	sy
  106094:	eafffff2 	b	106064 <Xil_L2CacheInvalidateLine>

00106098 <Xil_DCacheInvalidateLine>:
  106098:	e3a03000 	mov	r3, #0
  10609c:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
  1060a0:	e3c0301f 	bic	r3, r0, #31
  1060a4:	ee073f36 	mcr	15, 0, r3, cr7, cr6, {1}
  1060a8:	f57ff04f 	dsb	sy
  1060ac:	eaffffec 	b	106064 <Xil_L2CacheInvalidateLine>

001060b0 <Xil_L2CacheInvalidateRange>:
  1060b0:	e3510000 	cmp	r1, #0
  1060b4:	e92d4008 	push	{r3, lr}
  1060b8:	0a000009 	beq	1060e4 <Xil_L2CacheInvalidateRange+0x34>
  1060bc:	e0813000 	add	r3, r1, r0
  1060c0:	e3c0001f 	bic	r0, r0, #31
  1060c4:	e1530000 	cmp	r3, r0
  1060c8:	9a000005 	bls	1060e4 <Xil_L2CacheInvalidateRange+0x34>
  1060cc:	e3a02a02 	mov	r2, #8192	; 0x2000
  1060d0:	e34f28f0 	movt	r2, #63728	; 0xf8f0
  1060d4:	e5820770 	str	r0, [r2, #1904]	; 0x770
  1060d8:	e2800020 	add	r0, r0, #32
  1060dc:	e1530000 	cmp	r3, r0
  1060e0:	8afffffb 	bhi	1060d4 <Xil_L2CacheInvalidateRange+0x24>
  1060e4:	e3020730 	movw	r0, #10032	; 0x2730
  1060e8:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  1060ec:	eb000047 	bl	106210 <Xil_In32>
  1060f0:	e3500000 	cmp	r0, #0
  1060f4:	1afffffa 	bne	1060e4 <Xil_L2CacheInvalidateRange+0x34>
  1060f8:	f57ff04f 	dsb	sy
  1060fc:	e8bd8008 	pop	{r3, pc}

00106100 <Xil_L2CacheFlush>:
  106100:	e30207fc 	movw	r0, #10236	; 0x27fc
  106104:	e30f1fff 	movw	r1, #65535	; 0xffff
  106108:	e92d4008 	push	{r3, lr}
  10610c:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  106110:	eb000047 	bl	106234 <Xil_Out32>
  106114:	e3020730 	movw	r0, #10032	; 0x2730
  106118:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  10611c:	eb00003b 	bl	106210 <Xil_In32>
  106120:	e3500000 	cmp	r0, #0
  106124:	1afffffa 	bne	106114 <Xil_L2CacheFlush+0x14>
  106128:	f57ff04f 	dsb	sy
  10612c:	e8bd8008 	pop	{r3, pc}

00106130 <Xil_DCacheFlush>:
  106130:	e92d4008 	push	{r3, lr}
  106134:	ebfffef4 	bl	105d0c <Xil_L1DCacheFlush>
  106138:	e8bd4008 	pop	{r3, lr}
  10613c:	eaffffef 	b	106100 <Xil_L2CacheFlush>

00106140 <Xil_L2CacheFlushLine>:
  106140:	e1a01000 	mov	r1, r0
  106144:	e30207f0 	movw	r0, #10224	; 0x27f0
  106148:	e92d4008 	push	{r3, lr}
  10614c:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  106150:	eb000037 	bl	106234 <Xil_Out32>
  106154:	f57ff04f 	dsb	sy
  106158:	e8bd8008 	pop	{r3, pc}

0010615c <Xil_DCacheFlushLine>:
  10615c:	e3a03000 	mov	r3, #0
  106160:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
  106164:	e3c0301f 	bic	r3, r0, #31
  106168:	ee073f3e 	mcr	15, 0, r3, cr7, cr14, {1}
  10616c:	f57ff04f 	dsb	sy
  106170:	eafffff2 	b	106140 <Xil_L2CacheFlushLine>

00106174 <Xil_L2CacheFlushRange>:
  106174:	e3510000 	cmp	r1, #0
  106178:	e92d4008 	push	{r3, lr}
  10617c:	0a000009 	beq	1061a8 <Xil_L2CacheFlushRange+0x34>
  106180:	e0813000 	add	r3, r1, r0
  106184:	e3c0001f 	bic	r0, r0, #31
  106188:	e1530000 	cmp	r3, r0
  10618c:	9a000005 	bls	1061a8 <Xil_L2CacheFlushRange+0x34>
  106190:	e3a02a02 	mov	r2, #8192	; 0x2000
  106194:	e34f28f0 	movt	r2, #63728	; 0xf8f0
  106198:	e58207f0 	str	r0, [r2, #2032]	; 0x7f0
  10619c:	e2800020 	add	r0, r0, #32
  1061a0:	e1530000 	cmp	r3, r0
  1061a4:	8afffffb 	bhi	106198 <Xil_L2CacheFlushRange+0x24>
  1061a8:	e3020730 	movw	r0, #10032	; 0x2730
  1061ac:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  1061b0:	eb000016 	bl	106210 <Xil_In32>
  1061b4:	e3500000 	cmp	r0, #0
  1061b8:	1afffffa 	bne	1061a8 <Xil_L2CacheFlushRange+0x34>
  1061bc:	f57ff04f 	dsb	sy
  1061c0:	e8bd8008 	pop	{r3, pc}

001061c4 <Xil_L2CacheStoreLine>:
  1061c4:	e1a01000 	mov	r1, r0
  1061c8:	e30207b0 	movw	r0, #10160	; 0x27b0
  1061cc:	e92d4008 	push	{r3, lr}
  1061d0:	e34f08f0 	movt	r0, #63728	; 0xf8f0
  1061d4:	eb000016 	bl	106234 <Xil_Out32>
  1061d8:	f57ff04f 	dsb	sy
  1061dc:	e8bd8008 	pop	{r3, pc}

001061e0 <Xil_DCacheStoreLine>:
  1061e0:	e3a03000 	mov	r3, #0
  1061e4:	ee403f10 	mcr	15, 2, r3, cr0, cr0, {0}
  1061e8:	e3c0301f 	bic	r3, r0, #31
  1061ec:	ee073f3a 	mcr	15, 0, r3, cr7, cr10, {1}
  1061f0:	f57ff04f 	dsb	sy
  1061f4:	eafffff2 	b	1061c4 <Xil_L2CacheStoreLine>

001061f8 <Xil_In8>:
  1061f8:	f57ff05f 	dmb	sy
  1061fc:	e5d00000 	ldrb	r0, [r0]
  106200:	e12fff1e 	bx	lr

00106204 <Xil_In16>:
  106204:	f57ff05f 	dmb	sy
  106208:	e1d000b0 	ldrh	r0, [r0]
  10620c:	e12fff1e 	bx	lr

00106210 <Xil_In32>:
  106210:	f57ff05f 	dmb	sy
  106214:	e5900000 	ldr	r0, [r0]
  106218:	e12fff1e 	bx	lr

0010621c <Xil_Out8>:
  10621c:	e5c01000 	strb	r1, [r0]
  106220:	f57ff05f 	dmb	sy
  106224:	e12fff1e 	bx	lr

00106228 <Xil_Out16>:
  106228:	e1c010b0 	strh	r1, [r0]
  10622c:	f57ff05f 	dmb	sy
  106230:	e12fff1e 	bx	lr

00106234 <Xil_Out32>:
  106234:	e5801000 	str	r1, [r0]
  106238:	f57ff05f 	dmb	sy
  10623c:	e12fff1e 	bx	lr

00106240 <Xil_In16BE>:
  106240:	f57ff05f 	dmb	sy
  106244:	e1d030b0 	ldrh	r3, [r0]
  106248:	e1a02423 	lsr	r2, r3, #8
  10624c:	e1820403 	orr	r0, r2, r3, lsl #8
  106250:	e6ff0070 	uxth	r0, r0
  106254:	e12fff1e 	bx	lr

00106258 <Xil_In32BE>:
  106258:	f57ff05f 	dmb	sy
  10625c:	e5903000 	ldr	r3, [r0]
  106260:	e7e70453 	ubfx	r0, r3, #8, #8
  106264:	e1a02823 	lsr	r2, r3, #16
  106268:	e6ff3073 	uxth	r3, r3
  10626c:	e1a01422 	lsr	r1, r2, #8
  106270:	e1800403 	orr	r0, r0, r3, lsl #8
  106274:	e1812402 	orr	r2, r1, r2, lsl #8
  106278:	e6ff2072 	uxth	r2, r2
  10627c:	e1820800 	orr	r0, r2, r0, lsl #16
  106280:	e12fff1e 	bx	lr

00106284 <Xil_Out16BE>:
  106284:	e1a03421 	lsr	r3, r1, #8
  106288:	e1831401 	orr	r1, r3, r1, lsl #8
  10628c:	e1c010b0 	strh	r1, [r0]
  106290:	f57ff05f 	dmb	sy
  106294:	e12fff1e 	bx	lr

00106298 <Xil_Out32BE>:
  106298:	e1a03821 	lsr	r3, r1, #16
  10629c:	e7e72451 	ubfx	r2, r1, #8, #8
  1062a0:	e6ff1071 	uxth	r1, r1
  1062a4:	e1a0c423 	lsr	ip, r3, #8
  1062a8:	e18c3403 	orr	r3, ip, r3, lsl #8
  1062ac:	e1821401 	orr	r1, r2, r1, lsl #8
  1062b0:	e6ff3073 	uxth	r3, r3
  1062b4:	e1831801 	orr	r1, r3, r1, lsl #16
  1062b8:	e5801000 	str	r1, [r0]
  1062bc:	f57ff05f 	dmb	sy
  1062c0:	e12fff1e 	bx	lr

001062c4 <Xil_EndianSwap16>:
  1062c4:	e1a03420 	lsr	r3, r0, #8
  1062c8:	e1830400 	orr	r0, r3, r0, lsl #8
  1062cc:	e6ff0070 	uxth	r0, r0
  1062d0:	e12fff1e 	bx	lr

001062d4 <Xil_EndianSwap32>:
  1062d4:	e1a03820 	lsr	r3, r0, #16
  1062d8:	e7e71450 	ubfx	r1, r0, #8, #8
  1062dc:	e6ff0070 	uxth	r0, r0
  1062e0:	e1a02423 	lsr	r2, r3, #8
  1062e4:	e1823403 	orr	r3, r2, r3, lsl #8
  1062e8:	e1810400 	orr	r0, r1, r0, lsl #8
  1062ec:	e6ff3073 	uxth	r3, r3
  1062f0:	e1830800 	orr	r0, r3, r0, lsl #16
  1062f4:	e12fff1e 	bx	lr

001062f8 <XUartPs_StubHandler>:
  1062f8:	e92d4008 	push	{r3, lr}
  1062fc:	e30705b4 	movw	r0, #30132	; 0x75b4
  106300:	e3a01e2a 	mov	r1, #672	; 0x2a0
  106304:	e3400010 	movt	r0, #16
  106308:	eb0001b2 	bl	1069d8 <Xil_Assert>
  10630c:	e30a3794 	movw	r3, #42900	; 0xa794
  106310:	e3403010 	movt	r3, #16
  106314:	e3a02001 	mov	r2, #1
  106318:	e5832000 	str	r2, [r3]
  10631c:	e8bd8008 	pop	{r3, pc}

00106320 <XUartPs_SendBuffer>:
  106320:	e92d4038 	push	{r3, r4, r5, lr}
  106324:	e1a04000 	mov	r4, r0
  106328:	e3a05000 	mov	r5, #0
  10632c:	ea000007 	b	106350 <XUartPs_SendBuffer+0x30>
  106330:	e1550003 	cmp	r5, r3
  106334:	2a00000b 	bcs	106368 <XUartPs_SendBuffer+0x48>
  106338:	e594301c 	ldr	r3, [r4, #28]
  10633c:	e5940004 	ldr	r0, [r4, #4]
  106340:	e7d31005 	ldrb	r1, [r3, r5]
  106344:	e2800030 	add	r0, r0, #48	; 0x30
  106348:	ebffffb9 	bl	106234 <Xil_Out32>
  10634c:	e2855001 	add	r5, r5, #1
  106350:	e5940004 	ldr	r0, [r4, #4]
  106354:	e280002c 	add	r0, r0, #44	; 0x2c
  106358:	ebffffac 	bl	106210 <Xil_In32>
  10635c:	e5943024 	ldr	r3, [r4, #36]	; 0x24
  106360:	e3100010 	tst	r0, #16
  106364:	0afffff1 	beq	106330 <XUartPs_SendBuffer+0x10>
  106368:	e594201c 	ldr	r2, [r4, #28]
  10636c:	e0653003 	rsb	r3, r5, r3
  106370:	e5940004 	ldr	r0, [r4, #4]
  106374:	e0822005 	add	r2, r2, r5
  106378:	e5843024 	str	r3, [r4, #36]	; 0x24
  10637c:	e584201c 	str	r2, [r4, #28]
  106380:	e2800010 	add	r0, r0, #16
  106384:	ebffffa1 	bl	106210 <Xil_In32>
  106388:	e3100007 	tst	r0, #7
  10638c:	0a000003 	beq	1063a0 <XUartPs_SendBuffer+0x80>
  106390:	e5943004 	ldr	r3, [r4, #4]
  106394:	e3801008 	orr	r1, r0, #8
  106398:	e2830008 	add	r0, r3, #8
  10639c:	ebffffa4 	bl	106234 <Xil_Out32>
  1063a0:	e1a00005 	mov	r0, r5
  1063a4:	e8bd8038 	pop	{r3, r4, r5, pc}

001063a8 <XUartPs_Send>:
  1063a8:	e92d4070 	push	{r4, r5, r6, lr}
  1063ac:	e2505000 	subs	r5, r0, #0
  1063b0:	e24dd008 	sub	sp, sp, #8
  1063b4:	e1a06001 	mov	r6, r1
  1063b8:	0a000020 	beq	106440 <XUartPs_Send+0x98>
  1063bc:	e30a4794 	movw	r4, #42900	; 0xa794
  1063c0:	e3510000 	cmp	r1, #0
  1063c4:	e3404010 	movt	r4, #16
  1063c8:	e3a03000 	mov	r3, #0
  1063cc:	e5843000 	str	r3, [r4]
  1063d0:	0a000023 	beq	106464 <XUartPs_Send+0xbc>
  1063d4:	e5951014 	ldr	r1, [r5, #20]
  1063d8:	e3013111 	movw	r3, #4369	; 0x1111
  1063dc:	e3413111 	movt	r3, #4369	; 0x1111
  1063e0:	e1510003 	cmp	r1, r3
  1063e4:	0a000008 	beq	10640c <XUartPs_Send+0x64>
  1063e8:	e30705b4 	movw	r0, #30132	; 0x75b4
  1063ec:	e3001112 	movw	r1, #274	; 0x112
  1063f0:	e3400010 	movt	r0, #16
  1063f4:	eb000177 	bl	1069d8 <Xil_Assert>
  1063f8:	e3a03001 	mov	r3, #1
  1063fc:	e5843000 	str	r3, [r4]
  106400:	e3a00000 	mov	r0, #0
  106404:	e28dd008 	add	sp, sp, #8
  106408:	e8bd8070 	pop	{r4, r5, r6, pc}
  10640c:	e5950004 	ldr	r0, [r5, #4]
  106410:	e3a01018 	mov	r1, #24
  106414:	e58d2004 	str	r2, [sp, #4]
  106418:	e280000c 	add	r0, r0, #12
  10641c:	ebffff84 	bl	106234 <Xil_Out32>
  106420:	e59d2004 	ldr	r2, [sp, #4]
  106424:	e1a00005 	mov	r0, r5
  106428:	e585601c 	str	r6, [r5, #28]
  10642c:	e5852020 	str	r2, [r5, #32]
  106430:	e5852024 	str	r2, [r5, #36]	; 0x24
  106434:	e28dd008 	add	sp, sp, #8
  106438:	e8bd4070 	pop	{r4, r5, r6, lr}
  10643c:	eaffffb7 	b	106320 <XUartPs_SendBuffer>
  106440:	e30705b4 	movw	r0, #30132	; 0x75b4
  106444:	e3a01e11 	mov	r1, #272	; 0x110
  106448:	e3400010 	movt	r0, #16
  10644c:	eb000161 	bl	1069d8 <Xil_Assert>
  106450:	e30a3794 	movw	r3, #42900	; 0xa794
  106454:	e3403010 	movt	r3, #16
  106458:	e3a02001 	mov	r2, #1
  10645c:	e5832000 	str	r2, [r3]
  106460:	eaffffe6 	b	106400 <XUartPs_Send+0x58>
  106464:	e30705b4 	movw	r0, #30132	; 0x75b4
  106468:	e3001111 	movw	r1, #273	; 0x111
  10646c:	e3400010 	movt	r0, #16
  106470:	eb000158 	bl	1069d8 <Xil_Assert>
  106474:	e3a03001 	mov	r3, #1
  106478:	e5843000 	str	r3, [r4]
  10647c:	eaffffdf 	b	106400 <XUartPs_Send+0x58>

00106480 <XUartPs_ReceiveBuffer>:
  106480:	e92d4070 	push	{r4, r5, r6, lr}
  106484:	e1a04000 	mov	r4, r0
  106488:	e5900004 	ldr	r0, [r0, #4]
  10648c:	e280002c 	add	r0, r0, #44	; 0x2c
  106490:	ebffff5e 	bl	106210 <Xil_In32>
  106494:	e5943030 	ldr	r3, [r4, #48]	; 0x30
  106498:	e3530000 	cmp	r3, #0
  10649c:	0a000017 	beq	106500 <XUartPs_ReceiveBuffer+0x80>
  1064a0:	e2105002 	ands	r5, r0, #2
  1064a4:	0a000002 	beq	1064b4 <XUartPs_ReceiveBuffer+0x34>
  1064a8:	ea000016 	b	106508 <XUartPs_ReceiveBuffer+0x88>
  1064ac:	e3100002 	tst	r0, #2
  1064b0:	1a00000b 	bne	1064e4 <XUartPs_ReceiveBuffer+0x64>
  1064b4:	e5940004 	ldr	r0, [r4, #4]
  1064b8:	e5946028 	ldr	r6, [r4, #40]	; 0x28
  1064bc:	e2800030 	add	r0, r0, #48	; 0x30
  1064c0:	ebffff52 	bl	106210 <Xil_In32>
  1064c4:	e7c60005 	strb	r0, [r6, r5]
  1064c8:	e2855001 	add	r5, r5, #1
  1064cc:	e5940004 	ldr	r0, [r4, #4]
  1064d0:	e280002c 	add	r0, r0, #44	; 0x2c
  1064d4:	ebffff4d 	bl	106210 <Xil_In32>
  1064d8:	e5943030 	ldr	r3, [r4, #48]	; 0x30
  1064dc:	e1530005 	cmp	r3, r5
  1064e0:	8afffff1 	bhi	1064ac <XUartPs_ReceiveBuffer+0x2c>
  1064e4:	e5942028 	ldr	r2, [r4, #40]	; 0x28
  1064e8:	e0653003 	rsb	r3, r5, r3
  1064ec:	e1a00005 	mov	r0, r5
  1064f0:	e5843030 	str	r3, [r4, #48]	; 0x30
  1064f4:	e0825005 	add	r5, r2, r5
  1064f8:	e5845028 	str	r5, [r4, #40]	; 0x28
  1064fc:	e8bd8070 	pop	{r4, r5, r6, pc}
  106500:	e1a05003 	mov	r5, r3
  106504:	eafffff6 	b	1064e4 <XUartPs_ReceiveBuffer+0x64>
  106508:	e3a05000 	mov	r5, #0
  10650c:	eafffff4 	b	1064e4 <XUartPs_ReceiveBuffer+0x64>

00106510 <XUartPs_Recv>:
  106510:	e92d4070 	push	{r4, r5, r6, lr}
  106514:	e2505000 	subs	r5, r0, #0
  106518:	e24dd008 	sub	sp, sp, #8
  10651c:	e1a06001 	mov	r6, r1
  106520:	0a000029 	beq	1065cc <XUartPs_Recv+0xbc>
  106524:	e30a4794 	movw	r4, #42900	; 0xa794
  106528:	e3510000 	cmp	r1, #0
  10652c:	e3404010 	movt	r4, #16
  106530:	e3a0c000 	mov	ip, #0
  106534:	e584c000 	str	ip, [r4]
  106538:	0a00002d 	beq	1065f4 <XUartPs_Recv+0xe4>
  10653c:	e5951014 	ldr	r1, [r5, #20]
  106540:	e3013111 	movw	r3, #4369	; 0x1111
  106544:	e3413111 	movt	r3, #4369	; 0x1111
  106548:	e1510003 	cmp	r1, r3
  10654c:	0a000009 	beq	106578 <XUartPs_Recv+0x68>
  106550:	e30705b4 	movw	r0, #30132	; 0x75b4
  106554:	e3001155 	movw	r1, #341	; 0x155
  106558:	e3400010 	movt	r0, #16
  10655c:	e1a0600c 	mov	r6, ip
  106560:	eb00011c 	bl	1069d8 <Xil_Assert>
  106564:	e3a03001 	mov	r3, #1
  106568:	e5843000 	str	r3, [r4]
  10656c:	e1a00006 	mov	r0, r6
  106570:	e28dd008 	add	sp, sp, #8
  106574:	e8bd8070 	pop	{r4, r5, r6, pc}
  106578:	e5950004 	ldr	r0, [r5, #4]
  10657c:	e58d2004 	str	r2, [sp, #4]
  106580:	e2800010 	add	r0, r0, #16
  106584:	ebffff21 	bl	106210 <Xil_In32>
  106588:	e3011fff 	movw	r1, #8191	; 0x1fff
  10658c:	e1a04000 	mov	r4, r0
  106590:	e5950004 	ldr	r0, [r5, #4]
  106594:	e280000c 	add	r0, r0, #12
  106598:	ebffff25 	bl	106234 <Xil_Out32>
  10659c:	e59d2004 	ldr	r2, [sp, #4]
  1065a0:	e1a00005 	mov	r0, r5
  1065a4:	e5856028 	str	r6, [r5, #40]	; 0x28
  1065a8:	e585202c 	str	r2, [r5, #44]	; 0x2c
  1065ac:	e5852030 	str	r2, [r5, #48]	; 0x30
  1065b0:	ebffffb2 	bl	106480 <XUartPs_ReceiveBuffer>
  1065b4:	e1a01004 	mov	r1, r4
  1065b8:	e1a06000 	mov	r6, r0
  1065bc:	e5950004 	ldr	r0, [r5, #4]
  1065c0:	e2800008 	add	r0, r0, #8
  1065c4:	ebffff1a 	bl	106234 <Xil_Out32>
  1065c8:	eaffffe7 	b	10656c <XUartPs_Recv+0x5c>
  1065cc:	e30705b4 	movw	r0, #30132	; 0x75b4
  1065d0:	e3001153 	movw	r1, #339	; 0x153
  1065d4:	e3400010 	movt	r0, #16
  1065d8:	e1a06005 	mov	r6, r5
  1065dc:	eb0000fd 	bl	1069d8 <Xil_Assert>
  1065e0:	e30a3794 	movw	r3, #42900	; 0xa794
  1065e4:	e3403010 	movt	r3, #16
  1065e8:	e3a02001 	mov	r2, #1
  1065ec:	e5832000 	str	r2, [r3]
  1065f0:	eaffffdd 	b	10656c <XUartPs_Recv+0x5c>
  1065f4:	e30705b4 	movw	r0, #30132	; 0x75b4
  1065f8:	e3a01f55 	mov	r1, #340	; 0x154
  1065fc:	e3400010 	movt	r0, #16
  106600:	eb0000f4 	bl	1069d8 <Xil_Assert>
  106604:	e3a03001 	mov	r3, #1
  106608:	e5843000 	str	r3, [r4]
  10660c:	eaffffd6 	b	10656c <XUartPs_Recv+0x5c>

00106610 <XUartPs_SetBaudRate>:
  106610:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  106614:	e250b000 	subs	fp, r0, #0
  106618:	e24dd00c 	sub	sp, sp, #12
  10661c:	e1a05001 	mov	r5, r1
  106620:	0a000060 	beq	1067a8 <XUartPs_SetBaudRate+0x198>
  106624:	e59b2014 	ldr	r2, [fp, #20]
  106628:	e3013111 	movw	r3, #4369	; 0x1111
  10662c:	e3413111 	movt	r3, #4369	; 0x1111
  106630:	e30a4794 	movw	r4, #42900	; 0xa794
  106634:	e1520003 	cmp	r2, r3
  106638:	e3404010 	movt	r4, #16
  10663c:	e3a06000 	mov	r6, #0
  106640:	e5846000 	str	r6, [r4]
  106644:	1a00000b 	bne	106678 <XUartPs_SetBaudRate+0x68>
  106648:	e3a03cc2 	mov	r3, #49664	; 0xc200
  10664c:	e3403001 	movt	r3, #1
  106650:	e1510003 	cmp	r1, r3
  106654:	8a00000f 	bhi	106698 <XUartPs_SetBaudRate+0x88>
  106658:	e351006d 	cmp	r1, #109	; 0x6d
  10665c:	9a000010 	bls	1066a4 <XUartPs_SetBaudRate+0x94>
  106660:	e59b3008 	ldr	r3, [fp, #8]
  106664:	e1530081 	cmp	r3, r1, lsl #1
  106668:	2a000010 	bcs	1066b0 <XUartPs_SetBaudRate+0xa0>
  10666c:	e300041f 	movw	r0, #1055	; 0x41f
  106670:	e28dd00c 	add	sp, sp, #12
  106674:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  106678:	e30705b4 	movw	r0, #30132	; 0x75b4
  10667c:	e300122f 	movw	r1, #559	; 0x22f
  106680:	e3400010 	movt	r0, #16
  106684:	eb0000d3 	bl	1069d8 <Xil_Assert>
  106688:	e3a03001 	mov	r3, #1
  10668c:	e1a00006 	mov	r0, r6
  106690:	e5843000 	str	r3, [r4]
  106694:	eafffff5 	b	106670 <XUartPs_SetBaudRate+0x60>
  106698:	e30705b4 	movw	r0, #30132	; 0x75b4
  10669c:	e3a01e23 	mov	r1, #560	; 0x230
  1066a0:	eafffff6 	b	106680 <XUartPs_SetBaudRate+0x70>
  1066a4:	e30705b4 	movw	r0, #30132	; 0x75b4
  1066a8:	e3001231 	movw	r1, #561	; 0x231
  1066ac:	eafffff3 	b	106680 <XUartPs_SetBaudRate+0x70>
  1066b0:	e59b0004 	ldr	r0, [fp, #4]
  1066b4:	e0859105 	add	r9, r5, r5, lsl #2
  1066b8:	e3a04005 	mov	r4, #5
  1066bc:	e3e07000 	mvn	r7, #0
  1066c0:	e2800004 	add	r0, r0, #4
  1066c4:	ebfffed1 	bl	106210 <Xil_In32>
  1066c8:	e59b6008 	ldr	r6, [fp, #8]
  1066cc:	e3a03000 	mov	r3, #0
  1066d0:	e58d3000 	str	r3, [sp]
  1066d4:	e58d3004 	str	r3, [sp, #4]
  1066d8:	e3100001 	tst	r0, #1
  1066dc:	11a061a6 	lsrne	r6, r6, #3
  1066e0:	e1a01009 	mov	r1, r9
  1066e4:	e1a00006 	mov	r0, r6
  1066e8:	eb0000e2 	bl	106a78 <__aeabi_uidiv>
  1066ec:	e2448001 	sub	r8, r4, #1
  1066f0:	e0899005 	add	r9, r9, r5
  1066f4:	e6ef8078 	uxtb	r8, r8
  1066f8:	e1a0a000 	mov	sl, r0
  1066fc:	e1a00006 	mov	r0, r6
  106700:	e0010a94 	mul	r1, r4, sl
  106704:	eb0000db 	bl	106a78 <__aeabi_uidiv>
  106708:	e2844001 	add	r4, r4, #1
  10670c:	e1550000 	cmp	r5, r0
  106710:	e0651000 	rsb	r1, r5, r0
  106714:	80601005 	rsbhi	r1, r0, r5
  106718:	e1510007 	cmp	r1, r7
  10671c:	388d0500 	stmcc	sp, {r8, sl}
  106720:	31a07001 	movcc	r7, r1
  106724:	e3540c01 	cmp	r4, #256	; 0x100
  106728:	1affffec 	bne	1066e0 <XUartPs_SetBaudRate+0xd0>
  10672c:	e3a00064 	mov	r0, #100	; 0x64
  106730:	e1a01005 	mov	r1, r5
  106734:	e0000790 	mul	r0, r0, r7
  106738:	eb0000ce 	bl	106a78 <__aeabi_uidiv>
  10673c:	e3500003 	cmp	r0, #3
  106740:	8affffc9 	bhi	10666c <XUartPs_SetBaudRate+0x5c>
  106744:	e59b4004 	ldr	r4, [fp, #4]
  106748:	e1a00004 	mov	r0, r4
  10674c:	ebfffeaf 	bl	106210 <Xil_In32>
  106750:	e3c0103c 	bic	r1, r0, #60	; 0x3c
  106754:	e1a00004 	mov	r0, r4
  106758:	e3811028 	orr	r1, r1, #40	; 0x28
  10675c:	ebfffeb4 	bl	106234 <Xil_Out32>
  106760:	e59b0004 	ldr	r0, [fp, #4]
  106764:	e59d1004 	ldr	r1, [sp, #4]
  106768:	e2800018 	add	r0, r0, #24
  10676c:	ebfffeb0 	bl	106234 <Xil_Out32>
  106770:	e59b0004 	ldr	r0, [fp, #4]
  106774:	e59d1000 	ldr	r1, [sp]
  106778:	e2800034 	add	r0, r0, #52	; 0x34
  10677c:	ebfffeac 	bl	106234 <Xil_Out32>
  106780:	e59b4004 	ldr	r4, [fp, #4]
  106784:	e1a00004 	mov	r0, r4
  106788:	ebfffea0 	bl	106210 <Xil_In32>
  10678c:	e3c0103c 	bic	r1, r0, #60	; 0x3c
  106790:	e1a00004 	mov	r0, r4
  106794:	e3811014 	orr	r1, r1, #20
  106798:	ebfffea5 	bl	106234 <Xil_Out32>
  10679c:	e3a00000 	mov	r0, #0
  1067a0:	e58b5018 	str	r5, [fp, #24]
  1067a4:	eaffffb1 	b	106670 <XUartPs_SetBaudRate+0x60>
  1067a8:	e30705b4 	movw	r0, #30132	; 0x75b4
  1067ac:	e300122e 	movw	r1, #558	; 0x22e
  1067b0:	e3400010 	movt	r0, #16
  1067b4:	eb000087 	bl	1069d8 <Xil_Assert>
  1067b8:	e30a3794 	movw	r3, #42900	; 0xa794
  1067bc:	e3403010 	movt	r3, #16
  1067c0:	e3a02001 	mov	r2, #1
  1067c4:	e1a0000b 	mov	r0, fp
  1067c8:	e5832000 	str	r2, [r3]
  1067cc:	eaffffa7 	b	106670 <XUartPs_SetBaudRate+0x60>

001067d0 <XUartPs_CfgInitialize>:
  1067d0:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
  1067d4:	e2504000 	subs	r4, r0, #0
  1067d8:	e1a03001 	mov	r3, r1
  1067dc:	0a00003a 	beq	1068cc <XUartPs_CfgInitialize+0xfc>
  1067e0:	e30a6794 	movw	r6, #42900	; 0xa794
  1067e4:	e3510000 	cmp	r1, #0
  1067e8:	e3406010 	movt	r6, #16
  1067ec:	e3a05000 	mov	r5, #0
  1067f0:	e5865000 	str	r5, [r6]
  1067f4:	0a00002c 	beq	1068ac <XUartPs_CfgInitialize+0xdc>
  1067f8:	e591e008 	ldr	lr, [r1, #8]
  1067fc:	e306c2f8 	movw	ip, #25336	; 0x62f8
  106800:	e591100c 	ldr	r1, [r1, #12]
  106804:	e340c010 	movt	ip, #16
  106808:	e5842004 	str	r2, [r4, #4]
  10680c:	e3013111 	movw	r3, #4369	; 0x1111
  106810:	e584e008 	str	lr, [r4, #8]
  106814:	e7df3813 	bfi	r3, r3, #16, #16
  106818:	e584100c 	str	r1, [r4, #12]
  10681c:	e3a01cc2 	mov	r1, #49664	; 0xc200
  106820:	e584c034 	str	ip, [r4, #52]	; 0x34
  106824:	e3401001 	movt	r1, #1
  106828:	e584501c 	str	r5, [r4, #28]
  10682c:	e5845024 	str	r5, [r4, #36]	; 0x24
  106830:	e5845020 	str	r5, [r4, #32]
  106834:	e5845028 	str	r5, [r4, #40]	; 0x28
  106838:	e5845030 	str	r5, [r4, #48]	; 0x30
  10683c:	e584502c 	str	r5, [r4, #44]	; 0x2c
  106840:	e5843014 	str	r3, [r4, #20]
  106844:	ebffff71 	bl	106610 <XUartPs_SetBaudRate>
  106848:	e2507000 	subs	r7, r0, #0
  10684c:	15845014 	strne	r5, [r4, #20]
  106850:	1a000013 	bne	1068a4 <XUartPs_CfgInitialize+0xd4>
  106854:	e5940004 	ldr	r0, [r4, #4]
  106858:	e2800004 	add	r0, r0, #4
  10685c:	ebfffe6b 	bl	106210 <Xil_In32>
  106860:	e5943004 	ldr	r3, [r4, #4]
  106864:	e3c010be 	bic	r1, r0, #190	; 0xbe
  106868:	e2830004 	add	r0, r3, #4
  10686c:	e3811020 	orr	r1, r1, #32
  106870:	ebfffe6f 	bl	106234 <Xil_Out32>
  106874:	e5940004 	ldr	r0, [r4, #4]
  106878:	e3a01008 	mov	r1, #8
  10687c:	e2800020 	add	r0, r0, #32
  106880:	ebfffe6b 	bl	106234 <Xil_Out32>
  106884:	e5940004 	ldr	r0, [r4, #4]
  106888:	e3a01001 	mov	r1, #1
  10688c:	e280001c 	add	r0, r0, #28
  106890:	ebfffe67 	bl	106234 <Xil_Out32>
  106894:	e5940004 	ldr	r0, [r4, #4]
  106898:	e3011fff 	movw	r1, #8191	; 0x1fff
  10689c:	e280000c 	add	r0, r0, #12
  1068a0:	ebfffe63 	bl	106234 <Xil_Out32>
  1068a4:	e1a00007 	mov	r0, r7
  1068a8:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
  1068ac:	e30705b4 	movw	r0, #30132	; 0x75b4
  1068b0:	e3a01090 	mov	r1, #144	; 0x90
  1068b4:	e3400010 	movt	r0, #16
  1068b8:	e1a07003 	mov	r7, r3
  1068bc:	eb000045 	bl	1069d8 <Xil_Assert>
  1068c0:	e3a03001 	mov	r3, #1
  1068c4:	e5863000 	str	r3, [r6]
  1068c8:	eafffff5 	b	1068a4 <XUartPs_CfgInitialize+0xd4>
  1068cc:	e30705b4 	movw	r0, #30132	; 0x75b4
  1068d0:	e3a0108f 	mov	r1, #143	; 0x8f
  1068d4:	e3400010 	movt	r0, #16
  1068d8:	e1a07004 	mov	r7, r4
  1068dc:	eb00003d 	bl	1069d8 <Xil_Assert>
  1068e0:	e30a3794 	movw	r3, #42900	; 0xa794
  1068e4:	e3403010 	movt	r3, #16
  1068e8:	e3a02001 	mov	r2, #1
  1068ec:	e5832000 	str	r2, [r3]
  1068f0:	eaffffeb 	b	1068a4 <XUartPs_CfgInitialize+0xd4>

001068f4 <XUartPs_LookupConfig>:
  1068f4:	e30735d0 	movw	r3, #30160	; 0x75d0
  1068f8:	e3403010 	movt	r3, #16
  1068fc:	e1d320b0 	ldrh	r2, [r3]
  106900:	e1520000 	cmp	r2, r0
  106904:	01a00003 	moveq	r0, r3
  106908:	13a00000 	movne	r0, #0
  10690c:	e12fff1e 	bx	lr

00106910 <__cpu_init>:
  106910:	e3a00000 	mov	r0, #0
  106914:	ee050f10 	mcr	15, 0, r0, cr5, cr0, {0}
  106918:	ee050f30 	mcr	15, 0, r0, cr5, cr0, {1}
  10691c:	ee060f10 	mcr	15, 0, r0, cr6, cr0, {0}
  106920:	ee060f50 	mcr	15, 0, r0, cr6, cr0, {2}
  106924:	ee090f5d 	mcr	15, 0, r0, cr9, cr13, {2}
  106928:	ee0d0f50 	mcr	15, 0, r0, cr13, cr0, {2}
  10692c:	ee0d0f70 	mcr	15, 0, r0, cr13, cr0, {3}
  106930:	eeaf0f55 	mcr	15, 5, r0, cr15, cr5, {2}
  106934:	e3a02102 	mov	r2, #-2147483648	; 0x80000000
  106938:	ee092f7c 	mcr	15, 0, r2, cr9, cr12, {3}
  10693c:	e3a0200d 	mov	r2, #13
  106940:	ee092f1c 	mcr	15, 0, r2, cr9, cr12, {0}
  106944:	e3a02102 	mov	r2, #-2147483648	; 0x80000000
  106948:	ee092f3c 	mcr	15, 0, r2, cr9, cr12, {1}
  10694c:	e12fff1e 	bx	lr

00106950 <outbyte>:
  106950:	e1a01000 	mov	r1, r0
  106954:	e3a00a01 	mov	r0, #4096	; 0x1000
  106958:	e34e0000 	movt	r0, #57344	; 0xe000
  10695c:	ea00002e 	b	106a1c <XUartPs_SendByte>

00106960 <XSmc_SramInit>:
  106960:	e92d4008 	push	{r3, lr}
  106964:	e30e0014 	movw	r0, #57364	; 0xe014
  106968:	e3051155 	movw	r1, #20821	; 0x5155
  10696c:	e34e0000 	movt	r0, #57344	; 0xe000
  106970:	e3401012 	movt	r1, #18
  106974:	ebfffe2e 	bl	106234 <Xil_Out32>
  106978:	e3a01a03 	mov	r1, #12288	; 0x3000
  10697c:	e30e0018 	movw	r0, #57368	; 0xe018
  106980:	e34e0000 	movt	r0, #57344	; 0xe000
  106984:	ebfffe2a 	bl	106234 <Xil_Out32>
  106988:	e30e0010 	movw	r0, #57360	; 0xe010
  10698c:	e3a01503 	mov	r1, #12582912	; 0xc00000
  106990:	e34e0000 	movt	r0, #57344	; 0xe000
  106994:	e8bd4008 	pop	{r3, lr}
  106998:	eafffe25 	b	106234 <Xil_Out32>

0010699c <XSmc_NorInit>:
  10699c:	e92d4008 	push	{r3, lr}
  1069a0:	e30e0014 	movw	r0, #57364	; 0xe014
  1069a4:	e30a1a77 	movw	r1, #43639	; 0xaa77
  1069a8:	e34e0000 	movt	r0, #57344	; 0xe000
  1069ac:	e3401002 	movt	r1, #2
  1069b0:	ebfffe1f 	bl	106234 <Xil_Out32>
  1069b4:	e3a01a03 	mov	r1, #12288	; 0x3000
  1069b8:	e30e0018 	movw	r0, #57368	; 0xe018
  1069bc:	e34e0000 	movt	r0, #57344	; 0xe000
  1069c0:	ebfffe1b 	bl	106234 <Xil_Out32>
  1069c4:	e30e0010 	movw	r0, #57360	; 0xe010
  1069c8:	e3a01501 	mov	r1, #4194304	; 0x400000
  1069cc:	e34e0000 	movt	r0, #57344	; 0xe000
  1069d0:	e8bd4008 	pop	{r3, lr}
  1069d4:	eafffe16 	b	106234 <Xil_Out32>

001069d8 <Xil_Assert>:
  1069d8:	e92d4008 	push	{r3, lr}
  1069dc:	e3093a40 	movw	r3, #39488	; 0x9a40
  1069e0:	e3403010 	movt	r3, #16
  1069e4:	e5933000 	ldr	r3, [r3]
  1069e8:	e3530000 	cmp	r3, #0
  1069ec:	0a000000 	beq	1069f4 <Xil_Assert+0x1c>
  1069f0:	e12fff33 	blx	r3
  1069f4:	e30735cc 	movw	r3, #30156	; 0x75cc
  1069f8:	e3403010 	movt	r3, #16
  1069fc:	e5933000 	ldr	r3, [r3]
  106a00:	e3530000 	cmp	r3, #0
  106a04:	08bd8008 	popeq	{r3, pc}
  106a08:	eafffffe 	b	106a08 <Xil_Assert+0x30>

00106a0c <Xil_AssertSetCallback>:
  106a0c:	e3093a40 	movw	r3, #39488	; 0x9a40
  106a10:	e3403010 	movt	r3, #16
  106a14:	e5830000 	str	r0, [r3]
  106a18:	e12fff1e 	bx	lr

00106a1c <XUartPs_SendByte>:
  106a1c:	e92d4070 	push	{r4, r5, r6, lr}
  106a20:	e280402c 	add	r4, r0, #44	; 0x2c
  106a24:	e1a05000 	mov	r5, r0
  106a28:	e1a06001 	mov	r6, r1
  106a2c:	e1a00004 	mov	r0, r4
  106a30:	ebfffdf6 	bl	106210 <Xil_In32>
  106a34:	e3100010 	tst	r0, #16
  106a38:	1afffffb 	bne	106a2c <XUartPs_SendByte+0x10>
  106a3c:	e2850030 	add	r0, r5, #48	; 0x30
  106a40:	e1a01006 	mov	r1, r6
  106a44:	e8bd4070 	pop	{r4, r5, r6, lr}
  106a48:	eafffdf9 	b	106234 <Xil_Out32>

00106a4c <XUartPs_RecvByte>:
  106a4c:	e92d4038 	push	{r3, r4, r5, lr}
  106a50:	e280402c 	add	r4, r0, #44	; 0x2c
  106a54:	e1a05000 	mov	r5, r0
  106a58:	e1a00004 	mov	r0, r4
  106a5c:	ebfffdeb 	bl	106210 <Xil_In32>
  106a60:	e3100002 	tst	r0, #2
  106a64:	1afffffb 	bne	106a58 <XUartPs_RecvByte+0xc>
  106a68:	e2850030 	add	r0, r5, #48	; 0x30
  106a6c:	ebfffde7 	bl	106210 <Xil_In32>
  106a70:	e6ef0070 	uxtb	r0, r0
  106a74:	e8bd8038 	pop	{r3, r4, r5, pc}

00106a78 <__aeabi_uidiv>:
  106a78:	e2512001 	subs	r2, r1, #1
  106a7c:	012fff1e 	bxeq	lr
  106a80:	3a000074 	bcc	106c58 <__aeabi_uidiv+0x1e0>
  106a84:	e1500001 	cmp	r0, r1
  106a88:	9a00006b 	bls	106c3c <__aeabi_uidiv+0x1c4>
  106a8c:	e1110002 	tst	r1, r2
  106a90:	0a00006c 	beq	106c48 <__aeabi_uidiv+0x1d0>
  106a94:	e16f3f10 	clz	r3, r0
  106a98:	e16f2f11 	clz	r2, r1
  106a9c:	e0423003 	sub	r3, r2, r3
  106aa0:	e273301f 	rsbs	r3, r3, #31
  106aa4:	10833083 	addne	r3, r3, r3, lsl #1
  106aa8:	e3a02000 	mov	r2, #0
  106aac:	108ff103 	addne	pc, pc, r3, lsl #2
  106ab0:	e320f000 	nop	{0}
  106ab4:	e1500f81 	cmp	r0, r1, lsl #31
  106ab8:	e0a22002 	adc	r2, r2, r2
  106abc:	20400f81 	subcs	r0, r0, r1, lsl #31
  106ac0:	e1500f01 	cmp	r0, r1, lsl #30
  106ac4:	e0a22002 	adc	r2, r2, r2
  106ac8:	20400f01 	subcs	r0, r0, r1, lsl #30
  106acc:	e1500e81 	cmp	r0, r1, lsl #29
  106ad0:	e0a22002 	adc	r2, r2, r2
  106ad4:	20400e81 	subcs	r0, r0, r1, lsl #29
  106ad8:	e1500e01 	cmp	r0, r1, lsl #28
  106adc:	e0a22002 	adc	r2, r2, r2
  106ae0:	20400e01 	subcs	r0, r0, r1, lsl #28
  106ae4:	e1500d81 	cmp	r0, r1, lsl #27
  106ae8:	e0a22002 	adc	r2, r2, r2
  106aec:	20400d81 	subcs	r0, r0, r1, lsl #27
  106af0:	e1500d01 	cmp	r0, r1, lsl #26
  106af4:	e0a22002 	adc	r2, r2, r2
  106af8:	20400d01 	subcs	r0, r0, r1, lsl #26
  106afc:	e1500c81 	cmp	r0, r1, lsl #25
  106b00:	e0a22002 	adc	r2, r2, r2
  106b04:	20400c81 	subcs	r0, r0, r1, lsl #25
  106b08:	e1500c01 	cmp	r0, r1, lsl #24
  106b0c:	e0a22002 	adc	r2, r2, r2
  106b10:	20400c01 	subcs	r0, r0, r1, lsl #24
  106b14:	e1500b81 	cmp	r0, r1, lsl #23
  106b18:	e0a22002 	adc	r2, r2, r2
  106b1c:	20400b81 	subcs	r0, r0, r1, lsl #23
  106b20:	e1500b01 	cmp	r0, r1, lsl #22
  106b24:	e0a22002 	adc	r2, r2, r2
  106b28:	20400b01 	subcs	r0, r0, r1, lsl #22
  106b2c:	e1500a81 	cmp	r0, r1, lsl #21
  106b30:	e0a22002 	adc	r2, r2, r2
  106b34:	20400a81 	subcs	r0, r0, r1, lsl #21
  106b38:	e1500a01 	cmp	r0, r1, lsl #20
  106b3c:	e0a22002 	adc	r2, r2, r2
  106b40:	20400a01 	subcs	r0, r0, r1, lsl #20
  106b44:	e1500981 	cmp	r0, r1, lsl #19
  106b48:	e0a22002 	adc	r2, r2, r2
  106b4c:	20400981 	subcs	r0, r0, r1, lsl #19
  106b50:	e1500901 	cmp	r0, r1, lsl #18
  106b54:	e0a22002 	adc	r2, r2, r2
  106b58:	20400901 	subcs	r0, r0, r1, lsl #18
  106b5c:	e1500881 	cmp	r0, r1, lsl #17
  106b60:	e0a22002 	adc	r2, r2, r2
  106b64:	20400881 	subcs	r0, r0, r1, lsl #17
  106b68:	e1500801 	cmp	r0, r1, lsl #16
  106b6c:	e0a22002 	adc	r2, r2, r2
  106b70:	20400801 	subcs	r0, r0, r1, lsl #16
  106b74:	e1500781 	cmp	r0, r1, lsl #15
  106b78:	e0a22002 	adc	r2, r2, r2
  106b7c:	20400781 	subcs	r0, r0, r1, lsl #15
  106b80:	e1500701 	cmp	r0, r1, lsl #14
  106b84:	e0a22002 	adc	r2, r2, r2
  106b88:	20400701 	subcs	r0, r0, r1, lsl #14
  106b8c:	e1500681 	cmp	r0, r1, lsl #13
  106b90:	e0a22002 	adc	r2, r2, r2
  106b94:	20400681 	subcs	r0, r0, r1, lsl #13
  106b98:	e1500601 	cmp	r0, r1, lsl #12
  106b9c:	e0a22002 	adc	r2, r2, r2
  106ba0:	20400601 	subcs	r0, r0, r1, lsl #12
  106ba4:	e1500581 	cmp	r0, r1, lsl #11
  106ba8:	e0a22002 	adc	r2, r2, r2
  106bac:	20400581 	subcs	r0, r0, r1, lsl #11
  106bb0:	e1500501 	cmp	r0, r1, lsl #10
  106bb4:	e0a22002 	adc	r2, r2, r2
  106bb8:	20400501 	subcs	r0, r0, r1, lsl #10
  106bbc:	e1500481 	cmp	r0, r1, lsl #9
  106bc0:	e0a22002 	adc	r2, r2, r2
  106bc4:	20400481 	subcs	r0, r0, r1, lsl #9
  106bc8:	e1500401 	cmp	r0, r1, lsl #8
  106bcc:	e0a22002 	adc	r2, r2, r2
  106bd0:	20400401 	subcs	r0, r0, r1, lsl #8
  106bd4:	e1500381 	cmp	r0, r1, lsl #7
  106bd8:	e0a22002 	adc	r2, r2, r2
  106bdc:	20400381 	subcs	r0, r0, r1, lsl #7
  106be0:	e1500301 	cmp	r0, r1, lsl #6
  106be4:	e0a22002 	adc	r2, r2, r2
  106be8:	20400301 	subcs	r0, r0, r1, lsl #6
  106bec:	e1500281 	cmp	r0, r1, lsl #5
  106bf0:	e0a22002 	adc	r2, r2, r2
  106bf4:	20400281 	subcs	r0, r0, r1, lsl #5
  106bf8:	e1500201 	cmp	r0, r1, lsl #4
  106bfc:	e0a22002 	adc	r2, r2, r2
  106c00:	20400201 	subcs	r0, r0, r1, lsl #4
  106c04:	e1500181 	cmp	r0, r1, lsl #3
  106c08:	e0a22002 	adc	r2, r2, r2
  106c0c:	20400181 	subcs	r0, r0, r1, lsl #3
  106c10:	e1500101 	cmp	r0, r1, lsl #2
  106c14:	e0a22002 	adc	r2, r2, r2
  106c18:	20400101 	subcs	r0, r0, r1, lsl #2
  106c1c:	e1500081 	cmp	r0, r1, lsl #1
  106c20:	e0a22002 	adc	r2, r2, r2
  106c24:	20400081 	subcs	r0, r0, r1, lsl #1
  106c28:	e1500001 	cmp	r0, r1
  106c2c:	e0a22002 	adc	r2, r2, r2
  106c30:	20400001 	subcs	r0, r0, r1
  106c34:	e1a00002 	mov	r0, r2
  106c38:	e12fff1e 	bx	lr
  106c3c:	03a00001 	moveq	r0, #1
  106c40:	13a00000 	movne	r0, #0
  106c44:	e12fff1e 	bx	lr
  106c48:	e16f2f11 	clz	r2, r1
  106c4c:	e262201f 	rsb	r2, r2, #31
  106c50:	e1a00230 	lsr	r0, r0, r2
  106c54:	e12fff1e 	bx	lr
  106c58:	e3500000 	cmp	r0, #0
  106c5c:	13e00000 	mvnne	r0, #0
  106c60:	ea000007 	b	106c84 <__aeabi_idiv0>

00106c64 <__aeabi_uidivmod>:
  106c64:	e3510000 	cmp	r1, #0
  106c68:	0afffffa 	beq	106c58 <__aeabi_uidiv+0x1e0>
  106c6c:	e92d4003 	push	{r0, r1, lr}
  106c70:	ebffff80 	bl	106a78 <__aeabi_uidiv>
  106c74:	e8bd4006 	pop	{r1, r2, lr}
  106c78:	e0030092 	mul	r3, r2, r0
  106c7c:	e0411003 	sub	r1, r1, r3
  106c80:	e12fff1e 	bx	lr

00106c84 <__aeabi_idiv0>:
  106c84:	e12fff1e 	bx	lr

00106c88 <exit>:
  106c88:	e92d4008 	push	{r3, lr}
  106c8c:	e3a01000 	mov	r1, #0
  106c90:	e1a04000 	mov	r4, r0
  106c94:	eb000036 	bl	106d74 <__call_exitprocs>
  106c98:	e30733b8 	movw	r3, #29624	; 0x73b8
  106c9c:	e3403010 	movt	r3, #16
  106ca0:	e5930000 	ldr	r0, [r3]
  106ca4:	e590303c 	ldr	r3, [r0, #60]	; 0x3c
  106ca8:	e3530000 	cmp	r3, #0
  106cac:	0a000000 	beq	106cb4 <exit+0x2c>
  106cb0:	e12fff33 	blx	r3
  106cb4:	e1a00004 	mov	r0, r4
  106cb8:	eb0000c9 	bl	106fe4 <_exit>

00106cbc <__libc_fini_array>:
  106cbc:	e92d4038 	push	{r3, r4, r5, lr}
  106cc0:	e3074a24 	movw	r4, #31268	; 0x7a24
  106cc4:	e3075a20 	movw	r5, #31264	; 0x7a20
  106cc8:	e3404010 	movt	r4, #16
  106ccc:	e3405010 	movt	r5, #16
  106cd0:	e0654004 	rsb	r4, r5, r4
  106cd4:	e1b04144 	asrs	r4, r4, #2
  106cd8:	10855104 	addne	r5, r5, r4, lsl #2
  106cdc:	0a000003 	beq	106cf0 <__libc_fini_array+0x34>
  106ce0:	e5353004 	ldr	r3, [r5, #-4]!
  106ce4:	e12fff33 	blx	r3
  106ce8:	e2544001 	subs	r4, r4, #1
  106cec:	1afffffb 	bne	106ce0 <__libc_fini_array+0x24>
  106cf0:	e8bd4038 	pop	{r3, r4, r5, lr}
  106cf4:	ea000103 	b	107108 <_fini>

00106cf8 <__libc_init_array>:
  106cf8:	e92d4070 	push	{r4, r5, r6, lr}
  106cfc:	e3076a18 	movw	r6, #31256	; 0x7a18
  106d00:	e3075a18 	movw	r5, #31256	; 0x7a18
  106d04:	e3406010 	movt	r6, #16
  106d08:	e3405010 	movt	r5, #16
  106d0c:	e0656006 	rsb	r6, r5, r6
  106d10:	e1b06146 	asrs	r6, r6, #2
  106d14:	12455004 	subne	r5, r5, #4
  106d18:	13a04000 	movne	r4, #0
  106d1c:	0a000004 	beq	106d34 <__libc_init_array+0x3c>
  106d20:	e5b53004 	ldr	r3, [r5, #4]!
  106d24:	e2844001 	add	r4, r4, #1
  106d28:	e12fff33 	blx	r3
  106d2c:	e1560004 	cmp	r6, r4
  106d30:	1afffffa 	bne	106d20 <__libc_init_array+0x28>
  106d34:	e3076a20 	movw	r6, #31264	; 0x7a20
  106d38:	e3075a18 	movw	r5, #31256	; 0x7a18
  106d3c:	e3406010 	movt	r6, #16
  106d40:	e3405010 	movt	r5, #16
  106d44:	e0656006 	rsb	r6, r5, r6
  106d48:	eb0000e8 	bl	1070f0 <_init>
  106d4c:	e1b06146 	asrs	r6, r6, #2
  106d50:	08bd8070 	popeq	{r4, r5, r6, pc}
  106d54:	e2455004 	sub	r5, r5, #4
  106d58:	e3a04000 	mov	r4, #0
  106d5c:	e5b53004 	ldr	r3, [r5, #4]!
  106d60:	e2844001 	add	r4, r4, #1
  106d64:	e12fff33 	blx	r3
  106d68:	e1560004 	cmp	r6, r4
  106d6c:	1afffffa 	bne	106d5c <__libc_init_array+0x64>
  106d70:	e8bd8070 	pop	{r4, r5, r6, pc}

00106d74 <__call_exitprocs>:
  106d74:	e30733b8 	movw	r3, #29624	; 0x73b8
  106d78:	e3403010 	movt	r3, #16
  106d7c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  106d80:	e24dd014 	sub	sp, sp, #20
  106d84:	e5933000 	ldr	r3, [r3]
  106d88:	e1a06001 	mov	r6, r1
  106d8c:	e3a0a001 	mov	sl, #1
  106d90:	e3002000 	movw	r2, #0
  106d94:	e58d0008 	str	r0, [sp, #8]
  106d98:	e3402000 	movt	r2, #0
  106d9c:	e58d3004 	str	r3, [sp, #4]
  106da0:	e2833f52 	add	r3, r3, #328	; 0x148
  106da4:	e58d2000 	str	r2, [sp]
  106da8:	e58d300c 	str	r3, [sp, #12]
  106dac:	e59d2004 	ldr	r2, [sp, #4]
  106db0:	e59db00c 	ldr	fp, [sp, #12]
  106db4:	e5927148 	ldr	r7, [r2, #328]	; 0x148
  106db8:	e3570000 	cmp	r7, #0
  106dbc:	0a000032 	beq	106e8c <__call_exitprocs+0x118>
  106dc0:	e5975004 	ldr	r5, [r7, #4]
  106dc4:	e2554001 	subs	r4, r5, #1
  106dc8:	4a00002c 	bmi	106e80 <__call_exitprocs+0x10c>
  106dcc:	e285501f 	add	r5, r5, #31
  106dd0:	e2878088 	add	r8, r7, #136	; 0x88
  106dd4:	e0885105 	add	r5, r8, r5, lsl #2
  106dd8:	ea000006 	b	106df8 <__call_exitprocs+0x84>
  106ddc:	e5953000 	ldr	r3, [r5]
  106de0:	e1530006 	cmp	r3, r6
  106de4:	0a000005 	beq	106e00 <__call_exitprocs+0x8c>
  106de8:	e2444001 	sub	r4, r4, #1
  106dec:	e2455004 	sub	r5, r5, #4
  106df0:	e3740001 	cmn	r4, #1
  106df4:	0a000021 	beq	106e80 <__call_exitprocs+0x10c>
  106df8:	e3560000 	cmp	r6, #0
  106dfc:	1afffff6 	bne	106ddc <__call_exitprocs+0x68>
  106e00:	e5973004 	ldr	r3, [r7, #4]
  106e04:	e0682005 	rsb	r2, r8, r5
  106e08:	e0872002 	add	r2, r7, r2
  106e0c:	e2433001 	sub	r3, r3, #1
  106e10:	e1530004 	cmp	r3, r4
  106e14:	e5123078 	ldr	r3, [r2, #-120]	; 0xffffff88
  106e18:	05874004 	streq	r4, [r7, #4]
  106e1c:	13a01000 	movne	r1, #0
  106e20:	15021078 	strne	r1, [r2, #-120]	; 0xffffff88
  106e24:	e3530000 	cmp	r3, #0
  106e28:	0affffee 	beq	106de8 <__call_exitprocs+0x74>
  106e2c:	e5971188 	ldr	r1, [r7, #392]	; 0x188
  106e30:	e1a0241a 	lsl	r2, sl, r4
  106e34:	e5979004 	ldr	r9, [r7, #4]
  106e38:	e1120001 	tst	r2, r1
  106e3c:	0a000014 	beq	106e94 <__call_exitprocs+0x120>
  106e40:	e597118c 	ldr	r1, [r7, #396]	; 0x18c
  106e44:	e1120001 	tst	r2, r1
  106e48:	1a000013 	bne	106e9c <__call_exitprocs+0x128>
  106e4c:	e59d0008 	ldr	r0, [sp, #8]
  106e50:	e5151080 	ldr	r1, [r5, #-128]	; 0xffffff80
  106e54:	e12fff33 	blx	r3
  106e58:	e5973004 	ldr	r3, [r7, #4]
  106e5c:	e1530009 	cmp	r3, r9
  106e60:	1affffd1 	bne	106dac <__call_exitprocs+0x38>
  106e64:	e59b3000 	ldr	r3, [fp]
  106e68:	e1530007 	cmp	r3, r7
  106e6c:	1affffce 	bne	106dac <__call_exitprocs+0x38>
  106e70:	e2444001 	sub	r4, r4, #1
  106e74:	e2455004 	sub	r5, r5, #4
  106e78:	e3740001 	cmn	r4, #1
  106e7c:	1affffdd 	bne	106df8 <__call_exitprocs+0x84>
  106e80:	e59d2000 	ldr	r2, [sp]
  106e84:	e3520000 	cmp	r2, #0
  106e88:	1a000006 	bne	106ea8 <__call_exitprocs+0x134>
  106e8c:	e28dd014 	add	sp, sp, #20
  106e90:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  106e94:	e12fff33 	blx	r3
  106e98:	eaffffee 	b	106e58 <__call_exitprocs+0xe4>
  106e9c:	e5150080 	ldr	r0, [r5, #-128]	; 0xffffff80
  106ea0:	e12fff33 	blx	r3
  106ea4:	eaffffeb 	b	106e58 <__call_exitprocs+0xe4>
  106ea8:	e5973004 	ldr	r3, [r7, #4]
  106eac:	e3530000 	cmp	r3, #0
  106eb0:	e5973000 	ldr	r3, [r7]
  106eb4:	1a000006 	bne	106ed4 <__call_exitprocs+0x160>
  106eb8:	e3530000 	cmp	r3, #0
  106ebc:	0a000004 	beq	106ed4 <__call_exitprocs+0x160>
  106ec0:	e1a00007 	mov	r0, r7
  106ec4:	e58b3000 	str	r3, [fp]
  106ec8:	e320f000 	nop	{0}
  106ecc:	e59b7000 	ldr	r7, [fp]
  106ed0:	eaffffb8 	b	106db8 <__call_exitprocs+0x44>
  106ed4:	e1a0b007 	mov	fp, r7
  106ed8:	e1a07003 	mov	r7, r3
  106edc:	eaffffb5 	b	106db8 <__call_exitprocs+0x44>

00106ee0 <atexit>:
  106ee0:	e1a01000 	mov	r1, r0
  106ee4:	e3a00000 	mov	r0, #0
  106ee8:	e1a02000 	mov	r2, r0
  106eec:	e1a03000 	mov	r3, r0
  106ef0:	eaffffff 	b	106ef4 <__register_exitproc>

00106ef4 <__register_exitproc>:
  106ef4:	e307c3b8 	movw	ip, #29624	; 0x73b8
  106ef8:	e340c010 	movt	ip, #16
  106efc:	e92d40f0 	push	{r4, r5, r6, r7, lr}
  106f00:	e1a06000 	mov	r6, r0
  106f04:	e59c4000 	ldr	r4, [ip]
  106f08:	e24dd014 	sub	sp, sp, #20
  106f0c:	e594c148 	ldr	ip, [r4, #328]	; 0x148
  106f10:	e35c0000 	cmp	ip, #0
  106f14:	0284cf53 	addeq	ip, r4, #332	; 0x14c
  106f18:	0584c148 	streq	ip, [r4, #328]	; 0x148
  106f1c:	e59c5004 	ldr	r5, [ip, #4]
  106f20:	e355001f 	cmp	r5, #31
  106f24:	da000016 	ble	106f84 <__register_exitproc+0x90>
  106f28:	e300c000 	movw	ip, #0
  106f2c:	e340c000 	movt	ip, #0
  106f30:	e35c0000 	cmp	ip, #0
  106f34:	1a000001 	bne	106f40 <__register_exitproc+0x4c>
  106f38:	e3e00000 	mvn	r0, #0
  106f3c:	ea000018 	b	106fa4 <__register_exitproc+0xb0>
  106f40:	e3a00e19 	mov	r0, #400	; 0x190
  106f44:	e58d100c 	str	r1, [sp, #12]
  106f48:	e58d2008 	str	r2, [sp, #8]
  106f4c:	e58d3004 	str	r3, [sp, #4]
  106f50:	e320f000 	nop	{0}
  106f54:	e59d100c 	ldr	r1, [sp, #12]
  106f58:	e59d2008 	ldr	r2, [sp, #8]
  106f5c:	e59d3004 	ldr	r3, [sp, #4]
  106f60:	e250c000 	subs	ip, r0, #0
  106f64:	0afffff3 	beq	106f38 <__register_exitproc+0x44>
  106f68:	e5945148 	ldr	r5, [r4, #328]	; 0x148
  106f6c:	e3a00000 	mov	r0, #0
  106f70:	e58c0004 	str	r0, [ip, #4]
  106f74:	e58c5000 	str	r5, [ip]
  106f78:	e584c148 	str	ip, [r4, #328]	; 0x148
  106f7c:	e58c0188 	str	r0, [ip, #392]	; 0x188
  106f80:	e58c018c 	str	r0, [ip, #396]	; 0x18c
  106f84:	e3560000 	cmp	r6, #0
  106f88:	e59c4004 	ldr	r4, [ip, #4]
  106f8c:	1a000006 	bne	106fac <__register_exitproc+0xb8>
  106f90:	e2843002 	add	r3, r4, #2
  106f94:	e3a00000 	mov	r0, #0
  106f98:	e2844001 	add	r4, r4, #1
  106f9c:	e58c4004 	str	r4, [ip, #4]
  106fa0:	e78c1103 	str	r1, [ip, r3, lsl #2]
  106fa4:	e28dd014 	add	sp, sp, #20
  106fa8:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
  106fac:	e3560002 	cmp	r6, #2
  106fb0:	e08c6104 	add	r6, ip, r4, lsl #2
  106fb4:	e59c7188 	ldr	r7, [ip, #392]	; 0x188
  106fb8:	e3a00001 	mov	r0, #1
  106fbc:	e5863108 	str	r3, [r6, #264]	; 0x108
  106fc0:	e1a00410 	lsl	r0, r0, r4
  106fc4:	059c318c 	ldreq	r3, [ip, #396]	; 0x18c
  106fc8:	e1877000 	orr	r7, r7, r0
  106fcc:	e1a05006 	mov	r5, r6
  106fd0:	e58c7188 	str	r7, [ip, #392]	; 0x188
  106fd4:	01830000 	orreq	r0, r3, r0
  106fd8:	e5862088 	str	r2, [r6, #136]	; 0x88
  106fdc:	058c018c 	streq	r0, [ip, #396]	; 0x18c
  106fe0:	eaffffea 	b	106f90 <__register_exitproc+0x9c>

00106fe4 <_exit>:
  106fe4:	eafffffe 	b	106fe4 <_exit>

00106fe8 <main>:
  106fe8:	e92d4010 	push	{r4, lr}
  106fec:	e24dd018 	sub	sp, sp, #24
  106ff0:	ebfff9ba 	bl	1056e0 <BSP_Init>
  106ff4:	e3a04000 	mov	r4, #0
  106ff8:	ebfff918 	bl	105460 <CPU_Init>
  106ffc:	ebfff9f7 	bl	1057e0 <guest_CPU_IntDis>
  107000:	e307041c 	movw	r0, #29724	; 0x741c
  107004:	e3400010 	movt	r0, #16
  107008:	ebfffa91 	bl	105a54 <print>
  10700c:	e3070424 	movw	r0, #29732	; 0x7424
  107010:	e3400010 	movt	r0, #16
  107014:	ebfffa8e 	bl	105a54 <print>
  107018:	e3070430 	movw	r0, #29744	; 0x7430
  10701c:	e3400010 	movt	r0, #16
  107020:	ebfffa8b 	bl	105a54 <print>
  107024:	e307043c 	movw	r0, #29756	; 0x743c
  107028:	e3400010 	movt	r0, #16
  10702c:	ebfffa88 	bl	105a54 <print>
  107030:	e3070470 	movw	r0, #29808	; 0x7470
  107034:	e3400010 	movt	r0, #16
  107038:	ebfffa85 	bl	105a54 <print>
  10703c:	e30704ac 	movw	r0, #29868	; 0x74ac
  107040:	e3400010 	movt	r0, #16
  107044:	ebfffa82 	bl	105a54 <print>
  107048:	e30704e8 	movw	r0, #29928	; 0x74e8
  10704c:	e3400010 	movt	r0, #16
  107050:	ebfffa7f 	bl	105a54 <print>
  107054:	e3070524 	movw	r0, #29988	; 0x7524
  107058:	e3400010 	movt	r0, #16
  10705c:	ebfffa7c 	bl	105a54 <print>
  107060:	e3070558 	movw	r0, #30040	; 0x7558
  107064:	e3400010 	movt	r0, #16
  107068:	ebfffa79 	bl	105a54 <print>
  10706c:	e3070584 	movw	r0, #30084	; 0x7584
  107070:	e3400010 	movt	r0, #16
  107074:	ebfffa76 	bl	105a54 <print>
  107078:	ebffe46b 	bl	10022c <OSInit>
  10707c:	e59f004c 	ldr	r0, [pc, #76]	; 1070d0 <main+0xe8>
  107080:	e3a0c008 	mov	ip, #8
  107084:	e1a01004 	mov	r1, r4
  107088:	e2802e7f 	add	r2, r0, #2032	; 0x7f0
  10708c:	e1a0300c 	mov	r3, ip
  107090:	e282200c 	add	r2, r2, #12
  107094:	e58dc000 	str	ip, [sp]
  107098:	e58d0004 	str	r0, [sp, #4]
  10709c:	e3a0c003 	mov	ip, #3
  1070a0:	e58d400c 	str	r4, [sp, #12]
  1070a4:	e3a00c02 	mov	r0, #512	; 0x200
  1070a8:	e58dc010 	str	ip, [sp, #16]
  1070ac:	e58d0008 	str	r0, [sp, #8]
  1070b0:	e30508f4 	movw	r0, #22772	; 0x58f4
  1070b4:	e3400010 	movt	r0, #16
  1070b8:	ebffee52 	bl	102a08 <OSTaskCreateExt>
  1070bc:	ebfff9c8 	bl	1057e4 <guest_CPU_IntEn>
  1070c0:	ebffe558 	bl	100628 <OSStart>
  1070c4:	e1a00004 	mov	r0, r4
  1070c8:	e28dd018 	add	sp, sp, #24
  1070cc:	e8bd8010 	pop	{r4, pc}
  1070d0:	00109240 	andseq	r9, r0, r0, asr #4

001070d4 <register_fini>:
  1070d4:	e3003000 	movw	r3, #0
  1070d8:	e3403000 	movt	r3, #0
  1070dc:	e3530000 	cmp	r3, #0
  1070e0:	012fff1e 	bxeq	lr
  1070e4:	e3060cbc 	movw	r0, #27836	; 0x6cbc
  1070e8:	e3400010 	movt	r0, #16
  1070ec:	eaffff7b 	b	106ee0 <atexit>

Disassembly of section .init:

001070f0 <_init>:
  1070f0:	e1a0c00d 	mov	ip, sp
  1070f4:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
  1070f8:	e24cb004 	sub	fp, ip, #4
  1070fc:	e24bd028 	sub	sp, fp, #40	; 0x28
  107100:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
  107104:	e12fff1e 	bx	lr

Disassembly of section .fini:

00107108 <_fini>:
  107108:	e1a0c00d 	mov	ip, sp
  10710c:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
  107110:	e24cb004 	sub	fp, ip, #4
  107114:	e24bd028 	sub	sp, fp, #40	; 0x28
  107118:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
  10711c:	e12fff1e 	bx	lr

Disassembly of section .rodata:

00107120 <OSUnMapTbl>:
  107120:	00010000 	andeq	r0, r1, r0
  107124:	00010002 	andeq	r0, r1, r2
  107128:	00010003 	andeq	r0, r1, r3
  10712c:	00010002 	andeq	r0, r1, r2
  107130:	00010004 	andeq	r0, r1, r4
  107134:	00010002 	andeq	r0, r1, r2
  107138:	00010003 	andeq	r0, r1, r3
  10713c:	00010002 	andeq	r0, r1, r2
  107140:	00010005 	andeq	r0, r1, r5
  107144:	00010002 	andeq	r0, r1, r2
  107148:	00010003 	andeq	r0, r1, r3
  10714c:	00010002 	andeq	r0, r1, r2
  107150:	00010004 	andeq	r0, r1, r4
  107154:	00010002 	andeq	r0, r1, r2
  107158:	00010003 	andeq	r0, r1, r3
  10715c:	00010002 	andeq	r0, r1, r2
  107160:	00010006 	andeq	r0, r1, r6
  107164:	00010002 	andeq	r0, r1, r2
  107168:	00010003 	andeq	r0, r1, r3
  10716c:	00010002 	andeq	r0, r1, r2
  107170:	00010004 	andeq	r0, r1, r4
  107174:	00010002 	andeq	r0, r1, r2
  107178:	00010003 	andeq	r0, r1, r3
  10717c:	00010002 	andeq	r0, r1, r2
  107180:	00010005 	andeq	r0, r1, r5
  107184:	00010002 	andeq	r0, r1, r2
  107188:	00010003 	andeq	r0, r1, r3
  10718c:	00010002 	andeq	r0, r1, r2
  107190:	00010004 	andeq	r0, r1, r4
  107194:	00010002 	andeq	r0, r1, r2
  107198:	00010003 	andeq	r0, r1, r3
  10719c:	00010002 	andeq	r0, r1, r2
  1071a0:	00010007 	andeq	r0, r1, r7
  1071a4:	00010002 	andeq	r0, r1, r2
  1071a8:	00010003 	andeq	r0, r1, r3
  1071ac:	00010002 	andeq	r0, r1, r2
  1071b0:	00010004 	andeq	r0, r1, r4
  1071b4:	00010002 	andeq	r0, r1, r2
  1071b8:	00010003 	andeq	r0, r1, r3
  1071bc:	00010002 	andeq	r0, r1, r2
  1071c0:	00010005 	andeq	r0, r1, r5
  1071c4:	00010002 	andeq	r0, r1, r2
  1071c8:	00010003 	andeq	r0, r1, r3
  1071cc:	00010002 	andeq	r0, r1, r2
  1071d0:	00010004 	andeq	r0, r1, r4
  1071d4:	00010002 	andeq	r0, r1, r2
  1071d8:	00010003 	andeq	r0, r1, r3
  1071dc:	00010002 	andeq	r0, r1, r2
  1071e0:	00010006 	andeq	r0, r1, r6
  1071e4:	00010002 	andeq	r0, r1, r2
  1071e8:	00010003 	andeq	r0, r1, r3
  1071ec:	00010002 	andeq	r0, r1, r2
  1071f0:	00010004 	andeq	r0, r1, r4
  1071f4:	00010002 	andeq	r0, r1, r2
  1071f8:	00010003 	andeq	r0, r1, r3
  1071fc:	00010002 	andeq	r0, r1, r2
  107200:	00010005 	andeq	r0, r1, r5
  107204:	00010002 	andeq	r0, r1, r2
  107208:	00010003 	andeq	r0, r1, r3
  10720c:	00010002 	andeq	r0, r1, r2
  107210:	00010004 	andeq	r0, r1, r4
  107214:	00010002 	andeq	r0, r1, r2
  107218:	00010003 	andeq	r0, r1, r3
  10721c:	00010002 	andeq	r0, r1, r2

00107220 <OSDebugEn>:
  107220:	00000000 	andeq	r0, r0, r0

00107224 <Str_MultOvfThTbl_Int32U>:
  107224:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  107228:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  10722c:	7fffffff 	svcvc	0x00ffffff
  107230:	55555555 	ldrbpl	r5, [r5, #-1365]	; 0xfffffaab
  107234:	3fffffff 	svccc	0x00ffffff
  107238:	33333333 	teqcc	r3, #-872415232	; 0xcc000000
  10723c:	2aaaaaaa 	bcs	febb1cec <CPU_ARM_BIT_CNTES_C+0x7ebb1cec>
  107240:	24924924 	ldrcs	r4, [r2], #2340	; 0x924
  107244:	1fffffff 	svcne	0x00ffffff
  107248:	1c71c71c 	ldclne	7, cr12, [r1], #-112	; 0xffffff90
  10724c:	19999999 	ldmibne	r9, {r0, r3, r4, r7, r8, fp, ip, pc}
  107250:	1745d174 	smlsldxne	sp, r5, r4, r1
  107254:	15555555 	ldrbne	r5, [r5, #-1365]	; 0xfffffaab
  107258:	13b13b13 			; <UNDEFINED> instruction: 0x13b13b13
  10725c:	12492492 	subne	r2, r9, #-1845493760	; 0x92000000
  107260:	11111111 	tstne	r1, r1, lsl r1
  107264:	0fffffff 	svceq	0x00ffffff
  107268:	0f0f0f0f 	svceq	0x000f0f0f
  10726c:	0e38e38e 	cdpeq	3, 3, cr14, cr8, cr14, {4}
  107270:	0d79435e 	ldcleq	3, cr4, [r9, #-376]!	; 0xfffffe88
  107274:	0ccccccc 	stcleq	12, cr12, [ip], {204}	; 0xcc
  107278:	0c30c30c 	ldceq	3, cr12, [r0], #-48	; 0xffffffd0
  10727c:	0ba2e8ba 	bleq	fe9c156c <CPU_ARM_BIT_CNTES_C+0x7e9c156c>
  107280:	0b21642c 	bleq	960338 <__undef_stack+0x84e798>
  107284:	0aaaaaaa 	beq	febb1d34 <CPU_ARM_BIT_CNTES_C+0x7ebb1d34>
  107288:	0a3d70a3 	beq	106351c <__undef_stack+0xf5197c>
  10728c:	09d89d89 	ldmibeq	r8, {r0, r3, r7, r8, sl, fp, ip, pc}^
  107290:	097b425e 	ldmdbeq	fp!, {r1, r2, r3, r4, r6, r9, lr}^
  107294:	09249249 	stmdbeq	r4!, {r0, r3, r6, r9, ip, pc}
  107298:	08d3dcb0 	ldmeq	r3, {r4, r5, r7, sl, fp, ip, lr, pc}^
  10729c:	08888888 	stmeq	r8, {r3, r7, fp, pc}
  1072a0:	08421084 	stmdaeq	r2, {r2, r7, ip}^
  1072a4:	07ffffff 			; <UNDEFINED> instruction: 0x07ffffff
  1072a8:	07c1f07c 			; <UNDEFINED> instruction: 0x07c1f07c
  1072ac:	07878787 	streq	r8, [r7, r7, lsl #15]
  1072b0:	07507507 	ldrbeq	r7, [r0, -r7, lsl #10]
  1072b4:	071c71c7 	ldreq	r7, [ip, -r7, asr #3]

001072b8 <CPU_CntLeadZerosTbl>:
  1072b8:	06060708 	streq	r0, [r6], -r8, lsl #14
  1072bc:	05050505 	streq	r0, [r5, #-1285]	; 0xfffffafb
  1072c0:	04040404 	streq	r0, [r4], #-1028	; 0xfffffbfc
  1072c4:	04040404 	streq	r0, [r4], #-1028	; 0xfffffbfc
  1072c8:	03030303 	movweq	r0, #13059	; 0x3303
  1072cc:	03030303 	movweq	r0, #13059	; 0x3303
  1072d0:	03030303 	movweq	r0, #13059	; 0x3303
  1072d4:	03030303 	movweq	r0, #13059	; 0x3303
  1072d8:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
  1072dc:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
  1072e0:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
  1072e4:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
  1072e8:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
  1072ec:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
  1072f0:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
  1072f4:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
  1072f8:	01010101 	tsteq	r1, r1, lsl #2
  1072fc:	01010101 	tsteq	r1, r1, lsl #2
  107300:	01010101 	tsteq	r1, r1, lsl #2
  107304:	01010101 	tsteq	r1, r1, lsl #2
  107308:	01010101 	tsteq	r1, r1, lsl #2
  10730c:	01010101 	tsteq	r1, r1, lsl #2
  107310:	01010101 	tsteq	r1, r1, lsl #2
  107314:	01010101 	tsteq	r1, r1, lsl #2
  107318:	01010101 	tsteq	r1, r1, lsl #2
  10731c:	01010101 	tsteq	r1, r1, lsl #2
  107320:	01010101 	tsteq	r1, r1, lsl #2
  107324:	01010101 	tsteq	r1, r1, lsl #2
  107328:	01010101 	tsteq	r1, r1, lsl #2
  10732c:	01010101 	tsteq	r1, r1, lsl #2
  107330:	01010101 	tsteq	r1, r1, lsl #2
  107334:	01010101 	tsteq	r1, r1, lsl #2
	...

001073b8 <_global_impure_ptr>:
  1073b8:	001075e8 	andseq	r7, r0, r8, ror #11
  1073bc:	0000003f 	andeq	r0, r0, pc, lsr r0
  1073c0:	4f2f4375 	svcmi	0x002f4375
  1073c4:	49492d53 	stmdbmi	r9, {r0, r1, r4, r6, r8, sl, fp, sp}^
  1073c8:	6c644920 	stclvs	9, cr4, [r4], #-128	; 0xffffff80
  1073cc:	00000065 	andeq	r0, r0, r5, rrx
  1073d0:	6b736154 	blvs	1ddf928 <__undef_stack+0x1ccdd88>
  1073d4:	61745320 	cmnvs	r4, r0, lsr #6
  1073d8:	43207472 	teqmi	r0, #1912602624	; 0x72000000
  1073dc:	74616572 	strbtvc	r6, [r1], #-1394	; 0xfffffa8e
  1073e0:	0a0d6465 	beq	46057c <__undef_stack+0x34e9dc>
  1073e4:	00000000 	andeq	r0, r0, r0
  1073e8:	0000002e 	andeq	r0, r0, lr, lsr #32
  1073ec:	6b736154 	blvs	1ddf944 <__undef_stack+0x1ccdda4>
  1073f0:	20322320 	eorscs	r2, r2, r0, lsr #6
  1073f4:	72617453 	rsbvc	r7, r1, #1392508928	; 0x53000000
  1073f8:	0d646574 	cfstr64eq	mvdx6, [r4, #-464]!	; 0xfffffe30
  1073fc:	0000000a 	andeq	r0, r0, sl
  107400:	00000032 	andeq	r0, r0, r2, lsr r0
  107404:	6b736154 	blvs	1ddf95c <__undef_stack+0x1ccddbc>
  107408:	20312320 	eorscs	r2, r1, r0, lsr #6
  10740c:	72617453 	rsbvc	r7, r1, #1392508928	; 0x53000000
  107410:	0d646574 	cfstr64eq	mvdx6, [r4, #-464]!	; 0xfffffe30
  107414:	0000000a 	andeq	r0, r0, sl
  107418:	00000031 	andeq	r0, r0, r1, lsr r0
  10741c:	0a0d0c0c 	beq	44a454 <__undef_stack+0x3388b4>
  107420:	00000000 	andeq	r0, r0, r0
  107424:	7263694d 	rsbvc	r6, r3, #1261568	; 0x134000
  107428:	0d6d7569 	cfstr64eq	mvdx7, [sp, #-420]!	; 0xfffffe5c
  10742c:	0000000a 	andeq	r0, r0, sl
  107430:	534f4375 	movtpl	r4, #62325	; 0xf375
  107434:	0d49492d 	stcleq	9, cr4, [r9, #-180]	; 0xffffff4c
  107438:	000a0d0a 	andeq	r0, sl, sl, lsl #26
  10743c:	73696854 	cmnvc	r9, #84, 16	; 0x540000
  107440:	70706120 	rsbsvc	r6, r0, r0, lsr #2
  107444:	6163696c 	cmnvs	r3, ip, ror #18
  107448:	6e6f6974 	mcrvs	9, 3, r6, cr15, cr4, {3}
  10744c:	6e757220 	cdpvs	2, 7, cr7, cr5, cr0, {1}
  107450:	68742073 	ldmdavs	r4!, {r0, r1, r4, r5, r6, sp}^
  107454:	20656572 	rsbcs	r6, r5, r2, ror r5
  107458:	66666964 	strbtvs	r6, [r6], -r4, ror #18
  10745c:	6e657265 	cdpvs	2, 6, cr7, cr5, cr5, {3}
  107460:	61742074 	cmnvs	r4, r4, ror r0
  107464:	3a736b73 	bcc	1de2238 <__undef_stack+0x1cd0698>
  107468:	0a0d0a0d 	beq	449ca4 <__undef_stack+0x338104>
  10746c:	00000000 	andeq	r0, r0, r0
  107470:	54202e31 	strtpl	r2, [r0], #-3633	; 0xfffff1cf
  107474:	206b7361 	rsbcs	r7, fp, r1, ror #6
  107478:	72617453 	rsbvc	r7, r1, #1392508928	; 0x53000000
  10747c:	49203a74 	stmdbmi	r0!, {r2, r4, r5, r6, r9, fp, ip, sp}
  107480:	6974696e 	ldmdbvs	r4!, {r1, r2, r3, r5, r6, r8, fp, sp, lr}^
  107484:	7a696c61 	bvc	1b62610 <__undef_stack+0x1a50a70>
  107488:	74207365 	strtvc	r7, [r0], #-869	; 0xfffffc9b
  10748c:	4f206568 	svcmi	0x00206568
  107490:	6e612053 	mcrvs	0, 3, r2, cr1, cr3, {2}
  107494:	72632064 	rsbvc	r2, r3, #100	; 0x64
  107498:	65746165 	ldrbvs	r6, [r4, #-357]!	; 0xfffffe9b
  10749c:	61742073 	cmnvs	r4, r3, ror r0
  1074a0:	20736b73 	rsbscs	r6, r3, r3, ror fp
  1074a4:	0d646e61 	stcleq	14, cr6, [r4, #-388]!	; 0xfffffe7c
  1074a8:	0000000a 	andeq	r0, r0, sl
  1074ac:	20202020 	eorcs	r2, r0, r0, lsr #32
  1074b0:	20202020 	eorcs	r2, r0, r0, lsr #32
  1074b4:	20202020 	eorcs	r2, r0, r0, lsr #32
  1074b8:	6f202020 	svcvs	0x00202020
  1074bc:	72656874 	rsbvc	r6, r5, #116, 16	; 0x740000
  1074c0:	72656b20 	rsbvc	r6, r5, #32, 22	; 0x8000
  1074c4:	206c656e 	rsbcs	r6, ip, lr, ror #10
  1074c8:	656a626f 	strbvs	r6, [sl, #-623]!	; 0xfffffd91
  1074cc:	20737463 	rsbscs	r7, r3, r3, ror #8
  1074d0:	68637573 	stmdavs	r3!, {r0, r1, r4, r5, r6, r8, sl, ip, sp, lr}^
  1074d4:	20736120 	rsbscs	r6, r3, r0, lsr #2
  1074d8:	616d6573 	smcvs	54867	; 0xd653
  1074dc:	726f6870 	rsbvc	r6, pc, #112, 16	; 0x700000
  1074e0:	0d2e7365 	stceq	3, cr7, [lr, #-404]!	; 0xfffffe6c
  1074e4:	0000000a 	andeq	r0, r0, sl
  1074e8:	20202020 	eorcs	r2, r0, r0, lsr #32
  1074ec:	20202020 	eorcs	r2, r0, r0, lsr #32
  1074f0:	20202020 	eorcs	r2, r0, r0, lsr #32
  1074f4:	54202020 	strtpl	r2, [r0], #-32	; 0xffffffe0
  1074f8:	20736968 	rsbscs	r6, r3, r8, ror #18
  1074fc:	6b736174 	blvs	1ddfad4 <__undef_stack+0x1ccdf34>
  107500:	6d657220 	sfmvs	f7, 2, [r5, #-128]!	; 0xffffff80
  107504:	736e6961 	cmnvc	lr, #1589248	; 0x184000
  107508:	6e757220 	cdpvs	2, 7, cr7, cr5, cr0, {1}
  10750c:	676e696e 	strbvs	r6, [lr, -lr, ror #18]!
  107510:	646e6120 	strbtvs	r6, [lr], #-288	; 0xfffffee0
  107514:	69727020 	ldmdbvs	r2!, {r5, ip, sp, lr}^
  107518:	6e69746e 	cdpvs	4, 6, cr7, cr9, cr14, {3}
  10751c:	0d612067 	stcleq	0, cr2, [r1, #-412]!	; 0xfffffe64
  107520:	0000000a 	andeq	r0, r0, sl
  107524:	20202020 	eorcs	r2, r0, r0, lsr #32
  107528:	20202020 	eorcs	r2, r0, r0, lsr #32
  10752c:	20202020 	eorcs	r2, r0, r0, lsr #32
  107530:	64202020 	strtvs	r2, [r0], #-32	; 0xffffffe0
  107534:	2720746f 	strcs	r7, [r0, -pc, ror #8]!
  107538:	6520272e 	strvs	r2, [r0, #-1838]!	; 0xfffff8d2
  10753c:	79726576 	ldmdbvc	r2!, {r1, r2, r4, r5, r6, r8, sl, sp, lr}^
  107540:	30303120 	eorscc	r3, r0, r0, lsr #2
  107544:	6c696d20 	stclvs	13, cr6, [r9], #-128	; 0xffffff80
  107548:	6573696c 	ldrbvs	r6, [r3, #-2412]!	; 0xfffff694
  10754c:	646e6f63 	strbtvs	r6, [lr], #-3939	; 0xfffff09d
  107550:	0a0d2e73 	beq	452f24 <__undef_stack+0x341384>
  107554:	00000000 	andeq	r0, r0, r0
  107558:	54202e32 	strtpl	r2, [r0], #-3634	; 0xfffff1ce
  10755c:	206b7361 	rsbcs	r7, fp, r1, ror #6
  107560:	20203123 	eorcs	r3, r0, r3, lsr #2
  107564:	50203a20 	eorpl	r3, r0, r0, lsr #20
  107568:	746e6972 	strbtvc	r6, [lr], #-2418	; 0xfffff68e
  10756c:	31272073 	teqcc	r7, r3, ror r0
  107570:	76652027 	strbtvc	r2, [r5], -r7, lsr #32
  107574:	20797265 	rsbscs	r7, r9, r5, ror #4
  107578:	65732d31 	ldrbvs	r2, [r3, #-3377]!	; 0xfffff2cf
  10757c:	646e6f63 	strbtvs	r6, [lr], #-3939	; 0xfffff09d
  107580:	000a0d2e 	andeq	r0, sl, lr, lsr #26
  107584:	54202e33 	strtpl	r2, [r0], #-3635	; 0xfffff1cd
  107588:	206b7361 	rsbcs	r7, fp, r1, ror #6
  10758c:	20203223 	eorcs	r3, r0, r3, lsr #4
  107590:	50203a20 	eorpl	r3, r0, r0, lsr #20
  107594:	746e6972 	strbtvc	r6, [lr], #-2418	; 0xfffff68e
  107598:	32272073 	eorcc	r2, r7, #115	; 0x73
  10759c:	76652027 	strbtvc	r2, [r5], -r7, lsr #32
  1075a0:	20797265 	rsbscs	r7, r9, r5, ror #4
  1075a4:	65732d32 	ldrbvs	r2, [r3, #-3378]!	; 0xfffff2ce
  1075a8:	646e6f63 	strbtvs	r6, [lr], #-3939	; 0xfffff09d
  1075ac:	0a0d2e73 	beq	452f80 <__undef_stack+0x3413e0>
  1075b0:	00000a0d 	andeq	r0, r0, sp, lsl #20
  1075b4:	72617578 	rsbvc	r7, r1, #120, 10	; 0x1e000000
  1075b8:	2e737074 	mrccs	0, 3, r7, cr3, cr4, {3}
  1075bc:	00000063 	andeq	r0, r0, r3, rrx
  1075c0:	00000043 	andeq	r0, r0, r3, asr #32

Disassembly of section .data:

001075c8 <__data_start>:
  1075c8:	00000000 	andeq	r0, r0, r0

001075cc <Xil_AssertWait>:
  1075cc:	00000001 	andeq	r0, r0, r1

001075d0 <XUartPs_ConfigTable>:
  1075d0:	00000000 	andeq	r0, r0, r0
  1075d4:	e0001000 	and	r1, r0, r0
  1075d8:	02faf080 	rscseq	pc, sl, #128	; 0x80
  1075dc:	00000000 	andeq	r0, r0, r0

001075e0 <_impure_ptr>:
  1075e0:	001075e8 	andseq	r7, r0, r8, ror #11
  1075e4:	00000000 	andeq	r0, r0, r0

001075e8 <impure_data>:
  1075e8:	00000000 	andeq	r0, r0, r0
  1075ec:	001078d4 			; <UNDEFINED> instruction: 0x001078d4
  1075f0:	0010793c 	andseq	r7, r0, ip, lsr r9
  1075f4:	001079a4 	andseq	r7, r0, r4, lsr #19
	...
  10761c:	001075c0 	andseq	r7, r0, r0, asr #11
	...
  107690:	00000001 	andeq	r0, r0, r1
  107694:	00000000 	andeq	r0, r0, r0
  107698:	abcd330e 	blge	ff4542d8 <CPU_ARM_BIT_CNTES_C+0x7f4542d8>
  10769c:	e66d1234 			; <UNDEFINED> instruction: 0xe66d1234
  1076a0:	0005deec 	andeq	sp, r5, ip, ror #29
  1076a4:	0000000b 	andeq	r0, r0, fp
	...

00107a10 <__JCR_END__>:
  107a10:	00000000 	andeq	r0, r0, r0

Disassembly of section .eh_frame:

00107a14 <__EH_FRAME_BEGIN__>:
  107a14:	00000000 	andeq	r0, r0, r0

Disassembly of section .init_array:

00107a18 <__eh_framehdr_end>:
  107a18:	001070d4 	ldrsbeq	r7, [r0], -r4

00107a1c <__frame_dummy_init_array_entry>:
  107a1c:	001000bc 	ldrheq	r0, [r0], -ip

Disassembly of section .fini_array:

00107a20 <__fini_array_start>:
  107a20:	00100078 	andseq	r0, r0, r8, ror r0

Disassembly of section .ARM.attributes:

00107a24 <__ARM.attributes_start>:
  107a24:	00003241 	andeq	r3, r0, r1, asr #4
  107a28:	61656100 	cmnvs	r5, r0, lsl #2
  107a2c:	01006962 	tsteq	r0, r2, ror #18
  107a30:	00000028 	andeq	r0, r0, r8, lsr #32
  107a34:	412d3705 	teqmi	sp, r5, lsl #14
  107a38:	070a0600 	streq	r0, [sl, -r0, lsl #12]
  107a3c:	09010841 	stmdbeq	r1, {r0, r6, fp}
  107a40:	0c030a02 	stceq	10, cr0, [r3], {2}
  107a44:	14041201 	strne	r1, [r4], #-513	; 0xfffffdff
  107a48:	17011501 	strne	r1, [r1, -r1, lsl #10]
  107a4c:	1a011803 	bne	14da60 <__undef_stack+0x3bec0>
  107a50:	22031b01 	andcs	r1, r3, #1024	; 0x400
  107a54:	Address 0x00107a54 is out of bounds.


Disassembly of section .bss:

00107a24 <__bss_start>:
  107a24:	00000000 	andeq	r0, r0, r0

00107a28 <object.8489>:
	...

00107a40 <CSP_MainVectTbl>:
	...

00108240 <AppTask1Stk>:
	...

00108a40 <AppTask2Stk>:
	...

00109240 <AppTaskStartStk>:
	...

00109a40 <Xil_AssertCallbackRoutine>:
  109a40:	00000000 	andeq	r0, r0, r0

00109a44 <OSLockNesting>:
	...

00109a45 <OSTaskRegNextAvailID>:
	...

00109a46 <OSRunning>:
	...

00109a48 <OSIdleCtr>:
  109a48:	00000000 	andeq	r0, r0, r0

00109a4c <OSPrioHighRdy>:
	...

00109a4d <OSPrioCur>:
  109a4d:	00000000 	andeq	r0, r0, r0

00109a50 <OSTCBList>:
  109a50:	00000000 	andeq	r0, r0, r0

00109a54 <OSMemTbl>:
	...

00109acc <OSTickStepState>:
  109acc:	00000000 	andeq	r0, r0, r0

00109ad0 <OSCtxSwCtr>:
  109ad0:	00000000 	andeq	r0, r0, r0

00109ad4 <OSTCBFreeList>:
  109ad4:	00000000 	andeq	r0, r0, r0

00109ad8 <OSTaskCtr>:
  109ad8:	00000000 	andeq	r0, r0, r0

00109adc <OSMemFreeList>:
  109adc:	00000000 	andeq	r0, r0, r0

00109ae0 <OSTCBHighRdy>:
  109ae0:	00000000 	andeq	r0, r0, r0

00109ae4 <OSRdyGrp>:
  109ae4:	00000000 	andeq	r0, r0, r0

00109ae8 <OSRdyTbl>:
	...

00109af0 <OSEventFreeList>:
  109af0:	00000000 	andeq	r0, r0, r0

00109af4 <OSIntNesting>:
  109af4:	00000000 	andeq	r0, r0, r0

00109af8 <OSTCBCur>:
  109af8:	00000000 	andeq	r0, r0, r0

00109afc <OSTime>:
  109afc:	00000000 	andeq	r0, r0, r0

00109b00 <OSTaskIdleStk>:
	...

00109d00 <OSEventTbl>:
	...

00109df0 <OSTCBTbl>:
	...

0010a480 <OSTCBPrioTbl>:
	...

0010a580 <OS_CPU_ExceptStkBase>:
  10a580:	00000000 	andeq	r0, r0, r0

0010a584 <OS_CPU_ExceptStkPtr>:
  10a584:	00000000 	andeq	r0, r0, r0

0010a588 <OS_CPU_ExceptStk>:
	...

0010a788 <Math_RandSeedCur>:
  10a788:	00000000 	andeq	r0, r0, r0

0010a78c <BSP_CPU_ClkFreq_MHz>:
  10a78c:	00000000 	andeq	r0, r0, r0

0010a790 <AppMutexPrint>:
  10a790:	00000000 	andeq	r0, r0, r0

0010a794 <Xil_AssertStatus>:
  10a794:	00000000 	andeq	r0, r0, r0

Disassembly of section .heap:

0010a798 <HeapBase-0x8>:
	...

0010a7a0 <HeapBase>:
	...

Disassembly of section .stack:

0010c7a0 <_stack_end>:
	...

0010e7a0 <__stack>:
	...

001107a0 <__irq_stack>:
	...

00110fa0 <__supervisor_stack>:
	...

001113a0 <__abort_stack>:
	...

001117a0 <__fiq_stack>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <__undef_stack+0xfbf184>
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
