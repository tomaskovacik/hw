#!/bin/bash
NLINES=`wc -l <$1`
return_ascii() {
case ${1} in
#	00)
#		echo "NUL"
#	;;
#	01)
#		echo "SOH"
#	;;
#	02)
#		echo "STX"
#	;;
#	03)
#		echo "ETX"
#	;;
#	04)
#		echo "EOT"
#	;;
#	05)
#		echo "ENQ"
#	;;
#	06)
#		echo "ACK"
#	;;
#	07)
#		echo "BEL"
#	;;
#	08)
#		echo "BS"
#	;;
#	09)
#		echo "HT"
#	;;
#	0A)
#		echo "LF"
#	;;
#	0B)
#		echo "VT"
#	;;
#	0C)
#		echo "FF"
#	;;
#	0D)
#		echo "CR"
#	;;
#	0E)
#		echo "SO"
#	;;
#	0F)
#		echo "SI"
#	;;
#	10)
#		echo "DLE"
#	;;
#	11)
#		echo "DC1"
#	;;
#	12)
#		echo "DC2"
#	;;
#	13)
#		echo "DC3"
#	;;
#	14)
#		echo "DC4"
#	;;
#	15)
#		echo "NAK"
#	;;
#	16)
#		echo "SYN"
#	;;
#	17)
#		echo "ETB"
#	;;
#	18)
#		echo "CAN"
#	;;
#	19)
#		echo "EM"
#	;;
#	1A)
#		echo "SUB"
#	;;
#	1B)
#		echo "ESC"
#	;;
#	1C)
#		echo "FS"
#	;;
#	1D)
#		echo "GS"
#	;;
#	1E)
#		echo "RS"
#	;;
#	1F)
#		echo "US"
#	;;
	20)
		#SPACE
		echo "\" \""
	;;
	21)
		echo "!"
	;;
	22)
		echo "\""
	;;
	23)
		echo "#"
	;;
	24)
		echo "$"
	;;
	25)
		echo "%"
	;;
	26)
		echo "&"
	;;
	27)
		echo "'"
	;;
	28)
		echo "("
	;;
	29)
		echo ")"
	;;
	2A)
		echo "*"
	;;
	2B)
		echo "+"
	;;
	2C)
		echo ","
	;;
	2D)
		echo "-"
	;;
	2E)
		echo "."
	;;
	2F)
		echo "/"
	;;
	30)
		echo "0"
	;;
	31)
		echo "1"
	;;
	32)
		echo "2"
	;;
	33)
		echo "3"
	;;
	34)
		echo "4"
	;;
	35)
		echo "5"
	;;
	36)
		echo "6"
	;;
	37)
		echo "7"
	;;
	38)
		echo "8"
	;;
	39)
		echo "9"
	;;
	3A)
		echo ":"
	;;
	3B)
		echo ";"
	;;
	3C)
		echo "<"
	;;
	3D)
		echo "="
	;;
	3E)
		echo ">"
	;;
	40)
		echo "@"
	;;
	41)
		echo "A"
	;;
	42)
		echo "B"
	;;
	43)
		echo "C"
	;;
	44)
		echo "D"
	;;
	45)
		echo "E"
	;;
	46)
		echo "F"
	;;
	47)
		echo "G"
	;;
	48)
		echo "H"
	;;
	49)
		echo "I"
	;;
	4A)
		echo "J"
	;;
	4B)
		echo "K"
	;;
	4C)
		echo "L"
	;;
	4D)
		echo "M"
	;;
	4E)
		echo "N"
	;;
	4F)
		echo "O"
	;;
	50)
		echo "P"
	;;
	51)
		echo "Q"
	;;
	52)
		echo "R"
	;;
	53)
		echo "S"
	;;
	54)
		echo "T"
	;;
	55)
		echo "U"
	;;
	56)
		echo "V"
	;;
	57)
		echo "W"
	;;
	58)
		echo "X"
	;;
	59)
		echo "Y"
	;;
	5A)
		echo "Z"
	;;
	5B)
		echo "["
	;;
	5C)
		echo "\\"
	;;
	5D)
		echo "]"
	;;
	5E)
		echo "^"
	;;
	5F)
		echo "_"
	;;
	60)
		echo "\`"
	;;
	61)
		echo "a"
	;;
	62)
		echo "b"
	;;
	63)
		echo "c"
	;;
	64)
		echo "d"
	;;
	65)
		echo "e"
	;;
	66)
		echo "f"
	;;
	67)
		echo "g"
	;;
	68)
		echo "h"
	;;
	69)
		echo "i"
	;;
	6A)
		echo "j"
	;;
	6B)
		echo "k"
	;;
	6C)
		echo "l"
	;;
	6D)
		echo "m"
	;;
	6E)
		echo "n"
	;;
	6F)
		echo "o"
	;;
	70)
		echo "p"
	;;
	71)
		echo "q"
	;;
	72)
		echo "r"
	;;
	73)
		echo "s"
	;;
	74)
		echo "t"
	;;
	75)
		echo "u"
	;;
	76)
		echo "v"
	;;
	71)
		echo "q"
	;;
	72)
		echo "r"
	;;
	73)
		echo "s"
	;;
	74)
		echo "t"
	;;
	75)
		echo "u"
	;;
	76)
		echo "v"
	;;
	77)
		echo "w"
	;;
	78)
		echo "x"
	;;
	79)
		echo "y"
	;;
	7A)
		echo "z"
	;;
	7B)
		echo "{"
	;;
	7C)
		echo "|"
	;;
	7D)
		echo "}"
	;;
	7E)
		echo "~"
	;;
	7F)
		echo "DEL"
	;;
	*)
		echo ${1}
	;;
esac
}

for nline in `seq 0 ${NLINES}`;
do
comment=0
param1is=0
param2is=0
param3is=0

#line of ASM
line=`head -n ${nline} $1|tail -n 1`
#line of ASM without \n
linen=`echo ${line}|sed 's/.$/\ /g'`
#first is instruction
instruction=`echo ${linen}|awk -print '{print $1}'`
#1st parameter
param1=`echo ${linen}|sed 's/^\ *//g'|cut -d\  -f 2|cut -d, -f1`
#2nd parameter
param2=`echo ${linen}|sed 's/^\ *//g'|cut -d\  -f 2|cut -d, -f2`
#3th parameter
param3=`echo ${linen}|sed 's/^\ *//g'|cut -d\  -f 2|cut -d, -f3`


#echo ${param1}
#echo ${param2}
#echo ${param3}

case ${param1} in
	\#*)
	#constant #$1234, remove #, change $ to 0x
	param1is="constant"
	param1=`echo ${param1}|sed 's/#//g'|sed 's/\\\$/0x/g'`
	;;
	\$*)
	#memory address $1234, change $ to 0x
	param1is="address"
	param1=`echo ${param1}|sed 's/\\\$/0x/g'`
	;;
	X*)
        #memory address X1234, change X to 0x
        param1is="address"
        param1=`echo ${param1}|sed 's/X/0x/g'`
	;;
	L*)
        #memory address L1234, change L to 0x
        param1is="address"
        param1=`echo ${param1}|sed 's/L/0x/g'`
	;;
	*)
	;;
esac

case ${param2} in
        \#*)
        #constant #$1234, remove #, change $ to 0x
        param2is="constant"
        param2=`echo ${param2}|sed 's/#//g'|sed 's/\\\$/0x/g'`
        ;;
        \$*)
        #memory address 0x1234, change $ to 0x
        param2is="address"
        param2=`echo ${param2}|sed 's/\\\$/0x/g'`
        ;;
        X*)
        #memory address 0x1234, change X to 0x
        param2is="address"
        param2=`echo ${param2}|sed 's/X/0x/g'`
        ;;
        L*)
        #memory address 0x1234, change L to 0x
        param2is="address"
        param2=`echo ${param2}|sed 's/L/0x/g'`
        ;;
        *)
        ;;
esac

case ${param3} in # probably only memory here (jumps, branches)
        \#*)
        #constant #$1234, remove #, change $ to 0x
        param3is="constant"
        param3=`echo ${param3}|sed 's/#//g'|sed 's/\\\$/0x/g'`
        ;;
        \$*)
        #memory address $1234, change $ to 0x
        param3is="address"
        param3=`echo ${param3}|sed 's/\\\$/0x/g'`
        ;;
        X*)
        #memory address $1234, change $ to 0x
        param3is="address"
        param3=`echo ${param3}|sed 's/X/0x/g'`
        ;;
        L*)
        #memory address $1234, change $ to 0x
        param3is="address"
        param3=`echo ${param3}|sed 's/L/0x/g'`
        ;;

        *)
        ;;
esac

#
#  main mcu in audi concert/chorus pinout
#
#pin	CHORUS/CONCERT PINNAME	MOTOROLA PINS	
#1	STAND-BY ENDST.	TCMP2	OLV2
#2	WARNTON	TCMP1	OLV1
#3	U141	PD7/AN7	
#4	NAVI	PD6/AN6	
#5	BEL	PD5/AN5	
#6	GND	NC	
#7	VRL(hard grounded)	VRL	
#8	VRH	VRH	
#9	LSL-TEST/PHOTO	PD4/AN4	
#10	VDD	VDD	
#11	LSR-TEST/PHANTOM	PD3/AN3	
#12	EIN/AUS (ON/OFF FROM PANNEL)	PD2/AN2	
#13	DIAGNOSE	PD1/AN1	
#14	S-KONT.	PD0/AN0	
#15	* (hard wire to VDD)	NC	
#16	OSC1	OSC1	
#17	OSC2	OSC2	
#18	RESET	RESET	
#19	IRQ	IRQ	
#20	DISPL.RUECKM.(LCD BACKLIGHT)	PLMA	
#21	NACHTD. (PANNEL BUTTONS BACKLIGHT)	PLMB	
#22	BEL.	TCAP1	
#23	GALA	TCAP2	
#24	CLK NF-STELLER (I2C TDA7342) SCL	PA7	
#25	DATA NF-STELLER (I2C TDA7342) SDA	PA6	
#26	DATA (SLAVE)	PA5	
#27	CLOCK (SLAVE)	PA4	
#28	STATUS (SLAVE)	PA3	
#29	CLOCK (PANNEL)	PA2	
#30	DATA (PANNEL)	PA1	
#31	STATUS (PANNEL)	PA0	
#32	CONTROL	PB7	
#33	RESET KA (RESET PANNEL MCU)	PB6	
#34	RESET SLAVE	PB5	
#35	RESET RPL (RDS)	PB4	
#36	MUTE ENDST. (MUTE POWER AMP)	PB3	
#37	U14C CDC (ENABLE CDC 12V)	PB2	
#38	U14B AKTIVLS(WOOFER)	PB1	
#39	U14A ANTENNE	PB0	
#40	VPP1	VPP1	
#41	VSS	VSS	
#42	D3-SP	PC7	
#43	D2-SP	PC6	
#44	D1-SP	PC5	
#45	D0-SP	PC4	
#46	RD-SP (MCM6688 start play/record)	PC3	
#47	WR-SP(MCM6688 stop play/record)	PC2	
#48	WATCHDOG/TEL	PC1	
#49	U8ENA	PC0	
#50	RDI RPL (RX FROM RDS)	RDI	
#51	SCLK	SCLK	
#52	TDO RPL (TX FROM RDS)	TDO	


case ${param2} in
		PortA) # Port A data (PORTA)
			case ${param1} in
				0)	
					param1="PANEL_STATUS"#PA0"
				;;

                                1)
                                        param1="PANEL_DATA"#PA1"
                                ;;

                                2)
                                        param1="PANEL_CLOCK"#PA2"
                                ;;

                                3)
                                        param1="SLAVE_STATUS"#PA3"
                                ;;

                                4)
                                        param1="SLAVE_CLOCK"#PA4"
                                ;;

                                5)
                                        param1="SLAVE_DATA"#PA5"
                                ;;

                                6)
                                        param1="SDA_TDA"#PA6"
                                ;;

                                7)
                                        param1="SCL_TDA"#PA7"
                                ;;

			esac
		;;
                PortB*) # Port B data (PORTB)
                        case ${param1} in
                                0)
                                        param1="ENA_12V_ANTENE"#PB0"
                                ;;

                                1)
                                        param1="ENA_12V_WOOFER"#PB1"
                                ;;

                                2)
                                        param1="ENA_12V_CDC"#PB2"
                                ;;

                                3)
                                        param1="MUTE_WOOFER"#PB3"
                                ;;
                                
                                4)
                                        param1="RESET_RDS"#PB4"
                                ;;

                                5)
                                        param1="RESET_SLAVE"#PB5"
                                ;;

                                6)
                                        param1="PANEL_RESET"#PB6"
                                ;;

                                7)
                                        param1="CONTROL"#PB7"
                                ;;
                        esac
                ;;
                PortC) # Port C data (PORTC)
                        case ${param1} in
                                0)
                                        param1="ENA_8V"#PC0"
                                ;;

                                1)
                                        param1="WDOG_TEL"#PC1"
                                ;;

                                2)
                                        param1="WR_SP"#PC2/ECLK"
                                ;;

                                3)
                                        param1="RD_SP"#PC3"
                                ;;
                                
                                4)
                                        param1="D0-SP"#PC4"
                                ;;

                                5)
                                        param1="D1-SP"#PC5"
                                ;;

                                6)
                                        param1="D2-SP"#PC6"
                                ;;

                                7)
                                        param1="D3-SP"#PC7"
                                ;;
                        esac
                ;;
                PortD) # Port D data (PORTD)
                        case ${param1} in
                                0)
                                        param1="S-KONT"#PD0"
                                ;;

                                1)
                                        param1="DIAG"#PD1"
                                ;;

                                2)
                                        param1="PANEL_ON_OFF"#PD2"
                                ;;

                                3)
                                        param1="LSR_TEST_PHANTOM"#PD3"
                                ;;

                                4)
                                        param1="LSL_TEST_PHANTOM"#PD4"
                                ;;

                                5)
                                        param1="BEL"#PD5"
                                ;;

                                6)
                                        param1="NAVI_IN"#PD6"
                                ;;

                                7)
                                        param1="ENA_U141"#PD7"
                                ;;
                        esac
                ;;
                DDRA) # Port A data direction (DDRA)
                        case ${param1} in
                                0)
                                        param1="PANEL_STATUS"#DDRA0"
                                ;;

                                1)
                                        param1="PANEL_DATA"#DDRA1"
                                ;;

                                2)
                                        param1="PANEL_CLOCK"#DDRA2"
                                ;;

                                3)
                                        param1="SLAVE_STATUS"#DDRA3"
                                ;;

                                4)
                                        param1="SLAVE_CLOCK"#DDRA4"
                                ;;

                                5)
                                        param1="SLAVE_DATA"#DDRA5"
                                ;;

                                6)
                                        param1="SDA_TDA"#DDRA6"
                                ;;

                                7)
                                        param1="SCL_TDA"#DDRA7"
                                ;;

                        esac
                ;;
                DDRB) # Port B data direction (DDRB)
                        case ${param1} in
                                0)
                                        param1="ENA_12V_ANTENE"#DDRB0"
                                ;;

                                1)
                                        param1="ENA_12V_WOOFER"#DDRB1"
                                ;;

                                2)
                                        param1="ENA_12V_CDC"#DDRB2"
                                ;;

                                3)
                                        param1="MUTE_WOOFER"#DDRB3"
                                ;;

                                4)
                                        param1="RESET_RDS"#DDRB4"
                                ;;

                                5)
                                        param1="RESET_SLAVE"#DDRB5"
                                ;;

                                6)
                                        param1="PANEL_RESET"#DDRB6"
                                ;;

                                7)
                                        param1="CONTROL"#DDRB7"
                                ;;
                        esac
                ;;
                DDRC) # Port C data direction (DDRC)
                        case ${param1} in
                                0)
                                        param1="ENA_8V"#DDRC0"
                                ;;

                                1)
                                        param1="WDOG_TEL"#DDRC1"
                                ;;

                                2)
                                        param1="WR_SP"#DDRC2"
                                ;;

                                3)
                                        param1="RD_SP"#DDRC3"
                                ;;

                                4)
                                        param1="D0-SP"#DDRC4"
                                ;;

                                5)
                                        param1="D1-SP"#DDRC5"
                                ;;

                                6)
                                        param1="D2-SP"#DDRC6"
                                ;;

                                7)
                                        param1="D3-SP"#DDRC7"
                                ;;
                        esac
                ;;
                EEPROM_ECLK_control) # EEPROM/ECLK control
                        case ${param1} in
                                0)
                                        param1="E1PGM"
                                ;;

                                1)
                                        param1="E1LAT"
                                ;;

                                2)
                                        param1="E1ERA"
                                ;;

                                3)
                                        param1="ECLK"
                                ;;

                                4)
                                ;;

                                5)
                                ;;

                                6)
                                ;;

                                7)
                                ;;

                        esac
                ;;
                ADDATA) # A/D data (ADDATA)
                        case ${param1} in
                                0)
                                ;;

                                1)
                                ;;

                                2)
                                ;;

                                3)
                                ;;

                                4)
                                ;;

                                5)
                                ;;

                                6)
                                ;;

                                7)
                                ;;

                        esac
                ;;
                ADSTAT) # A/D status/control (ADSTAT)
                        case ${param1} in
                                0)
                                        param1="CH0"
                                ;;

                                1)
                                        param1="CH1"
                                ;;

                                2)
                                        param1="CH2"
                                ;;

                                3)
                                        param1="CH3"
                                ;;

                                4)
                                        param1="0"
                                ;;

                                5)
                                        param1="ADON"
                                ;;

                                6)
                                        param1="ADRC"
                                ;;

                                7)
                                        param1="COCO"
                                ;;

                        esac
                ;;
                PLMA) # Pulse length modulation A (PLMA)
                        case ${param1} in
                                0)
                                ;;

                                1)
                                ;;

                                2)
                                ;;

                                3)
                                ;;

                                4)
                                ;;

                                5)
                                ;;

                                6)
                                ;;

                                7)
                                ;;

                        esac
                ;;
                PLMB) # Pulse length modulation B (PLMB)
                        case ${param1} in
                                0)
                                ;;

                                1)
                                ;;

                                2)
                                ;;

                                3)
                                ;;

                                4)
                                ;;

                                5)
                                ;;

                                6)
                                ;;

                                7)
                                ;;

                        esac
                ;;
                Miscell) # Miscellaneous
                        case ${param1} in
                                0)
                                        param1="WDOG"
                                ;;

                                1)
                                        param1="SM"
                                ;;

                                2)
                                        param1="SFB"
                                ;;

                                3)
                                        param1="SFA"
                                ;;

                                4)
                                        param1="INTE"
                                ;;

                                5)
                                        param1="INTN"
                                ;;

                                6)
                                        param1="INTP"
                                ;;

                                7)
                                        param1="POR"
                                ;;

                        esac
                ;;
                BAUD) # SCI baud rate (BAUD)
                        case ${param1} in
                                0)
                                        param1="SCR0"
                                ;;

                                1)
                                        param1="SCR1"
                                ;;

                                2)
                                        param1="SCR2"
                                ;;

                                3)
                                        param1="SCT0"
                                ;;

                                4)
                                        param1="SCT0"
                                ;;

                                5)
                                        param1="SCT1"
                                ;;

                                6)
                                        param1="SPC0"
                                ;;

                                7)
                                        param1="SPC1"
                                ;;

                        esac
                ;;
                SCCR1) # SCI control 1 (SCCR1)
                        case ${param1} in
                                0)
                                        param1="LBCL"
                                ;;

                                1)
                                        param1="CPHA"
                                ;;

                                2)
                                        param1="CPOL"
                                ;;

                                3)
                                        param1="WAKE"
                                ;;

                                4)
                                        param1="M"
                                ;;

                                5)
                                        
                                ;;

                                6)
                                        param1="T8"
                                ;;

                                7)
                                        param1="R8"
                                ;;

                        esac
                ;;
                SCCR2) # SCI control 2 (SCCR2)
                        case ${param1} in
                                0)
                                        param1="SBK"
                                ;;

                                1)
                                        param1="RWU"
                                ;;

                                2)
                                        param1="RE"
                                ;;

                                3)
                                        param1="TE"
                                ;;

                                4)
                                        param1="ILIE"
                                ;;

                                5)
                                        param1="RIE"
                                ;;

                                6)
                                        param1="TCIE"
                                ;;

                                7)
                                        param1="TIE"
                                ;;
                        esac
                ;;
		SCSR) # SCI status (SCSR)
                        case ${param1} in
                                0)
                                        
                                ;;

                                1)
                                        param1="FE"
                                ;;

                                2)
                                        param1="NF"
                                ;;

                                3)
                                        param1="OR"
                                ;;

                                4)
                                        param1="IDLE"
                                ;;

                                5)
                                        param1="RDRF"
                                ;;

                                6)
                                        param1="TC"
                                ;;

                                7)
                                        param1="TDRE"
                                ;;

                        esac
		;;
                SCDR) # SCI data (SCDR)
                        case ${param1} in
                                0)
                                ;;

                                1)
                                ;;

                                2)
                                ;;

                                3)
                                ;;

                                4)
                                ;;

                                5)
                                ;;

                                6)
                                ;;

                                7)
                                ;;

                        esac
                ;;
                TCR) # Timer control (TCR)
                        case ${param1} in
                                0)
                                        param1="OLVL1"
                                ;;

                                1)
                                        param1="IEDG1"
                                ;;

                                2)
                                        param1="OLV2"
                                ;;

                                3)
                                        param1="FOLV1"
                                ;;

                                4)
                                        param1="FOLV2"
                                ;;

                                5)
                                        param1="TOIE"
                                ;;

                                6)
                                        param1="OCIE"
                                ;;

                                7)
                                        param1="ICIE"
                                ;;

                        esac
                ;;
                TSR) # Timer status (TSR)
                        case ${param1} in
                                0)
                                ;;

                                1)
                                ;;

                                2)
                                ;;

                                3)
                                        param1="OCF2"
                                ;;

                                4)
                                        param1="ICF2"
                                ;;

                                5)
                                        param1="TOF"
                                ;;

                                6)
                                        param1="OCF1"
                                ;;

                                7)
                                        param1="ICF1"
                                ;;

                        esac
                ;;
                ICH1) # Input capture high 1
                        case ${param1} in
                                0)
                                ;;

                                1)
                                ;;

                                2)
                                ;;

                                3)
                                ;;

                                4)
                                ;;

                                5)
                                ;;

                                6)
                                ;;

                                7)
                                ;;

                        esac
                ;;
                ICL1) # Input capture low 1
                        case ${param1} in
                                0)
                                ;;

                                1)
                                ;;

                                2)
                                ;;

                                3)
                                ;;

                                4)
                                ;;

                                5)
                                ;;

                                6)
                                ;;

                                7)
                                ;;

                        esac
                ;;
                OCH1) # Output compare high 1
                        case ${param1} in
                                0)
                                ;;

                                1)
                                ;;

                                2)
                                ;;

                                3)
                                ;;

                                4)
                                ;;

                                5)
                                ;;

                                6)
                                ;;

                                7)
                                ;;

                        esac
                ;;
                OCL1) # Output compare low 1
                        case ${param1} in
                                0)
                                ;;

                                1)
                                ;;

                                2)
                                ;;

                                3)
                                ;;

                                4)
                                ;;

                                5)
                                ;;

                                6)
                                ;;

                                7)
                                ;;

                        esac
                ;;
                TCH) # Timer counter high
                        case ${param1} in
                                0)
                                ;;

                                1)
                                ;;

                                2)
                                ;;

                                3)
                                ;;

                                4)
                                ;;

                                5)
                                ;;

                                6)
                                ;;

                                7)
                                ;;

                        esac
                ;;
                TCL) # Timer counter low
                        case ${param1} in
                                0)
                                ;;

                                1)
                                ;;

                                2)
                                ;;

                                3)
                                ;;

                                4)
                                ;;

                                5)
                                ;;

                                6)
                                ;;

                                7)
                                ;;

                        esac
                ;;
                ACH) # Alternate counter high
                        case ${param1} in
                                0)
                                ;;

                                1)
                                ;;

                                2)
                                ;;

                                3)
                                ;;

                                4)
                                ;;

                                5)
                                ;;

                                6)
                                ;;

                                7)
                                ;;

                        esac
                ;;
                ACL) # Alternate counter low
                        case ${param1} in
                                0)
                                ;;

                                1)
                                ;;

                                2)
                                ;;

                                3)
                                ;;

                                4)
                                ;;

                                5)
                                ;;

                                6)
                                ;;

                                7)
                                ;;

                        esac
                ;;
                ICH2) # Input capture high 2
                        case ${param1} in
                                0)
                                ;;

                                1)
                                ;;

                                2)
                                ;;

                                3)
                                ;;

                                4)
                                ;;

                                5)
                                ;;

                                6)
                                ;;

                                7)
                                ;;

                        esac
                ;;
                ICL2) #Input capture low 2
                        case ${param1} in
                                0)
                                ;;

                                1)
                                ;;

                                2)
                                ;;

                                3)
                                ;;

                                4)
                                ;;

                                5)
                                ;;

                                6)
                                ;;

                                7)
                                ;;

                        esac
                ;;
                OCH2) #Output compare high 2
                        case ${param1} in
                                0)
                                ;;

                                1)
                                ;;

                                2)
                                ;;

                                3)
                                ;;

                                4)
                                ;;

                                5)
                                ;;

                                6)
                                ;;

                                7)
                                ;;

                        esac
                ;;
                OCL2) #Output compare low 2
                        case ${param1} in
                                0)
                                ;;

                                1)
                                ;;

                                2)
                                ;;

                                3)
                                ;;

                                4)
                                ;;

                                5)
                                ;;

                                6)
                                ;;

                                7)
                                ;;

                        esac
                ;;
                OPTR) #Options (OPTR)
                        case ${param1} in
                                0)
                                        param1="SEC"
                                ;;

                                1)
                                        param1="EE1P"
                                ;;

                                2)
                                ;;

                                3)
                                ;;

                                4)
                                ;;

                                5)
                                ;;

                                6)
                                ;;

                                7)
                                ;;

                        esac
                ;;
                MOR) #Mask option register (MOR)
                        case ${param1} in
                                0)
                                        param1="PCPD"
                                ;;

                                1)
                                        param1="PBPD"
                                ;;

                                2)
                                        param1="WWAT"
                                ;;

                                3)
                                        param1="RWAT"
                                ;;

                                4)
                                        param1="RTIM"
                                ;;

                                5)
                                ;;

                                6)
                                ;;

                                7)
                                ;;

                        esac
                ;;
	esac
	

case ${instruction} in 
	ADC*|adc*)
#		
#		
		case ${param1is} in
			constant)
				comment="A + ${param1} + CARRY, A ← (A) + ${param1} + (C) "
			;;
			address)
				comment="A + data at memory ${param1} with CARRY, A ← (A) + (${param1}) + (C) "
			;;
			*)
				comment="ADD with CARRY, A ← (A) + (${param1}) + (C) "
			;;
		esac
	;;
	AND*|add*)
#		
#		
                case ${param1is} in
                        constant)
                        	comment="A + ${param1} (without CARRY), A ← (A) + ${param1}"
                        ;;
                        address)
                        	comment="A + data at memory ${param1} without CARRY, A ← (A) + (${param1})"
                        ;;
                        *)
				comment="Add without Carry, A ← (A) + (${param1})"
			;;
		esac
	;;
	and*|AND*)
                case ${param1is} in
                        constant)
                        	comment="Logical AND between A and constant ${param1}, A ← (A) && (${param1})"
                        ;;
                        address)
                        	comment="Logical AND between A and data at memory ${param1}, A ← (A) && (${param1})"
                        ;;
                        *)
				comment="Logical AND, A ← (A) && (${param1})"
			;;
		esac
	;;
	asl*|ASL*)
                case ${param1is} in
                        constant)
				comment="Arighmetic Shift Left (Same as LSL) of ${param1}, C <- [b7 <<<< b0] <- 0, after shift: $((1<<${param1}))"
                        ;;
                        address)
				comment="Arighmetic Shift Left (Same as LSL) of data at memory ${param1}, C <- [b7 <<<< b0] <- 0"
                        ;;
                        *)
				comment="Arighmetic Shift Left (Same as LSL), C <- [b7 <<<< b0] <- 0"
                        ;;
                esac

	;;
        asla*|ASLA*)f
                	comment="Arighmetic Shift Left of accumualator (Same as LSL), C <- [b7 <<<< b0] <- 0"
        ;;
        aslx*|ASLX*)
                	comment="Arighmetic Shift Left of Index Register (Same as LSL), C <- [b7 <<<< b0] <- 0"
        ;;

	ASR*|asr*)
                case ${param1is} in
                        constant)
				comment="Arithmetic Shift Right of ${param1} = $((${param1}>>1)), b7 -> [b7 >>>> b0] -> C"
                        ;;
                        address)
				comment="Arithmetic Shift Right of data at memory ${param1}, b7 -> [b7 >>>> b0] -> C"
                        ;;
                        *)
				comment="Arithmetic Shift Right ${param1}, b7 -> [b7 >>>> b0] -> C"
                        ;;
                esac

	;;
	ASRA*|asra*)
		comment="Arithmetic Shift Right of accumulator, b7 -> [b7 >>>> b0] -> C"
	;;
	ASRX*|asrx*)
		comment="Arithmetic Shift Right of Index Register, b7 -> [b7 >>>> b0] -> C"
	;;
	BCC*|bcc*)
		comment="Branch to ${param1} if C bit is cleared "
	;;
	BCLR*|bclr*)
                case ${param2} in
                DDR*)
	                comment="Set ${param1} as INPUT"
                ;;
		Port*)
			comment="Set ${param1} LOW"
		;;
                *)
			comment="Clear bit ${param1} at ${param2}"
		;;
		esac
	;;
	BCS*|bcs*)
		comment="Branch to ${param1} if C = 1"
	;;
	BEQ*|beq*)
		comment="Branch to ${param3} if Equal Z=1"
	;;
	BHCC*|bhcc*)
		comment="Branch to ${param3} if half carry bit Clear H=0"
	;;
	BHCS*|bhcs*)
		comment="Branch to ${param3} if Half-Carry Bit is Set, H=1"
	;;
	BHI*|bhi*)
		comment="Branch to ${param3} if Higher C v Z = 0"
	;;
	BHS*|bhs*)
		comment="Branch to ${param3} if Higher or Same C =0"
	;;
	BIH*|bih*)
		comment="Branch to ${param3} if IRQ Pin High IRQ=1"
	;;
	BIL*|bil*)
		comment="Branch to ${param3} if IRQ Pin Low IRQ=0"
	;;
	BIT*|bit*)
		comment="Bit Test Accumulator with Memory Byte (A) ∧ (${param1})"
	;;
	BLO*|blo*)
		comment="Branch to ${param3} if Lower (Same as BCS) C=1"
	;;
	BLS*|bls*)
		comment="Branch to ${param3} if Lower or Same C v Z = 1"
	;;
	BMC*|bmc*)
		comment="Branch to ${param3} if Interrupt Mask Clear I=0"
	;;
	BMI*|bmi*)
		comment="Branch to ${param3} if Minus N = 1"
	;;
	BMS*|bms*)
		comment="Branch to ${param3} if Interrupt Mask Set (I=1)"
	;;
	BNE*|bne*)
		
		
		comment="Branch to ${param3} if Not Equal (Z = 0);"
	;;
	BPL*|bpl*)
		
		
		comment="Branch to ${param3} if Plus N = 0"
	;;
	BRA*|bra*)
		
		
		comment="Branch Always (1 = 1)"
	;;
	BRCLR*|brclr*)
		
		
                case ${param2} in
                DDR*)
			comment="Branch to ${param3} if ${param1} is set to INPUT"
		;;
		Port*)
			comment="Branch to ${param3} if ${param1} is LOW"
		;;
		*)
			comment="Branch to ${param3} if Bit ${param1} Clear (Mn = 0)"
		;;
		esac
	;;
	BRN*|brn*)
		
		
		comment="Branch Never (1 = 0)"
	;;
	BRSET*|brset*)
		case ${param2} in
		DDR*)
			comment="Branch to ${param3} if ${param1} is set to OUTPUT"
		;;
		Port*)
			comment="Branch to ${param3} if ${param1} is HIGH"
		;;
		*)
			comment="Branch to ${param3} if Bit ${param1} is set at ${param2} (Mn=1)"
		;;
		esac
	;;
	BSET*|bset*)
		case ${param2} in
		DDR*)
			comment="Set ${param1} as OUTPUT"
		;;
		Port*)
			comment="Set ${param1} HIGH"
		;;	
		*)
			comment="Set Bit ${param1} at memory ${param2} (Mn <- 1 )"
		;;
		esac
	;;
	BSR*|bsr*)
		
		
		comment="Branch to Subroutine at ${param1}"
	;;
	CLC*|clc*)
		
		
		comment="Clear Carry Bit (C <- 0)"
	;;
	CLI*|cli*)
		
		
		comment="Clear Interrupt Mask (I <- 0)"
	;;
	CLR*|clr*)
		
		
		comment="Clear byte at ${param1} <- 0x00"
	;;
	CLRA*|clra*)
		
		
		comment="Clear byte Accumulator, A <- 0x00"
	;;
	CLRX*|clrx*)
		
		
		comment="Clear Index Register, X <- 0x00"
	;;
	CMP*|cmp*)
		
		
		comment="Compare Accumulator with Memory Byte, (A) - (${param1})"
	;;
	COM*|com*)
		
		
		comment="Complement Byte (One’s Complement), 0xFF - ${param1}"
	;;
	COMA*|coma*)
		
		
		comment="Complement Accumulator (One’s Complement), 0xFF - A"
	;;
	COMX*|comx*)
		
		
		comment="Complement Index register (One’s Complement), 0xFF - X"
	;;
	CPX*|cmx*)
		
		
		comment="Compare Index Register with Memory Byte at ${param1} (X) - (M)"
	;;
	DEC*|dec*)
		
		
		comment="Decrement Byte at ${param1} Byte = Byte - 1"
	;;
	EOR*|eor*)
		
		
		comment="\"EXCLUSIVE OR\" Accumulator with Memory Byte, (A) X (${param1})"
	;;
	INC*|inc*)
		
		
		comment="Increment Byte ${param1}, Byte = Byte + 1"
	;;
	JMP*|jmp*)
		
		
		comment="Unconditional Jump to ${param1}"
	;;
	JSR*|jsr*)
		
		
		comment="Jump to Subroutine at ${param1}"
	;;
	LDA*|lda*)
		
		
		case "${param1is}" in 
			constant)
				comment="Load Accumulator with ${param1}, A <- ${param1}"
			;;
			address)
				comment="Load Accumulator with data from  memory at ${param1}, A <- (${param1})"
			;;
			*)
				comment="Load Accumulator with value of Memory at ${param1}, A <- (${param1})"
			;;
		esac
	;;
	LDX*|ldx*)
		
		
		comment="Load Index Register with Memory Byte, X <- (${param1})"
	;;
	LSL*|lsl*)
		
		
		comment="Logical Shift Left of ${param1} (Same as ASL), C <- [b7 <<<< b0] <- 0"
	;;
        LSLA*|lsla*)
		
		
                comment="Logical Shift Left Accumulator (Same as ASL), C <- [b7 <<<< b0] <- 0"
        ;;
        LSLX*|lslx*)
		
		
                comment="Logical Shift Left Index register (Same as ASL), C <- [b7 <<<< b0] <- 0"
        ;;
        LSR*|lsr*)
		
		
                comment="Logical Shift Right of ${param1}, b7 -> [b7 >>>> b0] -> C"
        ;;
        LSRA*|lsra*)
		
		
                comment="Logical Shift Left of Accumulator (Same as ASL), b7 -> [b7 >>>> b0] -> C"
        ;;
        LSRX*|lsrx*)
		
		
                comment="Logical Shift Left of Index register (Same as ASL),  b7 -> [b7 >>>> b0] -> C"
        ;;
	MUL*|mul*)
		
		
		comment="Unsigned Multiply, X:A <- (X) * (A)"
	;;
	NEG*|neg*)
		
		
		comment="Negate Byte of ${param1} (Two’s Complement), ${param1} = 0x00 - (${param1})"
	;;
        NEGA*|nega*)
		
		
                comment="Negate Byte of Accumulator (Two’s Complement), A = 0x00 - (A)"
        ;;
        NEGX*|negx*)
		
		
                comment="Negate Byte of Index register(Two’s Complement), X = 0x00 - (X)"
        ;;
	NOP*|nop*)
		
		
		comment="No Operation"
	;;
	ORA*|ora*)
		
		
		comment="Logical OR Accumulator with Memory at ${param1}, A <- (A) || (${param1})"
	;;
	ROL*|rol*)
		
		
		comment="Rotate Byte at ${param1} Left through Carry Bit, C <- [b7 <<<< b0] <- C"
	;;
        ROLA*|rola*)
		
		
                comment="Rotate Accumulator Left through Carry Bit, C <- [b7 <<<< b0] <- C"
        ;;
        ROLX*|rolx*)
		
		
                comment="Rotate Index Register Left through Carry Bit, C <- [b7 <<<< b0] <- C"
        ;;
	ROR*|ror*)
		
		
		comment="Rotate Byte at ${param1} Right through Carry Bit, C -> [b7 >>>> b0] -> C"
	;;
        RORA*|rora*)
		
		
                comment="Rotate Accumulator Right through Carry Bit, C -> [b7 >>>> b0] -> C"
        ;;
        RORX*|rorx*)
		
		
                comment="Rotate Index Register Right through Carry Bit, C -> [b7 >>>> b0] -> C"
        ;;
	rsp*|RSP*)
		
		
		comment="Reset Stack Pointer, SP <- 0x00FF"
	;;
	RTI*|rti*)
		
		
		comment="Return from Interrupt"
	;;
	RTS*|rts*)
		
		
		comment="Return from Subroutine"
	;;
	SBC*|sbc*)
		
		
		comment="Subtract Memory Byte ${param1} and Carry Bit from Accumulator, A ←  (A) – (${param1}) – (C)"
	;;
	SEC*|sec*)
		
		
		comment="Set Carry Bit , C ← 1"
	;;
	SEI*|sei*)
		
		
		comment="Set Interrupt Mask, I ← 1);"
	;;
	STA*|sta*)
		
		
		comment="Store Accumulator in Memory at ${param1}"
	;;
	STOP*|stop*)
		
		
		comment="Stop Oscillator and Enable IRQ Pin"
	;;
	STX*|stx*)
		
		
		comment="Store Index Register In Memory at ${param1}"
	;;
	SUB*|sub*)
		
		
		comment="Subtract Memory Byte from Accumulator , A ← (A) – (${param1})"
	;;
	SWI*|awi*)
		
		
		comment="Software Interrupt"
	;;
	TAX*|tax*)
		
		
		comment="Transfer Accumulator to Index Register, X ← (A))"
	;;
	TST*|tst*)
		
		
		comment="Test Memory Byte for Negative or Zero, (${param1}) – 0x00"
	;;
        TSTA*|tsta*)
		
		
                comment="Test Accumulator for Negative or Zero, (${param1}) – 0x00"
        ;;
        TSTX*|tstx*)
		
		
                comment="Test Index Register for Negative or Zero, (${param1}) – 0x00"
        ;;
	TXA*|txa*)
		comment="Transfer Index Register to Accumulator, A ← (X)"
	;;
	WAIT*|wait*)
		comment="Stop CPU Clock and Enable Interrupts"
	;;
	fcb*|FCB*)
		comment="Form Constant Byte ${param1}"
	;;
        fdb*|FDB*)
                comment="Form Double Byte ${param1}"
        ;;
	rmb*|RMB*)
		comment="Reserve Memory Byte ${param1}"
	;;
	db*)
		comment="data?"
		all_data=`echo ${linen}|sed 's/\\\$//g'|sed 's/,//g'`
		data1=`echo ${all_data}|awk '{print $2}'`
		data1=`return_ascii ${data1}`;
		data2=`echo ${all_data}|awk '{print $3}'`
		data2=`return_ascii ${data2}`;
		data3=`echo ${all_data}|awk '{print $4}'`
		data3=`return_ascii ${data3}`;
		data4=`echo ${all_data}|awk '{print $5}'`
		data4=`return_ascii ${data4}`;
		comment=${comment}" "${data1}
		if [ "${data2}" != "" ] ; then comment=${comment}", "${data2}; fi
		if [ "${data3}" != "" ] ; then comment=${comment}", "${data3}; fi
		if [ "${data4}" != "" ] ; then comment=${comment}", "${data4}; fi
	;;
esac

if [ "${comment}" != "0" ]
then
printf "          %-30s; %-40s\n" "${linen}" "$comment"
else
printf "%s\n" "${linen}"
fi

done
