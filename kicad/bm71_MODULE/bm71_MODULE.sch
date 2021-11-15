EESchema Schematic File Version 5
EELAYER 33 0
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
Connection ~ 7250 3650
Connection ~ 5650 2600
Connection ~ 5700 3800
Wire Wire Line
	4900 2200 5050 2200
Wire Wire Line
	4900 2300 5050 2300
Wire Wire Line
	4900 2400 5050 2400
Wire Wire Line
	4900 2500 5050 2500
Wire Wire Line
	4900 2600 5300 2600
Wire Wire Line
	4900 2700 5300 2700
Wire Wire Line
	4900 2800 5050 2800
Wire Wire Line
	4900 3400 5300 3400
Wire Wire Line
	4900 3500 5050 3500
Wire Wire Line
	4900 3600 5050 3600
Wire Wire Line
	4900 3700 5050 3700
Wire Wire Line
	4900 3800 5250 3800
Wire Wire Line
	4900 3900 5050 3900
Wire Wire Line
	4900 4000 5050 4000
Wire Wire Line
	5000 4750 5250 4750
Wire Wire Line
	5600 2600 5650 2600
Wire Wire Line
	5600 2700 5750 2700
Wire Wire Line
	5600 3400 5700 3400
Wire Wire Line
	5650 2200 5650 2600
Wire Wire Line
	5650 2600 6200 2600
Wire Wire Line
	5650 3800 5700 3800
Wire Wire Line
	5700 2200 5650 2200
Wire Wire Line
	5700 3400 5700 3800
Wire Wire Line
	5700 3800 5900 3800
Wire Wire Line
	5850 4750 6050 4750
Wire Wire Line
	6000 2200 6200 2200
Wire Wire Line
	6450 2500 6600 2500
Wire Wire Line
	6450 2600 6600 2600
Wire Wire Line
	6450 2700 6600 2700
Wire Wire Line
	6450 2800 6600 2800
Wire Wire Line
	6450 2900 6600 2900
Wire Wire Line
	6450 3000 6600 3000
Wire Wire Line
	6450 3100 6600 3100
Wire Wire Line
	6450 3200 6600 3200
Wire Wire Line
	6450 3300 6600 3300
Wire Wire Line
	6660 4740 6420 4740
Wire Wire Line
	7150 3600 7150 3650
Wire Wire Line
	7150 3650 7250 3650
Wire Wire Line
	7250 2100 7250 2250
Wire Wire Line
	7250 3600 7250 3650
Wire Wire Line
	7250 3650 7250 3800
Wire Wire Line
	7650 2800 7800 2800
Wire Wire Line
	7650 2900 7800 2900
Wire Wire Line
	7650 3000 7800 3000
Wire Wire Line
	7920 4740 7660 4740
Wire Wire Line
	8400 2540 8400 2850
Wire Wire Line
	8400 3250 8400 3700
Text Label 5000 4750 0    50   ~ 0
P2_0
Text Label 5050 2200 2    50   ~ 0
P1_2
Text Label 5050 2300 2    50   ~ 0
P1_3
Text Label 5050 2400 2    50   ~ 0
P1_7
Text Label 5050 2500 2    50   ~ 0
P1_6
Text Label 5050 2800 2    50   ~ 0
P3_6
Text Label 5050 3400 2    50   ~ 0
RST
Text Label 5050 3500 2    50   ~ 0
P0_0
Text Label 5050 3600 2    50   ~ 0
P0_2
Text Label 5050 3700 2    50   ~ 0
GND
Text Label 5050 3800 2    50   ~ 0
5V
Text Label 5050 3900 2    50   ~ 0
P2_7
Text Label 5050 4000 2    50   ~ 0
P2_0
Text Label 5750 2700 2    50   ~ 0
TX
Text Label 5900 3800 2    50   ~ 0
VBAT
Text Label 6050 4750 2    50   ~ 0
GND
Text Label 6200 2200 2    50   ~ 0
GND
Text Label 6200 2600 2    50   ~ 0
RX
Text Label 6420 4740 0    50   ~ 0
GND
Text Label 6450 2500 0    50   ~ 0
P0_0
Text Label 6450 2600 0    50   ~ 0
P0_2
Text Label 6450 2700 0    50   ~ 0
P1_2
Text Label 6450 2800 0    50   ~ 0
P1_3
Text Label 6450 2900 0    50   ~ 0
P1_6
Text Label 6450 3000 0    50   ~ 0
P1_7
Text Label 6450 3100 0    50   ~ 0
P2_0
Text Label 6450 3200 0    50   ~ 0
P2_7
Text Label 6450 3300 0    50   ~ 0
P3_6
Text Label 7250 2100 0    50   ~ 0
VBAT
Text Label 7250 3800 2    50   ~ 0
GND
Text Label 7800 2800 2    50   ~ 0
TX
Text Label 7800 2900 2    50   ~ 0
RX
Text Label 7800 3000 2    50   ~ 0
RST
Text Label 7920 4740 2    50   ~ 0
RST
Text Label 8400 2545 2    50   ~ 0
VBAT
Text Label 8400 3700 2    50   ~ 0
GND
$Comp
L Device:R R1
U 1 1 5E712B86
P 5450 2600
F 0 "R1" V 5656 2600 50  0000 C CNN
F 1 "1k" V 5565 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5380 2600 50  0001 C CNN
F 3 "~" H 5450 2600 50  0001 C CNN
	1    5450 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5E715B5E
P 5450 2700
F 0 "R2" V 5250 2700 50  0000 C CNN
F 1 "1k" V 5350 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5380 2700 50  0001 C CNN
F 3 "~" H 5450 2700 50  0001 C CNN
	1    5450 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5E670FDE
P 5450 3400
F 0 "R3" V 5250 3400 50  0000 C CNN
F 1 "1k" V 5350 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5380 3400 50  0001 C CNN
F 3 "~" H 5450 3400 50  0001 C CNN
	1    5450 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5E715F7C
P 5850 2200
F 0 "R4" V 6056 2200 50  0000 C CNN
F 1 "2k2" V 5965 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5780 2200 50  0001 C CNN
F 3 "~" H 5850 2200 50  0001 C CNN
	1    5850 2200
	0    -1   -1   0   
$EndComp
$Comp
L diode:DIODE D1
U 1 1 5E70ECE7
P 5450 3800
F 0 "D1" H 5450 4038 60  0000 C CNN
F 1 "DIODE" H 5450 3931 60  0000 C CNN
F 2 "Diodes_SMD:D_MicroMELF_Hadsoldering" H 5450 3800 50  0001 C CNN
F 3 "" H 5450 3800 50  0001 C CNN
	1    5450 3800
	1    0    0    -1  
$EndComp
$Comp
L c:C C1
U 1 1 5EA10D07
P 8400 3050
F 0 "C1" H 8529 3103 60  0000 L CNN
F 1 "10u/X5R" H 8529 2997 60  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_1206_HandSoldering" H 8400 3050 50  0001 C CNN
F 3 "" H 8400 3050 50  0001 C CNN
	1    8400 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP1
U 1 1 5E71E72F
P 5550 4750
F 0 "JP1" H 5550 5013 50  0000 C CNN
F 1 "MODE" H 5550 4922 50  0000 C CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_1x02" H 5550 4750 50  0001 C CNN
F 3 "~" H 5550 4750 50  0001 C CNN
	1    5550 4750
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:SPST SW1
U 1 1 5E6F1655
P 7160 4740
F 0 "SW1" H 7160 4526 50  0000 C CNN
F 1 "RESET" H 7160 4617 50  0000 C CNN
F 2 "modules:3x6x2.5mm_tact_switch" H 7160 4740 50  0000 C CNN
F 3 "" H 7160 4740 50  0000 C CNN
	1    7160 4740
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x07 J1
U 1 1 5E6F70E2
P 4700 2500
F 0 "J1" H 4619 1977 50  0000 C CNN
F 1 "Conn_01x07" H 4619 2068 50  0000 C CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_1x07" H 4700 2500 50  0001 C CNN
F 3 "~" H 4700 2500 50  0001 C CNN
	1    4700 2500
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x07 J2
U 1 1 5E6FE791
P 4700 3700
F 0 "J2" H 4619 3077 50  0000 C CNN
F 1 "Conn_01x07" H 4619 3168 50  0000 C CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_1x07" H 4700 3700 50  0001 C CNN
F 3 "~" H 4700 3700 50  0001 C CNN
	1    4700 3700
	-1   0    0    1   
$EndComp
$Comp
L BM7x:BM71 U1
U 1 1 5E6E4934
P 5300 1700
F 0 "U1" H 7125 1329 50  0000 C CNN
F 1 "BM71" H 7125 1238 50  0000 C CNN
F 2 "bluetooth:BM71" H 5300 1700 50  0001 C CNN
F 3 "" H 5300 1700 50  0001 C CNN
	1    5300 1700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
