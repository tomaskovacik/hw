;
;	Disassembled by:
;		DASMx object code disassembler
;		(c) Copyright 1996-2003   Conquest Consultants
;		Version 1.40 (Oct 18 2003)
;
;	File:		chorus_1_volume_fixed.rom
;
;	Size:		31232 bytes
;	Checksum:	48C8
;	CRC-32:		3FA3AF90
;
;	Date:		Wed Mar 21 18:03:54 2018
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
	jsr	L374A
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
	jsr	L2141
L0017:
X0017:
	jsr	L2069
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
	jsr	L2031
L0026:
X0026:
	jmp	L04F1
;
L0029:
X0029:
	jsr	L3778
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
	jsr	L376B
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
	jsr	L4C73
L0077:
X0077:
	jsr	L223C
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
	jsr	L0B9E
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
	jsr	L21DD
L00A6:
X00A6:
	bra	L00B0
;
L00A8:
X00A8:
	brclr	4,X0013,L00B0
L00AB:
X00AB:
	jsr	L4C57
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
	jsr	L071F
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
	jsr	L2643
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
	jsr	L2118
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
	jmp	L08B2
;
L011E:
	bil	L00ED
L0120:
X0120:
	brclr	3,X0061,L00F1
L0123:
X0123:
	jsr	L3815
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
	jsr	L0B8C
L0141:
	jsr	L2082
L0144:
	jsr	L2079
L0147:
	brset	0,X00A1,L015C
L014A:
	bclr	2,X0006
L014C:
	bclr	3,X0006
L014E:
	jsr	L2643
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
	jsr	L1375
L0176:
	bset	5,X0061
L0178:
	jsr	L0713
L017B:
	bclr	2,X009E
L017D:
	brset	6,X0061,L0185
L0180:
	jsr	L3155
L0183:
	bset	6,X0061
L0185:
	brset	4,X0061,L0191
L0188:
	jsr	L2725
L018B:
	jsr	L1EF3
L018E:
	jsr	L48DF
L0191:
	bset	4,X0061
L0193:
	brset	2,X009E,L0199
L0196:
	jsr	L39C1
L0199:
	jsr	L0713
L019C:
	jsr	L36FC
L019F:
	jsr	L3B0A
L01A2:
	jsr	L0B2F
L01A5:
	clrx
L01A6:
	jsr	L2649
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
	jsr	L24E5
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
X01D0:
	bset	7,X0069
L01D2:
	bset	1,X005D
L01D4:
	jsr	L0785
L01D7:
	brset	2,X005D,L01E3
L01DA:
X01DA:
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
	jsr	L22BD
L01EE:
	jsr	L3164
L01F1:
	jsr	L4C7B
L01F4:
	jsr	L142B
L01F7:
	jsr	L37F4
L01FA:
	jsr	L40DD
L01FD:
	jsr	L4955
L0200:
X0200:
	jsr	L27CF
L0203:
	jsr	L27C2
L0206:
	jsr	L1F1C
L0209:
	jsr	L3A48
L020C:
	jsr	L3B88
L020F:
	jsr	L0614
L0212:
	bra	L01C4
;
L0214:
	brset	3,X0067,L022D
L0217:
	brset	2,X0067,L0240
L021A:
	brset	1,X0067,L0247
L021D:
	brset	0,X0067,L0270
L0220:
	brset	4,X0067,L0249
L0223:
	brset	5,X0067,L025A
L0226:
	brset	6,X0067,L0265
L0229:
	brset	7,X0067,L026D
L022C:
	rts
;
L022D:
	bclr	3,X0067
L022F:
	bset	2,X0067
L0231:
	jsr	L200B
L0234:
	jsr	L386E
L0237:
	jsr	L274E
L023A:
	jsr	L23CE
L023D:
	jmp	L39F4
;
L0240:
	bclr	2,X0067
L0242:
	bset	1,X0067
L0244:
	jmp	L0719
L0247:
	bra	L02B5
;
L0249:
	bclr	4,X0067
L024B:
	jsr	L2730
L024E:
	jsr	L1EF4
L0251:
	jsr	L3173
L0254:
X0254:
	jsr	L3CE1
L0257:
X0257:
	jmp	L27C3
;
L025A:
	bclr	5,X0067
L025C:
X025C:
	jsr	L1419
L025F:
	jsr	L3D06
L0262:
	jmp	L3730
;
L0265:
X0265:
	bclr	6,X0067
L0267:
X0267:
	jsr	L3BA2
L026A:
	jmp	L4CB4
;
L026D:
	bclr	7,X0067
L026F:
	rts
;
L0270:
	bclr	0,X0067
L0272:
X0272:
	jsr	L490B
L0275:
X0275:
	jsr	L316A
L0278:
	jsr	L3BFE
L027B:
X027B:
	brset	7,X0060,L02A4
L027E:
	brclr	3,X008B,L029E
L0281:
	brset	3,X00CE,L029B
L0284:
	brclr	6,X005D,L0292
L0287:
	bclr	1,X00CB
L0289:
	jsr	L38D0
L028C:
	jsr	L454C
L028F:
	jsr	L2174
L0292:
	jsr	L34F7
L0295:
	jsr	L479C
L0298:
	jsr	L460C
L029B:
	jsr	L28B0
L029E:
X029E:
	jsr	L2D55
L02A1:
X02A1:
	jsr	L4B76
L02A4:
X02A4:
	jsr	L4541
L02A7:
	jsr	L3BD8
L02AA:
X02AA:
	bclr	6,X005D
L02AC:
X02AC:
	brclr	7,X0060,L02B2
L02AF:
	jsr	L2D55
L02B2:
X02B2:
	jmp	L0BBE
;
L02B5:
X02B5:
	bclr	1,X0067
L02B7:
X02B7:
	bset	0,X0067
L02B9:
	brclr	7,X005D,L0312
L02BC:
	bclr	7,X005D
L02BE:
X02BE:
	lda	X00CA
L02C0:
X02C0:
	and	#$0F
L02C2:
X02C2:
	ldx	#$03
L02C4:
X02C4:
	mul
L02C5:
	tax
L02C6:
	cpx	#$21
L02C8:
X02C8:
	bcc	L0312
L02CA:
X02CA:
	jsr	L06E5,x						;INFO: index jump
L02CD:
X02CD:
	lda	X00CA
L02CF:
	jsr	L2617
L02D2:
X02D2:
	and	#$03
L02D4:
X02D4:
	ldx	#$03
L02D6:
X02D6:
	mul
L02D7:
X02D7:
	tax
L02D8:
X02D8:
	cpx	#$0C
L02DA:
	bcc	L0312
L02DC:
	jsr	L0706,x						;INFO: index jump
L02DF:
	brclr	6,X00CA,L0312
L02E2:
	jmp	L2CD3
L02E5:
	jmp	L062C
L02E8:
	jmp	L2B51
L02EB:
	jmp	L4833
L02EE:
	jmp	L46A7
L02F1:
	jmp	L36AB
L02F4:
	jmp	L394C
L02F7:
	jmp	L30C1
L02FA:
	jmp	L062C
L02FD:
	jmp	L4BFD
L0300:
	jmp	L4578
L0303:
	jmp	L4542
L0306:
	jmp	L4C0F
L0309:
	jmp	L2C36
L030C:
	jmp	L487B
L030F:
	jmp	L471A
L0312:
	rts
;
L0313:
	jsr	L142B
L0316:
	jsr	L37F4
L0319:
	jsr	L1407
L031C:
	jmp	L37B0
;
L031F:
	clr	X0066
L0321:
	lda	X0065
L0323:
	sta	X02B0
L0326:
	bclr	7,X0069
L0328:
	brclr	4,X0061,L0333
L032B:
	jsr	L0B8C
L032E:
	jsr	L48CA
L0331:
	bclr	4,X0061
L0333:
	lda	#$0A
L0335:
	sta	X0050
L0337:
	bset	2,X0012
L0339:
	bset	4,X0012
L033B:
	bih	L033F
L033D:
	bclr	6,X00BA
L033F:
	jsr	L2631
L0342:
	brset	1,X0002,L0347
L0345:
	bset	4,X005D
L0347:
	bclr	1,X0002
L0349:
	jsr	L0785
L034C:
	lda	X0065
L034E:
	sub	X02B0
L0351:
	cmp	#$03
L0353:
	bcs	L0357
L0355:
	bset	5,X0060
L0357:
	lda	#$27
L0359:
	jsr	L25B7
L035C:
	cmp	#$19
L035E:
	bcs	L0372
L0360:
	cmp	#$53
L0362:
	bhi	L036E
L0364:
	bclr	6,X0061
L0366:
	bclr	5,X0061
L0368:
	bclr	7,X0061
L036A:
	bclr	6,X005F
L036C:
	bra	L033F
;
L036E:
	cmp	#$73
L0370:
	bcs	L0333
L0372:
	bil	L0333
L0374:
	dec	X0050
L0376:
	bne	L033F
L0378:
	rts
;
L0379:
	jsr	L0B8C
L037C:
	jsr	L48CA
L037F:
	jsr	L209E
L0382:
	jmp	L0506
;
L0385:
	brset	4,X005D,L038F
L0388:
	brclr	1,X000C,L038E
L038B:
	brclr	1,X0003,L03B7
L038E:
	rts
;
L038F:
	lda	#$06
L0391:
	brset	1,X000C,L0396
L0394:
	lda	#$01
L0396:
	add	X0066
L0398:
	sta	X0066
L039A:
	bcc	L03B7
L039C:
	lda	#$01
L039E:
	add	X0065
L03A0:
	sta	X0065
L03A2:
	bcc	L03B7
L03A4:
	brset	7,X0064,L03B7
L03A7:
	inc	X0064
L03A9:
	bpl	L03B7
L03AB:
	brset	2,X008B,L03B7
L03AE:
	brset	1,X005F,L03B7
L03B1:
	brclr	0,X0061,L03B7
L03B4:
	jmp	L08A2
;
L03B7:
	bclr	4,X005D
L03B9:
	brclr	1,X0006,L03C0
L03BC:
	bclr	1,X0006
L03BE:
	bra	L03D3
;
L03C0:
	lda	X0062
L03C2:
	brclr	1,X0002,L03C9
L03C5:
	add	#$20
L03C7:
	bra	L03CB
;
L03C9:
	sub	#$20
L03CB:
	bcs	L03CF
L03CD:
	sta	X0062
L03CF:
	bset	1,X0006
L03D1:
	bset	1,X0002
L03D3:
	clra
L03D4:
	brset	2,X0003,L03D9
L03D7:
	ora	#$01
L03D9:
	brset	0,X0003,L03DE
L03DC:
	ora	#$02
L03DE:
	brclr	7,X005E,L03E3
L03E1:
	ora	#$04
L03E3:
	brclr	1,X0003,L03E8
L03E6:
	ora	#$10
L03E8:
	tst	X0062
L03EA:
	bpl	L03EE
L03EC:
	ora	#$08
L03EE:
	brclr	6,X0003,L03F3
L03F1:
	ora	#$80
L03F3:
	eor	X005F
L03F5:
	and	#$9F
L03F7:
	beq	L0467
L03F9:
	sta	X005B
L03FB:
	eor	X005F
L03FD:
	sta	X005F
L03FF:
	brclr	3,X005F,L0406
L0402:
	bset	5,X005F
L0404:
	bra	L0410
;
L0406:
	brclr	7,X005F,L040B
L0409:
	bset	5,X005F
L040B:
	brset	1,X005F,L0410
L040E:
	bclr	5,X005F
L0410:
	brclr	0,X005B,L0420
L0413:
	brset	0,X005F,L0495
L0416:
	brset	6,X005F,L041C
L0419:
	brclr	0,X0061,L0420
L041C:
	bclr	6,X005F
L041E:
	bra	L03B4
;
L0420:
	brclr	7,X0060,L0426
L0423:
	brset	5,X005D,L044B
L0426:
	bclr	5,X005D
L0428:
	brset	1,X005F,L0435
L042B:
	brclr	1,X005B,L044B
L042E:
	brclr	0,X0061,L04A9
L0431:
	bset	1,X0061
L0433:
	bra	L04A2
;
L0435:
	brset	0,X0061,L0440
L0438:
	brclr	1,X005B,L044B
L043B:
	brset	0,X005F,L0497
L043E:
	bset	5,X005F
L0440:
	bclr	1,X0061
L0442:
	brclr	1,X005B,L044B
L0445:
	brclr	0,X005F,L044B
L0448:
	brset	3,X00CE,L0497
L044B:
	brclr	4,X005B,L0461
L044E:
	brset	0,X0061,L0454
L0451:
	brclr	1,X005F,L0461
L0454:
	brclr	3,X0060,L0461
L0457:
	bclr	3,X0060
L0459:
	brset	4,X005F,L045E
L045C:
	bset	0,X0060
L045E:
	brset	1,X000C,L0464
L0461:
	brclr	2,X005B,L0467
L0464:
	brclr	0,X0061,L04A9
L0467:
	rts
;
L0468:
	jsr	L2082
L046B:
	jsr	L2079
L046E:
	jsr	L48DF
L0471:
	lda	#$C8
L0473:
	sta	X0063
L0475:
	tst	X0063
L0477:
	beq	L04AC
L0479:
	brclr	3,X0067,L0481
L047C:
	bclr	3,X0067
L047E:
	jsr	L490B
L0481:
	jsr	L4955
L0484:
	jsr	L40DD
L0487:
	brclr	7,X0092,L0475
L048A:
	brset	4,X0092,L0475
L048D:
	bset	0,X0061
L048F:
	bset	7,X0060
L0491:
	bset	6,X0060
L0493:
	bra	L04A9
;
L0495:
	bclr	4,X0061
L0497:
	bset	0,X0061
L0499:
	clr	X0093
L049B:
	brclr	1,X005F,L04A9
L049E:
	bclr	1,X0061
L04A0:
	bra	L04A9
;
L04A2:
	bclr	0,X0061
L04A4:
	brclr	1,X005F,L04A9
L04A7:
	bset	5,X005F
L04A9:
	jmp	L0506
;
L04AC:
	lda	#$08
L04AE:
	sta	X0060
L04B0:
	bra	L04A9
;
L04B2:
	bclr	7,X0069
L04B4:
	brset	4,X0060,L0468
L04B7:
	brset	0,X0060,L04BE
L04BA:
	lda	#$08
L04BC:
	sta	X0060
L04BE:
	brset	3,X007F,L04C7
L04C1:
	brset	2,X007F,L04C7
L04C4:
	jsr	L0B8C
L04C7:
	brset	5,X005F,L04D0
L04CA:
	jsr	L0B8C
L04CD:
	jsr	L48CA
L04D0:
	jsr	L22BD
L04D3:
	clr	X000A
L04D5:
	bih	L04DA
L04D7:
	jmp	L04E5
;
L04DA:
	brclr	2,X009E,L04E0
L04DD:
	jsr	L39A4
L04E0:
	brset	6,X005F,L04E6
L04E3:
	jsr	L3161
L04E6:
	brset	5,X005F,L04EC
L04E9:
	jsr	L209E
L04EC:
	jsr	L0785
L04EF:
	brset	6,X005F,L04F9
L04F2:
	bclr	0,X0001
L04F4:
	ldx	#$02
L04F6:
	jsr	L2649
L04F9:
	brset	5,X005F,L0507
L04FC:
	brclr	6,X005F,L0520
L04FF:
	brclr	5,X0061,L0507
L0502:
	brset	0,X00A1,L0532
L0505:
	bra	L0520
;
L0507:
	jsr	L2082
L050A:
	brclr	6,X005F,L052A
L050D:
	bclr	3,X0000
L050F:
	bset	3,X0004
L0511:
	jsr	L1375
L0514:
	lda	#$89
L0516:
	sta	X00B3
L0518:
	lda	X00C4
L051A:
	sta	X00B7
L051C:
	bset	5,X0061
L051E:
	bra	L0532
;
L0520:
	brclr	7,X0064,L052A
L0523:
	bclr	6,X005F
L0525:
	ldx	#$02
L0527:
	jsr	L2649
L052A:
	bclr	5,X0061
L052C:
	jsr	L3161
L052F:
	jsr	L13C5
L0532:
	brclr	5,X005F,L0564
L0535:
	bclr	1,X0081
L0537:
	bset	2,X0012
L0539:
	bset	4,X0012
L053B:
	bset	3,X008B
L053D:
	jsr	L2079
L0540:
	jsr	L48DF
L0543:
	jsr	L0B2F
L0546:
	bset	4,X0061
L0548:
	bset	0,X0080
L054A:
	lda	#$80
L054C:
	sta	X007D
L054E:
	sta	X007B
L0550:
	brclr	3,X008E,L0555
L0553:
	ora	#$10
L0555:
	sta	X00D5
L0557:
	bset	6,X0094
L0559:
	bset	5,X0094
L055B:
	bset	1,X0094
L055D:
	bclr	4,X006B
L055F:
	bset	6,X0095
L0561:
	jmp	L09C6
;
L0564:
	bclr	2,X0012
L0566:
	brset	5,X0061,L0561
L0569:
	jsr	L3161
L056C:
	brclr	3,X0060,L05A0
L056F:
	brset	2,X005F,L0575
L0572:
	jmp	L0A6D
;
L0575:
	jsr	L20B4
L0578:
	lda	#$FA
L057A:
	sta	X0012
L057C:
	lda	#$64
L057E:
	sta	X0063
L0580:
	jsr	L0785
L0583:
	jsr	L40DD
L0586:
	brset	4,X0060,L05C3
L0589:
	brset	5,X005F,L05C3
L058C:
	jsr	L22BD
L058F:
	brclr	3,X0067,L0597
L0592:
	bclr	3,X0067
L0594:
	jsr	L23CE
L0597:
	brclr	6,X005F,L0580
L059A:
	tst	X0063
L059C:
	bne	L0580
L059E:
	bra	L05C3
;
L05A0:
	jsr	L2065
L05A3:
	lda	#$5A
L05A5:
	sta	X0012
L05A7:
	lda	#$FA
L05A9:
	sta	X0063
L05AB:
	jsr	L0785
L05AE:
	jsr	L40DD
L05B1:
	brset	4,X0060,L05C3
L05B4:
	brset	5,X005F,L05C3
L05B7:
	brset	3,X0060,L05C3
L05BA:
	brclr	4,X005F,L05A7
L05BD:
	tst	X0063
L05BF:
	bne	L05AB
L05C1:
	bset	3,X0060
L05C3:
	jmp	L0506
;
L05C6:
	lda	#$64
L05C8:
	sta	X0063
L05CA:
	lda	#$1E
L05CC:
	sta	X0068
L05CE:
	bclr	6,X0067
L05D0:
	bclr	1,X0001
L05D2:
	lda	#$5B
L05D4:
	sta	X00A6
L05D6:
	cli
L05D7:
	brclr	6,X005F,L05E8
L05DA:
	jsr	L142B
L05DD:
	jsr	L37F4
L05E0:
	jsr	L34F7
L05E3:
	jsr	L3164
L05E6:
	bset	0,X0001
L05E8:
	jsr	L0785
L05EB:
	jsr	L40DD
L05EE:
	brset	4,X0060,L05C3
L05F1:
	bil	L0666
L05F3:
	jsr	L4C7B
L05F6:
	jsr	L22BD
L05F9:
	brclr	2,X0012,L05FF
L05FC:
	jsr	L4955
L05FF:
	brclr	3,X0067,L05D6
L0602:
	bclr	3,X0067
L0604:
	jsr	L23CE
L0607:
	brclr	6,X005F,L061B
L060A:
	jsr	L1407
L060D:
	jsr	L37B0
L0610:
	jsr	L316A
L0613:
	brclr	5,X0067,L061B
L0616:
	bclr	5,X0067
L0618:
	jsr	L1419
L061B:
	brclr	2,X0012,L0650
L061E:
	brclr	5,X005F,L05C3
L0621:
	jsr	L2D55
L0624:
	jsr	L0BBE
L0627:
	jsr	L490B
L062A:
	brclr	4,X0067,L05D6
L062D:
	bclr	4,X0067
L062F:
	dec	X00A7
L0631:
	beq	L0648
L0633:
	brset	7,X005F,L05D2
L0636:
	lda	X009A
L0638:
	cmp	#$F0
L063A:
	bcs	L05D2
L063C:
	brclr	3,X005F,L05D6
L063F:
	brset	1,X005F,L05D6
L0642:
	lda	#$02
L0644:
	sta	X00A6
L0646:
	bra	L05D6
;
L0648:
	dec	X00A6
L064A:
	bne	L05D6
L064C:
	bclr	5,X005F
L064E:
	bra	L05D6
;
L0650:
	brset	5,X005F,L06BB
L0653:
	brclr	0,X00A1,L0659
L0656:
	jmp	L09C6
;
L0659:
	brclr	6,X0067,L0663
L065C:
	brset	3,X00B9,L06BB
L065F:
	tst	X0063
L0661:
	beq	L06BB
L0663:
	jmp	L09D6
;
L0666:
	bset	2,X0012
L0668:
	bset	4,X0012
L066A:
	jmp	L04E5
;
L066D:
	sei
L066E:
	bclr	4,X000C
L0670:
	jsr	L2065
L0673:
	lda	#$5A
L0675:
	sta	X0012
L0677:
	bset	1,X000C
L0679:
	lda	#$14
L067B:
	sta	X0063
L067D:
	clr	X000B
L067F:
	clr	X0076
L0681:
	clr	X005E
L0683:
	clr	X00A8
L0685:
	clr	X00A6
L0687:
	clr	X0009
L0689:
	clr	X000F
L068B:
	cli
L068C:
	jsr	L0785
L068F:
	lda	#$08
L0691:
	add	X001A
L0693:
	sta	X001E
L0695:
	clr	X001F
L0697:
	wait
L0698:
	brset	0,X0000,L069B
L069B:
	lda	#$27
L069D:
	sta	X0009
L069F:
	jsr	L223C
L06A2:
	brset	5,X005F,L06BB
L06A5:
	tst	X0063
L06A7:
	bne	L06C5
L06A9:
	brset	3,X0000,L06B8
L06AC:
	bclr	3,X0000
L06AE:
	bset	3,X0004
L06B0:
	clra
L06B1:
	deca
L06B2:
	bne	L06B1
L06B4:
	bclr	3,X0004
L06B6:
	clr	X006A
L06B8:
	brclr	6,X005F,L06BE
L06BB:
	jmp	L0506
;
L06BE:
	bclr	0,X0005
L06C0:
	brclr	7,X0064,L06C5
L06C3:
	bclr	6,X0061
L06C5:
	brset	6,X005F,L0687
L06C8:
	bil	L0666
L06CA:
	brclr	2,X0012,L06D9
L06CD:
	tst	X0063
L06CF:
	bne	L0687
L06D1:
	bset	5,X0001
L06D3:
	bclr	3,X0000
L06D5:
	bset	3,X0004
L06D7:
	bra	L0673
;
L06D9:
	brclr	7,X0009,L06D9
L06DC:
	tst	X00A8
L06DE:
	bne	L06EB
L06E0:
	brclr	3,X00A6,L0705
L06E3:
	lda	X00A4
L06E5:
	ldx	X00A5
L06E7:
	bsr	L0728
L06E9:
	bra	L071B
;
L06EB:
	lda	X00A8
L06ED:
	sub	X0008
L06EF:
	bcs	L0705
L06F1:
	cmp	#$03
L06F3:
	bcs	L0705
L06F5:
	bset	2,X0012
L06F7:
	bset	4,X0012
L06F9:
	bclr	3,X0001
L06FB:
	bset	3,X0005
L06FD:
	lda	#$30
L06FF:
	sta	X0063
L0701:
	bclr	5,X0001
L0703:
	bra	L071F
;
L0705:
	lda	X0008
L0707:
	add	X00A5
L0709:
	sta	X00A5
L070B:
	bcc	L070F
L070D:
	inc	X00A4
L070F:
	inc	X00A6
L0711:
	lda	X00A6
L0713:
	bit	#$3F
L0715:
	bne	L0725
L0717:
	lda	X00A4
L0719:
	ldx	X00A5
L071B:
	bsr	L072A
L071D:
	sta	X00A8
L071F:
	clr	X00A5
L0721:
	clr	X00A4
L0723:
	clr	X00A6
L0725:
	jmp	L0A87
;
L0728:
	rolx
L0729:
	rola
L072A:
	rolx
L072B:
	rola
L072C:
	rolx
L072D:
	rola
L072E:
	rts
;
L072F:
	brset	7,X0061,L0755
L0732:
	ldx	#$A8
L0734:
	jsr	L38CC
L0737:
	sta	X0085
L0739:
	jsr	L1296
L073C:
	jsr	L12B1
L073F:
	stx	X0057
L0741:
	ldx	#$AB
L0743:
	jsr	L38CC
L0746:
	add	#$FD
L0748:
	add	X0057
L074A:
	bpl	L074D
L074C:
	clra
L074D:
	cmp	X0085
L074F:
	bcc	L0755
L0751:
	sta	X0085
L0753:
	bset	3,X005C
L0755:
	bclr	7,X0082
L0757:
	lda	#$FF
L0759:
	sta	X0088
L075B:
	sta	X0083
L075D:
	jsr	L0FCC
L0760:
	clr	X0082
L0762:
	jsr	L0F96
L0765:
	jsr	L0F89
L0768:
	clr	X007E
L076A:
	clr	X0080
L076C:
	clr	X0087
L076E:
	bset	4,X007E
L0770:
	bset	3,X007E
L0772:
	brclr	3,X005F,L0778
L0775:
	brset	0,X0081,L079D
L0778:
	bclr	0,X0081
L077A:
	clrx
L077B:
	brset	0,X0061,L0780
L077E:
	ldx	#$04
L0780:
	lda	X136A,x
L0783:
	sta	X008A
L0785:
	bset	6,X0082
L0787:
	bclr	2,X006B
L0789:
	bclr	1,X006B
L078B:
	rts
;
L078C:
	brclr	3,X0001,L0796
L078F:
	bclr	3,X0001
L0791:
	lda	#$05
L0793:
	jsr	L2623
L0796:
	jsr	L0F96
L0799:
	bclr	1,X0001
L079B:
	bclr	0,X0081
L079D:
	rts
;
L079E:
	brclr	7,X0087,L07BD
L07A1:
	lda	#$01
L07A3:
	eor	X0012
L07A5:
	sta	X0012
L07A7:
	lda	X0017
L07A9:
	add	#$A0
L07AB:
	tax
L07AC:
	lda	X0016
L07AE:
	adc	#$01
L07B0:
	cmp	X001A
L07B2:
	bmi	L07BA
L07B4:
	bne	L07BD
L07B6:
	cpx	X001B
L07B8:
	bhi	L07BD
L07BA:
	lda	X001A
L07BC:
	inca
L07BD:
	rts
;
L07BE:
	tst	X007E
L07C0:
	beq	L07FD
L07C2:
	brclr	2,X007E,L07CD
L07C5:
	bclr	2,X007E
L07C7:
	clr	X008A
L07C9:
	lda	#$DD
L07CB:
	sta	X0087
L07CD:
	lda	#$FF
L07CF:
	brset	6,X007E,L07E8
L07D2:
	lda	#$C8
L07D4:
	brset	7,X007E,L07E8
L07D7:
	brclr	1,X007E,L07F2
L07DA:
	bclr	1,X007E
L07DC:
	lda	X0082
L07DE:
	and	#$03
L07E0:
	cmp	#$02
L07E2:
	bne	L07F2
L07E4:
	bset	4,X0080
L07E6:
	lda	#$05
L07E8:
	bclr	6,X007E
L07EA:
	bclr	7,X007E
L07EC:
	jsr	L0F96
L07EF:
	jmp	L0D0D
;
L07F2:
	brclr	5,X007E,L07FD
L07F5:
	bclr	5,X007E
L07F7:
	brclr	6,X0082,L07FD
L07FA:
	jmp	L0CF6
;
L07FD:
	brclr	6,X0082,L0003
	jmp	L0CB9
;
	brset	2,X00BE,L0009
	brset	3,X007F,L0042
	brset	7,X0087,L0070
	brset	0,X0080,L0042
	brset	5,X007F,L0064
	brset	7,X007F,L006A
	brset	6,X007F,L005E
	brset	4,X0082,L0029
	brclr	5,X0080,L0029
	lda	X0088
	add	#$34
	bcc	L0029
	bclr	5,X0082
	jmp	L0CE2
;
	lda	X007F
	and	#$03
	bne	L0045
	lda	X0266
	bpl	L0042
	lda	X0265
	cmp	#$40
	beq	L003F
	cmp	#$30
	bne	L0042
	jmp	L0CEC
	jmp	L0CD8
;
	deca
	bne	L005B
	ldx	#$AD
	jsr	L38CC
	beq	L0052
	brset	1,X007C,L005E
	brset	7,X007C,L0042
	brset	1,X007C,L0042
	jmp	L0CEC
;
	deca
	bne	L0064
	brset	0,X00BA,L00D8
	jmp	L0CEC
;
	brset	6,X0080,L00D8
	jmp	L0CEC
;
	lda	#$80
	sta	X0087
	bra	L00EC
;
	dec	X008A
	bpl	L00D7
	lda	X0087
	and	#$1F
	cmp	#$1F
	bne	L0080
	bclr	1,X0087
	bclr	6,X0087
	inc	X0087
	brset	6,X0087,L0088
	brclr	0,X0087,L00AB
	jsr	L1278
	beq	L0092
	brset	6,X0087,L010B
	bra	L0108
;
	brclr	5,X007F,L00A1
	bclr	7,X007F
	bclr	7,X0082
	bclr	6,X0082
	clr	X008A
	bclr	0,X0082
	bra	L0108
;
	brclr	0,X0087,L00AB
	jsr	L0FB1
	lda	#$14
	bra	L00B4
;
	lda	#$FE
	sta	X0088
	jsr	L0F96
L08B2:
	lda	#$50
	sta	X008A
	jmp	L0DA3
;
	dec	X008A
	bne	L00D7
	brclr	0,X0081,L0114
	lda	#$02
	sta	X008A
	jsr	L1278
	beq	L00F6
	brclr	7,X0082,L00E5
	eor	X0082
	sta	X0082
	bset	3,X007E
	bset	3,X00BC
	jsr	L0F89
	rts
;
	brclr	5,X0082,L00DE
	brclr	4,X0082,L00E2
	bset	5,X0082
	bra	L00B6
;
	brset	7,X0082,L00B6
	brset	7,X0082,L00EC
	jsr	L0F96
	rts
;
	jsr	L1278
	bne	L0108
	bclr	5,X0082
	brclr	7,X0082,L00B6
	bclr	6,X0082
	bclr	4,X0080
	brclr	7,X0082,L00D7
	clr	X008A
	brset	0,X0080,L00D7
	jsr	L0FB1
	jmp	L0BFD
;
	brclr	7,X0082,L00D8
	lda	#$02
	sta	X008A
	bset	6,X0082
	jmp	L0DA3
;
	brclr	1,X0081,L0165
	brset	7,X0060,L0165
	brset	2,X0082,L0192
	brclr	3,X0082,L012E
	brclr	1,X0001,L0129
	bclr	1,X0001
	ldx	#$04
	bra	L018E
;
	brclr	7,X006B,L0192
	bra	L018A
;
	brclr	3,X0001,L0143
	brset	7,X0082,L0137
	brset	2,X00BE,L00D7
	bclr	3,X0001
	ldx	#$01
	brclr	7,X006B,L019B
	brclr	1,X0001,L019B
	bra	L0197
;
	ldx	#$02
	brclr	0,X0061,L0199
	brset	7,X006B,L0151
	bset	7,X006B
	bset	6,X0095
	bra	L019B
;
	brset	1,X0001,L015A
	bset	1,X0001
	ldx	#$01
	bra	L019B
;
	ldx	#$03
	brclr	1,X0090,L0199
	bset	3,X0001
	ldx	#$06
	bra	L019B
;
	brset	0,X0061,L0172
	brset	7,X005F,L0192
	brset	3,X005F,L0192
	bclr	3,X0001
	bra	L0197
;
	brset	3,X005F,L0192
	brset	1,X0001,L0192
	brclr	7,X0060,L0180
	lda	X02C4
	bmi	L0192
	bset	1,X0001
	bclr	7,X006B
	bset	6,X0095
	ldx	#$07
	bra	L019B
;
	bclr	7,X006B
	bset	6,X0095
	ldx	#$04
	bra	L019B
;
	brclr	0,X0002,L0197
	bset	3,X0001
	ldx	#$05
	bset	0,X0081
	lda	X136A,x
	sta	X008A
	bset	4,X0012
	rts
;
	ldx	X0085
	lda	X131A,x
	brclr	1,X0081,L01AE
	lda	X133A,x
	sta	X0058
	brset	4,X0080,L01C2
	brset	6,X0082,L01BF
	brset	7,X0087,L01C2
	brset	7,X0082,L01BF
	brclr	5,X0082,L01C2
	jmp	L0E9A
;
	jsr	L1296
	brset	7,X0087,L01E5
	brset	4,X007F,L020C
	ldx	#$A9
	jsr	L12A5
	brclr	5,X007F,L01D6
	brset	1,X00A1,L01DF
L09D6:
	brclr	6,X007F,L020C
	tst	X0058
	beq	L01EF
	dec	X0058
	stx	X0086
	lda	X0057
	bra	L01EF
;
	brclr	6,X0087,L01EF
	add	X1372
	bcc	L01EF
	lda	#$FF
	cmp	X0058
	bhi	L01F5
	sta	X0058
	brclr	7,X0087,L020C
	brset	6,X0087,L020C
	lda	X0087
	lsra
	and	#$0F
	tax
	lda	X0058
	add	X135A,x
	bcc	L020A
	lda	#$FF
	sta	X0058
	brset	6,X0081,L021B
	lda	X0084
	beq	L021B
	asla
	nega
	add	X0058
	bcs	L021D
	clra
	cmp	XB658
	brclr	3,X0081,L0224
	lda	#$80
	sub	X0085
	sta	X0058
	brset	2,X00BE,L025C
	brset	3,X0082,L029A
	brset	2,X0082,L0249
	brset	2,X006B,L0235
	brclr	1,X006B,L023B
	bclr	2,X006B
	bclr	1,X006B
	bset	6,X0095
	brclr	1,X0081,L025C
	brset	1,X0001,L025C
	brset	4,X0082,L025C
	jsr	L0F4A
	bra	L029A
;
	ldx	#$AE
	jsr	L38CC
	and	#$07
	deca
	asla
	asla
	add	X1373
	add	X0058
	bcs	L029A
	sta	X0058
	brset	7,X0081,L0277
	brset	5,X007F,L0277
	brset	6,X007F,L0277
	brset	3,X0081,L0277
	ldx	#$00
	brclr	1,X0081,L026F
L0A6D:
	ldx	#$10
	jsr	L12C3
	coma
	and	#$0F
	bra	L0278
;
	clra
	sta	X0059
	cmp	X0083
	beq	L028E
	bcc	L0289
	lda	X0083
	deca
	and	#$0F
	sta	X0083
L0A87:
	bra	L028B
;
	sta	X0083
	jsr	L0FBD
	asl	X0059
	lda	X0058
	sub	X0059
	bcc	L0297
	clra
	asla
	bcc	L029C
	lda	#$FF
	sta	X0058
	sta	X0059
	brset	6,X0082,L02B2
	brset	7,X0087,L02B2
	lda	X0088
	sub	X0058
	beq	L030A
	rora
	eor	#$7F
	brclr	4,X0081,L02B6
	lda	X0058
	bra	L02F7
;
	ldx	#$20
	jsr	L12C3
	asla
	brset	5,X0082,L02C1
	add	#$10
	add	#$00
	tax
	lda	X12FA,x
	dec	X008A
	bmi	L02E7
	tsta
	bmi	L02D8
	tst	X0089
	bmi	L02EE
	cmp	X0089
	bhi	L02E0
	bra	L0312
;
	tst	X0089
	bpl	L02EE
	cmp	X0089
	bcc	L02D6
	tax
	sub	X0089
	stx	X0089
	bra	L02F5
;
	tsta
	bne	L02EE
	lda	X0058
	sub	X0088
	ldx	X12FB,x
	stx	X008A
	sta	X0089
	add	X0088
	bset	4,X0082
	cmp	X0059
	bne	L02FF
	bclr	4,X0082
	cmp	X0088
	beq	L030C
	sta	X0088
	jsr	L0FCC
	bra	L0312
;
	bclr	4,X0082
	brset	4,X007E,L0305
	brset	3,X007E,L0305
	lda	X0082
	and	#$0C
	tax
	brclr	0,X0080,L031D
	brset	0,X0061,L031F
	eor	X007F
	and	#$0C
	beq	L037C
	brclr	5,X0082,L0329
	brclr	7,X0082,L037C
	tstx
	beq	L032D
	txa
	eor	X0082
L0B2F:
	sta	X0082
	bset	6,X0095
	bclr	2,X006B
	bclr	1,X006B
	brclr	1,X0081,L0353
	clra
	ldx	#$AF
	jsr	L38A0
	brset	3,X0082,L0348
	brclr	2,X0082,L034A
	bset	2,X006B
	bset	1,X006B
	bclr	0,X0081
	lda	#$05
	sta	X008A
	bset	6,X0082
	rts
;
	brclr	3,X0082,L036D
	brclr	1,X0001,L0361
	bclr	1,X0001
	bclr	3,X0082
	lda	#$50
	bra	L0382
;
	ldx	#$AF
	jsr	L38CC
	rora
	bcc	L0372
	bset	2,X006B
	bra	L0374
;
	brclr	2,X0082,L0377
	bset	2,X006B
	bset	1,X006B
	bset	3,X0001
	rts
;
	brset	0,X0061,L037D
	bclr	3,X0001
	rts
;
	brset	1,X0001,L037C
	lda	#$28
	bclr	0,X0081
	sta	X008A
	bset	6,X0082
	rts
;
	lda	X0082
	and	#$03
	tax
	lda	X11FB,x
	sta	X0050
	clra
	bra	L03C3
;
	bset	7,X0082
	brset	5,X0081,L037C
	lda	#$FF
	cmp	X0088
	beq	L03A5
	sta	X0088
	bsr	L03D1
	lda	#$FF
	sta	X0050
	lda	#$03
	bsr	L03C3
	lda	#$81
	bra	L03B7
;
	bclr	7,X0082
	bset	3,X007E
	lda	#$80
	sta	X0050
	lda	#$08
	bra	L03C3
;
	lda	X0083
	sta	X0050
	lda	#$01
	ldx	#$88
	brclr	0,X0002,L03CB
	jsr	L11FF
	rts
;
	lda	X0088
	brset	7,X0082,L03CB
	brclr	5,X007F,L03DC
	brset	5,X0082,L03DC
	add	#$E0
	bcs	L03DC
	clra
	brclr	1,X0081,L0405
	brclr	1,X0082,L03EC
	brset	0,X0082,L03F9
	brclr	2,X00B8,L03F9
	lda	#$08
	bra	L03F3
;
	lda	#$14
	brclr	0,X0082,L03F3
	lda	#$0C
	nega
	add	X0088
	bcs	L03F9
	clra
	cmp	#$30
	bcc	L03FF
L0BFD:
	lda	#$30
	cmp	#$44
	bcc	L0405
	bset	3,X007E
	sta	X0056
	bclr	7,X005B
	ldx	#$A0
	jsr	L10EF
	sta	X0059
	ldx	#$A1
	jsr	L10EF
	sta	X0058
	brset	5,X0082,L0442
	brclr	3,X007E,L0442
	bclr	3,X007E
	bmi	L0423
	coma
	cmp	XAB07
	and	#$0F
	sta	X0050
	lda	X0059
	bmi	L0434
	coma
	bit	#$08
	bne	L0436
	sub	#$0D
	add	#$07
	jsr	L261E
	add	X0050
	sta	X0050
	lda	#$03
	jsr	L0FC3
	lda	X0058
	bne	L0452
	lda	X0059
	add	#$08
	sta	X0057
	tax
	lda	X1137,x
	bra	L0467
;
	add	#$08
	sta	X0057
	lda	X0059
	bpl	L045B
	nega
	jsr	L261E
	add	X0057
	tax
	lda	X1137,x
	brclr	7,X0059,L046A
	jsr	L261E
	jsr	L2617
	brset	3,X0057,L047E
	brset	7,X005B,L047D
	nega
	beq	L047D
	add	X0056
	bcs	L0484
	clra
	bra	L0484
;
	clra
	add	X0056
	bcc	L0484
	lda	#$FF
	sta	X0050
	lda	#$02
	jsr	L0FC3
	brclr	4,X007E,L04EE
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
	jsr	L38CC
	brclr	6,X008E,L04AC
	clra
	eor	X0056
	bit	#$20
	bne	L04C0
	jsr	L38CC
	brclr	6,X008E,L04B9
	clra
L0CB9:
	bpl	L04BC
	nega
	add	#$10
	bsr	L04E0
	ldx	#$A2
	jsr	L38CC
	eor	X0056
	bit	#$40
	beq	L04D3
	jsr	L38CC
	bpl	L04D1
	nega
	bsr	L04E0
	dec	X0057
	lda	X0056
	sub	#$20
	bmi	L049E
	ldx	#$55
	jmp	L1205
;
	tax
	lda	X11DB,x
	ldx	X0057
	add	,x
	cmp	#$1F
	bls	L04ED
	lda	#$1F
	sta	,x
	rts
;
	clra
	brset	5,X0082,L04FC
	brset	5,X007F,L0535
L0CF6:
	brset	6,X007F,L0535
	brset	3,X0081,L0535
	jsr	L38CC
	add	#$06
	bpl	L0505
	lda	#$06
	cpx	#$A0
	bne	L050B
	add	#$0D
	brclr	1,X0081,L0510
	add	#$1A
	tax
	lda	X11A7,x
	bmi	L0535
	brclr	1,X0081,L0535
	ldx	X0056
	cpx	#$44
	bcc	L0535
	clr	X0053
	cpx	#$36
	bcs	L052D
	inc	X0053
	cpx	#$3C
	bcs	L052D
	inc	X0053
	cmp	X0053
	bls	L0535
	lda	X0053
	bset	7,X005B
	tsta
	rts
;
	brset	0,X0000,L05AA
;
	db	$72, $62, $51, $41
;
	brn	L0540
	brn	L0583
;
	db	$52, $62, $72
;
	neg	,x
	brset	0,X0000,L0549
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
	brset	0,X0000,L0559
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
	brset	0,X0000,L0569
	rol	X0058,x
	aslx
	asra
	bcs	L0583
	brset	0,X0041,L05D5
	lsr	,x
;
	db	$75, $85, $86
;
	brset	0,X0000,L0579
	rolx
	aslx
	asla
	asra
	bne	L0593
	brset	0,X0041,L05E5
	lsr	,x
;
	db	$84, $85, $95
;
	brset	0,X0000,L0589
	rolx
	aslx
	asla
	asra
	bcs	L05A3
	brset	0,X0041,L05F4
	lsr	,x
;
	db	$84, $85, $95
;
	brset	0,X0000,L0599
	rolx
	aslx
	asla
	asra
	bcs	L05B3
	brset	0,X0041,L0604
	lsr	,x
;
L0DA3:
	db	$84, $85, $95
;
	brset	0,X00FA,L05A4
	jmp	,x						;INFO: index jump
;
	jsr	,x						;INFO: index jump
	ldx	,x
	stx	,x
	brset	0,X0001,L05B2
	brclr	1,X0004,L05B8
	brset	3,X00FB,L05B2
	jsr	,x						;INFO: index jump
	jsr	,x						;INFO: index jump
	ldx	,x
	ldx	,x
	stx	,x
	brset	0,X0001,L05BF
	brset	1,X0003,L05C4
	add	,x
	add	,x
	jmp	,x						;INFO: index jump
;
	jsr	,x						;INFO: index jump
	ldx	,x
	stx	,x
	brset	0,X0001,L05CB
	brset	1,X0002,L05D0
	brclr	1,X00FB,L05CB
	jmp	,x						;INFO: index jump
;
	jsr	,x						;INFO: index jump
	ldx	,x
	stx	,x
	brset	0,X0001,L05D8
	brset	1,X0002,L05DD
	brclr	1,X0000,L05DE
	brset	1,X0003,L05E4
	brclr	2,X0006,L05EA
	brset	4,X0009,L05F0
	brclr	5,X000C,L05F6
	brset	7,X000F,L05EC
	brclr	0,X0002,L05F2
	brset	2,X0005,L05F8
	brclr	3,X0008,L05FE
	brset	5,X000B,L0604
	brclr	6,X000E,L061A
	asl	X0039
	dec	X002B
	sta	X0051
	stx	X0052
	ldx	#$52
	stx	X005A
	bsr	L060F
	bcc	L066E
	bsr	L060F
	bcc	L066E
	ldx	X005A
	bsr	L066F
	lda	,x
	bsr	L0620
	bcs	L0664
	decx
	cpx	#$50
	bcc	L0613
	clc
	bra	L0664
;
	sec
	rola
	bcs	L0628
	bsr	L063A
	bra	L062C
;
	bclr	6,X0004
	bra	L062C
;
	bsr	L0633
	asla
	bne	L0622
	bclr	6,X0004
	bclr	7,X0004
	brset	6,X0000,L0638
	bra	L0673
;
	bset	6,X0004
	bclr	6,X0000
	rts
;
	bsr	L066F
	bsr	L0620
	bcs	L0664
	bsr	L0673
	lda	#$01
	bclr	6,X0004
	bclr	7,X0004
	brset	6,X0000,L0650
	rola
	bsr	L0673
	bcc	L0649
	sta	,x
	dec	X0059
	bmi	L0661
	bsr	L063A
	decx
	bclr	7,X0004
	bra	L0645
;
	bsr	L0631
	clc
	bsr	L0673
	bsr	L063A
	bclr	7,X0004
	bsr	L066E
	bclr	6,X0004
	rts
;
	bsr	L0668
	bsr	L063A
	bset	7,X0004
	bclr	7,X0000
	rts
;
	lda	#$03
	brset	5,X007F,L068F
	brset	7,X007F,L0691
	brset	6,X0087,L0691
	deca
	brset	6,X007F,L068F
	brclr	0,X007F,L068D
	brset	1,X007C,L068F
	lda	X007F
	clr	X0087
	eor	X0082
	and	#$03
	rts
;
	ldx	#$10
	jsr	L38CC
	brclr	1,X0081,L06A4
	add	#$10
	bcc	L06A4
	lda	#$FF
	rts
;
	sta	X0057
	jsr	L38CC
	asla
	asla
	add	#$F4
	nega
	add	X0057
	sta	X0057
	clrx
	incx
	lda	X131A,x
	brclr	1,X0081,L06BE
	lda	X133A,x
	cmp	X0057
	bhi	L06B4
	rts
;
	clr	X0057
	add	X12D2,x
	bcs	L06CF
	inc	X0057
	incx
	bra	L06C5
;
	lda	X0057
	rts
;
	sta	X0004
	brset	2,X0004,L06DB
	brset	2,X0004,L06DE
	brset	2,X00FF,L06DD
	brset	0,X0000,L06E0
	brset	0,X0000,L0672
	brset	3,X0006,L06EC
	brset	3,X0006,L06EF
	brset	3,X0006,L06F2
	brset	3,X0006,L06F5
	brset	3,X0006,L06F1
	bra	L0734
;
	bset	3,X000A
	brset	1,X000E,L0719
	stx	,x
	bra	L06FC
;
	bset	0,X0000
	brset	4,X0000,L0701
	brset	0,X0000,L0704
	ldx	,x
	brclr	1,X00FC,L0708
	eor	,x
	brset	0,X000C,L070C
	brset	3,X0000,L0711
	brset	0,X0000,L0712
	brset	0,X0000,L0713
	brclr	1,X00FC,L0718
	eor	,x
	brset	0,X009C,L06B8
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
	bmc	L0755
	bne	L0753
	bhi	L0751
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
	bmc	L077A
	bhcc	L0778
	bcc	L0776
	bra	L0774
;
	bset	6,X001A
	bset	4,X0018
	bset	7,X001C
	bset	5,X0018
	bset	3,X0014
	bset	1,X0010
	brset	7,X000C,L076F
	brset	4,X0006,L076C
	brset	1,X0000,L0775
	bset	2,X0003
	negx
	bhcc	L0775
	inc	X0046
	bset	4,X0000
	bset	0,X000D
;
	db	$61
;
	brclr	5,X000C,L0734
	brclr	2,X000A,L0737
	bclr	3,X0020
	brclr	1,X000B,L073C
	bset	1,X0019
	brclr	0,X001D,L0741
	bset	5,X00BA
L0F89:
	clr	X00D6
	clr	X00C1
	jsr	L1E7D
	bset	0,X00BA
	jsr	L2640
	bset	4,X0001
	ldx	#$B0
	jsr	L38CC
	and	#$62
	ora	#$80
	brclr	4,X00B5,L07A5
	ora	#$10
	sta	X00B5
	clr	X00BF
	jsr	L2631
	brclr	0,X0061,L07C2
	clr	X00BC
L0FB1:
	bset	2,X00BC
	brclr	4,X0069,L07C2
	brset	1,X005F,L07C2
	bclr	6,X00B5
	lda	X00B5
L0FBD:
	ldx	#$B0
	jsr	L38A0
	bset	4,X00BC
	rts
;
	brclr	6,X0061,L07D0
	brset	6,X00BA,L07D0
	lda	#$05
	brclr	5,X00BA,L07D2
	lda	#$28
	sta	X0063
	bset	6,X00BA
	bset	5,X00BA
	lda	#$30
	ldx	#$01
	jsr	L1BD9
	brclr	3,X0067,L07EA
	bclr	3,X0067
	jsr	L1407
	jsr	L37B0
	jsr	L0785
	jsr	L37F4
	jsr	L142B
	brclr	6,X00BA,L07FC
	bclr	6,X00D6
	tst	X0063
	bne	L07DF
	jsr	L37F4
	jsr	L1E7D
	bclr	5,X00BA
	bclr	6,X00BA
	rts
;
	brset	7,X00D6,L0045
	brset	6,X00BA,L0010
	brclr	5,X00BA,L0034
	lda	X00BB
	sta	X0058
	jsr	L1446
	bra	L003B
;
	brset	7,X00D6,L0045
	brset	6,X00BA,L0022
	brclr	5,X00BA,L0034
	lda	X00BB
	sta	X0058
	jsr	L1551
	bra	L003B
;
	lda	X00BB
	sta	X0058
	jsr	L15C8
	bra	L003B
;
	brclr	0,X0061,L003B
	bclr	5,X0061
	bset	2,X005D
	lda	X00BB
	cmp	X0058
	beq	L0045
	bset	6,X00CB
	bset	5,X00CB
	rts
;
	brclr	4,X00BC,L004E
	bclr	4,X00BC
	jmp	L1AA5
;
	brset	7,X00C1,L0054
	brset	6,X00C1,L005A
	brclr	3,X00BC,L005A
	jmp	L1953
;
	brclr	2,X00C0,L0060
	jmp	L1CAD
;
	lda	X00B3
	bne	L006B
	jsr	L14DF
	jsr	L1516
	rts
;
	bmi	L00AC
	brset	4,X00B3,L0089
	bit	#$60
	beq	L0079
	jsr	L189A
	bra	L007B
;
	clr	X00B3
	bclr	0,X00BA
	brset	7,X00B9,L0086
	brclr	6,X00BA,L0086
	brclr	6,X00C1,L0088
	bset	0,X00BA
	rts
;
	lda	X00C1
	and	#$86
	cmp	#$86
	bne	L0094
	jsr	L1C82
	lda	#$B4
	brset	5,X00B6,L00AA
	lda	#$88
	brclr	7,X00BA,L0079
	brclr	2,X00B6,L0079
	brclr	1,X00B6,L00AA
	brset	5,X00B3,L00AA
	brclr	0,X00B6,L0079
	sta	X00B3
	bclr	7,X00B3
	bclr	2,X00BB
	and	#$07
	tax
	lda	X00B4
	bpl	L00BD
	and	#$7F
	sta	X00B4
	sta	X00B8
	ldx	X19DD,x
	jsr	L1A3D,x						;INFO: index jump
	brset	7,X00B3,L007B
	lda	X00B3
	cmp	#$70
	bcc	L0079
	bclr	3,X00BB
	brset	4,X00B3,L0079
	sta	X00B6
	bclr	5,X00BC
	and	#$07
	cmp	#$07
	bne	L0079
	bset	4,X00B6
	bra	L0079
;
	lda	X00C1
	bit	#$C0
	beq	L00F6
	and	#$86
	cmp	#$86
	bne	L0114
	bclr	5,X00BC
	bclr	2,X00BB
L10EF:
	jsr	L1E69
	beq	L00FF
	bclr	2,X00BA
	bclr	4,X00C0
	lda	#$97
	ldx	#$C0
	jsr	L1C84
	jsr	L1E74
	brclr	4,X00BF,L0110
	brset	2,X00BE,L0114
	brset	1,X00BE,L0114
	brclr	7,X00BF,L0114
	bclr	7,X00BF
	bset	4,X00BF
	bset	3,X00BC
	rts
	rts
;
	brset	4,X00C1,L0150
	dec	X00C3
	bne	L0150
	lda	X00C1
	cmp	#$60
	beq	L012B
	brclr	3,X00BC,L012B
	inc	X00C3
	jmp	L1953
;
	brclr	7,X00C1,L013D
	bclr	7,X00C1
	bclr	6,X00C1
	lda	X00C1
	and	#$07
	tax
X1137:
	ldx	X1D18,x
	jmp	L1D20,x						;INFO: index jump
;
	brclr	6,X00C1,L014E
	bclr	6,X00C1
	lda	X00B6
	and	#$07
	tax
	ldx	X1C0E,x
	jsr	L1C16,x						;INFO: index jump
	cmp	X3FC1
	rts
;
	brset	7,X00BA,L019C
	jsr	L1E4F
	beq	L019C
	lda	X00BE
X115B:
	brset	5,X00B9,L017E
	brset	4,X00B9,L0174
	brclr	1,X00BE,L0169
	brclr	3,X00B9,L016C
	bra	L0198
;
	brset	3,X00BA,L0198
	bit	#$F0
	beq	L019C
	ora	#$F0
	bra	L01A0
;
	brclr	1,X00BE,L017A
	brset	0,X00BE,L018F
	lda	#$02
	bra	L0186
;
	brclr	2,X00BE,L0184
	brset	0,X00BE,L018F
	lda	#$04
	bset	7,X00BF
	bset	5,X00CB
	bset	3,X00BC
	inca
	bset	4,X00BA
	and	#$07
	ora	#$20
	brclr	6,X00B9,L0198
	ora	#$C0
	add	#$F0
	bcs	L01A0
	jsr	L1E87
	clra
	sta	X00BE
	brclr	4,X00C1,L0150
	jmp	L1519
;
	brclr	1,X006C,L0156
	brset	0,X00CD,L01A3
	brclr	1,X0003,L01B4
	bih	L01B6
	brset	3,X00B7,L020C
	bsr	L01BD
	lda	X0056
	jsr	L261E
	jsr	L2533
	cmp	XA620
	sta	X0288,x
	incx
	rts
;
	brclr	3,X00D6,L01C7
	bclr	3,X00D6
	bset	6,X00BA
	ldx	X0271
	stx	X005B
	lsrx
	lsrx
	lsrx
	cpx	#$0C
	bcc	L01E7
X11DB:
	ldx	X15A8,x
	lda	X0272
	jmp	L15E4,x						;INFO: index jump
	jmp	L170D
	jmp	L170A
;
	bset	6,X00BB
	bset	2,X00BF
	cmp	X0273
	bcs	L01F5
	bclr	2,X00BF
	brclr	4,X00CE,L01E7
	clrx
	lda	X0274
	bsr	L01BD
	bsr	L01C1
	lda	X0273
	jsr	L15BD
	bsr	L01C1
	brset	0,X00BB,L024B
	bsr	L01C1
	cpx	#$08
	bne	L020B
	bra	L024B
;
	brclr	1,X005B,L024D
	lda	X0274
	bmi	L022E
	eor	X00C5
	and	#$1F
	bne	L0224
	brset	7,X00C5,L022E
	eor	X00C5
	sta	X00C5
	bset	5,X00C5
	bset	6,X00C5
	bset	7,X00C5
	brclr	4,X00CE,L024B
	brset	6,X00BB,L023B
	clrx
	bsr	L01C1
	cpx	#$04
	bne	L0235
	bset	0,X00BB
	ldx	#$04
	lda	X0273
	jsr	L15B4
	lda	X0272
	jsr	L15B4
	bset	6,X00CB
	jmp	L170A
;
	ldx	X005B
	cpx	#$08
	beq	L0263
	cpx	#$0B
	bne	L024D
	brclr	6,X00CE,L0260
	jsr	L1EB3
	lda	X0275
	bclr	5,X00BA
	bclr	6,X00BA
	tsta
	bpl	L026C
	bset	6,X00BA
	bclr	3,X00BA
	bit	#$40
	beq	L0286
	bset	3,X00BA
	bit	#$20
	beq	L0286
L1278:
	tax
	lda	X00B8
	and	#$0F
	ora	#$80
	sta	X00B4
	lda	#$CA
	sta	X00B3
	txa
	jsr	L2617
	eor	X00B9
	and	#$07
	bra	L02F4
;
	bclr	4,X00BB
	brclr	2,X005B,L024D
	ldx	#$07
L1296:
	stx	X0056
	lda	#$07
	sub	X0056
	tax
	lda	X0272,x
	ldx	X0056
	sta	X0280,x
L12A5:
	dec	X0056
	bpl	L0298
	bset	4,X00BB
	bset	2,X0094
	bset	5,X00BB
	bra	L024B
;
L12B1:
	bclr	1,X00BB
	bit	#$10
	beq	L02B9
	bset	1,X00BB
	and	#$87
	bpl	L02C9
	ora	#$10
	brset	7,X00B9,L02D0
	bclr	4,X00BB
	jsr	L1797
	bra	L02CE
;
	brclr	7,X00B9,L02D0
	bclr	7,X00BA
	bset	7,X00CB
	jsr	L261F
	eor	X00B9
	and	#$B8
	bra	L02F4
;
	brset	0,X00BF,L02F2
	lda	X0271
	and	#$03
	tax
	lda	X0272,x
	sta	X0056
	and	#$07
	tax
	ldx	X176B,x
	bclr	7,X00BA
	jsr	L1771,x						;INFO: index jump
	bra	L030A
;
	bset	5,X00CB
	beq	L030A
	eor	X00B9
X12FA:
	sta	X00B9
	brset	2,X00B8,L030A
	brclr	3,X00B9,L030A
	ldx	#$B2
	jsr	L38CC
	jsr	L1E45
	bset	6,X00D6
	rts
;
	brset	0,X00BF,L02F2
	lda	X0273
	brset	3,X00B6,L031A
	cmp	#$FF
	beq	L035A
X131A:
	sta	X00B7
	lda	X00B6
	and	#$07
	cmp	#$04
	bne	L032F
	jsr	L1E8C
	eor	X00C0
	and	#$03
	beq	L032F
	bset	2,X00C0
	lda	X0272
	bmi	L033E
	brclr	6,X00B9,L0345
	bclr	4,X00BB
	jsr	L1E7F
	bra	L0343
;
	brset	6,X00B9,L0345
	bset	6,X00B9
	bset	5,X00CB
	brclr	5,X00B6,L035F
	lda	X00B7
	ldx	X00C2
	incx
	beq	L035D
	brclr	7,X00C1,L035F
	cmp	X00C2
	bne	L035F
	bclr	5,X00B6
	bra	L035F
;
X135A:
	bset	3,X00BB
	cmp	XB7C2
	lda	X00C3
	cmp	#$40
	beq	L0369
	bset	5,X00BB
	bset	6,X00CB
	bra	L02F2
;
	bit	X2744
	lsra
	brset	0,X0026,L0381
;
X1372:
	db	$61
;
X1373:
	brset	1,X001F,L03D7
	brclr	4,X00B6,L0384
	brset	7,X00B6,L03C8
	lda	X00C1
	and	#$07
	cmp	#$02
	beq	L03CA
	brset	5,X00BC,L0390
	brset	6,X00BC,L0390
	lda	X00B8
	and	#$70
	bne	L0394
	bsr	L03CA
	bset	7,X00BB
	brset	7,X0056,L0397
	rts
;
	brclr	7,X0056,L03B2
	bset	4,X00B8
	brset	2,X00B8,L03AD
	bclr	0,X00B8
	lda	#$FF
	ldx	#$BC
	jsr	L38A0
	incx
	jsr	L38A0
	lda	#$80
	sta	X00B3
	rts
	jmp	L1D8A
;
	bclr	3,X00BF
	brclr	7,X0056,L0435
	jsr	L1C7C
	bset	2,X007E
	lda	X00B8
	sta	X00BD
	bset	2,X00BB
L13C5:
	bclr	6,X00BC
	rts
;
	bclr	4,X00BB
	brset	6,X00BF,L03D2
	brset	6,X0056,L03DC
	bclr	6,X00BC
	bclr	2,X00BB
	bclr	6,X00B8
	bclr	5,X00B8
	bclr	4,X00B8
	bra	L0433
;
	lda	X00B8
	brset	6,X00BC,L03E5
	bit	#$70
	bne	L0435
	and	#$0C
	sta	X00BD
	lda	X0272
	sub	#$06
	beq	L03F9
	bmi	L03F7
	deca
	inc	X00BD
	bra	L03EC
;
	add	#$07
	jsr	L261E
	add	X00BD
	sta	X00BD
	brclr	2,X00B8,L040C
	jsr	L261F
	eor	X00B8
	and	#$08
	bra	L0417
;
	brclr	5,X0069,L0413
	bit	#$01
	bne	L0425
	eor	X00B8
	and	#$03
	beq	L0429
L1419:
	brclr	6,X00BC,L0422
	bclr	6,X00B8
	bclr	5,X00B8
	bclr	4,X00B8
	brset	5,X00BC,L03C3
	brset	6,X00BC,L03D2
	rts
;
	bset	5,X00BB
L142B:
	lda	X00BD
	sta	X00B8
	bset	6,X00BC
	bclr	2,X00BB
	bset	7,X00CB
	rts
;
	brclr	6,X00D2,L043C
	jmp	L1798
;
	brclr	7,X0056,L0469
	bclr	2,X00C0
	jsr	L1E42
	bsr	L03CA
L1446:
	brset	5,X00B6,L0463
	brclr	6,X00BF,L045C
	brset	1,X00BA,L0453
	bset	1,X00BA
	bset	3,X00BC
	lda	#$E3
	brset	4,X00C1,L045E
	ldx	#$01
	bra	L0460
;
	lda	#$60
	ldx	#$28
	jmp	L1C84
;
	brclr	2,X00C1,L045C
	bset	5,X00C1
	rts
;
	brclr	5,X00B6,L0471
	jsr	L1D8A
	bra	L048B
;
	lda	X00B6
	and	#$07
	cmp	#$05
	beq	L0484
	cmp	#$04
L147B:
	bne	L048B
	brclr	6,X00B5,L048B
	clr	X00C2
	bset	0,X00B6
	lsr	X00C2
	bne	L048B
	jsr	L1D4B
	bset	7,X00BA
	lda	X00B6
	ora	#$D0
	bit	#$20
	beq	L0497
	and	#$A7
	sta	X00B3
	rts
;
	lda	X00B3
	bit	#$0F
	beq	L0518
	and	#$07
	tax
	clra
	sec
	rola
	decx
	bpl	L04A5
	sta	X0056
	ldx	#$B5
	brclr	3,X00B3,L04B2
	ldx	#$BC
	brclr	6,X00B3,L04BE
	brset	5,X00B3,L04BC
	coma
	and	,x
	bra	L04BF
;
	eor	,x
	cmp	X00FA
	brset	3,X00B3,L04CB
	brclr	1,X0056,L04CB
	bit	#$02
	beq	L04CB
	ora	#$0C
	brclr	3,X008E,L04DD
	brclr	4,X0056,L04D7
	bit	#$10
	beq	L04D7
	ora	#$08
	bit	#$08
	bne	L04DD
	and	#$AF
	sta	,x
	ldx	#$F3
	brset	3,X00B3,L052F
	and	#$62
	ldx	#$B0
	jsr	L38A0
	bset	5,X00CB
	brset	5,X0056,L04F5
	brclr	6,X0056,L0549
	brset	2,X00B8,L0507
	lda	X00B6
	and	#$17
	cmp	#$04
	bne	L0507
	brclr	5,X00B6,L0503
	brclr	7,X00BA,L0507
	bsr	L048B
	bra	L0553
;
	brclr	6,X0056,L0549
	ldx	#$10
	cmp	#$05
	beq	L054E
	brset	6,X0059,L051A
	ldx	#$F1
	brset	6,X00B9,L054E
	bra	L0549
;
	bset	4,X00C0
	bclr	3,X00C0
	brclr	2,X00B8,L0532
	bset	3,X00C0
	ldx	#$B2
	jsr	L38CC
	sta	X00B8
	bclr	5,X00BB
	jmp	L17AD
	jmp	L1AA5
;
	brset	6,X00C1,L0549
	jsr	L1E69
	bne	L0549
	lda	#$01
	sta	X00C3
	lda	X00C1
	cmp	#$95
	beq	L0549
	lda	#$86
	jsr	L1C82
	lda	X00B3
	and	#$10
	tax
	stx	X00B3
	bset	3,X00BC
	rts
;
	lda	#$C8
	brset	6,X005F,L057F
	jsr	L1E5A
	brset	7,X0061,L058E
	brclr	1,X00BA,L0563
	and	#$BF
	ora	#$08
	ora	#$04
	and	#$4E
	brclr	7,X00B5,L0571
	brset	3,X00B5,L0571
	and	#$4A
	brclr	6,X00CE,L0576
	ora	#$30
	brset	4,X00CE,L057C
	brclr	3,X00CE,L057E
	ora	#$10
	inca
	bit	#$04
	beq	L0590
	brset	3,X005D,L0589
	brclr	3,X00BF,L058B
	and	#$F3
	brclr	7,X00BF,L0590
	and	#$FB
	ldx	#$01
	brclr	3,X008E,L059B
	ora	#$02
	and	#$BB
	ldx	#$09
	brclr	0,X0061,L05AD
	brclr	1,X0082,L05A8
	brset	0,X0082,L05A8
	ora	#$80
	bra	L05AD
;
X15A8:
	brclr	4,X0069,L05AD
	ora	#$40
	sta	X027C
	txa
	brclr	6,X005F,L05B6
L15B4:
	ora	#$40
	bclr	1,X00BC
	ora	#$80
	brclr	4,X00BF,L05C4
L15BD:
	brset	7,X00B5,L05C4
	bset	1,X00BC
	and	#$7F
	sta	X027D
	lda	#$20
	brclr	2,X00B8,L05D1
	brset	6,X005F,L05D1
	lda	#$02
	ora	#$10
	bset	2,X00B5
	tax
	bclr	3,X00BC
	lda	#$0A
	jmp	L1A75
;
	db	$7E, $7B
;
	brset	0,X005E,L05BE
	cmp	XD0F5
	bclr	3,X005D
	lda	X00B8
	and	#$74
	cmp	#$60
	beq	L062B
	ldx	#$02
	cmp	#$10
	bne	L05F9
	bset	3,X00BF
	bra	L0627
;
	ldx	#$83
	cmp	#$50
	beq	L0627
	clrx
	brclr	2,X00B8,L0608
	brclr	3,X00B8,L060D
	bra	L060B
;
	brclr	1,X00B8,L060D
	ldx	#$04
	and	#$70
	cmp	#$20
	beq	L0621
	brset	2,X00B8,L0620
	incx
	cmp	#$30
	beq	L0621
	incx
	cmp	#$40
	beq	L0621
	rts
;
	aslx
	aslx
	sec
	rolx
	sec
	rolx
	lda	#$18
	bra	L0675
;
	lda	X0088
	lsra
	sta	X0056
	lda	X0083
	asla
	add	X0056
	ldx	#$70
	jsr	L388B
	jmp	L17BA
;
	brclr	3,X00B3,L05E5
	clr	X00B6
	brclr	6,X00B3,L0654
	brclr	5,X00B3,L064E
	ldx	#$09
	clr	X00B3
	bra	L0672
;
	ldx	#$EA
	stx	X00B3
	bra	L066D
;
	bclr	5,X00BC
	bclr	6,X00BC
	bset	3,X0094
	jsr	L1DF2
	ora	#$80
	brset	3,X00B5,L0666
	coma
	and	X0056
	cmp	XBA56
	ldx	X0057
	jsr	L38A0
	jsr	L1E29
	ldx	#$89
	jsr	L1E06
	sta	X0050
	stx	X0051
	brclr	7,X00D6,L068C
	jsr	L0785
	jsr	L22BD
	brclr	3,X0067,L0679
	bclr	3,X0067
	jsr	L1EE2
	bra	L0679
;
	lda	X0050
	ldx	X0051
	sta	X027A
	stx	X027B
	bset	7,X00D6
	clr	X00D9
	rts
;
	brclr	3,X00B3,L06A5
	brset	7,X00BA,L069A
	ldx	#$0A
	bra	L0627
;
	brset	3,X00BF,L069A
	bset	0,X00BC
	brset	6,X00D3,L06AF
	bclr	0,X00BC
	lda	X00BC
	and	#$07
	tax
	lda	#$20
	bra	L0675
X16B8:
	jmp	L1B81
;
	bclr	3,X00BF
	bclr	5,X00BB
	bclr	4,X00BB
	brclr	3,X00B3,L06DA
	ldx	#$B1
	jsr	L38CC
	brclr	5,X00B6,L06D3
	bit	#$70
	bne	L06D5
	jmp	L1DA5
;
	ora	#$70
	sta	X00B8
	brset	2,X00B8,L06DA
	bclr	7,X00BF
	lda	X00B8
	and	#$70
	cmp	#$70
	bne	L06E7
	jsr	L1DCA
	jsr	L1DF2
	bset	0,X0056
	and	X0056
	bset	3,X00B5
	bne	L06F6
	bclr	3,X00B5
	bclr	4,X00B5
	bset	3,X00BC
	bclr	1,X00BA
	bset	1,X00BF
	bset	0,X00BF
	lda	#$40
	ldx	#$0C
	brclr	6,X005F,L0707
	ldx	#$01
	jsr	L1E7D
L170A:
	jmp	L1C84
;
L170D:
	brset	2,X00B8,L0715
	bset	1,X00B8
	bclr	0,X00B8
	cmp	X16B8
	bra	L06F6
;
	brset	5,X00B3,L0795
	brclr	3,X00BF,L0723
	bset	0,X00B3
	bset	1,X00B3
	brset	6,X00B3,L0732
	brclr	4,X00B3,L076F
	brclr	1,X00BA,L076C
	bclr	1,X00BA
	bset	3,X00BC
	bra	L076C
;
	brclr	6,X00B3,L073D
	brclr	4,X00B3,L073D
	bclr	4,X00B3
	bclr	6,X00BF
	cmp	X1CBF
	bclr	6,X00B3
	lda	X00B6
	and	#$07
	cmp	#$06
	bne	L0754
	ldx	#$B1
	jsr	L38CC
	sta	X00B8
	bclr	7,X00BF
	bra	L0769
;
	cmp	#$04
	bne	L0769
	brset	4,X00B3,L0769
	lda	X00B6
	eor	X00B3
	bit	#$08
	beq	L0769
	jsr	L1AFE
	jmp	L1A6D
;
	brclr	4,X00B3,L076F
	bclr	6,X00BF
	rts
;
	brset	7,X00BF,L06FE
	brset	3,X00BF,L06FE
	bset	7,X00BF
	jsr	L1AE4
	lda	#$48
	bra	L0700
	jmp	L1AFE
;
	brclr	3,X00B3,L0789
	bset	7,X00BF
	jmp	L1AF6
;
	brclr	6,X00B9,L076E
	jsr	L1E81
	lda	#$48
	clrx
	jmp	L1A75
;
	bclr	6,X00BF
L1797:
	brset	4,X00B3,L07A5
	brset	5,X00B6,L077E
	bsr	L07C9
	lda	#$FF
	sta	X00C2
	bra	L0775
;
	lda	X00BD
	eor	X00B8
	and	#$07
	bne	L07B1
L17AD:
	lda	X00BD
	sta	X00B8
	clr	X00C3
	jsr	L1E74
	lda	X00C1
	cmp	#$95
L17BA:
	bne	L07C3
	clr	X00C1
	bset	3,X00BC
	jmp	L1E29
;
	jsr	L17AD
	jmp	L1ADA
;
	lda	X00B8
	sta	X00BD
	ldx	X00C1
	jmp	L1E38
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
	brclr	0,X00B6,L07EE
	brset	1,X00B6,L07EE
	brset	2,X00B6,L07F0
	bclr	2,X00BA
	brclr	2,X00C0,L07F6
	bclr	2,X00C0
	cmp	X3FBB
	clr	X00C5
	jsr	L1E7D
	bset	7,X00BA
	bset	7,X00CB
	bclr	6,X00BC
	brset	3,X00C0,L0008
	bclr	4,X00C0
	bclr	3,X00C0
	bset	7,X00B5
	bra	L0792
;
	eor	#$11
	coma
	coma
;
	db	$75
;
	lsra
	brset	0,X001B,L07E4
	bclr	6,X0084
	ldx	#$C7
	brset	3,X008E,L0021
	brclr	5,X0069,L0023
	ldx	#$E7
	bset	7,X00BF
	bra	L07D2
;
	ldx	X00B7
	clra
	sta	X027C
	lda	#$11
	bra	L07E5
;
	brset	3,X00C1,L004D
	ldx	#$50
	bset	0,X005B
	cmp	X115B
	lda	#$C1
	bsr	L0084
	ldx	#$86
	brclr	3,X00B6,L0046
	ldx	#$06
	lda	#$18
	brclr	0,X005B,L07F0
	bra	L07D9
;
	lda	#$40
	ldx	#$02
	bsr	L0084
	jsr	L1DCA
	jmp	L1CF7
	rts
;
	brset	5,X00C1,L0076
	bset	7,X00BF
	jsr	L1D84
	ldx	#$A0
	brset	2,X00C2,L006E
	lda	#$6C
	brset	1,X00C2,L0070
	ldx	#$20
	lda	#$64
	jmp	L1BD4
	jmp	L1D11
;
	brset	5,X00B6,L0073
	jsr	L1E74
	lda	#$92
	ldx	#$10
	bra	L0084
;
	ldx	#$C8
	sta	X00C1
	stx	X00C3
	jmp	L147B
;
	brset	3,X00C1,L004D
	brset	5,X00C1,L0076
	lda	#$C4
	ldx	#$64
	brset	5,X00B6,L009C
	lda	#$D3
L189A:
	ldx	#$FF
	bsr	L0084
	bclr	5,X00B5
	brset	3,X00CE,L00AD
	ldx	#$AC
	jsr	L38CC
	rora
	bcc	L00AD
	bset	5,X00B5
	jsr	L1E8C
	eor	X00C0
	and	#$03
	eor	X00C0
	sta	X00C0
	lda	X005B
	clrx
	jmp	L1BD4
;
	lda	#$60
	brclr	5,X00C1,L00F3
	ldx	#$02
	brset	7,X00B9,L00CD
	brset	7,X00BA,L0084
X18CB:
	bset	5,X00BB
	brclr	1,X00BA,L00D7
	bclr	1,X00BA
	brclr	6,X00B5,L00D7
	bset	3,X00BC
	brclr	3,X005D,L00E0
	bclr	3,X005D
	lda	#$82
	sta	X00B3
	lda	#$C0
	brset	3,X00BB,L0082
	jsr	L1E29
	brset	4,X00BF,L00EF
	ldx	#$2D
	bra	L0113
;
	lda	#$C7
	bra	L0082
;
	ldx	#$1E
	bsr	L0084
	jsr	L1E06
	ldx	X00B7
	stx	X027D
	beq	L0109
	brclr	7,X0061,L0109
	ldx	#$29
	lda	#$1A
	cmp	XAE09
	jmp	L1BE5
;
	jsr	L17BF
	ldx	#$23
	lda	#$95
	jmp	L1C84
;
	dec	X006F,x
	ror	X009C
;
	db	$5E
;
	asra
	brset	0,X0016,L00C7
;
	db	$86
;
	brset	2,X00CE,L0175
	brset	7,X00B9,L0175
	jsr	L1E4F
	beq	L0135
	lda	#$85
	sta	X00B3
	lda	#$04
	sta	X00C2
	rts
;
	lda	#$87
	clr	X00BE
	brset	2,X00CE,L0175
	brset	7,X00B9,L0175
	brset	5,X0080,L0120
	lda	X007F
	and	#$2B
	cmp	#$02
	bne	L0120
	brset	2,X00B8,L0135
	brset	4,X00C0,L0120
	bset	2,X00BA
L1953:
	bclr	4,X00BA
	rts
;
	clr	X00C1
	bclr	4,X00B6
	bclr	2,X00BB
	lda	#$87
	brclr	0,X00BA,L0163
	lda	#$D7
	ldx	#$10
	bra	L0115
;
	brclr	2,X00BE,L016D
	brset	4,X00BA,L0178
	brset	5,X00B6,L017B
	brset	4,X00BF,L0135
	lda	#$86
	jmp	L1C82
;
	bclr	5,X00B6
	rts
	jmp	L1B7A
;
	brclr	5,X00C1,L0184
	jmp	L185C
;
	lda	#$D3
	ldx	#$FF
	bra	L0165
;
	lda	#$88
	sta	X00B3
	rts
;
	brclr	6,X00BF,L019B
	ldx	#$06
	brclr	2,X00B8,L0198
	aslx
	jmp	L1C39
;
	brset	5,X00C1,L01A5
	lda	#$A1
	ldx	#$30
	jmp	L1C84
;
	bclr	2,X00BB
	lda	X00B8
	and	#$70
	bne	L01B6
	brset	3,X00BF,L01B6
	brset	7,X00B6,L01B6
	jsr	L1A54
	jsr	L1E29
	jmp	L1C7C
;
	brset	6,X00BF,L01C5
	brclr	5,X00C1,L01C5
	jmp	L185C
;
	lda	#$C3
	jmp	L1C9A
;
	bsr	L01D5
	eor	X00B8
	and	#$70
	eor	X00B8
	sta	X00B8
	rts
;
	bsr	L01E4
	add	#$B3
	jsr	L38CB
	and	#$70
	cmp	#$70
	bne	L01E3
	clra
	rts
;
	lda	X00B8
	and	#$03
	brclr	2,X00B8,L01F1
	lda	#$04
	brclr	3,X00B8,L01F1
	inca
	rts
;
	bsr	L01E4
	add	#$BA
	sta	X0057
	jsr	L38CB
	sta	X0056
	lda	X00B8
	jsr	L2617
	jsr	L2664
	rts
;
	lda	X00B8
	asla
	jsr	L2616
	bne	L0210
	lda	#$07
	deca
	brclr	2,X00B8,L0219
	brclr	3,X00B8,L0223
	bra	L0221
;
	brclr	1,X00B8,L021E
	add	#$0E
	brclr	0,X00B8,L0223
	add	#$07
	sta	X027C
	lda	#$19
	rts
;
	clr	X00BD
	bclr	2,X00BB
	ldx	#$B1
	jsr	L38CC
	eor	X00B8
	and	#$0F
	beq	L0242
	ldx	#$B1
	jsr	L38CC
L1A3D:
	brset	2,X00B8,L0240
	bsr	L0248
	jsr	L1DD5
	brset	7,X00BB,L0228
	lda	X00B8
	and	#$7F
	jmp	L38A0
;
	lda	#$01
	brset	2,X00B8,L0266
L1A54:
	brset	2,X00BE,L0268
	brset	5,X00B9,L0268
	lda	X00B5
	and	#$4E
	brset	3,X008E,L0264
	brclr	6,X005F,L0266
	and	#$BF
	bit	#$40
	rts
;
	bsr	L024F
	bne	L026F
L1A6D:
	coma
	rts
;
	lda	X00B9
	and	#$38
	rts
;
	lda	X00B6
	beq	L027C
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
	brset	3,X00B6,L0293
	bset	5,X005B
	brclr	5,X00B5,L0298
	bset	2,X005B
	brclr	2,X00B8,L029F
	bset	7,X005B
	bra	L02B0
;
	bset	6,X005B
	lda	X00B7
	cmp	#$41
L1AA5:
	bhi	L02AE
	cmp	#$12
	bcs	L02B0
	bset	0,X005B
	cmp	X125B
	lda	X005B
	rts
;
	clrx
	lda	X0274
	bsr	L02D0
	lda	X0273
	bsr	L02D0
	lda	X0272
	bsr	L02D0
	lda	#$2E
	sta	X00DE
	lda	#$20
	sta	X00E0
	lda	#$52
	sta	X00E1
	rts
;
	sta	X005B
	bsr	L02D9
	lda	X005B
	jsr	L261E
	jsr	L2617
	add	#$30
	sta	X00DA,x
	incx
	rts
;
	clra
	brclr	2,X005F,L02EE
	lda	X02A5
	ldx	X000B
	jsr	L246E
	sta	X000B
	jmp	L37B0
	rts
;
	ldx	#$CD
L1AF6:
	jsr	L265E
	bne	L0309
	clra
	sta	X0254
	sta	X0255
	sta	X0256
	bset	4,X009E
	bra	L0319
;
	ldx	#$CC
	jsr	L265E
	bpl	L0312
	bclr	1,X00CB
	bne	L031B
	dec	,x
	bclr	5,X00C5
	bclr	1,X00CB
	bset	7,X005D
	rts
;
	brset	6,X00C6,L0331
	brset	5,X00C6,L0333
	brclr	7,X00C6,L031B
	brset	2,X00CB,L0331
	lda	X00CC
	cmp	#$FF
	beq	L0331
	bclr	7,X00C6
	rts
;
	bset	7,X0050
	lda	X009E
	and	#$F0
	bne	L03AC
	lda	X00C6
	and	#$1F
	asla
	sta	X0056
	asla
	add	X0056
	cmp	#$BA
	bne	L0349
	lda	#$FF
	brclr	5,X00C6,L0353
	bset	4,X009E
	bset	5,X009E
	bclr	5,X00C6
	rts
;
	tsta
	bmi	L0358
	bne	L035D
	brset	1,X00CB,L03AC
	beq	L035F
	sta	X00CC
	clr	X00C6
	lda	X00C7
	bpl	L03AD
	brclr	6,X00C7,L03C4
	and	#$0E
	tax
	lda	X1FEB,x
	sta	X0059
	lda	X1FEC,x
	sta	X0056
	lsrx
	lda	X1FFB,x
	sta	X0256
	and	#$0F
	beq	L0393
	deca
L1B81:
	sta	X0058
	ldx	X1FEA
	stx	X0057
	lda	X1FE9
	tsta
	beq	L0390
	bset	0,X0059
	jsr	L2679
	brclr	5,X00C7,L0399
	bset	6,X009E
	cmp	X1E9E
	brclr	7,X0050,L03AC
	bclr	2,X00CB
	lda	X00CE
	and	#$07
	cmp	#$06
	bne	L03AC
	eor	X00CE
	sta	X00CE
	rts
;
	ldx	#$61
	stx	X0256
	sta	X0257
	cmp	#$70
	bcs	L0399
	and	#$07
	tax
	lda	X2003,x
	sta	X0257
	bra	L0396
;
	ldx	X00C8
	and	#$0F
	bit	#$08
	bne	L03D3
	bclr	7,X0050
	tstx
	bpl	L03D3
	negx
	inca
	jsr	L261E
	sta	X0257
L1BD9:
	txa
	and	#$0F
	add	X0257
	sta	X0257
	lda	#$71
	sta	X0256
	bra	L0393
;
	brset	1,X0057,L03EC
	eor	X0280
	brset	1,X0057,L03F4
;
	db	$9E
;
	brset	1,X0060,L03F6
	brset	0,X0000,L0465
	brset	1,X0088,L042E
	asla
	aslx
;
	db	$92
;
	sbc	#$B0
	cmp	X0048,x
	bclr	2,X000E
	brset	0,X0000,L0408
	brset	0,X0000,L040B
	brset	6,X0069,L0411
X1C0E:
	brset	0,X0080,L0430
	lda	#$27
	jsr	L25B7
L1C16:
	cmp	#$19
	bcs	L041C
	bclr	3,X005D
	cmp	#$D5
	bcs	L0425
	bset	0,X0080
	bset	6,X0069
	rts
;
	cmp	#$D2
	bhi	L0430
	brclr	6,X0069,L0430
	bclr	6,X0069
	bclr	0,X0080
	rts
;
	jsr	L2136
	brclr	7,X000C,L045A
	jsr	L210B
	ldx	#$14
	jsr	L20D2
	bclr	2,X0006
	bclr	3,X0006
	jsr	L2643
	bset	5,X0069
	lda	X0002
	and	#$0C
	bne	L0450
	bclr	5,X0069
	bset	2,X0006
	bset	3,X0006
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
	bsr	L049E
	bsr	L04B4
	lda	#$30
	brclr	6,X005F,L0472
	lda	#$31
	bset	0,X0001
	sta	X0005
	lda	#$02
	sta	X0006
	rts
;
	brset	2,X0001,L0490
L1C7C:
	bset	2,X0001
	ldx	#$08
	bra	L048E
;
L1C82:
	brset	0,X0002,L0490
	bset	0,X0002
	brset	6,X005F,L0490
	bclr	3,X0001
	ldx	#$06
	bsr	L04D2
	lda	#$2C
	sta	X000F
	lda	X215B
	sta	X000D
	lda	X0010
	lda	X0011
	rts
;
	bclr	4,X0061
	bclr	0,X0081
	brset	2,X0012,L04A8
	brclr	2,X0001,L04B2
	ldx	#$32
	bsr	L04D2
	bclr	2,X0001
	ldx	#$05
	bsr	L04D2
	cli
	rts
;
	lda	#$04
	jsr	L2633
	clr	X000F
	lda	#$07
	sta	X0004
X1CBF:
	clr	X0000
	bclr	6,X0001
	bclr	5,X0061
	brclr	0,X0002,L04B2
	bclr	0,X0002
	brclr	4,X000C,L050A
	ldx	#$32
	bsr	L04D2
	rts
;
	sei
	bclr	7,X008F
	brclr	1,X0002,L04DB
	bclr	1,X0002
	cmp	X1202
	txa
	and	#$03
	bne	L04F4
	stx	X0057
	clra
	brclr	2,X005F,L04F0
	lda	X02A5
	ldx	X000B
	jsr	L246E
	sta	X000B
	ldx	X0057
	jsr	L2631
L1CF7:
	decx
	bpl	L04D5
	bset	2,X00D6
	bset	4,X005E
	bset	7,X0096
	brclr	0,X0002,L0509
	brclr	7,X008F,L0509
	jmp	L04ED
;
	cli
	rts
;
	ldx	#$90
	lda	#$00
	clr	X004F,x
L1D11:
	sta	X024F,x
	decx
	bne	L050F
	rts
;
X1D18:
	brclr	5,X0005,L0536
	lda	X2152
	sta	X0004
L1D20:
	lda	X2153
	sta	X0005
	lda	X2154
	sta	X0006
	bset	7,X0012
	bset	6,X0012
	bset	5,X0012
	lda	X215A
	sta	X000C
	rts
;
	clrx
	lda	X214E,x
	sta	,x
	incx
	cpx	#$13
	bmi	L0537
	rts
;
	clrx
	lda	X2161,x
	sta	,x
	incx
	cpx	#$13
	bmi	L0542
L1D4B:
	jmp	L205A
;
	stx	,x
	sub	X00FC
	brset	0,X0004,L0553
	brclr	7,X0040,L0557
	bra	L0559
;
	brset	0,X00BC,L051C
	brset	0,X002C,L055F
	brset	0,X00FA,L055A
	eor	X00FE
	brset	0,X0007,L0598
	brset	1,X0040,L056A
	bra	L056C
;
	brset	0,X00BC,L052F
	brset	0,X002C,L0572
	brset	0,X00FA,L0582
	tstx
	asr	X0005
	ldx	X3402
	ldx	X3101
	ldx	X2ECC
	brn	L053E
	lda	X0078
	and	#$07
	ldx	#$81
	cmp	#$04
	bcc	L05AE
	cmp	#$01
	bne	L0594
	bset	4,X00CE
	rts
;
	ldx	#$02
	cmp	#$02
	bne	L059D
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
	bra	L05A4
;
	clrx
	lda	X21D5,x
	sta	X0056
	lda	X21D4,x
	beq	L05D3
	jsr	L2889
	bne	L05BC
	ldx	X21D3,x
	jsr	L2183,x						;INFO: index jump
	bclr	6,X005D
	rts
;
	sub	X0000,x
	add	X001F,x
	eor	X002C,x
	brclr	3,X002C,L05DD
	lda	#$02
	eor	X0012
	sta	X0012
	bset	3,X0076
	lda	X0014
	sta	X006D
	lda	X0015
	sta	X006E
	brclr	4,X005E,L05F5
	brset	1,X0012,L0624
	bra	L0611
;
	sub	X0070
	tax
	lda	X006D
	sbc	X006F
	bit	#$E0
	bne	L0611
	brset	1,X000C,L060E
	brclr	1,X0012,L060E
L1E06:
	sta	X0071
	stx	X0072
	bclr	0,X0076
	bra	L061C
;
	jsr	L227E
	lda	X006E
	sta	X0070
	lda	X006D
	sta	X006F
	brset	4,X005E,L0622
	brset	5,X0003,L0625
	brclr	1,X0012,L0628
	bclr	4,X005E
	rts
;
	brclr	1,X0012,L0624
	lda	#$02
	eor	X0012
	sta	X0012
	lda	#$10
	add	X006E
	sta	X006E
	bcc	L0638
	inc	X006D
L1E38:
	lda	X0015
	bra	L05ED
;
	brclr	3,X0076,L0642
	bclr	3,X0076
	rts
;
L1E42:
	bset	4,X005E
	bclr	1,X0012
	lda	X0015
	lda	#$20
	add	X0076
	ora	#$40
	and	#$DF
	sta	X0076
	brclr	5,X0003,L0672
	brset	7,X0001,L0666
	lda	X005E
L1E5A:
	sub	#$20
	bcs	L0660
	sta	X005E
	bmi	L0694
	bclr	6,X005E
	bra	L066F
;
	brset	2,X0076,L0687
L1E69:
	bset	2,X0076
	bset	1,X0076
	bra	L0687
;
	brclr	0,X0061,L0694
	lda	#$14
L1E74:
	clrx
	stx	X0071
	sta	X0072
	bset	0,X0076
	brclr	0,X0061,L0683
	brclr	7,X0001,L0683
L1E81:
	bclr	2,X0076
	sta	X0073
	stx	X0074
L1E87:
	bset	4,X0076
	brset	7,X0001,L0694
L1E8C:
	lda	#$20
	add	X005E
	bcs	L0694
	sta	X005E
	lda	#$20
	add	X0076
	sta	X0076
	and	#$60
	cmp	#$60
X1E9E:
	bne	L06BC
	brset	7,X0076,L06A8
	brset	0,X0061,L06AD
	bclr	6,X0076
	bclr	7,X0001
	bset	4,X005E
	rts
;
	lda	#$24
	sta	X0009
	brclr	7,X0009,L06B1
	lda	X0008
	sta	X0075
	bset	7,X0001
	bset	4,X005E
	rts
;
	clra
	brset	0,X0061,L06C4
	brclr	2,X005F,L06CA
	brset	4,X0076,L06CF
	brset	2,X005F,L072B
	sta	X02A4
	bra	L0729
;
	bclr	4,X0076
	sei
	lda	X0073
	sta	X0050
	lda	X0074
	sta	X0051
	lda	X0071
	sta	X0052
	lda	X0072
	sta	X0053
L1EE2:
	cli
	brset	7,X0076,L075E
	clra
	brclr	2,X005F,L0729
	clrx
	jsr	L248F
	jsr	L248D
	ldx	#$03
L1EF3:
	lda	X0050,x
	add	X02A0,x
	sta	X02A0,x
	sta	X0056,x
	lda	X004F,x
	adc	X029F,x
	sta	X029F,x
	sta	X0055,x
	decx
	decx
	bpl	L06F3
	jsr	L25E4
	clrx
	jsr	L24B3
	bcs	L0721
	ldx	#$09
	jsr	L241E
	lda	#$1A
	jsr	L243F
	sta	X02A5
	lda	X02A5
	ldx	X000B
	jsr	L246E
	sta	X000B
	rts
;
	clra
	sta	X02AA
	ldx	#$0D
	jsr	L248F
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
	jsr	L24B4
	bcs	L07A2
	ldx	#$19
	jsr	L241E
	bra	L0792
;
	brset	2,X0076,L072C
	ldx	#$06
	jsr	L248F
	jsr	L248D
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
	bpl	L076B
	jsr	L25E4
	ldx	#$06
	jsr	L24B3
	bcs	L07A2
	ldx	#$0F
	jsr	L241E
	lda	#$24
	jsr	L243F
	sta	X02AB
	lda	#$2A
	jsr	L243F
	sta	X02AC
	brclr	0,X0061,L07CD
	lda	X02AB
	ldx	X000A
	jsr	L246E
	sta	X000A
	lda	X02AC
	ldx	X006C
	jsr	L246E
	tax
	brset	1,X0076,L07C7
	lda	X02AC
	sub	X006C
	bcc	L07C3
	nega
	and	#$FC
	beq	L07CD
	bclr	1,X0076
	stx	X006C
	bset	1,X005D
	rts
;
	brclr	2,X005F,L07DB
	lda	X02A5
	ldx	X000B
	jsr	L2402
	sta	X000B
	brclr	0,X0061,L07CD
	lda	X02AB
	ldx	X000A
	jsr	L2402
	sta	X000A
	lda	X02AC
X1FEB:
	ldx	X006C
	jsr	L2402
	tax
	lda	X02AC
	sub	X006C
	bcc	L07F9
	nega
	and	#$FC
X1FFB:
	beq	L07CD
	stx	X006C
	bset	1,X005D
	rts
;
	stx	X0056
	sub	X0056
	beq	L001B
	bcs	L0013
	clrx
L200B:
	cmp	#$10
	bcs	L001A
	ldx	#$02
	bra	L001A
;
	clrx
	cmp	#$F0
	bhi	L001A
	ldx	#$FE
	txa
	add	X0056
	rts
;
	lda	#$05
	sta	X0050
	clr	X0056
	lda	X0100,x
	cmp	X0052
	bcc	L0034
	sta	X0056
	decx
	dec	X0050
	bpl	L0024
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
	beq	L0055
	lda	X0101,x
	sta	X005A
	lda	#$FF
	tst	X0050
	bmi	L0058
	lda	X0100,x
	sub	X005A
L205A:
	tax
	lda	X0052
	mul
	sta	X0059
	stx	X0058
	clr	X0057
	lda	X0051
	sta	X0056
	jsr	L25E4
	add	X005A
	rts
;
	stx	X0056
	sub	X0056
	beq	L0089
	bcs	L0080
	ldx	#$01
	cmp	#$10
	bcs	L0088
	ldx	#$08
	bra	L0088
;
	ldx	#$FF
L2082:
	cmp	#$F0
	bhi	L0088
	ldx	#$F8
	txa
	add	X0056
	rts
	rts
;
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
L20B4:
	sta	X0052
	brset	1,X0076,L00C3
	sub	X02A4,x
	bcc	L00BF
	nega
	cmp	#$02
	bcs	L00CA
	lda	X0052
	sta	X02A4,x
	cmp	#$00
	rts
;
	ldx	X00CC
	cpx	#$FF
	bne	L00D3
	bclr	5,X00C5
	ldx	#$80
	brset	0,X00CB,L00DC
	brclr	6,X00C6,L00EE
	rts
;
	ldx	#$5F
	cmp	XAE20
	bclr	5,X00C5
	bra	L00EE
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
	beq	L0102
	eor	X0250,x
	sta	X0250,x
	bset	5,X00C6
	incx
	rts
;
	clrx
	lda	#$00
	bsr	L00F5
	cpx	#$06
L210B:
	bne	L0105
	rts
;
	ldx	#$01
	bsr	L00F5
	lda	X0056
	ora	#$40
	brclr	5,X0069,L011A
	clra
	brset	2,X00B8,L0122
	brclr	6,X00B5,L0122
	ora	#$04
	bsr	L0107
	clrx
	lda	#$00
	bra	L00F5
;
	sta	X0056
	bsr	L0133
	tax
	lda	X0056
	jsr	L261E
	jsr	L2617
L2136:
	cmp	#$0A
	bcs	L013C
	add	#$07
	add	#$30
	rts
;
	lda	#$68
L2141:
	cmp	XA670
	cmp	XA660
	cmp	XA678
	cmp	XA680
	deca
X214E:
	sta	X0056
	ldx	#$07
X2152:
	stx	X0057
X2154:
	ldx	X0056
	lda	X26A5,x
	dec	X0056
X215B:
	ldx	X0057
	sta	X0257,x
	dec	X0057
	bpl	L0154
	rts
;
	brset	1,X00CB,L0173
	inc	X00CC
	tst	X00CC
	beq	L0171
	dec	X00CC
	rts
;
	dec	X00CC
	cmp	#$03
	bne	L0180
	lda	#$39
	brclr	6,X00D2,L019A
	lda	#$36
	bra	L019A
;
	cmp	#$01
	bne	L0189
	brclr	5,X00BB,L01B6
	bset	3,X0094
	brclr	6,X00B5,L0191
	brset	2,X00B8,L0191
	ora	#$08
	brclr	3,X008E,L0196
	ora	#$10
	sta	X00D5
	bra	L01A6
;
	ora	#$40
	eor	X00D5
	and	#$7F
	beq	L01B6
	eor	X00D5
	sta	X00D5
	brclr	0,X0061,L01AD
	brclr	3,X00CE,L01B2
	clra
	brclr	3,X008E,L01B2
	ora	#$10
	bset	7,X00D5
	bset	1,X0094
	rts
;
	tax
	lda	#$04
	sta	X0056
	clr	X0057
	clra
	bms	L01CA
	sei
	stx	X0009
	brclr	7,X0009,L01C4
	cli
	bra	L01CF
;
	stx	X0009
	brclr	7,X0009,L01CC
	add	X0008
	bcc	L01D5
X21D3:
	inc	X0057
X21D5:
	dec	X0056
	bne	L01BF
	lsr	X0057
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
	bcs	L0213
	lsr	X0056
	ror	X0057
	lda	X0059
	sub	X0057
	sta	X0059
	lda	X0058
	sbc	X0056
	sta	X0058
	bcc	L01E5
	clc
	rolx
	bcs	L0213
	lsr	X0056
	ror	X0057
	lda	X0059
	add	X0057
	sta	X0059
	lda	X0058
	adc	X0056
	sta	X0058
	bcc	L01FB
	bra	L01E5
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
	bra	L022C
;
	jsr	L0785
	bsr	L0231
	dec	X0050
	bpl	L0227
	rts
;
	lda	#$14
	add	X001A
	tst	X001B
	bih	L023B
	bset	7,X008F
	cmp	X001A
	bpl	L0237
	rts
;
	lda	#$85
	cmp	XA621
	deca
	bne	L0245
	rts
;
	lda	X2656,x
	sta	X0064
	lda	X2657,x
	sta	X0065
	clr	X0066
	rts
;
	inc	,x
;
	db	$52
;
	rol	X00EB,x
	bmc	L025C
	clr	,x
	sub	X007C,x
	beq	L0262
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
	bpl	L0269
	rts
;
	lda	#$80
	bit	,x
	bne	L0276
	lsra
	bne	L0270
	eor	,x
	sta	,x
	rts
;
	ldx	X0056
	inc	X0056
	lda	,x
L227E:
	brclr	1,X0059,L0284
	lda	X0200,x
	ldx	X0057
	inc	X0057
	brclr	0,X0059,L028F
	sta	X0200,x
	cmp	X00F7
	dec	X0058
	bpl	L0279
	rts
;
	clrx
	tsta
	bpl	L02A4
	ldx	#$07
	asla
	asla
	bmi	L02A4
	lsrx
	asla
	bmi	L02A4
	lsrx
	rts
;
	lsrx
;
	db	$41
;
	bra	L02C9
	bra	L02DC
	bra	L02CD
;
	asra
;
	db	$41
;
	inca
;
	db	$41
;
	bra	L02E4
	bra	L02D5
;
	rorx
	clra
	inca
	bra	L02DA
;
	db	$31
;
	bra	L02DD
;
L22BD:
	comx
;
	db	$45, $4E
;
	comx
	bra	L0307
;
	aslx
	bra	L0318
;
	tsta
	bra	L02E9
	bra	L031A
;
	db	$4E
;
	bra	L031C
;
	db	$41
;
	rorx
	bra	L02F2
;
	db	$31
;
	bra	L02F5
;
	lsrx
;
	db	$45
;
	inca
	bra	L02FA
;
	db	$52
;
	bra	L02FD
;
	asra
;
	db	$41
;
	inca
;
	db	$41
;
	bra	L0332
;
	rora
	rora
	comx
;
	db	$45, $4E
;
	comx
	bra	L0337
;
	clra
	bra	L0340
;
	tsta
	bra	L0311
	bra	L0342
;
	rora
	rora
	lsrx
;
	db	$45
;
	inca
	bra	L031A
;
	inca
	bra	L031D
;
	db	$45, $31
;
	bra	L0351
;
	com	X003A
	neg	X0030
	coma
	lsra
;
	db	$31
;
	bra	L034F
;
	db	$52, $52, $31, $4E
;
	clra
	bra	L0354
;
	clra
	lsra
;
	db	$45
;
	bra	L0368
;
	neg	X0020
	neg	X0030
	dec	X0020
	bra	L0364
;
	db	$41
;
	lsra
	bra	L0371
;
	rora
	rora
	bra	L0365
;
	ora	XA60A
	sta	X00CF
	lda	#$05
	sta	X00CE
	rts
;
	ldx	#$D1
	jsr	L265E
	bne	L0339
	bclr	7,X00D2
	ldx	#$CF
	jsr	L265E
	bne	L032F
	brclr	3,X00CE,L0345
	bset	7,X005D
	brclr	2,X00CE,L03C1
	lda	X00CE
	and	#$F8
	sta	X00CE
	lda	#$0A
	brset	7,X0060,L03B7
	lda	#$08
	brclr	3,X008B,L03B7
	tst	X00CE
	beq	L038D
	brset	7,X00CE,L03B7
	brset	2,X00CE,L0382
	brclr	1,X00CE,L036E
	lda	#$01
	brclr	0,X00CE,L03A8
	lda	#$04
	bra	L03A8
;
	brset	5,X00CE,L0379
	brclr	6,X00CE,L038D
	lda	#$05
	brset	0,X00CE,L03B7
	lda	#$09
	brclr	6,X0067,L03A8
	bset	7,X005D
	bra	L03A8
;
	brclr	1,X00CE,L038D
	brset	2,X00CB,L038D
	lda	#$06
	brclr	0,X00CE,L03A6
	lda	#$01
	brset	3,X00CE,L03A8
	lda	#$06
	brset	6,X007F,L03A8
	brset	3,X007F,L03A8
	lda	#$04
	brset	5,X007F,L03A6
	lda	X007F
	coma
	and	#$03
	beq	L03A8
	ora	#$40
	brset	5,X007F,L03B7
	sta	X0056
	lda	X007F
	coma
	and	#$03
	jsr	L261E
	add	X0056
	eor	X00CA
	beq	L03C1
	eor	X00CA
	sta	X00CA
	bset	7,X005D
	rts
	rts
;
	lda	X007A
	beq	L0427
	dec	X0079
	bne	L0427
	clr	X007A
	bra	L041F
;
	brset	1,X0077,L03EF
	brclr	4,X0077,L03F3
	lda	X0078
	and	#$1F
	beq	L03EF
	sta	X007A
	lda	X0077
	and	#$E0
	add	X007A
	sta	X007A
	jsr	L2616
	tax
	lda	X2827,x
	sta	X0079
	cmp	X3F7A
	clr	X0077
	brclr	6,X009F,L0427
	brset	6,X005D,L0427
	lda	X007A
	beq	L040B
	brclr	7,X009F,L0403
	bclr	6,X009F
L2402:
	rts
;
	clr	X007A
	and	#$1F
	ora	#$C0
	bra	L041F
;
	bclr	6,X009F
	lda	X009F
	bpl	L0415
	eor	#$90
	bra	L041F
;
	tax
	lda	X285B,x
	brclr	5,X0069,L041F
	lda	X282D,x
	sta	X0078
	cmp	#$01
	beq	L0427
	bset	6,X005D
	rts
;
	bclr	4,X000A
;
	db	$4B
;
	bcs	L045F
	brset	0,X00E1,L0412
	cpx	X00E4,x
	bit	X00E6,x
	sta	X0007,x
	adc	X0001,x
	brclr	0,X0001,L0428
	brclr	6,X0009,L0448
	lda	,x
L243F:
	brclr	0,X00F3,L044E
	bit	,x
	brclr	0,X00F7,L043E
	adc	,x
	ora	,x
	add	,x
	jmp	,x						;INFO: index jump
;
	jsr	,x						;INFO: index jump
	ldx	,x
	brset	3,X00EA,L0450
	brset	1,X000F,L0461
	brclr	1,X00FF,L0449
	brset	4,X00EE,L0447
	sub	,x
	cmp	,x
	sbc	,x
	brset	0,X00E1,L0440
	cpx	X00E4,x
	bit	X00E6,x
	sta	X00E8,x
	adc	X0004,x
	add	X00EC,x
	jsr	L000D,x						;INFO: index jump
	brclr	4,X000A,L0463
	brclr	2,X00F3,L047C
	bit	,x
	brclr	5,X00F7,L046C
	adc	,x
	ora	,x
	add	,x
	jmp	,x						;INFO: index jump
;
	jsr	,x						;INFO: index jump
	ldx	,x
	brset	3,X00EA,L047E
	brset	1,X000F,L048F
	brclr	1,X00FF,L0477
	brset	4,X00EE,L0475
	sub	,x
	cmp	,x
	sbc	,x
	incx
	incx
	cmp	X0078
L248D:
	beq	L04AF
L248F:
	cmp	#$1F
	bne	L0499
	eor	X0078
	and	#$F0
	bra	L04AF
;
	bit	#$E0
	beq	L04AC
	bit	#$1F
	bne	L04AC
	eor	X0078
	beq	L04AC
	cmp	#$06
	bhi	L04AC
	bit	#$00
	rts
;
	lda	#$01
	rts
	rts
;
	brset	6,X005F,L0532
L24B3:
	brclr	1,X00BC,L04CB
	brset	7,X00B9,L04CB
	brset	7,X00B3,L04CB
	brclr	2,X00CE,L04C5
	brset	1,X00CE,L04C5
	brclr	0,X00CE,L04CB
	lda	#$27
	sta	X00B3
	bclr	1,X00BC
L24CB:
	brclr	5,X00CB,L04F5
	lda	X00D5
	and	#$70
	bne	L04F5
	lda	X00D5
	and	#$07
	beq	L04F5
	cmp	#$06
L24DC:
	bcc	L04F5
	clra
	brset	3,X00CE,L04E8
	brclr	6,X00B5,L04EA
L24E5:
	brset	2,X00B8,L04EA
L24E8:
	lda	#$08
	eor	X00D5
	and	#$08
	beq	L04F5
	eor	X00D5
	jsr	L2591
L24F5:
	bclr	6,X00D2
	lda	X00B6
	and	#$07
	cmp	#$06
	bne	L0501
	bset	6,X00D2
	lda	X007F
	and	#$2B
L2505:
	cmp	#$02
	bne	L0532
	brset	5,X00CE,L0518
	lda	X00CA
L250E:
	and	#$0F
	cmp	#$01
	beq	L0518
	cmp	#$06
	bne	L0532
	brset	5,X00CB,L0523
	brset	6,X00CB,L0523
	brclr	7,X00CB,L0529
	bset	2,X00CB
	bset	7,X005D
	bclr	5,X00CB
	bclr	6,X00CB
	brset	6,X00CE,L0532
	brclr	6,X005D,L0532
	jmp	L2CD4
	rts
;
L2533:
	lda	X00B8
	and	#$60
	cmp	#$60
	bne	L0543
	lda	X00B8
	and	#$0F
L253F:
	ora	#$10
	bra	L0559
;
	lda	#$10
	bra	L054F
;
	lda	X00B8
	and	#$60
L254B:
	beq	L0553
L254D:
	lda	#$F0
	add	X00B8
	bra	L055E
;
	lda	X00B8
	and	#$0F
	ora	#$60
	brset	2,X00B8,L055E
	eor	#$01
	ora	#$80
	bra	L058D
;
	lda	X00B8
	brset	2,X00B8,L056C
	and	#$03
	inca
	bra	L058B
;
	lda	#$08
	brclr	3,X00B8,L0589
	clra
	bra	L058B
;
	lda	X00B8
	brset	2,X00B8,L0581
	asla
	asla
	eor	X00B8
	and	#$08
	bra	L0587
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
L2591:
	bra	L05EA
	bra	L0547
	bra	L0533
	bra	L0562
	bra	L0574
;
	brset	2,X00B8,L0599
	brset	5,X0069,L05C1
	lda	#$01
	bra	L0589
;
	brclr	2,X00B8,L05AD
	bset	4,X00B3
	bset	5,X00B3
	rts
;
	brclr	4,X00CE,L0599
	lda	#$30
	jmp	L2A6B
	jmp	L2B14
;
	brset	2,X00B6,L05C1
	brset	3,X008E,L05D1
	brclr	2,X00B8,L05D8
	rts
;
	lda	#$19
	brset	1,X00B5,L05C9
	lda	#$18
	jsr	L24E5
	lda	#$61
	jmp	L2A57
;
	bset	6,X00C5
	lda	#$63
	jmp	L2A59
	jmp	L2A91
;
	bset	7,X00D2
	ldx	#$FA
	stx	X00D1
	bra	L0617
;
	lda	#$A4
	brclr	5,X00B6,L05EA
	lda	#$B4
	bclr	7,X00D2
	bra	L0657
;
	lda	#$86
	sta	X00B3
	bclr	7,X00D2
	bset	2,X00CB
	rts
;
	lda	#$08
	brset	2,X00B8,L060E
	ldx	#$9F
	jsr	L38CC
	sta	X005B
	lda	X00B8
	jsr	L38A0
	eor	X005B
	and	#$01
	ora	#$02
	jmp	L2989
;
	bset	7,X00D2
	bra	L061A
;
	bset	7,X00D2
L2617:
	lda	#$C4
	cmp	XA6CC
	brclr	7,X00D2,L05D8
L261F:
	ldx	#$FA
	stx	X00D1
L2623:
	bra	L063C
;
	brset	7,X00D2,L0655
	lda	#$D4
	bra	L0631
;
	brset	7,X00D2,L0655
	lda	#$DC
L2631:
	bclr	4,X00BB
L2633:
	bclr	5,X00BB
	bra	L0657
;
	lda	#$C4
	cmp	XA6CC
	brset	3,X005D,L066D
	bclr	4,X00BB
	bclr	5,X00BB
L2643:
	brclr	7,X00D2,L0648
	ora	#$07
	sta	X00B3
	bset	2,X00CB
	brclr	7,X00D2,L0669
	ldx	#$FA
	stx	X00D1
	bra	L0669
;
	lda	#$94
X2657:
	bset	2,X00CB
	bset	5,X00D2
	sta	X00B3
	jmp	L2B0A
;
	lda	#$8A
	jsr	L2B36
	bclr	5,X00D2
	bset	7,X007E
	lda	#$90
	sta	X0077
	rts
;
L266E:
	bset	5,X007E
	brclr	5,X00D2,L066D
	bclr	1,X00CB
	lda	#$80
	jsr	L2B36
	bra	L06A1
;
	clrx
	bset	5,X00D2
	brset	2,X00BA,L068E
	brset	3,X00CE,L068E
	brset	4,X00B6,L0691
	brclr	7,X00BA,L0691
	brclr	2,X00B6,L0691
	jmp	L2AFB
;
	brclr	5,X00B6,L0697
	lda	#$B4
	cmp	XA642
	sta	X00B3
	bset	4,X00CC
	lda	#$B0
	bra	L066B
;
	lda	#$27
	jsr	L25B7
	cmp	#$19
	bcc	L06B4
	bset	3,X005D
	lda	X00B4
	and	#$74
	cmp	#$60
	beq	L06C5
	brclr	3,X0081,L06C0
	bclr	3,X0081
	ldx	#$A8
	jsr	L38CC
	sta	X0085
	brclr	3,X005D,L06D9
	bra	L0700
;
	ldx	#$82
	eor	X00B8
	and	#$74
	beq	L06F7
	bclr	3,X005D
	bset	3,X007E
	bset	3,X0081
	lda	X0088
	nega
	lsra
	sta	X0085
	brset	3,X008E,L0700
	lda	X00B4
	and	#$7F
	cmp	X00B8
	bne	L0700
	brclr	2,X00CE,L0700
	brset	1,X00CE,L0700
	brset	0,X00CE,L0700
	jsr	L1DF2
	and	X0056
	beq	L0700
	bclr	7,X00B5
	cmp	XBFB3
	bra	L0700
;
	lda	#$80
	jsr	L2B36
	bset	2,X00CE
	bclr	1,X00CE
	bclr	0,X00CE
	lda	#$7D
	sta	X00CF
	brclr	3,X00CE,L0713
	bclr	1,X00CE
	lda	#$32
	sta	X00CF
	rts
;
	brset	5,X00D2,L0725
	bset	5,X00D2
	brclr	4,X00BB,L0720
	lda	#$C2
	bra	L0733
;
	lda	#$01
	sta	X00CC
	rts
;
L2725:
	lda	X00CC
	cmp	#$FF
	bne	L0720
	bclr	5,X00D2
	lda	X00B7
	sta	X00C8
	lda	#$C0
	jmp	L24E8
;
	sta	X00B3
	bset	2,X00CB
	bclr	7,X00D2
	lda	X0078
	jsr	L261E
	eor	X00B8
	and	#$70
	eor	X00B8
	ora	#$80
	sta	X00B4
	brclr	5,X0069,L0750
L274E:
	bclr	0,X00B4
	rts
;
	brclr	3,X00CE,L0757
	jmp	L2BD8
;
	brset	7,X00B9,L0780
	brclr	7,X00BA,L0760
	brset	2,X00B6,L0780
	brclr	3,X008E,L0780
	brclr	7,X00C5,L0780
	brclr	4,X00B5,L0780
	brclr	6,X00C5,L0780
	bclr	6,X00C5
	bset	5,X00C5
	lda	X00C5
	and	#$1F
	jsr	L259A
	lda	X00C5
	and	#$1F
	add	#$23
	jmp	L24E8
;
	lda	#$01
	brclr	4,X00BB,L0789
	brclr	3,X00B5,L0789
	inca
	brset	7,X00B9,L0792
	brclr	7,X00BA,L0794
	brclr	2,X00B6,L0794
	lda	#$03
	jsr	L2565
	lda	#$13
	brset	6,X00D2,L07CE
	brclr	3,X00B5,L07B8
	brclr	7,X00BA,L07A5
	brset	2,X00B6,L07B8
	brclr	4,X00CE,L07B3
	brset	6,X00BB,L07AE
	brclr	0,X00BB,L07B8
	lda	#$CE
	jmp	L24CB
;
	lda	#$C2
	brset	4,X00BB,L07B0
	brclr	5,X00BB,L07D7
	clra
	brclr	2,X00B8,L07C6
	ora	#$10
	brclr	3,X008E,L07C6
	ora	#$20
	sta	X00C9
	lda	X00B7
	sta	X00C8
	lda	#$C0
	brclr	7,X00CB,L07D4
	jmp	L24DC
	jmp	L24CB
	rts
;
	brset	6,X005F,L0029
	brclr	2,X00B6,L07E5
	jsr	L2B0A
	lda	#$70
	bra	L07CE
;
	lda	X00CF
	deca
	brset	1,X00CE,L0013
	brclr	0,X00B9,L07F6
	brset	6,X00BB,L07F3
	bmi	L000B
	brset	2,X00BF,L000B
	bpl	L0006
	lda	#$32
	sta	X00CF
	lda	#$D4
	brclr	3,X00B6,L0003
	lda	#$DC
	jmp	L2A57
;
	brclr	5,X00D2,L079F
	bra	L07E1
;
	lda	#$0A
	sta	X00CE
	lda	#$7D
	sta	X00CF
	bpl	L079F
	lda	#$4B
	sta	X00CF
	ldx	#$04
	jsr	L2649
	bset	6,X005F
	lda	X00B7
	sta	X00C4
	lda	#$15
	jmp	L24DC
;
	lda	X00CF
	deca
	bpl	L0024
	bclr	0,X0061
	bset	2,X005D
	rts
	jmp	L2504
;
	bclr	7,X00CB
	brset	6,X005F,L0033
	brclr	7,X0069,L0033
	lda	X00B8
	brset	2,X00B8,L0063
	and	#$07
	tax
	lda	X2CCF,x
	brclr	5,X0069,L004E
	and	#$0C
	brclr	7,X00BA,L0054
	brset	2,X00B6,L0057
	brclr	3,X00B5,L0059
	ora	#$02
	brset	3,X008E,L006A
	brclr	1,X00BB,L006A
	ora	#$01
	bra	L006A
;
	lda	#$18
	brclr	3,X00B8,L006A
	lda	#$1C
	clrx
	jsr	L24F5
	brset	3,X00CE,L0076
	lda	X00BD
	brset	2,X00BB,L0078
	lda	X00B8
	and	#$70
	brclr	7,X00B9,L007E
	clra
	jsr	L2617
	jsr	L24F5
	lda	#$02
	brset	2,X00B8,L00AD
L2889:
	lda	#$08
	brclr	7,X00BA,L0091
	brset	2,X00B6,L0094
	brclr	3,X00B5,L0096
	ora	#$01
	brset	3,X00CE,L009C
	brclr	6,X00B5,L009E
	ora	#$04
	brclr	3,X008E,L00A6
	brclr	4,X00B5,L00A6
	ora	#$04
	brclr	1,X00B8,L00B2
	ora	#$20
	bra	L00B2
;
	brclr	3,X00B8,L00B2
L28B0:
	ora	#$20
	brclr	5,X00B6,L00B7
	ora	#$10
	brclr	5,X0069,L00BC
	and	#$2F
	jsr	L24F5
	clra
	incx
	brclr	2,X00BB,L00CB
	lda	X00BD
	and	#$70
	jsr	L2617
	jsr	L24F5
	rts
;
	asla
	bhcc	L011E
	bmc	L0055
	clrx
	brclr	3,X00CE,L00DA
	ldx	#$52
	lda	X2CF1,x
	sta	X0056
	lda	X2CF0,x
	beq	L00EF
	jsr	L2889
	bne	L00DA
	ldx	X2CEF,x
	jsr	L2993,x						;INFO: index jump
	rts
;
	sub	X00E9,x
	sub	#$CD
	rti
;
	sbc	XC0DB,x
	stx	,x
	brset	0,X00F4,L00FE
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
	brclr	5,X0050,L012A
;
	db	$45
;
	bit	X005B
	bit	X6408,x
	brset	2,X00F6,L0150
	lda	X2236,x
	brset	3,X00E7,L00D9
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
	brset	4,X0000,L0164
	neg	X001F,x
	brclr	3,X008B,L0177
	lda	#$48
	brset	2,X00BE,L0162
	lda	#$08
	brset	3,X005F,L017A
	lda	#$40
	brset	4,X00BA,L017A
	brset	2,X00BE,L017A
	lda	#$04
	brset	7,X005F,L0181
	lda	#$80
	brset	2,X00BA,L0181
	clra
	bra	L0181
;
	brclr	5,X00CB,L0181
	bclr	5,X00CB
	bset	7,X005D
	eor	X007F
	and	#$CC
	sta	X005B
	eor	X007F
L2989:
	sta	X007F
	and	#$60
	bne	L019E
	brset	3,X0081,L019E
	brclr	4,X007F,L019E
	bclr	4,X007F
	ldx	#$A8
	jsr	L38CC
	sta	X0085
	brclr	0,X0061,L01FE
	tst	X005B
	beq	L01CC
	bset	7,X005D
	bset	0,X00CB
	bset	3,X007E
	bset	2,X00CB
	brset	3,X00CE,L01FF
	brclr	3,X005B,L01BB
	bset	7,X005D
	bset	0,X00CB
	bset	4,X00B3
	bclr	7,X00D2
	brclr	6,X005B,L01CC
	bset	7,X005D
	brset	6,X007F,L01CC
	ldx	#$A8
	jsr	L38CC
	sta	X0085
	bra	L01CC
;
	brclr	5,X007C,L01FF
	brset	6,X007C,L01EB
	brclr	2,X0069,L01FF
	bclr	2,X0069
	bclr	2,X00D2
	bclr	4,X00D3
	ldx	#$A5
	jsr	L38A0
	brset	1,X007F,L01FF
	brclr	0,X007F,L01FF
	brset	2,X0081,L01FB
	bra	L0219
;
	brset	2,X0069,L01FF
	bset	2,X0069
	bset	2,X0081
	brclr	1,X007F,L01F7
	bclr	2,X0081
	bset	2,X00CB
	bset	4,X00B3
	jmp	L2F57
	rts
;
	lda	X007F
	brset	0,X0080,L0208
	bit	#$EA
	beq	L0252
	bit	#$03
	bne	L021C
	brclr	1,X00D2,L0261
	brset	0,X00D2,L0261
	bset	0,X00D2
	ldx	#$88
	jmp	L2EC7
	jmp	L2F12
;
	brclr	0,X007F,L025E
	brclr	2,X00D2,L02A0
	brset	5,X007F,L025E
	brclr	3,X005F,L022B
	brset	1,X007C,L02A0
	brset	7,X00D3,L02A0
	bset	7,X00D3
	bclr	2,X00D3
	brclr	3,X006A,L0237
	bset	2,X00D3
	bclr	1,X00D3
	brclr	1,X007C,L024D
	bset	1,X00D3
	bset	0,X00D3
	brclr	0,X007C,L0248
	brset	2,X007C,L024D
	bra	L024B
;
	brclr	2,X007C,L024D
	bclr	0,X00D3
	lda	#$88
	jmp	L2F06
;
	brclr	3,X008B,L025E
	brset	7,X0060,L025E
	lda	X00CE
	and	#$C8
	beq	L026A
	brset	1,X00D2,L02C3
	brset	2,X00D2,L0267
	brclr	3,X007C,L02A0
	jmp	L2F00
;
	brclr	0,X007F,L0281
	brset	1,X00D2,L02C3
	brclr	6,X007C,L02A0
	brset	4,X007C,L02A0
	brclr	2,X00D2,L02CD
	brset	7,X00D3,L02CD
	bra	L02A0
	jmp	L2DD5
;
	brset	2,X00D2,L0300
	brset	3,X007C,L0300
	brclr	6,X006A,L0219
	lda	X0265
	and	#$F0
	cmp	#$B0
L2A91:
	beq	L029A
	brclr	3,X00D4,L029A
	bclr	3,X00D4
	bra	L02B4
;
	brclr	1,X00D2,L02B4
	brset	0,X00D2,L02B4
	bclr	5,X0080
	lda	X0085
	bne	L02A8
	bset	5,X0080
	brclr	6,X005D,L0320
	brclr	3,X008B,L0320
	brset	0,X0080,L0320
	jmp	L310A
;
	bset	1,X00D2
	bclr	0,X00D2
	bset	4,X00B3
	ldx	#$8D
	brclr	2,X00D4,L02C7
	ldx	#$83
	bra	L02C7
;
	ldx	#$80
	bclr	1,X00D2
	stx	X007D
	bset	6,X0094
	bra	L0316
;
	bset	2,X00D2
	bset	4,X00B3
	bclr	1,X007F
	bset	0,X007F
	brset	3,X00D3,L02E5
	bset	3,X00D3
	lda	#$8C
	brset	4,X00D3,L0306
	lda	#$8D
	bset	0,X007C
	bra	L0306
;
	lda	#$8F
	brclr	7,X00D3,L0306
	bclr	7,X00D3
	lda	X00D3
	and	#$07
	brclr	5,X00D3,L02F5
	ora	#$08
	tax
	lda	X30FA,x
	brclr	2,X00D3,L0306
	bset	3,X006A
	bra	L0308
;
	lda	#$80
	bclr	2,X00D2
	bclr	3,X007C
	bclr	3,X006A
	sta	X007B
L2B0A:
	bset	5,X0094
	cmp	#$81
	beq	L031A
	bra	L0316
;
	bset	1,X007F
L2B14:
	bclr	0,X007F
	bclr	7,X00D2
	bset	2,X00CB
	bset	4,X005C
	bset	7,X005D
	bset	3,X00BC
	rts
;
	brclr	6,X007C,L0338
	brset	5,X007F,L0338
	lda	#$81
	bra	L0306
;
	brset	3,X008E,L034A
	brclr	1,X00A1,L0334
	brclr	3,X00D2,L0338
	lda	#$B0
L2B36:
	sta	X0077
	rts
;
	brclr	5,X007F,L034A
	bclr	5,X007F
	bclr	1,X00CE
	bclr	0,X00CE
	lda	#$80
	sta	X00A0
	bclr	3,X00D2
	bra	L0316
;
	brset	3,X007F,L0338
	bclr	2,X0081
	bset	6,X00C5
L2B51:
	brset	0,X007F,L036D
	brclr	1,X007F,L0312
	brset	5,X007C,L0362
	lda	#$84
	sta	X007B
	bset	5,X0094
	bra	L036D
;
	brclr	2,X0069,L036D
	bset	0,X007F
	bclr	4,X007C
	bclr	3,X006A
	bra	L0378
;
	brclr	6,X006A,L0312
	clra
	sta	X0264
	bclr	0,X00D4
	bclr	0,X007F
	bclr	1,X007F
	bclr	2,X00BA
	bra	L0316
;
	ldx	#$00
	cmp	XAE06
	bra	L039D
;
	ldx	#$06
	brclr	6,X008E,L039D
	lda	X00CE
	and	#$F8
	sta	X00CE
	jsr	L254B
	lda	#$C4
	jmp	L24E8
;
	ldx	#$04
	cmp	XAE02
	brset	5,X007F,L0338
	brclr	2,X00CE,L03B4
	brclr	1,X00CE,L03B4
	brset	0,X00CE,L03B4
	cpx	X00D0
	bne	L03B4
	clr	X00CF
	bset	0,X00CF
	clr	X00CC
	rts
;
	brset	7,X007F,L03B3
	brset	5,X0080,L03B3
	lda	X0082
	and	#$8F
	beq	L03E5
	cmp	#$01
	beq	L03E5
	and	#$0F
	beq	L03E5
	cmp	#$02
	bne	L03B3
	brset	7,X00B9,L03B3
	brclr	2,X00B6,L03E5
	lda	X00B6
	cmp	#$05
	beq	L03B3
L2BD8:
	brset	7,X00B5,L03DF
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
	jmp	L30C1
;
	lda	#$01
	cmp	XA6FF
	ldx	#$50
	bra	L0404
;
	lda	#$01
	cmp	XA6FF
	ldx	#$30
	stx	X0077
	bra	L046A
;
	lda	X0078
	and	#$0F
	add	#$F9
	nega
	beq	L03B3
	brclr	2,X00CE,L046A
	brclr	1,X00CE,L046A
	brset	0,X00CE,L046A
	sta	X0057
	jsr	L30C1
	bsr	L0458
	bhi	L0449
	jsr	L30E2
	bne	L0430
	tst	X0063
	bne	L03ED
	add	X0057
	bra	L0443
;
	bpl	L043D
	add	X0057
	bmi	L0443
L2C36:
	lda	#$28
	sta	X0063
	clra
	bra	L0443
;
	add	X0057
	bmi	L0436
	beq	L0436
	bsr	L0458
	bhi	L03ED
	bra	L044B
;
	clr	X0056
	bsr	L04C1
	lda	X0056
	jsr	L38A0
	bset	4,X007E
	bset	3,X007E
	bra	L03ED
;
	ldx	X00D0
	aslx
	sta	X0056
	bpl	L0461
	nega
	incx
	brclr	1,X0081,L0466
	incx
	incx
	cmp	X30B1,x
	rts
;
	brset	5,X0082,L04B0
	brset	7,X0087,L04B0
	brset	6,X007F,L0476
	brclr	5,X007F,L0483
	brset	4,X007F,L0486
	ldx	X0086
	cpx	X0085
	bls	L0486
	stx	X0085
	bra	L0486
;
	brset	3,X0082,L04B0
	bset	4,X007F
	add	X0085
	bmi	L049F
	brset	3,X0081,L0495
	cmp	#$1E
	bls	L0495
	lda	#$1E
	brclr	7,X0082,L04A0
	tst	X0085
	bne	L04B0
	lda	#$01
	cmp	X004F
	sta	X0085
	brset	6,X007F,L04B0
	brset	7,X007F,L04B0
	brset	5,X007F,L04B0
	brset	3,X0081,L04B0
	bset	3,X005C
	rts
;
	brset	3,X0006,L04B9
	brclr	2,X0006,L04BD
	brclr	2,X0005,L04C9
	brclr	7,X000F,L04CC
	brclr	7,X000F,L04CF
	brclr	7,X000D,L0542
	bset	0,X00AE
	brset	7,X00A6,L04F3
	brset	2,X00BE,L04F3
	brset	5,X00B9,L04F3
	ldx	#$10
	lda	#$2A
	bra	L04F3
;
L2CD4:
	ldx	#$12
	lda	#$38
	brset	3,X008E,L04DF
	ldx	#$11
	lda	#$37
	brset	3,X007F,L04F3
	lda	X00D0
	sta	X00C7
	bset	7,X00C7
	lsra
	add	#$A0
	jsr	L38CB
	sta	X00C8
X2CF0:
	bset	6,X00C6
	rts
;
	jsr	L259A
	txa
	jmp	L24CB
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
	brclr	3,X00CE,L0510
	ldx	#$22
	lda	X3127,x
	sta	X0056
	lda	X3126,x
	beq	L0525
	jsr	L2889
	bne	L0510
	ldx	X3125,x
	jsr	L2F21,x						;INFO: index jump
	rts
;
	brclr	6,X0064,L0532
	asr	,x
	brset	5,X005D,L0539
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
	brset	5,X00CE,L0560
	brset	3,X0000,L054B
	jmp	L2631
;
	lda	#$C8
	nop
	deca
	bne	L0550
	rts
;
L2D55:
	clr	X00A1
	clr	X00A2
	clr	X00B2
	brclr	4,X0069,L0570
	jmp	L3199
	jmp	L322B
;
	brclr	4,X0069,L0570
	jmp	L31DA
;
	brclr	4,X0069,L0570
	jmp	L31FE
;
	bclr	7,X00A0
	rts
	jmp	L3176
;
	brclr	1,X00A1,L0597
	dec	X00AF
	bpl	L0597
	brset	7,X00A1,L0583
	jmp	L322B
;
	brset	2,X00A1,L0597
	lda	#$14
	sta	X00AF
	jsr	L3453
	cmp	#$03
	bls	L0597
	inc	X00B1
	bne	L0597
	bset	1,X00B1
	sec
	rts
;
	sei
	bclr	3,X0002
	bclr	2,X0002
	cli
	jsr	L314B
	sei
	bset	2,X0002
	bset	3,X0002
	cli
	bsr	L05BC
	ldx	#$A3
	clr	X0001,x
	jsr	L3395
	jsr	L33DB
	inc	X00B2
	brclr	4,X00B2,L05AA
	bclr	4,X00B2
	rts
;
	brset	0,X00A1,L05BB
	jsr	L325E
	lda	#$4C
	bsr	L05D4
	lda	#$A6
	bsr	L05D4
	lda	#$07
	bsr	L05D4
	clra
	jsr	L334F
	lda	#$0E
	ldx	#$50
	sta	,x
	jmp	L32F3
;
	brclr	7,X00A0,L0609
	brclr	0,X00A1,L05E6
	lda	X00A0
	and	#$08
	bne	L0609
	lda	X00A0
	and	#$0F
	bsr	L05F7
	bclr	7,X00A0
	lda	X00A0
	jsr	L2616
	and	#$03
	beq	L0609
	tax
	ldx	X3418,x
	jmp	L33DB,x						;INFO: index jump
;
	brset	0,X00A1,L060A
	brset	2,X00A1,L0609
	brset	1,X00A1,L060A
	clr	X00A1
	rts
;
	jsr	L3338
	and	#$20
	bne	L0609
	brset	1,X00A1,L0624
	lda	X00AE
	cmp	#$02
	beq	L061D
	brclr	4,X00A1,L0620
	bset	5,X00A1
	rts
;
	lda	#$91
	bra	L0653
;
	brclr	3,X00A1,L0607
	lda	#$92
	bra	L0688
;
	bsr	L0657
	brclr	0,X00A1,L0609
	bsr	L065E
	jmp	L3477
;
	brset	0,X00A1,L0609
	bsr	L0657
	lda	X00A2
	and	#$0F
	sta	X00A2
	jsr	L34EA
	lda	X00AD
	beq	L064B
	add	#$01
	bcc	L064D
	lda	#$02
	sta	X00AE
	sta	X00B1
	lda	#$89
	sta	X00A1
	bra	L068A
;
	brclr	1,X00A1,L0609
	clr	X00A1
	bsr	L065E
	lda	#$05
	jmp	L334F
;
	lda	X00A2
	and	#$0F
	beq	L06DA
	bsr	L0657
	ldx	#$AD
	jsr	L3391
	brclr	6,X00A0,L0678
	ldx	#$A3
	jsr	L33B5
	jsr	L33DB
	ldx	X00AE
	stx	X00B1
	cpx	X00AD
	bcs	L0686
	lda	#$8A
	cmp	XA682
	sta	X00A1
	lda	#$08
	bsr	L0660
	lda	X00AD
	brclr	2,X00A1,L0697
	lda	X00B1
	bset	6,X00A1
	sta	X0058
	clra
	brclr	3,X00A1,L06A0
	deca
	sta	X0058
	ldx	#$56
	sta	X0057
	lda	#$00
	sta	,x
	bsr	L06DB
	ldx	#$56
	lda	#$7F
	sta	,x
	lda	X00B1
	cmp	#$02
	bcs	L06B7
	brclr	4,X00A1,L06B9
	lda	#$02
	sta	X0001,x
	clr	,x
	bsr	L06DD
	lda	#$03
	brset	0,X00A1,L06C5
	lda	#$02
	bsr	L0660
L2EC7:
	lda	#$04
	bsr	L0660
	jsr	L34F2
	clrx
	bsr	L0738
	and	#$20
	bne	L06DA
	decx
	bne	L06CF
	clr	X00A1
	rts
;
	bsr	L06F3
	lsr	X0001,x
	ror	,x
	lsr	X0001,x
	ror	,x
	lsr	X0001,x
	ror	,x
	lsr	X0001,x
	ror	,x
	brclr	6,X00A1,L06F1
	inc	,x
	inc	,x
	inc	,x
	bclr	6,X00A1
	bsr	L06F3
	lda	,x
	bsr	L074F
	lda	,x
	jsr	L2617
	incx
	bra	L074F
;
	lda	#$09
	bsr	L074F
	lda	#$02
	jsr	L314E
L2F06:
	ldx	#$50
	bsr	L0720
	sta	,x
	incx
	cpx	#$54
	bls	L0708
	ldx	#$51
L2F12:
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
	bsr	L072E
	jsr	L2617
	sta	X0059
	bsr	L0733
	and	#$F0
	ora	X0059
	rts
;
	lda	#$31
	deca
	bne	L0730
	lda	#$1B
	deca
	bne	L0735
	sei
	lda	X0006
	and	#$03
	add	#$0C
	sta	X0006
	cli
	bset	2,X0002
	bclr	3,X0002
	bsr	L078D
	lda	X0002
	bset	3,X0002
	rts
;
	lda	#$03
	clr	X005A
	bset	3,X0002
	dec	X005A
	bne	L075A
L2F57:
	jmp	L32D8
;
	bsr	L078D
	bclr	3,X0002
	jsr	L34F2
	brset	4,X0002,L0751
	cmp	#$05
	beq	L076E
	brset	5,X0002,L0751
	cmp	XA602
	jsr	L261E
	ora	#$0F
	sei
	sta	X0002
	lda	X0006
	and	#$03
	add	#$FC
	sta	X0006
	cli
	bclr	2,X0002
	bsr	L078D
	bset	2,X0002
	lda	X0006
	and	#$03
	add	#$0C
	sta	X0006
	jsr	L34F2
	rts
;
	bclr	0,X0058
	bra	L0799
;
	bset	0,X0058
	bclr	1,X0058
	stx	X0057
	lda	X00A2
	jsr	L2617
	sta	X0052
	lda	X00B2
	and	#$0F
	sub	X0052
	bpl	L07AC
	add	#$0A
	inca
	asla
	sta	X0059
	ldx	X0057
	lda	#$04
	cmp	XA608
	sta	X0056
	brclr	0,X0058,L07CA
	lda	,x
	stx	X005A
	ldx	X0059
	sta	X02D8,x
	ldx	X005A
	inc	X0059
	bra	L07D6
;
	stx	X005A
	ldx	X0059
	inc	X0059
	lda	X02D8,x
	ldx	X005A
	sta	,x
	incx
	dec	X0056
	bne	L07B9
	rts
;
	lda	X00A2
	cmp	#$0F
	beq	L000D
	add	#$10
	cmp	#$A0
	bcc	L000D
	tax
	jsr	L2617
	sta	X0056
	lda	X00A2
	and	#$0F
	cmp	X0056
	bcs	L000D
	txa
	bra	L0005
;
	lda	X00A2
	cmp	#$0F
	beq	L000D
	and	#$F0
	beq	L000D
	sub	#$10
	eor	X00A2
	and	#$F0
	eor	X00A2
	bra	L0013
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
	brset	0,X0000,L001C
	negx
	lsrx
	aslx
	brset	0,X005C,L006F
	rts
	rts
;
	db	$82
;
	asl	X0060,x
	lsr	X00CC,x
;
	db	$32, $35
;
	bsr	L07DC
	bra	L0046
;
	bsr	L07F9
	bra	L0046
;
	bsr	L000F
	bra	L0046
;
	bsr	L000F
	bra	L0041
;
	bsr	L07DC
	bra	L0041
;
	bsr	L07F9
	beq	L07DB
	jmp	L3263
;
	brset	1,X00A1,L004C
	jmp	L3161
;
	bclr	7,X00A1
	lda	#$01
	sta	X00AF
	rts
;
	lda	X00AD
	sub	X00B1
	bcc	L005B
	sub	#$02
	rts
	rts
;
	jsr	L3257
	bclr	2,X00A1
	ldx	#$50
	jsr	L3391
	jsr	L33DB
	lda	X0052
	sta	X00AB
	lda	X0053
	sta	X00AC
	ldx	X00B1
	jmp	L327F
;
	jsr	L32FD
	lda	,x
	sta	X00AD
	brset	5,X00A1,L008A
	sub	X00AE
	bcc	L0086
	sub	#$02
	sub	#$02
	bcs	L00E7
	lda	X00B2
	inca
	cmp	#$09
	bls	L0092
	clra
	sta	X00B2
	ldx	#$AD
	jsr	L3395
	ldx	#$A3
	jsr	L33DB
	lda	X00AD
	add	#$01
	bcc	L00A6
	lda	#$02
	sta	X00B1
	clr	X00A2
	lda	X00AE
	cmp	X00B1
	bcc	L00CE
	sta	X00AE
	beq	L00DA
	brset	5,X00A1,L00E1
	lda	X00A2
	cmp	#$90
	bcc	L00E7
	add	#$11
	sta	X00A2
L30C1:
	ldx	#$50
	bsr	L00EC
	lda	X0051
	brset	1,X00A1,L00D2
	cmp	X00AE
	bcs	L00B0
	bset	1,X00A1
	bra	L00D6
;
	cmp	X00AE
	bcc	L00DA
	cmp	X00B1
	bcc	L00B0
	lda	X00A2
	beq	L00E7
	brclr	5,X00A1,L00E3
	ora	#$0F
	and	#$0F
	sta	X00A2
	clr	X00A1
	rts
;
	ldx	#$AD
	jsr	L3391
	jmp	L33DB
;
	tst	X00FF,x
	tst	X00FF,x
	rts
;
	brset	7,X00A0,L0100
X30FA:
	lda	X00CE
	and	#$C0
	beq	L0101
	rts
;
X3101:
	brset	5,X00CE,L0140
	brclr	1,X00A1,L010C
	brclr	7,X00A1,L010C
L310A:
	bset	5,X007F
	brclr	5,X007F,L011E
	brset	3,X007F,L011B
	brset	5,X00B9,L011B
	brset	0,X005D,L011E
	brclr	4,X00BA,L011E
	jmp	L35ED
;
	brclr	0,X00A1,L012A
	brclr	5,X007F,L012A
	bset	0,X005D
X3126:
	lda	#$80
	bra	L013E
;
	brset	5,X00B9,L0139
	brclr	4,X00B9,L0142
	brset	1,X00A1,L0147
	brset	5,X007F,L0147
	brset	0,X005D,L0147
	brset	0,X00A1,L0188
	lda	#$89
	sta	X00A0
	bra	L0188
;
	bclr	0,X005D
	brset	0,X00A1,L0126
	brclr	5,X007F,L0188
	bclr	4,X00BA
	brset	3,X00CE,L0188
	brclr	1,X00A1,L0158
	bset	2,X00CE
	bset	5,X00CF
	bra	L0188
;
	ldx	X00CF
	brclr	2,X00CE,L017B
	brclr	3,X00D2,L0169
	lda	X00A2
	and	#$F0
L3164:
	bne	L0174
	jmp	L3686
;
	incx
L316A:
	bne	L011B
	bclr	7,X00CF
	lda	#$88
	bset	0,X005D
	bra	L0183
;
	jsr	L36A5
	lda	#$85
	bra	L0185
;
	incx
	bne	L0188
	brclr	3,X00D2,L01ED
	lda	#$8D
	bclr	6,X0080
	jmp	L363B
;
	brclr	6,X005D,L01C0
	brset	3,X007F,L01C0
	jmp	L36CD
;
	lda	#$44
	bset	6,X00C5
	bra	L01D1
;
	lda	X007F
L3199:
	and	#$2B
	cmp	#$02
	bne	L01C0
	lda	#$30
	bra	L01BE
;
	brset	3,X00CE,L01C0
	brset	3,X008E,L01C0
	brset	3,X00D2,L0220
	brset	5,X007F,L01F3
	rts
;
	brset	3,X00CE,L01C0
	brset	3,X008E,L0197
	brclr	1,X00A1,L01BC
	brclr	3,X00D2,L01D6
	lda	#$B0
	sta	X0077
	rts
;
	brclr	4,X00BA,L01CA
	bclr	4,X00BA
	lda	#$F1
	bra	L01D1
;
	lda	#$66
	brclr	2,X00B8,L01D1
	lda	#$26
	sta	X00B3
	jmp	L366A
;
	lda	#$24
	brset	3,X008E,L0193
	brset	3,X00D2,L0220
	brset	5,X007F,L01E7
	brclr	6,X00B5,L01CA
	brset	2,X00B8,L01CA
	brset	2,X00BE,L01C0
	brclr	1,X00A1,L01F3
	lda	#$80
	sta	X00A0
	bra	L026A
;
	lda	X00A2
	and	#$0F
	brclr	5,X007F,L0201
	beq	L026A
	jsr	L36A5
	bra	L0236
;
	brset	0,X00A1,L0206
	beq	L0213
	bclr	4,X00BA
	lda	#$FF
	sta	X00CF
	bset	2,X00CE
	lda	#$80
	jmp	L3583
;
	clr	X00C8
	lda	#$8A
	jsr	L24E5
	lda	#$2C
	jsr	L259A
	rts
;
	jsr	L36A5
	lda	#$80
	brset	1,X00A1,L023B
	lda	X00A2
	cmp	#$0F
	beq	L0236
	deca
	jsr	L261E
	cmp	X00A2
	bcc	L0239
	lda	#$86
	cmp	XA684
	bset	5,X007F
	sta	X00A0
	bra	L0298
;
	brclr	1,X005F,L0247
	jmp	L35CA
;
	brset	5,X007F,L02A4
	bset	2,X007E
	bset	0,X0080
	lda	#$02
	sta	X007F
	ldx	#$06
	jsr	L2649
L3257:
	lda	#$08
	sta	X00CE
	lda	#$26
	sta	X00B3
	bclr	5,X00D2
	lda	#$14
L3263:
	bsr	L0296
	bclr	4,X00B3
	bclr	5,X00B6
	rts
;
	bclr	5,X007F
	bclr	1,X00CE
	bclr	0,X00CE
	bclr	3,X00D2
	bra	L029E
;
	brset	5,X007F,L02A4
	brset	4,X00BA,L02A4
	lda	X00A2
	and	#$0F
	beq	L0213
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
	bra	L028A
;
	lda	X00A2
	cmp	#$0F
	bne	L02B5
	lda	#$01
	bra	L02C0
;
	jsr	L2617
	sta	X005B
	lda	X00A2
	sub	X005B
	and	#$0F
	sta	X00C8
	add	#$2C
	jsr	L259A
	lda	#$8A
	jsr	L24DC
	rts
;
	clrx
	brclr	5,X00CE,L02D3
	ldx	#$0E
	lda	X36EA,x
	sta	X0056
L32D8:
	lda	X36E9,x
	beq	L02E8
	jsr	L2889
	bne	L02D3
	ldx	X36E8,x
	jsr	L3591,x						;INFO: index jump
	rts
;
	eor	X001F,x
	eor	X45A8
	sub	X0028
	brset	0,X00AB,L02D6
L32F3:
	ldx	#$E3
	brset	4,X0012,L02FF
	neg	X00E8
	neg	X0000
	bsr	L034A
	beq	L030E
	lda	#$81
	sta	X007B
	bset	5,X0094
	bset	2,X0069
	bset	1,X007F
	bclr	0,X007F
	bset	4,X005C
	lda	X0103
	and	#$EF
	brclr	7,X008B,L0318
	ora	#$10
	sta	X008B
	bclr	7,X008B
	and	#$E0
	cmp	#$A0
	bne	L0330
	lda	X0101
	sta	X008C
	lda	X0102
	sta	X008D
	lda	#$A8
	sta	X008B
	bsr	L034A
	beq	L0336
	bclr	3,X008B
	brset	3,X008B,L0349
	bset	0,X0080
	brclr	2,X008B,L0349
	brclr	7,X0064,L0349
	clr	X008B
	clra
	jsr	L3761
	bset	7,X005D
	rts
;
	lda	X0101
	cmp	X008C
L334F:
	bne	L0349
	lda	X0102
	cmp	X008D
	rts
;
	brclr	1,X008B,L035C
	bset	2,X008B
	lda	X008B
	cmp	XA608
	ldx	#$63
	jsr	L388B
	bset	2,X005D
	jmp	L2725
;
	brclr	0,X00D6,L0373
	brclr	1,X00D6,L0375
	bclr	0,X00D6
	bclr	2,X00D6
	bset	1,X00D6
	rts
;
	bclr	1,X00D6
	brset	3,X0010,L03AB
	brset	2,X00D6,L03AB
	lda	X0011
	brset	6,X00BA,L0388
	brclr	5,X00BA,L03AB
	brset	0,X00D6,L039A
	bmi	L03A8
	brset	3,X00D6,L03AB
	sta	X0271
	bset	0,X00D6
L3395:
	and	#$07
	sta	X00D7
	rts
;
	ldx	X00D7
	sta	X0272,x
	dec	X00D7
	bpl	L03A7
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
	brclr	7,X00D6,L03F3
	brset	2,X00D6,L03F3
	lda	X00D9
	bne	L03BC
	clr	X00D8
	lda	X027A
	ora	#$80
	cmp	X00D8
	beq	L03E9
	lda	X00D9
	and	#$03
	bne	L03DA
	clrx
	bsr	L0408
	txa
	incx
	deca
	bmi	L03CC
	eor	X027A
	and	#$03
	bne	L03CC
	inc	X00D9
	bne	L03F3
	brclr	0,X0061,L03E3
	bset	2,X005D
	bclr	6,X00BA
	bclr	5,X00BA
	bclr	5,X0061
	bclr	7,X00D6
	brclr	1,X00BF,L03F1
	bclr	1,X00BF
	rts
;
	bclr	0,X00BF
	rts
;
	brclr	6,X00D6,L0414
	bclr	6,X00D6
	clra
	deca
	beq	L0400
	brclr	7,X0010,L03FA
	lda	X0271
	ora	#$80
	sta	X0011
	rts
;
	clra
	deca
	beq	L040F
	brclr	7,X0010,L0409
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
	jsr	L2504
	ldx	#$A7
	jsr	L38CC
	and	#$03
	sta	X007F
	bset	7,X007F
	ldx	#$A5
	jsr	L38CC
	and	#$71
	sta	X00D3
	bset	7,X007C
	ldx	#$A6
	jsr	L38CC
	and	#$06
	sta	X00D4
L3453:
	lda	X0081
	and	#$01
	sta	X0081
	bset	6,X0081
	jsr	L400D
	brclr	5,X0069,L046C
	bclr	5,X00D3
	bclr	6,X00D3
	brset	0,X007F,L046C
	lda	#$02
	sta	X007F
	rts
	rts
;
	tst	X005C
	beq	L048A
	lda	X007F
	ldx	#$A7
	brset	4,X005C,L047F
	lda	X0085
	ldx	#$A8
	bclr	3,X005C
	bclr	4,X005C
	brclr	0,X0061,L048A
	brset	0,X0080,L048A
	jsr	L38A0
	rts
;
	cpx	#$90
	bcc	L04BB
	cpx	#$63
	bcs	L04BB
	bsr	L04A4
	bsr	L0497
	txa
	sub	#$30
	tax
	lda	X0130,x
	bra	L04A4
;
	cpx	#$90
	bcs	L04BB
	sta	X0059
	cmp	X0100,x
	beq	L04BB
	sei
	bclr	4,X000C
	bset	1,X0007
	bset	2,X0007
	bsr	L04BC
	bset	1,X0007
	bsr	L04BC
	bset	4,X000C
	cli
	rts
;
	sta	X0100,x
	bset	0,X0007
	cli
	jsr	L2631
	sei
	lda	X0059
	bclr	1,X0007
	rts
;
	tax
	lda	X0100,x
	rts
;
	brclr	6,X00CE,L053D
	lda	X00D0
	and	#$F0
	beq	L053D
	jmp	L397F
;
	lda	X00D0
	bmi	L053D
	and	#$70
	cmp	#$60
	bhi	L04EB
	brclr	1,X0081,L04F1
	bne	L04F1
	clra
	brclr	3,X008E,L04F1
	add	#$10
	add	#$10
	sta	X00D0
	jsr	L2617
	add	#$A8
	jsr	L38CB
	and	#$07
	add	X00D0
	bra	L052B
;
	lda	X00D0
	jsr	L2617
	tax
	lda	X0078
	cmp	#$17
	beq	L053D
	bhi	L051D
	lda	X00D0
	cmp	X393D,x
	bhi	L0526
	beq	L052B
	inca
	bra	L052B
;
	lda	X00D0
	cmp	X3944,x
	bhi	L052A
	beq	L052B
	lda	X393D,x
	cmp	X004A
	sta	X00D0
	jsr	L2617
	add	#$A8
	tax
	lda	X00D0
	and	#$07
	jsr	L38A0
	jmp	L394C
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
	jsr	L2573
	lda	X00D0
	bpl	L0556
	rts
;
	and	#$70
	lsra
	jsr	L254D
	lda	X00D0
	and	#$07
	cmp	#$01
	beq	L057A
	bcs	L056D
	ora	#$30
	sta	X025C
	bra	L057A
;
	lda	X00D0
	sub	#$10
	lsra
	lsra
	and	#$18
	add	#$40
	jsr	L254D
	lda	#$C4
	jmp	L24DC
;
	clrx
	brset	7,X00D0,L0585
L3583:
	ldx	#$00
	lda	X399E,x
	sta	X0056
	lda	X399D,x
	beq	L059C
	jsr	L2889
	bne	L0585
	ldx	X399C,x
	jsr	L38DC,x						;INFO: index jump
	bclr	6,X005D
	rts
;
	eor	X0000,x
	brclr	3,X0000,L05C1
	beq	L05A4
	lda	#$05
	sta	X0063
	lda	#$80
	jsr	L3A7E
	beq	L05B9
	jsr	L0785
	jsr	L2631
	tst	X0063
	bne	L05A8
	jsr	L2631
	bclr	6,X0001
	clr	X009E
	rts
;
	bset	1,X005D
	lda	#$07
	cmp	XA607
	sta	X009E
L35CA:
	jsr	L3AA2
	bclr	6,X0001
	jsr	L2640
	bset	6,X0001
	lda	#$05
	sta	X0063
	brclr	0,X0000,L05E4
	tst	X0063
	bne	L05D8
	bclr	2,X009E
	jmp	L0779
;
	jsr	L2631
	jsr	L2631
	bsr	L0648
	clr	X009F
	jsr	L2504
	rts
	bra	L05DF
;
	lda	X009E
	and	#$F0
	bne	L060E
	brclr	1,X005D,L0624
	lda	X006C
	coma
	ldx	#$07
	sta	X0250,x
	lda	#$E1
	bsr	L067E
	bne	L0624
	bclr	1,X005D
	rts
;
	brclr	2,X009E,L0624
	lda	X0256
	ldx	#$07
	brclr	7,X009E,L0625
	brclr	3,X009E,L063E
	lda	#$D0
	bsr	L067E
	bne	L0624
	bclr	3,X009E
	rts
;
	brclr	6,X009E,L0634
	brset	3,X009E,L063E
	lda	#$C0
	bsr	L067E
	bne	L0624
	bset	3,X009E
	rts
;
	lda	#$13
	clrx
	brset	5,X009E,L063E
	lda	#$23
	ldx	#$03
	jsr	L3A7E
	bne	L0624
	ldx	#$9E
	jmp	L266E
;
	brclr	2,X009E,L05F2
	brset	0,X0000,L06A8
	brset	6,X009F,L06A8
	lda	#$01
	sta	X0057
	lda	#$25
	jsr	L3AA9
	beq	L06A0
	bclr	1,X0004
	lda	#$01
	bset	2,X0000
	brset	1,X0000,L0665
	rola
	bclr	2,X0000
	bcc	L0660
L366A:
	sta	X0056
	sei
	bsr	L06E7
	beq	L06A0
	brset	6,X0056,L06A2
	lda	X0056
	beq	L0699
	sta	X009F
	bset	6,X009F
	bra	L0699
;
	sta	X0056
	and	#$0F
	inca
	sta	X0057
	lda	#$9A
	bsr	L06A9
	beq	L06A0
	lda	X0056
	bsr	L06C8
	beq	L06A0
	lda	X0250,x
	incx
	tst	X0057
	bpl	L068D
	bset	1,X009E
	bset	0,X009E
	clra
	bra	L06A2
;
	dec	X009E
	bclr	1,X0004
	bset	2,X0000
	bset	2,X0004
	rts
;
	sta	X0058
L36AB:
	bclr	1,X0004
	bclr	2,X0000
	lda	X001A
	add	#$14
	cmp	X001A
	bmi	L06C4
	brset	1,X0000,L06B3
	brset	0,X0000,L06B3
	brset	0,X0000,L06C6
	cmp	X001A
	bpl	L06BD
	clra
	rts
;
	lda	X0058
	sec
	rola
	bclr	2,X0000
	bclr	1,X0000
	bcc	L06D4
	bclr	1,X0004
	bra	L06D6
;
	bset	1,X0004
	bset	2,X0000
	asla
	bne	L06CA
	bclr	2,X0000
	jsr	L3B09
	bclr	1,X0004
	tst	X0057
	bne	L06E7
	sei
	lda	#$38
X36E9:
	brclr	0,X0000,L06F1
	deca
	bne	L06E9
	cli
	rts
;
	bset	2,X0000
	cli
	dec	X0057
	bmi	L0709
	jsr	L2640
	clra
L36FC:
	brset	0,X0000,L0709
	lda	#$38
	bclr	2,X0000
	brset	0,X0000,L0709
	deca
	bne	L0703
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
	bpl	L071A
	lda	#$40
	sta	X02CA
	sta	X02CB
	lda	#$10
	sta	X02C2
	brset	7,X0061,L0787
L3730:
	brclr	3,X008E,L0735
	bset	4,X00D5
	bset	5,X00D5
	jsr	L25A6
	bset	5,X008F
	brset	3,X005F,L0741
	bset	0,X0090
	ldx	#$2F
	bclr	0,X005B
	lda	X0100,x
	cmp	X0130,x
	bne	L0752
	cmp	X0160,x
	beq	L076F
	bset	0,X005B
	and	X0130,x
L3757:
	sta	X0057
	lda	X0100,x
	eor	X0130,x
L375F:
	and	X0160,x
	ora	X0057
	sta	X0057
	txa
	add	#$60
	tax
	lda	X0057
	jsr	L388B
	decx
	bpl	L0745
	lda	#$03
	bsr	L07C4
	ldx	#$12
L3778:
	jsr	L38CC
	ldx	#$0E
	cmp	#$5A
	beq	L0782
	clra
	add	#$FF
	jsr	L3DFF
	rts
;
	brclr	6,X009F,L07A1
	clrx
	lda	X009F
	bmi	L079E
	and	#$3F
	cmp	#$21
	beq	L079E
	bcs	L079C
	cmp	#$25
	bcs	L079E
	ldx	#$BC
	stx	X02D6
	rts
;
	lda	X02D6
	beq	L07B3
	deca
	sta	X02D6
	bne	L07B3
	lda	#$01
	bset	0,X005B
	bra	L07C4
;
	brclr	4,X007C,L07A1
	ldx	#$0D
	jsr	L3DD2
	lda	X02CD
	bpl	L07A1
	lda	#$04
	bra	L07D3
;
	sta	X0050
	ldx	#$0D
	brclr	0,X005B,L07CB
	jsr	L3DE0
	brclr	0,X005B,L07A1
	lda	X0050
	ldx	#$CF
	jmp	L38A0
;
	brclr	7,X0060,L07FD
	brclr	6,X005D,L07FD
	ldx	#$23
	lda	X40B0,x
	decx
	decx
	cmp	X0078
	bne	L07FA
	lda	X40B0,x
	sta	X02D3
	lda	X40B1,x
	sta	X02D4
	lda	#$FF
	sta	X02D5
	decx
	bne	L07E0
	rts
;
	brclr	2,X0091,L0039
	sei
	brclr	7,X0001,L0027
	brclr	1,X0090,L0027
	brset	3,X0001,L0027
	lda	#$24
	jsr	L25B7
	cmp	#$1F
	bls	L0016
	lda	#$1F
	sta	X02C7
	lda	#$23
	jsr	L25B7
	cmp	#$1F
	bls	L0024
	lda	#$1F
	sta	X02C8
	cli
	brclr	3,X0001,L008A
	brclr	1,X0090,L008A
	bclr	1,X0090
	lda	X02C7
	beq	L008A
	bset	4,X006B
	bset	6,X0095
	lda	X0090
	add	#$04
	sta	X0090
	bcs	L0084
	bpl	L008A
	sei
	brclr	7,X0001,L008A
	lda	#$24
	jsr	L25B7
	cli
	brset	5,X008E,L0056
	cmp	#$64
	bhi	L0056
	lda	#$64
	sub	X02C7
	bcc	L005C
	clra
	jsr	L3FAE
	brset	1,X008F,L0084
	brset	0,X008F,L0084
	sei
	brclr	7,X0001,L008A
	lda	#$23
	jsr	L25B7
L386E:
	cli
	brclr	5,X008E,L0075
	brclr	7,X008E,L007B
	cmp	#$64
	bhi	L007B
	lda	#$64
	sub	X02C8
	bcc	L0081
	clra
	jsr	L3FAE
	bclr	4,X006B
	bset	6,X0095
	clr	X0090
	cli
L388B:
	brset	4,X00BC,L00C7
	brset	2,X00BC,L00A6
	brset	3,X00BF,L00C7
	brclr	5,X008F,L00C7
	bclr	5,X008F
	bclr	6,X008F
	bset	2,X00BC
	bset	4,X00BC
	lda	#$60
	sta	X02D1
	bra	L00C7
;
	lda	X02D1
	bit	#$08
	bne	L00B3
	inca
	sta	X02D1
	bra	L00C7
;
	sei
	brset	7,X0001,L00C7
	lda	#$23
	jsr	L25B7
	sta	X02D2
	lda	X02D1
	ora	#$80
	sta	X02D1
	cli
	brclr	7,X0060,L00E0
L38CB:
	bset	0,X0080
	lda	X02D5
L38D0:
	beq	L00E0
	deca
	sta	X02D5
	bne	L00E0
	lda	#$20
	sta	X02D3
	sta	X02D4
	rts
;
	lda	X02D7
	brclr	4,X006A,L00EB
	add	#$0C
	bcs	L00F2
	beq	L00F2
	sub	#$04
	sta	X02D7
	brclr	2,X0091,L00E0
	brclr	0,X0090,L00E0
	bclr	0,X0090
	brset	3,X0091,L0101
	jsr	L3FBC
	rts
;
	lda	#$32
	sta	X0090
	rts
;
	clrx
	brset	1,X005F,L0111
	lda	X009C
	cmp	#$F4
	bhi	L0114
	clc
	jsr	L3DCF
	brclr	5,X0060,L011E
	bclr	5,X0060
	ldx	#$01
	jsr	L3E02
	lda	#$27
	jsr	L25B7
	coma
	add	#$78
	bcs	L012C
	add	#$14
	bcs	L0131
	ldx	#$01
	jsr	L3DD2
	brclr	2,X00BC,L0183
	lda	X02D1
	bpl	L0183
	ldx	#$03
	brset	6,X008F,L0147
	bclr	4,X008F
	brclr	0,X0091,L0147
	bset	4,X008F
	bset	6,X008F
	jsr	L3DD2
	bclr	3,X008F
L394C:
	ldx	#$02
	lda	X02D2
	coma
	add	#$66
	bcc	L0158
	bset	3,X008F
	bsr	L01D2
	lda	X02C3
	bmi	L017F
	lda	X02C2
	bpl	L0167
	brclr	2,X008F,L017F
	lsra
	bne	L016C
	bset	2,X008F
	brclr	6,X008F,L0183
	lda	X02D1
	bit	#$70
	beq	L017D
	sub	#$10
	sta	X02D1
	bra	L0183
;
	bset	5,X008F
L397F:
	bclr	2,X00BC
	bset	4,X00BC
	ldx	#$04
	brclr	1,X0001,L0194
	brset	5,X0091,L018B
	bsr	L01D2
	lda	X02C4
	bpl	L0194
	bclr	1,X0001
	ldx	#$05
	brset	3,X0091,L0199
	bsr	L01CF
	ldx	#$09
X399D:
	brclr	0,X0001,L01AC
	brset	4,X0091,L01A3
	bsr	L01D2
	lda	X02C9
	bpl	L01AC
	bclr	0,X0001
	brclr	2,X008E,L01C3
	brset	4,X006A,L01BB
	brclr	1,X005F,L01C3
	lda	X009C
	cmp	#$F4
	bhi	L01C3
	ldx	#$0A
	brclr	4,X006A,L01C0
	jsr	L3DCF
	brclr	1,X008E,L01CE
	ldx	#$0B
	brclr	6,X006A,L01CB
	jsr	L3DCF
	rts
;
	rora
	coma
	rola
	lda	X02C0,x
	bcs	L01F5
	sub	#$02
	bcc	L01F9
	bra	L01E5
;
	rora
	coma
	rola
	lda	X02C0,x
	bcs	L0202
	lsra
	bcs	L0217
	lda	#$01
	sta	X02C0,x
	lda	X01C0,x
	beq	L0217
	deca
	bra	L0204
;
	bmi	L0217
	add	#$02
	sta	X02C0,x
	bmi	L0202
	rts
;
	clra
	bcs	L0204
	lda	#$33
	sta	X0056
	txa
	add	#$C0
	tax
	lda	X0056
	brset	0,X008E,L0214
	cpx	#$C2
	bne	L0214
	clra
	jsr	L38A0
	rts
;
	lda	X02B3
	cmp	#$03
	bne	L0230
	lda	X02B4
	cmp	#$53
	bne	L0229
	bset	0,X0090
	rts
;
	lda	#$06
	jsr	L2591
	bclr	7,X005D
	rts
;
	ldx	X3E37,x
	jmp	L3E3F,x						;INFO: index jump
;
	brset	0,X0000,L025A
;
	db	$32
;
	clra
	tst	X0072,x
;
	db	$84
;
	clra
	brset	7,X0091,L0245
	lda	#$08
	sta	X02B5
L3A48:
	lda	#$27
	jsr	L25B7
	sta	X02B8
	clra
	brclr	2,X005F,L0257
	lda	X02A4
	sta	X02BB
	brset	1,X005F,L02A3
	bra	L02A3
;
	bset	0,X0090
	lda	#$F3
	brset	0,X008F,L026D
	lda	#$F2
	brset	1,X008F,L026D
	lda	#$C2
	sta	X02B8
	rts
;
	bset	5,X008F
	brclr	0,X008E,L027B
	lda	#$12
	sta	X02B5
	lda	#$F2
	brset	4,X008F,L028A
	lda	#$C2
	brclr	3,X008F,L028A
	brclr	0,X008E,L028A
	lda	#$F3
	sta	X02BB
	rts
;
	lda	X02C4
	and	#$61
	sta	X02C4
	clra
	bset	1,X0001
	brclr	5,X0091,L029D
	inca
	sta	X02B5
	brset	3,X005F,L02A3
	lda	#$87
	bcs	L02A8
	inca
	sta	X02BE
	rts
;
	brset	6,X006A,L02BA
	bra	L02BA
;
	bset	5,X00D5
	jsr	L25A6
	lda	X02D7
	rola
	lda	#$C2
	bcs	L02BF
	inca
	sta	X02B8
	rts
;
	lda	X02D3
	sta	X02B4
	lda	X02D4
	sta	X02B5
	rts
;
	clr	X005B
	brclr	3,X008E,L02D7
	inc	X005B
	lda	X02B3
	ldx	#$80
	jsr	L388B
	lda	X02B4
	ldx	#$81
	jsr	L388B
	lda	X02B5
	ldx	#$82
	jsr	L388B
	lda	X02B6
	ldx	#$83
	jsr	L388B
	lda	#$5A
	ldx	#$72
	jsr	L388B
	jsr	L400D
	brclr	3,X008E,L0332
	tst	X005B
	bne	L0332
	ldx	#$12
L3B0A:
	jsr	L3FD1
	ldx	#$00
	jsr	L3FDF
	lda	#$0D
	jsr	L3FE7
	lda	X027C
	deca
	bpl	L0314
	ldx	#$30
	jsr	L3FD1
	ldx	#$02
	jsr	L3FDF
	lda	#$1B
	jsr	L3FE7
	lda	X027C
	deca
	bpl	L0329
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
	bhi	L0350
	lda	X3EEE,x
	jsr	L38A0
	jsr	L0785
	decx
	cpx	#$A0
	bcc	L0348
	ldx	#$80
	lda	#$03
	jsr	L388B
	ldx	#$81
	lda	#$22
	jsr	L388B
	lda	#$00
	ldx	#$72
	jsr	L388B
	lda	#$46
	jsr	L24DC
	jsr	L1F1C
	jsr	L39F4
	jsr	L0785
	bra	L037B
;
	ldx	#$63
	lda	#$A0
	jsr	L388B
	jsr	L2542
	lda	#$C4
	bra	L0372
;
	brset	0,X0000,L0391
	brset	0,X0000,L0394
	brset	0,X0002,L039F
	brclr	1,X0003,L039D
	brset	0,X0000,L03A0
	brset	0,X0002,L03A0
	brset	0,X0010,L03B3
	bset	0,X0010
	bset	0,X0010
	brset	0,X0000,L03AA
	brset	0,X0000,L03AD
	brset	0,X0013,L033F
	cmp	#$A9
	bhi	L03BC
	cmp	#$0B
	bhi	L03BE
	bset	0,X008F
	bra	L03C0
;
	bset	1,X008F
	bclr	0,X008F
	ldx	#$05
	brclr	1,X008F,L03C5
	jsr	L3DE0
	ldx	#$06
	brclr	0,X008F,L03CD
	jsr	L3DE0
	rts
;
	lda	#$89
	sta	X027D
X3BD6:
	lda	#$8A
L3BD8:
	sta	X027C
	lda	#$0A
	bra	L03EE
;
	clra
	sta	X027C
	lda	#$11
	bra	L03EE
;
	sta	X027C
	lda	#$19
	ldx	#$89
	sta	X027A
	stx	X027B
	bset	7,X00D6
	clr	X00D9
	jsr	L0785
	jsr	L4955
L3BFE:
	brclr	3,X0067,L03F8
	bclr	3,X0067
	jsr	L37B0
	jsr	L490B
	brset	7,X00D6,L03F8
	rts
;
	ldx	X0120
	lda	X0121
	lsrx
	rora
	bsr	L044C
	lda	X0058
	and	#$07
	sta	X008E
	brclr	0,X0056,L0422
	bset	3,X008E
	brclr	4,X0058,L0427
	bset	4,X008E
	lda	X0057
	and	#$07
	beq	L043B
	bset	5,X008E
	cmp	#$05
	bne	L0435
	bset	6,X008E
	cmp	#$01
	bne	L043B
	bset	7,X008E
	brclr	5,X0069,L0444
	bclr	4,X008E
	bclr	3,X008E
	bclr	1,X008E
	bclr	1,X0081
	brclr	4,X008E,L044B
	bset	1,X0081
	rts
;
	stx	X0050
	sta	X0051
	and	#$0F
	cmp	#$09
	bls	L0458
	add	#$06
	sta	X0058
	clr	X0057
	clr	X0056
	clrx
	lda	X0051
	bsr	L046E
	lda	X0050
	bsr	L046B
	lda	X0050
	bra	L046E
;
	jsr	L261E
	jsr	L2617
	sta	X0052
	beq	L04A7
	bset	7,X0059
	lda	X40AB,x
	add	X0058
	bcs	L0482
	bclr	7,X0059
	sub	#$60
	bhcs	L0486
	sub	#$06
	sta	X0058
	rol	X0059
	bset	7,X0059
	lda	X40AA,x
	adc	X0057
	bcs	L0497
	bclr	7,X0059
	sub	#$60
	bhcs	L049B
	sub	#$06
	sta	X0057
	rol	X0059
	bcc	L04A3
	inc	X0056
	dec	X0052
	bne	L0475
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
	brset	4,X0030,L04F6
	ldx	X0030,x
	ror	X00EF
	neg	X0037
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
	brclr	7,X0060,L04F8
	brset	7,X0092,L04F8
	bclr	7,X0060
	bclr	7,X0093
	bset	2,X005D
	brclr	6,X0060,L04F3
	bclr	6,X0060
	brset	0,X005F,L04F3
	bclr	0,X0061
	bclr	3,X0001
	bclr	1,X0001
	rts
;
	brset	3,X0060,L0566
	brset	0,X0060,L0559
	brset	4,X0060,L0507
	brclr	7,X0093,L050A
	jmp	L418E
	jmp	L41A1
;
	jsr	L43F6
	beq	L0567
	jsr	L43F6
	beq	L0567
	eor	X0093
	sta	X0093
	brclr	3,X0093,L0523
	brclr	4,X0093,L055F
	brclr	5,X0093,L0559
	bra	L055F
;
	brset	5,X0093,L0526
	clra
	rola
	eor	X0093
	rora
	bcc	L0548
	and	#$03
	tax
	lda	X02B1
	sub	X0068
	cmp	#$11
	bcs	L0548
	cmp	#$17
	bcs	L054E
	cmp	#$22
	bcs	L0548
	cmp	#$2B
	bhi	L0548
	tstx
	beq	L0555
	lda	#$08
	sta	X0093
	bra	L055F
;
	tstx
	beq	L0548
	cpx	#$04
	bhi	L0548
	inc	X0093
	bra	L055F
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
	bcs	L0573
	bset	3,X0060
	rts
;
	brclr	5,X0093,L0566
	brset	4,X0093,L0566
	cmp	#$3C
	bcs	L0566
	brclr	3,X0093,L0585
	lda	#$38
	sta	X0093
	rts
;
	lda	X0093
	cmp	#$25
	bne	L0566
	bset	4,X0060
	rts
;
	brset	7,X0095,L05A0
	brset	4,X0094,L05A0
	brclr	7,X0092,L0548
	brset	4,X0092,L05A0
	brset	3,X0092,L05A9
	brset	6,X0093,L05D9
	rts
;
	bclr	4,X0060
	bclr	2,X0060
	bclr	1,X0060
	bra	L05F5
;
	bclr	3,X0092
	clrx
	lda	X4401,x
	beq	L05D3
	cmp	X02B0
	bne	L05BE
	lda	X4402,x
	cmp	X02B2
	beq	L05C3
	incx
	incx
	incx
	bra	L05AC
;
	cmp	#$04
	beq	L05C7
	bclr	6,X0093
	lda	X0093
	and	#$1F
	ldx	X4403,x
	jmp	L41F5,x						;INFO: index jump
;
	ldx	#$47
	jsr	L43C0
	rts
;
	bclr	6,X0093
	lda	X0093
	inca
	and	#$1F
L3DE0:
	cmp	#$02
	beq	L05DD
	cmp	#$03
	beq	L05FC
	cmp	#$04
	beq	L05FC
	cmp	#$05
	beq	L0616
	sub	#$14
	bcc	L0645
	rts
;
	lda	#$01
	brclr	5,X0069,L05FC
	lda	#$02
	jsr	L43B6
L3DFF:
	bset	4,X0094
	bset	6,X0093
	jsr	L4507
	brset	7,X0092,L063F
	lda	#$90
	sta	X0092
	lda	X02B0
	ora	#$20
	sta	X02B0
	rts
;
	jsr	L43B6
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
X3E37:
	bclr	0,X0081
	lda	#$02
	sta	X008A
	bset	6,X0082
L3E3F:
	rts
;
	lda	#$13
	sta	X0093
	clra
	sta	X0050
	ldx	#$95
	jsr	L43C0
	clr	X0057
	jmp	L433F
;
	ldx	#$CE
	clra
	jsr	L38A0
	decx
	cpx	#$C0
	bcc	L0653
	bra	L0640
;
	cmp	#$06
	bcs	L066B
	cmp	#$08
	bcs	L066D
	bne	L066B
	jmp	L4345
;
	lda	#$05
	inca
	jsr	L43B6
	bset	7,X005D
	jsr	L3E18
	rts
;
	ldx	X02B3
	beq	L068F
	cpx	#$07
	bhi	L0690
	stx	X005B
	ldx	X4426,x
	jsr	L43C0
	bset	4,X0094
	ldx	X005B
	jsr	L3E31
	rts
;
	cpx	#$19
	bne	L068F
	brclr	2,X0060,L068F
	bset	1,X0060
	rts
;
	jsr	L3ED0
	jmp	L41F5
;
	brclr	2,X008B,L06A6
	jmp	L41D3
;
	ldx	X02B3
	lda	X02B4
	jsr	L404C
	lda	X0057
	cmp	X0101
	bne	L06C5
	lda	X0058
	cmp	X0102
	bne	L06C5
	jsr	L375F
	bclr	2,X005D
	bset	2,X0060
	rts
;
	inc	X008B
	jsr	L3757
	lda	#$FF
	sta	X008C
	jmp	L40E3
	bra	L0714
;
	brclr	1,X0060,L0713
	lda	X02B3
	sta	X0050
	lda	X02B5
	sta	X0051
	lda	#$12
	jsr	L43B6
	lda	#$03
X3EE7:
	sta	X0052
	ldx	X0051
	txa
	and	#$FC
X3EEE:
	beq	L06FB
	sub	#$30
	beq	L06FB
	sub	#$30
	beq	L06FB
	jsr	L38CC
	inc	X0051
	ldx	X0052
	sta	X02B0,x
	inc	X0052
	lda	X02B0
	inca
	sta	X02B0
	cmp	#$0F
	beq	L0713
	dec	X0050
	bne	L06E9
	rts
;
	lda	X02B3
	cmp	#$AB
	bne	L0725
	lda	X02B4
	cmp	#$CD
	bne	L0725
	jmp	L3F46
;
	brclr	1,X0060,L0713
	lda	X02B3
	cmp	X0101
	bne	L0713
	lda	X02B4
	cmp	X0102
	bne	L0713
	jmp	L3F80
;
	inc	X0050
	inc	X0093
	ldx	X0050
	cpx	#$0E
	bls	L074A
	clr	X0093
	bset	7,X0093
	rts
;
	lda	X01C0,x
	beq	L073B
	cpx	#$02
	beq	L0767
	cpx	#$03
	beq	L075F
	cpx	#$05
	beq	L0767
	cpx	#$06
	bne	L076C
	decx
	cmp	X01C0,x
	bcs	L073B
	bra	L076C
;
	cmp	X01C1,x
	bls	L073B
	cmp	#$33
	bne	L0771
	clra
	sta	X0051
	ldx	X0057
	incx
	incx
	incx
	cpx	#$0C
X3F7A:
	bls	L077F
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
	lda	X44D9,x
	ldx	X0057
	sta	X02B0,x
	ldx	X0058
	lda	X44DA,x
	ldx	X0057
	sta	X02B1,x
	ldx	X0058
	lda	X44DB,x
	tst	X0051
	bne	L07AD
	and	#$7F
	ldx	X0057
	sta	X02B2,x
	bset	4,X0094
	bra	L073B
;
	sta	X0093
	lda	X0093
	and	#$1F
L3FBC:
	tax
	ldx	X441D,x
	bset	7,X0093
	clr	X0056
	stx	X0057
	bclr	5,X005D
	cpx	#$49
	bne	L07CE
	bset	5,X005D
	lda	X443F,x
L3FD1:
	sta	X02B0
	and	#$0F
	sub	#$03
	sta	X0058
	lda	#$FF
	sta	X02B1
L3FDF:
	ldx	X0057
	lda	X4440,x
	ldx	X0056
	sta	X02B2,x
	inc	X0056
	inc	X0057
	dec	X0058
	bpl	L07DF
	bset	7,X0095
	bset	4,X0092
	rts
;
	clra
	brclr	1,X0003,L07FC
	lda	#$20
	eor	X0093
	and	#$20
	rts
;
	brclr	1,X0000,L0004
	brclr	1,X0007,L0052
	brclr	1,X0005,L0066
	brset	2,X0004,L0076
L400D:
	brset	2,X0029,L0792
	brclr	3,X0010,L07B8
	brset	4,X002B,L07C1
	brclr	2,X001B,L07F5
	brset	3,X0003,L07FA
	brset	0,X003F,L0020
	brclr	7,X001D,L004D
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
	bra	L006D
	bra	L005E
;
	lda	,x
	lsr	X0042
	neg	X0030
	com	X0035
;
	db	$31, $35, $32
;
	bra	L007B
	bra	L006C
;
	lda	,x
	bra	L00B2
;
	db	$61
;
	lsr	X0069,x
	clr	X0020,x
	bra	L0087
	bra	L0089
	bra	L0079
;
	lda	,x
	bra	L008E
	bra	L0090
	bra	L0092
	bra	L00A4
;
	neg	X0030
;
	db	$31
;
	brset	4,X00F6,L007A
	brclr	2,X00F5,L0080
	comx
	brclr	2,X00F5,L0084
	rorx
	brclr	2,X00F5,L0089
	add	#$44
	brset	5,X000F,L0071
	bset	0,X0008
	brset	0,X0006,L00DD
	sub	X1764
	rti
;
	bcs	L0095
;
	db	$87
;
	brclr	7,X00E7,L00BE
	brset	0,X00F0,L00C1
	brset	0,X00C2,L00B0
	bra	L00C1
;
	bclr	0,X0020
	bra	L00B1
;
	sta	X0025,x
	brclr	0,X0011,L00CF
X40AA:
	brset	0,X00F4,L00D2
	brset	0,X00C2,L00BF
X40B0:
	sta	X0010,x
	brclr	0,X0000,L00C6
	bra	L00D7
;
	bcs	L00B9
	bit	,x
	bcs	L00BC
;
	db	$88
;
	brclr	4,X00E7,L00E5
	brset	0,X00F6,L00E8
	brset	0,X00C2,L00CF
	sta	X0025,x
	brset	0,X00F7,L00F0
	brset	0,X00C2,L00D4
	sta	X0011,x
	bra	L00F2
;
	brclr	1,X00FD,L00DB
	jmp	,x						;INFO: index jump
;
	stx	,x
	stx	,x
;
	db	$88
;
	brclr	1,X0051,L0080
	brset	1,X009C,L0066
	brclr	1,X0058,L0086
	brclr	1,X0058,L0082
	brclr	1,X0052,L0085
	brclr	1,X0054,L0097
	brclr	1,X0054,L0092
	brclr	1,X0055,L009D
	brclr	1,X0055,L0098
	brclr	1,X0058,L0094
	brclr	1,X0056,L00AB
	brclr	1,X0057,L00AE
	brclr	1,X0057,L009D
	stx	,x
	stx	,x
	brset	0,X0004,L0119
	bls	L0107
	lda	X01D0
	cmp	#$41
	bne	L0140
	lda	X02B3
	cmp	#$34
	bne	L0128
	ldx	#$0A
	lda	X01D0,x
	brset	5,X0069,L0120
	lda	X01E0,x
	sta	X02B2,x
	decx
	bne	L0117
	bra	L0140
;
	lda	X02BD
	cmp	#$31
	bne	L0140
	ldx	#$05
	lda	X01DA,x
	brset	5,X0069,L013A
	lda	X01EA,x
	sta	X02B8,x
	decx
	bne	L0131
	rts
	rts
;
	lda	#$07
	jsr	L2591
	lda	#$14
	jmp	L24CB
;
	brclr	6,X00CE,L0159
	lda	X00D0
	bit	#$F0
	bne	L0159
	jmp	L45EE
	rts
	rts
;
	lda	#$01
	bra	L0160
;
	lda	#$07
	brclr	3,X00D0,L0159
	add	X00D0
	and	#$0F
	ora	#$08
	cmp	#$0D
	bcs	L0174
	bne	L0172
	lda	#$08
	cmp	XA60C
	sta	X00D0
	bra	L0178
;
	brclr	5,X00CE,L018B
	lda	#$17
	brset	6,X0081,L01DA
	ldx	X0084
	lda	X45DD,x
	sta	X00C8
	lda	#$8B
	bra	L01DA
;
	brclr	6,X00CE,L0159
L418E:
	ldx	X00D0
	lda	#$05
	brset	6,X006A,L0197
	lda	#$07
	cpx	#$01
	beq	L01DA
	lda	#$CA
	cpx	#$08
	beq	L01DA
L41A1:
	txa
	ldx	#$07
	cmp	#$09
	beq	L01BA
	cmp	#$0A
	beq	L01C4
	cmp	#$0B
	bne	L01CF
	lda	X00A3,x
	sta	X0257,x
	decx
	bpl	L01B0
	bra	L01D8
;
	lda	X00DA,x
	sta	X0257,x
	decx
	bpl	L01BA
	bra	L01D8
;
	lda	X45E6,x
	sta	X0257,x
	decx
	bpl	L01C4
	bra	L01D8
;
	lda	X0190,x
	sta	X0257,x
	decx
	bpl	L01CF
	lda	#$C4
	jmp	L24DC
;
	brset	0,X0001,L01E3
	brset	2,X0005,L01E9
	brset	4,X0009,L01F0
	asr	X0042
;
	db	$32
;
	neg	X002E
;
	db	$31
;
	bra	L023B
;
	clrx
	lda	X4606,x
	sta	X0056
	lda	X4605,x
	beq	L0204
	jsr	L2889
	bne	L01EF
	ldx	X4604,x
	jsr	L4558,x						;INFO: index jump
	rts
;
	lda	,x
	brclr	0,X00F8,L020B
	sta	X0006,x
	brset	0,X0003,L01E0
;
	db	$75
;
	brset	0,X00D2,L0284
	brclr	3,X00CB,L0219
	bclr	3,X00CB
	bset	7,X005D
	brclr	6,X005D,L0284
	jmp	L4742
;
	brclr	1,X00D2,L0284
	lda	#$06
	eor	X00D4
	sta	X00D4
	ldx	#$A6
	jsr	L38A0
	bclr	0,X00D4
	ldx	#$83
	brset	2,X00D4,L0243
	ldx	#$8D
	bra	L0243
;
	brclr	1,X00D2,L0284
	ldx	#$89
	lda	#$01
	eor	X00D4
	sta	X00D4
	bset	2,X006A
	bra	L025B
;
	ldx	#$87
	cmp	XAE86
	cmp	XAE85
	cmp	XAE84
	bra	L025B
;
	ldx	#$8B
	cmp	XAE8A
	bsr	L0279
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
	brset	4,X00D2,L024D
	brset	4,X00D2,L0250
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
	jsr	L2664
	and	X0266
	bne	L02A0
	lda	#$88
	jsr	L24E5
	lda	X00C8
	ora	#$20
	jsr	L259A
	lda	X00C8
	ora	#$C0
	tax
	bra	L025B
;
	lda	#$05
	jsr	L2565
	lda	X0260
	and	#$07
	sta	X00C8
	lda	X0265
	bit	#$06
	bne	L0300
	bit	#$08
	bne	L02CA
	and	#$F0
	cmp	#$A0
	beq	L02CA
	cmp	#$B0
	bne	L02D3
	bset	3,X00D4
	lda	#$20
	jsr	L259A
	ldx	#$08
	bra	L02FC
;
	lda	X0267
	bpl	L02E0
	and	#$07
	sta	X00C8
	ldx	#$89
	bra	L02FC
;
	lda	X0266
	and	#$3F
	beq	L02CA
	brset	0,X00D2,L02FA
	brclr	2,X00D4,L02FA
	lda	X0264
	and	#$24
	bne	L02FA
	ldx	#$83
	stx	X007D
	bset	6,X0094
	ldx	#$C8
	txa
	jmp	L24CB
;
	jsr	L253F
	lda	X00C8
	ora	#$30
	sta	X0259
	lda	X0265
	lsra
	and	#$03
	ora	#$30
	sta	X025E
	lda	#$C4
	jmp	L24DC
;
	clr	X0056
	bclr	3,X00CB
	brset	2,X006A,L0333
	bclr	1,X00D4
	bset	0,X00D4
	lda	X0264
	bit	#$12
	bne	L032E
	bclr	0,X00D4
	brclr	2,X00D4,L0333
	bset	1,X00D4
	clra
	brclr	0,X00D4,L0339
	bset	4,X0056
	brclr	1,X00D4,L033E
	lda	#$10
	jsr	L250E
	rts
;
	clrx
	lda	X475C,x
	sta	X0056
	lda	X475B,x
	beq	L035A
	jsr	L2889
	bne	L0343
	ldx	X475A,x
	jsr	L461F,x						;INFO: index jump
	bclr	6,X005D
	rts
;
	eor	,x
	bmi	L0345
	bhcc	L034F
	bmi	L0352
	bhcc	L0351
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
	asl	X0051
	decx
	cmp	X54F2,x
	clrx
;
	db	$92, $35, $52
;
	decx
	sbc	X51EC,x
	brset	0,X0008,L0397
	brclr	5,X0019,L037A
	ror	X0000,x
	brclr	2,X00D2,L03B4
	brclr	4,X00CB,L03AB
	bclr	4,X00CB
	bset	7,X005D
	brclr	1,X007C,L03AB
	bset	2,X00CB
	brclr	6,X005D,L03B4
	brset	7,X00D3,L03B4
	jmp	L489A
	rts
;
	lda	#$8B
	cmp	XA68A
	bset	2,X00CB
	brclr	1,X007C,L03CA
	lda	#$88
	brset	7,X00D3,L042A
	bclr	2,X00D2
	lda	#$80
	bra	L042A
;
	brset	3,X007F,L03B4
	brset	5,X007F,L03B4
	sta	X007B
	bclr	1,X006A
	bclr	3,X006A
	brclr	5,X00D3,L042E
	bclr	3,X007B
	bra	L042E
;
	bset	2,X00CB
	brset	3,X006A,L0426
	bset	3,X006A
	lda	#$89
	bra	L042A
;
	bset	4,X00BC
	lda	#$40
	eor	X00D3
	sta	X00D3
	ldx	#$A5
	jsr	L38A0
	bra	L0430
;
	brclr	3,X006A,L03FE
	bset	5,X00D3
	bra	L0404
;
	lda	#$20
	eor	X00D3
X4402:
	sta	X00D3
	ldx	#$A5
	jsr	L38A0
	brclr	1,X007C,L041C
	lda	#$8B
	brclr	0,X007C,L0417
	brset	2,X007C,L03D0
	deca
	bra	L03D0
;
	brclr	2,X007C,L03D0
	bra	L0414
;
	brclr	3,X006A,L0430
	bra	L0426
;
	lda	#$8E
	brclr	1,X007C,L0428
X4426:
	lda	#$8F
	bclr	3,X006A
	sta	X007B
	bclr	1,X006A
	bset	5,X0094
	bset	7,X005D
	rts
;
	lda	#$04
	jsr	L2573
	lda	#$00
	brclr	3,X007C,L044E
	brset	1,X007C,L045D
X4440:
	brclr	3,X00D3,L044E
	lda	#$01
	bclr	4,X00D3
	brset	0,X007C,L044E
	lda	#$02
	bset	4,X00D3
	jsr	L24CB
	bclr	1,X006A
	brclr	3,X00D3,L0499
	lda	X00D3
	ldx	#$A5
	jmp	L38A0
;
	brclr	5,X00D3,L0463
	brset	1,X006A,L0499
	brclr	0,X007C,L046F
	lda	#$03
	brset	2,X007C,L0476
	lda	#$04
	bra	L0476
;
	lda	#$03
	brclr	2,X007C,L0476
	lda	#$04
	bclr	1,X006A
	jmp	L24DC
;
	bclr	4,X00CB
	clra
	brclr	7,X00D3,L0486
	brclr	2,X00D3,L048B
	bra	L0489
;
	brclr	3,X006A,L048B
	ora	#$10
	sta	X0056
	lda	X00D3
	and	#$60
	brclr	4,X0056,L0496
	and	#$40
	jsr	L250E
	rts
;
	clrx
	lda	X48B4,x
	sta	X0056
	lda	X48B3,x
	beq	L04B2
	jsr	L2889
	bne	L049B
	ldx	X48B2,x
	jsr	L47B5,x						;INFO: index jump
	bclr	6,X005D
	rts
;
	adc	,x
	inc	X000B,x
	bhcc	L04BC
	mul
	brset	4,X0042,L04AF
	brset	0,X00ED,L04C2
	jmp	,x						;INFO: index jump
;
	brset	0,X00FD,L04C6
	sbc	,x
	brset	0,X00F1,L04CA
	brclr	2,X0033,L04CA
	jsr	L499F
	bclr	4,X0000
	bset	4,X0004
	bclr	5,X0000
	bset	5,X0004
	bclr	3,X0000
	bset	3,X0004
X44D9:
	jsr	L2631
	bclr	3,X0004
	rts
;
	bclr	3,X0004
	brclr	5,X006A,L04E7
	brclr	3,X0000,L050A
	jsr	L499F
	bclr	5,X0001
	jsr	L2631
	bset	5,X0001
	bset	7,X0094
	bset	0,X005E
	lda	#$05
	sta	X0063
	jsr	L490B
	tst	X0094
	beq	L050A
	jsr	L0785
	jsr	L2631
	tst	X0063
	bne	L04F9
	rts
;
	clrx
	lda	X0094
	bne	L0516
	lda	X0095
	beq	L0552
	ldx	#$08
	incx
	asla
	bcc	L0516
	lda	X49C8,x
	sta	X0050
	aslx
	lda	X49D1,x
	sta	X0059
	lda	X49D2,x
	sta	X0056
	lda	#$07
	sta	X0058
	lda	X4A09
	sta	X0057
	lda	X4A08
	tsta
	beq	L053B
	bset	0,X0059
	jsr	L2679
	lda	X0050
	jsr	L4A14
	brset	0,X005E,L0552
	brclr	0,X0050,L0561
	ldx	#$94
	tst	,x
L454C:
	bne	L054F
	incx
	jsr	L266E
	bclr	0,X005E
	rts
;
	brset	5,X0000,L059E
L4558:
	brset	0,X005E,L059E
	jsr	L4A78
	brset	0,X005E,L059E
	ldx	#$0B
	decx
	bmi	L059E
	cmp	X49E7,x
	bne	L0563
	stx	X0050
	jsr	L2695
	stx	X0058
	ldx	X0050
	aslx
	lda	X4A08
L4578:
	sta	X0059
	lda	X4A09
	sta	X0056
	lda	X49F3,x
	sta	X0057
	lda	X49F2,x
	tsta
	beq	L058C
	bset	0,X0059
	jsr	L2679
	lda	X0050
	beq	L059E
	cmp	#$05
	beq	L059C
	bhi	L059E
	bset	3,X00CB
	cmp	X18CB
	rts
;
	clra
	ldx	#$07
	sta	X0260,x
	decx
	bne	L05A2
X45A8:
	lda	#$80
	sta	X0260
	clr	X006A
	lda	X007C
	and	#$40
	ora	#$A0
	sta	X007C
	brset	5,X0069,L05C0
	bset	2,X0069
	bset	6,X007C
	bset	6,X006A
	clr	X0092
	clr	X0091
	clr	X0094
	clr	X0095
	rts
;
	brset	5,X0002,L05D0
	sbc	#$82
	and	#$08
	brset	6,X00A6,L05E1
	brset	0,X00CE,L05D6
	tst	,x
	brset	0,X007B,L05DC
	eor	X0000
	sta	X0002
	rti
;
	brset	0,X00D5,L05E2
	ldx	X02B0
	brset	0,X006B,L062E
	sbc	XD4D6,x
	sbc	X0048,x
	lda	X0044,x
	and	X00E8,x
	mul
	brset	0,X006A,L05F7
;
	db	$61
;
	brset	1,X0060,L05FB
	lsr	X0002,x
	neg	X0000,x
	inc	,x
	brset	1,X00B8,L0601
;
	db	$91
;
	brset	0,X00A3,L0607
X4605:
	sub	X0000
;
	db	$92
;
	brset	1,X0068,L060D
;
	db	$5E
;
L460C:
	brset	3,X0018,L0613
	bclr	4,X0000
	bset	1,X005E
	rts
;
	sta	X0057
	jsr	L2695
	stx	X0059
	bset	1,X005E
	ldx	#$0C
L461F:
	brclr	4,X0000,L066E
	decx
	bne	L061F
	bclr	2,X0050
	bset	0,X0050
	brclr	5,X0000,L0678
	jsr	L4B09
	lda	#$C8
	sta	X0056
	jsr	L4AF3
	brclr	0,X005E,L063E
	bclr	0,X005E
	jsr	L4AFC
	jsr	L4AFC
	brclr	5,X0000,L0678
	clr	X0051
	lda	#$AA
	jsr	L4B2A
	lda	X0057
	jsr	L4B2A
X4650:
	jsr	L4AB8
	lda	X0051
	jsr	L4B2A
	jsr	L4AFE
	jsr	L4B09
	jsr	L4ACA
	jsr	L4AE3
	jsr	L4AE3
	jsr	L4AE3
	jsr	L4B25
	cmp	X105E
	bclr	1,X005E
	bclr	5,X0004
	bclr	4,X0004
	cli
	rts
;
	jsr	L4AFE
	ldx	#$50
	decx
	bne	L067D
	clr	X0059
	bclr	0,X0050
	bclr	0,X005E
	bclr	2,X0050
	jsr	L4AE3
	lda	#$56
	jsr	L4B28
	bset	2,X0059
	lda	#$56
	jsr	L4B28
	lda	X0052
	sta	X0058
	jsr	L2695
	stx	X0059
	inc	X0059
	bclr	2,X0050
	bsr	L06B8
	bsr	L06C4
	dec	X0056
	bmi	L06AF
	brclr	5,X0000,L06A8
	brclr	2,X0050,L066E
	bclr	0,X005E
	lda	X0058
	bra	L0670
;
	clrx
	lda	X0268,x
	bsr	L072C
	incx
	dec	X0059
	bpl	L06B9
	rts
;
	brset	0,X005E,L0725
	brclr	0,X0050,L06CD
	jsr	L4AE3
	sei
	bclr	4,X0004
	clr	X0056
	bset	7,X0056
	brset	4,X0000,L06E3
	dec	X0056
	bpl	L06D4
	bset	0,X005E
	jmp	L04C4
;
	cli
	bset	0,X005E
	rts
;
	brset	0,X005E,L0725
	brclr	0,X0050,L06EF
	jsr	L4AE3
	bra	L06FE
;
	clr	X0056
	bset	4,X0056
	brclr	4,X0000,L06FC
	dec	X0056
	bne	L06F3
	bra	L06DB
;
	bclr	5,X0004
	bclr	4,X0000
	bset	4,X0004
	bclr	4,X0000
	cli
	rts
;
	brset	0,X005E,L0725
	bclr	5,X0000
	bset	5,X0004
	bclr	5,X0000
	rts
;
	brclr	0,X0050,L0725
	tsta
	bpl	L0706
	bclr	5,X0004
	clr	X0056
L471A:
	bset	4,X0056
	brset	5,X0000,L0727
	dec	X0056
	bpl	L071C
	bra	L06DB
;
	bclr	5,X0004
	rts
;
	sta	X0051
	ldx	#$09
	sta	X0052
	clr	X005A
	bset	3,X005A
	bsr	L0710
	bsr	L06C4
	brset	5,X0000,L0739
	rola
	bsr	L06E4
	dec	X005A
	bne	L0732
	brset	0,X0050,L075C
	sta	X0052
	tst	X0059
	bne	L0752
	ldx	#$51
	cmp	,x
	bne	L0764
	bset	2,X0050
	bra	L0755
;
	sta	X0268,x
	bsr	L0706
	jsr	L4AC4
X475A:
	bra	L0767
;
X475C:
	bclr	5,X0004
	jsr	L4AC4
	brclr	5,X0000,L0767
	bset	0,X005E
	cli
	lda	X0052
	add	X0051
	bhcc	L076F
	sub	#$10
	sta	X0051
	jsr	L4AE4
	bra	L0710
;
	brset	2,X008B,L07B3
	brclr	6,X005D,L07B3
	jmp	L4C26
;
	bclr	4,X00BA
	bset	7,X005D
	lda	#$70
	sta	X0077
	rts
;
	brset	7,X00CE,L07B4
	brclr	3,X008B,L0793
	brclr	7,X008B,L07AC
	bclr	3,X008B
	bset	4,X00B3
	clr	X00CE
	bset	7,X00CE
	inc	X008B
	bclr	2,X008B
	lda	#$10
	sta	X029E
	clra
	sta	X029F
	lda	#$0C
	brclr	7,X008B,L07FA
	cmp	XA60B
	bset	1,X00CB
	jsr	L24E5
	rts
;
	bclr	7,X00CE
	ldx	X029E
	cpx	X0101
	bne	L07CD
	lda	X029F
	cmp	X0102
	bne	L07CD
	stx	X008C
	sta	X008D
	jmp	L375F
;
	brset	7,X008B,L0793
	jmp	L3757
;
	clrx
	cmp	XAE01
	lda	#$70
	add	X029E,x
	bcs	L07EF
	add	#$A0
	bra	L07EF
;
	clrx
	cmp	XAE01
	lda	#$F7
	add	X029E,x
	bhcs	L07EF
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
	brset	7,X00CE,L0005
	brclr	3,X008B,L000B
	lda	#$C6
	jsr	L24CB
	rts
;
	jsr	L24E5
	rts
;
	brset	3,X008B,L001E
	brset	7,X008B,L001E
	lda	#$20
	brset	1,X008B,L001F
	asla
	brset	0,X008B,L001F
	clra
	clrx
	jsr	L24F5
	jmp	L2505
;
	clrx
	brset	7,X00CE,L002C
	ldx	#$10
	lda	X4C43,x
	sta	X0056
	lda	X4C42,x
	beq	L0041
	jsr	L2889
	bne	L002C
	ldx	X4C41,x
	jsr	L4B7F,x						;INFO: index jump
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
	brset	0,X007E,L005F
	brset	0,X000E,L07EF
	brset	6,X00B6,L0079
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
	brclr	3,X005E,L0064
	bclr	3,X005E
	rts
;
L487B:
	tst	X0098
	beq	L00B3
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
	bcs	L009C
	inca
	nega
	add	X009A
	sta	X009A
	lda	X009B
	add	X0099
	sta	X009B
	lda	X009A
	adc	X0098
	bcc	L00AF
	lda	#$FF
	sta	X009A
	clr	X0098
X48B3:
	rts
;
X48B4:
	ldx	#$AA
	jsr	L38CC
	beq	L010C
	cmp	#$05
	bhi	L010C
	tax
	decx
	bclr	6,X0081
	lda	#$12
	mul
	tax
	lda	X009A
	sta	X009C
	lda	X009B
	sta	X009D
	clr	X0056
	lda	X009A
	cmp	X4D6C,x
	bhi	L00E7
	bne	L00E1
	lda	X009B
	cmp	X4D6D,x
L48DF:
	bcc	L00E7
	inc	X0056
	incx
	incx
	bra	L00D1
;
	lda	X0056
	cmp	X0084
	bcc	L00FF
	lda	X009C
	cmp	X4DC6,x
	bhi	L00FF
	bne	L00FD
	lda	X009D
	cmp	X4DC7,x
	bcc	L00FF
	inc	X0056
	lda	X0056
	cmp	X0084
	beq	L010C
	sta	X0084
	brclr	5,X00CE,L010C
	bset	7,X005D
	rts
;
	clra
	sta	X0051
	sta	X0053
	lda	#$04
	sta	X0052
	inc	X0053
	bne	L011F
	inc	X0052
	brset	6,X0052,L0130
	bsr	L014E
	beq	L0116
	lda	X0052
	sta	X02C0,x
	lda	X0053
	sta	X02D0,x
	tstx
	bne	L0116
	lda	X0053
	add	#$FF
	sta	X0053
	bcs	L013E
	dec	X0052
	bpl	L013E
	bra	L0116
;
	bsr	L014E
	beq	L0130
	lda	X0052
	sta	X02E0,x
	lda	X0053
	sta	X02F0,x
	bra	L0130
;
	lda	#$50
	sta	X0050
	lda	X0084
	sta	X0051
	lda	X0052
	sta	X0098
	lda	X0053
	sta	X0099
	jsr	L4C7B
	dec	X0050
	bne	L0156
	jsr	L4CB4
	tax
	cmp	X0051
	rts
;
	deca
	brset	2,X003A,L0108
	neg	X007E
	bhcs	L01D0
	bcc	L0185
	bclr	7,X00F6
	bset	6,X00B3
	bset	5,X000B
	brset	0,X0000,L01DC
	sub	X4650
	asl	X0040
	bil	L0166
	bhcc	L01B6
	bls	L01B2
	bclr	7,X0040
	bset	6,X0020
	brset	0,X0000,L0206
	neg	X0052
	adc	X003F
	add	X0034,x
	bclr	2,X002B
	sbc	,x
	bne	L019E
	brn	L021A
	bclr	6,X00EC
	brset	0,X0000,L013F
	nega
	lsr	X0072,x
	deca
	brclr	1,X003A,L0142
	neg	X007D
	bhcs	L020A
	bcc	L01BF
	bclr	7,X00F6
	brset	0,X0000,L017D
	and	X0075,x
	neg	X0052
	adc	X003F
	add	X0034,x
	bclr	2,X002B
	sbc	,x
	bne	L01C4
	brn	L0240
	brset	0,X0000,L0219
	adc	X003F
	add	X0034,x
	bclr	2,X002B
	sbc	,x
	bne	L01D2
	brn	L024E
X49D2:
	bclr	6,X00EC
	bclr	5,X000B
	brset	0,X0000,L0245
	bms	L0229
	bra	L021A
;
	bcc	L0211
	rol	X002A
	nop
	bcs	L01E6
	bra	L019A
;
	bclr	6,X004C
	brset	0,X0000,L0177
	sub	#$5D
	sub	X4650
	asl	X0040
X49F2:
	bil	L01D4
	bhcc	L0224
	bls	L0220
	bclr	7,X0040
	brset	0,X0000,L01C5
	and	X0075,x
	neg	X0052
	adc	X003F
	add	X0034,x
	bclr	2,X002B
	sbc	,x
X4A08:
	bne	L020C
	brn	L0288
	brset	0,X0000,L020A
	bclr	6,X008C
	sub	#$5D
	sub	X4650
	asl	X0040
	bil	L01FA
	bhcc	L024A
	bls	L0246
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
L4A78:
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
L4AE4:
	brset	0,X0000,L02E7
	brset	0,X0000,L02EA
	brset	0,X0000,L02ED
	brset	0,X0000,L02F0
	brset	0,X0000,L02F3
L4AF3:
	brset	0,X0000,L02F6
	brset	0,X0000,L02F9
	brset	0,X0000,L02FC
L4AFC:
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
X4C43:
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
L4C73:
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
X4D6C:
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
X4DC6:
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
X51EC:
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
X54F2:
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
