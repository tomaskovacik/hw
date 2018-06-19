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
;	Date:		Tue Jun 19 17:08:11 2018
;
;	CPU:		Motorola 68HC05 (68HC05 family)
;
;
;
	org	$0400
;
L0400:
	rsp
	sei
	bset	6,RAM1_0ba
	bclr	5,RAM1_0ba
	brset	7,Miscell,L0423
L0409:
	jsr	L3648
	bne	L0423
	lda	#$53
	cmp	RAM1_06b
	bne	L0423
	jsr	L20A7
	jsr	L1FE6
	clr	RAM1_06b
	bclr	3,PortB
	bset	3,DDRB
	jmp	L0506
;
L0423:
	jsr	L1FC3
;
	db	$CC
;
L0427:
	brset	2,STACK_0f1,L03F7
	ror	RAM1_076
	lda	SCDR
	jmp	L04B0
;
	db	$B6, $13
;
L0433:
	lda	TCL
	rti
;
	db	$0E, $13, $6A, $07
	db	$13, $4F, $B6, $1F
	db	$AB, $88, $97, $B6
	db	$1E, $A9
;
L0444:
	bclr	1,RAM1_0b7
	bset	7,RAM1_0b6
	bclr	1,RAM1_0bf
	bclr	7,OCH1
	asr	PortD,x
	brset	3,PortD,L0453
;
	db	$02, $02
;
L0453:
	bset	4,RAM1_05d
	bclr	1,PortC
;
	db	$3D
;
L0458:
	com	X0027,x
	brset	1,X003A,L04C0
	dec	RAM1_068
	bne	L0463
	bset	7,RAM1_067
L0463:
	jsr	L3669
	lda	RAM1_068
;
	db	$A5
;
L0469:
	clr	X0026
;
L046B:
	db	$02, $1C
;
L046D:
	asr	RAM1_0a5,x
L046F:
	brclr	1,X0026,L047C
	bset	4,RAM1_067
	jsr	L4B0F
	jsr	L21A2
	lda	RAM1_068
L047C:
	bit	#$0F
	bne	L048B
	bset	5,RAM1_067
L0482:
	brset	2,RAM1_05e,L0489
L0485:
	lda	ACH
	bra	L049A
;
L0489:
	bclr	2,RAM1_05e
;
L048B:
	db	$0D
;
L048C:
	bclr	1,X0022
L048E:
	bset	2,RAM1_05e
	ldx	OCL1
	lda	OCH1
	brclr	0,RAM1_061,L049A
	jsr	L0B8C
L049A:
	sta	OCH1
	stx	OCL1
	bra	L04B0
;
L04A0:
	brclr	7,TSR,L04A8
;
	db	$CD
;
L04A4:
	brn	L04E9
	bra	L04B0
;
L04A8:
	brclr	4,TSR,L04B0
	jsr	L4AF3
	lda	ICL2
L04B0:
	brclr	7,TSR,L04BE
	brset	4,RAM1_05e,L04BE
L04B6:
	bset	4,RAM1_05e
	bclr	1,TCR
	bset	3,RAM1_076
	lda	ICL1
L04BE:
	brclr	4,TSR,L04C3
	bset	7,RAM1_096
L04C3:
	rti
;
L04C4:
	brclr	7,TSR,L04D2
	brset	4,RAM1_05e,L04D2
	bset	4,RAM1_05e
	bclr	1,TCR
L04CE:
	bset	3,RAM1_076
	lda	ICL1
L04D2:
	cli
	rts
;
L04D4:
	lda	#$53
	sta	RAM1_06b
L04D8:
	bset	0,Miscell
	stop
	bra	L04D4
;
L04DD:
	lda	#$28
L04DF:
	deca
	beq	L04E5
L04E2:
	bil	L04DF
	rti
;
L04E5:
	brset	7,RAM1_0ba,L04ED
	brset	6,RAM1_0b9,L04ED
L04EB:
	bset	7,RAM1_061
L04ED:
	bclr	6,RAM1_0ba
	clr	STACK_0d6
L04F1:
	sei
	bclr	4,Miscell
	bclr	5,RAM1_0ba
	bclr	3,RAM1_061
	jsr	L0725
	bset	3,RAM1_061
L04FD:
	bclr	5,PortB
	bclr	5,RAM1_06a
	jsr	L2551
	bset	5,PortB
L0506:
	rsp
	bclr	2,RAM1_05d
L0509:
	brset	1,Miscell,L04D4
	sei
	jsr	L207E
	cli
	brset	0,RAM1_061,L051E
	bclr	7,RAM1_061
	brset	6,RAM1_061,L051B
	bclr	6,RAM1_05f
L051B:
	jmp	L08AD
;
L051E:
	bil	L04ED
	brclr	3,RAM1_061,L04F1
	jsr	L3713
	bclr	3,STACK_0ce
	bclr	6,RAM1_05f
	brset	2,TCR,L052F
	bclr	3,PortB
L052F:
	bset	2,TCR
	bset	4,TCR
L0533:
	bset	0,PortB
	brset	3,RAM1_07f,L0541
	brset	2,RAM1_07f,L0541
	brset	7,RAM1_069,L0541
	jsr	L0B7A
L0541:
	jsr	L1FFF
;
	db	$CD
;
L0545:
	bclr	7,STACK_0f6
	brset	0,RAM1_0a1,L055C
	bclr	2,DDRC
	bclr	3,DDRC
	jsr	L2551
L0551:
	lda	PortC
L0553:
	and	#$0C
	bne	L0560
	bclr	5,RAM1_069
	brset	3,RAM1_08e,L0566
L055C:
	bset	4,RAM1_069
	bra	L0568
;
L0560:
	bset	5,RAM1_069
	bclr	1,RAM1_081
	bclr	3,RAM1_08e
L0566:
	bclr	4,RAM1_069
L0568:
	bset	2,DDRC
	bset	3,DDRC
	cli
	brclr	6,RAM1_0ba,L0573
L0570:
	brset	5,RAM1_061,L057D
L0573:
	jsr	L132A
	bset	5,RAM1_061
	jsr	L0719
	bclr	2,RAM1_09e
L057D:
	brset	6,RAM1_061,L0585
	jsr	L305D
	bset	6,RAM1_061
L0585:
	brset	4,RAM1_061,L0591
	jsr	L2633
	jsr	L1E8B
	jsr	L477E
L0591:
	bset	4,RAM1_061
	brset	2,RAM1_09e,L0599
	jsr	L38BC
L0599:
	jsr	L0719
L059C:
	jsr	L35FA
	jsr	L3A05
	jsr	L0B1D
	clrx
	jsr	L2557
	brclr	3,RAM1_08b,L05BB
	lda	#$0B
	brset	4,RAM1_08b,L05B6
	lda	#$1A
	brclr	1,RAM1_081,L05BB
L05B6:
	jsr	L23F3
	bset	1,STACK_0cb
L05BB:
	clr	RAM1_067
	clr	RAM1_068
	brclr	4,RAM1_0bb,L05C4
	bset	2,RAM1_094
L05C4:
	sei
	bset	4,Miscell
	bset	7,TCR
	cli
	brset	7,RAM1_069,L05D4
	brclr	5,RAM1_0bb,L05D4
	bset	7,RAM1_069
	bset	1,RAM1_05d
L05D4:
	jsr	L0789
	brset	2,RAM1_05d,L05E3
	clra
L05DB:
	brclr	3,PortA,L05E6
	deca
	bne	L05DB
	bclr	4,RAM1_061
L05E3:
	jmp	L0506
;
L05E6:
	bih	L05EB
	jmp	L04E5
;
L05EB:
	jsr	L2223
	jsr	L306C
	jsr	L4B17
	jsr	L13E0
L05F7:
	jsr	L36F2
	jsr	L4639
	jsr	L44A8
	jsr	L4A15
	jsr	L3FBE
	jsr	L47F4
	jsr	L26DD
L060C:
	jsr	L26D0
L060F:
	jsr	L1EB4
	jsr	L3943
	jsr	L3A83
	jsr	L061D
	bra	L05C4
;
L061D:
	brset	3,RAM1_067,L0636
	brset	2,RAM1_067,L0646
	brset	1,RAM1_067,L064D
	brset	0,RAM1_067,L0676
	brset	4,RAM1_067,L064F
	brset	5,RAM1_067,L0660
	brset	6,RAM1_067,L066B
	brset	7,RAM1_067,L0673
L0635:
	rts
;
L0636:
	bclr	3,RAM1_067
	bset	2,RAM1_067
	jsr	L1FA3
	jsr	L3769
	jsr	L265C
	jmp	L38EF
;
L0646:
	db	$15
;
L0647:
	asr	TCR,x
	asr	STACK_0cc,x
	brclr	3,OCL2,L066E
	inc	TCL,x
	asr	STACK_0cd,x
	bne	L0692
	jsr	L1E8C
	jsr	L307B
	jsr	L3BCD
	jmp	L26D1
;
L0660:
	bclr	5,RAM1_067
	jsr	L13CE
	jsr	L3BF2
	jmp	L362E
;
L066B:
	bclr	6,RAM1_067
	jsr	L3A9D
	jmp	L4B50
;
L0673:
	bclr	7,RAM1_067
	rts
;
L0676:
	bclr	0,RAM1_067
	jsr	L47AA
	jsr	L3072
	jsr	L3AF9
	brset	7,RAM1_060,L06AA
	brclr	3,RAM1_08b,L06A4
	brset	3,STACK_0ce,L06A1
	brclr	6,RAM1_05d,L0698
	bclr	1,STACK_0cb
	jsr	L37CB
L0692:
	jsr	L43E8
	jsr	L20DA
L0698:
	jsr	L33FF
L069B:
	jsr	L463B
	jsr	L44A9
L06A1:
	jsr	L27BE
;
L06A4:
	db	$CD, $2C
;
L06A6:
	neg	STACK_0cd,x
	deca
	bset	3,STACK_0cd
	coma
;
	db	$DD, $CD
;
L06AE:
	dec	STACK_0d3
	bclr	6,RAM1_05d
	brclr	7,RAM1_060,L06B8
	jsr	L2C60
L06B8:
	jmp	L0BAC
;
	db	$13, $67, $10, $67
	db	$0F, $5D, $56, $1F
	db	$5D, $B6
;
L06C5:
	ora	XA40F
;
	db	$AE
;
L06C9:
	brclr	1,X0042,L0663
	cpx	#$21
	bcc	L0718
	jsr	L06EB,x						;INFO: index jump
	lda	STACK_0ca
	jsr	L2525
L06D8:
	and	#$03
	ldx	#$03
	mul
	tax
	cpx	#$0C
;
	db	$24
;
L06E1:
	ror	STACK_0dd
	brclr	3,Miscell,L06F3
	ora	X30CC
	bmi	L06C9
L06EB:
	jmp	L0635
;
	db	$CC
;
L06EF:
	bpl	L074D
L06F1:
	jmp	L46D2
;
	db	$CC, $45, $44, $CC
L06F8:
	db	$35, $A9, $CC, $38
;
L06FC:
	asra
L06FD:
	jmp	L2FC9
;
	db	$CC, $06, $35
;
L0703:
	jmp	L4A9D
L0706:
	jmp	L4414
;
	db	$CC, $43, $DE, $CC
	db	$4A, $AB, $CC, $2B
L0711:
	db	$41
;
L0712:
	jmp	L471A
;
	db	$CC, $45, $B7
;
L0718:
	rts
;
L0719:
	jsr	L13E0
L071C:
	jsr	L36F2
	jsr	L13BC
	jmp	L36AE
;
L0725:
	clr	RAM1_066
	lda	RAM1_065
	sta	RAM2_02b0
L072C:
	brclr	4,RAM1_061,L0737
	jsr	L0B7A
	jsr	L4769
L0735:
	bclr	4,RAM1_061
L0737:
	lda	#$0A
	sta	RAM1_050
	bset	2,TCR
	bset	4,TCR
	bih	L0743
	bclr	6,RAM1_0ba
L0743:
	jsr	L253F
	brset	1,PortC,L074B
	bset	4,RAM1_05d
L074B:
	bclr	1,PortC
L074D:
	jsr	L0789
	lda	RAM1_065
	sub	RAM2_02b0
	cmp	#$03
	bcs	L075B
	bset	5,RAM1_060
L075B:
	lda	#$27
	jsr	L24C5
	cmp	#$19
	bcs	L0776
	cmp	#$53
	bhi	L0772
	bclr	6,RAM1_061
	bclr	5,RAM1_061
	bclr	7,RAM1_061
	bclr	6,RAM1_05f
	bra	L0743
;
L0772:
	cmp	#$73
	bcs	L0737
L0776:
	bil	L0737
	dec	RAM1_050
L077A:
	bne	L0743
	rts
;
L077D:
	jsr	L0B7A
;
	db	$CD
;
L0781:
	asra
	rol	STACK_0cd,x
;
	db	$20
;
L0785:
	bclr	5,STACK_0cc
;
L0787:
	db	$05, $06
;
L0789:
	brset	4,RAM1_05d,L0793
	brclr	1,Miscell,L0792
	brclr	1,PortD,L07BB
L0792:
	rts
;
L0793:
	lda	#$06
	brset	1,Miscell,L079A
L0798:
	lda	#$01
L079A:
	add	RAM1_066
	sta	RAM1_066
;
	db	$24
;
L079F:
	bclr	5,RAM1_0a6
	brclr	0,RAM1_0bb,L0009
	sta	RAM1_065
	bcc	L07BB
	brset	7,RAM1_064,L07BB
	inc	RAM1_064
	bpl	L07BB
L07AF:
	brset	2,RAM1_08b,L07BB
	brset	1,RAM1_05f,L07BB
L07B5:
	brclr	0,RAM1_061,L07BB
	jmp	L08A3
;
L07BB:
	bclr	4,RAM1_05d
L07BD:
	brclr	1,DDRC,L07C4
	bclr	1,DDRC
L07C2:
	bra	L07D7
;
L07C4:
	lda	RAM1_062
	brclr	1,PortC,L07CD
	add	#$20
	bra	L07CF
;
L07CD:
	sub	#$20
L07CF:
	bcs	L07D3
	sta	RAM1_062
L07D3:
	bset	1,DDRC
	bset	1,PortC
L07D7:
	clra
	brset	2,PortD,L07DD
	ora	#$01
L07DD:
	brset	0,PortD,L07E2
	ora	#$02
L07E2:
	brclr	7,RAM1_05e,L07E7
	ora	#$04
L07E7:
	brclr	1,PortD,L07EC
	ora	#$10
L07EC:
	tst	RAM1_062
L07EE:
	bpl	L07F2
	ora	#$08
L07F2:
	brclr	6,PortD,L07F7
L07F5:
	ora	#$80
L07F7:
	eor	RAM1_05f
	and	#$9F
L07FB:
	beq	L0068
	sta	RAM1_05b
	eor	RAM1_05f
	sta	RAM1_05f
	brclr	3,RAM1_05f,L000A
	bset	5,RAM1_05f
	bra	L0014
;
	db	$0F, $5F, $02, $1A
	db	$5F, $02, $5F, $02
	db	$1B, $5F, $01, $5B
	db	$0D, $00, $5F, $7C
	db	$0C, $5F, $03, $01
	db	$61, $04, $1D, $5F
	db	$20, $94, $0F, $60
	db	$03, $0A, $5D, $22
	db	$1B, $5D, $02, $5F
	db	$0A, $03, $5B, $1A
	db	$01, $61, $75, $12
	db	$61, $20, $6A, $00
	db	$61, $08, $03, $5B
	db	$0D, $00, $5F, $56
	db	$1A, $5F, $13, $61
	db	$03, $5B, $03, $06
	db	$CE, $4C, $09, $5B
	db	$13, $00, $61, $03
	db	$03, $5F, $0D, $07
	db	$60, $0A, $17, $60
	db	$08, $5F, $02, $10
	db	$60, $02, $0C, $03
	db	$05, $5B, $03, $01
	db	$61, $42, $81, $CD
	db	$1F, $FF, $CD, $1F
	db	$F6, $CD, $47, $7E
	db	$A6, $C8, $B7, $63
	db	$3D, $63, $27, $30
	db	$07, $67, $05, $17
	db	$67, $CD, $47, $AA
	db	$CD, $47, $F4, $CD
	db	$3F, $BE, $0F, $92
	db	$EB, $08, $92, $E8
	db	$10, $61, $1E, $60
	db	$1C, $60, $20, $14
	db	$19, $61, $10, $61
	db	$3F, $93, $03, $5F
	db	$0B, $13, $61, $20
	db	$07
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
	db	$05, $9E, $03, $CD
	db	$38, $9F, $0C, $5F
	db	$03, $CD, $30, $69
	db	$0A, $5F, $03, $CD
	db	$20, $1B, $CD, $07
	db	$89, $0C, $5F, $07
	db	$11, $01, $AE, $02
	db	$CD, $25, $57, $0A
	db	$5F, $0B, $0D, $5F
	db	$21, $0B, $61, $05
	db	$00, $A1, $2D, $20
	db	$19, $CD, $1F, $FF
	db	$0D, $5F, $1D, $17
	db	$00, $16, $04, $CD
	db	$13, $2A, $A6, $89
	db	$B7, $B3, $B6, $C4
	db	$B7, $B7, $1A, $61
	db	$20, $12, $0F, $64
	db	$07, $1D, $5F, $AE
	db	$02, $CD, $25, $57
	db	$1B, $61, $CD, $30
	db	$69, $CD, $13, $7A
	db	$0B, $5F, $2D, $13
	db	$81, $14, $12, $18
	db	$12, $CD, $1F, $F6
	db	$CD, $47, $7E, $CD
	db	$0B, $1D, $18, $61
	db	$10, $80, $A6, $80
	db	$B7, $7D, $B7, $7B
	db	$07, $8E, $02, $AA
	db	$10, $B7, $D5, $1C
	db	$94, $1A, $94, $12
	db	$94, $19, $6B, $1C
	db	$95, $CC, $09, $B7
	db	$15, $12, $0A, $61
	db	$F8, $CD, $30, $69
	db	$07, $60, $29, $04
	db	$5F, $03, $CC, $0A
	db	$5B, $CD, $20, $31
	db	$A6, $FA, $B7, $12
	db	$A6, $64, $B7, $63
	db	$CD, $07, $89, $CD
	db	$3F, $BE, $08, $60
	db	$32, $0A, $5F, $2F
	db	$CD, $22, $23, $0D
	db	$5F, $EE, $3D, $63
	db	$26, $EA, $20, $23
	db	$CD, $1F, $E2, $A6
	db	$5A, $B7, $12, $A6
	db	$FA, $B7, $63, $CD
	db	$07, $89, $CD, $3F
	db	$BE, $08, $60, $0F
	db	$0A, $5F, $0C, $06
	db	$60, $09, $09, $5F
	db	$EA, $3D, $63, $26
	db	$EA, $16, $60, $CC
	db	$05, $06, $A6, $64
	db	$B7, $63, $A6, $1E
	db	$B7, $68, $1D, $67
	db	$13, $01, $A6, $5B
	db	$B7, $A6, $9A, $0D
	db	$5F, $0E, $CD, $13
	db	$E0, $CD, $36, $F2
	db	$CD, $33, $FF, $CD
	db	$30, $6C, $10, $01
	db	$CD, $07, $89, $CD
	db	$3F, $BE, $08, $60
	db	$D2, $2E, $70, $CD
	db	$4B, $17, $CD, $22
	db	$23, $05, $12, $03
	db	$CD, $47, $F4, $07
	db	$67, $D4, $17, $67
	db	$0D, $5F, $11, $CD
	db	$13, $BC, $CD, $36
	db	$AE, $CD, $30, $72
	db	$0B, $67, $05, $1B
	db	$67, $CD, $13, $CE
	db	$05, $12, $32, $0B
	db	$5F, $A5, $CD, $2C
	db	$60, $CD, $0B, $AC
	db	$CD, $47, $AA, $09
	db	$67, $AC, $19, $67
	db	$3A, $A7, $27, $15
	db	$0E, $5F, $9F, $B6
	db	$9A, $A1, $F0, $25
	db	$99, $07, $5F, $9A
	db	$02, $5F, $97, $A6
	db	$02, $B7, $A6, $20
	db	$91, $3A, $A6, $26
	db	$8D, $1B, $5F, $20
	db	$89, $0A, $5F, $68
	db	$01, $A1, $03, $CC
	db	$09, $B7, $0D, $67
	db	$07, $06, $B9, $5C
	db	$3D, $63, $27, $58
	db	$CC, $09, $C7, $14
	db	$12, $18, $12, $CC
	db	$04, $E5, $9B, $19
	db	$0C, $CD, $1F, $E2
	db	$A6, $5A, $B7, $12
	db	$12, $0C, $A6, $14
	db	$B7, $63, $3F, $0B
	db	$3F, $76, $3F, $5E
	db	$3F, $A8, $3F, $A6
	db	$3F, $09, $3F, $0F
	db	$9A, $CD, $07, $89
	db	$A6, $08, $BB, $1A
	db	$B7, $1E, $3F, $1F
	db	$8F, $00, $00, $00
	db	$A6, $27, $B7, $09
	db	$CD, $21, $A2, $0A
	db	$5F, $16, $3D, $63
	db	$26, $1C, $06, $00
	db	$0C, $17, $00, $16
	db	$04, $4F, $4A, $26
	db	$FD, $17, $04, $3F
	db	$6A, $0D, $5F, $03
	db	$CC, $05, $06, $11
	db	$05, $0F, $64, $02
	db	$1D, $61, $0C, $5F
	db	$BF, $2E, $9C, $05
	db	$12, $0C, $3D, $63
	db	$26, $B6, $1A, $01
	db	$17, $00, $16, $04
	db	$20, $9A, $0F, $09
	db	$FD, $3D, $A8, $26
	db	$0B, $07, $A6, $22
	db	$B6, $A4, $BE, $A5
	db	$AD, $3F, $20, $30
	db	$B6, $A8, $B0, $08
	db	$25, $14, $A1, $03
	db	$25, $10, $14, $12
	db	$18, $12, $17, $01
	db	$16, $05, $A6, $30
	db	$B7, $63, $1B, $01
	db	$20, $1A, $B6, $08
	db	$BB, $A5, $B7, $A5
	db	$24, $02, $3C, $A4
	db	$3C, $A6, $B6, $A6
	db	$A5, $3F, $26, $0E
	db	$B6, $A4, $BE, $A5
	db	$AD, $0D, $B7, $A8
	db	$3F, $A5, $3F, $A4
	db	$3F, $A6, $CC, $0A
	db	$75, $59, $49, $59
	db	$49, $59, $49, $81
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
	db	$0B, $7E, $08, $1B
	db	$7E, $0D, $82, $03
	db	$CC, $0C, $E4, $0D
	db	$82, $03, $CC, $0C
	db	$A7, $04, $BE, $03
	db	$06, $7F, $39, $0E
	db	$87, $64, $00, $80
	db	$33, $0A, $7F, $52
	db	$0E, $7F, $55, $0C
	db	$7F, $46, $08, $82
	db	$0E, $0B, $80, $0B
	db	$B6, $88, $AB, $34
	db	$24, $05, $1B, $82
	db	$CC, $0C, $D0, $B6
	db	$7F, $A4, $03, $26
	db	$16, $C6, $02, $66
	db	$2A, $0E, $C6, $02
	db	$65, $A1, $40, $27
	db	$04, $A1, $30, $26
	db	$03, $CC, $0C, $DA
	db	$CC, $0C, $C6, $4A
	db	$26, $13, $AE, $AD
	db	$CD, $37, $C7, $27
	db	$03, $02, $7C, $0C
	db	$0E, $7C, $ED, $02
	db	$7C, $EA, $CC, $0C
	db	$DA, $4A, $26, $06
	db	$00, $BA, $77, $CC
	db	$0C, $DA, $0C, $80
	db	$71, $CC, $0C, $DA
	db	$A6, $80, $B7, $87
	db	$20, $7C, $3A, $8A
	db	$2A, $63, $B6, $87
	db	$A4, $1F, $A1, $1F
	db	$26, $04, $13, $87
	db	$1D, $87, $3C, $87
	db	$0C, $87, $03, $01
	db	$87, $23, $CD, $12
	db	$2E, $27, $05, $0C
	db	$87, $7B, $20, $76
	db	$0B, $7F, $0C, $1F
	db	$7F, $1F, $82, $1D
	db	$82, $3F, $8A, $11
	db	$82, $20, $67, $01
	db	$87, $07, $CD, $0F
	db	$67, $A6, $14, $20
	db	$09, $A6, $FE, $B7
	db	$88, $CD, $0F, $4C
	db	$A6, $50, $B7, $8A
	db	$CC, $0D, $77, $3A
	db	$8A, $26, $1A, $01
	db	$81, $53, $A6, $02
	db	$B7, $8A, $CD, $12
	db	$2E, $27, $2D, $0F
	db	$82, $19, $B8, $82
	db	$B7, $82, $16, $7E
	db	$16, $BC, $CD, $0F
	db	$3F, $81, $0B, $82
	db	$03, $09, $82, $04
	db	$1A, $82, $20, $D4
	db	$0E, $82, $D1, $0E
	db	$82, $04, $CD, $0F
	db	$4C, $81, $CD, $12
	db	$2E, $26, $17, $1B
	db	$82, $0F, $82, $C0
	db	$1D, $82, $19, $80
	db	$0F, $82, $DA, $3F
	db	$8A, $00, $80, $D5
	db	$CD, $0F, $67, $CC
	db	$0B, $EB, $0F, $82
	db	$CD, $A6, $02
;
L0CFB:
	sta	RAM1_08a
	bset	6,RAM1_082
	bra	L0577
;
	db	$03, $81, $48, $04
	db	$82, $5F, $07, $82
	db	$0E, $03, $01, $06
	db	$13, $01, $AE, $04
	db	$20, $4F, $0F, $6B
	db	$50, $20, $46, $04
	db	$BE, $AA, $07, $01
	db	$0C, $17, $01, $AE
	db	$01, $0F, $6B, $4A
	db	$03, $01, $47, $20
	db	$41, $AE, $02, $01
	db	$61, $3E, $0E, $6B
	db	$06, $1E, $6B, $1C
	db	$95, $20, $37, $02
	db	$01, $06, $12, $01
	db	$AE, $01, $20, $2E
	db	$AE, $03, $03, $90
	db	$27, $16, $01, $AE
	db	$06, $20, $23, $00
	db	$61, $0A, $0E, $5F
	db	$14, $06, $5F, $11
	db	$17, $01, $20, $12
	db	$02, $01, $0A, $12
	db	$01, $1F, $6B, $1C
	db	$95, $AE, $04, $20
	db	$09, $01, $02, $02
	db	$16, $01, $AE, $05
	db	$10, $81, $D6, $13
	db	$20, $B7, $8A, $18
	db	$12, $81, $BE, $85
	db	$D6, $12, $D0, $03
	db	$81, $03, $D6, $12
	db	$F0, $B7, $58, $08
	db	$80, $0F, $0C, $82
	db	$09, $0E, $87, $09
	db	$0E, $82, $03, $0B
	db	$82, $03, $CC, $0E
	db	$6D, $CD, $12, $4C
	db	$0E, $87, $1D, $08
	db	$7F, $41, $AE, $A9
	db	$CD, $12, $5B, $0B
	db	$7F, $03, $02, $A1
	db	$09, $0D, $7F, $33
	db	$3D, $58, $27, $12
	db	$3A, $58, $BF, $86
	db	$B6, $57, $20, $0A
	db	$0D, $87, $07, $CB
	db	$13, $27, $24, $02
	db	$A6, $FF, $B1, $58
	db	$22, $02, $B7, $58
	db	$0F, $87, $14, $0C
	db	$87, $11, $B6, $87
	db	$44, $A4, $0F, $97
	db	$B6, $58, $DB, $13
	db	$10, $24, $02, $A6
	db	$FF, $B7, $58, $0C
	db	$81, $0C, $B6, $84
	db	$27, $08, $48, $40
	db	$BB, $58, $25, $04
	db	$4F, $C1, $B6, $58
	db	$07, $81, $04, $A6
	db	$80, $B0, $85, $B7
	db	$58, $04, $BE, $32
	db	$06, $82, $6D, $04
	db	$82, $19, $04, $6B
	db	$03, $03, $6B, $06
	db	$15, $6B, $13, $6B
	db	$1C, $95, $03, $81
	db	$1D, $02, $01, $1A
	db	$08, $82, $17, $16
	db	$82, $20, $51, $AE
	db	$AE, $CD, $37, $C7
	db	$A4, $07, $4A, $48
	db	$48, $CB, $13, $28
	db	$BB, $58, $25, $40
	db	$B7, $58, $0E, $81
	db	$18, $0A, $7F, $15
	db	$0C, $7F, $12, $06
	db	$81, $0F, $AE, $00
	db	$03, $81, $02, $AE
	db	$10, $CD, $12, $79
	db	$43, $A4, $0F, $20
	db	$01, $4F, $B7, $59
	db	$B1, $83, $27, $10
	db	$24, $09, $B6, $83
	db	$4A, $A4, $0F, $B7
	db	$83, $20, $02, $B7
	db	$83, $CD, $0F, $73
	db	$38, $59, $B6, $58
	db	$B0, $59, $24, $01
	db	$4F, $48, $24, $02
	db	$A6, $FF, $B7, $58
	db	$B7, $59, $0C, $82
	db	$0F, $0E, $87, $0C
	db	$B6, $88, $B0, $58
	db	$27, $5E, $46, $A8
	db	$7F, $09, $81, $04
	db	$B6, $58, $20, $41
	db	$AE, $20, $CD, $12
	db	$79, $48, $0A, $82
	db	$02, $AB, $10, $AB
	db	$00, $97, $D6, $12
	db	$B0, $3A, $8A, $2B
	db	$1C, $4D, $2B, $0A
	db	$3D, $89, $2B, $1C
	db	$B1, $89, $22, $0A
	db	$20, $3A, $3D, $89
	db	$2A, $12, $B1, $89
	db	$24, $F6, $97, $B0
	db	$89, $BF, $89, $20
	db	$0E, $4D, $26, $04
	db	$B6, $58, $B0, $88
	db	$DE, $12, $B1, $BF
	db	$8A, $B7, $89, $BB
	db	$88, $18, $82, $B1
	db	$59, $26, $02, $19
	db	$82, $B1, $88, $27
	db	$09, $B7, $88, $CD
	db	$0F, $82, $20, $08
	db	$19, $82, $08, $7E
	db	$F6, $06, $7E, $F3
	db	$B6, $82, $A4, $0C
	db	$97, $01, $80, $03
	db	$00, $61, $02, $B8
	db	$7F, $A4, $0C, $27
	db	$48, $0B, $82, $03
	db	$0F, $82, $42, $5D
	db	$27, $01, $9F, $B8
	db	$82, $B7, $82, $1C
	db	$95, $15, $6B, $13
	db	$6B, $03, $81, $13
	db	$06, $82, $05, $05
	db	$82, $04, $14, $6B
	db	$12, $6B, $11, $81
	db	$A6, $05, $B7, $8A
	db	$1C, $82, $81, $07
	db	$82, $0C, $AE, $AF
	db	$CD, $37, $C7, $46
	db	$24, $09, $14, $6B
	db	$20, $07, $05, $82
	db	$07, $14, $6B, $12
	db	$6B, $16, $01, $81
	db	$00, $61, $02, $17
	db	$01, $81
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
	db	$1F, $82, $16, $7E
	db	$A6, $80, $B7, $50
	db	$A6, $08, $20, $06
	db	$B6, $83, $B7, $50
	db	$A6, $01, $AE, $88
	db	$01, $02, $03, $CD
	db	$11, $B5, $81
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
	db	$A6, $14, $01, $82
	db	$02, $A6, $0C, $40
	db	$BB, $88, $25, $01
	db	$4F, $A1, $30, $24
	db	$02, $A6, $30, $A1
	db	$44, $24, $02, $16
	db	$7E, $B7, $56, $1F
	db	$5B, $AE, $A0, $CD
	db	$10, $A5, $B7, $59
	db	$AE, $A1, $CD, $10
	db	$A5, $B7, $58, $0A
	db	$82, $28, $07, $7E
	db	$25, $17, $7E, $2B
	db	$02, $43, $C1, $AB
	db	$07, $A4, $0F, $B7
	db	$50, $B6, $59, $2B
	db	$07, $43, $A5, $08
	db	$26, $04, $A0, $0D
	db	$AB, $07, $CD, $25
	db	$2C, $BB, $50, $B7
	db	$50, $A6, $03, $CD
	db	$0F, $79, $B6, $58
	db	$26, $0C, $B6, $59
	db	$AB, $08, $B7, $57
	db	$97, $D6, $10, $ED
	db	$20, $15, $AB, $08
	db	$B7, $57, $B6, $59
	db	$2A, $01, $40, $CD
	db	$25, $2C, $BB, $57
	db	$97, $D6, $10, $ED
	db	$0F, $59, $03, $CD
	db	$25, $2C, $CD, $25
	db	$25, $06, $57, $0E
	db	$0E, $5B, $0A, $40
	db	$27, $07, $BB, $56
	db	$25, $0A, $4F, $20
	db	$07, $4F, $BB, $56
	db	$24, $02, $A6, $FF
	db	$B7, $50, $A6, $02
	db	$CD, $0F, $79, $09
	db	$7E, $60, $19, $7E
	db	$A6, $88, $B7, $55
	db	$A6, $14, $B7, $54
	db	$A6, $E0, $AE, $53
	db	$BF, $57, $BE, $57
	db	$7F, $B7, $56, $AE
	db	$A3, $CD, $37, $C7
X105E:
	db	$0D, $8E, $01, $4F
	db	$B8, $56, $A5, $20
	db	$26, $0E, $CD, $37
	db	$C7, $0D, $8E, $01
	db	$4F, $2A, $01, $40
	db	$AB, $10, $AD, $20
	db	$AE, $A2, $CD, $37
	db	$C7, $B8, $56, $A5
	db	$40, $27, $08, $CD
	db	$37, $C7, $2A, $01
	db	$40, $AD, $0D, $3A
	db	$57, $B6, $56, $A0
	db	$20, $2B, $C3, $AE
	db	$55, $CC, $11, $BB
	db	$97, $D6, $11, $91
	db	$BE, $57, $FB, $A1
	db	$1F, $23, $02, $A6
	db	$1F, $F7, $81, $4F
	db	$0A, $82, $09, $0A
	db	$7F, $3F, $0C, $7F
	db	$3C, $06, $81, $39
	db	$CD, $37, $C7, $AB
	db	$06, $2A, $02, $A6
	db	$06, $A3, $A0, $26
	db	$02, $AB, $0D, $03
	db	$81, $02, $AB, $1A
	db	$97, $D6, $11, $5D
	db	$2B, $1F, $03, $81
	db	$1C, $BE, $56, $A3
	db	$44, $24, $16, $3F
	db	$53, $A3, $36, $25
	db	$08, $3C, $53, $A3
	db	$3C, $25, $02, $3C
	db	$53, $B1, $53, $23
	db	$04, $B6, $53, $1E
	db	$5B, $4D, $81, $00
	db	$00, $70, $72, $62
	db	$51, $41, $21, $00
	db	$21, $41, $52, $62
	db	$72, $70, $00, $00
	db	$00, $78, $67, $57
	db	$56, $35, $13, $00
	db	$32, $53, $65, $75
	db	$76, $86, $00, $00
	db	$00, $68, $68, $57
	db	$46, $35, $13, $00
	db	$41, $53, $74, $75
	db	$85, $86, $00, $00
	db	$00, $69, $58, $58
	db	$47, $25, $14, $00
	db	$41, $63, $74, $75
	db	$85, $86, $00, $00
	db	$00, $59, $58, $48
	db	$47, $26, $14, $00
	db	$41, $63, $74, $84
	db	$85, $95, $00, $00
	db	$00, $59, $58, $48
	db	$47, $25, $14, $00
	db	$41, $62, $74, $84
	db	$85, $95, $00, $00
	db	$00, $59, $58, $48
	db	$47, $25, $14, $00
	db	$41, $62, $74, $84
	db	$85, $95, $00, $FA
	db	$FB, $FC, $FD, $FE
	db	$FF, $00, $01, $02
	db	$03, $04, $05, $06
	db	$FB, $FC, $FD, $FD
	db	$FE, $FE, $FF, $00
	db	$01, $01, $02, $03
	db	$03, $FB, $FB, $FC
	db	$FD, $FE, $FF, $00
	db	$01, $01, $02, $02
	db	$03, $03, $FB, $FB
	db	$FC, $FD, $FE, $FF
	db	$00, $01, $01, $02
	db	$02, $03, $03, $00
	db	$01, $02, $03, $04
	db	$05, $06, $07, $08
	db	$09, $0A, $0B, $0C
	db	$0D, $0E, $0F, $00
	db	$01, $02, $03, $04
	db	$05, $06, $07, $08
	db	$09, $0A, $0B, $0C
	db	$0D, $0E, $1F
X11B1:
	db	$38, $39, $3A, $2B
	db	$B7, $51, $BF, $52
	db	$AE, $52, $BF, $5A
	db	$AD, $06, $24, $63
	db	$AD, $02, $24, $5F
	db	$BE, $5A, $AD, $5C
	db	$F6, $AD, $0A, $25
	db	$4C, $5A, $A3, $50
	db	$24, $F6, $98, $20
	db	$44, $99, $49, $25
	db	$04, $AD, $14, $20
	db	$04, $1D, $04, $20
	db	$00, $AD, $05, $48
	db	$26, $F1, $1D, $04
	db	$1F, $04, $0C, $00
	db	$00, $20, $39, $1C
	db	$04, $1D, $00, $81
	db	$AD, $2E, $AD, $DD
	db	$25, $1F, $AD, $2C
	db	$A6, $01, $1D, $04
	db	$1F
X1202:
	db	$04, $0C, $00, $00
	db	$49, $AD, $20, $24
	db	$F4, $F7, $3A, $59
	db	$2B, $07, $AD, $DE
	db	$5A, $1F, $04, $20
	db	$E4, $AD, $CE, $98
	db	$AD, $0D, $AD, $D2
	db	$1F, $04, $AD, $02
	db	$1D, $04, $81, $AD
	db	$F7, $AD, $C7, $1E
	db	$04, $1F, $00, $81
	db	$A6, $03, $0A, $7F
	db	$12, $0E, $7F, $11
	db	$0C, $87, $0E, $4A
	db	$0C, $7F, $08, $01
	db	$7F, $03, $02, $7C
	db	$02, $B6, $7F, $3F
	db	$87, $B8, $82, $A4
	db	$03, $81
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
	db	$B7, $57, $CD, $37
	db	$C7, $48, $48, $AB
	db	$F4, $40, $BB, $57
;
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
	db	$3F, $57, $DB, $12
	db	$88, $25, $05, $3C
	db	$57, $5C, $20, $F6
	db	$B6, $57, $81, $B7
	db	$04, $04, $04, $04
	db	$04, $04, $04, $04
	db	$FF, $00, $00, $00
	db	$00, $00, $00, $8F
	db	$06, $06, $06, $06
	db	$06, $06, $06, $06
	db	$06, $06, $06, $06
	db	$06, $06, $FF, $20
	db	$40, $16, $0A, $02
	db	$0E, $20, $FF, $20
	db	$00, $10, $00, $08
	db	$00, $00, $00, $00
	db	$00, $FE, $03, $FC
	db	$00, $F8, $00, $0C
	db	$00, $06, $00, $02
	db	$00, $00, $00, $00
	db	$00, $FE, $03, $FC
	db	$00, $F8, $00
X12D0:
	db	$9C, $9C, $90, $84
	db	$78, $6C, $64, $5C
	db	$54, $4E, $48, $44
	db	$40, $3C, $38, $34
	db	$30, $2C, $28, $26
	db	$24, $22, $20, $1E
	db	$1C, $1A, $18, $16
	db	$14, $12, $10, $10
X12F0:
	db	$9C, $92, $88, $7E
	db	$74, $6A, $62, $5A
	db	$54, $4E, $48, $44
	db	$40, $3C, $38, $36
	db	$34, $32, $30, $2E
	db	$2C, $2A, $28, $26
	db	$24, $22, $20, $1E
	db	$1C, $1A, $18, $18
	db	$1E, $1C, $1A, $18
	db	$16, $14, $12, $10
	db	$0E, $0C, $0A, $08
	db	$06, $04, $02, $00
X1320:
	db	$0A, $14, $03, $50
	db	$28, $05, $3C, $18
	db	$00, $10
;
L132A:
	brclr	6,RAM1_061,L0338
	brset	6,RAM1_0ba,L0335
	brset	5,RAM1_0ba,L034A
	bra	L0338
;
	db	$0B, $BA, $12, $19
	db	$01, $1D, $BA, $1A
	db	$BA, $3F, $D6, $3F
	db	$C1, $CD, $1E, $26
	db	$10, $BA, $CD, $25
	db	$4E, $18, $01, $AE
	db	$B0, $CD, $37, $C7
	db	$A4, $62, $AA, $80
	db	$09, $B5, $02, $AA
	db	$10, $B7, $B5, $3F
	db	$BF, $CD, $25, $3F
	db	$01, $61, $13, $3F
	db	$BC, $14, $BC, $09
	db	$69, $0C, $02, $5F
	db	$09, $1D, $B5, $B6
	db	$B5, $AE, $B0, $CD
	db	$37, $9B, $18, $BC
	db	$81, $0D, $61, $08
	db	$0C, $BA, $05, $A6
	db	$05, $0B, $BA, $02
	db	$A6, $28, $B7, $63
	db	$1C, $BA, $1A, $BA
	db	$A6, $30, $AE, $01
	db	$CD, $1B, $82, $07
	db	$67, $08, $17, $67
	db	$CD, $13, $BC, $CD
	db	$36, $AE, $CD, $07
	db	$89, $CD, $36, $F2
	db	$CD, $13, $E0, $0D
	db	$BA, $06, $1D, $D6
	db	$3D, $63, $26, $E3
	db	$CD, $36, $F2, $CD
	db	$1E, $26, $1B, $BA
	db	$1D, $BA, $81
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
	db	$01, $61, $04, $1B
	db	$61, $14, $5D, $B6
	db	$BB, $B1, $58, $27
	db	$04, $1C, $CB, $1A
	db	$CB, $81
;
L13FB:
	brclr	4,RAM1_0bc,L0403
	bclr	4,RAM1_0bc
	jmp	L1A4E
;
	db	$0E, $C1, $03, $0C
	db	$C1, $06, $07, $BC
	db	$03, $CC, $18, $FF
	db	$05, $C0, $03, $CC
	db	$1C, $56, $B6, $B3
	db	$26, $07, $CD, $14
	db	$94, $CD, $14, $CB
	db	$81, $2B, $3F, $08
	db	$B3, $19, $A5, $60
	db	$27, $05, $CD, $18
	db	$4C, $20, $02, $3F
	db	$B3, $11, $BA, $0E
	db	$B9, $06, $0D, $BA
	db	$03, $0D, $C1, $02
	db	$10, $BA, $81, $B6
	db	$C1, $A4, $86, $A1
	db	$86, $26, $03, $CD
	db	$1C, $2B, $A6, $B4
	db	$0A, $B6, $11, $A6
	db	$88, $0F, $BA, $DB
	db	$05, $B6, $D8, $03
	db	$B6, $06, $0A, $B3
	db	$03, $01, $B6, $CF
	db	$B7, $B3, $1F, $B3
	db	$15, $BB, $A4, $07
	db	$97, $B6, $B4, $2A
	db	$06, $A4, $7F, $B7
	db	$B4, $B7, $B8, $DE
	db	$19, $89, $DD, $19
	db	$E9, $0E, $B3, $B5
	db	$B6, $B3, $A1, $70
	db	$24, $AD, $17, $BB
	db	$08, $B3, $A8, $B7
	db	$B6, $1B, $BC, $A4
	db	$07, $A1, $07, $26
	db	$9E, $18, $B6, $20
	db	$9A, $B6, $C1, $A5
	db	$C0, $27, $11, $A4
	db	$86, $A1, $86, $26
	db	$29, $1B, $BC, $15
	db	$BB, $CD, $1E, $12
	db	$27, $0B, $15, $BA
	db	$19, $C0, $A6, $97
	db	$AE, $C0, $CD, $1C
	db	$2D, $CD, $1E, $1D
	db	$09, $BF, $0B, $04
	db	$BE, $0C, $02, $BE
	db	$09, $0F, $BF, $06
	db	$1F, $BF, $18, $BF
	db	$16, $BC, $81, $81
	db	$08, $C1, $37, $3A
	db	$C3, $26, $33, $B6
	db	$C1, $A1, $60, $27
	db	$08, $07, $BC, $05
	db	$3C, $C3, $CC, $18
	db	$FF, $0F, $C1, $0F
	db	$1F, $C1, $1D, $C1
	db	$B6, $C1, $A4, $07
	db	$97, $DE, $1C, $C1
	db	$DC, $1C, $C9, $0D
	db	$C1, $0E, $1D, $C1
	db	$B6, $B6, $A4, $07
	db	$97, $DE, $1B, $B7
	db	$DD, $1B, $BF, $C1
	db	$3F, $C1, $81
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
	db	$06, $BA, $2C, $A5
	db	$F0, $27, $2C, $AA
	db	$F0, $20, $2C, $03
	db	$BE, $03, $00, $BE
	db	$15, $A6, $02, $20
	db	$08, $05, $BE, $03
	db	$00, $BE, $0B, $A6
	db	$04, $1E, $BF, $1A
	db	$CB, $16, $BC, $4C
	db	$18, $BA, $A4, $07
	db	$AA, $20, $0D, $B9
	db	$02, $AA, $C0, $AB
	db	$F0, $25, $04, $CD
	db	$1E, $30, $4F, $B7
	db	$BE, $09, $C1, $AB
	db	$CC, $14, $CE
X155D:
	db	$03, $6C, $AB, $00
	db	$CD, $F5, $03, $03
	db	$03, $2F, $03, $06
	db	$B7, $56, $AD, $05
	db	$B6, $56, $CD, $25
	db	$2C, $CD, $24, $41
	db	$C1, $A6, $20, $D7
	db	$02, $88, $5C, $81
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
;
L1599:
	db	$CC, $16, $C2, $CC
	db	$16, $BF, $1C, $BB
	db	$14, $BF, $C1, $02
	db	$73, $25, $02, $15
	db	$BF, $09, $CE, $EF
	db	$5F, $C6, $02, $74
	db	$AD, $BF, $AD, $C1
	db	$C6, $02, $73, $CD
	db	$15, $72, $AD, $B9
	db	$00, $BB, $40, $AD
	db	$B4, $A3, $08, $26
	db	$FA, $20, $38, $03
	db	$5B, $37, $C6, $02
	db	$74, $2B, $13, $B8
	db	$C5, $A4, $1F, $26
	db	$03, $0E, $C5, $0A
	db	$B8, $C5, $B7, $C5
	db	$1A, $C5, $1C, $C5
	db	$1E, $C5, $09, $CE
	db	$1A, $0C, $BB, $07
	db	$5F, $AD, $8A, $A3
	db	$04, $26, $FA, $10
	db	$BB, $AE, $04, $C6
	db	$02, $73, $CD, $15
	db	$69, $C6, $02, $72
	db	$CD, $15, $69, $1C
	db	$CB, $CC, $16, $BF
	db	$BE, $5B, $A3, $08
	db	$27, $0D, $A3, $0B
	db	$26, $F3, $0D, $CE
	db	$03, $CD, $1E, $5C
	db	$C6, $02, $75, $1B
	db	$BA, $1D, $BA, $4D
	db	$2A, $02, $1C, $BA
	db	$17, $BA, $A5, $40
	db	$27, $14, $16, $BA
	db	$A5, $20, $27, $0E
	db	$97, $B6, $B8, $A4
	db	$0F, $AA, $80, $B7
	db	$B4, $A6, $CA, $B7
	db	$B3, $9F, $CD, $25
	db	$25, $B8, $B9, $A4
	db	$07, $20, $65, $19
	db	$BB, $05, $5B, $B9
	db	$AE, $07, $BF, $56
	db	$A6, $07, $B0, $56
	db	$97, $D6, $02, $72
	db	$BE, $56, $D7, $02
	db	$80, $3A, $56, $2A
	db	$EF, $18, $BB, $14
	db	$94, $1A, $BB, $20
	db	$9A, $13, $BB, $A5
	db	$10, $27, $02, $12
	db	$BB, $A4, $87, $2A
	db	$0C, $AA, $10, $0E
	db	$B9, $0E, $19, $BB
	db	$CD, $17, $4C, $20
	db	$05, $0F, $B9, $04
	db	$1F, $BA, $1E, $CB
	db	$CD, $25, $2D, $B8
	db	$B9, $A4, $B8, $20
	db	$1B, $00, $BF, $16
	db	$C6, $02, $71, $A4
	db	$03, $97, $D6, $02
	db	$72, $B7, $56, $A4
	db	$07, $97, $DE, $17
	db	$20, $1F, $BA, $DD
	db	$17, $26, $20, $16
	db	$1A, $CB, $27, $12
	db	$B8, $B9, $B7, $B9
	db	$04, $B8, $0B, $07
	db	$B9, $08, $AE, $B2
	db	$CD, $37, $C7, $CD
	db	$1D, $EE, $1C, $D6
	db	$81, $00, $BF, $E2
	db	$C6, $02, $73, $06
	db	$B6, $04, $A1, $FF
	db	$27, $40, $B7, $B7
	db	$B6, $B6, $A4, $07
	db	$A1, $04, $26, $0B
	db	$CD, $1E, $35, $B8
	db	$C0, $A4, $03, $27
	db	$02, $14, $C0, $C6
	db	$02, $72, $2B, $0A
	db	$0D, $B9, $0E, $19
	db	$BB, $CD, $1E, $28
	db	$20, $05, $0C, $B9
	db	$04, $1C, $B9, $1A
	db	$CB, $0B, $B6, $17
	db	$B6, $B7, $BE, $C2
	db	$5C, $27, $0E, $0F
	db	$C1, $0D, $B1, $C2
	db	$26, $09, $1B, $B6
	db	$20, $05, $16, $BB
	db	$C1, $B7, $C2, $B6
	db	$C3, $A1, $40, $27
	db	$04, $1A, $BB, $1C
	db	$CB, $20, $87, $C2
	db	$27, $44, $44, $00
	db	$26, $0F, $61, $02
	db	$1F, $61, $09, $B6
	db	$0B, $0E, $B6, $4C
	db	$B6, $C1, $A4, $07
	db	$A1, $02, $27, $46
	db	$0A, $BC, $09, $0C
	db	$BC, $06, $B6, $B8
	db	$A4, $70, $26, $04
	db	$AD, $38, $1E, $BB
	db	$0E, $56, $00, $81
	db	$0F, $56, $17, $18
	db	$B8, $04, $B8, $0D
	db	$11, $B8, $A6, $FF
	db	$AE, $BC, $CD, $37
	db	$9B, $5C, $CD, $37
	db	$9B, $A6, $80, $B7
	db	$B3, $81, $CC, $1D
	db	$33, $17, $BF, $0F
	db	$56, $78, $CD, $1C
	db	$25, $14, $7E, $B6
	db	$B8, $B7, $BD, $14
	db	$BB, $1D, $BC, $81
	db	$19, $BB, $0C, $56
	db	$0C, $1D, $BC, $15
	db	$BB, $1D, $B8, $1B
	db	$B8, $19, $B8, $20
	db	$57, $B6, $B8, $0C
	db	$BC, $04, $A5, $70
	db	$26, $50, $A4, $0C
	db	$B7, $BD, $C6, $02
	db	$72, $A0, $06, $27
	db	$09, $2B, $05, $4A
	db	$3C, $BD, $20, $F5
	db	$AB, $07, $CD, $25
	db	$2C, $BB, $BD, $B7
	db	$BD, $05, $B8, $09
	db	$CD, $25, $2D, $B8
	db	$B8, $A4, $08, $20
	db	$0B, $0B, $69, $04
	db	$A5, $01, $26, $12
	db	$B8, $B8, $A4, $03
	db	$27, $10, $0D, $BC
	db	$06, $1D, $B8, $1B
	db	$B8, $19, $B8, $0A
	db	$BC, $A1, $0C, $BC
	db	$AA, $81, $1A, $BB
	db	$B6, $BD, $B7, $B8
	db	$1C, $BC, $15, $BB
	db	$1E, $CB, $81, $0D
	db	$D2, $03, $CC, $17
	db	$4D, $0F, $56, $2A
	db	$15, $C0, $CD, $1D
	db	$EB, $AD, $87, $0A
	db	$B6, $1A, $0D, $BF
	db	$10, $02, $BA, $04
	db	$12, $BA, $16, $BC
	db	$A6, $E3, $08, $C1
	db	$06, $AE, $01, $20
	db	$04, $A6, $60, $AE
	db	$28, $CC, $1C, $2D
	db	$05, $C1, $F6, $1A
	db	$C1, $81, $0B, $B6
	db	$05, $CD, $1D, $33
	db	$20, $1A, $B6, $B6
	db	$A4, $07, $A1, $05
	db	$27, $0B, $A1, $04
	db	$26, $0E, $0D, $B5
	db	$0B, $3F, $C2, $10
	db	$B6, $34, $C2, $26
	db	$03, $CD, $1C, $F4
	db	$1E, $BA, $B6, $B6
	db	$AA, $D0, $A5, $20
	db	$27, $02, $A4, $A7
	db	$B7, $B3, $81, $B6
	db	$B3, $A5, $0F, $27
	db	$72, $A4, $07, $97
	db	$4F, $99, $49, $5A
	db	$2A, $FC, $B7, $56
	db	$AE, $B5, $07, $B3
	db	$02, $AE, $BC, $0D
	db	$B3, $09, $0A, $B3
	db	$04, $43, $F4, $20
	db	$03, $F8, $B1, $FA
	db	$06, $B3, $09, $03
	db	$56, $06, $A5, $02
	db	$27, $02, $AA, $0C
	db	$07, $8E, $0F, $09
	db	$56, $06, $A5, $10
	db	$27, $02, $AA, $08
	db	$A5, $08, $26, $02
	db	$A4, $AF, $F7, $AE
	db	$F3, $06, $B3, $46
	db	$A4, $62, $AE, $B0
	db	$CD, $37, $9B, $1A
	db	$CB, $0A, $56, $06
	db	$0D, $56, $51, $04
	db	$B8, $0C, $B6, $B6
	db	$A4, $17, $A1, $04
	db	$26, $04, $AD, $8C
	db	$20, $4C, $0D, $56
	db	$3F, $AE, $10, $A1
	db	$05, $27, $3E, $0C
	db	$59, $07, $AE, $F1
	db	$0C, $B9, $36, $20
	db	$2F, $18, $C0, $17
	db	$C0, $05
X18CB:
	db	$B8, $11, $16, $C0
	db	$AE, $B2, $CD, $37
	db	$C7, $B7, $B8, $1B
	db	$BB, $CC, $17, $62
	db	$CC, $1A, $4E, $0C
	db	$C1, $14, $CD, $1E
	db	$12, $26, $0F, $A6
	db	$01, $B7, $C3, $B6
	db	$C1, $A1, $95, $27
	db	$05, $A6, $86, $CD
	db	$1C, $2B, $B6, $B3
	db	$A4, $10, $97, $BF
	db	$B3, $16, $BC, $81
	db	$A6, $C8, $0C, $5F
	db	$27, $CD, $1E, $03
	db	$0E, $61, $30, $03
	db	$BA, $02, $A4, $BF
	db	$AA, $08, $AA, $04
	db	$A4, $4E, $0F, $B5
	db	$05, $06, $B5, $02
	db	$A4, $4A, $0D, $CE
	db	$02, $AA, $30, $08
	db	$CE, $03, $07, $CE
	db	$02, $AA, $10, $4C
	db	$A5, $04, $27, $0D
	db	$06, $5D, $03, $07
	db	$BF, $02, $A4, $F3
	db	$0F, $BF, $02, $A4
	db	$FB, $AE, $01, $07
	db	$8E, $06, $AA, $02
	db	$A4, $BB, $AE, $09
	db	$01, $61, $0F, $03
	db	$82, $07, $00, $82
	db	$04, $AA, $80, $20
	db	$05, $09, $69, $02
	db	$AA, $40, $C7, $02
	db	$7C, $9F, $0D, $5F
	db	$02, $AA, $40, $13
	db	$BC, $AA, $80, $09
	db	$BF, $07, $0E, $B5
	db	$04, $12, $BC, $A4
	db	$7F, $C7, $02, $7D
	db	$A6, $20, $05, $B8
	db	$05, $0C, $5F, $02
	db	$A6, $02, $AA, $10
	db	$14, $B5, $97, $17
	db	$BC, $A6, $0A, $CC
	db	$1A, $21, $7B, $78
	db	$00, $5B, $D9, $BE
	db	$CD, $F2, $17, $5D
	db	$B6, $B8, $A4, $74
	db	$A1, $60, $27, $3C
	db	$AE, $02, $A1, $10
	db	$26, $04, $16, $BF
	db	$20, $2E, $AE, $83
	db	$A1, $50, $27, $28
	db	$5F, $05, $B8, $05
	db	$07, $B8, $07, $20
	db	$03, $03, $B8, $02
	db	$AE, $04, $A4, $70
	db	$A1, $20, $27, $0E
	db	$04, $B8, $0A, $5C
	db	$A1, $30, $27, $06
	db	$5C, $A1, $40, $27
	db	$01, $81, $58, $58
	db	$99, $59, $99, $59
	db	$A6, $18, $20, $4A
	db	$B6, $88, $44, $B7
	db	$56, $B6, $83, $48
	db	$BB, $56, $AE, $70
	db	$CD, $37, $86, $CC
	db	$17, $6F, $07, $B3
	db	$A5, $3F, $B6, $0D
	db	$B3, $0F, $0B, $B3
	db	$06, $AE, $09, $3F
	db	$B3, $20, $24, $AE
	db	$EA, $BF, $B3, $20
	db	$19, $1B, $BC, $1D
	db	$BC, $16, $94, $CD
	db	$1D, $9B, $AA, $80
	db	$06, $B5, $04, $43
	db	$B4, $56, $C1, $BA
	db	$56, $BE, $57, $CD
	db	$37, $9B, $CD, $1D
	db	$D2, $AE, $89, $CD
	db	$1D, $AF, $B7, $50
	db	$BF, $51, $0F, $D6
	db	$0D, $CD, $07, $89
	db	$07, $67, $F7, $17
	db	$67, $CD, $36, $AE
	db	$20, $F0, $B6, $50
	db	$BE, $51, $C7, $02
	db	$7A, $CF, $02, $7B
	db	$1E, $D6, $3F, $D9
	db	$81, $07, $B3, $07
	db	$0E, $BA, $82, $AE
	db	$0A, $20, $85
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
;
	db	$CC, $1B, $2A, $17
	db	$BF, $1B, $BB, $19
	db	$BB, $07, $B3, $16
	db	$AE, $B1, $CD, $37
	db	$C7, $0B, $B6, $07
	db	$A5, $70, $26, $05
	db	$CC, $1D, $4E, $AA
	db	$70, $B7, $B8, $04
	db	$B8, $00, $1F, $BF
	db	$B6, $B8, $A4, $70
	db	$A1, $70, $26, $03
	db	$CD, $1D, $73, $CD
	db	$1D, $9B, $10, $56
	db	$B4, $56, $16, $B5
	db	$26, $04, $17, $B5
	db	$19, $B5, $16, $BC
	db	$13, $BA, $12, $BF
	db	$10, $BF, $A6, $40
	db	$AE, $0C, $0D, $5F
	db	$02, $AE, $01, $CD
	db	$1E, $26, $CC, $1C
	db	$2D, $04, $B8, $05
	db	$12, $B8, $11, $B8
	db	$C1, $16, $B8, $20
	db	$DD, $0A, $B3, $79
	db	$07, $BF, $04, $10
	db	$B3, $12, $B3, $0C
	db	$B3, $0C, $09, $B3
	db	$46, $03, $BA, $40
	db	$13, $BA, $16, $BC
	db	$20, $3A, $0D, $B3
	db	$08, $09, $B3, $05
	db	$19, $B3, $1D, $BF
	db	$C1, $1C, $BF, $1D
	db	$B3, $B6, $B6, $A4
	db	$07, $A1, $06, $26
	db	$0B, $AE, $B1, $CD
	db	$37, $C7, $B7, $B8
	db	$1F, $BF, $20, $15
	db	$A1, $04, $26, $11
	db	$08, $B3, $0E, $B6
	db	$B6, $B8, $B3, $A5
	db	$08, $27, $06, $CD
	db	$1A, $A7, $CC, $1A
	db	$19, $09, $B3, $03
	db	$1D, $BF, $81, $0E
	db	$BF, $8C, $06, $BF
	db	$89, $1E, $BF, $CD
	db	$1A, $8D, $A6, $48
	db	$20, $82, $CC, $1A
	db	$A7, $07, $B3, $05
	db	$1E, $BF, $CC, $1A
	db	$9F, $0D, $B9, $E2
	db	$CD, $1E, $2A, $A6
	db	$48, $5F, $CC, $1A
	db	$21, $1D, $BF, $08
	db	$B3, $0B, $0A, $B6
	db	$E1, $AD, $2A, $A6
	db	$FF, $B7, $C2, $20
	db	$D0, $B6, $BD, $B8
	db	$B8, $A4, $07, $26
	db	$04, $B6, $BD, $B7
	db	$B8, $3F, $C3, $CD
	db	$1E, $1D, $B6, $C1
	db	$A1, $95, $26, $07
	db	$3F, $C1, $16, $BC
	db	$CC, $1D, $D2, $CD
	db	$17, $62, $CC, $1A
	db	$83, $B6, $B8, $B7
	db	$BD, $BE, $C1, $CC
	db	$1D, $E1, $A6, $64
	db	$C7, $02, $7C, $A6
	db	$19, $1D, $B8, $1B
	db	$B8, $19, $B8, $1A
	db	$BC, $16, $B5, $17
	db	$BB, $01, $B6, $06
	db	$02, $B6, $03, $04
	db	$B6, $02, $15, $BA
	db	$05, $C0, $03, $15
	db	$C0, $C1, $3F, $BB
	db	$3F, $C5, $CD, $1E
	db	$26, $1E, $BA, $1E
	db	$CB, $1D, $BC, $06
	db	$C0, $02, $19, $C0
	db	$17, $C0, $1E, $B5
	db	$20, $84, $A8, $11
	db	$43, $43, $75, $44
	db	$00, $1B, $CD, $1D
	db	$2D, $AE, $C7, $06
	db	$8E, $03, $0B, $69
	db	$02, $AE, $E7, $1E
	db	$BF, $20, $AB, $BE
	db	$B7, $4F, $C7, $02
	db	$7C, $A6, $11, $20
	db	$B4, $06, $C1, $19
	db	$AE, $50, $10, $5B
	db	$C1, $11, $5B, $A6
	db	$C1, $AD, $45, $AE
	db	$86, $07, $B6, $02
	db	$AE, $06, $A6, $18
	db	$01, $5B, $A5, $20
	db	$8C, $A6, $40, $AE
	db	$02, $AD, $31, $CD
	db	$1D, $73, $CC, $1C
	db	$A0, $81, $0A, $C1
	db	$19, $1E, $BF, $CD
	db	$1D, $2D, $AE, $A0
	db	$04, $C2, $07, $A6
	db	$6C, $02, $C2, $04
	db	$AE, $20, $A6, $64
	db	$CC, $1B, $7D, $CC
	db	$1C, $BA, $0A, $B6
	db	$FA, $CD, $1E, $1D
	db	$A6, $92, $AE, $10
	db	$20, $02, $AE, $C8
	db	$B7, $C1, $BF, $C3
	db	$CC, $14, $30, $06
	db	$C1, $BF, $0A, $C1
	db	$E5, $A6, $C4, $AE
	db	$64, $0A, $B6, $04
	db	$A6, $D3, $AE, $FF
	db	$AD, $E6, $1B, $B5
	db	$06, $CE, $0A, $AE
	db	$AC, $CD, $37, $C7
	db	$46, $24, $02, $1A
	db	$B5, $CD, $1E, $35
	db	$B8, $C0, $A4, $03
	db	$B8, $C0, $B7, $C0
	db	$B6, $5B, $5F, $CC
	db	$1B, $7D, $A6, $60
	db	$0B, $C1, $30, $AE
	db	$02, $0E, $B9, $05
	db	$0E, $BA, $B9, $1A
	db	$BB, $03, $BA, $07
	db	$13, $BA, $0D, $B5
	db	$02, $16, $BC, $07
	db	$5D, $06, $17, $5D
	db	$A6, $82, $B7, $B3
	db	$A6, $C0, $06, $BB
	db	$9D, $CD, $1D, $D2
	db	$08, $BF, $04, $AE
	db	$2D, $20, $24, $A6
	db	$C7, $20, $8F, $AE
	db	$1E, $AD, $8D, $CD
	db	$1D, $AF, $BE, $B7
	db	$CF, $02, $7D, $27
	db	$08, $0F, $61, $05
	db	$AE, $29, $A6, $1A
	db	$C1, $AE, $09, $CC
	db	$1B, $8E, $CD, $17
	db	$74, $AE, $23, $A6
	db	$95, $CC, $1C, $2D
	db	$6A, $6F, $36, $9C
	db	$5E, $47, $00, $16
	db	$A6, $86, $04, $CE
	db	$50, $0E, $B9, $4D
	db	$CD, $1D, $F8, $27
	db	$08, $A6, $85, $B7
	db	$B3, $A6, $04, $B7
	db	$C2, $81, $A6, $87
	db	$3F, $BE, $04, $CE
	db	$38, $0E, $B9, $35
	db	$0A, $80, $DD, $B6
	db	$7F, $A4, $2B, $A1
	db	$02, $26, $D5, $04
	db	$B8, $E7, $08, $C0
	db	$CF, $14, $BA, $19
	db	$BA, $81, $3F, $C1
	db	$19, $B6, $15, $BB
	db	$A6, $87, $01, $BA
	db	$02, $A6, $D7, $AE
	db	$10, $20, $AE, $05
	db	$BE, $03, $08, $BA
	db	$0B, $0A, $B6, $0B
	db	$08, $BF, $C2, $A6
	db	$86, $CC, $1C, $2B
	db	$1B, $B6, $81, $CC
	db	$1B, $23, $0B, $C1
	db	$03, $CC, $18, $0E
	db	$A6, $D3, $AE, $FF
	db	$20, $DB, $A6, $88
	db	$B7, $B3, $81, $0D
	db	$BF, $09, $AE, $06
	db	$05, $B8, $01, $58
	db	$CC, $1B, $E2, $0A
	db	$C1, $07, $A6, $A1
	db	$AE, $30, $CC, $1C
	db	$2D, $15, $BB, $B6
	db	$B8, $A4, $70, $26
	db	$09, $06, $BF, $06
	db	$0E, $B6, $03, $CD
	db	$1A, $00, $CD, $1D
	db	$D2, $CC, $1C, $25
	db	$0C, $BF, $06, $0B
	db	$C1, $03, $CC, $18
	db	$0E, $A6, $C3, $CC
	db	$1C, $43, $AD, $09
	db	$B8, $B8, $A4, $70
	db	$B8, $B8, $B7, $B8
	db	$81, $AD, $0D, $AB
	db	$B3, $CD, $37, $C6
	db	$A4, $70, $A1, $70
	db	$26, $01, $4F, $81
	db	$B6, $B8, $A4, $03
	db	$05, $B8, $06, $A6
	db	$04, $07, $B8, $01
	db	$4C, $81, $AD, $F0
	db	$AB, $BA, $B7, $57
	db	$CD, $37, $C6, $B7
	db	$56, $B6, $B8, $CD
	db	$25, $25, $CD, $25
	db	$72, $81, $B6, $B8
	db	$48, $CD, $25, $24
	db	$26, $02, $A6, $07
	db	$4A, $05, $B8, $05
	db	$07, $B8, $0C, $20
	db	$08, $03, $B8, $02
	db	$AB, $0E, $01, $B8
	db	$02, $AB, $07, $C7
	db	$02, $7C, $A6, $19
	db	$81, $3F, $BD, $15
	db	$BB, $AE, $B1, $CD
	db	$37, $C7, $B8, $B8
	db	$A4, $0F, $27, $0A
	db	$AE, $B1, $CD, $37
	db	$C7, $04, $B8, $00
	db	$AD, $06, $CD, $1D
	db	$7E, $0E, $BB, $E0
	db	$B6, $B8, $A4, $7F
	db	$CC, $37, $9B
;
L1DF8:
	lda	#$01
	brset	2,RAM1_0b8,L060F
	brset	2,RAM1_0be,L0611
	brset	5,RAM1_0b9,L0611
	lda	RAM1_0b5
	and	#$4E
	brset	3,RAM1_08e,L060D
	brclr	6,RAM1_05f,L060F
	and	#$BF
	bit	#$40
	rts
;
	db	$AD, $E4, $26, $02
	db	$43, $81, $B6, $B9
	db	$A4, $38, $81, $B6
	db	$B6, $27, $04, $3F
	db	$B6, $1C, $CB, $81
	db	$3F, $B9, $1D, $B9
	db	$1A, $CB, $1B, $B9
	db	$19, $B9, $3F, $BE
	db	$19, $BA, $81, $3F
	db	$5B, $06, $B6, $02
	db	$1A, $5B, $0B, $B5
	db	$02, $14, $5B, $05
	db	$B8, $04, $1E, $5B
	db	$20, $11, $1C, $5B
	db	$B6, $B7, $A1, $41
	db	$22, $07, $A1, $12
	db	$25, $05, $10, $5B
	db	$C1, $12, $5B, $B6
	db	$5B, $81, $5F, $C6
	db	$02, $74, $AD, $17
	db	$C6, $02, $73, $AD
	db	$12, $C6, $02, $72
	db	$AD, $0D, $A6, $2E
	db	$B7, $DE, $A6, $20
	db	$B7, $E0, $A6, $52
	db	$B7, $E1, $81, $B7
	db	$5B, $AD, $05, $B6
	db	$5B, $CD, $25, $2C
	db	$CD, $25, $25, $AB
	db	$30, $E7, $DA, $5C
	db	$81
;
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
	db	$AE, $CC, $CD, $25
	db	$6C, $2A, $02, $13
	db	$CB, $26, $07, $7A
	db	$1B, $C5, $13, $CB
	db	$1E, $5D, $81
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
	db	$1E, $50, $B6, $9E
	db	$A4, $F0, $26, $73
	db	$B6, $C6, $A4, $1F
	db	$48, $B7, $56, $48
	db	$BB, $56, $A1, $BA
	db	$26, $02, $A6, $FF
	db	$0B, $C6, $07, $18
	db	$9E, $1A, $9E, $1B
	db	$C6, $81, $4D, $2B
	db	$02, $26, $05, $02
	db	$CB, $51, $27, $02
	db	$B7, $CC, $3F, $C6
	db	$B6, $C7, $2A, $48
	db	$0D, $C7, $5C, $A4
	db	$0E, $97, $D6, $1F
	db	$83, $B7, $59, $D6
	db	$1F, $84, $B7, $56
	db	$54, $D6, $1F, $93
	db	$C7, $02, $56, $A4
	db	$0F, $27, $13, $4A
	db	$B7, $58, $CE, $1F
	db	$82, $BF, $57, $C6
	db	$1F, $81, $4D, $27
	db	$02, $10, $59, $CD
	db	$25, $87, $0B, $C7
	db	$03, $1C, $9E, $C1
	db	$1E, $9E, $0F, $50
	db	$0E, $15, $CB, $B6
	db	$CE, $A4, $07, $A1
	db	$06, $26, $04, $B8
	db	$CE, $B7, $CE, $81
	db	$AE, $61, $CF, $02
	db	$56, $C7, $02, $57
	db	$A1, $70, $25, $E0
	db	$A4, $07, $97, $D6
	db	$1F, $9B, $C7, $02
	db	$57, $20, $D2, $BE
	db	$C8, $A4, $0F, $A5
	db	$08, $26, $07, $1F
	db	$50, $5D, $2A, $02
	db	$50, $4C, $CD, $25
	db	$2C, $C7, $02, $57
	db	$9F, $A4, $0F, $CB
	db	$02, $57, $C7, $02
	db	$57, $A6, $71, $C7
	db	$02, $56, $20, $AA
	db	$02, $57, $00, $C8
	db	$02, $80, $02, $57
	db	$02, $9E, $02, $60
	db	$00, $00, $00, $6C
	db	$02, $88, $32, $48
	db	$58, $92, $A2, $B0
	db	$E1, $48, $15, $0E
	db	$00, $00, $00, $00
	db	$00, $00
;
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
	db	$A1, $D2, $22, $07
	db	$0D, $69, $04, $1D
	db	$69, $11, $80, $81
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
	db	$AD, $37, $AD, $4B
;
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
	db	$04, $01, $14, $14
	db	$01, $AE, $08, $20
	db	$0C
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
	db	$19, $61, $11, $81
	db	$04, $12, $03, $05
	db	$01, $0A, $AE, $32
	db	$AD, $26, $15, $01
	db	$AE, $05, $AD, $20
	db	$9A, $81, $A6, $04
	db	$CD, $25, $41, $3F
	db	$0F, $A6, $07, $B7
	db	$04, $3F, $00, $1D
	db	$01, $1B, $61, $01
	db	$02, $EA, $11, $02
	db	$09, $0C, $26, $AE
	db	$32, $AD, $01, $81
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
	db	$9A, $81
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
	db	$FF, $B0, $FC, $00
X20B8:
	db	$04
X20B9:
	db	$FF
X20BA:
	db	$0F, $40, $00, $20
	db	$00, $00
X20C0:
	db	$BC
X20C1:
	db	$C0, $00, $2C, $00
	db	$00, $FA
X20C7:
	db	$F8, $B8, $FE, $00
	db	$07, $31, $02, $40
	db	$00, $20, $00, $00
	db	$BC, $C0, $00, $2C
	db	$00, $00, $FA
;
L20DA:
	brclr	6,RAM1_05d,L0114
	brclr	2,STACK_0ce,L0114
	brset	1,STACK_0ce,L0114
	brclr	0,STACK_0ce,L0114
	jmp	L2121
;
L20E9:
	db	$B6, $78, $A4, $07
	db	$AE, $81, $A1, $04
	db	$24, $21, $A1, $01
	db	$26, $03, $18, $CE
	db	$81, $AE, $02, $A1
	db	$02, $26, $03, $1A
	db	$CE, $81, $16, $BC
	db	$AE, $08, $C1, $AE
	db	$01, $10, $80, $BF
	db	$D0, $1C, $CE, $1E
	db	$94, $1D, $B5, $81
	db	$A6, $48, $B7, $9F
	db	$AE, $71, $A6, $41
	db	$B7, $CE, $20, $E9
;
L2121:
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
	db	$E0
X213B:
	db	$00, $EB, $1F, $E8
	db	$2C, $07, $2C, $00
	db	$A6, $02, $B8, $12
	db	$B7, $12, $16, $76
	db	$B6, $14, $B7, $6D
	db	$B6, $15, $B7, $6E
	db	$09, $5E, $05, $02
	db	$12, $31, $20, $1C
	db	$B0, $70, $97, $B6
	db	$6D, $B2, $6F, $A5
	db	$E0, $26, $11, $02
	db	$0C, $0B, $03, $12
	db	$08, $B7, $71, $BF
	db	$72, $11, $76, $20
	db	$0E, $CD, $21, $E4
	db	$B6, $6E, $B7, $70
	db	$B6, $6D, $B7, $6F
	db	$08, $5E, $06, $0A
	db	$03, $06, $03, $12
	db	$06, $19, $5E, $81
	db	$03, $12, $FC, $A6
	db	$02, $B8, $12, $B7
	db	$12, $A6, $10, $BB
	db	$6E, $B7, $6E, $24
	db	$02, $3C, $6D, $B6
	db	$15, $20, $B1
;
L21A2:
	brclr	3,RAM1_076,L01A8
	bclr	3,RAM1_076
	rts
;
	db	$18, $5E, $13, $12
	db	$B6, $15, $A6, $20
	db	$BB, $76, $AA, $40
	db	$A4, $DF, $B7, $76
	db	$0B, $03, $1D, $0E
	db	$01, $0E, $B6, $5E
	db	$A0, $20, $25, $02
	db	$B7, $5E, $2B, $32
	db	$1D, $5E, $20, $09
	db	$04, $76, $1E, $14
	db	$76, $12, $76, $20
	db	$18, $01, $61, $22
	db	$A6, $14, $5F, $BF
	db	$71, $B7, $72, $10
	db	$76, $01, $61, $05
	db	$0F, $01, $02, $15
	db	$76, $B7, $73, $BF
	db	$74, $18, $76, $0E
	db	$01, $08, $A6, $20
	db	$BB, $5E, $25, $02
	db	$B7, $5E, $A6, $20
	db	$BB, $76, $B7, $76
	db	$A4, $60, $A1, $60
	db	$26, $1C, $0E, $76
	db	$05, $00, $61, $07
	db	$1D, $76, $1F, $01
	db	$18, $5E, $81, $A6
	db	$24, $B7, $09, $0F
	db	$09, $FD, $B6, $08
	db	$B7, $75, $1E, $01
	db	$18, $5E, $81
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
	db	$4F, $C7, $02, $AA
	db	$AE, $0D, $CD, $23
	db	$9D, $B6, $75, $CB
	db	$02, $AE, $C7, $02
	db	$AE, $4F, $C9, $02
	db	$AD, $C7, $02, $AD
	db	$C6, $02, $AE, $CE
	db	$02, $AD, $56, $46
	db	$56, $46, $56, $46
	db	$AE, $0B, $CD, $23
	db	$C2, $25, $4B, $AE
	db	$19, $CD, $23, $2C
	db	$20, $34, $04, $76
	db	$CB, $AE, $06, $CD
	db	$23, $9D, $CD, $23
	db	$9B, $AE, $03, $E6
	db	$50, $DB, $02, $A6
	db	$D7, $02, $A6, $E7
	db	$56, $E6, $4F, $D9
	db	$02, $A5, $D7, $02
	db	$A5, $E7, $55, $5A
	db	$5A, $2A, $E8, $CD
	db	$24, $F2, $AE, $06
	db	$CD, $23, $C1, $25
	db	$15, $AE, $0F, $CD
	db	$23, $2C, $A6, $24
	db	$CD, $23, $4D, $C7
	db	$02, $AB, $A6, $2A
	db	$CD, $23, $4D, $C7
	db	$02, $AC, $01, $61
	db	$28, $C6, $02, $AB
	db	$BE, $0A, $CD, $23
	db	$7C, $B7, $0A, $C6
	db	$02, $AC, $BE, $6C
	db	$CD, $23, $7C, $97
	db	$02, $76, $0C, $C6
	db	$02, $AC, $B0, $6C
	db	$24, $01, $40, $A4
	db	$FC, $27, $06, $13
	db	$76, $BF, $6C, $12
	db	$5D, $81
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
	db	$AE, $FF, $A1, $F0
	db	$22, $02, $AE, $F8
	db	$9F, $BB, $56, $81
	db	$81
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
	db	$AE, $5F, $C1, $AE
	db	$20, $1B, $C5, $20
	db	$09
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
	db	$D8, $02, $50, $27
	db	$08, $D8, $02, $50
	db	$D7, $02, $50, $1A
	db	$C6, $5C, $81, $5F
	db	$A6, $00, $AD, $EC
	db	$A3, $06, $26, $F8
	db	$81, $AE, $01, $AD
	db	$E3, $B6, $56, $AA
	db	$40, $0B, $69, $01
	db	$4F, $04, $B8, $05
	db	$0D, $B5, $02, $AA
	db	$04, $AD, $E3, $5F
	db	$A6, $00, $20, $CC
	db	$B7, $56, $AD, $06
	db	$97, $B6, $56, $CD
	db	$25, $2C, $CD, $25
	db	$25, $A1, $0A, $25
	db	$02, $AB, $07, $AB
	db	$30, $81, $A6, $68
	db	$C1, $A6, $70, $C1
	db	$A6, $60, $C1, $A6
	db	$78, $C1, $A6, $80
	db	$4A, $B7, $56, $AE
	db	$07, $BF, $57, $BE
	db	$56, $D6, $25, $B3
	db	$3A, $56, $BE, $57
	db	$D7, $02, $57, $3A
	db	$57, $2A, $F0, $81
	db	$02, $CB, $0B, $3C
	db	$CC, $3D, $CC, $27
	db	$03, $3A, $CC, $81
	db	$3A, $CC
;
L2481:
	cmp	#$03
	bne	L048E
	lda	#$39
	brclr	6,STACK_0d2,L04A8
	lda	#$36
	bra	L04A8
;
	db	$A1, $01, $26, $05
	db	$0B, $BB, $2F, $16
	db	$94, $0D, $B5, $05
	db	$04, $B8, $02, $AA
	db	$08
;
L249F:
	brclr	3,RAM1_08e,L04A4
	ora	#$10
	sta	STACK_0d5
	bra	L04B4
;
	db	$AA, $40, $B8, $D5
	db	$A4, $7F, $27, $14
	db	$B8, $D5, $B7, $D5
;
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
	db	$BF, $09, $0F, $09
	db	$FD, $BB, $08, $24
	db	$02, $3C, $57, $3A
	db	$56, $26, $E6, $34
	db	$57, $46, $34, $57
	db	$46, $A9, $00, $B7
	db	$56, $81
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
	db	$9F, $81, $44
;
L2524:
	lsra
L2525:
	lsra
	lsra
	lsra
	lsra
	rts
;
	db	$48, $48, $48, $48
	db	$48, $48, $81
;
L2531:
	sta	RAM1_050
	bra	L053A
;
	db	$CD, $07, $89, $AD
	db	$05, $3A, $50, $2A
	db	$F7, $81
;
L253F:
	lda	#$14
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
;
	db	$C1
;
L2551:
	lda	#$21
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
	db	$7C
X2565:
	db	$52, $69, $EB, $2C
	db	$00, $7F, $E0
;
L256C:
	inc	,x
	beq	L0570
	dec	,x
	dec	,x
	rts
;
	db	$A4, $07, $97, $4F
	db	$99, $49, $5A, $2A
	db	$FC, $81
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
	db	$54, $41, $20, $20
	db	$20, $31, $20, $20
	db	$47, $41, $4C, $41
	db	$20, $31, $20, $20
	db	$56, $4F, $4C, $20
	db	$20, $31, $20, $20
	db	$53, $45, $4E, $53
	db	$20, $44, $58, $20
	db	$52, $4D, $20, $20
	db	$20, $4F, $4E, $20
	db	$4E, $41, $56, $20
	db	$20, $31, $20, $20
	db	$54, $45, $4C, $20
	db	$20, $52, $20, $20
	db	$47, $41, $4C, $41
	db	$20, $4F, $46, $46
	db	$53, $45, $4E, $53
	db	$20, $4C, $4F, $20
	db	$52, $4D, $20, $20
	db	$20, $4F, $46, $46
	db	$54, $45, $4C, $20
	db	$20, $4C, $20, $20
	db	$45, $31, $20, $50
	db	$33, $3A, $30, $30
	db	$43, $44, $31, $20
	db	$45, $52, $52, $31
	db	$4E, $4F, $20, $43
	db	$4F, $44, $45, $20
	db	$52, $30, $20, $30
	db	$30, $3A, $20, $20
	db	$46, $41, $44, $20
	db	$4F, $46, $46, $20
;
L2633:
	clr	STACK_0ca
	lda	#$0A
	sta	STACK_0cf
	lda	#$05
	sta	STACK_0ce
	rts
;
	db	$AE, $D1, $CD, $25
	db	$6C, $26, $02, $1F
	db	$D2, $AE, $CF, $CD
	db	$25, $6C, $26, $EF
	db	$07, $CE, $02, $1E
	db	$5D, $05, $CE, $79
	db	$B6, $CE, $A4, $F8
	db	$B7, $CE
;
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
	db	$0A, $CE, $08, $0D
	db	$CE, $19, $A6, $05
	db	$00, $CE, $3E, $A6
	db	$09, $0D, $67, $2A
	db	$1E, $5D, $20, $26
	db	$03, $CE, $08, $04
	db	$CB, $05, $A6, $06
	db	$01, $CE, $19, $A6
	db	$01, $06, $CE, $16
	db	$A6, $06, $0C, $7F
	db	$11, $06, $7F, $0E
	db	$A6, $04, $0A, $7F
	db	$07, $B6, $7F, $43
	db	$A4, $03, $27, $02
	db	$AA, $40, $0A, $7F
	db	$0C, $B7, $56, $B6
	db	$7F, $43, $A4, $03
	db	$CD, $25, $2C, $BB
	db	$56, $B8, $CA, $27
	db	$06, $B8, $CA, $B7
	db	$CA, $1E, $5D, $81
;
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
	db	$3F, $7A, $A4, $1F
	db	$AA, $C0, $20, $14
	db	$1D, $9F, $B6, $9F
	db	$2A, $04, $A8, $90
	db	$20, $0A, $97, $D6
	db	$27, $69, $0B, $69
	db	$03, $D6, $27, $3B
	db	$B7, $78, $A1, $01
	db	$27, $02, $1C, $5D
X2735:
	db	$81, $19, $0A, $4B
	db	$25, $32, $00, $E1
	db	$E2, $E3, $E4, $E5
	db	$E6, $E7, $07, $E9
	db	$01, $01, $01, $ED
	db	$0D, $09, $0A, $F6
	db	$01, $F3, $0C, $F5
	db	$01, $F7, $F8, $F9
	db	$FA, $FB, $FC, $FD
	db	$FE, $06, $EA, $01
	db	$02, $0F, $0F, $03
	db	$FF, $F4, $08, $EE
	db	$EF, $F0, $F1, $F2
	db	$00, $E1, $E2, $E3
	db	$E4, $E5, $E6, $E7
	db	$E8, $E9, $04, $EB
	db	$EC, $ED, $0D, $09
	db	$0A, $F6, $05, $F3
	db	$0C, $F5, $0B, $F7
	db	$F8, $F9, $FA, $FB
	db	$FC, $FD, $FE, $06
	db	$EA, $01, $02, $0F
	db	$0F, $03, $FF, $F4
	db	$08, $EE, $EF, $F0
	db	$F1, $F2
;
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
	db	$A5, $E0, $27, $0F
	db	$A5, $1F, $26, $0B
	db	$B8, $78, $27, $07
	db	$A1, $06, $22, $03
	db	$A5, $00, $81, $A6
	db	$01, $81, $81
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
;
	db	$81, $B6, $B8, $A4
	db	$60, $A1, $60, $26
	db	$08, $B6, $B8, $A4
	db	$0F, $AA, $10, $20
	db	$16, $A6, $10, $20
	db	$08, $B6, $B8, $A4
	db	$60, $27, $06, $A6
	db	$F0, $BB, $B8, $20
	db	$0B, $B6, $B8, $A4
	db	$0F, $AA, $60, $04
	db	$B8, $02, $A8, $01
	db	$AA, $80, $20, $2B
	db	$B6, $B8, $04, $B8
	db	$05, $A4, $03, $4C
	db	$20, $1F, $A6, $08
	db	$07, $B8, $18, $4F
	db	$20, $17, $B6, $B8
	db	$04, $B8, $08, $48
	db	$48, $B8, $B8, $A4
	db	$08, $20, $06, $44
	db	$44, $B8, $B8, $A4
	db	$02, $AA, $04, $B8
	db	$B8, $AA, $F0, $B7
	db	$B4, $A6, $80, $20
	db	$57, $20, $B2, $20
	db	$9C, $20, $C9, $20
	db	$D9, $04, $B8, $FB
	db	$0A, $69, $20, $A6
	db	$01, $20, $E4, $05
	db	$B8, $05, $18, $B3
	db	$1A, $B3, $81, $09
	db	$CE, $E9, $A6, $30
	db	$CC, $29, $76, $CC
	db	$2A, $1F, $04, $B6
	db	$06, $06, $8E, $13
	db	$05, $B8, $17, $81
	db	$A6, $19, $02, $B5
	db	$02, $A6, $18, $CD
	db	$23, $F3, $A6, $61
	db	$CC, $29, $62, $1C
	db	$C5, $A6, $63, $CC
	db	$29, $64, $CC, $29
	db	$9C, $1E, $D2, $AE
	db	$FA, $BF, $D1, $20
	db	$34, $A6, $A4, $0B
	db	$B6, $02, $A6, $B4
	db	$1F, $D2, $20, $69
	db	$A6, $86, $B7, $B3
	db	$1F, $D2, $14, $CB
	db	$81, $A6, $08, $04
	db	$B8, $12, $AE, $D4
	db	$CD, $37, $C7, $B7
	db	$5B, $B6, $B8, $CD
	db	$37, $9B, $B8, $5B
	db	$A4, $01, $AA, $02
	db	$CC, $28, $94, $1E
	db	$D2, $20, $05, $1E
	db	$D2, $A6, $C4, $C1
	db	$A6, $CC, $0F, $D2
	db	$B9, $AE, $FA, $BF
	db	$D1, $20, $17, $0E
	db	$D2, $2D, $A6, $D4
	db	$20, $05, $0E, $D2
	db	$26, $A6, $DC, $19
	db	$BB, $1B, $BB, $20
	db	$20, $A6, $C4, $C1
	db	$A6, $CC, $06, $5D
	db	$2E, $19, $BB, $1B
	db	$BB, $0F, $D2, $02
	db	$AA, $07, $B7, $B3
	db	$14, $CB, $0F, $D2
	db	$1A, $AE, $FA, $BF
	db	$D1, $20, $14, $A6
	db	$94, $14, $CB, $1A
	db	$D2, $B7, $B3, $CC
	db	$2A, $15, $A6, $8A
	db	$CD, $2A, $41, $1B
	db	$D2, $1E, $7E, $A6
	db	$90, $B7, $77, $81
	db	$1A, $7E, $0B, $D2
	db	$FA, $13, $CB, $A6
	db	$80, $CD, $2A, $41
	db	$20, $25, $5F, $1A
	db	$D2, $04, $BA, $0C
	db	$06, $CE, $09, $08
	db	$B6, $09, $0F, $BA
	db	$06, $05, $B6, $03
	db	$CC, $2A, $06, $0B
	db	$B6, $03, $A6, $B4
	db	$C1, $A6, $42, $B7
	db	$B3, $18, $CC, $A6
	db	$B0, $20, $CA, $A6
	db	$27, $CD, $24, $C5
	db	$A1, $19, $24, $0A
	db	$16, $5D, $B6, $B4
	db	$A4, $74, $A1, $60
	db	$27, $11, $07, $81
	db	$09, $17, $81, $AE
	db	$A8, $CD, $37, $C7
	db	$B7, $85, $07, $5D
	db	$16, $20, $3B, $AE
	db	$82, $B8, $B8, $A4
	db	$74, $27, $2A, $17
	db	$5D, $16, $7E, $16
	db	$81, $B6, $88, $40
	db	$44, $B7, $85, $06
	db	$8E, $24, $B6, $B4
	db	$A4, $7F, $B1, $B8
	db	$26, $1C, $05, $CE
	db	$19, $02, $CE, $16
	db	$00, $CE, $13, $CD
	db	$1D, $9B, $B4, $56
	db	$27, $0C, $1F, $B5
	db	$C1, $BF, $B3, $20
	db	$05, $A6, $80, $CD
	db	$2A, $41, $14, $CE
	db	$13, $CE, $11, $CE
	db	$A6, $7D, $B7, $CF
	db	$07, $CE, $06, $13
	db	$CE, $A6, $32, $B7
	db	$CF, $81, $0A, $D2
	db	$0E, $1A, $D2, $09
	db	$BB, $04, $A6, $C2
	db	$20, $13, $A6, $01
	db	$B7, $CC, $81, $B6
	db	$CC, $A1, $FF, $26
	db	$F5, $1B, $D2, $B6
	db	$B7, $B7, $C8, $A6
	db	$C0, $CC, $23, $F6
	db	$B7, $B3, $14, $CB
	db	$1F, $D2, $B6, $78
	db	$CD, $25, $2C, $B8
	db	$B8, $A4, $70, $B8
	db	$B8, $AA, $80, $B7
	db	$B4, $0B, $69, $02
	db	$11, $B4, $81, $07
	db	$CE, $03, $CC, $2A
	db	$E3, $0E, $B9, $26
	db	$0F, $BA, $03, $04
	db	$B6, $20, $07, $8E
	db	$1D, $0F, $C5, $1A
	db	$09, $B5, $17, $0D
	db	$C5, $14, $1D, $C5
	db	$1A, $C5, $B6, $C5
	db	$A4, $1F, $CD, $24
	db	$A8, $B6, $C5, $A4
	db	$1F, $AB, $23, $CC
	db	$23, $F6, $A6, $01
	db	$09, $BB, $04, $07
	db	$B5, $01, $4C, $0E
	db	$B9, $06, $0F, $BA
	db	$05, $05, $B6, $02
	db	$A6, $03, $CD, $24
	db	$73, $A6, $13, $0C
	db	$D2, $32, $07, $B5
	db	$19, $0F, $BA, $03
	db	$04, $B6, $13, $09
	db	$CE, $0B, $0C, $BB
	db	$03, $01, $BB, $0A
	db	$A6, $CE, $CC, $23
	db	$D9, $A6, $C2, $08
	db	$BB, $F8, $0B, $BB
	db	$1C, $4F, $05, $B8
	db	$07, $AA, $10, $07
	db	$8E, $02, $AA, $20
	db	$B7, $C9, $B6, $B7
	db	$B7, $C8, $A6, $C0
	db	$0F, $CB, $03, $CC
	db	$23, $EA, $CC, $23
	db	$D9, $81, $0C, $5F
	db	$4E, $05, $B6, $07
	db	$CD, $2A, $15, $A6
	db	$70, $20, $E9, $B6
	db	$CF, $4A, $02, $CE
	db	$28, $01, $B9, $08
	db	$0C, $BB, $02, $2B
	db	$18, $04, $BF, $15
	db	$2A, $0E, $A6, $32
	db	$B7, $CF, $A6, $D4
	db	$07, $B6, $02, $A6
	db	$DC, $CC, $29, $62
	db	$0B, $D2, $96, $20
	db	$D6, $A6, $0A, $B7
	db	$CE, $A6, $7D, $B7
	db	$CF, $2A, $8A, $A6
	db	$4B, $B7, $CF, $AE
	db	$04, $CD, $25, $57
	db	$1C, $5F, $B6, $B7
	db	$B7, $C4, $A6, $15
	db	$CC, $23, $EA, $B6
	db	$CF, $4A, $2A, $F6
	db	$11, $61, $14, $5D
	db	$81, $CC, $24, $12
	db	$1F, $CB, $0C, $5F
	db	$F8, $0F, $69, $F5
	db	$B6, $B8, $04, $B8
	db	$20, $A4, $07, $97
	db	$D6, $2B, $DA, $0B
	db	$69, $02, $A4, $0C
	db	$0F, $BA, $03, $04
	db	$B6, $03, $07, $B5
	db	$02, $AA, $02, $06
	db	$8E, $0E, $03, $BB
	db	$0B, $AA, $01, $20
	db	$07, $A6, $18, $07
	db	$B8, $02, $A6, $1C
	db	$5F, $CD, $24, $03
	db	$06, $CE, $05, $B6
	db	$BD, $04, $BB, $02
	db	$B6, $B8, $A4, $70
	db	$0F, $B9, $01, $4F
	db	$CD, $25, $25, $CD
	db	$24, $03, $A6, $02
	db	$04, $B8, $24, $A6
	db	$08, $0F, $BA, $03
	db	$04, $B6, $03, $07
	db	$B5, $02, $AA, $01
	db	$06, $CE, $03, $0D
	db	$B5, $02, $AA, $04
	db	$07, $8E, $05, $09
	db	$B5, $02, $AA, $04
	db	$03, $B8, $09, $AA
	db	$20, $20, $05, $07
	db	$B8, $02, $AA, $20
	db	$0B, $B6, $02, $AA
	db	$10, $0B, $69, $02
	db	$A4, $2F, $CD, $24
	db	$03, $4F, $5C, $05
	db	$BB, $07, $B6, $BD
	db	$A4, $70, $CD, $25
	db	$25, $CD, $24, $03
	db	$81, $48, $28, $4C
	db	$2C, $81
;
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
	db	$E0
X2BFC:
	db	$E9, $A0, $CD, $80
	db	$D2, $C0, $DB, $FF
	db	$00, $F4, $02, $E9
	db	$25, $A9, $2F, $C9
	db	$3E, $E7, $84, $F8
	db	$87, $87, $B9, $98
	db	$B9, $A7, $82, $B8
	db	$7E, $C7, $92, $D8
	db	$99, $FC, $84, $FD
	db	$87, $9C, $B9, $9D
	db	$B9, $BC, $82, $BD
	db	$7E, $DC, $92, $DD
	db	$99, $F0, $84, $EF
	db	$87, $90, $B9, $8F
	db	$B9, $B0, $82, $AF
	db	$7E, $D0, $92, $CF
	db	$99, $0B, $50, $F5
	db	$45, $B5, $5B, $D5
	db	$64, $08, $04, $F6
	db	$12, $D6, $22, $36
	db	$06, $E7, $95, $F8
	db	$9C, $FC, $95, $FD
	db	$9C, $F0, $95, $EF
	db	$9C, $F5, $64, $E0
	db	$E2, $F7, $08, $00
;
L2C60:
	brset	7,RAM1_060,L0482
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
	db	$0B, $CB, $04, $1B
	db	$CB, $1E, $5D, $B8
	db	$7F, $A4, $CC, $B7
	db	$5B, $B8, $7F, $B7
	db	$7F, $A4, $60, $26
	db	$0C, $09, $7F, $09
	db	$19, $7F, $AE, $A8
	db	$CD, $37, $C7, $B7
	db	$85, $01, $61, $5D
	db	$3D, $5B, $27, $27
	db	$1E, $5D, $10, $CB
	db	$16, $7E, $14, $CB
	db	$06, $CE, $4F, $07
	db	$5B, $08, $1E, $5D
	db	$10, $CB, $18, $B3
	db	$1F, $D2, $0D, $5B
	db	$0E, $1E, $5D, $0C
	db	$7F, $09, $AE, $A8
	db	$CD, $37, $C7, $B7
	db	$85, $20, $00, $0B
	db	$7C, $30, $0C, $7C
	db	$19, $05, $69, $2A
	db	$15, $69, $15, $D2
	db	$19, $D3, $AE, $A5
	db	$CD, $37, $9B, $02
	db	$7F, $1C, $01, $7F
	db	$19, $04, $81, $12
	db	$20, $2E, $04, $69
	db	$11, $14, $69, $14
	db	$81, $03, $7F, $02
	db	$15, $81, $14, $CB
	db	$18, $B3, $CC, $2E
	db	$5F, $81, $B6, $7F
	db	$00, $80, $04, $A5
	db	$EA, $27, $4A, $A5
	db	$03, $26, $10, $03
	db	$D2, $52, $00, $D2
	db	$4F, $10, $D2, $AE
	db	$88, $CC, $2D, $CF
	db	$CC, $2E, $1A, $01
	db	$7F, $3F, $05, $D2
	db	$7E, $0A, $7F, $39
	db	$07, $5F, $03, $02
	db	$7C, $75, $0E, $D3
	db	$72, $1E, $D3, $15
	db	$D3, $07, $6A, $02
	db	$14, $D3, $13, $D3
	db	$03, $7C, $11, $12
	db	$D3, $10, $D3, $01
	db	$7C, $05, $04, $7C
	db	$07, $20, $03, $05
	db	$7C, $02, $11, $D3
	db	$A6, $88, $CC, $2E
	db	$0E, $07, $8B, $09
	db	$0E, $60, $06, $B6
	db	$CE, $A4, $C8, $27
	db	$0C, $02, $D2, $62
	db	$04, $D2, $03, $07
	db	$7C, $39, $CC, $2E
	db	$08, $01, $7F, $14
	db	$02, $D2, $53, $0D
	db	$7C, $2D, $08, $7C
	db	$2A, $05, $D2, $54
	db	$0E, $D3, $51, $20
	db	$22, $CC, $2C, $DD
	db	$04, $D2, $7C, $06
	db	$7C, $79, $0D, $6A
	db	$8F, $C6, $02, $65
	db	$A4, $F0, $A1, $B0
	db	$27, $07, $07, $D4
	db	$04, $17, $D4, $20
	db	$1A, $03, $D2, $17
	db	$00, $D2, $14, $1B
	db	$80, $B6, $85, $26
	db	$02, $1A, $80, $0D
	db	$5D, $75, $07, $8B
	db	$72, $00, $80, $6F
	db	$CC, $30, $12, $12
	db	$D2, $11, $D2, $18
	db	$B3, $AE, $8D, $05
	db	$D4, $08, $AE, $83
	db	$20, $04, $AE, $80
	db	$13, $D2, $BF, $7D
	db	$1C, $94, $20, $49
	db	$14, $D2, $18, $B3
	db	$13, $7F, $10, $7F
	db	$06, $D3, $0D, $16
	db	$D3, $A6, $8C, $08
	db	$D3, $27, $A6, $8D
	db	$10, $7C, $20, $21
	db	$A6, $8F, $0F, $D3
	db	$1C, $1F, $D3, $B6
	db	$D3, $A4, $07, $0B
	db	$D3, $02, $AA, $08
	db	$97, $D6, $30, $02
	db	$05, $D3, $0A, $16
	db	$6A, $20, $08, $A6
	db	$80, $15, $D2, $17
	db	$7C, $17, $6A, $B7
	db	$7B, $1A, $94, $A1
	db	$81, $27, $0A, $20
	db	$04, $12, $7F, $11
	db	$7F, $1F, $D2, $14
	db	$CB, $18, $5C, $1E
	db	$5D, $16, $BC, $81
	db	$0D, $7C, $14, $0A
	db	$7F, $11, $A6, $81
	db	$20, $DB, $06, $8E
	db	$1C, $03, $A1, $03
	db	$07, $D2, $04, $A6
	db	$B0, $B7, $77, $81
	db	$0B, $7F, $0E, $1B
	db	$7F, $13, $CE, $11
	db	$CE, $A6, $80, $B7
	db	$A0, $17, $D2, $20
	db	$CC, $06, $7F, $EB
	db	$15, $81, $1C, $C5
	db	$00, $7F, $19, $03
	db	$7F, $BB, $0A, $7C
	db	$08, $A6, $84, $B7
	db	$7B, $1A, $94, $20
	db	$0B, $05, $69, $08
	db	$10, $7F, $19, $7C
	db	$17, $6A, $20, $0B
	db	$0D, $6A, $A2, $4F
	db	$C7, $02, $64, $11
	db	$D4, $11, $7F, $13
	db	$7F, $15, $BA, $20
	db	$98, $AE, $00, $C1
	db	$AE, $06, $20, $18
	db	$AE, $06, $0D, $8E
	db	$13, $B6, $CE, $A4
	db	$F8, $B7, $CE, $CD
	db	$24, $59, $A6, $C4
	db	$CC, $23, $F6, $AE
	db	$04, $C1, $AE, $02
	db	$0A, $7F, $98, $05
	db	$CE, $11, $03, $CE
	db	$0E, $00, $CE, $0B
	db	$B3, $D0, $26, $07
	db	$3F, $CF, $10, $CF
	db	$3F, $CC, $81, $0E
	db	$7F, $FC, $0A, $80
	db	$F9, $B6, $82, $A4
	db	$8F, $27, $25, $A1
	db	$01, $27, $21, $A4
	db	$0F, $27, $1D, $A1
	db	$02, $26, $E7, $0E
	db	$B9, $E4, $05, $B6
	db	$13, $B6, $B6, $A1
	db	$05, $27, $DB, $0E
	db	$B5, $04, $1E, $B5
	db	$16, $BC, $18, $B3
	db	$1A, $B3, $1F, $D2
	db	$BF, $D0, $14, $CE
	db	$12, $CE, $11, $CE
	db	$A6, $96, $B7, $CF
	db	$CC, $2F, $C9, $A6
	db	$01, $C1, $A6, $FF
	db	$AE, $50, $20, $07
	db	$A6, $01, $C1, $A6
	db	$FF, $AE, $30, $BF
	db	$77, $20, $62, $B6
	db	$78, $A4, $0F, $AB
	db	$F9, $40, $27, $A2
	db	$05, $CE, $56, $03
	db	$CE, $53, $00, $CE
	db	$50, $B7, $57, $CD
	db	$2F, $C9, $AD, $37
	db	$22, $26, $CD, $2F
	db	$EA, $26, $08, $3D
	db	$63, $26, $C1, $BB
	db	$57, $20, $13, $2A
	db	$0B, $BB, $57, $2B
	db	$0D, $A6, $28, $B7
	db	$63, $4F, $20, $06
	db	$BB, $57, $2B, $F5
	db	$27, $F3, $AD, $13
	db	$22, $A6, $20, $02
	db	$3F, $56, $AD, $74
	db	$B6, $56, $CD, $37
	db	$9B, $18, $7E, $16
	db	$7E, $20, $95, $BE
	db	$D0, $58, $B7, $56
	db	$2A, $02, $40, $5C
	db	$03, $81, $02, $5C
	db	$5C, $D1, $2F, $B9
	db	$81, $0A, $82, $43
	db	$0E, $87, $40, $0C
	db	$7F, $03, $0B, $7F
	db	$0D, $08, $7F, $0D
	db	$BE, $86, $B3, $85
	db	$23, $07, $BF, $85
	db	$20, $03, $06, $82
	db	$2A, $18, $7F, $BB
	db	$85, $2B, $13, $06
	db	$81, $06, $A1, $1E
	db	$23, $02, $A6, $1E
	db	$0F, $82, $08, $3D
	db	$85, $26, $14, $A6
	db	$01, $B1, $4F, $B7
	db	$85, $0C, $7F, $0B
	db	$0E, $7F, $08, $0A
	db	$7F, $05, $06, $81
	db	$02, $16, $5C, $81
	db	$06, $06, $05, $05
	db	$06, $06, $05, $05
	db	$0F, $0F, $0F, $0F
	db	$0F, $0F, $0F, $0F
;
L2FC9:
	brclr	6,RAM1_07f,L07DC
	ldx	#$0E
	lda	#$2B
	brset	2,RAM1_0be,L07FB
	brset	5,RAM1_0b9,L07FB
	ldx	#$10
	lda	#$2A
	bra	L07FB
;
	db	$AE, $12, $A6, $38
	db	$06, $8E, $04, $AE
	db	$11, $A6, $37, $06
	db	$7F, $11, $B6, $D0
	db	$B7, $C7, $1E, $C7
	db	$44, $AB, $A0, $CD
	db	$37, $C6, $B7, $C8
	db	$1C, $C6, $81, $CD
	db	$24, $A8, $9F, $CC
	db	$23, $D9, $8F, $8F
	db	$8A, $8B, $90, $90
	db	$89, $89, $8F, $8F
	db	$82, $83, $90, $90
	db	$89, $89, $5F, $07
	db	$CE, $02, $AE, $22
	db	$D6, $30, $2F, $B7
	db	$56, $D6, $30, $2E
	db	$27, $0B, $CD, $27
	db	$97, $26, $F1, $DE
	db	$30, $2D, $DD, $2E
	db	$29, $81, $0D, $64
	db	$09, $77, $0A, $5D
	db	$0C, $7A, $1F, $E7
	db	$FA, $DC, $3A, $D3
	db	$5A, $D3, $DA, $92
	db	$FB, $DF, $3B, $D6
	db	$5B, $D6, $DB, $92
	db	$EB, $0A, $CB, $18
	db	$EE, $0A, $CE, $18
	db	$06, $00, $00
;
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
;
	db	$CC, $31, $33
;
L306C:
	brclr	4,RAM1_069,L0078
	jmp	L30E2
;
L3072:
	brclr	4,RAM1_069,L0078
	jmp	L3106
;
	db	$1F, $A0, $81
;
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
	db	$04, $A1, $11, $A6
	db	$14, $B7, $AF, $CD
	db	$33, $5B, $A1, $03
	db	$23, $06, $3C, $B1
	db	$26, $02, $12, $B1
	db	$99, $81
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
	db	$00, $A1, $FC, $CD
	db	$31, $66, $A6, $4C
X30CC:
	db	$AD, $0E, $A6, $A6
	db	$AD, $0A, $A6, $07
	db	$AD, $06, $4F, $CD
	db	$32, $57, $A6, $0E
	db	$AE, $50, $F7, $CC
	db	$31, $FB
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
	db	$CD, $32, $40, $A4
	db	$20, $26, $F8, $02
	db	$A1, $10, $B6, $AE
	db	$A1, $02, $27, $03
	db	$09, $A1, $03, $1A
	db	$A1, $81, $A6, $91
	db	$20, $2F, $07, $A1
	db	$E0, $A6, $92, $20
	db	$5D
;
L3133:
	bsr	L015F
	brclr	0,RAM1_0a1,L0111
	bsr	L0166
	jmp	L337F
;
	db	$00, $A1, $D1, $AD
	db	$1D, $B6, $A2, $A4
	db	$0F, $B7, $A2, $CD
	db	$33, $F2, $B6, $AD
	db	$27, $04, $AB, $01
	db	$24, $02, $A6, $02
	db	$B7, $AE, $B7, $B1
	db	$A6, $89, $B7, $A1
	db	$20, $33, $03, $A1
	db	$AF, $3F, $A1, $AD
	db	$00, $A6, $05, $CC
	db	$32, $57, $B6, $A2
	db	$A4, $0F, $27, $71
	db	$AD, $EC, $AE, $AD
	db	$CD, $32, $99, $0D
	db	$A0, $05, $AE, $A3
	db	$CD, $32, $BD, $CD
	db	$32, $E3, $BE, $AE
	db	$BF, $B1, $B3, $AD
	db	$25, $03, $A6, $8A
	db	$C1, $A6, $82, $B7
	db	$A1, $A6, $08, $AD
	db	$D2, $B6, $AD, $05
	db	$A1, $04, $B6, $B1
	db	$1C, $A1, $B7, $58
	db	$4F, $07, $A1, $03
	db	$4A, $B7, $58, $AE
	db	$56, $B7, $57, $A6
	db	$00, $F7, $AD, $32
	db	$AE, $56, $A6, $7F
	db	$F7, $B6, $B1, $A1
	db	$02, $25, $03, $09
	db	$A1, $02, $A6, $02
	db	$E7, $01, $7F, $AD
	db	$1F, $A6, $03, $00
	db	$A1, $02, $A6, $02
	db	$AD, $99, $A6, $04
	db	$AD, $95, $CD, $33
	db	$FA, $5F, $AD, $67
	db	$A4, $20, $26, $05
	db	$5A, $26, $F7, $3F
	db	$A1, $81, $AD, $16
	db	$64, $01, $76, $64
	db	$01, $76, $64, $01
	db	$76, $64, $01, $76
	db	$0D, $A1, $05, $7C
	db	$7C, $7C, $1D, $A1
	db	$AD, $00, $F6, $AD
	db	$59, $F6, $CD, $25
	db	$25, $5C, $20, $52
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
	db	$AD, $0C, $CD, $25
	db	$25, $B7, $59, $AD
	db	$0A, $A4, $F0, $BA
	db	$59, $81, $A6, $31
	db	$4A, $26, $FD, $A6
	db	$1B, $4A, $26, $FD
	db	$9B, $B6, $06, $A4
	db	$03, $AB, $0C, $B7
	db	$06, $9A, $14, $02
	db	$17, $02, $AD, $45
	db	$B6, $02, $16, $02
	db	$81, $A6, $03, $3F
	db	$5A, $16, $02, $3A
	db	$5A, $26, $03, $CC
	db	$31, $E0, $AD, $31
	db	$17, $02, $CD, $33
	db	$FA, $08, $02, $ED
	db	$A1, $05, $27, $06
	db	$0A, $02, $E6, $C1
	db	$A6, $02, $CD, $25
	db	$2C, $AA, $0F, $9B
	db	$B7, $02, $B6, $06
	db	$A4, $03, $AB, $FC
	db	$B7, $06, $9A, $15
	db	$02, $AD, $0A, $14
	db	$02, $B6, $06, $A4
	db	$03, $AB, $0C, $B7
	db	$06, $CD, $33, $FA
	db	$81, $11, $58, $20
	db	$04
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
	db	$BF, $5A, $BE, $59
	db	$3C, $59, $D6, $02
	db	$D8, $BE, $5A, $F7
	db	$5C, $3A, $56, $26
	db	$DE
;
L32E3:
	rts
;
	db	$B6, $A2, $A1, $0F
	db	$27, $2B, $AB, $10
	db	$A1, $A0, $24, $25
	db	$97, $CD, $25, $25
	db	$B7, $56, $B6, $A2
	db	$A4, $0F, $B1, $56
	db	$25, $17, $9F, $20
	db	$0C, $B6, $A2, $A1
	db	$0F, $27, $0E, $A4
	db	$F0, $27, $0A, $A0
	db	$10, $B8, $A2, $A4
	db	$F0, $B8, $A2, $20
	db	$06, $4F, $81, $B6
	db	$A2, $A4, $0F, $B7
	db	$A2, $A4, $0F, $81
X3320:
	db	$6B, $00, $00, $00
	db	$50, $54, $58, $00
	db	$5C, $4D, $81, $81
	db	$82, $68, $60, $64
	db	$CC, $31, $3D, $AD
	db	$AF, $20, $17, $AD
	db	$C8, $20, $13, $AD
	db	$DA, $20, $0F, $AD
	db	$D6, $20, $06, $AD
	db	$9F, $20, $02, $AD
	db	$B8, $27, $98, $CC
	db	$31, $6B, $02, $A1
	db	$03, $CC, $30, $69
	db	$1F, $A1, $A6, $01
	db	$B7, $AF, $81, $B6
	db	$AD, $B0, $B1, $24
	db	$02, $A0, $02, $81
	db	$81, $CD, $31, $5F
	db	$15, $A1, $AE, $50
	db	$CD, $32, $99, $CD
	db	$32, $E3, $B6, $52
	db	$B7, $AB, $B6, $53
	db	$B7, $AC, $BE, $B1
	db	$CC, $31, $87
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
	db	$B1, $AE, $24, $04
	db	$B1, $B1, $24, $D6
	db	$B6, $A2, $27, $09
	db	$0B, $A1, $02, $AA
	db	$0F, $A4, $0F, $B7
	db	$A2, $3F, $A1, $81
	db	$AE, $AD, $CD, $32
	db	$99, $CC, $32, $E3
	db	$6D, $FF, $6D, $FF
	db	$81
;
L33FF:
	brset	7,RAM1_0a0,L0408
	lda	STACK_0ce
	and	#$C0
	beq	L0409
	rts
;
	db	$0A, $CE, $3C, $03
	db	$A1, $05, $0F, $A1
	db	$02, $1A, $7F, $0B
	db	$7F, $0F, $06, $7F
	db	$09, $0A, $B9, $06
	db	$00, $5D, $06, $09
	db	$BA, $03, $CC, $34
	db	$EB, $01, $A1, $09
	db	$0B, $7F, $06, $10
	db	$5D, $A6, $80, $20
	db	$14, $0A, $B9, $0C
	db	$09, $B9, $12, $02
	db	$A1, $14, $0A, $7F
	db	$11, $00, $5D, $0E
	db	$00, $A1, $4C, $A6
	db	$89, $B7, $A0, $20
	db	$46, $11, $5D, $00
	db	$A1, $DF, $0B, $7F
	db	$3E, $19, $BA, $06
	db	$CE, $39, $03, $A1
	db	$06, $14, $CE, $1A
	db	$CF, $20, $30, $BE
	db	$CF, $05, $CE, $1E
	db	$07, $D2, $09, $B6
	db	$A2, $A4, $F0, $26
	db	$0E, $CC, $35, $84
	db	$5C, $26, $77, $1F
	db	$CF, $A6, $88, $10
	db	$5D, $20, $0F, $CD
	db	$35, $A3, $A6, $85
	db	$20, $0A, $5C, $26
	db	$0A, $07, $D2, $62
	db	$A6, $8D, $1D, $80
	db	$CC, $35, $39, $0D
	db	$5D, $2B, $06, $7F
	db	$28, $CC, $35, $CB
	db	$A6, $44, $1C, $C5
	db	$20, $30, $06, $CE
	db	$1C, $06, $8E, $19
	db	$06, $D2, $76, $0A
	db	$7F, $46, $81, $06
	db	$CE, $0F, $A6, $30
	db	$06, $8E, $08, $03
	db	$A1, $03, $07, $D2
	db	$1A, $A6, $B0, $B7
	db	$77, $81, $09, $BA
	db	$06, $19, $BA, $A6
	db	$F1, $20, $07, $A6
	db	$66, $05, $B8, $02
	db	$A6, $26, $B7, $B3
	db	$CC, $35, $68, $A6
	db	$24, $06, $8E, $C2
	db	$06, $D2, $42, $0A
	db	$7F, $06, $0D, $B5
	db	$E6, $04, $B8, $E3
	db	$04, $BE, $D6, $03
	db	$A1, $06, $A6, $80
	db	$B7, $A0, $20, $77
	db	$B6, $A2, $A4, $0F
	db	$0B, $7F, $07, $27
	db	$6E, $CD, $35, $A3
	db	$20, $35, $00, $A1
	db	$02, $27, $0D, $19
	db	$BA, $A6, $FF, $B7
	db	$CF, $14, $CE, $A6
	db	$80, $CC, $34, $8B
	db	$3F, $C8, $A6, $8A
	db	$CD, $23, $F3, $A6
	db	$2C, $CD, $24, $A8
	db	$81, $CD, $35, $A3
	db	$A6, $80, $02, $A1
	db	$13, $B6, $A2, $A1
	db	$0F, $27, $08, $4A
	db	$CD, $25, $2C, $B1
	db	$A2, $24, $03, $A6
	db	$86, $C1, $A6, $84
	db	$1A, $7F, $B7, $A0
	db	$20, $57, $03, $5F
	db	$03, $CC, $34, $C8
	db	$0A, $7F, $5A, $14
	db	$7E, $10, $80, $A6
	db	$02, $B7, $7F, $AE
	db	$06, $CD, $25, $57
	db	$A6, $08, $B7, $CE
	db	$A6, $26, $B7, $B3
	db	$1B, $D2, $A6, $14
	db	$AD, $31, $19, $B3
	db	$1B, $B6, $81, $1B
	db	$7F, $13, $CE, $11
	db	$CE, $17, $D2, $20
	db	$2A, $0A, $7F, $2D
	db	$08, $BA, $2A, $B6
	db	$A2, $A4, $0F, $27
	db	$93, $A6, $86, $B7
	db	$A0, $19, $BA, $17
	db	$D2, $A6, $7D, $1C
	db	$80, $15, $CE, $B7
	db	$CF, $12, $CE, $10
	db	$CE, $1A, $7F, $B7
	db	$CF, $18, $B3, $1A
	db	$B3, $1F, $D2, $14
	db	$CB, $16, $7E, $1E
	db	$5D, $81, $16, $D2
	db	$A6, $32, $20, $DF
	db	$B6, $A2, $A1, $0F
	db	$26, $04, $A6, $01
	db	$20, $0B, $CD, $25
	db	$25, $B7, $5B, $B6
	db	$A2, $B0, $5B, $A4
	db	$0F, $B7, $C8, $AB
	db	$2C, $CD, $24, $A8
	db	$A6, $8A, $CD, $23
	db	$EA, $81, $5F, $0B
	db	$CE, $02, $AE, $0E
	db	$D6, $35, $E8, $B7
	db	$56, $D6, $35, $E7
	db	$27, $0B, $CD, $27
	db	$97, $26, $F1, $DE
	db	$35, $E6, $DD, $34
	db	$99, $81, $E8, $13
	db	$C8, $3B, $A8, $A6
	db	$28, $00, $AB, $D9
	db	$AE, $D9, $08, $06
	db	$07, $26, $E8, $26
	db	$00
;
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
	db	$03, $8B, $02, $14
	db	$8B, $B6, $8B, $C1
	db	$A6, $08
;
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
	db	$13, $D6, $06, $10
	db	$2E, $04, $D6, $2B
	db	$B6, $11, $0C, $BA
	db	$03, $0B, $BA, $23
	db	$00, $D6, $0F, $2B
	db	$1B, $06, $D6, $1B
	db	$C7, $02, $71, $10
	db	$D6, $A4, $07, $B7
	db	$D7, $81, $BE, $D7
	db	$D7, $02, $72, $3A
	db	$D7, $2A, $04, $16
	db	$D6, $11, $D6, $81
	db	$B7, $D8, $81, $14
	db	$D6, $10, $D6, $81
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
	db	$11, $BF, $81
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
	db	$4F, $4A, $27, $03
	db	$0F, $10, $FA, $D6
	db	$02, $7A, $B7, $11
	db	$81
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
;
	db	$81
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
	db	$D7, $01, $00, $10
	db	$07, $9A, $CD, $25
	db	$3F, $9B, $B6, $59
	db	$13, $07, $81, $97
;
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
	db	$B6, $D0, $2B, $5D
	db	$A4, $70, $A1, $60
	db	$22, $05, $03, $81
	db	$08, $26, $06, $4F
	db	$07, $8E, $02, $AB
	db	$10, $AB, $10, $B7
	db	$D0, $CD, $25, $25
	db	$AB, $A8, $CD, $37
	db	$C6, $A4, $07, $BB
	db	$D0, $20, $28, $B6
	db	$D0, $CD, $25, $25
	db	$97, $B6, $78, $A1
	db	$17, $27, $2E, $22
	db	$0C, $B6, $D0, $D1
	db	$38, $38, $22, $0E
	db	$27, $11, $4C, $20
	db	$0E, $B6, $D0, $D1
	db	$38, $3F, $22, $06
	db	$27, $05, $D6, $38
	db	$38, $B1, $4A, $B7
	db	$D0, $CD, $25, $25
	db	$AB, $A8, $97, $B6
	db	$D0, $A4, $07, $CD
	db	$37, $9B, $CC, $38
	db	$47, $81, $15, $25
	db	$35, $41, $51, $65
	db	$71, $11, $20, $31
	db	$40, $50, $61, $70
	db	$A6, $00, $CD, $24
	db	$81, $B6, $D0, $2A
	db	$01, $81, $A4, $70
	db	$44, $CD, $24, $5B
	db	$B6, $D0, $A4, $07
	db	$A1, $01, $27, $16
	db	$25, $07, $AA, $30
	db	$C7, $02, $5C, $20
	db	$0D, $B6, $D0, $A0
	db	$10, $44, $44, $A4
	db	$18, $AB, $40, $CD
	db	$24, $5B, $A6, $C4
	db	$CC, $23, $EA
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
	db	$E8
X3899:
	db	$00, $07, $00, $1F
	db	$27, $00, $A6, $05
	db	$B7, $63, $A6, $80
	db	$CD, $39, $79, $27
	db	$0A, $CD, $07, $89
	db	$CD, $25, $3F, $3D
	db	$63, $26, $EF, $CD
	db	$25, $3F, $1D, $01
	db	$3F, $9E, $81
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
	db	$CD, $25, $3F, $CD
	db	$25, $3F, $AD, $5C
	db	$3F, $9F, $CD, $24
	db	$12, $81, $20, $EB
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
	db	$05, $9E, $13, $C6
	db	$02, $56, $AE, $07
	db	$0F, $9E, $0C, $07
	db	$9E, $22, $A6, $D0
	db	$AD, $5E, $26, $02
	db	$17, $9E, $81, $0D
	db	$9E, $0C, $06, $9E
	db	$13, $A6, $C0, $AD
	db	$4F, $26, $F3, $16
	db	$9E, $81, $A6, $13
	db	$5F, $0A, $9E, $04
	db	$A6, $23, $AE, $03
	db	$CD, $39, $79, $26
	db	$E1, $AE, $9E, $CC
	db	$25, $7C
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
	db	$B7, $56, $A4, $0F
	db	$4C, $B7, $57, $A6
	db	$9A, $AD, $20, $27
	db	$15, $B6, $56, $AD
	db	$39, $27, $0F, $D6
	db	$02, $50, $5C, $3D
	db	$57, $2A, $F4, $12
	db	$9E, $10, $9E, $4F
	db	$20, $02, $3A, $9E
;
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
	db	$B6, $58, $99, $49
	db	$15, $00, $13, $00
	db	$24, $04, $13, $04
	db	$20, $02, $12, $04
	db	$14, $00, $48, $26
	db	$EF, $15, $00, $CD
	db	$3A, $04, $13, $04
	db	$3D, $57, $26, $01
	db	$9B, $A6, $38, $01
	db	$00, $05, $4A, $26
	db	$FA, $9A, $81, $14
	db	$00, $9A, $3A, $57
	db	$2B, $11, $CD, $25
	db	$4E, $4F, $00, $00
	db	$0A, $A6, $38, $15
	db	$00, $00, $00, $03
	db	$4A, $26, $FA, $81
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
	db	$09, $7C, $EB, $AE
	db	$0D, $CD, $3C, $BB
	db	$C6, $02, $CD, $2A
	db	$E1, $A6, $04, $20
	db	$0F, $B7, $50, $AE
	db	$0D, $01, $5B, $00
	db	$CD, $3C, $C9, $01
	db	$5B, $D0, $B6, $50
	db	$AE, $CF, $CC, $37
	db	$9B, $0F, $60, $22
	db	$0D, $5D, $1F, $AE
	db	$23, $D6, $3F, $91
	db	$5A, $5A, $B1, $78
	db	$26, $11, $D6, $3F
	db	$91, $C7, $02, $D3
	db	$D6, $3F, $92, $C7
	db	$02, $D4, $A6, $FF
	db	$C7, $02, $D5, $5A
	db	$26, $E3, $81
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
	db	$C6, $02, $D1, $A5
	db	$08, $26, $06, $4C
	db	$C7, $02, $D1, $20
	db	$14, $9B, $0E, $01
	db	$10, $A6, $23, $CD
	db	$24, $C5, $C7, $02
	db	$D2, $C6, $02, $D1
	db	$AA, $80, $C7, $02
	db	$D1, $9A, $0F, $60
	db	$15, $10, $80, $C6
	db	$02, $D5, $27, $0E
	db	$4A, $C7, $02, $D5
	db	$26, $08, $A6, $20
	db	$C7, $02, $D3, $C7
	db	$02, $D4, $81
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
	db	$A6, $32, $B7, $90
	db	$81
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
	db	$1A, $8F, $15, $BC
	db	$18, $BC, $AE, $04
	db	$03, $01, $0C, $0A
	db	$91, $00, $AD, $42
	db	$C6, $02, $C4, $2A
	db	$02, $13, $01, $AE
	db	$05, $06, $91, $00
	db	$AD, $31, $AE, $09
	db	$01, $01, $0C, $08
	db	$91, $00, $AD, $2A
	db	$C6, $02, $C9, $2A
	db	$02, $11, $01, $05
	db	$8E, $11, $03, $5F
	db	$0E, $B6, $9C, $A1
	db	$F4, $22, $08, $AE
	db	$0A, $09, $6A, $00
	db	$CD, $3C, $B8, $03
	db	$8E, $08, $AE, $0B
	db	$0D, $6A, $00, $CD
	db	$3C, $B8, $81
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
	db	$46, $43, $49
;
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
	db	$2B, $20, $AB, $02
	db	$D7, $02, $C0, $2B
	db	$04, $81
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
	db	$C6, $02, $B3, $A1
	db	$03, $26, $11, $C6
	db	$02, $B4, $A1, $53
	db	$26, $03, $10, $90
	db	$81, $A6, $06, $CD
	db	$24, $9F, $1F, $5D
	db	$81, $DE, $3D, $20
	db	$DC, $3D, $28, $00
	db	$00, $20, $32, $4F
	db	$65, $6A, $7C, $4F
	db	$0E, $91, $02, $A6
	db	$08, $C7, $02, $B5
	db	$A6, $27, $CD, $24
	db	$C5, $C7, $02, $B8
	db	$4F, $05, $5F, $03
	db	$C6, $02, $A4, $C7
	db	$02, $BB, $02, $5F
	db	$3E, $20, $3C, $10
	db	$90, $A6, $F3, $00
	db	$8F, $07, $A6, $F2
	db	$02, $8F, $02, $A6
	db	$C2, $C7, $02, $B8
	db	$81, $1A, $8F, $01
	db	$8E, $05, $A6, $12
	db	$C7, $02, $B5, $A6
	db	$F2, $08, $8F, $0A
	db	$A6, $C2, $07, $8F
	db	$05, $01, $8E, $02
	db	$A6, $F3, $C7, $02
	db	$BB, $81, $4F, $12
	db	$01, $0B, $91, $01
	db	$4C, $C7, $02, $B5
	db	$06, $5F, $00, $A6
	db	$87, $25, $01, $4C
	db	$C7, $02, $BE, $81
	db	$0C, $6A, $0B, $20
	db	$09, $1A, $D5, $CD
	db	$24, $B4, $C6, $02
	db	$D7, $49, $A6, $C2
	db	$25, $01, $4C, $C7
	db	$02, $B8, $81, $C6
	db	$02, $D3, $C7, $02
	db	$B4, $C6, $02, $D4
	db	$C7, $02, $B5, $81
	db	$3F, $5B, $07, $8E
	db	$02, $3C, $5B, $C6
	db	$02, $B3, $AE, $80
	db	$CD, $37, $86, $C6
	db	$02, $B4, $AE, $81
	db	$CD, $37, $86, $C6
	db	$02, $B5, $AE, $82
	db	$CD, $37, $86, $C6
	db	$02, $B6, $AE, $83
	db	$CD, $37, $86, $A6
	db	$5A, $AE, $72, $CD
	db	$37, $86, $CD, $3E
	db	$EE, $07, $8E, $2E
	db	$3D, $5B, $26, $2A
	db	$AE, $12, $CD, $3E
	db	$B2, $AE, $00, $CD
	db	$3E, $C0, $A6, $0D
	db	$CD, $3E, $C8, $C6
	db	$02, $7C, $4A, $2A
	db	$F7, $AE, $30, $CD
	db	$3E, $B2, $AE, $02
	db	$CD, $3E, $C0, $A6
	db	$1B, $CD, $3E, $C8
	db	$C6, $02, $7C, $4A
	db	$2A, $F7, $81, $A6
	db	$81, $B7, $D0, $A6
	db	$41, $B7, $CE, $10
	db	$80, $1E, $94, $1F
	db	$60, $1D, $60, $1E
	db	$5D, $81, $AE, $CF
	db	$4F, $A3, $BE, $22
	db	$03, $D6, $3D, $CF
	db	$CD, $37, $9B, $CD
	db	$07, $89, $5A, $A3
	db	$A0, $24, $ED, $AE
	db	$80, $A6, $03, $CD
	db	$37, $86, $AE, $81
	db	$A6, $22, $CD, $37
	db	$86, $A6, $00, $AE
	db	$72, $CD, $37, $86
	db	$A6, $46, $CD, $23
	db	$EA, $CD, $1E, $B4
	db	$CD, $38, $EF, $CD
	db	$07, $89, $20, $FB
	db	$AE, $63, $A6, $A0
	db	$CD, $37, $86, $CD
	db	$24, $50, $A6, $C4
	db	$20, $E4, $00, $00
	db	$00, $00, $00, $00
	db	$00, $02, $08, $03
	db	$03, $03, $00, $00
	db	$03, $00, $02, $00
	db	$00, $10, $10, $10
	db	$10, $10, $10, $00
	db	$00, $00, $00, $00
	db	$00, $00
;
L3E8F:
	bclr	1,RAM1_08f
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
	db	$A6, $89, $C7, $02
	db	$7D, $A6, $8A, $C7
	db	$02, $7C, $A6, $0A
	db	$20, $0F, $4F, $C7
	db	$02, $7C, $A6, $11
	db	$20, $07, $C7, $02
	db	$7C, $A6, $19, $AE
	db	$89, $C7, $02, $7A
	db	$CF, $02, $7B, $1E
	db	$D6, $3F, $D9, $CD
	db	$07, $89, $CD, $47
	db	$F4, $07, $67, $F7
	db	$17, $67, $CD, $36
	db	$AE, $CD, $47, $AA
	db	$0E, $D6, $EC, $81
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
	db	$BF, $50, $B7, $51
	db	$A4, $0F, $A1, $09
	db	$23, $02, $AB, $06
	db	$B7, $58, $3F, $57
	db	$3F, $56, $5F, $B6
	db	$51, $AD, $0B, $B6
	db	$50, $AD, $04, $B6
	db	$50, $20, $03, $CD
	db	$25, $2C, $CD, $25
	db	$25, $B7, $52, $27
	db	$32, $1E, $59, $D6
	db	$3F, $8C, $BB, $58
	db	$25, $04, $1F, $59
	db	$A0, $60, $29, $02
	db	$A0, $06, $B7, $58
	db	$39, $59, $1E, $59
	db	$D6, $3F, $8B, $B9
	db	$57, $25, $04, $1F
	db	$59, $A0, $60, $29
	db	$02
X3F7A:
	db	$A0, $06, $B7, $57
	db	$39, $59, $24, $02
	db	$3C, $56, $3A, $52
	db	$26, $CE, $5C, $5C
	db	$81, $66, $7C, $68
	db	$BC, $A6, $FC, $30
	db	$30, $FB, $30, $31
	db	$FA, $30, $32, $FF
	db	$30, $33, $F4, $30
	db	$34, $08, $30, $35
	db	$EE, $30, $36, $EF
	db	$30, $37, $F0, $30
	db	$38, $F1, $30, $39
	db	$F2, $31, $30, $FD
	db	$31, $31, $FC, $A6
	db	$1F, $B7, $90, $19
	db	$6B, $1C, $95, $81
;
L3FBE:
	brclr	7,RAM1_060,L07D9
	brset	7,RAM1_092,L07D9
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
	db	$06, $60, $6B, $00
	db	$60, $5B, $08, $60
	db	$06, $0F, $93, $06
	db	$CC, $40, $6F, $CC
	db	$40, $82, $CD, $42
	db	$CC, $27, $58, $CD
	db	$42, $CC, $27, $53
	db	$B8, $93, $B7, $93
	db	$07, $93, $08, $09
	db	$93, $41, $0B, $93
	db	$38, $20, $3C, $0A
	db	$93, $00, $4F, $49
	db	$B8, $93, $46, $24
	db	$1B, $A4, $03, $97
	db	$C6, $02, $B1, $B0
	db	$68, $A1, $11, $25
	db	$0F, $A1, $17, $25
	db	$11, $A1, $22, $25
	db	$07, $A1, $2B, $22
	db	$03, $5D, $27, $0D
	db	$A6, $08, $B7, $93
	db	$20, $11, $5D, $27
	db	$F7, $A3, $04, $22
	db	$F3, $3C, $93, $20
	db	$06, $11, $60, $19
	db	$60, $3F, $93, $B6
	db	$68, $C7, $02, $B1
	db	$3F, $92, $81, $C6
	db	$02, $B1, $B0, $68
	db	$A1, $C8, $25, $03
	db	$16, $60, $81, $0B
	db	$93, $F0, $08, $93
	db	$ED, $A1, $3C, $25
	db	$E9, $07, $93, $05
	db	$A6, $38, $B7, $93
	db	$81, $B6, $93, $A1
	db	$25, $26, $DB, $18
	db	$60, $81, $0E, $95
	db	$0F, $08, $94, $0C
	db	$0F, $92, $B1, $08
	db	$92, $06, $06, $92
	db	$0C, $0C, $93, $39
	db	$81, $19, $60, $15
	db	$60, $13, $60, $20
	db	$4C, $17, $92, $5F
	db	$D6, $42, $D7, $27
	db	$22, $C1, $02, $B0
	db	$26, $08, $D6, $42
	db	$D8, $C1, $02, $B2
	db	$27, $05, $5C, $5C
	db	$5C, $20, $E9, $A1
	db	$04, $27, $00, $1D
	db	$93, $B6, $93, $A4
	db	$1F, $DE, $42, $D9
	db	$DC, $40, $D6, $AE
	db	$47, $CD, $42, $96
	db	$81, $1D, $93, $B6
	db	$93, $4C, $A4, $1F
	db	$A1, $02, $27, $F9
	db	$A1, $03, $27, $14
	db	$A1, $04, $27, $10
	db	$A1, $05, $27, $23
	db	$A0, $14, $24, $46
	db	$81, $A6, $01, $0B
	db	$69, $02, $A6, $02
	db	$CD, $42, $8C, $18
	db	$94, $1C, $93, $0E
	db	$92, $2E, $A6, $90
	db	$B7, $92, $C6, $02
	db	$B0, $AA, $20, $C7
	db	$02, $B0, $81, $CD
	db	$42, $8C, $18, $94
	db	$C6, $01, $20, $C7
	db	$02, $B4, $C6, $01
	db	$21, $C7, $02, $B5
	db	$C6, $01, $22, $C7
	db	$02, $B6, $C6, $01
	db	$23, $C7, $02, $B7
	db	$1E, $60, $1E, $5D
	db	$81, $A6, $13, $B7
	db	$93, $4F, $B7, $50
	db	$AE, $95, $CD, $42
	db	$96, $3F, $57, $CC
	db	$42, $15, $AE, $CE
	db	$4F, $CD, $37, $9B
	db	$5A, $A3, $C0, $24
	db	$F7, $20, $E2, $A1
	db	$06, $25, $09, $A1
	db	$08, $25, $07, $26
	db	$03, $CC, $42, $1B
	db	$A6, $05, $4C, $CD
	db	$42, $8C, $1E, $5D
	db	$CD, $3D, $01, $81
	db	$CE, $02, $B3, $27
	db	$13, $A3, $07, $22
	db	$10, $BF, $5B, $DE
	db	$42, $FC, $CD, $42
	db	$96, $18, $94, $BE
	db	$5B, $CD, $3D, $1A
	db	$81, $A3, $19, $26
	db	$FB, $05, $60, $F8
	db	$12, $60, $81, $CD
	db	$3D, $B1, $CC, $40
	db	$D6, $05, $8B, $03
	db	$CC, $40, $B4, $CE
	db	$02, $B3, $C6, $02
	db	$B4, $CD, $3F, $2D
	db	$B6, $57, $C1, $01
	db	$01, $26, $0F, $B6
	db	$58, $C1, $01, $02
	db	$26, $08, $CD, $36
	db	$5D, $15, $5D, $14
	db	$60, $81, $3C, $8B
	db	$CD, $36, $55, $A6
	db	$FF, $B7, $8C, $CC
	db	$3F, $C4, $20, $41
	db	$03, $60, $3D, $C6
	db	$02, $B3, $B7, $50
	db	$C6, $02, $B5, $B7
	db	$51, $A6, $12, $CD
	db	$42, $8C, $A6, $03
	db	$B7, $52, $BE, $51
	db	$9F, $A4, $FC, $27
	db	$0B, $A0, $30, $27
	db	$07, $A0, $30, $27
	db	$03, $CD, $37, $C7
	db	$3C, $51, $BE, $52
	db	$D7, $02, $B0, $3C
	db	$52, $C6, $02, $B0
	db	$4C, $C7, $02, $B0
	db	$A1, $0F, $27, $04
	db	$3A, $50, $26, $D6
	db	$81, $C6, $02, $B3
	db	$A1, $AB, $26, $0A
	db	$C6, $02, $B4, $A1
	db	$CD, $26, $03, $CC
	db	$3E, $27, $03, $60
	db	$EB, $C6, $02, $B3
	db	$C1, $01, $01, $26
	db	$E3, $C6, $02, $B4
	db	$C1, $01, $02, $26
	db	$DB, $CC, $3E, $61
	db	$3C, $50, $3C, $93
	db	$BE, $50, $A3, $0E
	db	$23, $05, $3F, $93
	db	$1E, $93, $81, $D6
	db	$01, $C0, $27, $EC
	db	$A3, $02, $27, $14
	db	$A3, $03, $27, $08
	db	$A3, $05, $27, $0C
	db	$A3, $06, $26, $0D
	db	$5A, $D1, $01, $C0
	db	$25, $D6, $20, $05
	db	$D1, $01, $C1, $23
	db	$CF, $A1, $33, $26
	db	$01, $4F, $B7, $51
	db	$BE, $57, $5C, $5C
	db	$5C, $A3, $0C, $23
	db	$03, $1C, $93, $81
	db	$BF, $57, $9F, $AB
	db	$03, $C7, $02, $B0
	db	$B6, $50, $48, $BB
	db	$50, $B7, $58, $BE
	db	$58, $D6, $43, $AF
	db	$BE, $57, $D7, $02
	db	$B0, $BE, $58, $D6
	db	$43, $B0, $BE, $57
	db	$D7, $02, $B1, $BE
	db	$58, $D6, $43, $B1
	db	$3D, $51, $26, $02
	db	$A4, $7F, $BE, $57
	db	$D7, $02, $B2, $18
	db	$94, $20, $85, $B7
	db	$93, $B6, $93, $A4
	db	$1F, $97, $DE, $42
	db	$F3, $1E, $93, $3F
	db	$56, $BF, $57, $1B
	db	$5D, $A3, $49, $26
	db	$02, $1A, $5D, $D6
	db	$43, $15, $C7, $02
	db	$B0, $A4, $0F, $A0
	db	$03, $B7, $58, $A6
	db	$FF, $C7, $02, $B1
	db	$BE, $57, $D6, $43
	db	$16, $BE, $56, $D7
	db	$02, $B2, $3C, $56
	db	$3C, $57, $3A, $58
	db	$2A, $EE, $1E, $95
	db	$18, $92, $81, $4F
	db	$03, $03, $02, $A6
	db	$20, $B8, $93, $A4
	db	$20, $81, $03, $00
	db	$00, $03, $07, $40
	db	$03, $05, $51, $04
	db	$04, $5E, $04, $29
	db	$77, $07, $10, $9A
	db	$08, $2B, $A0, $05
	db	$1B, $D1, $06, $03
	db	$D3, $00, $15, $01
	db	$0F, $1D, $2B, $38
	db	$3B, $3F, $43, $47
	db	$49, $57, $65, $70
	db	$7E, $86, $8E, $95
	db	$93, $9A, $9D, $A0
	db	$A3, $A6, $A9, $AC
	db	$AF, $B2, $B5, $B8
	db	$BB, $BE, $C1, $C4
	db	$81, $0F, $F6, $34
	db	$42, $30, $30, $33
	db	$35, $31, $38, $36
	db	$20, $20, $20, $0F
	db	$F6, $34, $42, $30
	db	$30, $33, $35, $31
	db	$35, $32, $20, $20
	db	$20, $0F, $F6, $20
	db	$52, $61, $64, $69
	db	$6F, $20, $20, $20
	db	$20, $20, $20, $0E
	db	$F6, $20, $20, $20
	db	$20, $20, $20, $20
	db	$30, $30, $30, $31
	db	$08, $F6, $00, $05
	db	$F5, $03, $53, $05
	db	$F5, $03, $56, $05
	db	$F5, $04, $AB, $44
	db	$0A, $0F, $E7, $10
	db	$08, $00, $06, $4E
	db	$C0, $17, $64, $80
	db	$25, $00, $87, $0F
	db	$E7, $25, $00, $F0
	db	$25, $00, $C2, $11
	db	$20, $20, $11, $20
	db	$20, $0C, $E7, $25
	db	$01, $11, $25, $00
	db	$F4, $25, $00, $C2
	db	$0F, $E7, $10, $01
	db	$00, $11, $20, $20
	db	$25, $00, $F5, $25
	db	$00, $88, $09, $E7
	db	$25, $00, $F6, $25
	db	$00, $C2, $09, $E7
	db	$25, $00, $F7, $25
	db	$00, $C2, $06, $E7
	db	$11, $20, $20, $03
	db	$FD, $06, $FC, $FF
	db	$FF, $88, $03, $51
	db	$A4, $02, $9C, $87
	db	$03, $58, $A4, $03
	db	$58, $9D, $03, $52
	db	$9D, $03, $54, $AC
	db	$03, $54, $A4, $03
	db	$55, $AC, $03, $55
	db	$A4, $03, $58, $9D
	db	$03, $56, $B1, $03
	db	$57, $B1, $03, $57
	db	$9D, $FF, $FF, $00
	db	$04, $14, $23, $00
	db	$81, $A6, $07, $CD
	db	$24, $9F, $A6, $14
	db	$CC, $23, $D9
;
L43E8:
	brclr	6,STACK_0ce,L03F5
	lda	STACK_0d0
	bit	#$F0
	bne	L03F5
	jmp	L448A
;
L43F4:
	db	$81, $81, $A6, $01
	db	$20, $02, $A6, $07
	db	$07, $D0, $F6, $BB
	db	$D0, $A4, $0F, $AA
	db	$08, $A1, $0D, $25
	db	$07, $26, $03, $A6
	db	$08, $C1, $A6, $0C
	db	$B7, $D0, $20, $00
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
	db	$0D, $CE, $CB, $BE
	db	$D0, $A6, $05, $0C
	db	$6A, $02, $A6, $07
	db	$A3, $01, $27, $3F
	db	$A6, $CA, $A3, $08
	db	$27, $39, $9F, $AE
	db	$07, $A1, $09, $27
	db	$12, $A1, $0A, $27
	db	$18, $A1, $0B, $26
	db	$1F, $E6, $A3, $D7
	db	$02, $57, $5A, $2A
	db	$F8, $20, $1E, $E6
	db	$DA, $D7, $02, $57
	db	$5A, $2A, $F8, $20
	db	$14, $D6, $44, $82
	db	$D7, $02, $57, $5A
	db	$2A, $F7, $20, $09
	db	$D6, $01, $90, $D7
	db	$02, $57, $5A, $2A
	db	$F7, $A6, $C4, $CC
	db	$23, $EA
X4479:
	db	$00, $01, $03, $04
	db	$05, $06, $08, $09
	db	$0A, $37, $31, $32
	db	$38, $2E, $31, $20
	db	$4D
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
	db	$F6
X44A2:
	db	$01, $F8, $02, $E7
	db	$06, $00
;
L44A8:
	rts
;
L44A9:
	brclr	1,STACK_0d2,L0521
	brset	0,STACK_0d2,L0521
	brclr	3,STACK_0cb,L04B6
	bclr	3,STACK_0cb
	bset	7,RAM1_05d
	brclr	6,RAM1_05d,L0521
	jmp	L45DF
;
L44BC:
	db	$03, $D2, $62, $A6
	db	$06, $B8, $D4, $B7
	db	$D4, $AE, $A6, $CD
	db	$37, $9B, $11, $D4
	db	$AE, $83, $04, $D4
	db	$0F, $AE, $8D, $20
	db	$0B, $03, $D2, $49
	db	$AE, $89, $A6, $01
	db	$B8, $D4, $B7, $D4
	db	$14, $6A, $20, $14
	db	$AE, $87, $C1, $AE
	db	$86, $C1, $AE, $85
	db	$C1, $AE, $84, $20
	db	$07, $AE, $8B, $C1
	db	$AE, $8A, $AD, $1E
	db	$11, $D4, $C6, $02
	db	$64, $A4, $ED, $C7
	db	$02, $64, $BF, $7D
	db	$1C, $94, $1E, $5D
	db	$19, $D2, $14, $CB
	db	$81, $08, $D2, $DA
	db	$08, $D2, $DA, $13
	db	$D2, $81, $A6, $50
	db	$B7, $77, $81, $A6
	db	$90, $B7, $77, $18
	db	$D2, $81, $B6, $78
	db	$A4, $07, $B7, $C8
	db	$4A, $CD, $25, $72
	db	$C4, $02, $66, $26
	db	$0C, $A6, $88, $CD
	db	$23, $F3, $B6, $C8
	db	$AA, $20, $CD, $24
	db	$A8, $B6, $C8, $AA
	db	$C0, $97, $20, $B4
	db	$A6, $05, $CD, $24
	db	$73, $C6, $02, $60
	db	$A4, $07, $B7, $C8
	db	$C6, $02, $65, $A5
	db	$06, $26, $46, $A5
	db	$08, $26, $0C, $A4
	db	$F0, $A1, $A0, $27
	db	$06, $A1, $B0, $26
	db	$0B, $16, $D4, $A6
	db	$20, $CD, $24, $A8
	db	$AE, $08, $20, $29
	db	$C6, $02, $67, $2A
	db	$08, $A4, $07, $B7
	db	$C8, $AE, $89, $20
	db	$1C, $C6, $02, $66
	db	$A4, $3F, $27, $E3
	db	$00, $D2, $10, $05
	db	$D4, $0D, $C6, $02
	db	$64, $A4, $24, $26
	db	$06, $AE, $83, $BF
	db	$7D, $1C, $94, $AE
	db	$C8, $9F, $CC, $23
	db	$D9, $CD, $24, $4D
	db	$B6, $C8, $AA, $30
	db	$C7, $02, $59, $C6
	db	$02, $65, $44, $A4
	db	$03, $AA, $30, $C7
	db	$02, $5E, $A6, $C4
	db	$CC, $23, $EA, $3F
	db	$56, $17, $CB, $04
	db	$6A, $12, $13, $D4
	db	$10, $D4, $C6, $02
	db	$64, $A5, $12, $26
	db	$02, $11, $D4, $05
	db	$D4, $02, $12, $D4
	db	$4F, $01, $D4, $02
	db	$18, $56, $03, $D4
	db	$02, $A6, $10, $CD
	db	$24, $1C, $81
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
	db	$F8
X45F9:
	db	$2B, $E7, $28, $EF
	db	$2B, $F0, $28, $ED
	db	$5F, $8D, $38, $4D
	db	$5A, $CD, $54, $F3
	db	$5F, $93, $35, $53
	db	$5A, $D3, $51, $FD
	db	$5F, $9D, $38, $5D
	db	$5A, $DD, $54, $FC
	db	$5F, $9C, $35, $5C
	db	$5A, $DC, $51, $F1
	db	$5F, $91, $38, $51
	db	$5A, $D1, $54, $F2
	db	$5F, $92, $35, $52
	db	$5A, $D2, $51, $EC
	db	$00, $08, $00, $0B
	db	$19, $E0, $66, $00
;
L4639:
	rts
;
	db	$81
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
	jmp	L4739
;
	db	$81, $A6, $8B, $C1
	db	$A6, $8A, $14, $CB
	db	$03, $7C, $0B, $A6
	db	$88, $0E, $D3, $66
	db	$15, $D2, $A6, $80
	db	$20, $60, $06, $7F
	db	$E7, $0A, $7F, $E4
	db	$B7, $7B, $13, $6A
	db	$17, $6A, $0B, $D3
	db	$55, $17, $7B, $20
	db	$51, $14, $CB, $06
	db	$6A, $44, $16, $6A
	db	$A6, $89, $20, $42
	db	$18, $BC, $A6, $40
	db	$B8, $D3, $B7, $D3
	db	$AE, $A5, $CD, $37
	db	$9B, $20, $39, $07
	db	$6A, $04, $1A, $D3
	db	$20, $06, $A6, $20
	db	$B8, $D3, $B7, $D3
	db	$AE, $A5, $CD, $37
	db	$9B, $03, $7C, $10
	db	$A6, $8B, $01, $7C
	db	$06, $04, $7C, $BC
	db	$4A, $20, $B9, $05
	db	$7C, $B6, $20, $F8
	db	$07, $6A, $11, $20
	db	$05, $A6, $8E, $03
	db	$7C, $02, $A6, $8F
	db	$17, $6A, $B7, $7B
	db	$13, $6A, $1A, $94
	db	$1E, $5D, $81
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
	db	$0B, $D3, $03, $02
	db	$6A, $36, $01, $7C
	db	$09, $A6, $03, $04
	db	$7C, $0B, $A6, $04
	db	$20, $07, $A6, $03
	db	$05, $7C, $02, $A6
	db	$04, $13, $6A, $CC
	db	$23, $EA
;
L471A:
	bclr	4,STACK_0cb
	clra
	brclr	7,STACK_0d3,L0725
	brclr	2,STACK_0d3,L072A
	bra	L0728
;
	db	$07, $6A, $02, $AA
	db	$10, $B7, $56, $B6
	db	$D3, $A4, $60, $09
	db	$56, $02, $A4, $40
	db	$CD, $24, $1C, $81
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
	db	$F9
X4753:
	db	$6C, $0B, $28, $04
	db	$42, $08, $42, $F3
	db	$00, $ED, $03, $FC
	db	$00, $FD, $03, $F2
	db	$00, $F1, $03, $05
	db	$33, $00
;
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
	db	$0A, $02, $04, $A2
	db	$82, $A4, $08, $0C
X4870:
	db	$A6
X4871:
	db	$0E, $00, $CE, $00
	db	$7D, $00, $7B, $02
	db	$B8, $00, $B7, $02
	db	$80, $00, $D5, $00
	db	$CE, $02, $B0, $00
	db	$6B
X4886:
	db	$46, $D2, $D4, $D6
	db	$E2, $48, $E6, $44
	db	$E4, $E8, $42
X4891:
	db	$00
X4892:
	db	$6A, $02, $61, $02
	db	$60, $02, $64, $02
	db	$60, $00, $7C, $02
	db	$B8, $00, $91, $00
	db	$A3, $02, $B0, $00
	db	$92
X48A7:
	db	$02
X48A8:
	db	$68, $02, $5E, $06
	db	$18, $04, $19, $00
	db	$12, $5E, $81
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
	db	$00, $5E, $5E, $01
	db	$50, $03
;
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
	db	$9A, $10, $5E
;
L4982:
	rts
;
	db	$00, $5E, $3E, $01
	db	$50, $05, $CD, $49
	db	$82, $20, $0F, $3F
	db	$56, $18, $56
;
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
	db	$00, $5E, $1C
;
L49A8:
	bclr	5,PortA
	bset	5,DDRA
	bclr	5,PortA
	rts
;
	db	$01, $50, $12, $4D
	db	$2A, $F0, $1B, $04
	db	$3F, $56, $18, $56
	db	$0A, $00, $08, $3A
	db	$56, $2A, $F9, $20
	db	$B6
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
	db	$D7, $02, $68, $AD
	db	$AF, $CD, $49, $63
	db	$20, $0B, $1B, $04
	db	$CD, $49, $63, $0B
	db	$00, $03, $10, $5E
	db	$9A, $B6, $52, $BB
	db	$51, $28, $02, $A0
	db	$10, $B7, $51, $CD
	db	$49, $83, $20, $9A
;
L4A15:
	rts
;
	db	$04, $8B, $3A, $0D
	db	$5D, $37, $CC, $4A
	db	$C2, $19, $BA, $1E
	db	$5D, $A6, $70, $B7
	db	$77, $81, $0E, $CE
	db	$29, $07, $8B, $05
	db	$0F, $8B, $1B, $17
	db	$8B, $18, $B3, $3F
	db	$CE, $1E, $CE, $3C
	db	$8B, $15, $8B, $A6
	db	$10, $C7, $02, $9E
	db	$4F, $C7, $02, $9F
	db	$A6, $0C, $0F, $8B
	db	$4F, $C1, $A6, $0B
	db	$12, $CB, $CD, $23
	db	$F3, $81, $1F, $CE
	db	$CE, $02, $9E, $C3
	db	$01, $01, $26, $0F
	db	$C6, $02, $9F, $C1
	db	$01, $02, $26, $07
	db	$BF, $8C, $B7, $8D
	db	$CC, $36, $5D, $0E
	db	$8B, $C3, $CC, $36
	db	$55, $5F, $C1, $AE
	db	$01, $A6, $70, $DB
	db	$02, $9E, $25, $11
	db	$AB, $A0, $20, $0D
	db	$5F, $C1, $AE, $01
	db	$A6, $F7, $DB, $02
	db	$9E, $29, $02, $AB
	db	$0A, $D7, $02, $9E
	db	$A6, $50, $B7, $77
	db	$14, $CB, $13, $CB
	db	$1E, $5D, $81
;
L4A9D:
	lda	#$0B
	brset	7,STACK_0ce,L02A5
	brclr	3,RAM1_08b,L02A7
	lda	#$C6
	jsr	L23D9
	rts
;
	db	$06, $8B, $0C, $0E
	db	$8B, $09, $A6, $20
	db	$02, $8B, $05, $48
	db	$00, $8B, $01, $4F
	db	$5F, $CD, $24, $03
	db	$CC, $24, $13, $5F
	db	$0E, $CE, $02, $AE
	db	$10, $D6, $4A, $DF
	db	$B7, $56, $D6, $4A
	db	$DE, $27, $0B, $CD
	db	$27, $97, $26, $F1
	db	$DE, $4A, $DD, $DD
	db	$4A, $1F, $81, $E1
	db	$54, $41, $54, $E2
	db	$63, $42, $63, $E3
	db	$56, $43, $56, $E4
	db	$65, $44, $65, $FE
	db	$00, $7E, $09, $00
;
L4AF3:
	brset	7,RAM1_096,L0302
	lda	ICL2
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
	db	$B6, $56, $B1, $84
	db	$24, $12, $B6, $9C
	db	$D1, $4C, $62, $22
	db	$0B, $26, $07, $B6
	db	$9D, $D1, $4C, $63
	db	$24, $02, $3C, $56
	db	$B6, $56, $B1, $84
	db	$27, $07, $B7, $84
	db	$0B, $CE, $02, $1E
	db	$5D, $81, $4F, $B7
	db	$51, $B7, $53, $A6
	db	$04, $B7, $52, $3C
	db	$53, $26, $05, $3C
	db	$52, $0C, $52, $11
	db	$AD, $2D, $27, $F3
	db	$B6, $52, $D7, $02
	db	$C0, $B6, $53, $D7
	db	$02, $D0, $5D, $26
	db	$E6, $B6, $53, $AB
	db	$FF, $B7, $53, $25
	db	$06, $3A, $52, $2A
	db	$02, $20, $D8, $AD
	db	$0E, $27, $EE, $B6
	db	$52, $D7, $02, $E0
	db	$B6, $53, $D7, $02
	db	$F0, $20, $E2, $A6
	db	$50, $B7, $50, $B6
	db	$84, $B7, $51, $B6
	db	$52, $B7, $98, $B6
	db	$53, $B7, $99, $CD
	db	$4B, $17, $3A, $50
	db	$26, $F1, $CD, $4B
	db	$50, $97, $B1, $51
	db	$81
X4C08:
	db	$4A
X4C09:
	db	$04, $3A, $98, $30
	db	$7E, $29, $5C, $24
	db	$0F, $1F, $F6, $1C
	db	$B3, $1A, $0B, $00
	db	$00, $5D, $C0, $46
	db	$50, $38, $40, $2E
	db	$E0, $28, $2E, $23
	db	$28, $1F, $40, $1C
	db	$20, $00, $00, $75
	db	$30, $52, $B9, $3F
	db	$EB, $34, $15, $2B
	db	$F2, $26, $02, $21
	db	$7C, $1D, $EC, $00
	db	$00, $9C, $40, $64
	db	$72, $4A, $03, $3A
	db	$98, $30, $7D, $29
	db	$5C, $24, $0F, $1F
	db	$F6, $00, $00, $C8
	db	$E4, $75, $30, $52
	db	$B9, $3F, $EB, $34
	db	$15, $2B, $F2, $26
	db	$02, $21, $7C, $00
	db	$00, $52, $B9, $3F
	db	$EB, $34, $15, $2B
	db	$F2, $26, $02, $21
	db	$7C, $1D, $EC, $1B
	db	$0B, $00, $00, $6C
	db	$2D, $4E, $20, $3D
	db	$24, $32, $39, $2A
	db	$9D, $25, $02, $20
	db	$B4, $1D, $4C, $00
	db	$00, $8C, $A0, $5D
	db	$C0, $46, $50, $38
	db	$40, $2E, $E0, $28
	db	$2E, $23, $28, $1F
	db	$40, $00, $00, $C8
	db	$E4, $75, $30, $52
	db	$B9, $3F, $EB, $34
	db	$15, $2B, $F2, $26
	db	$02, $21, $7C, $00
	db	$00, $FB, $1D, $8C
	db	$A0, $5D, $C0, $46
	db	$50, $38, $40, $2E
	db	$E0, $28, $2E, $23
	db	$28, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00, $00
	db	$00, $00, $00
