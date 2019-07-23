EESchema Schematic File Version 4
LIBS:arduino_nano324-cache
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title ""
Date "jeu. 02 avril 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 13550 1500 0    60   ~ 0
2
Text Label 13550 1600 0    60   ~ 0
3
Text Label 13550 1700 0    60   ~ 0
4
Text Label 13550 1900 0    60   ~ 0
6
Text Label 13550 2000 0    60   ~ 0
7
Text Label 13550 2100 0    60   ~ 0
8
Text Label 13550 2200 0    60   ~ 0
9
Text Label 13550 2300 0    60   ~ 0
10
Text Label 13550 2400 0    60   ~ 0
11
Text Label 13550 2500 0    60   ~ 0
12(MISO)
Text Label 15400 2500 0    60   ~ 0
13(SCK)
Text Label 15400 2200 0    60   ~ 0
A0
Text Label 15400 2100 0    60   ~ 0
A1
Text Label 15400 2000 0    60   ~ 0
A2
Text Label 15400 1900 0    60   ~ 0
A3
Text Label 15400 1800 0    60   ~ 0
A4
Text Label 15400 1700 0    60   ~ 0
A5
Text Label 15400 1600 0    60   ~ 0
A6
Text Label 15400 1500 0    60   ~ 0
A7
Text Label 15400 2300 0    60   ~ 0
AREF
Text Label 15400 1300 0    60   ~ 0
Reset
Text Notes 15650 1000 0    60   ~ 0
Holes
Text Notes 13350 575  0    60   ~ 0
Shield for Arduino Nano
Text Label 15100 950  1    60   ~ 0
Vin
Wire Notes Line
	13325 650  14525 650 
Wire Notes Line
	14525 650  14525 475 
$Comp
L Connector_Generic:Conn_01x01 P3
U 1 1 5C6E9277
P 15650 650
F 0 "P3" V 15750 650 50  0000 C CNN
F 1 "CONN_01X01" V 15750 650 50  0001 C CNN
F 2 "Socket_Arduino_Nano:1pin_Nano" H 15650 650 50  0001 C CNN
F 3 "" H 15650 650 50  0000 C CNN
	1    15650 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 15650 850 
$Comp
L Connector_Generic:Conn_01x01 P4
U 1 1 5C6E9278
P 15750 650
F 0 "P4" V 15850 650 50  0000 C CNN
F 1 "CONN_01X01" V 15850 650 50  0001 C CNN
F 2 "Socket_Arduino_Nano:1pin_Nano" H 15750 650 50  0001 C CNN
F 3 "" H 15750 650 50  0000 C CNN
	1    15750 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D73DAE
P 15850 650
F 0 "P5" V 15950 650 50  0000 C CNN
F 1 "CONN_01X01" V 15950 650 50  0001 C CNN
F 2 "Socket_Arduino_Nano:1pin_Nano" H 15850 650 50  0001 C CNN
F 3 "" H 15850 650 50  0000 C CNN
	1    15850 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D73DD9
P 15950 650
F 0 "P6" V 16050 650 50  0000 C CNN
F 1 "CONN_01X01" V 16050 650 50  0001 C CNN
F 2 "Socket_Arduino_Nano:1pin_Nano" H 15950 650 50  0001 C CNN
F 3 "" H 15950 650 50  0000 C CNN
	1    15950 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 15750 850 
NoConn ~ 15850 850 
NoConn ~ 15950 850 
$Comp
L Connector_Generic:Conn_01x23 P1
U 1 1 56D73FAC
P 14400 2200
F 0 "P1" H 14400 3200 50  0000 C CNN
F 1 "Digital" V 14500 2200 50  0000 C CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_1x23" H 14400 2200 50  0001 C CNN
F 3 "" H 14400 2200 50  0000 C CNN
	1    14400 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x23 P2
U 1 1 56D740C7
P 14800 2200
F 0 "P2" H 14800 3200 50  0000 C CNN
F 1 "Analog" V 14900 2200 50  0000 C CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_1x23" H 14800 2200 50  0001 C CNN
F 3 "" H 14800 2200 50  0000 C CNN
	1    14800 2200
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 56D7422C
P 14100 3350
F 0 "#PWR01" H 14100 3100 50  0001 C CNN
F 1 "GND" H 14100 3200 50  0000 C CNN
F 2 "" H 14100 3350 50  0000 C CNN
F 3 "" H 14100 3350 50  0000 C CNN
	1    14100 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	14200 1400 14100 1400
Wire Wire Line
	14200 1100 13550 1100
Wire Wire Line
	13550 1200 14200 1200
Wire Wire Line
	14200 1300 13550 1300
Wire Wire Line
	13550 1500 14200 1500
Wire Wire Line
	14200 1600 13550 1600
Wire Wire Line
	13550 1700 14200 1700
Wire Wire Line
	14200 1800 13550 1800
Wire Wire Line
	13550 1900 14200 1900
Wire Wire Line
	14200 2000 13550 2000
Wire Wire Line
	13550 2100 14200 2100
Wire Wire Line
	14200 2200 13550 2200
Wire Wire Line
	13550 2300 14200 2300
Wire Wire Line
	14200 2400 13550 2400
Wire Wire Line
	13550 2500 14200 2500
$Comp
L power:GND #PWR02
U 1 1 56D746ED
P 15100 3350
F 0 "#PWR02" H 15100 3100 50  0001 C CNN
F 1 "GND" H 15100 3200 50  0000 C CNN
F 2 "" H 15100 3350 50  0000 C CNN
F 3 "" H 15100 3350 50  0000 C CNN
	1    15100 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	15100 1200 15000 1200
Wire Wire Line
	15000 1100 15100 1100
Wire Wire Line
	15100 1100 15100 950 
$Comp
L power:+5V #PWR03
U 1 1 5C6E927F
P 15200 950
F 0 "#PWR03" H 15200 800 50  0001 C CNN
F 1 "+5V" V 15200 1150 28  0000 C CNN
F 2 "" H 15200 950 50  0000 C CNN
F 3 "" H 15200 950 50  0000 C CNN
	1    15200 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	15200 950  15200 1400
Wire Wire Line
	15200 1400 15000 1400
Wire Wire Line
	15300 950  15300 2400
Wire Wire Line
	15300 2400 15000 2400
Wire Wire Line
	15400 1300 15000 1300
Wire Wire Line
	15000 1500 15400 1500
Wire Wire Line
	15400 1600 15000 1600
Wire Wire Line
	15400 1700 15000 1700
Wire Wire Line
	15000 1800 15400 1800
Wire Wire Line
	15400 1900 15000 1900
Wire Wire Line
	15400 2000 15000 2000
Wire Wire Line
	15000 2100 15400 2100
Wire Wire Line
	15400 2200 15000 2200
Wire Wire Line
	15400 2300 15000 2300
Wire Wire Line
	15000 2500 15400 2500
Wire Notes Line
	16050 1050 15500 1050
Wire Notes Line
	15500 1050 15500 500 
Wire Notes Line
	16050 3850 13300 3850
Text Notes 14500 1100 0    60   ~ 0
1
Wire Wire Line
	10100 1300 10100 1550
Wire Wire Line
	9500 1550 9500 1800
Wire Wire Line
	9500 2200 9500 2300
Wire Wire Line
	9000 1850 9000 2300
Wire Wire Line
	5050 8200 5050 8300
Wire Wire Line
	5400 9650 5400 9550
Connection ~ 5400 8850
Wire Wire Line
	5400 8200 5400 8300
Wire Wire Line
	5400 8800 5400 8850
Wire Wire Line
	6150 8300 6150 8100
Wire Wire Line
	6150 8100 5700 8100
Wire Wire Line
	8450 1200 8450 1550
Connection ~ 8450 1550
Wire Wire Line
	8450 2150 8450 2300
Connection ~ 9500 1550
$Comp
L arduino_nano324-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue #PWR0101
U 1 1 5C6E9275
P 9000 2300
F 0 "#PWR0101" H 9000 2300 30  0001 C CNN
F 1 "GND" H 9000 2230 30  0001 C CNN
F 2 "" H 9000 2300 60  0001 C CNN
F 3 "" H 9000 2300 60  0001 C CNN
	1    9000 2300
	1    0    0    -1  
$EndComp
$Comp
L arduino_nano324-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue #PWR0102
U 1 1 5C6E9274
P 9500 2300
F 0 "#PWR0102" H 9500 2300 30  0001 C CNN
F 1 "GND" H 9500 2230 30  0001 C CNN
F 2 "" H 9500 2300 60  0001 C CNN
F 3 "" H 9500 2300 60  0001 C CNN
	1    9500 2300
	1    0    0    -1  
$EndComp
$Comp
L arduino_nano324-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue #PWR0103
U 1 1 5C6E9273
P 8450 2300
F 0 "#PWR0103" H 8450 2300 30  0001 C CNN
F 1 "GND" H 8450 2230 30  0001 C CNN
F 2 "" H 8450 2300 60  0001 C CNN
F 3 "" H 8450 2300 60  0001 C CNN
	1    8450 2300
	1    0    0    -1  
$EndComp
Text Label 8450 1200 0    60   ~ 0
Vin
$Comp
L power:+5V #PWR0104
U 1 1 5C6E9272
P 10100 1300
F 0 "#PWR0104" H 10100 1390 20  0001 C CNN
F 1 "+5V" H 10100 1390 30  0000 C CNN
F 2 "" H 10100 1300 60  0001 C CNN
F 3 "" H 10100 1300 60  0001 C CNN
	1    10100 1300
	1    0    0    -1  
$EndComp
$Comp
L arduino_nano324-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue C7
U 1 1 5335A584
P 9500 2000
F 0 "C7" H 9550 2100 50  0000 L CNN
F 1 "0.1m" H 9550 1900 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 9500 2000 60  0001 C CNN
F 3 "" H 9500 2000 60  0001 C CNN
	1    9500 2000
	1    0    0    -1  
$EndComp
$Comp
L arduino_nano324-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue C6
U 1 1 5335A581
P 8450 1950
F 0 "C6" H 8500 2050 50  0000 L CNN
F 1 "0.1m" H 8500 1850 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 8450 1950 60  0001 C CNN
F 3 "" H 8450 1950 60  0001 C CNN
	1    8450 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5CB8B066
P 5050 8200
F 0 "#PWR0105" H 5050 8290 20  0001 C CNN
F 1 "+5V" H 5050 8290 30  0000 C CNN
F 2 "" H 5050 8200 60  0001 C CNN
F 3 "" H 5050 8200 60  0001 C CNN
	1    5050 8200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5CB8B065
P 5050 9250
F 0 "D1" H 5050 9350 50  0000 C CNN
F 1 "GRED" H 5000 9100 50  0000 C CNN
F 2 "LEDs.pretty:LED-1206" H 5050 9250 60  0001 C CNN
F 3 "" H 5050 9250 60  0001 C CNN
	1    5050 9250
	0    -1   -1   0   
$EndComp
$Comp
L arduino_nano324-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue R3
U 1 1 53318025
P 5050 8550
F 0 "R3" V 5050 8550 50  0000 C CNN
F 1 "1k" V 5100 8750 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 5050 8550 60  0001 C CNN
F 3 "" H 5050 8550 60  0001 C CNN
	1    5050 8550
	1    0    0    -1  
$EndComp
$Comp
L arduino_nano324-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue #PWR0106
U 1 1 5CB8B063
P 5050 9650
F 0 "#PWR0106" H 5050 9650 30  0001 C CNN
F 1 "GND" H 5050 9580 30  0001 C CNN
F 2 "" H 5050 9650 60  0001 C CNN
F 3 "" H 5050 9650 60  0001 C CNN
	1    5050 9650
	1    0    0    -1  
$EndComp
$Comp
L arduino_nano324-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue #PWR0107
U 1 1 53317FD6
P 6150 9650
F 0 "#PWR0107" H 6150 9650 30  0001 C CNN
F 1 "GND" H 6150 9580 30  0001 C CNN
F 2 "" H 6150 9650 60  0001 C CNN
F 3 "" H 6150 9650 60  0001 C CNN
	1    6150 9650
	1    0    0    -1  
$EndComp
$Comp
L arduino_nano324-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue R5
U 1 1 53317FCD
P 6150 8550
F 0 "R5" V 6150 8550 50  0000 C CNN
F 1 "1k" V 6200 8750 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 6150 8550 60  0001 C CNN
F 3 "" H 6150 8550 60  0001 C CNN
	1    6150 8550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 53317FC2
P 6150 9150
F 0 "D2" H 6150 9250 50  0000 C CNN
F 1 "GLED" H 6000 9000 50  0000 C CNN
F 2 "LEDs.pretty:LED-1206" H 6150 9150 60  0001 C CNN
F 3 "" H 6150 9150 60  0001 C CNN
	1    6150 9150
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5CB8B05D
P 2250 900
F 0 "#PWR0109" H 2250 990 20  0001 C CNN
F 1 "+5V" H 2250 990 30  0000 C CNN
F 2 "" H 2250 900 60  0001 C CNN
F 3 "" H 2250 900 60  0001 C CNN
	1    2250 900 
	1    0    0    -1  
$EndComp
$Comp
L arduino_nano324-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue #PWR0110
U 1 1 53316F0E
P 5400 9650
F 0 "#PWR0110" H 5400 9650 30  0001 C CNN
F 1 "GND" H 5400 9580 30  0001 C CNN
F 2 "" H 5400 9650 60  0001 C CNN
F 3 "" H 5400 9650 60  0001 C CNN
	1    5400 9650
	1    0    0    -1  
$EndComp
$Comp
L arduino_nano324-rescue:SW_PUSH-switch SW1
U 1 1 53316EFA
P 5400 9250
F 0 "SW1" H 5550 9360 50  0000 C CNN
F 1 "SW_PUSH" H 5400 9170 50  0000 C CNN
F 2 "modules:3x6x2.5mm_tact_switch" H 5400 9250 60  0001 C CNN
F 3 "" H 5400 9250 60  0001 C CNN
	1    5400 9250
	0    1    1    0   
$EndComp
$Comp
L arduino_nano324-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue R4
U 1 1 53316DE9
P 5400 8550
F 0 "R4" V 5400 8550 50  0000 C CNN
F 1 "10k" V 5450 8800 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 5400 8550 60  0001 C CNN
F 3 "" H 5400 8550 60  0001 C CNN
	1    5400 8550
	1    0    0    -1  
$EndComp
Text Label 9900 7050 2    60   ~ 0
DTR
$Comp
L arduino_nano324-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue C5
U 1 1 5CB8B059
P 8450 7050
F 0 "C5" H 8500 7150 50  0000 L CNN
F 1 "0.1m" H 8500 6950 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 8450 7050 60  0001 C CNN
F 3 "" H 8450 7050 60  0001 C CNN
	1    8450 7050
	0    -1   -1   0   
$EndComp
Text Label 3950 1900 2    60   ~ 0
A5
Text Label 3950 1800 2    60   ~ 0
A4
Text Label 3950 1700 2    60   ~ 0
A3
Text Label 3950 1600 2    60   ~ 0
A2
Text Label 3950 1500 2    60   ~ 0
A1
Text Label 3950 1400 2    60   ~ 0
A0
Wire Wire Line
	1050 1400 1350 1400
Wire Wire Line
	5400 8850 5400 8950
Wire Wire Line
	8450 1550 8450 1750
$Comp
L power:+5V #PWR0111
U 1 1 53317583
P 6950 6900
F 0 "#PWR0111" H 6950 6990 20  0001 C CNN
F 1 "+5V" H 6950 6990 30  0000 C CNN
F 2 "" H 6950 6900 60  0001 C CNN
F 3 "" H 6950 6900 60  0001 C CNN
	1    6950 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 6900 6950 7000
$Comp
L arduino_nano324-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue #PWR0112
U 1 1 5C6E9267
P 6950 7300
F 0 "#PWR0112" H 6950 7300 30  0001 C CNN
F 1 "GND" H 6950 7230 30  0001 C CNN
F 2 "" H 6950 7300 60  0001 C CNN
F 3 "" H 6950 7300 60  0001 C CNN
	1    6950 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 7200 6950 7300
$Comp
L power:+5V #PWR0113
U 1 1 5C3633A9
P 5400 8200
F 0 "#PWR0113" H 5400 8290 20  0001 C CNN
F 1 "+5V" H 5400 8290 30  0000 C CNN
F 2 "" H 5400 8200 60  0001 C CNN
F 3 "" H 5400 8200 60  0001 C CNN
	1    5400 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 7050 7950 7050
$Comp
L arduino_nano324-rescue:AP1117-50-Regulator_Linear U3
U 1 1 5C385EC8
P 9000 1550
F 0 "U3" H 9000 1792 50  0000 C CNN
F 1 "AP1117-50" H 9000 1701 50  0000 C CNN
F 2 "modules:AB2_SOT223" H 9000 1750 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 9100 1300 50  0001 C CNN
	1    9000 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1550 8700 1550
Wire Wire Line
	9300 1550 9500 1550
Wire Wire Line
	6150 8800 6150 9000
Wire Wire Line
	6150 9300 6150 9650
Wire Wire Line
	5050 8800 5050 9100
Wire Wire Line
	5050 9400 5050 9650
$Comp
L arduino_nano324-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue R8
U 1 1 5C6E9276
P 6550 1700
F 0 "R8" V 6550 1700 50  0000 C CNN
F 1 "1M" V 6600 1950 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 6550 1700 60  0001 C CNN
F 3 "" H 6550 1700 60  0001 C CNN
	1    6550 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4000 800  4000
Wire Wire Line
	1350 3900 800  3900
Text Label 6150 1250 0    50   ~ 0
XTAL1
Wire Wire Line
	6150 1250 6550 1250
Wire Wire Line
	6150 2150 6550 2150
Text Label 6150 2150 0    50   ~ 0
XTAL2
Wire Wire Line
	6550 1950 6550 2150
Connection ~ 6550 2150
Wire Wire Line
	6550 1450 6550 1250
Wire Wire Line
	6550 1250 6950 1250
Wire Wire Line
	6550 2150 6950 2150
$Comp
L arduino_nano324-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue #PWR0114
U 1 1 5CB8B06D
P 7300 2300
F 0 "#PWR0114" H 7300 2300 30  0001 C CNN
F 1 "GND" H 7300 2230 30  0001 C CNN
F 2 "" H 7300 2300 60  0001 C CNN
F 3 "" H 7300 2300 60  0001 C CNN
	1    7300 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:Resonator Y1
U 1 1 5C6E9283
P 6950 1700
F 0 "Y1" V 6750 1750 50  0000 L CNN
F 1 "16Mhz" V 6600 1700 50  0000 L CNN
F 2 "modules:MURATA_CSTCE_V53" H 6925 1700 50  0001 C CNN
F 3 "~" H 6925 1700 50  0001 C CNN
	1    6950 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7150 1700 7300 1700
Wire Wire Line
	6950 1550 6950 1250
Wire Wire Line
	6950 1850 6950 2150
Wire Wire Line
	2250 900  2250 1000
Wire Wire Line
	2250 1100 2250 1000
Connection ~ 2250 1000
Wire Wire Line
	3950 2000 3350 2000
Wire Wire Line
	3350 2100 3950 2100
$Comp
L arduino_nano324-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue R7
U 1 1 5C6E9284
P 6600 9200
F 0 "R7" V 6600 9200 50  0000 C CNN
F 1 "1k" V 6650 9400 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 6600 9200 60  0001 C CNN
F 3 "" H 6600 9200 60  0001 C CNN
	1    6600 9200
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D4
U 1 1 5C6E9285
P 6600 8600
F 0 "D4" H 6600 8700 50  0000 C CNN
F 1 "YLED" H 6400 8450 50  0000 C CNN
F 2 "LEDs.pretty:LED-1206" H 6600 8600 60  0001 C CNN
F 3 "" H 6600 8600 60  0001 C CNN
	1    6600 8600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 8950 6600 8750
$Comp
L arduino_nano324-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue R6
U 1 1 5C6E9286
P 7000 9200
F 0 "R6" V 7000 9200 50  0000 C CNN
F 1 "1k" V 7050 9400 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 7000 9200 60  0001 C CNN
F 3 "" H 7000 9200 60  0001 C CNN
	1    7000 9200
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 5C6E9287
P 7000 8600
F 0 "D3" H 7000 8700 50  0000 C CNN
F 1 "YLED" H 6850 8450 50  0000 C CNN
F 2 "LEDs.pretty:LED-1206" H 7000 8600 60  0001 C CNN
F 3 "" H 7000 8600 60  0001 C CNN
	1    7000 8600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7000 8950 7000 8750
$Comp
L Device:CP C3
U 1 1 5C6E9289
P 1600 7500
F 0 "C3" H 1482 7454 50  0000 R CNN
F 1 "1u" H 1482 7545 50  0000 R CNN
F 2 "Capacitors_Tantalum_SMD.pretty:TantalC_SizeA_EIA-3216_Wave" H 1638 7350 50  0001 C CNN
F 3 "~" H 1600 7500 50  0001 C CNN
	1    1600 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 8600 9300 8600
Wire Wire Line
	8900 8800 9300 8800
Wire Wire Line
	8900 8900 9300 8900
Text Label 9300 8600 2    50   ~ 0
VBUS
Text Label 9300 8800 2    50   ~ 0
D+
Text Label 9300 8900 2    50   ~ 0
D-
Wire Wire Line
	7000 9450 7000 9750
Wire Wire Line
	6600 9450 6600 9750
$Comp
L Device:D_Schottky D6
U 1 1 5CB8B06F
P 9800 1550
F 0 "D6" H 9950 1450 50  0000 R CNN
F 1 "MBR120" H 9950 1650 50  0000 R CNN
F 2 "Diodes_SMD.pretty:SOD-123" H 9800 1550 50  0001 C CNN
F 3 "~" H 9800 1550 50  0001 C CNN
	1    9800 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	9500 1550 9650 1550
Wire Wire Line
	9950 1550 10100 1550
Wire Wire Line
	11150 1550 11150 1800
Wire Wire Line
	11150 2200 11150 2300
Wire Wire Line
	10650 1850 10650 2300
Wire Wire Line
	10100 2150 10100 2300
Connection ~ 11150 1550
$Comp
L arduino_nano324-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue #PWR0121
U 1 1 5C6E9291
P 10650 2300
F 0 "#PWR0121" H 10650 2300 30  0001 C CNN
F 1 "GND" H 10650 2230 30  0001 C CNN
F 2 "" H 10650 2300 60  0001 C CNN
F 3 "" H 10650 2300 60  0001 C CNN
	1    10650 2300
	1    0    0    -1  
$EndComp
$Comp
L arduino_nano324-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue #PWR0122
U 1 1 5C6E9292
P 11150 2300
F 0 "#PWR0122" H 11150 2300 30  0001 C CNN
F 1 "GND" H 11150 2230 30  0001 C CNN
F 2 "" H 11150 2300 60  0001 C CNN
F 3 "" H 11150 2300 60  0001 C CNN
	1    11150 2300
	1    0    0    -1  
$EndComp
$Comp
L arduino_nano324-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue #PWR0123
U 1 1 5C6E9293
P 10100 2300
F 0 "#PWR0123" H 10100 2300 30  0001 C CNN
F 1 "GND" H 10100 2230 30  0001 C CNN
F 2 "" H 10100 2300 60  0001 C CNN
F 3 "" H 10100 2300 60  0001 C CNN
	1    10100 2300
	1    0    0    -1  
$EndComp
$Comp
L arduino_nano324-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue C9
U 1 1 5C6E9294
P 11150 2000
F 0 "C9" H 11200 2100 50  0000 L CNN
F 1 "0.1m" H 11200 1900 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 11150 2000 60  0001 C CNN
F 3 "" H 11150 2000 60  0001 C CNN
	1    11150 2000
	1    0    0    -1  
$EndComp
$Comp
L arduino_nano324-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue C8
U 1 1 5C6E9295
P 10100 1950
F 0 "C8" H 10150 2050 50  0000 L CNN
F 1 "0.1m" H 10150 1850 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 10100 1950 60  0001 C CNN
F 3 "" H 10100 1950 60  0001 C CNN
	1    10100 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 1550 10100 1750
$Comp
L arduino_nano324-rescue:AP1117-50-Regulator_Linear U4
U 1 1 5C6E9296
P 10650 1550
F 0 "U4" H 10650 1792 50  0000 C CNN
F 1 "AP1117-33" H 10650 1701 50  0000 C CNN
F 2 "modules:AB2_SOT223" H 10650 1750 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 10750 1300 50  0001 C CNN
	1    10650 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 1550 10350 1550
Wire Wire Line
	10950 1550 11150 1550
Connection ~ 10100 1550
Wire Wire Line
	11150 1550 11150 1250
$Comp
L arduino_nano324-rescue:3V3-pwr #PWR0124
U 1 1 5CE8434C
P 11150 1250
F 0 "#PWR0124" H 11150 1210 30  0001 C CNN
F 1 "3V3" H 11175 1411 60  0000 C CNN
F 2 "" H 11150 1250 50  0001 C CNN
F 3 "" H 11150 1250 50  0001 C CNN
	1    11150 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1700 7300 2300
$Comp
L arduino_nano324-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue R1
U 1 1 5C6E928F
P 1800 8050
F 0 "R1" V 1800 8050 50  0000 C CNN
F 1 "22" V 1850 8250 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 1800 8050 60  0001 C CNN
F 3 "" H 1800 8050 60  0001 C CNN
	1    1800 8050
	0    1    1    0   
$EndComp
$Comp
L arduino_nano324-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue R2
U 1 1 5CB8B070
P 1800 7950
F 0 "R2" V 1800 7950 50  0000 C CNN
F 1 "22" V 1850 8150 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 1800 7950 60  0001 C CNN
F 3 "" H 1800 7950 60  0001 C CNN
	1    1800 7950
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 3100 8500 3100
Text Label 8500 3100 0    50   ~ 0
VBUS
$Comp
L Device:Fuse F1
U 1 1 5CB8B073
P 9050 3100
F 0 "F1" V 8853 3100 50  0000 C CNN
F 1 "Fuse" V 8944 3100 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD1206_Wave" V 8980 3100 50  0001 C CNN
F 3 "~" H 9050 3100 50  0001 C CNN
	1    9050 3100
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0125
U 1 1 5CFE2B31
P 9850 2950
F 0 "#PWR0125" H 9850 3040 20  0001 C CNN
F 1 "+5V" H 9850 3040 30  0000 C CNN
F 2 "" H 9850 2950 60  0001 C CNN
F 3 "" H 9850 2950 60  0001 C CNN
	1    9850 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D5
U 1 1 5CFE3369
P 9500 3100
F 0 "D5" H 9650 3000 50  0000 R CNN
F 1 "MBR120" H 9650 3200 50  0000 R CNN
F 2 "Diodes_SMD.pretty:SOD-123" H 9500 3100 50  0001 C CNN
F 3 "~" H 9500 3100 50  0001 C CNN
	1    9500 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	9350 3100 9200 3100
Wire Wire Line
	9850 2950 9850 3100
Wire Wire Line
	9850 3100 9650 3100
Text Label 3950 2000 2    60   ~ 0
A6
Text Label 3950 2100 2    60   ~ 0
A7
$Comp
L arduino_nano324-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue C2
U 1 1 5C6E9262
P 900 1950
F 0 "C2" H 950 2050 50  0000 L CNN
F 1 "0.1m" H 950 1850 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 900 1950 60  0001 C CNN
F 3 "" H 900 1950 60  0001 C CNN
	1    900  1950
	-1   0    0    1   
$EndComp
$Comp
L arduino_nano324-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue #PWR0126
U 1 1 5C6E9263
P 900 2250
F 0 "#PWR0126" H 900 2250 30  0001 C CNN
F 1 "GND" H 900 2180 30  0001 C CNN
F 2 "" H 900 2250 60  0001 C CNN
F 3 "" H 900 2250 60  0001 C CNN
	1    900  2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  2150 900  2250
Wire Wire Line
	800  4300 1350 4300
Wire Wire Line
	900  1000 900  1750
$Comp
L arduino_nano324-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue C1
U 1 1 5D428A9F
P 700 1350
F 0 "C1" H 600 1450 50  0000 L CNN
F 1 "0.1m" H 500 1250 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 700 1350 60  0001 C CNN
F 3 "" H 700 1350 60  0001 C CNN
	1    700  1350
	-1   0    0    1   
$EndComp
$Comp
L arduino_nano324-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue #PWR0127
U 1 1 5D428AA5
P 700 1650
F 0 "#PWR0127" H 700 1650 30  0001 C CNN
F 1 "GND" H 700 1580 30  0001 C CNN
F 2 "" H 700 1650 60  0001 C CNN
F 3 "" H 700 1650 60  0001 C CNN
	1    700  1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  1550 700  1650
Wire Wire Line
	700  1000 900  1000
Wire Wire Line
	700  1000 700  1150
$Comp
L MCU_Microchip_ATMEGA:ATMEGA324PB U1
U 1 1 5C3872B9
P 2350 3100
F 0 "U1" H 3150 5100 50  0000 C CNN
F 1 "ATMEGA324PB-AU" H 2850 5000 50  0000 C CNN
F 2 "Housings_QFP.pretty:TQFP-44_10x10mm_Pitch0.8mm" H 2350 3100 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8272-8-bit-AVR-microcontroller-ATmega164A_PA-324A_PA-644A_PA-1284_P_datasheet.pdf" H 2350 3100 50  0001 C CNN
	1    2350 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 4700 3950 4700
Wire Wire Line
	3350 4100 3950 4100
Wire Wire Line
	3350 1900 3950 1900
Wire Wire Line
	3350 1700 3950 1700
Wire Wire Line
	3350 1500 3950 1500
Wire Wire Line
	3350 2500 3950 2500
Wire Wire Line
	3350 2600 3950 2600
Wire Wire Line
	3350 1400 3950 1400
Wire Wire Line
	3350 1600 3950 1600
Wire Wire Line
	3350 1800 3950 1800
Wire Wire Line
	3350 4200 3950 4200
Wire Wire Line
	3350 4600 3950 4600
Wire Wire Line
	3350 4800 3950 4800
Wire Wire Line
	2050 5100 2050 5200
Wire Wire Line
	2450 1100 2450 1000
Wire Wire Line
	2450 1000 2250 1000
Wire Wire Line
	2250 1000 900  1000
Connection ~ 900  1000
Wire Wire Line
	3350 3800 3950 3800
Wire Wire Line
	3350 3600 3950 3600
Wire Wire Line
	3350 3500 3950 3500
Wire Wire Line
	3350 3700 3950 3700
Wire Wire Line
	3350 3900 3950 3900
Wire Wire Line
	3950 3400 3350 3400
Wire Wire Line
	3350 2300 3950 2300
Wire Wire Line
	3350 2400 3950 2400
Text Label 3950 4700 2    60   ~ 0
14
Text Label 3950 4800 2    60   ~ 0
15
Text Label 3950 3200 2    60   ~ 0
16
Text Label 3950 3300 2    60   ~ 0
17
Text Label 3950 3600 2    60   ~ 0
20
Text Label 3950 3800 2    60   ~ 0
22
Text Label 3950 3900 2    60   ~ 0
23
Wire Wire Line
	3350 4500 3950 4500
Text Label 800  3900 0    60   ~ 0
32
Text Label 800  4000 0    60   ~ 0
33
Wire Wire Line
	3950 4300 3350 4300
Wire Wire Line
	3950 4400 3350 4400
Connection ~ 6550 1250
Wire Wire Line
	3950 3200 3350 3200
Wire Wire Line
	3350 3300 3950 3300
Wire Wire Line
	15100 3350 15100 1200
Text Label 15400 2700 0    60   ~ 0
D15
Text Label 15400 2600 0    60   ~ 0
D14
Wire Wire Line
	15000 2700 15400 2700
Wire Wire Line
	15000 2600 15400 2600
Wire Wire Line
	15000 3000 15400 3000
Text Label 13550 2600 0    60   ~ 0
D33
Text Label 13550 2700 0    60   ~ 0
D32
Text Label 13550 2800 0    60   ~ 0
D23
Text Label 13550 2900 0    60   ~ 0
D22
Text Label 13550 3000 0    60   ~ 0
D21
Text Label 15400 2900 0    60   ~ 0
D17
Text Label 15400 2800 0    60   ~ 0
D16
Wire Wire Line
	15000 2800 15400 2800
Wire Wire Line
	15000 2900 15400 2900
Wire Wire Line
	14200 2900 13550 2900
Wire Wire Line
	14200 2600 13550 2600
Wire Wire Line
	14200 2800 13550 2800
Wire Wire Line
	13550 2700 14200 2700
Wire Wire Line
	13550 3000 14200 3000
Text Label 3950 3700 2    60   ~ 0
21
Text Label 15400 3000 0    60   ~ 0
D20
Text Label 13550 1300 0    60   ~ 0
Reset
Text Label 13550 1200 0    60   ~ 0
0
Text Label 13550 1100 0    60   ~ 0
1
Text Label 3950 2500 2    60   ~ 0
2
Text Label 3950 2600 2    60   ~ 0
3
Text Label 3950 2700 2    60   ~ 0
4
Text Label 3950 2800 2    60   ~ 0
5
Text Label 3950 2900 2    60   ~ 0
6
Text Label 3950 3000 2    60   ~ 0
7
Text Label 3950 4100 2    60   ~ 0
8
Text Label 3950 4200 2    60   ~ 0
9
Text Label 3950 4300 2    60   ~ 0
10
Text Label 3950 4500 2    60   ~ 0
12
Text Label 3950 2300 2    60   ~ 0
0
Text Label 3950 2400 2    60   ~ 0
1
Text Label 1050 1400 0    60   ~ 0
Reset
Text Label 3950 4400 2    60   ~ 0
11
Wire Wire Line
	3350 2800 3950 2800
Wire Wire Line
	3350 2900 3950 2900
Wire Wire Line
	3350 2700 3950 2700
Wire Wire Line
	3350 3000 3950 3000
Text Label 3950 4600 2    60   ~ 0
13
Text Label 4950 7000 0    60   ~ 0
12(MISO)
Text Label 6950 7100 2    60   ~ 0
11(**/MOSI)
Text Label 4950 7100 0    60   ~ 0
13(SCK)
Text Label 4950 7200 0    60   ~ 0
Reset
Text Label 7950 7050 0    60   ~ 0
Reset
Text Label 5700 8100 0    60   ~ 0
13(SCK)
Text Label 5750 8850 2    60   ~ 0
Reset
Wire Wire Line
	5400 8850 5750 8850
$Comp
L arduino_nano324-rescue:CRYSTAL-crystal X1
U 1 1 5C595B75
P 6950 3200
F 0 "X1" V 6897 3333 60  0000 L CNN
F 1 "CRYSTAL" V 7003 3333 60  0000 L CNN
F 2 "Crystals.pretty:Crystal_Round_Horizontal_3mm_BigPad" H 6950 3200 50  0001 C CNN
F 3 "" H 6950 3200 50  0001 C CNN
	1    6950 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 2900 6950 2800
Wire Wire Line
	6950 2800 6450 2800
Wire Wire Line
	6950 3500 6950 3650
Wire Wire Line
	6950 3650 6450 3650
Text Label 6450 2800 0    60   ~ 0
D22
Text Label 6450 3650 0    60   ~ 0
D23
$Comp
L arduino_nano324-rescue:3V3-pwr #PWR0128
U 1 1 5C4A9118
P 15300 950
F 0 "#PWR0128" H 15300 910 30  0001 C CNN
F 1 "3V3" H 15325 1111 60  0000 C CNN
F 2 "" H 15300 950 50  0001 C CNN
F 3 "" H 15300 950 50  0001 C CNN
	1    15300 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4100 800  4100
Wire Wire Line
	800  4200 1350 4200
Wire Wire Line
	1350 4400 800  4400
Wire Wire Line
	800  4500 1350 4500
Wire Notes Line
	13300 500  13300 3850
Wire Wire Line
	14100 1400 14100 3350
Wire Wire Line
	15000 3300 15550 3300
Wire Wire Line
	15000 3200 15550 3200
Text Label 15550 3300 2    50   ~ 0
D40
Text Label 15550 3200 2    50   ~ 0
D39
Wire Wire Line
	14200 3100 13550 3100
Wire Wire Line
	13550 3200 14200 3200
Wire Wire Line
	14200 3300 13550 3300
Wire Wire Line
	15550 3100 15000 3100
Text Label 13550 3100 0    50   ~ 0
D34
Text Label 13550 3200 0    50   ~ 0
D35
Text Label 13550 3300 0    50   ~ 0
D36
Text Label 15550 3100 2    50   ~ 0
D37
$Comp
L Connector:USB_B_Micro J1
U 1 1 5C54C2D2
P 8600 8800
F 0 "J1" H 8657 9267 50  0000 C CNN
F 1 "USB_B_Micro" H 8657 9176 50  0000 C CNN
F 2 "Connect.pretty:USB_Micro-B" H 8750 8750 50  0001 C CNN
F 3 "~" H 8750 8750 50  0001 C CNN
	1    8600 8800
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:CONN_02X03 P7
U 1 1 53318F84
P 5850 7100
F 0 "P7" H 5900 7300 60  0000 C CNN
F 1 "CONN_6" H 5850 6900 60  0000 C CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_2x03" H 5850 7100 60  0001 C CNN
F 3 "" H 5850 7100 60  0001 C CNN
	1    5850 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 7000 6950 7000
Wire Wire Line
	6100 7100 6950 7100
Wire Wire Line
	6100 7200 6950 7200
Wire Wire Line
	4950 7000 5600 7000
Wire Wire Line
	4950 7100 5600 7100
Wire Wire Line
	4950 7200 5600 7200
$Comp
L arduino_nano324-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue #PWR0108
U 1 1 5CB8B05E
P 2150 5400
F 0 "#PWR0108" H 2150 5400 30  0001 C CNN
F 1 "GND" H 2150 5330 30  0001 C CNN
F 2 "" H 2150 5400 60  0001 C CNN
F 3 "" H 2150 5400 60  0001 C CNN
	1    2150 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 5200 2150 5400
Wire Wire Line
	2150 5100 2150 5200
Connection ~ 2150 5200
Wire Wire Line
	2050 5200 2150 5200
Wire Wire Line
	3250 7750 3750 7750
Wire Wire Line
	3250 7650 3750 7650
Wire Wire Line
	3250 7950 3750 7950
Text Label 3750 7950 2    60   ~ 0
DTR
Text Label 3750 7650 2    60   ~ 0
TX
Text Label 3750 7750 2    60   ~ 0
RX
Wire Wire Line
	3250 7550 3750 7550
Wire Wire Line
	3250 7450 3750 7450
Wire Wire Line
	3250 7850 3750 7850
Wire Wire Line
	3250 8050 3750 8050
Wire Wire Line
	3250 8150 3750 8150
Wire Wire Line
	3250 9250 3700 9250
Wire Wire Line
	3700 9350 3250 9350
Wire Wire Line
	1600 7750 1600 7650
Wire Wire Line
	8500 9200 8500 9300
Wire Wire Line
	8600 9300 8600 9200
$Comp
L power:GND #PWR0115
U 1 1 5C6E928B
P 7950 9450
F 0 "#PWR0115" H 7950 9450 30  0001 C CNN
F 1 "GND" H 7950 9380 30  0001 C CNN
F 2 "" H 7950 9450 60  0001 C CNN
F 3 "" H 7950 9450 60  0001 C CNN
	1    7950 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 9450 8500 9300
Wire Wire Line
	1100 8050 1300 8050
Wire Wire Line
	1550 7950 1400 7950
Wire Wire Line
	2250 7850 2150 7850
Text Label 1800 7850 0    50   ~ 0
VBUS
Wire Wire Line
	3250 9050 3700 9050
Wire Wire Line
	3250 9150 3700 9150
Text Label 3700 9050 2    50   ~ 0
TXLED
Text Label 3700 9150 2    50   ~ 0
RXLED
Text Label 1100 7950 0    50   ~ 0
D+
Text Label 1100 8050 0    50   ~ 0
D-
Wire Wire Line
	3250 8450 3750 8450
Wire Wire Line
	3250 8350 3750 8350
Text Label 3700 9250 2    50   ~ 0
GPIO.2
Text Label 3700 9350 2    50   ~ 0
GPIO.3
Text Label 3750 8150 2    50   ~ 0
RI
Text Label 3750 8050 2    50   ~ 0
DCD
Text Label 3750 7850 2    50   ~ 0
DSR
Text Label 3750 7550 2    50   ~ 0
RTS
Text Label 3750 7450 2    50   ~ 0
CTS
Text Label 3750 8450 2    50   ~ 0
SUSPEND
Text Label 3750 8350 2    50   ~ 0
#SUSPEND
Wire Wire Line
	2050 8050 2250 8050
Wire Wire Line
	2250 7950 2050 7950
Wire Wire Line
	8500 9300 8600 9300
Connection ~ 8500 9300
$Comp
L Device:L L1
U 1 1 5CB8B072
P 8250 9300
F 0 "L1" V 8440 9300 50  0000 C CNN
F 1 "ferite_bead" V 8349 9300 50  0000 C CNN
F 2 "Choke_SMD.pretty:Choke_SMD_1206_Standard" H 8250 9300 50  0001 C CNN
F 3 "~" H 8250 9300 50  0001 C CNN
	1    8250 9300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8100 9300 7950 9300
Wire Wire Line
	7950 9300 7950 9450
$Comp
L Device:Thermistor TH1
U 1 1 5D03145C
P 1250 8550
F 0 "TH1" H 1000 8600 50  0000 L CNN
F 1 "MLC-05E" H 850 8500 50  0000 L CNN
F 2 "Resistors_SMD.pretty:R_0603_HandSoldering" H 1250 8550 50  0001 C CNN
F 3 "~" H 1250 8550 50  0001 C CNN
	1    1250 8550
	1    0    0    -1  
$EndComp
$Comp
L Device:Thermistor TH2
U 1 1 5D03180C
P 1550 8550
F 0 "TH2" H 1655 8596 50  0000 L CNN
F 1 "MLC-05E" H 1655 8505 50  0000 L CNN
F 2 "Resistors_SMD.pretty:R_0603_HandSoldering" H 1550 8550 50  0001 C CNN
F 3 "~" H 1550 8550 50  0001 C CNN
	1    1550 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 8750 1250 9000
Wire Wire Line
	1250 9000 1400 9000
Wire Wire Line
	1550 9000 1550 8750
$Comp
L power:GNDPWR #PWR0116
U 1 1 5D05925D
P 8500 9450
F 0 "#PWR0116" H 8500 9250 50  0001 C CNN
F 1 "GNDPWR" H 8700 9450 50  0000 C CNN
F 2 "" H 8500 9400 50  0001 C CNN
F 3 "" H 8500 9400 50  0001 C CNN
	1    8500 9450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0117
U 1 1 5D059CB7
P 1400 9200
F 0 "#PWR0117" H 1400 9000 50  0001 C CNN
F 1 "GNDPWR" H 1404 9274 50  0000 C CNN
F 2 "" H 1400 9150 50  0001 C CNN
F 3 "" H 1400 9150 50  0001 C CNN
	1    1400 9200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 9200 1400 9000
Connection ~ 1400 9000
Wire Wire Line
	1400 9000 1550 9000
Wire Wire Line
	1250 8350 1300 8350
Connection ~ 1300 8050
Wire Wire Line
	1300 8050 1550 8050
Wire Wire Line
	1550 8350 1400 8350
Wire Wire Line
	1400 8350 1400 7950
Connection ~ 1400 7950
Wire Wire Line
	1400 7950 1100 7950
Text Label 2100 8050 0    50   ~ 0
DD-
Text Label 2100 7950 0    50   ~ 0
DD+
Wire Wire Line
	8400 9300 8500 9300
$Comp
L Interface_USB:CP2102N-A01-GQFN28 U2
U 1 1 5C62B096
P 2750 8550
F 0 "U2" H 3100 7250 50  0000 C CNN
F 1 "CP2102N-A01-GQFN28" H 3300 7150 50  0000 C CNN
F 2 "Housings_DFN_QFN.pretty:QFN-28-1EP_5x5mm_Pitch0.5mm" H 3200 7350 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/cp2102n-datasheet.pdf" H 2800 7800 50  0001 C CNN
	1    2750 8550
	1    0    0    -1  
$EndComp
Text Label 3550 7750 2    60   ~ 0
0(Rx)
Text Label 3650 7650 2    60   ~ 0
1(Tx)
Text Label 1800 7650 0    50   ~ 0
#RST
Wire Wire Line
	2250 7650 2050 7650
Wire Wire Line
	3250 9450 3700 9450
Wire Wire Line
	3250 9550 3700 9550
Wire Wire Line
	3250 9650 3700 9650
Text Label 3700 9450 2    50   ~ 0
GPIO.4
Text Label 3700 9550 2    50   ~ 0
GPIO.5
Text Label 3700 9650 2    50   ~ 0
GPIO.6
Wire Wire Line
	2750 9850 2750 10000
Wire Wire Line
	1300 8350 1300 8050
$Comp
L Device:R R9
U 1 1 5C7F4520
P 2050 7200
F 0 "R9" V 2050 7200 50  0000 C CNN
F 1 "10k" V 2100 7400 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 2050 7200 60  0001 C CNN
F 3 "" H 2050 7200 60  0001 C CNN
	1    2050 7200
	-1   0    0    1   
$EndComp
Wire Wire Line
	2750 6750 2050 6750
Wire Wire Line
	2750 6750 2750 7250
Wire Wire Line
	1600 6750 1600 7350
Wire Wire Line
	2150 7850 2150 7150
Wire Wire Line
	2150 7150 2650 7150
Wire Wire Line
	2650 7150 2650 7250
Connection ~ 2150 7850
Wire Wire Line
	2150 7850 1800 7850
Connection ~ 2050 7650
Wire Wire Line
	2050 7650 1800 7650
Connection ~ 2050 6750
Wire Wire Line
	2050 6750 1600 6750
$Comp
L arduino_nano324-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue C4
U 1 1 5C836565
P 2050 9500
F 0 "C4" H 2100 9600 50  0000 L CNN
F 1 "0.1m" H 2100 9400 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 2050 9500 60  0001 C CNN
F 3 "" H 2050 9500 60  0001 C CNN
	1    2050 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 9300 2050 9050
Wire Wire Line
	2050 9050 1800 9050
Text Label 1800 9050 0    50   ~ 0
VBUS
Wire Wire Line
	2050 9700 2050 10000
Wire Wire Line
	2050 10000 2750 10000
Connection ~ 2750 10000
Wire Wire Line
	2750 10000 2750 10150
Wire Wire Line
	2050 7350 2050 7650
Wire Wire Line
	2050 6750 2050 7050
$Comp
L arduino_nano324-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue #PWR0118
U 1 1 5CB16E5E
P 2750 10150
F 0 "#PWR0118" H 2750 10150 30  0001 C CNN
F 1 "GND" H 2750 10080 30  0001 C CNN
F 2 "" H 2750 10150 60  0001 C CNN
F 3 "" H 2750 10150 60  0001 C CNN
	1    2750 10150
	1    0    0    -1  
$EndComp
$Comp
L arduino_nano324-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue #PWR0129
U 1 1 5CB173DB
P 1600 7750
F 0 "#PWR0129" H 1600 7750 30  0001 C CNN
F 1 "GND" H 1600 7680 30  0001 C CNN
F 2 "" H 1600 7750 60  0001 C CNN
F 3 "" H 1600 7750 60  0001 C CNN
	1    1600 7750
	1    0    0    -1  
$EndComp
Text Label 7750 4450 2    50   ~ 0
D34
Text Label 9850 4450 2    50   ~ 0
D37
Text Label 9850 5050 2    50   ~ 0
D39
$Comp
L Jumper:Jumper_3_Open JP1
U 1 1 5C7A6C18
P 7000 4450
F 0 "JP1" H 7000 4674 50  0000 C CNN
F 1 "Jumper_3_Open" H 7000 4583 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 7000 4450 50  0001 C CNN
F 3 "~" H 7000 4450 50  0001 C CNN
	1    7000 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4600 7000 4700
Wire Wire Line
	7250 4450 7750 4450
$Comp
L Jumper:Jumper_3_Open JP2
U 1 1 5CBE25D7
P 7000 5050
F 0 "JP2" H 7000 5274 50  0000 C CNN
F 1 "Jumper_3_Open" H 7000 5183 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 7000 5050 50  0001 C CNN
F 3 "~" H 7000 5050 50  0001 C CNN
	1    7000 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 5200 7000 5300
Wire Wire Line
	7250 5050 7750 5050
$Comp
L Jumper:Jumper_3_Open JP3
U 1 1 5CC13570
P 7000 5650
F 0 "JP3" H 7000 5874 50  0000 C CNN
F 1 "Jumper_3_Open" H 7000 5783 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 7000 5650 50  0001 C CNN
F 3 "~" H 7000 5650 50  0001 C CNN
	1    7000 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 5800 7000 5900
Wire Wire Line
	7250 5650 7750 5650
$Comp
L Jumper:Jumper_3_Open JP4
U 1 1 5CC472BD
P 9100 4450
F 0 "JP4" H 9100 4674 50  0000 C CNN
F 1 "Jumper_3_Open" H 9100 4583 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 9100 4450 50  0001 C CNN
F 3 "~" H 9100 4450 50  0001 C CNN
	1    9100 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 4600 9100 4700
Wire Wire Line
	9350 4450 9850 4450
$Comp
L Jumper:Jumper_3_Open JP5
U 1 1 5CC472C7
P 9100 5050
F 0 "JP5" H 9100 5274 50  0000 C CNN
F 1 "Jumper_3_Open" H 9100 5183 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 9100 5050 50  0001 C CNN
F 3 "~" H 9100 5050 50  0001 C CNN
	1    9100 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5200 9100 5300
Wire Wire Line
	9350 5050 9850 5050
$Comp
L arduino_nano324-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue #PWR0130
U 1 1 5CCB6090
P 8450 4550
F 0 "#PWR0130" H 8450 4550 30  0001 C CNN
F 1 "GND" H 8450 4480 30  0001 C CNN
F 2 "" H 8450 4550 60  0001 C CNN
F 3 "" H 8450 4550 60  0001 C CNN
	1    8450 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4550 8450 4450
$Comp
L arduino_nano324-rescue:+5V-power1-arduino_atmega328PB-rescue-arduino_atmega324-rescue #PWR0131
U 1 1 5CCEB6DB
P 6350 5550
F 0 "#PWR0131" H 6350 5640 20  0001 C CNN
F 1 "+5V" H 6350 5640 30  0000 C CNN
F 2 "" H 6350 5550 60  0001 C CNN
F 3 "" H 6350 5550 60  0001 C CNN
	1    6350 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 5550 6350 5650
$Comp
L Jumper:Jumper_3_Open JP6
U 1 1 5CDC0082
P 9100 5650
F 0 "JP6" H 9100 5874 50  0000 C CNN
F 1 "Jumper_3_Open" H 9100 5783 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 9100 5650 50  0001 C CNN
F 3 "~" H 9100 5650 50  0001 C CNN
	1    9100 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5800 9100 5900
Wire Wire Line
	9350 5650 9850 5650
Text Label 8450 5300 0    50   ~ 0
38
Text Label 6350 5900 0    50   ~ 0
17
Text Label 8450 4700 0    50   ~ 0
18
$Comp
L arduino_nano324-rescue:+5V-power1-arduino_atmega328PB-rescue-arduino_atmega324-rescue #PWR0132
U 1 1 5CE60509
P 8450 4950
F 0 "#PWR0132" H 8450 5040 20  0001 C CNN
F 1 "+5V" H 8450 5040 30  0000 C CNN
F 2 "" H 8450 4950 60  0001 C CNN
F 3 "" H 8450 4950 60  0001 C CNN
	1    8450 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4950 8450 5050
$Comp
L arduino_nano324-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue-arduino_atmega324-rescue #PWR0133
U 1 1 5CE948C6
P 8450 5750
F 0 "#PWR0133" H 8450 5750 30  0001 C CNN
F 1 "GND" H 8450 5680 30  0001 C CNN
F 2 "" H 8450 5750 60  0001 C CNN
F 3 "" H 8450 5750 60  0001 C CNN
	1    8450 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 5750 8450 5650
Text Label 8450 5900 0    50   ~ 0
39
Wire Wire Line
	6350 5650 6750 5650
Wire Wire Line
	6350 5900 7000 5900
Wire Wire Line
	8450 5050 8850 5050
Wire Wire Line
	8450 5300 9100 5300
Wire Wire Line
	8450 5650 8850 5650
Wire Wire Line
	8450 5900 9100 5900
Wire Wire Line
	8450 4450 8850 4450
Wire Wire Line
	8450 4700 9100 4700
Text Label 7750 5050 2    50   ~ 0
D35
Text Label 6350 4450 0    50   ~ 0
XTAL2
Wire Wire Line
	6350 4450 6750 4450
Wire Wire Line
	7000 4700 6350 4700
Wire Wire Line
	6750 5050 6350 5050
Wire Wire Line
	7000 5300 6350 5300
Text Label 6350 5300 0    50   ~ 0
8
Text Label 6350 4700 0    50   ~ 0
7
Text Label 6350 5050 0    50   ~ 0
XTAL1
Text Label 800  4300 0    60   ~ 0
AREF
Text Label 9850 5650 2    50   ~ 0
D40
Text Label 7750 5650 2    50   ~ 0
D36
$Comp
L power:+5V #PWR0119
U 1 1 5C82B00A
P 6600 8150
F 0 "#PWR0119" H 6600 8240 20  0001 C CNN
F 1 "+5V" H 6600 8240 30  0000 C CNN
F 2 "" H 6600 8150 60  0001 C CNN
F 3 "" H 6600 8150 60  0001 C CNN
	1    6600 8150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0120
U 1 1 5CBFCD45
P 7000 8150
F 0 "#PWR0120" H 7000 8240 20  0001 C CNN
F 1 "+5V" H 7000 8240 30  0000 C CNN
F 2 "" H 7000 8150 60  0001 C CNN
F 3 "" H 7000 8150 60  0001 C CNN
	1    7000 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 8150 6600 8450
Wire Wire Line
	7000 8450 7000 8150
$Comp
L Device:Jumper_NO_Small JP9
U 1 1 5CE55D12
P 9350 7050
F 0 "JP9" H 9350 7235 50  0000 C CNN
F 1 "Jumper" H 9350 7144 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 9350 7050 50  0001 C CNN
F 3 "~" H 9350 7050 50  0001 C CNN
	1    9350 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 7050 9900 7050
Wire Wire Line
	8650 7050 9250 7050
Text Label 6600 9750 1    60   ~ 0
TX
Text Label 7000 9750 1    60   ~ 0
RX
Text Label 3950 3400 2    60   ~ 0
18
Text Label 3950 3500 2    60   ~ 0
19
Text Label 800  4100 0    60   ~ 0
34
Text Label 800  4200 0    60   ~ 0
35
Text Label 800  4400 0    60   ~ 0
37
Text Label 800  4500 0    60   ~ 0
38
Text Label 13550 1800 0    60   ~ 0
5
$EndSCHEMATC
