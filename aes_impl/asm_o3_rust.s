
.\target\thumbv7em-none-eabi\debug\psoc6_helloworld:     file format elf32-littlearm


Disassembly of section .text:

10002400 <Reset>:
10002400:	       b580      	push	{r7, lr}
10002402:	       466f      	mov	r7, sp
10002404:	       f000 fcf0 	bl	10002de8 <DefaultPreInit>
10002408:	       f240 0004 	movw	r0, #4
1000240c:	       f240 0100 	movw	r1, #0
10002410:	       f6c0 0000 	movt	r0, #2048	; 0x800
10002414:	       f6c0 0100 	movt	r1, #2048	; 0x800
10002418:	       4281      	cmp	r1, r0
1000241a:	/----- d213      	bcs.n	10002444 <Reset+0x44>
1000241c:	|      f240 0100 	movw	r1, #0
10002420:	|      2200      	movs	r2, #0
10002422:	|      f6c0 0100 	movt	r1, #2048	; 0x800
10002426:	|  /-> f841 2b04 	str.w	r2, [r1], #4
1000242a:	|  |   4281      	cmp	r1, r0
1000242c:	|  |   bf3f      	itttt	cc
1000242e:	|  |   f841 2b04 	strcc.w	r2, [r1], #4
10002432:	|  |   4281      	cmpcc	r1, r0
10002434:	|  |   f841 2b04 	strcc.w	r2, [r1], #4
10002438:	|  |   4281      	cmpcc	r1, r0
1000243a:	+--|-- d203      	bcs.n	10002444 <Reset+0x44>
1000243c:	|  |   f841 2b04 	str.w	r2, [r1], #4
10002440:	|  |   4281      	cmp	r1, r0
10002442:	|  \-- d3f0      	bcc.n	10002426 <Reset+0x26>
10002444:	\----> f240 0100 	movw	r1, #0
10002448:	       f240 0000 	movw	r0, #0
1000244c:	       f6c0 0100 	movt	r1, #2048	; 0x800
10002450:	       f6c0 0000 	movt	r0, #2048	; 0x800
10002454:	       4288      	cmp	r0, r1
10002456:	   /-- d20e      	bcs.n	10002476 <Reset+0x76>
10002458:	   |   1d02      	adds	r2, r0, #4
1000245a:	   |   4291      	cmp	r1, r2
1000245c:	   |   bf88      	it	hi
1000245e:	   |   460a      	movhi	r2, r1
10002460:	   |   43c1      	mvns	r1, r0
10002462:	   |   4411      	add	r1, r2
10002464:	   |   3104      	adds	r1, #4
10002466:	   |   f021 0203 	bic.w	r2, r1, #3
1000246a:	   |   f645 7130 	movw	r1, #24368	; 0x5f30
1000246e:	   |   f2c1 0100 	movt	r1, #4096	; 0x1000
10002472:	   |   f002 fb76 	bl	10004b62 <__aeabi_memcpy4>
10002476:	   \-> f000 fba7 	bl	10002bc8 <main>
1000247a:	       defe      	udf	#254	; 0xfe

1000247c <_ZN4core3ptr27drop_in_place$LT$$RF$u8$GT$17hed9a4ff26329ab12E.llvm.15333494740040415928>:
1000247c:	4770      	bx	lr

1000247e <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5d77101c73510983E>:
1000247e:	    b5b0      	push	{r4, r5, r7, lr}
10002480:	    af02      	add	r7, sp, #8
10002482:	    6805      	ldr	r5, [r0, #0]
10002484:	    4608      	mov	r0, r1
10002486:	    460c      	mov	r4, r1
10002488:	    f001 fbe5 	bl	10003c56 <_ZN4core3fmt9Formatter15debug_lower_hex17h5dcf38f8882c06f6E>
1000248c:	/-- b128      	cbz	r0, 1000249a <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5d77101c73510983E+0x1c>
1000248e:	|   4628      	mov	r0, r5
10002490:	|   4621      	mov	r1, r4
10002492:	|   e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
10002496:	|   f002 b8a0 	b.w	100045da <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17hd2ff1f8ade8e7948E>
1000249a:	\-> 4620      	mov	r0, r4
1000249c:	    f001 fbdf 	bl	10003c5e <_ZN4core3fmt9Formatter15debug_upper_hex17hd681e72d6ac94a7bE>
100024a0:	/-- b128      	cbz	r0, 100024ae <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5d77101c73510983E+0x30>
100024a2:	|   4628      	mov	r0, r5
100024a4:	|   4621      	mov	r1, r4
100024a6:	|   e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
100024aa:	|   f002 b8c8 	b.w	1000463e <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h4f5608d4d72e09adE>
100024ae:	\-> 4628      	mov	r0, r5
100024b0:	    4621      	mov	r1, r4
100024b2:	    e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
100024b6:	    f002 ba24 	b.w	10004902 <_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17hb97f478befa85bdeE>

100024ba <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha0b18e0a589e2fe3E>:
100024ba:	6800      	ldr	r0, [r0, #0]
100024bc:	f000 baf5 	b.w	10002aaa <_ZN4core5array69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$3fmt17h57838e7e33ebe76fE>

100024c0 <_ZN16psoc6_helloworld18aes_using_1d_array3AES13key_expansion17hf85dc4f53eb804e6E>:
100024c0:	             b5f0      	push	{r4, r5, r6, r7, lr}
100024c2:	             af03      	add	r7, sp, #12
100024c4:	             e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
100024c8:	             6841      	ldr	r1, [r0, #4]
100024ca:	             f644 7e00 	movw	lr, #20224	; 0x4f00
100024ce:	             f100 0c08 	add.w	ip, r0, #8
100024d2:	             f2c1 0e00 	movt	lr, #4096	; 0x1000
100024d6:	             680a      	ldr	r2, [r1, #0]
100024d8:	             684b      	ldr	r3, [r1, #4]
100024da:	             688e      	ldr	r6, [r1, #8]
100024dc:	             68c9      	ldr	r1, [r1, #12]
100024de:	             6141      	str	r1, [r0, #20]
100024e0:	             2100      	movs	r1, #0
100024e2:	             e88c 004c 	stmia.w	ip, {r2, r3, r6}
100024e6:	   /-------- e034      	b.n	10002552 <_ZN16psoc6_helloworld18aes_using_1d_array3AES13key_expansion17hf85dc4f53eb804e6E+0x92>
100024e8:	/--|-------> f245 0200 	movw	r2, #20480	; 0x5000
100024ec:	|  |         f3c6 0685 	ubfx	r6, r6, #2, #6
100024f0:	|  |         f2c1 0200 	movt	r2, #4096	; 0x1000
100024f4:	|  |         f81e c00c 	ldrb.w	ip, [lr, ip]
100024f8:	|  |         5d96      	ldrb	r6, [r2, r6]
100024fa:	|  |         f81e 800b 	ldrb.w	r8, [lr, fp]
100024fe:	|  |         f81e 9004 	ldrb.w	r9, [lr, r4]
10002502:	|  |         ea86 0a0c 	eor.w	sl, r6, ip
10002506:	|  |         f81e c005 	ldrb.w	ip, [lr, r5]
1000250a:	|  |  /----> 7a5d      	ldrb	r5, [r3, #9]
1000250c:	|  |  |      3102      	adds	r1, #2
1000250e:	|  |  |      7ada      	ldrb	r2, [r3, #11]
10002510:	|  |  |      2928      	cmp	r1, #40	; 0x28
10002512:	|  |  |      7a1c      	ldrb	r4, [r3, #8]
10002514:	|  |  |      ea85 050c 	eor.w	r5, r5, ip
10002518:	|  |  |      ea82 0c08 	eor.w	ip, r2, r8
1000251c:	|  |  |      7b1a      	ldrb	r2, [r3, #12]
1000251e:	|  |  |      ea84 040a 	eor.w	r4, r4, sl
10002522:	|  |  |      7a9e      	ldrb	r6, [r3, #10]
10002524:	|  |  |      ea82 0204 	eor.w	r2, r2, r4
10002528:	|  |  |      771a      	strb	r2, [r3, #28]
1000252a:	|  |  |      7b5a      	ldrb	r2, [r3, #13]
1000252c:	|  |  |      ea86 0609 	eor.w	r6, r6, r9
10002530:	|  |  |      761c      	strb	r4, [r3, #24]
10002532:	|  |  |      ea82 0205 	eor.w	r2, r2, r5
10002536:	|  |  |      775a      	strb	r2, [r3, #29]
10002538:	|  |  |      7b9a      	ldrb	r2, [r3, #14]
1000253a:	|  |  |      765d      	strb	r5, [r3, #25]
1000253c:	|  |  |      ea82 0206 	eor.w	r2, r2, r6
10002540:	|  |  |      779a      	strb	r2, [r3, #30]
10002542:	|  |  |      7bda      	ldrb	r2, [r3, #15]
10002544:	|  |  |      769e      	strb	r6, [r3, #26]
10002546:	|  |  |      ea82 020c 	eor.w	r2, r2, ip
1000254a:	|  |  |      f883 c01b 	strb.w	ip, [r3, #27]
1000254e:	|  |  |      77da      	strb	r2, [r3, #31]
10002550:	|  |  |  /-- d00e      	beq.n	10002570 <_ZN16psoc6_helloworld18aes_using_1d_array3AES13key_expansion17hf85dc4f53eb804e6E+0xb0>
10002552:	|  \--|--|-> eb00 0381 	add.w	r3, r0, r1, lsl #2
10002556:	|     |  |   1d0e      	adds	r6, r1, #4
10002558:	|     |  |   f893 b014 	ldrb.w	fp, [r3, #20]
1000255c:	|     |  |   07b2      	lsls	r2, r6, #30
1000255e:	|     |  |   f893 c015 	ldrb.w	ip, [r3, #21]
10002562:	|     |  |   7d9d      	ldrb	r5, [r3, #22]
10002564:	|     |  |   7ddc      	ldrb	r4, [r3, #23]
10002566:	\-----|--|-- d5bf      	bpl.n	100024e8 <_ZN16psoc6_helloworld18aes_using_1d_array3AES13key_expansion17hf85dc4f53eb804e6E+0x28>
10002568:	      |  |   46a0      	mov	r8, r4
1000256a:	      |  |   46a9      	mov	r9, r5
1000256c:	      |  |   46da      	mov	sl, fp
1000256e:	      \--|-- e7cc      	b.n	1000250a <_ZN16psoc6_helloworld18aes_using_1d_array3AES13key_expansion17hf85dc4f53eb804e6E+0x4a>
10002570:	         \-> e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
10002574:	             bdf0      	pop	{r4, r5, r6, r7, pc}

10002576 <_ZN16psoc6_helloworld18aes_using_1d_array3AES18AES128_ECB_encrypt17h99e5ad778b70d921E>:
10002576:	    b5f0      	push	{r4, r5, r6, r7, lr}
10002578:	    af03      	add	r7, sp, #12
1000257a:	    e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
1000257e:	    b086      	sub	sp, #24
10002580:	    4604      	mov	r4, r0
10002582:	    7a00      	ldrb	r0, [r0, #8]
10002584:	    6821      	ldr	r1, [r4, #0]
10002586:	    f04f 0900 	mov.w	r9, #0
1000258a:	    f04f 0b1b 	mov.w	fp, #27
1000258e:	    9405      	str	r4, [sp, #20]
10002590:	    780a      	ldrb	r2, [r1, #0]
10002592:	    784b      	ldrb	r3, [r1, #1]
10002594:	    4050      	eors	r0, r2
10002596:	    7008      	strb	r0, [r1, #0]
10002598:	    7a60      	ldrb	r0, [r4, #9]
1000259a:	    788e      	ldrb	r6, [r1, #2]
1000259c:	    4058      	eors	r0, r3
1000259e:	    7048      	strb	r0, [r1, #1]
100025a0:	    7aa0      	ldrb	r0, [r4, #10]
100025a2:	    78cd      	ldrb	r5, [r1, #3]
100025a4:	    4070      	eors	r0, r6
100025a6:	    7088      	strb	r0, [r1, #2]
100025a8:	    7ae0      	ldrb	r0, [r4, #11]
100025aa:	    790a      	ldrb	r2, [r1, #4]
100025ac:	    4068      	eors	r0, r5
100025ae:	    70c8      	strb	r0, [r1, #3]
100025b0:	    7b20      	ldrb	r0, [r4, #12]
100025b2:	    4050      	eors	r0, r2
100025b4:	    7108      	strb	r0, [r1, #4]
100025b6:	    7b60      	ldrb	r0, [r4, #13]
100025b8:	    794a      	ldrb	r2, [r1, #5]
100025ba:	    4050      	eors	r0, r2
100025bc:	    7148      	strb	r0, [r1, #5]
100025be:	    7ba0      	ldrb	r0, [r4, #14]
100025c0:	    798a      	ldrb	r2, [r1, #6]
100025c2:	    4050      	eors	r0, r2
100025c4:	    7188      	strb	r0, [r1, #6]
100025c6:	    7be0      	ldrb	r0, [r4, #15]
100025c8:	    79ca      	ldrb	r2, [r1, #7]
100025ca:	    4050      	eors	r0, r2
100025cc:	    71c8      	strb	r0, [r1, #7]
100025ce:	    7c20      	ldrb	r0, [r4, #16]
100025d0:	    7a0a      	ldrb	r2, [r1, #8]
100025d2:	    4050      	eors	r0, r2
100025d4:	    7208      	strb	r0, [r1, #8]
100025d6:	    7c60      	ldrb	r0, [r4, #17]
100025d8:	    7a4a      	ldrb	r2, [r1, #9]
100025da:	    4050      	eors	r0, r2
100025dc:	    7248      	strb	r0, [r1, #9]
100025de:	    7ca0      	ldrb	r0, [r4, #18]
100025e0:	    7a8a      	ldrb	r2, [r1, #10]
100025e2:	    4050      	eors	r0, r2
100025e4:	    7288      	strb	r0, [r1, #10]
100025e6:	    7ce0      	ldrb	r0, [r4, #19]
100025e8:	    7aca      	ldrb	r2, [r1, #11]
100025ea:	    4050      	eors	r0, r2
100025ec:	    72c8      	strb	r0, [r1, #11]
100025ee:	    7d20      	ldrb	r0, [r4, #20]
100025f0:	    7b0a      	ldrb	r2, [r1, #12]
100025f2:	    4050      	eors	r0, r2
100025f4:	    7308      	strb	r0, [r1, #12]
100025f6:	    7d60      	ldrb	r0, [r4, #21]
100025f8:	    7b4a      	ldrb	r2, [r1, #13]
100025fa:	    4050      	eors	r0, r2
100025fc:	    7348      	strb	r0, [r1, #13]
100025fe:	    7da0      	ldrb	r0, [r4, #22]
10002600:	    7b8a      	ldrb	r2, [r1, #14]
10002602:	    4050      	eors	r0, r2
10002604:	    7388      	strb	r0, [r1, #14]
10002606:	    7de0      	ldrb	r0, [r4, #23]
10002608:	    7bca      	ldrb	r2, [r1, #15]
1000260a:	    4050      	eors	r0, r2
1000260c:	    73c8      	strb	r0, [r1, #15]
1000260e:	    f104 0018 	add.w	r0, r4, #24
10002612:	    9000      	str	r0, [sp, #0]
10002614:	/-> 9805      	ldr	r0, [sp, #20]
10002616:	|   f8cd 9010 	str.w	r9, [sp, #16]
1000261a:	|   6801      	ldr	r1, [r0, #0]
1000261c:	|   4604      	mov	r4, r0
1000261e:	|   f644 7000 	movw	r0, #20224	; 0x4f00
10002622:	|   f2c1 0000 	movt	r0, #4096	; 0x1000
10002626:	|   780a      	ldrb	r2, [r1, #0]
10002628:	|   784b      	ldrb	r3, [r1, #1]
1000262a:	|   788e      	ldrb	r6, [r1, #2]
1000262c:	|   5c82      	ldrb	r2, [r0, r2]
1000262e:	|   78cd      	ldrb	r5, [r1, #3]
10002630:	|   700a      	strb	r2, [r1, #0]
10002632:	|   5cc2      	ldrb	r2, [r0, r3]
10002634:	|   704a      	strb	r2, [r1, #1]
10002636:	|   5d82      	ldrb	r2, [r0, r6]
10002638:	|   708a      	strb	r2, [r1, #2]
1000263a:	|   5d42      	ldrb	r2, [r0, r5]
1000263c:	|   70ca      	strb	r2, [r1, #3]
1000263e:	|   790a      	ldrb	r2, [r1, #4]
10002640:	|   5c82      	ldrb	r2, [r0, r2]
10002642:	|   710a      	strb	r2, [r1, #4]
10002644:	|   794a      	ldrb	r2, [r1, #5]
10002646:	|   5c82      	ldrb	r2, [r0, r2]
10002648:	|   714a      	strb	r2, [r1, #5]
1000264a:	|   798a      	ldrb	r2, [r1, #6]
1000264c:	|   5c82      	ldrb	r2, [r0, r2]
1000264e:	|   718a      	strb	r2, [r1, #6]
10002650:	|   79ca      	ldrb	r2, [r1, #7]
10002652:	|   5c82      	ldrb	r2, [r0, r2]
10002654:	|   71ca      	strb	r2, [r1, #7]
10002656:	|   7a0a      	ldrb	r2, [r1, #8]
10002658:	|   5c82      	ldrb	r2, [r0, r2]
1000265a:	|   720a      	strb	r2, [r1, #8]
1000265c:	|   7a4a      	ldrb	r2, [r1, #9]
1000265e:	|   5c82      	ldrb	r2, [r0, r2]
10002660:	|   724a      	strb	r2, [r1, #9]
10002662:	|   7a8a      	ldrb	r2, [r1, #10]
10002664:	|   5c82      	ldrb	r2, [r0, r2]
10002666:	|   728a      	strb	r2, [r1, #10]
10002668:	|   7aca      	ldrb	r2, [r1, #11]
1000266a:	|   5c82      	ldrb	r2, [r0, r2]
1000266c:	|   72ca      	strb	r2, [r1, #11]
1000266e:	|   7b0a      	ldrb	r2, [r1, #12]
10002670:	|   5c82      	ldrb	r2, [r0, r2]
10002672:	|   730a      	strb	r2, [r1, #12]
10002674:	|   7b4a      	ldrb	r2, [r1, #13]
10002676:	|   5c82      	ldrb	r2, [r0, r2]
10002678:	|   734a      	strb	r2, [r1, #13]
1000267a:	|   7b8a      	ldrb	r2, [r1, #14]
1000267c:	|   5c82      	ldrb	r2, [r0, r2]
1000267e:	|   738a      	strb	r2, [r1, #14]
10002680:	|   7bca      	ldrb	r2, [r1, #15]
10002682:	|   5c82      	ldrb	r2, [r0, r2]
10002684:	|   4620      	mov	r0, r4
10002686:	|   73ca      	strb	r2, [r1, #15]
10002688:	|   6821      	ldr	r1, [r4, #0]
1000268a:	|   7b4a      	ldrb	r2, [r1, #13]
1000268c:	|   784b      	ldrb	r3, [r1, #1]
1000268e:	|   734b      	strb	r3, [r1, #13]
10002690:	|   7a4b      	ldrb	r3, [r1, #9]
10002692:	|   724a      	strb	r2, [r1, #9]
10002694:	|   7a8a      	ldrb	r2, [r1, #10]
10002696:	|   788e      	ldrb	r6, [r1, #2]
10002698:	|   708a      	strb	r2, [r1, #2]
1000269a:	|   798a      	ldrb	r2, [r1, #6]
1000269c:	|   794c      	ldrb	r4, [r1, #5]
1000269e:	|   714b      	strb	r3, [r1, #5]
100026a0:	|   7b8b      	ldrb	r3, [r1, #14]
100026a2:	|   738a      	strb	r2, [r1, #14]
100026a4:	|   7bca      	ldrb	r2, [r1, #15]
100026a6:	|   78cd      	ldrb	r5, [r1, #3]
100026a8:	|   718b      	strb	r3, [r1, #6]
100026aa:	|   70ca      	strb	r2, [r1, #3]
100026ac:	|   79ca      	ldrb	r2, [r1, #7]
100026ae:	|   7acb      	ldrb	r3, [r1, #11]
100026b0:	|   704c      	strb	r4, [r1, #1]
100026b2:	|   728e      	strb	r6, [r1, #10]
100026b4:	|   73cb      	strb	r3, [r1, #15]
100026b6:	|   72ca      	strb	r2, [r1, #11]
100026b8:	|   71cd      	strb	r5, [r1, #7]
100026ba:	|   6801      	ldr	r1, [r0, #0]
100026bc:	|   780d      	ldrb	r5, [r1, #0]
100026be:	|   78ca      	ldrb	r2, [r1, #3]
100026c0:	|   7848      	ldrb	r0, [r1, #1]
100026c2:	|   788b      	ldrb	r3, [r1, #2]
100026c4:	|   ea82 0605 	eor.w	r6, r2, r5
100026c8:	|   ea80 0c05 	eor.w	ip, r0, r5
100026cc:	|   9003      	str	r0, [sp, #12]
100026ce:	|   b274      	sxtb	r4, r6
100026d0:	|   ea83 000c 	eor.w	r0, r3, ip
100026d4:	|   ea0b 14d4 	and.w	r4, fp, r4, lsr #7
100026d8:	|   ea80 0646 	eor.w	r6, r0, r6, lsl #1
100026dc:	|   4066      	eors	r6, r4
100026de:	|   70ce      	strb	r6, [r1, #3]
100026e0:	|   ea82 0603 	eor.w	r6, r2, r3
100026e4:	|   9001      	str	r0, [sp, #4]
100026e6:	|   ea82 000c 	eor.w	r0, r2, ip
100026ea:	|   f891 e007 	ldrb.w	lr, [r1, #7]
100026ee:	|   b274      	sxtb	r4, r6
100026f0:	|   ea80 0046 	eor.w	r0, r0, r6, lsl #1
100026f4:	|   ea0b 14d4 	and.w	r4, fp, r4, lsr #7
100026f8:	|   798e      	ldrb	r6, [r1, #6]
100026fa:	|   4060      	eors	r0, r4
100026fc:	|   f891 8004 	ldrb.w	r8, [r1, #4]
10002700:	|   794c      	ldrb	r4, [r1, #5]
10002702:	|   7088      	strb	r0, [r1, #2]
10002704:	|   ea8e 0006 	eor.w	r0, lr, r6
10002708:	|   ea84 0908 	eor.w	r9, r4, r8
1000270c:	|   9302      	str	r3, [sp, #8]
1000270e:	|   ea8e 0a09 	eor.w	sl, lr, r9
10002712:	|   ea8a 0a40 	eor.w	sl, sl, r0, lsl #1
10002716:	|   b240      	sxtb	r0, r0
10002718:	|   ea0b 10d0 	and.w	r0, fp, r0, lsr #7
1000271c:	|   ea80 000a 	eor.w	r0, r0, sl
10002720:	|   7188      	strb	r0, [r1, #6]
10002722:	|   ea8e 0008 	eor.w	r0, lr, r8
10002726:	|   ea86 0a09 	eor.w	sl, r6, r9
1000272a:	|   ea8a 0340 	eor.w	r3, sl, r0, lsl #1
1000272e:	|   b240      	sxtb	r0, r0
10002730:	|   ea0b 10d0 	and.w	r0, fp, r0, lsr #7
10002734:	|   4058      	eors	r0, r3
10002736:	|   fa4f f38c 	sxtb.w	r3, ip
1000273a:	|   71c8      	strb	r0, [r1, #7]
1000273c:	|   ea85 004c 	eor.w	r0, r5, ip, lsl #1
10002740:	|   ea0b 13d3 	and.w	r3, fp, r3, lsr #7
10002744:	|   4058      	eors	r0, r3
10002746:	|   9b01      	ldr	r3, [sp, #4]
10002748:	|   ea83 0c02 	eor.w	ip, r3, r2
1000274c:	|   fa4f f389 	sxtb.w	r3, r9
10002750:	|   ea80 000c 	eor.w	r0, r0, ip
10002754:	|   7008      	strb	r0, [r1, #0]
10002756:	|   ea88 0049 	eor.w	r0, r8, r9, lsl #1
1000275a:	|   ea0b 13d3 	and.w	r3, fp, r3, lsr #7
1000275e:	|   4058      	eors	r0, r3
10002760:	|   ea8a 030e 	eor.w	r3, sl, lr
10002764:	|   4058      	eors	r0, r3
10002766:	|   7108      	strb	r0, [r1, #4]
10002768:	|   e9dd 0202 	ldrd	r0, r2, [sp, #8]
1000276c:	|   f891 8009 	ldrb.w	r8, [r1, #9]
10002770:	|   4050      	eors	r0, r2
10002772:	|   ea82 020c 	eor.w	r2, r2, ip
10002776:	|   f8dd 9010 	ldr.w	r9, [sp, #16]
1000277a:	|   b245      	sxtb	r5, r0
1000277c:	|   ea82 0040 	eor.w	r0, r2, r0, lsl #1
10002780:	|   ea0b 15d5 	and.w	r5, fp, r5, lsr #7
10002784:	|   ea83 0204 	eor.w	r2, r3, r4
10002788:	|   4068      	eors	r0, r5
1000278a:	|   7048      	strb	r0, [r1, #1]
1000278c:	|   ea86 0004 	eor.w	r0, r6, r4
10002790:	|   ea82 0240 	eor.w	r2, r2, r0, lsl #1
10002794:	|   b240      	sxtb	r0, r0
10002796:	|   ea0b 10d0 	and.w	r0, fp, r0, lsr #7
1000279a:	|   4050      	eors	r0, r2
1000279c:	|   7148      	strb	r0, [r1, #5]
1000279e:	|   7a08      	ldrb	r0, [r1, #8]
100027a0:	|   ea88 0300 	eor.w	r3, r8, r0
100027a4:	|   b25d      	sxtb	r5, r3
100027a6:	|   ea80 0643 	eor.w	r6, r0, r3, lsl #1
100027aa:	|   ea0b 15d5 	and.w	r5, fp, r5, lsr #7
100027ae:	|   ea86 0c05 	eor.w	ip, r6, r5
100027b2:	|   7a8d      	ldrb	r5, [r1, #10]
100027b4:	|   7ace      	ldrb	r6, [r1, #11]
100027b6:	|   ea85 0403 	eor.w	r4, r5, r3
100027ba:	|   ea84 0e06 	eor.w	lr, r4, r6
100027be:	|   4070      	eors	r0, r6
100027c0:	|   ea8c 020e 	eor.w	r2, ip, lr
100027c4:	|   720a      	strb	r2, [r1, #8]
100027c6:	|   ea84 0240 	eor.w	r2, r4, r0, lsl #1
100027ca:	|   b240      	sxtb	r0, r0
100027cc:	|   ea0b 10d0 	and.w	r0, fp, r0, lsr #7
100027d0:	|   4050      	eors	r0, r2
100027d2:	|   72c8      	strb	r0, [r1, #11]
100027d4:	|   ea86 0005 	eor.w	r0, r6, r5
100027d8:	|   ea86 0203 	eor.w	r2, r6, r3
100027dc:	|   7bce      	ldrb	r6, [r1, #15]
100027de:	|   ea82 0240 	eor.w	r2, r2, r0, lsl #1
100027e2:	|   b240      	sxtb	r0, r0
100027e4:	|   ea0b 10d0 	and.w	r0, fp, r0, lsr #7
100027e8:	|   7b8b      	ldrb	r3, [r1, #14]
100027ea:	|   4050      	eors	r0, r2
100027ec:	|   7288      	strb	r0, [r1, #10]
100027ee:	|   ea85 0008 	eor.w	r0, r5, r8
100027f2:	|   ea8e 0208 	eor.w	r2, lr, r8
100027f6:	|   f891 800d 	ldrb.w	r8, [r1, #13]
100027fa:	|   ea82 0240 	eor.w	r2, r2, r0, lsl #1
100027fe:	|   b240      	sxtb	r0, r0
10002800:	|   ea0b 10d0 	and.w	r0, fp, r0, lsr #7
10002804:	|   4050      	eors	r0, r2
10002806:	|   7248      	strb	r0, [r1, #9]
10002808:	|   7b08      	ldrb	r0, [r1, #12]
1000280a:	|   ea86 0500 	eor.w	r5, r6, r0
1000280e:	|   b26c      	sxtb	r4, r5
10002810:	|   ea0b 1cd4 	and.w	ip, fp, r4, lsr #7
10002814:	|   ea88 0400 	eor.w	r4, r8, r0
10002818:	|   ea83 0e04 	eor.w	lr, r3, r4
1000281c:	|   ea8e 0545 	eor.w	r5, lr, r5, lsl #1
10002820:	|   ea80 0044 	eor.w	r0, r0, r4, lsl #1
10002824:	|   ea85 050c 	eor.w	r5, r5, ip
10002828:	|   73cd      	strb	r5, [r1, #15]
1000282a:	|   ea86 0503 	eor.w	r5, r6, r3
1000282e:	|   b26a      	sxtb	r2, r5
10002830:	|   ea0b 1cd2 	and.w	ip, fp, r2, lsr #7
10002834:	|   ea86 0204 	eor.w	r2, r6, r4
10002838:	|   ea82 0245 	eor.w	r2, r2, r5, lsl #1
1000283c:	|   ea82 020c 	eor.w	r2, r2, ip
10002840:	|   738a      	strb	r2, [r1, #14]
10002842:	|   b262      	sxtb	r2, r4
10002844:	|   9c05      	ldr	r4, [sp, #20]
10002846:	|   ea0b 12d2 	and.w	r2, fp, r2, lsr #7
1000284a:	|   4050      	eors	r0, r2
1000284c:	|   ea8e 0206 	eor.w	r2, lr, r6
10002850:	|   4050      	eors	r0, r2
10002852:	|   7308      	strb	r0, [r1, #12]
10002854:	|   ea83 0008 	eor.w	r0, r3, r8
10002858:	|   ea82 0208 	eor.w	r2, r2, r8
1000285c:	|   f8dd 8000 	ldr.w	r8, [sp]
10002860:	|   b243      	sxtb	r3, r0
10002862:	|   ea82 0040 	eor.w	r0, r2, r0, lsl #1
10002866:	|   ea0b 13d3 	and.w	r3, fp, r3, lsr #7
1000286a:	|   4058      	eors	r0, r3
1000286c:	|   7348      	strb	r0, [r1, #13]
1000286e:	|   6821      	ldr	r1, [r4, #0]
10002870:	|   444c      	add	r4, r9
10002872:	|   f818 0009 	ldrb.w	r0, [r8, r9]
10002876:	|   7ee5      	ldrb	r5, [r4, #27]
10002878:	|   780a      	ldrb	r2, [r1, #0]
1000287a:	|   784b      	ldrb	r3, [r1, #1]
1000287c:	|   4050      	eors	r0, r2
1000287e:	|   7008      	strb	r0, [r1, #0]
10002880:	|   7e60      	ldrb	r0, [r4, #25]
10002882:	|   f891 e002 	ldrb.w	lr, [r1, #2]
10002886:	|   7ea2      	ldrb	r2, [r4, #26]
10002888:	|   4058      	eors	r0, r3
1000288a:	|   f891 c003 	ldrb.w	ip, [r1, #3]
1000288e:	|   7048      	strb	r0, [r1, #1]
10002890:	|   ea8e 0002 	eor.w	r0, lr, r2
10002894:	|   7088      	strb	r0, [r1, #2]
10002896:	|   ea8c 0005 	eor.w	r0, ip, r5
1000289a:	|   70c8      	strb	r0, [r1, #3]
1000289c:	|   7f26      	ldrb	r6, [r4, #28]
1000289e:	|   7908      	ldrb	r0, [r1, #4]
100028a0:	|   794a      	ldrb	r2, [r1, #5]
100028a2:	|   4070      	eors	r0, r6
100028a4:	|   7108      	strb	r0, [r1, #4]
100028a6:	|   7f60      	ldrb	r0, [r4, #29]
100028a8:	|   4050      	eors	r0, r2
100028aa:	|   7148      	strb	r0, [r1, #5]
100028ac:	|   7fa0      	ldrb	r0, [r4, #30]
100028ae:	|   798a      	ldrb	r2, [r1, #6]
100028b0:	|   4050      	eors	r0, r2
100028b2:	|   7188      	strb	r0, [r1, #6]
100028b4:	|   eb08 0009 	add.w	r0, r8, r9
100028b8:	|   79ca      	ldrb	r2, [r1, #7]
100028ba:	|   f109 0910 	add.w	r9, r9, #16
100028be:	|   79c0      	ldrb	r0, [r0, #7]
100028c0:	|   f1b9 0f90 	cmp.w	r9, #144	; 0x90
100028c4:	|   ea80 0002 	eor.w	r0, r0, r2
100028c8:	|   71c8      	strb	r0, [r1, #7]
100028ca:	|   f894 0020 	ldrb.w	r0, [r4, #32]
100028ce:	|   7a0a      	ldrb	r2, [r1, #8]
100028d0:	|   ea80 0002 	eor.w	r0, r0, r2
100028d4:	|   7208      	strb	r0, [r1, #8]
100028d6:	|   f894 0021 	ldrb.w	r0, [r4, #33]	; 0x21
100028da:	|   7a4a      	ldrb	r2, [r1, #9]
100028dc:	|   ea80 0002 	eor.w	r0, r0, r2
100028e0:	|   7248      	strb	r0, [r1, #9]
100028e2:	|   f894 0022 	ldrb.w	r0, [r4, #34]	; 0x22
100028e6:	|   7a8a      	ldrb	r2, [r1, #10]
100028e8:	|   ea80 0002 	eor.w	r0, r0, r2
100028ec:	|   7288      	strb	r0, [r1, #10]
100028ee:	|   f894 0023 	ldrb.w	r0, [r4, #35]	; 0x23
100028f2:	|   7aca      	ldrb	r2, [r1, #11]
100028f4:	|   ea80 0002 	eor.w	r0, r0, r2
100028f8:	|   72c8      	strb	r0, [r1, #11]
100028fa:	|   f894 0024 	ldrb.w	r0, [r4, #36]	; 0x24
100028fe:	|   7b0a      	ldrb	r2, [r1, #12]
10002900:	|   ea80 0002 	eor.w	r0, r0, r2
10002904:	|   7308      	strb	r0, [r1, #12]
10002906:	|   f894 0025 	ldrb.w	r0, [r4, #37]	; 0x25
1000290a:	|   7b4a      	ldrb	r2, [r1, #13]
1000290c:	|   ea80 0002 	eor.w	r0, r0, r2
10002910:	|   7348      	strb	r0, [r1, #13]
10002912:	|   f894 0026 	ldrb.w	r0, [r4, #38]	; 0x26
10002916:	|   7b8a      	ldrb	r2, [r1, #14]
10002918:	|   ea80 0002 	eor.w	r0, r0, r2
1000291c:	|   7388      	strb	r0, [r1, #14]
1000291e:	|   f894 0027 	ldrb.w	r0, [r4, #39]	; 0x27
10002922:	|   7bca      	ldrb	r2, [r1, #15]
10002924:	|   ea80 0002 	eor.w	r0, r0, r2
10002928:	|   73c8      	strb	r0, [r1, #15]
1000292a:	\-- f47f ae73 	bne.w	10002614 <_ZN16psoc6_helloworld18aes_using_1d_array3AES18AES128_ECB_encrypt17h99e5ad778b70d921E+0x9e>
1000292e:	    9c05      	ldr	r4, [sp, #20]
10002930:	    f644 7500 	movw	r5, #20224	; 0x4f00
10002934:	    f2c1 0500 	movt	r5, #4096	; 0x1000
10002938:	    6821      	ldr	r1, [r4, #0]
1000293a:	    7808      	ldrb	r0, [r1, #0]
1000293c:	    784a      	ldrb	r2, [r1, #1]
1000293e:	    788b      	ldrb	r3, [r1, #2]
10002940:	    5c28      	ldrb	r0, [r5, r0]
10002942:	    78ce      	ldrb	r6, [r1, #3]
10002944:	    7008      	strb	r0, [r1, #0]
10002946:	    5ca8      	ldrb	r0, [r5, r2]
10002948:	    7048      	strb	r0, [r1, #1]
1000294a:	    5ce8      	ldrb	r0, [r5, r3]
1000294c:	    7088      	strb	r0, [r1, #2]
1000294e:	    5da8      	ldrb	r0, [r5, r6]
10002950:	    70c8      	strb	r0, [r1, #3]
10002952:	    7908      	ldrb	r0, [r1, #4]
10002954:	    5c28      	ldrb	r0, [r5, r0]
10002956:	    7108      	strb	r0, [r1, #4]
10002958:	    7948      	ldrb	r0, [r1, #5]
1000295a:	    5c28      	ldrb	r0, [r5, r0]
1000295c:	    7148      	strb	r0, [r1, #5]
1000295e:	    7988      	ldrb	r0, [r1, #6]
10002960:	    5c28      	ldrb	r0, [r5, r0]
10002962:	    7188      	strb	r0, [r1, #6]
10002964:	    79c8      	ldrb	r0, [r1, #7]
10002966:	    5c28      	ldrb	r0, [r5, r0]
10002968:	    71c8      	strb	r0, [r1, #7]
1000296a:	    7a08      	ldrb	r0, [r1, #8]
1000296c:	    5c28      	ldrb	r0, [r5, r0]
1000296e:	    7208      	strb	r0, [r1, #8]
10002970:	    7a48      	ldrb	r0, [r1, #9]
10002972:	    5c28      	ldrb	r0, [r5, r0]
10002974:	    7248      	strb	r0, [r1, #9]
10002976:	    7a88      	ldrb	r0, [r1, #10]
10002978:	    5c28      	ldrb	r0, [r5, r0]
1000297a:	    7288      	strb	r0, [r1, #10]
1000297c:	    7ac8      	ldrb	r0, [r1, #11]
1000297e:	    5c28      	ldrb	r0, [r5, r0]
10002980:	    72c8      	strb	r0, [r1, #11]
10002982:	    7b08      	ldrb	r0, [r1, #12]
10002984:	    5c28      	ldrb	r0, [r5, r0]
10002986:	    7308      	strb	r0, [r1, #12]
10002988:	    7b48      	ldrb	r0, [r1, #13]
1000298a:	    5c28      	ldrb	r0, [r5, r0]
1000298c:	    7348      	strb	r0, [r1, #13]
1000298e:	    7b88      	ldrb	r0, [r1, #14]
10002990:	    5c28      	ldrb	r0, [r5, r0]
10002992:	    7388      	strb	r0, [r1, #14]
10002994:	    7bc8      	ldrb	r0, [r1, #15]
10002996:	    5c28      	ldrb	r0, [r5, r0]
10002998:	    73c8      	strb	r0, [r1, #15]
1000299a:	    6820      	ldr	r0, [r4, #0]
1000299c:	    7b41      	ldrb	r1, [r0, #13]
1000299e:	    7842      	ldrb	r2, [r0, #1]
100029a0:	    7342      	strb	r2, [r0, #13]
100029a2:	    7a42      	ldrb	r2, [r0, #9]
100029a4:	    7241      	strb	r1, [r0, #9]
100029a6:	    7a81      	ldrb	r1, [r0, #10]
100029a8:	    7883      	ldrb	r3, [r0, #2]
100029aa:	    7081      	strb	r1, [r0, #2]
100029ac:	    7981      	ldrb	r1, [r0, #6]
100029ae:	    7945      	ldrb	r5, [r0, #5]
100029b0:	    7142      	strb	r2, [r0, #5]
100029b2:	    7b82      	ldrb	r2, [r0, #14]
100029b4:	    7381      	strb	r1, [r0, #14]
100029b6:	    7bc1      	ldrb	r1, [r0, #15]
100029b8:	    78c6      	ldrb	r6, [r0, #3]
100029ba:	    7182      	strb	r2, [r0, #6]
100029bc:	    70c1      	strb	r1, [r0, #3]
100029be:	    79c1      	ldrb	r1, [r0, #7]
100029c0:	    7ac2      	ldrb	r2, [r0, #11]
100029c2:	    7045      	strb	r5, [r0, #1]
100029c4:	    7283      	strb	r3, [r0, #10]
100029c6:	    73c2      	strb	r2, [r0, #15]
100029c8:	    72c1      	strb	r1, [r0, #11]
100029ca:	    71c6      	strb	r6, [r0, #7]
100029cc:	    6821      	ldr	r1, [r4, #0]
100029ce:	    f894 00a8 	ldrb.w	r0, [r4, #168]	; 0xa8
100029d2:	    780a      	ldrb	r2, [r1, #0]
100029d4:	    784b      	ldrb	r3, [r1, #1]
100029d6:	    4050      	eors	r0, r2
100029d8:	    7008      	strb	r0, [r1, #0]
100029da:	    f894 00a9 	ldrb.w	r0, [r4, #169]	; 0xa9
100029de:	    788e      	ldrb	r6, [r1, #2]
100029e0:	    4058      	eors	r0, r3
100029e2:	    7048      	strb	r0, [r1, #1]
100029e4:	    f894 00aa 	ldrb.w	r0, [r4, #170]	; 0xaa
100029e8:	    78cd      	ldrb	r5, [r1, #3]
100029ea:	    4070      	eors	r0, r6
100029ec:	    7088      	strb	r0, [r1, #2]
100029ee:	    f894 00ab 	ldrb.w	r0, [r4, #171]	; 0xab
100029f2:	    790a      	ldrb	r2, [r1, #4]
100029f4:	    4068      	eors	r0, r5
100029f6:	    70c8      	strb	r0, [r1, #3]
100029f8:	    f894 00ac 	ldrb.w	r0, [r4, #172]	; 0xac
100029fc:	    4050      	eors	r0, r2
100029fe:	    7108      	strb	r0, [r1, #4]
10002a00:	    f894 00ad 	ldrb.w	r0, [r4, #173]	; 0xad
10002a04:	    794a      	ldrb	r2, [r1, #5]
10002a06:	    4050      	eors	r0, r2
10002a08:	    7148      	strb	r0, [r1, #5]
10002a0a:	    f894 00ae 	ldrb.w	r0, [r4, #174]	; 0xae
10002a0e:	    798a      	ldrb	r2, [r1, #6]
10002a10:	    4050      	eors	r0, r2
10002a12:	    7188      	strb	r0, [r1, #6]
10002a14:	    f894 00af 	ldrb.w	r0, [r4, #175]	; 0xaf
10002a18:	    79ca      	ldrb	r2, [r1, #7]
10002a1a:	    4050      	eors	r0, r2
10002a1c:	    71c8      	strb	r0, [r1, #7]
10002a1e:	    f894 00b0 	ldrb.w	r0, [r4, #176]	; 0xb0
10002a22:	    7a0a      	ldrb	r2, [r1, #8]
10002a24:	    4050      	eors	r0, r2
10002a26:	    7208      	strb	r0, [r1, #8]
10002a28:	    f894 00b1 	ldrb.w	r0, [r4, #177]	; 0xb1
10002a2c:	    7a4a      	ldrb	r2, [r1, #9]
10002a2e:	    4050      	eors	r0, r2
10002a30:	    7248      	strb	r0, [r1, #9]
10002a32:	    f894 00b2 	ldrb.w	r0, [r4, #178]	; 0xb2
10002a36:	    7a8a      	ldrb	r2, [r1, #10]
10002a38:	    4050      	eors	r0, r2
10002a3a:	    7288      	strb	r0, [r1, #10]
10002a3c:	    f894 00b3 	ldrb.w	r0, [r4, #179]	; 0xb3
10002a40:	    7aca      	ldrb	r2, [r1, #11]
10002a42:	    4050      	eors	r0, r2
10002a44:	    72c8      	strb	r0, [r1, #11]
10002a46:	    f894 00b4 	ldrb.w	r0, [r4, #180]	; 0xb4
10002a4a:	    7b0a      	ldrb	r2, [r1, #12]
10002a4c:	    4050      	eors	r0, r2
10002a4e:	    7308      	strb	r0, [r1, #12]
10002a50:	    f894 00b5 	ldrb.w	r0, [r4, #181]	; 0xb5
10002a54:	    7b4a      	ldrb	r2, [r1, #13]
10002a56:	    4050      	eors	r0, r2
10002a58:	    7348      	strb	r0, [r1, #13]
10002a5a:	    f894 00b6 	ldrb.w	r0, [r4, #182]	; 0xb6
10002a5e:	    7b8a      	ldrb	r2, [r1, #14]
10002a60:	    4050      	eors	r0, r2
10002a62:	    7388      	strb	r0, [r1, #14]
10002a64:	    f894 00b7 	ldrb.w	r0, [r4, #183]	; 0xb7
10002a68:	    7bca      	ldrb	r2, [r1, #15]
10002a6a:	    4050      	eors	r0, r2
10002a6c:	    73c8      	strb	r0, [r1, #15]
10002a6e:	    b006      	add	sp, #24
10002a70:	    e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
10002a74:	    bdf0      	pop	{r4, r5, r6, r7, pc}

10002a76 <_ZN4core3ptr49drop_in_place$LT$$RF$$u5b$u8$u3b$$u20$16$u5d$$GT$17h3cceda86f2879783E.llvm.17875949293702571428>:
10002a76:	4770      	bx	lr

10002a78 <_ZN4core9panicking13assert_failed17hfda02490e5096052E>:
10002a78:	b580      	push	{r7, lr}
10002a7a:	466f      	mov	r7, sp
10002a7c:	b08c      	sub	sp, #48	; 0x30
10002a7e:	e9cd 1204 	strd	r1, r2, [sp, #16]
10002a82:	f10d 0c18 	add.w	ip, sp, #24
10002a86:	e893 4172 	ldmia.w	r3, {r1, r4, r5, r6, r8, lr}
10002a8a:	ab05      	add	r3, sp, #20
10002a8c:	4662      	mov	r2, ip
10002a8e:	e882 4172 	stmia.w	r2, {r1, r4, r5, r6, r8, lr}
10002a92:	f245 1200 	movw	r2, #20736	; 0x5100
10002a96:	f2c1 0200 	movt	r2, #4096	; 0x1000
10002a9a:	68b9      	ldr	r1, [r7, #8]
10002a9c:	9102      	str	r1, [sp, #8]
10002a9e:	a904      	add	r1, sp, #16
10002aa0:	e9cd 2c00 	strd	r2, ip, [sp]
10002aa4:	f000 fa29 	bl	10002efa <_ZN4core9panicking19assert_failed_inner17hf111e574873d4158E>
10002aa8:	defe      	udf	#254	; 0xfe

10002aaa <_ZN4core5array69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$3fmt17h57838e7e33ebe76fE>:
10002aaa:	b5f0      	push	{r4, r5, r6, r7, lr}
10002aac:	af03      	add	r7, sp, #12
10002aae:	f84d 8d04 	str.w	r8, [sp, #-4]!
10002ab2:	b084      	sub	sp, #16
10002ab4:	4604      	mov	r4, r0
10002ab6:	4608      	mov	r0, r1
10002ab8:	f001 f8d5 	bl	10003c66 <_ZN4core3fmt9Formatter10debug_list17h6b194937b86a3a4bE>
10002abc:	f644 68f0 	movw	r8, #20208	; 0x4ef0
10002ac0:	ae03      	add	r6, sp, #12
10002ac2:	f2c1 0800 	movt	r8, #4096	; 0x1000
10002ac6:	466d      	mov	r5, sp
10002ac8:	e9cd 0100 	strd	r0, r1, [sp]
10002acc:	4628      	mov	r0, r5
10002ace:	4631      	mov	r1, r6
10002ad0:	4642      	mov	r2, r8
10002ad2:	9403      	str	r4, [sp, #12]
10002ad4:	f000 fc62 	bl	1000339c <_ZN4core3fmt8builders8DebugSet5entry17h03faf68b09a85cb5E>
10002ad8:	1c60      	adds	r0, r4, #1
10002ada:	9003      	str	r0, [sp, #12]
10002adc:	4628      	mov	r0, r5
10002ade:	4631      	mov	r1, r6
10002ae0:	4642      	mov	r2, r8
10002ae2:	f000 fc5b 	bl	1000339c <_ZN4core3fmt8builders8DebugSet5entry17h03faf68b09a85cb5E>
10002ae6:	1ca0      	adds	r0, r4, #2
10002ae8:	9003      	str	r0, [sp, #12]
10002aea:	4628      	mov	r0, r5
10002aec:	4631      	mov	r1, r6
10002aee:	4642      	mov	r2, r8
10002af0:	f000 fc54 	bl	1000339c <_ZN4core3fmt8builders8DebugSet5entry17h03faf68b09a85cb5E>
10002af4:	1ce0      	adds	r0, r4, #3
10002af6:	9003      	str	r0, [sp, #12]
10002af8:	4628      	mov	r0, r5
10002afa:	4631      	mov	r1, r6
10002afc:	4642      	mov	r2, r8
10002afe:	f000 fc4d 	bl	1000339c <_ZN4core3fmt8builders8DebugSet5entry17h03faf68b09a85cb5E>
10002b02:	1d20      	adds	r0, r4, #4
10002b04:	9003      	str	r0, [sp, #12]
10002b06:	4628      	mov	r0, r5
10002b08:	4631      	mov	r1, r6
10002b0a:	4642      	mov	r2, r8
10002b0c:	f000 fc46 	bl	1000339c <_ZN4core3fmt8builders8DebugSet5entry17h03faf68b09a85cb5E>
10002b10:	1d60      	adds	r0, r4, #5
10002b12:	9003      	str	r0, [sp, #12]
10002b14:	4628      	mov	r0, r5
10002b16:	4631      	mov	r1, r6
10002b18:	4642      	mov	r2, r8
10002b1a:	f000 fc3f 	bl	1000339c <_ZN4core3fmt8builders8DebugSet5entry17h03faf68b09a85cb5E>
10002b1e:	1da0      	adds	r0, r4, #6
10002b20:	9003      	str	r0, [sp, #12]
10002b22:	4628      	mov	r0, r5
10002b24:	4631      	mov	r1, r6
10002b26:	4642      	mov	r2, r8
10002b28:	f000 fc38 	bl	1000339c <_ZN4core3fmt8builders8DebugSet5entry17h03faf68b09a85cb5E>
10002b2c:	1de0      	adds	r0, r4, #7
10002b2e:	9003      	str	r0, [sp, #12]
10002b30:	4628      	mov	r0, r5
10002b32:	4631      	mov	r1, r6
10002b34:	4642      	mov	r2, r8
10002b36:	f000 fc31 	bl	1000339c <_ZN4core3fmt8builders8DebugSet5entry17h03faf68b09a85cb5E>
10002b3a:	f104 0008 	add.w	r0, r4, #8
10002b3e:	9003      	str	r0, [sp, #12]
10002b40:	4628      	mov	r0, r5
10002b42:	4631      	mov	r1, r6
10002b44:	4642      	mov	r2, r8
10002b46:	f000 fc29 	bl	1000339c <_ZN4core3fmt8builders8DebugSet5entry17h03faf68b09a85cb5E>
10002b4a:	f104 0009 	add.w	r0, r4, #9
10002b4e:	9003      	str	r0, [sp, #12]
10002b50:	4628      	mov	r0, r5
10002b52:	4631      	mov	r1, r6
10002b54:	4642      	mov	r2, r8
10002b56:	f000 fc21 	bl	1000339c <_ZN4core3fmt8builders8DebugSet5entry17h03faf68b09a85cb5E>
10002b5a:	f104 000a 	add.w	r0, r4, #10
10002b5e:	9003      	str	r0, [sp, #12]
10002b60:	4628      	mov	r0, r5
10002b62:	4631      	mov	r1, r6
10002b64:	4642      	mov	r2, r8
10002b66:	f000 fc19 	bl	1000339c <_ZN4core3fmt8builders8DebugSet5entry17h03faf68b09a85cb5E>
10002b6a:	f104 000b 	add.w	r0, r4, #11
10002b6e:	9003      	str	r0, [sp, #12]
10002b70:	4628      	mov	r0, r5
10002b72:	4631      	mov	r1, r6
10002b74:	4642      	mov	r2, r8
10002b76:	f000 fc11 	bl	1000339c <_ZN4core3fmt8builders8DebugSet5entry17h03faf68b09a85cb5E>
10002b7a:	f104 000c 	add.w	r0, r4, #12
10002b7e:	9003      	str	r0, [sp, #12]
10002b80:	4628      	mov	r0, r5
10002b82:	4631      	mov	r1, r6
10002b84:	4642      	mov	r2, r8
10002b86:	f000 fc09 	bl	1000339c <_ZN4core3fmt8builders8DebugSet5entry17h03faf68b09a85cb5E>
10002b8a:	f104 000d 	add.w	r0, r4, #13
10002b8e:	9003      	str	r0, [sp, #12]
10002b90:	4628      	mov	r0, r5
10002b92:	4631      	mov	r1, r6
10002b94:	4642      	mov	r2, r8
10002b96:	f000 fc01 	bl	1000339c <_ZN4core3fmt8builders8DebugSet5entry17h03faf68b09a85cb5E>
10002b9a:	f104 000e 	add.w	r0, r4, #14
10002b9e:	9003      	str	r0, [sp, #12]
10002ba0:	4628      	mov	r0, r5
10002ba2:	4631      	mov	r1, r6
10002ba4:	4642      	mov	r2, r8
10002ba6:	f000 fbf9 	bl	1000339c <_ZN4core3fmt8builders8DebugSet5entry17h03faf68b09a85cb5E>
10002baa:	f104 000f 	add.w	r0, r4, #15
10002bae:	9003      	str	r0, [sp, #12]
10002bb0:	4628      	mov	r0, r5
10002bb2:	4631      	mov	r1, r6
10002bb4:	4642      	mov	r2, r8
10002bb6:	f000 fbf1 	bl	1000339c <_ZN4core3fmt8builders8DebugSet5entry17h03faf68b09a85cb5E>
10002bba:	4628      	mov	r0, r5
10002bbc:	f000 fbf5 	bl	100033aa <_ZN4core3fmt8builders9DebugList6finish17h896e994731ebc79eE>
10002bc0:	b004      	add	sp, #16
10002bc2:	f85d 8b04 	ldr.w	r8, [sp], #4
10002bc6:	bdf0      	pop	{r4, r5, r6, r7, pc}

10002bc8 <main>:
10002bc8:	b580      	push	{r7, lr}
10002bca:	466f      	mov	r7, sp
10002bcc:	f000 f801 	bl	10002bd2 <_ZN16psoc6_helloworld18__cortex_m_rt_main17h94501fa8e0426fe7E>
10002bd0:	defe      	udf	#254	; 0xfe

10002bd2 <_ZN16psoc6_helloworld18__cortex_m_rt_main17h94501fa8e0426fe7E>:
10002bd2:	             b580      	push	{r7, lr}
10002bd4:	             466f      	mov	r7, sp
10002bd6:	             b0f8      	sub	sp, #480	; 0x1e0
10002bd8:	             f000 f90b 	bl	10002df2 <__primask_r>
10002bdc:	             4604      	mov	r4, r0
10002bde:	             f000 f904 	bl	10002dea <__cpsid>
10002be2:	             f004 0501 	and.w	r5, r4, #1
10002be6:	             f000 f907 	bl	10002df8 <_ZN10bare_metal15CriticalSection3new17h14085335d1860e69E>
10002bea:	             f240 0000 	movw	r0, #0
10002bee:	             f6c0 0000 	movt	r0, #2048	; 0x800
10002bf2:	             7804      	ldrb	r4, [r0, #0]
10002bf4:	             2c00      	cmp	r4, #0
10002bf6:	             bf04      	itt	eq
10002bf8:	             2101      	moveq	r1, #1
10002bfa:	             7001      	strbeq	r1, [r0, #0]
10002bfc:	             2d00      	cmp	r5, #0
10002bfe:	             bf08      	it	eq
10002c00:	             f000 f8f5 	bleq	10002dee <__cpsie>
10002c04:	             2c00      	cmp	r4, #0
10002c06:	/----------- f040 80c7 	bne.w	10002d98 <_ZN16psoc6_helloworld18__cortex_m_rt_main17h94501fa8e0426fe7E+0x1c6>
10002c0a:	|            f241 6000 	movw	r0, #5632	; 0x1600
10002c0e:	|            f240 1147 	movw	r1, #327	; 0x147
10002c12:	|            f2c4 0020 	movt	r0, #16416	; 0x4020
10002c16:	|            f2cc 0100 	movt	r1, #49152	; 0xc000
10002c1a:	|            6001      	str	r1, [r0, #0]
10002c1c:	|            f000 f8e9 	bl	10002df2 <__primask_r>
10002c20:	|            4604      	mov	r4, r0
10002c22:	|            f000 f8e2 	bl	10002dea <__cpsid>
10002c26:	|            f000 f8e7 	bl	10002df8 <_ZN10bare_metal15CriticalSection3new17h14085335d1860e69E>
10002c2a:	|            f000 f8e2 	bl	10002df2 <__primask_r>
10002c2e:	|            4605      	mov	r5, r0
10002c30:	|            f000 f8db 	bl	10002dea <__cpsid>
10002c34:	|            f005 0601 	and.w	r6, r5, #1
10002c38:	|            f000 f8de 	bl	10002df8 <_ZN10bare_metal15CriticalSection3new17h14085335d1860e69E>
10002c3c:	|            f240 0801 	movw	r8, #1
10002c40:	|            f6c0 0800 	movt	r8, #2048	; 0x800
10002c44:	|            f898 5000 	ldrb.w	r5, [r8]
10002c48:	|            2d00      	cmp	r5, #0
10002c4a:	|            bf04      	itt	eq
10002c4c:	|            2001      	moveq	r0, #1
10002c4e:	|            f888 0000 	strbeq.w	r0, [r8]
10002c52:	|            2e00      	cmp	r6, #0
10002c54:	|            bf08      	it	eq
10002c56:	|            f000 f8ca 	bleq	10002dee <__cpsie>
10002c5a:	|            2d00      	cmp	r5, #0
10002c5c:	|            f004 0001 	and.w	r0, r4, #1
10002c60:	|            bf04      	itt	eq
10002c62:	|            2101      	moveq	r1, #1
10002c64:	|            f888 1000 	strbeq.w	r1, [r8]
10002c68:	|            2800      	cmp	r0, #0
10002c6a:	|            bf08      	it	eq
10002c6c:	|            f000 f8bf 	bleq	10002dee <__cpsie>
10002c70:	|            2d00      	cmp	r5, #0
10002c72:	|  /-------- f040 809a 	bne.w	10002daa <_ZN16psoc6_helloworld18__cortex_m_rt_main17h94501fa8e0426fe7E+0x1d8>
10002c76:	|  |         f24e 0010 	movw	r0, #57360	; 0xe010
10002c7a:	|  |         f06f 417f 	mvn.w	r1, #4278190080	; 0xff000000
10002c7e:	|  |         f2ce 0000 	movt	r0, #57344	; 0xe000
10002c82:	|  |         2600      	movs	r6, #0
10002c84:	|  |         6041      	str	r1, [r0, #4]
10002c86:	|  |         ad16      	add	r5, sp, #88	; 0x58
10002c88:	|  |         6086      	str	r6, [r0, #8]
10002c8a:	|  |         f64a 6228 	movw	r2, #44584	; 0xae28
10002c8e:	|  |         6801      	ldr	r1, [r0, #0]
10002c90:	|  |         f647 632b 	movw	r3, #32299	; 0x7e2b
10002c94:	|  |         f2ca 62d2 	movt	r2, #42706	; 0xa6d2
10002c98:	|  |         f2c1 6315 	movt	r3, #5653	; 0x1615
10002c9c:	|  |         f041 0101 	orr.w	r1, r1, #1
10002ca0:	|  |         6001      	str	r1, [r0, #0]
10002ca2:	|  |         6801      	ldr	r1, [r0, #0]
10002ca4:	|  |         f041 0104 	orr.w	r1, r1, #4
10002ca8:	|  |         6001      	str	r1, [r0, #0]
10002caa:	|  |         f64c 7009 	movw	r0, #53001	; 0xcf09
10002cae:	|  |         f24f 71ab 	movw	r1, #63403	; 0xf7ab
10002cb2:	|  |         f6c3 404f 	movt	r0, #15439	; 0x3c4f
10002cb6:	|  |         f6c8 0115 	movt	r1, #34837	; 0x8815
10002cba:	|  |         9005      	str	r0, [sp, #20]
10002cbc:	|  |         9009      	str	r0, [sp, #36]	; 0x24
10002cbe:	|  |         f642 602b 	movw	r0, #11819	; 0x2e2b
10002cc2:	|  |         f2c3 6015 	movt	r0, #13845	; 0x3615
10002cc6:	|  |         9104      	str	r1, [sp, #16]
10002cc8:	|  |         9006      	str	r0, [sp, #24]
10002cca:	|  |         f64f 5096 	movw	r0, #64918	; 0xfd96
10002cce:	|  |         f6ca 70ba 	movt	r0, #44986	; 0xafba
10002cd2:	|  |         9108      	str	r1, [sp, #32]
10002cd4:	|  |         900d      	str	r0, [sp, #52]	; 0x34
10002cd6:	|  |         f248 50e7 	movw	r0, #34279	; 0x85e7
10002cda:	|  |         f6c5 2089 	movt	r0, #23177	; 0x5a89
10002cde:	|  |         21b0      	movs	r1, #176	; 0xb0
10002ce0:	|  |         900c      	str	r0, [sp, #48]	; 0x30
10002ce2:	|  |         f64b 1003 	movw	r0, #47363	; 0xb903
10002ce6:	|  |         f6c9 5069 	movt	r0, #40297	; 0x9d69
10002cea:	|  |         9203      	str	r2, [sp, #12]
10002cec:	|  |         900b      	str	r0, [sp, #44]	; 0x2c
10002cee:	|  |         f24d 30f5 	movw	r0, #54261	; 0xd3f5
10002cf2:	|  |         f2c8 50d5 	movt	r0, #34261	; 0x85d5
10002cf6:	|  |         9302      	str	r3, [sp, #8]
10002cf8:	|  |         900a      	str	r0, [sp, #40]	; 0x28
10002cfa:	|  |         f64a 7045 	movw	r0, #44869	; 0xaf45
10002cfe:	|  |         f2c5 108e 	movt	r0, #20878	; 0x518e
10002d02:	|  |         9207      	str	r2, [sp, #28]
10002d04:	|  |         9011      	str	r0, [sp, #68]	; 0x44
10002d06:	|  |         f24b 709e 	movw	r0, #47006	; 0xb79e
10002d0a:	|  |         f6ca 406f 	movt	r0, #44143	; 0xac6f
10002d0e:	|  |         e9cd 6614 	strd	r6, r6, [sp, #80]	; 0x50
10002d12:	|  |         9010      	str	r0, [sp, #64]	; 0x40
10002d14:	|  |         f240 301e 	movw	r0, #798	; 0x31e
10002d18:	|  |         f6c9 40ac 	movt	r0, #40108	; 0x9cac
10002d1c:	|  |         e9cd 6612 	strd	r6, r6, [sp, #72]	; 0x48
10002d20:	|  |         900f      	str	r0, [sp, #60]	; 0x3c
10002d22:	|  |         f642 50ae 	movw	r0, #11694	; 0x2dae
10002d26:	|  |         f2c5 708a 	movt	r0, #22410	; 0x578a
10002d2a:	|  |         900e      	str	r0, [sp, #56]	; 0x38
10002d2c:	|  |         f105 0008 	add.w	r0, r5, #8
10002d30:	|  |         f001 ffa5 	bl	10004c7e <__aeabi_memclr4>
10002d34:	|  |         a802      	add	r0, sp, #8
10002d36:	|  |         9017      	str	r0, [sp, #92]	; 0x5c
10002d38:	|  |         4628      	mov	r0, r5
10002d3a:	|  |         ac0e      	add	r4, sp, #56	; 0x38
10002d3c:	|  |         9416      	str	r4, [sp, #88]	; 0x58
10002d3e:	|  |         f7ff fbbf 	bl	100024c0 <_ZN16psoc6_helloworld18aes_using_1d_array3AES13key_expansion17hf85dc4f53eb804e6E>
10002d42:	|  |         4628      	mov	r0, r5
10002d44:	|  |         f7ff fc17 	bl	10002576 <_ZN16psoc6_helloworld18aes_using_1d_array3AES18AES128_ECB_encrypt17h99e5ad778b70d921E>
10002d48:	|  |         f648 60af 	movw	r0, #36527	; 0x8eaf
10002d4c:	|  |         ad44      	add	r5, sp, #272	; 0x110
10002d4e:	|  |         f6ca 6051 	movt	r0, #44625	; 0xae51
10002d52:	|  |         21b0      	movs	r1, #176	; 0xb0
10002d54:	|  |         9015      	str	r0, [sp, #84]	; 0x54
10002d56:	|  |         f646 70b7 	movw	r0, #28599	; 0x6fb7
10002d5a:	|  |         f2c4 50ac 	movt	r0, #17836	; 0x45ac
10002d5e:	|  |         9014      	str	r0, [sp, #80]	; 0x50
10002d60:	|  |         f64a 4003 	movw	r0, #44035	; 0xac03
10002d64:	|  |         f6c9 609c 	movt	r0, #40604	; 0x9e9c
10002d68:	|  |         9013      	str	r0, [sp, #76]	; 0x4c
10002d6a:	|  |         f648 202d 	movw	r0, #35373	; 0x8a2d
10002d6e:	|  |         f6c1 6057 	movt	r0, #7767	; 0x1e57
10002d72:	|  |         9012      	str	r0, [sp, #72]	; 0x48
10002d74:	|  |         f105 0008 	add.w	r0, r5, #8
10002d78:	|  |         f001 ff81 	bl	10004c7e <__aeabi_memclr4>
10002d7c:	|  |         a806      	add	r0, sp, #24
10002d7e:	|  |         9045      	str	r0, [sp, #276]	; 0x114
10002d80:	|  |         a812      	add	r0, sp, #72	; 0x48
10002d82:	|  |         9044      	str	r0, [sp, #272]	; 0x110
10002d84:	|  |         4628      	mov	r0, r5
10002d86:	|  |         f7ff fbf6 	bl	10002576 <_ZN16psoc6_helloworld18aes_using_1d_array3AES18AES128_ECB_encrypt17h99e5ad778b70d921E>
10002d8a:	|  |         a90a      	add	r1, sp, #40	; 0x28
10002d8c:	|  |         4620      	mov	r0, r4
10002d8e:	|  |         2210      	movs	r2, #16
10002d90:	|  |         f002 f86c 	bl	10004e6c <memcmp>
10002d94:	|  |  /----- b9a8      	cbnz	r0, 10002dc2 <_ZN16psoc6_helloworld18__cortex_m_rt_main17h94501fa8e0426fe7E+0x1f0>
10002d96:	|  |  |  /-- e7fe      	b.n	10002d96 <_ZN16psoc6_helloworld18__cortex_m_rt_main17h94501fa8e0426fe7E+0x1c4>
10002d98:	\--|--|----> f245 1010 	movw	r0, #20752	; 0x5110
10002d9c:	   |  |      f245 1248 	movw	r2, #20808	; 0x5148
10002da0:	   |  |      f2c1 0000 	movt	r0, #4096	; 0x1000
10002da4:	   |  |      f2c1 0200 	movt	r2, #4096	; 0x1000
10002da8:	   |  |  /-- e007      	b.n	10002dba <_ZN16psoc6_helloworld18__cortex_m_rt_main17h94501fa8e0426fe7E+0x1e8>
10002daa:	   \--|--|-> f245 1010 	movw	r0, #20752	; 0x5110
10002dae:	      |  |   f245 1258 	movw	r2, #20824	; 0x5158
10002db2:	      |  |   f2c1 0000 	movt	r0, #4096	; 0x1000
10002db6:	      |  |   f2c1 0200 	movt	r2, #4096	; 0x1000
10002dba:	      |  \-> 212b      	movs	r1, #43	; 0x2b
10002dbc:	      |      f000 f851 	bl	10002e62 <_ZN4core9panicking5panic17h9d087799dbe178ebE>
10002dc0:	      |      defe      	udf	#254	; 0xfe
10002dc2:	      \----> f245 1068 	movw	r0, #20840	; 0x5168
10002dc6:	             a90e      	add	r1, sp, #56	; 0x38
10002dc8:	             f2c1 0000 	movt	r0, #4096	; 0x1000
10002dcc:	             aa0a      	add	r2, sp, #40	; 0x28
10002dce:	             ab72      	add	r3, sp, #456	; 0x1c8
10002dd0:	             9000      	str	r0, [sp, #0]
10002dd2:	             2000      	movs	r0, #0
10002dd4:	             e9cd 6676 	strd	r6, r6, [sp, #472]	; 0x1d8
10002dd8:	             e9cd 6674 	strd	r6, r6, [sp, #464]	; 0x1d0
10002ddc:	             e9cd 6672 	strd	r6, r6, [sp, #456]	; 0x1c8
10002de0:	             f7ff fe4a 	bl	10002a78 <_ZN4core9panicking13assert_failed17hfda02490e5096052E>
10002de4:	             defe      	udf	#254	; 0xfe

10002de6 <DefaultHandler_>:
10002de6:	/-- e7fe      	b.n	10002de6 <DefaultHandler_>

10002de8 <DefaultPreInit>:
10002de8:	4770      	bx	lr

10002dea <__cpsid>:
10002dea:	b672      	cpsid	i
10002dec:	4770      	bx	lr

10002dee <__cpsie>:
10002dee:	b662      	cpsie	i
10002df0:	4770      	bx	lr

10002df2 <__primask_r>:
10002df2:	f3ef 8010 	mrs	r0, PRIMASK
10002df6:	4770      	bx	lr

10002df8 <_ZN10bare_metal15CriticalSection3new17h14085335d1860e69E>:
10002df8:	4770      	bx	lr

10002dfa <_ZN4core3ops8function6FnOnce9call_once17ha0eba0e470f8f83fE>:
10002dfa:	    6800      	ldr	r0, [r0, #0]
10002dfc:	/-- e7fe      	b.n	10002dfc <_ZN4core3ops8function6FnOnce9call_once17ha0eba0e470f8f83fE+0x2>

10002dfe <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h1de5c7a986638187E>:
10002dfe:	4770      	bx	lr

10002e00 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8d7ddbd64bf40c16E>:
10002e00:	       b5b0      	push	{r4, r5, r7, lr}
10002e02:	       af02      	add	r7, sp, #8
10002e04:	       b086      	sub	sp, #24
10002e06:	       460c      	mov	r4, r1
10002e08:	       4605      	mov	r5, r0
10002e0a:	       f001 fc4a 	bl	100046a2 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E>
10002e0e:	/----- b9a8      	cbnz	r0, 10002e3c <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8d7ddbd64bf40c16E+0x3c>
10002e10:	|      2200      	movs	r2, #0
10002e12:	|      e9d4 0106 	ldrd	r0, r1, [r4, #24]
10002e16:	|      9205      	str	r2, [sp, #20]
10002e18:	|      f245 1378 	movw	r3, #20856	; 0x5178
10002e1c:	|      e9cd 2202 	strd	r2, r2, [sp, #8]
10002e20:	|      2201      	movs	r2, #1
10002e22:	|      9201      	str	r2, [sp, #4]
10002e24:	|      f245 127c 	movw	r2, #20860	; 0x517c
10002e28:	|      f2c1 0200 	movt	r2, #4096	; 0x1000
10002e2c:	|      f2c1 0300 	movt	r3, #4096	; 0x1000
10002e30:	|      9200      	str	r2, [sp, #0]
10002e32:	|      466a      	mov	r2, sp
10002e34:	|      9304      	str	r3, [sp, #16]
10002e36:	|      f000 fbaa 	bl	1000358e <_ZN4core3fmt5write17hc3aadbfba0721466E>
10002e3a:	|  /-- b110      	cbz	r0, 10002e42 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8d7ddbd64bf40c16E+0x42>
10002e3c:	\--|-> 2001      	movs	r0, #1
10002e3e:	   |   b006      	add	sp, #24
10002e40:	   |   bdb0      	pop	{r4, r5, r7, pc}
10002e42:	   \-> 1d28      	adds	r0, r5, #4
10002e44:	       4621      	mov	r1, r4
10002e46:	       b006      	add	sp, #24
10002e48:	       e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
10002e4c:	       f001 bc29 	b.w	100046a2 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E>

10002e50 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hacb8301a03185acfE>:
10002e50:	f641 00dd 	movw	r0, #6365	; 0x18dd
10002e54:	f24b 1187 	movw	r1, #45447	; 0xb187
10002e58:	f2c7 20af 	movt	r0, #29359	; 0x72af
10002e5c:	f6cd 61c5 	movt	r1, #57029	; 0xdec5
10002e60:	4770      	bx	lr

10002e62 <_ZN4core9panicking5panic17h9d087799dbe178ebE>:
10002e62:	b580      	push	{r7, lr}
10002e64:	466f      	mov	r7, sp
10002e66:	b088      	sub	sp, #32
10002e68:	4694      	mov	ip, r2
10002e6a:	f245 1278 	movw	r2, #20856	; 0x5178
10002e6e:	f2c1 0200 	movt	r2, #4096	; 0x1000
10002e72:	2300      	movs	r3, #0
10002e74:	e9cd 0106 	strd	r0, r1, [sp, #24]
10002e78:	4668      	mov	r0, sp
10002e7a:	9204      	str	r2, [sp, #16]
10002e7c:	2201      	movs	r2, #1
10002e7e:	4661      	mov	r1, ip
10002e80:	9201      	str	r2, [sp, #4]
10002e82:	aa06      	add	r2, sp, #24
10002e84:	9305      	str	r3, [sp, #20]
10002e86:	e9cd 3302 	strd	r3, r3, [sp, #8]
10002e8a:	9200      	str	r2, [sp, #0]
10002e8c:	f000 f822 	bl	10002ed4 <_ZN4core9panicking9panic_fmt17h2a44677cec48bad9E>
10002e90:	defe      	udf	#254	; 0xfe

10002e92 <_ZN4core9panicking18panic_bounds_check17h80646fc287624916E>:
10002e92:	b580      	push	{r7, lr}
10002e94:	466f      	mov	r7, sp
10002e96:	b08c      	sub	sp, #48	; 0x30
10002e98:	e9cd 0100 	strd	r0, r1, [sp]
10002e9c:	a908      	add	r1, sp, #32
10002e9e:	2002      	movs	r0, #2
10002ea0:	9106      	str	r1, [sp, #24]
10002ea2:	2100      	movs	r1, #0
10002ea4:	9007      	str	r0, [sp, #28]
10002ea6:	e9cd 0103 	strd	r0, r1, [sp, #12]
10002eaa:	f245 205c 	movw	r0, #21084	; 0x525c
10002eae:	f2c1 0000 	movt	r0, #4096	; 0x1000
10002eb2:	9105      	str	r1, [sp, #20]
10002eb4:	9002      	str	r0, [sp, #8]
10002eb6:	f644 1077 	movw	r0, #18807	; 0x4977
10002eba:	f2c1 0000 	movt	r0, #4096	; 0x1000
10002ebe:	4669      	mov	r1, sp
10002ec0:	e9cd 0109 	strd	r0, r1, [sp, #36]	; 0x24
10002ec4:	4611      	mov	r1, r2
10002ec6:	900b      	str	r0, [sp, #44]	; 0x2c
10002ec8:	a801      	add	r0, sp, #4
10002eca:	9008      	str	r0, [sp, #32]
10002ecc:	a802      	add	r0, sp, #8
10002ece:	f000 f801 	bl	10002ed4 <_ZN4core9panicking9panic_fmt17h2a44677cec48bad9E>
10002ed2:	defe      	udf	#254	; 0xfe

10002ed4 <_ZN4core9panicking9panic_fmt17h2a44677cec48bad9E>:
10002ed4:	b580      	push	{r7, lr}
10002ed6:	466f      	mov	r7, sp
10002ed8:	b084      	sub	sp, #16
10002eda:	e9cd 0102 	strd	r0, r1, [sp, #8]
10002ede:	f245 10d8 	movw	r0, #20952	; 0x51d8
10002ee2:	f2c1 0000 	movt	r0, #4096	; 0x1000
10002ee6:	9001      	str	r0, [sp, #4]
10002ee8:	f245 1078 	movw	r0, #20856	; 0x5178
10002eec:	f2c1 0000 	movt	r0, #4096	; 0x1000
10002ef0:	9000      	str	r0, [sp, #0]
10002ef2:	4668      	mov	r0, sp
10002ef4:	f001 fe32 	bl	10004b5c <rust_begin_unwind>
10002ef8:	defe      	udf	#254	; 0xfe

10002efa <_ZN4core9panicking19assert_failed_inner17hf111e574873d4158E>:
10002efa:	          b580      	push	{r7, lr}
10002efc:	          466f      	mov	r7, sp
10002efe:	          b09a      	sub	sp, #104	; 0x68
10002f00:	          e9cd 1200 	strd	r1, r2, [sp]
10002f04:	          68b9      	ldr	r1, [r7, #8]
10002f06:	          f8d7 e00c 	ldr.w	lr, [r7, #12]
10002f0a:	          e9cd 3102 	strd	r3, r1, [sp, #8]
10002f0e:	          b2c1      	uxtb	r1, r0
10002f10:	   /----- b131      	cbz	r1, 10002f20 <_ZN4core9panicking19assert_failed_inner17hf111e574873d4158E+0x26>
10002f12:	   |      2901      	cmp	r1, #1
10002f14:	/--|----- d10b      	bne.n	10002f2e <_ZN4core9panicking19assert_failed_inner17hf111e574873d4158E+0x34>
10002f16:	|  |      f245 2173 	movw	r1, #21107	; 0x5273
10002f1a:	|  |      f2c1 0100 	movt	r1, #4096	; 0x1000
10002f1e:	|  |  /-- e003      	b.n	10002f28 <_ZN4core9panicking19assert_failed_inner17hf111e574873d4158E+0x2e>
10002f20:	|  \--|-> f245 2175 	movw	r1, #21109	; 0x5275
10002f24:	|     |   f2c1 0100 	movt	r1, #4096	; 0x1000
10002f28:	|     \-> 9104      	str	r1, [sp, #16]
10002f2a:	|         2202      	movs	r2, #2
10002f2c:	|     /-- e005      	b.n	10002f3a <_ZN4core9panicking19assert_failed_inner17hf111e574873d4158E+0x40>
10002f2e:	\-----|-> f245 216c 	movw	r1, #21100	; 0x526c
10002f32:	      |   2207      	movs	r2, #7
10002f34:	      |   f2c1 0100 	movt	r1, #4096	; 0x1000
10002f38:	      |   9104      	str	r1, [sp, #16]
10002f3a:	      \-> 9205      	str	r2, [sp, #20]
10002f3c:	          f8de 2000 	ldr.w	r2, [lr]
10002f40:	          6939      	ldr	r1, [r7, #16]
10002f42:	      /-- b972      	cbnz	r2, 10002f62 <_ZN4core9panicking19assert_failed_inner17hf111e574873d4158E+0x68>
10002f44:	      |   2003      	movs	r0, #3
10002f46:	      |   9019      	str	r0, [sp, #100]	; 0x64
10002f48:	      |   a80c      	add	r0, sp, #48	; 0x30
10002f4a:	      |   9018      	str	r0, [sp, #96]	; 0x60
10002f4c:	      |   2000      	movs	r0, #0
10002f4e:	      |   e9cd 0016 	strd	r0, r0, [sp, #88]	; 0x58
10002f52:	      |   2004      	movs	r0, #4
10002f54:	      |   9015      	str	r0, [sp, #84]	; 0x54
10002f56:	      |   f245 20d8 	movw	r0, #21208	; 0x52d8
10002f5a:	      |   f2c1 0000 	movt	r0, #4096	; 0x1000
10002f5e:	      |   9014      	str	r0, [sp, #80]	; 0x50
10002f60:	   /--|-- e019      	b.n	10002f96 <_ZN4core9panicking19assert_failed_inner17hf111e574873d4158E+0x9c>
10002f62:	   |  \-> f10d 0c18 	add.w	ip, sp, #24
10002f66:	   |      e89e 0175 	ldmia.w	lr, {r0, r2, r4, r5, r6, r8}
10002f6a:	   |      4663      	mov	r3, ip
10002f6c:	   |      e883 0175 	stmia.w	r3, {r0, r2, r4, r5, r6, r8}
10002f70:	   |      aa0c      	add	r2, sp, #48	; 0x30
10002f72:	   |      2004      	movs	r0, #4
10002f74:	   |      9218      	str	r2, [sp, #96]	; 0x60
10002f76:	   |      2200      	movs	r2, #0
10002f78:	   |      9019      	str	r0, [sp, #100]	; 0x64
10002f7a:	   |      e9cd 0215 	strd	r0, r2, [sp, #84]	; 0x54
10002f7e:	   |      f245 20b4 	movw	r0, #21172	; 0x52b4
10002f82:	   |      f2c1 0000 	movt	r0, #4096	; 0x1000
10002f86:	   |      9217      	str	r2, [sp, #92]	; 0x5c
10002f88:	   |      9014      	str	r0, [sp, #80]	; 0x50
10002f8a:	   |      f243 5067 	movw	r0, #13671	; 0x3567
10002f8e:	   |      f2c1 0000 	movt	r0, #4096	; 0x1000
10002f92:	   |      e9cd c012 	strd	ip, r0, [sp, #72]	; 0x48
10002f96:	   \----> f644 206b 	movw	r0, #19051	; 0x4a6b
10002f9a:	          aa02      	add	r2, sp, #8
10002f9c:	          f2c1 0000 	movt	r0, #4096	; 0x1000
10002fa0:	          9210      	str	r2, [sp, #64]	; 0x40
10002fa2:	          9011      	str	r0, [sp, #68]	; 0x44
10002fa4:	          900f      	str	r0, [sp, #60]	; 0x3c
10002fa6:	          4668      	mov	r0, sp
10002fa8:	          900e      	str	r0, [sp, #56]	; 0x38
10002faa:	          f644 2075 	movw	r0, #19061	; 0x4a75
10002fae:	          f2c1 0000 	movt	r0, #4096	; 0x1000
10002fb2:	          900d      	str	r0, [sp, #52]	; 0x34
10002fb4:	          a804      	add	r0, sp, #16
10002fb6:	          900c      	str	r0, [sp, #48]	; 0x30
10002fb8:	          a814      	add	r0, sp, #80	; 0x50
10002fba:	          f7ff ff8b 	bl	10002ed4 <_ZN4core9panicking9panic_fmt17h2a44677cec48bad9E>
10002fbe:	          defe      	udf	#254	; 0xfe

10002fc0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE>:
10002fc0:	                                                       b5f0      	push	{r4, r5, r6, r7, lr}
10002fc2:	                                                       af03      	add	r7, sp, #12
10002fc4:	                                                       e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
10002fc8:	                                                       b083      	sub	sp, #12
10002fca:	                                                       2a00      	cmp	r2, #0
10002fcc:	/----------------------------------------------------- f000 8158 	beq.w	10003280 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x2c0>
10002fd0:	|                                                      f8d0 b008 	ldr.w	fp, [r0, #8]
10002fd4:	|                                                      4688      	mov	r8, r1
10002fd6:	|                                                      6801      	ldr	r1, [r0, #0]
10002fd8:	|                                                      4691      	mov	r9, r2
10002fda:	|                                                      9102      	str	r1, [sp, #8]
10002fdc:	|                                                      6841      	ldr	r1, [r0, #4]
10002fde:	|                                                      9101      	str	r1, [sp, #4]
10002fe0:	|                                                  /-- e004      	b.n	10002fec <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x2c>
10002fe2:	|  /-----------------------------------------------|-> 44d0      	add	r8, sl
10002fe4:	|  |                                               |   ebb9 090a 	subs.w	r9, r9, sl
10002fe8:	+--|-----------------------------------------------|-- f000 814a 	beq.w	10003280 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x2c0>
10002fec:	|  |                                               \-> f89b 0000 	ldrb.w	r0, [fp]
10002ff0:	|  |                                               /-- b158      	cbz	r0, 1000300a <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x4a>
10002ff2:	|  |                                               |   9801      	ldr	r0, [sp, #4]
10002ff4:	|  |                                               |   f245 11a4 	movw	r1, #20900	; 0x51a4
10002ff8:	|  |                                               |   f2c1 0100 	movt	r1, #4096	; 0x1000
10002ffc:	|  |                                               |   2204      	movs	r2, #4
10002ffe:	|  |                                               |   68c3      	ldr	r3, [r0, #12]
10003000:	|  |                                               |   9802      	ldr	r0, [sp, #8]
10003002:	|  |                                               |   4798      	blx	r3
10003004:	|  |                                               |   2800      	cmp	r0, #0
10003006:	|  |  /--------------------------------------------|-- f040 8136 	bne.w	10003276 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x2b6>
1000300a:	|  |  |                                            \-> f04f 0a00 	mov.w	sl, #0
1000300e:	|  |  |                                                4649      	mov	r1, r9
10003010:	|  |  |                                            /-- e008      	b.n	10003024 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x64>
10003012:	|  |  |  /-----------------------------------------|-> ebb9 010a 	subs.w	r1, r9, sl
10003016:	|  |  |  |                                         |   f04f 0000 	mov.w	r0, #0
1000301a:	|  |  |  |                                         |   bf38      	it	cc
1000301c:	|  |  |  |                                         |   4601      	movcc	r1, r0
1000301e:	|  |  |  |                                         |   45ca      	cmp	sl, r9
10003020:	|  |  |  |  /--------------------------------------|-- f200 8102 	bhi.w	10003228 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x268>
10003024:	|  |  |  |  |                                      \-> eb08 020a 	add.w	r2, r8, sl
10003028:	|  |  |  |  |                                          2908      	cmp	r1, #8
1000302a:	|  |  |  |  |                                      /-- d20d      	bcs.n	10003048 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x88>
1000302c:	|  |  |  |  |                                      |   2900      	cmp	r1, #0
1000302e:	|  |  |  |  |  /-----------------------------------|-- f000 80fa 	beq.w	10003226 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x266>
10003032:	|  |  |  |  |  |                                   |   7810      	ldrb	r0, [r2, #0]
10003034:	|  |  |  |  |  |                                   |   280a      	cmp	r0, #10
10003036:	|  |  |  |  |  |                          /--------|-- d134      	bne.n	100030a2 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0xe2>
10003038:	|  |  |  |  |  |                          |        |   2300      	movs	r3, #0
1000303a:	|  |  |  |  |  |                          |        |   eb03 000a 	add.w	r0, r3, sl
1000303e:	|  |  |  |  |  |                          |        |   f110 0a01 	adds.w	sl, r0, #1
10003042:	|  |  |  |  |  |  /-----------------------|--------|-- f0c0 80db 	bcc.w	100031fc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x23c>
10003046:	|  |  |  +--|--|--|-----------------------|--------|-- e7e4      	b.n	10003012 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x52>
10003048:	|  |  |  |  |  |  |                       |        \-> 1cd0      	adds	r0, r2, #3
1000304a:	|  |  |  |  |  |  |                       |            f020 0003 	bic.w	r0, r0, #3
1000304e:	|  |  |  |  |  |  |                       |            1a80      	subs	r0, r0, r2
10003050:	|  |  |  |  |  |  |                    /--|----------- d035      	beq.n	100030be <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0xfe>
10003052:	|  |  |  |  |  |  |                    |  |            4288      	cmp	r0, r1
10003054:	|  |  |  |  |  |  |                    |  |            bf88      	it	hi
10003056:	|  |  |  |  |  |  |                    |  |            4608      	movhi	r0, r1
10003058:	|  |  |  |  |  |  |                    |  |            1815      	adds	r5, r2, r0
1000305a:	|  |  |  |  |  |  |                    |  |            2300      	movs	r3, #0
1000305c:	|  |  |  |  |  |  |                    |  |     /----> 5cd6      	ldrb	r6, [r2, r3]
1000305e:	|  |  |  |  |  |  |                    |  |     |      2e0a      	cmp	r6, #10
10003060:	|  |  |  |  |  |  |     /--------------|--|-----|----- f000 80c6 	beq.w	100031f0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x230>
10003064:	|  |  |  |  |  |  |     |              |  |     |      18d6      	adds	r6, r2, r3
10003066:	|  |  |  |  |  |  |     |              |  |     |      3601      	adds	r6, #1
10003068:	|  |  |  |  |  |  |     |              |  |     |      42ae      	cmp	r6, r5
1000306a:	|  |  |  |  |  |  |     |              |  |     |  /-- d015      	beq.n	10003098 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0xd8>
1000306c:	|  |  |  |  |  |  |     |              |  |     |  |   7834      	ldrb	r4, [r6, #0]
1000306e:	|  |  |  |  |  |  |     |              |  |     |  |   2c0a      	cmp	r4, #10
10003070:	|  |  |  |  |  |  |     |        /-----|--|-----|--|-- f000 8087 	beq.w	10003182 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x1c2>
10003074:	|  |  |  |  |  |  |     |        |     |  |     |  |   3601      	adds	r6, #1
10003076:	|  |  |  |  |  |  |     |        |     |  |     |  |   42ae      	cmp	r6, r5
10003078:	|  |  |  |  |  |  |     |        |     |  |     |  +-- d00e      	beq.n	10003098 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0xd8>
1000307a:	|  |  |  |  |  |  |     |        |     |  |     |  |   7834      	ldrb	r4, [r6, #0]
1000307c:	|  |  |  |  |  |  |     |        |     |  |     |  |   2c0a      	cmp	r4, #10
1000307e:	|  |  |  |  |  |  |     |     /--|-----|--|-----|--|-- f000 808f 	beq.w	100031a0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x1e0>
10003082:	|  |  |  |  |  |  |     |     |  |     |  |     |  |   3601      	adds	r6, #1
10003084:	|  |  |  |  |  |  |     |     |  |     |  |     |  |   42ae      	cmp	r6, r5
10003086:	|  |  |  |  |  |  |     |     |  |     |  |     |  +-- d007      	beq.n	10003098 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0xd8>
10003088:	|  |  |  |  |  |  |     |     |  |     |  |     |  |   7834      	ldrb	r4, [r6, #0]
1000308a:	|  |  |  |  |  |  |     |     |  |     |  |     |  |   2c0a      	cmp	r4, #10
1000308c:	|  |  |  |  |  |  |     |  /--|--|-----|--|-----|--|-- f000 8097 	beq.w	100031be <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x1fe>
10003090:	|  |  |  |  |  |  |     |  |  |  |     |  |     |  |   3601      	adds	r6, #1
10003092:	|  |  |  |  |  |  |     |  |  |  |     |  |     |  |   3304      	adds	r3, #4
10003094:	|  |  |  |  |  |  |     |  |  |  |     |  |     |  |   42ae      	cmp	r6, r5
10003096:	|  |  |  |  |  |  |     |  |  |  |     |  |     \--|-- d1e1      	bne.n	1000305c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x9c>
10003098:	|  |  |  |  |  |  |     |  |  |  |     |  |        \-> f1a1 0308 	sub.w	r3, r1, #8
1000309c:	|  |  |  |  |  |  |     |  |  |  |     |  |            4298      	cmp	r0, r3
1000309e:	|  |  |  |  |  |  |     |  |  |  |     |  |     /----- d911      	bls.n	100030c4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x104>
100030a0:	|  |  |  |  |  |  |     |  |  |  |     |  |  /--|----- e029      	b.n	100030f6 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x136>
100030a2:	|  |  |  |  |  |  |     |  |  |  |     |  \--|--|----> 2901      	cmp	r1, #1
100030a4:	|  |  |  |  |  +--|-----|--|--|--|-----|-----|--|----- f000 80bf 	beq.w	10003226 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x266>
100030a8:	|  |  |  |  |  |  |     |  |  |  |     |     |  |      7850      	ldrb	r0, [r2, #1]
100030aa:	|  |  |  |  |  |  |     |  |  |  |     |     |  |      280a      	cmp	r0, #10
100030ac:	|  |  |  |  |  |  |     |  |  |  |  /--|-----|--|----- d149      	bne.n	10003142 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x182>
100030ae:	|  |  |  |  |  |  |     |  |  |  |  |  |     |  |      2301      	movs	r3, #1
100030b0:	|  |  |  |  |  |  |     |  |  |  |  |  |     |  |      eb03 000a 	add.w	r0, r3, sl
100030b4:	|  |  |  |  |  |  |     |  |  |  |  |  |     |  |      f110 0a01 	adds.w	sl, r0, #1
100030b8:	|  |  |  |  |  |  +-----|--|--|--|--|--|-----|--|----- f0c0 80a0 	bcc.w	100031fc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x23c>
100030bc:	|  |  |  +--|--|--|-----|--|--|--|--|--|-----|--|----- e7a9      	b.n	10003012 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x52>
100030be:	|  |  |  |  |  |  |     |  |  |  |  |  \-----|--|----> f1a1 0308 	sub.w	r3, r1, #8
100030c2:	|  |  |  |  |  |  |     |  |  |  |  |        |  |      2000      	movs	r0, #0
100030c4:	|  |  |  |  |  |  |     |  |  |  |  |        |  >----> 5816      	ldr	r6, [r2, r0]
100030c6:	|  |  |  |  |  |  |     |  |  |  |  |        |  |      f086 350a 	eor.w	r5, r6, #168430090	; 0xa0a0a0a
100030ca:	|  |  |  |  |  |  |     |  |  |  |  |        |  |      f1a5 3501 	sub.w	r5, r5, #16843009	; 0x1010101
100030ce:	|  |  |  |  |  |  |     |  |  |  |  |        |  |      ea25 0606 	bic.w	r6, r5, r6
100030d2:	|  |  |  |  |  |  |     |  |  |  |  |        |  |      1815      	adds	r5, r2, r0
100030d4:	|  |  |  |  |  |  |     |  |  |  |  |        |  |      686d      	ldr	r5, [r5, #4]
100030d6:	|  |  |  |  |  |  |     |  |  |  |  |        |  |      f085 340a 	eor.w	r4, r5, #168430090	; 0xa0a0a0a
100030da:	|  |  |  |  |  |  |     |  |  |  |  |        |  |      f1a4 3401 	sub.w	r4, r4, #16843009	; 0x1010101
100030de:	|  |  |  |  |  |  |     |  |  |  |  |        |  |      ea24 0505 	bic.w	r5, r4, r5
100030e2:	|  |  |  |  |  |  |     |  |  |  |  |        |  |      432e      	orrs	r6, r5
100030e4:	|  |  |  |  |  |  |     |  |  |  |  |        |  |      f016 3f80 	tst.w	r6, #2155905152	; 0x80808080
100030e8:	|  |  |  |  |  |  |     |  |  |  |  |        |  |  /-- d102      	bne.n	100030f0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x130>
100030ea:	|  |  |  |  |  |  |     |  |  |  |  |        |  |  |   3008      	adds	r0, #8
100030ec:	|  |  |  |  |  |  |     |  |  |  |  |        |  |  |   4298      	cmp	r0, r3
100030ee:	|  |  |  |  |  |  |     |  |  |  |  |        |  \--|-- d9e9      	bls.n	100030c4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x104>
100030f0:	|  |  |  |  |  |  |     |  |  |  |  |        |     \-> 4288      	cmp	r0, r1
100030f2:	|  |  |  |  |  |  |  /--|--|--|--|--|--------|-------- f200 80ca 	bhi.w	1000328a <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x2ca>
100030f6:	|  |  |  |  |  |  |  |  |  |  |  |  |        \-------> 4288      	cmp	r0, r1
100030f8:	|  |  |  |  |  +--|--|--|--|--|--|--|----------------- f000 8095 	beq.w	10003226 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x266>
100030fc:	|  |  |  |  |  |  |  |  |  |  |  |  |                  440a      	add	r2, r1
100030fe:	|  |  |  |  |  |  |  |  |  |  |  |  |                  eb00 010a 	add.w	r1, r0, sl
10003102:	|  |  |  |  |  |  |  |  |  |  |  |  |                  eb08 0301 	add.w	r3, r8, r1
10003106:	|  |  |  |  |  |  |  |  |  |  |  |  |                  2100      	movs	r1, #0
10003108:	|  |  |  |  |  |  |  |  |  |  |  |  |              /-> 5c5e      	ldrb	r6, [r3, r1]
1000310a:	|  |  |  |  |  |  |  |  |  |  |  |  |              |   2e0a      	cmp	r6, #10
1000310c:	|  |  |  |  |  |  |  |  |  |  |  |  |     /--------|-- d032      	beq.n	10003174 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x1b4>
1000310e:	|  |  |  |  |  |  |  |  |  |  |  |  |     |        |   185e      	adds	r6, r3, r1
10003110:	|  |  |  |  |  |  |  |  |  |  |  |  |     |        |   3601      	adds	r6, #1
10003112:	|  |  |  |  |  |  |  |  |  |  |  |  |     |        |   4296      	cmp	r6, r2
10003114:	|  |  |  |  |  +--|--|--|--|--|--|--|-----|--------|-- f000 8087 	beq.w	10003226 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x266>
10003118:	|  |  |  |  |  |  |  |  |  |  |  |  |     |        |   7835      	ldrb	r5, [r6, #0]
1000311a:	|  |  |  |  |  |  |  |  |  |  |  |  |     |        |   2d0a      	cmp	r5, #10
1000311c:	|  |  |  |  |  |  |  |  |  |  |  |  |     |     /--|-- d029      	beq.n	10003172 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x1b2>
1000311e:	|  |  |  |  |  |  |  |  |  |  |  |  |     |     |  |   3601      	adds	r6, #1
10003120:	|  |  |  |  |  |  |  |  |  |  |  |  |     |     |  |   4296      	cmp	r6, r2
10003122:	|  |  |  |  |  +--|--|--|--|--|--|--|-----|-----|--|-- f000 8080 	beq.w	10003226 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x266>
10003126:	|  |  |  |  |  |  |  |  |  |  |  |  |     |     |  |   7835      	ldrb	r5, [r6, #0]
10003128:	|  |  |  |  |  |  |  |  |  |  |  |  |     |     |  |   2d0a      	cmp	r5, #10
1000312a:	|  |  |  |  |  |  |  |  |  |  |  |  |     |  /--|--|-- d031      	beq.n	10003190 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x1d0>
1000312c:	|  |  |  |  |  |  |  |  |  |  |  |  |     |  |  |  |   3601      	adds	r6, #1
1000312e:	|  |  |  |  |  |  |  |  |  |  |  |  |     |  |  |  |   4296      	cmp	r6, r2
10003130:	|  |  |  |  |  +--|--|--|--|--|--|--|-----|--|--|--|-- d079      	beq.n	10003226 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x266>
10003132:	|  |  |  |  |  |  |  |  |  |  |  |  |     |  |  |  |   7835      	ldrb	r5, [r6, #0]
10003134:	|  |  |  |  |  |  |  |  |  |  |  |  |     |  |  |  |   2d0a      	cmp	r5, #10
10003136:	|  |  |  |  |  |  |  |  |  |  |  |  |  /--|--|--|--|-- d03a      	beq.n	100031ae <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x1ee>
10003138:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |   3601      	adds	r6, #1
1000313a:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |   3104      	adds	r1, #4
1000313c:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |   4296      	cmp	r6, r2
1000313e:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  \-- d1e3      	bne.n	10003108 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x148>
10003140:	|  |  |  |  |  +--|--|--|--|--|--|--|--|--|--|--|----- e071      	b.n	10003226 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x266>
10003142:	|  |  |  |  |  |  |  |  |  |  |  |  \--|--|--|--|----> 2902      	cmp	r1, #2
10003144:	|  |  |  |  |  +--|--|--|--|--|--|-----|--|--|--|----- d06f      	beq.n	10003226 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x266>
10003146:	|  |  |  |  |  |  |  |  |  |  |  |     |  |  |  |      7890      	ldrb	r0, [r2, #2]
10003148:	|  |  |  |  |  |  |  |  |  |  |  |     |  |  |  |      280a      	cmp	r0, #10
1000314a:	|  |  |  |  |  |  |  |  |  |  |  |     |  |  |  |  /-- d106      	bne.n	1000315a <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x19a>
1000314c:	|  |  |  |  |  |  |  |  |  |  |  |     |  |  |  |  |   2302      	movs	r3, #2
1000314e:	|  |  |  |  |  |  |  |  |  |  |  |     |  |  |  |  |   eb03 000a 	add.w	r0, r3, sl
10003152:	|  |  |  |  |  |  |  |  |  |  |  |     |  |  |  |  |   f110 0a01 	adds.w	sl, r0, #1
10003156:	|  |  |  |  |  |  +--|--|--|--|--|-----|--|--|--|--|-- d351      	bcc.n	100031fc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x23c>
10003158:	|  |  |  +--|--|--|--|--|--|--|--|-----|--|--|--|--|-- e75b      	b.n	10003012 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x52>
1000315a:	|  |  |  |  |  |  |  |  |  |  |  |     |  |  |  |  \-> 2903      	cmp	r1, #3
1000315c:	|  |  |  |  |  +--|--|--|--|--|--|-----|--|--|--|----- d063      	beq.n	10003226 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x266>
1000315e:	|  |  |  |  |  |  |  |  |  |  |  |     |  |  |  |      78d0      	ldrb	r0, [r2, #3]
10003160:	|  |  |  |  |  |  |  |  |  |  |  |     |  |  |  |      280a      	cmp	r0, #10
10003162:	|  |  |  |  |  |  |  |  |  |  |  |     |  |  |  |  /-- d133      	bne.n	100031cc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x20c>
10003164:	|  |  |  |  |  |  |  |  |  |  |  |     |  |  |  |  |   2303      	movs	r3, #3
10003166:	|  |  |  |  |  |  |  |  |  |  |  |     |  |  |  |  |   eb03 000a 	add.w	r0, r3, sl
1000316a:	|  |  |  |  |  |  |  |  |  |  |  |     |  |  |  |  |   f110 0a01 	adds.w	sl, r0, #1
1000316e:	|  |  |  |  |  |  +--|--|--|--|--|-----|--|--|--|--|-- d345      	bcc.n	100031fc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x23c>
10003170:	|  |  |  +--|--|--|--|--|--|--|--|-----|--|--|--|--|-- e74f      	b.n	10003012 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x52>
10003172:	|  |  |  |  |  |  |  |  |  |  |  |     |  |  |  \--|-> 3101      	adds	r1, #1
10003174:	|  |  |  |  |  |  |  |  |  |  |  |     |  \--|-----|-> 180b      	adds	r3, r1, r0
10003176:	|  |  |  |  |  |  |  |  |  |  |  |     |     |     |   eb03 000a 	add.w	r0, r3, sl
1000317a:	|  |  |  |  |  |  |  |  |  |  |  |     |     |     |   f110 0a01 	adds.w	sl, r0, #1
1000317e:	|  |  |  |  |  |  +--|--|--|--|--|-----|-----|-----|-- d33d      	bcc.n	100031fc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x23c>
10003180:	|  |  |  +--|--|--|--|--|--|--|--|-----|-----|-----|-- e747      	b.n	10003012 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x52>
10003182:	|  |  |  |  |  |  |  |  |  |  |  \-----|-----|-----|-> 3301      	adds	r3, #1
10003184:	|  |  |  |  |  |  |  |  |  |  |        |     |     |   eb03 000a 	add.w	r0, r3, sl
10003188:	|  |  |  |  |  |  |  |  |  |  |        |     |     |   f110 0a01 	adds.w	sl, r0, #1
1000318c:	|  |  |  |  |  |  +--|--|--|--|--------|-----|-----|-- d336      	bcc.n	100031fc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x23c>
1000318e:	|  |  |  +--|--|--|--|--|--|--|--------|-----|-----|-- e740      	b.n	10003012 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x52>
10003190:	|  |  |  |  |  |  |  |  |  |  |        |     \-----|-> 3102      	adds	r1, #2
10003192:	|  |  |  |  |  |  |  |  |  |  |        |           |   180b      	adds	r3, r1, r0
10003194:	|  |  |  |  |  |  |  |  |  |  |        |           |   eb03 000a 	add.w	r0, r3, sl
10003198:	|  |  |  |  |  |  |  |  |  |  |        |           |   f110 0a01 	adds.w	sl, r0, #1
1000319c:	|  |  |  |  |  |  +--|--|--|--|--------|-----------|-- d32e      	bcc.n	100031fc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x23c>
1000319e:	|  |  |  +--|--|--|--|--|--|--|--------|-----------|-- e738      	b.n	10003012 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x52>
100031a0:	|  |  |  |  |  |  |  |  |  |  \--------|-----------|-> 3302      	adds	r3, #2
100031a2:	|  |  |  |  |  |  |  |  |  |           |           |   eb03 000a 	add.w	r0, r3, sl
100031a6:	|  |  |  |  |  |  |  |  |  |           |           |   f110 0a01 	adds.w	sl, r0, #1
100031aa:	|  |  |  |  |  |  +--|--|--|-----------|-----------|-- d327      	bcc.n	100031fc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x23c>
100031ac:	|  |  |  +--|--|--|--|--|--|-----------|-----------|-- e731      	b.n	10003012 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x52>
100031ae:	|  |  |  |  |  |  |  |  |  |           \-----------|-> 3103      	adds	r1, #3
100031b0:	|  |  |  |  |  |  |  |  |  |                       |   180b      	adds	r3, r1, r0
100031b2:	|  |  |  |  |  |  |  |  |  |                       |   eb03 000a 	add.w	r0, r3, sl
100031b6:	|  |  |  |  |  |  |  |  |  |                       |   f110 0a01 	adds.w	sl, r0, #1
100031ba:	|  |  |  |  |  |  +--|--|--|-----------------------|-- d31f      	bcc.n	100031fc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x23c>
100031bc:	|  |  |  +--|--|--|--|--|--|-----------------------|-- e729      	b.n	10003012 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x52>
100031be:	|  |  |  |  |  |  |  |  |  \-----------------------|-> 3303      	adds	r3, #3
100031c0:	|  |  |  |  |  |  |  |  |                          |   eb03 000a 	add.w	r0, r3, sl
100031c4:	|  |  |  |  |  |  |  |  |                          |   f110 0a01 	adds.w	sl, r0, #1
100031c8:	|  |  |  |  |  |  +--|--|--------------------------|-- d318      	bcc.n	100031fc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x23c>
100031ca:	|  |  |  +--|--|--|--|--|--------------------------|-- e722      	b.n	10003012 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x52>
100031cc:	|  |  |  |  |  |  |  |  |                          \-> 2904      	cmp	r1, #4
100031ce:	|  |  |  |  |  +--|--|--|----------------------------- d02a      	beq.n	10003226 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x266>
100031d0:	|  |  |  |  |  |  |  |  |                              7910      	ldrb	r0, [r2, #4]
100031d2:	|  |  |  |  |  |  |  |  |                              280a      	cmp	r0, #10
100031d4:	|  |  |  |  |  |  |  |  |                          /-- d106      	bne.n	100031e4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x224>
100031d6:	|  |  |  |  |  |  |  |  |                          |   2304      	movs	r3, #4
100031d8:	|  |  |  |  |  |  |  |  |                          |   eb03 000a 	add.w	r0, r3, sl
100031dc:	|  |  |  |  |  |  |  |  |                          |   f110 0a01 	adds.w	sl, r0, #1
100031e0:	|  |  |  |  |  |  +--|--|--------------------------|-- d30c      	bcc.n	100031fc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x23c>
100031e2:	|  |  |  +--|--|--|--|--|--------------------------|-- e716      	b.n	10003012 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x52>
100031e4:	|  |  |  |  |  |  |  |  |                          \-> 2905      	cmp	r1, #5
100031e6:	|  |  |  |  |  +--|--|--|----------------------------- d01e      	beq.n	10003226 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x266>
100031e8:	|  |  |  |  |  |  |  |  |                              7950      	ldrb	r0, [r2, #5]
100031ea:	|  |  |  |  |  |  |  |  |                              280a      	cmp	r0, #10
100031ec:	|  |  |  |  |  |  |  |  |                          /-- d10f      	bne.n	1000320e <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x24e>
100031ee:	|  |  |  |  |  |  |  |  |                          |   2305      	movs	r3, #5
100031f0:	|  |  |  |  |  |  |  |  \--------------------------|-> eb03 000a 	add.w	r0, r3, sl
100031f4:	|  |  |  |  |  |  |  |                             |   f110 0a01 	adds.w	sl, r0, #1
100031f8:	|  |  |  +--|--|--|--|-----------------------------|-- f4bf af0b 	bcs.w	10003012 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x52>
100031fc:	|  |  |  |  |  |  >--|-----------------------------|-> 45ca      	cmp	sl, r9
100031fe:	|  |  |  +--|--|--|--|-----------------------------|-- f63f af08 	bhi.w	10003012 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x52>
10003202:	|  |  |  |  |  |  |  |                             |   f818 0000 	ldrb.w	r0, [r8, r0]
10003206:	|  |  |  |  |  |  |  |                             |   280a      	cmp	r0, #10
10003208:	|  |  |  +--|--|--|--|-----------------------------|-- f47f af03 	bne.w	10003012 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x52>
1000320c:	|  |  |  |  |  |  |  |                       /-----|-- e024      	b.n	10003258 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x298>
1000320e:	|  |  |  |  |  |  |  |                       |     \-> 2906      	cmp	r1, #6
10003210:	|  |  |  |  |  +--|--|-----------------------|-------- d009      	beq.n	10003226 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x266>
10003212:	|  |  |  |  |  |  |  |                       |         7990      	ldrb	r0, [r2, #6]
10003214:	|  |  |  |  |  |  |  |                       |         280a      	cmp	r0, #10
10003216:	|  |  |  |  |  +--|--|-----------------------|-------- d106      	bne.n	10003226 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x266>
10003218:	|  |  |  |  |  |  |  |                       |         2306      	movs	r3, #6
1000321a:	|  |  |  |  |  |  |  |                       |         eb03 000a 	add.w	r0, r3, sl
1000321e:	|  |  |  |  |  |  |  |                       |         f110 0a01 	adds.w	sl, r0, #1
10003222:	|  |  |  |  |  |  \--|-----------------------|-------- d3eb      	bcc.n	100031fc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x23c>
10003224:	|  |  |  \--|--|-----|-----------------------|-------- e6f5      	b.n	10003012 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x52>
10003226:	|  |  |     |  \-----|-----------------------|-------> 2000      	movs	r0, #0
10003228:	|  |  |     \--------|-----------------------|-------> 46ca      	mov	sl, r9
1000322a:	|  |  |              |                       |         45d1      	cmp	r9, sl
1000322c:	|  |  |              |                       |         f88b 0000 	strb.w	r0, [fp]
10003230:	|  |  |              |                       |  /----- d917      	bls.n	10003262 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x2a2>
10003232:	|  |  |              |                       |  |  /-> f918 000a 	ldrsb.w	r0, [r8, sl]
10003236:	|  |  |              |                       |  |  |   f110 0f41 	cmn.w	r0, #65	; 0x41
1000323a:	|  |  |              |                 /-----|--|--|-- dd2d      	ble.n	10003298 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x2d8>
1000323c:	|  |  |              |                 |     |  |  |   9801      	ldr	r0, [sp, #4]
1000323e:	|  |  |              |                 |     |  |  |   4641      	mov	r1, r8
10003240:	|  |  |              |                 |     |  |  |   4652      	mov	r2, sl
10003242:	|  |  |              |                 |     |  |  |   68c3      	ldr	r3, [r0, #12]
10003244:	|  |  |              |                 |     |  |  |   9802      	ldr	r0, [sp, #8]
10003246:	|  |  |              |                 |     |  |  |   4798      	blx	r3
10003248:	|  |  +--------------|-----------------|-----|--|--|-- b9a8      	cbnz	r0, 10003276 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x2b6>
1000324a:	|  |  |              |                 |     |  |  |   f918 000a 	ldrsb.w	r0, [r8, sl]
1000324e:	|  |  |              |                 |     |  |  |   f110 0f41 	cmn.w	r0, #65	; 0x41
10003252:	|  +--|--------------|-----------------|-----|--|--|-- f73f aec6 	bgt.w	10002fe2 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x22>
10003256:	|  |  |              |                 |  /--|--|--|-- e02b      	b.n	100032b0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x2f0>
10003258:	|  |  |              |                 |  |  \--|--|-> 2001      	movs	r0, #1
1000325a:	|  |  |              |                 |  |     |  |   45d1      	cmp	r9, sl
1000325c:	|  |  |              |                 |  |     |  |   f88b 0000 	strb.w	r0, [fp]
10003260:	|  |  |              |                 |  |     |  \-- d8e7      	bhi.n	10003232 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x272>
10003262:	|  |  |              |                 +--|-----\----X d119      	bne.n	10003298 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x2d8>
10003264:	|  |  |              |                 |  |            9801      	ldr	r0, [sp, #4]
10003266:	|  |  |              |                 |  |            4641      	mov	r1, r8
10003268:	|  |  |              |                 |  |            4652      	mov	r2, sl
1000326a:	|  |  |              |                 |  |            68c3      	ldr	r3, [r0, #12]
1000326c:	|  |  |              |                 |  |            9802      	ldr	r0, [sp, #8]
1000326e:	|  |  |              |                 |  |            4798      	blx	r3
10003270:	|  |  |              |                 |  |            2800      	cmp	r0, #0
10003272:	|  \--|--------------|-----------------|--|----------- f43f aeb6 	beq.w	10002fe2 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE+0x22>
10003276:	|     \--------------|-----------------|--|----------> 2001      	movs	r0, #1
10003278:	|                    |                 |  |            b003      	add	sp, #12
1000327a:	|                    |                 |  |            e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
1000327e:	|                    |                 |  |            bdf0      	pop	{r4, r5, r6, r7, pc}
10003280:	\--------------------|-----------------|--|----------> 2000      	movs	r0, #0
10003282:	                     |                 |  |            b003      	add	sp, #12
10003284:	                     |                 |  |            e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
10003288:	                     |                 |  |            bdf0      	pop	{r4, r5, r6, r7, pc}
1000328a:	                     \-----------------|--|----------> f245 4248 	movw	r2, #21576	; 0x5448
1000328e:	                                       |  |            f2c1 0200 	movt	r2, #4096	; 0x1000
10003292:	                                       |  |            f000 fd95 	bl	10003dc0 <_ZN4core5slice5index26slice_start_index_len_fail17hcb0f835bd05be412E>
10003296:	                                       |  |            defe      	udf	#254	; 0xfe
10003298:	                                       \--|----------> f245 3010 	movw	r0, #21264	; 0x5310
1000329c:	                                          |            4649      	mov	r1, r9
1000329e:	                                          |            f2c1 0000 	movt	r0, #4096	; 0x1000
100032a2:	                                          |            2200      	movs	r2, #0
100032a4:	                                          |            9000      	str	r0, [sp, #0]
100032a6:	                                          |            4640      	mov	r0, r8
100032a8:	                                          |            4653      	mov	r3, sl
100032aa:	                                          |            f000 fdec 	bl	10003e86 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E>
100032ae:	                                          |            defe      	udf	#254	; 0xfe
100032b0:	                                          \----------> f245 3020 	movw	r0, #21280	; 0x5320
100032b4:	                                                       4649      	mov	r1, r9
100032b6:	                                                       f2c1 0000 	movt	r0, #4096	; 0x1000
100032ba:	                                                       4652      	mov	r2, sl
100032bc:	                                                       9000      	str	r0, [sp, #0]
100032be:	                                                       4640      	mov	r0, r8
100032c0:	                                                       464b      	mov	r3, r9
100032c2:	                                                       f000 fde0 	bl	10003e86 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E>
100032c6:	                                                       defe      	udf	#254	; 0xfe

100032c8 <_ZN4core3fmt8builders10DebugInner5entry17h9f4fff753410b568E>:
100032c8:	             b5f0      	push	{r4, r5, r6, r7, lr}
100032ca:	             af03      	add	r7, sp, #12
100032cc:	             e92d 0700 	stmdb	sp!, {r8, r9, sl}
100032d0:	             b08e      	sub	sp, #56	; 0x38
100032d2:	             4604      	mov	r4, r0
100032d4:	             7900      	ldrb	r0, [r0, #4]
100032d6:	             f04f 0a01 	mov.w	sl, #1
100032da:	             2601      	movs	r6, #1
100032dc:	         /-- b130      	cbz	r0, 100032ec <_ZN4core3fmt8builders10DebugInner5entry17h9f4fff753410b568E+0x24>
100032de:	/--------|-> f884 a005 	strb.w	sl, [r4, #5]
100032e2:	|        |   7126      	strb	r6, [r4, #4]
100032e4:	|        |   b00e      	add	sp, #56	; 0x38
100032e6:	|        |   e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
100032ea:	|        |   bdf0      	pop	{r4, r5, r6, r7, pc}
100032ec:	|        \-> 6825      	ldr	r5, [r4, #0]
100032ee:	|            4688      	mov	r8, r1
100032f0:	|            7960      	ldrb	r0, [r4, #5]
100032f2:	|            4691      	mov	r9, r2
100032f4:	|            7829      	ldrb	r1, [r5, #0]
100032f6:	|            0749      	lsls	r1, r1, #29
100032f8:	|     /----- d411      	bmi.n	1000331e <_ZN4core3fmt8builders10DebugInner5entry17h9f4fff753410b568E+0x56>
100032fa:	|     |  /-- b148      	cbz	r0, 10003310 <_ZN4core3fmt8builders10DebugInner5entry17h9f4fff753410b568E+0x48>
100032fc:	|     |  |   e9d5 0106 	ldrd	r0, r1, [r5, #24]
10003300:	|     |  |   2202      	movs	r2, #2
10003302:	|     |  |   68cb      	ldr	r3, [r1, #12]
10003304:	|     |  |   f245 3132 	movw	r1, #21298	; 0x5332
10003308:	|     |  |   f2c1 0100 	movt	r1, #4096	; 0x1000
1000330c:	|     |  |   4798      	blx	r3
1000330e:	|  /--|--|-- bbc0      	cbnz	r0, 10003382 <_ZN4core3fmt8builders10DebugInner5entry17h9f4fff753410b568E+0xba>
10003310:	|  |  |  \-> f8d9 200c 	ldr.w	r2, [r9, #12]
10003314:	|  |  |      4640      	mov	r0, r8
10003316:	|  |  |      4629      	mov	r1, r5
10003318:	|  |  |      4790      	blx	r2
1000331a:	|  |  |      4606      	mov	r6, r0
1000331c:	+--|--|----- e7df      	b.n	100032de <_ZN4core3fmt8builders10DebugInner5entry17h9f4fff753410b568E+0x16>
1000331e:	|  |  \--/-X b958      	cbnz	r0, 10003338 <_ZN4core3fmt8builders10DebugInner5entry17h9f4fff753410b568E+0x70>
10003320:	|  |     |   e9d5 0106 	ldrd	r0, r1, [r5, #24]
10003324:	|  |     |   2201      	movs	r2, #1
10003326:	|  |     |   68cb      	ldr	r3, [r1, #12]
10003328:	|  |     |   f245 3134 	movw	r1, #21300	; 0x5334
1000332c:	|  |     |   f2c1 0100 	movt	r1, #4096	; 0x1000
10003330:	|  |     |   2601      	movs	r6, #1
10003332:	|  |     |   4798      	blx	r3
10003334:	|  |     |   2800      	cmp	r0, #0
10003336:	+--|-----|-- d1d2      	bne.n	100032de <_ZN4core3fmt8builders10DebugInner5entry17h9f4fff753410b568E+0x16>
10003338:	|  |     \-> 2001      	movs	r0, #1
1000333a:	|  |         f807 0c3d 	strb.w	r0, [r7, #-61]
1000333e:	|  |         f1a7 003d 	sub.w	r0, r7, #61	; 0x3d
10003342:	|  |         9003      	str	r0, [sp, #12]
10003344:	|  |         f245 20f8 	movw	r0, #21240	; 0x52f8
10003348:	|  |         f2c1 0000 	movt	r0, #4096	; 0x1000
1000334c:	|  |         900c      	str	r0, [sp, #48]	; 0x30
1000334e:	|  |         a801      	add	r0, sp, #4
10003350:	|  |         900b      	str	r0, [sp, #44]	; 0x2c
10003352:	|  |         69e8      	ldr	r0, [r5, #28]
10003354:	|  |         9002      	str	r0, [sp, #8]
10003356:	|  |         69a8      	ldr	r0, [r5, #24]
10003358:	|  |         9001      	str	r0, [sp, #4]
1000335a:	|  |         f895 0020 	ldrb.w	r0, [r5, #32]
1000335e:	|  |         f88d 0034 	strb.w	r0, [sp, #52]	; 0x34
10003362:	|  |         e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
10003366:	|  |         e9cd 0105 	strd	r0, r1, [sp, #20]
1000336a:	|  |         a905      	add	r1, sp, #20
1000336c:	|  |         6968      	ldr	r0, [r5, #20]
1000336e:	|  |         900a      	str	r0, [sp, #40]	; 0x28
10003370:	|  |         e9cd 2307 	strd	r2, r3, [sp, #28]
10003374:	|  |         f8d9 200c 	ldr.w	r2, [r9, #12]
10003378:	|  |         6928      	ldr	r0, [r5, #16]
1000337a:	|  |         9009      	str	r0, [sp, #36]	; 0x24
1000337c:	|  |         4640      	mov	r0, r8
1000337e:	|  |         4790      	blx	r2
10003380:	|  |     /-- b108      	cbz	r0, 10003386 <_ZN4core3fmt8builders10DebugInner5entry17h9f4fff753410b568E+0xbe>
10003382:	|  \-----|-> 2601      	movs	r6, #1
10003384:	+--------|-- e7ab      	b.n	100032de <_ZN4core3fmt8builders10DebugInner5entry17h9f4fff753410b568E+0x16>
10003386:	|        \-> e9dd 010b 	ldrd	r0, r1, [sp, #44]	; 0x2c
1000338a:	|            2202      	movs	r2, #2
1000338c:	|            68cb      	ldr	r3, [r1, #12]
1000338e:	|            f245 3130 	movw	r1, #21296	; 0x5330
10003392:	|            f2c1 0100 	movt	r1, #4096	; 0x1000
10003396:	|            4798      	blx	r3
10003398:	|            4606      	mov	r6, r0
1000339a:	\----------- e7a0      	b.n	100032de <_ZN4core3fmt8builders10DebugInner5entry17h9f4fff753410b568E+0x16>

1000339c <_ZN4core3fmt8builders8DebugSet5entry17h03faf68b09a85cb5E>:
1000339c:	b5d0      	push	{r4, r6, r7, lr}
1000339e:	af02      	add	r7, sp, #8
100033a0:	4604      	mov	r4, r0
100033a2:	f7ff ff91 	bl	100032c8 <_ZN4core3fmt8builders10DebugInner5entry17h9f4fff753410b568E>
100033a6:	4620      	mov	r0, r4
100033a8:	bdd0      	pop	{r4, r6, r7, pc}

100033aa <_ZN4core3fmt8builders9DebugList6finish17h896e994731ebc79eE>:
100033aa:	7901      	ldrb	r1, [r0, #4]
100033ac:	2900      	cmp	r1, #0
100033ae:	bf1c      	itt	ne
100033b0:	2001      	movne	r0, #1
100033b2:	4770      	bxne	lr
100033b4:	6801      	ldr	r1, [r0, #0]
100033b6:	2201      	movs	r2, #1
100033b8:	e9d1 0106 	ldrd	r0, r1, [r1, #24]
100033bc:	68cb      	ldr	r3, [r1, #12]
100033be:	f245 3136 	movw	r1, #21302	; 0x5336
100033c2:	f2c1 0100 	movt	r1, #4096	; 0x1000
100033c6:	4718      	bx	r3

100033c8 <_ZN4core3fmt5Write10write_char17h5158e49a06a1906cE>:
100033c8:	    b580      	push	{r7, lr}
100033ca:	    466f      	mov	r7, sp
100033cc:	    b082      	sub	sp, #8
100033ce:	    2200      	movs	r2, #0
100033d0:	    2980      	cmp	r1, #128	; 0x80
100033d2:	    9201      	str	r2, [sp, #4]
100033d4:	/-- d207      	bcs.n	100033e6 <_ZN4core3fmt5Write10write_char17h5158e49a06a1906cE+0x1e>
100033d6:	|   f88d 1004 	strb.w	r1, [sp, #4]
100033da:	|   2201      	movs	r2, #1
100033dc:	|   a901      	add	r1, sp, #4
100033de:	|   f7ff fdef 	bl	10002fc0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE>
100033e2:	|   b002      	add	sp, #8
100033e4:	|   bd80      	pop	{r7, pc}
100033e6:	\-> 2202      	movs	r2, #2
100033e8:	    460b      	mov	r3, r1
100033ea:	    f362 139f 	bfi	r3, r2, #6, #26
100033ee:	    f5b1 6f00 	cmp.w	r1, #2048	; 0x800
100033f2:	/-- d20b      	bcs.n	1000340c <_ZN4core3fmt5Write10write_char17h5158e49a06a1906cE+0x44>
100033f4:	|   f88d 3005 	strb.w	r3, [sp, #5]
100033f8:	|   23c0      	movs	r3, #192	; 0xc0
100033fa:	|   ea43 1191 	orr.w	r1, r3, r1, lsr #6
100033fe:	|   f88d 1004 	strb.w	r1, [sp, #4]
10003402:	|   a901      	add	r1, sp, #4
10003404:	|   f7ff fddc 	bl	10002fc0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE>
10003408:	|   b002      	add	sp, #8
1000340a:	|   bd80      	pop	{r7, pc}
1000340c:	\-> f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
10003410:	/-- d211      	bcs.n	10003436 <_ZN4core3fmt5Write10write_char17h5158e49a06a1906cE+0x6e>
10003412:	|   f88d 3006 	strb.w	r3, [sp, #6]
10003416:	|   23e0      	movs	r3, #224	; 0xe0
10003418:	|   ea43 3311 	orr.w	r3, r3, r1, lsr #12
1000341c:	|   0989      	lsrs	r1, r1, #6
1000341e:	|   f362 119f 	bfi	r1, r2, #6, #26
10003422:	|   f88d 3004 	strb.w	r3, [sp, #4]
10003426:	|   f88d 1005 	strb.w	r1, [sp, #5]
1000342a:	|   2203      	movs	r2, #3
1000342c:	|   a901      	add	r1, sp, #4
1000342e:	|   f7ff fdc7 	bl	10002fc0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE>
10003432:	|   b002      	add	sp, #8
10003434:	|   bd80      	pop	{r7, pc}
10003436:	\-> f88d 3007 	strb.w	r3, [sp, #7]
1000343a:	    23f0      	movs	r3, #240	; 0xf0
1000343c:	    ea43 4391 	orr.w	r3, r3, r1, lsr #18
10003440:	    f88d 3004 	strb.w	r3, [sp, #4]
10003444:	    098b      	lsrs	r3, r1, #6
10003446:	    0b09      	lsrs	r1, r1, #12
10003448:	    f362 139f 	bfi	r3, r2, #6, #26
1000344c:	    f362 119f 	bfi	r1, r2, #6, #26
10003450:	    2204      	movs	r2, #4
10003452:	    f88d 3006 	strb.w	r3, [sp, #6]
10003456:	    f88d 1005 	strb.w	r1, [sp, #5]
1000345a:	    a901      	add	r1, sp, #4
1000345c:	    f7ff fdb0 	bl	10002fc0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE>
10003460:	    b002      	add	sp, #8
10003462:	    bd80      	pop	{r7, pc}

10003464 <_ZN4core3fmt5Write9write_fmt17he1a6c313d9d1b46bE>:
10003464:	b5f0      	push	{r4, r5, r6, r7, lr}
10003466:	af03      	add	r7, sp, #12
10003468:	f84d bd04 	str.w	fp, [sp, #-4]!
1000346c:	b088      	sub	sp, #32
1000346e:	9001      	str	r0, [sp, #4]
10003470:	aa02      	add	r2, sp, #8
10003472:	e891 5078 	ldmia.w	r1, {r3, r4, r5, r6, ip, lr}
10003476:	f245 4130 	movw	r1, #21552	; 0x5430
1000347a:	4610      	mov	r0, r2
1000347c:	f2c1 0100 	movt	r1, #4096	; 0x1000
10003480:	e880 5078 	stmia.w	r0, {r3, r4, r5, r6, ip, lr}
10003484:	a801      	add	r0, sp, #4
10003486:	f000 f882 	bl	1000358e <_ZN4core3fmt5write17hc3aadbfba0721466E>
1000348a:	b008      	add	sp, #32
1000348c:	f85d bb04 	ldr.w	fp, [sp], #4
10003490:	bdf0      	pop	{r4, r5, r6, r7, pc}

10003492 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17he3e4f14bfd6905f1E>:
10003492:	6800      	ldr	r0, [r0, #0]
10003494:	f7ff bd94 	b.w	10002fc0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE>

10003498 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8cbff6b72fcd5030E>:
10003498:	    b580      	push	{r7, lr}
1000349a:	    466f      	mov	r7, sp
1000349c:	    b082      	sub	sp, #8
1000349e:	    6800      	ldr	r0, [r0, #0]
100034a0:	    2200      	movs	r2, #0
100034a2:	    2980      	cmp	r1, #128	; 0x80
100034a4:	    9201      	str	r2, [sp, #4]
100034a6:	/-- d207      	bcs.n	100034b8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8cbff6b72fcd5030E+0x20>
100034a8:	|   f88d 1004 	strb.w	r1, [sp, #4]
100034ac:	|   2201      	movs	r2, #1
100034ae:	|   a901      	add	r1, sp, #4
100034b0:	|   f7ff fd86 	bl	10002fc0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE>
100034b4:	|   b002      	add	sp, #8
100034b6:	|   bd80      	pop	{r7, pc}
100034b8:	\-> 2202      	movs	r2, #2
100034ba:	    460b      	mov	r3, r1
100034bc:	    f362 139f 	bfi	r3, r2, #6, #26
100034c0:	    f5b1 6f00 	cmp.w	r1, #2048	; 0x800
100034c4:	/-- d20b      	bcs.n	100034de <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8cbff6b72fcd5030E+0x46>
100034c6:	|   f88d 3005 	strb.w	r3, [sp, #5]
100034ca:	|   23c0      	movs	r3, #192	; 0xc0
100034cc:	|   ea43 1191 	orr.w	r1, r3, r1, lsr #6
100034d0:	|   f88d 1004 	strb.w	r1, [sp, #4]
100034d4:	|   a901      	add	r1, sp, #4
100034d6:	|   f7ff fd73 	bl	10002fc0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE>
100034da:	|   b002      	add	sp, #8
100034dc:	|   bd80      	pop	{r7, pc}
100034de:	\-> f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
100034e2:	/-- d211      	bcs.n	10003508 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8cbff6b72fcd5030E+0x70>
100034e4:	|   f88d 3006 	strb.w	r3, [sp, #6]
100034e8:	|   23e0      	movs	r3, #224	; 0xe0
100034ea:	|   ea43 3311 	orr.w	r3, r3, r1, lsr #12
100034ee:	|   0989      	lsrs	r1, r1, #6
100034f0:	|   f362 119f 	bfi	r1, r2, #6, #26
100034f4:	|   f88d 3004 	strb.w	r3, [sp, #4]
100034f8:	|   f88d 1005 	strb.w	r1, [sp, #5]
100034fc:	|   2203      	movs	r2, #3
100034fe:	|   a901      	add	r1, sp, #4
10003500:	|   f7ff fd5e 	bl	10002fc0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE>
10003504:	|   b002      	add	sp, #8
10003506:	|   bd80      	pop	{r7, pc}
10003508:	\-> f88d 3007 	strb.w	r3, [sp, #7]
1000350c:	    23f0      	movs	r3, #240	; 0xf0
1000350e:	    ea43 4391 	orr.w	r3, r3, r1, lsr #18
10003512:	    f88d 3004 	strb.w	r3, [sp, #4]
10003516:	    098b      	lsrs	r3, r1, #6
10003518:	    0b09      	lsrs	r1, r1, #12
1000351a:	    f362 139f 	bfi	r3, r2, #6, #26
1000351e:	    f362 119f 	bfi	r1, r2, #6, #26
10003522:	    2204      	movs	r2, #4
10003524:	    f88d 3006 	strb.w	r3, [sp, #6]
10003528:	    f88d 1005 	strb.w	r1, [sp, #5]
1000352c:	    a901      	add	r1, sp, #4
1000352e:	    f7ff fd47 	bl	10002fc0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4bf0524ec334a38bE>
10003532:	    b002      	add	sp, #8
10003534:	    bd80      	pop	{r7, pc}

10003536 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h01b4b61b1ed8cf18E>:
10003536:	b5f0      	push	{r4, r5, r6, r7, lr}
10003538:	af03      	add	r7, sp, #12
1000353a:	f84d bd04 	str.w	fp, [sp, #-4]!
1000353e:	b088      	sub	sp, #32
10003540:	6800      	ldr	r0, [r0, #0]
10003542:	aa02      	add	r2, sp, #8
10003544:	9001      	str	r0, [sp, #4]
10003546:	e891 5078 	ldmia.w	r1, {r3, r4, r5, r6, ip, lr}
1000354a:	4610      	mov	r0, r2
1000354c:	f245 4130 	movw	r1, #21552	; 0x5430
10003550:	f2c1 0100 	movt	r1, #4096	; 0x1000
10003554:	e880 5078 	stmia.w	r0, {r3, r4, r5, r6, ip, lr}
10003558:	a801      	add	r0, sp, #4
1000355a:	f000 f818 	bl	1000358e <_ZN4core3fmt5write17hc3aadbfba0721466E>
1000355e:	b008      	add	sp, #32
10003560:	f85d bb04 	ldr.w	fp, [sp], #4
10003564:	bdf0      	pop	{r4, r5, r6, r7, pc}

10003566 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17hbb4c36437cbc46d7E>:
10003566:	b5f0      	push	{r4, r5, r6, r7, lr}
10003568:	af03      	add	r7, sp, #12
1000356a:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
1000356e:	b086      	sub	sp, #24
10003570:	e9d1 c106 	ldrd	ip, r1, [r1, #24]
10003574:	466a      	mov	r2, sp
10003576:	e890 4370 	ldmia.w	r0, {r4, r5, r6, r8, r9, lr}
1000357a:	4613      	mov	r3, r2
1000357c:	4660      	mov	r0, ip
1000357e:	e883 4370 	stmia.w	r3, {r4, r5, r6, r8, r9, lr}
10003582:	f000 f804 	bl	1000358e <_ZN4core3fmt5write17hc3aadbfba0721466E>
10003586:	b006      	add	sp, #24
10003588:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
1000358c:	bdf0      	pop	{r4, r5, r6, r7, pc}

1000358e <_ZN4core3fmt5write17hc3aadbfba0721466E>:
1000358e:	                      b5f0      	push	{r4, r5, r6, r7, lr}
10003590:	                      af03      	add	r7, sp, #12
10003592:	                      e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
10003596:	                      b08b      	sub	sp, #44	; 0x2c
10003598:	                      4693      	mov	fp, r2
1000359a:	                      2203      	movs	r2, #3
1000359c:	                      f8db 6008 	ldr.w	r6, [fp, #8]
100035a0:	                      f88d 2028 	strb.w	r2, [sp, #40]	; 0x28
100035a4:	                      2220      	movs	r2, #32
100035a6:	                      9203      	str	r2, [sp, #12]
100035a8:	                      2200      	movs	r2, #0
100035aa:	                      2e00      	cmp	r6, #0
100035ac:	                      9202      	str	r2, [sp, #8]
100035ae:	                      e9cd 0108 	strd	r0, r1, [sp, #32]
100035b2:	                      9206      	str	r2, [sp, #24]
100035b4:	                      9204      	str	r2, [sp, #16]
100035b6:	      /-------------- d06a      	beq.n	1000368e <_ZN4core3fmt5write17hc3aadbfba0721466E+0x100>
100035b8:	      |               f8db 000c 	ldr.w	r0, [fp, #12]
100035bc:	      |               2800      	cmp	r0, #0
100035be:	/-----|-------------- f000 808d 	beq.w	100036dc <_ZN4core3fmt5write17hc3aadbfba0721466E+0x14e>
100035c2:	|     |               f06f 011f 	mvn.w	r1, #31
100035c6:	|     |               f8db 9000 	ldr.w	r9, [fp]
100035ca:	|     |               eb01 1140 	add.w	r1, r1, r0, lsl #5
100035ce:	|     |               ea4f 1a40 	mov.w	sl, r0, lsl #5
100035d2:	|     |               2400      	movs	r4, #0
100035d4:	|     |               f04f 0800 	mov.w	r8, #0
100035d8:	|     |               2201      	movs	r2, #1
100035da:	|     |               eb02 1151 	add.w	r1, r2, r1, lsr #5
100035de:	|     |               9101      	str	r1, [sp, #4]
100035e0:	|     |  /----------> eb09 0008 	add.w	r0, r9, r8
100035e4:	|     |  |            6842      	ldr	r2, [r0, #4]
100035e6:	|     |  |        /-- b142      	cbz	r2, 100035fa <_ZN4core3fmt5write17hc3aadbfba0721466E+0x6c>
100035e8:	|     |  |        |   e9dd 0308 	ldrd	r0, r3, [sp, #32]
100035ec:	|     |  |        |   f859 1008 	ldr.w	r1, [r9, r8]
100035f0:	|     |  |        |   68db      	ldr	r3, [r3, #12]
100035f2:	|     |  |        |   4798      	blx	r3
100035f4:	|     |  |        |   2800      	cmp	r0, #0
100035f6:	|  /--|--|--------|-- f040 8082 	bne.w	100036fe <_ZN4core3fmt5write17hc3aadbfba0721466E+0x170>
100035fa:	|  |  |  |        \-> eb06 0088 	add.w	r0, r6, r8, lsl #2
100035fe:	|  |  |  |            e9d0 1501 	ldrd	r1, r5, [r0, #4]
10003602:	|  |  |  |            e9d0 2305 	ldrd	r2, r3, [r0, #20]
10003606:	|  |  |  |            9103      	str	r1, [sp, #12]
10003608:	|  |  |  |            7f01      	ldrb	r1, [r0, #28]
1000360a:	|  |  |  |            f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
1000360e:	|  |  |  |            f8db 1010 	ldr.w	r1, [fp, #16]
10003612:	|  |  |  |            9502      	str	r5, [sp, #8]
10003614:	|  |  |  |  /-------- b17a      	cbz	r2, 10003636 <_ZN4core3fmt5write17hc3aadbfba0721466E+0xa8>
10003616:	|  |  |  |  |         2a01      	cmp	r2, #1
10003618:	|  |  |  |  |  /----- d108      	bne.n	1000362c <_ZN4core3fmt5write17hc3aadbfba0721466E+0x9e>
1000361a:	|  |  |  |  |  |      eb01 02c3 	add.w	r2, r1, r3, lsl #3
1000361e:	|  |  |  |  |  |      f642 55fb 	movw	r5, #11771	; 0x2dfb
10003622:	|  |  |  |  |  |      f2c1 0500 	movt	r5, #4096	; 0x1000
10003626:	|  |  |  |  |  |      6852      	ldr	r2, [r2, #4]
10003628:	|  |  |  |  |  |      42aa      	cmp	r2, r5
1000362a:	|  |  |  |  |  |  /-- d001      	beq.n	10003630 <_ZN4core3fmt5write17hc3aadbfba0721466E+0xa2>
1000362c:	|  |  |  |  |  \--|-> 2500      	movs	r5, #0
1000362e:	|  |  |  |  |  /--|-- e003      	b.n	10003638 <_ZN4core3fmt5write17hc3aadbfba0721466E+0xaa>
10003630:	|  |  |  |  |  |  \-> f851 2033 	ldr.w	r2, [r1, r3, lsl #3]
10003634:	|  |  |  |  |  |      6813      	ldr	r3, [r2, #0]
10003636:	|  |  |  |  \--|----> 2501      	movs	r5, #1
10003638:	|  |  |  |     \----> 1932      	adds	r2, r6, r4
1000363a:	|  |  |  |            e9cd 5304 	strd	r5, r3, [sp, #16]
1000363e:	|  |  |  |            68c3      	ldr	r3, [r0, #12]
10003640:	|  |  |  |            6910      	ldr	r0, [r2, #16]
10003642:	|  |  |  |  /-------- b17b      	cbz	r3, 10003664 <_ZN4core3fmt5write17hc3aadbfba0721466E+0xd6>
10003644:	|  |  |  |  |         2b01      	cmp	r3, #1
10003646:	|  |  |  |  |  /----- d108      	bne.n	1000365a <_ZN4core3fmt5write17hc3aadbfba0721466E+0xcc>
10003648:	|  |  |  |  |  |      eb01 03c0 	add.w	r3, r1, r0, lsl #3
1000364c:	|  |  |  |  |  |      f642 55fb 	movw	r5, #11771	; 0x2dfb
10003650:	|  |  |  |  |  |      f2c1 0500 	movt	r5, #4096	; 0x1000
10003654:	|  |  |  |  |  |      685b      	ldr	r3, [r3, #4]
10003656:	|  |  |  |  |  |      42ab      	cmp	r3, r5
10003658:	|  |  |  |  |  |  /-- d001      	beq.n	1000365e <_ZN4core3fmt5write17hc3aadbfba0721466E+0xd0>
1000365a:	|  |  |  |  |  \--|-> 2300      	movs	r3, #0
1000365c:	|  |  |  |  |  /--|-- e003      	b.n	10003666 <_ZN4core3fmt5write17hc3aadbfba0721466E+0xd8>
1000365e:	|  |  |  |  |  |  \-> f851 0030 	ldr.w	r0, [r1, r0, lsl #3]
10003662:	|  |  |  |  |  |      6800      	ldr	r0, [r0, #0]
10003664:	|  |  |  |  \--|----> 2301      	movs	r3, #1
10003666:	|  |  |  |     \----> e9cd 3006 	strd	r3, r0, [sp, #24]
1000366a:	|  |  |  |            6812      	ldr	r2, [r2, #0]
1000366c:	|  |  |  |            f851 0032 	ldr.w	r0, [r1, r2, lsl #3]
10003670:	|  |  |  |            eb01 01c2 	add.w	r1, r1, r2, lsl #3
10003674:	|  |  |  |            684a      	ldr	r2, [r1, #4]
10003676:	|  |  |  |            a902      	add	r1, sp, #8
10003678:	|  |  |  |            4790      	blx	r2
1000367a:	|  |  |  |            2800      	cmp	r0, #0
1000367c:	|  +--|--|----------- d13f      	bne.n	100036fe <_ZN4core3fmt5write17hc3aadbfba0721466E+0x170>
1000367e:	|  |  |  |            3420      	adds	r4, #32
10003680:	|  |  |  |            f108 0808 	add.w	r8, r8, #8
10003684:	|  |  |  |            45a2      	cmp	sl, r4
10003686:	|  |  |  \----------- d1ab      	bne.n	100035e0 <_ZN4core3fmt5write17hc3aadbfba0721466E+0x52>
10003688:	|  |  |               f8dd 9004 	ldr.w	r9, [sp, #4]
1000368c:	|  |  |     /-------- e028      	b.n	100036e0 <_ZN4core3fmt5write17hc3aadbfba0721466E+0x152>
1000368e:	|  |  \-----|-------> f8db 0014 	ldr.w	r0, [fp, #20]
10003692:	+--|--------|-------- b318      	cbz	r0, 100036dc <_ZN4core3fmt5write17hc3aadbfba0721466E+0x14e>
10003694:	|  |        |         f06f 0107 	mvn.w	r1, #7
10003698:	|  |        |         eb01 00c0 	add.w	r0, r1, r0, lsl #3
1000369c:	|  |        |         2101      	movs	r1, #1
1000369e:	|  |        |         f10d 0808 	add.w	r8, sp, #8
100036a2:	|  |        |         eb01 05d0 	add.w	r5, r1, r0, lsr #3
100036a6:	|  |        |         f8db 0000 	ldr.w	r0, [fp]
100036aa:	|  |        |         f8db 1010 	ldr.w	r1, [fp, #16]
100036ae:	|  |        |         1d06      	adds	r6, r0, #4
100036b0:	|  |        |         46a9      	mov	r9, r5
100036b2:	|  |        |         1d0c      	adds	r4, r1, #4
100036b4:	|  |        |  /----> 6832      	ldr	r2, [r6, #0]
100036b6:	|  |        |  |  /-- b132      	cbz	r2, 100036c6 <_ZN4core3fmt5write17hc3aadbfba0721466E+0x138>
100036b8:	|  |        |  |  |   e9dd 0108 	ldrd	r0, r1, [sp, #32]
100036bc:	|  |        |  |  |   68cb      	ldr	r3, [r1, #12]
100036be:	|  |        |  |  |   f856 1c04 	ldr.w	r1, [r6, #-4]
100036c2:	|  |        |  |  |   4798      	blx	r3
100036c4:	|  +--------|--|--|-- b9d8      	cbnz	r0, 100036fe <_ZN4core3fmt5write17hc3aadbfba0721466E+0x170>
100036c6:	|  |        |  |  \-> f854 0c04 	ldr.w	r0, [r4, #-4]
100036ca:	|  |        |  |      4641      	mov	r1, r8
100036cc:	|  |        |  |      6822      	ldr	r2, [r4, #0]
100036ce:	|  |        |  |      4790      	blx	r2
100036d0:	|  +--------|--|----- b9a8      	cbnz	r0, 100036fe <_ZN4core3fmt5write17hc3aadbfba0721466E+0x170>
100036d2:	|  |        |  |      3408      	adds	r4, #8
100036d4:	|  |        |  |      3608      	adds	r6, #8
100036d6:	|  |        |  |      3d01      	subs	r5, #1
100036d8:	|  |        |  \----- d1ec      	bne.n	100036b4 <_ZN4core3fmt5write17hc3aadbfba0721466E+0x126>
100036da:	|  |        +-------- e001      	b.n	100036e0 <_ZN4core3fmt5write17hc3aadbfba0721466E+0x152>
100036dc:	\--|--------|-------> f04f 0900 	mov.w	r9, #0
100036e0:	   |        \-------> e9db 0100 	ldrd	r0, r1, [fp]
100036e4:	   |                  2200      	movs	r2, #0
100036e6:	   |                  4589      	cmp	r9, r1
100036e8:	   |                  bf38      	it	cc
100036ea:	   |                  eb00 02c9 	addcc.w	r2, r0, r9, lsl #3
100036ee:	   |              /-- d20b      	bcs.n	10003708 <_ZN4core3fmt5write17hc3aadbfba0721466E+0x17a>
100036f0:	   |              |   e9dd 0108 	ldrd	r0, r1, [sp, #32]
100036f4:	   |              |   68cb      	ldr	r3, [r1, #12]
100036f6:	   |              |   e9d2 1200 	ldrd	r1, r2, [r2]
100036fa:	   |              |   4798      	blx	r3
100036fc:	   |              +-- b120      	cbz	r0, 10003708 <_ZN4core3fmt5write17hc3aadbfba0721466E+0x17a>
100036fe:	   \--------------|-> 2001      	movs	r0, #1
10003700:	                  |   b00b      	add	sp, #44	; 0x2c
10003702:	                  |   e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
10003706:	                  |   bdf0      	pop	{r4, r5, r6, r7, pc}
10003708:	                  \-> 2000      	movs	r0, #0
1000370a:	                      b00b      	add	sp, #44	; 0x2c
1000370c:	                      e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
10003710:	                      bdf0      	pop	{r4, r5, r6, r7, pc}

10003712 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE>:
10003712:	                               b5f0      	push	{r4, r5, r6, r7, lr}
10003714:	                               af03      	add	r7, sp, #12
10003716:	                               e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
1000371a:	                               b085      	sub	sp, #20
1000371c:	                               f8d7 900c 	ldr.w	r9, [r7, #12]
10003720:	                               469b      	mov	fp, r3
10003722:	                               4682      	mov	sl, r0
10003724:	                     /-------- b1e1      	cbz	r1, 10003760 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x4e>
10003726:	                     |         f8da 0000 	ldr.w	r0, [sl]
1000372a:	                     |         f010 0101 	ands.w	r1, r0, #1
1000372e:	                     |         eb01 0809 	add.w	r8, r1, r9
10003732:	                     |         f04f 012b 	mov.w	r1, #43	; 0x2b
10003736:	                     |         bf08      	it	eq
10003738:	                     |         f44f 1188 	moveq.w	r1, #1114112	; 0x110000
1000373c:	                     |         68bd      	ldr	r5, [r7, #8]
1000373e:	                     |         0743      	lsls	r3, r0, #29
10003740:	                     |  /----- d516      	bpl.n	10003770 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x5e>
10003742:	                     |  |  /-> f1bb 0f00 	cmp.w	fp, #0
10003746:	               /-----|--|--|-- d025      	beq.n	10003794 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x82>
10003748:	               |     |  |  |   f1ab 0301 	sub.w	r3, fp, #1
1000374c:	               |     |  |  |   f00b 0e03 	and.w	lr, fp, #3
10003750:	               |     |  |  |   2b03      	cmp	r3, #3
10003752:	               |  /--|--|--|-- d221      	bcs.n	10003798 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x86>
10003754:	               |  |  |  |  |   2400      	movs	r4, #0
10003756:	               |  |  |  |  |   4613      	mov	r3, r2
10003758:	               |  |  |  |  |   f1be 0f00 	cmp.w	lr, #0
1000375c:	            /--|--|--|--|--|-- d140      	bne.n	100037e0 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0xce>
1000375e:	         /--|--|--|--|--|--|-- e057      	b.n	10003810 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0xfe>
10003760:	         |  |  |  |  \--|--|-> f8da 0000 	ldr.w	r0, [sl]
10003764:	         |  |  |  |     |  |   f109 0801 	add.w	r8, r9, #1
10003768:	         |  |  |  |     |  |   212d      	movs	r1, #45	; 0x2d
1000376a:	         |  |  |  |     |  |   68bd      	ldr	r5, [r7, #8]
1000376c:	         |  |  |  |     |  |   0743      	lsls	r3, r0, #29
1000376e:	         |  |  |  |     |  \-- d4e8      	bmi.n	10003742 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x30>
10003770:	         |  |  |  |     \----> 2200      	movs	r2, #0
10003772:	         |  |  |  |            f04f 0b00 	mov.w	fp, #0
10003776:	         |  |  |  |            f8da 3008 	ldr.w	r3, [sl, #8]
1000377a:	         |  |  |  |            2b01      	cmp	r3, #1
1000377c:	         |  |  |  |  /-------- d04d      	beq.n	1000381a <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x108>
1000377e:	         |  |  |  |  |  /----> 4650      	mov	r0, sl
10003780:	         |  |  |  |  |  |      465b      	mov	r3, fp
10003782:	         |  |  |  |  |  |      f000 f926 	bl	100039d2 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb6783811dbe985b5E>
10003786:	         |  |  |  |  |  |  /-- b108      	cbz	r0, 1000378c <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x7a>
10003788:	         |  |  |  |  |  |  |   2501      	movs	r5, #1
1000378a:	   /-----|--|--|--|--|--|--|-- e084      	b.n	10003896 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x184>
1000378c:	   |     |  |  |  |  |  |  \-> e9da 0106 	ldrd	r0, r1, [sl, #24]
10003790:	   |     |  |  |  |  |  |      464a      	mov	r2, r9
10003792:	   |  /--|--|--|--|--|--|----- e067      	b.n	10003864 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x152>
10003794:	   |  |  |  |  \--|--|--|----> 2400      	movs	r4, #0
10003796:	   |  |  +--|-----|--|--|----- e03b      	b.n	10003810 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0xfe>
10003798:	   |  |  |  |     \--|--|----> f02b 0303 	bic.w	r3, fp, #3
1000379c:	   |  |  |  |        |  |      46ac      	mov	ip, r5
1000379e:	   |  |  |  |        |  |      425d      	negs	r5, r3
100037a0:	   |  |  |  |        |  |      2400      	movs	r4, #0
100037a2:	   |  |  |  |        |  |      4613      	mov	r3, r2
100037a4:	   |  |  |  |        |  |  /-> f913 6b04 	ldrsb.w	r6, [r3], #4
100037a8:	   |  |  |  |        |  |  |   f116 0f41 	cmn.w	r6, #65	; 0x41
100037ac:	   |  |  |  |        |  |  |   bfc8      	it	gt
100037ae:	   |  |  |  |        |  |  |   3401      	addgt	r4, #1
100037b0:	   |  |  |  |        |  |  |   f913 6c03 	ldrsb.w	r6, [r3, #-3]
100037b4:	   |  |  |  |        |  |  |   f116 0f41 	cmn.w	r6, #65	; 0x41
100037b8:	   |  |  |  |        |  |  |   bfc8      	it	gt
100037ba:	   |  |  |  |        |  |  |   3401      	addgt	r4, #1
100037bc:	   |  |  |  |        |  |  |   f913 6c02 	ldrsb.w	r6, [r3, #-2]
100037c0:	   |  |  |  |        |  |  |   f116 0f41 	cmn.w	r6, #65	; 0x41
100037c4:	   |  |  |  |        |  |  |   bfc8      	it	gt
100037c6:	   |  |  |  |        |  |  |   3401      	addgt	r4, #1
100037c8:	   |  |  |  |        |  |  |   f913 6c01 	ldrsb.w	r6, [r3, #-1]
100037cc:	   |  |  |  |        |  |  |   f116 0f41 	cmn.w	r6, #65	; 0x41
100037d0:	   |  |  |  |        |  |  |   bfc8      	it	gt
100037d2:	   |  |  |  |        |  |  |   3401      	addgt	r4, #1
100037d4:	   |  |  |  |        |  |  |   3504      	adds	r5, #4
100037d6:	   |  |  |  |        |  |  \-- d1e5      	bne.n	100037a4 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x92>
100037d8:	   |  |  |  |        |  |      4665      	mov	r5, ip
100037da:	   |  |  |  |        |  |      f1be 0f00 	cmp.w	lr, #0
100037de:	   |  |  +--|--------|--|----- d017      	beq.n	10003810 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0xfe>
100037e0:	   |  |  |  \--------|--|----> f993 6000 	ldrsb.w	r6, [r3]
100037e4:	   |  |  |           |  |      f116 0f41 	cmn.w	r6, #65	; 0x41
100037e8:	   |  |  |           |  |      bfc8      	it	gt
100037ea:	   |  |  |           |  |      3401      	addgt	r4, #1
100037ec:	   |  |  |           |  |      f1be 0f01 	cmp.w	lr, #1
100037f0:	   |  |  +-----------|--|----- d00e      	beq.n	10003810 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0xfe>
100037f2:	   |  |  |           |  |      f993 6001 	ldrsb.w	r6, [r3, #1]
100037f6:	   |  |  |           |  |      f116 0f41 	cmn.w	r6, #65	; 0x41
100037fa:	   |  |  |           |  |      bfc8      	it	gt
100037fc:	   |  |  |           |  |      3401      	addgt	r4, #1
100037fe:	   |  |  |           |  |      f1be 0f02 	cmp.w	lr, #2
10003802:	   |  |  +-----------|--|----- d005      	beq.n	10003810 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0xfe>
10003804:	   |  |  |           |  |      f993 3002 	ldrsb.w	r3, [r3, #2]
10003808:	   |  |  |           |  |      f113 0f41 	cmn.w	r3, #65	; 0x41
1000380c:	   |  |  |           |  |      bfc8      	it	gt
1000380e:	   |  |  |           |  |      3401      	addgt	r4, #1
10003810:	   |  |  \-----------|--|----> 44a0      	add	r8, r4
10003812:	   |  |              |  |      f8da 3008 	ldr.w	r3, [sl, #8]
10003816:	   |  |              |  |      2b01      	cmp	r3, #1
10003818:	   |  |              |  \----- d1b1      	bne.n	1000377e <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x6c>
1000381a:	   |  |              \-------> 464c      	mov	r4, r9
1000381c:	   |  |                        f8da 900c 	ldr.w	r9, [sl, #12]
10003820:	   |  |                        9104      	str	r1, [sp, #16]
10003822:	   |  |                        45c1      	cmp	r9, r8
10003824:	   |  |                    /-- d913      	bls.n	1000384e <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x13c>
10003826:	   |  |                    |   0700      	lsls	r0, r0, #28
10003828:	   |  |                    |   9503      	str	r5, [sp, #12]
1000382a:	   |  |                 /--|-- d423      	bmi.n	10003874 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x162>
1000382c:	   |  |                 |  |   f89a 1020 	ldrb.w	r1, [sl, #32]
10003830:	   |  |                 |  |   eba9 0008 	sub.w	r0, r9, r8
10003834:	   |  |                 |  |   4691      	mov	r9, r2
10003836:	   |  |                 |  |   2903      	cmp	r1, #3
10003838:	   |  |                 |  |   bf08      	it	eq
1000383a:	   |  |                 |  |   2101      	moveq	r1, #1
1000383c:	   |  |                 |  |   078b      	lsls	r3, r1, #30
1000383e:	   |  |                 |  |   9402      	str	r4, [sp, #8]
10003840:	   |  |              /--|--|-- d03f      	beq.n	100038c2 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x1b0>
10003842:	   |  |              |  |  |   2901      	cmp	r1, #1
10003844:	   |  |           /--|--|--|-- d13f      	bne.n	100038c6 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x1b4>
10003846:	   |  |           |  |  |  |   2100      	movs	r1, #0
10003848:	   |  |           |  |  |  |   9101      	str	r1, [sp, #4]
1000384a:	   |  |           |  |  |  |   4601      	mov	r1, r0
1000384c:	   |  |        /--|--|--|--|-- e03f      	b.n	100038ce <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x1bc>
1000384e:	   |  |        |  |  |  |  \-> 9904      	ldr	r1, [sp, #16]
10003850:	   |  |        |  |  |  |      4650      	mov	r0, sl
10003852:	   |  |        |  |  |  |      465b      	mov	r3, fp
10003854:	   |  |        |  |  |  |      f000 f8bd 	bl	100039d2 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb6783811dbe985b5E>
10003858:	   |  |        |  |  |  |      2800      	cmp	r0, #0
1000385a:	/--|--|--------|--|--|--|----- f040 809e 	bne.w	1000399a <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x288>
1000385e:	|  |  |        |  |  |  |      e9da 0106 	ldrd	r0, r1, [sl, #24]
10003862:	|  |  |        |  |  |  |      4622      	mov	r2, r4
10003864:	|  |  \--------|--|--|--|----> 68cb      	ldr	r3, [r1, #12]
10003866:	|  |           |  |  |  |      4629      	mov	r1, r5
10003868:	|  |           |  |  |  |      b005      	add	sp, #20
1000386a:	|  |           |  |  |  |      e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
1000386e:	|  |           |  |  |  |      e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
10003872:	|  |           |  |  |  |      4718      	bx	r3
10003874:	|  |           |  |  |  \----> 2030      	movs	r0, #48	; 0x30
10003876:	|  |           |  |  |         f8da 6004 	ldr.w	r6, [sl, #4]
1000387a:	|  |           |  |  |         f8ca 0004 	str.w	r0, [sl, #4]
1000387e:	|  |           |  |  |         2501      	movs	r5, #1
10003880:	|  |           |  |  |         f89a 0020 	ldrb.w	r0, [sl, #32]
10003884:	|  |           |  |  |         465b      	mov	r3, fp
10003886:	|  |           |  |  |         9001      	str	r0, [sp, #4]
10003888:	|  |           |  |  |         4650      	mov	r0, sl
1000388a:	|  |           |  |  |         9904      	ldr	r1, [sp, #16]
1000388c:	|  |           |  |  |         f88a 5020 	strb.w	r5, [sl, #32]
10003890:	|  |           |  |  |         f000 f89f 	bl	100039d2 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb6783811dbe985b5E>
10003894:	|  |           |  |  |     /-- b120      	cbz	r0, 100038a0 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x18e>
10003896:	|  \-----------|--|--|-----|-> 4628      	mov	r0, r5
10003898:	|              |  |  |     |   b005      	add	sp, #20
1000389a:	|              |  |  |     |   e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
1000389e:	|              |  |  |     |   bdf0      	pop	{r4, r5, r6, r7, pc}
100038a0:	|              |  |  |     \-> f89a 1020 	ldrb.w	r1, [sl, #32]
100038a4:	|              |  |  |         eba9 0008 	sub.w	r0, r9, r8
100038a8:	|              |  |  |         2903      	cmp	r1, #3
100038aa:	|              |  |  |         bf08      	it	eq
100038ac:	|              |  |  |         2101      	moveq	r1, #1
100038ae:	|              |  |  |         078a      	lsls	r2, r1, #30
100038b0:	|              |  |  |         9402      	str	r4, [sp, #8]
100038b2:	|              |  |  |         9600      	str	r6, [sp, #0]
100038b4:	|           /--|--|--|-------- d03f      	beq.n	10003936 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x224>
100038b6:	|           |  |  |  |         2901      	cmp	r1, #1
100038b8:	|        /--|--|--|--|-------- d140      	bne.n	1000393c <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x22a>
100038ba:	|        |  |  |  |  |         f04f 0800 	mov.w	r8, #0
100038be:	|        |  |  |  |  |         4601      	mov	r1, r0
100038c0:	|     /--|--|--|--|--|-------- e040      	b.n	10003944 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x232>
100038c2:	|     |  |  |  |  |  \-------> 2100      	movs	r1, #0
100038c4:	|     |  |  |  |  |        /-- e002      	b.n	100038cc <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x1ba>
100038c6:	|     |  |  |  |  \--------|-> 0841      	lsrs	r1, r0, #1
100038c8:	|     |  |  |  |           |   3001      	adds	r0, #1
100038ca:	|     |  |  |  |           |   0840      	lsrs	r0, r0, #1
100038cc:	|     |  |  |  |           \-> 9001      	str	r0, [sp, #4]
100038ce:	|     |  |  |  \-------------> f8da 5004 	ldr.w	r5, [sl, #4]
100038d2:	|     |  |  |                  1c4e      	adds	r6, r1, #1
100038d4:	|     |  |  |                  e9da 8406 	ldrd	r8, r4, [sl, #24]
100038d8:	|     |  |  |              /-> 3e01      	subs	r6, #1
100038da:	|     |  |  |           /--|-- d006      	beq.n	100038ea <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x1d8>
100038dc:	|     |  |  |           |  |   6922      	ldr	r2, [r4, #16]
100038de:	|     |  |  |           |  |   4640      	mov	r0, r8
100038e0:	|     |  |  |           |  |   4629      	mov	r1, r5
100038e2:	|     |  |  |           |  |   4790      	blx	r2
100038e4:	|     |  |  |           |  |   2800      	cmp	r0, #0
100038e6:	|     |  |  |           |  \-- d0f7      	beq.n	100038d8 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x1c6>
100038e8:	+-----|--|--|-----------|----- e057      	b.n	1000399a <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x288>
100038ea:	|     |  |  |           \----> f5b5 1888 	subs.w	r8, r5, #1114112	; 0x110000
100038ee:	|     |  |  |                  9801      	ldr	r0, [sp, #4]
100038f0:	|     |  |  |                  bf18      	it	ne
100038f2:	|     |  |  |                  4680      	movne	r8, r0
100038f4:	|     |  |  |                  f5b5 1f88 	cmp.w	r5, #1114112	; 0x110000
100038f8:	+-----|--|--|----------------- d04f      	beq.n	1000399a <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x288>
100038fa:	|     |  |  |                  9904      	ldr	r1, [sp, #16]
100038fc:	|     |  |  |                  4650      	mov	r0, sl
100038fe:	|     |  |  |                  464a      	mov	r2, r9
10003900:	|     |  |  |                  465b      	mov	r3, fp
10003902:	|     |  |  |                  f000 f866 	bl	100039d2 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb6783811dbe985b5E>
10003906:	|     |  |  |                  2800      	cmp	r0, #0
10003908:	+-----|--|--|----------------- d147      	bne.n	1000399a <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x288>
1000390a:	|     |  |  |                  e9da 0106 	ldrd	r0, r1, [sl, #24]
1000390e:	|     |  |  |                  68cb      	ldr	r3, [r1, #12]
10003910:	|     |  |  |                  e9dd 2102 	ldrd	r2, r1, [sp, #8]
10003914:	|     |  |  |                  4798      	blx	r3
10003916:	|     |  |  |                  2800      	cmp	r0, #0
10003918:	+-----|--|--|----------------- d13f      	bne.n	1000399a <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x288>
1000391a:	|     |  |  |                  e9da 9606 	ldrd	r9, r6, [sl, #24]
1000391e:	|     |  |  |                  2400      	movs	r4, #0
10003920:	|     |  |  |              /-> 45a0      	cmp	r8, r4
10003922:	|     |  |  |     /--------|-- d04c      	beq.n	100039be <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x2ac>
10003924:	|     |  |  |     |        |   6932      	ldr	r2, [r6, #16]
10003926:	|     |  |  |     |        |   4648      	mov	r0, r9
10003928:	|     |  |  |     |        |   4629      	mov	r1, r5
1000392a:	|     |  |  |     |        |   4790      	blx	r2
1000392c:	|     |  |  |     |        |   3401      	adds	r4, #1
1000392e:	|     |  |  |     |        |   2800      	cmp	r0, #0
10003930:	|     |  |  |     |        \-- d0f6      	beq.n	10003920 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x20e>
10003932:	|     |  |  |     |            1e60      	subs	r0, r4, #1
10003934:	|     |  |  |     |  /-------- e044      	b.n	100039c0 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x2ae>
10003936:	|     |  |  \-----|--|-------> 2100      	movs	r1, #0
10003938:	|     |  |        |  |         4680      	mov	r8, r0
1000393a:	|     +--|--------|--|-------- e003      	b.n	10003944 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x232>
1000393c:	|     |  \--------|--|-------> 0841      	lsrs	r1, r0, #1
1000393e:	|     |           |  |         3001      	adds	r0, #1
10003940:	|     |           |  |         ea4f 0850 	mov.w	r8, r0, lsr #1
10003944:	|     \-----------|--|-------> f8da b004 	ldr.w	fp, [sl, #4]
10003948:	|                 |  |         1c4d      	adds	r5, r1, #1
1000394a:	|                 |  |         e9da 6406 	ldrd	r6, r4, [sl, #24]
1000394e:	|                 |  |     /-> 3d01      	subs	r5, #1
10003950:	|                 |  |  /--|-- d006      	beq.n	10003960 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x24e>
10003952:	|                 |  |  |  |   6922      	ldr	r2, [r4, #16]
10003954:	|                 |  |  |  |   4630      	mov	r0, r6
10003956:	|                 |  |  |  |   4659      	mov	r1, fp
10003958:	|                 |  |  |  |   4790      	blx	r2
1000395a:	|                 |  |  |  |   2800      	cmp	r0, #0
1000395c:	|                 |  |  |  \-- d0f7      	beq.n	1000394e <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x23c>
1000395e:	+-----------------|--|--|----- e01c      	b.n	1000399a <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x288>
10003960:	|                 |  |  \----> f5bb 1988 	subs.w	r9, fp, #1114112	; 0x110000
10003964:	|                 |  |         bf18      	it	ne
10003966:	|                 |  |         46c1      	movne	r9, r8
10003968:	|                 |  |         f5bb 1f88 	cmp.w	fp, #1114112	; 0x110000
1000396c:	+-----------------|--|-------- d015      	beq.n	1000399a <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x288>
1000396e:	|                 |  |         e9da 0106 	ldrd	r0, r1, [sl, #24]
10003972:	|                 |  |         68cb      	ldr	r3, [r1, #12]
10003974:	|                 |  |         e9dd 2102 	ldrd	r2, r1, [sp, #8]
10003978:	|                 |  |         4798      	blx	r3
1000397a:	+-----------------|--|-------- b970      	cbnz	r0, 1000399a <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x288>
1000397c:	|                 |  |         e9da 8406 	ldrd	r8, r4, [sl, #24]
10003980:	|                 |  |         2600      	movs	r6, #0
10003982:	|                 |  |     /-> 45b1      	cmp	r9, r6
10003984:	|                 |  |  /--|-- d00f      	beq.n	100039a6 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x294>
10003986:	|                 |  |  |  |   6922      	ldr	r2, [r4, #16]
10003988:	|                 |  |  |  |   4640      	mov	r0, r8
1000398a:	|                 |  |  |  |   4659      	mov	r1, fp
1000398c:	|                 |  |  |  |   4790      	blx	r2
1000398e:	|                 |  |  |  |   3601      	adds	r6, #1
10003990:	|                 |  |  |  |   2800      	cmp	r0, #0
10003992:	|                 |  |  |  \-- d0f6      	beq.n	10003982 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x270>
10003994:	|                 |  |  |      1e70      	subs	r0, r6, #1
10003996:	|                 |  |  |      4548      	cmp	r0, r9
10003998:	|                 |  |  +----- d205      	bcs.n	100039a6 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE+0x294>
1000399a:	\-----------------|--|--|----> 2501      	movs	r5, #1
1000399c:	                  |  |  |      4628      	mov	r0, r5
1000399e:	                  |  |  |      b005      	add	sp, #20
100039a0:	                  |  |  |      e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
100039a4:	                  |  |  |      bdf0      	pop	{r4, r5, r6, r7, pc}
100039a6:	                  |  |  \----> 9801      	ldr	r0, [sp, #4]
100039a8:	                  |  |         2500      	movs	r5, #0
100039aa:	                  |  |         f88a 0020 	strb.w	r0, [sl, #32]
100039ae:	                  |  |         9800      	ldr	r0, [sp, #0]
100039b0:	                  |  |         f8ca 0004 	str.w	r0, [sl, #4]
100039b4:	                  |  |         4628      	mov	r0, r5
100039b6:	                  |  |         b005      	add	sp, #20
100039b8:	                  |  |         e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
100039bc:	                  |  |         bdf0      	pop	{r4, r5, r6, r7, pc}
100039be:	                  \--|-------> 4640      	mov	r0, r8
100039c0:	                     \-------> 2500      	movs	r5, #0
100039c2:	                               4540      	cmp	r0, r8
100039c4:	                               bf38      	it	cc
100039c6:	                               2501      	movcc	r5, #1
100039c8:	                               4628      	mov	r0, r5
100039ca:	                               b005      	add	sp, #20
100039cc:	                               e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
100039d0:	                               bdf0      	pop	{r4, r5, r6, r7, pc}

100039d2 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb6783811dbe985b5E>:
100039d2:	       b5f0      	push	{r4, r5, r6, r7, lr}
100039d4:	       af03      	add	r7, sp, #12
100039d6:	       f84d bd04 	str.w	fp, [sp, #-4]!
100039da:	       461c      	mov	r4, r3
100039dc:	       4615      	mov	r5, r2
100039de:	       4606      	mov	r6, r0
100039e0:	       f5b1 1f88 	cmp.w	r1, #1114112	; 0x110000
100039e4:	   /-- d008      	beq.n	100039f8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb6783811dbe985b5E+0x26>
100039e6:	   |   e9d6 0206 	ldrd	r0, r2, [r6, #24]
100039ea:	   |   6912      	ldr	r2, [r2, #16]
100039ec:	   |   4790      	blx	r2
100039ee:	   +-- b118      	cbz	r0, 100039f8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb6783811dbe985b5E+0x26>
100039f0:	   |   2001      	movs	r0, #1
100039f2:	   |   f85d bb04 	ldr.w	fp, [sp], #4
100039f6:	   |   bdf0      	pop	{r4, r5, r6, r7, pc}
100039f8:	/--\-X b14d      	cbz	r5, 10003a0e <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb6783811dbe985b5E+0x3c>
100039fa:	|      e9d6 0106 	ldrd	r0, r1, [r6, #24]
100039fe:	|      4622      	mov	r2, r4
10003a00:	|      68cb      	ldr	r3, [r1, #12]
10003a02:	|      4629      	mov	r1, r5
10003a04:	|      f85d bb04 	ldr.w	fp, [sp], #4
10003a08:	|      e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
10003a0c:	|      4718      	bx	r3
10003a0e:	\----> 2000      	movs	r0, #0
10003a10:	       f85d bb04 	ldr.w	fp, [sp], #4
10003a14:	       bdf0      	pop	{r4, r5, r6, r7, pc}

10003a16 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E>:
10003a16:	                                        b5f0      	push	{r4, r5, r6, r7, lr}
10003a18:	                                        af03      	add	r7, sp, #12
10003a1a:	                                        e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
10003a1e:	                                        b081      	sub	sp, #4
10003a20:	                                        4691      	mov	r9, r2
10003a22:	                                        f8d0 c008 	ldr.w	ip, [r0, #8]
10003a26:	                                        6902      	ldr	r2, [r0, #16]
10003a28:	                                        4688      	mov	r8, r1
10003a2a:	                                        f1bc 0f01 	cmp.w	ip, #1
10003a2e:	                                    /-- d10e      	bne.n	10003a4e <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x38>
10003a30:	                                    |   2a01      	cmp	r2, #1
10003a32:	                                 /--|-- d00f      	beq.n	10003a54 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x3e>
10003a34:	                                 |  |   68c1      	ldr	r1, [r0, #12]
10003a36:	                                 |  |   f1b9 0f00 	cmp.w	r9, #0
10003a3a:	                     /-----------|--|-- d036      	beq.n	10003aaa <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x94>
10003a3c:	                     |  /--------|--|-> f1a9 0201 	sub.w	r2, r9, #1
10003a40:	                     |  |        |  |   f009 0303 	and.w	r3, r9, #3
10003a44:	                     |  |        |  |   2a03      	cmp	r2, #3
10003a46:	               /-----|--|--------|--|-- d25f      	bcs.n	10003b08 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0xf2>
10003a48:	               |     |  |        |  |   2200      	movs	r2, #0
10003a4a:	               |     |  |        |  |   4646      	mov	r6, r8
10003a4c:	            /--|-----|--|--------|--|-- e07b      	b.n	10003b46 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x130>
10003a4e:	            |  |     |  |        |  \-> 2a01      	cmp	r2, #1
10003a50:	      /-----|--|-----|--|--------|----- f040 80a0 	bne.w	10003b94 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x17e>
10003a54:	      |     |  |     |  |        \----> 6946      	ldr	r6, [r0, #20]
10003a56:	      |     |  |     |  |               eb08 0309 	add.w	r3, r8, r9
10003a5a:	      |     |  |     |  |               2200      	movs	r2, #0
10003a5c:	      |     |  |     |  |               4644      	mov	r4, r8
10003a5e:	      |     |  |     |  |  /----------- bb66      	cbnz	r6, 10003aba <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0xa4>
10003a60:	      |     |  |     |  |  |  /-------> 429c      	cmp	r4, r3
10003a62:	      |     |  |  /--|--|--|--|-------- d018      	beq.n	10003a96 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x80>
10003a64:	      |     |  |  |  |  |  |  |         7823      	ldrb	r3, [r4, #0]
10003a66:	      |     |  |  |  |  |  |  |         2bf0      	cmp	r3, #240	; 0xf0
10003a68:	      |  /--|--|--|--|--|--|--|-------- f0c0 8098 	bcc.w	10003b9c <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x186>
10003a6c:	      |  |  |  |  |  |  |  |  |         78a6      	ldrb	r6, [r4, #2]
10003a6e:	      |  |  |  |  |  |  |  |  |         f003 0307 	and.w	r3, r3, #7
10003a72:	      |  |  |  |  |  |  |  |  |         7861      	ldrb	r1, [r4, #1]
10003a74:	      |  |  |  |  |  |  |  |  |         f006 063f 	and.w	r6, r6, #63	; 0x3f
10003a78:	      |  |  |  |  |  |  |  |  |         78e5      	ldrb	r5, [r4, #3]
10003a7a:	      |  |  |  |  |  |  |  |  |         f001 013f 	and.w	r1, r1, #63	; 0x3f
10003a7e:	      |  |  |  |  |  |  |  |  |         01b6      	lsls	r6, r6, #6
10003a80:	      |  |  |  |  |  |  |  |  |         ea46 3101 	orr.w	r1, r6, r1, lsl #12
10003a84:	      |  |  |  |  |  |  |  |  |         f005 063f 	and.w	r6, r5, #63	; 0x3f
10003a88:	      |  |  |  |  |  |  |  |  |         4431      	add	r1, r6
10003a8a:	      |  |  |  |  |  |  |  |  |         ea41 4183 	orr.w	r1, r1, r3, lsl #18
10003a8e:	      |  |  |  |  |  |  |  |  |         f5b1 1f88 	cmp.w	r1, #1114112	; 0x110000
10003a92:	      |  +--|--|--|--|--|--|--|-------- f040 8083 	bne.w	10003b9c <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x186>
10003a96:	      |  |  |  |  >--|--|--|--|-------> 464a      	mov	r2, r9
10003a98:	      |  |  |  |  |  |  |  |  |         f1bc 0f01 	cmp.w	ip, #1
10003a9c:	/-----|--|--|--|--|--|--|--|--|-------- f040 80bb 	bne.w	10003c16 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x200>
10003aa0:	|  /--|--|--|--|--|--|--|--|--|-------> 4691      	mov	r9, r2
10003aa2:	|  |  |  |  |  |  |  |  |  |  |         68c1      	ldr	r1, [r0, #12]
10003aa4:	|  |  |  |  |  |  |  |  |  |  |         f1b9 0f00 	cmp.w	r9, #0
10003aa8:	|  |  |  |  |  |  |  |  \--|--|-------- d1c8      	bne.n	10003a3c <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x26>
10003aaa:	|  |  |  |  |  |  |  \-----|--|-------> 2200      	movs	r2, #0
10003aac:	|  |  |  |  |  |  |     /--|--|-------- e062      	b.n	10003b74 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x15e>
10003aae:	|  |  |  |  |  |  |     |  |  |     /-> 1cac      	adds	r4, r5, #2
10003ab0:	|  |  |  |  |  |  |     |  |  |  /--|-> 1b51      	subs	r1, r2, r5
10003ab2:	|  |  |  |  |  |  |     |  |  |  |  |   3e01      	subs	r6, #1
10003ab4:	|  |  |  |  |  |  |     |  |  |  |  |   eb01 0204 	add.w	r2, r1, r4
10003ab8:	|  |  |  |  |  |  |     |  |  \--|--|-- d0d2      	beq.n	10003a60 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x4a>
10003aba:	|  |  |  |  |  |  |     |  \-----|--|-> 429c      	cmp	r4, r3
10003abc:	|  |  |  |  |  |  +-----|--------|--|-- d0eb      	beq.n	10003a96 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x80>
10003abe:	|  |  |  |  |  |  |     |        |  |   4625      	mov	r5, r4
10003ac0:	|  |  |  |  |  |  |     |        |  |   f914 1b01 	ldrsb.w	r1, [r4], #1
10003ac4:	|  |  |  |  |  |  |     |        |  |   f1b1 3fff 	cmp.w	r1, #4294967295
10003ac8:	|  |  |  |  |  |  |     |        +--|-- dcf2      	bgt.n	10003ab0 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x9a>
10003aca:	|  |  |  |  |  |  |     |        |  |   b2cc      	uxtb	r4, r1
10003acc:	|  |  |  |  |  |  |     |        |  |   2ce0      	cmp	r4, #224	; 0xe0
10003ace:	|  |  |  |  |  |  |     |        |  \-- d3ee      	bcc.n	10003aae <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x98>
10003ad0:	|  |  |  |  |  |  |     |        |      2cf0      	cmp	r4, #240	; 0xf0
10003ad2:	|  |  |  |  |  |  |     |        |  /-- d317      	bcc.n	10003b04 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0xee>
10003ad4:	|  |  |  |  |  |  |     |        |  |   7869      	ldrb	r1, [r5, #1]
10003ad6:	|  |  |  |  |  |  |     |        |  |   f004 0407 	and.w	r4, r4, #7
10003ada:	|  |  |  |  |  |  |     |        |  |   f895 e002 	ldrb.w	lr, [r5, #2]
10003ade:	|  |  |  |  |  |  |     |        |  |   f001 0b3f 	and.w	fp, r1, #63	; 0x3f
10003ae2:	|  |  |  |  |  |  |     |        |  |   f895 a003 	ldrb.w	sl, [r5, #3]
10003ae6:	|  |  |  |  |  |  |     |        |  |   f00e 013f 	and.w	r1, lr, #63	; 0x3f
10003aea:	|  |  |  |  |  |  |     |        |  |   0189      	lsls	r1, r1, #6
10003aec:	|  |  |  |  |  |  |     |        |  |   ea41 3e0b 	orr.w	lr, r1, fp, lsl #12
10003af0:	|  |  |  |  |  |  |     |        |  |   f00a 013f 	and.w	r1, sl, #63	; 0x3f
10003af4:	|  |  |  |  |  |  |     |        |  |   4471      	add	r1, lr
10003af6:	|  |  |  |  |  |  |     |        |  |   ea41 4184 	orr.w	r1, r1, r4, lsl #18
10003afa:	|  |  |  |  |  |  |     |        |  |   f5b1 1f88 	cmp.w	r1, #1114112	; 0x110000
10003afe:	|  |  |  |  |  |  \-----|--------|--|-- d0ca      	beq.n	10003a96 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x80>
10003b00:	|  |  |  |  |  |        |        |  |   1d2c      	adds	r4, r5, #4
10003b02:	|  |  |  |  |  |        |        +--|-- e7d5      	b.n	10003ab0 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x9a>
10003b04:	|  |  |  |  |  |        |        |  \-> 1cec      	adds	r4, r5, #3
10003b06:	|  |  |  |  |  |        |        \----- e7d3      	b.n	10003ab0 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x9a>
10003b08:	|  |  |  |  |  \--------|-------------> f029 0203 	bic.w	r2, r9, #3
10003b0c:	|  |  |  |  |           |               4646      	mov	r6, r8
10003b0e:	|  |  |  |  |           |               4255      	negs	r5, r2
10003b10:	|  |  |  |  |           |               2200      	movs	r2, #0
10003b12:	|  |  |  |  |           |           /-> f916 4b04 	ldrsb.w	r4, [r6], #4
10003b16:	|  |  |  |  |           |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003b1a:	|  |  |  |  |           |           |   bfc8      	it	gt
10003b1c:	|  |  |  |  |           |           |   3201      	addgt	r2, #1
10003b1e:	|  |  |  |  |           |           |   f916 4c03 	ldrsb.w	r4, [r6, #-3]
10003b22:	|  |  |  |  |           |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003b26:	|  |  |  |  |           |           |   bfc8      	it	gt
10003b28:	|  |  |  |  |           |           |   3201      	addgt	r2, #1
10003b2a:	|  |  |  |  |           |           |   f916 4c02 	ldrsb.w	r4, [r6, #-2]
10003b2e:	|  |  |  |  |           |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003b32:	|  |  |  |  |           |           |   bfc8      	it	gt
10003b34:	|  |  |  |  |           |           |   3201      	addgt	r2, #1
10003b36:	|  |  |  |  |           |           |   f916 4c01 	ldrsb.w	r4, [r6, #-1]
10003b3a:	|  |  |  |  |           |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003b3e:	|  |  |  |  |           |           |   bfc8      	it	gt
10003b40:	|  |  |  |  |           |           |   3201      	addgt	r2, #1
10003b42:	|  |  |  |  |           |           |   3504      	adds	r5, #4
10003b44:	|  |  |  |  |           |           \-- d1e5      	bne.n	10003b12 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0xfc>
10003b46:	|  |  |  |  \-----------+-------------X b1ab      	cbz	r3, 10003b74 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x15e>
10003b48:	|  |  |  |              |               f996 5000 	ldrsb.w	r5, [r6]
10003b4c:	|  |  |  |              |               f115 0f41 	cmn.w	r5, #65	; 0x41
10003b50:	|  |  |  |              |               bfc8      	it	gt
10003b52:	|  |  |  |              |               3201      	addgt	r2, #1
10003b54:	|  |  |  |              |               2b01      	cmp	r3, #1
10003b56:	|  |  |  |              +-------------- d00d      	beq.n	10003b74 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x15e>
10003b58:	|  |  |  |              |               f996 5001 	ldrsb.w	r5, [r6, #1]
10003b5c:	|  |  |  |              |               f115 0f41 	cmn.w	r5, #65	; 0x41
10003b60:	|  |  |  |              |               bfc8      	it	gt
10003b62:	|  |  |  |              |               3201      	addgt	r2, #1
10003b64:	|  |  |  |              |               2b02      	cmp	r3, #2
10003b66:	|  |  |  |              +-------------- d005      	beq.n	10003b74 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x15e>
10003b68:	|  |  |  |              |               f996 3002 	ldrsb.w	r3, [r6, #2]
10003b6c:	|  |  |  |              |               f113 0f41 	cmn.w	r3, #65	; 0x41
10003b70:	|  |  |  |              |               bfc8      	it	gt
10003b72:	|  |  |  |              |               3201      	addgt	r2, #1
10003b74:	|  |  |  |              \-------------> 4291      	cmp	r1, r2
10003b76:	|  |  +--|----------------------------- d90d      	bls.n	10003b94 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x17e>
10003b78:	|  |  |  |                              f890 6020 	ldrb.w	r6, [r0, #32]
10003b7c:	|  |  |  |                              1a8a      	subs	r2, r1, r2
10003b7e:	|  |  |  |                              1ef3      	subs	r3, r6, #3
10003b80:	|  |  |  |                              bf18      	it	ne
10003b82:	|  |  |  |                              4633      	movne	r3, r6
10003b84:	|  |  |  |                              079e      	lsls	r6, r3, #30
10003b86:	|  |  |  |                          /-- d014      	beq.n	10003bb2 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x19c>
10003b88:	|  |  |  |                          |   2b01      	cmp	r3, #1
10003b8a:	|  |  |  |                       /--|-- d115      	bne.n	10003bb8 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x1a2>
10003b8c:	|  |  |  |                       |  |   f04f 0a00 	mov.w	sl, #0
10003b90:	|  |  |  |                       |  |   4611      	mov	r1, r2
10003b92:	|  |  |  |                    /--|--|-- e015      	b.n	10003bc0 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x1aa>
10003b94:	|  |  \--|--------------------|--|--|-> 6981      	ldr	r1, [r0, #24]
10003b96:	|  |     |                    |  |  |   464a      	mov	r2, r9
10003b98:	|  |     |                    |  |  |   69c0      	ldr	r0, [r0, #28]
10003b9a:	|  |     |     /--------------|--|--|-- e03e      	b.n	10003c1a <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x204>
10003b9c:	|  |     \-----|--/-----------|--|--|-X b392      	cbz	r2, 10003c04 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x1ee>
10003b9e:	|  |           |  |           |  |  |   454a      	cmp	r2, r9
10003ba0:	|  |           |  |  /--------|--|--|-- d22e      	bcs.n	10003c00 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x1ea>
10003ba2:	|  |           |  |  |        |  |  |   f918 1002 	ldrsb.w	r1, [r8, r2]
10003ba6:	|  |           |  |  |        |  |  |   f111 0f40 	cmn.w	r1, #64	; 0x40
10003baa:	|  |           |  +--|--------|--|--|-- da2b      	bge.n	10003c04 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x1ee>
10003bac:	|  |           |  |  |     /--|--|--|-> 2300      	movs	r3, #0
10003bae:	|  |           |  |  |     |  |  |  |   2200      	movs	r2, #0
10003bb0:	|  |           |  |  |  /--|--|--|--|-- e029      	b.n	10003c06 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x1f0>
10003bb2:	|  |           |  |  |  |  |  |  |  \-> 2100      	movs	r1, #0
10003bb4:	|  |           |  |  |  |  |  |  |      4692      	mov	sl, r2
10003bb6:	|  |           |  |  |  |  |  +--|----- e003      	b.n	10003bc0 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x1aa>
10003bb8:	|  |           |  |  |  |  |  |  \----> 0851      	lsrs	r1, r2, #1
10003bba:	|  |           |  |  |  |  |  |         3201      	adds	r2, #1
10003bbc:	|  |           |  |  |  |  |  |         ea4f 0a52 	mov.w	sl, r2, lsr #1
10003bc0:	|  |           |  |  |  |  |  \-------> 6846      	ldr	r6, [r0, #4]
10003bc2:	|  |           |  |  |  |  |            1c4c      	adds	r4, r1, #1
10003bc4:	|  |           |  |  |  |  |            e9d0 b506 	ldrd	fp, r5, [r0, #24]
10003bc8:	|  |           |  |  |  |  |        /-> 3c01      	subs	r4, #1
10003bca:	|  |           |  |  |  |  |     /--|-- d006      	beq.n	10003bda <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x1c4>
10003bcc:	|  |           |  |  |  |  |     |  |   692a      	ldr	r2, [r5, #16]
10003bce:	|  |           |  |  |  |  |     |  |   4658      	mov	r0, fp
10003bd0:	|  |           |  |  |  |  |     |  |   4631      	mov	r1, r6
10003bd2:	|  |           |  |  |  |  |     |  |   4790      	blx	r2
10003bd4:	|  |           |  |  |  |  |     |  |   2800      	cmp	r0, #0
10003bd6:	|  |           |  |  |  |  |     |  \-- d0f7      	beq.n	10003bc8 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x1b2>
10003bd8:	|  |           |  |  |  |  |     |  /-- e00d      	b.n	10003bf6 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x1e0>
10003bda:	|  |           |  |  |  |  |     \--|-> 4650      	mov	r0, sl
10003bdc:	|  |           |  |  |  |  |        |   f5b6 1a88 	subs.w	sl, r6, #1114112	; 0x110000
10003be0:	|  |           |  |  |  |  |        |   bf18      	it	ne
10003be2:	|  |           |  |  |  |  |        |   4682      	movne	sl, r0
10003be4:	|  |           |  |  |  |  |        |   f5b6 1f88 	cmp.w	r6, #1114112	; 0x110000
10003be8:	|  |           |  |  |  |  |        +-- d005      	beq.n	10003bf6 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x1e0>
10003bea:	|  |           |  |  |  |  |        |   68eb      	ldr	r3, [r5, #12]
10003bec:	|  |           |  |  |  |  |        |   4658      	mov	r0, fp
10003bee:	|  |           |  |  |  |  |        |   4641      	mov	r1, r8
10003bf0:	|  |           |  |  |  |  |        |   464a      	mov	r2, r9
10003bf2:	|  |           |  |  |  |  |        |   4798      	blx	r3
10003bf4:	|  |           |  |  |  |  |     /--|-- b1d0      	cbz	r0, 10003c2c <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x216>
10003bf6:	|  |           |  |  |  |  |     |  \-> 2001      	movs	r0, #1
10003bf8:	|  |           |  |  |  |  |     |      b001      	add	sp, #4
10003bfa:	|  |           |  |  |  |  |     |      e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
10003bfe:	|  |           |  |  |  |  |     |      bdf0      	pop	{r4, r5, r6, r7, pc}
10003c00:	|  |           |  |  \--|--|-----|----> 454a      	cmp	r2, r9
10003c02:	|  |           |  |     |  \-----|----- d1d3      	bne.n	10003bac <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x196>
10003c04:	|  |           |  \-----|--------|----> 4643      	mov	r3, r8
10003c06:	|  |           |        \--------|----> 2b00      	cmp	r3, #0
10003c08:	|  |           |                 |      bf0c      	ite	eq
10003c0a:	|  |           |                 |      464a      	moveq	r2, r9
10003c0c:	|  |           |                 |      4698      	movne	r8, r3
10003c0e:	|  |           |                 |      f1bc 0f01 	cmp.w	ip, #1
10003c12:	|  \-----------|-----------------|----- f43f af45 	beq.w	10003aa0 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x8a>
10003c16:	\--------------|-----------------|----> e9d0 1006 	ldrd	r1, r0, [r0, #24]
10003c1a:	               \-----------------|----> 68c3      	ldr	r3, [r0, #12]
10003c1c:	                                 |      4608      	mov	r0, r1
10003c1e:	                                 |      4641      	mov	r1, r8
10003c20:	                                 |      b001      	add	sp, #4
10003c22:	                                 |      e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
10003c26:	                                 |      e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
10003c2a:	                                 |      4718      	bx	r3
10003c2c:	                                 \----> 2400      	movs	r4, #0
10003c2e:	                                    /-> 45a2      	cmp	sl, r4
10003c30:	                                 /--|-- d008      	beq.n	10003c44 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x22e>
10003c32:	                                 |  |   692a      	ldr	r2, [r5, #16]
10003c34:	                                 |  |   4658      	mov	r0, fp
10003c36:	                                 |  |   4631      	mov	r1, r6
10003c38:	                                 |  |   4790      	blx	r2
10003c3a:	                                 |  |   3401      	adds	r4, #1
10003c3c:	                                 |  |   2800      	cmp	r0, #0
10003c3e:	                                 |  \-- d0f6      	beq.n	10003c2e <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x218>
10003c40:	                                 |      1e61      	subs	r1, r4, #1
10003c42:	                                 |  /-- e000      	b.n	10003c46 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x230>
10003c44:	                                 \--|-> 4651      	mov	r1, sl
10003c46:	                                    \-> 2000      	movs	r0, #0
10003c48:	                                        4551      	cmp	r1, sl
10003c4a:	                                        bf38      	it	cc
10003c4c:	                                        2001      	movcc	r0, #1
10003c4e:	                                        b001      	add	sp, #4
10003c50:	                                        e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
10003c54:	                                        bdf0      	pop	{r4, r5, r6, r7, pc}

10003c56 <_ZN4core3fmt9Formatter15debug_lower_hex17h5dcf38f8882c06f6E>:
10003c56:	7800      	ldrb	r0, [r0, #0]
10003c58:	f3c0 1000 	ubfx	r0, r0, #4, #1
10003c5c:	4770      	bx	lr

10003c5e <_ZN4core3fmt9Formatter15debug_upper_hex17hd681e72d6ac94a7bE>:
10003c5e:	7800      	ldrb	r0, [r0, #0]
10003c60:	f3c0 1040 	ubfx	r0, r0, #5, #1
10003c64:	4770      	bx	lr

10003c66 <_ZN4core3fmt9Formatter10debug_list17h6b194937b86a3a4bE>:
10003c66:	b5d0      	push	{r4, r6, r7, lr}
10003c68:	af02      	add	r7, sp, #8
10003c6a:	4604      	mov	r4, r0
10003c6c:	6980      	ldr	r0, [r0, #24]
10003c6e:	69e1      	ldr	r1, [r4, #28]
10003c70:	2201      	movs	r2, #1
10003c72:	68cb      	ldr	r3, [r1, #12]
10003c74:	f245 3135 	movw	r1, #21301	; 0x5335
10003c78:	f2c1 0100 	movt	r1, #4096	; 0x1000
10003c7c:	4798      	blx	r3
10003c7e:	4601      	mov	r1, r0
10003c80:	2800      	cmp	r0, #0
10003c82:	4620      	mov	r0, r4
10003c84:	bf18      	it	ne
10003c86:	2101      	movne	r1, #1
10003c88:	bdd0      	pop	{r4, r6, r7, pc}
10003c8a:	d4d4      	bmi.n	10003c36 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E+0x220>

10003c8c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h141cd27f5fd25118E>:
10003c8c:	                b5f0      	push	{r4, r5, r6, r7, lr}
10003c8e:	                af03      	add	r7, sp, #12
10003c90:	                e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
10003c94:	                b081      	sub	sp, #4
10003c96:	                4605      	mov	r5, r0
10003c98:	                e9d1 a006 	ldrd	sl, r0, [r1, #24]
10003c9c:	                6902      	ldr	r2, [r0, #16]
10003c9e:	                2127      	movs	r1, #39	; 0x27
10003ca0:	                4650      	mov	r0, sl
10003ca2:	                4693      	mov	fp, r2
10003ca4:	                4790      	blx	r2
10003ca6:	            /-- b120      	cbz	r0, 10003cb2 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h141cd27f5fd25118E+0x26>
10003ca8:	/-----------|-> 2001      	movs	r0, #1
10003caa:	|           |   b001      	add	sp, #4
10003cac:	|           |   e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
10003cb0:	|           |   bdf0      	pop	{r4, r5, r6, r7, pc}
10003cb2:	|           \-> f8d5 9000 	ldr.w	r9, [r5]
10003cb6:	|               f1a9 0009 	sub.w	r0, r9, #9
10003cba:	|               281e      	cmp	r0, #30
10003cbc:	|           /-- d815      	bhi.n	10003cea <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h141cd27f5fd25118E+0x5e>
10003cbe:	|           |   2574      	movs	r5, #116	; 0x74
10003cc0:	|           |   2402      	movs	r4, #2
10003cc2:	|           |   e8df f000 	tbb	[pc, r0]
10003cc6:	|           |   102e      	.short	0x102e
10003cc8:	|           |   17211717 	.word	0x17211717
10003ccc:	|           |   17171717 	.word	0x17171717
10003cd0:	|           |   17171717 	.word	0x17171717
10003cd4:	|           |   17171717 	.word	0x17171717
10003cd8:	|           |   17171717 	.word	0x17171717
10003cdc:	|           |   17171717 	.word	0x17171717
10003ce0:	|           |   17171717 	.word	0x17171717
10003ce4:	|           |   0015      	.short	0x0015
10003ce6:	|           |   256e      	movs	r5, #110	; 0x6e
10003ce8:	|     /-----|-- e00f      	b.n	10003d0a <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h141cd27f5fd25118E+0x7e>
10003cea:	|     |     \-> f1b9 0f5c 	cmp.w	r9, #92	; 0x5c
10003cee:	|     |     /-- d101      	bne.n	10003cf4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h141cd27f5fd25118E+0x68>
10003cf0:	|     |     |   2402      	movs	r4, #2
10003cf2:	|  /--|--/--|-X e015      	b.n	10003d20 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h141cd27f5fd25118E+0x94>
10003cf4:	|  |  |  |  \-> 4648      	mov	r0, r9
10003cf6:	|  |  |  |      f000 fec3 	bl	10004a80 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hd7c521688ac6fd2fE>
10003cfa:	|  |  |  |  /-- b940      	cbnz	r0, 10003d0e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h141cd27f5fd25118E+0x82>
10003cfc:	|  |  |  |  |   4648      	mov	r0, r9
10003cfe:	|  |  |  |  |   f000 faff 	bl	10004300 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E>
10003d02:	|  |  |  |  +-- b120      	cbz	r0, 10003d0e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h141cd27f5fd25118E+0x82>
10003d04:	|  |  |  |  |   2401      	movs	r4, #1
10003d06:	|  |  |  \--|-- e7f4      	b.n	10003cf2 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h141cd27f5fd25118E+0x66>
10003d08:	|  |  |     |   2572      	movs	r5, #114	; 0x72
10003d0a:	|  |  \-----|-> 2402      	movs	r4, #2
10003d0c:	|  |     /--|-- e009      	b.n	10003d22 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h141cd27f5fd25118E+0x96>
10003d0e:	|  |     |  \-> f049 0001 	orr.w	r0, r9, #1
10003d12:	|  |     |      2107      	movs	r1, #7
10003d14:	|  |     |      fab0 f080 	clz	r0, r0
10003d18:	|  |     |      2605      	movs	r6, #5
10003d1a:	|  |     |      2403      	movs	r4, #3
10003d1c:	|  |     |      ea81 0890 	eor.w	r8, r1, r0, lsr #2
10003d20:	|  \-----|----> 464d      	mov	r5, r9
10003d22:	|        \----> f04f 0904 	mov.w	r9, #4
10003d26:	|           /-- e004      	b.n	10003d32 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h141cd27f5fd25118E+0xa6>
10003d28:	|        /--|-> 4650      	mov	r0, sl
10003d2a:	|        |  |   47d8      	blx	fp
10003d2c:	|        |  |   2800      	cmp	r0, #0
10003d2e:	\--------|--|-- f47f afbb 	bne.w	10003ca8 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h141cd27f5fd25118E+0x1c>
10003d32:	         |  \-> 4620      	mov	r0, r4
10003d34:	         |      2400      	movs	r4, #0
10003d36:	         |      4629      	mov	r1, r5
10003d38:	         |      e8df f000 	tbb	[pc, r0]
10003d3c:	         |      06020539 	.word	0x06020539
10003d40:	         |      215c      	movs	r1, #92	; 0x5c
10003d42:	         |      2401      	movs	r4, #1
10003d44:	         +----- e7f0      	b.n	10003d28 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h141cd27f5fd25118E+0x9c>
10003d46:	         +----- e7ef      	b.n	10003d28 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h141cd27f5fd25118E+0x9c>
10003d48:	         |      b2f0      	uxtb	r0, r6
10003d4a:	         |      e8df f000 	tbb	[pc, r0]
10003d4e:	         |      0330      	.short	0x0330
10003d50:	         |      26211b08 	.word	0x26211b08
10003d54:	         |      f026 06ff 	bic.w	r6, r6, #255	; 0xff
10003d58:	         |      217d      	movs	r1, #125	; 0x7d
10003d5a:	         |      2403      	movs	r4, #3
10003d5c:	         +----- e7e4      	b.n	10003d28 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h141cd27f5fd25118E+0x9c>
10003d5e:	         |      201c      	movs	r0, #28
10003d60:	         |      2157      	movs	r1, #87	; 0x57
10003d62:	         |      ea00 0088 	and.w	r0, r0, r8, lsl #2
10003d66:	         |      fa25 f000 	lsr.w	r0, r5, r0
10003d6a:	         |      f000 000f 	and.w	r0, r0, #15
10003d6e:	         |      280a      	cmp	r0, #10
10003d70:	         |      bf38      	it	cc
10003d72:	         |      2130      	movcc	r1, #48	; 0x30
10003d74:	         |      4401      	add	r1, r0
10003d76:	         |      f1b8 0f00 	cmp.w	r8, #0
10003d7a:	         |  /-- d013      	beq.n	10003da4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h141cd27f5fd25118E+0x118>
10003d7c:	         |  |   f1a8 0801 	sub.w	r8, r8, #1
10003d80:	         |  |   2403      	movs	r4, #3
10003d82:	         +--|-- e7d1      	b.n	10003d28 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h141cd27f5fd25118E+0x9c>
10003d84:	         |  |   2002      	movs	r0, #2
10003d86:	         |  |   217b      	movs	r1, #123	; 0x7b
10003d88:	         |  |   f360 0607 	bfi	r6, r0, #0, #8
10003d8c:	         |  |   2403      	movs	r4, #3
10003d8e:	         +--|-- e7cb      	b.n	10003d28 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h141cd27f5fd25118E+0x9c>
10003d90:	         |  |   2403      	movs	r4, #3
10003d92:	         |  |   2175      	movs	r1, #117	; 0x75
10003d94:	         |  |   f364 0607 	bfi	r6, r4, #0, #8
10003d98:	         +--|-- e7c6      	b.n	10003d28 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h141cd27f5fd25118E+0x9c>
10003d9a:	         |  |   f369 0607 	bfi	r6, r9, #0, #8
10003d9e:	         |  |   215c      	movs	r1, #92	; 0x5c
10003da0:	         |  |   2403      	movs	r4, #3
10003da2:	         +--|-- e7c1      	b.n	10003d28 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h141cd27f5fd25118E+0x9c>
10003da4:	         |  \-> 2001      	movs	r0, #1
10003da6:	         |      2403      	movs	r4, #3
10003da8:	         |      f360 0607 	bfi	r6, r0, #0, #8
10003dac:	         \----- e7bc      	b.n	10003d28 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h141cd27f5fd25118E+0x9c>
10003dae:	                4650      	mov	r0, sl
10003db0:	                2127      	movs	r1, #39	; 0x27
10003db2:	                465a      	mov	r2, fp
10003db4:	                b001      	add	sp, #4
10003db6:	                e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
10003dba:	                e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
10003dbe:	                4710      	bx	r2

10003dc0 <_ZN4core5slice5index26slice_start_index_len_fail17hcb0f835bd05be412E>:
10003dc0:	b580      	push	{r7, lr}
10003dc2:	466f      	mov	r7, sp
10003dc4:	b08c      	sub	sp, #48	; 0x30
10003dc6:	e9cd 0100 	strd	r0, r1, [sp]
10003dca:	a908      	add	r1, sp, #32
10003dcc:	2002      	movs	r0, #2
10003dce:	9106      	str	r1, [sp, #24]
10003dd0:	2100      	movs	r1, #0
10003dd2:	9007      	str	r0, [sp, #28]
10003dd4:	e9cd 0103 	strd	r0, r1, [sp, #12]
10003dd8:	f245 408c 	movw	r0, #21644	; 0x548c
10003ddc:	f2c1 0000 	movt	r0, #4096	; 0x1000
10003de0:	9105      	str	r1, [sp, #20]
10003de2:	9002      	str	r0, [sp, #8]
10003de4:	f644 1077 	movw	r0, #18807	; 0x4977
10003de8:	a901      	add	r1, sp, #4
10003dea:	f2c1 0000 	movt	r0, #4096	; 0x1000
10003dee:	900b      	str	r0, [sp, #44]	; 0x2c
10003df0:	e9cd 0109 	strd	r0, r1, [sp, #36]	; 0x24
10003df4:	4668      	mov	r0, sp
10003df6:	9008      	str	r0, [sp, #32]
10003df8:	a802      	add	r0, sp, #8
10003dfa:	4611      	mov	r1, r2
10003dfc:	f7ff f86a 	bl	10002ed4 <_ZN4core9panicking9panic_fmt17h2a44677cec48bad9E>
10003e00:	defe      	udf	#254	; 0xfe

10003e02 <_ZN4core5slice5index24slice_end_index_len_fail17h2c7309e0a57eae35E>:
10003e02:	b580      	push	{r7, lr}
10003e04:	466f      	mov	r7, sp
10003e06:	b08c      	sub	sp, #48	; 0x30
10003e08:	e9cd 0100 	strd	r0, r1, [sp]
10003e0c:	a908      	add	r1, sp, #32
10003e0e:	2002      	movs	r0, #2
10003e10:	9106      	str	r1, [sp, #24]
10003e12:	2100      	movs	r1, #0
10003e14:	9007      	str	r0, [sp, #28]
10003e16:	e9cd 0103 	strd	r0, r1, [sp, #12]
10003e1a:	f245 409c 	movw	r0, #21660	; 0x549c
10003e1e:	f2c1 0000 	movt	r0, #4096	; 0x1000
10003e22:	9105      	str	r1, [sp, #20]
10003e24:	9002      	str	r0, [sp, #8]
10003e26:	f644 1077 	movw	r0, #18807	; 0x4977
10003e2a:	a901      	add	r1, sp, #4
10003e2c:	f2c1 0000 	movt	r0, #4096	; 0x1000
10003e30:	900b      	str	r0, [sp, #44]	; 0x2c
10003e32:	e9cd 0109 	strd	r0, r1, [sp, #36]	; 0x24
10003e36:	4668      	mov	r0, sp
10003e38:	9008      	str	r0, [sp, #32]
10003e3a:	a802      	add	r0, sp, #8
10003e3c:	4611      	mov	r1, r2
10003e3e:	f7ff f849 	bl	10002ed4 <_ZN4core9panicking9panic_fmt17h2a44677cec48bad9E>
10003e42:	defe      	udf	#254	; 0xfe

10003e44 <_ZN4core5slice5index22slice_index_order_fail17hc537e0c9a88beaf7E>:
10003e44:	b580      	push	{r7, lr}
10003e46:	466f      	mov	r7, sp
10003e48:	b08c      	sub	sp, #48	; 0x30
10003e4a:	e9cd 0100 	strd	r0, r1, [sp]
10003e4e:	a908      	add	r1, sp, #32
10003e50:	2002      	movs	r0, #2
10003e52:	9106      	str	r1, [sp, #24]
10003e54:	2100      	movs	r1, #0
10003e56:	9007      	str	r0, [sp, #28]
10003e58:	e9cd 0103 	strd	r0, r1, [sp, #12]
10003e5c:	f245 40d0 	movw	r0, #21712	; 0x54d0
10003e60:	f2c1 0000 	movt	r0, #4096	; 0x1000
10003e64:	9105      	str	r1, [sp, #20]
10003e66:	9002      	str	r0, [sp, #8]
10003e68:	f644 1077 	movw	r0, #18807	; 0x4977
10003e6c:	a901      	add	r1, sp, #4
10003e6e:	f2c1 0000 	movt	r0, #4096	; 0x1000
10003e72:	900b      	str	r0, [sp, #44]	; 0x2c
10003e74:	e9cd 0109 	strd	r0, r1, [sp, #36]	; 0x24
10003e78:	4668      	mov	r0, sp
10003e7a:	9008      	str	r0, [sp, #32]
10003e7c:	a802      	add	r0, sp, #8
10003e7e:	4611      	mov	r1, r2
10003e80:	f7ff f828 	bl	10002ed4 <_ZN4core9panicking9panic_fmt17h2a44677cec48bad9E>
10003e84:	defe      	udf	#254	; 0xfe

10003e86 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E>:
10003e86:	/-------------------------------------------------------------------------------------------------------> b580      	push	{r7, lr}
10003e88:	|                                                                                                         466f      	mov	r7, sp
10003e8a:	|                                                                                                         b09c      	sub	sp, #112	; 0x70
10003e8c:	|                                                                                                         f5b1 7f80 	cmp.w	r1, #256	; 0x100
10003e90:	|                                                                                                         e9cd 2302 	strd	r2, r3, [sp, #8]
10003e94:	|                                                                                                     /-- d808      	bhi.n	10003ea8 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x22>
10003e96:	|                                                                                                     |   f245 1478 	movw	r4, #20856	; 0x5178
10003e9a:	|                                                                                                     |   f04f 0e00 	mov.w	lr, #0
10003e9e:	|                                                                                                     |   f2c1 0400 	movt	r4, #4096	; 0x1000
10003ea2:	|                                                                                                     |   e9cd 0104 	strd	r0, r1, [sp, #16]
10003ea6:	|  /--------------------------------------------------------------------------------------------------|-- e131      	b.n	1000410c <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x286>
10003ea8:	|  |                                                                                                  \-> f04f 0c00 	mov.w	ip, #0
10003eac:	|  |                                                                                      /-------------> eb00 0e0c 	add.w	lr, r0, ip
10003eb0:	|  |                                                                                      |               f99e 4100 	ldrsb.w	r4, [lr, #256]	; 0x100
10003eb4:	|  |                                                                                      |               f114 0f41 	cmn.w	r4, #65	; 0x41
10003eb8:	|  |                                                                                      |           /-- f300 80b6 	bgt.w	10004028 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x1a2>
10003ebc:	|  |                                                                                      |           |   f99e 40ff 	ldrsb.w	r4, [lr, #255]	; 0xff
10003ec0:	|  |                                                                                      |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003ec4:	|  |  /-----------------------------------------------------------------------------------|-----------|-- f300 80b3 	bgt.w	1000402e <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x1a8>
10003ec8:	|  |  |                                                                                   |           |   f99e 40fe 	ldrsb.w	r4, [lr, #254]	; 0xfe
10003ecc:	|  |  |                                                                                   |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003ed0:	|  |  |  /--------------------------------------------------------------------------------|-----------|-- f300 80b0 	bgt.w	10004034 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x1ae>
10003ed4:	|  |  |  |                                                                                |           |   f99e 40fd 	ldrsb.w	r4, [lr, #253]	; 0xfd
10003ed8:	|  |  |  |                                                                                |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003edc:	|  |  |  |  /-----------------------------------------------------------------------------|-----------|-- f300 80ad 	bgt.w	1000403a <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x1b4>
10003ee0:	|  |  |  |  |                                                                             |           |   f99e 40fc 	ldrsb.w	r4, [lr, #252]	; 0xfc
10003ee4:	|  |  |  |  |                                                                             |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003ee8:	|  |  |  |  |  /--------------------------------------------------------------------------|-----------|-- f300 80aa 	bgt.w	10004040 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x1ba>
10003eec:	|  |  |  |  |  |                                                                          |           |   f99e 40fb 	ldrsb.w	r4, [lr, #251]	; 0xfb
10003ef0:	|  |  |  |  |  |                                                                          |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003ef4:	|  |  |  |  |  |  /-----------------------------------------------------------------------|-----------|-- f300 80a7 	bgt.w	10004046 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x1c0>
10003ef8:	|  |  |  |  |  |  |                                                                       |           |   f99e 40fa 	ldrsb.w	r4, [lr, #250]	; 0xfa
10003efc:	|  |  |  |  |  |  |                                                                       |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003f00:	|  |  |  |  |  |  |  /--------------------------------------------------------------------|-----------|-- f300 80a4 	bgt.w	1000404c <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x1c6>
10003f04:	|  |  |  |  |  |  |  |                                                                    |           |   f99e 40f9 	ldrsb.w	r4, [lr, #249]	; 0xf9
10003f08:	|  |  |  |  |  |  |  |                                                                    |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003f0c:	|  |  |  |  |  |  |  |  /-----------------------------------------------------------------|-----------|-- f300 80a1 	bgt.w	10004052 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x1cc>
10003f10:	|  |  |  |  |  |  |  |  |                                                                 |           |   f99e 40f8 	ldrsb.w	r4, [lr, #248]	; 0xf8
10003f14:	|  |  |  |  |  |  |  |  |                                                                 |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003f18:	|  |  |  |  |  |  |  |  |  /--------------------------------------------------------------|-----------|-- f300 809e 	bgt.w	10004058 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x1d2>
10003f1c:	|  |  |  |  |  |  |  |  |  |                                                              |           |   f99e 40f7 	ldrsb.w	r4, [lr, #247]	; 0xf7
10003f20:	|  |  |  |  |  |  |  |  |  |                                                              |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003f24:	|  |  |  |  |  |  |  |  |  |  /-----------------------------------------------------------|-----------|-- f300 809b 	bgt.w	1000405e <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x1d8>
10003f28:	|  |  |  |  |  |  |  |  |  |  |                                                           |           |   f99e 40f6 	ldrsb.w	r4, [lr, #246]	; 0xf6
10003f2c:	|  |  |  |  |  |  |  |  |  |  |                                                           |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003f30:	|  |  |  |  |  |  |  |  |  |  |  /--------------------------------------------------------|-----------|-- f300 8098 	bgt.w	10004064 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x1de>
10003f34:	|  |  |  |  |  |  |  |  |  |  |  |                                                        |           |   f99e 40f5 	ldrsb.w	r4, [lr, #245]	; 0xf5
10003f38:	|  |  |  |  |  |  |  |  |  |  |  |                                                        |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003f3c:	|  |  |  |  |  |  |  |  |  |  |  |  /-----------------------------------------------------|-----------|-- f300 8095 	bgt.w	1000406a <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x1e4>
10003f40:	|  |  |  |  |  |  |  |  |  |  |  |  |                                                     |           |   f99e 40f4 	ldrsb.w	r4, [lr, #244]	; 0xf4
10003f44:	|  |  |  |  |  |  |  |  |  |  |  |  |                                                     |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003f48:	|  |  |  |  |  |  |  |  |  |  |  |  |  /--------------------------------------------------|-----------|-- f300 8092 	bgt.w	10004070 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x1ea>
10003f4c:	|  |  |  |  |  |  |  |  |  |  |  |  |  |                                                  |           |   f99e 40f3 	ldrsb.w	r4, [lr, #243]	; 0xf3
10003f50:	|  |  |  |  |  |  |  |  |  |  |  |  |  |                                                  |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003f54:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  /-----------------------------------------------|-----------|-- f300 808f 	bgt.w	10004076 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x1f0>
10003f58:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |                                               |           |   f99e 40f2 	ldrsb.w	r4, [lr, #242]	; 0xf2
10003f5c:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |                                               |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003f60:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  /--------------------------------------------|-----------|-- f300 808c 	bgt.w	1000407c <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x1f6>
10003f64:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |                                            |           |   f99e 40f1 	ldrsb.w	r4, [lr, #241]	; 0xf1
10003f68:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |                                            |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003f6c:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  /-----------------------------------------|-----------|-- f300 8089 	bgt.w	10004082 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x1fc>
10003f70:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |                                         |           |   f99e 40f0 	ldrsb.w	r4, [lr, #240]	; 0xf0
10003f74:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |                                         |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003f78:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  /--------------------------------------|-----------|-- f300 8086 	bgt.w	10004088 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x202>
10003f7c:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |                                      |           |   f99e 40ef 	ldrsb.w	r4, [lr, #239]	; 0xef
10003f80:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |                                      |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003f84:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  /-----------------------------------|-----------|-- f300 8083 	bgt.w	1000408e <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x208>
10003f88:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |                                   |           |   f99e 40ee 	ldrsb.w	r4, [lr, #238]	; 0xee
10003f8c:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |                                   |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003f90:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  /--------------------------------|-----------|-- f300 8080 	bgt.w	10004094 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x20e>
10003f94:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |                                |           |   f99e 40ed 	ldrsb.w	r4, [lr, #237]	; 0xed
10003f98:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |                                |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003f9c:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  /-----------------------------|-----------|-- dc7d      	bgt.n	1000409a <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x214>
10003f9e:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |                             |           |   f99e 40ec 	ldrsb.w	r4, [lr, #236]	; 0xec
10003fa2:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |                             |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003fa6:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  /--------------------------|-----------|-- dc7b      	bgt.n	100040a0 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x21a>
10003fa8:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |                          |           |   f99e 40eb 	ldrsb.w	r4, [lr, #235]	; 0xeb
10003fac:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |                          |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003fb0:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  /-----------------------|-----------|-- dc79      	bgt.n	100040a6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x220>
10003fb2:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |                       |           |   f99e 40ea 	ldrsb.w	r4, [lr, #234]	; 0xea
10003fb6:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |                       |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003fba:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  /--------------------|-----------|-- dc77      	bgt.n	100040ac <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x226>
10003fbc:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |                    |           |   f99e 40e9 	ldrsb.w	r4, [lr, #233]	; 0xe9
10003fc0:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |                    |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003fc4:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  /-----------------|-----------|-- dc75      	bgt.n	100040b2 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x22c>
10003fc6:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |                 |           |   f99e 40e8 	ldrsb.w	r4, [lr, #232]	; 0xe8
10003fca:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |                 |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003fce:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  /--------------|-----------|-- dc73      	bgt.n	100040b8 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x232>
10003fd0:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |              |           |   f99e 40e7 	ldrsb.w	r4, [lr, #231]	; 0xe7
10003fd4:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |              |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003fd8:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  /-----------|-----------|-- dc71      	bgt.n	100040be <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x238>
10003fda:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |           |           |   f99e 40e6 	ldrsb.w	r4, [lr, #230]	; 0xe6
10003fde:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |           |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003fe2:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  /--------|-----------|-- dc6f      	bgt.n	100040c4 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x23e>
10003fe4:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |           |   f99e 40e5 	ldrsb.w	r4, [lr, #229]	; 0xe5
10003fe8:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003fec:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  /-----|-----------|-- dc6d      	bgt.n	100040ca <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x244>
10003fee:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |     |           |   f99e 40e4 	ldrsb.w	r4, [lr, #228]	; 0xe4
10003ff2:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |     |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10003ff6:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  /--|-----------|-- dc6b      	bgt.n	100040d0 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x24a>
10003ff8:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |           |   f99e 40e3 	ldrsb.w	r4, [lr, #227]	; 0xe3
10003ffc:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
10004000:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  /--------|-- dc69      	bgt.n	100040d6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x250>
10004002:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   f99e 40e2 	ldrsb.w	r4, [lr, #226]	; 0xe2
10004006:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |        |   f114 0f41 	cmn.w	r4, #65	; 0x41
1000400a:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  /-----|-- dc67      	bgt.n	100040dc <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x256>
1000400c:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |     |   f99e 40e1 	ldrsb.w	r4, [lr, #225]	; 0xe1
10004010:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |     |   f114 0f41 	cmn.w	r4, #65	; 0x41
10004014:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  /--|-- dc65      	bgt.n	100040e2 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x25c>
10004016:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |   f1ac 0c20 	sub.w	ip, ip, #32
1000401a:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |   f51c 7f80 	cmn.w	ip, #256	; 0x100
1000401e:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  \--|--|--|--|-- f47f af45 	bne.w	10003eac <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x26>
10004022:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |     |  |  |  |   f04f 0e00 	mov.w	lr, #0
10004026:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  /--|--|--|--|-- e069      	b.n	100040fc <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x276>
10004028:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  \-> f50c 7c80 	add.w	ip, ip, #256	; 0x100
1000402c:	|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  /-- e05b      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
1000402e:	|  |  \--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|-> f10c 0cff 	add.w	ip, ip, #255	; 0xff
10004032:	|  |     |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  +-- e058      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
10004034:	|  |     \--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|-> f10c 0cfe 	add.w	ip, ip, #254	; 0xfe
10004038:	|  |        |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  +-- e055      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
1000403a:	|  |        \--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|-> f10c 0cfd 	add.w	ip, ip, #253	; 0xfd
1000403e:	|  |           |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  +-- e052      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
10004040:	|  |           \--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|-> f10c 0cfc 	add.w	ip, ip, #252	; 0xfc
10004044:	|  |              |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  +-- e04f      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
10004046:	|  |              \--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|-> f10c 0cfb 	add.w	ip, ip, #251	; 0xfb
1000404a:	|  |                 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  +-- e04c      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
1000404c:	|  |                 \--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|-> f10c 0cfa 	add.w	ip, ip, #250	; 0xfa
10004050:	|  |                    |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  +-- e049      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
10004052:	|  |                    \--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|-> f10c 0cf9 	add.w	ip, ip, #249	; 0xf9
10004056:	|  |                       |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  +-- e046      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
10004058:	|  |                       \--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|-> f10c 0cf8 	add.w	ip, ip, #248	; 0xf8
1000405c:	|  |                          |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  +-- e043      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
1000405e:	|  |                          \--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|-> f10c 0cf7 	add.w	ip, ip, #247	; 0xf7
10004062:	|  |                             |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  +-- e040      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
10004064:	|  |                             \--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|-> f10c 0cf6 	add.w	ip, ip, #246	; 0xf6
10004068:	|  |                                |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  +-- e03d      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
1000406a:	|  |                                \--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|-> f10c 0cf5 	add.w	ip, ip, #245	; 0xf5
1000406e:	|  |                                   |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  +-- e03a      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
10004070:	|  |                                   \--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|-> f10c 0cf4 	add.w	ip, ip, #244	; 0xf4
10004074:	|  |                                      |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  +-- e037      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
10004076:	|  |                                      \--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|-> f10c 0cf3 	add.w	ip, ip, #243	; 0xf3
1000407a:	|  |                                         |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  +-- e034      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
1000407c:	|  |                                         \--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|-> f10c 0cf2 	add.w	ip, ip, #242	; 0xf2
10004080:	|  |                                            |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  +-- e031      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
10004082:	|  |                                            \--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|-> f10c 0cf1 	add.w	ip, ip, #241	; 0xf1
10004086:	|  |                                               |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  +-- e02e      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
10004088:	|  |                                               \--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|-> f10c 0cf0 	add.w	ip, ip, #240	; 0xf0
1000408c:	|  |                                                  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  +-- e02b      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
1000408e:	|  |                                                  \--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|-> f10c 0cef 	add.w	ip, ip, #239	; 0xef
10004092:	|  |                                                     |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  +-- e028      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
10004094:	|  |                                                     \--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|-> f10c 0cee 	add.w	ip, ip, #238	; 0xee
10004098:	|  |                                                        |  |  |  |  |  |  |  |  |  |  |  |  |  |  +-- e025      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
1000409a:	|  |                                                        \--|--|--|--|--|--|--|--|--|--|--|--|--|--|-> f10c 0ced 	add.w	ip, ip, #237	; 0xed
1000409e:	|  |                                                           |  |  |  |  |  |  |  |  |  |  |  |  |  +-- e022      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
100040a0:	|  |                                                           \--|--|--|--|--|--|--|--|--|--|--|--|--|-> f10c 0cec 	add.w	ip, ip, #236	; 0xec
100040a4:	|  |                                                              |  |  |  |  |  |  |  |  |  |  |  |  +-- e01f      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
100040a6:	|  |                                                              \--|--|--|--|--|--|--|--|--|--|--|--|-> f10c 0ceb 	add.w	ip, ip, #235	; 0xeb
100040aa:	|  |                                                                 |  |  |  |  |  |  |  |  |  |  |  +-- e01c      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
100040ac:	|  |                                                                 \--|--|--|--|--|--|--|--|--|--|--|-> f10c 0cea 	add.w	ip, ip, #234	; 0xea
100040b0:	|  |                                                                    |  |  |  |  |  |  |  |  |  |  +-- e019      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
100040b2:	|  |                                                                    \--|--|--|--|--|--|--|--|--|--|-> f10c 0ce9 	add.w	ip, ip, #233	; 0xe9
100040b6:	|  |                                                                       |  |  |  |  |  |  |  |  |  +-- e016      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
100040b8:	|  |                                                                       \--|--|--|--|--|--|--|--|--|-> f10c 0ce8 	add.w	ip, ip, #232	; 0xe8
100040bc:	|  |                                                                          |  |  |  |  |  |  |  |  +-- e013      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
100040be:	|  |                                                                          \--|--|--|--|--|--|--|--|-> f10c 0ce7 	add.w	ip, ip, #231	; 0xe7
100040c2:	|  |                                                                             |  |  |  |  |  |  |  +-- e010      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
100040c4:	|  |                                                                             \--|--|--|--|--|--|--|-> f10c 0ce6 	add.w	ip, ip, #230	; 0xe6
100040c8:	|  |                                                                                |  |  |  |  |  |  +-- e00d      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
100040ca:	|  |                                                                                \--|--|--|--|--|--|-> f10c 0ce5 	add.w	ip, ip, #229	; 0xe5
100040ce:	|  |                                                                                   |  |  |  |  |  +-- e00a      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
100040d0:	|  |                                                                                   \--|--|--|--|--|-> f10c 0ce4 	add.w	ip, ip, #228	; 0xe4
100040d4:	|  |                                                                                      |  |  |  |  +-- e007      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
100040d6:	|  |                                                                                      |  \--|--|--|-> f10c 0ce3 	add.w	ip, ip, #227	; 0xe3
100040da:	|  |                                                                                      |     |  |  +-- e004      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
100040dc:	|  |                                                                                      |     \--|--|-> f10c 0ce2 	add.w	ip, ip, #226	; 0xe2
100040e0:	|  |                                                                                      |        |  +-- e001      	b.n	100040e6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x260>
100040e2:	|  |                                                                                      |        \--|-> f10c 0ce1 	add.w	ip, ip, #225	; 0xe1
100040e6:	|  |                                                                                      |           \-> 458c      	cmp	ip, r1
100040e8:	|  |                                                                                      |           /-- d206      	bcs.n	100040f8 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x272>
100040ea:	|  |                                                                                      |           |   f910 400c 	ldrsb.w	r4, [r0, ip]
100040ee:	|  |                                                                                      |           |   f114 0f41 	cmn.w	r4, #65	; 0x41
100040f2:	|  |                                                                                      |     /-----|-- dd5e      	ble.n	100041b2 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x32c>
100040f4:	|  |                                                                                      |     |     |   46e6      	mov	lr, ip
100040f6:	|  |                                                                                      +-----|-----|-- e001      	b.n	100040fc <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x276>
100040f8:	|  |                                                                                      |     |     \-> 468e      	mov	lr, r1
100040fa:	|  |                                                                                      |     +-------- d15a      	bne.n	100041b2 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x32c>
100040fc:	|  |                                                                                      \-----|-------> f245 541c 	movw	r4, #21788	; 0x551c
10004100:	|  |                                                                                            |         e9cd 0e04 	strd	r0, lr, [sp, #16]
10004104:	|  |                                                                                            |         f2c1 0400 	movt	r4, #4096	; 0x1000
10004108:	|  |                                                                                            |         f04f 0e05 	mov.w	lr, #5
1000410c:	|  \--------------------------------------------------------------------------------------------|-------> 9406      	str	r4, [sp, #24]
1000410e:	|                                                                                               |         f8d7 c008 	ldr.w	ip, [r7, #8]
10004112:	|                                                                                               |         428a      	cmp	r2, r1
10004114:	|                                                                                               |         f8cd e01c 	str.w	lr, [sp, #28]
10004118:	|                                                                                               |         bf98      	it	ls
1000411a:	|                                                                                               |         428b      	cmpls	r3, r1
1000411c:	|                                                                                               |     /-- d926      	bls.n	1000416c <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x2e6>
1000411e:	|                                                                                               |     |   428a      	cmp	r2, r1
10004120:	|                                                                                               |     |   a912      	add	r1, sp, #72	; 0x48
10004122:	|                                                                                               |     |   bf88      	it	hi
10004124:	|                                                                                               |     |   4613      	movhi	r3, r2
10004126:	|                                                                                               |     |   2003      	movs	r0, #3
10004128:	|                                                                                               |     |   9110      	str	r1, [sp, #64]	; 0x40
1000412a:	|                                                                                               |     |   2100      	movs	r1, #0
1000412c:	|                                                                                               |     |   9011      	str	r0, [sp, #68]	; 0x44
1000412e:	|                                                                                               |     |   e9cd 010d 	strd	r0, r1, [sp, #52]	; 0x34
10004132:	|                                                                                               |     |   f245 5044 	movw	r0, #21828	; 0x5544
10004136:	|                                                                                               |     |   f2c1 0000 	movt	r0, #4096	; 0x1000
1000413a:	|                                                                                               |     |   910f      	str	r1, [sp, #60]	; 0x3c
1000413c:	|                                                                                               |     |   900c      	str	r0, [sp, #48]	; 0x30
1000413e:	|                                                                                               |     |   f644 2075 	movw	r0, #19061	; 0x4a75
10004142:	|                                                                                               |     |   a906      	add	r1, sp, #24
10004144:	|                                                                                               |     |   f2c1 0000 	movt	r0, #4096	; 0x1000
10004148:	|                                                                                               |     |   9017      	str	r0, [sp, #92]	; 0x5c
1000414a:	|                                                                                               |     |   e9cd 0115 	strd	r0, r1, [sp, #84]	; 0x54
1000414e:	|                                                                                               |     |   a804      	add	r0, sp, #16
10004150:	|                                                                                               |     |   9014      	str	r0, [sp, #80]	; 0x50
10004152:	|                                                                                               |     |   f644 1077 	movw	r0, #18807	; 0x4977
10004156:	|                                                                                               |     |   f2c1 0000 	movt	r0, #4096	; 0x1000
1000415a:	|                                                                                               |     |   930a      	str	r3, [sp, #40]	; 0x28
1000415c:	|                                                                                               |     |   9013      	str	r0, [sp, #76]	; 0x4c
1000415e:	|                                                                                               |     |   a80a      	add	r0, sp, #40	; 0x28
10004160:	|                                                                          /--------------------|-----|-> 9012      	str	r0, [sp, #72]	; 0x48
10004162:	|                                                                          |                    |     |   a80c      	add	r0, sp, #48	; 0x30
10004164:	|                                                                          |                    |     |   4661      	mov	r1, ip
10004166:	|                                                                          |                    |     |   f7fe feb5 	bl	10002ed4 <_ZN4core9panicking9panic_fmt17h2a44677cec48bad9E>
1000416a:	|                                                                          |                    |     |   defe      	udf	#254	; 0xfe
1000416c:	|                                                                          |                    |     \-> 429a      	cmp	r2, r3
1000416e:	|                                                                          |                    |  /----- d92a      	bls.n	100041c6 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x340>
10004170:	|                                                                          |                    |  |      a912      	add	r1, sp, #72	; 0x48
10004172:	|                                                                          |                    |  |      2004      	movs	r0, #4
10004174:	|                                                                          |                    |  |      9110      	str	r1, [sp, #64]	; 0x40
10004176:	|                                                                          |                    |  |      2100      	movs	r1, #0
10004178:	|                                                                          |                    |  |      9011      	str	r0, [sp, #68]	; 0x44
1000417a:	|                                                                          |                    |  |      e9cd 010d 	strd	r0, r1, [sp, #52]	; 0x34
1000417e:	|                                                                          |                    |  |      f245 506c 	movw	r0, #21868	; 0x556c
10004182:	|                                                                          |                    |  |      f2c1 0000 	movt	r0, #4096	; 0x1000
10004186:	|                                                                          |                    |  |      910f      	str	r1, [sp, #60]	; 0x3c
10004188:	|                                                                          |                    |  |      900c      	str	r0, [sp, #48]	; 0x30
1000418a:	|                                                                          |                    |  |      f644 2075 	movw	r0, #19061	; 0x4a75
1000418e:	|                                                                          |                    |  |      a906      	add	r1, sp, #24
10004190:	|                                                                          |                    |  |      f2c1 0000 	movt	r0, #4096	; 0x1000
10004194:	|                                                                          |                    |  |      9019      	str	r0, [sp, #100]	; 0x64
10004196:	|                                                                          |                    |  |      e9cd 0117 	strd	r0, r1, [sp, #92]	; 0x5c
1000419a:	|                                                                          |                    |  |      a804      	add	r0, sp, #16
1000419c:	|                                                                          |                    |  |      9016      	str	r0, [sp, #88]	; 0x58
1000419e:	|                                                                          |                    |  |      f644 1077 	movw	r0, #18807	; 0x4977
100041a2:	|                                                                          |                    |  |      a903      	add	r1, sp, #12
100041a4:	|                                                                          |                    |  |      f2c1 0000 	movt	r0, #4096	; 0x1000
100041a8:	|                                                                          |                    |  |      9015      	str	r0, [sp, #84]	; 0x54
100041aa:	|                                                                          |                    |  |      e9cd 0113 	strd	r0, r1, [sp, #76]	; 0x4c
100041ae:	|                                                                          |                    |  |      a802      	add	r0, sp, #8
100041b0:	|                                                                          +--------------------|--|----- e7d6      	b.n	10004160 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x2da>
100041b2:	|                                                                          |                    \--|----> f245 520c 	movw	r2, #21772	; 0x550c
100041b6:	|                                                                          |                       |      4663      	mov	r3, ip
100041b8:	|                                                                          |                       |      f2c1 0200 	movt	r2, #4096	; 0x1000
100041bc:	|                                                                          |                       |      9200      	str	r2, [sp, #0]
100041be:	|                                                                          |                       |      2200      	movs	r2, #0
100041c0:	+--------------------------------------------------------------------------|-----------------------|----- f7ff fe61 	bl	10003e86 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E>
100041c4:	|                                                                          |                       |      defe      	udf	#254	; 0xfe
100041c6:	|                                                                          |                       \--/-X b96a      	cbnz	r2, 100041e4 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x35e>
100041c8:	|                                                                          |                 /--------|-> 9308      	str	r3, [sp, #32]
100041ca:	|                                                                          |           /-----|--------|-- bb2b      	cbnz	r3, 10004218 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x392>
100041cc:	|                                                                          |           |  /--|--------|-> 2300      	movs	r3, #0
100041ce:	|                                                                          |        /--|--|--|--------|-> 428b      	cmp	r3, r1
100041d0:	|                                                                          |        |  |  |  |  /-----|-- d10f      	bne.n	100041f2 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x36c>
100041d2:	|                                                                          |     /--|--|--|--|--|-----|-> f245 10ac 	movw	r0, #20908	; 0x51ac
100041d6:	|                                                                          |     |  |  |  |  |  |     |   212b      	movs	r1, #43	; 0x2b
100041d8:	|                                                                          |     |  |  |  |  |  |     |   f2c1 0000 	movt	r0, #4096	; 0x1000
100041dc:	|                                                                          |     |  |  |  |  |  |     |   4662      	mov	r2, ip
100041de:	|                                                                          |     |  |  |  |  |  |     |   f7fe fe40 	bl	10002e62 <_ZN4core9panicking5panic17h9d087799dbe178ebE>
100041e2:	|                                                                          |     |  |  |  |  |  |     |   defe      	udf	#254	; 0xfe
100041e4:	|                                                                          |     |  |  |  |  |  |     \-> 428a      	cmp	r2, r1
100041e6:	|                                                                          |     |  |  |  |  |  |  /----- d20e      	bcs.n	10004206 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x380>
100041e8:	|                                                                          |     |  |  |  |  |  |  |      5684      	ldrsb	r4, [r0, r2]
100041ea:	|                                                                          |     |  |  |  |  |  |  |      f114 0f41 	cmn.w	r4, #65	; 0x41
100041ee:	|                                                                          |     |  |  |  |  +--|--|----- dceb      	bgt.n	100041c8 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x342>
100041f0:	|                                                                          |     |  |  |  |  |  |  |  /-- e00b      	b.n	1000420a <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x384>
100041f2:	|                                                                          |     |  |  |  |  |  \--|--|-> 4418      	add	r0, r3
100041f4:	|                                                                          |     |  |  |  |  |     |  |   f990 1000 	ldrsb.w	r1, [r0]
100041f8:	|                                                                          |     |  |  |  |  |     |  |   f1b1 3fff 	cmp.w	r1, #4294967295
100041fc:	|                                                                          |     |  |  |  |  |     |  |   b2ca      	uxtb	r2, r1
100041fe:	|                                                                          |     |  |  |  |  |  /--|--|-- dd18      	ble.n	10004232 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x3ac>
10004200:	|                                                                          |     |  |  |  |  |  |  |  |   9209      	str	r2, [sp, #36]	; 0x24
10004202:	|                                                                          |     |  |  |  |  |  |  |  |   2101      	movs	r1, #1
10004204:	|                                                                          |  /--|--|--|--|--|--|--|--|-- e04d      	b.n	100042a2 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x41c>
10004206:	|                                                                          |  |  |  |  |  |  |  |  \--|-> 4291      	cmp	r1, r2
10004208:	|                                                                          |  |  |  |  |  |  \--|-----|-- d0de      	beq.n	100041c8 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x342>
1000420a:	|                                                                          |  |  |  |  |  |     |     \-> 4613      	mov	r3, r2
1000420c:	|                                                                          |  |  |  |  |  |     |         9208      	str	r2, [sp, #32]
1000420e:	|                                                                          |  |  |  |  +--|-----|-------- e003      	b.n	10004218 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x392>
10004210:	|                                                                          |  |  |  |  |  |     |     /-> 4299      	cmp	r1, r3
10004212:	|                                                                          |  |  +--|--|--|-----|-----|-- d0de      	beq.n	100041d2 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x34c>
10004214:	|                                                                          |  |  |  |  |  |     |  /--|-> 3b01      	subs	r3, #1
10004216:	|                                                                          |  |  |  |  |  \-----|--|--|-- d0d9      	beq.n	100041cc <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x346>
10004218:	|                                                                          |  |  |  |  \--------|--|--|-> 428b      	cmp	r3, r1
1000421a:	|                                                                          |  |  |  |           |  |  \-- d2f9      	bcs.n	10004210 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x38a>
1000421c:	|                                                                          |  |  |  |           |  |      56c2      	ldrsb	r2, [r0, r3]
1000421e:	|                                                                          |  |  |  |           |  |      f112 0f40 	cmn.w	r2, #64	; 0x40
10004222:	|                                                                          |  |  |  |           |  \----- dbf7      	blt.n	10004214 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x38e>
10004224:	|                                                                          |  |  |  |           |         428b      	cmp	r3, r1
10004226:	|                                                                          |  |  |  |     /-----|-------- d222      	bcs.n	1000426e <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x3e8>
10004228:	|                                                                          |  |  |  |     |     |         56c2      	ldrsb	r2, [r0, r3]
1000422a:	|                                                                          |  |  |  |     |     |         f112 0f41 	cmn.w	r2, #65	; 0x41
1000422e:	|                                                                          |  |  |  \-----|-----|-------- dcce      	bgt.n	100041ce <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x348>
10004230:	|                                                                          |  |  |        |  /--|-------- e01f      	b.n	10004272 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x3ec>
10004232:	|                                                                          |  |  |        |  |  \-------> 7841      	ldrb	r1, [r0, #1]
10004234:	|                                                                          |  |  |        |  |            f002 0e1f 	and.w	lr, r2, #31
10004238:	|                                                                          |  |  |        |  |            2adf      	cmp	r2, #223	; 0xdf
1000423a:	|                                                                          |  |  |        |  |            f001 013f 	and.w	r1, r1, #63	; 0x3f
1000423e:	|                                                                          |  |  |        |  |     /----- d913      	bls.n	10004268 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x3e2>
10004240:	|                                                                          |  |  |        |  |     |      7884      	ldrb	r4, [r0, #2]
10004242:	|                                                                          |  |  |        |  |     |      2af0      	cmp	r2, #240	; 0xf0
10004244:	|                                                                          |  |  |        |  |     |      f004 043f 	and.w	r4, r4, #63	; 0x3f
10004248:	|                                                                          |  |  |        |  |     |      ea44 1181 	orr.w	r1, r4, r1, lsl #6
1000424c:	|                                                                          |  |  |        |  |  /--|----- d318      	bcc.n	10004280 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x3fa>
1000424e:	|                                                                          |  |  |        |  |  |  |      78c0      	ldrb	r0, [r0, #3]
10004250:	|                                                                          |  |  |        |  |  |  |      f000 003f 	and.w	r0, r0, #63	; 0x3f
10004254:	|                                                                          |  |  |        |  |  |  |      ea40 1081 	orr.w	r0, r0, r1, lsl #6
10004258:	|                                                                          |  |  |        |  |  |  |      f00e 0107 	and.w	r1, lr, #7
1000425c:	|                                                                          |  |  |        |  |  |  |      ea40 4081 	orr.w	r0, r0, r1, lsl #18
10004260:	|                                                                          |  |  |        |  |  |  |      f5b0 1f88 	cmp.w	r0, #1114112	; 0x110000
10004264:	|                                                                          |  |  +--------|--|--|--|----- d0b5      	beq.n	100041d2 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x34c>
10004266:	|                                                                          |  |  |        |  |  |  |  /-- e00d      	b.n	10004284 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x3fe>
10004268:	|                                                                          |  |  |        |  |  |  \--|-> ea41 108e 	orr.w	r0, r1, lr, lsl #6
1000426c:	|                                                                          |  |  |        |  |  |     +-- e00a      	b.n	10004284 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x3fe>
1000426e:	|                                                                          |  |  |        \--|--|-----|-> 4299      	cmp	r1, r3
10004270:	|                                                                          |  |  \-----------|--|-----|-- d0af      	beq.n	100041d2 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x34c>
10004272:	|                                                                          |  |              \--|-----|-> 461a      	mov	r2, r3
10004274:	|                                                                          |  |                 |     |   460b      	mov	r3, r1
10004276:	|                                                                          |  |                 |     |   f8cd c000 	str.w	ip, [sp]
1000427a:	\--------------------------------------------------------------------------|--|-----------------|-----|-- f7ff fe04 	bl	10003e86 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E>
1000427e:	                                                                           |  |                 |     |   defe      	udf	#254	; 0xfe
10004280:	                                                                           |  |                 \-----|-> ea41 300e 	orr.w	r0, r1, lr, lsl #12
10004284:	                                                                           |  |                       \-> 2880      	cmp	r0, #128	; 0x80
10004286:	                                                                           |  |                           9009      	str	r0, [sp, #36]	; 0x24
10004288:	                                                                           |  |                       /-- d201      	bcs.n	1000428e <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x408>
1000428a:	                                                                           |  |                       |   2101      	movs	r1, #1
1000428c:	                                                                           |  +-----------------------|-- e009      	b.n	100042a2 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x41c>
1000428e:	                                                                           |  |                       \-> f5b0 6f00 	cmp.w	r0, #2048	; 0x800
10004292:	                                                                           |  |                       /-- d201      	bcs.n	10004298 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x412>
10004294:	                                                                           |  |                       |   2102      	movs	r1, #2
10004296:	                                                                           |  +-----------------------|-- e004      	b.n	100042a2 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x41c>
10004298:	                                                                           |  |                       \-> 2104      	movs	r1, #4
1000429a:	                                                                           |  |                           f5b0 3f80 	cmp.w	r0, #65536	; 0x10000
1000429e:	                                                                           |  |                           bf38      	it	cc
100042a0:	                                                                           |  |                           2103      	movcc	r1, #3
100042a2:	                                                                           |  \-------------------------> 18c8      	adds	r0, r1, r3
100042a4:	                                                                           |                              a912      	add	r1, sp, #72	; 0x48
100042a6:	                                                                           |                              900b      	str	r0, [sp, #44]	; 0x2c
100042a8:	                                                                           |                              2005      	movs	r0, #5
100042aa:	                                                                           |                              9110      	str	r1, [sp, #64]	; 0x40
100042ac:	                                                                           |                              2100      	movs	r1, #0
100042ae:	                                                                           |                              9011      	str	r0, [sp, #68]	; 0x44
100042b0:	                                                                           |                              e9cd 010d 	strd	r0, r1, [sp, #52]	; 0x34
100042b4:	                                                                           |                              f245 50b8 	movw	r0, #21944	; 0x55b8
100042b8:	                                                                           |                              f2c1 0000 	movt	r0, #4096	; 0x1000
100042bc:	                                                                           |                              910f      	str	r1, [sp, #60]	; 0x3c
100042be:	                                                                           |                              900c      	str	r0, [sp, #48]	; 0x30
100042c0:	                                                                           |                              f644 2075 	movw	r0, #19061	; 0x4a75
100042c4:	                                                                           |                              a906      	add	r1, sp, #24
100042c6:	                                                                           |                              f2c1 0000 	movt	r0, #4096	; 0x1000
100042ca:	                                                                           |                              901b      	str	r0, [sp, #108]	; 0x6c
100042cc:	                                                                           |                              e9cd 0119 	strd	r0, r1, [sp, #100]	; 0x64
100042d0:	                                                                           |                              a804      	add	r0, sp, #16
100042d2:	                                                                           |                              9018      	str	r0, [sp, #96]	; 0x60
100042d4:	                                                                           |                              f642 6001 	movw	r0, #11777	; 0x2e01
100042d8:	                                                                           |                              f2c1 0000 	movt	r0, #4096	; 0x1000
100042dc:	                                                                           |                              930a      	str	r3, [sp, #40]	; 0x28
100042de:	                                                                           |                              9017      	str	r0, [sp, #92]	; 0x5c
100042e0:	                                                                           |                              a80a      	add	r0, sp, #40	; 0x28
100042e2:	                                                                           |                              9016      	str	r0, [sp, #88]	; 0x58
100042e4:	                                                                           |                              f643 408d 	movw	r0, #15501	; 0x3c8d
100042e8:	                                                                           |                              f2c1 0000 	movt	r0, #4096	; 0x1000
100042ec:	                                                                           |                              9015      	str	r0, [sp, #84]	; 0x54
100042ee:	                                                                           |                              a809      	add	r0, sp, #36	; 0x24
100042f0:	                                                                           |                              9014      	str	r0, [sp, #80]	; 0x50
100042f2:	                                                                           |                              f644 1077 	movw	r0, #18807	; 0x4977
100042f6:	                                                                           |                              f2c1 0000 	movt	r0, #4096	; 0x1000
100042fa:	                                                                           |                              9013      	str	r0, [sp, #76]	; 0x4c
100042fc:	                                                                           |                              a808      	add	r0, sp, #32
100042fe:	                                                                           \----------------------------- e72f      	b.n	10004160 <_ZN4core3str16slice_error_fail17h9fdbf2c6a30576a6E+0x2da>

10004300 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E>:
10004300:	                               b5f0      	push	{r4, r5, r6, r7, lr}
10004302:	                               af03      	add	r7, sp, #12
10004304:	                               e92d 0700 	stmdb	sp!, {r8, r9, sl}
10004308:	                               f5b0 3f80 	cmp.w	r0, #65536	; 0x10000
1000430c:	               /-------------- d247      	bcs.n	1000439e <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x9e>
1000430e:	               |               f245 6e28 	movw	lr, #22056	; 0x5628
10004312:	               |               f245 6878 	movw	r8, #22136	; 0x5678
10004316:	               |               f2c1 0e00 	movt	lr, #4096	; 0x1000
1000431a:	               |               f3c0 2c07 	ubfx	ip, r0, #8, #8
1000431e:	               |               b2c2      	uxtb	r2, r0
10004320:	               |               f04f 0900 	mov.w	r9, #0
10004324:	               |               f2c1 0800 	movt	r8, #4096	; 0x1000
10004328:	               |               46f2      	mov	sl, lr
1000432a:	               |  /----------> f81a 1b02 	ldrb.w	r1, [sl], #2
1000432e:	               |  |            464b      	mov	r3, r9
10004330:	               |  |            f81a 6c01 	ldrb.w	r6, [sl, #-1]
10004334:	               |  |            4561      	cmp	r1, ip
10004336:	               |  |            44b1      	add	r9, r6
10004338:	               |  |  /-------- d124      	bne.n	10004384 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x84>
1000433a:	               |  |  |         4599      	cmp	r9, r3
1000433c:	   /-----------|--|--|-------- f0c0 8125 	bcc.w	1000458a <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x28a>
10004340:	   |           |  |  |         f5b9 7f90 	cmp.w	r9, #288	; 0x120
10004344:	/--|-----------|--|--|-------- f200 812a 	bhi.w	1000459c <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x29c>
10004348:	|  |           |  |  |         eb08 0103 	add.w	r1, r8, r3
1000434c:	|  |           |  |  |         198b      	adds	r3, r1, r6
1000434e:	|  |           |  |  |  /--/-X b1d6      	cbz	r6, 10004386 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x86>
10004350:	|  |           |  |  |  |  |   460c      	mov	r4, r1
10004352:	|  |           |  |  |  |  |   f814 5b01 	ldrb.w	r5, [r4], #1
10004356:	|  |           |  |  |  |  |   4295      	cmp	r5, r2
10004358:	|  |     /-----|--|--|--|--|-- d06c      	beq.n	10004434 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x134>
1000435a:	|  |     |     |  |  |  |  |   429c      	cmp	r4, r3
1000435c:	|  |     |     |  |  |  +--|-- d013      	beq.n	10004386 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x86>
1000435e:	|  |     |     |  |  |  |  |   784c      	ldrb	r4, [r1, #1]
10004360:	|  |     |     |  |  |  |  |   4294      	cmp	r4, r2
10004362:	|  |     +-----|--|--|--|--|-- d067      	beq.n	10004434 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x134>
10004364:	|  |     |     |  |  |  |  |   1c8c      	adds	r4, r1, #2
10004366:	|  |     |     |  |  |  |  |   429c      	cmp	r4, r3
10004368:	|  |     |     |  |  |  +--|-- d00d      	beq.n	10004386 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x86>
1000436a:	|  |     |     |  |  |  |  |   788c      	ldrb	r4, [r1, #2]
1000436c:	|  |     |     |  |  |  |  |   4294      	cmp	r4, r2
1000436e:	|  |     +-----|--|--|--|--|-- d061      	beq.n	10004434 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x134>
10004370:	|  |     |     |  |  |  |  |   1ccc      	adds	r4, r1, #3
10004372:	|  |     |     |  |  |  |  |   429c      	cmp	r4, r3
10004374:	|  |     |     |  |  |  +--|-- d007      	beq.n	10004386 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x86>
10004376:	|  |     |     |  |  |  |  |   1d0c      	adds	r4, r1, #4
10004378:	|  |     |     |  |  |  |  |   78c9      	ldrb	r1, [r1, #3]
1000437a:	|  |     |     |  |  |  |  |   3e04      	subs	r6, #4
1000437c:	|  |     |     |  |  |  |  |   4291      	cmp	r1, r2
1000437e:	|  |     |     |  |  |  |  |   4621      	mov	r1, r4
10004380:	|  |     |     |  |  |  |  \-- d1e5      	bne.n	1000434e <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x4e>
10004382:	|  |     +-----|--|--|--|----- e057      	b.n	10004434 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x134>
10004384:	|  |     |     |  |  \--|--/-X d803      	bhi.n	1000438e <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x8e>
10004386:	|  |     |     |  |     \--|-> f10e 0150 	add.w	r1, lr, #80	; 0x50
1000438a:	|  |     |     |  |        |   458a      	cmp	sl, r1
1000438c:	|  |     |     |  \--------|-- d1cd      	bne.n	1000432a <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x2a>
1000438e:	|  |     |     |           \-> f245 7498 	movw	r4, #22424	; 0x5798
10004392:	|  |     |     |               b281      	uxth	r1, r0
10004394:	|  |     |     |               f2c1 0400 	movt	r4, #4096	; 0x1000
10004398:	|  |     |     |               2001      	movs	r0, #1
1000439a:	|  |     |     |               4622      	mov	r2, r4
1000439c:	|  |     |  /--|-------------- e05b      	b.n	10004456 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x156>
1000439e:	|  |     |  |  \-------------> f5b0 3f00 	cmp.w	r0, #131072	; 0x20000
100043a2:	|  |     |  |  /-------------- d26c      	bcs.n	1000447e <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x17e>
100043a4:	|  |     |  |  |               f645 0ec7 	movw	lr, #22727	; 0x58c7
100043a8:	|  |     |  |  |               f645 181b 	movw	r8, #22811	; 0x591b
100043ac:	|  |     |  |  |               f2c1 0e00 	movt	lr, #4096	; 0x1000
100043b0:	|  |     |  |  |               f3c0 2c07 	ubfx	ip, r0, #8, #8
100043b4:	|  |     |  |  |               b2c2      	uxtb	r2, r0
100043b6:	|  |     |  |  |               f04f 0900 	mov.w	r9, #0
100043ba:	|  |     |  |  |               f2c1 0800 	movt	r8, #4096	; 0x1000
100043be:	|  |     |  |  |               46f2      	mov	sl, lr
100043c0:	|  |     |  |  |  /----------> f81a 1b02 	ldrb.w	r1, [sl], #2
100043c4:	|  |     |  |  |  |            464b      	mov	r3, r9
100043c6:	|  |     |  |  |  |            f81a 6c01 	ldrb.w	r6, [sl, #-1]
100043ca:	|  |     |  |  |  |            4561      	cmp	r1, ip
100043cc:	|  |     |  |  |  |            44b1      	add	r9, r6
100043ce:	|  |     |  |  |  |  /-------- d124      	bne.n	1000441a <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x11a>
100043d0:	|  |     |  |  |  |  |         4599      	cmp	r9, r3
100043d2:	|  +-----|--|--|--|--|-------- f0c0 80da 	bcc.w	1000458a <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x28a>
100043d6:	|  |     |  |  |  |  |         f1b9 0fc0 	cmp.w	r9, #192	; 0xc0
100043da:	|  |  /--|--|--|--|--|-------- f200 80e9 	bhi.w	100045b0 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x2b0>
100043de:	|  |  |  |  |  |  |  |         eb08 0103 	add.w	r1, r8, r3
100043e2:	|  |  |  |  |  |  |  |         198b      	adds	r3, r1, r6
100043e4:	|  |  |  |  |  |  |  |  /--/-X b1d6      	cbz	r6, 1000441c <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x11c>
100043e6:	|  |  |  |  |  |  |  |  |  |   460c      	mov	r4, r1
100043e8:	|  |  |  |  |  |  |  |  |  |   f814 5b01 	ldrb.w	r5, [r4], #1
100043ec:	|  |  |  |  |  |  |  |  |  |   4295      	cmp	r5, r2
100043ee:	|  |  |  +--|--|--|--|--|--|-- d021      	beq.n	10004434 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x134>
100043f0:	|  |  |  |  |  |  |  |  |  |   429c      	cmp	r4, r3
100043f2:	|  |  |  |  |  |  |  |  +--|-- d013      	beq.n	1000441c <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x11c>
100043f4:	|  |  |  |  |  |  |  |  |  |   784c      	ldrb	r4, [r1, #1]
100043f6:	|  |  |  |  |  |  |  |  |  |   4294      	cmp	r4, r2
100043f8:	|  |  |  +--|--|--|--|--|--|-- d01c      	beq.n	10004434 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x134>
100043fa:	|  |  |  |  |  |  |  |  |  |   1c8c      	adds	r4, r1, #2
100043fc:	|  |  |  |  |  |  |  |  |  |   429c      	cmp	r4, r3
100043fe:	|  |  |  |  |  |  |  |  +--|-- d00d      	beq.n	1000441c <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x11c>
10004400:	|  |  |  |  |  |  |  |  |  |   788c      	ldrb	r4, [r1, #2]
10004402:	|  |  |  |  |  |  |  |  |  |   4294      	cmp	r4, r2
10004404:	|  |  |  +--|--|--|--|--|--|-- d016      	beq.n	10004434 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x134>
10004406:	|  |  |  |  |  |  |  |  |  |   1ccc      	adds	r4, r1, #3
10004408:	|  |  |  |  |  |  |  |  |  |   429c      	cmp	r4, r3
1000440a:	|  |  |  |  |  |  |  |  +--|-- d007      	beq.n	1000441c <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x11c>
1000440c:	|  |  |  |  |  |  |  |  |  |   1d0c      	adds	r4, r1, #4
1000440e:	|  |  |  |  |  |  |  |  |  |   78c9      	ldrb	r1, [r1, #3]
10004410:	|  |  |  |  |  |  |  |  |  |   3e04      	subs	r6, #4
10004412:	|  |  |  |  |  |  |  |  |  |   4291      	cmp	r1, r2
10004414:	|  |  |  |  |  |  |  |  |  |   4621      	mov	r1, r4
10004416:	|  |  |  |  |  |  |  |  |  \-- d1e5      	bne.n	100043e4 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0xe4>
10004418:	|  |  |  +--|--|--|--|--|----- e00c      	b.n	10004434 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x134>
1000441a:	|  |  |  |  |  |  |  \--|--/-X d803      	bhi.n	10004424 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x124>
1000441c:	|  |  |  |  |  |  |     \--|-> f10e 0154 	add.w	r1, lr, #84	; 0x54
10004420:	|  |  |  |  |  |  |        |   458a      	cmp	sl, r1
10004422:	|  |  |  |  |  |  \--------|-- d1cd      	bne.n	100043c0 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0xc0>
10004424:	|  |  |  |  |  |           \-> f645 14db 	movw	r4, #23003	; 0x59db
10004428:	|  |  |  |  |  |               b281      	uxth	r1, r0
1000442a:	|  |  |  |  |  |               f2c1 0400 	movt	r4, #4096	; 0x1000
1000442e:	|  |  |  |  |  |               2001      	movs	r0, #1
10004430:	|  |  |  |  |  |               4622      	mov	r2, r4
10004432:	|  |  |  |  |  |     /-------- e093      	b.n	1000455c <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x25c>
10004434:	|  |  |  \--|--|-----|-------> 2000      	movs	r0, #0
10004436:	|  |  |     |  |     |         f000 0001 	and.w	r0, r0, #1
1000443a:	|  |  |     |  |     |         e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
1000443e:	|  |  |     |  |     |         bdf0      	pop	{r4, r5, r6, r7, pc}
10004440:	|  |  |     |  |     |     /-> 461a      	mov	r2, r3
10004442:	|  |  |     |  |     |     |   1b89      	subs	r1, r1, r6
10004444:	|  |  |     |  |  /--|-----|-- f100 809c 	bmi.w	10004580 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x280>
10004448:	|  |  |     |  |  |  |  /--|-> f204 132f 	addw	r3, r4, #303	; 0x12f
1000444c:	|  |  |     |  |  |  |  |  |   f080 0001 	eor.w	r0, r0, #1
10004450:	|  |  |     |  |  |  |  |  |   429a      	cmp	r2, r3
10004452:	|  |  |     |  |  +--|--|--|-- f000 8095 	beq.w	10004580 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x280>
10004456:	|  |  |     \--|--|--|--|--|-> 4613      	mov	r3, r2
10004458:	|  |  |        |  |  |  |  |   f813 6b01 	ldrb.w	r6, [r3], #1
1000445c:	|  |  |        |  |  |  |  |   b275      	sxtb	r5, r6
1000445e:	|  |  |        |  |  |  |  |   2d00      	cmp	r5, #0
10004460:	|  |  |        |  |  |  |  \-- d5ee      	bpl.n	10004440 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x140>
10004462:	|  |  |        |  |  |  |      f204 162f 	addw	r6, r4, #303	; 0x12f
10004466:	|  |  |        |  |  |  |      42b3      	cmp	r3, r6
10004468:	|  |  |     /--|--|--|--|----- f000 80ab 	beq.w	100045c2 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x2c2>
1000446c:	|  |  |     |  |  |  |  |      7856      	ldrb	r6, [r2, #1]
1000446e:	|  |  |     |  |  |  |  |      f005 037f 	and.w	r3, r5, #127	; 0x7f
10004472:	|  |  |     |  |  |  |  |      3202      	adds	r2, #2
10004474:	|  |  |     |  |  |  |  |      ea46 2603 	orr.w	r6, r6, r3, lsl #8
10004478:	|  |  |     |  |  |  |  |      1b89      	subs	r1, r1, r6
1000447a:	|  |  |     |  |  |  |  \----- d5e5      	bpl.n	10004448 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x148>
1000447c:	|  |  |     |  |  +--|-------- e080      	b.n	10004580 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x280>
1000447e:	|  |  |     |  \--|--|-------> f64f 71e0 	movw	r1, #65504	; 0xffe0
10004482:	|  |  |     |     |  |         f64b 031e 	movw	r3, #47134	; 0xb81e
10004486:	|  |  |     |     |  |         f2c0 011f 	movt	r1, #31
1000448a:	|  |  |     |     |  |         f101 021e 	add.w	r2, r1, #30
1000448e:	|  |  |     |     |  |         4002      	ands	r2, r0
10004490:	|  |  |     |     |  |         f2c0 0302 	movt	r3, #2
10004494:	|  |  |     |     |  |         1ad2      	subs	r2, r2, r3
10004496:	|  |  |     |     |  |         f24a 63e0 	movw	r3, #42720	; 0xa6e0
1000449a:	|  |  |     |     |  |         ea01 0100 	and.w	r1, r1, r0
1000449e:	|  |  |     |     |  |         f2c0 0302 	movt	r3, #2
100044a2:	|  |  |     |     |  |         bf18      	it	ne
100044a4:	|  |  |     |     |  |         2201      	movne	r2, #1
100044a6:	|  |  |     |     |  |         1acb      	subs	r3, r1, r3
100044a8:	|  |  |     |     |  |         f644 01c7 	movw	r1, #18631	; 0x48c7
100044ac:	|  |  |     |     |  |         bf18      	it	ne
100044ae:	|  |  |     |     |  |         2301      	movne	r3, #1
100044b0:	|  |  |     |     |  |         f6cf 71fd 	movt	r1, #65533	; 0xfffd
100044b4:	|  |  |     |     |  |         1846      	adds	r6, r0, r1
100044b6:	|  |  |     |     |  |         2e06      	cmp	r6, #6
100044b8:	|  |  |     |     |  |         f04f 0600 	mov.w	r6, #0
100044bc:	|  |  |     |     |  |         bf88      	it	hi
100044be:	|  |  |     |     |  |         2601      	movhi	r6, #1
100044c0:	|  |  |     |     |  |         4033      	ands	r3, r6
100044c2:	|  |  |     |     |  |         401a      	ands	r2, r3
100044c4:	|  |  |     |     |  |         f243 135e 	movw	r3, #12638	; 0x315e
100044c8:	|  |  |     |     |  |         f6cf 73fd 	movt	r3, #65533	; 0xfffd
100044cc:	|  |  |     |     |  |         f640 461e 	movw	r6, #3102	; 0xc1e
100044d0:	|  |  |     |     |  |         4403      	add	r3, r0
100044d2:	|  |  |     |     |  |         2100      	movs	r1, #0
100044d4:	|  |  |     |     |  |         2b0d      	cmp	r3, #13
100044d6:	|  |  |     |     |  |         f04f 0300 	mov.w	r3, #0
100044da:	|  |  |     |     |  |         bf88      	it	hi
100044dc:	|  |  |     |     |  |         2301      	movhi	r3, #1
100044de:	|  |  |     |     |  |         401a      	ands	r2, r3
100044e0:	|  |  |     |     |  |         f241 431f 	movw	r3, #5151	; 0x141f
100044e4:	|  |  |     |     |  |         f6cf 73fd 	movt	r3, #65533	; 0xfffd
100044e8:	|  |  |     |     |  |         4403      	add	r3, r0
100044ea:	|  |  |     |     |  |         42b3      	cmp	r3, r6
100044ec:	|  |  |     |     |  |         f04f 0300 	mov.w	r3, #0
100044f0:	|  |  |     |     |  |         bf88      	it	hi
100044f2:	|  |  |     |     |  |         2301      	movhi	r3, #1
100044f4:	|  |  |     |     |  |         401a      	ands	r2, r3
100044f6:	|  |  |     |     |  |         f240 53e2 	movw	r3, #1506	; 0x5e2
100044fa:	|  |  |     |     |  |         f240 56e1 	movw	r6, #1505	; 0x5e1
100044fe:	|  |  |     |     |  |         f6cf 73fd 	movt	r3, #65533	; 0xfffd
10004502:	|  |  |     |     |  |         4403      	add	r3, r0
10004504:	|  |  |     |     |  |         42b3      	cmp	r3, r6
10004506:	|  |  |     |     |  |         f04f 0300 	mov.w	r3, #0
1000450a:	|  |  |     |     |  |         bf88      	it	hi
1000450c:	|  |  |     |     |  |         2301      	movhi	r3, #1
1000450e:	|  |  |     |     |  |         401a      	ands	r2, r3
10004510:	|  |  |     |     |  |         f64e 43b5 	movw	r3, #60597	; 0xecb5
10004514:	|  |  |     |     |  |         f64e 56b4 	movw	r6, #60852	; 0xedb4
10004518:	|  |  |     |     |  |         f6cf 73fc 	movt	r3, #65532	; 0xfffc
1000451c:	|  |  |     |     |  |         f2c0 060a 	movt	r6, #10
10004520:	|  |  |     |     |  |         4403      	add	r3, r0
10004522:	|  |  |     |     |  |         42b3      	cmp	r3, r6
10004524:	|  |  |     |     |  |         f04f 0300 	mov.w	r3, #0
10004528:	|  |  |     |     |  |         bf88      	it	hi
1000452a:	|  |  |     |     |  |         2301      	movhi	r3, #1
1000452c:	|  |  |     |     |  |         401a      	ands	r2, r3
1000452e:	|  |  |     |     |  |         f240 13f0 	movw	r3, #496	; 0x1f0
10004532:	|  |  |     |     |  |         f2c0 030e 	movt	r3, #14
10004536:	|  |  |     |     |  |         4298      	cmp	r0, r3
10004538:	|  |  |     |     |  |         bf38      	it	cc
1000453a:	|  |  |     |     |  |         2101      	movcc	r1, #1
1000453c:	|  |  |     |     |  |         ea02 0001 	and.w	r0, r2, r1
10004540:	|  |  |     |     |  |         f000 0001 	and.w	r0, r0, #1
10004544:	|  |  |     |     |  |         e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
10004548:	|  |  |     |     |  |         bdf0      	pop	{r4, r5, r6, r7, pc}
1000454a:	|  |  |     |     |  |     /-> 461a      	mov	r2, r3
1000454c:	|  |  |     |     |  |     |   1b89      	subs	r1, r1, r6
1000454e:	|  |  |     |     +--|-----|-- d417      	bmi.n	10004580 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x280>
10004550:	|  |  |     |     |  |  /--|-> f504 73db 	add.w	r3, r4, #438	; 0x1b6
10004554:	|  |  |     |     |  |  |  |   f080 0001 	eor.w	r0, r0, #1
10004558:	|  |  |     |     |  |  |  |   429a      	cmp	r2, r3
1000455a:	|  |  |     |     +--|--|--|-- d011      	beq.n	10004580 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x280>
1000455c:	|  |  |     |     |  \--|--|-> 4613      	mov	r3, r2
1000455e:	|  |  |     |     |     |  |   f813 6b01 	ldrb.w	r6, [r3], #1
10004562:	|  |  |     |     |     |  |   b275      	sxtb	r5, r6
10004564:	|  |  |     |     |     |  |   2d00      	cmp	r5, #0
10004566:	|  |  |     |     |     |  \-- d5f0      	bpl.n	1000454a <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x24a>
10004568:	|  |  |     |     |     |      f504 76db 	add.w	r6, r4, #438	; 0x1b6
1000456c:	|  |  |     |     |     |      42b3      	cmp	r3, r6
1000456e:	|  |  |     +-----|-----|----- d028      	beq.n	100045c2 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x2c2>
10004570:	|  |  |     |     |     |      7856      	ldrb	r6, [r2, #1]
10004572:	|  |  |     |     |     |      f005 037f 	and.w	r3, r5, #127	; 0x7f
10004576:	|  |  |     |     |     |      3202      	adds	r2, #2
10004578:	|  |  |     |     |     |      ea46 2603 	orr.w	r6, r6, r3, lsl #8
1000457c:	|  |  |     |     |     |      1b89      	subs	r1, r1, r6
1000457e:	|  |  |     |     |     \----- d5e7      	bpl.n	10004550 <_ZN4core7unicode9printable12is_printable17ha56fa94d0e9004a3E+0x250>
10004580:	|  |  |     |     \----------> f000 0001 	and.w	r0, r0, #1
10004584:	|  |  |     |                  e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
10004588:	|  |  |     |                  bdf0      	pop	{r4, r5, r6, r7, pc}
1000458a:	|  \--|-----|----------------> f245 6208 	movw	r2, #22024	; 0x5608
1000458e:	|     |     |                  4618      	mov	r0, r3
10004590:	|     |     |                  f2c1 0200 	movt	r2, #4096	; 0x1000
10004594:	|     |     |                  4649      	mov	r1, r9
10004596:	|     |     |                  f7ff fc55 	bl	10003e44 <_ZN4core5slice5index22slice_index_order_fail17hc537e0c9a88beaf7E>
1000459a:	|     |     |                  defe      	udf	#254	; 0xfe
1000459c:	\-----|-----|----------------> f245 6208 	movw	r2, #22024	; 0x5608
100045a0:	      |     |                  4648      	mov	r0, r9
100045a2:	      |     |                  f2c1 0200 	movt	r2, #4096	; 0x1000
100045a6:	      |     |                  f44f 7190 	mov.w	r1, #288	; 0x120
100045aa:	      |     |                  f7ff fc2a 	bl	10003e02 <_ZN4core5slice5index24slice_end_index_len_fail17h2c7309e0a57eae35E>
100045ae:	      |     |                  defe      	udf	#254	; 0xfe
100045b0:	      \-----|----------------> f245 6208 	movw	r2, #22024	; 0x5608
100045b4:	            |                  4648      	mov	r0, r9
100045b6:	            |                  f2c1 0200 	movt	r2, #4096	; 0x1000
100045ba:	            |                  21c0      	movs	r1, #192	; 0xc0
100045bc:	            |                  f7ff fc21 	bl	10003e02 <_ZN4core5slice5index24slice_end_index_len_fail17h2c7309e0a57eae35E>
100045c0:	            |                  defe      	udf	#254	; 0xfe
100045c2:	            \----------------> f245 10ac 	movw	r0, #20908	; 0x51ac
100045c6:	                               f245 6218 	movw	r2, #22040	; 0x5618
100045ca:	                               f2c1 0000 	movt	r0, #4096	; 0x1000
100045ce:	                               f2c1 0200 	movt	r2, #4096	; 0x1000
100045d2:	                               212b      	movs	r1, #43	; 0x2b
100045d4:	                               f7fe fc45 	bl	10002e62 <_ZN4core9panicking5panic17h9d087799dbe178ebE>
100045d8:	                               defe      	udf	#254	; 0xfe

100045da <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17hd2ff1f8ade8e7948E>:
100045da:	b580      	push	{r7, lr}
100045dc:	466f      	mov	r7, sp
100045de:	b0a2      	sub	sp, #136	; 0x88
100045e0:	7800      	ldrb	r0, [r0, #0]
100045e2:	468c      	mov	ip, r1
100045e4:	2157      	movs	r1, #87	; 0x57
100045e6:	2357      	movs	r3, #87	; 0x57
100045e8:	f000 020f 	and.w	r2, r0, #15
100045ec:	2a0a      	cmp	r2, #10
100045ee:	bf38      	it	cc
100045f0:	2130      	movcc	r1, #48	; 0x30
100045f2:	4411      	add	r1, r2
100045f4:	f88d 1087 	strb.w	r1, [sp, #135]	; 0x87
100045f8:	28a0      	cmp	r0, #160	; 0xa0
100045fa:	bf38      	it	cc
100045fc:	2330      	movcc	r3, #48	; 0x30
100045fe:	f89d 1086 	ldrb.w	r1, [sp, #134]	; 0x86
10004602:	2810      	cmp	r0, #16
10004604:	bf28      	it	cs
10004606:	eb03 1110 	addcs.w	r1, r3, r0, lsr #4
1000460a:	f88d 1086 	strb.w	r1, [sp, #134]	; 0x86
1000460e:	f04f 0102 	mov.w	r1, #2
10004612:	f04f 027e 	mov.w	r2, #126	; 0x7e
10004616:	bf38      	it	cc
10004618:	2101      	movcc	r1, #1
1000461a:	2810      	cmp	r0, #16
1000461c:	bf38      	it	cc
1000461e:	227f      	movcc	r2, #127	; 0x7f
10004620:	a802      	add	r0, sp, #8
10004622:	4410      	add	r0, r2
10004624:	f245 3264 	movw	r2, #21348	; 0x5364
10004628:	e9cd 0100 	strd	r0, r1, [sp]
1000462c:	f2c1 0200 	movt	r2, #4096	; 0x1000
10004630:	4660      	mov	r0, ip
10004632:	2101      	movs	r1, #1
10004634:	2302      	movs	r3, #2
10004636:	f7ff f86c 	bl	10003712 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE>
1000463a:	b022      	add	sp, #136	; 0x88
1000463c:	bd80      	pop	{r7, pc}

1000463e <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h4f5608d4d72e09adE>:
1000463e:	b580      	push	{r7, lr}
10004640:	466f      	mov	r7, sp
10004642:	b0a2      	sub	sp, #136	; 0x88
10004644:	7800      	ldrb	r0, [r0, #0]
10004646:	468c      	mov	ip, r1
10004648:	2137      	movs	r1, #55	; 0x37
1000464a:	2337      	movs	r3, #55	; 0x37
1000464c:	f000 020f 	and.w	r2, r0, #15
10004650:	2a0a      	cmp	r2, #10
10004652:	bf38      	it	cc
10004654:	2130      	movcc	r1, #48	; 0x30
10004656:	4411      	add	r1, r2
10004658:	f88d 1087 	strb.w	r1, [sp, #135]	; 0x87
1000465c:	28a0      	cmp	r0, #160	; 0xa0
1000465e:	bf38      	it	cc
10004660:	2330      	movcc	r3, #48	; 0x30
10004662:	f89d 1086 	ldrb.w	r1, [sp, #134]	; 0x86
10004666:	2810      	cmp	r0, #16
10004668:	bf28      	it	cs
1000466a:	eb03 1110 	addcs.w	r1, r3, r0, lsr #4
1000466e:	f88d 1086 	strb.w	r1, [sp, #134]	; 0x86
10004672:	f04f 0102 	mov.w	r1, #2
10004676:	f04f 027e 	mov.w	r2, #126	; 0x7e
1000467a:	bf38      	it	cc
1000467c:	2101      	movcc	r1, #1
1000467e:	2810      	cmp	r0, #16
10004680:	bf38      	it	cc
10004682:	227f      	movcc	r2, #127	; 0x7f
10004684:	a802      	add	r0, sp, #8
10004686:	4410      	add	r0, r2
10004688:	f245 3264 	movw	r2, #21348	; 0x5364
1000468c:	e9cd 0100 	strd	r0, r1, [sp]
10004690:	f2c1 0200 	movt	r2, #4096	; 0x1000
10004694:	4660      	mov	r0, ip
10004696:	2101      	movs	r1, #1
10004698:	2302      	movs	r3, #2
1000469a:	f7ff f83a 	bl	10003712 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE>
1000469e:	b022      	add	sp, #136	; 0x88
100046a0:	bd80      	pop	{r7, pc}

100046a2 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E>:
100046a2:	                                              b5f0      	push	{r4, r5, r6, r7, lr}
100046a4:	                                              af03      	add	r7, sp, #12
100046a6:	                                              e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
100046aa:	                                              b0a3      	sub	sp, #140	; 0x8c
100046ac:	                                              680a      	ldr	r2, [r1, #0]
100046ae:	                                              468e      	mov	lr, r1
100046b0:	                                              06d3      	lsls	r3, r2, #27
100046b2:	                                       /----- d454      	bmi.n	1000475e <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0xbc>
100046b4:	                                       |      0692      	lsls	r2, r2, #26
100046b6:	                                    /--|----- f100 8088 	bmi.w	100047ca <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0x128>
100046ba:	                                    |  |      6804      	ldr	r4, [r0, #0]
100046bc:	                                    |  |      f242 7110 	movw	r1, #10000	; 0x2710
100046c0:	                                    |  |      428c      	cmp	r4, r1
100046c2:	/-----------------------------------|--|----- f0c0 80be 	bcc.w	10004842 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0x1a0>
100046c6:	|                                   |  |      f241 7859 	movw	r8, #5977	; 0x1759
100046ca:	|                                   |  |      f24e 0bff 	movw	fp, #57599	; 0xe0ff
100046ce:	|                                   |  |      f8cd e008 	str.w	lr, [sp, #8]
100046d2:	|                                   |  |      f245 3e66 	movw	lr, #21350	; 0x5366
100046d6:	|                                   |  |      2300      	movs	r3, #0
100046d8:	|                                   |  |      f2cd 18b7 	movt	r8, #53687	; 0xd1b7
100046dc:	|                                   |  |      f241 497b 	movw	r9, #5243	; 0x147b
100046e0:	|                                   |  |      f2c1 0e00 	movt	lr, #4096	; 0x1000
100046e4:	|                                   |  |      f04f 0a64 	mov.w	sl, #100	; 0x64
100046e8:	|                                   |  |      f2c0 5bf5 	movt	fp, #1525	; 0x5f5
100046ec:	|                                   |  |  /-> a803      	add	r0, sp, #12
100046ee:	|                                   |  |  |   455c      	cmp	r4, fp
100046f0:	|                                   |  |  |   eb00 0603 	add.w	r6, r0, r3
100046f4:	|                                   |  |  |   fba4 0208 	umull	r0, r2, r4, r8
100046f8:	|                                   |  |  |   f1a3 0304 	sub.w	r3, r3, #4
100046fc:	|                                   |  |  |   ea4f 3052 	mov.w	r0, r2, lsr #13
10004700:	|                                   |  |  |   fb00 4211 	mls	r2, r0, r1, r4
10004704:	|                                   |  |  |   4604      	mov	r4, r0
10004706:	|                                   |  |  |   fa1f fc82 	uxth.w	ip, r2
1000470a:	|                                   |  |  |   ea4f 019c 	mov.w	r1, ip, lsr #2
1000470e:	|                                   |  |  |   fb01 f109 	mul.w	r1, r1, r9
10004712:	|                                   |  |  |   ea4f 4151 	mov.w	r1, r1, lsr #17
10004716:	|                                   |  |  |   f83e 5011 	ldrh.w	r5, [lr, r1, lsl #1]
1000471a:	|                                   |  |  |   fb01 211a 	mls	r1, r1, sl, r2
1000471e:	|                                   |  |  |   f8a6 5023 	strh.w	r5, [r6, #35]	; 0x23
10004722:	|                                   |  |  |   b289      	uxth	r1, r1
10004724:	|                                   |  |  |   f83e 1011 	ldrh.w	r1, [lr, r1, lsl #1]
10004728:	|                                   |  |  |   f8a6 1025 	strh.w	r1, [r6, #37]	; 0x25
1000472c:	|                                   |  |  |   f242 7110 	movw	r1, #10000	; 0x2710
10004730:	|                                   |  |  \-- d8dc      	bhi.n	100046ec <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0x4a>
10004732:	|                                   |  |      f8dd e008 	ldr.w	lr, [sp, #8]
10004736:	|                                   |  |      f103 0227 	add.w	r2, r3, #39	; 0x27
1000473a:	|                                   |  |      4604      	mov	r4, r0
1000473c:	|                                   |  |      2c63      	cmp	r4, #99	; 0x63
1000473e:	|           /-----------------------|--|----- f300 8084 	bgt.w	1000484a <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0x1a8>
10004742:	|           |  /--------------------|--|----> 4623      	mov	r3, r4
10004744:	|           |  |                    |  |      2b0a      	cmp	r3, #10
10004746:	|  /--------|--|--------------------|--|----- f2c0 8096 	blt.w	10004876 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0x1d4>
1000474a:	|  |  /-----|--|--------------------|--|----> f245 3066 	movw	r0, #21350	; 0x5366
1000474e:	|  |  |     |  |                    |  |      f2c1 0000 	movt	r0, #4096	; 0x1000
10004752:	|  |  |     |  |                    |  |      f830 1013 	ldrh.w	r1, [r0, r3, lsl #1]
10004756:	|  |  |     |  |                    |  |      1e90      	subs	r0, r2, #2
10004758:	|  |  |     |  |                    |  |      aa03      	add	r2, sp, #12
1000475a:	|  |  |     |  |                    |  |      5211      	strh	r1, [r2, r0]
1000475c:	|  |  |  /--|--|--------------------|--|----- e090      	b.n	10004880 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0x1de>
1000475e:	|  |  |  |  |  |                    |  \----> 6800      	ldr	r0, [r0, #0]
10004760:	|  |  |  |  |  |                    |         f10d 0c0c 	add.w	ip, sp, #12
10004764:	|  |  |  |  |  |                    |         2281      	movs	r2, #129	; 0x81
10004766:	|  |  |  |  |  |                    |     /-> f000 060f 	and.w	r6, r0, #15
1000476a:	|  |  |  |  |  |                    |     |   eb0c 0302 	add.w	r3, ip, r2
1000476e:	|  |  |  |  |  |                    |     |   2557      	movs	r5, #87	; 0x57
10004770:	|  |  |  |  |  |                    |     |   2e0a      	cmp	r6, #10
10004772:	|  |  |  |  |  |                    |     |   bf38      	it	cc
10004774:	|  |  |  |  |  |                    |     |   2530      	movcc	r5, #48	; 0x30
10004776:	|  |  |  |  |  |                    |     |   442e      	add	r6, r5
10004778:	|  |  |  |  |  |                    |     |   f803 6c02 	strb.w	r6, [r3, #-2]
1000477c:	|  |  |  |  |  |                    |     |   0906      	lsrs	r6, r0, #4
1000477e:	|  |  |  |  |  |              /-----|-----|-- d05a      	beq.n	10004836 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0x194>
10004780:	|  |  |  |  |  |              |     |     |   f006 010f 	and.w	r1, r6, #15
10004784:	|  |  |  |  |  |              |     |     |   2657      	movs	r6, #87	; 0x57
10004786:	|  |  |  |  |  |              |     |     |   290a      	cmp	r1, #10
10004788:	|  |  |  |  |  |              |     |     |   bf38      	it	cc
1000478a:	|  |  |  |  |  |              |     |     |   2630      	movcc	r6, #48	; 0x30
1000478c:	|  |  |  |  |  |              |     |     |   4431      	add	r1, r6
1000478e:	|  |  |  |  |  |              |     |     |   0a06      	lsrs	r6, r0, #8
10004790:	|  |  |  |  |  |              |     |     |   f803 1c03 	strb.w	r1, [r3, #-3]
10004794:	|  |  |  |  |  |              |     |  /--|-- d052      	beq.n	1000483c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0x19a>
10004796:	|  |  |  |  |  |              |     |  |  |   f006 010f 	and.w	r1, r6, #15
1000479a:	|  |  |  |  |  |              |     |  |  |   2657      	movs	r6, #87	; 0x57
1000479c:	|  |  |  |  |  |              |     |  |  |   290a      	cmp	r1, #10
1000479e:	|  |  |  |  |  |              |     |  |  |   bf38      	it	cc
100047a0:	|  |  |  |  |  |              |     |  |  |   2630      	movcc	r6, #48	; 0x30
100047a2:	|  |  |  |  |  |              |     |  |  |   4431      	add	r1, r6
100047a4:	|  |  |  |  |  |              |     |  |  |   0b06      	lsrs	r6, r0, #12
100047a6:	|  |  |  |  |  |              |     |  |  |   f803 1c04 	strb.w	r1, [r3, #-4]
100047aa:	|  |  |  |  |  |  /-----------|-----|--|--|-- d07c      	beq.n	100048a6 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0x204>
100047ac:	|  |  |  |  |  |  |           |     |  |  |   f006 010f 	and.w	r1, r6, #15
100047b0:	|  |  |  |  |  |  |           |     |  |  |   2657      	movs	r6, #87	; 0x57
100047b2:	|  |  |  |  |  |  |           |     |  |  |   290a      	cmp	r1, #10
100047b4:	|  |  |  |  |  |  |           |     |  |  |   f1a2 0204 	sub.w	r2, r2, #4
100047b8:	|  |  |  |  |  |  |           |     |  |  |   bf38      	it	cc
100047ba:	|  |  |  |  |  |  |           |     |  |  |   2630      	movcc	r6, #48	; 0x30
100047bc:	|  |  |  |  |  |  |           |     |  |  |   0c00      	lsrs	r0, r0, #16
100047be:	|  |  |  |  |  |  |           |     |  |  |   4431      	add	r1, r6
100047c0:	|  |  |  |  |  |  |           |     |  |  |   f803 1c05 	strb.w	r1, [r3, #-5]
100047c4:	|  |  |  |  |  |  |           |     |  |  \-- d1cf      	bne.n	10004766 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0xc4>
100047c6:	|  |  |  |  |  |  |           |     |  |      1e50      	subs	r0, r2, #1
100047c8:	|  |  |  |  |  |  |  /--------|-----|--|----- e06f      	b.n	100048aa <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0x208>
100047ca:	|  |  |  |  |  |  |  |        |     \--|----> 6800      	ldr	r0, [r0, #0]
100047cc:	|  |  |  |  |  |  |  |        |        |      f10d 0c0c 	add.w	ip, sp, #12
100047d0:	|  |  |  |  |  |  |  |        |        |      2281      	movs	r2, #129	; 0x81
100047d2:	|  |  |  |  |  |  |  |        |        |  /-> f000 010f 	and.w	r1, r0, #15
100047d6:	|  |  |  |  |  |  |  |        |        |  |   2637      	movs	r6, #55	; 0x37
100047d8:	|  |  |  |  |  |  |  |        |        |  |   290a      	cmp	r1, #10
100047da:	|  |  |  |  |  |  |  |        |        |  |   bf38      	it	cc
100047dc:	|  |  |  |  |  |  |  |        |        |  |   2630      	movcc	r6, #48	; 0x30
100047de:	|  |  |  |  |  |  |  |        |        |  |   eb0c 0302 	add.w	r3, ip, r2
100047e2:	|  |  |  |  |  |  |  |        |        |  |   4431      	add	r1, r6
100047e4:	|  |  |  |  |  |  |  |        |        |  |   0906      	lsrs	r6, r0, #4
100047e6:	|  |  |  |  |  |  |  |        |        |  |   f803 1c02 	strb.w	r1, [r3, #-2]
100047ea:	|  |  |  |  |  |  |  |  /-----|--------|--|-- d066      	beq.n	100048ba <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0x218>
100047ec:	|  |  |  |  |  |  |  |  |     |        |  |   f006 010f 	and.w	r1, r6, #15
100047f0:	|  |  |  |  |  |  |  |  |     |        |  |   2637      	movs	r6, #55	; 0x37
100047f2:	|  |  |  |  |  |  |  |  |     |        |  |   290a      	cmp	r1, #10
100047f4:	|  |  |  |  |  |  |  |  |     |        |  |   bf38      	it	cc
100047f6:	|  |  |  |  |  |  |  |  |     |        |  |   2630      	movcc	r6, #48	; 0x30
100047f8:	|  |  |  |  |  |  |  |  |     |        |  |   4431      	add	r1, r6
100047fa:	|  |  |  |  |  |  |  |  |     |        |  |   0a06      	lsrs	r6, r0, #8
100047fc:	|  |  |  |  |  |  |  |  |     |        |  |   f803 1c03 	strb.w	r1, [r3, #-3]
10004800:	|  |  |  |  |  |  |  |  |  /--|--------|--|-- d05e      	beq.n	100048c0 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0x21e>
10004802:	|  |  |  |  |  |  |  |  |  |  |        |  |   f006 010f 	and.w	r1, r6, #15
10004806:	|  |  |  |  |  |  |  |  |  |  |        |  |   2637      	movs	r6, #55	; 0x37
10004808:	|  |  |  |  |  |  |  |  |  |  |        |  |   290a      	cmp	r1, #10
1000480a:	|  |  |  |  |  |  |  |  |  |  |        |  |   bf38      	it	cc
1000480c:	|  |  |  |  |  |  |  |  |  |  |        |  |   2630      	movcc	r6, #48	; 0x30
1000480e:	|  |  |  |  |  |  |  |  |  |  |        |  |   4431      	add	r1, r6
10004810:	|  |  |  |  |  |  |  |  |  |  |        |  |   0b06      	lsrs	r6, r0, #12
10004812:	|  |  |  |  |  |  |  |  |  |  |        |  |   f803 1c04 	strb.w	r1, [r3, #-4]
10004816:	|  |  |  |  |  |  |  |  |  |  |  /-----|--|-- d056      	beq.n	100048c6 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0x224>
10004818:	|  |  |  |  |  |  |  |  |  |  |  |     |  |   f006 010f 	and.w	r1, r6, #15
1000481c:	|  |  |  |  |  |  |  |  |  |  |  |     |  |   2637      	movs	r6, #55	; 0x37
1000481e:	|  |  |  |  |  |  |  |  |  |  |  |     |  |   290a      	cmp	r1, #10
10004820:	|  |  |  |  |  |  |  |  |  |  |  |     |  |   f1a2 0204 	sub.w	r2, r2, #4
10004824:	|  |  |  |  |  |  |  |  |  |  |  |     |  |   bf38      	it	cc
10004826:	|  |  |  |  |  |  |  |  |  |  |  |     |  |   2630      	movcc	r6, #48	; 0x30
10004828:	|  |  |  |  |  |  |  |  |  |  |  |     |  |   0c00      	lsrs	r0, r0, #16
1000482a:	|  |  |  |  |  |  |  |  |  |  |  |     |  |   4431      	add	r1, r6
1000482c:	|  |  |  |  |  |  |  |  |  |  |  |     |  |   f803 1c05 	strb.w	r1, [r3, #-5]
10004830:	|  |  |  |  |  |  |  |  |  |  |  |     |  \-- d1cf      	bne.n	100047d2 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0x130>
10004832:	|  |  |  |  |  |  |  |  |  |  |  |     |      1e50      	subs	r0, r2, #1
10004834:	|  |  |  |  |  |  |  |  |  |  |  |  /--|----- e049      	b.n	100048ca <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0x228>
10004836:	|  |  |  |  |  |  |  |  |  |  \--|--|--|----> 1e90      	subs	r0, r2, #2
10004838:	|  |  |  |  |  |  |  |  |  |     |  |  |      3a01      	subs	r2, #1
1000483a:	|  |  |  |  |  |  |  +--|--|-----|--|--|----- e036      	b.n	100048aa <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0x208>
1000483c:	|  |  |  |  |  |  |  |  |  |     |  |  \----> 1ed0      	subs	r0, r2, #3
1000483e:	|  |  |  |  |  |  |  |  |  |     |  |         3a02      	subs	r2, #2
10004840:	|  |  |  |  |  |  |  +--|--|-----|--|-------- e033      	b.n	100048aa <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0x208>
10004842:	\--|--|--|--|--|--|--|--|--|-----|--|-------> 2227      	movs	r2, #39	; 0x27
10004844:	   |  |  |  |  |  |  |  |  |     |  |         2c63      	cmp	r4, #99	; 0x63
10004846:	   |  |  |  |  \--|--|--|--|-----|--|-------- f77f af7c 	ble.w	10004742 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0xa0>
1000484a:	   |  |  |  \-----|--|--|--|-----|--|-------> b2a0      	uxth	r0, r4
1000484c:	   |  |  |        |  |  |  |     |  |         f241 417b 	movw	r1, #5243	; 0x147b
10004850:	   |  |  |        |  |  |  |     |  |         0880      	lsrs	r0, r0, #2
10004852:	   |  |  |        |  |  |  |     |  |         3a02      	subs	r2, #2
10004854:	   |  |  |        |  |  |  |     |  |         4348      	muls	r0, r1
10004856:	   |  |  |        |  |  |  |     |  |         f245 3166 	movw	r1, #21350	; 0x5366
1000485a:	   |  |  |        |  |  |  |     |  |         f2c1 0100 	movt	r1, #4096	; 0x1000
1000485e:	   |  |  |        |  |  |  |     |  |         0c43      	lsrs	r3, r0, #17
10004860:	   |  |  |        |  |  |  |     |  |         2064      	movs	r0, #100	; 0x64
10004862:	   |  |  |        |  |  |  |     |  |         fb03 4010 	mls	r0, r3, r0, r4
10004866:	   |  |  |        |  |  |  |     |  |         b280      	uxth	r0, r0
10004868:	   |  |  |        |  |  |  |     |  |         f831 0010 	ldrh.w	r0, [r1, r0, lsl #1]
1000486c:	   |  |  |        |  |  |  |     |  |         a903      	add	r1, sp, #12
1000486e:	   |  |  |        |  |  |  |     |  |         5288      	strh	r0, [r1, r2]
10004870:	   |  |  |        |  |  |  |     |  |         2b0a      	cmp	r3, #10
10004872:	   |  \--|--------|--|--|--|-----|--|-------- f6bf af6a 	bge.w	1000474a <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0xa8>
10004876:	   \-----|--------|--|--|--|-----|--|-------> 1e50      	subs	r0, r2, #1
10004878:	         |        |  |  |  |     |  |         aa03      	add	r2, sp, #12
1000487a:	         |        |  |  |  |     |  |         f103 0130 	add.w	r1, r3, #48	; 0x30
1000487e:	         |        |  |  |  |     |  |         5411      	strb	r1, [r2, r0]
10004880:	         \--------|--|--|--|-----|--|-------> f1c0 0127 	rsb	r1, r0, #39	; 0x27
10004884:	                  |  |  |  |     |  |         aa03      	add	r2, sp, #12
10004886:	                  |  |  |  |     |  |         4410      	add	r0, r2
10004888:	                  |  |  |  |     |  |         f245 1278 	movw	r2, #20856	; 0x5178
1000488c:	                  |  |  |  |     |  |         e9cd 0100 	strd	r0, r1, [sp]
10004890:	                  |  |  |  |     |  |         f2c1 0200 	movt	r2, #4096	; 0x1000
10004894:	                  |  |  |  |     |  |         4670      	mov	r0, lr
10004896:	                  |  |  |  |     |  |         2101      	movs	r1, #1
10004898:	                  |  |  |  |     |  |         2300      	movs	r3, #0
1000489a:	                  |  |  |  |     |  |         f7fe ff3a 	bl	10003712 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE>
1000489e:	                  |  |  |  |     |  |         b023      	add	sp, #140	; 0x8c
100048a0:	                  |  |  |  |     |  |         e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
100048a4:	                  |  |  |  |     |  |         bdf0      	pop	{r4, r5, r6, r7, pc}
100048a6:	                  \--|--|--|-----|--|-------> 1f10      	subs	r0, r2, #4
100048a8:	                     |  |  |     |  |         3a03      	subs	r2, #3
100048aa:	                     \--|--|-----|--|-------> 2881      	cmp	r0, #129	; 0x81
100048ac:	                        |  |     |  |  /----- d221      	bcs.n	100048f2 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0x250>
100048ae:	                        |  |     |  |  |      f1c2 0281 	rsb	r2, r2, #129	; 0x81
100048b2:	                        |  |     |  |  |      4460      	add	r0, ip
100048b4:	                        |  |     |  |  |      e9cd 0200 	strd	r0, r2, [sp]
100048b8:	                        |  |     |  |  |  /-- e00e      	b.n	100048d8 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0x236>
100048ba:	                        \--|-----|--|--|--|-> 1e90      	subs	r0, r2, #2
100048bc:	                           |     |  |  |  |   3a01      	subs	r2, #1
100048be:	                           |     |  +--|--|-- e004      	b.n	100048ca <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0x228>
100048c0:	                           \-----|--|--|--|-> 1ed0      	subs	r0, r2, #3
100048c2:	                                 |  |  |  |   3a02      	subs	r2, #2
100048c4:	                                 |  +--|--|-- e001      	b.n	100048ca <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0x228>
100048c6:	                                 \--|--|--|-> 1f10      	subs	r0, r2, #4
100048c8:	                                    |  |  |   3a03      	subs	r2, #3
100048ca:	                                    \--|--|-> 2881      	cmp	r0, #129	; 0x81
100048cc:	                                       +--|-- d211      	bcs.n	100048f2 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hc46fbecddb918fc0E+0x250>
100048ce:	                                       |  |   f1c2 0181 	rsb	r1, r2, #129	; 0x81
100048d2:	                                       |  |   4460      	add	r0, ip
100048d4:	                                       |  |   e9cd 0100 	strd	r0, r1, [sp]
100048d8:	                                       |  \-> f245 3264 	movw	r2, #21348	; 0x5364
100048dc:	                                       |      4670      	mov	r0, lr
100048de:	                                       |      f2c1 0200 	movt	r2, #4096	; 0x1000
100048e2:	                                       |      2101      	movs	r1, #1
100048e4:	                                       |      2302      	movs	r3, #2
100048e6:	                                       |      f7fe ff14 	bl	10003712 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE>
100048ea:	                                       |      b023      	add	sp, #140	; 0x8c
100048ec:	                                       |      e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
100048f0:	                                       |      bdf0      	pop	{r4, r5, r6, r7, pc}
100048f2:	                                       \----> f245 3254 	movw	r2, #21332	; 0x5354
100048f6:	                                              2180      	movs	r1, #128	; 0x80
100048f8:	                                              f2c1 0200 	movt	r2, #4096	; 0x1000
100048fc:	                                              f7ff fa60 	bl	10003dc0 <_ZN4core5slice5index26slice_start_index_len_fail17hcb0f835bd05be412E>
10004900:	                                              defe      	udf	#254	; 0xfe

10004902 <_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17hb97f478befa85bdeE>:
10004902:	       b580      	push	{r7, lr}
10004904:	       466f      	mov	r7, sp
10004906:	       b08c      	sub	sp, #48	; 0x30
10004908:	       7802      	ldrb	r2, [r0, #0]
1000490a:	       2a63      	cmp	r2, #99	; 0x63
1000490c:	/----- d912      	bls.n	10004934 <_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17hb97f478befa85bdeE+0x32>
1000490e:	|      b2d0      	uxtb	r0, r2
10004910:	|      2329      	movs	r3, #41	; 0x29
10004912:	|      4358      	muls	r0, r3
10004914:	|      0b03      	lsrs	r3, r0, #12
10004916:	|      2064      	movs	r0, #100	; 0x64
10004918:	|      fb03 2010 	mls	r0, r3, r0, r2
1000491c:	|      f245 3266 	movw	r2, #21350	; 0x5366
10004920:	|      f2c1 0200 	movt	r2, #4096	; 0x1000
10004924:	|      b2c0      	uxtb	r0, r0
10004926:	|      f832 0010 	ldrh.w	r0, [r2, r0, lsl #1]
1000492a:	|      461a      	mov	r2, r3
1000492c:	|      f8ad 002d 	strh.w	r0, [sp, #45]	; 0x2d
10004930:	|      2024      	movs	r0, #36	; 0x24
10004932:	|  /-- e002      	b.n	1000493a <_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17hb97f478befa85bdeE+0x38>
10004934:	\--|-> 2a0a      	cmp	r2, #10
10004936:	/--|-- d204      	bcs.n	10004942 <_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17hb97f478befa85bdeE+0x40>
10004938:	|  |   2026      	movs	r0, #38	; 0x26
1000493a:	|  \-> ab02      	add	r3, sp, #8
1000493c:	|      3230      	adds	r2, #48	; 0x30
1000493e:	|      541a      	strb	r2, [r3, r0]
10004940:	|  /-- e008      	b.n	10004954 <_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17hb97f478befa85bdeE+0x52>
10004942:	\--|-> f245 3066 	movw	r0, #21350	; 0x5366
10004946:	   |   f2c1 0000 	movt	r0, #4096	; 0x1000
1000494a:	   |   f830 0012 	ldrh.w	r0, [r0, r2, lsl #1]
1000494e:	   |   f8ad 002d 	strh.w	r0, [sp, #45]	; 0x2d
10004952:	   |   2025      	movs	r0, #37	; 0x25
10004954:	   \-> f1c0 0227 	rsb	r2, r0, #39	; 0x27
10004958:	       ab02      	add	r3, sp, #8
1000495a:	       4418      	add	r0, r3
1000495c:	       2300      	movs	r3, #0
1000495e:	       e9cd 0200 	strd	r0, r2, [sp]
10004962:	       f245 1278 	movw	r2, #20856	; 0x5178
10004966:	       4608      	mov	r0, r1
10004968:	       f2c1 0200 	movt	r2, #4096	; 0x1000
1000496c:	       2101      	movs	r1, #1
1000496e:	       f7fe fed0 	bl	10003712 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE>
10004972:	       b00c      	add	sp, #48	; 0x30
10004974:	       bd80      	pop	{r7, pc}

10004976 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h9a6861e7b2695e14E>:
10004976:	                   b5f0      	push	{r4, r5, r6, r7, lr}
10004978:	                   af03      	add	r7, sp, #12
1000497a:	                   e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
1000497e:	                   b08d      	sub	sp, #52	; 0x34
10004980:	                   6804      	ldr	r4, [r0, #0]
10004982:	                   f245 3866 	movw	r8, #21350	; 0x5366
10004986:	                   f242 7010 	movw	r0, #10000	; 0x2710
1000498a:	                   460e      	mov	r6, r1
1000498c:	                   4284      	cmp	r4, r0
1000498e:	                   f2c1 0800 	movt	r8, #4096	; 0x1000
10004992:	/----------------- d33f      	bcc.n	10004a14 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h9a6861e7b2695e14E+0x9e>
10004994:	|                  f241 7959 	movw	r9, #5977	; 0x1759
10004998:	|                  f24e 0eff 	movw	lr, #57599	; 0xe0ff
1000499c:	|                  2100      	movs	r1, #0
1000499e:	|                  f2cd 19b7 	movt	r9, #53687	; 0xd1b7
100049a2:	|                  f241 4a7b 	movw	sl, #5243	; 0x147b
100049a6:	|                  f04f 0b64 	mov.w	fp, #100	; 0x64
100049aa:	|                  f2c0 5ef5 	movt	lr, #1525	; 0x5f5
100049ae:	|                  9602      	str	r6, [sp, #8]
100049b0:	|              /-> aa03      	add	r2, sp, #12
100049b2:	|              |   4574      	cmp	r4, lr
100049b4:	|              |   eb02 0501 	add.w	r5, r2, r1
100049b8:	|              |   fba4 2609 	umull	r2, r6, r4, r9
100049bc:	|              |   f1a1 0104 	sub.w	r1, r1, #4
100049c0:	|              |   ea4f 3256 	mov.w	r2, r6, lsr #13
100049c4:	|              |   fb02 4610 	mls	r6, r2, r0, r4
100049c8:	|              |   4614      	mov	r4, r2
100049ca:	|              |   fa1f fc86 	uxth.w	ip, r6
100049ce:	|              |   ea4f 039c 	mov.w	r3, ip, lsr #2
100049d2:	|              |   fb03 f30a 	mul.w	r3, r3, sl
100049d6:	|              |   ea4f 4353 	mov.w	r3, r3, lsr #17
100049da:	|              |   f838 0013 	ldrh.w	r0, [r8, r3, lsl #1]
100049de:	|              |   f8a5 0023 	strh.w	r0, [r5, #35]	; 0x23
100049e2:	|              |   fb03 601b 	mls	r0, r3, fp, r6
100049e6:	|              |   b280      	uxth	r0, r0
100049e8:	|              |   f838 0010 	ldrh.w	r0, [r8, r0, lsl #1]
100049ec:	|              |   f8a5 0025 	strh.w	r0, [r5, #37]	; 0x25
100049f0:	|              |   f242 7010 	movw	r0, #10000	; 0x2710
100049f4:	|              \-- d8dc      	bhi.n	100049b0 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h9a6861e7b2695e14E+0x3a>
100049f6:	|                  9e02      	ldr	r6, [sp, #8]
100049f8:	|                  f101 0327 	add.w	r3, r1, #39	; 0x27
100049fc:	|                  4614      	mov	r4, r2
100049fe:	|                  2c63      	cmp	r4, #99	; 0x63
10004a00:	|           /----- dc0b      	bgt.n	10004a1a <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h9a6861e7b2695e14E+0xa4>
10004a02:	|           |  /-> 4621      	mov	r1, r4
10004a04:	|           |  |   290a      	cmp	r1, #10
10004a06:	|  /--------|--|-- db19      	blt.n	10004a3c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h9a6861e7b2695e14E+0xc6>
10004a08:	|  |     /--|--|-> f838 1011 	ldrh.w	r1, [r8, r1, lsl #1]
10004a0c:	|  |     |  |  |   1e98      	subs	r0, r3, #2
10004a0e:	|  |     |  |  |   aa03      	add	r2, sp, #12
10004a10:	|  |     |  |  |   5211      	strh	r1, [r2, r0]
10004a12:	|  |  /--|--|--|-- e017      	b.n	10004a44 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h9a6861e7b2695e14E+0xce>
10004a14:	\--|--|--|--|--|-> 2327      	movs	r3, #39	; 0x27
10004a16:	   |  |  |  |  |   2c63      	cmp	r4, #99	; 0x63
10004a18:	   |  |  |  |  \-- ddf3      	ble.n	10004a02 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h9a6861e7b2695e14E+0x8c>
10004a1a:	   |  |  |  \----> b2a0      	uxth	r0, r4
10004a1c:	   |  |  |         f241 417b 	movw	r1, #5243	; 0x147b
10004a20:	   |  |  |         0880      	lsrs	r0, r0, #2
10004a22:	   |  |  |         3b02      	subs	r3, #2
10004a24:	   |  |  |         4348      	muls	r0, r1
10004a26:	   |  |  |         aa03      	add	r2, sp, #12
10004a28:	   |  |  |         0c41      	lsrs	r1, r0, #17
10004a2a:	   |  |  |         2064      	movs	r0, #100	; 0x64
10004a2c:	   |  |  |         fb01 4010 	mls	r0, r1, r0, r4
10004a30:	   |  |  |         b280      	uxth	r0, r0
10004a32:	   |  |  |         f838 0010 	ldrh.w	r0, [r8, r0, lsl #1]
10004a36:	   |  |  |         52d0      	strh	r0, [r2, r3]
10004a38:	   |  |  |         290a      	cmp	r1, #10
10004a3a:	   |  |  \-------- dae5      	bge.n	10004a08 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h9a6861e7b2695e14E+0x92>
10004a3c:	   \--|----------> 1e58      	subs	r0, r3, #1
10004a3e:	      |            aa03      	add	r2, sp, #12
10004a40:	      |            3130      	adds	r1, #48	; 0x30
10004a42:	      |            5411      	strb	r1, [r2, r0]
10004a44:	      \----------> f1c0 0127 	rsb	r1, r0, #39	; 0x27
10004a48:	                   aa03      	add	r2, sp, #12
10004a4a:	                   4410      	add	r0, r2
10004a4c:	                   f245 1278 	movw	r2, #20856	; 0x5178
10004a50:	                   e9cd 0100 	strd	r0, r1, [sp]
10004a54:	                   f2c1 0200 	movt	r2, #4096	; 0x1000
10004a58:	                   4630      	mov	r0, r6
10004a5a:	                   2101      	movs	r1, #1
10004a5c:	                   2300      	movs	r3, #0
10004a5e:	                   f7fe fe58 	bl	10003712 <_ZN4core3fmt9Formatter12pad_integral17hb476aff51fd629ddE>
10004a62:	                   b00d      	add	sp, #52	; 0x34
10004a64:	                   e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
10004a68:	                   bdf0      	pop	{r4, r5, r6, r7, pc}

10004a6a <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf278d5ade3e8e8e8E>:
10004a6a:	e9d0 2000 	ldrd	r2, r0, [r0]
10004a6e:	68c3      	ldr	r3, [r0, #12]
10004a70:	4610      	mov	r0, r2
10004a72:	4718      	bx	r3

10004a74 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5a515b5098ba8f5dE>:
10004a74:	460b      	mov	r3, r1
10004a76:	e9d0 1200 	ldrd	r1, r2, [r0]
10004a7a:	4618      	mov	r0, r3
10004a7c:	f7fe bfcb 	b.w	10003a16 <_ZN4core3fmt9Formatter3pad17ha5e60121d692bbb0E>

10004a80 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hd7c521688ac6fd2fE>:
10004a80:	                   b5d0      	push	{r4, r6, r7, lr}
10004a82:	                   af02      	add	r7, sp, #8
10004a84:	                   f645 3eec 	movw	lr, #23532	; 0x5bec
10004a88:	                   ea4f 2cc0 	mov.w	ip, r0, lsl #11
10004a8c:	                   2100      	movs	r1, #0
10004a8e:	                   2320      	movs	r3, #32
10004a90:	                   f2c1 0e00 	movt	lr, #4096	; 0x1000
10004a94:	                   2220      	movs	r2, #32
10004a96:	               /-- e002      	b.n	10004a9e <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hd7c521688ac6fd2fE+0x1e>
10004a98:	            /--|-> 1c59      	adds	r1, r3, #1
10004a9a:	         /--|--|-> 1a53      	subs	r3, r2, r1
10004a9c:	      /--|--|--|-- d90b      	bls.n	10004ab6 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hd7c521688ac6fd2fE+0x36>
10004a9e:	      |  |  |  \-> eb01 0353 	add.w	r3, r1, r3, lsr #1
10004aa2:	      |  |  |      f85e 4023 	ldr.w	r4, [lr, r3, lsl #2]
10004aa6:	      |  |  |      ebbc 2fc4 	cmp.w	ip, r4, lsl #11
10004aaa:	      |  |  \----- d8f5      	bhi.n	10004a98 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hd7c521688ac6fd2fE+0x18>
10004aac:	      |  |         02e2      	lsls	r2, r4, #11
10004aae:	      |  |         4562      	cmp	r2, ip
10004ab0:	      |  |         461a      	mov	r2, r3
10004ab2:	      |  \-------- d1f2      	bne.n	10004a9a <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hd7c521688ac6fd2fE+0x1a>
10004ab4:	      |            1c59      	adds	r1, r3, #1
10004ab6:	      \----------> 291f      	cmp	r1, #31
10004ab8:	/----------------- d841      	bhi.n	10004b3e <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hd7c521688ac6fd2fE+0xbe>
10004aba:	|                  291f      	cmp	r1, #31
10004abc:	|           /----- d10b      	bne.n	10004ad6 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hd7c521688ac6fd2fE+0x56>
10004abe:	|           |      f240 2cc3 	movw	ip, #707	; 0x2c3
10004ac2:	|           |      2901      	cmp	r1, #1
10004ac4:	|     /-----|----- d30e      	bcc.n	10004ae4 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hd7c521688ac6fd2fE+0x64>
10004ac6:	|     |  /--|----> 1e4b      	subs	r3, r1, #1
10004ac8:	|     |  |  |      2b20      	cmp	r3, #32
10004aca:	|  /--|--|--|----- d23e      	bcs.n	10004b4a <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hd7c521688ac6fd2fE+0xca>
10004acc:	|  |  |  |  |      f85e 2023 	ldr.w	r2, [lr, r3, lsl #2]
10004ad0:	|  |  |  |  |      f36f 525f 	bfc	r2, #21, #11
10004ad4:	|  |  |  |  |  /-- e007      	b.n	10004ae6 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hd7c521688ac6fd2fE+0x66>
10004ad6:	|  |  |  |  \--|-> eb0e 0281 	add.w	r2, lr, r1, lsl #2
10004ada:	|  |  |  |     |   6852      	ldr	r2, [r2, #4]
10004adc:	|  |  |  |     |   ea4f 5c52 	mov.w	ip, r2, lsr #21
10004ae0:	|  |  |  |     |   2901      	cmp	r1, #1
10004ae2:	|  |  |  \-----|-- d2f0      	bcs.n	10004ac6 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hd7c521688ac6fd2fE+0x46>
10004ae4:	|  |  \--------|-> 2200      	movs	r2, #0
10004ae6:	|  |           \-> f85e 1021 	ldr.w	r1, [lr, r1, lsl #2]
10004aea:	|  |               0d49      	lsrs	r1, r1, #21
10004aec:	|  |               1c4b      	adds	r3, r1, #1
10004aee:	|  |               459c      	cmp	ip, r3
10004af0:	|  |     /-------- d019      	beq.n	10004b26 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hd7c521688ac6fd2fE+0xa6>
10004af2:	|  |     |         eba0 0e02 	sub.w	lr, r0, r2
10004af6:	|  |     |         f1ac 0301 	sub.w	r3, ip, #1
10004afa:	|  |     |         f645 4c6c 	movw	ip, #23660	; 0x5c6c
10004afe:	|  |     |         4608      	mov	r0, r1
10004b00:	|  |     |         2200      	movs	r2, #0
10004b02:	|  |     |         f2c1 0c00 	movt	ip, #4096	; 0x1000
10004b06:	|  |     |         f5b1 7f31 	cmp.w	r1, #708	; 0x2c4
10004b0a:	|  |     |         bf38      	it	cc
10004b0c:	|  |     |         f240 20c3 	movwcc	r0, #707	; 0x2c3
10004b10:	|  |     |     /-> 4288      	cmp	r0, r1
10004b12:	|  |     |  /--|-- d00b      	beq.n	10004b2c <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hd7c521688ac6fd2fE+0xac>
10004b14:	|  |     |  |  |   f81c 4001 	ldrb.w	r4, [ip, r1]
10004b18:	|  |     |  |  |   4422      	add	r2, r4
10004b1a:	|  |     |  |  |   4572      	cmp	r2, lr
10004b1c:	|  |     +--|--|-- d803      	bhi.n	10004b26 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hd7c521688ac6fd2fE+0xa6>
10004b1e:	|  |     |  |  |   3101      	adds	r1, #1
10004b20:	|  |     |  |  |   428b      	cmp	r3, r1
10004b22:	|  |     |  |  \-- d1f5      	bne.n	10004b10 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hd7c521688ac6fd2fE+0x90>
10004b24:	|  |     |  |      4619      	mov	r1, r3
10004b26:	|  |     \--|----> f001 0001 	and.w	r0, r1, #1
10004b2a:	|  |        |      bdd0      	pop	{r4, r6, r7, pc}
10004b2c:	|  |        \----> f645 32cc 	movw	r2, #23500	; 0x5bcc
10004b30:	|  |               f240 21c3 	movw	r1, #707	; 0x2c3
10004b34:	|  |               f2c1 0200 	movt	r2, #4096	; 0x1000
10004b38:	|  |               f7fe f9ab 	bl	10002e92 <_ZN4core9panicking18panic_bounds_check17h80646fc287624916E>
10004b3c:	|  |               defe      	udf	#254	; 0xfe
10004b3e:	\--|-------------> f645 32bc 	movw	r2, #23484	; 0x5bbc
10004b42:	   |               4608      	mov	r0, r1
10004b44:	   |               f2c1 0200 	movt	r2, #4096	; 0x1000
10004b48:	   |           /-- e004      	b.n	10004b54 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hd7c521688ac6fd2fE+0xd4>
10004b4a:	   \-----------|-> f645 32dc 	movw	r2, #23516	; 0x5bdc
10004b4e:	               |   4618      	mov	r0, r3
10004b50:	               |   f2c1 0200 	movt	r2, #4096	; 0x1000
10004b54:	               \-> 2120      	movs	r1, #32
10004b56:	                   f7fe f99c 	bl	10002e92 <_ZN4core9panicking18panic_bounds_check17h80646fc287624916E>
10004b5a:	                   defe      	udf	#254	; 0xfe

10004b5c <rust_begin_unwind>:
10004b5c:	/-- e7fe      	b.n	10004b5c <rust_begin_unwind>

10004b5e <__aeabi_memcpy>:
10004b5e:	f000 b891 	b.w	10004c84 <memcpy>

10004b62 <__aeabi_memcpy4>:
10004b62:	             b5b0      	push	{r4, r5, r7, lr}
10004b64:	             af02      	add	r7, sp, #8
10004b66:	             2a04      	cmp	r2, #4
10004b68:	/----------- d331      	bcc.n	10004bce <__aeabi_memcpy4+0x6c>
10004b6a:	|            f1a2 0c04 	sub.w	ip, r2, #4
10004b6e:	|            2301      	movs	r3, #1
10004b70:	|            eb03 039c 	add.w	r3, r3, ip, lsr #2
10004b74:	|            f013 0e03 	ands.w	lr, r3, #3
10004b78:	|     /----- d017      	beq.n	10004baa <__aeabi_memcpy4+0x48>
10004b7a:	|     |      460b      	mov	r3, r1
10004b7c:	|     |      4604      	mov	r4, r0
10004b7e:	|     |      f853 5b04 	ldr.w	r5, [r3], #4
10004b82:	|     |      f1be 0f01 	cmp.w	lr, #1
10004b86:	|     |      f844 5b04 	str.w	r5, [r4], #4
10004b8a:	|     |  /-- d106      	bne.n	10004b9a <__aeabi_memcpy4+0x38>
10004b8c:	|     |  |   4662      	mov	r2, ip
10004b8e:	|     |  |   4620      	mov	r0, r4
10004b90:	|     |  |   4619      	mov	r1, r3
10004b92:	|     |  |   f1bc 0f0c 	cmp.w	ip, #12
10004b96:	|  /--|--|-- d20b      	bcs.n	10004bb0 <__aeabi_memcpy4+0x4e>
10004b98:	+--|--|--|-- e019      	b.n	10004bce <__aeabi_memcpy4+0x6c>
10004b9a:	|  |  |  \-> 684b      	ldr	r3, [r1, #4]
10004b9c:	|  |  |      f1be 0f02 	cmp.w	lr, #2
10004ba0:	|  |  |      6043      	str	r3, [r0, #4]
10004ba2:	|  |  |  /-- d118      	bne.n	10004bd6 <__aeabi_memcpy4+0x74>
10004ba4:	|  |  |  |   3a08      	subs	r2, #8
10004ba6:	|  |  |  |   3108      	adds	r1, #8
10004ba8:	|  |  |  |   3008      	adds	r0, #8
10004baa:	|  |  \--|-> f1bc 0f0c 	cmp.w	ip, #12
10004bae:	+--|-----|-- d30e      	bcc.n	10004bce <__aeabi_memcpy4+0x6c>
10004bb0:	|  >-----|-> 680b      	ldr	r3, [r1, #0]
10004bb2:	|  |     |   3a10      	subs	r2, #16
10004bb4:	|  |     |   6003      	str	r3, [r0, #0]
10004bb6:	|  |     |   2a03      	cmp	r2, #3
10004bb8:	|  |     |   684b      	ldr	r3, [r1, #4]
10004bba:	|  |     |   6043      	str	r3, [r0, #4]
10004bbc:	|  |     |   688b      	ldr	r3, [r1, #8]
10004bbe:	|  |     |   6083      	str	r3, [r0, #8]
10004bc0:	|  |     |   68cb      	ldr	r3, [r1, #12]
10004bc2:	|  |     |   f101 0110 	add.w	r1, r1, #16
10004bc6:	|  |     |   60c3      	str	r3, [r0, #12]
10004bc8:	|  |     |   f100 0010 	add.w	r0, r0, #16
10004bcc:	|  +-----|-- d8f0      	bhi.n	10004bb0 <__aeabi_memcpy4+0x4e>
10004bce:	>--|-----|-> e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
10004bd2:	|  |     |   f7ff bfc4 	b.w	10004b5e <__aeabi_memcpy>
10004bd6:	|  |     \-> 688b      	ldr	r3, [r1, #8]
10004bd8:	|  |         3a0c      	subs	r2, #12
10004bda:	|  |         6083      	str	r3, [r0, #8]
10004bdc:	|  |         310c      	adds	r1, #12
10004bde:	|  |         300c      	adds	r0, #12
10004be0:	|  |         f1bc 0f0c 	cmp.w	ip, #12
10004be4:	|  \-------- d2e4      	bcs.n	10004bb0 <__aeabi_memcpy4+0x4e>
10004be6:	\----------- e7f2      	b.n	10004bce <__aeabi_memcpy4+0x6c>

10004be8 <__aeabi_memset>:
10004be8:	460b      	mov	r3, r1
10004bea:	4611      	mov	r1, r2
10004bec:	461a      	mov	r2, r3
10004bee:	f000 b8ef 	b.w	10004dd0 <memset>

10004bf2 <__aeabi_memset4>:
10004bf2:	                b5d0      	push	{r4, r6, r7, lr}
10004bf4:	                af02      	add	r7, sp, #8
10004bf6:	                4613      	mov	r3, r2
10004bf8:	                b2d2      	uxtb	r2, r2
10004bfa:	                2904      	cmp	r1, #4
10004bfc:	/-------------- d339      	bcc.n	10004c72 <__aeabi_memset4+0x80>
10004bfe:	|               0414      	lsls	r4, r2, #16
10004c00:	|               f1a1 0e04 	sub.w	lr, r1, #4
10004c04:	|               ea44 6303 	orr.w	r3, r4, r3, lsl #24
10004c08:	|               2401      	movs	r4, #1
10004c0a:	|               ea43 2302 	orr.w	r3, r3, r2, lsl #8
10004c0e:	|               eb04 049e 	add.w	r4, r4, lr, lsr #2
10004c12:	|               4413      	add	r3, r2
10004c14:	|               f014 0403 	ands.w	r4, r4, #3
10004c18:	|        /----- d00a      	beq.n	10004c30 <__aeabi_memset4+0x3e>
10004c1a:	|        |      4684      	mov	ip, r0
10004c1c:	|        |      2c01      	cmp	r4, #1
10004c1e:	|        |      f84c 3b04 	str.w	r3, [ip], #4
10004c22:	|        |  /-- d109      	bne.n	10004c38 <__aeabi_memset4+0x46>
10004c24:	|        |  |   4671      	mov	r1, lr
10004c26:	|        |  |   4660      	mov	r0, ip
10004c28:	|        |  |   f1be 0f0c 	cmp.w	lr, #12
10004c2c:	|  /-----|--|-- d219      	bcs.n	10004c62 <__aeabi_memset4+0x70>
10004c2e:	|  |  /--|--|-- e00c      	b.n	10004c4a <__aeabi_memset4+0x58>
10004c30:	|  |  |  \--|-> f1be 0f0c 	cmp.w	lr, #12
10004c34:	|  +--|-----|-- d215      	bcs.n	10004c62 <__aeabi_memset4+0x70>
10004c36:	|  |  +-----|-- e008      	b.n	10004c4a <__aeabi_memset4+0x58>
10004c38:	|  |  |     \-> 2c02      	cmp	r4, #2
10004c3a:	|  |  |         6043      	str	r3, [r0, #4]
10004c3c:	|  |  |     /-- d10a      	bne.n	10004c54 <__aeabi_memset4+0x62>
10004c3e:	|  |  |     |   3008      	adds	r0, #8
10004c40:	|  |  |     |   3908      	subs	r1, #8
10004c42:	|  |  |     |   4684      	mov	ip, r0
10004c44:	|  |  |     |   f1be 0f0c 	cmp.w	lr, #12
10004c48:	|  +--|-----|-- d20b      	bcs.n	10004c62 <__aeabi_memset4+0x70>
10004c4a:	|  |  >-----|-> 4660      	mov	r0, ip
10004c4c:	|  |  |     |   e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
10004c50:	|  |  |     |   f7ff bfca 	b.w	10004be8 <__aeabi_memset>
10004c54:	|  |  |     \-> 6083      	str	r3, [r0, #8]
10004c56:	|  |  |         300c      	adds	r0, #12
10004c58:	|  |  |         390c      	subs	r1, #12
10004c5a:	|  |  |         4684      	mov	ip, r0
10004c5c:	|  |  |         f1be 0f0c 	cmp.w	lr, #12
10004c60:	|  |  \-------- d3f3      	bcc.n	10004c4a <__aeabi_memset4+0x58>
10004c62:	|  >----------> 3910      	subs	r1, #16
10004c64:	|  |            e9c0 3300 	strd	r3, r3, [r0]
10004c68:	|  |            e9c0 3302 	strd	r3, r3, [r0, #8]
10004c6c:	|  |            3010      	adds	r0, #16
10004c6e:	|  |            2903      	cmp	r1, #3
10004c70:	|  \----------- d8f7      	bhi.n	10004c62 <__aeabi_memset4+0x70>
10004c72:	\-------------> 4684      	mov	ip, r0
10004c74:	                4660      	mov	r0, ip
10004c76:	                e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
10004c7a:	                f7ff bfb5 	b.w	10004be8 <__aeabi_memset>

10004c7e <__aeabi_memclr4>:
10004c7e:	2200      	movs	r2, #0
10004c80:	f7ff bfb7 	b.w	10004bf2 <__aeabi_memset4>

10004c84 <memcpy>:
10004c84:	                b5f0      	push	{r4, r5, r6, r7, lr}
10004c86:	                af03      	add	r7, sp, #12
10004c88:	                e92d 0700 	stmdb	sp!, {r8, r9, sl}
10004c8c:	                2a0f      	cmp	r2, #15
10004c8e:	      /-------- d963      	bls.n	10004d58 <memcpy+0xd4>
10004c90:	      |         4243      	negs	r3, r0
10004c92:	      |         f013 0403 	ands.w	r4, r3, #3
10004c96:	      |         eb00 0c04 	add.w	ip, r0, r4
10004c9a:	      |  /----- d016      	beq.n	10004cca <memcpy+0x46>
10004c9c:	      |  |      4603      	mov	r3, r0
10004c9e:	      |  |      460e      	mov	r6, r1
10004ca0:	      |  |  /-> 7835      	ldrb	r5, [r6, #0]
10004ca2:	      |  |  |   f803 5b01 	strb.w	r5, [r3], #1
10004ca6:	      |  |  |   4563      	cmp	r3, ip
10004ca8:	      |  |  |   bf3f      	itttt	cc
10004caa:	      |  |  |   7875      	ldrbcc	r5, [r6, #1]
10004cac:	      |  |  |   f803 5b01 	strbcc.w	r5, [r3], #1
10004cb0:	      |  |  |   4563      	cmpcc	r3, ip
10004cb2:	      |  |  |   78b5      	ldrbcc	r5, [r6, #2]
10004cb4:	      |  |  |   bf3c      	itt	cc
10004cb6:	      |  |  |   f803 5b01 	strbcc.w	r5, [r3], #1
10004cba:	      |  |  |   4563      	cmpcc	r3, ip
10004cbc:	      |  +--|-- d205      	bcs.n	10004cca <memcpy+0x46>
10004cbe:	      |  |  |   78f5      	ldrb	r5, [r6, #3]
10004cc0:	      |  |  |   3604      	adds	r6, #4
10004cc2:	      |  |  |   f803 5b01 	strb.w	r5, [r3], #1
10004cc6:	      |  |  |   4563      	cmp	r3, ip
10004cc8:	      |  |  \-- d3ea      	bcc.n	10004ca0 <memcpy+0x1c>
10004cca:	      |  \----> eba2 0e04 	sub.w	lr, r2, r4
10004cce:	      |         eb01 0904 	add.w	r9, r1, r4
10004cd2:	      |         f02e 0803 	bic.w	r8, lr, #3
10004cd6:	      |         eb0c 0308 	add.w	r3, ip, r8
10004cda:	      |         ea5f 7289 	movs.w	r2, r9, lsl #30
10004cde:	   /--|-------- d03f      	beq.n	10004d60 <memcpy+0xdc>
10004ce0:	   |  |         f1b8 0f01 	cmp.w	r8, #1
10004ce4:	/--|--|-------- db55      	blt.n	10004d92 <memcpy+0x10e>
10004ce6:	|  |  |         2218      	movs	r2, #24
10004ce8:	|  |  |         ea02 0ac9 	and.w	sl, r2, r9, lsl #3
10004cec:	|  |  |         2200      	movs	r2, #0
10004cee:	|  |  |         eba2 02c9 	sub.w	r2, r2, r9, lsl #3
10004cf2:	|  |  |         f002 0518 	and.w	r5, r2, #24
10004cf6:	|  |  |         f029 0203 	bic.w	r2, r9, #3
10004cfa:	|  |  |         f102 0608 	add.w	r6, r2, #8
10004cfe:	|  |  |         6812      	ldr	r2, [r2, #0]
10004d00:	|  |  |     /-> fa22 f10a 	lsr.w	r1, r2, sl
10004d04:	|  |  |     |   f856 2c04 	ldr.w	r2, [r6, #-4]
10004d08:	|  |  |     |   fa02 f405 	lsl.w	r4, r2, r5
10004d0c:	|  |  |     |   4321      	orrs	r1, r4
10004d0e:	|  |  |     |   f84c 1b04 	str.w	r1, [ip], #4
10004d12:	|  |  |     |   459c      	cmp	ip, r3
10004d14:	+--|--|-----|-- d23d      	bcs.n	10004d92 <memcpy+0x10e>
10004d16:	|  |  |     |   fa22 f10a 	lsr.w	r1, r2, sl
10004d1a:	|  |  |     |   6832      	ldr	r2, [r6, #0]
10004d1c:	|  |  |     |   fa02 f405 	lsl.w	r4, r2, r5
10004d20:	|  |  |     |   4321      	orrs	r1, r4
10004d22:	|  |  |     |   f84c 1b04 	str.w	r1, [ip], #4
10004d26:	|  |  |     |   459c      	cmp	ip, r3
10004d28:	|  |  |     |   bf3f      	itttt	cc
10004d2a:	|  |  |     |   fa22 f10a 	lsrcc.w	r1, r2, sl
10004d2e:	|  |  |     |   6872      	ldrcc	r2, [r6, #4]
10004d30:	|  |  |     |   fa02 f405 	lslcc.w	r4, r2, r5
10004d34:	|  |  |     |   4321      	orrcc	r1, r4
10004d36:	|  |  |     |   bf3c      	itt	cc
10004d38:	|  |  |     |   f84c 1b04 	strcc.w	r1, [ip], #4
10004d3c:	|  |  |     |   459c      	cmpcc	ip, r3
10004d3e:	+--|--|-----|-- d228      	bcs.n	10004d92 <memcpy+0x10e>
10004d40:	|  |  |     |   fa22 f10a 	lsr.w	r1, r2, sl
10004d44:	|  |  |     |   68b2      	ldr	r2, [r6, #8]
10004d46:	|  |  |     |   3610      	adds	r6, #16
10004d48:	|  |  |     |   fa02 f405 	lsl.w	r4, r2, r5
10004d4c:	|  |  |     |   4321      	orrs	r1, r4
10004d4e:	|  |  |     |   f84c 1b04 	str.w	r1, [ip], #4
10004d52:	|  |  |     |   459c      	cmp	ip, r3
10004d54:	|  |  |     \-- d3d4      	bcc.n	10004d00 <memcpy+0x7c>
10004d56:	+--|--|-------- e01c      	b.n	10004d92 <memcpy+0x10e>
10004d58:	|  |  \-------> 4603      	mov	r3, r0
10004d5a:	|  |            2a01      	cmp	r2, #1
10004d5c:	|  |     /----- da1f      	bge.n	10004d9e <memcpy+0x11a>
10004d5e:	|  |  /--|----- e034      	b.n	10004dca <memcpy+0x146>
10004d60:	|  \--|--|----> f1b8 0f01 	cmp.w	r8, #1
10004d64:	+-----|--|----- db15      	blt.n	10004d92 <memcpy+0x10e>
10004d66:	|     |  |      464c      	mov	r4, r9
10004d68:	|     |  |  /-> 6821      	ldr	r1, [r4, #0]
10004d6a:	|     |  |  |   f84c 1b04 	str.w	r1, [ip], #4
10004d6e:	|     |  |  |   459c      	cmp	ip, r3
10004d70:	|     |  |  |   bf3f      	itttt	cc
10004d72:	|     |  |  |   6861      	ldrcc	r1, [r4, #4]
10004d74:	|     |  |  |   f84c 1b04 	strcc.w	r1, [ip], #4
10004d78:	|     |  |  |   459c      	cmpcc	ip, r3
10004d7a:	|     |  |  |   68a1      	ldrcc	r1, [r4, #8]
10004d7c:	|     |  |  |   bf3c      	itt	cc
10004d7e:	|     |  |  |   f84c 1b04 	strcc.w	r1, [ip], #4
10004d82:	|     |  |  |   459c      	cmpcc	ip, r3
10004d84:	+-----|--|--|-- d205      	bcs.n	10004d92 <memcpy+0x10e>
10004d86:	|     |  |  |   68e1      	ldr	r1, [r4, #12]
10004d88:	|     |  |  |   3410      	adds	r4, #16
10004d8a:	|     |  |  |   f84c 1b04 	str.w	r1, [ip], #4
10004d8e:	|     |  |  |   459c      	cmp	ip, r3
10004d90:	|     |  |  \-- d3ea      	bcc.n	10004d68 <memcpy+0xe4>
10004d92:	\-----|--|----> eb09 0108 	add.w	r1, r9, r8
10004d96:	      |  |      f00e 0203 	and.w	r2, lr, #3
10004d9a:	      |  |      2a01      	cmp	r2, #1
10004d9c:	      +--|----- db15      	blt.n	10004dca <memcpy+0x146>
10004d9e:	      |  \----> 441a      	add	r2, r3
10004da0:	      |     /-> 780e      	ldrb	r6, [r1, #0]
10004da2:	      |     |   f803 6b01 	strb.w	r6, [r3], #1
10004da6:	      |     |   4293      	cmp	r3, r2
10004da8:	      |     |   bf3f      	itttt	cc
10004daa:	      |     |   784e      	ldrbcc	r6, [r1, #1]
10004dac:	      |     |   f803 6b01 	strbcc.w	r6, [r3], #1
10004db0:	      |     |   4293      	cmpcc	r3, r2
10004db2:	      |     |   788e      	ldrbcc	r6, [r1, #2]
10004db4:	      |     |   bf3c      	itt	cc
10004db6:	      |     |   f803 6b01 	strbcc.w	r6, [r3], #1
10004dba:	      |     |   4293      	cmpcc	r3, r2
10004dbc:	      +-----|-- d205      	bcs.n	10004dca <memcpy+0x146>
10004dbe:	      |     |   78ce      	ldrb	r6, [r1, #3]
10004dc0:	      |     |   3104      	adds	r1, #4
10004dc2:	      |     |   f803 6b01 	strb.w	r6, [r3], #1
10004dc6:	      |     |   4293      	cmp	r3, r2
10004dc8:	      |     \-- d3ea      	bcc.n	10004da0 <memcpy+0x11c>
10004dca:	      \-------> e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
10004dce:	                bdf0      	pop	{r4, r5, r6, r7, pc}

10004dd0 <memset>:
10004dd0:	          b5d0      	push	{r4, r6, r7, lr}
10004dd2:	          af02      	add	r7, sp, #8
10004dd4:	          2a0f      	cmp	r2, #15
10004dd6:	/-------- d935      	bls.n	10004e44 <memset+0x74>
10004dd8:	|         4243      	negs	r3, r0
10004dda:	|         f013 0e03 	ands.w	lr, r3, #3
10004dde:	|         eb00 0c0e 	add.w	ip, r0, lr
10004de2:	|  /----- d00f      	beq.n	10004e04 <memset+0x34>
10004de4:	|  |      4603      	mov	r3, r0
10004de6:	|  |  /-> f803 1b01 	strb.w	r1, [r3], #1
10004dea:	|  |  |   4563      	cmp	r3, ip
10004dec:	|  |  |   bf3f      	itttt	cc
10004dee:	|  |  |   f803 1b01 	strbcc.w	r1, [r3], #1
10004df2:	|  |  |   4563      	cmpcc	r3, ip
10004df4:	|  |  |   f803 1b01 	strbcc.w	r1, [r3], #1
10004df8:	|  |  |   4563      	cmpcc	r3, ip
10004dfa:	|  +--|-- d203      	bcs.n	10004e04 <memset+0x34>
10004dfc:	|  |  |   f803 1b01 	strb.w	r1, [r3], #1
10004e00:	|  |  |   4563      	cmp	r3, ip
10004e02:	|  |  \-- d3f0      	bcc.n	10004de6 <memset+0x16>
10004e04:	|  \----> eba2 0e0e 	sub.w	lr, r2, lr
10004e08:	|         f02e 0203 	bic.w	r2, lr, #3
10004e0c:	|         eb0c 0302 	add.w	r3, ip, r2
10004e10:	|         2a01      	cmp	r2, #1
10004e12:	|  /----- db12      	blt.n	10004e3a <memset+0x6a>
10004e14:	|  |      b2ca      	uxtb	r2, r1
10004e16:	|  |      f04f 3401 	mov.w	r4, #16843009	; 0x1010101
10004e1a:	|  |      4362      	muls	r2, r4
10004e1c:	|  |  /-> f84c 2b04 	str.w	r2, [ip], #4
10004e20:	|  |  |   459c      	cmp	ip, r3
10004e22:	|  |  |   bf3f      	itttt	cc
10004e24:	|  |  |   f84c 2b04 	strcc.w	r2, [ip], #4
10004e28:	|  |  |   459c      	cmpcc	ip, r3
10004e2a:	|  |  |   f84c 2b04 	strcc.w	r2, [ip], #4
10004e2e:	|  |  |   459c      	cmpcc	ip, r3
10004e30:	|  +--|-- d203      	bcs.n	10004e3a <memset+0x6a>
10004e32:	|  |  |   f84c 2b04 	str.w	r2, [ip], #4
10004e36:	|  |  |   459c      	cmp	ip, r3
10004e38:	|  |  \-- d3f0      	bcc.n	10004e1c <memset+0x4c>
10004e3a:	|  \----> f00e 0203 	and.w	r2, lr, #3
10004e3e:	|         2a01      	cmp	r2, #1
10004e40:	|     /-- da03      	bge.n	10004e4a <memset+0x7a>
10004e42:	|  /--|-- e012      	b.n	10004e6a <memset+0x9a>
10004e44:	\--|--|-> 4603      	mov	r3, r0
10004e46:	   |  |   2a01      	cmp	r2, #1
10004e48:	   +--|-- db0f      	blt.n	10004e6a <memset+0x9a>
10004e4a:	   |  \-> 441a      	add	r2, r3
10004e4c:	   |  /-> f803 1b01 	strb.w	r1, [r3], #1
10004e50:	   |  |   4293      	cmp	r3, r2
10004e52:	   |  |   bf3f      	itttt	cc
10004e54:	   |  |   f803 1b01 	strbcc.w	r1, [r3], #1
10004e58:	   |  |   4293      	cmpcc	r3, r2
10004e5a:	   |  |   f803 1b01 	strbcc.w	r1, [r3], #1
10004e5e:	   |  |   4293      	cmpcc	r3, r2
10004e60:	   +--|-- d203      	bcs.n	10004e6a <memset+0x9a>
10004e62:	   |  |   f803 1b01 	strb.w	r1, [r3], #1
10004e66:	   |  |   4293      	cmp	r3, r2
10004e68:	   |  \-- d3f0      	bcc.n	10004e4c <memset+0x7c>
10004e6a:	   \----> bdd0      	pop	{r4, r6, r7, pc}

10004e6c <memcmp>:
10004e6c:	          b5f0      	push	{r4, r5, r6, r7, lr}
10004e6e:	          af03      	add	r7, sp, #12
10004e70:	          e92d 0b00 	stmdb	sp!, {r8, r9, fp}
10004e74:	/-------- b34a      	cbz	r2, 10004eca <memcmp+0x5e>
10004e76:	|         f1a2 0e01 	sub.w	lr, r2, #1
10004e7a:	|         f1c2 0c00 	rsb	ip, r2, #0
10004e7e:	|         2300      	movs	r3, #0
10004e80:	|     /-> 5ccc      	ldrb	r4, [r1, r3]
10004e82:	|     |   5cc5      	ldrb	r5, [r0, r3]
10004e84:	|     |   42a5      	cmp	r5, r4
10004e86:	|  /--|-- d124      	bne.n	10004ed2 <memcmp+0x66>
10004e88:	|  |  |   459e      	cmp	lr, r3
10004e8a:	+--|--|-- d01e      	beq.n	10004eca <memcmp+0x5e>
10004e8c:	|  |  |   eb01 0803 	add.w	r8, r1, r3
10004e90:	|  |  |   eb00 0903 	add.w	r9, r0, r3
10004e94:	|  |  |   f898 4001 	ldrb.w	r4, [r8, #1]
10004e98:	|  |  |   f899 5001 	ldrb.w	r5, [r9, #1]
10004e9c:	|  |  |   42a5      	cmp	r5, r4
10004e9e:	|  +--|-- d118      	bne.n	10004ed2 <memcmp+0x66>
10004ea0:	|  |  |   eb0c 0603 	add.w	r6, ip, r3
10004ea4:	|  |  |   1cb4      	adds	r4, r6, #2
10004ea6:	+--|--|-- d010      	beq.n	10004eca <memcmp+0x5e>
10004ea8:	|  |  |   f898 4002 	ldrb.w	r4, [r8, #2]
10004eac:	|  |  |   f899 5002 	ldrb.w	r5, [r9, #2]
10004eb0:	|  |  |   42a5      	cmp	r5, r4
10004eb2:	|  +--|-- d10e      	bne.n	10004ed2 <memcmp+0x66>
10004eb4:	|  |  |   1cf4      	adds	r4, r6, #3
10004eb6:	+--|--|-- d008      	beq.n	10004eca <memcmp+0x5e>
10004eb8:	|  |  |   f898 4003 	ldrb.w	r4, [r8, #3]
10004ebc:	|  |  |   f899 5003 	ldrb.w	r5, [r9, #3]
10004ec0:	|  |  |   42a5      	cmp	r5, r4
10004ec2:	|  +--|-- d106      	bne.n	10004ed2 <memcmp+0x66>
10004ec4:	|  |  |   3304      	adds	r3, #4
10004ec6:	|  |  |   429a      	cmp	r2, r3
10004ec8:	|  |  \-- d1da      	bne.n	10004e80 <memcmp+0x14>
10004eca:	\--|----> 2000      	movs	r0, #0
10004ecc:	   |      e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
10004ed0:	   |      bdf0      	pop	{r4, r5, r6, r7, pc}
10004ed2:	   \----> 1b28      	subs	r0, r5, r4
10004ed4:	          e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
10004ed8:	          bdf0      	pop	{r4, r5, r6, r7, pc}

10004eda <HardFaultTrampoline>:
10004eda:	    4670      	mov	r0, lr
10004edc:	    2104      	movs	r1, #4
10004ede:	    4208      	tst	r0, r1
10004ee0:	/-- d102      	bne.n	10004ee8 <HardFaultTrampoline+0xe>
10004ee2:	|   f3ef 8008 	mrs	r0, MSP
10004ee6:	|   e002      	b.n	10004eee <HardFault_>
10004ee8:	\-> f3ef 8009 	mrs	r0, PSP
10004eec:	    e7ff      	b.n	10004eee <HardFault_>

10004eee <HardFault_>:
10004eee:	/-- e7fe      	b.n	10004eee <HardFault_>
