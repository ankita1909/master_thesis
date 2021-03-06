
.\mtb-example-psoc6-uart-transmit-receive.elf:     file format elf32-littlearm


Disassembly of section ER_FLASH_CODE:

100022e0 <__main>:
100022e0:	f000 f802 	bl	100022e8 <__scatterload_rt2>
100022e4:	f000 f86e 	bl	100023c4 <__rt_entry>

100022e8 <__scatterload_rt2>:
100022e8:	a00a      	add	r0, pc, #40	; (adr r0, 10002314 <__scatterload_null+0x1e>)
100022ea:	e890 0c00 	ldmia.w	r0, {sl, fp}
100022ee:	4482      	add	sl, r0
100022f0:	4483      	add	fp, r0
100022f2:	f1aa 0701 	sub.w	r7, sl, #1

100022f6 <__scatterload_null>:
100022f6:	    45da      	cmp	sl, fp
100022f8:	/-- d101      	bne.n	100022fe <__scatterload_null+0x8>
100022fa:	|   f000 f863 	bl	100023c4 <__rt_entry>
100022fe:	\-> f2af 0e09 	subw	lr, pc, #9
10002302:	    e8ba 000f 	ldmia.w	sl!, {r0, r1, r2, r3}
10002306:	    f013 0f01 	tst.w	r3, #1
1000230a:	    bf18      	it	ne
1000230c:	    1afb      	subne	r3, r7, r3
1000230e:	    f043 0301 	orr.w	r3, r3, #1
10002312:	    4718      	bx	r3
10002314:	    00004484 	.word	0x00004484
10002318:	    000044b4 	.word	0x000044b4

1000231c <__decompress>:
1000231c:	          440a      	add	r2, r1
1000231e:	/-------> f810 4b01 	ldrb.w	r4, [r0], #1
10002322:	|         f014 050f 	ands.w	r5, r4, #15
10002326:	|         bf08      	it	eq
10002328:	|         f810 5b01 	ldrbeq.w	r5, [r0], #1
1000232c:	|         0924      	lsrs	r4, r4, #4
1000232e:	|         bf08      	it	eq
10002330:	|         f810 4b01 	ldrbeq.w	r4, [r0], #1
10002334:	|         1e6d      	subs	r5, r5, #1
10002336:	|  /----- d005      	beq.n	10002344 <__decompress+0x28>
10002338:	|  |  /-> f810 3b01 	ldrb.w	r3, [r0], #1
1000233c:	|  |  |   1e6d      	subs	r5, r5, #1
1000233e:	|  |  |   f801 3b01 	strb.w	r3, [r1], #1
10002342:	|  |  \-- d1f9      	bne.n	10002338 <__decompress+0x1c>
10002344:	|  \----> 1e64      	subs	r4, r4, #1
10002346:	|  /----- d003      	beq.n	10002350 <__decompress+0x34>
10002348:	|  |  /-> 1e64      	subs	r4, r4, #1
1000234a:	|  |  |   f801 5b01 	strb.w	r5, [r1], #1
1000234e:	|  |  \-- d1fb      	bne.n	10002348 <__decompress+0x2c>
10002350:	|  \----> 4291      	cmp	r1, r2
10002352:	\-------- d3e4      	bcc.n	1000231e <__decompress+0x2>
10002354:	          4770      	bx	lr
	...

10002358 <__scatterload_copy>:
10002358:	/-> 3a10      	subs	r2, #16
1000235a:	|   bf24      	itt	cs
1000235c:	|   c878      	ldmiacs	r0!, {r3, r4, r5, r6}
1000235e:	|   c178      	stmiacs	r1!, {r3, r4, r5, r6}
10002360:	\-- d8fa      	bhi.n	10002358 <__scatterload_copy>
10002362:	    0752      	lsls	r2, r2, #29
10002364:	    bf24      	itt	cs
10002366:	    c830      	ldmiacs	r0!, {r4, r5}
10002368:	    c130      	stmiacs	r1!, {r4, r5}
1000236a:	    bf44      	itt	mi
1000236c:	    6804      	ldrmi	r4, [r0, #0]
1000236e:	    600c      	strmi	r4, [r1, #0]
10002370:	    4770      	bx	lr
	...

10002374 <__scatterload_zeroinit>:
10002374:	    2300      	movs	r3, #0
10002376:	    2400      	movs	r4, #0
10002378:	    2500      	movs	r5, #0
1000237a:	    2600      	movs	r6, #0
1000237c:	/-> 3a10      	subs	r2, #16
1000237e:	|   bf28      	it	cs
10002380:	|   c178      	stmiacs	r1!, {r3, r4, r5, r6}
10002382:	\-- d8fb      	bhi.n	1000237c <__scatterload_zeroinit+0x8>
10002384:	    0752      	lsls	r2, r2, #29
10002386:	    bf28      	it	cs
10002388:	    c130      	stmiacs	r1!, {r4, r5}
1000238a:	    bf48      	it	mi
1000238c:	    600b      	strmi	r3, [r1, #0]
1000238e:	    4770      	bx	lr

10002390 <_printf_d>:
10002390:	2964      	cmp	r1, #100	; 0x64
10002392:	f000 8129 	beq.w	100025e8 <_printf_int_dec>

10002396 <_printf_percent_end>:
10002396:	2000      	movs	r0, #0
10002398:	4770      	bx	lr

1000239a <__rt_lib_init>:
1000239a:	b51f      	push	{r0, r1, r2, r3, r4, lr}

1000239c <__rt_lib_init_fp_1>:
1000239c:	f003 ff7d 	bl	1000629a <_fp_init>

100023a0 <__rt_lib_init_heap_2>:
100023a0:	4804      	ldr	r0, [pc, #16]	; (100023b4 <__lit__00000000>)
100023a2:	4905      	ldr	r1, [pc, #20]	; (100023b8 <__lit__00000001>)
100023a4:	f000 fbd0 	bl	10002b48 <_init_alloc>

100023a8 <__rt_lib_init_atexit_1>:
100023a8:	f000 fa1e 	bl	100027e8 <_initio>

100023ac <__rt_lib_init_alloca_1>:
100023ac:	f000 f982 	bl	100026b4 <__cpp_initialize__aeabi_>

100023b0 <__rt_lib_init_cpp_1>:
100023b0:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}
	...

100023b4 <__lit__00000000>:
100023b4:	08002928                                ()..

100023b8 <__lit__00000001>:
100023b8:	080fe800                                ....

100023bc <__rt_lib_shutdown>:
100023bc:	b510      	push	{r4, lr}

100023be <__rt_lib_shutdown_cpp_1>:
100023be:	f000 fa7c 	bl	100028ba <_terminateio>

100023c2 <__rt_lib_shutdown_fp_trap_1>:
100023c2:	bd10      	pop	{r4, pc}

100023c4 <__rt_entry>:
100023c4:	f8df d00c 	ldr.w	sp, [pc, #12]	; 100023d4 <__lit__00000000>

100023c8 <__rt_entry_li>:
100023c8:	f7ff ffe7 	bl	1000239a <__rt_lib_init>

100023cc <__rt_entry_main>:
100023cc:	f003 fdea 	bl	10005fa4 <main>
100023d0:	f000 fb8e 	bl	10002af0 <exit>

100023d4 <__lit__00000000>:
100023d4:	080ff800                                ....

100023d8 <__rt_exit>:
100023d8:	b403      	push	{r0, r1}

100023da <__rt_exit_ls>:
100023da:	f7ff ffef 	bl	100023bc <__rt_lib_shutdown>

100023de <__rt_exit_exit>:
100023de:	bc03      	pop	{r0, r1}
100023e0:	f002 ffc2 	bl	10005368 <_sys_exit>

100023e4 <Cy_OnResetUser>:
100023e4:	4770      	bx	lr

100023e6 <Reset_Handler>:
100023e6:	    f7ff fffd 	bl	100023e4 <Cy_OnResetUser>
100023ea:	    b672      	cpsid	i
100023ec:	    4915      	ldr	r1, [pc, #84]	; (10002444 <Default_Handler+0x2>)
100023ee:	    4816      	ldr	r0, [pc, #88]	; (10002448 <Default_Handler+0x6>)
100023f0:	    f44f 7238 	mov.w	r2, #736	; 0x2e0
100023f4:	/-> 680b      	ldr	r3, [r1, #0]
100023f6:	|   6003      	str	r3, [r0, #0]
100023f8:	|   1d00      	adds	r0, r0, #4
100023fa:	|   1d09      	adds	r1, r1, #4
100023fc:	|   1e52      	subs	r2, r2, #1
100023fe:	|   2a00      	cmp	r2, #0
10002400:	\-- d1f8      	bne.n	100023f4 <Reset_Handler+0xe>
10002402:	    4811      	ldr	r0, [pc, #68]	; (10002448 <Default_Handler+0x6>)
10002404:	    4911      	ldr	r1, [pc, #68]	; (1000244c <Default_Handler+0xa>)
10002406:	    6008      	str	r0, [r1, #0]
10002408:	    f3bf 8f4f 	dsb	sy
1000240c:	    4810      	ldr	r0, [pc, #64]	; (10002450 <Default_Handler+0xe>)
1000240e:	    4780      	blx	r0
10002410:	    4810      	ldr	r0, [pc, #64]	; (10002454 <Default_Handler+0x12>)
10002412:	    4780      	blx	r0
10002414:	/-- e7fe      	b.n	10002414 <Reset_Handler+0x2e>

10002416 <NMI_Handler>:
10002416:	/-- e7fe      	b.n	10002416 <NMI_Handler>
10002418:	/-- e7fe      	b.n	10002418 <NMI_Handler+0x2>

1000241a <HardFault_Wrapper>:
1000241a:	       2004      	movs	r0, #4
1000241c:	       4671      	mov	r1, lr
1000241e:	       4208      	tst	r0, r1
10002420:	/----- d003      	beq.n	1000242a <HardFault_Wrapper+0x10>
10002422:	|      f3ef 8009 	mrs	r0, PSP
10002426:	|  /-- f000 f802 	bl	1000242e <HardFault_Wrapper+0x14>
1000242a:	\--|-> f3ef 8008 	mrs	r0, MSP
1000242e:	   \-> f002 f99f 	bl	10004770 <Cy_SysLib_FaultHandler>

10002432 <HardFault_Handler>:
10002432:	e7f2      	b.n	1000241a <HardFault_Wrapper>

10002434 <MemManage_Handler>:
10002434:	e7f1      	b.n	1000241a <HardFault_Wrapper>

10002436 <BusFault_Handler>:
10002436:	e7f0      	b.n	1000241a <HardFault_Wrapper>

10002438 <UsageFault_Handler>:
10002438:	e7ef      	b.n	1000241a <HardFault_Wrapper>

1000243a <SVC_Handler>:
1000243a:	/-- e7fe      	b.n	1000243a <SVC_Handler>

1000243c <DebugMon_Handler>:
1000243c:	/-- e7fe      	b.n	1000243c <DebugMon_Handler>

1000243e <PendSV_Handler>:
1000243e:	/-- e7fe      	b.n	1000243e <PendSV_Handler>

10002440 <SysTick_Handler>:
10002440:	/-- e7fe      	b.n	10002440 <SysTick_Handler>

10002442 <Default_Handler>:
10002442:	/-- e7fe      	b.n	10002442 <Default_Handler>
10002444:	    10002000 	.word	0x10002000
10002448:	    08002000 	.word	0x08002000
1000244c:	    e000ed08 	.word	0xe000ed08
10002450:	    10004f7d 	.word	0x10004f7d
10002454:	    100022e1 	.word	0x100022e1

10002458 <Cy_SysLib_DelayCycles>:
10002458:	       1c80      	adds	r0, r0, #2
1000245a:	       0880      	lsrs	r0, r0, #2
1000245c:	/----- d003      	beq.n	10002466 <Cy_SysLib_DelayCycles+0xe>
1000245e:	|  /-> 1c40      	adds	r0, r0, #1
10002460:	|  |   1e80      	subs	r0, r0, #2
10002462:	|  \-- d1fc      	bne.n	1000245e <Cy_SysLib_DelayCycles+0x6>
10002464:	|      bf00      	nop
10002466:	\----> 4770      	bx	lr

10002468 <Cy_SysLib_EnterCriticalSection>:
10002468:	f3ef 8010 	mrs	r0, PRIMASK
1000246c:	b672      	cpsid	i
1000246e:	4770      	bx	lr

10002470 <Cy_SysLib_ExitCriticalSection>:
10002470:	f380 8810 	msr	PRIMASK, r0
10002474:	4770      	bx	lr

10002476 <__use_no_semihosting>:
10002476:	4770      	bx	lr

10002478 <_ll_udiv>:
10002478:	          ea53 0c02 	orrs.w	ip, r3, r2
1000247c:	/-------- f000 8069 	beq.w	10002552 <_ll_udiv+0xda>
10002480:	|         e92d 4bf0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, fp, lr}
10002484:	|         f04f 0600 	mov.w	r6, #0
10002488:	|         2b00      	cmp	r3, #0
1000248a:	|         bf1f      	itttt	ne
1000248c:	|         fab3 f583 	clzne	r5, r3
10002490:	|         fa03 f405 	lslne.w	r4, r3, r5
10002494:	|         fa24 f605 	lsrne.w	r6, r4, r5
10002498:	|         405e      	eorne	r6, r3
1000249a:	|         bf12      	itee	ne
1000249c:	|         4316      	orrne	r6, r2
1000249e:	|         fab2 f582 	clzeq	r5, r2
100024a2:	|         fa02 f405 	lsleq.w	r4, r2, r5
100024a6:	|         f1c5 0520 	rsb	r5, r5, #32
100024aa:	|         bf1e      	ittt	ne
100024ac:	|         fa22 fc05 	lsrne.w	ip, r2, r5
100024b0:	|         ea44 040c 	orrne.w	r4, r4, ip
100024b4:	|         3520      	addne	r5, #32
100024b6:	|         ea56 4c04 	orrs.w	ip, r6, r4, lsl #16
100024ba:	|         ea4f 4414 	mov.w	r4, r4, lsr #16
100024be:	|         bf18      	it	ne
100024c0:	|         1c64      	addne	r4, r4, #1
100024c2:	|         f04f 0800 	mov.w	r8, #0
100024c6:	|         f04f 0900 	mov.w	r9, #0
100024ca:	|  /----> 4290      	cmp	r0, r2
100024cc:	|  |      eb71 0c03 	sbcs.w	ip, r1, r3
100024d0:	|  |  /-- d339      	bcc.n	10002546 <_ll_udiv+0xce>
100024d2:	|  |  |   2900      	cmp	r1, #0
100024d4:	|  |  |   bf19      	ittee	ne
100024d6:	|  |  |   fab1 f781 	clzne	r7, r1
100024da:	|  |  |   fa01 f607 	lslne.w	r6, r1, r7
100024de:	|  |  |   fab0 f780 	clzeq	r7, r0
100024e2:	|  |  |   fa00 f607 	lsleq.w	r6, r0, r7
100024e6:	|  |  |   f1c7 0720 	rsb	r7, r7, #32
100024ea:	|  |  |   bf1e      	ittt	ne
100024ec:	|  |  |   fa20 fc07 	lsrne.w	ip, r0, r7
100024f0:	|  |  |   ea46 060c 	orrne.w	r6, r6, ip
100024f4:	|  |  |   3720      	addne	r7, #32
100024f6:	|  |  |   fbb6 fcf4 	udiv	ip, r6, r4
100024fa:	|  |  |   eba7 0705 	sub.w	r7, r7, r5
100024fe:	|  |  |   3f10      	subs	r7, #16
10002500:	|  |  |   f007 0b1f 	and.w	fp, r7, #31
10002504:	|  |  |   f1cb 0620 	rsb	r6, fp, #32
10002508:	|  |  |   fa2c f606 	lsr.w	r6, ip, r6
1000250c:	|  |  |   fa0c fb0b 	lsl.w	fp, ip, fp
10002510:	|  |  |   bf44      	itt	mi
10002512:	|  |  |   46b3      	movmi	fp, r6
10002514:	|  |  |   2600      	movmi	r6, #0
10002516:	|  |  |   2f20      	cmp	r7, #32
10002518:	|  |  |   bfa4      	itt	ge
1000251a:	|  |  |   465e      	movge	r6, fp
1000251c:	|  |  |   f04f 0b00 	movge.w	fp, #0
10002520:	|  |  |   ea5b 0c06 	orrs.w	ip, fp, r6
10002524:	|  |  |   bf08      	it	eq
10002526:	|  |  |   f04f 0b01 	moveq.w	fp, #1
1000252a:	|  |  |   eb19 090b 	adds.w	r9, r9, fp
1000252e:	|  |  |   eb48 0806 	adc.w	r8, r8, r6
10002532:	|  |  |   fbab 7c02 	umull	r7, ip, fp, r2
10002536:	|  |  |   fb06 cc02 	mla	ip, r6, r2, ip
1000253a:	|  |  |   fb0b cc03 	mla	ip, fp, r3, ip
1000253e:	|  |  |   1bc0      	subs	r0, r0, r7
10002540:	|  |  |   eb71 010c 	sbcs.w	r1, r1, ip
10002544:	|  \--|-- e7c1      	b.n	100024ca <_ll_udiv+0x52>
10002546:	|     \-> 460b      	mov	r3, r1
10002548:	|         4602      	mov	r2, r0
1000254a:	|         4641      	mov	r1, r8
1000254c:	|         4648      	mov	r0, r9
1000254e:	|         e8bd 8bf0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, fp, pc}
10002552:	\-------> b513      	push	{r0, r1, r4, lr}
10002554:	          4308      	orrs	r0, r1
10002556:	          bf18      	it	ne
10002558:	          f04f 30ff 	movne.w	r0, #4294967295
1000255c:	          4601      	mov	r1, r0
1000255e:	          f3af 8000 	nop.w
10002562:	          e8bd 401c 	ldmia.w	sp!, {r2, r3, r4, lr}
10002566:	          4770      	bx	lr

10002568 <__2printf>:
10002568:	b40f      	push	{r0, r1, r2, r3}
1000256a:	4904      	ldr	r1, [pc, #16]	; (1000257c <__2printf+0x14>)
1000256c:	b510      	push	{r4, lr}
1000256e:	aa03      	add	r2, sp, #12
10002570:	9802      	ldr	r0, [sp, #8]
10002572:	f000 f90b 	bl	1000278c <_printf_char_file>
10002576:	bc10      	pop	{r4}
10002578:	f85d fb14 	ldr.w	pc, [sp], #20
1000257c:	0800243c 	.word	0x0800243c

10002580 <__printf>:
10002580:	                e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
10002584:	                460e      	mov	r6, r1
10002586:	                4604      	mov	r4, r0
10002588:	                2000      	movs	r0, #0
1000258a:	         /----> 6220      	str	r0, [r4, #32]
1000258c:	   /-----|----> 4620      	mov	r0, r4
1000258e:	   |     |      68e1      	ldr	r1, [r4, #12]
10002590:	   |     |      4788      	blx	r1
10002592:	/--|-----|----- b330      	cbz	r0, 100025e2 <__printf+0x62>
10002594:	|  |     |      2825      	cmp	r0, #37	; 0x25
10002596:	|  |     |  /-- d005      	beq.n	100025a4 <__printf+0x24>
10002598:	|  |  /--|--|-> e9d4 2101 	ldrd	r2, r1, [r4, #4]
1000259c:	|  |  |  |  |   4790      	blx	r2
1000259e:	|  |  |  |  |   6a20      	ldr	r0, [r4, #32]
100025a0:	|  |  |  |  |   1c40      	adds	r0, r0, #1
100025a2:	|  |  |  \--|-- e7f2      	b.n	1000258a <__printf+0xa>
100025a4:	|  |  |     \-> 68e1      	ldr	r1, [r4, #12]
100025a6:	|  |  |         4620      	mov	r0, r4
100025a8:	|  |  |         2700      	movs	r7, #0
100025aa:	|  |  |         4788      	blx	r1
100025ac:	|  |  |         0005      	movs	r5, r0
100025ae:	+--|--|-------- d018      	beq.n	100025e2 <__printf+0x62>
100025b0:	|  |  |         f1a5 0041 	sub.w	r0, r5, #65	; 0x41
100025b4:	|  |  |         2819      	cmp	r0, #25
100025b6:	|  |  |     /-- d802      	bhi.n	100025be <__printf+0x3e>
100025b8:	|  |  |     |   3520      	adds	r5, #32
100025ba:	|  |  |     |   f44f 6700 	mov.w	r7, #2048	; 0x800
100025be:	|  |  |     \-> 4632      	mov	r2, r6
100025c0:	|  |  |         4629      	mov	r1, r5
100025c2:	|  |  |         4620      	mov	r0, r4
100025c4:	|  |  |         6027      	str	r7, [r4, #0]
100025c6:	|  |  |         f7ff fee3 	bl	10002390 <_printf_d>
100025ca:	|  |  |  /----- b140      	cbz	r0, 100025de <__printf+0x5e>
100025cc:	|  |  |  |      2801      	cmp	r0, #1
100025ce:	|  |  |  |  /-- d004      	beq.n	100025da <__printf+0x5a>
100025d0:	|  |  |  |  |   1df6      	adds	r6, r6, #7
100025d2:	|  |  |  |  |   f026 0607 	bic.w	r6, r6, #7
100025d6:	|  |  |  |  |   3608      	adds	r6, #8
100025d8:	|  +--|--|--|-- e7d8      	b.n	1000258c <__printf+0xc>
100025da:	|  |  |  |  \-> 1d36      	adds	r6, r6, #4
100025dc:	|  \--|--|----- e7d6      	b.n	1000258c <__printf+0xc>
100025de:	|     |  \----> 4628      	mov	r0, r5
100025e0:	|     \-------- e7da      	b.n	10002598 <__printf+0x18>
100025e2:	\-------------> 6a20      	ldr	r0, [r4, #32]
100025e4:	                e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

100025e8 <_printf_int_dec>:
100025e8:	          e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
100025ec:	          4606      	mov	r6, r0
100025ee:	          2400      	movs	r4, #0
100025f0:	          6810      	ldr	r0, [r2, #0]
100025f2:	          2975      	cmp	r1, #117	; 0x75
100025f4:	          4631      	mov	r1, r6
100025f6:	          a516      	add	r5, pc, #88	; (adr r5, 10002650 <_printf_int_dec+0x68>)
100025f8:	/-------- d010      	beq.n	1000261c <_printf_int_dec+0x34>
100025fa:	|         f3af 8000 	nop.w
100025fe:	|         2800      	cmp	r0, #0
10002600:	|     /-- da02      	bge.n	10002608 <_printf_int_dec+0x20>
10002602:	|     |   4240      	negs	r0, r0
10002604:	|     |   a513      	add	r5, pc, #76	; (adr r5, 10002654 <_printf_int_dec+0x6c>)
10002606:	|  /--|-- e007      	b.n	10002618 <_printf_int_dec+0x30>
10002608:	|  |  \-> 6831      	ldr	r1, [r6, #0]
1000260a:	|  |      078a      	lsls	r2, r1, #30
1000260c:	|  |  /-- d501      	bpl.n	10002612 <_printf_int_dec+0x2a>
1000260e:	|  |  |   a512      	add	r5, pc, #72	; (adr r5, 10002658 <_printf_int_dec+0x70>)
10002610:	|  +--|-- e002      	b.n	10002618 <_printf_int_dec+0x30>
10002612:	|  |  \-> 0749      	lsls	r1, r1, #29
10002614:	|  |  /-- d504      	bpl.n	10002620 <_printf_int_dec+0x38>
10002616:	|  |  |   a511      	add	r5, pc, #68	; (adr r5, 1000265c <_printf_int_dec+0x74>)
10002618:	|  \--|-> 2401      	movs	r4, #1
1000261a:	|     +-- e001      	b.n	10002620 <_printf_int_dec+0x38>
1000261c:	\-----|-> f3af 8000 	nop.w
10002620:	      \-> 2100      	movs	r1, #0
10002622:	          220a      	movs	r2, #10
10002624:	          f106 0724 	add.w	r7, r6, #36	; 0x24
10002628:	      /-- e009      	b.n	1000263e <_printf_int_dec+0x56>
1000262a:	   /--|-> fbb0 fcf2 	udiv	ip, r0, r2
1000262e:	   |  |   fbb0 f3f2 	udiv	r3, r0, r2
10002632:	   |  |   fb02 001c 	mls	r0, r2, ip, r0
10002636:	   |  |   3030      	adds	r0, #48	; 0x30
10002638:	   |  |   5478      	strb	r0, [r7, r1]
1000263a:	   |  |   4618      	mov	r0, r3
1000263c:	   |  |   1c49      	adds	r1, r1, #1
1000263e:	   |  \-> 2800      	cmp	r0, #0
10002640:	   \----- d1f3      	bne.n	1000262a <_printf_int_dec+0x42>
10002642:	          4623      	mov	r3, r4
10002644:	          462a      	mov	r2, r5
10002646:	          4630      	mov	r0, r6
10002648:	          e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
1000264c:	          f000 b845 	b.w	100026da <_printf_int_common>
10002650:	          00000000 	.word	0x00000000
10002654:	          0000002d 	.word	0x0000002d
10002658:	          0000002b 	.word	0x0000002b
1000265c:	          00000020 	.word	0x00000020

10002660 <__aeabi_memclr4>:
10002660:	f04f 0200 	mov.w	r2, #0

10002664 <_memset_w>:
10002664:	    b500      	push	{lr}
10002666:	    4613      	mov	r3, r2
10002668:	    4694      	mov	ip, r2
1000266a:	    4696      	mov	lr, r2
1000266c:	    3920      	subs	r1, #32
1000266e:	/-> bf22      	ittt	cs
10002670:	|   e8a0 500c 	stmiacs.w	r0!, {r2, r3, ip, lr}
10002674:	|   e8a0 500c 	stmiacs.w	r0!, {r2, r3, ip, lr}
10002678:	|   f1b1 0120 	subscs.w	r1, r1, #32
1000267c:	\-- f4bf aff7 	bcs.w	1000266e <_memset_w+0xa>
10002680:	    0709      	lsls	r1, r1, #28
10002682:	    bf28      	it	cs
10002684:	    e8a0 500c 	stmiacs.w	r0!, {r2, r3, ip, lr}
10002688:	    bf48      	it	mi
1000268a:	    c00c      	stmiami	r0!, {r2, r3}
1000268c:	    f85d eb04 	ldr.w	lr, [sp], #4
10002690:	    0089      	lsls	r1, r1, #2
10002692:	    bf28      	it	cs
10002694:	    f840 2b04 	strcs.w	r2, [r0], #4
10002698:	    bf08      	it	eq
1000269a:	    4770      	bxeq	lr
1000269c:	    bf48      	it	mi
1000269e:	    f820 2b02 	strhmi.w	r2, [r0], #2
100026a2:	    f011 4f80 	tst.w	r1, #1073741824	; 0x40000000
100026a6:	    bf18      	it	ne
100026a8:	    f800 2b01 	strbne.w	r2, [r0], #1
100026ac:	    4770      	bx	lr

100026ae <__use_two_region_memory>:
100026ae:	4770      	bx	lr

100026b0 <__rt_heap_escrow>:
100026b0:	4770      	bx	lr

100026b2 <__rt_heap_expand>:
100026b2:	4770      	bx	lr

100026b4 <__cpp_initialize__aeabi_>:
100026b4:	       b570      	push	{r4, r5, r6, lr}
100026b6:	       4c06      	ldr	r4, [pc, #24]	; (100026d0 <__cpp_initialize__aeabi_+0x1c>)
100026b8:	       447c      	add	r4, pc
100026ba:	       4d06      	ldr	r5, [pc, #24]	; (100026d4 <__cpp_initialize__aeabi_+0x20>)
100026bc:	       447d      	add	r5, pc
100026be:	   /-- e004      	b.n	100026ca <__cpp_initialize__aeabi_+0x16>
100026c0:	/--|-> 4620      	mov	r0, r4
100026c2:	|  |   6801      	ldr	r1, [r0, #0]
100026c4:	|  |   4408      	add	r0, r1
100026c6:	|  |   4780      	blx	r0
100026c8:	|  |   1d24      	adds	r4, r4, #4
100026ca:	|  \-> 42ac      	cmp	r4, r5
100026cc:	\----- d1f8      	bne.n	100026c0 <__cpp_initialize__aeabi_+0xc>
100026ce:	       bd70      	pop	{r4, r5, r6, pc}
100026d0:	       0000410c 	.word	0x0000410c
100026d4:	       0000410c 	.word	0x0000410c

100026d8 <__use_no_semihosting_swi>:
100026d8:	4770      	bx	lr

100026da <_printf_int_common>:
100026da:	       e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
100026de:	       460d      	mov	r5, r1
100026e0:	       4699      	mov	r9, r3
100026e2:	       4692      	mov	sl, r2
100026e4:	       4604      	mov	r4, r0
100026e6:	       f100 0824 	add.w	r8, r0, #36	; 0x24
100026ea:	       6801      	ldr	r1, [r0, #0]
100026ec:	       0688      	lsls	r0, r1, #26
100026ee:	/----- d504      	bpl.n	100026fa <_printf_int_common+0x20>
100026f0:	|      69e0      	ldr	r0, [r4, #28]
100026f2:	|      f021 0110 	bic.w	r1, r1, #16
100026f6:	|      6021      	str	r1, [r4, #0]
100026f8:	|  /-- e000      	b.n	100026fc <_printf_int_common+0x22>
100026fa:	\--|-> 2001      	movs	r0, #1
100026fc:	   \-> 42a8      	cmp	r0, r5
100026fe:	/----- dd01      	ble.n	10002704 <_printf_int_common+0x2a>
10002700:	|      1b47      	subs	r7, r0, r5
10002702:	|  /-- e000      	b.n	10002706 <_printf_int_common+0x2c>
10002704:	\--|-> 2700      	movs	r7, #0
10002706:	   \-> 69a1      	ldr	r1, [r4, #24]
10002708:	       197a      	adds	r2, r7, r5
1000270a:	       eb02 0009 	add.w	r0, r2, r9
1000270e:	       1a08      	subs	r0, r1, r0
10002710:	       61a0      	str	r0, [r4, #24]
10002712:	       7820      	ldrb	r0, [r4, #0]
10002714:	       06c0      	lsls	r0, r0, #27
10002716:	   /-- d402      	bmi.n	1000271e <_printf_int_common+0x44>
10002718:	   |   4620      	mov	r0, r4
1000271a:	   |   f3af 8000 	nop.w
1000271e:	   \-> 2600      	movs	r6, #0
10002720:	   /-- e008      	b.n	10002734 <_printf_int_common+0x5a>
10002722:	/--|-> e9d4 2101 	ldrd	r2, r1, [r4, #4]
10002726:	|  |   f81a 0006 	ldrb.w	r0, [sl, r6]
1000272a:	|  |   4790      	blx	r2
1000272c:	|  |   6a20      	ldr	r0, [r4, #32]
1000272e:	|  |   1c40      	adds	r0, r0, #1
10002730:	|  |   1c76      	adds	r6, r6, #1
10002732:	|  |   6220      	str	r0, [r4, #32]
10002734:	|  \-> 454e      	cmp	r6, r9
10002736:	\----- dbf4      	blt.n	10002722 <_printf_int_common+0x48>
10002738:	       7820      	ldrb	r0, [r4, #0]
1000273a:	       06c0      	lsls	r0, r0, #27
1000273c:	/----- d50a      	bpl.n	10002754 <_printf_int_common+0x7a>
1000273e:	|      4620      	mov	r0, r4
10002740:	|      f3af 8000 	nop.w
10002744:	+----- e006      	b.n	10002754 <_printf_int_common+0x7a>
10002746:	|  /-> e9d4 2101 	ldrd	r2, r1, [r4, #4]
1000274a:	|  |   2030      	movs	r0, #48	; 0x30
1000274c:	|  |   4790      	blx	r2
1000274e:	|  |   6a20      	ldr	r0, [r4, #32]
10002750:	|  |   1c40      	adds	r0, r0, #1
10002752:	|  |   6220      	str	r0, [r4, #32]
10002754:	\--|-> 1e38      	subs	r0, r7, #0
10002756:	   |   f1a7 0701 	sub.w	r7, r7, #1
1000275a:	   \-- dcf4      	bgt.n	10002746 <_printf_int_common+0x6c>
1000275c:	   /-- e007      	b.n	1000276e <_printf_int_common+0x94>
1000275e:	/--|-> e9d4 2101 	ldrd	r2, r1, [r4, #4]
10002762:	|  |   f818 0005 	ldrb.w	r0, [r8, r5]
10002766:	|  |   4790      	blx	r2
10002768:	|  |   6a20      	ldr	r0, [r4, #32]
1000276a:	|  |   1c40      	adds	r0, r0, #1
1000276c:	|  |   6220      	str	r0, [r4, #32]
1000276e:	|  \-> 1e28      	subs	r0, r5, #0
10002770:	|      f1a5 0501 	sub.w	r5, r5, #1
10002774:	\----- dcf3      	bgt.n	1000275e <_printf_int_common+0x84>
10002776:	       4620      	mov	r0, r4
10002778:	       f3af 8000 	nop.w
1000277c:	       7820      	ldrb	r0, [r4, #0]
1000277e:	       0600      	lsls	r0, r0, #24
10002780:	/----- d502      	bpl.n	10002788 <_printf_int_common+0xae>
10002782:	|      2002      	movs	r0, #2
10002784:	|  /-> e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
10002788:	\--|-> 2001      	movs	r0, #1
1000278a:	   \-- e7fb      	b.n	10002784 <_printf_int_common+0xaa>

1000278c <_printf_char_file>:
1000278c:	    4b07      	ldr	r3, [pc, #28]	; (100027ac <_printf_char_file+0x20>)
1000278e:	    b570      	push	{r4, r5, r6, lr}
10002790:	    460d      	mov	r5, r1
10002792:	    447b      	add	r3, pc
10002794:	    f000 f811 	bl	100027ba <_printf_char_common>
10002798:	    4604      	mov	r4, r0
1000279a:	    4628      	mov	r0, r5
1000279c:	    f000 f820 	bl	100027e0 <ferror>
100027a0:	/-- b110      	cbz	r0, 100027a8 <_printf_char_file+0x1c>
100027a2:	|   f04f 30ff 	mov.w	r0, #4294967295
100027a6:	|   bd70      	pop	{r4, r5, r6, pc}
100027a8:	\-> 4620      	mov	r0, r4
100027aa:	    bd70      	pop	{r4, r5, r6, pc}
100027ac:	    0000304f 	.word	0x0000304f

100027b0 <_printf_input_char>:
100027b0:	6901      	ldr	r1, [r0, #16]
100027b2:	1c4a      	adds	r2, r1, #1
100027b4:	6102      	str	r2, [r0, #16]
100027b6:	7808      	ldrb	r0, [r1, #0]
100027b8:	4770      	bx	lr

100027ba <_printf_char_common>:
100027ba:	b500      	push	{lr}
100027bc:	b08f      	sub	sp, #60	; 0x3c
100027be:	e9cd 3101 	strd	r3, r1, [sp, #4]
100027c2:	2100      	movs	r1, #0
100027c4:	9105      	str	r1, [sp, #20]
100027c6:	4905      	ldr	r1, [pc, #20]	; (100027dc <_printf_char_common+0x22>)
100027c8:	4479      	add	r1, pc
100027ca:	e9cd 1003 	strd	r1, r0, [sp, #12]
100027ce:	4611      	mov	r1, r2
100027d0:	4668      	mov	r0, sp
100027d2:	f7ff fed5 	bl	10002580 <__printf>
100027d6:	b00f      	add	sp, #60	; 0x3c
100027d8:	bd00      	pop	{pc}
100027da:	0000      	.short	0x0000
100027dc:	ffffffe5 	.word	0xffffffe5

100027e0 <ferror>:
100027e0:	7b00      	ldrb	r0, [r0, #12]
100027e2:	f000 0080 	and.w	r0, r0, #128	; 0x80
100027e6:	4770      	bx	lr

100027e8 <_initio>:
100027e8:	    b510      	push	{r4, lr}
100027ea:	    4842      	ldr	r0, [pc, #264]	; (100028f4 <_terminateio+0x3a>)
100027ec:	    2154      	movs	r1, #84	; 0x54
100027ee:	    f7ff ff37 	bl	10002660 <__aeabi_memclr4>
100027f2:	    4841      	ldr	r0, [pc, #260]	; (100028f8 <_terminateio+0x3e>)
100027f4:	    2154      	movs	r1, #84	; 0x54
100027f6:	    f7ff ff33 	bl	10002660 <__aeabi_memclr4>
100027fa:	    4840      	ldr	r0, [pc, #256]	; (100028fc <_terminateio+0x42>)
100027fc:	    2154      	movs	r1, #84	; 0x54
100027fe:	    f7ff ff2f 	bl	10002660 <__aeabi_memclr4>
10002802:	    493f      	ldr	r1, [pc, #252]	; (10002900 <_terminateio+0x46>)
10002804:	    483b      	ldr	r0, [pc, #236]	; (100028f4 <_terminateio+0x3a>)
10002806:	    4a3c      	ldr	r2, [pc, #240]	; (100028f8 <_terminateio+0x3e>)
10002808:	    4b3f      	ldr	r3, [pc, #252]	; (10002908 <_terminateio+0x4e>)
1000280a:	    6008      	str	r0, [r1, #0]
1000280c:	    493d      	ldr	r1, [pc, #244]	; (10002904 <_terminateio+0x4a>)
1000280e:	    600a      	str	r2, [r1, #0]
10002810:	    493a      	ldr	r1, [pc, #232]	; (100028fc <_terminateio+0x42>)
10002812:	    6019      	str	r1, [r3, #0]
10002814:	    1c53      	adds	r3, r2, #1
10002816:	    6503      	str	r3, [r0, #80]	; 0x50
10002818:	    1c48      	adds	r0, r1, #1
1000281a:	    6510      	str	r0, [r2, #80]	; 0x50
1000281c:	    2001      	movs	r0, #1
1000281e:	    6508      	str	r0, [r1, #80]	; 0x50
10002820:	    483b      	ldr	r0, [pc, #236]	; (10002910 <_terminateio+0x56>)
10002822:	    4a34      	ldr	r2, [pc, #208]	; (100028f4 <_terminateio+0x3a>)
10002824:	    a139      	add	r1, pc, #228	; (adr r1, 1000290c <_terminateio+0x52>)
10002826:	    4478      	add	r0, pc
10002828:	    f000 f8c4 	bl	100029b4 <freopen>
1000282c:	/-- b920      	cbnz	r0, 10002838 <_initio+0x50>
1000282e:	|   4838      	ldr	r0, [pc, #224]	; (10002910 <_terminateio+0x56>)
10002830:	|   4478      	add	r0, pc
10002832:	|   380a      	subs	r0, #10
10002834:	|   f000 f965 	bl	10002b02 <__rt_SIGRTRED>
10002838:	\-> 4837      	ldr	r0, [pc, #220]	; (10002918 <_terminateio+0x5e>)
1000283a:	    4a2f      	ldr	r2, [pc, #188]	; (100028f8 <_terminateio+0x3e>)
1000283c:	    a135      	add	r1, pc, #212	; (adr r1, 10002914 <_terminateio+0x5a>)
1000283e:	    4478      	add	r0, pc
10002840:	    f000 f8b8 	bl	100029b4 <freopen>
10002844:	/-- b920      	cbnz	r0, 10002850 <_initio+0x68>
10002846:	|   4834      	ldr	r0, [pc, #208]	; (10002918 <_terminateio+0x5e>)
10002848:	|   4478      	add	r0, pc
1000284a:	|   380a      	subs	r0, #10
1000284c:	|   f000 f959 	bl	10002b02 <__rt_SIGRTRED>
10002850:	\-> 4832      	ldr	r0, [pc, #200]	; (1000291c <_terminateio+0x62>)
10002852:	    4a2a      	ldr	r2, [pc, #168]	; (100028fc <_terminateio+0x42>)
10002854:	    a12f      	add	r1, pc, #188	; (adr r1, 10002914 <_terminateio+0x5a>)
10002856:	    4478      	add	r0, pc
10002858:	    f000 f8ac 	bl	100029b4 <freopen>
1000285c:	/-- b920      	cbnz	r0, 10002868 <_initio+0x80>
1000285e:	|   482f      	ldr	r0, [pc, #188]	; (1000291c <_terminateio+0x62>)
10002860:	|   4478      	add	r0, pc
10002862:	|   380a      	subs	r0, #10
10002864:	|   f000 f94d 	bl	10002b02 <__rt_SIGRTRED>
10002868:	\-> 2340      	movs	r3, #64	; 0x40
1000286a:	    4822      	ldr	r0, [pc, #136]	; (100028f4 <_terminateio+0x3a>)
1000286c:	    00dc      	lsls	r4, r3, #3
1000286e:	    2100      	movs	r1, #0
10002870:	    4622      	mov	r2, r4
10002872:	    f000 f87c 	bl	1000296e <setvbuf>
10002876:	/-- b120      	cbz	r0, 10002882 <_initio+0x9a>
10002878:	|   4825      	ldr	r0, [pc, #148]	; (10002910 <_terminateio+0x56>)
1000287a:	|   4478      	add	r0, pc
1000287c:	|   3854      	subs	r0, #84	; 0x54
1000287e:	|   f000 f940 	bl	10002b02 <__rt_SIGRTRED>
10002882:	\-> 481d      	ldr	r0, [pc, #116]	; (100028f8 <_terminateio+0x3e>)
10002884:	    4622      	mov	r2, r4
10002886:	    2340      	movs	r3, #64	; 0x40
10002888:	    2100      	movs	r1, #0
1000288a:	    f000 f870 	bl	1000296e <setvbuf>
1000288e:	/-- b120      	cbz	r0, 1000289a <_initio+0xb2>
10002890:	|   4821      	ldr	r0, [pc, #132]	; (10002918 <_terminateio+0x5e>)
10002892:	|   4478      	add	r0, pc
10002894:	|   3854      	subs	r0, #84	; 0x54
10002896:	|   f000 f934 	bl	10002b02 <__rt_SIGRTRED>
1000289a:	\-> 4818      	ldr	r0, [pc, #96]	; (100028fc <_terminateio+0x42>)
1000289c:	    4622      	mov	r2, r4
1000289e:	    2310      	movs	r3, #16
100028a0:	    2100      	movs	r1, #0
100028a2:	    f000 f864 	bl	1000296e <setvbuf>
100028a6:	    2800      	cmp	r0, #0
100028a8:	/-- d006      	beq.n	100028b8 <_initio+0xd0>
100028aa:	|   481c      	ldr	r0, [pc, #112]	; (1000291c <_terminateio+0x62>)
100028ac:	|   4478      	add	r0, pc
100028ae:	|   e8bd 4010 	ldmia.w	sp!, {r4, lr}
100028b2:	|   3856      	subs	r0, #86	; 0x56
100028b4:	|   f000 b925 	b.w	10002b02 <__rt_SIGRTRED>
100028b8:	\-> bd10      	pop	{r4, pc}

100028ba <_terminateio>:
100028ba:	       4810      	ldr	r0, [pc, #64]	; (100028fc <_terminateio+0x42>)
100028bc:	       b570      	push	{r4, r5, r6, lr}
100028be:	       6d00      	ldr	r0, [r0, #80]	; 0x50
100028c0:	       f020 0401 	bic.w	r4, r0, #1
100028c4:	       480b      	ldr	r0, [pc, #44]	; (100028f4 <_terminateio+0x3a>)
100028c6:	       f000 f8ed 	bl	10002aa4 <_fclose_internal>
100028ca:	       480b      	ldr	r0, [pc, #44]	; (100028f8 <_terminateio+0x3e>)
100028cc:	       f000 f8ea 	bl	10002aa4 <_fclose_internal>
100028d0:	       480a      	ldr	r0, [pc, #40]	; (100028fc <_terminateio+0x42>)
100028d2:	       f000 f8e7 	bl	10002aa4 <_fclose_internal>
100028d6:	   /-- e009      	b.n	100028ec <_terminateio+0x32>
100028d8:	/--|-> 6d20      	ldr	r0, [r4, #80]	; 0x50
100028da:	|  |   f020 0501 	bic.w	r5, r0, #1
100028de:	|  |   4620      	mov	r0, r4
100028e0:	|  |   f000 f8e0 	bl	10002aa4 <_fclose_internal>
100028e4:	|  |   4620      	mov	r0, r4
100028e6:	|  |   f000 f81b 	bl	10002920 <free>
100028ea:	|  |   462c      	mov	r4, r5
100028ec:	|  \-> 2c00      	cmp	r4, #0
100028ee:	\----- d1f3      	bne.n	100028d8 <_terminateio+0x1e>
100028f0:	       bd70      	pop	{r4, r5, r6, pc}
100028f2:	       0000      	.short	0x0000
100028f4:	       080023e8 	.word	0x080023e8
100028f8:	       0800243c 	.word	0x0800243c
100028fc:	       08002490 	.word	0x08002490
10002900:	       080022ec 	.word	0x080022ec
10002904:	       080022f0 	.word	0x080022f0
10002908:	       080022f4 	.word	0x080022f4
1000290c:	       00000072 	.word	0x00000072
10002910:	       00003a8a 	.word	0x00003a8a
10002914:	       00000077 	.word	0x00000077
10002918:	       00003a76 	.word	0x00003a76
1000291c:	       00003a62 	.word	0x00003a62

10002920 <free>:
10002920:	    b570      	push	{r4, r5, r6, lr}
10002922:	    4604      	mov	r4, r0
10002924:	    1f05      	subs	r5, r0, #4
10002926:	    f000 f8f3 	bl	10002b10 <__rt_heap_descriptor>
1000292a:	    6800      	ldr	r0, [r0, #0]
1000292c:	    2c00      	cmp	r4, #0
1000292e:	    bf14      	ite	ne
10002930:	    6844      	ldrne	r4, [r0, #4]
10002932:	    bd70      	popeq	{r4, r5, r6, pc}
10002934:	/-> 2c00      	cmp	r4, #0
10002936:	|   bf18      	it	ne
10002938:	|   42ac      	cmpne	r4, r5
1000293a:	|   bf3c      	itt	cc
1000293c:	|   4620      	movcc	r0, r4
1000293e:	|   6864      	ldrcc	r4, [r4, #4]
10002940:	\-- d3f8      	bcc.n	10002934 <free+0x14>
10002942:	    6801      	ldr	r1, [r0, #0]
10002944:	    180a      	adds	r2, r1, r0
10002946:	    42aa      	cmp	r2, r5
10002948:	    bf18      	it	ne
1000294a:	    6045      	strne	r5, [r0, #4]
1000294c:	/-- d103      	bne.n	10002956 <free+0x36>
1000294e:	|   682a      	ldr	r2, [r5, #0]
10002950:	|   4605      	mov	r5, r0
10002952:	|   4411      	add	r1, r2
10002954:	|   6001      	str	r1, [r0, #0]
10002956:	\-> 6828      	ldr	r0, [r5, #0]
10002958:	    1941      	adds	r1, r0, r5
1000295a:	    42a1      	cmp	r1, r4
1000295c:	    bf1c      	itt	ne
1000295e:	    606c      	strne	r4, [r5, #4]
10002960:	    bd70      	popne	{r4, r5, r6, pc}
10002962:	    6861      	ldr	r1, [r4, #4]
10002964:	    6069      	str	r1, [r5, #4]
10002966:	    6821      	ldr	r1, [r4, #0]
10002968:	    4408      	add	r0, r1
1000296a:	    6028      	str	r0, [r5, #0]
1000296c:	    bd70      	pop	{r4, r5, r6, pc}

1000296e <setvbuf>:
1000296e:	          b570      	push	{r4, r5, r6, lr}
10002970:	          68c4      	ldr	r4, [r0, #12]
10002972:	          07a5      	lsls	r5, r4, #30
10002974:	/-------- d013      	beq.n	1000299e <setvbuf+0x30>
10002976:	|         0265      	lsls	r5, r4, #9
10002978:	+-------- d411      	bmi.n	1000299e <setvbuf+0x30>
1000297a:	|         f5b2 7f80 	cmp.w	r2, #256	; 0x100
1000297e:	|  /----- d009      	beq.n	10002994 <setvbuf+0x26>
10002980:	|  |      f5b2 7f00 	cmp.w	r2, #512	; 0x200
10002984:	|  +----- d006      	beq.n	10002994 <setvbuf+0x26>
10002986:	|  |      f5b2 6f80 	cmp.w	r2, #1024	; 0x400
1000298a:	+--|----- d108      	bne.n	1000299e <setvbuf+0x30>
1000298c:	|  |      2301      	movs	r3, #1
1000298e:	|  |      f100 0124 	add.w	r1, r0, #36	; 0x24
10002992:	|  |  /-- e006      	b.n	100029a2 <setvbuf+0x34>
10002994:	|  \--|-> 1e5d      	subs	r5, r3, #1
10002996:	|     |   f06f 467f 	mvn.w	r6, #4278190080	; 0xff000000
1000299a:	|     |   42b5      	cmp	r5, r6
1000299c:	|     +-- d301      	bcc.n	100029a2 <setvbuf+0x34>
1000299e:	\-----|-> 2001      	movs	r0, #1
100029a0:	      |   bd70      	pop	{r4, r5, r6, pc}
100029a2:	      \-> 6101      	str	r1, [r0, #16]
100029a4:	          61c3      	str	r3, [r0, #28]
100029a6:	          6041      	str	r1, [r0, #4]
100029a8:	          f424 6170 	bic.w	r1, r4, #3840	; 0xf00
100029ac:	          4311      	orrs	r1, r2
100029ae:	          60c1      	str	r1, [r0, #12]
100029b0:	          2000      	movs	r0, #0
100029b2:	          bd70      	pop	{r4, r5, r6, pc}

100029b4 <freopen>:
100029b4:	                   e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
100029b8:	                   460c      	mov	r4, r1
100029ba:	                   4616      	mov	r6, r2
100029bc:	                   0007      	movs	r7, r0
100029be:	/----------------- d047      	beq.n	10002a50 <freopen+0x9c>
100029c0:	|                  4610      	mov	r0, r2
100029c2:	|                  f000 f86f 	bl	10002aa4 <_fclose_internal>
100029c6:	|                  7820      	ldrb	r0, [r4, #0]
100029c8:	|                  1c61      	adds	r1, r4, #1
100029ca:	|                  2861      	cmp	r0, #97	; 0x61
100029cc:	|        /-------- d00a      	beq.n	100029e4 <freopen+0x30>
100029ce:	|        |         2872      	cmp	r0, #114	; 0x72
100029d0:	|        |     /-- d002      	beq.n	100029d8 <freopen+0x24>
100029d2:	|        |     |   2877      	cmp	r0, #119	; 0x77
100029d4:	+--------|-----|-- d13c      	bne.n	10002a50 <freopen+0x9c>
100029d6:	|        |  /--|-- e002      	b.n	100029de <freopen+0x2a>
100029d8:	|        |  |  \-> 2501      	movs	r5, #1
100029da:	|        |  |      2400      	movs	r4, #0
100029dc:	|  /-----|--|----- e005      	b.n	100029ea <freopen+0x36>
100029de:	|  |     |  \----> 2502      	movs	r5, #2
100029e0:	|  |     |         2404      	movs	r4, #4
100029e2:	|  +-----|-------- e002      	b.n	100029ea <freopen+0x36>
100029e4:	|  |     \-------> 2408      	movs	r4, #8
100029e6:	|  |               f248 0502 	movw	r5, #32770	; 0x8002
100029ea:	|  >-------------> f811 0b01 	ldrb.w	r0, [r1], #1
100029ee:	|  |               282b      	cmp	r0, #43	; 0x2b
100029f0:	|  |           /-- d006      	beq.n	10002a00 <freopen+0x4c>
100029f2:	|  |           |   2862      	cmp	r0, #98	; 0x62
100029f4:	|  |        /--|-- d009      	beq.n	10002a0a <freopen+0x56>
100029f6:	|  |        |  |   f811 0c01 	ldrb.w	r0, [r1, #-1]
100029fa:	|  |        |  |   2874      	cmp	r0, #116	; 0x74
100029fc:	|  |     /--|--|-- d00a      	beq.n	10002a14 <freopen+0x60>
100029fe:	|  |  /--|--|--|-- e00b      	b.n	10002a18 <freopen+0x64>
10002a00:	|  |  |  |  |  \-> f045 0503 	orr.w	r5, r5, #3
10002a04:	|  |  |  |  |      f044 0402 	orr.w	r4, r4, #2
10002a08:	|  +--|--|--|----- e7ef      	b.n	100029ea <freopen+0x36>
10002a0a:	|  |  |  |  \----> f045 0504 	orr.w	r5, r5, #4
10002a0e:	|  |  |  |         f044 0401 	orr.w	r4, r4, #1
10002a12:	|  \--|--|-------- e7ea      	b.n	100029ea <freopen+0x36>
10002a14:	|     |  \-------> f044 0410 	orr.w	r4, r4, #16
10002a18:	|     \----------> 4638      	mov	r0, r7
10002a1a:	|                  4621      	mov	r1, r4
10002a1c:	|                  f002 fcaa 	bl	10005374 <_sys_open>
10002a20:	|                  1c41      	adds	r1, r0, #1
10002a22:	+----------------- d015      	beq.n	10002a50 <freopen+0x9c>
10002a24:	|                  2100      	movs	r1, #0
10002a26:	|                  6131      	str	r1, [r6, #16]
10002a28:	|                  6071      	str	r1, [r6, #4]
10002a2a:	|                  f44f 7100 	mov.w	r1, #512	; 0x200
10002a2e:	|                  60f5      	str	r5, [r6, #12]
10002a30:	|                  61f1      	str	r1, [r6, #28]
10002a32:	|                  6170      	str	r0, [r6, #20]
10002a34:	|                  0720      	lsls	r0, r4, #28
10002a36:	|              /-- d504      	bpl.n	10002a42 <freopen+0x8e>
10002a38:	|              |   4630      	mov	r0, r6
10002a3a:	|              |   2202      	movs	r2, #2
10002a3c:	|              |   2100      	movs	r1, #0
10002a3e:	|              |   f000 f8e1 	bl	10002c04 <_fseek>
10002a42:	|              \-> 6d30      	ldr	r0, [r6, #80]	; 0x50
10002a44:	|                  f040 0001 	orr.w	r0, r0, #1
10002a48:	|                  6530      	str	r0, [r6, #80]	; 0x50
10002a4a:	|                  4630      	mov	r0, r6
10002a4c:	|              /-> e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
10002a50:	\--------------|-> 2000      	movs	r0, #0
10002a52:	               \-- e7fb      	b.n	10002a4c <freopen+0x98>

10002a54 <fopen>:
10002a54:	          e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
10002a58:	          460d      	mov	r5, r1
10002a5a:	          4606      	mov	r6, r0
10002a5c:	          4c10      	ldr	r4, [pc, #64]	; (10002aa0 <fopen+0x4c>)
10002a5e:	/-------> 6d20      	ldr	r0, [r4, #80]	; 0x50
10002a60:	|         07c1      	lsls	r1, r0, #31
10002a62:	|     /-- d004      	beq.n	10002a6e <fopen+0x1a>
10002a64:	|     |   0841      	lsrs	r1, r0, #1
10002a66:	|  /--|-- d004      	beq.n	10002a72 <fopen+0x1e>
10002a68:	|  |  |   f020 0401 	bic.w	r4, r0, #1
10002a6c:	\--|--|-- e7f7      	b.n	10002a5e <fopen+0xa>
10002a6e:	   |  \-> 4622      	mov	r2, r4
10002a70:	   |  /-- e00e      	b.n	10002a90 <fopen+0x3c>
10002a72:	   \--|-> 2054      	movs	r0, #84	; 0x54
10002a74:	      |   f000 f897 	bl	10002ba6 <malloc>
10002a78:	      |   0007      	movs	r7, r0
10002a7a:	   /--|-- d00e      	beq.n	10002a9a <fopen+0x46>
10002a7c:	   |  |   6d20      	ldr	r0, [r4, #80]	; 0x50
10002a7e:	   |  |   f047 0101 	orr.w	r1, r7, #1
10002a82:	   |  |   4308      	orrs	r0, r1
10002a84:	   |  |   2154      	movs	r1, #84	; 0x54
10002a86:	   |  |   6520      	str	r0, [r4, #80]	; 0x50
10002a88:	   |  |   4638      	mov	r0, r7
10002a8a:	   |  |   f7ff fde9 	bl	10002660 <__aeabi_memclr4>
10002a8e:	   |  |   463a      	mov	r2, r7
10002a90:	   |  \-> 4629      	mov	r1, r5
10002a92:	   |      4630      	mov	r0, r6
10002a94:	   |      e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
10002a98:	   |      e78c      	b.n	100029b4 <freopen>
10002a9a:	   \----> 2000      	movs	r0, #0
10002a9c:	          e7d6      	b.n	10002a4c <freopen+0x98>
10002a9e:	          0000      	.short	0x0000
10002aa0:	          080023e8 	.word	0x080023e8

10002aa4 <_fclose_internal>:
10002aa4:	       e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
10002aa8:	       4604      	mov	r4, r0
10002aaa:	       f04f 0900 	mov.w	r9, #0
10002aae:	       f04f 37ff 	mov.w	r7, #4294967295
10002ab2:	       68c5      	ldr	r5, [r0, #12]
10002ab4:	       e9d4 8604 	ldrd	r8, r6, [r4, #16]
10002ab8:	       07a8      	lsls	r0, r5, #30
10002aba:	/----- d007      	beq.n	10002acc <_fclose_internal+0x28>
10002abc:	|      4620      	mov	r0, r4
10002abe:	|      f000 f951 	bl	10002d64 <_fflush>
10002ac2:	|      4630      	mov	r0, r6
10002ac4:	|      f002 fc4e 	bl	10005364 <_sys_close>
10002ac8:	|      2800      	cmp	r0, #0
10002aca:	|  /-- da02      	bge.n	10002ad2 <_fclose_internal+0x2e>
10002acc:	\--|-> 4638      	mov	r0, r7
10002ace:	/--|-> e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
10002ad2:	|  \-> 0528      	lsls	r0, r5, #20
10002ad4:	|  /-- d502      	bpl.n	10002adc <_fclose_internal+0x38>
10002ad6:	|  |   4640      	mov	r0, r8
10002ad8:	|  |   f7ff ff22 	bl	10002920 <free>
10002adc:	|  \-> 214c      	movs	r1, #76	; 0x4c
10002ade:	|      4620      	mov	r0, r4
10002ae0:	|      f7ff fdbe 	bl	10002660 <__aeabi_memclr4>
10002ae4:	|      6d20      	ldr	r0, [r4, #80]	; 0x50
10002ae6:	|      f020 0001 	bic.w	r0, r0, #1
10002aea:	|      6520      	str	r0, [r4, #80]	; 0x50
10002aec:	|      4648      	mov	r0, r9
10002aee:	\----- e7ee      	b.n	10002ace <_fclose_internal+0x2a>

10002af0 <exit>:
10002af0:	b510      	push	{r4, lr}
10002af2:	4604      	mov	r4, r0
10002af4:	f3af 8000 	nop.w
10002af8:	4620      	mov	r0, r4
10002afa:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
10002afe:	f7ff bc6b 	b.w	100023d8 <__rt_exit>

10002b02 <__rt_SIGRTRED>:
10002b02:	b510      	push	{r4, lr}
10002b04:	f000 f978 	bl	10002df8 <__rt_SIGRTRED_inner>
10002b08:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
10002b0c:	f000 b96e 	b.w	10002dec <__sig_exit>

10002b10 <__rt_heap_descriptor>:
10002b10:	4800      	ldr	r0, [pc, #0]	; (10002b14 <__rt_heap_descriptor+0x4>)
10002b12:	4770      	bx	lr
10002b14:	080024ec 	.word	0x080024ec

10002b18 <__use_no_heap>:
10002b18:	4770      	bx	lr

10002b1a <__heap$guard>:
10002b1a:	4770      	bx	lr

10002b1c <_terminate_user_alloc>:
10002b1c:	4770      	bx	lr

10002b1e <_init_user_alloc>:
10002b1e:	4770      	bx	lr

10002b20 <__Heap_Full>:
10002b20:	b538      	push	{r3, r4, r5, lr}
10002b22:	4604      	mov	r4, r0
10002b24:	460a      	mov	r2, r1
10002b26:	2000      	movs	r0, #0
10002b28:	4669      	mov	r1, sp
10002b2a:	f3af 8000 	nop.w
10002b2e:	2800      	cmp	r0, #0
10002b30:	bf08      	it	eq
10002b32:	bd38      	popeq	{r3, r4, r5, pc}
10002b34:	4602      	mov	r2, r0
10002b36:	9900      	ldr	r1, [sp, #0]
10002b38:	4620      	mov	r0, r4
10002b3a:	f000 f985 	bl	10002e48 <__Heap_ProvideMemory>
10002b3e:	2001      	movs	r0, #1
10002b40:	bd38      	pop	{r3, r4, r5, pc}

10002b42 <__Heap_Broken>:
10002b42:	2001      	movs	r0, #1
10002b44:	f000 b972 	b.w	10002e2c <__rt_SIGRTMEM>

10002b48 <_init_alloc>:
10002b48:	    b5f8      	push	{r3, r4, r5, r6, r7, lr}
10002b4a:	    f3af 8000 	nop.w
10002b4e:	    4605      	mov	r5, r0
10002b50:	    2000      	movs	r0, #0
10002b52:	    460c      	mov	r4, r1
10002b54:	    2010      	movs	r0, #16
10002b56:	    bf00      	nop
10002b58:	    4606      	mov	r6, r0
10002b5a:	    19a8      	adds	r0, r5, r6
10002b5c:	    42a0      	cmp	r0, r4
10002b5e:	/-- d90d      	bls.n	10002b7c <_init_alloc+0x34>
10002b60:	|   4632      	mov	r2, r6
10002b62:	|   4669      	mov	r1, sp
10002b64:	|   2000      	movs	r0, #0
10002b66:	|   f3af 8000 	nop.w
10002b6a:	|   0007      	movs	r7, r0
10002b6c:	|   bf08      	it	eq
10002b6e:	|   f000 f95d 	bleq	10002e2c <__rt_SIGRTMEM>
10002b72:	|   9800      	ldr	r0, [sp, #0]
10002b74:	|   42a0      	cmp	r0, r4
10002b76:	|   bf18      	it	ne
10002b78:	|   4605      	movne	r5, r0
10002b7a:	|   19c4      	adds	r4, r0, r7
10002b7c:	\-> f7ff ffc8 	bl	10002b10 <__rt_heap_descriptor>
10002b80:	    6005      	str	r5, [r0, #0]
10002b82:	    4607      	mov	r7, r0
10002b84:	    1df0      	adds	r0, r6, #7
10002b86:	    f020 0007 	bic.w	r0, r0, #7
10002b8a:	    1946      	adds	r6, r0, r5
10002b8c:	    4628      	mov	r0, r5
10002b8e:	    f000 f954 	bl	10002e3a <__Heap_Initialize>
10002b92:	    42b4      	cmp	r4, r6
10002b94:	    bf08      	it	eq
10002b96:	    bdf8      	popeq	{r3, r4, r5, r6, r7, pc}
10002b98:	    1ba2      	subs	r2, r4, r6
10002b9a:	    4631      	mov	r1, r6
10002b9c:	    6838      	ldr	r0, [r7, #0]
10002b9e:	    e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
10002ba2:	    f000 b951 	b.w	10002e48 <__Heap_ProvideMemory>

10002ba6 <malloc>:
10002ba6:	                b570      	push	{r4, r5, r6, lr}
10002ba8:	                4606      	mov	r6, r0
10002baa:	                f7ff ffb1 	bl	10002b10 <__rt_heap_descriptor>
10002bae:	                6805      	ldr	r5, [r0, #0]
10002bb0:	                f106 000b 	add.w	r0, r6, #11
10002bb4:	                f020 0407 	bic.w	r4, r0, #7
10002bb8:	                42b4      	cmp	r4, r6
10002bba:	                bf9c      	itt	ls
10002bbc:	                2000      	movls	r0, #0
10002bbe:	                bd70      	popls	{r4, r5, r6, pc}
10002bc0:	/-------------> 462b      	mov	r3, r5
10002bc2:	|               686a      	ldr	r2, [r5, #4]
10002bc4:	|  /----------- b1ba      	cbz	r2, 10002bf6 <malloc+0x50>
10002bc6:	|  |  /-------> 6810      	ldr	r0, [r2, #0]
10002bc8:	|  |  |         42a0      	cmp	r0, r4
10002bca:	|  |  |  /----- d310      	bcc.n	10002bee <malloc+0x48>
10002bcc:	|  |  |  |      f104 0108 	add.w	r1, r4, #8
10002bd0:	|  |  |  |      4288      	cmp	r0, r1
10002bd2:	|  |  |  |      bf3c      	itt	cc
10002bd4:	|  |  |  |      6850      	ldrcc	r0, [r2, #4]
10002bd6:	|  |  |  |      6058      	strcc	r0, [r3, #4]
10002bd8:	|  |  |  |  /-- d307      	bcc.n	10002bea <malloc+0x44>
10002bda:	|  |  |  |  |   6851      	ldr	r1, [r2, #4]
10002bdc:	|  |  |  |  |   1910      	adds	r0, r2, r4
10002bde:	|  |  |  |  |   6041      	str	r1, [r0, #4]
10002be0:	|  |  |  |  |   6811      	ldr	r1, [r2, #0]
10002be2:	|  |  |  |  |   1b09      	subs	r1, r1, r4
10002be4:	|  |  |  |  |   6001      	str	r1, [r0, #0]
10002be6:	|  |  |  |  |   6058      	str	r0, [r3, #4]
10002be8:	|  |  |  |  |   6014      	str	r4, [r2, #0]
10002bea:	|  |  |  |  \-> 1d10      	adds	r0, r2, #4
10002bec:	|  |  |  |      bd70      	pop	{r4, r5, r6, pc}
10002bee:	|  |  |  \----> 4613      	mov	r3, r2
10002bf0:	|  |  |         6852      	ldr	r2, [r2, #4]
10002bf2:	|  |  |         2a00      	cmp	r2, #0
10002bf4:	|  |  \-------- d1e7      	bne.n	10002bc6 <malloc+0x20>
10002bf6:	|  \----------> 4621      	mov	r1, r4
10002bf8:	|               4628      	mov	r0, r5
10002bfa:	|               f7ff ff91 	bl	10002b20 <__Heap_Full>
10002bfe:	|               2800      	cmp	r0, #0
10002c00:	\-------------- d1de      	bne.n	10002bc0 <malloc+0x1a>
10002c02:	                bd70      	pop	{r4, r5, r6, pc}

10002c04 <_fseek>:
10002c04:	                e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
10002c08:	                4604      	mov	r4, r0
10002c0a:	                4616      	mov	r6, r2
10002c0c:	                460d      	mov	r5, r1
10002c0e:	                6947      	ldr	r7, [r0, #20]
10002c10:	                7b00      	ldrb	r0, [r0, #12]
10002c12:	                0780      	lsls	r0, r0, #30
10002c14:	   /----------- d02e      	beq.n	10002c74 <_fseek+0x70>
10002c16:	   |            4638      	mov	r0, r7
10002c18:	   |            f002 fbaa 	bl	10005370 <_sys_istty>
10002c1c:	   +----------- bb50      	cbnz	r0, 10002c74 <_fseek+0x70>
10002c1e:	   |  /-------- b33e      	cbz	r6, 10002c70 <_fseek+0x6c>
10002c20:	   |  |         2e01      	cmp	r6, #1
10002c22:	   |  |     /-- d002      	beq.n	10002c2a <_fseek+0x26>
10002c24:	   |  |     |   2e02      	cmp	r6, #2
10002c26:	   +--|-----|-- d125      	bne.n	10002c74 <_fseek+0x70>
10002c28:	   |  |  /--|-- e004      	b.n	10002c34 <_fseek+0x30>
10002c2a:	   |  |  |  \-> 4620      	mov	r0, r4
10002c2c:	   |  |  |      f000 f926 	bl	10002e7c <_ftell_internal>
10002c30:	   |  |  |      4405      	add	r5, r0
10002c32:	   |  +--|----- e01d      	b.n	10002c70 <_fseek+0x6c>
10002c34:	   |  |  \----> 4638      	mov	r0, r7
10002c36:	   |  |         f002 fb99 	bl	1000536c <_sys_flen>
10002c3a:	   |  |         68e1      	ldr	r1, [r4, #12]
10002c3c:	   |  |         2800      	cmp	r0, #0
10002c3e:	   |  |         f041 0110 	orr.w	r1, r1, #16
10002c42:	   |  |         60e1      	str	r1, [r4, #12]
10002c44:	   |  |     /-- da05      	bge.n	10002c52 <_fseek+0x4e>
10002c46:	   |  |     |   4620      	mov	r0, r4
10002c48:	   |  |     |   f000 f858 	bl	10002cfc <_seterr>
10002c4c:	   |  |     |   2001      	movs	r0, #1
10002c4e:	/--|--|-----|-> e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
10002c52:	|  |  |     \-> 03c9      	lsls	r1, r1, #15
10002c54:	|  |  |  /----- d50b      	bpl.n	10002c6e <_fseek+0x6a>
10002c56:	|  |  |  |      6862      	ldr	r2, [r4, #4]
10002c58:	|  |  |  |      6ae1      	ldr	r1, [r4, #44]	; 0x2c
10002c5a:	|  |  |  |      4291      	cmp	r1, r2
10002c5c:	|  |  |  |  /-- d800      	bhi.n	10002c60 <_fseek+0x5c>
10002c5e:	|  |  |  |  |   4611      	mov	r1, r2
10002c60:	|  |  |  |  \-> 69a2      	ldr	r2, [r4, #24]
10002c62:	|  |  |  |      4411      	add	r1, r2
10002c64:	|  |  |  |      6922      	ldr	r2, [r4, #16]
10002c66:	|  |  |  |      1a89      	subs	r1, r1, r2
10002c68:	|  |  |  |      4281      	cmp	r1, r0
10002c6a:	|  |  |  +----- dd00      	ble.n	10002c6e <_fseek+0x6a>
10002c6c:	|  |  |  |      4608      	mov	r0, r1
10002c6e:	|  |  |  \----> 4405      	add	r5, r0
10002c70:	|  |  \-------> 2d00      	cmp	r5, #0
10002c72:	|  |        /-- da01      	bge.n	10002c78 <_fseek+0x74>
10002c74:	|  \--------|-> 2002      	movs	r0, #2
10002c76:	+-----------|-- e7ea      	b.n	10002c4e <_fseek+0x4a>
10002c78:	|           \-> 6ae1      	ldr	r1, [r4, #44]	; 0x2c
10002c7a:	|               6860      	ldr	r0, [r4, #4]
10002c7c:	|               68e2      	ldr	r2, [r4, #12]
10002c7e:	|               4281      	cmp	r1, r0
10002c80:	|           /-- d206      	bcs.n	10002c90 <_fseek+0x8c>
10002c82:	|           |   0391      	lsls	r1, r2, #14
10002c84:	|           |   62e0      	str	r0, [r4, #44]	; 0x2c
10002c86:	|           +-- d503      	bpl.n	10002c90 <_fseek+0x8c>
10002c88:	|           |   f422 3100 	bic.w	r1, r2, #131072	; 0x20000
10002c8c:	|           |   f041 0210 	orr.w	r2, r1, #16
10002c90:	|           \-> 69a6      	ldr	r6, [r4, #24]
10002c92:	|               2700      	movs	r7, #0
10002c94:	|               42ae      	cmp	r6, r5
10002c96:	|     /-------- dc13      	bgt.n	10002cc0 <_fseek+0xbc>
10002c98:	|     |         6ae1      	ldr	r1, [r4, #44]	; 0x2c
10002c9a:	|     |         4281      	cmp	r1, r0
10002c9c:	|     |  /----- d901      	bls.n	10002ca2 <_fseek+0x9e>
10002c9e:	|     |  |      460b      	mov	r3, r1
10002ca0:	|     |  |  /-- e000      	b.n	10002ca4 <_fseek+0xa0>
10002ca2:	|     |  \--|-> 4603      	mov	r3, r0
10002ca4:	|     |     \-> eb03 0c06 	add.w	ip, r3, r6
10002ca8:	|     |         6923      	ldr	r3, [r4, #16]
10002caa:	|     |         ebac 0c03 	sub.w	ip, ip, r3
10002cae:	|     |         45ac      	cmp	ip, r5
10002cb0:	|     +-------- dd06      	ble.n	10002cc0 <_fseek+0xbc>
10002cb2:	|     |         4281      	cmp	r1, r0
10002cb4:	|     |  /----- d901      	bls.n	10002cba <_fseek+0xb6>
10002cb6:	|     |  |      468c      	mov	ip, r1
10002cb8:	|     |  |  /-- e000      	b.n	10002cbc <_fseek+0xb8>
10002cba:	|     |  \--|-> 4684      	mov	ip, r0
10002cbc:	|     |     \-> 459c      	cmp	ip, r3
10002cbe:	|     |     /-- d105      	bne.n	10002ccc <_fseek+0xc8>
10002cc0:	|     \-----|-> 60a7      	str	r7, [r4, #8]
10002cc2:	|           |   6027      	str	r7, [r4, #0]
10002cc4:	|           |   f042 0020 	orr.w	r0, r2, #32
10002cc8:	|           |   62a5      	str	r5, [r4, #40]	; 0x28
10002cca:	|        /--|-- e00d      	b.n	10002ce8 <_fseek+0xe4>
10002ccc:	|        |  \-> 1bad      	subs	r5, r5, r6
10002cce:	|        |      69e6      	ldr	r6, [r4, #28]
10002cd0:	|        |      1bae      	subs	r6, r5, r6
10002cd2:	|        |      4281      	cmp	r1, r0
10002cd4:	|        |      60a6      	str	r6, [r4, #8]
10002cd6:	|        |  /-- d900      	bls.n	10002cda <_fseek+0xd6>
10002cd8:	|        |  |   4608      	mov	r0, r1
10002cda:	|        |  \-> 1ac0      	subs	r0, r0, r3
10002cdc:	|        |      1a28      	subs	r0, r5, r0
10002cde:	|        |      6020      	str	r0, [r4, #0]
10002ce0:	|        |      1958      	adds	r0, r3, r5
10002ce2:	|        |      6060      	str	r0, [r4, #4]
10002ce4:	|        |      f022 0020 	bic.w	r0, r2, #32
10002ce8:	|        \----> 4903      	ldr	r1, [pc, #12]	; (10002cf8 <_fseek+0xf4>)
10002cea:	|               4008      	ands	r0, r1
10002cec:	|               60e0      	str	r0, [r4, #12]
10002cee:	|               2000      	movs	r0, #0
10002cf0:	|               f884 7048 	strb.w	r7, [r4, #72]	; 0x48
10002cf4:	\-------------- e7ab      	b.n	10002c4e <_fseek+0x4a>
10002cf6:	                0000      	.short	0x0000
10002cf8:	                ffd7cfbf 	.word	0xffd7cfbf

10002cfc <_seterr>:
10002cfc:	68c1      	ldr	r1, [r0, #12]
10002cfe:	f421 1100 	bic.w	r1, r1, #2097152	; 0x200000
10002d02:	f041 0180 	orr.w	r1, r1, #128	; 0x80
10002d06:	60c1      	str	r1, [r0, #12]
10002d08:	2100      	movs	r1, #0
10002d0a:	6081      	str	r1, [r0, #8]
10002d0c:	6001      	str	r1, [r0, #0]
10002d0e:	4770      	bx	lr

10002d10 <_writebuf>:
10002d10:	       e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
10002d14:	       4681      	mov	r9, r0
10002d16:	       4614      	mov	r4, r2
10002d18:	       460e      	mov	r6, r1
10002d1a:	       f04f 38ff 	mov.w	r8, #4294967295
10002d1e:	       4832      	ldr	r0, [pc, #200]	; (10002de8 <_deferredlazyseek+0x3e>)
10002d20:	       68d5      	ldr	r5, [r2, #12]
10002d22:	       6957      	ldr	r7, [r2, #20]
10002d24:	       4205      	tst	r5, r0
10002d26:	   /-- d009      	beq.n	10002d3c <_writebuf+0x2c>
10002d28:	   |   4638      	mov	r0, r7
10002d2a:	   |   69a1      	ldr	r1, [r4, #24]
10002d2c:	   |   f002 fb24 	bl	10005378 <_sys_seek>
10002d30:	   |   2800      	cmp	r0, #0
10002d32:	/--|-- db11      	blt.n	10002d58 <_writebuf+0x48>
10002d34:	|  |   482c      	ldr	r0, [pc, #176]	; (10002de8 <_deferredlazyseek+0x3e>)
10002d36:	|  |   43c0      	mvns	r0, r0
10002d38:	|  |   4005      	ands	r5, r0
10002d3a:	|  |   60e5      	str	r5, [r4, #12]
10002d3c:	|  \-> 462b      	mov	r3, r5
10002d3e:	|      4632      	mov	r2, r6
10002d40:	|      4649      	mov	r1, r9
10002d42:	|      4638      	mov	r0, r7
10002d44:	|      f002 fb1c 	bl	10005380 <_sys_write>
10002d48:	|      69a1      	ldr	r1, [r4, #24]
10002d4a:	|      f020 4200 	bic.w	r2, r0, #2147483648	; 0x80000000
10002d4e:	|      1ab2      	subs	r2, r6, r2
10002d50:	|      4411      	add	r1, r2
10002d52:	|      2800      	cmp	r0, #0
10002d54:	|      61a1      	str	r1, [r4, #24]
10002d56:	|  /-- d003      	beq.n	10002d60 <_writebuf+0x50>
10002d58:	\--|-> 4620      	mov	r0, r4
10002d5a:	   |   f7ff ffcf 	bl	10002cfc <_seterr>
10002d5e:	   |   4640      	mov	r0, r8
10002d60:	   \-> e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

10002d64 <_fflush>:
10002d64:	       b570      	push	{r4, r5, r6, lr}
10002d66:	       4604      	mov	r4, r0
10002d68:	       6905      	ldr	r5, [r0, #16]
10002d6a:	       6ac0      	ldr	r0, [r0, #44]	; 0x2c
10002d6c:	       6861      	ldr	r1, [r4, #4]
10002d6e:	       4288      	cmp	r0, r1
10002d70:	   /-- d800      	bhi.n	10002d74 <_fflush+0x10>
10002d72:	   |   4608      	mov	r0, r1
10002d74:	   \-> 68e1      	ldr	r1, [r4, #12]
10002d76:	       f421 1120 	bic.w	r1, r1, #2621440	; 0x280000
10002d7a:	       60e1      	str	r1, [r4, #12]
10002d7c:	       03c9      	lsls	r1, r1, #15
10002d7e:	/----- d512      	bpl.n	10002da6 <_fflush+0x42>
10002d80:	|      42a8      	cmp	r0, r5
10002d82:	|  /-- d008      	beq.n	10002d96 <_fflush+0x32>
10002d84:	|  |   4622      	mov	r2, r4
10002d86:	|  |   1b41      	subs	r1, r0, r5
10002d88:	|  |   4628      	mov	r0, r5
10002d8a:	|  |   f7ff ffc1 	bl	10002d10 <_writebuf>
10002d8e:	|  +-- b110      	cbz	r0, 10002d96 <_fflush+0x32>
10002d90:	|  |   f04f 30ff 	mov.w	r0, #4294967295
10002d94:	|  |   bd70      	pop	{r4, r5, r6, pc}
10002d96:	|  \-> 2000      	movs	r0, #0
10002d98:	|      62e5      	str	r5, [r4, #44]	; 0x2c
10002d9a:	|      e9c4 5001 	strd	r5, r0, [r4, #4]
10002d9e:	|      68e0      	ldr	r0, [r4, #12]
10002da0:	|      f420 3080 	bic.w	r0, r0, #65536	; 0x10000
10002da4:	|      60e0      	str	r0, [r4, #12]
10002da6:	\----> 2000      	movs	r0, #0
10002da8:	       bd70      	pop	{r4, r5, r6, pc}

10002daa <_deferredlazyseek>:
10002daa:	    b510      	push	{r4, lr}
10002dac:	    4604      	mov	r4, r0
10002dae:	    68c0      	ldr	r0, [r0, #12]
10002db0:	    f020 0020 	bic.w	r0, r0, #32
10002db4:	    60e0      	str	r0, [r4, #12]
10002db6:	    6aa1      	ldr	r1, [r4, #40]	; 0x28
10002db8:	    69a0      	ldr	r0, [r4, #24]
10002dba:	    4288      	cmp	r0, r1
10002dbc:	/-- d00d      	beq.n	10002dda <_deferredlazyseek+0x30>
10002dbe:	|   4620      	mov	r0, r4
10002dc0:	|   f7ff ffd0 	bl	10002d64 <_fflush>
10002dc4:	|   68e0      	ldr	r0, [r4, #12]
10002dc6:	|   f420 5040 	bic.w	r0, r0, #12288	; 0x3000
10002dca:	|   f040 0010 	orr.w	r0, r0, #16
10002dce:	|   60e0      	str	r0, [r4, #12]
10002dd0:	|   6aa0      	ldr	r0, [r4, #40]	; 0x28
10002dd2:	|   61a0      	str	r0, [r4, #24]
10002dd4:	|   6920      	ldr	r0, [r4, #16]
10002dd6:	|   62e0      	str	r0, [r4, #44]	; 0x2c
10002dd8:	|   6060      	str	r0, [r4, #4]
10002dda:	\-> f244 0140 	movw	r1, #16448	; 0x4040
10002dde:	    68e0      	ldr	r0, [r4, #12]
10002de0:	    4388      	bics	r0, r1
10002de2:	    60e0      	str	r0, [r4, #12]
10002de4:	    bd10      	pop	{r4, pc}
10002de6:	    0000      	.short	0x0000
10002de8:	    00020010 	.word	0x00020010

10002dec <__sig_exit>:
10002dec:	    2800      	cmp	r0, #0
10002dee:	/-- d001      	beq.n	10002df4 <__sig_exit+0x8>
10002df0:	|   f002 baba 	b.w	10005368 <_sys_exit>
10002df4:	\-> 4770      	bx	lr
	...

10002df8 <__rt_SIGRTRED_inner>:
10002df8:	b510      	push	{r4, lr}
10002dfa:	4601      	mov	r1, r0
10002dfc:	a002      	add	r0, pc, #8	; (adr r0, 10002e08 <__rt_SIGRTRED_inner+0x10>)
10002dfe:	f000 f85e 	bl	10002ebe <__default_signal_display>
10002e02:	2001      	movs	r0, #1
10002e04:	bd10      	pop	{r4, pc}
10002e06:	0000      	.short	0x0000
10002e08:	52474953 	.word	0x52474953
10002e0c:	44455254 	.word	0x44455254
10002e10:	6552203a 	.word	0x6552203a
10002e14:	65726964 	.word	0x65726964
10002e18:	203a7463 	.word	0x203a7463
10002e1c:	276e6163 	.word	0x276e6163
10002e20:	706f2074 	.word	0x706f2074
10002e24:	203a6e65 	.word	0x203a6e65
10002e28:	00000000 	.word	0x00000000

10002e2c <__rt_SIGRTMEM>:
10002e2c:	b510      	push	{r4, lr}
10002e2e:	f000 f85f 	bl	10002ef0 <__rt_SIGRTMEM_inner>
10002e32:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
10002e36:	f7ff bfd9 	b.w	10002dec <__sig_exit>

10002e3a <__Heap_Initialize>:
10002e3a:	2100      	movs	r1, #0
10002e3c:	6001      	str	r1, [r0, #0]
10002e3e:	e9c0 1001 	strd	r1, r0, [r0, #4]
10002e42:	4770      	bx	lr

10002e44 <__Heap_DescSize>:
10002e44:	2010      	movs	r0, #16
10002e46:	4770      	bx	lr

10002e48 <__Heap_ProvideMemory>:
10002e48:	    4603      	mov	r3, r0
10002e4a:	    6840      	ldr	r0, [r0, #4]
10002e4c:	    468c      	mov	ip, r1
10002e4e:	/-> 2800      	cmp	r0, #0
10002e50:	|   bf18      	it	ne
10002e52:	|   4288      	cmpne	r0, r1
10002e54:	|   bf3c      	itt	cc
10002e56:	|   4603      	movcc	r3, r0
10002e58:	|   6840      	ldrcc	r0, [r0, #4]
10002e5a:	\-- d3f8      	bcc.n	10002e4e <__Heap_ProvideMemory+0x6>
10002e5c:	    6818      	ldr	r0, [r3, #0]
10002e5e:	    4418      	add	r0, r3
10002e60:	    4288      	cmp	r0, r1
10002e62:	/-- d007      	beq.n	10002e74 <__Heap_ProvideMemory+0x2c>
10002e64:	|   f10c 0003 	add.w	r0, ip, #3
10002e68:	|   f020 0007 	bic.w	r0, r0, #7
10002e6c:	|   1d00      	adds	r0, r0, #4
10002e6e:	|   1a41      	subs	r1, r0, r1
10002e70:	|   1a52      	subs	r2, r2, r1
10002e72:	|   4601      	mov	r1, r0
10002e74:	\-> 1d08      	adds	r0, r1, #4
10002e76:	    600a      	str	r2, [r1, #0]
10002e78:	    f7ff bd52 	b.w	10002920 <free>

10002e7c <_ftell_internal>:
10002e7c:	          b510      	push	{r4, lr}
10002e7e:	          4601      	mov	r1, r0
10002e80:	          68c2      	ldr	r2, [r0, #12]
10002e82:	          0790      	lsls	r0, r2, #30
10002e84:	      /-- d003      	beq.n	10002e8e <_ftell_internal+0x12>
10002e86:	      |   0690      	lsls	r0, r2, #26
10002e88:	   /--|-- d507      	bpl.n	10002e9a <_ftell_internal+0x1e>
10002e8a:	   |  |   6a88      	ldr	r0, [r1, #40]	; 0x28
10002e8c:	/--|--|-- e00a      	b.n	10002ea4 <_ftell_internal+0x28>
10002e8e:	|  |  \-> f000 f857 	bl	10002f40 <__aeabi_errno_addr>
10002e92:	|  |      2101      	movs	r1, #1
10002e94:	|  |      6001      	str	r1, [r0, #0]
10002e96:	|  |      1e88      	subs	r0, r1, #2
10002e98:	|  |      bd10      	pop	{r4, pc}
10002e9a:	|  \----> 698b      	ldr	r3, [r1, #24]
10002e9c:	|         6848      	ldr	r0, [r1, #4]
10002e9e:	|         4418      	add	r0, r3
10002ea0:	|         690b      	ldr	r3, [r1, #16]
10002ea2:	|         1ac0      	subs	r0, r0, r3
10002ea4:	\-------> f891 3048 	ldrb.w	r3, [r1, #72]	; 0x48
10002ea8:	   /----- b11b      	cbz	r3, 10002eb2 <_ftell_internal+0x36>
10002eaa:	   |      f891 1049 	ldrb.w	r1, [r1, #73]	; 0x49
10002eae:	   |      1a40      	subs	r0, r0, r1
10002eb0:	   |  /-> bd10      	pop	{r4, pc}
10002eb2:	   \--|-> 0311      	lsls	r1, r2, #12
10002eb4:	      +-- d5fc      	bpl.n	10002eb0 <_ftell_internal+0x34>
10002eb6:	      |   2800      	cmp	r0, #0
10002eb8:	      \-- ddfa      	ble.n	10002eb0 <_ftell_internal+0x34>
10002eba:	          1e40      	subs	r0, r0, #1
10002ebc:	          bd10      	pop	{r4, pc}

10002ebe <__default_signal_display>:
10002ebe:	          b570      	push	{r4, r5, r6, lr}
10002ec0:	          4605      	mov	r5, r0
10002ec2:	          460c      	mov	r4, r1
10002ec4:	          200a      	movs	r0, #10
10002ec6:	      /-- e000      	b.n	10002eca <__default_signal_display+0xc>
10002ec8:	   /--|-> 1c6d      	adds	r5, r5, #1
10002eca:	   |  \-> f002 fa5b 	bl	10005384 <_ttywrch>
10002ece:	/--|----- b135      	cbz	r5, 10002ede <__default_signal_display+0x20>
10002ed0:	|  |      7828      	ldrb	r0, [r5, #0]
10002ed2:	|  |      2800      	cmp	r0, #0
10002ed4:	|  \----- d1f8      	bne.n	10002ec8 <__default_signal_display+0xa>
10002ed6:	+-------- e002      	b.n	10002ede <__default_signal_display+0x20>
10002ed8:	|  /----> 1c64      	adds	r4, r4, #1
10002eda:	|  |      f002 fa53 	bl	10005384 <_ttywrch>
10002ede:	\--|--/-X b114      	cbz	r4, 10002ee6 <__default_signal_display+0x28>
10002ee0:	   |  |   7820      	ldrb	r0, [r4, #0]
10002ee2:	   |  |   2800      	cmp	r0, #0
10002ee4:	   \--|-- d1f8      	bne.n	10002ed8 <__default_signal_display+0x1a>
10002ee6:	      \-> e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
10002eea:	          200a      	movs	r0, #10
10002eec:	          f002 ba4a 	b.w	10005384 <_ttywrch>

10002ef0 <__rt_SIGRTMEM_inner>:
10002ef0:	       b510      	push	{r4, lr}
10002ef2:	       2801      	cmp	r0, #1
10002ef4:	/----- d005      	beq.n	10002f02 <__rt_SIGRTMEM_inner+0x12>
10002ef6:	|      2100      	movs	r1, #0
10002ef8:	|  /-> a003      	add	r0, pc, #12	; (adr r0, 10002f08 <__rt_SIGRTMEM_inner+0x18>)
10002efa:	|  |   f7ff ffe0 	bl	10002ebe <__default_signal_display>
10002efe:	|  |   2001      	movs	r0, #1
10002f00:	|  |   bd10      	pop	{r4, pc}
10002f02:	\--|-> a109      	add	r1, pc, #36	; (adr r1, 10002f28 <__rt_SIGRTMEM_inner+0x38>)
10002f04:	   \-- e7f8      	b.n	10002ef8 <__rt_SIGRTMEM_inner+0x8>
10002f06:	       0000      	.short	0x0000
10002f08:	       52474953 	.word	0x52474953
10002f0c:	       4d454d54 	.word	0x4d454d54
10002f10:	       754f203a 	.word	0x754f203a
10002f14:	       666f2074 	.word	0x666f2074
10002f18:	       61656820 	.word	0x61656820
10002f1c:	       656d2070 	.word	0x656d2070
10002f20:	       79726f6d 	.word	0x79726f6d
10002f24:	       00000000 	.word	0x00000000
10002f28:	       6548203a 	.word	0x6548203a
10002f2c:	       6d207061 	.word	0x6d207061
10002f30:	       726f6d65 	.word	0x726f6d65
10002f34:	       6f632079 	.word	0x6f632079
10002f38:	       70757272 	.word	0x70757272
10002f3c:	       00646574 	.word	0x00646574

10002f40 <__aeabi_errno_addr>:
10002f40:	4800      	ldr	r0, [pc, #0]	; (10002f44 <__aeabi_errno_addr+0x4>)
10002f42:	4770      	bx	lr
10002f44:	080024e4 	.word	0x080024e4

10002f48 <AES128_ECB_encrypt>:
10002f48:	f002 bc5c 	b.w	10005804 <gen_cipher>

10002f4c <Cy_GPIO_Pin_FastInit>:
10002f4c:	                            2908      	cmp	r1, #8
10002f4e:	                        /-- d300      	bcc.n	10002f52 <Cy_GPIO_Pin_FastInit+0x6>
10002f50:	                        |   be01      	bkpt	0x0001
10002f52:	                        \-> 2a0f      	cmp	r2, #15
10002f54:	/-------------------------- d84a      	bhi.n	10002fec <Cy_GPIO_Pin_FastInit+0xa0>
10002f56:	|                           f022 0c08 	bic.w	ip, r2, #8
10002f5a:	|                           f1bc 0f01 	cmp.w	ip, #1
10002f5e:	+-------------------------- d045      	beq.n	10002fec <Cy_GPIO_Pin_FastInit+0xa0>
10002f60:	|                           b5f0      	push	{r4, r5, r6, r7, lr}
10002f62:	|                           f8dd c014 	ldr.w	ip, [sp, #20]
10002f66:	|                           2b02      	cmp	r3, #2
10002f68:	|                 /-------- d246      	bcs.n	10002ff8 <Cy_GPIO_Pin_FastInit+0xac>
10002f6a:	|                 |     /-> f1bc 0f20 	cmp.w	ip, #32
10002f6e:	|           /-----|-----|-- d247      	bcs.n	10003000 <Cy_GPIO_Pin_FastInit+0xb4>
10002f70:	|           |     |  /--|-> 2908      	cmp	r1, #8
10002f72:	|     /-----|-----|--|--|-- d248      	bcs.n	10003006 <Cy_GPIO_Pin_FastInit+0xba>
10002f74:	|     |     |  /--|--|--|-> f01c 0fe0 	tst.w	ip, #224	; 0xe0
10002f78:	|  /--|-----|--|--|--|--|-- d000      	beq.n	10002f7c <Cy_GPIO_Pin_FastInit+0x30>
10002f7a:	|  |  |  /--|--|--|--|--|-> be01      	bkpt	0x0001
10002f7c:	|  >--|--|--|--|--|--|--|-> f242 7eb8 	movw	lr, #10168	; 0x27b8
10002f80:	|  |  |  |  |  |  |  |  |   f6c0 0e00 	movt	lr, #2048	; 0x800
10002f84:	|  |  |  |  |  |  |  |  |   f8de e000 	ldr.w	lr, [lr]
10002f88:	|  |  |  |  |  |  |  |  |   f06f 060f 	mvn.w	r6, #15
10002f8c:	|  |  |  |  |  |  |  |  |   e9de 5405 	ldrd	r5, r4, [lr, #20]
10002f90:	|  |  |  |  |  |  |  |  |   2904      	cmp	r1, #4
10002f92:	|  |  |  |  |  |  |  |  |   eba0 0404 	sub.w	r4, r0, r4
10002f96:	|  |  |  |  |  |  |  |  |   ea06 04d4 	and.w	r4, r6, r4, lsr #3
10002f9a:	|  |  |  |  |  |  |  |  |   442c      	add	r4, r5
10002f9c:	|  |  |  |  |  |  |  |  |   f06f 051f 	mvn.w	r5, #31
10002fa0:	|  |  |  |  |  |  |  |  |   eb05 05c1 	add.w	r5, r5, r1, lsl #3
10002fa4:	|  |  |  |  |  |  |  |  |   bf34      	ite	cc
10002fa6:	|  |  |  |  |  |  |  |  |   00cd      	lslcc	r5, r1, #3
10002fa8:	|  |  |  |  |  |  |  |  |   3404      	addcs	r4, #4
10002faa:	|  |  |  |  |  |  |  |  |   6826      	ldr	r6, [r4, #0]
10002fac:	|  |  |  |  |  |  |  |  |   271f      	movs	r7, #31
10002fae:	|  |  |  |  |  |  |  |  |   40af      	lsls	r7, r5
10002fb0:	|  |  |  |  |  |  |  |  |   43be      	bics	r6, r7
10002fb2:	|  |  |  |  |  |  |  |  |   f00c 071f 	and.w	r7, ip, #31
10002fb6:	|  |  |  |  |  |  |  |  |   40af      	lsls	r7, r5
10002fb8:	|  |  |  |  |  |  |  |  |   4337      	orrs	r7, r6
10002fba:	|  |  |  |  |  |  |  |  |   6027      	str	r7, [r4, #0]
10002fbc:	|  |  |  |  |  |  |  |  |   6807      	ldr	r7, [r0, #0]
10002fbe:	|  |  |  |  |  |  |  |  |   2601      	movs	r6, #1
10002fc0:	|  |  |  |  |  |  |  |  |   408e      	lsls	r6, r1
10002fc2:	|  |  |  |  |  |  |  |  |   f003 0301 	and.w	r3, r3, #1
10002fc6:	|  |  |  |  |  |  |  |  |   43b7      	bics	r7, r6
10002fc8:	|  |  |  |  |  |  |  |  |   408b      	lsls	r3, r1
10002fca:	|  |  |  |  |  |  |  |  |   433b      	orrs	r3, r7
10002fcc:	|  |  |  |  |  |  |  |  |   6003      	str	r3, [r0, #0]
10002fce:	|  |  |  |  |  |  |  |  |   f89e 3081 	ldrb.w	r3, [lr, #129]	; 0x81
10002fd2:	|  |  |  |  |  |  |  |  |   0089      	lsls	r1, r1, #2
10002fd4:	|  |  |  |  |  |  |  |  |   581f      	ldr	r7, [r3, r0]
10002fd6:	|  |  |  |  |  |  |  |  |   260f      	movs	r6, #15
10002fd8:	|  |  |  |  |  |  |  |  |   408e      	lsls	r6, r1
10002fda:	|  |  |  |  |  |  |  |  |   f002 020f 	and.w	r2, r2, #15
10002fde:	|  |  |  |  |  |  |  |  |   43b7      	bics	r7, r6
10002fe0:	|  |  |  |  |  |  |  |  |   fa02 f101 	lsl.w	r1, r2, r1
10002fe4:	|  |  |  |  |  |  |  |  |   4339      	orrs	r1, r7
10002fe6:	|  |  |  |  |  |  |  |  |   5019      	str	r1, [r3, r0]
10002fe8:	|  |  |  |  |  |  |  |  |   bdf0      	pop	{r4, r5, r6, r7, pc}
10002fea:	|  |  |  |  |  |  |  |  |   bf00      	nop
10002fec:	\--|--|--|--|--|--|--|--|-> be01      	bkpt	0x0001
10002fee:	   |  |  |  |  |  |  |  |   b5f0      	push	{r4, r5, r6, r7, lr}
10002ff0:	   |  |  |  |  |  |  |  |   f8dd c014 	ldr.w	ip, [sp, #20]
10002ff4:	   |  |  |  |  |  |  |  |   2b02      	cmp	r3, #2
10002ff6:	   |  |  |  |  |  |  |  \-- d3b8      	bcc.n	10002f6a <Cy_GPIO_Pin_FastInit+0x1e>
10002ff8:	   |  |  |  |  |  \--|----> be01      	bkpt	0x0001
10002ffa:	   |  |  |  |  |     |      f1bc 0f20 	cmp.w	ip, #32
10002ffe:	   |  |  |  |  |     \----- d3b7      	bcc.n	10002f70 <Cy_GPIO_Pin_FastInit+0x24>
10003000:	   |  |  |  \--|----------> be01      	bkpt	0x0001
10003002:	   |  |  |     |            2908      	cmp	r1, #8
10003004:	   |  |  |     \----------- d3b6      	bcc.n	10002f74 <Cy_GPIO_Pin_FastInit+0x28>
10003006:	   |  \--|----------------> be01      	bkpt	0x0001
10003008:	   |     |                  f01c 0fe0 	tst.w	ip, #224	; 0xe0
1000300c:	   |     \----------------- d1b5      	bne.n	10002f7a <Cy_GPIO_Pin_FastInit+0x2e>
1000300e:	   \----------------------- e7b5      	b.n	10002f7c <Cy_GPIO_Pin_FastInit+0x30>

10003010 <Cy_GPIO_Pin_Init>:
10003010:	                                                                         2301      	movs	r3, #1
10003012:	                                                                         2800      	cmp	r0, #0
10003014:	                                                                         f2c0 035a 	movt	r3, #90	; 0x5a
10003018:	                                                                         bf18      	it	ne
1000301a:	                                                                         2a00      	cmpne	r2, #0
1000301c:	                                                                     /-- d102      	bne.n	10003024 <Cy_GPIO_Pin_Init+0x14>
1000301e:	                                                                     |   4618      	mov	r0, r3
10003020:	                                                                     |   4770      	bx	lr
10003022:	                                                                     |   bf00      	nop
10003024:	                                                                     \-> 2908      	cmp	r1, #8
10003026:	                                                                  /----- d209      	bcs.n	1000303c <Cy_GPIO_Pin_Init+0x2c>
10003028:	                                                                  |      e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
1000302c:	                                                                  |      6813      	ldr	r3, [r2, #0]
1000302e:	                                                                  |      2b02      	cmp	r3, #2
10003030:	                                                               /--|----- d20a      	bcs.n	10003048 <Cy_GPIO_Pin_Init+0x38>
10003032:	                                                               |  |  /-> 6853      	ldr	r3, [r2, #4]
10003034:	                                                               |  |  |   2b0f      	cmp	r3, #15
10003036:	                                                            /--|--|--|-- d90b      	bls.n	10003050 <Cy_GPIO_Pin_Init+0x40>
10003038:	                                                         /--|--|--|--|-- e00e      	b.n	10003058 <Cy_GPIO_Pin_Init+0x48>
1000303a:	                                                         |  |  |  |  |   bf00      	nop
1000303c:	                                                         |  |  |  \--|-> be01      	bkpt	0x0001
1000303e:	                                                         |  |  |     |   e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
10003042:	                                                         |  |  |     |   6813      	ldr	r3, [r2, #0]
10003044:	                                                         |  |  |     |   2b02      	cmp	r3, #2
10003046:	                                                         |  |  |     \-- d3f4      	bcc.n	10003032 <Cy_GPIO_Pin_Init+0x22>
10003048:	                                                         |  |  \-------> be01      	bkpt	0x0001
1000304a:	                                                         |  |            6853      	ldr	r3, [r2, #4]
1000304c:	                                                         |  |            2b0f      	cmp	r3, #15
1000304e:	                                                         +--|----------- d803      	bhi.n	10003058 <Cy_GPIO_Pin_Init+0x48>
10003050:	                                                         |  \----------> f043 0308 	orr.w	r3, r3, #8
10003054:	                                                         |               2b09      	cmp	r3, #9
10003056:	                                                         |           /-- d100      	bne.n	1000305a <Cy_GPIO_Pin_Init+0x4a>
10003058:	                                                         \-----------|-> be01      	bkpt	0x0001
1000305a:	                                                                     \-> 7a13      	ldrb	r3, [r2, #8]
1000305c:	                                                                         2b20      	cmp	r3, #32
1000305e:	                                                   /-------------------- f080 808d 	bcs.w	1000317c <Cy_GPIO_Pin_Init+0x16c>
10003062:	                                                   |                     68d3      	ldr	r3, [r2, #12]
10003064:	                                                   |                     2b04      	cmp	r3, #4
10003066:	                                             /-----|-------------------- f080 808e 	bcs.w	10003186 <Cy_GPIO_Pin_Init+0x176>
1000306a:	                                             |     |        /----------> 6913      	ldr	r3, [r2, #16]
1000306c:	                                             |     |        |            2b02      	cmp	r3, #2
1000306e:	                                       /-----|-----|--------|----------- f080 808f 	bcs.w	10003190 <Cy_GPIO_Pin_Init+0x180>
10003072:	                                       |     |     |     /--|----------> 6953      	ldr	r3, [r2, #20]
10003074:	                                       |     |     |     |  |            2b02      	cmp	r3, #2
10003076:	                                 /-----|-----|-----|-----|--|----------- f080 8090 	bcs.w	1000319a <Cy_GPIO_Pin_Init+0x18a>
1000307a:	                                 |     |     |     |  /--|--|----------> 6a13      	ldr	r3, [r2, #32]
1000307c:	                                 |     |     |     |  |  |  |            2b02      	cmp	r3, #2
1000307e:	                           /-----|-----|-----|-----|--|--|--|----------- f080 8091 	bcs.w	100031a4 <Cy_GPIO_Pin_Init+0x194>
10003082:	                           |     |     |     |  /--|--|--|--|----------> 6a53      	ldr	r3, [r2, #36]	; 0x24
10003084:	                           |     |     |     |  |  |  |  |  |            2b02      	cmp	r3, #2
10003086:	                     /-----|-----|-----|-----|--|--|--|--|--|----------- f080 8092 	bcs.w	100031ae <Cy_GPIO_Pin_Init+0x19e>
1000308a:	                     |     |     |     |  /--|--|--|--|--|--|----------> 6a93      	ldr	r3, [r2, #40]	; 0x28
1000308c:	                     |     |     |     |  |  |  |  |  |  |  |            2b02      	cmp	r3, #2
1000308e:	               /-----|-----|-----|-----|--|--|--|--|--|--|--|----------- f080 8093 	bcs.w	100031b8 <Cy_GPIO_Pin_Init+0x1a8>
10003092:	               |     |     |     |  /--|--|--|--|--|--|--|--|----------> 6ad3      	ldr	r3, [r2, #44]	; 0x2c
10003094:	               |     |     |     |  |  |  |  |  |  |  |  |  |            2b04      	cmp	r3, #4
10003096:	            /--|-----|-----|-----|--|--|--|--|--|--|--|--|--|----------- f080 8094 	bcs.w	100031c2 <Cy_GPIO_Pin_Init+0x1b2>
1000309a:	            |  |     |     |  /--|--|--|--|--|--|--|--|--|--|----------> 6b13      	ldr	r3, [r2, #48]	; 0x30
1000309c:	            |  |     |     |  |  |  |  |  |  |  |  |  |  |  |            2b08      	cmp	r3, #8
1000309e:	      /-----|--|-----|-----|--|--|--|--|--|--|--|--|--|--|--|----------- f080 8095 	bcs.w	100031cc <Cy_GPIO_Pin_Init+0x1bc>
100030a2:	      |     |  |     |  /--|--|--|--|--|--|--|--|--|--|--|--|----------> 69d3      	ldr	r3, [r2, #28]
100030a4:	      |     |  |     |  |  |  |  |  |  |  |  |  |  |  |  |  |            2b04      	cmp	r3, #4
100030a6:	   /--|-----|--|-----|--|--|--|--|--|--|--|--|--|--|--|--|--|----------- f080 8096 	bcs.w	100031d6 <Cy_GPIO_Pin_Init+0x1c6>
100030aa:	   |  |     |  |  /--|--|--|--|--|--|--|--|--|--|--|--|--|--|----------> 6993      	ldr	r3, [r2, #24]
100030ac:	   |  |     |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            2b02      	cmp	r3, #2
100030ae:	/--|--|-----|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|----------- d301      	bcc.n	100030b4 <Cy_GPIO_Pin_Init+0xa4>
100030b0:	|  |  |  /--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|----------> be01      	bkpt	0x0001
100030b2:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            6993      	ldr	r3, [r2, #24]
100030b4:	>--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|----------> f242 7cb8 	movw	ip, #10168	; 0x27b8
100030b8:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            f6c0 0c00 	movt	ip, #2048	; 0x800
100030bc:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            f8dc 5000 	ldr.w	r5, [ip]
100030c0:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            2601      	movs	r6, #1
100030c2:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            fa06 fe01 	lsl.w	lr, r6, r1
100030c6:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            2610      	movs	r6, #16
100030c8:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            f895 5083 	ldrb.w	r5, [r5, #131]	; 0x83
100030cc:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            eb06 0441 	add.w	r4, r6, r1, lsl #1
100030d0:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            2603      	movs	r6, #3
100030d2:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            40a6      	lsls	r6, r4
100030d4:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            582f      	ldr	r7, [r5, r0]
100030d6:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            ea46 060e 	orr.w	r6, r6, lr
100030da:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            ea27 0606 	bic.w	r6, r7, r6
100030de:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            f003 0301 	and.w	r3, r3, #1
100030e2:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            69d7      	ldr	r7, [r2, #28]
100030e4:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            408b      	lsls	r3, r1
100030e6:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            4333      	orrs	r3, r6
100030e8:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            f007 0603 	and.w	r6, r7, #3
100030ec:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            fa06 f404 	lsl.w	r4, r6, r4
100030f0:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            4323      	orrs	r3, r4
100030f2:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            502b      	str	r3, [r5, r0]
100030f4:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            6854      	ldr	r4, [r2, #4]
100030f6:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            2908      	cmp	r1, #8
100030f8:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        /-- d300      	bcc.n	100030fc <Cy_GPIO_Pin_Init+0xec>
100030fa:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   be01      	bkpt	0x0001
100030fc:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        \-> 2c0f      	cmp	r4, #15
100030fe:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |     /----- d803      	bhi.n	10003108 <Cy_GPIO_Pin_Init+0xf8>
10003100:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |     |      f024 0308 	bic.w	r3, r4, #8
10003104:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |     |      2b01      	cmp	r3, #1
10003106:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |     |  /-- d100      	bne.n	1000310a <Cy_GPIO_Pin_Init+0xfa>
10003108:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |     \--|-> be01      	bkpt	0x0001
1000310a:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        \-> f8dc 3000 	ldr.w	r3, [ip]
1000310e:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            ea4f 0881 	mov.w	r8, r1, lsl #2
10003112:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            f893 5081 	ldrb.w	r5, [r3, #129]	; 0x81
10003116:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            270f      	movs	r7, #15
10003118:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            582e      	ldr	r6, [r5, r0]
1000311a:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            fa07 f708 	lsl.w	r7, r7, r8
1000311e:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            f004 040f 	and.w	r4, r4, #15
10003122:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            43be      	bics	r6, r7
10003124:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            fa04 f408 	lsl.w	r4, r4, r8
10003128:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            4334      	orrs	r4, r6
1000312a:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            502c      	str	r4, [r5, r0]
1000312c:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            7a14      	ldrb	r4, [r2, #8]
1000312e:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            2908      	cmp	r1, #8
10003130:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        /-- d300      	bcc.n	10003134 <Cy_GPIO_Pin_Init+0x124>
10003132:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   be01      	bkpt	0x0001
10003134:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        \-> f014 0fe0 	tst.w	r4, #224	; 0xe0
10003138:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        /-- d000      	beq.n	1000313c <Cy_GPIO_Pin_Init+0x12c>
1000313a:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   be01      	bkpt	0x0001
1000313c:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        \-> f8dc 5000 	ldr.w	r5, [ip]
10003140:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            f06f 070f 	mvn.w	r7, #15
10003144:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            e9d5 5605 	ldrd	r5, r6, [r5, #20]
10003148:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            2903      	cmp	r1, #3
1000314a:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            eba0 0606 	sub.w	r6, r0, r6
1000314e:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            ea07 06d6 	and.w	r6, r7, r6, lsr #3
10003152:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            4435      	add	r5, r6
10003154:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        /-- d846      	bhi.n	100031e4 <Cy_GPIO_Pin_Init+0x1d4>
10003156:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   682e      	ldr	r6, [r5, #0]
10003158:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   00cf      	lsls	r7, r1, #3
1000315a:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   231f      	movs	r3, #31
1000315c:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   40bb      	lsls	r3, r7
1000315e:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   f004 041f 	and.w	r4, r4, #31
10003162:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   ea26 0303 	bic.w	r3, r6, r3
10003166:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   40bc      	lsls	r4, r7
10003168:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   4323      	orrs	r3, r4
1000316a:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   602b      	str	r3, [r5, #0]
1000316c:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   68d4      	ldr	r4, [r2, #12]
1000316e:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   f04f 0901 	mov.w	r9, #1
10003172:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   2c04      	cmp	r4, #4
10003174:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   ea4f 0641 	mov.w	r6, r1, lsl #1
10003178:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |     /--|-- d253      	bcs.n	10003222 <Cy_GPIO_Pin_Init+0x212>
1000317a:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  /--|--|-- e053      	b.n	10003224 <Cy_GPIO_Pin_Init+0x214>
1000317c:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  \--|--|--|--|--|--|-> be01      	bkpt	0x0001
1000317e:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |     |  |  |  |  |  |   68d3      	ldr	r3, [r2, #12]
10003180:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |     |  |  |  |  |  |   2b04      	cmp	r3, #4
10003182:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |     |  |  \--|--|--|-- f4ff af72 	bcc.w	1000306a <Cy_GPIO_Pin_Init+0x5a>
10003186:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  \--|-----|--|-----|--|--|-> be01      	bkpt	0x0001
10003188:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |     |     |  |     |  |  |   6913      	ldr	r3, [r2, #16]
1000318a:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |     |     |  |     |  |  |   2b02      	cmp	r3, #2
1000318c:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |     |     |  \-----|--|--|-- f4ff af71 	bcc.w	10003072 <Cy_GPIO_Pin_Init+0x62>
10003190:	|  |  |  |  |  |  |  |  |  |  |  |  |  \--|-----|-----|--------|--|--|-> be01      	bkpt	0x0001
10003192:	|  |  |  |  |  |  |  |  |  |  |  |  |     |     |     |        |  |  |   6953      	ldr	r3, [r2, #20]
10003194:	|  |  |  |  |  |  |  |  |  |  |  |  |     |     |     |        |  |  |   2b02      	cmp	r3, #2
10003196:	|  |  |  |  |  |  |  |  |  |  |  |  |     |     |     \--------|--|--|-- f4ff af70 	bcc.w	1000307a <Cy_GPIO_Pin_Init+0x6a>
1000319a:	|  |  |  |  |  |  |  |  |  |  |  \--|-----|-----|--------------|--|--|-> be01      	bkpt	0x0001
1000319c:	|  |  |  |  |  |  |  |  |  |  |     |     |     |              |  |  |   6a13      	ldr	r3, [r2, #32]
1000319e:	|  |  |  |  |  |  |  |  |  |  |     |     |     |              |  |  |   2b02      	cmp	r3, #2
100031a0:	|  |  |  |  |  |  |  |  |  |  |     |     |     \--------------|--|--|-- f4ff af6f 	bcc.w	10003082 <Cy_GPIO_Pin_Init+0x72>
100031a4:	|  |  |  |  |  |  |  |  |  \--|-----|-----|--------------------|--|--|-> be01      	bkpt	0x0001
100031a6:	|  |  |  |  |  |  |  |  |     |     |     |                    |  |  |   6a53      	ldr	r3, [r2, #36]	; 0x24
100031a8:	|  |  |  |  |  |  |  |  |     |     |     |                    |  |  |   2b02      	cmp	r3, #2
100031aa:	|  |  |  |  |  |  |  |  |     |     |     \--------------------|--|--|-- f4ff af6e 	bcc.w	1000308a <Cy_GPIO_Pin_Init+0x7a>
100031ae:	|  |  |  |  |  |  |  \--|-----|-----|--------------------------|--|--|-> be01      	bkpt	0x0001
100031b0:	|  |  |  |  |  |  |     |     |     |                          |  |  |   6a93      	ldr	r3, [r2, #40]	; 0x28
100031b2:	|  |  |  |  |  |  |     |     |     |                          |  |  |   2b02      	cmp	r3, #2
100031b4:	|  |  |  |  |  |  |     |     |     \--------------------------|--|--|-- f4ff af6d 	bcc.w	10003092 <Cy_GPIO_Pin_Init+0x82>
100031b8:	|  |  |  |  |  \--|-----|-----|--------------------------------|--|--|-> be01      	bkpt	0x0001
100031ba:	|  |  |  |  |     |     |     |                                |  |  |   6ad3      	ldr	r3, [r2, #44]	; 0x2c
100031bc:	|  |  |  |  |     |     |     |                                |  |  |   2b04      	cmp	r3, #4
100031be:	|  |  |  |  |     |     |     \--------------------------------|--|--|-- f4ff af6c 	bcc.w	1000309a <Cy_GPIO_Pin_Init+0x8a>
100031c2:	|  |  |  |  \-----|-----|--------------------------------------|--|--|-> be01      	bkpt	0x0001
100031c4:	|  |  |  |        |     |                                      |  |  |   6b13      	ldr	r3, [r2, #48]	; 0x30
100031c6:	|  |  |  |        |     |                                      |  |  |   2b08      	cmp	r3, #8
100031c8:	|  |  |  |        |     \--------------------------------------|--|--|-- f4ff af6b 	bcc.w	100030a2 <Cy_GPIO_Pin_Init+0x92>
100031cc:	|  |  \--|--------|--------------------------------------------|--|--|-> be01      	bkpt	0x0001
100031ce:	|  |     |        |                                            |  |  |   69d3      	ldr	r3, [r2, #28]
100031d0:	|  |     |        |                                            |  |  |   2b04      	cmp	r3, #4
100031d2:	|  |     |        \--------------------------------------------|--|--|-- f4ff af6a 	bcc.w	100030aa <Cy_GPIO_Pin_Init+0x9a>
100031d6:	|  \-----|-----------------------------------------------------|--|--|-> be01      	bkpt	0x0001
100031d8:	|        |                                                     |  |  |   6993      	ldr	r3, [r2, #24]
100031da:	|        |                                                     |  |  |   2b02      	cmp	r3, #2
100031dc:	|        \-----------------------------------------------------|--|--|-- f4bf af68 	bcs.w	100030b0 <Cy_GPIO_Pin_Init+0xa0>
100031e0:	\--------------------------------------------------------------|--|--|-- e768      	b.n	100030b4 <Cy_GPIO_Pin_Init+0xa4>
100031e2:	                                                               |  |  |   bf00      	nop
100031e4:	                                                               |  |  \-> f06f 061f 	mvn.w	r6, #31
100031e8:	                                                               |  |      686b      	ldr	r3, [r5, #4]
100031ea:	                                                               |  |      eb06 06c1 	add.w	r6, r6, r1, lsl #3
100031ee:	                                                               |  |      271f      	movs	r7, #31
100031f0:	                                                               |  |      40b7      	lsls	r7, r6
100031f2:	                                                               |  |      f004 041f 	and.w	r4, r4, #31
100031f6:	                                                               |  |      43bb      	bics	r3, r7
100031f8:	                                                               |  |      40b4      	lsls	r4, r6
100031fa:	                                                               |  |      4323      	orrs	r3, r4
100031fc:	                                                               |  |      606b      	str	r3, [r5, #4]
100031fe:	                                                               |  |      68d4      	ldr	r4, [r2, #12]
10003200:	                                                               |  |      2909      	cmp	r1, #9
10003202:	                                                               |  |  /-- d207      	bcs.n	10003214 <Cy_GPIO_Pin_Init+0x204>
10003204:	                                                               |  |  |   f04f 0901 	mov.w	r9, #1
10003208:	                                                               |  |  |   2c04      	cmp	r4, #4
1000320a:	                                                               |  |  |   ea4f 0641 	mov.w	r6, r1, lsl #1
1000320e:	                                                               |  +--|-- d208      	bcs.n	10003222 <Cy_GPIO_Pin_Init+0x212>
10003210:	                                                               +--|--|-- e008      	b.n	10003224 <Cy_GPIO_Pin_Init+0x214>
10003212:	                                                               |  |  |   bf00      	nop
10003214:	                                                               |  |  \-> f04f 0900 	mov.w	r9, #0
10003218:	                                                               |  |      be01      	bkpt	0x0001
1000321a:	                                                               |  |      2c04      	cmp	r4, #4
1000321c:	                                                               |  |      ea4f 0641 	mov.w	r6, r1, lsl #1
10003220:	                                                               +--|----- d300      	bcc.n	10003224 <Cy_GPIO_Pin_Init+0x214>
10003222:	                                                               |  \----> be01      	bkpt	0x0001
10003224:	                                                               \-------> f8dc 3000 	ldr.w	r3, [ip]
10003228:	                                                                         2503      	movs	r5, #3
1000322a:	                                                                         f893 3080 	ldrb.w	r3, [r3, #128]	; 0x80
1000322e:	                                                                         40b5      	lsls	r5, r6
10003230:	                                                                         581f      	ldr	r7, [r3, r0]
10003232:	                                                                         f004 0403 	and.w	r4, r4, #3
10003236:	                                                                         ea27 0505 	bic.w	r5, r7, r5
1000323a:	                                                                         40b4      	lsls	r4, r6
1000323c:	                                                                         432c      	orrs	r4, r5
1000323e:	                                                                         501c      	str	r4, [r3, r0]
10003240:	                                                                         6914      	ldr	r4, [r2, #16]
10003242:	                                                                         f1b9 0f00 	cmp.w	r9, #0
10003246:	                                                                     /-- d100      	bne.n	1000324a <Cy_GPIO_Pin_Init+0x23a>
10003248:	                                                                     |   be01      	bkpt	0x0001
1000324a:	                                                                     \-> 2c02      	cmp	r4, #2
1000324c:	                                                                     /-- d300      	bcc.n	10003250 <Cy_GPIO_Pin_Init+0x240>
1000324e:	                                                                     |   be01      	bkpt	0x0001
10003250:	                                                                     \-> 6983      	ldr	r3, [r0, #24]
10003252:	                                                                         f004 0401 	and.w	r4, r4, #1
10003256:	                                                                         ea23 030e 	bic.w	r3, r3, lr
1000325a:	                                                                         408c      	lsls	r4, r1
1000325c:	                                                                         4323      	orrs	r3, r4
1000325e:	                                                                         6183      	str	r3, [r0, #24]
10003260:	                                                                         6954      	ldr	r4, [r2, #20]
10003262:	                                                                         2908      	cmp	r1, #8
10003264:	                                                                     /-- d300      	bcc.n	10003268 <Cy_GPIO_Pin_Init+0x258>
10003266:	                                                                     |   be01      	bkpt	0x0001
10003268:	                                                                     \-> 2c02      	cmp	r4, #2
1000326a:	                                                                         ea6f 050e 	mvn.w	r5, lr
1000326e:	                                                                     /-- d300      	bcc.n	10003272 <Cy_GPIO_Pin_Init+0x262>
10003270:	                                                                     |   be01      	bkpt	0x0001
10003272:	                                                                     \-> f8dc 3000 	ldr.w	r3, [ip]
10003276:	                                                                         2908      	cmp	r1, #8
10003278:	                                                                         f893 7082 	ldrb.w	r7, [r3, #130]	; 0x82
1000327c:	                                                                         f893 9084 	ldrb.w	r9, [r3, #132]	; 0x84
10003280:	                                                                         583e      	ldr	r6, [r7, r0]
10003282:	                                                                         ea06 0605 	and.w	r6, r6, r5
10003286:	                                                                         f004 0501 	and.w	r5, r4, #1
1000328a:	                                                                         fa05 f501 	lsl.w	r5, r5, r1
1000328e:	                                                                         ea46 0605 	orr.w	r6, r6, r5
10003292:	                                                                         503e      	str	r6, [r7, r0]
10003294:	                                                                         f859 7000 	ldr.w	r7, [r9, r0]
10003298:	                                                                         e9d2 6508 	ldrd	r6, r5, [r2, #32]
1000329c:	                                                                         f027 0cff 	bic.w	ip, r7, #255	; 0xff
100032a0:	                                                                         e9d2 470a 	ldrd	r4, r7, [r2, #40]	; 0x28
100032a4:	                                                                         6b13      	ldr	r3, [r2, #48]	; 0x30
100032a6:	                                                                         f006 0601 	and.w	r6, r6, #1
100032aa:	                                                                         f365 0641 	bfi	r6, r5, #1, #1
100032ae:	                                                                         f004 0401 	and.w	r4, r4, #1
100032b2:	                                                                         ea46 0484 	orr.w	r4, r6, r4, lsl #2
100032b6:	                                                                         f007 0503 	and.w	r5, r7, #3
100032ba:	                                                                         ea4f 1343 	mov.w	r3, r3, lsl #5
100032be:	                                                                         ea44 04c5 	orr.w	r4, r4, r5, lsl #3
100032c2:	                                                                         b2db      	uxtb	r3, r3
100032c4:	                                                                         4423      	add	r3, r4
100032c6:	                                                                         f408 747e 	and.w	r4, r8, #1016	; 0x3f8
100032ca:	                                                                         fa03 f304 	lsl.w	r3, r3, r4
100032ce:	                                                                         ea43 030c 	orr.w	r3, r3, ip
100032d2:	                                                                         f849 3000 	str.w	r3, [r9, r0]
100032d6:	                                                                         6812      	ldr	r2, [r2, #0]
100032d8:	                                                                     /-- d300      	bcc.n	100032dc <Cy_GPIO_Pin_Init+0x2cc>
100032da:	                                                                     |   be01      	bkpt	0x0001
100032dc:	                                                                     \-> 2a02      	cmp	r2, #2
100032de:	                                                                  /----- d203      	bcs.n	100032e8 <Cy_GPIO_Pin_Init+0x2d8>
100032e0:	                                                               /--|----- b91a      	cbnz	r2, 100032ea <Cy_GPIO_Pin_Init+0x2da>
100032e2:	                                                               |  |      3004      	adds	r0, #4
100032e4:	                                                               |  |  /-- e002      	b.n	100032ec <Cy_GPIO_Pin_Init+0x2dc>
100032e6:	                                                               |  |  |   bf00      	nop
100032e8:	                                                               |  \--|-> be01      	bkpt	0x0001
100032ea:	                                                               \-----|-> 3008      	adds	r0, #8
100032ec:	                                                                     \-> 2300      	movs	r3, #0
100032ee:	                                                                         f8c0 e000 	str.w	lr, [r0]
100032f2:	                                                                         e8bd 43f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, lr}
100032f6:	                                                                         4618      	mov	r0, r3
100032f8:	                                                                         4770      	bx	lr
	...

100032fc <Cy_IPC_Drv_LockRelease>:
100032fc:	    f242 72b8 	movw	r2, #10168	; 0x27b8
10003300:	    f6c0 0200 	movt	r2, #2048	; 0x800
10003304:	    6812      	ldr	r2, [r2, #0]
10003306:	    f8d2 20bc 	ldr.w	r2, [r2, #188]	; 0xbc
1000330a:	    5812      	ldr	r2, [r2, r0]
1000330c:	    f1b2 3fff 	cmp.w	r2, #4294967295
10003310:	    bfc2      	ittt	gt
10003312:	    2001      	movgt	r0, #1
10003314:	    f2c0 008a 	movtgt	r0, #138	; 0x8a
10003318:	    4770      	bxgt	lr
1000331a:	    f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
1000331e:	/-- d300      	bcc.n	10003322 <Cy_IPC_Drv_LockRelease+0x26>
10003320:	|   be01      	bkpt	0x0001
10003322:	\-> b289      	uxth	r1, r1
10003324:	    6041      	str	r1, [r0, #4]
10003326:	    2000      	movs	r0, #0
10003328:	    4770      	bx	lr
	...

1000332c <Cy_IPC_Drv_ReadMsgWord>:
1000332c:	/-- b901      	cbnz	r1, 10003330 <Cy_IPC_Drv_ReadMsgWord+0x4>
1000332e:	|   be01      	bkpt	0x0001
10003330:	\-> f242 72b8 	movw	r2, #10168	; 0x27b8
10003334:	    f6c0 0200 	movt	r2, #2048	; 0x800
10003338:	    6812      	ldr	r2, [r2, #0]
1000333a:	    f8d2 20bc 	ldr.w	r2, [r2, #188]	; 0xbc
1000333e:	    5812      	ldr	r2, [r2, r0]
10003340:	    f1b2 3fff 	cmp.w	r2, #4294967295
10003344:	    bfc2      	ittt	gt
10003346:	    2001      	movgt	r0, #1
10003348:	    f2c0 008a 	movtgt	r0, #138	; 0x8a
1000334c:	    4770      	bxgt	lr
1000334e:	    68c0      	ldr	r0, [r0, #12]
10003350:	    6008      	str	r0, [r1, #0]
10003352:	    2000      	movs	r0, #0
10003354:	    4770      	bx	lr
	...

10003358 <Cy_IPC_Drv_SendMsgWord>:
10003358:	    6803      	ldr	r3, [r0, #0]
1000335a:	    f1b3 3fff 	cmp.w	r3, #4294967295
1000335e:	    bfc2      	ittt	gt
10003360:	    2001      	movgt	r0, #1
10003362:	    f2c0 008a 	movtgt	r0, #138	; 0x8a
10003366:	    4770      	bxgt	lr
10003368:	    f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
1000336c:	    60c2      	str	r2, [r0, #12]
1000336e:	/-- d300      	bcc.n	10003372 <Cy_IPC_Drv_SendMsgWord+0x1a>
10003370:	|   be01      	bkpt	0x0001
10003372:	\-> b289      	uxth	r1, r1
10003374:	    6081      	str	r1, [r0, #8]
10003376:	    2000      	movs	r0, #0
10003378:	    4770      	bx	lr
	...

1000337c <Cy_IPC_Pipe_Config>:
1000337c:	f242 71bc 	movw	r1, #10172	; 0x27bc
10003380:	f6c0 0100 	movt	r1, #2048	; 0x800
10003384:	680a      	ldr	r2, [r1, #0]
10003386:	2a00      	cmp	r2, #0
10003388:	bf08      	it	eq
1000338a:	6008      	streq	r0, [r1, #0]
1000338c:	4770      	bx	lr
	...

10003390 <Cy_IPC_Pipe_ExecCallback>:
10003390:	                            b570      	push	{r4, r5, r6, lr}
10003392:	                            b082      	sub	sp, #8
10003394:	                            4604      	mov	r4, r0
10003396:	                            2000      	movs	r0, #0
10003398:	                            9001      	str	r0, [sp, #4]
1000339a:	                        /-- b15c      	cbz	r4, 100033b4 <Cy_IPC_Pipe_ExecCallback+0x24>
1000339c:	                        |   6920      	ldr	r0, [r4, #16]
1000339e:	                  /-----|-- b168      	cbz	r0, 100033bc <Cy_IPC_Pipe_ExecCallback+0x2c>
100033a0:	                  |  /--|-> 6960      	ldr	r0, [r4, #20]
100033a2:	            /-----|--|--|-- b178      	cbz	r0, 100033c4 <Cy_IPC_Pipe_ExecCallback+0x34>
100033a4:	            |  /--|--|--|-> 6a20      	ldr	r0, [r4, #32]
100033a6:	      /-----|--|--|--|--|-- b188      	cbz	r0, 100033cc <Cy_IPC_Pipe_ExecCallback+0x3c>
100033a8:	      |  /--|--|--|--|--|-> 6960      	ldr	r0, [r4, #20]
100033aa:	      |  |  |  |  |  |  |   68c6      	ldr	r6, [r0, #12]
100033ac:	      |  |  |  |  |  |  |   f5b6 3f80 	cmp.w	r6, #65536	; 0x10000
100033b0:	   /--|--|--|--|--|--|--|-- d212      	bcs.n	100033d8 <Cy_IPC_Pipe_ExecCallback+0x48>
100033b2:	/--|--|--|--|--|--|--|--|-- e03b      	b.n	1000342c <Cy_IPC_Pipe_ExecCallback+0x9c>
100033b4:	|  |  |  |  |  |  |  |  \-> be01      	bkpt	0x0001
100033b6:	|  |  |  |  |  |  |  |      6920      	ldr	r0, [r4, #16]
100033b8:	|  |  |  |  |  |  |  |      2800      	cmp	r0, #0
100033ba:	|  |  |  |  |  |  |  \----- d1f1      	bne.n	100033a0 <Cy_IPC_Pipe_ExecCallback+0x10>
100033bc:	|  |  |  |  |  |  \-------> be01      	bkpt	0x0001
100033be:	|  |  |  |  |  |            6960      	ldr	r0, [r4, #20]
100033c0:	|  |  |  |  |  |            2800      	cmp	r0, #0
100033c2:	|  |  |  |  |  \----------- d1ef      	bne.n	100033a4 <Cy_IPC_Pipe_ExecCallback+0x14>
100033c4:	|  |  |  |  \-------------> be01      	bkpt	0x0001
100033c6:	|  |  |  |                  6a20      	ldr	r0, [r4, #32]
100033c8:	|  |  |  |                  2800      	cmp	r0, #0
100033ca:	|  |  |  \----------------- d1ed      	bne.n	100033a8 <Cy_IPC_Pipe_ExecCallback+0x18>
100033cc:	|  |  \-------------------> be01      	bkpt	0x0001
100033ce:	|  |                        6960      	ldr	r0, [r4, #20]
100033d0:	|  |                        68c6      	ldr	r6, [r0, #12]
100033d2:	|  |                        f5b6 3f80 	cmp.w	r6, #65536	; 0x10000
100033d6:	+--|----------------------- d329      	bcc.n	1000342c <Cy_IPC_Pipe_ExecCallback+0x9c>
100033d8:	|  \----------------------> f64f 71ff 	movw	r1, #65535	; 0xffff
100033dc:	|                           ea26 0101 	bic.w	r1, r6, r1
100033e0:	|                           6001      	str	r1, [r0, #0]
100033e2:	|                           6800      	ldr	r0, [r0, #0]
100033e4:	|                           f242 70b8 	movw	r0, #10168	; 0x27b8
100033e8:	|                           f6c0 0000 	movt	r0, #2048	; 0x800
100033ec:	|                           6801      	ldr	r1, [r0, #0]
100033ee:	|                           6920      	ldr	r0, [r4, #16]
100033f0:	|                           f8d1 10bc 	ldr.w	r1, [r1, #188]	; 0xbc
100033f4:	|                           5809      	ldr	r1, [r1, r0]
100033f6:	|                           f1b1 3fff 	cmp.w	r1, #4294967295
100033fa:	+-------------------------- dc17      	bgt.n	1000342c <Cy_IPC_Pipe_ExecCallback+0x9c>
100033fc:	|                           a901      	add	r1, sp, #4
100033fe:	|                           f7ff ff95 	bl	1000332c <Cy_IPC_Drv_ReadMsgWord>
10003402:	|                       /-- b108      	cbz	r0, 10003408 <Cy_IPC_Pipe_ExecCallback+0x78>
10003404:	|                       |   2500      	movs	r5, #0
10003406:	|                    /--|-- e00d      	b.n	10003424 <Cy_IPC_Pipe_ExecCallback+0x94>
10003408:	|                    |  \-> 9801      	ldr	r0, [sp, #4]
1000340a:	|                    |      69e3      	ldr	r3, [r4, #28]
1000340c:	|                    |      6802      	ldr	r2, [r0, #0]
1000340e:	|                    |      b2d1      	uxtb	r1, r2
10003410:	|                    |      428b      	cmp	r3, r1
10003412:	|                    |      ea4f 4512 	mov.w	r5, r2, lsr #16
10003416:	|                    +----- d905      	bls.n	10003424 <Cy_IPC_Pipe_ExecCallback+0x94>
10003418:	|                    |      6a22      	ldr	r2, [r4, #32]
1000341a:	|                    |      f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
1000341e:	|                    |      2900      	cmp	r1, #0
10003420:	|                    |      bf18      	it	ne
10003422:	|                    |      4788      	blxne	r1
10003424:	|                    \----> 6920      	ldr	r0, [r4, #16]
10003426:	|                           4629      	mov	r1, r5
10003428:	|                           f7ff ff68 	bl	100032fc <Cy_IPC_Drv_LockRelease>
1000342c:	\-------------------------> b2b0      	uxth	r0, r6
1000342e:	                  /-------- b178      	cbz	r0, 10003450 <Cy_IPC_Pipe_ExecCallback+0xc0>
10003430:	                  |         6962      	ldr	r2, [r4, #20]
10003432:	                  |         6a61      	ldr	r1, [r4, #36]	; 0x24
10003434:	                  |         6010      	str	r0, [r2, #0]
10003436:	                  |         6810      	ldr	r0, [r2, #0]
10003438:	                  |     /-- b121      	cbz	r1, 10003444 <Cy_IPC_Pipe_ExecCallback+0xb4>
1000343a:	                  |     |   4788      	blx	r1
1000343c:	                  |     |   2000      	movs	r0, #0
1000343e:	                  |     |   6260      	str	r0, [r4, #36]	; 0x24
10003440:	                  |  /--|-- e004      	b.n	1000344c <Cy_IPC_Pipe_ExecCallback+0xbc>
10003442:	                  |  |  |   bf00      	nop
10003444:	                  |  |  \-> 6aa0      	ldr	r0, [r4, #40]	; 0x28
10003446:	                  |  |      2800      	cmp	r0, #0
10003448:	                  |  |      bf18      	it	ne
1000344a:	                  |  |      4780      	blxne	r0
1000344c:	                  |  \----> 2000      	movs	r0, #0
1000344e:	                  |         61a0      	str	r0, [r4, #24]
10003450:	                  \-------> 6960      	ldr	r0, [r4, #20]
10003452:	                            6800      	ldr	r0, [r0, #0]
10003454:	                            b002      	add	sp, #8
10003456:	                            bd70      	pop	{r4, r5, r6, pc}

10003458 <Cy_IPC_Pipe_ExecuteCallback>:
10003458:	    f242 72bc 	movw	r2, #10172	; 0x27bc
1000345c:	    f6c0 0200 	movt	r2, #2048	; 0x800
10003460:	    6811      	ldr	r1, [r2, #0]
10003462:	/-- b129      	cbz	r1, 10003470 <Cy_IPC_Pipe_ExecuteCallback+0x18>
10003464:	|   222c      	movs	r2, #44	; 0x2c
10003466:	|   fb00 1002 	mla	r0, r0, r2, r1
1000346a:	|   f7ff bf91 	b.w	10003390 <Cy_IPC_Pipe_ExecCallback>
1000346e:	|   bf00      	nop
10003470:	\-> be01      	bkpt	0x0001
10003472:	    6811      	ldr	r1, [r2, #0]
10003474:	    222c      	movs	r2, #44	; 0x2c
10003476:	    fb00 1002 	mla	r0, r0, r2, r1
1000347a:	    f7ff bf89 	b.w	10003390 <Cy_IPC_Pipe_ExecCallback>
	...

10003480 <Cy_IPC_Pipe_Init>:
10003480:	               /-- b900      	cbnz	r0, 10003484 <Cy_IPC_Pipe_Init+0x4>
10003482:	               |   be01      	bkpt	0x0001
10003484:	               \-> e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
10003488:	                   b085      	sub	sp, #20
1000348a:	                   6981      	ldr	r1, [r0, #24]
1000348c:	                   2908      	cmp	r1, #8
1000348e:	         /-------- f080 80d7 	bcs.w	10003640 <Cy_IPC_Pipe_Init+0x1c0>
10003492:	         |         6ac1      	ldr	r1, [r0, #44]	; 0x2c
10003494:	         |         2900      	cmp	r1, #0
10003496:	      /--|-------- f000 80d8 	beq.w	1000364a <Cy_IPC_Pipe_Init+0x1ca>
1000349a:	      |  |  /----> 6b01      	ldr	r1, [r0, #48]	; 0x30
1000349c:	      |  |  |      2900      	cmp	r1, #0
1000349e:	/-----|--|--|----- f000 80d9 	beq.w	10003654 <Cy_IPC_Pipe_Init+0x1d4>
100034a2:	|  /--|--|--|----> f242 7ab8 	movw	sl, #10168	; 0x27b8
100034a6:	|  |  |  |  |      f6c0 0a00 	movt	sl, #2048	; 0x800
100034aa:	|  |  |  |  |      f8da 4000 	ldr.w	r4, [sl]
100034ae:	|  |  |  |  |      8a81      	ldrh	r1, [r0, #20]
100034b0:	|  |  |  |  |      8f27      	ldrh	r7, [r4, #56]	; 0x38
100034b2:	|  |  |  |  |      68c2      	ldr	r2, [r0, #12]
100034b4:	|  |  |  |  |      eb07 0b01 	add.w	fp, r7, r1
100034b8:	|  |  |  |  |      f242 71bc 	movw	r1, #10172	; 0x27bc
100034bc:	|  |  |  |  |      9202      	str	r2, [sp, #8]
100034be:	|  |  |  |  |      6982      	ldr	r2, [r0, #24]
100034c0:	|  |  |  |  |      f6c0 0100 	movt	r1, #2048	; 0x800
100034c4:	|  |  |  |  |      680f      	ldr	r7, [r1, #0]
100034c6:	|  |  |  |  |      f8d0 8010 	ldr.w	r8, [r0, #16]
100034ca:	|  |  |  |  |      6a06      	ldr	r6, [r0, #32]
100034cc:	|  |  |  |  |      6a43      	ldr	r3, [r0, #36]	; 0x24
100034ce:	|  |  |  |  |      6a85      	ldr	r5, [r0, #40]	; 0x28
100034d0:	|  |  |  |  |      9204      	str	r2, [sp, #16]
100034d2:	|  |  |  |  |      6ac2      	ldr	r2, [r0, #44]	; 0x2c
100034d4:	|  |  |  |  |      9501      	str	r5, [sp, #4]
100034d6:	|  |  |  |  |      9200      	str	r2, [sp, #0]
100034d8:	|  |  |  |  |      f8ad b00c 	strh.w	fp, [sp, #12]
100034dc:	|  |  |  |  |  /-- b91f      	cbnz	r7, 100034e6 <Cy_IPC_Pipe_Init+0x66>
100034de:	|  |  |  |  |  |   be01      	bkpt	0x0001
100034e0:	|  |  |  |  |  |   680f      	ldr	r7, [r1, #0]
100034e2:	|  |  |  |  |  |   f8da 4000 	ldr.w	r4, [sl]
100034e6:	|  |  |  |  |  \-> 222c      	movs	r2, #44	; 0x2c
100034e8:	|  |  |  |  |      fb06 7c02 	mla	ip, r6, r2, r7
100034ec:	|  |  |  |  |      b2d9      	uxtb	r1, r3
100034ee:	|  |  |  |  |      4372      	muls	r2, r6
100034f0:	|  |  |  |  |      f894 9033 	ldrb.w	r9, [r4, #51]	; 0x33
100034f4:	|  |  |  |  |      50b9      	str	r1, [r7, r2]
100034f6:	|  |  |  |  |      f3c3 2207 	ubfx	r2, r3, #8, #8
100034fa:	|  |  |  |  |      4665      	mov	r5, ip
100034fc:	|  |  |  |  |      ea4f 4e13 	mov.w	lr, r3, lsr #16
10003500:	|  |  |  |  |      4663      	mov	r3, ip
10003502:	|  |  |  |  |      f845 2f04 	str.w	r2, [r5, #4]!
10003506:	|  |  |  |  |      4549      	cmp	r1, r9
10003508:	|  |  |  |  |      f843 ef08 	str.w	lr, [r3, #8]!
1000350c:	|  |  |  |  |  /-- d303      	bcc.n	10003516 <Cy_IPC_Pipe_Init+0x96>
1000350e:	|  |  |  |  |  |   be01      	bkpt	0x0001
10003510:	|  |  |  |  |  |   f8da 4000 	ldr.w	r4, [sl]
10003514:	|  |  |  |  |  |   682a      	ldr	r2, [r5, #0]
10003516:	|  |  |  |  |  \-> 6a25      	ldr	r5, [r4, #32]
10003518:	|  |  |  |  |      f8b4 40ba 	ldrh.w	r4, [r4, #186]	; 0xba
1000351c:	|  |  |  |  |      fb01 5104 	mla	r1, r1, r4, r5
10003520:	|  |  |  |  |      f8cc 1010 	str.w	r1, [ip, #16]
10003524:	|  |  |  |  |      f8da 1000 	ldr.w	r1, [sl]
10003528:	|  |  |  |  |      f891 5034 	ldrb.w	r5, [r1, #52]	; 0x34
1000352c:	|  |  |  |  |      42aa      	cmp	r2, r5
1000352e:	|  |  |  |  |  /-- d302      	bcc.n	10003536 <Cy_IPC_Pipe_Init+0xb6>
10003530:	|  |  |  |  |  |   be01      	bkpt	0x0001
10003532:	|  |  |  |  |  |   f8da 1000 	ldr.w	r1, [sl]
10003536:	|  |  |  |  |  \-> 6a09      	ldr	r1, [r1, #32]
10003538:	|  |  |  |  |      681b      	ldr	r3, [r3, #0]
1000353a:	|  |  |  |  |      eb01 1242 	add.w	r2, r1, r2, lsl #5
1000353e:	|  |  |  |  |      212c      	movs	r1, #44	; 0x2c
10003540:	|  |  |  |  |      fb06 7101 	mla	r1, r6, r1, r7
10003544:	|  |  |  |  |      f8dd e008 	ldr.w	lr, [sp, #8]
10003548:	|  |  |  |  |      f502 5580 	add.w	r5, r2, #4096	; 0x1000
1000354c:	|  |  |  |  |      f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
10003550:	|  |  |  |  |      614d      	str	r5, [r1, #20]
10003552:	|  |  |  |  |  /-- d301      	bcc.n	10003558 <Cy_IPC_Pipe_Init+0xd8>
10003554:	|  |  |  |  |  |   be01      	bkpt	0x0001
10003556:	|  |  |  |  |  |   be01      	bkpt	0x0001
10003558:	|  |  |  |  |  \-> eac3 4303 	pkhbt	r3, r3, r3, lsl #16
1000355c:	|  |  |  |  |      f241 0708 	movw	r7, #4104	; 0x1008
10003560:	|  |  |  |  |      51d3      	str	r3, [r2, r7]
10003562:	|  |  |  |  |      2200      	movs	r2, #0
10003564:	|  |  |  |  |      618a      	str	r2, [r1, #24]
10003566:	|  |  |  |  |      9a00      	ldr	r2, [sp, #0]
10003568:	|  |  |  |  |      9b01      	ldr	r3, [sp, #4]
1000356a:	|  |  |  |  |      620a      	str	r2, [r1, #32]
1000356c:	|  |  |  |  |      f242 72bc 	movw	r2, #10172	; 0x27bc
10003570:	|  |  |  |  |      f6c0 0200 	movt	r2, #2048	; 0x800
10003574:	|  |  |  |  |      f8d2 c000 	ldr.w	ip, [r2]
10003578:	|  |  |  |  |      61cb      	str	r3, [r1, #28]
1000357a:	|  |  |  |  |      f1bc 0f00 	cmp.w	ip, #0
1000357e:	|  |  |  |  |      f8a1 b00c 	strh.w	fp, [r1, #12]
10003582:	|  |  |  |  |  /-- d102      	bne.n	1000358a <Cy_IPC_Pipe_Init+0x10a>
10003584:	|  |  |  |  |  |   be01      	bkpt	0x0001
10003586:	|  |  |  |  |  |   f8d2 c000 	ldr.w	ip, [r2]
1000358a:	|  |  |  |  |  \-> f8da 4000 	ldr.w	r4, [sl]
1000358e:	|  |  |  |  |      212c      	movs	r1, #44	; 0x2c
10003590:	|  |  |  |  |      fb0e c301 	mla	r3, lr, r1, ip
10003594:	|  |  |  |  |      f894 6033 	ldrb.w	r6, [r4, #51]	; 0x33
10003598:	|  |  |  |  |      fa5f f788 	uxtb.w	r7, r8
1000359c:	|  |  |  |  |      fb0e f101 	mul.w	r1, lr, r1
100035a0:	|  |  |  |  |      f84c 7001 	str.w	r7, [ip, r1]
100035a4:	|  |  |  |  |      f3c8 2107 	ubfx	r1, r8, #8, #8
100035a8:	|  |  |  |  |      461a      	mov	r2, r3
100035aa:	|  |  |  |  |      ea4f 4518 	mov.w	r5, r8, lsr #16
100035ae:	|  |  |  |  |      42b7      	cmp	r7, r6
100035b0:	|  |  |  |  |      461e      	mov	r6, r3
100035b2:	|  |  |  |  |      f842 1f04 	str.w	r1, [r2, #4]!
100035b6:	|  |  |  |  |      f846 5f08 	str.w	r5, [r6, #8]!
100035ba:	|  |  |  |  |  /-- d303      	bcc.n	100035c4 <Cy_IPC_Pipe_Init+0x144>
100035bc:	|  |  |  |  |  |   be01      	bkpt	0x0001
100035be:	|  |  |  |  |  |   f8da 4000 	ldr.w	r4, [sl]
100035c2:	|  |  |  |  |  |   6811      	ldr	r1, [r2, #0]
100035c4:	|  |  |  |  |  \-> 6a22      	ldr	r2, [r4, #32]
100035c6:	|  |  |  |  |      f8b4 50ba 	ldrh.w	r5, [r4, #186]	; 0xba
100035ca:	|  |  |  |  |      fb07 2205 	mla	r2, r7, r5, r2
100035ce:	|  |  |  |  |      611a      	str	r2, [r3, #16]
100035d0:	|  |  |  |  |      f8da 2000 	ldr.w	r2, [sl]
100035d4:	|  |  |  |  |      f892 3034 	ldrb.w	r3, [r2, #52]	; 0x34
100035d8:	|  |  |  |  |      4299      	cmp	r1, r3
100035da:	|  |  |  |  |  /-- d302      	bcc.n	100035e2 <Cy_IPC_Pipe_Init+0x162>
100035dc:	|  |  |  |  |  |   be01      	bkpt	0x0001
100035de:	|  |  |  |  |  |   f8da 2000 	ldr.w	r2, [sl]
100035e2:	|  |  |  |  |  \-> 6a12      	ldr	r2, [r2, #32]
100035e4:	|  |  |  |  |      6833      	ldr	r3, [r6, #0]
100035e6:	|  |  |  |  |      eb02 1141 	add.w	r1, r2, r1, lsl #5
100035ea:	|  |  |  |  |      222c      	movs	r2, #44	; 0x2c
100035ec:	|  |  |  |  |      fb0e c202 	mla	r2, lr, r2, ip
100035f0:	|  |  |  |  |      f501 5780 	add.w	r7, r1, #4096	; 0x1000
100035f4:	|  |  |  |  |      f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
100035f8:	|  |  |  |  |      6157      	str	r7, [r2, #20]
100035fa:	|  |  |  |  |  /-- d301      	bcc.n	10003600 <Cy_IPC_Pipe_Init+0x180>
100035fc:	|  |  |  |  |  |   be01      	bkpt	0x0001
100035fe:	|  |  |  |  |  |   be01      	bkpt	0x0001
10003600:	|  |  |  |  |  \-> eac3 4303 	pkhbt	r3, r3, r3, lsl #16
10003604:	|  |  |  |  |      f241 0708 	movw	r7, #4104	; 0x1008
10003608:	|  |  |  |  |      51cb      	str	r3, [r1, r7]
1000360a:	|  |  |  |  |      6b01      	ldr	r1, [r0, #48]	; 0x30
1000360c:	|  |  |  |  |      2300      	movs	r3, #0
1000360e:	|  |  |  |  |      a803      	add	r0, sp, #12
10003610:	|  |  |  |  |      e9c2 3306 	strd	r3, r3, [r2, #24]
10003614:	|  |  |  |  |      6213      	str	r3, [r2, #32]
10003616:	|  |  |  |  |      f001 f863 	bl	100046e0 <Cy_SysInt_Init>
1000361a:	|  |  |  |  |      f9bd 000c 	ldrsh.w	r0, [sp, #12]
1000361e:	|  |  |  |  |      2800      	cmp	r0, #0
10003620:	|  |  |  |  |  /-- d40b      	bmi.n	1000363a <Cy_IPC_Pipe_Init+0x1ba>
10003622:	|  |  |  |  |  |   f000 011f 	and.w	r1, r0, #31
10003626:	|  |  |  |  |  |   2201      	movs	r2, #1
10003628:	|  |  |  |  |  |   fa02 f101 	lsl.w	r1, r2, r1
1000362c:	|  |  |  |  |  |   f24e 1200 	movw	r2, #57600	; 0xe100
10003630:	|  |  |  |  |  |   0940      	lsrs	r0, r0, #5
10003632:	|  |  |  |  |  |   f2ce 0200 	movt	r2, #57344	; 0xe000
10003636:	|  |  |  |  |  |   f842 1020 	str.w	r1, [r2, r0, lsl #2]
1000363a:	|  |  |  |  |  \-> b005      	add	sp, #20
1000363c:	|  |  |  |  |      e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
10003640:	|  |  |  \--|----> be01      	bkpt	0x0001
10003642:	|  |  |     |      6ac1      	ldr	r1, [r0, #44]	; 0x2c
10003644:	|  |  |     |      2900      	cmp	r1, #0
10003646:	|  |  |     \----- f47f af28 	bne.w	1000349a <Cy_IPC_Pipe_Init+0x1a>
1000364a:	|  |  \----------> be01      	bkpt	0x0001
1000364c:	|  |               6b01      	ldr	r1, [r0, #48]	; 0x30
1000364e:	|  |               2900      	cmp	r1, #0
10003650:	|  +-------------- f47f af27 	bne.w	100034a2 <Cy_IPC_Pipe_Init+0x22>
10003654:	\--|-------------> be01      	bkpt	0x0001
10003656:	   \-------------- e724      	b.n	100034a2 <Cy_IPC_Pipe_Init+0x22>

10003658 <Cy_IPC_Sema_Init>:
10003658:	          b570      	push	{r4, r5, r6, lr}
1000365a:	          2900      	cmp	r1, #0
1000365c:	          bf08      	it	eq
1000365e:	          2a00      	cmpeq	r2, #0
10003660:	      /-- d00c      	beq.n	1000367c <Cy_IPC_Sema_Init+0x24>
10003662:	      |   f240 1501 	movw	r5, #257	; 0x101
10003666:	      |   f2c0 058a 	movt	r5, #138	; 0x8a
1000366a:	      |   2900      	cmp	r1, #0
1000366c:	      |   f105 0302 	add.w	r3, r5, #2
10003670:	      |   bf18      	it	ne
10003672:	      |   2a00      	cmpne	r2, #0
10003674:	   /--|-- d11a      	bne.n	100036ac <Cy_IPC_Sema_Init+0x54>
10003676:	/--|--|-> 4618      	mov	r0, r3
10003678:	|  |  |   bd70      	pop	{r4, r5, r6, pc}
1000367a:	|  |  |   bf00      	nop
1000367c:	|  |  \-> f242 72b8 	movw	r2, #10168	; 0x27b8
10003680:	|  |      f6c0 0200 	movt	r2, #2048	; 0x800
10003684:	|  |      6811      	ldr	r1, [r2, #0]
10003686:	|  |      f891 3033 	ldrb.w	r3, [r1, #51]	; 0x33
1000368a:	|  |      4283      	cmp	r3, r0
1000368c:	|  |  /-- d801      	bhi.n	10003692 <Cy_IPC_Sema_Init+0x3a>
1000368e:	|  |  |   be01      	bkpt	0x0001
10003690:	|  |  |   6811      	ldr	r1, [r2, #0]
10003692:	|  |  \-> 6a0a      	ldr	r2, [r1, #32]
10003694:	|  |      f8b1 10ba 	ldrh.w	r1, [r1, #186]	; 0xba
10003698:	|  |      2300      	movs	r3, #0
1000369a:	|  |      fb01 2000 	mla	r0, r1, r0, r2
1000369e:	|  |      f642 0160 	movw	r1, #10336	; 0x2860
100036a2:	|  |      f6c0 0100 	movt	r1, #2048	; 0x800
100036a6:	|  |      6008      	str	r0, [r1, #0]
100036a8:	|  |      4618      	mov	r0, r3
100036aa:	|  |      bd70      	pop	{r4, r5, r6, pc}
100036ac:	|  \----> f242 26e4 	movw	r6, #8932	; 0x22e4
100036b0:	|         f6c0 0600 	movt	r6, #2048	; 0x800
100036b4:	|         06cc      	lsls	r4, r1, #27
100036b6:	|         6031      	str	r1, [r6, #0]
100036b8:	|         6072      	str	r2, [r6, #4]
100036ba:	+-------- d1dc      	bne.n	10003676 <Cy_IPC_Sema_Init+0x1e>
100036bc:	|         f242 76b8 	movw	r6, #10168	; 0x27b8
100036c0:	|         f6c0 0600 	movt	r6, #2048	; 0x800
100036c4:	|         6836      	ldr	r6, [r6, #0]
100036c6:	|         f896 4033 	ldrb.w	r4, [r6, #51]	; 0x33
100036ca:	|         4284      	cmp	r4, r0
100036cc:	+-------- d9d3      	bls.n	10003676 <Cy_IPC_Sema_Init+0x1e>
100036ce:	|         6a33      	ldr	r3, [r6, #32]
100036d0:	|         f8b6 60ba 	ldrh.w	r6, [r6, #186]	; 0xba
100036d4:	|         08c9      	lsrs	r1, r1, #3
100036d6:	|         fb06 3400 	mla	r4, r6, r0, r3
100036da:	|         f642 0660 	movw	r6, #10336	; 0x2860
100036de:	|         f6c0 0600 	movt	r6, #2048	; 0x800
100036e2:	|         4610      	mov	r0, r2
100036e4:	|         6034      	str	r4, [r6, #0]
100036e6:	|         f7fe ffbb 	bl	10002660 <__aeabi_memclr4>
100036ea:	|         4620      	mov	r0, r4
100036ec:	|         2100      	movs	r1, #0
100036ee:	|         f7ff fe05 	bl	100032fc <Cy_IPC_Drv_LockRelease>
100036f2:	|         6830      	ldr	r0, [r6, #0]
100036f4:	|         f242 22e4 	movw	r2, #8932	; 0x22e4
100036f8:	|         f6c0 0200 	movt	r2, #2048	; 0x800
100036fc:	|         2100      	movs	r1, #0
100036fe:	|         f7ff fe2b 	bl	10003358 <Cy_IPC_Drv_SendMsgWord>
10003702:	|         2800      	cmp	r0, #0
10003704:	|         462b      	mov	r3, r5
10003706:	\-------- d1b6      	bne.n	10003676 <Cy_IPC_Sema_Init+0x1e>
10003708:	          6830      	ldr	r0, [r6, #0]
1000370a:	          2100      	movs	r1, #0
1000370c:	          f7ff fdf6 	bl	100032fc <Cy_IPC_Drv_LockRelease>
10003710:	          2800      	cmp	r0, #0
10003712:	          bf08      	it	eq
10003714:	          4605      	moveq	r5, r0
10003716:	          462b      	mov	r3, r5
10003718:	          4618      	mov	r0, r3
1000371a:	          bd70      	pop	{r4, r5, r6, pc}

1000371c <Cy_PDL_Init>:
1000371c:	f242 71b8 	movw	r1, #10168	; 0x27b8
10003720:	f6c0 0100 	movt	r1, #2048	; 0x800
10003724:	6008      	str	r0, [r1, #0]
10003726:	4770      	bx	lr

10003728 <Cy_Prot_GetActivePC>:
10003728:	    f242 72b8 	movw	r2, #10168	; 0x27b8
1000372c:	    f6c0 0200 	movt	r2, #2048	; 0x800
10003730:	    6811      	ldr	r1, [r2, #0]
10003732:	    6c8b      	ldr	r3, [r1, #72]	; 0x48
10003734:	    40c3      	lsrs	r3, r0
10003736:	    07db      	lsls	r3, r3, #31
10003738:	/-- d101      	bne.n	1000373e <Cy_Prot_GetActivePC+0x16>
1000373a:	|   be01      	bkpt	0x0001
1000373c:	|   6811      	ldr	r1, [r2, #0]
1000373e:	\-> 6909      	ldr	r1, [r1, #16]
10003740:	    eb01 2080 	add.w	r0, r1, r0, lsl #10
10003744:	    f44f 4180 	mov.w	r1, #16384	; 0x4000
10003748:	    5840      	ldr	r0, [r0, r1]
1000374a:	    f000 000f 	and.w	r0, r0, #15
1000374e:	    4770      	bx	lr

10003750 <Cy_SCB_Write>:
10003750:	6802      	ldr	r2, [r0, #0]
10003752:	f8d0 3208 	ldr.w	r3, [r0, #520]	; 0x208
10003756:	0512      	lsls	r2, r2, #20
10003758:	f04f 0280 	mov.w	r2, #128	; 0x80
1000375c:	f36f 235f 	bfc	r3, #9, #23
10003760:	bf58      	it	pl
10003762:	2240      	movpl	r2, #64	; 0x40
10003764:	429a      	cmp	r2, r3
10003766:	bf0e      	itee	eq
10003768:	2000      	moveq	r0, #0
1000376a:	f8c0 1240 	strne.w	r1, [r0, #576]	; 0x240
1000376e:	2001      	movne	r0, #1
10003770:	4770      	bx	lr
	...

10003774 <Cy_SysClk_ClkBakSetSource>:
10003774:	    2802      	cmp	r0, #2
10003776:	/-- d300      	bcc.n	1000377a <Cy_SysClk_ClkBakSetSource+0x6>
10003778:	|   be01      	bkpt	0x0001
1000377a:	\-> 2100      	movs	r1, #0
1000377c:	    f2c4 0127 	movt	r1, #16423	; 0x4027
10003780:	    680a      	ldr	r2, [r1, #0]
10003782:	    f360 2209 	bfi	r2, r0, #8, #2
10003786:	    600a      	str	r2, [r1, #0]
10003788:	    4770      	bx	lr
	...

1000378c <Cy_SysClk_ClkFastGetDivider>:
1000378c:	f242 70b8 	movw	r0, #10168	; 0x27b8
10003790:	f6c0 0000 	movt	r0, #2048	; 0x800
10003794:	6800      	ldr	r0, [r0, #0]
10003796:	6801      	ldr	r1, [r0, #0]
10003798:	f8d0 008c 	ldr.w	r0, [r0, #140]	; 0x8c
1000379c:	5840      	ldr	r0, [r0, r1]
1000379e:	f3c0 2007 	ubfx	r0, r0, #8, #8
100037a2:	4770      	bx	lr

100037a4 <Cy_SysClk_ClkFastSetDivider>:
100037a4:	f242 71b8 	movw	r1, #10168	; 0x27b8
100037a8:	f6c0 0100 	movt	r1, #2048	; 0x800
100037ac:	6809      	ldr	r1, [r1, #0]
100037ae:	680a      	ldr	r2, [r1, #0]
100037b0:	f8d1 108c 	ldr.w	r1, [r1, #140]	; 0x8c
100037b4:	588b      	ldr	r3, [r1, r2]
100037b6:	f423 437f 	bic.w	r3, r3, #65280	; 0xff00
100037ba:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
100037be:	5088      	str	r0, [r1, r2]
100037c0:	4770      	bx	lr
	...

100037c4 <Cy_SysClk_ClkHfGetFrequency>:
100037c4:	    b5b0      	push	{r4, r5, r7, lr}
100037c6:	    f242 72b8 	movw	r2, #10168	; 0x27b8
100037ca:	    f6c0 0200 	movt	r2, #2048	; 0x800
100037ce:	    6811      	ldr	r1, [r2, #0]
100037d0:	    f891 1040 	ldrb.w	r1, [r1, #64]	; 0x40
100037d4:	    4281      	cmp	r1, r0
100037d6:	/-- d803      	bhi.n	100037e0 <Cy_SysClk_ClkHfGetFrequency+0x1c>
100037d8:	|   be01      	bkpt	0x0001
100037da:	|   6811      	ldr	r1, [r2, #0]
100037dc:	|   f891 1040 	ldrb.w	r1, [r1, #64]	; 0x40
100037e0:	\-> f240 3280 	movw	r2, #896	; 0x380
100037e4:	    f2c4 0226 	movt	r2, #16422	; 0x4026
100037e8:	    f852 3020 	ldr.w	r3, [r2, r0, lsl #2]
100037ec:	    4281      	cmp	r1, r0
100037ee:	    f3c3 1401 	ubfx	r4, r3, #4, #2
100037f2:	/-- d800      	bhi.n	100037f6 <Cy_SysClk_ClkHfGetFrequency+0x32>
100037f4:	|   be01      	bkpt	0x0001
100037f6:	\-> f852 0020 	ldr.w	r0, [r2, r0, lsl #2]
100037fa:	    2101      	movs	r1, #1
100037fc:	    f000 000f 	and.w	r0, r0, #15
10003800:	    fa01 f504 	lsl.w	r5, r1, r4
10003804:	    f000 f85c 	bl	100038c0 <Cy_SysClk_ClkPathGetFrequency>
10003808:	    eb00 0055 	add.w	r0, r0, r5, lsr #1
1000380c:	    40e0      	lsrs	r0, r4
1000380e:	    bdb0      	pop	{r4, r5, r7, pc}

10003810 <Cy_SysClk_ClkHfGetSource>:
10003810:	    f242 71b8 	movw	r1, #10168	; 0x27b8
10003814:	    f6c0 0100 	movt	r1, #2048	; 0x800
10003818:	    6809      	ldr	r1, [r1, #0]
1000381a:	    f891 1040 	ldrb.w	r1, [r1, #64]	; 0x40
1000381e:	    4281      	cmp	r1, r0
10003820:	/-- d800      	bhi.n	10003824 <Cy_SysClk_ClkHfGetSource+0x14>
10003822:	|   be01      	bkpt	0x0001
10003824:	\-> f240 3180 	movw	r1, #896	; 0x380
10003828:	    f2c4 0126 	movt	r1, #16422	; 0x4026
1000382c:	    f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
10003830:	    f000 000f 	and.w	r0, r0, #15
10003834:	    4770      	bx	lr
	...

10003838 <Cy_SysClk_ClkHfSetDivider>:
10003838:	    2201      	movs	r2, #1
1000383a:	    2903      	cmp	r1, #3
1000383c:	    f2c0 024a 	movt	r2, #74	; 0x4a
10003840:	/-- d813      	bhi.n	1000386a <Cy_SysClk_ClkHfSetDivider+0x32>
10003842:	|   f242 73b8 	movw	r3, #10168	; 0x27b8
10003846:	|   f6c0 0300 	movt	r3, #2048	; 0x800
1000384a:	|   681b      	ldr	r3, [r3, #0]
1000384c:	|   f893 3040 	ldrb.w	r3, [r3, #64]	; 0x40
10003850:	|   4283      	cmp	r3, r0
10003852:	+-- d90a      	bls.n	1000386a <Cy_SysClk_ClkHfSetDivider+0x32>
10003854:	|   f240 3280 	movw	r2, #896	; 0x380
10003858:	|   f2c4 0226 	movt	r2, #16422	; 0x4026
1000385c:	|   f852 3020 	ldr.w	r3, [r2, r0, lsl #2]
10003860:	|   f361 1305 	bfi	r3, r1, #4, #2
10003864:	|   f842 3020 	str.w	r3, [r2, r0, lsl #2]
10003868:	|   2200      	movs	r2, #0
1000386a:	\-> 4610      	mov	r0, r2
1000386c:	    4770      	bx	lr
	...

10003870 <Cy_SysClk_ClkHfSetSource>:
10003870:	    2201      	movs	r2, #1
10003872:	    290f      	cmp	r1, #15
10003874:	    f2c0 024a 	movt	r2, #74	; 0x4a
10003878:	/-- d814      	bhi.n	100038a4 <Cy_SysClk_ClkHfSetSource+0x34>
1000387a:	|   f242 73b8 	movw	r3, #10168	; 0x27b8
1000387e:	|   f6c0 0300 	movt	r3, #2048	; 0x800
10003882:	|   681b      	ldr	r3, [r3, #0]
10003884:	|   f893 3040 	ldrb.w	r3, [r3, #64]	; 0x40
10003888:	|   4283      	cmp	r3, r0
1000388a:	+-- d90b      	bls.n	100038a4 <Cy_SysClk_ClkHfSetSource+0x34>
1000388c:	|   f240 3280 	movw	r2, #896	; 0x380
10003890:	|   f2c4 0226 	movt	r2, #16422	; 0x4026
10003894:	|   f852 3020 	ldr.w	r3, [r2, r0, lsl #2]
10003898:	|   f023 030f 	bic.w	r3, r3, #15
1000389c:	|   4319      	orrs	r1, r3
1000389e:	|   f842 1020 	str.w	r1, [r2, r0, lsl #2]
100038a2:	|   2200      	movs	r2, #0
100038a4:	\-> 4610      	mov	r0, r2
100038a6:	    4770      	bx	lr

100038a8 <Cy_SysClk_ClkLfSetSource>:
100038a8:	    2804      	cmp	r0, #4
100038aa:	/-- d300      	bcc.n	100038ae <Cy_SysClk_ClkLfSetSource+0x6>
100038ac:	|   be01      	bkpt	0x0001
100038ae:	\-> f240 5100 	movw	r1, #1280	; 0x500
100038b2:	    f2c4 0126 	movt	r1, #16422	; 0x4026
100038b6:	    680a      	ldr	r2, [r1, #0]
100038b8:	    f360 0201 	bfi	r2, r0, #0, #2
100038bc:	    600a      	str	r2, [r1, #0]
100038be:	    4770      	bx	lr

100038c0 <Cy_SysClk_ClkPathGetFrequency>:
100038c0:	                b5b0      	push	{r4, r5, r7, lr}
100038c2:	                f242 75b8 	movw	r5, #10168	; 0x27b8
100038c6:	                f6c0 0500 	movt	r5, #2048	; 0x800
100038ca:	                6829      	ldr	r1, [r5, #0]
100038cc:	                4604      	mov	r4, r0
100038ce:	                f891 103e 	ldrb.w	r1, [r1, #62]	; 0x3e
100038d2:	                4281      	cmp	r1, r0
100038d4:	            /-- d800      	bhi.n	100038d8 <Cy_SysClk_ClkPathGetFrequency+0x18>
100038d6:	            |   be01      	bkpt	0x0001
100038d8:	         /--\-X b154      	cbz	r4, 100038f0 <Cy_SysClk_ClkPathGetFrequency+0x30>
100038da:	         |      6828      	ldr	r0, [r5, #0]
100038dc:	         |      f890 103f 	ldrb.w	r1, [r0, #63]	; 0x3f
100038e0:	         |      42a1      	cmp	r1, r4
100038e2:	      /--|----- d30a      	bcc.n	100038fa <Cy_SysClk_ClkPathGetFrequency+0x3a>
100038e4:	      |  |      4620      	mov	r0, r4
100038e6:	      |  |      f000 fdcd 	bl	10004484 <Cy_SysClk_PllGetFrequency>
100038ea:	      |  |  /-- b128      	cbz	r0, 100038f8 <Cy_SysClk_ClkPathGetFrequency+0x38>
100038ec:	/-----|--|--|-> bdb0      	pop	{r4, r5, r7, pc}
100038ee:	|     |  |  |   bf00      	nop
100038f0:	|     |  \--|-> f000 fb2e 	bl	10003f50 <Cy_SysClk_FllGetFrequency>
100038f4:	|     |     |   2800      	cmp	r0, #0
100038f6:	+-----|-----|-- d1f9      	bne.n	100038ec <Cy_SysClk_ClkPathGetFrequency+0x2c>
100038f8:	|     |     \-> 6828      	ldr	r0, [r5, #0]
100038fa:	|     \-------> f890 003e 	ldrb.w	r0, [r0, #62]	; 0x3e
100038fe:	|               42a0      	cmp	r0, r4
10003900:	|           /-- d803      	bhi.n	1000390a <Cy_SysClk_ClkPathGetFrequency+0x4a>
10003902:	|           |   be01      	bkpt	0x0001
10003904:	|           |   6828      	ldr	r0, [r5, #0]
10003906:	|           |   f890 003e 	ldrb.w	r0, [r0, #62]	; 0x3e
1000390a:	|           \-> 42a0      	cmp	r0, r4
1000390c:	|           /-- d800      	bhi.n	10003910 <Cy_SysClk_ClkPathGetFrequency+0x50>
1000390e:	|           |   be01      	bkpt	0x0001
10003910:	|           \-> f240 5130 	movw	r1, #1328	; 0x530
10003914:	|               f2c4 0126 	movt	r1, #16422	; 0x4026
10003918:	|               f64f 6210 	movw	r2, #65040	; 0xfe10
1000391c:	|               eb01 0084 	add.w	r0, r1, r4, lsl #2
10003920:	|               f6cf 72ff 	movt	r2, #65535	; 0xffff
10003924:	|               5882      	ldr	r2, [r0, r2]
10003926:	|               f002 0207 	and.w	r2, r2, #7
1000392a:	|               2a04      	cmp	r2, #4
1000392c:	|           /-- d107      	bne.n	1000393e <Cy_SysClk_ClkPathGetFrequency+0x7e>
1000392e:	|           |   f64f 52d0 	movw	r2, #64976	; 0xfdd0
10003932:	|           |   f6cf 72ff 	movt	r2, #65535	; 0xffff
10003936:	|           |   5882      	ldr	r2, [r0, r2]
10003938:	|           |   2008      	movs	r0, #8
1000393a:	|           |   f360 125f 	bfi	r2, r0, #5, #27
1000393e:	|           \-> f5b2 7f88 	cmp.w	r2, #272	; 0x110
10003942:	|               f04f 0000 	mov.w	r0, #0
10003946:	|           /-- da0f      	bge.n	10003968 <Cy_SysClk_ClkPathGetFrequency+0xa8>
10003948:	|     /-----|-- b1f2      	cbz	r2, 10003988 <Cy_SysClk_ClkPathGetFrequency+0xc8>
1000394a:	|     |     |   2a01      	cmp	r2, #1
1000394c:	|  /--|-----|-- d02a      	beq.n	100039a4 <Cy_SysClk_ClkPathGetFrequency+0xe4>
1000394e:	|  |  |     |   2a02      	cmp	r2, #2
10003950:	\--|--|-----|-- d1cc      	bne.n	100038ec <Cy_SysClk_ClkPathGetFrequency+0x2c>
10003952:	   |  |     |   6808      	ldr	r0, [r1, #0]
10003954:	   |  |     |   f000 0003 	and.w	r0, r0, #3
10003958:	   |  |     |   2803      	cmp	r0, #3
1000395a:	/--|--|-----|-- d133      	bne.n	100039c4 <Cy_SysClk_ClkPathGetFrequency+0x104>
1000395c:	|  |  |     |   f242 50b0 	movw	r0, #9648	; 0x25b0
10003960:	|  |  |     |   f6c0 0000 	movt	r0, #2048	; 0x800
10003964:	|  |  |     |   68c0      	ldr	r0, [r0, #12]
10003966:	|  |  |     |   bdb0      	pop	{r4, r5, r7, pc}
10003968:	|  |  |  /--\-X d014      	beq.n	10003994 <Cy_SysClk_ClkPathGetFrequency+0xd4>
1000396a:	|  |  |  |      f240 1311 	movw	r3, #273	; 0x111
1000396e:	|  |  |  |      429a      	cmp	r2, r3
10003970:	|  |  |  |  /-- d01e      	beq.n	100039b0 <Cy_SysClk_ClkPathGetFrequency+0xf0>
10003972:	|  |  |  |  |   f240 1313 	movw	r3, #275	; 0x113
10003976:	|  |  |  |  |   429a      	cmp	r2, r3
10003978:	|  |  |  |  |   bf18      	it	ne
1000397a:	|  |  |  |  |   bdb0      	popne	{r4, r5, r7, pc}
1000397c:	|  |  |  |  |   68c8      	ldr	r0, [r1, #12]
1000397e:	|  |  |  |  |   f44f 4100 	mov.w	r1, #32768	; 0x8000
10003982:	|  |  |  |  |   ea01 4010 	and.w	r0, r1, r0, lsr #16
10003986:	|  |  |  |  |   bdb0      	pop	{r4, r5, r7, pc}
10003988:	|  |  \--|--|-> f241 2000 	movw	r0, #4608	; 0x1200
1000398c:	|  |     |  |   f2c0 007a 	movt	r0, #122	; 0x7a
10003990:	|  |     |  |   bdb0      	pop	{r4, r5, r7, pc}
10003992:	|  |     |  |   bf00      	nop
10003994:	|  |     \--|-> f851 0c24 	ldr.w	r0, [r1, #-36]
10003998:	|  |        |   f44f 4100 	mov.w	r1, #32768	; 0x8000
1000399c:	|  |        |   ea01 4010 	and.w	r0, r1, r0, lsr #16
100039a0:	|  |        |   bdb0      	pop	{r4, r5, r7, pc}
100039a2:	|  |        |   bf00      	nop
100039a4:	|  \--------|-> f242 50b0 	movw	r0, #9648	; 0x25b0
100039a8:	|           |   f6c0 0000 	movt	r0, #2048	; 0x800
100039ac:	|           |   6880      	ldr	r0, [r0, #8]
100039ae:	|           |   bdb0      	pop	{r4, r5, r7, pc}
100039b0:	|           \-> 2010      	movs	r0, #16
100039b2:	|               f2c4 0027 	movt	r0, #16423	; 0x4027
100039b6:	|               6800      	ldr	r0, [r0, #0]
100039b8:	|               f44f 4100 	mov.w	r1, #32768	; 0x8000
100039bc:	|               ea01 3040 	and.w	r0, r1, r0, lsl #13
100039c0:	|               bdb0      	pop	{r4, r5, r7, pc}
100039c2:	|               bf00      	nop
100039c4:	\-------------> 6808      	ldr	r0, [r1, #0]
100039c6:	                2000      	movs	r0, #0
100039c8:	                bdb0      	pop	{r4, r5, r7, pc}
	...

100039cc <Cy_SysClk_ClkPathGetSource>:
100039cc:	    f242 71b8 	movw	r1, #10168	; 0x27b8
100039d0:	    f6c0 0100 	movt	r1, #2048	; 0x800
100039d4:	    6809      	ldr	r1, [r1, #0]
100039d6:	    f891 103e 	ldrb.w	r1, [r1, #62]	; 0x3e
100039da:	    4281      	cmp	r1, r0
100039dc:	/-- d800      	bhi.n	100039e0 <Cy_SysClk_ClkPathGetSource+0x14>
100039de:	|   be01      	bkpt	0x0001
100039e0:	\-> f240 3200 	movw	r2, #768	; 0x300
100039e4:	    f2c4 0226 	movt	r2, #16422	; 0x4026
100039e8:	    eb02 0180 	add.w	r1, r2, r0, lsl #2
100039ec:	    6c09      	ldr	r1, [r1, #64]	; 0x40
100039ee:	    f001 0107 	and.w	r1, r1, #7
100039f2:	    2904      	cmp	r1, #4
100039f4:	/-- d104      	bne.n	10003a00 <Cy_SysClk_ClkPathGetSource+0x34>
100039f6:	|   f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
100039fa:	|   2008      	movs	r0, #8
100039fc:	|   f360 115f 	bfi	r1, r0, #5, #27
10003a00:	\-> b288      	uxth	r0, r1
10003a02:	    4770      	bx	lr

10003a04 <Cy_SysClk_ClkPathSetSource>:
10003a04:	       f242 72b8 	movw	r2, #10168	; 0x27b8
10003a08:	       f6c0 0200 	movt	r2, #2048	; 0x800
10003a0c:	       6812      	ldr	r2, [r2, #0]
10003a0e:	       f892 303e 	ldrb.w	r3, [r2, #62]	; 0x3e
10003a12:	       4602      	mov	r2, r0
10003a14:	       4283      	cmp	r3, r0
10003a16:	       f240 0001 	movw	r0, #1
10003a1a:	       f2c0 004a 	movt	r0, #74	; 0x4a
10003a1e:	/----- d90a      	bls.n	10003a36 <Cy_SysClk_ClkPathSetSource+0x32>
10003a20:	|      2905      	cmp	r1, #5
10003a22:	|  /-- d209      	bcs.n	10003a38 <Cy_SysClk_ClkPathSetSource+0x34>
10003a24:	|  |   f001 0007 	and.w	r0, r1, #7
10003a28:	|  |   f240 3140 	movw	r1, #832	; 0x340
10003a2c:	|  |   f2c4 0126 	movt	r1, #16422	; 0x4026
10003a30:	|  |   f841 0022 	str.w	r0, [r1, r2, lsl #2]
10003a34:	|  |   2000      	movs	r0, #0
10003a36:	\--|-> 4770      	bx	lr
10003a38:	   \-> f5a1 7380 	sub.w	r3, r1, #256	; 0x100
10003a3c:	       2b13      	cmp	r3, #19
10003a3e:	       bf88      	it	hi
10003a40:	       4770      	bxhi	lr
10003a42:	       f001 001f 	and.w	r0, r1, #31
10003a46:	       f240 3140 	movw	r1, #832	; 0x340
10003a4a:	       f2c4 0126 	movt	r1, #16422	; 0x4026
10003a4e:	       eb01 0382 	add.w	r3, r1, r2, lsl #2
10003a52:	       f843 0c40 	str.w	r0, [r3, #-64]
10003a56:	       2004      	movs	r0, #4
10003a58:	       f841 0022 	str.w	r0, [r1, r2, lsl #2]
10003a5c:	       2000      	movs	r0, #0
10003a5e:	       4770      	bx	lr

10003a60 <Cy_SysClk_ClkPeriGetDivider>:
10003a60:	f242 70b8 	movw	r0, #10168	; 0x27b8
10003a64:	f6c0 0000 	movt	r0, #2048	; 0x800
10003a68:	6800      	ldr	r0, [r0, #0]
10003a6a:	6801      	ldr	r1, [r0, #0]
10003a6c:	f8d0 0088 	ldr.w	r0, [r0, #136]	; 0x88
10003a70:	5840      	ldr	r0, [r0, r1]
10003a72:	0e00      	lsrs	r0, r0, #24
10003a74:	4770      	bx	lr
	...

10003a78 <Cy_SysClk_ClkPeriSetDivider>:
10003a78:	f242 71b8 	movw	r1, #10168	; 0x27b8
10003a7c:	f6c0 0100 	movt	r1, #2048	; 0x800
10003a80:	6809      	ldr	r1, [r1, #0]
10003a82:	680a      	ldr	r2, [r1, #0]
10003a84:	f8d1 1088 	ldr.w	r1, [r1, #136]	; 0x88
10003a88:	588b      	ldr	r3, [r1, r2]
10003a8a:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
10003a8e:	ea43 6000 	orr.w	r0, r3, r0, lsl #24
10003a92:	5088      	str	r0, [r1, r2]
10003a94:	4770      	bx	lr
	...

10003a98 <Cy_SysClk_ClkSlowSetDivider>:
10003a98:	f242 71b8 	movw	r1, #10168	; 0x27b8
10003a9c:	f6c0 0100 	movt	r1, #2048	; 0x800
10003aa0:	6809      	ldr	r1, [r1, #0]
10003aa2:	680a      	ldr	r2, [r1, #0]
10003aa4:	f8d1 1088 	ldr.w	r1, [r1, #136]	; 0x88
10003aa8:	588b      	ldr	r3, [r1, r2]
10003aaa:	f423 437f 	bic.w	r3, r3, #65280	; 0xff00
10003aae:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
10003ab2:	5088      	str	r0, [r1, r2]
10003ab4:	4770      	bx	lr
	...

10003ab8 <Cy_SysClk_DeepSleepCallback>:
10003ab8:	                                              e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
10003abc:	                                              f240 0e02 	movw	lr, #2
10003ac0:	                                              f2c0 0e42 	movt	lr, #66	; 0x42
10003ac4:	                                              3901      	subs	r1, #1
10003ac6:	                                              2907      	cmp	r1, #7
10003ac8:	                                              f10e 00fd 	add.w	r0, lr, #253	; 0xfd
10003acc:	/-------------------------------------------- f200 81c3 	bhi.w	10003e56 <Cy_SysClk_DeepSleepCallback+0x39e>
10003ad0:	|                                             e8df f011 	tbh	[pc, r1, lsl #1]
10003ad4:	|                                             00160008 	.word	0x00160008
10003ad8:	|                                             001e01c1 	.word	0x001e01c1
10003adc:	|                                             01c101c1 	.word	0x01c101c1
10003ae0:	|                                             005a01c1 	.word	0x005a01c1
10003ae4:	|                                             f242 51b0 	movw	r1, #9648	; 0x25b0
10003ae8:	|                                             f6c0 0100 	movt	r1, #2048	; 0x800
10003aec:	|                                             780a      	ldrb	r2, [r1, #0]
10003aee:	|                                             2a00      	cmp	r2, #0
10003af0:	+-------------------------------------------- f040 81b1 	bne.w	10003e56 <Cy_SysClk_DeepSleepCallback+0x39e>
10003af4:	|                                             2001      	movs	r0, #1
10003af6:	|                                             7048      	strb	r0, [r1, #1]
10003af8:	|                                             2000      	movs	r0, #0
10003afa:	|                                             e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
10003afe:	|                                             bf00      	nop
10003b00:	|                                             f242 51b0 	movw	r1, #9648	; 0x25b0
10003b04:	|                                             f6c0 0100 	movt	r1, #2048	; 0x800
10003b08:	|                                             2000      	movs	r0, #0
10003b0a:	|                                             7048      	strb	r0, [r1, #1]
10003b0c:	|                                             e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
10003b10:	|                                             f242 59b0 	movw	r9, #9648	; 0x25b0
10003b14:	|                                             f240 5a30 	movw	sl, #1328	; 0x530
10003b18:	|                                             f6c0 0900 	movt	r9, #2048	; 0x800
10003b1c:	|                                             2000      	movs	r0, #0
10003b1e:	|                                             f242 73b8 	movw	r3, #10168	; 0x27b8
10003b22:	|                                             f2c4 0a26 	movt	sl, #16422	; 0x4026
10003b26:	|                                             f8c9 0002 	str.w	r0, [r9, #2]
10003b2a:	|                                             f6c0 0300 	movt	r3, #2048	; 0x800
10003b2e:	|                                             6818      	ldr	r0, [r3, #0]
10003b30:	|                                             f8da 1050 	ldr.w	r1, [sl, #80]	; 0x50
10003b34:	|                                             f1b1 3fff 	cmp.w	r1, #4294967295
10003b38:	|                             /-------------- f300 808b 	bgt.w	10003c52 <Cy_SysClk_DeepSleepCallback+0x19a>
10003b3c:	|                             |               f890 003e 	ldrb.w	r0, [r0, #62]	; 0x3e
10003b40:	|                             |           /-- b900      	cbnz	r0, 10003b44 <Cy_SysClk_DeepSleepCallback+0x8c>
10003b42:	|                             |           |   be01      	bkpt	0x0001
10003b44:	|                             |           \-> f64f 6010 	movw	r0, #65040	; 0xfe10
10003b48:	|                             |               f6cf 70ff 	movt	r0, #65535	; 0xffff
10003b4c:	|                             |               f85a 1000 	ldr.w	r1, [sl, r0]
10003b50:	|                             |               f001 0207 	and.w	r2, r1, #7
10003b54:	|                             |               2a04      	cmp	r2, #4
10003b56:	|                             |     /-------- d06f      	beq.n	10003c38 <Cy_SysClk_DeepSleepCallback+0x180>
10003b58:	|                             |     |         2a02      	cmp	r2, #2
10003b5a:	|                             |  /--|-------- d173      	bne.n	10003c44 <Cy_SysClk_DeepSleepCallback+0x18c>
10003b5c:	|                             |  |  |         f8da 1058 	ldr.w	r1, [sl, #88]	; 0x58
10003b60:	|                             |  |  |         2202      	movs	r2, #2
10003b62:	|                             |  |  |         f362 711d 	bfi	r1, r2, #28, #2
10003b66:	|                             |  |  |         f8ca 1058 	str.w	r1, [sl, #88]	; 0x58
10003b6a:	|                             |  |  |         6819      	ldr	r1, [r3, #0]
10003b6c:	|                             |  |  |         f891 103e 	ldrb.w	r1, [r1, #62]	; 0x3e
10003b70:	|                             |  |  |         2900      	cmp	r1, #0
10003b72:	|                             |  |  |         bf1c      	itt	ne
10003b74:	|                             |  |  |         2100      	movne	r1, #0
10003b76:	|                             |  |  |         f84a 1000 	strne.w	r1, [sl, r0]
10003b7a:	|                             |  |  |         f8b9 0002 	ldrh.w	r0, [r9, #2]
10003b7e:	|                             |  |  |         f040 0001 	orr.w	r0, r0, #1
10003b82:	|                             |  |  |         f8a9 0002 	strh.w	r0, [r9, #2]
10003b86:	|                             +--|--|-------- e064      	b.n	10003c52 <Cy_SysClk_DeepSleepCallback+0x19a>
10003b88:	|                             |  |  |         f242 5cb0 	movw	ip, #9648	; 0x25b0
10003b8c:	|                             |  |  |         f6c0 0c00 	movt	ip, #2048	; 0x800
10003b90:	|                             |  |  |         f8bc 5002 	ldrh.w	r5, [ip, #2]
10003b94:	|                             |  |  |  /----- b375      	cbz	r5, 10003bf4 <Cy_SysClk_DeepSleepCallback+0x13c>
10003b96:	|                             |  |  |  |      f240 5130 	movw	r1, #1328	; 0x530
10003b9a:	|                             |  |  |  |      f2c4 0126 	movt	r1, #16422	; 0x4026
10003b9e:	|                             |  |  |  |      6808      	ldr	r0, [r1, #0]
10003ba0:	|                             |  |  |  |      f244 2340 	movw	r3, #16960	; 0x4240
10003ba4:	|                             |  |  |  |      f000 0003 	and.w	r0, r0, #3
10003ba8:	|                             |  |  |  |      2803      	cmp	r0, #3
10003baa:	|                             |  |  |  |      f2c0 030f 	movt	r3, #15
10003bae:	|              /--------------|--|--|--|----- f000 80bf 	beq.w	10003d30 <Cy_SysClk_DeepSleepCallback+0x278>
10003bb2:	|              |              |  |  |  |      bf00      	nop
10003bb4:	|              |              |  |  |  |  /-> 6808      	ldr	r0, [r1, #0]
10003bb6:	|              |              |  |  |  |  |   2b00      	cmp	r3, #0
10003bb8:	|  /-----------|--------------|--|--|--|--|-- f000 8149 	beq.w	10003e4e <Cy_SysClk_DeepSleepCallback+0x396>
10003bbc:	|  |           |              |  |  |  |  |   6808      	ldr	r0, [r1, #0]
10003bbe:	|  |           |              |  |  |  |  |   f000 0003 	and.w	r0, r0, #3
10003bc2:	|  |           |              |  |  |  |  |   2803      	cmp	r0, #3
10003bc4:	|  |           |  /-----------|--|--|--|--|-- f000 80ac 	beq.w	10003d20 <Cy_SysClk_DeepSleepCallback+0x268>
10003bc8:	|  |           |  |           |  |  |  |  |   6808      	ldr	r0, [r1, #0]
10003bca:	|  |           |  |           |  |  |  |  |   6808      	ldr	r0, [r1, #0]
10003bcc:	|  |           |  |           |  |  |  |  |   f000 0003 	and.w	r0, r0, #3
10003bd0:	|  |           |  |           |  |  |  |  |   2803      	cmp	r0, #3
10003bd2:	|  |           |  |  /--------|--|--|--|--|-- f000 80a7 	beq.w	10003d24 <Cy_SysClk_DeepSleepCallback+0x26c>
10003bd6:	|  |           |  |  |        |  |  |  |  |   6808      	ldr	r0, [r1, #0]
10003bd8:	|  |           |  |  |        |  |  |  |  |   6808      	ldr	r0, [r1, #0]
10003bda:	|  |           |  |  |        |  |  |  |  |   f000 0003 	and.w	r0, r0, #3
10003bde:	|  |           |  |  |        |  |  |  |  |   2803      	cmp	r0, #3
10003be0:	|  |           |  |  |  /-----|--|--|--|--|-- f000 80a2 	beq.w	10003d28 <Cy_SysClk_DeepSleepCallback+0x270>
10003be4:	|  |           |  |  |  |     |  |  |  |  |   6808      	ldr	r0, [r1, #0]
10003be6:	|  |           |  |  |  |     |  |  |  |  |   6808      	ldr	r0, [r1, #0]
10003be8:	|  |           |  |  |  |     |  |  |  |  |   3b04      	subs	r3, #4
10003bea:	|  |           |  |  |  |     |  |  |  |  |   f000 0003 	and.w	r0, r0, #3
10003bee:	|  |           |  |  |  |     |  |  |  |  |   2803      	cmp	r0, #3
10003bf0:	|  |           |  |  |  |     |  |  |  |  \-- d1e0      	bne.n	10003bb4 <Cy_SysClk_DeepSleepCallback+0xfc>
10003bf2:	|  |           |  |  |  |  /--|--|--|--|----- e09a      	b.n	10003d2a <Cy_SysClk_DeepSleepCallback+0x272>
10003bf4:	|  |           |  |  |  |  |  |  |  |  \----> f240 5030 	movw	r0, #1328	; 0x530
10003bf8:	|  |           |  |  |  |  |  |  |  |         f2c4 0026 	movt	r0, #16422	; 0x4026
10003bfc:	|  |           |  |  |  |  |  |  |  |         6d01      	ldr	r1, [r0, #80]	; 0x50
10003bfe:	|  |           |  |  |  |  |  |  |  |         f1b1 3fff 	cmp.w	r1, #4294967295
10003c02:	|  |  /--------|--|--|--|--|--|--|--|-------- f300 8122 	bgt.w	10003e4a <Cy_SysClk_DeepSleepCallback+0x392>
10003c06:	|  |  |        |  |  |  |  |  |  |  |         f64b 51c0 	movw	r1, #48576	; 0xbdc0
10003c0a:	|  |  |        |  |  |  |  |  |  |  |         f6cf 71f0 	movt	r1, #65520	; 0xfff0
10003c0e:	|  |  |        |  |  |  |  |  |  |  |     /-> 6e02      	ldr	r2, [r0, #96]	; 0x60
10003c10:	|  |  |        |  |  |  |  |  |  |  |     |   2900      	cmp	r1, #0
10003c12:	|  |  |  /-----|--|--|--|--|--|--|--|-----|-- f000 8115 	beq.w	10003e40 <Cy_SysClk_DeepSleepCallback+0x388>
10003c16:	|  |  |  |     |  |  |  |  |  |  |  |     |   f012 0201 	ands.w	r2, r2, #1
10003c1a:	|  |  |  +-----|--|--|--|--|--|--|--|-----|-- f040 8111 	bne.w	10003e40 <Cy_SysClk_DeepSleepCallback+0x388>
10003c1e:	|  |  |  |     |  |  |  |  |  |  |  |     |   6e02      	ldr	r2, [r0, #96]	; 0x60
10003c20:	|  |  |  |     |  |  |  |  |  |  |  |     |   07d2      	lsls	r2, r2, #31
10003c22:	|  |  |  |     |  |  |  |  |  |  |  |     |   bf04      	itt	eq
10003c24:	|  |  |  |     |  |  |  |  |  |  |  |     |   6e02      	ldreq	r2, [r0, #96]	; 0x60
10003c26:	|  |  |  |     |  |  |  |  |  |  |  |     |   ea5f 72c2 	movseq.w	r2, r2, lsl #31
10003c2a:	|  |  |  |  /--|--|--|--|--|--|--|--|-----|-- f040 810a 	bne.w	10003e42 <Cy_SysClk_DeepSleepCallback+0x38a>
10003c2e:	|  |  |  |  |  |  |  |  |  |  |  |  |     |   6e02      	ldr	r2, [r0, #96]	; 0x60
10003c30:	|  |  |  |  |  |  |  |  |  |  |  |  |     |   3104      	adds	r1, #4
10003c32:	|  |  |  |  |  |  |  |  |  |  |  |  |     |   07d2      	lsls	r2, r2, #31
10003c34:	|  |  |  |  |  |  |  |  |  |  |  |  |     \-- d0eb      	beq.n	10003c0e <Cy_SysClk_DeepSleepCallback+0x156>
10003c36:	|  |  |  |  +--|--|--|--|--|--|--|--|-------- e104      	b.n	10003e42 <Cy_SysClk_DeepSleepCallback+0x38a>
10003c38:	|  |  |  |  |  |  |  |  |  |  |  |  \-------> f64f 50d0 	movw	r0, #64976	; 0xfdd0
10003c3c:	|  |  |  |  |  |  |  |  |  |  |  |            f6cf 70ff 	movt	r0, #65535	; 0xffff
10003c40:	|  |  |  |  |  |  |  |  |  |  |  |            f85a 0000 	ldr.w	r0, [sl, r0]
10003c44:	|  |  |  |  |  |  |  |  |  |  |  \----------> f8da 0058 	ldr.w	r0, [sl, #88]	; 0x58
10003c48:	|  |  |  |  |  |  |  |  |  |  |               2102      	movs	r1, #2
10003c4a:	|  |  |  |  |  |  |  |  |  |  |               f361 701d 	bfi	r0, r1, #28, #2
10003c4e:	|  |  |  |  |  |  |  |  |  |  |               f8ca 0058 	str.w	r0, [sl, #88]	; 0x58
10003c52:	|  |  |  |  |  |  |  |  |  |  \-------------> 6818      	ldr	r0, [r3, #0]
10003c54:	|  |  |  |  |  |  |  |  |  |                  f890 203f 	ldrb.w	r2, [r0, #63]	; 0x3f
10003c58:	|  |  |  |  |  |  |  |  |  |                  2000      	movs	r0, #0
10003c5a:	|  |  |  |  |  |  |  |  |  |                  2a00      	cmp	r2, #0
10003c5c:	|  |  |  |  |  |  |  |  |  |                  bf08      	it	eq
10003c5e:	|  |  |  |  |  |  |  |  |  |                  e8bd 8ff0 	ldmiaeq.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
10003c62:	|  |  |  |  |  |  |  |  |  |                  f64f 5ed4 	movw	lr, #64980	; 0xfdd4
10003c66:	|  |  |  |  |  |  |  |  |  |                  f5aa 77f6 	sub.w	r7, sl, #492	; 0x1ec
10003c6a:	|  |  |  |  |  |  |  |  |  |                  f10a 06d0 	add.w	r6, sl, #208	; 0xd0
10003c6e:	|  |  |  |  |  |  |  |  |  |                  f04f 0801 	mov.w	r8, #1
10003c72:	|  |  |  |  |  |  |  |  |  |                  f04f 0c02 	mov.w	ip, #2
10003c76:	|  |  |  |  |  |  |  |  |  |                  f6cf 7eff 	movt	lr, #65535	; 0xffff
10003c7a:	|  |  |  |  |  |  |  |  |  |                  2400      	movs	r4, #0
10003c7c:	|  |  |  |  |  |  |  |  |  |           /----- e00e      	b.n	10003c9c <Cy_SysClk_DeepSleepCallback+0x1e4>
10003c7e:	|  |  |  |  |  |  |  |  |  |           |      bf00      	nop
10003c80:	|  |  |  |  |  |  |  |  |  |        /--|----> eb0a 0284 	add.w	r2, sl, r4, lsl #2
10003c84:	|  |  |  |  |  |  |  |  |  |        |  |      f8d2 10d0 	ldr.w	r1, [r2, #208]	; 0xd0
10003c88:	|  |  |  |  |  |  |  |  |  |        |  |      1c65      	adds	r5, r4, #1
10003c8a:	|  |  |  |  |  |  |  |  |  |        |  |      f1b1 3fff 	cmp.w	r1, #4294967295
10003c8e:	|  |  |  |  |  |  |  |  |  |        |  |  /-- dd09      	ble.n	10003ca4 <Cy_SysClk_DeepSleepCallback+0x1ec>
10003c90:	|  |  |  |  |  |  |  |  |  |  /-----|--|--|-> 6819      	ldr	r1, [r3, #0]
10003c92:	|  |  |  |  |  |  |  |  |  |  |     |  |  |   462c      	mov	r4, r5
10003c94:	|  |  |  |  |  |  |  |  |  |  |     |  |  |   f891 203f 	ldrb.w	r2, [r1, #63]	; 0x3f
10003c98:	|  |  |  |  |  |  |  |  |  |  |     |  |  |   4295      	cmp	r5, r2
10003c9a:	|  |  |  |  |  |  |  |  |  |  |  /--|--|--|-- d23d      	bcs.n	10003d18 <Cy_SysClk_DeepSleepCallback+0x260>
10003c9c:	|  |  |  |  |  |  |  |  |  |  |  |  |  \--|-> 4294      	cmp	r4, r2
10003c9e:	|  |  |  |  |  |  |  |  |  |  |  |  +-----|-- d3ef      	bcc.n	10003c80 <Cy_SysClk_DeepSleepCallback+0x1c8>
10003ca0:	|  |  |  |  |  |  |  |  |  |  |  |  |     |   be01      	bkpt	0x0001
10003ca2:	|  |  |  |  |  |  |  |  |  |  |  |  \-----|-- e7ed      	b.n	10003c80 <Cy_SysClk_DeepSleepCallback+0x1c8>
10003ca4:	|  |  |  |  |  |  |  |  |  |  |  |        \-> 6819      	ldr	r1, [r3, #0]
10003ca6:	|  |  |  |  |  |  |  |  |  |  |  |            f891 103e 	ldrb.w	r1, [r1, #62]	; 0x3e
10003caa:	|  |  |  |  |  |  |  |  |  |  |  |            428d      	cmp	r5, r1
10003cac:	|  |  |  |  |  |  |  |  |  |  |  |        /-- d300      	bcc.n	10003cb0 <Cy_SysClk_DeepSleepCallback+0x1f8>
10003cae:	|  |  |  |  |  |  |  |  |  |  |  |        |   be01      	bkpt	0x0001
10003cb0:	|  |  |  |  |  |  |  |  |  |  |  |        \-> f857 1024 	ldr.w	r1, [r7, r4, lsl #2]
10003cb4:	|  |  |  |  |  |  |  |  |  |  |  |            f001 0107 	and.w	r1, r1, #7
10003cb8:	|  |  |  |  |  |  |  |  |  |  |  |            2902      	cmp	r1, #2
10003cba:	|  |  |  |  |  |  |  |  |  |  |  |        /-- d005      	beq.n	10003cc8 <Cy_SysClk_DeepSleepCallback+0x210>
10003cbc:	|  |  |  |  |  |  |  |  |  |  |  |        |   2904      	cmp	r1, #4
10003cbe:	|  |  |  |  |  |  |  |  |  |  +--|--------|-- d1e7      	bne.n	10003c90 <Cy_SysClk_DeepSleepCallback+0x1d8>
10003cc0:	|  |  |  |  |  |  |  |  |  |  |  |        |   f852 100e 	ldr.w	r1, [r2, lr]
10003cc4:	|  |  |  |  |  |  |  |  |  |  +--|--------|-- e7e4      	b.n	10003c90 <Cy_SysClk_DeepSleepCallback+0x1d8>
10003cc6:	|  |  |  |  |  |  |  |  |  |  |  |        |   bf00      	nop
10003cc8:	|  |  |  |  |  |  |  |  |  |  |  |        \-> f856 1024 	ldr.w	r1, [r6, r4, lsl #2]
10003ccc:	|  |  |  |  |  |  |  |  |  |  |  |            f011 5f40 	tst.w	r1, #805306368	; 0x30000000
10003cd0:	|  |  |  |  |  |  |  |  |  |  |  |        /-- d006      	beq.n	10003ce0 <Cy_SysClk_DeepSleepCallback+0x228>
10003cd2:	|  |  |  |  |  |  |  |  |  |  |  |        |   f856 1024 	ldr.w	r1, [r6, r4, lsl #2]
10003cd6:	|  |  |  |  |  |  |  |  |  |  |  |        |   f001 5140 	and.w	r1, r1, #805306368	; 0x30000000
10003cda:	|  |  |  |  |  |  |  |  |  |  |  |        |   f1b1 5f80 	cmp.w	r1, #268435456	; 0x10000000
10003cde:	|  |  |  |  |  |  |  |  |  |  |  |     /--|-- d106      	bne.n	10003cee <Cy_SysClk_DeepSleepCallback+0x236>
10003ce0:	|  |  |  |  |  |  |  |  |  |  |  |     |  \-> f8b9 1004 	ldrh.w	r1, [r9, #4]
10003ce4:	|  |  |  |  |  |  |  |  |  |  |  |     |      fa08 f205 	lsl.w	r2, r8, r5
10003ce8:	|  |  |  |  |  |  |  |  |  |  |  |     |      4311      	orrs	r1, r2
10003cea:	|  |  |  |  |  |  |  |  |  |  |  |     |      f8a9 1004 	strh.w	r1, [r9, #4]
10003cee:	|  |  |  |  |  |  |  |  |  |  |  |     \----> f856 1024 	ldr.w	r1, [r6, r4, lsl #2]
10003cf2:	|  |  |  |  |  |  |  |  |  |  |  |            fa08 f205 	lsl.w	r2, r8, r5
10003cf6:	|  |  |  |  |  |  |  |  |  |  |  |            f36c 711d 	bfi	r1, ip, #28, #2
10003cfa:	|  |  |  |  |  |  |  |  |  |  |  |            f846 1024 	str.w	r1, [r6, r4, lsl #2]
10003cfe:	|  |  |  |  |  |  |  |  |  |  |  |            6819      	ldr	r1, [r3, #0]
10003d00:	|  |  |  |  |  |  |  |  |  |  |  |            f891 103e 	ldrb.w	r1, [r1, #62]	; 0x3e
10003d04:	|  |  |  |  |  |  |  |  |  |  |  |            428d      	cmp	r5, r1
10003d06:	|  |  |  |  |  |  |  |  |  |  |  |            bf38      	it	cc
10003d08:	|  |  |  |  |  |  |  |  |  |  |  |            f847 0024 	strcc.w	r0, [r7, r4, lsl #2]
10003d0c:	|  |  |  |  |  |  |  |  |  |  |  |            f8b9 1002 	ldrh.w	r1, [r9, #2]
10003d10:	|  |  |  |  |  |  |  |  |  |  |  |            4311      	orrs	r1, r2
10003d12:	|  |  |  |  |  |  |  |  |  |  |  |            f8a9 1002 	strh.w	r1, [r9, #2]
10003d16:	|  |  |  |  |  |  |  |  |  |  \--|----------- e7bb      	b.n	10003c90 <Cy_SysClk_DeepSleepCallback+0x1d8>
10003d18:	|  |  |  |  |  |  |  |  |  |     \----------> 2000      	movs	r0, #0
10003d1a:	|  |  |  |  |  |  |  |  |  |                  e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
10003d1e:	|  |  |  |  |  |  |  |  |  |                  bf00      	nop
10003d20:	|  |  |  |  |  |  \--|--|--|----------------> 3b01      	subs	r3, #1
10003d22:	|  |  |  |  |  |     |  |  +----------------- e002      	b.n	10003d2a <Cy_SysClk_DeepSleepCallback+0x272>
10003d24:	|  |  |  |  |  |     \--|--|----------------> 3b02      	subs	r3, #2
10003d26:	|  |  |  |  |  |        |  +----------------- e000      	b.n	10003d2a <Cy_SysClk_DeepSleepCallback+0x272>
10003d28:	|  |  |  |  |  |        \--|----------------> 3b03      	subs	r3, #3
10003d2a:	|  |  |  |  |  |           \----------------> 2b00      	cmp	r3, #0
10003d2c:	|  +--|--|--|--|----------------------------- f000 808f 	beq.w	10003e4e <Cy_SysClk_DeepSleepCallback+0x396>
10003d30:	|  |  |  |  |  \----------------------------> f242 70b8 	movw	r0, #10168	; 0x27b8
10003d34:	|  |  |  |  |                                 f6c0 0000 	movt	r0, #2048	; 0x800
10003d38:	|  |  |  |  |                                 6806      	ldr	r6, [r0, #0]
10003d3a:	|  |  |  |  |                                 f64f 6810 	movw	r8, #65040	; 0xfe10
10003d3e:	|  |  |  |  |                                 2200      	movs	r2, #0
10003d40:	|  |  |  |  |                                 f04f 0a01 	mov.w	sl, #1
10003d44:	|  |  |  |  |                                 f6cf 78ff 	movt	r8, #65535	; 0xffff
10003d48:	|  |  |  |  |                                 f04f 0902 	mov.w	r9, #2
10003d4c:	|  |  |  |  |                                 fa0a fb02 	lsl.w	fp, sl, r2
10003d50:	|  |  |  |  |                                 ea1b 0f05 	tst.w	fp, r5
10003d54:	|  |  |  |  |        /----------------------- d058      	beq.n	10003e08 <Cy_SysClk_DeepSleepCallback+0x350>
10003d56:	|  |  |  |  |        |                        bf00      	nop
10003d58:	|  |  |  |  |        |  /-------------------> f896 403e 	ldrb.w	r4, [r6, #62]	; 0x3e
10003d5c:	|  |  |  |  |        |  |                     42a2      	cmp	r2, r4
10003d5e:	|  |  |  |  |        |  |                     bf3c      	itt	cc
10003d60:	|  |  |  |  |        |  |                     eb01 0482 	addcc.w	r4, r1, r2, lsl #2
10003d64:	|  |  |  |  |        |  |                     f844 9008 	strcc.w	r9, [r4, r8]
10003d68:	|  |  |  |  |        |  |        /----------- b1a2      	cbz	r2, 10003d94 <Cy_SysClk_DeepSleepCallback+0x2dc>
10003d6a:	|  |  |  |  |        |  |        |            1e55      	subs	r5, r2, #1
10003d6c:	|  |  |  |  |        |  |        |            f501 7488 	add.w	r4, r1, #272	; 0x110
10003d70:	|  |  |  |  |        |  |        |            f896 603f 	ldrb.w	r6, [r6, #63]	; 0x3f
10003d74:	|  |  |  |  |        |  |        |            42b5      	cmp	r5, r6
10003d76:	|  |  |  |  |        |  |        |     /----- d300      	bcc.n	10003d7a <Cy_SysClk_DeepSleepCallback+0x2c2>
10003d78:	|  |  |  |  |        |  |        |     |  /-> be01      	bkpt	0x0001
10003d7a:	|  |  |  |  |        |  |        |     >--|-> f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
10003d7e:	|  |  |  |  |        |  |        |  /--|--|-- b34b      	cbz	r3, 10003dd4 <Cy_SysClk_DeepSleepCallback+0x31c>
10003d80:	|  |  |  |  |        |  |        |  |  |  |   f016 0601 	ands.w	r6, r6, #1
10003d84:	|  |  |  |  |        |  |        |  +--|--|-- d126      	bne.n	10003dd4 <Cy_SysClk_DeepSleepCallback+0x31c>
10003d86:	|  |  |  |  |        |  |        |  |  |  |   6806      	ldr	r6, [r0, #0]
10003d88:	|  |  |  |  |        |  |        |  |  |  |   3b01      	subs	r3, #1
10003d8a:	|  |  |  |  |        |  |        |  |  |  |   f896 603f 	ldrb.w	r6, [r6, #63]	; 0x3f
10003d8e:	|  |  |  |  |        |  |        |  |  |  |   42b5      	cmp	r5, r6
10003d90:	|  |  |  |  |        |  |        |  |  |  \-- d2f2      	bcs.n	10003d78 <Cy_SysClk_DeepSleepCallback+0x2c0>
10003d92:	|  |  |  |  |        |  |        |  |  \----- e7f2      	b.n	10003d7a <Cy_SysClk_DeepSleepCallback+0x2c2>
10003d94:	|  |  |  |  |        |  |        >--|-------> 6e0c      	ldr	r4, [r1, #96]	; 0x60
10003d96:	|  |  |  |  |        |  |        |  +-------- b1eb      	cbz	r3, 10003dd4 <Cy_SysClk_DeepSleepCallback+0x31c>
10003d98:	|  |  |  |  |        |  |        |  |         f014 0401 	ands.w	r4, r4, #1
10003d9c:	|  |  |  |  |        |  |        |  +-------- d11a      	bne.n	10003dd4 <Cy_SysClk_DeepSleepCallback+0x31c>
10003d9e:	|  |  |  |  |        |  |        |  |         6e0c      	ldr	r4, [r1, #96]	; 0x60
10003da0:	|  |  |  |  |        |  |        |  |         2b01      	cmp	r3, #1
10003da2:	|  |  |  |  |        |  |        |  |  /----- d015      	beq.n	10003dd0 <Cy_SysClk_DeepSleepCallback+0x318>
10003da4:	|  |  |  |  |        |  |        |  |  |      f014 0401 	ands.w	r4, r4, #1
10003da8:	|  |  |  |  |        |  |        |  |  +----- d112      	bne.n	10003dd0 <Cy_SysClk_DeepSleepCallback+0x318>
10003daa:	|  |  |  |  |        |  |        |  |  |      6e0c      	ldr	r4, [r1, #96]	; 0x60
10003dac:	|  |  |  |  |        |  |        |  |  |      2b02      	cmp	r3, #2
10003dae:	|  |  |  |  |        |  |  /-----|--|--|----- d03b      	beq.n	10003e28 <Cy_SysClk_DeepSleepCallback+0x370>
10003db0:	|  |  |  |  |        |  |  |     |  |  |      f014 0401 	ands.w	r4, r4, #1
10003db4:	|  |  |  |  |        |  |  +-----|--|--|----- d138      	bne.n	10003e28 <Cy_SysClk_DeepSleepCallback+0x370>
10003db6:	|  |  |  |  |        |  |  |     |  |  |      6e0d      	ldr	r5, [r1, #96]	; 0x60
10003db8:	|  |  |  |  |        |  |  |     |  |  |      2b03      	cmp	r3, #3
10003dba:	|  |  |  |  |        |  |  |     |  |  |      f1a3 0404 	sub.w	r4, r3, #4
10003dbe:	|  |  |  |  |        |  |  |     |  |  |  /-- d003      	beq.n	10003dc8 <Cy_SysClk_DeepSleepCallback+0x310>
10003dc0:	|  |  |  |  |        |  |  |     |  |  |  |   f015 0301 	ands.w	r3, r5, #1
10003dc4:	|  |  |  |  |        |  |  |     |  |  |  |   4623      	mov	r3, r4
10003dc6:	|  |  |  |  |        |  |  |     \--|--|--|-- d0e5      	beq.n	10003d94 <Cy_SysClk_DeepSleepCallback+0x2dc>
10003dc8:	|  |  |  |  |        |  |  |        |  |  \-> 1c63      	adds	r3, r4, #1
10003dca:	|  |  |  |  |        |  |  |     /--|--|----- b923      	cbnz	r3, 10003dd6 <Cy_SysClk_DeepSleepCallback+0x31e>
10003dcc:	|  |  |  |  |        |  |  |  /--|--|--|----- e030      	b.n	10003e30 <Cy_SysClk_DeepSleepCallback+0x378>
10003dce:	|  |  |  |  |        |  |  |  |  |  |  |      bf00      	nop
10003dd0:	|  |  |  |  |        |  |  |  |  |  |  \----> 3b01      	subs	r3, #1
10003dd2:	|  |  |  |  |        |  |  |  |  |  |         bf00      	nop
10003dd4:	|  |  |  |  |        |  |  |  +--|--\-------X b363      	cbz	r3, 10003e30 <Cy_SysClk_DeepSleepCallback+0x378>
10003dd6:	|  |  |  |  |        |  |  |  |  >-----/----X b18a      	cbz	r2, 10003dfc <Cy_SysClk_DeepSleepCallback+0x344>
10003dd8:	|  |  |  |  |        |  |  |  |  |     |      f8bc 7004 	ldrh.w	r7, [ip, #4]
10003ddc:	|  |  |  |  |        |  |  |  |  |     |      1e56      	subs	r6, r2, #1
10003dde:	|  |  |  |  |        |  |  |  |  |     |      f101 05d0 	add.w	r5, r1, #208	; 0xd0
10003de2:	|  |  |  |  |        |  |  |  |  |     |      f855 4026 	ldr.w	r4, [r5, r6, lsl #2]
10003de6:	|  |  |  |  |        |  |  |  |  |     |      ea1b 0f07 	tst.w	fp, r7
10003dea:	|  |  |  |  |        |  |  |  |  |     |      bf0c      	ite	eq
10003dec:	|  |  |  |  |        |  |  |  |  |     |      f044 5740 	orreq.w	r7, r4, #805306368	; 0x30000000
10003df0:	|  |  |  |  |        |  |  |  |  |     |      f024 5740 	bicne.w	r7, r4, #805306368	; 0x30000000
10003df4:	|  |  |  |  |        |  |  |  |  |     |      f845 7026 	str.w	r7, [r5, r6, lsl #2]
10003df8:	|  |  |  |  |        |  |  |  |  |     |  /-- e004      	b.n	10003e04 <Cy_SysClk_DeepSleepCallback+0x34c>
10003dfa:	|  |  |  |  |        |  |  |  |  |     |  |   bf00      	nop
10003dfc:	|  |  |  |  |        |  |  |  |  |     \--|-> 6d8f      	ldr	r7, [r1, #88]	; 0x58
10003dfe:	|  |  |  |  |        |  |  |  |  |        |   f047 5740 	orr.w	r7, r7, #805306368	; 0x30000000
10003e02:	|  |  |  |  |        |  |  |  |  |        |   658f      	str	r7, [r1, #88]	; 0x58
10003e04:	|  |  |  |  |        |  |  |  |  |        \-> f04f 0e00 	mov.w	lr, #0
10003e08:	|  |  |  |  |        >--|--|--|--|----------> 6806      	ldr	r6, [r0, #0]
10003e0a:	|  |  |  |  |        |  |  |  |  |            f896 403f 	ldrb.w	r4, [r6, #63]	; 0x3f
10003e0e:	|  |  |  |  |        |  |  |  |  |            42a2      	cmp	r2, r4
10003e10:	|  +--|--|--|--------|--|--|--|--|----------- d21d      	bcs.n	10003e4e <Cy_SysClk_DeepSleepCallback+0x396>
10003e12:	|  |  |  |  |        |  |  |  |  |        /-> f8bc 5002 	ldrh.w	r5, [ip, #2]
10003e16:	|  |  |  |  |        |  |  |  |  |        |   3201      	adds	r2, #1
10003e18:	|  |  |  |  |        |  |  |  |  |        |   fa0a fb02 	lsl.w	fp, sl, r2
10003e1c:	|  |  |  |  |        |  |  |  |  |        |   ea1b 0f05 	tst.w	fp, r5
10003e20:	|  |  |  |  |        |  \--|--|--|--------|-- f47f af9a 	bne.w	10003d58 <Cy_SysClk_DeepSleepCallback+0x2a0>
10003e24:	|  |  |  |  |        \-----|--|--|--------|-- e7f0      	b.n	10003e08 <Cy_SysClk_DeepSleepCallback+0x350>
10003e26:	|  |  |  |  |              |  |  |        |   bf00      	nop
10003e28:	|  |  |  |  |              \--|--|--------|-> 3b02      	subs	r3, #2
10003e2a:	|  |  |  |  |                 |  |        |   2b00      	cmp	r3, #0
10003e2c:	|  |  |  |  |                 |  \--------|-- d1d3      	bne.n	10003dd6 <Cy_SysClk_DeepSleepCallback+0x31e>
10003e2e:	|  |  |  |  |                 |           |   bf00      	nop
10003e30:	|  |  |  |  |                 \-----------|-> 2300      	movs	r3, #0
10003e32:	|  |  |  |  |                             |   6806      	ldr	r6, [r0, #0]
10003e34:	|  |  |  |  |                             |   f896 403f 	ldrb.w	r4, [r6, #63]	; 0x3f
10003e38:	|  |  |  |  |                             |   42a2      	cmp	r2, r4
10003e3a:	|  |  |  |  |                             \-- d3ea      	bcc.n	10003e12 <Cy_SysClk_DeepSleepCallback+0x35a>
10003e3c:	|  +--|--|--|-------------------------------- e007      	b.n	10003e4e <Cy_SysClk_DeepSleepCallback+0x396>
10003e3e:	|  |  |  |  |                                 bf00      	nop
10003e40:	|  +--|--\--|-------------------------------X b129      	cbz	r1, 10003e4e <Cy_SysClk_DeepSleepCallback+0x396>
10003e42:	|  |  |     \-------------------------------> 6d81      	ldr	r1, [r0, #88]	; 0x58
10003e44:	|  |  |                                       f041 5140 	orr.w	r1, r1, #805306368	; 0x30000000
10003e48:	|  |  |                                       6581      	str	r1, [r0, #88]	; 0x58
10003e4a:	|  |  \-------------------------------------> f04f 0e00 	mov.w	lr, #0
10003e4e:	|  \----------------------------------------> 2000      	movs	r0, #0
10003e50:	|                                             f88c 0001 	strb.w	r0, [ip, #1]
10003e54:	|                                             4670      	mov	r0, lr
10003e56:	\-------------------------------------------> e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	...

10003e5c <Cy_SysClk_FllDisable>:
10003e5c:	f240 5180 	movw	r1, #1408	; 0x580
10003e60:	f2c4 0126 	movt	r1, #16422	; 0x4026
10003e64:	6888      	ldr	r0, [r1, #8]
10003e66:	2202      	movs	r2, #2
10003e68:	f362 701d 	bfi	r0, r2, #28, #2
10003e6c:	6088      	str	r0, [r1, #8]
10003e6e:	6808      	ldr	r0, [r1, #0]
10003e70:	f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
10003e74:	6008      	str	r0, [r1, #0]
10003e76:	68c8      	ldr	r0, [r1, #12]
10003e78:	f020 4200 	bic.w	r2, r0, #2147483648	; 0x80000000
10003e7c:	2000      	movs	r0, #0
10003e7e:	60ca      	str	r2, [r1, #12]
10003e80:	4770      	bx	lr
	...

10003e84 <Cy_SysClk_FllEnable>:
10003e84:	          b570      	push	{r4, r5, r6, lr}
10003e86:	          f240 5588 	movw	r5, #1416	; 0x588
10003e8a:	          f2c4 0526 	movt	r5, #16422	; 0x4026
10003e8e:	          6869      	ldr	r1, [r5, #4]
10003e90:	          4604      	mov	r4, r0
10003e92:	          f041 4000 	orr.w	r0, r1, #2147483648	; 0x80000000
10003e96:	          6068      	str	r0, [r5, #4]
10003e98:	          68a8      	ldr	r0, [r5, #8]
10003e9a:	          2c00      	cmp	r4, #0
10003e9c:	          4621      	mov	r1, r4
10003e9e:	          bf18      	it	ne
10003ea0:	          2101      	movne	r1, #1
10003ea2:	/-------- d015      	beq.n	10003ed0 <Cy_SysClk_FllEnable+0x4c>
10003ea4:	|         f010 0004 	ands.w	r0, r0, #4
10003ea8:	|         4620      	mov	r0, r4
10003eaa:	|  /----- d112      	bne.n	10003ed2 <Cy_SysClk_FllEnable+0x4e>
10003eac:	|  |      4620      	mov	r0, r4
10003eae:	|  |      bf00      	nop
10003eb0:	|  |  /-> 4606      	mov	r6, r0
10003eb2:	|  |  |   2001      	movs	r0, #1
10003eb4:	|  |  |   f000 fc54 	bl	10004760 <Cy_SysLib_DelayUs>
10003eb8:	|  |  |   68aa      	ldr	r2, [r5, #8]
10003eba:	|  |  |   1e71      	subs	r1, r6, #1
10003ebc:	|  |  |   bf18      	it	ne
10003ebe:	|  |  |   2101      	movne	r1, #1
10003ec0:	|  |  |   2e01      	cmp	r6, #1
10003ec2:	|  |  |   f1a6 0001 	sub.w	r0, r6, #1
10003ec6:	|  +--|-- d004      	beq.n	10003ed2 <Cy_SysClk_FllEnable+0x4e>
10003ec8:	|  |  |   f012 0204 	ands.w	r2, r2, #4
10003ecc:	|  |  \-- d0f0      	beq.n	10003eb0 <Cy_SysClk_FllEnable+0x2c>
10003ece:	|  +----- e000      	b.n	10003ed2 <Cy_SysClk_FllEnable+0x4e>
10003ed0:	\--|----> 4620      	mov	r0, r4
10003ed2:	   \----> 682a      	ldr	r2, [r5, #0]
10003ed4:	          2302      	movs	r3, #2
10003ed6:	          f363 721d 	bfi	r2, r3, #28, #2
10003eda:	          602a      	str	r2, [r5, #0]
10003edc:	      /-- b104      	cbz	r4, 10003ee0 <Cy_SysClk_FllEnable+0x5c>
10003ede:	   /--|-- b129      	cbz	r1, 10003eec <Cy_SysClk_FllEnable+0x68>
10003ee0:	   |  \-> f855 1c08 	ldr.w	r1, [r5, #-8]
10003ee4:	   |      f041 4100 	orr.w	r1, r1, #2147483648	; 0x80000000
10003ee8:	   |      f845 1c08 	str.w	r1, [r5, #-8]
10003eec:	   \----> 68aa      	ldr	r2, [r5, #8]
10003eee:	          2800      	cmp	r0, #0
10003ef0:	          4601      	mov	r1, r0
10003ef2:	          bf18      	it	ne
10003ef4:	          2101      	movne	r1, #1
10003ef6:	   /----- d010      	beq.n	10003f1a <Cy_SysClk_FllEnable+0x96>
10003ef8:	   |      f012 0201 	ands.w	r2, r2, #1
10003efc:	   +----- d10d      	bne.n	10003f1a <Cy_SysClk_FllEnable+0x96>
10003efe:	   |      4246      	negs	r6, r0
10003f00:	   |  /-> 2001      	movs	r0, #1
10003f02:	   |  |   f000 fc2d 	bl	10004760 <Cy_SysLib_DelayUs>
10003f06:	   |  |   68a8      	ldr	r0, [r5, #8]
10003f08:	   |  |   f1b6 31ff 	subs.w	r1, r6, #4294967295
10003f0c:	   |  |   bf18      	it	ne
10003f0e:	   |  |   2101      	movne	r1, #1
10003f10:	   |  |   3601      	adds	r6, #1
10003f12:	   +--|-- d002      	beq.n	10003f1a <Cy_SysClk_FllEnable+0x96>
10003f14:	   |  |   f010 0001 	ands.w	r0, r0, #1
10003f18:	   |  \-- d0f2      	beq.n	10003f00 <Cy_SysClk_FllEnable+0x7c>
10003f1a:	   \----> 6828      	ldr	r0, [r5, #0]
10003f1c:	      /-- b194      	cbz	r4, 10003f44 <Cy_SysClk_FllEnable+0xc0>
10003f1e:	      +-- b989      	cbnz	r1, 10003f44 <Cy_SysClk_FllEnable+0xc0>
10003f20:	      |   2102      	movs	r1, #2
10003f22:	      |   f361 701d 	bfi	r0, r1, #28, #2
10003f26:	      |   6028      	str	r0, [r5, #0]
10003f28:	      |   f855 0c08 	ldr.w	r0, [r5, #-8]
10003f2c:	      |   f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
10003f30:	      |   f845 0c08 	str.w	r0, [r5, #-8]
10003f34:	      |   6868      	ldr	r0, [r5, #4]
10003f36:	      |   f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
10003f3a:	      |   6068      	str	r0, [r5, #4]
10003f3c:	      |   2002      	movs	r0, #2
10003f3e:	      |   f2c0 004a 	movt	r0, #74	; 0x4a
10003f42:	      |   bd70      	pop	{r4, r5, r6, pc}
10003f44:	      \-> f040 5040 	orr.w	r0, r0, #805306368	; 0x30000000
10003f48:	          6028      	str	r0, [r5, #0]
10003f4a:	          2000      	movs	r0, #0
10003f4c:	          bd70      	pop	{r4, r5, r6, pc}
	...

10003f50 <Cy_SysClk_FllGetFrequency>:
10003f50:	                         b510      	push	{r4, lr}
10003f52:	                         f240 5230 	movw	r2, #1328	; 0x530
10003f56:	                         f2c4 0226 	movt	r2, #16422	; 0x4026
10003f5a:	                         f8d2 c050 	ldr.w	ip, [r2, #80]	; 0x50
10003f5e:	                         6d54      	ldr	r4, [r2, #84]	; 0x54
10003f60:	                         6d91      	ldr	r1, [r2, #88]	; 0x58
10003f62:	                         f36f 345f 	bfc	r4, #13, #19
10003f66:	                         6dd0      	ldr	r0, [r2, #92]	; 0x5c
10003f68:	                         6d13      	ldr	r3, [r2, #80]	; 0x50
10003f6a:	                         2c00      	cmp	r4, #0
10003f6c:	                         f04f 0000 	mov.w	r0, #0
10003f70:	/----------------------- f000 807f 	beq.w	10004072 <Cy_SysClk_FllGetFrequency+0x122>
10003f74:	|                        f001 5140 	and.w	r1, r1, #805306368	; 0x30000000
10003f78:	|                        f1b1 5f00 	cmp.w	r1, #536870912	; 0x20000000
10003f7c:	+----------------------- d079      	beq.n	10004072 <Cy_SysClk_FllGetFrequency+0x122>
10003f7e:	|                        f1b3 3fff 	cmp.w	r3, #4294967295
10003f82:	|                        bfc8      	it	gt
10003f84:	|                        bd10      	popgt	{r4, pc}
10003f86:	|                        f242 70b8 	movw	r0, #10168	; 0x27b8
10003f8a:	|                        f6c0 0000 	movt	r0, #2048	; 0x800
10003f8e:	|                        6801      	ldr	r1, [r0, #0]
10003f90:	|                        f891 103e 	ldrb.w	r1, [r1, #62]	; 0x3e
10003f94:	|                    /-- b929      	cbnz	r1, 10003fa2 <Cy_SysClk_FllGetFrequency+0x52>
10003f96:	|                    |   be01      	bkpt	0x0001
10003f98:	|                    |   6800      	ldr	r0, [r0, #0]
10003f9a:	|                    |   f890 003e 	ldrb.w	r0, [r0, #62]	; 0x3e
10003f9e:	|                    +-- b900      	cbnz	r0, 10003fa2 <Cy_SysClk_FllGetFrequency+0x52>
10003fa0:	|                    |   be01      	bkpt	0x0001
10003fa2:	|                    \-> f64f 6010 	movw	r0, #65040	; 0xfe10
10003fa6:	|                        f6cf 70ff 	movt	r0, #65535	; 0xffff
10003faa:	|                        5810      	ldr	r0, [r2, r0]
10003fac:	|                        f000 0307 	and.w	r3, r0, #7
10003fb0:	|                        2b04      	cmp	r3, #4
10003fb2:	|                    /-- d107      	bne.n	10003fc4 <Cy_SysClk_FllGetFrequency+0x74>
10003fb4:	|                    |   f64f 50d0 	movw	r0, #64976	; 0xfdd0
10003fb8:	|                    |   f6cf 70ff 	movt	r0, #65535	; 0xffff
10003fbc:	|                    |   5813      	ldr	r3, [r2, r0]
10003fbe:	|                    |   2008      	movs	r0, #8
10003fc0:	|                    |   f360 135f 	bfi	r3, r0, #5, #27
10003fc4:	|                    \-> f00c 7080 	and.w	r0, ip, #16777216	; 0x1000000
10003fc8:	|                        f36f 4c9f 	bfc	ip, #18, #14
10003fcc:	|                        f5b3 7f88 	cmp.w	r3, #272	; 0x110
10003fd0:	|                        f04f 0e00 	mov.w	lr, #0
10003fd4:	|                    /-- da10      	bge.n	10003ff8 <Cy_SysClk_FllGetFrequency+0xa8>
10003fd6:	|              /-----|-- b1db      	cbz	r3, 10004010 <Cy_SysClk_FllGetFrequency+0xc0>
10003fd8:	|              |     |   2b01      	cmp	r3, #1
10003fda:	|        /-----|-----|-- d027      	beq.n	1000402c <Cy_SysClk_FllGetFrequency+0xdc>
10003fdc:	|        |     |     |   2b02      	cmp	r3, #2
10003fde:	|  /-----|-----|-----|-- d13a      	bne.n	10004056 <Cy_SysClk_FllGetFrequency+0x106>
10003fe0:	|  |     |     |     |   6811      	ldr	r1, [r2, #0]
10003fe2:	|  |     |     |     |   f001 0103 	and.w	r1, r1, #3
10003fe6:	|  |     |     |     |   2903      	cmp	r1, #3
10003fe8:	|  |  /--|-----|-----|-- d132      	bne.n	10004050 <Cy_SysClk_FllGetFrequency+0x100>
10003fea:	|  |  |  |     |     |   f242 51b0 	movw	r1, #9648	; 0x25b0
10003fee:	|  |  |  |     |     |   f6c0 0100 	movt	r1, #2048	; 0x800
10003ff2:	|  |  |  |     |     |   f8d1 e00c 	ldr.w	lr, [r1, #12]
10003ff6:	|  +--|--|-----|-----|-- e02e      	b.n	10004056 <Cy_SysClk_FllGetFrequency+0x106>
10003ff8:	|  |  |  |     |  /--\-X d010      	beq.n	1000401c <Cy_SysClk_FllGetFrequency+0xcc>
10003ffa:	|  |  |  |     |  |      f240 1111 	movw	r1, #273	; 0x111
10003ffe:	|  |  |  |     |  |      428b      	cmp	r3, r1
10004000:	|  |  |  |  /--|--|----- d01c      	beq.n	1000403c <Cy_SysClk_FllGetFrequency+0xec>
10004002:	|  |  |  |  |  |  |      f240 1113 	movw	r1, #275	; 0x113
10004006:	|  |  |  |  |  |  |      428b      	cmp	r3, r1
10004008:	|  +--|--|--|--|--|----- d125      	bne.n	10004056 <Cy_SysClk_FllGetFrequency+0x106>
1000400a:	|  |  |  |  |  |  |      68d1      	ldr	r1, [r2, #12]
1000400c:	|  |  |  |  |  |  |  /-- e008      	b.n	10004020 <Cy_SysClk_FllGetFrequency+0xd0>
1000400e:	|  |  |  |  |  |  |  |   bf00      	nop
10004010:	|  |  |  |  |  \--|--|-> f241 2e00 	movw	lr, #4608	; 0x1200
10004014:	|  |  |  |  |     |  |   f2c0 0e7a 	movt	lr, #122	; 0x7a
10004018:	|  +--|--|--|-----|--|-- e01d      	b.n	10004056 <Cy_SysClk_FllGetFrequency+0x106>
1000401a:	|  |  |  |  |     |  |   bf00      	nop
1000401c:	|  |  |  |  |     \--|-> f852 1c24 	ldr.w	r1, [r2, #-36]
10004020:	|  |  |  |  |        \-> f44f 4200 	mov.w	r2, #32768	; 0x8000
10004024:	|  |  |  |  |            ea02 4e11 	and.w	lr, r2, r1, lsr #16
10004028:	|  +--|--|--|----------- e015      	b.n	10004056 <Cy_SysClk_FllGetFrequency+0x106>
1000402a:	|  |  |  |  |            bf00      	nop
1000402c:	|  |  |  \--|----------> f242 51b0 	movw	r1, #9648	; 0x25b0
10004030:	|  |  |     |            f6c0 0100 	movt	r1, #2048	; 0x800
10004034:	|  |  |     |            f8d1 e008 	ldr.w	lr, [r1, #8]
10004038:	|  +--|-----|----------- e00d      	b.n	10004056 <Cy_SysClk_FllGetFrequency+0x106>
1000403a:	|  |  |     |            bf00      	nop
1000403c:	|  |  |     \----------> 2110      	movs	r1, #16
1000403e:	|  |  |                  f2c4 0127 	movt	r1, #16423	; 0x4027
10004042:	|  |  |                  6809      	ldr	r1, [r1, #0]
10004044:	|  |  |                  f44f 4200 	mov.w	r2, #32768	; 0x8000
10004048:	|  |  |                  ea02 3e41 	and.w	lr, r2, r1, lsl #13
1000404c:	|  +--|----------------- e003      	b.n	10004056 <Cy_SysClk_FllGetFrequency+0x106>
1000404e:	|  |  |                  bf00      	nop
10004050:	|  |  \----------------> 6811      	ldr	r1, [r2, #0]
10004052:	|  |                     f04f 0e00 	mov.w	lr, #0
10004056:	|  \-------------------> 2102      	movs	r1, #2
10004058:	|                        2800      	cmp	r0, #0
1000405a:	|                        bf08      	it	eq
1000405c:	|                        2101      	moveq	r1, #1
1000405e:	|                        fba1 2304 	umull	r2, r3, r1, r4
10004062:	|                        ea5f 0153 	movs.w	r1, r3, lsr #1
10004066:	|                        ea4f 0032 	mov.w	r0, r2, rrx
1000406a:	|                        fbee 010c 	umlal	r0, r1, lr, ip
1000406e:	|                        f7fe fa03 	bl	10002478 <_ll_udiv>
10004072:	\----------------------> bd10      	pop	{r4, pc}

10004074 <Cy_SysClk_FllManualConfigure>:
10004074:	                  /-- b900      	cbnz	r0, 10004078 <Cy_SysClk_FllManualConfigure+0x4>
10004076:	                  |   be01      	bkpt	0x0001
10004078:	                  \-> b510      	push	{r4, lr}
1000407a:	                      f240 5c8c 	movw	ip, #1420	; 0x58c
1000407e:	                      f2c4 0c26 	movt	ip, #16422	; 0x4026
10004082:	                      f85c 2c0c 	ldr.w	r2, [ip, #-12]
10004086:	                      2a00      	cmp	r2, #0
10004088:	/-------------------- d462      	bmi.n	10004150 <Cy_SysClk_FllManualConfigure+0xdc>
1000408a:	|                     6802      	ldr	r2, [r0, #0]
1000408c:	|                     f5b2 2f80 	cmp.w	r2, #262144	; 0x40000
10004090:	|                 /-- d301      	bcc.n	10004096 <Cy_SysClk_FllManualConfigure+0x22>
10004092:	|                 |   be01      	bkpt	0x0001
10004094:	|                 |   6802      	ldr	r2, [r0, #0]
10004096:	|                 \-> 79c3      	ldrb	r3, [r0, #7]
10004098:	|                     f36f 429f 	bfc	r2, #18, #14
1000409c:	|                     2b00      	cmp	r3, #0
1000409e:	|                     bf18      	it	ne
100040a0:	|                     f102 7280 	addne.w	r2, r2, #16777216	; 0x1000000
100040a4:	|                     f84c 2c0c 	str.w	r2, [ip, #-12]
100040a8:	|                     8882      	ldrh	r2, [r0, #4]
100040aa:	|                     f5b2 5f00 	cmp.w	r2, #8192	; 0x2000
100040ae:	|                 /-- d300      	bcc.n	100040b2 <Cy_SysClk_FllManualConfigure+0x3e>
100040b0:	|                 |   be01      	bkpt	0x0001
100040b2:	|                 \-> 8902      	ldrh	r2, [r0, #8]
100040b4:	|                     f5b2 7f00 	cmp.w	r2, #512	; 0x200
100040b8:	|                 /-- d301      	bcc.n	100040be <Cy_SysClk_FllManualConfigure+0x4a>
100040ba:	|                 |   be01      	bkpt	0x0001
100040bc:	|                 |   8902      	ldrh	r2, [r0, #8]
100040be:	|                 \-> 8883      	ldrh	r3, [r0, #4]
100040c0:	|                     f36f 335f 	bfc	r3, #13, #19
100040c4:	|                     f362 4318 	bfi	r3, r2, #16, #9
100040c8:	|                     f84c 3c08 	str.w	r3, [ip, #-8]
100040cc:	|                     7a82      	ldrb	r2, [r0, #10]
100040ce:	|                     2a10      	cmp	r2, #16
100040d0:	|           /-------- d242      	bcs.n	10004158 <Cy_SysClk_FllManualConfigure+0xe4>
100040d2:	|           |         7ac2      	ldrb	r2, [r0, #11]
100040d4:	|           |         2a10      	cmp	r2, #16
100040d6:	|     /-----|-------- d243      	bcs.n	10004160 <Cy_SysClk_FllManualConfigure+0xec>
100040d8:	|     |     |  /----> 8982      	ldrh	r2, [r0, #12]
100040da:	|     |     |  |      f5b2 5f00 	cmp.w	r2, #8192	; 0x2000
100040de:	|  /--|-----|--|----- d301      	bcc.n	100040e4 <Cy_SysClk_FllManualConfigure+0x70>
100040e0:	|  |  |  /--|--|----> be01      	bkpt	0x0001
100040e2:	|  |  |  |  |  |      8982      	ldrh	r2, [r0, #12]
100040e4:	|  >--|--|--|--|----> 7a81      	ldrb	r1, [r0, #10]
100040e6:	|  |  |  |  |  |      7ac3      	ldrb	r3, [r0, #11]
100040e8:	|  |  |  |  |  |      f001 010f 	and.w	r1, r1, #15
100040ec:	|  |  |  |  |  |      f363 1107 	bfi	r1, r3, #4, #4
100040f0:	|  |  |  |  |  |      f64f 7300 	movw	r3, #65280	; 0xff00
100040f4:	|  |  |  |  |  |      7b84      	ldrb	r4, [r0, #14]
100040f6:	|  |  |  |  |  |      f2c0 031f 	movt	r3, #31
100040fa:	|  |  |  |  |  |      f890 e006 	ldrb.w	lr, [r0, #6]
100040fe:	|  |  |  |  |  |      ea03 2202 	and.w	r2, r3, r2, lsl #8
10004102:	|  |  |  |  |  |      4411      	add	r1, r2
10004104:	|  |  |  |  |  |      f004 0203 	and.w	r2, r4, #3
10004108:	|  |  |  |  |  |      ea41 7102 	orr.w	r1, r1, r2, lsl #28
1000410c:	|  |  |  |  |  |      f1be 0f05 	cmp.w	lr, #5
10004110:	|  |  |  |  |  |      f84c 1c04 	str.w	r1, [ip, #-4]
10004114:	|  |  |  |  |  |  /-- d300      	bcc.n	10004118 <Cy_SysClk_FllManualConfigure+0xa4>
10004116:	|  |  |  |  |  |  |   be01      	bkpt	0x0001
10004118:	|  |  |  |  |  |  \-> 8a02      	ldrh	r2, [r0, #16]
1000411a:	|  |  |  |  |  |      2300      	movs	r3, #0
1000411c:	|  |  |  |  |  |      f5b2 7f00 	cmp.w	r2, #512	; 0x200
10004120:	|  |  |  |  |  |      f2c0 13ff 	movt	r3, #511	; 0x1ff
10004124:	|  |  |  |  |  |  /-- d301      	bcc.n	1000412a <Cy_SysClk_FllManualConfigure+0xb6>
10004126:	|  |  |  |  |  |  |   be01      	bkpt	0x0001
10004128:	|  |  |  |  |  |  |   8a02      	ldrh	r2, [r0, #16]
1000412a:	|  |  |  |  |  |  \-> f8dc 1000 	ldr.w	r1, [ip]
1000412e:	|  |  |  |  |  |      7980      	ldrb	r0, [r0, #6]
10004130:	|  |  |  |  |  |      f360 210a 	bfi	r1, r0, #8, #3
10004134:	|  |  |  |  |  |      f8cc 1000 	str.w	r1, [ip]
10004138:	|  |  |  |  |  |      f8dc 0000 	ldr.w	r0, [ip]
1000413c:	|  |  |  |  |  |      ea03 4102 	and.w	r1, r3, r2, lsl #16
10004140:	|  |  |  |  |  |      f36f 4018 	bfc	r0, #16, #9
10004144:	|  |  |  |  |  |      4408      	add	r0, r1
10004146:	|  |  |  |  |  |      f8cc 0000 	str.w	r0, [ip]
1000414a:	|  |  |  |  |  |      2000      	movs	r0, #0
1000414c:	|  |  |  |  |  |      bd10      	pop	{r4, pc}
1000414e:	|  |  |  |  |  |      bf00      	nop
10004150:	\--|--|--|--|--|----> 2003      	movs	r0, #3
10004152:	   |  |  |  |  |      f2c0 004a 	movt	r0, #74	; 0x4a
10004156:	   |  |  |  |  |      bd10      	pop	{r4, pc}
10004158:	   |  |  |  \--|----> be01      	bkpt	0x0001
1000415a:	   |  |  |     |      7ac2      	ldrb	r2, [r0, #11]
1000415c:	   |  |  |     |      2a10      	cmp	r2, #16
1000415e:	   |  |  |     \----- d3bb      	bcc.n	100040d8 <Cy_SysClk_FllManualConfigure+0x64>
10004160:	   |  \--|----------> be01      	bkpt	0x0001
10004162:	   |     |            8982      	ldrh	r2, [r0, #12]
10004164:	   |     |            f5b2 5f00 	cmp.w	r2, #8192	; 0x2000
10004168:	   |     \----------- d2ba      	bcs.n	100040e0 <Cy_SysClk_FllManualConfigure+0x6c>
1000416a:	   \----------------- e7bb      	b.n	100040e4 <Cy_SysClk_FllManualConfigure+0x70>

1000416c <Cy_SysClk_IloDisable>:
1000416c:	f240 500c 	movw	r0, #1292	; 0x50c
10004170:	f64f 4174 	movw	r1, #64628	; 0xfc74
10004174:	f2c4 0026 	movt	r0, #16422	; 0x4026
10004178:	f6cf 71ff 	movt	r1, #65535	; 0xffff
1000417c:	5841      	ldr	r1, [r0, r1]
1000417e:	07c9      	lsls	r1, r1, #31
10004180:	bf1e      	ittt	ne
10004182:	2003      	movne	r0, #3
10004184:	f2c0 004a 	movtne	r0, #74	; 0x4a
10004188:	4770      	bxne	lr
1000418a:	6801      	ldr	r1, [r0, #0]
1000418c:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
10004190:	6001      	str	r1, [r0, #0]
10004192:	2000      	movs	r0, #0
10004194:	4770      	bx	lr
	...

10004198 <Cy_SysClk_IloEnable>:
10004198:	f240 500c 	movw	r0, #1292	; 0x50c
1000419c:	f2c4 0026 	movt	r0, #16422	; 0x4026
100041a0:	6801      	ldr	r1, [r0, #0]
100041a2:	f041 4100 	orr.w	r1, r1, #2147483648	; 0x80000000
100041a6:	6001      	str	r1, [r0, #0]
100041a8:	4770      	bx	lr
	...

100041ac <Cy_SysClk_IloHibernateOn>:
100041ac:	f240 510c 	movw	r1, #1292	; 0x50c
100041b0:	f2c4 0126 	movt	r1, #16422	; 0x4026
100041b4:	680a      	ldr	r2, [r1, #0]
100041b6:	f022 0201 	bic.w	r2, r2, #1
100041ba:	4410      	add	r0, r2
100041bc:	6008      	str	r0, [r1, #0]
100041be:	4770      	bx	lr

100041c0 <Cy_SysClk_PeriphAssignDivider>:
100041c0:	          b580      	push	{r7, lr}
100041c2:	          4684      	mov	ip, r0
100041c4:	          2001      	movs	r0, #1
100041c6:	          2903      	cmp	r1, #3
100041c8:	          f2c0 004a 	movt	r0, #74	; 0x4a
100041cc:	/-------- d819      	bhi.n	10004202 <Cy_SysClk_PeriphAssignDivider+0x42>
100041ce:	|         f242 73b8 	movw	r3, #10168	; 0x27b8
100041d2:	|         f6c0 0300 	movt	r3, #2048	; 0x800
100041d6:	|         f8d3 e000 	ldr.w	lr, [r3]
100041da:	|         f89e 3042 	ldrb.w	r3, [lr, #66]	; 0x42
100041de:	|         4563      	cmp	r3, ip
100041e0:	|         bf98      	it	ls
100041e2:	|         bd80      	popls	{r7, pc}
100041e4:	|     /-- b909      	cbnz	r1, 100041ea <Cy_SysClk_PeriphAssignDivider+0x2a>
100041e6:	|     |   2a08      	cmp	r2, #8
100041e8:	|  /--|-- d30c      	bcc.n	10004204 <Cy_SysClk_PeriphAssignDivider+0x44>
100041ea:	|  |  \-> 2901      	cmp	r1, #1
100041ec:	|  |  /-- d101      	bne.n	100041f2 <Cy_SysClk_PeriphAssignDivider+0x32>
100041ee:	|  |  |   2a10      	cmp	r2, #16
100041f0:	|  +--|-- d308      	bcc.n	10004204 <Cy_SysClk_PeriphAssignDivider+0x44>
100041f2:	|  |  \-> 2902      	cmp	r1, #2
100041f4:	|  |  /-- d101      	bne.n	100041fa <Cy_SysClk_PeriphAssignDivider+0x3a>
100041f6:	|  |  |   2a04      	cmp	r2, #4
100041f8:	|  +--|-- d304      	bcc.n	10004204 <Cy_SysClk_PeriphAssignDivider+0x44>
100041fa:	|  |  \-> 2903      	cmp	r1, #3
100041fc:	|  |      bf08      	it	eq
100041fe:	|  |      2a00      	cmpeq	r2, #0
10004200:	|  +----- d000      	beq.n	10004204 <Cy_SysClk_PeriphAssignDivider+0x44>
10004202:	\--|----> bd80      	pop	{r7, pc}
10004204:	   \----> f89e 0075 	ldrb.w	r0, [lr, #117]	; 0x75
10004208:	          f89e 3074 	ldrb.w	r3, [lr, #116]	; 0x74
1000420c:	          fa01 f000 	lsl.w	r0, r1, r0
10004210:	          ea03 0102 	and.w	r1, r3, r2
10004214:	          f8de 2008 	ldr.w	r2, [lr, #8]
10004218:	          4308      	orrs	r0, r1
1000421a:	          eb02 018c 	add.w	r1, r2, ip, lsl #2
1000421e:	          f8c1 0c00 	str.w	r0, [r1, #3072]	; 0xc00
10004222:	          2000      	movs	r0, #0
10004224:	          bd80      	pop	{r7, pc}
	...

10004228 <Cy_SysClk_PeriphDisableDivider>:
10004228:	       4602      	mov	r2, r0
1000422a:	       2803      	cmp	r0, #3
1000422c:	       f240 0001 	movw	r0, #1
10004230:	       f2c0 004a 	movt	r0, #74	; 0x4a
10004234:	       bf88      	it	hi
10004236:	       4770      	bxhi	lr
10004238:	   /-- b90a      	cbnz	r2, 1000423e <Cy_SysClk_PeriphDisableDivider+0x16>
1000423a:	   |   2908      	cmp	r1, #8
1000423c:	/--|-- d30c      	bcc.n	10004258 <Cy_SysClk_PeriphDisableDivider+0x30>
1000423e:	|  \-> 2a01      	cmp	r2, #1
10004240:	|  /-- d101      	bne.n	10004246 <Cy_SysClk_PeriphDisableDivider+0x1e>
10004242:	|  |   2910      	cmp	r1, #16
10004244:	+--|-- d308      	bcc.n	10004258 <Cy_SysClk_PeriphDisableDivider+0x30>
10004246:	|  \-> 2a02      	cmp	r2, #2
10004248:	|  /-- d101      	bne.n	1000424e <Cy_SysClk_PeriphDisableDivider+0x26>
1000424a:	|  |   2904      	cmp	r1, #4
1000424c:	+--|-- d304      	bcc.n	10004258 <Cy_SysClk_PeriphDisableDivider+0x30>
1000424e:	|  \-> 2a03      	cmp	r2, #3
10004250:	|      bf08      	it	eq
10004252:	|      2900      	cmpeq	r1, #0
10004254:	+----- d000      	beq.n	10004258 <Cy_SysClk_PeriphDisableDivider+0x30>
10004256:	|      4770      	bx	lr
10004258:	\----> f242 70b8 	movw	r0, #10168	; 0x27b8
1000425c:	       f6c0 0000 	movt	r0, #2048	; 0x800
10004260:	       6800      	ldr	r0, [r0, #0]
10004262:	       f890 c075 	ldrb.w	ip, [r0, #117]	; 0x75
10004266:	       f890 3074 	ldrb.w	r3, [r0, #116]	; 0x74
1000426a:	       fa02 f20c 	lsl.w	r2, r2, ip
1000426e:	       4019      	ands	r1, r3
10004270:	       4311      	orrs	r1, r2
10004272:	       6880      	ldr	r0, [r0, #8]
10004274:	       f041 4180 	orr.w	r1, r1, #1073741824	; 0x40000000
10004278:	       f8c0 1400 	str.w	r1, [r0, #1024]	; 0x400
1000427c:	       2000      	movs	r0, #0
1000427e:	       4770      	bx	lr

10004280 <Cy_SysClk_PeriphEnableDivider>:
10004280:	          2201      	movs	r2, #1
10004282:	          2803      	cmp	r0, #3
10004284:	          f2c0 024a 	movt	r2, #74	; 0x4a
10004288:	/-------- d80e      	bhi.n	100042a8 <Cy_SysClk_PeriphEnableDivider+0x28>
1000428a:	|     /-- b908      	cbnz	r0, 10004290 <Cy_SysClk_PeriphEnableDivider+0x10>
1000428c:	|     |   2908      	cmp	r1, #8
1000428e:	|  /--|-- d30d      	bcc.n	100042ac <Cy_SysClk_PeriphEnableDivider+0x2c>
10004290:	|  |  \-> 2801      	cmp	r0, #1
10004292:	|  |  /-- d101      	bne.n	10004298 <Cy_SysClk_PeriphEnableDivider+0x18>
10004294:	|  |  |   2910      	cmp	r1, #16
10004296:	|  +--|-- d309      	bcc.n	100042ac <Cy_SysClk_PeriphEnableDivider+0x2c>
10004298:	|  |  \-> 2802      	cmp	r0, #2
1000429a:	|  |  /-- d101      	bne.n	100042a0 <Cy_SysClk_PeriphEnableDivider+0x20>
1000429c:	|  |  |   2904      	cmp	r1, #4
1000429e:	|  +--|-- d305      	bcc.n	100042ac <Cy_SysClk_PeriphEnableDivider+0x2c>
100042a0:	|  |  \-> 2803      	cmp	r0, #3
100042a2:	|  |      bf08      	it	eq
100042a4:	|  |      2900      	cmpeq	r1, #0
100042a6:	|  +----- d001      	beq.n	100042ac <Cy_SysClk_PeriphEnableDivider+0x2c>
100042a8:	\--|----> 4610      	mov	r0, r2
100042aa:	   |      4770      	bx	lr
100042ac:	   \----> b510      	push	{r4, lr}
100042ae:	          f242 72b8 	movw	r2, #10168	; 0x27b8
100042b2:	          f6c0 0200 	movt	r2, #2048	; 0x800
100042b6:	          6812      	ldr	r2, [r2, #0]
100042b8:	          2303      	movs	r3, #3
100042ba:	          f892 c077 	ldrb.w	ip, [r2, #119]	; 0x77
100042be:	          f892 e076 	ldrb.w	lr, [r2, #118]	; 0x76
100042c2:	          fa03 fc0c 	lsl.w	ip, r3, ip
100042c6:	          f892 3074 	ldrb.w	r3, [r2, #116]	; 0x74
100042ca:	          f892 4075 	ldrb.w	r4, [r2, #117]	; 0x75
100042ce:	          4019      	ands	r1, r3
100042d0:	          fa03 fe0e 	lsl.w	lr, r3, lr
100042d4:	          ea41 010c 	orr.w	r1, r1, ip
100042d8:	          40a0      	lsls	r0, r4
100042da:	          ea41 010e 	orr.w	r1, r1, lr
100042de:	          4308      	orrs	r0, r1
100042e0:	          6891      	ldr	r1, [r2, #8]
100042e2:	          f040 4000 	orr.w	r0, r0, #2147483648	; 0x80000000
100042e6:	          f8c1 0400 	str.w	r0, [r1, #1024]	; 0x400
100042ea:	          f8d1 0400 	ldr.w	r0, [r1, #1024]	; 0x400
100042ee:	          2200      	movs	r2, #0
100042f0:	          e8bd 4010 	ldmia.w	sp!, {r4, lr}
100042f4:	          4610      	mov	r0, r2
100042f6:	          4770      	bx	lr

100042f8 <Cy_SysClk_PeriphSetDivider>:
100042f8:	          4603      	mov	r3, r0
100042fa:	          2801      	cmp	r0, #1
100042fc:	          f240 0001 	movw	r0, #1
10004300:	          f2c0 004a 	movt	r0, #74	; 0x4a
10004304:	      /-- d006      	beq.n	10004314 <Cy_SysClk_PeriphSetDivider+0x1c>
10004306:	   /--|-- b91b      	cbnz	r3, 10004310 <Cy_SysClk_PeriphSetDivider+0x18>
10004308:	   |  |   2907      	cmp	r1, #7
1000430a:	   |  |   bf98      	it	ls
1000430c:	   |  |   2aff      	cmpls	r2, #255	; 0xff
1000430e:	/--|--|-- d919      	bls.n	10004344 <Cy_SysClk_PeriphSetDivider+0x4c>
10004310:	|  >--|-> 4770      	bx	lr
10004312:	|  |  |   bf00      	nop
10004314:	|  |  \-> 290f      	cmp	r1, #15
10004316:	|  \----- d8fb      	bhi.n	10004310 <Cy_SysClk_PeriphSetDivider+0x18>
10004318:	|         2300      	movs	r3, #0
1000431a:	|         ebb3 4f12 	cmp.w	r3, r2, lsr #16
1000431e:	|         bf18      	it	ne
10004320:	|         4770      	bxne	lr
10004322:	|         f242 70b8 	movw	r0, #10168	; 0x27b8
10004326:	|         f6c0 0000 	movt	r0, #2048	; 0x800
1000432a:	|         6800      	ldr	r0, [r0, #0]
1000432c:	|         6883      	ldr	r3, [r0, #8]
1000432e:	|         f8b0 007a 	ldrh.w	r0, [r0, #122]	; 0x7a
10004332:	|         4418      	add	r0, r3
10004334:	|         f850 3021 	ldr.w	r3, [r0, r1, lsl #2]
10004338:	|         f362 2317 	bfi	r3, r2, #8, #16
1000433c:	|         f840 3021 	str.w	r3, [r0, r1, lsl #2]
10004340:	|         2000      	movs	r0, #0
10004342:	|         4770      	bx	lr
10004344:	\-------> f242 70b8 	movw	r0, #10168	; 0x27b8
10004348:	          f6c0 0000 	movt	r0, #2048	; 0x800
1000434c:	          6800      	ldr	r0, [r0, #0]
1000434e:	          6883      	ldr	r3, [r0, #8]
10004350:	          f8b0 0078 	ldrh.w	r0, [r0, #120]	; 0x78
10004354:	          4418      	add	r0, r3
10004356:	          f850 3021 	ldr.w	r3, [r0, r1, lsl #2]
1000435a:	          f362 230f 	bfi	r3, r2, #8, #8
1000435e:	          f840 3021 	str.w	r3, [r0, r1, lsl #2]
10004362:	          2000      	movs	r0, #0
10004364:	          4770      	bx	lr
	...

10004368 <Cy_SysClk_PllDisable>:
10004368:	    b5b0      	push	{r4, r5, r7, lr}
1000436a:	    f242 71b8 	movw	r1, #10168	; 0x27b8
1000436e:	    f6c0 0100 	movt	r1, #2048	; 0x800
10004372:	    6809      	ldr	r1, [r1, #0]
10004374:	    1e44      	subs	r4, r0, #1
10004376:	    f891 103f 	ldrb.w	r1, [r1, #63]	; 0x3f
1000437a:	    428c      	cmp	r4, r1
1000437c:	/-- d216      	bcs.n	100043ac <Cy_SysClk_PllDisable+0x44>
1000437e:	|   f240 6500 	movw	r5, #1536	; 0x600
10004382:	|   f2c4 0526 	movt	r5, #16422	; 0x4026
10004386:	|   f855 0024 	ldr.w	r0, [r5, r4, lsl #2]
1000438a:	|   2102      	movs	r1, #2
1000438c:	|   f361 701d 	bfi	r0, r1, #28, #2
10004390:	|   f845 0024 	str.w	r0, [r5, r4, lsl #2]
10004394:	|   2001      	movs	r0, #1
10004396:	|   f000 f9e3 	bl	10004760 <Cy_SysLib_DelayUs>
1000439a:	|   f855 0024 	ldr.w	r0, [r5, r4, lsl #2]
1000439e:	|   f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
100043a2:	|   f845 0024 	str.w	r0, [r5, r4, lsl #2]
100043a6:	|   2000      	movs	r0, #0
100043a8:	|   bdb0      	pop	{r4, r5, r7, pc}
100043aa:	|   bf00      	nop
100043ac:	\-> 2001      	movs	r0, #1
100043ae:	    f2c0 004a 	movt	r0, #74	; 0x4a
100043b2:	    bdb0      	pop	{r4, r5, r7, pc}

100043b4 <Cy_SysClk_PllEnable>:
100043b4:	          e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
100043b8:	          b081      	sub	sp, #4
100043ba:	          460d      	mov	r5, r1
100043bc:	          f242 71b8 	movw	r1, #10168	; 0x27b8
100043c0:	          f6c0 0100 	movt	r1, #2048	; 0x800
100043c4:	          6809      	ldr	r1, [r1, #0]
100043c6:	          1e46      	subs	r6, r0, #1
100043c8:	          f891 103f 	ldrb.w	r1, [r1, #63]	; 0x3f
100043cc:	          f240 0901 	movw	r9, #1
100043d0:	          428e      	cmp	r6, r1
100043d2:	          f2c0 094a 	movt	r9, #74	; 0x4a
100043d6:	/-------- d239      	bcs.n	1000444c <Cy_SysClk_PllEnable+0x98>
100043d8:	|         f240 6800 	movw	r8, #1536	; 0x600
100043dc:	|         f2c4 0826 	movt	r8, #16422	; 0x4026
100043e0:	|         f858 0026 	ldr.w	r0, [r8, r6, lsl #2]
100043e4:	|         f108 0740 	add.w	r7, r8, #64	; 0x40
100043e8:	|         f040 4000 	orr.w	r0, r0, #2147483648	; 0x80000000
100043ec:	|         f848 0026 	str.w	r0, [r8, r6, lsl #2]
100043f0:	|         f857 1026 	ldr.w	r1, [r7, r6, lsl #2]
100043f4:	|         2d00      	cmp	r5, #0
100043f6:	|         4628      	mov	r0, r5
100043f8:	|         bf18      	it	ne
100043fa:	|         2001      	movne	r0, #1
100043fc:	|  /----- d012      	beq.n	10004424 <Cy_SysClk_PllEnable+0x70>
100043fe:	|  |      f011 0101 	ands.w	r1, r1, #1
10004402:	|  +----- d10f      	bne.n	10004424 <Cy_SysClk_PllEnable+0x70>
10004404:	|  |      426c      	negs	r4, r5
10004406:	|  |      bf00      	nop
10004408:	|  |  /-> 2001      	movs	r0, #1
1000440a:	|  |  |   f000 f9a9 	bl	10004760 <Cy_SysLib_DelayUs>
1000440e:	|  |  |   f857 1026 	ldr.w	r1, [r7, r6, lsl #2]
10004412:	|  |  |   f1b4 30ff 	subs.w	r0, r4, #4294967295
10004416:	|  |  |   bf18      	it	ne
10004418:	|  |  |   2001      	movne	r0, #1
1000441a:	|  |  |   3401      	adds	r4, #1
1000441c:	|  +--|-- d002      	beq.n	10004424 <Cy_SysClk_PllEnable+0x70>
1000441e:	|  |  |   f011 0101 	ands.w	r1, r1, #1
10004422:	|  |  \-- d0f1      	beq.n	10004408 <Cy_SysClk_PllEnable+0x54>
10004424:	|  \----> f858 1026 	ldr.w	r1, [r8, r6, lsl #2]
10004428:	|     /-- b1a5      	cbz	r5, 10004454 <Cy_SysClk_PllEnable+0xa0>
1000442a:	|     +-- b998      	cbnz	r0, 10004454 <Cy_SysClk_PllEnable+0xa0>
1000442c:	|     |   2002      	movs	r0, #2
1000442e:	|     |   f360 711d 	bfi	r1, r0, #28, #2
10004432:	|     |   2001      	movs	r0, #1
10004434:	|     |   f848 1026 	str.w	r1, [r8, r6, lsl #2]
10004438:	|     |   f000 f992 	bl	10004760 <Cy_SysLib_DelayUs>
1000443c:	|     |   f858 0026 	ldr.w	r0, [r8, r6, lsl #2]
10004440:	|     |   f109 0901 	add.w	r9, r9, #1
10004444:	|     |   f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
10004448:	|     |   f848 0026 	str.w	r0, [r8, r6, lsl #2]
1000444c:	\-----|-> 4648      	mov	r0, r9
1000444e:	      |   b001      	add	sp, #4
10004450:	      |   e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
10004454:	      \-> f001 5040 	and.w	r0, r1, #805306368	; 0x30000000
10004458:	          f1b0 5f00 	cmp.w	r0, #536870912	; 0x20000000
1000445c:	      /-- d10c      	bne.n	10004478 <Cy_SysClk_PllEnable+0xc4>
1000445e:	      |   f858 0026 	ldr.w	r0, [r8, r6, lsl #2]
10004462:	      |   f04f 0900 	mov.w	r9, #0
10004466:	      |   f040 5040 	orr.w	r0, r0, #805306368	; 0x30000000
1000446a:	      |   f848 0026 	str.w	r0, [r8, r6, lsl #2]
1000446e:	      |   4648      	mov	r0, r9
10004470:	      |   b001      	add	sp, #4
10004472:	      |   e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
10004476:	      |   bf00      	nop
10004478:	      \-> f04f 0900 	mov.w	r9, #0
1000447c:	          4648      	mov	r0, r9
1000447e:	          b001      	add	sp, #4
10004480:	          e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}

10004484 <Cy_SysClk_PllGetFrequency>:
10004484:	                      b570      	push	{r4, r5, r6, lr}
10004486:	                      2800      	cmp	r0, #0
10004488:	                      f04f 0100 	mov.w	r1, #0
1000448c:	            /-------- d03c      	beq.n	10004508 <Cy_SysClk_PllGetFrequency+0x84>
1000448e:	            |         f242 74b8 	movw	r4, #10168	; 0x27b8
10004492:	            |         f6c0 0400 	movt	r4, #2048	; 0x800
10004496:	            |         6823      	ldr	r3, [r4, #0]
10004498:	            |         f893 203f 	ldrb.w	r2, [r3, #63]	; 0x3f
1000449c:	            +-------- b3a2      	cbz	r2, 10004508 <Cy_SysClk_PllGetFrequency+0x84>
1000449e:	            |         f893 103e 	ldrb.w	r1, [r3, #62]	; 0x3e
100044a2:	            |         4281      	cmp	r1, r0
100044a4:	            |     /-- d803      	bhi.n	100044ae <Cy_SysClk_PllGetFrequency+0x2a>
100044a6:	            |     |   be01      	bkpt	0x0001
100044a8:	            |     |   6821      	ldr	r1, [r4, #0]
100044aa:	            |     |   f891 203f 	ldrb.w	r2, [r1, #63]	; 0x3f
100044ae:	            |     \-> 4282      	cmp	r2, r0
100044b0:	            |     /-- d202      	bcs.n	100044b8 <Cy_SysClk_PllGetFrequency+0x34>
100044b2:	            |     |   2100      	movs	r1, #0
100044b4:	            |     |   4608      	mov	r0, r1
100044b6:	            |     |   bd70      	pop	{r4, r5, r6, pc}
100044b8:	            |     \-> 1e41      	subs	r1, r0, #1
100044ba:	            |         f240 5e30 	movw	lr, #1328	; 0x530
100044be:	            |         4291      	cmp	r1, r2
100044c0:	            |         f2c4 0e26 	movt	lr, #16422	; 0x4026
100044c4:	            |  /----- d210      	bcs.n	100044e8 <Cy_SysClk_PllGetFrequency+0x64>
100044c6:	            |  |      eb0e 0281 	add.w	r2, lr, r1, lsl #2
100044ca:	            |  |      f8d2 50d0 	ldr.w	r5, [r2, #208]	; 0xd0
100044ce:	            |  |      f005 0c7f 	and.w	ip, r5, #127	; 0x7f
100044d2:	            |  |      f3c5 2304 	ubfx	r3, r5, #8, #5
100044d6:	            |  |      f3c5 4204 	ubfx	r2, r5, #16, #5
100044da:	            |  |      f005 5540 	and.w	r5, r5, #805306368	; 0x30000000
100044de:	            |  |      f1b5 5500 	subs.w	r5, r5, #536870912	; 0x20000000
100044e2:	            |  |      bf18      	it	ne
100044e4:	            |  |      2501      	movne	r5, #1
100044e6:	            |  |  /-- e005      	b.n	100044f4 <Cy_SysClk_PllGetFrequency+0x70>
100044e8:	            |  \--|-> 2200      	movs	r2, #0
100044ea:	            |     |   2501      	movs	r5, #1
100044ec:	            |     |   2300      	movs	r3, #0
100044ee:	            |     |   f04f 0c00 	mov.w	ip, #0
100044f2:	            |     |   be01      	bkpt	0x0001
100044f4:	            |     \-> eb0e 0181 	add.w	r1, lr, r1, lsl #2
100044f8:	            |         f8d1 60d0 	ldr.w	r6, [r1, #208]	; 0xd0
100044fc:	            |         2a00      	cmp	r2, #0
100044fe:	            |         f04f 0100 	mov.w	r1, #0
10004502:	            |         bf18      	it	ne
10004504:	            |         2b00      	cmpne	r3, #0
10004506:	            |     /-- d101      	bne.n	1000450c <Cy_SysClk_PllGetFrequency+0x88>
10004508:	            >-----|-> 4608      	mov	r0, r1
1000450a:	            |     |   bd70      	pop	{r4, r5, r6, pc}
1000450c:	            |     \-> 2d00      	cmp	r5, #0
1000450e:	            +-------- d0fb      	beq.n	10004508 <Cy_SysClk_PllGetFrequency+0x84>
10004510:	            |         f1b6 3fff 	cmp.w	r6, #4294967295
10004514:	            \-------- dcf8      	bgt.n	10004508 <Cy_SysClk_PllGetFrequency+0x84>
10004516:	                      6821      	ldr	r1, [r4, #0]
10004518:	                      f891 103e 	ldrb.w	r1, [r1, #62]	; 0x3e
1000451c:	                      4281      	cmp	r1, r0
1000451e:	                  /-- d803      	bhi.n	10004528 <Cy_SysClk_PllGetFrequency+0xa4>
10004520:	                  |   be01      	bkpt	0x0001
10004522:	                  |   6821      	ldr	r1, [r4, #0]
10004524:	                  |   f891 103e 	ldrb.w	r1, [r1, #62]	; 0x3e
10004528:	                  \-> 4281      	cmp	r1, r0
1000452a:	                  /-- d800      	bhi.n	1000452e <Cy_SysClk_PllGetFrequency+0xaa>
1000452c:	                  |   be01      	bkpt	0x0001
1000452e:	                  \-> eb0e 0180 	add.w	r1, lr, r0, lsl #2
10004532:	                      f64f 6010 	movw	r0, #65040	; 0xfe10
10004536:	                      f6cf 70ff 	movt	r0, #65535	; 0xffff
1000453a:	                      5808      	ldr	r0, [r1, r0]
1000453c:	                      f000 0007 	and.w	r0, r0, #7
10004540:	                      2804      	cmp	r0, #4
10004542:	                  /-- d107      	bne.n	10004554 <Cy_SysClk_PllGetFrequency+0xd0>
10004544:	                  |   f64f 50d0 	movw	r0, #64976	; 0xfdd0
10004548:	                  |   f6cf 70ff 	movt	r0, #65535	; 0xffff
1000454c:	                  |   5808      	ldr	r0, [r1, r0]
1000454e:	                  |   2108      	movs	r1, #8
10004550:	                  |   f361 105f 	bfi	r0, r1, #5, #27
10004554:	                  \-> f5b0 7f88 	cmp.w	r0, #272	; 0x110
10004558:	                      f04f 0400 	mov.w	r4, #0
1000455c:	                  /-- da10      	bge.n	10004580 <Cy_SysClk_PllGetFrequency+0xfc>
1000455e:	         /--------|-- b1d8      	cbz	r0, 10004598 <Cy_SysClk_PllGetFrequency+0x114>
10004560:	         |        |   2801      	cmp	r0, #1
10004562:	      /--|--------|-- d027      	beq.n	100045b4 <Cy_SysClk_PllGetFrequency+0x130>
10004564:	      |  |        |   2802      	cmp	r0, #2
10004566:	/-----|--|--------|-- d138      	bne.n	100045da <Cy_SysClk_PllGetFrequency+0x156>
10004568:	|     |  |        |   f8de 0000 	ldr.w	r0, [lr]
1000456c:	|     |  |        |   f000 0003 	and.w	r0, r0, #3
10004570:	|     |  |        |   2803      	cmp	r0, #3
10004572:	|  /--|--|--------|-- d12f      	bne.n	100045d4 <Cy_SysClk_PllGetFrequency+0x150>
10004574:	|  |  |  |        |   f242 50b0 	movw	r0, #9648	; 0x25b0
10004578:	|  |  |  |        |   f6c0 0000 	movt	r0, #2048	; 0x800
1000457c:	|  |  |  |        |   68c4      	ldr	r4, [r0, #12]
1000457e:	+--|--|--|--------|-- e02c      	b.n	100045da <Cy_SysClk_PllGetFrequency+0x156>
10004580:	|  |  |  |     /--\-X d010      	beq.n	100045a4 <Cy_SysClk_PllGetFrequency+0x120>
10004582:	|  |  |  |     |      f240 1111 	movw	r1, #273	; 0x111
10004586:	|  |  |  |     |      4288      	cmp	r0, r1
10004588:	|  |  |  |  /--|----- d01a      	beq.n	100045c0 <Cy_SysClk_PllGetFrequency+0x13c>
1000458a:	|  |  |  |  |  |      f240 1113 	movw	r1, #275	; 0x113
1000458e:	|  |  |  |  |  |      4288      	cmp	r0, r1
10004590:	+--|--|--|--|--|----- d123      	bne.n	100045da <Cy_SysClk_PllGetFrequency+0x156>
10004592:	|  |  |  |  |  |      f8de 000c 	ldr.w	r0, [lr, #12]
10004596:	|  |  |  |  |  |  /-- e007      	b.n	100045a8 <Cy_SysClk_PllGetFrequency+0x124>
10004598:	|  |  |  \--|--|--|-> f241 2400 	movw	r4, #4608	; 0x1200
1000459c:	|  |  |     |  |  |   f2c0 047a 	movt	r4, #122	; 0x7a
100045a0:	+--|--|-----|--|--|-- e01b      	b.n	100045da <Cy_SysClk_PllGetFrequency+0x156>
100045a2:	|  |  |     |  |  |   bf00      	nop
100045a4:	|  |  |     |  \--|-> f85e 0c24 	ldr.w	r0, [lr, #-36]
100045a8:	|  |  |     |     \-> f44f 4100 	mov.w	r1, #32768	; 0x8000
100045ac:	|  |  |     |         ea01 4410 	and.w	r4, r1, r0, lsr #16
100045b0:	+--|--|-----|-------- e013      	b.n	100045da <Cy_SysClk_PllGetFrequency+0x156>
100045b2:	|  |  |     |         bf00      	nop
100045b4:	|  |  \-----|-------> f242 50b0 	movw	r0, #9648	; 0x25b0
100045b8:	|  |        |         f6c0 0000 	movt	r0, #2048	; 0x800
100045bc:	|  |        |         6884      	ldr	r4, [r0, #8]
100045be:	+--|--------|-------- e00c      	b.n	100045da <Cy_SysClk_PllGetFrequency+0x156>
100045c0:	|  |        \-------> 2010      	movs	r0, #16
100045c2:	|  |                  f2c4 0027 	movt	r0, #16423	; 0x4027
100045c6:	|  |                  6800      	ldr	r0, [r0, #0]
100045c8:	|  |                  f44f 4100 	mov.w	r1, #32768	; 0x8000
100045cc:	|  |                  ea01 3440 	and.w	r4, r1, r0, lsl #13
100045d0:	+--|----------------- e003      	b.n	100045da <Cy_SysClk_PllGetFrequency+0x156>
100045d2:	|  |                  bf00      	nop
100045d4:	|  \----------------> f8de 0000 	ldr.w	r0, [lr]
100045d8:	|                     2400      	movs	r4, #0
100045da:	\-------------------> fba3 2302 	umull	r2, r3, r3, r2
100045de:	                      ea5f 0153 	movs.w	r1, r3, lsr #1
100045e2:	                      ea4f 0032 	mov.w	r0, r2, rrx
100045e6:	                      fbe4 010c 	umlal	r0, r1, r4, ip
100045ea:	                      f7fd ff45 	bl	10002478 <_ll_udiv>
100045ee:	                      4601      	mov	r1, r0
100045f0:	                      4608      	mov	r0, r1
100045f2:	                      bd70      	pop	{r4, r5, r6, pc}

100045f4 <Cy_SysClk_PllManualConfigure>:
100045f4:	          b5f0      	push	{r4, r5, r6, r7, lr}
100045f6:	          f242 72b8 	movw	r2, #10168	; 0x27b8
100045fa:	          f6c0 0200 	movt	r2, #2048	; 0x800
100045fe:	          6812      	ldr	r2, [r2, #0]
10004600:	          f892 303f 	ldrb.w	r3, [r2, #63]	; 0x3f
10004604:	          4602      	mov	r2, r0
10004606:	          4283      	cmp	r3, r0
10004608:	          f240 0001 	movw	r0, #1
1000460c:	          f2c0 004a 	movt	r0, #74	; 0x4a
10004610:	/-------- d33c      	bcc.n	1000468c <Cy_SysClk_PllManualConfigure+0x98>
10004612:	|         3a01      	subs	r2, #1
10004614:	|         429a      	cmp	r2, r3
10004616:	|     /-- d300      	bcc.n	1000461a <Cy_SysClk_PllManualConfigure+0x26>
10004618:	|     |   be01      	bkpt	0x0001
1000461a:	|     \-> f240 6c00 	movw	ip, #1536	; 0x600
1000461e:	|         f2c4 0c26 	movt	ip, #16422	; 0x4026
10004622:	|         f85c 3022 	ldr.w	r3, [ip, r2, lsl #2]
10004626:	|         2b00      	cmp	r3, #0
10004628:	|  /----- d432      	bmi.n	10004690 <Cy_SysClk_PllManualConfigure+0x9c>
1000462a:	|  |      788b      	ldrb	r3, [r1, #2]
1000462c:	|  |      1e9e      	subs	r6, r3, #2
1000462e:	|  |      2e0e      	cmp	r6, #14
10004630:	+--|----- d82c      	bhi.n	1000468c <Cy_SysClk_PllManualConfigure+0x98>
10004632:	|  |      f891 e001 	ldrb.w	lr, [r1, #1]
10004636:	|  |      f1ae 0401 	sub.w	r4, lr, #1
1000463a:	|  |      2c11      	cmp	r4, #17
1000463c:	+--|----- d826      	bhi.n	1000468c <Cy_SysClk_PllManualConfigure+0x98>
1000463e:	|  |      78cc      	ldrb	r4, [r1, #3]
10004640:	|  |      780d      	ldrb	r5, [r1, #0]
10004642:	|  |      2713      	movs	r7, #19
10004644:	|  |      2c00      	cmp	r4, #0
10004646:	|  |      f04f 0638 	mov.w	r6, #56	; 0x38
1000464a:	|  |      bf08      	it	eq
1000464c:	|  |      2716      	moveq	r7, #22
1000464e:	|  |      bf08      	it	eq
10004650:	|  |      2670      	moveq	r6, #112	; 0x70
10004652:	|  |      42af      	cmp	r7, r5
10004654:	+--|----- d81a      	bhi.n	1000468c <Cy_SysClk_PllManualConfigure+0x98>
10004656:	|  |      42ae      	cmp	r6, r5
10004658:	|  |      bf38      	it	cc
1000465a:	|  |      bdf0      	popcc	{r4, r5, r6, r7, pc}
1000465c:	|  |      7908      	ldrb	r0, [r1, #4]
1000465e:	|  |      2802      	cmp	r0, #2
10004660:	|  |  /-- d00d      	beq.n	1000467e <Cy_SysClk_PllManualConfigure+0x8a>
10004662:	|  |  |   ea4f 210e 	mov.w	r1, lr, lsl #8
10004666:	|  |  |   ea41 4103 	orr.w	r1, r1, r3, lsl #16
1000466a:	|  |  |   f641 737f 	movw	r3, #8063	; 0x1f7f
1000466e:	|  |  |   4429      	add	r1, r5
10004670:	|  |  |   f2c0 031f 	movt	r3, #31
10004674:	|  |  |   4019      	ands	r1, r3
10004676:	|  |  |   ea41 61c4 	orr.w	r1, r1, r4, lsl #27
1000467a:	|  |  |   f84c 1022 	str.w	r1, [ip, r2, lsl #2]
1000467e:	|  |  \-> f85c 1022 	ldr.w	r1, [ip, r2, lsl #2]
10004682:	|  |      f360 711d 	bfi	r1, r0, #28, #2
10004686:	|  |      2000      	movs	r0, #0
10004688:	|  |      f84c 1022 	str.w	r1, [ip, r2, lsl #2]
1000468c:	\--|----> bdf0      	pop	{r4, r5, r6, r7, pc}
1000468e:	   |      bf00      	nop
10004690:	   \----> 3002      	adds	r0, #2
10004692:	          bdf0      	pop	{r4, r5, r6, r7, pc}

10004694 <Cy_SysClk_WcoEnable>:
10004694:	       b5b0      	push	{r4, r5, r7, lr}
10004696:	       2400      	movs	r4, #0
10004698:	       f2c4 0427 	movt	r4, #16423	; 0x4027
1000469c:	       6821      	ldr	r1, [r4, #0]
1000469e:	       2800      	cmp	r0, #0
100046a0:	       f041 0108 	orr.w	r1, r1, #8
100046a4:	       6021      	str	r1, [r4, #0]
100046a6:	       6922      	ldr	r2, [r4, #16]
100046a8:	       4601      	mov	r1, r0
100046aa:	       bf18      	it	ne
100046ac:	       2101      	movne	r1, #1
100046ae:	/----- d010      	beq.n	100046d2 <Cy_SysClk_WcoEnable+0x3e>
100046b0:	|      f012 0204 	ands.w	r2, r2, #4
100046b4:	+----- d10d      	bne.n	100046d2 <Cy_SysClk_WcoEnable+0x3e>
100046b6:	|      4245      	negs	r5, r0
100046b8:	|  /-> 2001      	movs	r0, #1
100046ba:	|  |   f000 f851 	bl	10004760 <Cy_SysLib_DelayUs>
100046be:	|  |   6920      	ldr	r0, [r4, #16]
100046c0:	|  |   f1b5 31ff 	subs.w	r1, r5, #4294967295
100046c4:	|  |   bf18      	it	ne
100046c6:	|  |   2101      	movne	r1, #1
100046c8:	|  |   3501      	adds	r5, #1
100046ca:	+--|-- d002      	beq.n	100046d2 <Cy_SysClk_WcoEnable+0x3e>
100046cc:	|  |   f010 0004 	ands.w	r0, r0, #4
100046d0:	|  \-- d0f2      	beq.n	100046b8 <Cy_SysClk_WcoEnable+0x24>
100046d2:	\----> 2002      	movs	r0, #2
100046d4:	       f2c0 004a 	movt	r0, #74	; 0x4a
100046d8:	       2900      	cmp	r1, #0
100046da:	       bf18      	it	ne
100046dc:	       2000      	movne	r0, #0
100046de:	       bdb0      	pop	{r4, r5, r7, pc}

100046e0 <Cy_SysInt_Init>:
100046e0:	          b510      	push	{r4, lr}
100046e2:	/-------- b378      	cbz	r0, 10004744 <Cy_SysInt_Init+0x64>
100046e4:	|         6843      	ldr	r3, [r0, #4]
100046e6:	|         2b08      	cmp	r3, #8
100046e8:	|     /-- d301      	bcc.n	100046ee <Cy_SysInt_Init+0xe>
100046ea:	|     |   be01      	bkpt	0x0001
100046ec:	|     |   6843      	ldr	r3, [r0, #4]
100046ee:	|     \-> f9b0 2000 	ldrsh.w	r2, [r0]
100046f2:	|         f64e 5c08 	movw	ip, #60680	; 0xed08
100046f6:	|         f002 040f 	and.w	r4, r2, #15
100046fa:	|         f2ce 0c00 	movt	ip, #57344	; 0xe000
100046fe:	|         3c04      	subs	r4, #4
10004700:	|         4464      	add	r4, ip
10004702:	|         ea4f 1e43 	mov.w	lr, r3, lsl #5
10004706:	|         3410      	adds	r4, #16
10004708:	|         f102 4360 	add.w	r3, r2, #3758096384	; 0xe0000000
1000470c:	|         f1b2 3fff 	cmp.w	r2, #4294967295
10004710:	|         bfc8      	it	gt
10004712:	|         f503 4464 	addgt.w	r4, r3, #58368	; 0xe400
10004716:	|         f884 e000 	strb.w	lr, [r4]
1000471a:	|         f8dc 2000 	ldr.w	r2, [ip]
1000471e:	|         f242 0300 	movw	r3, #8192	; 0x2000
10004722:	|         f6c0 0300 	movt	r3, #2048	; 0x800
10004726:	|         429a      	cmp	r2, r3
10004728:	|     /-- d109      	bne.n	1000473e <Cy_SysInt_Init+0x5e>
1000472a:	|     |   f9b0 0000 	ldrsh.w	r0, [r0]
1000472e:	|     |   f8dc 2000 	ldr.w	r2, [ip]
10004732:	|     |   429a      	cmp	r2, r3
10004734:	|     +-- d103      	bne.n	1000473e <Cy_SysInt_Init+0x5e>
10004736:	|  /--|-- b149      	cbz	r1, 1000474c <Cy_SysInt_Init+0x6c>
10004738:	|  |  |   eb03 0080 	add.w	r0, r3, r0, lsl #2
1000473c:	|  |  |   6401      	str	r1, [r0, #64]	; 0x40
1000473e:	|  |  \-> 2000      	movs	r0, #0
10004740:	|  |      bd10      	pop	{r4, pc}
10004742:	|  |      bf00      	nop
10004744:	\--|----> 2001      	movs	r0, #1
10004746:	   |      f2c0 0056 	movt	r0, #86	; 0x56
1000474a:	   |      bd10      	pop	{r4, pc}
1000474c:	   \----> be01      	bkpt	0x0001
1000474e:	          eb03 0080 	add.w	r0, r3, r0, lsl #2
10004752:	          6401      	str	r1, [r0, #64]	; 0x40
10004754:	          2000      	movs	r0, #0
10004756:	          bd10      	pop	{r4, pc}

10004758 <Cy_SysIpcPipeIsrCm4>:
10004758:	2001      	movs	r0, #1
1000475a:	f7fe be7d 	b.w	10003458 <Cy_IPC_Pipe_ExecuteCallback>
	...

10004760 <Cy_SysLib_DelayUs>:
10004760:	f242 21f8 	movw	r1, #8952	; 0x22f8
10004764:	f6c0 0100 	movt	r1, #2048	; 0x800
10004768:	7809      	ldrb	r1, [r1, #0]
1000476a:	4348      	muls	r0, r1
1000476c:	f7fd be74 	b.w	10002458 <Cy_SysLib_DelayCycles>

10004770 <Cy_SysLib_FaultHandler>:
10004770:	    b580      	push	{r7, lr}
10004772:	    f642 0194 	movw	r1, #10388	; 0x2894
10004776:	    e890 500c 	ldmia.w	r0, {r2, r3, ip, lr}
1000477a:	    f6c0 0100 	movt	r1, #2048	; 0x800
1000477e:	    e881 500c 	stmia.w	r1, {r2, r3, ip, lr}
10004782:	    e9d0 2304 	ldrd	r2, r3, [r0, #16]
10004786:	    e9c1 2304 	strd	r2, r3, [r1, #16]
1000478a:	    e9d0 2306 	ldrd	r2, r3, [r0, #24]
1000478e:	    e9c1 2306 	strd	r2, r3, [r1, #24]
10004792:	    f64e 5224 	movw	r2, #60708	; 0xed24
10004796:	    f2ce 0200 	movt	r2, #57344	; 0xe000
1000479a:	    6853      	ldr	r3, [r2, #4]
1000479c:	    620b      	str	r3, [r1, #32]
1000479e:	    6893      	ldr	r3, [r2, #8]
100047a0:	    624b      	str	r3, [r1, #36]	; 0x24
100047a2:	    6813      	ldr	r3, [r2, #0]
100047a4:	    628b      	str	r3, [r1, #40]	; 0x28
100047a6:	    6913      	ldr	r3, [r2, #16]
100047a8:	    62cb      	str	r3, [r1, #44]	; 0x2c
100047aa:	    6952      	ldr	r2, [r2, #20]
100047ac:	    630a      	str	r2, [r1, #48]	; 0x30
100047ae:	    eef1 2a10 	vmrs	r2, fpscr
100047b2:	    f012 0f90 	tst.w	r2, #144	; 0x90
100047b6:	/-- d021      	beq.n	100047fc <Cy_SysLib_FaultHandler+0x8c>
100047b8:	|   6a02      	ldr	r2, [r0, #32]
100047ba:	|   634a      	str	r2, [r1, #52]	; 0x34
100047bc:	|   6a42      	ldr	r2, [r0, #36]	; 0x24
100047be:	|   638a      	str	r2, [r1, #56]	; 0x38
100047c0:	|   6a82      	ldr	r2, [r0, #40]	; 0x28
100047c2:	|   63ca      	str	r2, [r1, #60]	; 0x3c
100047c4:	|   6ac2      	ldr	r2, [r0, #44]	; 0x2c
100047c6:	|   640a      	str	r2, [r1, #64]	; 0x40
100047c8:	|   6b02      	ldr	r2, [r0, #48]	; 0x30
100047ca:	|   644a      	str	r2, [r1, #68]	; 0x44
100047cc:	|   6b42      	ldr	r2, [r0, #52]	; 0x34
100047ce:	|   648a      	str	r2, [r1, #72]	; 0x48
100047d0:	|   6b82      	ldr	r2, [r0, #56]	; 0x38
100047d2:	|   64ca      	str	r2, [r1, #76]	; 0x4c
100047d4:	|   6bc2      	ldr	r2, [r0, #60]	; 0x3c
100047d6:	|   650a      	str	r2, [r1, #80]	; 0x50
100047d8:	|   6c02      	ldr	r2, [r0, #64]	; 0x40
100047da:	|   654a      	str	r2, [r1, #84]	; 0x54
100047dc:	|   6c42      	ldr	r2, [r0, #68]	; 0x44
100047de:	|   658a      	str	r2, [r1, #88]	; 0x58
100047e0:	|   6c82      	ldr	r2, [r0, #72]	; 0x48
100047e2:	|   65ca      	str	r2, [r1, #92]	; 0x5c
100047e4:	|   6cc2      	ldr	r2, [r0, #76]	; 0x4c
100047e6:	|   660a      	str	r2, [r1, #96]	; 0x60
100047e8:	|   6d02      	ldr	r2, [r0, #80]	; 0x50
100047ea:	|   664a      	str	r2, [r1, #100]	; 0x64
100047ec:	|   6d42      	ldr	r2, [r0, #84]	; 0x54
100047ee:	|   668a      	str	r2, [r1, #104]	; 0x68
100047f0:	|   6d82      	ldr	r2, [r0, #88]	; 0x58
100047f2:	|   66ca      	str	r2, [r1, #108]	; 0x6c
100047f4:	|   6dc2      	ldr	r2, [r0, #92]	; 0x5c
100047f6:	|   670a      	str	r2, [r1, #112]	; 0x70
100047f8:	|   6e00      	ldr	r0, [r0, #96]	; 0x60
100047fa:	|   6748      	str	r0, [r1, #116]	; 0x74
100047fc:	\-> e8bd 4080 	ldmia.w	sp!, {r7, lr}
10004800:	    f000 b82e 	b.w	10004860 <Cy_SysLib_ProcessingFault>

10004804 <Cy_SysLib_GetDevice>:
10004804:	200c      	movs	r0, #12
10004806:	f2c1 6000 	movt	r0, #5632	; 0x1600
1000480a:	8801      	ldrh	r1, [r0, #0]
1000480c:	2900      	cmp	r1, #0
1000480e:	bf14      	ite	ne
10004810:	8800      	ldrhne	r0, [r0, #0]
10004812:	f44f 7080 	moveq.w	r0, #256	; 0x100
10004816:	4770      	bx	lr

10004818 <Cy_SysLib_GetDeviceRevision>:
10004818:	2001      	movs	r0, #1
1000481a:	f2c1 6000 	movt	r0, #5632	; 0x1600
1000481e:	7801      	ldrb	r1, [r0, #0]
10004820:	2900      	cmp	r1, #0
10004822:	bf14      	ite	ne
10004824:	7800      	ldrbne	r0, [r0, #0]
10004826:	2021      	moveq	r0, #33	; 0x21
10004828:	4770      	bx	lr
	...

1000482c <Cy_SysLib_GetResetReason>:
1000482c:	f640 0104 	movw	r1, #2052	; 0x804
10004830:	2204      	movs	r2, #4
10004832:	f2c4 0126 	movt	r1, #16422	; 0x4026
10004836:	f2c4 0226 	movt	r2, #16422	; 0x4026
1000483a:	f851 0c04 	ldr.w	r0, [r1, #-4]
1000483e:	6812      	ldr	r2, [r2, #0]
10004840:	0612      	lsls	r2, r2, #24
10004842:	680a      	ldr	r2, [r1, #0]
10004844:	bf18      	it	ne
10004846:	f440 2080 	orrne.w	r0, r0, #262144	; 0x40000
1000484a:	6809      	ldr	r1, [r1, #0]
1000484c:	0412      	lsls	r2, r2, #16
1000484e:	bf18      	it	ne
10004850:	f440 3080 	orrne.w	r0, r0, #65536	; 0x10000
10004854:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
10004858:	bf28      	it	cs
1000485a:	f440 3000 	orrcs.w	r0, r0, #131072	; 0x20000
1000485e:	4770      	bx	lr

10004860 <Cy_SysLib_ProcessingFault>:
10004860:	/-- e7fe      	b.n	10004860 <Cy_SysLib_ProcessingFault>
10004862:	    4770      	bx	lr

10004864 <Cy_SysLib_ResetBackupDomain>:
10004864:	2048      	movs	r0, #72	; 0x48
10004866:	f2c4 0027 	movt	r0, #16423	; 0x4027
1000486a:	f04f 4100 	mov.w	r1, #2147483648	; 0x80000000
1000486e:	6001      	str	r1, [r0, #0]
10004870:	6800      	ldr	r0, [r0, #0]
10004872:	2103      	movs	r1, #3
10004874:	f2c0 0146 	movt	r1, #70	; 0x46
10004878:	ea01 70e0 	and.w	r0, r1, r0, asr #31
1000487c:	4770      	bx	lr
	...

10004880 <Cy_SysLib_SetWaitStates>:
10004880:	                b510      	push	{r4, lr}
10004882:	                f242 72b8 	movw	r2, #10168	; 0x27b8
10004886:	                2364      	movs	r3, #100	; 0x64
10004888:	                f6c0 0200 	movt	r2, #2048	; 0x800
1000488c:	                2800      	cmp	r0, #0
1000488e:	                bf18      	it	ne
10004890:	                2319      	movne	r3, #25
10004892:	                f8d2 c000 	ldr.w	ip, [r2]
10004896:	                428b      	cmp	r3, r1
10004898:	                f8dc e000 	ldr.w	lr, [ip]
1000489c:	                f8bc 40ac 	ldrh.w	r4, [ip, #172]	; 0xac
100048a0:	                f04f 0200 	mov.w	r2, #0
100048a4:	                f85e 3004 	ldr.w	r3, [lr, r4]
100048a8:	                bf38      	it	cc
100048aa:	                2201      	movcc	r2, #1
100048ac:	                f023 0303 	bic.w	r3, r3, #3
100048b0:	                4413      	add	r3, r2
100048b2:	                f84e 3004 	str.w	r3, [lr, r4]
100048b6:	                f8dc e000 	ldr.w	lr, [ip]
100048ba:	                f85e 3004 	ldr.w	r3, [lr, r4]
100048be:	                f423 7340 	bic.w	r3, r3, #768	; 0x300
100048c2:	                f84e 3004 	str.w	r3, [lr, r4]
100048c6:	                f8dc e000 	ldr.w	lr, [ip]
100048ca:	                f8bc 40ae 	ldrh.w	r4, [ip, #174]	; 0xae
100048ce:	                f85e 3004 	ldr.w	r3, [lr, r4]
100048d2:	                f023 0303 	bic.w	r3, r3, #3
100048d6:	                441a      	add	r2, r3
100048d8:	                f84e 2004 	str.w	r2, [lr, r4]
100048dc:	                f8dc 2000 	ldr.w	r2, [ip]
100048e0:	                5913      	ldr	r3, [r2, r4]
100048e2:	                f423 7340 	bic.w	r3, r3, #768	; 0x300
100048e6:	                5113      	str	r3, [r2, r4]
100048e8:	            /-- b140      	cbz	r0, 100048fc <Cy_SysLib_SetWaitStates+0x7c>
100048ea:	            |   2002      	movs	r0, #2
100048ec:	            |   2922      	cmp	r1, #34	; 0x22
100048ee:	            |   bf38      	it	cc
100048f0:	            |   2001      	movcc	r0, #1
100048f2:	            |   2911      	cmp	r1, #17
100048f4:	            |   bf38      	it	cc
100048f6:	            |   2000      	movcc	r0, #0
100048f8:	/-----------|-- e01f      	b.n	1000493a <Cy_SysLib_SetWaitStates+0xba>
100048fa:	|           |   bf00      	nop
100048fc:	|           \-> f89c 0055 	ldrb.w	r0, [ip, #85]	; 0x55
10004900:	|               4288      	cmp	r0, r1
10004902:	|  /----------- d213      	bcs.n	1000492c <Cy_SysLib_SetWaitStates+0xac>
10004904:	|  |            f89c 0056 	ldrb.w	r0, [ip, #86]	; 0x56
10004908:	|  |            4288      	cmp	r0, r1
1000490a:	|  |  /-------- d211      	bcs.n	10004930 <Cy_SysLib_SetWaitStates+0xb0>
1000490c:	|  |  |         f89c 0057 	ldrb.w	r0, [ip, #87]	; 0x57
10004910:	|  |  |         4288      	cmp	r0, r1
10004912:	|  |  |  /----- d20f      	bcs.n	10004934 <Cy_SysLib_SetWaitStates+0xb4>
10004914:	|  |  |  |      f89c 0058 	ldrb.w	r0, [ip, #88]	; 0x58
10004918:	|  |  |  |      4288      	cmp	r0, r1
1000491a:	|  |  |  |  /-- d20d      	bcs.n	10004938 <Cy_SysLib_SetWaitStates+0xb8>
1000491c:	|  |  |  |  |   f89c 2059 	ldrb.w	r2, [ip, #89]	; 0x59
10004920:	|  |  |  |  |   2004      	movs	r0, #4
10004922:	|  |  |  |  |   428a      	cmp	r2, r1
10004924:	|  |  |  |  |   bf38      	it	cc
10004926:	|  |  |  |  |   2005      	movcc	r0, #5
10004928:	+--|--|--|--|-- e007      	b.n	1000493a <Cy_SysLib_SetWaitStates+0xba>
1000492a:	|  |  |  |  |   bf00      	nop
1000492c:	|  \--|--|--|-> 2000      	movs	r0, #0
1000492e:	+-----|--|--|-- e004      	b.n	1000493a <Cy_SysLib_SetWaitStates+0xba>
10004930:	|     \--|--|-> 2001      	movs	r0, #1
10004932:	+--------|--|-- e002      	b.n	1000493a <Cy_SysLib_SetWaitStates+0xba>
10004934:	|        \--|-> 2002      	movs	r0, #2
10004936:	+-----------|-- e000      	b.n	1000493a <Cy_SysLib_SetWaitStates+0xba>
10004938:	|           \-> 2003      	movs	r0, #3
1000493a:	\-------------> f8dc 1004 	ldr.w	r1, [ip, #4]
1000493e:	                680a      	ldr	r2, [r1, #0]
10004940:	                f022 020f 	bic.w	r2, r2, #15
10004944:	                4410      	add	r0, r2
10004946:	                6008      	str	r0, [r1, #0]
10004948:	                bd10      	pop	{r4, pc}
	...

1000494c <Cy_SysPm_LdoSetVoltage>:
1000494c:	          e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
10004950:	          4604      	mov	r4, r0
10004952:	          2802      	cmp	r0, #2
10004954:	      /-- d300      	bcc.n	10004958 <Cy_SysPm_LdoSetVoltage+0xc>
10004956:	      |   be01      	bkpt	0x0001
10004958:	      \-> f242 7ab8 	movw	sl, #10168	; 0x27b8
1000495c:	          f6c0 0a00 	movt	sl, #2048	; 0x800
10004960:	          f8da 0000 	ldr.w	r0, [sl]
10004964:	          2503      	movs	r5, #3
10004966:	          6801      	ldr	r1, [r0, #0]
10004968:	          f8d0 009c 	ldr.w	r0, [r0, #156]	; 0x9c
1000496c:	          f2c0 0542 	movt	r5, #66	; 0x42
10004970:	          5846      	ldr	r6, [r0, r1]
10004972:	          f7ff ff47 	bl	10004804 <Cy_SysLib_GetDevice>
10004976:	          f5b0 7f80 	cmp.w	r0, #256	; 0x100
1000497a:	      /-- d10b      	bne.n	10004994 <Cy_SysPm_LdoSetVoltage+0x48>
1000497c:	      |   200e      	movs	r0, #14
1000497e:	      |   f7fe fed3 	bl	10003728 <Cy_Prot_GetActivePC>
10004982:	      |   4606      	mov	r6, r0
10004984:	      |   f7ff ff48 	bl	10004818 <Cy_SysLib_GetDeviceRevision>
10004988:	/-----|-- b1f6      	cbz	r6, 100049c8 <Cy_SysPm_LdoSetVoltage+0x7c>
1000498a:	|     |   2822      	cmp	r0, #34	; 0x22
1000498c:	+-----|-- d81c      	bhi.n	100049c8 <Cy_SysPm_LdoSetVoltage+0x7c>
1000498e:	|  /--|-> 4628      	mov	r0, r5
10004990:	|  |  |   e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
10004994:	|  |  \-> f8da 0000 	ldr.w	r0, [sl]
10004998:	|  |      6801      	ldr	r1, [r0, #0]
1000499a:	|  |      f8d0 209c 	ldr.w	r2, [r0, #156]	; 0x9c
1000499e:	|  |      5853      	ldr	r3, [r2, r1]
100049a0:	|  |      f423 6340 	bic.w	r3, r3, #3072	; 0xc00
100049a4:	|  |      5053      	str	r3, [r2, r1]
100049a6:	|  |      6801      	ldr	r1, [r0, #0]
100049a8:	|  |      f8d0 209c 	ldr.w	r2, [r0, #156]	; 0x9c
100049ac:	|  |      f44f 6340 	mov.w	r3, #3072	; 0xc00
100049b0:	|  |      5857      	ldr	r7, [r2, r1]
100049b2:	|  |      43b3      	bics	r3, r6
100049b4:	|  |      433b      	orrs	r3, r7
100049b6:	|  |      5053      	str	r3, [r2, r1]
100049b8:	|  |      6801      	ldr	r1, [r0, #0]
100049ba:	|  |      f8d0 009c 	ldr.w	r0, [r0, #156]	; 0x9c
100049be:	|  |      5840      	ldr	r0, [r0, r1]
100049c0:	|  |      4070      	eors	r0, r6
100049c2:	|  |      f410 6f40 	tst.w	r0, #3072	; 0xc00
100049c6:	|  \----- d0e2      	beq.n	1000498e <Cy_SysPm_LdoSetVoltage+0x42>
100049c8:	\-------> f647 7530 	movw	r5, #32560	; 0x7f30
100049cc:	          f240 7740 	movw	r7, #1856	; 0x740
100049d0:	          f2c4 0526 	movt	r5, #16422	; 0x4026
100049d4:	          f2c1 6700 	movt	r7, #5632	; 0x1600
100049d8:	          f7fd fd46 	bl	10002468 <Cy_SysLib_EnterCriticalSection>
100049dc:	          4680      	mov	r8, r0
100049de:	/-------- b39c      	cbz	r4, 10004a48 <Cy_SysPm_LdoSetVoltage+0xfc>
100049e0:	|         2000      	movs	r0, #0
100049e2:	|         f2c4 0026 	movt	r0, #16422	; 0x4026
100049e6:	|         6801      	ldr	r1, [r0, #0]
100049e8:	|         2200      	movs	r2, #0
100049ea:	|         6800      	ldr	r0, [r0, #0]
100049ec:	|         f2c5 2204 	movt	r2, #20996	; 0x5204
100049f0:	|         0209      	lsls	r1, r1, #8
100049f2:	|         bf58      	it	pl
100049f4:	|         f102 7280 	addpl.w	r2, r2, #16777216	; 0x1000000
100049f8:	|         4010      	ands	r0, r2
100049fa:	|         f641 0910 	movw	r9, #6160	; 0x1810
100049fe:	|         f64f 761c 	movw	r6, #65308	; 0xff1c
10004a02:	|         4290      	cmp	r0, r2
10004a04:	|         f2c1 6900 	movt	r9, #5632	; 0x1600
10004a08:	|         bf14      	ite	ne
10004a0a:	|         f8d9 0000 	ldrne.w	r0, [r9]
10004a0e:	|         2050      	moveq	r0, #80	; 0x50
10004a10:	|         f2c4 0626 	movt	r6, #16422	; 0x4026
10004a14:	|         6028      	str	r0, [r5, #0]
10004a16:	|         787c      	ldrb	r4, [r7, #1]
10004a18:	|         6830      	ldr	r0, [r6, #0]
10004a1a:	|         210b      	movs	r1, #11
10004a1c:	|         f361 0004 	bfi	r0, r1, #0, #5
10004a20:	|         6030      	str	r0, [r6, #0]
10004a22:	|         2003      	movs	r0, #3
10004a24:	|         f7ff fe9c 	bl	10004760 <Cy_SysLib_DelayUs>
10004a28:	|         f7ff feec 	bl	10004804 <Cy_SysLib_GetDevice>
10004a2c:	|         f5b0 7f80 	cmp.w	r0, #256	; 0x100
10004a30:	|     /-- d11a      	bne.n	10004a68 <Cy_SysPm_LdoSetVoltage+0x11c>
10004a32:	|     |   f8da 0000 	ldr.w	r0, [sl]
10004a36:	|     |   2304      	movs	r3, #4
10004a38:	|     |   6801      	ldr	r1, [r0, #0]
10004a3a:	|     |   f8d0 009c 	ldr.w	r0, [r0, #156]	; 0x9c
10004a3e:	|     |   5842      	ldr	r2, [r0, r1]
10004a40:	|     |   f363 320e 	bfi	r2, r3, #12, #3
10004a44:	|     |   5042      	str	r2, [r0, r1]
10004a46:	|  /--|-- e021      	b.n	10004a8c <Cy_SysPm_LdoSetVoltage+0x140>
10004a48:	\--|--|-> 2000      	movs	r0, #0
10004a4a:	   |  |   6028      	str	r0, [r5, #0]
10004a4c:	   |  |   783e      	ldrb	r6, [r7, #0]
10004a4e:	   |  |   2001      	movs	r0, #1
10004a50:	   |  |   f000 f992 	bl	10004d78 <Cy_SysPm_WriteVoltageBitForFlash>
10004a54:	   |  |   4605      	mov	r5, r0
10004a56:	   |  |   2800      	cmp	r0, #0
10004a58:	/--|--|-- d052      	beq.n	10004b00 <Cy_SysPm_LdoSetVoltage+0x1b4>
10004a5a:	|  |  |   4640      	mov	r0, r8
10004a5c:	|  |  |   f7fd fd08 	bl	10002470 <Cy_SysLib_ExitCriticalSection>
10004a60:	|  |  |   4628      	mov	r0, r5
10004a62:	|  |  |   e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
10004a66:	|  |  |   bf00      	nop
10004a68:	|  |  \-> f8d9 0040 	ldr.w	r0, [r9, #64]	; 0x40
10004a6c:	|  |      f8da 1000 	ldr.w	r1, [sl]
10004a70:	|  |      680a      	ldr	r2, [r1, #0]
10004a72:	|  |      f8d1 309c 	ldr.w	r3, [r1, #156]	; 0x9c
10004a76:	|  |      589f      	ldr	r7, [r3, r2]
10004a78:	|  |      0a3f      	lsrs	r7, r7, #8
10004a7a:	|  |      f367 2009 	bfi	r0, r7, #8, #2
10004a7e:	|  |      5098      	str	r0, [r3, r2]
10004a80:	|  |      f8d9 003c 	ldr.w	r0, [r9, #60]	; 0x3c
10004a84:	|  |      680a      	ldr	r2, [r1, #0]
10004a86:	|  |      f8d1 10a0 	ldr.w	r1, [r1, #160]	; 0xa0
10004a8a:	|  |      5088      	str	r0, [r1, r2]
10004a8c:	|  \----> 6830      	ldr	r0, [r6, #0]
10004a8e:	|         f364 0004 	bfi	r0, r4, #0, #5
10004a92:	|         6030      	str	r0, [r6, #0]
10004a94:	|         2007      	movs	r0, #7
10004a96:	|         f7ff fe63 	bl	10004760 <Cy_SysLib_DelayUs>
10004a9a:	|         f7ff feb3 	bl	10004804 <Cy_SysLib_GetDevice>
10004a9e:	|         f5b0 7f80 	cmp.w	r0, #256	; 0x100
10004aa2:	|     /-- d111      	bne.n	10004ac8 <Cy_SysPm_LdoSetVoltage+0x17c>
10004aa4:	|     |   f8da 0000 	ldr.w	r0, [sl]
10004aa8:	|     |   2703      	movs	r7, #3
10004aaa:	|     |   6801      	ldr	r1, [r0, #0]
10004aac:	|     |   f8d0 209c 	ldr.w	r2, [r0, #156]	; 0x9c
10004ab0:	|     |   5853      	ldr	r3, [r2, r1]
10004ab2:	|     |   f367 0303 	bfi	r3, r7, #0, #4
10004ab6:	|     |   5053      	str	r3, [r2, r1]
10004ab8:	|     |   6801      	ldr	r1, [r0, #0]
10004aba:	|     |   f8d0 00a0 	ldr.w	r0, [r0, #160]	; 0xa0
10004abe:	|     |   5842      	ldr	r2, [r0, r1]
10004ac0:	|     |   f367 0203 	bfi	r2, r7, #0, #4
10004ac4:	|     |   5042      	str	r2, [r0, r1]
10004ac6:	|  /--|-- e011      	b.n	10004aec <Cy_SysPm_LdoSetVoltage+0x1a0>
10004ac8:	|  |  \-> f8d9 0014 	ldr.w	r0, [r9, #20]
10004acc:	|  |      f8da 1000 	ldr.w	r1, [sl]
10004ad0:	|  |      680a      	ldr	r2, [r1, #0]
10004ad2:	|  |      f8d1 309c 	ldr.w	r3, [r1, #156]	; 0x9c
10004ad6:	|  |      589f      	ldr	r7, [r3, r2]
10004ad8:	|  |      0a3f      	lsrs	r7, r7, #8
10004ada:	|  |      f367 2009 	bfi	r0, r7, #8, #2
10004ade:	|  |      5098      	str	r0, [r3, r2]
10004ae0:	|  |      f8d9 0010 	ldr.w	r0, [r9, #16]
10004ae4:	|  |      680a      	ldr	r2, [r1, #0]
10004ae6:	|  |      f8d1 10a0 	ldr.w	r1, [r1, #160]	; 0xa0
10004aea:	|  |      5088      	str	r0, [r1, r2]
10004aec:	|  \----> 2000      	movs	r0, #0
10004aee:	|         f000 f943 	bl	10004d78 <Cy_SysPm_WriteVoltageBitForFlash>
10004af2:	|         4605      	mov	r5, r0
10004af4:	|         4640      	mov	r0, r8
10004af6:	|         f7fd fcbb 	bl	10002470 <Cy_SysLib_ExitCriticalSection>
10004afa:	|         4628      	mov	r0, r5
10004afc:	|         e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
10004b00:	\-------> f641 0510 	movw	r5, #6160	; 0x1810
10004b04:	          f2c1 6500 	movt	r5, #5632	; 0x1600
10004b08:	          f7ff fe7c 	bl	10004804 <Cy_SysLib_GetDevice>
10004b0c:	          f5b0 7f80 	cmp.w	r0, #256	; 0x100
10004b10:	   /----- d112      	bne.n	10004b38 <Cy_SysPm_LdoSetVoltage+0x1ec>
10004b12:	   |      f8da 0000 	ldr.w	r0, [sl]
10004b16:	   |      2702      	movs	r7, #2
10004b18:	   |      6801      	ldr	r1, [r0, #0]
10004b1a:	   |      f8d0 209c 	ldr.w	r2, [r0, #156]	; 0x9c
10004b1e:	   |      5853      	ldr	r3, [r2, r1]
10004b20:	   |      f367 0303 	bfi	r3, r7, #0, #4
10004b24:	   |      5053      	str	r3, [r2, r1]
10004b26:	   |      6801      	ldr	r1, [r0, #0]
10004b28:	   |      f8d0 00a0 	ldr.w	r0, [r0, #160]	; 0xa0
10004b2c:	   |      5842      	ldr	r2, [r0, r1]
10004b2e:	   |      f367 0203 	bfi	r2, r7, #0, #4
10004b32:	   |      5042      	str	r2, [r0, r1]
10004b34:	   |  /-- e010      	b.n	10004b58 <Cy_SysPm_LdoSetVoltage+0x20c>
10004b36:	   |  |   bf00      	nop
10004b38:	   \--|-> 6ba8      	ldr	r0, [r5, #56]	; 0x38
10004b3a:	      |   f8da 1000 	ldr.w	r1, [sl]
10004b3e:	      |   680a      	ldr	r2, [r1, #0]
10004b40:	      |   f8d1 309c 	ldr.w	r3, [r1, #156]	; 0x9c
10004b44:	      |   589f      	ldr	r7, [r3, r2]
10004b46:	      |   0a3f      	lsrs	r7, r7, #8
10004b48:	      |   f367 2009 	bfi	r0, r7, #8, #2
10004b4c:	      |   5098      	str	r0, [r3, r2]
10004b4e:	      |   6b68      	ldr	r0, [r5, #52]	; 0x34
10004b50:	      |   680a      	ldr	r2, [r1, #0]
10004b52:	      |   f8d1 10a0 	ldr.w	r1, [r1, #160]	; 0xa0
10004b56:	      |   5088      	str	r0, [r1, r2]
10004b58:	      \-> f64f 701c 	movw	r0, #65308	; 0xff1c
10004b5c:	          f2c4 0026 	movt	r0, #16422	; 0x4026
10004b60:	          6801      	ldr	r1, [r0, #0]
10004b62:	          f366 0104 	bfi	r1, r6, #0, #5
10004b66:	          6001      	str	r1, [r0, #0]
10004b68:	          f7ff fe4c 	bl	10004804 <Cy_SysLib_GetDevice>
10004b6c:	          f5b0 7f80 	cmp.w	r0, #256	; 0x100
10004b70:	      /-- d110      	bne.n	10004b94 <Cy_SysPm_LdoSetVoltage+0x248>
10004b72:	      |   f8da 0000 	ldr.w	r0, [sl]
10004b76:	      |   2306      	movs	r3, #6
10004b78:	      |   6801      	ldr	r1, [r0, #0]
10004b7a:	      |   f8d0 009c 	ldr.w	r0, [r0, #156]	; 0x9c
10004b7e:	      |   2500      	movs	r5, #0
10004b80:	      |   5842      	ldr	r2, [r0, r1]
10004b82:	      |   f363 320e 	bfi	r2, r3, #12, #3
10004b86:	      |   5042      	str	r2, [r0, r1]
10004b88:	      |   4640      	mov	r0, r8
10004b8a:	      |   f7fd fc71 	bl	10002470 <Cy_SysLib_ExitCriticalSection>
10004b8e:	      |   4628      	mov	r0, r5
10004b90:	      |   e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
10004b94:	      \-> 68e8      	ldr	r0, [r5, #12]
10004b96:	          f8da 1000 	ldr.w	r1, [sl]
10004b9a:	          2500      	movs	r5, #0
10004b9c:	          680a      	ldr	r2, [r1, #0]
10004b9e:	          f8d1 109c 	ldr.w	r1, [r1, #156]	; 0x9c
10004ba2:	          588b      	ldr	r3, [r1, r2]
10004ba4:	          0a1b      	lsrs	r3, r3, #8
10004ba6:	          f363 2009 	bfi	r0, r3, #8, #2
10004baa:	          5088      	str	r0, [r1, r2]
10004bac:	          4640      	mov	r0, r8
10004bae:	          f7fd fc5f 	bl	10002470 <Cy_SysLib_ExitCriticalSection>
10004bb2:	          4628      	mov	r0, r5
10004bb4:	          e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

10004bb8 <Cy_SysPm_PmicDisableOutput>:
10004bb8:	2044      	movs	r0, #68	; 0x44
10004bba:	f2c4 0027 	movt	r0, #16423	; 0x4027
10004bbe:	6801      	ldr	r1, [r0, #0]
10004bc0:	f401 417f 	and.w	r1, r1, #65280	; 0xff00
10004bc4:	f5b1 5f68 	cmp.w	r1, #14848	; 0x3a00
10004bc8:	bf18      	it	ne
10004bca:	4770      	bxne	lr
10004bcc:	6801      	ldr	r1, [r0, #0]
10004bce:	f24c 52ff 	movw	r2, #50687	; 0xc5ff
10004bd2:	f6cd 72ff 	movt	r2, #57343	; 0xdfff
10004bd6:	4011      	ands	r1, r2
10004bd8:	f501 5168 	add.w	r1, r1, #14848	; 0x3a00
10004bdc:	6001      	str	r1, [r0, #0]
10004bde:	4770      	bx	lr

10004be0 <Cy_SysPm_PmicUnlock>:
10004be0:	2044      	movs	r0, #68	; 0x44
10004be2:	f2c4 0027 	movt	r0, #16423	; 0x4027
10004be6:	6801      	ldr	r1, [r0, #0]
10004be8:	223a      	movs	r2, #58	; 0x3a
10004bea:	f362 210f 	bfi	r1, r2, #8, #8
10004bee:	6001      	str	r1, [r0, #0]
10004bf0:	4770      	bx	lr
	...

10004bf4 <Cy_SysPm_RegisterCallback>:
10004bf4:	             b580      	push	{r7, lr}
10004bf6:	             2800      	cmp	r0, #0
10004bf8:	/----------- d056      	beq.n	10004ca8 <Cy_SysPm_RegisterCallback+0xb4>
10004bfa:	|            68c1      	ldr	r1, [r0, #12]
10004bfc:	|            2900      	cmp	r1, #0
10004bfe:	+----------- d053      	beq.n	10004ca8 <Cy_SysPm_RegisterCallback+0xb4>
10004c00:	|            6801      	ldr	r1, [r0, #0]
10004c02:	|            2900      	cmp	r1, #0
10004c04:	+----------- d050      	beq.n	10004ca8 <Cy_SysPm_RegisterCallback+0xb4>
10004c06:	|            7901      	ldrb	r1, [r0, #4]
10004c08:	|            f242 52c4 	movw	r2, #9668	; 0x25c4
10004c0c:	|            f6c0 0200 	movt	r2, #2048	; 0x800
10004c10:	|            eb02 0c81 	add.w	ip, r2, r1, lsl #2
10004c14:	|            f8dc 1008 	ldr.w	r1, [ip, #8]
10004c18:	|            2900      	cmp	r1, #0
10004c1a:	|  /-------- d047      	beq.n	10004cac <Cy_SysPm_RegisterCallback+0xb8>
10004c1c:	|  |         1a0b      	subs	r3, r1, r0
10004c1e:	|  |         bf18      	it	ne
10004c20:	|  |         2301      	movne	r3, #1
10004c22:	|  |         4281      	cmp	r1, r0
10004c24:	|  |  /----- d031      	beq.n	10004c8a <Cy_SysPm_RegisterCallback+0x96>
10004c26:	|  |  |      694a      	ldr	r2, [r1, #20]
10004c28:	|  |  +----- b37a      	cbz	r2, 10004c8a <Cy_SysPm_RegisterCallback+0x96>
10004c2a:	|  |  |      f890 e018 	ldrb.w	lr, [r0, #24]
10004c2e:	|  |  |      bf00      	nop
10004c30:	|  |  |  /-> 7e13      	ldrb	r3, [r2, #24]
10004c32:	|  |  |  |   4573      	cmp	r3, lr
10004c34:	|  |  |  |   bf98      	it	ls
10004c36:	|  |  |  |   4611      	movls	r1, r2
10004c38:	|  |  |  |   1a13      	subs	r3, r2, r0
10004c3a:	|  |  |  |   bf18      	it	ne
10004c3c:	|  |  |  |   2301      	movne	r3, #1
10004c3e:	|  |  |  |   4282      	cmp	r2, r0
10004c40:	|  |  +--|-- d023      	beq.n	10004c8a <Cy_SysPm_RegisterCallback+0x96>
10004c42:	|  |  |  |   6952      	ldr	r2, [r2, #20]
10004c44:	|  |  +--|-- b30a      	cbz	r2, 10004c8a <Cy_SysPm_RegisterCallback+0x96>
10004c46:	|  |  |  |   7e13      	ldrb	r3, [r2, #24]
10004c48:	|  |  |  |   4573      	cmp	r3, lr
10004c4a:	|  |  |  |   bf98      	it	ls
10004c4c:	|  |  |  |   4611      	movls	r1, r2
10004c4e:	|  |  |  |   1a13      	subs	r3, r2, r0
10004c50:	|  |  |  |   bf18      	it	ne
10004c52:	|  |  |  |   2301      	movne	r3, #1
10004c54:	|  |  |  |   4282      	cmp	r2, r0
10004c56:	|  |  +--|-- d018      	beq.n	10004c8a <Cy_SysPm_RegisterCallback+0x96>
10004c58:	|  |  |  |   6952      	ldr	r2, [r2, #20]
10004c5a:	|  |  +--|-- b1b2      	cbz	r2, 10004c8a <Cy_SysPm_RegisterCallback+0x96>
10004c5c:	|  |  |  |   7e13      	ldrb	r3, [r2, #24]
10004c5e:	|  |  |  |   4573      	cmp	r3, lr
10004c60:	|  |  |  |   bf98      	it	ls
10004c62:	|  |  |  |   4611      	movls	r1, r2
10004c64:	|  |  |  |   1a13      	subs	r3, r2, r0
10004c66:	|  |  |  |   bf18      	it	ne
10004c68:	|  |  |  |   2301      	movne	r3, #1
10004c6a:	|  |  |  |   4282      	cmp	r2, r0
10004c6c:	|  |  +--|-- d00d      	beq.n	10004c8a <Cy_SysPm_RegisterCallback+0x96>
10004c6e:	|  |  |  |   6952      	ldr	r2, [r2, #20]
10004c70:	|  |  +--|-- b15a      	cbz	r2, 10004c8a <Cy_SysPm_RegisterCallback+0x96>
10004c72:	|  |  |  |   7e13      	ldrb	r3, [r2, #24]
10004c74:	|  |  |  |   4573      	cmp	r3, lr
10004c76:	|  |  |  |   bf98      	it	ls
10004c78:	|  |  |  |   4611      	movls	r1, r2
10004c7a:	|  |  |  |   1a13      	subs	r3, r2, r0
10004c7c:	|  |  |  |   bf18      	it	ne
10004c7e:	|  |  |  |   2301      	movne	r3, #1
10004c80:	|  |  |  |   4282      	cmp	r2, r0
10004c82:	|  |  +--|-- d002      	beq.n	10004c8a <Cy_SysPm_RegisterCallback+0x96>
10004c84:	|  |  |  |   6952      	ldr	r2, [r2, #20]
10004c86:	|  |  |  |   2a00      	cmp	r2, #0
10004c88:	|  |  |  \-- d1d2      	bne.n	10004c30 <Cy_SysPm_RegisterCallback+0x3c>
10004c8a:	+--|--\----X b16b      	cbz	r3, 10004ca8 <Cy_SysPm_RegisterCallback+0xb4>
10004c8c:	|  |         690a      	ldr	r2, [r1, #16]
10004c8e:	|  |     /-- b9aa      	cbnz	r2, 10004cbc <Cy_SysPm_RegisterCallback+0xc8>
10004c90:	|  |     |   7e02      	ldrb	r2, [r0, #24]
10004c92:	|  |     |   7e0b      	ldrb	r3, [r1, #24]
10004c94:	|  |     |   429a      	cmp	r2, r3
10004c96:	|  |     +-- d211      	bcs.n	10004cbc <Cy_SysPm_RegisterCallback+0xc8>
10004c98:	|  |     |   2200      	movs	r2, #0
10004c9a:	|  |     |   e9c0 2104 	strd	r2, r1, [r0, #16]
10004c9e:	|  |     |   6108      	str	r0, [r1, #16]
10004ca0:	|  |     |   f8cc 0008 	str.w	r0, [ip, #8]
10004ca4:	|  |     |   2001      	movs	r0, #1
10004ca6:	|  |     |   bd80      	pop	{r7, pc}
10004ca8:	\--|-----|-> 2000      	movs	r0, #0
10004caa:	   |     |   bd80      	pop	{r7, pc}
10004cac:	   \-----|-> 2100      	movs	r1, #0
10004cae:	         |   f8cc 0008 	str.w	r0, [ip, #8]
10004cb2:	         |   e9c0 1104 	strd	r1, r1, [r0, #16]
10004cb6:	         |   2001      	movs	r0, #1
10004cb8:	         |   bd80      	pop	{r7, pc}
10004cba:	         |   bf00      	nop
10004cbc:	         \-> 694a      	ldr	r2, [r1, #20]
10004cbe:	             6101      	str	r1, [r0, #16]
10004cc0:	             2a00      	cmp	r2, #0
10004cc2:	             6142      	str	r2, [r0, #20]
10004cc4:	             bf18      	it	ne
10004cc6:	             6110      	strne	r0, [r2, #16]
10004cc8:	             6148      	str	r0, [r1, #20]
10004cca:	             2001      	movs	r0, #1
10004ccc:	             bd80      	pop	{r7, pc}
	...

10004cd0 <Cy_SysPm_SystemSetNormalRegulatorCurrent>:
10004cd0:	             b510      	push	{r4, lr}
10004cd2:	             2400      	movs	r4, #0
10004cd4:	             f2c4 0426 	movt	r4, #16422	; 0x4026
10004cd8:	             6820      	ldr	r0, [r4, #0]
10004cda:	             f64f 71ff 	movw	r1, #65535	; 0xffff
10004cde:	             0dc0      	lsrs	r0, r0, #23
10004ce0:	             f6ca 41fb 	movt	r1, #44283	; 0xacfb
10004ce4:	             6822      	ldr	r2, [r4, #0]
10004ce6:	             f360 6118 	bfi	r1, r0, #24, #1
10004cea:	             ea02 0001 	and.w	r0, r2, r1
10004cee:	             6020      	str	r0, [r4, #0]
10004cf0:	             2008      	movs	r0, #8
10004cf2:	             f7ff fd35 	bl	10004760 <Cy_SysLib_DelayUs>
10004cf6:	             f06f 0063 	mvn.w	r0, #99	; 0x63
10004cfa:	             bf00      	nop
10004cfc:	      /----> 6821      	ldr	r1, [r4, #0]
10004cfe:	   /--|----- b178      	cbz	r0, 10004d20 <Cy_SysPm_SystemSetNormalRegulatorCurrent+0x50>
10004d00:	   |  |      f1b1 3fff 	cmp.w	r1, #4294967295
10004d04:	   +--|----- dd0c      	ble.n	10004d20 <Cy_SysPm_SystemSetNormalRegulatorCurrent+0x50>
10004d06:	   |  |      6821      	ldr	r1, [r4, #0]
10004d08:	   |  |      2900      	cmp	r1, #0
10004d0a:	   |  |  /-- d40a      	bmi.n	10004d22 <Cy_SysPm_SystemSetNormalRegulatorCurrent+0x52>
10004d0c:	   |  |  |   6821      	ldr	r1, [r4, #0]
10004d0e:	   |  |  |   2900      	cmp	r1, #0
10004d10:	   |  |  +-- d407      	bmi.n	10004d22 <Cy_SysPm_SystemSetNormalRegulatorCurrent+0x52>
10004d12:	   |  |  |   6821      	ldr	r1, [r4, #0]
10004d14:	   |  |  |   3004      	adds	r0, #4
10004d16:	   |  |  |   f1b1 3fff 	cmp.w	r1, #4294967295
10004d1a:	   |  \--|-- dcef      	bgt.n	10004cfc <Cy_SysPm_SystemSetNormalRegulatorCurrent+0x2c>
10004d1c:	   |     +-- e001      	b.n	10004d22 <Cy_SysPm_SystemSetNormalRegulatorCurrent+0x52>
10004d1e:	   |     |   bf00      	nop
10004d20:	/--\-----|-X b330      	cbz	r0, 10004d70 <Cy_SysPm_SystemSetNormalRegulatorCurrent+0xa0>
10004d22:	|        \-> 6820      	ldr	r0, [r4, #0]
10004d24:	|            f020 6080 	bic.w	r0, r0, #67108864	; 0x4000000
10004d28:	|            6020      	str	r0, [r4, #0]
10004d2a:	|            2001      	movs	r0, #1
10004d2c:	|            f7ff fd18 	bl	10004760 <Cy_SysLib_DelayUs>
10004d30:	|            6820      	ldr	r0, [r4, #0]
10004d32:	|            0200      	lsls	r0, r0, #8
10004d34:	|     /----- d40d      	bmi.n	10004d52 <Cy_SysPm_SystemSetNormalRegulatorCurrent+0x82>
10004d36:	|     |      f64f 701c 	movw	r0, #65308	; 0xff1c
10004d3a:	|     |      f2c4 0026 	movt	r0, #16422	; 0x4026
10004d3e:	|     |      f240 7140 	movw	r1, #1856	; 0x740
10004d42:	|     |      6800      	ldr	r0, [r0, #0]
10004d44:	|     |      f2c1 6100 	movt	r1, #5632	; 0x1600
10004d48:	|     |      7809      	ldrb	r1, [r1, #0]
10004d4a:	|     |      f000 001f 	and.w	r0, r0, #31
10004d4e:	|     |      4288      	cmp	r0, r1
10004d50:	|     |  /-- d102      	bne.n	10004d58 <Cy_SysPm_SystemSetNormalRegulatorCurrent+0x88>
10004d52:	|     \--|-> 2000      	movs	r0, #0
10004d54:	|        |   bd10      	pop	{r4, pc}
10004d56:	|        |   bf00      	nop
10004d58:	|        \-> f641 0010 	movw	r0, #6160	; 0x1810
10004d5c:	|            f2c1 6000 	movt	r0, #5632	; 0x1600
10004d60:	|            6800      	ldr	r0, [r0, #0]
10004d62:	|            f647 7130 	movw	r1, #32560	; 0x7f30
10004d66:	|            f2c4 0126 	movt	r1, #16422	; 0x4026
10004d6a:	|            6008      	str	r0, [r1, #0]
10004d6c:	|            2000      	movs	r0, #0
10004d6e:	|            bd10      	pop	{r4, pc}
10004d70:	\----------> 2002      	movs	r0, #2
10004d72:	             f2c0 0042 	movt	r0, #66	; 0x42
10004d76:	             bd10      	pop	{r4, pc}

10004d78 <Cy_SysPm_WriteVoltageBitForFlash>:
10004d78:	       e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
10004d7c:	       4605      	mov	r5, r0
10004d7e:	       2802      	cmp	r0, #2
10004d80:	   /-- d300      	bcc.n	10004d84 <Cy_SysPm_WriteVoltageBitForFlash+0xc>
10004d82:	   |   be01      	bkpt	0x0001
10004d84:	   \-> f7ff fd48 	bl	10004818 <Cy_SysLib_GetDeviceRevision>
10004d88:	       4607      	mov	r7, r0
10004d8a:	       f7ff fd3b 	bl	10004804 <Cy_SysLib_GetDevice>
10004d8e:	       4606      	mov	r6, r0
10004d90:	       200e      	movs	r0, #14
10004d92:	       f7fe fcc9 	bl	10003728 <Cy_Prot_GetActivePC>
10004d96:	       2404      	movs	r4, #4
10004d98:	       f242 78b8 	movw	r8, #10168	; 0x27b8
10004d9c:	       f2c0 0442 	movt	r4, #66	; 0x42
10004da0:	       2f22      	cmp	r7, #34	; 0x22
10004da2:	       f6c0 0800 	movt	r8, #2048	; 0x800
10004da6:	   /-- d80d      	bhi.n	10004dc4 <Cy_SysPm_WriteVoltageBitForFlash+0x4c>
10004da8:	   |   f5b6 7f80 	cmp.w	r6, #256	; 0x100
10004dac:	   +-- d10a      	bne.n	10004dc4 <Cy_SysPm_WriteVoltageBitForFlash+0x4c>
10004dae:	   +-- b948      	cbnz	r0, 10004dc4 <Cy_SysPm_WriteVoltageBitForFlash+0x4c>
10004db0:	   |   f8d8 0000 	ldr.w	r0, [r8]
10004db4:	   |   f24f 0118 	movw	r1, #61464	; 0xf018
10004db8:	   |   6840      	ldr	r0, [r0, #4]
10004dba:	   |   2400      	movs	r4, #0
10004dbc:	   |   5842      	ldr	r2, [r0, r1]
10004dbe:	   |   f365 6218 	bfi	r2, r5, #24, #1
10004dc2:	   |   5042      	str	r2, [r0, r1]
10004dc4:	   \-> 2f22      	cmp	r7, #34	; 0x22
10004dc6:	   /-- d805      	bhi.n	10004dd4 <Cy_SysPm_WriteVoltageBitForFlash+0x5c>
10004dc8:	   |   f5b6 7f80 	cmp.w	r6, #256	; 0x100
10004dcc:	   +-- d102      	bne.n	10004dd4 <Cy_SysPm_WriteVoltageBitForFlash+0x5c>
10004dce:	/--|-> 4620      	mov	r0, r4
10004dd0:	|  |   e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
10004dd4:	|  \-> f8d8 0000 	ldr.w	r0, [r8]
10004dd8:	|      f890 1033 	ldrb.w	r1, [r0, #51]	; 0x33
10004ddc:	|      2901      	cmp	r1, #1
10004dde:	|  /-- d802      	bhi.n	10004de6 <Cy_SysPm_WriteVoltageBitForFlash+0x6e>
10004de0:	|  |   be01      	bkpt	0x0001
10004de2:	|  |   f8d8 0000 	ldr.w	r0, [r8]
10004de6:	|  \-> 6a01      	ldr	r1, [r0, #32]
10004de8:	|      f8b0 00ba 	ldrh.w	r0, [r0, #186]	; 0xba
10004dec:	|      2d00      	cmp	r5, #0
10004dee:	|      eb01 0700 	add.w	r7, r1, r0
10004df2:	|      f240 0001 	movw	r0, #1
10004df6:	|      f6c0 4000 	movt	r0, #3072	; 0xc00
10004dfa:	|      f240 1101 	movw	r1, #257	; 0x101
10004dfe:	|      f2c3 0100 	movt	r1, #12288	; 0x3000
10004e02:	|      f100 0202 	add.w	r2, r0, #2
10004e06:	|      bf08      	it	eq
10004e08:	|      f100 5110 	addeq.w	r1, r0, #603979776	; 0x24000000
10004e0c:	|      bf04      	itt	eq
10004e0e:	|      2201      	moveq	r2, #1
10004e10:	|      f6c0 4200 	movteq	r2, #3072	; 0xc00
10004e14:	|      f5b6 7f80 	cmp.w	r6, #256	; 0x100
10004e18:	|      bf08      	it	eq
10004e1a:	|      460a      	moveq	r2, r1
10004e1c:	|      4638      	mov	r0, r7
10004e1e:	|      2101      	movs	r1, #1
10004e20:	|      f7fe fa9a 	bl	10003358 <Cy_IPC_Drv_SendMsgWord>
10004e24:	|      2800      	cmp	r0, #0
10004e26:	\----- d1d2      	bne.n	10004dce <Cy_SysPm_WriteVoltageBitForFlash+0x56>
10004e28:	       f8d8 0000 	ldr.w	r0, [r8]
10004e2c:	       f8d0 00bc 	ldr.w	r0, [r0, #188]	; 0xbc
10004e30:	/----> 5839      	ldr	r1, [r7, r0]
10004e32:	|      2900      	cmp	r1, #0
10004e34:	|  /-- d50a      	bpl.n	10004e4c <Cy_SysPm_WriteVoltageBitForFlash+0xd4>
10004e36:	|  |   5839      	ldr	r1, [r7, r0]
10004e38:	|  |   f1b1 3fff 	cmp.w	r1, #4294967295
10004e3c:	|  +-- dc06      	bgt.n	10004e4c <Cy_SysPm_WriteVoltageBitForFlash+0xd4>
10004e3e:	|  |   5839      	ldr	r1, [r7, r0]
10004e40:	|  |   f1b1 3fff 	cmp.w	r1, #4294967295
10004e44:	|  +-- dc02      	bgt.n	10004e4c <Cy_SysPm_WriteVoltageBitForFlash+0xd4>
10004e46:	|  |   5839      	ldr	r1, [r7, r0]
10004e48:	|  |   2900      	cmp	r1, #0
10004e4a:	\--|-- d4f1      	bmi.n	10004e30 <Cy_SysPm_WriteVoltageBitForFlash+0xb8>
10004e4c:	   \-> 68f8      	ldr	r0, [r7, #12]
10004e4e:	       f000 407f 	and.w	r0, r0, #4278190080	; 0xff000000
10004e52:	       f1b0 4020 	subs.w	r0, r0, #2684354560	; 0xa0000000
10004e56:	       bf08      	it	eq
10004e58:	       4604      	moveq	r4, r0
10004e5a:	       4620      	mov	r0, r4
10004e5c:	       e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

10004e60 <Cy_SysTick_Enable>:
10004e60:	f24e 0010 	movw	r0, #57360	; 0xe010
10004e64:	f2ce 0000 	movt	r0, #57344	; 0xe000
10004e68:	6801      	ldr	r1, [r0, #0]
10004e6a:	f041 0102 	orr.w	r1, r1, #2
10004e6e:	6001      	str	r1, [r0, #0]
10004e70:	6801      	ldr	r1, [r0, #0]
10004e72:	f041 0101 	orr.w	r1, r1, #1
10004e76:	6001      	str	r1, [r0, #0]
10004e78:	4770      	bx	lr
	...

10004e7c <Cy_SysTick_GetValue>:
10004e7c:	f24e 0018 	movw	r0, #57368	; 0xe018
10004e80:	f2ce 0000 	movt	r0, #57344	; 0xe000
10004e84:	6800      	ldr	r0, [r0, #0]
10004e86:	4770      	bx	lr

10004e88 <Cy_SysTick_Init>:
10004e88:	          f1b1 7f80 	cmp.w	r1, #16777216	; 0x1000000
10004e8c:	      /-- d300      	bcc.n	10004e90 <Cy_SysTick_Init+0x8>
10004e8e:	      |   be01      	bkpt	0x0001
10004e90:	      \-> b580      	push	{r7, lr}
10004e92:	          f242 6320 	movw	r3, #9760	; 0x2620
10004e96:	          f6c0 0300 	movt	r3, #2048	; 0x800
10004e9a:	          2200      	movs	r2, #0
10004e9c:	          f24e 0c10 	movw	ip, #57360	; 0xe010
10004ea0:	          e9c3 2200 	strd	r2, r2, [r3]
10004ea4:	          e9c3 2202 	strd	r2, r2, [r3, #8]
10004ea8:	          611a      	str	r2, [r3, #16]
10004eaa:	          f242 0200 	movw	r2, #8192	; 0x2000
10004eae:	          f644 7331 	movw	r3, #20273	; 0x4f31
10004eb2:	          f2ce 0c00 	movt	ip, #57344	; 0xe000
10004eb6:	          f6c0 0200 	movt	r2, #2048	; 0x800
10004eba:	          f2c1 0300 	movt	r3, #4096	; 0x1000
10004ebe:	          2804      	cmp	r0, #4
10004ec0:	          63d3      	str	r3, [r2, #60]	; 0x3c
10004ec2:	      /-- d109      	bne.n	10004ed8 <Cy_SysTick_Init+0x50>
10004ec4:	      |   f8dc 0000 	ldr.w	r0, [ip]
10004ec8:	      |   f040 0004 	orr.w	r0, r0, #4
10004ecc:	      |   f1b1 7f80 	cmp.w	r1, #16777216	; 0x1000000
10004ed0:	      |   f8cc 0000 	str.w	r0, [ip]
10004ed4:	/-----|-- d317      	bcc.n	10004f06 <Cy_SysTick_Init+0x7e>
10004ed6:	|  /--|-- e015      	b.n	10004f04 <Cy_SysTick_Init+0x7c>
10004ed8:	|  |  \-> f242 72b8 	movw	r2, #10168	; 0x27b8
10004edc:	|  |      f6c0 0200 	movt	r2, #2048	; 0x800
10004ee0:	|  |      6812      	ldr	r2, [r2, #0]
10004ee2:	|  |      f04f 7e40 	mov.w	lr, #50331648	; 0x3000000
10004ee6:	|  |      6813      	ldr	r3, [r2, #0]
10004ee8:	|  |      f8d2 20a4 	ldr.w	r2, [r2, #164]	; 0xa4
10004eec:	|  |      ea0e 6000 	and.w	r0, lr, r0, lsl #24
10004ef0:	|  |      50d0      	str	r0, [r2, r3]
10004ef2:	|  |      f8dc 0000 	ldr.w	r0, [ip]
10004ef6:	|  |      f020 0004 	bic.w	r0, r0, #4
10004efa:	|  |      f1b1 7f80 	cmp.w	r1, #16777216	; 0x1000000
10004efe:	|  |      f8cc 0000 	str.w	r0, [ip]
10004f02:	+--|----- d300      	bcc.n	10004f06 <Cy_SysTick_Init+0x7e>
10004f04:	|  \----> be01      	bkpt	0x0001
10004f06:	\-------> f021 407f 	bic.w	r0, r1, #4278190080	; 0xff000000
10004f0a:	          f8cc 0004 	str.w	r0, [ip, #4]
10004f0e:	          2000      	movs	r0, #0
10004f10:	          f8cc 0008 	str.w	r0, [ip, #8]
10004f14:	          f8dc 0000 	ldr.w	r0, [ip]
10004f18:	          f040 0002 	orr.w	r0, r0, #2
10004f1c:	          f8cc 0000 	str.w	r0, [ip]
10004f20:	          f8dc 0000 	ldr.w	r0, [ip]
10004f24:	          f040 0001 	orr.w	r0, r0, #1
10004f28:	          f8cc 0000 	str.w	r0, [ip]
10004f2c:	          bd80      	pop	{r7, pc}
	...

10004f30 <Cy_SysTick_ServiceCallbacks>:
10004f30:	    b510      	push	{r4, lr}
10004f32:	    f24e 0010 	movw	r0, #57360	; 0xe010
10004f36:	    f2ce 0000 	movt	r0, #57344	; 0xe000
10004f3a:	    6800      	ldr	r0, [r0, #0]
10004f3c:	    03c0      	lsls	r0, r0, #15
10004f3e:	    bf58      	it	pl
10004f40:	    bd10      	poppl	{r4, pc}
10004f42:	    f242 6420 	movw	r4, #9760	; 0x2620
10004f46:	    f6c0 0400 	movt	r4, #2048	; 0x800
10004f4a:	    6820      	ldr	r0, [r4, #0]
10004f4c:	    2800      	cmp	r0, #0
10004f4e:	    bf18      	it	ne
10004f50:	    4780      	blxne	r0
10004f52:	    6860      	ldr	r0, [r4, #4]
10004f54:	    2800      	cmp	r0, #0
10004f56:	    bf18      	it	ne
10004f58:	    4780      	blxne	r0
10004f5a:	    68a0      	ldr	r0, [r4, #8]
10004f5c:	    2800      	cmp	r0, #0
10004f5e:	    bf18      	it	ne
10004f60:	    4780      	blxne	r0
10004f62:	    68e0      	ldr	r0, [r4, #12]
10004f64:	    2800      	cmp	r0, #0
10004f66:	    bf18      	it	ne
10004f68:	    4780      	blxne	r0
10004f6a:	    6920      	ldr	r0, [r4, #16]
10004f6c:	/-- b110      	cbz	r0, 10004f74 <Cy_SysTick_ServiceCallbacks+0x44>
10004f6e:	|   e8bd 4010 	ldmia.w	sp!, {r4, lr}
10004f72:	|   4700      	bx	r0
10004f74:	\-> bd10      	pop	{r4, pc}
	...

10004f78 <Cy_SystemInit>:
10004f78:	4770      	bx	lr
	...

10004f7c <Cy_SystemInitFpuEnable>:
10004f7c:	b580      	push	{r7, lr}
10004f7e:	f7fd fa73 	bl	10002468 <Cy_SysLib_EnterCriticalSection>
10004f82:	f64e 5188 	movw	r1, #60808	; 0xed88
10004f86:	f2ce 0100 	movt	r1, #57344	; 0xe000
10004f8a:	680a      	ldr	r2, [r1, #0]
10004f8c:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
10004f90:	600a      	str	r2, [r1, #0]
10004f92:	f3bf 8f4f 	dsb	sy
10004f96:	f3bf 8f6f 	isb	sy
10004f9a:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
10004f9e:	f7fd ba67 	b.w	10002470 <Cy_SysLib_ExitCriticalSection>
	...

10004fa4 <SystemCoreClockUpdate>:
10004fa4:	b5b0      	push	{r4, r5, r7, lr}
10004fa6:	2000      	movs	r0, #0
10004fa8:	f7fe fc0c 	bl	100037c4 <Cy_SysClk_ClkHfGetFrequency>
10004fac:	2800      	cmp	r0, #0
10004fae:	bf08      	it	eq
10004fb0:	bdb0      	popeq	{r4, r5, r7, pc}
10004fb2:	f242 25f8 	movw	r5, #8952	; 0x22f8
10004fb6:	f6c0 0500 	movt	r5, #2048	; 0x800
10004fba:	4604      	mov	r4, r0
10004fbc:	60a8      	str	r0, [r5, #8]
10004fbe:	f7fe fd4f 	bl	10003a60 <Cy_SysClk_ClkPeriGetDivider>
10004fc2:	3001      	adds	r0, #1
10004fc4:	fbb4 f0f0 	udiv	r0, r4, r0
10004fc8:	60e8      	str	r0, [r5, #12]
10004fca:	f7fe fbdf 	bl	1000378c <Cy_SysClk_ClkFastGetDivider>
10004fce:	3001      	adds	r0, #1
10004fd0:	fbb4 f0f0 	udiv	r0, r4, r0
10004fd4:	f64d 6283 	movw	r2, #56963	; 0xde83
10004fd8:	1e41      	subs	r1, r0, #1
10004fda:	f2c4 321b 	movt	r2, #17179	; 0x431b
10004fde:	fba1 2302 	umull	r2, r3, r1, r2
10004fe2:	f644 52d3 	movw	r2, #19923	; 0x4dd3
10004fe6:	f2c1 0262 	movt	r2, #4194	; 0x1062
10004fea:	fba1 1202 	umull	r1, r2, r1, r2
10004fee:	6068      	str	r0, [r5, #4]
10004ff0:	2001      	movs	r0, #1
10004ff2:	eb00 4193 	add.w	r1, r0, r3, lsr #18
10004ff6:	eb00 1092 	add.w	r0, r0, r2, lsr #6
10004ffa:	7029      	strb	r1, [r5, #0]
10004ffc:	03c1      	lsls	r1, r0, #15
10004ffe:	e9c5 0104 	strd	r0, r1, [r5, #16]
10005002:	bdb0      	pop	{r4, r5, r7, pc}

10005004 <SystemInit>:
10005004:	    b5b0      	push	{r4, r5, r7, lr}
10005006:	    f246 5040 	movw	r0, #25920	; 0x6540
1000500a:	    f2c1 0000 	movt	r0, #4096	; 0x1000
1000500e:	    f7fe fb85 	bl	1000371c <Cy_PDL_Init>
10005012:	    f7ff ffb1 	bl	10004f78 <Cy_SystemInit>
10005016:	    2000      	movs	r0, #0
10005018:	    f7fe fbd4 	bl	100037c4 <Cy_SysClk_ClkHfGetFrequency>
1000501c:	/-- b338      	cbz	r0, 1000506e <SystemInit+0x6a>
1000501e:	|   f242 25f8 	movw	r5, #8952	; 0x22f8
10005022:	|   f6c0 0500 	movt	r5, #2048	; 0x800
10005026:	|   4604      	mov	r4, r0
10005028:	|   60a8      	str	r0, [r5, #8]
1000502a:	|   f7fe fd19 	bl	10003a60 <Cy_SysClk_ClkPeriGetDivider>
1000502e:	|   3001      	adds	r0, #1
10005030:	|   fbb4 f0f0 	udiv	r0, r4, r0
10005034:	|   60e8      	str	r0, [r5, #12]
10005036:	|   f7fe fba9 	bl	1000378c <Cy_SysClk_ClkFastGetDivider>
1000503a:	|   3001      	adds	r0, #1
1000503c:	|   fbb4 f0f0 	udiv	r0, r4, r0
10005040:	|   f64d 6283 	movw	r2, #56963	; 0xde83
10005044:	|   1e41      	subs	r1, r0, #1
10005046:	|   f2c4 321b 	movt	r2, #17179	; 0x431b
1000504a:	|   fba1 2302 	umull	r2, r3, r1, r2
1000504e:	|   f644 52d3 	movw	r2, #19923	; 0x4dd3
10005052:	|   f2c1 0262 	movt	r2, #4194	; 0x1062
10005056:	|   fba1 1202 	umull	r1, r2, r1, r2
1000505a:	|   6068      	str	r0, [r5, #4]
1000505c:	|   2001      	movs	r0, #1
1000505e:	|   eb00 4193 	add.w	r1, r0, r3, lsr #18
10005062:	|   eb00 1092 	add.w	r0, r0, r2, lsr #6
10005066:	|   7029      	strb	r1, [r5, #0]
10005068:	|   03c1      	lsls	r1, r0, #15
1000506a:	|   e9c5 0104 	strd	r0, r1, [r5, #16]
1000506e:	\-> 2003      	movs	r0, #3
10005070:	    2100      	movs	r1, #0
10005072:	    2200      	movs	r2, #0
10005074:	    f7fe faf0 	bl	10003658 <Cy_IPC_Sema_Init>
10005078:	    f242 6034 	movw	r0, #9780	; 0x2634
1000507c:	    f6c0 0000 	movt	r0, #2048	; 0x800
10005080:	    f7fe f97c 	bl	1000337c <Cy_IPC_Pipe_Config>
10005084:	    f246 40fc 	movw	r0, #25852	; 0x64fc
10005088:	    f2c1 0000 	movt	r0, #4096	; 0x1000
1000508c:	    e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
10005090:	    f7fe b9f6 	b.w	10003480 <Cy_IPC_Pipe_Init>

10005094 <_cyhal_scb_pm_transition_pending>:
10005094:	f242 5044 	movw	r0, #9540	; 0x2544
10005098:	f6c0 0000 	movt	r0, #2048	; 0x800
1000509c:	7800      	ldrb	r0, [r0, #0]
1000509e:	4770      	bx	lr

100050a0 <_cyhal_syspm_common_cb>:
100050a0:	                         e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
100050a4:	                         b083      	sub	sp, #12
100050a6:	                         f242 621c 	movw	r2, #9756	; 0x261c
100050aa:	                         f6c0 0200 	movt	r2, #2048	; 0x800
100050ae:	                         8852      	ldrh	r2, [r2, #2]
100050b0:	                         6844      	ldr	r4, [r0, #4]
100050b2:	                         27ff      	movs	r7, #255	; 0xff
100050b4:	                         f2c0 0742 	movt	r7, #66	; 0x42
100050b8:	                         b2e6      	uxtb	r6, r4
100050ba:	                     /-- b13a      	cbz	r2, 100050cc <_cyhal_syspm_common_cb+0x2c>
100050bc:	                     |   2901      	cmp	r1, #1
100050be:	                     +-- d105      	bne.n	100050cc <_cyhal_syspm_common_cb+0x2c>
100050c0:	                     |   2e02      	cmp	r6, #2
100050c2:	                     +-- d103      	bne.n	100050cc <_cyhal_syspm_common_cb+0x2c>
100050c4:	/--------------------|-> 4638      	mov	r0, r7
100050c6:	|                    |   b003      	add	sp, #12
100050c8:	|                    |   e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
100050cc:	|                    \-> 4608      	mov	r0, r1
100050ce:	|                        9101      	str	r1, [sp, #4]
100050d0:	|                        f000 f93c 	bl	1000534c <_cyhal_utils_convert_pdltohal_pm_mode>
100050d4:	|                        4680      	mov	r8, r0
100050d6:	|                        f242 3010 	movw	r0, #8976	; 0x2310
100050da:	|                        f6c0 0000 	movt	r0, #2048	; 0x800
100050de:	|                        f1b8 0f02 	cmp.w	r8, #2
100050e2:	|                        f100 0104 	add.w	r1, r0, #4
100050e6:	|                    /-- d005      	beq.n	100050f4 <_cyhal_syspm_common_cb+0x54>
100050e8:	|                    |   f1b8 0f08 	cmp.w	r8, #8
100050ec:	|                    +-- d002      	beq.n	100050f4 <_cyhal_syspm_common_cb+0x54>
100050ee:	|                    |   460a      	mov	r2, r1
100050f0:	|                    |   4601      	mov	r1, r0
100050f2:	|                    |   4610      	mov	r0, r2
100050f4:	|                    \-> 6800      	ldr	r0, [r0, #0]
100050f6:	|                        f8d1 9000 	ldr.w	r9, [r1]
100050fa:	|                        f240 7189 	movw	r1, #1929	; 0x789
100050fe:	|                        4288      	cmp	r0, r1
10005100:	|                        9002      	str	r0, [sp, #8]
10005102:	|        /-------------- d03d      	beq.n	10005180 <_cyhal_syspm_common_cb+0xe0>
10005104:	|        |               f1b8 0f01 	cmp.w	r8, #1
10005108:	|        |     /-------- d120      	bne.n	1000514c <_cyhal_syspm_common_cb+0xac>
1000510a:	|        |     |         f8dd b008 	ldr.w	fp, [sp, #8]
1000510e:	|        |     |         f240 7a89 	movw	sl, #1929	; 0x789
10005112:	|        |     |     /-- e003      	b.n	1000511c <_cyhal_syspm_common_cb+0x7c>
10005114:	|        |     |  /--|-> f8db b00c 	ldr.w	fp, [fp, #12]
10005118:	|        |     |  |  |   45d3      	cmp	fp, sl
1000511a:	|        +-----|--|--|-- d031      	beq.n	10005180 <_cyhal_syspm_common_cb+0xe0>
1000511c:	|        |     |  |  \-> f8db 3000 	ldr.w	r3, [fp]
10005120:	|        |     |  |      2b00      	cmp	r3, #0
10005122:	|        |     |  +----- d0f7      	beq.n	10005114 <_cyhal_syspm_common_cb+0x74>
10005124:	|        |     |  |      f89b 0004 	ldrb.w	r0, [fp, #4]
10005128:	|        |     |  |      4020      	ands	r0, r4
1000512a:	|        |     |  |      b2c0      	uxtb	r0, r0
1000512c:	|        |     |  |      42b0      	cmp	r0, r6
1000512e:	|        |     |  |      bf04      	itt	eq
10005130:	|        |     |  |      f89b 0005 	ldrbeq.w	r0, [fp, #5]
10005134:	|        |     |  |      ea5f 70c0 	movseq.w	r0, r0, lsl #31
10005138:	|        |     |  +----- d1ec      	bne.n	10005114 <_cyhal_syspm_common_cb+0x74>
1000513a:	|        |     |  |      f8db 2008 	ldr.w	r2, [fp, #8]
1000513e:	|        |     |  |      4630      	mov	r0, r6
10005140:	|        |     |  |      2101      	movs	r1, #1
10005142:	|        |     |  |      4798      	blx	r3
10005144:	|        |     |  |      2800      	cmp	r0, #0
10005146:	|        |     |  \----- d1e5      	bne.n	10005114 <_cyhal_syspm_common_cb+0x74>
10005148:	|        |     |         464d      	mov	r5, r9
1000514a:	|        |  /--|-------- e03c      	b.n	100051c6 <_cyhal_syspm_common_cb+0x126>
1000514c:	|        |  |  \-------> 9d02      	ldr	r5, [sp, #8]
1000514e:	|        |  |            f240 7789 	movw	r7, #1929	; 0x789
10005152:	|        |  |        /-- e002      	b.n	1000515a <_cyhal_syspm_common_cb+0xba>
10005154:	|        |  |     /--|-> 68ed      	ldr	r5, [r5, #12]
10005156:	|        |  |     |  |   42bd      	cmp	r5, r7
10005158:	|        +--|-----|--|-- d012      	beq.n	10005180 <_cyhal_syspm_common_cb+0xe0>
1000515a:	|        |  |     |  \-> 682b      	ldr	r3, [r5, #0]
1000515c:	|        |  |     |      2b00      	cmp	r3, #0
1000515e:	|        |  |     +----- d0f9      	beq.n	10005154 <_cyhal_syspm_common_cb+0xb4>
10005160:	|        |  |     |      7928      	ldrb	r0, [r5, #4]
10005162:	|        |  |     |      4020      	ands	r0, r4
10005164:	|        |  |     |      b2c0      	uxtb	r0, r0
10005166:	|        |  |     |      42b0      	cmp	r0, r6
10005168:	|        |  |     +----- d1f4      	bne.n	10005154 <_cyhal_syspm_common_cb+0xb4>
1000516a:	|        |  |     |      7968      	ldrb	r0, [r5, #5]
1000516c:	|        |  |     |      ea00 0008 	and.w	r0, r0, r8
10005170:	|        |  |     |      4540      	cmp	r0, r8
10005172:	|        |  |     +----- d0ef      	beq.n	10005154 <_cyhal_syspm_common_cb+0xb4>
10005174:	|        |  |     |      68aa      	ldr	r2, [r5, #8]
10005176:	|        |  |     |      4630      	mov	r0, r6
10005178:	|        |  |     |      4641      	mov	r1, r8
1000517a:	|        |  |     |      4798      	blx	r3
1000517c:	|        |  |     \----- e7ea      	b.n	10005154 <_cyhal_syspm_common_cb+0xb4>
1000517e:	|        |  |            bf00      	nop
10005180:	|        \--|----------> f240 7089 	movw	r0, #1929	; 0x789
10005184:	|           |            4581      	cmp	r9, r0
10005186:	|        /--|----------- d05d      	beq.n	10005244 <_cyhal_syspm_common_cb+0x1a4>
10005188:	|        |  |            f1b8 0f01 	cmp.w	r8, #1
1000518c:	|        |  |  /-------- d13c      	bne.n	10005208 <_cyhal_syspm_common_cb+0x168>
1000518e:	|        |  |  |         f240 7789 	movw	r7, #1929	; 0x789
10005192:	|        |  |  |         464d      	mov	r5, r9
10005194:	|        |  |  |     /-- e003      	b.n	1000519e <_cyhal_syspm_common_cb+0xfe>
10005196:	|        |  |  |     |   bf00      	nop
10005198:	|        |  |  |  /--|-> 68ed      	ldr	r5, [r5, #12]
1000519a:	|        |  |  |  |  |   42bd      	cmp	r5, r7
1000519c:	|        +--|--|--|--|-- d052      	beq.n	10005244 <_cyhal_syspm_common_cb+0x1a4>
1000519e:	|        |  |  |  |  \-> 682b      	ldr	r3, [r5, #0]
100051a0:	|        |  |  |  |      2b00      	cmp	r3, #0
100051a2:	|        |  |  |  +----- d0f9      	beq.n	10005198 <_cyhal_syspm_common_cb+0xf8>
100051a4:	|        |  |  |  |      7928      	ldrb	r0, [r5, #4]
100051a6:	|        |  |  |  |      4020      	ands	r0, r4
100051a8:	|        |  |  |  |      b2c0      	uxtb	r0, r0
100051aa:	|        |  |  |  |      42b0      	cmp	r0, r6
100051ac:	|        |  |  |  |      bf04      	itt	eq
100051ae:	|        |  |  |  |      7968      	ldrbeq	r0, [r5, #5]
100051b0:	|        |  |  |  |      ea5f 70c0 	movseq.w	r0, r0, lsl #31
100051b4:	|        |  |  |  +----- d1f0      	bne.n	10005198 <_cyhal_syspm_common_cb+0xf8>
100051b6:	|        |  |  |  |      68aa      	ldr	r2, [r5, #8]
100051b8:	|        |  |  |  |      4630      	mov	r0, r6
100051ba:	|        |  |  |  |      2101      	movs	r1, #1
100051bc:	|        |  |  |  |      4798      	blx	r3
100051be:	|        |  |  |  |      2800      	cmp	r0, #0
100051c0:	|        |  |  |  \----- d1ea      	bne.n	10005198 <_cyhal_syspm_common_cb+0xf8>
100051c2:	|        |  |  |         f240 7b89 	movw	fp, #1929	; 0x789
100051c6:	|        |  \--|-------> 27ff      	movs	r7, #255	; 0xff
100051c8:	|        |     |         f2c0 0742 	movt	r7, #66	; 0x42
100051cc:	|        |     |         f1b8 0f01 	cmp.w	r8, #1
100051d0:	|        |     |     /-- d002      	beq.n	100051d8 <_cyhal_syspm_common_cb+0x138>
100051d2:	|  /-----|-----|-----|-- e0a4      	b.n	1000531e <_cyhal_syspm_common_cb+0x27e>
100051d4:	|  |     |     |  /--|-> f8d9 900c 	ldr.w	r9, [r9, #12]
100051d8:	|  |     |     |  |  \-> 45a9      	cmp	r9, r5
100051da:	|  |  /--|-----|--|----- f000 809d 	beq.w	10005318 <_cyhal_syspm_common_cb+0x278>
100051de:	|  |  |  |     |  |      f8d9 3000 	ldr.w	r3, [r9]
100051e2:	|  |  |  |     |  |      2b00      	cmp	r3, #0
100051e4:	|  |  |  |     |  +----- d0f6      	beq.n	100051d4 <_cyhal_syspm_common_cb+0x134>
100051e6:	|  |  |  |     |  |      f899 0004 	ldrb.w	r0, [r9, #4]
100051ea:	|  |  |  |     |  |      4020      	ands	r0, r4
100051ec:	|  |  |  |     |  |      b2c0      	uxtb	r0, r0
100051ee:	|  |  |  |     |  |      42b0      	cmp	r0, r6
100051f0:	|  |  |  |     |  +----- d1f0      	bne.n	100051d4 <_cyhal_syspm_common_cb+0x134>
100051f2:	|  |  |  |     |  |      f899 0005 	ldrb.w	r0, [r9, #5]
100051f6:	|  |  |  |     |  |      0780      	lsls	r0, r0, #30
100051f8:	|  |  |  |     |  +----- d4ec      	bmi.n	100051d4 <_cyhal_syspm_common_cb+0x134>
100051fa:	|  |  |  |     |  |      f8d9 2008 	ldr.w	r2, [r9, #8]
100051fe:	|  |  |  |     |  |      4630      	mov	r0, r6
10005200:	|  |  |  |     |  |      2102      	movs	r1, #2
10005202:	|  |  |  |     |  |      4798      	blx	r3
10005204:	|  |  |  |     |  \----- e7e6      	b.n	100051d4 <_cyhal_syspm_common_cb+0x134>
10005206:	|  |  |  |     |         bf00      	nop
10005208:	|  |  |  |     \-------> f240 7589 	movw	r5, #1929	; 0x789
1000520c:	|  |  |  |           /-- e004      	b.n	10005218 <_cyhal_syspm_common_cb+0x178>
1000520e:	|  |  |  |           |   bf00      	nop
10005210:	|  |  |  |        /--|-> f8d9 900c 	ldr.w	r9, [r9, #12]
10005214:	|  |  |  |        |  |   45a9      	cmp	r9, r5
10005216:	|  |  |  +--------|--|-- d015      	beq.n	10005244 <_cyhal_syspm_common_cb+0x1a4>
10005218:	|  |  |  |        |  \-> f8d9 3000 	ldr.w	r3, [r9]
1000521c:	|  |  |  |        |      2b00      	cmp	r3, #0
1000521e:	|  |  |  |        +----- d0f7      	beq.n	10005210 <_cyhal_syspm_common_cb+0x170>
10005220:	|  |  |  |        |      f899 0004 	ldrb.w	r0, [r9, #4]
10005224:	|  |  |  |        |      4020      	ands	r0, r4
10005226:	|  |  |  |        |      b2c0      	uxtb	r0, r0
10005228:	|  |  |  |        |      42b0      	cmp	r0, r6
1000522a:	|  |  |  |        +----- d1f1      	bne.n	10005210 <_cyhal_syspm_common_cb+0x170>
1000522c:	|  |  |  |        |      f899 0005 	ldrb.w	r0, [r9, #5]
10005230:	|  |  |  |        |      ea00 0008 	and.w	r0, r0, r8
10005234:	|  |  |  |        |      4540      	cmp	r0, r8
10005236:	|  |  |  |        +----- d0eb      	beq.n	10005210 <_cyhal_syspm_common_cb+0x170>
10005238:	|  |  |  |        |      f8d9 2008 	ldr.w	r2, [r9, #8]
1000523c:	|  |  |  |        |      4630      	mov	r0, r6
1000523e:	|  |  |  |        |      4641      	mov	r1, r8
10005240:	|  |  |  |        |      4798      	blx	r3
10005242:	|  |  |  |        \----- e7e5      	b.n	10005210 <_cyhal_syspm_common_cb+0x170>
10005244:	|  |  |  \-------------> 2001      	movs	r0, #1
10005246:	|  |  |                  2700      	movs	r7, #0
10005248:	|  |  |     /----------> 2e10      	cmp	r6, #16
1000524a:	|  |  |     |            bf08      	it	eq
1000524c:	|  |  |     |            f1b8 0f04 	cmpeq.w	r8, #4
10005250:	|  |  |     |        /-- d02a      	beq.n	100052a8 <_cyhal_syspm_common_cb+0x208>
10005252:	|  |  |     |        |   2e08      	cmp	r6, #8
10005254:	|  |  |     |        |   bf08      	it	eq
10005256:	|  |  |     |        |   f1b8 0f08 	cmpeq.w	r8, #8
1000525a:	|  |  |     |     /--|-- d037      	beq.n	100052cc <_cyhal_syspm_common_cb+0x22c>
1000525c:	|  |  |     |     |  |   1e71      	subs	r1, r6, #1
1000525e:	|  |  |     |     |  |   2200      	movs	r2, #0
10005260:	|  |  |     |     |  |   2901      	cmp	r1, #1
10005262:	|  |  |     |     |  |   f080 0001 	eor.w	r0, r0, #1
10005266:	|  |  |     |     |  |   bf88      	it	hi
10005268:	|  |  |     |     |  |   2201      	movhi	r2, #1
1000526a:	|  |  |     |     |  |   4310      	orrs	r0, r2
1000526c:	+--|--|-----|-----|--|-- f47f af2a 	bne.w	100050c4 <_cyhal_syspm_common_cb+0x24>
10005270:	|  |  |     |     |  |   9801      	ldr	r0, [sp, #4]
10005272:	|  |  |     |     |  |   2808      	cmp	r0, #8
10005274:	|  |  |     |  /--|--|-- d03c      	beq.n	100052f0 <_cyhal_syspm_common_cb+0x250>
10005276:	|  |  |     |  |  |  |   2804      	cmp	r0, #4
10005278:	+--|--|-----|--|--|--|-- f47f af24 	bne.w	100050c4 <_cyhal_syspm_common_cb+0x24>
1000527c:	|  |  |     |  |  |  |   f24e 0010 	movw	r0, #57360	; 0xe010
10005280:	|  |  |     |  |  |  |   f242 631c 	movw	r3, #9756	; 0x261c
10005284:	|  |  |     |  |  |  |   f2ce 0000 	movt	r0, #57344	; 0xe000
10005288:	|  |  |     |  |  |  |   f6c0 0300 	movt	r3, #2048	; 0x800
1000528c:	|  |  |     |  |  |  |   6801      	ldr	r1, [r0, #0]
1000528e:	|  |  |     |  |  |  |   781a      	ldrb	r2, [r3, #0]
10005290:	|  |  |     |  |  |  |   4011      	ands	r1, r2
10005292:	|  |  |     |  |  |  |   7059      	strb	r1, [r3, #1]
10005294:	+--|--|-----|--|--|--|-- f43f af16 	beq.w	100050c4 <_cyhal_syspm_common_cb+0x24>
10005298:	|  |  |     |  |  |  |   6801      	ldr	r1, [r0, #0]
1000529a:	|  |  |     |  |  |  |   f021 0101 	bic.w	r1, r1, #1
1000529e:	|  |  |     |  |  |  |   6001      	str	r1, [r0, #0]
100052a0:	|  |  |     |  |  |  |   4638      	mov	r0, r7
100052a2:	|  |  |     |  |  |  |   b003      	add	sp, #12
100052a4:	|  |  |     |  |  |  |   e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
100052a8:	|  |  |     |  |  |  \-> 2000      	movs	r0, #0
100052aa:	|  |  |     |  |  |      f7fe fa8b 	bl	100037c4 <Cy_SysClk_ClkHfGetFrequency>
100052ae:	|  |  |     |  |  |      f64d 6183 	movw	r1, #56963	; 0xde83
100052b2:	|  |  |     |  |  |      f2c4 311b 	movt	r1, #17179	; 0x431b
100052b6:	|  |  |     |  |  |      fba0 0101 	umull	r0, r1, r0, r1
100052ba:	|  |  |     |  |  |      0c89      	lsrs	r1, r1, #18
100052bc:	|  |  |     |  |  |      2001      	movs	r0, #1
100052be:	|  |  |     |  |  |      f7ff fadf 	bl	10004880 <Cy_SysLib_SetWaitStates>
100052c2:	|  |  |     |  |  |      4638      	mov	r0, r7
100052c4:	|  |  |     |  |  |      b003      	add	sp, #12
100052c6:	|  |  |     |  |  |      e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
100052ca:	|  |  |     |  |  |      bf00      	nop
100052cc:	|  |  |     |  |  \----> 2000      	movs	r0, #0
100052ce:	|  |  |     |  |         f7fe fa79 	bl	100037c4 <Cy_SysClk_ClkHfGetFrequency>
100052d2:	|  |  |     |  |         f64d 6183 	movw	r1, #56963	; 0xde83
100052d6:	|  |  |     |  |         f2c4 311b 	movt	r1, #17179	; 0x431b
100052da:	|  |  |     |  |         fba0 0101 	umull	r0, r1, r0, r1
100052de:	|  |  |     |  |         0c89      	lsrs	r1, r1, #18
100052e0:	|  |  |     |  |         2000      	movs	r0, #0
100052e2:	|  |  |     |  |         f7ff facd 	bl	10004880 <Cy_SysLib_SetWaitStates>
100052e6:	|  |  |     |  |         4638      	mov	r0, r7
100052e8:	|  |  |     |  |         b003      	add	sp, #12
100052ea:	|  |  |     |  |         e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
100052ee:	|  |  |     |  |         bf00      	nop
100052f0:	|  |  |     |  \-------> f242 601c 	movw	r0, #9756	; 0x261c
100052f4:	|  |  |     |            f6c0 0000 	movt	r0, #2048	; 0x800
100052f8:	|  |  |     |            7840      	ldrb	r0, [r0, #1]
100052fa:	|  |  |     |            2800      	cmp	r0, #0
100052fc:	\--|--|-----|----------- f43f aee2 	beq.w	100050c4 <_cyhal_syspm_common_cb+0x24>
10005300:	   |  |     |            f24e 0010 	movw	r0, #57360	; 0xe010
10005304:	   |  |     |            f2ce 0000 	movt	r0, #57344	; 0xe000
10005308:	   |  |     |            6801      	ldr	r1, [r0, #0]
1000530a:	   |  |     |            f041 0101 	orr.w	r1, r1, #1
1000530e:	   |  |     |            6001      	str	r1, [r0, #0]
10005310:	   |  |     |            4638      	mov	r0, r7
10005312:	   |  |     |            b003      	add	sp, #12
10005314:	   |  |     |            e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
10005318:	   |  \-----|----------> 9d02      	ldr	r5, [sp, #8]
1000531a:	   |        |            455d      	cmp	r5, fp
1000531c:	   |        |        /-- d106      	bne.n	1000532c <_cyhal_syspm_common_cb+0x28c>
1000531e:	   \--------|--------|-> 2000      	movs	r0, #0
10005320:	            +--------|-- e792      	b.n	10005248 <_cyhal_syspm_common_cb+0x1a8>
10005322:	            |        |   bf00      	nop
10005324:	            |     /--|-> 68ed      	ldr	r5, [r5, #12]
10005326:	            |     |  |   2000      	movs	r0, #0
10005328:	            |     |  |   455d      	cmp	r5, fp
1000532a:	            \-----|--|-- d08d      	beq.n	10005248 <_cyhal_syspm_common_cb+0x1a8>
1000532c:	                  |  \-> 682b      	ldr	r3, [r5, #0]
1000532e:	                  |      2b00      	cmp	r3, #0
10005330:	                  +----- d0f8      	beq.n	10005324 <_cyhal_syspm_common_cb+0x284>
10005332:	                  |      7928      	ldrb	r0, [r5, #4]
10005334:	                  |      4020      	ands	r0, r4
10005336:	                  |      b2c0      	uxtb	r0, r0
10005338:	                  |      42b0      	cmp	r0, r6
1000533a:	                  +----- d1f3      	bne.n	10005324 <_cyhal_syspm_common_cb+0x284>
1000533c:	                  |      7968      	ldrb	r0, [r5, #5]
1000533e:	                  |      0780      	lsls	r0, r0, #30
10005340:	                  +----- d4f0      	bmi.n	10005324 <_cyhal_syspm_common_cb+0x284>
10005342:	                  |      68aa      	ldr	r2, [r5, #8]
10005344:	                  |      4630      	mov	r0, r6
10005346:	                  |      2102      	movs	r1, #2
10005348:	                  |      4798      	blx	r3
1000534a:	                  \----- e7eb      	b.n	10005324 <_cyhal_syspm_common_cb+0x284>

1000534c <_cyhal_utils_convert_pdltohal_pm_mode>:
1000534c:	    2808      	cmp	r0, #8
1000534e:	/-- d805      	bhi.n	1000535c <_cyhal_utils_convert_pdltohal_pm_mode+0x10>
10005350:	|   2101      	movs	r1, #1
10005352:	|   4081      	lsls	r1, r0
10005354:	|   f411 7f8b 	tst.w	r1, #278	; 0x116
10005358:	|   bf18      	it	ne
1000535a:	|   4770      	bxne	lr
1000535c:	\-> 2001      	movs	r0, #1
1000535e:	    be01      	bkpt	0x0001
10005360:	    4770      	bx	lr
	...

10005364 <_sys_close>:
10005364:	2000      	movs	r0, #0
10005366:	4770      	bx	lr

10005368 <_sys_exit>:
10005368:	/-- e7fe      	b.n	10005368 <_sys_exit>
	...

1000536c <_sys_flen>:
1000536c:	2000      	movs	r0, #0
1000536e:	4770      	bx	lr

10005370 <_sys_istty>:
10005370:	2000      	movs	r0, #0
10005372:	4770      	bx	lr

10005374 <_sys_open>:
10005374:	2001      	movs	r0, #1
10005376:	4770      	bx	lr

10005378 <_sys_seek>:
10005378:	f04f 30ff 	mov.w	r0, #4294967295
1000537c:	4770      	bx	lr
	...

10005380 <_sys_write>:
10005380:	2000      	movs	r0, #0
10005382:	4770      	bx	lr

10005384 <_ttywrch>:
10005384:	4770      	bx	lr
	...

10005388 <addRoundKey>:
10005388:	b580      	push	{r7, lr}
1000538a:	f8d0 e000 	ldr.w	lr, [r0]
1000538e:	010a      	lsls	r2, r1, #4
10005390:	1d01      	adds	r1, r0, #4
10005392:	f811 c002 	ldrb.w	ip, [r1, r2]
10005396:	f89e 3000 	ldrb.w	r3, [lr]
1000539a:	ea83 030c 	eor.w	r3, r3, ip
1000539e:	f88e 3000 	strb.w	r3, [lr]
100053a2:	f8d0 e000 	ldr.w	lr, [r0]
100053a6:	f102 0c01 	add.w	ip, r2, #1
100053aa:	f811 c00c 	ldrb.w	ip, [r1, ip]
100053ae:	f89e 3001 	ldrb.w	r3, [lr, #1]
100053b2:	ea83 030c 	eor.w	r3, r3, ip
100053b6:	f88e 3001 	strb.w	r3, [lr, #1]
100053ba:	f8d0 e000 	ldr.w	lr, [r0]
100053be:	f102 0c02 	add.w	ip, r2, #2
100053c2:	f811 c00c 	ldrb.w	ip, [r1, ip]
100053c6:	f89e 3002 	ldrb.w	r3, [lr, #2]
100053ca:	ea83 030c 	eor.w	r3, r3, ip
100053ce:	f88e 3002 	strb.w	r3, [lr, #2]
100053d2:	f8d0 e000 	ldr.w	lr, [r0]
100053d6:	f102 0c03 	add.w	ip, r2, #3
100053da:	f811 c00c 	ldrb.w	ip, [r1, ip]
100053de:	f89e 3003 	ldrb.w	r3, [lr, #3]
100053e2:	ea83 030c 	eor.w	r3, r3, ip
100053e6:	f88e 3003 	strb.w	r3, [lr, #3]
100053ea:	f8d0 e000 	ldr.w	lr, [r0]
100053ee:	f102 0c04 	add.w	ip, r2, #4
100053f2:	f811 c00c 	ldrb.w	ip, [r1, ip]
100053f6:	f89e 3004 	ldrb.w	r3, [lr, #4]
100053fa:	ea83 030c 	eor.w	r3, r3, ip
100053fe:	f88e 3004 	strb.w	r3, [lr, #4]
10005402:	f8d0 e000 	ldr.w	lr, [r0]
10005406:	f102 0c05 	add.w	ip, r2, #5
1000540a:	f811 c00c 	ldrb.w	ip, [r1, ip]
1000540e:	f89e 3005 	ldrb.w	r3, [lr, #5]
10005412:	ea83 030c 	eor.w	r3, r3, ip
10005416:	f88e 3005 	strb.w	r3, [lr, #5]
1000541a:	f8d0 e000 	ldr.w	lr, [r0]
1000541e:	f102 0c06 	add.w	ip, r2, #6
10005422:	f811 c00c 	ldrb.w	ip, [r1, ip]
10005426:	f89e 3006 	ldrb.w	r3, [lr, #6]
1000542a:	ea83 030c 	eor.w	r3, r3, ip
1000542e:	f88e 3006 	strb.w	r3, [lr, #6]
10005432:	f8d0 e000 	ldr.w	lr, [r0]
10005436:	f102 0c07 	add.w	ip, r2, #7
1000543a:	f811 c00c 	ldrb.w	ip, [r1, ip]
1000543e:	f89e 3007 	ldrb.w	r3, [lr, #7]
10005442:	ea83 030c 	eor.w	r3, r3, ip
10005446:	f88e 3007 	strb.w	r3, [lr, #7]
1000544a:	f8d0 e000 	ldr.w	lr, [r0]
1000544e:	f102 0c08 	add.w	ip, r2, #8
10005452:	f811 c00c 	ldrb.w	ip, [r1, ip]
10005456:	f89e 3008 	ldrb.w	r3, [lr, #8]
1000545a:	ea83 030c 	eor.w	r3, r3, ip
1000545e:	f88e 3008 	strb.w	r3, [lr, #8]
10005462:	f8d0 e000 	ldr.w	lr, [r0]
10005466:	f102 0c09 	add.w	ip, r2, #9
1000546a:	f811 c00c 	ldrb.w	ip, [r1, ip]
1000546e:	f89e 3009 	ldrb.w	r3, [lr, #9]
10005472:	ea83 030c 	eor.w	r3, r3, ip
10005476:	f88e 3009 	strb.w	r3, [lr, #9]
1000547a:	f8d0 e000 	ldr.w	lr, [r0]
1000547e:	f102 0c0a 	add.w	ip, r2, #10
10005482:	f811 c00c 	ldrb.w	ip, [r1, ip]
10005486:	f89e 300a 	ldrb.w	r3, [lr, #10]
1000548a:	ea83 030c 	eor.w	r3, r3, ip
1000548e:	f88e 300a 	strb.w	r3, [lr, #10]
10005492:	f8d0 e000 	ldr.w	lr, [r0]
10005496:	f102 0c0b 	add.w	ip, r2, #11
1000549a:	f811 c00c 	ldrb.w	ip, [r1, ip]
1000549e:	f89e 300b 	ldrb.w	r3, [lr, #11]
100054a2:	ea83 030c 	eor.w	r3, r3, ip
100054a6:	f88e 300b 	strb.w	r3, [lr, #11]
100054aa:	f8d0 e000 	ldr.w	lr, [r0]
100054ae:	f102 0c0c 	add.w	ip, r2, #12
100054b2:	f811 c00c 	ldrb.w	ip, [r1, ip]
100054b6:	f89e 300c 	ldrb.w	r3, [lr, #12]
100054ba:	ea83 030c 	eor.w	r3, r3, ip
100054be:	f88e 300c 	strb.w	r3, [lr, #12]
100054c2:	f8d0 e000 	ldr.w	lr, [r0]
100054c6:	f102 0c0d 	add.w	ip, r2, #13
100054ca:	f811 c00c 	ldrb.w	ip, [r1, ip]
100054ce:	f89e 300d 	ldrb.w	r3, [lr, #13]
100054d2:	ea83 030c 	eor.w	r3, r3, ip
100054d6:	f88e 300d 	strb.w	r3, [lr, #13]
100054da:	f8d0 e000 	ldr.w	lr, [r0]
100054de:	f102 0c0e 	add.w	ip, r2, #14
100054e2:	f811 c00c 	ldrb.w	ip, [r1, ip]
100054e6:	f89e 300e 	ldrb.w	r3, [lr, #14]
100054ea:	320f      	adds	r2, #15
100054ec:	ea83 030c 	eor.w	r3, r3, ip
100054f0:	f88e 300e 	strb.w	r3, [lr, #14]
100054f4:	6800      	ldr	r0, [r0, #0]
100054f6:	5c89      	ldrb	r1, [r1, r2]
100054f8:	7bc2      	ldrb	r2, [r0, #15]
100054fa:	4051      	eors	r1, r2
100054fc:	73c1      	strb	r1, [r0, #15]
100054fe:	bd80      	pop	{r7, pc}

10005500 <cybsp_init>:
10005500:	       b510      	push	{r4, lr}
10005502:	       f000 f823 	bl	1000554c <cyhal_hwmgr_init>
10005506:	       4604      	mov	r4, r0
10005508:	   /-- b918      	cbnz	r0, 10005512 <cybsp_init+0x12>
1000550a:	   |   f000 f925 	bl	10005758 <cyhal_syspm_init>
1000550e:	   |   4604      	mov	r4, r0
10005510:	/--|-- b120      	cbz	r0, 1000551c <cybsp_init+0x1c>
10005512:	|  \-> f000 fb05 	bl	10005b20 <init_cycfg_all>
10005516:	|      4620      	mov	r0, r4
10005518:	|      bd10      	pop	{r4, pc}
1000551a:	|      bf00      	nop
1000551c:	\----> 2000      	movs	r0, #0
1000551e:	       f640 41e4 	movw	r1, #3300	; 0xce4
10005522:	       f000 f941 	bl	100057a8 <cyhal_syspm_set_supply_voltage>
10005526:	       f000 fafb 	bl	10005b20 <init_cycfg_all>
1000552a:	       f242 30cc 	movw	r0, #9164	; 0x23cc
1000552e:	       f6c0 0000 	movt	r0, #2048	; 0x800
10005532:	       f7ff fb5f 	bl	10004bf4 <Cy_SysPm_RegisterCallback>
10005536:	       2400      	movs	r4, #0
10005538:	       f2c0 6402 	movt	r4, #1538	; 0x602
1000553c:	       2800      	cmp	r0, #0
1000553e:	       bf18      	it	ne
10005540:	       2400      	movne	r4, #0
10005542:	       4620      	mov	r0, r4
10005544:	       bd10      	pop	{r4, pc}
	...

10005548 <cycfg_ClockStartupError>:
10005548:	/-- e7fe      	b.n	10005548 <cycfg_ClockStartupError>
	...

1000554c <cyhal_hwmgr_init>:
1000554c:	2000      	movs	r0, #0
1000554e:	4770      	bx	lr

10005550 <cyhal_hwmgr_reserve>:
10005550:	                e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
10005554:	                b081      	sub	sp, #4
10005556:	                4604      	mov	r4, r0
10005558:	                f7fc ff86 	bl	10002468 <Cy_SysLib_EnterCriticalSection>
1000555c:	                7823      	ldrb	r3, [r4, #0]
1000555e:	                f246 6e1e 	movw	lr, #26142	; 0x661e
10005562:	                7862      	ldrb	r2, [r4, #1]
10005564:	                f894 b002 	ldrb.w	fp, [r4, #2]
10005568:	                2b04      	cmp	r3, #4
1000556a:	                f2c1 0e00 	movt	lr, #4096	; 0x1000
1000556e:	                f04f 0401 	mov.w	r4, #1
10005572:	                f640 3628 	movw	r6, #2856	; 0xb28
10005576:	                bf02      	ittt	eq
10005578:	                4693      	moveq	fp, r2
1000557a:	                220d      	moveq	r2, #13
1000557c:	                2305      	moveq	r3, #5
1000557e:	                2b1c      	cmp	r3, #28
10005580:	                bf9a      	itte	ls
10005582:	                eb0e 0743 	addls.w	r7, lr, r3, lsl #1
10005586:	                f8b7 a002 	ldrhls.w	sl, [r7, #2]
1000558a:	                f240 1a31 	movwhi	sl, #305	; 0x131
1000558e:	                f83e c013 	ldrh.w	ip, [lr, r3, lsl #1]
10005592:	                409c      	lsls	r4, r3
10005594:	                f6c0 4600 	movt	r6, #3072	; 0xc00
10005598:	                f240 1900 	movw	r9, #256	; 0x100
1000559c:	                ea14 0806 	ands.w	r8, r4, r6
100055a0:	                f2c0 4902 	movt	r9, #1026	; 0x402
100055a4:	            /-- d020      	beq.n	100055e8 <cyhal_hwmgr_reserve+0x98>
100055a6:	            |   1edc      	subs	r4, r3, #3
100055a8:	            |   2c18      	cmp	r4, #24
100055aa:	         /--|-- d821      	bhi.n	100055f0 <cyhal_hwmgr_reserve+0xa0>
100055ac:	         |  |   f246 6600 	movw	r6, #26112	; 0x6600
100055b0:	         |  |   271a      	movs	r7, #26
100055b2:	         |  |   f2c1 0600 	movt	r6, #4096	; 0x1000
100055b6:	         |  |   e8df f004 	tbb	[pc, r4]
100055ba:	         |  |   1b0d      	.short	0x1b0d
100055bc:	         |  |   0d1b1b32 	.word	0x0d1b1b32
100055c0:	         |  |   1b2d1b23 	.word	0x1b2d1b23
100055c4:	         |  |   1b1b1b1b 	.word	0x1b1b1b1b
100055c8:	         |  |   1b1b1b1b 	.word	0x1b1b1b1b
100055cc:	         |  |   1b1b1b1b 	.word	0x1b1b1b1b
100055d0:	         |  |   000d811b 	.word	0x000d811b
100055d4:	         |  |   f246 7697 	movw	r6, #26519	; 0x6797
100055d8:	         |  |   2701      	movs	r7, #1
100055da:	         |  |   f2c1 0600 	movt	r6, #4096	; 0x1000
100055de:	         |  |   b2d4      	uxtb	r4, r2
100055e0:	         |  |   42bc      	cmp	r4, r7
100055e2:	/--------|--|-- d206      	bcs.n	100055f2 <cyhal_hwmgr_reserve+0xa2>
100055e4:	|  /-----|--|-- e01e      	b.n	10005624 <cyhal_hwmgr_reserve+0xd4>
100055e6:	|  |     |  |   bf00      	nop
100055e8:	|  |     |  \-> fa5c f782 	uxtab	r7, ip, r2
100055ec:	|  |     |  /-- e025      	b.n	1000563a <cyhal_hwmgr_reserve+0xea>
100055ee:	|  |     |  |   bf00      	nop
100055f0:	|  |     \--|-> be01      	bkpt	0x0001
100055f2:	>--|--------|-> f7fc ff3d 	bl	10002470 <Cy_SysLib_ExitCriticalSection>
100055f6:	|  |        |   4648      	mov	r0, r9
100055f8:	|  |        |   b001      	add	sp, #4
100055fa:	|  |        |   e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
100055fe:	|  |        |   bf00      	nop
10005600:	|  |        |   f246 661a 	movw	r6, #26138	; 0x661a
10005604:	|  |        |   2702      	movs	r7, #2
10005606:	|  |        |   f2c1 0600 	movt	r6, #4096	; 0x1000
1000560a:	|  |        |   b2d4      	uxtb	r4, r2
1000560c:	|  |        |   42bc      	cmp	r4, r7
1000560e:	+--|--------|-- d2f0      	bcs.n	100055f2 <cyhal_hwmgr_reserve+0xa2>
10005610:	|  +--------|-- e008      	b.n	10005624 <cyhal_hwmgr_reserve+0xd4>
10005612:	|  |        |   bf00      	nop
10005614:	|  |        |   f246 5630 	movw	r6, #25904	; 0x6530
10005618:	|  |        |   2710      	movs	r7, #16
1000561a:	|  |        |   f2c1 0600 	movt	r6, #4096	; 0x1000
1000561e:	|  |        |   b2d4      	uxtb	r4, r2
10005620:	|  |        |   42bc      	cmp	r4, r7
10005622:	+--|--------|-- d2e6      	bcs.n	100055f2 <cyhal_hwmgr_reserve+0xa2>
10005624:	|  >--------|-> 5d35      	ldrb	r5, [r6, r4]
10005626:	|  |        |   fa5c f18b 	uxtab	r1, ip, fp
1000562a:	|  |        |   3401      	adds	r4, #1
1000562c:	|  |        |   42bc      	cmp	r4, r7
1000562e:	|  |        |   eb01 0705 	add.w	r7, r1, r5
10005632:	|  |        +-- d202      	bcs.n	1000563a <cyhal_hwmgr_reserve+0xea>
10005634:	|  |        |   5d31      	ldrb	r1, [r6, r4]
10005636:	|  |        |   eb0c 0a01 	add.w	sl, ip, r1
1000563a:	|  |        \-> fa1f f18a 	uxth.w	r1, sl
1000563e:	|  |            b2bc      	uxth	r4, r7
10005640:	|  |            428c      	cmp	r4, r1
10005642:	+--|----------- d2d6      	bcs.n	100055f2 <cyhal_hwmgr_reserve+0xa2>
10005644:	|  |            f642 056c 	movw	r5, #10348	; 0x286c
10005648:	|  |            f3c7 01c7 	ubfx	r1, r7, #3, #8
1000564c:	|  |            f6c0 0500 	movt	r5, #2048	; 0x800
10005650:	|  |            5c69      	ldrb	r1, [r5, r1]
10005652:	|  |            f007 0407 	and.w	r4, r7, #7
10005656:	|  |            40e1      	lsrs	r1, r4
10005658:	|  |            07c9      	lsls	r1, r1, #31
1000565a:	|  |        /-- d007      	beq.n	1000566c <cyhal_hwmgr_reserve+0x11c>
1000565c:	|  |        |   f109 0901 	add.w	r9, r9, #1
10005660:	|  |        |   f7fc ff06 	bl	10002470 <Cy_SysLib_ExitCriticalSection>
10005664:	|  |        |   4648      	mov	r0, r9
10005666:	|  |        |   b001      	add	sp, #4
10005668:	|  |        |   e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1000566c:	|  |        \-> 2b1c      	cmp	r3, #28
1000566e:	|  |            bf9a      	itte	ls
10005670:	|  |            eb0e 0143 	addls.w	r1, lr, r3, lsl #1
10005674:	|  |            f8b1 e002 	ldrhls.w	lr, [r1, #2]
10005678:	|  |            f240 1e31 	movwhi	lr, #305	; 0x131
1000567c:	|  |            f1b8 0f00 	cmp.w	r8, #0
10005680:	|  |        /-- d026      	beq.n	100056d0 <cyhal_hwmgr_reserve+0x180>
10005682:	|  |        |   1edc      	subs	r4, r3, #3
10005684:	|  |        |   2c18      	cmp	r4, #24
10005686:	|  |  /-----|-- d827      	bhi.n	100056d8 <cyhal_hwmgr_reserve+0x188>
10005688:	|  |  |     |   f246 6600 	movw	r6, #26112	; 0x6600
1000568c:	|  |  |     |   231a      	movs	r3, #26
1000568e:	|  |  |     |   f2c1 0600 	movt	r6, #4096	; 0x1000
10005692:	|  |  |     |   e8df f004 	tbb	[pc, r4]
10005696:	|  |  |     |   210d      	.short	0x210d
10005698:	|  |  |     |   0d21213a 	.word	0x0d21213a
1000569c:	|  |  |     |   21292135 	.word	0x21292135
100056a0:	|  |  |     |   21212121 	.word	0x21212121
100056a4:	|  |  |     |   21212121 	.word	0x21212121
100056a8:	|  |  |     |   21212121 	.word	0x21212121
100056ac:	|  |  |     |   000d2f21 	.word	0x000d2f21
100056b0:	|  |  |     |   f246 7697 	movw	r6, #26519	; 0x6797
100056b4:	|  |  |     |   2301      	movs	r3, #1
100056b6:	|  |  |     |   f2c1 0600 	movt	r6, #4096	; 0x1000
100056ba:	|  |  |  /--|-- e026      	b.n	1000570a <cyhal_hwmgr_reserve+0x1ba>
100056bc:	|  |  |  |  |   f246 661c 	movw	r6, #26140	; 0x661c
100056c0:	|  |  |  |  |   2702      	movs	r7, #2
100056c2:	|  |  |  |  |   f2c1 0600 	movt	r6, #4096	; 0x1000
100056c6:	|  |  |  |  |   b2d4      	uxtb	r4, r2
100056c8:	|  |  |  |  |   42bc      	cmp	r4, r7
100056ca:	+--|--|--|--|-- f4bf af92 	bcs.w	100055f2 <cyhal_hwmgr_reserve+0xa2>
100056ce:	|  \--|--|--|-- e7a9      	b.n	10005624 <cyhal_hwmgr_reserve+0xd4>
100056d0:	|     |  |  \-> fa5c f182 	uxtab	r1, ip, r2
100056d4:	|     |  |  /-- e027      	b.n	10005726 <cyhal_hwmgr_reserve+0x1d6>
100056d6:	|     |  |  |   bf00      	nop
100056d8:	|     \--|--|-> be01      	bkpt	0x0001
100056da:	|        |  |   f7fc fec9 	bl	10002470 <Cy_SysLib_ExitCriticalSection>
100056de:	|        |  |   4648      	mov	r0, r9
100056e0:	|        |  |   b001      	add	sp, #4
100056e2:	|        |  |   e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
100056e6:	|        |  |   bf00      	nop
100056e8:	|        |  |   f246 5630 	movw	r6, #25904	; 0x6530
100056ec:	|        |  |   2310      	movs	r3, #16
100056ee:	|        |  |   f2c1 0600 	movt	r6, #4096	; 0x1000
100056f2:	|        +--|-- e00a      	b.n	1000570a <cyhal_hwmgr_reserve+0x1ba>
100056f4:	|        |  |   f246 661c 	movw	r6, #26140	; 0x661c
100056f8:	|        |  |   2302      	movs	r3, #2
100056fa:	|        |  |   f2c1 0600 	movt	r6, #4096	; 0x1000
100056fe:	|        +--|-- e004      	b.n	1000570a <cyhal_hwmgr_reserve+0x1ba>
10005700:	|        |  |   f246 661a 	movw	r6, #26138	; 0x661a
10005704:	|        |  |   2302      	movs	r3, #2
10005706:	|        |  |   f2c1 0600 	movt	r6, #4096	; 0x1000
1000570a:	|        \--|-> b2d2      	uxtb	r2, r2
1000570c:	|           |   429a      	cmp	r2, r3
1000570e:	+-----------|-- f4bf af70 	bcs.w	100055f2 <cyhal_hwmgr_reserve+0xa2>
10005712:	|           |   5cb1      	ldrb	r1, [r6, r2]
10005714:	|           |   fa5c f48b 	uxtab	r4, ip, fp
10005718:	|           |   3201      	adds	r2, #1
1000571a:	|           |   429a      	cmp	r2, r3
1000571c:	|           |   4421      	add	r1, r4
1000571e:	|           +-- d202      	bcs.n	10005726 <cyhal_hwmgr_reserve+0x1d6>
10005720:	|           |   5cb2      	ldrb	r2, [r6, r2]
10005722:	|           |   eb0c 0e02 	add.w	lr, ip, r2
10005726:	|           \-> fa1f f28e 	uxth.w	r2, lr
1000572a:	|               b28b      	uxth	r3, r1
1000572c:	|               4293      	cmp	r3, r2
1000572e:	\-------------- f4bf af60 	bcs.w	100055f2 <cyhal_hwmgr_reserve+0xa2>
10005732:	                f001 0207 	and.w	r2, r1, #7
10005736:	                f3c1 01c7 	ubfx	r1, r1, #3, #8
1000573a:	                2301      	movs	r3, #1
1000573c:	                5c6f      	ldrb	r7, [r5, r1]
1000573e:	                fa03 f202 	lsl.w	r2, r3, r2
10005742:	                433a      	orrs	r2, r7
10005744:	                f04f 0900 	mov.w	r9, #0
10005748:	                546a      	strb	r2, [r5, r1]
1000574a:	                f7fc fe91 	bl	10002470 <Cy_SysLib_ExitCriticalSection>
1000574e:	                4648      	mov	r0, r9
10005750:	                b001      	add	sp, #4
10005752:	                e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	...

10005758 <cyhal_syspm_init>:
10005758:	    b510      	push	{r4, lr}
1000575a:	    f242 3410 	movw	r4, #8976	; 0x2310
1000575e:	    f6c0 0400 	movt	r4, #2048	; 0x800
10005762:	    f104 0008 	add.w	r0, r4, #8
10005766:	    f7ff fa45 	bl	10004bf4 <Cy_SysPm_RegisterCallback>
1000576a:	/-- b1c0      	cbz	r0, 1000579e <cyhal_syspm_init+0x46>
1000576c:	|   f104 0024 	add.w	r0, r4, #36	; 0x24
10005770:	|   f7ff fa40 	bl	10004bf4 <Cy_SysPm_RegisterCallback>
10005774:	+-- b198      	cbz	r0, 1000579e <cyhal_syspm_init+0x46>
10005776:	|   f104 0040 	add.w	r0, r4, #64	; 0x40
1000577a:	|   f7ff fa3b 	bl	10004bf4 <Cy_SysPm_RegisterCallback>
1000577e:	+-- b170      	cbz	r0, 1000579e <cyhal_syspm_init+0x46>
10005780:	|   f104 005c 	add.w	r0, r4, #92	; 0x5c
10005784:	|   f7ff fa36 	bl	10004bf4 <Cy_SysPm_RegisterCallback>
10005788:	+-- b148      	cbz	r0, 1000579e <cyhal_syspm_init+0x46>
1000578a:	|   f242 30b0 	movw	r0, #9136	; 0x23b0
1000578e:	|   f6c0 0000 	movt	r0, #2048	; 0x800
10005792:	|   f7ff fa2f 	bl	10004bf4 <Cy_SysPm_RegisterCallback>
10005796:	|   2800      	cmp	r0, #0
10005798:	|   bf1c      	itt	ne
1000579a:	|   2000      	movne	r0, #0
1000579c:	|   bd10      	popne	{r4, pc}
1000579e:	\-> f241 7001 	movw	r0, #5889	; 0x1701
100057a2:	    f2c0 4002 	movt	r0, #1026	; 0x402
100057a6:	    bd10      	pop	{r4, pc}

100057a8 <cyhal_syspm_set_supply_voltage>:
100057a8:	/-- b100      	cbz	r0, 100057ac <cyhal_syspm_set_supply_voltage+0x4>
100057aa:	|   be01      	bkpt	0x0001
100057ac:	\-> f242 72b4 	movw	r2, #10164	; 0x27b4
100057b0:	    f6c0 0200 	movt	r2, #2048	; 0x800
100057b4:	    f842 1020 	str.w	r1, [r2, r0, lsl #2]
100057b8:	    4770      	bx	lr
	...

100057bc <cyhal_uart_putc>:
100057bc:	    b5b0      	push	{r4, r5, r7, lr}
100057be:	    460c      	mov	r4, r1
100057c0:	    4605      	mov	r5, r0
100057c2:	    f7ff fc67 	bl	10005094 <_cyhal_scb_pm_transition_pending>
100057c6:	/-- b128      	cbz	r0, 100057d4 <cyhal_uart_putc+0x18>
100057c8:	|   f241 7003 	movw	r0, #5891	; 0x1703
100057cc:	|   f2c0 4002 	movt	r0, #1026	; 0x402
100057d0:	|   bdb0      	pop	{r4, r5, r7, pc}
100057d2:	|   bf00      	nop
100057d4:	>-> 6828      	ldr	r0, [r5, #0]
100057d6:	|   4621      	mov	r1, r4
100057d8:	|   f7fd ffba 	bl	10003750 <Cy_SCB_Write>
100057dc:	|   2800      	cmp	r0, #0
100057de:	\-- d0f9      	beq.n	100057d4 <cyhal_uart_putc+0x18>
100057e0:	    2000      	movs	r0, #0
100057e2:	    bdb0      	pop	{r4, r5, r7, pc}

100057e4 <fputc>:
100057e4:	b510      	push	{r4, lr}
100057e6:	4604      	mov	r4, r0
100057e8:	b2c1      	uxtb	r1, r0
100057ea:	f242 70c0 	movw	r0, #10176	; 0x27c0
100057ee:	f6c0 0000 	movt	r0, #2048	; 0x800
100057f2:	f7ff ffe3 	bl	100057bc <cyhal_uart_putc>
100057f6:	2800      	cmp	r0, #0
100057f8:	bf18      	it	ne
100057fa:	f04f 34ff 	movne.w	r4, #4294967295
100057fe:	4620      	mov	r0, r4
10005800:	bd10      	pop	{r4, pc}
	...

10005804 <gen_cipher>:
10005804:	    b5f0      	push	{r4, r5, r6, r7, lr}
10005806:	    b081      	sub	sp, #4
10005808:	    4604      	mov	r4, r0
1000580a:	    6800      	ldr	r0, [r0, #0]
1000580c:	    7921      	ldrb	r1, [r4, #4]
1000580e:	    7802      	ldrb	r2, [r0, #0]
10005810:	    f246 665a 	movw	r6, #26202	; 0x665a
10005814:	    4051      	eors	r1, r2
10005816:	    7001      	strb	r1, [r0, #0]
10005818:	    6820      	ldr	r0, [r4, #0]
1000581a:	    7961      	ldrb	r1, [r4, #5]
1000581c:	    7842      	ldrb	r2, [r0, #1]
1000581e:	    2701      	movs	r7, #1
10005820:	    4051      	eors	r1, r2
10005822:	    7041      	strb	r1, [r0, #1]
10005824:	    6820      	ldr	r0, [r4, #0]
10005826:	    79a1      	ldrb	r1, [r4, #6]
10005828:	    7882      	ldrb	r2, [r0, #2]
1000582a:	    f2c1 0600 	movt	r6, #4096	; 0x1000
1000582e:	    4051      	eors	r1, r2
10005830:	    7081      	strb	r1, [r0, #2]
10005832:	    6820      	ldr	r0, [r4, #0]
10005834:	    79e1      	ldrb	r1, [r4, #7]
10005836:	    78c2      	ldrb	r2, [r0, #3]
10005838:	    4051      	eors	r1, r2
1000583a:	    70c1      	strb	r1, [r0, #3]
1000583c:	    6820      	ldr	r0, [r4, #0]
1000583e:	    7a21      	ldrb	r1, [r4, #8]
10005840:	    7902      	ldrb	r2, [r0, #4]
10005842:	    4051      	eors	r1, r2
10005844:	    7101      	strb	r1, [r0, #4]
10005846:	    6820      	ldr	r0, [r4, #0]
10005848:	    7a61      	ldrb	r1, [r4, #9]
1000584a:	    7942      	ldrb	r2, [r0, #5]
1000584c:	    4051      	eors	r1, r2
1000584e:	    7141      	strb	r1, [r0, #5]
10005850:	    6820      	ldr	r0, [r4, #0]
10005852:	    7aa1      	ldrb	r1, [r4, #10]
10005854:	    7982      	ldrb	r2, [r0, #6]
10005856:	    4051      	eors	r1, r2
10005858:	    7181      	strb	r1, [r0, #6]
1000585a:	    6820      	ldr	r0, [r4, #0]
1000585c:	    7ae1      	ldrb	r1, [r4, #11]
1000585e:	    79c2      	ldrb	r2, [r0, #7]
10005860:	    4051      	eors	r1, r2
10005862:	    71c1      	strb	r1, [r0, #7]
10005864:	    6820      	ldr	r0, [r4, #0]
10005866:	    7b21      	ldrb	r1, [r4, #12]
10005868:	    7a02      	ldrb	r2, [r0, #8]
1000586a:	    4051      	eors	r1, r2
1000586c:	    7201      	strb	r1, [r0, #8]
1000586e:	    6820      	ldr	r0, [r4, #0]
10005870:	    7b61      	ldrb	r1, [r4, #13]
10005872:	    7a42      	ldrb	r2, [r0, #9]
10005874:	    4051      	eors	r1, r2
10005876:	    7241      	strb	r1, [r0, #9]
10005878:	    6820      	ldr	r0, [r4, #0]
1000587a:	    7ba1      	ldrb	r1, [r4, #14]
1000587c:	    7a82      	ldrb	r2, [r0, #10]
1000587e:	    4051      	eors	r1, r2
10005880:	    7281      	strb	r1, [r0, #10]
10005882:	    6820      	ldr	r0, [r4, #0]
10005884:	    7be1      	ldrb	r1, [r4, #15]
10005886:	    7ac2      	ldrb	r2, [r0, #11]
10005888:	    4051      	eors	r1, r2
1000588a:	    72c1      	strb	r1, [r0, #11]
1000588c:	    6820      	ldr	r0, [r4, #0]
1000588e:	    7c21      	ldrb	r1, [r4, #16]
10005890:	    7b02      	ldrb	r2, [r0, #12]
10005892:	    4051      	eors	r1, r2
10005894:	    7301      	strb	r1, [r0, #12]
10005896:	    6820      	ldr	r0, [r4, #0]
10005898:	    7c61      	ldrb	r1, [r4, #17]
1000589a:	    7b42      	ldrb	r2, [r0, #13]
1000589c:	    4051      	eors	r1, r2
1000589e:	    7341      	strb	r1, [r0, #13]
100058a0:	    6820      	ldr	r0, [r4, #0]
100058a2:	    7ca1      	ldrb	r1, [r4, #18]
100058a4:	    7b82      	ldrb	r2, [r0, #14]
100058a6:	    4051      	eors	r1, r2
100058a8:	    7381      	strb	r1, [r0, #14]
100058aa:	    6820      	ldr	r0, [r4, #0]
100058ac:	    7ce1      	ldrb	r1, [r4, #19]
100058ae:	    7bc2      	ldrb	r2, [r0, #15]
100058b0:	    4051      	eors	r1, r2
100058b2:	    73c1      	strb	r1, [r0, #15]
100058b4:	/-> 6820      	ldr	r0, [r4, #0]
100058b6:	|   7801      	ldrb	r1, [r0, #0]
100058b8:	|   5c71      	ldrb	r1, [r6, r1]
100058ba:	|   7001      	strb	r1, [r0, #0]
100058bc:	|   6820      	ldr	r0, [r4, #0]
100058be:	|   7841      	ldrb	r1, [r0, #1]
100058c0:	|   5c71      	ldrb	r1, [r6, r1]
100058c2:	|   7041      	strb	r1, [r0, #1]
100058c4:	|   6820      	ldr	r0, [r4, #0]
100058c6:	|   7881      	ldrb	r1, [r0, #2]
100058c8:	|   5c71      	ldrb	r1, [r6, r1]
100058ca:	|   7081      	strb	r1, [r0, #2]
100058cc:	|   6820      	ldr	r0, [r4, #0]
100058ce:	|   78c1      	ldrb	r1, [r0, #3]
100058d0:	|   5c71      	ldrb	r1, [r6, r1]
100058d2:	|   70c1      	strb	r1, [r0, #3]
100058d4:	|   6820      	ldr	r0, [r4, #0]
100058d6:	|   7901      	ldrb	r1, [r0, #4]
100058d8:	|   5c71      	ldrb	r1, [r6, r1]
100058da:	|   7101      	strb	r1, [r0, #4]
100058dc:	|   6820      	ldr	r0, [r4, #0]
100058de:	|   7941      	ldrb	r1, [r0, #5]
100058e0:	|   5c71      	ldrb	r1, [r6, r1]
100058e2:	|   7141      	strb	r1, [r0, #5]
100058e4:	|   6820      	ldr	r0, [r4, #0]
100058e6:	|   7981      	ldrb	r1, [r0, #6]
100058e8:	|   5c71      	ldrb	r1, [r6, r1]
100058ea:	|   7181      	strb	r1, [r0, #6]
100058ec:	|   6820      	ldr	r0, [r4, #0]
100058ee:	|   79c1      	ldrb	r1, [r0, #7]
100058f0:	|   5c71      	ldrb	r1, [r6, r1]
100058f2:	|   71c1      	strb	r1, [r0, #7]
100058f4:	|   6820      	ldr	r0, [r4, #0]
100058f6:	|   7a01      	ldrb	r1, [r0, #8]
100058f8:	|   5c71      	ldrb	r1, [r6, r1]
100058fa:	|   7201      	strb	r1, [r0, #8]
100058fc:	|   6820      	ldr	r0, [r4, #0]
100058fe:	|   7a41      	ldrb	r1, [r0, #9]
10005900:	|   5c71      	ldrb	r1, [r6, r1]
10005902:	|   7241      	strb	r1, [r0, #9]
10005904:	|   6820      	ldr	r0, [r4, #0]
10005906:	|   7a81      	ldrb	r1, [r0, #10]
10005908:	|   5c71      	ldrb	r1, [r6, r1]
1000590a:	|   7281      	strb	r1, [r0, #10]
1000590c:	|   6820      	ldr	r0, [r4, #0]
1000590e:	|   7ac1      	ldrb	r1, [r0, #11]
10005910:	|   5c71      	ldrb	r1, [r6, r1]
10005912:	|   72c1      	strb	r1, [r0, #11]
10005914:	|   6820      	ldr	r0, [r4, #0]
10005916:	|   7b01      	ldrb	r1, [r0, #12]
10005918:	|   5c71      	ldrb	r1, [r6, r1]
1000591a:	|   7301      	strb	r1, [r0, #12]
1000591c:	|   6820      	ldr	r0, [r4, #0]
1000591e:	|   7b41      	ldrb	r1, [r0, #13]
10005920:	|   5c71      	ldrb	r1, [r6, r1]
10005922:	|   7341      	strb	r1, [r0, #13]
10005924:	|   6820      	ldr	r0, [r4, #0]
10005926:	|   7b81      	ldrb	r1, [r0, #14]
10005928:	|   5c71      	ldrb	r1, [r6, r1]
1000592a:	|   7381      	strb	r1, [r0, #14]
1000592c:	|   6820      	ldr	r0, [r4, #0]
1000592e:	|   7bc1      	ldrb	r1, [r0, #15]
10005930:	|   5c71      	ldrb	r1, [r6, r1]
10005932:	|   73c1      	strb	r1, [r0, #15]
10005934:	|   6820      	ldr	r0, [r4, #0]
10005936:	|   7942      	ldrb	r2, [r0, #5]
10005938:	|   7841      	ldrb	r1, [r0, #1]
1000593a:	|   7042      	strb	r2, [r0, #1]
1000593c:	|   7a43      	ldrb	r3, [r0, #9]
1000593e:	|   6822      	ldr	r2, [r4, #0]
10005940:	|   7b40      	ldrb	r0, [r0, #13]
10005942:	|   7153      	strb	r3, [r2, #5]
10005944:	|   6822      	ldr	r2, [r4, #0]
10005946:	|   7250      	strb	r0, [r2, #9]
10005948:	|   6820      	ldr	r0, [r4, #0]
1000594a:	|   7341      	strb	r1, [r0, #13]
1000594c:	|   6820      	ldr	r0, [r4, #0]
1000594e:	|   7a82      	ldrb	r2, [r0, #10]
10005950:	|   7881      	ldrb	r1, [r0, #2]
10005952:	|   7082      	strb	r2, [r0, #2]
10005954:	|   7b83      	ldrb	r3, [r0, #14]
10005956:	|   6822      	ldr	r2, [r4, #0]
10005958:	|   7980      	ldrb	r0, [r0, #6]
1000595a:	|   7193      	strb	r3, [r2, #6]
1000595c:	|   6822      	ldr	r2, [r4, #0]
1000595e:	|   7291      	strb	r1, [r2, #10]
10005960:	|   6821      	ldr	r1, [r4, #0]
10005962:	|   7388      	strb	r0, [r1, #14]
10005964:	|   6820      	ldr	r0, [r4, #0]
10005966:	|   7bc2      	ldrb	r2, [r0, #15]
10005968:	|   78c1      	ldrb	r1, [r0, #3]
1000596a:	|   70c2      	strb	r2, [r0, #3]
1000596c:	|   6822      	ldr	r2, [r4, #0]
1000596e:	|   79c3      	ldrb	r3, [r0, #7]
10005970:	|   7ac0      	ldrb	r0, [r0, #11]
10005972:	|   71d1      	strb	r1, [r2, #7]
10005974:	|   6821      	ldr	r1, [r4, #0]
10005976:	|   72cb      	strb	r3, [r1, #11]
10005978:	|   6821      	ldr	r1, [r4, #0]
1000597a:	|   73c8      	strb	r0, [r1, #15]
1000597c:	|   4620      	mov	r0, r4
1000597e:	|   f000 fb25 	bl	10005fcc <mixColumns>
10005982:	|   b2fd      	uxtb	r5, r7
10005984:	|   4620      	mov	r0, r4
10005986:	|   4629      	mov	r1, r5
10005988:	|   f7ff fcfe 	bl	10005388 <addRoundKey>
1000598c:	|   2d09      	cmp	r5, #9
1000598e:	|   f107 0701 	add.w	r7, r7, #1
10005992:	\-- d38f      	bcc.n	100058b4 <gen_cipher+0xb0>
10005994:	    6820      	ldr	r0, [r4, #0]
10005996:	    7801      	ldrb	r1, [r0, #0]
10005998:	    5c71      	ldrb	r1, [r6, r1]
1000599a:	    7001      	strb	r1, [r0, #0]
1000599c:	    6820      	ldr	r0, [r4, #0]
1000599e:	    7841      	ldrb	r1, [r0, #1]
100059a0:	    5c71      	ldrb	r1, [r6, r1]
100059a2:	    7041      	strb	r1, [r0, #1]
100059a4:	    6820      	ldr	r0, [r4, #0]
100059a6:	    7881      	ldrb	r1, [r0, #2]
100059a8:	    5c71      	ldrb	r1, [r6, r1]
100059aa:	    7081      	strb	r1, [r0, #2]
100059ac:	    6820      	ldr	r0, [r4, #0]
100059ae:	    78c1      	ldrb	r1, [r0, #3]
100059b0:	    5c71      	ldrb	r1, [r6, r1]
100059b2:	    70c1      	strb	r1, [r0, #3]
100059b4:	    6820      	ldr	r0, [r4, #0]
100059b6:	    7901      	ldrb	r1, [r0, #4]
100059b8:	    5c71      	ldrb	r1, [r6, r1]
100059ba:	    7101      	strb	r1, [r0, #4]
100059bc:	    6820      	ldr	r0, [r4, #0]
100059be:	    7941      	ldrb	r1, [r0, #5]
100059c0:	    5c71      	ldrb	r1, [r6, r1]
100059c2:	    7141      	strb	r1, [r0, #5]
100059c4:	    6820      	ldr	r0, [r4, #0]
100059c6:	    7981      	ldrb	r1, [r0, #6]
100059c8:	    5c71      	ldrb	r1, [r6, r1]
100059ca:	    7181      	strb	r1, [r0, #6]
100059cc:	    6820      	ldr	r0, [r4, #0]
100059ce:	    79c1      	ldrb	r1, [r0, #7]
100059d0:	    5c71      	ldrb	r1, [r6, r1]
100059d2:	    71c1      	strb	r1, [r0, #7]
100059d4:	    6820      	ldr	r0, [r4, #0]
100059d6:	    7a01      	ldrb	r1, [r0, #8]
100059d8:	    5c71      	ldrb	r1, [r6, r1]
100059da:	    7201      	strb	r1, [r0, #8]
100059dc:	    6820      	ldr	r0, [r4, #0]
100059de:	    7a41      	ldrb	r1, [r0, #9]
100059e0:	    5c71      	ldrb	r1, [r6, r1]
100059e2:	    7241      	strb	r1, [r0, #9]
100059e4:	    6820      	ldr	r0, [r4, #0]
100059e6:	    7a81      	ldrb	r1, [r0, #10]
100059e8:	    5c71      	ldrb	r1, [r6, r1]
100059ea:	    7281      	strb	r1, [r0, #10]
100059ec:	    6820      	ldr	r0, [r4, #0]
100059ee:	    7ac1      	ldrb	r1, [r0, #11]
100059f0:	    5c71      	ldrb	r1, [r6, r1]
100059f2:	    72c1      	strb	r1, [r0, #11]
100059f4:	    6820      	ldr	r0, [r4, #0]
100059f6:	    7b01      	ldrb	r1, [r0, #12]
100059f8:	    5c71      	ldrb	r1, [r6, r1]
100059fa:	    7301      	strb	r1, [r0, #12]
100059fc:	    6820      	ldr	r0, [r4, #0]
100059fe:	    7b41      	ldrb	r1, [r0, #13]
10005a00:	    5c71      	ldrb	r1, [r6, r1]
10005a02:	    7341      	strb	r1, [r0, #13]
10005a04:	    6820      	ldr	r0, [r4, #0]
10005a06:	    7b81      	ldrb	r1, [r0, #14]
10005a08:	    5c71      	ldrb	r1, [r6, r1]
10005a0a:	    7381      	strb	r1, [r0, #14]
10005a0c:	    6820      	ldr	r0, [r4, #0]
10005a0e:	    7bc1      	ldrb	r1, [r0, #15]
10005a10:	    5c71      	ldrb	r1, [r6, r1]
10005a12:	    73c1      	strb	r1, [r0, #15]
10005a14:	    6820      	ldr	r0, [r4, #0]
10005a16:	    7942      	ldrb	r2, [r0, #5]
10005a18:	    7841      	ldrb	r1, [r0, #1]
10005a1a:	    7042      	strb	r2, [r0, #1]
10005a1c:	    7a43      	ldrb	r3, [r0, #9]
10005a1e:	    6822      	ldr	r2, [r4, #0]
10005a20:	    7b40      	ldrb	r0, [r0, #13]
10005a22:	    7153      	strb	r3, [r2, #5]
10005a24:	    6822      	ldr	r2, [r4, #0]
10005a26:	    7250      	strb	r0, [r2, #9]
10005a28:	    6820      	ldr	r0, [r4, #0]
10005a2a:	    7341      	strb	r1, [r0, #13]
10005a2c:	    6820      	ldr	r0, [r4, #0]
10005a2e:	    7a82      	ldrb	r2, [r0, #10]
10005a30:	    7881      	ldrb	r1, [r0, #2]
10005a32:	    7082      	strb	r2, [r0, #2]
10005a34:	    7b83      	ldrb	r3, [r0, #14]
10005a36:	    6822      	ldr	r2, [r4, #0]
10005a38:	    7980      	ldrb	r0, [r0, #6]
10005a3a:	    7193      	strb	r3, [r2, #6]
10005a3c:	    6822      	ldr	r2, [r4, #0]
10005a3e:	    7291      	strb	r1, [r2, #10]
10005a40:	    6821      	ldr	r1, [r4, #0]
10005a42:	    7388      	strb	r0, [r1, #14]
10005a44:	    6820      	ldr	r0, [r4, #0]
10005a46:	    7bc2      	ldrb	r2, [r0, #15]
10005a48:	    78c1      	ldrb	r1, [r0, #3]
10005a4a:	    70c2      	strb	r2, [r0, #3]
10005a4c:	    6822      	ldr	r2, [r4, #0]
10005a4e:	    79c3      	ldrb	r3, [r0, #7]
10005a50:	    7ac0      	ldrb	r0, [r0, #11]
10005a52:	    71d1      	strb	r1, [r2, #7]
10005a54:	    6821      	ldr	r1, [r4, #0]
10005a56:	    72cb      	strb	r3, [r1, #11]
10005a58:	    6821      	ldr	r1, [r4, #0]
10005a5a:	    73c8      	strb	r0, [r1, #15]
10005a5c:	    6820      	ldr	r0, [r4, #0]
10005a5e:	    f894 10a4 	ldrb.w	r1, [r4, #164]	; 0xa4
10005a62:	    7802      	ldrb	r2, [r0, #0]
10005a64:	    4051      	eors	r1, r2
10005a66:	    7001      	strb	r1, [r0, #0]
10005a68:	    6820      	ldr	r0, [r4, #0]
10005a6a:	    f894 10a5 	ldrb.w	r1, [r4, #165]	; 0xa5
10005a6e:	    7842      	ldrb	r2, [r0, #1]
10005a70:	    4051      	eors	r1, r2
10005a72:	    7041      	strb	r1, [r0, #1]
10005a74:	    6820      	ldr	r0, [r4, #0]
10005a76:	    f894 10a6 	ldrb.w	r1, [r4, #166]	; 0xa6
10005a7a:	    7882      	ldrb	r2, [r0, #2]
10005a7c:	    4051      	eors	r1, r2
10005a7e:	    7081      	strb	r1, [r0, #2]
10005a80:	    6820      	ldr	r0, [r4, #0]
10005a82:	    f894 10a7 	ldrb.w	r1, [r4, #167]	; 0xa7
10005a86:	    78c2      	ldrb	r2, [r0, #3]
10005a88:	    4051      	eors	r1, r2
10005a8a:	    70c1      	strb	r1, [r0, #3]
10005a8c:	    6820      	ldr	r0, [r4, #0]
10005a8e:	    f894 10a8 	ldrb.w	r1, [r4, #168]	; 0xa8
10005a92:	    7902      	ldrb	r2, [r0, #4]
10005a94:	    4051      	eors	r1, r2
10005a96:	    7101      	strb	r1, [r0, #4]
10005a98:	    6820      	ldr	r0, [r4, #0]
10005a9a:	    f894 10a9 	ldrb.w	r1, [r4, #169]	; 0xa9
10005a9e:	    7942      	ldrb	r2, [r0, #5]
10005aa0:	    4051      	eors	r1, r2
10005aa2:	    7141      	strb	r1, [r0, #5]
10005aa4:	    6820      	ldr	r0, [r4, #0]
10005aa6:	    f894 10aa 	ldrb.w	r1, [r4, #170]	; 0xaa
10005aaa:	    7982      	ldrb	r2, [r0, #6]
10005aac:	    4051      	eors	r1, r2
10005aae:	    7181      	strb	r1, [r0, #6]
10005ab0:	    6820      	ldr	r0, [r4, #0]
10005ab2:	    f894 10ab 	ldrb.w	r1, [r4, #171]	; 0xab
10005ab6:	    79c2      	ldrb	r2, [r0, #7]
10005ab8:	    4051      	eors	r1, r2
10005aba:	    71c1      	strb	r1, [r0, #7]
10005abc:	    6820      	ldr	r0, [r4, #0]
10005abe:	    f894 10ac 	ldrb.w	r1, [r4, #172]	; 0xac
10005ac2:	    7a02      	ldrb	r2, [r0, #8]
10005ac4:	    4051      	eors	r1, r2
10005ac6:	    7201      	strb	r1, [r0, #8]
10005ac8:	    6820      	ldr	r0, [r4, #0]
10005aca:	    f894 10ad 	ldrb.w	r1, [r4, #173]	; 0xad
10005ace:	    7a42      	ldrb	r2, [r0, #9]
10005ad0:	    4051      	eors	r1, r2
10005ad2:	    7241      	strb	r1, [r0, #9]
10005ad4:	    6820      	ldr	r0, [r4, #0]
10005ad6:	    f894 10ae 	ldrb.w	r1, [r4, #174]	; 0xae
10005ada:	    7a82      	ldrb	r2, [r0, #10]
10005adc:	    4051      	eors	r1, r2
10005ade:	    7281      	strb	r1, [r0, #10]
10005ae0:	    6820      	ldr	r0, [r4, #0]
10005ae2:	    f894 10af 	ldrb.w	r1, [r4, #175]	; 0xaf
10005ae6:	    7ac2      	ldrb	r2, [r0, #11]
10005ae8:	    4051      	eors	r1, r2
10005aea:	    72c1      	strb	r1, [r0, #11]
10005aec:	    6820      	ldr	r0, [r4, #0]
10005aee:	    f894 10b0 	ldrb.w	r1, [r4, #176]	; 0xb0
10005af2:	    7b02      	ldrb	r2, [r0, #12]
10005af4:	    4051      	eors	r1, r2
10005af6:	    7301      	strb	r1, [r0, #12]
10005af8:	    6820      	ldr	r0, [r4, #0]
10005afa:	    f894 10b1 	ldrb.w	r1, [r4, #177]	; 0xb1
10005afe:	    7b42      	ldrb	r2, [r0, #13]
10005b00:	    4051      	eors	r1, r2
10005b02:	    7341      	strb	r1, [r0, #13]
10005b04:	    6820      	ldr	r0, [r4, #0]
10005b06:	    f894 10b2 	ldrb.w	r1, [r4, #178]	; 0xb2
10005b0a:	    7b82      	ldrb	r2, [r0, #14]
10005b0c:	    4051      	eors	r1, r2
10005b0e:	    7381      	strb	r1, [r0, #14]
10005b10:	    6820      	ldr	r0, [r4, #0]
10005b12:	    f894 10b3 	ldrb.w	r1, [r4, #179]	; 0xb3
10005b16:	    7bc2      	ldrb	r2, [r0, #15]
10005b18:	    4051      	eors	r1, r2
10005b1a:	    73c1      	strb	r1, [r0, #15]
10005b1c:	    b001      	add	sp, #4
10005b1e:	    bdf0      	pop	{r4, r5, r6, r7, pc}

10005b20 <init_cycfg_all>:
10005b20:	b580      	push	{r7, lr}
10005b22:	f000 f8c1 	bl	10005ca8 <init_cycfg_system>
10005b26:	f000 f809 	bl	10005b3c <init_cycfg_clocks>
10005b2a:	f000 f8b5 	bl	10005c98 <init_cycfg_routing>
10005b2e:	f000 f81b 	bl	10005b68 <init_cycfg_peripherals>
10005b32:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
10005b36:	f000 b81d 	b.w	10005b74 <init_cycfg_pins>
	...

10005b3c <init_cycfg_clocks>:
10005b3c:	b580      	push	{r7, lr}
10005b3e:	2000      	movs	r0, #0
10005b40:	2100      	movs	r1, #0
10005b42:	f7fe fb71 	bl	10004228 <Cy_SysClk_PeriphDisableDivider>
10005b46:	2000      	movs	r0, #0
10005b48:	2100      	movs	r1, #0
10005b4a:	22ff      	movs	r2, #255	; 0xff
10005b4c:	f7fe fbd4 	bl	100042f8 <Cy_SysClk_PeriphSetDivider>
10005b50:	2000      	movs	r0, #0
10005b52:	2100      	movs	r1, #0
10005b54:	f7fe fb94 	bl	10004280 <Cy_SysClk_PeriphEnableDivider>
10005b58:	f246 20cf 	movw	r0, #25295	; 0x62cf
10005b5c:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005b60:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
10005b64:	f7ff bcf4 	b.w	10005550 <cyhal_hwmgr_reserve>

10005b68 <init_cycfg_peripherals>:
10005b68:	202f      	movs	r0, #47	; 0x2f
10005b6a:	2100      	movs	r1, #0
10005b6c:	2200      	movs	r2, #0
10005b6e:	f7fe bb27 	b.w	100041c0 <Cy_SysClk_PeriphAssignDivider>
	...

10005b74 <init_cycfg_pins>:
10005b74:	b5b0      	push	{r4, r5, r7, lr}
10005b76:	f240 3400 	movw	r4, #768	; 0x300
10005b7a:	f2c4 0431 	movt	r4, #16433	; 0x4031
10005b7e:	f5a4 7540 	sub.w	r5, r4, #768	; 0x300
10005b82:	f246 328c 	movw	r2, #25484	; 0x638c
10005b86:	f2c1 0200 	movt	r2, #4096	; 0x1000
10005b8a:	4628      	mov	r0, r5
10005b8c:	2100      	movs	r1, #0
10005b8e:	f7fd fa3f 	bl	10003010 <Cy_GPIO_Pin_Init>
10005b92:	f246 30c0 	movw	r0, #25536	; 0x63c0
10005b96:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005b9a:	f7ff fcd9 	bl	10005550 <cyhal_hwmgr_reserve>
10005b9e:	f246 32c4 	movw	r2, #25540	; 0x63c4
10005ba2:	f2c1 0200 	movt	r2, #4096	; 0x1000
10005ba6:	4628      	mov	r0, r5
10005ba8:	2101      	movs	r1, #1
10005baa:	f7fd fa31 	bl	10003010 <Cy_GPIO_Pin_Init>
10005bae:	f246 30f8 	movw	r0, #25592	; 0x63f8
10005bb2:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005bb6:	f7ff fccb 	bl	10005550 <cyhal_hwmgr_reserve>
10005bba:	f246 20e1 	movw	r0, #25313	; 0x62e1
10005bbe:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005bc2:	f7ff fcc5 	bl	10005550 <cyhal_hwmgr_reserve>
10005bc6:	f246 3254 	movw	r2, #25428	; 0x6354
10005bca:	f2c1 0200 	movt	r2, #4096	; 0x1000
10005bce:	4620      	mov	r0, r4
10005bd0:	2104      	movs	r1, #4
10005bd2:	f7fd fa1d 	bl	10003010 <Cy_GPIO_Pin_Init>
10005bd6:	f246 3088 	movw	r0, #25480	; 0x6388
10005bda:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005bde:	f7ff fcb7 	bl	10005550 <cyhal_hwmgr_reserve>
10005be2:	f246 321c 	movw	r2, #25372	; 0x631c
10005be6:	f2c1 0200 	movt	r2, #4096	; 0x1000
10005bea:	4620      	mov	r0, r4
10005bec:	2106      	movs	r1, #6
10005bee:	f7fd fa0f 	bl	10003010 <Cy_GPIO_Pin_Init>
10005bf2:	f246 3050 	movw	r0, #25424	; 0x6350
10005bf6:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005bfa:	f7ff fca9 	bl	10005550 <cyhal_hwmgr_reserve>
10005bfe:	f246 22e4 	movw	r2, #25316	; 0x62e4
10005c02:	f2c1 0200 	movt	r2, #4096	; 0x1000
10005c06:	4620      	mov	r0, r4
10005c08:	2107      	movs	r1, #7
10005c0a:	f7fd fa01 	bl	10003010 <Cy_GPIO_Pin_Init>
10005c0e:	f246 3018 	movw	r0, #25368	; 0x6318
10005c12:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005c16:	f7ff fc9b 	bl	10005550 <cyhal_hwmgr_reserve>
10005c1a:	f246 20c0 	movw	r0, #25280	; 0x62c0
10005c1e:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005c22:	f7ff fc95 	bl	10005550 <cyhal_hwmgr_reserve>
10005c26:	f246 20c3 	movw	r0, #25283	; 0x62c3
10005c2a:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005c2e:	f7ff fc8f 	bl	10005550 <cyhal_hwmgr_reserve>
10005c32:	f246 20c6 	movw	r0, #25286	; 0x62c6
10005c36:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005c3a:	f7ff fc89 	bl	10005550 <cyhal_hwmgr_reserve>
10005c3e:	f246 20c9 	movw	r0, #25289	; 0x62c9
10005c42:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005c46:	f7ff fc83 	bl	10005550 <cyhal_hwmgr_reserve>
10005c4a:	f246 20cc 	movw	r0, #25292	; 0x62cc
10005c4e:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005c52:	f7ff fc7d 	bl	10005550 <cyhal_hwmgr_reserve>
10005c56:	f246 20d2 	movw	r0, #25298	; 0x62d2
10005c5a:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005c5e:	f7ff fc77 	bl	10005550 <cyhal_hwmgr_reserve>
10005c62:	f246 20d5 	movw	r0, #25301	; 0x62d5
10005c66:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005c6a:	f7ff fc71 	bl	10005550 <cyhal_hwmgr_reserve>
10005c6e:	f246 20d8 	movw	r0, #25304	; 0x62d8
10005c72:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005c76:	f7ff fc6b 	bl	10005550 <cyhal_hwmgr_reserve>
10005c7a:	f246 20db 	movw	r0, #25307	; 0x62db
10005c7e:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005c82:	f7ff fc65 	bl	10005550 <cyhal_hwmgr_reserve>
10005c86:	f246 20de 	movw	r0, #25310	; 0x62de
10005c8a:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005c8e:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
10005c92:	f7ff bc5d 	b.w	10005550 <cyhal_hwmgr_reserve>
	...

10005c98 <init_cycfg_routing>:
10005c98:	f242 0008 	movw	r0, #8200	; 0x2008
10005c9c:	f2c4 0030 	movt	r0, #16432	; 0x4030
10005ca0:	2133      	movs	r1, #51	; 0x33
10005ca2:	6001      	str	r1, [r0, #0]
10005ca4:	6081      	str	r1, [r0, #8]
10005ca6:	4770      	bx	lr

10005ca8 <init_cycfg_system>:
10005ca8:	             b5b0      	push	{r4, r5, r7, lr}
10005caa:	             b082      	sub	sp, #8
10005cac:	             2000      	movs	r0, #0
10005cae:	             2196      	movs	r1, #150	; 0x96
10005cb0:	             f7fe fde6 	bl	10004880 <Cy_SysLib_SetWaitStates>
10005cb4:	             f7fe fdba 	bl	1000482c <Cy_SysLib_GetResetReason>
10005cb8:	      /----- b9e0      	cbnz	r0, 10005cf4 <init_cycfg_system+0x4c>
10005cba:	      |      f64f 7400 	movw	r4, #65280	; 0xff00
10005cbe:	      |      f2c4 0427 	movt	r4, #16423	; 0x4027
10005cc2:	      |      6825      	ldr	r5, [r4, #0]
10005cc4:	      |      f7fe fdce 	bl	10004864 <Cy_SysLib_ResetBackupDomain>
10005cc8:	      |  /-- b150      	cbz	r0, 10005ce0 <init_cycfg_system+0x38>
10005cca:	      |  |   2001      	movs	r0, #1
10005ccc:	      |  |   f7fe fd48 	bl	10004760 <Cy_SysLib_DelayUs>
10005cd0:	      |  |   2048      	movs	r0, #72	; 0x48
10005cd2:	      |  |   f2c4 0027 	movt	r0, #16423	; 0x4027
10005cd6:	      |  |   6800      	ldr	r0, [r0, #0]
10005cd8:	      |  |   f1b0 3fff 	cmp.w	r0, #4294967295
10005cdc:	/-----|--|-- f340 80f2 	ble.w	10005ec4 <init_cycfg_system+0x21c>
10005ce0:	|     |  \-> f005 003f 	and.w	r0, r5, #63	; 0x3f
10005ce4:	|     |      6020      	str	r0, [r4, #0]
10005ce6:	|     |      f7fe fa41 	bl	1000416c <Cy_SysClk_IloDisable>
10005cea:	|     |      f7fe fa55 	bl	10004198 <Cy_SysClk_IloEnable>
10005cee:	|     |      2001      	movs	r0, #1
10005cf0:	|     |      f7fe fa5c 	bl	100041ac <Cy_SysClk_IloHibernateOn>
10005cf4:	|     \----> 2001      	movs	r0, #1
10005cf6:	|            f7fe fe29 	bl	1000494c <Cy_SysPm_LdoSetVoltage>
10005cfa:	|            f7fe ffe9 	bl	10004cd0 <Cy_SysPm_SystemSetNormalRegulatorCurrent>
10005cfe:	|            f7fe ff6f 	bl	10004be0 <Cy_SysPm_PmicUnlock>
10005d02:	|            f7fe ff59 	bl	10004bb8 <Cy_SysPm_PmicDisableOutput>
10005d06:	|            2000      	movs	r0, #0
10005d08:	|            2100      	movs	r1, #0
10005d0a:	|            f7fd fd95 	bl	10003838 <Cy_SysClk_ClkHfSetDivider>
10005d0e:	|            2000      	movs	r0, #0
10005d10:	|            f7fd fd48 	bl	100037a4 <Cy_SysClk_ClkFastSetDivider>
10005d14:	|            2001      	movs	r0, #1
10005d16:	|            f7fd feaf 	bl	10003a78 <Cy_SysClk_ClkPeriSetDivider>
10005d1a:	|            2000      	movs	r0, #0
10005d1c:	|            f7fd febc 	bl	10003a98 <Cy_SysClk_ClkSlowSetDivider>
10005d20:	|            f242 70b8 	movw	r0, #10168	; 0x27b8
10005d24:	|            f6c0 0000 	movt	r0, #2048	; 0x800
10005d28:	|            6800      	ldr	r0, [r0, #0]
10005d2a:	|            f890 403f 	ldrb.w	r4, [r0, #63]	; 0x3f
10005d2e:	|     /----- b124      	cbz	r4, 10005d3a <init_cycfg_system+0x92>
10005d30:	|     |  /-> 4620      	mov	r0, r4
10005d32:	|     |  |   f7fe fb19 	bl	10004368 <Cy_SysClk_PllDisable>
10005d36:	|     |  |   3c01      	subs	r4, #1
10005d38:	|     |  \-- d1fa      	bne.n	10005d30 <init_cycfg_system+0x88>
10005d3a:	|     \----> 2001      	movs	r0, #1
10005d3c:	|            2100      	movs	r1, #0
10005d3e:	|            2500      	movs	r5, #0
10005d40:	|            f7fd fe60 	bl	10003a04 <Cy_SysClk_ClkPathSetSource>
10005d44:	|            2000      	movs	r0, #0
10005d46:	|            f7fd fd63 	bl	10003810 <Cy_SysClk_ClkHfGetSource>
10005d4a:	|        /-- b950      	cbnz	r0, 10005d62 <init_cycfg_system+0xba>
10005d4c:	|        |   2000      	movs	r0, #0
10005d4e:	|        |   f7fd fe3d 	bl	100039cc <Cy_SysClk_ClkPathGetSource>
10005d52:	|        |   f240 1111 	movw	r1, #273	; 0x111
10005d56:	|        |   4288      	cmp	r0, r1
10005d58:	|        +-- d103      	bne.n	10005d62 <init_cycfg_system+0xba>
10005d5a:	|        |   2000      	movs	r0, #0
10005d5c:	|        |   2101      	movs	r1, #1
10005d5e:	|        |   f7fd fd87 	bl	10003870 <Cy_SysClk_ClkHfSetSource>
10005d62:	|        \-> f7fe f87b 	bl	10003e5c <Cy_SysClk_FllDisable>
10005d66:	|            2000      	movs	r0, #0
10005d68:	|            2100      	movs	r1, #0
10005d6a:	|            f7fd fe4b 	bl	10003a04 <Cy_SysClk_ClkPathSetSource>
10005d6e:	|            2000      	movs	r0, #0
10005d70:	|            2100      	movs	r1, #0
10005d72:	|            f7fd fd7d 	bl	10003870 <Cy_SysClk_ClkHfSetSource>
10005d76:	|            2400      	movs	r4, #0
10005d78:	|            f2c4 0431 	movt	r4, #16433	; 0x4031
10005d7c:	|            4620      	mov	r0, r4
10005d7e:	|            2100      	movs	r1, #0
10005d80:	|            2200      	movs	r2, #0
10005d82:	|            2300      	movs	r3, #0
10005d84:	|            9500      	str	r5, [sp, #0]
10005d86:	|            f7fd f8e1 	bl	10002f4c <Cy_GPIO_Pin_FastInit>
10005d8a:	|            4620      	mov	r0, r4
10005d8c:	|            2101      	movs	r1, #1
10005d8e:	|            2200      	movs	r2, #0
10005d90:	|            2300      	movs	r3, #0
10005d92:	|            9500      	str	r5, [sp, #0]
10005d94:	|            f7fd f8da 	bl	10002f4c <Cy_GPIO_Pin_FastInit>
10005d98:	|            f244 2040 	movw	r0, #16960	; 0x4240
10005d9c:	|            f2c0 000f 	movt	r0, #15
10005da0:	|            f7fe fc78 	bl	10004694 <Cy_SysClk_WcoEnable>
10005da4:	|            2800      	cmp	r0, #0
10005da6:	|  /-------- f040 8089 	bne.w	10005ebc <init_cycfg_system+0x214>
10005daa:	|  |         2001      	movs	r0, #1
10005dac:	|  |         f7fd fd7c 	bl	100038a8 <Cy_SysClk_ClkLfSetSource>
10005db0:	|  |         2000      	movs	r0, #0
10005db2:	|  |         f7fd fcf7 	bl	100037a4 <Cy_SysClk_ClkFastSetDivider>
10005db6:	|  |         2000      	movs	r0, #0
10005db8:	|  |         f7fd fe5e 	bl	10003a78 <Cy_SysClk_ClkPeriSetDivider>
10005dbc:	|  |         2000      	movs	r0, #0
10005dbe:	|  |         f7fd fe6b 	bl	10003a98 <Cy_SysClk_ClkSlowSetDivider>
10005dc2:	|  |         2001      	movs	r0, #1
10005dc4:	|  |         2100      	movs	r1, #0
10005dc6:	|  |         f7fd fe1d 	bl	10003a04 <Cy_SysClk_ClkPathSetSource>
10005dca:	|  |         2000      	movs	r0, #0
10005dcc:	|  |         2100      	movs	r1, #0
10005dce:	|  |         f7fd fe19 	bl	10003a04 <Cy_SysClk_ClkPathSetSource>
10005dd2:	|  |         2002      	movs	r0, #2
10005dd4:	|  |         2100      	movs	r1, #0
10005dd6:	|  |         f7fd fe15 	bl	10003a04 <Cy_SysClk_ClkPathSetSource>
10005dda:	|  |         2003      	movs	r0, #3
10005ddc:	|  |         2100      	movs	r1, #0
10005dde:	|  |         f7fd fe11 	bl	10003a04 <Cy_SysClk_ClkPathSetSource>
10005de2:	|  |         2004      	movs	r0, #4
10005de4:	|  |         2100      	movs	r1, #0
10005de6:	|  |         f7fd fe0d 	bl	10003a04 <Cy_SysClk_ClkPathSetSource>
10005dea:	|  |         2005      	movs	r0, #5
10005dec:	|  |         2100      	movs	r1, #0
10005dee:	|  |         f7fd fe09 	bl	10003a04 <Cy_SysClk_ClkPathSetSource>
10005df2:	|  |         f246 705c 	movw	r0, #26460	; 0x675c
10005df6:	|  |         f2c1 0000 	movt	r0, #4096	; 0x1000
10005dfa:	|  |         f7fe f93b 	bl	10004074 <Cy_SysClk_FllManualConfigure>
10005dfe:	|  |         2800      	cmp	r0, #0
10005e00:	|  |  /----- d154      	bne.n	10005eac <init_cycfg_system+0x204>
10005e02:	|  |  |      f640 5040 	movw	r0, #3392	; 0xd40
10005e06:	|  |  |      f2c0 0003 	movt	r0, #3
10005e0a:	|  |  |      f7fe f83b 	bl	10003e84 <Cy_SysClk_FllEnable>
10005e0e:	|  |  |      2800      	cmp	r0, #0
10005e10:	|  |  +----- d14c      	bne.n	10005eac <init_cycfg_system+0x204>
10005e12:	|  |  |      2000      	movs	r0, #0
10005e14:	|  |  |      2100      	movs	r1, #0
10005e16:	|  |  |      f7fd fd2b 	bl	10003870 <Cy_SysClk_ClkHfSetSource>
10005e1a:	|  |  |      2000      	movs	r0, #0
10005e1c:	|  |  |      2100      	movs	r1, #0
10005e1e:	|  |  |      f7fd fd0b 	bl	10003838 <Cy_SysClk_ClkHfSetDivider>
10005e22:	|  |  |      f246 7182 	movw	r1, #26498	; 0x6782
10005e26:	|  |  |      f2c1 0100 	movt	r1, #4096	; 0x1000
10005e2a:	|  |  |      2001      	movs	r0, #1
10005e2c:	|  |  |      f7fe fbe2 	bl	100045f4 <Cy_SysClk_PllManualConfigure>
10005e30:	|  |  |      2800      	cmp	r0, #0
10005e32:	|  |  |  /-- d13f      	bne.n	10005eb4 <init_cycfg_system+0x20c>
10005e34:	|  |  |  |   2001      	movs	r0, #1
10005e36:	|  |  |  |   f242 7110 	movw	r1, #10000	; 0x2710
10005e3a:	|  |  |  |   f7fe fabb 	bl	100043b4 <Cy_SysClk_PllEnable>
10005e3e:	|  |  |  +-- bbc8      	cbnz	r0, 10005eb4 <init_cycfg_system+0x20c>
10005e40:	|  |  |  |   2000      	movs	r0, #0
10005e42:	|  |  |  |   f7fd fc97 	bl	10003774 <Cy_SysClk_ClkBakSetSource>
10005e46:	|  |  |  |   f7fe f9a7 	bl	10004198 <Cy_SysClk_IloEnable>
10005e4a:	|  |  |  |   2001      	movs	r0, #1
10005e4c:	|  |  |  |   f7fe f9ae 	bl	100041ac <Cy_SysClk_IloHibernateOn>
10005e50:	|  |  |  |   2000      	movs	r0, #0
10005e52:	|  |  |  |   2164      	movs	r1, #100	; 0x64
10005e54:	|  |  |  |   f7fe fd14 	bl	10004880 <Cy_SysLib_SetWaitStates>
10005e58:	|  |  |  |   f7ff f8a4 	bl	10004fa4 <SystemCoreClockUpdate>
10005e5c:	|  |  |  |   f246 7070 	movw	r0, #26480	; 0x6770
10005e60:	|  |  |  |   f2c1 0000 	movt	r0, #4096	; 0x1000
10005e64:	|  |  |  |   f7ff fb74 	bl	10005550 <cyhal_hwmgr_reserve>
10005e68:	|  |  |  |   f246 7073 	movw	r0, #26483	; 0x6773
10005e6c:	|  |  |  |   f2c1 0000 	movt	r0, #4096	; 0x1000
10005e70:	|  |  |  |   f7ff fb6e 	bl	10005550 <cyhal_hwmgr_reserve>
10005e74:	|  |  |  |   f246 7076 	movw	r0, #26486	; 0x6776
10005e78:	|  |  |  |   f2c1 0000 	movt	r0, #4096	; 0x1000
10005e7c:	|  |  |  |   f7ff fb68 	bl	10005550 <cyhal_hwmgr_reserve>
10005e80:	|  |  |  |   f246 7079 	movw	r0, #26489	; 0x6779
10005e84:	|  |  |  |   f2c1 0000 	movt	r0, #4096	; 0x1000
10005e88:	|  |  |  |   f7ff fb62 	bl	10005550 <cyhal_hwmgr_reserve>
10005e8c:	|  |  |  |   f246 707c 	movw	r0, #26492	; 0x677c
10005e90:	|  |  |  |   f2c1 0000 	movt	r0, #4096	; 0x1000
10005e94:	|  |  |  |   f7ff fb5c 	bl	10005550 <cyhal_hwmgr_reserve>
10005e98:	|  |  |  |   f246 707f 	movw	r0, #26495	; 0x677f
10005e9c:	|  |  |  |   f2c1 0000 	movt	r0, #4096	; 0x1000
10005ea0:	|  |  |  |   b002      	add	sp, #8
10005ea2:	|  |  |  |   e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
10005ea6:	|  |  |  |   f7ff bb53 	b.w	10005550 <cyhal_hwmgr_reserve>
10005eaa:	|  |  |  |   bf00      	nop
10005eac:	|  |  \--|-> 2004      	movs	r0, #4
10005eae:	|  |     |   f7ff fb4b 	bl	10005548 <cycfg_ClockStartupError>
10005eb2:	|  |     |   bf00      	nop
10005eb4:	|  |     \-> 2003      	movs	r0, #3
10005eb6:	|  |         f7ff fb47 	bl	10005548 <cycfg_ClockStartupError>
10005eba:	|  |         bf00      	nop
10005ebc:	|  \-------> 2005      	movs	r0, #5
10005ebe:	|            f7ff fb43 	bl	10005548 <cycfg_ClockStartupError>
10005ec2:	|            bf00      	nop
10005ec4:	\----------> 2006      	movs	r0, #6
10005ec6:	             f7ff fb3f 	bl	10005548 <cycfg_ClockStartupError>
	...

10005ecc <keyExpansion>:
10005ecc:	       e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
10005ed0:	       f8d0 10b4 	ldr.w	r1, [r0, #180]	; 0xb4
10005ed4:	       f246 6e5a 	movw	lr, #26202	; 0x665a
10005ed8:	       780a      	ldrb	r2, [r1, #0]
10005eda:	       f246 3cfb 	movw	ip, #25595	; 0x63fb
10005ede:	       7102      	strb	r2, [r0, #4]
10005ee0:	       784a      	ldrb	r2, [r1, #1]
10005ee2:	       f2c1 0e00 	movt	lr, #4096	; 0x1000
10005ee6:	       7142      	strb	r2, [r0, #5]
10005ee8:	       788a      	ldrb	r2, [r1, #2]
10005eea:	       f2c1 0c00 	movt	ip, #4096	; 0x1000
10005eee:	       7182      	strb	r2, [r0, #6]
10005ef0:	       78ca      	ldrb	r2, [r1, #3]
10005ef2:	       71c2      	strb	r2, [r0, #7]
10005ef4:	       790a      	ldrb	r2, [r1, #4]
10005ef6:	       7202      	strb	r2, [r0, #8]
10005ef8:	       794a      	ldrb	r2, [r1, #5]
10005efa:	       7242      	strb	r2, [r0, #9]
10005efc:	       798a      	ldrb	r2, [r1, #6]
10005efe:	       7282      	strb	r2, [r0, #10]
10005f00:	       79ca      	ldrb	r2, [r1, #7]
10005f02:	       72c2      	strb	r2, [r0, #11]
10005f04:	       7a0a      	ldrb	r2, [r1, #8]
10005f06:	       7302      	strb	r2, [r0, #12]
10005f08:	       7a4a      	ldrb	r2, [r1, #9]
10005f0a:	       7342      	strb	r2, [r0, #13]
10005f0c:	       7a8a      	ldrb	r2, [r1, #10]
10005f0e:	       7382      	strb	r2, [r0, #14]
10005f10:	       7aca      	ldrb	r2, [r1, #11]
10005f12:	       73c2      	strb	r2, [r0, #15]
10005f14:	       7b0a      	ldrb	r2, [r1, #12]
10005f16:	       7402      	strb	r2, [r0, #16]
10005f18:	       7b4a      	ldrb	r2, [r1, #13]
10005f1a:	       7442      	strb	r2, [r0, #17]
10005f1c:	       7b8a      	ldrb	r2, [r1, #14]
10005f1e:	       7482      	strb	r2, [r0, #18]
10005f20:	       7bc9      	ldrb	r1, [r1, #15]
10005f22:	       74c1      	strb	r1, [r0, #19]
10005f24:	       2100      	movs	r1, #0
10005f26:	   /-- e022      	b.n	10005f6e <keyExpansion+0xa2>
10005f28:	/--|-> 79dd      	ldrb	r5, [r3, #7]
10005f2a:	|  |   791a      	ldrb	r2, [r3, #4]
10005f2c:	|  |   4075      	eors	r5, r6
10005f2e:	|  |   7a1e      	ldrb	r6, [r3, #8]
10005f30:	|  |   795f      	ldrb	r7, [r3, #5]
10005f32:	|  |   ea82 020a 	eor.w	r2, r2, sl
10005f36:	|  |   751a      	strb	r2, [r3, #20]
10005f38:	|  |   4072      	eors	r2, r6
10005f3a:	|  |   7a5e      	ldrb	r6, [r3, #9]
10005f3c:	|  |   799c      	ldrb	r4, [r3, #6]
10005f3e:	|  |   ea87 0709 	eor.w	r7, r7, r9
10005f42:	|  |   761a      	strb	r2, [r3, #24]
10005f44:	|  |   ea87 0206 	eor.w	r2, r7, r6
10005f48:	|  |   7a9e      	ldrb	r6, [r3, #10]
10005f4a:	|  |   ea84 0408 	eor.w	r4, r4, r8
10005f4e:	|  |   759c      	strb	r4, [r3, #22]
10005f50:	|  |   765a      	strb	r2, [r3, #25]
10005f52:	|  |   ea84 0206 	eor.w	r2, r4, r6
10005f56:	|  |   7adc      	ldrb	r4, [r3, #11]
10005f58:	|  |   3102      	adds	r1, #2
10005f5a:	|  |   769a      	strb	r2, [r3, #26]
10005f5c:	|  |   ea85 0204 	eor.w	r2, r5, r4
10005f60:	|  |   2928      	cmp	r1, #40	; 0x28
10005f62:	|  |   755f      	strb	r7, [r3, #21]
10005f64:	|  |   75dd      	strb	r5, [r3, #23]
10005f66:	|  |   76da      	strb	r2, [r3, #27]
10005f68:	|  |   bf08      	it	eq
10005f6a:	|  |   e8bd 87f0 	ldmiaeq.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
10005f6e:	|  \-> eb00 0381 	add.w	r3, r0, r1, lsl #2
10005f72:	|      1d0f      	adds	r7, r1, #4
10005f74:	|      f893 a010 	ldrb.w	sl, [r3, #16]
10005f78:	|      f893 9011 	ldrb.w	r9, [r3, #17]
10005f7c:	|      f893 8012 	ldrb.w	r8, [r3, #18]
10005f80:	|      7cde      	ldrb	r6, [r3, #19]
10005f82:	|      07ba      	lsls	r2, r7, #30
10005f84:	+----- d4d0      	bmi.n	10005f28 <keyExpansion+0x5c>
10005f86:	|      f81e 2009 	ldrb.w	r2, [lr, r9]
10005f8a:	|      f81e 9008 	ldrb.w	r9, [lr, r8]
10005f8e:	|      f81e 8006 	ldrb.w	r8, [lr, r6]
10005f92:	|      08be      	lsrs	r6, r7, #2
10005f94:	|      f81c 7006 	ldrb.w	r7, [ip, r6]
10005f98:	|      f81e 600a 	ldrb.w	r6, [lr, sl]
10005f9c:	|      ea87 0a02 	eor.w	sl, r7, r2
10005fa0:	\----- e7c2      	b.n	10005f28 <keyExpansion+0x5c>
	...

10005fa4 <main>:
10005fa4:	b580      	push	{r7, lr}
10005fa6:	2004      	movs	r0, #4
10005fa8:	f06f 417f 	mvn.w	r1, #4278190080	; 0xff000000
10005fac:	f7fe ff6c 	bl	10004e88 <Cy_SysTick_Init>
10005fb0:	f7fe ff56 	bl	10004e60 <Cy_SysTick_Enable>
10005fb4:	f7ff faa4 	bl	10005500 <cybsp_init>
10005fb8:	f000 f8ea 	bl	10006190 <test_Aes>
10005fbc:	f246 7087 	movw	r0, #26503	; 0x6787
10005fc0:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005fc4:	f7fc fad0 	bl	10002568 <__2printf>
10005fc8:	2000      	movs	r0, #0
10005fca:	bd80      	pop	{r7, pc}

10005fcc <mixColumns>:
10005fcc:	b570      	push	{r4, r5, r6, lr}
10005fce:	6801      	ldr	r1, [r0, #0]
10005fd0:	f891 e000 	ldrb.w	lr, [r1]
10005fd4:	784b      	ldrb	r3, [r1, #1]
10005fd6:	788a      	ldrb	r2, [r1, #2]
10005fd8:	f891 c003 	ldrb.w	ip, [r1, #3]
10005fdc:	ea83 040e 	eor.w	r4, r3, lr
10005fe0:	4062      	eors	r2, r4
10005fe2:	b265      	sxtb	r5, r4
10005fe4:	ea82 030c 	eor.w	r3, r2, ip
10005fe8:	f04f 0c1b 	mov.w	ip, #27
10005fec:	ea0c 12d5 	and.w	r2, ip, r5, lsr #7
10005ff0:	ea8e 0444 	eor.w	r4, lr, r4, lsl #1
10005ff4:	4062      	eors	r2, r4
10005ff6:	405a      	eors	r2, r3
10005ff8:	700a      	strb	r2, [r1, #0]
10005ffa:	6801      	ldr	r1, [r0, #0]
10005ffc:	784a      	ldrb	r2, [r1, #1]
10005ffe:	788c      	ldrb	r4, [r1, #2]
10006000:	4054      	eors	r4, r2
10006002:	b265      	sxtb	r5, r4
10006004:	405a      	eors	r2, r3
10006006:	ea0c 15d5 	and.w	r5, ip, r5, lsr #7
1000600a:	ea82 0244 	eor.w	r2, r2, r4, lsl #1
1000600e:	406a      	eors	r2, r5
10006010:	704a      	strb	r2, [r1, #1]
10006012:	6801      	ldr	r1, [r0, #0]
10006014:	788a      	ldrb	r2, [r1, #2]
10006016:	78cc      	ldrb	r4, [r1, #3]
10006018:	4054      	eors	r4, r2
1000601a:	b265      	sxtb	r5, r4
1000601c:	405a      	eors	r2, r3
1000601e:	ea0c 15d5 	and.w	r5, ip, r5, lsr #7
10006022:	ea82 0244 	eor.w	r2, r2, r4, lsl #1
10006026:	406a      	eors	r2, r5
10006028:	708a      	strb	r2, [r1, #2]
1000602a:	6801      	ldr	r1, [r0, #0]
1000602c:	78ca      	ldrb	r2, [r1, #3]
1000602e:	ea82 050e 	eor.w	r5, r2, lr
10006032:	b26c      	sxtb	r4, r5
10006034:	405a      	eors	r2, r3
10006036:	ea0c 14d4 	and.w	r4, ip, r4, lsr #7
1000603a:	ea82 0245 	eor.w	r2, r2, r5, lsl #1
1000603e:	4062      	eors	r2, r4
10006040:	70ca      	strb	r2, [r1, #3]
10006042:	6801      	ldr	r1, [r0, #0]
10006044:	f891 e004 	ldrb.w	lr, [r1, #4]
10006048:	794b      	ldrb	r3, [r1, #5]
1000604a:	798d      	ldrb	r5, [r1, #6]
1000604c:	79cc      	ldrb	r4, [r1, #7]
1000604e:	ea83 020e 	eor.w	r2, r3, lr
10006052:	b256      	sxtb	r6, r2
10006054:	ea82 0305 	eor.w	r3, r2, r5
10006058:	4063      	eors	r3, r4
1000605a:	ea0c 14d6 	and.w	r4, ip, r6, lsr #7
1000605e:	ea8e 0242 	eor.w	r2, lr, r2, lsl #1
10006062:	4062      	eors	r2, r4
10006064:	405a      	eors	r2, r3
10006066:	710a      	strb	r2, [r1, #4]
10006068:	6801      	ldr	r1, [r0, #0]
1000606a:	794a      	ldrb	r2, [r1, #5]
1000606c:	798c      	ldrb	r4, [r1, #6]
1000606e:	4054      	eors	r4, r2
10006070:	b265      	sxtb	r5, r4
10006072:	405a      	eors	r2, r3
10006074:	ea0c 15d5 	and.w	r5, ip, r5, lsr #7
10006078:	ea82 0244 	eor.w	r2, r2, r4, lsl #1
1000607c:	406a      	eors	r2, r5
1000607e:	714a      	strb	r2, [r1, #5]
10006080:	6801      	ldr	r1, [r0, #0]
10006082:	798a      	ldrb	r2, [r1, #6]
10006084:	79cc      	ldrb	r4, [r1, #7]
10006086:	4054      	eors	r4, r2
10006088:	b265      	sxtb	r5, r4
1000608a:	405a      	eors	r2, r3
1000608c:	ea0c 15d5 	and.w	r5, ip, r5, lsr #7
10006090:	ea82 0244 	eor.w	r2, r2, r4, lsl #1
10006094:	406a      	eors	r2, r5
10006096:	718a      	strb	r2, [r1, #6]
10006098:	6801      	ldr	r1, [r0, #0]
1000609a:	79ca      	ldrb	r2, [r1, #7]
1000609c:	ea82 060e 	eor.w	r6, r2, lr
100060a0:	b275      	sxtb	r5, r6
100060a2:	405a      	eors	r2, r3
100060a4:	ea0c 15d5 	and.w	r5, ip, r5, lsr #7
100060a8:	ea82 0246 	eor.w	r2, r2, r6, lsl #1
100060ac:	406a      	eors	r2, r5
100060ae:	71ca      	strb	r2, [r1, #7]
100060b0:	6801      	ldr	r1, [r0, #0]
100060b2:	f891 e008 	ldrb.w	lr, [r1, #8]
100060b6:	7a4b      	ldrb	r3, [r1, #9]
100060b8:	7a8e      	ldrb	r6, [r1, #10]
100060ba:	ea83 040e 	eor.w	r4, r3, lr
100060be:	7acd      	ldrb	r5, [r1, #11]
100060c0:	b262      	sxtb	r2, r4
100060c2:	ea84 0306 	eor.w	r3, r4, r6
100060c6:	ea0c 12d2 	and.w	r2, ip, r2, lsr #7
100060ca:	ea8e 0444 	eor.w	r4, lr, r4, lsl #1
100060ce:	406b      	eors	r3, r5
100060d0:	4062      	eors	r2, r4
100060d2:	405a      	eors	r2, r3
100060d4:	720a      	strb	r2, [r1, #8]
100060d6:	6801      	ldr	r1, [r0, #0]
100060d8:	7a4a      	ldrb	r2, [r1, #9]
100060da:	7a8c      	ldrb	r4, [r1, #10]
100060dc:	4054      	eors	r4, r2
100060de:	b265      	sxtb	r5, r4
100060e0:	405a      	eors	r2, r3
100060e2:	ea0c 15d5 	and.w	r5, ip, r5, lsr #7
100060e6:	ea82 0244 	eor.w	r2, r2, r4, lsl #1
100060ea:	406a      	eors	r2, r5
100060ec:	724a      	strb	r2, [r1, #9]
100060ee:	6801      	ldr	r1, [r0, #0]
100060f0:	7a8a      	ldrb	r2, [r1, #10]
100060f2:	7acc      	ldrb	r4, [r1, #11]
100060f4:	4054      	eors	r4, r2
100060f6:	b265      	sxtb	r5, r4
100060f8:	405a      	eors	r2, r3
100060fa:	ea0c 15d5 	and.w	r5, ip, r5, lsr #7
100060fe:	ea82 0244 	eor.w	r2, r2, r4, lsl #1
10006102:	406a      	eors	r2, r5
10006104:	728a      	strb	r2, [r1, #10]
10006106:	6801      	ldr	r1, [r0, #0]
10006108:	7aca      	ldrb	r2, [r1, #11]
1000610a:	ea82 060e 	eor.w	r6, r2, lr
1000610e:	b275      	sxtb	r5, r6
10006110:	405a      	eors	r2, r3
10006112:	ea0c 15d5 	and.w	r5, ip, r5, lsr #7
10006116:	ea82 0246 	eor.w	r2, r2, r6, lsl #1
1000611a:	406a      	eors	r2, r5
1000611c:	72ca      	strb	r2, [r1, #11]
1000611e:	6801      	ldr	r1, [r0, #0]
10006120:	f891 e00c 	ldrb.w	lr, [r1, #12]
10006124:	7b4b      	ldrb	r3, [r1, #13]
10006126:	7b8e      	ldrb	r6, [r1, #14]
10006128:	ea83 040e 	eor.w	r4, r3, lr
1000612c:	7bcd      	ldrb	r5, [r1, #15]
1000612e:	b262      	sxtb	r2, r4
10006130:	ea84 0306 	eor.w	r3, r4, r6
10006134:	ea0c 12d2 	and.w	r2, ip, r2, lsr #7
10006138:	ea8e 0444 	eor.w	r4, lr, r4, lsl #1
1000613c:	406b      	eors	r3, r5
1000613e:	4062      	eors	r2, r4
10006140:	405a      	eors	r2, r3
10006142:	730a      	strb	r2, [r1, #12]
10006144:	6801      	ldr	r1, [r0, #0]
10006146:	7b4a      	ldrb	r2, [r1, #13]
10006148:	7b8c      	ldrb	r4, [r1, #14]
1000614a:	4054      	eors	r4, r2
1000614c:	b265      	sxtb	r5, r4
1000614e:	405a      	eors	r2, r3
10006150:	ea0c 15d5 	and.w	r5, ip, r5, lsr #7
10006154:	ea82 0244 	eor.w	r2, r2, r4, lsl #1
10006158:	406a      	eors	r2, r5
1000615a:	734a      	strb	r2, [r1, #13]
1000615c:	6801      	ldr	r1, [r0, #0]
1000615e:	7b8a      	ldrb	r2, [r1, #14]
10006160:	7bcc      	ldrb	r4, [r1, #15]
10006162:	4054      	eors	r4, r2
10006164:	b265      	sxtb	r5, r4
10006166:	405a      	eors	r2, r3
10006168:	ea0c 15d5 	and.w	r5, ip, r5, lsr #7
1000616c:	ea82 0244 	eor.w	r2, r2, r4, lsl #1
10006170:	406a      	eors	r2, r5
10006172:	738a      	strb	r2, [r1, #14]
10006174:	6800      	ldr	r0, [r0, #0]
10006176:	7bc1      	ldrb	r1, [r0, #15]
10006178:	ea81 020e 	eor.w	r2, r1, lr
1000617c:	b256      	sxtb	r6, r2
1000617e:	4059      	eors	r1, r3
10006180:	ea0c 16d6 	and.w	r6, ip, r6, lsr #7
10006184:	ea81 0142 	eor.w	r1, r1, r2, lsl #1
10006188:	4071      	eors	r1, r6
1000618a:	73c1      	strb	r1, [r0, #15]
1000618c:	bd70      	pop	{r4, r5, r6, pc}
	...

10006190 <test_Aes>:
10006190:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
10006194:	b0ec      	sub	sp, #432	; 0x1b0
10006196:	f647 602b 	movw	r0, #32299	; 0x7e2b
1000619a:	f2c1 6015 	movt	r0, #5653	; 0x1615
1000619e:	9068      	str	r0, [sp, #416]	; 0x1a0
100061a0:	f64a 7045 	movw	r0, #44869	; 0xaf45
100061a4:	f2c5 108e 	movt	r0, #20878	; 0x518e
100061a8:	9067      	str	r0, [sp, #412]	; 0x19c
100061aa:	f24b 709e 	movw	r0, #47006	; 0xb79e
100061ae:	f6ca 406f 	movt	r0, #44143	; 0xac6f
100061b2:	9066      	str	r0, [sp, #408]	; 0x198
100061b4:	f240 301e 	movw	r0, #798	; 0x31e
100061b8:	f6c9 40ac 	movt	r0, #40108	; 0x9cac
100061bc:	9065      	str	r0, [sp, #404]	; 0x194
100061be:	f642 50ae 	movw	r0, #11694	; 0x2dae
100061c2:	f64c 7809 	movw	r8, #53001	; 0xcf09
100061c6:	f24f 77ab 	movw	r7, #63403	; 0xf7ab
100061ca:	f64a 6628 	movw	r6, #44584	; 0xae28
100061ce:	f2c5 708a 	movt	r0, #22410	; 0x578a
100061d2:	ad36      	add	r5, sp, #216	; 0xd8
100061d4:	f6c3 484f 	movt	r8, #15439	; 0x3c4f
100061d8:	f6c8 0715 	movt	r7, #34837	; 0x8815
100061dc:	f2ca 66d2 	movt	r6, #42706	; 0xa6d2
100061e0:	9064      	str	r0, [sp, #400]	; 0x190
100061e2:	1d28      	adds	r0, r5, #4
100061e4:	21b0      	movs	r1, #176	; 0xb0
100061e6:	f8cd 81ac 	str.w	r8, [sp, #428]	; 0x1ac
100061ea:	976a      	str	r7, [sp, #424]	; 0x1a8
100061ec:	9669      	str	r6, [sp, #420]	; 0x1a4
100061ee:	f7fc fa37 	bl	10002660 <__aeabi_memclr4>
100061f2:	a864      	add	r0, sp, #400	; 0x190
100061f4:	9036      	str	r0, [sp, #216]	; 0xd8
100061f6:	a868      	add	r0, sp, #416	; 0x1a0
100061f8:	9063      	str	r0, [sp, #396]	; 0x18c
100061fa:	f7fe fe3f 	bl	10004e7c <Cy_SysTick_GetValue>
100061fe:	4604      	mov	r4, r0
10006200:	4628      	mov	r0, r5
10006202:	f7ff fe63 	bl	10005ecc <keyExpansion>
10006206:	f7fe fe39 	bl	10004e7c <Cy_SysTick_GetValue>
1000620a:	1a21      	subs	r1, r4, r0
1000620c:	f246 7495 	movw	r4, #26517	; 0x6795
10006210:	f2c1 0400 	movt	r4, #4096	; 0x1000
10006214:	4620      	mov	r0, r4
10006216:	f7fc f9a7 	bl	10002568 <__2printf>
1000621a:	4628      	mov	r0, r5
1000621c:	f7fc fe94 	bl	10002f48 <AES128_ECB_encrypt>
10006220:	a833      	add	r0, sp, #204	; 0xcc
10006222:	e880 01c0 	stmia.w	r0, {r6, r7, r8}
10006226:	f64d 601b 	movw	r0, #56859	; 0xde1b
1000622a:	f2c1 6015 	movt	r0, #5653	; 0x1615
1000622e:	9032      	str	r0, [sp, #200]	; 0xc8
10006230:	f244 50ac 	movw	r0, #17836	; 0x45ac
10006234:	f6c8 60af 	movt	r0, #36527	; 0x8eaf
10006238:	9031      	str	r0, [sp, #196]	; 0xc4
1000623a:	f649 609c 	movw	r0, #40604	; 0x9e9c
1000623e:	f6c6 70b7 	movt	r0, #28599	; 0x6fb7
10006242:	9030      	str	r0, [sp, #192]	; 0xc0
10006244:	f641 6057 	movw	r0, #7767	; 0x1e57
10006248:	f6ca 4003 	movt	r0, #44035	; 0xac03
1000624c:	902f      	str	r0, [sp, #188]	; 0xbc
1000624e:	f64a 6051 	movw	r0, #44625	; 0xae51
10006252:	f6c8 202d 	movt	r0, #35373	; 0x8a2d
10006256:	466d      	mov	r5, sp
10006258:	902e      	str	r0, [sp, #184]	; 0xb8
1000625a:	1d28      	adds	r0, r5, #4
1000625c:	21b0      	movs	r1, #176	; 0xb0
1000625e:	f7fc f9ff 	bl	10002660 <__aeabi_memclr4>
10006262:	a82e      	add	r0, sp, #184	; 0xb8
10006264:	9000      	str	r0, [sp, #0]
10006266:	a832      	add	r0, sp, #200	; 0xc8
10006268:	902d      	str	r0, [sp, #180]	; 0xb4
1000626a:	4628      	mov	r0, r5
1000626c:	f7ff fe2e 	bl	10005ecc <keyExpansion>
10006270:	f7fe fe04 	bl	10004e7c <Cy_SysTick_GetValue>
10006274:	4606      	mov	r6, r0
10006276:	4628      	mov	r0, r5
10006278:	f7fc fe66 	bl	10002f48 <AES128_ECB_encrypt>
1000627c:	f7fe fdfe 	bl	10004e7c <Cy_SysTick_GetValue>
10006280:	1a31      	subs	r1, r6, r0
10006282:	4620      	mov	r0, r4
10006284:	f7fc f970 	bl	10002568 <__2printf>
10006288:	f246 7087 	movw	r0, #26503	; 0x6787
1000628c:	f2c1 0000 	movt	r0, #4096	; 0x1000
10006290:	f7fc f96a 	bl	10002568 <__2printf>
10006294:	b06c      	add	sp, #432	; 0x1b0
10006296:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

1000629a <_fp_init>:
1000629a:	eef1 0a10 	vmrs	r0, fpscr
1000629e:	f64f 71ff 	movw	r1, #65535	; 0xffff
100062a2:	f2c0 31c0 	movt	r1, #960	; 0x3c0
100062a6:	ea20 0001 	bic.w	r0, r0, r1
100062aa:	f040 7040 	orr.w	r0, r0, #50331648	; 0x3000000
100062ae:	eee1 0a10 	vmsr	fpscr, r0

100062b2 <__fplib_config_fpu_vfp>:
100062b2:	4770      	bx	lr

100062b4 <__stdin_name>:
100062b4:	0074743a                                :tt.

100062b8 <__stdout_name>:
100062b8:	0074743a                                :tt.

100062bc <__stderr_name>:
100062bc:	0074743a                                :tt.

100062c0 <CYBSP_CINA_obj>:
100062c0:	0b 07 01                                            ...

100062c3 <CYBSP_CINB_obj>:
100062c3:	070b                                         ...

100062c6 <CYBSP_CMOD_obj>:
100062c6:	0b 07 07                                            ...

100062c9 <CYBSP_CSD_BTN0_obj>:
100062c9:	080b                                         ...

100062cc <CYBSP_CSD_BTN1_obj>:
100062cc:	0b 08 02                                            ...

100062cf <CYBSP_CSD_CLK_DIV_obj>:
100062cf:	0005                                         ...

100062d2 <CYBSP_CSD_SLD0_obj>:
100062d2:	0b 08 03                                            ...

100062d5 <CYBSP_CSD_SLD1_obj>:
100062d5:	080b                                         ...

100062d8 <CYBSP_CSD_SLD2_obj>:
100062d8:	0b 08 05                                            ...

100062db <CYBSP_CSD_SLD3_obj>:
100062db:	080b                                         ...

100062de <CYBSP_CSD_SLD4_obj>:
100062de:	0b 08 07                                            ...

100062e1 <CYBSP_CSD_TX_obj>:
100062e1:	010b                                         ...

100062e4 <CYBSP_SWDCK_config>:
100062e4:	00000001 0000000b 0000001d 00000000     ................
	...
10006300:	00000001 00000000 00000000 00000000     ................
	...

10006318 <CYBSP_SWDCK_obj>:
10006318:	0007060b                                ....

1000631c <CYBSP_SWDIO_config>:
1000631c:	00000001 0000000a 0000001d 00000000     ................
	...
10006338:	00000001 00000000 00000000 00000000     ................
	...

10006350 <CYBSP_SWDIO_obj>:
10006350:	0006060b                                ....

10006354 <CYBSP_SWO_config>:
10006354:	00000001 00000006 0000001d 00000000     ................
	...
10006370:	00000001 00000000 00000000 00000000     ................
	...

10006388 <CYBSP_SWO_obj>:
10006388:	0004060b                                ....

1000638c <CYBSP_WCO_IN_config>:
1000638c:	00000001 00000000 00000000 00000000     ................
	...
100063a8:	00000001 00000000 00000000 00000000     ................
	...

100063c0 <CYBSP_WCO_IN_obj>:
100063c0:	0000000b                                ....

100063c4 <CYBSP_WCO_OUT_config>:
100063c4:	00000001 00000000 00000000 00000000     ................
	...
100063e0:	00000001 00000000 00000000 00000000     ................
	...

100063f8 <CYBSP_WCO_OUT_obj>:
100063f8:	0b 00 01                                            ...

100063fb <Rcon>:
100063fb:	0402018d 40201008 6c361b80 9a4dabd8     ...... @..6l..M.
1000640b:	63bc5e2f 6a3597c6 fa7db3d4 3991c5ef     /^.c..5j..}....9
1000641b:	bdd3e472 259fc261 6633944a 3a1d83cc     r...a..%J.3f...:
1000642b:	8dcbe874 08040201 80402010 d86c361b     t........ @..6l.
1000643b:	2f9a4dab c663bc5e d46a3597 effa7db3     .M./^.c..5j..}..
1000644b:	723991c5 61bdd3e4 4a259fc2 cc663394     ..9r...a..%J.3f.
1000645b:	743a1d83 018dcbe8 10080402 1b804020     ..:t........ @..
1000646b:	abd86c36 5e2f9a4d 97c663bc b3d46a35     6l..M./^.c..5j..
1000647b:	c5effa7d e4723991 c261bdd3 944a259f     }....9r...a..%J.
1000648b:	83cc6633 e8743a1d 02018dcb 20100804     3f...:t........ 
1000649b:	361b8040 4dabd86c bc5e2f9a 3597c663     @..6l..M./^.c..5
100064ab:	7db3d46a 91c5effa d3e47239 9fc261bd     j..}....9r...a..
100064bb:	33944a25 1d83cc66 cbe8743a 0402018d     %J.3f...:t......
100064cb:	40201008 6c361b80 9a4dabd8 63bc5e2f     .. @..6l..M./^.c
100064db:	6a3597c6 fa7db3d4 3991c5ef bdd3e472     ..5j..}....9r...
100064eb:	259fc261 6633944a 3a1d83cc 00cbe874     a..%J.3f...:t...
	...

100064fc <SystemInit.systemIpcPipeConfigCm4>:
100064fc:	00000003 00000001 00000001 00000000     ................
1000650c:	00600305 00000004 00000001 00000000     ..`.............
1000651c:	00000001 00600406 00000008 08002794     ......`......'..
1000652c:	10004759                                YG..

10006530 <cyhal_block_offsets_gpio>:
10006530:	18100800 38302820 58504840 78706860     .... (08@HPX`hpx

10006540 <cy_deviceIpBlockCfgPSoC6_02>:
10006540:	40200000 40240000 40000000 00000000     .. @..$@...@....
10006550:	40230000 40300000 40310000 409f0000     ..#@..0@..1@...@
10006560:	40220000 40100000 409d0000 20202020     .."@...@...@    
10006570:	10101020 801d1d10 00750017 020603ff      .........u.....
10006580:	04360006 00002010 0000c07f 00000400     ..6.. ..........
10006590:	00000000 4b321900 00007d64 80000000     ......2Kd}......
100065a0:	0b080040 00000010 01ff0000 1f000220     @........... ...
100065b0:	04008000 181008ff 14001000 1c001800     ................
100065c0:	4c484440 00000050 00001008 00000008     @DHLP...........
100065d0:	00000004 00001004 00001200 00002104     .............!..
100065e0:	00002100 00001600 02401140 130013c4     .!......@.@.....
100065f0:	13a01380 13881340 002013a8 0000001c     ....@..... .....

10006600 <cyhal_block_offsets_clock>:
10006600:	0800 1c18 1e1d 201f 2221 2423 2625 2d2c     ....... !"#$%&,-
10006610:	302f 3731 3938 3b3a 3d3c                    /01789:;<=

1000661a <cyhal_block_offsets_dw>:
1000661a:	1d00                                        ..

1000661c <cyhal_block_offsets_tcpwm>:
1000661c:	0800                                        ..

1000661e <cyhal_resource_offsets>:
1000661e:	0000 0001 0001 0001 0001 0001 003f 0040     ............?.@.
1000662e:	0040 0044 007e 007e 00f6 00f8 00f8 00f8     @.D.~.~.........
1000663e:	00f9 00f9 00fb 00fd 00fd 00ff 0100 0101     ................
1000664e:	010e 0110 0110 0130 0130 0130               ......0.0.0.

1000665a <sbox>:
1000665a:	7b777c63 c56f6bf2 2b670130 76abd7fe     c|w{.ko.0.g+...v
1000666a:	7dc982ca f04759fa afa2d4ad c072a49c     ...}.YG.......r.
1000667a:	2693fdb7 ccf73f36 f1e5a534 1531d871     ...&6?..4...q.1.
1000668a:	c323c704 9a059618 e2801207 75b227eb     ..#..........'.u
1000669a:	1a2c8309 a05a6e1b b3d63b52 842fe329     ..,..nZ.R;..)./.
100066aa:	ed00d153 5bb1fc20 39becb6a cf584c4a     S... ..[j..9JLX.
100066ba:	fbaaefd0 85334d43 7f02f945 a89f3c50     ....CM3.E...P<..
100066ca:	8f40a351 f5389d92 21dab6bc d2f3ff10     Q.@...8....!....
100066da:	ec130ccd 1744975f 3d7ea7c4 73195d64     ...._.D...~=d].s
100066ea:	dc4f8160 88902a22 14b8ee46 db0b5ede     `.O."*..F....^..
100066fa:	0a3a32e0 5c240649 62acd3c2 79e49591     .2:.I.$\...b...y
1000670a:	6d37c8e7 a94ed58d eaf4566c 08ae7a65     ..7m..N.lV..ez..
1000671a:	2e2578ba c6b4a61c 1f74dde8 8a8bbd4b     .x%.......t.K...
1000672a:	66b53e70 0ef60348 b9573561 9e1dc186     p>.fH...a5W.....
1000673a:	1198f8e1 948ed969 e9871e9b df2855ce     ....i........U(.
1000674a:	0d89a18c 6842e6bf 0f2d9941 16bb54b0     ......BhA.-..T..
	...

1000675c <srss_0_clock_0_fll_0_fllConfig>:
1000675c:	000001f4 01040014 0509000a 00030008     ................
1000676c:	00000163                                c...

10006770 <srss_0_clock_0_pathmux_0_obj>:
10006770:	04 00 00                                            ...

10006773 <srss_0_clock_0_pathmux_1_obj>:
10006773:	0104                                         ...

10006776 <srss_0_clock_0_pathmux_2_obj>:
10006776:	04 02 00                                            ...

10006779 <srss_0_clock_0_pathmux_3_obj>:
10006779:	0304                                         ...

1000677c <srss_0_clock_0_pathmux_4_obj>:
1000677c:	04 04 00                                            ...

1000677f <srss_0_clock_0_pathmux_5_obj>:
1000677f:	0504                                         ...

10006782 <srss_0_clock_0_pll_0_pllConfig>:
10006782:	1e 01 05 00 00                                      .....

10006787 <.L.str.1>:
10006787:	45 43 42 20 65 6e 63 72 79 70 74 3a 20 00           ECB encrypt: .

10006795 <.L.str>:
10006795:	6425                                        %d

10006797 <cyhal_block_offsets_tdm>:
	...

10006798 <Region$$Table$$Base>:
10006798:	100067cc 	.word	0x100067cc
1000679c:	080022e0 	.word	0x080022e0
100067a0:	00000108 	.word	0x00000108
100067a4:	10002358 	.word	0x10002358
100067a8:	100068d4 	.word	0x100068d4
100067ac:	08002894 	.word	0x08002894
100067b0:	00000094 	.word	0x00000094
100067b4:	10002358 	.word	0x10002358
100067b8:	100068d4 	.word	0x100068d4
100067bc:	080023e8 	.word	0x080023e8
100067c0:	000004ac 	.word	0x000004ac
100067c4:	10002374 	.word	0x10002374

100067c8 <Region$$Table$$Limit>:
100067c8:	ffffe83d 	.word	0xffffe83d
