;
;	Disassembled by:
;		DASMx object code disassembler
;		(c) Copyright 1996-2003   Conquest Consultants
;		Version 1.40 (Oct 18 2003)
;
;	File:		chorus_1_volume_fixed.bin
;
;	Size:		31232 bytes
;	Checksum:	48C8
;	CRC-32:		3FA3AF90
;
;	Date:		Tue Jun 19 12:12:22 2018
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
	jsr	L374A
	bne	L0423
	lda	#$53
L0410:
	cmp	RAM1_06b
	bne	L0423
	jsr	L2141
	jsr	L2069
L041A:
	clr	RAM1_06b
	bclr	3,PortB
	bset	3,DDRB
	jmp	L0506
;
L0423:
	db	$CD
;
L0424:
	bra	L0457
;
	db	$CC
;
L0427:
	brset	2,STACK_0f1,L03F7
	asr	RAM1_078
L042C:
	lda	SCDR
	jmp	L04B0
;
	db	$B6, $13, $B6
;
L0434:
	bclr	4,RAM1_080
	brset	7,TSR,L04A3
;
L0439:
	db	$07, $13
;
L043B:
	clra
	lda	OCL2
	add	#$88
	tax
L0441:
	lda	OCH2
	adc	#$13
L0445:
	sta	OCH2
	lda	TSR
	stx	OCL2
	bset	3,RAM1_067
	brclr	1,DDRC,L0453
	brset	1,PortC,L0455
L0453:
	bset	4,RAM1_05d
L0455:
	bclr	1,PortC
L0457:
	tst	RAM1_063
	beq	L045D
	dec	RAM1_063
L045D:
	dec	RAM1_068
	bne	L0463
	bset	7,RAM1_067
L0463:
	jsr	L376B
	lda	RAM1_068
	bit	#$3F
	bne	L046E
	bset	6,RAM1_067
L046E:
	bit	#$03
	bne	L047C
	bset	4,RAM1_067
	jsr	L4C73
	jsr	L223C
	lda	RAM1_068
L047C:
	bit	#$0F
	bne	L048B
	bset	5,RAM1_067
	brset	2,RAM1_05e,L0489
	lda	ACH
	bra	L049A
;
L0489:
	bclr	2,RAM1_05e
L048B:
	brclr	6,TSR,L04B0
	bset	2,RAM1_05e
	ldx	OCL1
L0492:
	lda	OCH1
	brclr	0,RAM1_061,L049A
	jsr	L0B9E
L049A:
	sta	OCH1
L049C:
	stx	OCL1
	bra	L04B0
;
	db	$0F, $13, $05
;
L04A3:
	jsr	L21DD
L04A6:
	bra	L04B0
;
	db	$09, $13, $05, $CD
	db	$4C, $57, $B6, $1D
;
L04B0:
	brclr	7,TSR,L04BE
L04B3:
	brset	4,RAM1_05e,L04BE
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
L04C7:
	brset	4,RAM1_05e,L04D2
	bset	4,RAM1_05e
	bclr	1,TCR
L04CE:
	bset	3,RAM1_076
;
	db	$B6
;
L04D1:
	bclr	2,RAM1_09a
	rts
;
L04D4:
	lda	#$53
L04D6:
	sta	RAM1_06b
	bset	0,Miscell
L04DA:
	stop
	bra	L04D4
;
	db	$A6, $28
;
L04DF:
	deca
;
L04E0:
	db	$27
;
L04E1:
	brclr	1,X002E,L04DF
	rti
;
L04E5:
	brset	7,RAM1_0ba,L04ED
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
	bclr	5,RAM1_0ba
	bclr	3,RAM1_061
	jsr	L071F
	bset	3,RAM1_061
	bclr	5,PortB
	bclr	5,RAM1_06a
L0501:
	jsr	L2643
	bset	5,PortB
L0506:
	rsp
	bclr	2,RAM1_05d
	brset	1,Miscell,L04D4
L050C:
	sei
	jsr	L2118
	cli
L0511:
	brset	0,RAM1_061,L051E
L0514:
	bclr	7,RAM1_061
	brset	6,RAM1_061,L051B
	bclr	6,RAM1_05f
L051B:
	jmp	L08B2
;
L051E:
	bil	L04ED
	brclr	3,RAM1_061,L04F1
	jsr	L3815
	bclr	3,STACK_0ce
	bclr	6,RAM1_05f
;
	db	$04, $12
;
L052C:
	brset	1,OCL1,L0530
	bset	2,TCR
L0531:
	bset	4,TCR
	bset	0,PortB
	brset	3,RAM1_07f,L0541
	brset	2,RAM1_07f,L0541
	brset	7,RAM1_069,L0541
	jsr	L0B8C
L0541:
	jsr	L2082
	jsr	L2079
L0547:
	brset	0,RAM1_0a1,L055C
	bclr	2,DDRC
	bclr	3,DDRC
	jsr	L2643
	lda	PortC
	and	#$0C
	bne	L0560
;
	db	$1B
;
L0558:
	rol	DDRC,x
	stop
	brset	5,TCH,L05C7
	bra	L0568
;
L0560:
	bset	5,RAM1_069
L0562:
	bclr	1,RAM1_081
	bclr	3,RAM1_08e
	bclr	4,RAM1_069
L0568:
	bset	2,DDRC
	bset	3,DDRC
L056C:
	cli
	brclr	6,RAM1_0ba,L0573
	brset	5,RAM1_061,L057D
L0573:
	jsr	L1375
	bset	5,RAM1_061
;
	db	$CD, $07
;
L057A:
	bclr	1,ICL1
;
	db	$9E
;
L057D:
	brset	6,RAM1_061,L0585
	jsr	L3155
L0583:
	bset	6,RAM1_061
L0585:
	brset	4,RAM1_061,L0591
	jsr	L2725
	jsr	L1EF3
	jsr	L48DF
L0591:
	bset	4,RAM1_061
	brset	2,RAM1_09e,L0599
L0596:
	jsr	L39C1
L0599:
	jsr	L0713
L059C:
	jsr	L36FC
	jsr	L3B0A
	jsr	L0B2F
	clrx
L05A6:
	jsr	L2649
	brclr	3,RAM1_08b,L05BB
	lda	#$0B
L05AE:
	brset	4,RAM1_08b,L05B6
	lda	#$1A
	brclr	1,RAM1_081,L05BB
L05B6:
	jsr	L24E5
	bset	1,STACK_0cb
L05BB:
	clr	RAM1_067
	clr	RAM1_068
L05BF:
	brclr	4,RAM1_0bb,L05C4
L05C2:
	bset	2,RAM1_094
L05C4:
	sei
	bset	4,Miscell
L05C7:
	bset	7,TCR
	cli
L05CA:
	brset	7,RAM1_069,L05D4
	brclr	5,RAM1_0bb,L05D4
	bset	7,RAM1_069
L05D2:
	bset	1,RAM1_05d
L05D4:
	jsr	L0785
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
	jsr	L22BD
	jsr	L3164
	jsr	L4C7B
	jsr	L142B
	jsr	L37F4
	jsr	L40DD
	jsr	L4955
	jsr	L27CF
;
	db	$CD
;
L0604:
	beq	L05C8
	jsr	L1F1C
	jsr	L3A48
	jsr	L3B88
	jsr	L0614
	bra	L05C4
;
L0614:
	brset	3,RAM1_067,L062D
L0617:
	brset	2,RAM1_067,L0640
	brset	1,RAM1_067,L0647
	brset	0,RAM1_067,L0670
	brset	4,RAM1_067,L0649
	brset	5,RAM1_067,L065A
	brset	6,RAM1_067,L0665
	brset	7,RAM1_067,L066D
L062C:
	rts
;
L062D:
	bclr	3,RAM1_067
	bset	2,RAM1_067
	jsr	L200B
	jsr	L386E
L0637:
	jsr	L274E
	jsr	L23CE
	jmp	L39F4
;
L0640:
	bclr	2,RAM1_067
	bset	1,RAM1_067
;
	db	$CC
;
L0645:
	brclr	3,TCL,L0668
	inc	TCL,x
	asr	STACK_0cd,x
	beq	L067E
	jsr	L1EF4
	jsr	L3173
	jsr	L3CE1
	jmp	L27C3
;
L065A:
	bclr	5,RAM1_067
	jsr	L1419
	jsr	L3D06
L0662:
	jmp	L3730
;
L0665:
	bclr	6,RAM1_067
	jsr	L3BA2
	jmp	L4CB4
;
L066D:
	bclr	7,RAM1_067
	rts
;
L0670:
	bclr	0,RAM1_067
	jsr	L490B
	jsr	L316A
	jsr	L3BFE
	brset	7,RAM1_060,L06A4
L067E:
	brclr	3,RAM1_08b,L069E
	brset	3,STACK_0ce,L069B
L0684:
	brclr	6,RAM1_05d,L0692
	bclr	1,STACK_0cb
	jsr	L38D0
	jsr	L454C
L068F:
	jsr	L2174
L0692:
	jsr	L34F7
	jsr	L479C
	jsr	L460C
L069B:
	jsr	L28B0
L069E:
	jsr	L2D55
	jsr	L4B76
L06A4:
	jsr	L4541
	jsr	L3BD8
	bclr	6,RAM1_05d
	brclr	7,RAM1_060,L06B2
	jsr	L2D55
L06B2:
	jmp	L0BBE
;
	db	$13
;
L06B6:
	asr	SCSR,x
	asr	SCCR2,x
	tstx
	rorx
	bclr	7,RAM1_05d
	lda	STACK_0ca
	and	#$0F
	ldx	#$03
	mul
	tax
	cpx	#$21
	bcc	L0712
	jsr	L06E5,x						;INFO: index jump
	lda	STACK_0ca
	jsr	L2617
	and	#$03
	ldx	#$03
	mul
	tax
	cpx	#$0C
	bcc	L0712
	jsr	L0706,x						;INFO: index jump
	brclr	6,STACK_0ca,L0712
	jmp	L2CD3
;
L06E5:
	db	$CC, $06, $2C, $CC
	db	$2B, $51, $CC, $48
	db	$33, $CC, $46, $A7
	db	$CC, $36, $AB, $CC
	db	$39, $4C
;
L06F7:
	jmp	L30C1
;
	db	$CC, $06, $2C, $CC
	db	$4B, $FD, $CC, $45
	db	$78, $CC, $45, $42
L0706:
	db	$CC, $4C, $0F, $CC
;
L070A:
	bmc	L0742
	jmp	L487B
;
	db	$CC
;
L0710:
	asra
;
	db	$1A
;
L0712:
	rts
;
L0713:
	jsr	L142B
;
	db	$CD, $37
;
L0718:
	and	,x
L0719:
	jsr	L1407
	jmp	L37B0
;
L071F:
	clr	RAM1_066
	lda	RAM1_065
	sta	RAM2_02b0
	bclr	7,RAM1_069
	brclr	4,RAM1_061,L0733
	jsr	L0B8C
;
	db	$CD, $48
;
L0730:
	ora	X1961
L0733:
	lda	#$0A
	sta	RAM1_050
	bset	2,TCR
	bset	4,TCR
	bih	L073F
	bclr	6,RAM1_0ba
L073F:
	jsr	L2631
L0742:
	brset	1,PortC,L0747
	bset	4,RAM1_05d
L0747:
	bclr	1,PortC
L0749:
	jsr	L0785
	lda	RAM1_065
	sub	RAM2_02b0
	cmp	#$03
	bcs	L0757
	bset	5,RAM1_060
L0757:
	lda	#$27
	jsr	L25B7
	cmp	#$19
	bcs	L0772
	cmp	#$53
	bhi	L076E
	bclr	6,RAM1_061
	bclr	5,RAM1_061
	bclr	7,RAM1_061
	bclr	6,RAM1_05f
	bra	L073F
;
L076E:
	cmp	#$73
	bcs	L0733
L0772:
	bil	L0733
	dec	RAM1_050
	bne	L073F
	rts
;
L0779:
	jsr	L0B8C
L077C:
	jsr	L48CA
	jsr	L209E
L0782:
	jmp	L0506
;
L0785:
	brset	4,RAM1_05d,L078F
	brclr	1,Miscell,L078E
;
	db	$03, $03
;
L078D:
	bhcs	L0710
L078F:
	lda	#$06
	brset	1,Miscell,L0796
	lda	#$01
L0796:
	add	RAM1_066
	sta	RAM1_066
	bcc	L07B7
L079C:
	lda	#$01
	add	RAM1_065
	sta	RAM1_065
	bcc	L07B7
	brset	7,RAM1_064,L07B7
	inc	RAM1_064
	bpl	L07B7
L07AB:
	brset	2,RAM1_08b,L07B7
	brset	1,RAM1_05f,L07B7
	brclr	0,RAM1_061,L07B7
L07B4:
	jmp	L08A2
;
L07B7:
	bclr	4,RAM1_05d
	brclr	1,DDRC,L07C0
L07BC:
	bclr	1,DDRC
L07BE:
	bra	L07D3
;
L07C0:
	lda	RAM1_062
	brclr	1,PortC,L07C9
L07C5:
	add	#$20
	bra	L07CB
;
L07C9:
	sub	#$20
L07CB:
	bcs	L07CF
L07CD:
	sta	RAM1_062
L07CF:
	bset	1,DDRC
L07D1:
	bset	1,PortC
L07D3:
	clra
	brset	2,PortD,L07D9
	ora	#$01
L07D9:
	brset	0,PortD,L07DE
L07DC:
	ora	#$02
L07DE:
	brclr	7,RAM1_05e,L07E3
	ora	#$04
L07E3:
	brclr	1,PortD,L07E8
	ora	#$10
L07E8:
	tst	RAM1_062
	bpl	L07EE
L07EC:
	ora	#$08
;
L07EE:
	db	$0D
;
L07EF:
	brclr	1,PortC,L079C
	rti
;
L07F3:
	eor	RAM1_05f
	and	#$9F
	beq	L0067
L07F9:
	sta	RAM1_05b
	eor	RAM1_05f
	sta	RAM1_05f
	brclr	3,RAM1_05f,L0006
	bset	5,RAM1_05f
	bra	L0010
;
	db	$0F, $5F, $02, $1A
	db	$5F, $02, $5F, $02
	db	$1B, $5F, $01, $5B
	db	$0D, $00, $5F, $7F
	db	$0C, $5F, $03, $01
	db	$61, $04, $1D, $5F
	db	$20, $94, $0F, $60
	db	$03, $0A, $5D, $25
	db	$1B, $5D, $02, $5F
	db	$0A, $03, $5B, $1D
	db	$01, $61, $78, $12
	db	$61, $20, $6D, $00
	db	$61, $08, $03, $5B
	db	$10, $00, $5F, $59
	db	$1A, $5F, $13, $61
	db	$03, $5B, $06, $01
	db	$5F, $03, $06, $CE
	db	$4C, $09, $5B, $13
	db	$00, $61, $03, $03
	db	$5F, $0D, $07, $60
	db	$0A, $17, $60, $08
	db	$5F, $02, $10, $60
	db	$02, $0C, $03, $05
	db	$5B, $03, $01, $61
	db	$42, $81, $CD, $20
	db	$82, $CD, $20, $79
	db	$CD, $48, $DF, $A6
	db	$C8, $B7, $63, $3D
	db	$63, $27, $33, $07
	db	$67, $05, $17, $67
	db	$CD, $49, $0B, $CD
	db	$49, $55, $CD, $40
	db	$DD, $0F, $92, $EB
	db	$08, $92, $E8, $10
	db	$61, $1E, $60, $1C
	db	$60, $20, $14, $19
	db	$61, $10, $61, $3F
	db	$93, $03, $5F, $0B
	db	$13, $61, $20, $07
;
L08A2:
	bclr	0,RAM1_061
	brclr	1,RAM1_05f,L00A9
	bset	5,RAM1_05f
	jmp	L0506
;
	db	$A6, $08, $B7, $60
	db	$20, $F7
;
L08B2:
	bclr	7,RAM1_069
	brset	4,RAM1_060,L0068
	brset	0,RAM1_060,L00BE
	lda	#$08
	sta	RAM1_060
	brset	3,RAM1_07f,L00C7
	brset	2,RAM1_07f,L00C7
	jsr	L0B8C
	brset	5,RAM1_05f,L00D0
	jsr	L0B8C
	jsr	L48CA
	jsr	L22BD
	clr	PLMA
	bih	L00DA
	jmp	L04E5
;
	db	$05, $9E, $03, $CD
	db	$39, $A4, $0C, $5F
	db	$03, $CD, $31, $61
	db	$0A, $5F, $03, $CD
	db	$20, $9E, $CD, $07
	db	$85, $0C, $5F, $07
	db	$11, $01, $AE, $02
	db	$CD, $26, $49, $0A
	db	$5F, $0B, $0D, $5F
	db	$21, $0B, $61, $05
	db	$00, $A1, $2D, $20
	db	$19, $CD, $20, $82
	db	$0D, $5F, $1D, $17
	db	$00, $16, $04, $CD
	db	$13, $75, $A6, $89
	db	$B7, $B3, $B6, $C4
	db	$B7, $B7, $1A, $61
	db	$20, $12, $0F, $64
	db	$07, $1D, $5F, $AE
	db	$02, $CD, $26, $49
	db	$1B, $61, $CD, $31
	db	$61, $CD, $13, $C5
	db	$0B, $5F, $2F, $13
	db	$81, $14, $12, $18
	db	$12, $16, $8B, $CD
	db	$20, $79, $CD, $48
	db	$DF, $CD, $0B, $2F
	db	$18, $61, $10, $80
	db	$A6, $80, $B7, $7D
	db	$B7, $7B, $07, $8E
	db	$02, $AA, $10, $B7
	db	$D5, $1C, $94, $1A
	db	$94, $12, $94, $19
	db	$6B, $1C, $95, $CC
	db	$09, $C6, $15, $12
	db	$0A, $61, $F8, $CD
	db	$31, $61, $07, $60
	db	$31, $04, $5F, $03
	db	$CC, $0A, $6D, $CD
	db	$20, $B4, $A6, $FA
	db	$B7, $12, $A6, $64
	db	$B7, $63, $CD, $07
	db	$85, $CD, $40, $DD
	db	$08, $60, $3A, $0A
	db	$5F, $37, $CD, $22
	db	$BD, $07, $67, $05
	db	$17, $67, $CD, $23
	db	$CE, $0D, $5F, $E6
	db	$3D, $63, $26, $E2
	db	$20, $23, $CD, $20
	db	$65, $A6, $5A, $B7
	db	$12, $A6, $FA, $B7
	db	$63, $CD, $07, $85
	db	$CD, $40, $DD, $08
	db	$60, $0F, $0A, $5F
	db	$0C, $06, $60, $09
	db	$09, $5F, $EA, $3D
	db	$63, $26, $EA, $16
	db	$60, $CC, $05, $06
	db	$A6, $64, $B7, $63
	db	$A6, $1E, $B7, $68
	db	$1D, $67, $13, $01
	db	$A6, $5B, $B7, $A6
	db	$9A, $0D, $5F, $0E
	db	$CD, $14, $2B, $CD
	db	$37, $F4, $CD, $34
	db	$F7, $CD, $31, $64
	db	$10, $01, $CD, $07
	db	$85, $CD, $40, $DD
	db	$08, $60, $D2, $2E
	db	$73, $CD, $4C, $7B
	db	$CD, $22, $BD, $05
	db	$12, $03, $CD, $49
	db	$55, $07, $67, $D4
	db	$17, $67, $CD, $23
	db	$CE, $0D, $5F, $11
	db	$CD, $14, $07, $CD
	db	$37, $B0, $CD, $31
	db	$6A, $0B, $67, $05
	db	$1B, $67, $CD, $14
	db	$19, $05, $12, $32
	db	$0B, $5F, $A2, $CD
	db	$2D, $55, $CD, $0B
	db	$BE, $CD, $49, $0B
	db	$09, $67, $A9, $19
	db	$67, $3A, $A7, $27
	db	$15, $0E, $5F, $9C
	db	$B6, $9A, $A1, $F0
	db	$25, $96, $07, $5F
	db	$97, $02, $5F, $94
	db	$A6, $02, $B7, $A6
	db	$20, $8E, $3A, $A6
	db	$26, $8A, $1B, $5F
	db	$20, $86, $0A, $5F
	db	$68, $01, $A1, $03
	db	$CC, $09, $C6, $0D
	db	$67, $07, $06, $B9
	db	$5C, $3D, $63, $27
	db	$58, $CC, $09, $D6
	db	$14, $12, $18, $12
	db	$CC, $04, $E5, $9B
	db	$19, $0C, $CD, $20
	db	$65, $A6, $5A, $B7
	db	$12, $12, $0C, $A6
	db	$14, $B7, $63, $3F
	db	$0B, $3F, $76, $3F
	db	$5E, $3F, $A8, $3F
	db	$A6, $3F, $09, $3F
	db	$0F, $9A, $CD, $07
	db	$85, $A6, $08, $BB
	db	$1A, $B7, $1E, $3F
	db	$1F, $8F, $00, $00
	db	$00, $A6, $27, $B7
	db	$09, $CD, $22, $3C
	db	$0A, $5F, $16, $3D
	db	$63, $26, $1C, $06
	db	$00, $0C, $17, $00
	db	$16, $04, $4F, $4A
	db	$26, $FD, $17, $04
	db	$3F, $6A, $0D, $5F
	db	$03, $CC, $05, $06
	db	$11, $05, $0F, $64
	db	$02, $1D, $61, $0C
	db	$5F, $BF, $2E, $9C
	db	$05, $12, $0C, $3D
	db	$63, $26, $B6, $1A
	db	$01, $17, $00, $16
	db	$04, $20, $9A, $0F
	db	$09, $FD, $3D, $A8
	db	$26, $0B, $07, $A6
	db	$22, $B6, $A4, $BE
	db	$A5, $AD, $3F, $20
	db	$30, $B6, $A8, $B0
	db	$08, $25, $14, $A1
	db	$03, $25, $10, $14
	db	$12, $18, $12, $17
	db	$01, $16, $05, $A6
	db	$30, $B7, $63, $1B
	db	$01, $20, $1A, $B6
	db	$08, $BB, $A5, $B7
	db	$A5, $24, $02, $3C
	db	$A4, $3C, $A6, $B6
	db	$A6, $A5, $3F, $26
	db	$0E, $B6, $A4, $BE
	db	$A5, $AD, $0D, $B7
	db	$A8, $3F, $A5, $3F
	db	$A4, $3F, $A6, $CC
	db	$0A, $87, $59, $49
	db	$59, $49, $59, $49
	db	$81
;
L0B2F:
	brset	7,RAM1_061,L0355
	ldx	#$A8
	jsr	L38CC
	sta	RAM1_085
	jsr	L1296
	jsr	L12B1
	stx	RAM1_057
	ldx	#$AB
	jsr	L38CC
	add	#$FD
	add	RAM1_057
	bpl	L034D
	clra
	cmp	RAM1_085
	bcc	L0355
	sta	RAM1_085
	bset	3,RAM1_05c
	bclr	7,RAM1_082
	lda	#$FF
	sta	RAM1_088
	sta	RAM1_083
	jsr	L0FCC
	clr	RAM1_082
	jsr	L0F96
	jsr	L0F89
	clr	RAM1_07e
	clr	RAM1_080
	clr	RAM1_087
	bset	4,RAM1_07e
	bset	3,RAM1_07e
	brclr	3,RAM1_05f,L0378
	brset	0,RAM1_081,L039D
	bclr	0,RAM1_081
	clrx
	brset	0,RAM1_061,L0380
	ldx	#$04
	lda	X136A,x
	sta	RAM1_08a
	bset	6,RAM1_082
	bclr	2,RAM1_06b
	bclr	1,RAM1_06b
	rts
;
L0B8C:
	brclr	3,PortB,L0396
	bclr	3,PortB
	lda	#$05
	jsr	L2623
	jsr	L0F96
	bclr	1,PortB
	bclr	0,RAM1_081
	rts
;
L0B9E:
	brclr	7,RAM1_087,L03BD
	lda	#$01
	eor	TCR
	sta	TCR
	lda	OCL1
	add	#$A0
	tax
	lda	OCH1
	adc	#$01
	cmp	ACH
	bmi	L03BA
	bne	L03BD
	cpx	ACL
	bhi	L03BD
	lda	ACH
	inca
	rts
;
L0BBE:
	tst	RAM1_07e
	beq	L03FD
	brclr	2,RAM1_07e,L03CD
	bclr	2,RAM1_07e
	clr	RAM1_08a
	lda	#$DD
	sta	RAM1_087
	lda	#$FF
	brset	6,RAM1_07e,L03E8
	lda	#$C8
	brset	7,RAM1_07e,L03E8
	brclr	1,RAM1_07e,L03F2
	bclr	1,RAM1_07e
	lda	RAM1_082
	and	#$03
	cmp	#$02
	bne	L03F2
	bset	4,RAM1_080
	lda	#$05
	bclr	6,RAM1_07e
	bclr	7,RAM1_07e
	jsr	L0F96
	jmp	L0D0D
;
	db	$0B, $7E, $08, $1B
	db	$7E, $0D, $82, $03
	db	$CC, $0C, $F6, $0D
	db	$82, $03, $CC, $0C
	db	$B9, $04, $BE, $03
	db	$06, $7F, $39, $0E
	db	$87, $64, $00, $80
	db	$33, $0A, $7F, $52
	db	$0E, $7F, $55, $0C
	db	$7F, $46, $08, $82
	db	$0E, $0B, $80, $0B
	db	$B6, $88, $AB, $34
	db	$24, $05, $1B, $82
	db	$CC, $0C, $E2, $B6
	db	$7F, $A4, $03, $26
	db	$16, $C6, $02, $66
	db	$2A, $0E, $C6, $02
	db	$65, $A1, $40, $27
	db	$04, $A1, $30, $26
	db	$03, $CC, $0C, $EC
	db	$CC, $0C, $D8, $4A
	db	$26, $13, $AE, $AD
	db	$CD, $38, $CC, $27
	db	$03, $02, $7C, $0C
	db	$0E, $7C, $ED, $02
	db	$7C, $EA, $CC, $0C
	db	$EC, $4A, $26, $06
	db	$00, $BA, $77, $CC
	db	$0C, $EC, $0C, $80
	db	$71, $CC, $0C, $EC
	db	$A6, $80, $B7, $87
	db	$20, $7C, $3A, $8A
	db	$2A, $63, $B6, $87
	db	$A4, $1F, $A1, $1F
	db	$26, $04, $13, $87
	db	$1D, $87, $3C, $87
	db	$0C, $87, $03, $01
	db	$87, $23, $CD, $12
	db	$78, $27, $05, $0C
	db	$87, $7B, $20, $76
	db	$0B, $7F, $0C, $1F
	db	$7F, $1F, $82, $1D
	db	$82, $3F, $8A, $11
	db	$82, $20, $67, $01
	db	$87, $07, $CD, $0F
	db	$B1, $A6, $14, $20
	db	$09, $A6, $FE, $B7
	db	$88, $CD, $0F, $96
	db	$A6, $50, $B7, $8A
	db	$CC, $0D, $A3, $3A
	db	$8A, $26, $1A, $01
	db	$81, $54, $A6, $02
	db	$B7, $8A, $CD, $12
	db	$78, $27, $2D, $0F
	db	$82, $19, $B8, $82
	db	$B7, $82, $16, $7E
	db	$16, $BC, $CD, $0F
	db	$89, $81, $0B, $82
	db	$03, $09, $82, $04
	db	$1A, $82, $20, $D4
	db	$0E, $82, $D1, $0E
	db	$82, $04, $CD, $0F
	db	$96, $81, $CD, $12
	db	$78, $26, $17, $1B
	db	$82, $0F, $82, $C0
	db	$1D, $82, $19, $80
	db	$0F, $82, $DA, $3F
	db	$8A, $00, $80, $D5
	db	$CD, $0F, $B1, $CC
	db	$0B, $FD, $0F, $82
	db	$CD, $A6, $02
;
L0D0D:
	sta	RAM1_08a
	bset	6,RAM1_082
	jmp	L0DA3
;
	db	$03, $81, $4E, $0E
	db	$60, $4B, $04, $82
	db	$75, $07, $82, $0E
	db	$03, $01, $06, $13
	db	$01, $AE, $04, $20
	db	$65, $0F, $6B, $66
	db	$20, $5C, $07, $01
	db	$12, $0E, $82, $03
	db	$04, $BE, $A0, $17
	db	$01, $AE, $01, $0F
	db	$6B, $5D, $03, $01
	db	$5A, $20, $54, $AE
	db	$02, $01, $61, $51
	db	$0E, $6B, $06, $1E
	db	$6B, $1C, $95, $20
	db	$4A, $02, $01, $06
	db	$12, $01, $AE, $01
	db	$20, $41, $AE, $03
	db	$03, $90, $3A, $16
	db	$01, $AE, $06, $20
	db	$36, $00, $61, $0A
	db	$0E, $5F, $27, $06
	db	$5F, $24, $17, $01
	db	$20, $25, $06, $5F
	db	$1D, $02, $01, $1A
	db	$0F, $60, $05, $C6
	db	$02, $C4, $2B, $12
	db	$12, $01, $1F, $6B
	db	$1C, $95, $AE, $07
	db	$20, $11, $1F, $6B
	db	$1C, $95, $AE, $04
	db	$20, $09, $01, $02
	db	$02, $16, $01, $AE
	db	$05, $10, $81, $D6
	db	$13, $6A, $B7, $8A
	db	$18, $12, $81
;
L0DA3:
	ldx	RAM1_085
	lda	X131A,x
	brclr	1,RAM1_081,L05AE
	lda	X133A,x
	sta	RAM1_058
	brset	4,RAM1_080,L05C2
	brset	6,RAM1_082,L05BF
	brset	7,RAM1_087,L05C2
	brset	7,RAM1_082,L05BF
	brclr	5,RAM1_082,L05C2
	jmp	L0E9A
;
	db	$CD, $12, $96, $0E
	db	$87, $1D, $08, $7F
	db	$41, $AE, $A9, $CD
	db	$12, $A5, $0B, $7F
	db	$03, $02, $A1, $09
	db	$0D, $7F, $33, $3D
	db	$58, $27, $12, $3A
	db	$58, $BF, $86, $B6
	db	$57, $20, $0A, $0D
	db	$87, $07, $CB, $13
	db	$72, $24, $02, $A6
	db	$FF, $B1, $58, $22
	db	$02, $B7, $58, $0F
	db	$87, $14, $0C, $87
	db	$11, $B6, $87, $44
	db	$A4, $0F, $97, $B6
	db	$58, $DB, $13, $5A
	db	$24, $02, $A6, $FF
	db	$B7, $58, $0C, $81
	db	$0C, $B6, $84, $27
	db	$08, $48, $40, $BB
	db	$58, $25, $04, $4F
	db	$C1, $B6, $58, $07
	db	$81, $04, $A6, $80
	db	$B0, $85, $B7, $58
	db	$04, $BE, $33, $06
	db	$82, $6E, $04, $82
	db	$1A, $04, $6B, $03
	db	$03, $6B, $06, $15
	db	$6B, $13, $6B, $1C
	db	$95, $03, $81, $1E
	db	$02, $01, $1B, $08
	db	$82, $18, $CD, $0F
	db	$4A, $20, $51, $AE
	db	$AE, $CD, $38, $CC
	db	$A4, $07, $4A, $48
	db	$48, $CB, $13, $73
	db	$BB, $58, $25, $40
	db	$B7, $58, $0E, $81
	db	$18, $0A, $7F, $15
	db	$0C, $7F, $12, $06
	db	$81, $0F, $AE, $00
	db	$03, $81, $02, $AE
	db	$10, $CD, $12, $C3
	db	$43, $A4, $0F, $20
	db	$01, $4F, $B7, $59
	db	$B1, $83, $27, $10
	db	$24, $09, $B6, $83
	db	$4A, $A4, $0F, $B7
	db	$83, $20, $02, $B7
	db	$83, $CD, $0F, $BD
	db	$38, $59, $B6, $58
	db	$B0, $59, $24, $01
	db	$4F, $48, $24, $02
;
L0E9A:
	lda	#$FF
	sta	RAM1_058
	sta	RAM1_059
	brset	6,RAM1_082,L06B2
	brset	7,RAM1_087,L06B2
	lda	RAM1_088
	sub	RAM1_058
	beq	L070A
	rora
	eor	#$7F
	brclr	4,RAM1_081,L06B6
	lda	RAM1_058
	bra	L06F7
;
	db	$AE, $20, $CD, $12
	db	$C3, $48, $0A, $82
	db	$02, $AB, $10, $AB
	db	$00, $97, $D6, $12
	db	$FA, $3A, $8A, $2B
	db	$1C, $4D, $2B, $0A
	db	$3D, $89, $2B, $1C
	db	$B1, $89, $22, $0A
	db	$20, $3A, $3D, $89
	db	$2A, $12, $B1, $89
	db	$24, $F6, $97, $B0
	db	$89, $BF, $89, $20
	db	$0E, $4D, $26, $04
	db	$B6, $58, $B0, $88
	db	$DE, $12, $FB, $BF
	db	$8A, $B7, $89, $BB
	db	$88, $18, $82, $B1
	db	$59, $26, $02, $19
	db	$82, $B1, $88, $27
	db	$09, $B7, $88, $CD
	db	$0F, $CC, $20, $08
	db	$19, $82, $08, $7E
	db	$F6, $06, $7E, $F3
	db	$B6, $82, $A4, $0C
	db	$97, $01, $80, $03
	db	$00, $61, $02, $B8
	db	$7F, $A4, $0C, $27
	db	$59, $0B, $82, $03
	db	$0F, $82, $53, $5D
	db	$27, $01, $9F, $B8
	db	$82, $B7, $82, $1C
	db	$95, $15, $6B, $13
	db	$6B, $03, $81, $19
	db	$4F, $AE, $AF, $CD
	db	$38, $A0, $06, $82
	db	$05, $05, $82, $04
	db	$14, $6B, $12, $6B
	db	$11, $81, $A6, $05
	db	$B7, $8A, $1C, $82
	db	$81, $07, $82, $17
	db	$03, $01, $08, $13
	db	$01, $17, $82, $A6
	db	$50, $20, $21, $AE
	db	$AF, $CD, $38, $CC
	db	$46, $24, $09, $14
	db	$6B, $20, $07, $05
	db	$82, $07, $14, $6B
	db	$12, $6B, $16, $01
	db	$81, $00, $61, $03
	db	$17, $01, $81, $02
	db	$01, $FC, $A6, $28
	db	$11, $81, $B7, $8A
	db	$1C, $82, $81
;
L0F89:
	lda	RAM1_082
	and	#$03
	tax
	lda	X11FB,x
	sta	RAM1_050
	clra
	bra	L07C3
;
L0F96:
	bset	7,RAM1_082
	brset	5,RAM1_081,L077C
	lda	#$FF
	cmp	RAM1_088
	beq	L07A5
	sta	RAM1_088
	bsr	L07D1
	lda	#$FF
	sta	RAM1_050
	lda	#$03
	bsr	L07C3
	lda	#$81
	bra	L07B7
;
	db	$1F, $82, $16, $7E
	db	$A6, $80, $B7, $50
	db	$A6, $08, $20, $06
	db	$B6, $83, $B7, $50
	db	$A6, $01, $AE, $88
	db	$01, $02, $03, $CD
	db	$11, $FF, $81
;
L0FCC:
	lda	RAM1_088
	brset	7,RAM1_082,L07CB
	brclr	5,RAM1_07f,L07DC
	brset	5,RAM1_082,L07DC
	add	#$E0
	bcs	L07DC
	clra
	brclr	1,RAM1_081,L0005
	brclr	1,RAM1_082,L07EC
	brset	0,RAM1_082,L07F9
	brclr	2,RAM1_0b8,L07F9
	lda	#$08
	bra	L07F3
;
	db	$A6, $14, $01, $82
	db	$02, $A6, $0C, $40
	db	$BB, $88, $25, $01
	db	$4F, $A1, $30, $24
	db	$02, $A6, $30, $A1
	db	$44, $24, $02, $16
	db	$7E, $B7, $56, $1F
	db	$5B, $AE, $A0, $CD
	db	$10, $EF, $B7, $59
	db	$AE, $A1, $CD, $10
	db	$EF, $B7, $58, $0A
	db	$82, $28, $07, $7E
	db	$25, $17, $7E, $2B
	db	$02, $43, $C1, $AB
	db	$07, $A4, $0F, $B7
	db	$50, $B6, $59, $2B
	db	$07, $43, $A5, $08
	db	$26, $04, $A0, $0D
	db	$AB, $07, $CD, $26
	db	$1E, $BB, $50, $B7
	db	$50, $A6, $03, $CD
	db	$0F, $C3, $B6, $58
	db	$26, $0C, $B6, $59
	db	$AB, $08, $B7, $57
	db	$97, $D6, $11, $37
	db	$20, $15, $AB, $08
	db	$B7, $57, $B6, $59
	db	$2A, $01, $40, $CD
	db	$26, $1E
X105E:
	db	$BB, $57, $97, $D6
	db	$11, $37, $0F, $59
	db	$03, $CD, $26, $1E
	db	$CD, $26, $17, $06
	db	$57, $0E, $0E, $5B
	db	$0A, $40, $27, $07
	db	$BB, $56, $25, $0A
	db	$4F, $20, $07, $4F
	db	$BB, $56, $24, $02
	db	$A6, $FF, $B7, $50
	db	$A6, $02, $CD, $0F
	db	$C3, $09, $7E, $60
	db	$19, $7E, $A6, $88
	db	$B7, $55, $A6, $14
	db	$B7, $54, $A6, $E0
	db	$AE, $53, $BF, $57
	db	$BE, $57, $7F, $B7
	db	$56, $AE, $A3, $CD
	db	$38, $CC, $0D, $8E
	db	$01, $4F, $B8, $56
	db	$A5, $20, $26, $0E
	db	$CD, $38, $CC, $0D
	db	$8E, $01, $4F, $2A
	db	$01, $40, $AB, $10
	db	$AD, $20, $AE, $A2
	db	$CD, $38, $CC, $B8
	db	$56, $A5, $40, $27
	db	$08, $CD, $38, $CC
	db	$2A, $01, $40, $AD
	db	$0D, $3A, $57, $B6
	db	$56, $A0, $20, $2B
	db	$C3, $AE, $55, $CC
	db	$12, $05, $97, $D6
	db	$11, $DB, $BE, $57
	db	$FB, $A1, $1F, $23
	db	$02, $A6, $1F, $F7
	db	$81, $4F, $0A, $82
	db	$09, $0A, $7F, $3F
	db	$0C, $7F, $3C, $06
	db	$81, $39, $CD, $38
	db	$CC, $AB, $06, $2A
	db	$02, $A6, $06, $A3
	db	$A0, $26, $02, $AB
	db	$0D, $03, $81, $02
	db	$AB, $1A, $97, $D6
	db	$11, $A7, $2B, $1F
	db	$03, $81, $1C, $BE
	db	$56, $A3, $44, $24
	db	$16, $3F, $53, $A3
	db	$36, $25, $08, $3C
	db	$53, $A3, $3C, $25
	db	$02, $3C, $53, $B1
	db	$53, $23, $04, $B6
	db	$53, $1E, $5B, $4D
	db	$81, $00, $00, $70
	db	$72, $62, $51, $41
	db	$21, $00, $21, $41
	db	$52, $62, $72, $70
	db	$00, $00, $00, $78
	db	$67, $57, $56, $35
	db	$13, $00, $32, $53
	db	$65, $75, $76, $86
	db	$00, $00, $00, $68
	db	$68, $57, $46, $35
	db	$13, $00, $41, $53
	db	$74, $75, $85, $86
	db	$00, $00, $00, $69
	db	$58, $58, $47, $25
	db	$14, $00, $41, $63
	db	$74, $75, $85, $86
	db	$00, $00, $00, $59
	db	$58, $48, $47, $26
	db	$14, $00, $41, $63
	db	$74, $84, $85, $95
	db	$00, $00, $00, $59
	db	$58, $48, $47, $25
	db	$14, $00, $41, $62
	db	$74, $84, $85, $95
	db	$00, $00, $00, $59
	db	$58, $48, $47, $25
	db	$14, $00, $41, $62
	db	$74, $84, $85, $95
	db	$00, $FA, $FB, $FC
	db	$FD, $FE, $FF, $00
	db	$01, $02, $03, $04
	db	$05, $06, $FB, $FC
	db	$FD, $FD, $FE, $FE
	db	$FF, $00, $01, $01
	db	$02, $03, $03, $FB
	db	$FB, $FC, $FD, $FE
	db	$FF, $00, $01, $01
	db	$02, $02, $03, $03
	db	$FB, $FB, $FC, $FD
	db	$FE, $FF, $00, $01
	db	$01, $02, $02, $03
	db	$03, $00, $01, $02
	db	$03, $04, $05, $06
	db	$07, $08, $09, $0A
	db	$0B, $0C, $0D, $0E
	db	$0F, $00, $01, $02
	db	$03, $04, $05, $06
	db	$07, $08, $09, $0A
	db	$0B, $0C, $0D, $0E
	db	$1F
X11FB:
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
	db	$1F, $04, $0C, $00
	db	$00, $49, $AD, $20
	db	$24, $F4, $F7, $3A
	db	$59, $2B, $07, $AD
	db	$DE, $5A, $1F, $04
	db	$20, $E4, $AD, $CE
	db	$98, $AD, $0D, $AD
	db	$D2, $1F, $04, $AD
	db	$02, $1D, $04, $81
	db	$AD, $F7, $AD, $C7
	db	$1E, $04, $1F, $00
	db	$81, $A6, $03, $0A
	db	$7F, $12, $0E, $7F
	db	$11, $0C, $87, $0E
	db	$4A, $0C, $7F, $08
	db	$01, $7F, $03, $02
	db	$7C, $02, $B6, $7F
	db	$3F, $87, $B8, $82
	db	$A4, $03, $81
;
L1296:
	ldx	#$10
	jsr	L38CC
	brclr	1,RAM1_081,L02A4
	add	#$10
	bcc	L02A4
	lda	#$FF
	rts
;
	db	$B7, $57, $CD, $38
	db	$CC, $48, $48, $AB
	db	$F4, $40, $BB, $57
;
L12B1:
	sta	RAM1_057
	clrx
	incx
	lda	X131A,x
	brclr	1,RAM1_081,L02BE
	lda	X133A,x
	cmp	RAM1_057
	bhi	L02B4
	rts
;
	db	$3F, $57, $DB, $12
	db	$D2, $25, $05, $3C
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
X131A:
	db	$9C, $9C, $90, $84
	db	$78, $6C, $64, $5C
	db	$54, $4E, $48, $44
	db	$40, $3C, $38, $34
	db	$30, $2C, $28, $26
	db	$24, $22, $20, $1E
	db	$1C, $1A, $18, $16
	db	$14, $12, $10, $10
X133A:
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
X136A:
	db	$0A, $14, $03, $50
	db	$28, $05, $3C, $46
	db	$18, $00, $10
;
L1375:
	brclr	6,RAM1_061,L0383
	brset	6,RAM1_0ba,L0380
	brset	5,RAM1_0ba,L0395
	bra	L0383
;
	db	$0B, $BA, $12, $19
	db	$01, $1D, $BA, $1A
	db	$BA, $3F, $D6, $3F
	db	$C1, $CD, $1E, $7D
	db	$10, $BA, $CD, $26
	db	$40, $18, $01, $AE
	db	$B0, $CD, $38, $CC
	db	$A4, $62, $AA, $80
	db	$09, $B5, $02, $AA
	db	$10, $B7, $B5, $3F
	db	$BF, $CD, $26, $31
	db	$01, $61, $13, $3F
	db	$BC, $14, $BC, $09
	db	$69, $0C, $02, $5F
	db	$09, $1D, $B5, $B6
	db	$B5, $AE, $B0, $CD
	db	$38, $A0, $18, $BC
	db	$81, $0D, $61, $08
	db	$0C, $BA, $05, $A6
	db	$05, $0B, $BA, $02
	db	$A6, $28, $B7, $63
	db	$1C, $BA, $1A, $BA
	db	$A6, $30, $AE, $01
	db	$CD, $1B, $D9, $07
	db	$67, $08, $17, $67
	db	$CD, $14, $07, $CD
	db	$37, $B0, $CD, $07
	db	$85, $CD, $37, $F4
	db	$CD, $14, $2B, $0D
	db	$BA, $06, $1D, $D6
	db	$3D, $63, $26, $E3
	db	$CD, $37, $F4, $CD
	db	$1E, $7D, $1B, $BA
	db	$1D, $BA, $81
;
L1407:
	brset	7,STACK_0d6,L0445
	brset	6,RAM1_0ba,L0410
	brclr	5,RAM1_0ba,L0434
	lda	RAM1_0bb
	sta	RAM1_058
	jsr	L1446
	bra	L043B
;
L1419:
	brset	7,STACK_0d6,L0445
	brset	6,RAM1_0ba,L0422
	brclr	5,RAM1_0ba,L0434
	lda	RAM1_0bb
	sta	RAM1_058
	jsr	L1551
	bra	L043B
;
L142B:
	lda	RAM1_0bb
	sta	RAM1_058
	jsr	L15C8
	bra	L043B
;
	db	$01, $61, $04, $1B
	db	$61, $14, $5D, $B6
	db	$BB, $B1, $58, $27
	db	$04, $1C, $CB, $1A
	db	$CB, $81
;
L1446:
	brclr	4,RAM1_0bc,L044E
	bclr	4,RAM1_0bc
	jmp	L1AA5
;
	db	$0E, $C1, $03, $0C
	db	$C1, $06, $07, $BC
	db	$03, $CC, $19, $53
	db	$05, $C0, $03, $CC
	db	$1C, $AD, $B6, $B3
	db	$26, $07, $CD, $14
	db	$DF, $CD, $15, $16
	db	$81, $2B, $3F, $08
	db	$B3, $19, $A5, $60
	db	$27, $05, $CD, $18
	db	$9A, $20, $02, $3F
	db	$B3, $11, $BA, $0E
	db	$B9, $06, $0D, $BA
	db	$03, $0D, $C1, $02
	db	$10, $BA, $81, $B6
	db	$C1, $A4, $86, $A1
	db	$86, $26, $03, $CD
	db	$1C, $82, $A6, $B4
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
	db	$19, $DD, $DD, $1A
	db	$3D, $0E, $B3, $B5
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
	db	$BB, $CD, $1E, $69
	db	$27, $0B, $15, $BA
	db	$19, $C0, $A6, $97
	db	$AE, $C0, $CD, $1C
	db	$84, $CD, $1E, $74
	db	$09, $BF, $0B, $04
	db	$BE, $0C, $02, $BE
	db	$09, $0F, $BF, $06
	db	$1F, $BF, $18, $BF
	db	$16, $BC, $81, $81
	db	$08, $C1, $37, $3A
	db	$C3, $26, $33, $B6
	db	$C1, $A1, $60, $27
	db	$08, $07, $BC, $05
	db	$3C, $C3, $CC, $19
	db	$53, $0F, $C1, $0F
	db	$1F, $C1, $1D, $C1
	db	$B6, $C1, $A4, $07
	db	$97, $DE, $1D, $18
	db	$DC, $1D, $20, $0D
	db	$C1, $0E, $1D, $C1
	db	$B6, $B6, $A4, $07
	db	$97, $DE, $1C, $0E
	db	$DD, $1C, $16, $C1
	db	$3F, $C1, $81
;
L1551:
	brset	7,RAM1_0ba,L059C
	jsr	L1E4F
	beq	L059C
	lda	RAM1_0be
	brset	5,RAM1_0b9,L057E
	brset	4,RAM1_0b9,L0574
	brclr	1,RAM1_0be,L0569
	brclr	3,RAM1_0b9,L056C
	bra	L0598
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
	db	$1E, $87, $4F, $B7
	db	$BE, $09, $C1, $AB
	db	$CC, $15, $19
X15A8:
	db	$03, $6C, $AB, $00
	db	$CD, $F5, $03, $03
	db	$03, $2F, $03, $06
	db	$B7, $56, $AD, $05
	db	$B6, $56, $CD, $26
	db	$1E, $CD, $25, $33
	db	$C1, $A6, $20, $D7
	db	$02, $88, $5C, $81
;
L15C8:
	brclr	3,STACK_0d6,L05C7
	bclr	3,STACK_0d6
	bset	6,RAM1_0ba
	ldx	RAM2_0271
	stx	RAM1_05b
	lsrx
	lsrx
	lsrx
	cpx	#$0C
	bcc	L05E7
	ldx	X15A8,x
	lda	RAM2_0272
	jmp	L15E4,x						;INFO: index jump
;
L15E4:
	db	$CC, $17, $0D, $CC
	db	$17, $0A, $1C, $BB
	db	$14, $BF, $C1, $02
	db	$73, $25, $02, $15
	db	$BF, $09, $CE, $EF
	db	$5F, $C6, $02, $74
	db	$AD, $BF, $AD, $C1
	db	$C6, $02, $73, $CD
	db	$15, $BD, $AD, $B9
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
	db	$B4, $C6, $02, $72
	db	$CD, $15, $B4, $1C
	db	$CB, $CC, $17, $0A
	db	$BE, $5B, $A3, $08
	db	$27, $0D, $A3, $0B
	db	$26, $F3, $0D, $CE
	db	$03, $CD, $1E, $B3
	db	$C6, $02, $75, $1B
	db	$BA, $1D, $BA, $4D
	db	$2A, $02, $1C, $BA
	db	$17, $BA, $A5, $40
	db	$27, $14, $16, $BA
	db	$A5, $20, $27, $0E
	db	$97, $B6, $B8, $A4
	db	$0F, $AA, $80, $B7
	db	$B4, $A6, $CA, $B7
	db	$B3, $9F, $CD, $26
	db	$17, $B8, $B9, $A4
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
	db	$CD, $17, $97, $20
	db	$05, $0F, $B9, $04
	db	$1F, $BA, $1E, $CB
	db	$CD, $26, $1F, $B8
	db	$B9, $A4, $B8, $20
	db	$1B, $00, $BF, $16
	db	$C6, $02, $71, $A4
	db	$03, $97, $D6, $02
	db	$72, $B7, $56, $A4
	db	$07, $97, $DE, $17
	db	$6B, $1F, $BA, $DD
	db	$17, $71, $20, $16
	db	$1A, $CB, $27, $12
	db	$B8, $B9, $B7, $B9
	db	$04, $B8, $0B, $07
	db	$B9, $08, $AE, $B2
	db	$CD, $38, $CC, $CD
	db	$1E, $45, $1C, $D6
	db	$81, $00, $BF, $E2
	db	$C6, $02, $73, $06
	db	$B6, $04, $A1, $FF
	db	$27, $40, $B7, $B7
	db	$B6, $B6, $A4, $07
	db	$A1, $04, $26, $0B
	db	$CD, $1E, $8C, $B8
	db	$C0, $A4, $03, $27
	db	$02, $14, $C0, $C6
	db	$02, $72, $2B, $0A
	db	$0D, $B9, $0E, $19
	db	$BB, $CD, $1E, $7F
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
	db	$CB, $20, $87, $C5
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
	db	$AE, $BC, $CD, $38
	db	$A0, $5C, $CD, $38
	db	$A0, $A6, $80, $B7
	db	$B3, $81, $CC, $1D
	db	$8A, $17, $BF, $0F
	db	$56, $7B, $CD, $1C
	db	$7C, $14, $7E, $B6
	db	$B8, $B7, $BD, $14
	db	$BB, $1D, $BC, $81
	db	$19, $BB, $0C, $BF
	db	$05, $0C, $56, $0C
	db	$1D, $BC, $15, $BB
	db	$1D, $B8, $1B, $B8
	db	$19, $B8, $20, $57
	db	$B6, $B8, $0C, $BC
	db	$04, $A5, $70, $26
	db	$50, $A4, $0C, $B7
	db	$BD, $C6, $02, $72
	db	$A0, $06, $27, $09
	db	$2B, $05, $4A, $3C
	db	$BD, $20, $F5, $AB
	db	$07, $CD, $26, $1E
	db	$BB, $BD, $B7, $BD
	db	$05, $B8, $09, $CD
	db	$26, $1F, $B8, $B8
	db	$A4, $08, $20, $0B
	db	$0B, $69, $04, $A5
	db	$01, $26, $12, $B8
	db	$B8, $A4, $03, $27
	db	$10, $0D, $BC, $06
	db	$1D, $B8, $1B, $B8
	db	$19, $B8, $0A, $BC
	db	$9E, $0C, $BC, $AA
	db	$81, $1A, $BB, $B6
	db	$BD, $B7, $B8, $1C
	db	$BC, $15, $BB, $1E
	db	$CB, $81, $0D, $D2
	db	$03, $CC, $17, $98
	db	$0F, $56, $2A, $15
	db	$C0, $CD, $1E, $42
	db	$AD, $84, $0A, $B6
	db	$1A, $0D, $BF, $10
	db	$02, $BA, $04, $12
	db	$BA, $16, $BC, $A6
	db	$E3, $08, $C1, $06
	db	$AE, $01, $20, $04
	db	$A6, $60, $AE, $28
	db	$CC, $1C, $84, $05
	db	$C1, $F6, $1A, $C1
	db	$81, $0B, $B6, $05
	db	$CD, $1D, $8A, $20
	db	$1A, $B6, $B6, $A4
	db	$07, $A1, $05, $27
	db	$0B, $A1, $04, $26
	db	$0E, $0D, $B5, $0B
	db	$3F, $C2, $10, $B6
	db	$34, $C2, $26, $03
	db	$CD, $1D, $4B, $1E
	db	$BA, $B6, $B6, $AA
	db	$D0, $A5, $20, $27
	db	$02, $A4, $A7, $B7
	db	$B3, $81, $B6, $B3
	db	$A5, $0F, $27, $78
	db	$A4, $07, $97, $4F
	db	$99, $49, $5A, $2A
	db	$FC, $B7, $56, $AE
	db	$B5, $07, $B3, $02
	db	$AE, $BC, $0D, $B3
	db	$09, $0A, $B3, $04
	db	$43, $F4, $20, $03
	db	$F8, $B1, $FA, $06
	db	$B3, $09, $03, $56
	db	$06, $A5, $02, $27
	db	$02, $AA, $0C
X18CB:
	db	$07, $8E, $0F, $09
	db	$56, $06, $A5, $10
	db	$27, $02, $AA, $08
	db	$A5, $08, $26, $02
	db	$A4, $AF, $F7, $AE
	db	$F3, $06, $B3, $4C
	db	$A4, $62, $AE, $B0
	db	$CD, $38, $A0, $1A
	db	$CB, $0A, $56, $06
	db	$0D, $56, $57, $04
	db	$B8, $12, $B6, $B6
	db	$A4, $17, $A1, $04
	db	$26, $0A, $0B, $B6
	db	$03, $0F, $BA, $04
	db	$AD, $86, $20, $4C
	db	$0D, $56, $3F, $AE
	db	$10, $A1, $05, $27
	db	$3E, $0C, $59, $07
	db	$AE, $F1, $0C, $B9
	db	$36, $20, $2F, $18
	db	$C0, $17, $C0, $05
	db	$B8, $11, $16, $C0
	db	$AE, $B2, $CD, $38
	db	$CC, $B7, $B8, $1B
	db	$BB, $CC, $17, $AD
	db	$CC, $1A, $A5, $0C
	db	$C1, $14, $CD, $1E
	db	$69, $26, $0F, $A6
	db	$01, $B7, $C3, $B6
	db	$C1, $A1, $95, $27
	db	$05, $A6, $86, $CD
	db	$1C, $82, $B6, $B3
	db	$A4, $10, $97, $BF
	db	$B3, $16, $BC, $81
	db	$A6, $C8, $0C, $5F
	db	$27, $CD, $1E, $5A
	db	$0E, $61, $30, $03
	db	$BA, $02
X1961:
	db	$A4, $BF, $AA, $08
	db	$AA, $04, $A4, $4E
	db	$0F, $B5, $05, $06
	db	$B5, $02, $A4, $4A
	db	$0D, $CE, $02, $AA
	db	$30, $08, $CE, $03
	db	$07, $CE, $02, $AA
	db	$10, $4C, $A5, $04
	db	$27, $0D, $06, $5D
	db	$03, $07, $BF, $02
	db	$A4, $F3, $0F, $BF
	db	$02, $A4, $FB, $AE
	db	$01, $07, $8E, $06
	db	$AA, $02, $A4, $BB
	db	$AE, $09, $01, $61
	db	$0F, $03, $82, $07
	db	$00, $82, $04, $AA
	db	$80, $20, $05, $09
	db	$69, $02, $AA, $40
	db	$C7, $02, $7C, $9F
	db	$0D, $5F, $02, $AA
	db	$40, $13, $BC, $AA
	db	$80, $09, $BF, $07
	db	$0E, $B5, $04, $12
	db	$BC, $A4, $7F, $C7
	db	$02, $7D, $A6, $20
	db	$05, $B8, $05, $0C
	db	$5F, $02, $A6, $02
	db	$AA, $10, $14, $B5
	db	$97, $17, $BC, $A6
	db	$0A, $CC, $1A, $75
	db	$7E, $7B, $00, $5E
	db	$DC, $C1, $D0, $F5
	db	$17, $5D, $B6, $B8
	db	$A4, $74, $A1, $60
	db	$27, $3C, $AE, $02
	db	$A1, $10, $26, $04
	db	$16, $BF, $20, $2E
	db	$AE, $83, $A1, $50
	db	$27, $28, $5F, $05
	db	$B8, $05, $07, $B8
	db	$07, $20, $03, $03
	db	$B8, $02, $AE, $04
	db	$A4, $70, $A1, $20
	db	$27, $0E, $04, $B8
	db	$0A, $5C, $A1, $30
	db	$27, $06, $5C, $A1
	db	$40, $27, $01, $81
	db	$58, $58, $99, $59
	db	$99, $59, $A6, $18
	db	$20, $4A, $B6, $88
	db	$44, $B7, $56, $B6
	db	$83, $48, $BB, $56
	db	$AE, $70, $CD, $38
	db	$8B, $CC, $17, $BA
	db	$07, $B3, $A5, $3F
	db	$B6, $0D, $B3, $0F
	db	$0B, $B3, $06, $AE
	db	$09, $3F, $B3, $20
	db	$24, $AE, $EA, $BF
	db	$B3, $20, $19, $1B
	db	$BC, $1D, $BC, $16
	db	$94, $CD, $1D, $F2
	db	$AA, $80, $06, $B5
	db	$04, $43, $B4, $56
	db	$C1, $BA, $56, $BE
	db	$57, $CD, $38, $A0
	db	$CD, $1E, $29, $AE
	db	$89, $CD, $1E, $06
	db	$B7, $50, $BF, $51
	db	$0F, $D6, $10, $CD
	db	$07, $85, $CD, $22
	db	$BD, $07, $67, $F4
	db	$17, $67, $CD, $1E
	db	$E2, $20, $ED, $B6
	db	$50, $BE, $51, $C7
	db	$02, $7A, $CF, $02
	db	$7B, $1E, $D6, $3F
	db	$D9, $81, $07, $B3
	db	$07, $0E, $BA, $F9
	db	$AE, $0A, $20, $82
;
L1AA5:
	brset	3,RAM1_0bf,L029A
	bset	0,RAM1_0bc
	brset	6,STACK_0d3,L02AF
	bclr	0,RAM1_0bc
	lda	RAM1_0bc
	and	#$07
	tax
	lda	#$20
	bra	L0275
;
	db	$CC, $1B, $81, $17
	db	$BF, $1B, $BB, $19
	db	$BB, $07, $B3, $16
	db	$AE, $B1, $CD, $38
	db	$CC, $0B, $B6, $07
	db	$A5, $70, $26, $05
	db	$CC, $1D, $A5, $AA
	db	$70, $B7, $B8, $04
	db	$B8, $00, $1F, $BF
	db	$B6, $B8, $A4, $70
	db	$A1, $70, $26, $03
	db	$CD, $1D, $CA, $CD
	db	$1D, $F2, $10, $56
	db	$B4, $56, $16, $B5
	db	$26, $04, $17, $B5
	db	$19, $B5, $16, $BC
	db	$13, $BA, $12, $BF
	db	$10, $BF, $A6, $40
	db	$AE, $0C, $0D, $5F
	db	$02, $AE, $01, $CD
	db	$1E, $7D, $CC, $1C
	db	$84, $04, $B8, $05
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
	db	$38, $CC, $B7, $B8
	db	$1F, $BF, $20, $15
	db	$A1, $04, $26, $11
	db	$08, $B3, $0E, $B6
	db	$B6, $B8, $B3, $A5
	db	$08, $27, $06, $CD
	db	$1A, $FE, $CC, $1A
	db	$6D, $09, $B3, $03
	db	$1D, $BF, $81, $0E
	db	$BF, $8C, $06, $BF
	db	$89, $1E, $BF, $CD
	db	$1A, $E4, $A6, $48
	db	$20, $82, $CC, $1A
	db	$FE, $07, $B3, $05
	db	$1E, $BF, $CC, $1A
	db	$F6, $0D, $B9, $E2
	db	$CD, $1E, $81, $A6
	db	$48, $5F, $CC, $1A
	db	$75, $1D, $BF, $08
	db	$B3, $0B, $0A, $B6
	db	$E1, $AD, $2A, $A6
	db	$FF, $B7, $C2, $20
	db	$D0, $B6, $BD, $B8
	db	$B8, $A4, $07, $26
	db	$04, $B6, $BD, $B7
	db	$B8, $3F, $C3, $CD
	db	$1E, $74, $B6, $C1
	db	$A1, $95, $26, $07
	db	$3F, $C1, $16, $BC
	db	$CC, $1E, $29, $CD
	db	$17, $AD, $CC, $1A
	db	$DA, $B6, $B8, $B7
	db	$BD, $BE, $C1, $CC
	db	$1E, $38, $A6, $64
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
	db	$7D, $1E, $BA, $1E
	db	$CB, $1D, $BC, $06
	db	$C0, $02, $19, $C0
	db	$17, $C0, $1E, $B5
	db	$20, $84, $A8, $11
	db	$43, $43, $75, $44
	db	$00, $1B, $CD, $1D
	db	$84, $AE, $C7, $06
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
	db	$1D, $CA, $CC, $1C
	db	$F7, $81, $0A, $C1
	db	$19, $1E, $BF, $CD
	db	$1D, $84, $AE, $A0
	db	$04, $C2, $07, $A6
	db	$6C, $02, $C2, $04
	db	$AE, $20, $A6, $64
	db	$CC, $1B, $D4, $CC
	db	$1D, $11, $0A, $B6
	db	$FA, $CD, $1E, $74
	db	$A6, $92, $AE, $10
	db	$20, $02, $AE, $C8
	db	$B7, $C1, $BF, $C3
	db	$CC, $14, $7B, $06
	db	$C1, $BF, $0A, $C1
	db	$E5, $A6, $C4, $AE
	db	$64, $0A, $B6, $04
	db	$A6, $D3, $AE, $FF
	db	$AD, $E6, $1B, $B5
	db	$06, $CE, $0A, $AE
	db	$AC, $CD, $38, $CC
	db	$46, $24, $02, $1A
	db	$B5, $CD, $1E, $8C
	db	$B8, $C0, $A4, $03
	db	$B8, $C0, $B7, $C0
	db	$B6, $5B, $5F, $CC
	db	$1B, $D4, $A6, $60
	db	$0B, $C1, $30, $AE
	db	$02, $0E, $B9, $05
	db	$0E, $BA, $B9, $1A
	db	$BB, $03, $BA, $07
	db	$13, $BA, $0D, $B5
	db	$02, $16, $BC, $07
	db	$5D, $06, $17, $5D
	db	$A6, $82, $B7, $B3
	db	$A6, $C0, $06, $BB
	db	$9D, $CD, $1E, $29
	db	$08, $BF, $04, $AE
	db	$2D, $20, $24, $A6
	db	$C7, $20, $8F, $AE
	db	$1E, $AD, $8D, $CD
	db	$1E, $06, $BE, $B7
	db	$CF, $02, $7D, $27
	db	$08, $0F, $61, $05
	db	$AE, $29, $A6, $1A
	db	$C1, $AE, $09, $CC
	db	$1B, $E5, $CD, $17
	db	$BF, $AE, $23, $A6
	db	$95, $CC, $1C, $84
	db	$6A, $6F, $36, $9C
	db	$5E, $47, $00, $16
	db	$A6, $86, $04, $CE
	db	$50, $0E, $B9, $4D
	db	$CD, $1E, $4F, $27
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
	db	$86, $CC, $1C, $82
	db	$1B, $B6, $81, $CC
	db	$1B, $7A, $0B, $C1
	db	$03, $CC, $18, $5C
	db	$A6, $D3, $AE, $FF
	db	$20, $DB, $A6, $88
	db	$B7, $B3, $81, $0D
	db	$BF, $09, $AE, $06
	db	$05, $B8, $01, $58
	db	$CC, $1C, $39, $0A
	db	$C1, $07, $A6, $A1
	db	$AE, $30, $CC, $1C
	db	$84, $15, $BB, $B6
	db	$B8, $A4, $70, $26
	db	$09, $06, $BF, $06
	db	$0E, $B6, $03, $CD
	db	$1A, $54, $CD, $1E
	db	$29, $CC, $1C, $7C
	db	$0C, $BF, $06, $0B
	db	$C1, $03, $CC, $18
	db	$5C, $A6, $C3, $CC
	db	$1C, $9A, $AD, $09
	db	$B8, $B8, $A4, $70
	db	$B8, $B8, $B7, $B8
	db	$81, $AD, $0D, $AB
	db	$B3, $CD, $38, $CB
	db	$A4, $70, $A1, $70
	db	$26, $01, $4F, $81
	db	$B6, $B8, $A4, $03
	db	$05, $B8, $06, $A6
	db	$04, $07, $B8, $01
	db	$4C, $81, $AD, $F0
	db	$AB, $BA, $B7, $57
	db	$CD, $38, $CB, $B7
	db	$56, $B6, $B8, $CD
	db	$26, $17, $CD, $26
	db	$64, $81, $B6, $B8
	db	$48, $CD, $26, $16
	db	$26, $02, $A6, $07
	db	$4A, $05, $B8, $05
	db	$07, $B8, $0C, $20
	db	$08, $03, $B8, $02
	db	$AB, $0E, $01, $B8
	db	$02, $AB, $07, $C7
	db	$02, $7C, $A6, $19
	db	$81, $3F, $BD, $15
	db	$BB, $AE, $B1, $CD
	db	$38, $CC, $B8, $B8
	db	$A4, $0F, $27, $0A
	db	$AE, $B1, $CD, $38
	db	$CC, $04, $B8, $00
	db	$AD, $06, $CD, $1D
	db	$D5, $0E, $BB, $E0
	db	$B6, $B8, $A4, $7F
	db	$CC, $38, $A0
;
L1E4F:
	lda	#$01
	brset	2,RAM1_0b8,L0666
	brset	2,RAM1_0be,L0668
	brset	5,RAM1_0b9,L0668
	lda	RAM1_0b5
	and	#$4E
	brset	3,RAM1_08e,L0664
	brclr	6,RAM1_05f,L0666
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
	db	$5B, $CD, $26, $1E
	db	$CD, $26, $17, $AB
	db	$30, $E7, $DA, $5C
	db	$81, $4F, $05, $5F
	db	$08, $C6, $02, $A5
	db	$BE, $0B, $CD, $24
	db	$6E, $B7, $0B, $CC
	db	$37, $B0
;
L1EF3:
	rts
;
L1EF4:
	ldx	#$CD
	jsr	L265E
	bne	L0709
	clra
	sta	RAM2_0254
	sta	RAM2_0255
	sta	RAM2_0256
	bset	4,RAM1_09e
	bra	L0719
;
	db	$AE, $CC, $CD, $26
	db	$5E, $2A, $02, $13
	db	$CB, $26, $07, $7A
	db	$1B, $C5, $13, $CB
	db	$1E, $5D, $81
;
L1F1C:
	brset	6,STACK_0c6,L0731
	brset	5,STACK_0c6,L0733
	brclr	7,STACK_0c6,L071B
	brset	2,STACK_0cb,L0731
	lda	STACK_0cc
	cmp	#$FF
	beq	L0731
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
	db	$EB, $B7, $59, $D6
	db	$1F, $EC, $B7, $56
	db	$54, $D6, $1F, $FB
	db	$C7, $02, $56, $A4
	db	$0F, $27, $13, $4A
	db	$B7, $58, $CE, $1F
	db	$EA, $BF, $57, $C6
	db	$1F, $E9, $4D, $27
	db	$02, $10, $59, $CD
	db	$26, $79, $0B, $C7
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
	db	$20, $03, $C7, $02
	db	$57, $20, $D2, $BE
	db	$C8, $A4, $0F, $A5
	db	$08, $26, $07, $1F
	db	$50, $5D, $2A, $02
	db	$50, $4C, $CD, $26
	db	$1E, $C7, $02, $57
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
L200B:
	brset	6,RAM1_069,L0011
	brset	0,RAM1_080,L0030
	lda	#$27
	jsr	L25B7
	cmp	#$19
	bcs	L001C
	bclr	3,RAM1_05d
	cmp	#$D5
	bcs	L0025
	bset	0,RAM1_080
	bset	6,RAM1_069
	rts
;
	db	$A1, $D2, $22, $07
	db	$0D, $69, $04, $1D
	db	$69, $11, $80, $81
	db	$CD, $21, $36, $0F
	db	$0C, $23, $CD, $21
	db	$0B, $AE, $14, $CD
	db	$20, $D2, $15, $06
	db	$17, $06, $CD, $26
	db	$43, $1A, $69, $B6
	db	$02, $A4, $0C, $26
	db	$02, $1B, $69, $14
	db	$06, $16, $06, $1F
	db	$0C, $A6, $FF, $B7
	db	$8C
;
L205A:
	lda	ACH
	add	#$14
	sta	OCH2
	lda	TSR
	clr	OCL2
	rts
;
	db	$AD, $37, $AD, $4B
;
L2069:
	lda	#$30
	brclr	6,RAM1_05f,L0072
	lda	#$31
	bset	0,PortB
	sta	DDRB
	lda	#$02
	sta	DDRC
	rts
;
L2079:
	brset	2,PortB,L0090
	bset	2,PortB
	ldx	#$08
	bra	L008E
;
L2082:
	brset	0,PortC,L0090
	bset	0,PortC
	brset	6,RAM1_05f,L0090
	bclr	3,PortB
	ldx	#$06
	bsr	L00D2
	lda	#$2C
	sta	SCCR2
	lda	X215B
	sta	BAUD
	lda	SCSR
	lda	SCDR
	rts
;
L209E:
	bclr	4,RAM1_061
	bclr	0,RAM1_081
	brset	2,TCR,L00A8
	brclr	2,PortB,L00B2
	ldx	#$32
	bsr	L00D2
	bclr	2,PortB
	ldx	#$05
	bsr	L00D2
	cli
	rts
;
	db	$A6, $04, $CD, $26
	db	$33, $3F, $0F, $A6
	db	$07, $B7, $04, $3F
	db	$00, $1D, $01, $1B
	db	$61, $01, $02, $EA
	db	$11, $02, $09, $0C
	db	$3D, $AE, $32, $AD
	db	$01, $81, $9B, $1F
	db	$8F, $03, $02, $03
	db	$13, $02, $C1, $12
	db	$02, $9F, $A4, $03
	db	$26, $12, $BF, $57
	db	$4F, $05, $5F, $08
	db	$C6, $02, $A5, $BE
	db	$0B, $CD, $24, $6E
	db	$B7, $0B, $BE, $57
	db	$CD, $26, $31, $5A
	db	$2A, $DB, $14, $D6
	db	$18, $5E, $1E, $96
	db	$01, $02, $06, $0F
	db	$8F, $03, $CC, $04
	db	$ED, $9A, $81, $AE
	db	$90, $A6, $00, $6F
	db	$4F, $D7, $02, $4F
	db	$5A, $26, $F8, $81
;
L2118:
	brclr	5,DDRB,L0136
	lda	X2152
	sta	DDRA
	lda	X2153
	sta	DDRB
	lda	X2154
	sta	DDRC
	bset	7,TCR
	bset	6,TCR
	bset	5,TCR
	lda	X215A
	sta	Miscell
	rts
;
	db	$5F, $D6, $21, $4E
	db	$F7, $5C, $A3, $13
	db	$2B, $F7, $81
;
L2141:
	clrx
	lda	X2161,x
	sta	,x
	incx
	cpx	#$13
	bmi	L0142
	jmp	L205A
;
	db	$FF, $B0, $FC, $00
X2152:
	db	$04
X2153:
	db	$FF
X2154:
	db	$0F, $40, $00, $20
	db	$00, $00
X215A:
	db	$BC
X215B:
	db	$C0, $00, $2C, $00
	db	$00, $FA
X2161:
	db	$F8, $B8, $FE, $00
	db	$07, $31, $02, $40
	db	$00, $20, $00, $00
	db	$BC, $C0, $00, $2C
	db	$00, $00, $FA
;
L2174:
	brclr	6,RAM1_05d,L01AE
	brclr	2,STACK_0ce,L01AE
	brset	1,STACK_0ce,L01AE
	brclr	0,STACK_0ce,L01AE
	jmp	L21BB
;
L2183:
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
L21BB:
	clrx
	lda	X21D5,x
	sta	RAM1_056
	lda	X21D4,x
	beq	L01D3
	jsr	L2889
	bne	L01BC
	ldx	X21D3,x
	jsr	L2183,x						;INFO: index jump
	bclr	6,RAM1_05d
X21D3:
	rts
;
X21D4:
	db	$E0
X21D5:
	db	$00, $EB, $1F, $E8
	db	$2C, $07, $2C, $00
;
L21DD:
	lda	#$02
	eor	TCR
	sta	TCR
	bset	3,RAM1_076
	lda	ICH1
	sta	RAM1_06d
	lda	ICL1
	sta	RAM1_06e
	brclr	4,RAM1_05e,L01F5
	brset	1,TCR,L0224
	bra	L0211
;
	db	$B0, $70, $97, $B6
	db	$6D, $B2, $6F, $A5
	db	$E0, $26, $11, $02
	db	$0C, $0B, $03, $12
	db	$08, $B7, $71, $BF
	db	$72, $11, $76, $20
	db	$0E, $CD, $22, $7E
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
L223C:
	brclr	3,RAM1_076,L0242
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
L22BD:
	clra
	brset	0,RAM1_061,L02C4
	brclr	2,RAM1_05f,L02CA
	brset	4,RAM1_076,L02CF
	brset	2,RAM1_05f,L032B
	sta	RAM2_02a4
	bra	L0329
;
	db	$19, $76, $9B, $B6
	db	$73, $B7, $50, $B6
	db	$74, $B7, $51, $B6
	db	$71, $B7, $52, $B6
	db	$72, $B7, $53, $9A
	db	$0E, $76, $78, $4F
	db	$05, $5F, $3F, $5F
	db	$CD, $24, $8F, $CD
	db	$24, $8D, $AE, $03
	db	$E6, $50, $DB, $02
	db	$A0, $D7, $02, $A0
	db	$E7, $56, $E6, $4F
	db	$D9, $02, $9F, $D7
	db	$02, $9F, $E7, $55
	db	$5A, $5A, $2A, $E8
	db	$CD, $25, $E4, $5F
	db	$CD, $24, $B3, $25
	db	$0D, $AE, $09, $CD
	db	$24, $1E, $A6, $1A
	db	$CD, $24, $3F, $C7
	db	$02, $A5, $C6, $02
	db	$A5, $BE, $0B, $CD
	db	$24, $6E, $B7, $0B
	db	$81, $4F, $C7, $02
	db	$AA, $AE, $0D, $CD
	db	$24, $8F, $B6, $75
	db	$CB, $02, $AE, $C7
	db	$02, $AE, $4F, $C9
	db	$02, $AD, $C7, $02
	db	$AD, $C6, $02, $AE
	db	$CE, $02, $AD, $56
	db	$46, $56, $46, $56
	db	$46, $AE, $0B, $CD
	db	$24, $B4, $25, $4B
	db	$AE, $19, $CD, $24
	db	$1E, $20, $34, $04
	db	$76, $CB, $AE, $06
	db	$CD, $24, $8F, $CD
	db	$24, $8D, $AE, $03
	db	$E6, $50, $DB, $02
	db	$A6, $D7, $02, $A6
	db	$E7, $56, $E6, $4F
	db	$D9, $02, $A5, $D7
	db	$02, $A5, $E7, $55
	db	$5A, $5A, $2A, $E8
	db	$CD, $25, $E4, $AE
	db	$06, $CD, $24, $B3
	db	$25, $15, $AE, $0F
	db	$CD, $24, $1E, $A6
	db	$24, $CD, $24, $3F
	db	$C7, $02, $AB, $A6
	db	$2A, $CD, $24, $3F
	db	$C7, $02, $AC, $01
	db	$61, $28, $C6, $02
	db	$AB, $BE, $0A, $CD
	db	$24, $6E, $B7, $0A
	db	$C6, $02, $AC, $BE
	db	$6C, $CD, $24, $6E
	db	$97, $02, $76, $0C
	db	$C6, $02, $AC, $B0
	db	$6C, $24, $01, $40
	db	$A4, $FC, $27, $06
	db	$13, $76, $BF, $6C
	db	$12, $5D, $81
;
L23CE:
	brclr	2,RAM1_05f,L03DB
	lda	RAM2_02a5
	ldx	PLMB
	jsr	L2402
	sta	PLMB
	brclr	0,RAM1_061,L03CD
	lda	RAM2_02ab
	ldx	PLMA
	jsr	L2402
	sta	PLMA
	lda	RAM2_02ac
	ldx	RAM1_06c
	jsr	L2402
	tax
	lda	RAM2_02ac
	sub	RAM1_06c
	bcc	L03F9
	nega
	and	#$FC
	beq	L03CD
	stx	RAM1_06c
	bset	1,RAM1_05d
	rts
;
L2402:
	stx	RAM1_056
	sub	RAM1_056
	beq	L041B
	bcs	L0413
	clrx
	cmp	#$10
	bcs	L041A
	ldx	#$02
	bra	L041A
;
	db	$5F, $A1, $F0, $22
	db	$02, $AE, $FE, $9F
	db	$BB, $56, $81, $A6
	db	$05, $B7, $50, $3F
	db	$56, $D6, $01, $00
	db	$B1, $52, $24, $09
	db	$B7, $56, $5A, $3A
	db	$50, $2A, $F2, $A6
	db	$FF, $B0, $56, $B7
	db	$51, $B6, $52, $B0
	db	$56, $B7, $52, $81
	db	$BB, $50, $97, $3F
	db	$5A, $B6, $50, $A1
	db	$05, $27, $0B, $D6
	db	$01, $01, $B7, $5A
	db	$A6, $FF, $3D, $50
	db	$2B, $03, $D6, $01
	db	$00, $B0, $5A, $97
	db	$B6, $52, $42, $B7
	db	$59, $BF, $58, $3F
	db	$57, $B6, $51, $B7
	db	$56, $CD, $25, $E4
	db	$BB, $5A, $81, $BF
	db	$56, $B0, $56, $27
	db	$15, $25, $0A, $AE
	db	$01, $A1, $10, $25
	db	$0C, $AE, $08, $20
	db	$08, $AE, $FF, $A1
	db	$F0, $22, $02, $AE
	db	$F8, $9F, $BB, $56
	db	$81, $81, $5C, $5C
	db	$D6, $02, $A0, $B7
	db	$56, $D6, $02, $A1
	db	$34, $56, $46, $34
	db	$56, $46, $34, $56
	db	$46, $B7, $57, $D6
	db	$02, $A1, $B0, $57
	db	$D7, $02, $A1, $D6
	db	$02, $A0, $B2, $56
	db	$D7, $02, $A0, $81
	db	$43, $B7, $52, $02
	db	$76, $0A, $D0, $02
	db	$A4, $24, $01, $40
	db	$A1, $02, $25, $07
	db	$B6, $52, $D7, $02
	db	$A4, $A1, $00, $81
	db	$BE, $CC, $A3, $FF
	db	$26, $02, $1B, $C5
	db	$AE, $80, $00, $CB
	db	$04, $0D, $C6, $13
	db	$81, $AE, $5F, $C1
	db	$AE, $20, $1B, $C5
	db	$20, $09
;
L24E5:
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
	db	$C6, $5C, $81
;
L2504:
	clrx
	lda	#$00
	bsr	L04F5
	cpx	#$06
	bne	L0505
	rts
;
	db	$AE, $01, $AD, $E3
	db	$B6, $56, $AA, $40
	db	$0B, $69, $01, $4F
	db	$04, $B8, $05, $0D
	db	$B5, $02, $AA, $04
	db	$AD, $E3, $5F, $A6
	db	$00, $20, $CC, $B7
	db	$56, $AD, $06, $97
	db	$B6, $56, $CD, $26
	db	$1E, $CD, $26, $17
	db	$A1, $0A, $25, $02
	db	$AB, $07, $AB, $30
	db	$81, $A6, $68, $C1
	db	$A6, $70, $C1, $A6
	db	$60, $C1, $A6, $78
	db	$C1, $A6, $80, $4A
	db	$B7, $56, $AE, $07
	db	$BF, $57, $BE, $56
	db	$D6, $26, $A5, $3A
	db	$56, $BE, $57, $D7
	db	$02, $57, $3A, $57
	db	$2A, $F0, $81, $02
	db	$CB, $0B, $3C, $CC
	db	$3D, $CC, $27, $03
	db	$3A, $CC, $81, $3A
	db	$CC, $A1, $03, $26
	db	$09, $A6, $39, $0D
	db	$D2, $1E, $A6, $36
	db	$20, $1A, $A1, $01
	db	$26, $05, $0B, $BB
	db	$2F, $16, $94, $0D
	db	$B5, $05, $04, $B8
	db	$02, $AA, $08
;
L2591:
	brclr	3,RAM1_08e,L0596
	ora	#$10
	sta	STACK_0d5
	bra	L05A6
;
	db	$AA, $40, $B8, $D5
	db	$A4, $7F, $27, $14
	db	$B8, $D5, $B7, $D5
;
L25A6:
	brclr	0,RAM1_061,L05AD
	brclr	3,STACK_0ce,L05B2
	clra
	brclr	3,RAM1_08e,L05B2
	ora	#$10
	bset	7,STACK_0d5
	bset	1,RAM1_094
	rts
;
L25B7:
	tax
	lda	#$04
	sta	RAM1_056
	clr	RAM1_057
	clra
	bms	L05CA
	sei
	stx	ADSTAT
	brclr	7,ADSTAT,L05C4
	cli
	bra	L05CF
;
	db	$BF, $09, $0F, $09
	db	$FD, $BB, $08, $24
	db	$02, $3C, $57, $3A
	db	$56, $26, $E6, $34
	db	$57, $46, $34, $57
	db	$46, $A9, $00, $B7
	db	$56, $81, $5F, $99
	db	$59, $25, $2A, $34
	db	$56, $36, $57, $B6
	db	$59, $B0, $57, $B7
	db	$59, $B6, $58, $B2
	db	$56, $B7, $58, $24
	db	$EA, $98, $59, $25
	db	$14, $34, $56, $36
	db	$57, $B6, $59, $BB
	db	$57, $B7, $59, $B6
	db	$58, $B9, $56, $B7
	db	$58, $24, $EA, $20
	db	$D2, $9F, $81, $44
;
L2616:
	lsra
L2617:
	lsra
	lsra
	lsra
	lsra
	rts
;
	db	$48, $48, $48, $48
	db	$48, $48, $81
;
L2623:
	sta	RAM1_050
	bra	L062C
;
	db	$CD, $07, $85, $AD
	db	$05, $3A, $50, $2A
	db	$F7, $81
;
L2631:
	lda	#$14
	add	ACH
	tst	ACL
	bih	L063B
	bset	7,RAM1_08f
	cmp	ACH
	bpl	L0637
	rts
;
L2640:
	lda	#$85
;
	db	$C1
;
L2643:
	lda	#$21
	deca
	bne	L0645
	rts
;
L2649:
	lda	X2656,x
	sta	RAM1_064
	lda	X2657,x
	sta	RAM1_065
	clr	RAM1_066
	rts
;
X2656:
	db	$7C
X2657:
	db	$52, $69, $EB, $2C
	db	$00, $7F, $E0
;
L265E:
	inc	,x
	beq	L0662
	dec	,x
	dec	,x
	rts
;
	db	$A4, $07, $97, $4F
	db	$99, $49, $5A, $2A
	db	$FC, $81
;
L266E:
	lda	#$80
	bit	,x
	bne	L0676
	lsra
	bne	L0670
	eor	,x
	sta	,x
	rts
;
L2679:
	ldx	RAM1_056
	inc	RAM1_056
	lda	,x
	brclr	1,RAM1_059,L0684
	lda	BOT1_0200,x
	ldx	RAM1_057
	inc	RAM1_057
	brclr	0,RAM1_059,L068F
	sta	BOT1_0200,x
	cmp	STACK_0f7
	dec	RAM1_058
	bpl	L0679
	rts
;
L2695:
	clrx
	tsta
	bpl	L06A4
	ldx	#$07
	asla
	asla
	bmi	L06A4
	lsrx
	asla
	bmi	L06A4
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
L2725:
	clr	STACK_0ca
	lda	#$0A
	sta	STACK_0cf
	lda	#$05
	sta	STACK_0ce
	rts
;
	db	$AE, $D1, $CD, $26
	db	$5E, $26, $02, $1F
	db	$D2, $AE, $CF, $CD
	db	$26, $5E, $26, $EF
	db	$07, $CE, $02, $1E
	db	$5D, $05, $CE, $79
	db	$B6, $CE, $A4, $F8
	db	$B7, $CE
;
L274E:
	lda	#$0A
	brset	7,RAM1_060,L07B7
	lda	#$08
	brclr	3,RAM1_08b,L07B7
	tst	STACK_0ce
	beq	L078D
	brset	7,STACK_0ce,L07B7
	brset	2,STACK_0ce,L0782
	brclr	1,STACK_0ce,L076E
	lda	#$01
	brclr	0,STACK_0ce,L07A8
	lda	#$04
	bra	L07A8
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
	db	$CD, $26, $1E, $BB
	db	$56, $B8, $CA, $27
	db	$06, $B8, $CA, $B7
	db	$CA, $1E, $5D, $81
	db	$81
;
L27C3:
	lda	RAM1_07a
	beq	L0027
	dec	RAM1_079
	bne	L0027
	clr	RAM1_07a
	bra	L001F
;
L27CF:
	brset	1,RAM1_077,L07EF
	brclr	4,RAM1_077,L07F3
	lda	RAM1_078
	and	#$1F
	beq	L07EF
	sta	RAM1_07a
	lda	RAM1_077
	and	#$E0
	add	RAM1_07a
	sta	RAM1_07a
	jsr	L2616
	tax
	lda	X2827,x
	sta	RAM1_079
	cmp	X3F7A
	clr	RAM1_077
	brclr	6,RAM1_09f,L0027
	brset	6,RAM1_05d,L0027
	lda	RAM1_07a
	beq	L000B
	brclr	7,RAM1_09f,L0003
	bclr	6,RAM1_09f
	rts
;
	db	$3F, $7A, $A4, $1F
	db	$AA, $C0, $20, $14
	db	$1D, $9F, $B6, $9F
	db	$2A, $04, $A8, $90
	db	$20, $0A, $97, $D6
	db	$28, $5B, $0B, $69
	db	$03, $D6, $28, $2D
	db	$B7, $78, $A1, $01
	db	$27, $02, $1C, $5D
X2827:
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
L2889:
	incx
	incx
	cmp	RAM1_078
	beq	L00AF
	cmp	#$1F
	bne	L0099
	eor	RAM1_078
	and	#$F0
	bra	L00AF
;
	db	$A5, $E0, $27, $0F
	db	$A5, $1F, $26, $0B
	db	$B8, $78, $27, $07
	db	$A1, $06, $22, $03
	db	$A5, $00, $81, $A6
	db	$01, $81, $81
;
L28B0:
	brset	6,RAM1_05f,L0132
	brclr	1,RAM1_0bc,L00CB
	brset	7,RAM1_0b9,L00CB
	brset	7,RAM1_0b3,L00CB
	brclr	2,STACK_0ce,L00C5
	brset	1,STACK_0ce,L00C5
	brclr	0,STACK_0ce,L00CB
	lda	#$27
	sta	RAM1_0b3
	bclr	1,RAM1_0bc
	brclr	5,STACK_0cb,L00F5
	lda	STACK_0d5
	and	#$70
	bne	L00F5
	lda	STACK_0d5
	and	#$07
	beq	L00F5
	cmp	#$06
	bcc	L00F5
	clra
	brset	3,STACK_0ce,L00E8
	brclr	6,RAM1_0b5,L00EA
	brset	2,RAM1_0b8,L00EA
	lda	#$08
	eor	STACK_0d5
	and	#$08
	beq	L00F5
	eor	STACK_0d5
	jsr	L2591
	bclr	6,STACK_0d2
	lda	RAM1_0b6
	and	#$07
	cmp	#$06
	bne	L0101
	bset	6,STACK_0d2
	lda	RAM1_07f
	and	#$2B
	cmp	#$02
	bne	L0132
	brset	5,STACK_0ce,L0118
	lda	STACK_0ca
	and	#$0F
	cmp	#$01
	beq	L0118
	cmp	#$06
	bne	L0132
	brset	5,STACK_0cb,L0123
	brset	6,STACK_0cb,L0123
	brclr	7,STACK_0cb,L0129
	bset	2,STACK_0cb
	bset	7,RAM1_05d
	bclr	5,STACK_0cb
	bclr	6,STACK_0cb
	brset	6,STACK_0ce,L0132
	brclr	6,RAM1_05d,L0132
	jmp	L2CD4
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
	db	$CC, $2A, $6B, $CC
	db	$2B, $14, $04, $B6
	db	$06, $06, $8E, $13
	db	$05, $B8, $17, $81
	db	$A6, $19, $02, $B5
	db	$02, $A6, $18, $CD
	db	$24, $E5, $A6, $61
	db	$CC, $2A, $57, $1C
	db	$C5, $A6, $63, $CC
	db	$2A, $59, $CC, $2A
	db	$91, $1E, $D2, $AE
	db	$FA, $BF, $D1, $20
	db	$34, $A6, $A4, $0B
	db	$B6, $02, $A6, $B4
	db	$1F, $D2, $20, $69
	db	$A6, $86, $B7, $B3
	db	$1F, $D2, $14, $CB
	db	$81, $A6, $08, $04
	db	$B8, $12, $AE, $9F
	db	$CD, $38, $CC, $B7
	db	$5B, $B6, $B8, $CD
	db	$38, $A0, $B8, $5B
	db	$A4, $01, $AA, $02
	db	$CC, $29, $89, $1E
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
	db	$2B, $0A, $A6, $8A
	db	$CD, $2B, $36, $1B
	db	$D2, $1E, $7E, $A6
	db	$90, $B7, $77, $81
	db	$1A, $7E, $0B, $D2
	db	$FA, $13, $CB, $A6
	db	$80, $CD, $2B, $36
	db	$20, $25, $5F, $1A
	db	$D2, $04, $BA, $0C
	db	$06, $CE, $09, $08
	db	$B6, $09, $0F, $BA
	db	$06, $05, $B6, $03
	db	$CC, $2A, $FB, $0B
	db	$B6, $03, $A6, $B4
	db	$C1, $A6, $42, $B7
	db	$B3, $18, $CC, $A6
	db	$B0, $20, $CA, $A6
	db	$27, $CD, $25, $B7
	db	$A1, $19, $24, $0A
	db	$16, $5D, $B6, $B4
	db	$A4, $74, $A1, $60
	db	$27, $11, $07, $81
	db	$09, $17, $81, $AE
	db	$A8, $CD, $38, $CC
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
	db	$1D, $F2, $B4, $56
	db	$27, $0C, $1F, $B5
	db	$C1, $BF, $B3, $20
	db	$05, $A6, $80, $CD
	db	$2B, $36, $14, $CE
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
	db	$C0, $CC, $24, $E8
	db	$B7, $B3, $14, $CB
	db	$1F, $D2, $B6, $78
	db	$CD, $26, $1E, $B8
	db	$B8, $A4, $70, $B8
	db	$B8, $AA, $80, $B7
	db	$B4, $0B, $69, $02
	db	$11, $B4, $81, $07
	db	$CE, $03, $CC, $2B
	db	$D8, $0E, $B9, $26
	db	$0F, $BA, $03, $04
	db	$B6, $20, $07, $8E
	db	$1D, $0F, $C5, $1A
	db	$09, $B5, $17, $0D
	db	$C5, $14, $1D, $C5
	db	$1A, $C5, $B6, $C5
	db	$A4, $1F, $CD, $25
	db	$9A, $B6, $C5, $A4
	db	$1F, $AB, $23, $CC
	db	$24, $E8, $A6, $01
	db	$09, $BB, $04, $07
	db	$B5, $01, $4C, $0E
	db	$B9, $06, $0F, $BA
	db	$05, $05, $B6, $02
	db	$A6, $03, $CD, $25
	db	$65, $A6, $13, $0C
	db	$D2, $32, $07, $B5
	db	$19, $0F, $BA, $03
	db	$04, $B6, $13, $09
	db	$CE, $0B, $0C, $BB
	db	$03, $01, $BB, $0A
	db	$A6, $CE, $CC, $24
	db	$CB, $A6, $C2, $08
	db	$BB, $F8, $0B, $BB
	db	$1C, $4F, $05, $B8
	db	$07, $AA, $10, $07
	db	$8E, $02, $AA, $20
	db	$B7, $C9, $B6, $B7
	db	$B7, $C8, $A6, $C0
	db	$0F, $CB, $03, $CC
	db	$24, $DC, $CC, $24
	db	$CB, $81, $0C, $5F
	db	$4E, $05, $B6, $07
	db	$CD, $2B, $0A, $A6
	db	$70, $20, $E9, $B6
	db	$CF, $4A, $02, $CE
	db	$28, $01, $B9, $08
	db	$0C, $BB, $02, $2B
	db	$18, $04, $BF, $15
	db	$2A, $0E, $A6, $32
	db	$B7, $CF, $A6, $D4
	db	$07, $B6, $02, $A6
	db	$DC, $CC, $2A, $57
	db	$0B, $D2, $96, $20
	db	$D6, $A6, $0A, $B7
	db	$CE, $A6, $7D, $B7
	db	$CF, $2A, $8A, $A6
	db	$4B, $B7, $CF, $AE
	db	$04, $CD, $26, $49
	db	$1C, $5F, $B6, $B7
	db	$B7, $C4, $A6, $15
	db	$CC, $24, $DC, $B6
	db	$CF, $4A, $2A, $F6
	db	$11, $61, $14, $5D
	db	$81, $CC, $25, $04
	db	$1F, $CB, $0C, $5F
	db	$F8, $0F, $69, $F5
	db	$B6, $B8, $04, $B8
	db	$20, $A4, $07, $97
	db	$D6, $2C, $CF, $0B
	db	$69, $02, $A4, $0C
	db	$0F, $BA, $03, $04
	db	$B6, $03, $07, $B5
	db	$02, $AA, $02, $06
	db	$8E, $0E, $03, $BB
	db	$0B, $AA, $01, $20
	db	$07, $A6, $18, $07
	db	$B8, $02, $A6, $1C
	db	$5F, $CD, $24, $F5
	db	$06, $CE, $05, $B6
	db	$BD, $04, $BB, $02
	db	$B6, $B8, $A4, $70
	db	$0F, $B9, $01, $4F
	db	$CD, $26, $17, $CD
	db	$24, $F5, $A6, $02
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
	db	$F5, $4F, $5C, $05
	db	$BB, $07, $B6, $BD
	db	$A4, $70, $CD, $26
	db	$17, $CD, $24, $F5
	db	$81, $48, $28, $4C
	db	$2C
;
L2CD3:
	rts
;
L2CD4:
	clrx
	brclr	3,STACK_0ce,L04DA
	ldx	#$52
	lda	X2CF1,x
	sta	RAM1_056
	lda	X2CF0,x
	beq	L04EF
	jsr	L2889
	bne	L04DA
	ldx	X2CEF,x
	jsr	L2993,x						;INFO: index jump
X2CEF:
	rts
;
X2CF0:
	db	$E0
X2CF1:
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
L2D55:
	brset	7,RAM1_060,L0577
	brclr	3,RAM1_08b,L0577
	lda	#$48
	brset	2,RAM1_0be,L0562
	lda	#$08
	brset	3,RAM1_05f,L057A
	lda	#$40
	brset	4,RAM1_0ba,L057A
	brset	2,RAM1_0be,L057A
	lda	#$04
	brset	7,RAM1_05f,L0581
	lda	#$80
	brset	2,RAM1_0ba,L0581
	clra
	bra	L0581
;
	db	$0B, $CB, $04, $1B
	db	$CB, $1E, $5D, $B8
	db	$7F, $A4, $CC, $B7
	db	$5B, $B8, $7F, $B7
	db	$7F, $A4, $60, $26
	db	$0F, $06, $81, $0C
	db	$09, $7F, $09, $19
	db	$7F, $AE, $A8, $CD
	db	$38, $CC, $B7, $85
	db	$01, $61, $5D, $3D
	db	$5B, $27, $27, $1E
	db	$5D, $10, $CB, $16
	db	$7E, $14, $CB, $06
	db	$CE, $4F, $07, $5B
	db	$08, $1E, $5D, $10
	db	$CB, $18, $B3, $1F
	db	$D2, $0D, $5B, $0E
	db	$1E, $5D, $0C, $7F
	db	$09, $AE, $A8, $CD
	db	$38, $CC, $B7, $85
	db	$20, $00, $0B, $7C
	db	$30, $0C, $7C, $19
	db	$05, $69, $2A, $15
	db	$69, $15, $D2, $19
	db	$D3, $AE, $A5, $CD
	db	$38, $A0, $02, $7F
	db	$1C, $01, $7F, $19
	db	$04, $81, $12, $20
	db	$2E, $04, $69, $11
	db	$14, $69, $14, $81
	db	$03, $7F, $02, $15
	db	$81, $14, $CB, $18
	db	$B3, $CC, $2F, $57
	db	$81, $B6, $7F, $00
	db	$80, $04, $A5, $EA
	db	$27, $4A, $A5, $03
	db	$26, $10, $03, $D2
	db	$52, $00, $D2, $4F
	db	$10, $D2, $AE, $88
	db	$CC, $2E, $C7, $CC
	db	$2F, $12, $01, $7F
	db	$3F, $05, $D2, $7E
	db	$0A, $7F, $39, $07
	db	$5F, $03, $02, $7C
	db	$75, $0E, $D3, $72
	db	$1E, $D3, $15, $D3
	db	$07, $6A, $02, $14
	db	$D3, $13, $D3, $03
	db	$7C, $11, $12, $D3
	db	$10, $D3, $01, $7C
	db	$05, $04, $7C, $07
	db	$20, $03, $05, $7C
	db	$02, $11, $D3, $A6
	db	$88, $CC, $2F, $06
	db	$07, $8B, $09, $0E
	db	$60, $06, $B6, $CE
	db	$A4, $C8, $27, $0C
	db	$02, $D2, $62, $04
	db	$D2, $03, $07, $7C
	db	$39, $CC, $2F, $00
	db	$01, $7F, $14, $02
	db	$D2, $53, $0D, $7C
	db	$2D, $08, $7C, $2A
	db	$05, $D2, $54, $0E
	db	$D3, $51, $20, $22
	db	$CC, $2D, $D5, $04
	db	$D2, $7C, $06, $7C
	db	$79, $0D, $6A, $8F
	db	$C6, $02, $65, $A4
	db	$F0, $A1, $B0, $27
	db	$07, $07, $D4, $04
	db	$17, $D4, $20, $1A
	db	$03, $D2, $17, $00
	db	$D2, $14, $1B, $80
	db	$B6, $85, $26, $02
	db	$1A, $80, $0D, $5D
	db	$75, $07, $8B, $72
	db	$00, $80, $6F, $CC
	db	$31, $0A, $12, $D2
	db	$11, $D2, $18, $B3
	db	$AE, $8D, $05, $D4
	db	$08, $AE, $83, $20
	db	$04, $AE, $80, $13
	db	$D2, $BF, $7D, $1C
	db	$94, $20, $49, $14
	db	$D2, $18, $B3, $13
	db	$7F, $10, $7F, $06
	db	$D3, $0D, $16, $D3
	db	$A6, $8C, $08, $D3
	db	$27, $A6, $8D, $10
	db	$7C, $20, $21, $A6
	db	$8F, $0F, $D3, $1C
	db	$1F, $D3, $B6, $D3
	db	$A4, $07, $0B, $D3
	db	$02, $AA, $08, $97
	db	$D6, $30, $FA, $05
	db	$D3, $0A, $16, $6A
	db	$20, $08, $A6, $80
	db	$15, $D2, $17, $7C
	db	$17, $6A, $B7, $7B
	db	$1A, $94, $A1, $81
	db	$27, $0A, $20, $04
	db	$12, $7F, $11, $7F
	db	$1F, $D2, $14, $CB
	db	$18, $5C, $1E, $5D
	db	$16, $BC, $81, $0D
	db	$7C, $14, $0A, $7F
	db	$11, $A6, $81, $20
	db	$DB, $06, $8E, $1C
	db	$03, $A1, $03, $07
	db	$D2, $04, $A6, $B0
	db	$B7, $77, $81, $0B
	db	$7F, $0E, $1B, $7F
	db	$13, $CE, $11, $CE
	db	$A6, $80, $B7, $A0
	db	$17, $D2, $20, $CC
	db	$06, $7F, $EB, $15
	db	$81, $1C, $C5, $00
	db	$7F, $19, $03, $7F
	db	$BB, $0A, $7C, $08
	db	$A6, $84, $B7, $7B
	db	$1A, $94, $20, $0B
	db	$05, $69, $08, $10
	db	$7F, $19, $7C, $17
	db	$6A, $20, $0B, $0D
	db	$6A, $A2, $4F, $C7
	db	$02, $64, $11, $D4
	db	$11, $7F, $13, $7F
	db	$15, $BA, $20, $98
	db	$AE, $00, $C1, $AE
	db	$06, $20, $18, $AE
	db	$06, $0D, $8E, $13
	db	$B6, $CE, $A4, $F8
	db	$B7, $CE, $CD, $25
	db	$4B, $A6, $C4, $CC
	db	$24, $E8, $AE, $04
	db	$C1, $AE, $02, $0A
	db	$7F, $98, $05, $CE
	db	$11, $03, $CE, $0E
	db	$00, $CE, $0B, $B3
	db	$D0, $26, $07, $3F
	db	$CF, $10, $CF, $3F
	db	$CC, $81, $0E, $7F
	db	$FC, $0A, $80, $F9
	db	$B6, $82, $A4, $8F
	db	$27, $25, $A1, $01
	db	$27, $21, $A4, $0F
	db	$27, $1D, $A1, $02
	db	$26, $E7, $0E, $B9
	db	$E4, $05, $B6, $13
	db	$B6, $B6, $A1, $05
	db	$27, $DB, $0E, $B5
	db	$04, $1E, $B5, $16
	db	$BC, $18, $B3, $1A
	db	$B3, $1F, $D2, $BF
	db	$D0, $14, $CE, $12
	db	$CE, $11, $CE, $A6
	db	$96, $B7, $CF, $CC
	db	$30, $C1, $A6, $01
	db	$C1, $A6, $FF, $AE
	db	$50, $20, $07, $A6
	db	$01, $C1, $A6, $FF
	db	$AE, $30, $BF, $77
	db	$20, $62, $B6, $78
	db	$A4, $0F, $AB, $F9
	db	$40, $27, $A2, $05
	db	$CE, $56, $03, $CE
	db	$53, $00, $CE, $50
	db	$B7, $57, $CD, $30
	db	$C1, $AD, $37, $22
	db	$26, $CD, $30, $E2
	db	$26, $08, $3D, $63
	db	$26, $C1, $BB, $57
	db	$20, $13, $2A, $0B
	db	$BB, $57, $2B, $0D
	db	$A6, $28, $B7, $63
	db	$4F, $20, $06, $BB
	db	$57, $2B, $F5, $27
	db	$F3, $AD, $13, $22
	db	$A6, $20, $02, $3F
	db	$56, $AD, $74, $B6
	db	$56, $CD, $38, $A0
	db	$18, $7E, $16, $7E
	db	$20, $95, $BE, $D0
	db	$58, $B7, $56, $2A
	db	$02, $40, $5C, $03
	db	$81, $02, $5C, $5C
	db	$D1, $30, $B1, $81
	db	$0A, $82, $43, $0E
	db	$87, $40, $0C, $7F
	db	$03, $0B, $7F, $0D
	db	$08, $7F, $0D, $BE
	db	$86, $B3, $85, $23
	db	$07, $BF, $85, $20
	db	$03, $06, $82, $2A
	db	$18, $7F, $BB, $85
	db	$2B, $13, $06, $81
	db	$06, $A1, $1E, $23
	db	$02, $A6, $1E, $0F
	db	$82, $08, $3D, $85
	db	$26, $14, $A6, $01
	db	$B1, $4F, $B7, $85
	db	$0C, $7F, $0B, $0E
	db	$7F, $08, $0A, $7F
	db	$05, $06, $81, $02
	db	$16, $5C, $81, $06
	db	$06, $05, $05, $06
	db	$06, $05, $05, $0F
	db	$0F, $0F, $0F, $0F
	db	$0F, $0F, $0F
;
L30C1:
	brclr	6,RAM1_07f,L00D4
	ldx	#$0E
	lda	#$2B
	brset	2,RAM1_0be,L00F3
	brset	5,RAM1_0b9,L00F3
	ldx	#$10
	lda	#$2A
	bra	L00F3
;
	db	$AE, $12, $A6, $38
	db	$06, $8E, $04, $AE
	db	$11, $A6, $37, $06
	db	$7F, $11, $B6, $D0
	db	$B7, $C7, $1E, $C7
	db	$44, $AB, $A0, $CD
	db	$38, $CB, $B7, $C8
	db	$1C, $C6, $81, $CD
	db	$25, $9A, $9F, $CC
	db	$24, $CB, $8F, $8F
	db	$8A, $8B, $90, $90
	db	$89, $89, $8F, $8F
	db	$82, $83, $90, $90
	db	$89, $89, $5F, $07
	db	$CE, $02, $AE, $22
	db	$D6, $31, $27, $B7
	db	$56, $D6, $31, $26
	db	$27, $0B, $CD, $28
	db	$89, $26, $F1, $DE
	db	$31, $25, $DD, $2F
	db	$21, $81, $0D, $64
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
L314B:
	jmp	L2631
;
L314E:
	lda	#$C8
	nop
	deca
	bne	L0150
	rts
;
L3155:
	clr	RAM1_0a1
	clr	RAM1_0a2
	clr	RAM1_0b2
	brclr	4,RAM1_069,L0170
	jmp	L3199
;
	db	$CC, $32, $2B
;
L3164:
	brclr	4,RAM1_069,L0170
	jmp	L31DA
;
L316A:
	brclr	4,RAM1_069,L0170
	jmp	L31FE
;
	db	$1F, $A0, $81
;
L3173:
	jmp	L3176
;
L3176:
	brclr	1,RAM1_0a1,L0197
	dec	RAM1_0af
	bpl	L0197
	brset	7,RAM1_0a1,L0183
	jmp	L322B
;
	db	$04, $A1, $11, $A6
	db	$14, $B7, $AF, $CD
	db	$34, $53, $A1, $03
	db	$23, $06, $3C, $B1
	db	$26, $02, $12, $B1
	db	$99, $81
;
L3199:
	sei
	bclr	3,PortC
	bclr	2,PortC
	cli
	jsr	L314B
	sei
	bset	2,PortC
	bset	3,PortC
	cli
	bsr	L01BC
	ldx	#$A3
	clr	PortB,x
	jsr	L3395
	jsr	L33DB
	inc	RAM1_0b2
	brclr	4,RAM1_0b2,L01AA
	bclr	4,RAM1_0b2
	rts
;
	db	$00, $A1, $FC, $CD
	db	$32, $5E, $A6, $4C
	db	$AD, $0E, $A6, $A6
	db	$AD, $0A, $A6, $07
	db	$AD, $06, $4F, $CD
	db	$33, $4F, $A6, $0E
	db	$AE, $50, $F7, $CC
	db	$32, $F3
;
L31DA:
	brclr	7,RAM1_0a0,L0209
	brclr	0,RAM1_0a1,L01E6
	lda	RAM1_0a0
	and	#$08
	bne	L0209
	lda	RAM1_0a0
	and	#$0F
	bsr	L01F7
	bclr	7,RAM1_0a0
	lda	RAM1_0a0
	jsr	L2616
	and	#$03
	beq	L0209
	tax
	ldx	X3418,x
	jmp	L33DB,x						;INFO: index jump
;
L31FE:
	brset	0,RAM1_0a1,L020A
	brset	2,RAM1_0a1,L0209
	brset	1,RAM1_0a1,L020A
	clr	RAM1_0a1
	rts
;
	db	$CD, $33, $38, $A4
	db	$20, $26, $F8, $02
	db	$A1, $10, $B6, $AE
	db	$A1, $02, $27, $03
	db	$09, $A1, $03, $1A
	db	$A1, $81, $A6, $91
	db	$20, $2F, $07, $A1
	db	$E0, $A6, $92, $20
	db	$5D
;
L322B:
	bsr	L0257
	brclr	0,RAM1_0a1,L0209
	bsr	L025E
	jmp	L3477
;
	db	$00, $A1, $D1, $AD
	db	$1D, $B6, $A2, $A4
	db	$0F, $B7, $A2, $CD
	db	$34, $EA, $B6, $AD
	db	$27, $04, $AB, $01
	db	$24, $02, $A6, $02
	db	$B7, $AE, $B7, $B1
	db	$A6, $89, $B7, $A1
	db	$20, $33, $03, $A1
	db	$AF, $3F, $A1, $AD
	db	$00, $A6, $05, $CC
	db	$33, $4F, $B6, $A2
	db	$A4, $0F, $27, $71
	db	$AD, $EC, $AE, $AD
	db	$CD, $33, $91, $0D
	db	$A0, $05, $AE, $A3
	db	$CD, $33, $B5, $CD
	db	$33, $DB, $BE, $AE
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
	db	$AD, $95, $CD, $34
	db	$F2, $5F, $AD, $67
	db	$A4, $20, $26, $05
	db	$5A, $26, $F7, $3F
	db	$A1, $81, $AD, $16
	db	$64, $01, $76, $64
	db	$01, $76, $64, $01
	db	$76, $64, $01, $76
	db	$0D, $A1, $05, $7C
	db	$7C, $7C, $1D, $A1
	db	$AD, $00, $F6, $AD
	db	$59, $F6, $CD, $26
	db	$17, $5C, $20, $52
;
L32FD:
	lda	#$09
	bsr	L034F
	lda	#$02
	jsr	L314E
	ldx	#$50
	bsr	L0320
	sta	,x
	incx
	cpx	#$54
	bls	L0308
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
	db	$AD, $0C, $CD, $26
	db	$17, $B7, $59, $AD
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
	db	$32, $D8, $AD, $31
	db	$17, $02, $CD, $34
	db	$F2, $08, $02, $ED
	db	$A1, $05, $27, $06
	db	$0A, $02, $E6, $C1
	db	$A6, $02, $CD, $26
	db	$1E, $AA, $0F, $9B
	db	$B7, $02, $B6, $06
	db	$A4, $03, $AB, $FC
	db	$B7, $06, $9A, $15
	db	$02, $AD, $0A, $14
	db	$02, $B6, $06, $A4
	db	$03, $AB, $0C, $B7
	db	$06, $CD, $34, $F2
	db	$81, $11, $58, $20
	db	$04
;
L3395:
	bset	0,RAM1_058
	bclr	1,RAM1_058
	stx	RAM1_057
	lda	RAM1_0a2
	jsr	L2617
	sta	RAM1_052
	lda	RAM1_0b2
	and	#$0F
	sub	RAM1_052
	bpl	L03AC
	add	#$0A
	inca
	asla
	sta	RAM1_059
	ldx	RAM1_057
	lda	#$04
	cmp	XA608
	sta	RAM1_056
	brclr	0,RAM1_058,L03CA
	lda	,x
	stx	RAM1_05a
	ldx	RAM1_059
	sta	RAM2_02d8,x
	ldx	RAM1_05a
	inc	RAM1_059
	bra	L03D6
;
	db	$BF, $5A, $BE, $59
	db	$3C, $59, $D6, $02
	db	$D8, $BE, $5A, $F7
	db	$5C, $3A, $56, $26
	db	$DE
;
L33DB:
	rts
;
	db	$B6, $A2, $A1, $0F
	db	$27, $2B, $AB, $10
	db	$A1, $A0, $24, $25
	db	$97, $CD, $26, $17
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
X3418:
	db	$6B, $00, $00, $00
	db	$50, $54, $58, $00
	db	$5C, $4D, $81, $81
	db	$82, $68, $60, $64
	db	$CC, $32, $35, $AD
	db	$AF, $20, $17, $AD
	db	$C8, $20, $13, $AD
	db	$DA, $20, $0F, $AD
	db	$D6, $20, $06, $AD
	db	$9F, $20, $02, $AD
	db	$B8, $27, $98, $CC
	db	$32, $63, $02, $A1
	db	$03, $CC, $31, $61
	db	$1F, $A1, $A6, $01
	db	$B7, $AF, $81, $B6
	db	$AD, $B0, $B1, $24
	db	$02, $A0, $02, $81
	db	$81, $CD, $32, $57
	db	$15, $A1, $AE, $50
	db	$CD, $33, $91, $CD
	db	$33, $DB, $B6, $52
	db	$B7, $AB, $B6, $53
	db	$B7, $AC, $BE, $B1
	db	$CC, $32, $7F
;
L3477:
	jsr	L32FD
	lda	,x
	sta	RAM1_0ad
	brset	5,RAM1_0a1,L048A
	sub	RAM1_0ae
	bcc	L0486
	sub	#$02
	sub	#$02
	bcs	L04E7
	lda	RAM1_0b2
	inca
	cmp	#$09
	bls	L0492
	clra
	sta	RAM1_0b2
	ldx	#$AD
	jsr	L3395
	ldx	#$A3
	jsr	L33DB
	lda	RAM1_0ad
	add	#$01
	bcc	L04A6
	lda	#$02
	sta	RAM1_0b1
	clr	RAM1_0a2
	lda	RAM1_0ae
	cmp	RAM1_0b1
	bcc	L04CE
	sta	RAM1_0ae
	beq	L04DA
	brset	5,RAM1_0a1,L04E1
	lda	RAM1_0a2
	cmp	#$90
	bcc	L04E7
	add	#$11
	sta	RAM1_0a2
	ldx	#$50
	bsr	L04EC
	lda	RAM1_051
	brset	1,RAM1_0a1,L04D2
	cmp	RAM1_0ae
	bcs	L04B0
	bset	1,RAM1_0a1
	bra	L04D6
;
	db	$B1, $AE, $24, $04
	db	$B1, $B1, $24, $D6
	db	$B6, $A2, $27, $09
	db	$0B, $A1, $02, $AA
	db	$0F, $A4, $0F, $B7
	db	$A2, $3F, $A1, $81
	db	$AE, $AD, $CD, $33
	db	$91, $CC, $33, $DB
	db	$6D, $FF, $6D, $FF
	db	$81
;
L34F7:
	brset	7,RAM1_0a0,L0500
	lda	STACK_0ce
	and	#$C0
	beq	L0501
	rts
;
	db	$0A, $CE, $3C, $03
	db	$A1, $05, $0F, $A1
	db	$02, $1A, $7F, $0B
	db	$7F, $0F, $06, $7F
	db	$09, $0A, $B9, $06
	db	$00, $5D, $06, $09
	db	$BA, $03, $CC, $35
	db	$ED, $01, $A1, $09
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
	db	$0E, $CC, $36, $86
	db	$5C, $26, $AF, $1F
	db	$CF, $A6, $88, $10
	db	$5D, $20, $0F, $CD
	db	$36, $A5, $A6, $85
	db	$20, $0A, $5C, $26
	db	$0A, $07, $D2, $6C
	db	$A6, $8D, $1D, $80
	db	$CC, $36, $3B, $0D
	db	$5D, $35, $06, $7F
	db	$32, $CC, $36, $CD
	db	$A6, $44, $1C, $C5
	db	$20, $3A, $B6, $7F
	db	$A4, $2B, $A1, $02
	db	$26, $21, $A6, $30
	db	$20, $1B, $06, $CE
	db	$1A, $06, $8E, $17
	db	$06, $D2, $74, $0A
	db	$7F, $44, $81, $06
	db	$CE, $0D, $06, $8E
	db	$E1, $03, $A1, $03
	db	$07, $D2, $1A, $A6
	db	$B0, $B7, $77, $81
	db	$09, $BA, $06, $19
	db	$BA, $A6, $F1, $20
	db	$07, $A6, $66, $05
	db	$B8, $02, $A6, $26
	db	$B7, $B3, $CC, $36
	db	$6A, $A6, $24, $06
	db	$8E, $B8, $06, $D2
	db	$42, $0A, $7F, $06
	db	$0D, $B5, $E6, $04
	db	$B8, $E3, $04, $BE
	db	$D6, $03, $A1, $06
	db	$A6, $80, $B7, $A0
	db	$20, $77, $B6, $A2
	db	$A4, $0F, $0B, $7F
	db	$07, $27, $6E, $CD
	db	$36, $A5, $20, $35
	db	$00, $A1, $02, $27
	db	$0D, $19, $BA, $A6
	db	$FF, $B7, $CF, $14
	db	$CE, $A6, $80, $CC
	db	$35, $83, $3F, $C8
	db	$A6, $8A, $CD, $24
	db	$E5, $A6, $2C, $CD
	db	$25, $9A, $81, $CD
	db	$36, $A5, $A6, $80
	db	$02, $A1, $13, $B6
	db	$A2, $A1, $0F, $27
	db	$08, $4A, $CD, $26
	db	$1E, $B1, $A2, $24
	db	$03, $A6, $86, $C1
	db	$A6, $84, $1A, $7F
	db	$B7, $A0, $20, $57
	db	$03, $5F, $03, $CC
	db	$35, $CA, $0A, $7F
	db	$5A, $14, $7E, $10
	db	$80, $A6, $02, $B7
	db	$7F, $AE, $06, $CD
	db	$26, $49, $A6, $08
	db	$B7, $CE, $A6, $26
	db	$B7, $B3, $1B, $D2
	db	$A6, $14, $AD, $31
	db	$19, $B3, $1B, $B6
	db	$81, $1B, $7F, $13
	db	$CE, $11, $CE, $17
	db	$D2, $20, $2A, $0A
	db	$7F, $2D, $08, $BA
	db	$2A, $B6, $A2, $A4
	db	$0F, $27, $93, $A6
	db	$86, $B7, $A0, $19
	db	$BA, $17, $D2, $A6
	db	$7D, $1C, $80, $15
	db	$CE, $B7, $CF, $12
	db	$CE, $10, $CE, $1A
	db	$7F, $B7, $CF, $18
	db	$B3, $1A, $B3, $1F
	db	$D2, $14, $CB, $16
	db	$7E, $1E, $5D, $81
	db	$16, $D2, $A6, $32
	db	$20, $DF, $B6, $A2
	db	$A1, $0F, $26, $04
	db	$A6, $01, $20, $0B
	db	$CD, $26, $17, $B7
	db	$5B, $B6, $A2, $B0
	db	$5B, $A4, $0F, $B7
	db	$C8, $AB, $2C, $CD
	db	$25, $9A, $A6, $8A
	db	$CD, $24, $DC, $81
	db	$5F, $0B, $CE, $02
	db	$AE, $0E, $D6, $36
	db	$EA, $B7, $56, $D6
	db	$36, $E9, $27, $0B
	db	$CD, $28, $89, $26
	db	$F1, $DE, $36, $E8
	db	$DD, $35, $91, $81
	db	$E8, $1F, $C8, $45
	db	$A8, $B0, $28, $00
	db	$AB, $E3, $AE, $E3
	db	$08, $12, $07, $30
	db	$E8, $30, $00
;
L36FC:
	bsr	L074A
	beq	L070E
	lda	#$81
	sta	RAM1_07b
	bset	5,RAM1_094
	bset	2,RAM1_069
	bset	1,RAM1_07f
	bclr	0,RAM1_07f
	bset	4,RAM1_05c
	lda	SEC_MODE
	and	#$EF
	brclr	7,RAM1_08b,L0718
	ora	#$10
	sta	RAM1_08b
	bclr	7,RAM1_08b
	and	#$E0
	cmp	#$A0
	bne	L0730
	lda	SEC_CODE1
	sta	RAM1_08c
	lda	SEC_CODE2
	sta	RAM1_08d
	lda	#$A8
	sta	RAM1_08b
L3730:
	bsr	L074A
	beq	L0736
	bclr	3,RAM1_08b
	brset	3,RAM1_08b,L0749
	bset	0,RAM1_080
	brclr	2,RAM1_08b,L0749
	brclr	7,RAM1_064,L0749
	clr	RAM1_08b
	clra
	jsr	L3761
	bset	7,RAM1_05d
	rts
;
L374A:
	lda	SEC_CODE1
	cmp	RAM1_08c
	bne	L0749
	lda	SEC_CODE2
	cmp	RAM1_08d
	rts
;
	db	$03, $8B, $02, $14
	db	$8B, $B6, $8B, $C1
	db	$A6, $08
;
L3761:
	ldx	#$63
	jsr	L388B
	bset	2,RAM1_05d
	jmp	L2725
;
L376B:
	brclr	0,STACK_0d6,L0773
	brclr	1,STACK_0d6,L0775
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
L37B0:
	brclr	7,STACK_0d6,L07F3
	brset	2,STACK_0d6,L07F3
	lda	STACK_0d9
	bne	L07BC
	clr	STACK_0d8
	lda	RAM2_027a
	ora	#$80
	cmp	STACK_0d8
	beq	L07E9
	lda	STACK_0d9
	and	#$03
	bne	L07DA
	clrx
	bsr	L0008
	txa
	incx
	deca
	bmi	L07CC
	eor	RAM2_027a
	and	#$03
	bne	L07CC
	inc	STACK_0d9
	bne	L07F3
	brclr	0,RAM1_061,L07E3
	bset	2,RAM1_05d
	bclr	6,RAM1_0ba
	bclr	5,RAM1_0ba
	bclr	5,RAM1_061
	bclr	7,STACK_0d6
	brclr	1,RAM1_0bf,L07F1
	bclr	1,RAM1_0bf
	rts
;
	db	$11, $BF, $81
;
L37F4:
	brclr	6,STACK_0d6,L0014
	bclr	6,STACK_0d6
	clra
	deca
	beq	L0000
	brclr	7,SCSR,L07FA
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
L3815:
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
	jsr	L2504
	ldx	#$A7
	jsr	L38CC
	and	#$03
	sta	RAM1_07f
	bset	7,RAM1_07f
	ldx	#$A5
	jsr	L38CC
	and	#$71
	sta	STACK_0d3
	bset	7,RAM1_07c
	ldx	#$A6
	jsr	L38CC
	and	#$06
	sta	STACK_0d4
	lda	RAM1_081
	and	#$01
	sta	RAM1_081
	bset	6,RAM1_081
	jsr	L400D
	brclr	5,RAM1_069,L006C
	bclr	5,STACK_0d3
	bclr	6,STACK_0d3
	brset	0,RAM1_07f,L006C
	lda	#$02
	sta	RAM1_07f
	rts
;
	db	$81
;
L386E:
	tst	RAM1_05c
	beq	L008A
	lda	RAM1_07f
	ldx	#$A7
	brset	4,RAM1_05c,L007F
	lda	RAM1_085
	ldx	#$A8
	bclr	3,RAM1_05c
	bclr	4,RAM1_05c
	brclr	0,RAM1_061,L008A
	brset	0,RAM1_080,L008A
	jsr	L38A0
	rts
;
L388B:
	cpx	#$90
	bcc	L00BB
	cpx	#$63
	bcs	L00BB
	bsr	L00A4
	bsr	L0097
	txa
	sub	#$30
	tax
	lda	EEPROM_0130,x
	bra	L00A4
;
L38A0:
	cpx	#$90
	bcs	L00BB
	sta	RAM1_059
	cmp	OPTR,x
	beq	L00BB
	sei
	bclr	4,Miscell
	bset	1,EEPROM_ECLK_control
	bset	2,EEPROM_ECLK_control
	bsr	L00BC
	bset	1,EEPROM_ECLK_control
	bsr	L00BC
	bset	4,Miscell
	cli
	rts
;
	db	$D7, $01, $00, $10
	db	$07, $9A, $CD, $26
	db	$31, $9B, $B6, $59
	db	$13, $07, $81, $97
;
L38CC:
	lda	OPTR,x
	rts
;
L38D0:
	brclr	6,STACK_0ce,L013D
	lda	STACK_0d0
	and	#$F0
	beq	L013D
	jmp	L397F
;
L38DC:
	db	$B6, $D0, $2B, $5D
	db	$A4, $70, $A1, $60
	db	$22, $05, $03, $81
	db	$08, $26, $06, $4F
	db	$07, $8E, $02, $AB
	db	$10, $AB, $10, $B7
	db	$D0, $CD, $26, $17
	db	$AB, $A8, $CD, $38
	db	$CB, $A4, $07, $BB
	db	$D0, $20, $28, $B6
	db	$D0, $CD, $26, $17
	db	$97, $B6, $78, $A1
	db	$17, $27, $2E, $22
	db	$0C, $B6, $D0, $D1
	db	$39, $3D, $22, $0E
	db	$27, $11, $4C, $20
	db	$0E, $B6, $D0, $D1
	db	$39, $44, $22, $06
	db	$27, $05, $D6, $39
	db	$3D, $B1, $4A, $B7
	db	$D0, $CD, $26, $17
	db	$AB, $A8, $97, $B6
	db	$D0, $A4, $07, $CD
	db	$38, $A0, $CC, $39
	db	$4C, $81, $15, $25
	db	$35, $41, $51, $65
	db	$71, $11, $20, $31
	db	$40, $50, $61, $70
	db	$A6, $00, $CD, $25
	db	$73, $B6, $D0, $2A
	db	$01, $81, $A4, $70
	db	$44, $CD, $25, $4D
	db	$B6, $D0, $A4, $07
	db	$A1, $01, $27, $16
	db	$25, $07, $AA, $30
	db	$C7, $02, $5C, $20
	db	$0D, $B6, $D0, $A0
	db	$10, $44, $44, $A4
	db	$18, $AB, $40, $CD
	db	$25, $4D, $A6, $C4
	db	$CC, $24, $DC
;
L397F:
	clrx
	brset	7,STACK_0d0,L0185
	ldx	#$00
	lda	X399E,x
	sta	RAM1_056
	lda	X399D,x
	beq	L019C
	jsr	L2889
	bne	L0185
	ldx	X399C,x
	jsr	L38DC,x						;INFO: index jump
	bclr	6,RAM1_05d
X399C:
	rts
;
X399D:
	db	$E8
X399E:
	db	$00, $07, $00, $1F
	db	$27, $00, $A6, $05
	db	$B7, $63, $A6, $80
	db	$CD, $3A, $7E, $27
	db	$0A, $CD, $07, $85
	db	$CD, $26, $31, $3D
	db	$63, $26, $EF, $CD
	db	$26, $31, $1D, $01
	db	$3F, $9E, $81
;
L39C1:
	bset	1,RAM1_05d
	lda	#$07
	cmp	XA607
	sta	RAM1_09e
	jsr	L3AA2
	bclr	6,PortB
	jsr	L2640
	bset	6,PortB
	lda	#$05
	sta	RAM1_063
	brclr	0,PortA,L01E4
	tst	RAM1_063
	bne	L01D8
	bclr	2,RAM1_09e
	jmp	L0779
;
	db	$CD, $26, $31, $CD
	db	$26, $31, $AD, $5C
	db	$3F, $9F, $CD, $25
	db	$04, $81, $20, $EB
;
L39F4:
	lda	RAM1_09e
	and	#$F0
	bne	L020E
	brclr	1,RAM1_05d,L0224
	lda	RAM1_06c
	coma
	ldx	#$07
	sta	RAM2_0250,x
	lda	#$E1
	bsr	L027E
	bne	L0224
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
	db	$CD, $3A, $7E, $26
	db	$E1, $AE, $9E, $CC
	db	$26, $6E
;
L3A48:
	brclr	2,RAM1_09e,L01F2
	brset	0,PortA,L02A8
	brset	6,RAM1_09f,L02A8
	lda	#$01
	sta	RAM1_057
	lda	#$25
	jsr	L3AA9
	beq	L02A0
	bclr	1,DDRA
	lda	#$01
	bset	2,PortA
	brset	1,PortA,L0265
	rola
	bclr	2,PortA
	bcc	L0260
	sta	RAM1_056
	sei
	bsr	L02E7
	beq	L02A0
	brset	6,RAM1_056,L02A2
	lda	RAM1_056
	beq	L0299
	sta	RAM1_09f
	bset	6,RAM1_09f
	bra	L0299
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
L3AA2:
	bclr	1,DDRA
	bset	2,PortA
	bset	2,DDRA
	rts
;
L3AA9:
	sta	RAM1_058
	bclr	1,DDRA
	bclr	2,PortA
	lda	ACH
	add	#$14
	cmp	ACH
	bmi	L02C4
	brset	1,PortA,L02B3
	brset	0,PortA,L02B3
	brset	0,PortA,L02C6
	cmp	ACH
	bpl	L02BD
	clra
	rts
;
	db	$B6, $58, $99, $49
	db	$15, $00, $13, $00
	db	$24, $04, $13, $04
	db	$20, $02, $12, $04
	db	$14, $00, $48, $26
	db	$EF, $15, $00, $CD
	db	$3B, $09, $13, $04
	db	$3D, $57, $26, $01
	db	$9B, $A6, $38, $01
	db	$00, $05, $4A, $26
	db	$FA, $9A, $81, $14
	db	$00, $9A, $3A, $57
	db	$2B, $11, $CD, $26
	db	$40, $4F, $00, $00
	db	$0A, $A6, $38, $15
	db	$00, $00, $00, $03
	db	$4A, $26, $FA, $81
;
L3B0A:
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
	bpl	L031A
	lda	#$40
	sta	RAM2_02ca
	sta	RAM2_02cb
	lda	#$10
	sta	RAM2_02c2
	brset	7,RAM1_061,L0387
	brclr	3,RAM1_08e,L0335
	bset	4,STACK_0d5
	bset	5,STACK_0d5
	jsr	L25A6
	bset	5,RAM1_08f
	brset	3,RAM1_05f,L0341
	bset	0,RAM1_090
	ldx	#$2F
	bclr	0,RAM1_05b
	lda	OPTR,x
	cmp	EEPROM_0130,x
	bne	L0352
	cmp	EEPROM_0160,x
	beq	L036F
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
	jsr	L388B
	decx
	bpl	L0345
	lda	#$03
	bsr	L03C4
	ldx	#$12
	jsr	L38CC
	ldx	#$0E
	cmp	#$5A
	beq	L0382
	clra
	add	#$FF
	jsr	L3DFF
	rts
;
L3B88:
	brclr	6,RAM1_09f,L03A1
	clrx
	lda	RAM1_09f
	bmi	L039E
	and	#$3F
	cmp	#$21
	beq	L039E
	bcs	L039C
	cmp	#$25
	bcs	L039E
	ldx	#$BC
	stx	RAM2_02d6
	rts
;
L3BA2:
	lda	RAM2_02d6
	beq	L03B3
	deca
	sta	RAM2_02d6
	bne	L03B3
	lda	#$01
	bset	0,RAM1_05b
	bra	L03C4
;
	db	$09, $7C, $EB, $AE
	db	$0D, $CD, $3D, $D2
	db	$C6, $02, $CD, $2A
	db	$E1, $A6, $04, $20
	db	$0F, $B7, $50, $AE
	db	$0D, $01, $5B, $00
	db	$CD, $3D, $E0, $01
	db	$5B, $D0, $B6, $50
	db	$AE, $CF, $CC, $38
	db	$A0
;
L3BD8:
	brclr	7,RAM1_060,L03FD
	brclr	6,RAM1_05d,L03FD
	ldx	#$23
	lda	X40B0,x
	decx
	decx
	cmp	RAM1_078
	bne	L03FA
	lda	X40B0,x
	sta	RAM2_02d3
	lda	X40B1,x
	sta	RAM2_02d4
	lda	#$FF
	sta	RAM2_02d5
	decx
	bne	L03E0
	rts
;
L3BFE:
	brclr	2,RAM1_091,L0439
	sei
	brclr	7,PortB,L0427
	brclr	1,RAM1_090,L0427
	brset	3,PortB,L0427
	lda	#$24
	jsr	L25B7
	cmp	#$1F
	bls	L0416
	lda	#$1F
	sta	RAM2_02c7
	lda	#$23
	jsr	L25B7
	cmp	#$1F
	bls	L0424
	lda	#$1F
	sta	RAM2_02c8
	cli
	brclr	3,PortB,L048A
	brclr	1,RAM1_090,L048A
	bclr	1,RAM1_090
	lda	RAM2_02c7
	beq	L048A
	bset	4,RAM1_06b
	bset	6,RAM1_095
	lda	RAM1_090
	add	#$04
	sta	RAM1_090
	bcs	L0484
	bpl	L048A
	sei
	brclr	7,PortB,L048A
	lda	#$24
	jsr	L25B7
	cli
	brset	5,RAM1_08e,L0456
	cmp	#$64
	bhi	L0456
	lda	#$64
	sub	RAM2_02c7
	bcc	L045C
	clra
	jsr	L3FAE
	brset	1,RAM1_08f,L0484
	brset	0,RAM1_08f,L0484
	sei
	brclr	7,PortB,L048A
	lda	#$23
	jsr	L25B7
	cli
	brclr	5,RAM1_08e,L0475
	brclr	7,RAM1_08e,L047B
	cmp	#$64
	bhi	L047B
	lda	#$64
	sub	RAM2_02c8
	bcc	L0481
	clra
	jsr	L3FAE
	bclr	4,RAM1_06b
	bset	6,RAM1_095
	clr	RAM1_090
	cli
	brset	4,RAM1_0bc,L04C7
	brset	2,RAM1_0bc,L04A6
	brset	3,RAM1_0bf,L04C7
	brclr	5,RAM1_08f,L04C7
	bclr	5,RAM1_08f
	bclr	6,RAM1_08f
	bset	2,RAM1_0bc
	bset	4,RAM1_0bc
	lda	#$60
	sta	RAM2_02d1
	bra	L04C7
;
	db	$C6, $02, $D1, $A5
	db	$08, $26, $06, $4C
	db	$C7, $02, $D1, $20
	db	$14, $9B, $0E, $01
	db	$10, $A6, $23, $CD
	db	$25, $B7, $C7, $02
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
L3CE1:
	lda	RAM2_02d7
	brclr	4,RAM1_06a,L04EB
	add	#$0C
	bcs	L04F2
	beq	L04F2
	sub	#$04
	sta	RAM2_02d7
	brclr	2,RAM1_091,L04E0
	brclr	0,RAM1_090,L04E0
	bclr	0,RAM1_090
	brset	3,RAM1_091,L0501
	jsr	L3FBC
	rts
;
	db	$A6, $32, $B7, $90
	db	$81
;
L3D06:
	clrx
	brset	1,RAM1_05f,L0511
	lda	RAM1_09c
	cmp	#$F4
	bhi	L0514
	clc
	jsr	L3DCF
	brclr	5,RAM1_060,L051E
	bclr	5,RAM1_060
	ldx	#$01
	jsr	L3E02
	lda	#$27
	jsr	L25B7
	coma
	add	#$78
	bcs	L052C
	add	#$14
	bcs	L0531
	ldx	#$01
	jsr	L3DD2
	brclr	2,RAM1_0bc,L0583
	lda	RAM2_02d1
	bpl	L0583
	ldx	#$03
	brset	6,RAM1_08f,L0547
	bclr	4,RAM1_08f
	brclr	0,RAM1_091,L0547
	bset	4,RAM1_08f
	bset	6,RAM1_08f
	jsr	L3DD2
	bclr	3,RAM1_08f
	ldx	#$02
	lda	RAM2_02d2
	coma
	add	#$66
	bcc	L0558
	bset	3,RAM1_08f
	bsr	L05D2
	lda	RAM2_02c3
	bmi	L057F
	lda	RAM2_02c2
	bpl	L0567
	brclr	2,RAM1_08f,L057F
	lsra
	bne	L056C
	bset	2,RAM1_08f
	brclr	6,RAM1_08f,L0583
	lda	RAM2_02d1
	bit	#$70
	beq	L057D
	sub	#$10
	sta	RAM2_02d1
	bra	L0583
;
	db	$1A, $8F, $15, $BC
	db	$18, $BC, $AE, $04
	db	$03, $01, $0C, $0A
	db	$91, $00, $AD, $45
	db	$C6, $02, $C4, $2A
	db	$02, $13, $01, $AE
	db	$05, $06, $91, $00
	db	$AD, $34, $AE, $09
	db	$01, $01, $0C, $08
	db	$91, $00, $AD, $2D
	db	$C6, $02, $C9, $2A
	db	$02, $11, $01, $05
	db	$8E, $14, $08, $6A
	db	$09, $03, $5F, $0E
	db	$B6, $9C, $A1, $F4
	db	$22, $08, $AE, $0A
	db	$09, $6A, $00, $CD
	db	$3D, $CF, $03, $8E
	db	$08, $AE, $0B, $0D
	db	$6A, $00, $CD, $3D
	db	$CF, $81
;
L3DCF:
	rora
	coma
	rola
L3DD2:
	lda	RAM2_02c0,x
	bcs	L05F5
	sub	#$02
	bcc	L05F9
	bra	L05E5
;
	db	$46, $43, $49
;
L3DE0:
	lda	RAM2_02c0,x
	bcs	L0602
	lsra
	bcs	L0617
	lda	#$01
	sta	RAM2_02c0,x
	lda	EEPROM_01c0,x
	beq	L0617
	deca
	bra	L0604
;
	db	$2B, $20, $AB, $02
	db	$D7, $02, $C0, $2B
	db	$04, $81
;
L3DFF:
	clra
	bcs	L0604
L3E02:
	lda	#$33
	sta	RAM1_056
	txa
	add	#$C0
	tax
	lda	RAM1_056
	brset	0,RAM1_08e,L0614
	cpx	#$C2
	bne	L0614
	clra
	jsr	L38A0
	rts
;
	db	$C6, $02, $B3, $A1
	db	$03, $26, $11, $C6
	db	$02, $B4, $A1, $53
	db	$26, $03, $10, $90
	db	$81, $A6, $06, $CD
	db	$25, $91, $1F, $5D
	db	$81, $DE, $3E, $37
	db	$DC, $3E, $3F, $00
	db	$00, $20, $32, $4F
	db	$6D, $72, $84, $4F
	db	$0E, $91, $02, $A6
	db	$08, $C7, $02, $B5
	db	$A6, $27, $CD, $25
	db	$B7, $C7, $02, $B8
	db	$4F, $05, $5F, $03
	db	$C6, $02, $A4, $C7
	db	$02, $BB, $02, $5F
	db	$46, $20, $44, $10
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
	db	$BB, $81, $C6, $02
	db	$C4, $A4, $61, $C7
	db	$02, $C4, $4F, $12
	db	$01, $0B, $91, $01
	db	$4C, $C7, $02, $B5
	db	$06, $5F, $00, $A6
	db	$87, $25, $01, $4C
	db	$C7, $02, $BE, $81
	db	$0C, $6A, $0B, $20
	db	$09, $1A, $D5, $CD
	db	$25, $A6, $C6, $02
	db	$D7, $49, $A6, $C2
	db	$25, $01, $4C, $C7
	db	$02, $B8, $81, $C6
	db	$02, $D3, $C7, $02
	db	$B4, $C6, $02, $D4
	db	$C7, $02, $B5, $81
	db	$3F, $5B, $07, $8E
	db	$02, $3C, $5B, $C6
	db	$02, $B3, $AE, $80
	db	$CD, $38, $8B, $C6
	db	$02, $B4, $AE, $81
	db	$CD, $38, $8B, $C6
	db	$02, $B5, $AE, $82
	db	$CD, $38, $8B, $C6
	db	$02, $B6, $AE, $83
	db	$CD, $38, $8B, $A6
	db	$5A, $AE, $72, $CD
	db	$38, $8B, $CD, $40
	db	$0D, $07, $8E, $2E
	db	$3D, $5B, $26, $2A
	db	$AE, $12, $CD, $3F
	db	$D1, $AE, $00, $CD
	db	$3F, $DF, $A6, $0D
	db	$CD, $3F, $E7, $C6
	db	$02, $7C, $4A, $2A
	db	$F7, $AE, $30, $CD
	db	$3F, $D1, $AE, $02
	db	$CD, $3F, $DF, $A6
	db	$1B, $CD, $3F, $E7
	db	$C6, $02, $7C, $4A
	db	$2A, $F7, $81, $A6
	db	$81, $B7, $D0, $A6
	db	$41, $B7, $CE, $10
	db	$80, $1E, $94, $1F
	db	$60, $1D, $60, $1E
	db	$5D, $81, $AE, $CF
	db	$4F, $A3, $BE, $22
	db	$03, $D6, $3E, $EE
	db	$CD, $38, $A0, $CD
	db	$07, $85, $5A, $A3
	db	$A0, $24, $ED, $AE
	db	$80, $A6, $03, $CD
	db	$38, $8B, $AE, $81
	db	$A6, $22, $CD, $38
	db	$8B, $A6, $00, $AE
	db	$72, $CD, $38, $8B
	db	$A6, $46, $CD, $24
	db	$DC, $CD, $1F, $1C
	db	$CD, $39
X3F7A:
	db	$F4, $CD, $07, $85
	db	$20, $FB, $AE, $63
	db	$A6, $A0, $CD, $38
	db	$8B, $CD, $25, $42
	db	$A6, $C4, $20, $E4
	db	$00, $00, $00, $00
	db	$00, $00, $00, $02
	db	$08, $03, $03, $03
	db	$00, $00, $03, $00
	db	$02, $00, $00, $10
	db	$10, $10, $10, $10
	db	$10, $00, $00, $00
	db	$00, $00, $00, $00
;
L3FAE:
	bclr	1,RAM1_08f
	cmp	#$A9
	bhi	L07BC
	cmp	#$0B
	bhi	L07BE
	bset	0,RAM1_08f
	bra	L07C0
;
L3FBC:
	bset	1,RAM1_08f
	bclr	0,RAM1_08f
	ldx	#$05
	brclr	1,RAM1_08f,L07C5
	jsr	L3DE0
	ldx	#$06
	brclr	0,RAM1_08f,L07CD
	jsr	L3DE0
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
	db	$07, $85, $CD, $49
	db	$55, $07, $67, $F7
	db	$17, $67, $CD, $37
	db	$B0, $CD, $49, $0B
	db	$0E, $D6, $EC, $81
;
L400D:
	ldx	EEPROM_0120
	lda	EEPROM_0121
	lsrx
	rora
	bsr	L004C
	lda	RAM1_058
	and	#$07
	sta	RAM1_08e
	brclr	0,RAM1_056,L0022
	bset	3,RAM1_08e
	brclr	4,RAM1_058,L0027
	bset	4,RAM1_08e
	lda	RAM1_057
	and	#$07
	beq	L003B
	bset	5,RAM1_08e
	cmp	#$05
	bne	L0035
	bset	6,RAM1_08e
	cmp	#$01
	bne	L003B
	bset	7,RAM1_08e
	brclr	5,RAM1_069,L0044
	bclr	4,RAM1_08e
	bclr	3,RAM1_08e
	bclr	1,RAM1_08e
	bclr	1,RAM1_081
	brclr	4,RAM1_08e,L004B
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
	db	$26, $1E, $CD, $26
	db	$17, $B7, $52, $27
	db	$32, $1E, $59, $D6
	db	$40, $AB, $BB, $58
	db	$25, $04, $1F, $59
	db	$A0, $60, $29, $02
	db	$A0, $06, $B7, $58
	db	$39, $59, $1E, $59
	db	$D6, $40, $AA, $B9
	db	$57, $25, $04, $1F
	db	$59, $A0, $60, $29
	db	$02, $A0, $06, $B7
	db	$57, $39, $59, $24
	db	$02, $3C, $56, $3A
	db	$52, $26, $CE, $5C
	db	$5C, $81, $66, $7C
	db	$68, $BC, $A6, $FC
X40B0:
	db	$30
X40B1:
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
L40DD:
	brclr	7,RAM1_060,L00F8
	brset	7,RAM1_092,L00F8
	bclr	7,RAM1_060
	bclr	7,RAM1_093
	bset	2,RAM1_05d
	brclr	6,RAM1_060,L00F3
	bclr	6,RAM1_060
	brset	0,RAM1_05f,L00F3
	bclr	0,RAM1_061
	bclr	3,PortB
	bclr	1,PortB
	rts
;
	db	$06, $60, $6B, $00
	db	$60, $5B, $08, $60
	db	$06, $0F, $93, $06
	db	$CC, $41, $8E, $CC
	db	$41, $A1, $CD, $43
	db	$F6, $27, $58, $CD
	db	$43, $F6, $27, $53
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
	db	$D6, $44, $01, $27
	db	$22, $C1, $02, $B0
	db	$26, $08, $D6, $44
	db	$02, $C1, $02, $B2
	db	$27, $05, $5C, $5C
	db	$5C, $20, $E9, $A1
	db	$04, $27, $00, $1D
	db	$93, $B6, $93, $A4
	db	$1F, $DE, $44, $03
	db	$DC, $41, $F5, $AE
	db	$47, $CD, $43, $C0
	db	$81, $1D, $93, $B6
	db	$93, $4C, $A4, $1F
	db	$A1, $02, $27, $F9
	db	$A1, $03, $27, $14
	db	$A1, $04, $27, $10
	db	$A1, $05, $27, $26
	db	$A0, $14, $24, $51
	db	$81, $A6, $01, $0B
	db	$69, $02, $A6, $02
	db	$CD, $43, $B6, $18
	db	$94, $1C, $93, $CD
	db	$45, $07, $0E, $92
	db	$36, $A6, $90, $B7
	db	$92, $C6, $02, $B0
	db	$AA, $20, $C7, $02
	db	$B0, $81, $CD, $43
	db	$B6, $18, $94, $C6
	db	$01, $20, $C7, $02
	db	$B4, $C6, $01, $21
	db	$C7, $02, $B5, $C6
	db	$01, $22, $C7, $02
	db	$B6, $C6, $01, $23
	db	$C7, $02, $B7, $1E
	db	$60, $1E, $5D, $11
	db	$81, $A6, $02, $B7
	db	$8A, $1C, $82, $81
	db	$A6, $13, $B7, $93
	db	$4F, $B7, $50, $AE
	db	$95, $CD, $43, $C0
	db	$3F, $57, $CC, $43
	db	$3F, $AE, $CE, $4F
	db	$CD, $38, $A0, $5A
	db	$A3, $C0, $24, $F7
	db	$20, $E2, $A1, $06
	db	$25, $09, $A1, $08
	db	$25, $07, $26, $03
	db	$CC, $43, $45, $A6
	db	$05, $4C, $CD, $43
	db	$B6, $1E, $5D, $CD
	db	$3E, $18, $81, $CE
	db	$02, $B3, $27, $13
	db	$A3, $07, $22, $10
	db	$BF, $5B, $DE, $44
	db	$26, $CD, $43, $C0
	db	$18, $94, $BE, $5B
	db	$CD, $3E, $31, $81
	db	$A3, $19, $26, $FB
	db	$05, $60, $F8, $12
	db	$60, $81, $CD, $3E
	db	$D0, $CC, $41, $F5
	db	$05, $8B, $03, $CC
	db	$41, $D3, $CE, $02
	db	$B3, $C6, $02, $B4
	db	$CD, $40, $4C, $B6
	db	$57, $C1, $01, $01
	db	$26, $0F, $B6, $58
	db	$C1, $01, $02, $26
	db	$08, $CD, $37, $5F
	db	$15, $5D, $14, $60
	db	$81, $3C, $8B, $CD
	db	$37, $57, $A6, $FF
	db	$B7, $8C, $CC, $40
	db	$E3, $20, $41, $03
	db	$60, $3D, $C6, $02
	db	$B3, $B7, $50, $C6
	db	$02, $B5, $B7, $51
	db	$A6, $12, $CD, $43
	db	$B6, $A6, $03, $B7
	db	$52, $BE, $51, $9F
	db	$A4, $FC, $27, $0B
	db	$A0, $30, $27, $07
	db	$A0, $30, $27, $03
	db	$CD, $38, $CC, $3C
	db	$51, $BE, $52, $D7
	db	$02, $B0, $3C, $52
	db	$C6, $02, $B0, $4C
	db	$C7, $02, $B0, $A1
	db	$0F, $27, $04, $3A
	db	$50, $26, $D6, $81
	db	$C6, $02, $B3, $A1
	db	$AB, $26, $0A, $C6
	db	$02, $B4, $A1, $CD
	db	$26, $03, $CC, $3F
	db	$46, $03, $60, $EB
	db	$C6, $02, $B3, $C1
	db	$01, $01, $26, $E3
	db	$C6, $02, $B4, $C1
	db	$01, $02, $26, $DB
	db	$CC, $3F, $80, $3C
	db	$50, $3C, $93, $BE
	db	$50, $A3, $0E, $23
	db	$05, $3F, $93, $1E
	db	$93, $81, $D6, $01
	db	$C0, $27, $EC, $A3
	db	$02, $27, $14, $A3
	db	$03, $27, $08, $A3
	db	$05, $27, $0C, $A3
	db	$06, $26, $0D, $5A
	db	$D1, $01, $C0, $25
	db	$D6, $20, $05, $D1
	db	$01, $C1, $23, $CF
	db	$A1, $33, $26, $01
	db	$4F, $B7, $51, $BE
	db	$57, $5C, $5C, $5C
	db	$A3, $0C, $23, $03
	db	$1C, $93, $81, $BF
	db	$57, $9F, $AB, $03
	db	$C7, $02, $B0, $B6
	db	$50, $48, $BB, $50
	db	$B7, $58, $BE, $58
	db	$D6, $44, $D9, $BE
	db	$57, $D7, $02, $B0
	db	$BE, $58, $D6, $44
	db	$DA, $BE, $57, $D7
	db	$02, $B1, $BE, $58
	db	$D6, $44, $DB, $3D
	db	$51, $26, $02, $A4
	db	$7F, $BE, $57, $D7
	db	$02, $B2, $18, $94
	db	$20, $85, $B7, $93
	db	$B6, $93, $A4, $1F
	db	$97, $DE, $44, $1D
	db	$1E, $93, $3F, $56
	db	$BF, $57, $1B, $5D
	db	$A3, $49, $26, $02
	db	$1A, $5D, $D6, $44
	db	$3F, $C7, $02, $B0
	db	$A4, $0F, $A0, $03
	db	$B7, $58, $A6, $FF
	db	$C7, $02, $B1, $BE
	db	$57, $D6, $44, $40
	db	$BE, $56, $D7, $02
	db	$B2, $3C, $56, $3C
	db	$57, $3A, $58, $2A
	db	$EE, $1E, $95, $18
	db	$92, $81, $4F, $03
	db	$03, $02, $A6, $20
	db	$B8, $93, $A4, $20
	db	$81, $03, $00, $00
	db	$03, $07, $4B, $03
	db	$05, $5C, $04, $04
	db	$69, $04, $29, $82
	db	$07, $10, $A5, $08
	db	$2B, $AB, $05, $1B
	db	$DC, $06, $03, $DE
	db	$00, $3F, $01, $0F
	db	$1D, $2B, $38, $3B
	db	$3F, $43, $47, $49
	db	$57, $65, $70, $7E
	db	$86, $8E, $95, $93
	db	$9A, $9D, $A0, $A3
	db	$A6, $A9, $AC, $AF
	db	$B2, $B5, $B8, $BB
	db	$BE, $C1, $C4, $81
	db	$0F, $F6, $34, $42
	db	$30, $30, $33, $35
	db	$31, $38, $36, $20
	db	$20, $20, $0F, $F6
	db	$34, $42, $30, $30
	db	$33, $35, $31, $35
	db	$32, $20, $20, $20
	db	$0F, $F6, $20, $52
	db	$61, $64, $69, $6F
	db	$20, $20, $20, $20
	db	$20, $20, $0E, $F6
	db	$20, $20, $20, $20
	db	$20, $20, $20, $30
	db	$30, $30, $31, $08
	db	$F6, $00, $05, $F5
	db	$03, $53, $05, $F5
	db	$03, $56, $05, $F5
	db	$04, $AB, $44, $0A
	db	$0F, $E7, $10, $08
	db	$00, $06, $4E, $C0
	db	$17, $64, $80, $25
	db	$00, $87, $0F, $E7
	db	$25, $00, $F0, $25
	db	$00, $C2, $11, $20
	db	$20, $11, $20, $20
	db	$0C, $E7, $25, $01
	db	$11, $25, $00, $F4
	db	$25, $00, $C2, $0F
	db	$E7, $10, $01, $00
	db	$11, $20, $20, $25
	db	$00, $F5, $25, $00
	db	$88, $09, $E7, $25
	db	$00, $F6, $25, $00
	db	$C2, $09, $E7, $25
	db	$00, $F7, $25, $00
	db	$C2, $06, $E7, $11
	db	$20, $20, $03, $FD
	db	$06, $FC, $FF, $FF
	db	$88, $03, $51, $A4
	db	$02, $9C, $87, $03
	db	$58, $A4, $03, $58
	db	$9D, $03, $52, $9D
	db	$03, $54, $AC, $03
	db	$54, $A4, $03, $55
	db	$AC, $03, $55, $A4
	db	$03, $58, $9D, $03
	db	$56, $B1, $03, $57
	db	$B1, $03, $57, $9D
	db	$FF, $FF, $00, $04
	db	$14, $23, $00, $C6
	db	$01, $D0, $A1, $41
	db	$26, $32, $C6, $02
	db	$B3, $A1, $34, $26
	db	$13, $AE, $0A, $D6
	db	$01, $D0, $0A, $69
	db	$03, $D6, $01, $E0
	db	$D7, $02, $B2, $5A
	db	$26, $F1, $20, $18
	db	$C6, $02, $BD, $A1
	db	$31, $26, $11, $AE
	db	$05, $D6, $01, $DA
	db	$0A, $69, $03, $D6
	db	$01, $EA, $D7, $02
	db	$B8, $5A, $26, $F1
	db	$81
;
L4541:
	rts
;
	db	$A6, $07, $CD, $25
	db	$91, $A6, $14, $CC
	db	$24, $CB
;
L454C:
	brclr	6,STACK_0ce,L0559
	lda	STACK_0d0
	bit	#$F0
	bne	L0559
	jmp	L45EE
;
L4558:
	db	$81, $81, $A6, $01
	db	$20, $02, $A6, $07
	db	$07, $D0, $F6, $BB
	db	$D0, $A4, $0F, $AA
	db	$08, $A1, $0D, $25
	db	$07, $26, $03, $A6
	db	$08, $C1, $A6, $0C
	db	$B7, $D0, $20, $00
	db	$0B, $CE, $10, $A6
	db	$17, $0C, $81, $5A
	db	$BE, $84, $D6, $45
	db	$DD, $B7, $C8, $A6
	db	$8B, $20, $4F, $0D
	db	$CE, $CB, $BE, $D0
	db	$A6, $05, $0C, $6A
	db	$02, $A6, $07, $A3
	db	$01, $27, $3F, $A6
	db	$CA, $A3, $08, $27
	db	$39, $9F, $AE, $07
	db	$A1, $09, $27, $12
	db	$A1, $0A, $27, $18
	db	$A1, $0B, $26, $1F
	db	$E6, $A3, $D7, $02
	db	$57, $5A, $2A, $F8
	db	$20, $1E, $E6, $DA
	db	$D7, $02, $57, $5A
	db	$2A, $F8, $20, $14
	db	$D6, $45, $E6, $D7
	db	$02, $57, $5A, $2A
	db	$F7, $20, $09, $D6
	db	$01, $90, $D7, $02
	db	$57, $5A, $2A, $F7
	db	$A6, $C4, $CC, $24
	db	$DC, $00, $01, $03
	db	$04, $05, $06, $08
	db	$09, $0A, $37, $42
	db	$32, $30, $2E, $31
	db	$20, $4D
;
L45EE:
	clrx
	lda	X4606,x
	sta	RAM1_056
	lda	X4605,x
	beq	L0604
	jsr	L2889
	bne	L05EF
	ldx	X4604,x
	jsr	L4558,x						;INFO: index jump
X4604:
	rts
;
X4605:
	db	$F6
X4606:
	db	$01, $F8, $02, $E7
	db	$06, $00
;
L460C:
	brclr	1,STACK_0d2,L0684
	brset	0,STACK_0d2,L0684
	brclr	3,STACK_0cb,L0619
	bclr	3,STACK_0cb
	bset	7,RAM1_05d
	brclr	6,RAM1_05d,L0684
	jmp	L4742
;
L461F:
	db	$03, $D2, $62, $A6
	db	$06, $B8, $D4, $B7
	db	$D4, $AE, $A6, $CD
	db	$38, $A0, $11, $D4
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
	db	$4A, $CD, $26, $64
	db	$C4, $02, $66, $26
	db	$0C, $A6, $88, $CD
	db	$24, $E5, $B6, $C8
	db	$AA, $20, $CD, $25
	db	$9A, $B6, $C8, $AA
	db	$C0, $97, $20, $B4
	db	$A6, $05, $CD, $25
	db	$65, $C6, $02, $60
	db	$A4, $07, $B7, $C8
	db	$C6, $02, $65, $A5
	db	$06, $26, $46, $A5
	db	$08, $26, $0C, $A4
	db	$F0, $A1, $A0, $27
	db	$06, $A1, $B0, $26
	db	$0B, $16, $D4, $A6
	db	$20, $CD, $25, $9A
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
	db	$C8, $9F, $CC, $24
	db	$CB, $CD, $25, $3F
	db	$B6, $C8, $AA, $30
	db	$C7, $02, $59, $C6
	db	$02, $65, $44, $A4
	db	$03, $AA, $30, $C7
	db	$02, $5E, $A6, $C4
	db	$CC, $24, $DC, $3F
	db	$56, $17, $CB, $04
	db	$6A, $12, $13, $D4
	db	$10, $D4, $C6, $02
	db	$64, $A5, $12, $26
	db	$02, $11, $D4, $05
	db	$D4, $02, $12, $D4
	db	$4F, $01, $D4, $02
	db	$18, $56, $03, $D4
	db	$02, $A6, $10, $CD
	db	$25, $0E, $81
;
L4742:
	clrx
	lda	X475C,x
	sta	RAM1_056
	lda	X475B,x
	beq	L075A
	jsr	L2889
	bne	L0743
	ldx	X475A,x
	jsr	L461F,x						;INFO: index jump
	bclr	6,RAM1_05d
X475A:
	rts
;
X475B:
	db	$F8
X475C:
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
L479C:
	brclr	2,STACK_0d2,L07B4
	brclr	4,STACK_0cb,L07AB
	bclr	4,STACK_0cb
	bset	7,RAM1_05d
	brclr	1,RAM1_07c,L07AB
	bset	2,STACK_0cb
	brclr	6,RAM1_05d,L07B4
	brset	7,STACK_0d3,L07B4
	jmp	L489A
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
	db	$AE, $A5, $CD, $38
	db	$A0, $20, $39, $07
	db	$6A, $04, $1A, $D3
	db	$20, $06, $A6, $20
	db	$B8, $D3, $B7, $D3
	db	$AE, $A5, $CD, $38
	db	$A0, $03, $7C, $10
	db	$A6, $8B, $01, $7C
	db	$06, $04, $7C, $BC
	db	$4A, $20, $B9, $05
	db	$7C, $B6, $20, $F8
	db	$07, $6A, $11, $20
	db	$05, $A6, $8E, $03
	db	$7C, $02, $A6, $8F
	db	$17, $6A, $B7, $7B
	db	$13, $6A, $1A, $94
	db	$1E, $5D, $81, $A6
	db	$04, $CD, $25, $73
	db	$A6, $00, $07, $7C
	db	$11, $02, $7C, $1D
	db	$07, $D3, $0B, $A6
	db	$01, $19, $D3, $00
	db	$7C, $04, $A6, $02
	db	$18, $D3, $CD, $24
	db	$CB, $13, $6A, $07
	db	$D3, $43, $B6, $D3
	db	$AE, $A5, $CC, $38
	db	$A0, $0B, $D3, $03
	db	$02, $6A, $36, $01
	db	$7C, $09, $A6, $03
	db	$04, $7C, $0B, $A6
	db	$04, $20, $07, $A6
	db	$03, $05, $7C, $02
	db	$A6, $04, $13, $6A
	db	$CC, $24, $DC
;
L487B:
	bclr	4,STACK_0cb
	clra
	brclr	7,STACK_0d3,L0086
	brclr	2,STACK_0d3,L008B
	bra	L0089
;
	db	$07, $6A, $02, $AA
	db	$10, $B7, $56, $B6
	db	$D3, $A4, $60, $09
	db	$56, $02, $A4, $40
	db	$CD, $25, $0E, $81
;
L489A:
	clrx
	lda	X48B4,x
	sta	RAM1_056
	lda	X48B3,x
	beq	L00B2
	jsr	L2889
	bne	L009B
	ldx	X48B2,x
	jsr	L47B5,x						;INFO: index jump
	bclr	6,RAM1_05d
X48B2:
	rts
;
X48B3:
	db	$F9
X48B4:
	db	$6C, $0B, $28, $04
	db	$42, $08, $42, $F3
	db	$00, $ED, $03, $FC
	db	$00, $FD, $03, $F2
	db	$00, $F1, $03, $05
	db	$33, $00
;
L48CA:
	jsr	L499F
	bclr	4,PortA
	bset	4,DDRA
	bclr	5,PortA
	bset	5,DDRA
	bclr	3,PortA
	bset	3,DDRA
	jsr	L2631
	bclr	3,DDRA
	rts
;
L48DF:
	bclr	3,DDRA
	brclr	5,RAM1_06a,L00E7
	brclr	3,PortA,L010A
	jsr	L499F
	bclr	5,PortB
	jsr	L2631
	bset	5,PortB
	bset	7,RAM1_094
	bset	0,RAM1_05e
	lda	#$05
	sta	RAM1_063
	jsr	L490B
	tst	RAM1_094
	beq	L010A
	jsr	L0785
	jsr	L2631
	tst	RAM1_063
	bne	L00F9
	rts
;
L490B:
	clrx
	lda	RAM1_094
	bne	L0116
	lda	RAM1_095
	beq	L0152
	ldx	#$08
	incx
	asla
	bcc	L0116
	lda	X49C8,x
	sta	RAM1_050
	aslx
	lda	X49D1,x
	sta	RAM1_059
	lda	X49D2,x
	sta	RAM1_056
	lda	#$07
	sta	RAM1_058
	lda	X4A09
	sta	RAM1_057
	lda	X4A08
	tsta
	beq	L013B
	bset	0,RAM1_059
	jsr	L2679
	lda	RAM1_050
	jsr	L4A14
	brset	0,RAM1_05e,L0152
	brclr	0,RAM1_050,L0161
	ldx	#$94
	tst	,x
	bne	L014F
	incx
	jsr	L266E
	bclr	0,RAM1_05e
	rts
;
L4955:
	brset	5,PortA,L019E
	brset	0,RAM1_05e,L019E
	jsr	L4A78
	brset	0,RAM1_05e,L019E
	ldx	#$0B
	decx
	bmi	L019E
	cmp	X49E7,x
	bne	L0163
	stx	RAM1_050
	jsr	L2695
	stx	RAM1_058
	ldx	RAM1_050
	aslx
	lda	X4A08
	sta	RAM1_059
	lda	X4A09
	sta	RAM1_056
	lda	X49F3,x
	sta	RAM1_057
	lda	X49F2,x
	tsta
	beq	L018C
	bset	0,RAM1_059
	jsr	L2679
	lda	RAM1_050
	beq	L019E
	cmp	#$05
	beq	L019C
	bhi	L019E
	bset	3,STACK_0cb
	cmp	X18CB
	rts
;
L499F:
	clra
	ldx	#$07
	sta	RAM2_0260,x
	decx
	bne	L01A2
	lda	#$80
	sta	RAM2_0260
	clr	RAM1_06a
	lda	RAM1_07c
	and	#$40
	ora	#$A0
	sta	RAM1_07c
	brset	5,RAM1_069,L01C0
	bset	2,RAM1_069
	bset	6,RAM1_07c
	bset	6,RAM1_06a
	clr	RAM1_092
	clr	RAM1_091
	clr	RAM1_094
	clr	RAM1_095
X49C8:
	rts
;
	db	$0A, $02, $04, $A2
	db	$82, $A4, $08, $0C
X49D1:
	db	$A6
X49D2:
	db	$0E, $00, $CE, $00
	db	$7D, $00, $7B, $02
	db	$B8, $00, $B7, $02
	db	$80, $00, $D5, $00
	db	$CE, $02, $B0, $00
	db	$6B
X49E7:
	db	$46, $D2, $D4, $D6
	db	$E2, $48, $E6, $44
	db	$E4, $E8, $42
X49F2:
	db	$00
X49F3:
	db	$6A, $02, $61, $02
	db	$60, $02, $64, $02
	db	$60, $00, $7C, $02
	db	$B8, $00, $91, $00
	db	$A3, $02, $B0, $00
	db	$92
X4A08:
	db	$02
X4A09:
	db	$68, $02, $5E, $06
	db	$18, $04, $19, $00
	db	$12, $5E, $81
;
L4A14:
	sta	RAM1_057
	jsr	L2695
	stx	RAM1_059
	bset	1,RAM1_05e
	ldx	#$0C
	brclr	4,PortA,L026E
	decx
	bne	L021F
	bclr	2,RAM1_050
	bset	0,RAM1_050
	brclr	5,PortA,L0278
	jsr	L4B09
	lda	#$C8
	sta	RAM1_056
	jsr	L4AF3
	brclr	0,RAM1_05e,L023E
	bclr	0,RAM1_05e
	jsr	L4AFC
	jsr	L4AFC
	brclr	5,PortA,L0278
	clr	RAM1_051
	lda	#$AA
	jsr	L4B2A
	lda	RAM1_057
	jsr	L4B2A
	jsr	L4AB8
	lda	RAM1_051
	jsr	L4B2A
	jsr	L4AFE
	jsr	L4B09
	jsr	L4ACA
	jsr	L4AE3
	jsr	L4AE3
	jsr	L4AE3
	jsr	L4B25
	cmp	X105E
	bclr	1,RAM1_05e
	bclr	5,DDRA
	bclr	4,DDRA
	cli
	rts
;
L4A78:
	jsr	L4AFE
	ldx	#$50
	decx
	bne	L027D
	clr	RAM1_059
	bclr	0,RAM1_050
	bclr	0,RAM1_05e
	bclr	2,RAM1_050
	jsr	L4AE3
	lda	#$56
	jsr	L4B28
	bset	2,RAM1_059
	lda	#$56
	jsr	L4B28
	lda	RAM1_052
	sta	RAM1_058
	jsr	L2695
	stx	RAM1_059
	inc	RAM1_059
	bclr	2,RAM1_050
	bsr	L02B8
	bsr	L02C4
	dec	RAM1_056
	bmi	L02AF
	brclr	5,PortA,L02A8
	brclr	2,RAM1_050,L026E
	bclr	0,RAM1_05e
	lda	RAM1_058
	bra	L0270
;
L4AB8:
	clrx
	lda	RAM2_0268,x
	bsr	L032C
	incx
	dec	RAM1_059
	bpl	L02B9
	rts
;
	db	$00, $5E, $5E, $01
	db	$50, $03
;
L4ACA:
	jsr	L4AE3
	sei
	bclr	4,DDRA
	clr	RAM1_056
	bset	7,RAM1_056
	brset	4,PortA,L02E3
	dec	RAM1_056
	bpl	L02D4
	bset	0,RAM1_05e
	jmp	L04C4
;
	db	$9A, $10, $5E
;
L4AE3:
	rts
;
	db	$00, $5E, $3E, $01
	db	$50, $05, $CD, $4A
	db	$E3, $20, $0F, $3F
	db	$56, $18, $56
;
L4AF3:
	brclr	4,PortA,L02FC
	dec	RAM1_056
	bne	L02F3
	bra	L02DB
;
L4AFC:
	bclr	5,DDRA
L4AFE:
	bclr	4,PortA
	bset	4,DDRA
	bclr	4,PortA
	cli
	rts
;
	db	$00, $5E, $1C
;
L4B09:
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
L4B25:
	bclr	5,DDRA
	rts
;
L4B28:
	sta	RAM1_051
L4B2A:
	ldx	#$09
	sta	RAM1_052
	clr	RAM1_05a
	bset	3,RAM1_05a
	bsr	L0310
	bsr	L02C4
	brset	5,PortA,L0339
	rola
	bsr	L02E4
	dec	RAM1_05a
	bne	L0332
	brset	0,RAM1_050,L035C
	sta	RAM1_052
	tst	RAM1_059
	bne	L0352
	ldx	#$51
	cmp	,x
	bne	L0364
	bset	2,RAM1_050
	bra	L0355
;
	db	$D7, $02, $68, $AD
	db	$AF, $CD, $4A, $C4
	db	$20, $0B, $1B, $04
	db	$CD, $4A, $C4, $0B
	db	$00, $03, $10, $5E
	db	$9A, $B6, $52, $BB
	db	$51, $28, $02, $A0
	db	$10, $B7, $51, $CD
	db	$4A, $E4, $20, $9A
;
L4B76:
	brset	2,RAM1_08b,L03B3
	brclr	6,RAM1_05d,L03B3
	jmp	L4C26
;
L4B7F:
	db	$19, $BA, $1E, $5D
	db	$A6, $70, $B7, $77
	db	$81, $0E, $CE, $29
	db	$07, $8B, $05, $0F
	db	$8B, $1B, $17, $8B
	db	$18, $B3, $3F, $CE
	db	$1E, $CE, $3C, $8B
	db	$15, $8B, $A6, $10
	db	$C7, $02, $9E, $4F
	db	$C7, $02, $9F, $A6
	db	$0C, $0F, $8B, $4F
	db	$C1, $A6, $0B, $12
	db	$CB, $CD, $24, $E5
	db	$81, $1F, $CE, $CE
	db	$02, $9E, $C3, $01
	db	$01, $26, $0F, $C6
	db	$02, $9F, $C1, $01
	db	$02, $26, $07, $BF
	db	$8C, $B7, $8D, $CC
	db	$37, $5F, $0E, $8B
	db	$C3, $CC, $37, $57
	db	$5F, $C1, $AE, $01
	db	$A6, $70, $DB, $02
	db	$9E, $25, $11, $AB
	db	$A0, $20, $0D, $5F
	db	$C1, $AE, $01, $A6
	db	$F7, $DB, $02, $9E
	db	$29, $02, $AB, $0A
	db	$D7, $02, $9E, $A6
	db	$50, $B7, $77, $14
	db	$CB, $13, $CB, $1E
	db	$5D, $81, $A6, $0B
	db	$0E, $CE, $03, $07
	db	$8B, $06, $A6, $C6
	db	$CD, $24, $CB, $81
	db	$CD, $24, $E5, $81
	db	$06, $8B, $0C, $0E
	db	$8B, $09, $A6, $20
	db	$02, $8B, $05, $48
	db	$00, $8B, $01, $4F
	db	$5F, $CD, $24, $F5
	db	$CC, $25, $05
;
L4C26:
	clrx
	brset	7,STACK_0ce,L042C
	ldx	#$10
	lda	X4C43,x
	sta	RAM1_056
	lda	X4C42,x
	beq	L0441
	jsr	L2889
	bne	L042C
	ldx	X4C41,x
	jsr	L4B7F,x						;INFO: index jump
X4C41:
	rts
;
X4C42:
	db	$E1
X4C43:
	db	$54, $41, $54, $E2
	db	$63, $42, $63, $E3
	db	$56, $43, $56, $E4
	db	$65, $44, $65, $FE
	db	$00, $7E, $09, $00
	db	$0E, $96, $0C, $B6
	db	$1D, $B0, $97, $B7
	db	$99, $B6, $1C, $B2
	db	$96, $B7, $98, $1F
	db	$96, $16, $5E, $B6
	db	$1C, $B7, $96, $B6
	db	$1D, $B7, $97, $81
;
L4C73:
	lda	#$40
	brclr	3,RAM1_05e,L0464
	bclr	3,RAM1_05e
	rts
;
L4C7B:
	tst	RAM1_098
	beq	L04B3
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
	bcs	L049C
	inca
	nega
	add	RAM1_09a
	sta	RAM1_09a
	lda	RAM1_09b
	add	RAM1_099
	sta	RAM1_09b
	lda	RAM1_09a
	adc	RAM1_098
	bcc	L04AF
	lda	#$FF
	sta	RAM1_09a
	clr	RAM1_098
	rts
;
L4CB4:
	ldx	#$AA
	jsr	L38CC
	beq	L050C
	cmp	#$05
	bhi	L050C
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
	cmp	X4D6C,x
	bhi	L04E7
	bne	L04E1
	lda	RAM1_09b
	cmp	X4D6D,x
	bcc	L04E7
	inc	RAM1_056
	incx
	incx
	bra	L04D1
;
	db	$B6, $56, $B1, $84
	db	$24, $12, $B6, $9C
	db	$D1, $4D, $C6, $22
	db	$0B, $26, $07, $B6
	db	$9D, $D1, $4D, $C7
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
	db	$4C, $7B, $3A, $50
	db	$26, $F1, $CD, $4C
	db	$B4, $97, $B1, $51
	db	$81
X4D6C:
	db	$4A
X4D6D:
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
	db	$00, $00, $00
