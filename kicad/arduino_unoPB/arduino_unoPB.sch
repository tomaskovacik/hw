EESchema Schematic File Version 4
LIBS:arduino_unoPB-cache
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "arduino uno compatible with 328PB chip"
Date "2019-01-16"
Rev "2"
Comp "kovo"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:CP C13
U 1 1 5E234C58
P 11750 3100
F 0 "C13" H 11868 3146 50  0000 L CNN
F 1 "10u/35V" H 11868 3055 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD.pretty:TantalC_SizeD_EIA-7343_Wave" H 11788 2950 50  0001 C CNN
F 3 "~" H 11750 3100 50  0001 C CNN
	1    11750 3100
	1    0    0    -1  
$EndComp
Text Notes 6250 4050 0    118  ~ 0
328p/328pb switch
Text Label 7600 2900 1    50   ~ 0
MEGA6
$Comp
L arduino_unoPB-rescue:+5V-power1-arduino_atmega328PB-rescue #PWR0137
U 1 1 5C66C74F
P 7850 2650
F 0 "#PWR0137" H 7850 2740 20  0001 C CNN
F 1 "+5V" H 7850 2740 30  0000 C CNN
F 2 "" H 7850 2650 60  0001 C CNN
F 3 "" H 7850 2650 60  0001 C CNN
	1    7850 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	7850 2650 7850 2350
Text Label 7350 2750 1    50   ~ 0
D24
Wire Wire Line
	7350 2350 7350 2500
Wire Wire Line
	7600 2500 7600 2900
$Comp
L Jumper:Jumper_3_Open JP5
U 1 1 5D2C48C6
P 7600 2350
F 0 "JP5" H 7600 2574 50  0000 C CNN
F 1 "Jumper_3_Open" H 7600 2483 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 7600 2350 50  0001 C CNN
F 3 "~" H 7600 2350 50  0001 C CNN
	1    7600 2350
	1    0    0    -1  
$EndComp
Text Label 6500 2500 0    60   ~ 0
A5
Wire Wire Line
	6500 2500 6950 2500
$Comp
L Device:Jumper_NO_Small JP1
U 1 1 5D6DC099
P 7050 2500
F 0 "JP1" H 7050 2685 50  0000 C CNN
F 1 "Jumper_NO_Small" H 7050 2594 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 7050 2500 50  0001 C CNN
F 3 "~" H 7050 2500 50  0001 C CNN
	1    7050 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2500 7350 2500
Connection ~ 7350 2500
Wire Wire Line
	7350 2500 7350 2750
Wire Notes Line
	5850 4150 16000 4150
Text Notes 6900 1750 0    197  ~ 0
ICSP
Connection ~ 8700 6450
Wire Wire Line
	8400 6450 8700 6450
Text Notes 8450 6150 0    197  ~ 0
MCU oscilator
Wire Notes Line
	11800 5800 11800 9950
Wire Notes Line
	500  5800 11800 5800
Text Notes 3050 5250 0    197  ~ 0
MCU
Wire Notes Line
	5850 500  5850 5800
Wire Notes Line
	5850 2000 8550 2000
Text Notes 1200 8300 0    197  ~ 0
USB to serial
Text Notes 2350 7550 0    79   ~ 0
USB coneector(B and 2 types of mini , use only one)
Wire Notes Line
	500  7950 7050 7950
Wire Notes Line
	4700 7950 4700 11200
Text Notes 5250 10900 0    79   ~ 0
5V serial input/output
Text Notes 5450 9050 0    79   ~ 0
Aditional pins
Wire Notes Line
	7050 9200 4700 9200
Wire Notes Line
	8550 4150 8550 500 
Wire Notes Line
	7050 7650 11800 7650
Wire Notes Line
	9550 7650 9550 11200
Wire Notes Line
	7050 11200 7050 5800
Text Label 10200 8300 0    197  ~ 0
RESET
Text Label 7800 8750 0    197  ~ 0
LEDS
$Comp
L arduino_unoPB-rescue:GNDPWR-power #PWR09
U 1 1 5D05925D
P 3050 7150
F 0 "#PWR09" H 3050 6950 50  0001 C CNN
F 1 "GNDPWR" H 3050 7000 50  0000 C CNN
F 2 "" H 3050 7100 50  0001 C CNN
F 3 "" H 3050 7100 50  0001 C CNN
	1    3050 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 7000 1800 7150
Wire Wire Line
	1950 7000 1800 7000
Connection ~ 2400 7000
Wire Wire Line
	2250 7000 2400 7000
$Comp
L Device:L L1
U 1 1 5CF48A5E
P 2100 7000
F 0 "L1" V 2290 7000 50  0000 C CNN
F 1 "30Ohm bead" V 2199 7000 50  0000 C CNN
F 2 "Choke_SMD.pretty:Choke_SMD_1206_Standard" H 2100 7000 50  0001 C CNN
F 3 "~" H 2100 7000 50  0001 C CNN
	1    2100 7000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 7000 4900 7000
Connection ~ 4800 7000
Wire Wire Line
	4800 6850 4800 7000
Wire Wire Line
	4900 6850 4900 7000
Connection ~ 3600 7000
Wire Wire Line
	3600 7000 4800 7000
Wire Wire Line
	3050 7000 3500 7000
Connection ~ 3050 7000
Connection ~ 3500 7000
Connection ~ 2500 7000
Wire Wire Line
	2500 7000 3050 7000
Wire Wire Line
	3500 7000 3600 7000
Wire Wire Line
	2400 7000 2500 7000
Wire Wire Line
	4050 6700 4300 6700
Connection ~ 4050 6700
Wire Wire Line
	4050 7200 4050 6700
Wire Wire Line
	5600 7200 4050 7200
Wire Wire Line
	3900 6700 4050 6700
$Comp
L arduino_unoPB-rescue:USB_B_Micro-Connector_Specialized J3
U 1 1 5CAA3CB4
P 4900 6450
F 0 "J3" H 4957 6917 50  0000 C CNN
F 1 "USB_B_Micro" H 4957 6826 50  0000 C CNN
F 2 "ab2_usb.mod:AB2_USB_MICRO_SMD" H 5050 6400 50  0001 C CNN
F 3 "~" H 5050 6400 50  0001 C CNN
	1    4900 6450
	1    0    0    -1  
$EndComp
$Comp
L arduino_unoPB-rescue:USB_B_Micro-Connector_Specialized J2
U 1 1 5CAA269F
P 3600 6500
F 0 "J2" H 3657 6967 50  0000 C CNN
F 1 "USB_B_Micro" H 3657 6876 50  0000 C CNN
F 2 "Connect.pretty:USB_Micro-B" H 3750 6450 50  0001 C CNN
F 3 "~" H 3750 6450 50  0001 C CNN
	1    3600 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 6650 5600 7200
Text Label 5600 6550 2    50   ~ 0
D-
Text Label 5600 6450 2    50   ~ 0
D+
Text Label 5600 6250 2    50   ~ 0
VBUS
Wire Wire Line
	5200 6650 5600 6650
Wire Wire Line
	5200 6550 5600 6550
Wire Wire Line
	5200 6450 5600 6450
Wire Wire Line
	5200 6250 5600 6250
Text Label 3200 6600 2    50   ~ 0
D-
Text Label 4300 6600 2    50   ~ 0
D-
Text Label 4300 6500 2    50   ~ 0
D+
Text Label 3200 6500 2    50   ~ 0
D+
Text Label 4300 6300 2    50   ~ 0
VBUS
Text Label 3200 6300 2    50   ~ 0
VBUS
Wire Wire Line
	3050 7150 3050 7000
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0125
U 1 1 5C8A8D6B
P 1800 7150
F 0 "#PWR0125" H 1800 7150 30  0001 C CNN
F 1 "GND" H 1800 7080 30  0001 C CNN
F 2 "" H 1800 7150 60  0001 C CNN
F 3 "" H 1800 7150 60  0001 C CNN
	1    1800 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 7000 3600 6900
Wire Wire Line
	3500 6900 3500 7000
Wire Wire Line
	2500 7000 2500 6900
Wire Wire Line
	2400 6900 2400 7000
$Comp
L arduino_unoPB-rescue:CONN_1x1-Connectors P20
U 1 1 5C86537E
P 4500 6700
F 0 "P20" H 4600 6600 60  0000 R CNN
F 1 "CONN_1x1" H 4900 6850 60  0000 R CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_1x01" H 4500 6750 60  0001 C CNN
F 3 "" H 4500 6750 60  0000 C CNN
	1    4500 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 6600 4300 6600
Wire Wire Line
	3900 6500 4300 6500
Wire Wire Line
	3900 6300 4300 6300
Wire Wire Line
	2800 6600 3200 6600
Wire Wire Line
	2800 6500 3200 6500
Wire Wire Line
	2800 6300 3200 6300
$Comp
L arduino_unoPB-rescue:USB_B-Connector_Specialized J1
U 1 1 5C7D1067
P 2500 6500
F 0 "J1" H 2557 6967 50  0000 C CNN
F 1 "USB_B" H 2557 6876 50  0000 C CNN
F 2 "Connect.pretty:USB_B" H 2650 6450 50  0001 C CNN
F 3 "" H 2650 6450 50  0001 C CNN
	1    2500 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 3150 10850 3150
Wire Wire Line
	11050 3000 11050 3150
Wire Wire Line
	10550 3150 10400 3150
$Comp
L Device:D_Schottky D7
U 1 1 5CFE3369
P 10700 3150
F 0 "D7" H 10850 3050 50  0000 R CNN
F 1 "MBR120" H 10850 3250 50  0000 R CNN
F 2 "Diodes_SMD.pretty:SOD-123" H 10700 3150 50  0001 C CNN
F 3 "~" H 10700 3150 50  0001 C CNN
	1    10700 3150
	-1   0    0    1   
$EndComp
$Comp
L arduino_unoPB-rescue:+5V-power1-arduino_atmega328PB-rescue #PWR07
U 1 1 5CFE2B31
P 11050 3000
F 0 "#PWR07" H 11050 3090 20  0001 C CNN
F 1 "+5V" H 11050 3090 30  0000 C CNN
F 2 "" H 11050 3000 60  0001 C CNN
F 3 "" H 11050 3000 60  0001 C CNN
	1    11050 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5CFE0C1B
P 10250 3150
F 0 "F1" V 10053 3150 50  0000 C CNN
F 1 "16V/0.5A " V 10144 3150 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD1206_Wave" V 10180 3150 50  0001 C CNN
F 3 "~" H 10250 3150 50  0001 C CNN
	1    10250 3150
	0    1    1    0   
$EndComp
Text Label 9700 3150 0    50   ~ 0
VBUS
Wire Wire Line
	10100 3150 9700 3150
Wire Wire Line
	7550 9250 7550 9350
Wire Wire Line
	10700 10650 10700 10550
Connection ~ 10700 9850
Wire Wire Line
	10700 9200 10700 9300
Wire Wire Line
	10700 9800 10700 9850
Wire Wire Line
	8100 9350 8100 9150
Wire Wire Line
	8100 9150 7850 9150
$Comp
L arduino_unoPB-rescue:+5V-power1-arduino_atmega328PB-rescue #PWR0105
U 1 1 53318048
P 7550 9250
F 0 "#PWR0105" H 7550 9340 20  0001 C CNN
F 1 "+5V" H 7550 9340 30  0000 C CNN
F 2 "" H 7550 9250 60  0001 C CNN
F 3 "" H 7550 9250 60  0001 C CNN
	1    7550 9250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 53318026
P 7550 10200
F 0 "D1" H 7750 10250 50  0000 C CNN
F 1 "GLED" H 7500 10050 50  0000 C CNN
F 2 "LEDs.pretty:LED-1206" H 7550 10200 60  0001 C CNN
F 3 "" H 7550 10200 60  0001 C CNN
	1    7550 10200
	0    -1   -1   0   
$EndComp
$Comp
L arduino_unoPB-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue R1
U 1 1 53318025
P 7550 9600
F 0 "R1" V 7550 9600 50  0000 C CNN
F 1 "1k" V 7600 9800 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 7550 9600 60  0001 C CNN
F 3 "" H 7550 9600 60  0001 C CNN
	1    7550 9600
	1    0    0    -1  
$EndComp
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0106
U 1 1 53318024
P 7550 10700
F 0 "#PWR0106" H 7550 10700 30  0001 C CNN
F 1 "GND" H 7550 10630 30  0001 C CNN
F 2 "" H 7550 10700 60  0001 C CNN
F 3 "" H 7550 10700 60  0001 C CNN
	1    7550 10700
	1    0    0    -1  
$EndComp
Text Label 7850 9150 0    60   ~ 0
SCK
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0107
U 1 1 53317FD6
P 8100 10700
F 0 "#PWR0107" H 8100 10700 30  0001 C CNN
F 1 "GND" H 8100 10630 30  0001 C CNN
F 2 "" H 8100 10700 60  0001 C CNN
F 3 "" H 8100 10700 60  0001 C CNN
	1    8100 10700
	1    0    0    -1  
$EndComp
$Comp
L arduino_unoPB-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue R5
U 1 1 53317FCD
P 8100 9600
F 0 "R5" V 8100 9600 50  0000 C CNN
F 1 "1k" V 8150 9800 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 8100 9600 60  0001 C CNN
F 3 "" H 8100 9600 60  0001 C CNN
	1    8100 9600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 53317FC2
P 8100 10200
F 0 "D2" H 8300 10250 50  0000 C CNN
F 1 "RLED" H 7950 10050 50  0000 C CNN
F 2 "LEDs.pretty:LED-1206" H 8100 10200 60  0001 C CNN
F 3 "" H 8100 10200 60  0001 C CNN
	1    8100 10200
	0    -1   -1   0   
$EndComp
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0113
U 1 1 53316F0E
P 10700 10650
F 0 "#PWR0113" H 10700 10650 30  0001 C CNN
F 1 "GND" H 10700 10580 30  0001 C CNN
F 2 "" H 10700 10650 60  0001 C CNN
F 3 "" H 10700 10650 60  0001 C CNN
	1    10700 10650
	1    0    0    -1  
$EndComp
$Comp
L arduino_unoPB-rescue:SW_PUSH-switch SW1
U 1 1 53316EFA
P 10700 10250
F 0 "SW1" H 10850 10360 50  0000 C CNN
F 1 "SW_PUSH" H 10700 10170 50  0000 C CNN
F 2 "modules:3x6x2.5mm_tact_switch" H 10700 10250 60  0001 C CNN
F 3 "" H 10700 10250 60  0001 C CNN
	1    10700 10250
	0    1    1    0   
$EndComp
$Comp
L arduino_unoPB-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue R3
U 1 1 53316DE9
P 10700 9550
F 0 "R3" V 10700 9550 50  0000 C CNN
F 1 "10k" V 10750 9800 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 10700 9550 60  0001 C CNN
F 3 "" H 10700 9550 60  0001 C CNN
	1    10700 9550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 9850 10700 9950
$Comp
L arduino_unoPB-rescue:+5V-power1-arduino_atmega328PB-rescue #PWR0116
U 1 1 5C3633A9
P 10700 9200
F 0 "#PWR0116" H 10700 9290 20  0001 C CNN
F 1 "+5V" H 10700 9290 30  0000 C CNN
F 2 "" H 10700 9200 60  0001 C CNN
F 3 "" H 10700 9200 60  0001 C CNN
	1    10700 9200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 9850 11000 9850
Text Label 11000 9850 2    60   ~ 0
RESET
Wire Wire Line
	8100 9850 8100 10050
Wire Wire Line
	8100 10350 8100 10700
Wire Wire Line
	7550 9850 7550 10050
Wire Wire Line
	7550 10350 7550 10700
$Comp
L arduino_unoPB-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue R7
U 1 1 5C763653
P 8550 10150
F 0 "R7" V 8550 10150 50  0000 C CNN
F 1 "1k" V 8600 10350 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 8550 10150 60  0001 C CNN
F 3 "" H 8550 10150 60  0001 C CNN
	1    8550 10150
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D4
U 1 1 5C763659
P 8550 9550
F 0 "D4" H 8750 9600 50  0000 C CNN
F 1 "YLED" H 8550 9400 50  0000 C CNN
F 2 "LEDs.pretty:LED-1206" H 8550 9550 60  0001 C CNN
F 3 "" H 8550 9550 60  0001 C CNN
	1    8550 9550
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 9900 8550 9700
$Comp
L arduino_unoPB-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue R6
U 1 1 5C77D0E3
P 8950 10150
F 0 "R6" V 8950 10150 50  0000 C CNN
F 1 "1k" V 9000 10350 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 8950 10150 60  0001 C CNN
F 3 "" H 8950 10150 60  0001 C CNN
	1    8950 10150
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 5C77D0E9
P 8950 9550
F 0 "D3" H 9150 9600 50  0000 C CNN
F 1 "YLED" H 8950 9400 50  0000 C CNN
F 2 "LEDs.pretty:LED-1206" H 8950 9550 60  0001 C CNN
F 3 "" H 8950 9550 60  0001 C CNN
	1    8950 9550
	0    1    1    0   
$EndComp
Wire Wire Line
	8950 9900 8950 9700
Text Label 8550 10750 1    50   ~ 0
TXLED
Text Label 8950 10750 1    50   ~ 0
RXLED
Text Label 11200 8650 0    60   ~ 0
DTR
$Comp
L arduino_unoPB-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue C6
U 1 1 53316DBF
P 10300 8650
F 0 "C6" V 10350 8500 50  0000 L CNN
F 1 "0.1m" V 10200 8350 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 10300 8650 60  0001 C CNN
F 3 "" H 10300 8650 60  0001 C CNN
	1    10300 8650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10100 8650 9800 8650
Text Label 9800 8650 0    60   ~ 0
RESET
$Comp
L Jumper:SolderJumper_2_Bridged JP3
U 1 1 5C5707F6
P 10800 8650
F 0 "JP3" H 10950 8700 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 10800 8764 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 10800 8650 50  0001 C CNN
F 3 "~" H 10800 8650 50  0001 C CNN
	1    10800 8650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 8650 10650 8650
Wire Wire Line
	10950 8650 11350 8650
$Comp
L arduino_unoPB-rescue:CONN_5X2-con P22
U 1 1 5CA262C4
P 5800 8500
F 0 "P22" H 5900 8850 60  0000 R CNN
F 1 "xx2" H 5900 8150 60  0000 R CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_2x05" H 5800 8550 60  0001 C CNN
F 3 "" H 5800 8550 60  0000 C CNN
	1    5800 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 8300 6700 8300
Wire Wire Line
	4900 8400 5400 8400
Text Label 6700 8300 2    50   ~ 0
GPIO.2
Text Label 4900 8400 0    50   ~ 0
GPIO.3
Wire Wire Line
	5400 8700 4900 8700
Wire Wire Line
	5400 8600 4900 8600
Wire Wire Line
	5400 8500 4900 8500
Text Label 4900 8500 0    50   ~ 0
RI
Text Label 4900 8600 0    50   ~ 0
DCD
Text Label 4900 8700 0    50   ~ 0
DSR
Text Label 6700 8700 2    50   ~ 0
RTS
Text Label 6700 8600 2    50   ~ 0
CTS
Wire Wire Line
	6700 8700 6200 8700
Wire Wire Line
	6700 8600 6200 8600
Wire Wire Line
	5400 8300 4900 8300
Wire Wire Line
	6200 8500 6700 8500
Wire Wire Line
	6200 8400 6700 8400
Text Label 4900 8300 0    50   ~ 0
#RTS
Text Label 6700 8500 2    50   ~ 0
SUSPEND
Text Label 6700 8400 2    50   ~ 0
#SUSPEND
Wire Wire Line
	6150 9700 5750 9700
Text Label 5750 9700 0    60   ~ 0
DTR
$Comp
L arduino_unoPB-rescue:CONN_1x6-Connectors P21
U 1 1 533174DE
P 6350 10100
F 0 "P21" V 6400 9600 60  0000 C CNN
F 1 "CP2102" V 6150 10050 60  0000 C CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_1x06" H 6350 10100 60  0001 C CNN
F 3 "" H 6350 10100 60  0001 C CNN
	1    6350 10100
	-1   0    0    1   
$EndComp
$Comp
L Interface_USB:CP2104 U2
U 1 1 5C6E0E09
P 3000 9500
F 0 "U2" H 3450 10450 50  0000 C CNN
F 1 "CP2104" H 3450 10350 50  0000 C CNN
F 2 "Housings_DFN_QFN.pretty:QFN-24-1EP_4x4mm_Pitch0.5mm" H 3150 8550 50  0001 L CNN
F 3 "https://www.silabs.com/Support%20Documents/TechnicalDocs/cp2104.pdf" H 2450 10750 50  0001 C CNN
	1    3000 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 9400 4200 9400
Wire Wire Line
	3700 9500 4200 9500
Wire Wire Line
	3700 9100 4200 9100
Text Label 4200 9100 2    60   ~ 0
DTR
Text Label 4200 9500 2    60   ~ 0
TX
Text Label 4200 9400 2    60   ~ 0
RX
Wire Wire Line
	3700 9700 4200 9700
Wire Wire Line
	3700 9800 4200 9800
Wire Wire Line
	3700 9200 4200 9200
Wire Wire Line
	3700 9000 4200 9000
Wire Wire Line
	3700 8900 4200 8900
Wire Wire Line
	2300 9900 1850 9900
Wire Wire Line
	1850 10000 2300 10000
Wire Wire Line
	2300 10200 2100 10200
Wire Wire Line
	2100 10200 2100 10350
$Comp
L Device:CP C3
U 1 1 5C75868C
P 2100 10500
F 0 "C3" H 2218 10546 50  0000 L CNN
F 1 "10u" H 2218 10455 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD.pretty:TantalC_SizeA_EIA-3216_Wave" H 2138 10350 50  0001 C CNN
F 3 "~" H 2100 10500 50  0001 C CNN
	1    2100 10500
	1    0    0    -1  
$EndComp
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0121
U 1 1 5C758FD6
P 2100 10800
F 0 "#PWR0121" H 2100 10800 30  0001 C CNN
F 1 "GND" H 2100 10730 30  0001 C CNN
F 2 "" H 2100 10800 60  0001 C CNN
F 3 "" H 2100 10800 60  0001 C CNN
	1    2100 10800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 10800 2100 10650
Wire Wire Line
	3000 10500 3000 10650
Wire Wire Line
	3000 10650 3050 10650
Wire Wire Line
	3100 10650 3100 10500
Connection ~ 3050 10650
Wire Wire Line
	3050 10650 3100 10650
Wire Wire Line
	3050 10650 3050 10800
Wire Wire Line
	3000 8600 3000 8500
Wire Wire Line
	2800 8500 2800 8600
$Comp
L Device:CP C2
U 1 1 5C7BB603
P 1650 8800
F 0 "C2" H 1532 8754 50  0000 R CNN
F 1 "1u" H 1532 8845 50  0000 R CNN
F 2 "Capacitors_Tantalum_SMD.pretty:TantalC_SizeA_EIA-3216_Wave" H 1688 8650 50  0001 C CNN
F 3 "~" H 1650 8800 50  0001 C CNN
	1    1650 8800
	1    0    0    -1  
$EndComp
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0122
U 1 1 5C7C6DFD
P 1650 9050
F 0 "#PWR0122" H 1650 9050 30  0001 C CNN
F 1 "GND" H 1650 8980 30  0001 C CNN
F 2 "" H 1650 9050 60  0001 C CNN
F 3 "" H 1650 9050 60  0001 C CNN
	1    1650 9050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 9050 1650 8950
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0123
U 1 1 5C7A8DAF
P 3050 10800
F 0 "#PWR0123" H 3050 10800 30  0001 C CNN
F 1 "GND" H 3050 10730 30  0001 C CNN
F 2 "" H 3050 10800 60  0001 C CNN
F 3 "" H 3050 10800 60  0001 C CNN
	1    3050 10800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 9400 1350 9400
Wire Wire Line
	1600 9500 1450 9500
Wire Wire Line
	2300 9100 1850 9100
Wire Wire Line
	2300 8900 1850 8900
Text Label 1850 8900 0    50   ~ 0
VBUS
Text Label 1850 9100 0    50   ~ 0
VBUS
Wire Wire Line
	2300 9700 1850 9700
Wire Wire Line
	2300 9800 1850 9800
Text Label 1850 9700 0    50   ~ 0
TXLED
Text Label 1850 9800 0    50   ~ 0
RXLED
Text Label 1150 9500 0    50   ~ 0
D+
Text Label 1150 9400 0    50   ~ 0
D-
Wire Wire Line
	3700 10000 4200 10000
Wire Wire Line
	3700 10100 4200 10100
Wire Wire Line
	3700 10200 4200 10200
Wire Wire Line
	2800 8500 1650 8500
Wire Wire Line
	1650 8500 1650 8650
Connection ~ 2800 8500
Wire Wire Line
	2800 8500 3000 8500
Text Label 1850 9900 0    50   ~ 0
GPIO.2
Text Label 1850 10000 0    50   ~ 0
GPIO.3
Text Label 4200 8900 2    50   ~ 0
RI
Text Label 4200 9000 2    50   ~ 0
DCD
Text Label 4200 9200 2    50   ~ 0
DSR
Text Label 4200 9700 2    50   ~ 0
RTS
Text Label 4200 9800 2    50   ~ 0
CTS
Text Label 4200 10000 2    50   ~ 0
#RTS
Text Label 4200 10100 2    50   ~ 0
SUSPEND
Text Label 4200 10200 2    50   ~ 0
#SUSPEND
$Comp
L arduino_unoPB-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue R8
U 1 1 5CE23A7A
P 1850 9400
F 0 "R8" V 1850 9400 50  0000 C CNN
F 1 "22" V 1900 9600 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 1850 9400 60  0001 C CNN
F 3 "" H 1850 9400 60  0001 C CNN
	1    1850 9400
	0    1    1    0   
$EndComp
$Comp
L arduino_unoPB-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue R9
U 1 1 5CE24456
P 1850 9500
F 0 "R9" V 1850 9500 50  0000 C CNN
F 1 "22" V 1900 9700 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 1850 9500 60  0001 C CNN
F 3 "" H 1850 9500 60  0001 C CNN
	1    1850 9500
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 9400 2300 9400
Wire Wire Line
	2300 9500 2100 9500
$Comp
L Device:Thermistor TH1
U 1 1 5D03145C
P 1300 10100
F 0 "TH1" H 1100 10250 50  0000 L CNN
F 1 "CG0603MLC-05E" V 1150 9500 50  0000 L CNN
F 2 "Resistors_SMD.pretty:R_0603_HandSoldering" H 1300 10100 50  0001 C CNN
F 3 "~" H 1300 10100 50  0001 C CNN
	1    1300 10100
	1    0    0    -1  
$EndComp
$Comp
L Device:Thermistor TH2
U 1 1 5D03180C
P 1600 10100
F 0 "TH2" H 1650 10250 50  0000 L CNN
F 1 "CG0603MLC-05E" V 1750 9500 50  0000 L CNN
F 2 "Resistors_SMD.pretty:R_0603_HandSoldering" H 1600 10100 50  0001 C CNN
F 3 "~" H 1600 10100 50  0001 C CNN
	1    1600 10100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 10300 1300 10550
Wire Wire Line
	1300 10550 1450 10550
Wire Wire Line
	1600 10550 1600 10300
$Comp
L arduino_unoPB-rescue:GNDPWR-power #PWR08
U 1 1 5D059CB7
P 1450 10750
F 0 "#PWR08" H 1450 10550 50  0001 C CNN
F 1 "GNDPWR" H 1450 10600 50  0000 C CNN
F 2 "" H 1450 10700 50  0001 C CNN
F 3 "" H 1450 10700 50  0001 C CNN
	1    1450 10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 10750 1450 10550
Connection ~ 1450 10550
Wire Wire Line
	1450 10550 1600 10550
Wire Wire Line
	1300 9900 1350 9900
Wire Wire Line
	1350 9900 1350 9400
Connection ~ 1350 9400
Wire Wire Line
	1350 9400 1600 9400
Wire Wire Line
	1600 9900 1450 9900
Wire Wire Line
	1450 9900 1450 9500
Connection ~ 1450 9500
Wire Wire Line
	1450 9500 1150 9500
Text Label 2150 9400 0    50   ~ 0
DD-
Text Label 2150 9500 0    50   ~ 0
DD+
$Comp
L Device:D_Schottky D6
U 1 1 5CDE3405
P 5600 9900
F 0 "D6" H 5500 9850 50  0000 R CNN
F 1 "MBR120" H 5500 10000 50  0000 R CNN
F 2 "Diodes_SMD.pretty:SOD-123" H 5600 9900 50  0001 C CNN
F 3 "~" H 5600 9900 50  0001 C CNN
	1    5600 9900
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 10050 5600 10150
Wire Wire Line
	5600 9650 5600 9750
Wire Wire Line
	5600 10150 6150 10150
$Comp
L arduino_unoPB-rescue:+5V-power1-arduino_atmega328PB-rescue #PWR0129
U 1 1 53317CF8
P 5600 9650
F 0 "#PWR0129" H 5600 9740 20  0001 C CNN
F 1 "+5V" H 5600 9740 30  0000 C CNN
F 2 "" H 5600 9650 60  0001 C CNN
F 3 "" H 5600 9650 60  0001 C CNN
	1    5600 9650
	1    0    0    -1  
$EndComp
Text Label 5750 9850 0    60   ~ 0
RX
Text Label 5750 10000 0    60   ~ 0
TX
Wire Wire Line
	6150 10000 5750 10000
Wire Wire Line
	6150 9850 5750 9850
Wire Wire Line
	5750 10300 5750 10600
Wire Wire Line
	5750 10300 6150 10300
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0124
U 1 1 5C5D7521
P 5750 10600
F 0 "#PWR0124" H 5750 10600 30  0001 C CNN
F 1 "GND" H 5750 10530 30  0001 C CNN
F 2 "" H 5750 10600 60  0001 C CNN
F 3 "" H 5750 10600 60  0001 C CNN
	1    5750 10600
	1    0    0    -1  
$EndComp
$Comp
L arduino_unoPB-rescue:3V3-pwr #PWR0108
U 1 1 5CC309ED
P 5400 9650
F 0 "#PWR0108" H 5400 9610 30  0001 C CNN
F 1 "3V3" H 5425 9811 60  0000 C CNN
F 2 "" H 5400 9650 50  0001 C CNN
F 3 "" H 5400 9650 50  0001 C CNN
	1    5400 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 9650 5400 10450
Wire Wire Line
	5400 10450 6150 10450
Wire Wire Line
	7350 3400 7350 3650
Connection ~ 7350 3400
Wire Wire Line
	7000 3400 7350 3400
$Comp
L Device:Jumper_NO_Small JP2
U 1 1 5D6C1B0D
P 6900 3400
F 0 "JP2" H 6900 3585 50  0000 C CNN
F 1 "Jumper_NO_Small" H 6900 3494 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6900 3400 50  0001 C CNN
F 3 "~" H 6900 3400 50  0001 C CNN
	1    6900 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3400 6350 3400
Text Label 6350 3400 0    60   ~ 0
A4
Text Label 15300 1300 2    50   ~ 0
D23
Text Label 15300 1200 2    50   ~ 0
D24
Text Label 1800 3450 0    50   ~ 0
MEGA3
Text Label 1800 3550 0    50   ~ 0
MEGA6
Text Label 9650 1500 2    60   ~ 0
Vin
Wire Wire Line
	9400 1500 9650 1500
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0109
U 1 1 5C3DEFAB
P 9200 2000
F 0 "#PWR0109" H 9200 2000 30  0001 C CNN
F 1 "GND" H 9200 1930 30  0001 C CNN
F 2 "" H 9200 2000 60  0001 C CNN
F 3 "" H 9200 2000 60  0001 C CNN
	1    9200 2000
	1    0    0    -1  
$EndComp
Connection ~ 9200 1850
Wire Wire Line
	9200 1850 9200 2000
Wire Wire Line
	9200 1850 9200 1750
Wire Wire Line
	9050 1850 9200 1850
Wire Wire Line
	9050 1750 9050 1850
$Comp
L tinkerforge:DC_JACK J4
U 1 1 5C38DF6F
P 9100 1550
F 0 "J4" H 9183 1887 60  0000 C CNN
F 1 "DC_JACK" H 9183 1781 60  0000 C CNN
F 2 "Connect.pretty:JACK_ALIM" H 9183 1781 60  0001 C CNN
F 3 "" H 9100 1550 60  0000 C CNN
	1    9100 1550
	1    0    0    -1  
$EndComp
Connection ~ 13700 2100
Wire Wire Line
	13700 2100 13500 2100
Connection ~ 13600 2000
Wire Wire Line
	13600 2000 14050 2000
Wire Wire Line
	13600 2000 13500 2000
Wire Wire Line
	13600 1900 13600 2000
Wire Wire Line
	13500 1900 13600 1900
$Comp
L Connector_Generic:Conn_01x08 P14
U 1 1 5D67EBF1
P 13300 1800
F 0 "P14" H 13300 2200 50  0000 C CNN
F 1 "Power" V 13400 1800 50  0000 C CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_1x08" H 13300 1800 50  0001 C CNN
F 3 "" H 13300 1800 50  0000 C CNN
	1    13300 1800
	-1   0    0    1   
$EndComp
Connection ~ 13800 1800
Wire Wire Line
	13800 1800 13500 1800
Connection ~ 13900 1700
Wire Wire Line
	13500 1700 13900 1700
Connection ~ 14050 1500
Wire Wire Line
	13500 1500 14050 1500
Wire Wire Line
	13500 1400 14150 1400
Wire Wire Line
	14050 1500 14050 1250
Connection ~ 15050 1500
Wire Wire Line
	15050 1500 15300 1500
$Comp
L Connector_Generic:Conn_01x10 P18
U 1 1 5D62F116
P 15500 1700
F 0 "P18" H 15650 2150 50  0000 C CNN
F 1 "Communication" V 15600 1700 50  0000 C CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_1x10" H 15500 1700 50  0001 C CNN
F 3 "" H 15500 1700 50  0000 C CNN
	1    15500 1700
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x08 P15
U 1 1 5D62E218
P 13500 2800
F 0 "P15" H 13500 3200 50  0000 C CNN
F 1 "Communication" V 13600 2800 50  0000 C CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_1x08" H 13500 2800 50  0001 C CNN
F 3 "" H 13500 2800 50  0000 C CNN
	1    13500 2800
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 P19
U 1 1 5D62D7BC
P 15500 2900
F 0 "P19" H 15500 3300 50  0000 C CNN
F 1 "Communication" V 15600 2900 50  0000 C CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_1x08" H 15500 2900 50  0001 C CNN
F 3 "" H 15500 2900 50  0000 C CNN
	1    15500 2900
	1    0    0    1   
$EndComp
Wire Wire Line
	14950 1200 15300 1200
Wire Wire Line
	15300 1300 14950 1300
$Comp
L power:+5V #PWR011
U 1 1 5D59691C
P 14050 1250
F 0 "#PWR011" H 14050 1100 50  0001 C CNN
F 1 "+5V" V 14050 1450 50  0000 C CNN
F 2 "" H 14050 1250 50  0000 C CNN
F 3 "" H 14050 1250 50  0000 C CNN
	1    14050 1250
	1    0    0    -1  
$EndComp
$Comp
L arduino_unoPB-rescue:3V3-pwr #PWR01
U 1 1 5D595E97
P 13900 1250
F 0 "#PWR01" H 13900 1210 30  0001 C CNN
F 1 "3V3" H 13925 1411 60  0000 C CNN
F 2 "" H 13900 1250 50  0001 C CNN
F 3 "" H 13900 1250 50  0001 C CNN
	1    13900 1250
	1    0    0    -1  
$EndComp
Connection ~ 1500 1250
Wire Wire Line
	1100 1250 1100 1400
Wire Wire Line
	1100 1250 1500 1250
Wire Wire Line
	1100 1800 1100 1900
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR010
U 1 1 5D428AA5
P 1100 1900
F 0 "#PWR010" H 1100 1900 30  0001 C CNN
F 1 "GND" H 1100 1830 30  0001 C CNN
F 2 "" H 1100 1900 60  0001 C CNN
F 3 "" H 1100 1900 60  0001 C CNN
	1    1100 1900
	1    0    0    -1  
$EndComp
$Comp
L arduino_unoPB-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue C12
U 1 1 5D428A9F
P 1100 1600
F 0 "C12" H 900 1450 50  0000 L CNN
F 1 "0.1m" H 850 1750 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 1100 1600 60  0001 C CNN
F 3 "" H 1100 1600 60  0001 C CNN
	1    1100 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	1500 1250 1500 2000
Wire Wire Line
	1500 1250 3200 1250
Wire Wire Line
	1900 1950 2200 1950
Wire Wire Line
	1500 2400 1500 2500
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0112
U 1 1 53317195
P 1500 2500
F 0 "#PWR0112" H 1500 2500 30  0001 C CNN
F 1 "GND" H 1500 2430 30  0001 C CNN
F 2 "" H 1500 2500 60  0001 C CNN
F 3 "" H 1500 2500 60  0001 C CNN
	1    1500 2500
	1    0    0    -1  
$EndComp
$Comp
L arduino_unoPB-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue C1
U 1 1 5331718F
P 1500 2200
F 0 "C1" H 1350 2100 50  0000 L CNN
F 1 "0.1m" H 1300 2350 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 1500 2200 60  0001 C CNN
F 3 "" H 1500 2200 60  0001 C CNN
	1    1500 2200
	-1   0    0    1   
$EndComp
$Comp
L Jumper:Jumper_3_Open JP4
U 1 1 5D2C4B75
P 7600 3250
F 0 "JP4" H 7600 3474 50  0000 C CNN
F 1 "Jumper_3_Open" H 7600 3383 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 7600 3250 50  0001 C CNN
F 3 "~" H 7600 3250 50  0001 C CNN
	1    7600 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3400 7600 3800
Wire Wire Line
	7350 3250 7350 3400
Text Label 1800 3750 0    60   ~ 0
A7
Text Label 1800 3650 0    60   ~ 0
A6
Text Label 7350 3650 1    50   ~ 0
D23
Wire Wire Line
	7850 3650 7850 3250
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0136
U 1 1 5C64DD05
P 7850 3650
F 0 "#PWR0136" H 7850 3650 30  0001 C CNN
F 1 "GND" H 7850 3580 30  0001 C CNN
F 2 "" H 7850 3650 60  0001 C CNN
F 3 "" H 7850 3650 60  0001 C CNN
	1    7850 3650
	1    0    0    -1  
$EndComp
Text Label 7600 3800 1    50   ~ 0
MEGA3
Wire Wire Line
	2200 3550 1800 3550
Wire Wire Line
	2200 3450 1800 3450
$Comp
L arduino_unoPB-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue R4
U 1 1 5C38850A
P 8150 6450
F 0 "R4" V 8150 6450 50  0000 C CNN
F 1 "100" V 8200 6700 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 8150 6450 60  0001 C CNN
F 3 "" H 8150 6450 60  0001 C CNN
	1    8150 6450
	0    1    1    0   
$EndComp
Wire Wire Line
	10200 7350 10750 7350
Connection ~ 10200 7350
Wire Wire Line
	10200 7200 10200 7350
Wire Wire Line
	10200 6450 10750 6450
Connection ~ 10200 6450
Wire Wire Line
	10200 6600 10200 6450
$Comp
L arduino_unoPB-rescue:CRYSTAL-crystal X1
U 1 1 5C355945
P 10200 6900
F 0 "X1" H 10200 7050 60  0000 C CNN
F 1 "16MHz" H 10200 6750 60  0000 C CNN
F 2 "Crystals.pretty:Crystal_HC49-U_Vertical" H 10200 6900 60  0001 C CNN
F 3 "" H 10200 6900 60  0001 C CNN
	1    10200 6900
	0    1    1    0   
$EndComp
Connection ~ 9450 6900
Wire Wire Line
	9500 6900 9450 6900
Wire Wire Line
	9700 7050 9700 7350
Wire Wire Line
	9700 6450 9700 6750
Wire Wire Line
	9450 6900 9450 7150
$Comp
L Device:Crystal_GND3 Y2
U 1 1 5C46577F
P 9700 6900
F 0 "Y2" H 9450 6850 50  0000 L CNN
F 1 "Crystal_GND23 16MHz" H 9300 7050 50  0000 L CNN
F 2 "kicad-libraries:CRYSTAL_3225" H 9700 6900 50  0001 C CNN
F 3 "~" H 9700 6900 50  0001 C CNN
	1    9700 6900
	0    1    1    0   
$EndComp
$Comp
L arduino_unoPB-rescue:3V3-pwr #PWR0135
U 1 1 5CE8434C
P 12350 1200
F 0 "#PWR0135" H 12350 1160 30  0001 C CNN
F 1 "3V3" H 12375 1361 60  0000 C CNN
F 2 "" H 12350 1200 50  0001 C CNN
F 3 "" H 12350 1200 50  0001 C CNN
	1    12350 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	12350 1500 12350 1200
Connection ~ 11300 1500
Wire Wire Line
	12150 1500 12350 1500
Wire Wire Line
	11300 1500 11550 1500
$Comp
L arduino_unoPB-rescue:AP1117-50-Regulator_Linear U4
U 1 1 5CE53770
P 11850 1500
F 0 "U4" H 11850 1742 50  0000 C CNN
F 1 "AP1117-33" H 11850 1651 50  0000 C CNN
F 2 "modules:AB2_SOT223" H 11850 1700 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 11950 1250 50  0001 C CNN
	1    11850 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	11300 1500 11300 1700
$Comp
L arduino_unoPB-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue C9
U 1 1 5CE53769
P 11300 1900
F 0 "C9" H 11350 2000 50  0000 L CNN
F 1 "0.1m" H 11350 1800 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 11300 1900 60  0001 C CNN
F 3 "" H 11300 1900 60  0001 C CNN
	1    11300 1900
	1    0    0    -1  
$EndComp
$Comp
L arduino_unoPB-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue C10
U 1 1 5CE53763
P 12350 1950
F 0 "C10" H 12400 2050 50  0000 L CNN
F 1 "0.1m" H 12400 1850 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 12350 1950 60  0001 C CNN
F 3 "" H 12350 1950 60  0001 C CNN
	1    12350 1950
	1    0    0    -1  
$EndComp
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0134
U 1 1 5CE53756
P 11300 2250
F 0 "#PWR0134" H 11300 2250 30  0001 C CNN
F 1 "GND" H 11300 2180 30  0001 C CNN
F 2 "" H 11300 2250 60  0001 C CNN
F 3 "" H 11300 2250 60  0001 C CNN
	1    11300 2250
	1    0    0    -1  
$EndComp
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0133
U 1 1 5CE53750
P 12350 2250
F 0 "#PWR0133" H 12350 2250 30  0001 C CNN
F 1 "GND" H 12350 2180 30  0001 C CNN
F 2 "" H 12350 2250 60  0001 C CNN
F 3 "" H 12350 2250 60  0001 C CNN
	1    12350 2250
	1    0    0    -1  
$EndComp
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0132
U 1 1 5CE5374A
P 11850 2250
F 0 "#PWR0132" H 11850 2250 30  0001 C CNN
F 1 "GND" H 11850 2180 30  0001 C CNN
F 2 "" H 11850 2250 60  0001 C CNN
F 3 "" H 11850 2250 60  0001 C CNN
	1    11850 2250
	1    0    0    -1  
$EndComp
Connection ~ 12350 1500
Wire Wire Line
	11300 2100 11300 2250
Wire Wire Line
	11850 1800 11850 2250
Wire Wire Line
	12350 2150 12350 2250
Wire Wire Line
	12350 1500 12350 1750
Wire Wire Line
	11150 1500 11300 1500
Wire Wire Line
	10700 1500 10850 1500
$Comp
L Device:D_Schottky D5
U 1 1 5CDAAF31
P 11000 1500
F 0 "D5" H 11150 1400 50  0000 R CNN
F 1 "MBR120" H 11150 1600 50  0000 R CNN
F 2 "Diodes_SMD.pretty:SOD-123" H 11000 1500 50  0001 C CNN
F 3 "~" H 11000 1500 50  0001 C CNN
	1    11000 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2200 3750 1800 3750
Wire Wire Line
	1800 3650 2200 3650
Wire Wire Line
	3200 1250 3200 1350
Connection ~ 3200 1250
Wire Wire Line
	3400 1250 3200 1250
Wire Wire Line
	3400 1350 3400 1250
Wire Wire Line
	3200 1150 3200 1250
Wire Wire Line
	3300 4500 3300 4700
Connection ~ 3300 4500
Wire Wire Line
	3400 4500 3300 4500
Wire Wire Line
	3400 4350 3400 4500
Wire Wire Line
	3300 4350 3300 4500
$Comp
L arduino_unoPB-rescue:ATMEGA328PB-AU-MCU_Atmel_ATMEGA U1
U 1 1 5C5D46B1
P 3500 2850
F 0 "U1" H 4300 4350 50  0000 C CNN
F 1 "ATMEGA328PB-AU" H 4300 4250 50  0000 C CNN
F 2 "Housings_QFP.pretty:TQFP-32_7x7mm_Pitch0.8mm" H 3450 1450 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-42397-8-bit-avr-microcontroller-atmega328pb_datasheet.pdf" H 3200 2900 50  0001 C CNN
	1    3500 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 7350 9700 7350
Connection ~ 9100 7350
Wire Wire Line
	9100 7050 9100 7350
Wire Wire Line
	9100 6450 9700 6450
Connection ~ 9100 6450
Wire Wire Line
	9100 6750 9100 6450
Wire Wire Line
	9300 6900 9450 6900
$Comp
L Device:Resonator Y1
U 1 1 5C486A6F
P 9100 6900
F 0 "Y1" H 8900 6850 50  0000 L CNN
F 1 "Resonator 16MHz" H 8800 7050 50  0000 L CNN
F 2 "modules:MURATA_CSTCE_V53" H 9075 6900 50  0001 C CNN
F 3 "~" H 9075 6900 50  0001 C CNN
	1    9100 6900
	0    -1   -1   0   
$EndComp
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0119
U 1 1 5C485E14
P 9450 7150
F 0 "#PWR0119" H 9450 7150 30  0001 C CNN
F 1 "GND" H 9450 7080 30  0001 C CNN
F 2 "" H 9450 7150 60  0001 C CNN
F 3 "" H 9450 7150 60  0001 C CNN
	1    9450 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 6450 10200 6450
Connection ~ 9700 6450
Wire Wire Line
	9700 7350 10200 7350
Connection ~ 9700 7350
Connection ~ 10750 7350
Wire Wire Line
	8700 7350 9100 7350
Connection ~ 10750 6450
Wire Wire Line
	8700 6450 9100 6450
Wire Wire Line
	10750 6450 10950 6450
Wire Wire Line
	10750 6600 10750 6450
Wire Wire Line
	8700 6650 8700 6450
Wire Wire Line
	10750 7350 10950 7350
Wire Wire Line
	10750 7200 10750 7350
Connection ~ 8700 7350
Wire Wire Line
	8700 7150 8700 7350
Text Label 7500 7350 0    50   ~ 0
XTAL2
Wire Wire Line
	7500 7350 8700 7350
Wire Wire Line
	7500 6450 7900 6450
$Comp
L arduino_unoPB-rescue:CRYSTAL-crystal X2
U 1 1 5C3F5F69
P 10750 6900
F 0 "X2" H 10750 7050 60  0000 C CNN
F 1 "16MHz" H 10750 6750 60  0000 C CNN
F 2 "Crystals.pretty:Q_49U3HMS" H 10750 6900 60  0001 C CNN
F 3 "" H 10750 6900 60  0001 C CNN
	1    10750 6900
	0    1    1    0   
$EndComp
Text Label 7500 6450 0    50   ~ 0
XTAL1
Text Label 5100 2350 2    50   ~ 0
XTAL2
Text Label 5100 2250 2    50   ~ 0
XTAL1
Wire Wire Line
	4800 2350 5100 2350
Wire Wire Line
	4800 2250 5100 2250
Wire Wire Line
	11500 7350 11350 7350
Wire Wire Line
	11500 6450 11350 6450
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0118
U 1 1 53316CEE
P 11500 7350
F 0 "#PWR0118" H 11500 7350 30  0001 C CNN
F 1 "GND" H 11500 7280 30  0001 C CNN
F 2 "" H 11500 7350 60  0001 C CNN
F 3 "" H 11500 7350 60  0001 C CNN
	1    11500 7350
	0    -1   -1   0   
$EndComp
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0117
U 1 1 53316CAD
P 11500 6450
F 0 "#PWR0117" H 11500 6450 30  0001 C CNN
F 1 "GND" H 11500 6380 30  0001 C CNN
F 2 "" H 11500 6450 60  0001 C CNN
F 3 "" H 11500 6450 60  0001 C CNN
	1    11500 6450
	0    -1   -1   0   
$EndComp
$Comp
L arduino_unoPB-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue C5
U 1 1 53316C9F
P 11150 7350
F 0 "C5" H 11200 7450 50  0000 L CNN
F 1 "22" H 11200 7250 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 11150 7350 60  0001 C CNN
F 3 "" H 11150 7350 60  0001 C CNN
	1    11150 7350
	0    1    1    0   
$EndComp
$Comp
L arduino_unoPB-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue C4
U 1 1 53316C9B
P 11150 6450
F 0 "C4" H 11200 6550 50  0000 L CNN
F 1 "22" H 11200 6350 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 11150 6450 60  0001 C CNN
F 3 "" H 11150 6450 60  0001 C CNN
	1    11150 6450
	0    1    1    0   
$EndComp
$Comp
L arduino_unoPB-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue R2
U 1 1 5452671C
P 8700 6900
F 0 "R2" V 8700 6900 50  0000 C CNN
F 1 "1M" V 8750 7150 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 8700 6900 60  0001 C CNN
F 3 "" H 8700 6900 60  0001 C CNN
	1    8700 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 1500 10700 1500
Wire Wire Line
	9650 1500 9900 1500
$Comp
L arduino_unoPB-rescue:AP1117-50-Regulator_Linear U3
U 1 1 5C385EC8
P 10200 1500
F 0 "U3" H 10200 1742 50  0000 C CNN
F 1 "AP1117-50" H 10200 1651 50  0000 C CNN
F 2 "modules:AB2_SOT223" H 10200 1700 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 10300 1250 50  0001 C CNN
	1    10200 1500
	1    0    0    -1  
$EndComp
Text Label 5100 4050 2    60   ~ 0
D7
Text Label 5100 3950 2    60   ~ 0
D6
Text Label 5100 3850 2    60   ~ 0
D5
Text Label 5100 3750 2    60   ~ 0
D4
Text Label 5100 3650 2    60   ~ 0
D3
Text Label 5100 3550 2    60   ~ 0
D2
Text Label 5100 3450 2    60   ~ 0
TX
Text Label 5100 3350 2    60   ~ 0
RX
Wire Wire Line
	7600 1250 8050 1250
Wire Wire Line
	8050 1250 8050 1350
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0115
U 1 1 53317586
P 8050 1350
F 0 "#PWR0115" H 8050 1350 30  0001 C CNN
F 1 "GND" H 8050 1280 30  0001 C CNN
F 2 "" H 8050 1350 60  0001 C CNN
F 3 "" H 8050 1350 60  0001 C CNN
	1    8050 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 950  8050 1050
$Comp
L arduino_unoPB-rescue:+5V-power1-arduino_atmega328PB-rescue #PWR0114
U 1 1 53317583
P 8050 950
F 0 "#PWR0114" H 8050 1040 20  0001 C CNN
F 1 "+5V" H 8050 1040 30  0000 C CNN
F 2 "" H 8050 950 60  0001 C CNN
F 3 "" H 8050 950 60  0001 C CNN
	1    8050 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 1500 9650 1700
Wire Wire Line
	5100 3150 4800 3150
Text Label 5100 1650 2    60   ~ 0
D8
Text Label 5100 1750 2    60   ~ 0
D9
Text Label 5100 1850 2    60   ~ 0
D10
Text Label 5100 1950 2    60   ~ 0
MOSI
Text Label 5100 2050 2    60   ~ 0
MISO
Text Label 5100 2150 2    60   ~ 0
SCK
Text Label 5100 2550 2    60   ~ 0
A0
Text Label 5100 2650 2    60   ~ 0
A1
Text Label 5100 2750 2    60   ~ 0
A2
Text Label 5100 2850 2    60   ~ 0
A3
Text Label 5100 2950 2    60   ~ 0
A4
Text Label 5100 3050 2    60   ~ 0
A5
Text Label 5100 3150 2    60   ~ 0
RESET
Text Label 15300 3200 2    60   ~ 0
RX
Text Label 15300 3100 2    60   ~ 0
TX
Text Label 15300 3000 2    60   ~ 0
D2
Text Label 15300 2900 2    60   ~ 0
D3
Text Label 15300 2800 2    60   ~ 0
D4
Text Label 15300 2700 2    60   ~ 0
D5
Text Label 15300 2600 2    60   ~ 0
D6
Text Label 15300 2500 2    60   ~ 0
D7
Text Label 15300 2100 2    60   ~ 0
D8
Text Label 15300 2000 2    60   ~ 0
D9
Text Label 15300 1900 2    60   ~ 0
D10
Text Label 15300 1800 2    60   ~ 0
MOSI
Text Label 15300 1700 2    60   ~ 0
MISO
Text Label 15300 1600 2    60   ~ 0
SCK
Text Label 15300 1400 2    60   ~ 0
AREF
Text Label 1900 1950 0    60   ~ 0
AREF
$Comp
L arduino_unoPB-rescue:+5V-power1-arduino_atmega328PB-rescue #PWR0111
U 1 1 533171DD
P 3200 1150
F 0 "#PWR0111" H 3200 1240 20  0001 C CNN
F 1 "+5V" H 3200 1240 30  0000 C CNN
F 2 "" H 3200 1150 60  0001 C CNN
F 3 "" H 3200 1150 60  0001 C CNN
	1    3200 1150
	1    0    0    -1  
$EndComp
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0110
U 1 1 53317494
P 3300 4700
F 0 "#PWR0110" H 3300 4700 30  0001 C CNN
F 1 "GND" H 3300 4630 30  0001 C CNN
F 2 "" H 3300 4700 60  0001 C CNN
F 3 "" H 3300 4700 60  0001 C CNN
	1    3300 4700
	1    0    0    -1  
$EndComp
Text Label 6350 1050 0    60   ~ 0
MISO
Text Label 6350 1150 0    60   ~ 0
SCK
Text Label 6350 1250 0    60   ~ 0
RESET
Text Label 8050 1150 2    60   ~ 0
MOSI
$Comp
L arduino_unoPB-rescue:CONN_3X2-gencon P16
U 1 1 53318F84
P 7200 1150
F 0 "P16" H 7250 1350 60  0000 C CNN
F 1 "CONN_6" H 7200 950 60  0000 C CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_2x03" H 7200 1150 60  0001 C CNN
F 3 "" H 7200 1150 60  0001 C CNN
	1    7200 1150
	1    0    0    -1  
$EndComp
$Comp
L arduino_unoPB-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue C8
U 1 1 5335A584
P 10700 1950
F 0 "C8" H 10750 2050 50  0000 L CNN
F 1 "0.1m" H 10750 1850 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 10700 1950 60  0001 C CNN
F 3 "" H 10700 1950 60  0001 C CNN
	1    10700 1950
	1    0    0    -1  
$EndComp
$Comp
L arduino_unoPB-rescue:+5V-power1-arduino_atmega328PB-rescue #PWR0104
U 1 1 5335A59A
P 11300 1250
F 0 "#PWR0104" H 11300 1340 20  0001 C CNN
F 1 "+5V" H 11300 1340 30  0000 C CNN
F 2 "" H 11300 1250 60  0001 C CNN
F 3 "" H 11300 1250 60  0001 C CNN
	1    11300 1250
	1    0    0    -1  
$EndComp
Text Label 9650 1150 0    60   ~ 0
Vin
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0103
U 1 1 5335A5B7
P 9650 2250
F 0 "#PWR0103" H 9650 2250 30  0001 C CNN
F 1 "GND" H 9650 2180 30  0001 C CNN
F 2 "" H 9650 2250 60  0001 C CNN
F 3 "" H 9650 2250 60  0001 C CNN
	1    9650 2250
	1    0    0    -1  
$EndComp
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0102
U 1 1 5335A5B8
P 10700 2250
F 0 "#PWR0102" H 10700 2250 30  0001 C CNN
F 1 "GND" H 10700 2180 30  0001 C CNN
F 2 "" H 10700 2250 60  0001 C CNN
F 3 "" H 10700 2250 60  0001 C CNN
	1    10700 2250
	1    0    0    -1  
$EndComp
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0101
U 1 1 5335A5BD
P 10200 2250
F 0 "#PWR0101" H 10200 2250 30  0001 C CNN
F 1 "GND" H 10200 2180 30  0001 C CNN
F 2 "" H 10200 2250 60  0001 C CNN
F 3 "" H 10200 2250 60  0001 C CNN
	1    10200 2250
	1    0    0    -1  
$EndComp
Connection ~ 10700 1500
Wire Wire Line
	9650 2100 9650 2250
Connection ~ 9650 1500
Wire Wire Line
	9650 1150 9650 1500
Wire Wire Line
	8050 1050 7600 1050
Wire Wire Line
	6800 1150 6350 1150
Wire Wire Line
	14950 3100 15300 3100
Wire Wire Line
	14950 2900 15300 2900
Wire Wire Line
	14950 2700 15300 2700
Wire Wire Line
	14950 2500 15300 2500
Wire Wire Line
	14950 2000 15300 2000
Wire Wire Line
	14950 1800 15300 1800
Wire Wire Line
	14950 1600 15300 1600
Wire Wire Line
	4800 4050 5100 4050
Wire Wire Line
	4800 3850 5100 3850
Wire Wire Line
	4800 3650 5100 3650
Wire Wire Line
	4800 3450 5100 3450
Wire Wire Line
	4800 2950 5100 2950
Wire Wire Line
	4800 2750 5100 2750
Wire Wire Line
	4800 2550 5100 2550
Wire Wire Line
	4800 1750 5100 1750
Wire Wire Line
	4800 1950 5100 1950
Wire Wire Line
	4800 2150 5100 2150
Wire Wire Line
	4800 2050 5100 2050
Wire Wire Line
	4800 1850 5100 1850
Wire Wire Line
	4800 1650 5100 1650
Wire Wire Line
	4800 2650 5100 2650
Wire Wire Line
	4800 2850 5100 2850
Wire Wire Line
	4800 3050 5100 3050
Wire Wire Line
	4800 3350 5100 3350
Wire Wire Line
	4800 3550 5100 3550
Wire Wire Line
	4800 3750 5100 3750
Wire Wire Line
	4800 3950 5100 3950
Wire Wire Line
	14950 1700 15300 1700
Wire Wire Line
	14950 1900 15300 1900
Wire Wire Line
	14950 2100 15300 2100
Wire Wire Line
	14950 2600 15300 2600
Wire Wire Line
	14950 2800 15300 2800
Wire Wire Line
	14950 3000 15300 3000
Wire Wire Line
	14950 3200 15300 3200
Wire Wire Line
	6800 1250 6350 1250
Wire Wire Line
	8050 1150 7600 1150
Wire Wire Line
	6800 1050 6350 1050
Wire Wire Line
	10200 1800 10200 2250
Wire Wire Line
	10700 2150 10700 2250
Wire Wire Line
	10700 1500 10700 1750
Wire Wire Line
	11300 1250 11300 1500
Wire Notes Line
	13150 4150 13150 550 
$Comp
L Connector_Generic:Conn_01x01 P10
U 1 1 56D70CE6
P 15600 700
F 0 "P10" V 15700 700 31  0000 C CNN
F 1 "CONN_01X01" V 15700 700 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 15600 700 50  0001 C CNN
F 3 "" H 15600 700 50  0000 C CNN
	1    15600 700 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13700 3200 14150 3200
Wire Wire Line
	14150 3100 13700 3100
Wire Wire Line
	13700 3000 14150 3000
Wire Wire Line
	14150 2900 13700 2900
Wire Wire Line
	13700 2800 14150 2800
Wire Wire Line
	14150 2700 13700 2700
Wire Wire Line
	13700 2600 14150 2600
Wire Wire Line
	14150 2500 13700 2500
Wire Wire Line
	15050 1500 14950 1500
Wire Wire Line
	15050 2200 15050 1500
Connection ~ 14050 2000
Wire Wire Line
	14150 2000 14050 2000
Wire Wire Line
	14050 2000 14050 2200
Wire Wire Line
	14050 1900 14050 2000
Wire Wire Line
	14150 1900 14050 1900
Wire Wire Line
	13500 1600 14150 1600
Wire Wire Line
	13700 2100 13700 1250
Wire Wire Line
	14150 2100 13700 2100
Wire Wire Line
	13800 1800 14150 1800
Wire Wire Line
	13800 1100 13800 1800
Wire Wire Line
	13900 1700 14150 1700
Wire Notes Line
	13150 700  14650 700 
Wire Notes Line
	14650 700  14650 525 
Wire Notes Line
	16000 1050 15250 1050
Wire Notes Line
	15250 1050 15250 550 
Wire Wire Line
	14150 1500 14050 1500
Wire Wire Line
	13900 1250 13900 1700
$Comp
L Connector_Generic:Conn_01x08 P6
U 1 1 56D734D0
P 14750 2800
F 0 "P6" H 14750 3200 50  0000 C CNN
F 1 "PWM" V 14850 2800 50  0000 C CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_1x08" H 14750 2800 50  0001 C CNN
F 3 "" H 14750 2800 50  0000 C CNN
	1    14750 2800
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 P3
U 1 1 56D72F1C
P 14350 2800
F 0 "P3" H 14350 3200 50  0000 C CNN
F 1 "Analog" V 14450 2800 50  0000 C CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_1x08" H 14350 2800 50  0001 C CNN
F 3 "" H 14350 2800 50  0000 C CNN
	1    14350 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D72A3D
P 15050 2200
F 0 "#PWR04" H 15050 1950 50  0001 C CNN
F 1 "GND" H 15050 2050 50  0000 C CNN
F 2 "" H 15050 2200 50  0000 C CNN
F 3 "" H 15050 2200 50  0000 C CNN
	1    15050 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 P5
U 1 1 56D72368
P 14750 1600
F 0 "P5" H 14750 2100 50  0000 C CNN
F 1 "PWM" V 14850 1600 50  0000 C CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_1x10" H 14750 1600 50  0001 C CNN
F 3 "" H 14750 1600 50  0000 C CNN
	1    14750 1600
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D721E6
P 14050 2200
F 0 "#PWR03" H 14050 1950 50  0001 C CNN
F 1 "GND" H 14050 2050 50  0000 C CNN
F 2 "" H 14050 2200 50  0000 C CNN
F 3 "" H 14050 2200 50  0000 C CNN
	1    14050 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D71D10
P 13800 1100
F 0 "#PWR02" H 13800 950 50  0001 C CNN
F 1 "+5V" V 13800 1300 50  0000 C CNN
F 2 "" H 13800 1100 50  0000 C CNN
F 3 "" H 13800 1100 50  0000 C CNN
	1    13800 1100
	1    0    0    -1  
$EndComp
Text Label 13500 1600 0    60   ~ 0
RESET
Text Notes 14450 1400 0    60   ~ 0
1
$Comp
L Connector_Generic:Conn_01x08 P2
U 1 1 56D71773
P 14350 1700
F 0 "P2" H 14350 2100 50  0000 C CNN
F 1 "Power" V 14450 1700 50  0000 C CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_1x08" H 14350 1700 50  0001 C CNN
F 3 "" H 14350 1700 50  0000 C CNN
	1    14350 1700
	1    0    0    -1  
$EndComp
NoConn ~ 15700 900 
NoConn ~ 15600 900 
NoConn ~ 15500 900 
NoConn ~ 15400 900 
$Comp
L Connector_Generic:Conn_01x01 P11
U 1 1 56D70D2C
P 15700 700
F 0 "P11" V 15800 700 31  0000 C CNN
F 1 "CONN_01X01" V 15800 700 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 15700 700 50  0001 C CNN
F 3 "" H 15700 700 50  0000 C CNN
	1    15700 700 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P9
U 1 1 56D70C9B
P 15500 700
F 0 "P9" V 15600 700 31  0000 C CNN
F 1 "CONN_01X01" V 15600 700 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 15500 700 50  0001 C CNN
F 3 "" H 15500 700 50  0000 C CNN
	1    15500 700 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D70B71
P 15400 700
F 0 "P8" V 15500 700 31  0000 C CNN
F 1 "CONN_01X01" V 15500 700 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 15400 700 50  0001 C CNN
F 3 "" H 15400 700 50  0000 C CNN
	1    15400 700 
	0    -1   -1   0   
$EndComp
Text Notes 15500 1050 0    60   ~ 0
Holes
Text Notes 13175 625  0    60   ~ 0
Shield for Arduino Uno Rev 3
Text Label 13700 3200 0    60   ~ 0
A7
Text Label 13700 3100 0    60   ~ 0
A6
Text Label 13700 3000 0    60   ~ 0
A5
Text Label 13700 2900 0    60   ~ 0
A4
Text Label 13700 2800 0    60   ~ 0
A3
Text Label 13700 2700 0    60   ~ 0
A2
Text Label 13700 2600 0    60   ~ 0
A1
Text Label 13700 2500 0    60   ~ 0
A0
Text Label 13700 1250 1    60   ~ 0
Vin
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0128
U 1 1 5C4BEF92
P 11750 3500
F 0 "#PWR0128" H 11750 3500 30  0001 C CNN
F 1 "GND" H 11750 3430 30  0001 C CNN
F 2 "" H 11750 3500 60  0001 C CNN
F 3 "" H 11750 3500 60  0001 C CNN
	1    11750 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	11750 3250 11750 3500
$Comp
L Device:CP C14
U 1 1 5C4EE032
P 12400 3100
F 0 "C14" H 12518 3146 50  0000 L CNN
F 1 "10u/35V" H 12518 3055 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD.pretty:TantalC_SizeD_EIA-7343_Wave" H 12438 2950 50  0001 C CNN
F 3 "~" H 12400 3100 50  0001 C CNN
	1    12400 3100
	1    0    0    -1  
$EndComp
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0130
U 1 1 5C4EE038
P 12400 3500
F 0 "#PWR0130" H 12400 3500 30  0001 C CNN
F 1 "GND" H 12400 3430 30  0001 C CNN
F 2 "" H 12400 3500 60  0001 C CNN
F 3 "" H 12400 3500 60  0001 C CNN
	1    12400 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	12400 3250 12400 3500
$Comp
L arduino_unoPB-rescue:+5V-power1-arduino_atmega328PB-rescue #PWR0131
U 1 1 5C51C7DD
P 11750 2700
F 0 "#PWR0131" H 11750 2790 20  0001 C CNN
F 1 "+5V" H 11750 2790 30  0000 C CNN
F 2 "" H 11750 2700 60  0001 C CNN
F 3 "" H 11750 2700 60  0001 C CNN
	1    11750 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	11750 2700 11750 2950
Text Label 12400 2600 0    60   ~ 0
Vin
Wire Wire Line
	12400 2600 12400 2950
$Comp
L arduino_unoPB-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue C7
U 1 1 5335A581
P 9650 1900
F 0 "C7" H 9700 2000 50  0000 L CNN
F 1 "0.1m" H 9700 1800 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 9650 1900 60  0001 C CNN
F 3 "" H 9650 1900 60  0001 C CNN
	1    9650 1900
	1    0    0    -1  
$EndComp
Text Notes 10450 3850 0    197  ~ 0
POWER
Wire Wire Line
	14950 1400 15300 1400
$Comp
L arduino_unoPB-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue C11
U 1 1 5C546E62
P 1900 2250
F 0 "C11" H 1950 2350 50  0000 L CNN
F 1 "0.1m" H 1950 2150 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 1900 2250 60  0001 C CNN
F 3 "" H 1900 2250 60  0001 C CNN
	1    1900 2250
	1    0    0    -1  
$EndComp
$Comp
L arduino_unoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0120
U 1 1 5C54E554
P 1900 2650
F 0 "#PWR0120" H 1900 2650 30  0001 C CNN
F 1 "GND" H 1900 2580 30  0001 C CNN
F 2 "" H 1900 2650 60  0001 C CNN
F 3 "" H 1900 2650 60  0001 C CNN
	1    1900 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2650 1900 2450
Wire Wire Line
	1900 2050 1900 1950
Wire Wire Line
	8950 10400 8950 10750
Wire Wire Line
	8550 10400 8550 10750
$Comp
L arduino_unoPB-rescue:+5V-power1-arduino_atmega328PB-rescue #PWR?
U 1 1 5CACD742
P 8550 9250
F 0 "#PWR?" H 8550 9340 20  0001 C CNN
F 1 "+5V" H 8550 9340 30  0000 C CNN
F 2 "" H 8550 9250 60  0001 C CNN
F 3 "" H 8550 9250 60  0001 C CNN
	1    8550 9250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 9250 8550 9400
$Comp
L arduino_unoPB-rescue:+5V-power1-arduino_atmega328PB-rescue #PWR?
U 1 1 5CAE4E3E
P 8950 9250
F 0 "#PWR?" H 8950 9340 20  0001 C CNN
F 1 "+5V" H 8950 9340 30  0000 C CNN
F 2 "" H 8950 9250 60  0001 C CNN
F 3 "" H 8950 9250 60  0001 C CNN
	1    8950 9250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 9250 8950 9400
$EndSCHEMATC
