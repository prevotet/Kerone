
user.elf:     file format elf32-littlearm


Disassembly of section .data:

00000074 <__data_start>:
  74:	00000000 	andeq	r0, r0, r0

00000078 <XDcfg_ConfigTable>:
  78:	00000000 	andeq	r0, r0, r0
  7c:	f8007000 			; <UNDEFINED> instruction: 0xf8007000

00000080 <hwmgr_vpsr_cpsr>:
  80:	000014cc 	andeq	r1, r0, ip, asr #9

00000084 <HWManager_IRQ_STK_top>:
  84:	00001d5c 	andeq	r1, r0, ip, asr sp

00000088 <s_empty>:
  88:	00000300 	andeq	r0, r0, r0, lsl #6
  8c:	00000000 	andeq	r0, r0, r0

00000090 <main_stack_top>:
  90:	00002688 	andeq	r2, r0, r8, lsl #13

00000094 <__malloc_av_>:
	...
  9c:	00000094 	muleq	r0, r4, r0
  a0:	00000094 	muleq	r0, r4, r0
  a4:	0000009c 	muleq	r0, ip, r0
  a8:	0000009c 	muleq	r0, ip, r0
  ac:	000000a4 	andeq	r0, r0, r4, lsr #1
  b0:	000000a4 	andeq	r0, r0, r4, lsr #1
  b4:	000000ac 	andeq	r0, r0, ip, lsr #1
  b8:	000000ac 	andeq	r0, r0, ip, lsr #1
  bc:	000000b4 	strheq	r0, [r0], -r4
  c0:	000000b4 	strheq	r0, [r0], -r4
  c4:	000000bc 	strheq	r0, [r0], -ip
  c8:	000000bc 	strheq	r0, [r0], -ip
  cc:	000000c4 	andeq	r0, r0, r4, asr #1
  d0:	000000c4 	andeq	r0, r0, r4, asr #1
  d4:	000000cc 	andeq	r0, r0, ip, asr #1
  d8:	000000cc 	andeq	r0, r0, ip, asr #1
  dc:	000000d4 	ldrdeq	r0, [r0], -r4
  e0:	000000d4 	ldrdeq	r0, [r0], -r4
  e4:	000000dc 	ldrdeq	r0, [r0], -ip
  e8:	000000dc 	ldrdeq	r0, [r0], -ip
  ec:	000000e4 	andeq	r0, r0, r4, ror #1
  f0:	000000e4 	andeq	r0, r0, r4, ror #1
  f4:	000000ec 	andeq	r0, r0, ip, ror #1
  f8:	000000ec 	andeq	r0, r0, ip, ror #1
  fc:	000000f4 	strdeq	r0, [r0], -r4
 100:	000000f4 	strdeq	r0, [r0], -r4
 104:	000000fc 	strdeq	r0, [r0], -ip
 108:	000000fc 	strdeq	r0, [r0], -ip
 10c:	00000104 	andeq	r0, r0, r4, lsl #2
 110:	00000104 	andeq	r0, r0, r4, lsl #2
 114:	0000010c 	andeq	r0, r0, ip, lsl #2
 118:	0000010c 	andeq	r0, r0, ip, lsl #2
 11c:	00000114 	andeq	r0, r0, r4, lsl r1
 120:	00000114 	andeq	r0, r0, r4, lsl r1
 124:	0000011c 	andeq	r0, r0, ip, lsl r1
 128:	0000011c 	andeq	r0, r0, ip, lsl r1
 12c:	00000124 	andeq	r0, r0, r4, lsr #2
 130:	00000124 	andeq	r0, r0, r4, lsr #2
 134:	0000012c 	andeq	r0, r0, ip, lsr #2
 138:	0000012c 	andeq	r0, r0, ip, lsr #2
 13c:	00000134 	andeq	r0, r0, r4, lsr r1
 140:	00000134 	andeq	r0, r0, r4, lsr r1
 144:	0000013c 	andeq	r0, r0, ip, lsr r1
 148:	0000013c 	andeq	r0, r0, ip, lsr r1
 14c:	00000144 	andeq	r0, r0, r4, asr #2
 150:	00000144 	andeq	r0, r0, r4, asr #2
 154:	0000014c 	andeq	r0, r0, ip, asr #2
 158:	0000014c 	andeq	r0, r0, ip, asr #2
 15c:	00000154 	andeq	r0, r0, r4, asr r1
 160:	00000154 	andeq	r0, r0, r4, asr r1
 164:	0000015c 	andeq	r0, r0, ip, asr r1
 168:	0000015c 	andeq	r0, r0, ip, asr r1
 16c:	00000164 	andeq	r0, r0, r4, ror #2
 170:	00000164 	andeq	r0, r0, r4, ror #2
 174:	0000016c 	andeq	r0, r0, ip, ror #2
 178:	0000016c 	andeq	r0, r0, ip, ror #2
 17c:	00000174 	andeq	r0, r0, r4, ror r1
 180:	00000174 	andeq	r0, r0, r4, ror r1
 184:	0000017c 	andeq	r0, r0, ip, ror r1
 188:	0000017c 	andeq	r0, r0, ip, ror r1
 18c:	00000184 	andeq	r0, r0, r4, lsl #3
 190:	00000184 	andeq	r0, r0, r4, lsl #3
 194:	0000018c 	andeq	r0, r0, ip, lsl #3
 198:	0000018c 	andeq	r0, r0, ip, lsl #3
 19c:	00000194 	muleq	r0, r4, r1
 1a0:	00000194 	muleq	r0, r4, r1
 1a4:	0000019c 	muleq	r0, ip, r1
 1a8:	0000019c 	muleq	r0, ip, r1
 1ac:	000001a4 	andeq	r0, r0, r4, lsr #3
 1b0:	000001a4 	andeq	r0, r0, r4, lsr #3
 1b4:	000001ac 	andeq	r0, r0, ip, lsr #3
 1b8:	000001ac 	andeq	r0, r0, ip, lsr #3
 1bc:	000001b4 			; <UNDEFINED> instruction: 0x000001b4
 1c0:	000001b4 			; <UNDEFINED> instruction: 0x000001b4
 1c4:	000001bc 			; <UNDEFINED> instruction: 0x000001bc
 1c8:	000001bc 			; <UNDEFINED> instruction: 0x000001bc
 1cc:	000001c4 	andeq	r0, r0, r4, asr #3
 1d0:	000001c4 	andeq	r0, r0, r4, asr #3
 1d4:	000001cc 	andeq	r0, r0, ip, asr #3
 1d8:	000001cc 	andeq	r0, r0, ip, asr #3
 1dc:	000001d4 	ldrdeq	r0, [r0], -r4
 1e0:	000001d4 	ldrdeq	r0, [r0], -r4
 1e4:	000001dc 	ldrdeq	r0, [r0], -ip
 1e8:	000001dc 	ldrdeq	r0, [r0], -ip
 1ec:	000001e4 	andeq	r0, r0, r4, ror #3
 1f0:	000001e4 	andeq	r0, r0, r4, ror #3
 1f4:	000001ec 	andeq	r0, r0, ip, ror #3
 1f8:	000001ec 	andeq	r0, r0, ip, ror #3
 1fc:	000001f4 	strdeq	r0, [r0], -r4
 200:	000001f4 	strdeq	r0, [r0], -r4
 204:	000001fc 	strdeq	r0, [r0], -ip
 208:	000001fc 	strdeq	r0, [r0], -ip
 20c:	00000204 	andeq	r0, r0, r4, lsl #4
 210:	00000204 	andeq	r0, r0, r4, lsl #4
 214:	0000020c 	andeq	r0, r0, ip, lsl #4
 218:	0000020c 	andeq	r0, r0, ip, lsl #4
 21c:	00000214 	andeq	r0, r0, r4, lsl r2
 220:	00000214 	andeq	r0, r0, r4, lsl r2
 224:	0000021c 	andeq	r0, r0, ip, lsl r2
 228:	0000021c 	andeq	r0, r0, ip, lsl r2
 22c:	00000224 	andeq	r0, r0, r4, lsr #4
 230:	00000224 	andeq	r0, r0, r4, lsr #4
 234:	0000022c 	andeq	r0, r0, ip, lsr #4
 238:	0000022c 	andeq	r0, r0, ip, lsr #4
 23c:	00000234 	andeq	r0, r0, r4, lsr r2
 240:	00000234 	andeq	r0, r0, r4, lsr r2
 244:	0000023c 	andeq	r0, r0, ip, lsr r2
 248:	0000023c 	andeq	r0, r0, ip, lsr r2
 24c:	00000244 	andeq	r0, r0, r4, asr #4
 250:	00000244 	andeq	r0, r0, r4, asr #4
 254:	0000024c 	andeq	r0, r0, ip, asr #4
 258:	0000024c 	andeq	r0, r0, ip, asr #4
 25c:	00000254 	andeq	r0, r0, r4, asr r2
 260:	00000254 	andeq	r0, r0, r4, asr r2
 264:	0000025c 	andeq	r0, r0, ip, asr r2
 268:	0000025c 	andeq	r0, r0, ip, asr r2
 26c:	00000264 	andeq	r0, r0, r4, ror #4
 270:	00000264 	andeq	r0, r0, r4, ror #4
 274:	0000026c 	andeq	r0, r0, ip, ror #4
 278:	0000026c 	andeq	r0, r0, ip, ror #4
 27c:	00000274 	andeq	r0, r0, r4, ror r2
 280:	00000274 	andeq	r0, r0, r4, ror r2
 284:	0000027c 	andeq	r0, r0, ip, ror r2
 288:	0000027c 	andeq	r0, r0, ip, ror r2
 28c:	00000284 	andeq	r0, r0, r4, lsl #5
 290:	00000284 	andeq	r0, r0, r4, lsl #5
 294:	0000028c 	andeq	r0, r0, ip, lsl #5
 298:	0000028c 	andeq	r0, r0, ip, lsl #5
 29c:	00000294 	muleq	r0, r4, r2
 2a0:	00000294 	muleq	r0, r4, r2
 2a4:	0000029c 	muleq	r0, ip, r2
 2a8:	0000029c 	muleq	r0, ip, r2
 2ac:	000002a4 	andeq	r0, r0, r4, lsr #5
 2b0:	000002a4 	andeq	r0, r0, r4, lsr #5
 2b4:	000002ac 	andeq	r0, r0, ip, lsr #5
 2b8:	000002ac 	andeq	r0, r0, ip, lsr #5
 2bc:	000002b4 			; <UNDEFINED> instruction: 0x000002b4
 2c0:	000002b4 			; <UNDEFINED> instruction: 0x000002b4
 2c4:	000002bc 			; <UNDEFINED> instruction: 0x000002bc
 2c8:	000002bc 			; <UNDEFINED> instruction: 0x000002bc
 2cc:	000002c4 	andeq	r0, r0, r4, asr #5
 2d0:	000002c4 	andeq	r0, r0, r4, asr #5
 2d4:	000002cc 	andeq	r0, r0, ip, asr #5
 2d8:	000002cc 	andeq	r0, r0, ip, asr #5
 2dc:	000002d4 	ldrdeq	r0, [r0], -r4
 2e0:	000002d4 	ldrdeq	r0, [r0], -r4
 2e4:	000002dc 	ldrdeq	r0, [r0], -ip
 2e8:	000002dc 	ldrdeq	r0, [r0], -ip
 2ec:	000002e4 	andeq	r0, r0, r4, ror #5
 2f0:	000002e4 	andeq	r0, r0, r4, ror #5
 2f4:	000002ec 	andeq	r0, r0, ip, ror #5
 2f8:	000002ec 	andeq	r0, r0, ip, ror #5
 2fc:	000002f4 	strdeq	r0, [r0], -r4
 300:	000002f4 	strdeq	r0, [r0], -r4
 304:	000002fc 	strdeq	r0, [r0], -ip
 308:	000002fc 	strdeq	r0, [r0], -ip
 30c:	00000304 	andeq	r0, r0, r4, lsl #6
 310:	00000304 	andeq	r0, r0, r4, lsl #6
 314:	0000030c 	andeq	r0, r0, ip, lsl #6
 318:	0000030c 	andeq	r0, r0, ip, lsl #6
 31c:	00000314 	andeq	r0, r0, r4, lsl r3
 320:	00000314 	andeq	r0, r0, r4, lsl r3
 324:	0000031c 	andeq	r0, r0, ip, lsl r3
 328:	0000031c 	andeq	r0, r0, ip, lsl r3
 32c:	00000324 	andeq	r0, r0, r4, lsr #6
 330:	00000324 	andeq	r0, r0, r4, lsr #6
 334:	0000032c 	andeq	r0, r0, ip, lsr #6
 338:	0000032c 	andeq	r0, r0, ip, lsr #6
 33c:	00000334 	andeq	r0, r0, r4, lsr r3
 340:	00000334 	andeq	r0, r0, r4, lsr r3
 344:	0000033c 	andeq	r0, r0, ip, lsr r3
 348:	0000033c 	andeq	r0, r0, ip, lsr r3
 34c:	00000344 	andeq	r0, r0, r4, asr #6
 350:	00000344 	andeq	r0, r0, r4, asr #6
 354:	0000034c 	andeq	r0, r0, ip, asr #6
 358:	0000034c 	andeq	r0, r0, ip, asr #6
 35c:	00000354 	andeq	r0, r0, r4, asr r3
 360:	00000354 	andeq	r0, r0, r4, asr r3
 364:	0000035c 	andeq	r0, r0, ip, asr r3
 368:	0000035c 	andeq	r0, r0, ip, asr r3
 36c:	00000364 	andeq	r0, r0, r4, ror #6
 370:	00000364 	andeq	r0, r0, r4, ror #6
 374:	0000036c 	andeq	r0, r0, ip, ror #6
 378:	0000036c 	andeq	r0, r0, ip, ror #6
 37c:	00000374 	andeq	r0, r0, r4, ror r3
 380:	00000374 	andeq	r0, r0, r4, ror r3
 384:	0000037c 	andeq	r0, r0, ip, ror r3
 388:	0000037c 	andeq	r0, r0, ip, ror r3
 38c:	00000384 	andeq	r0, r0, r4, lsl #7
 390:	00000384 	andeq	r0, r0, r4, lsl #7
 394:	0000038c 	andeq	r0, r0, ip, lsl #7
 398:	0000038c 	andeq	r0, r0, ip, lsl #7
 39c:	00000394 	muleq	r0, r4, r3
 3a0:	00000394 	muleq	r0, r4, r3
 3a4:	0000039c 	muleq	r0, ip, r3
 3a8:	0000039c 	muleq	r0, ip, r3
 3ac:	000003a4 	andeq	r0, r0, r4, lsr #7
 3b0:	000003a4 	andeq	r0, r0, r4, lsr #7
 3b4:	000003ac 	andeq	r0, r0, ip, lsr #7
 3b8:	000003ac 	andeq	r0, r0, ip, lsr #7
 3bc:	000003b4 			; <UNDEFINED> instruction: 0x000003b4
 3c0:	000003b4 			; <UNDEFINED> instruction: 0x000003b4
 3c4:	000003bc 			; <UNDEFINED> instruction: 0x000003bc
 3c8:	000003bc 			; <UNDEFINED> instruction: 0x000003bc
 3cc:	000003c4 	andeq	r0, r0, r4, asr #7
 3d0:	000003c4 	andeq	r0, r0, r4, asr #7
 3d4:	000003cc 	andeq	r0, r0, ip, asr #7
 3d8:	000003cc 	andeq	r0, r0, ip, asr #7
 3dc:	000003d4 	ldrdeq	r0, [r0], -r4
 3e0:	000003d4 	ldrdeq	r0, [r0], -r4
 3e4:	000003dc 	ldrdeq	r0, [r0], -ip
 3e8:	000003dc 	ldrdeq	r0, [r0], -ip
 3ec:	000003e4 	andeq	r0, r0, r4, ror #7
 3f0:	000003e4 	andeq	r0, r0, r4, ror #7
 3f4:	000003ec 	andeq	r0, r0, ip, ror #7
 3f8:	000003ec 	andeq	r0, r0, ip, ror #7
 3fc:	000003f4 	strdeq	r0, [r0], -r4
 400:	000003f4 	strdeq	r0, [r0], -r4
 404:	000003fc 	strdeq	r0, [r0], -ip
 408:	000003fc 	strdeq	r0, [r0], -ip
 40c:	00000404 	andeq	r0, r0, r4, lsl #8
 410:	00000404 	andeq	r0, r0, r4, lsl #8
 414:	0000040c 	andeq	r0, r0, ip, lsl #8
 418:	0000040c 	andeq	r0, r0, ip, lsl #8
 41c:	00000414 	andeq	r0, r0, r4, lsl r4
 420:	00000414 	andeq	r0, r0, r4, lsl r4
 424:	0000041c 	andeq	r0, r0, ip, lsl r4
 428:	0000041c 	andeq	r0, r0, ip, lsl r4
 42c:	00000424 	andeq	r0, r0, r4, lsr #8
 430:	00000424 	andeq	r0, r0, r4, lsr #8
 434:	0000042c 	andeq	r0, r0, ip, lsr #8
 438:	0000042c 	andeq	r0, r0, ip, lsr #8
 43c:	00000434 	andeq	r0, r0, r4, lsr r4
 440:	00000434 	andeq	r0, r0, r4, lsr r4
 444:	0000043c 	andeq	r0, r0, ip, lsr r4
 448:	0000043c 	andeq	r0, r0, ip, lsr r4
 44c:	00000444 	andeq	r0, r0, r4, asr #8
 450:	00000444 	andeq	r0, r0, r4, asr #8
 454:	0000044c 	andeq	r0, r0, ip, asr #8
 458:	0000044c 	andeq	r0, r0, ip, asr #8
 45c:	00000454 	andeq	r0, r0, r4, asr r4
 460:	00000454 	andeq	r0, r0, r4, asr r4
 464:	0000045c 	andeq	r0, r0, ip, asr r4
 468:	0000045c 	andeq	r0, r0, ip, asr r4
 46c:	00000464 	andeq	r0, r0, r4, ror #8
 470:	00000464 	andeq	r0, r0, r4, ror #8
 474:	0000046c 	andeq	r0, r0, ip, ror #8
 478:	0000046c 	andeq	r0, r0, ip, ror #8
 47c:	00000474 	andeq	r0, r0, r4, ror r4
 480:	00000474 	andeq	r0, r0, r4, ror r4
 484:	0000047c 	andeq	r0, r0, ip, ror r4
 488:	0000047c 	andeq	r0, r0, ip, ror r4
 48c:	00000484 	andeq	r0, r0, r4, lsl #9
 490:	00000484 	andeq	r0, r0, r4, lsl #9
 494:	0000048c 	andeq	r0, r0, ip, lsl #9
 498:	0000048c 	andeq	r0, r0, ip, lsl #9

0000049c <__malloc_sbrk_base>:
 49c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff

000004a0 <__malloc_trim_threshold>:
 4a0:	00020000 	andeq	r0, r2, r0

000004a4 <__ctype_ptr__>:
 4a4:	00000b2c 	andeq	r0, r0, ip, lsr #22

000004a8 <_impure_ptr>:
 4a8:	000004b0 			; <UNDEFINED> instruction: 0x000004b0
 4ac:	00000000 	andeq	r0, r0, r0

000004b0 <impure_data>:
 4b0:	00000000 	andeq	r0, r0, r0
 4b4:	0000079c 	muleq	r0, ip, r7
 4b8:	00000804 	andeq	r0, r0, r4, lsl #16
 4bc:	0000086c 	andeq	r0, r0, ip, ror #16
	...
 4e4:	00000c34 	andeq	r0, r0, r4, lsr ip
	...
 558:	00000001 	andeq	r0, r0, r1
 55c:	00000000 	andeq	r0, r0, r0
 560:	abcd330e 	blge	ff34d1a0 <_end+0xff344fc8>
 564:	e66d1234 			; <UNDEFINED> instruction: 0xe66d1234
 568:	0005deec 	andeq	sp, r5, ip, ror #29
 56c:	0000000b 	andeq	r0, r0, fp
	...

000008d8 <__JCR_END__>:
 8d8:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata:

000008dc <__rodata_start>:
 8dc:	5d78255b 	cfldr64pl	mvdx2, [r8, #-364]!	; 0xfffffe94
 8e0:	00000000 	andeq	r0, r0, r0
 8e4:	45200d0a 	strmi	r0, [r0, #-3338]!	; 0xfffff2f6
 8e8:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
 8ec:	6f697461 	svcvs	0x00697461
 8f0:	2528206e 	strcs	r2, [r8, #-110]!	; 0xffffff92
 8f4:	61732064 	cmnvs	r3, r4, rrx
 8f8:	736c706d 	cmnvc	ip, #109	; 0x6d
 8fc:	6d203a29 	vstmdbvs	r0!, {s6-s46}
 900:	253a7861 	ldrcs	r7, [sl, #-2145]!	; 0xfffff79f
 904:	696d2064 	stmdbvs	sp!, {r2, r5, r6, sp}^
 908:	64253a6e 	strtvs	r3, [r5], #-2670	; 0xfffff592
 90c:	7661202c 	strbtvc	r2, [r1], -ip, lsr #32
 910:	64253a72 	strtvs	r3, [r5], #-2674	; 0xfffff58e
 914:	000d0a20 	andeq	r0, sp, r0, lsr #20
 918:	33323130 	teqcc	r2, #48, 2
 91c:	37363534 			; <UNDEFINED> instruction: 0x37363534
 920:	42413938 	submi	r3, r1, #56, 18	; 0xe0000
 924:	46454443 	strbmi	r4, [r5], -r3, asr #8
 928:	00000000 	andeq	r0, r0, r0
 92c:	4f525245 	svcmi	0x00525245
 930:	55203a52 	strpl	r3, [r0, #-2642]!	; 0xfffff5ae
 934:	6665646e 	strbtvs	r6, [r5], -lr, ror #8
 938:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
 93c:	6c6f5320 	stclvs	3, cr5, [pc], #-128	; 8c4 <impure_data+0x414>
 940:	6f697475 	svcvs	0x00697475
 944:	654d206e 	strbvs	r2, [sp, #-110]	; 0xffffff92
 948:	646f6874 	strbtvs	r6, [pc], #-2164	; 950 <__TMC_END__+0x74>
 94c:	0d0a2021 	stceq	0, cr2, [sl, #-132]	; 0xffffff7c
 950:	00000000 	andeq	r0, r0, r0
 954:	6f727245 	svcvs	0x00727245
 958:	49203a72 	stmdbmi	r0!, {r1, r4, r5, r6, r9, fp, ip, sp}
 95c:	61772046 	cmnvs	r7, r6, asr #32
 960:	6f6e2073 	svcvs	0x006e2073
 964:	6f632074 	svcvs	0x00632074
 968:	63657272 	cmnvs	r5, #536870919	; 0x20000007
 96c:	20796c74 	rsbscs	r6, r9, r4, ror ip
 970:	61656c63 	cmnvs	r5, r3, ror #24
 974:	20646572 	rsbcs	r6, r4, r2, ror r5
 978:	6c6e7528 	cfstr64vs	mvdx7, [lr], #-160	; 0xffffff60
 97c:	656b6e69 	strbvs	r6, [fp, #-3689]!	; 0xfffff197
 980:	0a202964 	beq	80af18 <_end+0x802d40>
 984:	0000000d 	andeq	r0, r0, sp
 988:	74696157 	strbtvc	r6, [r9], #-343	; 0xfffffea9
 98c:	726f6d20 	rsbvc	r6, pc, #32, 26	; 0x800
 990:	0d0a2065 	stceq	0, cr2, [sl, #-404]	; 0xfffffe6c
 994:	00000000 	andeq	r0, r0, r0
 998:	73550d0a 	cmpvc	r5, #640	; 0x280
 99c:	203a7265 	eorscs	r7, sl, r5, ror #4
 9a0:	746f6f42 	strbtvc	r6, [pc], #-3906	; 9a8 <__TMC_END__+0xcc>
 9a4:	20574820 	subscs	r4, r7, r0, lsr #16
 9a8:	6b736154 	blvs	1cd8f00 <_end+0x1cd0d28>
 9ac:	6e614d20 	cdpvs	13, 6, cr4, cr1, cr0, {1}
 9b0:	72656761 	rsbvc	r6, r5, #25427968	; 0x1840000
 9b4:	000d0a20 	andeq	r0, sp, r0, lsr #20
 9b8:	43766544 	cmnmi	r6, #68, 10	; 0x11000000
 9bc:	69206766 	stmdbvs	r0!, {r1, r2, r5, r6, r8, r9, sl, sp, lr}
 9c0:	6974696e 	ldmdbvs	r4!, {r1, r2, r3, r5, r6, r8, fp, sp, lr}^
 9c4:	7a696c61 	bvc	1a5bb50 <_end+0x1a53978>
 9c8:	6f697461 	svcvs	0x00697461
 9cc:	6f64206e 	svcvs	0x0064206e
 9d0:	0a2e656e 	beq	b99f90 <_end+0xb91db8>
 9d4:	0000000d 	andeq	r0, r0, sp
 9d8:	73550d0a 	cmpvc	r5, #640	; 0x280
 9dc:	203a7265 	eorscs	r7, sl, r5, ror #4
 9e0:	746f6f42 	strbtvc	r6, [pc], #-3906	; 9e8 <__TMC_END__+0x10c>
 9e4:	65764f20 	ldrbvs	r4, [r6, #-3872]!	; 0xfffff0e0
 9e8:	000d0a72 	andeq	r0, sp, r2, ror sl
 9ec:	45535520 	ldrbmi	r5, [r3, #-1312]	; 0xfffffae0
 9f0:	55203a52 	strpl	r3, [r0, #-2642]!	; 0xfffff5ae
 9f4:	6665646e 	strbtvs	r6, [r5], -lr, ror #8
 9f8:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
 9fc:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 a00:	75727265 	ldrbvc	r7, [r2, #-613]!	; 0xfffffd9b
 a04:	20217470 	eorcs	r7, r1, r0, ror r4
 a08:	00000d0a 	andeq	r0, r0, sl, lsl #26
 a0c:	52455355 	subpl	r5, r5, #1409286145	; 0x54000001
 a10:	4356203a 	cmpmi	r6, #58	; 0x3a
 a14:	3a525350 	bcc	149575c <_end+0x148d584>
 a18:	25783020 	ldrbcs	r3, [r8, #-32]!	; 0xffffffe0
 a1c:	0d0a2078 	stceq	0, cr2, [sl, #-480]	; 0xfffffe20
 a20:	00000000 	andeq	r0, r0, r0
 a24:	52455355 	subpl	r5, r5, #1409286145	; 0x54000001
 a28:	6e49203a 	mcrvs	0, 2, r2, cr9, cr10, {1}
 a2c:	72726574 	rsbsvc	r6, r2, #116, 10	; 0x1d000000
 a30:	20747075 	rsbscs	r7, r4, r5, ror r0
 a34:	74696e49 	strbtvc	r6, [r9], #-3657	; 0xfffff1b7
 a38:	65764f20 	ldrbvs	r4, [r6, #-3872]!	; 0xfffff0e0
 a3c:	0d0a2072 	stceq	0, cr2, [sl, #-456]	; 0xfffffe38
 a40:	00000000 	andeq	r0, r0, r0
 a44:	29642528 	stmdbcs	r4!, {r3, r5, r8, sl, sp}^
 a48:	000d0a20 	andeq	r0, sp, r0, lsr #20
 a4c:	202d2d20 	eorcs	r2, sp, r0, lsr #26
 a50:	70794828 	rsbsvc	r4, r9, r8, lsr #16
 a54:	63207265 	teqvs	r0, #1342177286	; 0x50000006
 a58:	206c6c61 	rsbcs	r6, ip, r1, ror #24
 a5c:	74697865 	strbtvc	r7, [r9], #-2149	; 0xfffff79b
 a60:	0d0a2029 	stceq	0, cr2, [sl, #-164]	; 0xffffff5c
 a64:	00000000 	andeq	r0, r0, r0
 a68:	55200d0a 	strpl	r0, [r0, #-3338]!	; 0xfffff2f6
 a6c:	3a726573 	bcc	1c9a040 <_end+0x1c91e68>
 a70:	61745320 	cmnvs	r4, r0, lsr #6
 a74:	62207472 	eorvs	r7, r0, #1912602624	; 0x72000000
 a78:	20746f6f 	rsbscs	r6, r4, pc, ror #30
 a7c:	73657567 	cmnvc	r5, #432013312	; 0x19c00000
 a80:	534f2074 	movtpl	r2, #61556	; 0xf074
 a84:	0d0a202e 	stceq	0, cr2, [sl, #-184]	; 0xffffff48
 a88:	00000000 	andeq	r0, r0, r0
 a8c:	72657355 	rsbvc	r7, r5, #1409286145	; 0x54000001
 a90:	52524520 	subspl	r4, r2, #32, 10	; 0x8000000
 a94:	203a524f 	eorscs	r5, sl, pc, asr #4
 a98:	47206f4e 	strmi	r6, [r0, -lr, asr #30]!
 a9c:	74736575 	ldrbtvc	r6, [r3], #-1397	; 0xfffffa8b
 aa0:	20534f20 	subscs	r4, r3, r0, lsr #30
 aa4:	21464c45 	cmpcs	r6, r5, asr #24
 aa8:	00000a20 	andeq	r0, r0, r0, lsr #20
 aac:	72657355 	rsbvc	r7, r5, #1409286145	; 0x54000001
 ab0:	52524520 	subspl	r4, r2, #32, 10	; 0x8000000
 ab4:	203a524f 	eorscs	r5, sl, pc, asr #4
 ab8:	73657547 	cmnvc	r5, #297795584	; 0x11c00000
 abc:	534f2074 	movtpl	r2, #61556	; 0xf074
 ac0:	72697620 	rsbvc	r7, r9, #32, 12	; 0x2000000
 ac4:	72772074 	rsbsvc	r2, r7, #116	; 0x74
 ac8:	21676e6f 	cmncs	r7, pc, ror #28
 acc:	00000a20 	andeq	r0, r0, r0, lsr #20
 ad0:	45535520 	ldrbmi	r5, [r3, #-1312]	; 0xfffffae0
 ad4:	65442d52 	strbvs	r2, [r4, #-3410]	; 0xfffff2ae
 ad8:	656e6966 	strbvs	r6, [lr, #-2406]!	; 0xfffff69a
 adc:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
 ae0:	72726574 	rsbsvc	r6, r2, #116, 10	; 0x1d000000
 ae4:	21747075 	cmncs	r4, r5, ror r0
 ae8:	000d0a20 	andeq	r0, sp, r0, lsr #20
 aec:	2a200a0d 	bcs	803328 <_end+0x7fb150>
 af0:	2a2a2a2a 	bcs	a8b3a0 <_end+0xa831c8>
 af4:	2a2a2a2a 	bcs	a8b3a4 <_end+0xa831cc>
 af8:	092a2a2a 	stmdbeq	sl!, {r1, r3, r5, r9, fp, sp}
 afc:	72657355 	rsbvc	r7, r5, #1409286145	; 0x54000001
 b00:	646f6d20 	strbtvs	r6, [pc], #-3360	; b08 <__TMC_END__+0x22c>
 b04:	20656c75 	rsbcs	r6, r5, r5, ror ip
 b08:	6c207369 	stcvs	3, cr7, [r0], #-420	; 0xfffffe5c
 b0c:	636e7561 	cmnvs	lr, #406847488	; 0x18400000
 b10:	09646568 	stmdbeq	r4!, {r3, r5, r6, r8, sl, sp, lr}^
 b14:	2a2a2a20 	bcs	a8b39c <_end+0xa831c4>
 b18:	2a2a2a2a 	bcs	a8b3c8 <_end+0xa831f0>
 b1c:	2a2a2a2a 	bcs	a8b3cc <_end+0xa831f4>
 b20:	0a202a2a 	beq	80b3d0 <_end+0x8031f8>
 b24:	0000000d 	andeq	r0, r0, sp
 b28:	00000d0a 	andeq	r0, r0, sl, lsl #26

00000b2c <_ctype_>:
 b2c:	20202000 	eorcs	r2, r0, r0
 b30:	20202020 	eorcs	r2, r0, r0, lsr #32
 b34:	28282020 	stmdacs	r8!, {r5, sp}
 b38:	20282828 	eorcs	r2, r8, r8, lsr #16
 b3c:	20202020 	eorcs	r2, r0, r0, lsr #32
 b40:	20202020 	eorcs	r2, r0, r0, lsr #32
 b44:	20202020 	eorcs	r2, r0, r0, lsr #32
 b48:	20202020 	eorcs	r2, r0, r0, lsr #32
 b4c:	10108820 	andsne	r8, r0, r0, lsr #16
 b50:	10101010 	andsne	r1, r0, r0, lsl r0
 b54:	10101010 	andsne	r1, r0, r0, lsl r0
 b58:	10101010 	andsne	r1, r0, r0, lsl r0
 b5c:	04040410 	streq	r0, [r4], #-1040	; 0xfffffbf0
 b60:	04040404 	streq	r0, [r4], #-1028	; 0xfffffbfc
 b64:	10040404 	andne	r0, r4, r4, lsl #8
 b68:	10101010 	andsne	r1, r0, r0, lsl r0
 b6c:	41411010 	cmpmi	r1, r0, lsl r0
 b70:	41414141 	cmpmi	r1, r1, asr #2
 b74:	01010101 	tsteq	r1, r1, lsl #2
 b78:	01010101 	tsteq	r1, r1, lsl #2
 b7c:	01010101 	tsteq	r1, r1, lsl #2
 b80:	01010101 	tsteq	r1, r1, lsl #2
 b84:	01010101 	tsteq	r1, r1, lsl #2
 b88:	10101010 	andsne	r1, r0, r0, lsl r0
 b8c:	42421010 	submi	r1, r2, #16
 b90:	42424242 	submi	r4, r2, #536870916	; 0x20000004
 b94:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
 b98:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
 b9c:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
 ba0:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
 ba4:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
 ba8:	10101010 	andsne	r1, r0, r0, lsl r0
 bac:	00000020 	andeq	r0, r0, r0, lsr #32
	...

00000c30 <_global_impure_ptr>:
 c30:	000004b0 			; <UNDEFINED> instruction: 0x000004b0
 c34:	00000043 	andeq	r0, r0, r3, asr #32

Disassembly of section .eh_frame:

00000c38 <__EH_FRAME_BEGIN__>:
 c38:	00000000 	andeq	r0, r0, r0

Disassembly of section .init_array:

00000c3c <__eh_framehdr_end>:
 c3c:	000040bc 	strheq	r4, [r0], -ip

Disassembly of section .fini_array:

00000c40 <__fini_array_start>:
 c40:	00004078 	andeq	r4, r0, r8, ror r0

Disassembly of section .ARM.attributes:

00000c44 <__ARM.attributes_start>:
 c44:	00003241 	andeq	r3, r0, r1, asr #4
 c48:	61656100 	cmnvs	r5, r0, lsl #2
 c4c:	01006962 	tsteq	r0, r2, ror #18
 c50:	00000028 	andeq	r0, r0, r8, lsr #32
 c54:	412d3705 	teqmi	sp, r5, lsl #14
 c58:	070a0600 	streq	r0, [sl, -r0, lsl #12]
 c5c:	09010841 	stmdbeq	r1, {r0, r6, fp}
 c60:	0c030a02 	stceq	10, cr0, [r3], {2}
 c64:	14041201 	strne	r1, [r4], #-513	; 0xfffffdff
 c68:	17011501 	strne	r1, [r1, -r1, lsl #10]
 c6c:	1a011803 	bne	46c80 <_end+0x3eaa8>
 c70:	22031b01 	andcs	r1, r3, #1024	; 0x400
 c74:	Address 0x00000c74 is out of bounds.


Disassembly of section .bss:

0000149e <__bss_start>:
	...

000014a0 <completed.8489>:
    14a0:	00000000 	andeq	r0, r0, r0

000014a4 <object.8494>:
	...

000014bc <high_val>:
    14bc:	00000000 	andeq	r0, r0, r0

000014c0 <low_val>:
    14c0:	00000000 	andeq	r0, r0, r0

000014c4 <average_val>:
    14c4:	00000000 	andeq	r0, r0, r0

000014c8 <pmdata_count>:
    14c8:	00000000 	andeq	r0, r0, r0

000014cc <hwmgr_vpsr>:
	...

00001560 <HWManager_IRQ_STK>:
	...

00001d60 <BitFileIndexTable>:
	...

00001de0 <IFIndexTable>:
	...

00001e60 <PRClientTable>:
	...

00001e70 <Current_RCPG>:
    1e70:	00000000 	andeq	r0, r0, r0

00001e74 <XDcfg_0>:
	...

00001e8c <HWManager_STK>:
	...

0000268c <_ZZ14HWManager_MainimiE6Dev_id>:
    268c:	00000000 	andeq	r0, r0, r0

00002690 <_ZZ14HWManager_MainimiE4p_IF>:
    2690:	00000000 	andeq	r0, r0, r0

00002694 <HandlerTable>:
	...

00002810 <vpsr>:
	...

00002880 <__malloc_top_pad>:
    2880:	00000000 	andeq	r0, r0, r0

00002884 <__malloc_current_mallinfo>:
	...

000028ac <__malloc_max_sbrked_mem>:
    28ac:	00000000 	andeq	r0, r0, r0

000028b0 <__malloc_max_total_mem>:
    28b0:	00000000 	andeq	r0, r0, r0

000028b4 <errno>:
    28b4:	00000000 	andeq	r0, r0, r0

000028b8 <__bss_end>:
	...

Disassembly of section .stack:

00003000 <stack_top-0x1000>:
    3000:	0000002a 	andeq	r0, r0, sl, lsr #32
	...

Disassembly of section .text:

00004000 <deregister_tm_clones>:
    4000:	e92d4008 	push	{r3, lr}
    4004:	e30008dc 	movw	r0, #2268	; 0x8dc
    4008:	e59f3024 	ldr	r3, [pc, #36]	; 4034 <stack_top+0x34>
    400c:	e3400000 	movt	r0, #0
    4010:	e0603003 	rsb	r3, r0, r3
    4014:	e3530006 	cmp	r3, #6
    4018:	98bd8008 	popls	{r3, pc}
    401c:	e3003000 	movw	r3, #0
    4020:	e3403000 	movt	r3, #0
    4024:	e3530000 	cmp	r3, #0
    4028:	08bd8008 	popeq	{r3, pc}
    402c:	e12fff33 	blx	r3
    4030:	e8bd8008 	pop	{r3, pc}
    4034:	000008df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>

00004038 <register_tm_clones>:
    4038:	e92d4008 	push	{r3, lr}
    403c:	e30008dc 	movw	r0, #2268	; 0x8dc
    4040:	e30038dc 	movw	r3, #2268	; 0x8dc
    4044:	e3400000 	movt	r0, #0
    4048:	e3403000 	movt	r3, #0
    404c:	e0603003 	rsb	r3, r0, r3
    4050:	e1a03143 	asr	r3, r3, #2
    4054:	e0833fa3 	add	r3, r3, r3, lsr #31
    4058:	e1b010c3 	asrs	r1, r3, #1
    405c:	08bd8008 	popeq	{r3, pc}
    4060:	e3002000 	movw	r2, #0
    4064:	e3402000 	movt	r2, #0
    4068:	e3520000 	cmp	r2, #0
    406c:	08bd8008 	popeq	{r3, pc}
    4070:	e12fff32 	blx	r2
    4074:	e8bd8008 	pop	{r3, pc}

00004078 <__do_global_dtors_aux>:
    4078:	e92d4010 	push	{r4, lr}
    407c:	e30144a0 	movw	r4, #5280	; 0x14a0
    4080:	e3404000 	movt	r4, #0
    4084:	e5d43000 	ldrb	r3, [r4]
    4088:	e3530000 	cmp	r3, #0
    408c:	18bd8010 	popne	{r4, pc}
    4090:	ebffffda 	bl	4000 <deregister_tm_clones>
    4094:	e3003000 	movw	r3, #0
    4098:	e3403000 	movt	r3, #0
    409c:	e3530000 	cmp	r3, #0
    40a0:	0a000002 	beq	40b0 <__do_global_dtors_aux+0x38>
    40a4:	e3000c38 	movw	r0, #3128	; 0xc38
    40a8:	e3400000 	movt	r0, #0
    40ac:	e320f000 	nop	{0}
    40b0:	e3a03001 	mov	r3, #1
    40b4:	e5c43000 	strb	r3, [r4]
    40b8:	e8bd8010 	pop	{r4, pc}

000040bc <frame_dummy>:
    40bc:	e92d4008 	push	{r3, lr}
    40c0:	e3003000 	movw	r3, #0
    40c4:	e3403000 	movt	r3, #0
    40c8:	e3530000 	cmp	r3, #0
    40cc:	0a000004 	beq	40e4 <frame_dummy+0x28>
    40d0:	e3000c38 	movw	r0, #3128	; 0xc38
    40d4:	e30114a4 	movw	r1, #5284	; 0x14a4
    40d8:	e3400000 	movt	r0, #0
    40dc:	e3401000 	movt	r1, #0
    40e0:	e320f000 	nop	{0}
    40e4:	e30008d8 	movw	r0, #2264	; 0x8d8
    40e8:	e3400000 	movt	r0, #0
    40ec:	e5903000 	ldr	r3, [r0]
    40f0:	e3530000 	cmp	r3, #0
    40f4:	0a000004 	beq	410c <frame_dummy+0x50>
    40f8:	e3003000 	movw	r3, #0
    40fc:	e3403000 	movt	r3, #0
    4100:	e3530000 	cmp	r3, #0
    4104:	0a000000 	beq	410c <frame_dummy+0x50>
    4108:	e12fff33 	blx	r3
    410c:	e8bd4008 	pop	{r3, lr}
    4110:	eaffffc8 	b	4038 <register_tm_clones>

00004114 <HWManager_Main_Entry>:
    4114:	e59f3028 	ldr	r3, [pc, #40]	; 4144 <HWManager_IRQ_Entry+0x18>
    4118:	e5933000 	ldr	r3, [r3]
    411c:	e3833080 	orr	r3, r3, #128	; 0x80
    4120:	e59f3020 	ldr	r3, [pc, #32]	; 4148 <HWManager_IRQ_Entry+0x1c>
    4124:	e593d000 	ldr	sp, [r3]
    4128:	ea000d18 	b	7590 <HWManager_Main>

0000412c <HWManager_IRQ_Entry>:
    412c:	e59f3010 	ldr	r3, [pc, #16]	; 4144 <HWManager_IRQ_Entry+0x18>
    4130:	e5933000 	ldr	r3, [r3]
    4134:	e3833080 	orr	r3, r3, #128	; 0x80
    4138:	e59f300c 	ldr	r3, [pc, #12]	; 414c <HWManager_IRQ_Entry+0x20>
    413c:	e593d000 	ldr	sp, [r3]
    4140:	ea000b88 	b	6f68 <HWManager_IRQ_Handler>
    4144:	00000080 	andeq	r0, r0, r0, lsl #1
    4148:	00000090 	muleq	r0, r0, r0
    414c:	00000084 	andeq	r0, r0, r4, lsl #1

00004150 <IRQ_entry>:
    4150:	e92d4000 	stmfd	sp!, {lr}
    4154:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    4158:	e59f102c 	ldr	r1, [pc, #44]	; 418c <IRQ_entry+0x3c>
    415c:	e5910000 	ldr	r0, [r1]
    4160:	e92d0001 	stmfd	sp!, {r0}
    4164:	eb000e19 	bl	79d0 <irq_handler>
    4168:	e8bd0001 	ldmfd	sp!, {r0}
    416c:	f57ff06f 	isb	sy
    4170:	e12cf000 	msr	CPSR_fs, r0
    4174:	e59f1014 	ldr	r1, [pc, #20]	; 4190 <IRQ_entry+0x40>
    4178:	e0000001 	and	r0, r0, r1
    417c:	e59f1010 	ldr	r1, [pc, #16]	; 4194 <IRQ_entry+0x44>
    4180:	e5810000 	str	r0, [r1]
    4184:	f57ff06f 	isb	sy
    4188:	e8bddfff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
    418c:	00002814 	andeq	r2, r0, r4, lsl r8
    4190:	0000ffff 	strdeq	pc, [r0], -pc	; <UNPREDICTABLE>
    4194:	00002810 	andeq	r2, r0, r0, lsl r8

00004198 <_start>:
    4198:	e51fd000 	ldr	sp, [pc, #-0]	; 41a0 <_start+0x8>
    419c:	ea000fdb 	b	8110 <main_func>
    41a0:	00004000 	andeq	r4, r0, r0

000041a4 <syscall>:
    41a4:	e92d4000 	stmfd	sp!, {lr}
    41a8:	ef000000 	svc	0x00000000
    41ac:	e8bd8000 	ldmfd	sp!, {pc}

000041b0 <VM_IRQ_En>:
    41b0:	e59f1038 	ldr	r1, [pc, #56]	; 41f0 <VM_IRQ_Dis+0x20>
    41b4:	e5910000 	ldr	r0, [r1]
    41b8:	e3c00080 	bic	r0, r0, #128	; 0x80
    41bc:	e59f1030 	ldr	r1, [pc, #48]	; 41f4 <VM_IRQ_Dis+0x24>
    41c0:	e0000001 	and	r0, r0, r1
    41c4:	e59f1024 	ldr	r1, [pc, #36]	; 41f0 <VM_IRQ_Dis+0x20>
    41c8:	e5810000 	str	r0, [r1]
    41cc:	e12fff1e 	bx	lr

000041d0 <VM_IRQ_Dis>:
    41d0:	e59f1018 	ldr	r1, [pc, #24]	; 41f0 <VM_IRQ_Dis+0x20>
    41d4:	e5910000 	ldr	r0, [r1]
    41d8:	e3800080 	orr	r0, r0, #128	; 0x80
    41dc:	e59f1010 	ldr	r1, [pc, #16]	; 41f4 <VM_IRQ_Dis+0x24>
    41e0:	e0000001 	and	r0, r0, r1
    41e4:	e59f1004 	ldr	r1, [pc, #4]	; 41f0 <VM_IRQ_Dis+0x20>
    41e8:	e5810000 	str	r0, [r1]
    41ec:	e12fff1e 	bx	lr
    41f0:	00002810 	andeq	r2, r0, r0, lsl r8
    41f4:	0000ffff 	strdeq	pc, [r0], -pc	; <UNPREDICTABLE>

000041f8 <__aeabi_uidiv>:
    41f8:	e2512001 	subs	r2, r1, #1
    41fc:	012fff1e 	bxeq	lr
    4200:	3a000074 	bcc	43d8 <__aeabi_uidiv+0x1e0>
    4204:	e1500001 	cmp	r0, r1
    4208:	9a00006b 	bls	43bc <__aeabi_uidiv+0x1c4>
    420c:	e1110002 	tst	r1, r2
    4210:	0a00006c 	beq	43c8 <__aeabi_uidiv+0x1d0>
    4214:	e16f3f10 	clz	r3, r0
    4218:	e16f2f11 	clz	r2, r1
    421c:	e0423003 	sub	r3, r2, r3
    4220:	e273301f 	rsbs	r3, r3, #31
    4224:	10833083 	addne	r3, r3, r3, lsl #1
    4228:	e3a02000 	mov	r2, #0
    422c:	108ff103 	addne	pc, pc, r3, lsl #2
    4230:	e320f000 	nop	{0}
    4234:	e1500f81 	cmp	r0, r1, lsl #31
    4238:	e0a22002 	adc	r2, r2, r2
    423c:	20400f81 	subcs	r0, r0, r1, lsl #31
    4240:	e1500f01 	cmp	r0, r1, lsl #30
    4244:	e0a22002 	adc	r2, r2, r2
    4248:	20400f01 	subcs	r0, r0, r1, lsl #30
    424c:	e1500e81 	cmp	r0, r1, lsl #29
    4250:	e0a22002 	adc	r2, r2, r2
    4254:	20400e81 	subcs	r0, r0, r1, lsl #29
    4258:	e1500e01 	cmp	r0, r1, lsl #28
    425c:	e0a22002 	adc	r2, r2, r2
    4260:	20400e01 	subcs	r0, r0, r1, lsl #28
    4264:	e1500d81 	cmp	r0, r1, lsl #27
    4268:	e0a22002 	adc	r2, r2, r2
    426c:	20400d81 	subcs	r0, r0, r1, lsl #27
    4270:	e1500d01 	cmp	r0, r1, lsl #26
    4274:	e0a22002 	adc	r2, r2, r2
    4278:	20400d01 	subcs	r0, r0, r1, lsl #26
    427c:	e1500c81 	cmp	r0, r1, lsl #25
    4280:	e0a22002 	adc	r2, r2, r2
    4284:	20400c81 	subcs	r0, r0, r1, lsl #25
    4288:	e1500c01 	cmp	r0, r1, lsl #24
    428c:	e0a22002 	adc	r2, r2, r2
    4290:	20400c01 	subcs	r0, r0, r1, lsl #24
    4294:	e1500b81 	cmp	r0, r1, lsl #23
    4298:	e0a22002 	adc	r2, r2, r2
    429c:	20400b81 	subcs	r0, r0, r1, lsl #23
    42a0:	e1500b01 	cmp	r0, r1, lsl #22
    42a4:	e0a22002 	adc	r2, r2, r2
    42a8:	20400b01 	subcs	r0, r0, r1, lsl #22
    42ac:	e1500a81 	cmp	r0, r1, lsl #21
    42b0:	e0a22002 	adc	r2, r2, r2
    42b4:	20400a81 	subcs	r0, r0, r1, lsl #21
    42b8:	e1500a01 	cmp	r0, r1, lsl #20
    42bc:	e0a22002 	adc	r2, r2, r2
    42c0:	20400a01 	subcs	r0, r0, r1, lsl #20
    42c4:	e1500981 	cmp	r0, r1, lsl #19
    42c8:	e0a22002 	adc	r2, r2, r2
    42cc:	20400981 	subcs	r0, r0, r1, lsl #19
    42d0:	e1500901 	cmp	r0, r1, lsl #18
    42d4:	e0a22002 	adc	r2, r2, r2
    42d8:	20400901 	subcs	r0, r0, r1, lsl #18
    42dc:	e1500881 	cmp	r0, r1, lsl #17
    42e0:	e0a22002 	adc	r2, r2, r2
    42e4:	20400881 	subcs	r0, r0, r1, lsl #17
    42e8:	e1500801 	cmp	r0, r1, lsl #16
    42ec:	e0a22002 	adc	r2, r2, r2
    42f0:	20400801 	subcs	r0, r0, r1, lsl #16
    42f4:	e1500781 	cmp	r0, r1, lsl #15
    42f8:	e0a22002 	adc	r2, r2, r2
    42fc:	20400781 	subcs	r0, r0, r1, lsl #15
    4300:	e1500701 	cmp	r0, r1, lsl #14
    4304:	e0a22002 	adc	r2, r2, r2
    4308:	20400701 	subcs	r0, r0, r1, lsl #14
    430c:	e1500681 	cmp	r0, r1, lsl #13
    4310:	e0a22002 	adc	r2, r2, r2
    4314:	20400681 	subcs	r0, r0, r1, lsl #13
    4318:	e1500601 	cmp	r0, r1, lsl #12
    431c:	e0a22002 	adc	r2, r2, r2
    4320:	20400601 	subcs	r0, r0, r1, lsl #12
    4324:	e1500581 	cmp	r0, r1, lsl #11
    4328:	e0a22002 	adc	r2, r2, r2
    432c:	20400581 	subcs	r0, r0, r1, lsl #11
    4330:	e1500501 	cmp	r0, r1, lsl #10
    4334:	e0a22002 	adc	r2, r2, r2
    4338:	20400501 	subcs	r0, r0, r1, lsl #10
    433c:	e1500481 	cmp	r0, r1, lsl #9
    4340:	e0a22002 	adc	r2, r2, r2
    4344:	20400481 	subcs	r0, r0, r1, lsl #9
    4348:	e1500401 	cmp	r0, r1, lsl #8
    434c:	e0a22002 	adc	r2, r2, r2
    4350:	20400401 	subcs	r0, r0, r1, lsl #8
    4354:	e1500381 	cmp	r0, r1, lsl #7
    4358:	e0a22002 	adc	r2, r2, r2
    435c:	20400381 	subcs	r0, r0, r1, lsl #7
    4360:	e1500301 	cmp	r0, r1, lsl #6
    4364:	e0a22002 	adc	r2, r2, r2
    4368:	20400301 	subcs	r0, r0, r1, lsl #6
    436c:	e1500281 	cmp	r0, r1, lsl #5
    4370:	e0a22002 	adc	r2, r2, r2
    4374:	20400281 	subcs	r0, r0, r1, lsl #5
    4378:	e1500201 	cmp	r0, r1, lsl #4
    437c:	e0a22002 	adc	r2, r2, r2
    4380:	20400201 	subcs	r0, r0, r1, lsl #4
    4384:	e1500181 	cmp	r0, r1, lsl #3
    4388:	e0a22002 	adc	r2, r2, r2
    438c:	20400181 	subcs	r0, r0, r1, lsl #3
    4390:	e1500101 	cmp	r0, r1, lsl #2
    4394:	e0a22002 	adc	r2, r2, r2
    4398:	20400101 	subcs	r0, r0, r1, lsl #2
    439c:	e1500081 	cmp	r0, r1, lsl #1
    43a0:	e0a22002 	adc	r2, r2, r2
    43a4:	20400081 	subcs	r0, r0, r1, lsl #1
    43a8:	e1500001 	cmp	r0, r1
    43ac:	e0a22002 	adc	r2, r2, r2
    43b0:	20400001 	subcs	r0, r0, r1
    43b4:	e1a00002 	mov	r0, r2
    43b8:	e12fff1e 	bx	lr
    43bc:	03a00001 	moveq	r0, #1
    43c0:	13a00000 	movne	r0, #0
    43c4:	e12fff1e 	bx	lr
    43c8:	e16f2f11 	clz	r2, r1
    43cc:	e262201f 	rsb	r2, r2, #31
    43d0:	e1a00230 	lsr	r0, r0, r2
    43d4:	e12fff1e 	bx	lr
    43d8:	e3500000 	cmp	r0, #0
    43dc:	13e00000 	mvnne	r0, #0
    43e0:	ea000007 	b	4404 <__aeabi_idiv0>

000043e4 <__aeabi_uidivmod>:
    43e4:	e3510000 	cmp	r1, #0
    43e8:	0afffffa 	beq	43d8 <__aeabi_uidiv+0x1e0>
    43ec:	e92d4003 	push	{r0, r1, lr}
    43f0:	ebffff80 	bl	41f8 <__aeabi_uidiv>
    43f4:	e8bd4006 	pop	{r1, r2, lr}
    43f8:	e0030092 	mul	r3, r2, r0
    43fc:	e0411003 	sub	r1, r1, r3
    4400:	e12fff1e 	bx	lr

00004404 <__aeabi_idiv0>:
    4404:	e12fff1e 	bx	lr

00004408 <malloc>:
    4408:	e30034a8 	movw	r3, #1192	; 0x4a8
    440c:	e3403000 	movt	r3, #0
    4410:	e1a01000 	mov	r1, r0
    4414:	e5930000 	ldr	r0, [r3]
    4418:	ea000004 	b	4430 <_malloc_r>

0000441c <free>:
    441c:	e30034a8 	movw	r3, #1192	; 0x4a8
    4420:	e3403000 	movt	r3, #0
    4424:	e1a01000 	mov	r1, r0
    4428:	e5930000 	ldr	r0, [r3]
    442c:	ea000239 	b	4d18 <_free_r>

00004430 <_malloc_r>:
    4430:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    4434:	e281400b 	add	r4, r1, #11
    4438:	e3540016 	cmp	r4, #22
    443c:	e24dd00c 	sub	sp, sp, #12
    4440:	83c44007 	bichi	r4, r4, #7
    4444:	e1a06000 	mov	r6, r0
    4448:	93a03000 	movls	r3, #0
    444c:	93a04010 	movls	r4, #16
    4450:	81a03fa4 	lsrhi	r3, r4, #31
    4454:	e1540001 	cmp	r4, r1
    4458:	21a01003 	movcs	r1, r3
    445c:	33831001 	orrcc	r1, r3, #1
    4460:	e3510000 	cmp	r1, #0
    4464:	13a0300c 	movne	r3, #12
    4468:	13a07000 	movne	r7, #0
    446c:	15803000 	strne	r3, [r0]
    4470:	1a000016 	bne	44d0 <_malloc_r+0xa0>
    4474:	eb0001b4 	bl	4b4c <__malloc_lock>
    4478:	e3540f7e 	cmp	r4, #504	; 0x1f8
    447c:	2a000016 	bcs	44dc <_malloc_r+0xac>
    4480:	e1a071a4 	lsr	r7, r4, #3
    4484:	e3005094 	movw	r5, #148	; 0x94
    4488:	e3405000 	movt	r5, #0
    448c:	e0852187 	add	r2, r5, r7, lsl #3
    4490:	e592300c 	ldr	r3, [r2, #12]
    4494:	e1530002 	cmp	r3, r2
    4498:	0a000151 	beq	49e4 <_malloc_r+0x5b4>
    449c:	e593c004 	ldr	ip, [r3, #4]
    44a0:	e2837008 	add	r7, r3, #8
    44a4:	e593200c 	ldr	r2, [r3, #12]
    44a8:	e1a00006 	mov	r0, r6
    44ac:	e3ccc003 	bic	ip, ip, #3
    44b0:	e5931008 	ldr	r1, [r3, #8]
    44b4:	e083300c 	add	r3, r3, ip
    44b8:	e593c004 	ldr	ip, [r3, #4]
    44bc:	e581200c 	str	r2, [r1, #12]
    44c0:	e38cc001 	orr	ip, ip, #1
    44c4:	e5821008 	str	r1, [r2, #8]
    44c8:	e583c004 	str	ip, [r3, #4]
    44cc:	eb00019f 	bl	4b50 <__malloc_unlock>
    44d0:	e1a00007 	mov	r0, r7
    44d4:	e28dd00c 	add	sp, sp, #12
    44d8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    44dc:	e1b074a4 	lsrs	r7, r4, #9
    44e0:	01a071a4 	lsreq	r7, r4, #3
    44e4:	01a0c087 	lsleq	ip, r7, #1
    44e8:	1a000062 	bne	4678 <_malloc_r+0x248>
    44ec:	e3005094 	movw	r5, #148	; 0x94
    44f0:	e3405000 	movt	r5, #0
    44f4:	e085c10c 	add	ip, r5, ip, lsl #2
    44f8:	e59c300c 	ldr	r3, [ip, #12]
    44fc:	e15c0003 	cmp	ip, r3
    4500:	1a000005 	bne	451c <_malloc_r+0xec>
    4504:	ea00000a 	b	4534 <_malloc_r+0x104>
    4508:	e3520000 	cmp	r2, #0
    450c:	aa0000dc 	bge	4884 <_malloc_r+0x454>
    4510:	e593300c 	ldr	r3, [r3, #12]
    4514:	e15c0003 	cmp	ip, r3
    4518:	0a000005 	beq	4534 <_malloc_r+0x104>
    451c:	e5931004 	ldr	r1, [r3, #4]
    4520:	e3c11003 	bic	r1, r1, #3
    4524:	e0642001 	rsb	r2, r4, r1
    4528:	e352000f 	cmp	r2, #15
    452c:	dafffff5 	ble	4508 <_malloc_r+0xd8>
    4530:	e2477001 	sub	r7, r7, #1
    4534:	e2877001 	add	r7, r7, #1
    4538:	e3002094 	movw	r2, #148	; 0x94
    453c:	e5953010 	ldr	r3, [r5, #16]
    4540:	e3402000 	movt	r2, #0
    4544:	e282e008 	add	lr, r2, #8
    4548:	e153000e 	cmp	r3, lr
    454c:	05921004 	ldreq	r1, [r2, #4]
    4550:	0a000016 	beq	45b0 <_malloc_r+0x180>
    4554:	e5931004 	ldr	r1, [r3, #4]
    4558:	e3c11003 	bic	r1, r1, #3
    455c:	e064c001 	rsb	ip, r4, r1
    4560:	e35c000f 	cmp	ip, #15
    4564:	ca0000fc 	bgt	495c <_malloc_r+0x52c>
    4568:	e35c0000 	cmp	ip, #0
    456c:	e582e014 	str	lr, [r2, #20]
    4570:	e582e010 	str	lr, [r2, #16]
    4574:	aa000045 	bge	4690 <_malloc_r+0x260>
    4578:	e3510c02 	cmp	r1, #512	; 0x200
    457c:	2a0000d6 	bcs	48dc <_malloc_r+0x4ac>
    4580:	e1a011a1 	lsr	r1, r1, #3
    4584:	e592c004 	ldr	ip, [r2, #4]
    4588:	e3a08001 	mov	r8, #1
    458c:	e0820181 	add	r0, r2, r1, lsl #3
    4590:	e1a01141 	asr	r1, r1, #2
    4594:	e18c1118 	orr	r1, ip, r8, lsl r1
    4598:	e583000c 	str	r0, [r3, #12]
    459c:	e590c008 	ldr	ip, [r0, #8]
    45a0:	e5821004 	str	r1, [r2, #4]
    45a4:	e583c008 	str	ip, [r3, #8]
    45a8:	e58c300c 	str	r3, [ip, #12]
    45ac:	e5803008 	str	r3, [r0, #8]
    45b0:	e1a00147 	asr	r0, r7, #2
    45b4:	e3a03001 	mov	r3, #1
    45b8:	e1a00013 	lsl	r0, r3, r0
    45bc:	e1500001 	cmp	r0, r1
    45c0:	8a00003a 	bhi	46b0 <_malloc_r+0x280>
    45c4:	e1110000 	tst	r1, r0
    45c8:	1a000008 	bne	45f0 <_malloc_r+0x1c0>
    45cc:	e1a00310 	lsl	r0, r0, r3
    45d0:	e3c77003 	bic	r7, r7, #3
    45d4:	e1110000 	tst	r1, r0
    45d8:	e2877004 	add	r7, r7, #4
    45dc:	1a000003 	bne	45f0 <_malloc_r+0x1c0>
    45e0:	e1a00080 	lsl	r0, r0, #1
    45e4:	e2877004 	add	r7, r7, #4
    45e8:	e1110000 	tst	r1, r0
    45ec:	0afffffb 	beq	45e0 <_malloc_r+0x1b0>
    45f0:	e085a187 	add	sl, r5, r7, lsl #3
    45f4:	e1a08007 	mov	r8, r7
    45f8:	e1a0c00a 	mov	ip, sl
    45fc:	e59c200c 	ldr	r2, [ip, #12]
    4600:	e15c0002 	cmp	ip, r2
    4604:	1a000005 	bne	4620 <_malloc_r+0x1f0>
    4608:	ea0000e0 	b	4990 <_malloc_r+0x560>
    460c:	e3510000 	cmp	r1, #0
    4610:	aa0000f9 	bge	49fc <_malloc_r+0x5cc>
    4614:	e592200c 	ldr	r2, [r2, #12]
    4618:	e15c0002 	cmp	ip, r2
    461c:	0a0000db 	beq	4990 <_malloc_r+0x560>
    4620:	e5923004 	ldr	r3, [r2, #4]
    4624:	e3c33003 	bic	r3, r3, #3
    4628:	e0641003 	rsb	r1, r4, r3
    462c:	e351000f 	cmp	r1, #15
    4630:	dafffff5 	ble	460c <_malloc_r+0x1dc>
    4634:	e1a07002 	mov	r7, r2
    4638:	e592c00c 	ldr	ip, [r2, #12]
    463c:	e5b78008 	ldr	r8, [r7, #8]!
    4640:	e0823004 	add	r3, r2, r4
    4644:	e381a001 	orr	sl, r1, #1
    4648:	e3844001 	orr	r4, r4, #1
    464c:	e1a00006 	mov	r0, r6
    4650:	e5824004 	str	r4, [r2, #4]
    4654:	e588c00c 	str	ip, [r8, #12]
    4658:	e58c8008 	str	r8, [ip, #8]
    465c:	e5853014 	str	r3, [r5, #20]
    4660:	e5853010 	str	r3, [r5, #16]
    4664:	e583e00c 	str	lr, [r3, #12]
    4668:	e9834400 	stmib	r3, {sl, lr}
    466c:	e7831001 	str	r1, [r3, r1]
    4670:	eb000136 	bl	4b50 <__malloc_unlock>
    4674:	eaffff95 	b	44d0 <_malloc_r+0xa0>
    4678:	e3570004 	cmp	r7, #4
    467c:	8a00008c 	bhi	48b4 <_malloc_r+0x484>
    4680:	e1a07324 	lsr	r7, r4, #6
    4684:	e2877038 	add	r7, r7, #56	; 0x38
    4688:	e1a0c087 	lsl	ip, r7, #1
    468c:	eaffff96 	b	44ec <_malloc_r+0xbc>
    4690:	e0831001 	add	r1, r3, r1
    4694:	e2837008 	add	r7, r3, #8
    4698:	e1a00006 	mov	r0, r6
    469c:	e5913004 	ldr	r3, [r1, #4]
    46a0:	e3833001 	orr	r3, r3, #1
    46a4:	e5813004 	str	r3, [r1, #4]
    46a8:	eb000128 	bl	4b50 <__malloc_unlock>
    46ac:	eaffff87 	b	44d0 <_malloc_r+0xa0>
    46b0:	e5957008 	ldr	r7, [r5, #8]
    46b4:	e5979004 	ldr	r9, [r7, #4]
    46b8:	e3c99003 	bic	r9, r9, #3
    46bc:	e1540009 	cmp	r4, r9
    46c0:	8a000002 	bhi	46d0 <_malloc_r+0x2a0>
    46c4:	e0643009 	rsb	r3, r4, r9
    46c8:	e353000f 	cmp	r3, #15
    46cc:	ca000062 	bgt	485c <_malloc_r+0x42c>
    46d0:	e5953408 	ldr	r3, [r5, #1032]	; 0x408
    46d4:	e302a880 	movw	sl, #10368	; 0x2880
    46d8:	e340a000 	movt	sl, #0
    46dc:	e1a00006 	mov	r0, r6
    46e0:	e3730001 	cmn	r3, #1
    46e4:	e0872009 	add	r2, r7, r9
    46e8:	e59a3000 	ldr	r3, [sl]
    46ec:	e58d2004 	str	r2, [sp, #4]
    46f0:	e0843003 	add	r3, r4, r3
    46f4:	12833a01 	addne	r3, r3, #4096	; 0x1000
    46f8:	0283b010 	addeq	fp, r3, #16
    46fc:	1283300f 	addne	r3, r3, #15
    4700:	13c33eff 	bicne	r3, r3, #4080	; 0xff0
    4704:	13c3b00f 	bicne	fp, r3, #15
    4708:	e1a0100b 	mov	r1, fp
    470c:	eb000110 	bl	4b54 <_sbrk_r>
    4710:	e59d2004 	ldr	r2, [sp, #4]
    4714:	e3700001 	cmn	r0, #1
    4718:	e1a08000 	mov	r8, r0
    471c:	0a0000e2 	beq	4aac <_malloc_r+0x67c>
    4720:	e1520000 	cmp	r2, r0
    4724:	8a0000be 	bhi	4a24 <_malloc_r+0x5f4>
    4728:	e59a3004 	ldr	r3, [sl, #4]
    472c:	e1520008 	cmp	r2, r8
    4730:	e08b3003 	add	r3, fp, r3
    4734:	e58a3004 	str	r3, [sl, #4]
    4738:	0a0000df 	beq	4abc <_malloc_r+0x68c>
    473c:	e5950408 	ldr	r0, [r5, #1032]	; 0x408
    4740:	e3001094 	movw	r1, #148	; 0x94
    4744:	e3401000 	movt	r1, #0
    4748:	e3700001 	cmn	r0, #1
    474c:	e1a00006 	mov	r0, r6
    4750:	10622008 	rsbne	r2, r2, r8
    4754:	05818408 	streq	r8, [r1, #1032]	; 0x408
    4758:	10833002 	addne	r3, r3, r2
    475c:	158a3004 	strne	r3, [sl, #4]
    4760:	e2183007 	ands	r3, r8, #7
    4764:	12632008 	rsbne	r2, r3, #8
    4768:	12633a01 	rsbne	r3, r3, #4096	; 0x1000
    476c:	10888002 	addne	r8, r8, r2
    4770:	12832008 	addne	r2, r3, #8
    4774:	e088300b 	add	r3, r8, fp
    4778:	03a02a01 	moveq	r2, #4096	; 0x1000
    477c:	e1a03a03 	lsl	r3, r3, #20
    4780:	e1a03a23 	lsr	r3, r3, #20
    4784:	e063b002 	rsb	fp, r3, r2
    4788:	e1a0100b 	mov	r1, fp
    478c:	eb0000f0 	bl	4b54 <_sbrk_r>
    4790:	e59a3004 	ldr	r3, [sl, #4]
    4794:	e3022880 	movw	r2, #10368	; 0x2880
    4798:	e5858008 	str	r8, [r5, #8]
    479c:	e3402000 	movt	r2, #0
    47a0:	e3700001 	cmn	r0, #1
    47a4:	10681000 	rsbne	r1, r8, r0
    47a8:	108b1001 	addne	r1, fp, r1
    47ac:	03a01001 	moveq	r1, #1
    47b0:	13811001 	orrne	r1, r1, #1
    47b4:	03a0b000 	moveq	fp, #0
    47b8:	e1570005 	cmp	r7, r5
    47bc:	e08b3003 	add	r3, fp, r3
    47c0:	e5881004 	str	r1, [r8, #4]
    47c4:	e58a3004 	str	r3, [sl, #4]
    47c8:	0a00000d 	beq	4804 <_malloc_r+0x3d4>
    47cc:	e359000f 	cmp	r9, #15
    47d0:	9a0000a8 	bls	4a78 <_malloc_r+0x648>
    47d4:	e249100c 	sub	r1, r9, #12
    47d8:	e597e004 	ldr	lr, [r7, #4]
    47dc:	e3c11007 	bic	r1, r1, #7
    47e0:	e3a0c005 	mov	ip, #5
    47e4:	e0870001 	add	r0, r7, r1
    47e8:	e351000f 	cmp	r1, #15
    47ec:	e20ee001 	and	lr, lr, #1
    47f0:	e181100e 	orr	r1, r1, lr
    47f4:	e5871004 	str	r1, [r7, #4]
    47f8:	e580c004 	str	ip, [r0, #4]
    47fc:	e580c008 	str	ip, [r0, #8]
    4800:	8a0000b6 	bhi	4ae0 <_malloc_r+0x6b0>
    4804:	e59a102c 	ldr	r1, [sl, #44]	; 0x2c
    4808:	e3022880 	movw	r2, #10368	; 0x2880
    480c:	e3402000 	movt	r2, #0
    4810:	e5957008 	ldr	r7, [r5, #8]
    4814:	e1530001 	cmp	r3, r1
    4818:	e59a1030 	ldr	r1, [sl, #48]	; 0x30
    481c:	8582302c 	strhi	r3, [r2, #44]	; 0x2c
    4820:	e3022880 	movw	r2, #10368	; 0x2880
    4824:	e3402000 	movt	r2, #0
    4828:	e1530001 	cmp	r3, r1
    482c:	85823030 	strhi	r3, [r2, #48]	; 0x30
    4830:	e5973004 	ldr	r3, [r7, #4]
    4834:	e3c33003 	bic	r3, r3, #3
    4838:	e1540003 	cmp	r4, r3
    483c:	e0643003 	rsb	r3, r4, r3
    4840:	8a000001 	bhi	484c <_malloc_r+0x41c>
    4844:	e353000f 	cmp	r3, #15
    4848:	ca000003 	bgt	485c <_malloc_r+0x42c>
    484c:	e1a00006 	mov	r0, r6
    4850:	e3a07000 	mov	r7, #0
    4854:	eb0000bd 	bl	4b50 <__malloc_unlock>
    4858:	eaffff1c 	b	44d0 <_malloc_r+0xa0>
    485c:	e0872004 	add	r2, r7, r4
    4860:	e3833001 	orr	r3, r3, #1
    4864:	e3844001 	orr	r4, r4, #1
    4868:	e1a00006 	mov	r0, r6
    486c:	e5874004 	str	r4, [r7, #4]
    4870:	e2877008 	add	r7, r7, #8
    4874:	e5823004 	str	r3, [r2, #4]
    4878:	e5852008 	str	r2, [r5, #8]
    487c:	eb0000b3 	bl	4b50 <__malloc_unlock>
    4880:	eaffff12 	b	44d0 <_malloc_r+0xa0>
    4884:	e0831001 	add	r1, r3, r1
    4888:	e593200c 	ldr	r2, [r3, #12]
    488c:	e593c008 	ldr	ip, [r3, #8]
    4890:	e2837008 	add	r7, r3, #8
    4894:	e591e004 	ldr	lr, [r1, #4]
    4898:	e1a00006 	mov	r0, r6
    489c:	e38e3001 	orr	r3, lr, #1
    48a0:	e58c200c 	str	r2, [ip, #12]
    48a4:	e582c008 	str	ip, [r2, #8]
    48a8:	e5813004 	str	r3, [r1, #4]
    48ac:	eb0000a7 	bl	4b50 <__malloc_unlock>
    48b0:	eaffff06 	b	44d0 <_malloc_r+0xa0>
    48b4:	e3570014 	cmp	r7, #20
    48b8:	9287705b 	addls	r7, r7, #91	; 0x5b
    48bc:	91a0c087 	lslls	ip, r7, #1
    48c0:	9affff09 	bls	44ec <_malloc_r+0xbc>
    48c4:	e3570054 	cmp	r7, #84	; 0x54
    48c8:	8a00005d 	bhi	4a44 <_malloc_r+0x614>
    48cc:	e1a07624 	lsr	r7, r4, #12
    48d0:	e287706e 	add	r7, r7, #110	; 0x6e
    48d4:	e1a0c087 	lsl	ip, r7, #1
    48d8:	eaffff03 	b	44ec <_malloc_r+0xbc>
    48dc:	e1a024a1 	lsr	r2, r1, #9
    48e0:	e3520004 	cmp	r2, #4
    48e4:	9a00004a 	bls	4a14 <_malloc_r+0x5e4>
    48e8:	e3520014 	cmp	r2, #20
    48ec:	9282805b 	addls	r8, r2, #91	; 0x5b
    48f0:	91a0c088 	lslls	ip, r8, #1
    48f4:	9a000004 	bls	490c <_malloc_r+0x4dc>
    48f8:	e3520054 	cmp	r2, #84	; 0x54
    48fc:	8a00007e 	bhi	4afc <_malloc_r+0x6cc>
    4900:	e1a08621 	lsr	r8, r1, #12
    4904:	e288806e 	add	r8, r8, #110	; 0x6e
    4908:	e1a0c088 	lsl	ip, r8, #1
    490c:	e085c10c 	add	ip, r5, ip, lsl #2
    4910:	e3000094 	movw	r0, #148	; 0x94
    4914:	e3400000 	movt	r0, #0
    4918:	e59c2008 	ldr	r2, [ip, #8]
    491c:	e152000c 	cmp	r2, ip
    4920:	0a00004d 	beq	4a5c <_malloc_r+0x62c>
    4924:	e5920004 	ldr	r0, [r2, #4]
    4928:	e3c00003 	bic	r0, r0, #3
    492c:	e1510000 	cmp	r1, r0
    4930:	2a000002 	bcs	4940 <_malloc_r+0x510>
    4934:	e5922008 	ldr	r2, [r2, #8]
    4938:	e15c0002 	cmp	ip, r2
    493c:	1afffff8 	bne	4924 <_malloc_r+0x4f4>
    4940:	e592c00c 	ldr	ip, [r2, #12]
    4944:	e5951004 	ldr	r1, [r5, #4]
    4948:	e583c00c 	str	ip, [r3, #12]
    494c:	e5832008 	str	r2, [r3, #8]
    4950:	e582300c 	str	r3, [r2, #12]
    4954:	e58c3008 	str	r3, [ip, #8]
    4958:	eaffff14 	b	45b0 <_malloc_r+0x180>
    495c:	e0831004 	add	r1, r3, r4
    4960:	e38c5001 	orr	r5, ip, #1
    4964:	e5821014 	str	r1, [r2, #20]
    4968:	e3844001 	orr	r4, r4, #1
    496c:	e5821010 	str	r1, [r2, #16]
    4970:	e1a00006 	mov	r0, r6
    4974:	e5834004 	str	r4, [r3, #4]
    4978:	e2837008 	add	r7, r3, #8
    497c:	e581e00c 	str	lr, [r1, #12]
    4980:	e9814020 	stmib	r1, {r5, lr}
    4984:	e781c00c 	str	ip, [r1, ip]
    4988:	eb000070 	bl	4b50 <__malloc_unlock>
    498c:	eafffecf 	b	44d0 <_malloc_r+0xa0>
    4990:	e2888001 	add	r8, r8, #1
    4994:	e28cc008 	add	ip, ip, #8
    4998:	e3180003 	tst	r8, #3
    499c:	1affff16 	bne	45fc <_malloc_r+0x1cc>
    49a0:	e3170003 	tst	r7, #3
    49a4:	e24a3008 	sub	r3, sl, #8
    49a8:	e2477001 	sub	r7, r7, #1
    49ac:	0a00005f 	beq	4b30 <_malloc_r+0x700>
    49b0:	e59aa000 	ldr	sl, [sl]
    49b4:	e15a0003 	cmp	sl, r3
    49b8:	0afffff8 	beq	49a0 <_malloc_r+0x570>
    49bc:	e5953004 	ldr	r3, [r5, #4]
    49c0:	e1a00080 	lsl	r0, r0, #1
    49c4:	e1500003 	cmp	r0, r3
    49c8:	8affff38 	bhi	46b0 <_malloc_r+0x280>
    49cc:	e3500000 	cmp	r0, #0
    49d0:	0affff36 	beq	46b0 <_malloc_r+0x280>
    49d4:	e1130000 	tst	r3, r0
    49d8:	0a000058 	beq	4b40 <_malloc_r+0x710>
    49dc:	e1a07008 	mov	r7, r8
    49e0:	eaffff02 	b	45f0 <_malloc_r+0x1c0>
    49e4:	e2832008 	add	r2, r3, #8
    49e8:	e5933014 	ldr	r3, [r3, #20]
    49ec:	e1520003 	cmp	r2, r3
    49f0:	02877002 	addeq	r7, r7, #2
    49f4:	0afffecf 	beq	4538 <_malloc_r+0x108>
    49f8:	eafffea7 	b	449c <_malloc_r+0x6c>
    49fc:	e1a07002 	mov	r7, r2
    4a00:	e0823003 	add	r3, r2, r3
    4a04:	e1a00006 	mov	r0, r6
    4a08:	e592200c 	ldr	r2, [r2, #12]
    4a0c:	e5b71008 	ldr	r1, [r7, #8]!
    4a10:	eafffea8 	b	44b8 <_malloc_r+0x88>
    4a14:	e1a08321 	lsr	r8, r1, #6
    4a18:	e2888038 	add	r8, r8, #56	; 0x38
    4a1c:	e1a0c088 	lsl	ip, r8, #1
    4a20:	eaffffb9 	b	490c <_malloc_r+0x4dc>
    4a24:	e1570005 	cmp	r7, r5
    4a28:	e3003094 	movw	r3, #148	; 0x94
    4a2c:	e3403000 	movt	r3, #0
    4a30:	0affff3c 	beq	4728 <_malloc_r+0x2f8>
    4a34:	e5937008 	ldr	r7, [r3, #8]
    4a38:	e5973004 	ldr	r3, [r7, #4]
    4a3c:	e3c33003 	bic	r3, r3, #3
    4a40:	eaffff7c 	b	4838 <_malloc_r+0x408>
    4a44:	e3570f55 	cmp	r7, #340	; 0x154
    4a48:	8a00000f 	bhi	4a8c <_malloc_r+0x65c>
    4a4c:	e1a077a4 	lsr	r7, r4, #15
    4a50:	e2877077 	add	r7, r7, #119	; 0x77
    4a54:	e1a0c087 	lsl	ip, r7, #1
    4a58:	eafffea3 	b	44ec <_malloc_r+0xbc>
    4a5c:	e590a004 	ldr	sl, [r0, #4]
    4a60:	e1a08148 	asr	r8, r8, #2
    4a64:	e3a01001 	mov	r1, #1
    4a68:	e1a0c002 	mov	ip, r2
    4a6c:	e18a1811 	orr	r1, sl, r1, lsl r8
    4a70:	e5801004 	str	r1, [r0, #4]
    4a74:	eaffffb3 	b	4948 <_malloc_r+0x518>
    4a78:	e3a03001 	mov	r3, #1
    4a7c:	e1a07008 	mov	r7, r8
    4a80:	e5883004 	str	r3, [r8, #4]
    4a84:	e3a03000 	mov	r3, #0
    4a88:	eaffff6a 	b	4838 <_malloc_r+0x408>
    4a8c:	e3003554 	movw	r3, #1364	; 0x554
    4a90:	e1570003 	cmp	r7, r3
    4a94:	91a07924 	lsrls	r7, r4, #18
    4a98:	9287707c 	addls	r7, r7, #124	; 0x7c
    4a9c:	83a0c0fc 	movhi	ip, #252	; 0xfc
    4aa0:	83a0707e 	movhi	r7, #126	; 0x7e
    4aa4:	91a0c087 	lslls	ip, r7, #1
    4aa8:	eafffe8f 	b	44ec <_malloc_r+0xbc>
    4aac:	e5957008 	ldr	r7, [r5, #8]
    4ab0:	e5973004 	ldr	r3, [r7, #4]
    4ab4:	e3c33003 	bic	r3, r3, #3
    4ab8:	eaffff5e 	b	4838 <_malloc_r+0x408>
    4abc:	e1a01a02 	lsl	r1, r2, #20
    4ac0:	e1a01a21 	lsr	r1, r1, #20
    4ac4:	e3510000 	cmp	r1, #0
    4ac8:	1affff1b 	bne	473c <_malloc_r+0x30c>
    4acc:	e5952008 	ldr	r2, [r5, #8]
    4ad0:	e08b1009 	add	r1, fp, r9
    4ad4:	e3811001 	orr	r1, r1, #1
    4ad8:	e5821004 	str	r1, [r2, #4]
    4adc:	eaffff48 	b	4804 <_malloc_r+0x3d4>
    4ae0:	e1a00006 	mov	r0, r6
    4ae4:	e2871008 	add	r1, r7, #8
    4ae8:	e58d2004 	str	r2, [sp, #4]
    4aec:	eb000089 	bl	4d18 <_free_r>
    4af0:	e59d2004 	ldr	r2, [sp, #4]
    4af4:	e5923004 	ldr	r3, [r2, #4]
    4af8:	eaffff41 	b	4804 <_malloc_r+0x3d4>
    4afc:	e3520f55 	cmp	r2, #340	; 0x154
    4b00:	91a087a1 	lsrls	r8, r1, #15
    4b04:	92888077 	addls	r8, r8, #119	; 0x77
    4b08:	91a0c088 	lslls	ip, r8, #1
    4b0c:	9affff7e 	bls	490c <_malloc_r+0x4dc>
    4b10:	e3000554 	movw	r0, #1364	; 0x554
    4b14:	e1520000 	cmp	r2, r0
    4b18:	91a08921 	lsrls	r8, r1, #18
    4b1c:	9288807c 	addls	r8, r8, #124	; 0x7c
    4b20:	83a0c0fc 	movhi	ip, #252	; 0xfc
    4b24:	83a0807e 	movhi	r8, #126	; 0x7e
    4b28:	91a0c088 	lslls	ip, r8, #1
    4b2c:	eaffff76 	b	490c <_malloc_r+0x4dc>
    4b30:	e5953004 	ldr	r3, [r5, #4]
    4b34:	e1c33000 	bic	r3, r3, r0
    4b38:	e5853004 	str	r3, [r5, #4]
    4b3c:	eaffff9f 	b	49c0 <_malloc_r+0x590>
    4b40:	e1a00080 	lsl	r0, r0, #1
    4b44:	e2888004 	add	r8, r8, #4
    4b48:	eaffffa1 	b	49d4 <_malloc_r+0x5a4>

00004b4c <__malloc_lock>:
    4b4c:	e12fff1e 	bx	lr

00004b50 <__malloc_unlock>:
    4b50:	e12fff1e 	bx	lr

00004b54 <_sbrk_r>:
    4b54:	e92d4038 	push	{r3, r4, r5, lr}
    4b58:	e30248b4 	movw	r4, #10420	; 0x28b4
    4b5c:	e3404000 	movt	r4, #0
    4b60:	e1a05000 	mov	r5, r0
    4b64:	e1a00001 	mov	r0, r1
    4b68:	e3a03000 	mov	r3, #0
    4b6c:	e5843000 	str	r3, [r4]
    4b70:	eb00048b 	bl	5da4 <_sbrk>
    4b74:	e3700001 	cmn	r0, #1
    4b78:	18bd8038 	popne	{r3, r4, r5, pc}
    4b7c:	e5943000 	ldr	r3, [r4]
    4b80:	e3530000 	cmp	r3, #0
    4b84:	15853000 	strne	r3, [r5]
    4b88:	e8bd8038 	pop	{r3, r4, r5, pc}

00004b8c <strlen>:
    4b8c:	f5d0f000 	pld	[r0]
    4b90:	e3c01003 	bic	r1, r0, #3
    4b94:	e2100003 	ands	r0, r0, #3
    4b98:	e2600000 	rsb	r0, r0, #0
    4b9c:	e4913004 	ldr	r3, [r1], #4
    4ba0:	e280c004 	add	ip, r0, #4
    4ba4:	e1a0c18c 	lsl	ip, ip, #3
    4ba8:	e3e02000 	mvn	r2, #0
    4bac:	11833c32 	orrne	r3, r3, r2, lsr ip
    4bb0:	e300c101 	movw	ip, #257	; 0x101
    4bb4:	e18cc80c 	orr	ip, ip, ip, lsl #16
    4bb8:	e043200c 	sub	r2, r3, ip
    4bbc:	e1c22003 	bic	r2, r2, r3
    4bc0:	e012238c 	ands	r2, r2, ip, lsl #7
    4bc4:	04913004 	ldreq	r3, [r1], #4
    4bc8:	02800004 	addeq	r0, r0, #4
    4bcc:	f5d1f008 	pld	[r1, #8]
    4bd0:	0043200c 	subeq	r2, r3, ip
    4bd4:	01c22003 	biceq	r2, r2, r3
    4bd8:	0012238c 	andseq	r2, r2, ip, lsl #7
    4bdc:	04913004 	ldreq	r3, [r1], #4
    4be0:	02800004 	addeq	r0, r0, #4
    4be4:	0afffff3 	beq	4bb8 <strlen+0x2c>
    4be8:	e6ff2f32 	rbit	r2, r2
    4bec:	e16f2f12 	clz	r2, r2
    4bf0:	e08001a2 	add	r0, r0, r2, lsr #3
    4bf4:	e12fff1e 	bx	lr

00004bf8 <tolower>:
    4bf8:	e30034a4 	movw	r3, #1188	; 0x4a4
    4bfc:	e3403000 	movt	r3, #0
    4c00:	e5933000 	ldr	r3, [r3]
    4c04:	e0833000 	add	r3, r3, r0
    4c08:	e5d33001 	ldrb	r3, [r3, #1]
    4c0c:	e2033003 	and	r3, r3, #3
    4c10:	e3530001 	cmp	r3, #1
    4c14:	02800020 	addeq	r0, r0, #32
    4c18:	e12fff1e 	bx	lr

00004c1c <_malloc_trim_r>:
    4c1c:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    4c20:	e3004094 	movw	r4, #148	; 0x94
    4c24:	e3404000 	movt	r4, #0
    4c28:	e1a07001 	mov	r7, r1
    4c2c:	e1a05000 	mov	r5, r0
    4c30:	ebffffc5 	bl	4b4c <__malloc_lock>
    4c34:	e5943008 	ldr	r3, [r4, #8]
    4c38:	e5936004 	ldr	r6, [r3, #4]
    4c3c:	e3c66003 	bic	r6, r6, #3
    4c40:	e2863efe 	add	r3, r6, #4064	; 0xfe0
    4c44:	e283300f 	add	r3, r3, #15
    4c48:	e0677003 	rsb	r7, r7, r3
    4c4c:	e1a07627 	lsr	r7, r7, #12
    4c50:	e2477001 	sub	r7, r7, #1
    4c54:	e1a07607 	lsl	r7, r7, #12
    4c58:	e3570a01 	cmp	r7, #4096	; 0x1000
    4c5c:	ba000006 	blt	4c7c <_malloc_trim_r+0x60>
    4c60:	e1a00005 	mov	r0, r5
    4c64:	e3a01000 	mov	r1, #0
    4c68:	ebffffb9 	bl	4b54 <_sbrk_r>
    4c6c:	e5943008 	ldr	r3, [r4, #8]
    4c70:	e0833006 	add	r3, r3, r6
    4c74:	e1500003 	cmp	r0, r3
    4c78:	0a000003 	beq	4c8c <_malloc_trim_r+0x70>
    4c7c:	e1a00005 	mov	r0, r5
    4c80:	ebffffb2 	bl	4b50 <__malloc_unlock>
    4c84:	e3a00000 	mov	r0, #0
    4c88:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    4c8c:	e1a00005 	mov	r0, r5
    4c90:	e2671000 	rsb	r1, r7, #0
    4c94:	ebffffae 	bl	4b54 <_sbrk_r>
    4c98:	e3700001 	cmn	r0, #1
    4c9c:	0a00000c 	beq	4cd4 <_malloc_trim_r+0xb8>
    4ca0:	e5941008 	ldr	r1, [r4, #8]
    4ca4:	e3023884 	movw	r3, #10372	; 0x2884
    4ca8:	e3403000 	movt	r3, #0
    4cac:	e0676006 	rsb	r6, r7, r6
    4cb0:	e1a00005 	mov	r0, r5
    4cb4:	e3866001 	orr	r6, r6, #1
    4cb8:	e5932000 	ldr	r2, [r3]
    4cbc:	e5816004 	str	r6, [r1, #4]
    4cc0:	e0677002 	rsb	r7, r7, r2
    4cc4:	e5837000 	str	r7, [r3]
    4cc8:	ebffffa0 	bl	4b50 <__malloc_unlock>
    4ccc:	e3a00001 	mov	r0, #1
    4cd0:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
    4cd4:	e1a00005 	mov	r0, r5
    4cd8:	e3a01000 	mov	r1, #0
    4cdc:	ebffff9c 	bl	4b54 <_sbrk_r>
    4ce0:	e5943008 	ldr	r3, [r4, #8]
    4ce4:	e0632000 	rsb	r2, r3, r0
    4ce8:	e352000f 	cmp	r2, #15
    4cec:	daffffe2 	ble	4c7c <_malloc_trim_r+0x60>
    4cf0:	e300c49c 	movw	ip, #1180	; 0x49c
    4cf4:	e340c000 	movt	ip, #0
    4cf8:	e3021884 	movw	r1, #10372	; 0x2884
    4cfc:	e3401000 	movt	r1, #0
    4d00:	e59cc000 	ldr	ip, [ip]
    4d04:	e3822001 	orr	r2, r2, #1
    4d08:	e5832004 	str	r2, [r3, #4]
    4d0c:	e06c0000 	rsb	r0, ip, r0
    4d10:	e5810000 	str	r0, [r1]
    4d14:	eaffffd8 	b	4c7c <_malloc_trim_r+0x60>

00004d18 <_free_r>:
    4d18:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    4d1c:	e2516000 	subs	r6, r1, #0
    4d20:	e1a07000 	mov	r7, r0
    4d24:	08bd80f8 	popeq	{r3, r4, r5, r6, r7, pc}
    4d28:	ebffff87 	bl	4b4c <__malloc_lock>
    4d2c:	e5165004 	ldr	r5, [r6, #-4]
    4d30:	e3004094 	movw	r4, #148	; 0x94
    4d34:	e3404000 	movt	r4, #0
    4d38:	e246c008 	sub	ip, r6, #8
    4d3c:	e3c53001 	bic	r3, r5, #1
    4d40:	e08c2003 	add	r2, ip, r3
    4d44:	e5940008 	ldr	r0, [r4, #8]
    4d48:	e5921004 	ldr	r1, [r2, #4]
    4d4c:	e1500002 	cmp	r0, r2
    4d50:	e3c11003 	bic	r1, r1, #3
    4d54:	0a00004a 	beq	4e84 <_free_r+0x16c>
    4d58:	e2155001 	ands	r5, r5, #1
    4d5c:	e5821004 	str	r1, [r2, #4]
    4d60:	13a05000 	movne	r5, #0
    4d64:	1a000009 	bne	4d90 <_free_r+0x78>
    4d68:	e5160008 	ldr	r0, [r6, #-8]
    4d6c:	e2846008 	add	r6, r4, #8
    4d70:	e060c00c 	rsb	ip, r0, ip
    4d74:	e0833000 	add	r3, r3, r0
    4d78:	e59c0008 	ldr	r0, [ip, #8]
    4d7c:	e1500006 	cmp	r0, r6
    4d80:	159c600c 	ldrne	r6, [ip, #12]
    4d84:	03a05001 	moveq	r5, #1
    4d88:	1580600c 	strne	r6, [r0, #12]
    4d8c:	15860008 	strne	r0, [r6, #8]
    4d90:	e0820001 	add	r0, r2, r1
    4d94:	e5900004 	ldr	r0, [r0, #4]
    4d98:	e3100001 	tst	r0, #1
    4d9c:	1a000009 	bne	4dc8 <_free_r+0xb0>
    4da0:	e3550000 	cmp	r5, #0
    4da4:	e0833001 	add	r3, r3, r1
    4da8:	e5921008 	ldr	r1, [r2, #8]
    4dac:	1a000002 	bne	4dbc <_free_r+0xa4>
    4db0:	e59f01c4 	ldr	r0, [pc, #452]	; 4f7c <_free_r+0x264>
    4db4:	e1510000 	cmp	r1, r0
    4db8:	0a000049 	beq	4ee4 <_free_r+0x1cc>
    4dbc:	e592200c 	ldr	r2, [r2, #12]
    4dc0:	e581200c 	str	r2, [r1, #12]
    4dc4:	e5821008 	str	r1, [r2, #8]
    4dc8:	e3550000 	cmp	r5, #0
    4dcc:	e3832001 	orr	r2, r3, #1
    4dd0:	e78c3003 	str	r3, [ip, r3]
    4dd4:	e58c2004 	str	r2, [ip, #4]
    4dd8:	1a000019 	bne	4e44 <_free_r+0x12c>
    4ddc:	e3530c02 	cmp	r3, #512	; 0x200
    4de0:	3a00001a 	bcc	4e50 <_free_r+0x138>
    4de4:	e1a024a3 	lsr	r2, r3, #9
    4de8:	e3520004 	cmp	r2, #4
    4dec:	8a000044 	bhi	4f04 <_free_r+0x1ec>
    4df0:	e1a00323 	lsr	r0, r3, #6
    4df4:	e2800038 	add	r0, r0, #56	; 0x38
    4df8:	e1a01080 	lsl	r1, r0, #1
    4dfc:	e0844101 	add	r4, r4, r1, lsl #2
    4e00:	e3001094 	movw	r1, #148	; 0x94
    4e04:	e3401000 	movt	r1, #0
    4e08:	e5942008 	ldr	r2, [r4, #8]
    4e0c:	e1520004 	cmp	r2, r4
    4e10:	0a000045 	beq	4f2c <_free_r+0x214>
    4e14:	e5921004 	ldr	r1, [r2, #4]
    4e18:	e3c11003 	bic	r1, r1, #3
    4e1c:	e1530001 	cmp	r3, r1
    4e20:	2a000002 	bcs	4e30 <_free_r+0x118>
    4e24:	e5922008 	ldr	r2, [r2, #8]
    4e28:	e1540002 	cmp	r4, r2
    4e2c:	1afffff8 	bne	4e14 <_free_r+0xfc>
    4e30:	e592300c 	ldr	r3, [r2, #12]
    4e34:	e58c300c 	str	r3, [ip, #12]
    4e38:	e58c2008 	str	r2, [ip, #8]
    4e3c:	e582c00c 	str	ip, [r2, #12]
    4e40:	e583c008 	str	ip, [r3, #8]
    4e44:	e1a00007 	mov	r0, r7
    4e48:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    4e4c:	eaffff3f 	b	4b50 <__malloc_unlock>
    4e50:	e1a031a3 	lsr	r3, r3, #3
    4e54:	e5941004 	ldr	r1, [r4, #4]
    4e58:	e3a00001 	mov	r0, #1
    4e5c:	e0842183 	add	r2, r4, r3, lsl #3
    4e60:	e1a03143 	asr	r3, r3, #2
    4e64:	e1813310 	orr	r3, r1, r0, lsl r3
    4e68:	e58c200c 	str	r2, [ip, #12]
    4e6c:	e5921008 	ldr	r1, [r2, #8]
    4e70:	e5843004 	str	r3, [r4, #4]
    4e74:	e58c1008 	str	r1, [ip, #8]
    4e78:	e581c00c 	str	ip, [r1, #12]
    4e7c:	e582c008 	str	ip, [r2, #8]
    4e80:	eaffffef 	b	4e44 <_free_r+0x12c>
    4e84:	e3150001 	tst	r5, #1
    4e88:	e0813003 	add	r3, r1, r3
    4e8c:	1a000006 	bne	4eac <_free_r+0x194>
    4e90:	e5162008 	ldr	r2, [r6, #-8]
    4e94:	e062c00c 	rsb	ip, r2, ip
    4e98:	e0833002 	add	r3, r3, r2
    4e9c:	e59c1008 	ldr	r1, [ip, #8]
    4ea0:	e59c200c 	ldr	r2, [ip, #12]
    4ea4:	e581200c 	str	r2, [r1, #12]
    4ea8:	e5821008 	str	r1, [r2, #8]
    4eac:	e30024a0 	movw	r2, #1184	; 0x4a0
    4eb0:	e3402000 	movt	r2, #0
    4eb4:	e3831001 	orr	r1, r3, #1
    4eb8:	e584c008 	str	ip, [r4, #8]
    4ebc:	e5922000 	ldr	r2, [r2]
    4ec0:	e58c1004 	str	r1, [ip, #4]
    4ec4:	e1530002 	cmp	r3, r2
    4ec8:	3affffdd 	bcc	4e44 <_free_r+0x12c>
    4ecc:	e3023880 	movw	r3, #10368	; 0x2880
    4ed0:	e3403000 	movt	r3, #0
    4ed4:	e1a00007 	mov	r0, r7
    4ed8:	e5931000 	ldr	r1, [r3]
    4edc:	ebffff4e 	bl	4c1c <_malloc_trim_r>
    4ee0:	eaffffd7 	b	4e44 <_free_r+0x12c>
    4ee4:	e584c014 	str	ip, [r4, #20]
    4ee8:	e3832001 	orr	r2, r3, #1
    4eec:	e584c010 	str	ip, [r4, #16]
    4ef0:	e58c100c 	str	r1, [ip, #12]
    4ef4:	e58c1008 	str	r1, [ip, #8]
    4ef8:	e58c2004 	str	r2, [ip, #4]
    4efc:	e78c3003 	str	r3, [ip, r3]
    4f00:	eaffffcf 	b	4e44 <_free_r+0x12c>
    4f04:	e3520014 	cmp	r2, #20
    4f08:	9282005b 	addls	r0, r2, #91	; 0x5b
    4f0c:	91a01080 	lslls	r1, r0, #1
    4f10:	9affffb9 	bls	4dfc <_free_r+0xe4>
    4f14:	e3520054 	cmp	r2, #84	; 0x54
    4f18:	8a00000a 	bhi	4f48 <_free_r+0x230>
    4f1c:	e1a00623 	lsr	r0, r3, #12
    4f20:	e280006e 	add	r0, r0, #110	; 0x6e
    4f24:	e1a01080 	lsl	r1, r0, #1
    4f28:	eaffffb3 	b	4dfc <_free_r+0xe4>
    4f2c:	e5914004 	ldr	r4, [r1, #4]
    4f30:	e1a00140 	asr	r0, r0, #2
    4f34:	e3a05001 	mov	r5, #1
    4f38:	e1a03002 	mov	r3, r2
    4f3c:	e1840015 	orr	r0, r4, r5, lsl r0
    4f40:	e5810004 	str	r0, [r1, #4]
    4f44:	eaffffba 	b	4e34 <_free_r+0x11c>
    4f48:	e3520f55 	cmp	r2, #340	; 0x154
    4f4c:	91a007a3 	lsrls	r0, r3, #15
    4f50:	92800077 	addls	r0, r0, #119	; 0x77
    4f54:	91a01080 	lslls	r1, r0, #1
    4f58:	9affffa7 	bls	4dfc <_free_r+0xe4>
    4f5c:	e3001554 	movw	r1, #1364	; 0x554
    4f60:	e1520001 	cmp	r2, r1
    4f64:	91a00923 	lsrls	r0, r3, #18
    4f68:	9280007c 	addls	r0, r0, #124	; 0x7c
    4f6c:	83a010fc 	movhi	r1, #252	; 0xfc
    4f70:	83a0007e 	movhi	r0, #126	; 0x7e
    4f74:	91a01080 	lslls	r1, r0, #1
    4f78:	eaffff9f 	b	4dfc <_free_r+0xe4>
    4f7c:	0000009c 	muleq	r0, ip, r0

00004f80 <cleanup_glue>:
    4f80:	e92d4038 	push	{r3, r4, r5, lr}
    4f84:	e1a04001 	mov	r4, r1
    4f88:	e5911000 	ldr	r1, [r1]
    4f8c:	e1a05000 	mov	r5, r0
    4f90:	e3510000 	cmp	r1, #0
    4f94:	0a000000 	beq	4f9c <cleanup_glue+0x1c>
    4f98:	ebfffff8 	bl	4f80 <cleanup_glue>
    4f9c:	e1a00005 	mov	r0, r5
    4fa0:	e1a01004 	mov	r1, r4
    4fa4:	e8bd4038 	pop	{r3, r4, r5, lr}
    4fa8:	eaffff5a 	b	4d18 <_free_r>

00004fac <_reclaim_reent>:
    4fac:	e30034a8 	movw	r3, #1192	; 0x4a8
    4fb0:	e3403000 	movt	r3, #0
    4fb4:	e92d4070 	push	{r4, r5, r6, lr}
    4fb8:	e1a05000 	mov	r5, r0
    4fbc:	e5933000 	ldr	r3, [r3]
    4fc0:	e1500003 	cmp	r0, r3
    4fc4:	08bd8070 	popeq	{r4, r5, r6, pc}
    4fc8:	e590204c 	ldr	r2, [r0, #76]	; 0x4c
    4fcc:	e3520000 	cmp	r2, #0
    4fd0:	0a000011 	beq	501c <_reclaim_reent+0x70>
    4fd4:	e3a03000 	mov	r3, #0
    4fd8:	e1a06003 	mov	r6, r3
    4fdc:	e7921103 	ldr	r1, [r2, r3, lsl #2]
    4fe0:	e3510000 	cmp	r1, #0
    4fe4:	0a000005 	beq	5000 <_reclaim_reent+0x54>
    4fe8:	e5914000 	ldr	r4, [r1]
    4fec:	e1a00005 	mov	r0, r5
    4ff0:	ebffff48 	bl	4d18 <_free_r>
    4ff4:	e2541000 	subs	r1, r4, #0
    4ff8:	1afffffa 	bne	4fe8 <_reclaim_reent+0x3c>
    4ffc:	e595204c 	ldr	r2, [r5, #76]	; 0x4c
    5000:	e2866001 	add	r6, r6, #1
    5004:	e3560020 	cmp	r6, #32
    5008:	e1a03006 	mov	r3, r6
    500c:	1afffff2 	bne	4fdc <_reclaim_reent+0x30>
    5010:	e1a00005 	mov	r0, r5
    5014:	e1a01002 	mov	r1, r2
    5018:	ebffff3e 	bl	4d18 <_free_r>
    501c:	e5951040 	ldr	r1, [r5, #64]	; 0x40
    5020:	e3510000 	cmp	r1, #0
    5024:	0a000001 	beq	5030 <_reclaim_reent+0x84>
    5028:	e1a00005 	mov	r0, r5
    502c:	ebffff39 	bl	4d18 <_free_r>
    5030:	e5951148 	ldr	r1, [r5, #328]	; 0x148
    5034:	e3510000 	cmp	r1, #0
    5038:	0a000008 	beq	5060 <_reclaim_reent+0xb4>
    503c:	e2856f53 	add	r6, r5, #332	; 0x14c
    5040:	e1510006 	cmp	r1, r6
    5044:	0a000005 	beq	5060 <_reclaim_reent+0xb4>
    5048:	e5914000 	ldr	r4, [r1]
    504c:	e1a00005 	mov	r0, r5
    5050:	ebffff30 	bl	4d18 <_free_r>
    5054:	e1560004 	cmp	r6, r4
    5058:	e1a01004 	mov	r1, r4
    505c:	1afffff9 	bne	5048 <_reclaim_reent+0x9c>
    5060:	e5951054 	ldr	r1, [r5, #84]	; 0x54
    5064:	e3510000 	cmp	r1, #0
    5068:	0a000001 	beq	5074 <_reclaim_reent+0xc8>
    506c:	e1a00005 	mov	r0, r5
    5070:	ebffff28 	bl	4d18 <_free_r>
    5074:	e5953038 	ldr	r3, [r5, #56]	; 0x38
    5078:	e3530000 	cmp	r3, #0
    507c:	08bd8070 	popeq	{r4, r5, r6, pc}
    5080:	e595303c 	ldr	r3, [r5, #60]	; 0x3c
    5084:	e1a00005 	mov	r0, r5
    5088:	e12fff33 	blx	r3
    508c:	e59512e0 	ldr	r1, [r5, #736]	; 0x2e0
    5090:	e3510000 	cmp	r1, #0
    5094:	08bd8070 	popeq	{r4, r5, r6, pc}
    5098:	e1a00005 	mov	r0, r5
    509c:	e8bd4070 	pop	{r4, r5, r6, lr}
    50a0:	eaffffb6 	b	4f80 <cleanup_glue>

000050a4 <_wrapup_reent>:
    50a4:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    50a8:	e2507000 	subs	r7, r0, #0
    50ac:	030034a8 	movweq	r3, #1192	; 0x4a8
    50b0:	03403000 	movteq	r3, #0
    50b4:	05937000 	ldreq	r7, [r3]
    50b8:	e5976148 	ldr	r6, [r7, #328]	; 0x148
    50bc:	e3560000 	cmp	r6, #0
    50c0:	0a00000c 	beq	50f8 <_wrapup_reent+0x54>
    50c4:	e5965004 	ldr	r5, [r6, #4]
    50c8:	e2554001 	subs	r4, r5, #1
    50cc:	52855002 	addpl	r5, r5, #2
    50d0:	50865105 	addpl	r5, r6, r5, lsl #2
    50d4:	4a000004 	bmi	50ec <_wrapup_reent+0x48>
    50d8:	e5353004 	ldr	r3, [r5, #-4]!
    50dc:	e2444001 	sub	r4, r4, #1
    50e0:	e12fff33 	blx	r3
    50e4:	e3740001 	cmn	r4, #1
    50e8:	1afffffa 	bne	50d8 <_wrapup_reent+0x34>
    50ec:	e5966000 	ldr	r6, [r6]
    50f0:	e3560000 	cmp	r6, #0
    50f4:	1afffff2 	bne	50c4 <_wrapup_reent+0x20>
    50f8:	e597303c 	ldr	r3, [r7, #60]	; 0x3c
    50fc:	e3530000 	cmp	r3, #0
    5100:	08bd80f8 	popeq	{r3, r4, r5, r6, r7, pc}
    5104:	e1a00007 	mov	r0, r7
    5108:	e12fff33 	blx	r3
    510c:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

00005110 <XDcfg_CfgInitialize>:
    5110:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    5114:	e24dd014 	sub	sp, sp, #20
    5118:	e58d000c 	str	r0, [sp, #12]
    511c:	e58d1008 	str	r1, [sp, #8]
    5120:	e58d2004 	str	r2, [sp, #4]
    5124:	e59d300c 	ldr	r3, [sp, #12]
    5128:	e593200c 	ldr	r2, [r3, #12]
    512c:	e3023222 	movw	r3, #8738	; 0x2222
    5130:	e3423222 	movt	r3, #8738	; 0x2222
    5134:	e1520003 	cmp	r2, r3
    5138:	1a000001 	bne	5144 <XDcfg_CfgInitialize+0x34>
    513c:	e3a03005 	mov	r3, #5
    5140:	ea000015 	b	519c <XDcfg_CfgInitialize+0x8c>
    5144:	e59d3008 	ldr	r3, [sp, #8]
    5148:	e1d320b0 	ldrh	r2, [r3]
    514c:	e59d300c 	ldr	r3, [sp, #12]
    5150:	e1c320b0 	strh	r2, [r3]
    5154:	e59d300c 	ldr	r3, [sp, #12]
    5158:	e59d2004 	ldr	r2, [sp, #4]
    515c:	e5832004 	str	r2, [r3, #4]
    5160:	e59d300c 	ldr	r3, [sp, #12]
    5164:	e3a02000 	mov	r2, #0
    5168:	e583200c 	str	r2, [r3, #12]
    516c:	e59d300c 	ldr	r3, [sp, #12]
    5170:	e5933004 	ldr	r3, [r3, #4]
    5174:	e2833034 	add	r3, r3, #52	; 0x34
    5178:	e1a00003 	mov	r0, r3
    517c:	e30d1f0d 	movw	r1, #57101	; 0xdf0d
    5180:	e347157b 	movt	r1, #30075	; 0x757b
    5184:	eb0003dc 	bl	60fc <_Z9Xil_Out32mm>
    5188:	e59d200c 	ldr	r2, [sp, #12]
    518c:	e3013111 	movw	r3, #4369	; 0x1111
    5190:	e3413111 	movt	r3, #4369	; 0x1111
    5194:	e5823008 	str	r3, [r2, #8]
    5198:	e3a03000 	mov	r3, #0
    519c:	e1a00003 	mov	r0, r3
    51a0:	e28dd014 	add	sp, sp, #20
    51a4:	e8bd8000 	ldmfd	sp!, {pc}

000051a8 <XDcfg_EnablePCAP>:
    51a8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    51ac:	e24dd014 	sub	sp, sp, #20
    51b0:	e58d0004 	str	r0, [sp, #4]
    51b4:	e59d3004 	ldr	r3, [sp, #4]
    51b8:	e5933004 	ldr	r3, [r3, #4]
    51bc:	e1a00003 	mov	r0, r3
    51c0:	eb0003b4 	bl	6098 <_Z8Xil_In32m>
    51c4:	e58d000c 	str	r0, [sp, #12]
    51c8:	e59d3004 	ldr	r3, [sp, #4]
    51cc:	e5932004 	ldr	r2, [r3, #4]
    51d0:	e59d300c 	ldr	r3, [sp, #12]
    51d4:	e3833301 	orr	r3, r3, #67108864	; 0x4000000
    51d8:	e1a00002 	mov	r0, r2
    51dc:	e1a01003 	mov	r1, r3
    51e0:	eb0003c5 	bl	60fc <_Z9Xil_Out32mm>
    51e4:	e28dd014 	add	sp, sp, #20
    51e8:	e8bd8000 	ldmfd	sp!, {pc}

000051ec <XDcfg_DisablePCAP>:
    51ec:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    51f0:	e24dd014 	sub	sp, sp, #20
    51f4:	e58d0004 	str	r0, [sp, #4]
    51f8:	e59d3004 	ldr	r3, [sp, #4]
    51fc:	e5933004 	ldr	r3, [r3, #4]
    5200:	e1a00003 	mov	r0, r3
    5204:	eb0003a3 	bl	6098 <_Z8Xil_In32m>
    5208:	e58d000c 	str	r0, [sp, #12]
    520c:	e59d3004 	ldr	r3, [sp, #4]
    5210:	e5932004 	ldr	r2, [r3, #4]
    5214:	e59d300c 	ldr	r3, [sp, #12]
    5218:	e3c33301 	bic	r3, r3, #67108864	; 0x4000000
    521c:	e1a00002 	mov	r0, r2
    5220:	e1a01003 	mov	r1, r3
    5224:	eb0003b4 	bl	60fc <_Z9Xil_Out32mm>
    5228:	e28dd014 	add	sp, sp, #20
    522c:	e8bd8000 	ldmfd	sp!, {pc}

00005230 <XDcfg_SetControlRegister>:
    5230:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    5234:	e24dd014 	sub	sp, sp, #20
    5238:	e58d0004 	str	r0, [sp, #4]
    523c:	e58d1000 	str	r1, [sp]
    5240:	e59d3004 	ldr	r3, [sp, #4]
    5244:	e5933004 	ldr	r3, [r3, #4]
    5248:	e1a00003 	mov	r0, r3
    524c:	eb000391 	bl	6098 <_Z8Xil_In32m>
    5250:	e58d000c 	str	r0, [sp, #12]
    5254:	e59d3004 	ldr	r3, [sp, #4]
    5258:	e5932004 	ldr	r2, [r3, #4]
    525c:	e59d100c 	ldr	r1, [sp, #12]
    5260:	e59d3000 	ldr	r3, [sp]
    5264:	e1813003 	orr	r3, r1, r3
    5268:	e1a00002 	mov	r0, r2
    526c:	e1a01003 	mov	r1, r3
    5270:	eb0003a1 	bl	60fc <_Z9Xil_Out32mm>
    5274:	e28dd014 	add	sp, sp, #20
    5278:	e8bd8000 	ldmfd	sp!, {pc}

0000527c <XDcfg_GetControlRegister>:
    527c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    5280:	e24dd00c 	sub	sp, sp, #12
    5284:	e58d0004 	str	r0, [sp, #4]
    5288:	e59d3004 	ldr	r3, [sp, #4]
    528c:	e5933004 	ldr	r3, [r3, #4]
    5290:	e1a00003 	mov	r0, r3
    5294:	eb00037f 	bl	6098 <_Z8Xil_In32m>
    5298:	e1a03000 	mov	r3, r0
    529c:	e1a00003 	mov	r0, r3
    52a0:	e28dd00c 	add	sp, sp, #12
    52a4:	e8bd8000 	ldmfd	sp!, {pc}

000052a8 <XDcfg_SetLockRegister>:
    52a8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    52ac:	e24dd00c 	sub	sp, sp, #12
    52b0:	e58d0004 	str	r0, [sp, #4]
    52b4:	e58d1000 	str	r1, [sp]
    52b8:	e59d3004 	ldr	r3, [sp, #4]
    52bc:	e5933004 	ldr	r3, [r3, #4]
    52c0:	e2833004 	add	r3, r3, #4
    52c4:	e1a00003 	mov	r0, r3
    52c8:	e59d1000 	ldr	r1, [sp]
    52cc:	eb00038a 	bl	60fc <_Z9Xil_Out32mm>
    52d0:	e28dd00c 	add	sp, sp, #12
    52d4:	e8bd8000 	ldmfd	sp!, {pc}

000052d8 <XDcfg_GetLockRegister>:
    52d8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    52dc:	e24dd00c 	sub	sp, sp, #12
    52e0:	e58d0004 	str	r0, [sp, #4]
    52e4:	e59d3004 	ldr	r3, [sp, #4]
    52e8:	e5933004 	ldr	r3, [r3, #4]
    52ec:	e2833004 	add	r3, r3, #4
    52f0:	e1a00003 	mov	r0, r3
    52f4:	eb000367 	bl	6098 <_Z8Xil_In32m>
    52f8:	e1a03000 	mov	r3, r0
    52fc:	e1a00003 	mov	r0, r3
    5300:	e28dd00c 	add	sp, sp, #12
    5304:	e8bd8000 	ldmfd	sp!, {pc}

00005308 <XDcfg_SetConfigRegister>:
    5308:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    530c:	e24dd00c 	sub	sp, sp, #12
    5310:	e58d0004 	str	r0, [sp, #4]
    5314:	e58d1000 	str	r1, [sp]
    5318:	e59d3004 	ldr	r3, [sp, #4]
    531c:	e5933004 	ldr	r3, [r3, #4]
    5320:	e2833008 	add	r3, r3, #8
    5324:	e1a00003 	mov	r0, r3
    5328:	e59d1000 	ldr	r1, [sp]
    532c:	eb000372 	bl	60fc <_Z9Xil_Out32mm>
    5330:	e28dd00c 	add	sp, sp, #12
    5334:	e8bd8000 	ldmfd	sp!, {pc}

00005338 <XDcfg_GetConfigRegister>:
    5338:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    533c:	e24dd00c 	sub	sp, sp, #12
    5340:	e58d0004 	str	r0, [sp, #4]
    5344:	e59d3004 	ldr	r3, [sp, #4]
    5348:	e5933004 	ldr	r3, [r3, #4]
    534c:	e2833008 	add	r3, r3, #8
    5350:	e1a00003 	mov	r0, r3
    5354:	eb00034f 	bl	6098 <_Z8Xil_In32m>
    5358:	e1a03000 	mov	r3, r0
    535c:	e1a00003 	mov	r0, r3
    5360:	e28dd00c 	add	sp, sp, #12
    5364:	e8bd8000 	ldmfd	sp!, {pc}

00005368 <XDcfg_SetStatusRegister>:
    5368:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    536c:	e24dd00c 	sub	sp, sp, #12
    5370:	e58d0004 	str	r0, [sp, #4]
    5374:	e58d1000 	str	r1, [sp]
    5378:	e59d3004 	ldr	r3, [sp, #4]
    537c:	e5933004 	ldr	r3, [r3, #4]
    5380:	e2833014 	add	r3, r3, #20
    5384:	e1a00003 	mov	r0, r3
    5388:	e59d1000 	ldr	r1, [sp]
    538c:	eb00035a 	bl	60fc <_Z9Xil_Out32mm>
    5390:	e28dd00c 	add	sp, sp, #12
    5394:	e8bd8000 	ldmfd	sp!, {pc}

00005398 <XDcfg_GetStatusRegister>:
    5398:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    539c:	e24dd00c 	sub	sp, sp, #12
    53a0:	e58d0004 	str	r0, [sp, #4]
    53a4:	e59d3004 	ldr	r3, [sp, #4]
    53a8:	e5933004 	ldr	r3, [r3, #4]
    53ac:	e2833014 	add	r3, r3, #20
    53b0:	e1a00003 	mov	r0, r3
    53b4:	eb000337 	bl	6098 <_Z8Xil_In32m>
    53b8:	e1a03000 	mov	r3, r0
    53bc:	e1a00003 	mov	r0, r3
    53c0:	e28dd00c 	add	sp, sp, #12
    53c4:	e8bd8000 	ldmfd	sp!, {pc}

000053c8 <XDcfg_SetRomShadowRegister>:
    53c8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    53cc:	e24dd00c 	sub	sp, sp, #12
    53d0:	e58d0004 	str	r0, [sp, #4]
    53d4:	e58d1000 	str	r1, [sp]
    53d8:	e59d3004 	ldr	r3, [sp, #4]
    53dc:	e5933004 	ldr	r3, [r3, #4]
    53e0:	e2833028 	add	r3, r3, #40	; 0x28
    53e4:	e1a00003 	mov	r0, r3
    53e8:	e59d1000 	ldr	r1, [sp]
    53ec:	eb000342 	bl	60fc <_Z9Xil_Out32mm>
    53f0:	e28dd00c 	add	sp, sp, #12
    53f4:	e8bd8000 	ldmfd	sp!, {pc}

000053f8 <XDcfg_GetSoftwareIdRegister>:
    53f8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    53fc:	e24dd00c 	sub	sp, sp, #12
    5400:	e58d0004 	str	r0, [sp, #4]
    5404:	e59d3004 	ldr	r3, [sp, #4]
    5408:	e5933004 	ldr	r3, [r3, #4]
    540c:	e2833030 	add	r3, r3, #48	; 0x30
    5410:	e1a00003 	mov	r0, r3
    5414:	eb00031f 	bl	6098 <_Z8Xil_In32m>
    5418:	e1a03000 	mov	r3, r0
    541c:	e1a00003 	mov	r0, r3
    5420:	e28dd00c 	add	sp, sp, #12
    5424:	e8bd8000 	ldmfd	sp!, {pc}

00005428 <XDcfg_SetMiscControlRegister>:
    5428:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    542c:	e24dd014 	sub	sp, sp, #20
    5430:	e58d0004 	str	r0, [sp, #4]
    5434:	e58d1000 	str	r1, [sp]
    5438:	e59d3004 	ldr	r3, [sp, #4]
    543c:	e5933004 	ldr	r3, [r3, #4]
    5440:	e2833080 	add	r3, r3, #128	; 0x80
    5444:	e1a00003 	mov	r0, r3
    5448:	eb000312 	bl	6098 <_Z8Xil_In32m>
    544c:	e58d000c 	str	r0, [sp, #12]
    5450:	e59d3004 	ldr	r3, [sp, #4]
    5454:	e5933004 	ldr	r3, [r3, #4]
    5458:	e2832080 	add	r2, r3, #128	; 0x80
    545c:	e59d100c 	ldr	r1, [sp, #12]
    5460:	e59d3000 	ldr	r3, [sp]
    5464:	e1813003 	orr	r3, r1, r3
    5468:	e1a00002 	mov	r0, r2
    546c:	e1a01003 	mov	r1, r3
    5470:	eb000321 	bl	60fc <_Z9Xil_Out32mm>
    5474:	e28dd014 	add	sp, sp, #20
    5478:	e8bd8000 	ldmfd	sp!, {pc}

0000547c <XDcfg_GetMiscControlRegister>:
    547c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    5480:	e24dd00c 	sub	sp, sp, #12
    5484:	e58d0004 	str	r0, [sp, #4]
    5488:	e59d3004 	ldr	r3, [sp, #4]
    548c:	e5933004 	ldr	r3, [r3, #4]
    5490:	e2833080 	add	r3, r3, #128	; 0x80
    5494:	e1a00003 	mov	r0, r3
    5498:	eb0002fe 	bl	6098 <_Z8Xil_In32m>
    549c:	e1a03000 	mov	r3, r0
    54a0:	e1a00003 	mov	r0, r3
    54a4:	e28dd00c 	add	sp, sp, #12
    54a8:	e8bd8000 	ldmfd	sp!, {pc}

000054ac <XDcfg_IsDmaBusy>:
    54ac:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    54b0:	e24dd014 	sub	sp, sp, #20
    54b4:	e58d0004 	str	r0, [sp, #4]
    54b8:	e59d3004 	ldr	r3, [sp, #4]
    54bc:	e5933004 	ldr	r3, [r3, #4]
    54c0:	e2833014 	add	r3, r3, #20
    54c4:	e1a00003 	mov	r0, r3
    54c8:	eb0002f2 	bl	6098 <_Z8Xil_In32m>
    54cc:	e58d000c 	str	r0, [sp, #12]
    54d0:	e59d300c 	ldr	r3, [sp, #12]
    54d4:	e3530000 	cmp	r3, #0
    54d8:	aa000001 	bge	54e4 <XDcfg_IsDmaBusy+0x38>
    54dc:	e3a03000 	mov	r3, #0
    54e0:	ea000000 	b	54e8 <XDcfg_IsDmaBusy+0x3c>
    54e4:	e3a03001 	mov	r3, #1
    54e8:	e1a00003 	mov	r0, r3
    54ec:	e28dd014 	add	sp, sp, #20
    54f0:	e8bd8000 	ldmfd	sp!, {pc}

000054f4 <XDcfg_InitiateDma>:
    54f4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    54f8:	e24dd014 	sub	sp, sp, #20
    54fc:	e58d000c 	str	r0, [sp, #12]
    5500:	e58d1008 	str	r1, [sp, #8]
    5504:	e58d2004 	str	r2, [sp, #4]
    5508:	e58d3000 	str	r3, [sp]
    550c:	e59d300c 	ldr	r3, [sp, #12]
    5510:	e5933004 	ldr	r3, [r3, #4]
    5514:	e2833018 	add	r3, r3, #24
    5518:	e1a00003 	mov	r0, r3
    551c:	e59d1008 	ldr	r1, [sp, #8]
    5520:	eb0002f5 	bl	60fc <_Z9Xil_Out32mm>
    5524:	e59d300c 	ldr	r3, [sp, #12]
    5528:	e5933004 	ldr	r3, [r3, #4]
    552c:	e283301c 	add	r3, r3, #28
    5530:	e1a00003 	mov	r0, r3
    5534:	e59d1004 	ldr	r1, [sp, #4]
    5538:	eb0002ef 	bl	60fc <_Z9Xil_Out32mm>
    553c:	e59d300c 	ldr	r3, [sp, #12]
    5540:	e5933004 	ldr	r3, [r3, #4]
    5544:	e2833020 	add	r3, r3, #32
    5548:	e1a00003 	mov	r0, r3
    554c:	e59d1000 	ldr	r1, [sp]
    5550:	eb0002e9 	bl	60fc <_Z9Xil_Out32mm>
    5554:	e59d300c 	ldr	r3, [sp, #12]
    5558:	e5933004 	ldr	r3, [r3, #4]
    555c:	e2833024 	add	r3, r3, #36	; 0x24
    5560:	e1a00003 	mov	r0, r3
    5564:	e59d1018 	ldr	r1, [sp, #24]
    5568:	eb0002e3 	bl	60fc <_Z9Xil_Out32mm>
    556c:	e28dd014 	add	sp, sp, #20
    5570:	e8bd8000 	ldmfd	sp!, {pc}

00005574 <_ZL18XDcfg_PcapReadbackP5XDcfgmmmm>:
    5574:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    5578:	e24dd024 	sub	sp, sp, #36	; 0x24
    557c:	e58d0014 	str	r0, [sp, #20]
    5580:	e58d1010 	str	r1, [sp, #16]
    5584:	e58d200c 	str	r2, [sp, #12]
    5588:	e58d3008 	str	r3, [sp, #8]
    558c:	e3a03000 	mov	r3, #0
    5590:	e58d3000 	str	r3, [sp]
    5594:	e59d0014 	ldr	r0, [sp, #20]
    5598:	e59d1010 	ldr	r1, [sp, #16]
    559c:	e3e02000 	mvn	r2, #0
    55a0:	e59d300c 	ldr	r3, [sp, #12]
    55a4:	ebffffd2 	bl	54f4 <XDcfg_InitiateDma>
    55a8:	e59d0014 	ldr	r0, [sp, #20]
    55ac:	eb000125 	bl	5a48 <XDcfg_IntrGetEnabled>
    55b0:	e58d001c 	str	r0, [sp, #28]
    55b4:	e59d0014 	ldr	r0, [sp, #20]
    55b8:	e30f18ef 	movw	r1, #63727	; 0xf8ef
    55bc:	e34010f7 	movt	r1, #247	; 0xf7
    55c0:	eb000107 	bl	59e4 <XDcfg_IntrDisable>
    55c4:	e1a00000 	nop			; (mov r0, r0)
    55c8:	e59d3014 	ldr	r3, [sp, #20]
    55cc:	e5933004 	ldr	r3, [r3, #4]
    55d0:	e283300c 	add	r3, r3, #12
    55d4:	e1a00003 	mov	r0, r3
    55d8:	eb0002ae 	bl	6098 <_Z8Xil_In32m>
    55dc:	e1a03000 	mov	r3, r0
    55e0:	e2033a01 	and	r3, r3, #4096	; 0x1000
    55e4:	e3530000 	cmp	r3, #0
    55e8:	03a03000 	moveq	r3, #0
    55ec:	13a03001 	movne	r3, #1
    55f0:	e6ef3073 	uxtb	r3, r3
    55f4:	e3530000 	cmp	r3, #0
    55f8:	1afffff2 	bne	55c8 <_ZL18XDcfg_PcapReadbackP5XDcfgmmmm+0x54>
    55fc:	e59d0014 	ldr	r0, [sp, #20]
    5600:	e59d101c 	ldr	r1, [sp, #28]
    5604:	eb0000dc 	bl	597c <XDcfg_IntrEnable>
    5608:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
    560c:	e58d3000 	str	r3, [sp]
    5610:	e59d0014 	ldr	r0, [sp, #20]
    5614:	e3e01000 	mvn	r1, #0
    5618:	e59d2008 	ldr	r2, [sp, #8]
    561c:	e3a03000 	mov	r3, #0
    5620:	ebffffb3 	bl	54f4 <XDcfg_InitiateDma>
    5624:	e3a03000 	mov	r3, #0
    5628:	e1a00003 	mov	r0, r3
    562c:	e28dd024 	add	sp, sp, #36	; 0x24
    5630:	e8bd8000 	ldmfd	sp!, {pc}

00005634 <XDcfg_Transfer>:
    5634:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    5638:	e24dd024 	sub	sp, sp, #36	; 0x24
    563c:	e58d0014 	str	r0, [sp, #20]
    5640:	e58d1010 	str	r1, [sp, #16]
    5644:	e58d200c 	str	r2, [sp, #12]
    5648:	e58d3008 	str	r3, [sp, #8]
    564c:	e59d0014 	ldr	r0, [sp, #20]
    5650:	ebffff95 	bl	54ac <XDcfg_IsDmaBusy>
    5654:	e1a03000 	mov	r3, r0
    5658:	e3530000 	cmp	r3, #0
    565c:	13a03000 	movne	r3, #0
    5660:	03a03001 	moveq	r3, #1
    5664:	e6ef3073 	uxtb	r3, r3
    5668:	e3530000 	cmp	r3, #0
    566c:	0a000001 	beq	5678 <XDcfg_Transfer+0x44>
    5670:	e3a03015 	mov	r3, #21
    5674:	ea0000bd 	b	5970 <XDcfg_Transfer+0x33c>
    5678:	e59d3014 	ldr	r3, [sp, #20]
    567c:	e5933004 	ldr	r3, [r3, #4]
    5680:	e2833014 	add	r3, r3, #20
    5684:	e1a00003 	mov	r0, r3
    5688:	eb000282 	bl	6098 <_Z8Xil_In32m>
    568c:	e1a03000 	mov	r3, r0
    5690:	e2033010 	and	r3, r3, #16
    5694:	e3530000 	cmp	r3, #0
    5698:	13a03000 	movne	r3, #0
    569c:	03a03001 	moveq	r3, #1
    56a0:	e6ef3073 	uxtb	r3, r3
    56a4:	e3530000 	cmp	r3, #0
    56a8:	0a000004 	beq	56c0 <XDcfg_Transfer+0x8c>
    56ac:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
    56b0:	e3530005 	cmp	r3, #5
    56b4:	0a000001 	beq	56c0 <XDcfg_Transfer+0x8c>
    56b8:	e3a03001 	mov	r3, #1
    56bc:	ea0000ab 	b	5970 <XDcfg_Transfer+0x33c>
    56c0:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
    56c4:	e3530002 	cmp	r3, #2
    56c8:	0a000002 	beq	56d8 <XDcfg_Transfer+0xa4>
    56cc:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
    56d0:	e3530001 	cmp	r3, #1
    56d4:	1a000033 	bne	57a8 <XDcfg_Transfer+0x174>
    56d8:	e59d3010 	ldr	r3, [sp, #16]
    56dc:	e3530000 	cmp	r3, #0
    56e0:	0a000002 	beq	56f0 <XDcfg_Transfer+0xbc>
    56e4:	e59d300c 	ldr	r3, [sp, #12]
    56e8:	e3530000 	cmp	r3, #0
    56ec:	1a000001 	bne	56f8 <XDcfg_Transfer+0xc4>
    56f0:	e3a0300f 	mov	r3, #15
    56f4:	ea00009d 	b	5970 <XDcfg_Transfer+0x33c>
    56f8:	e59d3014 	ldr	r3, [sp, #20]
    56fc:	e5933004 	ldr	r3, [r3, #4]
    5700:	e2833080 	add	r3, r3, #128	; 0x80
    5704:	e1a00003 	mov	r0, r3
    5708:	eb000262 	bl	6098 <_Z8Xil_In32m>
    570c:	e58d001c 	str	r0, [sp, #28]
    5710:	e59d3014 	ldr	r3, [sp, #20]
    5714:	e5933004 	ldr	r3, [r3, #4]
    5718:	e2832080 	add	r2, r3, #128	; 0x80
    571c:	e59d301c 	ldr	r3, [sp, #28]
    5720:	e3c33010 	bic	r3, r3, #16
    5724:	e1a00002 	mov	r0, r2
    5728:	e1a01003 	mov	r1, r3
    572c:	eb000272 	bl	60fc <_Z9Xil_Out32mm>
    5730:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
    5734:	e3530001 	cmp	r3, #1
    5738:	1a00000b 	bne	576c <XDcfg_Transfer+0x138>
    573c:	e59d3014 	ldr	r3, [sp, #20]
    5740:	e5933004 	ldr	r3, [r3, #4]
    5744:	e1a00003 	mov	r0, r3
    5748:	eb000252 	bl	6098 <_Z8Xil_In32m>
    574c:	e58d001c 	str	r0, [sp, #28]
    5750:	e59d3014 	ldr	r3, [sp, #20]
    5754:	e5932004 	ldr	r2, [r3, #4]
    5758:	e59d301c 	ldr	r3, [sp, #28]
    575c:	e3c33402 	bic	r3, r3, #33554432	; 0x2000000
    5760:	e1a00002 	mov	r0, r2
    5764:	e1a01003 	mov	r1, r3
    5768:	eb000263 	bl	60fc <_Z9Xil_Out32mm>
    576c:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
    5770:	e3530002 	cmp	r3, #2
    5774:	1a000002 	bne	5784 <XDcfg_Transfer+0x150>
    5778:	e59d0014 	ldr	r0, [sp, #20]
    577c:	e3a01402 	mov	r1, #33554432	; 0x2000000
    5780:	ebfffeaa 	bl	5230 <XDcfg_SetControlRegister>
    5784:	e59d2010 	ldr	r2, [sp, #16]
    5788:	e59d3008 	ldr	r3, [sp, #8]
    578c:	e59d1028 	ldr	r1, [sp, #40]	; 0x28
    5790:	e58d1000 	str	r1, [sp]
    5794:	e59d0014 	ldr	r0, [sp, #20]
    5798:	e1a01002 	mov	r1, r2
    579c:	e1a02003 	mov	r2, r3
    57a0:	e59d300c 	ldr	r3, [sp, #12]
    57a4:	ebffff52 	bl	54f4 <XDcfg_InitiateDma>
    57a8:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
    57ac:	e3530003 	cmp	r3, #3
    57b0:	1a00001f 	bne	5834 <XDcfg_Transfer+0x200>
    57b4:	e59d3008 	ldr	r3, [sp, #8]
    57b8:	e3530000 	cmp	r3, #0
    57bc:	0a000002 	beq	57cc <XDcfg_Transfer+0x198>
    57c0:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
    57c4:	e3530000 	cmp	r3, #0
    57c8:	1a000001 	bne	57d4 <XDcfg_Transfer+0x1a0>
    57cc:	e3a0300f 	mov	r3, #15
    57d0:	ea000066 	b	5970 <XDcfg_Transfer+0x33c>
    57d4:	e59d3014 	ldr	r3, [sp, #20]
    57d8:	e5933004 	ldr	r3, [r3, #4]
    57dc:	e2833080 	add	r3, r3, #128	; 0x80
    57e0:	e1a00003 	mov	r0, r3
    57e4:	eb00022b 	bl	6098 <_Z8Xil_In32m>
    57e8:	e58d001c 	str	r0, [sp, #28]
    57ec:	e59d3014 	ldr	r3, [sp, #20]
    57f0:	e5933004 	ldr	r3, [r3, #4]
    57f4:	e2832080 	add	r2, r3, #128	; 0x80
    57f8:	e59d301c 	ldr	r3, [sp, #28]
    57fc:	e3c33010 	bic	r3, r3, #16
    5800:	e1a00002 	mov	r0, r2
    5804:	e1a01003 	mov	r1, r3
    5808:	eb00023b 	bl	60fc <_Z9Xil_Out32mm>
    580c:	e59d2010 	ldr	r2, [sp, #16]
    5810:	e59d3008 	ldr	r3, [sp, #8]
    5814:	e59d1028 	ldr	r1, [sp, #40]	; 0x28
    5818:	e58d1000 	str	r1, [sp]
    581c:	e59d0014 	ldr	r0, [sp, #20]
    5820:	e1a01002 	mov	r1, r2
    5824:	e59d200c 	ldr	r2, [sp, #12]
    5828:	ebffff51 	bl	5574 <_ZL18XDcfg_PcapReadbackP5XDcfgmmmm>
    582c:	e1a03000 	mov	r3, r0
    5830:	ea00004e 	b	5970 <XDcfg_Transfer+0x33c>
    5834:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
    5838:	e3530004 	cmp	r3, #4
    583c:	0a000002 	beq	584c <XDcfg_Transfer+0x218>
    5840:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
    5844:	e3530005 	cmp	r3, #5
    5848:	1a000047 	bne	596c <XDcfg_Transfer+0x338>
    584c:	e59d3010 	ldr	r3, [sp, #16]
    5850:	e3530000 	cmp	r3, #0
    5854:	0a000008 	beq	587c <XDcfg_Transfer+0x248>
    5858:	e59d300c 	ldr	r3, [sp, #12]
    585c:	e3530000 	cmp	r3, #0
    5860:	0a000005 	beq	587c <XDcfg_Transfer+0x248>
    5864:	e59d3008 	ldr	r3, [sp, #8]
    5868:	e3530000 	cmp	r3, #0
    586c:	0a000002 	beq	587c <XDcfg_Transfer+0x248>
    5870:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
    5874:	e3530000 	cmp	r3, #0
    5878:	1a000001 	bne	5884 <XDcfg_Transfer+0x250>
    587c:	e3a0300f 	mov	r3, #15
    5880:	ea00003a 	b	5970 <XDcfg_Transfer+0x33c>
    5884:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
    5888:	e3530005 	cmp	r3, #5
    588c:	1a000019 	bne	58f8 <XDcfg_Transfer+0x2c4>
    5890:	e59d3014 	ldr	r3, [sp, #20]
    5894:	e5933004 	ldr	r3, [r3, #4]
    5898:	e2833080 	add	r3, r3, #128	; 0x80
    589c:	e1a00003 	mov	r0, r3
    58a0:	eb0001fc 	bl	6098 <_Z8Xil_In32m>
    58a4:	e58d001c 	str	r0, [sp, #28]
    58a8:	e59d3014 	ldr	r3, [sp, #20]
    58ac:	e5933004 	ldr	r3, [r3, #4]
    58b0:	e2832080 	add	r2, r3, #128	; 0x80
    58b4:	e59d301c 	ldr	r3, [sp, #28]
    58b8:	e3833010 	orr	r3, r3, #16
    58bc:	e1a00002 	mov	r0, r2
    58c0:	e1a01003 	mov	r1, r3
    58c4:	eb00020c 	bl	60fc <_Z9Xil_Out32mm>
    58c8:	e59d3014 	ldr	r3, [sp, #20]
    58cc:	e5933004 	ldr	r3, [r3, #4]
    58d0:	e1a00003 	mov	r0, r3
    58d4:	eb0001ef 	bl	6098 <_Z8Xil_In32m>
    58d8:	e58d001c 	str	r0, [sp, #28]
    58dc:	e59d3014 	ldr	r3, [sp, #20]
    58e0:	e5932004 	ldr	r2, [r3, #4]
    58e4:	e59d301c 	ldr	r3, [sp, #28]
    58e8:	e3c33402 	bic	r3, r3, #33554432	; 0x2000000
    58ec:	e1a00002 	mov	r0, r2
    58f0:	e1a01003 	mov	r1, r3
    58f4:	eb000200 	bl	60fc <_Z9Xil_Out32mm>
    58f8:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
    58fc:	e3530004 	cmp	r3, #4
    5900:	1a000010 	bne	5948 <XDcfg_Transfer+0x314>
    5904:	e59d3014 	ldr	r3, [sp, #20]
    5908:	e5933004 	ldr	r3, [r3, #4]
    590c:	e2833080 	add	r3, r3, #128	; 0x80
    5910:	e1a00003 	mov	r0, r3
    5914:	eb0001df 	bl	6098 <_Z8Xil_In32m>
    5918:	e58d001c 	str	r0, [sp, #28]
    591c:	e59d3014 	ldr	r3, [sp, #20]
    5920:	e5933004 	ldr	r3, [r3, #4]
    5924:	e2832080 	add	r2, r3, #128	; 0x80
    5928:	e59d301c 	ldr	r3, [sp, #28]
    592c:	e3c33010 	bic	r3, r3, #16
    5930:	e1a00002 	mov	r0, r2
    5934:	e1a01003 	mov	r1, r3
    5938:	eb0001ef 	bl	60fc <_Z9Xil_Out32mm>
    593c:	e59d0014 	ldr	r0, [sp, #20]
    5940:	e3a01402 	mov	r1, #33554432	; 0x2000000
    5944:	ebfffe39 	bl	5230 <XDcfg_SetControlRegister>
    5948:	e59d2010 	ldr	r2, [sp, #16]
    594c:	e59d3008 	ldr	r3, [sp, #8]
    5950:	e59d1028 	ldr	r1, [sp, #40]	; 0x28
    5954:	e58d1000 	str	r1, [sp]
    5958:	e59d0014 	ldr	r0, [sp, #20]
    595c:	e1a01002 	mov	r1, r2
    5960:	e1a02003 	mov	r2, r3
    5964:	e59d300c 	ldr	r3, [sp, #12]
    5968:	ebfffee1 	bl	54f4 <XDcfg_InitiateDma>
    596c:	e3a03000 	mov	r3, #0
    5970:	e1a00003 	mov	r0, r3
    5974:	e28dd024 	add	sp, sp, #36	; 0x24
    5978:	e8bd8000 	ldmfd	sp!, {pc}

0000597c <XDcfg_IntrEnable>:
    597c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    5980:	e24dd014 	sub	sp, sp, #20
    5984:	e58d0004 	str	r0, [sp, #4]
    5988:	e58d1000 	str	r1, [sp]
    598c:	e59d3004 	ldr	r3, [sp, #4]
    5990:	e5933004 	ldr	r3, [r3, #4]
    5994:	e2833010 	add	r3, r3, #16
    5998:	e1a00003 	mov	r0, r3
    599c:	eb0001bd 	bl	6098 <_Z8Xil_In32m>
    59a0:	e58d000c 	str	r0, [sp, #12]
    59a4:	e59d2000 	ldr	r2, [sp]
    59a8:	e30f38ef 	movw	r3, #63727	; 0xf8ef
    59ac:	e34030f7 	movt	r3, #247	; 0xf7
    59b0:	e0023003 	and	r3, r2, r3
    59b4:	e1e03003 	mvn	r3, r3
    59b8:	e59d200c 	ldr	r2, [sp, #12]
    59bc:	e0023003 	and	r3, r2, r3
    59c0:	e58d300c 	str	r3, [sp, #12]
    59c4:	e59d3004 	ldr	r3, [sp, #4]
    59c8:	e5933004 	ldr	r3, [r3, #4]
    59cc:	e2833010 	add	r3, r3, #16
    59d0:	e1a00003 	mov	r0, r3
    59d4:	e59d100c 	ldr	r1, [sp, #12]
    59d8:	eb0001c7 	bl	60fc <_Z9Xil_Out32mm>
    59dc:	e28dd014 	add	sp, sp, #20
    59e0:	e8bd8000 	ldmfd	sp!, {pc}

000059e4 <XDcfg_IntrDisable>:
    59e4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    59e8:	e24dd014 	sub	sp, sp, #20
    59ec:	e58d0004 	str	r0, [sp, #4]
    59f0:	e58d1000 	str	r1, [sp]
    59f4:	e59d3004 	ldr	r3, [sp, #4]
    59f8:	e5933004 	ldr	r3, [r3, #4]
    59fc:	e2833010 	add	r3, r3, #16
    5a00:	e1a00003 	mov	r0, r3
    5a04:	eb0001a3 	bl	6098 <_Z8Xil_In32m>
    5a08:	e58d000c 	str	r0, [sp, #12]
    5a0c:	e59d2000 	ldr	r2, [sp]
    5a10:	e30f38ef 	movw	r3, #63727	; 0xf8ef
    5a14:	e34030f7 	movt	r3, #247	; 0xf7
    5a18:	e0023003 	and	r3, r2, r3
    5a1c:	e59d200c 	ldr	r2, [sp, #12]
    5a20:	e1823003 	orr	r3, r2, r3
    5a24:	e58d300c 	str	r3, [sp, #12]
    5a28:	e59d3004 	ldr	r3, [sp, #4]
    5a2c:	e5933004 	ldr	r3, [r3, #4]
    5a30:	e2833010 	add	r3, r3, #16
    5a34:	e1a00003 	mov	r0, r3
    5a38:	e59d100c 	ldr	r1, [sp, #12]
    5a3c:	eb0001ae 	bl	60fc <_Z9Xil_Out32mm>
    5a40:	e28dd014 	add	sp, sp, #20
    5a44:	e8bd8000 	ldmfd	sp!, {pc}

00005a48 <XDcfg_IntrGetEnabled>:
    5a48:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    5a4c:	e24dd00c 	sub	sp, sp, #12
    5a50:	e58d0004 	str	r0, [sp, #4]
    5a54:	e59d3004 	ldr	r3, [sp, #4]
    5a58:	e5933004 	ldr	r3, [r3, #4]
    5a5c:	e2833010 	add	r3, r3, #16
    5a60:	e1a00003 	mov	r0, r3
    5a64:	eb00018b 	bl	6098 <_Z8Xil_In32m>
    5a68:	e1a03000 	mov	r3, r0
    5a6c:	e1e03003 	mvn	r3, r3
    5a70:	e1a00003 	mov	r0, r3
    5a74:	e28dd00c 	add	sp, sp, #12
    5a78:	e8bd8000 	ldmfd	sp!, {pc}

00005a7c <XDcfg_IntrGetStatus>:
    5a7c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    5a80:	e24dd00c 	sub	sp, sp, #12
    5a84:	e58d0004 	str	r0, [sp, #4]
    5a88:	e59d3004 	ldr	r3, [sp, #4]
    5a8c:	e5933004 	ldr	r3, [r3, #4]
    5a90:	e283300c 	add	r3, r3, #12
    5a94:	e1a00003 	mov	r0, r3
    5a98:	eb00017e 	bl	6098 <_Z8Xil_In32m>
    5a9c:	e1a03000 	mov	r3, r0
    5aa0:	e1a00003 	mov	r0, r3
    5aa4:	e28dd00c 	add	sp, sp, #12
    5aa8:	e8bd8000 	ldmfd	sp!, {pc}

00005aac <XDcfg_IntrClear>:
    5aac:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    5ab0:	e24dd00c 	sub	sp, sp, #12
    5ab4:	e58d0004 	str	r0, [sp, #4]
    5ab8:	e58d1000 	str	r1, [sp]
    5abc:	e59d3004 	ldr	r3, [sp, #4]
    5ac0:	e5933004 	ldr	r3, [r3, #4]
    5ac4:	e283300c 	add	r3, r3, #12
    5ac8:	e1a00003 	mov	r0, r3
    5acc:	e59d1000 	ldr	r1, [sp]
    5ad0:	eb000189 	bl	60fc <_Z9Xil_Out32mm>
    5ad4:	e28dd00c 	add	sp, sp, #12
    5ad8:	e8bd8000 	ldmfd	sp!, {pc}

00005adc <XDcfg_InterruptHandler>:
    5adc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    5ae0:	e24dd014 	sub	sp, sp, #20
    5ae4:	e58d0004 	str	r0, [sp, #4]
    5ae8:	e59d3004 	ldr	r3, [sp, #4]
    5aec:	e5933004 	ldr	r3, [r3, #4]
    5af0:	e283300c 	add	r3, r3, #12
    5af4:	e1a00003 	mov	r0, r3
    5af8:	eb000166 	bl	6098 <_Z8Xil_In32m>
    5afc:	e58d000c 	str	r0, [sp, #12]
    5b00:	e59d3004 	ldr	r3, [sp, #4]
    5b04:	e5933004 	ldr	r3, [r3, #4]
    5b08:	e283300c 	add	r3, r3, #12
    5b0c:	e1a00003 	mov	r0, r3
    5b10:	e59d100c 	ldr	r1, [sp, #12]
    5b14:	eb000178 	bl	60fc <_Z9Xil_Out32mm>
    5b18:	e59d3004 	ldr	r3, [sp, #4]
    5b1c:	e5933010 	ldr	r3, [r3, #16]
    5b20:	e59d2004 	ldr	r2, [sp, #4]
    5b24:	e5922014 	ldr	r2, [r2, #20]
    5b28:	e1a00002 	mov	r0, r2
    5b2c:	e59d100c 	ldr	r1, [sp, #12]
    5b30:	e12fff33 	blx	r3
    5b34:	e28dd014 	add	sp, sp, #20
    5b38:	e8bd8000 	ldmfd	sp!, {pc}

00005b3c <XDcfg_SetHandler>:
    5b3c:	e24dd010 	sub	sp, sp, #16
    5b40:	e58d000c 	str	r0, [sp, #12]
    5b44:	e58d1008 	str	r1, [sp, #8]
    5b48:	e58d2004 	str	r2, [sp, #4]
    5b4c:	e59d2008 	ldr	r2, [sp, #8]
    5b50:	e59d300c 	ldr	r3, [sp, #12]
    5b54:	e5832010 	str	r2, [r3, #16]
    5b58:	e59d300c 	ldr	r3, [sp, #12]
    5b5c:	e59d2004 	ldr	r2, [sp, #4]
    5b60:	e5832014 	str	r2, [r3, #20]
    5b64:	e28dd010 	add	sp, sp, #16
    5b68:	e12fff1e 	bx	lr

00005b6c <XDcfg_SelfTest>:
    5b6c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    5b70:	e24dd01c 	sub	sp, sp, #28
    5b74:	e58d0004 	str	r0, [sp, #4]
    5b78:	e3a03000 	mov	r3, #0
    5b7c:	e58d3014 	str	r3, [sp, #20]
    5b80:	e59d0004 	ldr	r0, [sp, #4]
    5b84:	ebfffdbc 	bl	527c <XDcfg_GetControlRegister>
    5b88:	e58d0010 	str	r0, [sp, #16]
    5b8c:	e59d0004 	ldr	r0, [sp, #4]
    5b90:	e3a01010 	mov	r1, #16
    5b94:	ebfffda5 	bl	5230 <XDcfg_SetControlRegister>
    5b98:	e59d0004 	ldr	r0, [sp, #4]
    5b9c:	ebfffdb6 	bl	527c <XDcfg_GetControlRegister>
    5ba0:	e58d000c 	str	r0, [sp, #12]
    5ba4:	e59d300c 	ldr	r3, [sp, #12]
    5ba8:	e2033010 	and	r3, r3, #16
    5bac:	e3530000 	cmp	r3, #0
    5bb0:	1a000001 	bne	5bbc <XDcfg_SelfTest+0x50>
    5bb4:	e3a03001 	mov	r3, #1
    5bb8:	e58d3014 	str	r3, [sp, #20]
    5bbc:	e59d0004 	ldr	r0, [sp, #4]
    5bc0:	e59d1010 	ldr	r1, [sp, #16]
    5bc4:	ebfffd99 	bl	5230 <XDcfg_SetControlRegister>
    5bc8:	e59d3014 	ldr	r3, [sp, #20]
    5bcc:	e1a00003 	mov	r0, r3
    5bd0:	e28dd01c 	add	sp, sp, #28
    5bd4:	e8bd8000 	ldmfd	sp!, {pc}

00005bd8 <XDcfg_LookupConfig>:
    5bd8:	e24dd010 	sub	sp, sp, #16
    5bdc:	e1a03000 	mov	r3, r0
    5be0:	e1cd30b6 	strh	r3, [sp, #6]
    5be4:	e3a03000 	mov	r3, #0
    5be8:	e58d300c 	str	r3, [sp, #12]
    5bec:	e3a03000 	mov	r3, #0
    5bf0:	e58d3008 	str	r3, [sp, #8]
    5bf4:	ea000012 	b	5c44 <XDcfg_LookupConfig+0x6c>
    5bf8:	e3003078 	movw	r3, #120	; 0x78
    5bfc:	e3403000 	movt	r3, #0
    5c00:	e59d2008 	ldr	r2, [sp, #8]
    5c04:	e1a02182 	lsl	r2, r2, #3
    5c08:	e0833002 	add	r3, r3, r2
    5c0c:	e1d330b0 	ldrh	r3, [r3]
    5c10:	e1dd20b6 	ldrh	r2, [sp, #6]
    5c14:	e1520003 	cmp	r2, r3
    5c18:	1a000006 	bne	5c38 <XDcfg_LookupConfig+0x60>
    5c1c:	e59d3008 	ldr	r3, [sp, #8]
    5c20:	e1a02183 	lsl	r2, r3, #3
    5c24:	e3003078 	movw	r3, #120	; 0x78
    5c28:	e3403000 	movt	r3, #0
    5c2c:	e0823003 	add	r3, r2, r3
    5c30:	e58d300c 	str	r3, [sp, #12]
    5c34:	ea000009 	b	5c60 <XDcfg_LookupConfig+0x88>
    5c38:	e59d3008 	ldr	r3, [sp, #8]
    5c3c:	e2833001 	add	r3, r3, #1
    5c40:	e58d3008 	str	r3, [sp, #8]
    5c44:	e59d3008 	ldr	r3, [sp, #8]
    5c48:	e3530000 	cmp	r3, #0
    5c4c:	c3a03000 	movgt	r3, #0
    5c50:	d3a03001 	movle	r3, #1
    5c54:	e6ef3073 	uxtb	r3, r3
    5c58:	e3530000 	cmp	r3, #0
    5c5c:	1affffe5 	bne	5bf8 <XDcfg_LookupConfig+0x20>
    5c60:	e59d300c 	ldr	r3, [sp, #12]
    5c64:	e1a00003 	mov	r0, r3
    5c68:	e28dd010 	add	sp, sp, #16
    5c6c:	e12fff1e 	bx	lr

00005c70 <_Z16XDcfg_InitializeP5XDcfgt>:
    5c70:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    5c74:	e24dd014 	sub	sp, sp, #20
    5c78:	e58d0004 	str	r0, [sp, #4]
    5c7c:	e1a03001 	mov	r3, r1
    5c80:	e1cd30b2 	strh	r3, [sp, #2]
    5c84:	e1dd30b2 	ldrh	r3, [sp, #2]
    5c88:	e1a00003 	mov	r0, r3
    5c8c:	ebffffd1 	bl	5bd8 <XDcfg_LookupConfig>
    5c90:	e58d000c 	str	r0, [sp, #12]
    5c94:	e59d300c 	ldr	r3, [sp, #12]
    5c98:	e5933004 	ldr	r3, [r3, #4]
    5c9c:	e59d0004 	ldr	r0, [sp, #4]
    5ca0:	e59d100c 	ldr	r1, [sp, #12]
    5ca4:	e1a02003 	mov	r2, r3
    5ca8:	ebfffd18 	bl	5110 <XDcfg_CfgInitialize>
    5cac:	e59d0004 	ldr	r0, [sp, #4]
    5cb0:	ebfffd3c 	bl	51a8 <XDcfg_EnablePCAP>
    5cb4:	e59d0004 	ldr	r0, [sp, #4]
    5cb8:	e3a01302 	mov	r1, #134217728	; 0x8000000
    5cbc:	ebfffd5b 	bl	5230 <XDcfg_SetControlRegister>
    5cc0:	e59d3004 	ldr	r3, [sp, #4]
    5cc4:	e1a00003 	mov	r0, r3
    5cc8:	e28dd014 	add	sp, sp, #20
    5ccc:	e8bd8000 	ldmfd	sp!, {pc}

00005cd0 <_Z21XDcfg_TransferBitfileP5XDcfgmm>:
    5cd0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    5cd4:	e24dd024 	sub	sp, sp, #36	; 0x24
    5cd8:	e58d0014 	str	r0, [sp, #20]
    5cdc:	e58d1010 	str	r1, [sp, #16]
    5ce0:	e58d200c 	str	r2, [sp, #12]
    5ce4:	e3a03000 	mov	r3, #0
    5ce8:	e58d3018 	str	r3, [sp, #24]
    5cec:	e59d0014 	ldr	r0, [sp, #20]
    5cf0:	e3a01a01 	mov	r1, #4096	; 0x1000
    5cf4:	ebffff6c 	bl	5aac <XDcfg_IntrClear>
    5cf8:	e59d3010 	ldr	r3, [sp, #16]
    5cfc:	e3a02000 	mov	r2, #0
    5d00:	e58d2000 	str	r2, [sp]
    5d04:	e3a02001 	mov	r2, #1
    5d08:	e58d2004 	str	r2, [sp, #4]
    5d0c:	e59d0014 	ldr	r0, [sp, #20]
    5d10:	e1a01003 	mov	r1, r3
    5d14:	e59d200c 	ldr	r2, [sp, #12]
    5d18:	e3e03000 	mvn	r3, #0
    5d1c:	ebfffe44 	bl	5634 <XDcfg_Transfer>
    5d20:	e1a03000 	mov	r3, r0
    5d24:	e58d301c 	str	r3, [sp, #28]
    5d28:	e59d301c 	ldr	r3, [sp, #28]
    5d2c:	e3530000 	cmp	r3, #0
    5d30:	0a000005 	beq	5d4c <_Z21XDcfg_TransferBitfileP5XDcfgmm+0x7c>
    5d34:	e59d301c 	ldr	r3, [sp, #28]
    5d38:	ea00000c 	b	5d70 <_Z21XDcfg_TransferBitfileP5XDcfgmm+0xa0>
    5d3c:	e59d0014 	ldr	r0, [sp, #20]
    5d40:	ebffff4d 	bl	5a7c <XDcfg_IntrGetStatus>
    5d44:	e1a03000 	mov	r3, r0
    5d48:	e58d3018 	str	r3, [sp, #24]
    5d4c:	e59d3018 	ldr	r3, [sp, #24]
    5d50:	e2033a01 	and	r3, r3, #4096	; 0x1000
    5d54:	e3530000 	cmp	r3, #0
    5d58:	13a03000 	movne	r3, #0
    5d5c:	03a03001 	moveq	r3, #1
    5d60:	e6ef3073 	uxtb	r3, r3
    5d64:	e3530000 	cmp	r3, #0
    5d68:	1afffff3 	bne	5d3c <_Z21XDcfg_TransferBitfileP5XDcfgmm+0x6c>
    5d6c:	e3a03000 	mov	r3, #0
    5d70:	e1a00003 	mov	r0, r3
    5d74:	e28dd024 	add	sp, sp, #36	; 0x24
    5d78:	e8bd8000 	ldmfd	sp!, {pc}

00005d7c <_getpid>:
    5d7c:	e3a03000 	mov	r3, #0
    5d80:	e1a00003 	mov	r0, r3
    5d84:	e12fff1e 	bx	lr

00005d88 <_kill>:
    5d88:	e24dd008 	sub	sp, sp, #8
    5d8c:	e58d0004 	str	r0, [sp, #4]
    5d90:	e58d1000 	str	r1, [sp]
    5d94:	e3a03000 	mov	r3, #0
    5d98:	e1a00003 	mov	r0, r3
    5d9c:	e28dd008 	add	sp, sp, #8
    5da0:	e12fff1e 	bx	lr

00005da4 <_sbrk>:
    5da4:	e24dd008 	sub	sp, sp, #8
    5da8:	e58d0004 	str	r0, [sp, #4]
    5dac:	e28dd008 	add	sp, sp, #8
    5db0:	e12fff1e 	bx	lr

00005db4 <_fstat>:
    5db4:	e24dd008 	sub	sp, sp, #8
    5db8:	e58d0004 	str	r0, [sp, #4]
    5dbc:	e58d1000 	str	r1, [sp]
    5dc0:	e3a03000 	mov	r3, #0
    5dc4:	e1a00003 	mov	r0, r3
    5dc8:	e28dd008 	add	sp, sp, #8
    5dcc:	e12fff1e 	bx	lr

00005dd0 <_write>:
    5dd0:	e24dd010 	sub	sp, sp, #16
    5dd4:	e58d000c 	str	r0, [sp, #12]
    5dd8:	e58d1008 	str	r1, [sp, #8]
    5ddc:	e58d2004 	str	r2, [sp, #4]
    5de0:	e3a03000 	mov	r3, #0
    5de4:	e1a00003 	mov	r0, r3
    5de8:	e28dd010 	add	sp, sp, #16
    5dec:	e12fff1e 	bx	lr

00005df0 <_read>:
    5df0:	e24dd010 	sub	sp, sp, #16
    5df4:	e58d000c 	str	r0, [sp, #12]
    5df8:	e58d1008 	str	r1, [sp, #8]
    5dfc:	e58d2004 	str	r2, [sp, #4]
    5e00:	e3a03000 	mov	r3, #0
    5e04:	e1a00003 	mov	r0, r3
    5e08:	e28dd010 	add	sp, sp, #16
    5e0c:	e12fff1e 	bx	lr

00005e10 <_lseek>:
    5e10:	e24dd008 	sub	sp, sp, #8
    5e14:	e58d0004 	str	r0, [sp, #4]
    5e18:	e58d1000 	str	r1, [sp]
    5e1c:	e3a03000 	mov	r3, #0
    5e20:	e1a00003 	mov	r0, r3
    5e24:	e28dd008 	add	sp, sp, #8
    5e28:	e12fff1e 	bx	lr

00005e2c <_close>:
    5e2c:	e24dd008 	sub	sp, sp, #8
    5e30:	e58d0004 	str	r0, [sp, #4]
    5e34:	e3a03000 	mov	r3, #0
    5e38:	e1a00003 	mov	r0, r3
    5e3c:	e28dd008 	add	sp, sp, #8
    5e40:	e12fff1e 	bx	lr

00005e44 <_isatty>:
    5e44:	e24dd008 	sub	sp, sp, #8
    5e48:	e58d0004 	str	r0, [sp, #4]
    5e4c:	e3a03000 	mov	r3, #0
    5e50:	e1a00003 	mov	r0, r3
    5e54:	e28dd008 	add	sp, sp, #8
    5e58:	e12fff1e 	bx	lr

00005e5c <outbyte>:
    5e5c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    5e60:	e24dd00c 	sub	sp, sp, #12
    5e64:	e1a03000 	mov	r3, r0
    5e68:	e5cd3007 	strb	r3, [sp, #7]
    5e6c:	e5dd3007 	ldrb	r3, [sp, #7]
    5e70:	e3a00a01 	mov	r0, #4096	; 0x1000
    5e74:	e34e0000 	movt	r0, #57344	; 0xe000
    5e78:	e1a01003 	mov	r1, r3
    5e7c:	eb000324 	bl	6b14 <_Z16XUartPs_SendBytemh>
    5e80:	e28dd00c 	add	sp, sp, #12
    5e84:	e8bd8000 	ldmfd	sp!, {pc}

00005e88 <_Z13XTime_SetTimey>:
    5e88:	e92d4030 	push	{r4, r5, lr}
    5e8c:	e24dd00c 	sub	sp, sp, #12
    5e90:	e1cd00f0 	strd	r0, [sp]
    5e94:	e3a00f82 	mov	r0, #520	; 0x208
    5e98:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    5e9c:	e3a01000 	mov	r1, #0
    5ea0:	eb000095 	bl	60fc <_Z9Xil_Out32mm>
    5ea4:	e59d3000 	ldr	r3, [sp]
    5ea8:	e3a00c02 	mov	r0, #512	; 0x200
    5eac:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    5eb0:	e1a01003 	mov	r1, r3
    5eb4:	eb000090 	bl	60fc <_Z9Xil_Out32mm>
    5eb8:	e59d3004 	ldr	r3, [sp, #4]
    5ebc:	e1a04003 	mov	r4, r3
    5ec0:	e3a05000 	mov	r5, #0
    5ec4:	e1a03004 	mov	r3, r4
    5ec8:	e3a00f81 	mov	r0, #516	; 0x204
    5ecc:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    5ed0:	e1a01003 	mov	r1, r3
    5ed4:	eb000088 	bl	60fc <_Z9Xil_Out32mm>
    5ed8:	e3a00f82 	mov	r0, #520	; 0x208
    5edc:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    5ee0:	e3a01001 	mov	r1, #1
    5ee4:	eb000084 	bl	60fc <_Z9Xil_Out32mm>
    5ee8:	e28dd00c 	add	sp, sp, #12
    5eec:	e8bd8030 	pop	{r4, r5, pc}

00005ef0 <_Z13timeprint_lowv>:
    5ef0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    5ef4:	e24dd00c 	sub	sp, sp, #12
    5ef8:	e3a00c02 	mov	r0, #512	; 0x200
    5efc:	e34f08f0 	movt	r0, #63728	; 0xf8f0
    5f00:	eb000064 	bl	6098 <_Z8Xil_In32m>
    5f04:	e58d0004 	str	r0, [sp, #4]
    5f08:	e30008dc 	movw	r0, #2268	; 0x8dc
    5f0c:	e3400000 	movt	r0, #0
    5f10:	e59d1004 	ldr	r1, [sp, #4]
    5f14:	eb0001e1 	bl	66a0 <xil_printf>
    5f18:	e28dd00c 	add	sp, sp, #12
    5f1c:	e8bd8000 	ldmfd	sp!, {pc}

00005f20 <_Z9PM_recordj>:
    5f20:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    5f24:	e24dd014 	sub	sp, sp, #20
    5f28:	e58d000c 	str	r0, [sp, #12]
    5f2c:	e30134c0 	movw	r3, #5312	; 0x14c0
    5f30:	e3403000 	movt	r3, #0
    5f34:	e5932000 	ldr	r2, [r3]
    5f38:	e59d300c 	ldr	r3, [sp, #12]
    5f3c:	e1520003 	cmp	r2, r3
    5f40:	93a03000 	movls	r3, #0
    5f44:	83a03001 	movhi	r3, #1
    5f48:	e6ef2073 	uxtb	r2, r3
    5f4c:	e30134c0 	movw	r3, #5312	; 0x14c0
    5f50:	e3403000 	movt	r3, #0
    5f54:	e5933000 	ldr	r3, [r3]
    5f58:	e3530000 	cmp	r3, #0
    5f5c:	13a03000 	movne	r3, #0
    5f60:	03a03001 	moveq	r3, #1
    5f64:	e6ef3073 	uxtb	r3, r3
    5f68:	e1823003 	orr	r3, r2, r3
    5f6c:	e6ef3073 	uxtb	r3, r3
    5f70:	e3530000 	cmp	r3, #0
    5f74:	0a000003 	beq	5f88 <_Z9PM_recordj+0x68>
    5f78:	e30134c0 	movw	r3, #5312	; 0x14c0
    5f7c:	e3403000 	movt	r3, #0
    5f80:	e59d200c 	ldr	r2, [sp, #12]
    5f84:	e5832000 	str	r2, [r3]
    5f88:	e30134bc 	movw	r3, #5308	; 0x14bc
    5f8c:	e3403000 	movt	r3, #0
    5f90:	e5932000 	ldr	r2, [r3]
    5f94:	e59d300c 	ldr	r3, [sp, #12]
    5f98:	e1520003 	cmp	r2, r3
    5f9c:	2a000003 	bcs	5fb0 <_Z9PM_recordj+0x90>
    5fa0:	e30134bc 	movw	r3, #5308	; 0x14bc
    5fa4:	e3403000 	movt	r3, #0
    5fa8:	e59d200c 	ldr	r2, [sp, #12]
    5fac:	e5832000 	str	r2, [r3]
    5fb0:	e30134c4 	movw	r3, #5316	; 0x14c4
    5fb4:	e3403000 	movt	r3, #0
    5fb8:	e5932000 	ldr	r2, [r3]
    5fbc:	e59d300c 	ldr	r3, [sp, #12]
    5fc0:	e0822003 	add	r2, r2, r3
    5fc4:	e30134c4 	movw	r3, #5316	; 0x14c4
    5fc8:	e3403000 	movt	r3, #0
    5fcc:	e5832000 	str	r2, [r3]
    5fd0:	e30134c8 	movw	r3, #5320	; 0x14c8
    5fd4:	e3403000 	movt	r3, #0
    5fd8:	e5933000 	ldr	r3, [r3]
    5fdc:	e2832001 	add	r2, r3, #1
    5fe0:	e30134c8 	movw	r3, #5320	; 0x14c8
    5fe4:	e3403000 	movt	r3, #0
    5fe8:	e5832000 	str	r2, [r3]
    5fec:	e30134c8 	movw	r3, #5320	; 0x14c8
    5ff0:	e3403000 	movt	r3, #0
    5ff4:	e5932000 	ldr	r2, [r3]
    5ff8:	e3003fff 	movw	r3, #4095	; 0xfff
    5ffc:	e1520003 	cmp	r2, r3
    6000:	9a000012 	bls	6050 <_Z9PM_recordj+0x130>
    6004:	e30134c8 	movw	r3, #5320	; 0x14c8
    6008:	e3403000 	movt	r3, #0
    600c:	e5931000 	ldr	r1, [r3]
    6010:	e30134bc 	movw	r3, #5308	; 0x14bc
    6014:	e3403000 	movt	r3, #0
    6018:	e5932000 	ldr	r2, [r3]
    601c:	e30134c0 	movw	r3, #5312	; 0x14c0
    6020:	e3403000 	movt	r3, #0
    6024:	e593c000 	ldr	ip, [r3]
    6028:	e30134c4 	movw	r3, #5316	; 0x14c4
    602c:	e3403000 	movt	r3, #0
    6030:	e5933000 	ldr	r3, [r3]
    6034:	e1a03623 	lsr	r3, r3, #12
    6038:	e58d3000 	str	r3, [sp]
    603c:	e30008e4 	movw	r0, #2276	; 0x8e4
    6040:	e3400000 	movt	r0, #0
    6044:	e1a0300c 	mov	r3, ip
    6048:	eb000194 	bl	66a0 <xil_printf>
    604c:	eafffffe 	b	604c <_Z9PM_recordj+0x12c>
    6050:	e28dd014 	add	sp, sp, #20
    6054:	e8bd8000 	ldmfd	sp!, {pc}

00006058 <_Z7Xil_In8m>:
    6058:	e24dd008 	sub	sp, sp, #8
    605c:	e58d0004 	str	r0, [sp, #4]
    6060:	e59d3004 	ldr	r3, [sp, #4]
    6064:	e5d33000 	ldrb	r3, [r3]
    6068:	e6ef3073 	uxtb	r3, r3
    606c:	e1a00003 	mov	r0, r3
    6070:	e28dd008 	add	sp, sp, #8
    6074:	e12fff1e 	bx	lr

00006078 <_Z8Xil_In16m>:
    6078:	e24dd008 	sub	sp, sp, #8
    607c:	e58d0004 	str	r0, [sp, #4]
    6080:	e59d3004 	ldr	r3, [sp, #4]
    6084:	e1d330b0 	ldrh	r3, [r3]
    6088:	e6ff3073 	uxth	r3, r3
    608c:	e1a00003 	mov	r0, r3
    6090:	e28dd008 	add	sp, sp, #8
    6094:	e12fff1e 	bx	lr

00006098 <_Z8Xil_In32m>:
    6098:	e24dd008 	sub	sp, sp, #8
    609c:	e58d0004 	str	r0, [sp, #4]
    60a0:	e59d3004 	ldr	r3, [sp, #4]
    60a4:	e5933000 	ldr	r3, [r3]
    60a8:	e1a00003 	mov	r0, r3
    60ac:	e28dd008 	add	sp, sp, #8
    60b0:	e12fff1e 	bx	lr

000060b4 <_Z8Xil_Out8mh>:
    60b4:	e24dd008 	sub	sp, sp, #8
    60b8:	e58d0004 	str	r0, [sp, #4]
    60bc:	e1a03001 	mov	r3, r1
    60c0:	e5cd3003 	strb	r3, [sp, #3]
    60c4:	e59d3004 	ldr	r3, [sp, #4]
    60c8:	e5dd2003 	ldrb	r2, [sp, #3]
    60cc:	e5c32000 	strb	r2, [r3]
    60d0:	e28dd008 	add	sp, sp, #8
    60d4:	e12fff1e 	bx	lr

000060d8 <_Z9Xil_Out16mt>:
    60d8:	e24dd008 	sub	sp, sp, #8
    60dc:	e58d0004 	str	r0, [sp, #4]
    60e0:	e1a03001 	mov	r3, r1
    60e4:	e1cd30b2 	strh	r3, [sp, #2]
    60e8:	e59d3004 	ldr	r3, [sp, #4]
    60ec:	e1dd20b2 	ldrh	r2, [sp, #2]
    60f0:	e1c320b0 	strh	r2, [r3]
    60f4:	e28dd008 	add	sp, sp, #8
    60f8:	e12fff1e 	bx	lr

000060fc <_Z9Xil_Out32mm>:
    60fc:	e24dd008 	sub	sp, sp, #8
    6100:	e58d0004 	str	r0, [sp, #4]
    6104:	e58d1000 	str	r1, [sp]
    6108:	e59d3004 	ldr	r3, [sp, #4]
    610c:	e59d2000 	ldr	r2, [sp]
    6110:	e5832000 	str	r2, [r3]
    6114:	e28dd008 	add	sp, sp, #8
    6118:	e12fff1e 	bx	lr

0000611c <_Z10Xil_In16BEm>:
    611c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    6120:	e24dd014 	sub	sp, sp, #20
    6124:	e58d0004 	str	r0, [sp, #4]
    6128:	e59d0004 	ldr	r0, [sp, #4]
    612c:	ebffffd1 	bl	6078 <_Z8Xil_In16m>
    6130:	e1a03000 	mov	r3, r0
    6134:	e1cd30be 	strh	r3, [sp, #14]
    6138:	e1dd30be 	ldrh	r3, [sp, #14]
    613c:	e1a00003 	mov	r0, r3
    6140:	eb00002e 	bl	6200 <_Z16Xil_EndianSwap16t>
    6144:	e1a03000 	mov	r3, r0
    6148:	e1cd30bc 	strh	r3, [sp, #12]
    614c:	e1dd30bc 	ldrh	r3, [sp, #12]
    6150:	e1a00003 	mov	r0, r3
    6154:	e28dd014 	add	sp, sp, #20
    6158:	e8bd8000 	ldmfd	sp!, {pc}

0000615c <_Z10Xil_In32BEm>:
    615c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    6160:	e24dd014 	sub	sp, sp, #20
    6164:	e58d0004 	str	r0, [sp, #4]
    6168:	e59d0004 	ldr	r0, [sp, #4]
    616c:	ebffffc9 	bl	6098 <_Z8Xil_In32m>
    6170:	e58d000c 	str	r0, [sp, #12]
    6174:	e59d000c 	ldr	r0, [sp, #12]
    6178:	eb000030 	bl	6240 <_Z16Xil_EndianSwap32m>
    617c:	e58d0008 	str	r0, [sp, #8]
    6180:	e59d3008 	ldr	r3, [sp, #8]
    6184:	e1a00003 	mov	r0, r3
    6188:	e28dd014 	add	sp, sp, #20
    618c:	e8bd8000 	ldmfd	sp!, {pc}

00006190 <_Z11Xil_Out16BEmt>:
    6190:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    6194:	e24dd014 	sub	sp, sp, #20
    6198:	e58d0004 	str	r0, [sp, #4]
    619c:	e1a03001 	mov	r3, r1
    61a0:	e1cd30b2 	strh	r3, [sp, #2]
    61a4:	e1dd30b2 	ldrh	r3, [sp, #2]
    61a8:	e1a00003 	mov	r0, r3
    61ac:	eb000013 	bl	6200 <_Z16Xil_EndianSwap16t>
    61b0:	e1a03000 	mov	r3, r0
    61b4:	e1cd30be 	strh	r3, [sp, #14]
    61b8:	e1dd30be 	ldrh	r3, [sp, #14]
    61bc:	e59d0004 	ldr	r0, [sp, #4]
    61c0:	e1a01003 	mov	r1, r3
    61c4:	ebffffc3 	bl	60d8 <_Z9Xil_Out16mt>
    61c8:	e28dd014 	add	sp, sp, #20
    61cc:	e8bd8000 	ldmfd	sp!, {pc}

000061d0 <_Z11Xil_Out32BEmm>:
    61d0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    61d4:	e24dd014 	sub	sp, sp, #20
    61d8:	e58d0004 	str	r0, [sp, #4]
    61dc:	e58d1000 	str	r1, [sp]
    61e0:	e59d0000 	ldr	r0, [sp]
    61e4:	eb000015 	bl	6240 <_Z16Xil_EndianSwap32m>
    61e8:	e58d000c 	str	r0, [sp, #12]
    61ec:	e59d0004 	ldr	r0, [sp, #4]
    61f0:	e59d100c 	ldr	r1, [sp, #12]
    61f4:	ebffffc0 	bl	60fc <_Z9Xil_Out32mm>
    61f8:	e28dd014 	add	sp, sp, #20
    61fc:	e8bd8000 	ldmfd	sp!, {pc}

00006200 <_Z16Xil_EndianSwap16t>:
    6200:	e24dd008 	sub	sp, sp, #8
    6204:	e1a03000 	mov	r3, r0
    6208:	e1cd30b6 	strh	r3, [sp, #6]
    620c:	e1dd30b6 	ldrh	r3, [sp, #6]
    6210:	e1a03423 	lsr	r3, r3, #8
    6214:	e6ff3073 	uxth	r3, r3
    6218:	e6ff2073 	uxth	r2, r3
    621c:	e1dd30b6 	ldrh	r3, [sp, #6]
    6220:	e1a03403 	lsl	r3, r3, #8
    6224:	e6ff3073 	uxth	r3, r3
    6228:	e1823003 	orr	r3, r2, r3
    622c:	e6ff3073 	uxth	r3, r3
    6230:	e6ff3073 	uxth	r3, r3
    6234:	e1a00003 	mov	r0, r3
    6238:	e28dd008 	add	sp, sp, #8
    623c:	e12fff1e 	bx	lr

00006240 <_Z16Xil_EndianSwap32m>:
    6240:	e24dd010 	sub	sp, sp, #16
    6244:	e58d0004 	str	r0, [sp, #4]
    6248:	e59d3004 	ldr	r3, [sp, #4]
    624c:	e1cd30be 	strh	r3, [sp, #14]
    6250:	e59d3004 	ldr	r3, [sp, #4]
    6254:	e1a03823 	lsr	r3, r3, #16
    6258:	e1cd30bc 	strh	r3, [sp, #12]
    625c:	e1dd30be 	ldrh	r3, [sp, #14]
    6260:	e1a03423 	lsr	r3, r3, #8
    6264:	e6ff3073 	uxth	r3, r3
    6268:	e6ff2073 	uxth	r2, r3
    626c:	e1dd30be 	ldrh	r3, [sp, #14]
    6270:	e1a03403 	lsl	r3, r3, #8
    6274:	e6ff3073 	uxth	r3, r3
    6278:	e1823003 	orr	r3, r2, r3
    627c:	e6ff3073 	uxth	r3, r3
    6280:	e1cd30be 	strh	r3, [sp, #14]
    6284:	e1dd30bc 	ldrh	r3, [sp, #12]
    6288:	e1a03423 	lsr	r3, r3, #8
    628c:	e6ff3073 	uxth	r3, r3
    6290:	e6ff2073 	uxth	r2, r3
    6294:	e1dd30bc 	ldrh	r3, [sp, #12]
    6298:	e1a03403 	lsl	r3, r3, #8
    629c:	e6ff3073 	uxth	r3, r3
    62a0:	e1823003 	orr	r3, r2, r3
    62a4:	e6ff3073 	uxth	r3, r3
    62a8:	e1cd30bc 	strh	r3, [sp, #12]
    62ac:	e1dd30be 	ldrh	r3, [sp, #14]
    62b0:	e1a02803 	lsl	r2, r3, #16
    62b4:	e1dd30bc 	ldrh	r3, [sp, #12]
    62b8:	e1823003 	orr	r3, r2, r3
    62bc:	e1a00003 	mov	r0, r3
    62c0:	e28dd010 	add	sp, sp, #16
    62c4:	e12fff1e 	bx	lr

000062c8 <padding>:
    62c8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    62cc:	e24dd014 	sub	sp, sp, #20
    62d0:	e58d0004 	str	r0, [sp, #4]
    62d4:	e58d1000 	str	r1, [sp]
    62d8:	e59d3000 	ldr	r3, [sp]
    62dc:	e5933010 	ldr	r3, [r3, #16]
    62e0:	e3530000 	cmp	r3, #0
    62e4:	0a00001c 	beq	635c <padding+0x94>
    62e8:	e59d3004 	ldr	r3, [sp, #4]
    62ec:	e3530000 	cmp	r3, #0
    62f0:	0a000019 	beq	635c <padding+0x94>
    62f4:	e59d3000 	ldr	r3, [sp]
    62f8:	e5932000 	ldr	r2, [r3]
    62fc:	e59d3000 	ldr	r3, [sp]
    6300:	e5933004 	ldr	r3, [r3, #4]
    6304:	e1520003 	cmp	r2, r3
    6308:	aa000013 	bge	635c <padding+0x94>
    630c:	e59d3000 	ldr	r3, [sp]
    6310:	e5933000 	ldr	r3, [r3]
    6314:	e58d300c 	str	r3, [sp, #12]
    6318:	ea000006 	b	6338 <padding+0x70>
    631c:	e59d3000 	ldr	r3, [sp]
    6320:	e5d3300c 	ldrb	r3, [r3, #12]
    6324:	e1a00003 	mov	r0, r3
    6328:	ebfffecb 	bl	5e5c <outbyte>
    632c:	e59d300c 	ldr	r3, [sp, #12]
    6330:	e2833001 	add	r3, r3, #1
    6334:	e58d300c 	str	r3, [sp, #12]
    6338:	e59d3000 	ldr	r3, [sp]
    633c:	e5932004 	ldr	r2, [r3, #4]
    6340:	e59d300c 	ldr	r3, [sp, #12]
    6344:	e1520003 	cmp	r2, r3
    6348:	d3a03000 	movle	r3, #0
    634c:	c3a03001 	movgt	r3, #1
    6350:	e6ef3073 	uxtb	r3, r3
    6354:	e3530000 	cmp	r3, #0
    6358:	1affffef 	bne	631c <padding+0x54>
    635c:	e28dd014 	add	sp, sp, #20
    6360:	e8bd8000 	ldmfd	sp!, {pc}

00006364 <outs>:
    6364:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    6368:	e24dd00c 	sub	sp, sp, #12
    636c:	e58d0004 	str	r0, [sp, #4]
    6370:	e58d1000 	str	r1, [sp]
    6374:	e59d0004 	ldr	r0, [sp, #4]
    6378:	ebfffa03 	bl	4b8c <strlen>
    637c:	e1a03000 	mov	r3, r0
    6380:	e1a02003 	mov	r2, r3
    6384:	e59d3000 	ldr	r3, [sp]
    6388:	e5832000 	str	r2, [r3]
    638c:	e59d3000 	ldr	r3, [sp]
    6390:	e5933014 	ldr	r3, [r3, #20]
    6394:	e3530000 	cmp	r3, #0
    6398:	13a03000 	movne	r3, #0
    639c:	03a03001 	moveq	r3, #1
    63a0:	e6ef3073 	uxtb	r3, r3
    63a4:	e1a00003 	mov	r0, r3
    63a8:	e59d1000 	ldr	r1, [sp]
    63ac:	ebffffc5 	bl	62c8 <padding>
    63b0:	ea000006 	b	63d0 <outs+0x6c>
    63b4:	e59d3004 	ldr	r3, [sp, #4]
    63b8:	e5d33000 	ldrb	r3, [r3]
    63bc:	e59d2004 	ldr	r2, [sp, #4]
    63c0:	e2822001 	add	r2, r2, #1
    63c4:	e58d2004 	str	r2, [sp, #4]
    63c8:	e1a00003 	mov	r0, r3
    63cc:	ebfffea2 	bl	5e5c <outbyte>
    63d0:	e59d3004 	ldr	r3, [sp, #4]
    63d4:	e5d33000 	ldrb	r3, [r3]
    63d8:	e3530000 	cmp	r3, #0
    63dc:	0a00000c 	beq	6414 <outs+0xb0>
    63e0:	e59d3000 	ldr	r3, [sp]
    63e4:	e5933008 	ldr	r3, [r3, #8]
    63e8:	e3530000 	cmp	r3, #0
    63ec:	03a02000 	moveq	r2, #0
    63f0:	13a02001 	movne	r2, #1
    63f4:	e6ef2072 	uxtb	r2, r2
    63f8:	e2431001 	sub	r1, r3, #1
    63fc:	e59d3000 	ldr	r3, [sp]
    6400:	e5831008 	str	r1, [r3, #8]
    6404:	e3520000 	cmp	r2, #0
    6408:	0a000001 	beq	6414 <outs+0xb0>
    640c:	e3a03001 	mov	r3, #1
    6410:	ea000000 	b	6418 <outs+0xb4>
    6414:	e3a03000 	mov	r3, #0
    6418:	e3530000 	cmp	r3, #0
    641c:	1affffe4 	bne	63b4 <outs+0x50>
    6420:	e59d3000 	ldr	r3, [sp]
    6424:	e5933014 	ldr	r3, [r3, #20]
    6428:	e1a00003 	mov	r0, r3
    642c:	e59d1000 	ldr	r1, [sp]
    6430:	ebffffa4 	bl	62c8 <padding>
    6434:	e28dd00c 	add	sp, sp, #12
    6438:	e8bd8000 	ldmfd	sp!, {pc}

0000643c <outnum>:
    643c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    6440:	e24dd054 	sub	sp, sp, #84	; 0x54
    6444:	e58d000c 	str	r0, [sp, #12]
    6448:	e58d1008 	str	r1, [sp, #8]
    644c:	e58d2004 	str	r2, [sp, #4]
    6450:	e3003918 	movw	r3, #2328	; 0x918
    6454:	e3403000 	movt	r3, #0
    6458:	e28dc030 	add	ip, sp, #48	; 0x30
    645c:	e1a0e003 	mov	lr, r3
    6460:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
    6464:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
    6468:	e59e3000 	ldr	r3, [lr]
    646c:	e5cc3000 	strb	r3, [ip]
    6470:	e59d3008 	ldr	r3, [sp, #8]
    6474:	e353000a 	cmp	r3, #10
    6478:	1a000008 	bne	64a0 <outnum+0x64>
    647c:	e59d300c 	ldr	r3, [sp, #12]
    6480:	e3530000 	cmp	r3, #0
    6484:	aa000005 	bge	64a0 <outnum+0x64>
    6488:	e3a03001 	mov	r3, #1
    648c:	e58d3048 	str	r3, [sp, #72]	; 0x48
    6490:	e59d300c 	ldr	r3, [sp, #12]
    6494:	e2633000 	rsb	r3, r3, #0
    6498:	e58d3044 	str	r3, [sp, #68]	; 0x44
    649c:	ea000003 	b	64b0 <outnum+0x74>
    64a0:	e59d300c 	ldr	r3, [sp, #12]
    64a4:	e58d3044 	str	r3, [sp, #68]	; 0x44
    64a8:	e3a03000 	mov	r3, #0
    64ac:	e58d3048 	str	r3, [sp, #72]	; 0x48
    64b0:	e28d3010 	add	r3, sp, #16
    64b4:	e58d304c 	str	r3, [sp, #76]	; 0x4c
    64b8:	e59d3008 	ldr	r3, [sp, #8]
    64bc:	e59d2044 	ldr	r2, [sp, #68]	; 0x44
    64c0:	e1a00002 	mov	r0, r2
    64c4:	e1a01003 	mov	r1, r3
    64c8:	ebfff7c5 	bl	43e4 <__aeabi_uidivmod>
    64cc:	e1a03001 	mov	r3, r1
    64d0:	e1a02003 	mov	r2, r3
    64d4:	e3e0301f 	mvn	r3, #31
    64d8:	e28d1050 	add	r1, sp, #80	; 0x50
    64dc:	e0812002 	add	r2, r1, r2
    64e0:	e0823003 	add	r3, r2, r3
    64e4:	e5d32000 	ldrb	r2, [r3]
    64e8:	e59d304c 	ldr	r3, [sp, #76]	; 0x4c
    64ec:	e5c32000 	strb	r2, [r3]
    64f0:	e59d304c 	ldr	r3, [sp, #76]	; 0x4c
    64f4:	e2833001 	add	r3, r3, #1
    64f8:	e58d304c 	str	r3, [sp, #76]	; 0x4c
    64fc:	e59d3008 	ldr	r3, [sp, #8]
    6500:	e59d0044 	ldr	r0, [sp, #68]	; 0x44
    6504:	e1a01003 	mov	r1, r3
    6508:	ebfff73a 	bl	41f8 <__aeabi_uidiv>
    650c:	e1a03000 	mov	r3, r0
    6510:	e58d3044 	str	r3, [sp, #68]	; 0x44
    6514:	e59d3044 	ldr	r3, [sp, #68]	; 0x44
    6518:	e3530000 	cmp	r3, #0
    651c:	03a03000 	moveq	r3, #0
    6520:	13a03001 	movne	r3, #1
    6524:	e6ef3073 	uxtb	r3, r3
    6528:	e3530000 	cmp	r3, #0
    652c:	1affffe1 	bne	64b8 <outnum+0x7c>
    6530:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
    6534:	e3530000 	cmp	r3, #0
    6538:	0a000005 	beq	6554 <outnum+0x118>
    653c:	e59d304c 	ldr	r3, [sp, #76]	; 0x4c
    6540:	e3a0202d 	mov	r2, #45	; 0x2d
    6544:	e5c32000 	strb	r2, [r3]
    6548:	e59d304c 	ldr	r3, [sp, #76]	; 0x4c
    654c:	e2833001 	add	r3, r3, #1
    6550:	e58d304c 	str	r3, [sp, #76]	; 0x4c
    6554:	e59d304c 	ldr	r3, [sp, #76]	; 0x4c
    6558:	e3a02000 	mov	r2, #0
    655c:	e5c32000 	strb	r2, [r3]
    6560:	e59d304c 	ldr	r3, [sp, #76]	; 0x4c
    6564:	e2433001 	sub	r3, r3, #1
    6568:	e58d304c 	str	r3, [sp, #76]	; 0x4c
    656c:	e28d3010 	add	r3, sp, #16
    6570:	e1a00003 	mov	r0, r3
    6574:	ebfff984 	bl	4b8c <strlen>
    6578:	e1a03000 	mov	r3, r0
    657c:	e1a02003 	mov	r2, r3
    6580:	e59d3004 	ldr	r3, [sp, #4]
    6584:	e5832000 	str	r2, [r3]
    6588:	e59d3004 	ldr	r3, [sp, #4]
    658c:	e5933014 	ldr	r3, [r3, #20]
    6590:	e3530000 	cmp	r3, #0
    6594:	13a03000 	movne	r3, #0
    6598:	03a03001 	moveq	r3, #1
    659c:	e6ef3073 	uxtb	r3, r3
    65a0:	e1a00003 	mov	r0, r3
    65a4:	e59d1004 	ldr	r1, [sp, #4]
    65a8:	ebffff46 	bl	62c8 <padding>
    65ac:	ea000006 	b	65cc <outnum+0x190>
    65b0:	e59d304c 	ldr	r3, [sp, #76]	; 0x4c
    65b4:	e5d33000 	ldrb	r3, [r3]
    65b8:	e59d204c 	ldr	r2, [sp, #76]	; 0x4c
    65bc:	e2422001 	sub	r2, r2, #1
    65c0:	e58d204c 	str	r2, [sp, #76]	; 0x4c
    65c4:	e1a00003 	mov	r0, r3
    65c8:	ebfffe23 	bl	5e5c <outbyte>
    65cc:	e28d3010 	add	r3, sp, #16
    65d0:	e59d204c 	ldr	r2, [sp, #76]	; 0x4c
    65d4:	e1520003 	cmp	r2, r3
    65d8:	33a03000 	movcc	r3, #0
    65dc:	23a03001 	movcs	r3, #1
    65e0:	e6ef3073 	uxtb	r3, r3
    65e4:	e3530000 	cmp	r3, #0
    65e8:	1afffff0 	bne	65b0 <outnum+0x174>
    65ec:	e59d3004 	ldr	r3, [sp, #4]
    65f0:	e5933014 	ldr	r3, [r3, #20]
    65f4:	e1a00003 	mov	r0, r3
    65f8:	e59d1004 	ldr	r1, [sp, #4]
    65fc:	ebffff31 	bl	62c8 <padding>
    6600:	e28dd054 	add	sp, sp, #84	; 0x54
    6604:	e8bd8000 	ldmfd	sp!, {pc}

00006608 <getnum>:
    6608:	e24dd010 	sub	sp, sp, #16
    660c:	e58d0004 	str	r0, [sp, #4]
    6610:	e3a03000 	mov	r3, #0
    6614:	e58d300c 	str	r3, [sp, #12]
    6618:	e59d3004 	ldr	r3, [sp, #4]
    661c:	e5933000 	ldr	r3, [r3]
    6620:	e58d3008 	str	r3, [sp, #8]
    6624:	ea00000d 	b	6660 <getnum+0x58>
    6628:	e59d200c 	ldr	r2, [sp, #12]
    662c:	e1a03002 	mov	r3, r2
    6630:	e1a03103 	lsl	r3, r3, #2
    6634:	e0833002 	add	r3, r3, r2
    6638:	e1a03083 	lsl	r3, r3, #1
    663c:	e1a02003 	mov	r2, r3
    6640:	e59d3008 	ldr	r3, [sp, #8]
    6644:	e5d33000 	ldrb	r3, [r3]
    6648:	e2433030 	sub	r3, r3, #48	; 0x30
    664c:	e0823003 	add	r3, r2, r3
    6650:	e58d300c 	str	r3, [sp, #12]
    6654:	e59d3008 	ldr	r3, [sp, #8]
    6658:	e2833001 	add	r3, r3, #1
    665c:	e58d3008 	str	r3, [sp, #8]
    6660:	e59d3008 	ldr	r3, [sp, #8]
    6664:	e5d33000 	ldrb	r3, [r3]
    6668:	e2433030 	sub	r3, r3, #48	; 0x30
    666c:	e3530009 	cmp	r3, #9
    6670:	83a03000 	movhi	r3, #0
    6674:	93a03001 	movls	r3, #1
    6678:	e6ef3073 	uxtb	r3, r3
    667c:	e3530000 	cmp	r3, #0
    6680:	1affffe8 	bne	6628 <getnum+0x20>
    6684:	e59d3004 	ldr	r3, [sp, #4]
    6688:	e59d2008 	ldr	r2, [sp, #8]
    668c:	e5832000 	str	r2, [r3]
    6690:	e59d300c 	ldr	r3, [sp, #12]
    6694:	e1a00003 	mov	r0, r3
    6698:	e28dd010 	add	sp, sp, #16
    669c:	e12fff1e 	bx	lr

000066a0 <xil_printf>:
    66a0:	e92d000f 	push	{r0, r1, r2, r3}
    66a4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    66a8:	e24dd034 	sub	sp, sp, #52	; 0x34
    66ac:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
    66b0:	e58d3004 	str	r3, [sp, #4]
    66b4:	e28d303c 	add	r3, sp, #60	; 0x3c
    66b8:	e58d3008 	str	r3, [sp, #8]
    66bc:	ea000108 	b	6ae4 <xil_printf+0x444>
    66c0:	e59d3004 	ldr	r3, [sp, #4]
    66c4:	e5d33000 	ldrb	r3, [r3]
    66c8:	e3530025 	cmp	r3, #37	; 0x25
    66cc:	0a000004 	beq	66e4 <xil_printf+0x44>
    66d0:	e59d3004 	ldr	r3, [sp, #4]
    66d4:	e5d33000 	ldrb	r3, [r3]
    66d8:	e1a00003 	mov	r0, r3
    66dc:	ebfffdde 	bl	5e5c <outbyte>
    66e0:	ea0000fc 	b	6ad8 <xil_printf+0x438>
    66e4:	e3a03000 	mov	r3, #0
    66e8:	e58d301c 	str	r3, [sp, #28]
    66ec:	e59d301c 	ldr	r3, [sp, #28]
    66f0:	e58d3020 	str	r3, [sp, #32]
    66f4:	e59d3020 	ldr	r3, [sp, #32]
    66f8:	e58d302c 	str	r3, [sp, #44]	; 0x2c
    66fc:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
    6700:	e58d3028 	str	r3, [sp, #40]	; 0x28
    6704:	e3a03020 	mov	r3, #32
    6708:	e5cd3018 	strb	r3, [sp, #24]
    670c:	e3073fff 	movw	r3, #32767	; 0x7fff
    6710:	e58d3014 	str	r3, [sp, #20]
    6714:	e59d3004 	ldr	r3, [sp, #4]
    6718:	e2833001 	add	r3, r3, #1
    671c:	e58d3004 	str	r3, [sp, #4]
    6720:	e59d3004 	ldr	r3, [sp, #4]
    6724:	e5d33000 	ldrb	r3, [r3]
    6728:	e5cd3027 	strb	r3, [sp, #39]	; 0x27
    672c:	e5dd3027 	ldrb	r3, [sp, #39]	; 0x27
    6730:	e2433030 	sub	r3, r3, #48	; 0x30
    6734:	e3530009 	cmp	r3, #9
    6738:	8a000018 	bhi	67a0 <xil_printf+0x100>
    673c:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
    6740:	e3530000 	cmp	r3, #0
    6744:	0a000005 	beq	6760 <xil_printf+0xc0>
    6748:	e28d3004 	add	r3, sp, #4
    674c:	e1a00003 	mov	r0, r3
    6750:	ebffffac 	bl	6608 <getnum>
    6754:	e1a03000 	mov	r3, r0
    6758:	e58d3014 	str	r3, [sp, #20]
    675c:	ea00000b 	b	6790 <xil_printf+0xf0>
    6760:	e5dd3027 	ldrb	r3, [sp, #39]	; 0x27
    6764:	e3530030 	cmp	r3, #48	; 0x30
    6768:	1a000001 	bne	6774 <xil_printf+0xd4>
    676c:	e3a03030 	mov	r3, #48	; 0x30
    6770:	e5cd3018 	strb	r3, [sp, #24]
    6774:	e28d3004 	add	r3, sp, #4
    6778:	e1a00003 	mov	r0, r3
    677c:	ebffffa1 	bl	6608 <getnum>
    6780:	e1a03000 	mov	r3, r0
    6784:	e58d3010 	str	r3, [sp, #16]
    6788:	e3a03001 	mov	r3, #1
    678c:	e58d301c 	str	r3, [sp, #28]
    6790:	e59d3004 	ldr	r3, [sp, #4]
    6794:	e2433001 	sub	r3, r3, #1
    6798:	e58d3004 	str	r3, [sp, #4]
    679c:	eaffffdc 	b	6714 <xil_printf+0x74>
    67a0:	e5dd3027 	ldrb	r3, [sp, #39]	; 0x27
    67a4:	e1a00003 	mov	r0, r3
    67a8:	ebfff912 	bl	4bf8 <tolower>
    67ac:	e1a03000 	mov	r3, r0
    67b0:	e2433025 	sub	r3, r3, #37	; 0x25
    67b4:	e3530053 	cmp	r3, #83	; 0x53
    67b8:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
    67bc:	ea0000c4 	b	6ad4 <xil_printf+0x434>
    67c0:	00006910 	andeq	r6, r0, r0, lsl r9
    67c4:	00006ad4 	ldrdeq	r6, [r0], -r4
    67c8:	00006ad4 	ldrdeq	r6, [r0], -r4
    67cc:	00006ad4 	ldrdeq	r6, [r0], -r4
    67d0:	00006ad4 	ldrdeq	r6, [r0], -r4
    67d4:	00006ad4 	ldrdeq	r6, [r0], -r4
    67d8:	00006ad4 	ldrdeq	r6, [r0], -r4
    67dc:	00006ad4 	ldrdeq	r6, [r0], -r4
    67e0:	0000691c 	andeq	r6, r0, ip, lsl r9
    67e4:	00006928 	andeq	r6, r0, r8, lsr #18
    67e8:	00006ad4 	ldrdeq	r6, [r0], -r4
    67ec:	00006ad4 	ldrdeq	r6, [r0], -r4
    67f0:	00006ad4 	ldrdeq	r6, [r0], -r4
    67f4:	00006ad4 	ldrdeq	r6, [r0], -r4
    67f8:	00006ad4 	ldrdeq	r6, [r0], -r4
    67fc:	00006ad4 	ldrdeq	r6, [r0], -r4
    6800:	00006ad4 	ldrdeq	r6, [r0], -r4
    6804:	00006ad4 	ldrdeq	r6, [r0], -r4
    6808:	00006ad4 	ldrdeq	r6, [r0], -r4
    680c:	00006ad4 	ldrdeq	r6, [r0], -r4
    6810:	00006ad4 	ldrdeq	r6, [r0], -r4
    6814:	00006ad4 	ldrdeq	r6, [r0], -r4
    6818:	00006ad4 	ldrdeq	r6, [r0], -r4
    681c:	00006ad4 	ldrdeq	r6, [r0], -r4
    6820:	00006ad4 	ldrdeq	r6, [r0], -r4
    6824:	00006ad4 	ldrdeq	r6, [r0], -r4
    6828:	00006ad4 	ldrdeq	r6, [r0], -r4
    682c:	00006ad4 	ldrdeq	r6, [r0], -r4
    6830:	00006ad4 	ldrdeq	r6, [r0], -r4
    6834:	00006ad4 	ldrdeq	r6, [r0], -r4
    6838:	00006ad4 	ldrdeq	r6, [r0], -r4
    683c:	00006ad4 	ldrdeq	r6, [r0], -r4
    6840:	00006ad4 	ldrdeq	r6, [r0], -r4
    6844:	00006ad4 	ldrdeq	r6, [r0], -r4
    6848:	00006ad4 	ldrdeq	r6, [r0], -r4
    684c:	00006ad4 	ldrdeq	r6, [r0], -r4
    6850:	00006ad4 	ldrdeq	r6, [r0], -r4
    6854:	00006ad4 	ldrdeq	r6, [r0], -r4
    6858:	00006ad4 	ldrdeq	r6, [r0], -r4
    685c:	00006ad4 	ldrdeq	r6, [r0], -r4
    6860:	00006ad4 	ldrdeq	r6, [r0], -r4
    6864:	00006ad4 	ldrdeq	r6, [r0], -r4
    6868:	00006ad4 	ldrdeq	r6, [r0], -r4
    686c:	00006ad4 	ldrdeq	r6, [r0], -r4
    6870:	00006ad4 	ldrdeq	r6, [r0], -r4
    6874:	00006ad4 	ldrdeq	r6, [r0], -r4
    6878:	00006ad4 	ldrdeq	r6, [r0], -r4
    687c:	00006ad4 	ldrdeq	r6, [r0], -r4
    6880:	00006ad4 	ldrdeq	r6, [r0], -r4
    6884:	00006ad4 	ldrdeq	r6, [r0], -r4
    6888:	00006ad4 	ldrdeq	r6, [r0], -r4
    688c:	00006ad4 	ldrdeq	r6, [r0], -r4
    6890:	00006ad4 	ldrdeq	r6, [r0], -r4
    6894:	00006ad4 	ldrdeq	r6, [r0], -r4
    6898:	00006ad4 	ldrdeq	r6, [r0], -r4
    689c:	00006a14 	andeq	r6, r0, r4, lsl sl
    68a0:	00006ad4 	ldrdeq	r6, [r0], -r4
    68a4:	00006ad4 	ldrdeq	r6, [r0], -r4
    68a8:	00006ad4 	ldrdeq	r6, [r0], -r4
    68ac:	00006ad4 	ldrdeq	r6, [r0], -r4
    68b0:	00006ad4 	ldrdeq	r6, [r0], -r4
    68b4:	00006ad4 	ldrdeq	r6, [r0], -r4
    68b8:	000069f4 	strdeq	r6, [r0], -r4
    68bc:	00006940 	andeq	r6, r0, r0, asr #18
    68c0:	00006ad4 	ldrdeq	r6, [r0], -r4
    68c4:	00006ad4 	ldrdeq	r6, [r0], -r4
    68c8:	00006ad4 	ldrdeq	r6, [r0], -r4
    68cc:	00006ad4 	ldrdeq	r6, [r0], -r4
    68d0:	00006ad4 	ldrdeq	r6, [r0], -r4
    68d4:	00006ad4 	ldrdeq	r6, [r0], -r4
    68d8:	00006ad4 	ldrdeq	r6, [r0], -r4
    68dc:	00006934 	andeq	r6, r0, r4, lsr r9
    68e0:	00006ad4 	ldrdeq	r6, [r0], -r4
    68e4:	00006ad4 	ldrdeq	r6, [r0], -r4
    68e8:	00006ad4 	ldrdeq	r6, [r0], -r4
    68ec:	00006ad4 	ldrdeq	r6, [r0], -r4
    68f0:	00006ad4 	ldrdeq	r6, [r0], -r4
    68f4:	00006ad4 	ldrdeq	r6, [r0], -r4
    68f8:	000069d0 	ldrdeq	r6, [r0], -r0
    68fc:	00006ad4 	ldrdeq	r6, [r0], -r4
    6900:	00006ad4 	ldrdeq	r6, [r0], -r4
    6904:	00006ad4 	ldrdeq	r6, [r0], -r4
    6908:	00006ad4 	ldrdeq	r6, [r0], -r4
    690c:	000069a8 	andeq	r6, r0, r8, lsr #19
    6910:	e3a00025 	mov	r0, #37	; 0x25
    6914:	ebfffd50 	bl	5e5c <outbyte>
    6918:	ea00006e 	b	6ad8 <xil_printf+0x438>
    691c:	e3a03001 	mov	r3, #1
    6920:	e58d3020 	str	r3, [sp, #32]
    6924:	ea000069 	b	6ad0 <xil_printf+0x430>
    6928:	e3a03001 	mov	r3, #1
    692c:	e58d3028 	str	r3, [sp, #40]	; 0x28
    6930:	ea000066 	b	6ad0 <xil_printf+0x430>
    6934:	e3a03001 	mov	r3, #1
    6938:	e58d302c 	str	r3, [sp, #44]	; 0x2c
    693c:	ea000063 	b	6ad0 <xil_printf+0x430>
    6940:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
    6944:	e3530000 	cmp	r3, #0
    6948:	1a000002 	bne	6958 <xil_printf+0x2b8>
    694c:	e5dd3027 	ldrb	r3, [sp, #39]	; 0x27
    6950:	e3530044 	cmp	r3, #68	; 0x44
    6954:	1a000009 	bne	6980 <xil_printf+0x2e0>
    6958:	e59d3008 	ldr	r3, [sp, #8]
    695c:	e2832004 	add	r2, r3, #4
    6960:	e58d2008 	str	r2, [sp, #8]
    6964:	e5932000 	ldr	r2, [r3]
    6968:	e28d300c 	add	r3, sp, #12
    696c:	e1a00002 	mov	r0, r2
    6970:	e3a0100a 	mov	r1, #10
    6974:	e1a02003 	mov	r2, r3
    6978:	ebfffeaf 	bl	643c <outnum>
    697c:	ea000055 	b	6ad8 <xil_printf+0x438>
    6980:	e59d3008 	ldr	r3, [sp, #8]
    6984:	e2832004 	add	r2, r3, #4
    6988:	e58d2008 	str	r2, [sp, #8]
    698c:	e5932000 	ldr	r2, [r3]
    6990:	e28d300c 	add	r3, sp, #12
    6994:	e1a00002 	mov	r0, r2
    6998:	e3a0100a 	mov	r1, #10
    699c:	e1a02003 	mov	r2, r3
    69a0:	ebfffea5 	bl	643c <outnum>
    69a4:	ea00004b 	b	6ad8 <xil_printf+0x438>
    69a8:	e59d3008 	ldr	r3, [sp, #8]
    69ac:	e2832004 	add	r2, r3, #4
    69b0:	e58d2008 	str	r2, [sp, #8]
    69b4:	e5932000 	ldr	r2, [r3]
    69b8:	e28d300c 	add	r3, sp, #12
    69bc:	e1a00002 	mov	r0, r2
    69c0:	e3a01010 	mov	r1, #16
    69c4:	e1a02003 	mov	r2, r3
    69c8:	ebfffe9b 	bl	643c <outnum>
    69cc:	ea000041 	b	6ad8 <xil_printf+0x438>
    69d0:	e59d3008 	ldr	r3, [sp, #8]
    69d4:	e2832004 	add	r2, r3, #4
    69d8:	e58d2008 	str	r2, [sp, #8]
    69dc:	e5932000 	ldr	r2, [r3]
    69e0:	e28d300c 	add	r3, sp, #12
    69e4:	e1a00002 	mov	r0, r2
    69e8:	e1a01003 	mov	r1, r3
    69ec:	ebfffe5c 	bl	6364 <outs>
    69f0:	ea000038 	b	6ad8 <xil_printf+0x438>
    69f4:	e59d3008 	ldr	r3, [sp, #8]
    69f8:	e2832004 	add	r2, r3, #4
    69fc:	e58d2008 	str	r2, [sp, #8]
    6a00:	e5933000 	ldr	r3, [r3]
    6a04:	e6ef3073 	uxtb	r3, r3
    6a08:	e1a00003 	mov	r0, r3
    6a0c:	ebfffd12 	bl	5e5c <outbyte>
    6a10:	ea000030 	b	6ad8 <xil_printf+0x438>
    6a14:	e59d3004 	ldr	r3, [sp, #4]
    6a18:	e5d33000 	ldrb	r3, [r3]
    6a1c:	e2433061 	sub	r3, r3, #97	; 0x61
    6a20:	e3530011 	cmp	r3, #17
    6a24:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
    6a28:	ea00001f 	b	6aac <xil_printf+0x40c>
    6a2c:	00006a74 	andeq	r6, r0, r4, ror sl
    6a30:	00006aac 	andeq	r6, r0, ip, lsr #21
    6a34:	00006aac 	andeq	r6, r0, ip, lsr #21
    6a38:	00006aac 	andeq	r6, r0, ip, lsr #21
    6a3c:	00006aac 	andeq	r6, r0, ip, lsr #21
    6a40:	00006aac 	andeq	r6, r0, ip, lsr #21
    6a44:	00006aac 	andeq	r6, r0, ip, lsr #21
    6a48:	00006a80 	andeq	r6, r0, r0, lsl #21
    6a4c:	00006aac 	andeq	r6, r0, ip, lsr #21
    6a50:	00006aac 	andeq	r6, r0, ip, lsr #21
    6a54:	00006aac 	andeq	r6, r0, ip, lsr #21
    6a58:	00006aac 	andeq	r6, r0, ip, lsr #21
    6a5c:	00006aac 	andeq	r6, r0, ip, lsr #21
    6a60:	00006a98 	muleq	r0, r8, sl
    6a64:	00006aac 	andeq	r6, r0, ip, lsr #21
    6a68:	00006aac 	andeq	r6, r0, ip, lsr #21
    6a6c:	00006aac 	andeq	r6, r0, ip, lsr #21
    6a70:	00006a8c 	andeq	r6, r0, ip, lsl #21
    6a74:	e3a00007 	mov	r0, #7
    6a78:	ebfffcf7 	bl	5e5c <outbyte>
    6a7c:	ea00000f 	b	6ac0 <xil_printf+0x420>
    6a80:	e3a00008 	mov	r0, #8
    6a84:	ebfffcf4 	bl	5e5c <outbyte>
    6a88:	ea00000c 	b	6ac0 <xil_printf+0x420>
    6a8c:	e3a0000d 	mov	r0, #13
    6a90:	ebfffcf1 	bl	5e5c <outbyte>
    6a94:	ea000009 	b	6ac0 <xil_printf+0x420>
    6a98:	e3a0000d 	mov	r0, #13
    6a9c:	ebfffcee 	bl	5e5c <outbyte>
    6aa0:	e3a0000a 	mov	r0, #10
    6aa4:	ebfffcec 	bl	5e5c <outbyte>
    6aa8:	ea000004 	b	6ac0 <xil_printf+0x420>
    6aac:	e59d3004 	ldr	r3, [sp, #4]
    6ab0:	e5d33000 	ldrb	r3, [r3]
    6ab4:	e1a00003 	mov	r0, r3
    6ab8:	ebfffce7 	bl	5e5c <outbyte>
    6abc:	e1a00000 	nop			; (mov r0, r0)
    6ac0:	e59d3004 	ldr	r3, [sp, #4]
    6ac4:	e2833001 	add	r3, r3, #1
    6ac8:	e58d3004 	str	r3, [sp, #4]
    6acc:	e1a00000 	nop			; (mov r0, r0)
    6ad0:	eaffff0f 	b	6714 <xil_printf+0x74>
    6ad4:	e1a00000 	nop			; (mov r0, r0)
    6ad8:	e59d3004 	ldr	r3, [sp, #4]
    6adc:	e2833001 	add	r3, r3, #1
    6ae0:	e58d3004 	str	r3, [sp, #4]
    6ae4:	e59d3004 	ldr	r3, [sp, #4]
    6ae8:	e5d33000 	ldrb	r3, [r3]
    6aec:	e3530000 	cmp	r3, #0
    6af0:	03a03000 	moveq	r3, #0
    6af4:	13a03001 	movne	r3, #1
    6af8:	e6ef3073 	uxtb	r3, r3
    6afc:	e3530000 	cmp	r3, #0
    6b00:	1afffeee 	bne	66c0 <xil_printf+0x20>
    6b04:	e28dd034 	add	sp, sp, #52	; 0x34
    6b08:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    6b0c:	e28dd010 	add	sp, sp, #16
    6b10:	e12fff1e 	bx	lr

00006b14 <_Z16XUartPs_SendBytemh>:
    6b14:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    6b18:	e24dd00c 	sub	sp, sp, #12
    6b1c:	e58d0004 	str	r0, [sp, #4]
    6b20:	e1a03001 	mov	r3, r1
    6b24:	e5cd3003 	strb	r3, [sp, #3]
    6b28:	e1a00000 	nop			; (mov r0, r0)
    6b2c:	e59d3004 	ldr	r3, [sp, #4]
    6b30:	e283302c 	add	r3, r3, #44	; 0x2c
    6b34:	e1a00003 	mov	r0, r3
    6b38:	ebfffd56 	bl	6098 <_Z8Xil_In32m>
    6b3c:	e1a03000 	mov	r3, r0
    6b40:	e2033010 	and	r3, r3, #16
    6b44:	e3530000 	cmp	r3, #0
    6b48:	03a03000 	moveq	r3, #0
    6b4c:	13a03001 	movne	r3, #1
    6b50:	e6ef3073 	uxtb	r3, r3
    6b54:	e3530000 	cmp	r3, #0
    6b58:	1afffff3 	bne	6b2c <_Z16XUartPs_SendBytemh+0x18>
    6b5c:	e59d3004 	ldr	r3, [sp, #4]
    6b60:	e2832030 	add	r2, r3, #48	; 0x30
    6b64:	e5dd3003 	ldrb	r3, [sp, #3]
    6b68:	e1a00002 	mov	r0, r2
    6b6c:	e1a01003 	mov	r1, r3
    6b70:	ebfffd61 	bl	60fc <_Z9Xil_Out32mm>
    6b74:	e28dd00c 	add	sp, sp, #12
    6b78:	e8bd8000 	ldmfd	sp!, {pc}

00006b7c <_Z16XUartPs_RecvBytem>:
    6b7c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    6b80:	e24dd00c 	sub	sp, sp, #12
    6b84:	e58d0004 	str	r0, [sp, #4]
    6b88:	e1a00000 	nop			; (mov r0, r0)
    6b8c:	e59d3004 	ldr	r3, [sp, #4]
    6b90:	e283302c 	add	r3, r3, #44	; 0x2c
    6b94:	e1a00003 	mov	r0, r3
    6b98:	ebfffd3e 	bl	6098 <_Z8Xil_In32m>
    6b9c:	e1a03000 	mov	r3, r0
    6ba0:	e2033002 	and	r3, r3, #2
    6ba4:	e3530000 	cmp	r3, #0
    6ba8:	03a03000 	moveq	r3, #0
    6bac:	13a03001 	movne	r3, #1
    6bb0:	e6ef3073 	uxtb	r3, r3
    6bb4:	e3530000 	cmp	r3, #0
    6bb8:	1afffff3 	bne	6b8c <_Z16XUartPs_RecvBytem+0x10>
    6bbc:	e59d3004 	ldr	r3, [sp, #4]
    6bc0:	e2833030 	add	r3, r3, #48	; 0x30
    6bc4:	e1a00003 	mov	r0, r3
    6bc8:	ebfffd32 	bl	6098 <_Z8Xil_In32m>
    6bcc:	e1a03000 	mov	r3, r0
    6bd0:	e6ef3073 	uxtb	r3, r3
    6bd4:	e1a00003 	mov	r0, r3
    6bd8:	e28dd00c 	add	sp, sp, #12
    6bdc:	e8bd8000 	ldmfd	sp!, {pc}

00006be0 <_Z15XUartPs_ResetHwm>:
    6be0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    6be4:	e24dd00c 	sub	sp, sp, #12
    6be8:	e58d0004 	str	r0, [sp, #4]
    6bec:	e59d3004 	ldr	r3, [sp, #4]
    6bf0:	e283300c 	add	r3, r3, #12
    6bf4:	e1a00003 	mov	r0, r3
    6bf8:	e3011fff 	movw	r1, #8191	; 0x1fff
    6bfc:	ebfffd3e 	bl	60fc <_Z9Xil_Out32mm>
    6c00:	e59d0004 	ldr	r0, [sp, #4]
    6c04:	e3a01028 	mov	r1, #40	; 0x28
    6c08:	ebfffd3b 	bl	60fc <_Z9Xil_Out32mm>
    6c0c:	e59d0004 	ldr	r0, [sp, #4]
    6c10:	e3a01003 	mov	r1, #3
    6c14:	ebfffd38 	bl	60fc <_Z9Xil_Out32mm>
    6c18:	e59d3004 	ldr	r3, [sp, #4]
    6c1c:	e2833014 	add	r3, r3, #20
    6c20:	e1a00003 	mov	r0, r3
    6c24:	e3011fff 	movw	r1, #8191	; 0x1fff
    6c28:	ebfffd33 	bl	60fc <_Z9Xil_Out32mm>
    6c2c:	e59d3004 	ldr	r3, [sp, #4]
    6c30:	e2833004 	add	r3, r3, #4
    6c34:	e1a00003 	mov	r0, r3
    6c38:	e3a01000 	mov	r1, #0
    6c3c:	ebfffd2e 	bl	60fc <_Z9Xil_Out32mm>
    6c40:	e59d3004 	ldr	r3, [sp, #4]
    6c44:	e2833020 	add	r3, r3, #32
    6c48:	e1a00003 	mov	r0, r3
    6c4c:	e3a01020 	mov	r1, #32
    6c50:	ebfffd29 	bl	60fc <_Z9Xil_Out32mm>
    6c54:	e59d3004 	ldr	r3, [sp, #4]
    6c58:	e2833044 	add	r3, r3, #68	; 0x44
    6c5c:	e1a00003 	mov	r0, r3
    6c60:	e3a01020 	mov	r1, #32
    6c64:	ebfffd24 	bl	60fc <_Z9Xil_Out32mm>
    6c68:	e59d3004 	ldr	r3, [sp, #4]
    6c6c:	e283301c 	add	r3, r3, #28
    6c70:	e1a00003 	mov	r0, r3
    6c74:	e3a01000 	mov	r1, #0
    6c78:	ebfffd1f 	bl	60fc <_Z9Xil_Out32mm>
    6c7c:	e59d3004 	ldr	r3, [sp, #4]
    6c80:	e2833018 	add	r3, r3, #24
    6c84:	e1a00003 	mov	r0, r3
    6c88:	e300128b 	movw	r1, #651	; 0x28b
    6c8c:	ebfffd1a 	bl	60fc <_Z9Xil_Out32mm>
    6c90:	e59d3004 	ldr	r3, [sp, #4]
    6c94:	e2833034 	add	r3, r3, #52	; 0x34
    6c98:	e1a00003 	mov	r0, r3
    6c9c:	e3a0100f 	mov	r1, #15
    6ca0:	ebfffd15 	bl	60fc <_Z9Xil_Out32mm>
    6ca4:	e59d0004 	ldr	r0, [sp, #4]
    6ca8:	e3a01f4a 	mov	r1, #296	; 0x128
    6cac:	ebfffd12 	bl	60fc <_Z9Xil_Out32mm>
    6cb0:	e28dd00c 	add	sp, sp, #12
    6cb4:	e8bd8000 	ldmfd	sp!, {pc}

00006cb8 <_Z21Int_RCFG_OVER_Handlerv>:
    6cb8:	e92d4008 	push	{r3, lr}
    6cbc:	e3013e70 	movw	r3, #7792	; 0x1e70
    6cc0:	e3403000 	movt	r3, #0
    6cc4:	e5932000 	ldr	r2, [r3]
    6cc8:	e3013e70 	movw	r3, #7792	; 0x1e70
    6ccc:	e3403000 	movt	r3, #0
    6cd0:	e5933000 	ldr	r3, [r3]
    6cd4:	e5933018 	ldr	r3, [r3, #24]
    6cd8:	e1a00002 	mov	r0, r2
    6cdc:	e1a01003 	mov	r1, r3
    6ce0:	eb0001a6 	bl	7380 <_Z10IF_ConnectP8IF_entryi>
    6ce4:	e3013e70 	movw	r3, #7792	; 0x1e70
    6ce8:	e3403000 	movt	r3, #0
    6cec:	e5933000 	ldr	r3, [r3]
    6cf0:	e5933018 	ldr	r3, [r3, #24]
    6cf4:	e3a0001c 	mov	r0, #28
    6cf8:	e3410000 	movt	r0, #4096	; 0x1000
    6cfc:	e1a01003 	mov	r1, r3
    6d00:	ebfffcfd 	bl	60fc <_Z9Xil_Out32mm>
    6d04:	e3013e70 	movw	r3, #7792	; 0x1e70
    6d08:	e3403000 	movt	r3, #0
    6d0c:	e5932000 	ldr	r2, [r3]
    6d10:	e3003088 	movw	r3, #136	; 0x88
    6d14:	e3403000 	movt	r3, #0
    6d18:	e2822014 	add	r2, r2, #20
    6d1c:	e8930003 	ldm	r3, {r0, r1}
    6d20:	e8820003 	stm	r2, {r0, r1}
    6d24:	e3013e70 	movw	r3, #7792	; 0x1e70
    6d28:	e3403000 	movt	r3, #0
    6d2c:	e3a02000 	mov	r2, #0
    6d30:	e5832000 	str	r2, [r3]
    6d34:	e3013e70 	movw	r3, #7792	; 0x1e70
    6d38:	e3403000 	movt	r3, #0
    6d3c:	e5933000 	ldr	r3, [r3]
    6d40:	e5932000 	ldr	r2, [r3]
    6d44:	e3013e70 	movw	r3, #7792	; 0x1e70
    6d48:	e3403000 	movt	r3, #0
    6d4c:	e5933000 	ldr	r3, [r3]
    6d50:	e5933004 	ldr	r3, [r3, #4]
    6d54:	e1a00002 	mov	r0, r2
    6d58:	e3a01001 	mov	r1, #1
    6d5c:	e1a02003 	mov	r2, r3
    6d60:	eb00040c 	bl	7d98 <_Z12sys_IVC_Sendiii>
    6d64:	e8bd8008 	pop	{r3, pc}

00006d68 <_Z22Int_PL_PR_STOP_Handlerv>:
    6d68:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    6d6c:	e24dd01c 	sub	sp, sp, #28
    6d70:	e3a00030 	mov	r0, #48	; 0x30
    6d74:	e3410000 	movt	r0, #4096	; 0x1000
    6d78:	ebfffcc6 	bl	6098 <_Z8Xil_In32m>
    6d7c:	e58d0014 	str	r0, [sp, #20]
    6d80:	e3a00030 	mov	r0, #48	; 0x30
    6d84:	e3410000 	movt	r0, #4096	; 0x1000
    6d88:	e3a01000 	mov	r1, #0
    6d8c:	ebfffcda 	bl	60fc <_Z9Xil_Out32mm>
    6d90:	e59d3014 	ldr	r3, [sp, #20]
    6d94:	e1a03c23 	lsr	r3, r3, #24
    6d98:	e58d3010 	str	r3, [sp, #16]
    6d9c:	e59d3014 	ldr	r3, [sp, #20]
    6da0:	e1a03823 	lsr	r3, r3, #16
    6da4:	e6ef3073 	uxtb	r3, r3
    6da8:	e58d300c 	str	r3, [sp, #12]
    6dac:	e59d3014 	ldr	r3, [sp, #20]
    6db0:	e1a03423 	lsr	r3, r3, #8
    6db4:	e6ef3073 	uxtb	r3, r3
    6db8:	e58d3008 	str	r3, [sp, #8]
    6dbc:	e3013e60 	movw	r3, #7776	; 0x1e60
    6dc0:	e3403000 	movt	r3, #0
    6dc4:	e59d2008 	ldr	r2, [sp, #8]
    6dc8:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    6dcc:	e58d3004 	str	r3, [sp, #4]
    6dd0:	e59d3004 	ldr	r3, [sp, #4]
    6dd4:	e5932000 	ldr	r2, [r3]
    6dd8:	e59d3004 	ldr	r3, [sp, #4]
    6ddc:	e5933004 	ldr	r3, [r3, #4]
    6de0:	e1a00002 	mov	r0, r2
    6de4:	e3a01002 	mov	r1, #2
    6de8:	e1a02003 	mov	r2, r3
    6dec:	eb0003e9 	bl	7d98 <_Z12sys_IVC_Sendiii>
    6df0:	e3013de0 	movw	r3, #7648	; 0x1de0
    6df4:	e3403000 	movt	r3, #0
    6df8:	e59d2010 	ldr	r2, [sp, #16]
    6dfc:	e1a01182 	lsl	r1, r2, #3
    6e00:	e59d200c 	ldr	r2, [sp, #12]
    6e04:	e0812002 	add	r2, r1, r2
    6e08:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    6e0c:	e58d3000 	str	r3, [sp]
    6e10:	e59d3000 	ldr	r3, [sp]
    6e14:	e3a02001 	mov	r2, #1
    6e18:	e5c32015 	strb	r2, [r3, #21]
    6e1c:	e59d0000 	ldr	r0, [sp]
    6e20:	eb00017f 	bl	7424 <_Z12Run_SolutionP8IF_entry>
    6e24:	e1a03000 	mov	r3, r0
    6e28:	e3530000 	cmp	r3, #0
    6e2c:	13a03000 	movne	r3, #0
    6e30:	03a03001 	moveq	r3, #1
    6e34:	e6ef3073 	uxtb	r3, r3
    6e38:	e3530000 	cmp	r3, #0
    6e3c:	0a000007 	beq	6e60 <_Z22Int_PL_PR_STOP_Handlerv+0xf8>
    6e40:	e59d3000 	ldr	r3, [sp]
    6e44:	e5932000 	ldr	r2, [r3]
    6e48:	e59d3000 	ldr	r3, [sp]
    6e4c:	e5933004 	ldr	r3, [r3, #4]
    6e50:	e1a00002 	mov	r0, r2
    6e54:	e3a01001 	mov	r1, #1
    6e58:	e1a02003 	mov	r2, r3
    6e5c:	eb0003cd 	bl	7d98 <_Z12sys_IVC_Sendiii>
    6e60:	e28dd01c 	add	sp, sp, #28
    6e64:	e8bd8000 	ldmfd	sp!, {pc}

00006e68 <_Z27Int_PL_NEW_SOLUTION_Handlerv>:
    6e68:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    6e6c:	e24dd014 	sub	sp, sp, #20
    6e70:	e3a00034 	mov	r0, #52	; 0x34
    6e74:	e3410000 	movt	r0, #4096	; 0x1000
    6e78:	ebfffc86 	bl	6098 <_Z8Xil_In32m>
    6e7c:	e58d000c 	str	r0, [sp, #12]
    6e80:	e3a00034 	mov	r0, #52	; 0x34
    6e84:	e3410000 	movt	r0, #4096	; 0x1000
    6e88:	e3a01000 	mov	r1, #0
    6e8c:	ebfffc9a 	bl	60fc <_Z9Xil_Out32mm>
    6e90:	e59d300c 	ldr	r3, [sp, #12]
    6e94:	e1a03c23 	lsr	r3, r3, #24
    6e98:	e58d3008 	str	r3, [sp, #8]
    6e9c:	e59d300c 	ldr	r3, [sp, #12]
    6ea0:	e1a03823 	lsr	r3, r3, #16
    6ea4:	e6ef3073 	uxtb	r3, r3
    6ea8:	e58d3004 	str	r3, [sp, #4]
    6eac:	e3013de0 	movw	r3, #7648	; 0x1de0
    6eb0:	e3403000 	movt	r3, #0
    6eb4:	e59d2008 	ldr	r2, [sp, #8]
    6eb8:	e1a01182 	lsl	r1, r2, #3
    6ebc:	e59d2004 	ldr	r2, [sp, #4]
    6ec0:	e0812002 	add	r2, r1, r2
    6ec4:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    6ec8:	e58d3000 	str	r3, [sp]
    6ecc:	e59d300c 	ldr	r3, [sp, #12]
    6ed0:	e1a030a3 	lsr	r3, r3, #1
    6ed4:	e203207f 	and	r2, r3, #127	; 0x7f
    6ed8:	e59d3000 	ldr	r3, [sp]
    6edc:	e5832018 	str	r2, [r3, #24]
    6ee0:	e59d300c 	ldr	r3, [sp, #12]
    6ee4:	e1a03423 	lsr	r3, r3, #8
    6ee8:	e6ef3073 	uxtb	r3, r3
    6eec:	e203307f 	and	r3, r3, #127	; 0x7f
    6ef0:	e6ef2073 	uxtb	r2, r3
    6ef4:	e59d3000 	ldr	r3, [sp]
    6ef8:	e5c32015 	strb	r2, [r3, #21]
    6efc:	e59d300c 	ldr	r3, [sp, #12]
    6f00:	e2033902 	and	r3, r3, #32768	; 0x8000
    6f04:	e3530000 	cmp	r3, #0
    6f08:	03a03000 	moveq	r3, #0
    6f0c:	13a03001 	movne	r3, #1
    6f10:	e6ef2073 	uxtb	r2, r3
    6f14:	e59d3000 	ldr	r3, [sp]
    6f18:	e5c32014 	strb	r2, [r3, #20]
    6f1c:	e59d0000 	ldr	r0, [sp]
    6f20:	eb00013f 	bl	7424 <_Z12Run_SolutionP8IF_entry>
    6f24:	e1a03000 	mov	r3, r0
    6f28:	e3530000 	cmp	r3, #0
    6f2c:	13a03000 	movne	r3, #0
    6f30:	03a03001 	moveq	r3, #1
    6f34:	e6ef3073 	uxtb	r3, r3
    6f38:	e3530000 	cmp	r3, #0
    6f3c:	0a000007 	beq	6f60 <_Z27Int_PL_NEW_SOLUTION_Handlerv+0xf8>
    6f40:	e59d3000 	ldr	r3, [sp]
    6f44:	e5932000 	ldr	r2, [r3]
    6f48:	e59d3000 	ldr	r3, [sp]
    6f4c:	e5933004 	ldr	r3, [r3, #4]
    6f50:	e1a00002 	mov	r0, r2
    6f54:	e3a01001 	mov	r1, #1
    6f58:	e1a02003 	mov	r2, r3
    6f5c:	eb00038d 	bl	7d98 <_Z12sys_IVC_Sendiii>
    6f60:	e28dd014 	add	sp, sp, #20
    6f64:	e8bd8000 	ldmfd	sp!, {pc}

00006f68 <HWManager_IRQ_Handler>:
    6f68:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    6f6c:	e24dd00c 	sub	sp, sp, #12
    6f70:	e30134cc 	movw	r3, #5324	; 0x14cc
    6f74:	e3403000 	movt	r3, #0
    6f78:	e593300c 	ldr	r3, [r3, #12]
    6f7c:	e58d3004 	str	r3, [sp, #4]
    6f80:	e3023694 	movw	r3, #9876	; 0x2694
    6f84:	e3403000 	movt	r3, #0
    6f88:	e59d2004 	ldr	r2, [sp, #4]
    6f8c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    6f90:	e12fff33 	blx	r3
    6f94:	e30134cc 	movw	r3, #5324	; 0x14cc
    6f98:	e3403000 	movt	r3, #0
    6f9c:	e3a02010 	mov	r2, #16
    6fa0:	e59d1004 	ldr	r1, [sp, #4]
    6fa4:	e0833001 	add	r3, r3, r1
    6fa8:	e0833002 	add	r3, r3, r2
    6fac:	e3a02001 	mov	r2, #1
    6fb0:	e5c32000 	strb	r2, [r3]
    6fb4:	e3003080 	movw	r3, #128	; 0x80
    6fb8:	e3403000 	movt	r3, #0
    6fbc:	e5932000 	ldr	r2, [r3]
    6fc0:	e3003080 	movw	r3, #128	; 0x80
    6fc4:	e3403000 	movt	r3, #0
    6fc8:	e5933000 	ldr	r3, [r3]
    6fcc:	e5933000 	ldr	r3, [r3]
    6fd0:	e3c33080 	bic	r3, r3, #128	; 0x80
    6fd4:	e5823000 	str	r3, [r2]
    6fd8:	e3043114 	movw	r3, #16660	; 0x4114
    6fdc:	e3403000 	movt	r3, #0
    6fe0:	e1a00003 	mov	r0, r3
    6fe4:	eb000327 	bl	7c88 <_Z11sys_suspendm>
    6fe8:	eafffffe 	b	6fe8 <HWManager_IRQ_Handler+0x80>

00006fec <_Z18HWManager_Irq_initv>:
    6fec:	e92d4008 	push	{r3, lr}
    6ff0:	e30134cc 	movw	r3, #5324	; 0x14cc
    6ff4:	e3403000 	movt	r3, #0
    6ff8:	e304012c 	movw	r0, #16684	; 0x412c
    6ffc:	e3400000 	movt	r0, #0
    7000:	e1a01003 	mov	r1, r3
    7004:	eb000204 	bl	781c <_Z18guest_IRQ_RegisterPFvvEj>
    7008:	e3a00028 	mov	r0, #40	; 0x28
    700c:	e3061cb8 	movw	r1, #27832	; 0x6cb8
    7010:	e3401000 	movt	r1, #0
    7014:	eb00023c 	bl	790c <_Z15irq_handler_regiPFvvE>
    7018:	e3a0005a 	mov	r0, #90	; 0x5a
    701c:	e3061d68 	movw	r1, #28008	; 0x6d68
    7020:	e3401000 	movt	r1, #0
    7024:	eb000238 	bl	790c <_Z15irq_handler_regiPFvvE>
    7028:	e3a00000 	mov	r0, #0
    702c:	e3061e68 	movw	r1, #28264	; 0x6e68
    7030:	e3401000 	movt	r1, #0
    7034:	eb000234 	bl	790c <_Z15irq_handler_regiPFvvE>
    7038:	e3a00028 	mov	r0, #40	; 0x28
    703c:	eb000213 	bl	7890 <_Z12guest_Irq_Eni>
    7040:	e3a0005a 	mov	r0, #90	; 0x5a
    7044:	eb000211 	bl	7890 <_Z12guest_Irq_Eni>
    7048:	e3a00000 	mov	r0, #0
    704c:	eb00020f 	bl	7890 <_Z12guest_Irq_Eni>
    7050:	e3003080 	movw	r3, #128	; 0x80
    7054:	e3403000 	movt	r3, #0
    7058:	e5932000 	ldr	r2, [r3]
    705c:	e3003080 	movw	r3, #128	; 0x80
    7060:	e3403000 	movt	r3, #0
    7064:	e5933000 	ldr	r3, [r3]
    7068:	e5933000 	ldr	r3, [r3]
    706c:	e3c33080 	bic	r3, r3, #128	; 0x80
    7070:	e5823000 	str	r3, [r2]
    7074:	e8bd8008 	pop	{r3, pc}

00007078 <_Z19False_PCAP_TransferP5XDcfgmm>:
    7078:	e24dd010 	sub	sp, sp, #16
    707c:	e58d000c 	str	r0, [sp, #12]
    7080:	e58d1008 	str	r1, [sp, #8]
    7084:	e58d2004 	str	r2, [sp, #4]
    7088:	e1a00003 	mov	r0, r3
    708c:	e28dd010 	add	sp, sp, #16
    7090:	e12fff1e 	bx	lr

00007094 <_Z8IF_allociii>:
    7094:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    7098:	e24dd01c 	sub	sp, sp, #28
    709c:	e58d000c 	str	r0, [sp, #12]
    70a0:	e58d1008 	str	r1, [sp, #8]
    70a4:	e58d2004 	str	r2, [sp, #4]
    70a8:	e3a0001c 	mov	r0, #28
    70ac:	ebfff4d5 	bl	4408 <malloc>
    70b0:	e1a03000 	mov	r3, r0
    70b4:	e58d3014 	str	r3, [sp, #20]
    70b8:	e59d3014 	ldr	r3, [sp, #20]
    70bc:	e59d200c 	ldr	r2, [sp, #12]
    70c0:	e5832000 	str	r2, [r3]
    70c4:	e59d3014 	ldr	r3, [sp, #20]
    70c8:	e59d2008 	ldr	r2, [sp, #8]
    70cc:	e5832004 	str	r2, [r3, #4]
    70d0:	e59d300c 	ldr	r3, [sp, #12]
    70d4:	e2433003 	sub	r3, r3, #3
    70d8:	e1a02103 	lsl	r2, r3, #2
    70dc:	e59d3008 	ldr	r3, [sp, #8]
    70e0:	e0822003 	add	r2, r2, r3
    70e4:	e59d3014 	ldr	r3, [sp, #20]
    70e8:	e5832008 	str	r2, [r3, #8]
    70ec:	e59d3014 	ldr	r3, [sp, #20]
    70f0:	e3a020ff 	mov	r2, #255	; 0xff
    70f4:	e583200c 	str	r2, [r3, #12]
    70f8:	e59d3014 	ldr	r3, [sp, #20]
    70fc:	e59d2004 	ldr	r2, [sp, #4]
    7100:	e5832010 	str	r2, [r3, #16]
    7104:	e59d2014 	ldr	r2, [sp, #20]
    7108:	e3003088 	movw	r3, #136	; 0x88
    710c:	e3403000 	movt	r3, #0
    7110:	e2822014 	add	r2, r2, #20
    7114:	e8930003 	ldm	r3, {r0, r1}
    7118:	e8820003 	stm	r2, {r0, r1}
    711c:	e59d3008 	ldr	r3, [sp, #8]
    7120:	e2833801 	add	r3, r3, #65536	; 0x10000
    7124:	e2833001 	add	r3, r3, #1
    7128:	e1a03603 	lsl	r3, r3, #12
    712c:	e1a02003 	mov	r2, r3
    7130:	e59d3014 	ldr	r3, [sp, #20]
    7134:	e5933008 	ldr	r3, [r3, #8]
    7138:	e2833919 	add	r3, r3, #409600	; 0x64000
    713c:	e2833001 	add	r3, r3, #1
    7140:	e1a03603 	lsl	r3, r3, #12
    7144:	e59d000c 	ldr	r0, [sp, #12]
    7148:	e1a01002 	mov	r1, r2
    714c:	e1a02003 	mov	r2, r3
    7150:	eb0002dd 	bl	7ccc <_Z23sys_insert_fpga_mappingimm>
    7154:	e59d3014 	ldr	r3, [sp, #20]
    7158:	e1a00003 	mov	r0, r3
    715c:	e28dd01c 	add	sp, sp, #28
    7160:	e8bd8000 	ldmfd	sp!, {pc}

00007164 <_Z17PR_HOST_LIST_initv>:
    7164:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    7168:	e24dd014 	sub	sp, sp, #20
    716c:	e3a03000 	mov	r3, #0
    7170:	e58d300c 	str	r3, [sp, #12]
    7174:	e3a03000 	mov	r3, #0
    7178:	e58d3008 	str	r3, [sp, #8]
    717c:	e3a03000 	mov	r3, #0
    7180:	e58d3004 	str	r3, [sp, #4]
    7184:	ea000021 	b	7210 <_Z17PR_HOST_LIST_initv+0xac>
    7188:	e3a03000 	mov	r3, #0
    718c:	e58d3000 	str	r3, [sp]
    7190:	ea000014 	b	71e8 <_Z17PR_HOST_LIST_initv+0x84>
    7194:	e3013d60 	movw	r3, #7520	; 0x1d60
    7198:	e3403000 	movt	r3, #0
    719c:	e59d2000 	ldr	r2, [sp]
    71a0:	e1a01182 	lsl	r1, r2, #3
    71a4:	e59d2004 	ldr	r2, [sp, #4]
    71a8:	e0812002 	add	r2, r1, r2
    71ac:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    71b0:	e3530000 	cmp	r3, #0
    71b4:	0a000005 	beq	71d0 <_Z17PR_HOST_LIST_initv+0x6c>
    71b8:	e3a02001 	mov	r2, #1
    71bc:	e59d3008 	ldr	r3, [sp, #8]
    71c0:	e1a03312 	lsl	r3, r2, r3
    71c4:	e59d200c 	ldr	r2, [sp, #12]
    71c8:	e1823003 	orr	r3, r2, r3
    71cc:	e58d300c 	str	r3, [sp, #12]
    71d0:	e59d3008 	ldr	r3, [sp, #8]
    71d4:	e2833001 	add	r3, r3, #1
    71d8:	e58d3008 	str	r3, [sp, #8]
    71dc:	e59d3000 	ldr	r3, [sp]
    71e0:	e2833001 	add	r3, r3, #1
    71e4:	e58d3000 	str	r3, [sp]
    71e8:	e59d3000 	ldr	r3, [sp]
    71ec:	e3530003 	cmp	r3, #3
    71f0:	c3a03000 	movgt	r3, #0
    71f4:	d3a03001 	movle	r3, #1
    71f8:	e6ef3073 	uxtb	r3, r3
    71fc:	e3530000 	cmp	r3, #0
    7200:	1affffe3 	bne	7194 <_Z17PR_HOST_LIST_initv+0x30>
    7204:	e59d3004 	ldr	r3, [sp, #4]
    7208:	e2833001 	add	r3, r3, #1
    720c:	e58d3004 	str	r3, [sp, #4]
    7210:	e59d3004 	ldr	r3, [sp, #4]
    7214:	e3530007 	cmp	r3, #7
    7218:	c3a03000 	movgt	r3, #0
    721c:	d3a03001 	movle	r3, #1
    7220:	e6ef3073 	uxtb	r3, r3
    7224:	e3530000 	cmp	r3, #0
    7228:	1affffd6 	bne	7188 <_Z17PR_HOST_LIST_initv+0x24>
    722c:	e3a0003c 	mov	r0, #60	; 0x3c
    7230:	e3410000 	movt	r0, #4096	; 0x1000
    7234:	e59d100c 	ldr	r1, [sp, #12]
    7238:	ebfffbaf 	bl	60fc <_Z9Xil_Out32mm>
    723c:	e28dd014 	add	sp, sp, #20
    7240:	e8bd8000 	ldmfd	sp!, {pc}

00007244 <_Z15check_availableP8IF_entry>:
    7244:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    7248:	e24dd014 	sub	sp, sp, #20
    724c:	e58d0004 	str	r0, [sp, #4]
    7250:	e59d3004 	ldr	r3, [sp, #4]
    7254:	e5933000 	ldr	r3, [r3]
    7258:	e1a02803 	lsl	r2, r3, #16
    725c:	e59d3004 	ldr	r3, [sp, #4]
    7260:	e5933004 	ldr	r3, [r3, #4]
    7264:	e1a03403 	lsl	r3, r3, #8
    7268:	e1822003 	orr	r2, r2, r3
    726c:	e59d3004 	ldr	r3, [sp, #4]
    7270:	e5933010 	ldr	r3, [r3, #16]
    7274:	e1823003 	orr	r3, r2, r3
    7278:	e3c334ff 	bic	r3, r3, #-16777216	; 0xff000000
    727c:	e3a00024 	mov	r0, #36	; 0x24
    7280:	e3410000 	movt	r0, #4096	; 0x1000
    7284:	e1a01003 	mov	r1, r3
    7288:	ebfffb9b 	bl	60fc <_Z9Xil_Out32mm>
    728c:	e3a00028 	mov	r0, #40	; 0x28
    7290:	e3410000 	movt	r0, #4096	; 0x1000
    7294:	ebfffb7f 	bl	6098 <_Z8Xil_In32m>
    7298:	e58d000c 	str	r0, [sp, #12]
    729c:	e59d300c 	ldr	r3, [sp, #12]
    72a0:	e6ef2073 	uxtb	r2, r3
    72a4:	e59d3004 	ldr	r3, [sp, #4]
    72a8:	e5832018 	str	r2, [r3, #24]
    72ac:	e59d300c 	ldr	r3, [sp, #12]
    72b0:	e1a03423 	lsr	r3, r3, #8
    72b4:	e6ef3073 	uxtb	r3, r3
    72b8:	e203307f 	and	r3, r3, #127	; 0x7f
    72bc:	e6ef2073 	uxtb	r2, r3
    72c0:	e59d3004 	ldr	r3, [sp, #4]
    72c4:	e5c32015 	strb	r2, [r3, #21]
    72c8:	e59d300c 	ldr	r3, [sp, #12]
    72cc:	e1a037a3 	lsr	r3, r3, #15
    72d0:	e3530000 	cmp	r3, #0
    72d4:	03a03000 	moveq	r3, #0
    72d8:	13a03001 	movne	r3, #1
    72dc:	e6ef2073 	uxtb	r2, r3
    72e0:	e59d3004 	ldr	r3, [sp, #4]
    72e4:	e5c32014 	strb	r2, [r3, #20]
    72e8:	e28dd014 	add	sp, sp, #20
    72ec:	e8bd8000 	ldmfd	sp!, {pc}

000072f0 <_Z13IF_Disconnecti>:
    72f0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    72f4:	e24dd014 	sub	sp, sp, #20
    72f8:	e58d0004 	str	r0, [sp, #4]
    72fc:	e3013e60 	movw	r3, #7776	; 0x1e60
    7300:	e3403000 	movt	r3, #0
    7304:	e59d2004 	ldr	r2, [sp, #4]
    7308:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    730c:	e58d300c 	str	r3, [sp, #12]
    7310:	e59d300c 	ldr	r3, [sp, #12]
    7314:	e3530000 	cmp	r3, #0
    7318:	0a000016 	beq	7378 <_Z13IF_Disconnecti+0x88>
    731c:	e59d300c 	ldr	r3, [sp, #12]
    7320:	e3a020ff 	mov	r2, #255	; 0xff
    7324:	e583200c 	str	r2, [r3, #12]
    7328:	e3013e60 	movw	r3, #7776	; 0x1e60
    732c:	e3403000 	movt	r3, #0
    7330:	e59d2004 	ldr	r2, [sp, #4]
    7334:	e3a01000 	mov	r1, #0
    7338:	e7831102 	str	r1, [r3, r2, lsl #2]
    733c:	e59d3004 	ldr	r3, [sp, #4]
    7340:	e3a00014 	mov	r0, #20
    7344:	e3410000 	movt	r0, #4096	; 0x1000
    7348:	e1a01003 	mov	r1, r3
    734c:	ebfffb6a 	bl	60fc <_Z9Xil_Out32mm>
    7350:	e59d300c 	ldr	r3, [sp, #12]
    7354:	e5932000 	ldr	r2, [r3]
    7358:	e59d300c 	ldr	r3, [sp, #12]
    735c:	e5933004 	ldr	r3, [r3, #4]
    7360:	e2833801 	add	r3, r3, #65536	; 0x10000
    7364:	e2833001 	add	r3, r3, #1
    7368:	e1a03603 	lsl	r3, r3, #12
    736c:	e1a00002 	mov	r0, r2
    7370:	e1a01003 	mov	r1, r3
    7374:	eb00026f 	bl	7d38 <_Z16sys_fpga_page_roim>
    7378:	e28dd014 	add	sp, sp, #20
    737c:	e8bd8000 	ldmfd	sp!, {pc}

00007380 <_Z10IF_ConnectP8IF_entryi>:
    7380:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    7384:	e24dd00c 	sub	sp, sp, #12
    7388:	e58d0004 	str	r0, [sp, #4]
    738c:	e58d1000 	str	r1, [sp]
    7390:	e59d3004 	ldr	r3, [sp, #4]
    7394:	e59d2000 	ldr	r2, [sp]
    7398:	e583200c 	str	r2, [r3, #12]
    739c:	e3013e60 	movw	r3, #7776	; 0x1e60
    73a0:	e3403000 	movt	r3, #0
    73a4:	e59d2000 	ldr	r2, [sp]
    73a8:	e59d1004 	ldr	r1, [sp, #4]
    73ac:	e7831102 	str	r1, [r3, r2, lsl #2]
    73b0:	e59d3004 	ldr	r3, [sp, #4]
    73b4:	e5933000 	ldr	r3, [r3]
    73b8:	e1a02c03 	lsl	r2, r3, #24
    73bc:	e59d3004 	ldr	r3, [sp, #4]
    73c0:	e5933004 	ldr	r3, [r3, #4]
    73c4:	e1a03803 	lsl	r3, r3, #16
    73c8:	e1822003 	orr	r2, r2, r3
    73cc:	e59d3004 	ldr	r3, [sp, #4]
    73d0:	e5933010 	ldr	r3, [r3, #16]
    73d4:	e1a03403 	lsl	r3, r3, #8
    73d8:	e1822003 	orr	r2, r2, r3
    73dc:	e59d3000 	ldr	r3, [sp]
    73e0:	e1823003 	orr	r3, r2, r3
    73e4:	e3a00010 	mov	r0, #16
    73e8:	e3410000 	movt	r0, #4096	; 0x1000
    73ec:	e1a01003 	mov	r1, r3
    73f0:	ebfffb41 	bl	60fc <_Z9Xil_Out32mm>
    73f4:	e59d3004 	ldr	r3, [sp, #4]
    73f8:	e5932000 	ldr	r2, [r3]
    73fc:	e59d3004 	ldr	r3, [sp, #4]
    7400:	e5933004 	ldr	r3, [r3, #4]
    7404:	e2833801 	add	r3, r3, #65536	; 0x10000
    7408:	e2833001 	add	r3, r3, #1
    740c:	e1a03603 	lsl	r3, r3, #12
    7410:	e1a00002 	mov	r0, r2
    7414:	e1a01003 	mov	r1, r3
    7418:	eb000252 	bl	7d68 <_Z16sys_fpga_page_rwim>
    741c:	e28dd00c 	add	sp, sp, #12
    7420:	e8bd8000 	ldmfd	sp!, {pc}

00007424 <_Z12Run_SolutionP8IF_entry>:
    7424:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    7428:	e24dd00c 	sub	sp, sp, #12
    742c:	e58d0004 	str	r0, [sp, #4]
    7430:	e59d3004 	ldr	r3, [sp, #4]
    7434:	e5d33015 	ldrb	r3, [r3, #21]
    7438:	e3530001 	cmp	r3, #1
    743c:	0a000005 	beq	7458 <_Z12Run_SolutionP8IF_entry+0x34>
    7440:	e3530002 	cmp	r3, #2
    7444:	0a000042 	beq	7554 <_Z12Run_SolutionP8IF_entry+0x130>
    7448:	e3530000 	cmp	r3, #0
    744c:	1a000048 	bne	7574 <_Z12Run_SolutionP8IF_entry+0x150>
    7450:	e3a03001 	mov	r3, #1
    7454:	ea00004a 	b	7584 <_Z12Run_SolutionP8IF_entry+0x160>
    7458:	e59d3004 	ldr	r3, [sp, #4]
    745c:	e5933018 	ldr	r3, [r3, #24]
    7460:	e1a00003 	mov	r0, r3
    7464:	ebffffa1 	bl	72f0 <_Z13IF_Disconnecti>
    7468:	e59d3004 	ldr	r3, [sp, #4]
    746c:	e5d33014 	ldrb	r3, [r3, #20]
    7470:	e3530000 	cmp	r3, #0
    7474:	0a000024 	beq	750c <_Z12Run_SolutionP8IF_entry+0xe8>
    7478:	e59d3004 	ldr	r3, [sp, #4]
    747c:	e5931018 	ldr	r1, [r3, #24]
    7480:	e59d3004 	ldr	r3, [sp, #4]
    7484:	e5932004 	ldr	r2, [r3, #4]
    7488:	e3013d60 	movw	r3, #7520	; 0x1d60
    748c:	e3403000 	movt	r3, #0
    7490:	e1a01181 	lsl	r1, r1, #3
    7494:	e0812002 	add	r2, r1, r2
    7498:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    749c:	e5932000 	ldr	r2, [r3]
    74a0:	e59d3004 	ldr	r3, [sp, #4]
    74a4:	e5930018 	ldr	r0, [r3, #24]
    74a8:	e59d3004 	ldr	r3, [sp, #4]
    74ac:	e5931004 	ldr	r1, [r3, #4]
    74b0:	e3013d60 	movw	r3, #7520	; 0x1d60
    74b4:	e3403000 	movt	r3, #0
    74b8:	e1a00180 	lsl	r0, r0, #3
    74bc:	e0801001 	add	r1, r0, r1
    74c0:	e7933101 	ldr	r3, [r3, r1, lsl #2]
    74c4:	e5933004 	ldr	r3, [r3, #4]
    74c8:	e3010e74 	movw	r0, #7796	; 0x1e74
    74cc:	e3400000 	movt	r0, #0
    74d0:	e1a01002 	mov	r1, r2
    74d4:	e1a02003 	mov	r2, r3
    74d8:	ebfffee6 	bl	7078 <_Z19False_PCAP_TransferP5XDcfgmm>
    74dc:	e59d3004 	ldr	r3, [sp, #4]
    74e0:	e5933018 	ldr	r3, [r3, #24]
    74e4:	e3a00018 	mov	r0, #24
    74e8:	e3410000 	movt	r0, #4096	; 0x1000
    74ec:	e1a01003 	mov	r1, r3
    74f0:	ebfffb01 	bl	60fc <_Z9Xil_Out32mm>
    74f4:	e3013e70 	movw	r3, #7792	; 0x1e70
    74f8:	e3403000 	movt	r3, #0
    74fc:	e59d2004 	ldr	r2, [sp, #4]
    7500:	e5832000 	str	r2, [r3]
    7504:	e3a03001 	mov	r3, #1
    7508:	ea00001d 	b	7584 <_Z12Run_SolutionP8IF_entry+0x160>
    750c:	e59d3004 	ldr	r3, [sp, #4]
    7510:	e5933018 	ldr	r3, [r3, #24]
    7514:	e59d0004 	ldr	r0, [sp, #4]
    7518:	e1a01003 	mov	r1, r3
    751c:	ebffff97 	bl	7380 <_Z10IF_ConnectP8IF_entryi>
    7520:	e59d2004 	ldr	r2, [sp, #4]
    7524:	e3003088 	movw	r3, #136	; 0x88
    7528:	e3403000 	movt	r3, #0
    752c:	e2822014 	add	r2, r2, #20
    7530:	e8930003 	ldm	r3, {r0, r1}
    7534:	e8820003 	stm	r2, {r0, r1}
    7538:	e59d3004 	ldr	r3, [sp, #4]
    753c:	e5933018 	ldr	r3, [r3, #24]
    7540:	e3a0001c 	mov	r0, #28
    7544:	e3410000 	movt	r0, #4096	; 0x1000
    7548:	e1a01003 	mov	r1, r3
    754c:	ebfffaea 	bl	60fc <_Z9Xil_Out32mm>
    7550:	ea00000a 	b	7580 <_Z12Run_SolutionP8IF_entry+0x15c>
    7554:	e59d3004 	ldr	r3, [sp, #4]
    7558:	e5933018 	ldr	r3, [r3, #24]
    755c:	e3a0002c 	mov	r0, #44	; 0x2c
    7560:	e3410000 	movt	r0, #4096	; 0x1000
    7564:	e1a01003 	mov	r1, r3
    7568:	ebfffae3 	bl	60fc <_Z9Xil_Out32mm>
    756c:	e3a03001 	mov	r3, #1
    7570:	ea000003 	b	7584 <_Z12Run_SolutionP8IF_entry+0x160>
    7574:	e300092c 	movw	r0, #2348	; 0x92c
    7578:	e3400000 	movt	r0, #0
    757c:	eb000133 	bl	7a50 <print>
    7580:	e3a03000 	mov	r3, #0
    7584:	e1a00003 	mov	r0, r3
    7588:	e28dd00c 	add	sp, sp, #12
    758c:	e8bd8000 	ldmfd	sp!, {pc}

00007590 <HWManager_Main>:
    7590:	e92d4010 	push	{r4, lr}
    7594:	e24dd010 	sub	sp, sp, #16
    7598:	e58d000c 	str	r0, [sp, #12]
    759c:	e58d1008 	str	r1, [sp, #8]
    75a0:	e58d2004 	str	r2, [sp, #4]
    75a4:	e59d3008 	ldr	r3, [sp, #8]
    75a8:	e283320f 	add	r3, r3, #-268435456	; 0xf0000000
    75ac:	e2433a01 	sub	r3, r3, #4096	; 0x1000
    75b0:	e1a03623 	lsr	r3, r3, #12
    75b4:	e1a02003 	mov	r2, r3
    75b8:	e302368c 	movw	r3, #9868	; 0x268c
    75bc:	e3403000 	movt	r3, #0
    75c0:	e5832000 	str	r2, [r3]
    75c4:	e302368c 	movw	r3, #9868	; 0x268c
    75c8:	e3403000 	movt	r3, #0
    75cc:	e5932000 	ldr	r2, [r3]
    75d0:	e3013de0 	movw	r3, #7648	; 0x1de0
    75d4:	e3403000 	movt	r3, #0
    75d8:	e59d100c 	ldr	r1, [sp, #12]
    75dc:	e1a01181 	lsl	r1, r1, #3
    75e0:	e0812002 	add	r2, r1, r2
    75e4:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    75e8:	e3530000 	cmp	r3, #0
    75ec:	1a000010 	bne	7634 <HWManager_Main+0xa4>
    75f0:	e302368c 	movw	r3, #9868	; 0x268c
    75f4:	e3403000 	movt	r3, #0
    75f8:	e5934000 	ldr	r4, [r3]
    75fc:	e302368c 	movw	r3, #9868	; 0x268c
    7600:	e3403000 	movt	r3, #0
    7604:	e5933000 	ldr	r3, [r3]
    7608:	e59d000c 	ldr	r0, [sp, #12]
    760c:	e1a01003 	mov	r1, r3
    7610:	e59d2004 	ldr	r2, [sp, #4]
    7614:	ebfffe9e 	bl	7094 <_Z8IF_allociii>
    7618:	e1a01000 	mov	r1, r0
    761c:	e3013de0 	movw	r3, #7648	; 0x1de0
    7620:	e3403000 	movt	r3, #0
    7624:	e59d200c 	ldr	r2, [sp, #12]
    7628:	e1a02182 	lsl	r2, r2, #3
    762c:	e0822004 	add	r2, r2, r4
    7630:	e7831102 	str	r1, [r3, r2, lsl #2]
    7634:	e302368c 	movw	r3, #9868	; 0x268c
    7638:	e3403000 	movt	r3, #0
    763c:	e5932000 	ldr	r2, [r3]
    7640:	e3013de0 	movw	r3, #7648	; 0x1de0
    7644:	e3403000 	movt	r3, #0
    7648:	e59d100c 	ldr	r1, [sp, #12]
    764c:	e1a01181 	lsl	r1, r1, #3
    7650:	e0812002 	add	r2, r1, r2
    7654:	e7932102 	ldr	r2, [r3, r2, lsl #2]
    7658:	e3023690 	movw	r3, #9872	; 0x2690
    765c:	e3403000 	movt	r3, #0
    7660:	e5832000 	str	r2, [r3]
    7664:	e3023690 	movw	r3, #9872	; 0x2690
    7668:	e3403000 	movt	r3, #0
    766c:	e5933000 	ldr	r3, [r3]
    7670:	e593300c 	ldr	r3, [r3, #12]
    7674:	e35300ff 	cmp	r3, #255	; 0xff
    7678:	0a000003 	beq	768c <HWManager_Main+0xfc>
    767c:	e3000954 	movw	r0, #2388	; 0x954
    7680:	e3400000 	movt	r0, #0
    7684:	eb0000f1 	bl	7a50 <print>
    7688:	eafffffe 	b	7688 <HWManager_Main+0xf8>
    768c:	e3023690 	movw	r3, #9872	; 0x2690
    7690:	e3403000 	movt	r3, #0
    7694:	e5933000 	ldr	r3, [r3]
    7698:	e5d33015 	ldrb	r3, [r3, #21]
    769c:	e3530003 	cmp	r3, #3
    76a0:	0a00000f 	beq	76e4 <HWManager_Main+0x154>
    76a4:	e3023690 	movw	r3, #9872	; 0x2690
    76a8:	e3403000 	movt	r3, #0
    76ac:	e5933000 	ldr	r3, [r3]
    76b0:	e5932000 	ldr	r2, [r3]
    76b4:	e3023690 	movw	r3, #9872	; 0x2690
    76b8:	e3403000 	movt	r3, #0
    76bc:	e5933000 	ldr	r3, [r3]
    76c0:	e5933004 	ldr	r3, [r3, #4]
    76c4:	e1a00002 	mov	r0, r2
    76c8:	e3a01000 	mov	r1, #0
    76cc:	e1a02003 	mov	r2, r3
    76d0:	eb0001b0 	bl	7d98 <_Z12sys_IVC_Sendiii>
    76d4:	e3000988 	movw	r0, #2440	; 0x988
    76d8:	e3400000 	movt	r0, #0
    76dc:	eb0000db 	bl	7a50 <print>
    76e0:	ea00001c 	b	7758 <HWManager_Main+0x1c8>
    76e4:	e3023690 	movw	r3, #9872	; 0x2690
    76e8:	e3403000 	movt	r3, #0
    76ec:	e5933000 	ldr	r3, [r3]
    76f0:	e1a00003 	mov	r0, r3
    76f4:	ebfffed2 	bl	7244 <_Z15check_availableP8IF_entry>
    76f8:	e3023690 	movw	r3, #9872	; 0x2690
    76fc:	e3403000 	movt	r3, #0
    7700:	e5933000 	ldr	r3, [r3]
    7704:	e1a00003 	mov	r0, r3
    7708:	ebffff45 	bl	7424 <_Z12Run_SolutionP8IF_entry>
    770c:	e1a03000 	mov	r3, r0
    7710:	e3530000 	cmp	r3, #0
    7714:	03a03000 	moveq	r3, #0
    7718:	13a03001 	movne	r3, #1
    771c:	e6ef3073 	uxtb	r3, r3
    7720:	e3530000 	cmp	r3, #0
    7724:	0a00000b 	beq	7758 <HWManager_Main+0x1c8>
    7728:	e3023690 	movw	r3, #9872	; 0x2690
    772c:	e3403000 	movt	r3, #0
    7730:	e5933000 	ldr	r3, [r3]
    7734:	e5932000 	ldr	r2, [r3]
    7738:	e3023690 	movw	r3, #9872	; 0x2690
    773c:	e3403000 	movt	r3, #0
    7740:	e5933000 	ldr	r3, [r3]
    7744:	e5933004 	ldr	r3, [r3, #4]
    7748:	e1a00002 	mov	r0, r2
    774c:	e3a01000 	mov	r1, #0
    7750:	e1a02003 	mov	r2, r3
    7754:	eb00018f 	bl	7d98 <_Z12sys_IVC_Sendiii>
    7758:	e3003080 	movw	r3, #128	; 0x80
    775c:	e3403000 	movt	r3, #0
    7760:	e5932000 	ldr	r2, [r3]
    7764:	e3003080 	movw	r3, #128	; 0x80
    7768:	e3403000 	movt	r3, #0
    776c:	e5933000 	ldr	r3, [r3]
    7770:	e5933000 	ldr	r3, [r3]
    7774:	e3c33080 	bic	r3, r3, #128	; 0x80
    7778:	e5823000 	str	r3, [r2]
    777c:	e3043114 	movw	r3, #16660	; 0x4114
    7780:	e3403000 	movt	r3, #0
    7784:	e1a00003 	mov	r0, r3
    7788:	eb00013e 	bl	7c88 <_Z11sys_suspendm>
    778c:	eafffffe 	b	778c <HWManager_Main+0x1fc>

00007790 <_Z26HW_Task_Manager_Bootloaderv>:
    7790:	e92d4008 	push	{r3, lr}
    7794:	e3000998 	movw	r0, #2456	; 0x998
    7798:	e3400000 	movt	r0, #0
    779c:	eb0000ab 	bl	7a50 <print>
    77a0:	e3010e74 	movw	r0, #7796	; 0x1e74
    77a4:	e3400000 	movt	r0, #0
    77a8:	e3a01000 	mov	r1, #0
    77ac:	ebfff92f 	bl	5c70 <_Z16XDcfg_InitializeP5XDcfgt>
    77b0:	e30009b8 	movw	r0, #2488	; 0x9b8
    77b4:	e3400000 	movt	r0, #0
    77b8:	eb0000a4 	bl	7a50 <print>
    77bc:	eb00013b 	bl	7cb0 <_Z18sys_hwmgr_registerv>
    77c0:	e3a00002 	mov	r0, #2
    77c4:	e3a01201 	mov	r1, #268435456	; 0x10000000
    77c8:	e3a02319 	mov	r2, #1677721600	; 0x64000000
    77cc:	eb00013e 	bl	7ccc <_Z23sys_insert_fpga_mappingimm>
    77d0:	e3a00002 	mov	r0, #2
    77d4:	e3a01201 	mov	r1, #268435456	; 0x10000000
    77d8:	eb000162 	bl	7d68 <_Z16sys_fpga_page_rwim>
    77dc:	ebfffe02 	bl	6fec <_Z18HWManager_Irq_initv>
    77e0:	ebfffe5f 	bl	7164 <_Z17PR_HOST_LIST_initv>
    77e4:	e30009d8 	movw	r0, #2520	; 0x9d8
    77e8:	e3400000 	movt	r0, #0
    77ec:	eb000097 	bl	7a50 <print>
    77f0:	e3043114 	movw	r3, #16660	; 0x4114
    77f4:	e3403000 	movt	r3, #0
    77f8:	e1a00003 	mov	r0, r3
    77fc:	eb000121 	bl	7c88 <_Z11sys_suspendm>
    7800:	eafffffe 	b	7800 <_Z26HW_Task_Manager_Bootloaderv+0x70>

00007804 <_exit>:
    7804:	e24dd008 	sub	sp, sp, #8
    7808:	e58d0004 	str	r0, [sp, #4]
    780c:	eafffffe 	b	780c <_exit+0x8>

00007810 <abort>:
    7810:	e92d4008 	push	{r3, lr}
    7814:	e3a00001 	mov	r0, #1
    7818:	ebfffff9 	bl	7804 <_exit>

0000781c <_Z18guest_IRQ_RegisterPFvvEj>:
    781c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    7820:	e24dd00c 	sub	sp, sp, #12
    7824:	e58d0004 	str	r0, [sp, #4]
    7828:	e58d1000 	str	r1, [sp]
    782c:	e59d3004 	ldr	r3, [sp, #4]
    7830:	e3a00000 	mov	r0, #0
    7834:	e1a01003 	mov	r1, r3
    7838:	e59d2000 	ldr	r2, [sp]
    783c:	eb0000b2 	bl	7b0c <_Z13sys_virq_ctrlijj>
    7840:	e28dd00c 	add	sp, sp, #12
    7844:	e8bd8000 	ldmfd	sp!, {pc}

00007848 <_Z21guest_IRQ_Acknowledgev>:
    7848:	e3023810 	movw	r3, #10256	; 0x2810
    784c:	e3403000 	movt	r3, #0
    7850:	e593300c 	ldr	r3, [r3, #12]
    7854:	e1a00003 	mov	r0, r3
    7858:	e12fff1e 	bx	lr

0000785c <_Z15guest_IRQ_Cleart>:
    785c:	e24dd008 	sub	sp, sp, #8
    7860:	e1a03000 	mov	r3, r0
    7864:	e1cd30b6 	strh	r3, [sp, #6]
    7868:	e1dd10b6 	ldrh	r1, [sp, #6]
    786c:	e3023810 	movw	r3, #10256	; 0x2810
    7870:	e3403000 	movt	r3, #0
    7874:	e3a02010 	mov	r2, #16
    7878:	e0833001 	add	r3, r3, r1
    787c:	e0833002 	add	r3, r3, r2
    7880:	e3a02001 	mov	r2, #1
    7884:	e5c32000 	strb	r2, [r3]
    7888:	e28dd008 	add	sp, sp, #8
    788c:	e12fff1e 	bx	lr

00007890 <_Z12guest_Irq_Eni>:
    7890:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    7894:	e24dd00c 	sub	sp, sp, #12
    7898:	e58d0004 	str	r0, [sp, #4]
    789c:	e59d3004 	ldr	r3, [sp, #4]
    78a0:	e3a00002 	mov	r0, #2
    78a4:	e1a01003 	mov	r1, r3
    78a8:	e3a02000 	mov	r2, #0
    78ac:	eb000096 	bl	7b0c <_Z13sys_virq_ctrlijj>
    78b0:	e28dd00c 	add	sp, sp, #12
    78b4:	e8bd8000 	ldmfd	sp!, {pc}

000078b8 <_Z15guest_Irq_DisEni>:
    78b8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    78bc:	e24dd00c 	sub	sp, sp, #12
    78c0:	e58d0004 	str	r0, [sp, #4]
    78c4:	e59d3004 	ldr	r3, [sp, #4]
    78c8:	e3a00001 	mov	r0, #1
    78cc:	e1a01003 	mov	r1, r3
    78d0:	e3a02000 	mov	r2, #0
    78d4:	eb00008c 	bl	7b0c <_Z13sys_virq_ctrlijj>
    78d8:	e28dd00c 	add	sp, sp, #12
    78dc:	e8bd8000 	ldmfd	sp!, {pc}

000078e0 <_Z20guest_ENTER_CRITICALv>:
    78e0:	e92d4008 	push	{r3, lr}
    78e4:	ebfff239 	bl	41d0 <VM_IRQ_Dis>
    78e8:	e8bd8008 	pop	{r3, pc}

000078ec <_Z19guest_EXIT_CRITICALv>:
    78ec:	e92d4008 	push	{r3, lr}
    78f0:	ebfff22e 	bl	41b0 <VM_IRQ_En>
    78f4:	e8bd8008 	pop	{r3, pc}

000078f8 <_Z14DefaultHandlerv>:
    78f8:	e92d4008 	push	{r3, lr}
    78fc:	e30009ec 	movw	r0, #2540	; 0x9ec
    7900:	e3400000 	movt	r0, #0
    7904:	eb000051 	bl	7a50 <print>
    7908:	e8bd8008 	pop	{r3, pc}

0000790c <_Z15irq_handler_regiPFvvE>:
    790c:	e24dd008 	sub	sp, sp, #8
    7910:	e58d0004 	str	r0, [sp, #4]
    7914:	e58d1000 	str	r1, [sp]
    7918:	e3023694 	movw	r3, #9876	; 0x2694
    791c:	e3403000 	movt	r3, #0
    7920:	e59d2004 	ldr	r2, [sp, #4]
    7924:	e59d1000 	ldr	r1, [sp]
    7928:	e7831102 	str	r1, [r3, r2, lsl #2]
    792c:	e28dd008 	add	sp, sp, #8
    7930:	e12fff1e 	bx	lr

00007934 <_Z8irq_initv>:
    7934:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    7938:	e24dd00c 	sub	sp, sp, #12
    793c:	e3023810 	movw	r3, #10256	; 0x2810
    7940:	e3403000 	movt	r3, #0
    7944:	e3040150 	movw	r0, #16720	; 0x4150
    7948:	e3400000 	movt	r0, #0
    794c:	e1a01003 	mov	r1, r3
    7950:	ebffffb1 	bl	781c <_Z18guest_IRQ_RegisterPFvvEj>
    7954:	e3023810 	movw	r3, #10256	; 0x2810
    7958:	e3403000 	movt	r3, #0
    795c:	e5933000 	ldr	r3, [r3]
    7960:	e3000a0c 	movw	r0, #2572	; 0xa0c
    7964:	e3400000 	movt	r0, #0
    7968:	e1a01003 	mov	r1, r3
    796c:	ebfffb4b 	bl	66a0 <xil_printf>
    7970:	e3a03000 	mov	r3, #0
    7974:	e58d3004 	str	r3, [sp, #4]
    7978:	ea000008 	b	79a0 <_Z8irq_initv+0x6c>
    797c:	e3023694 	movw	r3, #9876	; 0x2694
    7980:	e3403000 	movt	r3, #0
    7984:	e59d1004 	ldr	r1, [sp, #4]
    7988:	e30728f8 	movw	r2, #30968	; 0x78f8
    798c:	e3402000 	movt	r2, #0
    7990:	e7832101 	str	r2, [r3, r1, lsl #2]
    7994:	e59d3004 	ldr	r3, [sp, #4]
    7998:	e2833001 	add	r3, r3, #1
    799c:	e58d3004 	str	r3, [sp, #4]
    79a0:	e59d3004 	ldr	r3, [sp, #4]
    79a4:	e353005e 	cmp	r3, #94	; 0x5e
    79a8:	c3a03000 	movgt	r3, #0
    79ac:	d3a03001 	movle	r3, #1
    79b0:	e6ef3073 	uxtb	r3, r3
    79b4:	e3530000 	cmp	r3, #0
    79b8:	1affffef 	bne	797c <_Z8irq_initv+0x48>
    79bc:	e3000a24 	movw	r0, #2596	; 0xa24
    79c0:	e3400000 	movt	r0, #0
    79c4:	eb000021 	bl	7a50 <print>
    79c8:	e28dd00c 	add	sp, sp, #12
    79cc:	e8bd8000 	ldmfd	sp!, {pc}

000079d0 <irq_handler>:
    79d0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    79d4:	e24dd00c 	sub	sp, sp, #12
    79d8:	ebffff9a 	bl	7848 <_Z21guest_IRQ_Acknowledgev>
    79dc:	e58d0004 	str	r0, [sp, #4]
    79e0:	e3000a44 	movw	r0, #2628	; 0xa44
    79e4:	e3400000 	movt	r0, #0
    79e8:	e59d1004 	ldr	r1, [sp, #4]
    79ec:	ebfffb2b 	bl	66a0 <xil_printf>
    79f0:	e3023694 	movw	r3, #9876	; 0x2694
    79f4:	e3403000 	movt	r3, #0
    79f8:	e59d2004 	ldr	r2, [sp, #4]
    79fc:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    7a00:	e12fff33 	blx	r3
    7a04:	e59d3004 	ldr	r3, [sp, #4]
    7a08:	e6ff3073 	uxth	r3, r3
    7a0c:	e1a00003 	mov	r0, r3
    7a10:	ebffff91 	bl	785c <_Z15guest_IRQ_Cleart>
    7a14:	e1a00000 	nop			; (mov r0, r0)
    7a18:	e28dd00c 	add	sp, sp, #12
    7a1c:	e8bd8000 	ldmfd	sp!, {pc}

00007a20 <_Z12sgi_generatem>:
    7a20:	e24dd008 	sub	sp, sp, #8
    7a24:	e58d0004 	str	r0, [sp, #4]
    7a28:	f57ff06f 	isb	sy
    7a2c:	e3a03c1f 	mov	r3, #7936	; 0x1f00
    7a30:	e34f38f0 	movt	r3, #63728	; 0xf8f0
    7a34:	e59d2004 	ldr	r2, [sp, #4]
    7a38:	e3822801 	orr	r2, r2, #65536	; 0x10000
    7a3c:	e5832000 	str	r2, [r3]
    7a40:	f57ff06f 	isb	sy
    7a44:	e320f003 	wfi
    7a48:	e28dd008 	add	sp, sp, #8
    7a4c:	e12fff1e 	bx	lr

00007a50 <print>:
    7a50:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    7a54:	e24dd00c 	sub	sp, sp, #12
    7a58:	e58d0004 	str	r0, [sp, #4]
    7a5c:	ea000006 	b	7a7c <print+0x2c>
    7a60:	e59d3004 	ldr	r3, [sp, #4]
    7a64:	e5d33000 	ldrb	r3, [r3]
    7a68:	e59d2004 	ldr	r2, [sp, #4]
    7a6c:	e2822001 	add	r2, r2, #1
    7a70:	e58d2004 	str	r2, [sp, #4]
    7a74:	e1a00003 	mov	r0, r3
    7a78:	ebfff8f7 	bl	5e5c <outbyte>
    7a7c:	e59d3004 	ldr	r3, [sp, #4]
    7a80:	e5d33000 	ldrb	r3, [r3]
    7a84:	e3530000 	cmp	r3, #0
    7a88:	03a03000 	moveq	r3, #0
    7a8c:	13a03001 	movne	r3, #1
    7a90:	e6ef3073 	uxtb	r3, r3
    7a94:	e3530000 	cmp	r3, #0
    7a98:	1afffff0 	bne	7a60 <print+0x10>
    7a9c:	e28dd00c 	add	sp, sp, #12
    7aa0:	e8bd8000 	ldmfd	sp!, {pc}

00007aa4 <_Z13sys_create_ecPFvvEPvi>:
    7aa4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    7aa8:	e24dd014 	sub	sp, sp, #20
    7aac:	e58d000c 	str	r0, [sp, #12]
    7ab0:	e58d1008 	str	r1, [sp, #8]
    7ab4:	e58d2004 	str	r2, [sp, #4]
    7ab8:	e59d100c 	ldr	r1, [sp, #12]
    7abc:	e59d2008 	ldr	r2, [sp, #8]
    7ac0:	e59d3004 	ldr	r3, [sp, #4]
    7ac4:	e3a00000 	mov	r0, #0
    7ac8:	ebfff1b5 	bl	41a4 <syscall>
    7acc:	e28dd014 	add	sp, sp, #20
    7ad0:	e8bd8000 	ldmfd	sp!, {pc}

00007ad4 <_Z9sys_yieldv>:
    7ad4:	e92d4008 	push	{r3, lr}
    7ad8:	e3a00001 	mov	r0, #1
    7adc:	e3a01000 	mov	r1, #0
    7ae0:	e3a02000 	mov	r2, #0
    7ae4:	e3a03000 	mov	r3, #0
    7ae8:	ebfff1ad 	bl	41a4 <syscall>
    7aec:	e8bd8008 	pop	{r3, pc}

00007af0 <_Z18sys_dcache_disablev>:
    7af0:	e92d4008 	push	{r3, lr}
    7af4:	e3a00003 	mov	r0, #3
    7af8:	e3a01000 	mov	r1, #0
    7afc:	e3a02000 	mov	r2, #0
    7b00:	e3a03000 	mov	r3, #0
    7b04:	ebfff1a6 	bl	41a4 <syscall>
    7b08:	e8bd8008 	pop	{r3, pc}

00007b0c <_Z13sys_virq_ctrlijj>:
    7b0c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    7b10:	e24dd014 	sub	sp, sp, #20
    7b14:	e58d000c 	str	r0, [sp, #12]
    7b18:	e58d1008 	str	r1, [sp, #8]
    7b1c:	e58d2004 	str	r2, [sp, #4]
    7b20:	e59d300c 	ldr	r3, [sp, #12]
    7b24:	e3a00008 	mov	r0, #8
    7b28:	e1a01003 	mov	r1, r3
    7b2c:	e59d2008 	ldr	r2, [sp, #8]
    7b30:	e59d3004 	ldr	r3, [sp, #4]
    7b34:	ebfff19a 	bl	41a4 <syscall>
    7b38:	e1a03000 	mov	r3, r0
    7b3c:	e1a00003 	mov	r0, r3
    7b40:	e28dd014 	add	sp, sp, #20
    7b44:	e8bd8000 	ldmfd	sp!, {pc}

00007b48 <_Z9sys_remapm>:
    7b48:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    7b4c:	e24dd00c 	sub	sp, sp, #12
    7b50:	e58d0004 	str	r0, [sp, #4]
    7b54:	e3a00009 	mov	r0, #9
    7b58:	e59d1004 	ldr	r1, [sp, #4]
    7b5c:	e3a02000 	mov	r2, #0
    7b60:	e3a03000 	mov	r3, #0
    7b64:	ebfff18e 	bl	41a4 <syscall>
    7b68:	e28dd00c 	add	sp, sp, #12
    7b6c:	e8bd8000 	ldmfd	sp!, {pc}

00007b70 <_Z18sys_insert_mappingmmm>:
    7b70:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    7b74:	e24dd014 	sub	sp, sp, #20
    7b78:	e58d000c 	str	r0, [sp, #12]
    7b7c:	e58d1008 	str	r1, [sp, #8]
    7b80:	e58d2004 	str	r2, [sp, #4]
    7b84:	e3a0000a 	mov	r0, #10
    7b88:	e59d100c 	ldr	r1, [sp, #12]
    7b8c:	e59d2008 	ldr	r2, [sp, #8]
    7b90:	e59d3004 	ldr	r3, [sp, #4]
    7b94:	ebfff182 	bl	41a4 <syscall>
    7b98:	e28dd014 	add	sp, sp, #20
    7b9c:	e8bd8000 	ldmfd	sp!, {pc}

00007ba0 <_Z21sys_create_messageboxi>:
    7ba0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    7ba4:	e24dd00c 	sub	sp, sp, #12
    7ba8:	e58d0004 	str	r0, [sp, #4]
    7bac:	e59d3004 	ldr	r3, [sp, #4]
    7bb0:	e3a0000c 	mov	r0, #12
    7bb4:	e1a01003 	mov	r1, r3
    7bb8:	e3a02000 	mov	r2, #0
    7bbc:	e3a03000 	mov	r3, #0
    7bc0:	ebfff177 	bl	41a4 <syscall>
    7bc4:	e28dd00c 	add	sp, sp, #12
    7bc8:	e8bd8000 	ldmfd	sp!, {pc}

00007bcc <_Z15sys_create_pdirmmm>:
    7bcc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    7bd0:	e24dd014 	sub	sp, sp, #20
    7bd4:	e58d000c 	str	r0, [sp, #12]
    7bd8:	e58d1008 	str	r1, [sp, #8]
    7bdc:	e58d2004 	str	r2, [sp, #4]
    7be0:	e3a0000f 	mov	r0, #15
    7be4:	e59d100c 	ldr	r1, [sp, #12]
    7be8:	e59d2008 	ldr	r2, [sp, #8]
    7bec:	e59d3004 	ldr	r3, [sp, #4]
    7bf0:	ebfff16b 	bl	41a4 <syscall>
    7bf4:	e1a03000 	mov	r3, r0
    7bf8:	e1a00003 	mov	r0, r3
    7bfc:	e28dd014 	add	sp, sp, #20
    7c00:	e8bd8000 	ldmfd	sp!, {pc}

00007c04 <_Z13sys_create_osmimi>:
    7c04:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    7c08:	e24dd014 	sub	sp, sp, #20
    7c0c:	e58d000c 	str	r0, [sp, #12]
    7c10:	e58d1008 	str	r1, [sp, #8]
    7c14:	e58d2004 	str	r2, [sp, #4]
    7c18:	e58d3000 	str	r3, [sp]
    7c1c:	e59d3000 	ldr	r3, [sp]
    7c20:	e3530000 	cmp	r3, #0
    7c24:	1a000005 	bne	7c40 <_Z13sys_create_osmimi+0x3c>
    7c28:	e59d3008 	ldr	r3, [sp, #8]
    7c2c:	e3a00010 	mov	r0, #16
    7c30:	e59d100c 	ldr	r1, [sp, #12]
    7c34:	e1a02003 	mov	r2, r3
    7c38:	e59d3004 	ldr	r3, [sp, #4]
    7c3c:	ebfff158 	bl	41a4 <syscall>
    7c40:	e59d3000 	ldr	r3, [sp]
    7c44:	e3530001 	cmp	r3, #1
    7c48:	1a000005 	bne	7c64 <_Z13sys_create_osmimi+0x60>
    7c4c:	e59d3008 	ldr	r3, [sp, #8]
    7c50:	e3a0001b 	mov	r0, #27
    7c54:	e59d100c 	ldr	r1, [sp, #12]
    7c58:	e1a02003 	mov	r2, r3
    7c5c:	e59d3004 	ldr	r3, [sp, #4]
    7c60:	ebfff14f 	bl	41a4 <syscall>
    7c64:	e28dd014 	add	sp, sp, #20
    7c68:	e8bd8000 	ldmfd	sp!, {pc}

00007c6c <_Z14sys_reschedulev>:
    7c6c:	e92d4008 	push	{r3, lr}
    7c70:	e3a00011 	mov	r0, #17
    7c74:	e3a01000 	mov	r1, #0
    7c78:	e3a02000 	mov	r2, #0
    7c7c:	e3a03000 	mov	r3, #0
    7c80:	ebfff147 	bl	41a4 <syscall>
    7c84:	e8bd8008 	pop	{r3, pc}

00007c88 <_Z11sys_suspendm>:
    7c88:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    7c8c:	e24dd00c 	sub	sp, sp, #12
    7c90:	e58d0004 	str	r0, [sp, #4]
    7c94:	e3a00012 	mov	r0, #18
    7c98:	e59d1004 	ldr	r1, [sp, #4]
    7c9c:	e3a02000 	mov	r2, #0
    7ca0:	e3a03000 	mov	r3, #0
    7ca4:	ebfff13e 	bl	41a4 <syscall>
    7ca8:	e28dd00c 	add	sp, sp, #12
    7cac:	e8bd8000 	ldmfd	sp!, {pc}

00007cb0 <_Z18sys_hwmgr_registerv>:
    7cb0:	e92d4008 	push	{r3, lr}
    7cb4:	e3a00013 	mov	r0, #19
    7cb8:	e3a01000 	mov	r1, #0
    7cbc:	e3a02000 	mov	r2, #0
    7cc0:	e3a03000 	mov	r3, #0
    7cc4:	ebfff136 	bl	41a4 <syscall>
    7cc8:	e8bd8008 	pop	{r3, pc}

00007ccc <_Z23sys_insert_fpga_mappingimm>:
    7ccc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    7cd0:	e24dd014 	sub	sp, sp, #20
    7cd4:	e58d000c 	str	r0, [sp, #12]
    7cd8:	e58d1008 	str	r1, [sp, #8]
    7cdc:	e58d2004 	str	r2, [sp, #4]
    7ce0:	e59d300c 	ldr	r3, [sp, #12]
    7ce4:	e3a00017 	mov	r0, #23
    7ce8:	e1a01003 	mov	r1, r3
    7cec:	e59d2008 	ldr	r2, [sp, #8]
    7cf0:	e59d3004 	ldr	r3, [sp, #4]
    7cf4:	ebfff12a 	bl	41a4 <syscall>
    7cf8:	e1a03000 	mov	r3, r0
    7cfc:	e1a00003 	mov	r0, r3
    7d00:	e28dd014 	add	sp, sp, #20
    7d04:	e8bd8000 	ldmfd	sp!, {pc}

00007d08 <_Z23sys_delete_fpga_mappingim>:
    7d08:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    7d0c:	e24dd00c 	sub	sp, sp, #12
    7d10:	e58d0004 	str	r0, [sp, #4]
    7d14:	e58d1000 	str	r1, [sp]
    7d18:	e59d3004 	ldr	r3, [sp, #4]
    7d1c:	e3a00018 	mov	r0, #24
    7d20:	e1a01003 	mov	r1, r3
    7d24:	e59d2000 	ldr	r2, [sp]
    7d28:	e3a03000 	mov	r3, #0
    7d2c:	ebfff11c 	bl	41a4 <syscall>
    7d30:	e28dd00c 	add	sp, sp, #12
    7d34:	e8bd8000 	ldmfd	sp!, {pc}

00007d38 <_Z16sys_fpga_page_roim>:
    7d38:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    7d3c:	e24dd00c 	sub	sp, sp, #12
    7d40:	e58d0004 	str	r0, [sp, #4]
    7d44:	e58d1000 	str	r1, [sp]
    7d48:	e59d3004 	ldr	r3, [sp, #4]
    7d4c:	e3a00018 	mov	r0, #24
    7d50:	e1a01003 	mov	r1, r3
    7d54:	e59d2000 	ldr	r2, [sp]
    7d58:	e3a03001 	mov	r3, #1
    7d5c:	ebfff110 	bl	41a4 <syscall>
    7d60:	e28dd00c 	add	sp, sp, #12
    7d64:	e8bd8000 	ldmfd	sp!, {pc}

00007d68 <_Z16sys_fpga_page_rwim>:
    7d68:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    7d6c:	e24dd00c 	sub	sp, sp, #12
    7d70:	e58d0004 	str	r0, [sp, #4]
    7d74:	e58d1000 	str	r1, [sp]
    7d78:	e59d3004 	ldr	r3, [sp, #4]
    7d7c:	e3a00018 	mov	r0, #24
    7d80:	e1a01003 	mov	r1, r3
    7d84:	e59d2000 	ldr	r2, [sp]
    7d88:	e3a03002 	mov	r3, #2
    7d8c:	ebfff104 	bl	41a4 <syscall>
    7d90:	e28dd00c 	add	sp, sp, #12
    7d94:	e8bd8000 	ldmfd	sp!, {pc}

00007d98 <_Z12sys_IVC_Sendiii>:
    7d98:	e24dd010 	sub	sp, sp, #16
    7d9c:	e58d000c 	str	r0, [sp, #12]
    7da0:	e58d1008 	str	r1, [sp, #8]
    7da4:	e58d2004 	str	r2, [sp, #4]
    7da8:	e28dd010 	add	sp, sp, #16
    7dac:	e12fff1e 	bx	lr

00007db0 <_Z8sys_voidv>:
    7db0:	e92d4008 	push	{r3, lr}
    7db4:	e3a00000 	mov	r0, #0
    7db8:	e3a01000 	mov	r1, #0
    7dbc:	ebfff831 	bl	5e88 <_Z13XTime_SetTimey>
    7dc0:	e3a00063 	mov	r0, #99	; 0x63
    7dc4:	e3a01000 	mov	r1, #0
    7dc8:	e3a02000 	mov	r2, #0
    7dcc:	e3a03000 	mov	r3, #0
    7dd0:	ebfff0f3 	bl	41a4 <syscall>
    7dd4:	ebfff845 	bl	5ef0 <_Z13timeprint_lowv>
    7dd8:	e3000a4c 	movw	r0, #2636	; 0xa4c
    7ddc:	e3400000 	movt	r0, #0
    7de0:	ebffff1a 	bl	7a50 <print>
    7de4:	e8bd8008 	pop	{r3, pc}

00007de8 <_Z13boot_guest_osmii>:
    7de8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    7dec:	e24dd074 	sub	sp, sp, #116	; 0x74
    7df0:	e58d000c 	str	r0, [sp, #12]
    7df4:	e58d1008 	str	r1, [sp, #8]
    7df8:	e58d2004 	str	r2, [sp, #4]
    7dfc:	e3e03000 	mvn	r3, #0
    7e00:	e58d306c 	str	r3, [sp, #108]	; 0x6c
    7e04:	e3e03000 	mvn	r3, #0
    7e08:	e58d3068 	str	r3, [sp, #104]	; 0x68
    7e0c:	e3a03000 	mov	r3, #0
    7e10:	e58d3064 	str	r3, [sp, #100]	; 0x64
    7e14:	e59d300c 	ldr	r3, [sp, #12]
    7e18:	e3c334ff 	bic	r3, r3, #-16777216	; 0xff000000
    7e1c:	e3c3360f 	bic	r3, r3, #15728640	; 0xf00000
    7e20:	e58d3058 	str	r3, [sp, #88]	; 0x58
    7e24:	e3000a68 	movw	r0, #2664	; 0xa68
    7e28:	e3400000 	movt	r0, #0
    7e2c:	ebffff07 	bl	7a50 <print>
    7e30:	e59d000c 	ldr	r0, [sp, #12]
    7e34:	ebffff43 	bl	7b48 <_Z9sys_remapm>
    7e38:	e59d3058 	ldr	r3, [sp, #88]	; 0x58
    7e3c:	e28334df 	add	r3, r3, #-553648128	; 0xdf000000
    7e40:	e2833601 	add	r3, r3, #1048576	; 0x100000
    7e44:	e58d3054 	str	r3, [sp, #84]	; 0x54
    7e48:	e59d3054 	ldr	r3, [sp, #84]	; 0x54
    7e4c:	e5932000 	ldr	r2, [r3]
    7e50:	e304357f 	movw	r3, #17791	; 0x457f
    7e54:	e344364c 	movt	r3, #17996	; 0x464c
    7e58:	e1520003 	cmp	r2, r3
    7e5c:	1a000007 	bne	7e80 <_Z13boot_guest_osmii+0x98>
    7e60:	e59d3054 	ldr	r3, [sp, #84]	; 0x54
    7e64:	e5d33005 	ldrb	r3, [r3, #5]
    7e68:	e3530001 	cmp	r3, #1
    7e6c:	1a000003 	bne	7e80 <_Z13boot_guest_osmii+0x98>
    7e70:	e59d3054 	ldr	r3, [sp, #84]	; 0x54
    7e74:	e1d331b0 	ldrh	r3, [r3, #16]
    7e78:	e3530002 	cmp	r3, #2
    7e7c:	0a000003 	beq	7e90 <_Z13boot_guest_osmii+0xa8>
    7e80:	e3000a8c 	movw	r0, #2700	; 0xa8c
    7e84:	e3400000 	movt	r0, #0
    7e88:	ebfffef0 	bl	7a50 <print>
    7e8c:	ea000094 	b	80e4 <_Z13boot_guest_osmii+0x2fc>
    7e90:	e59d3054 	ldr	r3, [sp, #84]	; 0x54
    7e94:	e1d332bc 	ldrh	r3, [r3, #44]	; 0x2c
    7e98:	e58d305c 	str	r3, [sp, #92]	; 0x5c
    7e9c:	e59d3054 	ldr	r3, [sp, #84]	; 0x54
    7ea0:	e5933018 	ldr	r3, [r3, #24]
    7ea4:	e58d3050 	str	r3, [sp, #80]	; 0x50
    7ea8:	e59d3054 	ldr	r3, [sp, #84]	; 0x54
    7eac:	e593201c 	ldr	r2, [r3, #28]
    7eb0:	e59d3054 	ldr	r3, [sp, #84]	; 0x54
    7eb4:	e0823003 	add	r3, r2, r3
    7eb8:	e58d3060 	str	r3, [sp, #96]	; 0x60
    7ebc:	ea000074 	b	8094 <_Z13boot_guest_osmii+0x2ac>
    7ec0:	e59d3060 	ldr	r3, [sp, #96]	; 0x60
    7ec4:	e5932004 	ldr	r2, [r3, #4]
    7ec8:	e59d300c 	ldr	r3, [sp, #12]
    7ecc:	e0823003 	add	r3, r2, r3
    7ed0:	e58d3044 	str	r3, [sp, #68]	; 0x44
    7ed4:	e3a03a01 	mov	r3, #4096	; 0x1000
    7ed8:	e58d3040 	str	r3, [sp, #64]	; 0x40
    7edc:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
    7ee0:	e2633000 	rsb	r3, r3, #0
    7ee4:	e59d2044 	ldr	r2, [sp, #68]	; 0x44
    7ee8:	e0023003 	and	r3, r2, r3
    7eec:	e58d3044 	str	r3, [sp, #68]	; 0x44
    7ef0:	e59d3044 	ldr	r3, [sp, #68]	; 0x44
    7ef4:	e1a02003 	mov	r2, r3
    7ef8:	e59d306c 	ldr	r3, [sp, #108]	; 0x6c
    7efc:	e1520003 	cmp	r2, r3
    7f00:	23a03000 	movcs	r3, #0
    7f04:	33a03001 	movcc	r3, #1
    7f08:	e6ef3073 	uxtb	r3, r3
    7f0c:	e3530000 	cmp	r3, #0
    7f10:	0a00000d 	beq	7f4c <_Z13boot_guest_osmii+0x164>
    7f14:	e59d3060 	ldr	r3, [sp, #96]	; 0x60
    7f18:	e5932004 	ldr	r2, [r3, #4]
    7f1c:	e59d300c 	ldr	r3, [sp, #12]
    7f20:	e0823003 	add	r3, r2, r3
    7f24:	e58d303c 	str	r3, [sp, #60]	; 0x3c
    7f28:	e3a03a01 	mov	r3, #4096	; 0x1000
    7f2c:	e58d3038 	str	r3, [sp, #56]	; 0x38
    7f30:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
    7f34:	e2633000 	rsb	r3, r3, #0
    7f38:	e59d203c 	ldr	r2, [sp, #60]	; 0x3c
    7f3c:	e0023003 	and	r3, r2, r3
    7f40:	e58d303c 	str	r3, [sp, #60]	; 0x3c
    7f44:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
    7f48:	e58d306c 	str	r3, [sp, #108]	; 0x6c
    7f4c:	e59d3060 	ldr	r3, [sp, #96]	; 0x60
    7f50:	e5933008 	ldr	r3, [r3, #8]
    7f54:	e58d3034 	str	r3, [sp, #52]	; 0x34
    7f58:	e3a03a01 	mov	r3, #4096	; 0x1000
    7f5c:	e58d3030 	str	r3, [sp, #48]	; 0x30
    7f60:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
    7f64:	e2633000 	rsb	r3, r3, #0
    7f68:	e59d2034 	ldr	r2, [sp, #52]	; 0x34
    7f6c:	e0023003 	and	r3, r2, r3
    7f70:	e58d3034 	str	r3, [sp, #52]	; 0x34
    7f74:	e59d3034 	ldr	r3, [sp, #52]	; 0x34
    7f78:	e1a02003 	mov	r2, r3
    7f7c:	e59d3068 	ldr	r3, [sp, #104]	; 0x68
    7f80:	e1520003 	cmp	r2, r3
    7f84:	23a03000 	movcs	r3, #0
    7f88:	33a03001 	movcc	r3, #1
    7f8c:	e6ef3073 	uxtb	r3, r3
    7f90:	e3530000 	cmp	r3, #0
    7f94:	0a00000b 	beq	7fc8 <_Z13boot_guest_osmii+0x1e0>
    7f98:	e59d3060 	ldr	r3, [sp, #96]	; 0x60
    7f9c:	e5933008 	ldr	r3, [r3, #8]
    7fa0:	e58d302c 	str	r3, [sp, #44]	; 0x2c
    7fa4:	e3a03a01 	mov	r3, #4096	; 0x1000
    7fa8:	e58d3028 	str	r3, [sp, #40]	; 0x28
    7fac:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
    7fb0:	e2633000 	rsb	r3, r3, #0
    7fb4:	e59d202c 	ldr	r2, [sp, #44]	; 0x2c
    7fb8:	e0023003 	and	r3, r2, r3
    7fbc:	e58d302c 	str	r3, [sp, #44]	; 0x2c
    7fc0:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
    7fc4:	e58d3068 	str	r3, [sp, #104]	; 0x68
    7fc8:	e59d3060 	ldr	r3, [sp, #96]	; 0x60
    7fcc:	e5932008 	ldr	r2, [r3, #8]
    7fd0:	e59d3060 	ldr	r3, [sp, #96]	; 0x60
    7fd4:	e5933008 	ldr	r3, [r3, #8]
    7fd8:	e58d3024 	str	r3, [sp, #36]	; 0x24
    7fdc:	e3a03a01 	mov	r3, #4096	; 0x1000
    7fe0:	e58d3020 	str	r3, [sp, #32]
    7fe4:	e59d3020 	ldr	r3, [sp, #32]
    7fe8:	e2633000 	rsb	r3, r3, #0
    7fec:	e59d1024 	ldr	r1, [sp, #36]	; 0x24
    7ff0:	e0013003 	and	r3, r1, r3
    7ff4:	e58d3024 	str	r3, [sp, #36]	; 0x24
    7ff8:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
    7ffc:	e0633002 	rsb	r3, r3, r2
    8000:	e58d304c 	str	r3, [sp, #76]	; 0x4c
    8004:	e59d3060 	ldr	r3, [sp, #96]	; 0x60
    8008:	e5932014 	ldr	r2, [r3, #20]
    800c:	e59d304c 	ldr	r3, [sp, #76]	; 0x4c
    8010:	e0823003 	add	r3, r2, r3
    8014:	e58d301c 	str	r3, [sp, #28]
    8018:	e3a03a01 	mov	r3, #4096	; 0x1000
    801c:	e58d3018 	str	r3, [sp, #24]
    8020:	e59d201c 	ldr	r2, [sp, #28]
    8024:	e59d3018 	ldr	r3, [sp, #24]
    8028:	e0823003 	add	r3, r2, r3
    802c:	e2433001 	sub	r3, r3, #1
    8030:	e58d301c 	str	r3, [sp, #28]
    8034:	e59d301c 	ldr	r3, [sp, #28]
    8038:	e58d3014 	str	r3, [sp, #20]
    803c:	e59d3018 	ldr	r3, [sp, #24]
    8040:	e58d3010 	str	r3, [sp, #16]
    8044:	e59d3010 	ldr	r3, [sp, #16]
    8048:	e2633000 	rsb	r3, r3, #0
    804c:	e59d2014 	ldr	r2, [sp, #20]
    8050:	e0023003 	and	r3, r2, r3
    8054:	e58d3014 	str	r3, [sp, #20]
    8058:	e59d3014 	ldr	r3, [sp, #20]
    805c:	e59d2064 	ldr	r2, [sp, #100]	; 0x64
    8060:	e0823003 	add	r3, r2, r3
    8064:	e58d3064 	str	r3, [sp, #100]	; 0x64
    8068:	e59d2068 	ldr	r2, [sp, #104]	; 0x68
    806c:	e3033fff 	movw	r3, #16383	; 0x3fff
    8070:	e1520003 	cmp	r2, r3
    8074:	8a000003 	bhi	8088 <_Z13boot_guest_osmii+0x2a0>
    8078:	e3000aac 	movw	r0, #2732	; 0xaac
    807c:	e3400000 	movt	r0, #0
    8080:	ebfffe72 	bl	7a50 <print>
    8084:	ea000016 	b	80e4 <_Z13boot_guest_osmii+0x2fc>
    8088:	e59d3060 	ldr	r3, [sp, #96]	; 0x60
    808c:	e2833020 	add	r3, r3, #32
    8090:	e58d3060 	str	r3, [sp, #96]	; 0x60
    8094:	e59d305c 	ldr	r3, [sp, #92]	; 0x5c
    8098:	e3530000 	cmp	r3, #0
    809c:	03a03000 	moveq	r3, #0
    80a0:	13a03001 	movne	r3, #1
    80a4:	e6ef3073 	uxtb	r3, r3
    80a8:	e59d205c 	ldr	r2, [sp, #92]	; 0x5c
    80ac:	e2422001 	sub	r2, r2, #1
    80b0:	e58d205c 	str	r2, [sp, #92]	; 0x5c
    80b4:	e3530000 	cmp	r3, #0
    80b8:	1affff80 	bne	7ec0 <_Z13boot_guest_osmii+0xd8>
    80bc:	e59d006c 	ldr	r0, [sp, #108]	; 0x6c
    80c0:	e59d1068 	ldr	r1, [sp, #104]	; 0x68
    80c4:	e59d2064 	ldr	r2, [sp, #100]	; 0x64
    80c8:	ebfffebf 	bl	7bcc <_Z15sys_create_pdirmmm>
    80cc:	e58d0048 	str	r0, [sp, #72]	; 0x48
    80d0:	e59d0050 	ldr	r0, [sp, #80]	; 0x50
    80d4:	e59d1008 	ldr	r1, [sp, #8]
    80d8:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
    80dc:	e59d3004 	ldr	r3, [sp, #4]
    80e0:	ebfffec7 	bl	7c04 <_Z13sys_create_osmimi>
    80e4:	e28dd074 	add	sp, sp, #116	; 0x74
    80e8:	e8bd8000 	ldmfd	sp!, {pc}

000080ec <_Z16InterruptHandlerv>:
    80ec:	e92d4008 	push	{r3, lr}
    80f0:	e3000ad0 	movw	r0, #2768	; 0xad0
    80f4:	e3400000 	movt	r0, #0
    80f8:	ebfffe54 	bl	7a50 <print>
    80fc:	e3a03000 	mov	r3, #0
    8100:	e34e3030 	movt	r3, #57392	; 0xe030
    8104:	e3a02000 	mov	r2, #0
    8108:	e5832000 	str	r2, [r3]
    810c:	e8bd8008 	pop	{r3, pc}

00008110 <main_func>:
    8110:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    8114:	e24ddf83 	sub	sp, sp, #524	; 0x20c
    8118:	e3000aec 	movw	r0, #2796	; 0xaec
    811c:	e3400000 	movt	r0, #0
    8120:	ebfffe4a 	bl	7a50 <print>
    8124:	e3a03001 	mov	r3, #1
    8128:	e58d3204 	str	r3, [sp, #516]	; 0x204
    812c:	e59d3204 	ldr	r3, [sp, #516]	; 0x204
    8130:	e1a03403 	lsl	r3, r3, #8
    8134:	e28d2004 	add	r2, sp, #4
    8138:	e0823003 	add	r3, r2, r3
    813c:	e3070790 	movw	r0, #30608	; 0x7790
    8140:	e3400000 	movt	r0, #0
    8144:	e1a01003 	mov	r1, r3
    8148:	e3a02003 	mov	r2, #3
    814c:	ebfffe54 	bl	7aa4 <_Z13sys_create_ecPFvvEPvi>
    8150:	e3a00a0f 	mov	r0, #61440	; 0xf000
    8154:	e3400181 	movt	r0, #385	; 0x181
    8158:	e3a01001 	mov	r1, #1
    815c:	e3a02000 	mov	r2, #0
    8160:	ebffff20 	bl	7de8 <_Z13boot_guest_osmii>
    8164:	e3a00a0f 	mov	r0, #61440	; 0xf000
    8168:	e3400184 	movt	r0, #388	; 0x184
    816c:	e3a01001 	mov	r1, #1
    8170:	e3a02000 	mov	r2, #0
    8174:	ebffff1b 	bl	7de8 <_Z13boot_guest_osmii>
    8178:	e3a00000 	mov	r0, #0
    817c:	e3400187 	movt	r0, #391	; 0x187
    8180:	e3a01001 	mov	r1, #1
    8184:	e3a02000 	mov	r2, #0
    8188:	ebffff16 	bl	7de8 <_Z13boot_guest_osmii>
    818c:	e3000b28 	movw	r0, #2856	; 0xb28
    8190:	e3400000 	movt	r0, #0
    8194:	ebfffe2d 	bl	7a50 <print>
    8198:	ebfffde5 	bl	7934 <_Z8irq_initv>
    819c:	ebfff003 	bl	41b0 <VM_IRQ_En>
    81a0:	ebfffeb1 	bl	7c6c <_Z14sys_reschedulev>
    81a4:	eafffffe 	b	81a4 <main_func+0x94>

Disassembly of section .init:

000081a8 <_init>:
    81a8:	e1a0c00d 	mov	ip, sp
    81ac:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
    81b0:	e24cb004 	sub	fp, ip, #4
    81b4:	e24bd028 	sub	sp, fp, #40	; 0x28
    81b8:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
    81bc:	e12fff1e 	bx	lr

Disassembly of section .fini:

000081c0 <_fini>:
    81c0:	e1a0c00d 	mov	ip, sp
    81c4:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
    81c8:	e24cb004 	sub	fp, ip, #4
    81cc:	e24bd028 	sub	sp, fp, #40	; 0x28
    81d0:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
    81d4:	e12fff1e 	bx	lr

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <_end+0x10c8b4c>
   4:	6f532820 	svcvs	0x00532820
   8:	65637275 	strbvs	r7, [r3, #-629]!	; 0xfffffd8b
   c:	43207972 	teqmi	r0, #1867776	; 0x1c8000
  10:	4265646f 	rsbmi	r6, r5, #1862270976	; 0x6f000000
  14:	68636e65 	stmdavs	r3!, {r0, r2, r5, r6, r9, sl, fp, sp, lr}^
  18:	74694c20 	strbtvc	r4, [r9], #-3104	; 0xfffff3e0
  1c:	30322065 	eorscc	r2, r2, r5, rrx
  20:	302e3331 	eorcc	r3, lr, r1, lsr r3
  24:	39332d35 	ldmdbcc	r3!, {r0, r2, r4, r5, r8, sl, fp, sp}
  28:	2e342029 	cdpcs	0, 3, cr2, cr4, cr9, {1}
  2c:	00332e37 	eorseq	r2, r3, r7, lsr lr

Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c010001 	stcvc	0, cr0, [r1], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	0000000c 	andeq	r0, r0, ip
  14:	00000000 	andeq	r0, r0, r0
  18:	000041f8 	strdeq	r4, [r0], -r8
  1c:	000001ec 	andeq	r0, r0, ip, ror #3
  20:	0000000c 	andeq	r0, r0, ip
  24:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  28:	7c020001 	stcvc	0, cr0, [r2], {1}
  2c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  30:	0000000c 	andeq	r0, r0, ip
  34:	00000020 	andeq	r0, r0, r0, lsr #32
  38:	00004408 	andeq	r4, r0, r8, lsl #8
  3c:	00000014 	andeq	r0, r0, r4, lsl r0
  40:	0000000c 	andeq	r0, r0, ip
  44:	00000020 	andeq	r0, r0, r0, lsr #32
  48:	0000441c 	andeq	r4, r0, ip, lsl r4
  4c:	00000014 	andeq	r0, r0, r4, lsl r0
  50:	0000000c 	andeq	r0, r0, ip
  54:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  58:	7c020001 	stcvc	0, cr0, [r2], {1}
  5c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  60:	00000024 	andeq	r0, r0, r4, lsr #32
  64:	00000050 	andeq	r0, r0, r0, asr r0
  68:	00004430 	andeq	r4, r0, r0, lsr r4
  6c:	0000071c 	andeq	r0, r0, ip, lsl r7
  70:	84240e42 	strthi	r0, [r4], #-3650	; 0xfffff1be
  74:	86088509 	strhi	r8, [r8], -r9, lsl #10
  78:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
  7c:	8a048905 	bhi	122498 <_end+0x11a2c0>
  80:	8e028b03 	vmlahi.f64	d8, d2, d3
  84:	300e4601 	andcc	r4, lr, r1, lsl #12
  88:	0000000c 	andeq	r0, r0, ip
  8c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  90:	7c020001 	stcvc	0, cr0, [r2], {1}
  94:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  98:	0000000c 	andeq	r0, r0, ip
  9c:	00000088 	andeq	r0, r0, r8, lsl #1
  a0:	00004b4c 	andeq	r4, r0, ip, asr #22
  a4:	00000004 	andeq	r0, r0, r4
  a8:	0000000c 	andeq	r0, r0, ip
  ac:	00000088 	andeq	r0, r0, r8, lsl #1
  b0:	00004b50 	andeq	r4, r0, r0, asr fp
  b4:	00000004 	andeq	r0, r0, r4
  b8:	0000000c 	andeq	r0, r0, ip
  bc:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  c0:	7c020001 	stcvc	0, cr0, [r2], {1}
  c4:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  c8:	00000018 	andeq	r0, r0, r8, lsl r0
  cc:	000000b8 	strheq	r0, [r0], -r8
  d0:	00004b54 	andeq	r4, r0, r4, asr fp
  d4:	00000038 	andeq	r0, r0, r8, lsr r0
  d8:	83100e42 	tsthi	r0, #1056	; 0x420
  dc:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
  e0:	00018e02 	andeq	r8, r1, r2, lsl #28
  e4:	0000000c 	andeq	r0, r0, ip
  e8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  ec:	7c020001 	stcvc	0, cr0, [r2], {1}
  f0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  f4:	0000000c 	andeq	r0, r0, ip
  f8:	000000e4 	andeq	r0, r0, r4, ror #1
  fc:	00004b8c 	andeq	r4, r0, ip, lsl #23
 100:	0000006c 	andeq	r0, r0, ip, rrx
 104:	0000000c 	andeq	r0, r0, ip
 108:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 10c:	7c020001 	stcvc	0, cr0, [r2], {1}
 110:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 114:	0000000c 	andeq	r0, r0, ip
 118:	00000104 	andeq	r0, r0, r4, lsl #2
 11c:	00004bf8 	strdeq	r4, [r0], -r8
 120:	00000024 	andeq	r0, r0, r4, lsr #32
 124:	0000000c 	andeq	r0, r0, ip
 128:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 12c:	7c020001 	stcvc	0, cr0, [r2], {1}
 130:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 134:	0000001c 	andeq	r0, r0, ip, lsl r0
 138:	00000124 	andeq	r0, r0, r4, lsr #2
 13c:	00004c1c 	andeq	r4, r0, ip, lsl ip
 140:	000000fc 	strdeq	r0, [r0], -ip
 144:	83180e42 	tsthi	r8, #1056	; 0x420
 148:	85058406 	strhi	r8, [r5, #-1030]	; 0xfffffbfa
 14c:	87038604 	strhi	r8, [r3, -r4, lsl #12]
 150:	00018e02 	andeq	r8, r1, r2, lsl #28
 154:	0000001c 	andeq	r0, r0, ip, lsl r0
 158:	00000124 	andeq	r0, r0, r4, lsr #2
 15c:	00004d18 	andeq	r4, r0, r8, lsl sp
 160:	00000268 	andeq	r0, r0, r8, ror #4
 164:	83180e42 	tsthi	r8, #1056	; 0x420
 168:	85058406 	strhi	r8, [r5, #-1030]	; 0xfffffbfa
 16c:	87038604 	strhi	r8, [r3, -r4, lsl #12]
 170:	00018e02 	andeq	r8, r1, r2, lsl #28
 174:	0000000c 	andeq	r0, r0, ip
 178:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 17c:	7c020001 	stcvc	0, cr0, [r2], {1}
 180:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 184:	00000018 	andeq	r0, r0, r8, lsl r0
 188:	00000174 	andeq	r0, r0, r4, ror r1
 18c:	00004f80 	andeq	r4, r0, r0, lsl #31
 190:	0000002c 	andeq	r0, r0, ip, lsr #32
 194:	83100e42 	tsthi	r0, #1056	; 0x420
 198:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 19c:	00018e02 	andeq	r8, r1, r2, lsl #28
 1a0:	00000018 	andeq	r0, r0, r8, lsl r0
 1a4:	00000174 	andeq	r0, r0, r4, ror r1
 1a8:	00004fac 	andeq	r4, r0, ip, lsr #31
 1ac:	000000f8 	strdeq	r0, [r0], -r8
 1b0:	84100e46 	ldrhi	r0, [r0], #-3654	; 0xfffff1ba
 1b4:	86038504 	strhi	r8, [r3], -r4, lsl #10
 1b8:	00018e02 	andeq	r8, r1, r2, lsl #28
 1bc:	0000001c 	andeq	r0, r0, ip, lsl r0
 1c0:	00000174 	andeq	r0, r0, r4, ror r1
 1c4:	000050a4 	andeq	r5, r0, r4, lsr #1
 1c8:	0000006c 	andeq	r0, r0, ip, rrx
 1cc:	83180e42 	tsthi	r8, #1056	; 0x420
 1d0:	85058406 	strhi	r8, [r5, #-1030]	; 0xfffffbfa
 1d4:	87038604 	strhi	r8, [r3, -r4, lsl #12]
 1d8:	00018e02 	andeq	r8, r1, r2, lsl #28
