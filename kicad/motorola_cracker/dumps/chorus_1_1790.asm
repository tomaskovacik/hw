;
;	Disassembled by:
;		DASMx object code disassembler
;		(c) Copyright 1996-2003   Conquest Consultants
;		Version 1.40 (Oct 18 2003)
;
;	File:		chorus_1_1790.rom
;
;	Size:		31232 bytes
;	Checksum:	C58F
;	CRC-32:		BCD74340
;
;	Date:		Wed Mar 21 18:04:33 2018
;
;	CPU:		Motorola 68HC05 (68HC05 family)
;
;
;
	org	$0000
;
L0000:
X0000:
	rsp
L0001:
X0001:
	sei
L0002:
X0002:
	bset	6,X00BA
L0004:
X0004:
	bclr	5,X00BA
L0006:
X0006:
	brset	7,X000C,L0023
L0009:
X0009:
	jsr	L3648
L000C:
X000C:
	bne	L0023
L000E:
X000E:
	lda	#$53
L0010:
X0010:
	cmp	X006B
L0012:
X0012:
	bne	L0023
L0014:
X0014:
	jsr	L20A7
L0017:
X0017:
	jsr	L1FE6
L001A:
X001A:
	clr	X006B
L001C:
X001C:
	bclr	3,X0001
L001E:
X001E:
	bset	3,X0005
L0020:
X0020:
	jmp	L0506
;
L0023:
	jsr	L1FC3
L0026:
X0026:
	jmp	L04F1
;
L0029:
X0029:
	jsr	L3676
L002C:
X002C:
	lda	X0011
L002E:
X002E:
	jmp	L04B0
;
L0031:
X0031:
	lda	X0013
L0033:
X0033:
	lda	X0019
L0035:
X0035:
	rti
;
L0036:
X0036:
	brset	7,X0013,L00A3
L0039:
X0039:
	brclr	3,X0013,L008B
L003C:
	lda	X001F
L003E:
	add	#$88
L0040:
X0040:
	tax
L0041:
X0041:
	lda	X001E
L0043:
X0043:
	adc	#$13
L0045:
	sta	X001E
L0047:
	lda	X0013
L0049:
	stx	X001F
L004B:
	bset	3,X0067
L004D:
X004D:
	brclr	1,X0006,L0053
L0050:
X0050:
	brset	1,X0002,L0055
L0053:
X0053:
	bset	4,X005D
L0055:
X0055:
	bclr	1,X0002
L0057:
X0057:
	tst	X0063
L0059:
X0059:
	beq	L005D
L005B:
X005B:
	dec	X0063
L005D:
X005D:
	dec	X0068
L005F:
X005F:
	bne	L0063
L0061:
X0061:
	bset	7,X0067
L0063:
X0063:
	jsr	L3669
L0066:
X0066:
	lda	X0068
L0068:
X0068:
	bit	#$3F
L006A:
X006A:
	bne	L006E
L006C:
X006C:
	bset	6,X0067
L006E:
X006E:
	bit	#$03
L0070:
X0070:
	bne	L007C
L0072:
X0072:
	bset	4,X0067
L0074:
X0074:
	jsr	L4B0F
L0077:
X0077:
	jsr	L21A2
L007A:
X007A:
	lda	X0068
L007C:
X007C:
	bit	#$0F
L007E:
X007E:
	bne	L008B
L0080:
X0080:
	bset	5,X0067
L0082:
X0082:
	brset	2,X005E,L0089
L0085:
X0085:
	lda	X001A
L0087:
X0087:
	bra	L009A
;
L0089:
X0089:
	bclr	2,X005E
L008B:
X008B:
	brclr	6,X0013,L00B0
L008E:
X008E:
	bset	2,X005E
L0090:
X0090:
	ldx	X0017
L0092:
X0092:
	lda	X0016
L0094:
X0094:
	brclr	0,X0061,L009A
L0097:
X0097:
	jsr	L0B8C
L009A:
X009A:
	sta	X0016
L009C:
X009C:
	stx	X0017
L009E:
X009E:
	bra	L00B0
;
L00A0:
X00A0:
	brclr	7,X0013,L00A8
L00A3:
X00A3:
	jsr	L2143
L00A6:
X00A6:
	bra	L00B0
;
L00A8:
X00A8:
	brclr	4,X0013,L00B0
L00AB:
X00AB:
	jsr	L4AF3
L00AE:
X00AE:
	lda	X001D
L00B0:
X00B0:
	brclr	7,X0013,L00BE
L00B3:
X00B3:
	brset	4,X005E,L00BE
L00B6:
X00B6:
	bset	4,X005E
L00B8:
X00B8:
	bclr	1,X0012
L00BA:
X00BA:
	bset	3,X0076
L00BC:
X00BC:
	lda	X0015
L00BE:
X00BE:
	brclr	4,X0013,L00C3
L00C1:
X00C1:
	bset	7,X0096
L00C3:
X00C3:
	rti
;
L00C4:
X00C4:
	brclr	7,X0013,L00D2
L00C7:
X00C7:
	brset	4,X005E,L00D2
L00CA:
X00CA:
	bset	4,X005E
L00CC:
X00CC:
	bclr	1,X0012
L00CE:
X00CE:
	bset	3,X0076
L00D0:
X00D0:
	lda	X0015
L00D2:
X00D2:
	cli
L00D3:
X00D3:
	rts
;
L00D4:
X00D4:
	lda	#$53
L00D6:
X00D6:
	sta	X006B
L00D8:
X00D8:
	bset	0,X000C
L00DA:
X00DA:
	stop
L00DB:
	bra	L00D4
;
L00DD:
	lda	#$28
L00DF:
	deca
L00E0:
X00E0:
	beq	L00E5
L00E2:
	bil	L00DF
L00E4:
X00E4:
	rti
;
L00E5:
	brset	7,X00BA,L00ED
L00E8:
X00E8:
	brset	6,X00B9,L00ED
L00EB:
X00EB:
	bset	7,X0061
L00ED:
X00ED:
	bclr	6,X00BA
L00EF:
X00EF:
	clr	X00D6
L00F1:
X00F1:
	sei
L00F2:
	bclr	4,X000C
L00F4:
X00F4:
	bclr	5,X00BA
L00F6:
X00F6:
	bclr	3,X0061
L00F8:
X00F8:
	jsr	L0725
L00FB:
X00FB:
	bset	3,X0061
L00FD:
X00FD:
	bclr	5,X0001
L00FF:
X00FF:
	bclr	5,X006A
L0101:
X0101:
	jsr	L2551
L0104:
	bset	5,X0001
L0106:
	rsp
L0107:
	bclr	2,X005D
L0109:
	brset	1,X000C,L00D4
L010C:
	sei
L010D:
	jsr	L207E
L0110:
	cli
L0111:
	brset	0,X0061,L011E
L0114:
	bclr	7,X0061
L0116:
	brset	6,X0061,L011B
L0119:
	bclr	6,X005F
L011B:
	jmp	L08AD
;
L011E:
	bil	L00ED
L0120:
X0120:
	brclr	3,X0061,L00F1
L0123:
X0123:
	jsr	L3713
L0126:
	bclr	3,X00CE
L0128:
	bclr	6,X005F
L012A:
	brset	2,X0012,L012F
L012D:
	bclr	3,X0001
L012F:
	bset	2,X0012
L0131:
	bset	4,X0012
L0133:
	bset	0,X0001
L0135:
	brset	3,X007F,L0141
L0138:
	brset	2,X007F,L0141
L013B:
	brset	7,X0069,L0141
L013E:
	jsr	L0B7A
L0141:
	jsr	L1FFF
L0144:
	jsr	L1FF6
L0147:
	brset	0,X00A1,L015C
L014A:
	bclr	2,X0006
L014C:
	bclr	3,X0006
L014E:
	jsr	L2551
L0151:
	lda	X0002
L0153:
	and	#$0C
L0155:
	bne	L0160
L0157:
	bclr	5,X0069
L0159:
	brset	3,X008E,L0166
L015C:
	bset	4,X0069
L015E:
	bra	L0168
;
L0160:
X0160:
	bset	5,X0069
L0162:
	bclr	1,X0081
L0164:
	bclr	3,X008E
L0166:
	bclr	4,X0069
L0168:
	bset	2,X0006
L016A:
	bset	3,X0006
L016C:
	cli
L016D:
	brclr	6,X00BA,L0173
L0170:
	brset	5,X0061,L017D
L0173:
	jsr	L132A
L0176:
	bset	5,X0061
L0178:
	jsr	L0719
L017B:
	bclr	2,X009E
L017D:
	brset	6,X0061,L0185
L0180:
	jsr	L305D
L0183:
	bset	6,X0061
L0185:
	brset	4,X0061,L0191
L0188:
	jsr	L2633
L018B:
	jsr	L1E8B
L018E:
	jsr	L477E
L0191:
	bset	4,X0061
L0193:
	brset	2,X009E,L0199
L0196:
	jsr	L38BC
L0199:
	jsr	L0719
L019C:
	jsr	L35FA
L019F:
	jsr	L3A05
L01A2:
	jsr	L0B1D
L01A5:
	clrx
L01A6:
	jsr	L2557
L01A9:
	brclr	3,X008B,L01BB
L01AC:
	lda	#$0B
L01AE:
	brset	4,X008B,L01B6
L01B1:
	lda	#$1A
L01B3:
	brclr	1,X0081,L01BB
L01B6:
	jsr	L23F3
L01B9:
	bset	1,X00CB
L01BB:
	clr	X0067
L01BD:
	clr	X0068
L01BF:
	brclr	4,X00BB,L01C4
L01C2:
	bset	2,X0094
L01C4:
	sei
L01C5:
	bset	4,X000C
L01C7:
	bset	7,X0012
L01C9:
	cli
L01CA:
	brset	7,X0069,L01D4
L01CD:
	brclr	5,X00BB,L01D4
L01D0:
	bset	7,X0069
L01D2:
	bset	1,X005D
L01D4:
	jsr	L0789
L01D7:
	brset	2,X005D,L01E3
L01DA:
	clra
L01DB:
	brclr	3,X0000,L01E6
L01DE:
	deca
L01DF:
	bne	L01DB
L01E1:
	bclr	4,X0061
L01E3:
	jmp	L0506
;
L01E6:
	bih	L01EB
L01E8:
	jmp	L04E5
;
L01EB:
	jsr	L2223
L01EE:
	jsr	L306C
L01F1:
	jsr	L4B17
L01F4:
	jsr	L13E0
L01F7:
	jsr	L36F2
L01FA:
	jsr	L4639
L01FD:
	jsr	L44A8
L0200:
X0200:
	jsr	L4A15
L0203:
	jsr	L3FBE
L0206:
	jsr	L47F4
L0209:
	jsr	L26DD
L020C:
	jsr	L26D0
L020F:
	jsr	L1EB4
L0212:
	jsr	L3943
L0215:
	jsr	L3A83
L0218:
	jsr	L061D
L021B:
	bra	L01C4
;
L021D:
	brset	3,X0067,L0236
L0220:
	brset	2,X0067,L0246
L0223:
	brset	1,X0067,L024D
L0226:
	brset	0,X0067,L0276
L0229:
	brset	4,X0067,L024F
L022C:
	brset	5,X0067,L0260
L022F:
	brset	6,X0067,L026B
L0232:
	brset	7,X0067,L0273
L0235:
	rts
;
L0236:
	bclr	3,X0067
L0238:
	bset	2,X0067
L023A:
	jsr	L1FA3
L023D:
	jsr	L3769
L0240:
	jsr	L265C
L0243:
	jmp	L38EF
;
L0246:
	bclr	2,X0067
L0248:
	bset	1,X0067
L024A:
	jmp	L071F
L024D:
	bra	L02BB
;
L024F:
X024F:
	bclr	4,X0067
L0251:
	jsr	L263E
L0254:
X0254:
	jsr	L1E8C
L0257:
X0257:
	jsr	L307B
L025A:
	jsr	L3BCD
L025D:
	jmp	L26D1
;
L0260:
X0260:
	bclr	5,X0067
L0262:
	jsr	L13CE
L0265:
X0265:
	jsr	L3BF2
L0268:
X0268:
	jmp	L362E
;
L026B:
	bclr	6,X0067
L026D:
	jsr	L3A9D
L0270:
	jmp	L4B50
;
L0273:
X0273:
	bclr	7,X0067
L0275:
X0275:
	rts
;
L0276:
	bclr	0,X0067
L0278:
	jsr	L47AA
L027B:
X027B:
	jsr	L3072
L027E:
	jsr	L3AF9
L0281:
	brset	7,X0060,L02AA
L0284:
	brclr	3,X008B,L02A4
L0287:
	brset	3,X00CE,L02A1
L028A:
	brclr	6,X005D,L0298
L028D:
	bclr	1,X00CB
L028F:
	jsr	L37CB
L0292:
	jsr	L43E8
L0295:
	jsr	L20DA
L0298:
	jsr	L33FF
L029B:
	jsr	L463B
L029E:
X029E:
	jsr	L44A9
L02A1:
X02A1:
	jsr	L27BE
L02A4:
X02A4:
	jsr	L2C60
L02A7:
	jsr	L4A16
L02AA:
X02AA:
	jsr	L43DD
L02AD:
X02AD:
	jsr	L3AD3
L02B0:
X02B0:
	bclr	6,X005D
L02B2:
X02B2:
	brclr	7,X0060,L02B8
L02B5:
X02B5:
	jsr	L2C60
L02B8:
X02B8:
	jmp	L0BAC
;
L02BB:
X02BB:
	bclr	1,X0067
L02BD:
	bset	0,X0067
L02BF:
	brclr	7,X005D,L0318
L02C2:
X02C2:
	bclr	7,X005D
L02C4:
X02C4:
	lda	X00CA
L02C6:
	and	#$0F
L02C8:
X02C8:
	ldx	#$03
L02CA:
X02CA:
	mul
L02CB:
X02CB:
	tax
L02CC:
	cpx	#$21
L02CE:
	bcc	L0318
L02D0:
X02D0:
	jsr	L06EB,x						;INFO: index jump
L02D3:
X02D3:
	lda	X00CA
L02D5:
X02D5:
	jsr	L2525
L02D8:
X02D8:
	and	#$03
L02DA:
	ldx	#$03
L02DC:
	mul
L02DD:
	tax
L02DE:
	cpx	#$0C
L02E0:
X02E0:
	bcc	L0318
L02E2:
	jsr	L070C,x						;INFO: index jump
L02E5:
	brclr	6,X00CA,L0318
L02E8:
	jmp	L2BDE
L02EB:
	jmp	L0635
L02EE:
	jmp	L2A5C
L02F1:
	jmp	L46D2
L02F4:
	jmp	L4544
L02F7:
	jmp	L35A9
L02FA:
	jmp	L3847
L02FD:
	jmp	L2FC9
L0300:
	jmp	L0635
L0303:
	jmp	L4A9D
L0306:
	jmp	L4414
L0309:
	jmp	L43DE
L030C:
	jmp	L4AAB
L030F:
	jmp	L2B41
L0312:
	jmp	L471A
L0315:
	jmp	L45B7
L0318:
	rts
;
L0319:
	jsr	L13E0
L031C:
	jsr	L36F2
L031F:
	jsr	L13BC
L0322:
	jmp	L36AE
;
L0325:
	clr	X0066
L0327:
	lda	X0065
L0329:
	sta	X02B0
L032C:
	brclr	4,X0061,L0337
L032F:
	jsr	L0B7A
L0332:
	jsr	L4769
L0335:
	bclr	4,X0061
L0337:
	lda	#$0A
L0339:
	sta	X0050
L033B:
	bset	2,X0012
L033D:
	bset	4,X0012
L033F:
	bih	L0343
L0341:
	bclr	6,X00BA
L0343:
	jsr	L253F
L0346:
	brset	1,X0002,L034B
L0349:
	bset	4,X005D
L034B:
	bclr	1,X0002
L034D:
	jsr	L0789
L0350:
	lda	X0065
L0352:
	sub	X02B0
L0355:
	cmp	#$03
L0357:
	bcs	L035B
L0359:
	bset	5,X0060
L035B:
	lda	#$27
L035D:
	jsr	L24C5
L0360:
	cmp	#$19
L0362:
	bcs	L0376
L0364:
	cmp	#$53
L0366:
	bhi	L0372
L0368:
	bclr	6,X0061
L036A:
	bclr	5,X0061
L036C:
	bclr	7,X0061
L036E:
	bclr	6,X005F
L0370:
	bra	L0343
;
L0372:
	cmp	#$73
L0374:
	bcs	L0337
L0376:
	bil	L0337
L0378:
	dec	X0050
L037A:
	bne	L0343
L037C:
	rts
;
L037D:
	jsr	L0B7A
L0380:
	jsr	L4769
L0383:
	jsr	L201B
L0386:
	jmp	L0506
;
L0389:
	brset	4,X005D,L0393
L038C:
	brclr	1,X000C,L0392
L038F:
	brclr	1,X0003,L03BB
L0392:
	rts
;
L0393:
	lda	#$06
L0395:
	brset	1,X000C,L039A
L0398:
	lda	#$01
L039A:
	add	X0066
L039C:
	sta	X0066
L039E:
	bcc	L03BB
L03A0:
	lda	#$01
L03A2:
	add	X0065
L03A4:
	sta	X0065
L03A6:
	bcc	L03BB
L03A8:
	brset	7,X0064,L03BB
L03AB:
	inc	X0064
L03AD:
	bpl	L03BB
L03AF:
	brset	2,X008B,L03BB
L03B2:
	brset	1,X005F,L03BB
L03B5:
	brclr	0,X0061,L03BB
L03B8:
	jmp	L08A3
;
L03BB:
	bclr	4,X005D
L03BD:
	brclr	1,X0006,L03C4
L03C0:
	bclr	1,X0006
L03C2:
	bra	L03D7
;
L03C4:
	lda	X0062
L03C6:
	brclr	1,X0002,L03CD
L03C9:
	add	#$20
L03CB:
	bra	L03CF
;
L03CD:
	sub	#$20
L03CF:
	bcs	L03D3
L03D1:
	sta	X0062
L03D3:
	bset	1,X0006
L03D5:
	bset	1,X0002
L03D7:
	clra
L03D8:
	brset	2,X0003,L03DD
L03DB:
	ora	#$01
L03DD:
	brset	0,X0003,L03E2
L03E0:
	ora	#$02
L03E2:
	brclr	7,X005E,L03E7
L03E5:
	ora	#$04
L03E7:
	brclr	1,X0003,L03EC
L03EA:
	ora	#$10
L03EC:
	tst	X0062
L03EE:
	bpl	L03F2
L03F0:
	ora	#$08
L03F2:
	brclr	6,X0003,L03F7
L03F5:
	ora	#$80
L03F7:
	eor	X005F
L03F9:
	and	#$9F
L03FB:
	beq	L0468
L03FD:
	sta	X005B
L03FF:
	eor	X005F
L0401:
	sta	X005F
L0403:
	brclr	3,X005F,L040A
L0406:
	bset	5,X005F
L0408:
	bra	L0414
;
L040A:
	brclr	7,X005F,L040F
L040D:
	bset	5,X005F
L040F:
	brset	1,X005F,L0414
L0412:
	bclr	5,X005F
L0414:
	brclr	0,X005B,L0424
L0417:
X0417:
	brset	0,X005F,L0496
L041A:
	brset	6,X005F,L0420
L041D:
	brclr	0,X0061,L0424
L0420:
	bclr	6,X005F
L0422:
	bra	L03B8
;
L0424:
	brclr	7,X0060,L042A
L0427:
	brset	5,X005D,L044C
L042A:
	bclr	5,X005D
L042C:
	brset	1,X005F,L0439
L042F:
	brclr	1,X005B,L044C
L0432:
	brclr	0,X0061,L04AA
L0435:
	bset	1,X0061
L0437:
	bra	L04A3
;
L0439:
	brset	0,X0061,L0444
L043C:
	brclr	1,X005B,L044C
L043F:
	brset	0,X005F,L0498
L0442:
	bset	5,X005F
L0444:
	bclr	1,X0061
L0446:
	brclr	1,X005B,L044C
L0449:
	brset	3,X00CE,L0498
L044C:
	brclr	4,X005B,L0462
L044F:
	brset	0,X0061,L0455
L0452:
	brclr	1,X005F,L0462
L0455:
	brclr	3,X0060,L0462
L0458:
	bclr	3,X0060
L045A:
	brset	4,X005F,L045F
L045D:
	bset	0,X0060
L045F:
	brset	1,X000C,L0465
L0462:
	brclr	2,X005B,L0468
L0465:
	brclr	0,X0061,L04AA
L0468:
	rts
;
L0469:
	jsr	L1FFF
L046C:
	jsr	L1FF6
L046F:
	jsr	L477E
L0472:
	lda	#$C8
L0474:
	sta	X0063
L0476:
	tst	X0063
L0478:
	beq	L04AA
L047A:
	brclr	3,X0067,L0482
L047D:
	bclr	3,X0067
L047F:
	jsr	L47AA
L0482:
	jsr	L47F4
L0485:
	jsr	L3FBE
L0488:
	brclr	7,X0092,L0476
L048B:
	brset	4,X0092,L0476
L048E:
	bset	0,X0061
L0490:
	bset	7,X0060
L0492:
	bset	6,X0060
L0494:
	bra	L04AA
;
L0496:
	bclr	4,X0061
L0498:
	bset	0,X0061
L049A:
	clr	X0093
L049C:
	brclr	1,X005F,L04AA
L049F:
	bclr	1,X0061
L04A1:
	bra	L04AA
;
L04A3:
	bclr	0,X0061
L04A5:
	brclr	1,X005F,L04AA
L04A8:
	bset	5,X005F
L04AA:
	jmp	L0506
;
L04AD:
	bclr	7,X0069
L04AF:
	brset	4,X0060,L0469
L04B2:
	brset	0,X0060,L04B9
L04B5:
	lda	#$08
L04B7:
	sta	X0060
L04B9:
	brset	3,X007F,L04C2
L04BC:
	brset	2,X007F,L04C2
L04BF:
	jsr	L0B7A
L04C2:
	brset	5,X005F,L04CB
L04C5:
	jsr	L0B7A
L04C8:
	jsr	L4769
L04CB:
	jsr	L2223
L04CE:
	clr	X000A
L04D0:
	bih	L04D5
L04D2:
	jmp	L04E5
;
L04D5:
	brclr	2,X009E,L04DB
L04D8:
	jsr	L389F
L04DB:
	brset	6,X005F,L04E1
L04DE:
	jsr	L3069
L04E1:
	brset	5,X005F,L04E7
L04E4:
	jsr	L201B
L04E7:
	jsr	L0789
L04EA:
	brset	6,X005F,L04F4
L04ED:
	bclr	0,X0001
L04EF:
	ldx	#$02
L04F1:
	jsr	L2557
L04F4:
	brset	5,X005F,L0502
L04F7:
	brclr	6,X005F,L051B
L04FA:
	brclr	5,X0061,L0502
L04FD:
	brset	0,X00A1,L052D
L0500:
	bra	L051B
;
L0502:
	jsr	L1FFF
L0505:
	brclr	6,X005F,L0525
L0508:
	bclr	3,X0000
L050A:
	bset	3,X0004
L050C:
	jsr	L132A
L050F:
	lda	#$89
L0511:
	sta	X00B3
L0513:
	lda	X00C4
L0515:
	sta	X00B7
L0517:
	bset	5,X0061
L0519:
	bra	L052D
;
L051B:
	brclr	7,X0064,L0525
L051E:
	bclr	6,X005F
L0520:
	ldx	#$02
L0522:
	jsr	L2557
L0525:
	bclr	5,X0061
L0527:
	jsr	L3069
L052A:
	jsr	L137A
L052D:
	brclr	5,X005F,L055D
L0530:
	bclr	1,X0081
L0532:
	bset	2,X0012
L0534:
	bset	4,X0012
L0536:
	jsr	L1FF6
L0539:
	jsr	L477E
L053C:
	jsr	L0B1D
L053F:
	bset	4,X0061
L0541:
	bset	0,X0080
L0543:
	lda	#$80
L0545:
	sta	X007D
L0547:
	sta	X007B
L0549:
	brclr	3,X008E,L054E
L054C:
	ora	#$10
L054E:
	sta	X00D5
L0550:
	bset	6,X0094
L0552:
	bset	5,X0094
L0554:
	bset	1,X0094
L0556:
	bclr	4,X006B
L0558:
	bset	6,X0095
L055A:
	jmp	L09B7
;
L055D:
	bclr	2,X0012
L055F:
	brset	5,X0061,L055A
L0562:
	jsr	L3069
L0565:
	brclr	3,X0060,L0591
L0568:
	brset	2,X005F,L056E
L056B:
	jmp	L0A5B
;
L056E:
	jsr	L2031
L0571:
	lda	#$FA
L0573:
	sta	X0012
L0575:
	lda	#$64
L0577:
	sta	X0063
L0579:
	jsr	L0789
L057C:
	jsr	L3FBE
L057F:
	brset	4,X0060,L05B4
L0582:
	brset	5,X005F,L05B4
L0585:
	jsr	L2223
L0588:
	brclr	6,X005F,L0579
L058B:
	tst	X0063
L058D:
	bne	L0579
L058F:
	bra	L05B4
;
L0591:
	jsr	L1FE2
L0594:
	lda	#$5A
L0596:
	sta	X0012
L0598:
	lda	#$FA
L059A:
	sta	X0063
L059C:
	jsr	L0789
L059F:
	jsr	L3FBE
L05A2:
	brset	4,X0060,L05B4
L05A5:
	brset	5,X005F,L05B4
L05A8:
	brset	3,X0060,L05B4
L05AB:
	brclr	4,X005F,L0598
L05AE:
	tst	X0063
L05B0:
	bne	L059C
L05B2:
	bset	3,X0060
L05B4:
	jmp	L0506
;
L05B7:
	lda	#$64
L05B9:
	sta	X0063
L05BB:
	lda	#$1E
L05BD:
	sta	X0068
L05BF:
	bclr	6,X0067
L05C1:
	bclr	1,X0001
L05C3:
	lda	#$5B
L05C5:
	sta	X00A6
L05C7:
	cli
L05C8:
	brclr	6,X005F,L05D9
L05CB:
	jsr	L13E0
L05CE:
	jsr	L36F2
L05D1:
	jsr	L33FF
L05D4:
	jsr	L306C
L05D7:
	bset	0,X0001
L05D9:
	jsr	L0789
L05DC:
	jsr	L3FBE
L05DF:
	brset	4,X0060,L05B4
L05E2:
	bil	L0654
L05E4:
	jsr	L4B17
L05E7:
	jsr	L2223
L05EA:
	brclr	2,X0012,L05F0
L05ED:
	jsr	L47F4
L05F0:
	brclr	3,X0067,L05C7
L05F3:
	bclr	3,X0067
L05F5:
	brclr	6,X005F,L0609
L05F8:
	jsr	L13BC
L05FB:
	jsr	L36AE
L05FE:
	jsr	L3072
L0601:
	brclr	5,X0067,L0609
L0604:
	bclr	5,X0067
L0606:
	jsr	L13CE
L0609:
	brclr	2,X0012,L063E
L060C:
	brclr	5,X005F,L05B4
L060F:
	jsr	L2C60
L0612:
	jsr	L0BAC
L0615:
	jsr	L47AA
L0618:
	brclr	4,X0067,L05C7
L061B:
	bclr	4,X0067
L061D:
	dec	X00A7
L061F:
	beq	L0636
L0621:
	brset	7,X005F,L05C3
L0624:
	lda	X009A
L0626:
	cmp	#$F0
L0628:
	bcs	L05C3
L062A:
	brclr	3,X005F,L05C7
L062D:
	brset	1,X005F,L05C7
L0630:
	lda	#$02
L0632:
	sta	X00A6
L0634:
	bra	L05C7
;
L0636:
	dec	X00A6
L0638:
	bne	L05C7
L063A:
	bclr	5,X005F
L063C:
	bra	L05C7
;
L063E:
	brset	5,X005F,L06A9
L0641:
	brclr	0,X00A1,L0647
L0644:
	jmp	L09B7
;
L0647:
	brclr	6,X0067,L0651
L064A:
	brset	3,X00B9,L06A9
L064D:
	tst	X0063
L064F:
	beq	L06A9
L0651:
	jmp	L09C7
;
L0654:
	bset	2,X0012
L0656:
	bset	4,X0012
L0658:
	jmp	L04E5
;
L065B:
	sei
L065C:
	bclr	4,X000C
L065E:
	jsr	L1FE2
L0661:
	lda	#$5A
L0663:
	sta	X0012
L0665:
	bset	1,X000C
L0667:
	lda	#$14
L0669:
	sta	X0063
L066B:
	clr	X000B
L066D:
	clr	X0076
L066F:
	clr	X005E
L0671:
	clr	X00A8
L0673:
	clr	X00A6
L0675:
	clr	X0009
L0677:
	clr	X000F
L0679:
	cli
L067A:
	jsr	L0789
L067D:
	lda	#$08
L067F:
	add	X001A
L0681:
	sta	X001E
L0683:
	clr	X001F
L0685:
	wait
L0686:
	brset	0,X0000,L0689
L0689:
	lda	#$27
L068B:
	sta	X0009
L068D:
	jsr	L21A2
L0690:
	brset	5,X005F,L06A9
L0693:
	tst	X0063
L0695:
	bne	L06B3
L0697:
	brset	3,X0000,L06A6
L069A:
	bclr	3,X0000
L069C:
	bset	3,X0004
L069E:
	clra
L069F:
	deca
L06A0:
	bne	L069F
L06A2:
	bclr	3,X0004
L06A4:
	clr	X006A
L06A6:
	brclr	6,X005F,L06AC
L06A9:
	jmp	L0506
;
L06AC:
	bclr	0,X0005
L06AE:
	brclr	7,X0064,L06B3
L06B1:
	bclr	6,X0061
L06B3:
	brset	6,X005F,L0675
L06B6:
	bil	L0654
L06B8:
	brclr	2,X0012,L06C7
L06BB:
	tst	X0063
L06BD:
	bne	L0675
L06BF:
	bset	5,X0001
L06C1:
	bclr	3,X0000
L06C3:
	bset	3,X0004
L06C5:
	bra	L0661
;
L06C7:
	brclr	7,X0009,L06C7
L06CA:
	tst	X00A8
L06CC:
	bne	L06D9
L06CE:
	brclr	3,X00A6,L06F3
L06D1:
	lda	X00A4
L06D3:
	ldx	X00A5
L06D5:
	bsr	L0716
L06D7:
	bra	L0709
;
L06D9:
	lda	X00A8
L06DB:
	sub	X0008
L06DD:
	bcs	L06F3
L06DF:
	cmp	#$03
L06E1:
	bcs	L06F3
L06E3:
	bset	2,X0012
L06E5:
	bset	4,X0012
L06E7:
	bclr	3,X0001
L06E9:
	bset	3,X0005
L06EB:
	lda	#$30
L06ED:
	sta	X0063
L06EF:
	bclr	5,X0001
L06F1:
	bra	L070D
;
L06F3:
	lda	X0008
L06F5:
	add	X00A5
L06F7:
	sta	X00A5
L06F9:
	bcc	L06FD
L06FB:
	inc	X00A4
L06FD:
	inc	X00A6
L06FF:
	lda	X00A6
L0701:
	bit	#$3F
L0703:
	bne	L0713
L0705:
	lda	X00A4
L0707:
	ldx	X00A5
L0709:
	bsr	L0718
L070B:
	sta	X00A8
L070D:
	clr	X00A5
L070F:
	clr	X00A4
L0711:
	clr	X00A6
L0713:
	jmp	L0A75
;
L0716:
	rolx
L0717:
	rola
L0718:
	rolx
L0719:
	rola
L071A:
	rolx
L071B:
	rola
L071C:
	rts
;
L071D:
	brset	7,X0061,L0743
L0720:
	ldx	#$A8
L0722:
	jsr	L37C7
L0725:
	sta	X0085
L0727:
	jsr	L124C
L072A:
	jsr	L1267
L072D:
	stx	X0057
L072F:
	ldx	#$AB
L0731:
	jsr	L37C7
L0734:
	add	#$FD
L0736:
	add	X0057
L0738:
	bpl	L073B
L073A:
	clra
L073B:
	cmp	X0085
L073D:
	bcc	L0743
L073F:
	sta	X0085
L0741:
	bset	3,X005C
L0743:
	bclr	7,X0082
L0745:
	lda	#$FF
L0747:
	sta	X0088
L0749:
	sta	X0083
L074B:
	jsr	L0F82
L074E:
	clr	X0082
L0750:
	jsr	L0F4C
L0753:
	jsr	L0F3F
L0756:
	clr	X007E
L0758:
	clr	X0080
L075A:
	clr	X0087
L075C:
	bset	4,X007E
L075E:
	bset	3,X007E
L0760:
	brclr	3,X005F,L0766
L0763:
	brset	0,X0081,L078B
L0766:
	bclr	0,X0081
L0768:
	clrx
L0769:
	brset	0,X0061,L076E
L076C:
	ldx	#$04
L076E:
	lda	X1320,x
L0771:
	sta	X008A
L0773:
	bset	6,X0082
L0775:
	bclr	2,X006B
L0777:
	bclr	1,X006B
L0779:
	rts
;
L077A:
	brclr	3,X0001,L0784
L077D:
	bclr	3,X0001
L077F:
	lda	#$05
L0781:
	jsr	L2531
L0784:
	jsr	L0F4C
L0787:
	bclr	1,X0001
L0789:
	bclr	0,X0081
L078B:
	rts
;
L078C:
	brclr	7,X0087,L07AB
L078F:
	lda	#$01
L0791:
	eor	X0012
L0793:
	sta	X0012
L0795:
	lda	X0017
L0797:
	add	#$A0
L0799:
	tax
L079A:
	lda	X0016
L079C:
	adc	#$01
L079E:
	cmp	X001A
L07A0:
	bmi	L07A8
L07A2:
	bne	L07AB
L07A4:
	cpx	X001B
L07A6:
	bhi	L07AB
L07A8:
	lda	X001A
L07AA:
	inca
L07AB:
	rts
;
L07AC:
	tst	X007E
L07AE:
	beq	L07EB
L07B0:
	brclr	2,X007E,L07BB
L07B3:
	bclr	2,X007E
L07B5:
	clr	X008A
L07B7:
	lda	#$DD
L07B9:
	sta	X0087
L07BB:
	lda	#$FF
L07BD:
	brset	6,X007E,L07D6
L07C0:
	lda	#$C8
L07C2:
	brset	7,X007E,L07D6
L07C5:
	brclr	1,X007E,L07E0
L07C8:
	bclr	1,X007E
L07CA:
	lda	X0082
L07CC:
	and	#$03
L07CE:
	cmp	#$02
L07D0:
	bne	L07E0
L07D2:
	bset	4,X0080
L07D4:
	lda	#$05
L07D6:
	bclr	6,X007E
L07D8:
	bclr	7,X007E
L07DA:
	jsr	L0F4C
L07DD:
	jmp	L0CFB
;
L07E0:
	brclr	5,X007E,L07EB
L07E3:
	bclr	5,X007E
L07E5:
	brclr	6,X0082,L07EB
L07E8:
	jmp	L0CE4
;
L07EB:
	brclr	6,X0082,L07F1
L07EE:
	jmp	L0CA7
;
L07F1:
	brset	2,X00BE,L07F7
L07F4:
	brset	3,X007F,L0030
L07F7:
	brset	7,X0087,L005E
L07FA:
	brset	0,X0080,L0030
L07FD:
	brset	5,X007F,L0052
	brset	7,X007F,L0058
	brset	6,X007F,L004C
	brset	4,X0082,L0017
	brclr	5,X0080,L0017
	lda	X0088
	add	#$34
	bcc	L0017
	bclr	5,X0082
	jmp	L0CD0
;
	lda	X007F
	and	#$03
	bne	L0033
	lda	X0266
	bpl	L0030
	lda	X0265
	cmp	#$40
	beq	L002D
	cmp	#$30
	bne	L0030
	jmp	L0CDA
	jmp	L0CC6
;
	deca
	bne	L0049
	ldx	#$AD
	jsr	L37C7
	beq	L0040
	brset	1,X007C,L004C
	brset	7,X007C,L0030
	brset	1,X007C,L0030
	jmp	L0CDA
;
	deca
	bne	L0052
	brset	0,X00BA,L00C6
	jmp	L0CDA
;
	brset	6,X0080,L00C6
	jmp	L0CDA
;
	lda	#$80
	sta	X0087
	bra	L00DA
;
	dec	X008A
	bpl	L00C5
	lda	X0087
	and	#$1F
	cmp	#$1F
	bne	L006E
	bclr	1,X0087
	bclr	6,X0087
	inc	X0087
	brset	6,X0087,L0076
	brclr	0,X0087,L0099
	jsr	L122E
	beq	L0080
	brset	6,X0087,L00F9
	bra	L00F6
;
	brclr	5,X007F,L008F
	bclr	7,X007F
	bclr	7,X0082
	bclr	6,X0082
	clr	X008A
	bclr	0,X0082
	bra	L00F6
;
	brclr	0,X0087,L0099
	jsr	L0F67
	lda	#$14
	bra	L00A2
;
	lda	#$FE
	sta	X0088
	jsr	L0F4C
	lda	#$50
	sta	X008A
	jmp	L0D77
;
	dec	X008A
	bne	L00C5
	brclr	0,X0081,L0101
	lda	#$02
	sta	X008A
	jsr	L122E
	beq	L00E4
	brclr	7,X0082,L00D3
	eor	X0082
	sta	X0082
	bset	3,X007E
	bset	3,X00BC
	jsr	L0F3F
	rts
;
	brclr	5,X0082,L00CC
	brclr	4,X0082,L00D0
	bset	5,X0082
	bra	L00A4
;
	brset	7,X0082,L00A4
	brset	7,X0082,L00DA
	jsr	L0F4C
	rts
;
	jsr	L122E
	bne	L00F6
	bclr	5,X0082
	brclr	7,X0082,L00A4
	bclr	6,X0082
	bclr	4,X0080
	brclr	7,X0082,L00C5
	clr	X008A
	brset	0,X0080,L00C5
	jsr	L0F67
	jmp	L0BEB
;
	brclr	7,X0082,L00C6
	lda	#$02
	sta	X008A
	bset	6,X0082
	bra	L0177
;
	brclr	1,X0081,L014C
	brset	2,X0082,L0166
	brclr	3,X0082,L0118
	brclr	1,X0001,L0113
	bclr	1,X0001
	ldx	#$04
	bra	L0162
;
	brclr	7,X006B,L0166
	bra	L015E
;
	brset	2,X00BE,L00C5
	brclr	3,X0001,L012A
	bclr	3,X0001
	ldx	#$01
	brclr	7,X006B,L016F
	brclr	1,X0001,L016F
	bra	L016B
;
	ldx	#$02
	brclr	0,X0061,L016D
	brset	7,X006B,L0138
	bset	7,X006B
	bset	6,X0095
	bra	L016F
;
	brset	1,X0001,L0141
	bset	1,X0001
	ldx	#$01
	bra	L016F
;
	ldx	#$03
	brclr	1,X0090,L016D
	bset	3,X0001
	ldx	#$06
	bra	L016F
;
	brset	0,X0061,L0159
	brset	7,X005F,L0166
	brset	3,X005F,L0166
	bclr	3,X0001
	bra	L016B
;
	brset	1,X0001,L0166
	bset	1,X0001
	bclr	7,X006B
	bset	6,X0095
	ldx	#$04
	bra	L016F
;
	brclr	0,X0002,L016B
	bset	3,X0001
	ldx	#$05
	bset	0,X0081
	lda	X1320,x
	sta	X008A
	bset	4,X0012
	rts
;
	ldx	X0085
	lda	X12D0,x
	brclr	1,X0081,L0182
	lda	X12F0,x
	sta	X0058
	brset	4,X0080,L0196
	brset	6,X0082,L0193
	brset	7,X0087,L0196
	brset	7,X0082,L0193
	brclr	5,X0082,L0196
	jmp	L0E6D
;
	jsr	L124C
	brset	7,X0087,L01B9
	brset	4,X007F,L01E0
	ldx	#$A9
	jsr	L125B
	brclr	5,X007F,L01AA
	brset	1,X00A1,L01B3
	brclr	6,X007F,L01E0
	tst	X0058
	beq	L01C3
	dec	X0058
	stx	X0086
	lda	X0057
L09B7:
	bra	L01C3
;
	brclr	6,X0087,L01C3
	add	X1327
	bcc	L01C3
	lda	#$FF
	cmp	X0058
	bhi	L01C9
L09C7:
	sta	X0058
	brclr	7,X0087,L01E0
	brset	6,X0087,L01E0
	lda	X0087
	lsra
	and	#$0F
	tax
	lda	X0058
	add	X1310,x
	bcc	L01DE
	lda	#$FF
	sta	X0058
	brset	6,X0081,L01EF
	lda	X0084
	beq	L01EF
	asla
	nega
	add	X0058
	bcs	L01F1
	clra
	cmp	XB658
	brclr	3,X0081,L01F8
	lda	#$80
	sub	X0085
	sta	X0058
	brset	2,X00BE,L022F
	brset	3,X0082,L026D
	brset	2,X0082,L021C
	brset	2,X006B,L0209
	brclr	1,X006B,L020F
	bclr	2,X006B
	bclr	1,X006B
	bset	6,X0095
	brclr	1,X0081,L022F
	brset	1,X0001,L022F
	brset	4,X0082,L022F
	bset	3,X0082
	bra	L026D
;
	ldx	#$AE
	jsr	L37C7
	and	#$07
	deca
	asla
	asla
	add	X1328
	add	X0058
	bcs	L026D
	sta	X0058
	brset	7,X0081,L024A
	brset	5,X007F,L024A
	brset	6,X007F,L024A
	brset	3,X0081,L024A
	ldx	#$00
	brclr	1,X0081,L0242
	ldx	#$10
	jsr	L1279
	coma
	and	#$0F
	bra	L024B
;
	clra
	sta	X0059
	cmp	X0083
	beq	L0261
	bcc	L025C
	lda	X0083
	deca
	and	#$0F
	sta	X0083
	bra	L025E
;
	sta	X0083
	jsr	L0F73
	asl	X0059
	lda	X0058
	sub	X0059
	bcc	L026A
	clra
	asla
	bcc	L026F
	lda	#$FF
	sta	X0058
	sta	X0059
	brset	6,X0082,L0285
	brset	7,X0087,L0285
	lda	X0088
	sub	X0058
	beq	L02DD
	rora
	eor	#$7F
	brclr	4,X0081,L0289
	lda	X0058
	bra	L02CA
;
	ldx	#$20
	jsr	L1279
	asla
	brset	5,X0082,L0294
	add	#$10
	add	#$00
	tax
	lda	X12B0,x
	dec	X008A
	bmi	L02BA
	tsta
	bmi	L02AB
	tst	X0089
	bmi	L02C1
	cmp	X0089
	bhi	L02B3
	bra	L02E5
;
	tst	X0089
	bpl	L02C1
	cmp	X0089
	bcc	L02A9
	tax
	sub	X0089
	stx	X0089
	bra	L02C8
;
	tsta
	bne	L02C1
	lda	X0058
	sub	X0088
	ldx	X12B1,x
	stx	X008A
	sta	X0089
	add	X0088
	bset	4,X0082
	cmp	X0059
	bne	L02D2
	bclr	4,X0082
	cmp	X0088
	beq	L02DF
	sta	X0088
	jsr	L0F82
	bra	L02E5
;
	bclr	4,X0082
	brset	4,X007E,L02D8
	brset	3,X007E,L02D8
	lda	X0082
	and	#$0C
	tax
	brclr	0,X0080,L02F0
	brset	0,X0061,L02F2
	eor	X007F
	and	#$0C
	beq	L033E
	brclr	5,X0082,L02FC
	brclr	7,X0082,L033E
	tstx
	beq	L0300
	txa
	eor	X0082
	sta	X0082
	bset	6,X0095
	bclr	2,X006B
	bclr	1,X006B
	brclr	1,X0081,L0320
	brset	3,X0082,L0315
	brclr	2,X0082,L0317
	bset	2,X006B
	bset	1,X006B
	bclr	0,X0081
	lda	#$05
	sta	X008A
L0B1D:
	bset	6,X0082
	rts
;
	brclr	3,X0082,L032F
	ldx	#$AF
	jsr	L37C7
	rora
	bcc	L0334
	bset	2,X006B
	bra	L0336
;
	brclr	2,X0082,L0339
	bset	2,X006B
	bset	1,X006B
	bset	3,X0001
	rts
;
	brset	0,X0061,L033E
	bclr	3,X0001
	rts
;
	lda	X0082
	and	#$03
	tax
	lda	X11B1,x
	sta	X0050
	clra
	bra	L0379
;
	bset	7,X0082
	brset	5,X0081,L033E
	lda	#$FF
	cmp	X0088
	beq	L035B
	sta	X0088
	bsr	L0387
	lda	#$FF
	sta	X0050
	lda	#$03
	bsr	L0379
	lda	#$81
	bra	L036D
;
	bclr	7,X0082
	bset	3,X007E
	lda	#$80
	sta	X0050
	lda	#$08
	bra	L0379
;
	lda	X0083
	sta	X0050
	lda	#$01
	ldx	#$88
	brclr	0,X0002,L0381
	jsr	L11B5
	rts
;
	lda	X0088
	brset	7,X0082,L0381
	brclr	5,X007F,L0392
	brset	5,X0082,L0392
	add	#$E0
	bcs	L0392
	clra
	brclr	1,X0081,L03BB
	brclr	1,X0082,L03A2
	brset	0,X0082,L03AF
	brclr	2,X00B8,L03AF
	lda	#$08
	bra	L03A9
;
	lda	#$14
	brclr	0,X0082,L03A9
	lda	#$0C
	nega
	add	X0088
L0BAC:
	bcs	L03AF
	clra
	cmp	#$30
	bcc	L03B5
	lda	#$30
	cmp	#$44
	bcc	L03BB
	bset	3,X007E
	sta	X0056
	bclr	7,X005B
	ldx	#$A0
	jsr	L10A5
	sta	X0059
	ldx	#$A1
	jsr	L10A5
	sta	X0058
	brset	5,X0082,L03F8
	brclr	3,X007E,L03F8
	bclr	3,X007E
	bmi	L03D9
	coma
	cmp	XAB07
	and	#$0F
	sta	X0050
	lda	X0059
	bmi	L03EA
	coma
	bit	#$08
	bne	L03EC
	sub	#$0D
	add	#$07
	jsr	L252C
	add	X0050
	sta	X0050
	lda	#$03
	jsr	L0F79
	lda	X0058
	bne	L0408
	lda	X0059
	add	#$08
	sta	X0057
	tax
	lda	X10ED,x
	bra	L041D
;
	add	#$08
	sta	X0057
	lda	X0059
	bpl	L0411
	nega
	jsr	L252C
	add	X0057
	tax
	lda	X10ED,x
	brclr	7,X0059,L0420
	jsr	L252C
	jsr	L2525
	brset	3,X0057,L0434
	brset	7,X005B,L0433
	nega
	beq	L0433
	add	X0056
	bcs	L043A
	clra
	bra	L043A
;
	clra
	add	X0056
	bcc	L043A
	lda	#$FF
	sta	X0050
	lda	#$02
	jsr	L0F79
	brclr	4,X007E,L04A4
	bclr	4,X007E
	lda	#$88
	sta	X0055
	lda	#$14
	sta	X0054
	lda	#$E0
	ldx	#$53
	stx	X0057
	ldx	X0057
	clr	,x
	sta	X0056
	ldx	#$A3
	jsr	L37C7
	brclr	6,X008E,L0462
	clra
	eor	X0056
	bit	#$20
	bne	L0476
	jsr	L37C7
	brclr	6,X008E,L046F
	clra
	bpl	L0472
	nega
	add	#$10
	bsr	L0496
	ldx	#$A2
	jsr	L37C7
	eor	X0056
	bit	#$40
	beq	L0489
	jsr	L37C7
	bpl	L0487
	nega
	bsr	L0496
	dec	X0057
	lda	X0056
	sub	#$20
	bmi	L0454
	ldx	#$55
	jmp	L11BB
;
	tax
	lda	X1191,x
	ldx	X0057
	add	,x
	cmp	#$1F
	bls	L04A3
	lda	#$1F
	sta	,x
	rts
;
	clra
	brset	5,X0082,L04B2
	brset	5,X007F,L04EB
	brset	6,X007F,L04EB
	brset	3,X0081,L04EB
	jsr	L37C7
	add	#$06
	bpl	L04BB
	lda	#$06
	cpx	#$A0
	bne	L04C1
	add	#$0D
	brclr	1,X0081,L04C6
	add	#$1A
L0CC6:
	tax
	lda	X115D,x
	bmi	L04EB
	brclr	1,X0081,L04EB
	ldx	X0056
	cpx	#$44
	bcc	L04EB
	clr	X0053
	cpx	#$36
	bcs	L04E3
	inc	X0053
	cpx	#$3C
	bcs	L04E3
	inc	X0053
	cmp	X0053
	bls	L04EB
	lda	X0053
	bset	7,X005B
	tsta
	rts
;
	brset	0,X0000,L0560
;
	db	$72, $62, $51, $41
;
	brn	L04F6
	brn	L0539
;
	db	$52, $62, $72
;
L0CFB:
	neg	,x
	brset	0,X0000,L04FF
	asl	,x
	asr	X0057,x
	rorx
;
	db	$35
;
	bclr	1,X0000
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
	brset	0,X0000,L050F
	asl	X0068,x
	asrx
	rora
;
	db	$35
;
	bclr	1,X0000
;
	db	$41
;
	comx
	lsr	,x
;
	db	$75, $85, $86
;
	brset	0,X0000,L051F
	rol	X0058,x
	aslx
	asra
	bcs	L0539
	brset	0,X0041,L058B
	lsr	,x
;
	db	$75, $85, $86
;
	brset	0,X0000,L052F
	rolx
	aslx
	asla
	asra
	bne	L0549
	brset	0,X0041,L059B
	lsr	,x
;
	db	$84, $85, $95
;
	brset	0,X0000,L053F
	rolx
	aslx
	asla
	asra
	bcs	L0559
	brset	0,X0041,L05AA
	lsr	,x
;
	db	$84, $85, $95
;
	brset	0,X0000,L054F
	rolx
	aslx
	asla
	asra
	bcs	L0569
	brset	0,X0041,L05BA
	lsr	,x
;
	db	$84, $85, $95
;
	brset	0,X00FA,L055A
	jmp	,x						;INFO: index jump
;
	jsr	,x						;INFO: index jump
	ldx	,x
	stx	,x
	brset	0,X0001,L0568
	brclr	1,X0004,L056E
	brset	3,X00FB,L0568
	jsr	,x						;INFO: index jump
	jsr	,x						;INFO: index jump
	ldx	,x
	ldx	,x
	stx	,x
	brset	0,X0001,L0575
	brset	1,X0003,L057A
L0D77:
	add	,x
	add	,x
	jmp	,x						;INFO: index jump
;
	jsr	,x						;INFO: index jump
	ldx	,x
	stx	,x
	brset	0,X0001,L0581
	brset	1,X0002,L0586
	brclr	1,X00FB,L0581
	jmp	,x						;INFO: index jump
;
	jsr	,x						;INFO: index jump
	ldx	,x
	stx	,x
	brset	0,X0001,L058E
	brset	1,X0002,L0593
	brclr	1,X0000,L0594
	brset	1,X0003,L059A
	brclr	2,X0006,L05A0
	brset	4,X0009,L05A6
	brclr	5,X000C,L05AC
	brset	7,X000F,L05A2
	brclr	0,X0002,L05A8
	brset	2,X0005,L05AE
	brclr	3,X0008,L05B4
	brset	5,X000B,L05BA
	brclr	6,X000E,L05D0
	asl	X0039
	dec	X002B
	sta	X0051
	stx	X0052
	ldx	#$52
	stx	X005A
	bsr	L05C5
	bcc	L0624
	bsr	L05C5
	bcc	L0624
	ldx	X005A
	bsr	L0625
	lda	,x
	bsr	L05D6
	bcs	L061A
	decx
	cpx	#$50
	bcc	L05C9
	clc
	bra	L061A
;
	sec
	rola
	bcs	L05DE
	bsr	L05F0
	bra	L05E2
;
	bclr	6,X0004
	bra	L05E2
;
	bsr	L05E9
	asla
	bne	L05D8
	bclr	6,X0004
	bclr	7,X0004
	brset	6,X0000,L05EE
	bra	L0629
;
	bset	6,X0004
	bclr	6,X0000
	rts
;
	bsr	L0625
	bsr	L05D6
	bcs	L061A
	bsr	L0629
	lda	#$01
	bclr	6,X0004
	bclr	7,X0004
	brset	6,X0000,L0606
	rola
	bsr	L0629
	bcc	L05FF
	sta	,x
	dec	X0059
	bmi	L0617
	bsr	L05F0
	decx
	bclr	7,X0004
	bra	L05FB
;
	bsr	L05E7
	clc
	bsr	L0629
	bsr	L05F0
	bclr	7,X0004
	bsr	L0624
	bclr	6,X0004
	rts
;
	bsr	L061E
	bsr	L05F0
	bset	7,X0004
	bclr	7,X0000
	rts
;
	lda	#$03
	brset	5,X007F,L0645
	brset	7,X007F,L0647
	brset	6,X0087,L0647
	deca
	brset	6,X007F,L0645
	brclr	0,X007F,L0643
	brset	1,X007C,L0645
	lda	X007F
	clr	X0087
	eor	X0082
	and	#$03
	rts
;
	ldx	#$10
	jsr	L37C7
	brclr	1,X0081,L065A
	add	#$10
	bcc	L065A
	lda	#$FF
	rts
;
	sta	X0057
	jsr	L37C7
	asla
	asla
	add	#$F4
	nega
	add	X0057
	sta	X0057
	clrx
	incx
	lda	X12D0,x
	brclr	1,X0081,L0674
	lda	X12F0,x
	cmp	X0057
	bhi	L066A
	rts
;
	clr	X0057
	add	X1288,x
	bcs	L0685
	inc	X0057
	incx
	bra	L067B
;
	lda	X0057
	rts
;
	sta	X0004
	brset	2,X0004,L0691
	brset	2,X0004,L0694
	brset	2,X00FF,L0693
	brset	0,X0000,L0696
	brset	0,X0000,L0628
	brset	3,X0006,L06A2
	brset	3,X0006,L06A5
	brset	3,X0006,L06A8
	brset	3,X0006,L06AB
	brset	3,X0006,L06A7
	bra	L06EA
;
	bset	3,X000A
	brset	1,X000E,L06CF
	stx	,x
	bra	L06B2
;
	bset	0,X0000
	brset	4,X0000,L06B7
	brset	0,X0000,L06BA
	ldx	,x
	brclr	1,X00FC,L06BE
	eor	,x
	brset	0,X000C,L06C2
	brset	3,X0000,L06C7
	brset	0,X0000,L06C8
	brset	0,X0000,L06C9
	brclr	1,X00FC,L06CE
	eor	,x
	brset	0,X009C,L066E
;
	db	$90, $84
;
	asl	,x
	inc	X0064,x
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
	bmc	L070B
	bne	L0709
	bhi	L0707
	bset	7,X001C
	bset	5,X0018
	bset	3,X0014
	bset	1,X0010
	bset	0,X009C
;
	db	$92, $88, $7E
;
	lsr	,x
	dec	X0062,x
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
	bmc	L0730
	bhcc	L072E
	bcc	L072C
	bra	L072A
;
	bset	6,X001A
	bset	4,X0018
	bset	7,X001C
	bset	5,X0018
	bset	3,X0014
	bset	1,X0010
	brset	7,X000C,L0725
	brset	4,X0006,L0722
	brset	1,X0000,L072B
	bset	2,X0003
	negx
	bhcc	L072B
	inc	X0018
	brset	0,X0010,L0738
;
	db	$61
;
	brclr	5,X000C,L06E9
	brclr	2,X000A,L06EC
	bclr	3,X0020
	brclr	1,X000B,L06F1
	bset	1,X0019
	brclr	0,X001D,L06F6
	bset	5,X00BA
	clr	X00D6
	clr	X00C1
	jsr	L1E26
	bset	0,X00BA
	jsr	L254E
	bset	4,X0001
L0F4C:
	ldx	#$B0
	jsr	L37C7
	and	#$62
	ora	#$80
	brclr	4,X00B5,L075A
	ora	#$10
	sta	X00B5
	clr	X00BF
	jsr	L253F
	brclr	0,X0061,L0777
	clr	X00BC
	bset	2,X00BC
	brclr	4,X0069,L0777
	brset	1,X005F,L0777
	bclr	6,X00B5
	lda	X00B5
	ldx	#$B0
	jsr	L379B
	bset	4,X00BC
L0F79:
	rts
;
	brclr	6,X0061,L0785
	brset	6,X00BA,L0785
	lda	#$05
L0F82:
	brclr	5,X00BA,L0787
	lda	#$28
	sta	X0063
	bset	6,X00BA
	bset	5,X00BA
	lda	#$30
	ldx	#$01
	jsr	L1B82
	brclr	3,X0067,L079F
	bclr	3,X0067
	jsr	L13BC
	jsr	L36AE
	jsr	L0789
	jsr	L36F2
	jsr	L13E0
	brclr	6,X00BA,L07B1
	bclr	6,X00D6
	tst	X0063
	bne	L0794
	jsr	L36F2
	jsr	L1E26
	bclr	5,X00BA
	bclr	6,X00BA
	rts
;
	brset	7,X00D6,L07FA
	brset	6,X00BA,L07C5
	brclr	5,X00BA,L07E9
	lda	X00BB
	sta	X0058
	jsr	L13FB
	bra	L07F0
;
	brset	7,X00D6,L07FA
	brset	6,X00BA,L07D7
	brclr	5,X00BA,L07E9
	lda	X00BB
	sta	X0058
	jsr	L1506
	bra	L07F0
;
	lda	X00BB
	sta	X0058
	jsr	L157D
	bra	L07F0
;
	brclr	0,X0061,L07F0
	bclr	5,X0061
	bset	2,X005D
	lda	X00BB
	cmp	X0058
	beq	L07FA
	bset	6,X00CB
	bset	5,X00CB
	rts
;
	brclr	4,X00BC,L0003
	bclr	4,X00BC
	jmp	L1A4E
;
	brset	7,X00C1,L0009
	brset	6,X00C1,L000F
	brclr	3,X00BC,L000F
	jmp	L18FF
;
	brclr	2,X00C0,L0015
	jmp	L1C56
;
	lda	X00B3
	bne	L0020
	jsr	L1494
	jsr	L14CB
	rts
;
	bmi	L0061
	brset	4,X00B3,L003E
	bit	#$60
	beq	L002E
	jsr	L184C
	bra	L0030
;
	clr	X00B3
	bclr	0,X00BA
	brset	7,X00B9,L003B
	brclr	6,X00BA,L003B
	brclr	6,X00C1,L003D
	bset	0,X00BA
	rts
;
	lda	X00C1
	and	#$86
	cmp	#$86
	bne	L0049
	jsr	L1C2B
	lda	#$B4
	brset	5,X00B6,L005F
	lda	#$88
	brclr	7,X00BA,L002E
	brclr	2,X00B6,L002E
	brclr	1,X00B6,L005F
	brset	5,X00B3,L005F
	brclr	0,X00B6,L002E
	sta	X00B3
	bclr	7,X00B3
	bclr	2,X00BB
	and	#$07
	tax
	lda	X00B4
	bpl	L0072
	and	#$7F
	sta	X00B4
	sta	X00B8
	ldx	X1989,x
	jsr	L19E9,x						;INFO: index jump
	brset	7,X00B3,L0030
	lda	X00B3
	cmp	#$70
	bcc	L002E
	bclr	3,X00BB
	brset	4,X00B3,L002E
	sta	X00B6
	bclr	5,X00BC
	and	#$07
	cmp	#$07
	bne	L002E
	bset	4,X00B6
	bra	L002E
;
	lda	X00C1
	bit	#$C0
	beq	L00AB
	and	#$86
	cmp	#$86
	bne	L00C9
	bclr	5,X00BC
	bclr	2,X00BB
	jsr	L1E12
	beq	L00B4
	bclr	2,X00BA
	bclr	4,X00C0
	lda	#$97
	ldx	#$C0
	jsr	L1C2D
	jsr	L1E1D
	brclr	4,X00BF,L00C5
	brset	2,X00BE,L00C9
	brset	1,X00BE,L00C9
	brclr	7,X00BF,L00C9
	bclr	7,X00BF
	bset	4,X00BF
	bset	3,X00BC
	rts
	rts
;
	brset	4,X00C1,L0105
	dec	X00C3
	bne	L0105
	lda	X00C1
	cmp	#$60
	beq	L00E0
	brclr	3,X00BC,L00E0
	inc	X00C3
	jmp	L18FF
;
	brclr	7,X00C1,L00F2
	bclr	7,X00C1
	bclr	6,X00C1
	lda	X00C1
	and	#$07
	tax
	ldx	X1CC1,x
	jmp	L1CC9,x						;INFO: index jump
;
	brclr	6,X00C1,L0103
	bclr	6,X00C1
	lda	X00B6
	and	#$07
	tax
	ldx	X1BB7,x
	jsr	L1BBF,x						;INFO: index jump
	cmp	X3FC1
	rts
;
	brset	7,X00BA,L0151
	jsr	L1DF8
	beq	L0151
	lda	X00BE
	brset	5,X00B9,L0133
	brset	4,X00B9,L0129
	brclr	1,X00BE,L011E
	brclr	3,X00B9,L0121
	bra	L014D
;
	brset	3,X00BA,L014D
	bit	#$F0
	beq	L0151
	ora	#$F0
	bra	L0155
;
	brclr	1,X00BE,L012F
	brset	0,X00BE,L0144
	lda	#$02
	bra	L013B
;
	brclr	2,X00BE,L0139
	brset	0,X00BE,L0144
	lda	#$04
	bset	7,X00BF
	bset	5,X00CB
	bset	3,X00BC
	inca
	bset	4,X00BA
	and	#$07
	ora	#$20
	brclr	6,X00B9,L014D
	ora	#$C0
	add	#$F0
	bcs	L0155
	jsr	L1E30
	clra
	sta	X00BE
	brclr	4,X00C1,L0105
	jmp	L14CE
;
X115D:
	brclr	1,X006C,L010B
	brset	0,X00CD,L0158
	brclr	1,X0003,L0169
	bih	L016B
	brset	3,X00B7,L01C1
	bsr	L0172
	lda	X0056
	jsr	L252C
	jsr	L2441
	cmp	XA620
	sta	X0288,x
	incx
	rts
;
	brclr	3,X00D6,L017C
	bclr	3,X00D6
	bset	6,X00BA
	ldx	X0271
	stx	X005B
	lsrx
	lsrx
	lsrx
	cpx	#$0C
	bcc	L019C
	ldx	X155D,x
	lda	X0272
	jmp	L1599,x						;INFO: index jump
	jmp	L16C2
	jmp	L16BF
;
	bset	6,X00BB
	bset	2,X00BF
	cmp	X0273
	bcs	L01AA
	bclr	2,X00BF
	brclr	4,X00CE,L019C
	clrx
	lda	X0274
X11B1:
	bsr	L0172
	bsr	L0176
L11B5:
	lda	X0273
	jsr	L1572
L11BB:
	bsr	L0176
	brset	0,X00BB,L0200
	bsr	L0176
	cpx	#$08
	bne	L01C0
	bra	L0200
;
	brclr	1,X005B,L0202
	lda	X0274
	bmi	L01E3
	eor	X00C5
	and	#$1F
	bne	L01D9
	brset	7,X00C5,L01E3
	eor	X00C5
	sta	X00C5
	bset	5,X00C5
	bset	6,X00C5
	bset	7,X00C5
	brclr	4,X00CE,L0200
	brset	6,X00BB,L01F0
	clrx
	bsr	L0176
	cpx	#$04
	bne	L01EA
	bset	0,X00BB
	ldx	#$04
	lda	X0273
	jsr	L1569
	lda	X0272
	jsr	L1569
	bset	6,X00CB
X1202:
	jmp	L16BF
;
	ldx	X005B
	cpx	#$08
	beq	L0218
	cpx	#$0B
	bne	L0202
	brclr	6,X00CE,L0215
	jsr	L1E5C
	lda	X0275
	bclr	5,X00BA
	bclr	6,X00BA
	tsta
	bpl	L0221
	bset	6,X00BA
	bclr	3,X00BA
	bit	#$40
	beq	L023B
	bset	3,X00BA
	bit	#$20
	beq	L023B
	tax
L122E:
	lda	X00B8
	and	#$0F
	ora	#$80
	sta	X00B4
	lda	#$CA
	sta	X00B3
	txa
	jsr	L2525
	eor	X00B9
	and	#$07
	bra	L02A9
;
	bclr	4,X00BB
	brclr	2,X005B,L0202
	ldx	#$07
	stx	X0056
	lda	#$07
	sub	X0056
	tax
	lda	X0272,x
	ldx	X0056
	sta	X0280,x
	dec	X0056
	bpl	L024D
	bset	4,X00BB
	bset	2,X0094
	bset	5,X00BB
	bra	L0200
;
	bclr	1,X00BB
	bit	#$10
	beq	L026E
	bset	1,X00BB
	and	#$87
	bpl	L027E
	ora	#$10
	brset	7,X00B9,L0285
	bclr	4,X00BB
L1279:
	jsr	L174C
	bra	L0283
;
	brclr	7,X00B9,L0285
	bclr	7,X00BA
	bset	7,X00CB
	jsr	L252D
X1288:
	eor	X00B9
	and	#$B8
	bra	L02A9
;
	brset	0,X00BF,L02A7
	lda	X0271
	and	#$03
	tax
	lda	X0272,x
	sta	X0056
	and	#$07
	tax
	ldx	X1720,x
	bclr	7,X00BA
	jsr	L1726,x						;INFO: index jump
	bra	L02BF
;
	bset	5,X00CB
	beq	L02BF
	eor	X00B9
	sta	X00B9
X12B1:
	brset	2,X00B8,L02BF
	brclr	3,X00B9,L02BF
	ldx	#$B2
	jsr	L37C7
	jsr	L1DEE
	bset	6,X00D6
	rts
;
	brset	0,X00BF,L02A7
	lda	X0273
	brset	3,X00B6,L02CF
	cmp	#$FF
	beq	L030F
	sta	X00B7
	lda	X00B6
	and	#$07
	cmp	#$04
	bne	L02E4
	jsr	L1E35
	eor	X00C0
	and	#$03
	beq	L02E4
	bset	2,X00C0
	lda	X0272
	bmi	L02F3
	brclr	6,X00B9,L02FA
	bclr	4,X00BB
	jsr	L1E28
	bra	L02F8
;
	brset	6,X00B9,L02FA
	bset	6,X00B9
	bset	5,X00CB
	brclr	5,X00B6,L0314
	lda	X00B7
	ldx	X00C2
	incx
	beq	L0312
	brclr	7,X00C1,L0314
	cmp	X00C2
	bne	L0314
	bclr	5,X00B6
	bra	L0314
;
	bset	3,X00BB
	cmp	XB7C2
	lda	X00C3
	cmp	#$40
	beq	L031E
	bset	5,X00BB
	bset	6,X00CB
	bra	L02A7
;
X1320:
	sbc	X2744
	lsra
	brset	0,X0026,L0336
;
X1327:
	db	$61
;
X1328:
	brset	1,X001F,L038C
	brclr	4,X00B6,L0339
	brset	7,X00B6,L037D
	lda	X00C1
	and	#$07
	cmp	#$02
	beq	L037F
	brset	5,X00BC,L0345
	brset	6,X00BC,L0345
	lda	X00B8
	and	#$70
	bne	L0349
	bsr	L037F
	bset	7,X00BB
	brset	7,X0056,L034C
	rts
;
	brclr	7,X0056,L0367
	bset	4,X00B8
	brset	2,X00B8,L0362
	bclr	0,X00B8
	lda	#$FF
	ldx	#$BC
	jsr	L379B
	incx
	jsr	L379B
	lda	#$80
	sta	X00B3
	rts
	jmp	L1D33
;
	bclr	3,X00BF
	brclr	7,X0056,L03E7
	jsr	L1C25
	bset	2,X007E
	lda	X00B8
	sta	X00BD
	bset	2,X00BB
L137A:
	bclr	6,X00BC
	rts
;
	bclr	4,X00BB
	brset	6,X0056,L038E
	bclr	6,X00BC
	bclr	2,X00BB
	bclr	6,X00B8
	bclr	5,X00B8
	bclr	4,X00B8
	bra	L03E5
;
	lda	X00B8
	brset	6,X00BC,L0397
	bit	#$70
	bne	L03E7
	and	#$0C
	sta	X00BD
	lda	X0272
	sub	#$06
	beq	L03AB
	bmi	L03A9
	deca
	inc	X00BD
	bra	L039E
;
	add	#$07
	jsr	L252C
	add	X00BD
	sta	X00BD
	brclr	2,X00B8,L03BE
	jsr	L252D
	eor	X00B8
	and	#$08
L13BC:
	bra	L03C9
;
	brclr	5,X0069,L03C5
	bit	#$01
	bne	L03D7
	eor	X00B8
	and	#$03
	beq	L03DB
	brclr	6,X00BC,L03D4
L13CE:
	bclr	6,X00B8
	bclr	5,X00B8
	bclr	4,X00B8
	brset	5,X00BC,L0378
	brset	6,X00BC,L0384
	rts
;
	bset	5,X00BB
	lda	X00BD
	sta	X00B8
	bset	6,X00BC
	bclr	2,X00BB
	bset	7,X00CB
	rts
;
	brclr	6,X00D2,L03EE
	jmp	L174D
;
	brclr	7,X0056,L041B
	bclr	2,X00C0
	jsr	L1DEB
	bsr	L037F
	brset	5,X00B6,L0415
L13FB:
	brclr	6,X00BF,L040E
	brset	1,X00BA,L0405
	bset	1,X00BA
	bset	3,X00BC
	lda	#$E3
	brset	4,X00C1,L0410
	ldx	#$01
	bra	L0412
;
	lda	#$60
	ldx	#$28
	jmp	L1C2D
;
	brclr	2,X00C1,L040E
	bset	5,X00C1
	rts
;
	brclr	5,X00B6,L0423
	jsr	L1D33
	bra	L043D
;
	lda	X00B6
	and	#$07
	cmp	#$05
	beq	L0436
	cmp	#$04
	bne	L043D
	brclr	6,X00B5,L043D
	clr	X00C2
	bset	0,X00B6
	lsr	X00C2
	bne	L043D
	jsr	L1CF4
	bset	7,X00BA
	lda	X00B6
	ora	#$D0
	bit	#$20
	beq	L0449
	and	#$A7
	sta	X00B3
	rts
;
	lda	X00B3
	bit	#$0F
	beq	L04C4
	and	#$07
	tax
	clra
	sec
	rola
	decx
	bpl	L0457
	sta	X0056
	ldx	#$B5
	brclr	3,X00B3,L0464
	ldx	#$BC
	brclr	6,X00B3,L0470
	brset	5,X00B3,L046E
	coma
	and	,x
	bra	L0471
;
	eor	,x
	cmp	X00FA
	brset	3,X00B3,L047D
	brclr	1,X0056,L047D
	bit	#$02
	beq	L047D
	ora	#$0C
	brclr	3,X008E,L048F
	brclr	4,X0056,L0489
	bit	#$10
	beq	L0489
	ora	#$08
	bit	#$08
	bne	L048F
	and	#$AF
	sta	,x
	ldx	#$F3
	brset	3,X00B3,L04DB
	and	#$62
	ldx	#$B0
	jsr	L379B
	bset	5,X00CB
	brset	5,X0056,L04A7
	brclr	6,X0056,L04F5
	brset	2,X00B8,L04B3
	lda	X00B6
	and	#$17
	cmp	#$04
	bne	L04B3
	bsr	L043D
	bra	L04FF
;
	brclr	6,X0056,L04F5
	ldx	#$10
	cmp	#$05
	beq	L04FA
	brset	6,X0059,L04C6
	ldx	#$F1
	brset	6,X00B9,L04FA
	bra	L04F5
;
	bset	4,X00C0
	bclr	3,X00C0
	brclr	2,X00B8,L04DE
	bset	3,X00C0
	ldx	#$B2
	jsr	L37C7
	sta	X00B8
	bclr	5,X00BB
	jmp	L1762
	jmp	L1A4E
;
	brset	6,X00C1,L04F5
	jsr	L1E12
	bne	L04F5
	lda	#$01
	sta	X00C3
	lda	X00C1
	cmp	#$95
	beq	L04F5
	lda	#$86
	jsr	L1C2B
	lda	X00B3
	and	#$10
	tax
	stx	X00B3
	bset	3,X00BC
	rts
;
	lda	#$C8
	brset	6,X005F,L052B
	jsr	L1E03
	brset	7,X0061,L053A
	brclr	1,X00BA,L050F
	and	#$BF
	ora	#$08
	ora	#$04
	and	#$4E
	brclr	7,X00B5,L051D
	brset	3,X00B5,L051D
	and	#$4A
	brclr	6,X00CE,L0522
	ora	#$30
	brset	4,X00CE,L0528
	brclr	3,X00CE,L052A
	ora	#$10
	inca
	bit	#$04
	beq	L053C
	brset	3,X005D,L0535
	brclr	3,X00BF,L0537
	and	#$F3
	brclr	7,X00BF,L053C
	and	#$FB
	ldx	#$01
	brclr	3,X008E,L0547
	ora	#$02
	and	#$BB
	ldx	#$09
	brclr	0,X0061,L0559
	brclr	1,X0082,L0554
	brset	0,X0082,L0554
	ora	#$80
	bra	L0559
;
	brclr	4,X0069,L0559
	ora	#$40
	sta	X027C
	txa
X155D:
	brclr	6,X005F,L0562
	ora	#$40
	bclr	1,X00BC
	ora	#$80
	brclr	4,X00BF,L0570
L1569:
	brset	7,X00B5,L0570
	bset	1,X00BC
	and	#$7F
	sta	X027D
	lda	#$20
	brclr	2,X00B8,L057D
	brset	6,X005F,L057D
	lda	#$02
L157D:
	ora	#$10
	bset	2,X00B5
	tax
	bclr	3,X00BC
	lda	#$0A
	jmp	L1A21
;
	db	$7B
;
	asl	,x
	brset	0,X005B,L0567
	ldx	X00CD
	sbc	,x
	bclr	3,X005D
	lda	X00B8
	and	#$74
	cmp	#$60
L1599:
	beq	L05D7
	ldx	#$02
	cmp	#$10
	bne	L05A5
	bset	3,X00BF
	bra	L05D3
;
	ldx	#$83
	cmp	#$50
	beq	L05D3
	clrx
	brclr	2,X00B8,L05B4
	brclr	3,X00B8,L05B9
	bra	L05B7
;
	brclr	1,X00B8,L05B9
	ldx	#$04
	and	#$70
	cmp	#$20
	beq	L05CD
	brset	2,X00B8,L05CC
	incx
	cmp	#$30
	beq	L05CD
	incx
	cmp	#$40
	beq	L05CD
	rts
;
	aslx
	aslx
	sec
	rolx
	sec
	rolx
	lda	#$18
	bra	L0621
;
	lda	X0088
	lsra
	sta	X0056
	lda	X0083
	asla
	add	X0056
	ldx	#$70
	jsr	L3786
	jmp	L176F
;
	brclr	3,X00B3,L0591
	clr	X00B6
	brclr	6,X00B3,L0600
	brclr	5,X00B3,L05FA
	ldx	#$09
	clr	X00B3
	bra	L061E
;
	ldx	#$EA
	stx	X00B3
	bra	L0619
;
	bclr	5,X00BC
	bclr	6,X00BC
	bset	3,X0094
	jsr	L1D9B
	ora	#$80
	brset	3,X00B5,L0612
	coma
	and	X0056
	cmp	XBA56
	ldx	X0057
	jsr	L379B
	jsr	L1DD2
	ldx	#$89
	jsr	L1DAF
	sta	X0050
	stx	X0051
	brclr	7,X00D6,L0635
	jsr	L0789
	brclr	3,X0067,L0625
	bclr	3,X0067
	jsr	L36AE
	bra	L0625
;
	lda	X0050
	ldx	X0051
	sta	X027A
	stx	X027B
	bset	7,X00D6
	clr	X00D9
	rts
;
	brclr	3,X00B3,L064E
	brset	7,X00BA,L05CC
	ldx	#$0A
	bra	L05D3
;
	brset	3,X00BF,L0643
	bset	0,X00BC
	brset	6,X00D3,L0658
	bclr	0,X00BC
	lda	X00BC
	and	#$07
	tax
	lda	#$20
	bra	L0621
	jmp	L1B2A
;
	bclr	3,X00BF
	bclr	5,X00BB
	bclr	4,X00BB
	brclr	3,X00B3,L0683
	ldx	#$B1
	jsr	L37C7
	brclr	5,X00B6,L067C
	bit	#$70
	bne	L067E
	jmp	L1D4E
;
	ora	#$70
	sta	X00B8
	brset	2,X00B8,L0683
	bclr	7,X00BF
	lda	X00B8
	and	#$70
	cmp	#$70
	bne	L0690
	jsr	L1D73
	jsr	L1D9B
	bset	0,X0056
	and	X0056
	bset	3,X00B5
	bne	L069F
	bclr	3,X00B5
	bclr	4,X00B5
	bset	3,X00BC
	bclr	1,X00BA
	bset	1,X00BF
	bset	0,X00BF
	lda	#$40
	ldx	#$0C
	brclr	6,X005F,L06B0
	ldx	#$01
	jsr	L1E26
	jmp	L1C2D
;
	brset	2,X00B8,L06BE
	bset	1,X00B8
	bclr	0,X00B8
	cmp	X16B8
	bra	L069F
;
L16C2:
	brset	5,X00B3,L073E
	brclr	3,X00BF,L06CC
	bset	0,X00B3
	bset	1,X00B3
	brset	6,X00B3,L06DB
	brclr	4,X00B3,L0718
	brclr	1,X00BA,L0715
	bclr	1,X00BA
	bset	3,X00BC
	bra	L0715
;
	brclr	6,X00B3,L06E6
	brclr	4,X00B3,L06E6
	bclr	4,X00B3
	bclr	6,X00BF
	cmp	X1CBF
	bclr	6,X00B3
	lda	X00B6
	and	#$07
	cmp	#$06
	bne	L06FD
	ldx	#$B1
	jsr	L37C7
	sta	X00B8
	bclr	7,X00BF
	bra	L0712
;
	cmp	#$04
	bne	L0712
	brset	4,X00B3,L0712
	lda	X00B6
	eor	X00B3
	bit	#$08
	beq	L0712
	jsr	L1AA7
	jmp	L1A19
;
	brclr	4,X00B3,L0718
	bclr	6,X00BF
	rts
;
	brset	7,X00BF,L06A7
	brset	3,X00BF,L06A7
	bset	7,X00BF
X1720:
	jsr	L1A8D
	lda	#$48
	bra	L06A9
	jmp	L1AA7
;
	brclr	3,X00B3,L0732
	bset	7,X00BF
	jmp	L1A9F
;
	brclr	6,X00B9,L0717
	jsr	L1E2A
	lda	#$48
	clrx
	jmp	L1A21
;
	bclr	6,X00BF
	brset	4,X00B3,L074E
	brset	5,X00B6,L0727
	bsr	L0772
	lda	#$FF
	sta	X00C2
L174C:
	bra	L071E
;
	lda	X00BD
	eor	X00B8
	and	#$07
	bne	L075A
	lda	X00BD
	sta	X00B8
	clr	X00C3
	jsr	L1E1D
	lda	X00C1
	cmp	#$95
	bne	L076C
	clr	X00C1
	bset	3,X00BC
	jmp	L1DD2
;
	jsr	L1762
L176F:
	jmp	L1A83
;
	lda	X00B8
L1774:
	sta	X00BD
	ldx	X00C1
	jmp	L1DE1
;
	lda	#$64
	sta	X027C
	lda	#$19
	bclr	6,X00B8
	bclr	5,X00B8
	bclr	4,X00B8
	bset	5,X00BC
	bset	3,X00B5
	bclr	3,X00BB
	brclr	0,X00B6,L0797
	brset	1,X00B6,L0797
	brset	2,X00B6,L0799
	bclr	2,X00BA
	brclr	2,X00C0,L079F
	bclr	2,X00C0
	cmp	X3FBB
	clr	X00C5
	jsr	L1E26
	bset	7,X00BA
	bset	7,X00CB
	bclr	6,X00BC
	brset	3,X00C0,L07B1
	bclr	4,X00C0
	bclr	3,X00C0
	bset	7,X00B5
	bra	L073B
;
	eor	#$11
	coma
	coma
;
	db	$75
;
	lsra
	brset	0,X001B,L078D
	bclr	6,X002D
	ldx	#$C7
	brset	3,X008E,L07CA
	brclr	5,X0069,L07CC
	ldx	#$E7
	bset	7,X00BF
	bra	L077B
;
	ldx	X00B7
	clra
	sta	X027C
	lda	#$11
	bra	L078E
;
	brset	3,X00C1,L07F6
	ldx	#$50
	bset	0,X005B
	cmp	X115B
	lda	#$C1
	bsr	L002D
	ldx	#$86
	brclr	3,X00B6,L07EF
	ldx	#$06
	lda	#$18
	brclr	0,X005B,L0799
	bra	L0782
;
	lda	#$40
	ldx	#$02
	bsr	L002D
	jsr	L1D73
	jmp	L1CA0
	rts
;
	brset	5,X00C1,L001F
	bset	7,X00BF
	jsr	L1D2D
	ldx	#$A0
	brset	2,X00C2,L0017
	lda	#$6C
	brset	1,X00C2,L0019
	ldx	#$20
	lda	#$64
	jmp	L1B7D
	jmp	L1CBA
;
	brset	5,X00B6,L001C
	jsr	L1E1D
	lda	#$92
	ldx	#$10
	bra	L002D
;
	ldx	#$C8
	sta	X00C1
	stx	X00C3
	jmp	L1430
;
	brset	3,X00C1,L07F6
	brset	5,X00C1,L001F
	lda	#$C4
	ldx	#$64
	brset	5,X00B6,L0045
	lda	#$D3
	ldx	#$FF
	bsr	L002D
	bclr	5,X00B5
	brset	3,X00CE,L0056
L184C:
	ldx	#$AC
	jsr	L37C7
	rora
	bcc	L0056
	bset	5,X00B5
	jsr	L1E35
	eor	X00C0
	and	#$03
	eor	X00C0
	sta	X00C0
	lda	X005B
	clrx
	jmp	L1B7D
;
	lda	#$60
	brclr	5,X00C1,L009C
	ldx	#$02
	brset	7,X00B9,L0076
	brset	7,X00BA,L002D
	bset	5,X00BB
	brclr	1,X00BA,L0080
	bclr	1,X00BA
	brclr	6,X00B5,L0080
	bset	3,X00BC
	brclr	3,X005D,L0089
	bclr	3,X005D
	lda	#$82
	sta	X00B3
	lda	#$C0
	brset	3,X00BB,L002B
	jsr	L1DD2
	brset	4,X00BF,L0098
	ldx	#$2D
	bra	L00BC
;
	lda	#$C7
	bra	L002B
;
	ldx	#$1E
	bsr	L002D
	jsr	L1DAF
	ldx	X00B7
	stx	X027D
	beq	L00B2
	brclr	7,X0061,L00B2
	ldx	#$29
	lda	#$1A
	cmp	XAE09
	jmp	L1B8E
;
	jsr	L1774
	ldx	#$23
	lda	#$95
	jmp	L1C2D
;
	dec	X006F,x
	ror	X009C
;
	db	$5E
;
	asra
	brset	0,X0016,L0070
;
	db	$86
;
X18CB:
	brset	2,X00CE,L011E
	brset	7,X00B9,L011E
	jsr	L1DF8
	beq	L00DE
	lda	#$85
	sta	X00B3
	lda	#$04
	sta	X00C2
	rts
;
	lda	#$87
	clr	X00BE
	brset	2,X00CE,L011E
	brset	7,X00B9,L011E
	brset	5,X0080,L00C9
	lda	X007F
X18EE:
	and	#$2B
	cmp	#$02
	bne	L00C9
	brset	2,X00B8,L00DE
	brset	4,X00C0,L00C9
	bset	2,X00BA
	bclr	4,X00BA
	rts
;
L18FF:
	clr	X00C1
	bclr	4,X00B6
	bclr	2,X00BB
	lda	#$87
	brclr	0,X00BA,L010C
	lda	#$D7
	ldx	#$10
	bra	L00BE
;
	brclr	2,X00BE,L0116
	brset	4,X00BA,L0121
	brset	5,X00B6,L0124
	brset	4,X00BF,L00DE
	lda	#$86
	jmp	L1C2B
;
	bclr	5,X00B6
	rts
	jmp	L1B23
;
	brclr	5,X00C1,L012D
	jmp	L180E
;
	lda	#$D3
	ldx	#$FF
	bra	L010E
;
	lda	#$88
	sta	X00B3
	rts
;
	brclr	6,X00BF,L0144
	ldx	#$06
	brclr	2,X00B8,L0141
	aslx
	jmp	L1BE2
;
	brset	5,X00C1,L014E
	lda	#$A1
	ldx	#$30
	jmp	L1C2D
;
	bclr	2,X00BB
	lda	X00B8
	and	#$70
	bne	L015F
	brset	3,X00BF,L015F
	brset	7,X00B6,L015F
	jsr	L1A00
	jsr	L1DD2
	jmp	L1C25
;
	brset	6,X00BF,L016E
	brclr	5,X00C1,L016E
	jmp	L180E
;
	lda	#$C3
	jmp	L1C43
;
	bsr	L017E
	eor	X00B8
	and	#$70
	eor	X00B8
	sta	X00B8
	rts
;
	bsr	L018D
	add	#$B3
	jsr	L37C6
	and	#$70
	cmp	#$70
X1989:
	bne	L018C
	clra
	rts
;
	lda	X00B8
	and	#$03
	brclr	2,X00B8,L019A
	lda	#$04
	brclr	3,X00B8,L019A
	inca
	rts
;
	bsr	L018D
	add	#$BA
	sta	X0057
	jsr	L37C6
	sta	X0056
	lda	X00B8
	jsr	L2525
	jsr	L2572
	rts
;
	lda	X00B8
	asla
	jsr	L2524
	bne	L01B9
	lda	#$07
	deca
	brclr	2,X00B8,L01C2
	brclr	3,X00B8,L01CC
	bra	L01CA
;
	brclr	1,X00B8,L01C7
	add	#$0E
	brclr	0,X00B8,L01CC
	add	#$07
	sta	X027C
	lda	#$19
	rts
;
	clr	X00BD
	bclr	2,X00BB
	ldx	#$B1
	jsr	L37C7
	eor	X00B8
	and	#$0F
	beq	L01EB
	ldx	#$B1
	jsr	L37C7
	brset	2,X00B8,L01E9
L19E9:
	bsr	L01F1
	jsr	L1D7E
	brset	7,X00BB,L01D1
	lda	X00B8
	and	#$7F
	jmp	L379B
;
	lda	#$01
	brset	2,X00B8,L020F
	brset	2,X00BE,L0211
L1A00:
	brset	5,X00B9,L0211
	lda	X00B5
	and	#$4E
	brset	3,X008E,L020D
	brclr	6,X005F,L020F
	and	#$BF
	bit	#$40
	rts
;
	bsr	L01F8
	bne	L0218
	coma
	rts
;
	lda	X00B9
	and	#$38
	rts
;
	lda	X00B6
	beq	L0225
L1A21:
	clr	X00B6
	bset	6,X00CB
	rts
;
	clr	X00B9
	bclr	6,X00B9
	bset	5,X00CB
	bclr	5,X00B9
	bclr	4,X00B9
	clr	X00BE
	bclr	4,X00BA
	rts
;
	clr	X005B
	brset	3,X00B6,L023C
	bset	5,X005B
	brclr	5,X00B5,L0241
	bset	2,X005B
	brclr	2,X00B8,L0248
	bset	7,X005B
	bra	L0259
;
	bset	6,X005B
	lda	X00B7
	cmp	#$41
L1A4E:
	bhi	L0257
	cmp	#$12
	bcs	L0259
	bset	0,X005B
	cmp	X125B
	lda	X005B
	rts
;
	clrx
	lda	X0274
	bsr	L0279
	lda	X0273
	bsr	L0279
	lda	X0272
	bsr	L0279
	lda	#$2E
	sta	X00DE
	lda	#$20
	sta	X00E0
	lda	#$52
	sta	X00E1
	rts
;
	sta	X005B
	bsr	L0282
	lda	X005B
	jsr	L252C
	jsr	L2525
	add	#$30
	sta	X00DA,x
	incx
	rts
	rts
;
	ldx	#$CD
	jsr	L256C
	bne	L02A1
	clra
	sta	X0254
	sta	X0255
	sta	X0256
	bset	4,X009E
L1A9F:
	bra	L02B1
;
	ldx	#$CC
	jsr	L256C
	bpl	L02AA
	bclr	1,X00CB
	bne	L02B3
	dec	,x
	bclr	5,X00C5
	bclr	1,X00CB
	bset	7,X005D
	rts
;
	brset	6,X00C6,L02C9
	brset	5,X00C6,L02CB
	brclr	7,X00C6,L02B3
	brset	2,X00CB,L02C9
	lda	X00CC
	cmp	#$FF
	beq	L02C9
	bclr	7,X00C6
	rts
;
	bset	7,X0050
	lda	X009E
	and	#$F0
	bne	L0344
	lda	X00C6
	and	#$1F
	asla
	sta	X0056
	asla
	add	X0056
	cmp	#$BA
	bne	L02E1
	lda	#$FF
	brclr	5,X00C6,L02EB
	bset	4,X009E
	bset	5,X009E
	bclr	5,X00C6
	rts
;
	tsta
	bmi	L02F0
	bne	L02F5
	brset	1,X00CB,L0344
	beq	L02F7
	sta	X00CC
	clr	X00C6
	lda	X00C7
	bpl	L0345
	brclr	6,X00C7,L035C
	and	#$0E
	tax
	lda	X1F83,x
	sta	X0059
	lda	X1F84,x
	sta	X0056
	lsrx
	lda	X1F93,x
	sta	X0256
	and	#$0F
	beq	L032B
	deca
	sta	X0058
	ldx	X1F82
	stx	X0057
	lda	X1F81
L1B23:
	tsta
	beq	L0328
	bset	0,X0059
	jsr	L2587
	brclr	5,X00C7,L0331
	bset	6,X009E
	cmp	X1E9E
	brclr	7,X0050,L0344
	bclr	2,X00CB
	lda	X00CE
	and	#$07
	cmp	#$06
	bne	L0344
	eor	X00CE
	sta	X00CE
	rts
;
	ldx	#$61
	stx	X0256
	sta	X0257
	cmp	#$70
	bcs	L0331
	and	#$07
	tax
	lda	X1F9B,x
	sta	X0257
	bra	L032E
;
	ldx	X00C8
	and	#$0F
	bit	#$08
	bne	L036B
	bclr	7,X0050
	tstx
	bpl	L036B
	negx
	inca
	jsr	L252C
	sta	X0257
	txa
	and	#$0F
	add	X0257
	sta	X0257
	lda	#$71
	sta	X0256
	bra	L032B
;
	brset	1,X0057,L0384
	eor	X0280
	brset	1,X0057,L038C
;
	db	$9E
;
	brset	1,X0060,L038E
L1B8E:
	brset	0,X0000,L03FD
	brset	1,X0088,L03C6
	asla
	aslx
;
	db	$92
;
	sbc	#$B0
	cmp	X0048,x
	bclr	2,X000E
	brset	0,X0000,L03A0
	brset	0,X0000,L03A3
	brset	6,X0069,L03A9
	brset	0,X0080,L03C2
	lda	#$27
	jsr	L24C5
	cmp	#$D5
	bcs	L03B7
	bset	0,X0080
	bset	6,X0069
	rts
;
X1BB7:
	cmp	#$D2
	bhi	L03C2
	brclr	6,X0069,L03C2
	bclr	6,X0069
	bclr	0,X0080
	rts
;
	jsr	L209C
	brclr	7,X000C,L03D7
	ldx	#$14
	jsr	L204F
	jsr	L2071
	bclr	7,X000C
	lda	#$FF
	sta	X008C
	lda	X001A
	add	#$14
	sta	X001E
	lda	X0013
	clr	X001F
	rts
;
L1BE2:
	bsr	L041B
	bsr	L0431
	lda	#$30
	brclr	6,X005F,L03EF
	lda	#$31
	bset	0,X0001
	sta	X0005
	lda	#$02
	sta	X0006
	rts
;
	brset	2,X0001,L040D
	bset	2,X0001
	ldx	#$08
	bra	L040B
;
	brset	0,X0002,L040D
	bset	0,X0002
	brset	6,X005F,L040D
	bclr	3,X0001
	ldx	#$06
	bsr	L044F
	lda	#$2C
	sta	X000F
	lda	X20C1
	sta	X000D
	lda	X0010
	lda	X0011
	rts
;
	bclr	4,X0061
	bclr	0,X0081
	brset	2,X0012,L0425
	brclr	2,X0001,L042F
L1C25:
	ldx	#$32
	bsr	L044F
	bclr	2,X0001
L1C2B:
	ldx	#$05
L1C2D:
	bsr	L044F
	cli
	rts
;
	lda	#$04
	jsr	L2541
	clr	X000F
	lda	#$07
	sta	X0004
	clr	X0000
	bclr	6,X0001
	bclr	5,X0061
	brclr	0,X0002,L042F
	bclr	0,X0002
	brclr	4,X000C,L0470
	ldx	#$32
	bsr	L044F
	rts
;
	sei
	bclr	7,X008F
	brclr	1,X0002,L0458
	bclr	1,X0002
	cmp	X1202
	jsr	L253F
	decx
	bpl	L0452
	bset	2,X00D6
	bset	4,X005E
	bset	7,X0096
	brclr	0,X0002,L046F
	brclr	7,X008F,L046F
	jmp	L04ED
;
	cli
	rts
;
	ldx	#$90
	lda	#$00
	clr	X004F,x
	sta	X024F,x
	decx
	bne	L0475
	rts
;
	brclr	5,X0005,L049C
	lda	X20B8
	sta	X0004
	lda	X20B9
	sta	X0005
	lda	X20BA
	sta	X0006
	bset	7,X0012
	bset	6,X0012
	bset	5,X0012
	lda	X20C0
	sta	X000C
	rts
;
	clrx
	lda	X20B4,x
L1CA0:
	sta	,x
	incx
	cpx	#$13
	bmi	L049D
	rts
;
	clrx
	lda	X20C7,x
	sta	,x
	incx
	cpx	#$13
	bmi	L04A8
	jmp	L1FD7
;
	stx	,x
	sub	X00FC
	brset	0,X0004,L04B9
L1CBA:
	brclr	7,X0040,L04BD
	bra	L04BF
;
X1CBF:
	brset	0,X00BC,L0482
	brset	0,X002C,L04C5
	brset	0,X00FA,L04C0
	eor	X00FE
	brset	0,X0007,L04FE
	brset	1,X0040,L04D0
	bra	L04D2
;
	brset	0,X00BC,L0495
	brset	0,X002C,L04D8
	brset	0,X00FA,L04E8
	tstx
	asr	X0005
	ldx	X3402
	ldx	X3101
	ldx	X2ECC
	brn	L050A
	lda	X0078
	and	#$07
	ldx	#$81
	cmp	#$04
	bcc	L0514
	cmp	#$01
	bne	L04FA
	bset	4,X00CE
	rts
;
	ldx	#$02
	cmp	#$02
	bne	L0503
	bset	5,X00CE
	rts
;
	bset	3,X00BC
	ldx	#$08
	cmp	XAE01
	bset	0,X0080
	stx	X00D0
	bset	6,X00CE
	bset	7,X0094
	bclr	6,X00B5
	rts
;
	lda	#$48
	sta	X009F
	ldx	#$71
	lda	#$41
	sta	X00CE
	bra	L050A
;
	clrx
	lda	X213B,x
	sta	X0056
	lda	X213A,x
	beq	L0539
	jsr	L2797
	bne	L0522
	ldx	X2139,x
	jsr	L20E9,x						;INFO: index jump
	bclr	6,X005D
	rts
;
	sub	X0000,x
	add	X001F,x
	eor	X002C,x
	brclr	3,X002C,L0543
	lda	#$02
	eor	X0012
	sta	X0012
	bset	3,X0076
	lda	X0014
	sta	X006D
	lda	X0015
	sta	X006E
	brclr	4,X005E,L055B
	brset	1,X0012,L058A
	bra	L0577
;
	sub	X0070
	tax
	lda	X006D
	sbc	X006F
	bit	#$E0
	bne	L0577
	brset	1,X000C,L0574
	brclr	1,X0012,L0574
	sta	X0071
	stx	X0072
	bclr	0,X0076
	bra	L0582
;
	jsr	L21E4
	lda	X006E
	sta	X0070
	lda	X006D
	sta	X006F
	brset	4,X005E,L0588
	brset	5,X0003,L058B
	brclr	1,X0012,L058E
	bclr	4,X005E
	rts
;
	brclr	1,X0012,L058A
	lda	#$02
	eor	X0012
	sta	X0012
	lda	#$10
	add	X006E
	sta	X006E
	bcc	L059E
	inc	X006D
	lda	X0015
	bra	L0553
;
	brclr	3,X0076,L05A8
	bclr	3,X0076
	rts
;
	bset	4,X005E
	bclr	1,X0012
	lda	X0015
	lda	#$20
	add	X0076
	ora	#$40
	and	#$DF
	sta	X0076
	brclr	5,X0003,L05D8
	brset	7,X0001,L05CC
	lda	X005E
	sub	#$20
	bcs	L05C6
	sta	X005E
	bmi	L05FA
	bclr	6,X005E
	bra	L05D5
;
	brset	2,X0076,L05ED
	bset	2,X0076
	bset	1,X0076
	bra	L05ED
;
	brclr	0,X0061,L05FA
	lda	#$14
	clrx
	stx	X0071
	sta	X0072
	bset	0,X0076
L1DE1:
	brclr	0,X0061,L05E9
	brclr	7,X0001,L05E9
	bclr	2,X0076
	sta	X0073
L1DEB:
	stx	X0074
	bset	4,X0076
	brset	7,X0001,L05FA
	lda	#$20
	add	X005E
	bcs	L05FA
L1DF8:
	sta	X005E
	lda	#$20
	add	X0076
	sta	X0076
	and	#$60
	cmp	#$60
	bne	L0622
	brset	7,X0076,L060E
	brset	0,X0061,L0613
	bclr	6,X0076
	bclr	7,X0001
	bset	4,X005E
L1E12:
	rts
;
	lda	#$24
	sta	X0009
	brclr	7,X0009,L0617
	lda	X0008
	sta	X0075
	bset	7,X0001
	bset	4,X005E
	rts
;
	clra
	brset	0,X0061,L062A
	brclr	2,X005F,L0687
L1E2A:
	brclr	4,X0076,L0689
	bclr	4,X0076
	sei
L1E30:
	lda	X0073
	sta	X0050
	lda	X0074
	sta	X0051
	lda	X0071
	sta	X0052
	lda	X0072
	sta	X0053
	cli
	brset	7,X0076,L06BC
	clra
	brclr	2,X005F,L0687
	clrx
	jsr	L239D
	jsr	L239B
	ldx	#$03
	lda	X0050,x
	add	X02A0,x
	sta	X02A0,x
	sta	X0056,x
	lda	X004F,x
X1E5D:
	adc	X029F,x
	sta	X029F,x
	sta	X0055,x
	decx
	decx
	bpl	L0651
	jsr	L24F2
	clrx
	jsr	L23C1
	bcs	L067F
	ldx	#$09
	jsr	L232C
	lda	#$1A
	jsr	L234D
	sta	X02A5
	lda	X02A5
	ldx	X000B
	jsr	L237C
	sta	X000B
	rts
;
	clra
L1E8B:
	sta	X02AA
	ldx	#$0D
	jsr	L239D
	lda	X0075
	add	X02AE
	sta	X02AE
	clra
	adc	X02AD
	sta	X02AD
	lda	X02AE
	ldx	X02AD
	rorx
	rora
	rorx
	rora
	rorx
	rora
	ldx	#$0B
	jsr	L23C2
	bcs	L0700
	ldx	#$19
	jsr	L232C
	bra	L06F0
;
	brset	2,X0076,L068A
	ldx	#$06
	jsr	L239D
	jsr	L239B
	ldx	#$03
	lda	X0050,x
	add	X02A6,x
	sta	X02A6,x
	sta	X0056,x
	lda	X004F,x
	adc	X02A5,x
	sta	X02A5,x
	sta	X0055,x
	decx
	decx
	bpl	L06C9
	jsr	L24F2
	ldx	#$06
	jsr	L23C1
	bcs	L0700
	ldx	#$0F
	jsr	L232C
	lda	#$24
	jsr	L234D
	sta	X02AB
	lda	#$2A
	jsr	L234D
	sta	X02AC
	brclr	0,X0061,L072B
	lda	X02AB
	ldx	X000A
	jsr	L237C
	sta	X000A
	lda	X02AC
	ldx	X006C
	jsr	L237C
	tax
	brset	1,X0076,L0725
	lda	X02AC
	sub	X006C
	bcc	L0721
	nega
	and	#$FC
	beq	L072B
	bclr	1,X0076
	stx	X006C
	bset	1,X005D
	rts
;
	lda	#$05
	sta	X0050
	clr	X0056
	lda	X0100,x
	cmp	X0052
	bcc	L0742
	sta	X0056
	decx
	dec	X0050
	bpl	L0732
	lda	#$FF
	sub	X0056
	sta	X0051
	lda	X0052
	sub	X0056
	sta	X0052
	rts
;
	add	X0050
	tax
	clr	X005A
	lda	X0050
	cmp	#$05
	beq	L0763
	lda	X0101,x
	sta	X005A
	lda	#$FF
	tst	X0050
	bmi	L0766
	lda	X0100,x
	sub	X005A
	tax
	lda	X0052
	mul
	sta	X0059
	stx	X0058
	clr	X0057
	lda	X0051
	sta	X0056
	jsr	L24F2
	add	X005A
	rts
;
	stx	X0056
	sub	X0056
	beq	L0797
X1F82:
	bcs	L078E
X1F84:
	ldx	#$01
	cmp	#$10
	bcs	L0796
	ldx	#$08
	bra	L0796
;
	ldx	#$FF
	cmp	#$F0
	bhi	L0796
	ldx	#$F8
	txa
	add	X0056
	rts
	rts
;
X1F9B:
	incx
	incx
	lda	X02A0,x
	sta	X0056
	lda	X02A1,x
	lsr	X0056
	rora
	lsr	X0056
	rora
	lsr	X0056
	rora
	sta	X0057
	lda	X02A1,x
	sub	X0057
	sta	X02A1,x
	lda	X02A0,x
	sbc	X0056
	sta	X02A0,x
	rts
;
	coma
	sta	X0052
	brset	1,X0076,L07D1
	sub	X02A4,x
	bcc	L07CD
	nega
	cmp	#$02
	bcs	L07D8
	lda	X0052
	sta	X02A4,x
	cmp	#$00
	rts
;
	ldx	X00CC
	cpx	#$FF
	bne	L07E1
	bclr	5,X00C5
	ldx	#$80
	brset	0,X00CB,L07EA
L1FE6:
	brclr	6,X00C6,L07FC
	rts
;
	ldx	#$5F
	cmp	XAE20
	bclr	5,X00C5
	bra	L07FC
;
	ldx	#$4C
	cmp	XAE50
	clr	X00CC
	bset	3,X00CC
	bclr	0,X00CB
	stx	X00C6
	sta	X00C7
	rts
;
	eor	X0250,x
	beq	L0010
	eor	X0250,x
	sta	X0250,x
	bset	5,X00C6
	incx
	rts
;
	clrx
	lda	#$00
	bsr	L0003
	cpx	#$06
	bne	L0013
L201B:
	rts
;
	ldx	#$01
	bsr	L0003
	lda	X0056
	ora	#$40
	brclr	5,X0069,L0028
	clra
	brset	2,X00B8,L0030
	brclr	6,X00B5,L0030
	ora	#$04
	bsr	L0015
	clrx
	lda	#$00
	bra	L0003
;
	sta	X0056
	bsr	L0041
	tax
	lda	X0056
	jsr	L252C
	jsr	L2525
	cmp	#$0A
	bcs	L004A
	add	#$07
	add	#$30
	rts
;
	lda	#$68
L204F:
	cmp	XA670
	cmp	XA660
	cmp	XA678
	cmp	XA680
	deca
	sta	X0056
	ldx	#$07
	stx	X0057
	ldx	X0056
	lda	X25B3,x
	dec	X0056
	ldx	X0057
	sta	X0257,x
	dec	X0057
	bpl	L0062
	rts
;
	brset	1,X00CB,L0081
	inc	X00CC
	tst	X00CC
	beq	L007F
	dec	X00CC
L207E:
	rts
;
	dec	X00CC
	cmp	#$03
	bne	L008E
	lda	#$39
	brclr	6,X00D2,L00A8
	lda	#$36
	bra	L00A8
;
	cmp	#$01
	bne	L0097
	brclr	5,X00BB,L00C4
	bset	3,X0094
	brclr	6,X00B5,L009F
	brset	2,X00B8,L009F
	ora	#$08
	brclr	3,X008E,L00A4
	ora	#$10
	sta	X00D5
	bra	L00B4
;
	ora	#$40
	eor	X00D5
	and	#$7F
	beq	L00C4
	eor	X00D5
	sta	X00D5
X20B4:
	brclr	0,X0061,L00BB
	brclr	3,X00CE,L00C0
X20BA:
	clra
	brclr	3,X008E,L00C0
	ora	#$10
X20C0:
	bset	7,X00D5
	bset	1,X0094
	rts
;
	tax
	lda	#$04
	sta	X0056
	clr	X0057
	clra
	bms	L00D8
	sei
	stx	X0009
	brclr	7,X0009,L00D2
	cli
	bra	L00DD
;
	stx	X0009
L20DA:
	brclr	7,X0009,L00DA
	add	X0008
	bcc	L00E3
	inc	X0057
	dec	X0056
	bne	L00CD
	lsr	X0057
L20E9:
	rora
	lsr	X0057
	rora
	adc	#$00
	sta	X0056
	rts
;
	clrx
	sec
	rolx
	bcs	L0121
	lsr	X0056
	ror	X0057
	lda	X0059
	sub	X0057
	sta	X0059
	lda	X0058
	sbc	X0056
	sta	X0058
	bcc	L00F3
	clc
	rolx
	bcs	L0121
	lsr	X0056
	ror	X0057
	lda	X0059
	add	X0057
	sta	X0059
	lda	X0058
	adc	X0056
	sta	X0058
	bcc	L0109
	bra	L00F3
;
	txa
	rts
;
	lsra
	lsra
	lsra
	lsra
	lsra
	lsra
	rts
;
	asla
	asla
	asla
	asla
	asla
	asla
	rts
;
	sta	X0050
	bra	L013A
;
	jsr	L0789
	bsr	L013F
X213A:
	dec	X0050
	bpl	L0135
	rts
;
	lda	#$14
	add	X001A
L2143:
	tst	X001B
	bih	L0149
	bset	7,X008F
	cmp	X001A
	bpl	L0145
	rts
;
	lda	#$85
	cmp	XA621
	deca
	bne	L0153
	rts
;
	lda	X2564,x
	sta	X0064
	lda	X2565,x
	sta	X0065
	clr	X0066
	rts
;
	inc	,x
;
	db	$52
;
	rol	X00EB,x
	bmc	L016A
	clr	,x
	sub	X007C,x
	beq	L0170
	dec	,x
	dec	,x
	rts
;
	and	#$07
	tax
	clra
	sec
	rola
	decx
	bpl	L0177
	rts
;
	lda	#$80
	bit	,x
	bne	L0184
	lsra
	bne	L017E
	eor	,x
	sta	,x
	rts
;
	ldx	X0056
	inc	X0056
	lda	,x
	brclr	1,X0059,L0192
	lda	X0200,x
	ldx	X0057
	inc	X0057
	brclr	0,X0059,L019D
	sta	X0200,x
	cmp	X00F7
	dec	X0058
	bpl	L0187
L21A2:
	rts
;
	clrx
	tsta
	bpl	L01B2
	ldx	#$07
	asla
	asla
	bmi	L01B2
	lsrx
	asla
	bmi	L01B2
	lsrx
	rts
;
	lsrx
;
	db	$41
;
	bra	L01D7
	bra	L01EA
	bra	L01DB
;
	asra
;
	db	$41
;
	inca
;
	db	$41
;
	bra	L01F2
	bra	L01E3
;
	rorx
	clra
	inca
	bra	L01E8
;
	db	$31
;
	bra	L01EB
;
	comx
;
	db	$45, $4E
;
	comx
	bra	L0215
;
	aslx
	bra	L0226
;
	tsta
	bra	L01F7
	bra	L0228
;
	db	$4E
;
	bra	L022A
;
	db	$41
;
	rorx
	bra	L0200
;
	db	$31
;
	bra	L0203
;
	lsrx
;
L21E4:
	db	$45
;
	inca
	bra	L0208
;
	db	$52
;
	bra	L020B
;
	asra
;
	db	$41
;
	inca
;
	db	$41
;
	bra	L0240
;
	rora
	rora
	comx
;
	db	$45, $4E
;
	comx
	bra	L0245
;
	clra
	bra	L024E
;
	tsta
	bra	L021F
	bra	L0250
;
	rora
	rora
	lsrx
;
	db	$45
;
	inca
	bra	L0228
;
	inca
	bra	L022B
;
	db	$45, $31
;
	bra	L025F
;
	com	X003A
	neg	X0030
	coma
	lsra
;
	db	$31
;
	bra	L025D
;
	db	$52, $52, $31, $4E
;
	clra
	bra	L0262
;
	clra
	lsra
;
	db	$45
;
	bra	L0276
;
	neg	X0020
	neg	X0030
	dec	X0020
	bra	L0272
;
	db	$41
;
	lsra
	bra	L027F
;
	rora
	rora
	bra	L0273
;
	ora	XA60A
	sta	X00CF
	lda	#$05
	sta	X00CE
	rts
;
	ldx	#$D1
	jsr	L256C
	bne	L0247
	bclr	7,X00D2
	ldx	#$CF
	jsr	L256C
	bne	L023D
	brclr	3,X00CE,L0253
	bset	7,X005D
	brclr	2,X00CE,L02CF
	lda	X00CE
	and	#$F8
	sta	X00CE
	lda	#$0A
	brset	7,X0060,L02C5
	lda	#$08
	brclr	3,X008B,L02C5
	tst	X00CE
	beq	L029B
	brset	7,X00CE,L02C5
	brset	2,X00CE,L0290
	brclr	1,X00CE,L027C
	lda	#$01
	brclr	0,X00CE,L02B6
	lda	#$04
	bra	L02B6
;
	brset	5,X00CE,L0287
	brclr	6,X00CE,L029B
	lda	#$05
	brset	0,X00CE,L02C5
	lda	#$09
	brclr	6,X0067,L02B6
	bset	7,X005D
	bra	L02B6
;
	brclr	1,X00CE,L029B
	brset	2,X00CB,L029B
	lda	#$06
	brclr	0,X00CE,L02B4
	lda	#$01
	brset	3,X00CE,L02B6
	lda	#$06
	brset	6,X007F,L02B6
	brset	3,X007F,L02B6
	lda	#$04
	brset	5,X007F,L02B4
	lda	X007F
	coma
	and	#$03
	beq	L02B6
	ora	#$40
	brset	5,X007F,L02C5
	sta	X0056
	lda	X007F
	coma
	and	#$03
	jsr	L252C
	add	X0056
	eor	X00CA
	beq	L02CF
	eor	X00CA
	sta	X00CA
	bset	7,X005D
	rts
	rts
;
	lda	X007A
	beq	L0335
	dec	X0079
	bne	L0335
	clr	X007A
	bra	L032D
;
	brset	1,X0077,L02FD
	brclr	4,X0077,L0301
	lda	X0078
	and	#$1F
	beq	L02FD
	sta	X007A
	lda	X0077
	and	#$E0
	add	X007A
	sta	X007A
	jsr	L2524
	tax
	lda	X2735,x
	sta	X0079
	cmp	X3F7A
	clr	X0077
	brclr	6,X009F,L0335
	brset	6,X005D,L0335
	lda	X007A
	beq	L0319
	brclr	7,X009F,L0311
	bclr	6,X009F
	rts
;
	clr	X007A
	and	#$1F
	ora	#$C0
	bra	L032D
;
	bclr	6,X009F
	lda	X009F
	bpl	L0323
	eor	#$90
	bra	L032D
;
	tax
	lda	X2769,x
	brclr	5,X0069,L032D
	lda	X273B,x
	sta	X0078
	cmp	#$01
	beq	L0335
	bset	6,X005D
	rts
;
	bclr	4,X000A
;
	db	$4B
;
	bcs	L036D
	brset	0,X00E1,L0320
	cpx	X00E4,x
	bit	X00E6,x
	sta	X0007,x
	adc	X0001,x
	brclr	0,X0001,L0336
	brclr	6,X0009,L0356
	lda	,x
L234D:
	brclr	0,X00F3,L035C
	bit	,x
	brclr	0,X00F7,L034C
	adc	,x
	ora	,x
	add	,x
	jmp	,x						;INFO: index jump
;
	jsr	,x						;INFO: index jump
	ldx	,x
	brset	3,X00EA,L035E
	brset	1,X000F,L036F
	brclr	1,X00FF,L0357
	brset	4,X00EE,L0355
	sub	,x
	cmp	,x
	sbc	,x
	brset	0,X00E1,L034E
	cpx	X00E4,x
	bit	X00E6,x
	sta	X00E8,x
	adc	X0004,x
	add	X00EC,x
	jsr	L000D,x						;INFO: index jump
	brclr	4,X000A,L0371
	brclr	2,X00F3,L038A
	bit	,x
	brclr	5,X00F7,L037A
	adc	,x
	ora	,x
	add	,x
	jmp	,x						;INFO: index jump
;
	jsr	,x						;INFO: index jump
	ldx	,x
	brset	3,X00EA,L038C
	brset	1,X000F,L039D
	brclr	1,X00FF,L0385
	brset	4,X00EE,L0383
	sub	,x
	cmp	,x
	sbc	,x
	incx
	incx
	cmp	X0078
L239B:
	beq	L03BD
L239D:
	cmp	#$1F
	bne	L03A7
	eor	X0078
	and	#$F0
	bra	L03BD
;
	bit	#$E0
	beq	L03BA
	bit	#$1F
	bne	L03BA
	eor	X0078
	beq	L03BA
	cmp	#$06
	bhi	L03BA
	bit	#$00
	rts
;
	lda	#$01
	rts
	rts
;
	brset	6,X005F,L043D
L23C1:
	brclr	1,X00BC,L03D9
	brset	7,X00B9,L03D9
	brset	7,X00B3,L03D9
	brclr	2,X00CE,L03D3
	brset	1,X00CE,L03D3
	brclr	0,X00CE,L03D9
	lda	#$27
	sta	X00B3
	bclr	1,X00BC
L23D9:
	brclr	5,X00CB,L0400
	lda	X00D5
	and	#$70
	bne	L0400
	lda	X00D5
	and	#$07
	beq	L0400
	cmp	#$06
L23EA:
	bcc	L0400
	clra
	brset	3,X00CE,L03F3
	brclr	6,X00B5,L03F5
L23F3:
	lda	#$08
	eor	X00D5
	and	#$08
	beq	L0400
	eor	X00D5
	jsr	L249F
	bclr	6,X00D2
	lda	X00B6
	and	#$07
	cmp	#$06
	bne	L040C
	bset	6,X00D2
	lda	X007F
	and	#$2B
	cmp	#$02
L2412:
	bne	L043D
	brset	5,X00CE,L0423
	lda	X00CA
	and	#$0F
	cmp	#$01
	beq	L0423
	cmp	#$06
	bne	L043D
	brset	5,X00CB,L042E
	brset	6,X00CB,L042E
	brclr	7,X00CB,L0434
	bset	2,X00CB
	bset	7,X005D
	bclr	5,X00CB
	bclr	6,X00CB
	brset	6,X00CE,L043D
	brclr	6,X005D,L043D
	jmp	L2BDF
	rts
;
	lda	X00B8
	and	#$60
	cmp	#$60
	bne	L044E
	lda	X00B8
	and	#$0F
	ora	#$10
	bra	L0464
;
	lda	#$10
L2450:
	bra	L045A
;
	lda	X00B8
	and	#$60
	beq	L045E
	lda	#$F0
	add	X00B8
	bra	L0469
;
	lda	X00B8
	and	#$0F
	ora	#$60
	brset	2,X00B8,L0469
	eor	#$01
	ora	#$80
	bra	L0498
;
	lda	X00B8
	brset	2,X00B8,L0477
	and	#$03
	inca
	bra	L0496
;
	lda	#$08
	brclr	3,X00B8,L0494
	clra
	bra	L0496
;
	lda	X00B8
L2481:
	brset	2,X00B8,L048C
	asla
	asla
	eor	X00B8
	and	#$08
	bra	L0492
;
	lsra
	lsra
	eor	X00B8
	and	#$02
	ora	#$04
	eor	X00B8
	ora	#$F0
	sta	X00B4
	lda	#$80
	bra	L04F5
	bra	L0452
	bra	L043E
	bra	L046D
	bra	L047F
;
	brset	2,X00B8,L04A4
	brset	5,X0069,L04CC
	lda	#$01
	bra	L0494
;
	brclr	2,X00B8,L04B8
	bset	4,X00B3
	bset	5,X00B3
	rts
;
	brclr	4,X00CE,L04A4
	lda	#$30
	jmp	L2976
	jmp	L2A1F
;
	brset	2,X00B6,L04CC
	brset	3,X008E,L04DC
	brclr	2,X00B8,L04E3
	rts
;
	lda	#$19
	brset	1,X00B5,L04D4
	lda	#$18
	jsr	L23F3
	lda	#$61
	jmp	L2962
;
	bset	6,X00C5
	lda	#$63
	jmp	L2964
	jmp	L299C
;
	bset	7,X00D2
	ldx	#$FA
	stx	X00D1
	bra	L0522
;
	lda	#$A4
	brclr	5,X00B6,L04F5
	lda	#$B4
	bclr	7,X00D2
	bra	L0562
;
	lda	#$86
	sta	X00B3
	bclr	7,X00D2
	bset	2,X00CB
	rts
;
	lda	#$08
	brset	2,X00B8,L0519
	ldx	#$D4
	jsr	L37C7
	sta	X005B
	lda	X00B8
	jsr	L379B
	eor	X005B
	and	#$01
	ora	#$02
	jmp	L2894
;
	bset	7,X00D2
	bra	L0525
;
	bset	7,X00D2
	lda	#$C4
L2524:
	cmp	XA6CC
	brclr	7,X00D2,L04E3
	ldx	#$FA
L252C:
	stx	X00D1
	bra	L0547
;
	brset	7,X00D2,L0560
	lda	#$D4
	bra	L053C
;
	brset	7,X00D2,L0560
	lda	#$DC
	bclr	4,X00BB
	bclr	5,X00BB
	bra	L0562
;
	lda	#$C4
	cmp	XA6CC
	brset	3,X005D,L0578
	bclr	4,X00BB
	bclr	5,X00BB
L254E:
	brclr	7,X00D2,L0553
L2551:
	ora	#$07
	sta	X00B3
	bset	2,X00CB
L2557:
	brclr	7,X00D2,L0574
	ldx	#$FA
	stx	X00D1
	bra	L0574
;
	lda	#$94
	bset	2,X00CB
X2564:
	bset	5,X00D2
	sta	X00B3
	jmp	L2A15
;
	lda	#$8A
	jsr	L2A41
	bclr	5,X00D2
L2572:
	bset	7,X007E
	lda	#$90
	sta	X0077
	rts
;
	bset	5,X007E
	brclr	5,X00D2,L0578
	bclr	1,X00CB
	lda	#$80
	jsr	L2A41
	bra	L05AC
;
L2587:
	clrx
	bset	5,X00D2
	brset	2,X00BA,L0599
	brset	3,X00CE,L0599
	brset	4,X00B6,L059C
	brclr	7,X00BA,L059C
	brclr	2,X00B6,L059C
	jmp	L2A06
;
	brclr	5,X00B6,L05A2
	lda	#$B4
	cmp	XA642
	sta	X00B3
	bset	4,X00CC
	lda	#$B0
	bra	L0576
;
	lda	#$27
	jsr	L24C5
	cmp	#$19
X25B3:
	bcc	L05BF
	bset	3,X005D
	lda	X00B4
	and	#$74
	cmp	#$60
	beq	L05D0
	brclr	3,X0081,L05CB
	bclr	3,X0081
	ldx	#$A8
	jsr	L37C7
	sta	X0085
	brclr	3,X005D,L05E4
	bra	L060B
;
	ldx	#$82
	eor	X00B8
	and	#$74
	beq	L0602
	bclr	3,X005D
	bset	3,X007E
	bset	3,X0081
	lda	X0088
	nega
	lsra
	sta	X0085
	brset	3,X008E,L060B
	lda	X00B4
	and	#$7F
	cmp	X00B8
	bne	L060B
	brclr	2,X00CE,L060B
	brset	1,X00CE,L060B
	brset	0,X00CE,L060B
	jsr	L1D9B
	and	X0056
	beq	L060B
	bclr	7,X00B5
	cmp	XBFB3
	bra	L060B
;
	lda	#$80
	jsr	L2A41
	bset	2,X00CE
	bclr	1,X00CE
	bclr	0,X00CE
	lda	#$7D
	sta	X00CF
	brclr	3,X00CE,L061E
	bclr	1,X00CE
	lda	#$32
	sta	X00CF
	rts
;
	brset	5,X00D2,L0630
	bset	5,X00D2
	brclr	4,X00BB,L062B
	lda	#$C2
	bra	L063E
;
	lda	#$01
	sta	X00CC
	rts
;
	lda	X00CC
	cmp	#$FF
	bne	L062B
	bclr	5,X00D2
	lda	X00B7
	sta	X00C8
	lda	#$C0
L263E:
	jmp	L23F6
;
	sta	X00B3
	bset	2,X00CB
	bclr	7,X00D2
	lda	X0078
	jsr	L252C
	eor	X00B8
	and	#$70
	eor	X00B8
	ora	#$80
	sta	X00B4
	brclr	5,X0069,L065B
	bclr	0,X00B4
	rts
;
L265C:
	brclr	3,X00CE,L0662
	jmp	L2AE3
;
	brset	7,X00B9,L068B
	brclr	7,X00BA,L066B
	brset	2,X00B6,L068B
	brclr	3,X008E,L068B
	brclr	7,X00C5,L068B
	brclr	4,X00B5,L068B
	brclr	6,X00C5,L068B
	bclr	6,X00C5
	bset	5,X00C5
	lda	X00C5
	and	#$1F
	jsr	L24A8
	lda	X00C5
	and	#$1F
	add	#$23
	jmp	L23F6
;
	lda	#$01
	brclr	4,X00BB,L0694
	brclr	3,X00B5,L0694
	inca
	brset	7,X00B9,L069D
	brclr	7,X00BA,L069F
	brclr	2,X00B6,L069F
	lda	#$03
	jsr	L2473
	lda	#$13
	brset	6,X00D2,L06D9
	brclr	3,X00B5,L06C3
	brclr	7,X00BA,L06B0
	brset	2,X00B6,L06C3
	brclr	4,X00CE,L06BE
	brset	6,X00BB,L06B9
	brclr	0,X00BB,L06C3
	lda	#$CE
	jmp	L23D9
;
	lda	#$C2
	brset	4,X00BB,L06BB
	brclr	5,X00BB,L06E2
	clra
	brclr	2,X00B8,L06D1
	ora	#$10
	brclr	3,X008E,L06D1
	ora	#$20
L26D1:
	sta	X00C9
	lda	X00B7
	sta	X00C8
	lda	#$C0
	brclr	7,X00CB,L06DF
	jmp	L23EA
	jmp	L23D9
	rts
;
	brset	6,X005F,L0734
	brclr	2,X00B6,L06F0
	jsr	L2A15
	lda	#$70
	bra	L06D9
;
	lda	X00CF
	deca
	brset	1,X00CE,L071E
	brclr	0,X00B9,L0701
	brset	6,X00BB,L06FE
	bmi	L0716
	brset	2,X00BF,L0716
	bpl	L0711
	lda	#$32
	sta	X00CF
	lda	#$D4
	brclr	3,X00B6,L070E
	lda	#$DC
	jmp	L2962
;
	brclr	5,X00D2,L06AA
	bra	L06EC
;
	lda	#$0A
	sta	X00CE
	lda	#$7D
	sta	X00CF
	bpl	L06AA
	lda	#$4B
	sta	X00CF
	ldx	#$04
	jsr	L2557
	bset	6,X005F
	lda	X00B7
	sta	X00C4
	lda	#$15
	jmp	L23EA
;
	lda	X00CF
	deca
	bpl	L072F
	bclr	0,X0061
X273B:
	bset	2,X005D
	rts
	jmp	L2412
;
	bclr	7,X00CB
	brset	6,X005F,L073E
	brclr	7,X0069,L073E
	lda	X00B8
	brset	2,X00B8,L076E
	and	#$07
	tax
	lda	X2BDA,x
	brclr	5,X0069,L0759
	and	#$0C
	brclr	7,X00BA,L075F
	brset	2,X00B6,L0762
	brclr	3,X00B5,L0764
	ora	#$02
	brset	3,X008E,L0775
	brclr	1,X00BB,L0775
	ora	#$01
	bra	L0775
;
	lda	#$18
	brclr	3,X00B8,L0775
	lda	#$1C
	clrx
	jsr	L2403
	brset	3,X00CE,L0781
	lda	X00BD
	brset	2,X00BB,L0783
	lda	X00B8
	and	#$70
	brclr	7,X00B9,L0789
	clra
	jsr	L2525
	jsr	L2403
	lda	#$02
	brset	2,X00B8,L07B8
	lda	#$08
	brclr	7,X00BA,L079C
	brset	2,X00B6,L079F
	brclr	3,X00B5,L07A1
	ora	#$01
	brset	3,X00CE,L07A7
	brclr	6,X00B5,L07A9
	ora	#$04
	brclr	3,X008E,L07B1
	brclr	4,X00B5,L07B1
	ora	#$04
	brclr	1,X00B8,L07BD
	ora	#$20
	bra	L07BD
;
	brclr	3,X00B8,L07BD
	ora	#$20
	brclr	5,X00B6,L07C2
	ora	#$10
	brclr	5,X0069,L07C7
	and	#$2F
	jsr	L2403
	clra
	incx
	brclr	2,X00BB,L07D6
	lda	X00BD
	and	#$70
	jsr	L2525
	jsr	L2403
	rts
;
	asla
	bhcc	L0029
	bmc	L0760
	clrx
	brclr	3,X00CE,L07E5
	ldx	#$52
	lda	X2BFC,x
	sta	X0056
	lda	X2BFB,x
	beq	L07FA
	jsr	L2797
	bne	L07E5
	ldx	X2BFA,x
	jsr	L289E,x						;INFO: index jump
	rts
;
	sub	X00E9,x
	sub	#$CD
	rti
;
	sbc	XC0DB,x
	stx	,x
	brset	0,X00F4,L0009
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
	adc	X0098
	adc	X00A7
;
	db	$82
;
	eor	X007E
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
	adc	X009D
	adc	X00BC
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
	stx	X0087,x
;
	db	$90
;
	adc	X008F
	adc	X00B0
;
	db	$82, $AF, $7E
;
	sub	X92CF,x
	sec
	brclr	5,X0050,L0035
;
	db	$45
;
	bit	X005B
	bit	X6408,x
	brset	2,X00F6,L005B
	lda	X2236,x
	brset	3,X00E7,L07E4
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
	stx	X009C,x
	bit	,x
	lsr	X00E0,x
	sbc	X00F7,x
	brset	4,X0000,L006F
	neg	X001F,x
	brclr	3,X008B,L0082
	lda	#$48
	brset	2,X00BE,L006D
	lda	#$08
	brset	3,X005F,L0085
	lda	#$40
	brset	4,X00BA,L0085
	brset	2,X00BE,L0085
	lda	#$04
	brset	7,X005F,L008C
	lda	#$80
	brset	2,X00BA,L008C
	clra
	bra	L008C
;
	brclr	5,X00CB,L008C
	bclr	5,X00CB
	bset	7,X005D
	eor	X007F
	and	#$CC
	sta	X005B
	eor	X007F
L2894:
	sta	X007F
	and	#$60
	bne	L00A6
	brclr	4,X007F,L00A6
	bclr	4,X007F
	ldx	#$A8
	jsr	L37C7
	sta	X0085
	brclr	0,X0061,L0106
	tst	X005B
	beq	L00D4
	bset	7,X005D
	bset	0,X00CB
	bset	3,X007E
	bset	2,X00CB
	brset	3,X00CE,L0107
	brclr	3,X005B,L00C3
	bset	7,X005D
	bset	0,X00CB
	bset	4,X00B3
	bclr	7,X00D2
	brclr	6,X005B,L00D4
	bset	7,X005D
	brset	6,X007F,L00D4
	ldx	#$A8
	jsr	L37C7
	sta	X0085
	bra	L00D4
;
	brclr	5,X007C,L0107
	brset	6,X007C,L00F3
	brclr	2,X0069,L0107
	bclr	2,X0069
	bclr	2,X00D2
	bclr	4,X00D3
	ldx	#$A5
	jsr	L379B
	brset	1,X007F,L0107
	brclr	0,X007F,L0107
	brset	2,X0081,L0103
	bra	L0121
;
	brset	2,X0069,L0107
	bset	2,X0069
	bset	2,X0081
	brclr	1,X007F,L00FF
	bclr	2,X0081
	bset	2,X00CB
	bset	4,X00B3
	jmp	L2E5F
	rts
;
	lda	X007F
	brset	0,X0080,L0110
	bit	#$EA
	beq	L015A
	bit	#$03
	bne	L0124
	brclr	1,X00D2,L0169
	brset	0,X00D2,L0169
	bset	0,X00D2
	ldx	#$88
	jmp	L2DCF
	jmp	L2E1A
;
	brclr	0,X007F,L0166
	brclr	2,X00D2,L01A8
	brset	5,X007F,L0166
	brclr	3,X005F,L0133
	brset	1,X007C,L01A8
	brset	7,X00D3,L01A8
	bset	7,X00D3
	bclr	2,X00D3
	brclr	3,X006A,L013F
	bset	2,X00D3
	bclr	1,X00D3
	brclr	1,X007C,L0155
	bset	1,X00D3
	bset	0,X00D3
	brclr	0,X007C,L0150
	brset	2,X007C,L0155
	bra	L0153
;
	brclr	2,X007C,L0155
	bclr	0,X00D3
	lda	#$88
	jmp	L2E0E
;
	brclr	3,X008B,L0166
	brset	7,X0060,L0166
	lda	X00CE
L2962:
	and	#$C8
L2964:
	beq	L0172
	brset	1,X00D2,L01CB
	brset	2,X00D2,L016F
	brclr	3,X007C,L01A8
	jmp	L2E08
;
	brclr	0,X007F,L0189
	brset	1,X00D2,L01CB
	brclr	6,X007C,L01A8
	brset	4,X007C,L01A8
	brclr	2,X00D2,L01D5
	brset	7,X00D3,L01D5
	bra	L01A8
	jmp	L2CDD
;
	brset	2,X00D2,L0208
	brset	3,X007C,L0208
	brclr	6,X006A,L0121
	lda	X0265
	and	#$F0
	cmp	#$B0
	beq	L01A2
	brclr	3,X00D4,L01A2
	bclr	3,X00D4
	bra	L01BC
;
	brclr	1,X00D2,L01BC
	brset	0,X00D2,L01BC
	bclr	5,X0080
	lda	X0085
	bne	L01B0
	bset	5,X0080
	brclr	6,X005D,L0228
	brclr	3,X008B,L0228
	brset	0,X0080,L0228
	jmp	L3012
;
	bset	1,X00D2
	bclr	0,X00D2
	bset	4,X00B3
	ldx	#$8D
	brclr	2,X00D4,L01CF
	ldx	#$83
	bra	L01CF
;
	ldx	#$80
	bclr	1,X00D2
	stx	X007D
	bset	6,X0094
	bra	L021E
;
	bset	2,X00D2
	bset	4,X00B3
	bclr	1,X007F
	bset	0,X007F
	brset	3,X00D3,L01ED
	bset	3,X00D3
	lda	#$8C
	brset	4,X00D3,L020E
	lda	#$8D
	bset	0,X007C
	bra	L020E
;
	lda	#$8F
	brclr	7,X00D3,L020E
	bclr	7,X00D3
	lda	X00D3
	and	#$07
	brclr	5,X00D3,L01FD
	ora	#$08
	tax
	lda	X3002,x
	brclr	2,X00D3,L020E
	bset	3,X006A
L2A06:
	bra	L0210
;
	lda	#$80
	bclr	2,X00D2
	bclr	3,X007C
	bclr	3,X006A
	sta	X007B
	bset	5,X0094
	cmp	#$81
	beq	L0222
	bra	L021E
;
	bset	1,X007F
	bclr	0,X007F
	bclr	7,X00D2
	bset	2,X00CB
	bset	4,X005C
	bset	7,X005D
	bset	3,X00BC
	rts
;
	brclr	6,X007C,L0240
	brset	5,X007F,L0240
	lda	#$81
	bra	L020E
;
	brset	3,X008E,L0252
	brclr	1,X00A1,L023C
	brclr	3,X00D2,L0240
	lda	#$B0
	sta	X0077
	rts
;
L2A41:
	brclr	5,X007F,L0252
	bclr	5,X007F
	bclr	1,X00CE
	bclr	0,X00CE
	lda	#$80
	sta	X00A0
	bclr	3,X00D2
	bra	L021E
;
	brset	3,X007F,L0240
	bclr	2,X0081
	bset	6,X00C5
	brset	0,X007F,L0275
L2A5C:
	brclr	1,X007F,L021A
	brset	5,X007C,L026A
	lda	#$84
	sta	X007B
	bset	5,X0094
	bra	L0275
;
	brclr	2,X0069,L0275
	bset	0,X007F
	bclr	4,X007C
	bclr	3,X006A
	bra	L0280
;
	brclr	6,X006A,L021A
	clra
	sta	X0264
	bclr	0,X00D4
	bclr	0,X007F
	bclr	1,X007F
	bclr	2,X00BA
	bra	L021E
;
	ldx	#$00
	cmp	XAE06
	bra	L02A5
;
	ldx	#$06
	brclr	6,X008E,L02A5
	lda	X00CE
	and	#$F8
	sta	X00CE
	jsr	L2459
	lda	#$C4
	jmp	L23F6
;
	ldx	#$04
	cmp	XAE02
	brset	5,X007F,L0240
	brclr	2,X00CE,L02BC
	brclr	1,X00CE,L02BC
	brset	0,X00CE,L02BC
	cpx	X00D0
	bne	L02BC
	clr	X00CF
	bset	0,X00CF
	clr	X00CC
	rts
;
	brset	7,X007F,L02BB
	brset	5,X0080,L02BB
	lda	X0082
	and	#$8F
	beq	L02ED
	cmp	#$01
	beq	L02ED
	and	#$0F
	beq	L02ED
	cmp	#$02
	bne	L02BB
	brset	7,X00B9,L02BB
	brclr	2,X00B6,L02ED
	lda	X00B6
	cmp	#$05
	beq	L02BB
	brset	7,X00B5,L02E7
L2AE3:
	bset	7,X00B5
	bset	3,X00BC
	bset	4,X00B3
	bset	5,X00B3
	bclr	7,X00D2
	stx	X00D0
	bset	2,X00CE
	bset	1,X00CE
	bclr	0,X00CE
	lda	#$96
	sta	X00CF
	jmp	L2FC9
;
	lda	#$01
	cmp	XA6FF
	ldx	#$50
	bra	L030C
;
	lda	#$01
	cmp	XA6FF
	ldx	#$30
	stx	X0077
	bra	L0372
;
	lda	X0078
	and	#$0F
	add	#$F9
	nega
	beq	L02BB
	brclr	2,X00CE,L0372
	brclr	1,X00CE,L0372
	brset	0,X00CE,L0372
	sta	X0057
	jsr	L2FC9
	bsr	L0360
	bhi	L0351
	jsr	L2FEA
	bne	L0338
	tst	X0063
	bne	L02F5
	add	X0057
	bra	L034B
;
	bpl	L0345
	add	X0057
	bmi	L034B
	lda	#$28
	sta	X0063
	clra
	bra	L034B
;
	add	X0057
	bmi	L033E
	beq	L033E
	bsr	L0360
	bhi	L02F5
	bra	L0353
;
	clr	X0056
	bsr	L03C9
	lda	X0056
	jsr	L379B
	bset	4,X007E
	bset	3,X007E
	bra	L02F5
;
	ldx	X00D0
	aslx
	sta	X0056
	bpl	L0369
	nega
	incx
	brclr	1,X0081,L036E
	incx
	incx
	cmp	X2FB9,x
	rts
;
	brset	5,X0082,L03B8
	brset	7,X0087,L03B8
	brset	6,X007F,L037E
	brclr	5,X007F,L038B
	brset	4,X007F,L038E
	ldx	X0086
	cpx	X0085
	bls	L038E
	stx	X0085
	bra	L038E
;
	brset	3,X0082,L03B8
	bset	4,X007F
	add	X0085
	bmi	L03A7
	brset	3,X0081,L039D
	cmp	#$1E
	bls	L039D
	lda	#$1E
	brclr	7,X0082,L03A8
	tst	X0085
	bne	L03B8
	lda	#$01
	cmp	X004F
	sta	X0085
	brset	6,X007F,L03B8
	brset	7,X007F,L03B8
	brset	5,X007F,L03B8
	brset	3,X0081,L03B8
	bset	3,X005C
	rts
;
	brset	3,X0006,L03C1
	brclr	2,X0006,L03C5
	brclr	2,X0005,L03D1
	brclr	7,X000F,L03D4
	brclr	7,X000F,L03D7
	brclr	7,X000D,L044A
	bset	0,X00AE
	brset	7,X00A6,L03FB
	brset	2,X00BE,L03FB
	brset	5,X00B9,L03FB
	ldx	#$10
	lda	#$2A
X2BDA:
	bra	L03FB
;
	ldx	#$12
L2BDE:
	lda	#$38
	brset	3,X008E,L03E7
	ldx	#$11
	lda	#$37
	brset	3,X007F,L03FB
	lda	X00D0
	sta	X00C7
	bset	7,X00C7
	lsra
	add	#$A0
	jsr	L37C6
	sta	X00C8
	bset	6,X00C6
X2BFA:
	rts
;
X2BFB:
	jsr	L24A8
	txa
	jmp	L23D9
;
	wait
	wait
;
	db	$8A, $8B, $90, $90, $89, $89
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
	clrx
	brclr	3,X00CE,L0418
	ldx	#$22
	lda	X302F,x
	sta	X0056
	lda	X302E,x
	beq	L042D
	jsr	L2797
	bne	L0418
	ldx	X302D,x
	jsr	L2E29,x						;INFO: index jump
	rts
;
	brclr	6,X0064,L043A
	asr	,x
	brset	5,X005D,L0441
	dec	,x
	bclr	7,X00E7
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
	add	X000A,x
	add	X18EE
	brset	5,X00CE,L0468
	brset	3,X0000,L0453
	jmp	L253F
;
	lda	#$C8
	nop
	deca
	bne	L0458
	rts
;
	clr	X00A1
	clr	X00A2
	clr	X00B2
	brclr	4,X0069,L0478
	jmp	L30A1
	jmp	L3133
;
	brclr	4,X0069,L0478
	jmp	L30E2
;
	brclr	4,X0069,L0478
	jmp	L3106
;
	bclr	7,X00A0
	rts
	jmp	L307E
;
	brclr	1,X00A1,L049F
	dec	X00AF
	bpl	L049F
	brset	7,X00A1,L048B
	jmp	L3133
;
	brset	2,X00A1,L049F
	lda	#$14
	sta	X00AF
	jsr	L335B
	cmp	#$03
	bls	L049F
	inc	X00B1
	bne	L049F
	bset	1,X00B1
	sec
	rts
;
	sei
	bclr	3,X0002
	bclr	2,X0002
	cli
	jsr	L3053
	sei
	bset	2,X0002
	bset	3,X0002
	cli
	bsr	L04C4
	ldx	#$A3
	clr	X0001,x
	jsr	L329D
	jsr	L32E3
	inc	X00B2
	brclr	4,X00B2,L04B2
	bclr	4,X00B2
	rts
;
	brset	0,X00A1,L04C3
	jsr	L3166
	lda	#$4C
	bsr	L04DC
	lda	#$A6
	bsr	L04DC
	lda	#$07
	bsr	L04DC
	clra
	jsr	L3257
	lda	#$0E
	ldx	#$50
	sta	,x
	jmp	L31FB
;
	brclr	7,X00A0,L0511
	brclr	0,X00A1,L04EE
	lda	X00A0
	and	#$08
	bne	L0511
	lda	X00A0
	and	#$0F
	bsr	L04FF
	bclr	7,X00A0
	lda	X00A0
	jsr	L2524
	and	#$03
	beq	L0511
	tax
	ldx	X3320,x
	jmp	L32E3,x						;INFO: index jump
;
	brset	0,X00A1,L0512
	brset	2,X00A1,L0511
	brset	1,X00A1,L0512
	clr	X00A1
	rts
;
	jsr	L3240
	and	#$20
	bne	L0511
	brset	1,X00A1,L052C
	lda	X00AE
	cmp	#$02
	beq	L0525
	brclr	4,X00A1,L0528
	bset	5,X00A1
	rts
;
	lda	#$91
	bra	L055B
;
	brclr	3,X00A1,L050F
	lda	#$92
	bra	L0590
;
	bsr	L055F
	brclr	0,X00A1,L0511
	bsr	L0566
	jmp	L337F
;
	brset	0,X00A1,L0511
	bsr	L055F
	lda	X00A2
	and	#$0F
	sta	X00A2
	jsr	L33F2
	lda	X00AD
	beq	L0553
	add	#$01
	bcc	L0555
	lda	#$02
	sta	X00AE
	sta	X00B1
	lda	#$89
	sta	X00A1
	bra	L0592
;
	brclr	1,X00A1,L0511
	clr	X00A1
	bsr	L0566
	lda	#$05
	jmp	L3257
;
	lda	X00A2
	and	#$0F
	beq	L05E2
	bsr	L055F
	ldx	#$AD
	jsr	L3299
	brclr	6,X00A0,L0580
	ldx	#$A3
	jsr	L32BD
	jsr	L32E3
	ldx	X00AE
	stx	X00B1
	cpx	X00AD
	bcs	L058E
	lda	#$8A
	cmp	XA682
	sta	X00A1
	lda	#$08
	bsr	L0568
	lda	X00AD
	brclr	2,X00A1,L059F
	lda	X00B1
	bset	6,X00A1
	sta	X0058
	clra
	brclr	3,X00A1,L05A8
	deca
	sta	X0058
	ldx	#$56
	sta	X0057
	lda	#$00
	sta	,x
	bsr	L05E3
	ldx	#$56
	lda	#$7F
	sta	,x
	lda	X00B1
	cmp	#$02
	bcs	L05BF
	brclr	4,X00A1,L05C1
	lda	#$02
	sta	X0001,x
	clr	,x
	bsr	L05E5
	lda	#$03
	brset	0,X00A1,L05CD
	lda	#$02
	bsr	L0568
L2DCF:
	lda	#$04
	bsr	L0568
	jsr	L33FA
	clrx
	bsr	L0640
	and	#$20
	bne	L05E2
	decx
	bne	L05D7
	clr	X00A1
	rts
;
	bsr	L05FB
	lsr	X0001,x
	ror	,x
	lsr	X0001,x
	ror	,x
	lsr	X0001,x
	ror	,x
	lsr	X0001,x
	ror	,x
	brclr	6,X00A1,L05F9
	inc	,x
	inc	,x
	inc	,x
	bclr	6,X00A1
	bsr	L05FB
	lda	,x
	bsr	L0657
	lda	,x
	jsr	L2525
	incx
	bra	L0657
;
	lda	#$09
	bsr	L0657
	lda	#$02
	jsr	L3056
L2E0E:
	ldx	#$50
	bsr	L0628
	sta	,x
	incx
	cpx	#$54
	bls	L0610
	ldx	#$51
L2E1A:
	asl	,x
	rol	X0001,x
	asl	,x
	rol	X0001,x
	asl	,x
	rol	X0001,x
	asl	,x
	rol	X0001,x
	incx
	rts
;
	bsr	L0636
	jsr	L2525
	sta	X0059
	bsr	L063B
	and	#$F0
	ora	X0059
	rts
;
	lda	#$31
	deca
	bne	L0638
	lda	#$1B
	deca
	bne	L063D
	sei
	lda	X0006
	and	#$03
	add	#$0C
	sta	X0006
	cli
	bset	2,X0002
	bclr	3,X0002
	bsr	L0695
	lda	X0002
	bset	3,X0002
	rts
;
	lda	#$03
	clr	X005A
	bset	3,X0002
	dec	X005A
	bne	L0662
L2E5F:
	jmp	L31E0
;
	bsr	L0695
	bclr	3,X0002
	jsr	L33FA
	brset	4,X0002,L0659
	cmp	#$05
	beq	L0676
	brset	5,X0002,L0659
	cmp	XA602
	jsr	L252C
	ora	#$0F
	sei
	sta	X0002
	lda	X0006
	and	#$03
	add	#$FC
	sta	X0006
	cli
	bclr	2,X0002
	bsr	L0695
	bset	2,X0002
	lda	X0006
	and	#$03
	add	#$0C
	sta	X0006
	jsr	L33FA
	rts
;
	bclr	0,X0058
	bra	L06A1
;
	bset	0,X0058
	bclr	1,X0058
	stx	X0057
	lda	X00A2
	jsr	L2525
	sta	X0052
	lda	X00B2
	and	#$0F
	sub	X0052
	bpl	L06B4
	add	#$0A
	inca
	asla
	sta	X0059
	ldx	X0057
	lda	#$04
	cmp	XA608
	sta	X0056
	brclr	0,X0058,L06D2
	lda	,x
	stx	X005A
	ldx	X0059
	sta	X02D8,x
X2ECC:
	ldx	X005A
	inc	X0059
	bra	L06DE
;
	stx	X005A
	ldx	X0059
	inc	X0059
	lda	X02D8,x
	ldx	X005A
	sta	,x
	incx
	dec	X0056
	bne	L06C1
	rts
;
	lda	X00A2
	cmp	#$0F
	beq	L0715
	add	#$10
	cmp	#$A0
	bcc	L0715
	tax
	jsr	L2525
	sta	X0056
	lda	X00A2
	and	#$0F
	cmp	X0056
	bcs	L0715
	txa
	bra	L070D
;
	lda	X00A2
	cmp	#$0F
	beq	L0715
	and	#$F0
	beq	L0715
	sub	#$10
	eor	X00A2
	and	#$F0
	eor	X00A2
	bra	L071B
;
	clra
	rts
;
	lda	X00A2
	and	#$0F
	sta	X00A2
	and	#$0F
	rts
;
	db	$6B
;
	brset	0,X0000,L0724
	negx
	lsrx
	aslx
	brset	0,X005C,L0777
	rts
	rts
;
	db	$82
;
	asl	X0060,x
	lsr	X00CC,x
;
	db	$31
;
	tst	X00AD
;
	db	$AF
;
	bra	L074E
;
	bsr	L0701
	bra	L074E
;
	bsr	L0717
	bra	L074E
;
	bsr	L0717
	bra	L0749
;
	bsr	L06E4
	bra	L0749
;
	bsr	L0701
	beq	L06E3
	jmp	L316B
;
	brset	1,X00A1,L0754
	jmp	L3069
;
	bclr	7,X00A1
	lda	#$01
	sta	X00AF
	rts
;
	lda	X00AD
	sub	X00B1
	bcc	L0763
	sub	#$02
	rts
	rts
;
	jsr	L315F
	bclr	2,X00A1
	ldx	#$50
	jsr	L3299
	jsr	L32E3
	lda	X0052
	sta	X00AB
	lda	X0053
	sta	X00AC
	ldx	X00B1
	jmp	L3187
;
	jsr	L3205
	lda	,x
	sta	X00AD
	brset	5,X00A1,L0792
	sub	X00AE
	bcc	L078E
	sub	#$02
	sub	#$02
	bcs	L07EF
	lda	X00B2
	inca
	cmp	#$09
	bls	L079A
	clra
	sta	X00B2
	ldx	#$AD
	jsr	L329D
	ldx	#$A3
	jsr	L32E3
	lda	X00AD
	add	#$01
	bcc	L07AE
	lda	#$02
	sta	X00B1
	clr	X00A2
	lda	X00AE
	cmp	X00B1
	bcc	L07D6
	sta	X00AE
	beq	L07E2
	brset	5,X00A1,L07E9
	lda	X00A2
	cmp	#$90
	bcc	L07EF
	add	#$11
	sta	X00A2
L2FC9:
	ldx	#$50
	bsr	L07F4
	lda	X0051
	brset	1,X00A1,L07DA
	cmp	X00AE
	bcs	L07B8
	bset	1,X00A1
	bra	L07DE
;
	cmp	X00AE
	bcc	L07E2
	cmp	X00B1
	bcc	L07B8
	lda	X00A2
	beq	L07EF
	brclr	5,X00A1,L07EB
	ora	#$0F
	and	#$0F
	sta	X00A2
	clr	X00A1
	rts
;
	ldx	#$AD
	jsr	L3299
	jmp	L32E3
;
	tst	X00FF,x
	tst	X00FF,x
	rts
;
	brset	7,X00A0,L0008
X3002:
	lda	X00CE
	and	#$C0
	beq	L0009
	rts
;
	brset	5,X00CE,L0048
	brclr	1,X00A1,L0014
	brclr	7,X00A1,L0014
L3012:
	bset	5,X007F
	brclr	5,X007F,L0026
	brset	3,X007F,L0023
	brset	5,X00B9,L0023
	brset	0,X005D,L0026
	brclr	4,X00BA,L0026
	jmp	L34EB
;
	brclr	0,X00A1,L0032
	brclr	5,X007F,L0032
	bset	0,X005D
X302E:
	lda	#$80
	bra	L0046
;
	brset	5,X00B9,L0041
	brclr	4,X00B9,L004A
	brset	1,X00A1,L004F
	brset	5,X007F,L004F
	brset	0,X005D,L004F
	brset	0,X00A1,L0090
	lda	#$89
	sta	X00A0
	bra	L0090
;
	bclr	0,X005D
	brset	0,X00A1,L002E
	brclr	5,X007F,L0090
	bclr	4,X00BA
	brset	3,X00CE,L0090
	brclr	1,X00A1,L0060
	bset	2,X00CE
	bset	5,X00CF
	bra	L0090
;
	ldx	X00CF
	brclr	2,X00CE,L0083
	brclr	3,X00D2,L0071
	lda	X00A2
	and	#$F0
L306C:
	bne	L007C
	jmp	L3584
;
	incx
L3072:
	bne	L00EB
	bclr	7,X00CF
	lda	#$88
	bset	0,X005D
	bra	L008B
;
	jsr	L35A3
	lda	#$85
	bra	L008D
;
	incx
	bne	L0090
	brclr	3,X00D2,L00EB
	lda	#$8D
	bclr	6,X0080
	jmp	L3539
;
	brclr	6,X005D,L00BE
	brset	3,X007F,L00BE
	jmp	L35CB
;
	lda	#$44
	bset	6,X00C5
	bra	L00CF
;
	brset	3,X00CE,L00BE
	brset	3,X008E,L00BE
	brset	3,X00D2,L011E
	brset	5,X007F,L00F1
	rts
;
	brset	3,X00CE,L00BE
	lda	#$30
	brset	3,X008E,L00BC
	brclr	1,X00A1,L00BA
	brclr	3,X00D2,L00D4
	lda	#$B0
	sta	X0077
	rts
;
	brclr	4,X00BA,L00C8
	bclr	4,X00BA
	lda	#$F1
	bra	L00CF
;
	lda	#$66
	brclr	2,X00B8,L00CF
	lda	#$26
	sta	X00B3
	jmp	L3568
;
	lda	#$24
	brset	3,X008E,L009B
	brset	3,X00D2,L011E
	brset	5,X007F,L00E5
	brclr	6,X00B5,L00C8
L30E2:
	brset	2,X00B8,L00C8
	brset	2,X00BE,L00BE
	brclr	1,X00A1,L00F1
	lda	#$80
	sta	X00A0
	bra	L0168
;
	lda	X00A2
	and	#$0F
	brclr	5,X007F,L00FF
	beq	L0168
	jsr	L35A3
	bra	L0134
;
	brset	0,X00A1,L0104
	beq	L0111
	bclr	4,X00BA
L3106:
	lda	#$FF
	sta	X00CF
	bset	2,X00CE
	lda	#$80
	jmp	L348B
;
	clr	X00C8
	lda	#$8A
	jsr	L23F3
	lda	#$2C
	jsr	L24A8
	rts
;
	jsr	L35A3
	lda	#$80
	brset	1,X00A1,L0139
	lda	X00A2
	cmp	#$0F
	beq	L0134
	deca
	jsr	L252C
	cmp	X00A2
	bcc	L0137
	lda	#$86
	cmp	XA684
	bset	5,X007F
	sta	X00A0
	bra	L0196
;
	brclr	1,X005F,L0145
	jmp	L34C8
;
	brset	5,X007F,L01A2
	bset	2,X007E
	bset	0,X0080
	lda	#$02
	sta	X007F
	ldx	#$06
	jsr	L2557
	lda	#$08
	sta	X00CE
	lda	#$26
	sta	X00B3
	bclr	5,X00D2
L315F:
	lda	#$14
	bsr	L0194
	bclr	4,X00B3
	bclr	5,X00B6
	rts
;
	bclr	5,X007F
	bclr	1,X00CE
	bclr	0,X00CE
	bclr	3,X00D2
	bra	L019C
;
	brset	5,X007F,L01A2
	brset	4,X00BA,L01A2
	lda	X00A2
	and	#$0F
	beq	L0111
	lda	#$86
	sta	X00A0
	bclr	4,X00BA
	bclr	3,X00D2
	lda	#$7D
	bset	6,X0080
	bclr	2,X00CE
	sta	X00CF
	bset	1,X00CE
	bset	0,X00CE
	bset	5,X007F
	sta	X00CF
	bset	4,X00B3
	bset	5,X00B3
	bclr	7,X00D2
	bset	2,X00CB
	bset	3,X007E
	bset	7,X005D
	rts
;
	bset	3,X00D2
	lda	#$32
	bra	L0188
;
	lda	X00A2
	cmp	#$0F
	bne	L01B3
	lda	#$01
	bra	L01BE
;
	jsr	L2525
	sta	X005B
	lda	X00A2
	sub	X005B
	and	#$0F
	sta	X00C8
	add	#$2C
	jsr	L24A8
	lda	#$8A
	jsr	L23EA
	rts
;
	clrx
	brclr	5,X00CE,L01D1
	ldx	#$0E
	lda	X35E8,x
	sta	X0056
	lda	X35E7,x
	beq	L01E6
	jsr	L2797
	bne	L01D1
L31E0:
	ldx	X35E6,x
	jsr	L3499,x						;INFO: index jump
	rts
;
	eor	X0013,x
	eor	X3BA8
	lda	#$28
	brset	0,X00AB,L01CA
	ldx	#$D9
	brset	4,X0006,L01FD
	bne	L01E0
	bne	L01FA
	bsr	L0248
	beq	L020C
	lda	#$81
	sta	X007B
	bset	5,X0094
	bset	2,X0069
	bset	1,X007F
	bclr	0,X007F
	bset	4,X005C
	lda	X0103
	and	#$EF
	brclr	7,X008B,L0216
	ora	#$10
	sta	X008B
	bclr	7,X008B
	and	#$E0
	cmp	#$A0
	bne	L022E
	lda	X0101
	sta	X008C
	lda	X0102
	sta	X008D
	lda	#$A8
	sta	X008B
	bsr	L0248
	beq	L0234
	bclr	3,X008B
	brset	3,X008B,L0247
	bset	0,X0080
	brclr	2,X008B,L0247
	brclr	7,X0064,L0247
	clr	X008B
	clra
	jsr	L365F
	bset	7,X005D
	rts
;
	lda	X0101
	cmp	X008C
	bne	L0247
	lda	X0102
	cmp	X008D
	rts
;
	brclr	1,X008B,L025A
	bset	2,X008B
	lda	X008B
	cmp	XA608
	ldx	#$63
	jsr	L3786
	bset	2,X005D
	jmp	L2633
;
	brclr	0,X00D6,L0271
	brclr	1,X00D6,L0273
	bclr	0,X00D6
	bclr	2,X00D6
	bset	1,X00D6
	rts
;
	bclr	1,X00D6
	brset	3,X0010,L02A9
	brset	2,X00D6,L02A9
	lda	X0011
	brset	6,X00BA,L0286
	brclr	5,X00BA,L02A9
	brset	0,X00D6,L0298
	bmi	L02A6
	brset	3,X00D6,L02A9
	sta	X0271
	bset	0,X00D6
	and	#$07
	sta	X00D7
	rts
;
	ldx	X00D7
	sta	X0272,x
L329D:
	dec	X00D7
	bpl	L02A5
	bset	3,X00D6
	bclr	0,X00D6
	rts
;
	sta	X00D8
	rts
;
	bset	2,X00D6
	bset	0,X00D6
	rts
;
	brclr	7,X00D6,L02F1
	brset	2,X00D6,L02F1
	lda	X00D9
	bne	L02BA
	clr	X00D8
	lda	X027A
L32BD:
	ora	#$80
	cmp	X00D8
	beq	L02E7
	lda	X00D9
	and	#$03
	bne	L02D8
	clrx
	bsr	L0306
	txa
	incx
	deca
	bmi	L02CA
	eor	X027A
	and	#$03
	bne	L02CA
	inc	X00D9
	bne	L02F1
	brclr	0,X0061,L02E1
	bset	2,X005D
	bclr	6,X00BA
L32E3:
	bclr	5,X00BA
	bclr	5,X0061
	bclr	7,X00D6
	brclr	1,X00BF,L02EF
	bclr	1,X00BF
	rts
;
	bclr	0,X00BF
	rts
;
	brclr	6,X00D6,L0312
	bclr	6,X00D6
	clra
	deca
	beq	L02FE
	brclr	7,X0010,L02F8
	lda	X0271
	ora	#$80
	sta	X0011
	rts
;
	clra
	deca
	beq	L030D
	brclr	7,X0010,L0307
	lda	X027A,x
	sta	X0011
	rts
;
	clr	X005D
	clr	X0077
	clr	X00A0
	clr	X005D
	clr	X00D5
	clr	X007D
	clr	X007B
	clr	X0078
	clr	X007A
	clr	X00D2
	lda	#$88
	sta	X00B3
	clr	X00BB
	clr	X00B6
	ldx	#$A7
	jsr	L37C7
	and	#$03
	sta	X007F
	bset	7,X007F
	ldx	#$A5
	jsr	L37C7
	and	#$71
	sta	X00D3
	bset	7,X007C
	ldx	#$A6
	jsr	L37C7
	and	#$06
	sta	X00D4
	lda	X0081
	and	#$01
	sta	X0081
	bset	6,X0081
	jsr	L3EEE
	brclr	5,X0069,L0367
	bclr	5,X00D3
	bclr	6,X00D3
	brset	0,X007F,L0367
	lda	#$02
	sta	X007F
	rts
	rts
;
	tst	X005C
	beq	L0385
	lda	X007F
	ldx	#$A7
	brset	4,X005C,L037A
	lda	X0085
	ldx	#$A8
	bclr	3,X005C
	bclr	4,X005C
	brclr	0,X0061,L0385
L337F:
	brset	0,X0080,L0385
	jsr	L379B
	rts
;
	cpx	#$90
	bcc	L03B6
	cpx	#$63
	bcs	L03B6
	bsr	L039F
	bsr	L0392
	txa
	sub	#$30
	tax
	lda	X0130,x
	bra	L039F
;
	cpx	#$90
	bcs	L03B6
	sta	X0059
	cmp	X0100,x
	beq	L03B6
	sei
	bclr	4,X000C
	bset	1,X0007
	bset	2,X0007
	bsr	L03B7
	bset	1,X0007
	bsr	L03B7
	bset	4,X000C
	cli
	rts
;
	sta	X0100,x
	bset	0,X0007
	cli
	jsr	L253F
	sei
	lda	X0059
	bclr	1,X0007
	rts
;
	tax
	lda	X0100,x
	rts
;
	brclr	6,X00CE,L0438
	lda	X00D0
	and	#$F0
	beq	L0438
	jmp	L387A
;
	lda	X00D0
	bmi	L0438
	and	#$70
	cmp	#$60
	bhi	L03E6
	brclr	1,X0081,L03EC
	bne	L03EC
	clra
	brclr	3,X008E,L03EC
	add	#$10
	add	#$10
	sta	X00D0
	jsr	L2525
	add	#$A8
	jsr	L37C6
	and	#$07
L33FA:
	add	X00D0
	bra	L0426
;
	lda	X00D0
	jsr	L2525
	tax
	lda	X0078
	cmp	#$17
	beq	L0438
	bhi	L0418
	lda	X00D0
	cmp	X3838,x
	bhi	L0421
	beq	L0426
	inca
	bra	L0426
;
	lda	X00D0
	cmp	X383F,x
	bhi	L0425
	beq	L0426
	lda	X3838,x
	cmp	X004A
	sta	X00D0
	jsr	L2525
	add	#$A8
	tax
	lda	X00D0
	and	#$07
	jsr	L379B
	jmp	L3847
	rts
;
	bclr	2,X0025
;
	db	$35, $41, $51, $65, $71
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
	lda	#$00
	jsr	L2481
	lda	X00D0
	bpl	L0451
	rts
;
	and	#$70
	lsra
	jsr	L245B
	lda	X00D0
	and	#$07
	cmp	#$01
	beq	L0475
	bcs	L0468
	ora	#$30
	sta	X025C
	bra	L0475
;
	lda	X00D0
	sub	#$10
	lsra
	lsra
	and	#$18
	add	#$40
	jsr	L245B
	lda	#$C4
	jmp	L23EA
;
	clrx
	brset	7,X00D0,L0480
	ldx	#$00
	lda	X3899,x
	sta	X0056
	lda	X3898,x
	beq	L0497
	jsr	L2797
	bne	L0480
	ldx	X3897,x
	jsr	L37D7,x						;INFO: index jump
	bclr	6,X005D
	rts
;
	eor	X0000,x
	brclr	3,X0000,L04BC
	beq	L049F
	lda	#$05
	sta	X0063
	lda	#$80
	jsr	L3979
	beq	L04B4
	jsr	L0789
	jsr	L253F
	tst	X0063
	bne	L04A3
	jsr	L253F
	bclr	6,X0001
	clr	X009E
	rts
;
	bset	1,X005D
	lda	#$07
	cmp	XA607
	sta	X009E
	jsr	L399D
L34C8:
	bclr	6,X0001
	jsr	L254E
	bset	6,X0001
	lda	#$05
	sta	X0063
	brclr	0,X0000,L04DF
	tst	X0063
	bne	L04D3
	bclr	2,X009E
	jmp	L077D
;
	jsr	L253F
	jsr	L253F
	bsr	L0543
	clr	X009F
	jsr	L2412
	rts
	bra	L04DA
;
	lda	X009E
	and	#$F0
	bne	L0509
	brclr	1,X005D,L051F
	lda	X006C
	coma
	ldx	#$07
	sta	X0250,x
	lda	#$E1
	bsr	L0579
	bne	L051F
	bclr	1,X005D
	rts
;
	brclr	2,X009E,L051F
	lda	X0256
	ldx	#$07
	brclr	7,X009E,L0520
	brclr	3,X009E,L0539
	lda	#$D0
	bsr	L0579
	bne	L051F
	bclr	3,X009E
	rts
;
	brclr	6,X009E,L052F
	brset	3,X009E,L0539
	lda	#$C0
	bsr	L0579
	bne	L051F
	bset	3,X009E
	rts
;
	lda	#$13
	clrx
	brset	5,X009E,L0539
	lda	#$23
	ldx	#$03
L3539:
	jsr	L3979
	bne	L051F
	ldx	#$9E
	jmp	L257C
;
	brclr	2,X009E,L04ED
	brset	0,X0000,L05A3
	brset	6,X009F,L05A3
	lda	#$01
	sta	X0057
	lda	#$25
	jsr	L39A4
	beq	L059B
	bclr	1,X0004
	lda	#$01
	bset	2,X0000
	brset	1,X0000,L0560
	rola
	bclr	2,X0000
	bcc	L055B
	sta	X0056
	sei
L3568:
	bsr	L05E2
	beq	L059B
	brset	6,X0056,L059D
	lda	X0056
	beq	L0594
	sta	X009F
	bset	6,X009F
	bra	L0594
;
	sta	X0056
	and	#$0F
	inca
	sta	X0057
	lda	#$9A
	bsr	L05A4
L3584:
	beq	L059B
	lda	X0056
	bsr	L05C3
	beq	L059B
	lda	X0250,x
	incx
	tst	X0057
	bpl	L0588
	bset	1,X009E
	bset	0,X009E
	clra
	bra	L059D
;
	dec	X009E
	bclr	1,X0004
	bset	2,X0000
	bset	2,X0004
L35A3:
	rts
;
	sta	X0058
	bclr	1,X0004
	bclr	2,X0000
	lda	X001A
	add	#$14
	cmp	X001A
	bmi	L05BF
	brset	1,X0000,L05AE
	brset	0,X0000,L05AE
	brset	0,X0000,L05C1
	cmp	X001A
	bpl	L05B8
	clra
	rts
;
	lda	X0058
	sec
	rola
	bclr	2,X0000
	bclr	1,X0000
	bcc	L05CF
L35CB:
	bclr	1,X0004
	bra	L05D1
;
	bset	1,X0004
	bset	2,X0000
	asla
	bne	L05C5
	bclr	2,X0000
	jsr	L3A04
	bclr	1,X0004
	tst	X0057
	bne	L05E2
	sei
	lda	#$38
	brclr	0,X0000,L05EC
X35E7:
	deca
X35E8:
	bne	L05E4
	cli
	rts
;
	bset	2,X0000
	cli
	dec	X0057
	bmi	L0604
	jsr	L254E
	clra
	brset	0,X0000,L0604
L35FA:
	lda	#$38
	bclr	2,X0000
	brset	0,X0000,L0604
	deca
	bne	L05FE
	rts
;
	clra
	sta	X008F
	sta	X02D1
	bclr	4,X006B
	bset	6,X0095
	clr	X0090
	bset	1,X0091
	ldx	#$0F
	sta	X02C0,x
	decx
	bpl	L0615
	lda	#$40
	sta	X02CA
	sta	X02CB
	lda	#$10
	sta	X02C2
	brset	7,X0061,L0682
	brclr	3,X008E,L0630
L362E:
	bset	4,X00D5
	bset	5,X00D5
	jsr	L24B4
	bset	5,X008F
	brset	3,X005F,L063C
	bset	0,X0090
	ldx	#$2F
	bclr	0,X005B
	lda	X0100,x
	cmp	X0130,x
	bne	L064D
L3648:
	cmp	X0160,x
	beq	L066A
	bset	0,X005B
	and	X0130,x
	sta	X0057
	lda	X0100,x
	eor	X0130,x
	and	X0160,x
L365D:
	ora	X0057
L365F:
	sta	X0057
	txa
	add	#$60
	tax
	lda	X0057
	jsr	L3786
	decx
	bpl	L0640
	lda	#$03
	bsr	L06BF
	ldx	#$12
	jsr	L37C7
L3676:
	ldx	#$0E
	cmp	#$5A
	beq	L067D
	clra
	add	#$FF
	jsr	L3CE8
	rts
;
	brclr	6,X009F,L069C
	clrx
	lda	X009F
	bmi	L0699
	and	#$3F
	cmp	#$21
	beq	L0699
	bcs	L0697
	cmp	#$25
	bcs	L0699
	ldx	#$BC
	stx	X02D6
	rts
;
	lda	X02D6
	beq	L06AE
	deca
	sta	X02D6
	bne	L06AE
	lda	#$01
	bset	0,X005B
	bra	L06BF
;
L36AE:
	brclr	4,X007C,L069C
	ldx	#$0D
	jsr	L3CBB
	lda	X02CD
	bpl	L069C
	lda	#$04
	bra	L06CE
;
	sta	X0050
	ldx	#$0D
	brclr	0,X005B,L06C6
	jsr	L3CC9
	brclr	0,X005B,L069C
	lda	X0050
	ldx	#$CF
	jmp	L379B
;
	brclr	7,X0060,L06F8
	brclr	6,X005D,L06F8
	ldx	#$23
	lda	X3F91,x
	decx
	decx
	cmp	X0078
	bne	L06F5
	lda	X3F91,x
	sta	X02D3
	lda	X3F92,x
	sta	X02D4
	lda	#$FF
L36F2:
	sta	X02D5
	decx
	bne	L06DB
	rts
;
	brclr	2,X0091,L0734
	sei
	brclr	7,X0001,L0722
	brclr	1,X0090,L0722
	brset	3,X0001,L0722
	lda	#$24
	jsr	L24C5
	cmp	#$1F
	bls	L0711
	lda	#$1F
	sta	X02C7
	lda	#$23
	jsr	L24C5
	cmp	#$1F
	bls	L071F
	lda	#$1F
	sta	X02C8
	cli
	brclr	3,X0001,L0776
	brclr	1,X0090,L0776
	bclr	1,X0090
	lda	X02C7
	beq	L0776
	bset	4,X006B
	bset	6,X0095
	lda	X0090
	add	#$04
	sta	X0090
	bcs	L0770
	bpl	L0776
	sei
	brclr	7,X0001,L0776
	brclr	5,X008E,L0770
	lda	#$24
	jsr	L24C5
	cli
	sub	X02C7
	bcc	L0751
	clra
	jsr	L3E8F
	brset	1,X008F,L0770
	brset	0,X008F,L0770
	brset	7,X008E,L0770
	sei
	brclr	7,X0001,L0776
	lda	#$23
	jsr	L24C5
	cli
	sub	X02C8
	bcc	L076D
	clra
	jsr	L3E8F
	bclr	4,X006B
	bset	6,X0095
	clr	X0090
	cli
	brset	4,X00BC,L07B3
	brset	2,X00BC,L0792
	brset	3,X00BF,L07B3
	brclr	5,X008F,L07B3
	bclr	5,X008F
	bclr	6,X008F
	bset	2,X00BC
	bset	4,X00BC
	lda	#$60
	sta	X02D1
	bra	L07B3
;
	lda	X02D1
	bit	#$08
	bne	L079F
	inca
	sta	X02D1
	bra	L07B3
;
	sei
	brset	7,X0001,L07B3
	lda	#$23
	jsr	L24C5
	sta	X02D2
	lda	X02D1
	ora	#$80
	sta	X02D1
	cli
	brclr	7,X0060,L07CC
	bset	0,X0080
	lda	X02D5
	beq	L07CC
	deca
	sta	X02D5
	bne	L07CC
	lda	#$20
L37C6:
	sta	X02D3
	sta	X02D4
	rts
;
	lda	X02D7
	brclr	4,X006A,L07D7
	add	#$0C
	bcs	L07DE
L37D7:
	beq	L07DE
	sub	#$04
	sta	X02D7
	brclr	2,X0091,L07CC
	brclr	0,X0090,L07CC
	bclr	0,X0090
	brset	3,X0091,L07ED
	jsr	L3E9D
	rts
;
	lda	#$32
	sta	X0090
	rts
;
	clrx
	brset	1,X005F,L07FD
	lda	X009C
	cmp	#$F4
	bhi	L0000
	clc
	jsr	L3CB8
	brclr	5,X0060,L000A
	bclr	5,X0060
	ldx	#$01
	jsr	L3CEB
	lda	#$27
	jsr	L24C5
	coma
	add	#$78
	bcs	L0018
	add	#$14
	bcs	L001D
	ldx	#$01
	jsr	L3CBB
	brclr	2,X00BC,L006F
	lda	X02D1
	bpl	L006F
	ldx	#$03
	brset	6,X008F,L0033
	bclr	4,X008F
	brclr	0,X0091,L0033
	bset	4,X008F
	bset	6,X008F
	jsr	L3CBB
	bclr	3,X008F
X3838:
	ldx	#$02
	lda	X02D2
	coma
	add	#$66
	bcc	L0044
	bset	3,X008F
	bsr	L00BB
	lda	X02C3
	bmi	L006B
	lda	X02C2
	bpl	L0053
	brclr	2,X008F,L006B
	lsra
	bne	L0058
	bset	2,X008F
	brclr	6,X008F,L006F
	lda	X02D1
	bit	#$70
	beq	L0069
	sub	#$10
	sta	X02D1
	bra	L006F
;
	bset	5,X008F
	bclr	2,X00BC
	bset	4,X00BC
	ldx	#$04
	brclr	1,X0001,L0080
	brset	5,X0091,L0077
	bsr	L00BB
	lda	X02C4
	bpl	L0080
	bclr	1,X0001
	ldx	#$05
	brset	3,X0091,L0085
	bsr	L00B8
	ldx	#$09
	brclr	0,X0001,L0098
	brset	4,X0091,L008F
	bsr	L00BB
	lda	X02C9
	bpl	L0098
	bclr	0,X0001
X3898:
	brclr	2,X008E,L00AC
	brclr	1,X005F,L00AC
	lda	X009C
	cmp	#$F4
	bhi	L00AC
	ldx	#$0A
	brclr	4,X006A,L00A9
	jsr	L3CB8
	brclr	1,X008E,L00B7
	ldx	#$0B
	brclr	6,X006A,L00B4
	jsr	L3CB8
	rts
;
	rora
	coma
	rola
	lda	X02C0,x
	bcs	L00DE
	sub	#$02
	bcc	L00E2
	bra	L00CE
;
	rora
	coma
	rola
	lda	X02C0,x
	bcs	L00EB
	lsra
	bcs	L0100
	lda	#$01
	sta	X02C0,x
	lda	X01C0,x
	beq	L0100
	deca
	bra	L00ED
;
	bmi	L0100
	add	#$02
	sta	X02C0,x
	bmi	L00EB
	rts
;
	clra
	bcs	L00ED
	lda	#$33
	sta	X0056
L38EF:
	txa
	add	#$C0
	tax
	lda	X0056
	brset	0,X008E,L00FD
	cpx	#$C2
	bne	L00FD
	clra
	jsr	L379B
	rts
;
	lda	X02B3
	cmp	#$03
	bne	L0119
	lda	X02B4
	cmp	#$53
	bne	L0112
	bset	0,X0090
	rts
;
	lda	#$06
	jsr	L249F
	bclr	7,X005D
	rts
;
	ldx	X3D20,x
	jmp	L3D28,x						;INFO: index jump
;
	brset	0,X0000,L0143
;
	db	$32
;
	clra
;
	db	$65
;
	dec	X007C,x
	clra
	brset	7,X0091,L012E
	lda	#$08
	sta	X02B5
	lda	#$27
	jsr	L24C5
	sta	X02B8
	clra
	brclr	2,X005F,L0140
	lda	X02A4
	sta	X02BB
L3943:
	brset	1,X005F,L0184
	bra	L0184
;
	bset	0,X0090
	lda	#$F3
	brset	0,X008F,L0156
	lda	#$F2
	brset	1,X008F,L0156
	lda	#$C2
	sta	X02B8
	rts
;
	bset	5,X008F
	brclr	0,X008E,L0164
	lda	#$12
	sta	X02B5
	lda	#$F2
	brset	4,X008F,L0173
	lda	#$C2
	brclr	3,X008F,L0173
	brclr	0,X008E,L0173
	lda	#$F3
	sta	X02BB
	rts
;
	clra
	bset	1,X0001
	brclr	5,X0091,L017E
	inca
	sta	X02B5
	brset	3,X005F,L0184
	lda	#$87
	bcs	L0189
	inca
	sta	X02BE
	rts
;
	brset	6,X006A,L019B
	bra	L019B
;
	bset	5,X00D5
	jsr	L24B4
	lda	X02D7
	rola
	lda	#$C2
L399D:
	bcs	L01A0
	inca
	sta	X02B8
	rts
;
L39A4:
	lda	X02D3
	sta	X02B4
	lda	X02D4
	sta	X02B5
	rts
;
	clr	X005B
	brclr	3,X008E,L01B8
	inc	X005B
	lda	X02B3
	ldx	#$80
	jsr	L3786
	lda	X02B4
	ldx	#$81
	jsr	L3786
	lda	X02B5
	ldx	#$82
	jsr	L3786
	lda	X02B6
	ldx	#$83
	jsr	L3786
	lda	#$5A
	ldx	#$72
	jsr	L3786
	jsr	L3EEE
	brclr	3,X008E,L0213
	tst	X005B
	bne	L0213
	ldx	#$12
	jsr	L3EB2
	ldx	#$00
	jsr	L3EC0
	lda	#$0D
	jsr	L3EC8
	lda	X027C
	deca
	bpl	L01F5
	ldx	#$30
	jsr	L3EB2
	ldx	#$02
L3A05:
	jsr	L3EC0
	lda	#$1B
	jsr	L3EC8
	lda	X027C
	deca
	bpl	L020A
	rts
;
	lda	#$81
	sta	X00D0
	lda	#$41
	sta	X00CE
	bset	0,X0080
	bset	7,X0094
	bclr	7,X0060
	bclr	6,X0060
	bset	7,X005D
	rts
;
	ldx	#$CF
	clra
	cpx	#$BE
	bhi	L0231
	lda	X3DCF,x
	jsr	L379B
	jsr	L0789
	decx
	cpx	#$A0
	bcc	L0229
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
	bra	L025C
;
	ldx	#$63
	lda	#$A0
	jsr	L3786
	jsr	L2450
	lda	#$C4
	bra	L0253
;
	brset	0,X0000,L0272
	brset	0,X0000,L0275
	brset	0,X0002,L0280
	brclr	1,X0003,L027E
	brset	0,X0000,L0281
	brset	0,X0002,L0281
	brset	0,X0010,L0294
	bset	0,X0010
	bset	0,X0010
	brset	0,X0000,L028B
	brset	0,X0000,L028E
	brset	0,X0013,L0220
	cmp	#$A9
	bhi	L029D
	cmp	#$0B
	bhi	L029F
	bset	0,X008F
	bra	L02A1
;
L3A9D:
	bset	1,X008F
	bclr	0,X008F
	ldx	#$05
	brclr	1,X008F,L02A6
	jsr	L3CC9
	ldx	#$06
	brclr	0,X008F,L02AE
	jsr	L3CC9
	rts
;
	lda	#$89
	sta	X027D
	lda	#$8A
	sta	X027C
	lda	#$0A
	bra	L02CF
;
	clra
	sta	X027C
	lda	#$11
	bra	L02CF
;
	sta	X027C
	lda	#$19
	ldx	#$89
	sta	X027A
	stx	X027B
	bset	7,X00D6
	clr	X00D9
	jsr	L0789
	jsr	L47F4
	brclr	3,X0067,L02D9
	bclr	3,X0067
	jsr	L36AE
	jsr	L47AA
	brset	7,X00D6,L02D9
	rts
;
	ldx	X0120
	lda	X0121
	lsrx
	rora
	bsr	L032D
	lda	X0058
	and	#$07
	sta	X008E
	brclr	0,X0056,L0303
	bset	3,X008E
	brclr	4,X0058,L0308
	bset	4,X008E
	lda	X0057
	and	#$07
	beq	L031C
	bset	5,X008E
	cmp	#$05
	bne	L0316
	bset	6,X008E
	cmp	#$01
	bne	L031C
	bset	7,X008E
	brclr	5,X0069,L0325
	bclr	4,X008E
	bclr	3,X008E
	bclr	1,X008E
	bclr	1,X0081
	brclr	4,X008E,L032C
	bset	1,X0081
	rts
;
	stx	X0050
	sta	X0051
	and	#$0F
	cmp	#$09
	bls	L0339
	add	#$06
	sta	X0058
	clr	X0057
	clr	X0056
	clrx
	lda	X0051
	bsr	L034F
	lda	X0050
	bsr	L034C
	lda	X0050
	bra	L034F
;
	jsr	L252C
	jsr	L2525
	sta	X0052
	beq	L0388
	bset	7,X0059
	lda	X3F8C,x
	add	X0058
	bcs	L0363
	bclr	7,X0059
	sub	#$60
	bhcs	L0367
	sub	#$06
	sta	X0058
	rol	X0059
	bset	7,X0059
	lda	X3F8B,x
	adc	X0057
	bcs	L0378
	bclr	7,X0059
	sub	#$60
	bhcs	L037C
	sub	#$06
	sta	X0057
	rol	X0059
	bcc	L0384
	inc	X0056
	dec	X0052
	bne	L0356
	incx
	incx
	rts
;
	ror	X007C,x
	asl	X00BC,x
	lda	#$FC
	neg	X0030
	add	,x
	neg	X0031
	ora	,x
	neg	X0032
	stx	,x
	neg	X0033
	and	,x
	neg	X0034
	brset	4,X0030,L03D7
	ldx	X0030,x
	ror	X00EF
	neg	X0037
X3BA8:
	sub	,x
	neg	X0038
	cmp	,x
	neg	X0039
	sbc	,x
;
	db	$31
;
	neg	X00FD
;
	db	$31, $31
;
	jmp	,x						;INFO: index jump
;
	lda	#$1F
	sta	X0090
	bclr	4,X006B
	bset	6,X0095
	rts
;
	brclr	7,X0060,L03D9
	brset	7,X0092,L03D9
	bclr	7,X0060
	bclr	7,X0093
	bset	2,X005D
	brclr	6,X0060,L03D4
L3BCD:
	bclr	6,X0060
	brset	0,X005F,L03D4
	bclr	0,X0061
	bclr	3,X0001
X3BD6:
	bclr	1,X0001
	rts
;
	brset	3,X0060,L0447
	brset	0,X0060,L043A
	brset	4,X0060,L03E8
	brclr	7,X0093,L03EB
	jmp	L406F
	jmp	L4082
;
	jsr	L42CC
	beq	L0448
	jsr	L42CC
	beq	L0448
	eor	X0093
	sta	X0093
	brclr	3,X0093,L0404
	brclr	4,X0093,L0440
	brclr	5,X0093,L043A
	bra	L0440
;
	brset	5,X0093,L0407
	clra
	rola
	eor	X0093
	rora
	bcc	L0429
	and	#$03
	tax
	lda	X02B1
	sub	X0068
	cmp	#$11
	bcs	L0429
	cmp	#$17
	bcs	L042F
	cmp	#$22
	bcs	L0429
	cmp	#$2B
	bhi	L0429
	tstx
	beq	L0436
	lda	#$08
	sta	X0093
	bra	L0440
;
	tstx
	beq	L0429
	cpx	#$04
	bhi	L0429
	inc	X0093
	bra	L0440
;
	bclr	0,X0060
	bclr	4,X0060
	clr	X0093
	lda	X0068
	sta	X02B1
	clr	X0092
	rts
;
	lda	X02B1
	sub	X0068
	cmp	#$C8
	bcs	L0454
	bset	3,X0060
	rts
;
	brclr	5,X0093,L0447
	brset	4,X0093,L0447
	cmp	#$3C
	bcs	L0447
	brclr	3,X0093,L0466
	lda	#$38
	sta	X0093
	rts
;
	lda	X0093
	cmp	#$25
	bne	L0447
	bset	4,X0060
	rts
;
	brset	7,X0095,L0481
	brset	4,X0094,L0481
	brclr	7,X0092,L0429
	brset	4,X0092,L0481
	brset	3,X0092,L048A
	brset	6,X0093,L04BA
	rts
;
	bclr	4,X0060
	bclr	2,X0060
	bclr	1,X0060
	bra	L04D6
;
	bclr	3,X0092
	clrx
	lda	X42D7,x
	beq	L04B4
	cmp	X02B0
	bne	L049F
	lda	X42D8,x
	cmp	X02B2
	beq	L04A4
	incx
	incx
	incx
	bra	L048D
;
	cmp	#$04
	beq	L04A8
	bclr	6,X0093
	lda	X0093
	and	#$1F
	ldx	X42D9,x
	jmp	L40D6,x						;INFO: index jump
;
	ldx	#$47
	jsr	L4296
	rts
;
	bclr	6,X0093
	lda	X0093
	inca
	and	#$1F
	cmp	#$02
	beq	L04BE
	cmp	#$03
	beq	L04DD
L3CC9:
	cmp	#$04
	beq	L04DD
	cmp	#$05
	beq	L04F4
	sub	#$14
	bcc	L051B
	rts
;
	lda	#$01
	brclr	5,X0069,L04DD
	lda	#$02
	jsr	L428C
	bset	4,X0094
	bset	6,X0093
	brset	7,X0092,L0515
	lda	#$90
	sta	X0092
L3CEB:
	lda	X02B0
	ora	#$20
	sta	X02B0
	rts
;
	jsr	L428C
	bset	4,X0094
	lda	X0120
	sta	X02B4
	lda	X0121
	sta	X02B5
	lda	X0122
	sta	X02B6
	lda	X0123
	sta	X02B7
	bset	7,X0060
	bset	7,X005D
	rts
;
	lda	#$13
	sta	X0093
L3D1A:
	clra
	sta	X0050
	ldx	#$95
	jsr	L4296
	clr	X0057
	jmp	L4215
;
	ldx	#$CE
	clra
	jsr	L379B
	decx
	cpx	#$C0
	bcc	L0529
	bra	L0516
;
	cmp	#$06
	bcs	L0541
	cmp	#$08
	bcs	L0543
	bne	L0541
	jmp	L421B
;
	lda	#$05
	inca
	jsr	L428C
	bset	7,X005D
	jsr	L3D01
	rts
;
	ldx	X02B3
	beq	L0565
	cpx	#$07
	bhi	L0566
	stx	X005B
	ldx	X42FC,x
	jsr	L4296
	bset	4,X0094
	ldx	X005B
	jsr	L3D1A
	rts
;
	cpx	#$19
	bne	L0565
	brclr	2,X0060,L0565
	bset	1,X0060
	rts
;
	jsr	L3DB1
	jmp	L40D6
;
	brclr	2,X008B,L057C
	jmp	L40B4
;
	ldx	X02B3
	lda	X02B4
	jsr	L3F2D
	lda	X0057
	cmp	X0101
	bne	L059B
	lda	X0058
	cmp	X0102
	bne	L059B
	jsr	L365D
	bclr	2,X005D
	bset	2,X0060
	rts
;
	inc	X008B
	jsr	L3655
	lda	#$FF
	sta	X008C
	jmp	L3FC4
	bra	L05EA
;
	brclr	1,X0060,L05E9
	lda	X02B3
	sta	X0050
L3DB1:
	lda	X02B5
	sta	X0051
	lda	#$12
	jsr	L428C
	lda	#$03
	sta	X0052
	ldx	X0051
	txa
	and	#$FC
	beq	L05D1
	sub	#$30
	beq	L05D1
	sub	#$30
	beq	L05D1
	jsr	L37C7
	inc	X0051
	ldx	X0052
	sta	X02B0,x
	inc	X0052
	lda	X02B0
	inca
	sta	X02B0
	cmp	#$0F
	beq	L05E9
	dec	X0050
	bne	L05BF
	rts
;
	lda	X02B3
	cmp	#$AB
	bne	L05FB
	lda	X02B4
	cmp	#$CD
	bne	L05FB
	jmp	L3E27
;
	brclr	1,X0060,L05E9
	lda	X02B3
	cmp	X0101
	bne	L05E9
	lda	X02B4
	cmp	X0102
	bne	L05E9
	jmp	L3E61
;
	inc	X0050
	inc	X0093
	ldx	X0050
	cpx	#$0E
	bls	L0620
	clr	X0093
	bset	7,X0093
	rts
;
	lda	X01C0,x
	beq	L0611
	cpx	#$02
L3E27:
	beq	L063D
	cpx	#$03
	beq	L0635
	cpx	#$05
	beq	L063D
	cpx	#$06
	bne	L0642
	decx
	cmp	X01C0,x
	bcs	L0611
	bra	L0642
;
	cmp	X01C1,x
	bls	L0611
	cmp	#$33
	bne	L0647
	clra
	sta	X0051
	ldx	X0057
	incx
	incx
	incx
	cpx	#$0C
	bls	L0655
	bset	6,X0093
	rts
;
	stx	X0057
	txa
	add	#$03
	sta	X02B0
	lda	X0050
	asla
	add	X0050
	sta	X0058
	ldx	X0058
	lda	X43AF,x
	ldx	X0057
	sta	X02B0,x
	ldx	X0058
	lda	X43B0,x
	ldx	X0057
	sta	X02B1,x
	ldx	X0058
	lda	X43B1,x
	tst	X0051
	bne	L0683
	and	#$7F
	ldx	X0057
	sta	X02B2,x
	bset	4,X0094
	bra	L0611
;
	sta	X0093
	lda	X0093
	and	#$1F
	tax
	ldx	X42F3,x
	bset	7,X0093
	clr	X0056
	stx	X0057
	bclr	5,X005D
	cpx	#$49
	bne	L06A4
	bset	5,X005D
	lda	X4315,x
	sta	X02B0
	and	#$0F
	sub	#$03
	sta	X0058
	lda	#$FF
L3EB2:
	sta	X02B1
	ldx	X0057
	lda	X4316,x
	ldx	X0056
	sta	X02B2,x
	inc	X0056
	inc	X0057
	dec	X0058
	bpl	L06B5
	bset	7,X0095
	bset	4,X0092
	rts
;
	clra
	brclr	1,X0003,L06D2
	lda	#$20
	eor	X0093
	and	#$20
	rts
;
	brclr	1,X0000,L06DA
	brclr	1,X0007,L071D
	brclr	1,X0005,L0731
	brset	2,X0004,L0741
	brset	2,X0029,L075D
	brclr	3,X0010,L0683
	brset	4,X002B,L068C
	brclr	2,X001B,L06C0
	brset	3,X0003,L06C5
	brset	0,X0015,L06F6
	brclr	7,X001D,L0723
	asl	X003B
	clr	X0043
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
	sbc	X00B5
	eor	X00BB
	ldx	X00C1
	and	X810F
	lda	,x
	lsr	X0042
	neg	X0030
	com	X0035
;
	db	$31
;
	asl	X0036
	bra	L0743
	bra	L0734
;
	lda	,x
	lsr	X0042
	neg	X0030
	com	X0035
;
	db	$31, $35, $32
;
	bra	L0751
	bra	L0742
;
	lda	,x
	bra	L0788
;
	db	$61
;
	lsr	X0069,x
	clr	X0020,x
	bra	L075D
	bra	L075F
	bra	L074F
;
	lda	,x
	bra	L0764
	bra	L0766
	bra	L0768
	bra	L077A
;
	neg	X0030
;
	db	$31
;
	brset	4,X00F6,L0750
	brclr	2,X00F5,L0756
	comx
	brclr	2,X00F5,L075A
	rorx
	brclr	2,X00F5,L075F
	add	#$44
	brset	5,X000F,L0747
	bset	0,X0008
	brset	0,X0006,L07B3
	sub	X1764
	rti
;
	bcs	L076B
;
	db	$87
;
	brclr	7,X00E7,L0794
	brset	0,X00F0,L0797
	brset	0,X00C2,L0786
	bra	L0797
;
	bclr	0,X0020
	bra	L0787
;
	sta	X0025,x
	brclr	0,X0011,L07A5
	brset	0,X00F4,L07A8
	brset	0,X00C2,L0795
	sta	X0010,x
	brclr	0,X0000,L079C
X3F8B:
	bra	L07AD
;
	bcs	L078F
	bit	,x
	bcs	L0792
;
X3F92:
	db	$88
;
	brclr	4,X00E7,L07BB
	brset	0,X00F6,L07BE
	brset	0,X00C2,L07A5
	sta	X0025,x
	brset	0,X00F7,L07C6
	brset	0,X00C2,L07AA
	sta	X0011,x
	bra	L07C8
;
	brclr	1,X00FD,L07B1
	jmp	,x						;INFO: index jump
;
	stx	,x
	stx	,x
;
	db	$88
;
	brclr	1,X0051,L0756
	brset	1,X009C,L073C
	brclr	1,X0058,L075C
	brclr	1,X0058,L0758
X3FBB:
	brclr	1,X0052,L075B
L3FBE:
	brclr	1,X0054,L076D
X3FC1:
	brclr	1,X0054,L0768
L3FC4:
	brclr	1,X0055,L0773
	brclr	1,X0055,L076E
	brclr	1,X0058,L076A
	brclr	1,X0056,L0781
	brclr	1,X0057,L0784
	brclr	1,X0057,L0773
	stx	,x
	stx	,x
	brset	0,X0004,L07EF
	bls	L07DD
	rts
;
	lda	#$07
	jsr	L249F
	lda	#$14
	jmp	L23D9
;
	brclr	6,X00CE,L07F5
	lda	X00D0
	bit	#$F0
	bne	L07F5
	jmp	L448A
	rts
	rts
;
	lda	#$01
	bra	L07FC
;
	lda	#$07
	brclr	3,X00D0,L07F5
	add	X00D0
	and	#$0F
	ora	#$08
	cmp	#$0D
	bcs	L0010
	bne	L000E
	lda	#$08
	cmp	XA60C
	sta	X00D0
	bra	L0014
;
	brclr	5,X00CE,L0027
	lda	#$17
	brset	6,X0081,L0076
	ldx	X0084
	lda	X4479,x
	sta	X00C8
	lda	#$8B
	bra	L0076
;
	brclr	6,X00CE,L07F5
	ldx	X00D0
	lda	#$05
	brset	6,X006A,L0033
	lda	#$07
	cpx	#$01
	beq	L0076
	lda	#$CA
	cpx	#$08
	beq	L0076
	txa
	ldx	#$07
	cmp	#$09
	beq	L0056
	cmp	#$0A
	beq	L0060
	cmp	#$0B
	bne	L006B
	lda	X00A3,x
	sta	X0257,x
	decx
	bpl	L004C
	bra	L0074
;
	lda	X00DA,x
	sta	X0257,x
	decx
	bpl	L0056
	bra	L0074
;
	lda	X4482,x
	sta	X0257,x
	decx
	bpl	L0060
	bra	L0074
;
	lda	X0190,x
	sta	X0257,x
	decx
	bpl	L006B
	lda	#$C4
	jmp	L23EA
;
	brset	0,X0001,L007F
	brset	2,X0005,L0085
	brset	4,X0009,L008C
L4082:
	asr	X0031
;
	db	$32
;
	asl	X002E
;
	db	$31
;
	bra	L00D7
;
	clrx
	lda	X44A2,x
	sta	X0056
	lda	X44A1,x
	beq	L00A0
	jsr	L2797
	bne	L008B
	ldx	X44A0,x
	jsr	L43F4,x						;INFO: index jump
	rts
;
	lda	,x
	brclr	0,X00F8,L00A7
	sta	X0006,x
	brset	0,X0081,L00AD
	sbc	X7500,x
	sbc	X7207,x
	add	X0417
	add	X1E5D
	brclr	6,X005D,L0121
	jmp	L45DF
;
	brclr	1,X00D2,L0121
	lda	#$06
	eor	X00D4
	sta	X00D4
	ldx	#$A6
	jsr	L379B
	bclr	0,X00D4
	ldx	#$83
	brset	2,X00D4,L00E0
	ldx	#$8D
	bra	L00E0
;
	brclr	1,X00D2,L0121
	ldx	#$89
	lda	#$01
	eor	X00D4
	sta	X00D4
	bset	2,X006A
	bra	L00F8
;
	ldx	#$87
	cmp	XAE86
	cmp	XAE85
	cmp	XAE84
	bra	L00F8
;
	ldx	#$8B
	cmp	XAE8A
	bsr	L0116
	bclr	0,X00D4
	lda	X0264
	and	#$ED
	sta	X0264
	stx	X007D
	bset	6,X0094
	bset	7,X005D
	bclr	4,X00D2
	bset	2,X00CB
	rts
;
	brset	4,X00D2,L00EA
	brset	4,X00D2,L00ED
	bclr	1,X00D2
	rts
;
	lda	#$50
	sta	X0077
	rts
;
	lda	#$90
	sta	X0077
	bset	4,X00D2
	rts
;
	lda	X0078
	and	#$07
	sta	X00C8
	deca
	jsr	L2572
	and	X0266
	bne	L013D
	lda	#$88
	jsr	L23F3
	lda	X00C8
	ora	#$20
	jsr	L24A8
	lda	X00C8
	ora	#$C0
	tax
	bra	L00F8
;
	lda	#$05
	jsr	L2473
	lda	X0260
	and	#$07
	sta	X00C8
	lda	X0265
	bit	#$06
	bne	L019D
	bit	#$08
	bne	L0167
	and	#$F0
	cmp	#$A0
	beq	L0167
	cmp	#$B0
	bne	L0170
	bset	3,X00D4
	lda	#$20
	jsr	L24A8
	ldx	#$08
	bra	L0199
;
	lda	X0267
	bpl	L017D
	and	#$07
	sta	X00C8
	ldx	#$89
	bra	L0199
;
	lda	X0266
	and	#$3F
	beq	L0167
	brset	0,X00D2,L0197
	brclr	2,X00D4,L0197
	lda	X0264
	and	#$24
	bne	L0197
	ldx	#$83
	stx	X007D
	bset	6,X0094
	ldx	#$C8
	txa
	jmp	L23D9
;
	jsr	L244D
	lda	X00C8
	ora	#$30
	sta	X0259
	lda	X0265
	lsra
	and	#$03
	ora	#$30
	sta	X025E
	lda	#$C4
	jmp	L23EA
;
	clr	X0056
	bclr	3,X00CB
	brset	2,X006A,L01D0
	bclr	1,X00D4
	bset	0,X00D4
	lda	X0264
	bit	#$12
	bne	L01CB
	bclr	0,X00D4
	brclr	2,X00D4,L01D0
	bset	1,X00D4
	clra
	brclr	0,X00D4,L01D6
	bset	4,X0056
	brclr	1,X00D4,L01DB
	lda	#$10
	jsr	L241C
	rts
;
	clrx
	lda	X45F9,x
	sta	X0056
	lda	X45F8,x
	beq	L01F7
	jsr	L2797
	bne	L01E0
	ldx	X45F7,x
	jsr	L44BC,x						;INFO: index jump
	bclr	6,X005D
	rts
;
	eor	,x
	bmi	L01E2
	bhcc	L01EC
	bmi	L01EF
	bhcc	L01EE
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
	asl	X005D
L4215:
	decx
	jsr	L54FC,x						;INFO: index jump
	clrx
	rsp
;
L421B:
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
	asl	X0051
	decx
	cmp	X54F2,x
	clrx
;
	db	$92, $35, $52
;
	decx
	sbc	X51EC,x
	brset	0,X0008,L0234
	brclr	5,X0019,L0217
	ror	X0000,x
	rts
	rts
;
	brclr	2,X00D2,L0253
	brclr	4,X00CB,L024A
	bclr	4,X00CB
	bset	7,X005D
	brclr	1,X007C,L024A
	bset	2,X00CB
	brclr	6,X005D,L0253
	brset	7,X00D3,L0253
	jmp	L4739
	rts
;
	lda	#$8B
	cmp	XA68A
	bset	2,X00CB
	brclr	1,X007C,L0269
	lda	#$88
	brset	7,X00D3,L02C9
	bclr	2,X00D2
	lda	#$80
	bra	L02C9
;
	brset	3,X007F,L0253
	brset	5,X007F,L0253
	sta	X007B
	bclr	1,X006A
	bclr	3,X006A
	brclr	5,X00D3,L02CD
	bclr	3,X007B
	bra	L02CD
;
	bset	2,X00CB
	brset	3,X006A,L02C5
	bset	3,X006A
	lda	#$89
	bra	L02C9
;
	bset	4,X00BC
	lda	#$40
	eor	X00D3
	sta	X00D3
	ldx	#$A5
	jsr	L379B
	bra	L02CF
;
L4296:
	brclr	3,X006A,L029D
	bset	5,X00D3
	bra	L02A3
;
	lda	#$20
	eor	X00D3
	sta	X00D3
	ldx	#$A5
	jsr	L379B
	brclr	1,X007C,L02BB
	lda	#$8B
	brclr	0,X007C,L02B6
	brset	2,X007C,L026F
	deca
	bra	L026F
;
	brclr	2,X007C,L026F
	bra	L02B3
;
	brclr	3,X006A,L02CF
	bra	L02C5
;
	lda	#$8E
	brclr	1,X007C,L02C7
	lda	#$8F
	bclr	3,X006A
	sta	X007B
	bclr	1,X006A
	bset	5,X0094
	bset	7,X005D
	rts
;
	lda	#$04
	jsr	L2481
X42D7:
	lda	#$00
X42D9:
	brclr	3,X007C,L02ED
	brset	1,X007C,L02FC
	brclr	3,X00D3,L02ED
	lda	#$01
	bclr	4,X00D3
	brset	0,X007C,L02ED
	lda	#$02
	bset	4,X00D3
	jsr	L23D9
	bclr	1,X006A
	brclr	3,X00D3,L0338
	lda	X00D3
	ldx	#$A5
	jmp	L379B
;
X42FC:
	brclr	5,X00D3,L0302
	brset	1,X006A,L0338
	brclr	0,X007C,L030E
	lda	#$03
	brset	2,X007C,L0315
	lda	#$04
	bra	L0315
;
	lda	#$03
	brclr	2,X007C,L0315
	lda	#$04
X4315:
	bclr	1,X006A
	jmp	L23EA
;
	bclr	4,X00CB
	clra
	brclr	7,X00D3,L0325
	brclr	2,X00D3,L032A
	bra	L0328
;
	brclr	3,X006A,L032A
	ora	#$10
	sta	X0056
	lda	X00D3
	and	#$60
	brclr	4,X0056,L0335
	and	#$40
	jsr	L241C
	rts
;
	clrx
	lda	X4753,x
	sta	X0056
	lda	X4752,x
	beq	L0351
	jsr	L2797
	bne	L033A
	ldx	X4751,x
	jsr	L4654,x						;INFO: index jump
	bclr	6,X005D
	rts
;
	adc	,x
	inc	X000B,x
	bhcc	L035B
	mul
	brset	4,X0042,L034E
	brset	0,X00ED,L0361
	jmp	,x						;INFO: index jump
;
	brset	0,X00FD,L0365
	sbc	,x
	brset	0,X00F1,L0369
	brclr	2,X0033,L0369
	jsr	L483E
	bclr	4,X0000
	bset	4,X0004
	bclr	5,X0000
	bset	5,X0004
	bclr	3,X0000
	bset	3,X0004
	jsr	L253F
	bclr	3,X0004
	rts
;
	bclr	3,X0004
	brclr	5,X006A,L0386
	brclr	3,X0000,L03A9
	jsr	L483E
	bclr	5,X0001
	jsr	L253F
	bset	5,X0001
	bset	7,X0094
	bset	0,X005E
	lda	#$05
	sta	X0063
	jsr	L47AA
	tst	X0094
	beq	L03A9
	jsr	L0789
	jsr	L253F
	tst	X0063
	bne	L0398
	rts
;
	clrx
	lda	X0094
	bne	L03B5
X43AF:
	lda	X0095
X43B1:
	beq	L03F1
	ldx	#$08
	incx
	asla
	bcc	L03B5
	lda	X4867,x
	sta	X0050
	aslx
	lda	X4870,x
	sta	X0059
	lda	X4871,x
	sta	X0056
	lda	#$07
	sta	X0058
	lda	X48A8
	sta	X0057
	lda	X48A7
	tsta
	beq	L03DA
	bset	0,X0059
	jsr	L2587
L43DD:
	lda	X0050
	jsr	L48B3
	brset	0,X005E,L03F1
	brclr	0,X0050,L0400
L43E8:
	ldx	#$94
	tst	,x
	bne	L03EE
	incx
	jsr	L257C
	bclr	0,X005E
	rts
;
L43F4:
	brset	5,X0000,L043D
	brset	0,X005E,L043D
	jsr	L4917
	brset	0,X005E,L043D
	ldx	#$0B
	decx
	bmi	L043D
	cmp	X4886,x
	bne	L0402
	stx	X0050
	jsr	L25A3
	stx	X0058
	ldx	X0050
	aslx
L4414:
	lda	X48A7
	sta	X0059
	lda	X48A8
	sta	X0056
	lda	X4892,x
	sta	X0057
	lda	X4891,x
	tsta
	beq	L042B
	bset	0,X0059
	jsr	L2587
	lda	X0050
	beq	L043D
	cmp	#$05
	beq	L043B
	bhi	L043D
	bset	3,X00CB
	cmp	X18CB
	rts
;
	clra
	ldx	#$07
	sta	X0260,x
	decx
	bne	L0441
	lda	#$80
	sta	X0260
	clr	X006A
	lda	X007C
	and	#$40
	ora	#$A0
	sta	X007C
	brset	5,X0069,L045F
	bset	2,X0069
	bset	6,X007C
	bset	6,X006A
	clr	X0092
	clr	X0091
	clr	X0094
	clr	X0095
	rts
;
	brset	5,X0002,L046F
	sbc	#$82
	and	#$08
	brset	6,X00A6,L0480
	brset	0,X00CE,L0475
	tst	,x
	brset	0,X007B,L047B
X4479:
	eor	X0000
	sta	X0002
	rti
;
	brset	0,X00D5,L0481
	ldx	X02B0
	brset	0,X006B,L04CD
	sbc	XD4D6,x
L448A:
	sbc	X0048,x
	lda	X0044,x
	and	X00E8,x
	mul
	brset	0,X006A,L0496
;
	db	$61
;
	brset	1,X0060,L049A
	lsr	X0002,x
	neg	X0000,x
	inc	,x
	brset	1,X00B8,L04A0
;
X44A0:
	db	$91
;
X44A1:
	brset	0,X00A3,L04A6
	sub	X0000
;
	db	$92
;
	brset	1,X0068,L04AC
;
	db	$5E
;
	brset	3,X0018,L04B2
	bclr	4,X0000
	bset	1,X005E
	rts
;
	sta	X0057
	jsr	L25A3
	stx	X0059
	bset	1,X005E
L44BC:
	ldx	#$0C
	brclr	4,X0000,L050D
	decx
	bne	L04BE
	bclr	2,X0050
	bset	0,X0050
	brclr	5,X0000,L0517
	jsr	L49A8
	lda	#$C8
	sta	X0056
	jsr	L4992
	brclr	0,X005E,L04DD
	bclr	0,X005E
	jsr	L499B
	jsr	L499B
	brclr	5,X0000,L0517
	clr	X0051
	lda	#$AA
	jsr	L49C9
	lda	X0057
	jsr	L49C9
	jsr	L4957
	lda	X0051
	jsr	L49C9
	jsr	L499D
	jsr	L49A8
	jsr	L4969
	jsr	L4982
	jsr	L4982
	jsr	L4982
	jsr	L49C4
	cmp	X105E
	bclr	1,X005E
	bclr	5,X0004
	bclr	4,X0004
	cli
	rts
;
	jsr	L499D
	ldx	#$50
	decx
	bne	L051C
	clr	X0059
	bclr	0,X0050
	bclr	0,X005E
	bclr	2,X0050
	jsr	L4982
	lda	#$56
	jsr	L49C7
	bset	2,X0059
	lda	#$56
	jsr	L49C7
	lda	X0052
	sta	X0058
	jsr	L25A3
	stx	X0059
	inc	X0059
	bclr	2,X0050
	bsr	L0557
	bsr	L0563
	dec	X0056
	bmi	L054E
	brclr	5,X0000,L0547
	brclr	2,X0050,L050D
	bclr	0,X005E
	lda	X0058
	bra	L050F
;
	clrx
	lda	X0268,x
	bsr	L05CB
	incx
	dec	X0059
	bpl	L0558
	rts
;
	brset	0,X005E,L05C4
	brclr	0,X0050,L056C
	jsr	L4982
	sei
	bclr	4,X0004
	clr	X0056
	bset	7,X0056
	brset	4,X0000,L0582
	dec	X0056
	bpl	L0573
	bset	0,X005E
	jmp	L04C4
;
	cli
	bset	0,X005E
	rts
;
	brset	0,X005E,L05C4
	brclr	0,X0050,L058E
	jsr	L4982
	bra	L059D
;
	clr	X0056
	bset	4,X0056
	brclr	4,X0000,L059B
	dec	X0056
	bne	L0592
	bra	L057A
;
	bclr	5,X0004
	bclr	4,X0000
	bset	4,X0004
	bclr	4,X0000
	cli
	rts
;
	brset	0,X005E,L05C4
	bclr	5,X0000
	bset	5,X0004
	bclr	5,X0000
	rts
;
	brclr	0,X0050,L05C4
	tsta
	bpl	L05A5
	bclr	5,X0004
L45B7:
	clr	X0056
	bset	4,X0056
	brset	5,X0000,L05C6
	dec	X0056
	bpl	L05BB
	bra	L057A
;
	bclr	5,X0004
	rts
;
	sta	X0051
	ldx	#$09
	sta	X0052
	clr	X005A
	bset	3,X005A
	bsr	L05AF
	bsr	L0563
	brset	5,X0000,L05D8
	rola
	bsr	L0583
	dec	X005A
	bne	L05D1
L45DF:
	brset	0,X0050,L05FB
	sta	X0052
	tst	X0059
	bne	L05F1
	ldx	#$51
	cmp	,x
	bne	L0603
	bset	2,X0050
	bra	L05F4
;
	sta	X0268,x
	bsr	L05A5
	jsr	L4963
X45F9:
	bra	L0606
;
	bclr	5,X0004
	jsr	L4963
	brclr	5,X0000,L0606
	bset	0,X005E
	cli
	lda	X0052
	add	X0051
	bhcc	L060E
	sub	#$10
	sta	X0051
	jsr	L4983
	bra	L05AF
	rts
;
	brset	2,X008B,L0653
	brclr	6,X005D,L0653
	jmp	L4AC2
;
	bclr	4,X00BA
	bset	7,X005D
	lda	#$70
	sta	X0077
	rts
;
	brset	7,X00CE,L0654
	brclr	3,X008B,L0633
	brclr	7,X008B,L064C
	bclr	3,X008B
	bset	4,X00B3
	clr	X00CE
	bset	7,X00CE
L4639:
	inc	X008B
L463B:
	bclr	2,X008B
	lda	#$10
	sta	X029E
	clra
	sta	X029F
	lda	#$0C
	brclr	7,X008B,L069A
	cmp	XA60B
	bset	1,X00CB
X4650:
	jsr	L23F3
	rts
;
L4654:
	bclr	7,X00CE
	ldx	X029E
	cpx	X0101
	bne	L066D
	lda	X029F
	cmp	X0102
	bne	L066D
	stx	X008C
	sta	X008D
	jmp	L365D
;
	brset	7,X008B,L0633
	jmp	L3655
;
	clrx
	cmp	XAE01
	lda	#$70
	add	X029E,x
	bcs	L068F
	add	#$A0
	bra	L068F
;
	clrx
	cmp	XAE01
	lda	#$F7
	add	X029E,x
	bhcs	L068F
	add	#$0A
	sta	X029E,x
	lda	#$50
	sta	X0077
	bset	2,X00CB
	bclr	1,X00CB
	bset	7,X005D
	rts
;
	lda	#$0B
	brset	7,X00CE,L06A5
	brclr	3,X008B,L06A7
	lda	#$C6
	jsr	L23D9
	rts
;
	brset	3,X008B,L06BA
	brset	7,X008B,L06BA
	lda	#$20
	brset	1,X008B,L06BB
	asla
	brset	0,X008B,L06BB
	clra
	clrx
	jsr	L2403
	jmp	L2413
;
	clrx
	brset	7,X00CE,L06C8
	ldx	#$10
	lda	X4ADF,x
	sta	X0056
	lda	X4ADE,x
	beq	L06DD
L46D2:
	jsr	L2797
	bne	L06C8
	ldx	X4ADD,x
	jsr	L4A1F,x						;INFO: index jump
	rts
;
	cmp	X0054,x
;
	db	$41
;
	lsrx
	sbc	X0063,x
	mul
	com	X00E3,x
	rorx
	coma
	rorx
	and	X0065,x
	lsra
;
	db	$65
;
	ldx	,x
	brset	0,X007E,L06FB
	brset	0,X000E,L068B
	brset	6,X00B6,L0715
	sub	X0097
	sta	X0099
	lda	X001C
	sbc	X0096
	sta	X0098
	bclr	7,X0096
	bset	3,X005E
	lda	X001C
	sta	X0096
	lda	X001D
	sta	X0097
	rts
;
	lda	#$40
	brclr	3,X005E,L0700
	bclr	3,X005E
	rts
;
	tst	X0098
	beq	L074F
	lsr	X0098
	ror	X0099
	lsr	X0098
	ror	X0099
	ldx	X009A
	lda	X009B
	lsrx
	rora
	lsrx
	rora
	lsrx
	rora
	lsrx
	rora
	nega
	add	X009B
	sta	X009B
	txa
	bcs	L0738
	inca
	nega
L4739:
	add	X009A
	sta	X009A
	lda	X009B
	add	X0099
	sta	X009B
	lda	X009A
	adc	X0098
	bcc	L074B
	lda	#$FF
	sta	X009A
	clr	X0098
	rts
;
	ldx	#$AA
X4752:
	jsr	L37C7
	beq	L07A8
	cmp	#$05
	bhi	L07A8
	tax
	decx
	bclr	6,X0081
	lda	#$12
	mul
	tax
	lda	X009A
	sta	X009C
	lda	X009B
L4769:
	sta	X009D
	clr	X0056
	lda	X009A
	cmp	X4C08,x
	bhi	L0783
	bne	L077D
	lda	X009B
	cmp	X4C09,x
	bcc	L0783
	inc	X0056
	incx
	incx
	bra	L076D
;
	lda	X0056
	cmp	X0084
	bcc	L079B
	lda	X009C
	cmp	X4C62,x
	bhi	L079B
	bne	L0799
	lda	X009D
	cmp	X4C63,x
	bcc	L079B
	inc	X0056
	lda	X0056
	cmp	X0084
	beq	L07A8
	sta	X0084
	brclr	5,X00CE,L07A8
	bset	7,X005D
	rts
;
	clra
L47AA:
	sta	X0051
	sta	X0053
	lda	#$04
	sta	X0052
	inc	X0053
	bne	L07BB
	inc	X0052
	brset	6,X0052,L07CC
	bsr	L07EA
	beq	L07B2
	lda	X0052
	sta	X02C0,x
	lda	X0053
	sta	X02D0,x
	tstx
	bne	L07B2
	lda	X0053
	add	#$FF
	sta	X0053
	bcs	L07DA
	dec	X0052
	bpl	L07DA
	bra	L07B2
;
	bsr	L07EA
	beq	L07CC
	lda	X0052
	sta	X02E0,x
	lda	X0053
	sta	X02F0,x
	bra	L07CC
;
	lda	#$50
	sta	X0050
	lda	X0084
	sta	X0051
	lda	X0052
L47F4:
	sta	X0098
	lda	X0053
	sta	X0099
	jsr	L4B17
	dec	X0050
	bne	L07F2
	jsr	L4B50
	tax
	cmp	X0051
	rts
;
	deca
	brset	2,X003A,L07A4
	neg	X007E
	bhcs	L006C
	bcc	L0021
	bclr	7,X00F6
	bset	6,X00B3
	bset	5,X000B
	brset	0,X0000,L0078
	sub	X4650
	asl	X0040
	bil	L0002
	bhcc	L0052
	bls	L004E
	bclr	7,X0040
	bset	6,X0020
	brset	0,X0000,L00A2
	neg	X0052
	adc	X003F
	add	X0034,x
	bclr	2,X002B
	sbc	,x
	bne	L003A
	brn	L00B6
	bclr	6,X00EC
	brset	0,X0000,L07DB
	nega
	lsr	X0072,x
	deca
	brclr	1,X003A,L07DE
	neg	X007D
	bhcs	L00A6
	bcc	L005B
	bclr	7,X00F6
	brset	0,X0000,L0019
	and	X0075,x
	neg	X0052
	adc	X003F
	add	X0034,x
	bclr	2,X002B
	sbc	,x
	bne	L0060
	brn	L00DC
	brset	0,X0000,L00B5
	adc	X003F
	add	X0034,x
X4867:
	bclr	2,X002B
	sbc	,x
	bne	L006E
	brn	L00EA
	bclr	6,X00EC
X4870:
	bclr	5,X000B
	brset	0,X0000,L00E1
	bms	L00C5
	bra	L00B6
;
	bcc	L00AD
	rol	X002A
	nop
	bcs	L0082
	bra	L0036
;
	bclr	6,X004C
	brset	0,X0000,L0013
	sub	#$5D
	sub	X4650
	asl	X0040
	bil	L0070
	bhcc	L00C0
X4892:
	bls	L00BC
	bclr	7,X0040
	brset	0,X0000,L0061
	and	X0075,x
	neg	X0052
	adc	X003F
	add	X0034,x
	bclr	2,X002B
	sbc	,x
	bne	L00A8
	brn	L0124
X48A8:
	brset	0,X0000,L00A6
	bclr	6,X008C
	sub	#$5D
	sub	X4650
	asl	X0040
	bil	L0096
	bhcc	L00E6
	bls	L00E2
	brset	0,X0000,L00BD
	brset	0,X0000,L00C0
	brset	0,X0000,L00C3
	brset	0,X0000,L00C6
	brset	0,X0000,L00C9
	brset	0,X0000,L00CC
	brset	0,X0000,L00CF
	brset	0,X0000,L00D2
	brset	0,X0000,L00D5
	brset	0,X0000,L00D8
	brset	0,X0000,L00DB
	brset	0,X0000,L00DE
	brset	0,X0000,L00E1
	brset	0,X0000,L00E4
	brset	0,X0000,L00E7
	brset	0,X0000,L00EA
	brset	0,X0000,L00ED
	brset	0,X0000,L00F0
	brset	0,X0000,L00F3
	brset	0,X0000,L00F6
	brset	0,X0000,L00F9
	brset	0,X0000,L00FC
	brset	0,X0000,L00FF
	brset	0,X0000,L0102
	brset	0,X0000,L0105
	brset	0,X0000,L0108
	brset	0,X0000,L010B
	brset	0,X0000,L010E
	brset	0,X0000,L0111
	brset	0,X0000,L0114
	brset	0,X0000,L0117
L4917:
	brset	0,X0000,L011A
	brset	0,X0000,L011D
	brset	0,X0000,L0120
	brset	0,X0000,L0123
	brset	0,X0000,L0126
	brset	0,X0000,L0129
	brset	0,X0000,L012C
	brset	0,X0000,L012F
	brset	0,X0000,L0132
	brset	0,X0000,L0135
	brset	0,X0000,L0138
	brset	0,X0000,L013B
	brset	0,X0000,L013E
	brset	0,X0000,L0141
	brset	0,X0000,L0144
	brset	0,X0000,L0147
	brset	0,X0000,L014A
	brset	0,X0000,L014D
	brset	0,X0000,L0150
	brset	0,X0000,L0153
	brset	0,X0000,L0156
	brset	0,X0000,L0159
	brset	0,X0000,L015C
	brset	0,X0000,L015F
	brset	0,X0000,L0162
	brset	0,X0000,L0165
	brset	0,X0000,L0168
	brset	0,X0000,L016B
	brset	0,X0000,L016E
	brset	0,X0000,L0171
	brset	0,X0000,L0174
	brset	0,X0000,L0177
	brset	0,X0000,L017A
	brset	0,X0000,L017D
	brset	0,X0000,L0180
	brset	0,X0000,L0183
L4983:
	brset	0,X0000,L0186
	brset	0,X0000,L0189
	brset	0,X0000,L018C
	brset	0,X0000,L018F
	brset	0,X0000,L0192
L4992:
	brset	0,X0000,L0195
	brset	0,X0000,L0198
	brset	0,X0000,L019B
L499B:
	brset	0,X0000,L019E
	brset	0,X0000,L01A1
	brset	0,X0000,L01A4
	brset	0,X0000,L01A7
	brset	0,X0000,L01AA
	brset	0,X0000,L01AD
	brset	0,X0000,L01B0
	brset	0,X0000,L01B3
	brset	0,X0000,L01B6
	brset	0,X0000,L01B9
	brset	0,X0000,L01BC
	brset	0,X0000,L01BF
	brset	0,X0000,L01C2
	brset	0,X0000,L01C5
	brset	0,X0000,L01C8
	brset	0,X0000,L01CB
	brset	0,X0000,L01CE
	brset	0,X0000,L01D1
	brset	0,X0000,L01D4
	brset	0,X0000,L01D7
	brset	0,X0000,L01DA
	brset	0,X0000,L01DD
	brset	0,X0000,L01E0
	brset	0,X0000,L01E3
	brset	0,X0000,L01E6
	brset	0,X0000,L01E9
	brset	0,X0000,L01EC
	brset	0,X0000,L01EF
	brset	0,X0000,L01F2
	brset	0,X0000,L01F5
	brset	0,X0000,L01F8
	brset	0,X0000,L01FB
	brset	0,X0000,L01FE
	brset	0,X0000,L0201
	brset	0,X0000,L0204
	brset	0,X0000,L0207
	brset	0,X0000,L020A
	brset	0,X0000,L020D
	brset	0,X0000,L0210
	brset	0,X0000,L0213
	brset	0,X0000,L0216
L4A16:
	brset	0,X0000,L0219
	brset	0,X0000,L021C
	brset	0,X0000,L021F
L4A1F:
	brset	0,X0000,L0222
	brset	0,X0000,L0225
	brset	0,X0000,L0228
	brset	0,X0000,L022B
	brset	0,X0000,L022E
	brset	0,X0000,L0231
	brset	0,X0000,L0234
	brset	0,X0000,L0237
	brset	0,X0000,L023A
	brset	0,X0000,L023D
	brset	0,X0000,L0240
	brset	0,X0000,L0243
	brset	0,X0000,L0246
	brset	0,X0000,L0249
	brset	0,X0000,L024C
	brset	0,X0000,L024F
	brset	0,X0000,L0252
	brset	0,X0000,L0255
	brset	0,X0000,L0258
	brset	0,X0000,L025B
	brset	0,X0000,L025E
	brset	0,X0000,L0261
	brset	0,X0000,L0264
	brset	0,X0000,L0267
	brset	0,X0000,L026A
	brset	0,X0000,L026D
	brset	0,X0000,L0270
	brset	0,X0000,L0273
	brset	0,X0000,L0276
	brset	0,X0000,L0279
	brset	0,X0000,L027C
	brset	0,X0000,L027F
	brset	0,X0000,L0282
	brset	0,X0000,L0285
	brset	0,X0000,L0288
	brset	0,X0000,L028B
	brset	0,X0000,L028E
	brset	0,X0000,L0291
	brset	0,X0000,L0294
	brset	0,X0000,L0297
	brset	0,X0000,L029A
	brset	0,X0000,L029D
L4A9D:
	brset	0,X0000,L02A0
	brset	0,X0000,L02A3
	brset	0,X0000,L02A6
	brset	0,X0000,L02A9
	brset	0,X0000,L02AC
	brset	0,X0000,L02AF
	brset	0,X0000,L02B2
	brset	0,X0000,L02B5
	brset	0,X0000,L02B8
	brset	0,X0000,L02BB
	brset	0,X0000,L02BE
	brset	0,X0000,L02C1
	brset	0,X0000,L02C4
	brset	0,X0000,L02C7
	brset	0,X0000,L02CA
	brset	0,X0000,L02CD
	brset	0,X0000,L02D0
	brset	0,X0000,L02D3
	brset	0,X0000,L02D6
	brset	0,X0000,L02D9
	brset	0,X0000,L02DC
	brset	0,X0000,L02DF
X4ADF:
	brset	0,X0000,L02E2
	brset	0,X0000,L02E5
	brset	0,X0000,L02E8
	brset	0,X0000,L02EB
	brset	0,X0000,L02EE
	brset	0,X0000,L02F1
	brset	0,X0000,L02F4
	brset	0,X0000,L02F7
	brset	0,X0000,L02FA
	brset	0,X0000,L02FD
	brset	0,X0000,L0300
	brset	0,X0000,L0303
	brset	0,X0000,L0306
	brset	0,X0000,L0309
	brset	0,X0000,L030C
	brset	0,X0000,L030F
L4B0F:
	brset	0,X0000,L0312
	brset	0,X0000,L0315
	brset	0,X0000,L0318
	brset	0,X0000,L031B
	brset	0,X0000,L031E
	brset	0,X0000,L0321
	brset	0,X0000,L0324
	brset	0,X0000,L0327
	brset	0,X0000,L032A
	brset	0,X0000,L032D
	brset	0,X0000,L0330
	brset	0,X0000,L0333
	brset	0,X0000,L0336
	brset	0,X0000,L0339
	brset	0,X0000,L033C
	brset	0,X0000,L033F
	brset	0,X0000,L0342
	brset	0,X0000,L0345
	brset	0,X0000,L0348
	brset	0,X0000,L034B
	brset	0,X0000,L034E
	brset	0,X0000,L0351
	brset	0,X0000,L0354
	brset	0,X0000,L0357
	brset	0,X0000,L035A
	brset	0,X0000,L035D
	brset	0,X0000,L0360
	brset	0,X0000,L0363
	brset	0,X0000,L0366
	brset	0,X0000,L0369
	brset	0,X0000,L036C
	brset	0,X0000,L036F
	brset	0,X0000,L0372
	brset	0,X0000,L0375
	brset	0,X0000,L0378
	brset	0,X0000,L037B
	brset	0,X0000,L037E
	brset	0,X0000,L0381
	brset	0,X0000,L0384
	brset	0,X0000,L0387
	brset	0,X0000,L038A
	brset	0,X0000,L038D
	brset	0,X0000,L0390
	brset	0,X0000,L0393
	brset	0,X0000,L0396
	brset	0,X0000,L0399
	brset	0,X0000,L039C
	brset	0,X0000,L039F
	brset	0,X0000,L03A2
	brset	0,X0000,L03A5
	brset	0,X0000,L03A8
	brset	0,X0000,L03AB
	brset	0,X0000,L03AE
	brset	0,X0000,L03B1
	brset	0,X0000,L03B4
	brset	0,X0000,L03B7
	brset	0,X0000,L03BA
	brset	0,X0000,L03BD
	brset	0,X0000,L03C0
	brset	0,X0000,L03C3
	brset	0,X0000,L03C6
	brset	0,X0000,L03C9
	brset	0,X0000,L03CC
	brset	0,X0000,L03CF
	brset	0,X0000,L03D2
	brset	0,X0000,L03D5
	brset	0,X0000,L03D8
	brset	0,X0000,L03DB
	brset	0,X0000,L03DE
	brset	0,X0000,L03E1
	brset	0,X0000,L03E4
	brset	0,X0000,L03E7
	brset	0,X0000,L03EA
	brset	0,X0000,L03ED
	brset	0,X0000,L03F0
	brset	0,X0000,L03F3
	brset	0,X0000,L03F6
	brset	0,X0000,L03F9
	brset	0,X0000,L03FC
	brset	0,X0000,L03FF
	brset	0,X0000,L0402
	brset	0,X0000,L0405
	brset	0,X0000,L0408
X4C08:
	brset	0,X0000,L040B
	brset	0,X0000,L040E
	brset	0,X0000,L0411
	brset	0,X0000,L0414
	brset	0,X0000,L0417
	brset	0,X0000,L041A
	brset	0,X0000,L041D
	brset	0,X0000,L0420
	brset	0,X0000,L0423
	brset	0,X0000,L0426
	brset	0,X0000,L0429
	brset	0,X0000,L042C
	brset	0,X0000,L042F
	brset	0,X0000,L0432
	brset	0,X0000,L0435
	brset	0,X0000,L0438
	brset	0,X0000,L043B
	brset	0,X0000,L043E
	brset	0,X0000,L0441
	brset	0,X0000,L0444
	brset	0,X0000,L0447
	brset	0,X0000,L044A
	brset	0,X0000,L044D
	brset	0,X0000,L0450
	brset	0,X0000,L0453
	brset	0,X0000,L0456
	brset	0,X0000,L0459
	brset	0,X0000,L045C
	brset	0,X0000,L045F
	brset	0,X0000,L0462
X4C62:
	brset	0,X0000,L0465
	brset	0,X0000,L0468
	brset	0,X0000,L046B
	brset	0,X0000,L046E
	brset	0,X0000,L0471
	brset	0,X0000,L0474
	brset	0,X0000,L0477
	brset	0,X0000,L047A
	brset	0,X0000,L047D
	brset	0,X0000,L0480
	brset	0,X0000,L0483
	brset	0,X0000,L0486
	brset	0,X0000,L0489
	brset	0,X0000,L048C
	brset	0,X0000,L048F
	brset	0,X0000,L0492
	brset	0,X0000,L0495
	brset	0,X0000,L0498
	brset	0,X0000,L049B
	brset	0,X0000,L049E
	brset	0,X0000,L04A1
	brset	0,X0000,L04A4
	brset	0,X0000,L04A7
	brset	0,X0000,L04AA
	brset	0,X0000,L04AD
	brset	0,X0000,L04B0
	brset	0,X0000,L04B3
	brset	0,X0000,L04B6
	brset	0,X0000,L04B9
	brset	0,X0000,L04BC
	brset	0,X0000,L04BF
	brset	0,X0000,L04C2
	brset	0,X0000,L04C5
	brset	0,X0000,L04C8
	brset	0,X0000,L04CB
	brset	0,X0000,L04CE
	brset	0,X0000,L04D1
	brset	0,X0000,L04D4
	brset	0,X0000,L04D7
	brset	0,X0000,L04DA
	brset	0,X0000,L04DD
	brset	0,X0000,L04E0
	brset	0,X0000,L04E3
	brset	0,X0000,L04E6
	brset	0,X0000,L04E9
	brset	0,X0000,L04EC
	brset	0,X0000,L04EF
	brset	0,X0000,L04F2
	brset	0,X0000,L04F5
	brset	0,X0000,L04F8
	brset	0,X0000,L04FB
	brset	0,X0000,L04FE
	brset	0,X0000,L0501
	brset	0,X0000,L0504
	brset	0,X0000,L0507
	brset	0,X0000,L050A
	brset	0,X0000,L050D
	brset	0,X0000,L0510
	brset	0,X0000,L0513
	brset	0,X0000,L0516
	brset	0,X0000,L0519
	brset	0,X0000,L051C
	brset	0,X0000,L051F
	brset	0,X0000,L0522
	brset	0,X0000,L0525
	brset	0,X0000,L0528
	brset	0,X0000,L052B
	brset	0,X0000,L052E
	brset	0,X0000,L0531
	brset	0,X0000,L0534
	brset	0,X0000,L0537
	brset	0,X0000,L053A
	brset	0,X0000,L053D
	brset	0,X0000,L0540
	brset	0,X0000,L0543
	brset	0,X0000,L0546
	brset	0,X0000,L0549
	brset	0,X0000,L054C
	brset	0,X0000,L054F
	brset	0,X0000,L0552
	brset	0,X0000,L0555
	brset	0,X0000,L0558
	brset	0,X0000,L055B
	brset	0,X0000,L055E
	brset	0,X0000,L0561
	brset	0,X0000,L0564
	brset	0,X0000,L0567
	brset	0,X0000,L056A
	brset	0,X0000,L056D
	brset	0,X0000,L0570
	brset	0,X0000,L0573
	brset	0,X0000,L0576
	brset	0,X0000,L0579
	brset	0,X0000,L057C
	brset	0,X0000,L057F
	brset	0,X0000,L0582
	brset	0,X0000,L0585
	brset	0,X0000,L0588
	brset	0,X0000,L058B
	brset	0,X0000,L058E
	brset	0,X0000,L0591
	brset	0,X0000,L0594
	brset	0,X0000,L0597
	brset	0,X0000,L059A
	brset	0,X0000,L059D
	brset	0,X0000,L05A0
	brset	0,X0000,L05A3
	brset	0,X0000,L05A6
	brset	0,X0000,L05A9
	brset	0,X0000,L05AC
	brset	0,X0000,L05AF
	brset	0,X0000,L05B2
	brset	0,X0000,L05B5
	brset	0,X0000,L05B8
	brset	0,X0000,L05BB
	brset	0,X0000,L05BE
	brset	0,X0000,L05C1
	brset	0,X0000,L05C4
	brset	0,X0000,L05C7
	brset	0,X0000,L05CA
	brset	0,X0000,L05CD
	brset	0,X0000,L05D0
	brset	0,X0000,L05D3
	brset	0,X0000,L05D6
	brset	0,X0000,L05D9
	brset	0,X0000,L05DC
	brset	0,X0000,L05DF
	brset	0,X0000,L05E2
	brset	0,X0000,L05E5
	brset	0,X0000,L05E8
	brset	0,X0000,L05EB
	brset	0,X0000,L05EE
	brset	0,X0000,L05F1
	brset	0,X0000,L05F4
	brset	0,X0000,L05F7
	brset	0,X0000,L05FA
	brset	0,X0000,L05FD
	brset	0,X0000,L0600
	brset	0,X0000,L0603
	brset	0,X0000,L0606
	brset	0,X0000,L0609
	brset	0,X0000,L060C
	brset	0,X0000,L060F
	brset	0,X0000,L0612
	brset	0,X0000,L0615
	brset	0,X0000,L0618
	brset	0,X0000,L061B
	brset	0,X0000,L061E
	brset	0,X0000,L0621
	brset	0,X0000,L0624
	brset	0,X0000,L0627
	brset	0,X0000,L062A
	brset	0,X0000,L062D
	brset	0,X0000,L0630
	brset	0,X0000,L0633
	brset	0,X0000,L0636
	brset	0,X0000,L0639
	brset	0,X0000,L063C
	brset	0,X0000,L063F
	brset	0,X0000,L0642
	brset	0,X0000,L0645
	brset	0,X0000,L0648
	brset	0,X0000,L064B
	brset	0,X0000,L064E
	brset	0,X0000,L0651
	brset	0,X0000,L0654
	brset	0,X0000,L0657
	brset	0,X0000,L065A
	brset	0,X0000,L065D
	brset	0,X0000,L0660
	brset	0,X0000,L0663
	brset	0,X0000,L0666
	brset	0,X0000,L0669
	brset	0,X0000,L066C
	brset	0,X0000,L066F
	brset	0,X0000,L0672
	brset	0,X0000,L0675
	brset	0,X0000,L0678
	brset	0,X0000,L067B
	brset	0,X0000,L067E
	brset	0,X0000,L0681
	brset	0,X0000,L0684
	brset	0,X0000,L0687
	brset	0,X0000,L068A
	brset	0,X0000,L068D
	brset	0,X0000,L0690
	brset	0,X0000,L0693
	brset	0,X0000,L0696
	brset	0,X0000,L0699
	brset	0,X0000,L069C
	brset	0,X0000,L069F
	brset	0,X0000,L06A2
	brset	0,X0000,L06A5
	brset	0,X0000,L06A8
	brset	0,X0000,L06AB
	brset	0,X0000,L06AE
	brset	0,X0000,L06B1
	brset	0,X0000,L06B4
	brset	0,X0000,L06B7
	brset	0,X0000,L06BA
	brset	0,X0000,L06BD
	brset	0,X0000,L06C0
	brset	0,X0000,L06C3
	brset	0,X0000,L06C6
	brset	0,X0000,L06C9
	brset	0,X0000,L06CC
	brset	0,X0000,L06CF
	brset	0,X0000,L06D2
	brset	0,X0000,L06D5
	brset	0,X0000,L06D8
	brset	0,X0000,L06DB
	brset	0,X0000,L06DE
	brset	0,X0000,L06E1
	brset	0,X0000,L06E4
	brset	0,X0000,L06E7
	brset	0,X0000,L06EA
	brset	0,X0000,L06ED
	brset	0,X0000,L06F0
	brset	0,X0000,L06F3
	brset	0,X0000,L06F6
	brset	0,X0000,L06F9
	brset	0,X0000,L06FC
	brset	0,X0000,L06FF
	brset	0,X0000,L0702
	brset	0,X0000,L0705
	brset	0,X0000,L0708
	brset	0,X0000,L070B
	brset	0,X0000,L070E
	brset	0,X0000,L0711
	brset	0,X0000,L0714
	brset	0,X0000,L0717
	brset	0,X0000,L071A
	brset	0,X0000,L071D
	brset	0,X0000,L0720
	brset	0,X0000,L0723
	brset	0,X0000,L0726
	brset	0,X0000,L0729
	brset	0,X0000,L072C
	brset	0,X0000,L072F
	brset	0,X0000,L0732
	brset	0,X0000,L0735
	brset	0,X0000,L0738
	brset	0,X0000,L073B
	brset	0,X0000,L073E
	brset	0,X0000,L0741
	brset	0,X0000,L0744
	brset	0,X0000,L0747
	brset	0,X0000,L074A
	brset	0,X0000,L074D
	brset	0,X0000,L0750
	brset	0,X0000,L0753
	brset	0,X0000,L0756
	brset	0,X0000,L0759
	brset	0,X0000,L075C
	brset	0,X0000,L075F
	brset	0,X0000,L0762
	brset	0,X0000,L0765
	brset	0,X0000,L0768
	brset	0,X0000,L076B
	brset	0,X0000,L076E
	brset	0,X0000,L0771
	brset	0,X0000,L0774
	brset	0,X0000,L0777
	brset	0,X0000,L077A
	brset	0,X0000,L077D
	brset	0,X0000,L0780
	brset	0,X0000,L0783
	brset	0,X0000,L0786
	brset	0,X0000,L0789
	brset	0,X0000,L078C
	brset	0,X0000,L078F
	brset	0,X0000,L0792
	brset	0,X0000,L0795
	brset	0,X0000,L0798
	brset	0,X0000,L079B
	brset	0,X0000,L079E
	brset	0,X0000,L07A1
	brset	0,X0000,L07A4
	brset	0,X0000,L07A7
	brset	0,X0000,L07AA
	brset	0,X0000,L07AD
	brset	0,X0000,L07B0
	brset	0,X0000,L07B3
	brset	0,X0000,L07B6
	brset	0,X0000,L07B9
	brset	0,X0000,L07BC
	brset	0,X0000,L07BF
	brset	0,X0000,L07C2
	brset	0,X0000,L07C5
	brset	0,X0000,L07C8
	brset	0,X0000,L07CB
	brset	0,X0000,L07CE
	brset	0,X0000,L07D1
	brset	0,X0000,L07D4
	brset	0,X0000,L07D7
	brset	0,X0000,L07DA
	brset	0,X0000,L07DD
	brset	0,X0000,L07E0
	brset	0,X0000,L07E3
	brset	0,X0000,L07E6
	brset	0,X0000,L07E9
	brset	0,X0000,L07EC
	brset	0,X0000,L07EF
	brset	0,X0000,L07F2
	brset	0,X0000,L07F5
	brset	0,X0000,L07F8
	brset	0,X0000,L07FB
	brset	0,X0000,L07FE
	brset	0,X0000,L0001
	brset	0,X0000,L0004
	brset	0,X0000,L0007
	brset	0,X0000,L000A
	brset	0,X0000,L000D
	brset	0,X0000,L0010
	brset	0,X0000,L0013
	brset	0,X0000,L0016
	brset	0,X0000,L0019
	brset	0,X0000,L001C
	brset	0,X0000,L001F
	brset	0,X0000,L0022
	brset	0,X0000,L0025
	brset	0,X0000,L0028
	brset	0,X0000,L002B
	brset	0,X0000,L002E
	brset	0,X0000,L0031
	brset	0,X0000,L0034
	brset	0,X0000,L0037
	brset	0,X0000,L003A
	brset	0,X0000,L003D
	brset	0,X0000,L0040
	brset	0,X0000,L0043
	brset	0,X0000,L0046
	brset	0,X0000,L0049
	brset	0,X0000,L004C
	brset	0,X0000,L004F
	brset	0,X0000,L0052
	brset	0,X0000,L0055
	brset	0,X0000,L0058
	brset	0,X0000,L005B
	brset	0,X0000,L005E
	brset	0,X0000,L0061
	brset	0,X0000,L0064
	brset	0,X0000,L0067
	brset	0,X0000,L006A
	brset	0,X0000,L006D
	brset	0,X0000,L0070
	brset	0,X0000,L0073
	brset	0,X0000,L0076
	brset	0,X0000,L0079
	brset	0,X0000,L007C
	brset	0,X0000,L007F
	brset	0,X0000,L0082
	brset	0,X0000,L0085
	brset	0,X0000,L0088
	brset	0,X0000,L008B
	brset	0,X0000,L008E
	brset	0,X0000,L0091
	brset	0,X0000,L0094
	brset	0,X0000,L0097
	brset	0,X0000,L009A
	brset	0,X0000,L009D
	brset	0,X0000,L00A0
	brset	0,X0000,L00A3
	brset	0,X0000,L00A6
	brset	0,X0000,L00A9
	brset	0,X0000,L00AC
	brset	0,X0000,L00AF
	brset	0,X0000,L00B2
	brset	0,X0000,L00B5
	brset	0,X0000,L00B8
	brset	0,X0000,L00BB
	brset	0,X0000,L00BE
	brset	0,X0000,L00C1
	brset	0,X0000,L00C4
	brset	0,X0000,L00C7
	brset	0,X0000,L00CA
	brset	0,X0000,L00CD
	brset	0,X0000,L00D0
	brset	0,X0000,L00D3
	brset	0,X0000,L00D6
	brset	0,X0000,L00D9
	brset	0,X0000,L00DC
	brset	0,X0000,L00DF
	brset	0,X0000,L00E2
	brset	0,X0000,L00E5
	brset	0,X0000,L00E8
	brset	0,X0000,L00EB
	brset	0,X0000,L00EE
	brset	0,X0000,L00F1
	brset	0,X0000,L00F4
	brset	0,X0000,L00F7
	brset	0,X0000,L00FA
	brset	0,X0000,L00FD
	brset	0,X0000,L0100
	brset	0,X0000,L0103
	brset	0,X0000,L0106
	brset	0,X0000,L0109
	brset	0,X0000,L010C
	brset	0,X0000,L010F
	brset	0,X0000,L0112
	brset	0,X0000,L0115
	brset	0,X0000,L0118
	brset	0,X0000,L011B
	brset	0,X0000,L011E
	brset	0,X0000,L0121
	brset	0,X0000,L0124
	brset	0,X0000,L0127
	brset	0,X0000,L012A
	brset	0,X0000,L012D
	brset	0,X0000,L0130
	brset	0,X0000,L0133
	brset	0,X0000,L0136
	brset	0,X0000,L0139
	brset	0,X0000,L013C
	brset	0,X0000,L013F
	brset	0,X0000,L0142
	brset	0,X0000,L0145
	brset	0,X0000,L0148
	brset	0,X0000,L014B
	brset	0,X0000,L014E
	brset	0,X0000,L0151
	brset	0,X0000,L0154
	brset	0,X0000,L0157
	brset	0,X0000,L015A
	brset	0,X0000,L015D
	brset	0,X0000,L0160
	brset	0,X0000,L0163
	brset	0,X0000,L0166
	brset	0,X0000,L0169
	brset	0,X0000,L016C
	brset	0,X0000,L016F
	brset	0,X0000,L0172
	brset	0,X0000,L0175
	brset	0,X0000,L0178
	brset	0,X0000,L017B
	brset	0,X0000,L017E
	brset	0,X0000,L0181
	brset	0,X0000,L0184
	brset	0,X0000,L0187
	brset	0,X0000,L018A
	brset	0,X0000,L018D
	brset	0,X0000,L0190
	brset	0,X0000,L0193
	brset	0,X0000,L0196
	brset	0,X0000,L0199
	brset	0,X0000,L019C
	brset	0,X0000,L019F
	brset	0,X0000,L01A2
	brset	0,X0000,L01A5
	brset	0,X0000,L01A8
	brset	0,X0000,L01AB
	brset	0,X0000,L01AE
	brset	0,X0000,L01B1
	brset	0,X0000,L01B4
	brset	0,X0000,L01B7
	brset	0,X0000,L01BA
	brset	0,X0000,L01BD
	brset	0,X0000,L01C0
	brset	0,X0000,L01C3
	brset	0,X0000,L01C6
	brset	0,X0000,L01C9
	brset	0,X0000,L01CC
	brset	0,X0000,L01CF
	brset	0,X0000,L01D2
	brset	0,X0000,L01D5
	brset	0,X0000,L01D8
	brset	0,X0000,L01DB
	brset	0,X0000,L01DE
	brset	0,X0000,L01E1
	brset	0,X0000,L01E4
	brset	0,X0000,L01E7
	brset	0,X0000,L01EA
	brset	0,X0000,L01ED
	brset	0,X0000,L01F0
	brset	0,X0000,L01F3
	brset	0,X0000,L01F6
	brset	0,X0000,L01F9
	brset	0,X0000,L01FC
	brset	0,X0000,L01FF
	brset	0,X0000,L0202
	brset	0,X0000,L0205
	brset	0,X0000,L0208
	brset	0,X0000,L020B
	brset	0,X0000,L020E
	brset	0,X0000,L0211
	brset	0,X0000,L0214
	brset	0,X0000,L0217
	brset	0,X0000,L021A
	brset	0,X0000,L021D
	brset	0,X0000,L0220
	brset	0,X0000,L0223
	brset	0,X0000,L0226
	brset	0,X0000,L0229
	brset	0,X0000,L022C
	brset	0,X0000,L022F
	brset	0,X0000,L0232
	brset	0,X0000,L0235
	brset	0,X0000,L0238
	brset	0,X0000,L023B
	brset	0,X0000,L023E
	brset	0,X0000,L0241
	brset	0,X0000,L0244
	brset	0,X0000,L0247
	brset	0,X0000,L024A
	brset	0,X0000,L024D
	brset	0,X0000,L0250
	brset	0,X0000,L0253
	brset	0,X0000,L0256
	brset	0,X0000,L0259
	brset	0,X0000,L025C
	brset	0,X0000,L025F
	brset	0,X0000,L0262
	brset	0,X0000,L0265
	brset	0,X0000,L0268
	brset	0,X0000,L026B
	brset	0,X0000,L026E
	brset	0,X0000,L0271
	brset	0,X0000,L0274
	brset	0,X0000,L0277
	brset	0,X0000,L027A
	brset	0,X0000,L027D
	brset	0,X0000,L0280
	brset	0,X0000,L0283
	brset	0,X0000,L0286
	brset	0,X0000,L0289
	brset	0,X0000,L028C
	brset	0,X0000,L028F
	brset	0,X0000,L0292
	brset	0,X0000,L0295
	brset	0,X0000,L0298
	brset	0,X0000,L029B
	brset	0,X0000,L029E
	brset	0,X0000,L02A1
	brset	0,X0000,L02A4
	brset	0,X0000,L02A7
	brset	0,X0000,L02AA
	brset	0,X0000,L02AD
	brset	0,X0000,L02B0
	brset	0,X0000,L02B3
	brset	0,X0000,L02B6
	brset	0,X0000,L02B9
	brset	0,X0000,L02BC
	brset	0,X0000,L02BF
	brset	0,X0000,L02C2
	brset	0,X0000,L02C5
	brset	0,X0000,L02C8
	brset	0,X0000,L02CB
	brset	0,X0000,L02CE
	brset	0,X0000,L02D1
	brset	0,X0000,L02D4
	brset	0,X0000,L02D7
	brset	0,X0000,L02DA
	brset	0,X0000,L02DD
	brset	0,X0000,L02E0
	brset	0,X0000,L02E3
	brset	0,X0000,L02E6
	brset	0,X0000,L02E9
	brset	0,X0000,L02EC
	brset	0,X0000,L02EF
	brset	0,X0000,L02F2
	brset	0,X0000,L02F5
	brset	0,X0000,L02F8
	brset	0,X0000,L02FB
	brset	0,X0000,L02FE
	brset	0,X0000,L0301
	brset	0,X0000,L0304
	brset	0,X0000,L0307
	brset	0,X0000,L030A
	brset	0,X0000,L030D
	brset	0,X0000,L0310
	brset	0,X0000,L0313
	brset	0,X0000,L0316
	brset	0,X0000,L0319
	brset	0,X0000,L031C
	brset	0,X0000,L031F
	brset	0,X0000,L0322
	brset	0,X0000,L0325
	brset	0,X0000,L0328
	brset	0,X0000,L032B
	brset	0,X0000,L032E
	brset	0,X0000,L0331
	brset	0,X0000,L0334
	brset	0,X0000,L0337
	brset	0,X0000,L033A
	brset	0,X0000,L033D
	brset	0,X0000,L0340
	brset	0,X0000,L0343
	brset	0,X0000,L0346
	brset	0,X0000,L0349
	brset	0,X0000,L034C
	brset	0,X0000,L034F
	brset	0,X0000,L0352
	brset	0,X0000,L0355
	brset	0,X0000,L0358
	brset	0,X0000,L035B
	brset	0,X0000,L035E
	brset	0,X0000,L0361
	brset	0,X0000,L0364
	brset	0,X0000,L0367
	brset	0,X0000,L036A
	brset	0,X0000,L036D
	brset	0,X0000,L0370
	brset	0,X0000,L0373
	brset	0,X0000,L0376
	brset	0,X0000,L0379
	brset	0,X0000,L037C
	brset	0,X0000,L037F
	brset	0,X0000,L0382
	brset	0,X0000,L0385
	brset	0,X0000,L0388
	brset	0,X0000,L038B
	brset	0,X0000,L038E
	brset	0,X0000,L0391
	brset	0,X0000,L0394
	brset	0,X0000,L0397
	brset	0,X0000,L039A
	brset	0,X0000,L039D
	brset	0,X0000,L03A0
	brset	0,X0000,L03A3
	brset	0,X0000,L03A6
	brset	0,X0000,L03A9
	brset	0,X0000,L03AC
	brset	0,X0000,L03AF
	brset	0,X0000,L03B2
	brset	0,X0000,L03B5
	brset	0,X0000,L03B8
	brset	0,X0000,L03BB
	brset	0,X0000,L03BE
	brset	0,X0000,L03C1
	brset	0,X0000,L03C4
	brset	0,X0000,L03C7
	brset	0,X0000,L03CA
	brset	0,X0000,L03CD
	brset	0,X0000,L03D0
	brset	0,X0000,L03D3
	brset	0,X0000,L03D6
	brset	0,X0000,L03D9
	brset	0,X0000,L03DC
	brset	0,X0000,L03DF
	brset	0,X0000,L03E2
	brset	0,X0000,L03E5
	brset	0,X0000,L03E8
	brset	0,X0000,L03EB
	brset	0,X0000,L03EE
	brset	0,X0000,L03F1
	brset	0,X0000,L03F4
	brset	0,X0000,L03F7
	brset	0,X0000,L03FA
	brset	0,X0000,L03FD
	brset	0,X0000,L0400
	brset	0,X0000,L0403
	brset	0,X0000,L0406
	brset	0,X0000,L0409
	brset	0,X0000,L040C
	brset	0,X0000,L040F
	brset	0,X0000,L0412
	brset	0,X0000,L0415
	brset	0,X0000,L0418
	brset	0,X0000,L041B
	brset	0,X0000,L041E
	brset	0,X0000,L0421
	brset	0,X0000,L0424
	brset	0,X0000,L0427
	brset	0,X0000,L042A
	brset	0,X0000,L042D
	brset	0,X0000,L0430
	brset	0,X0000,L0433
	brset	0,X0000,L0436
	brset	0,X0000,L0439
	brset	0,X0000,L043C
	brset	0,X0000,L043F
	brset	0,X0000,L0442
	brset	0,X0000,L0445
	brset	0,X0000,L0448
	brset	0,X0000,L044B
	brset	0,X0000,L044E
	brset	0,X0000,L0451
	brset	0,X0000,L0454
	brset	0,X0000,L0457
	brset	0,X0000,L045A
	brset	0,X0000,L045D
	brset	0,X0000,L0460
	brset	0,X0000,L0463
	brset	0,X0000,L0466
	brset	0,X0000,L0469
	brset	0,X0000,L046C
	brset	0,X0000,L046F
	brset	0,X0000,L0472
	brset	0,X0000,L0475
	brset	0,X0000,L0478
	brset	0,X0000,L047B
	brset	0,X0000,L047E
	brset	0,X0000,L0481
	brset	0,X0000,L0484
	brset	0,X0000,L0487
	brset	0,X0000,L048A
	brset	0,X0000,L048D
	brset	0,X0000,L0490
	brset	0,X0000,L0493
	brset	0,X0000,L0496
	brset	0,X0000,L0499
	brset	0,X0000,L049C
	brset	0,X0000,L049F
	brset	0,X0000,L04A2
	brset	0,X0000,L04A5
	brset	0,X0000,L04A8
	brset	0,X0000,L04AB
	brset	0,X0000,L04AE
	brset	0,X0000,L04B1
	brset	0,X0000,L04B4
	brset	0,X0000,L04B7
	brset	0,X0000,L04BA
	brset	0,X0000,L04BD
	brset	0,X0000,L04C0
	brset	0,X0000,L04C3
	brset	0,X0000,L04C6
	brset	0,X0000,L04C9
	brset	0,X0000,L04CC
	brset	0,X0000,L04CF
	brset	0,X0000,L04D2
	brset	0,X0000,L04D5
	brset	0,X0000,L04D8
	brset	0,X0000,L04DB
	brset	0,X0000,L04DE
	brset	0,X0000,L04E1
	brset	0,X0000,L04E4
	brset	0,X0000,L04E7
	brset	0,X0000,L04EA
	brset	0,X0000,L04ED
	brset	0,X0000,L04F0
	brset	0,X0000,L04F3
L54F3:
	brset	0,X0000,L04F6
	brset	0,X0000,L04F9
	brset	0,X0000,L04FC
L54FC:
	brset	0,X0000,L04FF
	brset	0,X0000,L0502
	brset	0,X0000,L0505
	brset	0,X0000,L0508
	brset	0,X0000,L050B
	brset	0,X0000,L050E
	brset	0,X0000,L0511
	brset	0,X0000,L0514
	brset	0,X0000,L0517
	brset	0,X0000,L051A
	brset	0,X0000,L051D
	brset	0,X0000,L0520
	brset	0,X0000,L0523
	brset	0,X0000,L0526
	brset	0,X0000,L0529
	brset	0,X0000,L052C
	brset	0,X0000,L052F
	brset	0,X0000,L0532
	brset	0,X0000,L0535
	brset	0,X0000,L0538
	brset	0,X0000,L053B
	brset	0,X0000,L053E
	brset	0,X0000,L0541
	brset	0,X0000,L0544
	brset	0,X0000,L0547
	brset	0,X0000,L054A
	brset	0,X0000,L054D
	brset	0,X0000,L0550
	brset	0,X0000,L0553
	brset	0,X0000,L0556
	brset	0,X0000,L0559
	brset	0,X0000,L055C
	brset	0,X0000,L055F
	brset	0,X0000,L0562
	brset	0,X0000,L0565
	brset	0,X0000,L0568
	brset	0,X0000,L056B
	brset	0,X0000,L056E
	brset	0,X0000,L0571
	brset	0,X0000,L0574
	brset	0,X0000,L0577
	brset	0,X0000,L057A
	brset	0,X0000,L057D
	brset	0,X0000,L0580
	brset	0,X0000,L0583
	brset	0,X0000,L0586
	brset	0,X0000,L0589
	brset	0,X0000,L058C
	brset	0,X0000,L058F
	brset	0,X0000,L0592
	brset	0,X0000,L0595
	brset	0,X0000,L0598
	brset	0,X0000,L059B
	brset	0,X0000,L059E
	brset	0,X0000,L05A1
	brset	0,X0000,L05A4
	brset	0,X0000,L05A7
	brset	0,X0000,L05AA
	brset	0,X0000,L05AD
	brset	0,X0000,L05B0
	brset	0,X0000,L05B3
	brset	0,X0000,L05B6
	brset	0,X0000,L05B9
	brset	0,X0000,L05BC
	brset	0,X0000,L05BF
	brset	0,X0000,L05C2
	brset	0,X0000,L05C5
	brset	0,X0000,L05C8
	brset	0,X0000,L05CB
	brset	0,X0000,L05CE
	brset	0,X0000,L05D1
	brset	0,X0000,L05D4
	brset	0,X0000,L05D7
	brset	0,X0000,L05DA
	brset	0,X0000,L05DD
	brset	0,X0000,L05E0
	brset	0,X0000,L05E3
	brset	0,X0000,L05E6
	brset	0,X0000,L05E9
	brset	0,X0000,L05EC
	brset	0,X0000,L05EF
	brset	0,X0000,L05F2
	brset	0,X0000,L05F5
	brset	0,X0000,L05F8
	brset	0,X0000,L05FB
	brset	0,X0000,L05FE
	brset	0,X0000,L0601
	brset	0,X0000,L0604
	brset	0,X0000,L0607
	brset	0,X0000,L060A
	brset	0,X0000,L060D
	brset	0,X0000,L0610
	brset	0,X0000,L0613
	brset	0,X0000,L0616
	brset	0,X0000,L0619
	brset	0,X0000,L061C
	brset	0,X0000,L061F
	brset	0,X0000,L0622
	brset	0,X0000,L0625
	brset	0,X0000,L0628
	brset	0,X0000,L062B
	brset	0,X0000,L062E
	brset	0,X0000,L0631
	brset	0,X0000,L0634
	brset	0,X0000,L0637
	brset	0,X0000,L063A
	brset	0,X0000,L063D
	brset	0,X0000,L0640
	brset	0,X0000,L0643
	brset	0,X0000,L0646
	brset	0,X0000,L0649
	brset	0,X0000,L064C
	brset	0,X0000,L064F
	brset	0,X0000,L0652
	brset	0,X0000,L0655
	brset	0,X0000,L0658
	brset	0,X0000,L065B
	brset	0,X0000,L065E
	brset	0,X0000,L0661
	brset	0,X0000,L0664
	brset	0,X0000,L0667
	brset	0,X0000,L066A
	brset	0,X0000,L066D
	brset	0,X0000,L0670
	brset	0,X0000,L0673
	brset	0,X0000,L0676
	brset	0,X0000,L0679
	brset	0,X0000,L067C
	brset	0,X0000,L067F
	brset	0,X0000,L0682
	brset	0,X0000,L0685
	brset	0,X0000,L0688
	brset	0,X0000,L068B
	brset	0,X0000,L068E
	brset	0,X0000,L0691
	brset	0,X0000,L0694
	brset	0,X0000,L0697
	brset	0,X0000,L069A
	brset	0,X0000,L069D
	brset	0,X0000,L06A0
	brset	0,X0000,L06A3
	brset	0,X0000,L06A6
	brset	0,X0000,L06A9
	brset	0,X0000,L06AC
	brset	0,X0000,L06AF
	brset	0,X0000,L06B2
	brset	0,X0000,L06B5
	brset	0,X0000,L06B8
	brset	0,X0000,L06BB
	brset	0,X0000,L06BE
	brset	0,X0000,L06C1
	brset	0,X0000,L06C4
	brset	0,X0000,L06C7
	brset	0,X0000,L06CA
	brset	0,X0000,L06CD
	brset	0,X0000,L06D0
	brset	0,X0000,L06D3
	brset	0,X0000,L06D6
	brset	0,X0000,L06D9
	brset	0,X0000,L06DC
	brset	0,X0000,L06DF
	brset	0,X0000,L06E2
	brset	0,X0000,L06E5
	brset	0,X0000,L06E8
	brset	0,X0000,L06EB
	brset	0,X0000,L06EE
	brset	0,X0000,L06F1
	brset	0,X0000,L06F4
	brset	0,X0000,L06F7
	brset	0,X0000,L06FA
	brset	0,X0000,L06FD
	brset	0,X0000,L0700
	brset	0,X0000,L0703
	brset	0,X0000,L0706
	brset	0,X0000,L0709
	brset	0,X0000,L070C
	brset	0,X0000,L070F
	brset	0,X0000,L0712
	brset	0,X0000,L0715
	brset	0,X0000,L0718
	brset	0,X0000,L071B
	brset	0,X0000,L071E
	brset	0,X0000,L0721
	brset	0,X0000,L0724
	brset	0,X0000,L0727
	brset	0,X0000,L072A
	brset	0,X0000,L072D
	brset	0,X0000,L0730
	brset	0,X0000,L0733
	brset	0,X0000,L0736
	brset	0,X0000,L0739
	brset	0,X0000,L073C
	brset	0,X0000,L073F
	brset	0,X0000,L0742
	brset	0,X0000,L0745
	brset	0,X0000,L0748
	brset	0,X0000,L074B
	brset	0,X0000,L074E
	brset	0,X0000,L0751
	brset	0,X0000,L0754
	brset	0,X0000,L0757
	brset	0,X0000,L075A
	brset	0,X0000,L075D
	brset	0,X0000,L0760
	brset	0,X0000,L0763
	brset	0,X0000,L0766
	brset	0,X0000,L0769
	brset	0,X0000,L076C
	brset	0,X0000,L076F
	brset	0,X0000,L0772
	brset	0,X0000,L0775
	brset	0,X0000,L0778
	brset	0,X0000,L077B
	brset	0,X0000,L077E
	brset	0,X0000,L0781
	brset	0,X0000,L0784
	brset	0,X0000,L0787
	brset	0,X0000,L078A
	brset	0,X0000,L078D
	brset	0,X0000,L0790
	brset	0,X0000,L0793
	brset	0,X0000,L0796
	brset	0,X0000,L0799
	brset	0,X0000,L079C
	brset	0,X0000,L079F
	brset	0,X0000,L07A2
	brset	0,X0000,L07A5
	brset	0,X0000,L07A8
	brset	0,X0000,L07AB
	brset	0,X0000,L07AE
	brset	0,X0000,L07B1
	brset	0,X0000,L07B4
	brset	0,X0000,L07B7
	brset	0,X0000,L07BA
	brset	0,X0000,L07BD
	brset	0,X0000,L07C0
	brset	0,X0000,L07C3
	brset	0,X0000,L07C6
	brset	0,X0000,L07C9
	brset	0,X0000,L07CC
	brset	0,X0000,L07CF
	brset	0,X0000,L07D2
	brset	0,X0000,L07D5
	brset	0,X0000,L07D8
	brset	0,X0000,L07DB
	brset	0,X0000,L07DE
	brset	0,X0000,L07E1
	brset	0,X0000,L07E4
	brset	0,X0000,L07E7
	brset	0,X0000,L07EA
	brset	0,X0000,L07ED
	brset	0,X0000,L07F0
	brset	0,X0000,L07F3
	brset	0,X0000,L07F6
	brset	0,X0000,L07F9
	brset	0,X0000,L07FC
	brset	0,X0000,L07FF
	brset	0,X0000,L0002
	brset	0,X0000,L0005
	brset	0,X0000,L0008
	brset	0,X0000,L000B
	brset	0,X0000,L000E
	brset	0,X0000,L0011
	brset	0,X0000,L0014
	brset	0,X0000,L0017
	brset	0,X0000,L001A
	brset	0,X0000,L001D
	brset	0,X0000,L0020
	brset	0,X0000,L0023
	brset	0,X0000,L0026
	brset	0,X0000,L0029
	brset	0,X0000,L002C
	brset	0,X0000,L002F
	brset	0,X0000,L0032
	brset	0,X0000,L0035
	brset	0,X0000,L0038
	brset	0,X0000,L003B
	brset	0,X0000,L003E
	brset	0,X0000,L0041
	brset	0,X0000,L0044
	brset	0,X0000,L0047
	brset	0,X0000,L004A
	brset	0,X0000,L004D
	brset	0,X0000,L0050
	brset	0,X0000,L0053
	brset	0,X0000,L0056
	brset	0,X0000,L0059
	brset	0,X0000,L005C
	brset	0,X0000,L005F
	brset	0,X0000,L0062
	brset	0,X0000,L0065
	brset	0,X0000,L0068
	brset	0,X0000,L006B
	brset	0,X0000,L006E
	brset	0,X0000,L0071
	brset	0,X0000,L0074
	brset	0,X0000,L0077
	brset	0,X0000,L007A
	brset	0,X0000,L007D
	brset	0,X0000,L0080
	brset	0,X0000,L0083
	brset	0,X0000,L0086
	brset	0,X0000,L0089
	brset	0,X0000,L008C
	brset	0,X0000,L008F
	brset	0,X0000,L0092
	brset	0,X0000,L0095
	brset	0,X0000,L0098
	brset	0,X0000,L009B
	brset	0,X0000,L009E
	brset	0,X0000,L00A1
	brset	0,X0000,L00A4
	brset	0,X0000,L00A7
	brset	0,X0000,L00AA
	brset	0,X0000,L00AD
	brset	0,X0000,L00B0
	brset	0,X0000,L00B3
	brset	0,X0000,L00B6
	brset	0,X0000,L00B9
	brset	0,X0000,L00BC
	brset	0,X0000,L00BF
	brset	0,X0000,L00C2
	brset	0,X0000,L00C5
	brset	0,X0000,L00C8
	brset	0,X0000,L00CB
	brset	0,X0000,L00CE
	brset	0,X0000,L00D1
	brset	0,X0000,L00D4
	brset	0,X0000,L00D7
	brset	0,X0000,L00DA
	brset	0,X0000,L00DD
	brset	0,X0000,L00E0
	brset	0,X0000,L00E3
	brset	0,X0000,L00E6
	brset	0,X0000,L00E9
	brset	0,X0000,L00EC
	brset	0,X0000,L00EF
	brset	0,X0000,L00F2
	brset	0,X0000,L00F5
	brset	0,X0000,L00F8
	brset	0,X0000,L00FB
	brset	0,X0000,L00FE
	brset	0,X0000,L0101
	brset	0,X0000,L0104
	brset	0,X0000,L0107
	brset	0,X0000,L010A
	brset	0,X0000,L010D
	brset	0,X0000,L0110
	brset	0,X0000,L0113
	brset	0,X0000,L0116
	brset	0,X0000,L0119
	brset	0,X0000,L011C
	brset	0,X0000,L011F
	brset	0,X0000,L0122
	brset	0,X0000,L0125
	brset	0,X0000,L0128
	brset	0,X0000,L012B
	brset	0,X0000,L012E
	brset	0,X0000,L0131
	brset	0,X0000,L0134
	brset	0,X0000,L0137
	brset	0,X0000,L013A
	brset	0,X0000,L013D
	brset	0,X0000,L0140
	brset	0,X0000,L0143
	brset	0,X0000,L0146
	brset	0,X0000,L0149
	brset	0,X0000,L014C
	brset	0,X0000,L014F
	brset	0,X0000,L0152
	brset	0,X0000,L0155
	brset	0,X0000,L0158
	brset	0,X0000,L015B
	brset	0,X0000,L015E
	brset	0,X0000,L0161
	brset	0,X0000,L0164
	brset	0,X0000,L0167
	brset	0,X0000,L016A
	brset	0,X0000,L016D
	brset	0,X0000,L0170
	brset	0,X0000,L0173
	brset	0,X0000,L0176
	brset	0,X0000,L0179
	brset	0,X0000,L017C
	brset	0,X0000,L017F
	brset	0,X0000,L0182
	brset	0,X0000,L0185
	brset	0,X0000,L0188
	brset	0,X0000,L018B
	brset	0,X0000,L018E
	brset	0,X0000,L0191
	brset	0,X0000,L0194
	brset	0,X0000,L0197
	brset	0,X0000,L019A
	brset	0,X0000,L019D
	brset	0,X0000,L01A0
	brset	0,X0000,L01A3
	brset	0,X0000,L01A6
	brset	0,X0000,L01A9
	brset	0,X0000,L01AC
	brset	0,X0000,L01AF
	brset	0,X0000,L01B2
	brset	0,X0000,L01B5
	brset	0,X0000,L01B8
	brset	0,X0000,L01BB
	brset	0,X0000,L01BE
	brset	0,X0000,L01C1
	brset	0,X0000,L01C4
	brset	0,X0000,L01C7
	brset	0,X0000,L01CA
	brset	0,X0000,L01CD
	brset	0,X0000,L01D0
	brset	0,X0000,L01D3
	brset	0,X0000,L01D6
	brset	0,X0000,L01D9
	brset	0,X0000,L01DC
	brset	0,X0000,L01DF
	brset	0,X0000,L01E2
	brset	0,X0000,L01E5
	brset	0,X0000,L01E8
	brset	0,X0000,L01EB
	brset	0,X0000,L01EE
	brset	0,X0000,L01F1
	brset	0,X0000,L01F4
	brset	0,X0000,L01F7
	brset	0,X0000,L01FA
	brset	0,X0000,L01FD
	brset	0,X0000,L0200
	brset	0,X0000,L0203
	brset	0,X0000,L0206
	brset	0,X0000,L0209
	brset	0,X0000,L020C
	brset	0,X0000,L020F
	brset	0,X0000,L0212
	brset	0,X0000,L0215
	brset	0,X0000,L0218
	brset	0,X0000,L021B
	brset	0,X0000,L021E
	brset	0,X0000,L0221
	brset	0,X0000,L0224
	brset	0,X0000,L0227
	brset	0,X0000,L022A
	brset	0,X0000,L022D
	brset	0,X0000,L0230
	brset	0,X0000,L0233
	brset	0,X0000,L0236
	brset	0,X0000,L0239
	brset	0,X0000,L023C
	brset	0,X0000,L023F
	brset	0,X0000,L0242
	brset	0,X0000,L0245
	brset	0,X0000,L0248
	brset	0,X0000,L024B
	brset	0,X0000,L024E
	brset	0,X0000,L0251
	brset	0,X0000,L0254
	brset	0,X0000,L0257
	brset	0,X0000,L025A
	brset	0,X0000,L025D
	brset	0,X0000,L0260
	brset	0,X0000,L0263
	brset	0,X0000,L0266
	brset	0,X0000,L0269
	brset	0,X0000,L026C
	brset	0,X0000,L026F
	brset	0,X0000,L0272
	brset	0,X0000,L0275
	brset	0,X0000,L0278
	brset	0,X0000,L027B
	brset	0,X0000,L027E
	brset	0,X0000,L0281
	brset	0,X0000,L0284
	brset	0,X0000,L0287
	brset	0,X0000,L028A
	brset	0,X0000,L028D
	brset	0,X0000,L0290
	brset	0,X0000,L0293
	brset	0,X0000,L0296
	brset	0,X0000,L0299
	brset	0,X0000,L029C
	brset	0,X0000,L029F
	brset	0,X0000,L02A2
	brset	0,X0000,L02A5
	brset	0,X0000,L02A8
	brset	0,X0000,L02AB
	brset	0,X0000,L02AE
	brset	0,X0000,L02B1
	brset	0,X0000,L02B4
	brset	0,X0000,L02B7
	brset	0,X0000,L02BA
	brset	0,X0000,L02BD
	brset	0,X0000,L02C0
	brset	0,X0000,L02C3
	brset	0,X0000,L02C6
	brset	0,X0000,L02C9
	brset	0,X0000,L02CC
	brset	0,X0000,L02CF
	brset	0,X0000,L02D2
	brset	0,X0000,L02D5
	brset	0,X0000,L02D8
	brset	0,X0000,L02DB
	brset	0,X0000,L02DE
	brset	0,X0000,L02E1
	brset	0,X0000,L02E4
	brset	0,X0000,L02E7
	brset	0,X0000,L02EA
	brset	0,X0000,L02ED
	brset	0,X0000,L02F0
	brset	0,X0000,L02F3
	brset	0,X0000,L02F6
	brset	0,X0000,L02F9
	brset	0,X0000,L02FC
	brset	0,X0000,L02FF
	brset	0,X0000,L0302
	brset	0,X0000,L0305
	brset	0,X0000,L0308
	brset	0,X0000,L030B
	brset	0,X0000,L030E
	brset	0,X0000,L0311
	brset	0,X0000,L0314
	brset	0,X0000,L0317
	brset	0,X0000,L031A
	brset	0,X0000,L031D
	brset	0,X0000,L0320
	brset	0,X0000,L0323
	brset	0,X0000,L0326
	brset	0,X0000,L0329
	brset	0,X0000,L032C
	brset	0,X0000,L032F
	brset	0,X0000,L0332
	brset	0,X0000,L0335
	brset	0,X0000,L0338
	brset	0,X0000,L033B
	brset	0,X0000,L033E
	brset	0,X0000,L0341
	brset	0,X0000,L0344
	brset	0,X0000,L0347
	brset	0,X0000,L034A
	brset	0,X0000,L034D
	brset	0,X0000,L0350
	brset	0,X0000,L0353
	brset	0,X0000,L0356
	brset	0,X0000,L0359
	brset	0,X0000,L035C
	brset	0,X0000,L035F
	brset	0,X0000,L0362
	brset	0,X0000,L0365
	brset	0,X0000,L0368
	brset	0,X0000,L036B
	brset	0,X0000,L036E
	brset	0,X0000,L0371
	brset	0,X0000,L0374
	brset	0,X0000,L0377
	brset	0,X0000,L037A
	brset	0,X0000,L037D
	brset	0,X0000,L0380
	brset	0,X0000,L0383
	brset	0,X0000,L0386
	brset	0,X0000,L0389
	brset	0,X0000,L038C
	brset	0,X0000,L038F
	brset	0,X0000,L0392
	brset	0,X0000,L0395
	brset	0,X0000,L0398
	brset	0,X0000,L039B
	brset	0,X0000,L039E
	brset	0,X0000,L03A1
	brset	0,X0000,L03A4
	brset	0,X0000,L03A7
	brset	0,X0000,L03AA
	brset	0,X0000,L03AD
	brset	0,X0000,L03B0
	brset	0,X0000,L03B3
	brset	0,X0000,L03B6
	brset	0,X0000,L03B9
	brset	0,X0000,L03BC
	brset	0,X0000,L03BF
	brset	0,X0000,L03C2
	brset	0,X0000,L03C5
	brset	0,X0000,L03C8
	brset	0,X0000,L03CB
	brset	0,X0000,L03CE
	brset	0,X0000,L03D1
	brset	0,X0000,L03D4
	brset	0,X0000,L03D7
	brset	0,X0000,L03DA
	brset	0,X0000,L03DD
	brset	0,X0000,L03E0
	brset	0,X0000,L03E3
	brset	0,X0000,L03E6
	brset	0,X0000,L03E9
	brset	0,X0000,L03EC
	brset	0,X0000,L03EF
	brset	0,X0000,L03F2
	brset	0,X0000,L03F5
	brset	0,X0000,L03F8
	brset	0,X0000,L03FB
	brset	0,X0000,L03FE
	brset	0,X0000,L0401
	brset	0,X0000,L0404
	brset	0,X0000,L0407
	brset	0,X0000,L040A
	brset	0,X0000,L040D
	brset	0,X0000,L0410
	brset	0,X0000,L0413
	brset	0,X0000,L0416
	brset	0,X0000,L0419
	brset	0,X0000,L041C
	brset	0,X0000,L041F
	brset	0,X0000,L0422
	brset	0,X0000,L0425
	brset	0,X0000,L0428
	brset	0,X0000,L042B
	brset	0,X0000,L042E
	brset	0,X0000,L0431
	brset	0,X0000,L0434
	brset	0,X0000,L0437
	brset	0,X0000,L043A
	brset	0,X0000,L043D
	brset	0,X0000,L0440
	brset	0,X0000,L0443
	brset	0,X0000,L0446
	brset	0,X0000,L0449
	brset	0,X0000,L044C
	brset	0,X0000,L044F
	brset	0,X0000,L0452
	brset	0,X0000,L0455
	brset	0,X0000,L0458
	brset	0,X0000,L045B
	brset	0,X0000,L045E
	brset	0,X0000,L0461
	brset	0,X0000,L0464
	brset	0,X0000,L0467
	brset	0,X0000,L046A
	brset	0,X0000,L046D
	brset	0,X0000,L0470
	brset	0,X0000,L0473
	brset	0,X0000,L0476
	brset	0,X0000,L0479
	brset	0,X0000,L047C
	brset	0,X0000,L047F
	brset	0,X0000,L0482
	brset	0,X0000,L0485
	brset	0,X0000,L0488
	brset	0,X0000,L048B
	brset	0,X0000,L048E
	brset	0,X0000,L0491
	brset	0,X0000,L0494
	brset	0,X0000,L0497
	brset	0,X0000,L049A
	brset	0,X0000,L049D
	brset	0,X0000,L04A0
	brset	0,X0000,L04A3
	brset	0,X0000,L04A6
	brset	0,X0000,L04A9
	brset	0,X0000,L04AC
	brset	0,X0000,L04AF
	brset	0,X0000,L04B2
	brset	0,X0000,L04B5
	brset	0,X0000,L04B8
	brset	0,X0000,L04BB
	brset	0,X0000,L04BE
	brset	0,X0000,L04C1
	brset	0,X0000,L04C4
	brset	0,X0000,L04C7
	brset	0,X0000,L04CA
	brset	0,X0000,L04CD
	brset	0,X0000,L04D0
	brset	0,X0000,L04D3
	brset	0,X0000,L04D6
	brset	0,X0000,L04D9
	brset	0,X0000,L04DC
	brset	0,X0000,L04DF
	brset	0,X0000,L04E2
	brset	0,X0000,L04E5
	brset	0,X0000,L04E8
	brset	0,X0000,L04EB
	brset	0,X0000,L04EE
	brset	0,X0000,L04F1
	brset	0,X0000,L04F4
	brset	0,X0000,L04F7
	brset	0,X0000,L04FA
	brset	0,X0000,L04FD
	brset	0,X0000,L0500
	brset	0,X0000,L0503
	brset	0,X0000,L0506
	brset	0,X0000,L0509
	brset	0,X0000,L050C
	brset	0,X0000,L050F
	brset	0,X0000,L0512
	brset	0,X0000,L0515
	brset	0,X0000,L0518
	brset	0,X0000,L051B
	brset	0,X0000,L051E
	brset	0,X0000,L0521
	brset	0,X0000,L0524
	brset	0,X0000,L0527
	brset	0,X0000,L052A
	brset	0,X0000,L052D
	brset	0,X0000,L0530
	brset	0,X0000,L0533
	brset	0,X0000,L0536
	brset	0,X0000,L0539
	brset	0,X0000,L053C
	brset	0,X0000,L053F
	brset	0,X0000,L0542
	brset	0,X0000,L0545
	brset	0,X0000,L0548
	brset	0,X0000,L054B
	brset	0,X0000,L054E
	brset	0,X0000,L0551
	brset	0,X0000,L0554
	brset	0,X0000,L0557
	brset	0,X0000,L055A
	brset	0,X0000,L055D
	brset	0,X0000,L0560
	brset	0,X0000,L0563
	brset	0,X0000,L0566
	brset	0,X0000,L0569
	brset	0,X0000,L056C
	brset	0,X0000,L056F
	brset	0,X0000,L0572
	brset	0,X0000,L0575
	brset	0,X0000,L0578
	brset	0,X0000,L057B
	brset	0,X0000,L057E
	brset	0,X0000,L0581
	brset	0,X0000,L0584
	brset	0,X0000,L0587
	brset	0,X0000,L058A
	brset	0,X0000,L058D
	brset	0,X0000,L0590
	brset	0,X0000,L0593
	brset	0,X0000,L0596
	brset	0,X0000,L0599
	brset	0,X0000,L059C
	brset	0,X0000,L059F
	brset	0,X0000,L05A2
	brset	0,X0000,L05A5
	brset	0,X0000,L05A8
	brset	0,X0000,L05AB
	brset	0,X0000,L05AE
	brset	0,X0000,L05B1
	brset	0,X0000,L05B4
	brset	0,X0000,L05B7
	brset	0,X0000,L05BA
	brset	0,X0000,L05BD
	brset	0,X0000,L05C0
	brset	0,X0000,L05C3
	brset	0,X0000,L05C6
	brset	0,X0000,L05C9
	brset	0,X0000,L05CC
	brset	0,X0000,L05CF
	brset	0,X0000,L05D2
	brset	0,X0000,L05D5
	brset	0,X0000,L05D8
	brset	0,X0000,L05DB
	brset	0,X0000,L05DE
	brset	0,X0000,L05E1
	brset	0,X0000,L05E4
	brset	0,X0000,L05E7
	brset	0,X0000,L05EA
	brset	0,X0000,L05ED
	brset	0,X0000,L05F0
	brset	0,X0000,L05F3
	brset	0,X0000,L05F6
	brset	0,X0000,L05F9
	brset	0,X0000,L05FC
	brset	0,X0000,L05FF
	brset	0,X0000,L0602
	brset	0,X0000,L0605
	brset	0,X0000,L0608
	brset	0,X0000,L060B
	brset	0,X0000,L060E
	brset	0,X0000,L0611
	brset	0,X0000,L0614
	brset	0,X0000,L0617
	brset	0,X0000,L061A
	brset	0,X0000,L061D
	brset	0,X0000,L0620
	brset	0,X0000,L0623
	brset	0,X0000,L0626
	brset	0,X0000,L0629
	brset	0,X0000,L062C
	brset	0,X0000,L062F
	brset	0,X0000,L0632
	brset	0,X0000,L0635
	brset	0,X0000,L0638
	brset	0,X0000,L063B
	brset	0,X0000,L063E
	brset	0,X0000,L0641
	brset	0,X0000,L0644
	brset	0,X0000,L0647
	brset	0,X0000,L064A
	brset	0,X0000,L064D
	brset	0,X0000,L0650
	brset	0,X0000,L0653
	brset	0,X0000,L0656
	brset	0,X0000,L0659
	brset	0,X0000,L065C
	brset	0,X0000,L065F
	brset	0,X0000,L0662
	brset	0,X0000,L0665
	brset	0,X0000,L0668
	brset	0,X0000,L066B
	brset	0,X0000,L066E
	brset	0,X0000,L0671
	brset	0,X0000,L0674
	brset	0,X0000,L0677
	brset	0,X0000,L067A
	brset	0,X0000,L067D
	brset	0,X0000,L0680
	brset	0,X0000,L0683
	brset	0,X0000,L0686
	brset	0,X0000,L0689
	brset	0,X0000,L068C
	brset	0,X0000,L068F
	brset	0,X0000,L0692
	brset	0,X0000,L0695
	brset	0,X0000,L0698
	brset	0,X0000,L069B
	brset	0,X0000,L069E
	brset	0,X0000,L06A1
	brset	0,X0000,L06A4
	brset	0,X0000,L06A7
	brset	0,X0000,L06AA
	brset	0,X0000,L06AD
	brset	0,X0000,L06B0
	brset	0,X0000,L06B3
	brset	0,X0000,L06B6
	brset	0,X0000,L06B9
	brset	0,X0000,L06BC
	brset	0,X0000,L06BF
	brset	0,X0000,L06C2
	brset	0,X0000,L06C5
	brset	0,X0000,L06C8
	brset	0,X0000,L06CB
	brset	0,X0000,L06CE
	brset	0,X0000,L06D1
	brset	0,X0000,L06D4
	brset	0,X0000,L06D7
	brset	0,X0000,L06DA
	brset	0,X0000,L06DD
	brset	0,X0000,L06E0
	brset	0,X0000,L06E3
	brset	0,X0000,L06E6
	brset	0,X0000,L06E9
	brset	0,X0000,L06EC
	brset	0,X0000,L06EF
	brset	0,X0000,L06F2
	brset	0,X0000,L06F5
	brset	0,X0000,L06F8
	brset	0,X0000,L06FB
	brset	0,X0000,L06FE
	brset	0,X0000,L0701
	brset	0,X0000,L0704
	brset	0,X0000,L0707
	brset	0,X0000,L070A
	brset	0,X0000,L070D
	brset	0,X0000,L0710
	brset	0,X0000,L0713
	brset	0,X0000,L0716
	brset	0,X0000,L0719
	brset	0,X0000,L071C
	brset	0,X0000,L071F
	brset	0,X0000,L0722
	brset	0,X0000,L0725
	brset	0,X0000,L0728
	brset	0,X0000,L072B
	brset	0,X0000,L072E
	brset	0,X0000,L0731
	brset	0,X0000,L0734
	brset	0,X0000,L0737
	brset	0,X0000,L073A
	brset	0,X0000,L073D
	brset	0,X0000,L0740
	brset	0,X0000,L0743
	brset	0,X0000,L0746
	brset	0,X0000,L0749
	brset	0,X0000,L074C
	brset	0,X0000,L074F
	brset	0,X0000,L0752
	brset	0,X0000,L0755
	brset	0,X0000,L0758
	brset	0,X0000,L075B
	brset	0,X0000,L075E
	brset	0,X0000,L0761
	brset	0,X0000,L0764
	brset	0,X0000,L0767
	brset	0,X0000,L076A
	brset	0,X0000,L076D
	brset	0,X0000,L0770
	brset	0,X0000,L0773
	brset	0,X0000,L0776
	brset	0,X0000,L0779
	brset	0,X0000,L077C
	brset	0,X0000,L077F
	brset	0,X0000,L0782
	brset	0,X0000,L0785
	brset	0,X0000,L0788
	brset	0,X0000,L078B
	brset	0,X0000,L078E
	brset	0,X0000,L0791
	brset	0,X0000,L0794
	brset	0,X0000,L0797
	brset	0,X0000,L079A
	brset	0,X0000,L079D
	brset	0,X0000,L07A0
	brset	0,X0000,L07A3
	brset	0,X0000,L07A6
	brset	0,X0000,L07A9
	brset	0,X0000,L07AC
	brset	0,X0000,L07AF
	brset	0,X0000,L07B2
	brset	0,X0000,L07B5
	brset	0,X0000,L07B8
	brset	0,X0000,L07BB
	brset	0,X0000,L07BE
	brset	0,X0000,L07C1
	brset	0,X0000,L07C4
	brset	0,X0000,L07C7
	brset	0,X0000,L07CA
	brset	0,X0000,L07CD
	brset	0,X0000,L07D0
	brset	0,X0000,L07D3
	brset	0,X0000,L07D6
	brset	0,X0000,L07D9
	brset	0,X0000,L07DC
	brset	0,X0000,L07DF
	brset	0,X0000,L07E2
	brset	0,X0000,L07E5
	brset	0,X0000,L07E8
	brset	0,X0000,L07EB
	brset	0,X0000,L07EE
	brset	0,X0000,L07F1
	brset	0,X0000,L07F4
	brset	0,X0000,L07F7
	brset	0,X0000,L07FA
	brset	0,X0000,L07FD
	brset	0,X0000,L0000
	brset	0,X0000,L0003
	brset	0,X0000,L0006
	brset	0,X0000,L0009
	brset	0,X0000,L000C
	brset	0,X0000,L000F
	brset	0,X0000,L0012
	brset	0,X0000,L0015
	brset	0,X0000,L0018
	brset	0,X0000,L001B
	brset	0,X0000,L001E
	brset	0,X0000,L0021
	brset	0,X0000,L0024
	brset	0,X0000,L0027
	brset	0,X0000,L002A
	brset	0,X0000,L002D
	brset	0,X0000,L0030
	brset	0,X0000,L0033
	brset	0,X0000,L0036
	brset	0,X0000,L0039
	brset	0,X0000,L003C
	brset	0,X0000,L003F
	brset	0,X0000,L0042
	brset	0,X0000,L0045
	brset	0,X0000,L0048
	brset	0,X0000,L004B
	brset	0,X0000,L004E
	brset	0,X0000,L0051
	brset	0,X0000,L0054
	brset	0,X0000,L0057
	brset	0,X0000,L005A
	brset	0,X0000,L005D
	brset	0,X0000,L0060
	brset	0,X0000,L0063
	brset	0,X0000,L0066
	brset	0,X0000,L0069
	brset	0,X0000,L006C
	brset	0,X0000,L006F
	brset	0,X0000,L0072
	brset	0,X0000,L0075
	brset	0,X0000,L0078
	brset	0,X0000,L007B
	brset	0,X0000,L007E
	brset	0,X0000,L0081
	brset	0,X0000,L0084
	brset	0,X0000,L0087
	brset	0,X0000,L008A
	brset	0,X0000,L008D
	brset	0,X0000,L0090
	brset	0,X0000,L0093
	brset	0,X0000,L0096
	brset	0,X0000,L0099
	brset	0,X0000,L009C
	brset	0,X0000,L009F
	brset	0,X0000,L00A2
	brset	0,X0000,L00A5
	brset	0,X0000,L00A8
	brset	0,X0000,L00AB
	brset	0,X0000,L00AE
	brset	0,X0000,L00B1
	brset	0,X0000,L00B4
	brset	0,X0000,L00B7
	brset	0,X0000,L00BA
	brset	0,X0000,L00BD
	brset	0,X0000,L00C0
	brset	0,X0000,L00C3
	brset	0,X0000,L00C6
	brset	0,X0000,L00C9
	brset	0,X0000,L00CC
	brset	0,X0000,L00CF
	brset	0,X0000,L00D2
	brset	0,X0000,L00D5
	brset	0,X0000,L00D8
	brset	0,X0000,L00DB
	brset	0,X0000,L00DE
	brset	0,X0000,L00E1
	brset	0,X0000,L00E4
	brset	0,X0000,L00E7
	brset	0,X0000,L00EA
	brset	0,X0000,L00ED
	brset	0,X0000,L00F0
	brset	0,X0000,L00F3
	brset	0,X0000,L00F6
	brset	0,X0000,L00F9
	brset	0,X0000,L00FC
	brset	0,X0000,L00FF
	brset	0,X0000,L0102
	brset	0,X0000,L0105
	brset	0,X0000,L0108
	brset	0,X0000,L010B
	brset	0,X0000,L010E
	brset	0,X0000,L0111
	brset	0,X0000,L0114
	brset	0,X0000,L0117
	brset	0,X0000,L011A
	brset	0,X0000,L011D
	brset	0,X0000,L0120
	brset	0,X0000,L0123
	brset	0,X0000,L0126
	brset	0,X0000,L0129
	brset	0,X0000,L012C
	brset	0,X0000,L012F
	brset	0,X0000,L0132
	brset	0,X0000,L0135
	brset	0,X0000,L0138
	brset	0,X0000,L013B
	brset	0,X0000,L013E
	brset	0,X0000,L0141
	brset	0,X0000,L0144
	brset	0,X0000,L0147
	brset	0,X0000,L014A
	brset	0,X0000,L014D
	brset	0,X0000,L0150
	brset	0,X0000,L0153
	brset	0,X0000,L0156
	brset	0,X0000,L0159
	brset	0,X0000,L015C
	brset	0,X0000,L015F
	brset	0,X0000,L0162
	brset	0,X0000,L0165
	brset	0,X0000,L0168
	brset	0,X0000,L016B
	brset	0,X0000,L016E
	brset	0,X0000,L0171
	brset	0,X0000,L0174
	brset	0,X0000,L0177
	brset	0,X0000,L017A
	brset	0,X0000,L017D
	brset	0,X0000,L0180
	brset	0,X0000,L0183
	brset	0,X0000,L0186
	brset	0,X0000,L0189
	brset	0,X0000,L018C
	brset	0,X0000,L018F
	brset	0,X0000,L0192
	brset	0,X0000,L0195
	brset	0,X0000,L0198
	brset	0,X0000,L019B
	brset	0,X0000,L019E
	brset	0,X0000,L01A1
	brset	0,X0000,L01A4
	brset	0,X0000,L01A7
	brset	0,X0000,L01AA
	brset	0,X0000,L01AD
	brset	0,X0000,L01B0
	brset	0,X0000,L01B3
	brset	0,X0000,L01B6
	brset	0,X0000,L01B9
	brset	0,X0000,L01BC
	brset	0,X0000,L01BF
	brset	0,X0000,L01C2
	brset	0,X0000,L01C5
	brset	0,X0000,L01C8
	brset	0,X0000,L01CB
	brset	0,X0000,L01CE
	brset	0,X0000,L01D1
	brset	0,X0000,L01D4
	brset	0,X0000,L01D7
	brset	0,X0000,L01DA
	brset	0,X0000,L01DD
	brset	0,X0000,L01E0
	brset	0,X0000,L01E3
	brset	0,X0000,L01E6
	brset	0,X0000,L01E9
	brset	0,X0000,L01EC
	brset	0,X0000,L01EF
	brset	0,X0000,L01F2
	brset	0,X0000,L01F5
	brset	0,X0000,L01F8
	brset	0,X0000,L01FB
	brset	0,X0000,L01FE
	brset	0,X0000,L0201
	brset	0,X0000,L0204
	brset	0,X0000,L0207
	brset	0,X0000,L020A
	brset	0,X0000,L020D
	brset	0,X0000,L0210
	brset	0,X0000,L0213
	brset	0,X0000,L0216
	brset	0,X0000,L0219
	brset	0,X0000,L021C
	brset	0,X0000,L021F
	brset	0,X0000,L0222
	brset	0,X0000,L0225
	brset	0,X0000,L0228
	brset	0,X0000,L022B
	brset	0,X0000,L022E
	brset	0,X0000,L0231
	brset	0,X0000,L0234
	brset	0,X0000,L0237
	brset	0,X0000,L023A
	brset	0,X0000,L023D
	brset	0,X0000,L0240
	brset	0,X0000,L0243
	brset	0,X0000,L0246
	brset	0,X0000,L0249
	brset	0,X0000,L024C
	brset	0,X0000,L024F
	brset	0,X0000,L0252
	brset	0,X0000,L0255
	brset	0,X0000,L0258
	brset	0,X0000,L025B
	brset	0,X0000,L025E
	brset	0,X0000,L0261
	brset	0,X0000,L0264
	brset	0,X0000,L0267
	brset	0,X0000,L026A
	brset	0,X0000,L026D
	brset	0,X0000,L0270
	brset	0,X0000,L0273
	brset	0,X0000,L0276
	brset	0,X0000,L0279
	brset	0,X0000,L027C
	brset	0,X0000,L027F
	brset	0,X0000,L0282
	brset	0,X0000,L0285
	brset	0,X0000,L0288
	brset	0,X0000,L028B
	brset	0,X0000,L028E
	brset	0,X0000,L0291
	brset	0,X0000,L0294
	brset	0,X0000,L0297
	brset	0,X0000,L029A
	brset	0,X0000,L029D
	brset	0,X0000,L02A0
	brset	0,X0000,L02A3
	brset	0,X0000,L02A6
	brset	0,X0000,L02A9
	brset	0,X0000,L02AC
	brset	0,X0000,L02AF
	brset	0,X0000,L02B2
	brset	0,X0000,L02B5
	brset	0,X0000,L02B8
	brset	0,X0000,L02BB
	brset	0,X0000,L02BE
	brset	0,X0000,L02C1
	brset	0,X0000,L02C4
	brset	0,X0000,L02C7
	brset	0,X0000,L02CA
	brset	0,X0000,L02CD
	brset	0,X0000,L02D0
	brset	0,X0000,L02D3
	brset	0,X0000,L02D6
	brset	0,X0000,L02D9
	brset	0,X0000,L02DC
	brset	0,X0000,L02DF
	brset	0,X0000,L02E2
	brset	0,X0000,L02E5
	brset	0,X0000,L02E8
	brset	0,X0000,L02EB
	brset	0,X0000,L02EE
	brset	0,X0000,L02F1
	brset	0,X0000,L02F4
	brset	0,X0000,L02F7
	brset	0,X0000,L02FA
	brset	0,X0000,L02FD
	brset	0,X0000,L0300
	brset	0,X0000,L0303
	brset	0,X0000,L0306
	brset	0,X0000,L0309
	brset	0,X0000,L030C
	brset	0,X0000,L030F
	brset	0,X0000,L0312
	brset	0,X0000,L0315
	brset	0,X0000,L0318
	brset	0,X0000,L031B
	brset	0,X0000,L031E
	brset	0,X0000,L0321
	brset	0,X0000,L0324
	brset	0,X0000,L0327
	brset	0,X0000,L032A
	brset	0,X0000,L032D
	brset	0,X0000,L0330
	brset	0,X0000,L0333
	brset	0,X0000,L0336
	brset	0,X0000,L0339
	brset	0,X0000,L033C
	brset	0,X0000,L033F
	brset	0,X0000,L0342
	brset	0,X0000,L0345
	brset	0,X0000,L0348
	brset	0,X0000,L034B
	brset	0,X0000,L034E
	brset	0,X0000,L0351
	brset	0,X0000,L0354
	brset	0,X0000,L0357
	brset	0,X0000,L035A
	brset	0,X0000,L035D
	brset	0,X0000,L0360
	brset	0,X0000,L0363
	brset	0,X0000,L0366
	brset	0,X0000,L0369
	brset	0,X0000,L036C
	brset	0,X0000,L036F
	brset	0,X0000,L0372
	brset	0,X0000,L0375
	brset	0,X0000,L0378
	brset	0,X0000,L037B
	brset	0,X0000,L037E
	brset	0,X0000,L0381
	brset	0,X0000,L0384
	brset	0,X0000,L0387
	brset	0,X0000,L038A
	brset	0,X0000,L038D
	brset	0,X0000,L0390
	brset	0,X0000,L0393
	brset	0,X0000,L0396
	brset	0,X0000,L0399
	brset	0,X0000,L039C
	brset	0,X0000,L039F
	brset	0,X0000,L03A2
	brset	0,X0000,L03A5
	brset	0,X0000,L03A8
	brset	0,X0000,L03AB
	brset	0,X0000,L03AE
	brset	0,X0000,L03B1
	brset	0,X0000,L03B4
	brset	0,X0000,L03B7
	brset	0,X0000,L03BA
	brset	0,X0000,L03BD
	brset	0,X0000,L03C0
	brset	0,X0000,L03C3
	brset	0,X0000,L03C6
	brset	0,X0000,L03C9
	brset	0,X0000,L03CC
	brset	0,X0000,L03CF
	brset	0,X0000,L03D2
	brset	0,X0000,L03D5
	brset	0,X0000,L03D8
	brset	0,X0000,L03DB
	brset	0,X0000,L03DE
	brset	0,X0000,L03E1
	brset	0,X0000,L03E4
	brset	0,X0000,L03E7
	brset	0,X0000,L03EA
	brset	0,X0000,L03ED
	brset	0,X0000,L03F0
	brset	0,X0000,L03F3
	brset	0,X0000,L03F6
	brset	0,X0000,L03F9
	brset	0,X0000,L03FC
	brset	0,X0000,L03FF
	brset	0,X0000,L0402
	brset	0,X0000,L0405
	brset	0,X0000,L0408
X6408:
	brset	0,X0000,L040B
	brset	0,X0000,L040E
	brset	0,X0000,L0411
	brset	0,X0000,L0414
	brset	0,X0000,L0417
	brset	0,X0000,L041A
	brset	0,X0000,L041D
	brset	0,X0000,L0420
	brset	0,X0000,L0423
	brset	0,X0000,L0426
	brset	0,X0000,L0429
	brset	0,X0000,L042C
	brset	0,X0000,L042F
	brset	0,X0000,L0432
	brset	0,X0000,L0435
	brset	0,X0000,L0438
	brset	0,X0000,L043B
	brset	0,X0000,L043E
	brset	0,X0000,L0441
	brset	0,X0000,L0444
	brset	0,X0000,L0447
	brset	0,X0000,L044A
	brset	0,X0000,L044D
	brset	0,X0000,L0450
	brset	0,X0000,L0453
	brset	0,X0000,L0456
	brset	0,X0000,L0459
	brset	0,X0000,L045C
	brset	0,X0000,L045F
	brset	0,X0000,L0462
	brset	0,X0000,L0465
	brset	0,X0000,L0468
	brset	0,X0000,L046B
	brset	0,X0000,L046E
	brset	0,X0000,L0471
	brset	0,X0000,L0474
	brset	0,X0000,L0477
	brset	0,X0000,L047A
	brset	0,X0000,L047D
	brset	0,X0000,L0480
	brset	0,X0000,L0483
	brset	0,X0000,L0486
	brset	0,X0000,L0489
	brset	0,X0000,L048C
	brset	0,X0000,L048F
	brset	0,X0000,L0492
	brset	0,X0000,L0495
	brset	0,X0000,L0498
	brset	0,X0000,L049B
	brset	0,X0000,L049E
	brset	0,X0000,L04A1
	brset	0,X0000,L04A4
	brset	0,X0000,L04A7
	brset	0,X0000,L04AA
	brset	0,X0000,L04AD
	brset	0,X0000,L04B0
	brset	0,X0000,L04B3
	brset	0,X0000,L04B6
	brset	0,X0000,L04B9
	brset	0,X0000,L04BC
	brset	0,X0000,L04BF
	brset	0,X0000,L04C2
	brset	0,X0000,L04C5
	brset	0,X0000,L04C8
	brset	0,X0000,L04CB
	brset	0,X0000,L04CE
	brset	0,X0000,L04D1
	brset	0,X0000,L04D4
	brset	0,X0000,L04D7
	brset	0,X0000,L04DA
	brset	0,X0000,L04DD
	brset	0,X0000,L04E0
	brset	0,X0000,L04E3
	brset	0,X0000,L04E6
	brset	0,X0000,L04E9
	brset	0,X0000,L04EC
	brset	0,X0000,L04EF
	brset	0,X0000,L04F2
	brset	0,X0000,L04F5
	brset	0,X0000,L04F8
	brset	0,X0000,L04FB
	brset	0,X0000,L04FE
	brset	0,X0000,L0501
	brset	0,X0000,L0504
	brset	0,X0000,L0507
	brset	0,X0000,L050A
	brset	0,X0000,L050D
	brset	0,X0000,L0510
	brset	0,X0000,L0513
	brset	0,X0000,L0516
	brset	0,X0000,L0519
	brset	0,X0000,L051C
	brset	0,X0000,L051F
	brset	0,X0000,L0522
	brset	0,X0000,L0525
	brset	0,X0000,L0528
	brset	0,X0000,L052B
	brset	0,X0000,L052E
	brset	0,X0000,L0531
	brset	0,X0000,L0534
	brset	0,X0000,L0537
	brset	0,X0000,L053A
	brset	0,X0000,L053D
	brset	0,X0000,L0540
	brset	0,X0000,L0543
	brset	0,X0000,L0546
	brset	0,X0000,L0549
	brset	0,X0000,L054C
	brset	0,X0000,L054F
	brset	0,X0000,L0552
	brset	0,X0000,L0555
	brset	0,X0000,L0558
	brset	0,X0000,L055B
	brset	0,X0000,L055E
	brset	0,X0000,L0561
	brset	0,X0000,L0564
	brset	0,X0000,L0567
	brset	0,X0000,L056A
	brset	0,X0000,L056D
	brset	0,X0000,L0570
	brset	0,X0000,L0573
	brset	0,X0000,L0576
	brset	0,X0000,L0579
	brset	0,X0000,L057C
	brset	0,X0000,L057F
	brset	0,X0000,L0582
	brset	0,X0000,L0585
	brset	0,X0000,L0588
	brset	0,X0000,L058B
	brset	0,X0000,L058E
	brset	0,X0000,L0591
	brset	0,X0000,L0594
	brset	0,X0000,L0597
	brset	0,X0000,L059A
	brset	0,X0000,L059D
	brset	0,X0000,L05A0
	brset	0,X0000,L05A3
	brset	0,X0000,L05A6
	brset	0,X0000,L05A9
	brset	0,X0000,L05AC
	brset	0,X0000,L05AF
	brset	0,X0000,L05B2
	brset	0,X0000,L05B5
	brset	0,X0000,L05B8
	brset	0,X0000,L05BB
	brset	0,X0000,L05BE
	brset	0,X0000,L05C1
	brset	0,X0000,L05C4
	brset	0,X0000,L05C7
	brset	0,X0000,L05CA
	brset	0,X0000,L05CD
	brset	0,X0000,L05D0
	brset	0,X0000,L05D3
	brset	0,X0000,L05D6
	brset	0,X0000,L05D9
	brset	0,X0000,L05DC
	brset	0,X0000,L05DF
	brset	0,X0000,L05E2
	brset	0,X0000,L05E5
	brset	0,X0000,L05E8
	brset	0,X0000,L05EB
	brset	0,X0000,L05EE
	brset	0,X0000,L05F1
	brset	0,X0000,L05F4
	brset	0,X0000,L05F7
	brset	0,X0000,L05FA
	brset	0,X0000,L05FD
	brset	0,X0000,L0600
	brset	0,X0000,L0603
	brset	0,X0000,L0606
	brset	0,X0000,L0609
	brset	0,X0000,L060C
	brset	0,X0000,L060F
	brset	0,X0000,L0612
	brset	0,X0000,L0615
	brset	0,X0000,L0618
	brset	0,X0000,L061B
	brset	0,X0000,L061E
	brset	0,X0000,L0621
	brset	0,X0000,L0624
	brset	0,X0000,L0627
	brset	0,X0000,L062A
	brset	0,X0000,L062D
	brset	0,X0000,L0630
	brset	0,X0000,L0633
	brset	0,X0000,L0636
	brset	0,X0000,L0639
	brset	0,X0000,L063C
	brset	0,X0000,L063F
	brset	0,X0000,L0642
	brset	0,X0000,L0645
	brset	0,X0000,L0648
	brset	0,X0000,L064B
	brset	0,X0000,L064E
	brset	0,X0000,L0651
	brset	0,X0000,L0654
	brset	0,X0000,L0657
	brset	0,X0000,L065A
	brset	0,X0000,L065D
	brset	0,X0000,L0660
	brset	0,X0000,L0663
	brset	0,X0000,L0666
	brset	0,X0000,L0669
	brset	0,X0000,L066C
	brset	0,X0000,L066F
	brset	0,X0000,L0672
	brset	0,X0000,L0675
	brset	0,X0000,L0678
	brset	0,X0000,L067B
	brset	0,X0000,L067E
	brset	0,X0000,L0681
	brset	0,X0000,L0684
	brset	0,X0000,L0687
	brset	0,X0000,L068A
	brset	0,X0000,L068D
	brset	0,X0000,L0690
	brset	0,X0000,L0693
	brset	0,X0000,L0696
	brset	0,X0000,L0699
	brset	0,X0000,L069C
	brset	0,X0000,L069F
	brset	0,X0000,L06A2
	brset	0,X0000,L06A5
	brset	0,X0000,L06A8
	brset	0,X0000,L06AB
	brset	0,X0000,L06AE
	brset	0,X0000,L06B1
	brset	0,X0000,L06B4
	brset	0,X0000,L06B7
	brset	0,X0000,L06BA
	brset	0,X0000,L06BD
	brset	0,X0000,L06C0
	brset	0,X0000,L06C3
	brset	0,X0000,L06C6
	brset	0,X0000,L06C9
	brset	0,X0000,L06CC
	brset	0,X0000,L06CF
	brset	0,X0000,L06D2
	brset	0,X0000,L06D5
	brset	0,X0000,L06D8
	brset	0,X0000,L06DB
	brset	0,X0000,L06DE
	brset	0,X0000,L06E1
	brset	0,X0000,L06E4
	brset	0,X0000,L06E7
	brset	0,X0000,L06EA
	brset	0,X0000,L06ED
	brset	0,X0000,L06F0
	brset	0,X0000,L06F3
	brset	0,X0000,L06F6
	brset	0,X0000,L06F9
	brset	0,X0000,L06FC
	brset	0,X0000,L06FF
	brset	0,X0000,L0702
	brset	0,X0000,L0705
	brset	0,X0000,L0708
	brset	0,X0000,L070B
	brset	0,X0000,L070E
	brset	0,X0000,L0711
	brset	0,X0000,L0714
	brset	0,X0000,L0717
	brset	0,X0000,L071A
	brset	0,X0000,L071D
	brset	0,X0000,L0720
	brset	0,X0000,L0723
	brset	0,X0000,L0726
	brset	0,X0000,L0729
	brset	0,X0000,L072C
	brset	0,X0000,L072F
	brset	0,X0000,L0732
	brset	0,X0000,L0735
	brset	0,X0000,L0738
	brset	0,X0000,L073B
	brset	0,X0000,L073E
	brset	0,X0000,L0741
	brset	0,X0000,L0744
	brset	0,X0000,L0747
	brset	0,X0000,L074A
	brset	0,X0000,L074D
	brset	0,X0000,L0750
	brset	0,X0000,L0753
	brset	0,X0000,L0756
	brset	0,X0000,L0759
	brset	0,X0000,L075C
	brset	0,X0000,L075F
	brset	0,X0000,L0762
	brset	0,X0000,L0765
	brset	0,X0000,L0768
	brset	0,X0000,L076B
	brset	0,X0000,L076E
	brset	0,X0000,L0771
	brset	0,X0000,L0774
	brset	0,X0000,L0777
	brset	0,X0000,L077A
	brset	0,X0000,L077D
	brset	0,X0000,L0780
	brset	0,X0000,L0783
	brset	0,X0000,L0786
	brset	0,X0000,L0789
	brset	0,X0000,L078C
	brset	0,X0000,L078F
	brset	0,X0000,L0792
	brset	0,X0000,L0795
	brset	0,X0000,L0798
	brset	0,X0000,L079B
	brset	0,X0000,L079E
	brset	0,X0000,L07A1
	brset	0,X0000,L07A4
	brset	0,X0000,L07A7
	brset	0,X0000,L07AA
	brset	0,X0000,L07AD
	brset	0,X0000,L07B0
	brset	0,X0000,L07B3
	brset	0,X0000,L07B6
	brset	0,X0000,L07B9
	brset	0,X0000,L07BC
	brset	0,X0000,L07BF
	brset	0,X0000,L07C2
	brset	0,X0000,L07C5
	brset	0,X0000,L07C8
	brset	0,X0000,L07CB
	brset	0,X0000,L07CE
	brset	0,X0000,L07D1
	brset	0,X0000,L07D4
	brset	0,X0000,L07D7
	brset	0,X0000,L07DA
	brset	0,X0000,L07DD
	brset	0,X0000,L07E0
	brset	0,X0000,L07E3
	brset	0,X0000,L07E6
	brset	0,X0000,L07E9
	brset	0,X0000,L07EC
	brset	0,X0000,L07EF
	brset	0,X0000,L07F2
	brset	0,X0000,L07F5
	brset	0,X0000,L07F8
	brset	0,X0000,L07FB
	brset	0,X0000,L07FE
	brset	0,X0000,L0001
	brset	0,X0000,L0004
	brset	0,X0000,L0007
	brset	0,X0000,L000A
	brset	0,X0000,L000D
	brset	0,X0000,L0010
	brset	0,X0000,L0013
	brset	0,X0000,L0016
	brset	0,X0000,L0019
	brset	0,X0000,L001C
	brset	0,X0000,L001F
	brset	0,X0000,L0022
	brset	0,X0000,L0025
	brset	0,X0000,L0028
	brset	0,X0000,L002B
	brset	0,X0000,L002E
	brset	0,X0000,L0031
	brset	0,X0000,L0034
	brset	0,X0000,L0037
	brset	0,X0000,L003A
	brset	0,X0000,L003D
	brset	0,X0000,L0040
	brset	0,X0000,L0043
	brset	0,X0000,L0046
	brset	0,X0000,L0049
	brset	0,X0000,L004C
	brset	0,X0000,L004F
	brset	0,X0000,L0052
	brset	0,X0000,L0055
	brset	0,X0000,L0058
	brset	0,X0000,L005B
	brset	0,X0000,L005E
	brset	0,X0000,L0061
	brset	0,X0000,L0064
	brset	0,X0000,L0067
	brset	0,X0000,L006A
	brset	0,X0000,L006D
	brset	0,X0000,L0070
	brset	0,X0000,L0073
	brset	0,X0000,L0076
	brset	0,X0000,L0079
	brset	0,X0000,L007C
	brset	0,X0000,L007F
	brset	0,X0000,L0082
	brset	0,X0000,L0085
	brset	0,X0000,L0088
	brset	0,X0000,L008B
	brset	0,X0000,L008E
	brset	0,X0000,L0091
	brset	0,X0000,L0094
	brset	0,X0000,L0097
	brset	0,X0000,L009A
	brset	0,X0000,L009D
	brset	0,X0000,L00A0
	brset	0,X0000,L00A3
	brset	0,X0000,L00A6
	brset	0,X0000,L00A9
	brset	0,X0000,L00AC
	brset	0,X0000,L00AF
	brset	0,X0000,L00B2
	brset	0,X0000,L00B5
	brset	0,X0000,L00B8
	brset	0,X0000,L00BB
	brset	0,X0000,L00BE
	brset	0,X0000,L00C1
	brset	0,X0000,L00C4
	brset	0,X0000,L00C7
	brset	0,X0000,L00CA
	brset	0,X0000,L00CD
	brset	0,X0000,L00D0
	brset	0,X0000,L00D3
	brset	0,X0000,L00D6
	brset	0,X0000,L00D9
	brset	0,X0000,L00DC
	brset	0,X0000,L00DF
	brset	0,X0000,L00E2
	brset	0,X0000,L00E5
	brset	0,X0000,L00E8
	brset	0,X0000,L00EB
	brset	0,X0000,L00EE
	brset	0,X0000,L00F1
	brset	0,X0000,L00F4
	brset	0,X0000,L00F7
	brset	0,X0000,L00FA
	brset	0,X0000,L00FD
	brset	0,X0000,L0100
	brset	0,X0000,L0103
	brset	0,X0000,L0106
	brset	0,X0000,L0109
	brset	0,X0000,L010C
	brset	0,X0000,L010F
	brset	0,X0000,L0112
	brset	0,X0000,L0115
	brset	0,X0000,L0118
	brset	0,X0000,L011B
	brset	0,X0000,L011E
	brset	0,X0000,L0121
	brset	0,X0000,L0124
	brset	0,X0000,L0127
	brset	0,X0000,L012A
	brset	0,X0000,L012D
	brset	0,X0000,L0130
	brset	0,X0000,L0133
	brset	0,X0000,L0136
	brset	0,X0000,L0139
	brset	0,X0000,L013C
	brset	0,X0000,L013F
	brset	0,X0000,L0142
	brset	0,X0000,L0145
	brset	0,X0000,L0148
	brset	0,X0000,L014B
	brset	0,X0000,L014E
	brset	0,X0000,L0151
	brset	0,X0000,L0154
	brset	0,X0000,L0157
	brset	0,X0000,L015A
	brset	0,X0000,L015D
	brset	0,X0000,L0160
	brset	0,X0000,L0163
	brset	0,X0000,L0166
	brset	0,X0000,L0169
	brset	0,X0000,L016C
	brset	0,X0000,L016F
	brset	0,X0000,L0172
	brset	0,X0000,L0175
	brset	0,X0000,L0178
	brset	0,X0000,L017B
	brset	0,X0000,L017E
	brset	0,X0000,L0181
	brset	0,X0000,L0184
	brset	0,X0000,L0187
	brset	0,X0000,L018A
	brset	0,X0000,L018D
	brset	0,X0000,L0190
	brset	0,X0000,L0193
	brset	0,X0000,L0196
	brset	0,X0000,L0199
	brset	0,X0000,L019C
	brset	0,X0000,L019F
	brset	0,X0000,L01A2
	brset	0,X0000,L01A5
	brset	0,X0000,L01A8
	brset	0,X0000,L01AB
	brset	0,X0000,L01AE
	brset	0,X0000,L01B1
	brset	0,X0000,L01B4
	brset	0,X0000,L01B7
	brset	0,X0000,L01BA
	brset	0,X0000,L01BD
	brset	0,X0000,L01C0
	brset	0,X0000,L01C3
	brset	0,X0000,L01C6
	brset	0,X0000,L01C9
	brset	0,X0000,L01CC
	brset	0,X0000,L01CF
	brset	0,X0000,L01D2
	brset	0,X0000,L01D5
	brset	0,X0000,L01D8
	brset	0,X0000,L01DB
	brset	0,X0000,L01DE
	brset	0,X0000,L01E1
	brset	0,X0000,L01E4
	brset	0,X0000,L01E7
	brset	0,X0000,L01EA
	brset	0,X0000,L01ED
	brset	0,X0000,L01F0
	brset	0,X0000,L01F3
	brset	0,X0000,L01F6
	brset	0,X0000,L01F9
	brset	0,X0000,L01FC
	brset	0,X0000,L01FF
	brset	0,X0000,L0202
	brset	0,X0000,L0205
	brset	0,X0000,L0208
	brset	0,X0000,L020B
	brset	0,X0000,L020E
	brset	0,X0000,L0211
	brset	0,X0000,L0214
	brset	0,X0000,L0217
	brset	0,X0000,L021A
	brset	0,X0000,L021D
	brset	0,X0000,L0220
	brset	0,X0000,L0223
	brset	0,X0000,L0226
	brset	0,X0000,L0229
	brset	0,X0000,L022C
	brset	0,X0000,L022F
	brset	0,X0000,L0232
	brset	0,X0000,L0235
	brset	0,X0000,L0238
	brset	0,X0000,L023B
	brset	0,X0000,L023E
	brset	0,X0000,L0241
	brset	0,X0000,L0244
	brset	0,X0000,L0247
	brset	0,X0000,L024A
	brset	0,X0000,L024D
	brset	0,X0000,L0250
	brset	0,X0000,L0253
	brset	0,X0000,L0256
	brset	0,X0000,L0259
	brset	0,X0000,L025C
	brset	0,X0000,L025F
	brset	0,X0000,L0262
	brset	0,X0000,L0265
	brset	0,X0000,L0268
	brset	0,X0000,L026B
	brset	0,X0000,L026E
	brset	0,X0000,L0271
	brset	0,X0000,L0274
	brset	0,X0000,L0277
	brset	0,X0000,L027A
	brset	0,X0000,L027D
	brset	0,X0000,L0280
	brset	0,X0000,L0283
	brset	0,X0000,L0286
	brset	0,X0000,L0289
	brset	0,X0000,L028C
	brset	0,X0000,L028F
	brset	0,X0000,L0292
	brset	0,X0000,L0295
	brset	0,X0000,L0298
	brset	0,X0000,L029B
	brset	0,X0000,L029E
	brset	0,X0000,L02A1
	brset	0,X0000,L02A4
	brset	0,X0000,L02A7
	brset	0,X0000,L02AA
	brset	0,X0000,L02AD
	brset	0,X0000,L02B0
	brset	0,X0000,L02B3
	brset	0,X0000,L02B6
	brset	0,X0000,L02B9
	brset	0,X0000,L02BC
	brset	0,X0000,L02BF
	brset	0,X0000,L02C2
	brset	0,X0000,L02C5
	brset	0,X0000,L02C8
	brset	0,X0000,L02CB
	brset	0,X0000,L02CE
	brset	0,X0000,L02D1
	brset	0,X0000,L02D4
	brset	0,X0000,L02D7
	brset	0,X0000,L02DA
	brset	0,X0000,L02DD
	brset	0,X0000,L02E0
	brset	0,X0000,L02E3
	brset	0,X0000,L02E6
	brset	0,X0000,L02E9
	brset	0,X0000,L02EC
	brset	0,X0000,L02EF
	brset	0,X0000,L02F2
	brset	0,X0000,L02F5
	brset	0,X0000,L02F8
	brset	0,X0000,L02FB
	brset	0,X0000,L02FE
	brset	0,X0000,L0301
	brset	0,X0000,L0304
	brset	0,X0000,L0307
	brset	0,X0000,L030A
	brset	0,X0000,L030D
	brset	0,X0000,L0310
	brset	0,X0000,L0313
	brset	0,X0000,L0316
	brset	0,X0000,L0319
	brset	0,X0000,L031C
	brset	0,X0000,L031F
	brset	0,X0000,L0322
	brset	0,X0000,L0325
	brset	0,X0000,L0328
	brset	0,X0000,L032B
	brset	0,X0000,L032E
	brset	0,X0000,L0331
	brset	0,X0000,L0334
	brset	0,X0000,L0337
	brset	0,X0000,L033A
	brset	0,X0000,L033D
	brset	0,X0000,L0340
	brset	0,X0000,L0343
	brset	0,X0000,L0346
	brset	0,X0000,L0349
	brset	0,X0000,L034C
	brset	0,X0000,L034F
	brset	0,X0000,L0352
	brset	0,X0000,L0355
	brset	0,X0000,L0358
	brset	0,X0000,L035B
	brset	0,X0000,L035E
	brset	0,X0000,L0361
	brset	0,X0000,L0364
	brset	0,X0000,L0367
	brset	0,X0000,L036A
	brset	0,X0000,L036D
	brset	0,X0000,L0370
	brset	0,X0000,L0373
	brset	0,X0000,L0376
	brset	0,X0000,L0379
	brset	0,X0000,L037C
	brset	0,X0000,L037F
	brset	0,X0000,L0382
	brset	0,X0000,L0385
	brset	0,X0000,L0388
	brset	0,X0000,L038B
	brset	0,X0000,L038E
	brset	0,X0000,L0391
	brset	0,X0000,L0394
	brset	0,X0000,L0397
	brset	0,X0000,L039A
	brset	0,X0000,L039D
	brset	0,X0000,L03A0
	brset	0,X0000,L03A3
	brset	0,X0000,L03A6
	brset	0,X0000,L03A9
	brset	0,X0000,L03AC
	brset	0,X0000,L03AF
	brset	0,X0000,L03B2
	brset	0,X0000,L03B5
	brset	0,X0000,L03B8
	brset	0,X0000,L03BB
	brset	0,X0000,L03BE
	brset	0,X0000,L03C1
	brset	0,X0000,L03C4
	brset	0,X0000,L03C7
	brset	0,X0000,L03CA
	brset	0,X0000,L03CD
	brset	0,X0000,L03D0
	brset	0,X0000,L03D3
	brset	0,X0000,L03D6
	brset	0,X0000,L03D9
	brset	0,X0000,L03DC
	brset	0,X0000,L03DF
	brset	0,X0000,L03E2
	brset	0,X0000,L03E5
	brset	0,X0000,L03E8
	brset	0,X0000,L03EB
	brset	0,X0000,L03EE
	brset	0,X0000,L03F1
	brset	0,X0000,L03F4
	brset	0,X0000,L03F7
	brset	0,X0000,L03FA
	brset	0,X0000,L03FD
	brset	0,X0000,L0400
	brset	0,X0000,L0403
	brset	0,X0000,L0406
	brset	0,X0000,L0409
	brset	0,X0000,L040C
	brset	0,X0000,L040F
	brset	0,X0000,L0412
	brset	0,X0000,L0415
	brset	0,X0000,L0418
	brset	0,X0000,L041B
	brset	0,X0000,L041E
	brset	0,X0000,L0421
	brset	0,X0000,L0424
	brset	0,X0000,L0427
	brset	0,X0000,L042A
	brset	0,X0000,L042D
	brset	0,X0000,L0430
	brset	0,X0000,L0433
	brset	0,X0000,L0436
	brset	0,X0000,L0439
	brset	0,X0000,L043C
	brset	0,X0000,L043F
	brset	0,X0000,L0442
	brset	0,X0000,L0445
	brset	0,X0000,L0448
	brset	0,X0000,L044B
	brset	0,X0000,L044E
	brset	0,X0000,L0451
	brset	0,X0000,L0454
	brset	0,X0000,L0457
	brset	0,X0000,L045A
	brset	0,X0000,L045D
	brset	0,X0000,L0460
	brset	0,X0000,L0463
	brset	0,X0000,L0466
	brset	0,X0000,L0469
	brset	0,X0000,L046C
	brset	0,X0000,L046F
	brset	0,X0000,L0472
	brset	0,X0000,L0475
	brset	0,X0000,L0478
	brset	0,X0000,L047B
	brset	0,X0000,L047E
	brset	0,X0000,L0481
	brset	0,X0000,L0484
	brset	0,X0000,L0487
	brset	0,X0000,L048A
	brset	0,X0000,L048D
	brset	0,X0000,L0490
	brset	0,X0000,L0493
	brset	0,X0000,L0496
	brset	0,X0000,L0499
	brset	0,X0000,L049C
	brset	0,X0000,L049F
	brset	0,X0000,L04A2
	brset	0,X0000,L04A5
	brset	0,X0000,L04A8
	brset	0,X0000,L04AB
	brset	0,X0000,L04AE
	brset	0,X0000,L04B1
	brset	0,X0000,L04B4
	brset	0,X0000,L04B7
	brset	0,X0000,L04BA
	brset	0,X0000,L04BD
	brset	0,X0000,L04C0
	brset	0,X0000,L04C3
	brset	0,X0000,L04C6
	brset	0,X0000,L04C9
	brset	0,X0000,L04CC
	brset	0,X0000,L04CF
	brset	0,X0000,L04D2
	brset	0,X0000,L04D5
	brset	0,X0000,L04D8
	brset	0,X0000,L04DB
	brset	0,X0000,L04DE
	brset	0,X0000,L04E1
	brset	0,X0000,L04E4
	brset	0,X0000,L04E7
	brset	0,X0000,L04EA
	brset	0,X0000,L04ED
	brset	0,X0000,L04F0
	brset	0,X0000,L04F3
	brset	0,X0000,L04F6
	brset	0,X0000,L04F9
	brset	0,X0000,L04FC
	brset	0,X0000,L04FF
	brset	0,X0000,L0502
	brset	0,X0000,L0505
	brset	0,X0000,L0508
	brset	0,X0000,L050B
	brset	0,X0000,L050E
	brset	0,X0000,L0511
	brset	0,X0000,L0514
	brset	0,X0000,L0517
	brset	0,X0000,L051A
	brset	0,X0000,L051D
	brset	0,X0000,L0520
	brset	0,X0000,L0523
	brset	0,X0000,L0526
	brset	0,X0000,L0529
	brset	0,X0000,L052C
	brset	0,X0000,L052F
	brset	0,X0000,L0532
	brset	0,X0000,L0535
	brset	0,X0000,L0538
	brset	0,X0000,L053B
	brset	0,X0000,L053E
	brset	0,X0000,L0541
	brset	0,X0000,L0544
	brset	0,X0000,L0547
	brset	0,X0000,L054A
	brset	0,X0000,L054D
	brset	0,X0000,L0550
	brset	0,X0000,L0553
	brset	0,X0000,L0556
	brset	0,X0000,L0559
	brset	0,X0000,L055C
	brset	0,X0000,L055F
	brset	0,X0000,L0562
	brset	0,X0000,L0565
	brset	0,X0000,L0568
	brset	0,X0000,L056B
	brset	0,X0000,L056E
	brset	0,X0000,L0571
	brset	0,X0000,L0574
	brset	0,X0000,L0577
	brset	0,X0000,L057A
	brset	0,X0000,L057D
	brset	0,X0000,L0580
	brset	0,X0000,L0583
	brset	0,X0000,L0586
	brset	0,X0000,L0589
	brset	0,X0000,L058C
	brset	0,X0000,L058F
	brset	0,X0000,L0592
	brset	0,X0000,L0595
	brset	0,X0000,L0598
	brset	0,X0000,L059B
	brset	0,X0000,L059E
	brset	0,X0000,L05A1
	brset	0,X0000,L05A4
	brset	0,X0000,L05A7
	brset	0,X0000,L05AA
	brset	0,X0000,L05AD
	brset	0,X0000,L05B0
	brset	0,X0000,L05B3
	brset	0,X0000,L05B6
	brset	0,X0000,L05B9
	brset	0,X0000,L05BC
	brset	0,X0000,L05BF
	brset	0,X0000,L05C2
	brset	0,X0000,L05C5
	brset	0,X0000,L05C8
	brset	0,X0000,L05CB
	brset	0,X0000,L05CE
	brset	0,X0000,L05D1
	brset	0,X0000,L05D4
	brset	0,X0000,L05D7
	brset	0,X0000,L05DA
	brset	0,X0000,L05DD
	brset	0,X0000,L05E0
	brset	0,X0000,L05E3
	brset	0,X0000,L05E6
	brset	0,X0000,L05E9
	brset	0,X0000,L05EC
	brset	0,X0000,L05EF
	brset	0,X0000,L05F2
	brset	0,X0000,L05F5
	brset	0,X0000,L05F8
	brset	0,X0000,L05FB
	brset	0,X0000,L05FE
	brset	0,X0000,L0601
	brset	0,X0000,L0604
	brset	0,X0000,L0607
	brset	0,X0000,L060A
	brset	0,X0000,L060D
	brset	0,X0000,L0610
	brset	0,X0000,L0613
	brset	0,X0000,L0616
	brset	0,X0000,L0619
	brset	0,X0000,L061C
	brset	0,X0000,L061F
	brset	0,X0000,L0622
	brset	0,X0000,L0625
	brset	0,X0000,L0628
	brset	0,X0000,L062B
	brset	0,X0000,L062E
	brset	0,X0000,L0631
	brset	0,X0000,L0634
	brset	0,X0000,L0637
	brset	0,X0000,L063A
	brset	0,X0000,L063D
	brset	0,X0000,L0640
	brset	0,X0000,L0643
	brset	0,X0000,L0646
	brset	0,X0000,L0649
	brset	0,X0000,L064C
	brset	0,X0000,L064F
	brset	0,X0000,L0652
	brset	0,X0000,L0655
	brset	0,X0000,L0658
	brset	0,X0000,L065B
	brset	0,X0000,L065E
	brset	0,X0000,L0661
	brset	0,X0000,L0664
	brset	0,X0000,L0667
	brset	0,X0000,L066A
	brset	0,X0000,L066D
	brset	0,X0000,L0670
	brset	0,X0000,L0673
	brset	0,X0000,L0676
	brset	0,X0000,L0679
	brset	0,X0000,L067C
	brset	0,X0000,L067F
	brset	0,X0000,L0682
	brset	0,X0000,L0685
	brset	0,X0000,L0688
	brset	0,X0000,L068B
	brset	0,X0000,L068E
	brset	0,X0000,L0691
	brset	0,X0000,L0694
	brset	0,X0000,L0697
	brset	0,X0000,L069A
	brset	0,X0000,L069D
	brset	0,X0000,L06A0
	brset	0,X0000,L06A3
	brset	0,X0000,L06A6
	brset	0,X0000,L06A9
	brset	0,X0000,L06AC
	brset	0,X0000,L06AF
	brset	0,X0000,L06B2
	brset	0,X0000,L06B5
	brset	0,X0000,L06B8
	brset	0,X0000,L06BB
	brset	0,X0000,L06BE
	brset	0,X0000,L06C1
	brset	0,X0000,L06C4
	brset	0,X0000,L06C7
	brset	0,X0000,L06CA
	brset	0,X0000,L06CD
	brset	0,X0000,L06D0
	brset	0,X0000,L06D3
	brset	0,X0000,L06D6
	brset	0,X0000,L06D9
	brset	0,X0000,L06DC
	brset	0,X0000,L06DF
	brset	0,X0000,L06E2
	brset	0,X0000,L06E5
	brset	0,X0000,L06E8
	brset	0,X0000,L06EB
	brset	0,X0000,L06EE
	brset	0,X0000,L06F1
	brset	0,X0000,L06F4
	brset	0,X0000,L06F7
	brset	0,X0000,L06FA
	brset	0,X0000,L06FD
	brset	0,X0000,L0700
	brset	0,X0000,L0703
	brset	0,X0000,L0706
	brset	0,X0000,L0709
	brset	0,X0000,L070C
	brset	0,X0000,L070F
	brset	0,X0000,L0712
	brset	0,X0000,L0715
	brset	0,X0000,L0718
	brset	0,X0000,L071B
	brset	0,X0000,L071E
	brset	0,X0000,L0721
	brset	0,X0000,L0724
	brset	0,X0000,L0727
	brset	0,X0000,L072A
	brset	0,X0000,L072D
	brset	0,X0000,L0730
	brset	0,X0000,L0733
	brset	0,X0000,L0736
	brset	0,X0000,L0739
	brset	0,X0000,L073C
	brset	0,X0000,L073F
	brset	0,X0000,L0742
	brset	0,X0000,L0745
	brset	0,X0000,L0748
	brset	0,X0000,L074B
	brset	0,X0000,L074E
	brset	0,X0000,L0751
	brset	0,X0000,L0754
	brset	0,X0000,L0757
	brset	0,X0000,L075A
	brset	0,X0000,L075D
	brset	0,X0000,L0760
	brset	0,X0000,L0763
	brset	0,X0000,L0766
	brset	0,X0000,L0769
	brset	0,X0000,L076C
	brset	0,X0000,L076F
	brset	0,X0000,L0772
	brset	0,X0000,L0775
	brset	0,X0000,L0778
	brset	0,X0000,L077B
	brset	0,X0000,L077E
	brset	0,X0000,L0781
	brset	0,X0000,L0784
	brset	0,X0000,L0787
	brset	0,X0000,L078A
	brset	0,X0000,L078D
	brset	0,X0000,L0790
	brset	0,X0000,L0793
	brset	0,X0000,L0796
	brset	0,X0000,L0799
	brset	0,X0000,L079C
	brset	0,X0000,L079F
	brset	0,X0000,L07A2
	brset	0,X0000,L07A5
	brset	0,X0000,L07A8
	brset	0,X0000,L07AB
	brset	0,X0000,L07AE
	brset	0,X0000,L07B1
	brset	0,X0000,L07B4
	brset	0,X0000,L07B7
	brset	0,X0000,L07BA
	brset	0,X0000,L07BD
	brset	0,X0000,L07C0
	brset	0,X0000,L07C3
	brset	0,X0000,L07C6
	brset	0,X0000,L07C9
	brset	0,X0000,L07CC
	brset	0,X0000,L07CF
	brset	0,X0000,L07D2
	brset	0,X0000,L07D5
	brset	0,X0000,L07D8
	brset	0,X0000,L07DB
	brset	0,X0000,L07DE
	brset	0,X0000,L07E1
	brset	0,X0000,L07E4
	brset	0,X0000,L07E7
	brset	0,X0000,L07EA
	brset	0,X0000,L07ED
	brset	0,X0000,L07F0
	brset	0,X0000,L07F3
	brset	0,X0000,L07F6
	brset	0,X0000,L07F9
	brset	0,X0000,L07FC
	brset	0,X0000,L07FF
	brset	0,X0000,L0002
	brset	0,X0000,L0005
	brset	0,X0000,L0008
	brset	0,X0000,L000B
	brset	0,X0000,L000E
	brset	0,X0000,L0011
	brset	0,X0000,L0014
	brset	0,X0000,L0017
	brset	0,X0000,L001A
	brset	0,X0000,L001D
	brset	0,X0000,L0020
	brset	0,X0000,L0023
	brset	0,X0000,L0026
	brset	0,X0000,L0029
	brset	0,X0000,L002C
	brset	0,X0000,L002F
	brset	0,X0000,L0032
	brset	0,X0000,L0035
	brset	0,X0000,L0038
	brset	0,X0000,L003B
	brset	0,X0000,L003E
	brset	0,X0000,L0041
	brset	0,X0000,L0044
	brset	0,X0000,L0047
	brset	0,X0000,L004A
	brset	0,X0000,L004D
	brset	0,X0000,L0050
	brset	0,X0000,L0053
	brset	0,X0000,L0056
	brset	0,X0000,L0059
	brset	0,X0000,L005C
	brset	0,X0000,L005F
	brset	0,X0000,L0062
	brset	0,X0000,L0065
	brset	0,X0000,L0068
	brset	0,X0000,L006B
	brset	0,X0000,L006E
	brset	0,X0000,L0071
	brset	0,X0000,L0074
	brset	0,X0000,L0077
	brset	0,X0000,L007A
	brset	0,X0000,L007D
	brset	0,X0000,L0080
	brset	0,X0000,L0083
	brset	0,X0000,L0086
	brset	0,X0000,L0089
	brset	0,X0000,L008C
	brset	0,X0000,L008F
	brset	0,X0000,L0092
	brset	0,X0000,L0095
	brset	0,X0000,L0098
	brset	0,X0000,L009B
	brset	0,X0000,L009E
	brset	0,X0000,L00A1
	brset	0,X0000,L00A4
	brset	0,X0000,L00A7
	brset	0,X0000,L00AA
	brset	0,X0000,L00AD
	brset	0,X0000,L00B0
	brset	0,X0000,L00B3
	brset	0,X0000,L00B6
	brset	0,X0000,L00B9
	brset	0,X0000,L00BC
	brset	0,X0000,L00BF
	brset	0,X0000,L00C2
	brset	0,X0000,L00C5
	brset	0,X0000,L00C8
	brset	0,X0000,L00CB
	brset	0,X0000,L00CE
	brset	0,X0000,L00D1
	brset	0,X0000,L00D4
	brset	0,X0000,L00D7
	brset	0,X0000,L00DA
	brset	0,X0000,L00DD
	brset	0,X0000,L00E0
	brset	0,X0000,L00E3
	brset	0,X0000,L00E6
	brset	0,X0000,L00E9
	brset	0,X0000,L00EC
	brset	0,X0000,L00EF
	brset	0,X0000,L00F2
	brset	0,X0000,L00F5
	brset	0,X0000,L00F8
	brset	0,X0000,L00FB
	brset	0,X0000,L00FE
	brset	0,X0000,L0101
	brset	0,X0000,L0104
	brset	0,X0000,L0107
	brset	0,X0000,L010A
	brset	0,X0000,L010D
	brset	0,X0000,L0110
	brset	0,X0000,L0113
	brset	0,X0000,L0116
	brset	0,X0000,L0119
	brset	0,X0000,L011C
	brset	0,X0000,L011F
	brset	0,X0000,L0122
	brset	0,X0000,L0125
	brset	0,X0000,L0128
	brset	0,X0000,L012B
	brset	0,X0000,L012E
	brset	0,X0000,L0131
	brset	0,X0000,L0134
	brset	0,X0000,L0137
	brset	0,X0000,L013A
	brset	0,X0000,L013D
	brset	0,X0000,L0140
	brset	0,X0000,L0143
	brset	0,X0000,L0146
	brset	0,X0000,L0149
	brset	0,X0000,L014C
	brset	0,X0000,L014F
	brset	0,X0000,L0152
	brset	0,X0000,L0155
	brset	0,X0000,L0158
	brset	0,X0000,L015B
	brset	0,X0000,L015E
	brset	0,X0000,L0161
	brset	0,X0000,L0164
	brset	0,X0000,L0167
	brset	0,X0000,L016A
	brset	0,X0000,L016D
	brset	0,X0000,L0170
	brset	0,X0000,L0173
	brset	0,X0000,L0176
	brset	0,X0000,L0179
	brset	0,X0000,L017C
	brset	0,X0000,L017F
	brset	0,X0000,L0182
	brset	0,X0000,L0185
	brset	0,X0000,L0188
	brset	0,X0000,L018B
	brset	0,X0000,L018E
	brset	0,X0000,L0191
	brset	0,X0000,L0194
	brset	0,X0000,L0197
	brset	0,X0000,L019A
	brset	0,X0000,L019D
	brset	0,X0000,L01A0
	brset	0,X0000,L01A3
	brset	0,X0000,L01A6
	brset	0,X0000,L01A9
	brset	0,X0000,L01AC
	brset	0,X0000,L01AF
	brset	0,X0000,L01B2
	brset	0,X0000,L01B5
	brset	0,X0000,L01B8
	brset	0,X0000,L01BB
	brset	0,X0000,L01BE
	brset	0,X0000,L01C1
	brset	0,X0000,L01C4
	brset	0,X0000,L01C7
	brset	0,X0000,L01CA
	brset	0,X0000,L01CD
	brset	0,X0000,L01D0
	brset	0,X0000,L01D3
	brset	0,X0000,L01D6
	brset	0,X0000,L01D9
	brset	0,X0000,L01DC
	brset	0,X0000,L01DF
	brset	0,X0000,L01E2
	brset	0,X0000,L01E5
	brset	0,X0000,L01E8
	brset	0,X0000,L01EB
	brset	0,X0000,L01EE
	brset	0,X0000,L01F1
	brset	0,X0000,L01F4
	brset	0,X0000,L01F7
	brset	0,X0000,L01FA
	brset	0,X0000,L01FD
	brset	0,X0000,L0200
	brset	0,X0000,L0203
	brset	0,X0000,L0206
	brset	0,X0000,L0209
	brset	0,X0000,L020C
	brset	0,X0000,L020F
	brset	0,X0000,L0212
	brset	0,X0000,L0215
	brset	0,X0000,L0218
	brset	0,X0000,L021B
	brset	0,X0000,L021E
	brset	0,X0000,L0221
	brset	0,X0000,L0224
	brset	0,X0000,L0227
	brset	0,X0000,L022A
	brset	0,X0000,L022D
	brset	0,X0000,L0230
	brset	0,X0000,L0233
	brset	0,X0000,L0236
	brset	0,X0000,L0239
	brset	0,X0000,L023C
	brset	0,X0000,L023F
	brset	0,X0000,L0242
	brset	0,X0000,L0245
	brset	0,X0000,L0248
	brset	0,X0000,L024B
	brset	0,X0000,L024E
	brset	0,X0000,L0251
	brset	0,X0000,L0254
	brset	0,X0000,L0257
	brset	0,X0000,L025A
	brset	0,X0000,L025D
	brset	0,X0000,L0260
	brset	0,X0000,L0263
	brset	0,X0000,L0266
	brset	0,X0000,L0269
	brset	0,X0000,L026C
	brset	0,X0000,L026F
	brset	0,X0000,L0272
	brset	0,X0000,L0275
	brset	0,X0000,L0278
	brset	0,X0000,L027B
	brset	0,X0000,L027E
	brset	0,X0000,L0281
	brset	0,X0000,L0284
	brset	0,X0000,L0287
	brset	0,X0000,L028A
	brset	0,X0000,L028D
	brset	0,X0000,L0290
	brset	0,X0000,L0293
	brset	0,X0000,L0296
	brset	0,X0000,L0299
	brset	0,X0000,L029C
	brset	0,X0000,L029F
	brset	0,X0000,L02A2
	brset	0,X0000,L02A5
	brset	0,X0000,L02A8
	brset	0,X0000,L02AB
	brset	0,X0000,L02AE
	brset	0,X0000,L02B1
	brset	0,X0000,L02B4
	brset	0,X0000,L02B7
	brset	0,X0000,L02BA
	brset	0,X0000,L02BD
	brset	0,X0000,L02C0
	brset	0,X0000,L02C3
	brset	0,X0000,L02C6
	brset	0,X0000,L02C9
	brset	0,X0000,L02CC
	brset	0,X0000,L02CF
	brset	0,X0000,L02D2
	brset	0,X0000,L02D5
	brset	0,X0000,L02D8
	brset	0,X0000,L02DB
	brset	0,X0000,L02DE
	brset	0,X0000,L02E1
	brset	0,X0000,L02E4
	brset	0,X0000,L02E7
	brset	0,X0000,L02EA
	brset	0,X0000,L02ED
	brset	0,X0000,L02F0
	brset	0,X0000,L02F3
	brset	0,X0000,L02F6
	brset	0,X0000,L02F9
	brset	0,X0000,L02FC
	brset	0,X0000,L02FF
	brset	0,X0000,L0302
	brset	0,X0000,L0305
	brset	0,X0000,L0308
	brset	0,X0000,L030B
	brset	0,X0000,L030E
	brset	0,X0000,L0311
	brset	0,X0000,L0314
	brset	0,X0000,L0317
	brset	0,X0000,L031A
	brset	0,X0000,L031D
	brset	0,X0000,L0320
	brset	0,X0000,L0323
	brset	0,X0000,L0326
	brset	0,X0000,L0329
	brset	0,X0000,L032C
	brset	0,X0000,L032F
	brset	0,X0000,L0332
	brset	0,X0000,L0335
	brset	0,X0000,L0338
	brset	0,X0000,L033B
	brset	0,X0000,L033E
	brset	0,X0000,L0341
	brset	0,X0000,L0344
	brset	0,X0000,L0347
	brset	0,X0000,L034A
	brset	0,X0000,L034D
	brset	0,X0000,L0350
	brset	0,X0000,L0353
	brset	0,X0000,L0356
	brset	0,X0000,L0359
	brset	0,X0000,L035C
	brset	0,X0000,L035F
	brset	0,X0000,L0362
	brset	0,X0000,L0365
	brset	0,X0000,L0368
	brset	0,X0000,L036B
	brset	0,X0000,L036E
	brset	0,X0000,L0371
	brset	0,X0000,L0374
	brset	0,X0000,L0377
	brset	0,X0000,L037A
	brset	0,X0000,L037D
	brset	0,X0000,L0380
	brset	0,X0000,L0383
	brset	0,X0000,L0386
	brset	0,X0000,L0389
	brset	0,X0000,L038C
	brset	0,X0000,L038F
	brset	0,X0000,L0392
	brset	0,X0000,L0395
	brset	0,X0000,L0398
	brset	0,X0000,L039B
	brset	0,X0000,L039E
	brset	0,X0000,L03A1
	brset	0,X0000,L03A4
	brset	0,X0000,L03A7
	brset	0,X0000,L03AA
	brset	0,X0000,L03AD
	brset	0,X0000,L03B0
	brset	0,X0000,L03B3
	brset	0,X0000,L03B6
	brset	0,X0000,L03B9
	brset	0,X0000,L03BC
	brset	0,X0000,L03BF
	brset	0,X0000,L03C2
	brset	0,X0000,L03C5
	brset	0,X0000,L03C8
	brset	0,X0000,L03CB
	brset	0,X0000,L03CE
	brset	0,X0000,L03D1
	brset	0,X0000,L03D4
	brset	0,X0000,L03D7
	brset	0,X0000,L03DA
	brset	0,X0000,L03DD
	brset	0,X0000,L03E0
	brset	0,X0000,L03E3
	brset	0,X0000,L03E6
	brset	0,X0000,L03E9
	brset	0,X0000,L03EC
	brset	0,X0000,L03EF
	brset	0,X0000,L03F2
	brset	0,X0000,L03F5
	brset	0,X0000,L03F8
	brset	0,X0000,L03FB
	brset	0,X0000,L03FE
	brset	0,X0000,L0401
	brset	0,X0000,L0404
	brset	0,X0000,L0407
	brset	0,X0000,L040A
	brset	0,X0000,L040D
	brset	0,X0000,L0410
	brset	0,X0000,L0413
	brset	0,X0000,L0416
	brset	0,X0000,L0419
	brset	0,X0000,L041C
	brset	0,X0000,L041F
	brset	0,X0000,L0422
	brset	0,X0000,L0425
	brset	0,X0000,L0428
	brset	0,X0000,L042B
	brset	0,X0000,L042E
	brset	0,X0000,L0431
	brset	0,X0000,L0434
	brset	0,X0000,L0437
	brset	0,X0000,L043A
	brset	0,X0000,L043D
	brset	0,X0000,L0440
	brset	0,X0000,L0443
	brset	0,X0000,L0446
	brset	0,X0000,L0449
	brset	0,X0000,L044C
	brset	0,X0000,L044F
	brset	0,X0000,L0452
	brset	0,X0000,L0455
	brset	0,X0000,L0458
	brset	0,X0000,L045B
	brset	0,X0000,L045E
	brset	0,X0000,L0461
	brset	0,X0000,L0464
	brset	0,X0000,L0467
	brset	0,X0000,L046A
	brset	0,X0000,L046D
	brset	0,X0000,L0470
	brset	0,X0000,L0473
	brset	0,X0000,L0476
	brset	0,X0000,L0479
	brset	0,X0000,L047C
	brset	0,X0000,L047F
	brset	0,X0000,L0482
	brset	0,X0000,L0485
	brset	0,X0000,L0488
	brset	0,X0000,L048B
	brset	0,X0000,L048E
	brset	0,X0000,L0491
	brset	0,X0000,L0494
	brset	0,X0000,L0497
	brset	0,X0000,L049A
	brset	0,X0000,L049D
	brset	0,X0000,L04A0
	brset	0,X0000,L04A3
	brset	0,X0000,L04A6
	brset	0,X0000,L04A9
	brset	0,X0000,L04AC
	brset	0,X0000,L04AF
	brset	0,X0000,L04B2
	brset	0,X0000,L04B5
	brset	0,X0000,L04B8
	brset	0,X0000,L04BB
	brset	0,X0000,L04BE
	brset	0,X0000,L04C1
	brset	0,X0000,L04C4
	brset	0,X0000,L04C7
	brset	0,X0000,L04CA
	brset	0,X0000,L04CD
	brset	0,X0000,L04D0
	brset	0,X0000,L04D3
	brset	0,X0000,L04D6
	brset	0,X0000,L04D9
	brset	0,X0000,L04DC
	brset	0,X0000,L04DF
	brset	0,X0000,L04E2
	brset	0,X0000,L04E5
	brset	0,X0000,L04E8
	brset	0,X0000,L04EB
	brset	0,X0000,L04EE
	brset	0,X0000,L04F1
	brset	0,X0000,L04F4
	brset	0,X0000,L04F7
	brset	0,X0000,L04FA
	brset	0,X0000,L04FD
	brset	0,X0000,L0500
X7500:
	brset	0,X0000,L0503
	brset	0,X0000,L0506
	brset	0,X0000,L0509
	brset	0,X0000,L050C
	brset	0,X0000,L050F
	brset	0,X0000,L0512
	brset	0,X0000,L0515
	brset	0,X0000,L0518
	brset	0,X0000,L051B
	brset	0,X0000,L051E
	brset	0,X0000,L0521
	brset	0,X0000,L0524
	brset	0,X0000,L0527
	brset	0,X0000,L052A
	brset	0,X0000,L052D
	brset	0,X0000,L0530
	brset	0,X0000,L0533
	brset	0,X0000,L0536
	brset	0,X0000,L0539
	brset	0,X0000,L053C
	brset	0,X0000,L053F
	brset	0,X0000,L0542
	brset	0,X0000,L0545
	brset	0,X0000,L0548
	brset	0,X0000,L054B
	brset	0,X0000,L054E
	brset	0,X0000,L0551
	brset	0,X0000,L0554
	brset	0,X0000,L0557
	brset	0,X0000,L055A
	brset	0,X0000,L055D
	brset	0,X0000,L0560
	brset	0,X0000,L0563
	brset	0,X0000,L0566
	brset	0,X0000,L0569
	brset	0,X0000,L056C
	brset	0,X0000,L056F
	brset	0,X0000,L0572
	brset	0,X0000,L0575
	brset	0,X0000,L0578
	brset	0,X0000,L057B
	brset	0,X0000,L057E
	brset	0,X0000,L0581
	brset	0,X0000,L0584
	brset	0,X0000,L0587
	brset	0,X0000,L058A
	brset	0,X0000,L058D
	brset	0,X0000,L0590
	brset	0,X0000,L0593
	brset	0,X0000,L0596
	brset	0,X0000,L0599
	brset	0,X0000,L059C
	brset	0,X0000,L059F
	brset	0,X0000,L05A2
	brset	0,X0000,L05A5
	brset	0,X0000,L05A8
	brset	0,X0000,L05AB
	brset	0,X0000,L05AE
	brset	0,X0000,L05B1
	brset	0,X0000,L05B4
	brset	0,X0000,L05B7
	brset	0,X0000,L05BA
	brset	0,X0000,L05BD
	brset	0,X0000,L05C0
	brset	0,X0000,L05C3
	brset	0,X0000,L05C6
	brset	0,X0000,L05C9
	brset	0,X0000,L05CC
	brset	0,X0000,L05CF
	brset	0,X0000,L05D2
	brset	0,X0000,L05D5
	brset	0,X0000,L05D8
	brset	0,X0000,L05DB
	brset	0,X0000,L05DE
	brset	0,X0000,L05E1
	brset	0,X0000,L05E4
	brset	0,X0000,L05E7
	brset	0,X0000,L05EA
	brset	0,X0000,L05ED
	brset	0,X0000,L05F0
	brset	0,X0000,L05F3
	brset	0,X0000,L05F6
	brset	0,X0000,L05F9
	brset	0,X0000,L05FC
	brset	0,X0000,L05FF
	brset	0,X0000,L0602
	brset	0,X0000,L0605
	brset	0,X0000,L0608
	brset	0,X0000,L060B
	brset	0,X0000,L060E
	brset	0,X0000,L0611
	brset	0,X0000,L0614
	brset	0,X0000,L0617
	brset	0,X0000,L061A
	brset	0,X0000,L061D
	brset	0,X0000,L0620
	brset	0,X0000,L0623
	brset	0,X0000,L0626
	brset	0,X0000,L0629
	brset	0,X0000,L062C
	brset	0,X0000,L062F
	brset	0,X0000,L0632
	brset	0,X0000,L0635
	brset	0,X0000,L0638
	brset	0,X0000,L063B
	brset	0,X0000,L063E
	brset	0,X0000,L0641
	brset	0,X0000,L0644
	brset	0,X0000,L0647
	brset	0,X0000,L064A
	brset	0,X0000,L064D
	brset	0,X0000,L0650
	brset	0,X0000,L0653
	brset	0,X0000,L0656
	brset	0,X0000,L0659
	brset	0,X0000,L065C
	brset	0,X0000,L065F
	brset	0,X0000,L0662
	brset	0,X0000,L0665
	brset	0,X0000,L0668
	brset	0,X0000,L066B
	brset	0,X0000,L066E
	brset	0,X0000,L0671
	brset	0,X0000,L0674
	brset	0,X0000,L0677
	brset	0,X0000,L067A
	brset	0,X0000,L067D
	brset	0,X0000,L0680
	brset	0,X0000,L0683
	brset	0,X0000,L0686
	brset	0,X0000,L0689
	brset	0,X0000,L068C
	brset	0,X0000,L068F
	brset	0,X0000,L0692
	brset	0,X0000,L0695
	brset	0,X0000,L0698
	brset	0,X0000,L069B
	brset	0,X0000,L069E
	brset	0,X0000,L06A1
	brset	0,X0000,L06A4
	brset	0,X0000,L06A7
	brset	0,X0000,L06AA
	brset	0,X0000,L06AD
	brset	0,X0000,L06B0
	brset	0,X0000,L06B3
	brset	0,X0000,L06B6
	brset	0,X0000,L06B9
	brset	0,X0000,L06BC
	brset	0,X0000,L06BF
	brset	0,X0000,L06C2
	brset	0,X0000,L06C5
	brset	0,X0000,L06C8
	brset	0,X0000,L06CB
	brset	0,X0000,L06CE
	brset	0,X0000,L06D1
	brset	0,X0000,L06D4
	brset	0,X0000,L06D7
	brset	0,X0000,L06DA
	brset	0,X0000,L06DD
	brset	0,X0000,L06E0
	brset	0,X0000,L06E3
	brset	0,X0000,L06E6
	brset	0,X0000,L06E9
	brset	0,X0000,L06EC
	brset	0,X0000,L06EF
	brset	0,X0000,L06F2
	brset	0,X0000,L06F5
	brset	0,X0000,L06F8
	brset	0,X0000,L06FB
	brset	0,X0000,L06FE
	brset	0,X0000,L0701
	brset	0,X0000,L0704
	brset	0,X0000,L0707
	brset	0,X0000,L070A
	brset	0,X0000,L070D
	brset	0,X0000,L0710
	brset	0,X0000,L0713
	brset	0,X0000,L0716
	brset	0,X0000,L0719
	brset	0,X0000,L071C
	brset	0,X0000,L071F
	brset	0,X0000,L0722
	brset	0,X0000,L0725
	brset	0,X0000,L0728
	brset	0,X0000,L072B
	brset	0,X0000,L072E
	brset	0,X0000,L0731
	brset	0,X0000,L0734
	brset	0,X0000,L0737
	brset	0,X0000,L073A
	brset	0,X0000,L073D
	brset	0,X0000,L0740
	brset	0,X0000,L0743
	brset	0,X0000,L0746
	brset	0,X0000,L0749
	brset	0,X0000,L074C
	brset	0,X0000,L074F
	brset	0,X0000,L0752
	brset	0,X0000,L0755
	brset	0,X0000,L0758
	brset	0,X0000,L075B
	brset	0,X0000,L075E
	brset	0,X0000,L0761
	brset	0,X0000,L0764
	brset	0,X0000,L0767
	brset	0,X0000,L076A
	brset	0,X0000,L076D
	brset	0,X0000,L0770
	brset	0,X0000,L0773
	brset	0,X0000,L0776
	brset	0,X0000,L0779
	brset	0,X0000,L077C
	brset	0,X0000,L077F
	brset	0,X0000,L0782
	brset	0,X0000,L0785
	brset	0,X0000,L0788
	brset	0,X0000,L078B
	brset	0,X0000,L078E
	brset	0,X0000,L0791
	brset	0,X0000,L0794
	brset	0,X0000,L0797
	brset	0,X0000,L079A
	brset	0,X0000,L079D
	brset	0,X0000,L07A0
	brset	0,X0000,L07A3
	brset	0,X0000,L07A6
	brset	0,X0000,L07A9
	brset	0,X0000,L07AC
	brset	0,X0000,L07AF
	brset	0,X0000,L07B2
	brset	0,X0000,L07B5
	brset	0,X0000,L07B8
	brset	0,X0000,L07BB
	brset	0,X0000,L07BE
	brset	0,X0000,L07C1
	brset	0,X0000,L07C4
	brset	0,X0000,L07C7
	brset	0,X0000,L07CA
	brset	0,X0000,L07CD
	brset	0,X0000,L07D0
	brset	0,X0000,L07D3
	brset	0,X0000,L07D6
	brset	0,X0000,L07D9
	brset	0,X0000,L07DC
	brset	0,X0000,L07DF
	brset	0,X0000,L07E2
	brset	0,X0000,L07E5
	brset	0,X0000,L07E8
	brset	0,X0000,L07EB
	brset	0,X0000,L07EE
	brset	0,X0000,L07F1
	brset	0,X0000,L07F4
	brset	0,X0000,L07F7
	brset	0,X0000,L07FA
	brset	0,X0000,L07FD
	brset	0,X0000,L0000
	brset	0,X0000,L0003
	brset	0,X0000,L0006
	brset	0,X0000,L0009
	brset	0,X0000,L000C
	brset	0,X0000,L000F
	brset	0,X0000,L0012
	brset	0,X0000,L0015
	brset	0,X0000,L0018
	brset	0,X0000,L001B
	brset	0,X0000,L001E
	brset	0,X0000,L0021
	brset	0,X0000,L0024
	brset	0,X0000,L0027
	brset	0,X0000,L002A
	brset	0,X0000,L002D
	brset	0,X0000,L0030
	brset	0,X0000,L0033
	brset	0,X0000,L0036
	brset	0,X0000,L0039
	brset	0,X0000,L003C
	brset	0,X0000,L003F
	brset	0,X0000,L0042
	brset	0,X0000,L0045
	brset	0,X0000,L0048
	brset	0,X0000,L004B
	brset	0,X0000,L004E
	brset	0,X0000,L0051
	brset	0,X0000,L0054
	brset	0,X0000,L0057
	brset	0,X0000,L005A
	brset	0,X0000,L005D
	brset	0,X0000,L0060
	brset	0,X0000,L0063
	brset	0,X0000,L0066
	brset	0,X0000,L0069
	brset	0,X0000,L006C
	brset	0,X0000,L006F
	brset	0,X0000,L0072
	brset	0,X0000,L0075
	brset	0,X0000,L0078
	brset	0,X0000,L007B
	brset	0,X0000,L007E
	brset	0,X0000,L0081
	brset	0,X0000,L0084
	brset	0,X0000,L0087
	brset	0,X0000,L008A
	brset	0,X0000,L008D
	brset	0,X0000,L0090
	brset	0,X0000,L0093
	brset	0,X0000,L0096
	brset	0,X0000,L0099
	brset	0,X0000,L009C
	brset	0,X0000,L009F
	brset	0,X0000,L00A2
	brset	0,X0000,L00A5
	brset	0,X0000,L00A8
	brset	0,X0000,L00AB
	brset	0,X0000,L00AE
	brset	0,X0000,L00B1
	brset	0,X0000,L00B4
	brset	0,X0000,L00B7
	brset	0,X0000,L00BA
	brset	0,X0000,L00BD
	brset	0,X0000,L00C0
	brset	0,X0000,L00C3
	brset	0,X0000,L00C6
	brset	0,X0000,L00C9
	brset	0,X0000,L00CC
	brset	0,X0000,L00CF
	brset	0,X0000,L00D2
	brset	0,X0000,L00D5
	brset	0,X0000,L00D8
	brset	0,X0000,L00DB
	brset	0,X0000,L00DE
	brset	0,X0000,L00E1
	brset	0,X0000,L00E4
	brset	0,X0000,L00E7
	brset	0,X0000,L00EA
	brset	0,X0000,L00ED
	brset	0,X0000,L00F0
	brset	0,X0000,L00F3
	brset	0,X0000,L00F6
	brset	0,X0000,L00F9
	brset	0,X0000,L00FC
	brset	0,X0000,L00FF
	brset	0,X0000,L0102
	brset	0,X0000,L0105
	brset	0,X0000,L0108
	brset	0,X0000,L010B
	brset	0,X0000,L010E
	brset	0,X0000,L0111
	brset	0,X0000,L0114
	brset	0,X0000,L0117
	brset	0,X0000,L011A
	brset	0,X0000,L011D
	brset	0,X0000,L0120
	brset	0,X0000,L0123
	brset	0,X0000,L0126
	brset	0,X0000,L0129
	brset	0,X0000,L012C
	brset	0,X0000,L012F
	brset	0,X0000,L0132
	brset	0,X0000,L0135
	brset	0,X0000,L0138
	brset	0,X0000,L013B
	brset	0,X0000,L013E
	brset	0,X0000,L0141
	brset	0,X0000,L0144
	brset	0,X0000,L0147
	brset	0,X0000,L014A
	brset	0,X0000,L014D
	brset	0,X0000,L0150
	brset	0,X0000,L0153
	brset	0,X0000,L0156
	brset	0,X0000,L0159
	brset	0,X0000,L015C
	brset	0,X0000,L015F
	brset	0,X0000,L0162
	brset	0,X0000,L0165
	brset	0,X0000,L0168
	brset	0,X0000,L016B
	brset	0,X0000,L016E
	brset	0,X0000,L0171
	brset	0,X0000,L0174
	brset	0,X0000,L0177
	brset	0,X0000,L017A
	brset	0,X0000,L017D
	brset	0,X0000,L0180
	brset	0,X0000,L0183
	brset	0,X0000,L0186
	brset	0,X0000,L0189
	brset	0,X0000,L018C
	brset	0,X0000,L018F
	brset	0,X0000,L0192
	brset	0,X0000,L0195
	brset	0,X0000,L0198
	brset	0,X0000,L019B
	brset	0,X0000,L019E
	brset	0,X0000,L01A1
	brset	0,X0000,L01A4
	brset	0,X0000,L01A7
	brset	0,X0000,L01AA
	brset	0,X0000,L01AD
	brset	0,X0000,L01B0
	brset	0,X0000,L01B3
	brset	0,X0000,L01B6
	brset	0,X0000,L01B9
	brset	0,X0000,L01BC
	brset	0,X0000,L01BF
	brset	0,X0000,L01C2
	brset	0,X0000,L01C5
	brset	0,X0000,L01C8
	brset	0,X0000,L01CB
	brset	0,X0000,L01CE
	brset	0,X0000,L01D1
	brset	0,X0000,L01D4
	brset	0,X0000,L01D7
	brset	0,X0000,L01DA
	brset	0,X0000,L01DD
	brset	0,X0000,L01E0
	brset	0,X0000,L01E3
	brset	0,X0000,L01E6
	brset	0,X0000,L01E9
	brset	0,X0000,L01EC
	brset	0,X0000,L01EF
	brset	0,X0000,L01F2
	brset	0,X0000,L01F5
	brset	0,X0000,L01F8
	brset	0,X0000,L01FB
	brset	0,X0000,L01FE
;
	db	$00, $00
