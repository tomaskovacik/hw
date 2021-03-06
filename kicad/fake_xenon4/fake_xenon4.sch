EESchema Schematic File Version 5
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
Comment5 ""
Comment6 ""
Comment7 ""
Comment8 ""
Comment9 ""
$EndDescr
Wire Wire Line
	6300 5000 6300 5150
Wire Wire Line
	6150 5150 6300 5150
Connection ~ 6300 5150
$Comp
L power:+12V #PWR0101
U 1 1 5CFAA5E3
P 6300 2550
F 0 "#PWR0101" H 6300 2400 50  0001 C CNN
F 1 "+12V" H 6315 2723 50  0000 C CNN
F 2 "" H 6300 2550 50  0001 C CNN
F 3 "" H 6300 2550 50  0001 C CNN
	1    6300 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4200 2750 4200
Wire Wire Line
	2750 4200 2750 4550
$Comp
L power:+12V #PWR0103
U 1 1 5CFABE0A
P 3450 3650
F 0 "#PWR0103" H 3450 3500 50  0001 C CNN
F 1 "+12V" H 3465 3823 50  0000 C CNN
F 2 "" H 3450 3650 50  0001 C CNN
F 3 "" H 3450 3650 50  0001 C CNN
	1    3450 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5CFABE0B
P 2750 4550
F 0 "#PWR0104" H 2750 4300 50  0001 C CNN
F 1 "GND" H 2755 4377 50  0000 C CNN
F 2 "" H 2750 4550 50  0001 C CNN
F 3 "" H 2750 4550 50  0001 C CNN
	1    2750 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5CFABE6F
P 9600 4550
F 0 "#PWR0106" H 9600 4300 50  0001 C CNN
F 1 "GND" H 9605 4377 50  0000 C CNN
F 2 "" H 9600 4550 50  0001 C CNN
F 3 "" H 9600 4550 50  0001 C CNN
	1    9600 4550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5CFABE70
P 10000 4100
F 0 "J2" H 10108 4381 50  0000 C CNN
F 1 "Conn_01x03_Male" H 10108 4290 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 10000 4100 50  0001 C CNN
F 3 "~" H 10000 4100 50  0001 C CNN
	1    10000 4100
	-1   0    0    1   
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny25-20PU U2
U 1 1 5CFAF606
P 4450 6200
F 0 "U2" H 3921 6246 50  0000 R CNN
F 1 "ATtiny25-20PU" H 3921 6155 50  0000 R CNN
F 2 "Housings_SOIC:SO-8_5.3x6.2mm_Pitch1.27mm" H 4450 6200 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 4450 6200 50  0001 C CNN
	1    4450 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 6050 1750 5850
Wire Wire Line
	3100 6050 3100 5850
$Comp
L power:GND #PWR0107
U 1 1 5CFB530C
P 6300 5400
F 0 "#PWR0107" H 6300 5150 50  0001 C CNN
F 1 "GND" H 6305 5227 50  0000 C CNN
F 2 "" H 6300 5400 50  0001 C CNN
F 3 "" H 6300 5400 50  0001 C CNN
	1    6300 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5CFB5831
P 2450 6700
F 0 "#PWR0110" H 2450 6450 50  0001 C CNN
F 1 "GND" H 2455 6527 50  0000 C CNN
F 2 "" H 2450 6700 50  0001 C CNN
F 3 "" H 2450 6700 50  0001 C CNN
	1    2450 6700
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:5V #PWR0118
U 1 1 5CFB80FC
P 3100 5850
F 0 "#PWR0118" H 3100 5950 40  0001 C CNN
F 1 "5V" H 3109 6006 40  0000 C CNN
F 2 "" H 3100 5850 60  0000 C CNN
F 3 "" H 3100 5850 60  0000 C CNN
	1    3100 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5CFB8BCC
P 1950 6300
F 0 "C1" H 2065 6346 50  0000 L CNN
F 1 "100n" H 2065 6255 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 1988 6150 50  0001 C CNN
F 3 "~" H 1950 6300 50  0001 C CNN
	1    1950 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 6150 1950 6050
Wire Wire Line
	1950 6050 1750 6050
Wire Wire Line
	2950 6150 2950 6050
Wire Wire Line
	2950 6050 3100 6050
Wire Wire Line
	2950 6450 2950 6600
Wire Wire Line
	2950 6600 2450 6600
Connection ~ 2450 6600
Wire Wire Line
	2450 6600 2450 6700
Wire Wire Line
	2450 6600 1950 6600
Wire Wire Line
	1950 6600 1950 6450
$Comp
L Device:C C2
U 1 1 5CFB9BF0
P 2950 6300
F 0 "C2" H 3065 6346 50  0000 L CNN
F 1 "100n" H 3065 6255 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 2988 6150 50  0001 C CNN
F 3 "~" H 2950 6300 50  0001 C CNN
	1    2950 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 5600 4450 5450
Wire Wire Line
	4450 6800 4450 6900
$Comp
L power:GND #PWR0119
U 1 1 5CFBA1F3
P 4450 7050
F 0 "#PWR0119" H 4450 6800 50  0001 C CNN
F 1 "GND" H 4455 6877 50  0000 C CNN
F 2 "" H 4450 7050 50  0001 C CNN
F 3 "" H 4450 7050 50  0001 C CNN
	1    4450 7050
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:5V #PWR0120
U 1 1 5CFBAA80
P 4450 5300
F 0 "#PWR0120" H 4450 5400 40  0001 C CNN
F 1 "5V" H 4459 5456 40  0000 C CNN
F 2 "" H 4450 5300 60  0000 C CNN
F 3 "" H 4450 5300 60  0000 C CNN
	1    4450 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5CFBB4FF
P 5850 3650
F 0 "D1" V 5800 3250 50  0000 L CNN
F 1 "1N4407" V 5900 3150 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA_Handsoldering" H 5850 3650 50  0001 C CNN
F 3 "~" H 5850 3650 50  0001 C CNN
	1    5850 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 4150 6300 4150
Wire Wire Line
	6300 4150 6300 4600
Wire Wire Line
	5850 3800 5850 4150
$Comp
L Device:R R2
U 1 1 5CFBCDC7
P 6000 5150
F 0 "R2" V 5793 5150 50  0000 C CNN
F 1 "100k" V 5884 5150 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" V 5930 5150 50  0001 C CNN
F 3 "~" H 6000 5150 50  0001 C CNN
	1    6000 5150
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 5CFA984E
P 2200 4100
F 0 "J1" H 2308 4381 50  0000 C CNN
F 1 "Conn_01x03_Male" H 2308 4290 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 2200 4100 50  0001 C CNN
F 3 "~" H 2200 4100 50  0001 C CNN
	1    2200 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3200 6800 3150
Wire Wire Line
	9450 3150 9450 4100
Wire Wire Line
	6300 4150 6300 4100
Connection ~ 6300 4150
$Comp
L fake_xenon4-rescue:Fujitsu_NA-Series-Relay U3
U 1 1 5CFA79D1
P 6600 3700
F 0 "U3" H 7128 3796 50  0000 L CNN
F 1 "Fujitsu_NA-Series" H 7128 3705 50  0000 L CNN
F 2 "modules:FUJITSU-NA-SERIES" H 6600 3700 50  0001 C CNN
F 3 "" H 6600 3700 50  0001 C CNN
	1    6600 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2700 6300 2700
Wire Wire Line
	6300 2700 6300 2550
Connection ~ 6300 2700
Wire Wire Line
	5850 2700 5850 3500
Wire Wire Line
	6300 2700 6300 3200
Wire Wire Line
	9600 4200 9800 4200
Wire Wire Line
	9800 4100 9450 4100
Connection ~ 4450 6900
Wire Wire Line
	4450 6900 4450 7050
Connection ~ 4450 5450
Wire Wire Line
	4450 5450 4450 5300
Wire Wire Line
	5050 6300 5350 6300
Wire Wire Line
	5950 6900 4450 6900
Wire Wire Line
	5050 6100 5150 6100
$Comp
L Jumper:Jumper_3_Bridged12 JP1
U 1 1 5D19D87C
P 5950 6100
F 0 "JP1" V 5904 6167 50  0000 L CNN
F 1 "Jumper_3_Bridged12" V 5995 6167 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5950 6100 50  0001 C CNN
F 3 "~" H 5950 6100 50  0001 C CNN
	1    5950 6100
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x04_Female J4
U 1 1 5D19FDC9
P 5250 6850
F 0 "J4" V 5096 6562 50  0000 R CNN
F 1 "Conn_01x04_Female" V 5187 6562 50  0000 R CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_1x04" H 5250 6850 50  0001 C CNN
F 3 "~" H 5250 6850 50  0001 C CNN
	1    5250 6850
	0    -1   1    0   
$EndComp
Wire Wire Line
	5150 6650 5150 6400
Wire Wire Line
	5150 6400 5050 6400
Wire Wire Line
	5050 6200 5250 6200
Wire Wire Line
	5250 6200 5250 6650
Wire Wire Line
	5350 6650 5350 6300
Connection ~ 5350 6300
$Comp
L Connector:Conn_01x04_Female J3
U 1 1 5D1AB258
P 5250 5150
F 0 "J3" V 5096 4862 50  0000 R CNN
F 1 "Conn_01x04_Female" V 5400 5400 50  0000 R CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_1x04" H 5250 5150 50  0001 C CNN
F 3 "~" H 5250 5150 50  0001 C CNN
	1    5250 5150
	0    1    -1   0   
$EndComp
Wire Wire Line
	5450 6650 5450 6550
Wire Wire Line
	5450 6550 5950 6550
Wire Wire Line
	5950 6550 5950 6900
$Comp
L Device:R R1
U 1 1 5CFA7D68
P 5600 6300
F 0 "R1" V 5393 6300 50  0000 C CNN
F 1 "10k" V 5484 6300 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" V 5530 6300 50  0001 C CNN
F 3 "~" H 5600 6300 50  0001 C CNN
	1    5600 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 6300 5350 6300
Wire Wire Line
	5750 4800 5750 5150
Connection ~ 5750 5150
Wire Wire Line
	5750 5150 5750 6300
Wire Wire Line
	5750 5150 5850 5150
Wire Wire Line
	5750 4800 6000 4800
Wire Wire Line
	5050 5350 5050 5450
Wire Wire Line
	5050 5450 4450 5450
Wire Wire Line
	5150 5350 5150 6100
Connection ~ 5150 6100
Wire Wire Line
	5150 6100 5800 6100
Wire Wire Line
	5250 5350 5250 6000
Wire Wire Line
	5250 6000 5050 6000
Wire Wire Line
	5050 5900 5350 5900
Wire Wire Line
	5350 5900 5350 5350
Wire Wire Line
	6300 5400 6300 5150
$Comp
L MAX809_810:MAX809 U4
U 1 1 5D1B5336
P 8950 5400
F 0 "U4" H 8722 5346 50  0000 R CNN
F 1 "MAX809" H 8722 5255 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD.pretty:SOT-23_Handsoldering" H 8950 5400 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX803-MAX810Z.pdf" H 8950 5400 50  0001 C CNN
	1    8950 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 6400 5800 6400
Connection ~ 5150 6400
Text Label 5800 6400 2    50   ~ 0
RESET
Wire Wire Line
	8900 4800 8900 5050
Wire Wire Line
	8900 5950 8900 6100
$Comp
L power:GND #PWR03
U 1 1 5D1B7968
P 8900 6100
F 0 "#PWR03" H 8900 5850 50  0001 C CNN
F 1 "GND" H 8905 5927 50  0000 C CNN
F 2 "" H 8900 6100 50  0001 C CNN
F 3 "" H 8900 6100 50  0001 C CNN
	1    8900 6100
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:5V #PWR02
U 1 1 5D1B7B3D
P 8900 4800
F 0 "#PWR02" H 8900 4900 40  0001 C CNN
F 1 "5V" H 8909 4956 40  0000 C CNN
F 2 "" H 8900 4800 60  0000 C CNN
F 3 "" H 8900 4800 60  0000 C CNN
	1    8900 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 5500 10050 5500
Text Label 10050 5500 2    50   ~ 0
RESET
$Comp
L Transistor_FET:BSS138 Q1
U 1 1 5D1BA9B5
P 6200 4800
F 0 "Q1" H 6406 4846 50  0000 L CNN
F 1 "BSS138" H 6406 4755 50  0000 L CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6.pretty:SOT-23_Handsoldering" H 6400 4725 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 6200 4800 50  0001 L CNN
	1    6200 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 5D1C05B5
P 1600 6300
F 0 "C4" H 1718 6346 50  0000 L CNN
F 1 "100u/25V" H 1718 6255 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-D_EIA-7343-31_Hand" H 1638 6150 50  0001 C CNN
F 3 "~" H 1600 6300 50  0001 C CNN
	1    1600 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 6150 1600 6050
Wire Wire Line
	1600 6050 1750 6050
Connection ~ 1750 6050
Wire Wire Line
	1600 6450 1600 6600
Wire Wire Line
	1600 6600 1950 6600
Connection ~ 1950 6600
$Comp
L power:+12V #PWR0115
U 1 1 5CFB7383
P 1750 5850
F 0 "#PWR0115" H 1750 5700 50  0001 C CNN
F 1 "+12V" H 1765 6023 50  0000 C CNN
F 2 "" H 1750 5850 50  0001 C CNN
F 3 "" H 1750 5850 50  0001 C CNN
	1    1750 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:D D2
U 1 1 5D1C303A
P 3100 4000
F 0 "D2" V 3050 3600 50  0000 L CNN
F 1 "1N44407" V 3150 3500 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA_Handsoldering" H 3100 4000 50  0001 C CNN
F 3 "~" H 3100 4000 50  0001 C CNN
	1    3100 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 4000 3450 4000
Wire Wire Line
	3450 4000 3450 3650
$Comp
L open-project:AP1117 U1
U 1 1 5D2151A0
P 2450 6050
F 0 "U1" H 2450 6571 50  0000 C CNN
F 1 "AP1117" H 2450 6500 50  0000 C CNN
F 2 "modules:AB2_SOT223" H 2450 6381 60  0000 C CNN
F 3 "" H 2450 6050 60  0000 C CNN
	1    2450 6050
	1    0    0    -1  
$EndComp
Connection ~ 2950 6050
Wire Wire Line
	2450 6350 2450 6600
Connection ~ 1950 6050
Wire Wire Line
	2050 6050 1950 6050
Wire Wire Line
	2850 6050 2950 6050
Wire Wire Line
	9800 4000 9600 4000
$Comp
L power:+12VA #PWR04
U 1 1 5D1C3D35
P 9600 3650
F 0 "#PWR04" H 9600 3500 50  0001 C CNN
F 1 "+12VA" H 9615 3823 50  0000 C CNN
F 2 "" H 9600 3650 50  0001 C CNN
F 3 "" H 9600 3650 50  0001 C CNN
	1    9600 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 4000 9600 3650
Wire Wire Line
	2750 4000 2950 4000
Wire Wire Line
	2400 4000 2750 4000
Connection ~ 2750 4000
Wire Wire Line
	2750 3650 2750 4000
$Comp
L power:+12VA #PWR01
U 1 1 5D1C3840
P 2750 3650
F 0 "#PWR01" H 2750 3500 50  0001 C CNN
F 1 "+12VA" H 2765 3823 50  0000 C CNN
F 2 "" H 2750 3650 50  0001 C CNN
F 3 "" H 2750 3650 50  0001 C CNN
	1    2750 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4100 3750 4100
Wire Wire Line
	3750 3050 3750 4100
Wire Wire Line
	6650 3050 3750 3050
Wire Wire Line
	6650 3200 6650 3050
Wire Wire Line
	6950 3200 7400 3200
$Comp
L Device:R_POT RV1
U 1 1 5CFB0E6A
P 8250 4300
F 0 "RV1" H 8181 4346 50  0000 R CNN
F 1 "R_POT" H 8181 4255 50  0000 R CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Piher_PT-6v_Horizontal" H 8250 4300 50  0001 C CNN
F 3 "~" H 8250 4300 50  0001 C CNN
	1    8250 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7400 3200 7400 4300
Connection ~ 5950 6550
Wire Wire Line
	5950 6350 5950 6550
Connection ~ 5050 5450
Wire Wire Line
	5950 5450 5050 5450
Wire Wire Line
	5950 5850 5950 5450
Wire Wire Line
	9600 4200 9600 4350
Wire Wire Line
	9600 4350 9600 4550
Connection ~ 9600 4350
Wire Wire Line
	8650 4350 9600 4350
Wire Wire Line
	6800 3150 8650 3150
Wire Wire Line
	8650 3150 9450 3150
Connection ~ 8650 3150
Wire Wire Line
	8650 3650 8650 4350
Wire Wire Line
	8650 3350 8650 3150
$Comp
L Device:C C3
U 1 1 5CFA6F2B
P 8650 3500
F 0 "C3" H 8765 3546 50  0000 L CNN
F 1 "100n" H 8765 3455 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 8688 3350 50  0001 C CNN
F 3 "~" H 8650 3500 50  0001 C CNN
	1    8650 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 5150 6300 5150
Wire Wire Line
	6950 5600 6950 5150
Wire Wire Line
	7750 5600 6950 5600
Wire Wire Line
	7750 5450 7750 5600
$Comp
L Device:R R6
U 1 1 5D1B26D6
P 7750 5300
F 0 "R6" V 7543 5300 50  0000 C CNN
F 1 "R" V 7634 5300 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" V 7680 5300 50  0001 C CNN
F 3 "~" H 7750 5300 50  0001 C CNN
	1    7750 5300
	-1   0    0    1   
$EndComp
Connection ~ 7750 4750
Wire Wire Line
	7750 4750 7750 4700
Wire Wire Line
	8250 4750 7750 4750
Wire Wire Line
	7750 5150 7750 4750
Wire Wire Line
	8250 4450 8250 4750
Connection ~ 6300 2550
Wire Wire Line
	8250 2550 8000 2550
Wire Wire Line
	8250 2350 8250 2550
Wire Wire Line
	7500 2550 6300 2550
$Comp
L Jumper:Jumper_3_Bridged12 JP2
U 1 1 5D1B036E
P 7750 2550
F 0 "JP2" V 7704 2617 50  0000 L CNN
F 1 "Jumper_3_Bridged12" V 7795 2617 50  0000 L CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_1x03" H 7750 2550 50  0001 C CNN
F 3 "~" H 7750 2550 50  0001 C CNN
	1    7750 2550
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:5V #PWR0116
U 1 1 5CFB1058
P 8250 2350
F 0 "#PWR0116" H 8250 2450 40  0001 C CNN
F 1 "5V" H 8259 2506 40  0000 C CNN
F 2 "" H 8250 2350 60  0000 C CNN
F 3 "" H 8250 2350 60  0000 C CNN
	1    8250 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3300 7750 2700
$Comp
L Device:R R5
U 1 1 5D1B1CBB
P 7750 3450
F 0 "R5" V 7543 3450 50  0000 C CNN
F 1 "R" V 7634 3450 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" V 7680 3450 50  0001 C CNN
F 3 "~" H 7750 3450 50  0001 C CNN
	1    7750 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	7400 4300 7750 4300
Wire Wire Line
	7750 4300 8100 4300
Connection ~ 7750 4300
Wire Wire Line
	7750 4200 7750 4300
Wire Wire Line
	7750 4300 7750 4400
$EndSCHEMATC
