
.\mtb-example-psoc6-uart-transmit-receive_updated_o3.elf:     file format elf32-littlearm


Disassembly of section ER_FLASH_CODE:

100022e0 <__main>:
100022e0:	f000 f802 	bl	100022e8 <__scatterload_rt2>
100022e4:	f000 f868 	bl	100023b8 <__rt_entry>

100022e8 <__scatterload_rt2>:
100022e8:	a00a      	add	r0, pc, #40	; (adr r0, 10002314 <__scatterload_null+0x1e>)
100022ea:	e890 0c00 	ldmia.w	r0, {sl, fp}
100022ee:	4482      	add	sl, r0
100022f0:	4483      	add	fp, r0
100022f2:	f1aa 0701 	sub.w	r7, sl, #1

100022f6 <__scatterload_null>:
100022f6:	    45da      	cmp	sl, fp
100022f8:	/-- d101      	bne.n	100022fe <__scatterload_null+0x8>
100022fa:	|   f000 f85d 	bl	100023b8 <__rt_entry>
100022fe:	\-> f2af 0e09 	subw	lr, pc, #9
10002302:	    e8ba 000f 	ldmia.w	sl!, {r0, r1, r2, r3}
10002306:	    f013 0f01 	tst.w	r3, #1
1000230a:	    bf18      	it	ne
1000230c:	    1afb      	subne	r3, r7, r3
1000230e:	    f043 0301 	orr.w	r3, r3, #1
10002312:	    4718      	bx	r3
10002314:	    000042c4 	.word	0x000042c4
10002318:	    000042f4 	.word	0x000042f4

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

10002390 <__rt_lib_init>:
10002390:	b51f      	push	{r0, r1, r2, r3, r4, lr}

10002392 <__rt_lib_init_fp_1>:
10002392:	f003 fea2 	bl	100060da <_fp_init>

10002396 <__rt_lib_init_heap_2>:
10002396:	4804      	ldr	r0, [pc, #16]	; (100023a8 <__lit__00000000>)
10002398:	4904      	ldr	r1, [pc, #16]	; (100023ac <__lit__00000001>)
1000239a:	f000 fb1d 	bl	100029d8 <_init_alloc>

1000239e <__rt_lib_init_atexit_1>:
1000239e:	f000 f957 	bl	10002650 <_initio>

100023a2 <__rt_lib_init_alloca_1>:
100023a2:	f000 f913 	bl	100025cc <__cpp_initialize__aeabi_>

100023a6 <__rt_lib_init_cpp_1>:
100023a6:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

100023a8 <__lit__00000000>:
100023a8:	08002928                                ()..

100023ac <__lit__00000001>:
100023ac:	080fe800                                ....

100023b0 <__rt_lib_shutdown>:
100023b0:	b510      	push	{r4, lr}

100023b2 <__rt_lib_shutdown_cpp_1>:
100023b2:	f000 f9b6 	bl	10002722 <_terminateio>

100023b6 <__rt_lib_shutdown_fp_trap_1>:
100023b6:	bd10      	pop	{r4, pc}

100023b8 <__rt_entry>:
100023b8:	f8df d00c 	ldr.w	sp, [pc, #12]	; 100023c8 <__lit__00000000>

100023bc <__rt_entry_li>:
100023bc:	f7ff ffe8 	bl	10002390 <__rt_lib_init>

100023c0 <__rt_entry_main>:
100023c0:	f003 fd32 	bl	10005e28 <main>
100023c4:	f000 fadc 	bl	10002980 <exit>

100023c8 <__lit__00000000>:
100023c8:	080ff800                                ....

100023cc <__rt_exit>:
100023cc:	b403      	push	{r0, r1}

100023ce <__rt_exit_ls>:
100023ce:	f7ff ffef 	bl	100023b0 <__rt_lib_shutdown>

100023d2 <__rt_exit_exit>:
100023d2:	bc03      	pop	{r0, r1}
100023d4:	f002 ff0a 	bl	100051ec <_sys_exit>

100023d8 <Cy_OnResetUser>:
100023d8:	4770      	bx	lr

100023da <Reset_Handler>:
100023da:	    f7ff fffd 	bl	100023d8 <Cy_OnResetUser>
100023de:	    b672      	cpsid	i
100023e0:	    4915      	ldr	r1, [pc, #84]	; (10002438 <Default_Handler+0x2>)
100023e2:	    4816      	ldr	r0, [pc, #88]	; (1000243c <Default_Handler+0x6>)
100023e4:	    f44f 7238 	mov.w	r2, #736	; 0x2e0
100023e8:	/-> 680b      	ldr	r3, [r1, #0]
100023ea:	|   6003      	str	r3, [r0, #0]
100023ec:	|   1d00      	adds	r0, r0, #4
100023ee:	|   1d09      	adds	r1, r1, #4
100023f0:	|   1e52      	subs	r2, r2, #1
100023f2:	|   2a00      	cmp	r2, #0
100023f4:	\-- d1f8      	bne.n	100023e8 <Reset_Handler+0xe>
100023f6:	    4811      	ldr	r0, [pc, #68]	; (1000243c <Default_Handler+0x6>)
100023f8:	    4911      	ldr	r1, [pc, #68]	; (10002440 <Default_Handler+0xa>)
100023fa:	    6008      	str	r0, [r1, #0]
100023fc:	    f3bf 8f4f 	dsb	sy
10002400:	    4810      	ldr	r0, [pc, #64]	; (10002444 <Default_Handler+0xe>)
10002402:	    4780      	blx	r0
10002404:	    4810      	ldr	r0, [pc, #64]	; (10002448 <Default_Handler+0x12>)
10002406:	    4780      	blx	r0
10002408:	/-- e7fe      	b.n	10002408 <Reset_Handler+0x2e>

1000240a <NMI_Handler>:
1000240a:	/-- e7fe      	b.n	1000240a <NMI_Handler>
1000240c:	/-- e7fe      	b.n	1000240c <NMI_Handler+0x2>

1000240e <HardFault_Wrapper>:
1000240e:	       2004      	movs	r0, #4
10002410:	       4671      	mov	r1, lr
10002412:	       4208      	tst	r0, r1
10002414:	/----- d003      	beq.n	1000241e <HardFault_Wrapper+0x10>
10002416:	|      f3ef 8009 	mrs	r0, PSP
1000241a:	|  /-- f000 f802 	bl	10002422 <HardFault_Wrapper+0x14>
1000241e:	\--|-> f3ef 8008 	mrs	r0, MSP
10002422:	   \-> f002 f8ed 	bl	10004600 <Cy_SysLib_FaultHandler>

10002426 <HardFault_Handler>:
10002426:	e7f2      	b.n	1000240e <HardFault_Wrapper>

10002428 <MemManage_Handler>:
10002428:	e7f1      	b.n	1000240e <HardFault_Wrapper>

1000242a <BusFault_Handler>:
1000242a:	e7f0      	b.n	1000240e <HardFault_Wrapper>

1000242c <UsageFault_Handler>:
1000242c:	e7ef      	b.n	1000240e <HardFault_Wrapper>

1000242e <SVC_Handler>:
1000242e:	/-- e7fe      	b.n	1000242e <SVC_Handler>

10002430 <DebugMon_Handler>:
10002430:	/-- e7fe      	b.n	10002430 <DebugMon_Handler>

10002432 <PendSV_Handler>:
10002432:	/-- e7fe      	b.n	10002432 <PendSV_Handler>

10002434 <SysTick_Handler>:
10002434:	/-- e7fe      	b.n	10002434 <SysTick_Handler>

10002436 <Default_Handler>:
10002436:	/-- e7fe      	b.n	10002436 <Default_Handler>
10002438:	    10002000 	.word	0x10002000
1000243c:	    08002000 	.word	0x08002000
10002440:	    e000ed08 	.word	0xe000ed08
10002444:	    10004e01 	.word	0x10004e01
10002448:	    100022e1 	.word	0x100022e1
1000244c:	    00000000 	.word	0x00000000

10002450 <Cy_SysLib_DelayCycles>:
10002450:	       1c80      	adds	r0, r0, #2
10002452:	       0880      	lsrs	r0, r0, #2
10002454:	/----- d003      	beq.n	1000245e <Cy_SysLib_DelayCycles+0xe>
10002456:	|  /-> 1c40      	adds	r0, r0, #1
10002458:	|  |   1e80      	subs	r0, r0, #2
1000245a:	|  \-- d1fc      	bne.n	10002456 <Cy_SysLib_DelayCycles+0x6>
1000245c:	|      bf00      	nop
1000245e:	\----> 4770      	bx	lr

10002460 <Cy_SysLib_EnterCriticalSection>:
10002460:	f3ef 8010 	mrs	r0, PRIMASK
10002464:	b672      	cpsid	i
10002466:	4770      	bx	lr

10002468 <Cy_SysLib_ExitCriticalSection>:
10002468:	f380 8810 	msr	PRIMASK, r0
1000246c:	4770      	bx	lr

1000246e <__use_no_semihosting>:
1000246e:	4770      	bx	lr

10002470 <_ll_udiv>:
10002470:	          ea53 0c02 	orrs.w	ip, r3, r2
10002474:	/-------- f000 8069 	beq.w	1000254a <_ll_udiv+0xda>
10002478:	|         e92d 4bf0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, fp, lr}
1000247c:	|         f04f 0600 	mov.w	r6, #0
10002480:	|         2b00      	cmp	r3, #0
10002482:	|         bf1f      	itttt	ne
10002484:	|         fab3 f583 	clzne	r5, r3
10002488:	|         fa03 f405 	lslne.w	r4, r3, r5
1000248c:	|         fa24 f605 	lsrne.w	r6, r4, r5
10002490:	|         405e      	eorne	r6, r3
10002492:	|         bf12      	itee	ne
10002494:	|         4316      	orrne	r6, r2
10002496:	|         fab2 f582 	clzeq	r5, r2
1000249a:	|         fa02 f405 	lsleq.w	r4, r2, r5
1000249e:	|         f1c5 0520 	rsb	r5, r5, #32
100024a2:	|         bf1e      	ittt	ne
100024a4:	|         fa22 fc05 	lsrne.w	ip, r2, r5
100024a8:	|         ea44 040c 	orrne.w	r4, r4, ip
100024ac:	|         3520      	addne	r5, #32
100024ae:	|         ea56 4c04 	orrs.w	ip, r6, r4, lsl #16
100024b2:	|         ea4f 4414 	mov.w	r4, r4, lsr #16
100024b6:	|         bf18      	it	ne
100024b8:	|         1c64      	addne	r4, r4, #1
100024ba:	|         f04f 0800 	mov.w	r8, #0
100024be:	|         f04f 0900 	mov.w	r9, #0
100024c2:	|  /----> 4290      	cmp	r0, r2
100024c4:	|  |      eb71 0c03 	sbcs.w	ip, r1, r3
100024c8:	|  |  /-- d339      	bcc.n	1000253e <_ll_udiv+0xce>
100024ca:	|  |  |   2900      	cmp	r1, #0
100024cc:	|  |  |   bf19      	ittee	ne
100024ce:	|  |  |   fab1 f781 	clzne	r7, r1
100024d2:	|  |  |   fa01 f607 	lslne.w	r6, r1, r7
100024d6:	|  |  |   fab0 f780 	clzeq	r7, r0
100024da:	|  |  |   fa00 f607 	lsleq.w	r6, r0, r7
100024de:	|  |  |   f1c7 0720 	rsb	r7, r7, #32
100024e2:	|  |  |   bf1e      	ittt	ne
100024e4:	|  |  |   fa20 fc07 	lsrne.w	ip, r0, r7
100024e8:	|  |  |   ea46 060c 	orrne.w	r6, r6, ip
100024ec:	|  |  |   3720      	addne	r7, #32
100024ee:	|  |  |   fbb6 fcf4 	udiv	ip, r6, r4
100024f2:	|  |  |   eba7 0705 	sub.w	r7, r7, r5
100024f6:	|  |  |   3f10      	subs	r7, #16
100024f8:	|  |  |   f007 0b1f 	and.w	fp, r7, #31
100024fc:	|  |  |   f1cb 0620 	rsb	r6, fp, #32
10002500:	|  |  |   fa2c f606 	lsr.w	r6, ip, r6
10002504:	|  |  |   fa0c fb0b 	lsl.w	fp, ip, fp
10002508:	|  |  |   bf44      	itt	mi
1000250a:	|  |  |   46b3      	movmi	fp, r6
1000250c:	|  |  |   2600      	movmi	r6, #0
1000250e:	|  |  |   2f20      	cmp	r7, #32
10002510:	|  |  |   bfa4      	itt	ge
10002512:	|  |  |   465e      	movge	r6, fp
10002514:	|  |  |   f04f 0b00 	movge.w	fp, #0
10002518:	|  |  |   ea5b 0c06 	orrs.w	ip, fp, r6
1000251c:	|  |  |   bf08      	it	eq
1000251e:	|  |  |   f04f 0b01 	moveq.w	fp, #1
10002522:	|  |  |   eb19 090b 	adds.w	r9, r9, fp
10002526:	|  |  |   eb48 0806 	adc.w	r8, r8, r6
1000252a:	|  |  |   fbab 7c02 	umull	r7, ip, fp, r2
1000252e:	|  |  |   fb06 cc02 	mla	ip, r6, r2, ip
10002532:	|  |  |   fb0b cc03 	mla	ip, fp, r3, ip
10002536:	|  |  |   1bc0      	subs	r0, r0, r7
10002538:	|  |  |   eb71 010c 	sbcs.w	r1, r1, ip
1000253c:	|  \--|-- e7c1      	b.n	100024c2 <_ll_udiv+0x52>
1000253e:	|     \-> 460b      	mov	r3, r1
10002540:	|         4602      	mov	r2, r0
10002542:	|         4641      	mov	r1, r8
10002544:	|         4648      	mov	r0, r9
10002546:	|         e8bd 8bf0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, fp, pc}
1000254a:	\-------> b513      	push	{r0, r1, r4, lr}
1000254c:	          4308      	orrs	r0, r1
1000254e:	          bf18      	it	ne
10002550:	          f04f 30ff 	movne.w	r0, #4294967295
10002554:	          4601      	mov	r1, r0
10002556:	          f3af 8000 	nop.w
1000255a:	          e8bd 401c 	ldmia.w	sp!, {r2, r3, r4, lr}
1000255e:	          4770      	bx	lr

10002560 <__2printf>:
10002560:	b40f      	push	{r0, r1, r2, r3}
10002562:	4904      	ldr	r1, [pc, #16]	; (10002574 <__2printf+0x14>)
10002564:	b510      	push	{r4, lr}
10002566:	aa03      	add	r2, sp, #12
10002568:	9802      	ldr	r0, [sp, #8]
1000256a:	f000 f843 	bl	100025f4 <_printf_char_file>
1000256e:	bc10      	pop	{r4}
10002570:	f85d fb14 	ldr.w	pc, [sp], #20
10002574:	0800243c 	.word	0x0800243c

10002578 <__aeabi_memclr4>:
10002578:	f04f 0200 	mov.w	r2, #0

1000257c <_memset_w>:
1000257c:	    b500      	push	{lr}
1000257e:	    4613      	mov	r3, r2
10002580:	    4694      	mov	ip, r2
10002582:	    4696      	mov	lr, r2
10002584:	    3920      	subs	r1, #32
10002586:	/-> bf22      	ittt	cs
10002588:	|   e8a0 500c 	stmiacs.w	r0!, {r2, r3, ip, lr}
1000258c:	|   e8a0 500c 	stmiacs.w	r0!, {r2, r3, ip, lr}
10002590:	|   f1b1 0120 	subscs.w	r1, r1, #32
10002594:	\-- f4bf aff7 	bcs.w	10002586 <_memset_w+0xa>
10002598:	    0709      	lsls	r1, r1, #28
1000259a:	    bf28      	it	cs
1000259c:	    e8a0 500c 	stmiacs.w	r0!, {r2, r3, ip, lr}
100025a0:	    bf48      	it	mi
100025a2:	    c00c      	stmiami	r0!, {r2, r3}
100025a4:	    f85d eb04 	ldr.w	lr, [sp], #4
100025a8:	    0089      	lsls	r1, r1, #2
100025aa:	    bf28      	it	cs
100025ac:	    f840 2b04 	strcs.w	r2, [r0], #4
100025b0:	    bf08      	it	eq
100025b2:	    4770      	bxeq	lr
100025b4:	    bf48      	it	mi
100025b6:	    f820 2b02 	strhmi.w	r2, [r0], #2
100025ba:	    f011 4f80 	tst.w	r1, #1073741824	; 0x40000000
100025be:	    bf18      	it	ne
100025c0:	    f800 2b01 	strbne.w	r2, [r0], #1
100025c4:	    4770      	bx	lr

100025c6 <__use_two_region_memory>:
100025c6:	4770      	bx	lr

100025c8 <__rt_heap_escrow>:
100025c8:	4770      	bx	lr

100025ca <__rt_heap_expand>:
100025ca:	4770      	bx	lr

100025cc <__cpp_initialize__aeabi_>:
100025cc:	       b570      	push	{r4, r5, r6, lr}
100025ce:	       4c06      	ldr	r4, [pc, #24]	; (100025e8 <__cpp_initialize__aeabi_+0x1c>)
100025d0:	       447c      	add	r4, pc
100025d2:	       4d06      	ldr	r5, [pc, #24]	; (100025ec <__cpp_initialize__aeabi_+0x20>)
100025d4:	       447d      	add	r5, pc
100025d6:	   /-- e004      	b.n	100025e2 <__cpp_initialize__aeabi_+0x16>
100025d8:	/--|-> 4620      	mov	r0, r4
100025da:	|  |   6801      	ldr	r1, [r0, #0]
100025dc:	|  |   4408      	add	r0, r1
100025de:	|  |   4780      	blx	r0
100025e0:	|  |   1d24      	adds	r4, r4, #4
100025e2:	|  \-> 42ac      	cmp	r4, r5
100025e4:	\----- d1f8      	bne.n	100025d8 <__cpp_initialize__aeabi_+0xc>
100025e6:	       bd70      	pop	{r4, r5, r6, pc}
100025e8:	       00004034 	.word	0x00004034
100025ec:	       00004034 	.word	0x00004034

100025f0 <__use_no_semihosting_swi>:
100025f0:	4770      	bx	lr
	...

100025f4 <_printf_char_file>:
100025f4:	    4b07      	ldr	r3, [pc, #28]	; (10002614 <_printf_char_file+0x20>)
100025f6:	    b570      	push	{r4, r5, r6, lr}
100025f8:	    460d      	mov	r5, r1
100025fa:	    447b      	add	r3, pc
100025fc:	    f000 f811 	bl	10002622 <_printf_char_common>
10002600:	    4604      	mov	r4, r0
10002602:	    4628      	mov	r0, r5
10002604:	    f000 f820 	bl	10002648 <ferror>
10002608:	/-- b110      	cbz	r0, 10002610 <_printf_char_file+0x1c>
1000260a:	|   f04f 30ff 	mov.w	r0, #4294967295
1000260e:	|   bd70      	pop	{r4, r5, r6, pc}
10002610:	\-> 4620      	mov	r0, r4
10002612:	    bd70      	pop	{r4, r5, r6, pc}
10002614:	    0000306b 	.word	0x0000306b

10002618 <_printf_input_char>:
10002618:	6901      	ldr	r1, [r0, #16]
1000261a:	1c4a      	adds	r2, r1, #1
1000261c:	6102      	str	r2, [r0, #16]
1000261e:	7808      	ldrb	r0, [r1, #0]
10002620:	4770      	bx	lr

10002622 <_printf_char_common>:
10002622:	b500      	push	{lr}
10002624:	b08f      	sub	sp, #60	; 0x3c
10002626:	e9cd 3101 	strd	r3, r1, [sp, #4]
1000262a:	2100      	movs	r1, #0
1000262c:	9105      	str	r1, [sp, #20]
1000262e:	4905      	ldr	r1, [pc, #20]	; (10002644 <_printf_char_common+0x22>)
10002630:	4479      	add	r1, pc
10002632:	e9cd 1003 	strd	r1, r0, [sp, #12]
10002636:	4611      	mov	r1, r2
10002638:	4668      	mov	r0, sp
1000263a:	f000 f8cc 	bl	100027d6 <__printf>
1000263e:	b00f      	add	sp, #60	; 0x3c
10002640:	bd00      	pop	{pc}
10002642:	0000      	.short	0x0000
10002644:	ffffffe5 	.word	0xffffffe5

10002648 <ferror>:
10002648:	7b00      	ldrb	r0, [r0, #12]
1000264a:	f000 0080 	and.w	r0, r0, #128	; 0x80
1000264e:	4770      	bx	lr

10002650 <_initio>:
10002650:	    b510      	push	{r4, lr}
10002652:	    4842      	ldr	r0, [pc, #264]	; (1000275c <_terminateio+0x3a>)
10002654:	    2154      	movs	r1, #84	; 0x54
10002656:	    f7ff ff8f 	bl	10002578 <__aeabi_memclr4>
1000265a:	    4841      	ldr	r0, [pc, #260]	; (10002760 <_terminateio+0x3e>)
1000265c:	    2154      	movs	r1, #84	; 0x54
1000265e:	    f7ff ff8b 	bl	10002578 <__aeabi_memclr4>
10002662:	    4840      	ldr	r0, [pc, #256]	; (10002764 <_terminateio+0x42>)
10002664:	    2154      	movs	r1, #84	; 0x54
10002666:	    f7ff ff87 	bl	10002578 <__aeabi_memclr4>
1000266a:	    493f      	ldr	r1, [pc, #252]	; (10002768 <_terminateio+0x46>)
1000266c:	    483b      	ldr	r0, [pc, #236]	; (1000275c <_terminateio+0x3a>)
1000266e:	    4a3c      	ldr	r2, [pc, #240]	; (10002760 <_terminateio+0x3e>)
10002670:	    4b3f      	ldr	r3, [pc, #252]	; (10002770 <_terminateio+0x4e>)
10002672:	    6008      	str	r0, [r1, #0]
10002674:	    493d      	ldr	r1, [pc, #244]	; (1000276c <_terminateio+0x4a>)
10002676:	    600a      	str	r2, [r1, #0]
10002678:	    493a      	ldr	r1, [pc, #232]	; (10002764 <_terminateio+0x42>)
1000267a:	    6019      	str	r1, [r3, #0]
1000267c:	    1c53      	adds	r3, r2, #1
1000267e:	    6503      	str	r3, [r0, #80]	; 0x50
10002680:	    1c48      	adds	r0, r1, #1
10002682:	    6510      	str	r0, [r2, #80]	; 0x50
10002684:	    2001      	movs	r0, #1
10002686:	    6508      	str	r0, [r1, #80]	; 0x50
10002688:	    483b      	ldr	r0, [pc, #236]	; (10002778 <_terminateio+0x56>)
1000268a:	    4a34      	ldr	r2, [pc, #208]	; (1000275c <_terminateio+0x3a>)
1000268c:	    a139      	add	r1, pc, #228	; (adr r1, 10002774 <_terminateio+0x52>)
1000268e:	    4478      	add	r0, pc
10002690:	    f000 f8d8 	bl	10002844 <freopen>
10002694:	/-- b920      	cbnz	r0, 100026a0 <_initio+0x50>
10002696:	|   4838      	ldr	r0, [pc, #224]	; (10002778 <_terminateio+0x56>)
10002698:	|   4478      	add	r0, pc
1000269a:	|   380a      	subs	r0, #10
1000269c:	|   f000 f979 	bl	10002992 <__rt_SIGRTRED>
100026a0:	\-> 4837      	ldr	r0, [pc, #220]	; (10002780 <_terminateio+0x5e>)
100026a2:	    4a2f      	ldr	r2, [pc, #188]	; (10002760 <_terminateio+0x3e>)
100026a4:	    a135      	add	r1, pc, #212	; (adr r1, 1000277c <_terminateio+0x5a>)
100026a6:	    4478      	add	r0, pc
100026a8:	    f000 f8cc 	bl	10002844 <freopen>
100026ac:	/-- b920      	cbnz	r0, 100026b8 <_initio+0x68>
100026ae:	|   4834      	ldr	r0, [pc, #208]	; (10002780 <_terminateio+0x5e>)
100026b0:	|   4478      	add	r0, pc
100026b2:	|   380a      	subs	r0, #10
100026b4:	|   f000 f96d 	bl	10002992 <__rt_SIGRTRED>
100026b8:	\-> 4832      	ldr	r0, [pc, #200]	; (10002784 <_terminateio+0x62>)
100026ba:	    4a2a      	ldr	r2, [pc, #168]	; (10002764 <_terminateio+0x42>)
100026bc:	    a12f      	add	r1, pc, #188	; (adr r1, 1000277c <_terminateio+0x5a>)
100026be:	    4478      	add	r0, pc
100026c0:	    f000 f8c0 	bl	10002844 <freopen>
100026c4:	/-- b920      	cbnz	r0, 100026d0 <_initio+0x80>
100026c6:	|   482f      	ldr	r0, [pc, #188]	; (10002784 <_terminateio+0x62>)
100026c8:	|   4478      	add	r0, pc
100026ca:	|   380a      	subs	r0, #10
100026cc:	|   f000 f961 	bl	10002992 <__rt_SIGRTRED>
100026d0:	\-> 2340      	movs	r3, #64	; 0x40
100026d2:	    4822      	ldr	r0, [pc, #136]	; (1000275c <_terminateio+0x3a>)
100026d4:	    00dc      	lsls	r4, r3, #3
100026d6:	    2100      	movs	r1, #0
100026d8:	    4622      	mov	r2, r4
100026da:	    f000 f890 	bl	100027fe <setvbuf>
100026de:	/-- b120      	cbz	r0, 100026ea <_initio+0x9a>
100026e0:	|   4825      	ldr	r0, [pc, #148]	; (10002778 <_terminateio+0x56>)
100026e2:	|   4478      	add	r0, pc
100026e4:	|   3854      	subs	r0, #84	; 0x54
100026e6:	|   f000 f954 	bl	10002992 <__rt_SIGRTRED>
100026ea:	\-> 481d      	ldr	r0, [pc, #116]	; (10002760 <_terminateio+0x3e>)
100026ec:	    4622      	mov	r2, r4
100026ee:	    2340      	movs	r3, #64	; 0x40
100026f0:	    2100      	movs	r1, #0
100026f2:	    f000 f884 	bl	100027fe <setvbuf>
100026f6:	/-- b120      	cbz	r0, 10002702 <_initio+0xb2>
100026f8:	|   4821      	ldr	r0, [pc, #132]	; (10002780 <_terminateio+0x5e>)
100026fa:	|   4478      	add	r0, pc
100026fc:	|   3854      	subs	r0, #84	; 0x54
100026fe:	|   f000 f948 	bl	10002992 <__rt_SIGRTRED>
10002702:	\-> 4818      	ldr	r0, [pc, #96]	; (10002764 <_terminateio+0x42>)
10002704:	    4622      	mov	r2, r4
10002706:	    2310      	movs	r3, #16
10002708:	    2100      	movs	r1, #0
1000270a:	    f000 f878 	bl	100027fe <setvbuf>
1000270e:	    2800      	cmp	r0, #0
10002710:	/-- d006      	beq.n	10002720 <_initio+0xd0>
10002712:	|   481c      	ldr	r0, [pc, #112]	; (10002784 <_terminateio+0x62>)
10002714:	|   4478      	add	r0, pc
10002716:	|   e8bd 4010 	ldmia.w	sp!, {r4, lr}
1000271a:	|   3856      	subs	r0, #86	; 0x56
1000271c:	|   f000 b939 	b.w	10002992 <__rt_SIGRTRED>
10002720:	\-> bd10      	pop	{r4, pc}

10002722 <_terminateio>:
10002722:	       4810      	ldr	r0, [pc, #64]	; (10002764 <_terminateio+0x42>)
10002724:	       b570      	push	{r4, r5, r6, lr}
10002726:	       6d00      	ldr	r0, [r0, #80]	; 0x50
10002728:	       f020 0401 	bic.w	r4, r0, #1
1000272c:	       480b      	ldr	r0, [pc, #44]	; (1000275c <_terminateio+0x3a>)
1000272e:	       f000 f901 	bl	10002934 <_fclose_internal>
10002732:	       480b      	ldr	r0, [pc, #44]	; (10002760 <_terminateio+0x3e>)
10002734:	       f000 f8fe 	bl	10002934 <_fclose_internal>
10002738:	       480a      	ldr	r0, [pc, #40]	; (10002764 <_terminateio+0x42>)
1000273a:	       f000 f8fb 	bl	10002934 <_fclose_internal>
1000273e:	   /-- e009      	b.n	10002754 <_terminateio+0x32>
10002740:	/--|-> 6d20      	ldr	r0, [r4, #80]	; 0x50
10002742:	|  |   f020 0501 	bic.w	r5, r0, #1
10002746:	|  |   4620      	mov	r0, r4
10002748:	|  |   f000 f8f4 	bl	10002934 <_fclose_internal>
1000274c:	|  |   4620      	mov	r0, r4
1000274e:	|  |   f000 f81b 	bl	10002788 <free>
10002752:	|  |   462c      	mov	r4, r5
10002754:	|  \-> 2c00      	cmp	r4, #0
10002756:	\----- d1f3      	bne.n	10002740 <_terminateio+0x1e>
10002758:	       bd70      	pop	{r4, r5, r6, pc}
1000275a:	       0000      	.short	0x0000
1000275c:	       080023e8 	.word	0x080023e8
10002760:	       0800243c 	.word	0x0800243c
10002764:	       08002490 	.word	0x08002490
10002768:	       080022ec 	.word	0x080022ec
1000276c:	       080022f0 	.word	0x080022f0
10002770:	       080022f4 	.word	0x080022f4
10002774:	       00000072 	.word	0x00000072
10002778:	       00003a62 	.word	0x00003a62
1000277c:	       00000077 	.word	0x00000077
10002780:	       00003a4e 	.word	0x00003a4e
10002784:	       00003a3a 	.word	0x00003a3a

10002788 <free>:
10002788:	    b570      	push	{r4, r5, r6, lr}
1000278a:	    4604      	mov	r4, r0
1000278c:	    1f05      	subs	r5, r0, #4
1000278e:	    f000 f907 	bl	100029a0 <__rt_heap_descriptor>
10002792:	    6800      	ldr	r0, [r0, #0]
10002794:	    2c00      	cmp	r4, #0
10002796:	    bf14      	ite	ne
10002798:	    6844      	ldrne	r4, [r0, #4]
1000279a:	    bd70      	popeq	{r4, r5, r6, pc}
1000279c:	/-> 2c00      	cmp	r4, #0
1000279e:	|   bf18      	it	ne
100027a0:	|   42ac      	cmpne	r4, r5
100027a2:	|   bf3c      	itt	cc
100027a4:	|   4620      	movcc	r0, r4
100027a6:	|   6864      	ldrcc	r4, [r4, #4]
100027a8:	\-- d3f8      	bcc.n	1000279c <free+0x14>
100027aa:	    6801      	ldr	r1, [r0, #0]
100027ac:	    180a      	adds	r2, r1, r0
100027ae:	    42aa      	cmp	r2, r5
100027b0:	    bf18      	it	ne
100027b2:	    6045      	strne	r5, [r0, #4]
100027b4:	/-- d103      	bne.n	100027be <free+0x36>
100027b6:	|   682a      	ldr	r2, [r5, #0]
100027b8:	|   4605      	mov	r5, r0
100027ba:	|   4411      	add	r1, r2
100027bc:	|   6001      	str	r1, [r0, #0]
100027be:	\-> 6828      	ldr	r0, [r5, #0]
100027c0:	    1941      	adds	r1, r0, r5
100027c2:	    42a1      	cmp	r1, r4
100027c4:	    bf1c      	itt	ne
100027c6:	    606c      	strne	r4, [r5, #4]
100027c8:	    bd70      	popne	{r4, r5, r6, pc}
100027ca:	    6861      	ldr	r1, [r4, #4]
100027cc:	    6069      	str	r1, [r5, #4]
100027ce:	    6821      	ldr	r1, [r4, #0]
100027d0:	    4408      	add	r0, r1
100027d2:	    6028      	str	r0, [r5, #0]
100027d4:	    bd70      	pop	{r4, r5, r6, pc}

100027d6 <__printf>:
100027d6:	       e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
100027da:	       4606      	mov	r6, r0
100027dc:	       2400      	movs	r4, #0
100027de:	       e9d6 7001 	ldrd	r7, r0, [r6, #4]
100027e2:	       68f5      	ldr	r5, [r6, #12]
100027e4:	       4680      	mov	r8, r0
100027e6:	       4630      	mov	r0, r6
100027e8:	   /-- e003      	b.n	100027f2 <__printf+0x1c>
100027ea:	/--|-> 4641      	mov	r1, r8
100027ec:	|  |   47b8      	blx	r7
100027ee:	|  |   1c64      	adds	r4, r4, #1
100027f0:	|  |   4630      	mov	r0, r6
100027f2:	|  \-> 47a8      	blx	r5
100027f4:	|      2800      	cmp	r0, #0
100027f6:	\----- d1f8      	bne.n	100027ea <__printf+0x14>
100027f8:	       4620      	mov	r0, r4
100027fa:	       e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

100027fe <setvbuf>:
100027fe:	          b570      	push	{r4, r5, r6, lr}
10002800:	          68c4      	ldr	r4, [r0, #12]
10002802:	          07a5      	lsls	r5, r4, #30
10002804:	/-------- d013      	beq.n	1000282e <setvbuf+0x30>
10002806:	|         0265      	lsls	r5, r4, #9
10002808:	+-------- d411      	bmi.n	1000282e <setvbuf+0x30>
1000280a:	|         f5b2 7f80 	cmp.w	r2, #256	; 0x100
1000280e:	|  /----- d009      	beq.n	10002824 <setvbuf+0x26>
10002810:	|  |      f5b2 7f00 	cmp.w	r2, #512	; 0x200
10002814:	|  +----- d006      	beq.n	10002824 <setvbuf+0x26>
10002816:	|  |      f5b2 6f80 	cmp.w	r2, #1024	; 0x400
1000281a:	+--|----- d108      	bne.n	1000282e <setvbuf+0x30>
1000281c:	|  |      2301      	movs	r3, #1
1000281e:	|  |      f100 0124 	add.w	r1, r0, #36	; 0x24
10002822:	|  |  /-- e006      	b.n	10002832 <setvbuf+0x34>
10002824:	|  \--|-> 1e5d      	subs	r5, r3, #1
10002826:	|     |   f06f 467f 	mvn.w	r6, #4278190080	; 0xff000000
1000282a:	|     |   42b5      	cmp	r5, r6
1000282c:	|     +-- d301      	bcc.n	10002832 <setvbuf+0x34>
1000282e:	\-----|-> 2001      	movs	r0, #1
10002830:	      |   bd70      	pop	{r4, r5, r6, pc}
10002832:	      \-> 6101      	str	r1, [r0, #16]
10002834:	          61c3      	str	r3, [r0, #28]
10002836:	          6041      	str	r1, [r0, #4]
10002838:	          f424 6170 	bic.w	r1, r4, #3840	; 0xf00
1000283c:	          4311      	orrs	r1, r2
1000283e:	          60c1      	str	r1, [r0, #12]
10002840:	          2000      	movs	r0, #0
10002842:	          bd70      	pop	{r4, r5, r6, pc}

10002844 <freopen>:
10002844:	                   e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
10002848:	                   460c      	mov	r4, r1
1000284a:	                   4616      	mov	r6, r2
1000284c:	                   0007      	movs	r7, r0
1000284e:	/----------------- d047      	beq.n	100028e0 <freopen+0x9c>
10002850:	|                  4610      	mov	r0, r2
10002852:	|                  f000 f86f 	bl	10002934 <_fclose_internal>
10002856:	|                  7820      	ldrb	r0, [r4, #0]
10002858:	|                  1c61      	adds	r1, r4, #1
1000285a:	|                  2861      	cmp	r0, #97	; 0x61
1000285c:	|        /-------- d00a      	beq.n	10002874 <freopen+0x30>
1000285e:	|        |         2872      	cmp	r0, #114	; 0x72
10002860:	|        |     /-- d002      	beq.n	10002868 <freopen+0x24>
10002862:	|        |     |   2877      	cmp	r0, #119	; 0x77
10002864:	+--------|-----|-- d13c      	bne.n	100028e0 <freopen+0x9c>
10002866:	|        |  /--|-- e002      	b.n	1000286e <freopen+0x2a>
10002868:	|        |  |  \-> 2501      	movs	r5, #1
1000286a:	|        |  |      2400      	movs	r4, #0
1000286c:	|  /-----|--|----- e005      	b.n	1000287a <freopen+0x36>
1000286e:	|  |     |  \----> 2502      	movs	r5, #2
10002870:	|  |     |         2404      	movs	r4, #4
10002872:	|  +-----|-------- e002      	b.n	1000287a <freopen+0x36>
10002874:	|  |     \-------> 2408      	movs	r4, #8
10002876:	|  |               f248 0502 	movw	r5, #32770	; 0x8002
1000287a:	|  >-------------> f811 0b01 	ldrb.w	r0, [r1], #1
1000287e:	|  |               282b      	cmp	r0, #43	; 0x2b
10002880:	|  |           /-- d006      	beq.n	10002890 <freopen+0x4c>
10002882:	|  |           |   2862      	cmp	r0, #98	; 0x62
10002884:	|  |        /--|-- d009      	beq.n	1000289a <freopen+0x56>
10002886:	|  |        |  |   f811 0c01 	ldrb.w	r0, [r1, #-1]
1000288a:	|  |        |  |   2874      	cmp	r0, #116	; 0x74
1000288c:	|  |     /--|--|-- d00a      	beq.n	100028a4 <freopen+0x60>
1000288e:	|  |  /--|--|--|-- e00b      	b.n	100028a8 <freopen+0x64>
10002890:	|  |  |  |  |  \-> f045 0503 	orr.w	r5, r5, #3
10002894:	|  |  |  |  |      f044 0402 	orr.w	r4, r4, #2
10002898:	|  +--|--|--|----- e7ef      	b.n	1000287a <freopen+0x36>
1000289a:	|  |  |  |  \----> f045 0504 	orr.w	r5, r5, #4
1000289e:	|  |  |  |         f044 0401 	orr.w	r4, r4, #1
100028a2:	|  \--|--|-------- e7ea      	b.n	1000287a <freopen+0x36>
100028a4:	|     |  \-------> f044 0410 	orr.w	r4, r4, #16
100028a8:	|     \----------> 4638      	mov	r0, r7
100028aa:	|                  4621      	mov	r1, r4
100028ac:	|                  f002 fca4 	bl	100051f8 <_sys_open>
100028b0:	|                  1c41      	adds	r1, r0, #1
100028b2:	+----------------- d015      	beq.n	100028e0 <freopen+0x9c>
100028b4:	|                  2100      	movs	r1, #0
100028b6:	|                  6131      	str	r1, [r6, #16]
100028b8:	|                  6071      	str	r1, [r6, #4]
100028ba:	|                  f44f 7100 	mov.w	r1, #512	; 0x200
100028be:	|                  60f5      	str	r5, [r6, #12]
100028c0:	|                  61f1      	str	r1, [r6, #28]
100028c2:	|                  6170      	str	r0, [r6, #20]
100028c4:	|                  0720      	lsls	r0, r4, #28
100028c6:	|              /-- d504      	bpl.n	100028d2 <freopen+0x8e>
100028c8:	|              |   4630      	mov	r0, r6
100028ca:	|              |   2202      	movs	r2, #2
100028cc:	|              |   2100      	movs	r1, #0
100028ce:	|              |   f000 f8e1 	bl	10002a94 <_fseek>
100028d2:	|              \-> 6d30      	ldr	r0, [r6, #80]	; 0x50
100028d4:	|                  f040 0001 	orr.w	r0, r0, #1
100028d8:	|                  6530      	str	r0, [r6, #80]	; 0x50
100028da:	|                  4630      	mov	r0, r6
100028dc:	|              /-> e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
100028e0:	\--------------|-> 2000      	movs	r0, #0
100028e2:	               \-- e7fb      	b.n	100028dc <freopen+0x98>

100028e4 <fopen>:
100028e4:	          e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
100028e8:	          460d      	mov	r5, r1
100028ea:	          4606      	mov	r6, r0
100028ec:	          4c10      	ldr	r4, [pc, #64]	; (10002930 <fopen+0x4c>)
100028ee:	/-------> 6d20      	ldr	r0, [r4, #80]	; 0x50
100028f0:	|         07c1      	lsls	r1, r0, #31
100028f2:	|     /-- d004      	beq.n	100028fe <fopen+0x1a>
100028f4:	|     |   0841      	lsrs	r1, r0, #1
100028f6:	|  /--|-- d004      	beq.n	10002902 <fopen+0x1e>
100028f8:	|  |  |   f020 0401 	bic.w	r4, r0, #1
100028fc:	\--|--|-- e7f7      	b.n	100028ee <fopen+0xa>
100028fe:	   |  \-> 4622      	mov	r2, r4
10002900:	   |  /-- e00e      	b.n	10002920 <fopen+0x3c>
10002902:	   \--|-> 2054      	movs	r0, #84	; 0x54
10002904:	      |   f000 f897 	bl	10002a36 <malloc>
10002908:	      |   0007      	movs	r7, r0
1000290a:	   /--|-- d00e      	beq.n	1000292a <fopen+0x46>
1000290c:	   |  |   6d20      	ldr	r0, [r4, #80]	; 0x50
1000290e:	   |  |   f047 0101 	orr.w	r1, r7, #1
10002912:	   |  |   4308      	orrs	r0, r1
10002914:	   |  |   2154      	movs	r1, #84	; 0x54
10002916:	   |  |   6520      	str	r0, [r4, #80]	; 0x50
10002918:	   |  |   4638      	mov	r0, r7
1000291a:	   |  |   f7ff fe2d 	bl	10002578 <__aeabi_memclr4>
1000291e:	   |  |   463a      	mov	r2, r7
10002920:	   |  \-> 4629      	mov	r1, r5
10002922:	   |      4630      	mov	r0, r6
10002924:	   |      e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
10002928:	   |      e78c      	b.n	10002844 <freopen>
1000292a:	   \----> 2000      	movs	r0, #0
1000292c:	          e7d6      	b.n	100028dc <freopen+0x98>
1000292e:	          0000      	.short	0x0000
10002930:	          080023e8 	.word	0x080023e8

10002934 <_fclose_internal>:
10002934:	       e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
10002938:	       4604      	mov	r4, r0
1000293a:	       f04f 0900 	mov.w	r9, #0
1000293e:	       f04f 37ff 	mov.w	r7, #4294967295
10002942:	       68c5      	ldr	r5, [r0, #12]
10002944:	       e9d4 8604 	ldrd	r8, r6, [r4, #16]
10002948:	       07a8      	lsls	r0, r5, #30
1000294a:	/----- d007      	beq.n	1000295c <_fclose_internal+0x28>
1000294c:	|      4620      	mov	r0, r4
1000294e:	|      f000 f951 	bl	10002bf4 <_fflush>
10002952:	|      4630      	mov	r0, r6
10002954:	|      f002 fc48 	bl	100051e8 <_sys_close>
10002958:	|      2800      	cmp	r0, #0
1000295a:	|  /-- da02      	bge.n	10002962 <_fclose_internal+0x2e>
1000295c:	\--|-> 4638      	mov	r0, r7
1000295e:	/--|-> e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
10002962:	|  \-> 0528      	lsls	r0, r5, #20
10002964:	|  /-- d502      	bpl.n	1000296c <_fclose_internal+0x38>
10002966:	|  |   4640      	mov	r0, r8
10002968:	|  |   f7ff ff0e 	bl	10002788 <free>
1000296c:	|  \-> 214c      	movs	r1, #76	; 0x4c
1000296e:	|      4620      	mov	r0, r4
10002970:	|      f7ff fe02 	bl	10002578 <__aeabi_memclr4>
10002974:	|      6d20      	ldr	r0, [r4, #80]	; 0x50
10002976:	|      f020 0001 	bic.w	r0, r0, #1
1000297a:	|      6520      	str	r0, [r4, #80]	; 0x50
1000297c:	|      4648      	mov	r0, r9
1000297e:	\----- e7ee      	b.n	1000295e <_fclose_internal+0x2a>

10002980 <exit>:
10002980:	b510      	push	{r4, lr}
10002982:	4604      	mov	r4, r0
10002984:	f3af 8000 	nop.w
10002988:	4620      	mov	r0, r4
1000298a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
1000298e:	f7ff bd1d 	b.w	100023cc <__rt_exit>

10002992 <__rt_SIGRTRED>:
10002992:	b510      	push	{r4, lr}
10002994:	f000 f978 	bl	10002c88 <__rt_SIGRTRED_inner>
10002998:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
1000299c:	f000 b96e 	b.w	10002c7c <__sig_exit>

100029a0 <__rt_heap_descriptor>:
100029a0:	4800      	ldr	r0, [pc, #0]	; (100029a4 <__rt_heap_descriptor+0x4>)
100029a2:	4770      	bx	lr
100029a4:	080024ec 	.word	0x080024ec

100029a8 <__use_no_heap>:
100029a8:	4770      	bx	lr

100029aa <__heap$guard>:
100029aa:	4770      	bx	lr

100029ac <_terminate_user_alloc>:
100029ac:	4770      	bx	lr

100029ae <_init_user_alloc>:
100029ae:	4770      	bx	lr

100029b0 <__Heap_Full>:
100029b0:	b538      	push	{r3, r4, r5, lr}
100029b2:	4604      	mov	r4, r0
100029b4:	460a      	mov	r2, r1
100029b6:	2000      	movs	r0, #0
100029b8:	4669      	mov	r1, sp
100029ba:	f3af 8000 	nop.w
100029be:	2800      	cmp	r0, #0
100029c0:	bf08      	it	eq
100029c2:	bd38      	popeq	{r3, r4, r5, pc}
100029c4:	4602      	mov	r2, r0
100029c6:	9900      	ldr	r1, [sp, #0]
100029c8:	4620      	mov	r0, r4
100029ca:	f000 f985 	bl	10002cd8 <__Heap_ProvideMemory>
100029ce:	2001      	movs	r0, #1
100029d0:	bd38      	pop	{r3, r4, r5, pc}

100029d2 <__Heap_Broken>:
100029d2:	2001      	movs	r0, #1
100029d4:	f000 b972 	b.w	10002cbc <__rt_SIGRTMEM>

100029d8 <_init_alloc>:
100029d8:	    b5f8      	push	{r3, r4, r5, r6, r7, lr}
100029da:	    f3af 8000 	nop.w
100029de:	    4605      	mov	r5, r0
100029e0:	    2000      	movs	r0, #0
100029e2:	    460c      	mov	r4, r1
100029e4:	    2010      	movs	r0, #16
100029e6:	    bf00      	nop
100029e8:	    4606      	mov	r6, r0
100029ea:	    19a8      	adds	r0, r5, r6
100029ec:	    42a0      	cmp	r0, r4
100029ee:	/-- d90d      	bls.n	10002a0c <_init_alloc+0x34>
100029f0:	|   4632      	mov	r2, r6
100029f2:	|   4669      	mov	r1, sp
100029f4:	|   2000      	movs	r0, #0
100029f6:	|   f3af 8000 	nop.w
100029fa:	|   0007      	movs	r7, r0
100029fc:	|   bf08      	it	eq
100029fe:	|   f000 f95d 	bleq	10002cbc <__rt_SIGRTMEM>
10002a02:	|   9800      	ldr	r0, [sp, #0]
10002a04:	|   42a0      	cmp	r0, r4
10002a06:	|   bf18      	it	ne
10002a08:	|   4605      	movne	r5, r0
10002a0a:	|   19c4      	adds	r4, r0, r7
10002a0c:	\-> f7ff ffc8 	bl	100029a0 <__rt_heap_descriptor>
10002a10:	    6005      	str	r5, [r0, #0]
10002a12:	    4607      	mov	r7, r0
10002a14:	    1df0      	adds	r0, r6, #7
10002a16:	    f020 0007 	bic.w	r0, r0, #7
10002a1a:	    1946      	adds	r6, r0, r5
10002a1c:	    4628      	mov	r0, r5
10002a1e:	    f000 f954 	bl	10002cca <__Heap_Initialize>
10002a22:	    42b4      	cmp	r4, r6
10002a24:	    bf08      	it	eq
10002a26:	    bdf8      	popeq	{r3, r4, r5, r6, r7, pc}
10002a28:	    1ba2      	subs	r2, r4, r6
10002a2a:	    4631      	mov	r1, r6
10002a2c:	    6838      	ldr	r0, [r7, #0]
10002a2e:	    e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
10002a32:	    f000 b951 	b.w	10002cd8 <__Heap_ProvideMemory>

10002a36 <malloc>:
10002a36:	                b570      	push	{r4, r5, r6, lr}
10002a38:	                4606      	mov	r6, r0
10002a3a:	                f7ff ffb1 	bl	100029a0 <__rt_heap_descriptor>
10002a3e:	                6805      	ldr	r5, [r0, #0]
10002a40:	                f106 000b 	add.w	r0, r6, #11
10002a44:	                f020 0407 	bic.w	r4, r0, #7
10002a48:	                42b4      	cmp	r4, r6
10002a4a:	                bf9c      	itt	ls
10002a4c:	                2000      	movls	r0, #0
10002a4e:	                bd70      	popls	{r4, r5, r6, pc}
10002a50:	/-------------> 462b      	mov	r3, r5
10002a52:	|               686a      	ldr	r2, [r5, #4]
10002a54:	|  /----------- b1ba      	cbz	r2, 10002a86 <malloc+0x50>
10002a56:	|  |  /-------> 6810      	ldr	r0, [r2, #0]
10002a58:	|  |  |         42a0      	cmp	r0, r4
10002a5a:	|  |  |  /----- d310      	bcc.n	10002a7e <malloc+0x48>
10002a5c:	|  |  |  |      f104 0108 	add.w	r1, r4, #8
10002a60:	|  |  |  |      4288      	cmp	r0, r1
10002a62:	|  |  |  |      bf3c      	itt	cc
10002a64:	|  |  |  |      6850      	ldrcc	r0, [r2, #4]
10002a66:	|  |  |  |      6058      	strcc	r0, [r3, #4]
10002a68:	|  |  |  |  /-- d307      	bcc.n	10002a7a <malloc+0x44>
10002a6a:	|  |  |  |  |   6851      	ldr	r1, [r2, #4]
10002a6c:	|  |  |  |  |   1910      	adds	r0, r2, r4
10002a6e:	|  |  |  |  |   6041      	str	r1, [r0, #4]
10002a70:	|  |  |  |  |   6811      	ldr	r1, [r2, #0]
10002a72:	|  |  |  |  |   1b09      	subs	r1, r1, r4
10002a74:	|  |  |  |  |   6001      	str	r1, [r0, #0]
10002a76:	|  |  |  |  |   6058      	str	r0, [r3, #4]
10002a78:	|  |  |  |  |   6014      	str	r4, [r2, #0]
10002a7a:	|  |  |  |  \-> 1d10      	adds	r0, r2, #4
10002a7c:	|  |  |  |      bd70      	pop	{r4, r5, r6, pc}
10002a7e:	|  |  |  \----> 4613      	mov	r3, r2
10002a80:	|  |  |         6852      	ldr	r2, [r2, #4]
10002a82:	|  |  |         2a00      	cmp	r2, #0
10002a84:	|  |  \-------- d1e7      	bne.n	10002a56 <malloc+0x20>
10002a86:	|  \----------> 4621      	mov	r1, r4
10002a88:	|               4628      	mov	r0, r5
10002a8a:	|               f7ff ff91 	bl	100029b0 <__Heap_Full>
10002a8e:	|               2800      	cmp	r0, #0
10002a90:	\-------------- d1de      	bne.n	10002a50 <malloc+0x1a>
10002a92:	                bd70      	pop	{r4, r5, r6, pc}

10002a94 <_fseek>:
10002a94:	                e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
10002a98:	                4604      	mov	r4, r0
10002a9a:	                4616      	mov	r6, r2
10002a9c:	                460d      	mov	r5, r1
10002a9e:	                6947      	ldr	r7, [r0, #20]
10002aa0:	                7b00      	ldrb	r0, [r0, #12]
10002aa2:	                0780      	lsls	r0, r0, #30
10002aa4:	   /----------- d02e      	beq.n	10002b04 <_fseek+0x70>
10002aa6:	   |            4638      	mov	r0, r7
10002aa8:	   |            f002 fba4 	bl	100051f4 <_sys_istty>
10002aac:	   +----------- bb50      	cbnz	r0, 10002b04 <_fseek+0x70>
10002aae:	   |  /-------- b33e      	cbz	r6, 10002b00 <_fseek+0x6c>
10002ab0:	   |  |         2e01      	cmp	r6, #1
10002ab2:	   |  |     /-- d002      	beq.n	10002aba <_fseek+0x26>
10002ab4:	   |  |     |   2e02      	cmp	r6, #2
10002ab6:	   +--|-----|-- d125      	bne.n	10002b04 <_fseek+0x70>
10002ab8:	   |  |  /--|-- e004      	b.n	10002ac4 <_fseek+0x30>
10002aba:	   |  |  |  \-> 4620      	mov	r0, r4
10002abc:	   |  |  |      f000 f926 	bl	10002d0c <_ftell_internal>
10002ac0:	   |  |  |      4405      	add	r5, r0
10002ac2:	   |  +--|----- e01d      	b.n	10002b00 <_fseek+0x6c>
10002ac4:	   |  |  \----> 4638      	mov	r0, r7
10002ac6:	   |  |         f002 fb93 	bl	100051f0 <_sys_flen>
10002aca:	   |  |         68e1      	ldr	r1, [r4, #12]
10002acc:	   |  |         2800      	cmp	r0, #0
10002ace:	   |  |         f041 0110 	orr.w	r1, r1, #16
10002ad2:	   |  |         60e1      	str	r1, [r4, #12]
10002ad4:	   |  |     /-- da05      	bge.n	10002ae2 <_fseek+0x4e>
10002ad6:	   |  |     |   4620      	mov	r0, r4
10002ad8:	   |  |     |   f000 f858 	bl	10002b8c <_seterr>
10002adc:	   |  |     |   2001      	movs	r0, #1
10002ade:	/--|--|-----|-> e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
10002ae2:	|  |  |     \-> 03c9      	lsls	r1, r1, #15
10002ae4:	|  |  |  /----- d50b      	bpl.n	10002afe <_fseek+0x6a>
10002ae6:	|  |  |  |      6862      	ldr	r2, [r4, #4]
10002ae8:	|  |  |  |      6ae1      	ldr	r1, [r4, #44]	; 0x2c
10002aea:	|  |  |  |      4291      	cmp	r1, r2
10002aec:	|  |  |  |  /-- d800      	bhi.n	10002af0 <_fseek+0x5c>
10002aee:	|  |  |  |  |   4611      	mov	r1, r2
10002af0:	|  |  |  |  \-> 69a2      	ldr	r2, [r4, #24]
10002af2:	|  |  |  |      4411      	add	r1, r2
10002af4:	|  |  |  |      6922      	ldr	r2, [r4, #16]
10002af6:	|  |  |  |      1a89      	subs	r1, r1, r2
10002af8:	|  |  |  |      4281      	cmp	r1, r0
10002afa:	|  |  |  +----- dd00      	ble.n	10002afe <_fseek+0x6a>
10002afc:	|  |  |  |      4608      	mov	r0, r1
10002afe:	|  |  |  \----> 4405      	add	r5, r0
10002b00:	|  |  \-------> 2d00      	cmp	r5, #0
10002b02:	|  |        /-- da01      	bge.n	10002b08 <_fseek+0x74>
10002b04:	|  \--------|-> 2002      	movs	r0, #2
10002b06:	+-----------|-- e7ea      	b.n	10002ade <_fseek+0x4a>
10002b08:	|           \-> 6ae1      	ldr	r1, [r4, #44]	; 0x2c
10002b0a:	|               6860      	ldr	r0, [r4, #4]
10002b0c:	|               68e2      	ldr	r2, [r4, #12]
10002b0e:	|               4281      	cmp	r1, r0
10002b10:	|           /-- d206      	bcs.n	10002b20 <_fseek+0x8c>
10002b12:	|           |   0391      	lsls	r1, r2, #14
10002b14:	|           |   62e0      	str	r0, [r4, #44]	; 0x2c
10002b16:	|           +-- d503      	bpl.n	10002b20 <_fseek+0x8c>
10002b18:	|           |   f422 3100 	bic.w	r1, r2, #131072	; 0x20000
10002b1c:	|           |   f041 0210 	orr.w	r2, r1, #16
10002b20:	|           \-> 69a6      	ldr	r6, [r4, #24]
10002b22:	|               2700      	movs	r7, #0
10002b24:	|               42ae      	cmp	r6, r5
10002b26:	|     /-------- dc13      	bgt.n	10002b50 <_fseek+0xbc>
10002b28:	|     |         6ae1      	ldr	r1, [r4, #44]	; 0x2c
10002b2a:	|     |         4281      	cmp	r1, r0
10002b2c:	|     |  /----- d901      	bls.n	10002b32 <_fseek+0x9e>
10002b2e:	|     |  |      460b      	mov	r3, r1
10002b30:	|     |  |  /-- e000      	b.n	10002b34 <_fseek+0xa0>
10002b32:	|     |  \--|-> 4603      	mov	r3, r0
10002b34:	|     |     \-> eb03 0c06 	add.w	ip, r3, r6
10002b38:	|     |         6923      	ldr	r3, [r4, #16]
10002b3a:	|     |         ebac 0c03 	sub.w	ip, ip, r3
10002b3e:	|     |         45ac      	cmp	ip, r5
10002b40:	|     +-------- dd06      	ble.n	10002b50 <_fseek+0xbc>
10002b42:	|     |         4281      	cmp	r1, r0
10002b44:	|     |  /----- d901      	bls.n	10002b4a <_fseek+0xb6>
10002b46:	|     |  |      468c      	mov	ip, r1
10002b48:	|     |  |  /-- e000      	b.n	10002b4c <_fseek+0xb8>
10002b4a:	|     |  \--|-> 4684      	mov	ip, r0
10002b4c:	|     |     \-> 459c      	cmp	ip, r3
10002b4e:	|     |     /-- d105      	bne.n	10002b5c <_fseek+0xc8>
10002b50:	|     \-----|-> 60a7      	str	r7, [r4, #8]
10002b52:	|           |   6027      	str	r7, [r4, #0]
10002b54:	|           |   f042 0020 	orr.w	r0, r2, #32
10002b58:	|           |   62a5      	str	r5, [r4, #40]	; 0x28
10002b5a:	|        /--|-- e00d      	b.n	10002b78 <_fseek+0xe4>
10002b5c:	|        |  \-> 1bad      	subs	r5, r5, r6
10002b5e:	|        |      69e6      	ldr	r6, [r4, #28]
10002b60:	|        |      1bae      	subs	r6, r5, r6
10002b62:	|        |      4281      	cmp	r1, r0
10002b64:	|        |      60a6      	str	r6, [r4, #8]
10002b66:	|        |  /-- d900      	bls.n	10002b6a <_fseek+0xd6>
10002b68:	|        |  |   4608      	mov	r0, r1
10002b6a:	|        |  \-> 1ac0      	subs	r0, r0, r3
10002b6c:	|        |      1a28      	subs	r0, r5, r0
10002b6e:	|        |      6020      	str	r0, [r4, #0]
10002b70:	|        |      1958      	adds	r0, r3, r5
10002b72:	|        |      6060      	str	r0, [r4, #4]
10002b74:	|        |      f022 0020 	bic.w	r0, r2, #32
10002b78:	|        \----> 4903      	ldr	r1, [pc, #12]	; (10002b88 <_fseek+0xf4>)
10002b7a:	|               4008      	ands	r0, r1
10002b7c:	|               60e0      	str	r0, [r4, #12]
10002b7e:	|               2000      	movs	r0, #0
10002b80:	|               f884 7048 	strb.w	r7, [r4, #72]	; 0x48
10002b84:	\-------------- e7ab      	b.n	10002ade <_fseek+0x4a>
10002b86:	                0000      	.short	0x0000
10002b88:	                ffd7cfbf 	.word	0xffd7cfbf

10002b8c <_seterr>:
10002b8c:	68c1      	ldr	r1, [r0, #12]
10002b8e:	f421 1100 	bic.w	r1, r1, #2097152	; 0x200000
10002b92:	f041 0180 	orr.w	r1, r1, #128	; 0x80
10002b96:	60c1      	str	r1, [r0, #12]
10002b98:	2100      	movs	r1, #0
10002b9a:	6081      	str	r1, [r0, #8]
10002b9c:	6001      	str	r1, [r0, #0]
10002b9e:	4770      	bx	lr

10002ba0 <_writebuf>:
10002ba0:	       e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
10002ba4:	       4681      	mov	r9, r0
10002ba6:	       4614      	mov	r4, r2
10002ba8:	       460e      	mov	r6, r1
10002baa:	       f04f 38ff 	mov.w	r8, #4294967295
10002bae:	       4832      	ldr	r0, [pc, #200]	; (10002c78 <_deferredlazyseek+0x3e>)
10002bb0:	       68d5      	ldr	r5, [r2, #12]
10002bb2:	       6957      	ldr	r7, [r2, #20]
10002bb4:	       4205      	tst	r5, r0
10002bb6:	   /-- d009      	beq.n	10002bcc <_writebuf+0x2c>
10002bb8:	   |   4638      	mov	r0, r7
10002bba:	   |   69a1      	ldr	r1, [r4, #24]
10002bbc:	   |   f002 fb1e 	bl	100051fc <_sys_seek>
10002bc0:	   |   2800      	cmp	r0, #0
10002bc2:	/--|-- db11      	blt.n	10002be8 <_writebuf+0x48>
10002bc4:	|  |   482c      	ldr	r0, [pc, #176]	; (10002c78 <_deferredlazyseek+0x3e>)
10002bc6:	|  |   43c0      	mvns	r0, r0
10002bc8:	|  |   4005      	ands	r5, r0
10002bca:	|  |   60e5      	str	r5, [r4, #12]
10002bcc:	|  \-> 462b      	mov	r3, r5
10002bce:	|      4632      	mov	r2, r6
10002bd0:	|      4649      	mov	r1, r9
10002bd2:	|      4638      	mov	r0, r7
10002bd4:	|      f002 fb16 	bl	10005204 <_sys_write>
10002bd8:	|      69a1      	ldr	r1, [r4, #24]
10002bda:	|      f020 4200 	bic.w	r2, r0, #2147483648	; 0x80000000
10002bde:	|      1ab2      	subs	r2, r6, r2
10002be0:	|      4411      	add	r1, r2
10002be2:	|      2800      	cmp	r0, #0
10002be4:	|      61a1      	str	r1, [r4, #24]
10002be6:	|  /-- d003      	beq.n	10002bf0 <_writebuf+0x50>
10002be8:	\--|-> 4620      	mov	r0, r4
10002bea:	   |   f7ff ffcf 	bl	10002b8c <_seterr>
10002bee:	   |   4640      	mov	r0, r8
10002bf0:	   \-> e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

10002bf4 <_fflush>:
10002bf4:	       b570      	push	{r4, r5, r6, lr}
10002bf6:	       4604      	mov	r4, r0
10002bf8:	       6905      	ldr	r5, [r0, #16]
10002bfa:	       6ac0      	ldr	r0, [r0, #44]	; 0x2c
10002bfc:	       6861      	ldr	r1, [r4, #4]
10002bfe:	       4288      	cmp	r0, r1
10002c00:	   /-- d800      	bhi.n	10002c04 <_fflush+0x10>
10002c02:	   |   4608      	mov	r0, r1
10002c04:	   \-> 68e1      	ldr	r1, [r4, #12]
10002c06:	       f421 1120 	bic.w	r1, r1, #2621440	; 0x280000
10002c0a:	       60e1      	str	r1, [r4, #12]
10002c0c:	       03c9      	lsls	r1, r1, #15
10002c0e:	/----- d512      	bpl.n	10002c36 <_fflush+0x42>
10002c10:	|      42a8      	cmp	r0, r5
10002c12:	|  /-- d008      	beq.n	10002c26 <_fflush+0x32>
10002c14:	|  |   4622      	mov	r2, r4
10002c16:	|  |   1b41      	subs	r1, r0, r5
10002c18:	|  |   4628      	mov	r0, r5
10002c1a:	|  |   f7ff ffc1 	bl	10002ba0 <_writebuf>
10002c1e:	|  +-- b110      	cbz	r0, 10002c26 <_fflush+0x32>
10002c20:	|  |   f04f 30ff 	mov.w	r0, #4294967295
10002c24:	|  |   bd70      	pop	{r4, r5, r6, pc}
10002c26:	|  \-> 2000      	movs	r0, #0
10002c28:	|      62e5      	str	r5, [r4, #44]	; 0x2c
10002c2a:	|      e9c4 5001 	strd	r5, r0, [r4, #4]
10002c2e:	|      68e0      	ldr	r0, [r4, #12]
10002c30:	|      f420 3080 	bic.w	r0, r0, #65536	; 0x10000
10002c34:	|      60e0      	str	r0, [r4, #12]
10002c36:	\----> 2000      	movs	r0, #0
10002c38:	       bd70      	pop	{r4, r5, r6, pc}

10002c3a <_deferredlazyseek>:
10002c3a:	    b510      	push	{r4, lr}
10002c3c:	    4604      	mov	r4, r0
10002c3e:	    68c0      	ldr	r0, [r0, #12]
10002c40:	    f020 0020 	bic.w	r0, r0, #32
10002c44:	    60e0      	str	r0, [r4, #12]
10002c46:	    6aa1      	ldr	r1, [r4, #40]	; 0x28
10002c48:	    69a0      	ldr	r0, [r4, #24]
10002c4a:	    4288      	cmp	r0, r1
10002c4c:	/-- d00d      	beq.n	10002c6a <_deferredlazyseek+0x30>
10002c4e:	|   4620      	mov	r0, r4
10002c50:	|   f7ff ffd0 	bl	10002bf4 <_fflush>
10002c54:	|   68e0      	ldr	r0, [r4, #12]
10002c56:	|   f420 5040 	bic.w	r0, r0, #12288	; 0x3000
10002c5a:	|   f040 0010 	orr.w	r0, r0, #16
10002c5e:	|   60e0      	str	r0, [r4, #12]
10002c60:	|   6aa0      	ldr	r0, [r4, #40]	; 0x28
10002c62:	|   61a0      	str	r0, [r4, #24]
10002c64:	|   6920      	ldr	r0, [r4, #16]
10002c66:	|   62e0      	str	r0, [r4, #44]	; 0x2c
10002c68:	|   6060      	str	r0, [r4, #4]
10002c6a:	\-> f244 0140 	movw	r1, #16448	; 0x4040
10002c6e:	    68e0      	ldr	r0, [r4, #12]
10002c70:	    4388      	bics	r0, r1
10002c72:	    60e0      	str	r0, [r4, #12]
10002c74:	    bd10      	pop	{r4, pc}
10002c76:	    0000      	.short	0x0000
10002c78:	    00020010 	.word	0x00020010

10002c7c <__sig_exit>:
10002c7c:	    2800      	cmp	r0, #0
10002c7e:	/-- d001      	beq.n	10002c84 <__sig_exit+0x8>
10002c80:	|   f002 bab4 	b.w	100051ec <_sys_exit>
10002c84:	\-> 4770      	bx	lr
	...

10002c88 <__rt_SIGRTRED_inner>:
10002c88:	b510      	push	{r4, lr}
10002c8a:	4601      	mov	r1, r0
10002c8c:	a002      	add	r0, pc, #8	; (adr r0, 10002c98 <__rt_SIGRTRED_inner+0x10>)
10002c8e:	f000 f85e 	bl	10002d4e <__default_signal_display>
10002c92:	2001      	movs	r0, #1
10002c94:	bd10      	pop	{r4, pc}
10002c96:	0000      	.short	0x0000
10002c98:	52474953 	.word	0x52474953
10002c9c:	44455254 	.word	0x44455254
10002ca0:	6552203a 	.word	0x6552203a
10002ca4:	65726964 	.word	0x65726964
10002ca8:	203a7463 	.word	0x203a7463
10002cac:	276e6163 	.word	0x276e6163
10002cb0:	706f2074 	.word	0x706f2074
10002cb4:	203a6e65 	.word	0x203a6e65
10002cb8:	00000000 	.word	0x00000000

10002cbc <__rt_SIGRTMEM>:
10002cbc:	b510      	push	{r4, lr}
10002cbe:	f000 f85f 	bl	10002d80 <__rt_SIGRTMEM_inner>
10002cc2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
10002cc6:	f7ff bfd9 	b.w	10002c7c <__sig_exit>

10002cca <__Heap_Initialize>:
10002cca:	2100      	movs	r1, #0
10002ccc:	6001      	str	r1, [r0, #0]
10002cce:	e9c0 1001 	strd	r1, r0, [r0, #4]
10002cd2:	4770      	bx	lr

10002cd4 <__Heap_DescSize>:
10002cd4:	2010      	movs	r0, #16
10002cd6:	4770      	bx	lr

10002cd8 <__Heap_ProvideMemory>:
10002cd8:	    4603      	mov	r3, r0
10002cda:	    6840      	ldr	r0, [r0, #4]
10002cdc:	    468c      	mov	ip, r1
10002cde:	/-> 2800      	cmp	r0, #0
10002ce0:	|   bf18      	it	ne
10002ce2:	|   4288      	cmpne	r0, r1
10002ce4:	|   bf3c      	itt	cc
10002ce6:	|   4603      	movcc	r3, r0
10002ce8:	|   6840      	ldrcc	r0, [r0, #4]
10002cea:	\-- d3f8      	bcc.n	10002cde <__Heap_ProvideMemory+0x6>
10002cec:	    6818      	ldr	r0, [r3, #0]
10002cee:	    4418      	add	r0, r3
10002cf0:	    4288      	cmp	r0, r1
10002cf2:	/-- d007      	beq.n	10002d04 <__Heap_ProvideMemory+0x2c>
10002cf4:	|   f10c 0003 	add.w	r0, ip, #3
10002cf8:	|   f020 0007 	bic.w	r0, r0, #7
10002cfc:	|   1d00      	adds	r0, r0, #4
10002cfe:	|   1a41      	subs	r1, r0, r1
10002d00:	|   1a52      	subs	r2, r2, r1
10002d02:	|   4601      	mov	r1, r0
10002d04:	\-> 1d08      	adds	r0, r1, #4
10002d06:	    600a      	str	r2, [r1, #0]
10002d08:	    f7ff bd3e 	b.w	10002788 <free>

10002d0c <_ftell_internal>:
10002d0c:	          b510      	push	{r4, lr}
10002d0e:	          4601      	mov	r1, r0
10002d10:	          68c2      	ldr	r2, [r0, #12]
10002d12:	          0790      	lsls	r0, r2, #30
10002d14:	      /-- d003      	beq.n	10002d1e <_ftell_internal+0x12>
10002d16:	      |   0690      	lsls	r0, r2, #26
10002d18:	   /--|-- d507      	bpl.n	10002d2a <_ftell_internal+0x1e>
10002d1a:	   |  |   6a88      	ldr	r0, [r1, #40]	; 0x28
10002d1c:	/--|--|-- e00a      	b.n	10002d34 <_ftell_internal+0x28>
10002d1e:	|  |  \-> f000 f857 	bl	10002dd0 <__aeabi_errno_addr>
10002d22:	|  |      2101      	movs	r1, #1
10002d24:	|  |      6001      	str	r1, [r0, #0]
10002d26:	|  |      1e88      	subs	r0, r1, #2
10002d28:	|  |      bd10      	pop	{r4, pc}
10002d2a:	|  \----> 698b      	ldr	r3, [r1, #24]
10002d2c:	|         6848      	ldr	r0, [r1, #4]
10002d2e:	|         4418      	add	r0, r3
10002d30:	|         690b      	ldr	r3, [r1, #16]
10002d32:	|         1ac0      	subs	r0, r0, r3
10002d34:	\-------> f891 3048 	ldrb.w	r3, [r1, #72]	; 0x48
10002d38:	   /----- b11b      	cbz	r3, 10002d42 <_ftell_internal+0x36>
10002d3a:	   |      f891 1049 	ldrb.w	r1, [r1, #73]	; 0x49
10002d3e:	   |      1a40      	subs	r0, r0, r1
10002d40:	   |  /-> bd10      	pop	{r4, pc}
10002d42:	   \--|-> 0311      	lsls	r1, r2, #12
10002d44:	      +-- d5fc      	bpl.n	10002d40 <_ftell_internal+0x34>
10002d46:	      |   2800      	cmp	r0, #0
10002d48:	      \-- ddfa      	ble.n	10002d40 <_ftell_internal+0x34>
10002d4a:	          1e40      	subs	r0, r0, #1
10002d4c:	          bd10      	pop	{r4, pc}

10002d4e <__default_signal_display>:
10002d4e:	          b570      	push	{r4, r5, r6, lr}
10002d50:	          4605      	mov	r5, r0
10002d52:	          460c      	mov	r4, r1
10002d54:	          200a      	movs	r0, #10
10002d56:	      /-- e000      	b.n	10002d5a <__default_signal_display+0xc>
10002d58:	   /--|-> 1c6d      	adds	r5, r5, #1
10002d5a:	   |  \-> f002 fa55 	bl	10005208 <_ttywrch>
10002d5e:	/--|----- b135      	cbz	r5, 10002d6e <__default_signal_display+0x20>
10002d60:	|  |      7828      	ldrb	r0, [r5, #0]
10002d62:	|  |      2800      	cmp	r0, #0
10002d64:	|  \----- d1f8      	bne.n	10002d58 <__default_signal_display+0xa>
10002d66:	+-------- e002      	b.n	10002d6e <__default_signal_display+0x20>
10002d68:	|  /----> 1c64      	adds	r4, r4, #1
10002d6a:	|  |      f002 fa4d 	bl	10005208 <_ttywrch>
10002d6e:	\--|--/-X b114      	cbz	r4, 10002d76 <__default_signal_display+0x28>
10002d70:	   |  |   7820      	ldrb	r0, [r4, #0]
10002d72:	   |  |   2800      	cmp	r0, #0
10002d74:	   \--|-- d1f8      	bne.n	10002d68 <__default_signal_display+0x1a>
10002d76:	      \-> e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
10002d7a:	          200a      	movs	r0, #10
10002d7c:	          f002 ba44 	b.w	10005208 <_ttywrch>

10002d80 <__rt_SIGRTMEM_inner>:
10002d80:	       b510      	push	{r4, lr}
10002d82:	       2801      	cmp	r0, #1
10002d84:	/----- d005      	beq.n	10002d92 <__rt_SIGRTMEM_inner+0x12>
10002d86:	|      2100      	movs	r1, #0
10002d88:	|  /-> a003      	add	r0, pc, #12	; (adr r0, 10002d98 <__rt_SIGRTMEM_inner+0x18>)
10002d8a:	|  |   f7ff ffe0 	bl	10002d4e <__default_signal_display>
10002d8e:	|  |   2001      	movs	r0, #1
10002d90:	|  |   bd10      	pop	{r4, pc}
10002d92:	\--|-> a109      	add	r1, pc, #36	; (adr r1, 10002db8 <__rt_SIGRTMEM_inner+0x38>)
10002d94:	   \-- e7f8      	b.n	10002d88 <__rt_SIGRTMEM_inner+0x8>
10002d96:	       0000      	.short	0x0000
10002d98:	       52474953 	.word	0x52474953
10002d9c:	       4d454d54 	.word	0x4d454d54
10002da0:	       754f203a 	.word	0x754f203a
10002da4:	       666f2074 	.word	0x666f2074
10002da8:	       61656820 	.word	0x61656820
10002dac:	       656d2070 	.word	0x656d2070
10002db0:	       79726f6d 	.word	0x79726f6d
10002db4:	       00000000 	.word	0x00000000
10002db8:	       6548203a 	.word	0x6548203a
10002dbc:	       6d207061 	.word	0x6d207061
10002dc0:	       726f6d65 	.word	0x726f6d65
10002dc4:	       6f632079 	.word	0x6f632079
10002dc8:	       70757272 	.word	0x70757272
10002dcc:	       00646574 	.word	0x00646574

10002dd0 <__aeabi_errno_addr>:
10002dd0:	4800      	ldr	r0, [pc, #0]	; (10002dd4 <__aeabi_errno_addr+0x4>)
10002dd2:	4770      	bx	lr
10002dd4:	080024e4 	.word	0x080024e4

10002dd8 <AES128_ECB_encrypt>:
10002dd8:	f002 bc56 	b.w	10005688 <gen_cipher>

10002ddc <Cy_GPIO_Pin_FastInit>:
10002ddc:	                            2908      	cmp	r1, #8
10002dde:	                        /-- d300      	bcc.n	10002de2 <Cy_GPIO_Pin_FastInit+0x6>
10002de0:	                        |   be01      	bkpt	0x0001
10002de2:	                        \-> 2a0f      	cmp	r2, #15
10002de4:	/-------------------------- d84a      	bhi.n	10002e7c <Cy_GPIO_Pin_FastInit+0xa0>
10002de6:	|                           f022 0c08 	bic.w	ip, r2, #8
10002dea:	|                           f1bc 0f01 	cmp.w	ip, #1
10002dee:	+-------------------------- d045      	beq.n	10002e7c <Cy_GPIO_Pin_FastInit+0xa0>
10002df0:	|                           b5f0      	push	{r4, r5, r6, r7, lr}
10002df2:	|                           f8dd c014 	ldr.w	ip, [sp, #20]
10002df6:	|                           2b02      	cmp	r3, #2
10002df8:	|                 /-------- d246      	bcs.n	10002e88 <Cy_GPIO_Pin_FastInit+0xac>
10002dfa:	|                 |     /-> f1bc 0f20 	cmp.w	ip, #32
10002dfe:	|           /-----|-----|-- d247      	bcs.n	10002e90 <Cy_GPIO_Pin_FastInit+0xb4>
10002e00:	|           |     |  /--|-> 2908      	cmp	r1, #8
10002e02:	|     /-----|-----|--|--|-- d248      	bcs.n	10002e96 <Cy_GPIO_Pin_FastInit+0xba>
10002e04:	|     |     |  /--|--|--|-> f01c 0fe0 	tst.w	ip, #224	; 0xe0
10002e08:	|  /--|-----|--|--|--|--|-- d000      	beq.n	10002e0c <Cy_GPIO_Pin_FastInit+0x30>
10002e0a:	|  |  |  /--|--|--|--|--|-> be01      	bkpt	0x0001
10002e0c:	|  >--|--|--|--|--|--|--|-> f242 7eb8 	movw	lr, #10168	; 0x27b8
10002e10:	|  |  |  |  |  |  |  |  |   f6c0 0e00 	movt	lr, #2048	; 0x800
10002e14:	|  |  |  |  |  |  |  |  |   f8de e000 	ldr.w	lr, [lr]
10002e18:	|  |  |  |  |  |  |  |  |   f06f 060f 	mvn.w	r6, #15
10002e1c:	|  |  |  |  |  |  |  |  |   e9de 5405 	ldrd	r5, r4, [lr, #20]
10002e20:	|  |  |  |  |  |  |  |  |   2904      	cmp	r1, #4
10002e22:	|  |  |  |  |  |  |  |  |   eba0 0404 	sub.w	r4, r0, r4
10002e26:	|  |  |  |  |  |  |  |  |   ea06 04d4 	and.w	r4, r6, r4, lsr #3
10002e2a:	|  |  |  |  |  |  |  |  |   442c      	add	r4, r5
10002e2c:	|  |  |  |  |  |  |  |  |   f06f 051f 	mvn.w	r5, #31
10002e30:	|  |  |  |  |  |  |  |  |   eb05 05c1 	add.w	r5, r5, r1, lsl #3
10002e34:	|  |  |  |  |  |  |  |  |   bf34      	ite	cc
10002e36:	|  |  |  |  |  |  |  |  |   00cd      	lslcc	r5, r1, #3
10002e38:	|  |  |  |  |  |  |  |  |   3404      	addcs	r4, #4
10002e3a:	|  |  |  |  |  |  |  |  |   6826      	ldr	r6, [r4, #0]
10002e3c:	|  |  |  |  |  |  |  |  |   271f      	movs	r7, #31
10002e3e:	|  |  |  |  |  |  |  |  |   40af      	lsls	r7, r5
10002e40:	|  |  |  |  |  |  |  |  |   43be      	bics	r6, r7
10002e42:	|  |  |  |  |  |  |  |  |   f00c 071f 	and.w	r7, ip, #31
10002e46:	|  |  |  |  |  |  |  |  |   40af      	lsls	r7, r5
10002e48:	|  |  |  |  |  |  |  |  |   4337      	orrs	r7, r6
10002e4a:	|  |  |  |  |  |  |  |  |   6027      	str	r7, [r4, #0]
10002e4c:	|  |  |  |  |  |  |  |  |   6807      	ldr	r7, [r0, #0]
10002e4e:	|  |  |  |  |  |  |  |  |   2601      	movs	r6, #1
10002e50:	|  |  |  |  |  |  |  |  |   408e      	lsls	r6, r1
10002e52:	|  |  |  |  |  |  |  |  |   f003 0301 	and.w	r3, r3, #1
10002e56:	|  |  |  |  |  |  |  |  |   43b7      	bics	r7, r6
10002e58:	|  |  |  |  |  |  |  |  |   408b      	lsls	r3, r1
10002e5a:	|  |  |  |  |  |  |  |  |   433b      	orrs	r3, r7
10002e5c:	|  |  |  |  |  |  |  |  |   6003      	str	r3, [r0, #0]
10002e5e:	|  |  |  |  |  |  |  |  |   f89e 3081 	ldrb.w	r3, [lr, #129]	; 0x81
10002e62:	|  |  |  |  |  |  |  |  |   0089      	lsls	r1, r1, #2
10002e64:	|  |  |  |  |  |  |  |  |   581f      	ldr	r7, [r3, r0]
10002e66:	|  |  |  |  |  |  |  |  |   260f      	movs	r6, #15
10002e68:	|  |  |  |  |  |  |  |  |   408e      	lsls	r6, r1
10002e6a:	|  |  |  |  |  |  |  |  |   f002 020f 	and.w	r2, r2, #15
10002e6e:	|  |  |  |  |  |  |  |  |   43b7      	bics	r7, r6
10002e70:	|  |  |  |  |  |  |  |  |   fa02 f101 	lsl.w	r1, r2, r1
10002e74:	|  |  |  |  |  |  |  |  |   4339      	orrs	r1, r7
10002e76:	|  |  |  |  |  |  |  |  |   5019      	str	r1, [r3, r0]
10002e78:	|  |  |  |  |  |  |  |  |   bdf0      	pop	{r4, r5, r6, r7, pc}
10002e7a:	|  |  |  |  |  |  |  |  |   bf00      	nop
10002e7c:	\--|--|--|--|--|--|--|--|-> be01      	bkpt	0x0001
10002e7e:	   |  |  |  |  |  |  |  |   b5f0      	push	{r4, r5, r6, r7, lr}
10002e80:	   |  |  |  |  |  |  |  |   f8dd c014 	ldr.w	ip, [sp, #20]
10002e84:	   |  |  |  |  |  |  |  |   2b02      	cmp	r3, #2
10002e86:	   |  |  |  |  |  |  |  \-- d3b8      	bcc.n	10002dfa <Cy_GPIO_Pin_FastInit+0x1e>
10002e88:	   |  |  |  |  |  \--|----> be01      	bkpt	0x0001
10002e8a:	   |  |  |  |  |     |      f1bc 0f20 	cmp.w	ip, #32
10002e8e:	   |  |  |  |  |     \----- d3b7      	bcc.n	10002e00 <Cy_GPIO_Pin_FastInit+0x24>
10002e90:	   |  |  |  \--|----------> be01      	bkpt	0x0001
10002e92:	   |  |  |     |            2908      	cmp	r1, #8
10002e94:	   |  |  |     \----------- d3b6      	bcc.n	10002e04 <Cy_GPIO_Pin_FastInit+0x28>
10002e96:	   |  \--|----------------> be01      	bkpt	0x0001
10002e98:	   |     |                  f01c 0fe0 	tst.w	ip, #224	; 0xe0
10002e9c:	   |     \----------------- d1b5      	bne.n	10002e0a <Cy_GPIO_Pin_FastInit+0x2e>
10002e9e:	   \----------------------- e7b5      	b.n	10002e0c <Cy_GPIO_Pin_FastInit+0x30>

10002ea0 <Cy_GPIO_Pin_Init>:
10002ea0:	                                                                         2301      	movs	r3, #1
10002ea2:	                                                                         2800      	cmp	r0, #0
10002ea4:	                                                                         f2c0 035a 	movt	r3, #90	; 0x5a
10002ea8:	                                                                         bf18      	it	ne
10002eaa:	                                                                         2a00      	cmpne	r2, #0
10002eac:	                                                                     /-- d102      	bne.n	10002eb4 <Cy_GPIO_Pin_Init+0x14>
10002eae:	                                                                     |   4618      	mov	r0, r3
10002eb0:	                                                                     |   4770      	bx	lr
10002eb2:	                                                                     |   bf00      	nop
10002eb4:	                                                                     \-> 2908      	cmp	r1, #8
10002eb6:	                                                                  /----- d209      	bcs.n	10002ecc <Cy_GPIO_Pin_Init+0x2c>
10002eb8:	                                                                  |      e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
10002ebc:	                                                                  |      6813      	ldr	r3, [r2, #0]
10002ebe:	                                                                  |      2b02      	cmp	r3, #2
10002ec0:	                                                               /--|----- d20a      	bcs.n	10002ed8 <Cy_GPIO_Pin_Init+0x38>
10002ec2:	                                                               |  |  /-> 6853      	ldr	r3, [r2, #4]
10002ec4:	                                                               |  |  |   2b0f      	cmp	r3, #15
10002ec6:	                                                            /--|--|--|-- d90b      	bls.n	10002ee0 <Cy_GPIO_Pin_Init+0x40>
10002ec8:	                                                         /--|--|--|--|-- e00e      	b.n	10002ee8 <Cy_GPIO_Pin_Init+0x48>
10002eca:	                                                         |  |  |  |  |   bf00      	nop
10002ecc:	                                                         |  |  |  \--|-> be01      	bkpt	0x0001
10002ece:	                                                         |  |  |     |   e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
10002ed2:	                                                         |  |  |     |   6813      	ldr	r3, [r2, #0]
10002ed4:	                                                         |  |  |     |   2b02      	cmp	r3, #2
10002ed6:	                                                         |  |  |     \-- d3f4      	bcc.n	10002ec2 <Cy_GPIO_Pin_Init+0x22>
10002ed8:	                                                         |  |  \-------> be01      	bkpt	0x0001
10002eda:	                                                         |  |            6853      	ldr	r3, [r2, #4]
10002edc:	                                                         |  |            2b0f      	cmp	r3, #15
10002ede:	                                                         +--|----------- d803      	bhi.n	10002ee8 <Cy_GPIO_Pin_Init+0x48>
10002ee0:	                                                         |  \----------> f043 0308 	orr.w	r3, r3, #8
10002ee4:	                                                         |               2b09      	cmp	r3, #9
10002ee6:	                                                         |           /-- d100      	bne.n	10002eea <Cy_GPIO_Pin_Init+0x4a>
10002ee8:	                                                         \-----------|-> be01      	bkpt	0x0001
10002eea:	                                                                     \-> 7a13      	ldrb	r3, [r2, #8]
10002eec:	                                                                         2b20      	cmp	r3, #32
10002eee:	                                                   /-------------------- f080 808d 	bcs.w	1000300c <Cy_GPIO_Pin_Init+0x16c>
10002ef2:	                                                   |                     68d3      	ldr	r3, [r2, #12]
10002ef4:	                                                   |                     2b04      	cmp	r3, #4
10002ef6:	                                             /-----|-------------------- f080 808e 	bcs.w	10003016 <Cy_GPIO_Pin_Init+0x176>
10002efa:	                                             |     |        /----------> 6913      	ldr	r3, [r2, #16]
10002efc:	                                             |     |        |            2b02      	cmp	r3, #2
10002efe:	                                       /-----|-----|--------|----------- f080 808f 	bcs.w	10003020 <Cy_GPIO_Pin_Init+0x180>
10002f02:	                                       |     |     |     /--|----------> 6953      	ldr	r3, [r2, #20]
10002f04:	                                       |     |     |     |  |            2b02      	cmp	r3, #2
10002f06:	                                 /-----|-----|-----|-----|--|----------- f080 8090 	bcs.w	1000302a <Cy_GPIO_Pin_Init+0x18a>
10002f0a:	                                 |     |     |     |  /--|--|----------> 6a13      	ldr	r3, [r2, #32]
10002f0c:	                                 |     |     |     |  |  |  |            2b02      	cmp	r3, #2
10002f0e:	                           /-----|-----|-----|-----|--|--|--|----------- f080 8091 	bcs.w	10003034 <Cy_GPIO_Pin_Init+0x194>
10002f12:	                           |     |     |     |  /--|--|--|--|----------> 6a53      	ldr	r3, [r2, #36]	; 0x24
10002f14:	                           |     |     |     |  |  |  |  |  |            2b02      	cmp	r3, #2
10002f16:	                     /-----|-----|-----|-----|--|--|--|--|--|----------- f080 8092 	bcs.w	1000303e <Cy_GPIO_Pin_Init+0x19e>
10002f1a:	                     |     |     |     |  /--|--|--|--|--|--|----------> 6a93      	ldr	r3, [r2, #40]	; 0x28
10002f1c:	                     |     |     |     |  |  |  |  |  |  |  |            2b02      	cmp	r3, #2
10002f1e:	               /-----|-----|-----|-----|--|--|--|--|--|--|--|----------- f080 8093 	bcs.w	10003048 <Cy_GPIO_Pin_Init+0x1a8>
10002f22:	               |     |     |     |  /--|--|--|--|--|--|--|--|----------> 6ad3      	ldr	r3, [r2, #44]	; 0x2c
10002f24:	               |     |     |     |  |  |  |  |  |  |  |  |  |            2b04      	cmp	r3, #4
10002f26:	            /--|-----|-----|-----|--|--|--|--|--|--|--|--|--|----------- f080 8094 	bcs.w	10003052 <Cy_GPIO_Pin_Init+0x1b2>
10002f2a:	            |  |     |     |  /--|--|--|--|--|--|--|--|--|--|----------> 6b13      	ldr	r3, [r2, #48]	; 0x30
10002f2c:	            |  |     |     |  |  |  |  |  |  |  |  |  |  |  |            2b08      	cmp	r3, #8
10002f2e:	      /-----|--|-----|-----|--|--|--|--|--|--|--|--|--|--|--|----------- f080 8095 	bcs.w	1000305c <Cy_GPIO_Pin_Init+0x1bc>
10002f32:	      |     |  |     |  /--|--|--|--|--|--|--|--|--|--|--|--|----------> 69d3      	ldr	r3, [r2, #28]
10002f34:	      |     |  |     |  |  |  |  |  |  |  |  |  |  |  |  |  |            2b04      	cmp	r3, #4
10002f36:	   /--|-----|--|-----|--|--|--|--|--|--|--|--|--|--|--|--|--|----------- f080 8096 	bcs.w	10003066 <Cy_GPIO_Pin_Init+0x1c6>
10002f3a:	   |  |     |  |  /--|--|--|--|--|--|--|--|--|--|--|--|--|--|----------> 6993      	ldr	r3, [r2, #24]
10002f3c:	   |  |     |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            2b02      	cmp	r3, #2
10002f3e:	/--|--|-----|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|----------- d301      	bcc.n	10002f44 <Cy_GPIO_Pin_Init+0xa4>
10002f40:	|  |  |  /--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|----------> be01      	bkpt	0x0001
10002f42:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            6993      	ldr	r3, [r2, #24]
10002f44:	>--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|----------> f242 7cb8 	movw	ip, #10168	; 0x27b8
10002f48:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            f6c0 0c00 	movt	ip, #2048	; 0x800
10002f4c:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            f8dc 5000 	ldr.w	r5, [ip]
10002f50:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            2601      	movs	r6, #1
10002f52:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            fa06 fe01 	lsl.w	lr, r6, r1
10002f56:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            2610      	movs	r6, #16
10002f58:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            f895 5083 	ldrb.w	r5, [r5, #131]	; 0x83
10002f5c:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            eb06 0441 	add.w	r4, r6, r1, lsl #1
10002f60:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            2603      	movs	r6, #3
10002f62:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            40a6      	lsls	r6, r4
10002f64:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            582f      	ldr	r7, [r5, r0]
10002f66:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            ea46 060e 	orr.w	r6, r6, lr
10002f6a:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            ea27 0606 	bic.w	r6, r7, r6
10002f6e:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            f003 0301 	and.w	r3, r3, #1
10002f72:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            69d7      	ldr	r7, [r2, #28]
10002f74:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            408b      	lsls	r3, r1
10002f76:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            4333      	orrs	r3, r6
10002f78:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            f007 0603 	and.w	r6, r7, #3
10002f7c:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            fa06 f404 	lsl.w	r4, r6, r4
10002f80:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            4323      	orrs	r3, r4
10002f82:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            502b      	str	r3, [r5, r0]
10002f84:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            6854      	ldr	r4, [r2, #4]
10002f86:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            2908      	cmp	r1, #8
10002f88:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        /-- d300      	bcc.n	10002f8c <Cy_GPIO_Pin_Init+0xec>
10002f8a:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   be01      	bkpt	0x0001
10002f8c:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        \-> 2c0f      	cmp	r4, #15
10002f8e:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |     /----- d803      	bhi.n	10002f98 <Cy_GPIO_Pin_Init+0xf8>
10002f90:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |     |      f024 0308 	bic.w	r3, r4, #8
10002f94:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |     |      2b01      	cmp	r3, #1
10002f96:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |     |  /-- d100      	bne.n	10002f9a <Cy_GPIO_Pin_Init+0xfa>
10002f98:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |     \--|-> be01      	bkpt	0x0001
10002f9a:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        \-> f8dc 3000 	ldr.w	r3, [ip]
10002f9e:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            ea4f 0881 	mov.w	r8, r1, lsl #2
10002fa2:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            f893 5081 	ldrb.w	r5, [r3, #129]	; 0x81
10002fa6:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            270f      	movs	r7, #15
10002fa8:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            582e      	ldr	r6, [r5, r0]
10002faa:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            fa07 f708 	lsl.w	r7, r7, r8
10002fae:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            f004 040f 	and.w	r4, r4, #15
10002fb2:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            43be      	bics	r6, r7
10002fb4:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            fa04 f408 	lsl.w	r4, r4, r8
10002fb8:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            4334      	orrs	r4, r6
10002fba:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            502c      	str	r4, [r5, r0]
10002fbc:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            7a14      	ldrb	r4, [r2, #8]
10002fbe:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            2908      	cmp	r1, #8
10002fc0:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        /-- d300      	bcc.n	10002fc4 <Cy_GPIO_Pin_Init+0x124>
10002fc2:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   be01      	bkpt	0x0001
10002fc4:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        \-> f014 0fe0 	tst.w	r4, #224	; 0xe0
10002fc8:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        /-- d000      	beq.n	10002fcc <Cy_GPIO_Pin_Init+0x12c>
10002fca:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   be01      	bkpt	0x0001
10002fcc:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        \-> f8dc 5000 	ldr.w	r5, [ip]
10002fd0:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            f06f 070f 	mvn.w	r7, #15
10002fd4:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            e9d5 5605 	ldrd	r5, r6, [r5, #20]
10002fd8:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            2903      	cmp	r1, #3
10002fda:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            eba0 0606 	sub.w	r6, r0, r6
10002fde:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            ea07 06d6 	and.w	r6, r7, r6, lsr #3
10002fe2:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |            4435      	add	r5, r6
10002fe4:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        /-- d846      	bhi.n	10003074 <Cy_GPIO_Pin_Init+0x1d4>
10002fe6:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   682e      	ldr	r6, [r5, #0]
10002fe8:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   00cf      	lsls	r7, r1, #3
10002fea:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   231f      	movs	r3, #31
10002fec:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   40bb      	lsls	r3, r7
10002fee:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   f004 041f 	and.w	r4, r4, #31
10002ff2:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   ea26 0303 	bic.w	r3, r6, r3
10002ff6:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   40bc      	lsls	r4, r7
10002ff8:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   4323      	orrs	r3, r4
10002ffa:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   602b      	str	r3, [r5, #0]
10002ffc:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   68d4      	ldr	r4, [r2, #12]
10002ffe:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   f04f 0901 	mov.w	r9, #1
10003002:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   2c04      	cmp	r4, #4
10003004:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   ea4f 0641 	mov.w	r6, r1, lsl #1
10003008:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |     /--|-- d253      	bcs.n	100030b2 <Cy_GPIO_Pin_Init+0x212>
1000300a:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  /--|--|-- e053      	b.n	100030b4 <Cy_GPIO_Pin_Init+0x214>
1000300c:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  \--|--|--|--|--|--|-> be01      	bkpt	0x0001
1000300e:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |     |  |  |  |  |  |   68d3      	ldr	r3, [r2, #12]
10003010:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |     |  |  |  |  |  |   2b04      	cmp	r3, #4
10003012:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |     |  |  \--|--|--|-- f4ff af72 	bcc.w	10002efa <Cy_GPIO_Pin_Init+0x5a>
10003016:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  \--|-----|--|-----|--|--|-> be01      	bkpt	0x0001
10003018:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |     |     |  |     |  |  |   6913      	ldr	r3, [r2, #16]
1000301a:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |     |     |  |     |  |  |   2b02      	cmp	r3, #2
1000301c:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |     |     |  \-----|--|--|-- f4ff af71 	bcc.w	10002f02 <Cy_GPIO_Pin_Init+0x62>
10003020:	|  |  |  |  |  |  |  |  |  |  |  |  |  \--|-----|-----|--------|--|--|-> be01      	bkpt	0x0001
10003022:	|  |  |  |  |  |  |  |  |  |  |  |  |     |     |     |        |  |  |   6953      	ldr	r3, [r2, #20]
10003024:	|  |  |  |  |  |  |  |  |  |  |  |  |     |     |     |        |  |  |   2b02      	cmp	r3, #2
10003026:	|  |  |  |  |  |  |  |  |  |  |  |  |     |     |     \--------|--|--|-- f4ff af70 	bcc.w	10002f0a <Cy_GPIO_Pin_Init+0x6a>
1000302a:	|  |  |  |  |  |  |  |  |  |  |  \--|-----|-----|--------------|--|--|-> be01      	bkpt	0x0001
1000302c:	|  |  |  |  |  |  |  |  |  |  |     |     |     |              |  |  |   6a13      	ldr	r3, [r2, #32]
1000302e:	|  |  |  |  |  |  |  |  |  |  |     |     |     |              |  |  |   2b02      	cmp	r3, #2
10003030:	|  |  |  |  |  |  |  |  |  |  |     |     |     \--------------|--|--|-- f4ff af6f 	bcc.w	10002f12 <Cy_GPIO_Pin_Init+0x72>
10003034:	|  |  |  |  |  |  |  |  |  \--|-----|-----|--------------------|--|--|-> be01      	bkpt	0x0001
10003036:	|  |  |  |  |  |  |  |  |     |     |     |                    |  |  |   6a53      	ldr	r3, [r2, #36]	; 0x24
10003038:	|  |  |  |  |  |  |  |  |     |     |     |                    |  |  |   2b02      	cmp	r3, #2
1000303a:	|  |  |  |  |  |  |  |  |     |     |     \--------------------|--|--|-- f4ff af6e 	bcc.w	10002f1a <Cy_GPIO_Pin_Init+0x7a>
1000303e:	|  |  |  |  |  |  |  \--|-----|-----|--------------------------|--|--|-> be01      	bkpt	0x0001
10003040:	|  |  |  |  |  |  |     |     |     |                          |  |  |   6a93      	ldr	r3, [r2, #40]	; 0x28
10003042:	|  |  |  |  |  |  |     |     |     |                          |  |  |   2b02      	cmp	r3, #2
10003044:	|  |  |  |  |  |  |     |     |     \--------------------------|--|--|-- f4ff af6d 	bcc.w	10002f22 <Cy_GPIO_Pin_Init+0x82>
10003048:	|  |  |  |  |  \--|-----|-----|--------------------------------|--|--|-> be01      	bkpt	0x0001
1000304a:	|  |  |  |  |     |     |     |                                |  |  |   6ad3      	ldr	r3, [r2, #44]	; 0x2c
1000304c:	|  |  |  |  |     |     |     |                                |  |  |   2b04      	cmp	r3, #4
1000304e:	|  |  |  |  |     |     |     \--------------------------------|--|--|-- f4ff af6c 	bcc.w	10002f2a <Cy_GPIO_Pin_Init+0x8a>
10003052:	|  |  |  |  \-----|-----|--------------------------------------|--|--|-> be01      	bkpt	0x0001
10003054:	|  |  |  |        |     |                                      |  |  |   6b13      	ldr	r3, [r2, #48]	; 0x30
10003056:	|  |  |  |        |     |                                      |  |  |   2b08      	cmp	r3, #8
10003058:	|  |  |  |        |     \--------------------------------------|--|--|-- f4ff af6b 	bcc.w	10002f32 <Cy_GPIO_Pin_Init+0x92>
1000305c:	|  |  \--|--------|--------------------------------------------|--|--|-> be01      	bkpt	0x0001
1000305e:	|  |     |        |                                            |  |  |   69d3      	ldr	r3, [r2, #28]
10003060:	|  |     |        |                                            |  |  |   2b04      	cmp	r3, #4
10003062:	|  |     |        \--------------------------------------------|--|--|-- f4ff af6a 	bcc.w	10002f3a <Cy_GPIO_Pin_Init+0x9a>
10003066:	|  \-----|-----------------------------------------------------|--|--|-> be01      	bkpt	0x0001
10003068:	|        |                                                     |  |  |   6993      	ldr	r3, [r2, #24]
1000306a:	|        |                                                     |  |  |   2b02      	cmp	r3, #2
1000306c:	|        \-----------------------------------------------------|--|--|-- f4bf af68 	bcs.w	10002f40 <Cy_GPIO_Pin_Init+0xa0>
10003070:	\--------------------------------------------------------------|--|--|-- e768      	b.n	10002f44 <Cy_GPIO_Pin_Init+0xa4>
10003072:	                                                               |  |  |   bf00      	nop
10003074:	                                                               |  |  \-> f06f 061f 	mvn.w	r6, #31
10003078:	                                                               |  |      686b      	ldr	r3, [r5, #4]
1000307a:	                                                               |  |      eb06 06c1 	add.w	r6, r6, r1, lsl #3
1000307e:	                                                               |  |      271f      	movs	r7, #31
10003080:	                                                               |  |      40b7      	lsls	r7, r6
10003082:	                                                               |  |      f004 041f 	and.w	r4, r4, #31
10003086:	                                                               |  |      43bb      	bics	r3, r7
10003088:	                                                               |  |      40b4      	lsls	r4, r6
1000308a:	                                                               |  |      4323      	orrs	r3, r4
1000308c:	                                                               |  |      606b      	str	r3, [r5, #4]
1000308e:	                                                               |  |      68d4      	ldr	r4, [r2, #12]
10003090:	                                                               |  |      2909      	cmp	r1, #9
10003092:	                                                               |  |  /-- d207      	bcs.n	100030a4 <Cy_GPIO_Pin_Init+0x204>
10003094:	                                                               |  |  |   f04f 0901 	mov.w	r9, #1
10003098:	                                                               |  |  |   2c04      	cmp	r4, #4
1000309a:	                                                               |  |  |   ea4f 0641 	mov.w	r6, r1, lsl #1
1000309e:	                                                               |  +--|-- d208      	bcs.n	100030b2 <Cy_GPIO_Pin_Init+0x212>
100030a0:	                                                               +--|--|-- e008      	b.n	100030b4 <Cy_GPIO_Pin_Init+0x214>
100030a2:	                                                               |  |  |   bf00      	nop
100030a4:	                                                               |  |  \-> f04f 0900 	mov.w	r9, #0
100030a8:	                                                               |  |      be01      	bkpt	0x0001
100030aa:	                                                               |  |      2c04      	cmp	r4, #4
100030ac:	                                                               |  |      ea4f 0641 	mov.w	r6, r1, lsl #1
100030b0:	                                                               +--|----- d300      	bcc.n	100030b4 <Cy_GPIO_Pin_Init+0x214>
100030b2:	                                                               |  \----> be01      	bkpt	0x0001
100030b4:	                                                               \-------> f8dc 3000 	ldr.w	r3, [ip]
100030b8:	                                                                         2503      	movs	r5, #3
100030ba:	                                                                         f893 3080 	ldrb.w	r3, [r3, #128]	; 0x80
100030be:	                                                                         40b5      	lsls	r5, r6
100030c0:	                                                                         581f      	ldr	r7, [r3, r0]
100030c2:	                                                                         f004 0403 	and.w	r4, r4, #3
100030c6:	                                                                         ea27 0505 	bic.w	r5, r7, r5
100030ca:	                                                                         40b4      	lsls	r4, r6
100030cc:	                                                                         432c      	orrs	r4, r5
100030ce:	                                                                         501c      	str	r4, [r3, r0]
100030d0:	                                                                         6914      	ldr	r4, [r2, #16]
100030d2:	                                                                         f1b9 0f00 	cmp.w	r9, #0
100030d6:	                                                                     /-- d100      	bne.n	100030da <Cy_GPIO_Pin_Init+0x23a>
100030d8:	                                                                     |   be01      	bkpt	0x0001
100030da:	                                                                     \-> 2c02      	cmp	r4, #2
100030dc:	                                                                     /-- d300      	bcc.n	100030e0 <Cy_GPIO_Pin_Init+0x240>
100030de:	                                                                     |   be01      	bkpt	0x0001
100030e0:	                                                                     \-> 6983      	ldr	r3, [r0, #24]
100030e2:	                                                                         f004 0401 	and.w	r4, r4, #1
100030e6:	                                                                         ea23 030e 	bic.w	r3, r3, lr
100030ea:	                                                                         408c      	lsls	r4, r1
100030ec:	                                                                         4323      	orrs	r3, r4
100030ee:	                                                                         6183      	str	r3, [r0, #24]
100030f0:	                                                                         6954      	ldr	r4, [r2, #20]
100030f2:	                                                                         2908      	cmp	r1, #8
100030f4:	                                                                     /-- d300      	bcc.n	100030f8 <Cy_GPIO_Pin_Init+0x258>
100030f6:	                                                                     |   be01      	bkpt	0x0001
100030f8:	                                                                     \-> 2c02      	cmp	r4, #2
100030fa:	                                                                         ea6f 050e 	mvn.w	r5, lr
100030fe:	                                                                     /-- d300      	bcc.n	10003102 <Cy_GPIO_Pin_Init+0x262>
10003100:	                                                                     |   be01      	bkpt	0x0001
10003102:	                                                                     \-> f8dc 3000 	ldr.w	r3, [ip]
10003106:	                                                                         2908      	cmp	r1, #8
10003108:	                                                                         f893 7082 	ldrb.w	r7, [r3, #130]	; 0x82
1000310c:	                                                                         f893 9084 	ldrb.w	r9, [r3, #132]	; 0x84
10003110:	                                                                         583e      	ldr	r6, [r7, r0]
10003112:	                                                                         ea06 0605 	and.w	r6, r6, r5
10003116:	                                                                         f004 0501 	and.w	r5, r4, #1
1000311a:	                                                                         fa05 f501 	lsl.w	r5, r5, r1
1000311e:	                                                                         ea46 0605 	orr.w	r6, r6, r5
10003122:	                                                                         503e      	str	r6, [r7, r0]
10003124:	                                                                         f859 7000 	ldr.w	r7, [r9, r0]
10003128:	                                                                         e9d2 6508 	ldrd	r6, r5, [r2, #32]
1000312c:	                                                                         f027 0cff 	bic.w	ip, r7, #255	; 0xff
10003130:	                                                                         e9d2 470a 	ldrd	r4, r7, [r2, #40]	; 0x28
10003134:	                                                                         6b13      	ldr	r3, [r2, #48]	; 0x30
10003136:	                                                                         f006 0601 	and.w	r6, r6, #1
1000313a:	                                                                         f365 0641 	bfi	r6, r5, #1, #1
1000313e:	                                                                         f004 0401 	and.w	r4, r4, #1
10003142:	                                                                         ea46 0484 	orr.w	r4, r6, r4, lsl #2
10003146:	                                                                         f007 0503 	and.w	r5, r7, #3
1000314a:	                                                                         ea4f 1343 	mov.w	r3, r3, lsl #5
1000314e:	                                                                         ea44 04c5 	orr.w	r4, r4, r5, lsl #3
10003152:	                                                                         b2db      	uxtb	r3, r3
10003154:	                                                                         4423      	add	r3, r4
10003156:	                                                                         f408 747e 	and.w	r4, r8, #1016	; 0x3f8
1000315a:	                                                                         fa03 f304 	lsl.w	r3, r3, r4
1000315e:	                                                                         ea43 030c 	orr.w	r3, r3, ip
10003162:	                                                                         f849 3000 	str.w	r3, [r9, r0]
10003166:	                                                                         6812      	ldr	r2, [r2, #0]
10003168:	                                                                     /-- d300      	bcc.n	1000316c <Cy_GPIO_Pin_Init+0x2cc>
1000316a:	                                                                     |   be01      	bkpt	0x0001
1000316c:	                                                                     \-> 2a02      	cmp	r2, #2
1000316e:	                                                                  /----- d203      	bcs.n	10003178 <Cy_GPIO_Pin_Init+0x2d8>
10003170:	                                                               /--|----- b91a      	cbnz	r2, 1000317a <Cy_GPIO_Pin_Init+0x2da>
10003172:	                                                               |  |      3004      	adds	r0, #4
10003174:	                                                               |  |  /-- e002      	b.n	1000317c <Cy_GPIO_Pin_Init+0x2dc>
10003176:	                                                               |  |  |   bf00      	nop
10003178:	                                                               |  \--|-> be01      	bkpt	0x0001
1000317a:	                                                               \-----|-> 3008      	adds	r0, #8
1000317c:	                                                                     \-> 2300      	movs	r3, #0
1000317e:	                                                                         f8c0 e000 	str.w	lr, [r0]
10003182:	                                                                         e8bd 43f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, lr}
10003186:	                                                                         4618      	mov	r0, r3
10003188:	                                                                         4770      	bx	lr
	...

1000318c <Cy_IPC_Drv_LockRelease>:
1000318c:	    f242 72b8 	movw	r2, #10168	; 0x27b8
10003190:	    f6c0 0200 	movt	r2, #2048	; 0x800
10003194:	    6812      	ldr	r2, [r2, #0]
10003196:	    f8d2 20bc 	ldr.w	r2, [r2, #188]	; 0xbc
1000319a:	    5812      	ldr	r2, [r2, r0]
1000319c:	    f1b2 3fff 	cmp.w	r2, #4294967295
100031a0:	    bfc2      	ittt	gt
100031a2:	    2001      	movgt	r0, #1
100031a4:	    f2c0 008a 	movtgt	r0, #138	; 0x8a
100031a8:	    4770      	bxgt	lr
100031aa:	    f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
100031ae:	/-- d300      	bcc.n	100031b2 <Cy_IPC_Drv_LockRelease+0x26>
100031b0:	|   be01      	bkpt	0x0001
100031b2:	\-> b289      	uxth	r1, r1
100031b4:	    6041      	str	r1, [r0, #4]
100031b6:	    2000      	movs	r0, #0
100031b8:	    4770      	bx	lr
	...

100031bc <Cy_IPC_Drv_ReadMsgWord>:
100031bc:	/-- b901      	cbnz	r1, 100031c0 <Cy_IPC_Drv_ReadMsgWord+0x4>
100031be:	|   be01      	bkpt	0x0001
100031c0:	\-> f242 72b8 	movw	r2, #10168	; 0x27b8
100031c4:	    f6c0 0200 	movt	r2, #2048	; 0x800
100031c8:	    6812      	ldr	r2, [r2, #0]
100031ca:	    f8d2 20bc 	ldr.w	r2, [r2, #188]	; 0xbc
100031ce:	    5812      	ldr	r2, [r2, r0]
100031d0:	    f1b2 3fff 	cmp.w	r2, #4294967295
100031d4:	    bfc2      	ittt	gt
100031d6:	    2001      	movgt	r0, #1
100031d8:	    f2c0 008a 	movtgt	r0, #138	; 0x8a
100031dc:	    4770      	bxgt	lr
100031de:	    68c0      	ldr	r0, [r0, #12]
100031e0:	    6008      	str	r0, [r1, #0]
100031e2:	    2000      	movs	r0, #0
100031e4:	    4770      	bx	lr
	...

100031e8 <Cy_IPC_Drv_SendMsgWord>:
100031e8:	    6803      	ldr	r3, [r0, #0]
100031ea:	    f1b3 3fff 	cmp.w	r3, #4294967295
100031ee:	    bfc2      	ittt	gt
100031f0:	    2001      	movgt	r0, #1
100031f2:	    f2c0 008a 	movtgt	r0, #138	; 0x8a
100031f6:	    4770      	bxgt	lr
100031f8:	    f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
100031fc:	    60c2      	str	r2, [r0, #12]
100031fe:	/-- d300      	bcc.n	10003202 <Cy_IPC_Drv_SendMsgWord+0x1a>
10003200:	|   be01      	bkpt	0x0001
10003202:	\-> b289      	uxth	r1, r1
10003204:	    6081      	str	r1, [r0, #8]
10003206:	    2000      	movs	r0, #0
10003208:	    4770      	bx	lr
	...

1000320c <Cy_IPC_Pipe_Config>:
1000320c:	f242 71bc 	movw	r1, #10172	; 0x27bc
10003210:	f6c0 0100 	movt	r1, #2048	; 0x800
10003214:	680a      	ldr	r2, [r1, #0]
10003216:	2a00      	cmp	r2, #0
10003218:	bf08      	it	eq
1000321a:	6008      	streq	r0, [r1, #0]
1000321c:	4770      	bx	lr
	...

10003220 <Cy_IPC_Pipe_ExecCallback>:
10003220:	                            b570      	push	{r4, r5, r6, lr}
10003222:	                            b082      	sub	sp, #8
10003224:	                            4604      	mov	r4, r0
10003226:	                            2000      	movs	r0, #0
10003228:	                            9001      	str	r0, [sp, #4]
1000322a:	                        /-- b15c      	cbz	r4, 10003244 <Cy_IPC_Pipe_ExecCallback+0x24>
1000322c:	                        |   6920      	ldr	r0, [r4, #16]
1000322e:	                  /-----|-- b168      	cbz	r0, 1000324c <Cy_IPC_Pipe_ExecCallback+0x2c>
10003230:	                  |  /--|-> 6960      	ldr	r0, [r4, #20]
10003232:	            /-----|--|--|-- b178      	cbz	r0, 10003254 <Cy_IPC_Pipe_ExecCallback+0x34>
10003234:	            |  /--|--|--|-> 6a20      	ldr	r0, [r4, #32]
10003236:	      /-----|--|--|--|--|-- b188      	cbz	r0, 1000325c <Cy_IPC_Pipe_ExecCallback+0x3c>
10003238:	      |  /--|--|--|--|--|-> 6960      	ldr	r0, [r4, #20]
1000323a:	      |  |  |  |  |  |  |   68c6      	ldr	r6, [r0, #12]
1000323c:	      |  |  |  |  |  |  |   f5b6 3f80 	cmp.w	r6, #65536	; 0x10000
10003240:	   /--|--|--|--|--|--|--|-- d212      	bcs.n	10003268 <Cy_IPC_Pipe_ExecCallback+0x48>
10003242:	/--|--|--|--|--|--|--|--|-- e03b      	b.n	100032bc <Cy_IPC_Pipe_ExecCallback+0x9c>
10003244:	|  |  |  |  |  |  |  |  \-> be01      	bkpt	0x0001
10003246:	|  |  |  |  |  |  |  |      6920      	ldr	r0, [r4, #16]
10003248:	|  |  |  |  |  |  |  |      2800      	cmp	r0, #0
1000324a:	|  |  |  |  |  |  |  \----- d1f1      	bne.n	10003230 <Cy_IPC_Pipe_ExecCallback+0x10>
1000324c:	|  |  |  |  |  |  \-------> be01      	bkpt	0x0001
1000324e:	|  |  |  |  |  |            6960      	ldr	r0, [r4, #20]
10003250:	|  |  |  |  |  |            2800      	cmp	r0, #0
10003252:	|  |  |  |  |  \----------- d1ef      	bne.n	10003234 <Cy_IPC_Pipe_ExecCallback+0x14>
10003254:	|  |  |  |  \-------------> be01      	bkpt	0x0001
10003256:	|  |  |  |                  6a20      	ldr	r0, [r4, #32]
10003258:	|  |  |  |                  2800      	cmp	r0, #0
1000325a:	|  |  |  \----------------- d1ed      	bne.n	10003238 <Cy_IPC_Pipe_ExecCallback+0x18>
1000325c:	|  |  \-------------------> be01      	bkpt	0x0001
1000325e:	|  |                        6960      	ldr	r0, [r4, #20]
10003260:	|  |                        68c6      	ldr	r6, [r0, #12]
10003262:	|  |                        f5b6 3f80 	cmp.w	r6, #65536	; 0x10000
10003266:	+--|----------------------- d329      	bcc.n	100032bc <Cy_IPC_Pipe_ExecCallback+0x9c>
10003268:	|  \----------------------> f64f 71ff 	movw	r1, #65535	; 0xffff
1000326c:	|                           ea26 0101 	bic.w	r1, r6, r1
10003270:	|                           6001      	str	r1, [r0, #0]
10003272:	|                           6800      	ldr	r0, [r0, #0]
10003274:	|                           f242 70b8 	movw	r0, #10168	; 0x27b8
10003278:	|                           f6c0 0000 	movt	r0, #2048	; 0x800
1000327c:	|                           6801      	ldr	r1, [r0, #0]
1000327e:	|                           6920      	ldr	r0, [r4, #16]
10003280:	|                           f8d1 10bc 	ldr.w	r1, [r1, #188]	; 0xbc
10003284:	|                           5809      	ldr	r1, [r1, r0]
10003286:	|                           f1b1 3fff 	cmp.w	r1, #4294967295
1000328a:	+-------------------------- dc17      	bgt.n	100032bc <Cy_IPC_Pipe_ExecCallback+0x9c>
1000328c:	|                           a901      	add	r1, sp, #4
1000328e:	|                           f7ff ff95 	bl	100031bc <Cy_IPC_Drv_ReadMsgWord>
10003292:	|                       /-- b108      	cbz	r0, 10003298 <Cy_IPC_Pipe_ExecCallback+0x78>
10003294:	|                       |   2500      	movs	r5, #0
10003296:	|                    /--|-- e00d      	b.n	100032b4 <Cy_IPC_Pipe_ExecCallback+0x94>
10003298:	|                    |  \-> 9801      	ldr	r0, [sp, #4]
1000329a:	|                    |      69e3      	ldr	r3, [r4, #28]
1000329c:	|                    |      6802      	ldr	r2, [r0, #0]
1000329e:	|                    |      b2d1      	uxtb	r1, r2
100032a0:	|                    |      428b      	cmp	r3, r1
100032a2:	|                    |      ea4f 4512 	mov.w	r5, r2, lsr #16
100032a6:	|                    +----- d905      	bls.n	100032b4 <Cy_IPC_Pipe_ExecCallback+0x94>
100032a8:	|                    |      6a22      	ldr	r2, [r4, #32]
100032aa:	|                    |      f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
100032ae:	|                    |      2900      	cmp	r1, #0
100032b0:	|                    |      bf18      	it	ne
100032b2:	|                    |      4788      	blxne	r1
100032b4:	|                    \----> 6920      	ldr	r0, [r4, #16]
100032b6:	|                           4629      	mov	r1, r5
100032b8:	|                           f7ff ff68 	bl	1000318c <Cy_IPC_Drv_LockRelease>
100032bc:	\-------------------------> b2b0      	uxth	r0, r6
100032be:	                  /-------- b178      	cbz	r0, 100032e0 <Cy_IPC_Pipe_ExecCallback+0xc0>
100032c0:	                  |         6962      	ldr	r2, [r4, #20]
100032c2:	                  |         6a61      	ldr	r1, [r4, #36]	; 0x24
100032c4:	                  |         6010      	str	r0, [r2, #0]
100032c6:	                  |         6810      	ldr	r0, [r2, #0]
100032c8:	                  |     /-- b121      	cbz	r1, 100032d4 <Cy_IPC_Pipe_ExecCallback+0xb4>
100032ca:	                  |     |   4788      	blx	r1
100032cc:	                  |     |   2000      	movs	r0, #0
100032ce:	                  |     |   6260      	str	r0, [r4, #36]	; 0x24
100032d0:	                  |  /--|-- e004      	b.n	100032dc <Cy_IPC_Pipe_ExecCallback+0xbc>
100032d2:	                  |  |  |   bf00      	nop
100032d4:	                  |  |  \-> 6aa0      	ldr	r0, [r4, #40]	; 0x28
100032d6:	                  |  |      2800      	cmp	r0, #0
100032d8:	                  |  |      bf18      	it	ne
100032da:	                  |  |      4780      	blxne	r0
100032dc:	                  |  \----> 2000      	movs	r0, #0
100032de:	                  |         61a0      	str	r0, [r4, #24]
100032e0:	                  \-------> 6960      	ldr	r0, [r4, #20]
100032e2:	                            6800      	ldr	r0, [r0, #0]
100032e4:	                            b002      	add	sp, #8
100032e6:	                            bd70      	pop	{r4, r5, r6, pc}

100032e8 <Cy_IPC_Pipe_ExecuteCallback>:
100032e8:	    f242 72bc 	movw	r2, #10172	; 0x27bc
100032ec:	    f6c0 0200 	movt	r2, #2048	; 0x800
100032f0:	    6811      	ldr	r1, [r2, #0]
100032f2:	/-- b129      	cbz	r1, 10003300 <Cy_IPC_Pipe_ExecuteCallback+0x18>
100032f4:	|   222c      	movs	r2, #44	; 0x2c
100032f6:	|   fb00 1002 	mla	r0, r0, r2, r1
100032fa:	|   f7ff bf91 	b.w	10003220 <Cy_IPC_Pipe_ExecCallback>
100032fe:	|   bf00      	nop
10003300:	\-> be01      	bkpt	0x0001
10003302:	    6811      	ldr	r1, [r2, #0]
10003304:	    222c      	movs	r2, #44	; 0x2c
10003306:	    fb00 1002 	mla	r0, r0, r2, r1
1000330a:	    f7ff bf89 	b.w	10003220 <Cy_IPC_Pipe_ExecCallback>
	...

10003310 <Cy_IPC_Pipe_Init>:
10003310:	               /-- b900      	cbnz	r0, 10003314 <Cy_IPC_Pipe_Init+0x4>
10003312:	               |   be01      	bkpt	0x0001
10003314:	               \-> e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
10003318:	                   b085      	sub	sp, #20
1000331a:	                   6981      	ldr	r1, [r0, #24]
1000331c:	                   2908      	cmp	r1, #8
1000331e:	         /-------- f080 80d7 	bcs.w	100034d0 <Cy_IPC_Pipe_Init+0x1c0>
10003322:	         |         6ac1      	ldr	r1, [r0, #44]	; 0x2c
10003324:	         |         2900      	cmp	r1, #0
10003326:	      /--|-------- f000 80d8 	beq.w	100034da <Cy_IPC_Pipe_Init+0x1ca>
1000332a:	      |  |  /----> 6b01      	ldr	r1, [r0, #48]	; 0x30
1000332c:	      |  |  |      2900      	cmp	r1, #0
1000332e:	/-----|--|--|----- f000 80d9 	beq.w	100034e4 <Cy_IPC_Pipe_Init+0x1d4>
10003332:	|  /--|--|--|----> f242 7ab8 	movw	sl, #10168	; 0x27b8
10003336:	|  |  |  |  |      f6c0 0a00 	movt	sl, #2048	; 0x800
1000333a:	|  |  |  |  |      f8da 4000 	ldr.w	r4, [sl]
1000333e:	|  |  |  |  |      8a81      	ldrh	r1, [r0, #20]
10003340:	|  |  |  |  |      8f27      	ldrh	r7, [r4, #56]	; 0x38
10003342:	|  |  |  |  |      68c2      	ldr	r2, [r0, #12]
10003344:	|  |  |  |  |      eb07 0b01 	add.w	fp, r7, r1
10003348:	|  |  |  |  |      f242 71bc 	movw	r1, #10172	; 0x27bc
1000334c:	|  |  |  |  |      9202      	str	r2, [sp, #8]
1000334e:	|  |  |  |  |      6982      	ldr	r2, [r0, #24]
10003350:	|  |  |  |  |      f6c0 0100 	movt	r1, #2048	; 0x800
10003354:	|  |  |  |  |      680f      	ldr	r7, [r1, #0]
10003356:	|  |  |  |  |      f8d0 8010 	ldr.w	r8, [r0, #16]
1000335a:	|  |  |  |  |      6a06      	ldr	r6, [r0, #32]
1000335c:	|  |  |  |  |      6a43      	ldr	r3, [r0, #36]	; 0x24
1000335e:	|  |  |  |  |      6a85      	ldr	r5, [r0, #40]	; 0x28
10003360:	|  |  |  |  |      9204      	str	r2, [sp, #16]
10003362:	|  |  |  |  |      6ac2      	ldr	r2, [r0, #44]	; 0x2c
10003364:	|  |  |  |  |      9501      	str	r5, [sp, #4]
10003366:	|  |  |  |  |      9200      	str	r2, [sp, #0]
10003368:	|  |  |  |  |      f8ad b00c 	strh.w	fp, [sp, #12]
1000336c:	|  |  |  |  |  /-- b91f      	cbnz	r7, 10003376 <Cy_IPC_Pipe_Init+0x66>
1000336e:	|  |  |  |  |  |   be01      	bkpt	0x0001
10003370:	|  |  |  |  |  |   680f      	ldr	r7, [r1, #0]
10003372:	|  |  |  |  |  |   f8da 4000 	ldr.w	r4, [sl]
10003376:	|  |  |  |  |  \-> 222c      	movs	r2, #44	; 0x2c
10003378:	|  |  |  |  |      fb06 7c02 	mla	ip, r6, r2, r7
1000337c:	|  |  |  |  |      b2d9      	uxtb	r1, r3
1000337e:	|  |  |  |  |      4372      	muls	r2, r6
10003380:	|  |  |  |  |      f894 9033 	ldrb.w	r9, [r4, #51]	; 0x33
10003384:	|  |  |  |  |      50b9      	str	r1, [r7, r2]
10003386:	|  |  |  |  |      f3c3 2207 	ubfx	r2, r3, #8, #8
1000338a:	|  |  |  |  |      4665      	mov	r5, ip
1000338c:	|  |  |  |  |      ea4f 4e13 	mov.w	lr, r3, lsr #16
10003390:	|  |  |  |  |      4663      	mov	r3, ip
10003392:	|  |  |  |  |      f845 2f04 	str.w	r2, [r5, #4]!
10003396:	|  |  |  |  |      4549      	cmp	r1, r9
10003398:	|  |  |  |  |      f843 ef08 	str.w	lr, [r3, #8]!
1000339c:	|  |  |  |  |  /-- d303      	bcc.n	100033a6 <Cy_IPC_Pipe_Init+0x96>
1000339e:	|  |  |  |  |  |   be01      	bkpt	0x0001
100033a0:	|  |  |  |  |  |   f8da 4000 	ldr.w	r4, [sl]
100033a4:	|  |  |  |  |  |   682a      	ldr	r2, [r5, #0]
100033a6:	|  |  |  |  |  \-> 6a25      	ldr	r5, [r4, #32]
100033a8:	|  |  |  |  |      f8b4 40ba 	ldrh.w	r4, [r4, #186]	; 0xba
100033ac:	|  |  |  |  |      fb01 5104 	mla	r1, r1, r4, r5
100033b0:	|  |  |  |  |      f8cc 1010 	str.w	r1, [ip, #16]
100033b4:	|  |  |  |  |      f8da 1000 	ldr.w	r1, [sl]
100033b8:	|  |  |  |  |      f891 5034 	ldrb.w	r5, [r1, #52]	; 0x34
100033bc:	|  |  |  |  |      42aa      	cmp	r2, r5
100033be:	|  |  |  |  |  /-- d302      	bcc.n	100033c6 <Cy_IPC_Pipe_Init+0xb6>
100033c0:	|  |  |  |  |  |   be01      	bkpt	0x0001
100033c2:	|  |  |  |  |  |   f8da 1000 	ldr.w	r1, [sl]
100033c6:	|  |  |  |  |  \-> 6a09      	ldr	r1, [r1, #32]
100033c8:	|  |  |  |  |      681b      	ldr	r3, [r3, #0]
100033ca:	|  |  |  |  |      eb01 1242 	add.w	r2, r1, r2, lsl #5
100033ce:	|  |  |  |  |      212c      	movs	r1, #44	; 0x2c
100033d0:	|  |  |  |  |      fb06 7101 	mla	r1, r6, r1, r7
100033d4:	|  |  |  |  |      f8dd e008 	ldr.w	lr, [sp, #8]
100033d8:	|  |  |  |  |      f502 5580 	add.w	r5, r2, #4096	; 0x1000
100033dc:	|  |  |  |  |      f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
100033e0:	|  |  |  |  |      614d      	str	r5, [r1, #20]
100033e2:	|  |  |  |  |  /-- d301      	bcc.n	100033e8 <Cy_IPC_Pipe_Init+0xd8>
100033e4:	|  |  |  |  |  |   be01      	bkpt	0x0001
100033e6:	|  |  |  |  |  |   be01      	bkpt	0x0001
100033e8:	|  |  |  |  |  \-> eac3 4303 	pkhbt	r3, r3, r3, lsl #16
100033ec:	|  |  |  |  |      f241 0708 	movw	r7, #4104	; 0x1008
100033f0:	|  |  |  |  |      51d3      	str	r3, [r2, r7]
100033f2:	|  |  |  |  |      2200      	movs	r2, #0
100033f4:	|  |  |  |  |      618a      	str	r2, [r1, #24]
100033f6:	|  |  |  |  |      9a00      	ldr	r2, [sp, #0]
100033f8:	|  |  |  |  |      9b01      	ldr	r3, [sp, #4]
100033fa:	|  |  |  |  |      620a      	str	r2, [r1, #32]
100033fc:	|  |  |  |  |      f242 72bc 	movw	r2, #10172	; 0x27bc
10003400:	|  |  |  |  |      f6c0 0200 	movt	r2, #2048	; 0x800
10003404:	|  |  |  |  |      f8d2 c000 	ldr.w	ip, [r2]
10003408:	|  |  |  |  |      61cb      	str	r3, [r1, #28]
1000340a:	|  |  |  |  |      f1bc 0f00 	cmp.w	ip, #0
1000340e:	|  |  |  |  |      f8a1 b00c 	strh.w	fp, [r1, #12]
10003412:	|  |  |  |  |  /-- d102      	bne.n	1000341a <Cy_IPC_Pipe_Init+0x10a>
10003414:	|  |  |  |  |  |   be01      	bkpt	0x0001
10003416:	|  |  |  |  |  |   f8d2 c000 	ldr.w	ip, [r2]
1000341a:	|  |  |  |  |  \-> f8da 4000 	ldr.w	r4, [sl]
1000341e:	|  |  |  |  |      212c      	movs	r1, #44	; 0x2c
10003420:	|  |  |  |  |      fb0e c301 	mla	r3, lr, r1, ip
10003424:	|  |  |  |  |      f894 6033 	ldrb.w	r6, [r4, #51]	; 0x33
10003428:	|  |  |  |  |      fa5f f788 	uxtb.w	r7, r8
1000342c:	|  |  |  |  |      fb0e f101 	mul.w	r1, lr, r1
10003430:	|  |  |  |  |      f84c 7001 	str.w	r7, [ip, r1]
10003434:	|  |  |  |  |      f3c8 2107 	ubfx	r1, r8, #8, #8
10003438:	|  |  |  |  |      461a      	mov	r2, r3
1000343a:	|  |  |  |  |      ea4f 4518 	mov.w	r5, r8, lsr #16
1000343e:	|  |  |  |  |      42b7      	cmp	r7, r6
10003440:	|  |  |  |  |      461e      	mov	r6, r3
10003442:	|  |  |  |  |      f842 1f04 	str.w	r1, [r2, #4]!
10003446:	|  |  |  |  |      f846 5f08 	str.w	r5, [r6, #8]!
1000344a:	|  |  |  |  |  /-- d303      	bcc.n	10003454 <Cy_IPC_Pipe_Init+0x144>
1000344c:	|  |  |  |  |  |   be01      	bkpt	0x0001
1000344e:	|  |  |  |  |  |   f8da 4000 	ldr.w	r4, [sl]
10003452:	|  |  |  |  |  |   6811      	ldr	r1, [r2, #0]
10003454:	|  |  |  |  |  \-> 6a22      	ldr	r2, [r4, #32]
10003456:	|  |  |  |  |      f8b4 50ba 	ldrh.w	r5, [r4, #186]	; 0xba
1000345a:	|  |  |  |  |      fb07 2205 	mla	r2, r7, r5, r2
1000345e:	|  |  |  |  |      611a      	str	r2, [r3, #16]
10003460:	|  |  |  |  |      f8da 2000 	ldr.w	r2, [sl]
10003464:	|  |  |  |  |      f892 3034 	ldrb.w	r3, [r2, #52]	; 0x34
10003468:	|  |  |  |  |      4299      	cmp	r1, r3
1000346a:	|  |  |  |  |  /-- d302      	bcc.n	10003472 <Cy_IPC_Pipe_Init+0x162>
1000346c:	|  |  |  |  |  |   be01      	bkpt	0x0001
1000346e:	|  |  |  |  |  |   f8da 2000 	ldr.w	r2, [sl]
10003472:	|  |  |  |  |  \-> 6a12      	ldr	r2, [r2, #32]
10003474:	|  |  |  |  |      6833      	ldr	r3, [r6, #0]
10003476:	|  |  |  |  |      eb02 1141 	add.w	r1, r2, r1, lsl #5
1000347a:	|  |  |  |  |      222c      	movs	r2, #44	; 0x2c
1000347c:	|  |  |  |  |      fb0e c202 	mla	r2, lr, r2, ip
10003480:	|  |  |  |  |      f501 5780 	add.w	r7, r1, #4096	; 0x1000
10003484:	|  |  |  |  |      f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
10003488:	|  |  |  |  |      6157      	str	r7, [r2, #20]
1000348a:	|  |  |  |  |  /-- d301      	bcc.n	10003490 <Cy_IPC_Pipe_Init+0x180>
1000348c:	|  |  |  |  |  |   be01      	bkpt	0x0001
1000348e:	|  |  |  |  |  |   be01      	bkpt	0x0001
10003490:	|  |  |  |  |  \-> eac3 4303 	pkhbt	r3, r3, r3, lsl #16
10003494:	|  |  |  |  |      f241 0708 	movw	r7, #4104	; 0x1008
10003498:	|  |  |  |  |      51cb      	str	r3, [r1, r7]
1000349a:	|  |  |  |  |      6b01      	ldr	r1, [r0, #48]	; 0x30
1000349c:	|  |  |  |  |      2300      	movs	r3, #0
1000349e:	|  |  |  |  |      a803      	add	r0, sp, #12
100034a0:	|  |  |  |  |      e9c2 3306 	strd	r3, r3, [r2, #24]
100034a4:	|  |  |  |  |      6213      	str	r3, [r2, #32]
100034a6:	|  |  |  |  |      f001 f863 	bl	10004570 <Cy_SysInt_Init>
100034aa:	|  |  |  |  |      f9bd 000c 	ldrsh.w	r0, [sp, #12]
100034ae:	|  |  |  |  |      2800      	cmp	r0, #0
100034b0:	|  |  |  |  |  /-- d40b      	bmi.n	100034ca <Cy_IPC_Pipe_Init+0x1ba>
100034b2:	|  |  |  |  |  |   f000 011f 	and.w	r1, r0, #31
100034b6:	|  |  |  |  |  |   2201      	movs	r2, #1
100034b8:	|  |  |  |  |  |   fa02 f101 	lsl.w	r1, r2, r1
100034bc:	|  |  |  |  |  |   f24e 1200 	movw	r2, #57600	; 0xe100
100034c0:	|  |  |  |  |  |   0940      	lsrs	r0, r0, #5
100034c2:	|  |  |  |  |  |   f2ce 0200 	movt	r2, #57344	; 0xe000
100034c6:	|  |  |  |  |  |   f842 1020 	str.w	r1, [r2, r0, lsl #2]
100034ca:	|  |  |  |  |  \-> b005      	add	sp, #20
100034cc:	|  |  |  |  |      e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
100034d0:	|  |  |  \--|----> be01      	bkpt	0x0001
100034d2:	|  |  |     |      6ac1      	ldr	r1, [r0, #44]	; 0x2c
100034d4:	|  |  |     |      2900      	cmp	r1, #0
100034d6:	|  |  |     \----- f47f af28 	bne.w	1000332a <Cy_IPC_Pipe_Init+0x1a>
100034da:	|  |  \----------> be01      	bkpt	0x0001
100034dc:	|  |               6b01      	ldr	r1, [r0, #48]	; 0x30
100034de:	|  |               2900      	cmp	r1, #0
100034e0:	|  +-------------- f47f af27 	bne.w	10003332 <Cy_IPC_Pipe_Init+0x22>
100034e4:	\--|-------------> be01      	bkpt	0x0001
100034e6:	   \-------------- e724      	b.n	10003332 <Cy_IPC_Pipe_Init+0x22>

100034e8 <Cy_IPC_Sema_Init>:
100034e8:	          b570      	push	{r4, r5, r6, lr}
100034ea:	          2900      	cmp	r1, #0
100034ec:	          bf08      	it	eq
100034ee:	          2a00      	cmpeq	r2, #0
100034f0:	      /-- d00c      	beq.n	1000350c <Cy_IPC_Sema_Init+0x24>
100034f2:	      |   f240 1501 	movw	r5, #257	; 0x101
100034f6:	      |   f2c0 058a 	movt	r5, #138	; 0x8a
100034fa:	      |   2900      	cmp	r1, #0
100034fc:	      |   f105 0302 	add.w	r3, r5, #2
10003500:	      |   bf18      	it	ne
10003502:	      |   2a00      	cmpne	r2, #0
10003504:	   /--|-- d11a      	bne.n	1000353c <Cy_IPC_Sema_Init+0x54>
10003506:	/--|--|-> 4618      	mov	r0, r3
10003508:	|  |  |   bd70      	pop	{r4, r5, r6, pc}
1000350a:	|  |  |   bf00      	nop
1000350c:	|  |  \-> f242 72b8 	movw	r2, #10168	; 0x27b8
10003510:	|  |      f6c0 0200 	movt	r2, #2048	; 0x800
10003514:	|  |      6811      	ldr	r1, [r2, #0]
10003516:	|  |      f891 3033 	ldrb.w	r3, [r1, #51]	; 0x33
1000351a:	|  |      4283      	cmp	r3, r0
1000351c:	|  |  /-- d801      	bhi.n	10003522 <Cy_IPC_Sema_Init+0x3a>
1000351e:	|  |  |   be01      	bkpt	0x0001
10003520:	|  |  |   6811      	ldr	r1, [r2, #0]
10003522:	|  |  \-> 6a0a      	ldr	r2, [r1, #32]
10003524:	|  |      f8b1 10ba 	ldrh.w	r1, [r1, #186]	; 0xba
10003528:	|  |      2300      	movs	r3, #0
1000352a:	|  |      fb01 2000 	mla	r0, r1, r0, r2
1000352e:	|  |      f642 0160 	movw	r1, #10336	; 0x2860
10003532:	|  |      f6c0 0100 	movt	r1, #2048	; 0x800
10003536:	|  |      6008      	str	r0, [r1, #0]
10003538:	|  |      4618      	mov	r0, r3
1000353a:	|  |      bd70      	pop	{r4, r5, r6, pc}
1000353c:	|  \----> f242 26e4 	movw	r6, #8932	; 0x22e4
10003540:	|         f6c0 0600 	movt	r6, #2048	; 0x800
10003544:	|         06cc      	lsls	r4, r1, #27
10003546:	|         6031      	str	r1, [r6, #0]
10003548:	|         6072      	str	r2, [r6, #4]
1000354a:	+-------- d1dc      	bne.n	10003506 <Cy_IPC_Sema_Init+0x1e>
1000354c:	|         f242 76b8 	movw	r6, #10168	; 0x27b8
10003550:	|         f6c0 0600 	movt	r6, #2048	; 0x800
10003554:	|         6836      	ldr	r6, [r6, #0]
10003556:	|         f896 4033 	ldrb.w	r4, [r6, #51]	; 0x33
1000355a:	|         4284      	cmp	r4, r0
1000355c:	+-------- d9d3      	bls.n	10003506 <Cy_IPC_Sema_Init+0x1e>
1000355e:	|         6a33      	ldr	r3, [r6, #32]
10003560:	|         f8b6 60ba 	ldrh.w	r6, [r6, #186]	; 0xba
10003564:	|         08c9      	lsrs	r1, r1, #3
10003566:	|         fb06 3400 	mla	r4, r6, r0, r3
1000356a:	|         f642 0660 	movw	r6, #10336	; 0x2860
1000356e:	|         f6c0 0600 	movt	r6, #2048	; 0x800
10003572:	|         4610      	mov	r0, r2
10003574:	|         6034      	str	r4, [r6, #0]
10003576:	|         f7fe ffff 	bl	10002578 <__aeabi_memclr4>
1000357a:	|         4620      	mov	r0, r4
1000357c:	|         2100      	movs	r1, #0
1000357e:	|         f7ff fe05 	bl	1000318c <Cy_IPC_Drv_LockRelease>
10003582:	|         6830      	ldr	r0, [r6, #0]
10003584:	|         f242 22e4 	movw	r2, #8932	; 0x22e4
10003588:	|         f6c0 0200 	movt	r2, #2048	; 0x800
1000358c:	|         2100      	movs	r1, #0
1000358e:	|         f7ff fe2b 	bl	100031e8 <Cy_IPC_Drv_SendMsgWord>
10003592:	|         2800      	cmp	r0, #0
10003594:	|         462b      	mov	r3, r5
10003596:	\-------- d1b6      	bne.n	10003506 <Cy_IPC_Sema_Init+0x1e>
10003598:	          6830      	ldr	r0, [r6, #0]
1000359a:	          2100      	movs	r1, #0
1000359c:	          f7ff fdf6 	bl	1000318c <Cy_IPC_Drv_LockRelease>
100035a0:	          2800      	cmp	r0, #0
100035a2:	          bf08      	it	eq
100035a4:	          4605      	moveq	r5, r0
100035a6:	          462b      	mov	r3, r5
100035a8:	          4618      	mov	r0, r3
100035aa:	          bd70      	pop	{r4, r5, r6, pc}

100035ac <Cy_PDL_Init>:
100035ac:	f242 71b8 	movw	r1, #10168	; 0x27b8
100035b0:	f6c0 0100 	movt	r1, #2048	; 0x800
100035b4:	6008      	str	r0, [r1, #0]
100035b6:	4770      	bx	lr

100035b8 <Cy_Prot_GetActivePC>:
100035b8:	    f242 72b8 	movw	r2, #10168	; 0x27b8
100035bc:	    f6c0 0200 	movt	r2, #2048	; 0x800
100035c0:	    6811      	ldr	r1, [r2, #0]
100035c2:	    6c8b      	ldr	r3, [r1, #72]	; 0x48
100035c4:	    40c3      	lsrs	r3, r0
100035c6:	    07db      	lsls	r3, r3, #31
100035c8:	/-- d101      	bne.n	100035ce <Cy_Prot_GetActivePC+0x16>
100035ca:	|   be01      	bkpt	0x0001
100035cc:	|   6811      	ldr	r1, [r2, #0]
100035ce:	\-> 6909      	ldr	r1, [r1, #16]
100035d0:	    eb01 2080 	add.w	r0, r1, r0, lsl #10
100035d4:	    f44f 4180 	mov.w	r1, #16384	; 0x4000
100035d8:	    5840      	ldr	r0, [r0, r1]
100035da:	    f000 000f 	and.w	r0, r0, #15
100035de:	    4770      	bx	lr

100035e0 <Cy_SCB_Write>:
100035e0:	6802      	ldr	r2, [r0, #0]
100035e2:	f8d0 3208 	ldr.w	r3, [r0, #520]	; 0x208
100035e6:	0512      	lsls	r2, r2, #20
100035e8:	f04f 0280 	mov.w	r2, #128	; 0x80
100035ec:	f36f 235f 	bfc	r3, #9, #23
100035f0:	bf58      	it	pl
100035f2:	2240      	movpl	r2, #64	; 0x40
100035f4:	429a      	cmp	r2, r3
100035f6:	bf0e      	itee	eq
100035f8:	2000      	moveq	r0, #0
100035fa:	f8c0 1240 	strne.w	r1, [r0, #576]	; 0x240
100035fe:	2001      	movne	r0, #1
10003600:	4770      	bx	lr
	...

10003604 <Cy_SysClk_ClkBakSetSource>:
10003604:	    2802      	cmp	r0, #2
10003606:	/-- d300      	bcc.n	1000360a <Cy_SysClk_ClkBakSetSource+0x6>
10003608:	|   be01      	bkpt	0x0001
1000360a:	\-> 2100      	movs	r1, #0
1000360c:	    f2c4 0127 	movt	r1, #16423	; 0x4027
10003610:	    680a      	ldr	r2, [r1, #0]
10003612:	    f360 2209 	bfi	r2, r0, #8, #2
10003616:	    600a      	str	r2, [r1, #0]
10003618:	    4770      	bx	lr
	...

1000361c <Cy_SysClk_ClkFastGetDivider>:
1000361c:	f242 70b8 	movw	r0, #10168	; 0x27b8
10003620:	f6c0 0000 	movt	r0, #2048	; 0x800
10003624:	6800      	ldr	r0, [r0, #0]
10003626:	6801      	ldr	r1, [r0, #0]
10003628:	f8d0 008c 	ldr.w	r0, [r0, #140]	; 0x8c
1000362c:	5840      	ldr	r0, [r0, r1]
1000362e:	f3c0 2007 	ubfx	r0, r0, #8, #8
10003632:	4770      	bx	lr

10003634 <Cy_SysClk_ClkFastSetDivider>:
10003634:	f242 71b8 	movw	r1, #10168	; 0x27b8
10003638:	f6c0 0100 	movt	r1, #2048	; 0x800
1000363c:	6809      	ldr	r1, [r1, #0]
1000363e:	680a      	ldr	r2, [r1, #0]
10003640:	f8d1 108c 	ldr.w	r1, [r1, #140]	; 0x8c
10003644:	588b      	ldr	r3, [r1, r2]
10003646:	f423 437f 	bic.w	r3, r3, #65280	; 0xff00
1000364a:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
1000364e:	5088      	str	r0, [r1, r2]
10003650:	4770      	bx	lr
	...

10003654 <Cy_SysClk_ClkHfGetFrequency>:
10003654:	    b5b0      	push	{r4, r5, r7, lr}
10003656:	    f242 72b8 	movw	r2, #10168	; 0x27b8
1000365a:	    f6c0 0200 	movt	r2, #2048	; 0x800
1000365e:	    6811      	ldr	r1, [r2, #0]
10003660:	    f891 1040 	ldrb.w	r1, [r1, #64]	; 0x40
10003664:	    4281      	cmp	r1, r0
10003666:	/-- d803      	bhi.n	10003670 <Cy_SysClk_ClkHfGetFrequency+0x1c>
10003668:	|   be01      	bkpt	0x0001
1000366a:	|   6811      	ldr	r1, [r2, #0]
1000366c:	|   f891 1040 	ldrb.w	r1, [r1, #64]	; 0x40
10003670:	\-> f240 3280 	movw	r2, #896	; 0x380
10003674:	    f2c4 0226 	movt	r2, #16422	; 0x4026
10003678:	    f852 3020 	ldr.w	r3, [r2, r0, lsl #2]
1000367c:	    4281      	cmp	r1, r0
1000367e:	    f3c3 1401 	ubfx	r4, r3, #4, #2
10003682:	/-- d800      	bhi.n	10003686 <Cy_SysClk_ClkHfGetFrequency+0x32>
10003684:	|   be01      	bkpt	0x0001
10003686:	\-> f852 0020 	ldr.w	r0, [r2, r0, lsl #2]
1000368a:	    2101      	movs	r1, #1
1000368c:	    f000 000f 	and.w	r0, r0, #15
10003690:	    fa01 f504 	lsl.w	r5, r1, r4
10003694:	    f000 f85c 	bl	10003750 <Cy_SysClk_ClkPathGetFrequency>
10003698:	    eb00 0055 	add.w	r0, r0, r5, lsr #1
1000369c:	    40e0      	lsrs	r0, r4
1000369e:	    bdb0      	pop	{r4, r5, r7, pc}

100036a0 <Cy_SysClk_ClkHfGetSource>:
100036a0:	    f242 71b8 	movw	r1, #10168	; 0x27b8
100036a4:	    f6c0 0100 	movt	r1, #2048	; 0x800
100036a8:	    6809      	ldr	r1, [r1, #0]
100036aa:	    f891 1040 	ldrb.w	r1, [r1, #64]	; 0x40
100036ae:	    4281      	cmp	r1, r0
100036b0:	/-- d800      	bhi.n	100036b4 <Cy_SysClk_ClkHfGetSource+0x14>
100036b2:	|   be01      	bkpt	0x0001
100036b4:	\-> f240 3180 	movw	r1, #896	; 0x380
100036b8:	    f2c4 0126 	movt	r1, #16422	; 0x4026
100036bc:	    f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
100036c0:	    f000 000f 	and.w	r0, r0, #15
100036c4:	    4770      	bx	lr
	...

100036c8 <Cy_SysClk_ClkHfSetDivider>:
100036c8:	    2201      	movs	r2, #1
100036ca:	    2903      	cmp	r1, #3
100036cc:	    f2c0 024a 	movt	r2, #74	; 0x4a
100036d0:	/-- d813      	bhi.n	100036fa <Cy_SysClk_ClkHfSetDivider+0x32>
100036d2:	|   f242 73b8 	movw	r3, #10168	; 0x27b8
100036d6:	|   f6c0 0300 	movt	r3, #2048	; 0x800
100036da:	|   681b      	ldr	r3, [r3, #0]
100036dc:	|   f893 3040 	ldrb.w	r3, [r3, #64]	; 0x40
100036e0:	|   4283      	cmp	r3, r0
100036e2:	+-- d90a      	bls.n	100036fa <Cy_SysClk_ClkHfSetDivider+0x32>
100036e4:	|   f240 3280 	movw	r2, #896	; 0x380
100036e8:	|   f2c4 0226 	movt	r2, #16422	; 0x4026
100036ec:	|   f852 3020 	ldr.w	r3, [r2, r0, lsl #2]
100036f0:	|   f361 1305 	bfi	r3, r1, #4, #2
100036f4:	|   f842 3020 	str.w	r3, [r2, r0, lsl #2]
100036f8:	|   2200      	movs	r2, #0
100036fa:	\-> 4610      	mov	r0, r2
100036fc:	    4770      	bx	lr
	...

10003700 <Cy_SysClk_ClkHfSetSource>:
10003700:	    2201      	movs	r2, #1
10003702:	    290f      	cmp	r1, #15
10003704:	    f2c0 024a 	movt	r2, #74	; 0x4a
10003708:	/-- d814      	bhi.n	10003734 <Cy_SysClk_ClkHfSetSource+0x34>
1000370a:	|   f242 73b8 	movw	r3, #10168	; 0x27b8
1000370e:	|   f6c0 0300 	movt	r3, #2048	; 0x800
10003712:	|   681b      	ldr	r3, [r3, #0]
10003714:	|   f893 3040 	ldrb.w	r3, [r3, #64]	; 0x40
10003718:	|   4283      	cmp	r3, r0
1000371a:	+-- d90b      	bls.n	10003734 <Cy_SysClk_ClkHfSetSource+0x34>
1000371c:	|   f240 3280 	movw	r2, #896	; 0x380
10003720:	|   f2c4 0226 	movt	r2, #16422	; 0x4026
10003724:	|   f852 3020 	ldr.w	r3, [r2, r0, lsl #2]
10003728:	|   f023 030f 	bic.w	r3, r3, #15
1000372c:	|   4319      	orrs	r1, r3
1000372e:	|   f842 1020 	str.w	r1, [r2, r0, lsl #2]
10003732:	|   2200      	movs	r2, #0
10003734:	\-> 4610      	mov	r0, r2
10003736:	    4770      	bx	lr

10003738 <Cy_SysClk_ClkLfSetSource>:
10003738:	    2804      	cmp	r0, #4
1000373a:	/-- d300      	bcc.n	1000373e <Cy_SysClk_ClkLfSetSource+0x6>
1000373c:	|   be01      	bkpt	0x0001
1000373e:	\-> f240 5100 	movw	r1, #1280	; 0x500
10003742:	    f2c4 0126 	movt	r1, #16422	; 0x4026
10003746:	    680a      	ldr	r2, [r1, #0]
10003748:	    f360 0201 	bfi	r2, r0, #0, #2
1000374c:	    600a      	str	r2, [r1, #0]
1000374e:	    4770      	bx	lr

10003750 <Cy_SysClk_ClkPathGetFrequency>:
10003750:	                b5b0      	push	{r4, r5, r7, lr}
10003752:	                f242 75b8 	movw	r5, #10168	; 0x27b8
10003756:	                f6c0 0500 	movt	r5, #2048	; 0x800
1000375a:	                6829      	ldr	r1, [r5, #0]
1000375c:	                4604      	mov	r4, r0
1000375e:	                f891 103e 	ldrb.w	r1, [r1, #62]	; 0x3e
10003762:	                4281      	cmp	r1, r0
10003764:	            /-- d800      	bhi.n	10003768 <Cy_SysClk_ClkPathGetFrequency+0x18>
10003766:	            |   be01      	bkpt	0x0001
10003768:	         /--\-X b154      	cbz	r4, 10003780 <Cy_SysClk_ClkPathGetFrequency+0x30>
1000376a:	         |      6828      	ldr	r0, [r5, #0]
1000376c:	         |      f890 103f 	ldrb.w	r1, [r0, #63]	; 0x3f
10003770:	         |      42a1      	cmp	r1, r4
10003772:	      /--|----- d30a      	bcc.n	1000378a <Cy_SysClk_ClkPathGetFrequency+0x3a>
10003774:	      |  |      4620      	mov	r0, r4
10003776:	      |  |      f000 fdcd 	bl	10004314 <Cy_SysClk_PllGetFrequency>
1000377a:	      |  |  /-- b128      	cbz	r0, 10003788 <Cy_SysClk_ClkPathGetFrequency+0x38>
1000377c:	/-----|--|--|-> bdb0      	pop	{r4, r5, r7, pc}
1000377e:	|     |  |  |   bf00      	nop
10003780:	|     |  \--|-> f000 fb2e 	bl	10003de0 <Cy_SysClk_FllGetFrequency>
10003784:	|     |     |   2800      	cmp	r0, #0
10003786:	+-----|-----|-- d1f9      	bne.n	1000377c <Cy_SysClk_ClkPathGetFrequency+0x2c>
10003788:	|     |     \-> 6828      	ldr	r0, [r5, #0]
1000378a:	|     \-------> f890 003e 	ldrb.w	r0, [r0, #62]	; 0x3e
1000378e:	|               42a0      	cmp	r0, r4
10003790:	|           /-- d803      	bhi.n	1000379a <Cy_SysClk_ClkPathGetFrequency+0x4a>
10003792:	|           |   be01      	bkpt	0x0001
10003794:	|           |   6828      	ldr	r0, [r5, #0]
10003796:	|           |   f890 003e 	ldrb.w	r0, [r0, #62]	; 0x3e
1000379a:	|           \-> 42a0      	cmp	r0, r4
1000379c:	|           /-- d800      	bhi.n	100037a0 <Cy_SysClk_ClkPathGetFrequency+0x50>
1000379e:	|           |   be01      	bkpt	0x0001
100037a0:	|           \-> f240 5130 	movw	r1, #1328	; 0x530
100037a4:	|               f2c4 0126 	movt	r1, #16422	; 0x4026
100037a8:	|               f64f 6210 	movw	r2, #65040	; 0xfe10
100037ac:	|               eb01 0084 	add.w	r0, r1, r4, lsl #2
100037b0:	|               f6cf 72ff 	movt	r2, #65535	; 0xffff
100037b4:	|               5882      	ldr	r2, [r0, r2]
100037b6:	|               f002 0207 	and.w	r2, r2, #7
100037ba:	|               2a04      	cmp	r2, #4
100037bc:	|           /-- d107      	bne.n	100037ce <Cy_SysClk_ClkPathGetFrequency+0x7e>
100037be:	|           |   f64f 52d0 	movw	r2, #64976	; 0xfdd0
100037c2:	|           |   f6cf 72ff 	movt	r2, #65535	; 0xffff
100037c6:	|           |   5882      	ldr	r2, [r0, r2]
100037c8:	|           |   2008      	movs	r0, #8
100037ca:	|           |   f360 125f 	bfi	r2, r0, #5, #27
100037ce:	|           \-> f5b2 7f88 	cmp.w	r2, #272	; 0x110
100037d2:	|               f04f 0000 	mov.w	r0, #0
100037d6:	|           /-- da0f      	bge.n	100037f8 <Cy_SysClk_ClkPathGetFrequency+0xa8>
100037d8:	|     /-----|-- b1f2      	cbz	r2, 10003818 <Cy_SysClk_ClkPathGetFrequency+0xc8>
100037da:	|     |     |   2a01      	cmp	r2, #1
100037dc:	|  /--|-----|-- d02a      	beq.n	10003834 <Cy_SysClk_ClkPathGetFrequency+0xe4>
100037de:	|  |  |     |   2a02      	cmp	r2, #2
100037e0:	\--|--|-----|-- d1cc      	bne.n	1000377c <Cy_SysClk_ClkPathGetFrequency+0x2c>
100037e2:	   |  |     |   6808      	ldr	r0, [r1, #0]
100037e4:	   |  |     |   f000 0003 	and.w	r0, r0, #3
100037e8:	   |  |     |   2803      	cmp	r0, #3
100037ea:	/--|--|-----|-- d133      	bne.n	10003854 <Cy_SysClk_ClkPathGetFrequency+0x104>
100037ec:	|  |  |     |   f242 50b0 	movw	r0, #9648	; 0x25b0
100037f0:	|  |  |     |   f6c0 0000 	movt	r0, #2048	; 0x800
100037f4:	|  |  |     |   68c0      	ldr	r0, [r0, #12]
100037f6:	|  |  |     |   bdb0      	pop	{r4, r5, r7, pc}
100037f8:	|  |  |  /--\-X d014      	beq.n	10003824 <Cy_SysClk_ClkPathGetFrequency+0xd4>
100037fa:	|  |  |  |      f240 1311 	movw	r3, #273	; 0x111
100037fe:	|  |  |  |      429a      	cmp	r2, r3
10003800:	|  |  |  |  /-- d01e      	beq.n	10003840 <Cy_SysClk_ClkPathGetFrequency+0xf0>
10003802:	|  |  |  |  |   f240 1313 	movw	r3, #275	; 0x113
10003806:	|  |  |  |  |   429a      	cmp	r2, r3
10003808:	|  |  |  |  |   bf18      	it	ne
1000380a:	|  |  |  |  |   bdb0      	popne	{r4, r5, r7, pc}
1000380c:	|  |  |  |  |   68c8      	ldr	r0, [r1, #12]
1000380e:	|  |  |  |  |   f44f 4100 	mov.w	r1, #32768	; 0x8000
10003812:	|  |  |  |  |   ea01 4010 	and.w	r0, r1, r0, lsr #16
10003816:	|  |  |  |  |   bdb0      	pop	{r4, r5, r7, pc}
10003818:	|  |  \--|--|-> f241 2000 	movw	r0, #4608	; 0x1200
1000381c:	|  |     |  |   f2c0 007a 	movt	r0, #122	; 0x7a
10003820:	|  |     |  |   bdb0      	pop	{r4, r5, r7, pc}
10003822:	|  |     |  |   bf00      	nop
10003824:	|  |     \--|-> f851 0c24 	ldr.w	r0, [r1, #-36]
10003828:	|  |        |   f44f 4100 	mov.w	r1, #32768	; 0x8000
1000382c:	|  |        |   ea01 4010 	and.w	r0, r1, r0, lsr #16
10003830:	|  |        |   bdb0      	pop	{r4, r5, r7, pc}
10003832:	|  |        |   bf00      	nop
10003834:	|  \--------|-> f242 50b0 	movw	r0, #9648	; 0x25b0
10003838:	|           |   f6c0 0000 	movt	r0, #2048	; 0x800
1000383c:	|           |   6880      	ldr	r0, [r0, #8]
1000383e:	|           |   bdb0      	pop	{r4, r5, r7, pc}
10003840:	|           \-> 2010      	movs	r0, #16
10003842:	|               f2c4 0027 	movt	r0, #16423	; 0x4027
10003846:	|               6800      	ldr	r0, [r0, #0]
10003848:	|               f44f 4100 	mov.w	r1, #32768	; 0x8000
1000384c:	|               ea01 3040 	and.w	r0, r1, r0, lsl #13
10003850:	|               bdb0      	pop	{r4, r5, r7, pc}
10003852:	|               bf00      	nop
10003854:	\-------------> 6808      	ldr	r0, [r1, #0]
10003856:	                2000      	movs	r0, #0
10003858:	                bdb0      	pop	{r4, r5, r7, pc}
	...

1000385c <Cy_SysClk_ClkPathGetSource>:
1000385c:	    f242 71b8 	movw	r1, #10168	; 0x27b8
10003860:	    f6c0 0100 	movt	r1, #2048	; 0x800
10003864:	    6809      	ldr	r1, [r1, #0]
10003866:	    f891 103e 	ldrb.w	r1, [r1, #62]	; 0x3e
1000386a:	    4281      	cmp	r1, r0
1000386c:	/-- d800      	bhi.n	10003870 <Cy_SysClk_ClkPathGetSource+0x14>
1000386e:	|   be01      	bkpt	0x0001
10003870:	\-> f240 3200 	movw	r2, #768	; 0x300
10003874:	    f2c4 0226 	movt	r2, #16422	; 0x4026
10003878:	    eb02 0180 	add.w	r1, r2, r0, lsl #2
1000387c:	    6c09      	ldr	r1, [r1, #64]	; 0x40
1000387e:	    f001 0107 	and.w	r1, r1, #7
10003882:	    2904      	cmp	r1, #4
10003884:	/-- d104      	bne.n	10003890 <Cy_SysClk_ClkPathGetSource+0x34>
10003886:	|   f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
1000388a:	|   2008      	movs	r0, #8
1000388c:	|   f360 115f 	bfi	r1, r0, #5, #27
10003890:	\-> b288      	uxth	r0, r1
10003892:	    4770      	bx	lr

10003894 <Cy_SysClk_ClkPathSetSource>:
10003894:	       f242 72b8 	movw	r2, #10168	; 0x27b8
10003898:	       f6c0 0200 	movt	r2, #2048	; 0x800
1000389c:	       6812      	ldr	r2, [r2, #0]
1000389e:	       f892 303e 	ldrb.w	r3, [r2, #62]	; 0x3e
100038a2:	       4602      	mov	r2, r0
100038a4:	       4283      	cmp	r3, r0
100038a6:	       f240 0001 	movw	r0, #1
100038aa:	       f2c0 004a 	movt	r0, #74	; 0x4a
100038ae:	/----- d90a      	bls.n	100038c6 <Cy_SysClk_ClkPathSetSource+0x32>
100038b0:	|      2905      	cmp	r1, #5
100038b2:	|  /-- d209      	bcs.n	100038c8 <Cy_SysClk_ClkPathSetSource+0x34>
100038b4:	|  |   f001 0007 	and.w	r0, r1, #7
100038b8:	|  |   f240 3140 	movw	r1, #832	; 0x340
100038bc:	|  |   f2c4 0126 	movt	r1, #16422	; 0x4026
100038c0:	|  |   f841 0022 	str.w	r0, [r1, r2, lsl #2]
100038c4:	|  |   2000      	movs	r0, #0
100038c6:	\--|-> 4770      	bx	lr
100038c8:	   \-> f5a1 7380 	sub.w	r3, r1, #256	; 0x100
100038cc:	       2b13      	cmp	r3, #19
100038ce:	       bf88      	it	hi
100038d0:	       4770      	bxhi	lr
100038d2:	       f001 001f 	and.w	r0, r1, #31
100038d6:	       f240 3140 	movw	r1, #832	; 0x340
100038da:	       f2c4 0126 	movt	r1, #16422	; 0x4026
100038de:	       eb01 0382 	add.w	r3, r1, r2, lsl #2
100038e2:	       f843 0c40 	str.w	r0, [r3, #-64]
100038e6:	       2004      	movs	r0, #4
100038e8:	       f841 0022 	str.w	r0, [r1, r2, lsl #2]
100038ec:	       2000      	movs	r0, #0
100038ee:	       4770      	bx	lr

100038f0 <Cy_SysClk_ClkPeriGetDivider>:
100038f0:	f242 70b8 	movw	r0, #10168	; 0x27b8
100038f4:	f6c0 0000 	movt	r0, #2048	; 0x800
100038f8:	6800      	ldr	r0, [r0, #0]
100038fa:	6801      	ldr	r1, [r0, #0]
100038fc:	f8d0 0088 	ldr.w	r0, [r0, #136]	; 0x88
10003900:	5840      	ldr	r0, [r0, r1]
10003902:	0e00      	lsrs	r0, r0, #24
10003904:	4770      	bx	lr
	...

10003908 <Cy_SysClk_ClkPeriSetDivider>:
10003908:	f242 71b8 	movw	r1, #10168	; 0x27b8
1000390c:	f6c0 0100 	movt	r1, #2048	; 0x800
10003910:	6809      	ldr	r1, [r1, #0]
10003912:	680a      	ldr	r2, [r1, #0]
10003914:	f8d1 1088 	ldr.w	r1, [r1, #136]	; 0x88
10003918:	588b      	ldr	r3, [r1, r2]
1000391a:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
1000391e:	ea43 6000 	orr.w	r0, r3, r0, lsl #24
10003922:	5088      	str	r0, [r1, r2]
10003924:	4770      	bx	lr
	...

10003928 <Cy_SysClk_ClkSlowSetDivider>:
10003928:	f242 71b8 	movw	r1, #10168	; 0x27b8
1000392c:	f6c0 0100 	movt	r1, #2048	; 0x800
10003930:	6809      	ldr	r1, [r1, #0]
10003932:	680a      	ldr	r2, [r1, #0]
10003934:	f8d1 1088 	ldr.w	r1, [r1, #136]	; 0x88
10003938:	588b      	ldr	r3, [r1, r2]
1000393a:	f423 437f 	bic.w	r3, r3, #65280	; 0xff00
1000393e:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
10003942:	5088      	str	r0, [r1, r2]
10003944:	4770      	bx	lr
	...

10003948 <Cy_SysClk_DeepSleepCallback>:
10003948:	                                              e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
1000394c:	                                              f240 0e02 	movw	lr, #2
10003950:	                                              f2c0 0e42 	movt	lr, #66	; 0x42
10003954:	                                              3901      	subs	r1, #1
10003956:	                                              2907      	cmp	r1, #7
10003958:	                                              f10e 00fd 	add.w	r0, lr, #253	; 0xfd
1000395c:	/-------------------------------------------- f200 81c3 	bhi.w	10003ce6 <Cy_SysClk_DeepSleepCallback+0x39e>
10003960:	|                                             e8df f011 	tbh	[pc, r1, lsl #1]
10003964:	|                                             00160008 	.word	0x00160008
10003968:	|                                             001e01c1 	.word	0x001e01c1
1000396c:	|                                             01c101c1 	.word	0x01c101c1
10003970:	|                                             005a01c1 	.word	0x005a01c1
10003974:	|                                             f242 51b0 	movw	r1, #9648	; 0x25b0
10003978:	|                                             f6c0 0100 	movt	r1, #2048	; 0x800
1000397c:	|                                             780a      	ldrb	r2, [r1, #0]
1000397e:	|                                             2a00      	cmp	r2, #0
10003980:	+-------------------------------------------- f040 81b1 	bne.w	10003ce6 <Cy_SysClk_DeepSleepCallback+0x39e>
10003984:	|                                             2001      	movs	r0, #1
10003986:	|                                             7048      	strb	r0, [r1, #1]
10003988:	|                                             2000      	movs	r0, #0
1000398a:	|                                             e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1000398e:	|                                             bf00      	nop
10003990:	|                                             f242 51b0 	movw	r1, #9648	; 0x25b0
10003994:	|                                             f6c0 0100 	movt	r1, #2048	; 0x800
10003998:	|                                             2000      	movs	r0, #0
1000399a:	|                                             7048      	strb	r0, [r1, #1]
1000399c:	|                                             e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
100039a0:	|                                             f242 59b0 	movw	r9, #9648	; 0x25b0
100039a4:	|                                             f240 5a30 	movw	sl, #1328	; 0x530
100039a8:	|                                             f6c0 0900 	movt	r9, #2048	; 0x800
100039ac:	|                                             2000      	movs	r0, #0
100039ae:	|                                             f242 73b8 	movw	r3, #10168	; 0x27b8
100039b2:	|                                             f2c4 0a26 	movt	sl, #16422	; 0x4026
100039b6:	|                                             f8c9 0002 	str.w	r0, [r9, #2]
100039ba:	|                                             f6c0 0300 	movt	r3, #2048	; 0x800
100039be:	|                                             6818      	ldr	r0, [r3, #0]
100039c0:	|                                             f8da 1050 	ldr.w	r1, [sl, #80]	; 0x50
100039c4:	|                                             f1b1 3fff 	cmp.w	r1, #4294967295
100039c8:	|                             /-------------- f300 808b 	bgt.w	10003ae2 <Cy_SysClk_DeepSleepCallback+0x19a>
100039cc:	|                             |               f890 003e 	ldrb.w	r0, [r0, #62]	; 0x3e
100039d0:	|                             |           /-- b900      	cbnz	r0, 100039d4 <Cy_SysClk_DeepSleepCallback+0x8c>
100039d2:	|                             |           |   be01      	bkpt	0x0001
100039d4:	|                             |           \-> f64f 6010 	movw	r0, #65040	; 0xfe10
100039d8:	|                             |               f6cf 70ff 	movt	r0, #65535	; 0xffff
100039dc:	|                             |               f85a 1000 	ldr.w	r1, [sl, r0]
100039e0:	|                             |               f001 0207 	and.w	r2, r1, #7
100039e4:	|                             |               2a04      	cmp	r2, #4
100039e6:	|                             |     /-------- d06f      	beq.n	10003ac8 <Cy_SysClk_DeepSleepCallback+0x180>
100039e8:	|                             |     |         2a02      	cmp	r2, #2
100039ea:	|                             |  /--|-------- d173      	bne.n	10003ad4 <Cy_SysClk_DeepSleepCallback+0x18c>
100039ec:	|                             |  |  |         f8da 1058 	ldr.w	r1, [sl, #88]	; 0x58
100039f0:	|                             |  |  |         2202      	movs	r2, #2
100039f2:	|                             |  |  |         f362 711d 	bfi	r1, r2, #28, #2
100039f6:	|                             |  |  |         f8ca 1058 	str.w	r1, [sl, #88]	; 0x58
100039fa:	|                             |  |  |         6819      	ldr	r1, [r3, #0]
100039fc:	|                             |  |  |         f891 103e 	ldrb.w	r1, [r1, #62]	; 0x3e
10003a00:	|                             |  |  |         2900      	cmp	r1, #0
10003a02:	|                             |  |  |         bf1c      	itt	ne
10003a04:	|                             |  |  |         2100      	movne	r1, #0
10003a06:	|                             |  |  |         f84a 1000 	strne.w	r1, [sl, r0]
10003a0a:	|                             |  |  |         f8b9 0002 	ldrh.w	r0, [r9, #2]
10003a0e:	|                             |  |  |         f040 0001 	orr.w	r0, r0, #1
10003a12:	|                             |  |  |         f8a9 0002 	strh.w	r0, [r9, #2]
10003a16:	|                             +--|--|-------- e064      	b.n	10003ae2 <Cy_SysClk_DeepSleepCallback+0x19a>
10003a18:	|                             |  |  |         f242 5cb0 	movw	ip, #9648	; 0x25b0
10003a1c:	|                             |  |  |         f6c0 0c00 	movt	ip, #2048	; 0x800
10003a20:	|                             |  |  |         f8bc 5002 	ldrh.w	r5, [ip, #2]
10003a24:	|                             |  |  |  /----- b375      	cbz	r5, 10003a84 <Cy_SysClk_DeepSleepCallback+0x13c>
10003a26:	|                             |  |  |  |      f240 5130 	movw	r1, #1328	; 0x530
10003a2a:	|                             |  |  |  |      f2c4 0126 	movt	r1, #16422	; 0x4026
10003a2e:	|                             |  |  |  |      6808      	ldr	r0, [r1, #0]
10003a30:	|                             |  |  |  |      f244 2340 	movw	r3, #16960	; 0x4240
10003a34:	|                             |  |  |  |      f000 0003 	and.w	r0, r0, #3
10003a38:	|                             |  |  |  |      2803      	cmp	r0, #3
10003a3a:	|                             |  |  |  |      f2c0 030f 	movt	r3, #15
10003a3e:	|              /--------------|--|--|--|----- f000 80bf 	beq.w	10003bc0 <Cy_SysClk_DeepSleepCallback+0x278>
10003a42:	|              |              |  |  |  |      bf00      	nop
10003a44:	|              |              |  |  |  |  /-> 6808      	ldr	r0, [r1, #0]
10003a46:	|              |              |  |  |  |  |   2b00      	cmp	r3, #0
10003a48:	|  /-----------|--------------|--|--|--|--|-- f000 8149 	beq.w	10003cde <Cy_SysClk_DeepSleepCallback+0x396>
10003a4c:	|  |           |              |  |  |  |  |   6808      	ldr	r0, [r1, #0]
10003a4e:	|  |           |              |  |  |  |  |   f000 0003 	and.w	r0, r0, #3
10003a52:	|  |           |              |  |  |  |  |   2803      	cmp	r0, #3
10003a54:	|  |           |  /-----------|--|--|--|--|-- f000 80ac 	beq.w	10003bb0 <Cy_SysClk_DeepSleepCallback+0x268>
10003a58:	|  |           |  |           |  |  |  |  |   6808      	ldr	r0, [r1, #0]
10003a5a:	|  |           |  |           |  |  |  |  |   6808      	ldr	r0, [r1, #0]
10003a5c:	|  |           |  |           |  |  |  |  |   f000 0003 	and.w	r0, r0, #3
10003a60:	|  |           |  |           |  |  |  |  |   2803      	cmp	r0, #3
10003a62:	|  |           |  |  /--------|--|--|--|--|-- f000 80a7 	beq.w	10003bb4 <Cy_SysClk_DeepSleepCallback+0x26c>
10003a66:	|  |           |  |  |        |  |  |  |  |   6808      	ldr	r0, [r1, #0]
10003a68:	|  |           |  |  |        |  |  |  |  |   6808      	ldr	r0, [r1, #0]
10003a6a:	|  |           |  |  |        |  |  |  |  |   f000 0003 	and.w	r0, r0, #3
10003a6e:	|  |           |  |  |        |  |  |  |  |   2803      	cmp	r0, #3
10003a70:	|  |           |  |  |  /-----|--|--|--|--|-- f000 80a2 	beq.w	10003bb8 <Cy_SysClk_DeepSleepCallback+0x270>
10003a74:	|  |           |  |  |  |     |  |  |  |  |   6808      	ldr	r0, [r1, #0]
10003a76:	|  |           |  |  |  |     |  |  |  |  |   6808      	ldr	r0, [r1, #0]
10003a78:	|  |           |  |  |  |     |  |  |  |  |   3b04      	subs	r3, #4
10003a7a:	|  |           |  |  |  |     |  |  |  |  |   f000 0003 	and.w	r0, r0, #3
10003a7e:	|  |           |  |  |  |     |  |  |  |  |   2803      	cmp	r0, #3
10003a80:	|  |           |  |  |  |     |  |  |  |  \-- d1e0      	bne.n	10003a44 <Cy_SysClk_DeepSleepCallback+0xfc>
10003a82:	|  |           |  |  |  |  /--|--|--|--|----- e09a      	b.n	10003bba <Cy_SysClk_DeepSleepCallback+0x272>
10003a84:	|  |           |  |  |  |  |  |  |  |  \----> f240 5030 	movw	r0, #1328	; 0x530
10003a88:	|  |           |  |  |  |  |  |  |  |         f2c4 0026 	movt	r0, #16422	; 0x4026
10003a8c:	|  |           |  |  |  |  |  |  |  |         6d01      	ldr	r1, [r0, #80]	; 0x50
10003a8e:	|  |           |  |  |  |  |  |  |  |         f1b1 3fff 	cmp.w	r1, #4294967295
10003a92:	|  |  /--------|--|--|--|--|--|--|--|-------- f300 8122 	bgt.w	10003cda <Cy_SysClk_DeepSleepCallback+0x392>
10003a96:	|  |  |        |  |  |  |  |  |  |  |         f64b 51c0 	movw	r1, #48576	; 0xbdc0
10003a9a:	|  |  |        |  |  |  |  |  |  |  |         f6cf 71f0 	movt	r1, #65520	; 0xfff0
10003a9e:	|  |  |        |  |  |  |  |  |  |  |     /-> 6e02      	ldr	r2, [r0, #96]	; 0x60
10003aa0:	|  |  |        |  |  |  |  |  |  |  |     |   2900      	cmp	r1, #0
10003aa2:	|  |  |  /-----|--|--|--|--|--|--|--|-----|-- f000 8115 	beq.w	10003cd0 <Cy_SysClk_DeepSleepCallback+0x388>
10003aa6:	|  |  |  |     |  |  |  |  |  |  |  |     |   f012 0201 	ands.w	r2, r2, #1
10003aaa:	|  |  |  +-----|--|--|--|--|--|--|--|-----|-- f040 8111 	bne.w	10003cd0 <Cy_SysClk_DeepSleepCallback+0x388>
10003aae:	|  |  |  |     |  |  |  |  |  |  |  |     |   6e02      	ldr	r2, [r0, #96]	; 0x60
10003ab0:	|  |  |  |     |  |  |  |  |  |  |  |     |   07d2      	lsls	r2, r2, #31
10003ab2:	|  |  |  |     |  |  |  |  |  |  |  |     |   bf04      	itt	eq
10003ab4:	|  |  |  |     |  |  |  |  |  |  |  |     |   6e02      	ldreq	r2, [r0, #96]	; 0x60
10003ab6:	|  |  |  |     |  |  |  |  |  |  |  |     |   ea5f 72c2 	movseq.w	r2, r2, lsl #31
10003aba:	|  |  |  |  /--|--|--|--|--|--|--|--|-----|-- f040 810a 	bne.w	10003cd2 <Cy_SysClk_DeepSleepCallback+0x38a>
10003abe:	|  |  |  |  |  |  |  |  |  |  |  |  |     |   6e02      	ldr	r2, [r0, #96]	; 0x60
10003ac0:	|  |  |  |  |  |  |  |  |  |  |  |  |     |   3104      	adds	r1, #4
10003ac2:	|  |  |  |  |  |  |  |  |  |  |  |  |     |   07d2      	lsls	r2, r2, #31
10003ac4:	|  |  |  |  |  |  |  |  |  |  |  |  |     \-- d0eb      	beq.n	10003a9e <Cy_SysClk_DeepSleepCallback+0x156>
10003ac6:	|  |  |  |  +--|--|--|--|--|--|--|--|-------- e104      	b.n	10003cd2 <Cy_SysClk_DeepSleepCallback+0x38a>
10003ac8:	|  |  |  |  |  |  |  |  |  |  |  |  \-------> f64f 50d0 	movw	r0, #64976	; 0xfdd0
10003acc:	|  |  |  |  |  |  |  |  |  |  |  |            f6cf 70ff 	movt	r0, #65535	; 0xffff
10003ad0:	|  |  |  |  |  |  |  |  |  |  |  |            f85a 0000 	ldr.w	r0, [sl, r0]
10003ad4:	|  |  |  |  |  |  |  |  |  |  |  \----------> f8da 0058 	ldr.w	r0, [sl, #88]	; 0x58
10003ad8:	|  |  |  |  |  |  |  |  |  |  |               2102      	movs	r1, #2
10003ada:	|  |  |  |  |  |  |  |  |  |  |               f361 701d 	bfi	r0, r1, #28, #2
10003ade:	|  |  |  |  |  |  |  |  |  |  |               f8ca 0058 	str.w	r0, [sl, #88]	; 0x58
10003ae2:	|  |  |  |  |  |  |  |  |  |  \-------------> 6818      	ldr	r0, [r3, #0]
10003ae4:	|  |  |  |  |  |  |  |  |  |                  f890 203f 	ldrb.w	r2, [r0, #63]	; 0x3f
10003ae8:	|  |  |  |  |  |  |  |  |  |                  2000      	movs	r0, #0
10003aea:	|  |  |  |  |  |  |  |  |  |                  2a00      	cmp	r2, #0
10003aec:	|  |  |  |  |  |  |  |  |  |                  bf08      	it	eq
10003aee:	|  |  |  |  |  |  |  |  |  |                  e8bd 8ff0 	ldmiaeq.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
10003af2:	|  |  |  |  |  |  |  |  |  |                  f64f 5ed4 	movw	lr, #64980	; 0xfdd4
10003af6:	|  |  |  |  |  |  |  |  |  |                  f5aa 77f6 	sub.w	r7, sl, #492	; 0x1ec
10003afa:	|  |  |  |  |  |  |  |  |  |                  f10a 06d0 	add.w	r6, sl, #208	; 0xd0
10003afe:	|  |  |  |  |  |  |  |  |  |                  f04f 0801 	mov.w	r8, #1
10003b02:	|  |  |  |  |  |  |  |  |  |                  f04f 0c02 	mov.w	ip, #2
10003b06:	|  |  |  |  |  |  |  |  |  |                  f6cf 7eff 	movt	lr, #65535	; 0xffff
10003b0a:	|  |  |  |  |  |  |  |  |  |                  2400      	movs	r4, #0
10003b0c:	|  |  |  |  |  |  |  |  |  |           /----- e00e      	b.n	10003b2c <Cy_SysClk_DeepSleepCallback+0x1e4>
10003b0e:	|  |  |  |  |  |  |  |  |  |           |      bf00      	nop
10003b10:	|  |  |  |  |  |  |  |  |  |        /--|----> eb0a 0284 	add.w	r2, sl, r4, lsl #2
10003b14:	|  |  |  |  |  |  |  |  |  |        |  |      f8d2 10d0 	ldr.w	r1, [r2, #208]	; 0xd0
10003b18:	|  |  |  |  |  |  |  |  |  |        |  |      1c65      	adds	r5, r4, #1
10003b1a:	|  |  |  |  |  |  |  |  |  |        |  |      f1b1 3fff 	cmp.w	r1, #4294967295
10003b1e:	|  |  |  |  |  |  |  |  |  |        |  |  /-- dd09      	ble.n	10003b34 <Cy_SysClk_DeepSleepCallback+0x1ec>
10003b20:	|  |  |  |  |  |  |  |  |  |  /-----|--|--|-> 6819      	ldr	r1, [r3, #0]
10003b22:	|  |  |  |  |  |  |  |  |  |  |     |  |  |   462c      	mov	r4, r5
10003b24:	|  |  |  |  |  |  |  |  |  |  |     |  |  |   f891 203f 	ldrb.w	r2, [r1, #63]	; 0x3f
10003b28:	|  |  |  |  |  |  |  |  |  |  |     |  |  |   4295      	cmp	r5, r2
10003b2a:	|  |  |  |  |  |  |  |  |  |  |  /--|--|--|-- d23d      	bcs.n	10003ba8 <Cy_SysClk_DeepSleepCallback+0x260>
10003b2c:	|  |  |  |  |  |  |  |  |  |  |  |  |  \--|-> 4294      	cmp	r4, r2
10003b2e:	|  |  |  |  |  |  |  |  |  |  |  |  +-----|-- d3ef      	bcc.n	10003b10 <Cy_SysClk_DeepSleepCallback+0x1c8>
10003b30:	|  |  |  |  |  |  |  |  |  |  |  |  |     |   be01      	bkpt	0x0001
10003b32:	|  |  |  |  |  |  |  |  |  |  |  |  \-----|-- e7ed      	b.n	10003b10 <Cy_SysClk_DeepSleepCallback+0x1c8>
10003b34:	|  |  |  |  |  |  |  |  |  |  |  |        \-> 6819      	ldr	r1, [r3, #0]
10003b36:	|  |  |  |  |  |  |  |  |  |  |  |            f891 103e 	ldrb.w	r1, [r1, #62]	; 0x3e
10003b3a:	|  |  |  |  |  |  |  |  |  |  |  |            428d      	cmp	r5, r1
10003b3c:	|  |  |  |  |  |  |  |  |  |  |  |        /-- d300      	bcc.n	10003b40 <Cy_SysClk_DeepSleepCallback+0x1f8>
10003b3e:	|  |  |  |  |  |  |  |  |  |  |  |        |   be01      	bkpt	0x0001
10003b40:	|  |  |  |  |  |  |  |  |  |  |  |        \-> f857 1024 	ldr.w	r1, [r7, r4, lsl #2]
10003b44:	|  |  |  |  |  |  |  |  |  |  |  |            f001 0107 	and.w	r1, r1, #7
10003b48:	|  |  |  |  |  |  |  |  |  |  |  |            2902      	cmp	r1, #2
10003b4a:	|  |  |  |  |  |  |  |  |  |  |  |        /-- d005      	beq.n	10003b58 <Cy_SysClk_DeepSleepCallback+0x210>
10003b4c:	|  |  |  |  |  |  |  |  |  |  |  |        |   2904      	cmp	r1, #4
10003b4e:	|  |  |  |  |  |  |  |  |  |  +--|--------|-- d1e7      	bne.n	10003b20 <Cy_SysClk_DeepSleepCallback+0x1d8>
10003b50:	|  |  |  |  |  |  |  |  |  |  |  |        |   f852 100e 	ldr.w	r1, [r2, lr]
10003b54:	|  |  |  |  |  |  |  |  |  |  +--|--------|-- e7e4      	b.n	10003b20 <Cy_SysClk_DeepSleepCallback+0x1d8>
10003b56:	|  |  |  |  |  |  |  |  |  |  |  |        |   bf00      	nop
10003b58:	|  |  |  |  |  |  |  |  |  |  |  |        \-> f856 1024 	ldr.w	r1, [r6, r4, lsl #2]
10003b5c:	|  |  |  |  |  |  |  |  |  |  |  |            f011 5f40 	tst.w	r1, #805306368	; 0x30000000
10003b60:	|  |  |  |  |  |  |  |  |  |  |  |        /-- d006      	beq.n	10003b70 <Cy_SysClk_DeepSleepCallback+0x228>
10003b62:	|  |  |  |  |  |  |  |  |  |  |  |        |   f856 1024 	ldr.w	r1, [r6, r4, lsl #2]
10003b66:	|  |  |  |  |  |  |  |  |  |  |  |        |   f001 5140 	and.w	r1, r1, #805306368	; 0x30000000
10003b6a:	|  |  |  |  |  |  |  |  |  |  |  |        |   f1b1 5f80 	cmp.w	r1, #268435456	; 0x10000000
10003b6e:	|  |  |  |  |  |  |  |  |  |  |  |     /--|-- d106      	bne.n	10003b7e <Cy_SysClk_DeepSleepCallback+0x236>
10003b70:	|  |  |  |  |  |  |  |  |  |  |  |     |  \-> f8b9 1004 	ldrh.w	r1, [r9, #4]
10003b74:	|  |  |  |  |  |  |  |  |  |  |  |     |      fa08 f205 	lsl.w	r2, r8, r5
10003b78:	|  |  |  |  |  |  |  |  |  |  |  |     |      4311      	orrs	r1, r2
10003b7a:	|  |  |  |  |  |  |  |  |  |  |  |     |      f8a9 1004 	strh.w	r1, [r9, #4]
10003b7e:	|  |  |  |  |  |  |  |  |  |  |  |     \----> f856 1024 	ldr.w	r1, [r6, r4, lsl #2]
10003b82:	|  |  |  |  |  |  |  |  |  |  |  |            fa08 f205 	lsl.w	r2, r8, r5
10003b86:	|  |  |  |  |  |  |  |  |  |  |  |            f36c 711d 	bfi	r1, ip, #28, #2
10003b8a:	|  |  |  |  |  |  |  |  |  |  |  |            f846 1024 	str.w	r1, [r6, r4, lsl #2]
10003b8e:	|  |  |  |  |  |  |  |  |  |  |  |            6819      	ldr	r1, [r3, #0]
10003b90:	|  |  |  |  |  |  |  |  |  |  |  |            f891 103e 	ldrb.w	r1, [r1, #62]	; 0x3e
10003b94:	|  |  |  |  |  |  |  |  |  |  |  |            428d      	cmp	r5, r1
10003b96:	|  |  |  |  |  |  |  |  |  |  |  |            bf38      	it	cc
10003b98:	|  |  |  |  |  |  |  |  |  |  |  |            f847 0024 	strcc.w	r0, [r7, r4, lsl #2]
10003b9c:	|  |  |  |  |  |  |  |  |  |  |  |            f8b9 1002 	ldrh.w	r1, [r9, #2]
10003ba0:	|  |  |  |  |  |  |  |  |  |  |  |            4311      	orrs	r1, r2
10003ba2:	|  |  |  |  |  |  |  |  |  |  |  |            f8a9 1002 	strh.w	r1, [r9, #2]
10003ba6:	|  |  |  |  |  |  |  |  |  |  \--|----------- e7bb      	b.n	10003b20 <Cy_SysClk_DeepSleepCallback+0x1d8>
10003ba8:	|  |  |  |  |  |  |  |  |  |     \----------> 2000      	movs	r0, #0
10003baa:	|  |  |  |  |  |  |  |  |  |                  e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
10003bae:	|  |  |  |  |  |  |  |  |  |                  bf00      	nop
10003bb0:	|  |  |  |  |  |  \--|--|--|----------------> 3b01      	subs	r3, #1
10003bb2:	|  |  |  |  |  |     |  |  +----------------- e002      	b.n	10003bba <Cy_SysClk_DeepSleepCallback+0x272>
10003bb4:	|  |  |  |  |  |     \--|--|----------------> 3b02      	subs	r3, #2
10003bb6:	|  |  |  |  |  |        |  +----------------- e000      	b.n	10003bba <Cy_SysClk_DeepSleepCallback+0x272>
10003bb8:	|  |  |  |  |  |        \--|----------------> 3b03      	subs	r3, #3
10003bba:	|  |  |  |  |  |           \----------------> 2b00      	cmp	r3, #0
10003bbc:	|  +--|--|--|--|----------------------------- f000 808f 	beq.w	10003cde <Cy_SysClk_DeepSleepCallback+0x396>
10003bc0:	|  |  |  |  |  \----------------------------> f242 70b8 	movw	r0, #10168	; 0x27b8
10003bc4:	|  |  |  |  |                                 f6c0 0000 	movt	r0, #2048	; 0x800
10003bc8:	|  |  |  |  |                                 6806      	ldr	r6, [r0, #0]
10003bca:	|  |  |  |  |                                 f64f 6810 	movw	r8, #65040	; 0xfe10
10003bce:	|  |  |  |  |                                 2200      	movs	r2, #0
10003bd0:	|  |  |  |  |                                 f04f 0a01 	mov.w	sl, #1
10003bd4:	|  |  |  |  |                                 f6cf 78ff 	movt	r8, #65535	; 0xffff
10003bd8:	|  |  |  |  |                                 f04f 0902 	mov.w	r9, #2
10003bdc:	|  |  |  |  |                                 fa0a fb02 	lsl.w	fp, sl, r2
10003be0:	|  |  |  |  |                                 ea1b 0f05 	tst.w	fp, r5
10003be4:	|  |  |  |  |        /----------------------- d058      	beq.n	10003c98 <Cy_SysClk_DeepSleepCallback+0x350>
10003be6:	|  |  |  |  |        |                        bf00      	nop
10003be8:	|  |  |  |  |        |  /-------------------> f896 403e 	ldrb.w	r4, [r6, #62]	; 0x3e
10003bec:	|  |  |  |  |        |  |                     42a2      	cmp	r2, r4
10003bee:	|  |  |  |  |        |  |                     bf3c      	itt	cc
10003bf0:	|  |  |  |  |        |  |                     eb01 0482 	addcc.w	r4, r1, r2, lsl #2
10003bf4:	|  |  |  |  |        |  |                     f844 9008 	strcc.w	r9, [r4, r8]
10003bf8:	|  |  |  |  |        |  |        /----------- b1a2      	cbz	r2, 10003c24 <Cy_SysClk_DeepSleepCallback+0x2dc>
10003bfa:	|  |  |  |  |        |  |        |            1e55      	subs	r5, r2, #1
10003bfc:	|  |  |  |  |        |  |        |            f501 7488 	add.w	r4, r1, #272	; 0x110
10003c00:	|  |  |  |  |        |  |        |            f896 603f 	ldrb.w	r6, [r6, #63]	; 0x3f
10003c04:	|  |  |  |  |        |  |        |            42b5      	cmp	r5, r6
10003c06:	|  |  |  |  |        |  |        |     /----- d300      	bcc.n	10003c0a <Cy_SysClk_DeepSleepCallback+0x2c2>
10003c08:	|  |  |  |  |        |  |        |     |  /-> be01      	bkpt	0x0001
10003c0a:	|  |  |  |  |        |  |        |     >--|-> f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
10003c0e:	|  |  |  |  |        |  |        |  /--|--|-- b34b      	cbz	r3, 10003c64 <Cy_SysClk_DeepSleepCallback+0x31c>
10003c10:	|  |  |  |  |        |  |        |  |  |  |   f016 0601 	ands.w	r6, r6, #1
10003c14:	|  |  |  |  |        |  |        |  +--|--|-- d126      	bne.n	10003c64 <Cy_SysClk_DeepSleepCallback+0x31c>
10003c16:	|  |  |  |  |        |  |        |  |  |  |   6806      	ldr	r6, [r0, #0]
10003c18:	|  |  |  |  |        |  |        |  |  |  |   3b01      	subs	r3, #1
10003c1a:	|  |  |  |  |        |  |        |  |  |  |   f896 603f 	ldrb.w	r6, [r6, #63]	; 0x3f
10003c1e:	|  |  |  |  |        |  |        |  |  |  |   42b5      	cmp	r5, r6
10003c20:	|  |  |  |  |        |  |        |  |  |  \-- d2f2      	bcs.n	10003c08 <Cy_SysClk_DeepSleepCallback+0x2c0>
10003c22:	|  |  |  |  |        |  |        |  |  \----- e7f2      	b.n	10003c0a <Cy_SysClk_DeepSleepCallback+0x2c2>
10003c24:	|  |  |  |  |        |  |        >--|-------> 6e0c      	ldr	r4, [r1, #96]	; 0x60
10003c26:	|  |  |  |  |        |  |        |  +-------- b1eb      	cbz	r3, 10003c64 <Cy_SysClk_DeepSleepCallback+0x31c>
10003c28:	|  |  |  |  |        |  |        |  |         f014 0401 	ands.w	r4, r4, #1
10003c2c:	|  |  |  |  |        |  |        |  +-------- d11a      	bne.n	10003c64 <Cy_SysClk_DeepSleepCallback+0x31c>
10003c2e:	|  |  |  |  |        |  |        |  |         6e0c      	ldr	r4, [r1, #96]	; 0x60
10003c30:	|  |  |  |  |        |  |        |  |         2b01      	cmp	r3, #1
10003c32:	|  |  |  |  |        |  |        |  |  /----- d015      	beq.n	10003c60 <Cy_SysClk_DeepSleepCallback+0x318>
10003c34:	|  |  |  |  |        |  |        |  |  |      f014 0401 	ands.w	r4, r4, #1
10003c38:	|  |  |  |  |        |  |        |  |  +----- d112      	bne.n	10003c60 <Cy_SysClk_DeepSleepCallback+0x318>
10003c3a:	|  |  |  |  |        |  |        |  |  |      6e0c      	ldr	r4, [r1, #96]	; 0x60
10003c3c:	|  |  |  |  |        |  |        |  |  |      2b02      	cmp	r3, #2
10003c3e:	|  |  |  |  |        |  |  /-----|--|--|----- d03b      	beq.n	10003cb8 <Cy_SysClk_DeepSleepCallback+0x370>
10003c40:	|  |  |  |  |        |  |  |     |  |  |      f014 0401 	ands.w	r4, r4, #1
10003c44:	|  |  |  |  |        |  |  +-----|--|--|----- d138      	bne.n	10003cb8 <Cy_SysClk_DeepSleepCallback+0x370>
10003c46:	|  |  |  |  |        |  |  |     |  |  |      6e0d      	ldr	r5, [r1, #96]	; 0x60
10003c48:	|  |  |  |  |        |  |  |     |  |  |      2b03      	cmp	r3, #3
10003c4a:	|  |  |  |  |        |  |  |     |  |  |      f1a3 0404 	sub.w	r4, r3, #4
10003c4e:	|  |  |  |  |        |  |  |     |  |  |  /-- d003      	beq.n	10003c58 <Cy_SysClk_DeepSleepCallback+0x310>
10003c50:	|  |  |  |  |        |  |  |     |  |  |  |   f015 0301 	ands.w	r3, r5, #1
10003c54:	|  |  |  |  |        |  |  |     |  |  |  |   4623      	mov	r3, r4
10003c56:	|  |  |  |  |        |  |  |     \--|--|--|-- d0e5      	beq.n	10003c24 <Cy_SysClk_DeepSleepCallback+0x2dc>
10003c58:	|  |  |  |  |        |  |  |        |  |  \-> 1c63      	adds	r3, r4, #1
10003c5a:	|  |  |  |  |        |  |  |     /--|--|----- b923      	cbnz	r3, 10003c66 <Cy_SysClk_DeepSleepCallback+0x31e>
10003c5c:	|  |  |  |  |        |  |  |  /--|--|--|----- e030      	b.n	10003cc0 <Cy_SysClk_DeepSleepCallback+0x378>
10003c5e:	|  |  |  |  |        |  |  |  |  |  |  |      bf00      	nop
10003c60:	|  |  |  |  |        |  |  |  |  |  |  \----> 3b01      	subs	r3, #1
10003c62:	|  |  |  |  |        |  |  |  |  |  |         bf00      	nop
10003c64:	|  |  |  |  |        |  |  |  +--|--\-------X b363      	cbz	r3, 10003cc0 <Cy_SysClk_DeepSleepCallback+0x378>
10003c66:	|  |  |  |  |        |  |  |  |  >-----/----X b18a      	cbz	r2, 10003c8c <Cy_SysClk_DeepSleepCallback+0x344>
10003c68:	|  |  |  |  |        |  |  |  |  |     |      f8bc 7004 	ldrh.w	r7, [ip, #4]
10003c6c:	|  |  |  |  |        |  |  |  |  |     |      1e56      	subs	r6, r2, #1
10003c6e:	|  |  |  |  |        |  |  |  |  |     |      f101 05d0 	add.w	r5, r1, #208	; 0xd0
10003c72:	|  |  |  |  |        |  |  |  |  |     |      f855 4026 	ldr.w	r4, [r5, r6, lsl #2]
10003c76:	|  |  |  |  |        |  |  |  |  |     |      ea1b 0f07 	tst.w	fp, r7
10003c7a:	|  |  |  |  |        |  |  |  |  |     |      bf0c      	ite	eq
10003c7c:	|  |  |  |  |        |  |  |  |  |     |      f044 5740 	orreq.w	r7, r4, #805306368	; 0x30000000
10003c80:	|  |  |  |  |        |  |  |  |  |     |      f024 5740 	bicne.w	r7, r4, #805306368	; 0x30000000
10003c84:	|  |  |  |  |        |  |  |  |  |     |      f845 7026 	str.w	r7, [r5, r6, lsl #2]
10003c88:	|  |  |  |  |        |  |  |  |  |     |  /-- e004      	b.n	10003c94 <Cy_SysClk_DeepSleepCallback+0x34c>
10003c8a:	|  |  |  |  |        |  |  |  |  |     |  |   bf00      	nop
10003c8c:	|  |  |  |  |        |  |  |  |  |     \--|-> 6d8f      	ldr	r7, [r1, #88]	; 0x58
10003c8e:	|  |  |  |  |        |  |  |  |  |        |   f047 5740 	orr.w	r7, r7, #805306368	; 0x30000000
10003c92:	|  |  |  |  |        |  |  |  |  |        |   658f      	str	r7, [r1, #88]	; 0x58
10003c94:	|  |  |  |  |        |  |  |  |  |        \-> f04f 0e00 	mov.w	lr, #0
10003c98:	|  |  |  |  |        >--|--|--|--|----------> 6806      	ldr	r6, [r0, #0]
10003c9a:	|  |  |  |  |        |  |  |  |  |            f896 403f 	ldrb.w	r4, [r6, #63]	; 0x3f
10003c9e:	|  |  |  |  |        |  |  |  |  |            42a2      	cmp	r2, r4
10003ca0:	|  +--|--|--|--------|--|--|--|--|----------- d21d      	bcs.n	10003cde <Cy_SysClk_DeepSleepCallback+0x396>
10003ca2:	|  |  |  |  |        |  |  |  |  |        /-> f8bc 5002 	ldrh.w	r5, [ip, #2]
10003ca6:	|  |  |  |  |        |  |  |  |  |        |   3201      	adds	r2, #1
10003ca8:	|  |  |  |  |        |  |  |  |  |        |   fa0a fb02 	lsl.w	fp, sl, r2
10003cac:	|  |  |  |  |        |  |  |  |  |        |   ea1b 0f05 	tst.w	fp, r5
10003cb0:	|  |  |  |  |        |  \--|--|--|--------|-- f47f af9a 	bne.w	10003be8 <Cy_SysClk_DeepSleepCallback+0x2a0>
10003cb4:	|  |  |  |  |        \-----|--|--|--------|-- e7f0      	b.n	10003c98 <Cy_SysClk_DeepSleepCallback+0x350>
10003cb6:	|  |  |  |  |              |  |  |        |   bf00      	nop
10003cb8:	|  |  |  |  |              \--|--|--------|-> 3b02      	subs	r3, #2
10003cba:	|  |  |  |  |                 |  |        |   2b00      	cmp	r3, #0
10003cbc:	|  |  |  |  |                 |  \--------|-- d1d3      	bne.n	10003c66 <Cy_SysClk_DeepSleepCallback+0x31e>
10003cbe:	|  |  |  |  |                 |           |   bf00      	nop
10003cc0:	|  |  |  |  |                 \-----------|-> 2300      	movs	r3, #0
10003cc2:	|  |  |  |  |                             |   6806      	ldr	r6, [r0, #0]
10003cc4:	|  |  |  |  |                             |   f896 403f 	ldrb.w	r4, [r6, #63]	; 0x3f
10003cc8:	|  |  |  |  |                             |   42a2      	cmp	r2, r4
10003cca:	|  |  |  |  |                             \-- d3ea      	bcc.n	10003ca2 <Cy_SysClk_DeepSleepCallback+0x35a>
10003ccc:	|  +--|--|--|-------------------------------- e007      	b.n	10003cde <Cy_SysClk_DeepSleepCallback+0x396>
10003cce:	|  |  |  |  |                                 bf00      	nop
10003cd0:	|  +--|--\--|-------------------------------X b129      	cbz	r1, 10003cde <Cy_SysClk_DeepSleepCallback+0x396>
10003cd2:	|  |  |     \-------------------------------> 6d81      	ldr	r1, [r0, #88]	; 0x58
10003cd4:	|  |  |                                       f041 5140 	orr.w	r1, r1, #805306368	; 0x30000000
10003cd8:	|  |  |                                       6581      	str	r1, [r0, #88]	; 0x58
10003cda:	|  |  \-------------------------------------> f04f 0e00 	mov.w	lr, #0
10003cde:	|  \----------------------------------------> 2000      	movs	r0, #0
10003ce0:	|                                             f88c 0001 	strb.w	r0, [ip, #1]
10003ce4:	|                                             4670      	mov	r0, lr
10003ce6:	\-------------------------------------------> e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	...

10003cec <Cy_SysClk_FllDisable>:
10003cec:	f240 5180 	movw	r1, #1408	; 0x580
10003cf0:	f2c4 0126 	movt	r1, #16422	; 0x4026
10003cf4:	6888      	ldr	r0, [r1, #8]
10003cf6:	2202      	movs	r2, #2
10003cf8:	f362 701d 	bfi	r0, r2, #28, #2
10003cfc:	6088      	str	r0, [r1, #8]
10003cfe:	6808      	ldr	r0, [r1, #0]
10003d00:	f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
10003d04:	6008      	str	r0, [r1, #0]
10003d06:	68c8      	ldr	r0, [r1, #12]
10003d08:	f020 4200 	bic.w	r2, r0, #2147483648	; 0x80000000
10003d0c:	2000      	movs	r0, #0
10003d0e:	60ca      	str	r2, [r1, #12]
10003d10:	4770      	bx	lr
	...

10003d14 <Cy_SysClk_FllEnable>:
10003d14:	          b570      	push	{r4, r5, r6, lr}
10003d16:	          f240 5588 	movw	r5, #1416	; 0x588
10003d1a:	          f2c4 0526 	movt	r5, #16422	; 0x4026
10003d1e:	          6869      	ldr	r1, [r5, #4]
10003d20:	          4604      	mov	r4, r0
10003d22:	          f041 4000 	orr.w	r0, r1, #2147483648	; 0x80000000
10003d26:	          6068      	str	r0, [r5, #4]
10003d28:	          68a8      	ldr	r0, [r5, #8]
10003d2a:	          2c00      	cmp	r4, #0
10003d2c:	          4621      	mov	r1, r4
10003d2e:	          bf18      	it	ne
10003d30:	          2101      	movne	r1, #1
10003d32:	/-------- d015      	beq.n	10003d60 <Cy_SysClk_FllEnable+0x4c>
10003d34:	|         f010 0004 	ands.w	r0, r0, #4
10003d38:	|         4620      	mov	r0, r4
10003d3a:	|  /----- d112      	bne.n	10003d62 <Cy_SysClk_FllEnable+0x4e>
10003d3c:	|  |      4620      	mov	r0, r4
10003d3e:	|  |      bf00      	nop
10003d40:	|  |  /-> 4606      	mov	r6, r0
10003d42:	|  |  |   2001      	movs	r0, #1
10003d44:	|  |  |   f000 fc54 	bl	100045f0 <Cy_SysLib_DelayUs>
10003d48:	|  |  |   68aa      	ldr	r2, [r5, #8]
10003d4a:	|  |  |   1e71      	subs	r1, r6, #1
10003d4c:	|  |  |   bf18      	it	ne
10003d4e:	|  |  |   2101      	movne	r1, #1
10003d50:	|  |  |   2e01      	cmp	r6, #1
10003d52:	|  |  |   f1a6 0001 	sub.w	r0, r6, #1
10003d56:	|  +--|-- d004      	beq.n	10003d62 <Cy_SysClk_FllEnable+0x4e>
10003d58:	|  |  |   f012 0204 	ands.w	r2, r2, #4
10003d5c:	|  |  \-- d0f0      	beq.n	10003d40 <Cy_SysClk_FllEnable+0x2c>
10003d5e:	|  +----- e000      	b.n	10003d62 <Cy_SysClk_FllEnable+0x4e>
10003d60:	\--|----> 4620      	mov	r0, r4
10003d62:	   \----> 682a      	ldr	r2, [r5, #0]
10003d64:	          2302      	movs	r3, #2
10003d66:	          f363 721d 	bfi	r2, r3, #28, #2
10003d6a:	          602a      	str	r2, [r5, #0]
10003d6c:	      /-- b104      	cbz	r4, 10003d70 <Cy_SysClk_FllEnable+0x5c>
10003d6e:	   /--|-- b129      	cbz	r1, 10003d7c <Cy_SysClk_FllEnable+0x68>
10003d70:	   |  \-> f855 1c08 	ldr.w	r1, [r5, #-8]
10003d74:	   |      f041 4100 	orr.w	r1, r1, #2147483648	; 0x80000000
10003d78:	   |      f845 1c08 	str.w	r1, [r5, #-8]
10003d7c:	   \----> 68aa      	ldr	r2, [r5, #8]
10003d7e:	          2800      	cmp	r0, #0
10003d80:	          4601      	mov	r1, r0
10003d82:	          bf18      	it	ne
10003d84:	          2101      	movne	r1, #1
10003d86:	   /----- d010      	beq.n	10003daa <Cy_SysClk_FllEnable+0x96>
10003d88:	   |      f012 0201 	ands.w	r2, r2, #1
10003d8c:	   +----- d10d      	bne.n	10003daa <Cy_SysClk_FllEnable+0x96>
10003d8e:	   |      4246      	negs	r6, r0
10003d90:	   |  /-> 2001      	movs	r0, #1
10003d92:	   |  |   f000 fc2d 	bl	100045f0 <Cy_SysLib_DelayUs>
10003d96:	   |  |   68a8      	ldr	r0, [r5, #8]
10003d98:	   |  |   f1b6 31ff 	subs.w	r1, r6, #4294967295
10003d9c:	   |  |   bf18      	it	ne
10003d9e:	   |  |   2101      	movne	r1, #1
10003da0:	   |  |   3601      	adds	r6, #1
10003da2:	   +--|-- d002      	beq.n	10003daa <Cy_SysClk_FllEnable+0x96>
10003da4:	   |  |   f010 0001 	ands.w	r0, r0, #1
10003da8:	   |  \-- d0f2      	beq.n	10003d90 <Cy_SysClk_FllEnable+0x7c>
10003daa:	   \----> 6828      	ldr	r0, [r5, #0]
10003dac:	      /-- b194      	cbz	r4, 10003dd4 <Cy_SysClk_FllEnable+0xc0>
10003dae:	      +-- b989      	cbnz	r1, 10003dd4 <Cy_SysClk_FllEnable+0xc0>
10003db0:	      |   2102      	movs	r1, #2
10003db2:	      |   f361 701d 	bfi	r0, r1, #28, #2
10003db6:	      |   6028      	str	r0, [r5, #0]
10003db8:	      |   f855 0c08 	ldr.w	r0, [r5, #-8]
10003dbc:	      |   f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
10003dc0:	      |   f845 0c08 	str.w	r0, [r5, #-8]
10003dc4:	      |   6868      	ldr	r0, [r5, #4]
10003dc6:	      |   f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
10003dca:	      |   6068      	str	r0, [r5, #4]
10003dcc:	      |   2002      	movs	r0, #2
10003dce:	      |   f2c0 004a 	movt	r0, #74	; 0x4a
10003dd2:	      |   bd70      	pop	{r4, r5, r6, pc}
10003dd4:	      \-> f040 5040 	orr.w	r0, r0, #805306368	; 0x30000000
10003dd8:	          6028      	str	r0, [r5, #0]
10003dda:	          2000      	movs	r0, #0
10003ddc:	          bd70      	pop	{r4, r5, r6, pc}
	...

10003de0 <Cy_SysClk_FllGetFrequency>:
10003de0:	                         b510      	push	{r4, lr}
10003de2:	                         f240 5230 	movw	r2, #1328	; 0x530
10003de6:	                         f2c4 0226 	movt	r2, #16422	; 0x4026
10003dea:	                         f8d2 c050 	ldr.w	ip, [r2, #80]	; 0x50
10003dee:	                         6d54      	ldr	r4, [r2, #84]	; 0x54
10003df0:	                         6d91      	ldr	r1, [r2, #88]	; 0x58
10003df2:	                         f36f 345f 	bfc	r4, #13, #19
10003df6:	                         6dd0      	ldr	r0, [r2, #92]	; 0x5c
10003df8:	                         6d13      	ldr	r3, [r2, #80]	; 0x50
10003dfa:	                         2c00      	cmp	r4, #0
10003dfc:	                         f04f 0000 	mov.w	r0, #0
10003e00:	/----------------------- f000 807f 	beq.w	10003f02 <Cy_SysClk_FllGetFrequency+0x122>
10003e04:	|                        f001 5140 	and.w	r1, r1, #805306368	; 0x30000000
10003e08:	|                        f1b1 5f00 	cmp.w	r1, #536870912	; 0x20000000
10003e0c:	+----------------------- d079      	beq.n	10003f02 <Cy_SysClk_FllGetFrequency+0x122>
10003e0e:	|                        f1b3 3fff 	cmp.w	r3, #4294967295
10003e12:	|                        bfc8      	it	gt
10003e14:	|                        bd10      	popgt	{r4, pc}
10003e16:	|                        f242 70b8 	movw	r0, #10168	; 0x27b8
10003e1a:	|                        f6c0 0000 	movt	r0, #2048	; 0x800
10003e1e:	|                        6801      	ldr	r1, [r0, #0]
10003e20:	|                        f891 103e 	ldrb.w	r1, [r1, #62]	; 0x3e
10003e24:	|                    /-- b929      	cbnz	r1, 10003e32 <Cy_SysClk_FllGetFrequency+0x52>
10003e26:	|                    |   be01      	bkpt	0x0001
10003e28:	|                    |   6800      	ldr	r0, [r0, #0]
10003e2a:	|                    |   f890 003e 	ldrb.w	r0, [r0, #62]	; 0x3e
10003e2e:	|                    +-- b900      	cbnz	r0, 10003e32 <Cy_SysClk_FllGetFrequency+0x52>
10003e30:	|                    |   be01      	bkpt	0x0001
10003e32:	|                    \-> f64f 6010 	movw	r0, #65040	; 0xfe10
10003e36:	|                        f6cf 70ff 	movt	r0, #65535	; 0xffff
10003e3a:	|                        5810      	ldr	r0, [r2, r0]
10003e3c:	|                        f000 0307 	and.w	r3, r0, #7
10003e40:	|                        2b04      	cmp	r3, #4
10003e42:	|                    /-- d107      	bne.n	10003e54 <Cy_SysClk_FllGetFrequency+0x74>
10003e44:	|                    |   f64f 50d0 	movw	r0, #64976	; 0xfdd0
10003e48:	|                    |   f6cf 70ff 	movt	r0, #65535	; 0xffff
10003e4c:	|                    |   5813      	ldr	r3, [r2, r0]
10003e4e:	|                    |   2008      	movs	r0, #8
10003e50:	|                    |   f360 135f 	bfi	r3, r0, #5, #27
10003e54:	|                    \-> f00c 7080 	and.w	r0, ip, #16777216	; 0x1000000
10003e58:	|                        f36f 4c9f 	bfc	ip, #18, #14
10003e5c:	|                        f5b3 7f88 	cmp.w	r3, #272	; 0x110
10003e60:	|                        f04f 0e00 	mov.w	lr, #0
10003e64:	|                    /-- da10      	bge.n	10003e88 <Cy_SysClk_FllGetFrequency+0xa8>
10003e66:	|              /-----|-- b1db      	cbz	r3, 10003ea0 <Cy_SysClk_FllGetFrequency+0xc0>
10003e68:	|              |     |   2b01      	cmp	r3, #1
10003e6a:	|        /-----|-----|-- d027      	beq.n	10003ebc <Cy_SysClk_FllGetFrequency+0xdc>
10003e6c:	|        |     |     |   2b02      	cmp	r3, #2
10003e6e:	|  /-----|-----|-----|-- d13a      	bne.n	10003ee6 <Cy_SysClk_FllGetFrequency+0x106>
10003e70:	|  |     |     |     |   6811      	ldr	r1, [r2, #0]
10003e72:	|  |     |     |     |   f001 0103 	and.w	r1, r1, #3
10003e76:	|  |     |     |     |   2903      	cmp	r1, #3
10003e78:	|  |  /--|-----|-----|-- d132      	bne.n	10003ee0 <Cy_SysClk_FllGetFrequency+0x100>
10003e7a:	|  |  |  |     |     |   f242 51b0 	movw	r1, #9648	; 0x25b0
10003e7e:	|  |  |  |     |     |   f6c0 0100 	movt	r1, #2048	; 0x800
10003e82:	|  |  |  |     |     |   f8d1 e00c 	ldr.w	lr, [r1, #12]
10003e86:	|  +--|--|-----|-----|-- e02e      	b.n	10003ee6 <Cy_SysClk_FllGetFrequency+0x106>
10003e88:	|  |  |  |     |  /--\-X d010      	beq.n	10003eac <Cy_SysClk_FllGetFrequency+0xcc>
10003e8a:	|  |  |  |     |  |      f240 1111 	movw	r1, #273	; 0x111
10003e8e:	|  |  |  |     |  |      428b      	cmp	r3, r1
10003e90:	|  |  |  |  /--|--|----- d01c      	beq.n	10003ecc <Cy_SysClk_FllGetFrequency+0xec>
10003e92:	|  |  |  |  |  |  |      f240 1113 	movw	r1, #275	; 0x113
10003e96:	|  |  |  |  |  |  |      428b      	cmp	r3, r1
10003e98:	|  +--|--|--|--|--|----- d125      	bne.n	10003ee6 <Cy_SysClk_FllGetFrequency+0x106>
10003e9a:	|  |  |  |  |  |  |      68d1      	ldr	r1, [r2, #12]
10003e9c:	|  |  |  |  |  |  |  /-- e008      	b.n	10003eb0 <Cy_SysClk_FllGetFrequency+0xd0>
10003e9e:	|  |  |  |  |  |  |  |   bf00      	nop
10003ea0:	|  |  |  |  |  \--|--|-> f241 2e00 	movw	lr, #4608	; 0x1200
10003ea4:	|  |  |  |  |     |  |   f2c0 0e7a 	movt	lr, #122	; 0x7a
10003ea8:	|  +--|--|--|-----|--|-- e01d      	b.n	10003ee6 <Cy_SysClk_FllGetFrequency+0x106>
10003eaa:	|  |  |  |  |     |  |   bf00      	nop
10003eac:	|  |  |  |  |     \--|-> f852 1c24 	ldr.w	r1, [r2, #-36]
10003eb0:	|  |  |  |  |        \-> f44f 4200 	mov.w	r2, #32768	; 0x8000
10003eb4:	|  |  |  |  |            ea02 4e11 	and.w	lr, r2, r1, lsr #16
10003eb8:	|  +--|--|--|----------- e015      	b.n	10003ee6 <Cy_SysClk_FllGetFrequency+0x106>
10003eba:	|  |  |  |  |            bf00      	nop
10003ebc:	|  |  |  \--|----------> f242 51b0 	movw	r1, #9648	; 0x25b0
10003ec0:	|  |  |     |            f6c0 0100 	movt	r1, #2048	; 0x800
10003ec4:	|  |  |     |            f8d1 e008 	ldr.w	lr, [r1, #8]
10003ec8:	|  +--|-----|----------- e00d      	b.n	10003ee6 <Cy_SysClk_FllGetFrequency+0x106>
10003eca:	|  |  |     |            bf00      	nop
10003ecc:	|  |  |     \----------> 2110      	movs	r1, #16
10003ece:	|  |  |                  f2c4 0127 	movt	r1, #16423	; 0x4027
10003ed2:	|  |  |                  6809      	ldr	r1, [r1, #0]
10003ed4:	|  |  |                  f44f 4200 	mov.w	r2, #32768	; 0x8000
10003ed8:	|  |  |                  ea02 3e41 	and.w	lr, r2, r1, lsl #13
10003edc:	|  +--|----------------- e003      	b.n	10003ee6 <Cy_SysClk_FllGetFrequency+0x106>
10003ede:	|  |  |                  bf00      	nop
10003ee0:	|  |  \----------------> 6811      	ldr	r1, [r2, #0]
10003ee2:	|  |                     f04f 0e00 	mov.w	lr, #0
10003ee6:	|  \-------------------> 2102      	movs	r1, #2
10003ee8:	|                        2800      	cmp	r0, #0
10003eea:	|                        bf08      	it	eq
10003eec:	|                        2101      	moveq	r1, #1
10003eee:	|                        fba1 2304 	umull	r2, r3, r1, r4
10003ef2:	|                        ea5f 0153 	movs.w	r1, r3, lsr #1
10003ef6:	|                        ea4f 0032 	mov.w	r0, r2, rrx
10003efa:	|                        fbee 010c 	umlal	r0, r1, lr, ip
10003efe:	|                        f7fe fab7 	bl	10002470 <_ll_udiv>
10003f02:	\----------------------> bd10      	pop	{r4, pc}

10003f04 <Cy_SysClk_FllManualConfigure>:
10003f04:	                  /-- b900      	cbnz	r0, 10003f08 <Cy_SysClk_FllManualConfigure+0x4>
10003f06:	                  |   be01      	bkpt	0x0001
10003f08:	                  \-> b510      	push	{r4, lr}
10003f0a:	                      f240 5c8c 	movw	ip, #1420	; 0x58c
10003f0e:	                      f2c4 0c26 	movt	ip, #16422	; 0x4026
10003f12:	                      f85c 2c0c 	ldr.w	r2, [ip, #-12]
10003f16:	                      2a00      	cmp	r2, #0
10003f18:	/-------------------- d462      	bmi.n	10003fe0 <Cy_SysClk_FllManualConfigure+0xdc>
10003f1a:	|                     6802      	ldr	r2, [r0, #0]
10003f1c:	|                     f5b2 2f80 	cmp.w	r2, #262144	; 0x40000
10003f20:	|                 /-- d301      	bcc.n	10003f26 <Cy_SysClk_FllManualConfigure+0x22>
10003f22:	|                 |   be01      	bkpt	0x0001
10003f24:	|                 |   6802      	ldr	r2, [r0, #0]
10003f26:	|                 \-> 79c3      	ldrb	r3, [r0, #7]
10003f28:	|                     f36f 429f 	bfc	r2, #18, #14
10003f2c:	|                     2b00      	cmp	r3, #0
10003f2e:	|                     bf18      	it	ne
10003f30:	|                     f102 7280 	addne.w	r2, r2, #16777216	; 0x1000000
10003f34:	|                     f84c 2c0c 	str.w	r2, [ip, #-12]
10003f38:	|                     8882      	ldrh	r2, [r0, #4]
10003f3a:	|                     f5b2 5f00 	cmp.w	r2, #8192	; 0x2000
10003f3e:	|                 /-- d300      	bcc.n	10003f42 <Cy_SysClk_FllManualConfigure+0x3e>
10003f40:	|                 |   be01      	bkpt	0x0001
10003f42:	|                 \-> 8902      	ldrh	r2, [r0, #8]
10003f44:	|                     f5b2 7f00 	cmp.w	r2, #512	; 0x200
10003f48:	|                 /-- d301      	bcc.n	10003f4e <Cy_SysClk_FllManualConfigure+0x4a>
10003f4a:	|                 |   be01      	bkpt	0x0001
10003f4c:	|                 |   8902      	ldrh	r2, [r0, #8]
10003f4e:	|                 \-> 8883      	ldrh	r3, [r0, #4]
10003f50:	|                     f36f 335f 	bfc	r3, #13, #19
10003f54:	|                     f362 4318 	bfi	r3, r2, #16, #9
10003f58:	|                     f84c 3c08 	str.w	r3, [ip, #-8]
10003f5c:	|                     7a82      	ldrb	r2, [r0, #10]
10003f5e:	|                     2a10      	cmp	r2, #16
10003f60:	|           /-------- d242      	bcs.n	10003fe8 <Cy_SysClk_FllManualConfigure+0xe4>
10003f62:	|           |         7ac2      	ldrb	r2, [r0, #11]
10003f64:	|           |         2a10      	cmp	r2, #16
10003f66:	|     /-----|-------- d243      	bcs.n	10003ff0 <Cy_SysClk_FllManualConfigure+0xec>
10003f68:	|     |     |  /----> 8982      	ldrh	r2, [r0, #12]
10003f6a:	|     |     |  |      f5b2 5f00 	cmp.w	r2, #8192	; 0x2000
10003f6e:	|  /--|-----|--|----- d301      	bcc.n	10003f74 <Cy_SysClk_FllManualConfigure+0x70>
10003f70:	|  |  |  /--|--|----> be01      	bkpt	0x0001
10003f72:	|  |  |  |  |  |      8982      	ldrh	r2, [r0, #12]
10003f74:	|  >--|--|--|--|----> 7a81      	ldrb	r1, [r0, #10]
10003f76:	|  |  |  |  |  |      7ac3      	ldrb	r3, [r0, #11]
10003f78:	|  |  |  |  |  |      f001 010f 	and.w	r1, r1, #15
10003f7c:	|  |  |  |  |  |      f363 1107 	bfi	r1, r3, #4, #4
10003f80:	|  |  |  |  |  |      f64f 7300 	movw	r3, #65280	; 0xff00
10003f84:	|  |  |  |  |  |      7b84      	ldrb	r4, [r0, #14]
10003f86:	|  |  |  |  |  |      f2c0 031f 	movt	r3, #31
10003f8a:	|  |  |  |  |  |      f890 e006 	ldrb.w	lr, [r0, #6]
10003f8e:	|  |  |  |  |  |      ea03 2202 	and.w	r2, r3, r2, lsl #8
10003f92:	|  |  |  |  |  |      4411      	add	r1, r2
10003f94:	|  |  |  |  |  |      f004 0203 	and.w	r2, r4, #3
10003f98:	|  |  |  |  |  |      ea41 7102 	orr.w	r1, r1, r2, lsl #28
10003f9c:	|  |  |  |  |  |      f1be 0f05 	cmp.w	lr, #5
10003fa0:	|  |  |  |  |  |      f84c 1c04 	str.w	r1, [ip, #-4]
10003fa4:	|  |  |  |  |  |  /-- d300      	bcc.n	10003fa8 <Cy_SysClk_FllManualConfigure+0xa4>
10003fa6:	|  |  |  |  |  |  |   be01      	bkpt	0x0001
10003fa8:	|  |  |  |  |  |  \-> 8a02      	ldrh	r2, [r0, #16]
10003faa:	|  |  |  |  |  |      2300      	movs	r3, #0
10003fac:	|  |  |  |  |  |      f5b2 7f00 	cmp.w	r2, #512	; 0x200
10003fb0:	|  |  |  |  |  |      f2c0 13ff 	movt	r3, #511	; 0x1ff
10003fb4:	|  |  |  |  |  |  /-- d301      	bcc.n	10003fba <Cy_SysClk_FllManualConfigure+0xb6>
10003fb6:	|  |  |  |  |  |  |   be01      	bkpt	0x0001
10003fb8:	|  |  |  |  |  |  |   8a02      	ldrh	r2, [r0, #16]
10003fba:	|  |  |  |  |  |  \-> f8dc 1000 	ldr.w	r1, [ip]
10003fbe:	|  |  |  |  |  |      7980      	ldrb	r0, [r0, #6]
10003fc0:	|  |  |  |  |  |      f360 210a 	bfi	r1, r0, #8, #3
10003fc4:	|  |  |  |  |  |      f8cc 1000 	str.w	r1, [ip]
10003fc8:	|  |  |  |  |  |      f8dc 0000 	ldr.w	r0, [ip]
10003fcc:	|  |  |  |  |  |      ea03 4102 	and.w	r1, r3, r2, lsl #16
10003fd0:	|  |  |  |  |  |      f36f 4018 	bfc	r0, #16, #9
10003fd4:	|  |  |  |  |  |      4408      	add	r0, r1
10003fd6:	|  |  |  |  |  |      f8cc 0000 	str.w	r0, [ip]
10003fda:	|  |  |  |  |  |      2000      	movs	r0, #0
10003fdc:	|  |  |  |  |  |      bd10      	pop	{r4, pc}
10003fde:	|  |  |  |  |  |      bf00      	nop
10003fe0:	\--|--|--|--|--|----> 2003      	movs	r0, #3
10003fe2:	   |  |  |  |  |      f2c0 004a 	movt	r0, #74	; 0x4a
10003fe6:	   |  |  |  |  |      bd10      	pop	{r4, pc}
10003fe8:	   |  |  |  \--|----> be01      	bkpt	0x0001
10003fea:	   |  |  |     |      7ac2      	ldrb	r2, [r0, #11]
10003fec:	   |  |  |     |      2a10      	cmp	r2, #16
10003fee:	   |  |  |     \----- d3bb      	bcc.n	10003f68 <Cy_SysClk_FllManualConfigure+0x64>
10003ff0:	   |  \--|----------> be01      	bkpt	0x0001
10003ff2:	   |     |            8982      	ldrh	r2, [r0, #12]
10003ff4:	   |     |            f5b2 5f00 	cmp.w	r2, #8192	; 0x2000
10003ff8:	   |     \----------- d2ba      	bcs.n	10003f70 <Cy_SysClk_FllManualConfigure+0x6c>
10003ffa:	   \----------------- e7bb      	b.n	10003f74 <Cy_SysClk_FllManualConfigure+0x70>

10003ffc <Cy_SysClk_IloDisable>:
10003ffc:	f240 500c 	movw	r0, #1292	; 0x50c
10004000:	f64f 4174 	movw	r1, #64628	; 0xfc74
10004004:	f2c4 0026 	movt	r0, #16422	; 0x4026
10004008:	f6cf 71ff 	movt	r1, #65535	; 0xffff
1000400c:	5841      	ldr	r1, [r0, r1]
1000400e:	07c9      	lsls	r1, r1, #31
10004010:	bf1e      	ittt	ne
10004012:	2003      	movne	r0, #3
10004014:	f2c0 004a 	movtne	r0, #74	; 0x4a
10004018:	4770      	bxne	lr
1000401a:	6801      	ldr	r1, [r0, #0]
1000401c:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
10004020:	6001      	str	r1, [r0, #0]
10004022:	2000      	movs	r0, #0
10004024:	4770      	bx	lr
	...

10004028 <Cy_SysClk_IloEnable>:
10004028:	f240 500c 	movw	r0, #1292	; 0x50c
1000402c:	f2c4 0026 	movt	r0, #16422	; 0x4026
10004030:	6801      	ldr	r1, [r0, #0]
10004032:	f041 4100 	orr.w	r1, r1, #2147483648	; 0x80000000
10004036:	6001      	str	r1, [r0, #0]
10004038:	4770      	bx	lr
	...

1000403c <Cy_SysClk_IloHibernateOn>:
1000403c:	f240 510c 	movw	r1, #1292	; 0x50c
10004040:	f2c4 0126 	movt	r1, #16422	; 0x4026
10004044:	680a      	ldr	r2, [r1, #0]
10004046:	f022 0201 	bic.w	r2, r2, #1
1000404a:	4410      	add	r0, r2
1000404c:	6008      	str	r0, [r1, #0]
1000404e:	4770      	bx	lr

10004050 <Cy_SysClk_PeriphAssignDivider>:
10004050:	          b580      	push	{r7, lr}
10004052:	          4684      	mov	ip, r0
10004054:	          2001      	movs	r0, #1
10004056:	          2903      	cmp	r1, #3
10004058:	          f2c0 004a 	movt	r0, #74	; 0x4a
1000405c:	/-------- d819      	bhi.n	10004092 <Cy_SysClk_PeriphAssignDivider+0x42>
1000405e:	|         f242 73b8 	movw	r3, #10168	; 0x27b8
10004062:	|         f6c0 0300 	movt	r3, #2048	; 0x800
10004066:	|         f8d3 e000 	ldr.w	lr, [r3]
1000406a:	|         f89e 3042 	ldrb.w	r3, [lr, #66]	; 0x42
1000406e:	|         4563      	cmp	r3, ip
10004070:	|         bf98      	it	ls
10004072:	|         bd80      	popls	{r7, pc}
10004074:	|     /-- b909      	cbnz	r1, 1000407a <Cy_SysClk_PeriphAssignDivider+0x2a>
10004076:	|     |   2a08      	cmp	r2, #8
10004078:	|  /--|-- d30c      	bcc.n	10004094 <Cy_SysClk_PeriphAssignDivider+0x44>
1000407a:	|  |  \-> 2901      	cmp	r1, #1
1000407c:	|  |  /-- d101      	bne.n	10004082 <Cy_SysClk_PeriphAssignDivider+0x32>
1000407e:	|  |  |   2a10      	cmp	r2, #16
10004080:	|  +--|-- d308      	bcc.n	10004094 <Cy_SysClk_PeriphAssignDivider+0x44>
10004082:	|  |  \-> 2902      	cmp	r1, #2
10004084:	|  |  /-- d101      	bne.n	1000408a <Cy_SysClk_PeriphAssignDivider+0x3a>
10004086:	|  |  |   2a04      	cmp	r2, #4
10004088:	|  +--|-- d304      	bcc.n	10004094 <Cy_SysClk_PeriphAssignDivider+0x44>
1000408a:	|  |  \-> 2903      	cmp	r1, #3
1000408c:	|  |      bf08      	it	eq
1000408e:	|  |      2a00      	cmpeq	r2, #0
10004090:	|  +----- d000      	beq.n	10004094 <Cy_SysClk_PeriphAssignDivider+0x44>
10004092:	\--|----> bd80      	pop	{r7, pc}
10004094:	   \----> f89e 0075 	ldrb.w	r0, [lr, #117]	; 0x75
10004098:	          f89e 3074 	ldrb.w	r3, [lr, #116]	; 0x74
1000409c:	          fa01 f000 	lsl.w	r0, r1, r0
100040a0:	          ea03 0102 	and.w	r1, r3, r2
100040a4:	          f8de 2008 	ldr.w	r2, [lr, #8]
100040a8:	          4308      	orrs	r0, r1
100040aa:	          eb02 018c 	add.w	r1, r2, ip, lsl #2
100040ae:	          f8c1 0c00 	str.w	r0, [r1, #3072]	; 0xc00
100040b2:	          2000      	movs	r0, #0
100040b4:	          bd80      	pop	{r7, pc}
	...

100040b8 <Cy_SysClk_PeriphDisableDivider>:
100040b8:	       4602      	mov	r2, r0
100040ba:	       2803      	cmp	r0, #3
100040bc:	       f240 0001 	movw	r0, #1
100040c0:	       f2c0 004a 	movt	r0, #74	; 0x4a
100040c4:	       bf88      	it	hi
100040c6:	       4770      	bxhi	lr
100040c8:	   /-- b90a      	cbnz	r2, 100040ce <Cy_SysClk_PeriphDisableDivider+0x16>
100040ca:	   |   2908      	cmp	r1, #8
100040cc:	/--|-- d30c      	bcc.n	100040e8 <Cy_SysClk_PeriphDisableDivider+0x30>
100040ce:	|  \-> 2a01      	cmp	r2, #1
100040d0:	|  /-- d101      	bne.n	100040d6 <Cy_SysClk_PeriphDisableDivider+0x1e>
100040d2:	|  |   2910      	cmp	r1, #16
100040d4:	+--|-- d308      	bcc.n	100040e8 <Cy_SysClk_PeriphDisableDivider+0x30>
100040d6:	|  \-> 2a02      	cmp	r2, #2
100040d8:	|  /-- d101      	bne.n	100040de <Cy_SysClk_PeriphDisableDivider+0x26>
100040da:	|  |   2904      	cmp	r1, #4
100040dc:	+--|-- d304      	bcc.n	100040e8 <Cy_SysClk_PeriphDisableDivider+0x30>
100040de:	|  \-> 2a03      	cmp	r2, #3
100040e0:	|      bf08      	it	eq
100040e2:	|      2900      	cmpeq	r1, #0
100040e4:	+----- d000      	beq.n	100040e8 <Cy_SysClk_PeriphDisableDivider+0x30>
100040e6:	|      4770      	bx	lr
100040e8:	\----> f242 70b8 	movw	r0, #10168	; 0x27b8
100040ec:	       f6c0 0000 	movt	r0, #2048	; 0x800
100040f0:	       6800      	ldr	r0, [r0, #0]
100040f2:	       f890 c075 	ldrb.w	ip, [r0, #117]	; 0x75
100040f6:	       f890 3074 	ldrb.w	r3, [r0, #116]	; 0x74
100040fa:	       fa02 f20c 	lsl.w	r2, r2, ip
100040fe:	       4019      	ands	r1, r3
10004100:	       4311      	orrs	r1, r2
10004102:	       6880      	ldr	r0, [r0, #8]
10004104:	       f041 4180 	orr.w	r1, r1, #1073741824	; 0x40000000
10004108:	       f8c0 1400 	str.w	r1, [r0, #1024]	; 0x400
1000410c:	       2000      	movs	r0, #0
1000410e:	       4770      	bx	lr

10004110 <Cy_SysClk_PeriphEnableDivider>:
10004110:	          2201      	movs	r2, #1
10004112:	          2803      	cmp	r0, #3
10004114:	          f2c0 024a 	movt	r2, #74	; 0x4a
10004118:	/-------- d80e      	bhi.n	10004138 <Cy_SysClk_PeriphEnableDivider+0x28>
1000411a:	|     /-- b908      	cbnz	r0, 10004120 <Cy_SysClk_PeriphEnableDivider+0x10>
1000411c:	|     |   2908      	cmp	r1, #8
1000411e:	|  /--|-- d30d      	bcc.n	1000413c <Cy_SysClk_PeriphEnableDivider+0x2c>
10004120:	|  |  \-> 2801      	cmp	r0, #1
10004122:	|  |  /-- d101      	bne.n	10004128 <Cy_SysClk_PeriphEnableDivider+0x18>
10004124:	|  |  |   2910      	cmp	r1, #16
10004126:	|  +--|-- d309      	bcc.n	1000413c <Cy_SysClk_PeriphEnableDivider+0x2c>
10004128:	|  |  \-> 2802      	cmp	r0, #2
1000412a:	|  |  /-- d101      	bne.n	10004130 <Cy_SysClk_PeriphEnableDivider+0x20>
1000412c:	|  |  |   2904      	cmp	r1, #4
1000412e:	|  +--|-- d305      	bcc.n	1000413c <Cy_SysClk_PeriphEnableDivider+0x2c>
10004130:	|  |  \-> 2803      	cmp	r0, #3
10004132:	|  |      bf08      	it	eq
10004134:	|  |      2900      	cmpeq	r1, #0
10004136:	|  +----- d001      	beq.n	1000413c <Cy_SysClk_PeriphEnableDivider+0x2c>
10004138:	\--|----> 4610      	mov	r0, r2
1000413a:	   |      4770      	bx	lr
1000413c:	   \----> b510      	push	{r4, lr}
1000413e:	          f242 72b8 	movw	r2, #10168	; 0x27b8
10004142:	          f6c0 0200 	movt	r2, #2048	; 0x800
10004146:	          6812      	ldr	r2, [r2, #0]
10004148:	          2303      	movs	r3, #3
1000414a:	          f892 c077 	ldrb.w	ip, [r2, #119]	; 0x77
1000414e:	          f892 e076 	ldrb.w	lr, [r2, #118]	; 0x76
10004152:	          fa03 fc0c 	lsl.w	ip, r3, ip
10004156:	          f892 3074 	ldrb.w	r3, [r2, #116]	; 0x74
1000415a:	          f892 4075 	ldrb.w	r4, [r2, #117]	; 0x75
1000415e:	          4019      	ands	r1, r3
10004160:	          fa03 fe0e 	lsl.w	lr, r3, lr
10004164:	          ea41 010c 	orr.w	r1, r1, ip
10004168:	          40a0      	lsls	r0, r4
1000416a:	          ea41 010e 	orr.w	r1, r1, lr
1000416e:	          4308      	orrs	r0, r1
10004170:	          6891      	ldr	r1, [r2, #8]
10004172:	          f040 4000 	orr.w	r0, r0, #2147483648	; 0x80000000
10004176:	          f8c1 0400 	str.w	r0, [r1, #1024]	; 0x400
1000417a:	          f8d1 0400 	ldr.w	r0, [r1, #1024]	; 0x400
1000417e:	          2200      	movs	r2, #0
10004180:	          e8bd 4010 	ldmia.w	sp!, {r4, lr}
10004184:	          4610      	mov	r0, r2
10004186:	          4770      	bx	lr

10004188 <Cy_SysClk_PeriphSetDivider>:
10004188:	          4603      	mov	r3, r0
1000418a:	          2801      	cmp	r0, #1
1000418c:	          f240 0001 	movw	r0, #1
10004190:	          f2c0 004a 	movt	r0, #74	; 0x4a
10004194:	      /-- d006      	beq.n	100041a4 <Cy_SysClk_PeriphSetDivider+0x1c>
10004196:	   /--|-- b91b      	cbnz	r3, 100041a0 <Cy_SysClk_PeriphSetDivider+0x18>
10004198:	   |  |   2907      	cmp	r1, #7
1000419a:	   |  |   bf98      	it	ls
1000419c:	   |  |   2aff      	cmpls	r2, #255	; 0xff
1000419e:	/--|--|-- d919      	bls.n	100041d4 <Cy_SysClk_PeriphSetDivider+0x4c>
100041a0:	|  >--|-> 4770      	bx	lr
100041a2:	|  |  |   bf00      	nop
100041a4:	|  |  \-> 290f      	cmp	r1, #15
100041a6:	|  \----- d8fb      	bhi.n	100041a0 <Cy_SysClk_PeriphSetDivider+0x18>
100041a8:	|         2300      	movs	r3, #0
100041aa:	|         ebb3 4f12 	cmp.w	r3, r2, lsr #16
100041ae:	|         bf18      	it	ne
100041b0:	|         4770      	bxne	lr
100041b2:	|         f242 70b8 	movw	r0, #10168	; 0x27b8
100041b6:	|         f6c0 0000 	movt	r0, #2048	; 0x800
100041ba:	|         6800      	ldr	r0, [r0, #0]
100041bc:	|         6883      	ldr	r3, [r0, #8]
100041be:	|         f8b0 007a 	ldrh.w	r0, [r0, #122]	; 0x7a
100041c2:	|         4418      	add	r0, r3
100041c4:	|         f850 3021 	ldr.w	r3, [r0, r1, lsl #2]
100041c8:	|         f362 2317 	bfi	r3, r2, #8, #16
100041cc:	|         f840 3021 	str.w	r3, [r0, r1, lsl #2]
100041d0:	|         2000      	movs	r0, #0
100041d2:	|         4770      	bx	lr
100041d4:	\-------> f242 70b8 	movw	r0, #10168	; 0x27b8
100041d8:	          f6c0 0000 	movt	r0, #2048	; 0x800
100041dc:	          6800      	ldr	r0, [r0, #0]
100041de:	          6883      	ldr	r3, [r0, #8]
100041e0:	          f8b0 0078 	ldrh.w	r0, [r0, #120]	; 0x78
100041e4:	          4418      	add	r0, r3
100041e6:	          f850 3021 	ldr.w	r3, [r0, r1, lsl #2]
100041ea:	          f362 230f 	bfi	r3, r2, #8, #8
100041ee:	          f840 3021 	str.w	r3, [r0, r1, lsl #2]
100041f2:	          2000      	movs	r0, #0
100041f4:	          4770      	bx	lr
	...

100041f8 <Cy_SysClk_PllDisable>:
100041f8:	    b5b0      	push	{r4, r5, r7, lr}
100041fa:	    f242 71b8 	movw	r1, #10168	; 0x27b8
100041fe:	    f6c0 0100 	movt	r1, #2048	; 0x800
10004202:	    6809      	ldr	r1, [r1, #0]
10004204:	    1e44      	subs	r4, r0, #1
10004206:	    f891 103f 	ldrb.w	r1, [r1, #63]	; 0x3f
1000420a:	    428c      	cmp	r4, r1
1000420c:	/-- d216      	bcs.n	1000423c <Cy_SysClk_PllDisable+0x44>
1000420e:	|   f240 6500 	movw	r5, #1536	; 0x600
10004212:	|   f2c4 0526 	movt	r5, #16422	; 0x4026
10004216:	|   f855 0024 	ldr.w	r0, [r5, r4, lsl #2]
1000421a:	|   2102      	movs	r1, #2
1000421c:	|   f361 701d 	bfi	r0, r1, #28, #2
10004220:	|   f845 0024 	str.w	r0, [r5, r4, lsl #2]
10004224:	|   2001      	movs	r0, #1
10004226:	|   f000 f9e3 	bl	100045f0 <Cy_SysLib_DelayUs>
1000422a:	|   f855 0024 	ldr.w	r0, [r5, r4, lsl #2]
1000422e:	|   f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
10004232:	|   f845 0024 	str.w	r0, [r5, r4, lsl #2]
10004236:	|   2000      	movs	r0, #0
10004238:	|   bdb0      	pop	{r4, r5, r7, pc}
1000423a:	|   bf00      	nop
1000423c:	\-> 2001      	movs	r0, #1
1000423e:	    f2c0 004a 	movt	r0, #74	; 0x4a
10004242:	    bdb0      	pop	{r4, r5, r7, pc}

10004244 <Cy_SysClk_PllEnable>:
10004244:	          e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
10004248:	          b081      	sub	sp, #4
1000424a:	          460d      	mov	r5, r1
1000424c:	          f242 71b8 	movw	r1, #10168	; 0x27b8
10004250:	          f6c0 0100 	movt	r1, #2048	; 0x800
10004254:	          6809      	ldr	r1, [r1, #0]
10004256:	          1e46      	subs	r6, r0, #1
10004258:	          f891 103f 	ldrb.w	r1, [r1, #63]	; 0x3f
1000425c:	          f240 0901 	movw	r9, #1
10004260:	          428e      	cmp	r6, r1
10004262:	          f2c0 094a 	movt	r9, #74	; 0x4a
10004266:	/-------- d239      	bcs.n	100042dc <Cy_SysClk_PllEnable+0x98>
10004268:	|         f240 6800 	movw	r8, #1536	; 0x600
1000426c:	|         f2c4 0826 	movt	r8, #16422	; 0x4026
10004270:	|         f858 0026 	ldr.w	r0, [r8, r6, lsl #2]
10004274:	|         f108 0740 	add.w	r7, r8, #64	; 0x40
10004278:	|         f040 4000 	orr.w	r0, r0, #2147483648	; 0x80000000
1000427c:	|         f848 0026 	str.w	r0, [r8, r6, lsl #2]
10004280:	|         f857 1026 	ldr.w	r1, [r7, r6, lsl #2]
10004284:	|         2d00      	cmp	r5, #0
10004286:	|         4628      	mov	r0, r5
10004288:	|         bf18      	it	ne
1000428a:	|         2001      	movne	r0, #1
1000428c:	|  /----- d012      	beq.n	100042b4 <Cy_SysClk_PllEnable+0x70>
1000428e:	|  |      f011 0101 	ands.w	r1, r1, #1
10004292:	|  +----- d10f      	bne.n	100042b4 <Cy_SysClk_PllEnable+0x70>
10004294:	|  |      426c      	negs	r4, r5
10004296:	|  |      bf00      	nop
10004298:	|  |  /-> 2001      	movs	r0, #1
1000429a:	|  |  |   f000 f9a9 	bl	100045f0 <Cy_SysLib_DelayUs>
1000429e:	|  |  |   f857 1026 	ldr.w	r1, [r7, r6, lsl #2]
100042a2:	|  |  |   f1b4 30ff 	subs.w	r0, r4, #4294967295
100042a6:	|  |  |   bf18      	it	ne
100042a8:	|  |  |   2001      	movne	r0, #1
100042aa:	|  |  |   3401      	adds	r4, #1
100042ac:	|  +--|-- d002      	beq.n	100042b4 <Cy_SysClk_PllEnable+0x70>
100042ae:	|  |  |   f011 0101 	ands.w	r1, r1, #1
100042b2:	|  |  \-- d0f1      	beq.n	10004298 <Cy_SysClk_PllEnable+0x54>
100042b4:	|  \----> f858 1026 	ldr.w	r1, [r8, r6, lsl #2]
100042b8:	|     /-- b1a5      	cbz	r5, 100042e4 <Cy_SysClk_PllEnable+0xa0>
100042ba:	|     +-- b998      	cbnz	r0, 100042e4 <Cy_SysClk_PllEnable+0xa0>
100042bc:	|     |   2002      	movs	r0, #2
100042be:	|     |   f360 711d 	bfi	r1, r0, #28, #2
100042c2:	|     |   2001      	movs	r0, #1
100042c4:	|     |   f848 1026 	str.w	r1, [r8, r6, lsl #2]
100042c8:	|     |   f000 f992 	bl	100045f0 <Cy_SysLib_DelayUs>
100042cc:	|     |   f858 0026 	ldr.w	r0, [r8, r6, lsl #2]
100042d0:	|     |   f109 0901 	add.w	r9, r9, #1
100042d4:	|     |   f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
100042d8:	|     |   f848 0026 	str.w	r0, [r8, r6, lsl #2]
100042dc:	\-----|-> 4648      	mov	r0, r9
100042de:	      |   b001      	add	sp, #4
100042e0:	      |   e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
100042e4:	      \-> f001 5040 	and.w	r0, r1, #805306368	; 0x30000000
100042e8:	          f1b0 5f00 	cmp.w	r0, #536870912	; 0x20000000
100042ec:	      /-- d10c      	bne.n	10004308 <Cy_SysClk_PllEnable+0xc4>
100042ee:	      |   f858 0026 	ldr.w	r0, [r8, r6, lsl #2]
100042f2:	      |   f04f 0900 	mov.w	r9, #0
100042f6:	      |   f040 5040 	orr.w	r0, r0, #805306368	; 0x30000000
100042fa:	      |   f848 0026 	str.w	r0, [r8, r6, lsl #2]
100042fe:	      |   4648      	mov	r0, r9
10004300:	      |   b001      	add	sp, #4
10004302:	      |   e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
10004306:	      |   bf00      	nop
10004308:	      \-> f04f 0900 	mov.w	r9, #0
1000430c:	          4648      	mov	r0, r9
1000430e:	          b001      	add	sp, #4
10004310:	          e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}

10004314 <Cy_SysClk_PllGetFrequency>:
10004314:	                      b570      	push	{r4, r5, r6, lr}
10004316:	                      2800      	cmp	r0, #0
10004318:	                      f04f 0100 	mov.w	r1, #0
1000431c:	            /-------- d03c      	beq.n	10004398 <Cy_SysClk_PllGetFrequency+0x84>
1000431e:	            |         f242 74b8 	movw	r4, #10168	; 0x27b8
10004322:	            |         f6c0 0400 	movt	r4, #2048	; 0x800
10004326:	            |         6823      	ldr	r3, [r4, #0]
10004328:	            |         f893 203f 	ldrb.w	r2, [r3, #63]	; 0x3f
1000432c:	            +-------- b3a2      	cbz	r2, 10004398 <Cy_SysClk_PllGetFrequency+0x84>
1000432e:	            |         f893 103e 	ldrb.w	r1, [r3, #62]	; 0x3e
10004332:	            |         4281      	cmp	r1, r0
10004334:	            |     /-- d803      	bhi.n	1000433e <Cy_SysClk_PllGetFrequency+0x2a>
10004336:	            |     |   be01      	bkpt	0x0001
10004338:	            |     |   6821      	ldr	r1, [r4, #0]
1000433a:	            |     |   f891 203f 	ldrb.w	r2, [r1, #63]	; 0x3f
1000433e:	            |     \-> 4282      	cmp	r2, r0
10004340:	            |     /-- d202      	bcs.n	10004348 <Cy_SysClk_PllGetFrequency+0x34>
10004342:	            |     |   2100      	movs	r1, #0
10004344:	            |     |   4608      	mov	r0, r1
10004346:	            |     |   bd70      	pop	{r4, r5, r6, pc}
10004348:	            |     \-> 1e41      	subs	r1, r0, #1
1000434a:	            |         f240 5e30 	movw	lr, #1328	; 0x530
1000434e:	            |         4291      	cmp	r1, r2
10004350:	            |         f2c4 0e26 	movt	lr, #16422	; 0x4026
10004354:	            |  /----- d210      	bcs.n	10004378 <Cy_SysClk_PllGetFrequency+0x64>
10004356:	            |  |      eb0e 0281 	add.w	r2, lr, r1, lsl #2
1000435a:	            |  |      f8d2 50d0 	ldr.w	r5, [r2, #208]	; 0xd0
1000435e:	            |  |      f005 0c7f 	and.w	ip, r5, #127	; 0x7f
10004362:	            |  |      f3c5 2304 	ubfx	r3, r5, #8, #5
10004366:	            |  |      f3c5 4204 	ubfx	r2, r5, #16, #5
1000436a:	            |  |      f005 5540 	and.w	r5, r5, #805306368	; 0x30000000
1000436e:	            |  |      f1b5 5500 	subs.w	r5, r5, #536870912	; 0x20000000
10004372:	            |  |      bf18      	it	ne
10004374:	            |  |      2501      	movne	r5, #1
10004376:	            |  |  /-- e005      	b.n	10004384 <Cy_SysClk_PllGetFrequency+0x70>
10004378:	            |  \--|-> 2200      	movs	r2, #0
1000437a:	            |     |   2501      	movs	r5, #1
1000437c:	            |     |   2300      	movs	r3, #0
1000437e:	            |     |   f04f 0c00 	mov.w	ip, #0
10004382:	            |     |   be01      	bkpt	0x0001
10004384:	            |     \-> eb0e 0181 	add.w	r1, lr, r1, lsl #2
10004388:	            |         f8d1 60d0 	ldr.w	r6, [r1, #208]	; 0xd0
1000438c:	            |         2a00      	cmp	r2, #0
1000438e:	            |         f04f 0100 	mov.w	r1, #0
10004392:	            |         bf18      	it	ne
10004394:	            |         2b00      	cmpne	r3, #0
10004396:	            |     /-- d101      	bne.n	1000439c <Cy_SysClk_PllGetFrequency+0x88>
10004398:	            >-----|-> 4608      	mov	r0, r1
1000439a:	            |     |   bd70      	pop	{r4, r5, r6, pc}
1000439c:	            |     \-> 2d00      	cmp	r5, #0
1000439e:	            +-------- d0fb      	beq.n	10004398 <Cy_SysClk_PllGetFrequency+0x84>
100043a0:	            |         f1b6 3fff 	cmp.w	r6, #4294967295
100043a4:	            \-------- dcf8      	bgt.n	10004398 <Cy_SysClk_PllGetFrequency+0x84>
100043a6:	                      6821      	ldr	r1, [r4, #0]
100043a8:	                      f891 103e 	ldrb.w	r1, [r1, #62]	; 0x3e
100043ac:	                      4281      	cmp	r1, r0
100043ae:	                  /-- d803      	bhi.n	100043b8 <Cy_SysClk_PllGetFrequency+0xa4>
100043b0:	                  |   be01      	bkpt	0x0001
100043b2:	                  |   6821      	ldr	r1, [r4, #0]
100043b4:	                  |   f891 103e 	ldrb.w	r1, [r1, #62]	; 0x3e
100043b8:	                  \-> 4281      	cmp	r1, r0
100043ba:	                  /-- d800      	bhi.n	100043be <Cy_SysClk_PllGetFrequency+0xaa>
100043bc:	                  |   be01      	bkpt	0x0001
100043be:	                  \-> eb0e 0180 	add.w	r1, lr, r0, lsl #2
100043c2:	                      f64f 6010 	movw	r0, #65040	; 0xfe10
100043c6:	                      f6cf 70ff 	movt	r0, #65535	; 0xffff
100043ca:	                      5808      	ldr	r0, [r1, r0]
100043cc:	                      f000 0007 	and.w	r0, r0, #7
100043d0:	                      2804      	cmp	r0, #4
100043d2:	                  /-- d107      	bne.n	100043e4 <Cy_SysClk_PllGetFrequency+0xd0>
100043d4:	                  |   f64f 50d0 	movw	r0, #64976	; 0xfdd0
100043d8:	                  |   f6cf 70ff 	movt	r0, #65535	; 0xffff
100043dc:	                  |   5808      	ldr	r0, [r1, r0]
100043de:	                  |   2108      	movs	r1, #8
100043e0:	                  |   f361 105f 	bfi	r0, r1, #5, #27
100043e4:	                  \-> f5b0 7f88 	cmp.w	r0, #272	; 0x110
100043e8:	                      f04f 0400 	mov.w	r4, #0
100043ec:	                  /-- da10      	bge.n	10004410 <Cy_SysClk_PllGetFrequency+0xfc>
100043ee:	         /--------|-- b1d8      	cbz	r0, 10004428 <Cy_SysClk_PllGetFrequency+0x114>
100043f0:	         |        |   2801      	cmp	r0, #1
100043f2:	      /--|--------|-- d027      	beq.n	10004444 <Cy_SysClk_PllGetFrequency+0x130>
100043f4:	      |  |        |   2802      	cmp	r0, #2
100043f6:	/-----|--|--------|-- d138      	bne.n	1000446a <Cy_SysClk_PllGetFrequency+0x156>
100043f8:	|     |  |        |   f8de 0000 	ldr.w	r0, [lr]
100043fc:	|     |  |        |   f000 0003 	and.w	r0, r0, #3
10004400:	|     |  |        |   2803      	cmp	r0, #3
10004402:	|  /--|--|--------|-- d12f      	bne.n	10004464 <Cy_SysClk_PllGetFrequency+0x150>
10004404:	|  |  |  |        |   f242 50b0 	movw	r0, #9648	; 0x25b0
10004408:	|  |  |  |        |   f6c0 0000 	movt	r0, #2048	; 0x800
1000440c:	|  |  |  |        |   68c4      	ldr	r4, [r0, #12]
1000440e:	+--|--|--|--------|-- e02c      	b.n	1000446a <Cy_SysClk_PllGetFrequency+0x156>
10004410:	|  |  |  |     /--\-X d010      	beq.n	10004434 <Cy_SysClk_PllGetFrequency+0x120>
10004412:	|  |  |  |     |      f240 1111 	movw	r1, #273	; 0x111
10004416:	|  |  |  |     |      4288      	cmp	r0, r1
10004418:	|  |  |  |  /--|----- d01a      	beq.n	10004450 <Cy_SysClk_PllGetFrequency+0x13c>
1000441a:	|  |  |  |  |  |      f240 1113 	movw	r1, #275	; 0x113
1000441e:	|  |  |  |  |  |      4288      	cmp	r0, r1
10004420:	+--|--|--|--|--|----- d123      	bne.n	1000446a <Cy_SysClk_PllGetFrequency+0x156>
10004422:	|  |  |  |  |  |      f8de 000c 	ldr.w	r0, [lr, #12]
10004426:	|  |  |  |  |  |  /-- e007      	b.n	10004438 <Cy_SysClk_PllGetFrequency+0x124>
10004428:	|  |  |  \--|--|--|-> f241 2400 	movw	r4, #4608	; 0x1200
1000442c:	|  |  |     |  |  |   f2c0 047a 	movt	r4, #122	; 0x7a
10004430:	+--|--|-----|--|--|-- e01b      	b.n	1000446a <Cy_SysClk_PllGetFrequency+0x156>
10004432:	|  |  |     |  |  |   bf00      	nop
10004434:	|  |  |     |  \--|-> f85e 0c24 	ldr.w	r0, [lr, #-36]
10004438:	|  |  |     |     \-> f44f 4100 	mov.w	r1, #32768	; 0x8000
1000443c:	|  |  |     |         ea01 4410 	and.w	r4, r1, r0, lsr #16
10004440:	+--|--|-----|-------- e013      	b.n	1000446a <Cy_SysClk_PllGetFrequency+0x156>
10004442:	|  |  |     |         bf00      	nop
10004444:	|  |  \-----|-------> f242 50b0 	movw	r0, #9648	; 0x25b0
10004448:	|  |        |         f6c0 0000 	movt	r0, #2048	; 0x800
1000444c:	|  |        |         6884      	ldr	r4, [r0, #8]
1000444e:	+--|--------|-------- e00c      	b.n	1000446a <Cy_SysClk_PllGetFrequency+0x156>
10004450:	|  |        \-------> 2010      	movs	r0, #16
10004452:	|  |                  f2c4 0027 	movt	r0, #16423	; 0x4027
10004456:	|  |                  6800      	ldr	r0, [r0, #0]
10004458:	|  |                  f44f 4100 	mov.w	r1, #32768	; 0x8000
1000445c:	|  |                  ea01 3440 	and.w	r4, r1, r0, lsl #13
10004460:	+--|----------------- e003      	b.n	1000446a <Cy_SysClk_PllGetFrequency+0x156>
10004462:	|  |                  bf00      	nop
10004464:	|  \----------------> f8de 0000 	ldr.w	r0, [lr]
10004468:	|                     2400      	movs	r4, #0
1000446a:	\-------------------> fba3 2302 	umull	r2, r3, r3, r2
1000446e:	                      ea5f 0153 	movs.w	r1, r3, lsr #1
10004472:	                      ea4f 0032 	mov.w	r0, r2, rrx
10004476:	                      fbe4 010c 	umlal	r0, r1, r4, ip
1000447a:	                      f7fd fff9 	bl	10002470 <_ll_udiv>
1000447e:	                      4601      	mov	r1, r0
10004480:	                      4608      	mov	r0, r1
10004482:	                      bd70      	pop	{r4, r5, r6, pc}

10004484 <Cy_SysClk_PllManualConfigure>:
10004484:	          b5f0      	push	{r4, r5, r6, r7, lr}
10004486:	          f242 72b8 	movw	r2, #10168	; 0x27b8
1000448a:	          f6c0 0200 	movt	r2, #2048	; 0x800
1000448e:	          6812      	ldr	r2, [r2, #0]
10004490:	          f892 303f 	ldrb.w	r3, [r2, #63]	; 0x3f
10004494:	          4602      	mov	r2, r0
10004496:	          4283      	cmp	r3, r0
10004498:	          f240 0001 	movw	r0, #1
1000449c:	          f2c0 004a 	movt	r0, #74	; 0x4a
100044a0:	/-------- d33c      	bcc.n	1000451c <Cy_SysClk_PllManualConfigure+0x98>
100044a2:	|         3a01      	subs	r2, #1
100044a4:	|         429a      	cmp	r2, r3
100044a6:	|     /-- d300      	bcc.n	100044aa <Cy_SysClk_PllManualConfigure+0x26>
100044a8:	|     |   be01      	bkpt	0x0001
100044aa:	|     \-> f240 6c00 	movw	ip, #1536	; 0x600
100044ae:	|         f2c4 0c26 	movt	ip, #16422	; 0x4026
100044b2:	|         f85c 3022 	ldr.w	r3, [ip, r2, lsl #2]
100044b6:	|         2b00      	cmp	r3, #0
100044b8:	|  /----- d432      	bmi.n	10004520 <Cy_SysClk_PllManualConfigure+0x9c>
100044ba:	|  |      788b      	ldrb	r3, [r1, #2]
100044bc:	|  |      1e9e      	subs	r6, r3, #2
100044be:	|  |      2e0e      	cmp	r6, #14
100044c0:	+--|----- d82c      	bhi.n	1000451c <Cy_SysClk_PllManualConfigure+0x98>
100044c2:	|  |      f891 e001 	ldrb.w	lr, [r1, #1]
100044c6:	|  |      f1ae 0401 	sub.w	r4, lr, #1
100044ca:	|  |      2c11      	cmp	r4, #17
100044cc:	+--|----- d826      	bhi.n	1000451c <Cy_SysClk_PllManualConfigure+0x98>
100044ce:	|  |      78cc      	ldrb	r4, [r1, #3]
100044d0:	|  |      780d      	ldrb	r5, [r1, #0]
100044d2:	|  |      2713      	movs	r7, #19
100044d4:	|  |      2c00      	cmp	r4, #0
100044d6:	|  |      f04f 0638 	mov.w	r6, #56	; 0x38
100044da:	|  |      bf08      	it	eq
100044dc:	|  |      2716      	moveq	r7, #22
100044de:	|  |      bf08      	it	eq
100044e0:	|  |      2670      	moveq	r6, #112	; 0x70
100044e2:	|  |      42af      	cmp	r7, r5
100044e4:	+--|----- d81a      	bhi.n	1000451c <Cy_SysClk_PllManualConfigure+0x98>
100044e6:	|  |      42ae      	cmp	r6, r5
100044e8:	|  |      bf38      	it	cc
100044ea:	|  |      bdf0      	popcc	{r4, r5, r6, r7, pc}
100044ec:	|  |      7908      	ldrb	r0, [r1, #4]
100044ee:	|  |      2802      	cmp	r0, #2
100044f0:	|  |  /-- d00d      	beq.n	1000450e <Cy_SysClk_PllManualConfigure+0x8a>
100044f2:	|  |  |   ea4f 210e 	mov.w	r1, lr, lsl #8
100044f6:	|  |  |   ea41 4103 	orr.w	r1, r1, r3, lsl #16
100044fa:	|  |  |   f641 737f 	movw	r3, #8063	; 0x1f7f
100044fe:	|  |  |   4429      	add	r1, r5
10004500:	|  |  |   f2c0 031f 	movt	r3, #31
10004504:	|  |  |   4019      	ands	r1, r3
10004506:	|  |  |   ea41 61c4 	orr.w	r1, r1, r4, lsl #27
1000450a:	|  |  |   f84c 1022 	str.w	r1, [ip, r2, lsl #2]
1000450e:	|  |  \-> f85c 1022 	ldr.w	r1, [ip, r2, lsl #2]
10004512:	|  |      f360 711d 	bfi	r1, r0, #28, #2
10004516:	|  |      2000      	movs	r0, #0
10004518:	|  |      f84c 1022 	str.w	r1, [ip, r2, lsl #2]
1000451c:	\--|----> bdf0      	pop	{r4, r5, r6, r7, pc}
1000451e:	   |      bf00      	nop
10004520:	   \----> 3002      	adds	r0, #2
10004522:	          bdf0      	pop	{r4, r5, r6, r7, pc}

10004524 <Cy_SysClk_WcoEnable>:
10004524:	       b5b0      	push	{r4, r5, r7, lr}
10004526:	       2400      	movs	r4, #0
10004528:	       f2c4 0427 	movt	r4, #16423	; 0x4027
1000452c:	       6821      	ldr	r1, [r4, #0]
1000452e:	       2800      	cmp	r0, #0
10004530:	       f041 0108 	orr.w	r1, r1, #8
10004534:	       6021      	str	r1, [r4, #0]
10004536:	       6922      	ldr	r2, [r4, #16]
10004538:	       4601      	mov	r1, r0
1000453a:	       bf18      	it	ne
1000453c:	       2101      	movne	r1, #1
1000453e:	/----- d010      	beq.n	10004562 <Cy_SysClk_WcoEnable+0x3e>
10004540:	|      f012 0204 	ands.w	r2, r2, #4
10004544:	+----- d10d      	bne.n	10004562 <Cy_SysClk_WcoEnable+0x3e>
10004546:	|      4245      	negs	r5, r0
10004548:	|  /-> 2001      	movs	r0, #1
1000454a:	|  |   f000 f851 	bl	100045f0 <Cy_SysLib_DelayUs>
1000454e:	|  |   6920      	ldr	r0, [r4, #16]
10004550:	|  |   f1b5 31ff 	subs.w	r1, r5, #4294967295
10004554:	|  |   bf18      	it	ne
10004556:	|  |   2101      	movne	r1, #1
10004558:	|  |   3501      	adds	r5, #1
1000455a:	+--|-- d002      	beq.n	10004562 <Cy_SysClk_WcoEnable+0x3e>
1000455c:	|  |   f010 0004 	ands.w	r0, r0, #4
10004560:	|  \-- d0f2      	beq.n	10004548 <Cy_SysClk_WcoEnable+0x24>
10004562:	\----> 2002      	movs	r0, #2
10004564:	       f2c0 004a 	movt	r0, #74	; 0x4a
10004568:	       2900      	cmp	r1, #0
1000456a:	       bf18      	it	ne
1000456c:	       2000      	movne	r0, #0
1000456e:	       bdb0      	pop	{r4, r5, r7, pc}

10004570 <Cy_SysInt_Init>:
10004570:	          b510      	push	{r4, lr}
10004572:	/-------- b378      	cbz	r0, 100045d4 <Cy_SysInt_Init+0x64>
10004574:	|         6843      	ldr	r3, [r0, #4]
10004576:	|         2b08      	cmp	r3, #8
10004578:	|     /-- d301      	bcc.n	1000457e <Cy_SysInt_Init+0xe>
1000457a:	|     |   be01      	bkpt	0x0001
1000457c:	|     |   6843      	ldr	r3, [r0, #4]
1000457e:	|     \-> f9b0 2000 	ldrsh.w	r2, [r0]
10004582:	|         f64e 5c08 	movw	ip, #60680	; 0xed08
10004586:	|         f002 040f 	and.w	r4, r2, #15
1000458a:	|         f2ce 0c00 	movt	ip, #57344	; 0xe000
1000458e:	|         3c04      	subs	r4, #4
10004590:	|         4464      	add	r4, ip
10004592:	|         ea4f 1e43 	mov.w	lr, r3, lsl #5
10004596:	|         3410      	adds	r4, #16
10004598:	|         f102 4360 	add.w	r3, r2, #3758096384	; 0xe0000000
1000459c:	|         f1b2 3fff 	cmp.w	r2, #4294967295
100045a0:	|         bfc8      	it	gt
100045a2:	|         f503 4464 	addgt.w	r4, r3, #58368	; 0xe400
100045a6:	|         f884 e000 	strb.w	lr, [r4]
100045aa:	|         f8dc 2000 	ldr.w	r2, [ip]
100045ae:	|         f242 0300 	movw	r3, #8192	; 0x2000
100045b2:	|         f6c0 0300 	movt	r3, #2048	; 0x800
100045b6:	|         429a      	cmp	r2, r3
100045b8:	|     /-- d109      	bne.n	100045ce <Cy_SysInt_Init+0x5e>
100045ba:	|     |   f9b0 0000 	ldrsh.w	r0, [r0]
100045be:	|     |   f8dc 2000 	ldr.w	r2, [ip]
100045c2:	|     |   429a      	cmp	r2, r3
100045c4:	|     +-- d103      	bne.n	100045ce <Cy_SysInt_Init+0x5e>
100045c6:	|  /--|-- b149      	cbz	r1, 100045dc <Cy_SysInt_Init+0x6c>
100045c8:	|  |  |   eb03 0080 	add.w	r0, r3, r0, lsl #2
100045cc:	|  |  |   6401      	str	r1, [r0, #64]	; 0x40
100045ce:	|  |  \-> 2000      	movs	r0, #0
100045d0:	|  |      bd10      	pop	{r4, pc}
100045d2:	|  |      bf00      	nop
100045d4:	\--|----> 2001      	movs	r0, #1
100045d6:	   |      f2c0 0056 	movt	r0, #86	; 0x56
100045da:	   |      bd10      	pop	{r4, pc}
100045dc:	   \----> be01      	bkpt	0x0001
100045de:	          eb03 0080 	add.w	r0, r3, r0, lsl #2
100045e2:	          6401      	str	r1, [r0, #64]	; 0x40
100045e4:	          2000      	movs	r0, #0
100045e6:	          bd10      	pop	{r4, pc}

100045e8 <Cy_SysIpcPipeIsrCm4>:
100045e8:	2001      	movs	r0, #1
100045ea:	f7fe be7d 	b.w	100032e8 <Cy_IPC_Pipe_ExecuteCallback>
	...

100045f0 <Cy_SysLib_DelayUs>:
100045f0:	f242 21f8 	movw	r1, #8952	; 0x22f8
100045f4:	f6c0 0100 	movt	r1, #2048	; 0x800
100045f8:	7809      	ldrb	r1, [r1, #0]
100045fa:	4348      	muls	r0, r1
100045fc:	f7fd bf28 	b.w	10002450 <Cy_SysLib_DelayCycles>

10004600 <Cy_SysLib_FaultHandler>:
10004600:	    b580      	push	{r7, lr}
10004602:	    f642 0194 	movw	r1, #10388	; 0x2894
10004606:	    e890 500c 	ldmia.w	r0, {r2, r3, ip, lr}
1000460a:	    f6c0 0100 	movt	r1, #2048	; 0x800
1000460e:	    e881 500c 	stmia.w	r1, {r2, r3, ip, lr}
10004612:	    e9d0 2304 	ldrd	r2, r3, [r0, #16]
10004616:	    e9c1 2304 	strd	r2, r3, [r1, #16]
1000461a:	    e9d0 2306 	ldrd	r2, r3, [r0, #24]
1000461e:	    e9c1 2306 	strd	r2, r3, [r1, #24]
10004622:	    f64e 5224 	movw	r2, #60708	; 0xed24
10004626:	    f2ce 0200 	movt	r2, #57344	; 0xe000
1000462a:	    6853      	ldr	r3, [r2, #4]
1000462c:	    620b      	str	r3, [r1, #32]
1000462e:	    6893      	ldr	r3, [r2, #8]
10004630:	    624b      	str	r3, [r1, #36]	; 0x24
10004632:	    6813      	ldr	r3, [r2, #0]
10004634:	    628b      	str	r3, [r1, #40]	; 0x28
10004636:	    6913      	ldr	r3, [r2, #16]
10004638:	    62cb      	str	r3, [r1, #44]	; 0x2c
1000463a:	    6952      	ldr	r2, [r2, #20]
1000463c:	    630a      	str	r2, [r1, #48]	; 0x30
1000463e:	    eef1 2a10 	vmrs	r2, fpscr
10004642:	    f012 0f90 	tst.w	r2, #144	; 0x90
10004646:	/-- d021      	beq.n	1000468c <Cy_SysLib_FaultHandler+0x8c>
10004648:	|   6a02      	ldr	r2, [r0, #32]
1000464a:	|   634a      	str	r2, [r1, #52]	; 0x34
1000464c:	|   6a42      	ldr	r2, [r0, #36]	; 0x24
1000464e:	|   638a      	str	r2, [r1, #56]	; 0x38
10004650:	|   6a82      	ldr	r2, [r0, #40]	; 0x28
10004652:	|   63ca      	str	r2, [r1, #60]	; 0x3c
10004654:	|   6ac2      	ldr	r2, [r0, #44]	; 0x2c
10004656:	|   640a      	str	r2, [r1, #64]	; 0x40
10004658:	|   6b02      	ldr	r2, [r0, #48]	; 0x30
1000465a:	|   644a      	str	r2, [r1, #68]	; 0x44
1000465c:	|   6b42      	ldr	r2, [r0, #52]	; 0x34
1000465e:	|   648a      	str	r2, [r1, #72]	; 0x48
10004660:	|   6b82      	ldr	r2, [r0, #56]	; 0x38
10004662:	|   64ca      	str	r2, [r1, #76]	; 0x4c
10004664:	|   6bc2      	ldr	r2, [r0, #60]	; 0x3c
10004666:	|   650a      	str	r2, [r1, #80]	; 0x50
10004668:	|   6c02      	ldr	r2, [r0, #64]	; 0x40
1000466a:	|   654a      	str	r2, [r1, #84]	; 0x54
1000466c:	|   6c42      	ldr	r2, [r0, #68]	; 0x44
1000466e:	|   658a      	str	r2, [r1, #88]	; 0x58
10004670:	|   6c82      	ldr	r2, [r0, #72]	; 0x48
10004672:	|   65ca      	str	r2, [r1, #92]	; 0x5c
10004674:	|   6cc2      	ldr	r2, [r0, #76]	; 0x4c
10004676:	|   660a      	str	r2, [r1, #96]	; 0x60
10004678:	|   6d02      	ldr	r2, [r0, #80]	; 0x50
1000467a:	|   664a      	str	r2, [r1, #100]	; 0x64
1000467c:	|   6d42      	ldr	r2, [r0, #84]	; 0x54
1000467e:	|   668a      	str	r2, [r1, #104]	; 0x68
10004680:	|   6d82      	ldr	r2, [r0, #88]	; 0x58
10004682:	|   66ca      	str	r2, [r1, #108]	; 0x6c
10004684:	|   6dc2      	ldr	r2, [r0, #92]	; 0x5c
10004686:	|   670a      	str	r2, [r1, #112]	; 0x70
10004688:	|   6e00      	ldr	r0, [r0, #96]	; 0x60
1000468a:	|   6748      	str	r0, [r1, #116]	; 0x74
1000468c:	\-> e8bd 4080 	ldmia.w	sp!, {r7, lr}
10004690:	    f000 b82e 	b.w	100046f0 <Cy_SysLib_ProcessingFault>

10004694 <Cy_SysLib_GetDevice>:
10004694:	200c      	movs	r0, #12
10004696:	f2c1 6000 	movt	r0, #5632	; 0x1600
1000469a:	8801      	ldrh	r1, [r0, #0]
1000469c:	2900      	cmp	r1, #0
1000469e:	bf14      	ite	ne
100046a0:	8800      	ldrhne	r0, [r0, #0]
100046a2:	f44f 7080 	moveq.w	r0, #256	; 0x100
100046a6:	4770      	bx	lr

100046a8 <Cy_SysLib_GetDeviceRevision>:
100046a8:	2001      	movs	r0, #1
100046aa:	f2c1 6000 	movt	r0, #5632	; 0x1600
100046ae:	7801      	ldrb	r1, [r0, #0]
100046b0:	2900      	cmp	r1, #0
100046b2:	bf14      	ite	ne
100046b4:	7800      	ldrbne	r0, [r0, #0]
100046b6:	2021      	moveq	r0, #33	; 0x21
100046b8:	4770      	bx	lr
	...

100046bc <Cy_SysLib_GetResetReason>:
100046bc:	f640 0104 	movw	r1, #2052	; 0x804
100046c0:	2204      	movs	r2, #4
100046c2:	f2c4 0126 	movt	r1, #16422	; 0x4026
100046c6:	f2c4 0226 	movt	r2, #16422	; 0x4026
100046ca:	f851 0c04 	ldr.w	r0, [r1, #-4]
100046ce:	6812      	ldr	r2, [r2, #0]
100046d0:	0612      	lsls	r2, r2, #24
100046d2:	680a      	ldr	r2, [r1, #0]
100046d4:	bf18      	it	ne
100046d6:	f440 2080 	orrne.w	r0, r0, #262144	; 0x40000
100046da:	6809      	ldr	r1, [r1, #0]
100046dc:	0412      	lsls	r2, r2, #16
100046de:	bf18      	it	ne
100046e0:	f440 3080 	orrne.w	r0, r0, #65536	; 0x10000
100046e4:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
100046e8:	bf28      	it	cs
100046ea:	f440 3000 	orrcs.w	r0, r0, #131072	; 0x20000
100046ee:	4770      	bx	lr

100046f0 <Cy_SysLib_ProcessingFault>:
100046f0:	/-- e7fe      	b.n	100046f0 <Cy_SysLib_ProcessingFault>
100046f2:	    4770      	bx	lr

100046f4 <Cy_SysLib_ResetBackupDomain>:
100046f4:	2048      	movs	r0, #72	; 0x48
100046f6:	f2c4 0027 	movt	r0, #16423	; 0x4027
100046fa:	f04f 4100 	mov.w	r1, #2147483648	; 0x80000000
100046fe:	6001      	str	r1, [r0, #0]
10004700:	6800      	ldr	r0, [r0, #0]
10004702:	2103      	movs	r1, #3
10004704:	f2c0 0146 	movt	r1, #70	; 0x46
10004708:	ea01 70e0 	and.w	r0, r1, r0, asr #31
1000470c:	4770      	bx	lr
	...

10004710 <Cy_SysLib_SetWaitStates>:
10004710:	                b510      	push	{r4, lr}
10004712:	                f242 72b8 	movw	r2, #10168	; 0x27b8
10004716:	                2364      	movs	r3, #100	; 0x64
10004718:	                f6c0 0200 	movt	r2, #2048	; 0x800
1000471c:	                2800      	cmp	r0, #0
1000471e:	                bf18      	it	ne
10004720:	                2319      	movne	r3, #25
10004722:	                f8d2 c000 	ldr.w	ip, [r2]
10004726:	                428b      	cmp	r3, r1
10004728:	                f8dc e000 	ldr.w	lr, [ip]
1000472c:	                f8bc 40ac 	ldrh.w	r4, [ip, #172]	; 0xac
10004730:	                f04f 0200 	mov.w	r2, #0
10004734:	                f85e 3004 	ldr.w	r3, [lr, r4]
10004738:	                bf38      	it	cc
1000473a:	                2201      	movcc	r2, #1
1000473c:	                f023 0303 	bic.w	r3, r3, #3
10004740:	                4413      	add	r3, r2
10004742:	                f84e 3004 	str.w	r3, [lr, r4]
10004746:	                f8dc e000 	ldr.w	lr, [ip]
1000474a:	                f85e 3004 	ldr.w	r3, [lr, r4]
1000474e:	                f423 7340 	bic.w	r3, r3, #768	; 0x300
10004752:	                f84e 3004 	str.w	r3, [lr, r4]
10004756:	                f8dc e000 	ldr.w	lr, [ip]
1000475a:	                f8bc 40ae 	ldrh.w	r4, [ip, #174]	; 0xae
1000475e:	                f85e 3004 	ldr.w	r3, [lr, r4]
10004762:	                f023 0303 	bic.w	r3, r3, #3
10004766:	                441a      	add	r2, r3
10004768:	                f84e 2004 	str.w	r2, [lr, r4]
1000476c:	                f8dc 2000 	ldr.w	r2, [ip]
10004770:	                5913      	ldr	r3, [r2, r4]
10004772:	                f423 7340 	bic.w	r3, r3, #768	; 0x300
10004776:	                5113      	str	r3, [r2, r4]
10004778:	            /-- b140      	cbz	r0, 1000478c <Cy_SysLib_SetWaitStates+0x7c>
1000477a:	            |   2002      	movs	r0, #2
1000477c:	            |   2922      	cmp	r1, #34	; 0x22
1000477e:	            |   bf38      	it	cc
10004780:	            |   2001      	movcc	r0, #1
10004782:	            |   2911      	cmp	r1, #17
10004784:	            |   bf38      	it	cc
10004786:	            |   2000      	movcc	r0, #0
10004788:	/-----------|-- e01f      	b.n	100047ca <Cy_SysLib_SetWaitStates+0xba>
1000478a:	|           |   bf00      	nop
1000478c:	|           \-> f89c 0055 	ldrb.w	r0, [ip, #85]	; 0x55
10004790:	|               4288      	cmp	r0, r1
10004792:	|  /----------- d213      	bcs.n	100047bc <Cy_SysLib_SetWaitStates+0xac>
10004794:	|  |            f89c 0056 	ldrb.w	r0, [ip, #86]	; 0x56
10004798:	|  |            4288      	cmp	r0, r1
1000479a:	|  |  /-------- d211      	bcs.n	100047c0 <Cy_SysLib_SetWaitStates+0xb0>
1000479c:	|  |  |         f89c 0057 	ldrb.w	r0, [ip, #87]	; 0x57
100047a0:	|  |  |         4288      	cmp	r0, r1
100047a2:	|  |  |  /----- d20f      	bcs.n	100047c4 <Cy_SysLib_SetWaitStates+0xb4>
100047a4:	|  |  |  |      f89c 0058 	ldrb.w	r0, [ip, #88]	; 0x58
100047a8:	|  |  |  |      4288      	cmp	r0, r1
100047aa:	|  |  |  |  /-- d20d      	bcs.n	100047c8 <Cy_SysLib_SetWaitStates+0xb8>
100047ac:	|  |  |  |  |   f89c 2059 	ldrb.w	r2, [ip, #89]	; 0x59
100047b0:	|  |  |  |  |   2004      	movs	r0, #4
100047b2:	|  |  |  |  |   428a      	cmp	r2, r1
100047b4:	|  |  |  |  |   bf38      	it	cc
100047b6:	|  |  |  |  |   2005      	movcc	r0, #5
100047b8:	+--|--|--|--|-- e007      	b.n	100047ca <Cy_SysLib_SetWaitStates+0xba>
100047ba:	|  |  |  |  |   bf00      	nop
100047bc:	|  \--|--|--|-> 2000      	movs	r0, #0
100047be:	+-----|--|--|-- e004      	b.n	100047ca <Cy_SysLib_SetWaitStates+0xba>
100047c0:	|     \--|--|-> 2001      	movs	r0, #1
100047c2:	+--------|--|-- e002      	b.n	100047ca <Cy_SysLib_SetWaitStates+0xba>
100047c4:	|        \--|-> 2002      	movs	r0, #2
100047c6:	+-----------|-- e000      	b.n	100047ca <Cy_SysLib_SetWaitStates+0xba>
100047c8:	|           \-> 2003      	movs	r0, #3
100047ca:	\-------------> f8dc 1004 	ldr.w	r1, [ip, #4]
100047ce:	                680a      	ldr	r2, [r1, #0]
100047d0:	                f022 020f 	bic.w	r2, r2, #15
100047d4:	                4410      	add	r0, r2
100047d6:	                6008      	str	r0, [r1, #0]
100047d8:	                bd10      	pop	{r4, pc}
	...

100047dc <Cy_SysPm_LdoSetVoltage>:
100047dc:	          e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
100047e0:	          4604      	mov	r4, r0
100047e2:	          2802      	cmp	r0, #2
100047e4:	      /-- d300      	bcc.n	100047e8 <Cy_SysPm_LdoSetVoltage+0xc>
100047e6:	      |   be01      	bkpt	0x0001
100047e8:	      \-> f242 7ab8 	movw	sl, #10168	; 0x27b8
100047ec:	          f6c0 0a00 	movt	sl, #2048	; 0x800
100047f0:	          f8da 0000 	ldr.w	r0, [sl]
100047f4:	          2503      	movs	r5, #3
100047f6:	          6801      	ldr	r1, [r0, #0]
100047f8:	          f8d0 009c 	ldr.w	r0, [r0, #156]	; 0x9c
100047fc:	          f2c0 0542 	movt	r5, #66	; 0x42
10004800:	          5846      	ldr	r6, [r0, r1]
10004802:	          f7ff ff47 	bl	10004694 <Cy_SysLib_GetDevice>
10004806:	          f5b0 7f80 	cmp.w	r0, #256	; 0x100
1000480a:	      /-- d10b      	bne.n	10004824 <Cy_SysPm_LdoSetVoltage+0x48>
1000480c:	      |   200e      	movs	r0, #14
1000480e:	      |   f7fe fed3 	bl	100035b8 <Cy_Prot_GetActivePC>
10004812:	      |   4606      	mov	r6, r0
10004814:	      |   f7ff ff48 	bl	100046a8 <Cy_SysLib_GetDeviceRevision>
10004818:	/-----|-- b1f6      	cbz	r6, 10004858 <Cy_SysPm_LdoSetVoltage+0x7c>
1000481a:	|     |   2822      	cmp	r0, #34	; 0x22
1000481c:	+-----|-- d81c      	bhi.n	10004858 <Cy_SysPm_LdoSetVoltage+0x7c>
1000481e:	|  /--|-> 4628      	mov	r0, r5
10004820:	|  |  |   e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
10004824:	|  |  \-> f8da 0000 	ldr.w	r0, [sl]
10004828:	|  |      6801      	ldr	r1, [r0, #0]
1000482a:	|  |      f8d0 209c 	ldr.w	r2, [r0, #156]	; 0x9c
1000482e:	|  |      5853      	ldr	r3, [r2, r1]
10004830:	|  |      f423 6340 	bic.w	r3, r3, #3072	; 0xc00
10004834:	|  |      5053      	str	r3, [r2, r1]
10004836:	|  |      6801      	ldr	r1, [r0, #0]
10004838:	|  |      f8d0 209c 	ldr.w	r2, [r0, #156]	; 0x9c
1000483c:	|  |      f44f 6340 	mov.w	r3, #3072	; 0xc00
10004840:	|  |      5857      	ldr	r7, [r2, r1]
10004842:	|  |      43b3      	bics	r3, r6
10004844:	|  |      433b      	orrs	r3, r7
10004846:	|  |      5053      	str	r3, [r2, r1]
10004848:	|  |      6801      	ldr	r1, [r0, #0]
1000484a:	|  |      f8d0 009c 	ldr.w	r0, [r0, #156]	; 0x9c
1000484e:	|  |      5840      	ldr	r0, [r0, r1]
10004850:	|  |      4070      	eors	r0, r6
10004852:	|  |      f410 6f40 	tst.w	r0, #3072	; 0xc00
10004856:	|  \----- d0e2      	beq.n	1000481e <Cy_SysPm_LdoSetVoltage+0x42>
10004858:	\-------> f647 7530 	movw	r5, #32560	; 0x7f30
1000485c:	          f240 7740 	movw	r7, #1856	; 0x740
10004860:	          f2c4 0526 	movt	r5, #16422	; 0x4026
10004864:	          f2c1 6700 	movt	r7, #5632	; 0x1600
10004868:	          f7fd fdfa 	bl	10002460 <Cy_SysLib_EnterCriticalSection>
1000486c:	          4680      	mov	r8, r0
1000486e:	/-------- b39c      	cbz	r4, 100048d8 <Cy_SysPm_LdoSetVoltage+0xfc>
10004870:	|         2000      	movs	r0, #0
10004872:	|         f2c4 0026 	movt	r0, #16422	; 0x4026
10004876:	|         6801      	ldr	r1, [r0, #0]
10004878:	|         2200      	movs	r2, #0
1000487a:	|         6800      	ldr	r0, [r0, #0]
1000487c:	|         f2c5 2204 	movt	r2, #20996	; 0x5204
10004880:	|         0209      	lsls	r1, r1, #8
10004882:	|         bf58      	it	pl
10004884:	|         f102 7280 	addpl.w	r2, r2, #16777216	; 0x1000000
10004888:	|         4010      	ands	r0, r2
1000488a:	|         f641 0910 	movw	r9, #6160	; 0x1810
1000488e:	|         f64f 761c 	movw	r6, #65308	; 0xff1c
10004892:	|         4290      	cmp	r0, r2
10004894:	|         f2c1 6900 	movt	r9, #5632	; 0x1600
10004898:	|         bf14      	ite	ne
1000489a:	|         f8d9 0000 	ldrne.w	r0, [r9]
1000489e:	|         2050      	moveq	r0, #80	; 0x50
100048a0:	|         f2c4 0626 	movt	r6, #16422	; 0x4026
100048a4:	|         6028      	str	r0, [r5, #0]
100048a6:	|         787c      	ldrb	r4, [r7, #1]
100048a8:	|         6830      	ldr	r0, [r6, #0]
100048aa:	|         210b      	movs	r1, #11
100048ac:	|         f361 0004 	bfi	r0, r1, #0, #5
100048b0:	|         6030      	str	r0, [r6, #0]
100048b2:	|         2003      	movs	r0, #3
100048b4:	|         f7ff fe9c 	bl	100045f0 <Cy_SysLib_DelayUs>
100048b8:	|         f7ff feec 	bl	10004694 <Cy_SysLib_GetDevice>
100048bc:	|         f5b0 7f80 	cmp.w	r0, #256	; 0x100
100048c0:	|     /-- d11a      	bne.n	100048f8 <Cy_SysPm_LdoSetVoltage+0x11c>
100048c2:	|     |   f8da 0000 	ldr.w	r0, [sl]
100048c6:	|     |   2304      	movs	r3, #4
100048c8:	|     |   6801      	ldr	r1, [r0, #0]
100048ca:	|     |   f8d0 009c 	ldr.w	r0, [r0, #156]	; 0x9c
100048ce:	|     |   5842      	ldr	r2, [r0, r1]
100048d0:	|     |   f363 320e 	bfi	r2, r3, #12, #3
100048d4:	|     |   5042      	str	r2, [r0, r1]
100048d6:	|  /--|-- e021      	b.n	1000491c <Cy_SysPm_LdoSetVoltage+0x140>
100048d8:	\--|--|-> 2000      	movs	r0, #0
100048da:	   |  |   6028      	str	r0, [r5, #0]
100048dc:	   |  |   783e      	ldrb	r6, [r7, #0]
100048de:	   |  |   2001      	movs	r0, #1
100048e0:	   |  |   f000 f992 	bl	10004c08 <Cy_SysPm_WriteVoltageBitForFlash>
100048e4:	   |  |   4605      	mov	r5, r0
100048e6:	   |  |   2800      	cmp	r0, #0
100048e8:	/--|--|-- d052      	beq.n	10004990 <Cy_SysPm_LdoSetVoltage+0x1b4>
100048ea:	|  |  |   4640      	mov	r0, r8
100048ec:	|  |  |   f7fd fdbc 	bl	10002468 <Cy_SysLib_ExitCriticalSection>
100048f0:	|  |  |   4628      	mov	r0, r5
100048f2:	|  |  |   e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
100048f6:	|  |  |   bf00      	nop
100048f8:	|  |  \-> f8d9 0040 	ldr.w	r0, [r9, #64]	; 0x40
100048fc:	|  |      f8da 1000 	ldr.w	r1, [sl]
10004900:	|  |      680a      	ldr	r2, [r1, #0]
10004902:	|  |      f8d1 309c 	ldr.w	r3, [r1, #156]	; 0x9c
10004906:	|  |      589f      	ldr	r7, [r3, r2]
10004908:	|  |      0a3f      	lsrs	r7, r7, #8
1000490a:	|  |      f367 2009 	bfi	r0, r7, #8, #2
1000490e:	|  |      5098      	str	r0, [r3, r2]
10004910:	|  |      f8d9 003c 	ldr.w	r0, [r9, #60]	; 0x3c
10004914:	|  |      680a      	ldr	r2, [r1, #0]
10004916:	|  |      f8d1 10a0 	ldr.w	r1, [r1, #160]	; 0xa0
1000491a:	|  |      5088      	str	r0, [r1, r2]
1000491c:	|  \----> 6830      	ldr	r0, [r6, #0]
1000491e:	|         f364 0004 	bfi	r0, r4, #0, #5
10004922:	|         6030      	str	r0, [r6, #0]
10004924:	|         2007      	movs	r0, #7
10004926:	|         f7ff fe63 	bl	100045f0 <Cy_SysLib_DelayUs>
1000492a:	|         f7ff feb3 	bl	10004694 <Cy_SysLib_GetDevice>
1000492e:	|         f5b0 7f80 	cmp.w	r0, #256	; 0x100
10004932:	|     /-- d111      	bne.n	10004958 <Cy_SysPm_LdoSetVoltage+0x17c>
10004934:	|     |   f8da 0000 	ldr.w	r0, [sl]
10004938:	|     |   2703      	movs	r7, #3
1000493a:	|     |   6801      	ldr	r1, [r0, #0]
1000493c:	|     |   f8d0 209c 	ldr.w	r2, [r0, #156]	; 0x9c
10004940:	|     |   5853      	ldr	r3, [r2, r1]
10004942:	|     |   f367 0303 	bfi	r3, r7, #0, #4
10004946:	|     |   5053      	str	r3, [r2, r1]
10004948:	|     |   6801      	ldr	r1, [r0, #0]
1000494a:	|     |   f8d0 00a0 	ldr.w	r0, [r0, #160]	; 0xa0
1000494e:	|     |   5842      	ldr	r2, [r0, r1]
10004950:	|     |   f367 0203 	bfi	r2, r7, #0, #4
10004954:	|     |   5042      	str	r2, [r0, r1]
10004956:	|  /--|-- e011      	b.n	1000497c <Cy_SysPm_LdoSetVoltage+0x1a0>
10004958:	|  |  \-> f8d9 0014 	ldr.w	r0, [r9, #20]
1000495c:	|  |      f8da 1000 	ldr.w	r1, [sl]
10004960:	|  |      680a      	ldr	r2, [r1, #0]
10004962:	|  |      f8d1 309c 	ldr.w	r3, [r1, #156]	; 0x9c
10004966:	|  |      589f      	ldr	r7, [r3, r2]
10004968:	|  |      0a3f      	lsrs	r7, r7, #8
1000496a:	|  |      f367 2009 	bfi	r0, r7, #8, #2
1000496e:	|  |      5098      	str	r0, [r3, r2]
10004970:	|  |      f8d9 0010 	ldr.w	r0, [r9, #16]
10004974:	|  |      680a      	ldr	r2, [r1, #0]
10004976:	|  |      f8d1 10a0 	ldr.w	r1, [r1, #160]	; 0xa0
1000497a:	|  |      5088      	str	r0, [r1, r2]
1000497c:	|  \----> 2000      	movs	r0, #0
1000497e:	|         f000 f943 	bl	10004c08 <Cy_SysPm_WriteVoltageBitForFlash>
10004982:	|         4605      	mov	r5, r0
10004984:	|         4640      	mov	r0, r8
10004986:	|         f7fd fd6f 	bl	10002468 <Cy_SysLib_ExitCriticalSection>
1000498a:	|         4628      	mov	r0, r5
1000498c:	|         e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
10004990:	\-------> f641 0510 	movw	r5, #6160	; 0x1810
10004994:	          f2c1 6500 	movt	r5, #5632	; 0x1600
10004998:	          f7ff fe7c 	bl	10004694 <Cy_SysLib_GetDevice>
1000499c:	          f5b0 7f80 	cmp.w	r0, #256	; 0x100
100049a0:	   /----- d112      	bne.n	100049c8 <Cy_SysPm_LdoSetVoltage+0x1ec>
100049a2:	   |      f8da 0000 	ldr.w	r0, [sl]
100049a6:	   |      2702      	movs	r7, #2
100049a8:	   |      6801      	ldr	r1, [r0, #0]
100049aa:	   |      f8d0 209c 	ldr.w	r2, [r0, #156]	; 0x9c
100049ae:	   |      5853      	ldr	r3, [r2, r1]
100049b0:	   |      f367 0303 	bfi	r3, r7, #0, #4
100049b4:	   |      5053      	str	r3, [r2, r1]
100049b6:	   |      6801      	ldr	r1, [r0, #0]
100049b8:	   |      f8d0 00a0 	ldr.w	r0, [r0, #160]	; 0xa0
100049bc:	   |      5842      	ldr	r2, [r0, r1]
100049be:	   |      f367 0203 	bfi	r2, r7, #0, #4
100049c2:	   |      5042      	str	r2, [r0, r1]
100049c4:	   |  /-- e010      	b.n	100049e8 <Cy_SysPm_LdoSetVoltage+0x20c>
100049c6:	   |  |   bf00      	nop
100049c8:	   \--|-> 6ba8      	ldr	r0, [r5, #56]	; 0x38
100049ca:	      |   f8da 1000 	ldr.w	r1, [sl]
100049ce:	      |   680a      	ldr	r2, [r1, #0]
100049d0:	      |   f8d1 309c 	ldr.w	r3, [r1, #156]	; 0x9c
100049d4:	      |   589f      	ldr	r7, [r3, r2]
100049d6:	      |   0a3f      	lsrs	r7, r7, #8
100049d8:	      |   f367 2009 	bfi	r0, r7, #8, #2
100049dc:	      |   5098      	str	r0, [r3, r2]
100049de:	      |   6b68      	ldr	r0, [r5, #52]	; 0x34
100049e0:	      |   680a      	ldr	r2, [r1, #0]
100049e2:	      |   f8d1 10a0 	ldr.w	r1, [r1, #160]	; 0xa0
100049e6:	      |   5088      	str	r0, [r1, r2]
100049e8:	      \-> f64f 701c 	movw	r0, #65308	; 0xff1c
100049ec:	          f2c4 0026 	movt	r0, #16422	; 0x4026
100049f0:	          6801      	ldr	r1, [r0, #0]
100049f2:	          f366 0104 	bfi	r1, r6, #0, #5
100049f6:	          6001      	str	r1, [r0, #0]
100049f8:	          f7ff fe4c 	bl	10004694 <Cy_SysLib_GetDevice>
100049fc:	          f5b0 7f80 	cmp.w	r0, #256	; 0x100
10004a00:	      /-- d110      	bne.n	10004a24 <Cy_SysPm_LdoSetVoltage+0x248>
10004a02:	      |   f8da 0000 	ldr.w	r0, [sl]
10004a06:	      |   2306      	movs	r3, #6
10004a08:	      |   6801      	ldr	r1, [r0, #0]
10004a0a:	      |   f8d0 009c 	ldr.w	r0, [r0, #156]	; 0x9c
10004a0e:	      |   2500      	movs	r5, #0
10004a10:	      |   5842      	ldr	r2, [r0, r1]
10004a12:	      |   f363 320e 	bfi	r2, r3, #12, #3
10004a16:	      |   5042      	str	r2, [r0, r1]
10004a18:	      |   4640      	mov	r0, r8
10004a1a:	      |   f7fd fd25 	bl	10002468 <Cy_SysLib_ExitCriticalSection>
10004a1e:	      |   4628      	mov	r0, r5
10004a20:	      |   e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
10004a24:	      \-> 68e8      	ldr	r0, [r5, #12]
10004a26:	          f8da 1000 	ldr.w	r1, [sl]
10004a2a:	          2500      	movs	r5, #0
10004a2c:	          680a      	ldr	r2, [r1, #0]
10004a2e:	          f8d1 109c 	ldr.w	r1, [r1, #156]	; 0x9c
10004a32:	          588b      	ldr	r3, [r1, r2]
10004a34:	          0a1b      	lsrs	r3, r3, #8
10004a36:	          f363 2009 	bfi	r0, r3, #8, #2
10004a3a:	          5088      	str	r0, [r1, r2]
10004a3c:	          4640      	mov	r0, r8
10004a3e:	          f7fd fd13 	bl	10002468 <Cy_SysLib_ExitCriticalSection>
10004a42:	          4628      	mov	r0, r5
10004a44:	          e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

10004a48 <Cy_SysPm_PmicDisableOutput>:
10004a48:	2044      	movs	r0, #68	; 0x44
10004a4a:	f2c4 0027 	movt	r0, #16423	; 0x4027
10004a4e:	6801      	ldr	r1, [r0, #0]
10004a50:	f401 417f 	and.w	r1, r1, #65280	; 0xff00
10004a54:	f5b1 5f68 	cmp.w	r1, #14848	; 0x3a00
10004a58:	bf18      	it	ne
10004a5a:	4770      	bxne	lr
10004a5c:	6801      	ldr	r1, [r0, #0]
10004a5e:	f24c 52ff 	movw	r2, #50687	; 0xc5ff
10004a62:	f6cd 72ff 	movt	r2, #57343	; 0xdfff
10004a66:	4011      	ands	r1, r2
10004a68:	f501 5168 	add.w	r1, r1, #14848	; 0x3a00
10004a6c:	6001      	str	r1, [r0, #0]
10004a6e:	4770      	bx	lr

10004a70 <Cy_SysPm_PmicUnlock>:
10004a70:	2044      	movs	r0, #68	; 0x44
10004a72:	f2c4 0027 	movt	r0, #16423	; 0x4027
10004a76:	6801      	ldr	r1, [r0, #0]
10004a78:	223a      	movs	r2, #58	; 0x3a
10004a7a:	f362 210f 	bfi	r1, r2, #8, #8
10004a7e:	6001      	str	r1, [r0, #0]
10004a80:	4770      	bx	lr
	...

10004a84 <Cy_SysPm_RegisterCallback>:
10004a84:	             b580      	push	{r7, lr}
10004a86:	             2800      	cmp	r0, #0
10004a88:	/----------- d056      	beq.n	10004b38 <Cy_SysPm_RegisterCallback+0xb4>
10004a8a:	|            68c1      	ldr	r1, [r0, #12]
10004a8c:	|            2900      	cmp	r1, #0
10004a8e:	+----------- d053      	beq.n	10004b38 <Cy_SysPm_RegisterCallback+0xb4>
10004a90:	|            6801      	ldr	r1, [r0, #0]
10004a92:	|            2900      	cmp	r1, #0
10004a94:	+----------- d050      	beq.n	10004b38 <Cy_SysPm_RegisterCallback+0xb4>
10004a96:	|            7901      	ldrb	r1, [r0, #4]
10004a98:	|            f242 52c4 	movw	r2, #9668	; 0x25c4
10004a9c:	|            f6c0 0200 	movt	r2, #2048	; 0x800
10004aa0:	|            eb02 0c81 	add.w	ip, r2, r1, lsl #2
10004aa4:	|            f8dc 1008 	ldr.w	r1, [ip, #8]
10004aa8:	|            2900      	cmp	r1, #0
10004aaa:	|  /-------- d047      	beq.n	10004b3c <Cy_SysPm_RegisterCallback+0xb8>
10004aac:	|  |         1a0b      	subs	r3, r1, r0
10004aae:	|  |         bf18      	it	ne
10004ab0:	|  |         2301      	movne	r3, #1
10004ab2:	|  |         4281      	cmp	r1, r0
10004ab4:	|  |  /----- d031      	beq.n	10004b1a <Cy_SysPm_RegisterCallback+0x96>
10004ab6:	|  |  |      694a      	ldr	r2, [r1, #20]
10004ab8:	|  |  +----- b37a      	cbz	r2, 10004b1a <Cy_SysPm_RegisterCallback+0x96>
10004aba:	|  |  |      f890 e018 	ldrb.w	lr, [r0, #24]
10004abe:	|  |  |      bf00      	nop
10004ac0:	|  |  |  /-> 7e13      	ldrb	r3, [r2, #24]
10004ac2:	|  |  |  |   4573      	cmp	r3, lr
10004ac4:	|  |  |  |   bf98      	it	ls
10004ac6:	|  |  |  |   4611      	movls	r1, r2
10004ac8:	|  |  |  |   1a13      	subs	r3, r2, r0
10004aca:	|  |  |  |   bf18      	it	ne
10004acc:	|  |  |  |   2301      	movne	r3, #1
10004ace:	|  |  |  |   4282      	cmp	r2, r0
10004ad0:	|  |  +--|-- d023      	beq.n	10004b1a <Cy_SysPm_RegisterCallback+0x96>
10004ad2:	|  |  |  |   6952      	ldr	r2, [r2, #20]
10004ad4:	|  |  +--|-- b30a      	cbz	r2, 10004b1a <Cy_SysPm_RegisterCallback+0x96>
10004ad6:	|  |  |  |   7e13      	ldrb	r3, [r2, #24]
10004ad8:	|  |  |  |   4573      	cmp	r3, lr
10004ada:	|  |  |  |   bf98      	it	ls
10004adc:	|  |  |  |   4611      	movls	r1, r2
10004ade:	|  |  |  |   1a13      	subs	r3, r2, r0
10004ae0:	|  |  |  |   bf18      	it	ne
10004ae2:	|  |  |  |   2301      	movne	r3, #1
10004ae4:	|  |  |  |   4282      	cmp	r2, r0
10004ae6:	|  |  +--|-- d018      	beq.n	10004b1a <Cy_SysPm_RegisterCallback+0x96>
10004ae8:	|  |  |  |   6952      	ldr	r2, [r2, #20]
10004aea:	|  |  +--|-- b1b2      	cbz	r2, 10004b1a <Cy_SysPm_RegisterCallback+0x96>
10004aec:	|  |  |  |   7e13      	ldrb	r3, [r2, #24]
10004aee:	|  |  |  |   4573      	cmp	r3, lr
10004af0:	|  |  |  |   bf98      	it	ls
10004af2:	|  |  |  |   4611      	movls	r1, r2
10004af4:	|  |  |  |   1a13      	subs	r3, r2, r0
10004af6:	|  |  |  |   bf18      	it	ne
10004af8:	|  |  |  |   2301      	movne	r3, #1
10004afa:	|  |  |  |   4282      	cmp	r2, r0
10004afc:	|  |  +--|-- d00d      	beq.n	10004b1a <Cy_SysPm_RegisterCallback+0x96>
10004afe:	|  |  |  |   6952      	ldr	r2, [r2, #20]
10004b00:	|  |  +--|-- b15a      	cbz	r2, 10004b1a <Cy_SysPm_RegisterCallback+0x96>
10004b02:	|  |  |  |   7e13      	ldrb	r3, [r2, #24]
10004b04:	|  |  |  |   4573      	cmp	r3, lr
10004b06:	|  |  |  |   bf98      	it	ls
10004b08:	|  |  |  |   4611      	movls	r1, r2
10004b0a:	|  |  |  |   1a13      	subs	r3, r2, r0
10004b0c:	|  |  |  |   bf18      	it	ne
10004b0e:	|  |  |  |   2301      	movne	r3, #1
10004b10:	|  |  |  |   4282      	cmp	r2, r0
10004b12:	|  |  +--|-- d002      	beq.n	10004b1a <Cy_SysPm_RegisterCallback+0x96>
10004b14:	|  |  |  |   6952      	ldr	r2, [r2, #20]
10004b16:	|  |  |  |   2a00      	cmp	r2, #0
10004b18:	|  |  |  \-- d1d2      	bne.n	10004ac0 <Cy_SysPm_RegisterCallback+0x3c>
10004b1a:	+--|--\----X b16b      	cbz	r3, 10004b38 <Cy_SysPm_RegisterCallback+0xb4>
10004b1c:	|  |         690a      	ldr	r2, [r1, #16]
10004b1e:	|  |     /-- b9aa      	cbnz	r2, 10004b4c <Cy_SysPm_RegisterCallback+0xc8>
10004b20:	|  |     |   7e02      	ldrb	r2, [r0, #24]
10004b22:	|  |     |   7e0b      	ldrb	r3, [r1, #24]
10004b24:	|  |     |   429a      	cmp	r2, r3
10004b26:	|  |     +-- d211      	bcs.n	10004b4c <Cy_SysPm_RegisterCallback+0xc8>
10004b28:	|  |     |   2200      	movs	r2, #0
10004b2a:	|  |     |   e9c0 2104 	strd	r2, r1, [r0, #16]
10004b2e:	|  |     |   6108      	str	r0, [r1, #16]
10004b30:	|  |     |   f8cc 0008 	str.w	r0, [ip, #8]
10004b34:	|  |     |   2001      	movs	r0, #1
10004b36:	|  |     |   bd80      	pop	{r7, pc}
10004b38:	\--|-----|-> 2000      	movs	r0, #0
10004b3a:	   |     |   bd80      	pop	{r7, pc}
10004b3c:	   \-----|-> 2100      	movs	r1, #0
10004b3e:	         |   f8cc 0008 	str.w	r0, [ip, #8]
10004b42:	         |   e9c0 1104 	strd	r1, r1, [r0, #16]
10004b46:	         |   2001      	movs	r0, #1
10004b48:	         |   bd80      	pop	{r7, pc}
10004b4a:	         |   bf00      	nop
10004b4c:	         \-> 694a      	ldr	r2, [r1, #20]
10004b4e:	             6101      	str	r1, [r0, #16]
10004b50:	             2a00      	cmp	r2, #0
10004b52:	             6142      	str	r2, [r0, #20]
10004b54:	             bf18      	it	ne
10004b56:	             6110      	strne	r0, [r2, #16]
10004b58:	             6148      	str	r0, [r1, #20]
10004b5a:	             2001      	movs	r0, #1
10004b5c:	             bd80      	pop	{r7, pc}
	...

10004b60 <Cy_SysPm_SystemSetNormalRegulatorCurrent>:
10004b60:	             b510      	push	{r4, lr}
10004b62:	             2400      	movs	r4, #0
10004b64:	             f2c4 0426 	movt	r4, #16422	; 0x4026
10004b68:	             6820      	ldr	r0, [r4, #0]
10004b6a:	             f64f 71ff 	movw	r1, #65535	; 0xffff
10004b6e:	             0dc0      	lsrs	r0, r0, #23
10004b70:	             f6ca 41fb 	movt	r1, #44283	; 0xacfb
10004b74:	             6822      	ldr	r2, [r4, #0]
10004b76:	             f360 6118 	bfi	r1, r0, #24, #1
10004b7a:	             ea02 0001 	and.w	r0, r2, r1
10004b7e:	             6020      	str	r0, [r4, #0]
10004b80:	             2008      	movs	r0, #8
10004b82:	             f7ff fd35 	bl	100045f0 <Cy_SysLib_DelayUs>
10004b86:	             f06f 0063 	mvn.w	r0, #99	; 0x63
10004b8a:	             bf00      	nop
10004b8c:	      /----> 6821      	ldr	r1, [r4, #0]
10004b8e:	   /--|----- b178      	cbz	r0, 10004bb0 <Cy_SysPm_SystemSetNormalRegulatorCurrent+0x50>
10004b90:	   |  |      f1b1 3fff 	cmp.w	r1, #4294967295
10004b94:	   +--|----- dd0c      	ble.n	10004bb0 <Cy_SysPm_SystemSetNormalRegulatorCurrent+0x50>
10004b96:	   |  |      6821      	ldr	r1, [r4, #0]
10004b98:	   |  |      2900      	cmp	r1, #0
10004b9a:	   |  |  /-- d40a      	bmi.n	10004bb2 <Cy_SysPm_SystemSetNormalRegulatorCurrent+0x52>
10004b9c:	   |  |  |   6821      	ldr	r1, [r4, #0]
10004b9e:	   |  |  |   2900      	cmp	r1, #0
10004ba0:	   |  |  +-- d407      	bmi.n	10004bb2 <Cy_SysPm_SystemSetNormalRegulatorCurrent+0x52>
10004ba2:	   |  |  |   6821      	ldr	r1, [r4, #0]
10004ba4:	   |  |  |   3004      	adds	r0, #4
10004ba6:	   |  |  |   f1b1 3fff 	cmp.w	r1, #4294967295
10004baa:	   |  \--|-- dcef      	bgt.n	10004b8c <Cy_SysPm_SystemSetNormalRegulatorCurrent+0x2c>
10004bac:	   |     +-- e001      	b.n	10004bb2 <Cy_SysPm_SystemSetNormalRegulatorCurrent+0x52>
10004bae:	   |     |   bf00      	nop
10004bb0:	/--\-----|-X b330      	cbz	r0, 10004c00 <Cy_SysPm_SystemSetNormalRegulatorCurrent+0xa0>
10004bb2:	|        \-> 6820      	ldr	r0, [r4, #0]
10004bb4:	|            f020 6080 	bic.w	r0, r0, #67108864	; 0x4000000
10004bb8:	|            6020      	str	r0, [r4, #0]
10004bba:	|            2001      	movs	r0, #1
10004bbc:	|            f7ff fd18 	bl	100045f0 <Cy_SysLib_DelayUs>
10004bc0:	|            6820      	ldr	r0, [r4, #0]
10004bc2:	|            0200      	lsls	r0, r0, #8
10004bc4:	|     /----- d40d      	bmi.n	10004be2 <Cy_SysPm_SystemSetNormalRegulatorCurrent+0x82>
10004bc6:	|     |      f64f 701c 	movw	r0, #65308	; 0xff1c
10004bca:	|     |      f2c4 0026 	movt	r0, #16422	; 0x4026
10004bce:	|     |      f240 7140 	movw	r1, #1856	; 0x740
10004bd2:	|     |      6800      	ldr	r0, [r0, #0]
10004bd4:	|     |      f2c1 6100 	movt	r1, #5632	; 0x1600
10004bd8:	|     |      7809      	ldrb	r1, [r1, #0]
10004bda:	|     |      f000 001f 	and.w	r0, r0, #31
10004bde:	|     |      4288      	cmp	r0, r1
10004be0:	|     |  /-- d102      	bne.n	10004be8 <Cy_SysPm_SystemSetNormalRegulatorCurrent+0x88>
10004be2:	|     \--|-> 2000      	movs	r0, #0
10004be4:	|        |   bd10      	pop	{r4, pc}
10004be6:	|        |   bf00      	nop
10004be8:	|        \-> f641 0010 	movw	r0, #6160	; 0x1810
10004bec:	|            f2c1 6000 	movt	r0, #5632	; 0x1600
10004bf0:	|            6800      	ldr	r0, [r0, #0]
10004bf2:	|            f647 7130 	movw	r1, #32560	; 0x7f30
10004bf6:	|            f2c4 0126 	movt	r1, #16422	; 0x4026
10004bfa:	|            6008      	str	r0, [r1, #0]
10004bfc:	|            2000      	movs	r0, #0
10004bfe:	|            bd10      	pop	{r4, pc}
10004c00:	\----------> 2002      	movs	r0, #2
10004c02:	             f2c0 0042 	movt	r0, #66	; 0x42
10004c06:	             bd10      	pop	{r4, pc}

10004c08 <Cy_SysPm_WriteVoltageBitForFlash>:
10004c08:	       e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
10004c0c:	       4605      	mov	r5, r0
10004c0e:	       2802      	cmp	r0, #2
10004c10:	   /-- d300      	bcc.n	10004c14 <Cy_SysPm_WriteVoltageBitForFlash+0xc>
10004c12:	   |   be01      	bkpt	0x0001
10004c14:	   \-> f7ff fd48 	bl	100046a8 <Cy_SysLib_GetDeviceRevision>
10004c18:	       4607      	mov	r7, r0
10004c1a:	       f7ff fd3b 	bl	10004694 <Cy_SysLib_GetDevice>
10004c1e:	       4606      	mov	r6, r0
10004c20:	       200e      	movs	r0, #14
10004c22:	       f7fe fcc9 	bl	100035b8 <Cy_Prot_GetActivePC>
10004c26:	       2404      	movs	r4, #4
10004c28:	       f242 78b8 	movw	r8, #10168	; 0x27b8
10004c2c:	       f2c0 0442 	movt	r4, #66	; 0x42
10004c30:	       2f22      	cmp	r7, #34	; 0x22
10004c32:	       f6c0 0800 	movt	r8, #2048	; 0x800
10004c36:	   /-- d80d      	bhi.n	10004c54 <Cy_SysPm_WriteVoltageBitForFlash+0x4c>
10004c38:	   |   f5b6 7f80 	cmp.w	r6, #256	; 0x100
10004c3c:	   +-- d10a      	bne.n	10004c54 <Cy_SysPm_WriteVoltageBitForFlash+0x4c>
10004c3e:	   +-- b948      	cbnz	r0, 10004c54 <Cy_SysPm_WriteVoltageBitForFlash+0x4c>
10004c40:	   |   f8d8 0000 	ldr.w	r0, [r8]
10004c44:	   |   f24f 0118 	movw	r1, #61464	; 0xf018
10004c48:	   |   6840      	ldr	r0, [r0, #4]
10004c4a:	   |   2400      	movs	r4, #0
10004c4c:	   |   5842      	ldr	r2, [r0, r1]
10004c4e:	   |   f365 6218 	bfi	r2, r5, #24, #1
10004c52:	   |   5042      	str	r2, [r0, r1]
10004c54:	   \-> 2f22      	cmp	r7, #34	; 0x22
10004c56:	   /-- d805      	bhi.n	10004c64 <Cy_SysPm_WriteVoltageBitForFlash+0x5c>
10004c58:	   |   f5b6 7f80 	cmp.w	r6, #256	; 0x100
10004c5c:	   +-- d102      	bne.n	10004c64 <Cy_SysPm_WriteVoltageBitForFlash+0x5c>
10004c5e:	/--|-> 4620      	mov	r0, r4
10004c60:	|  |   e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
10004c64:	|  \-> f8d8 0000 	ldr.w	r0, [r8]
10004c68:	|      f890 1033 	ldrb.w	r1, [r0, #51]	; 0x33
10004c6c:	|      2901      	cmp	r1, #1
10004c6e:	|  /-- d802      	bhi.n	10004c76 <Cy_SysPm_WriteVoltageBitForFlash+0x6e>
10004c70:	|  |   be01      	bkpt	0x0001
10004c72:	|  |   f8d8 0000 	ldr.w	r0, [r8]
10004c76:	|  \-> 6a01      	ldr	r1, [r0, #32]
10004c78:	|      f8b0 00ba 	ldrh.w	r0, [r0, #186]	; 0xba
10004c7c:	|      2d00      	cmp	r5, #0
10004c7e:	|      eb01 0700 	add.w	r7, r1, r0
10004c82:	|      f240 0001 	movw	r0, #1
10004c86:	|      f6c0 4000 	movt	r0, #3072	; 0xc00
10004c8a:	|      f240 1101 	movw	r1, #257	; 0x101
10004c8e:	|      f2c3 0100 	movt	r1, #12288	; 0x3000
10004c92:	|      f100 0202 	add.w	r2, r0, #2
10004c96:	|      bf08      	it	eq
10004c98:	|      f100 5110 	addeq.w	r1, r0, #603979776	; 0x24000000
10004c9c:	|      bf04      	itt	eq
10004c9e:	|      2201      	moveq	r2, #1
10004ca0:	|      f6c0 4200 	movteq	r2, #3072	; 0xc00
10004ca4:	|      f5b6 7f80 	cmp.w	r6, #256	; 0x100
10004ca8:	|      bf08      	it	eq
10004caa:	|      460a      	moveq	r2, r1
10004cac:	|      4638      	mov	r0, r7
10004cae:	|      2101      	movs	r1, #1
10004cb0:	|      f7fe fa9a 	bl	100031e8 <Cy_IPC_Drv_SendMsgWord>
10004cb4:	|      2800      	cmp	r0, #0
10004cb6:	\----- d1d2      	bne.n	10004c5e <Cy_SysPm_WriteVoltageBitForFlash+0x56>
10004cb8:	       f8d8 0000 	ldr.w	r0, [r8]
10004cbc:	       f8d0 00bc 	ldr.w	r0, [r0, #188]	; 0xbc
10004cc0:	/----> 5839      	ldr	r1, [r7, r0]
10004cc2:	|      2900      	cmp	r1, #0
10004cc4:	|  /-- d50a      	bpl.n	10004cdc <Cy_SysPm_WriteVoltageBitForFlash+0xd4>
10004cc6:	|  |   5839      	ldr	r1, [r7, r0]
10004cc8:	|  |   f1b1 3fff 	cmp.w	r1, #4294967295
10004ccc:	|  +-- dc06      	bgt.n	10004cdc <Cy_SysPm_WriteVoltageBitForFlash+0xd4>
10004cce:	|  |   5839      	ldr	r1, [r7, r0]
10004cd0:	|  |   f1b1 3fff 	cmp.w	r1, #4294967295
10004cd4:	|  +-- dc02      	bgt.n	10004cdc <Cy_SysPm_WriteVoltageBitForFlash+0xd4>
10004cd6:	|  |   5839      	ldr	r1, [r7, r0]
10004cd8:	|  |   2900      	cmp	r1, #0
10004cda:	\--|-- d4f1      	bmi.n	10004cc0 <Cy_SysPm_WriteVoltageBitForFlash+0xb8>
10004cdc:	   \-> 68f8      	ldr	r0, [r7, #12]
10004cde:	       f000 407f 	and.w	r0, r0, #4278190080	; 0xff000000
10004ce2:	       f1b0 4020 	subs.w	r0, r0, #2684354560	; 0xa0000000
10004ce6:	       bf08      	it	eq
10004ce8:	       4604      	moveq	r4, r0
10004cea:	       4620      	mov	r0, r4
10004cec:	       e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

10004cf0 <Cy_SysTick_Enable>:
10004cf0:	f24e 0010 	movw	r0, #57360	; 0xe010
10004cf4:	f2ce 0000 	movt	r0, #57344	; 0xe000
10004cf8:	6801      	ldr	r1, [r0, #0]
10004cfa:	f041 0102 	orr.w	r1, r1, #2
10004cfe:	6001      	str	r1, [r0, #0]
10004d00:	6801      	ldr	r1, [r0, #0]
10004d02:	f041 0101 	orr.w	r1, r1, #1
10004d06:	6001      	str	r1, [r0, #0]
10004d08:	4770      	bx	lr
	...

10004d0c <Cy_SysTick_Init>:
10004d0c:	          f1b1 7f80 	cmp.w	r1, #16777216	; 0x1000000
10004d10:	      /-- d300      	bcc.n	10004d14 <Cy_SysTick_Init+0x8>
10004d12:	      |   be01      	bkpt	0x0001
10004d14:	      \-> b580      	push	{r7, lr}
10004d16:	          f242 6320 	movw	r3, #9760	; 0x2620
10004d1a:	          f6c0 0300 	movt	r3, #2048	; 0x800
10004d1e:	          2200      	movs	r2, #0
10004d20:	          f24e 0c10 	movw	ip, #57360	; 0xe010
10004d24:	          e9c3 2200 	strd	r2, r2, [r3]
10004d28:	          e9c3 2202 	strd	r2, r2, [r3, #8]
10004d2c:	          611a      	str	r2, [r3, #16]
10004d2e:	          f242 0200 	movw	r2, #8192	; 0x2000
10004d32:	          f644 53b5 	movw	r3, #19893	; 0x4db5
10004d36:	          f2ce 0c00 	movt	ip, #57344	; 0xe000
10004d3a:	          f6c0 0200 	movt	r2, #2048	; 0x800
10004d3e:	          f2c1 0300 	movt	r3, #4096	; 0x1000
10004d42:	          2804      	cmp	r0, #4
10004d44:	          63d3      	str	r3, [r2, #60]	; 0x3c
10004d46:	      /-- d109      	bne.n	10004d5c <Cy_SysTick_Init+0x50>
10004d48:	      |   f8dc 0000 	ldr.w	r0, [ip]
10004d4c:	      |   f040 0004 	orr.w	r0, r0, #4
10004d50:	      |   f1b1 7f80 	cmp.w	r1, #16777216	; 0x1000000
10004d54:	      |   f8cc 0000 	str.w	r0, [ip]
10004d58:	/-----|-- d317      	bcc.n	10004d8a <Cy_SysTick_Init+0x7e>
10004d5a:	|  /--|-- e015      	b.n	10004d88 <Cy_SysTick_Init+0x7c>
10004d5c:	|  |  \-> f242 72b8 	movw	r2, #10168	; 0x27b8
10004d60:	|  |      f6c0 0200 	movt	r2, #2048	; 0x800
10004d64:	|  |      6812      	ldr	r2, [r2, #0]
10004d66:	|  |      f04f 7e40 	mov.w	lr, #50331648	; 0x3000000
10004d6a:	|  |      6813      	ldr	r3, [r2, #0]
10004d6c:	|  |      f8d2 20a4 	ldr.w	r2, [r2, #164]	; 0xa4
10004d70:	|  |      ea0e 6000 	and.w	r0, lr, r0, lsl #24
10004d74:	|  |      50d0      	str	r0, [r2, r3]
10004d76:	|  |      f8dc 0000 	ldr.w	r0, [ip]
10004d7a:	|  |      f020 0004 	bic.w	r0, r0, #4
10004d7e:	|  |      f1b1 7f80 	cmp.w	r1, #16777216	; 0x1000000
10004d82:	|  |      f8cc 0000 	str.w	r0, [ip]
10004d86:	+--|----- d300      	bcc.n	10004d8a <Cy_SysTick_Init+0x7e>
10004d88:	|  \----> be01      	bkpt	0x0001
10004d8a:	\-------> f021 407f 	bic.w	r0, r1, #4278190080	; 0xff000000
10004d8e:	          f8cc 0004 	str.w	r0, [ip, #4]
10004d92:	          2000      	movs	r0, #0
10004d94:	          f8cc 0008 	str.w	r0, [ip, #8]
10004d98:	          f8dc 0000 	ldr.w	r0, [ip]
10004d9c:	          f040 0002 	orr.w	r0, r0, #2
10004da0:	          f8cc 0000 	str.w	r0, [ip]
10004da4:	          f8dc 0000 	ldr.w	r0, [ip]
10004da8:	          f040 0001 	orr.w	r0, r0, #1
10004dac:	          f8cc 0000 	str.w	r0, [ip]
10004db0:	          bd80      	pop	{r7, pc}
	...

10004db4 <Cy_SysTick_ServiceCallbacks>:
10004db4:	    b510      	push	{r4, lr}
10004db6:	    f24e 0010 	movw	r0, #57360	; 0xe010
10004dba:	    f2ce 0000 	movt	r0, #57344	; 0xe000
10004dbe:	    6800      	ldr	r0, [r0, #0]
10004dc0:	    03c0      	lsls	r0, r0, #15
10004dc2:	    bf58      	it	pl
10004dc4:	    bd10      	poppl	{r4, pc}
10004dc6:	    f242 6420 	movw	r4, #9760	; 0x2620
10004dca:	    f6c0 0400 	movt	r4, #2048	; 0x800
10004dce:	    6820      	ldr	r0, [r4, #0]
10004dd0:	    2800      	cmp	r0, #0
10004dd2:	    bf18      	it	ne
10004dd4:	    4780      	blxne	r0
10004dd6:	    6860      	ldr	r0, [r4, #4]
10004dd8:	    2800      	cmp	r0, #0
10004dda:	    bf18      	it	ne
10004ddc:	    4780      	blxne	r0
10004dde:	    68a0      	ldr	r0, [r4, #8]
10004de0:	    2800      	cmp	r0, #0
10004de2:	    bf18      	it	ne
10004de4:	    4780      	blxne	r0
10004de6:	    68e0      	ldr	r0, [r4, #12]
10004de8:	    2800      	cmp	r0, #0
10004dea:	    bf18      	it	ne
10004dec:	    4780      	blxne	r0
10004dee:	    6920      	ldr	r0, [r4, #16]
10004df0:	/-- b110      	cbz	r0, 10004df8 <Cy_SysTick_ServiceCallbacks+0x44>
10004df2:	|   e8bd 4010 	ldmia.w	sp!, {r4, lr}
10004df6:	|   4700      	bx	r0
10004df8:	\-> bd10      	pop	{r4, pc}
	...

10004dfc <Cy_SystemInit>:
10004dfc:	4770      	bx	lr
	...

10004e00 <Cy_SystemInitFpuEnable>:
10004e00:	b580      	push	{r7, lr}
10004e02:	f7fd fb2d 	bl	10002460 <Cy_SysLib_EnterCriticalSection>
10004e06:	f64e 5188 	movw	r1, #60808	; 0xed88
10004e0a:	f2ce 0100 	movt	r1, #57344	; 0xe000
10004e0e:	680a      	ldr	r2, [r1, #0]
10004e10:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
10004e14:	600a      	str	r2, [r1, #0]
10004e16:	f3bf 8f4f 	dsb	sy
10004e1a:	f3bf 8f6f 	isb	sy
10004e1e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
10004e22:	f7fd bb21 	b.w	10002468 <Cy_SysLib_ExitCriticalSection>
	...

10004e28 <SystemCoreClockUpdate>:
10004e28:	b5b0      	push	{r4, r5, r7, lr}
10004e2a:	2000      	movs	r0, #0
10004e2c:	f7fe fc12 	bl	10003654 <Cy_SysClk_ClkHfGetFrequency>
10004e30:	2800      	cmp	r0, #0
10004e32:	bf08      	it	eq
10004e34:	bdb0      	popeq	{r4, r5, r7, pc}
10004e36:	f242 25f8 	movw	r5, #8952	; 0x22f8
10004e3a:	f6c0 0500 	movt	r5, #2048	; 0x800
10004e3e:	4604      	mov	r4, r0
10004e40:	60a8      	str	r0, [r5, #8]
10004e42:	f7fe fd55 	bl	100038f0 <Cy_SysClk_ClkPeriGetDivider>
10004e46:	3001      	adds	r0, #1
10004e48:	fbb4 f0f0 	udiv	r0, r4, r0
10004e4c:	60e8      	str	r0, [r5, #12]
10004e4e:	f7fe fbe5 	bl	1000361c <Cy_SysClk_ClkFastGetDivider>
10004e52:	3001      	adds	r0, #1
10004e54:	fbb4 f0f0 	udiv	r0, r4, r0
10004e58:	f64d 6283 	movw	r2, #56963	; 0xde83
10004e5c:	1e41      	subs	r1, r0, #1
10004e5e:	f2c4 321b 	movt	r2, #17179	; 0x431b
10004e62:	fba1 2302 	umull	r2, r3, r1, r2
10004e66:	f644 52d3 	movw	r2, #19923	; 0x4dd3
10004e6a:	f2c1 0262 	movt	r2, #4194	; 0x1062
10004e6e:	fba1 1202 	umull	r1, r2, r1, r2
10004e72:	6068      	str	r0, [r5, #4]
10004e74:	2001      	movs	r0, #1
10004e76:	eb00 4193 	add.w	r1, r0, r3, lsr #18
10004e7a:	eb00 1092 	add.w	r0, r0, r2, lsr #6
10004e7e:	7029      	strb	r1, [r5, #0]
10004e80:	03c1      	lsls	r1, r0, #15
10004e82:	e9c5 0104 	strd	r0, r1, [r5, #16]
10004e86:	bdb0      	pop	{r4, r5, r7, pc}

10004e88 <SystemInit>:
10004e88:	    b5b0      	push	{r4, r5, r7, lr}
10004e8a:	    f246 3080 	movw	r0, #25472	; 0x6380
10004e8e:	    f2c1 0000 	movt	r0, #4096	; 0x1000
10004e92:	    f7fe fb8b 	bl	100035ac <Cy_PDL_Init>
10004e96:	    f7ff ffb1 	bl	10004dfc <Cy_SystemInit>
10004e9a:	    2000      	movs	r0, #0
10004e9c:	    f7fe fbda 	bl	10003654 <Cy_SysClk_ClkHfGetFrequency>
10004ea0:	/-- b338      	cbz	r0, 10004ef2 <SystemInit+0x6a>
10004ea2:	|   f242 25f8 	movw	r5, #8952	; 0x22f8
10004ea6:	|   f6c0 0500 	movt	r5, #2048	; 0x800
10004eaa:	|   4604      	mov	r4, r0
10004eac:	|   60a8      	str	r0, [r5, #8]
10004eae:	|   f7fe fd1f 	bl	100038f0 <Cy_SysClk_ClkPeriGetDivider>
10004eb2:	|   3001      	adds	r0, #1
10004eb4:	|   fbb4 f0f0 	udiv	r0, r4, r0
10004eb8:	|   60e8      	str	r0, [r5, #12]
10004eba:	|   f7fe fbaf 	bl	1000361c <Cy_SysClk_ClkFastGetDivider>
10004ebe:	|   3001      	adds	r0, #1
10004ec0:	|   fbb4 f0f0 	udiv	r0, r4, r0
10004ec4:	|   f64d 6283 	movw	r2, #56963	; 0xde83
10004ec8:	|   1e41      	subs	r1, r0, #1
10004eca:	|   f2c4 321b 	movt	r2, #17179	; 0x431b
10004ece:	|   fba1 2302 	umull	r2, r3, r1, r2
10004ed2:	|   f644 52d3 	movw	r2, #19923	; 0x4dd3
10004ed6:	|   f2c1 0262 	movt	r2, #4194	; 0x1062
10004eda:	|   fba1 1202 	umull	r1, r2, r1, r2
10004ede:	|   6068      	str	r0, [r5, #4]
10004ee0:	|   2001      	movs	r0, #1
10004ee2:	|   eb00 4193 	add.w	r1, r0, r3, lsr #18
10004ee6:	|   eb00 1092 	add.w	r0, r0, r2, lsr #6
10004eea:	|   7029      	strb	r1, [r5, #0]
10004eec:	|   03c1      	lsls	r1, r0, #15
10004eee:	|   e9c5 0104 	strd	r0, r1, [r5, #16]
10004ef2:	\-> 2003      	movs	r0, #3
10004ef4:	    2100      	movs	r1, #0
10004ef6:	    2200      	movs	r2, #0
10004ef8:	    f7fe faf6 	bl	100034e8 <Cy_IPC_Sema_Init>
10004efc:	    f242 6034 	movw	r0, #9780	; 0x2634
10004f00:	    f6c0 0000 	movt	r0, #2048	; 0x800
10004f04:	    f7fe f982 	bl	1000320c <Cy_IPC_Pipe_Config>
10004f08:	    f246 303c 	movw	r0, #25404	; 0x633c
10004f0c:	    f2c1 0000 	movt	r0, #4096	; 0x1000
10004f10:	    e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
10004f14:	    f7fe b9fc 	b.w	10003310 <Cy_IPC_Pipe_Init>

10004f18 <_cyhal_scb_pm_transition_pending>:
10004f18:	f242 5044 	movw	r0, #9540	; 0x2544
10004f1c:	f6c0 0000 	movt	r0, #2048	; 0x800
10004f20:	7800      	ldrb	r0, [r0, #0]
10004f22:	4770      	bx	lr

10004f24 <_cyhal_syspm_common_cb>:
10004f24:	                         e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
10004f28:	                         b083      	sub	sp, #12
10004f2a:	                         f242 621c 	movw	r2, #9756	; 0x261c
10004f2e:	                         f6c0 0200 	movt	r2, #2048	; 0x800
10004f32:	                         8852      	ldrh	r2, [r2, #2]
10004f34:	                         6844      	ldr	r4, [r0, #4]
10004f36:	                         27ff      	movs	r7, #255	; 0xff
10004f38:	                         f2c0 0742 	movt	r7, #66	; 0x42
10004f3c:	                         b2e6      	uxtb	r6, r4
10004f3e:	                     /-- b13a      	cbz	r2, 10004f50 <_cyhal_syspm_common_cb+0x2c>
10004f40:	                     |   2901      	cmp	r1, #1
10004f42:	                     +-- d105      	bne.n	10004f50 <_cyhal_syspm_common_cb+0x2c>
10004f44:	                     |   2e02      	cmp	r6, #2
10004f46:	                     +-- d103      	bne.n	10004f50 <_cyhal_syspm_common_cb+0x2c>
10004f48:	/--------------------|-> 4638      	mov	r0, r7
10004f4a:	|                    |   b003      	add	sp, #12
10004f4c:	|                    |   e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
10004f50:	|                    \-> 4608      	mov	r0, r1
10004f52:	|                        9101      	str	r1, [sp, #4]
10004f54:	|                        f000 f93c 	bl	100051d0 <_cyhal_utils_convert_pdltohal_pm_mode>
10004f58:	|                        4680      	mov	r8, r0
10004f5a:	|                        f242 3010 	movw	r0, #8976	; 0x2310
10004f5e:	|                        f6c0 0000 	movt	r0, #2048	; 0x800
10004f62:	|                        f1b8 0f02 	cmp.w	r8, #2
10004f66:	|                        f100 0104 	add.w	r1, r0, #4
10004f6a:	|                    /-- d005      	beq.n	10004f78 <_cyhal_syspm_common_cb+0x54>
10004f6c:	|                    |   f1b8 0f08 	cmp.w	r8, #8
10004f70:	|                    +-- d002      	beq.n	10004f78 <_cyhal_syspm_common_cb+0x54>
10004f72:	|                    |   460a      	mov	r2, r1
10004f74:	|                    |   4601      	mov	r1, r0
10004f76:	|                    |   4610      	mov	r0, r2
10004f78:	|                    \-> 6800      	ldr	r0, [r0, #0]
10004f7a:	|                        f8d1 9000 	ldr.w	r9, [r1]
10004f7e:	|                        f240 7189 	movw	r1, #1929	; 0x789
10004f82:	|                        4288      	cmp	r0, r1
10004f84:	|                        9002      	str	r0, [sp, #8]
10004f86:	|        /-------------- d03d      	beq.n	10005004 <_cyhal_syspm_common_cb+0xe0>
10004f88:	|        |               f1b8 0f01 	cmp.w	r8, #1
10004f8c:	|        |     /-------- d120      	bne.n	10004fd0 <_cyhal_syspm_common_cb+0xac>
10004f8e:	|        |     |         f8dd b008 	ldr.w	fp, [sp, #8]
10004f92:	|        |     |         f240 7a89 	movw	sl, #1929	; 0x789
10004f96:	|        |     |     /-- e003      	b.n	10004fa0 <_cyhal_syspm_common_cb+0x7c>
10004f98:	|        |     |  /--|-> f8db b00c 	ldr.w	fp, [fp, #12]
10004f9c:	|        |     |  |  |   45d3      	cmp	fp, sl
10004f9e:	|        +-----|--|--|-- d031      	beq.n	10005004 <_cyhal_syspm_common_cb+0xe0>
10004fa0:	|        |     |  |  \-> f8db 3000 	ldr.w	r3, [fp]
10004fa4:	|        |     |  |      2b00      	cmp	r3, #0
10004fa6:	|        |     |  +----- d0f7      	beq.n	10004f98 <_cyhal_syspm_common_cb+0x74>
10004fa8:	|        |     |  |      f89b 0004 	ldrb.w	r0, [fp, #4]
10004fac:	|        |     |  |      4020      	ands	r0, r4
10004fae:	|        |     |  |      b2c0      	uxtb	r0, r0
10004fb0:	|        |     |  |      42b0      	cmp	r0, r6
10004fb2:	|        |     |  |      bf04      	itt	eq
10004fb4:	|        |     |  |      f89b 0005 	ldrbeq.w	r0, [fp, #5]
10004fb8:	|        |     |  |      ea5f 70c0 	movseq.w	r0, r0, lsl #31
10004fbc:	|        |     |  +----- d1ec      	bne.n	10004f98 <_cyhal_syspm_common_cb+0x74>
10004fbe:	|        |     |  |      f8db 2008 	ldr.w	r2, [fp, #8]
10004fc2:	|        |     |  |      4630      	mov	r0, r6
10004fc4:	|        |     |  |      2101      	movs	r1, #1
10004fc6:	|        |     |  |      4798      	blx	r3
10004fc8:	|        |     |  |      2800      	cmp	r0, #0
10004fca:	|        |     |  \----- d1e5      	bne.n	10004f98 <_cyhal_syspm_common_cb+0x74>
10004fcc:	|        |     |         464d      	mov	r5, r9
10004fce:	|        |  /--|-------- e03c      	b.n	1000504a <_cyhal_syspm_common_cb+0x126>
10004fd0:	|        |  |  \-------> 9d02      	ldr	r5, [sp, #8]
10004fd2:	|        |  |            f240 7789 	movw	r7, #1929	; 0x789
10004fd6:	|        |  |        /-- e002      	b.n	10004fde <_cyhal_syspm_common_cb+0xba>
10004fd8:	|        |  |     /--|-> 68ed      	ldr	r5, [r5, #12]
10004fda:	|        |  |     |  |   42bd      	cmp	r5, r7
10004fdc:	|        +--|-----|--|-- d012      	beq.n	10005004 <_cyhal_syspm_common_cb+0xe0>
10004fde:	|        |  |     |  \-> 682b      	ldr	r3, [r5, #0]
10004fe0:	|        |  |     |      2b00      	cmp	r3, #0
10004fe2:	|        |  |     +----- d0f9      	beq.n	10004fd8 <_cyhal_syspm_common_cb+0xb4>
10004fe4:	|        |  |     |      7928      	ldrb	r0, [r5, #4]
10004fe6:	|        |  |     |      4020      	ands	r0, r4
10004fe8:	|        |  |     |      b2c0      	uxtb	r0, r0
10004fea:	|        |  |     |      42b0      	cmp	r0, r6
10004fec:	|        |  |     +----- d1f4      	bne.n	10004fd8 <_cyhal_syspm_common_cb+0xb4>
10004fee:	|        |  |     |      7968      	ldrb	r0, [r5, #5]
10004ff0:	|        |  |     |      ea00 0008 	and.w	r0, r0, r8
10004ff4:	|        |  |     |      4540      	cmp	r0, r8
10004ff6:	|        |  |     +----- d0ef      	beq.n	10004fd8 <_cyhal_syspm_common_cb+0xb4>
10004ff8:	|        |  |     |      68aa      	ldr	r2, [r5, #8]
10004ffa:	|        |  |     |      4630      	mov	r0, r6
10004ffc:	|        |  |     |      4641      	mov	r1, r8
10004ffe:	|        |  |     |      4798      	blx	r3
10005000:	|        |  |     \----- e7ea      	b.n	10004fd8 <_cyhal_syspm_common_cb+0xb4>
10005002:	|        |  |            bf00      	nop
10005004:	|        \--|----------> f240 7089 	movw	r0, #1929	; 0x789
10005008:	|           |            4581      	cmp	r9, r0
1000500a:	|        /--|----------- d05d      	beq.n	100050c8 <_cyhal_syspm_common_cb+0x1a4>
1000500c:	|        |  |            f1b8 0f01 	cmp.w	r8, #1
10005010:	|        |  |  /-------- d13c      	bne.n	1000508c <_cyhal_syspm_common_cb+0x168>
10005012:	|        |  |  |         f240 7789 	movw	r7, #1929	; 0x789
10005016:	|        |  |  |         464d      	mov	r5, r9
10005018:	|        |  |  |     /-- e003      	b.n	10005022 <_cyhal_syspm_common_cb+0xfe>
1000501a:	|        |  |  |     |   bf00      	nop
1000501c:	|        |  |  |  /--|-> 68ed      	ldr	r5, [r5, #12]
1000501e:	|        |  |  |  |  |   42bd      	cmp	r5, r7
10005020:	|        +--|--|--|--|-- d052      	beq.n	100050c8 <_cyhal_syspm_common_cb+0x1a4>
10005022:	|        |  |  |  |  \-> 682b      	ldr	r3, [r5, #0]
10005024:	|        |  |  |  |      2b00      	cmp	r3, #0
10005026:	|        |  |  |  +----- d0f9      	beq.n	1000501c <_cyhal_syspm_common_cb+0xf8>
10005028:	|        |  |  |  |      7928      	ldrb	r0, [r5, #4]
1000502a:	|        |  |  |  |      4020      	ands	r0, r4
1000502c:	|        |  |  |  |      b2c0      	uxtb	r0, r0
1000502e:	|        |  |  |  |      42b0      	cmp	r0, r6
10005030:	|        |  |  |  |      bf04      	itt	eq
10005032:	|        |  |  |  |      7968      	ldrbeq	r0, [r5, #5]
10005034:	|        |  |  |  |      ea5f 70c0 	movseq.w	r0, r0, lsl #31
10005038:	|        |  |  |  +----- d1f0      	bne.n	1000501c <_cyhal_syspm_common_cb+0xf8>
1000503a:	|        |  |  |  |      68aa      	ldr	r2, [r5, #8]
1000503c:	|        |  |  |  |      4630      	mov	r0, r6
1000503e:	|        |  |  |  |      2101      	movs	r1, #1
10005040:	|        |  |  |  |      4798      	blx	r3
10005042:	|        |  |  |  |      2800      	cmp	r0, #0
10005044:	|        |  |  |  \----- d1ea      	bne.n	1000501c <_cyhal_syspm_common_cb+0xf8>
10005046:	|        |  |  |         f240 7b89 	movw	fp, #1929	; 0x789
1000504a:	|        |  \--|-------> 27ff      	movs	r7, #255	; 0xff
1000504c:	|        |     |         f2c0 0742 	movt	r7, #66	; 0x42
10005050:	|        |     |         f1b8 0f01 	cmp.w	r8, #1
10005054:	|        |     |     /-- d002      	beq.n	1000505c <_cyhal_syspm_common_cb+0x138>
10005056:	|  /-----|-----|-----|-- e0a4      	b.n	100051a2 <_cyhal_syspm_common_cb+0x27e>
10005058:	|  |     |     |  /--|-> f8d9 900c 	ldr.w	r9, [r9, #12]
1000505c:	|  |     |     |  |  \-> 45a9      	cmp	r9, r5
1000505e:	|  |  /--|-----|--|----- f000 809d 	beq.w	1000519c <_cyhal_syspm_common_cb+0x278>
10005062:	|  |  |  |     |  |      f8d9 3000 	ldr.w	r3, [r9]
10005066:	|  |  |  |     |  |      2b00      	cmp	r3, #0
10005068:	|  |  |  |     |  +----- d0f6      	beq.n	10005058 <_cyhal_syspm_common_cb+0x134>
1000506a:	|  |  |  |     |  |      f899 0004 	ldrb.w	r0, [r9, #4]
1000506e:	|  |  |  |     |  |      4020      	ands	r0, r4
10005070:	|  |  |  |     |  |      b2c0      	uxtb	r0, r0
10005072:	|  |  |  |     |  |      42b0      	cmp	r0, r6
10005074:	|  |  |  |     |  +----- d1f0      	bne.n	10005058 <_cyhal_syspm_common_cb+0x134>
10005076:	|  |  |  |     |  |      f899 0005 	ldrb.w	r0, [r9, #5]
1000507a:	|  |  |  |     |  |      0780      	lsls	r0, r0, #30
1000507c:	|  |  |  |     |  +----- d4ec      	bmi.n	10005058 <_cyhal_syspm_common_cb+0x134>
1000507e:	|  |  |  |     |  |      f8d9 2008 	ldr.w	r2, [r9, #8]
10005082:	|  |  |  |     |  |      4630      	mov	r0, r6
10005084:	|  |  |  |     |  |      2102      	movs	r1, #2
10005086:	|  |  |  |     |  |      4798      	blx	r3
10005088:	|  |  |  |     |  \----- e7e6      	b.n	10005058 <_cyhal_syspm_common_cb+0x134>
1000508a:	|  |  |  |     |         bf00      	nop
1000508c:	|  |  |  |     \-------> f240 7589 	movw	r5, #1929	; 0x789
10005090:	|  |  |  |           /-- e004      	b.n	1000509c <_cyhal_syspm_common_cb+0x178>
10005092:	|  |  |  |           |   bf00      	nop
10005094:	|  |  |  |        /--|-> f8d9 900c 	ldr.w	r9, [r9, #12]
10005098:	|  |  |  |        |  |   45a9      	cmp	r9, r5
1000509a:	|  |  |  +--------|--|-- d015      	beq.n	100050c8 <_cyhal_syspm_common_cb+0x1a4>
1000509c:	|  |  |  |        |  \-> f8d9 3000 	ldr.w	r3, [r9]
100050a0:	|  |  |  |        |      2b00      	cmp	r3, #0
100050a2:	|  |  |  |        +----- d0f7      	beq.n	10005094 <_cyhal_syspm_common_cb+0x170>
100050a4:	|  |  |  |        |      f899 0004 	ldrb.w	r0, [r9, #4]
100050a8:	|  |  |  |        |      4020      	ands	r0, r4
100050aa:	|  |  |  |        |      b2c0      	uxtb	r0, r0
100050ac:	|  |  |  |        |      42b0      	cmp	r0, r6
100050ae:	|  |  |  |        +----- d1f1      	bne.n	10005094 <_cyhal_syspm_common_cb+0x170>
100050b0:	|  |  |  |        |      f899 0005 	ldrb.w	r0, [r9, #5]
100050b4:	|  |  |  |        |      ea00 0008 	and.w	r0, r0, r8
100050b8:	|  |  |  |        |      4540      	cmp	r0, r8
100050ba:	|  |  |  |        +----- d0eb      	beq.n	10005094 <_cyhal_syspm_common_cb+0x170>
100050bc:	|  |  |  |        |      f8d9 2008 	ldr.w	r2, [r9, #8]
100050c0:	|  |  |  |        |      4630      	mov	r0, r6
100050c2:	|  |  |  |        |      4641      	mov	r1, r8
100050c4:	|  |  |  |        |      4798      	blx	r3
100050c6:	|  |  |  |        \----- e7e5      	b.n	10005094 <_cyhal_syspm_common_cb+0x170>
100050c8:	|  |  |  \-------------> 2001      	movs	r0, #1
100050ca:	|  |  |                  2700      	movs	r7, #0
100050cc:	|  |  |     /----------> 2e10      	cmp	r6, #16
100050ce:	|  |  |     |            bf08      	it	eq
100050d0:	|  |  |     |            f1b8 0f04 	cmpeq.w	r8, #4
100050d4:	|  |  |     |        /-- d02a      	beq.n	1000512c <_cyhal_syspm_common_cb+0x208>
100050d6:	|  |  |     |        |   2e08      	cmp	r6, #8
100050d8:	|  |  |     |        |   bf08      	it	eq
100050da:	|  |  |     |        |   f1b8 0f08 	cmpeq.w	r8, #8
100050de:	|  |  |     |     /--|-- d037      	beq.n	10005150 <_cyhal_syspm_common_cb+0x22c>
100050e0:	|  |  |     |     |  |   1e71      	subs	r1, r6, #1
100050e2:	|  |  |     |     |  |   2200      	movs	r2, #0
100050e4:	|  |  |     |     |  |   2901      	cmp	r1, #1
100050e6:	|  |  |     |     |  |   f080 0001 	eor.w	r0, r0, #1
100050ea:	|  |  |     |     |  |   bf88      	it	hi
100050ec:	|  |  |     |     |  |   2201      	movhi	r2, #1
100050ee:	|  |  |     |     |  |   4310      	orrs	r0, r2
100050f0:	+--|--|-----|-----|--|-- f47f af2a 	bne.w	10004f48 <_cyhal_syspm_common_cb+0x24>
100050f4:	|  |  |     |     |  |   9801      	ldr	r0, [sp, #4]
100050f6:	|  |  |     |     |  |   2808      	cmp	r0, #8
100050f8:	|  |  |     |  /--|--|-- d03c      	beq.n	10005174 <_cyhal_syspm_common_cb+0x250>
100050fa:	|  |  |     |  |  |  |   2804      	cmp	r0, #4
100050fc:	+--|--|-----|--|--|--|-- f47f af24 	bne.w	10004f48 <_cyhal_syspm_common_cb+0x24>
10005100:	|  |  |     |  |  |  |   f24e 0010 	movw	r0, #57360	; 0xe010
10005104:	|  |  |     |  |  |  |   f242 631c 	movw	r3, #9756	; 0x261c
10005108:	|  |  |     |  |  |  |   f2ce 0000 	movt	r0, #57344	; 0xe000
1000510c:	|  |  |     |  |  |  |   f6c0 0300 	movt	r3, #2048	; 0x800
10005110:	|  |  |     |  |  |  |   6801      	ldr	r1, [r0, #0]
10005112:	|  |  |     |  |  |  |   781a      	ldrb	r2, [r3, #0]
10005114:	|  |  |     |  |  |  |   4011      	ands	r1, r2
10005116:	|  |  |     |  |  |  |   7059      	strb	r1, [r3, #1]
10005118:	+--|--|-----|--|--|--|-- f43f af16 	beq.w	10004f48 <_cyhal_syspm_common_cb+0x24>
1000511c:	|  |  |     |  |  |  |   6801      	ldr	r1, [r0, #0]
1000511e:	|  |  |     |  |  |  |   f021 0101 	bic.w	r1, r1, #1
10005122:	|  |  |     |  |  |  |   6001      	str	r1, [r0, #0]
10005124:	|  |  |     |  |  |  |   4638      	mov	r0, r7
10005126:	|  |  |     |  |  |  |   b003      	add	sp, #12
10005128:	|  |  |     |  |  |  |   e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1000512c:	|  |  |     |  |  |  \-> 2000      	movs	r0, #0
1000512e:	|  |  |     |  |  |      f7fe fa91 	bl	10003654 <Cy_SysClk_ClkHfGetFrequency>
10005132:	|  |  |     |  |  |      f64d 6183 	movw	r1, #56963	; 0xde83
10005136:	|  |  |     |  |  |      f2c4 311b 	movt	r1, #17179	; 0x431b
1000513a:	|  |  |     |  |  |      fba0 0101 	umull	r0, r1, r0, r1
1000513e:	|  |  |     |  |  |      0c89      	lsrs	r1, r1, #18
10005140:	|  |  |     |  |  |      2001      	movs	r0, #1
10005142:	|  |  |     |  |  |      f7ff fae5 	bl	10004710 <Cy_SysLib_SetWaitStates>
10005146:	|  |  |     |  |  |      4638      	mov	r0, r7
10005148:	|  |  |     |  |  |      b003      	add	sp, #12
1000514a:	|  |  |     |  |  |      e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1000514e:	|  |  |     |  |  |      bf00      	nop
10005150:	|  |  |     |  |  \----> 2000      	movs	r0, #0
10005152:	|  |  |     |  |         f7fe fa7f 	bl	10003654 <Cy_SysClk_ClkHfGetFrequency>
10005156:	|  |  |     |  |         f64d 6183 	movw	r1, #56963	; 0xde83
1000515a:	|  |  |     |  |         f2c4 311b 	movt	r1, #17179	; 0x431b
1000515e:	|  |  |     |  |         fba0 0101 	umull	r0, r1, r0, r1
10005162:	|  |  |     |  |         0c89      	lsrs	r1, r1, #18
10005164:	|  |  |     |  |         2000      	movs	r0, #0
10005166:	|  |  |     |  |         f7ff fad3 	bl	10004710 <Cy_SysLib_SetWaitStates>
1000516a:	|  |  |     |  |         4638      	mov	r0, r7
1000516c:	|  |  |     |  |         b003      	add	sp, #12
1000516e:	|  |  |     |  |         e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
10005172:	|  |  |     |  |         bf00      	nop
10005174:	|  |  |     |  \-------> f242 601c 	movw	r0, #9756	; 0x261c
10005178:	|  |  |     |            f6c0 0000 	movt	r0, #2048	; 0x800
1000517c:	|  |  |     |            7840      	ldrb	r0, [r0, #1]
1000517e:	|  |  |     |            2800      	cmp	r0, #0
10005180:	\--|--|-----|----------- f43f aee2 	beq.w	10004f48 <_cyhal_syspm_common_cb+0x24>
10005184:	   |  |     |            f24e 0010 	movw	r0, #57360	; 0xe010
10005188:	   |  |     |            f2ce 0000 	movt	r0, #57344	; 0xe000
1000518c:	   |  |     |            6801      	ldr	r1, [r0, #0]
1000518e:	   |  |     |            f041 0101 	orr.w	r1, r1, #1
10005192:	   |  |     |            6001      	str	r1, [r0, #0]
10005194:	   |  |     |            4638      	mov	r0, r7
10005196:	   |  |     |            b003      	add	sp, #12
10005198:	   |  |     |            e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1000519c:	   |  \-----|----------> 9d02      	ldr	r5, [sp, #8]
1000519e:	   |        |            455d      	cmp	r5, fp
100051a0:	   |        |        /-- d106      	bne.n	100051b0 <_cyhal_syspm_common_cb+0x28c>
100051a2:	   \--------|--------|-> 2000      	movs	r0, #0
100051a4:	            +--------|-- e792      	b.n	100050cc <_cyhal_syspm_common_cb+0x1a8>
100051a6:	            |        |   bf00      	nop
100051a8:	            |     /--|-> 68ed      	ldr	r5, [r5, #12]
100051aa:	            |     |  |   2000      	movs	r0, #0
100051ac:	            |     |  |   455d      	cmp	r5, fp
100051ae:	            \-----|--|-- d08d      	beq.n	100050cc <_cyhal_syspm_common_cb+0x1a8>
100051b0:	                  |  \-> 682b      	ldr	r3, [r5, #0]
100051b2:	                  |      2b00      	cmp	r3, #0
100051b4:	                  +----- d0f8      	beq.n	100051a8 <_cyhal_syspm_common_cb+0x284>
100051b6:	                  |      7928      	ldrb	r0, [r5, #4]
100051b8:	                  |      4020      	ands	r0, r4
100051ba:	                  |      b2c0      	uxtb	r0, r0
100051bc:	                  |      42b0      	cmp	r0, r6
100051be:	                  +----- d1f3      	bne.n	100051a8 <_cyhal_syspm_common_cb+0x284>
100051c0:	                  |      7968      	ldrb	r0, [r5, #5]
100051c2:	                  |      0780      	lsls	r0, r0, #30
100051c4:	                  +----- d4f0      	bmi.n	100051a8 <_cyhal_syspm_common_cb+0x284>
100051c6:	                  |      68aa      	ldr	r2, [r5, #8]
100051c8:	                  |      4630      	mov	r0, r6
100051ca:	                  |      2102      	movs	r1, #2
100051cc:	                  |      4798      	blx	r3
100051ce:	                  \----- e7eb      	b.n	100051a8 <_cyhal_syspm_common_cb+0x284>

100051d0 <_cyhal_utils_convert_pdltohal_pm_mode>:
100051d0:	    2808      	cmp	r0, #8
100051d2:	/-- d805      	bhi.n	100051e0 <_cyhal_utils_convert_pdltohal_pm_mode+0x10>
100051d4:	|   2101      	movs	r1, #1
100051d6:	|   4081      	lsls	r1, r0
100051d8:	|   f411 7f8b 	tst.w	r1, #278	; 0x116
100051dc:	|   bf18      	it	ne
100051de:	|   4770      	bxne	lr
100051e0:	\-> 2001      	movs	r0, #1
100051e2:	    be01      	bkpt	0x0001
100051e4:	    4770      	bx	lr
	...

100051e8 <_sys_close>:
100051e8:	2000      	movs	r0, #0
100051ea:	4770      	bx	lr

100051ec <_sys_exit>:
100051ec:	/-- e7fe      	b.n	100051ec <_sys_exit>
	...

100051f0 <_sys_flen>:
100051f0:	2000      	movs	r0, #0
100051f2:	4770      	bx	lr

100051f4 <_sys_istty>:
100051f4:	2000      	movs	r0, #0
100051f6:	4770      	bx	lr

100051f8 <_sys_open>:
100051f8:	2001      	movs	r0, #1
100051fa:	4770      	bx	lr

100051fc <_sys_seek>:
100051fc:	f04f 30ff 	mov.w	r0, #4294967295
10005200:	4770      	bx	lr
	...

10005204 <_sys_write>:
10005204:	2000      	movs	r0, #0
10005206:	4770      	bx	lr

10005208 <_ttywrch>:
10005208:	4770      	bx	lr
	...

1000520c <addRoundKey>:
1000520c:	b580      	push	{r7, lr}
1000520e:	f8d0 e000 	ldr.w	lr, [r0]
10005212:	010a      	lsls	r2, r1, #4
10005214:	1d01      	adds	r1, r0, #4
10005216:	f811 c002 	ldrb.w	ip, [r1, r2]
1000521a:	f89e 3000 	ldrb.w	r3, [lr]
1000521e:	ea83 030c 	eor.w	r3, r3, ip
10005222:	f88e 3000 	strb.w	r3, [lr]
10005226:	f8d0 e000 	ldr.w	lr, [r0]
1000522a:	f102 0c01 	add.w	ip, r2, #1
1000522e:	f811 c00c 	ldrb.w	ip, [r1, ip]
10005232:	f89e 3001 	ldrb.w	r3, [lr, #1]
10005236:	ea83 030c 	eor.w	r3, r3, ip
1000523a:	f88e 3001 	strb.w	r3, [lr, #1]
1000523e:	f8d0 e000 	ldr.w	lr, [r0]
10005242:	f102 0c02 	add.w	ip, r2, #2
10005246:	f811 c00c 	ldrb.w	ip, [r1, ip]
1000524a:	f89e 3002 	ldrb.w	r3, [lr, #2]
1000524e:	ea83 030c 	eor.w	r3, r3, ip
10005252:	f88e 3002 	strb.w	r3, [lr, #2]
10005256:	f8d0 e000 	ldr.w	lr, [r0]
1000525a:	f102 0c03 	add.w	ip, r2, #3
1000525e:	f811 c00c 	ldrb.w	ip, [r1, ip]
10005262:	f89e 3003 	ldrb.w	r3, [lr, #3]
10005266:	ea83 030c 	eor.w	r3, r3, ip
1000526a:	f88e 3003 	strb.w	r3, [lr, #3]
1000526e:	f8d0 e000 	ldr.w	lr, [r0]
10005272:	f102 0c04 	add.w	ip, r2, #4
10005276:	f811 c00c 	ldrb.w	ip, [r1, ip]
1000527a:	f89e 3004 	ldrb.w	r3, [lr, #4]
1000527e:	ea83 030c 	eor.w	r3, r3, ip
10005282:	f88e 3004 	strb.w	r3, [lr, #4]
10005286:	f8d0 e000 	ldr.w	lr, [r0]
1000528a:	f102 0c05 	add.w	ip, r2, #5
1000528e:	f811 c00c 	ldrb.w	ip, [r1, ip]
10005292:	f89e 3005 	ldrb.w	r3, [lr, #5]
10005296:	ea83 030c 	eor.w	r3, r3, ip
1000529a:	f88e 3005 	strb.w	r3, [lr, #5]
1000529e:	f8d0 e000 	ldr.w	lr, [r0]
100052a2:	f102 0c06 	add.w	ip, r2, #6
100052a6:	f811 c00c 	ldrb.w	ip, [r1, ip]
100052aa:	f89e 3006 	ldrb.w	r3, [lr, #6]
100052ae:	ea83 030c 	eor.w	r3, r3, ip
100052b2:	f88e 3006 	strb.w	r3, [lr, #6]
100052b6:	f8d0 e000 	ldr.w	lr, [r0]
100052ba:	f102 0c07 	add.w	ip, r2, #7
100052be:	f811 c00c 	ldrb.w	ip, [r1, ip]
100052c2:	f89e 3007 	ldrb.w	r3, [lr, #7]
100052c6:	ea83 030c 	eor.w	r3, r3, ip
100052ca:	f88e 3007 	strb.w	r3, [lr, #7]
100052ce:	f8d0 e000 	ldr.w	lr, [r0]
100052d2:	f102 0c08 	add.w	ip, r2, #8
100052d6:	f811 c00c 	ldrb.w	ip, [r1, ip]
100052da:	f89e 3008 	ldrb.w	r3, [lr, #8]
100052de:	ea83 030c 	eor.w	r3, r3, ip
100052e2:	f88e 3008 	strb.w	r3, [lr, #8]
100052e6:	f8d0 e000 	ldr.w	lr, [r0]
100052ea:	f102 0c09 	add.w	ip, r2, #9
100052ee:	f811 c00c 	ldrb.w	ip, [r1, ip]
100052f2:	f89e 3009 	ldrb.w	r3, [lr, #9]
100052f6:	ea83 030c 	eor.w	r3, r3, ip
100052fa:	f88e 3009 	strb.w	r3, [lr, #9]
100052fe:	f8d0 e000 	ldr.w	lr, [r0]
10005302:	f102 0c0a 	add.w	ip, r2, #10
10005306:	f811 c00c 	ldrb.w	ip, [r1, ip]
1000530a:	f89e 300a 	ldrb.w	r3, [lr, #10]
1000530e:	ea83 030c 	eor.w	r3, r3, ip
10005312:	f88e 300a 	strb.w	r3, [lr, #10]
10005316:	f8d0 e000 	ldr.w	lr, [r0]
1000531a:	f102 0c0b 	add.w	ip, r2, #11
1000531e:	f811 c00c 	ldrb.w	ip, [r1, ip]
10005322:	f89e 300b 	ldrb.w	r3, [lr, #11]
10005326:	ea83 030c 	eor.w	r3, r3, ip
1000532a:	f88e 300b 	strb.w	r3, [lr, #11]
1000532e:	f8d0 e000 	ldr.w	lr, [r0]
10005332:	f102 0c0c 	add.w	ip, r2, #12
10005336:	f811 c00c 	ldrb.w	ip, [r1, ip]
1000533a:	f89e 300c 	ldrb.w	r3, [lr, #12]
1000533e:	ea83 030c 	eor.w	r3, r3, ip
10005342:	f88e 300c 	strb.w	r3, [lr, #12]
10005346:	f8d0 e000 	ldr.w	lr, [r0]
1000534a:	f102 0c0d 	add.w	ip, r2, #13
1000534e:	f811 c00c 	ldrb.w	ip, [r1, ip]
10005352:	f89e 300d 	ldrb.w	r3, [lr, #13]
10005356:	ea83 030c 	eor.w	r3, r3, ip
1000535a:	f88e 300d 	strb.w	r3, [lr, #13]
1000535e:	f8d0 e000 	ldr.w	lr, [r0]
10005362:	f102 0c0e 	add.w	ip, r2, #14
10005366:	f811 c00c 	ldrb.w	ip, [r1, ip]
1000536a:	f89e 300e 	ldrb.w	r3, [lr, #14]
1000536e:	320f      	adds	r2, #15
10005370:	ea83 030c 	eor.w	r3, r3, ip
10005374:	f88e 300e 	strb.w	r3, [lr, #14]
10005378:	6800      	ldr	r0, [r0, #0]
1000537a:	5c89      	ldrb	r1, [r1, r2]
1000537c:	7bc2      	ldrb	r2, [r0, #15]
1000537e:	4051      	eors	r1, r2
10005380:	73c1      	strb	r1, [r0, #15]
10005382:	bd80      	pop	{r7, pc}

10005384 <cybsp_init>:
10005384:	       b510      	push	{r4, lr}
10005386:	       f000 f823 	bl	100053d0 <cyhal_hwmgr_init>
1000538a:	       4604      	mov	r4, r0
1000538c:	   /-- b918      	cbnz	r0, 10005396 <cybsp_init+0x12>
1000538e:	   |   f000 f925 	bl	100055dc <cyhal_syspm_init>
10005392:	   |   4604      	mov	r4, r0
10005394:	/--|-- b120      	cbz	r0, 100053a0 <cybsp_init+0x1c>
10005396:	|  \-> f000 fb05 	bl	100059a4 <init_cycfg_all>
1000539a:	|      4620      	mov	r0, r4
1000539c:	|      bd10      	pop	{r4, pc}
1000539e:	|      bf00      	nop
100053a0:	\----> 2000      	movs	r0, #0
100053a2:	       f640 41e4 	movw	r1, #3300	; 0xce4
100053a6:	       f000 f941 	bl	1000562c <cyhal_syspm_set_supply_voltage>
100053aa:	       f000 fafb 	bl	100059a4 <init_cycfg_all>
100053ae:	       f242 30cc 	movw	r0, #9164	; 0x23cc
100053b2:	       f6c0 0000 	movt	r0, #2048	; 0x800
100053b6:	       f7ff fb65 	bl	10004a84 <Cy_SysPm_RegisterCallback>
100053ba:	       2400      	movs	r4, #0
100053bc:	       f2c0 6402 	movt	r4, #1538	; 0x602
100053c0:	       2800      	cmp	r0, #0
100053c2:	       bf18      	it	ne
100053c4:	       2400      	movne	r4, #0
100053c6:	       4620      	mov	r0, r4
100053c8:	       bd10      	pop	{r4, pc}
	...

100053cc <cycfg_ClockStartupError>:
100053cc:	/-- e7fe      	b.n	100053cc <cycfg_ClockStartupError>
	...

100053d0 <cyhal_hwmgr_init>:
100053d0:	2000      	movs	r0, #0
100053d2:	4770      	bx	lr

100053d4 <cyhal_hwmgr_reserve>:
100053d4:	                e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
100053d8:	                b081      	sub	sp, #4
100053da:	                4604      	mov	r4, r0
100053dc:	                f7fd f840 	bl	10002460 <Cy_SysLib_EnterCriticalSection>
100053e0:	                7823      	ldrb	r3, [r4, #0]
100053e2:	                f246 4e5e 	movw	lr, #25694	; 0x645e
100053e6:	                7862      	ldrb	r2, [r4, #1]
100053e8:	                f894 b002 	ldrb.w	fp, [r4, #2]
100053ec:	                2b04      	cmp	r3, #4
100053ee:	                f2c1 0e00 	movt	lr, #4096	; 0x1000
100053f2:	                f04f 0401 	mov.w	r4, #1
100053f6:	                f640 3628 	movw	r6, #2856	; 0xb28
100053fa:	                bf02      	ittt	eq
100053fc:	                4693      	moveq	fp, r2
100053fe:	                220d      	moveq	r2, #13
10005400:	                2305      	moveq	r3, #5
10005402:	                2b1c      	cmp	r3, #28
10005404:	                bf9a      	itte	ls
10005406:	                eb0e 0743 	addls.w	r7, lr, r3, lsl #1
1000540a:	                f8b7 a002 	ldrhls.w	sl, [r7, #2]
1000540e:	                f240 1a31 	movwhi	sl, #305	; 0x131
10005412:	                f83e c013 	ldrh.w	ip, [lr, r3, lsl #1]
10005416:	                409c      	lsls	r4, r3
10005418:	                f6c0 4600 	movt	r6, #3072	; 0xc00
1000541c:	                f240 1900 	movw	r9, #256	; 0x100
10005420:	                ea14 0806 	ands.w	r8, r4, r6
10005424:	                f2c0 4902 	movt	r9, #1026	; 0x402
10005428:	            /-- d020      	beq.n	1000546c <cyhal_hwmgr_reserve+0x98>
1000542a:	            |   1edc      	subs	r4, r3, #3
1000542c:	            |   2c18      	cmp	r4, #24
1000542e:	         /--|-- d821      	bhi.n	10005474 <cyhal_hwmgr_reserve+0xa0>
10005430:	         |  |   f246 4640 	movw	r6, #25664	; 0x6440
10005434:	         |  |   271a      	movs	r7, #26
10005436:	         |  |   f2c1 0600 	movt	r6, #4096	; 0x1000
1000543a:	         |  |   e8df f004 	tbb	[pc, r4]
1000543e:	         |  |   1b0d      	.short	0x1b0d
10005440:	         |  |   0d1b1b32 	.word	0x0d1b1b32
10005444:	         |  |   1b2d1b23 	.word	0x1b2d1b23
10005448:	         |  |   1b1b1b1b 	.word	0x1b1b1b1b
1000544c:	         |  |   1b1b1b1b 	.word	0x1b1b1b1b
10005450:	         |  |   1b1b1b1b 	.word	0x1b1b1b1b
10005454:	         |  |   000d811b 	.word	0x000d811b
10005458:	         |  |   f246 56d4 	movw	r6, #26068	; 0x65d4
1000545c:	         |  |   2701      	movs	r7, #1
1000545e:	         |  |   f2c1 0600 	movt	r6, #4096	; 0x1000
10005462:	         |  |   b2d4      	uxtb	r4, r2
10005464:	         |  |   42bc      	cmp	r4, r7
10005466:	/--------|--|-- d206      	bcs.n	10005476 <cyhal_hwmgr_reserve+0xa2>
10005468:	|  /-----|--|-- e01e      	b.n	100054a8 <cyhal_hwmgr_reserve+0xd4>
1000546a:	|  |     |  |   bf00      	nop
1000546c:	|  |     |  \-> fa5c f782 	uxtab	r7, ip, r2
10005470:	|  |     |  /-- e025      	b.n	100054be <cyhal_hwmgr_reserve+0xea>
10005472:	|  |     |  |   bf00      	nop
10005474:	|  |     \--|-> be01      	bkpt	0x0001
10005476:	>--|--------|-> f7fc fff7 	bl	10002468 <Cy_SysLib_ExitCriticalSection>
1000547a:	|  |        |   4648      	mov	r0, r9
1000547c:	|  |        |   b001      	add	sp, #4
1000547e:	|  |        |   e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
10005482:	|  |        |   bf00      	nop
10005484:	|  |        |   f246 465a 	movw	r6, #25690	; 0x645a
10005488:	|  |        |   2702      	movs	r7, #2
1000548a:	|  |        |   f2c1 0600 	movt	r6, #4096	; 0x1000
1000548e:	|  |        |   b2d4      	uxtb	r4, r2
10005490:	|  |        |   42bc      	cmp	r4, r7
10005492:	+--|--------|-- d2f0      	bcs.n	10005476 <cyhal_hwmgr_reserve+0xa2>
10005494:	|  +--------|-- e008      	b.n	100054a8 <cyhal_hwmgr_reserve+0xd4>
10005496:	|  |        |   bf00      	nop
10005498:	|  |        |   f246 3670 	movw	r6, #25456	; 0x6370
1000549c:	|  |        |   2710      	movs	r7, #16
1000549e:	|  |        |   f2c1 0600 	movt	r6, #4096	; 0x1000
100054a2:	|  |        |   b2d4      	uxtb	r4, r2
100054a4:	|  |        |   42bc      	cmp	r4, r7
100054a6:	+--|--------|-- d2e6      	bcs.n	10005476 <cyhal_hwmgr_reserve+0xa2>
100054a8:	|  >--------|-> 5d35      	ldrb	r5, [r6, r4]
100054aa:	|  |        |   fa5c f18b 	uxtab	r1, ip, fp
100054ae:	|  |        |   3401      	adds	r4, #1
100054b0:	|  |        |   42bc      	cmp	r4, r7
100054b2:	|  |        |   eb01 0705 	add.w	r7, r1, r5
100054b6:	|  |        +-- d202      	bcs.n	100054be <cyhal_hwmgr_reserve+0xea>
100054b8:	|  |        |   5d31      	ldrb	r1, [r6, r4]
100054ba:	|  |        |   eb0c 0a01 	add.w	sl, ip, r1
100054be:	|  |        \-> fa1f f18a 	uxth.w	r1, sl
100054c2:	|  |            b2bc      	uxth	r4, r7
100054c4:	|  |            428c      	cmp	r4, r1
100054c6:	+--|----------- d2d6      	bcs.n	10005476 <cyhal_hwmgr_reserve+0xa2>
100054c8:	|  |            f642 056c 	movw	r5, #10348	; 0x286c
100054cc:	|  |            f3c7 01c7 	ubfx	r1, r7, #3, #8
100054d0:	|  |            f6c0 0500 	movt	r5, #2048	; 0x800
100054d4:	|  |            5c69      	ldrb	r1, [r5, r1]
100054d6:	|  |            f007 0407 	and.w	r4, r7, #7
100054da:	|  |            40e1      	lsrs	r1, r4
100054dc:	|  |            07c9      	lsls	r1, r1, #31
100054de:	|  |        /-- d007      	beq.n	100054f0 <cyhal_hwmgr_reserve+0x11c>
100054e0:	|  |        |   f109 0901 	add.w	r9, r9, #1
100054e4:	|  |        |   f7fc ffc0 	bl	10002468 <Cy_SysLib_ExitCriticalSection>
100054e8:	|  |        |   4648      	mov	r0, r9
100054ea:	|  |        |   b001      	add	sp, #4
100054ec:	|  |        |   e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
100054f0:	|  |        \-> 2b1c      	cmp	r3, #28
100054f2:	|  |            bf9a      	itte	ls
100054f4:	|  |            eb0e 0143 	addls.w	r1, lr, r3, lsl #1
100054f8:	|  |            f8b1 e002 	ldrhls.w	lr, [r1, #2]
100054fc:	|  |            f240 1e31 	movwhi	lr, #305	; 0x131
10005500:	|  |            f1b8 0f00 	cmp.w	r8, #0
10005504:	|  |        /-- d026      	beq.n	10005554 <cyhal_hwmgr_reserve+0x180>
10005506:	|  |        |   1edc      	subs	r4, r3, #3
10005508:	|  |        |   2c18      	cmp	r4, #24
1000550a:	|  |  /-----|-- d827      	bhi.n	1000555c <cyhal_hwmgr_reserve+0x188>
1000550c:	|  |  |     |   f246 4640 	movw	r6, #25664	; 0x6440
10005510:	|  |  |     |   231a      	movs	r3, #26
10005512:	|  |  |     |   f2c1 0600 	movt	r6, #4096	; 0x1000
10005516:	|  |  |     |   e8df f004 	tbb	[pc, r4]
1000551a:	|  |  |     |   210d      	.short	0x210d
1000551c:	|  |  |     |   0d21213a 	.word	0x0d21213a
10005520:	|  |  |     |   21292135 	.word	0x21292135
10005524:	|  |  |     |   21212121 	.word	0x21212121
10005528:	|  |  |     |   21212121 	.word	0x21212121
1000552c:	|  |  |     |   21212121 	.word	0x21212121
10005530:	|  |  |     |   000d2f21 	.word	0x000d2f21
10005534:	|  |  |     |   f246 56d4 	movw	r6, #26068	; 0x65d4
10005538:	|  |  |     |   2301      	movs	r3, #1
1000553a:	|  |  |     |   f2c1 0600 	movt	r6, #4096	; 0x1000
1000553e:	|  |  |  /--|-- e026      	b.n	1000558e <cyhal_hwmgr_reserve+0x1ba>
10005540:	|  |  |  |  |   f246 465c 	movw	r6, #25692	; 0x645c
10005544:	|  |  |  |  |   2702      	movs	r7, #2
10005546:	|  |  |  |  |   f2c1 0600 	movt	r6, #4096	; 0x1000
1000554a:	|  |  |  |  |   b2d4      	uxtb	r4, r2
1000554c:	|  |  |  |  |   42bc      	cmp	r4, r7
1000554e:	+--|--|--|--|-- f4bf af92 	bcs.w	10005476 <cyhal_hwmgr_reserve+0xa2>
10005552:	|  \--|--|--|-- e7a9      	b.n	100054a8 <cyhal_hwmgr_reserve+0xd4>
10005554:	|     |  |  \-> fa5c f182 	uxtab	r1, ip, r2
10005558:	|     |  |  /-- e027      	b.n	100055aa <cyhal_hwmgr_reserve+0x1d6>
1000555a:	|     |  |  |   bf00      	nop
1000555c:	|     \--|--|-> be01      	bkpt	0x0001
1000555e:	|        |  |   f7fc ff83 	bl	10002468 <Cy_SysLib_ExitCriticalSection>
10005562:	|        |  |   4648      	mov	r0, r9
10005564:	|        |  |   b001      	add	sp, #4
10005566:	|        |  |   e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1000556a:	|        |  |   bf00      	nop
1000556c:	|        |  |   f246 3670 	movw	r6, #25456	; 0x6370
10005570:	|        |  |   2310      	movs	r3, #16
10005572:	|        |  |   f2c1 0600 	movt	r6, #4096	; 0x1000
10005576:	|        +--|-- e00a      	b.n	1000558e <cyhal_hwmgr_reserve+0x1ba>
10005578:	|        |  |   f246 465c 	movw	r6, #25692	; 0x645c
1000557c:	|        |  |   2302      	movs	r3, #2
1000557e:	|        |  |   f2c1 0600 	movt	r6, #4096	; 0x1000
10005582:	|        +--|-- e004      	b.n	1000558e <cyhal_hwmgr_reserve+0x1ba>
10005584:	|        |  |   f246 465a 	movw	r6, #25690	; 0x645a
10005588:	|        |  |   2302      	movs	r3, #2
1000558a:	|        |  |   f2c1 0600 	movt	r6, #4096	; 0x1000
1000558e:	|        \--|-> b2d2      	uxtb	r2, r2
10005590:	|           |   429a      	cmp	r2, r3
10005592:	+-----------|-- f4bf af70 	bcs.w	10005476 <cyhal_hwmgr_reserve+0xa2>
10005596:	|           |   5cb1      	ldrb	r1, [r6, r2]
10005598:	|           |   fa5c f48b 	uxtab	r4, ip, fp
1000559c:	|           |   3201      	adds	r2, #1
1000559e:	|           |   429a      	cmp	r2, r3
100055a0:	|           |   4421      	add	r1, r4
100055a2:	|           +-- d202      	bcs.n	100055aa <cyhal_hwmgr_reserve+0x1d6>
100055a4:	|           |   5cb2      	ldrb	r2, [r6, r2]
100055a6:	|           |   eb0c 0e02 	add.w	lr, ip, r2
100055aa:	|           \-> fa1f f28e 	uxth.w	r2, lr
100055ae:	|               b28b      	uxth	r3, r1
100055b0:	|               4293      	cmp	r3, r2
100055b2:	\-------------- f4bf af60 	bcs.w	10005476 <cyhal_hwmgr_reserve+0xa2>
100055b6:	                f001 0207 	and.w	r2, r1, #7
100055ba:	                f3c1 01c7 	ubfx	r1, r1, #3, #8
100055be:	                2301      	movs	r3, #1
100055c0:	                5c6f      	ldrb	r7, [r5, r1]
100055c2:	                fa03 f202 	lsl.w	r2, r3, r2
100055c6:	                433a      	orrs	r2, r7
100055c8:	                f04f 0900 	mov.w	r9, #0
100055cc:	                546a      	strb	r2, [r5, r1]
100055ce:	                f7fc ff4b 	bl	10002468 <Cy_SysLib_ExitCriticalSection>
100055d2:	                4648      	mov	r0, r9
100055d4:	                b001      	add	sp, #4
100055d6:	                e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	...

100055dc <cyhal_syspm_init>:
100055dc:	    b510      	push	{r4, lr}
100055de:	    f242 3410 	movw	r4, #8976	; 0x2310
100055e2:	    f6c0 0400 	movt	r4, #2048	; 0x800
100055e6:	    f104 0008 	add.w	r0, r4, #8
100055ea:	    f7ff fa4b 	bl	10004a84 <Cy_SysPm_RegisterCallback>
100055ee:	/-- b1c0      	cbz	r0, 10005622 <cyhal_syspm_init+0x46>
100055f0:	|   f104 0024 	add.w	r0, r4, #36	; 0x24
100055f4:	|   f7ff fa46 	bl	10004a84 <Cy_SysPm_RegisterCallback>
100055f8:	+-- b198      	cbz	r0, 10005622 <cyhal_syspm_init+0x46>
100055fa:	|   f104 0040 	add.w	r0, r4, #64	; 0x40
100055fe:	|   f7ff fa41 	bl	10004a84 <Cy_SysPm_RegisterCallback>
10005602:	+-- b170      	cbz	r0, 10005622 <cyhal_syspm_init+0x46>
10005604:	|   f104 005c 	add.w	r0, r4, #92	; 0x5c
10005608:	|   f7ff fa3c 	bl	10004a84 <Cy_SysPm_RegisterCallback>
1000560c:	+-- b148      	cbz	r0, 10005622 <cyhal_syspm_init+0x46>
1000560e:	|   f242 30b0 	movw	r0, #9136	; 0x23b0
10005612:	|   f6c0 0000 	movt	r0, #2048	; 0x800
10005616:	|   f7ff fa35 	bl	10004a84 <Cy_SysPm_RegisterCallback>
1000561a:	|   2800      	cmp	r0, #0
1000561c:	|   bf1c      	itt	ne
1000561e:	|   2000      	movne	r0, #0
10005620:	|   bd10      	popne	{r4, pc}
10005622:	\-> f241 7001 	movw	r0, #5889	; 0x1701
10005626:	    f2c0 4002 	movt	r0, #1026	; 0x402
1000562a:	    bd10      	pop	{r4, pc}

1000562c <cyhal_syspm_set_supply_voltage>:
1000562c:	/-- b100      	cbz	r0, 10005630 <cyhal_syspm_set_supply_voltage+0x4>
1000562e:	|   be01      	bkpt	0x0001
10005630:	\-> f242 72b4 	movw	r2, #10164	; 0x27b4
10005634:	    f6c0 0200 	movt	r2, #2048	; 0x800
10005638:	    f842 1020 	str.w	r1, [r2, r0, lsl #2]
1000563c:	    4770      	bx	lr
	...

10005640 <cyhal_uart_putc>:
10005640:	    b5b0      	push	{r4, r5, r7, lr}
10005642:	    460c      	mov	r4, r1
10005644:	    4605      	mov	r5, r0
10005646:	    f7ff fc67 	bl	10004f18 <_cyhal_scb_pm_transition_pending>
1000564a:	/-- b128      	cbz	r0, 10005658 <cyhal_uart_putc+0x18>
1000564c:	|   f241 7003 	movw	r0, #5891	; 0x1703
10005650:	|   f2c0 4002 	movt	r0, #1026	; 0x402
10005654:	|   bdb0      	pop	{r4, r5, r7, pc}
10005656:	|   bf00      	nop
10005658:	>-> 6828      	ldr	r0, [r5, #0]
1000565a:	|   4621      	mov	r1, r4
1000565c:	|   f7fd ffc0 	bl	100035e0 <Cy_SCB_Write>
10005660:	|   2800      	cmp	r0, #0
10005662:	\-- d0f9      	beq.n	10005658 <cyhal_uart_putc+0x18>
10005664:	    2000      	movs	r0, #0
10005666:	    bdb0      	pop	{r4, r5, r7, pc}

10005668 <fputc>:
10005668:	b510      	push	{r4, lr}
1000566a:	4604      	mov	r4, r0
1000566c:	b2c1      	uxtb	r1, r0
1000566e:	f242 70c0 	movw	r0, #10176	; 0x27c0
10005672:	f6c0 0000 	movt	r0, #2048	; 0x800
10005676:	f7ff ffe3 	bl	10005640 <cyhal_uart_putc>
1000567a:	2800      	cmp	r0, #0
1000567c:	bf18      	it	ne
1000567e:	f04f 34ff 	movne.w	r4, #4294967295
10005682:	4620      	mov	r0, r4
10005684:	bd10      	pop	{r4, pc}
	...

10005688 <gen_cipher>:
10005688:	    b5f0      	push	{r4, r5, r6, r7, lr}
1000568a:	    b081      	sub	sp, #4
1000568c:	    4604      	mov	r4, r0
1000568e:	    6800      	ldr	r0, [r0, #0]
10005690:	    7921      	ldrb	r1, [r4, #4]
10005692:	    7802      	ldrb	r2, [r0, #0]
10005694:	    f246 469a 	movw	r6, #25754	; 0x649a
10005698:	    4051      	eors	r1, r2
1000569a:	    7001      	strb	r1, [r0, #0]
1000569c:	    6820      	ldr	r0, [r4, #0]
1000569e:	    7961      	ldrb	r1, [r4, #5]
100056a0:	    7842      	ldrb	r2, [r0, #1]
100056a2:	    2701      	movs	r7, #1
100056a4:	    4051      	eors	r1, r2
100056a6:	    7041      	strb	r1, [r0, #1]
100056a8:	    6820      	ldr	r0, [r4, #0]
100056aa:	    79a1      	ldrb	r1, [r4, #6]
100056ac:	    7882      	ldrb	r2, [r0, #2]
100056ae:	    f2c1 0600 	movt	r6, #4096	; 0x1000
100056b2:	    4051      	eors	r1, r2
100056b4:	    7081      	strb	r1, [r0, #2]
100056b6:	    6820      	ldr	r0, [r4, #0]
100056b8:	    79e1      	ldrb	r1, [r4, #7]
100056ba:	    78c2      	ldrb	r2, [r0, #3]
100056bc:	    4051      	eors	r1, r2
100056be:	    70c1      	strb	r1, [r0, #3]
100056c0:	    6820      	ldr	r0, [r4, #0]
100056c2:	    7a21      	ldrb	r1, [r4, #8]
100056c4:	    7902      	ldrb	r2, [r0, #4]
100056c6:	    4051      	eors	r1, r2
100056c8:	    7101      	strb	r1, [r0, #4]
100056ca:	    6820      	ldr	r0, [r4, #0]
100056cc:	    7a61      	ldrb	r1, [r4, #9]
100056ce:	    7942      	ldrb	r2, [r0, #5]
100056d0:	    4051      	eors	r1, r2
100056d2:	    7141      	strb	r1, [r0, #5]
100056d4:	    6820      	ldr	r0, [r4, #0]
100056d6:	    7aa1      	ldrb	r1, [r4, #10]
100056d8:	    7982      	ldrb	r2, [r0, #6]
100056da:	    4051      	eors	r1, r2
100056dc:	    7181      	strb	r1, [r0, #6]
100056de:	    6820      	ldr	r0, [r4, #0]
100056e0:	    7ae1      	ldrb	r1, [r4, #11]
100056e2:	    79c2      	ldrb	r2, [r0, #7]
100056e4:	    4051      	eors	r1, r2
100056e6:	    71c1      	strb	r1, [r0, #7]
100056e8:	    6820      	ldr	r0, [r4, #0]
100056ea:	    7b21      	ldrb	r1, [r4, #12]
100056ec:	    7a02      	ldrb	r2, [r0, #8]
100056ee:	    4051      	eors	r1, r2
100056f0:	    7201      	strb	r1, [r0, #8]
100056f2:	    6820      	ldr	r0, [r4, #0]
100056f4:	    7b61      	ldrb	r1, [r4, #13]
100056f6:	    7a42      	ldrb	r2, [r0, #9]
100056f8:	    4051      	eors	r1, r2
100056fa:	    7241      	strb	r1, [r0, #9]
100056fc:	    6820      	ldr	r0, [r4, #0]
100056fe:	    7ba1      	ldrb	r1, [r4, #14]
10005700:	    7a82      	ldrb	r2, [r0, #10]
10005702:	    4051      	eors	r1, r2
10005704:	    7281      	strb	r1, [r0, #10]
10005706:	    6820      	ldr	r0, [r4, #0]
10005708:	    7be1      	ldrb	r1, [r4, #15]
1000570a:	    7ac2      	ldrb	r2, [r0, #11]
1000570c:	    4051      	eors	r1, r2
1000570e:	    72c1      	strb	r1, [r0, #11]
10005710:	    6820      	ldr	r0, [r4, #0]
10005712:	    7c21      	ldrb	r1, [r4, #16]
10005714:	    7b02      	ldrb	r2, [r0, #12]
10005716:	    4051      	eors	r1, r2
10005718:	    7301      	strb	r1, [r0, #12]
1000571a:	    6820      	ldr	r0, [r4, #0]
1000571c:	    7c61      	ldrb	r1, [r4, #17]
1000571e:	    7b42      	ldrb	r2, [r0, #13]
10005720:	    4051      	eors	r1, r2
10005722:	    7341      	strb	r1, [r0, #13]
10005724:	    6820      	ldr	r0, [r4, #0]
10005726:	    7ca1      	ldrb	r1, [r4, #18]
10005728:	    7b82      	ldrb	r2, [r0, #14]
1000572a:	    4051      	eors	r1, r2
1000572c:	    7381      	strb	r1, [r0, #14]
1000572e:	    6820      	ldr	r0, [r4, #0]
10005730:	    7ce1      	ldrb	r1, [r4, #19]
10005732:	    7bc2      	ldrb	r2, [r0, #15]
10005734:	    4051      	eors	r1, r2
10005736:	    73c1      	strb	r1, [r0, #15]
10005738:	/-> 6820      	ldr	r0, [r4, #0]
1000573a:	|   7801      	ldrb	r1, [r0, #0]
1000573c:	|   5c71      	ldrb	r1, [r6, r1]
1000573e:	|   7001      	strb	r1, [r0, #0]
10005740:	|   6820      	ldr	r0, [r4, #0]
10005742:	|   7841      	ldrb	r1, [r0, #1]
10005744:	|   5c71      	ldrb	r1, [r6, r1]
10005746:	|   7041      	strb	r1, [r0, #1]
10005748:	|   6820      	ldr	r0, [r4, #0]
1000574a:	|   7881      	ldrb	r1, [r0, #2]
1000574c:	|   5c71      	ldrb	r1, [r6, r1]
1000574e:	|   7081      	strb	r1, [r0, #2]
10005750:	|   6820      	ldr	r0, [r4, #0]
10005752:	|   78c1      	ldrb	r1, [r0, #3]
10005754:	|   5c71      	ldrb	r1, [r6, r1]
10005756:	|   70c1      	strb	r1, [r0, #3]
10005758:	|   6820      	ldr	r0, [r4, #0]
1000575a:	|   7901      	ldrb	r1, [r0, #4]
1000575c:	|   5c71      	ldrb	r1, [r6, r1]
1000575e:	|   7101      	strb	r1, [r0, #4]
10005760:	|   6820      	ldr	r0, [r4, #0]
10005762:	|   7941      	ldrb	r1, [r0, #5]
10005764:	|   5c71      	ldrb	r1, [r6, r1]
10005766:	|   7141      	strb	r1, [r0, #5]
10005768:	|   6820      	ldr	r0, [r4, #0]
1000576a:	|   7981      	ldrb	r1, [r0, #6]
1000576c:	|   5c71      	ldrb	r1, [r6, r1]
1000576e:	|   7181      	strb	r1, [r0, #6]
10005770:	|   6820      	ldr	r0, [r4, #0]
10005772:	|   79c1      	ldrb	r1, [r0, #7]
10005774:	|   5c71      	ldrb	r1, [r6, r1]
10005776:	|   71c1      	strb	r1, [r0, #7]
10005778:	|   6820      	ldr	r0, [r4, #0]
1000577a:	|   7a01      	ldrb	r1, [r0, #8]
1000577c:	|   5c71      	ldrb	r1, [r6, r1]
1000577e:	|   7201      	strb	r1, [r0, #8]
10005780:	|   6820      	ldr	r0, [r4, #0]
10005782:	|   7a41      	ldrb	r1, [r0, #9]
10005784:	|   5c71      	ldrb	r1, [r6, r1]
10005786:	|   7241      	strb	r1, [r0, #9]
10005788:	|   6820      	ldr	r0, [r4, #0]
1000578a:	|   7a81      	ldrb	r1, [r0, #10]
1000578c:	|   5c71      	ldrb	r1, [r6, r1]
1000578e:	|   7281      	strb	r1, [r0, #10]
10005790:	|   6820      	ldr	r0, [r4, #0]
10005792:	|   7ac1      	ldrb	r1, [r0, #11]
10005794:	|   5c71      	ldrb	r1, [r6, r1]
10005796:	|   72c1      	strb	r1, [r0, #11]
10005798:	|   6820      	ldr	r0, [r4, #0]
1000579a:	|   7b01      	ldrb	r1, [r0, #12]
1000579c:	|   5c71      	ldrb	r1, [r6, r1]
1000579e:	|   7301      	strb	r1, [r0, #12]
100057a0:	|   6820      	ldr	r0, [r4, #0]
100057a2:	|   7b41      	ldrb	r1, [r0, #13]
100057a4:	|   5c71      	ldrb	r1, [r6, r1]
100057a6:	|   7341      	strb	r1, [r0, #13]
100057a8:	|   6820      	ldr	r0, [r4, #0]
100057aa:	|   7b81      	ldrb	r1, [r0, #14]
100057ac:	|   5c71      	ldrb	r1, [r6, r1]
100057ae:	|   7381      	strb	r1, [r0, #14]
100057b0:	|   6820      	ldr	r0, [r4, #0]
100057b2:	|   7bc1      	ldrb	r1, [r0, #15]
100057b4:	|   5c71      	ldrb	r1, [r6, r1]
100057b6:	|   73c1      	strb	r1, [r0, #15]
100057b8:	|   6820      	ldr	r0, [r4, #0]
100057ba:	|   7942      	ldrb	r2, [r0, #5]
100057bc:	|   7841      	ldrb	r1, [r0, #1]
100057be:	|   7042      	strb	r2, [r0, #1]
100057c0:	|   7a43      	ldrb	r3, [r0, #9]
100057c2:	|   6822      	ldr	r2, [r4, #0]
100057c4:	|   7b40      	ldrb	r0, [r0, #13]
100057c6:	|   7153      	strb	r3, [r2, #5]
100057c8:	|   6822      	ldr	r2, [r4, #0]
100057ca:	|   7250      	strb	r0, [r2, #9]
100057cc:	|   6820      	ldr	r0, [r4, #0]
100057ce:	|   7341      	strb	r1, [r0, #13]
100057d0:	|   6820      	ldr	r0, [r4, #0]
100057d2:	|   7a82      	ldrb	r2, [r0, #10]
100057d4:	|   7881      	ldrb	r1, [r0, #2]
100057d6:	|   7082      	strb	r2, [r0, #2]
100057d8:	|   7b83      	ldrb	r3, [r0, #14]
100057da:	|   6822      	ldr	r2, [r4, #0]
100057dc:	|   7980      	ldrb	r0, [r0, #6]
100057de:	|   7193      	strb	r3, [r2, #6]
100057e0:	|   6822      	ldr	r2, [r4, #0]
100057e2:	|   7291      	strb	r1, [r2, #10]
100057e4:	|   6821      	ldr	r1, [r4, #0]
100057e6:	|   7388      	strb	r0, [r1, #14]
100057e8:	|   6820      	ldr	r0, [r4, #0]
100057ea:	|   7bc2      	ldrb	r2, [r0, #15]
100057ec:	|   78c1      	ldrb	r1, [r0, #3]
100057ee:	|   70c2      	strb	r2, [r0, #3]
100057f0:	|   6822      	ldr	r2, [r4, #0]
100057f2:	|   79c3      	ldrb	r3, [r0, #7]
100057f4:	|   7ac0      	ldrb	r0, [r0, #11]
100057f6:	|   71d1      	strb	r1, [r2, #7]
100057f8:	|   6821      	ldr	r1, [r4, #0]
100057fa:	|   72cb      	strb	r3, [r1, #11]
100057fc:	|   6821      	ldr	r1, [r4, #0]
100057fe:	|   73c8      	strb	r0, [r1, #15]
10005800:	|   4620      	mov	r0, r4
10005802:	|   f000 fb89 	bl	10005f18 <mixColumns>
10005806:	|   b2fd      	uxtb	r5, r7
10005808:	|   4620      	mov	r0, r4
1000580a:	|   4629      	mov	r1, r5
1000580c:	|   f7ff fcfe 	bl	1000520c <addRoundKey>
10005810:	|   2d09      	cmp	r5, #9
10005812:	|   f107 0701 	add.w	r7, r7, #1
10005816:	\-- d38f      	bcc.n	10005738 <gen_cipher+0xb0>
10005818:	    6820      	ldr	r0, [r4, #0]
1000581a:	    7801      	ldrb	r1, [r0, #0]
1000581c:	    5c71      	ldrb	r1, [r6, r1]
1000581e:	    7001      	strb	r1, [r0, #0]
10005820:	    6820      	ldr	r0, [r4, #0]
10005822:	    7841      	ldrb	r1, [r0, #1]
10005824:	    5c71      	ldrb	r1, [r6, r1]
10005826:	    7041      	strb	r1, [r0, #1]
10005828:	    6820      	ldr	r0, [r4, #0]
1000582a:	    7881      	ldrb	r1, [r0, #2]
1000582c:	    5c71      	ldrb	r1, [r6, r1]
1000582e:	    7081      	strb	r1, [r0, #2]
10005830:	    6820      	ldr	r0, [r4, #0]
10005832:	    78c1      	ldrb	r1, [r0, #3]
10005834:	    5c71      	ldrb	r1, [r6, r1]
10005836:	    70c1      	strb	r1, [r0, #3]
10005838:	    6820      	ldr	r0, [r4, #0]
1000583a:	    7901      	ldrb	r1, [r0, #4]
1000583c:	    5c71      	ldrb	r1, [r6, r1]
1000583e:	    7101      	strb	r1, [r0, #4]
10005840:	    6820      	ldr	r0, [r4, #0]
10005842:	    7941      	ldrb	r1, [r0, #5]
10005844:	    5c71      	ldrb	r1, [r6, r1]
10005846:	    7141      	strb	r1, [r0, #5]
10005848:	    6820      	ldr	r0, [r4, #0]
1000584a:	    7981      	ldrb	r1, [r0, #6]
1000584c:	    5c71      	ldrb	r1, [r6, r1]
1000584e:	    7181      	strb	r1, [r0, #6]
10005850:	    6820      	ldr	r0, [r4, #0]
10005852:	    79c1      	ldrb	r1, [r0, #7]
10005854:	    5c71      	ldrb	r1, [r6, r1]
10005856:	    71c1      	strb	r1, [r0, #7]
10005858:	    6820      	ldr	r0, [r4, #0]
1000585a:	    7a01      	ldrb	r1, [r0, #8]
1000585c:	    5c71      	ldrb	r1, [r6, r1]
1000585e:	    7201      	strb	r1, [r0, #8]
10005860:	    6820      	ldr	r0, [r4, #0]
10005862:	    7a41      	ldrb	r1, [r0, #9]
10005864:	    5c71      	ldrb	r1, [r6, r1]
10005866:	    7241      	strb	r1, [r0, #9]
10005868:	    6820      	ldr	r0, [r4, #0]
1000586a:	    7a81      	ldrb	r1, [r0, #10]
1000586c:	    5c71      	ldrb	r1, [r6, r1]
1000586e:	    7281      	strb	r1, [r0, #10]
10005870:	    6820      	ldr	r0, [r4, #0]
10005872:	    7ac1      	ldrb	r1, [r0, #11]
10005874:	    5c71      	ldrb	r1, [r6, r1]
10005876:	    72c1      	strb	r1, [r0, #11]
10005878:	    6820      	ldr	r0, [r4, #0]
1000587a:	    7b01      	ldrb	r1, [r0, #12]
1000587c:	    5c71      	ldrb	r1, [r6, r1]
1000587e:	    7301      	strb	r1, [r0, #12]
10005880:	    6820      	ldr	r0, [r4, #0]
10005882:	    7b41      	ldrb	r1, [r0, #13]
10005884:	    5c71      	ldrb	r1, [r6, r1]
10005886:	    7341      	strb	r1, [r0, #13]
10005888:	    6820      	ldr	r0, [r4, #0]
1000588a:	    7b81      	ldrb	r1, [r0, #14]
1000588c:	    5c71      	ldrb	r1, [r6, r1]
1000588e:	    7381      	strb	r1, [r0, #14]
10005890:	    6820      	ldr	r0, [r4, #0]
10005892:	    7bc1      	ldrb	r1, [r0, #15]
10005894:	    5c71      	ldrb	r1, [r6, r1]
10005896:	    73c1      	strb	r1, [r0, #15]
10005898:	    6820      	ldr	r0, [r4, #0]
1000589a:	    7942      	ldrb	r2, [r0, #5]
1000589c:	    7841      	ldrb	r1, [r0, #1]
1000589e:	    7042      	strb	r2, [r0, #1]
100058a0:	    7a43      	ldrb	r3, [r0, #9]
100058a2:	    6822      	ldr	r2, [r4, #0]
100058a4:	    7b40      	ldrb	r0, [r0, #13]
100058a6:	    7153      	strb	r3, [r2, #5]
100058a8:	    6822      	ldr	r2, [r4, #0]
100058aa:	    7250      	strb	r0, [r2, #9]
100058ac:	    6820      	ldr	r0, [r4, #0]
100058ae:	    7341      	strb	r1, [r0, #13]
100058b0:	    6820      	ldr	r0, [r4, #0]
100058b2:	    7a82      	ldrb	r2, [r0, #10]
100058b4:	    7881      	ldrb	r1, [r0, #2]
100058b6:	    7082      	strb	r2, [r0, #2]
100058b8:	    7b83      	ldrb	r3, [r0, #14]
100058ba:	    6822      	ldr	r2, [r4, #0]
100058bc:	    7980      	ldrb	r0, [r0, #6]
100058be:	    7193      	strb	r3, [r2, #6]
100058c0:	    6822      	ldr	r2, [r4, #0]
100058c2:	    7291      	strb	r1, [r2, #10]
100058c4:	    6821      	ldr	r1, [r4, #0]
100058c6:	    7388      	strb	r0, [r1, #14]
100058c8:	    6820      	ldr	r0, [r4, #0]
100058ca:	    7bc2      	ldrb	r2, [r0, #15]
100058cc:	    78c1      	ldrb	r1, [r0, #3]
100058ce:	    70c2      	strb	r2, [r0, #3]
100058d0:	    6822      	ldr	r2, [r4, #0]
100058d2:	    79c3      	ldrb	r3, [r0, #7]
100058d4:	    7ac0      	ldrb	r0, [r0, #11]
100058d6:	    71d1      	strb	r1, [r2, #7]
100058d8:	    6821      	ldr	r1, [r4, #0]
100058da:	    72cb      	strb	r3, [r1, #11]
100058dc:	    6821      	ldr	r1, [r4, #0]
100058de:	    73c8      	strb	r0, [r1, #15]
100058e0:	    6820      	ldr	r0, [r4, #0]
100058e2:	    f894 10a4 	ldrb.w	r1, [r4, #164]	; 0xa4
100058e6:	    7802      	ldrb	r2, [r0, #0]
100058e8:	    4051      	eors	r1, r2
100058ea:	    7001      	strb	r1, [r0, #0]
100058ec:	    6820      	ldr	r0, [r4, #0]
100058ee:	    f894 10a5 	ldrb.w	r1, [r4, #165]	; 0xa5
100058f2:	    7842      	ldrb	r2, [r0, #1]
100058f4:	    4051      	eors	r1, r2
100058f6:	    7041      	strb	r1, [r0, #1]
100058f8:	    6820      	ldr	r0, [r4, #0]
100058fa:	    f894 10a6 	ldrb.w	r1, [r4, #166]	; 0xa6
100058fe:	    7882      	ldrb	r2, [r0, #2]
10005900:	    4051      	eors	r1, r2
10005902:	    7081      	strb	r1, [r0, #2]
10005904:	    6820      	ldr	r0, [r4, #0]
10005906:	    f894 10a7 	ldrb.w	r1, [r4, #167]	; 0xa7
1000590a:	    78c2      	ldrb	r2, [r0, #3]
1000590c:	    4051      	eors	r1, r2
1000590e:	    70c1      	strb	r1, [r0, #3]
10005910:	    6820      	ldr	r0, [r4, #0]
10005912:	    f894 10a8 	ldrb.w	r1, [r4, #168]	; 0xa8
10005916:	    7902      	ldrb	r2, [r0, #4]
10005918:	    4051      	eors	r1, r2
1000591a:	    7101      	strb	r1, [r0, #4]
1000591c:	    6820      	ldr	r0, [r4, #0]
1000591e:	    f894 10a9 	ldrb.w	r1, [r4, #169]	; 0xa9
10005922:	    7942      	ldrb	r2, [r0, #5]
10005924:	    4051      	eors	r1, r2
10005926:	    7141      	strb	r1, [r0, #5]
10005928:	    6820      	ldr	r0, [r4, #0]
1000592a:	    f894 10aa 	ldrb.w	r1, [r4, #170]	; 0xaa
1000592e:	    7982      	ldrb	r2, [r0, #6]
10005930:	    4051      	eors	r1, r2
10005932:	    7181      	strb	r1, [r0, #6]
10005934:	    6820      	ldr	r0, [r4, #0]
10005936:	    f894 10ab 	ldrb.w	r1, [r4, #171]	; 0xab
1000593a:	    79c2      	ldrb	r2, [r0, #7]
1000593c:	    4051      	eors	r1, r2
1000593e:	    71c1      	strb	r1, [r0, #7]
10005940:	    6820      	ldr	r0, [r4, #0]
10005942:	    f894 10ac 	ldrb.w	r1, [r4, #172]	; 0xac
10005946:	    7a02      	ldrb	r2, [r0, #8]
10005948:	    4051      	eors	r1, r2
1000594a:	    7201      	strb	r1, [r0, #8]
1000594c:	    6820      	ldr	r0, [r4, #0]
1000594e:	    f894 10ad 	ldrb.w	r1, [r4, #173]	; 0xad
10005952:	    7a42      	ldrb	r2, [r0, #9]
10005954:	    4051      	eors	r1, r2
10005956:	    7241      	strb	r1, [r0, #9]
10005958:	    6820      	ldr	r0, [r4, #0]
1000595a:	    f894 10ae 	ldrb.w	r1, [r4, #174]	; 0xae
1000595e:	    7a82      	ldrb	r2, [r0, #10]
10005960:	    4051      	eors	r1, r2
10005962:	    7281      	strb	r1, [r0, #10]
10005964:	    6820      	ldr	r0, [r4, #0]
10005966:	    f894 10af 	ldrb.w	r1, [r4, #175]	; 0xaf
1000596a:	    7ac2      	ldrb	r2, [r0, #11]
1000596c:	    4051      	eors	r1, r2
1000596e:	    72c1      	strb	r1, [r0, #11]
10005970:	    6820      	ldr	r0, [r4, #0]
10005972:	    f894 10b0 	ldrb.w	r1, [r4, #176]	; 0xb0
10005976:	    7b02      	ldrb	r2, [r0, #12]
10005978:	    4051      	eors	r1, r2
1000597a:	    7301      	strb	r1, [r0, #12]
1000597c:	    6820      	ldr	r0, [r4, #0]
1000597e:	    f894 10b1 	ldrb.w	r1, [r4, #177]	; 0xb1
10005982:	    7b42      	ldrb	r2, [r0, #13]
10005984:	    4051      	eors	r1, r2
10005986:	    7341      	strb	r1, [r0, #13]
10005988:	    6820      	ldr	r0, [r4, #0]
1000598a:	    f894 10b2 	ldrb.w	r1, [r4, #178]	; 0xb2
1000598e:	    7b82      	ldrb	r2, [r0, #14]
10005990:	    4051      	eors	r1, r2
10005992:	    7381      	strb	r1, [r0, #14]
10005994:	    6820      	ldr	r0, [r4, #0]
10005996:	    f894 10b3 	ldrb.w	r1, [r4, #179]	; 0xb3
1000599a:	    7bc2      	ldrb	r2, [r0, #15]
1000599c:	    4051      	eors	r1, r2
1000599e:	    73c1      	strb	r1, [r0, #15]
100059a0:	    b001      	add	sp, #4
100059a2:	    bdf0      	pop	{r4, r5, r6, r7, pc}

100059a4 <init_cycfg_all>:
100059a4:	b580      	push	{r7, lr}
100059a6:	f000 f8c1 	bl	10005b2c <init_cycfg_system>
100059aa:	f000 f809 	bl	100059c0 <init_cycfg_clocks>
100059ae:	f000 f8b5 	bl	10005b1c <init_cycfg_routing>
100059b2:	f000 f81b 	bl	100059ec <init_cycfg_peripherals>
100059b6:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
100059ba:	f000 b81d 	b.w	100059f8 <init_cycfg_pins>
	...

100059c0 <init_cycfg_clocks>:
100059c0:	b580      	push	{r7, lr}
100059c2:	2000      	movs	r0, #0
100059c4:	2100      	movs	r1, #0
100059c6:	f7fe fb77 	bl	100040b8 <Cy_SysClk_PeriphDisableDivider>
100059ca:	2000      	movs	r0, #0
100059cc:	2100      	movs	r1, #0
100059ce:	22ff      	movs	r2, #255	; 0xff
100059d0:	f7fe fbda 	bl	10004188 <Cy_SysClk_PeriphSetDivider>
100059d4:	2000      	movs	r0, #0
100059d6:	2100      	movs	r1, #0
100059d8:	f7fe fb9a 	bl	10004110 <Cy_SysClk_PeriphEnableDivider>
100059dc:	f246 100f 	movw	r0, #24847	; 0x610f
100059e0:	f2c1 0000 	movt	r0, #4096	; 0x1000
100059e4:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
100059e8:	f7ff bcf4 	b.w	100053d4 <cyhal_hwmgr_reserve>

100059ec <init_cycfg_peripherals>:
100059ec:	202f      	movs	r0, #47	; 0x2f
100059ee:	2100      	movs	r1, #0
100059f0:	2200      	movs	r2, #0
100059f2:	f7fe bb2d 	b.w	10004050 <Cy_SysClk_PeriphAssignDivider>
	...

100059f8 <init_cycfg_pins>:
100059f8:	b5b0      	push	{r4, r5, r7, lr}
100059fa:	f240 3400 	movw	r4, #768	; 0x300
100059fe:	f2c4 0431 	movt	r4, #16433	; 0x4031
10005a02:	f5a4 7540 	sub.w	r5, r4, #768	; 0x300
10005a06:	f246 12cc 	movw	r2, #25036	; 0x61cc
10005a0a:	f2c1 0200 	movt	r2, #4096	; 0x1000
10005a0e:	4628      	mov	r0, r5
10005a10:	2100      	movs	r1, #0
10005a12:	f7fd fa45 	bl	10002ea0 <Cy_GPIO_Pin_Init>
10005a16:	f246 2000 	movw	r0, #25088	; 0x6200
10005a1a:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005a1e:	f7ff fcd9 	bl	100053d4 <cyhal_hwmgr_reserve>
10005a22:	f246 2204 	movw	r2, #25092	; 0x6204
10005a26:	f2c1 0200 	movt	r2, #4096	; 0x1000
10005a2a:	4628      	mov	r0, r5
10005a2c:	2101      	movs	r1, #1
10005a2e:	f7fd fa37 	bl	10002ea0 <Cy_GPIO_Pin_Init>
10005a32:	f246 2038 	movw	r0, #25144	; 0x6238
10005a36:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005a3a:	f7ff fccb 	bl	100053d4 <cyhal_hwmgr_reserve>
10005a3e:	f246 1021 	movw	r0, #24865	; 0x6121
10005a42:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005a46:	f7ff fcc5 	bl	100053d4 <cyhal_hwmgr_reserve>
10005a4a:	f246 1294 	movw	r2, #24980	; 0x6194
10005a4e:	f2c1 0200 	movt	r2, #4096	; 0x1000
10005a52:	4620      	mov	r0, r4
10005a54:	2104      	movs	r1, #4
10005a56:	f7fd fa23 	bl	10002ea0 <Cy_GPIO_Pin_Init>
10005a5a:	f246 10c8 	movw	r0, #25032	; 0x61c8
10005a5e:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005a62:	f7ff fcb7 	bl	100053d4 <cyhal_hwmgr_reserve>
10005a66:	f246 125c 	movw	r2, #24924	; 0x615c
10005a6a:	f2c1 0200 	movt	r2, #4096	; 0x1000
10005a6e:	4620      	mov	r0, r4
10005a70:	2106      	movs	r1, #6
10005a72:	f7fd fa15 	bl	10002ea0 <Cy_GPIO_Pin_Init>
10005a76:	f246 1090 	movw	r0, #24976	; 0x6190
10005a7a:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005a7e:	f7ff fca9 	bl	100053d4 <cyhal_hwmgr_reserve>
10005a82:	f246 1224 	movw	r2, #24868	; 0x6124
10005a86:	f2c1 0200 	movt	r2, #4096	; 0x1000
10005a8a:	4620      	mov	r0, r4
10005a8c:	2107      	movs	r1, #7
10005a8e:	f7fd fa07 	bl	10002ea0 <Cy_GPIO_Pin_Init>
10005a92:	f246 1058 	movw	r0, #24920	; 0x6158
10005a96:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005a9a:	f7ff fc9b 	bl	100053d4 <cyhal_hwmgr_reserve>
10005a9e:	f246 1000 	movw	r0, #24832	; 0x6100
10005aa2:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005aa6:	f7ff fc95 	bl	100053d4 <cyhal_hwmgr_reserve>
10005aaa:	f246 1003 	movw	r0, #24835	; 0x6103
10005aae:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005ab2:	f7ff fc8f 	bl	100053d4 <cyhal_hwmgr_reserve>
10005ab6:	f246 1006 	movw	r0, #24838	; 0x6106
10005aba:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005abe:	f7ff fc89 	bl	100053d4 <cyhal_hwmgr_reserve>
10005ac2:	f246 1009 	movw	r0, #24841	; 0x6109
10005ac6:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005aca:	f7ff fc83 	bl	100053d4 <cyhal_hwmgr_reserve>
10005ace:	f246 100c 	movw	r0, #24844	; 0x610c
10005ad2:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005ad6:	f7ff fc7d 	bl	100053d4 <cyhal_hwmgr_reserve>
10005ada:	f246 1012 	movw	r0, #24850	; 0x6112
10005ade:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005ae2:	f7ff fc77 	bl	100053d4 <cyhal_hwmgr_reserve>
10005ae6:	f246 1015 	movw	r0, #24853	; 0x6115
10005aea:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005aee:	f7ff fc71 	bl	100053d4 <cyhal_hwmgr_reserve>
10005af2:	f246 1018 	movw	r0, #24856	; 0x6118
10005af6:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005afa:	f7ff fc6b 	bl	100053d4 <cyhal_hwmgr_reserve>
10005afe:	f246 101b 	movw	r0, #24859	; 0x611b
10005b02:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005b06:	f7ff fc65 	bl	100053d4 <cyhal_hwmgr_reserve>
10005b0a:	f246 101e 	movw	r0, #24862	; 0x611e
10005b0e:	f2c1 0000 	movt	r0, #4096	; 0x1000
10005b12:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
10005b16:	f7ff bc5d 	b.w	100053d4 <cyhal_hwmgr_reserve>
	...

10005b1c <init_cycfg_routing>:
10005b1c:	f242 0008 	movw	r0, #8200	; 0x2008
10005b20:	f2c4 0030 	movt	r0, #16432	; 0x4030
10005b24:	2133      	movs	r1, #51	; 0x33
10005b26:	6001      	str	r1, [r0, #0]
10005b28:	6081      	str	r1, [r0, #8]
10005b2a:	4770      	bx	lr

10005b2c <init_cycfg_system>:
10005b2c:	             b5b0      	push	{r4, r5, r7, lr}
10005b2e:	             b082      	sub	sp, #8
10005b30:	             2000      	movs	r0, #0
10005b32:	             2196      	movs	r1, #150	; 0x96
10005b34:	             f7fe fdec 	bl	10004710 <Cy_SysLib_SetWaitStates>
10005b38:	             f7fe fdc0 	bl	100046bc <Cy_SysLib_GetResetReason>
10005b3c:	      /----- b9e0      	cbnz	r0, 10005b78 <init_cycfg_system+0x4c>
10005b3e:	      |      f64f 7400 	movw	r4, #65280	; 0xff00
10005b42:	      |      f2c4 0427 	movt	r4, #16423	; 0x4027
10005b46:	      |      6825      	ldr	r5, [r4, #0]
10005b48:	      |      f7fe fdd4 	bl	100046f4 <Cy_SysLib_ResetBackupDomain>
10005b4c:	      |  /-- b150      	cbz	r0, 10005b64 <init_cycfg_system+0x38>
10005b4e:	      |  |   2001      	movs	r0, #1
10005b50:	      |  |   f7fe fd4e 	bl	100045f0 <Cy_SysLib_DelayUs>
10005b54:	      |  |   2048      	movs	r0, #72	; 0x48
10005b56:	      |  |   f2c4 0027 	movt	r0, #16423	; 0x4027
10005b5a:	      |  |   6800      	ldr	r0, [r0, #0]
10005b5c:	      |  |   f1b0 3fff 	cmp.w	r0, #4294967295
10005b60:	/-----|--|-- f340 80f2 	ble.w	10005d48 <init_cycfg_system+0x21c>
10005b64:	|     |  \-> f005 003f 	and.w	r0, r5, #63	; 0x3f
10005b68:	|     |      6020      	str	r0, [r4, #0]
10005b6a:	|     |      f7fe fa47 	bl	10003ffc <Cy_SysClk_IloDisable>
10005b6e:	|     |      f7fe fa5b 	bl	10004028 <Cy_SysClk_IloEnable>
10005b72:	|     |      2001      	movs	r0, #1
10005b74:	|     |      f7fe fa62 	bl	1000403c <Cy_SysClk_IloHibernateOn>
10005b78:	|     \----> 2001      	movs	r0, #1
10005b7a:	|            f7fe fe2f 	bl	100047dc <Cy_SysPm_LdoSetVoltage>
10005b7e:	|            f7fe ffef 	bl	10004b60 <Cy_SysPm_SystemSetNormalRegulatorCurrent>
10005b82:	|            f7fe ff75 	bl	10004a70 <Cy_SysPm_PmicUnlock>
10005b86:	|            f7fe ff5f 	bl	10004a48 <Cy_SysPm_PmicDisableOutput>
10005b8a:	|            2000      	movs	r0, #0
10005b8c:	|            2100      	movs	r1, #0
10005b8e:	|            f7fd fd9b 	bl	100036c8 <Cy_SysClk_ClkHfSetDivider>
10005b92:	|            2000      	movs	r0, #0
10005b94:	|            f7fd fd4e 	bl	10003634 <Cy_SysClk_ClkFastSetDivider>
10005b98:	|            2001      	movs	r0, #1
10005b9a:	|            f7fd feb5 	bl	10003908 <Cy_SysClk_ClkPeriSetDivider>
10005b9e:	|            2000      	movs	r0, #0
10005ba0:	|            f7fd fec2 	bl	10003928 <Cy_SysClk_ClkSlowSetDivider>
10005ba4:	|            f242 70b8 	movw	r0, #10168	; 0x27b8
10005ba8:	|            f6c0 0000 	movt	r0, #2048	; 0x800
10005bac:	|            6800      	ldr	r0, [r0, #0]
10005bae:	|            f890 403f 	ldrb.w	r4, [r0, #63]	; 0x3f
10005bb2:	|     /----- b124      	cbz	r4, 10005bbe <init_cycfg_system+0x92>
10005bb4:	|     |  /-> 4620      	mov	r0, r4
10005bb6:	|     |  |   f7fe fb1f 	bl	100041f8 <Cy_SysClk_PllDisable>
10005bba:	|     |  |   3c01      	subs	r4, #1
10005bbc:	|     |  \-- d1fa      	bne.n	10005bb4 <init_cycfg_system+0x88>
10005bbe:	|     \----> 2001      	movs	r0, #1
10005bc0:	|            2100      	movs	r1, #0
10005bc2:	|            2500      	movs	r5, #0
10005bc4:	|            f7fd fe66 	bl	10003894 <Cy_SysClk_ClkPathSetSource>
10005bc8:	|            2000      	movs	r0, #0
10005bca:	|            f7fd fd69 	bl	100036a0 <Cy_SysClk_ClkHfGetSource>
10005bce:	|        /-- b950      	cbnz	r0, 10005be6 <init_cycfg_system+0xba>
10005bd0:	|        |   2000      	movs	r0, #0
10005bd2:	|        |   f7fd fe43 	bl	1000385c <Cy_SysClk_ClkPathGetSource>
10005bd6:	|        |   f240 1111 	movw	r1, #273	; 0x111
10005bda:	|        |   4288      	cmp	r0, r1
10005bdc:	|        +-- d103      	bne.n	10005be6 <init_cycfg_system+0xba>
10005bde:	|        |   2000      	movs	r0, #0
10005be0:	|        |   2101      	movs	r1, #1
10005be2:	|        |   f7fd fd8d 	bl	10003700 <Cy_SysClk_ClkHfSetSource>
10005be6:	|        \-> f7fe f881 	bl	10003cec <Cy_SysClk_FllDisable>
10005bea:	|            2000      	movs	r0, #0
10005bec:	|            2100      	movs	r1, #0
10005bee:	|            f7fd fe51 	bl	10003894 <Cy_SysClk_ClkPathSetSource>
10005bf2:	|            2000      	movs	r0, #0
10005bf4:	|            2100      	movs	r1, #0
10005bf6:	|            f7fd fd83 	bl	10003700 <Cy_SysClk_ClkHfSetSource>
10005bfa:	|            2400      	movs	r4, #0
10005bfc:	|            f2c4 0431 	movt	r4, #16433	; 0x4031
10005c00:	|            4620      	mov	r0, r4
10005c02:	|            2100      	movs	r1, #0
10005c04:	|            2200      	movs	r2, #0
10005c06:	|            2300      	movs	r3, #0
10005c08:	|            9500      	str	r5, [sp, #0]
10005c0a:	|            f7fd f8e7 	bl	10002ddc <Cy_GPIO_Pin_FastInit>
10005c0e:	|            4620      	mov	r0, r4
10005c10:	|            2101      	movs	r1, #1
10005c12:	|            2200      	movs	r2, #0
10005c14:	|            2300      	movs	r3, #0
10005c16:	|            9500      	str	r5, [sp, #0]
10005c18:	|            f7fd f8e0 	bl	10002ddc <Cy_GPIO_Pin_FastInit>
10005c1c:	|            f244 2040 	movw	r0, #16960	; 0x4240
10005c20:	|            f2c0 000f 	movt	r0, #15
10005c24:	|            f7fe fc7e 	bl	10004524 <Cy_SysClk_WcoEnable>
10005c28:	|            2800      	cmp	r0, #0
10005c2a:	|  /-------- f040 8089 	bne.w	10005d40 <init_cycfg_system+0x214>
10005c2e:	|  |         2001      	movs	r0, #1
10005c30:	|  |         f7fd fd82 	bl	10003738 <Cy_SysClk_ClkLfSetSource>
10005c34:	|  |         2000      	movs	r0, #0
10005c36:	|  |         f7fd fcfd 	bl	10003634 <Cy_SysClk_ClkFastSetDivider>
10005c3a:	|  |         2000      	movs	r0, #0
10005c3c:	|  |         f7fd fe64 	bl	10003908 <Cy_SysClk_ClkPeriSetDivider>
10005c40:	|  |         2000      	movs	r0, #0
10005c42:	|  |         f7fd fe71 	bl	10003928 <Cy_SysClk_ClkSlowSetDivider>
10005c46:	|  |         2001      	movs	r0, #1
10005c48:	|  |         2100      	movs	r1, #0
10005c4a:	|  |         f7fd fe23 	bl	10003894 <Cy_SysClk_ClkPathSetSource>
10005c4e:	|  |         2000      	movs	r0, #0
10005c50:	|  |         2100      	movs	r1, #0
10005c52:	|  |         f7fd fe1f 	bl	10003894 <Cy_SysClk_ClkPathSetSource>
10005c56:	|  |         2002      	movs	r0, #2
10005c58:	|  |         2100      	movs	r1, #0
10005c5a:	|  |         f7fd fe1b 	bl	10003894 <Cy_SysClk_ClkPathSetSource>
10005c5e:	|  |         2003      	movs	r0, #3
10005c60:	|  |         2100      	movs	r1, #0
10005c62:	|  |         f7fd fe17 	bl	10003894 <Cy_SysClk_ClkPathSetSource>
10005c66:	|  |         2004      	movs	r0, #4
10005c68:	|  |         2100      	movs	r1, #0
10005c6a:	|  |         f7fd fe13 	bl	10003894 <Cy_SysClk_ClkPathSetSource>
10005c6e:	|  |         2005      	movs	r0, #5
10005c70:	|  |         2100      	movs	r1, #0
10005c72:	|  |         f7fd fe0f 	bl	10003894 <Cy_SysClk_ClkPathSetSource>
10005c76:	|  |         f246 509c 	movw	r0, #26012	; 0x659c
10005c7a:	|  |         f2c1 0000 	movt	r0, #4096	; 0x1000
10005c7e:	|  |         f7fe f941 	bl	10003f04 <Cy_SysClk_FllManualConfigure>
10005c82:	|  |         2800      	cmp	r0, #0
10005c84:	|  |  /----- d154      	bne.n	10005d30 <init_cycfg_system+0x204>
10005c86:	|  |  |      f640 5040 	movw	r0, #3392	; 0xd40
10005c8a:	|  |  |      f2c0 0003 	movt	r0, #3
10005c8e:	|  |  |      f7fe f841 	bl	10003d14 <Cy_SysClk_FllEnable>
10005c92:	|  |  |      2800      	cmp	r0, #0
10005c94:	|  |  +----- d14c      	bne.n	10005d30 <init_cycfg_system+0x204>
10005c96:	|  |  |      2000      	movs	r0, #0
10005c98:	|  |  |      2100      	movs	r1, #0
10005c9a:	|  |  |      f7fd fd31 	bl	10003700 <Cy_SysClk_ClkHfSetSource>
10005c9e:	|  |  |      2000      	movs	r0, #0
10005ca0:	|  |  |      2100      	movs	r1, #0
10005ca2:	|  |  |      f7fd fd11 	bl	100036c8 <Cy_SysClk_ClkHfSetDivider>
10005ca6:	|  |  |      f246 51c2 	movw	r1, #26050	; 0x65c2
10005caa:	|  |  |      f2c1 0100 	movt	r1, #4096	; 0x1000
10005cae:	|  |  |      2001      	movs	r0, #1
10005cb0:	|  |  |      f7fe fbe8 	bl	10004484 <Cy_SysClk_PllManualConfigure>
10005cb4:	|  |  |      2800      	cmp	r0, #0
10005cb6:	|  |  |  /-- d13f      	bne.n	10005d38 <init_cycfg_system+0x20c>
10005cb8:	|  |  |  |   2001      	movs	r0, #1
10005cba:	|  |  |  |   f242 7110 	movw	r1, #10000	; 0x2710
10005cbe:	|  |  |  |   f7fe fac1 	bl	10004244 <Cy_SysClk_PllEnable>
10005cc2:	|  |  |  +-- bbc8      	cbnz	r0, 10005d38 <init_cycfg_system+0x20c>
10005cc4:	|  |  |  |   2000      	movs	r0, #0
10005cc6:	|  |  |  |   f7fd fc9d 	bl	10003604 <Cy_SysClk_ClkBakSetSource>
10005cca:	|  |  |  |   f7fe f9ad 	bl	10004028 <Cy_SysClk_IloEnable>
10005cce:	|  |  |  |   2001      	movs	r0, #1
10005cd0:	|  |  |  |   f7fe f9b4 	bl	1000403c <Cy_SysClk_IloHibernateOn>
10005cd4:	|  |  |  |   2000      	movs	r0, #0
10005cd6:	|  |  |  |   2164      	movs	r1, #100	; 0x64
10005cd8:	|  |  |  |   f7fe fd1a 	bl	10004710 <Cy_SysLib_SetWaitStates>
10005cdc:	|  |  |  |   f7ff f8a4 	bl	10004e28 <SystemCoreClockUpdate>
10005ce0:	|  |  |  |   f246 50b0 	movw	r0, #26032	; 0x65b0
10005ce4:	|  |  |  |   f2c1 0000 	movt	r0, #4096	; 0x1000
10005ce8:	|  |  |  |   f7ff fb74 	bl	100053d4 <cyhal_hwmgr_reserve>
10005cec:	|  |  |  |   f246 50b3 	movw	r0, #26035	; 0x65b3
10005cf0:	|  |  |  |   f2c1 0000 	movt	r0, #4096	; 0x1000
10005cf4:	|  |  |  |   f7ff fb6e 	bl	100053d4 <cyhal_hwmgr_reserve>
10005cf8:	|  |  |  |   f246 50b6 	movw	r0, #26038	; 0x65b6
10005cfc:	|  |  |  |   f2c1 0000 	movt	r0, #4096	; 0x1000
10005d00:	|  |  |  |   f7ff fb68 	bl	100053d4 <cyhal_hwmgr_reserve>
10005d04:	|  |  |  |   f246 50b9 	movw	r0, #26041	; 0x65b9
10005d08:	|  |  |  |   f2c1 0000 	movt	r0, #4096	; 0x1000
10005d0c:	|  |  |  |   f7ff fb62 	bl	100053d4 <cyhal_hwmgr_reserve>
10005d10:	|  |  |  |   f246 50bc 	movw	r0, #26044	; 0x65bc
10005d14:	|  |  |  |   f2c1 0000 	movt	r0, #4096	; 0x1000
10005d18:	|  |  |  |   f7ff fb5c 	bl	100053d4 <cyhal_hwmgr_reserve>
10005d1c:	|  |  |  |   f246 50bf 	movw	r0, #26047	; 0x65bf
10005d20:	|  |  |  |   f2c1 0000 	movt	r0, #4096	; 0x1000
10005d24:	|  |  |  |   b002      	add	sp, #8
10005d26:	|  |  |  |   e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
10005d2a:	|  |  |  |   f7ff bb53 	b.w	100053d4 <cyhal_hwmgr_reserve>
10005d2e:	|  |  |  |   bf00      	nop
10005d30:	|  |  \--|-> 2004      	movs	r0, #4
10005d32:	|  |     |   f7ff fb4b 	bl	100053cc <cycfg_ClockStartupError>
10005d36:	|  |     |   bf00      	nop
10005d38:	|  |     \-> 2003      	movs	r0, #3
10005d3a:	|  |         f7ff fb47 	bl	100053cc <cycfg_ClockStartupError>
10005d3e:	|  |         bf00      	nop
10005d40:	|  \-------> 2005      	movs	r0, #5
10005d42:	|            f7ff fb43 	bl	100053cc <cycfg_ClockStartupError>
10005d46:	|            bf00      	nop
10005d48:	\----------> 2006      	movs	r0, #6
10005d4a:	             f7ff fb3f 	bl	100053cc <cycfg_ClockStartupError>
	...

10005d50 <keyExpansion>:
10005d50:	       e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
10005d54:	       f8d0 10b4 	ldr.w	r1, [r0, #180]	; 0xb4
10005d58:	       f246 4e9a 	movw	lr, #25754	; 0x649a
10005d5c:	       780a      	ldrb	r2, [r1, #0]
10005d5e:	       f246 2c3b 	movw	ip, #25147	; 0x623b
10005d62:	       7102      	strb	r2, [r0, #4]
10005d64:	       784a      	ldrb	r2, [r1, #1]
10005d66:	       f2c1 0e00 	movt	lr, #4096	; 0x1000
10005d6a:	       7142      	strb	r2, [r0, #5]
10005d6c:	       788a      	ldrb	r2, [r1, #2]
10005d6e:	       f2c1 0c00 	movt	ip, #4096	; 0x1000
10005d72:	       7182      	strb	r2, [r0, #6]
10005d74:	       78ca      	ldrb	r2, [r1, #3]
10005d76:	       71c2      	strb	r2, [r0, #7]
10005d78:	       790a      	ldrb	r2, [r1, #4]
10005d7a:	       7202      	strb	r2, [r0, #8]
10005d7c:	       794a      	ldrb	r2, [r1, #5]
10005d7e:	       7242      	strb	r2, [r0, #9]
10005d80:	       798a      	ldrb	r2, [r1, #6]
10005d82:	       7282      	strb	r2, [r0, #10]
10005d84:	       79ca      	ldrb	r2, [r1, #7]
10005d86:	       72c2      	strb	r2, [r0, #11]
10005d88:	       7a0a      	ldrb	r2, [r1, #8]
10005d8a:	       7302      	strb	r2, [r0, #12]
10005d8c:	       7a4a      	ldrb	r2, [r1, #9]
10005d8e:	       7342      	strb	r2, [r0, #13]
10005d90:	       7a8a      	ldrb	r2, [r1, #10]
10005d92:	       7382      	strb	r2, [r0, #14]
10005d94:	       7aca      	ldrb	r2, [r1, #11]
10005d96:	       73c2      	strb	r2, [r0, #15]
10005d98:	       7b0a      	ldrb	r2, [r1, #12]
10005d9a:	       7402      	strb	r2, [r0, #16]
10005d9c:	       7b4a      	ldrb	r2, [r1, #13]
10005d9e:	       7442      	strb	r2, [r0, #17]
10005da0:	       7b8a      	ldrb	r2, [r1, #14]
10005da2:	       7482      	strb	r2, [r0, #18]
10005da4:	       7bc9      	ldrb	r1, [r1, #15]
10005da6:	       74c1      	strb	r1, [r0, #19]
10005da8:	       2100      	movs	r1, #0
10005daa:	   /-- e022      	b.n	10005df2 <keyExpansion+0xa2>
10005dac:	/--|-> 79dd      	ldrb	r5, [r3, #7]
10005dae:	|  |   791a      	ldrb	r2, [r3, #4]
10005db0:	|  |   4075      	eors	r5, r6
10005db2:	|  |   7a1e      	ldrb	r6, [r3, #8]
10005db4:	|  |   795f      	ldrb	r7, [r3, #5]
10005db6:	|  |   ea82 020a 	eor.w	r2, r2, sl
10005dba:	|  |   751a      	strb	r2, [r3, #20]
10005dbc:	|  |   4072      	eors	r2, r6
10005dbe:	|  |   7a5e      	ldrb	r6, [r3, #9]
10005dc0:	|  |   799c      	ldrb	r4, [r3, #6]
10005dc2:	|  |   ea87 0709 	eor.w	r7, r7, r9
10005dc6:	|  |   761a      	strb	r2, [r3, #24]
10005dc8:	|  |   ea87 0206 	eor.w	r2, r7, r6
10005dcc:	|  |   7a9e      	ldrb	r6, [r3, #10]
10005dce:	|  |   ea84 0408 	eor.w	r4, r4, r8
10005dd2:	|  |   759c      	strb	r4, [r3, #22]
10005dd4:	|  |   765a      	strb	r2, [r3, #25]
10005dd6:	|  |   ea84 0206 	eor.w	r2, r4, r6
10005dda:	|  |   7adc      	ldrb	r4, [r3, #11]
10005ddc:	|  |   3102      	adds	r1, #2
10005dde:	|  |   769a      	strb	r2, [r3, #26]
10005de0:	|  |   ea85 0204 	eor.w	r2, r5, r4
10005de4:	|  |   2928      	cmp	r1, #40	; 0x28
10005de6:	|  |   755f      	strb	r7, [r3, #21]
10005de8:	|  |   75dd      	strb	r5, [r3, #23]
10005dea:	|  |   76da      	strb	r2, [r3, #27]
10005dec:	|  |   bf08      	it	eq
10005dee:	|  |   e8bd 87f0 	ldmiaeq.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
10005df2:	|  \-> eb00 0381 	add.w	r3, r0, r1, lsl #2
10005df6:	|      1d0f      	adds	r7, r1, #4
10005df8:	|      f893 a010 	ldrb.w	sl, [r3, #16]
10005dfc:	|      f893 9011 	ldrb.w	r9, [r3, #17]
10005e00:	|      f893 8012 	ldrb.w	r8, [r3, #18]
10005e04:	|      7cde      	ldrb	r6, [r3, #19]
10005e06:	|      07ba      	lsls	r2, r7, #30
10005e08:	+----- d4d0      	bmi.n	10005dac <keyExpansion+0x5c>
10005e0a:	|      f81e 2009 	ldrb.w	r2, [lr, r9]
10005e0e:	|      f81e 9008 	ldrb.w	r9, [lr, r8]
10005e12:	|      f81e 8006 	ldrb.w	r8, [lr, r6]
10005e16:	|      08be      	lsrs	r6, r7, #2
10005e18:	|      f81c 7006 	ldrb.w	r7, [ip, r6]
10005e1c:	|      f81e 600a 	ldrb.w	r6, [lr, sl]
10005e20:	|      ea87 0a02 	eor.w	sl, r7, r2
10005e24:	\----- e7c2      	b.n	10005dac <keyExpansion+0x5c>
	...

10005e28 <main>:
10005e28:	b5f0      	push	{r4, r5, r6, r7, lr}
10005e2a:	b0ed      	sub	sp, #436	; 0x1b4
10005e2c:	2004      	movs	r0, #4
10005e2e:	f06f 417f 	mvn.w	r1, #4278190080	; 0xff000000
10005e32:	f7fe ff6b 	bl	10004d0c <Cy_SysTick_Init>
10005e36:	f7fe ff5b 	bl	10004cf0 <Cy_SysTick_Enable>
10005e3a:	f7ff faa3 	bl	10005384 <cybsp_init>
10005e3e:	f647 602b 	movw	r0, #32299	; 0x7e2b
10005e42:	f2c1 6015 	movt	r0, #5653	; 0x1615
10005e46:	9069      	str	r0, [sp, #420]	; 0x1a4
10005e48:	f64a 7045 	movw	r0, #44869	; 0xaf45
10005e4c:	f2c5 108e 	movt	r0, #20878	; 0x518e
10005e50:	9068      	str	r0, [sp, #416]	; 0x1a0
10005e52:	f24b 709e 	movw	r0, #47006	; 0xb79e
10005e56:	f6ca 406f 	movt	r0, #44143	; 0xac6f
10005e5a:	9067      	str	r0, [sp, #412]	; 0x19c
10005e5c:	f240 301e 	movw	r0, #798	; 0x31e
10005e60:	f6c9 40ac 	movt	r0, #40108	; 0x9cac
10005e64:	9066      	str	r0, [sp, #408]	; 0x198
10005e66:	f642 50ae 	movw	r0, #11694	; 0x2dae
10005e6a:	f64c 7509 	movw	r5, #53001	; 0xcf09
10005e6e:	f24f 76ab 	movw	r6, #63403	; 0xf7ab
10005e72:	f64a 6728 	movw	r7, #44584	; 0xae28
10005e76:	f2c5 708a 	movt	r0, #22410	; 0x578a
10005e7a:	ac37      	add	r4, sp, #220	; 0xdc
10005e7c:	f6c3 454f 	movt	r5, #15439	; 0x3c4f
10005e80:	f6c8 0615 	movt	r6, #34837	; 0x8815
10005e84:	f2ca 67d2 	movt	r7, #42706	; 0xa6d2
10005e88:	9065      	str	r0, [sp, #404]	; 0x194
10005e8a:	1d20      	adds	r0, r4, #4
10005e8c:	21b0      	movs	r1, #176	; 0xb0
10005e8e:	956c      	str	r5, [sp, #432]	; 0x1b0
10005e90:	966b      	str	r6, [sp, #428]	; 0x1ac
10005e92:	976a      	str	r7, [sp, #424]	; 0x1a8
10005e94:	f7fc fb70 	bl	10002578 <__aeabi_memclr4>
10005e98:	a865      	add	r0, sp, #404	; 0x194
10005e9a:	9037      	str	r0, [sp, #220]	; 0xdc
10005e9c:	a869      	add	r0, sp, #420	; 0x1a4
10005e9e:	9064      	str	r0, [sp, #400]	; 0x190
10005ea0:	4620      	mov	r0, r4
10005ea2:	f7ff ff55 	bl	10005d50 <keyExpansion>
10005ea6:	4620      	mov	r0, r4
10005ea8:	f7fc ff96 	bl	10002dd8 <AES128_ECB_encrypt>
10005eac:	f64d 601b 	movw	r0, #56859	; 0xde1b
10005eb0:	f2c1 6015 	movt	r0, #5653	; 0x1615
10005eb4:	9033      	str	r0, [sp, #204]	; 0xcc
10005eb6:	f244 50ac 	movw	r0, #17836	; 0x45ac
10005eba:	f6c8 60af 	movt	r0, #36527	; 0x8eaf
10005ebe:	9032      	str	r0, [sp, #200]	; 0xc8
10005ec0:	f649 609c 	movw	r0, #40604	; 0x9e9c
10005ec4:	f6c6 70b7 	movt	r0, #28599	; 0x6fb7
10005ec8:	9031      	str	r0, [sp, #196]	; 0xc4
10005eca:	f641 6057 	movw	r0, #7767	; 0x1e57
10005ece:	f6ca 4003 	movt	r0, #44035	; 0xac03
10005ed2:	9030      	str	r0, [sp, #192]	; 0xc0
10005ed4:	f64a 6051 	movw	r0, #44625	; 0xae51
10005ed8:	f6c8 202d 	movt	r0, #35373	; 0x8a2d
10005edc:	ac01      	add	r4, sp, #4
10005ede:	902f      	str	r0, [sp, #188]	; 0xbc
10005ee0:	1d20      	adds	r0, r4, #4
10005ee2:	21b0      	movs	r1, #176	; 0xb0
10005ee4:	9536      	str	r5, [sp, #216]	; 0xd8
10005ee6:	e9cd 7634 	strd	r7, r6, [sp, #208]	; 0xd0
10005eea:	f7fc fb45 	bl	10002578 <__aeabi_memclr4>
10005eee:	a82f      	add	r0, sp, #188	; 0xbc
10005ef0:	9001      	str	r0, [sp, #4]
10005ef2:	a833      	add	r0, sp, #204	; 0xcc
10005ef4:	902e      	str	r0, [sp, #184]	; 0xb8
10005ef6:	4620      	mov	r0, r4
10005ef8:	f7fc ff6e 	bl	10002dd8 <AES128_ECB_encrypt>
10005efc:	f246 54c7 	movw	r4, #26055	; 0x65c7
10005f00:	f2c1 0400 	movt	r4, #4096	; 0x1000
10005f04:	4620      	mov	r0, r4
10005f06:	f7fc fb2b 	bl	10002560 <__2printf>
10005f0a:	4620      	mov	r0, r4
10005f0c:	f7fc fb28 	bl	10002560 <__2printf>
10005f10:	2000      	movs	r0, #0
10005f12:	b06d      	add	sp, #436	; 0x1b4
10005f14:	bdf0      	pop	{r4, r5, r6, r7, pc}
	...

10005f18 <mixColumns>:
10005f18:	b570      	push	{r4, r5, r6, lr}
10005f1a:	6801      	ldr	r1, [r0, #0]
10005f1c:	f891 e000 	ldrb.w	lr, [r1]
10005f20:	784b      	ldrb	r3, [r1, #1]
10005f22:	788a      	ldrb	r2, [r1, #2]
10005f24:	f891 c003 	ldrb.w	ip, [r1, #3]
10005f28:	ea83 040e 	eor.w	r4, r3, lr
10005f2c:	4062      	eors	r2, r4
10005f2e:	b265      	sxtb	r5, r4
10005f30:	ea82 030c 	eor.w	r3, r2, ip
10005f34:	f04f 0c1b 	mov.w	ip, #27
10005f38:	ea0c 12d5 	and.w	r2, ip, r5, lsr #7
10005f3c:	ea8e 0444 	eor.w	r4, lr, r4, lsl #1
10005f40:	4062      	eors	r2, r4
10005f42:	405a      	eors	r2, r3
10005f44:	700a      	strb	r2, [r1, #0]
10005f46:	6801      	ldr	r1, [r0, #0]
10005f48:	784a      	ldrb	r2, [r1, #1]
10005f4a:	788c      	ldrb	r4, [r1, #2]
10005f4c:	4054      	eors	r4, r2
10005f4e:	b265      	sxtb	r5, r4
10005f50:	405a      	eors	r2, r3
10005f52:	ea0c 15d5 	and.w	r5, ip, r5, lsr #7
10005f56:	ea82 0244 	eor.w	r2, r2, r4, lsl #1
10005f5a:	406a      	eors	r2, r5
10005f5c:	704a      	strb	r2, [r1, #1]
10005f5e:	6801      	ldr	r1, [r0, #0]
10005f60:	788a      	ldrb	r2, [r1, #2]
10005f62:	78cc      	ldrb	r4, [r1, #3]
10005f64:	4054      	eors	r4, r2
10005f66:	b265      	sxtb	r5, r4
10005f68:	405a      	eors	r2, r3
10005f6a:	ea0c 15d5 	and.w	r5, ip, r5, lsr #7
10005f6e:	ea82 0244 	eor.w	r2, r2, r4, lsl #1
10005f72:	406a      	eors	r2, r5
10005f74:	708a      	strb	r2, [r1, #2]
10005f76:	6801      	ldr	r1, [r0, #0]
10005f78:	78ca      	ldrb	r2, [r1, #3]
10005f7a:	ea82 050e 	eor.w	r5, r2, lr
10005f7e:	b26c      	sxtb	r4, r5
10005f80:	405a      	eors	r2, r3
10005f82:	ea0c 14d4 	and.w	r4, ip, r4, lsr #7
10005f86:	ea82 0245 	eor.w	r2, r2, r5, lsl #1
10005f8a:	4062      	eors	r2, r4
10005f8c:	70ca      	strb	r2, [r1, #3]
10005f8e:	6801      	ldr	r1, [r0, #0]
10005f90:	f891 e004 	ldrb.w	lr, [r1, #4]
10005f94:	794b      	ldrb	r3, [r1, #5]
10005f96:	798d      	ldrb	r5, [r1, #6]
10005f98:	79cc      	ldrb	r4, [r1, #7]
10005f9a:	ea83 020e 	eor.w	r2, r3, lr
10005f9e:	b256      	sxtb	r6, r2
10005fa0:	ea82 0305 	eor.w	r3, r2, r5
10005fa4:	4063      	eors	r3, r4
10005fa6:	ea0c 14d6 	and.w	r4, ip, r6, lsr #7
10005faa:	ea8e 0242 	eor.w	r2, lr, r2, lsl #1
10005fae:	4062      	eors	r2, r4
10005fb0:	405a      	eors	r2, r3
10005fb2:	710a      	strb	r2, [r1, #4]
10005fb4:	6801      	ldr	r1, [r0, #0]
10005fb6:	794a      	ldrb	r2, [r1, #5]
10005fb8:	798c      	ldrb	r4, [r1, #6]
10005fba:	4054      	eors	r4, r2
10005fbc:	b265      	sxtb	r5, r4
10005fbe:	405a      	eors	r2, r3
10005fc0:	ea0c 15d5 	and.w	r5, ip, r5, lsr #7
10005fc4:	ea82 0244 	eor.w	r2, r2, r4, lsl #1
10005fc8:	406a      	eors	r2, r5
10005fca:	714a      	strb	r2, [r1, #5]
10005fcc:	6801      	ldr	r1, [r0, #0]
10005fce:	798a      	ldrb	r2, [r1, #6]
10005fd0:	79cc      	ldrb	r4, [r1, #7]
10005fd2:	4054      	eors	r4, r2
10005fd4:	b265      	sxtb	r5, r4
10005fd6:	405a      	eors	r2, r3
10005fd8:	ea0c 15d5 	and.w	r5, ip, r5, lsr #7
10005fdc:	ea82 0244 	eor.w	r2, r2, r4, lsl #1
10005fe0:	406a      	eors	r2, r5
10005fe2:	718a      	strb	r2, [r1, #6]
10005fe4:	6801      	ldr	r1, [r0, #0]
10005fe6:	79ca      	ldrb	r2, [r1, #7]
10005fe8:	ea82 060e 	eor.w	r6, r2, lr
10005fec:	b275      	sxtb	r5, r6
10005fee:	405a      	eors	r2, r3
10005ff0:	ea0c 15d5 	and.w	r5, ip, r5, lsr #7
10005ff4:	ea82 0246 	eor.w	r2, r2, r6, lsl #1
10005ff8:	406a      	eors	r2, r5
10005ffa:	71ca      	strb	r2, [r1, #7]
10005ffc:	6801      	ldr	r1, [r0, #0]
10005ffe:	f891 e008 	ldrb.w	lr, [r1, #8]
10006002:	7a4b      	ldrb	r3, [r1, #9]
10006004:	7a8e      	ldrb	r6, [r1, #10]
10006006:	ea83 040e 	eor.w	r4, r3, lr
1000600a:	7acd      	ldrb	r5, [r1, #11]
1000600c:	b262      	sxtb	r2, r4
1000600e:	ea84 0306 	eor.w	r3, r4, r6
10006012:	ea0c 12d2 	and.w	r2, ip, r2, lsr #7
10006016:	ea8e 0444 	eor.w	r4, lr, r4, lsl #1
1000601a:	406b      	eors	r3, r5
1000601c:	4062      	eors	r2, r4
1000601e:	405a      	eors	r2, r3
10006020:	720a      	strb	r2, [r1, #8]
10006022:	6801      	ldr	r1, [r0, #0]
10006024:	7a4a      	ldrb	r2, [r1, #9]
10006026:	7a8c      	ldrb	r4, [r1, #10]
10006028:	4054      	eors	r4, r2
1000602a:	b265      	sxtb	r5, r4
1000602c:	405a      	eors	r2, r3
1000602e:	ea0c 15d5 	and.w	r5, ip, r5, lsr #7
10006032:	ea82 0244 	eor.w	r2, r2, r4, lsl #1
10006036:	406a      	eors	r2, r5
10006038:	724a      	strb	r2, [r1, #9]
1000603a:	6801      	ldr	r1, [r0, #0]
1000603c:	7a8a      	ldrb	r2, [r1, #10]
1000603e:	7acc      	ldrb	r4, [r1, #11]
10006040:	4054      	eors	r4, r2
10006042:	b265      	sxtb	r5, r4
10006044:	405a      	eors	r2, r3
10006046:	ea0c 15d5 	and.w	r5, ip, r5, lsr #7
1000604a:	ea82 0244 	eor.w	r2, r2, r4, lsl #1
1000604e:	406a      	eors	r2, r5
10006050:	728a      	strb	r2, [r1, #10]
10006052:	6801      	ldr	r1, [r0, #0]
10006054:	7aca      	ldrb	r2, [r1, #11]
10006056:	ea82 060e 	eor.w	r6, r2, lr
1000605a:	b275      	sxtb	r5, r6
1000605c:	405a      	eors	r2, r3
1000605e:	ea0c 15d5 	and.w	r5, ip, r5, lsr #7
10006062:	ea82 0246 	eor.w	r2, r2, r6, lsl #1
10006066:	406a      	eors	r2, r5
10006068:	72ca      	strb	r2, [r1, #11]
1000606a:	6801      	ldr	r1, [r0, #0]
1000606c:	f891 e00c 	ldrb.w	lr, [r1, #12]
10006070:	7b4b      	ldrb	r3, [r1, #13]
10006072:	7b8e      	ldrb	r6, [r1, #14]
10006074:	ea83 040e 	eor.w	r4, r3, lr
10006078:	7bcd      	ldrb	r5, [r1, #15]
1000607a:	b262      	sxtb	r2, r4
1000607c:	ea84 0306 	eor.w	r3, r4, r6
10006080:	ea0c 12d2 	and.w	r2, ip, r2, lsr #7
10006084:	ea8e 0444 	eor.w	r4, lr, r4, lsl #1
10006088:	406b      	eors	r3, r5
1000608a:	4062      	eors	r2, r4
1000608c:	405a      	eors	r2, r3
1000608e:	730a      	strb	r2, [r1, #12]
10006090:	6801      	ldr	r1, [r0, #0]
10006092:	7b4a      	ldrb	r2, [r1, #13]
10006094:	7b8c      	ldrb	r4, [r1, #14]
10006096:	4054      	eors	r4, r2
10006098:	b265      	sxtb	r5, r4
1000609a:	405a      	eors	r2, r3
1000609c:	ea0c 15d5 	and.w	r5, ip, r5, lsr #7
100060a0:	ea82 0244 	eor.w	r2, r2, r4, lsl #1
100060a4:	406a      	eors	r2, r5
100060a6:	734a      	strb	r2, [r1, #13]
100060a8:	6801      	ldr	r1, [r0, #0]
100060aa:	7b8a      	ldrb	r2, [r1, #14]
100060ac:	7bcc      	ldrb	r4, [r1, #15]
100060ae:	4054      	eors	r4, r2
100060b0:	b265      	sxtb	r5, r4
100060b2:	405a      	eors	r2, r3
100060b4:	ea0c 15d5 	and.w	r5, ip, r5, lsr #7
100060b8:	ea82 0244 	eor.w	r2, r2, r4, lsl #1
100060bc:	406a      	eors	r2, r5
100060be:	738a      	strb	r2, [r1, #14]
100060c0:	6800      	ldr	r0, [r0, #0]
100060c2:	7bc1      	ldrb	r1, [r0, #15]
100060c4:	ea81 020e 	eor.w	r2, r1, lr
100060c8:	b256      	sxtb	r6, r2
100060ca:	4059      	eors	r1, r3
100060cc:	ea0c 16d6 	and.w	r6, ip, r6, lsr #7
100060d0:	ea81 0142 	eor.w	r1, r1, r2, lsl #1
100060d4:	4071      	eors	r1, r6
100060d6:	73c1      	strb	r1, [r0, #15]
100060d8:	bd70      	pop	{r4, r5, r6, pc}

100060da <_fp_init>:
100060da:	eef1 0a10 	vmrs	r0, fpscr
100060de:	f64f 71ff 	movw	r1, #65535	; 0xffff
100060e2:	f2c0 31c0 	movt	r1, #960	; 0x3c0
100060e6:	ea20 0001 	bic.w	r0, r0, r1
100060ea:	f040 7040 	orr.w	r0, r0, #50331648	; 0x3000000
100060ee:	eee1 0a10 	vmsr	fpscr, r0

100060f2 <__fplib_config_fpu_vfp>:
100060f2:	4770      	bx	lr

100060f4 <__stdin_name>:
100060f4:	0074743a                                :tt.

100060f8 <__stdout_name>:
100060f8:	0074743a                                :tt.

100060fc <__stderr_name>:
100060fc:	0074743a                                :tt.

10006100 <CYBSP_CINA_obj>:
10006100:	0b 07 01                                            ...

10006103 <CYBSP_CINB_obj>:
10006103:	070b                                         ...

10006106 <CYBSP_CMOD_obj>:
10006106:	0b 07 07                                            ...

10006109 <CYBSP_CSD_BTN0_obj>:
10006109:	080b                                         ...

1000610c <CYBSP_CSD_BTN1_obj>:
1000610c:	0b 08 02                                            ...

1000610f <CYBSP_CSD_CLK_DIV_obj>:
1000610f:	0005                                         ...

10006112 <CYBSP_CSD_SLD0_obj>:
10006112:	0b 08 03                                            ...

10006115 <CYBSP_CSD_SLD1_obj>:
10006115:	080b                                         ...

10006118 <CYBSP_CSD_SLD2_obj>:
10006118:	0b 08 05                                            ...

1000611b <CYBSP_CSD_SLD3_obj>:
1000611b:	080b                                         ...

1000611e <CYBSP_CSD_SLD4_obj>:
1000611e:	0b 08 07                                            ...

10006121 <CYBSP_CSD_TX_obj>:
10006121:	010b                                         ...

10006124 <CYBSP_SWDCK_config>:
10006124:	00000001 0000000b 0000001d 00000000     ................
	...
10006140:	00000001 00000000 00000000 00000000     ................
	...

10006158 <CYBSP_SWDCK_obj>:
10006158:	0007060b                                ....

1000615c <CYBSP_SWDIO_config>:
1000615c:	00000001 0000000a 0000001d 00000000     ................
	...
10006178:	00000001 00000000 00000000 00000000     ................
	...

10006190 <CYBSP_SWDIO_obj>:
10006190:	0006060b                                ....

10006194 <CYBSP_SWO_config>:
10006194:	00000001 00000006 0000001d 00000000     ................
	...
100061b0:	00000001 00000000 00000000 00000000     ................
	...

100061c8 <CYBSP_SWO_obj>:
100061c8:	0004060b                                ....

100061cc <CYBSP_WCO_IN_config>:
100061cc:	00000001 00000000 00000000 00000000     ................
	...
100061e8:	00000001 00000000 00000000 00000000     ................
	...

10006200 <CYBSP_WCO_IN_obj>:
10006200:	0000000b                                ....

10006204 <CYBSP_WCO_OUT_config>:
10006204:	00000001 00000000 00000000 00000000     ................
	...
10006220:	00000001 00000000 00000000 00000000     ................
	...

10006238 <CYBSP_WCO_OUT_obj>:
10006238:	0b 00 01                                            ...

1000623b <Rcon>:
1000623b:	0402018d 40201008 6c361b80 9a4dabd8     ...... @..6l..M.
1000624b:	63bc5e2f 6a3597c6 fa7db3d4 3991c5ef     /^.c..5j..}....9
1000625b:	bdd3e472 259fc261 6633944a 3a1d83cc     r...a..%J.3f...:
1000626b:	8dcbe874 08040201 80402010 d86c361b     t........ @..6l.
1000627b:	2f9a4dab c663bc5e d46a3597 effa7db3     .M./^.c..5j..}..
1000628b:	723991c5 61bdd3e4 4a259fc2 cc663394     ..9r...a..%J.3f.
1000629b:	743a1d83 018dcbe8 10080402 1b804020     ..:t........ @..
100062ab:	abd86c36 5e2f9a4d 97c663bc b3d46a35     6l..M./^.c..5j..
100062bb:	c5effa7d e4723991 c261bdd3 944a259f     }....9r...a..%J.
100062cb:	83cc6633 e8743a1d 02018dcb 20100804     3f...:t........ 
100062db:	361b8040 4dabd86c bc5e2f9a 3597c663     @..6l..M./^.c..5
100062eb:	7db3d46a 91c5effa d3e47239 9fc261bd     j..}....9r...a..
100062fb:	33944a25 1d83cc66 cbe8743a 0402018d     %J.3f...:t......
1000630b:	40201008 6c361b80 9a4dabd8 63bc5e2f     .. @..6l..M./^.c
1000631b:	6a3597c6 fa7db3d4 3991c5ef bdd3e472     ..5j..}....9r...
1000632b:	259fc261 6633944a 3a1d83cc 00cbe874     a..%J.3f...:t...
	...

1000633c <SystemInit.systemIpcPipeConfigCm4>:
1000633c:	00000003 00000001 00000001 00000000     ................
1000634c:	00600305 00000004 00000001 00000000     ..`.............
1000635c:	00000001 00600406 00000008 08002794     ......`......'..
1000636c:	100045e9                                .E..

10006370 <cyhal_block_offsets_gpio>:
10006370:	18100800 38302820 58504840 78706860     .... (08@HPX`hpx

10006380 <cy_deviceIpBlockCfgPSoC6_02>:
10006380:	40200000 40240000 40000000 00000000     .. @..$@...@....
10006390:	40230000 40300000 40310000 409f0000     ..#@..0@..1@...@
100063a0:	40220000 40100000 409d0000 20202020     .."@...@...@    
100063b0:	10101020 801d1d10 00750017 020603ff      .........u.....
100063c0:	04360006 00002010 0000c07f 00000400     ..6.. ..........
100063d0:	00000000 4b321900 00007d64 80000000     ......2Kd}......
100063e0:	0b080040 00000010 01ff0000 1f000220     @........... ...
100063f0:	04008000 181008ff 14001000 1c001800     ................
10006400:	4c484440 00000050 00001008 00000008     @DHLP...........
10006410:	00000004 00001004 00001200 00002104     .............!..
10006420:	00002100 00001600 02401140 130013c4     .!......@.@.....
10006430:	13a01380 13881340 002013a8 0000001c     ....@..... .....

10006440 <cyhal_block_offsets_clock>:
10006440:	0800 1c18 1e1d 201f 2221 2423 2625 2d2c     ....... !"#$%&,-
10006450:	302f 3731 3938 3b3a 3d3c                    /01789:;<=

1000645a <cyhal_block_offsets_dw>:
1000645a:	1d00                                        ..

1000645c <cyhal_block_offsets_tcpwm>:
1000645c:	0800                                        ..

1000645e <cyhal_resource_offsets>:
1000645e:	0000 0001 0001 0001 0001 0001 003f 0040     ............?.@.
1000646e:	0040 0044 007e 007e 00f6 00f8 00f8 00f8     @.D.~.~.........
1000647e:	00f9 00f9 00fb 00fd 00fd 00ff 0100 0101     ................
1000648e:	010e 0110 0110 0130 0130 0130               ......0.0.0.

1000649a <sbox>:
1000649a:	7b777c63 c56f6bf2 2b670130 76abd7fe     c|w{.ko.0.g+...v
100064aa:	7dc982ca f04759fa afa2d4ad c072a49c     ...}.YG.......r.
100064ba:	2693fdb7 ccf73f36 f1e5a534 1531d871     ...&6?..4...q.1.
100064ca:	c323c704 9a059618 e2801207 75b227eb     ..#..........'.u
100064da:	1a2c8309 a05a6e1b b3d63b52 842fe329     ..,..nZ.R;..)./.
100064ea:	ed00d153 5bb1fc20 39becb6a cf584c4a     S... ..[j..9JLX.
100064fa:	fbaaefd0 85334d43 7f02f945 a89f3c50     ....CM3.E...P<..
1000650a:	8f40a351 f5389d92 21dab6bc d2f3ff10     Q.@...8....!....
1000651a:	ec130ccd 1744975f 3d7ea7c4 73195d64     ...._.D...~=d].s
1000652a:	dc4f8160 88902a22 14b8ee46 db0b5ede     `.O."*..F....^..
1000653a:	0a3a32e0 5c240649 62acd3c2 79e49591     .2:.I.$\...b...y
1000654a:	6d37c8e7 a94ed58d eaf4566c 08ae7a65     ..7m..N.lV..ez..
1000655a:	2e2578ba c6b4a61c 1f74dde8 8a8bbd4b     .x%.......t.K...
1000656a:	66b53e70 0ef60348 b9573561 9e1dc186     p>.fH...a5W.....
1000657a:	1198f8e1 948ed969 e9871e9b df2855ce     ....i........U(.
1000658a:	0d89a18c 6842e6bf 0f2d9941 16bb54b0     ......BhA.-..T..
	...

1000659c <srss_0_clock_0_fll_0_fllConfig>:
1000659c:	000001f4 01040014 0509000a 00030008     ................
100065ac:	00000163                                c...

100065b0 <srss_0_clock_0_pathmux_0_obj>:
100065b0:	04 00 00                                            ...

100065b3 <srss_0_clock_0_pathmux_1_obj>:
100065b3:	0104                                         ...

100065b6 <srss_0_clock_0_pathmux_2_obj>:
100065b6:	04 02 00                                            ...

100065b9 <srss_0_clock_0_pathmux_3_obj>:
100065b9:	0304                                         ...

100065bc <srss_0_clock_0_pathmux_4_obj>:
100065bc:	04 04 00                                            ...

100065bf <srss_0_clock_0_pathmux_5_obj>:
100065bf:	0504                                         ...

100065c2 <srss_0_clock_0_pll_0_pllConfig>:
100065c2:	1e 01 05 00 00                                      .....

100065c7 <.L.str>:
100065c7:	20424345 72636e65 3a747079               ECB encrypt: 

100065d4 <cyhal_block_offsets_tdm>:
100065d4:	00000000                                ....

100065d8 <Region$$Table$$Base>:
100065d8:	1000660c 	.word	0x1000660c
100065dc:	080022e0 	.word	0x080022e0
100065e0:	00000108 	.word	0x00000108
100065e4:	10002358 	.word	0x10002358
100065e8:	10006714 	.word	0x10006714
100065ec:	08002894 	.word	0x08002894
100065f0:	00000094 	.word	0x00000094
100065f4:	10002358 	.word	0x10002358
100065f8:	10006714 	.word	0x10006714
100065fc:	080023e8 	.word	0x080023e8
10006600:	000004ac 	.word	0x000004ac
10006604:	10002374 	.word	0x10002374

10006608 <Region$$Table$$Limit>:
10006608:	ffffe881 	.word	0xffffe881
