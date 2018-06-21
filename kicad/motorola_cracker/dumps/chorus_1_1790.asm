;
;	Disassembled by:
;		DASMx object code disassembler
;		(c) Copyright 1996-2003   Conquest Consultants
;		Version 1.40 (Oct 18 2003)
;
;	File:		chorus_1_1790.bin
;
;	Size:		31232 bytes
;	Checksum:	C58F
;	CRC-32:		BCD74340
;
;	Date:		Thu Jun 21 11:35:23 2018
;
;	CPU:		Motorola 68HC05 (68HC05 family)
;
;
;
	org	$0400
;
L0400:
	rsp
L0401:
	sei
L0402:
	bset	6,RAM1_0ba
L0404:
	bclr	5,RAM1_0ba
L0406:
	brset	7,Miscell,L0423
L0409:
	jsr	L3648
L040C:
	bne	L0423
L040E:
	lda	#$53
L0410:
	cmp	RAM1_06b
L0412:
	bne	L0423
L0414:
	jsr	L20A7
L0417:
X0417:
	jsr	L1FE6
L041A:
	clr	RAM1_06b
L041C:
	bclr	3,PortB
L041E:
	bset	3,DDRB
L0420:
	jmp	L0506
;
L0423:
	jsr	L1FC3
L0426:
	jmp	L04F1
;
L0429:
	jsr	L3676
L042C:
	lda	SCDR
L042E:
	jmp	L04B0
;
L0431:
	lda	TSR
L0433:
	lda	TCL
L0435:
	rti
;
L0436:
	brset	7,TSR,L04A3
L0439:
	brclr	3,TSR,L048B
L043C:
	lda	OCL2
L043E:
	add	#$88
L0440:
	tax
L0441:
	lda	OCH2
L0443:
	adc	#$13
L0445:
	sta	OCH2
L0447:
	lda	TSR
L0449:
	stx	OCL2
L044B:
	bset	3,RAM1_067
L044D:
	brclr	1,DDRC,L0453
L0450:
	brset	1,PortC,L0455
L0453:
	bset	4,RAM1_05d
L0455:
	bclr	1,PortC
L0457:
	tst	RAM1_063
L0459:
	beq	L045D
L045B:
	dec	RAM1_063
L045D:
	dec	RAM1_068
L045F:
	bne	L0463
L0461:
	bset	7,RAM1_067
L0463:
	jsr	L3669
L0466:
	lda	RAM1_068
L0468:
	bit	#$3F
L046A:
	bne	L046E
L046C:
	bset	6,RAM1_067
L046E:
	bit	#$03
L0470:
	bne	L047C
L0472:
	bset	4,RAM1_067
L0474:
	jsr	L4B0F
L0477:
	jsr	L21A2
L047A:
	lda	RAM1_068
L047C:
	bit	#$0F
L047E:
	bne	L048B
L0480:
	bset	5,RAM1_067
L0482:
	brset	2,RAM1_05e,L0489
L0485:
	lda	ACH
L0487:
	bra	L049A
;
L0489:
	bclr	2,RAM1_05e
L048B:
	brclr	6,TSR,L04B0
L048E:
	bset	2,RAM1_05e
L0490:
	ldx	OCL1
L0492:
	lda	OCH1
L0494:
	brclr	0,RAM1_061,L049A
L0497:
	jsr	L0B8C
L049A:
	sta	OCH1
L049C:
	stx	OCL1
L049E:
	bra	L04B0
;
L04A0:
	brclr	7,TSR,L04A8
L04A3:
	jsr	L2143
L04A6:
	bra	L04B0
;
L04A8:
	brclr	4,TSR,L04B0
L04AB:
	jsr	L4AF3
L04AE:
	lda	ICL2
L04B0:
	brclr	7,TSR,L04BE
L04B3:
	brset	4,RAM1_05e,L04BE
L04B6:
	bset	4,RAM1_05e
L04B8:
	bclr	1,TCR
L04BA:
	bset	3,RAM1_076
L04BC:
	lda	ICL1
L04BE:
	brclr	4,TSR,L04C3
L04C1:
	bset	7,RAM1_096
L04C3:
	rti
;
L04C4:
	brclr	7,TSR,L04D2
L04C7:
	brset	4,RAM1_05e,L04D2
L04CA:
	bset	4,RAM1_05e
L04CC:
	bclr	1,TCR
L04CE:
	bset	3,RAM1_076
L04D0:
	lda	ICL1
L04D2:
	cli
L04D3:
	rts
;
L04D4:
	lda	#$53
L04D6:
	sta	RAM1_06b
L04D8:
	bset	0,Miscell
L04DA:
	stop
L04DB:
	bra	L04D4
;
L04DD:
	lda	#$28
L04DF:
	deca
L04E0:
	beq	L04E5
L04E2:
	bil	L04DF
L04E4:
	rti
;
L04E5:
	brset	7,RAM1_0ba,L04ED
L04E8:
	brset	6,RAM1_0b9,L04ED
L04EB:
	bset	7,RAM1_061
L04ED:
	bclr	6,RAM1_0ba
L04EF:
	clr	STACK_0d6
L04F1:
	sei
L04F2:
	bclr	4,Miscell
L04F4:
	bclr	5,RAM1_0ba
L04F6:
	bclr	3,RAM1_061
L04F8:
	jsr	L0725
L04FB:
	bset	3,RAM1_061
L04FD:
	bclr	5,PortB
L04FF:
	bclr	5,RAM1_06a
L0501:
	jsr	L2551
L0504:
	bset	5,PortB
L0506:
	rsp
L0507:
	bclr	2,RAM1_05d
L0509:
	brset	1,Miscell,L04D4
L050C:
	sei
L050D:
	jsr	L207E
L0510:
	cli
L0511:
	brset	0,RAM1_061,L051E
L0514:
	bclr	7,RAM1_061
L0516:
	brset	6,RAM1_061,L051B
L0519:
	bclr	6,RAM1_05f
L051B:
	jmp	L08AD
;
L051E:
	bil	L04ED
L0520:
	brclr	3,RAM1_061,L04F1
L0523:
	jsr	L3713
L0526:
	bclr	3,STACK_0ce
L0528:
	bclr	6,RAM1_05f
L052A:
	brset	2,TCR,L052F
L052D:
	bclr	3,PortB
L052F:
	bset	2,TCR
L0531:
	bset	4,TCR
L0533:
	bset	0,PortB
L0535:
	brset	3,RAM1_07f,L0541
L0538:
	brset	2,RAM1_07f,L0541
L053B:
	brset	7,RAM1_069,L0541
L053E:
	jsr	L0B7A
L0541:
	jsr	L1FFF
L0544:
	jsr	L1FF6
L0547:
	brset	0,RAM1_0a1,L055C
L054A:
	bclr	2,DDRC
L054C:
	bclr	3,DDRC
L054E:
	jsr	L2551
L0551:
	lda	PortC
L0553:
	and	#$0C
L0555:
	bne	L0560
L0557:
	bclr	5,RAM1_069
L0559:
	brset	3,RAM1_08e,L0566
L055C:
	bset	4,RAM1_069
L055E:
	bra	L0568
;
L0560:
	bset	5,RAM1_069
L0562:
	bclr	1,RAM1_081
L0564:
	bclr	3,RAM1_08e
L0566:
	bclr	4,RAM1_069
L0568:
	bset	2,DDRC
L056A:
	bset	3,DDRC
L056C:
	cli
L056D:
	brclr	6,RAM1_0ba,L0573
L0570:
	brset	5,RAM1_061,L057D
L0573:
	jsr	L132A
L0576:
	bset	5,RAM1_061
L0578:
	jsr	L0719
L057B:
	bclr	2,RAM1_09e
L057D:
	brset	6,RAM1_061,L0585
L0580:
	jsr	L305D
L0583:
	bset	6,RAM1_061
L0585:
	brset	4,RAM1_061,L0591
L0588:
	jsr	L2633
L058B:
	jsr	L1E8B
L058E:
	jsr	L477E
L0591:
	bset	4,RAM1_061
L0593:
	brset	2,RAM1_09e,L0599
L0596:
	jsr	L38BC
L0599:
	jsr	L0719
L059C:
	jsr	L35FA
L059F:
	jsr	L3A05
L05A2:
	jsr	L0B1D
L05A5:
	clrx
L05A6:
	jsr	L2557
L05A9:
	brclr	3,RAM1_08b,L05BB
L05AC:
	lda	#$0B
L05AE:
	brset	4,RAM1_08b,L05B6
L05B1:
	lda	#$1A
L05B3:
	brclr	1,RAM1_081,L05BB
L05B6:
	jsr	L23F3
L05B9:
	bset	1,STACK_0cb
L05BB:
	clr	RAM1_067
L05BD:
	clr	RAM1_068
L05BF:
	brclr	4,RAM1_0bb,L05C4
L05C2:
	bset	2,RAM1_094
L05C4:
	sei
L05C5:
	bset	4,Miscell
L05C7:
	bset	7,TCR
L05C9:
	cli
L05CA:
	brset	7,RAM1_069,L05D4
L05CD:
	brclr	5,RAM1_0bb,L05D4
L05D0:
	bset	7,RAM1_069
L05D2:
	bset	1,RAM1_05d
L05D4:
	jsr	L0789
L05D7:
	brset	2,RAM1_05d,L05E3
L05DA:
	clra
L05DB:
	brclr	3,PortA,L05E6
L05DE:
	deca
L05DF:
	bne	L05DB
L05E1:
	bclr	4,RAM1_061
L05E3:
	jmp	L0506
;
L05E6:
	bih	L05EB
L05E8:
	jmp	L04E5
;
L05EB:
	jsr	L2223
L05EE:
	jsr	L306C
L05F1:
	jsr	L4B17
L05F4:
	jsr	L13E0
L05F7:
	jsr	L36F2
L05FA:
	jsr	L4639
L05FD:
	jsr	L44A8
L0600:
	jsr	L4A15
L0603:
	jsr	L3FBE
L0606:
	jsr	L47F4
L0609:
	jsr	L26DD
L060C:
	jsr	L26D0
L060F:
	jsr	L1EB4
L0612:
	jsr	L3943
L0615:
	jsr	L3A83
L0618:
	jsr	L061D
L061B:
	bra	L05C4
;
L061D:
	brset	3,RAM1_067,L0636
L0620:
	brset	2,RAM1_067,L0646
L0623:
	brset	1,RAM1_067,L064D
L0626:
	brset	0,RAM1_067,L0676
L0629:
	brset	4,RAM1_067,L064F
L062C:
	brset	5,RAM1_067,L0660
L062F:
	brset	6,RAM1_067,L066B
L0632:
	brset	7,RAM1_067,L0673
L0635:
	rts
;
L0636:
	bclr	3,RAM1_067
L0638:
	bset	2,RAM1_067
L063A:
	jsr	L1FA3
L063D:
	jsr	L3769
L0640:
	jsr	L265C
L0643:
	jmp	L38EF
;
L0646:
	bclr	2,RAM1_067
L0648:
	bset	1,RAM1_067
L064A:
	jmp	L071F
L064D:
	bra	L06BB
;
L064F:
	bclr	4,RAM1_067
L0651:
	jsr	L263E
L0654:
	jsr	L1E8C
L0657:
	jsr	L307B
L065A:
	jsr	L3BCD
L065D:
	jmp	L26D1
;
L0660:
	bclr	5,RAM1_067
L0662:
	jsr	L13CE
L0665:
	jsr	L3BF2
L0668:
	jmp	L362E
;
L066B:
	bclr	6,RAM1_067
L066D:
	jsr	L3A9D
L0670:
	jmp	L4B50
;
L0673:
	bclr	7,RAM1_067
L0675:
	rts
;
L0676:
	bclr	0,RAM1_067
L0678:
	jsr	L47AA
L067B:
	jsr	L3072
L067E:
	jsr	L3AF9
L0681:
	brset	7,RAM1_060,L06AA
L0684:
	brclr	3,RAM1_08b,L06A4
L0687:
	brset	3,STACK_0ce,L06A1
L068A:
	brclr	6,RAM1_05d,L0698
L068D:
	bclr	1,STACK_0cb
L068F:
	jsr	L37CB
L0692:
	jsr	L43E8
L0695:
	jsr	L20DA
L0698:
	jsr	L33FF
L069B:
	jsr	L463B
L069E:
	jsr	L44A9
L06A1:
	jsr	L27BE
L06A4:
	jsr	L2C60
L06A7:
	jsr	L4A16
L06AA:
	jsr	L43DD
L06AD:
	jsr	L3AD3
L06B0:
	bclr	6,RAM1_05d
L06B2:
	brclr	7,RAM1_060,L06B8
L06B5:
	jsr	L2C60
L06B8:
	jmp	L0BAC
;
L06BB:
	bclr	1,RAM1_067
L06BD:
	bset	0,RAM1_067
L06BF:
	brclr	7,RAM1_05d,L0718
L06C2:
	bclr	7,RAM1_05d
L06C4:
	lda	STACK_0ca
L06C6:
	and	#$0F
L06C8:
	ldx	#$03
L06CA:
	mul
L06CB:
	tax
L06CC:
	cpx	#$21
L06CE:
	bcc	L0718
L06D0:
	jsr	L06EB,x						;INFO: index jump
L06D3:
	lda	STACK_0ca
L06D5:
	jsr	L2525
L06D8:
	and	#$03
L06DA:
	ldx	#$03
L06DC:
	mul
L06DD:
	tax
L06DE:
	cpx	#$0C
L06E0:
	bcc	L0718
L06E2:
	jsr	L070C,x						;INFO: index jump
L06E5:
	brclr	6,STACK_0ca,L0718
L06E8:
	jmp	L2BDE
L06EB:
	jmp	L0635
L06EE:
	jmp	L2A5C
L06F1:
	jmp	L46D2
L06F4:
	jmp	L4544
L06F7:
	jmp	L35A9
L06FA:
	jmp	L3847
L06FD:
	jmp	L2FC9
L0700:
	jmp	L0635
L0703:
	jmp	L4A9D
L0706:
	jmp	L4414
L0709:
	jmp	L43DE
L070C:
	jmp	L4AAB
L070F:
	jmp	L2B41
L0712:
	jmp	L471A
L0715:
	jmp	L45B7
L0718:
	rts
;
L0719:
	jsr	L13E0
L071C:
	jsr	L36F2
L071F:
	jsr	L13BC
L0722:
	jmp	L36AE
;
L0725:
	clr	RAM1_066
L0727:
	lda	RAM1_065
L0729:
	sta	RAM2_02b0
L072C:
	brclr	4,RAM1_061,L0737
L072F:
	jsr	L0B7A
L0732:
	jsr	L4769
L0735:
	bclr	4,RAM1_061
L0737:
	lda	#$0A
L0739:
	sta	RAM1_050
L073B:
	bset	2,TCR
L073D:
	bset	4,TCR
L073F:
	bih	L0743
L0741:
	bclr	6,RAM1_0ba
L0743:
	jsr	L253F
L0746:
	brset	1,PortC,L074B
L0749:
	bset	4,RAM1_05d
L074B:
	bclr	1,PortC
L074D:
	jsr	L0789
L0750:
	lda	RAM1_065
L0752:
	sub	RAM2_02b0
L0755:
	cmp	#$03
L0757:
	bcs	L075B
L0759:
	bset	5,RAM1_060
L075B:
	lda	#$27
L075D:
	jsr	L24C5
L0760:
	cmp	#$19
L0762:
	bcs	L0776
L0764:
	cmp	#$53
L0766:
	bhi	L0772
L0768:
	bclr	6,RAM1_061
L076A:
	bclr	5,RAM1_061
L076C:
	bclr	7,RAM1_061
L076E:
	bclr	6,RAM1_05f
L0770:
	bra	L0743
;
L0772:
	cmp	#$73
L0774:
	bcs	L0737
L0776:
	bil	L0737
L0778:
	dec	RAM1_050
L077A:
	bne	L0743
L077C:
	rts
;
L077D:
	jsr	L0B7A
L0780:
	jsr	L4769
L0783:
	jsr	L201B
L0786:
	jmp	L0506
;
L0789:
	brset	4,RAM1_05d,L0793
L078C:
	brclr	1,Miscell,L0792
L078F:
	brclr	1,PortD,L07BB
L0792:
	rts
;
L0793:
	lda	#$06
L0795:
	brset	1,Miscell,L079A
L0798:
	lda	#$01
L079A:
	add	RAM1_066
L079C:
	sta	RAM1_066
L079E:
	bcc	L07BB
L07A0:
	lda	#$01
L07A2:
	add	RAM1_065
L07A4:
	sta	RAM1_065
L07A6:
	bcc	L07BB
L07A8:
	brset	7,RAM1_064,L07BB
L07AB:
	inc	RAM1_064
L07AD:
	bpl	L07BB
L07AF:
	brset	2,RAM1_08b,L07BB
L07B2:
	brset	1,RAM1_05f,L07BB
L07B5:
	brclr	0,RAM1_061,L07BB
L07B8:
	jmp	L08A3
;
L07BB:
	bclr	4,RAM1_05d
L07BD:
	brclr	1,DDRC,L07C4
L07C0:
	bclr	1,DDRC
L07C2:
	bra	L07D7
;
L07C4:
	lda	RAM1_062
L07C6:
	brclr	1,PortC,L07CD
L07C9:
	add	#$20
L07CB:
	bra	L07CF
;
L07CD:
	sub	#$20
L07CF:
	bcs	L07D3
L07D1:
	sta	RAM1_062
L07D3:
	bset	1,DDRC
L07D5:
	bset	1,PortC
L07D7:
	clra
L07D8:
	brset	2,PortD,L07DD
L07DB:
	ora	#$01
L07DD:
	brset	0,PortD,L07E2
L07E0:
	ora	#$02
L07E2:
	brclr	7,RAM1_05e,L07E7
L07E5:
	ora	#$04
L07E7:
	brclr	1,PortD,L07EC
L07EA:
	ora	#$10
L07EC:
	tst	RAM1_062
L07EE:
	bpl	L07F2
L07F0:
	ora	#$08
L07F2:
	brclr	6,PortD,L07F7
L07F5:
	ora	#$80
L07F7:
	eor	RAM1_05f
L07F9:
	and	#$9F
L07FB:
	beq	L0068
L07FD:
	sta	RAM1_05b
L07FF:
	eor	RAM1_05f
	sta	RAM1_05f
	brclr	3,RAM1_05f,L000A
	bset	5,RAM1_05f
	bra	L0014
;
	brclr	7,RAM1_05f,L000F
	bset	5,RAM1_05f
	brset	1,RAM1_05f,L0014
	bclr	5,RAM1_05f
	brclr	0,RAM1_05b,L0024
	brset	0,RAM1_05f,L0096
	brset	6,RAM1_05f,L0020
	brclr	0,RAM1_061,L0024
	bclr	6,RAM1_05f
	bra	L07B8
;
	brclr	7,RAM1_060,L002A
	brset	5,RAM1_05d,L004C
	bclr	5,RAM1_05d
	brset	1,RAM1_05f,L0039
	brclr	1,RAM1_05b,L004C
	brclr	0,RAM1_061,L00AA
	bset	1,RAM1_061
	bra	L00A3
;
	brset	0,RAM1_061,L0044
	brclr	1,RAM1_05b,L004C
	brset	0,RAM1_05f,L0098
	bset	5,RAM1_05f
	bclr	1,RAM1_061
	brclr	1,RAM1_05b,L004C
	brset	3,STACK_0ce,L0098
	brclr	4,RAM1_05b,L0062
	brset	0,RAM1_061,L0055
	brclr	1,RAM1_05f,L0062
	brclr	3,RAM1_060,L0062
	bclr	3,RAM1_060
	brset	4,RAM1_05f,L005F
	bset	0,RAM1_060
	brset	1,Miscell,L0065
	brclr	2,RAM1_05b,L0068
	brclr	0,RAM1_061,L00AA
	rts
;
	jsr	L1FFF
	jsr	L1FF6
	jsr	L477E
	lda	#$C8
	sta	RAM1_063
	tst	RAM1_063
	beq	L00AA
	brclr	3,RAM1_067,L0082
	bclr	3,RAM1_067
	jsr	L47AA
	jsr	L47F4
	jsr	L3FBE
	brclr	7,RAM1_092,L0076
	brset	4,RAM1_092,L0076
	bset	0,RAM1_061
	bset	7,RAM1_060
	bset	6,RAM1_060
	bra	L00AA
;
	bclr	4,RAM1_061
	bset	0,RAM1_061
	clr	RAM1_093
	brclr	1,RAM1_05f,L00AA
	bclr	1,RAM1_061
	bra	L00AA
;
L08A3:
	bclr	0,RAM1_061
	brclr	1,RAM1_05f,L00AA
	bset	5,RAM1_05f
	jmp	L0506
;
L08AD:
	bclr	7,RAM1_069
	brset	4,RAM1_060,L0069
	brset	0,RAM1_060,L00B9
	lda	#$08
	sta	RAM1_060
	brset	3,RAM1_07f,L00C2
	brset	2,RAM1_07f,L00C2
	jsr	L0B7A
	brset	5,RAM1_05f,L00CB
	jsr	L0B7A
	jsr	L4769
	jsr	L2223
	clr	PLMA
	bih	L00D5
	jmp	L04E5
;
	brclr	2,RAM1_09e,L00DB
	jsr	L389F
	brset	6,RAM1_05f,L00E1
	jsr	L3069
	brset	5,RAM1_05f,L00E7
	jsr	L201B
	jsr	L0789
	brset	6,RAM1_05f,L00F4
	bclr	0,PortB
	ldx	#$02
	jsr	L2557
	brset	5,RAM1_05f,L0102
	brclr	6,RAM1_05f,L011B
	brclr	5,RAM1_061,L0102
	brset	0,RAM1_0a1,L012D
	bra	L011B
;
	jsr	L1FFF
	brclr	6,RAM1_05f,L0125
	bclr	3,PortA
	bset	3,DDRA
	jsr	L132A
	lda	#$89
	sta	RAM1_0b3
	lda	STACK_0c4
	sta	RAM1_0b7
	bset	5,RAM1_061
	bra	L012D
;
	brclr	7,RAM1_064,L0125
	bclr	6,RAM1_05f
	ldx	#$02
	jsr	L2557
	bclr	5,RAM1_061
	jsr	L3069
	jsr	L137A
	brclr	5,RAM1_05f,L015D
	bclr	1,RAM1_081
	bset	2,TCR
	bset	4,TCR
	jsr	L1FF6
	jsr	L477E
	jsr	L0B1D
	bset	4,RAM1_061
	bset	0,RAM1_080
	lda	#$80
	sta	RAM1_07d
	sta	RAM1_07b
	brclr	3,RAM1_08e,L014E
	ora	#$10
	sta	STACK_0d5
	bset	6,RAM1_094
	bset	5,RAM1_094
	bset	1,RAM1_094
	bclr	4,RAM1_06b
	bset	6,RAM1_095
	jmp	L09B7
;
	bclr	2,TCR
	brset	5,RAM1_061,L015A
	jsr	L3069
	brclr	3,RAM1_060,L0191
	brset	2,RAM1_05f,L016E
	jmp	L0A5B
;
	jsr	L2031
	lda	#$FA
	sta	TCR
	lda	#$64
	sta	RAM1_063
	jsr	L0789
	jsr	L3FBE
	brset	4,RAM1_060,L01B4
	brset	5,RAM1_05f,L01B4
	jsr	L2223
	brclr	6,RAM1_05f,L0179
	tst	RAM1_063
	bne	L0179
	bra	L01B4
;
	jsr	L1FE2
	lda	#$5A
	sta	TCR
	lda	#$FA
	sta	RAM1_063
	jsr	L0789
	jsr	L3FBE
	brset	4,RAM1_060,L01B4
	brset	5,RAM1_05f,L01B4
	brset	3,RAM1_060,L01B4
	brclr	4,RAM1_05f,L0198
	tst	RAM1_063
	bne	L019C
	bset	3,RAM1_060
	jmp	L0506
;
L09B7:
	lda	#$64
	sta	RAM1_063
	lda	#$1E
	sta	RAM1_068
	bclr	6,RAM1_067
	bclr	1,PortB
	lda	#$5B
	sta	RAM1_0a6
L09C7:
	cli
	brclr	6,RAM1_05f,L01D9
	jsr	L13E0
	jsr	L36F2
	jsr	L33FF
	jsr	L306C
	bset	0,PortB
	jsr	L0789
	jsr	L3FBE
	brset	4,RAM1_060,L01B4
	bil	L0254
	jsr	L4B17
	jsr	L2223
	brclr	2,TCR,L01F0
	jsr	L47F4
	brclr	3,RAM1_067,L01C7
	bclr	3,RAM1_067
	brclr	6,RAM1_05f,L0209
	jsr	L13BC
	jsr	L36AE
	jsr	L3072
	brclr	5,RAM1_067,L0209
	bclr	5,RAM1_067
	jsr	L13CE
	brclr	2,TCR,L023E
	brclr	5,RAM1_05f,L01B4
	jsr	L2C60
	jsr	L0BAC
	jsr	L47AA
	brclr	4,RAM1_067,L01C7
	bclr	4,RAM1_067
	dec	RAM1_0a7
	beq	L0236
	brset	7,RAM1_05f,L01C3
	lda	RAM1_09a
	cmp	#$F0
	bcs	L01C3
	brclr	3,RAM1_05f,L01C7
	brset	1,RAM1_05f,L01C7
	lda	#$02
	sta	RAM1_0a6
	bra	L01C7
;
	dec	RAM1_0a6
	bne	L01C7
	bclr	5,RAM1_05f
	bra	L01C7
;
	brset	5,RAM1_05f,L02A9
	brclr	0,RAM1_0a1,L0247
	jmp	L09B7
;
	brclr	6,RAM1_067,L0251
	brset	3,RAM1_0b9,L02A9
	tst	RAM1_063
	beq	L02A9
	jmp	L09C7
;
	bset	2,TCR
	bset	4,TCR
	jmp	L04E5
;
L0A5B:
	sei
	bclr	4,Miscell
	jsr	L1FE2
	lda	#$5A
	sta	TCR
	bset	1,Miscell
	lda	#$14
	sta	RAM1_063
	clr	PLMB
	clr	RAM1_076
	clr	RAM1_05e
	clr	RAM1_0a8
	clr	RAM1_0a6
L0A75:
	clr	ADSTAT
	clr	SCCR2
	cli
	jsr	L0789
	lda	#$08
	add	ACH
	sta	OCH2
	clr	OCL2
	wait
	brset	0,PortA,L0289
	lda	#$27
	sta	ADSTAT
	jsr	L21A2
	brset	5,RAM1_05f,L02A9
	tst	RAM1_063
	bne	L02B3
	brset	3,PortA,L02A6
	bclr	3,PortA
	bset	3,DDRA
	clra
	deca
	bne	L029F
	bclr	3,DDRA
	clr	RAM1_06a
	brclr	6,RAM1_05f,L02AC
	jmp	L0506
;
	bclr	0,DDRB
	brclr	7,RAM1_064,L02B3
	bclr	6,RAM1_061
	brset	6,RAM1_05f,L0275
	bil	L0254
	brclr	2,TCR,L02C7
	tst	RAM1_063
	bne	L0275
	bset	5,PortB
	bclr	3,PortA
	bset	3,DDRA
	bra	L0261
;
	brclr	7,ADSTAT,L02C7
	tst	RAM1_0a8
	bne	L02D9
	brclr	3,RAM1_0a6,L02F3
	lda	RAM1_0a4
	ldx	RAM1_0a5
	bsr	L0316
	bra	L0309
;
	lda	RAM1_0a8
	sub	ADDATA
	bcs	L02F3
	cmp	#$03
	bcs	L02F3
	bset	2,TCR
	bset	4,TCR
	bclr	3,PortB
	bset	3,DDRB
	lda	#$30
	sta	RAM1_063
	bclr	5,PortB
	bra	L030D
;
	lda	ADDATA
	add	RAM1_0a5
	sta	RAM1_0a5
	bcc	L02FD
	inc	RAM1_0a4
	inc	RAM1_0a6
	lda	RAM1_0a6
	bit	#$3F
	bne	L0313
	lda	RAM1_0a4
	ldx	RAM1_0a5
	bsr	L0318
	sta	RAM1_0a8
	clr	RAM1_0a5
	clr	RAM1_0a4
	clr	RAM1_0a6
	jmp	L0A75
;
	rolx
	rola
	rolx
	rola
	rolx
	rola
	rts
;
L0B1D:
	brset	7,RAM1_061,L0343
	ldx	#$A8
	jsr	L37C7
	sta	RAM1_085
	jsr	L124C
	jsr	L1267
	stx	RAM1_057
	ldx	#$AB
	jsr	L37C7
	add	#$FD
	add	RAM1_057
	bpl	L033B
	clra
	cmp	RAM1_085
	bcc	L0343
	sta	RAM1_085
	bset	3,RAM1_05c
	bclr	7,RAM1_082
	lda	#$FF
	sta	RAM1_088
	sta	RAM1_083
	jsr	L0F82
	clr	RAM1_082
	jsr	L0F4C
	jsr	L0F3F
	clr	RAM1_07e
	clr	RAM1_080
	clr	RAM1_087
	bset	4,RAM1_07e
	bset	3,RAM1_07e
	brclr	3,RAM1_05f,L0366
	brset	0,RAM1_081,L038B
	bclr	0,RAM1_081
	clrx
	brset	0,RAM1_061,L036E
	ldx	#$04
	lda	X1320,x
	sta	RAM1_08a
	bset	6,RAM1_082
	bclr	2,RAM1_06b
	bclr	1,RAM1_06b
	rts
;
L0B7A:
	brclr	3,PortB,L0384
	bclr	3,PortB
	lda	#$05
	jsr	L2531
	jsr	L0F4C
	bclr	1,PortB
	bclr	0,RAM1_081
	rts
;
L0B8C:
	brclr	7,RAM1_087,L03AB
	lda	#$01
	eor	TCR
	sta	TCR
	lda	OCL1
	add	#$A0
	tax
	lda	OCH1
	adc	#$01
	cmp	ACH
	bmi	L03A8
	bne	L03AB
	cpx	ACL
	bhi	L03AB
	lda	ACH
	inca
	rts
;
L0BAC:
	tst	RAM1_07e
	beq	L03EB
	brclr	2,RAM1_07e,L03BB
	bclr	2,RAM1_07e
	clr	RAM1_08a
	lda	#$DD
	sta	RAM1_087
	lda	#$FF
	brset	6,RAM1_07e,L03D6
	lda	#$C8
	brset	7,RAM1_07e,L03D6
	brclr	1,RAM1_07e,L03E0
	bclr	1,RAM1_07e
	lda	RAM1_082
	and	#$03
	cmp	#$02
	bne	L03E0
	bset	4,RAM1_080
	lda	#$05
	bclr	6,RAM1_07e
	bclr	7,RAM1_07e
	jsr	L0F4C
	jmp	L0CFB
;
	brclr	5,RAM1_07e,L03EB
	bclr	5,RAM1_07e
	brclr	6,RAM1_082,L03EB
	jmp	L0CE4
;
L0BEB:
	brclr	6,RAM1_082,L03F1
	jmp	L0CA7
;
	brset	2,RAM1_0be,L03F7
	brset	3,RAM1_07f,L0430
	brset	7,RAM1_087,L045E
	brset	0,RAM1_080,L0430
	brset	5,RAM1_07f,L0452
	brset	7,RAM1_07f,L0458
	brset	6,RAM1_07f,L044C
	brset	4,RAM1_082,L0417
	brclr	5,RAM1_080,L0417
	lda	RAM1_088
	add	#$34
	bcc	L0417
	bclr	5,RAM1_082
	jmp	L0CD0
;
	lda	RAM1_07f
	and	#$03
	bne	L0433
	lda	RAM2_0266
	bpl	L0430
	lda	RAM2_0265
	cmp	#$40
	beq	L042D
	cmp	#$30
	bne	L0430
	jmp	L0CDA
	jmp	L0CC6
;
	deca
	bne	L0449
	ldx	#$AD
	jsr	L37C7
	beq	L0440
	brset	1,RAM1_07c,L044C
	brset	7,RAM1_07c,L0430
	brset	1,RAM1_07c,L0430
	jmp	L0CDA
;
	deca
	bne	L0452
	brset	0,RAM1_0ba,L04C6
	jmp	L0CDA
;
	brset	6,RAM1_080,L04C6
	jmp	L0CDA
;
	lda	#$80
	sta	RAM1_087
	bra	L04DA
;
	dec	RAM1_08a
	bpl	L04C5
	lda	RAM1_087
	and	#$1F
	cmp	#$1F
	bne	L046E
	bclr	1,RAM1_087
	bclr	6,RAM1_087
	inc	RAM1_087
	brset	6,RAM1_087,L0476
	brclr	0,RAM1_087,L0499
	jsr	L122E
	beq	L0480
	brset	6,RAM1_087,L04F9
	bra	L04F6
;
	brclr	5,RAM1_07f,L048F
	bclr	7,RAM1_07f
	bclr	7,RAM1_082
	bclr	6,RAM1_082
	clr	RAM1_08a
	bclr	0,RAM1_082
	bra	L04F6
;
	brclr	0,RAM1_087,L0499
	jsr	L0F67
	lda	#$14
	bra	L04A2
;
	lda	#$FE
	sta	RAM1_088
	jsr	L0F4C
	lda	#$50
	sta	RAM1_08a
	jmp	L0D77
;
L0CA7:
	dec	RAM1_08a
	bne	L04C5
	brclr	0,RAM1_081,L0501
	lda	#$02
	sta	RAM1_08a
	jsr	L122E
	beq	L04E4
	brclr	7,RAM1_082,L04D3
	eor	RAM1_082
	sta	RAM1_082
	bset	3,RAM1_07e
	bset	3,RAM1_0bc
	jsr	L0F3F
	rts
;
L0CC6:
	brclr	5,RAM1_082,L04CC
	brclr	4,RAM1_082,L04D0
	bset	5,RAM1_082
	bra	L04A4
;
L0CD0:
	brset	7,RAM1_082,L04A4
	brset	7,RAM1_082,L04DA
	jsr	L0F4C
	rts
;
L0CDA:
	jsr	L122E
	bne	L04F6
	bclr	5,RAM1_082
	brclr	7,RAM1_082,L04A4
L0CE4:
	bclr	6,RAM1_082
	bclr	4,RAM1_080
	brclr	7,RAM1_082,L04C5
	clr	RAM1_08a
	brset	0,RAM1_080,L04C5
	jsr	L0F67
	jmp	L0BEB
;
	brclr	7,RAM1_082,L04C6
	lda	#$02
L0CFB:
	sta	RAM1_08a
	bset	6,RAM1_082
	bra	L0577
;
	brclr	1,RAM1_081,L054C
	brset	2,RAM1_082,L0566
	brclr	3,RAM1_082,L0518
	brclr	1,PortB,L0513
	bclr	1,PortB
	ldx	#$04
	bra	L0562
;
	brclr	7,RAM1_06b,L0566
	bra	L055E
;
	brset	2,RAM1_0be,L04C5
	brclr	3,PortB,L052A
	bclr	3,PortB
	ldx	#$01
	brclr	7,RAM1_06b,L056F
	brclr	1,PortB,L056F
	bra	L056B
;
	ldx	#$02
	brclr	0,RAM1_061,L056D
	brset	7,RAM1_06b,L0538
	bset	7,RAM1_06b
	bset	6,RAM1_095
	bra	L056F
;
	brset	1,PortB,L0541
	bset	1,PortB
	ldx	#$01
	bra	L056F
;
	ldx	#$03
	brclr	1,RAM1_090,L056D
	bset	3,PortB
	ldx	#$06
	bra	L056F
;
	brset	0,RAM1_061,L0559
	brset	7,RAM1_05f,L0566
	brset	3,RAM1_05f,L0566
	bclr	3,PortB
	bra	L056B
;
	brset	1,PortB,L0566
	bset	1,PortB
	bclr	7,RAM1_06b
	bset	6,RAM1_095
	ldx	#$04
	bra	L056F
;
	brclr	0,PortC,L056B
	bset	3,PortB
	ldx	#$05
	bset	0,RAM1_081
	lda	X1320,x
	sta	RAM1_08a
	bset	4,TCR
	rts
;
L0D77:
	ldx	RAM1_085
	lda	X12D0,x
	brclr	1,RAM1_081,L0582
	lda	X12F0,x
	sta	RAM1_058
	brset	4,RAM1_080,L0596
	brset	6,RAM1_082,L0593
	brset	7,RAM1_087,L0596
	brset	7,RAM1_082,L0593
	brclr	5,RAM1_082,L0596
	jmp	L0E6D
;
	jsr	L124C
	brset	7,RAM1_087,L05B9
	brset	4,RAM1_07f,L05E0
	ldx	#$A9
	jsr	L125B
	brclr	5,RAM1_07f,L05AA
	brset	1,RAM1_0a1,L05B3
	brclr	6,RAM1_07f,L05E0
	tst	RAM1_058
	beq	L05C3
	dec	RAM1_058
	stx	RAM1_086
	lda	RAM1_057
	bra	L05C3
;
	brclr	6,RAM1_087,L05C3
	add	X1327
	bcc	L05C3
	lda	#$FF
	cmp	RAM1_058
	bhi	L05C9
	sta	RAM1_058
	brclr	7,RAM1_087,L05E0
	brset	6,RAM1_087,L05E0
	lda	RAM1_087
	lsra
	and	#$0F
	tax
	lda	RAM1_058
	add	X1310,x
	bcc	L05DE
	lda	#$FF
	sta	RAM1_058
	brset	6,RAM1_081,L05EF
	lda	RAM1_084
	beq	L05EF
	asla
	nega
	add	RAM1_058
	bcs	L05F1
	clra
	cmp	XB658
	brclr	3,RAM1_081,L05F8
	lda	#$80
	sub	RAM1_085
	sta	RAM1_058
	brset	2,RAM1_0be,L062F
	brset	3,RAM1_082,L066D
	brset	2,RAM1_082,L061C
	brset	2,RAM1_06b,L0609
	brclr	1,RAM1_06b,L060F
	bclr	2,RAM1_06b
	bclr	1,RAM1_06b
	bset	6,RAM1_095
	brclr	1,RAM1_081,L062F
	brset	1,PortB,L062F
	brset	4,RAM1_082,L062F
	bset	3,RAM1_082
	bra	L066D
;
	ldx	#$AE
	jsr	L37C7
	and	#$07
	deca
	asla
	asla
	add	X1328
	add	RAM1_058
	bcs	L066D
	sta	RAM1_058
	brset	7,RAM1_081,L064A
	brset	5,RAM1_07f,L064A
	brset	6,RAM1_07f,L064A
	brset	3,RAM1_081,L064A
	ldx	#$00
	brclr	1,RAM1_081,L0642
	ldx	#$10
	jsr	L1279
	coma
	and	#$0F
	bra	L064B
;
	clra
	sta	RAM1_059
	cmp	RAM1_083
	beq	L0661
	bcc	L065C
	lda	RAM1_083
	deca
	and	#$0F
	sta	RAM1_083
	bra	L065E
;
	sta	RAM1_083
	jsr	L0F73
	asl	RAM1_059
	lda	RAM1_058
	sub	RAM1_059
	bcc	L066A
	clra
	asla
	bcc	L066F
L0E6D:
	lda	#$FF
	sta	RAM1_058
	sta	RAM1_059
	brset	6,RAM1_082,L0685
	brset	7,RAM1_087,L0685
	lda	RAM1_088
	sub	RAM1_058
	beq	L06DD
	rora
	eor	#$7F
	brclr	4,RAM1_081,L0689
	lda	RAM1_058
	bra	L06CA
;
	ldx	#$20
	jsr	L1279
	asla
	brset	5,RAM1_082,L0694
	add	#$10
	add	#$00
	tax
	lda	X12B0,x
	dec	RAM1_08a
	bmi	L06BA
	tsta
	bmi	L06AB
	tst	RAM1_089
	bmi	L06C1
	cmp	RAM1_089
	bhi	L06B3
	bra	L06E5
;
	tst	RAM1_089
	bpl	L06C1
	cmp	RAM1_089
	bcc	L06A9
	tax
	sub	RAM1_089
	stx	RAM1_089
	bra	L06C8
;
	tsta
	bne	L06C1
	lda	RAM1_058
	sub	RAM1_088
	ldx	X12B1,x
	stx	RAM1_08a
	sta	RAM1_089
	add	RAM1_088
	bset	4,RAM1_082
	cmp	RAM1_059
	bne	L06D2
	bclr	4,RAM1_082
	cmp	RAM1_088
	beq	L06DF
	sta	RAM1_088
	jsr	L0F82
	bra	L06E5
;
	bclr	4,RAM1_082
	brset	4,RAM1_07e,L06D8
	brset	3,RAM1_07e,L06D8
	lda	RAM1_082
	and	#$0C
	tax
	brclr	0,RAM1_080,L06F0
	brset	0,RAM1_061,L06F2
	eor	RAM1_07f
	and	#$0C
	beq	L073E
	brclr	5,RAM1_082,L06FC
	brclr	7,RAM1_082,L073E
	tstx
	beq	L0700
	txa
	eor	RAM1_082
	sta	RAM1_082
	bset	6,RAM1_095
	bclr	2,RAM1_06b
	bclr	1,RAM1_06b
	brclr	1,RAM1_081,L0720
	brset	3,RAM1_082,L0715
	brclr	2,RAM1_082,L0717
	bset	2,RAM1_06b
	bset	1,RAM1_06b
	bclr	0,RAM1_081
	lda	#$05
	sta	RAM1_08a
	bset	6,RAM1_082
	rts
;
	brclr	3,RAM1_082,L072F
	ldx	#$AF
	jsr	L37C7
	rora
	bcc	L0734
	bset	2,RAM1_06b
	bra	L0736
;
	brclr	2,RAM1_082,L0739
	bset	2,RAM1_06b
	bset	1,RAM1_06b
	bset	3,PortB
	rts
;
	brset	0,RAM1_061,L073E
	bclr	3,PortB
	rts
;
L0F3F:
	lda	RAM1_082
	and	#$03
	tax
	lda	X11B1,x
	sta	RAM1_050
	clra
	bra	L0779
;
L0F4C:
	bset	7,RAM1_082
	brset	5,RAM1_081,L073E
	lda	#$FF
	cmp	RAM1_088
	beq	L075B
	sta	RAM1_088
	bsr	L0787
	lda	#$FF
	sta	RAM1_050
	lda	#$03
	bsr	L0779
	lda	#$81
	bra	L076D
;
L0F67:
	bclr	7,RAM1_082
	bset	3,RAM1_07e
	lda	#$80
	sta	RAM1_050
	lda	#$08
	bra	L0779
;
L0F73:
	lda	RAM1_083
	sta	RAM1_050
	lda	#$01
L0F79:
	ldx	#$88
	brclr	0,PortC,L0781
	jsr	L11B5
	rts
;
L0F82:
	lda	RAM1_088
	brset	7,RAM1_082,L0781
	brclr	5,RAM1_07f,L0792
	brset	5,RAM1_082,L0792
	add	#$E0
	bcs	L0792
	clra
	brclr	1,RAM1_081,L07BB
	brclr	1,RAM1_082,L07A2
	brset	0,RAM1_082,L07AF
	brclr	2,RAM1_0b8,L07AF
	lda	#$08
	bra	L07A9
;
	lda	#$14
	brclr	0,RAM1_082,L07A9
	lda	#$0C
	nega
	add	RAM1_088
	bcs	L07AF
	clra
	cmp	#$30
	bcc	L07B5
	lda	#$30
	cmp	#$44
	bcc	L07BB
	bset	3,RAM1_07e
	sta	RAM1_056
	bclr	7,RAM1_05b
	ldx	#$A0
	jsr	L10A5
	sta	RAM1_059
	ldx	#$A1
	jsr	L10A5
	sta	RAM1_058
	brset	5,RAM1_082,L07F8
	brclr	3,RAM1_07e,L07F8
	bclr	3,RAM1_07e
	bmi	L07D9
	coma
	cmp	XAB07
	and	#$0F
	sta	RAM1_050
	lda	RAM1_059
	bmi	L07EA
	coma
	bit	#$08
	bne	L07EC
	sub	#$0D
	add	#$07
	jsr	L252C
	add	RAM1_050
	sta	RAM1_050
	lda	#$03
	jsr	L0F79
	lda	RAM1_058
	bne	L0008
	lda	RAM1_059
	add	#$08
	sta	RAM1_057
	tax
	lda	X10ED,x
	bra	L001D
;
	add	#$08
	sta	RAM1_057
	lda	RAM1_059
	bpl	L0011
	nega
	jsr	L252C
	add	RAM1_057
	tax
	lda	X10ED,x
	brclr	7,RAM1_059,L0020
	jsr	L252C
	jsr	L2525
	brset	3,RAM1_057,L0034
	brset	7,RAM1_05b,L0033
	nega
	beq	L0033
	add	RAM1_056
	bcs	L003A
	clra
	bra	L003A
;
	clra
	add	RAM1_056
	bcc	L003A
	lda	#$FF
	sta	RAM1_050
	lda	#$02
	jsr	L0F79
	brclr	4,RAM1_07e,L00A4
	bclr	4,RAM1_07e
	lda	#$88
	sta	RAM1_055
	lda	#$14
	sta	RAM1_054
	lda	#$E0
	ldx	#$53
	stx	RAM1_057
	ldx	RAM1_057
	clr	,x
	sta	RAM1_056
	ldx	#$A3
	jsr	L37C7
X105E:
	brclr	6,RAM1_08e,L0062
	clra
	eor	RAM1_056
	bit	#$20
	bne	L0076
	jsr	L37C7
	brclr	6,RAM1_08e,L006F
	clra
	bpl	L0072
	nega
	add	#$10
	bsr	L0096
	ldx	#$A2
	jsr	L37C7
	eor	RAM1_056
	bit	#$40
	beq	L0089
	jsr	L37C7
	bpl	L0087
	nega
	bsr	L0096
	dec	RAM1_057
	lda	RAM1_056
	sub	#$20
	bmi	L0054
	ldx	#$55
	jmp	L11BB
;
	tax
	lda	X1191,x
	ldx	RAM1_057
	add	,x
	cmp	#$1F
	bls	L00A3
	lda	#$1F
	sta	,x
	rts
;
L10A5:
	clra
	brset	5,RAM1_082,L00B2
	brset	5,RAM1_07f,L00EB
	brset	6,RAM1_07f,L00EB
	brset	3,RAM1_081,L00EB
	jsr	L37C7
	add	#$06
	bpl	L00BB
	lda	#$06
	cpx	#$A0
	bne	L00C1
	add	#$0D
	brclr	1,RAM1_081,L00C6
	add	#$1A
	tax
	lda	X115D,x
	bmi	L00EB
	brclr	1,RAM1_081,L00EB
	ldx	RAM1_056
	cpx	#$44
	bcc	L00EB
	clr	RAM1_053
	cpx	#$36
	bcs	L00E3
	inc	RAM1_053
	cpx	#$3C
	bcs	L00E3
	inc	RAM1_053
	cmp	RAM1_053
	bls	L00EB
	lda	RAM1_053
	bset	7,RAM1_05b
	tsta
	rts
;
X10ED:
	brset	0,PortA,L0160
;
	db	$72, $62, $51, $41
;
	brn	L00F6
	brn	L0139
;
	db	$52, $62, $72
;
	neg	,x
	brset	0,PortA,L00FF
	asl	,x
	asr	RAM1_057,x
	rorx
;
	db	$35
;
	bclr	1,PortA
;
	db	$32
;
	comx
;
	db	$65, $75
;
	ror	,x
;
	db	$86
;
	brset	0,PortA,L010F
	asl	RAM1_068,x
	asrx
	rora
;
	db	$35
;
	bclr	1,PortA
;
	db	$41
;
	comx
	lsr	,x
;
	db	$75, $85, $86
;
	brset	0,PortA,L011F
	rol	RAM1_058,x
	aslx
	asra
	bcs	L0139
	brset	0,X0041,L018B
	lsr	,x
;
	db	$75, $85, $86
;
	brset	0,PortA,L012F
	rolx
	aslx
	asla
	asra
	bne	L0149
	brset	0,X0041,L019B
	lsr	,x
;
	db	$84, $85, $95
;
	brset	0,PortA,L013F
	rolx
	aslx
	asla
	asra
	bcs	L0159
	brset	0,X0041,L01AA
	lsr	,x
;
	db	$84, $85, $95
;
	brset	0,PortA,L014F
	rolx
	aslx
	asla
	asra
	bcs	L0169
	brset	0,X0041,L01BA
	lsr	,x
;
	db	$84, $85
X115B:
	db	$95
;
	brset	0,STACK_0fa,L015A
	jmp	,x						;INFO: index jump
;
	jsr	,x						;INFO: index jump
	ldx	,x
	stx	,x
	brset	0,PortB,L0168
	brclr	1,DDRA,L016E
	brset	3,STACK_0fb,L0168
	jsr	,x						;INFO: index jump
	jsr	,x						;INFO: index jump
	ldx	,x
	ldx	,x
	stx	,x
	brset	0,PortB,L0175
	brset	1,PortD,L017A
	add	,x
	add	,x
	jmp	,x						;INFO: index jump
;
	jsr	,x						;INFO: index jump
	ldx	,x
	stx	,x
	brset	0,PortB,L0181
	brset	1,PortC,L0186
	brclr	1,STACK_0fb,L0181
	jmp	,x						;INFO: index jump
;
	jsr	,x						;INFO: index jump
	ldx	,x
	stx	,x
	brset	0,PortB,L018E
	brset	1,PortC,L0193
	brclr	1,PortA,L0194
	brset	1,PortD,L019A
	brclr	2,DDRC,L01A0
	brset	4,ADSTAT,L01A6
	brclr	5,Miscell,L01AC
	brset	7,SCCR2,L01A2
	brclr	0,PortC,L01A8
	brset	2,DDRB,L01AE
	brclr	3,ADDATA,L01B4
	brset	5,PLMB,L01BA
	brclr	6,SCCR1,L01D0
X11B1:
	asl	X0039
	dec	X002B
L11B5:
	sta	RAM1_051
	stx	RAM1_052
	ldx	#$52
L11BB:
	stx	RAM1_05a
	bsr	L01C5
	bcc	L0224
	bsr	L01C5
	bcc	L0224
	ldx	RAM1_05a
	bsr	L0225
	lda	,x
	bsr	L01D6
	bcs	L021A
	decx
	cpx	#$50
	bcc	L01C9
	clc
	bra	L021A
;
	sec
	rola
	bcs	L01DE
	bsr	L01F0
	bra	L01E2
;
	bclr	6,DDRA
	bra	L01E2
;
	bsr	L01E9
	asla
	bne	L01D8
	bclr	6,DDRA
	bclr	7,DDRA
	brset	6,PortA,L01EE
	bra	L0229
;
	bset	6,DDRA
	bclr	6,PortA
	rts
;
	bsr	L0225
	bsr	L01D6
	bcs	L021A
	bsr	L0229
	lda	#$01
	bclr	6,DDRA
	bclr	7,DDRA
	brset	6,PortA,L0206
	rola
	bsr	L0229
	bcc	L01FF
	sta	,x
	dec	RAM1_059
	bmi	L0217
	bsr	L01F0
	decx
	bclr	7,DDRA
	bra	L01FB
;
	bsr	L01E7
	clc
	bsr	L0229
	bsr	L01F0
	bclr	7,DDRA
	bsr	L0224
	bclr	6,DDRA
	rts
;
	bsr	L021E
	bsr	L01F0
	bset	7,DDRA
	bclr	7,PortA
	rts
;
L122E:
	lda	#$03
	brset	5,RAM1_07f,L0245
	brset	7,RAM1_07f,L0247
	brset	6,RAM1_087,L0247
	deca
	brset	6,RAM1_07f,L0245
	brclr	0,RAM1_07f,L0243
	brset	1,RAM1_07c,L0245
	lda	RAM1_07f
	clr	RAM1_087
	eor	RAM1_082
	and	#$03
	rts
;
L124C:
	ldx	#$10
	jsr	L37C7
	brclr	1,RAM1_081,L025A
	add	#$10
	bcc	L025A
	lda	#$FF
	rts
;
L125B:
X125B:
	sta	RAM1_057
	jsr	L37C7
	asla
	asla
	add	#$F4
	nega
	add	RAM1_057
L1267:
	sta	RAM1_057
	clrx
	incx
	lda	X12D0,x
	brclr	1,RAM1_081,L0274
	lda	X12F0,x
	cmp	RAM1_057
	bhi	L026A
	rts
;
L1279:
	clr	RAM1_057
	add	X1288,x
	bcs	L0285
	inc	RAM1_057
	incx
	bra	L027B
;
	lda	RAM1_057
	rts
;
X1288:
	sta	DDRA
	brset	2,DDRA,L0291
	brset	2,DDRA,L0294
	brset	2,STACK_0ff,L0293
	brset	0,PortA,L0296
	brset	0,PortA,L0228
	brset	3,DDRC,L02A2
	brset	3,DDRC,L02A5
	brset	3,DDRC,L02A8
	brset	3,DDRC,L02AB
	brset	3,DDRC,L02A7
	bra	L02EA
;
	bset	3,PLMA
	brset	1,SCCR1,L02CF
	stx	,x
X12B0:
	bra	L02B2
;
	bset	0,PortA
	brset	4,PortA,L02B7
	brset	0,PortA,L02BA
	ldx	,x
	brclr	1,STACK_0fc,L02BE
	eor	,x
	brset	0,Miscell,L02C2
	brset	3,PortA,L02C7
	brset	0,PortA,L02C8
	brset	0,PortA,L02C9
	brclr	1,STACK_0fc,L02CE
	eor	,x
	brset	0,RAM1_09c,L026E
;
	db	$90, $84
;
	asl	,x
	inc	RAM1_064,x
	incx
	lsrx
;
	db	$4E
;
	asla
	lsra
	nega
	inc	X0038
	lsr	X0030
	bmc	L030B
	bne	L0309
	bhi	L0307
	bset	7,ICH2
	bset	5,TCH
	bset	3,ICH1
	bset	1,SCSR
	bset	0,RAM1_09c
;
	db	$92, $88, $7E
;
	lsr	,x
	dec	RAM1_062,x
	decx
	lsrx
;
	db	$4E
;
	asla
	lsra
	nega
	inc	X0038
	ror	X0034
;
	db	$32
;
	neg	X002E
	bmc	L0330
	bhcc	L032E
	bcc	L032C
	bra	L032A
;
	bset	6,ACH
	bset	4,TCH
X1310:
	bset	7,ICH2
	bset	5,TCH
	bset	3,ICH1
	bset	1,SCSR
	brset	7,Miscell,L0325
	brset	4,DDRC,L0322
	brset	1,PortA,L032B
	bset	2,PortD
	negx
	bhcc	L032B
	inc	TCH
X1328:
	brset	0,SCSR,L0338
;
	db	$61
;
	brclr	5,Miscell,L02E9
	brclr	2,PLMA,L02EC
	bclr	3,X0020
	brclr	1,PLMB,L02F1
	bset	1,TCL
	brclr	0,ICL2,L02F6
	bset	5,RAM1_0ba
	clr	STACK_0d6
	clr	STACK_0c1
	jsr	L1E26
	bset	0,RAM1_0ba
	jsr	L254E
	bset	4,PortB
	ldx	#$B0
	jsr	L37C7
	and	#$62
	ora	#$80
	brclr	4,RAM1_0b5,L035A
	ora	#$10
	sta	RAM1_0b5
	clr	RAM1_0bf
	jsr	L253F
	brclr	0,RAM1_061,L0377
	clr	RAM1_0bc
	bset	2,RAM1_0bc
	brclr	4,RAM1_069,L0377
	brset	1,RAM1_05f,L0377
	bclr	6,RAM1_0b5
	lda	RAM1_0b5
	ldx	#$B0
	jsr	L379B
	bset	4,RAM1_0bc
	rts
;
L137A:
	brclr	6,RAM1_061,L0385
	brset	6,RAM1_0ba,L0385
	lda	#$05
	brclr	5,RAM1_0ba,L0387
	lda	#$28
	sta	RAM1_063
	bset	6,RAM1_0ba
	bset	5,RAM1_0ba
	lda	#$30
	ldx	#$01
	jsr	L1B82
	brclr	3,RAM1_067,L039F
	bclr	3,RAM1_067
	jsr	L13BC
	jsr	L36AE
	jsr	L0789
	jsr	L36F2
	jsr	L13E0
	brclr	6,RAM1_0ba,L03B1
	bclr	6,STACK_0d6
	tst	RAM1_063
	bne	L0394
	jsr	L36F2
	jsr	L1E26
	bclr	5,RAM1_0ba
	bclr	6,RAM1_0ba
	rts
;
L13BC:
	brset	7,STACK_0d6,L03FA
	brset	6,RAM1_0ba,L03C5
	brclr	5,RAM1_0ba,L03E9
	lda	RAM1_0bb
	sta	RAM1_058
	jsr	L13FB
	bra	L03F0
;
L13CE:
	brset	7,STACK_0d6,L03FA
	brset	6,RAM1_0ba,L03D7
	brclr	5,RAM1_0ba,L03E9
	lda	RAM1_0bb
	sta	RAM1_058
	jsr	L1506
	bra	L03F0
;
L13E0:
	lda	RAM1_0bb
	sta	RAM1_058
	jsr	L157D
	bra	L03F0
;
	brclr	0,RAM1_061,L03F0
	bclr	5,RAM1_061
	bset	2,RAM1_05d
	lda	RAM1_0bb
	cmp	RAM1_058
	beq	L03FA
	bset	6,STACK_0cb
	bset	5,STACK_0cb
	rts
;
L13FB:
	brclr	4,RAM1_0bc,L0403
	bclr	4,RAM1_0bc
	jmp	L1A4E
;
	brset	7,STACK_0c1,L0409
	brset	6,STACK_0c1,L040F
	brclr	3,RAM1_0bc,L040F
	jmp	L18FF
;
	brclr	2,STACK_0c0,L0415
	jmp	L1C56
;
	lda	RAM1_0b3
	bne	L0420
	jsr	L1494
	jsr	L14CB
	rts
;
	bmi	L0461
	brset	4,RAM1_0b3,L043E
	bit	#$60
	beq	L042E
	jsr	L184C
	bra	L0430
;
	clr	RAM1_0b3
L1430:
	bclr	0,RAM1_0ba
	brset	7,RAM1_0b9,L043B
	brclr	6,RAM1_0ba,L043B
	brclr	6,STACK_0c1,L043D
	bset	0,RAM1_0ba
	rts
;
	lda	STACK_0c1
	and	#$86
	cmp	#$86
	bne	L0449
	jsr	L1C2B
	lda	#$B4
	brset	5,RAM1_0b6,L045F
	lda	#$88
	brclr	7,RAM1_0ba,L042E
	brclr	2,RAM1_0b6,L042E
	brclr	1,RAM1_0b6,L045F
	brset	5,RAM1_0b3,L045F
	brclr	0,RAM1_0b6,L042E
	sta	RAM1_0b3
	bclr	7,RAM1_0b3
	bclr	2,RAM1_0bb
	and	#$07
	tax
	lda	RAM1_0b4
	bpl	L0472
	and	#$7F
	sta	RAM1_0b4
	sta	RAM1_0b8
	ldx	X1989,x
	jsr	L19E9,x						;INFO: index jump
	brset	7,RAM1_0b3,L0430
	lda	RAM1_0b3
	cmp	#$70
	bcc	L042E
	bclr	3,RAM1_0bb
	brset	4,RAM1_0b3,L042E
	sta	RAM1_0b6
	bclr	5,RAM1_0bc
	and	#$07
	cmp	#$07
	bne	L042E
	bset	4,RAM1_0b6
	bra	L042E
;
L1494:
	lda	STACK_0c1
	bit	#$C0
	beq	L04AB
	and	#$86
	cmp	#$86
	bne	L04C9
	bclr	5,RAM1_0bc
	bclr	2,RAM1_0bb
	jsr	L1E12
	beq	L04B4
	bclr	2,RAM1_0ba
	bclr	4,STACK_0c0
	lda	#$97
	ldx	#$C0
	jsr	L1C2D
	jsr	L1E1D
	brclr	4,RAM1_0bf,L04C5
	brset	2,RAM1_0be,L04C9
	brset	1,RAM1_0be,L04C9
	brclr	7,RAM1_0bf,L04C9
	bclr	7,RAM1_0bf
	bset	4,RAM1_0bf
	bset	3,RAM1_0bc
	rts
	rts
;
L14CB:
	brset	4,STACK_0c1,L0505
L14CE:
	dec	STACK_0c3
	bne	L0505
	lda	STACK_0c1
	cmp	#$60
	beq	L04E0
	brclr	3,RAM1_0bc,L04E0
	inc	STACK_0c3
	jmp	L18FF
;
	brclr	7,STACK_0c1,L04F2
	bclr	7,STACK_0c1
	bclr	6,STACK_0c1
	lda	STACK_0c1
	and	#$07
	tax
	ldx	X1CC1,x
	jmp	L1CC9,x						;INFO: index jump
;
	brclr	6,STACK_0c1,L0503
	bclr	6,STACK_0c1
	lda	RAM1_0b6
	and	#$07
	tax
	ldx	X1BB7,x
	jsr	L1BBF,x						;INFO: index jump
	cmp	X3FC1
	rts
;
L1506:
	brset	7,RAM1_0ba,L0551
	jsr	L1DF8
	beq	L0551
	lda	RAM1_0be
	brset	5,RAM1_0b9,L0533
	brset	4,RAM1_0b9,L0529
	brclr	1,RAM1_0be,L051E
	brclr	3,RAM1_0b9,L0521
	bra	L054D
;
	brset	3,RAM1_0ba,L054D
	bit	#$F0
	beq	L0551
	ora	#$F0
	bra	L0555
;
	brclr	1,RAM1_0be,L052F
	brset	0,RAM1_0be,L0544
	lda	#$02
	bra	L053B
;
	brclr	2,RAM1_0be,L0539
	brset	0,RAM1_0be,L0544
	lda	#$04
	bset	7,RAM1_0bf
	bset	5,STACK_0cb
	bset	3,RAM1_0bc
	inca
	bset	4,RAM1_0ba
	and	#$07
	ora	#$20
	brclr	6,RAM1_0b9,L054D
	ora	#$C0
	add	#$F0
	bcs	L0555
	jsr	L1E30
	clra
	sta	RAM1_0be
	brclr	4,STACK_0c1,L0505
	jmp	L14CE
;
X155D:
	brclr	1,RAM1_06c,L050B
	brset	0,STACK_0cd,L0558
	brclr	1,PortD,L0569
	bih	L056B
	brset	3,RAM1_0b7,L05C1
	bsr	L0572
	lda	RAM1_056
	jsr	L252C
L1572:
	jsr	L2441
	cmp	XA620
	sta	RAM2_0288,x
	incx
	rts
;
L157D:
	brclr	3,STACK_0d6,L057C
	bclr	3,STACK_0d6
	bset	6,RAM1_0ba
	ldx	RAM2_0271
	stx	RAM1_05b
	lsrx
	lsrx
	lsrx
	cpx	#$0C
	bcc	L059C
	ldx	X155D,x
	lda	RAM2_0272
	jmp	L1599,x						;INFO: index jump
L1599:
	jmp	L16C2
	jmp	L16BF
;
	bset	6,RAM1_0bb
	bset	2,RAM1_0bf
	cmp	RAM2_0273
	bcs	L05AA
	bclr	2,RAM1_0bf
	brclr	4,STACK_0ce,L059C
	clrx
	lda	RAM2_0274
	bsr	L0572
	bsr	L0576
	lda	RAM2_0273
	jsr	L1572
	bsr	L0576
	brset	0,RAM1_0bb,L0600
	bsr	L0576
	cpx	#$08
	bne	L05C0
	bra	L0600
;
	brclr	1,RAM1_05b,L0602
	lda	RAM2_0274
	bmi	L05E3
	eor	STACK_0c5
	and	#$1F
	bne	L05D9
	brset	7,STACK_0c5,L05E3
	eor	STACK_0c5
	sta	STACK_0c5
	bset	5,STACK_0c5
	bset	6,STACK_0c5
	bset	7,STACK_0c5
	brclr	4,STACK_0ce,L0600
	brset	6,RAM1_0bb,L05F0
	clrx
	bsr	L0576
	cpx	#$04
	bne	L05EA
	bset	0,RAM1_0bb
	ldx	#$04
	lda	RAM2_0273
	jsr	L1569
	lda	RAM2_0272
	jsr	L1569
	bset	6,STACK_0cb
	jmp	L16BF
;
	ldx	RAM1_05b
	cpx	#$08
	beq	L0618
	cpx	#$0B
	bne	L0602
	brclr	6,STACK_0ce,L0615
	jsr	L1E5C
	lda	RAM2_0275
	bclr	5,RAM1_0ba
	bclr	6,RAM1_0ba
	tsta
	bpl	L0621
	bset	6,RAM1_0ba
	bclr	3,RAM1_0ba
	bit	#$40
	beq	L063B
	bset	3,RAM1_0ba
	bit	#$20
	beq	L063B
	tax
	lda	RAM1_0b8
	and	#$0F
	ora	#$80
	sta	RAM1_0b4
	lda	#$CA
	sta	RAM1_0b3
	txa
	jsr	L2525
	eor	RAM1_0b9
	and	#$07
	bra	L06A9
;
	bclr	4,RAM1_0bb
	brclr	2,RAM1_05b,L0602
	ldx	#$07
	stx	RAM1_056
	lda	#$07
	sub	RAM1_056
	tax
	lda	RAM2_0272,x
	ldx	RAM1_056
	sta	RAM2_0280,x
	dec	RAM1_056
	bpl	L064D
	bset	4,RAM1_0bb
	bset	2,RAM1_094
	bset	5,RAM1_0bb
	bra	L0600
;
	bclr	1,RAM1_0bb
	bit	#$10
	beq	L066E
	bset	1,RAM1_0bb
	and	#$87
	bpl	L067E
	ora	#$10
	brset	7,RAM1_0b9,L0685
	bclr	4,RAM1_0bb
	jsr	L174C
	bra	L0683
;
	brclr	7,RAM1_0b9,L0685
	bclr	7,RAM1_0ba
	bset	7,STACK_0cb
	jsr	L252D
	eor	RAM1_0b9
	and	#$B8
	bra	L06A9
;
	brset	0,RAM1_0bf,L06A7
	lda	RAM2_0271
	and	#$03
	tax
	lda	RAM2_0272,x
	sta	RAM1_056
	and	#$07
	tax
	ldx	X1720,x
	bclr	7,RAM1_0ba
	jsr	L1726,x						;INFO: index jump
	bra	L06BF
;
	bset	5,STACK_0cb
	beq	L06BF
	eor	RAM1_0b9
	sta	RAM1_0b9
	brset	2,RAM1_0b8,L06BF
	brclr	3,RAM1_0b9,L06BF
	ldx	#$B2
	jsr	L37C7
	jsr	L1DEE
L16BF:
	bset	6,STACK_0d6
	rts
;
L16C2:
	brset	0,RAM1_0bf,L06A7
	lda	RAM2_0273
	brset	3,RAM1_0b6,L06CF
	cmp	#$FF
	beq	L070F
	sta	RAM1_0b7
	lda	RAM1_0b6
	and	#$07
	cmp	#$04
	bne	L06E4
	jsr	L1E35
	eor	STACK_0c0
	and	#$03
	beq	L06E4
	bset	2,STACK_0c0
	lda	RAM2_0272
	bmi	L06F3
	brclr	6,RAM1_0b9,L06FA
	bclr	4,RAM1_0bb
	jsr	L1E28
	bra	L06F8
;
	brset	6,RAM1_0b9,L06FA
	bset	6,RAM1_0b9
	bset	5,STACK_0cb
	brclr	5,RAM1_0b6,L0714
	lda	RAM1_0b7
	ldx	STACK_0c2
	incx
	beq	L0712
	brclr	7,STACK_0c1,L0714
	cmp	STACK_0c2
	bne	L0714
	bclr	5,RAM1_0b6
	bra	L0714
;
	bset	3,RAM1_0bb
	cmp	XB7C2
	lda	STACK_0c3
	cmp	#$40
	beq	L071E
	bset	5,RAM1_0bb
	bset	6,STACK_0cb
	bra	L06A7
;
X1720:
	sbc	X2744
	lsra
	brset	0,X0026,L0736
;
	db	$61
;
	brset	1,OCL2,L078C
	brclr	4,RAM1_0b6,L0739
	brset	7,RAM1_0b6,L077D
	lda	STACK_0c1
	and	#$07
	cmp	#$02
	beq	L077F
	brset	5,RAM1_0bc,L0745
	brset	6,RAM1_0bc,L0745
	lda	RAM1_0b8
	and	#$70
	bne	L0749
	bsr	L077F
	bset	7,RAM1_0bb
	brset	7,RAM1_056,L074C
L174C:
	rts
;
L174D:
	brclr	7,RAM1_056,L0767
	bset	4,RAM1_0b8
	brset	2,RAM1_0b8,L0762
	bclr	0,RAM1_0b8
	lda	#$FF
	ldx	#$BC
	jsr	L379B
	incx
	jsr	L379B
L1762:
	lda	#$80
X1764:
	sta	RAM1_0b3
	rts
	jmp	L1D33
;
	bclr	3,RAM1_0bf
	brclr	7,RAM1_056,L07E7
L176F:
	jsr	L1C25
	bset	2,RAM1_07e
L1774:
	lda	RAM1_0b8
	sta	RAM1_0bd
	bset	2,RAM1_0bb
	bclr	6,RAM1_0bc
	rts
;
	bclr	4,RAM1_0bb
	brset	6,RAM1_056,L078E
	bclr	6,RAM1_0bc
	bclr	2,RAM1_0bb
	bclr	6,RAM1_0b8
	bclr	5,RAM1_0b8
	bclr	4,RAM1_0b8
	bra	L07E5
;
	lda	RAM1_0b8
	brset	6,RAM1_0bc,L0797
	bit	#$70
	bne	L07E7
	and	#$0C
	sta	RAM1_0bd
	lda	RAM2_0272
	sub	#$06
	beq	L07AB
	bmi	L07A9
	deca
	inc	RAM1_0bd
	bra	L079E
;
	add	#$07
	jsr	L252C
	add	RAM1_0bd
	sta	RAM1_0bd
	brclr	2,RAM1_0b8,L07BE
	jsr	L252D
	eor	RAM1_0b8
	and	#$08
	bra	L07C9
;
	brclr	5,RAM1_069,L07C5
	bit	#$01
	bne	L07D7
	eor	RAM1_0b8
	and	#$03
	beq	L07DB
	brclr	6,RAM1_0bc,L07D4
	bclr	6,RAM1_0b8
	bclr	5,RAM1_0b8
	bclr	4,RAM1_0b8
	brset	5,RAM1_0bc,L0778
	brset	6,RAM1_0bc,L0784
	rts
;
	bset	5,RAM1_0bb
	lda	RAM1_0bd
	sta	RAM1_0b8
	bset	6,RAM1_0bc
	bclr	2,RAM1_0bb
	bset	7,STACK_0cb
	rts
;
	brclr	6,STACK_0d2,L07EE
	jmp	L174D
;
	brclr	7,RAM1_056,L001B
	bclr	2,STACK_0c0
	jsr	L1DEB
	bsr	L077F
	brset	5,RAM1_0b6,L0015
	brclr	6,RAM1_0bf,L000E
	brset	1,RAM1_0ba,L0005
	bset	1,RAM1_0ba
	bset	3,RAM1_0bc
	lda	#$E3
	brset	4,STACK_0c1,L0010
	ldx	#$01
	bra	L0012
;
L180E:
	lda	#$60
	ldx	#$28
	jmp	L1C2D
;
	brclr	2,STACK_0c1,L000E
	bset	5,STACK_0c1
	rts
;
	brclr	5,RAM1_0b6,L0023
	jsr	L1D33
	bra	L003D
;
	lda	RAM1_0b6
	and	#$07
	cmp	#$05
	beq	L0036
	cmp	#$04
	bne	L003D
	brclr	6,RAM1_0b5,L003D
	clr	STACK_0c2
	bset	0,RAM1_0b6
	lsr	STACK_0c2
	bne	L003D
	jsr	L1CF4
	bset	7,RAM1_0ba
	lda	RAM1_0b6
	ora	#$D0
	bit	#$20
	beq	L0049
	and	#$A7
	sta	RAM1_0b3
	rts
;
L184C:
	lda	RAM1_0b3
	bit	#$0F
	beq	L00C4
	and	#$07
	tax
	clra
	sec
	rola
	decx
	bpl	L0057
	sta	RAM1_056
	ldx	#$B5
	brclr	3,RAM1_0b3,L0064
	ldx	#$BC
	brclr	6,RAM1_0b3,L0070
	brset	5,RAM1_0b3,L006E
	coma
	and	,x
	bra	L0071
;
	eor	,x
	cmp	STACK_0fa
	brset	3,RAM1_0b3,L007D
	brclr	1,RAM1_056,L007D
	bit	#$02
	beq	L007D
	ora	#$0C
	brclr	3,RAM1_08e,L008F
	brclr	4,RAM1_056,L0089
	bit	#$10
	beq	L0089
	ora	#$08
	bit	#$08
	bne	L008F
	and	#$AF
	sta	,x
	ldx	#$F3
	brset	3,RAM1_0b3,L00DB
	and	#$62
	ldx	#$B0
	jsr	L379B
	bset	5,STACK_0cb
	brset	5,RAM1_056,L00A7
	brclr	6,RAM1_056,L00F5
	brset	2,RAM1_0b8,L00B3
	lda	RAM1_0b6
	and	#$17
	cmp	#$04
	bne	L00B3
	bsr	L003D
	bra	L00FF
;
	brclr	6,RAM1_056,L00F5
	ldx	#$10
	cmp	#$05
	beq	L00FA
	brset	6,RAM1_059,L00C6
	ldx	#$F1
	brset	6,RAM1_0b9,L00FA
	bra	L00F5
;
	bset	4,STACK_0c0
	bclr	3,STACK_0c0
	brclr	2,RAM1_0b8,L00DE
	bset	3,STACK_0c0
	ldx	#$B2
	jsr	L37C7
	sta	RAM1_0b8
	bclr	5,RAM1_0bb
	jmp	L1762
	jmp	L1A4E
;
	brset	6,STACK_0c1,L00F5
	jsr	L1E12
	bne	L00F5
	lda	#$01
	sta	STACK_0c3
	lda	STACK_0c1
	cmp	#$95
X18EE:
	beq	L00F5
	lda	#$86
	jsr	L1C2B
	lda	RAM1_0b3
	and	#$10
	tax
	stx	RAM1_0b3
	bset	3,RAM1_0bc
	rts
;
L18FF:
	lda	#$C8
	brset	6,RAM1_05f,L012B
	jsr	L1E03
	brset	7,RAM1_061,L013A
	brclr	1,RAM1_0ba,L010F
	and	#$BF
	ora	#$08
	ora	#$04
	and	#$4E
	brclr	7,RAM1_0b5,L011D
	brset	3,RAM1_0b5,L011D
	and	#$4A
	brclr	6,STACK_0ce,L0122
	ora	#$30
	brset	4,STACK_0ce,L0128
	brclr	3,STACK_0ce,L012A
	ora	#$10
	inca
	bit	#$04
	beq	L013C
	brset	3,RAM1_05d,L0135
	brclr	3,RAM1_0bf,L0137
	and	#$F3
	brclr	7,RAM1_0bf,L013C
	and	#$FB
	ldx	#$01
	brclr	3,RAM1_08e,L0147
	ora	#$02
	and	#$BB
	ldx	#$09
	brclr	0,RAM1_061,L0159
	brclr	1,RAM1_082,L0154
	brset	0,RAM1_082,L0154
	ora	#$80
	bra	L0159
;
	brclr	4,RAM1_069,L0159
	ora	#$40
	sta	RAM2_027c
	txa
	brclr	6,RAM1_05f,L0162
	ora	#$40
	bclr	1,RAM1_0bc
	ora	#$80
	brclr	4,RAM1_0bf,L0170
	brset	7,RAM1_0b5,L0170
	bset	1,RAM1_0bc
	and	#$7F
	sta	RAM2_027d
	lda	#$20
	brclr	2,RAM1_0b8,L017D
	brset	6,RAM1_05f,L017D
	lda	#$02
	ora	#$10
	bset	2,RAM1_0b5
	tax
	bclr	3,RAM1_0bc
	lda	#$0A
	jmp	L1A21
;
X1989:
	db	$7B
;
	asl	,x
	brset	0,RAM1_05b,L0167
	ldx	STACK_0cd
	sbc	,x
	bclr	3,RAM1_05d
	lda	RAM1_0b8
	and	#$74
	cmp	#$60
	beq	L01D7
	ldx	#$02
	cmp	#$10
	bne	L01A5
	bset	3,RAM1_0bf
	bra	L01D3
;
	ldx	#$83
	cmp	#$50
	beq	L01D3
	clrx
	brclr	2,RAM1_0b8,L01B4
	brclr	3,RAM1_0b8,L01B9
	bra	L01B7
;
	brclr	1,RAM1_0b8,L01B9
	ldx	#$04
	and	#$70
	cmp	#$20
	beq	L01CD
	brset	2,RAM1_0b8,L01CC
	incx
	cmp	#$30
	beq	L01CD
	incx
	cmp	#$40
	beq	L01CD
	rts
;
	aslx
	aslx
	sec
	rolx
	sec
	rolx
	lda	#$18
	bra	L0221
;
	lda	RAM1_088
	lsra
	sta	RAM1_056
	lda	RAM1_083
	asla
	add	RAM1_056
	ldx	#$70
	jsr	L3786
	jmp	L176F
;
L19E9:
	brclr	3,RAM1_0b3,L0191
	clr	RAM1_0b6
	brclr	6,RAM1_0b3,L0200
	brclr	5,RAM1_0b3,L01FA
	ldx	#$09
	clr	RAM1_0b3
	bra	L021E
;
	ldx	#$EA
	stx	RAM1_0b3
	bra	L0219
;
L1A00:
	bclr	5,RAM1_0bc
	bclr	6,RAM1_0bc
	bset	3,RAM1_094
	jsr	L1D9B
	ora	#$80
	brset	3,RAM1_0b5,L0212
	coma
	and	RAM1_056
	cmp	XBA56
	ldx	RAM1_057
	jsr	L379B
L1A19:
	jsr	L1DD2
	ldx	#$89
	jsr	L1DAF
L1A21:
	sta	RAM1_050
	stx	RAM1_051
	brclr	7,STACK_0d6,L0235
	jsr	L0789
	brclr	3,RAM1_067,L0225
	bclr	3,RAM1_067
	jsr	L36AE
	bra	L0225
;
	lda	RAM1_050
	ldx	RAM1_051
	sta	RAM2_027a
	stx	RAM2_027b
	bset	7,STACK_0d6
	clr	STACK_0d9
	rts
;
	brclr	3,RAM1_0b3,L024E
	brset	7,RAM1_0ba,L01CC
	ldx	#$0A
	bra	L01D3
;
L1A4E:
	brset	3,RAM1_0bf,L0243
	bset	0,RAM1_0bc
	brset	6,STACK_0d3,L0258
	bclr	0,RAM1_0bc
	lda	RAM1_0bc
	and	#$07
	tax
	lda	#$20
	bra	L0221
	jmp	L1B2A
;
	bclr	3,RAM1_0bf
	bclr	5,RAM1_0bb
	bclr	4,RAM1_0bb
	brclr	3,RAM1_0b3,L0283
	ldx	#$B1
	jsr	L37C7
	brclr	5,RAM1_0b6,L027C
	bit	#$70
	bne	L027E
	jmp	L1D4E
;
	ora	#$70
	sta	RAM1_0b8
	brset	2,RAM1_0b8,L0283
L1A83:
	bclr	7,RAM1_0bf
	lda	RAM1_0b8
	and	#$70
	cmp	#$70
	bne	L0290
L1A8D:
	jsr	L1D73
	jsr	L1D9B
	bset	0,RAM1_056
	and	RAM1_056
	bset	3,RAM1_0b5
	bne	L029F
	bclr	3,RAM1_0b5
	bclr	4,RAM1_0b5
L1A9F:
	bset	3,RAM1_0bc
	bclr	1,RAM1_0ba
	bset	1,RAM1_0bf
	bset	0,RAM1_0bf
L1AA7:
	lda	#$40
	ldx	#$0C
	brclr	6,RAM1_05f,L02B0
	ldx	#$01
	jsr	L1E26
	jmp	L1C2D
;
	brset	2,RAM1_0b8,L02BE
	bset	1,RAM1_0b8
	bclr	0,RAM1_0b8
	cmp	X16B8
	bra	L029F
;
	brset	5,RAM1_0b3,L033E
	brclr	3,RAM1_0bf,L02CC
	bset	0,RAM1_0b3
	bset	1,RAM1_0b3
	brset	6,RAM1_0b3,L02DB
	brclr	4,RAM1_0b3,L0318
	brclr	1,RAM1_0ba,L0315
	bclr	1,RAM1_0ba
	bset	3,RAM1_0bc
	bra	L0315
;
	brclr	6,RAM1_0b3,L02E6
	brclr	4,RAM1_0b3,L02E6
	bclr	4,RAM1_0b3
	bclr	6,RAM1_0bf
	cmp	X1CBF
	bclr	6,RAM1_0b3
	lda	RAM1_0b6
	and	#$07
	cmp	#$06
	bne	L02FD
	ldx	#$B1
	jsr	L37C7
	sta	RAM1_0b8
	bclr	7,RAM1_0bf
	bra	L0312
;
	cmp	#$04
	bne	L0312
	brset	4,RAM1_0b3,L0312
	lda	RAM1_0b6
	eor	RAM1_0b3
	bit	#$08
	beq	L0312
	jsr	L1AA7
	jmp	L1A19
;
	brclr	4,RAM1_0b3,L0318
	bclr	6,RAM1_0bf
	rts
;
	brset	7,RAM1_0bf,L02A7
	brset	3,RAM1_0bf,L02A7
	bset	7,RAM1_0bf
	jsr	L1A8D
L1B23:
	lda	#$48
	bra	L02A9
	jmp	L1AA7
;
L1B2A:
	brclr	3,RAM1_0b3,L0332
	bset	7,RAM1_0bf
	jmp	L1A9F
;
	brclr	6,RAM1_0b9,L0317
	jsr	L1E2A
	lda	#$48
	clrx
	jmp	L1A21
;
	bclr	6,RAM1_0bf
	brset	4,RAM1_0b3,L034E
	brset	5,RAM1_0b6,L0327
	bsr	L0372
	lda	#$FF
	sta	STACK_0c2
	bra	L031E
;
	lda	RAM1_0bd
	eor	RAM1_0b8
	and	#$07
	bne	L035A
	lda	RAM1_0bd
	sta	RAM1_0b8
	clr	STACK_0c3
	jsr	L1E1D
	lda	STACK_0c1
	cmp	#$95
	bne	L036C
	clr	STACK_0c1
	bset	3,RAM1_0bc
	jmp	L1DD2
;
	jsr	L1762
	jmp	L1A83
;
	lda	RAM1_0b8
	sta	RAM1_0bd
	ldx	STACK_0c1
	jmp	L1DE1
;
	lda	#$64
L1B7D:
	sta	RAM2_027c
	lda	#$19
L1B82:
	bclr	6,RAM1_0b8
	bclr	5,RAM1_0b8
	bclr	4,RAM1_0b8
	bset	5,RAM1_0bc
	bset	3,RAM1_0b5
	bclr	3,RAM1_0bb
L1B8E:
	brclr	0,RAM1_0b6,L0397
	brset	1,RAM1_0b6,L0397
	brset	2,RAM1_0b6,L0399
	bclr	2,RAM1_0ba
	brclr	2,STACK_0c0,L039F
	bclr	2,STACK_0c0
	cmp	X3FBB
	clr	STACK_0c5
	jsr	L1E26
	bset	7,RAM1_0ba
	bset	7,STACK_0cb
	bclr	6,RAM1_0bc
	brset	3,STACK_0c0,L03B1
	bclr	4,STACK_0c0
	bclr	3,STACK_0c0
	bset	7,RAM1_0b5
	bra	L033B
;
X1BB7:
	eor	#$11
	coma
	coma
;
	db	$75
;
	lsra
	brset	0,ACL,L038D
	bclr	6,X002D
	ldx	#$C7
	brset	3,RAM1_08e,L03CA
	brclr	5,RAM1_069,L03CC
	ldx	#$E7
	bset	7,RAM1_0bf
	bra	L037B
;
	ldx	RAM1_0b7
	clra
	sta	RAM2_027c
	lda	#$11
	bra	L038E
;
	brset	3,STACK_0c1,L03F6
	ldx	#$50
	bset	0,RAM1_05b
	cmp	X115B
	lda	#$C1
	bsr	L042D
	ldx	#$86
	brclr	3,RAM1_0b6,L03EF
	ldx	#$06
	lda	#$18
	brclr	0,RAM1_05b,L0399
	bra	L0382
;
	lda	#$40
	ldx	#$02
	bsr	L042D
	jsr	L1D73
	jmp	L1CA0
	rts
;
	brset	5,STACK_0c1,L041F
	bset	7,RAM1_0bf
	jsr	L1D2D
	ldx	#$A0
	brset	2,STACK_0c2,L0417
	lda	#$6C
	brset	1,STACK_0c2,L0419
	ldx	#$20
	lda	#$64
	jmp	L1B7D
	jmp	L1CBA
;
	brset	5,RAM1_0b6,L041C
	jsr	L1E1D
L1C25:
	lda	#$92
	ldx	#$10
	bra	L042D
;
L1C2B:
	ldx	#$C8
L1C2D:
	sta	STACK_0c1
	stx	STACK_0c3
	jmp	L1430
;
	brset	3,STACK_0c1,L03F6
	brset	5,STACK_0c1,L041F
	lda	#$C4
	ldx	#$64
	brset	5,RAM1_0b6,L0445
	lda	#$D3
L1C43:
	ldx	#$FF
	bsr	L042D
	bclr	5,RAM1_0b5
	brset	3,STACK_0ce,L0456
	ldx	#$AC
	jsr	L37C7
	rora
	bcc	L0456
	bset	5,RAM1_0b5
L1C56:
	jsr	L1E35
	eor	STACK_0c0
	and	#$03
	eor	STACK_0c0
	sta	STACK_0c0
	lda	RAM1_05b
	clrx
	jmp	L1B7D
;
	lda	#$60
	brclr	5,STACK_0c1,L049C
	ldx	#$02
	brset	7,RAM1_0b9,L0476
	brset	7,RAM1_0ba,L042D
	bset	5,RAM1_0bb
	brclr	1,RAM1_0ba,L0480
	bclr	1,RAM1_0ba
	brclr	6,RAM1_0b5,L0480
	bset	3,RAM1_0bc
	brclr	3,RAM1_05d,L0489
	bclr	3,RAM1_05d
	lda	#$82
	sta	RAM1_0b3
	lda	#$C0
	brset	3,RAM1_0bb,L042B
	jsr	L1DD2
	brset	4,RAM1_0bf,L0498
	ldx	#$2D
	bra	L04BC
;
	lda	#$C7
	bra	L042B
;
	ldx	#$1E
	bsr	L042D
L1CA0:
	jsr	L1DAF
	ldx	RAM1_0b7
	stx	RAM2_027d
	beq	L04B2
	brclr	7,RAM1_061,L04B2
	ldx	#$29
	lda	#$1A
	cmp	XAE09
	jmp	L1B8E
;
	jsr	L1774
L1CBA:
	ldx	#$23
	lda	#$95
	jmp	L1C2D
;
X1CC1:
	dec	RAM1_06f,x
	ror	RAM1_09c
;
	db	$5E
;
	asra
	brset	0,OCH1,L0470
;
	db	$86
;
	brset	2,STACK_0ce,L051E
	brset	7,RAM1_0b9,L051E
	jsr	L1DF8
	beq	L04DE
	lda	#$85
	sta	RAM1_0b3
	lda	#$04
	sta	STACK_0c2
	rts
;
	lda	#$87
	clr	RAM1_0be
	brset	2,STACK_0ce,L051E
	brset	7,RAM1_0b9,L051E
	brset	5,RAM1_080,L04C9
	lda	RAM1_07f
	and	#$2B
	cmp	#$02
	bne	L04C9
L1CF4:
	brset	2,RAM1_0b8,L04DE
	brset	4,STACK_0c0,L04C9
	bset	2,RAM1_0ba
	bclr	4,RAM1_0ba
	rts
;
	clr	STACK_0c1
	bclr	4,RAM1_0b6
	bclr	2,RAM1_0bb
	lda	#$87
	brclr	0,RAM1_0ba,L050C
	lda	#$D7
	ldx	#$10
	bra	L04BE
;
	brclr	2,RAM1_0be,L0516
	brset	4,RAM1_0ba,L0521
	brset	5,RAM1_0b6,L0524
	brset	4,RAM1_0bf,L04DE
	lda	#$86
	jmp	L1C2B
;
	bclr	5,RAM1_0b6
	rts
	jmp	L1B23
;
	brclr	5,STACK_0c1,L052D
	jmp	L180E
;
L1D2D:
	lda	#$D3
	ldx	#$FF
	bra	L050E
;
L1D33:
	lda	#$88
	sta	RAM1_0b3
	rts
;
	brclr	6,RAM1_0bf,L0544
	ldx	#$06
	brclr	2,RAM1_0b8,L0541
	aslx
	jmp	L1BE2
;
	brset	5,STACK_0c1,L054E
	lda	#$A1
	ldx	#$30
	jmp	L1C2D
;
L1D4E:
	bclr	2,RAM1_0bb
	lda	RAM1_0b8
	and	#$70
	bne	L055F
	brset	3,RAM1_0bf,L055F
	brset	7,RAM1_0b6,L055F
	jsr	L1A00
	jsr	L1DD2
	jmp	L1C25
;
	brset	6,RAM1_0bf,L056E
	brclr	5,STACK_0c1,L056E
	jmp	L180E
;
	lda	#$C3
	jmp	L1C43
;
L1D73:
	bsr	L057E
	eor	RAM1_0b8
	and	#$70
	eor	RAM1_0b8
	sta	RAM1_0b8
	rts
;
L1D7E:
	bsr	L058D
	add	#$B3
	jsr	L37C6
	and	#$70
	cmp	#$70
	bne	L058C
	clra
	rts
;
	lda	RAM1_0b8
	and	#$03
	brclr	2,RAM1_0b8,L059A
	lda	#$04
	brclr	3,RAM1_0b8,L059A
	inca
	rts
;
L1D9B:
	bsr	L058D
	add	#$BA
	sta	RAM1_057
	jsr	L37C6
	sta	RAM1_056
	lda	RAM1_0b8
	jsr	L2525
	jsr	L2572
	rts
;
L1DAF:
	lda	RAM1_0b8
	asla
	jsr	L2524
	bne	L05B9
	lda	#$07
	deca
	brclr	2,RAM1_0b8,L05C2
	brclr	3,RAM1_0b8,L05CC
	bra	L05CA
;
	brclr	1,RAM1_0b8,L05C7
	add	#$0E
	brclr	0,RAM1_0b8,L05CC
	add	#$07
	sta	RAM2_027c
	lda	#$19
	rts
;
L1DD2:
	clr	RAM1_0bd
	bclr	2,RAM1_0bb
	ldx	#$B1
	jsr	L37C7
	eor	RAM1_0b8
	and	#$0F
	beq	L05EB
L1DE1:
	ldx	#$B1
	jsr	L37C7
	brset	2,RAM1_0b8,L05E9
	bsr	L05F1
L1DEB:
	jsr	L1D7E
L1DEE:
	brset	7,RAM1_0bb,L05D1
	lda	RAM1_0b8
	and	#$7F
	jmp	L379B
;
L1DF8:
	lda	#$01
	brset	2,RAM1_0b8,L060F
	brset	2,RAM1_0be,L0611
	brset	5,RAM1_0b9,L0611
L1E03:
	lda	RAM1_0b5
	and	#$4E
	brset	3,RAM1_08e,L060D
	brclr	6,RAM1_05f,L060F
	and	#$BF
	bit	#$40
	rts
;
L1E12:
	bsr	L05F8
	bne	L0618
	coma
	rts
;
	lda	RAM1_0b9
	and	#$38
	rts
;
L1E1D:
	lda	RAM1_0b6
	beq	L0625
	clr	RAM1_0b6
	bset	6,STACK_0cb
	rts
;
L1E26:
	clr	RAM1_0b9
L1E28:
	bclr	6,RAM1_0b9
L1E2A:
	bset	5,STACK_0cb
	bclr	5,RAM1_0b9
	bclr	4,RAM1_0b9
L1E30:
	clr	RAM1_0be
	bclr	4,RAM1_0ba
	rts
;
L1E35:
	clr	RAM1_05b
	brset	3,RAM1_0b6,L063C
	bset	5,RAM1_05b
	brclr	5,RAM1_0b5,L0641
	bset	2,RAM1_05b
	brclr	2,RAM1_0b8,L0648
	bset	7,RAM1_05b
	bra	L0659
;
	bset	6,RAM1_05b
	lda	RAM1_0b7
	cmp	#$41
	bhi	L0657
	cmp	#$12
	bcs	L0659
	bset	0,RAM1_05b
	cmp	X125B
	lda	RAM1_05b
	rts
;
L1E5C:
	clrx
X1E5D:
	lda	RAM2_0274
	bsr	L0679
	lda	RAM2_0273
	bsr	L0679
	lda	RAM2_0272
	bsr	L0679
	lda	#$2E
	sta	STACK_0de
	lda	#$20
	sta	STACK_0e0
	lda	#$52
	sta	STACK_0e1
	rts
;
	sta	RAM1_05b
	bsr	L0682
	lda	RAM1_05b
	jsr	L252C
	jsr	L2525
	add	#$30
	sta	STACK_0da,x
	incx
	rts
L1E8B:
	rts
;
L1E8C:
	ldx	#$CD
	jsr	L256C
	bne	L06A1
	clra
	sta	RAM2_0254
	sta	RAM2_0255
	sta	RAM2_0256
	bset	4,RAM1_09e
	bra	L06B1
;
	ldx	#$CC
	jsr	L256C
	bpl	L06AA
	bclr	1,STACK_0cb
	bne	L06B3
	dec	,x
	bclr	5,STACK_0c5
	bclr	1,STACK_0cb
	bset	7,RAM1_05d
	rts
;
L1EB4:
	brset	6,STACK_0c6,L06C9
	brset	5,STACK_0c6,L06CB
	brclr	7,STACK_0c6,L06B3
	brset	2,STACK_0cb,L06C9
	lda	STACK_0cc
	cmp	#$FF
	beq	L06C9
	bclr	7,STACK_0c6
	rts
;
	bset	7,RAM1_050
	lda	RAM1_09e
	and	#$F0
	bne	L0744
	lda	STACK_0c6
	and	#$1F
	asla
	sta	RAM1_056
	asla
	add	RAM1_056
	cmp	#$BA
	bne	L06E1
	lda	#$FF
	brclr	5,STACK_0c6,L06EB
	bset	4,RAM1_09e
	bset	5,RAM1_09e
	bclr	5,STACK_0c6
	rts
;
	tsta
	bmi	L06F0
	bne	L06F5
	brset	1,STACK_0cb,L0744
	beq	L06F7
	sta	STACK_0cc
	clr	STACK_0c6
	lda	STACK_0c7
	bpl	L0745
	brclr	6,STACK_0c7,L075C
	and	#$0E
	tax
	lda	X1F83,x
	sta	RAM1_059
	lda	X1F84,x
	sta	RAM1_056
	lsrx
	lda	X1F93,x
	sta	RAM2_0256
	and	#$0F
	beq	L072B
	deca
	sta	RAM1_058
	ldx	X1F82
	stx	RAM1_057
	lda	X1F81
	tsta
	beq	L0728
	bset	0,RAM1_059
	jsr	L2587
	brclr	5,STACK_0c7,L0731
	bset	6,RAM1_09e
	cmp	X1E9E
	brclr	7,RAM1_050,L0744
	bclr	2,STACK_0cb
	lda	STACK_0ce
	and	#$07
	cmp	#$06
	bne	L0744
	eor	STACK_0ce
	sta	STACK_0ce
	rts
;
	ldx	#$61
	stx	RAM2_0256
	sta	RAM2_0257
	cmp	#$70
	bcs	L0731
	and	#$07
	tax
	lda	X1F9B,x
	sta	RAM2_0257
	bra	L072E
;
	ldx	STACK_0c8
	and	#$0F
	bit	#$08
	bne	L076B
	bclr	7,RAM1_050
	tstx
	bpl	L076B
	negx
	inca
	jsr	L252C
	sta	RAM2_0257
	txa
	and	#$0F
	add	RAM2_0257
	sta	RAM2_0257
	lda	#$71
	sta	RAM2_0256
	bra	L072B
;
X1F81:
	brset	1,RAM1_057,L0784
X1F84:
	eor	RAM2_0280
	brset	1,RAM1_057,L078C
;
	db	$9E
;
	brset	1,RAM1_060,L078E
	brset	0,PortA,L07FD
	brset	1,RAM1_088,L07C6
	asla
	aslx
;
	db	$92
;
	sbc	#$B0
	cmp	X0048,x
X1F9B:
	bclr	2,SCCR1
	brset	0,PortA,L07A0
	brset	0,PortA,L07A3
L1FA3:
	brset	6,RAM1_069,L07A9
	brset	0,RAM1_080,L07C2
	lda	#$27
	jsr	L24C5
	cmp	#$D5
	bcs	L07B7
	bset	0,RAM1_080
	bset	6,RAM1_069
	rts
;
	cmp	#$D2
	bhi	L07C2
	brclr	6,RAM1_069,L07C2
	bclr	6,RAM1_069
	bclr	0,RAM1_080
	rts
;
L1FC3:
	jsr	L209C
	brclr	7,Miscell,L07D7
	ldx	#$14
	jsr	L204F
	jsr	L2071
	bclr	7,Miscell
	lda	#$FF
	sta	RAM1_08c
L1FD7:
	lda	ACH
	add	#$14
	sta	OCH2
	lda	TSR
	clr	OCL2
	rts
;
L1FE2:
	bsr	L001B
	bsr	L0031
L1FE6:
	lda	#$30
	brclr	6,RAM1_05f,L07EF
	lda	#$31
	bset	0,PortB
	sta	DDRB
	lda	#$02
	sta	DDRC
	rts
;
L1FF6:
	brset	2,PortB,L000D
	bset	2,PortB
	ldx	#$08
	bra	L000B
;
L1FFF:
	brset	0,PortC,L000D
	bset	0,PortC
	brset	6,RAM1_05f,L000D
	bclr	3,PortB
	ldx	#$06
	bsr	L004F
	lda	#$2C
	sta	SCCR2
	lda	X20C1
	sta	BAUD
	lda	SCSR
	lda	SCDR
	rts
;
L201B:
	bclr	4,RAM1_061
	bclr	0,RAM1_081
	brset	2,TCR,L0025
	brclr	2,PortB,L002F
	ldx	#$32
	bsr	L004F
	bclr	2,PortB
	ldx	#$05
	bsr	L004F
	cli
	rts
;
L2031:
	lda	#$04
	jsr	L2541
	clr	SCCR2
	lda	#$07
	sta	DDRA
	clr	PortA
	bclr	6,PortB
	bclr	5,RAM1_061
	brclr	0,PortC,L002F
	bclr	0,PortC
	brclr	4,Miscell,L0070
	ldx	#$32
	bsr	L004F
	rts
;
L204F:
	sei
	bclr	7,RAM1_08f
	brclr	1,PortC,L0058
	bclr	1,PortC
	cmp	X1202
	jsr	L253F
	decx
	bpl	L0052
	bset	2,STACK_0d6
	bset	4,RAM1_05e
	bset	7,RAM1_096
	brclr	0,PortC,L006F
	brclr	7,RAM1_08f,L006F
	jmp	L04ED
;
	cli
	rts
;
L2071:
	ldx	#$90
	lda	#$00
	clr	X004F,x
	sta	BOT1_024f,x
	decx
	bne	L0075
	rts
;
L207E:
	brclr	5,DDRB,L009C
	lda	X20B8
	sta	DDRA
	lda	X20B9
	sta	DDRB
	lda	X20BA
	sta	DDRC
	bset	7,TCR
	bset	6,TCR
	bset	5,TCR
	lda	X20C0
	sta	Miscell
	rts
;
L209C:
	clrx
	lda	X20B4,x
	sta	,x
	incx
	cpx	#$13
	bmi	L009D
	rts
;
L20A7:
	clrx
	lda	X20C7,x
	sta	,x
	incx
	cpx	#$13
	bmi	L00A8
	jmp	L1FD7
;
X20B4:
	stx	,x
	sub	STACK_0fc
	brset	0,DDRA,L00B9
X20BA:
	brclr	7,X0040,L00BD
	bra	L00BF
;
	brset	0,RAM1_0bc,L0082
	brset	0,X002C,L00C5
	brset	0,STACK_0fa,L00C0
	eor	STACK_0fe
	brset	0,EEPROM_ECLK_control,L00FE
	brset	1,X0040,L00D0
	bra	L00D2
;
	brset	0,RAM1_0bc,L0095
	brset	0,X002C,L00D8
	brset	0,STACK_0fa,L00E8
	tstx
	asr	DDRB
	ldx	X3402
	ldx	X3101
	ldx	X2ECC
	brn	L010A
L20E9:
	lda	RAM1_078
	and	#$07
	ldx	#$81
	cmp	#$04
	bcc	L0114
	cmp	#$01
	bne	L00FA
	bset	4,STACK_0ce
	rts
;
	ldx	#$02
	cmp	#$02
	bne	L0103
	bset	5,STACK_0ce
	rts
;
	bset	3,RAM1_0bc
	ldx	#$08
	cmp	XAE01
	bset	0,RAM1_080
	stx	STACK_0d0
	bset	6,STACK_0ce
	bset	7,RAM1_094
	bclr	6,RAM1_0b5
	rts
;
	lda	#$48
	sta	RAM1_09f
	ldx	#$71
	lda	#$41
	sta	STACK_0ce
	bra	L010A
;
	clrx
	lda	X213B,x
	sta	RAM1_056
	lda	X213A,x
	beq	L0139
	jsr	L2797
	bne	L0122
	ldx	X2139,x
	jsr	L20E9,x						;INFO: index jump
	bclr	6,RAM1_05d
X2139:
	rts
;
X213A:
	sub	PortA,x
	add	OCL2,x
	eor	X002C,x
	brclr	3,X002C,L0143
L2143:
	lda	#$02
	eor	TCR
	sta	TCR
	bset	3,RAM1_076
	lda	ICH1
	sta	RAM1_06d
	lda	ICL1
	sta	RAM1_06e
	brclr	4,RAM1_05e,L015B
	brset	1,TCR,L018A
	bra	L0177
;
	sub	RAM1_070
	tax
	lda	RAM1_06d
	sbc	RAM1_06f
	bit	#$E0
	bne	L0177
	brset	1,Miscell,L0174
	brclr	1,TCR,L0174
	sta	RAM1_071
	stx	RAM1_072
	bclr	0,RAM1_076
	bra	L0182
;
	jsr	L21E4
	lda	RAM1_06e
	sta	RAM1_070
	lda	RAM1_06d
	sta	RAM1_06f
	brset	4,RAM1_05e,L0188
	brset	5,PortD,L018B
	brclr	1,TCR,L018E
	bclr	4,RAM1_05e
	rts
;
	brclr	1,TCR,L018A
	lda	#$02
	eor	TCR
	sta	TCR
	lda	#$10
	add	RAM1_06e
	sta	RAM1_06e
	bcc	L019E
	inc	RAM1_06d
	lda	ICL1
	bra	L0153
;
L21A2:
	brclr	3,RAM1_076,L01A8
	bclr	3,RAM1_076
	rts
;
	bset	4,RAM1_05e
	bclr	1,TCR
	lda	ICL1
	lda	#$20
	add	RAM1_076
	ora	#$40
	and	#$DF
	sta	RAM1_076
	brclr	5,PortD,L01D8
	brset	7,PortB,L01CC
	lda	RAM1_05e
	sub	#$20
	bcs	L01C6
	sta	RAM1_05e
	bmi	L01FA
	bclr	6,RAM1_05e
	bra	L01D5
;
	brset	2,RAM1_076,L01ED
	bset	2,RAM1_076
	bset	1,RAM1_076
	bra	L01ED
;
	brclr	0,RAM1_061,L01FA
	lda	#$14
	clrx
	stx	RAM1_071
	sta	RAM1_072
	bset	0,RAM1_076
	brclr	0,RAM1_061,L01E9
L21E4:
	brclr	7,PortB,L01E9
	bclr	2,RAM1_076
	sta	RAM1_073
	stx	RAM1_074
	bset	4,RAM1_076
	brset	7,PortB,L01FA
	lda	#$20
	add	RAM1_05e
	bcs	L01FA
	sta	RAM1_05e
	lda	#$20
	add	RAM1_076
	sta	RAM1_076
	and	#$60
	cmp	#$60
	bne	L0222
	brset	7,RAM1_076,L020E
	brset	0,RAM1_061,L0213
	bclr	6,RAM1_076
	bclr	7,PortB
	bset	4,RAM1_05e
	rts
;
	lda	#$24
	sta	ADSTAT
	brclr	7,ADSTAT,L0217
	lda	ADDATA
	sta	RAM1_075
	bset	7,PortB
	bset	4,RAM1_05e
	rts
;
L2223:
	clra
	brset	0,RAM1_061,L022A
	brclr	2,RAM1_05f,L0287
	brclr	4,RAM1_076,L0289
	bclr	4,RAM1_076
	sei
	lda	RAM1_073
	sta	RAM1_050
	lda	RAM1_074
X2236:
	sta	RAM1_051
	lda	RAM1_071
	sta	RAM1_052
	lda	RAM1_072
	sta	RAM1_053
	cli
	brset	7,RAM1_076,L02BC
	clra
	brclr	2,RAM1_05f,L0287
	clrx
	jsr	L239D
	jsr	L239B
	ldx	#$03
	lda	RAM1_050,x
	add	RAM2_02a0,x
	sta	RAM2_02a0,x
	sta	RAM1_056,x
	lda	X004F,x
	adc	RAM2_029f,x
	sta	RAM2_029f,x
	sta	RAM1_055,x
	decx
	decx
	bpl	L0251
	jsr	L24F2
	clrx
	jsr	L23C1
	bcs	L027F
	ldx	#$09
	jsr	L232C
	lda	#$1A
	jsr	L234D
	sta	RAM2_02a5
	lda	RAM2_02a5
	ldx	PLMB
	jsr	L237C
	sta	PLMB
	rts
;
	clra
	sta	RAM2_02aa
	ldx	#$0D
	jsr	L239D
	lda	RAM1_075
	add	RAM2_02ae
	sta	RAM2_02ae
	clra
	adc	RAM2_02ad
	sta	RAM2_02ad
	lda	RAM2_02ae
	ldx	RAM2_02ad
	rorx
	rora
	rorx
	rora
	rorx
	rora
	ldx	#$0B
	jsr	L23C2
	bcs	L0300
	ldx	#$19
	jsr	L232C
	bra	L02F0
;
	brset	2,RAM1_076,L028A
	ldx	#$06
	jsr	L239D
	jsr	L239B
	ldx	#$03
	lda	RAM1_050,x
	add	RAM2_02a6,x
	sta	RAM2_02a6,x
	sta	RAM1_056,x
	lda	X004F,x
	adc	RAM2_02a5,x
	sta	RAM2_02a5,x
	sta	RAM1_055,x
	decx
	decx
	bpl	L02C9
	jsr	L24F2
	ldx	#$06
	jsr	L23C1
	bcs	L0300
	ldx	#$0F
	jsr	L232C
	lda	#$24
	jsr	L234D
	sta	RAM2_02ab
	lda	#$2A
	jsr	L234D
	sta	RAM2_02ac
	brclr	0,RAM1_061,L032B
	lda	RAM2_02ab
	ldx	PLMA
	jsr	L237C
	sta	PLMA
	lda	RAM2_02ac
	ldx	RAM1_06c
	jsr	L237C
	tax
	brset	1,RAM1_076,L0325
	lda	RAM2_02ac
	sub	RAM1_06c
	bcc	L0321
	nega
	and	#$FC
	beq	L032B
	bclr	1,RAM1_076
	stx	RAM1_06c
	bset	1,RAM1_05d
	rts
;
L232C:
	lda	#$05
	sta	RAM1_050
	clr	RAM1_056
	lda	OPTR,x
	cmp	RAM1_052
	bcc	L0342
	sta	RAM1_056
	decx
	dec	RAM1_050
	bpl	L0332
	lda	#$FF
	sub	RAM1_056
	sta	RAM1_051
	lda	RAM1_052
	sub	RAM1_056
	sta	RAM1_052
	rts
;
L234D:
	add	RAM1_050
	tax
	clr	RAM1_05a
	lda	RAM1_050
	cmp	#$05
	beq	L0363
	lda	SEC_CODE1,x
	sta	RAM1_05a
	lda	#$FF
	tst	RAM1_050
	bmi	L0366
	lda	OPTR,x
	sub	RAM1_05a
	tax
	lda	RAM1_052
	mul
	sta	RAM1_059
	stx	RAM1_058
	clr	RAM1_057
	lda	RAM1_051
	sta	RAM1_056
	jsr	L24F2
	add	RAM1_05a
	rts
;
L237C:
	stx	RAM1_056
	sub	RAM1_056
	beq	L0397
	bcs	L038E
	ldx	#$01
	cmp	#$10
	bcs	L0396
	ldx	#$08
	bra	L0396
;
	ldx	#$FF
	cmp	#$F0
	bhi	L0396
	ldx	#$F8
	txa
	add	RAM1_056
	rts
	rts
;
L239B:
	incx
	incx
L239D:
	lda	RAM2_02a0,x
	sta	RAM1_056
	lda	RAM2_02a1,x
	lsr	RAM1_056
	rora
	lsr	RAM1_056
	rora
	lsr	RAM1_056
	rora
	sta	RAM1_057
	lda	RAM2_02a1,x
	sub	RAM1_057
	sta	RAM2_02a1,x
	lda	RAM2_02a0,x
	sbc	RAM1_056
	sta	RAM2_02a0,x
	rts
;
L23C1:
	coma
L23C2:
	sta	RAM1_052
	brset	1,RAM1_076,L03D1
	sub	RAM2_02a4,x
	bcc	L03CD
	nega
	cmp	#$02
	bcs	L03D8
	lda	RAM1_052
	sta	RAM2_02a4,x
	cmp	#$00
	rts
;
L23D9:
	ldx	STACK_0cc
	cpx	#$FF
	bne	L03E1
	bclr	5,STACK_0c5
	ldx	#$80
	brset	0,STACK_0cb,L03EA
	brclr	6,STACK_0c6,L03FC
	rts
;
L23EA:
	ldx	#$5F
	cmp	XAE20
	bclr	5,STACK_0c5
	bra	L03FC
;
L23F3:
	ldx	#$4C
	cmp	XAE50
	clr	STACK_0cc
	bset	3,STACK_0cc
	bclr	0,STACK_0cb
	stx	STACK_0c6
	sta	STACK_0c7
	rts
;
L2403:
	eor	RAM2_0250,x
	beq	L0410
	eor	RAM2_0250,x
	sta	RAM2_0250,x
	bset	5,STACK_0c6
	incx
	rts
;
L2412:
	clrx
L2413:
	lda	#$00
	bsr	L0403
	cpx	#$06
	bne	L0413
	rts
;
L241C:
	ldx	#$01
	bsr	L0403
	lda	RAM1_056
	ora	#$40
	brclr	5,RAM1_069,L0428
	clra
	brset	2,RAM1_0b8,L0430
	brclr	6,RAM1_0b5,L0430
	ora	#$04
	bsr	L0415
	clrx
	lda	#$00
	bra	L0403
;
	sta	RAM1_056
	bsr	L0441
	tax
	lda	RAM1_056
	jsr	L252C
L2441:
	jsr	L2525
	cmp	#$0A
	bcs	L044A
	add	#$07
	add	#$30
	rts
;
L244D:
	lda	#$68
	cmp	XA670
	cmp	XA660
	cmp	XA678
	cmp	XA680
L245B:
	deca
	sta	RAM1_056
	ldx	#$07
	stx	RAM1_057
	ldx	RAM1_056
	lda	X25B3,x
	dec	RAM1_056
	ldx	RAM1_057
	sta	RAM2_0257,x
	dec	RAM1_057
	bpl	L0462
	rts
;
L2473:
	brset	1,STACK_0cb,L0481
	inc	STACK_0cc
	tst	STACK_0cc
	beq	L047F
	dec	STACK_0cc
	rts
;
	dec	STACK_0cc
L2481:
	cmp	#$03
	bne	L048E
	lda	#$39
	brclr	6,STACK_0d2,L04A8
	lda	#$36
	bra	L04A8
;
	cmp	#$01
	bne	L0497
	brclr	5,RAM1_0bb,L04C4
	bset	3,RAM1_094
	brclr	6,RAM1_0b5,L049F
	brset	2,RAM1_0b8,L049F
	ora	#$08
L249F:
	brclr	3,RAM1_08e,L04A4
	ora	#$10
	sta	STACK_0d5
	bra	L04B4
;
L24A8:
	ora	#$40
	eor	STACK_0d5
	and	#$7F
	beq	L04C4
	eor	STACK_0d5
	sta	STACK_0d5
L24B4:
	brclr	0,RAM1_061,L04BB
	brclr	3,STACK_0ce,L04C0
	clra
	brclr	3,RAM1_08e,L04C0
	ora	#$10
	bset	7,STACK_0d5
	bset	1,RAM1_094
	rts
;
L24C5:
	tax
	lda	#$04
	sta	RAM1_056
	clr	RAM1_057
	clra
	bms	L04D8
	sei
	stx	ADSTAT
	brclr	7,ADSTAT,L04D2
	cli
	bra	L04DD
;
	stx	ADSTAT
	brclr	7,ADSTAT,L04DA
	add	ADDATA
	bcc	L04E3
	inc	RAM1_057
	dec	RAM1_056
	bne	L04CD
	lsr	RAM1_057
	rora
	lsr	RAM1_057
	rora
	adc	#$00
	sta	RAM1_056
	rts
;
L24F2:
	clrx
	sec
	rolx
	bcs	L0521
	lsr	RAM1_056
	ror	RAM1_057
	lda	RAM1_059
	sub	RAM1_057
	sta	RAM1_059
	lda	RAM1_058
	sbc	RAM1_056
	sta	RAM1_058
	bcc	L04F3
	clc
	rolx
	bcs	L0521
	lsr	RAM1_056
	ror	RAM1_057
	lda	RAM1_059
	add	RAM1_057
	sta	RAM1_059
	lda	RAM1_058
	adc	RAM1_056
	sta	RAM1_058
	bcc	L0509
	bra	L04F3
;
	txa
	rts
;
	lsra
L2524:
	lsra
L2525:
	lsra
	lsra
	lsra
	lsra
	rts
;
	asla
	asla
L252C:
	asla
L252D:
	asla
	asla
	asla
	rts
;
L2531:
	sta	RAM1_050
	bra	L053A
;
	jsr	L0789
	bsr	L053F
	dec	RAM1_050
	bpl	L0535
	rts
;
L253F:
	lda	#$14
L2541:
	add	ACH
	tst	ACL
	bih	L0549
	bset	7,RAM1_08f
	cmp	ACH
	bpl	L0545
	rts
;
L254E:
	lda	#$85
	cmp	XA621
	deca
	bne	L0553
	rts
;
L2557:
	lda	X2564,x
	sta	RAM1_064
	lda	X2565,x
	sta	RAM1_065
	clr	RAM1_066
	rts
;
X2564:
	inc	,x
;
X2565:
	db	$52
;
	rol	STACK_0eb,x
	bmc	L056A
	clr	,x
	sub	RAM1_07c,x
	beq	L0570
	dec	,x
	dec	,x
	rts
;
L2572:
	and	#$07
	tax
	clra
	sec
	rola
	decx
	bpl	L0577
	rts
;
L257C:
	lda	#$80
	bit	,x
	bne	L0584
	lsra
	bne	L057E
	eor	,x
	sta	,x
	rts
;
L2587:
	ldx	RAM1_056
	inc	RAM1_056
	lda	,x
	brclr	1,RAM1_059,L0592
	lda	BOT1_0200,x
	ldx	RAM1_057
	inc	RAM1_057
	brclr	0,RAM1_059,L059D
	sta	BOT1_0200,x
	cmp	STACK_0f7
	dec	RAM1_058
	bpl	L0587
	rts
;
L25A3:
	clrx
	tsta
	bpl	L05B2
	ldx	#$07
	asla
	asla
	bmi	L05B2
	lsrx
	asla
	bmi	L05B2
	lsrx
	rts
;
X25B3:
	lsrx
;
	db	$41
;
	bra	L05D7
	bra	L05EA
	bra	L05DB
;
	asra
;
	db	$41
;
	inca
;
	db	$41
;
	bra	L05F2
	bra	L05E3
;
	rorx
	clra
	inca
	bra	L05E8
;
	db	$31
;
	bra	L05EB
;
	comx
;
	db	$45, $4E
;
	comx
	bra	L0615
;
	aslx
	bra	L0626
;
	tsta
	bra	L05F7
	bra	L0628
;
	db	$4E
;
	bra	L062A
;
	db	$41
;
	rorx
	bra	L0600
;
	db	$31
;
	bra	L0603
;
	lsrx
;
	db	$45
;
	inca
	bra	L0608
;
	db	$52
;
	bra	L060B
;
	asra
;
	db	$41
;
	inca
;
	db	$41
;
	bra	L0640
;
	rora
	rora
	comx
;
	db	$45, $4E
;
	comx
	bra	L0645
;
	clra
	bra	L064E
;
	tsta
	bra	L061F
	bra	L0650
;
	rora
	rora
	lsrx
;
	db	$45
;
	inca
	bra	L0628
;
	inca
	bra	L062B
;
	db	$45, $31
;
	bra	L065F
;
	com	X003A
	neg	X0030
	coma
	lsra
;
	db	$31
;
	bra	L065D
;
	db	$52, $52, $31, $4E
;
	clra
	bra	L0662
;
	clra
	lsra
;
	db	$45
;
	bra	L0676
;
	neg	X0020
	neg	X0030
	dec	X0020
	bra	L0672
;
	db	$41
;
	lsra
	bra	L067F
;
	rora
	rora
	bra	L0673
;
	ora	XA60A
	sta	STACK_0cf
	lda	#$05
	sta	STACK_0ce
	rts
;
L263E:
	ldx	#$D1
	jsr	L256C
	bne	L0647
	bclr	7,STACK_0d2
	ldx	#$CF
	jsr	L256C
	bne	L063D
	brclr	3,STACK_0ce,L0653
	bset	7,RAM1_05d
	brclr	2,STACK_0ce,L06CF
	lda	STACK_0ce
	and	#$F8
	sta	STACK_0ce
L265C:
	lda	#$0A
	brset	7,RAM1_060,L06C5
	lda	#$08
	brclr	3,RAM1_08b,L06C5
	tst	STACK_0ce
	beq	L069B
	brset	7,STACK_0ce,L06C5
	brset	2,STACK_0ce,L0690
	brclr	1,STACK_0ce,L067C
	lda	#$01
	brclr	0,STACK_0ce,L06B6
	lda	#$04
	bra	L06B6
;
	brset	5,STACK_0ce,L0687
	brclr	6,STACK_0ce,L069B
	lda	#$05
	brset	0,STACK_0ce,L06C5
	lda	#$09
	brclr	6,RAM1_067,L06B6
	bset	7,RAM1_05d
	bra	L06B6
;
	brclr	1,STACK_0ce,L069B
	brset	2,STACK_0cb,L069B
	lda	#$06
	brclr	0,STACK_0ce,L06B4
	lda	#$01
	brset	3,STACK_0ce,L06B6
	lda	#$06
	brset	6,RAM1_07f,L06B6
	brset	3,RAM1_07f,L06B6
	lda	#$04
	brset	5,RAM1_07f,L06B4
	lda	RAM1_07f
	coma
	and	#$03
	beq	L06B6
	ora	#$40
	brset	5,RAM1_07f,L06C5
	sta	RAM1_056
	lda	RAM1_07f
	coma
	and	#$03
	jsr	L252C
	add	RAM1_056
	eor	STACK_0ca
	beq	L06CF
	eor	STACK_0ca
	sta	STACK_0ca
	bset	7,RAM1_05d
	rts
L26D0:
	rts
;
L26D1:
	lda	RAM1_07a
	beq	L0735
	dec	RAM1_079
	bne	L0735
	clr	RAM1_07a
	bra	L072D
;
L26DD:
	brset	1,RAM1_077,L06FD
	brclr	4,RAM1_077,L0701
	lda	RAM1_078
	and	#$1F
	beq	L06FD
	sta	RAM1_07a
	lda	RAM1_077
	and	#$E0
	add	RAM1_07a
	sta	RAM1_07a
	jsr	L2524
	tax
	lda	X2735,x
	sta	RAM1_079
	cmp	X3F7A
	clr	RAM1_077
	brclr	6,RAM1_09f,L0735
	brset	6,RAM1_05d,L0735
	lda	RAM1_07a
	beq	L0719
	brclr	7,RAM1_09f,L0711
	bclr	6,RAM1_09f
	rts
;
	clr	RAM1_07a
	and	#$1F
	ora	#$C0
	bra	L072D
;
	bclr	6,RAM1_09f
	lda	RAM1_09f
	bpl	L0723
	eor	#$90
	bra	L072D
;
	tax
	lda	X2769,x
	brclr	5,RAM1_069,L072D
	lda	X273B,x
	sta	RAM1_078
	cmp	#$01
	beq	L0735
	bset	6,RAM1_05d
X2735:
	rts
;
	bclr	4,PLMA
;
	db	$4B
;
	bcs	L076D
X273B:
	brset	0,STACK_0e1,L0720
	cpx	STACK_0e4,x
	bit	STACK_0e6,x
	sta	EEPROM_ECLK_control,x
X2744:
	adc	PortB,x
	brclr	0,PortB,L0736
	brclr	6,ADSTAT,L0756
	lda	,x
	brclr	0,STACK_0f3,L075C
	bit	,x
	brclr	0,STACK_0f7,L074C
	adc	,x
	ora	,x
	add	,x
	jmp	,x						;INFO: index jump
;
	jsr	,x						;INFO: index jump
	ldx	,x
	brset	3,STACK_0ea,L075E
	brset	1,SCCR2,L076F
	brclr	1,STACK_0ff,L0757
	brset	4,STACK_0ee,L0755
	sub	,x
	cmp	,x
	sbc	,x
X2769:
	brset	0,STACK_0e1,L074E
	cpx	STACK_0e4,x
	bit	STACK_0e6,x
	sta	STACK_0e8,x
	adc	DDRA,x
	add	STACK_0ec,x
	jsr	L000D,x						;INFO: index jump
	brclr	4,PLMA,L0771
	brclr	2,STACK_0f3,L078A
	bit	,x
	brclr	5,STACK_0f7,L077A
	adc	,x
	ora	,x
	add	,x
	jmp	,x						;INFO: index jump
;
	jsr	,x						;INFO: index jump
	ldx	,x
	brset	3,STACK_0ea,L078C
	brset	1,SCCR2,L079D
	brclr	1,STACK_0ff,L0785
	brset	4,STACK_0ee,L0783
	sub	,x
	cmp	,x
	sbc	,x
L2797:
	incx
	incx
	cmp	RAM1_078
	beq	L07BD
	cmp	#$1F
	bne	L07A7
	eor	RAM1_078
	and	#$F0
	bra	L07BD
;
	bit	#$E0
	beq	L07BA
	bit	#$1F
	bne	L07BA
	eor	RAM1_078
	beq	L07BA
	cmp	#$06
	bhi	L07BA
	bit	#$00
	rts
;
	lda	#$01
	rts
	rts
;
L27BE:
	brset	6,RAM1_05f,L003D
	brclr	1,RAM1_0bc,L07D9
	brset	7,RAM1_0b9,L07D9
	brset	7,RAM1_0b3,L07D9
	brclr	2,STACK_0ce,L07D3
	brset	1,STACK_0ce,L07D3
	brclr	0,STACK_0ce,L07D9
	lda	#$27
	sta	RAM1_0b3
	bclr	1,RAM1_0bc
	brclr	5,STACK_0cb,L0000
	lda	STACK_0d5
	and	#$70
	bne	L0000
	lda	STACK_0d5
	and	#$07
	beq	L0000
	cmp	#$06
	bcc	L0000
	clra
	brset	3,STACK_0ce,L07F3
	brclr	6,RAM1_0b5,L07F5
	lda	#$08
	eor	STACK_0d5
	and	#$08
	beq	L0000
	eor	STACK_0d5
	jsr	L249F
	bclr	6,STACK_0d2
	lda	RAM1_0b6
	and	#$07
	cmp	#$06
	bne	L000C
	bset	6,STACK_0d2
	lda	RAM1_07f
	and	#$2B
	cmp	#$02
	bne	L003D
	brset	5,STACK_0ce,L0023
	lda	STACK_0ca
	and	#$0F
	cmp	#$01
	beq	L0023
	cmp	#$06
	bne	L003D
	brset	5,STACK_0cb,L002E
	brset	6,STACK_0cb,L002E
	brclr	7,STACK_0cb,L0034
	bset	2,STACK_0cb
	bset	7,RAM1_05d
	bclr	5,STACK_0cb
	bclr	6,STACK_0cb
	brset	6,STACK_0ce,L003D
	brclr	6,RAM1_05d,L003D
	jmp	L2BDF
	rts
;
	lda	RAM1_0b8
	and	#$60
	cmp	#$60
	bne	L004E
	lda	RAM1_0b8
	and	#$0F
	ora	#$10
	bra	L0064
;
	lda	#$10
	bra	L005A
;
	lda	RAM1_0b8
	and	#$60
	beq	L005E
	lda	#$F0
	add	RAM1_0b8
	bra	L0069
;
	lda	RAM1_0b8
	and	#$0F
	ora	#$60
	brset	2,RAM1_0b8,L0069
	eor	#$01
	ora	#$80
	bra	L0098
;
	lda	RAM1_0b8
	brset	2,RAM1_0b8,L0077
	and	#$03
	inca
	bra	L0096
;
	lda	#$08
	brclr	3,RAM1_0b8,L0094
	clra
	bra	L0096
;
	lda	RAM1_0b8
	brset	2,RAM1_0b8,L008C
	asla
	asla
	eor	RAM1_0b8
	and	#$08
	bra	L0092
;
	lsra
	lsra
	eor	RAM1_0b8
	and	#$02
	ora	#$04
L2894:
	eor	RAM1_0b8
	ora	#$F0
	sta	RAM1_0b4
	lda	#$80
	bra	L00F5
L289E:
	bra	L0052
	bra	L003E
	bra	L006D
	bra	L007F
;
	brset	2,RAM1_0b8,L00A4
	brset	5,RAM1_069,L00CC
	lda	#$01
	bra	L0094
;
	brclr	2,RAM1_0b8,L00B8
	bset	4,RAM1_0b3
	bset	5,RAM1_0b3
	rts
;
	brclr	4,STACK_0ce,L00A4
	lda	#$30
	jmp	L2976
	jmp	L2A1F
;
	brset	2,RAM1_0b6,L00CC
	brset	3,RAM1_08e,L00DC
	brclr	2,RAM1_0b8,L00E3
	rts
;
	lda	#$19
	brset	1,RAM1_0b5,L00D4
	lda	#$18
	jsr	L23F3
	lda	#$61
	jmp	L2962
;
	bset	6,STACK_0c5
	lda	#$63
	jmp	L2964
	jmp	L299C
;
	bset	7,STACK_0d2
	ldx	#$FA
	stx	STACK_0d1
	bra	L0122
;
	lda	#$A4
	brclr	5,RAM1_0b6,L00F5
	lda	#$B4
	bclr	7,STACK_0d2
	bra	L0162
;
	lda	#$86
	sta	RAM1_0b3
	bclr	7,STACK_0d2
	bset	2,STACK_0cb
	rts
;
	lda	#$08
	brset	2,RAM1_0b8,L0119
	ldx	#$D4
	jsr	L37C7
	sta	RAM1_05b
	lda	RAM1_0b8
	jsr	L379B
	eor	RAM1_05b
	and	#$01
	ora	#$02
	jmp	L2894
;
	bset	7,STACK_0d2
	bra	L0125
;
	bset	7,STACK_0d2
	lda	#$C4
	cmp	XA6CC
	brclr	7,STACK_0d2,L00E3
	ldx	#$FA
	stx	STACK_0d1
	bra	L0147
;
	brset	7,STACK_0d2,L0160
	lda	#$D4
	bra	L013C
;
	brset	7,STACK_0d2,L0160
	lda	#$DC
	bclr	4,RAM1_0bb
	bclr	5,RAM1_0bb
	bra	L0162
;
	lda	#$C4
	cmp	XA6CC
	brset	3,RAM1_05d,L0178
	bclr	4,RAM1_0bb
	bclr	5,RAM1_0bb
	brclr	7,STACK_0d2,L0153
	ora	#$07
	sta	RAM1_0b3
	bset	2,STACK_0cb
	brclr	7,STACK_0d2,L0174
	ldx	#$FA
	stx	STACK_0d1
	bra	L0174
;
	lda	#$94
L2962:
	bset	2,STACK_0cb
L2964:
	bset	5,STACK_0d2
	sta	RAM1_0b3
	jmp	L2A15
;
	lda	#$8A
	jsr	L2A41
	bclr	5,STACK_0d2
	bset	7,RAM1_07e
	lda	#$90
L2976:
	sta	RAM1_077
	rts
;
	bset	5,RAM1_07e
	brclr	5,STACK_0d2,L0178
	bclr	1,STACK_0cb
	lda	#$80
	jsr	L2A41
	bra	L01AC
;
	clrx
	bset	5,STACK_0d2
	brset	2,RAM1_0ba,L0199
	brset	3,STACK_0ce,L0199
	brset	4,RAM1_0b6,L019C
	brclr	7,RAM1_0ba,L019C
	brclr	2,RAM1_0b6,L019C
	jmp	L2A06
;
L299C:
	brclr	5,RAM1_0b6,L01A2
	lda	#$B4
	cmp	XA642
	sta	RAM1_0b3
	bset	4,STACK_0cc
	lda	#$B0
	bra	L0176
;
	lda	#$27
	jsr	L24C5
	cmp	#$19
	bcc	L01BF
	bset	3,RAM1_05d
	lda	RAM1_0b4
	and	#$74
	cmp	#$60
	beq	L01D0
	brclr	3,RAM1_081,L01CB
	bclr	3,RAM1_081
	ldx	#$A8
	jsr	L37C7
	sta	RAM1_085
	brclr	3,RAM1_05d,L01E4
	bra	L020B
;
	ldx	#$82
	eor	RAM1_0b8
	and	#$74
	beq	L0202
	bclr	3,RAM1_05d
	bset	3,RAM1_07e
	bset	3,RAM1_081
	lda	RAM1_088
	nega
	lsra
	sta	RAM1_085
	brset	3,RAM1_08e,L020B
	lda	RAM1_0b4
	and	#$7F
	cmp	RAM1_0b8
	bne	L020B
	brclr	2,STACK_0ce,L020B
	brset	1,STACK_0ce,L020B
	brset	0,STACK_0ce,L020B
	jsr	L1D9B
	and	RAM1_056
	beq	L020B
	bclr	7,RAM1_0b5
	cmp	XBFB3
	bra	L020B
;
L2A06:
	lda	#$80
	jsr	L2A41
	bset	2,STACK_0ce
	bclr	1,STACK_0ce
	bclr	0,STACK_0ce
	lda	#$7D
	sta	STACK_0cf
L2A15:
	brclr	3,STACK_0ce,L021E
	bclr	1,STACK_0ce
	lda	#$32
	sta	STACK_0cf
	rts
;
L2A1F:
	brset	5,STACK_0d2,L0230
	bset	5,STACK_0d2
	brclr	4,RAM1_0bb,L022B
	lda	#$C2
	bra	L023E
;
	lda	#$01
	sta	STACK_0cc
	rts
;
	lda	STACK_0cc
	cmp	#$FF
	bne	L022B
	bclr	5,STACK_0d2
	lda	RAM1_0b7
	sta	STACK_0c8
	lda	#$C0
	jmp	L23F6
;
L2A41:
	sta	RAM1_0b3
	bset	2,STACK_0cb
	bclr	7,STACK_0d2
	lda	RAM1_078
	jsr	L252C
	eor	RAM1_0b8
	and	#$70
	eor	RAM1_0b8
	ora	#$80
	sta	RAM1_0b4
	brclr	5,RAM1_069,L025B
	bclr	0,RAM1_0b4
	rts
;
L2A5C:
	brclr	3,STACK_0ce,L0262
	jmp	L2AE3
;
	brset	7,RAM1_0b9,L028B
	brclr	7,RAM1_0ba,L026B
	brset	2,RAM1_0b6,L028B
	brclr	3,RAM1_08e,L028B
	brclr	7,STACK_0c5,L028B
	brclr	4,RAM1_0b5,L028B
	brclr	6,STACK_0c5,L028B
	bclr	6,STACK_0c5
	bset	5,STACK_0c5
	lda	STACK_0c5
	and	#$1F
	jsr	L24A8
	lda	STACK_0c5
	and	#$1F
	add	#$23
	jmp	L23F6
;
	lda	#$01
	brclr	4,RAM1_0bb,L0294
	brclr	3,RAM1_0b5,L0294
	inca
	brset	7,RAM1_0b9,L029D
	brclr	7,RAM1_0ba,L029F
	brclr	2,RAM1_0b6,L029F
	lda	#$03
	jsr	L2473
	lda	#$13
	brset	6,STACK_0d2,L02D9
	brclr	3,RAM1_0b5,L02C3
	brclr	7,RAM1_0ba,L02B0
	brset	2,RAM1_0b6,L02C3
	brclr	4,STACK_0ce,L02BE
	brset	6,RAM1_0bb,L02B9
	brclr	0,RAM1_0bb,L02C3
	lda	#$CE
	jmp	L23D9
;
	lda	#$C2
	brset	4,RAM1_0bb,L02BB
	brclr	5,RAM1_0bb,L02E2
	clra
	brclr	2,RAM1_0b8,L02D1
	ora	#$10
	brclr	3,RAM1_08e,L02D1
	ora	#$20
	sta	STACK_0c9
	lda	RAM1_0b7
	sta	STACK_0c8
	lda	#$C0
	brclr	7,STACK_0cb,L02DF
	jmp	L23EA
	jmp	L23D9
	rts
;
L2AE3:
	brset	6,RAM1_05f,L0334
	brclr	2,RAM1_0b6,L02F0
	jsr	L2A15
	lda	#$70
	bra	L02D9
;
	lda	STACK_0cf
	deca
	brset	1,STACK_0ce,L031E
	brclr	0,RAM1_0b9,L0301
	brset	6,RAM1_0bb,L02FE
	bmi	L0316
	brset	2,RAM1_0bf,L0316
	bpl	L0311
	lda	#$32
	sta	STACK_0cf
	lda	#$D4
	brclr	3,RAM1_0b6,L030E
	lda	#$DC
	jmp	L2962
;
	brclr	5,STACK_0d2,L02AA
	bra	L02EC
;
	lda	#$0A
	sta	STACK_0ce
	lda	#$7D
	sta	STACK_0cf
	bpl	L02AA
	lda	#$4B
	sta	STACK_0cf
	ldx	#$04
	jsr	L2557
	bset	6,RAM1_05f
	lda	RAM1_0b7
	sta	STACK_0c4
	lda	#$15
	jmp	L23EA
;
	lda	STACK_0cf
	deca
	bpl	L032F
	bclr	0,RAM1_061
	bset	2,RAM1_05d
	rts
	jmp	L2412
;
L2B41:
	bclr	7,STACK_0cb
	brset	6,RAM1_05f,L033E
	brclr	7,RAM1_069,L033E
	lda	RAM1_0b8
	brset	2,RAM1_0b8,L036E
	and	#$07
	tax
	lda	X2BDA,x
	brclr	5,RAM1_069,L0359
	and	#$0C
	brclr	7,RAM1_0ba,L035F
	brset	2,RAM1_0b6,L0362
	brclr	3,RAM1_0b5,L0364
	ora	#$02
	brset	3,RAM1_08e,L0375
	brclr	1,RAM1_0bb,L0375
	ora	#$01
	bra	L0375
;
	lda	#$18
	brclr	3,RAM1_0b8,L0375
	lda	#$1C
	clrx
	jsr	L2403
	brset	3,STACK_0ce,L0381
	lda	RAM1_0bd
	brset	2,RAM1_0bb,L0383
	lda	RAM1_0b8
	and	#$70
	brclr	7,RAM1_0b9,L0389
	clra
	jsr	L2525
	jsr	L2403
	lda	#$02
	brset	2,RAM1_0b8,L03B8
	lda	#$08
	brclr	7,RAM1_0ba,L039C
	brset	2,RAM1_0b6,L039F
	brclr	3,RAM1_0b5,L03A1
	ora	#$01
	brset	3,STACK_0ce,L03A7
	brclr	6,RAM1_0b5,L03A9
	ora	#$04
	brclr	3,RAM1_08e,L03B1
	brclr	4,RAM1_0b5,L03B1
	ora	#$04
	brclr	1,RAM1_0b8,L03BD
	ora	#$20
	bra	L03BD
;
	brclr	3,RAM1_0b8,L03BD
	ora	#$20
	brclr	5,RAM1_0b6,L03C2
	ora	#$10
	brclr	5,RAM1_069,L03C7
	and	#$2F
	jsr	L2403
	clra
	incx
	brclr	2,RAM1_0bb,L03D6
	lda	RAM1_0bd
	and	#$70
	jsr	L2525
	jsr	L2403
	rts
;
X2BDA:
	asla
	bhcc	L0429
	bmc	L0360
L2BDF:
	clrx
	brclr	3,STACK_0ce,L03E5
	ldx	#$52
	lda	X2BFC,x
	sta	RAM1_056
	lda	X2BFB,x
	beq	L03FA
	jsr	L2797
	bne	L03E5
	ldx	X2BFA,x
	jsr	L289E,x						;INFO: index jump
X2BFA:
	rts
;
X2BFB:
	sub	STACK_0e9,x
	sub	#$CD
	rti
;
	sbc	XC0DB,x
	stx	,x
	brset	0,STACK_0f4,L0409
	adc	X0025,x
	adc	#$2F
	adc	X3EE7
;
	db	$84
;
	eor	,x
;
	db	$87, $87
;
	adc	RAM1_098
	adc	RAM1_0a7
;
	db	$82
;
	eor	RAM1_07e
	sta	X92D8
	sec
	jmp	,x						;INFO: index jump
;
	db	$84
;
	jsr	,x						;INFO: index jump
;
	db	$87
;
	rsp
	adc	RAM1_09d
	adc	RAM1_0bc
;
	db	$82
;
	jsr	L007E
	jmp	L92DD,x						;INFO: index jump
;
	sec
	sub	,x
;
	db	$84
;
	stx	RAM1_087,x
;
	db	$90
;
	adc	RAM1_08f
	adc	RAM1_0b0
;
	db	$82, $AF, $7E
;
	sub	X92CF,x
	sec
	brclr	5,RAM1_050,L0435
;
	db	$45
;
	bit	RAM1_05b
	bit	X6408,x
	brset	2,STACK_0f6,L045B
	lda	X2236,x
	brset	3,STACK_0e7,L03E4
	eor	,x
	rsp
	jmp	,x						;INFO: index jump
;
	db	$95
;
	jsr	,x						;INFO: index jump
	rsp
	sub	,x
;
	db	$95
;
	stx	RAM1_09c,x
	bit	,x
	lsr	STACK_0e0,x
	sbc	STACK_0f7,x
	brset	4,PortA,L046F
	neg	OCL2,x
	brclr	3,RAM1_08b,L0482
	lda	#$48
	brset	2,RAM1_0be,L046D
	lda	#$08
	brset	3,RAM1_05f,L0485
	lda	#$40
	brset	4,RAM1_0ba,L0485
	brset	2,RAM1_0be,L0485
	lda	#$04
	brset	7,RAM1_05f,L048C
	lda	#$80
	brset	2,RAM1_0ba,L048C
	clra
	bra	L048C
;
	brclr	5,STACK_0cb,L048C
	bclr	5,STACK_0cb
	bset	7,RAM1_05d
	eor	RAM1_07f
	and	#$CC
	sta	RAM1_05b
	eor	RAM1_07f
	sta	RAM1_07f
	and	#$60
	bne	L04A6
	brclr	4,RAM1_07f,L04A6
	bclr	4,RAM1_07f
	ldx	#$A8
	jsr	L37C7
	sta	RAM1_085
	brclr	0,RAM1_061,L0506
	tst	RAM1_05b
	beq	L04D4
	bset	7,RAM1_05d
	bset	0,STACK_0cb
	bset	3,RAM1_07e
	bset	2,STACK_0cb
	brset	3,STACK_0ce,L0507
	brclr	3,RAM1_05b,L04C3
	bset	7,RAM1_05d
	bset	0,STACK_0cb
	bset	4,RAM1_0b3
	bclr	7,STACK_0d2
	brclr	6,RAM1_05b,L04D4
	bset	7,RAM1_05d
	brset	6,RAM1_07f,L04D4
	ldx	#$A8
	jsr	L37C7
	sta	RAM1_085
	bra	L04D4
;
	brclr	5,RAM1_07c,L0507
	brset	6,RAM1_07c,L04F3
	brclr	2,RAM1_069,L0507
L2CDD:
	bclr	2,RAM1_069
	bclr	2,STACK_0d2
	bclr	4,STACK_0d3
	ldx	#$A5
	jsr	L379B
	brset	1,RAM1_07f,L0507
	brclr	0,RAM1_07f,L0507
	brset	2,RAM1_081,L0503
	bra	L0521
;
	brset	2,RAM1_069,L0507
	bset	2,RAM1_069
	bset	2,RAM1_081
	brclr	1,RAM1_07f,L04FF
	bclr	2,RAM1_081
	bset	2,STACK_0cb
	bset	4,RAM1_0b3
	jmp	L2E5F
	rts
;
	lda	RAM1_07f
	brset	0,RAM1_080,L0510
	bit	#$EA
	beq	L055A
	bit	#$03
	bne	L0524
	brclr	1,STACK_0d2,L0569
	brset	0,STACK_0d2,L0569
	bset	0,STACK_0d2
	ldx	#$88
	jmp	L2DCF
	jmp	L2E1A
;
	brclr	0,RAM1_07f,L0566
	brclr	2,STACK_0d2,L05A8
	brset	5,RAM1_07f,L0566
	brclr	3,RAM1_05f,L0533
	brset	1,RAM1_07c,L05A8
	brset	7,STACK_0d3,L05A8
	bset	7,STACK_0d3
	bclr	2,STACK_0d3
	brclr	3,RAM1_06a,L053F
	bset	2,STACK_0d3
	bclr	1,STACK_0d3
	brclr	1,RAM1_07c,L0555
	bset	1,STACK_0d3
	bset	0,STACK_0d3
	brclr	0,RAM1_07c,L0550
	brset	2,RAM1_07c,L0555
	bra	L0553
;
	brclr	2,RAM1_07c,L0555
	bclr	0,STACK_0d3
	lda	#$88
	jmp	L2E0E
;
	brclr	3,RAM1_08b,L0566
	brset	7,RAM1_060,L0566
	lda	STACK_0ce
	and	#$C8
	beq	L0572
	brset	1,STACK_0d2,L05CB
	brset	2,STACK_0d2,L056F
	brclr	3,RAM1_07c,L05A8
	jmp	L2E08
;
	brclr	0,RAM1_07f,L0589
	brset	1,STACK_0d2,L05CB
	brclr	6,RAM1_07c,L05A8
	brset	4,RAM1_07c,L05A8
	brclr	2,STACK_0d2,L05D5
	brset	7,STACK_0d3,L05D5
	bra	L05A8
	jmp	L2CDD
;
	brset	2,STACK_0d2,L0608
	brset	3,RAM1_07c,L0608
	brclr	6,RAM1_06a,L0521
	lda	RAM2_0265
	and	#$F0
	cmp	#$B0
	beq	L05A2
	brclr	3,STACK_0d4,L05A2
	bclr	3,STACK_0d4
	bra	L05BC
;
	brclr	1,STACK_0d2,L05BC
	brset	0,STACK_0d2,L05BC
	bclr	5,RAM1_080
	lda	RAM1_085
	bne	L05B0
	bset	5,RAM1_080
	brclr	6,RAM1_05d,L0628
	brclr	3,RAM1_08b,L0628
	brset	0,RAM1_080,L0628
	jmp	L3012
;
	bset	1,STACK_0d2
	bclr	0,STACK_0d2
	bset	4,RAM1_0b3
	ldx	#$8D
	brclr	2,STACK_0d4,L05CF
	ldx	#$83
	bra	L05CF
;
	ldx	#$80
	bclr	1,STACK_0d2
L2DCF:
	stx	RAM1_07d
	bset	6,RAM1_094
	bra	L061E
;
	bset	2,STACK_0d2
	bset	4,RAM1_0b3
	bclr	1,RAM1_07f
	bset	0,RAM1_07f
	brset	3,STACK_0d3,L05ED
	bset	3,STACK_0d3
	lda	#$8C
	brset	4,STACK_0d3,L060E
	lda	#$8D
	bset	0,RAM1_07c
	bra	L060E
;
	lda	#$8F
	brclr	7,STACK_0d3,L060E
	bclr	7,STACK_0d3
	lda	STACK_0d3
	and	#$07
	brclr	5,STACK_0d3,L05FD
	ora	#$08
	tax
	lda	X3002,x
	brclr	2,STACK_0d3,L060E
	bset	3,RAM1_06a
	bra	L0610
;
L2E08:
	lda	#$80
	bclr	2,STACK_0d2
	bclr	3,RAM1_07c
L2E0E:
	bclr	3,RAM1_06a
	sta	RAM1_07b
	bset	5,RAM1_094
	cmp	#$81
	beq	L0622
	bra	L061E
;
L2E1A:
	bset	1,RAM1_07f
	bclr	0,RAM1_07f
	bclr	7,STACK_0d2
	bset	2,STACK_0cb
	bset	4,RAM1_05c
	bset	7,RAM1_05d
	bset	3,RAM1_0bc
	rts
;
L2E29:
	brclr	6,RAM1_07c,L0640
	brset	5,RAM1_07f,L0640
	lda	#$81
	bra	L060E
;
	brset	3,RAM1_08e,L0652
	brclr	1,RAM1_0a1,L063C
	brclr	3,STACK_0d2,L0640
	lda	#$B0
	sta	RAM1_077
	rts
;
	brclr	5,RAM1_07f,L0652
	bclr	5,RAM1_07f
	bclr	1,STACK_0ce
	bclr	0,STACK_0ce
	lda	#$80
	sta	RAM1_0a0
	bclr	3,STACK_0d2
	bra	L061E
;
	brset	3,RAM1_07f,L0640
	bclr	2,RAM1_081
	bset	6,STACK_0c5
	brset	0,RAM1_07f,L0675
	brclr	1,RAM1_07f,L061A
L2E5F:
	brset	5,RAM1_07c,L066A
	lda	#$84
	sta	RAM1_07b
	bset	5,RAM1_094
	bra	L0675
;
	brclr	2,RAM1_069,L0675
	bset	0,RAM1_07f
	bclr	4,RAM1_07c
	bclr	3,RAM1_06a
	bra	L0680
;
	brclr	6,RAM1_06a,L061A
	clra
	sta	RAM2_0264
	bclr	0,STACK_0d4
	bclr	0,RAM1_07f
	bclr	1,RAM1_07f
	bclr	2,RAM1_0ba
	bra	L061E
;
	ldx	#$00
	cmp	XAE06
	bra	L06A5
;
	ldx	#$06
	brclr	6,RAM1_08e,L06A5
	lda	STACK_0ce
	and	#$F8
	sta	STACK_0ce
	jsr	L2459
	lda	#$C4
	jmp	L23F6
;
	ldx	#$04
	cmp	XAE02
	brset	5,RAM1_07f,L0640
	brclr	2,STACK_0ce,L06BC
	brclr	1,STACK_0ce,L06BC
	brset	0,STACK_0ce,L06BC
	cpx	STACK_0d0
	bne	L06BC
	clr	STACK_0cf
	bset	0,STACK_0cf
	clr	STACK_0cc
	rts
;
	brset	7,RAM1_07f,L06BB
	brset	5,RAM1_080,L06BB
	lda	RAM1_082
	and	#$8F
	beq	L06ED
	cmp	#$01
	beq	L06ED
X2ECC:
	and	#$0F
	beq	L06ED
	cmp	#$02
	bne	L06BB
	brset	7,RAM1_0b9,L06BB
	brclr	2,RAM1_0b6,L06ED
	lda	RAM1_0b6
	cmp	#$05
	beq	L06BB
	brset	7,RAM1_0b5,L06E7
	bset	7,RAM1_0b5
	bset	3,RAM1_0bc
	bset	4,RAM1_0b3
	bset	5,RAM1_0b3
	bclr	7,STACK_0d2
	stx	STACK_0d0
	bset	2,STACK_0ce
	bset	1,STACK_0ce
	bclr	0,STACK_0ce
	lda	#$96
	sta	STACK_0cf
	jmp	L2FC9
;
	lda	#$01
	cmp	XA6FF
	ldx	#$50
	bra	L070C
;
	lda	#$01
	cmp	XA6FF
	ldx	#$30
	stx	RAM1_077
	bra	L0772
;
	lda	RAM1_078
	and	#$0F
	add	#$F9
	nega
	beq	L06BB
	brclr	2,STACK_0ce,L0772
	brclr	1,STACK_0ce,L0772
	brset	0,STACK_0ce,L0772
	sta	RAM1_057
	jsr	L2FC9
	bsr	L0760
	bhi	L0751
	jsr	L2FEA
	bne	L0738
	tst	RAM1_063
	bne	L06F5
	add	RAM1_057
	bra	L074B
;
	bpl	L0745
	add	RAM1_057
	bmi	L074B
	lda	#$28
	sta	RAM1_063
	clra
	bra	L074B
;
	add	RAM1_057
	bmi	L073E
	beq	L073E
	bsr	L0760
	bhi	L06F5
	bra	L0753
;
	clr	RAM1_056
	bsr	L07C9
	lda	RAM1_056
	jsr	L379B
	bset	4,RAM1_07e
	bset	3,RAM1_07e
	bra	L06F5
;
	ldx	STACK_0d0
	aslx
	sta	RAM1_056
	bpl	L0769
	nega
	incx
	brclr	1,RAM1_081,L076E
	incx
	incx
	cmp	X2FB9,x
	rts
;
	brset	5,RAM1_082,L07B8
	brset	7,RAM1_087,L07B8
	brset	6,RAM1_07f,L077E
	brclr	5,RAM1_07f,L078B
	brset	4,RAM1_07f,L078E
	ldx	RAM1_086
	cpx	RAM1_085
	bls	L078E
	stx	RAM1_085
	bra	L078E
;
	brset	3,RAM1_082,L07B8
	bset	4,RAM1_07f
	add	RAM1_085
	bmi	L07A7
	brset	3,RAM1_081,L079D
	cmp	#$1E
	bls	L079D
	lda	#$1E
	brclr	7,RAM1_082,L07A8
	tst	RAM1_085
	bne	L07B8
	lda	#$01
	cmp	X004F
	sta	RAM1_085
	brset	6,RAM1_07f,L07B8
	brset	7,RAM1_07f,L07B8
	brset	5,RAM1_07f,L07B8
	brset	3,RAM1_081,L07B8
	bset	3,RAM1_05c
	rts
;
X2FB9:
	brset	3,DDRC,L07C1
	brclr	2,DDRC,L07C5
	brclr	2,DDRB,L07D1
	brclr	7,SCCR2,L07D4
	brclr	7,SCCR2,L07D7
	brclr	7,BAUD,L004A
	bset	0,RAM1_0ae
	brset	7,RAM1_0a6,L07FB
	brset	2,RAM1_0be,L07FB
	brset	5,RAM1_0b9,L07FB
	ldx	#$10
	lda	#$2A
	bra	L07FB
;
	ldx	#$12
	lda	#$38
	brset	3,RAM1_08e,L07E7
	ldx	#$11
	lda	#$37
	brset	3,RAM1_07f,L07FB
L2FEA:
	lda	STACK_0d0
	sta	STACK_0c7
	bset	7,STACK_0c7
	lsra
	add	#$A0
	jsr	L37C6
	sta	STACK_0c8
	bset	6,STACK_0c6
	rts
;
	jsr	L24A8
	txa
	jmp	L23D9
;
X3002:
	wait
	wait
;
	db	$8A, $8B, $90, $90
	db	$89, $89
;
	wait
	wait
;
	db	$82
;
	swi
;
	db	$90, $90, $89, $89
;
L3012:
	clrx
	brclr	3,STACK_0ce,L0018
	ldx	#$22
	lda	X302F,x
	sta	RAM1_056
	lda	X302E,x
	beq	L002D
	jsr	L2797
	bne	L0018
	ldx	X302D,x
	jsr	L2E29,x						;INFO: index jump
X302D:
	rts
;
X302E:
	brclr	6,RAM1_064,L003A
	asr	,x
	brset	5,RAM1_05d,L0041
	dec	,x
	bclr	7,STACK_0e7
	ora	,x
	jmp	L3AD3,x						;INFO: index jump
;
	decx
	cpx	XDA92,x
	add	,x
	stx	X3BD6,x
;
	db	$5B
;
	lda	XDB92,x
	add	PLMA,x
	add	X18EE
	brset	5,STACK_0ce,L0068
	brset	3,PortA,L0053
L3053:
	jmp	L253F
;
L3056:
	lda	#$C8
	nop
	deca
	bne	L0058
	rts
;
L305D:
	clr	RAM1_0a1
	clr	RAM1_0a2
	clr	RAM1_0b2
	brclr	4,RAM1_069,L0078
	jmp	L30A1
L3069:
	jmp	L3133
;
L306C:
	brclr	4,RAM1_069,L0078
	jmp	L30E2
;
L3072:
	brclr	4,RAM1_069,L0078
	jmp	L3106
;
	bclr	7,RAM1_0a0
	rts
L307B:
	jmp	L307E
;
L307E:
	brclr	1,RAM1_0a1,L009F
	dec	RAM1_0af
	bpl	L009F
	brset	7,RAM1_0a1,L008B
	jmp	L3133
;
	brset	2,RAM1_0a1,L009F
	lda	#$14
	sta	RAM1_0af
	jsr	L335B
	cmp	#$03
	bls	L009F
	inc	RAM1_0b1
	bne	L009F
	bset	1,RAM1_0b1
	sec
	rts
;
L30A1:
	sei
	bclr	3,PortC
	bclr	2,PortC
	cli
	jsr	L3053
	sei
	bset	2,PortC
	bset	3,PortC
	cli
	bsr	L00C4
	ldx	#$A3
	clr	PortB,x
	jsr	L329D
	jsr	L32E3
	inc	RAM1_0b2
	brclr	4,RAM1_0b2,L00B2
	bclr	4,RAM1_0b2
	rts
;
	brset	0,RAM1_0a1,L00C3
	jsr	L3166
	lda	#$4C
	bsr	L00DC
	lda	#$A6
	bsr	L00DC
	lda	#$07
	bsr	L00DC
	clra
	jsr	L3257
	lda	#$0E
	ldx	#$50
	sta	,x
	jmp	L31FB
;
L30E2:
	brclr	7,RAM1_0a0,L0111
	brclr	0,RAM1_0a1,L00EE
	lda	RAM1_0a0
	and	#$08
	bne	L0111
	lda	RAM1_0a0
	and	#$0F
	bsr	L00FF
	bclr	7,RAM1_0a0
	lda	RAM1_0a0
	jsr	L2524
	and	#$03
	beq	L0111
	tax
	ldx	X3320,x
	jmp	L32E3,x						;INFO: index jump
;
L3106:
	brset	0,RAM1_0a1,L0112
	brset	2,RAM1_0a1,L0111
	brset	1,RAM1_0a1,L0112
	clr	RAM1_0a1
	rts
;
	jsr	L3240
	and	#$20
	bne	L0111
	brset	1,RAM1_0a1,L012C
	lda	RAM1_0ae
	cmp	#$02
	beq	L0125
	brclr	4,RAM1_0a1,L0128
	bset	5,RAM1_0a1
	rts
;
	lda	#$91
	bra	L015B
;
	brclr	3,RAM1_0a1,L010F
	lda	#$92
	bra	L0190
;
L3133:
	bsr	L015F
	brclr	0,RAM1_0a1,L0111
	bsr	L0166
	jmp	L337F
;
	brset	0,RAM1_0a1,L0111
	bsr	L015F
	lda	RAM1_0a2
	and	#$0F
	sta	RAM1_0a2
	jsr	L33F2
	lda	RAM1_0ad
	beq	L0153
	add	#$01
	bcc	L0155
	lda	#$02
	sta	RAM1_0ae
	sta	RAM1_0b1
	lda	#$89
	sta	RAM1_0a1
	bra	L0192
;
L315F:
	brclr	1,RAM1_0a1,L0111
	clr	RAM1_0a1
	bsr	L0166
L3166:
	lda	#$05
	jmp	L3257
;
L316B:
	lda	RAM1_0a2
	and	#$0F
	beq	L01E2
	bsr	L015F
	ldx	#$AD
	jsr	L3299
	brclr	6,RAM1_0a0,L0180
	ldx	#$A3
	jsr	L32BD
	jsr	L32E3
	ldx	RAM1_0ae
	stx	RAM1_0b1
L3187:
	cpx	RAM1_0ad
	bcs	L018E
	lda	#$8A
	cmp	XA682
	sta	RAM1_0a1
	lda	#$08
	bsr	L0168
	lda	RAM1_0ad
	brclr	2,RAM1_0a1,L019F
	lda	RAM1_0b1
	bset	6,RAM1_0a1
	sta	RAM1_058
	clra
	brclr	3,RAM1_0a1,L01A8
	deca
	sta	RAM1_058
	ldx	#$56
	sta	RAM1_057
	lda	#$00
	sta	,x
	bsr	L01E3
	ldx	#$56
	lda	#$7F
	sta	,x
	lda	RAM1_0b1
	cmp	#$02
	bcs	L01BF
	brclr	4,RAM1_0a1,L01C1
	lda	#$02
	sta	PortB,x
	clr	,x
	bsr	L01E5
	lda	#$03
	brset	0,RAM1_0a1,L01CD
	lda	#$02
	bsr	L0168
	lda	#$04
	bsr	L0168
	jsr	L33FA
	clrx
	bsr	L0240
	and	#$20
	bne	L01E2
	decx
	bne	L01D7
L31E0:
	clr	RAM1_0a1
	rts
;
	bsr	L01FB
	lsr	PortB,x
	ror	,x
	lsr	PortB,x
	ror	,x
	lsr	PortB,x
	ror	,x
	lsr	PortB,x
	ror	,x
	brclr	6,RAM1_0a1,L01F9
	inc	,x
	inc	,x
	inc	,x
	bclr	6,RAM1_0a1
	bsr	L01FB
L31FB:
	lda	,x
	bsr	L0257
	lda	,x
	jsr	L2525
	incx
	bra	L0257
;
L3205:
	lda	#$09
	bsr	L0257
	lda	#$02
	jsr	L3056
	ldx	#$50
	bsr	L0228
	sta	,x
	incx
	cpx	#$54
	bls	L0210
	ldx	#$51
	asl	,x
	rol	PortB,x
	asl	,x
	rol	PortB,x
	asl	,x
	rol	PortB,x
	asl	,x
	rol	PortB,x
	incx
	rts
;
	bsr	L0236
	jsr	L2525
	sta	RAM1_059
	bsr	L023B
	and	#$F0
	ora	RAM1_059
	rts
;
	lda	#$31
	deca
	bne	L0238
	lda	#$1B
	deca
	bne	L023D
L3240:
	sei
	lda	DDRC
	and	#$03
	add	#$0C
	sta	DDRC
	cli
	bset	2,PortC
	bclr	3,PortC
	bsr	L0295
	lda	PortC
	bset	3,PortC
	rts
;
	lda	#$03
L3257:
	clr	RAM1_05a
	bset	3,PortC
	dec	RAM1_05a
	bne	L0262
	jmp	L31E0
;
	bsr	L0295
	bclr	3,PortC
	jsr	L33FA
	brset	4,PortC,L0259
	cmp	#$05
	beq	L0276
	brset	5,PortC,L0259
	cmp	XA602
	jsr	L252C
	ora	#$0F
	sei
	sta	PortC
	lda	DDRC
	and	#$03
	add	#$FC
	sta	DDRC
	cli
	bclr	2,PortC
	bsr	L0295
	bset	2,PortC
	lda	DDRC
	and	#$03
	add	#$0C
	sta	DDRC
	jsr	L33FA
	rts
;
L3299:
	bclr	0,RAM1_058
	bra	L02A1
;
L329D:
	bset	0,RAM1_058
	bclr	1,RAM1_058
	stx	RAM1_057
	lda	RAM1_0a2
	jsr	L2525
	sta	RAM1_052
	lda	RAM1_0b2
	and	#$0F
	sub	RAM1_052
	bpl	L02B4
	add	#$0A
	inca
	asla
	sta	RAM1_059
	ldx	RAM1_057
	lda	#$04
	cmp	XA608
	sta	RAM1_056
	brclr	0,RAM1_058,L02D2
	lda	,x
	stx	RAM1_05a
	ldx	RAM1_059
	sta	RAM2_02d8,x
	ldx	RAM1_05a
	inc	RAM1_059
	bra	L02DE
;
	stx	RAM1_05a
	ldx	RAM1_059
	inc	RAM1_059
	lda	RAM2_02d8,x
	ldx	RAM1_05a
	sta	,x
	incx
	dec	RAM1_056
	bne	L02C1
L32E3:
	rts
;
	lda	RAM1_0a2
	cmp	#$0F
	beq	L0315
	add	#$10
	cmp	#$A0
	bcc	L0315
	tax
	jsr	L2525
	sta	RAM1_056
	lda	RAM1_0a2
	and	#$0F
	cmp	RAM1_056
	bcs	L0315
	txa
	bra	L030D
;
	lda	RAM1_0a2
	cmp	#$0F
	beq	L0315
	and	#$F0
	beq	L0315
	sub	#$10
	eor	RAM1_0a2
	and	#$F0
	eor	RAM1_0a2
	bra	L031B
;
	clra
	rts
;
	lda	RAM1_0a2
	and	#$0F
	sta	RAM1_0a2
	and	#$0F
	rts
;
X3320:
	db	$6B
;
	brset	0,PortA,L0324
	negx
	lsrx
	aslx
	brset	0,RAM1_05c,L0377
	rts
	rts
;
	db	$82
;
	asl	RAM1_060,x
	lsr	STACK_0cc,x
;
	db	$31
;
	tst	RAM1_0ad
;
	db	$AF
;
	bra	L034E
;
	bsr	L0301
	bra	L034E
;
	bsr	L0317
	bra	L034E
;
	bsr	L0317
	bra	L0349
;
	bsr	L02E4
	bra	L0349
;
	bsr	L0301
	beq	L02E3
	jmp	L316B
;
	brset	1,RAM1_0a1,L0354
	jmp	L3069
;
	bclr	7,RAM1_0a1
	lda	#$01
	sta	RAM1_0af
	rts
;
L335B:
	lda	RAM1_0ad
	sub	RAM1_0b1
	bcc	L0363
	sub	#$02
	rts
	rts
;
	jsr	L315F
	bclr	2,RAM1_0a1
	ldx	#$50
	jsr	L3299
	jsr	L32E3
	lda	RAM1_052
	sta	RAM1_0ab
	lda	RAM1_053
	sta	RAM1_0ac
	ldx	RAM1_0b1
	jmp	L3187
;
L337F:
	jsr	L3205
	lda	,x
	sta	RAM1_0ad
	brset	5,RAM1_0a1,L0392
	sub	RAM1_0ae
	bcc	L038E
	sub	#$02
	sub	#$02
	bcs	L03EF
	lda	RAM1_0b2
	inca
	cmp	#$09
	bls	L039A
	clra
	sta	RAM1_0b2
	ldx	#$AD
	jsr	L329D
	ldx	#$A3
	jsr	L32E3
	lda	RAM1_0ad
	add	#$01
	bcc	L03AE
	lda	#$02
	sta	RAM1_0b1
	clr	RAM1_0a2
	lda	RAM1_0ae
	cmp	RAM1_0b1
	bcc	L03D6
	sta	RAM1_0ae
	beq	L03E2
	brset	5,RAM1_0a1,L03E9
	lda	RAM1_0a2
	cmp	#$90
	bcc	L03EF
	add	#$11
	sta	RAM1_0a2
	ldx	#$50
	bsr	L03F4
	lda	RAM1_051
	brset	1,RAM1_0a1,L03DA
	cmp	RAM1_0ae
	bcs	L03B8
	bset	1,RAM1_0a1
	bra	L03DE
;
	cmp	RAM1_0ae
	bcc	L03E2
	cmp	RAM1_0b1
	bcc	L03B8
	lda	RAM1_0a2
	beq	L03EF
	brclr	5,RAM1_0a1,L03EB
	ora	#$0F
	and	#$0F
	sta	RAM1_0a2
	clr	RAM1_0a1
	rts
;
L33F2:
	ldx	#$AD
	jsr	L3299
	jmp	L32E3
;
L33FA:
	tst	STACK_0ff,x
	tst	STACK_0ff,x
	rts
;
L33FF:
	brset	7,RAM1_0a0,L0408
X3402:
	lda	STACK_0ce
	and	#$C0
	beq	L0409
	rts
;
	brset	5,STACK_0ce,L0448
	brclr	1,RAM1_0a1,L0414
	brclr	7,RAM1_0a1,L0414
	bset	5,RAM1_07f
	brclr	5,RAM1_07f,L0426
	brset	3,RAM1_07f,L0423
	brset	5,RAM1_0b9,L0423
	brset	0,RAM1_05d,L0426
	brclr	4,RAM1_0ba,L0426
	jmp	L34EB
;
	brclr	0,RAM1_0a1,L0432
	brclr	5,RAM1_07f,L0432
	bset	0,RAM1_05d
	lda	#$80
	bra	L0446
;
	brset	5,RAM1_0b9,L0441
	brclr	4,RAM1_0b9,L044A
	brset	1,RAM1_0a1,L044F
	brset	5,RAM1_07f,L044F
	brset	0,RAM1_05d,L044F
	brset	0,RAM1_0a1,L0490
	lda	#$89
	sta	RAM1_0a0
	bra	L0490
;
	bclr	0,RAM1_05d
	brset	0,RAM1_0a1,L042E
	brclr	5,RAM1_07f,L0490
	bclr	4,RAM1_0ba
	brset	3,STACK_0ce,L0490
	brclr	1,RAM1_0a1,L0460
	bset	2,STACK_0ce
	bset	5,STACK_0cf
	bra	L0490
;
	ldx	STACK_0cf
	brclr	2,STACK_0ce,L0483
	brclr	3,STACK_0d2,L0471
	lda	RAM1_0a2
	and	#$F0
	bne	L047C
	jmp	L3584
;
	incx
	bne	L04EB
	bclr	7,STACK_0cf
	lda	#$88
	bset	0,RAM1_05d
	bra	L048B
;
	jsr	L35A3
	lda	#$85
	bra	L048D
;
	incx
	bne	L0490
	brclr	3,STACK_0d2,L04EB
	lda	#$8D
L348B:
	bclr	6,RAM1_080
	jmp	L3539
;
	brclr	6,RAM1_05d,L04BE
	brset	3,RAM1_07f,L04BE
	jmp	L35CB
;
L3499:
	lda	#$44
	bset	6,STACK_0c5
	bra	L04CF
;
	brset	3,STACK_0ce,L04BE
	brset	3,RAM1_08e,L04BE
	brset	3,STACK_0d2,L051E
	brset	5,RAM1_07f,L04F1
	rts
;
	brset	3,STACK_0ce,L04BE
	lda	#$30
	brset	3,RAM1_08e,L04BC
	brclr	1,RAM1_0a1,L04BA
	brclr	3,STACK_0d2,L04D4
	lda	#$B0
	sta	RAM1_077
	rts
;
	brclr	4,RAM1_0ba,L04C8
	bclr	4,RAM1_0ba
	lda	#$F1
	bra	L04CF
;
L34C8:
	lda	#$66
	brclr	2,RAM1_0b8,L04CF
	lda	#$26
	sta	RAM1_0b3
	jmp	L3568
;
	lda	#$24
	brset	3,RAM1_08e,L049B
	brset	3,STACK_0d2,L051E
	brset	5,RAM1_07f,L04E5
	brclr	6,RAM1_0b5,L04C8
	brset	2,RAM1_0b8,L04C8
	brset	2,RAM1_0be,L04BE
	brclr	1,RAM1_0a1,L04F1
L34EB:
	lda	#$80
	sta	RAM1_0a0
	bra	L0568
;
	lda	RAM1_0a2
	and	#$0F
	brclr	5,RAM1_07f,L04FF
	beq	L0568
	jsr	L35A3
	bra	L0534
;
	brset	0,RAM1_0a1,L0504
	beq	L0511
	bclr	4,RAM1_0ba
	lda	#$FF
	sta	STACK_0cf
	bset	2,STACK_0ce
	lda	#$80
	jmp	L348B
;
	clr	STACK_0c8
	lda	#$8A
	jsr	L23F3
	lda	#$2C
	jsr	L24A8
	rts
;
	jsr	L35A3
	lda	#$80
	brset	1,RAM1_0a1,L0539
	lda	RAM1_0a2
	cmp	#$0F
	beq	L0534
	deca
	jsr	L252C
	cmp	RAM1_0a2
	bcc	L0537
	lda	#$86
	cmp	XA684
L3539:
	bset	5,RAM1_07f
	sta	RAM1_0a0
	bra	L0596
;
	brclr	1,RAM1_05f,L0545
	jmp	L34C8
;
	brset	5,RAM1_07f,L05A2
	bset	2,RAM1_07e
	bset	0,RAM1_080
	lda	#$02
	sta	RAM1_07f
	ldx	#$06
	jsr	L2557
	lda	#$08
	sta	STACK_0ce
	lda	#$26
	sta	RAM1_0b3
	bclr	5,STACK_0d2
	lda	#$14
	bsr	L0594
	bclr	4,RAM1_0b3
	bclr	5,RAM1_0b6
	rts
;
L3568:
	bclr	5,RAM1_07f
	bclr	1,STACK_0ce
	bclr	0,STACK_0ce
	bclr	3,STACK_0d2
	bra	L059C
;
	brset	5,RAM1_07f,L05A2
	brset	4,RAM1_0ba,L05A2
	lda	RAM1_0a2
	and	#$0F
	beq	L0511
	lda	#$86
	sta	RAM1_0a0
	bclr	4,RAM1_0ba
L3584:
	bclr	3,STACK_0d2
	lda	#$7D
	bset	6,RAM1_080
	bclr	2,STACK_0ce
	sta	STACK_0cf
	bset	1,STACK_0ce
	bset	0,STACK_0ce
	bset	5,RAM1_07f
	sta	STACK_0cf
	bset	4,RAM1_0b3
	bset	5,RAM1_0b3
	bclr	7,STACK_0d2
	bset	2,STACK_0cb
	bset	3,RAM1_07e
	bset	7,RAM1_05d
	rts
;
L35A3:
	bset	3,STACK_0d2
	lda	#$32
	bra	L0588
;
L35A9:
	lda	RAM1_0a2
	cmp	#$0F
	bne	L05B3
	lda	#$01
	bra	L05BE
;
	jsr	L2525
	sta	RAM1_05b
	lda	RAM1_0a2
	sub	RAM1_05b
	and	#$0F
	sta	STACK_0c8
	add	#$2C
	jsr	L24A8
	lda	#$8A
	jsr	L23EA
	rts
;
L35CB:
	clrx
	brclr	5,STACK_0ce,L05D1
	ldx	#$0E
	lda	X35E8,x
	sta	RAM1_056
	lda	X35E7,x
	beq	L05E6
	jsr	L2797
	bne	L05D1
	ldx	X35E6,x
	jsr	L3499,x						;INFO: index jump
X35E6:
	rts
;
X35E7:
	eor	TSR,x
	eor	X3BA8
	lda	#$28
	brset	0,RAM1_0ab,L05CA
	ldx	#$D9
	brset	4,DDRC,L05FD
	bne	L05E0
	bne	L05FA
L35FA:
	bsr	L0648
	beq	L060C
	lda	#$81
	sta	RAM1_07b
	bset	5,RAM1_094
	bset	2,RAM1_069
	bset	1,RAM1_07f
	bclr	0,RAM1_07f
	bset	4,RAM1_05c
	lda	SEC_MODE
	and	#$EF
	brclr	7,RAM1_08b,L0616
	ora	#$10
	sta	RAM1_08b
	bclr	7,RAM1_08b
	and	#$E0
	cmp	#$A0
	bne	L062E
	lda	SEC_CODE1
	sta	RAM1_08c
	lda	SEC_CODE2
	sta	RAM1_08d
	lda	#$A8
	sta	RAM1_08b
L362E:
	bsr	L0648
	beq	L0634
	bclr	3,RAM1_08b
	brset	3,RAM1_08b,L0647
	bset	0,RAM1_080
	brclr	2,RAM1_08b,L0647
	brclr	7,RAM1_064,L0647
	clr	RAM1_08b
	clra
	jsr	L365F
	bset	7,RAM1_05d
	rts
;
L3648:
	lda	SEC_CODE1
	cmp	RAM1_08c
	bne	L0647
	lda	SEC_CODE2
	cmp	RAM1_08d
	rts
;
L3655:
	brclr	1,RAM1_08b,L065A
	bset	2,RAM1_08b
	lda	RAM1_08b
	cmp	XA608
L365F:
	ldx	#$63
	jsr	L3786
	bset	2,RAM1_05d
	jmp	L2633
;
L3669:
	brclr	0,STACK_0d6,L0671
	brclr	1,STACK_0d6,L0673
	bclr	0,STACK_0d6
	bclr	2,STACK_0d6
	bset	1,STACK_0d6
	rts
;
L3676:
	bclr	1,STACK_0d6
	brset	3,SCSR,L06A9
	brset	2,STACK_0d6,L06A9
	lda	SCDR
	brset	6,RAM1_0ba,L0686
	brclr	5,RAM1_0ba,L06A9
	brset	0,STACK_0d6,L0698
	bmi	L06A6
	brset	3,STACK_0d6,L06A9
	sta	RAM2_0271
	bset	0,STACK_0d6
	and	#$07
	sta	STACK_0d7
	rts
;
	ldx	STACK_0d7
	sta	RAM2_0272,x
	dec	STACK_0d7
	bpl	L06A5
	bset	3,STACK_0d6
	bclr	0,STACK_0d6
	rts
;
	sta	STACK_0d8
	rts
;
	bset	2,STACK_0d6
	bset	0,STACK_0d6
	rts
;
L36AE:
	brclr	7,STACK_0d6,L06F1
	brset	2,STACK_0d6,L06F1
	lda	STACK_0d9
	bne	L06BA
	clr	STACK_0d8
	lda	RAM2_027a
	ora	#$80
	cmp	STACK_0d8
	beq	L06E7
	lda	STACK_0d9
	and	#$03
	bne	L06D8
	clrx
	bsr	L0706
	txa
	incx
	deca
	bmi	L06CA
	eor	RAM2_027a
	and	#$03
	bne	L06CA
	inc	STACK_0d9
	bne	L06F1
	brclr	0,RAM1_061,L06E1
	bset	2,RAM1_05d
	bclr	6,RAM1_0ba
	bclr	5,RAM1_0ba
	bclr	5,RAM1_061
	bclr	7,STACK_0d6
	brclr	1,RAM1_0bf,L06EF
	bclr	1,RAM1_0bf
	rts
;
	bclr	0,RAM1_0bf
	rts
;
L36F2:
	brclr	6,STACK_0d6,L0712
	bclr	6,STACK_0d6
	clra
	deca
	beq	L06FE
	brclr	7,SCSR,L06F8
	lda	RAM2_0271
	ora	#$80
	sta	SCDR
	rts
;
	clra
	deca
	beq	L070D
	brclr	7,SCSR,L0707
	lda	RAM2_027a,x
	sta	SCDR
	rts
;
L3713:
	clr	RAM1_05d
	clr	RAM1_077
	clr	RAM1_0a0
	clr	RAM1_05d
	clr	STACK_0d5
	clr	RAM1_07d
	clr	RAM1_07b
	clr	RAM1_078
	clr	RAM1_07a
	clr	STACK_0d2
	lda	#$88
	sta	RAM1_0b3
	clr	RAM1_0bb
	clr	RAM1_0b6
	ldx	#$A7
	jsr	L37C7
	and	#$03
	sta	RAM1_07f
	bset	7,RAM1_07f
	ldx	#$A5
	jsr	L37C7
	and	#$71
	sta	STACK_0d3
	bset	7,RAM1_07c
	ldx	#$A6
	jsr	L37C7
	and	#$06
	sta	STACK_0d4
	lda	RAM1_081
	and	#$01
	sta	RAM1_081
	bset	6,RAM1_081
	jsr	L3EEE
	brclr	5,RAM1_069,L0767
	bclr	5,STACK_0d3
	bclr	6,STACK_0d3
	brset	0,RAM1_07f,L0767
	lda	#$02
	sta	RAM1_07f
	rts
	rts
;
L3769:
	tst	RAM1_05c
	beq	L0785
	lda	RAM1_07f
	ldx	#$A7
	brset	4,RAM1_05c,L077A
	lda	RAM1_085
	ldx	#$A8
	bclr	3,RAM1_05c
	bclr	4,RAM1_05c
	brclr	0,RAM1_061,L0785
	brset	0,RAM1_080,L0785
	jsr	L379B
	rts
;
L3786:
	cpx	#$90
	bcc	L07B6
	cpx	#$63
	bcs	L07B6
	bsr	L079F
	bsr	L0792
	txa
	sub	#$30
	tax
	lda	EEPROM_0130,x
	bra	L079F
;
L379B:
	cpx	#$90
	bcs	L07B6
	sta	RAM1_059
	cmp	OPTR,x
	beq	L07B6
	sei
	bclr	4,Miscell
	bset	1,EEPROM_ECLK_control
	bset	2,EEPROM_ECLK_control
	bsr	L07B7
	bset	1,EEPROM_ECLK_control
	bsr	L07B7
	bset	4,Miscell
	cli
	rts
;
	sta	OPTR,x
	bset	0,EEPROM_ECLK_control
	cli
	jsr	L253F
	sei
	lda	RAM1_059
	bclr	1,EEPROM_ECLK_control
	rts
;
L37C6:
	tax
L37C7:
	lda	OPTR,x
	rts
;
L37CB:
	brclr	6,STACK_0ce,L0038
	lda	STACK_0d0
	and	#$F0
	beq	L0038
	jmp	L387A
;
L37D7:
	lda	STACK_0d0
	bmi	L0038
	and	#$70
	cmp	#$60
	bhi	L07E6
	brclr	1,RAM1_081,L07EC
	bne	L07EC
	clra
	brclr	3,RAM1_08e,L07EC
	add	#$10
	add	#$10
	sta	STACK_0d0
	jsr	L2525
	add	#$A8
	jsr	L37C6
	and	#$07
	add	STACK_0d0
	bra	L0026
;
	lda	STACK_0d0
	jsr	L2525
	tax
	lda	RAM1_078
	cmp	#$17
	beq	L0038
	bhi	L0018
	lda	STACK_0d0
	cmp	X3838,x
	bhi	L0021
	beq	L0026
	inca
	bra	L0026
;
	lda	STACK_0d0
	cmp	X383F,x
	bhi	L0025
	beq	L0026
	lda	X3838,x
	cmp	X004A
	sta	STACK_0d0
	jsr	L2525
	add	#$A8
	tax
	lda	STACK_0d0
	and	#$07
	jsr	L379B
	jmp	L3847
X3838:
	rts
;
	bclr	2,X0025
;
	db	$35, $41, $51, $65
X383F:
	db	$71
;
	bclr	0,X0020
;
	db	$31
;
	nega
	negx
;
	db	$61
;
	neg	,x
L3847:
	lda	#$00
	jsr	L2481
	lda	STACK_0d0
	bpl	L0051
	rts
;
	and	#$70
	lsra
	jsr	L245B
	lda	STACK_0d0
	and	#$07
	cmp	#$01
	beq	L0075
	bcs	L0068
	ora	#$30
	sta	RAM2_025c
	bra	L0075
;
	lda	STACK_0d0
	sub	#$10
	lsra
	lsra
	and	#$18
	add	#$40
	jsr	L245B
	lda	#$C4
	jmp	L23EA
;
L387A:
	clrx
	brset	7,STACK_0d0,L0080
	ldx	#$00
	lda	X3899,x
	sta	RAM1_056
	lda	X3898,x
	beq	L0097
	jsr	L2797
	bne	L0080
	ldx	X3897,x
	jsr	L37D7,x						;INFO: index jump
	bclr	6,RAM1_05d
X3897:
	rts
;
X3898:
	eor	PortA,x
	brclr	3,PortA,L00BC
	beq	L009F
L389F:
	lda	#$05
	sta	RAM1_063
	lda	#$80
	jsr	L3979
	beq	L00B4
	jsr	L0789
	jsr	L253F
	tst	RAM1_063
	bne	L00A3
	jsr	L253F
	bclr	6,PortB
	clr	RAM1_09e
	rts
;
L38BC:
	bset	1,RAM1_05d
	lda	#$07
	cmp	XA607
	sta	RAM1_09e
	jsr	L399D
	bclr	6,PortB
	jsr	L254E
	bset	6,PortB
	lda	#$05
	sta	RAM1_063
	brclr	0,PortA,L00DF
	tst	RAM1_063
	bne	L00D3
	bclr	2,RAM1_09e
	jmp	L077D
;
	jsr	L253F
	jsr	L253F
	bsr	L0143
	clr	RAM1_09f
	jsr	L2412
	rts
	bra	L00DA
;
L38EF:
	lda	RAM1_09e
	and	#$F0
	bne	L0109
	brclr	1,RAM1_05d,L011F
	lda	RAM1_06c
	coma
	ldx	#$07
	sta	RAM2_0250,x
	lda	#$E1
	bsr	L0179
	bne	L011F
	bclr	1,RAM1_05d
	rts
;
	brclr	2,RAM1_09e,L011F
	lda	RAM2_0256
	ldx	#$07
	brclr	7,RAM1_09e,L0120
	brclr	3,RAM1_09e,L0139
	lda	#$D0
	bsr	L0179
	bne	L011F
	bclr	3,RAM1_09e
	rts
;
	brclr	6,RAM1_09e,L012F
	brset	3,RAM1_09e,L0139
	lda	#$C0
	bsr	L0179
	bne	L011F
	bset	3,RAM1_09e
	rts
;
	lda	#$13
	clrx
	brset	5,RAM1_09e,L0139
	lda	#$23
	ldx	#$03
	jsr	L3979
	bne	L011F
	ldx	#$9E
	jmp	L257C
;
L3943:
	brclr	2,RAM1_09e,L00ED
	brset	0,PortA,L01A3
	brset	6,RAM1_09f,L01A3
	lda	#$01
	sta	RAM1_057
	lda	#$25
	jsr	L39A4
	beq	L019B
	bclr	1,DDRA
	lda	#$01
	bset	2,PortA
	brset	1,PortA,L0160
	rola
	bclr	2,PortA
	bcc	L015B
	sta	RAM1_056
	sei
	bsr	L01E2
	beq	L019B
	brset	6,RAM1_056,L019D
	lda	RAM1_056
	beq	L0194
	sta	RAM1_09f
	bset	6,RAM1_09f
	bra	L0194
;
L3979:
	sta	RAM1_056
	and	#$0F
	inca
	sta	RAM1_057
	lda	#$9A
	bsr	L01A4
	beq	L019B
	lda	RAM1_056
	bsr	L01C3
	beq	L019B
	lda	RAM2_0250,x
	incx
	tst	RAM1_057
	bpl	L0188
	bset	1,RAM1_09e
	bset	0,RAM1_09e
	clra
	bra	L019D
;
	dec	RAM1_09e
L399D:
	bclr	1,DDRA
	bset	2,PortA
	bset	2,DDRA
	rts
;
L39A4:
	sta	RAM1_058
	bclr	1,DDRA
	bclr	2,PortA
	lda	ACH
	add	#$14
	cmp	ACH
	bmi	L01BF
	brset	1,PortA,L01AE
	brset	0,PortA,L01AE
	brset	0,PortA,L01C1
	cmp	ACH
	bpl	L01B8
	clra
	rts
;
	lda	RAM1_058
	sec
	rola
	bclr	2,PortA
	bclr	1,PortA
	bcc	L01CF
	bclr	1,DDRA
	bra	L01D1
;
	bset	1,DDRA
	bset	2,PortA
	asla
	bne	L01C5
	bclr	2,PortA
	jsr	L3A04
	bclr	1,DDRA
	tst	RAM1_057
	bne	L01E2
	sei
	lda	#$38
	brclr	0,PortA,L01EC
	deca
	bne	L01E4
	cli
	rts
;
	bset	2,PortA
	cli
	dec	RAM1_057
	bmi	L0204
	jsr	L254E
	clra
	brset	0,PortA,L0204
	lda	#$38
	bclr	2,PortA
	brset	0,PortA,L0204
	deca
	bne	L01FE
L3A04:
	rts
;
L3A05:
	clra
	sta	RAM1_08f
	sta	RAM2_02d1
	bclr	4,RAM1_06b
	bset	6,RAM1_095
	clr	RAM1_090
	bset	1,RAM1_091
	ldx	#$0F
	sta	RAM2_02c0,x
	decx
	bpl	L0215
	lda	#$40
	sta	RAM2_02ca
	sta	RAM2_02cb
	lda	#$10
	sta	RAM2_02c2
	brset	7,RAM1_061,L0282
	brclr	3,RAM1_08e,L0230
	bset	4,STACK_0d5
	bset	5,STACK_0d5
	jsr	L24B4
	bset	5,RAM1_08f
	brset	3,RAM1_05f,L023C
	bset	0,RAM1_090
	ldx	#$2F
	bclr	0,RAM1_05b
	lda	OPTR,x
	cmp	EEPROM_0130,x
	bne	L024D
	cmp	EEPROM_0160,x
	beq	L026A
	bset	0,RAM1_05b
	and	EEPROM_0130,x
	sta	RAM1_057
	lda	OPTR,x
	eor	EEPROM_0130,x
	and	EEPROM_0160,x
	ora	RAM1_057
	sta	RAM1_057
	txa
	add	#$60
	tax
	lda	RAM1_057
	jsr	L3786
	decx
	bpl	L0240
	lda	#$03
	bsr	L02BF
	ldx	#$12
	jsr	L37C7
	ldx	#$0E
	cmp	#$5A
	beq	L027D
	clra
	add	#$FF
	jsr	L3CE8
	rts
;
L3A83:
	brclr	6,RAM1_09f,L029C
	clrx
	lda	RAM1_09f
	bmi	L0299
	and	#$3F
	cmp	#$21
	beq	L0299
	bcs	L0297
	cmp	#$25
	bcs	L0299
	ldx	#$BC
	stx	RAM2_02d6
	rts
;
L3A9D:
	lda	RAM2_02d6
	beq	L02AE
	deca
	sta	RAM2_02d6
	bne	L02AE
	lda	#$01
	bset	0,RAM1_05b
	bra	L02BF
;
	brclr	4,RAM1_07c,L029C
	ldx	#$0D
	jsr	L3CBB
	lda	RAM2_02cd
	bpl	L029C
	lda	#$04
	bra	L02CE
;
	sta	RAM1_050
	ldx	#$0D
	brclr	0,RAM1_05b,L02C6
	jsr	L3CC9
	brclr	0,RAM1_05b,L029C
	lda	RAM1_050
	ldx	#$CF
	jmp	L379B
;
L3AD3:
	brclr	7,RAM1_060,L02F8
	brclr	6,RAM1_05d,L02F8
	ldx	#$23
	lda	X3F91,x
	decx
	decx
	cmp	RAM1_078
	bne	L02F5
	lda	X3F91,x
	sta	RAM2_02d3
	lda	X3F92,x
	sta	RAM2_02d4
	lda	#$FF
	sta	RAM2_02d5
	decx
	bne	L02DB
	rts
;
L3AF9:
	brclr	2,RAM1_091,L0334
	sei
	brclr	7,PortB,L0322
	brclr	1,RAM1_090,L0322
	brset	3,PortB,L0322
	lda	#$24
	jsr	L24C5
	cmp	#$1F
	bls	L0311
	lda	#$1F
	sta	RAM2_02c7
	lda	#$23
	jsr	L24C5
	cmp	#$1F
	bls	L031F
	lda	#$1F
	sta	RAM2_02c8
	cli
	brclr	3,PortB,L0376
	brclr	1,RAM1_090,L0376
	bclr	1,RAM1_090
	lda	RAM2_02c7
	beq	L0376
	bset	4,RAM1_06b
	bset	6,RAM1_095
	lda	RAM1_090
	add	#$04
	sta	RAM1_090
	bcs	L0370
	bpl	L0376
	sei
	brclr	7,PortB,L0376
	brclr	5,RAM1_08e,L0370
	lda	#$24
	jsr	L24C5
	cli
	sub	RAM2_02c7
	bcc	L0351
	clra
	jsr	L3E8F
	brset	1,RAM1_08f,L0370
	brset	0,RAM1_08f,L0370
	brset	7,RAM1_08e,L0370
	sei
	brclr	7,PortB,L0376
	lda	#$23
	jsr	L24C5
	cli
	sub	RAM2_02c8
	bcc	L036D
	clra
	jsr	L3E8F
	bclr	4,RAM1_06b
	bset	6,RAM1_095
	clr	RAM1_090
	cli
	brset	4,RAM1_0bc,L03B3
	brset	2,RAM1_0bc,L0392
	brset	3,RAM1_0bf,L03B3
	brclr	5,RAM1_08f,L03B3
	bclr	5,RAM1_08f
	bclr	6,RAM1_08f
	bset	2,RAM1_0bc
	bset	4,RAM1_0bc
	lda	#$60
	sta	RAM2_02d1
	bra	L03B3
;
	lda	RAM2_02d1
	bit	#$08
	bne	L039F
	inca
	sta	RAM2_02d1
	bra	L03B3
;
	sei
	brset	7,PortB,L03B3
	lda	#$23
	jsr	L24C5
X3BA8:
	sta	RAM2_02d2
	lda	RAM2_02d1
	ora	#$80
	sta	RAM2_02d1
	cli
	brclr	7,RAM1_060,L03CC
	bset	0,RAM1_080
	lda	RAM2_02d5
	beq	L03CC
	deca
	sta	RAM2_02d5
	bne	L03CC
	lda	#$20
	sta	RAM2_02d3
	sta	RAM2_02d4
	rts
;
L3BCD:
	lda	RAM2_02d7
	brclr	4,RAM1_06a,L03D7
	add	#$0C
	bcs	L03DE
	beq	L03DE
	sub	#$04
	sta	RAM2_02d7
	brclr	2,RAM1_091,L03CC
	brclr	0,RAM1_090,L03CC
	bclr	0,RAM1_090
	brset	3,RAM1_091,L03ED
	jsr	L3E9D
	rts
;
	lda	#$32
	sta	RAM1_090
	rts
;
L3BF2:
	clrx
	brset	1,RAM1_05f,L03FD
	lda	RAM1_09c
	cmp	#$F4
	bhi	L0400
	clc
	jsr	L3CB8
	brclr	5,RAM1_060,L040A
	bclr	5,RAM1_060
	ldx	#$01
	jsr	L3CEB
	lda	#$27
	jsr	L24C5
	coma
	add	#$78
	bcs	L0418
	add	#$14
	bcs	L041D
	ldx	#$01
	jsr	L3CBB
	brclr	2,RAM1_0bc,L046F
	lda	RAM2_02d1
	bpl	L046F
	ldx	#$03
	brset	6,RAM1_08f,L0433
	bclr	4,RAM1_08f
	brclr	0,RAM1_091,L0433
	bset	4,RAM1_08f
	bset	6,RAM1_08f
	jsr	L3CBB
	bclr	3,RAM1_08f
	ldx	#$02
	lda	RAM2_02d2
	coma
	add	#$66
	bcc	L0444
	bset	3,RAM1_08f
	bsr	L04BB
	lda	RAM2_02c3
	bmi	L046B
	lda	RAM2_02c2
	bpl	L0453
	brclr	2,RAM1_08f,L046B
	lsra
	bne	L0458
	bset	2,RAM1_08f
	brclr	6,RAM1_08f,L046F
	lda	RAM2_02d1
	bit	#$70
	beq	L0469
	sub	#$10
	sta	RAM2_02d1
	bra	L046F
;
	bset	5,RAM1_08f
	bclr	2,RAM1_0bc
	bset	4,RAM1_0bc
	ldx	#$04
	brclr	1,PortB,L0480
	brset	5,RAM1_091,L0477
	bsr	L04BB
	lda	RAM2_02c4
	bpl	L0480
	bclr	1,PortB
	ldx	#$05
	brset	3,RAM1_091,L0485
	bsr	L04B8
	ldx	#$09
	brclr	0,PortB,L0498
	brset	4,RAM1_091,L048F
	bsr	L04BB
	lda	RAM2_02c9
	bpl	L0498
	bclr	0,PortB
	brclr	2,RAM1_08e,L04AC
	brclr	1,RAM1_05f,L04AC
	lda	RAM1_09c
	cmp	#$F4
	bhi	L04AC
	ldx	#$0A
	brclr	4,RAM1_06a,L04A9
	jsr	L3CB8
	brclr	1,RAM1_08e,L04B7
	ldx	#$0B
	brclr	6,RAM1_06a,L04B4
	jsr	L3CB8
	rts
;
L3CB8:
	rora
	coma
	rola
L3CBB:
	lda	RAM2_02c0,x
	bcs	L04DE
	sub	#$02
	bcc	L04E2
	bra	L04CE
;
	rora
	coma
	rola
L3CC9:
	lda	RAM2_02c0,x
	bcs	L04EB
	lsra
	bcs	L0500
	lda	#$01
	sta	RAM2_02c0,x
	lda	EEPROM_01c0,x
	beq	L0500
	deca
	bra	L04ED
;
	bmi	L0500
	add	#$02
	sta	RAM2_02c0,x
	bmi	L04EB
	rts
;
L3CE8:
	clra
	bcs	L04ED
L3CEB:
	lda	#$33
	sta	RAM1_056
	txa
	add	#$C0
	tax
	lda	RAM1_056
	brset	0,RAM1_08e,L04FD
	cpx	#$C2
	bne	L04FD
	clra
	jsr	L379B
	rts
;
L3D01:
	lda	RAM2_02b3
	cmp	#$03
	bne	L0519
	lda	RAM2_02b4
	cmp	#$53
	bne	L0512
	bset	0,RAM1_090
	rts
;
	lda	#$06
	jsr	L249F
	bclr	7,RAM1_05d
	rts
;
L3D1A:
	ldx	X3D20,x
	jmp	L3D28,x						;INFO: index jump
;
X3D20:
	brset	0,PortA,L0543
;
	db	$32
;
	clra
;
	db	$65
;
	dec	RAM1_07c,x
L3D28:
	clra
	brset	7,RAM1_091,L052E
	lda	#$08
	sta	RAM2_02b5
	lda	#$27
	jsr	L24C5
	sta	RAM2_02b8
	clra
	brclr	2,RAM1_05f,L0540
	lda	RAM2_02a4
	sta	RAM2_02bb
	brset	1,RAM1_05f,L0584
	bra	L0584
;
	bset	0,RAM1_090
	lda	#$F3
	brset	0,RAM1_08f,L0556
	lda	#$F2
	brset	1,RAM1_08f,L0556
	lda	#$C2
	sta	RAM2_02b8
	rts
;
	bset	5,RAM1_08f
	brclr	0,RAM1_08e,L0564
	lda	#$12
	sta	RAM2_02b5
	lda	#$F2
	brset	4,RAM1_08f,L0573
	lda	#$C2
	brclr	3,RAM1_08f,L0573
	brclr	0,RAM1_08e,L0573
	lda	#$F3
	sta	RAM2_02bb
	rts
;
	clra
	bset	1,PortB
	brclr	5,RAM1_091,L057E
	inca
	sta	RAM2_02b5
	brset	3,RAM1_05f,L0584
	lda	#$87
	bcs	L0589
	inca
	sta	RAM2_02be
	rts
;
	brset	6,RAM1_06a,L059B
	bra	L059B
;
	bset	5,STACK_0d5
	jsr	L24B4
	lda	RAM2_02d7
	rola
	lda	#$C2
	bcs	L05A0
	inca
	sta	RAM2_02b8
	rts
;
	lda	RAM2_02d3
	sta	RAM2_02b4
	lda	RAM2_02d4
	sta	RAM2_02b5
	rts
;
L3DB1:
	clr	RAM1_05b
	brclr	3,RAM1_08e,L05B8
	inc	RAM1_05b
	lda	RAM2_02b3
	ldx	#$80
	jsr	L3786
	lda	RAM2_02b4
	ldx	#$81
	jsr	L3786
	lda	RAM2_02b5
	ldx	#$82
	jsr	L3786
	lda	RAM2_02b6
	ldx	#$83
	jsr	L3786
	lda	#$5A
	ldx	#$72
	jsr	L3786
	jsr	L3EEE
	brclr	3,RAM1_08e,L0613
	tst	RAM1_05b
	bne	L0613
	ldx	#$12
	jsr	L3EB2
	ldx	#$00
	jsr	L3EC0
	lda	#$0D
	jsr	L3EC8
	lda	RAM2_027c
	deca
	bpl	L05F5
	ldx	#$30
	jsr	L3EB2
	ldx	#$02
	jsr	L3EC0
	lda	#$1B
	jsr	L3EC8
	lda	RAM2_027c
	deca
	bpl	L060A
	rts
;
	lda	#$81
	sta	STACK_0d0
	lda	#$41
	sta	STACK_0ce
	bset	0,RAM1_080
	bset	7,RAM1_094
	bclr	7,RAM1_060
	bclr	6,RAM1_060
	bset	7,RAM1_05d
	rts
;
L3E27:
	ldx	#$CF
	clra
	cpx	#$BE
	bhi	L0631
	lda	X3DCF,x
	jsr	L379B
	jsr	L0789
	decx
	cpx	#$A0
	bcc	L0629
	ldx	#$80
	lda	#$03
	jsr	L3786
	ldx	#$81
	lda	#$22
	jsr	L3786
	lda	#$00
	ldx	#$72
	jsr	L3786
	lda	#$46
	jsr	L23EA
	jsr	L1EB4
	jsr	L38EF
	jsr	L0789
	bra	L065C
;
L3E61:
	ldx	#$63
	lda	#$A0
	jsr	L3786
	jsr	L2450
	lda	#$C4
	bra	L0653
;
	brset	0,PortA,L0672
	brset	0,PortA,L0675
	brset	0,PortC,L0680
	brclr	1,PortD,L067E
	brset	0,PortA,L0681
	brset	0,PortC,L0681
	brset	0,SCSR,L0694
	bset	0,SCSR
	bset	0,SCSR
	brset	0,PortA,L068B
	brset	0,PortA,L068E
	brset	0,TSR,L0620
	cmp	#$A9
	bhi	L069D
	cmp	#$0B
	bhi	L069F
	bset	0,RAM1_08f
	bra	L06A1
;
L3E9D:
	bset	1,RAM1_08f
	bclr	0,RAM1_08f
	ldx	#$05
	brclr	1,RAM1_08f,L06A6
	jsr	L3CC9
	ldx	#$06
	brclr	0,RAM1_08f,L06AE
	jsr	L3CC9
	rts
;
L3EB2:
	lda	#$89
	sta	RAM2_027d
	lda	#$8A
	sta	RAM2_027c
	lda	#$0A
	bra	L06CF
;
L3EC0:
	clra
	sta	RAM2_027c
	lda	#$11
	bra	L06CF
;
L3EC8:
	sta	RAM2_027c
	lda	#$19
	ldx	#$89
	sta	RAM2_027a
	stx	RAM2_027b
	bset	7,STACK_0d6
	clr	STACK_0d9
	jsr	L0789
	jsr	L47F4
	brclr	3,RAM1_067,L06D9
	bclr	3,RAM1_067
	jsr	L36AE
X3EE7:
	jsr	L47AA
	brset	7,STACK_0d6,L06D9
	rts
;
L3EEE:
	ldx	EEPROM_0120
	lda	EEPROM_0121
	lsrx
	rora
	bsr	L072D
	lda	RAM1_058
	and	#$07
	sta	RAM1_08e
	brclr	0,RAM1_056,L0703
	bset	3,RAM1_08e
	brclr	4,RAM1_058,L0708
	bset	4,RAM1_08e
	lda	RAM1_057
	and	#$07
	beq	L071C
	bset	5,RAM1_08e
	cmp	#$05
	bne	L0716
	bset	6,RAM1_08e
	cmp	#$01
	bne	L071C
	bset	7,RAM1_08e
	brclr	5,RAM1_069,L0725
	bclr	4,RAM1_08e
	bclr	3,RAM1_08e
	bclr	1,RAM1_08e
	bclr	1,RAM1_081
	brclr	4,RAM1_08e,L072C
	bset	1,RAM1_081
	rts
;
L3F2D:
	stx	RAM1_050
	sta	RAM1_051
	and	#$0F
	cmp	#$09
	bls	L0739
	add	#$06
	sta	RAM1_058
	clr	RAM1_057
	clr	RAM1_056
	clrx
	lda	RAM1_051
	bsr	L074F
	lda	RAM1_050
	bsr	L074C
	lda	RAM1_050
	bra	L074F
;
	jsr	L252C
	jsr	L2525
	sta	RAM1_052
	beq	L0788
	bset	7,RAM1_059
	lda	X3F8C,x
	add	RAM1_058
	bcs	L0763
	bclr	7,RAM1_059
	sub	#$60
	bhcs	L0767
	sub	#$06
	sta	RAM1_058
	rol	RAM1_059
	bset	7,RAM1_059
	lda	X3F8B,x
	adc	RAM1_057
	bcs	L0778
	bclr	7,RAM1_059
	sub	#$60
	bhcs	L077C
X3F7A:
	sub	#$06
	sta	RAM1_057
	rol	RAM1_059
	bcc	L0784
	inc	RAM1_056
	dec	RAM1_052
	bne	L0756
	incx
	incx
	rts
;
X3F8B:
	ror	RAM1_07c,x
	asl	RAM1_0bc,x
	lda	#$FC
X3F91:
	neg	X0030
	add	,x
	neg	X0031
	ora	,x
	neg	X0032
	stx	,x
	neg	X0033
	and	,x
	neg	X0034
	brset	4,X0030,L07D7
	ldx	X0030,x
	ror	STACK_0ef
	neg	X0037
	sub	,x
	neg	X0038
	cmp	,x
	neg	X0039
	sbc	,x
;
	db	$31
;
	neg	STACK_0fd
;
	db	$31, $31
;
	jmp	,x						;INFO: index jump
;
	lda	#$1F
	sta	RAM1_090
	bclr	4,RAM1_06b
X3FBB:
	bset	6,RAM1_095
	rts
;
L3FBE:
	brclr	7,RAM1_060,L07D9
X3FC1:
	brset	7,RAM1_092,L07D9
L3FC4:
	bclr	7,RAM1_060
	bclr	7,RAM1_093
	bset	2,RAM1_05d
	brclr	6,RAM1_060,L07D4
	bclr	6,RAM1_060
	brset	0,RAM1_05f,L07D4
	bclr	0,RAM1_061
	bclr	3,PortB
	bclr	1,PortB
	rts
;
	brset	3,RAM1_060,L0047
	brset	0,RAM1_060,L003A
	brset	4,RAM1_060,L07E8
	brclr	7,RAM1_093,L07EB
	jmp	L406F
	jmp	L4082
;
	jsr	L42CC
	beq	L0048
	jsr	L42CC
	beq	L0048
	eor	RAM1_093
	sta	RAM1_093
	brclr	3,RAM1_093,L0004
	brclr	4,RAM1_093,L0040
	brclr	5,RAM1_093,L003A
	bra	L0040
;
	brset	5,RAM1_093,L0007
	clra
	rola
	eor	RAM1_093
	rora
	bcc	L0029
	and	#$03
	tax
	lda	RAM2_02b1
	sub	RAM1_068
	cmp	#$11
	bcs	L0029
	cmp	#$17
	bcs	L002F
	cmp	#$22
	bcs	L0029
	cmp	#$2B
	bhi	L0029
	tstx
	beq	L0036
	lda	#$08
	sta	RAM1_093
	bra	L0040
;
	tstx
	beq	L0029
	cpx	#$04
	bhi	L0029
	inc	RAM1_093
	bra	L0040
;
	bclr	0,RAM1_060
	bclr	4,RAM1_060
	clr	RAM1_093
	lda	RAM1_068
	sta	RAM2_02b1
	clr	RAM1_092
	rts
;
	lda	RAM2_02b1
	sub	RAM1_068
	cmp	#$C8
	bcs	L0054
	bset	3,RAM1_060
	rts
;
	brclr	5,RAM1_093,L0047
	brset	4,RAM1_093,L0047
	cmp	#$3C
	bcs	L0047
	brclr	3,RAM1_093,L0066
	lda	#$38
	sta	RAM1_093
	rts
;
	lda	RAM1_093
	cmp	#$25
	bne	L0047
	bset	4,RAM1_060
	rts
;
L406F:
	brset	7,RAM1_095,L0081
	brset	4,RAM1_094,L0081
	brclr	7,RAM1_092,L0029
	brset	4,RAM1_092,L0081
	brset	3,RAM1_092,L008A
	brset	6,RAM1_093,L00BA
	rts
;
L4082:
	bclr	4,RAM1_060
	bclr	2,RAM1_060
	bclr	1,RAM1_060
	bra	L00D6
;
	bclr	3,RAM1_092
	clrx
	lda	X42D7,x
	beq	L00B4
	cmp	RAM2_02b0
	bne	L009F
	lda	X42D8,x
	cmp	RAM2_02b2
	beq	L00A4
	incx
	incx
	incx
	bra	L008D
;
	cmp	#$04
	beq	L00A8
	bclr	6,RAM1_093
	lda	RAM1_093
	and	#$1F
	ldx	X42D9,x
	jmp	L40D6,x						;INFO: index jump
;
L40B4:
	ldx	#$47
	jsr	L4296
	rts
;
	bclr	6,RAM1_093
	lda	RAM1_093
	inca
	and	#$1F
	cmp	#$02
	beq	L00BE
	cmp	#$03
	beq	L00DD
	cmp	#$04
	beq	L00DD
	cmp	#$05
	beq	L00F4
	sub	#$14
	bcc	L011B
	rts
;
L40D6:
	lda	#$01
	brclr	5,RAM1_069,L00DD
	lda	#$02
	jsr	L428C
	bset	4,RAM1_094
	bset	6,RAM1_093
	brset	7,RAM1_092,L0115
	lda	#$90
	sta	RAM1_092
	lda	RAM2_02b0
	ora	#$20
	sta	RAM2_02b0
	rts
;
	jsr	L428C
	bset	4,RAM1_094
	lda	EEPROM_0120
	sta	RAM2_02b4
	lda	EEPROM_0121
	sta	RAM2_02b5
	lda	EEPROM_0122
	sta	RAM2_02b6
	lda	EEPROM_0123
	sta	RAM2_02b7
	bset	7,RAM1_060
	bset	7,RAM1_05d
	rts
;
	lda	#$13
	sta	RAM1_093
	clra
	sta	RAM1_050
	ldx	#$95
	jsr	L4296
	clr	RAM1_057
	jmp	L4215
;
	ldx	#$CE
	clra
	jsr	L379B
	decx
	cpx	#$C0
	bcc	L0129
	bra	L0116
;
	cmp	#$06
	bcs	L0141
	cmp	#$08
	bcs	L0143
	bne	L0141
	jmp	L421B
;
	lda	#$05
	inca
	jsr	L428C
	bset	7,RAM1_05d
	jsr	L3D01
	rts
;
	ldx	RAM2_02b3
	beq	L0165
	cpx	#$07
	bhi	L0166
	stx	RAM1_05b
	ldx	X42FC,x
	jsr	L4296
	bset	4,RAM1_094
	ldx	RAM1_05b
	jsr	L3D1A
	rts
;
	cpx	#$19
	bne	L0165
	brclr	2,RAM1_060,L0165
	bset	1,RAM1_060
	rts
;
	jsr	L3DB1
	jmp	L40D6
;
	brclr	2,RAM1_08b,L017C
	jmp	L40B4
;
	ldx	RAM2_02b3
	lda	RAM2_02b4
	jsr	L3F2D
	lda	RAM1_057
	cmp	SEC_CODE1
	bne	L019B
	lda	RAM1_058
	cmp	SEC_CODE2
	bne	L019B
	jsr	L365D
	bclr	2,RAM1_05d
	bset	2,RAM1_060
	rts
;
	inc	RAM1_08b
	jsr	L3655
	lda	#$FF
	sta	RAM1_08c
	jmp	L3FC4
	bra	L01EA
;
	brclr	1,RAM1_060,L01E9
	lda	RAM2_02b3
	sta	RAM1_050
	lda	RAM2_02b5
	sta	RAM1_051
	lda	#$12
	jsr	L428C
	lda	#$03
	sta	RAM1_052
	ldx	RAM1_051
	txa
	and	#$FC
	beq	L01D1
	sub	#$30
	beq	L01D1
	sub	#$30
	beq	L01D1
	jsr	L37C7
	inc	RAM1_051
	ldx	RAM1_052
	sta	RAM2_02b0,x
	inc	RAM1_052
	lda	RAM2_02b0
	inca
	sta	RAM2_02b0
	cmp	#$0F
	beq	L01E9
	dec	RAM1_050
	bne	L01BF
	rts
;
	lda	RAM2_02b3
	cmp	#$AB
	bne	L01FB
	lda	RAM2_02b4
	cmp	#$CD
	bne	L01FB
	jmp	L3E27
;
	brclr	1,RAM1_060,L01E9
	lda	RAM2_02b3
	cmp	SEC_CODE1
	bne	L01E9
	lda	RAM2_02b4
	cmp	SEC_CODE2
	bne	L01E9
	jmp	L3E61
;
	inc	RAM1_050
	inc	RAM1_093
L4215:
	ldx	RAM1_050
	cpx	#$0E
	bls	L0220
L421B:
	clr	RAM1_093
	bset	7,RAM1_093
	rts
;
	lda	EEPROM_01c0,x
	beq	L0211
	cpx	#$02
	beq	L023D
	cpx	#$03
	beq	L0235
	cpx	#$05
	beq	L023D
	cpx	#$06
	bne	L0242
	decx
	cmp	EEPROM_01c0,x
	bcs	L0211
	bra	L0242
;
	cmp	EEPROM_01c1,x
	bls	L0211
	cmp	#$33
	bne	L0247
	clra
	sta	RAM1_051
	ldx	RAM1_057
	incx
	incx
	incx
	cpx	#$0C
	bls	L0255
	bset	6,RAM1_093
	rts
;
	stx	RAM1_057
	txa
	add	#$03
	sta	RAM2_02b0
	lda	RAM1_050
	asla
	add	RAM1_050
	sta	RAM1_058
	ldx	RAM1_058
	lda	X43AF,x
	ldx	RAM1_057
	sta	RAM2_02b0,x
	ldx	RAM1_058
	lda	X43B0,x
	ldx	RAM1_057
	sta	RAM2_02b1,x
	ldx	RAM1_058
	lda	X43B1,x
	tst	RAM1_051
	bne	L0283
	and	#$7F
	ldx	RAM1_057
	sta	RAM2_02b2,x
	bset	4,RAM1_094
	bra	L0211
;
L428C:
	sta	RAM1_093
	lda	RAM1_093
	and	#$1F
	tax
	ldx	X42F3,x
L4296:
	bset	7,RAM1_093
	clr	RAM1_056
	stx	RAM1_057
	bclr	5,RAM1_05d
	cpx	#$49
	bne	L02A4
	bset	5,RAM1_05d
	lda	X4315,x
	sta	RAM2_02b0
	and	#$0F
	sub	#$03
	sta	RAM1_058
	lda	#$FF
	sta	RAM2_02b1
	ldx	RAM1_057
	lda	X4316,x
	ldx	RAM1_056
	sta	RAM2_02b2,x
	inc	RAM1_056
	inc	RAM1_057
	dec	RAM1_058
	bpl	L02B5
	bset	7,RAM1_095
	bset	4,RAM1_092
	rts
;
L42CC:
	clra
	brclr	1,PortD,L02D2
	lda	#$20
	eor	RAM1_093
	and	#$20
	rts
;
X42D7:
	brclr	1,PortA,L02DA
	brclr	1,EEPROM_ECLK_control,L031D
	brclr	1,DDRB,L0331
	brset	2,DDRA,L0341
	brset	2,X0029,L035D
	brclr	3,SCSR,L0283
	brset	4,X002B,L028C
	brclr	2,ACL,L02C0
	brset	3,PortD,L02C5
	brset	0,ICL1,L02F6
	brclr	7,ICL2,L0323
	asl	X003B
	clr	X0043
X42FC:
	asra
	rola
	asrx
;
	db	$65
;
	neg	,x
;
	db	$7E, $86
;
	stop
;
	db	$95, $93
;
	cli
	nop
	sub	#$A3
	lda	#$A9
;
	db	$AC, $AF
;
	sbc	RAM1_0b5
	eor	RAM1_0bb
	ldx	STACK_0c1
	and	X810F
	lda	,x
	lsr	X0042
	neg	X0030
	com	X0035
;
	db	$31
;
	asl	X0036
	bra	L0343
	bra	L0334
;
	lda	,x
	lsr	X0042
	neg	X0030
	com	X0035
;
	db	$31, $35, $32
;
	bra	L0351
	bra	L0342
;
	lda	,x
	bra	L0388
;
	db	$61
;
	lsr	RAM1_069,x
	clr	X0020,x
	bra	L035D
	bra	L035F
	bra	L034F
;
	lda	,x
	bra	L0364
	bra	L0366
	bra	L0368
	bra	L037A
;
	neg	X0030
;
	db	$31
;
	brset	4,STACK_0f6,L0350
	brclr	2,STACK_0f5,L0356
	comx
	brclr	2,STACK_0f5,L035A
	rorx
	brclr	2,STACK_0f5,L035F
	add	#$44
	brset	5,SCCR2,L0347
	bset	0,ADDATA
	brset	0,DDRC,L03B3
	sub	X1764
	rti
;
	bcs	L036B
;
	db	$87
;
	brclr	7,STACK_0e7,L0394
	brset	0,STACK_0f0,L0397
	brset	0,STACK_0c2,L0386
	bra	L0397
;
	bclr	0,X0020
	bra	L0387
;
	sta	X0025,x
	brclr	0,SCDR,L03A5
	brset	0,STACK_0f4,L03A8
	brset	0,STACK_0c2,L0395
	sta	SCSR,x
	brclr	0,PortA,L039C
	bra	L03AD
;
	bcs	L038F
	bit	,x
	bcs	L0392
;
	db	$88
;
	brclr	4,STACK_0e7,L03BB
	brset	0,STACK_0f6,L03BE
	brset	0,STACK_0c2,L03A5
	sta	X0025,x
	brset	0,STACK_0f7,L03C6
	brset	0,STACK_0c2,L03AA
	sta	SCDR,x
	bra	L03C8
;
	brclr	1,STACK_0fd,L03B1
	jmp	,x						;INFO: index jump
;
	stx	,x
	stx	,x
;
	db	$88
;
X43AF:
	brclr	1,RAM1_051,L0356
	brset	1,RAM1_09c,L033C
	brclr	1,RAM1_058,L035C
	brclr	1,RAM1_058,L0358
	brclr	1,RAM1_052,L035B
	brclr	1,RAM1_054,L036D
	brclr	1,RAM1_054,L0368
	brclr	1,RAM1_055,L0373
	brclr	1,RAM1_055,L036E
	brclr	1,RAM1_058,L036A
	brclr	1,RAM1_056,L0381
	brclr	1,RAM1_057,L0384
	brclr	1,RAM1_057,L0373
	stx	,x
	stx	,x
	brset	0,DDRA,L03EF
	bls	L03DD
L43DD:
	rts
;
L43DE:
	lda	#$07
	jsr	L249F
	lda	#$14
	jmp	L23D9
;
L43E8:
	brclr	6,STACK_0ce,L03F5
	lda	STACK_0d0
	bit	#$F0
	bne	L03F5
	jmp	L448A
L43F4:
	rts
	rts
;
	lda	#$01
	bra	L03FC
;
	lda	#$07
	brclr	3,STACK_0d0,L03F5
	add	STACK_0d0
	and	#$0F
	ora	#$08
	cmp	#$0D
	bcs	L0410
	bne	L040E
	lda	#$08
	cmp	XA60C
	sta	STACK_0d0
	bra	L0414
;
L4414:
	brclr	5,STACK_0ce,L0427
	lda	#$17
	brset	6,RAM1_081,L0476
	ldx	RAM1_084
	lda	X4479,x
	sta	STACK_0c8
	lda	#$8B
	bra	L0476
;
	brclr	6,STACK_0ce,L03F5
	ldx	STACK_0d0
	lda	#$05
	brset	6,RAM1_06a,L0433
	lda	#$07
	cpx	#$01
	beq	L0476
	lda	#$CA
	cpx	#$08
	beq	L0476
	txa
	ldx	#$07
	cmp	#$09
	beq	L0456
	cmp	#$0A
	beq	L0460
	cmp	#$0B
	bne	L046B
	lda	RAM1_0a3,x
	sta	RAM2_0257,x
	decx
	bpl	L044C
	bra	L0474
;
	lda	STACK_0da,x
	sta	RAM2_0257,x
	decx
	bpl	L0456
	bra	L0474
;
	lda	X4482,x
	sta	RAM2_0257,x
	decx
	bpl	L0460
	bra	L0474
;
	lda	EEPROM_0190,x
	sta	RAM2_0257,x
	decx
	bpl	L046B
	lda	#$C4
	jmp	L23EA
;
X4479:
	brset	0,PortB,L047F
	brset	2,DDRB,L0485
	brset	4,ADSTAT,L048C
X4482:
	asr	X0031
;
	db	$32
;
	asl	X002E
;
	db	$31
;
	bra	L04D7
;
L448A:
	clrx
	lda	X44A2,x
	sta	RAM1_056
	lda	X44A1,x
	beq	L04A0
	jsr	L2797
	bne	L048B
	ldx	X44A0,x
	jsr	L43F4,x						;INFO: index jump
X44A0:
	rts
;
X44A1:
	lda	,x
X44A2:
	brclr	0,STACK_0f8,L04A7
	sta	DDRC,x
	brset	0,RAM1_081,L04AD
	sbc	X7500,x
	sbc	X7207,x
	add	X0417
	add	X1E5D
	brclr	6,RAM1_05d,L0521
	jmp	L45DF
;
L44BC:
	brclr	1,STACK_0d2,L0521
	lda	#$06
	eor	STACK_0d4
	sta	STACK_0d4
	ldx	#$A6
	jsr	L379B
	bclr	0,STACK_0d4
	ldx	#$83
	brset	2,STACK_0d4,L04E0
	ldx	#$8D
	bra	L04E0
;
	brclr	1,STACK_0d2,L0521
	ldx	#$89
	lda	#$01
	eor	STACK_0d4
	sta	STACK_0d4
	bset	2,RAM1_06a
	bra	L04F8
;
	ldx	#$87
	cmp	XAE86
	cmp	XAE85
	cmp	XAE84
	bra	L04F8
;
	ldx	#$8B
	cmp	XAE8A
	bsr	L0516
	bclr	0,STACK_0d4
	lda	RAM2_0264
	and	#$ED
	sta	RAM2_0264
	stx	RAM1_07d
	bset	6,RAM1_094
	bset	7,RAM1_05d
	bclr	4,STACK_0d2
	bset	2,STACK_0cb
	rts
;
	brset	4,STACK_0d2,L04EA
	brset	4,STACK_0d2,L04ED
	bclr	1,STACK_0d2
	rts
;
	lda	#$50
	sta	RAM1_077
	rts
;
	lda	#$90
	sta	RAM1_077
	bset	4,STACK_0d2
	rts
;
	lda	RAM1_078
	and	#$07
	sta	STACK_0c8
	deca
	jsr	L2572
	and	RAM2_0266
	bne	L053D
	lda	#$88
	jsr	L23F3
	lda	STACK_0c8
	ora	#$20
	jsr	L24A8
	lda	STACK_0c8
	ora	#$C0
	tax
	bra	L04F8
;
L4544:
	lda	#$05
	jsr	L2473
	lda	RAM2_0260
	and	#$07
	sta	STACK_0c8
	lda	RAM2_0265
	bit	#$06
	bne	L059D
	bit	#$08
	bne	L0567
	and	#$F0
	cmp	#$A0
	beq	L0567
	cmp	#$B0
	bne	L0570
	bset	3,STACK_0d4
	lda	#$20
	jsr	L24A8
	ldx	#$08
	bra	L0599
;
	lda	RAM2_0267
	bpl	L057D
	and	#$07
	sta	STACK_0c8
	ldx	#$89
	bra	L0599
;
	lda	RAM2_0266
	and	#$3F
	beq	L0567
	brset	0,STACK_0d2,L0597
	brclr	2,STACK_0d4,L0597
	lda	RAM2_0264
	and	#$24
	bne	L0597
	ldx	#$83
	stx	RAM1_07d
	bset	6,RAM1_094
	ldx	#$C8
	txa
	jmp	L23D9
;
	jsr	L244D
	lda	STACK_0c8
	ora	#$30
	sta	RAM2_0259
	lda	RAM2_0265
	lsra
	and	#$03
	ora	#$30
	sta	RAM2_025e
	lda	#$C4
	jmp	L23EA
;
L45B7:
	clr	RAM1_056
	bclr	3,STACK_0cb
	brset	2,RAM1_06a,L05D0
	bclr	1,STACK_0d4
	bset	0,STACK_0d4
	lda	RAM2_0264
	bit	#$12
	bne	L05CB
	bclr	0,STACK_0d4
	brclr	2,STACK_0d4,L05D0
	bset	1,STACK_0d4
	clra
	brclr	0,STACK_0d4,L05D6
	bset	4,RAM1_056
	brclr	1,STACK_0d4,L05DB
	lda	#$10
	jsr	L241C
	rts
;
L45DF:
	clrx
	lda	X45F9,x
	sta	RAM1_056
	lda	X45F8,x
	beq	L05F7
	jsr	L2797
	bne	L05E0
	ldx	X45F7,x
	jsr	L44BC,x						;INFO: index jump
	bclr	6,RAM1_05d
X45F7:
	rts
;
X45F8:
	eor	,x
X45F9:
	bmi	L05E2
	bhcc	L05EC
	bmi	L05EF
	bhcc	L05EE
	clrx
;
	db	$8D
;
	asl	X004D
	decx
	jsr	L54F3
	clrx
;
	db	$93, $35
;
	comx
	decx
	cpx	X51FD,x
	clrx
	nop
	asl	RAM1_05d
	decx
	jsr	L54FC,x						;INFO: index jump
	clrx
	rsp
;
	db	$35
;
	incx
	decx
	jmp	L51F1,x						;INFO: index jump
;
	clrx
;
	db	$91
;
	asl	RAM1_051
	decx
	cmp	X54F2,x
	clrx
;
	db	$92, $35, $52
;
	decx
	sbc	X51EC,x
	brset	0,ADDATA,L0634
	brclr	5,TCL,L0617
	ror	PortA,x
L4639:
	rts
	rts
;
L463B:
	brclr	2,STACK_0d2,L0653
	brclr	4,STACK_0cb,L064A
	bclr	4,STACK_0cb
	bset	7,RAM1_05d
	brclr	1,RAM1_07c,L064A
	bset	2,STACK_0cb
	brclr	6,RAM1_05d,L0653
	brset	7,STACK_0d3,L0653
X4650:
	jmp	L4739
	rts
;
L4654:
	lda	#$8B
	cmp	XA68A
	bset	2,STACK_0cb
	brclr	1,RAM1_07c,L0669
	lda	#$88
	brset	7,STACK_0d3,L06C9
	bclr	2,STACK_0d2
	lda	#$80
	bra	L06C9
;
	brset	3,RAM1_07f,L0653
	brset	5,RAM1_07f,L0653
	sta	RAM1_07b
	bclr	1,RAM1_06a
	bclr	3,RAM1_06a
	brclr	5,STACK_0d3,L06CD
	bclr	3,RAM1_07b
	bra	L06CD
;
	bset	2,STACK_0cb
	brset	3,RAM1_06a,L06C5
	bset	3,RAM1_06a
	lda	#$89
	bra	L06C9
;
	bset	4,RAM1_0bc
	lda	#$40
	eor	STACK_0d3
	sta	STACK_0d3
	ldx	#$A5
	jsr	L379B
	bra	L06CF
;
	brclr	3,RAM1_06a,L069D
	bset	5,STACK_0d3
	bra	L06A3
;
	lda	#$20
	eor	STACK_0d3
	sta	STACK_0d3
	ldx	#$A5
	jsr	L379B
	brclr	1,RAM1_07c,L06BB
	lda	#$8B
	brclr	0,RAM1_07c,L06B6
	brset	2,RAM1_07c,L066F
	deca
	bra	L066F
;
	brclr	2,RAM1_07c,L066F
	bra	L06B3
;
	brclr	3,RAM1_06a,L06CF
	bra	L06C5
;
	lda	#$8E
	brclr	1,RAM1_07c,L06C7
	lda	#$8F
	bclr	3,RAM1_06a
	sta	RAM1_07b
	bclr	1,RAM1_06a
	bset	5,RAM1_094
	bset	7,RAM1_05d
	rts
;
L46D2:
	lda	#$04
	jsr	L2481
	lda	#$00
	brclr	3,RAM1_07c,L06ED
	brset	1,RAM1_07c,L06FC
	brclr	3,STACK_0d3,L06ED
	lda	#$01
	bclr	4,STACK_0d3
	brset	0,RAM1_07c,L06ED
	lda	#$02
	bset	4,STACK_0d3
	jsr	L23D9
	bclr	1,RAM1_06a
	brclr	3,STACK_0d3,L0738
	lda	STACK_0d3
	ldx	#$A5
	jmp	L379B
;
	brclr	5,STACK_0d3,L0702
	brset	1,RAM1_06a,L0738
	brclr	0,RAM1_07c,L070E
	lda	#$03
	brset	2,RAM1_07c,L0715
	lda	#$04
	bra	L0715
;
	lda	#$03
	brclr	2,RAM1_07c,L0715
	lda	#$04
	bclr	1,RAM1_06a
	jmp	L23EA
;
L471A:
	bclr	4,STACK_0cb
	clra
	brclr	7,STACK_0d3,L0725
	brclr	2,STACK_0d3,L072A
	bra	L0728
;
	brclr	3,RAM1_06a,L072A
	ora	#$10
	sta	RAM1_056
	lda	STACK_0d3
	and	#$60
	brclr	4,RAM1_056,L0735
	and	#$40
	jsr	L241C
	rts
;
L4739:
	clrx
	lda	X4753,x
	sta	RAM1_056
	lda	X4752,x
	beq	L0751
	jsr	L2797
	bne	L073A
	ldx	X4751,x
	jsr	L4654,x						;INFO: index jump
	bclr	6,RAM1_05d
X4751:
	rts
;
X4752:
	adc	,x
X4753:
	inc	PLMB,x
	bhcc	L075B
	mul
	brset	4,X0042,L074E
	brset	0,STACK_0ed,L0761
	jmp	,x						;INFO: index jump
;
	brset	0,STACK_0fd,L0765
	sbc	,x
	brset	0,STACK_0f1,L0769
	brclr	2,X0033,L0769
L4769:
	jsr	L483E
	bclr	4,PortA
	bset	4,DDRA
	bclr	5,PortA
	bset	5,DDRA
	bclr	3,PortA
	bset	3,DDRA
	jsr	L253F
	bclr	3,DDRA
	rts
;
L477E:
	bclr	3,DDRA
	brclr	5,RAM1_06a,L0786
	brclr	3,PortA,L07A9
	jsr	L483E
	bclr	5,PortB
	jsr	L253F
	bset	5,PortB
	bset	7,RAM1_094
	bset	0,RAM1_05e
	lda	#$05
	sta	RAM1_063
	jsr	L47AA
	tst	RAM1_094
	beq	L07A9
	jsr	L0789
	jsr	L253F
	tst	RAM1_063
	bne	L0798
	rts
;
L47AA:
	clrx
	lda	RAM1_094
	bne	L07B5
	lda	RAM1_095
	beq	L07F1
	ldx	#$08
	incx
	asla
	bcc	L07B5
	lda	X4867,x
	sta	RAM1_050
	aslx
	lda	X4870,x
	sta	RAM1_059
	lda	X4871,x
	sta	RAM1_056
	lda	#$07
	sta	RAM1_058
	lda	X48A8
	sta	RAM1_057
	lda	X48A7
	tsta
	beq	L07DA
	bset	0,RAM1_059
	jsr	L2587
	lda	RAM1_050
	jsr	L48B3
	brset	0,RAM1_05e,L07F1
	brclr	0,RAM1_050,L0000
	ldx	#$94
	tst	,x
	bne	L07EE
	incx
	jsr	L257C
	bclr	0,RAM1_05e
	rts
;
L47F4:
	brset	5,PortA,L003D
	brset	0,RAM1_05e,L003D
	jsr	L4917
	brset	0,RAM1_05e,L003D
	ldx	#$0B
	decx
	bmi	L003D
	cmp	X4886,x
	bne	L0002
	stx	RAM1_050
	jsr	L25A3
	stx	RAM1_058
	ldx	RAM1_050
	aslx
	lda	X48A7
	sta	RAM1_059
	lda	X48A8
	sta	RAM1_056
	lda	X4892,x
	sta	RAM1_057
	lda	X4891,x
	tsta
	beq	L002B
	bset	0,RAM1_059
	jsr	L2587
	lda	RAM1_050
	beq	L003D
	cmp	#$05
	beq	L003B
	bhi	L003D
	bset	3,STACK_0cb
	cmp	X18CB
	rts
;
L483E:
	clra
	ldx	#$07
	sta	RAM2_0260,x
	decx
	bne	L0041
	lda	#$80
	sta	RAM2_0260
	clr	RAM1_06a
	lda	RAM1_07c
	and	#$40
	ora	#$A0
	sta	RAM1_07c
	brset	5,RAM1_069,L005F
	bset	2,RAM1_069
	bset	6,RAM1_07c
	bset	6,RAM1_06a
	clr	RAM1_092
	clr	RAM1_091
	clr	RAM1_094
	clr	RAM1_095
X4867:
	rts
;
	brset	5,PortC,L006F
	sbc	#$82
	and	#$08
	brset	6,RAM1_0a6,L0080
	brset	0,STACK_0ce,L0075
	tst	,x
	brset	0,RAM1_07b,L007B
	eor	PortA
	sta	PortC
	rti
;
	brset	0,STACK_0d5,L0081
	ldx	RAM2_02b0
	brset	0,RAM1_06b,L00CD
	sbc	XD4D6,x
	sbc	X0048,x
	lda	X0044,x
	and	STACK_0e8,x
	mul
X4891:
	brset	0,RAM1_06a,L0096
;
	db	$61
;
	brset	1,RAM1_060,L009A
	lsr	PortC,x
	neg	PortA,x
	inc	,x
	brset	1,RAM1_0b8,L00A0
;
	db	$91
;
	brset	0,RAM1_0a3,L00A6
	sub	PortA
;
	db	$92
;
X48A7:
	brset	1,RAM1_068,L00AC
;
	db	$5E
;
	brset	3,TCH,L00B2
	bclr	4,PortA
	bset	1,RAM1_05e
	rts
;
L48B3:
	sta	RAM1_057
	jsr	L25A3
	stx	RAM1_059
	bset	1,RAM1_05e
	ldx	#$0C
	brclr	4,PortA,L010D
	decx
	bne	L00BE
	bclr	2,RAM1_050
	bset	0,RAM1_050
	brclr	5,PortA,L0117
	jsr	L49A8
	lda	#$C8
	sta	RAM1_056
	jsr	L4992
	brclr	0,RAM1_05e,L00DD
	bclr	0,RAM1_05e
	jsr	L499B
	jsr	L499B
	brclr	5,PortA,L0117
	clr	RAM1_051
	lda	#$AA
	jsr	L49C9
	lda	RAM1_057
	jsr	L49C9
	jsr	L4957
	lda	RAM1_051
	jsr	L49C9
	jsr	L499D
	jsr	L49A8
	jsr	L4969
	jsr	L4982
	jsr	L4982
	jsr	L4982
	jsr	L49C4
	cmp	X105E
	bclr	1,RAM1_05e
	bclr	5,DDRA
	bclr	4,DDRA
	cli
	rts
;
L4917:
	jsr	L499D
	ldx	#$50
	decx
	bne	L011C
	clr	RAM1_059
	bclr	0,RAM1_050
	bclr	0,RAM1_05e
	bclr	2,RAM1_050
	jsr	L4982
	lda	#$56
	jsr	L49C7
	bset	2,RAM1_059
	lda	#$56
	jsr	L49C7
	lda	RAM1_052
	sta	RAM1_058
	jsr	L25A3
	stx	RAM1_059
	inc	RAM1_059
	bclr	2,RAM1_050
	bsr	L0157
	bsr	L0163
	dec	RAM1_056
	bmi	L014E
	brclr	5,PortA,L0147
	brclr	2,RAM1_050,L010D
	bclr	0,RAM1_05e
	lda	RAM1_058
	bra	L010F
;
L4957:
	clrx
	lda	RAM2_0268,x
	bsr	L01CB
	incx
	dec	RAM1_059
	bpl	L0158
	rts
;
L4963:
	brset	0,RAM1_05e,L01C4
	brclr	0,RAM1_050,L016C
L4969:
	jsr	L4982
	sei
	bclr	4,DDRA
	clr	RAM1_056
	bset	7,RAM1_056
	brset	4,PortA,L0182
	dec	RAM1_056
	bpl	L0173
	bset	0,RAM1_05e
	jmp	L04C4
;
	cli
	bset	0,RAM1_05e
L4982:
	rts
;
L4983:
	brset	0,RAM1_05e,L01C4
	brclr	0,RAM1_050,L018E
	jsr	L4982
	bra	L019D
;
	clr	RAM1_056
	bset	4,RAM1_056
L4992:
	brclr	4,PortA,L019B
	dec	RAM1_056
	bne	L0192
	bra	L017A
;
L499B:
	bclr	5,DDRA
L499D:
	bclr	4,PortA
	bset	4,DDRA
	bclr	4,PortA
	cli
	rts
;
	brset	0,RAM1_05e,L01C4
L49A8:
	bclr	5,PortA
	bset	5,DDRA
	bclr	5,PortA
	rts
;
	brclr	0,RAM1_050,L01C4
	tsta
	bpl	L01A5
	bclr	5,DDRA
	clr	RAM1_056
	bset	4,RAM1_056
	brset	5,PortA,L01C6
	dec	RAM1_056
	bpl	L01BB
	bra	L017A
;
L49C4:
	bclr	5,DDRA
	rts
;
L49C7:
	sta	RAM1_051
L49C9:
	ldx	#$09
	sta	RAM1_052
	clr	RAM1_05a
	bset	3,RAM1_05a
	bsr	L01AF
	bsr	L0163
	brset	5,PortA,L01D8
	rola
	bsr	L0183
	dec	RAM1_05a
	bne	L01D1
	brset	0,RAM1_050,L01FB
	sta	RAM1_052
	tst	RAM1_059
	bne	L01F1
	ldx	#$51
	cmp	,x
	bne	L0203
	bset	2,RAM1_050
	bra	L01F4
;
	sta	RAM2_0268,x
	bsr	L01A5
	jsr	L4963
	bra	L0206
;
	bclr	5,DDRA
	jsr	L4963
	brclr	5,PortA,L0206
	bset	0,RAM1_05e
	cli
	lda	RAM1_052
	add	RAM1_051
	bhcc	L020E
	sub	#$10
	sta	RAM1_051
	jsr	L4983
	bra	L01AF
L4A15:
	rts
;
L4A16:
	brset	2,RAM1_08b,L0253
	brclr	6,RAM1_05d,L0253
	jmp	L4AC2
;
L4A1F:
	bclr	4,RAM1_0ba
	bset	7,RAM1_05d
	lda	#$70
	sta	RAM1_077
	rts
;
	brset	7,STACK_0ce,L0254
	brclr	3,RAM1_08b,L0233
	brclr	7,RAM1_08b,L024C
	bclr	3,RAM1_08b
	bset	4,RAM1_0b3
	clr	STACK_0ce
	bset	7,STACK_0ce
	inc	RAM1_08b
	bclr	2,RAM1_08b
	lda	#$10
	sta	RAM2_029e
	clra
	sta	RAM2_029f
	lda	#$0C
	brclr	7,RAM1_08b,L029A
	cmp	XA60B
	bset	1,STACK_0cb
	jsr	L23F3
	rts
;
	bclr	7,STACK_0ce
	ldx	RAM2_029e
	cpx	SEC_CODE1
	bne	L026D
	lda	RAM2_029f
	cmp	SEC_CODE2
	bne	L026D
	stx	RAM1_08c
	sta	RAM1_08d
	jmp	L365D
;
	brset	7,RAM1_08b,L0233
	jmp	L3655
;
	clrx
	cmp	XAE01
	lda	#$70
	add	RAM2_029e,x
	bcs	L028F
	add	#$A0
	bra	L028F
;
	clrx
	cmp	XAE01
	lda	#$F7
	add	RAM2_029e,x
	bhcs	L028F
	add	#$0A
	sta	RAM2_029e,x
	lda	#$50
	sta	RAM1_077
	bset	2,STACK_0cb
	bclr	1,STACK_0cb
	bset	7,RAM1_05d
	rts
;
L4A9D:
	lda	#$0B
	brset	7,STACK_0ce,L02A5
	brclr	3,RAM1_08b,L02A7
	lda	#$C6
	jsr	L23D9
	rts
;
L4AAB:
	brset	3,RAM1_08b,L02BA
	brset	7,RAM1_08b,L02BA
	lda	#$20
	brset	1,RAM1_08b,L02BB
	asla
	brset	0,RAM1_08b,L02BB
	clra
	clrx
	jsr	L2403
	jmp	L2413
;
L4AC2:
	clrx
	brset	7,STACK_0ce,L02C8
	ldx	#$10
	lda	X4ADF,x
	sta	RAM1_056
	lda	X4ADE,x
	beq	L02DD
	jsr	L2797
	bne	L02C8
	ldx	X4ADD,x
	jsr	L4A1F,x						;INFO: index jump
X4ADD:
	rts
;
X4ADE:
	cmp	RAM1_054,x
;
	db	$41
;
	lsrx
	sbc	RAM1_063,x
	mul
	com	STACK_0e3,x
	rorx
	coma
	rorx
	and	RAM1_065,x
	lsra
;
	db	$65
;
	ldx	,x
	brset	0,RAM1_07e,L02FB
	brset	0,SCCR1,L028B
	brset	6,RAM1_0b6,L0315
	sub	RAM1_097
	sta	RAM1_099
	lda	ICH2
	sbc	RAM1_096
	sta	RAM1_098
	bclr	7,RAM1_096
	bset	3,RAM1_05e
	lda	ICH2
	sta	RAM1_096
	lda	ICL2
	sta	RAM1_097
	rts
;
L4B0F:
	lda	#$40
	brclr	3,RAM1_05e,L0300
	bclr	3,RAM1_05e
	rts
;
L4B17:
	tst	RAM1_098
	beq	L034F
	lsr	RAM1_098
	ror	RAM1_099
	lsr	RAM1_098
	ror	RAM1_099
	ldx	RAM1_09a
	lda	RAM1_09b
	lsrx
	rora
	lsrx
	rora
	lsrx
	rora
	lsrx
	rora
	nega
	add	RAM1_09b
	sta	RAM1_09b
	txa
	bcs	L0338
	inca
	nega
	add	RAM1_09a
	sta	RAM1_09a
	lda	RAM1_09b
	add	RAM1_099
	sta	RAM1_09b
	lda	RAM1_09a
	adc	RAM1_098
	bcc	L034B
	lda	#$FF
	sta	RAM1_09a
	clr	RAM1_098
	rts
;
L4B50:
	ldx	#$AA
	jsr	L37C7
	beq	L03A8
	cmp	#$05
	bhi	L03A8
	tax
	decx
	bclr	6,RAM1_081
	lda	#$12
	mul
	tax
	lda	RAM1_09a
	sta	RAM1_09c
	lda	RAM1_09b
	sta	RAM1_09d
	clr	RAM1_056
	lda	RAM1_09a
	cmp	X4C08,x
	bhi	L0383
	bne	L037D
	lda	RAM1_09b
	cmp	X4C09,x
	bcc	L0383
	inc	RAM1_056
	incx
	incx
	bra	L036D
;
	lda	RAM1_056
	cmp	RAM1_084
	bcc	L039B
	lda	RAM1_09c
	cmp	X4C62,x
	bhi	L039B
	bne	L0399
	lda	RAM1_09d
	cmp	X4C63,x
	bcc	L039B
	inc	RAM1_056
	lda	RAM1_056
	cmp	RAM1_084
	beq	L03A8
	sta	RAM1_084
	brclr	5,STACK_0ce,L03A8
	bset	7,RAM1_05d
	rts
;
	clra
	sta	RAM1_051
	sta	RAM1_053
	lda	#$04
	sta	RAM1_052
	inc	RAM1_053
	bne	L03BB
	inc	RAM1_052
	brset	6,RAM1_052,L03CC
	bsr	L03EA
	beq	L03B2
	lda	RAM1_052
	sta	RAM2_02c0,x
	lda	RAM1_053
	sta	RAM2_02d0,x
	tstx
	bne	L03B2
	lda	RAM1_053
	add	#$FF
	sta	RAM1_053
	bcs	L03DA
	dec	RAM1_052
	bpl	L03DA
	bra	L03B2
;
	bsr	L03EA
	beq	L03CC
	lda	RAM1_052
	sta	RAM2_02e0,x
	lda	RAM1_053
	sta	RAM2_02f0,x
	bra	L03CC
;
	lda	#$50
	sta	RAM1_050
	lda	RAM1_084
	sta	RAM1_051
	lda	RAM1_052
	sta	RAM1_098
	lda	RAM1_053
	sta	RAM1_099
	jsr	L4B17
	dec	RAM1_050
	bne	L03F2
	jsr	L4B50
	tax
	cmp	RAM1_051
	rts
;
X4C08:
	deca
X4C09:
	brset	2,X003A,L03A4
	neg	RAM1_07e
	bhcs	L046C
	bcc	L0421
	bclr	7,STACK_0f6
	bset	6,RAM1_0b3
	bset	5,PLMB
	brset	0,PortA,L0478
	sub	X4650
	asl	X0040
	bil	L0402
	bhcc	L0452
	bls	L044E
	bclr	7,X0040
	bset	6,X0020
	brset	0,PortA,L04A2
	neg	RAM1_052
	adc	X003F
	add	X0034,x
	bclr	2,X002B
	sbc	,x
	bne	L043A
	brn	L04B6
	bclr	6,STACK_0ec
	brset	0,PortA,L03DB
	nega
	lsr	RAM1_072,x
	deca
	brclr	1,X003A,L03DE
	neg	RAM1_07d
	bhcs	L04A6
	bcc	L045B
	bclr	7,STACK_0f6
	brset	0,PortA,L0419
	and	RAM1_075,x
	neg	RAM1_052
	adc	X003F
	add	X0034,x
	bclr	2,X002B
	sbc	,x
	bne	L0460
	brn	L04DC
	brset	0,PortA,L04B5
X4C63:
	adc	X003F
	add	X0034,x
	bclr	2,X002B
	sbc	,x
	bne	L046E
	brn	L04EA
	bclr	6,STACK_0ec
	bclr	5,PLMB
	brset	0,PortA,L04E1
	bms	L04C5
	bra	L04B6
;
	bcc	L04AD
	rol	X002A
	nop
	bcs	L0482
	bra	L0436
;
	bclr	6,X004C
	brset	0,PortA,L0413
	sub	#$5D
	sub	X4650
	asl	X0040
	bil	L0470
	bhcc	L04C0
	bls	L04BC
	bclr	7,X0040
	brset	0,PortA,L0461
	and	RAM1_075,x
	neg	RAM1_052
	adc	X003F
	add	X0034,x
	bclr	2,X002B
	sbc	,x
	bne	L04A8
	brn	L0524
	brset	0,PortA,L04A6
	bclr	6,RAM1_08c
	sub	#$5D
	sub	X4650
	asl	X0040
	bil	L0496
	bhcc	L04E6
	bls	L04E2
	brset	0,PortA,L04BD
	brset	0,PortA,L04C0
	brset	0,PortA,L04C3
	brset	0,PortA,L04C6
	brset	0,PortA,L04C9
	brset	0,PortA,L04CC
	brset	0,PortA,L04CF
	brset	0,PortA,L04D2
	brset	0,PortA,L04D5
	brset	0,PortA,L04D8
	brset	0,PortA,L04DB
	brset	0,PortA,L04DE
	brset	0,PortA,L04E1
	brset	0,PortA,L04E4
	brset	0,PortA,L04E7
	brset	0,PortA,L04EA
	brset	0,PortA,L04ED
	brset	0,PortA,L04F0
	brset	0,PortA,L04F3
	brset	0,PortA,L04F6
	brset	0,PortA,L04F9
	brset	0,PortA,L04FC
	brset	0,PortA,L04FF
	brset	0,PortA,L0502
	brset	0,PortA,L0505
	brset	0,PortA,L0508
	brset	0,PortA,L050B
	brset	0,PortA,L050E
	brset	0,PortA,L0511
	brset	0,PortA,L0514
	brset	0,PortA,L0517
	brset	0,PortA,L051A
	brset	0,PortA,L051D
	brset	0,PortA,L0520
	brset	0,PortA,L0523
	brset	0,PortA,L0526
	brset	0,PortA,L0529
	brset	0,PortA,L052C
	brset	0,PortA,L052F
	brset	0,PortA,L0532
	brset	0,PortA,L0535
	brset	0,PortA,L0538
	brset	0,PortA,L053B
	brset	0,PortA,L053E
	brset	0,PortA,L0541
	brset	0,PortA,L0544
	brset	0,PortA,L0547
	brset	0,PortA,L054A
	brset	0,PortA,L054D
	brset	0,PortA,L0550
	brset	0,PortA,L0553
	brset	0,PortA,L0556
	brset	0,PortA,L0559
	brset	0,PortA,L055C
	brset	0,PortA,L055F
	brset	0,PortA,L0562
	brset	0,PortA,L0565
	brset	0,PortA,L0568
	brset	0,PortA,L056B
	brset	0,PortA,L056E
	brset	0,PortA,L0571
	brset	0,PortA,L0574
	brset	0,PortA,L0577
	brset	0,PortA,L057A
	brset	0,PortA,L057D
	brset	0,PortA,L0580
	brset	0,PortA,L0583
	brset	0,PortA,L0586
	brset	0,PortA,L0589
	brset	0,PortA,L058C
	brset	0,PortA,L058F
	brset	0,PortA,L0592
	brset	0,PortA,L0595
	brset	0,PortA,L0598
	brset	0,PortA,L059B
	brset	0,PortA,L059E
	brset	0,PortA,L05A1
	brset	0,PortA,L05A4
	brset	0,PortA,L05A7
	brset	0,PortA,L05AA
	brset	0,PortA,L05AD
	brset	0,PortA,L05B0
	brset	0,PortA,L05B3
	brset	0,PortA,L05B6
	brset	0,PortA,L05B9
	brset	0,PortA,L05BC
	brset	0,PortA,L05BF
	brset	0,PortA,L05C2
	brset	0,PortA,L05C5
	brset	0,PortA,L05C8
	brset	0,PortA,L05CB
	brset	0,PortA,L05CE
	brset	0,PortA,L05D1
	brset	0,PortA,L05D4
	brset	0,PortA,L05D7
	brset	0,PortA,L05DA
	brset	0,PortA,L05DD
	brset	0,PortA,L05E0
	brset	0,PortA,L05E3
	brset	0,PortA,L05E6
	brset	0,PortA,L05E9
	brset	0,PortA,L05EC
	brset	0,PortA,L05EF
	brset	0,PortA,L05F2
	brset	0,PortA,L05F5
	brset	0,PortA,L05F8
	brset	0,PortA,L05FB
	brset	0,PortA,L05FE
	brset	0,PortA,L0601
	brset	0,PortA,L0604
	brset	0,PortA,L0607
	brset	0,PortA,L060A
	brset	0,PortA,L060D
	brset	0,PortA,L0610
	brset	0,PortA,L0613
	brset	0,PortA,L0616
	brset	0,PortA,L0619
	brset	0,PortA,L061C
	brset	0,PortA,L061F
	brset	0,PortA,L0622
	brset	0,PortA,L0625
	brset	0,PortA,L0628
	brset	0,PortA,L062B
	brset	0,PortA,L062E
	brset	0,PortA,L0631
	brset	0,PortA,L0634
	brset	0,PortA,L0637
	brset	0,PortA,L063A
	brset	0,PortA,L063D
	brset	0,PortA,L0640
	brset	0,PortA,L0643
	brset	0,PortA,L0646
	brset	0,PortA,L0649
	brset	0,PortA,L064C
	brset	0,PortA,L064F
	brset	0,PortA,L0652
	brset	0,PortA,L0655
	brset	0,PortA,L0658
	brset	0,PortA,L065B
	brset	0,PortA,L065E
	brset	0,PortA,L0661
	brset	0,PortA,L0664
	brset	0,PortA,L0667
	brset	0,PortA,L066A
	brset	0,PortA,L066D
	brset	0,PortA,L0670
	brset	0,PortA,L0673
	brset	0,PortA,L0676
	brset	0,PortA,L0679
	brset	0,PortA,L067C
	brset	0,PortA,L067F
	brset	0,PortA,L0682
	brset	0,PortA,L0685
	brset	0,PortA,L0688
	brset	0,PortA,L068B
	brset	0,PortA,L068E
	brset	0,PortA,L0691
	brset	0,PortA,L0694
	brset	0,PortA,L0697
	brset	0,PortA,L069A
	brset	0,PortA,L069D
	brset	0,PortA,L06A0
	brset	0,PortA,L06A3
	brset	0,PortA,L06A6
	brset	0,PortA,L06A9
	brset	0,PortA,L06AC
	brset	0,PortA,L06AF
	brset	0,PortA,L06B2
	brset	0,PortA,L06B5
	brset	0,PortA,L06B8
	brset	0,PortA,L06BB
	brset	0,PortA,L06BE
	brset	0,PortA,L06C1
	brset	0,PortA,L06C4
	brset	0,PortA,L06C7
	brset	0,PortA,L06CA
	brset	0,PortA,L06CD
	brset	0,PortA,L06D0
	brset	0,PortA,L06D3
	brset	0,PortA,L06D6
	brset	0,PortA,L06D9
	brset	0,PortA,L06DC
	brset	0,PortA,L06DF
	brset	0,PortA,L06E2
	brset	0,PortA,L06E5
	brset	0,PortA,L06E8
	brset	0,PortA,L06EB
	brset	0,PortA,L06EE
	brset	0,PortA,L06F1
	brset	0,PortA,L06F4
	brset	0,PortA,L06F7
	brset	0,PortA,L06FA
	brset	0,PortA,L06FD
	brset	0,PortA,L0700
	brset	0,PortA,L0703
	brset	0,PortA,L0706
	brset	0,PortA,L0709
	brset	0,PortA,L070C
	brset	0,PortA,L070F
	brset	0,PortA,L0712
	brset	0,PortA,L0715
	brset	0,PortA,L0718
	brset	0,PortA,L071B
	brset	0,PortA,L071E
	brset	0,PortA,L0721
	brset	0,PortA,L0724
	brset	0,PortA,L0727
	brset	0,PortA,L072A
	brset	0,PortA,L072D
	brset	0,PortA,L0730
	brset	0,PortA,L0733
	brset	0,PortA,L0736
	brset	0,PortA,L0739
	brset	0,PortA,L073C
	brset	0,PortA,L073F
	brset	0,PortA,L0742
	brset	0,PortA,L0745
	brset	0,PortA,L0748
	brset	0,PortA,L074B
	brset	0,PortA,L074E
	brset	0,PortA,L0751
	brset	0,PortA,L0754
	brset	0,PortA,L0757
	brset	0,PortA,L075A
	brset	0,PortA,L075D
	brset	0,PortA,L0760
	brset	0,PortA,L0763
	brset	0,PortA,L0766
	brset	0,PortA,L0769
	brset	0,PortA,L076C
	brset	0,PortA,L076F
	brset	0,PortA,L0772
	brset	0,PortA,L0775
	brset	0,PortA,L0778
	brset	0,PortA,L077B
	brset	0,PortA,L077E
	brset	0,PortA,L0781
	brset	0,PortA,L0784
	brset	0,PortA,L0787
	brset	0,PortA,L078A
	brset	0,PortA,L078D
	brset	0,PortA,L0790
	brset	0,PortA,L0793
	brset	0,PortA,L0796
	brset	0,PortA,L0799
	brset	0,PortA,L079C
	brset	0,PortA,L079F
	brset	0,PortA,L07A2
	brset	0,PortA,L07A5
	brset	0,PortA,L07A8
	brset	0,PortA,L07AB
	brset	0,PortA,L07AE
	brset	0,PortA,L07B1
	brset	0,PortA,L07B4
	brset	0,PortA,L07B7
	brset	0,PortA,L07BA
	brset	0,PortA,L07BD
	brset	0,PortA,L07C0
	brset	0,PortA,L07C3
	brset	0,PortA,L07C6
	brset	0,PortA,L07C9
	brset	0,PortA,L07CC
	brset	0,PortA,L07CF
	brset	0,PortA,L07D2
	brset	0,PortA,L07D5
	brset	0,PortA,L07D8
	brset	0,PortA,L07DB
	brset	0,PortA,L07DE
	brset	0,PortA,L07E1
	brset	0,PortA,L07E4
	brset	0,PortA,L07E7
	brset	0,PortA,L07EA
	brset	0,PortA,L07ED
	brset	0,PortA,L07F0
	brset	0,PortA,L07F3
	brset	0,PortA,L07F6
	brset	0,PortA,L07F9
	brset	0,PortA,L07FC
	brset	0,PortA,L07FF
	brset	0,PortA,L0002
	brset	0,PortA,L0005
	brset	0,PortA,L0008
	brset	0,PortA,L000B
	brset	0,PortA,L000E
	brset	0,PortA,L0011
	brset	0,PortA,L0014
	brset	0,PortA,L0017
	brset	0,PortA,L001A
	brset	0,PortA,L001D
	brset	0,PortA,L0020
	brset	0,PortA,L0023
	brset	0,PortA,L0026
	brset	0,PortA,L0029
	brset	0,PortA,L002C
	brset	0,PortA,L002F
	brset	0,PortA,L0032
	brset	0,PortA,L0035
	brset	0,PortA,L0038
	brset	0,PortA,L003B
	brset	0,PortA,L003E
	brset	0,PortA,L0041
	brset	0,PortA,L0044
	brset	0,PortA,L0047
	brset	0,PortA,L004A
	brset	0,PortA,L004D
	brset	0,PortA,L0050
	brset	0,PortA,L0053
	brset	0,PortA,L0056
	brset	0,PortA,L0059
	brset	0,PortA,L005C
	brset	0,PortA,L005F
	brset	0,PortA,L0062
	brset	0,PortA,L0065
	brset	0,PortA,L0068
	brset	0,PortA,L006B
	brset	0,PortA,L006E
	brset	0,PortA,L0071
	brset	0,PortA,L0074
	brset	0,PortA,L0077
	brset	0,PortA,L007A
	brset	0,PortA,L007D
	brset	0,PortA,L0080
	brset	0,PortA,L0083
	brset	0,PortA,L0086
	brset	0,PortA,L0089
	brset	0,PortA,L008C
	brset	0,PortA,L008F
	brset	0,PortA,L0092
	brset	0,PortA,L0095
	brset	0,PortA,L0098
	brset	0,PortA,L009B
	brset	0,PortA,L009E
	brset	0,PortA,L00A1
	brset	0,PortA,L00A4
	brset	0,PortA,L00A7
	brset	0,PortA,L00AA
	brset	0,PortA,L00AD
	brset	0,PortA,L00B0
	brset	0,PortA,L00B3
	brset	0,PortA,L00B6
	brset	0,PortA,L00B9
	brset	0,PortA,L00BC
	brset	0,PortA,L00BF
	brset	0,PortA,L00C2
	brset	0,PortA,L00C5
	brset	0,PortA,L00C8
	brset	0,PortA,L00CB
	brset	0,PortA,L00CE
	brset	0,PortA,L00D1
	brset	0,PortA,L00D4
	brset	0,PortA,L00D7
	brset	0,PortA,L00DA
	brset	0,PortA,L00DD
	brset	0,PortA,L00E0
	brset	0,PortA,L00E3
	brset	0,PortA,L00E6
	brset	0,PortA,L00E9
	brset	0,PortA,L00EC
	brset	0,PortA,L00EF
	brset	0,PortA,L00F2
	brset	0,PortA,L00F5
	brset	0,PortA,L00F8
	brset	0,PortA,L00FB
	brset	0,PortA,L00FE
	brset	0,PortA,L0101
	brset	0,PortA,L0104
	brset	0,PortA,L0107
	brset	0,PortA,L010A
	brset	0,PortA,L010D
	brset	0,PortA,L0110
	brset	0,PortA,L0113
	brset	0,PortA,L0116
	brset	0,PortA,L0119
	brset	0,PortA,L011C
	brset	0,PortA,L011F
	brset	0,PortA,L0122
	brset	0,PortA,L0125
	brset	0,PortA,L0128
	brset	0,PortA,L012B
	brset	0,PortA,L012E
	brset	0,PortA,L0131
	brset	0,PortA,L0134
	brset	0,PortA,L0137
	brset	0,PortA,L013A
	brset	0,PortA,L013D
	brset	0,PortA,L0140
	brset	0,PortA,L0143
	brset	0,PortA,L0146
	brset	0,PortA,L0149
	brset	0,PortA,L014C
	brset	0,PortA,L014F
	brset	0,PortA,L0152
	brset	0,PortA,L0155
	brset	0,PortA,L0158
	brset	0,PortA,L015B
	brset	0,PortA,L015E
	brset	0,PortA,L0161
	brset	0,PortA,L0164
	brset	0,PortA,L0167
	brset	0,PortA,L016A
	brset	0,PortA,L016D
	brset	0,PortA,L0170
	brset	0,PortA,L0173
	brset	0,PortA,L0176
	brset	0,PortA,L0179
	brset	0,PortA,L017C
	brset	0,PortA,L017F
	brset	0,PortA,L0182
	brset	0,PortA,L0185
	brset	0,PortA,L0188
	brset	0,PortA,L018B
	brset	0,PortA,L018E
	brset	0,PortA,L0191
	brset	0,PortA,L0194
	brset	0,PortA,L0197
	brset	0,PortA,L019A
	brset	0,PortA,L019D
	brset	0,PortA,L01A0
	brset	0,PortA,L01A3
	brset	0,PortA,L01A6
	brset	0,PortA,L01A9
	brset	0,PortA,L01AC
	brset	0,PortA,L01AF
	brset	0,PortA,L01B2
	brset	0,PortA,L01B5
	brset	0,PortA,L01B8
	brset	0,PortA,L01BB
	brset	0,PortA,L01BE
	brset	0,PortA,L01C1
	brset	0,PortA,L01C4
	brset	0,PortA,L01C7
	brset	0,PortA,L01CA
	brset	0,PortA,L01CD
	brset	0,PortA,L01D0
	brset	0,PortA,L01D3
	brset	0,PortA,L01D6
	brset	0,PortA,L01D9
	brset	0,PortA,L01DC
	brset	0,PortA,L01DF
	brset	0,PortA,L01E2
	brset	0,PortA,L01E5
	brset	0,PortA,L01E8
	brset	0,PortA,L01EB
	brset	0,PortA,L01EE
	brset	0,PortA,L01F1
L51F1:
	brset	0,PortA,L01F4
	brset	0,PortA,L01F7
	brset	0,PortA,L01FA
	brset	0,PortA,L01FD
X51FD:
	brset	0,PortA,L0200
	brset	0,PortA,L0203
	brset	0,PortA,L0206
	brset	0,PortA,L0209
	brset	0,PortA,L020C
	brset	0,PortA,L020F
	brset	0,PortA,L0212
	brset	0,PortA,L0215
	brset	0,PortA,L0218
	brset	0,PortA,L021B
	brset	0,PortA,L021E
	brset	0,PortA,L0221
	brset	0,PortA,L0224
	brset	0,PortA,L0227
	brset	0,PortA,L022A
	brset	0,PortA,L022D
	brset	0,PortA,L0230
	brset	0,PortA,L0233
	brset	0,PortA,L0236
	brset	0,PortA,L0239
	brset	0,PortA,L023C
	brset	0,PortA,L023F
	brset	0,PortA,L0242
	brset	0,PortA,L0245
	brset	0,PortA,L0248
	brset	0,PortA,L024B
	brset	0,PortA,L024E
	brset	0,PortA,L0251
	brset	0,PortA,L0254
	brset	0,PortA,L0257
	brset	0,PortA,L025A
	brset	0,PortA,L025D
	brset	0,PortA,L0260
	brset	0,PortA,L0263
	brset	0,PortA,L0266
	brset	0,PortA,L0269
	brset	0,PortA,L026C
	brset	0,PortA,L026F
	brset	0,PortA,L0272
	brset	0,PortA,L0275
	brset	0,PortA,L0278
	brset	0,PortA,L027B
	brset	0,PortA,L027E
	brset	0,PortA,L0281
	brset	0,PortA,L0284
	brset	0,PortA,L0287
	brset	0,PortA,L028A
	brset	0,PortA,L028D
	brset	0,PortA,L0290
	brset	0,PortA,L0293
	brset	0,PortA,L0296
	brset	0,PortA,L0299
	brset	0,PortA,L029C
	brset	0,PortA,L029F
	brset	0,PortA,L02A2
	brset	0,PortA,L02A5
	brset	0,PortA,L02A8
	brset	0,PortA,L02AB
	brset	0,PortA,L02AE
	brset	0,PortA,L02B1
	brset	0,PortA,L02B4
	brset	0,PortA,L02B7
	brset	0,PortA,L02BA
	brset	0,PortA,L02BD
	brset	0,PortA,L02C0
	brset	0,PortA,L02C3
	brset	0,PortA,L02C6
	brset	0,PortA,L02C9
	brset	0,PortA,L02CC
	brset	0,PortA,L02CF
	brset	0,PortA,L02D2
	brset	0,PortA,L02D5
	brset	0,PortA,L02D8
	brset	0,PortA,L02DB
	brset	0,PortA,L02DE
	brset	0,PortA,L02E1
	brset	0,PortA,L02E4
	brset	0,PortA,L02E7
	brset	0,PortA,L02EA
	brset	0,PortA,L02ED
	brset	0,PortA,L02F0
	brset	0,PortA,L02F3
	brset	0,PortA,L02F6
	brset	0,PortA,L02F9
	brset	0,PortA,L02FC
	brset	0,PortA,L02FF
	brset	0,PortA,L0302
	brset	0,PortA,L0305
	brset	0,PortA,L0308
	brset	0,PortA,L030B
	brset	0,PortA,L030E
	brset	0,PortA,L0311
	brset	0,PortA,L0314
	brset	0,PortA,L0317
	brset	0,PortA,L031A
	brset	0,PortA,L031D
	brset	0,PortA,L0320
	brset	0,PortA,L0323
	brset	0,PortA,L0326
	brset	0,PortA,L0329
	brset	0,PortA,L032C
	brset	0,PortA,L032F
	brset	0,PortA,L0332
	brset	0,PortA,L0335
	brset	0,PortA,L0338
	brset	0,PortA,L033B
	brset	0,PortA,L033E
	brset	0,PortA,L0341
	brset	0,PortA,L0344
	brset	0,PortA,L0347
	brset	0,PortA,L034A
	brset	0,PortA,L034D
	brset	0,PortA,L0350
	brset	0,PortA,L0353
	brset	0,PortA,L0356
	brset	0,PortA,L0359
	brset	0,PortA,L035C
	brset	0,PortA,L035F
	brset	0,PortA,L0362
	brset	0,PortA,L0365
	brset	0,PortA,L0368
	brset	0,PortA,L036B
	brset	0,PortA,L036E
	brset	0,PortA,L0371
	brset	0,PortA,L0374
	brset	0,PortA,L0377
	brset	0,PortA,L037A
	brset	0,PortA,L037D
	brset	0,PortA,L0380
	brset	0,PortA,L0383
	brset	0,PortA,L0386
	brset	0,PortA,L0389
	brset	0,PortA,L038C
	brset	0,PortA,L038F
	brset	0,PortA,L0392
	brset	0,PortA,L0395
	brset	0,PortA,L0398
	brset	0,PortA,L039B
	brset	0,PortA,L039E
	brset	0,PortA,L03A1
	brset	0,PortA,L03A4
	brset	0,PortA,L03A7
	brset	0,PortA,L03AA
	brset	0,PortA,L03AD
	brset	0,PortA,L03B0
	brset	0,PortA,L03B3
	brset	0,PortA,L03B6
	brset	0,PortA,L03B9
	brset	0,PortA,L03BC
	brset	0,PortA,L03BF
	brset	0,PortA,L03C2
	brset	0,PortA,L03C5
	brset	0,PortA,L03C8
	brset	0,PortA,L03CB
	brset	0,PortA,L03CE
	brset	0,PortA,L03D1
	brset	0,PortA,L03D4
	brset	0,PortA,L03D7
	brset	0,PortA,L03DA
	brset	0,PortA,L03DD
	brset	0,PortA,L03E0
	brset	0,PortA,L03E3
	brset	0,PortA,L03E6
	brset	0,PortA,L03E9
	brset	0,PortA,L03EC
	brset	0,PortA,L03EF
	brset	0,PortA,L03F2
	brset	0,PortA,L03F5
	brset	0,PortA,L03F8
	brset	0,PortA,L03FB
	brset	0,PortA,L03FE
	brset	0,PortA,L0401
	brset	0,PortA,L0404
	brset	0,PortA,L0407
	brset	0,PortA,L040A
	brset	0,PortA,L040D
	brset	0,PortA,L0410
	brset	0,PortA,L0413
	brset	0,PortA,L0416
	brset	0,PortA,L0419
	brset	0,PortA,L041C
	brset	0,PortA,L041F
	brset	0,PortA,L0422
	brset	0,PortA,L0425
	brset	0,PortA,L0428
	brset	0,PortA,L042B
	brset	0,PortA,L042E
	brset	0,PortA,L0431
	brset	0,PortA,L0434
	brset	0,PortA,L0437
	brset	0,PortA,L043A
	brset	0,PortA,L043D
	brset	0,PortA,L0440
	brset	0,PortA,L0443
	brset	0,PortA,L0446
	brset	0,PortA,L0449
	brset	0,PortA,L044C
	brset	0,PortA,L044F
	brset	0,PortA,L0452
	brset	0,PortA,L0455
	brset	0,PortA,L0458
	brset	0,PortA,L045B
	brset	0,PortA,L045E
	brset	0,PortA,L0461
	brset	0,PortA,L0464
	brset	0,PortA,L0467
	brset	0,PortA,L046A
	brset	0,PortA,L046D
	brset	0,PortA,L0470
	brset	0,PortA,L0473
	brset	0,PortA,L0476
	brset	0,PortA,L0479
	brset	0,PortA,L047C
	brset	0,PortA,L047F
	brset	0,PortA,L0482
	brset	0,PortA,L0485
	brset	0,PortA,L0488
	brset	0,PortA,L048B
	brset	0,PortA,L048E
	brset	0,PortA,L0491
	brset	0,PortA,L0494
	brset	0,PortA,L0497
	brset	0,PortA,L049A
	brset	0,PortA,L049D
	brset	0,PortA,L04A0
	brset	0,PortA,L04A3
	brset	0,PortA,L04A6
	brset	0,PortA,L04A9
	brset	0,PortA,L04AC
	brset	0,PortA,L04AF
	brset	0,PortA,L04B2
	brset	0,PortA,L04B5
	brset	0,PortA,L04B8
	brset	0,PortA,L04BB
	brset	0,PortA,L04BE
	brset	0,PortA,L04C1
	brset	0,PortA,L04C4
	brset	0,PortA,L04C7
	brset	0,PortA,L04CA
	brset	0,PortA,L04CD
	brset	0,PortA,L04D0
	brset	0,PortA,L04D3
	brset	0,PortA,L04D6
	brset	0,PortA,L04D9
	brset	0,PortA,L04DC
	brset	0,PortA,L04DF
	brset	0,PortA,L04E2
	brset	0,PortA,L04E5
	brset	0,PortA,L04E8
	brset	0,PortA,L04EB
	brset	0,PortA,L04EE
	brset	0,PortA,L04F1
	brset	0,PortA,L04F4
	brset	0,PortA,L04F7
	brset	0,PortA,L04FA
	brset	0,PortA,L04FD
	brset	0,PortA,L0500
	brset	0,PortA,L0503
	brset	0,PortA,L0506
	brset	0,PortA,L0509
	brset	0,PortA,L050C
	brset	0,PortA,L050F
	brset	0,PortA,L0512
	brset	0,PortA,L0515
	brset	0,PortA,L0518
	brset	0,PortA,L051B
	brset	0,PortA,L051E
	brset	0,PortA,L0521
	brset	0,PortA,L0524
	brset	0,PortA,L0527
	brset	0,PortA,L052A
	brset	0,PortA,L052D
	brset	0,PortA,L0530
	brset	0,PortA,L0533
	brset	0,PortA,L0536
	brset	0,PortA,L0539
	brset	0,PortA,L053C
	brset	0,PortA,L053F
	brset	0,PortA,L0542
	brset	0,PortA,L0545
	brset	0,PortA,L0548
	brset	0,PortA,L054B
	brset	0,PortA,L054E
	brset	0,PortA,L0551
	brset	0,PortA,L0554
	brset	0,PortA,L0557
	brset	0,PortA,L055A
	brset	0,PortA,L055D
	brset	0,PortA,L0560
	brset	0,PortA,L0563
	brset	0,PortA,L0566
	brset	0,PortA,L0569
	brset	0,PortA,L056C
	brset	0,PortA,L056F
	brset	0,PortA,L0572
	brset	0,PortA,L0575
	brset	0,PortA,L0578
	brset	0,PortA,L057B
	brset	0,PortA,L057E
	brset	0,PortA,L0581
	brset	0,PortA,L0584
	brset	0,PortA,L0587
	brset	0,PortA,L058A
	brset	0,PortA,L058D
	brset	0,PortA,L0590
	brset	0,PortA,L0593
	brset	0,PortA,L0596
	brset	0,PortA,L0599
	brset	0,PortA,L059C
	brset	0,PortA,L059F
	brset	0,PortA,L05A2
	brset	0,PortA,L05A5
	brset	0,PortA,L05A8
	brset	0,PortA,L05AB
	brset	0,PortA,L05AE
	brset	0,PortA,L05B1
	brset	0,PortA,L05B4
	brset	0,PortA,L05B7
	brset	0,PortA,L05BA
	brset	0,PortA,L05BD
	brset	0,PortA,L05C0
	brset	0,PortA,L05C3
	brset	0,PortA,L05C6
	brset	0,PortA,L05C9
	brset	0,PortA,L05CC
	brset	0,PortA,L05CF
	brset	0,PortA,L05D2
	brset	0,PortA,L05D5
	brset	0,PortA,L05D8
	brset	0,PortA,L05DB
	brset	0,PortA,L05DE
	brset	0,PortA,L05E1
	brset	0,PortA,L05E4
	brset	0,PortA,L05E7
	brset	0,PortA,L05EA
	brset	0,PortA,L05ED
	brset	0,PortA,L05F0
	brset	0,PortA,L05F3
	brset	0,PortA,L05F6
	brset	0,PortA,L05F9
	brset	0,PortA,L05FC
	brset	0,PortA,L05FF
	brset	0,PortA,L0602
	brset	0,PortA,L0605
	brset	0,PortA,L0608
	brset	0,PortA,L060B
	brset	0,PortA,L060E
	brset	0,PortA,L0611
	brset	0,PortA,L0614
	brset	0,PortA,L0617
	brset	0,PortA,L061A
	brset	0,PortA,L061D
	brset	0,PortA,L0620
	brset	0,PortA,L0623
	brset	0,PortA,L0626
	brset	0,PortA,L0629
	brset	0,PortA,L062C
	brset	0,PortA,L062F
	brset	0,PortA,L0632
	brset	0,PortA,L0635
	brset	0,PortA,L0638
	brset	0,PortA,L063B
	brset	0,PortA,L063E
	brset	0,PortA,L0641
	brset	0,PortA,L0644
	brset	0,PortA,L0647
	brset	0,PortA,L064A
	brset	0,PortA,L064D
	brset	0,PortA,L0650
	brset	0,PortA,L0653
	brset	0,PortA,L0656
	brset	0,PortA,L0659
	brset	0,PortA,L065C
	brset	0,PortA,L065F
	brset	0,PortA,L0662
	brset	0,PortA,L0665
	brset	0,PortA,L0668
	brset	0,PortA,L066B
	brset	0,PortA,L066E
	brset	0,PortA,L0671
	brset	0,PortA,L0674
	brset	0,PortA,L0677
	brset	0,PortA,L067A
	brset	0,PortA,L067D
	brset	0,PortA,L0680
	brset	0,PortA,L0683
	brset	0,PortA,L0686
	brset	0,PortA,L0689
	brset	0,PortA,L068C
	brset	0,PortA,L068F
	brset	0,PortA,L0692
	brset	0,PortA,L0695
	brset	0,PortA,L0698
	brset	0,PortA,L069B
	brset	0,PortA,L069E
	brset	0,PortA,L06A1
	brset	0,PortA,L06A4
	brset	0,PortA,L06A7
	brset	0,PortA,L06AA
	brset	0,PortA,L06AD
	brset	0,PortA,L06B0
	brset	0,PortA,L06B3
	brset	0,PortA,L06B6
	brset	0,PortA,L06B9
	brset	0,PortA,L06BC
	brset	0,PortA,L06BF
	brset	0,PortA,L06C2
	brset	0,PortA,L06C5
	brset	0,PortA,L06C8
	brset	0,PortA,L06CB
	brset	0,PortA,L06CE
	brset	0,PortA,L06D1
	brset	0,PortA,L06D4
	brset	0,PortA,L06D7
	brset	0,PortA,L06DA
	brset	0,PortA,L06DD
	brset	0,PortA,L06E0
	brset	0,PortA,L06E3
	brset	0,PortA,L06E6
	brset	0,PortA,L06E9
	brset	0,PortA,L06EC
	brset	0,PortA,L06EF
	brset	0,PortA,L06F2
	brset	0,PortA,L06F5
	brset	0,PortA,L06F8
	brset	0,PortA,L06FB
	brset	0,PortA,L06FE
	brset	0,PortA,L0701
	brset	0,PortA,L0704
	brset	0,PortA,L0707
	brset	0,PortA,L070A
	brset	0,PortA,L070D
	brset	0,PortA,L0710
	brset	0,PortA,L0713
	brset	0,PortA,L0716
	brset	0,PortA,L0719
	brset	0,PortA,L071C
	brset	0,PortA,L071F
	brset	0,PortA,L0722
	brset	0,PortA,L0725
	brset	0,PortA,L0728
	brset	0,PortA,L072B
	brset	0,PortA,L072E
	brset	0,PortA,L0731
	brset	0,PortA,L0734
	brset	0,PortA,L0737
	brset	0,PortA,L073A
	brset	0,PortA,L073D
	brset	0,PortA,L0740
	brset	0,PortA,L0743
	brset	0,PortA,L0746
	brset	0,PortA,L0749
	brset	0,PortA,L074C
	brset	0,PortA,L074F
	brset	0,PortA,L0752
	brset	0,PortA,L0755
	brset	0,PortA,L0758
	brset	0,PortA,L075B
	brset	0,PortA,L075E
	brset	0,PortA,L0761
	brset	0,PortA,L0764
	brset	0,PortA,L0767
	brset	0,PortA,L076A
	brset	0,PortA,L076D
	brset	0,PortA,L0770
	brset	0,PortA,L0773
	brset	0,PortA,L0776
	brset	0,PortA,L0779
	brset	0,PortA,L077C
	brset	0,PortA,L077F
	brset	0,PortA,L0782
	brset	0,PortA,L0785
	brset	0,PortA,L0788
	brset	0,PortA,L078B
	brset	0,PortA,L078E
	brset	0,PortA,L0791
	brset	0,PortA,L0794
	brset	0,PortA,L0797
	brset	0,PortA,L079A
	brset	0,PortA,L079D
	brset	0,PortA,L07A0
	brset	0,PortA,L07A3
	brset	0,PortA,L07A6
	brset	0,PortA,L07A9
	brset	0,PortA,L07AC
	brset	0,PortA,L07AF
	brset	0,PortA,L07B2
	brset	0,PortA,L07B5
	brset	0,PortA,L07B8
	brset	0,PortA,L07BB
	brset	0,PortA,L07BE
	brset	0,PortA,L07C1
	brset	0,PortA,L07C4
	brset	0,PortA,L07C7
	brset	0,PortA,L07CA
	brset	0,PortA,L07CD
	brset	0,PortA,L07D0
	brset	0,PortA,L07D3
	brset	0,PortA,L07D6
	brset	0,PortA,L07D9
	brset	0,PortA,L07DC
	brset	0,PortA,L07DF
	brset	0,PortA,L07E2
	brset	0,PortA,L07E5
	brset	0,PortA,L07E8
	brset	0,PortA,L07EB
	brset	0,PortA,L07EE
	brset	0,PortA,L07F1
	brset	0,PortA,L07F4
	brset	0,PortA,L07F7
	brset	0,PortA,L07FA
	brset	0,PortA,L07FD
	brset	0,PortA,L0000
	brset	0,PortA,L0003
	brset	0,PortA,L0006
	brset	0,PortA,L0009
	brset	0,PortA,L000C
	brset	0,PortA,L000F
	brset	0,PortA,L0012
	brset	0,PortA,L0015
	brset	0,PortA,L0018
	brset	0,PortA,L001B
	brset	0,PortA,L001E
	brset	0,PortA,L0021
	brset	0,PortA,L0024
	brset	0,PortA,L0027
	brset	0,PortA,L002A
	brset	0,PortA,L002D
	brset	0,PortA,L0030
	brset	0,PortA,L0033
	brset	0,PortA,L0036
	brset	0,PortA,L0039
	brset	0,PortA,L003C
	brset	0,PortA,L003F
	brset	0,PortA,L0042
	brset	0,PortA,L0045
	brset	0,PortA,L0048
	brset	0,PortA,L004B
	brset	0,PortA,L004E
	brset	0,PortA,L0051
	brset	0,PortA,L0054
	brset	0,PortA,L0057
	brset	0,PortA,L005A
	brset	0,PortA,L005D
	brset	0,PortA,L0060
	brset	0,PortA,L0063
	brset	0,PortA,L0066
	brset	0,PortA,L0069
	brset	0,PortA,L006C
	brset	0,PortA,L006F
	brset	0,PortA,L0072
	brset	0,PortA,L0075
	brset	0,PortA,L0078
	brset	0,PortA,L007B
	brset	0,PortA,L007E
	brset	0,PortA,L0081
	brset	0,PortA,L0084
	brset	0,PortA,L0087
	brset	0,PortA,L008A
	brset	0,PortA,L008D
	brset	0,PortA,L0090
	brset	0,PortA,L0093
	brset	0,PortA,L0096
	brset	0,PortA,L0099
	brset	0,PortA,L009C
	brset	0,PortA,L009F
	brset	0,PortA,L00A2
	brset	0,PortA,L00A5
	brset	0,PortA,L00A8
	brset	0,PortA,L00AB
	brset	0,PortA,L00AE
	brset	0,PortA,L00B1
	brset	0,PortA,L00B4
	brset	0,PortA,L00B7
	brset	0,PortA,L00BA
	brset	0,PortA,L00BD
	brset	0,PortA,L00C0
	brset	0,PortA,L00C3
	brset	0,PortA,L00C6
	brset	0,PortA,L00C9
	brset	0,PortA,L00CC
	brset	0,PortA,L00CF
	brset	0,PortA,L00D2
	brset	0,PortA,L00D5
	brset	0,PortA,L00D8
	brset	0,PortA,L00DB
	brset	0,PortA,L00DE
	brset	0,PortA,L00E1
	brset	0,PortA,L00E4
	brset	0,PortA,L00E7
	brset	0,PortA,L00EA
	brset	0,PortA,L00ED
	brset	0,PortA,L00F0
	brset	0,PortA,L00F3
	brset	0,PortA,L00F6
	brset	0,PortA,L00F9
	brset	0,PortA,L00FC
	brset	0,PortA,L00FF
	brset	0,PortA,L0102
	brset	0,PortA,L0105
	brset	0,PortA,L0108
	brset	0,PortA,L010B
	brset	0,PortA,L010E
	brset	0,PortA,L0111
	brset	0,PortA,L0114
	brset	0,PortA,L0117
	brset	0,PortA,L011A
	brset	0,PortA,L011D
	brset	0,PortA,L0120
	brset	0,PortA,L0123
	brset	0,PortA,L0126
	brset	0,PortA,L0129
	brset	0,PortA,L012C
	brset	0,PortA,L012F
	brset	0,PortA,L0132
	brset	0,PortA,L0135
	brset	0,PortA,L0138
	brset	0,PortA,L013B
	brset	0,PortA,L013E
	brset	0,PortA,L0141
	brset	0,PortA,L0144
	brset	0,PortA,L0147
	brset	0,PortA,L014A
	brset	0,PortA,L014D
	brset	0,PortA,L0150
	brset	0,PortA,L0153
	brset	0,PortA,L0156
	brset	0,PortA,L0159
	brset	0,PortA,L015C
	brset	0,PortA,L015F
	brset	0,PortA,L0162
	brset	0,PortA,L0165
	brset	0,PortA,L0168
	brset	0,PortA,L016B
	brset	0,PortA,L016E
	brset	0,PortA,L0171
	brset	0,PortA,L0174
	brset	0,PortA,L0177
	brset	0,PortA,L017A
	brset	0,PortA,L017D
	brset	0,PortA,L0180
	brset	0,PortA,L0183
	brset	0,PortA,L0186
	brset	0,PortA,L0189
	brset	0,PortA,L018C
	brset	0,PortA,L018F
	brset	0,PortA,L0192
	brset	0,PortA,L0195
	brset	0,PortA,L0198
	brset	0,PortA,L019B
	brset	0,PortA,L019E
	brset	0,PortA,L01A1
	brset	0,PortA,L01A4
	brset	0,PortA,L01A7
	brset	0,PortA,L01AA
	brset	0,PortA,L01AD
	brset	0,PortA,L01B0
	brset	0,PortA,L01B3
	brset	0,PortA,L01B6
	brset	0,PortA,L01B9
	brset	0,PortA,L01BC
	brset	0,PortA,L01BF
	brset	0,PortA,L01C2
	brset	0,PortA,L01C5
	brset	0,PortA,L01C8
	brset	0,PortA,L01CB
	brset	0,PortA,L01CE
	brset	0,PortA,L01D1
	brset	0,PortA,L01D4
	brset	0,PortA,L01D7
	brset	0,PortA,L01DA
	brset	0,PortA,L01DD
	brset	0,PortA,L01E0
	brset	0,PortA,L01E3
	brset	0,PortA,L01E6
	brset	0,PortA,L01E9
	brset	0,PortA,L01EC
	brset	0,PortA,L01EF
	brset	0,PortA,L01F2
	brset	0,PortA,L01F5
	brset	0,PortA,L01F8
	brset	0,PortA,L01FB
	brset	0,PortA,L01FE
	brset	0,PortA,L0201
	brset	0,PortA,L0204
	brset	0,PortA,L0207
	brset	0,PortA,L020A
	brset	0,PortA,L020D
	brset	0,PortA,L0210
	brset	0,PortA,L0213
	brset	0,PortA,L0216
	brset	0,PortA,L0219
	brset	0,PortA,L021C
	brset	0,PortA,L021F
	brset	0,PortA,L0222
	brset	0,PortA,L0225
	brset	0,PortA,L0228
	brset	0,PortA,L022B
	brset	0,PortA,L022E
	brset	0,PortA,L0231
	brset	0,PortA,L0234
	brset	0,PortA,L0237
	brset	0,PortA,L023A
	brset	0,PortA,L023D
	brset	0,PortA,L0240
	brset	0,PortA,L0243
	brset	0,PortA,L0246
	brset	0,PortA,L0249
	brset	0,PortA,L024C
	brset	0,PortA,L024F
	brset	0,PortA,L0252
	brset	0,PortA,L0255
	brset	0,PortA,L0258
	brset	0,PortA,L025B
	brset	0,PortA,L025E
	brset	0,PortA,L0261
	brset	0,PortA,L0264
	brset	0,PortA,L0267
	brset	0,PortA,L026A
	brset	0,PortA,L026D
	brset	0,PortA,L0270
	brset	0,PortA,L0273
	brset	0,PortA,L0276
	brset	0,PortA,L0279
	brset	0,PortA,L027C
	brset	0,PortA,L027F
	brset	0,PortA,L0282
	brset	0,PortA,L0285
	brset	0,PortA,L0288
	brset	0,PortA,L028B
	brset	0,PortA,L028E
	brset	0,PortA,L0291
	brset	0,PortA,L0294
	brset	0,PortA,L0297
	brset	0,PortA,L029A
	brset	0,PortA,L029D
	brset	0,PortA,L02A0
	brset	0,PortA,L02A3
	brset	0,PortA,L02A6
	brset	0,PortA,L02A9
	brset	0,PortA,L02AC
	brset	0,PortA,L02AF
	brset	0,PortA,L02B2
	brset	0,PortA,L02B5
	brset	0,PortA,L02B8
	brset	0,PortA,L02BB
	brset	0,PortA,L02BE
	brset	0,PortA,L02C1
	brset	0,PortA,L02C4
	brset	0,PortA,L02C7
	brset	0,PortA,L02CA
	brset	0,PortA,L02CD
	brset	0,PortA,L02D0
	brset	0,PortA,L02D3
	brset	0,PortA,L02D6
	brset	0,PortA,L02D9
	brset	0,PortA,L02DC
	brset	0,PortA,L02DF
	brset	0,PortA,L02E2
	brset	0,PortA,L02E5
	brset	0,PortA,L02E8
	brset	0,PortA,L02EB
	brset	0,PortA,L02EE
	brset	0,PortA,L02F1
	brset	0,PortA,L02F4
	brset	0,PortA,L02F7
	brset	0,PortA,L02FA
	brset	0,PortA,L02FD
	brset	0,PortA,L0300
	brset	0,PortA,L0303
	brset	0,PortA,L0306
	brset	0,PortA,L0309
	brset	0,PortA,L030C
	brset	0,PortA,L030F
	brset	0,PortA,L0312
	brset	0,PortA,L0315
	brset	0,PortA,L0318
	brset	0,PortA,L031B
	brset	0,PortA,L031E
	brset	0,PortA,L0321
	brset	0,PortA,L0324
	brset	0,PortA,L0327
	brset	0,PortA,L032A
	brset	0,PortA,L032D
	brset	0,PortA,L0330
	brset	0,PortA,L0333
	brset	0,PortA,L0336
	brset	0,PortA,L0339
	brset	0,PortA,L033C
	brset	0,PortA,L033F
	brset	0,PortA,L0342
	brset	0,PortA,L0345
	brset	0,PortA,L0348
	brset	0,PortA,L034B
	brset	0,PortA,L034E
	brset	0,PortA,L0351
	brset	0,PortA,L0354
	brset	0,PortA,L0357
	brset	0,PortA,L035A
	brset	0,PortA,L035D
	brset	0,PortA,L0360
	brset	0,PortA,L0363
	brset	0,PortA,L0366
	brset	0,PortA,L0369
	brset	0,PortA,L036C
	brset	0,PortA,L036F
	brset	0,PortA,L0372
	brset	0,PortA,L0375
	brset	0,PortA,L0378
	brset	0,PortA,L037B
	brset	0,PortA,L037E
	brset	0,PortA,L0381
	brset	0,PortA,L0384
	brset	0,PortA,L0387
	brset	0,PortA,L038A
	brset	0,PortA,L038D
	brset	0,PortA,L0390
	brset	0,PortA,L0393
	brset	0,PortA,L0396
	brset	0,PortA,L0399
	brset	0,PortA,L039C
	brset	0,PortA,L039F
	brset	0,PortA,L03A2
	brset	0,PortA,L03A5
	brset	0,PortA,L03A8
	brset	0,PortA,L03AB
	brset	0,PortA,L03AE
	brset	0,PortA,L03B1
	brset	0,PortA,L03B4
	brset	0,PortA,L03B7
	brset	0,PortA,L03BA
	brset	0,PortA,L03BD
	brset	0,PortA,L03C0
	brset	0,PortA,L03C3
	brset	0,PortA,L03C6
	brset	0,PortA,L03C9
	brset	0,PortA,L03CC
	brset	0,PortA,L03CF
	brset	0,PortA,L03D2
	brset	0,PortA,L03D5
	brset	0,PortA,L03D8
	brset	0,PortA,L03DB
	brset	0,PortA,L03DE
	brset	0,PortA,L03E1
	brset	0,PortA,L03E4
	brset	0,PortA,L03E7
	brset	0,PortA,L03EA
	brset	0,PortA,L03ED
	brset	0,PortA,L03F0
	brset	0,PortA,L03F3
	brset	0,PortA,L03F6
	brset	0,PortA,L03F9
	brset	0,PortA,L03FC
	brset	0,PortA,L03FF
	brset	0,PortA,L0402
	brset	0,PortA,L0405
	brset	0,PortA,L0408
	brset	0,PortA,L040B
	brset	0,PortA,L040E
	brset	0,PortA,L0411
	brset	0,PortA,L0414
	brset	0,PortA,L0417
	brset	0,PortA,L041A
	brset	0,PortA,L041D
	brset	0,PortA,L0420
	brset	0,PortA,L0423
	brset	0,PortA,L0426
	brset	0,PortA,L0429
	brset	0,PortA,L042C
	brset	0,PortA,L042F
	brset	0,PortA,L0432
	brset	0,PortA,L0435
	brset	0,PortA,L0438
	brset	0,PortA,L043B
	brset	0,PortA,L043E
	brset	0,PortA,L0441
	brset	0,PortA,L0444
	brset	0,PortA,L0447
	brset	0,PortA,L044A
	brset	0,PortA,L044D
	brset	0,PortA,L0450
	brset	0,PortA,L0453
	brset	0,PortA,L0456
	brset	0,PortA,L0459
	brset	0,PortA,L045C
	brset	0,PortA,L045F
	brset	0,PortA,L0462
	brset	0,PortA,L0465
	brset	0,PortA,L0468
	brset	0,PortA,L046B
	brset	0,PortA,L046E
	brset	0,PortA,L0471
	brset	0,PortA,L0474
	brset	0,PortA,L0477
	brset	0,PortA,L047A
	brset	0,PortA,L047D
	brset	0,PortA,L0480
	brset	0,PortA,L0483
	brset	0,PortA,L0486
	brset	0,PortA,L0489
	brset	0,PortA,L048C
	brset	0,PortA,L048F
	brset	0,PortA,L0492
	brset	0,PortA,L0495
	brset	0,PortA,L0498
	brset	0,PortA,L049B
	brset	0,PortA,L049E
	brset	0,PortA,L04A1
	brset	0,PortA,L04A4
	brset	0,PortA,L04A7
	brset	0,PortA,L04AA
	brset	0,PortA,L04AD
	brset	0,PortA,L04B0
	brset	0,PortA,L04B3
	brset	0,PortA,L04B6
	brset	0,PortA,L04B9
	brset	0,PortA,L04BC
	brset	0,PortA,L04BF
	brset	0,PortA,L04C2
	brset	0,PortA,L04C5
	brset	0,PortA,L04C8
	brset	0,PortA,L04CB
	brset	0,PortA,L04CE
	brset	0,PortA,L04D1
	brset	0,PortA,L04D4
	brset	0,PortA,L04D7
	brset	0,PortA,L04DA
	brset	0,PortA,L04DD
	brset	0,PortA,L04E0
	brset	0,PortA,L04E3
	brset	0,PortA,L04E6
	brset	0,PortA,L04E9
	brset	0,PortA,L04EC
	brset	0,PortA,L04EF
	brset	0,PortA,L04F2
	brset	0,PortA,L04F5
	brset	0,PortA,L04F8
	brset	0,PortA,L04FB
	brset	0,PortA,L04FE
	brset	0,PortA,L0501
	brset	0,PortA,L0504
	brset	0,PortA,L0507
	brset	0,PortA,L050A
	brset	0,PortA,L050D
	brset	0,PortA,L0510
	brset	0,PortA,L0513
	brset	0,PortA,L0516
	brset	0,PortA,L0519
	brset	0,PortA,L051C
	brset	0,PortA,L051F
	brset	0,PortA,L0522
	brset	0,PortA,L0525
	brset	0,PortA,L0528
	brset	0,PortA,L052B
	brset	0,PortA,L052E
	brset	0,PortA,L0531
	brset	0,PortA,L0534
	brset	0,PortA,L0537
	brset	0,PortA,L053A
	brset	0,PortA,L053D
	brset	0,PortA,L0540
	brset	0,PortA,L0543
	brset	0,PortA,L0546
	brset	0,PortA,L0549
	brset	0,PortA,L054C
	brset	0,PortA,L054F
	brset	0,PortA,L0552
	brset	0,PortA,L0555
	brset	0,PortA,L0558
	brset	0,PortA,L055B
	brset	0,PortA,L055E
	brset	0,PortA,L0561
	brset	0,PortA,L0564
	brset	0,PortA,L0567
	brset	0,PortA,L056A
	brset	0,PortA,L056D
	brset	0,PortA,L0570
	brset	0,PortA,L0573
	brset	0,PortA,L0576
	brset	0,PortA,L0579
	brset	0,PortA,L057C
	brset	0,PortA,L057F
	brset	0,PortA,L0582
	brset	0,PortA,L0585
	brset	0,PortA,L0588
	brset	0,PortA,L058B
	brset	0,PortA,L058E
	brset	0,PortA,L0591
	brset	0,PortA,L0594
	brset	0,PortA,L0597
	brset	0,PortA,L059A
	brset	0,PortA,L059D
	brset	0,PortA,L05A0
	brset	0,PortA,L05A3
	brset	0,PortA,L05A6
	brset	0,PortA,L05A9
	brset	0,PortA,L05AC
	brset	0,PortA,L05AF
	brset	0,PortA,L05B2
	brset	0,PortA,L05B5
	brset	0,PortA,L05B8
	brset	0,PortA,L05BB
	brset	0,PortA,L05BE
	brset	0,PortA,L05C1
	brset	0,PortA,L05C4
	brset	0,PortA,L05C7
	brset	0,PortA,L05CA
	brset	0,PortA,L05CD
	brset	0,PortA,L05D0
	brset	0,PortA,L05D3
	brset	0,PortA,L05D6
	brset	0,PortA,L05D9
	brset	0,PortA,L05DC
	brset	0,PortA,L05DF
	brset	0,PortA,L05E2
	brset	0,PortA,L05E5
	brset	0,PortA,L05E8
	brset	0,PortA,L05EB
	brset	0,PortA,L05EE
	brset	0,PortA,L05F1
	brset	0,PortA,L05F4
	brset	0,PortA,L05F7
	brset	0,PortA,L05FA
	brset	0,PortA,L05FD
	brset	0,PortA,L0600
	brset	0,PortA,L0603
	brset	0,PortA,L0606
	brset	0,PortA,L0609
	brset	0,PortA,L060C
	brset	0,PortA,L060F
	brset	0,PortA,L0612
	brset	0,PortA,L0615
	brset	0,PortA,L0618
	brset	0,PortA,L061B
	brset	0,PortA,L061E
	brset	0,PortA,L0621
	brset	0,PortA,L0624
	brset	0,PortA,L0627
	brset	0,PortA,L062A
	brset	0,PortA,L062D
	brset	0,PortA,L0630
	brset	0,PortA,L0633
	brset	0,PortA,L0636
	brset	0,PortA,L0639
	brset	0,PortA,L063C
	brset	0,PortA,L063F
	brset	0,PortA,L0642
	brset	0,PortA,L0645
	brset	0,PortA,L0648
	brset	0,PortA,L064B
	brset	0,PortA,L064E
	brset	0,PortA,L0651
	brset	0,PortA,L0654
	brset	0,PortA,L0657
	brset	0,PortA,L065A
	brset	0,PortA,L065D
	brset	0,PortA,L0660
	brset	0,PortA,L0663
	brset	0,PortA,L0666
	brset	0,PortA,L0669
	brset	0,PortA,L066C
	brset	0,PortA,L066F
	brset	0,PortA,L0672
	brset	0,PortA,L0675
	brset	0,PortA,L0678
	brset	0,PortA,L067B
	brset	0,PortA,L067E
	brset	0,PortA,L0681
	brset	0,PortA,L0684
	brset	0,PortA,L0687
	brset	0,PortA,L068A
	brset	0,PortA,L068D
	brset	0,PortA,L0690
	brset	0,PortA,L0693
	brset	0,PortA,L0696
	brset	0,PortA,L0699
	brset	0,PortA,L069C
	brset	0,PortA,L069F
	brset	0,PortA,L06A2
	brset	0,PortA,L06A5
	brset	0,PortA,L06A8
	brset	0,PortA,L06AB
	brset	0,PortA,L06AE
	brset	0,PortA,L06B1
	brset	0,PortA,L06B4
	brset	0,PortA,L06B7
	brset	0,PortA,L06BA
	brset	0,PortA,L06BD
	brset	0,PortA,L06C0
	brset	0,PortA,L06C3
	brset	0,PortA,L06C6
	brset	0,PortA,L06C9
	brset	0,PortA,L06CC
	brset	0,PortA,L06CF
	brset	0,PortA,L06D2
	brset	0,PortA,L06D5
	brset	0,PortA,L06D8
	brset	0,PortA,L06DB
	brset	0,PortA,L06DE
	brset	0,PortA,L06E1
	brset	0,PortA,L06E4
	brset	0,PortA,L06E7
	brset	0,PortA,L06EA
	brset	0,PortA,L06ED
	brset	0,PortA,L06F0
	brset	0,PortA,L06F3
	brset	0,PortA,L06F6
	brset	0,PortA,L06F9
	brset	0,PortA,L06FC
	brset	0,PortA,L06FF
	brset	0,PortA,L0702
	brset	0,PortA,L0705
	brset	0,PortA,L0708
	brset	0,PortA,L070B
	brset	0,PortA,L070E
	brset	0,PortA,L0711
	brset	0,PortA,L0714
	brset	0,PortA,L0717
	brset	0,PortA,L071A
	brset	0,PortA,L071D
	brset	0,PortA,L0720
	brset	0,PortA,L0723
	brset	0,PortA,L0726
	brset	0,PortA,L0729
	brset	0,PortA,L072C
	brset	0,PortA,L072F
	brset	0,PortA,L0732
	brset	0,PortA,L0735
	brset	0,PortA,L0738
	brset	0,PortA,L073B
	brset	0,PortA,L073E
	brset	0,PortA,L0741
	brset	0,PortA,L0744
	brset	0,PortA,L0747
	brset	0,PortA,L074A
	brset	0,PortA,L074D
	brset	0,PortA,L0750
	brset	0,PortA,L0753
	brset	0,PortA,L0756
	brset	0,PortA,L0759
	brset	0,PortA,L075C
	brset	0,PortA,L075F
	brset	0,PortA,L0762
	brset	0,PortA,L0765
	brset	0,PortA,L0768
	brset	0,PortA,L076B
	brset	0,PortA,L076E
	brset	0,PortA,L0771
	brset	0,PortA,L0774
	brset	0,PortA,L0777
	brset	0,PortA,L077A
	brset	0,PortA,L077D
	brset	0,PortA,L0780
	brset	0,PortA,L0783
	brset	0,PortA,L0786
	brset	0,PortA,L0789
	brset	0,PortA,L078C
	brset	0,PortA,L078F
	brset	0,PortA,L0792
	brset	0,PortA,L0795
	brset	0,PortA,L0798
	brset	0,PortA,L079B
	brset	0,PortA,L079E
	brset	0,PortA,L07A1
	brset	0,PortA,L07A4
	brset	0,PortA,L07A7
	brset	0,PortA,L07AA
	brset	0,PortA,L07AD
	brset	0,PortA,L07B0
	brset	0,PortA,L07B3
	brset	0,PortA,L07B6
	brset	0,PortA,L07B9
	brset	0,PortA,L07BC
	brset	0,PortA,L07BF
	brset	0,PortA,L07C2
	brset	0,PortA,L07C5
	brset	0,PortA,L07C8
	brset	0,PortA,L07CB
	brset	0,PortA,L07CE
	brset	0,PortA,L07D1
	brset	0,PortA,L07D4
	brset	0,PortA,L07D7
	brset	0,PortA,L07DA
	brset	0,PortA,L07DD
	brset	0,PortA,L07E0
	brset	0,PortA,L07E3
	brset	0,PortA,L07E6
	brset	0,PortA,L07E9
	brset	0,PortA,L07EC
	brset	0,PortA,L07EF
	brset	0,PortA,L07F2
	brset	0,PortA,L07F5
	brset	0,PortA,L07F8
	brset	0,PortA,L07FB
	brset	0,PortA,L07FE
	brset	0,PortA,L0001
	brset	0,PortA,L0004
	brset	0,PortA,L0007
	brset	0,PortA,L000A
	brset	0,PortA,L000D
	brset	0,PortA,L0010
	brset	0,PortA,L0013
	brset	0,PortA,L0016
	brset	0,PortA,L0019
	brset	0,PortA,L001C
	brset	0,PortA,L001F
	brset	0,PortA,L0022
	brset	0,PortA,L0025
	brset	0,PortA,L0028
	brset	0,PortA,L002B
	brset	0,PortA,L002E
	brset	0,PortA,L0031
	brset	0,PortA,L0034
	brset	0,PortA,L0037
	brset	0,PortA,L003A
	brset	0,PortA,L003D
	brset	0,PortA,L0040
	brset	0,PortA,L0043
	brset	0,PortA,L0046
	brset	0,PortA,L0049
	brset	0,PortA,L004C
	brset	0,PortA,L004F
	brset	0,PortA,L0052
	brset	0,PortA,L0055
	brset	0,PortA,L0058
	brset	0,PortA,L005B
	brset	0,PortA,L005E
	brset	0,PortA,L0061
	brset	0,PortA,L0064
	brset	0,PortA,L0067
	brset	0,PortA,L006A
	brset	0,PortA,L006D
	brset	0,PortA,L0070
	brset	0,PortA,L0073
	brset	0,PortA,L0076
	brset	0,PortA,L0079
	brset	0,PortA,L007C
	brset	0,PortA,L007F
	brset	0,PortA,L0082
	brset	0,PortA,L0085
	brset	0,PortA,L0088
	brset	0,PortA,L008B
	brset	0,PortA,L008E
	brset	0,PortA,L0091
	brset	0,PortA,L0094
	brset	0,PortA,L0097
	brset	0,PortA,L009A
	brset	0,PortA,L009D
	brset	0,PortA,L00A0
	brset	0,PortA,L00A3
	brset	0,PortA,L00A6
	brset	0,PortA,L00A9
	brset	0,PortA,L00AC
	brset	0,PortA,L00AF
	brset	0,PortA,L00B2
	brset	0,PortA,L00B5
	brset	0,PortA,L00B8
	brset	0,PortA,L00BB
	brset	0,PortA,L00BE
	brset	0,PortA,L00C1
	brset	0,PortA,L00C4
	brset	0,PortA,L00C7
	brset	0,PortA,L00CA
	brset	0,PortA,L00CD
	brset	0,PortA,L00D0
	brset	0,PortA,L00D3
	brset	0,PortA,L00D6
	brset	0,PortA,L00D9
	brset	0,PortA,L00DC
	brset	0,PortA,L00DF
	brset	0,PortA,L00E2
	brset	0,PortA,L00E5
	brset	0,PortA,L00E8
	brset	0,PortA,L00EB
	brset	0,PortA,L00EE
	brset	0,PortA,L00F1
	brset	0,PortA,L00F4
	brset	0,PortA,L00F7
	brset	0,PortA,L00FA
	brset	0,PortA,L00FD
	brset	0,PortA,L0100
	brset	0,PortA,L0103
	brset	0,PortA,L0106
	brset	0,PortA,L0109
	brset	0,PortA,L010C
	brset	0,PortA,L010F
	brset	0,PortA,L0112
	brset	0,PortA,L0115
	brset	0,PortA,L0118
	brset	0,PortA,L011B
	brset	0,PortA,L011E
	brset	0,PortA,L0121
	brset	0,PortA,L0124
	brset	0,PortA,L0127
	brset	0,PortA,L012A
	brset	0,PortA,L012D
	brset	0,PortA,L0130
	brset	0,PortA,L0133
	brset	0,PortA,L0136
	brset	0,PortA,L0139
	brset	0,PortA,L013C
	brset	0,PortA,L013F
	brset	0,PortA,L0142
	brset	0,PortA,L0145
	brset	0,PortA,L0148
	brset	0,PortA,L014B
	brset	0,PortA,L014E
	brset	0,PortA,L0151
	brset	0,PortA,L0154
	brset	0,PortA,L0157
	brset	0,PortA,L015A
	brset	0,PortA,L015D
	brset	0,PortA,L0160
	brset	0,PortA,L0163
	brset	0,PortA,L0166
	brset	0,PortA,L0169
	brset	0,PortA,L016C
	brset	0,PortA,L016F
	brset	0,PortA,L0172
	brset	0,PortA,L0175
	brset	0,PortA,L0178
	brset	0,PortA,L017B
	brset	0,PortA,L017E
	brset	0,PortA,L0181
	brset	0,PortA,L0184
	brset	0,PortA,L0187
	brset	0,PortA,L018A
	brset	0,PortA,L018D
	brset	0,PortA,L0190
	brset	0,PortA,L0193
	brset	0,PortA,L0196
	brset	0,PortA,L0199
	brset	0,PortA,L019C
	brset	0,PortA,L019F
	brset	0,PortA,L01A2
	brset	0,PortA,L01A5
	brset	0,PortA,L01A8
	brset	0,PortA,L01AB
	brset	0,PortA,L01AE
	brset	0,PortA,L01B1
	brset	0,PortA,L01B4
	brset	0,PortA,L01B7
	brset	0,PortA,L01BA
	brset	0,PortA,L01BD
	brset	0,PortA,L01C0
	brset	0,PortA,L01C3
	brset	0,PortA,L01C6
	brset	0,PortA,L01C9
	brset	0,PortA,L01CC
	brset	0,PortA,L01CF
	brset	0,PortA,L01D2
	brset	0,PortA,L01D5
	brset	0,PortA,L01D8
	brset	0,PortA,L01DB
	brset	0,PortA,L01DE
	brset	0,PortA,L01E1
	brset	0,PortA,L01E4
	brset	0,PortA,L01E7
	brset	0,PortA,L01EA
	brset	0,PortA,L01ED
	brset	0,PortA,L01F0
	brset	0,PortA,L01F3
	brset	0,PortA,L01F6
	brset	0,PortA,L01F9
	brset	0,PortA,L01FC
	brset	0,PortA,L01FF
	brset	0,PortA,L0202
	brset	0,PortA,L0205
	brset	0,PortA,L0208
	brset	0,PortA,L020B
	brset	0,PortA,L020E
	brset	0,PortA,L0211
	brset	0,PortA,L0214
	brset	0,PortA,L0217
	brset	0,PortA,L021A
	brset	0,PortA,L021D
	brset	0,PortA,L0220
	brset	0,PortA,L0223
	brset	0,PortA,L0226
	brset	0,PortA,L0229
	brset	0,PortA,L022C
	brset	0,PortA,L022F
	brset	0,PortA,L0232
	brset	0,PortA,L0235
	brset	0,PortA,L0238
	brset	0,PortA,L023B
	brset	0,PortA,L023E
	brset	0,PortA,L0241
	brset	0,PortA,L0244
	brset	0,PortA,L0247
	brset	0,PortA,L024A
	brset	0,PortA,L024D
	brset	0,PortA,L0250
	brset	0,PortA,L0253
	brset	0,PortA,L0256
	brset	0,PortA,L0259
	brset	0,PortA,L025C
	brset	0,PortA,L025F
	brset	0,PortA,L0262
	brset	0,PortA,L0265
	brset	0,PortA,L0268
	brset	0,PortA,L026B
	brset	0,PortA,L026E
	brset	0,PortA,L0271
	brset	0,PortA,L0274
	brset	0,PortA,L0277
	brset	0,PortA,L027A
	brset	0,PortA,L027D
	brset	0,PortA,L0280
	brset	0,PortA,L0283
	brset	0,PortA,L0286
	brset	0,PortA,L0289
	brset	0,PortA,L028C
	brset	0,PortA,L028F
	brset	0,PortA,L0292
	brset	0,PortA,L0295
	brset	0,PortA,L0298
	brset	0,PortA,L029B
	brset	0,PortA,L029E
	brset	0,PortA,L02A1
	brset	0,PortA,L02A4
	brset	0,PortA,L02A7
	brset	0,PortA,L02AA
	brset	0,PortA,L02AD
	brset	0,PortA,L02B0
	brset	0,PortA,L02B3
	brset	0,PortA,L02B6
	brset	0,PortA,L02B9
	brset	0,PortA,L02BC
	brset	0,PortA,L02BF
	brset	0,PortA,L02C2
	brset	0,PortA,L02C5
	brset	0,PortA,L02C8
	brset	0,PortA,L02CB
	brset	0,PortA,L02CE
	brset	0,PortA,L02D1
	brset	0,PortA,L02D4
	brset	0,PortA,L02D7
	brset	0,PortA,L02DA
	brset	0,PortA,L02DD
	brset	0,PortA,L02E0
	brset	0,PortA,L02E3
	brset	0,PortA,L02E6
	brset	0,PortA,L02E9
	brset	0,PortA,L02EC
	brset	0,PortA,L02EF
	brset	0,PortA,L02F2
	brset	0,PortA,L02F5
	brset	0,PortA,L02F8
	brset	0,PortA,L02FB
	brset	0,PortA,L02FE
	brset	0,PortA,L0301
	brset	0,PortA,L0304
	brset	0,PortA,L0307
	brset	0,PortA,L030A
	brset	0,PortA,L030D
	brset	0,PortA,L0310
	brset	0,PortA,L0313
	brset	0,PortA,L0316
	brset	0,PortA,L0319
	brset	0,PortA,L031C
	brset	0,PortA,L031F
	brset	0,PortA,L0322
	brset	0,PortA,L0325
	brset	0,PortA,L0328
	brset	0,PortA,L032B
	brset	0,PortA,L032E
	brset	0,PortA,L0331
	brset	0,PortA,L0334
	brset	0,PortA,L0337
	brset	0,PortA,L033A
	brset	0,PortA,L033D
	brset	0,PortA,L0340
	brset	0,PortA,L0343
	brset	0,PortA,L0346
	brset	0,PortA,L0349
	brset	0,PortA,L034C
	brset	0,PortA,L034F
	brset	0,PortA,L0352
	brset	0,PortA,L0355
	brset	0,PortA,L0358
	brset	0,PortA,L035B
	brset	0,PortA,L035E
	brset	0,PortA,L0361
	brset	0,PortA,L0364
	brset	0,PortA,L0367
	brset	0,PortA,L036A
	brset	0,PortA,L036D
	brset	0,PortA,L0370
	brset	0,PortA,L0373
	brset	0,PortA,L0376
	brset	0,PortA,L0379
	brset	0,PortA,L037C
	brset	0,PortA,L037F
	brset	0,PortA,L0382
	brset	0,PortA,L0385
	brset	0,PortA,L0388
	brset	0,PortA,L038B
	brset	0,PortA,L038E
	brset	0,PortA,L0391
	brset	0,PortA,L0394
	brset	0,PortA,L0397
	brset	0,PortA,L039A
	brset	0,PortA,L039D
	brset	0,PortA,L03A0
	brset	0,PortA,L03A3
	brset	0,PortA,L03A6
	brset	0,PortA,L03A9
	brset	0,PortA,L03AC
	brset	0,PortA,L03AF
	brset	0,PortA,L03B2
	brset	0,PortA,L03B5
	brset	0,PortA,L03B8
	brset	0,PortA,L03BB
	brset	0,PortA,L03BE
	brset	0,PortA,L03C1
	brset	0,PortA,L03C4
	brset	0,PortA,L03C7
	brset	0,PortA,L03CA
	brset	0,PortA,L03CD
	brset	0,PortA,L03D0
	brset	0,PortA,L03D3
	brset	0,PortA,L03D6
	brset	0,PortA,L03D9
	brset	0,PortA,L03DC
	brset	0,PortA,L03DF
	brset	0,PortA,L03E2
	brset	0,PortA,L03E5
	brset	0,PortA,L03E8
	brset	0,PortA,L03EB
	brset	0,PortA,L03EE
	brset	0,PortA,L03F1
	brset	0,PortA,L03F4
	brset	0,PortA,L03F7
	brset	0,PortA,L03FA
	brset	0,PortA,L03FD
	brset	0,PortA,L0400
	brset	0,PortA,L0403
	brset	0,PortA,L0406
	brset	0,PortA,L0409
	brset	0,PortA,L040C
	brset	0,PortA,L040F
	brset	0,PortA,L0412
	brset	0,PortA,L0415
	brset	0,PortA,L0418
	brset	0,PortA,L041B
	brset	0,PortA,L041E
	brset	0,PortA,L0421
	brset	0,PortA,L0424
	brset	0,PortA,L0427
	brset	0,PortA,L042A
	brset	0,PortA,L042D
	brset	0,PortA,L0430
	brset	0,PortA,L0433
	brset	0,PortA,L0436
	brset	0,PortA,L0439
	brset	0,PortA,L043C
	brset	0,PortA,L043F
	brset	0,PortA,L0442
	brset	0,PortA,L0445
	brset	0,PortA,L0448
	brset	0,PortA,L044B
	brset	0,PortA,L044E
	brset	0,PortA,L0451
	brset	0,PortA,L0454
	brset	0,PortA,L0457
	brset	0,PortA,L045A
	brset	0,PortA,L045D
	brset	0,PortA,L0460
	brset	0,PortA,L0463
	brset	0,PortA,L0466
	brset	0,PortA,L0469
	brset	0,PortA,L046C
	brset	0,PortA,L046F
	brset	0,PortA,L0472
	brset	0,PortA,L0475
	brset	0,PortA,L0478
	brset	0,PortA,L047B
	brset	0,PortA,L047E
	brset	0,PortA,L0481
	brset	0,PortA,L0484
	brset	0,PortA,L0487
	brset	0,PortA,L048A
	brset	0,PortA,L048D
	brset	0,PortA,L0490
	brset	0,PortA,L0493
	brset	0,PortA,L0496
	brset	0,PortA,L0499
	brset	0,PortA,L049C
	brset	0,PortA,L049F
	brset	0,PortA,L04A2
	brset	0,PortA,L04A5
	brset	0,PortA,L04A8
	brset	0,PortA,L04AB
	brset	0,PortA,L04AE
	brset	0,PortA,L04B1
	brset	0,PortA,L04B4
	brset	0,PortA,L04B7
	brset	0,PortA,L04BA
	brset	0,PortA,L04BD
	brset	0,PortA,L04C0
	brset	0,PortA,L04C3
	brset	0,PortA,L04C6
	brset	0,PortA,L04C9
	brset	0,PortA,L04CC
	brset	0,PortA,L04CF
	brset	0,PortA,L04D2
	brset	0,PortA,L04D5
	brset	0,PortA,L04D8
	brset	0,PortA,L04DB
	brset	0,PortA,L04DE
	brset	0,PortA,L04E1
	brset	0,PortA,L04E4
	brset	0,PortA,L04E7
	brset	0,PortA,L04EA
	brset	0,PortA,L04ED
	brset	0,PortA,L04F0
	brset	0,PortA,L04F3
	brset	0,PortA,L04F6
	brset	0,PortA,L04F9
	brset	0,PortA,L04FC
	brset	0,PortA,L04FF
	brset	0,PortA,L0502
	brset	0,PortA,L0505
	brset	0,PortA,L0508
	brset	0,PortA,L050B
	brset	0,PortA,L050E
	brset	0,PortA,L0511
	brset	0,PortA,L0514
	brset	0,PortA,L0517
	brset	0,PortA,L051A
	brset	0,PortA,L051D
	brset	0,PortA,L0520
	brset	0,PortA,L0523
	brset	0,PortA,L0526
	brset	0,PortA,L0529
	brset	0,PortA,L052C
	brset	0,PortA,L052F
	brset	0,PortA,L0532
	brset	0,PortA,L0535
	brset	0,PortA,L0538
	brset	0,PortA,L053B
	brset	0,PortA,L053E
	brset	0,PortA,L0541
	brset	0,PortA,L0544
	brset	0,PortA,L0547
	brset	0,PortA,L054A
	brset	0,PortA,L054D
	brset	0,PortA,L0550
	brset	0,PortA,L0553
	brset	0,PortA,L0556
	brset	0,PortA,L0559
	brset	0,PortA,L055C
	brset	0,PortA,L055F
	brset	0,PortA,L0562
	brset	0,PortA,L0565
	brset	0,PortA,L0568
	brset	0,PortA,L056B
	brset	0,PortA,L056E
	brset	0,PortA,L0571
	brset	0,PortA,L0574
	brset	0,PortA,L0577
	brset	0,PortA,L057A
	brset	0,PortA,L057D
	brset	0,PortA,L0580
	brset	0,PortA,L0583
	brset	0,PortA,L0586
	brset	0,PortA,L0589
	brset	0,PortA,L058C
	brset	0,PortA,L058F
	brset	0,PortA,L0592
	brset	0,PortA,L0595
	brset	0,PortA,L0598
	brset	0,PortA,L059B
	brset	0,PortA,L059E
	brset	0,PortA,L05A1
	brset	0,PortA,L05A4
	brset	0,PortA,L05A7
	brset	0,PortA,L05AA
	brset	0,PortA,L05AD
	brset	0,PortA,L05B0
	brset	0,PortA,L05B3
	brset	0,PortA,L05B6
	brset	0,PortA,L05B9
	brset	0,PortA,L05BC
	brset	0,PortA,L05BF
	brset	0,PortA,L05C2
	brset	0,PortA,L05C5
	brset	0,PortA,L05C8
	brset	0,PortA,L05CB
	brset	0,PortA,L05CE
	brset	0,PortA,L05D1
	brset	0,PortA,L05D4
	brset	0,PortA,L05D7
	brset	0,PortA,L05DA
	brset	0,PortA,L05DD
	brset	0,PortA,L05E0
	brset	0,PortA,L05E3
	brset	0,PortA,L05E6
	brset	0,PortA,L05E9
	brset	0,PortA,L05EC
	brset	0,PortA,L05EF
	brset	0,PortA,L05F2
	brset	0,PortA,L05F5
	brset	0,PortA,L05F8
	brset	0,PortA,L05FB
	brset	0,PortA,L05FE
	brset	0,PortA,L0601
	brset	0,PortA,L0604
	brset	0,PortA,L0607
	brset	0,PortA,L060A
	brset	0,PortA,L060D
	brset	0,PortA,L0610
	brset	0,PortA,L0613
	brset	0,PortA,L0616
	brset	0,PortA,L0619
	brset	0,PortA,L061C
	brset	0,PortA,L061F
	brset	0,PortA,L0622
	brset	0,PortA,L0625
	brset	0,PortA,L0628
	brset	0,PortA,L062B
	brset	0,PortA,L062E
	brset	0,PortA,L0631
	brset	0,PortA,L0634
	brset	0,PortA,L0637
	brset	0,PortA,L063A
	brset	0,PortA,L063D
	brset	0,PortA,L0640
	brset	0,PortA,L0643
	brset	0,PortA,L0646
	brset	0,PortA,L0649
	brset	0,PortA,L064C
	brset	0,PortA,L064F
	brset	0,PortA,L0652
	brset	0,PortA,L0655
	brset	0,PortA,L0658
	brset	0,PortA,L065B
	brset	0,PortA,L065E
	brset	0,PortA,L0661
	brset	0,PortA,L0664
	brset	0,PortA,L0667
	brset	0,PortA,L066A
	brset	0,PortA,L066D
	brset	0,PortA,L0670
	brset	0,PortA,L0673
	brset	0,PortA,L0676
	brset	0,PortA,L0679
	brset	0,PortA,L067C
	brset	0,PortA,L067F
	brset	0,PortA,L0682
	brset	0,PortA,L0685
	brset	0,PortA,L0688
	brset	0,PortA,L068B
	brset	0,PortA,L068E
	brset	0,PortA,L0691
	brset	0,PortA,L0694
	brset	0,PortA,L0697
	brset	0,PortA,L069A
	brset	0,PortA,L069D
	brset	0,PortA,L06A0
	brset	0,PortA,L06A3
	brset	0,PortA,L06A6
	brset	0,PortA,L06A9
	brset	0,PortA,L06AC
	brset	0,PortA,L06AF
	brset	0,PortA,L06B2
	brset	0,PortA,L06B5
	brset	0,PortA,L06B8
	brset	0,PortA,L06BB
	brset	0,PortA,L06BE
	brset	0,PortA,L06C1
	brset	0,PortA,L06C4
	brset	0,PortA,L06C7
	brset	0,PortA,L06CA
	brset	0,PortA,L06CD
	brset	0,PortA,L06D0
	brset	0,PortA,L06D3
	brset	0,PortA,L06D6
	brset	0,PortA,L06D9
	brset	0,PortA,L06DC
	brset	0,PortA,L06DF
	brset	0,PortA,L06E2
	brset	0,PortA,L06E5
	brset	0,PortA,L06E8
	brset	0,PortA,L06EB
	brset	0,PortA,L06EE
	brset	0,PortA,L06F1
	brset	0,PortA,L06F4
	brset	0,PortA,L06F7
	brset	0,PortA,L06FA
	brset	0,PortA,L06FD
	brset	0,PortA,L0700
	brset	0,PortA,L0703
	brset	0,PortA,L0706
	brset	0,PortA,L0709
	brset	0,PortA,L070C
	brset	0,PortA,L070F
	brset	0,PortA,L0712
	brset	0,PortA,L0715
	brset	0,PortA,L0718
	brset	0,PortA,L071B
	brset	0,PortA,L071E
	brset	0,PortA,L0721
	brset	0,PortA,L0724
	brset	0,PortA,L0727
	brset	0,PortA,L072A
	brset	0,PortA,L072D
	brset	0,PortA,L0730
	brset	0,PortA,L0733
	brset	0,PortA,L0736
	brset	0,PortA,L0739
	brset	0,PortA,L073C
	brset	0,PortA,L073F
	brset	0,PortA,L0742
	brset	0,PortA,L0745
	brset	0,PortA,L0748
	brset	0,PortA,L074B
	brset	0,PortA,L074E
	brset	0,PortA,L0751
	brset	0,PortA,L0754
	brset	0,PortA,L0757
	brset	0,PortA,L075A
	brset	0,PortA,L075D
	brset	0,PortA,L0760
	brset	0,PortA,L0763
	brset	0,PortA,L0766
	brset	0,PortA,L0769
	brset	0,PortA,L076C
	brset	0,PortA,L076F
	brset	0,PortA,L0772
	brset	0,PortA,L0775
	brset	0,PortA,L0778
	brset	0,PortA,L077B
	brset	0,PortA,L077E
	brset	0,PortA,L0781
	brset	0,PortA,L0784
	brset	0,PortA,L0787
	brset	0,PortA,L078A
	brset	0,PortA,L078D
	brset	0,PortA,L0790
	brset	0,PortA,L0793
	brset	0,PortA,L0796
	brset	0,PortA,L0799
	brset	0,PortA,L079C
	brset	0,PortA,L079F
	brset	0,PortA,L07A2
	brset	0,PortA,L07A5
	brset	0,PortA,L07A8
	brset	0,PortA,L07AB
	brset	0,PortA,L07AE
	brset	0,PortA,L07B1
	brset	0,PortA,L07B4
	brset	0,PortA,L07B7
	brset	0,PortA,L07BA
	brset	0,PortA,L07BD
	brset	0,PortA,L07C0
	brset	0,PortA,L07C3
	brset	0,PortA,L07C6
	brset	0,PortA,L07C9
	brset	0,PortA,L07CC
	brset	0,PortA,L07CF
	brset	0,PortA,L07D2
	brset	0,PortA,L07D5
	brset	0,PortA,L07D8
	brset	0,PortA,L07DB
	brset	0,PortA,L07DE
	brset	0,PortA,L07E1
	brset	0,PortA,L07E4
	brset	0,PortA,L07E7
	brset	0,PortA,L07EA
	brset	0,PortA,L07ED
	brset	0,PortA,L07F0
	brset	0,PortA,L07F3
	brset	0,PortA,L07F6
	brset	0,PortA,L07F9
	brset	0,PortA,L07FC
	brset	0,PortA,L07FF
	brset	0,PortA,L0002
	brset	0,PortA,L0005
	brset	0,PortA,L0008
	brset	0,PortA,L000B
	brset	0,PortA,L000E
	brset	0,PortA,L0011
	brset	0,PortA,L0014
	brset	0,PortA,L0017
	brset	0,PortA,L001A
	brset	0,PortA,L001D
	brset	0,PortA,L0020
	brset	0,PortA,L0023
	brset	0,PortA,L0026
	brset	0,PortA,L0029
	brset	0,PortA,L002C
	brset	0,PortA,L002F
	brset	0,PortA,L0032
	brset	0,PortA,L0035
	brset	0,PortA,L0038
	brset	0,PortA,L003B
	brset	0,PortA,L003E
	brset	0,PortA,L0041
	brset	0,PortA,L0044
	brset	0,PortA,L0047
	brset	0,PortA,L004A
	brset	0,PortA,L004D
	brset	0,PortA,L0050
	brset	0,PortA,L0053
	brset	0,PortA,L0056
	brset	0,PortA,L0059
	brset	0,PortA,L005C
	brset	0,PortA,L005F
	brset	0,PortA,L0062
	brset	0,PortA,L0065
	brset	0,PortA,L0068
	brset	0,PortA,L006B
	brset	0,PortA,L006E
	brset	0,PortA,L0071
	brset	0,PortA,L0074
	brset	0,PortA,L0077
	brset	0,PortA,L007A
	brset	0,PortA,L007D
	brset	0,PortA,L0080
	brset	0,PortA,L0083
	brset	0,PortA,L0086
	brset	0,PortA,L0089
	brset	0,PortA,L008C
	brset	0,PortA,L008F
	brset	0,PortA,L0092
	brset	0,PortA,L0095
	brset	0,PortA,L0098
	brset	0,PortA,L009B
	brset	0,PortA,L009E
	brset	0,PortA,L00A1
	brset	0,PortA,L00A4
	brset	0,PortA,L00A7
	brset	0,PortA,L00AA
	brset	0,PortA,L00AD
	brset	0,PortA,L00B0
	brset	0,PortA,L00B3
	brset	0,PortA,L00B6
	brset	0,PortA,L00B9
	brset	0,PortA,L00BC
	brset	0,PortA,L00BF
	brset	0,PortA,L00C2
	brset	0,PortA,L00C5
	brset	0,PortA,L00C8
	brset	0,PortA,L00CB
	brset	0,PortA,L00CE
	brset	0,PortA,L00D1
	brset	0,PortA,L00D4
	brset	0,PortA,L00D7
	brset	0,PortA,L00DA
	brset	0,PortA,L00DD
	brset	0,PortA,L00E0
	brset	0,PortA,L00E3
	brset	0,PortA,L00E6
	brset	0,PortA,L00E9
	brset	0,PortA,L00EC
	brset	0,PortA,L00EF
	brset	0,PortA,L00F2
	brset	0,PortA,L00F5
	brset	0,PortA,L00F8
	brset	0,PortA,L00FB
	brset	0,PortA,L00FE
	brset	0,PortA,L0101
	brset	0,PortA,L0104
	brset	0,PortA,L0107
	brset	0,PortA,L010A
	brset	0,PortA,L010D
	brset	0,PortA,L0110
	brset	0,PortA,L0113
	brset	0,PortA,L0116
	brset	0,PortA,L0119
	brset	0,PortA,L011C
	brset	0,PortA,L011F
	brset	0,PortA,L0122
	brset	0,PortA,L0125
	brset	0,PortA,L0128
	brset	0,PortA,L012B
	brset	0,PortA,L012E
	brset	0,PortA,L0131
	brset	0,PortA,L0134
	brset	0,PortA,L0137
	brset	0,PortA,L013A
	brset	0,PortA,L013D
	brset	0,PortA,L0140
	brset	0,PortA,L0143
	brset	0,PortA,L0146
	brset	0,PortA,L0149
	brset	0,PortA,L014C
	brset	0,PortA,L014F
	brset	0,PortA,L0152
	brset	0,PortA,L0155
	brset	0,PortA,L0158
	brset	0,PortA,L015B
	brset	0,PortA,L015E
	brset	0,PortA,L0161
	brset	0,PortA,L0164
	brset	0,PortA,L0167
	brset	0,PortA,L016A
	brset	0,PortA,L016D
	brset	0,PortA,L0170
	brset	0,PortA,L0173
	brset	0,PortA,L0176
	brset	0,PortA,L0179
	brset	0,PortA,L017C
	brset	0,PortA,L017F
	brset	0,PortA,L0182
	brset	0,PortA,L0185
	brset	0,PortA,L0188
	brset	0,PortA,L018B
	brset	0,PortA,L018E
	brset	0,PortA,L0191
	brset	0,PortA,L0194
	brset	0,PortA,L0197
	brset	0,PortA,L019A
	brset	0,PortA,L019D
	brset	0,PortA,L01A0
	brset	0,PortA,L01A3
	brset	0,PortA,L01A6
	brset	0,PortA,L01A9
	brset	0,PortA,L01AC
	brset	0,PortA,L01AF
	brset	0,PortA,L01B2
	brset	0,PortA,L01B5
	brset	0,PortA,L01B8
	brset	0,PortA,L01BB
	brset	0,PortA,L01BE
	brset	0,PortA,L01C1
	brset	0,PortA,L01C4
	brset	0,PortA,L01C7
	brset	0,PortA,L01CA
	brset	0,PortA,L01CD
	brset	0,PortA,L01D0
	brset	0,PortA,L01D3
	brset	0,PortA,L01D6
	brset	0,PortA,L01D9
	brset	0,PortA,L01DC
	brset	0,PortA,L01DF
	brset	0,PortA,L01E2
	brset	0,PortA,L01E5
	brset	0,PortA,L01E8
	brset	0,PortA,L01EB
	brset	0,PortA,L01EE
	brset	0,PortA,L01F1
	brset	0,PortA,L01F4
	brset	0,PortA,L01F7
	brset	0,PortA,L01FA
	brset	0,PortA,L01FD
	brset	0,PortA,L0200
	brset	0,PortA,L0203
	brset	0,PortA,L0206
	brset	0,PortA,L0209
	brset	0,PortA,L020C
	brset	0,PortA,L020F
	brset	0,PortA,L0212
	brset	0,PortA,L0215
	brset	0,PortA,L0218
	brset	0,PortA,L021B
	brset	0,PortA,L021E
	brset	0,PortA,L0221
	brset	0,PortA,L0224
	brset	0,PortA,L0227
	brset	0,PortA,L022A
	brset	0,PortA,L022D
	brset	0,PortA,L0230
	brset	0,PortA,L0233
	brset	0,PortA,L0236
	brset	0,PortA,L0239
	brset	0,PortA,L023C
	brset	0,PortA,L023F
	brset	0,PortA,L0242
	brset	0,PortA,L0245
	brset	0,PortA,L0248
	brset	0,PortA,L024B
	brset	0,PortA,L024E
	brset	0,PortA,L0251
	brset	0,PortA,L0254
	brset	0,PortA,L0257
	brset	0,PortA,L025A
	brset	0,PortA,L025D
	brset	0,PortA,L0260
	brset	0,PortA,L0263
	brset	0,PortA,L0266
	brset	0,PortA,L0269
	brset	0,PortA,L026C
	brset	0,PortA,L026F
	brset	0,PortA,L0272
	brset	0,PortA,L0275
	brset	0,PortA,L0278
	brset	0,PortA,L027B
	brset	0,PortA,L027E
	brset	0,PortA,L0281
	brset	0,PortA,L0284
	brset	0,PortA,L0287
	brset	0,PortA,L028A
	brset	0,PortA,L028D
	brset	0,PortA,L0290
	brset	0,PortA,L0293
	brset	0,PortA,L0296
	brset	0,PortA,L0299
	brset	0,PortA,L029C
	brset	0,PortA,L029F
	brset	0,PortA,L02A2
	brset	0,PortA,L02A5
	brset	0,PortA,L02A8
	brset	0,PortA,L02AB
	brset	0,PortA,L02AE
	brset	0,PortA,L02B1
	brset	0,PortA,L02B4
	brset	0,PortA,L02B7
	brset	0,PortA,L02BA
	brset	0,PortA,L02BD
	brset	0,PortA,L02C0
	brset	0,PortA,L02C3
	brset	0,PortA,L02C6
	brset	0,PortA,L02C9
	brset	0,PortA,L02CC
	brset	0,PortA,L02CF
	brset	0,PortA,L02D2
	brset	0,PortA,L02D5
	brset	0,PortA,L02D8
	brset	0,PortA,L02DB
	brset	0,PortA,L02DE
	brset	0,PortA,L02E1
	brset	0,PortA,L02E4
	brset	0,PortA,L02E7
	brset	0,PortA,L02EA
	brset	0,PortA,L02ED
	brset	0,PortA,L02F0
	brset	0,PortA,L02F3
	brset	0,PortA,L02F6
	brset	0,PortA,L02F9
	brset	0,PortA,L02FC
	brset	0,PortA,L02FF
	brset	0,PortA,L0302
	brset	0,PortA,L0305
	brset	0,PortA,L0308
	brset	0,PortA,L030B
	brset	0,PortA,L030E
	brset	0,PortA,L0311
	brset	0,PortA,L0314
	brset	0,PortA,L0317
	brset	0,PortA,L031A
	brset	0,PortA,L031D
	brset	0,PortA,L0320
	brset	0,PortA,L0323
	brset	0,PortA,L0326
	brset	0,PortA,L0329
	brset	0,PortA,L032C
	brset	0,PortA,L032F
	brset	0,PortA,L0332
	brset	0,PortA,L0335
	brset	0,PortA,L0338
	brset	0,PortA,L033B
	brset	0,PortA,L033E
	brset	0,PortA,L0341
	brset	0,PortA,L0344
	brset	0,PortA,L0347
	brset	0,PortA,L034A
	brset	0,PortA,L034D
	brset	0,PortA,L0350
	brset	0,PortA,L0353
	brset	0,PortA,L0356
	brset	0,PortA,L0359
	brset	0,PortA,L035C
	brset	0,PortA,L035F
	brset	0,PortA,L0362
	brset	0,PortA,L0365
	brset	0,PortA,L0368
	brset	0,PortA,L036B
	brset	0,PortA,L036E
	brset	0,PortA,L0371
	brset	0,PortA,L0374
	brset	0,PortA,L0377
	brset	0,PortA,L037A
	brset	0,PortA,L037D
	brset	0,PortA,L0380
	brset	0,PortA,L0383
	brset	0,PortA,L0386
	brset	0,PortA,L0389
	brset	0,PortA,L038C
	brset	0,PortA,L038F
	brset	0,PortA,L0392
	brset	0,PortA,L0395
	brset	0,PortA,L0398
	brset	0,PortA,L039B
	brset	0,PortA,L039E
	brset	0,PortA,L03A1
	brset	0,PortA,L03A4
	brset	0,PortA,L03A7
	brset	0,PortA,L03AA
	brset	0,PortA,L03AD
	brset	0,PortA,L03B0
	brset	0,PortA,L03B3
	brset	0,PortA,L03B6
	brset	0,PortA,L03B9
	brset	0,PortA,L03BC
	brset	0,PortA,L03BF
	brset	0,PortA,L03C2
	brset	0,PortA,L03C5
	brset	0,PortA,L03C8
	brset	0,PortA,L03CB
	brset	0,PortA,L03CE
	brset	0,PortA,L03D1
	brset	0,PortA,L03D4
	brset	0,PortA,L03D7
	brset	0,PortA,L03DA
	brset	0,PortA,L03DD
	brset	0,PortA,L03E0
	brset	0,PortA,L03E3
	brset	0,PortA,L03E6
	brset	0,PortA,L03E9
	brset	0,PortA,L03EC
	brset	0,PortA,L03EF
	brset	0,PortA,L03F2
	brset	0,PortA,L03F5
	brset	0,PortA,L03F8
	brset	0,PortA,L03FB
	brset	0,PortA,L03FE
	brset	0,PortA,L0401
	brset	0,PortA,L0404
	brset	0,PortA,L0407
	brset	0,PortA,L040A
	brset	0,PortA,L040D
	brset	0,PortA,L0410
	brset	0,PortA,L0413
	brset	0,PortA,L0416
	brset	0,PortA,L0419
	brset	0,PortA,L041C
	brset	0,PortA,L041F
	brset	0,PortA,L0422
	brset	0,PortA,L0425
	brset	0,PortA,L0428
	brset	0,PortA,L042B
	brset	0,PortA,L042E
	brset	0,PortA,L0431
	brset	0,PortA,L0434
	brset	0,PortA,L0437
	brset	0,PortA,L043A
	brset	0,PortA,L043D
	brset	0,PortA,L0440
	brset	0,PortA,L0443
	brset	0,PortA,L0446
	brset	0,PortA,L0449
	brset	0,PortA,L044C
	brset	0,PortA,L044F
	brset	0,PortA,L0452
	brset	0,PortA,L0455
	brset	0,PortA,L0458
	brset	0,PortA,L045B
	brset	0,PortA,L045E
	brset	0,PortA,L0461
	brset	0,PortA,L0464
	brset	0,PortA,L0467
	brset	0,PortA,L046A
	brset	0,PortA,L046D
	brset	0,PortA,L0470
	brset	0,PortA,L0473
	brset	0,PortA,L0476
	brset	0,PortA,L0479
	brset	0,PortA,L047C
	brset	0,PortA,L047F
	brset	0,PortA,L0482
	brset	0,PortA,L0485
	brset	0,PortA,L0488
	brset	0,PortA,L048B
	brset	0,PortA,L048E
	brset	0,PortA,L0491
	brset	0,PortA,L0494
	brset	0,PortA,L0497
	brset	0,PortA,L049A
	brset	0,PortA,L049D
	brset	0,PortA,L04A0
	brset	0,PortA,L04A3
	brset	0,PortA,L04A6
	brset	0,PortA,L04A9
	brset	0,PortA,L04AC
	brset	0,PortA,L04AF
	brset	0,PortA,L04B2
	brset	0,PortA,L04B5
	brset	0,PortA,L04B8
	brset	0,PortA,L04BB
	brset	0,PortA,L04BE
	brset	0,PortA,L04C1
	brset	0,PortA,L04C4
	brset	0,PortA,L04C7
	brset	0,PortA,L04CA
	brset	0,PortA,L04CD
	brset	0,PortA,L04D0
	brset	0,PortA,L04D3
	brset	0,PortA,L04D6
	brset	0,PortA,L04D9
	brset	0,PortA,L04DC
	brset	0,PortA,L04DF
	brset	0,PortA,L04E2
	brset	0,PortA,L04E5
	brset	0,PortA,L04E8
	brset	0,PortA,L04EB
	brset	0,PortA,L04EE
	brset	0,PortA,L04F1
	brset	0,PortA,L04F4
	brset	0,PortA,L04F7
	brset	0,PortA,L04FA
	brset	0,PortA,L04FD
	brset	0,PortA,L0500
	brset	0,PortA,L0503
	brset	0,PortA,L0506
	brset	0,PortA,L0509
	brset	0,PortA,L050C
	brset	0,PortA,L050F
	brset	0,PortA,L0512
	brset	0,PortA,L0515
	brset	0,PortA,L0518
	brset	0,PortA,L051B
	brset	0,PortA,L051E
	brset	0,PortA,L0521
	brset	0,PortA,L0524
	brset	0,PortA,L0527
	brset	0,PortA,L052A
	brset	0,PortA,L052D
	brset	0,PortA,L0530
	brset	0,PortA,L0533
	brset	0,PortA,L0536
	brset	0,PortA,L0539
	brset	0,PortA,L053C
	brset	0,PortA,L053F
	brset	0,PortA,L0542
	brset	0,PortA,L0545
	brset	0,PortA,L0548
	brset	0,PortA,L054B
	brset	0,PortA,L054E
	brset	0,PortA,L0551
	brset	0,PortA,L0554
	brset	0,PortA,L0557
	brset	0,PortA,L055A
	brset	0,PortA,L055D
	brset	0,PortA,L0560
	brset	0,PortA,L0563
	brset	0,PortA,L0566
	brset	0,PortA,L0569
	brset	0,PortA,L056C
	brset	0,PortA,L056F
	brset	0,PortA,L0572
	brset	0,PortA,L0575
	brset	0,PortA,L0578
	brset	0,PortA,L057B
	brset	0,PortA,L057E
	brset	0,PortA,L0581
	brset	0,PortA,L0584
	brset	0,PortA,L0587
	brset	0,PortA,L058A
	brset	0,PortA,L058D
	brset	0,PortA,L0590
	brset	0,PortA,L0593
	brset	0,PortA,L0596
	brset	0,PortA,L0599
	brset	0,PortA,L059C
	brset	0,PortA,L059F
	brset	0,PortA,L05A2
	brset	0,PortA,L05A5
	brset	0,PortA,L05A8
	brset	0,PortA,L05AB
	brset	0,PortA,L05AE
	brset	0,PortA,L05B1
	brset	0,PortA,L05B4
	brset	0,PortA,L05B7
	brset	0,PortA,L05BA
	brset	0,PortA,L05BD
	brset	0,PortA,L05C0
	brset	0,PortA,L05C3
	brset	0,PortA,L05C6
	brset	0,PortA,L05C9
	brset	0,PortA,L05CC
	brset	0,PortA,L05CF
	brset	0,PortA,L05D2
	brset	0,PortA,L05D5
	brset	0,PortA,L05D8
	brset	0,PortA,L05DB
	brset	0,PortA,L05DE
	brset	0,PortA,L05E1
	brset	0,PortA,L05E4
	brset	0,PortA,L05E7
	brset	0,PortA,L05EA
	brset	0,PortA,L05ED
	brset	0,PortA,L05F0
	brset	0,PortA,L05F3
	brset	0,PortA,L05F6
	brset	0,PortA,L05F9
	brset	0,PortA,L05FC
	brset	0,PortA,L05FF
	brset	0,PortA,L0602
	brset	0,PortA,L0605
	brset	0,PortA,L0608
	brset	0,PortA,L060B
	brset	0,PortA,L060E
	brset	0,PortA,L0611
	brset	0,PortA,L0614
	brset	0,PortA,L0617
	brset	0,PortA,L061A
	brset	0,PortA,L061D
	brset	0,PortA,L0620
	brset	0,PortA,L0623
	brset	0,PortA,L0626
	brset	0,PortA,L0629
	brset	0,PortA,L062C
	brset	0,PortA,L062F
	brset	0,PortA,L0632
	brset	0,PortA,L0635
	brset	0,PortA,L0638
	brset	0,PortA,L063B
	brset	0,PortA,L063E
	brset	0,PortA,L0641
	brset	0,PortA,L0644
	brset	0,PortA,L0647
	brset	0,PortA,L064A
	brset	0,PortA,L064D
	brset	0,PortA,L0650
	brset	0,PortA,L0653
	brset	0,PortA,L0656
	brset	0,PortA,L0659
	brset	0,PortA,L065C
	brset	0,PortA,L065F
	brset	0,PortA,L0662
	brset	0,PortA,L0665
	brset	0,PortA,L0668
	brset	0,PortA,L066B
	brset	0,PortA,L066E
	brset	0,PortA,L0671
	brset	0,PortA,L0674
	brset	0,PortA,L0677
	brset	0,PortA,L067A
	brset	0,PortA,L067D
	brset	0,PortA,L0680
	brset	0,PortA,L0683
	brset	0,PortA,L0686
	brset	0,PortA,L0689
	brset	0,PortA,L068C
	brset	0,PortA,L068F
	brset	0,PortA,L0692
	brset	0,PortA,L0695
	brset	0,PortA,L0698
	brset	0,PortA,L069B
	brset	0,PortA,L069E
	brset	0,PortA,L06A1
	brset	0,PortA,L06A4
	brset	0,PortA,L06A7
	brset	0,PortA,L06AA
	brset	0,PortA,L06AD
	brset	0,PortA,L06B0
	brset	0,PortA,L06B3
	brset	0,PortA,L06B6
	brset	0,PortA,L06B9
	brset	0,PortA,L06BC
	brset	0,PortA,L06BF
	brset	0,PortA,L06C2
	brset	0,PortA,L06C5
	brset	0,PortA,L06C8
	brset	0,PortA,L06CB
	brset	0,PortA,L06CE
	brset	0,PortA,L06D1
	brset	0,PortA,L06D4
	brset	0,PortA,L06D7
	brset	0,PortA,L06DA
	brset	0,PortA,L06DD
	brset	0,PortA,L06E0
	brset	0,PortA,L06E3
	brset	0,PortA,L06E6
	brset	0,PortA,L06E9
	brset	0,PortA,L06EC
	brset	0,PortA,L06EF
	brset	0,PortA,L06F2
	brset	0,PortA,L06F5
	brset	0,PortA,L06F8
	brset	0,PortA,L06FB
	brset	0,PortA,L06FE
	brset	0,PortA,L0701
	brset	0,PortA,L0704
	brset	0,PortA,L0707
	brset	0,PortA,L070A
	brset	0,PortA,L070D
	brset	0,PortA,L0710
	brset	0,PortA,L0713
	brset	0,PortA,L0716
	brset	0,PortA,L0719
	brset	0,PortA,L071C
	brset	0,PortA,L071F
	brset	0,PortA,L0722
	brset	0,PortA,L0725
	brset	0,PortA,L0728
	brset	0,PortA,L072B
	brset	0,PortA,L072E
	brset	0,PortA,L0731
	brset	0,PortA,L0734
	brset	0,PortA,L0737
	brset	0,PortA,L073A
	brset	0,PortA,L073D
	brset	0,PortA,L0740
	brset	0,PortA,L0743
	brset	0,PortA,L0746
	brset	0,PortA,L0749
	brset	0,PortA,L074C
	brset	0,PortA,L074F
	brset	0,PortA,L0752
	brset	0,PortA,L0755
	brset	0,PortA,L0758
	brset	0,PortA,L075B
	brset	0,PortA,L075E
	brset	0,PortA,L0761
	brset	0,PortA,L0764
	brset	0,PortA,L0767
	brset	0,PortA,L076A
	brset	0,PortA,L076D
	brset	0,PortA,L0770
	brset	0,PortA,L0773
	brset	0,PortA,L0776
	brset	0,PortA,L0779
	brset	0,PortA,L077C
	brset	0,PortA,L077F
	brset	0,PortA,L0782
	brset	0,PortA,L0785
	brset	0,PortA,L0788
	brset	0,PortA,L078B
	brset	0,PortA,L078E
	brset	0,PortA,L0791
	brset	0,PortA,L0794
	brset	0,PortA,L0797
	brset	0,PortA,L079A
	brset	0,PortA,L079D
	brset	0,PortA,L07A0
	brset	0,PortA,L07A3
	brset	0,PortA,L07A6
	brset	0,PortA,L07A9
	brset	0,PortA,L07AC
	brset	0,PortA,L07AF
	brset	0,PortA,L07B2
	brset	0,PortA,L07B5
	brset	0,PortA,L07B8
	brset	0,PortA,L07BB
	brset	0,PortA,L07BE
	brset	0,PortA,L07C1
	brset	0,PortA,L07C4
	brset	0,PortA,L07C7
	brset	0,PortA,L07CA
	brset	0,PortA,L07CD
	brset	0,PortA,L07D0
	brset	0,PortA,L07D3
	brset	0,PortA,L07D6
	brset	0,PortA,L07D9
	brset	0,PortA,L07DC
	brset	0,PortA,L07DF
	brset	0,PortA,L07E2
	brset	0,PortA,L07E5
	brset	0,PortA,L07E8
	brset	0,PortA,L07EB
	brset	0,PortA,L07EE
	brset	0,PortA,L07F1
	brset	0,PortA,L07F4
	brset	0,PortA,L07F7
	brset	0,PortA,L07FA
	brset	0,PortA,L07FD
	brset	0,PortA,L0000
	brset	0,PortA,L0003
	brset	0,PortA,L0006
	brset	0,PortA,L0009
	brset	0,PortA,L000C
	brset	0,PortA,L000F
	brset	0,PortA,L0012
	brset	0,PortA,L0015
	brset	0,PortA,L0018
	brset	0,PortA,L001B
	brset	0,PortA,L001E
	brset	0,PortA,L0021
	brset	0,PortA,L0024
	brset	0,PortA,L0027
	brset	0,PortA,L002A
	brset	0,PortA,L002D
	brset	0,PortA,L0030
	brset	0,PortA,L0033
	brset	0,PortA,L0036
	brset	0,PortA,L0039
	brset	0,PortA,L003C
	brset	0,PortA,L003F
	brset	0,PortA,L0042
	brset	0,PortA,L0045
	brset	0,PortA,L0048
	brset	0,PortA,L004B
	brset	0,PortA,L004E
	brset	0,PortA,L0051
	brset	0,PortA,L0054
	brset	0,PortA,L0057
	brset	0,PortA,L005A
	brset	0,PortA,L005D
	brset	0,PortA,L0060
	brset	0,PortA,L0063
	brset	0,PortA,L0066
	brset	0,PortA,L0069
	brset	0,PortA,L006C
	brset	0,PortA,L006F
	brset	0,PortA,L0072
	brset	0,PortA,L0075
	brset	0,PortA,L0078
	brset	0,PortA,L007B
	brset	0,PortA,L007E
	brset	0,PortA,L0081
	brset	0,PortA,L0084
	brset	0,PortA,L0087
	brset	0,PortA,L008A
	brset	0,PortA,L008D
	brset	0,PortA,L0090
	brset	0,PortA,L0093
	brset	0,PortA,L0096
	brset	0,PortA,L0099
	brset	0,PortA,L009C
	brset	0,PortA,L009F
	brset	0,PortA,L00A2
	brset	0,PortA,L00A5
	brset	0,PortA,L00A8
	brset	0,PortA,L00AB
	brset	0,PortA,L00AE
	brset	0,PortA,L00B1
	brset	0,PortA,L00B4
	brset	0,PortA,L00B7
	brset	0,PortA,L00BA
	brset	0,PortA,L00BD
	brset	0,PortA,L00C0
	brset	0,PortA,L00C3
	brset	0,PortA,L00C6
	brset	0,PortA,L00C9
	brset	0,PortA,L00CC
	brset	0,PortA,L00CF
	brset	0,PortA,L00D2
	brset	0,PortA,L00D5
	brset	0,PortA,L00D8
	brset	0,PortA,L00DB
	brset	0,PortA,L00DE
	brset	0,PortA,L00E1
	brset	0,PortA,L00E4
	brset	0,PortA,L00E7
	brset	0,PortA,L00EA
	brset	0,PortA,L00ED
	brset	0,PortA,L00F0
	brset	0,PortA,L00F3
	brset	0,PortA,L00F6
	brset	0,PortA,L00F9
	brset	0,PortA,L00FC
	brset	0,PortA,L00FF
	brset	0,PortA,L0102
	brset	0,PortA,L0105
	brset	0,PortA,L0108
	brset	0,PortA,L010B
	brset	0,PortA,L010E
	brset	0,PortA,L0111
	brset	0,PortA,L0114
	brset	0,PortA,L0117
	brset	0,PortA,L011A
	brset	0,PortA,L011D
	brset	0,PortA,L0120
	brset	0,PortA,L0123
	brset	0,PortA,L0126
	brset	0,PortA,L0129
	brset	0,PortA,L012C
	brset	0,PortA,L012F
	brset	0,PortA,L0132
	brset	0,PortA,L0135
	brset	0,PortA,L0138
	brset	0,PortA,L013B
	brset	0,PortA,L013E
	brset	0,PortA,L0141
	brset	0,PortA,L0144
	brset	0,PortA,L0147
	brset	0,PortA,L014A
	brset	0,PortA,L014D
	brset	0,PortA,L0150
	brset	0,PortA,L0153
	brset	0,PortA,L0156
	brset	0,PortA,L0159
	brset	0,PortA,L015C
	brset	0,PortA,L015F
	brset	0,PortA,L0162
	brset	0,PortA,L0165
	brset	0,PortA,L0168
	brset	0,PortA,L016B
	brset	0,PortA,L016E
	brset	0,PortA,L0171
	brset	0,PortA,L0174
	brset	0,PortA,L0177
	brset	0,PortA,L017A
	brset	0,PortA,L017D
	brset	0,PortA,L0180
	brset	0,PortA,L0183
	brset	0,PortA,L0186
	brset	0,PortA,L0189
	brset	0,PortA,L018C
	brset	0,PortA,L018F
	brset	0,PortA,L0192
	brset	0,PortA,L0195
	brset	0,PortA,L0198
	brset	0,PortA,L019B
	brset	0,PortA,L019E
	brset	0,PortA,L01A1
	brset	0,PortA,L01A4
	brset	0,PortA,L01A7
	brset	0,PortA,L01AA
	brset	0,PortA,L01AD
	brset	0,PortA,L01B0
	brset	0,PortA,L01B3
	brset	0,PortA,L01B6
	brset	0,PortA,L01B9
	brset	0,PortA,L01BC
	brset	0,PortA,L01BF
	brset	0,PortA,L01C2
	brset	0,PortA,L01C5
	brset	0,PortA,L01C8
	brset	0,PortA,L01CB
	brset	0,PortA,L01CE
	brset	0,PortA,L01D1
	brset	0,PortA,L01D4
	brset	0,PortA,L01D7
	brset	0,PortA,L01DA
	brset	0,PortA,L01DD
	brset	0,PortA,L01E0
	brset	0,PortA,L01E3
	brset	0,PortA,L01E6
	brset	0,PortA,L01E9
	brset	0,PortA,L01EC
	brset	0,PortA,L01EF
	brset	0,PortA,L01F2
	brset	0,PortA,L01F5
	brset	0,PortA,L01F8
	brset	0,PortA,L01FB
	brset	0,PortA,L01FE
	brset	0,PortA,L0201
	brset	0,PortA,L0204
	brset	0,PortA,L0207
X7207:
	brset	0,PortA,L020A
	brset	0,PortA,L020D
	brset	0,PortA,L0210
	brset	0,PortA,L0213
	brset	0,PortA,L0216
	brset	0,PortA,L0219
	brset	0,PortA,L021C
	brset	0,PortA,L021F
	brset	0,PortA,L0222
	brset	0,PortA,L0225
	brset	0,PortA,L0228
	brset	0,PortA,L022B
	brset	0,PortA,L022E
	brset	0,PortA,L0231
	brset	0,PortA,L0234
	brset	0,PortA,L0237
	brset	0,PortA,L023A
	brset	0,PortA,L023D
	brset	0,PortA,L0240
	brset	0,PortA,L0243
	brset	0,PortA,L0246
	brset	0,PortA,L0249
	brset	0,PortA,L024C
	brset	0,PortA,L024F
	brset	0,PortA,L0252
	brset	0,PortA,L0255
	brset	0,PortA,L0258
	brset	0,PortA,L025B
	brset	0,PortA,L025E
	brset	0,PortA,L0261
	brset	0,PortA,L0264
	brset	0,PortA,L0267
	brset	0,PortA,L026A
	brset	0,PortA,L026D
	brset	0,PortA,L0270
	brset	0,PortA,L0273
	brset	0,PortA,L0276
	brset	0,PortA,L0279
	brset	0,PortA,L027C
	brset	0,PortA,L027F
	brset	0,PortA,L0282
	brset	0,PortA,L0285
	brset	0,PortA,L0288
	brset	0,PortA,L028B
	brset	0,PortA,L028E
	brset	0,PortA,L0291
	brset	0,PortA,L0294
	brset	0,PortA,L0297
	brset	0,PortA,L029A
	brset	0,PortA,L029D
	brset	0,PortA,L02A0
	brset	0,PortA,L02A3
	brset	0,PortA,L02A6
	brset	0,PortA,L02A9
	brset	0,PortA,L02AC
	brset	0,PortA,L02AF
	brset	0,PortA,L02B2
	brset	0,PortA,L02B5
	brset	0,PortA,L02B8
	brset	0,PortA,L02BB
	brset	0,PortA,L02BE
	brset	0,PortA,L02C1
	brset	0,PortA,L02C4
	brset	0,PortA,L02C7
	brset	0,PortA,L02CA
	brset	0,PortA,L02CD
	brset	0,PortA,L02D0
	brset	0,PortA,L02D3
	brset	0,PortA,L02D6
	brset	0,PortA,L02D9
	brset	0,PortA,L02DC
	brset	0,PortA,L02DF
	brset	0,PortA,L02E2
	brset	0,PortA,L02E5
	brset	0,PortA,L02E8
	brset	0,PortA,L02EB
	brset	0,PortA,L02EE
	brset	0,PortA,L02F1
	brset	0,PortA,L02F4
	brset	0,PortA,L02F7
	brset	0,PortA,L02FA
	brset	0,PortA,L02FD
	brset	0,PortA,L0300
	brset	0,PortA,L0303
	brset	0,PortA,L0306
	brset	0,PortA,L0309
	brset	0,PortA,L030C
	brset	0,PortA,L030F
	brset	0,PortA,L0312
	brset	0,PortA,L0315
	brset	0,PortA,L0318
	brset	0,PortA,L031B
	brset	0,PortA,L031E
	brset	0,PortA,L0321
	brset	0,PortA,L0324
	brset	0,PortA,L0327
	brset	0,PortA,L032A
	brset	0,PortA,L032D
	brset	0,PortA,L0330
	brset	0,PortA,L0333
	brset	0,PortA,L0336
	brset	0,PortA,L0339
	brset	0,PortA,L033C
	brset	0,PortA,L033F
	brset	0,PortA,L0342
	brset	0,PortA,L0345
	brset	0,PortA,L0348
	brset	0,PortA,L034B
	brset	0,PortA,L034E
	brset	0,PortA,L0351
	brset	0,PortA,L0354
	brset	0,PortA,L0357
	brset	0,PortA,L035A
	brset	0,PortA,L035D
	brset	0,PortA,L0360
	brset	0,PortA,L0363
	brset	0,PortA,L0366
	brset	0,PortA,L0369
	brset	0,PortA,L036C
	brset	0,PortA,L036F
	brset	0,PortA,L0372
	brset	0,PortA,L0375
	brset	0,PortA,L0378
	brset	0,PortA,L037B
	brset	0,PortA,L037E
	brset	0,PortA,L0381
	brset	0,PortA,L0384
	brset	0,PortA,L0387
	brset	0,PortA,L038A
	brset	0,PortA,L038D
	brset	0,PortA,L0390
	brset	0,PortA,L0393
	brset	0,PortA,L0396
	brset	0,PortA,L0399
	brset	0,PortA,L039C
	brset	0,PortA,L039F
	brset	0,PortA,L03A2
	brset	0,PortA,L03A5
	brset	0,PortA,L03A8
	brset	0,PortA,L03AB
	brset	0,PortA,L03AE
	brset	0,PortA,L03B1
	brset	0,PortA,L03B4
	brset	0,PortA,L03B7
	brset	0,PortA,L03BA
	brset	0,PortA,L03BD
	brset	0,PortA,L03C0
	brset	0,PortA,L03C3
	brset	0,PortA,L03C6
	brset	0,PortA,L03C9
	brset	0,PortA,L03CC
	brset	0,PortA,L03CF
	brset	0,PortA,L03D2
	brset	0,PortA,L03D5
	brset	0,PortA,L03D8
	brset	0,PortA,L03DB
	brset	0,PortA,L03DE
	brset	0,PortA,L03E1
	brset	0,PortA,L03E4
	brset	0,PortA,L03E7
	brset	0,PortA,L03EA
	brset	0,PortA,L03ED
	brset	0,PortA,L03F0
	brset	0,PortA,L03F3
	brset	0,PortA,L03F6
	brset	0,PortA,L03F9
	brset	0,PortA,L03FC
	brset	0,PortA,L03FF
	brset	0,PortA,L0402
	brset	0,PortA,L0405
	brset	0,PortA,L0408
	brset	0,PortA,L040B
	brset	0,PortA,L040E
	brset	0,PortA,L0411
	brset	0,PortA,L0414
	brset	0,PortA,L0417
	brset	0,PortA,L041A
	brset	0,PortA,L041D
	brset	0,PortA,L0420
	brset	0,PortA,L0423
	brset	0,PortA,L0426
	brset	0,PortA,L0429
	brset	0,PortA,L042C
	brset	0,PortA,L042F
	brset	0,PortA,L0432
	brset	0,PortA,L0435
	brset	0,PortA,L0438
	brset	0,PortA,L043B
	brset	0,PortA,L043E
	brset	0,PortA,L0441
	brset	0,PortA,L0444
	brset	0,PortA,L0447
	brset	0,PortA,L044A
	brset	0,PortA,L044D
	brset	0,PortA,L0450
	brset	0,PortA,L0453
	brset	0,PortA,L0456
	brset	0,PortA,L0459
	brset	0,PortA,L045C
	brset	0,PortA,L045F
	brset	0,PortA,L0462
	brset	0,PortA,L0465
	brset	0,PortA,L0468
	brset	0,PortA,L046B
	brset	0,PortA,L046E
	brset	0,PortA,L0471
	brset	0,PortA,L0474
	brset	0,PortA,L0477
	brset	0,PortA,L047A
	brset	0,PortA,L047D
	brset	0,PortA,L0480
	brset	0,PortA,L0483
	brset	0,PortA,L0486
	brset	0,PortA,L0489
	brset	0,PortA,L048C
	brset	0,PortA,L048F
	brset	0,PortA,L0492
	brset	0,PortA,L0495
	brset	0,PortA,L0498
	brset	0,PortA,L049B
	brset	0,PortA,L049E
	brset	0,PortA,L04A1
	brset	0,PortA,L04A4
	brset	0,PortA,L04A7
	brset	0,PortA,L04AA
	brset	0,PortA,L04AD
	brset	0,PortA,L04B0
	brset	0,PortA,L04B3
	brset	0,PortA,L04B6
	brset	0,PortA,L04B9
	brset	0,PortA,L04BC
	brset	0,PortA,L04BF
	brset	0,PortA,L04C2
	brset	0,PortA,L04C5
	brset	0,PortA,L04C8
	brset	0,PortA,L04CB
	brset	0,PortA,L04CE
	brset	0,PortA,L04D1
	brset	0,PortA,L04D4
	brset	0,PortA,L04D7
	brset	0,PortA,L04DA
	brset	0,PortA,L04DD
	brset	0,PortA,L04E0
	brset	0,PortA,L04E3
	brset	0,PortA,L04E6
	brset	0,PortA,L04E9
	brset	0,PortA,L04EC
	brset	0,PortA,L04EF
	brset	0,PortA,L04F2
	brset	0,PortA,L04F5
	brset	0,PortA,L04F8
	brset	0,PortA,L04FB
	brset	0,PortA,L04FE
	brset	0,PortA,L0501
	brset	0,PortA,L0504
	brset	0,PortA,L0507
	brset	0,PortA,L050A
	brset	0,PortA,L050D
	brset	0,PortA,L0510
	brset	0,PortA,L0513
	brset	0,PortA,L0516
	brset	0,PortA,L0519
	brset	0,PortA,L051C
	brset	0,PortA,L051F
	brset	0,PortA,L0522
	brset	0,PortA,L0525
	brset	0,PortA,L0528
	brset	0,PortA,L052B
	brset	0,PortA,L052E
	brset	0,PortA,L0531
	brset	0,PortA,L0534
	brset	0,PortA,L0537
	brset	0,PortA,L053A
	brset	0,PortA,L053D
	brset	0,PortA,L0540
	brset	0,PortA,L0543
	brset	0,PortA,L0546
	brset	0,PortA,L0549
	brset	0,PortA,L054C
	brset	0,PortA,L054F
	brset	0,PortA,L0552
	brset	0,PortA,L0555
	brset	0,PortA,L0558
	brset	0,PortA,L055B
	brset	0,PortA,L055E
	brset	0,PortA,L0561
	brset	0,PortA,L0564
	brset	0,PortA,L0567
	brset	0,PortA,L056A
	brset	0,PortA,L056D
	brset	0,PortA,L0570
	brset	0,PortA,L0573
	brset	0,PortA,L0576
	brset	0,PortA,L0579
	brset	0,PortA,L057C
	brset	0,PortA,L057F
	brset	0,PortA,L0582
	brset	0,PortA,L0585
	brset	0,PortA,L0588
	brset	0,PortA,L058B
	brset	0,PortA,L058E
	brset	0,PortA,L0591
	brset	0,PortA,L0594
	brset	0,PortA,L0597
	brset	0,PortA,L059A
	brset	0,PortA,L059D
	brset	0,PortA,L05A0
	brset	0,PortA,L05A3
	brset	0,PortA,L05A6
	brset	0,PortA,L05A9
	brset	0,PortA,L05AC
	brset	0,PortA,L05AF
	brset	0,PortA,L05B2
	brset	0,PortA,L05B5
	brset	0,PortA,L05B8
	brset	0,PortA,L05BB
	brset	0,PortA,L05BE
	brset	0,PortA,L05C1
	brset	0,PortA,L05C4
	brset	0,PortA,L05C7
	brset	0,PortA,L05CA
	brset	0,PortA,L05CD
	brset	0,PortA,L05D0
	brset	0,PortA,L05D3
	brset	0,PortA,L05D6
	brset	0,PortA,L05D9
	brset	0,PortA,L05DC
	brset	0,PortA,L05DF
	brset	0,PortA,L05E2
	brset	0,PortA,L05E5
	brset	0,PortA,L05E8
	brset	0,PortA,L05EB
	brset	0,PortA,L05EE
	brset	0,PortA,L05F1
	brset	0,PortA,L05F4
	brset	0,PortA,L05F7
	brset	0,PortA,L05FA
	brset	0,PortA,L05FD
	brset	0,PortA,L0600
	brset	0,PortA,L0603
	brset	0,PortA,L0606
	brset	0,PortA,L0609
	brset	0,PortA,L060C
	brset	0,PortA,L060F
	brset	0,PortA,L0612
	brset	0,PortA,L0615
	brset	0,PortA,L0618
	brset	0,PortA,L061B
	brset	0,PortA,L061E
	brset	0,PortA,L0621
	brset	0,PortA,L0624
	brset	0,PortA,L0627
	brset	0,PortA,L062A
	brset	0,PortA,L062D
	brset	0,PortA,L0630
	brset	0,PortA,L0633
	brset	0,PortA,L0636
	brset	0,PortA,L0639
	brset	0,PortA,L063C
	brset	0,PortA,L063F
	brset	0,PortA,L0642
	brset	0,PortA,L0645
	brset	0,PortA,L0648
	brset	0,PortA,L064B
	brset	0,PortA,L064E
	brset	0,PortA,L0651
	brset	0,PortA,L0654
	brset	0,PortA,L0657
	brset	0,PortA,L065A
	brset	0,PortA,L065D
	brset	0,PortA,L0660
	brset	0,PortA,L0663
	brset	0,PortA,L0666
	brset	0,PortA,L0669
	brset	0,PortA,L066C
	brset	0,PortA,L066F
	brset	0,PortA,L0672
	brset	0,PortA,L0675
	brset	0,PortA,L0678
	brset	0,PortA,L067B
	brset	0,PortA,L067E
	brset	0,PortA,L0681
	brset	0,PortA,L0684
	brset	0,PortA,L0687
	brset	0,PortA,L068A
	brset	0,PortA,L068D
	brset	0,PortA,L0690
	brset	0,PortA,L0693
	brset	0,PortA,L0696
	brset	0,PortA,L0699
	brset	0,PortA,L069C
	brset	0,PortA,L069F
	brset	0,PortA,L06A2
	brset	0,PortA,L06A5
	brset	0,PortA,L06A8
	brset	0,PortA,L06AB
	brset	0,PortA,L06AE
	brset	0,PortA,L06B1
	brset	0,PortA,L06B4
	brset	0,PortA,L06B7
	brset	0,PortA,L06BA
	brset	0,PortA,L06BD
	brset	0,PortA,L06C0
	brset	0,PortA,L06C3
	brset	0,PortA,L06C6
	brset	0,PortA,L06C9
	brset	0,PortA,L06CC
	brset	0,PortA,L06CF
	brset	0,PortA,L06D2
	brset	0,PortA,L06D5
	brset	0,PortA,L06D8
	brset	0,PortA,L06DB
	brset	0,PortA,L06DE
	brset	0,PortA,L06E1
	brset	0,PortA,L06E4
	brset	0,PortA,L06E7
	brset	0,PortA,L06EA
	brset	0,PortA,L06ED
	brset	0,PortA,L06F0
	brset	0,PortA,L06F3
	brset	0,PortA,L06F6
	brset	0,PortA,L06F9
	brset	0,PortA,L06FC
	brset	0,PortA,L06FF
	brset	0,PortA,L0702
	brset	0,PortA,L0705
	brset	0,PortA,L0708
	brset	0,PortA,L070B
	brset	0,PortA,L070E
	brset	0,PortA,L0711
	brset	0,PortA,L0714
	brset	0,PortA,L0717
	brset	0,PortA,L071A
	brset	0,PortA,L071D
	brset	0,PortA,L0720
	brset	0,PortA,L0723
	brset	0,PortA,L0726
	brset	0,PortA,L0729
	brset	0,PortA,L072C
	brset	0,PortA,L072F
	brset	0,PortA,L0732
	brset	0,PortA,L0735
	brset	0,PortA,L0738
	brset	0,PortA,L073B
	brset	0,PortA,L073E
	brset	0,PortA,L0741
	brset	0,PortA,L0744
	brset	0,PortA,L0747
	brset	0,PortA,L074A
	brset	0,PortA,L074D
	brset	0,PortA,L0750
	brset	0,PortA,L0753
	brset	0,PortA,L0756
	brset	0,PortA,L0759
	brset	0,PortA,L075C
	brset	0,PortA,L075F
	brset	0,PortA,L0762
	brset	0,PortA,L0765
	brset	0,PortA,L0768
	brset	0,PortA,L076B
	brset	0,PortA,L076E
	brset	0,PortA,L0771
	brset	0,PortA,L0774
	brset	0,PortA,L0777
	brset	0,PortA,L077A
	brset	0,PortA,L077D
	brset	0,PortA,L0780
	brset	0,PortA,L0783
	brset	0,PortA,L0786
	brset	0,PortA,L0789
	brset	0,PortA,L078C
	brset	0,PortA,L078F
	brset	0,PortA,L0792
	brset	0,PortA,L0795
	brset	0,PortA,L0798
	brset	0,PortA,L079B
	brset	0,PortA,L079E
	brset	0,PortA,L07A1
	brset	0,PortA,L07A4
	brset	0,PortA,L07A7
	brset	0,PortA,L07AA
	brset	0,PortA,L07AD
	brset	0,PortA,L07B0
	brset	0,PortA,L07B3
	brset	0,PortA,L07B6
	brset	0,PortA,L07B9
	brset	0,PortA,L07BC
	brset	0,PortA,L07BF
	brset	0,PortA,L07C2
	brset	0,PortA,L07C5
	brset	0,PortA,L07C8
	brset	0,PortA,L07CB
	brset	0,PortA,L07CE
	brset	0,PortA,L07D1
	brset	0,PortA,L07D4
	brset	0,PortA,L07D7
	brset	0,PortA,L07DA
	brset	0,PortA,L07DD
	brset	0,PortA,L07E0
	brset	0,PortA,L07E3
	brset	0,PortA,L07E6
	brset	0,PortA,L07E9
	brset	0,PortA,L07EC
	brset	0,PortA,L07EF
	brset	0,PortA,L07F2
	brset	0,PortA,L07F5
	brset	0,PortA,L07F8
	brset	0,PortA,L07FB
	brset	0,PortA,L07FE
	brset	0,PortA,L0001
	brset	0,PortA,L0004
	brset	0,PortA,L0007
	brset	0,PortA,L000A
	brset	0,PortA,L000D
	brset	0,PortA,L0010
	brset	0,PortA,L0013
	brset	0,PortA,L0016
	brset	0,PortA,L0019
	brset	0,PortA,L001C
	brset	0,PortA,L001F
	brset	0,PortA,L0022
	brset	0,PortA,L0025
	brset	0,PortA,L0028
	brset	0,PortA,L002B
	brset	0,PortA,L002E
	brset	0,PortA,L0031
	brset	0,PortA,L0034
	brset	0,PortA,L0037
	brset	0,PortA,L003A
	brset	0,PortA,L003D
	brset	0,PortA,L0040
	brset	0,PortA,L0043
	brset	0,PortA,L0046
	brset	0,PortA,L0049
	brset	0,PortA,L004C
	brset	0,PortA,L004F
	brset	0,PortA,L0052
	brset	0,PortA,L0055
	brset	0,PortA,L0058
	brset	0,PortA,L005B
	brset	0,PortA,L005E
	brset	0,PortA,L0061
	brset	0,PortA,L0064
	brset	0,PortA,L0067
	brset	0,PortA,L006A
	brset	0,PortA,L006D
	brset	0,PortA,L0070
	brset	0,PortA,L0073
	brset	0,PortA,L0076
	brset	0,PortA,L0079
	brset	0,PortA,L007C
	brset	0,PortA,L007F
	brset	0,PortA,L0082
	brset	0,PortA,L0085
	brset	0,PortA,L0088
	brset	0,PortA,L008B
	brset	0,PortA,L008E
	brset	0,PortA,L0091
	brset	0,PortA,L0094
	brset	0,PortA,L0097
	brset	0,PortA,L009A
	brset	0,PortA,L009D
	brset	0,PortA,L00A0
	brset	0,PortA,L00A3
	brset	0,PortA,L00A6
	brset	0,PortA,L00A9
	brset	0,PortA,L00AC
	brset	0,PortA,L00AF
	brset	0,PortA,L00B2
	brset	0,PortA,L00B5
	brset	0,PortA,L00B8
	brset	0,PortA,L00BB
	brset	0,PortA,L00BE
	brset	0,PortA,L00C1
	brset	0,PortA,L00C4
	brset	0,PortA,L00C7
	brset	0,PortA,L00CA
	brset	0,PortA,L00CD
	brset	0,PortA,L00D0
	brset	0,PortA,L00D3
	brset	0,PortA,L00D6
	brset	0,PortA,L00D9
	brset	0,PortA,L00DC
	brset	0,PortA,L00DF
	brset	0,PortA,L00E2
	brset	0,PortA,L00E5
	brset	0,PortA,L00E8
	brset	0,PortA,L00EB
	brset	0,PortA,L00EE
	brset	0,PortA,L00F1
	brset	0,PortA,L00F4
	brset	0,PortA,L00F7
	brset	0,PortA,L00FA
	brset	0,PortA,L00FD
	brset	0,PortA,L0100
	brset	0,PortA,L0103
	brset	0,PortA,L0106
	brset	0,PortA,L0109
	brset	0,PortA,L010C
	brset	0,PortA,L010F
	brset	0,PortA,L0112
	brset	0,PortA,L0115
	brset	0,PortA,L0118
	brset	0,PortA,L011B
	brset	0,PortA,L011E
	brset	0,PortA,L0121
	brset	0,PortA,L0124
	brset	0,PortA,L0127
	brset	0,PortA,L012A
	brset	0,PortA,L012D
	brset	0,PortA,L0130
	brset	0,PortA,L0133
	brset	0,PortA,L0136
	brset	0,PortA,L0139
	brset	0,PortA,L013C
	brset	0,PortA,L013F
	brset	0,PortA,L0142
	brset	0,PortA,L0145
	brset	0,PortA,L0148
	brset	0,PortA,L014B
	brset	0,PortA,L014E
	brset	0,PortA,L0151
	brset	0,PortA,L0154
	brset	0,PortA,L0157
	brset	0,PortA,L015A
	brset	0,PortA,L015D
	brset	0,PortA,L0160
	brset	0,PortA,L0163
	brset	0,PortA,L0166
	brset	0,PortA,L0169
	brset	0,PortA,L016C
	brset	0,PortA,L016F
	brset	0,PortA,L0172
	brset	0,PortA,L0175
	brset	0,PortA,L0178
	brset	0,PortA,L017B
	brset	0,PortA,L017E
	brset	0,PortA,L0181
	brset	0,PortA,L0184
	brset	0,PortA,L0187
	brset	0,PortA,L018A
	brset	0,PortA,L018D
	brset	0,PortA,L0190
	brset	0,PortA,L0193
	brset	0,PortA,L0196
	brset	0,PortA,L0199
	brset	0,PortA,L019C
	brset	0,PortA,L019F
	brset	0,PortA,L01A2
	brset	0,PortA,L01A5
	brset	0,PortA,L01A8
	brset	0,PortA,L01AB
	brset	0,PortA,L01AE
	brset	0,PortA,L01B1
	brset	0,PortA,L01B4
	brset	0,PortA,L01B7
	brset	0,PortA,L01BA
	brset	0,PortA,L01BD
	brset	0,PortA,L01C0
	brset	0,PortA,L01C3
	brset	0,PortA,L01C6
	brset	0,PortA,L01C9
	brset	0,PortA,L01CC
	brset	0,PortA,L01CF
	brset	0,PortA,L01D2
	brset	0,PortA,L01D5
	brset	0,PortA,L01D8
	brset	0,PortA,L01DB
	brset	0,PortA,L01DE
	brset	0,PortA,L01E1
	brset	0,PortA,L01E4
	brset	0,PortA,L01E7
	brset	0,PortA,L01EA
	brset	0,PortA,L01ED
	brset	0,PortA,L01F0
	brset	0,PortA,L01F3
	brset	0,PortA,L01F6
	brset	0,PortA,L01F9
	brset	0,PortA,L01FC
	brset	0,PortA,L01FF
	brset	0,PortA,L0202
	brset	0,PortA,L0205
	brset	0,PortA,L0208
	brset	0,PortA,L020B
	brset	0,PortA,L020E
	brset	0,PortA,L0211
	brset	0,PortA,L0214
	brset	0,PortA,L0217
	brset	0,PortA,L021A
	brset	0,PortA,L021D
	brset	0,PortA,L0220
	brset	0,PortA,L0223
	brset	0,PortA,L0226
	brset	0,PortA,L0229
	brset	0,PortA,L022C
	brset	0,PortA,L022F
	brset	0,PortA,L0232
	brset	0,PortA,L0235
	brset	0,PortA,L0238
	brset	0,PortA,L023B
	brset	0,PortA,L023E
	brset	0,PortA,L0241
	brset	0,PortA,L0244
	brset	0,PortA,L0247
	brset	0,PortA,L024A
	brset	0,PortA,L024D
	brset	0,PortA,L0250
	brset	0,PortA,L0253
	brset	0,PortA,L0256
	brset	0,PortA,L0259
	brset	0,PortA,L025C
	brset	0,PortA,L025F
	brset	0,PortA,L0262
	brset	0,PortA,L0265
	brset	0,PortA,L0268
	brset	0,PortA,L026B
	brset	0,PortA,L026E
	brset	0,PortA,L0271
	brset	0,PortA,L0274
	brset	0,PortA,L0277
	brset	0,PortA,L027A
	brset	0,PortA,L027D
	brset	0,PortA,L0280
	brset	0,PortA,L0283
	brset	0,PortA,L0286
	brset	0,PortA,L0289
	brset	0,PortA,L028C
	brset	0,PortA,L028F
	brset	0,PortA,L0292
	brset	0,PortA,L0295
	brset	0,PortA,L0298
	brset	0,PortA,L029B
	brset	0,PortA,L029E
	brset	0,PortA,L02A1
	brset	0,PortA,L02A4
	brset	0,PortA,L02A7
	brset	0,PortA,L02AA
	brset	0,PortA,L02AD
	brset	0,PortA,L02B0
	brset	0,PortA,L02B3
	brset	0,PortA,L02B6
	brset	0,PortA,L02B9
	brset	0,PortA,L02BC
	brset	0,PortA,L02BF
	brset	0,PortA,L02C2
	brset	0,PortA,L02C5
	brset	0,PortA,L02C8
	brset	0,PortA,L02CB
	brset	0,PortA,L02CE
	brset	0,PortA,L02D1
	brset	0,PortA,L02D4
	brset	0,PortA,L02D7
	brset	0,PortA,L02DA
	brset	0,PortA,L02DD
	brset	0,PortA,L02E0
	brset	0,PortA,L02E3
	brset	0,PortA,L02E6
	brset	0,PortA,L02E9
	brset	0,PortA,L02EC
	brset	0,PortA,L02EF
	brset	0,PortA,L02F2
	brset	0,PortA,L02F5
	brset	0,PortA,L02F8
	brset	0,PortA,L02FB
	brset	0,PortA,L02FE
	brset	0,PortA,L0301
	brset	0,PortA,L0304
	brset	0,PortA,L0307
	brset	0,PortA,L030A
	brset	0,PortA,L030D
	brset	0,PortA,L0310
	brset	0,PortA,L0313
	brset	0,PortA,L0316
	brset	0,PortA,L0319
	brset	0,PortA,L031C
	brset	0,PortA,L031F
	brset	0,PortA,L0322
	brset	0,PortA,L0325
	brset	0,PortA,L0328
	brset	0,PortA,L032B
	brset	0,PortA,L032E
	brset	0,PortA,L0331
	brset	0,PortA,L0334
	brset	0,PortA,L0337
	brset	0,PortA,L033A
	brset	0,PortA,L033D
	brset	0,PortA,L0340
	brset	0,PortA,L0343
	brset	0,PortA,L0346
	brset	0,PortA,L0349
	brset	0,PortA,L034C
	brset	0,PortA,L034F
	brset	0,PortA,L0352
	brset	0,PortA,L0355
	brset	0,PortA,L0358
	brset	0,PortA,L035B
	brset	0,PortA,L035E
	brset	0,PortA,L0361
	brset	0,PortA,L0364
	brset	0,PortA,L0367
	brset	0,PortA,L036A
	brset	0,PortA,L036D
	brset	0,PortA,L0370
	brset	0,PortA,L0373
	brset	0,PortA,L0376
	brset	0,PortA,L0379
	brset	0,PortA,L037C
	brset	0,PortA,L037F
	brset	0,PortA,L0382
	brset	0,PortA,L0385
	brset	0,PortA,L0388
	brset	0,PortA,L038B
	brset	0,PortA,L038E
	brset	0,PortA,L0391
	brset	0,PortA,L0394
	brset	0,PortA,L0397
	brset	0,PortA,L039A
	brset	0,PortA,L039D
	brset	0,PortA,L03A0
	brset	0,PortA,L03A3
	brset	0,PortA,L03A6
	brset	0,PortA,L03A9
	brset	0,PortA,L03AC
	brset	0,PortA,L03AF
	brset	0,PortA,L03B2
	brset	0,PortA,L03B5
	brset	0,PortA,L03B8
	brset	0,PortA,L03BB
	brset	0,PortA,L03BE
	brset	0,PortA,L03C1
	brset	0,PortA,L03C4
	brset	0,PortA,L03C7
	brset	0,PortA,L03CA
	brset	0,PortA,L03CD
	brset	0,PortA,L03D0
	brset	0,PortA,L03D3
	brset	0,PortA,L03D6
	brset	0,PortA,L03D9
	brset	0,PortA,L03DC
	brset	0,PortA,L03DF
	brset	0,PortA,L03E2
	brset	0,PortA,L03E5
	brset	0,PortA,L03E8
	brset	0,PortA,L03EB
	brset	0,PortA,L03EE
	brset	0,PortA,L03F1
	brset	0,PortA,L03F4
	brset	0,PortA,L03F7
	brset	0,PortA,L03FA
	brset	0,PortA,L03FD
	brset	0,PortA,L0400
	brset	0,PortA,L0403
	brset	0,PortA,L0406
	brset	0,PortA,L0409
	brset	0,PortA,L040C
	brset	0,PortA,L040F
	brset	0,PortA,L0412
	brset	0,PortA,L0415
	brset	0,PortA,L0418
	brset	0,PortA,L041B
	brset	0,PortA,L041E
	brset	0,PortA,L0421
	brset	0,PortA,L0424
	brset	0,PortA,L0427
	brset	0,PortA,L042A
	brset	0,PortA,L042D
	brset	0,PortA,L0430
	brset	0,PortA,L0433
	brset	0,PortA,L0436
	brset	0,PortA,L0439
	brset	0,PortA,L043C
	brset	0,PortA,L043F
	brset	0,PortA,L0442
	brset	0,PortA,L0445
	brset	0,PortA,L0448
	brset	0,PortA,L044B
	brset	0,PortA,L044E
	brset	0,PortA,L0451
	brset	0,PortA,L0454
	brset	0,PortA,L0457
	brset	0,PortA,L045A
	brset	0,PortA,L045D
	brset	0,PortA,L0460
	brset	0,PortA,L0463
	brset	0,PortA,L0466
	brset	0,PortA,L0469
	brset	0,PortA,L046C
	brset	0,PortA,L046F
	brset	0,PortA,L0472
	brset	0,PortA,L0475
	brset	0,PortA,L0478
	brset	0,PortA,L047B
	brset	0,PortA,L047E
	brset	0,PortA,L0481
	brset	0,PortA,L0484
	brset	0,PortA,L0487
	brset	0,PortA,L048A
	brset	0,PortA,L048D
	brset	0,PortA,L0490
	brset	0,PortA,L0493
	brset	0,PortA,L0496
	brset	0,PortA,L0499
	brset	0,PortA,L049C
	brset	0,PortA,L049F
	brset	0,PortA,L04A2
	brset	0,PortA,L04A5
	brset	0,PortA,L04A8
	brset	0,PortA,L04AB
	brset	0,PortA,L04AE
	brset	0,PortA,L04B1
	brset	0,PortA,L04B4
	brset	0,PortA,L04B7
	brset	0,PortA,L04BA
	brset	0,PortA,L04BD
	brset	0,PortA,L04C0
	brset	0,PortA,L04C3
	brset	0,PortA,L04C6
	brset	0,PortA,L04C9
	brset	0,PortA,L04CC
	brset	0,PortA,L04CF
	brset	0,PortA,L04D2
	brset	0,PortA,L04D5
	brset	0,PortA,L04D8
	brset	0,PortA,L04DB
	brset	0,PortA,L04DE
	brset	0,PortA,L04E1
	brset	0,PortA,L04E4
	brset	0,PortA,L04E7
	brset	0,PortA,L04EA
	brset	0,PortA,L04ED
	brset	0,PortA,L04F0
	brset	0,PortA,L04F3
	brset	0,PortA,L04F6
	brset	0,PortA,L04F9
	brset	0,PortA,L04FC
	brset	0,PortA,L04FF
	brset	0,PortA,L0502
	brset	0,PortA,L0505
	brset	0,PortA,L0508
	brset	0,PortA,L050B
	brset	0,PortA,L050E
	brset	0,PortA,L0511
	brset	0,PortA,L0514
	brset	0,PortA,L0517
	brset	0,PortA,L051A
	brset	0,PortA,L051D
	brset	0,PortA,L0520
	brset	0,PortA,L0523
	brset	0,PortA,L0526
	brset	0,PortA,L0529
	brset	0,PortA,L052C
	brset	0,PortA,L052F
	brset	0,PortA,L0532
	brset	0,PortA,L0535
	brset	0,PortA,L0538
	brset	0,PortA,L053B
	brset	0,PortA,L053E
	brset	0,PortA,L0541
	brset	0,PortA,L0544
	brset	0,PortA,L0547
	brset	0,PortA,L054A
	brset	0,PortA,L054D
	brset	0,PortA,L0550
	brset	0,PortA,L0553
	brset	0,PortA,L0556
	brset	0,PortA,L0559
	brset	0,PortA,L055C
	brset	0,PortA,L055F
	brset	0,PortA,L0562
	brset	0,PortA,L0565
	brset	0,PortA,L0568
	brset	0,PortA,L056B
	brset	0,PortA,L056E
	brset	0,PortA,L0571
	brset	0,PortA,L0574
	brset	0,PortA,L0577
	brset	0,PortA,L057A
	brset	0,PortA,L057D
	brset	0,PortA,L0580
	brset	0,PortA,L0583
	brset	0,PortA,L0586
	brset	0,PortA,L0589
	brset	0,PortA,L058C
	brset	0,PortA,L058F
	brset	0,PortA,L0592
	brset	0,PortA,L0595
	brset	0,PortA,L0598
	brset	0,PortA,L059B
	brset	0,PortA,L059E
	brset	0,PortA,L05A1
	brset	0,PortA,L05A4
	brset	0,PortA,L05A7
	brset	0,PortA,L05AA
	brset	0,PortA,L05AD
	brset	0,PortA,L05B0
	brset	0,PortA,L05B3
	brset	0,PortA,L05B6
	brset	0,PortA,L05B9
	brset	0,PortA,L05BC
	brset	0,PortA,L05BF
	brset	0,PortA,L05C2
	brset	0,PortA,L05C5
	brset	0,PortA,L05C8
	brset	0,PortA,L05CB
	brset	0,PortA,L05CE
	brset	0,PortA,L05D1
	brset	0,PortA,L05D4
	brset	0,PortA,L05D7
	brset	0,PortA,L05DA
	brset	0,PortA,L05DD
	brset	0,PortA,L05E0
	brset	0,PortA,L05E3
	brset	0,PortA,L05E6
	brset	0,PortA,L05E9
	brset	0,PortA,L05EC
	brset	0,PortA,L05EF
	brset	0,PortA,L05F2
	brset	0,PortA,L05F5
	brset	0,PortA,L05F8
	brset	0,PortA,L05FB
	brset	0,PortA,L05FE
;
	db	$00, $00
