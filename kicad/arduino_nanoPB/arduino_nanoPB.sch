EESchema Schematic File Version 4
LIBS:arduino_nanoPB-cache
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
Text Label 13500 1100 0    60   ~ 0
1(Tx)
Text Label 13500 1200 0    60   ~ 0
0(Rx)
Text Label 13500 1300 0    60   ~ 0
Reset
Text Label 13500 1500 0    60   ~ 0
2
Text Label 13500 1600 0    60   ~ 0
3(**)
Text Label 13500 1700 0    60   ~ 0
4
Text Label 15600 2500 2    60   ~ 0
13(SCK)
Text Label 15600 2200 2    60   ~ 0
A0
Text Label 15600 2100 2    60   ~ 0
A1
Text Label 15600 2000 2    60   ~ 0
A2
Text Label 15600 1900 2    60   ~ 0
A3
Text Label 15600 1800 2    60   ~ 0
A4
Text Label 15600 1700 2    60   ~ 0
A5
Text Label 15600 1600 2    60   ~ 0
A6
Text Label 15600 1500 2    60   ~ 0
A7
Text Label 15600 2300 2    60   ~ 0
AREF
Text Label 15600 1300 2    60   ~ 0
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
U 1 1 56D73ADD
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
U 1 1 56D73D86
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
L Connector_Generic:Conn_01x16 P1
U 1 1 56D73FAC
P 14400 1800
F 0 "P1" H 14400 2600 50  0000 C CNN
F 1 "Digital" V 14500 1800 50  0000 C CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_1x16" H 14400 1800 50  0001 C CNN
F 3 "" H 14400 1800 50  0000 C CNN
	1    14400 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x16 P2
U 1 1 56D740C7
P 14800 1800
F 0 "P2" H 14800 2600 50  0000 C CNN
F 1 "Analog" V 14900 1800 50  0000 C CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_1x16" H 14800 1800 50  0001 C CNN
F 3 "" H 14800 1800 50  0000 C CNN
	1    14800 1800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 56D7422C
P 14100 2650
F 0 "#PWR01" H 14100 2400 50  0001 C CNN
F 1 "GND" H 14100 2500 50  0000 C CNN
F 2 "" H 14100 2650 50  0000 C CNN
F 3 "" H 14100 2650 50  0000 C CNN
	1    14100 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	14200 1400 14100 1400
Wire Wire Line
	14200 1100 13500 1100
Wire Wire Line
	13500 1200 14200 1200
Wire Wire Line
	14200 1300 13500 1300
Wire Wire Line
	13500 1500 14200 1500
Wire Wire Line
	14200 1600 13500 1600
Wire Wire Line
	13500 1700 14200 1700
Wire Wire Line
	14200 1800 13500 1800
Wire Wire Line
	13500 1900 14200 1900
Wire Wire Line
	14200 2000 13500 2000
Wire Wire Line
	13500 2100 14200 2100
Wire Wire Line
	14200 2200 13500 2200
Wire Wire Line
	13500 2300 14200 2300
Wire Wire Line
	14200 2400 13500 2400
Wire Wire Line
	13500 2500 14200 2500
Wire Wire Line
	15100 1200 15000 1200
Wire Wire Line
	15000 1100 15100 1100
Wire Wire Line
	15100 1100 15100 950 
$Comp
L power:+5V #PWR03
U 1 1 56D747E8
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
	15600 1300 15000 1300
Wire Wire Line
	15000 1500 15600 1500
Wire Wire Line
	15600 1600 15000 1600
Wire Wire Line
	15600 1700 15000 1700
Wire Wire Line
	15000 1800 15600 1800
Wire Wire Line
	15600 1900 15000 1900
Wire Wire Line
	15600 2000 15000 2000
Wire Wire Line
	15000 2100 15600 2100
Wire Wire Line
	15600 2200 15000 2200
Wire Wire Line
	15600 2300 15000 2300
Wire Wire Line
	15000 2500 15600 2500
Wire Notes Line
	16050 1050 15500 1050
Wire Notes Line
	15500 1050 15500 500 
Wire Notes Line
	16050 2850 13300 2850
Wire Notes Line
	13300 2850 13300 500 
Text Notes 14500 1100 0    60   ~ 0
1
Wire Wire Line
	4650 8550 4650 8650
Wire Wire Line
	5950 7800 5500 7800
Wire Wire Line
	7400 7900 6750 7900
Wire Wire Line
	5950 8000 5500 8000
Wire Wire Line
	5100 10000 5100 9900
Connection ~ 5100 9200
Wire Wire Line
	5200 3850 5800 3850
Wire Wire Line
	5200 3650 5800 3650
Wire Wire Line
	5200 3450 5800 3450
Wire Wire Line
	5200 3350 5800 3350
Wire Wire Line
	5200 3550 5800 3550
Wire Wire Line
	5200 3750 5800 3750
Wire Wire Line
	5100 8550 5100 8650
Wire Wire Line
	5100 9150 5100 9200
Wire Wire Line
	5950 7900 5500 7900
Wire Wire Line
	5700 8650 5700 8450
Wire Wire Line
	5700 8450 5300 8450
Wire Wire Line
	7400 7800 6750 7800
$Comp
L arduino_nanoPB-rescue:CONN_3X2-gencon P7
U 1 1 53318F84
P 6350 7900
F 0 "P7" H 6400 8100 60  0000 C CNN
F 1 "CONN_6" H 6350 7700 60  0000 C CNN
F 2 "Pin_Headers.pretty:Pin_Header_Straight_2x03" H 6350 7900 60  0001 C CNN
F 3 "" H 6350 7900 60  0001 C CNN
	1    6350 7900
	1    0    0    -1  
$EndComp
$Comp
L arduino_nanoPB-rescue:+5V-power1-arduino_atmega328PB-rescue #PWR0105
U 1 1 53318048
P 4650 8550
F 0 "#PWR0105" H 4650 8640 20  0001 C CNN
F 1 "+5V" H 4650 8640 30  0000 C CNN
F 2 "" H 4650 8550 60  0001 C CNN
F 3 "" H 4650 8550 60  0001 C CNN
	1    4650 8550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 53318026
P 4650 9600
F 0 "D1" H 4650 9700 50  0000 C CNN
F 1 "Green RED" H 4600 9450 50  0000 C CNN
F 2 "LEDs.pretty:LED-1206" H 4650 9600 60  0001 C CNN
F 3 "" H 4650 9600 60  0001 C CNN
	1    4650 9600
	0    -1   -1   0   
$EndComp
$Comp
L arduino_nanoPB-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue R3
U 1 1 53318025
P 4650 8900
F 0 "R3" V 4650 8900 50  0000 C CNN
F 1 "1k" V 4700 9100 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 4650 8900 60  0001 C CNN
F 3 "" H 4650 8900 60  0001 C CNN
	1    4650 8900
	1    0    0    -1  
$EndComp
$Comp
L arduino_nanoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0106
U 1 1 53318024
P 4650 10000
F 0 "#PWR0106" H 4650 10000 30  0001 C CNN
F 1 "GND" H 4650 9930 30  0001 C CNN
F 2 "" H 4650 10000 60  0001 C CNN
F 3 "" H 4650 10000 60  0001 C CNN
	1    4650 10000
	1    0    0    -1  
$EndComp
$Comp
L arduino_nanoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0107
U 1 1 53317FD6
P 5700 10000
F 0 "#PWR0107" H 5700 10000 30  0001 C CNN
F 1 "GND" H 5700 9930 30  0001 C CNN
F 2 "" H 5700 10000 60  0001 C CNN
F 3 "" H 5700 10000 60  0001 C CNN
	1    5700 10000
	1    0    0    -1  
$EndComp
$Comp
L arduino_nanoPB-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue R7
U 1 1 53317FCD
P 5700 8900
F 0 "R7" V 5700 8900 50  0000 C CNN
F 1 "1k" V 5750 9100 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 5700 8900 60  0001 C CNN
F 3 "" H 5700 8900 60  0001 C CNN
	1    5700 8900
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 53317FC2
P 5700 9500
F 0 "D2" H 5700 9600 50  0000 C CNN
F 1 "Red LED" H 5550 9350 50  0000 C CNN
F 2 "LEDs.pretty:LED-1206" H 5700 9500 60  0001 C CNN
F 3 "" H 5700 9500 60  0001 C CNN
	1    5700 9500
	0    -1   -1   0   
$EndComp
$Comp
L arduino_nanoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0108
U 1 1 53317494
P 3700 5500
F 0 "#PWR0108" H 3700 5500 30  0001 C CNN
F 1 "GND" H 3700 5430 30  0001 C CNN
F 2 "" H 3700 5500 60  0001 C CNN
F 3 "" H 3700 5500 60  0001 C CNN
	1    3700 5500
	1    0    0    -1  
$EndComp
$Comp
L arduino_nanoPB-rescue:+5V-power1-arduino_atmega328PB-rescue #PWR0109
U 1 1 533171DD
P 3600 1950
F 0 "#PWR0109" H 3600 2040 20  0001 C CNN
F 1 "+5V" H 3600 2040 30  0000 C CNN
F 2 "" H 3600 1950 60  0001 C CNN
F 3 "" H 3600 1950 60  0001 C CNN
	1    3600 1950
	1    0    0    -1  
$EndComp
Text Label 2300 2750 0    60   ~ 0
AREF
$Comp
L arduino_nanoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0110
U 1 1 53316F0E
P 5100 10000
F 0 "#PWR0110" H 5100 10000 30  0001 C CNN
F 1 "GND" H 5100 9930 30  0001 C CNN
F 2 "" H 5100 10000 60  0001 C CNN
F 3 "" H 5100 10000 60  0001 C CNN
	1    5100 10000
	1    0    0    -1  
$EndComp
$Comp
L arduino_nanoPB-rescue:SW_PUSH-switch SW1
U 1 1 53316EFA
P 5100 9600
F 0 "SW1" H 5250 9710 50  0000 C CNN
F 1 "SW_PUSH" H 5100 9520 50  0000 C CNN
F 2 "modules:3x6x2.5mm_tact_switch" H 5100 9600 60  0001 C CNN
F 3 "" H 5100 9600 60  0001 C CNN
	1    5100 9600
	0    1    1    0   
$EndComp
$Comp
L arduino_nanoPB-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue R6
U 1 1 53316DE9
P 5100 8900
F 0 "R6" V 5100 8900 50  0000 C CNN
F 1 "10k" V 5150 9150 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 5100 8900 60  0001 C CNN
F 3 "" H 5100 8900 60  0001 C CNN
	1    5100 8900
	1    0    0    -1  
$EndComp
Text Label 9700 8800 0    60   ~ 0
DTR
$Comp
L arduino_nanoPB-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue C8
U 1 1 53316DBF
P 8800 8800
F 0 "C8" H 8850 8900 50  0000 L CNN
F 1 "0.1m" H 8850 8700 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 8800 8800 60  0001 C CNN
F 3 "" H 8800 8800 60  0001 C CNN
	1    8800 8800
	0    -1   -1   0   
$EndComp
Text Label 5800 3850 2    60   ~ 0
A5
Text Label 5800 3750 2    60   ~ 0
A4
Text Label 5800 3650 2    60   ~ 0
A3
Text Label 5800 3550 2    60   ~ 0
A2
Text Label 5800 3450 2    60   ~ 0
A1
Text Label 5800 3350 2    60   ~ 0
A0
Wire Wire Line
	5800 3950 5200 3950
Wire Wire Line
	5100 9200 5100 9300
$Comp
L arduino_nanoPB-rescue:+5V-power1-arduino_atmega328PB-rescue #PWR0111
U 1 1 53317583
P 7400 7700
F 0 "#PWR0111" H 7400 7790 20  0001 C CNN
F 1 "+5V" H 7400 7790 30  0000 C CNN
F 2 "" H 7400 7700 60  0001 C CNN
F 3 "" H 7400 7700 60  0001 C CNN
	1    7400 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 7700 7400 7800
$Comp
L arduino_nanoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0112
U 1 1 53317586
P 7400 8100
F 0 "#PWR0112" H 7400 8100 30  0001 C CNN
F 1 "GND" H 7400 8030 30  0001 C CNN
F 2 "" H 7400 8100 60  0001 C CNN
F 3 "" H 7400 8100 60  0001 C CNN
	1    7400 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 8000 7400 8100
Wire Wire Line
	6750 8000 7400 8000
$Comp
L arduino_nanoPB-rescue:+5V-power1-arduino_atmega328PB-rescue #PWR0113
U 1 1 5C3633A9
P 5100 8550
F 0 "#PWR0113" H 5100 8640 20  0001 C CNN
F 1 "+5V" H 5100 8640 30  0000 C CNN
F 2 "" H 5100 8550 60  0001 C CNN
F 3 "" H 5100 8550 60  0001 C CNN
	1    5100 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 8800 8300 8800
Wire Wire Line
	5100 9200 5400 9200
Wire Wire Line
	5700 9150 5700 9350
Wire Wire Line
	5700 9650 5700 10000
Wire Wire Line
	4650 9150 4650 9450
Wire Wire Line
	4650 9750 4650 10000
Wire Wire Line
	5200 3050 5800 3050
Wire Wire Line
	5200 3150 5800 3150
Text Label 5800 3050 2    50   ~ 0
XTAL1
Text Label 5800 3150 2    50   ~ 0
XTAL2
Wire Wire Line
	9000 8800 9100 8800
Wire Wire Line
	9500 8800 9850 8800
$Comp
L arduino_nanoPB-rescue:ATMEGA328PB-AU-MCU_Atmel_ATMEGA U1
U 1 1 5C5D46B1
P 3900 3650
F 0 "U1" H 4700 5150 50  0000 C CNN
F 1 "ATMEGA328PB-AU" H 4700 5050 50  0000 C CNN
F 2 "Housings_QFP.pretty:TQFP-32_7x7mm_Pitch0.8mm" H 3850 2250 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-42397-8-bit-avr-microcontroller-atmega328pb_datasheet.pdf" H 3600 3700 50  0001 C CNN
	1    3900 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 5150 3700 5300
Wire Wire Line
	3800 5150 3800 5300
Wire Wire Line
	3800 5300 3700 5300
Connection ~ 3700 5300
Wire Wire Line
	3700 5300 3700 5500
Wire Wire Line
	3600 1950 3600 2050
Wire Wire Line
	3800 2150 3800 2050
Wire Wire Line
	3800 2050 3600 2050
Connection ~ 3600 2050
Wire Wire Line
	3600 2050 3600 2150
Wire Wire Line
	2200 4450 2600 4450
Wire Wire Line
	2600 4550 2200 4550
$Comp
L arduino_nanoPB-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue R9
U 1 1 5C763653
P 6400 9500
F 0 "R9" V 6400 9500 50  0000 C CNN
F 1 "1k" V 6450 9700 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 6400 9500 60  0001 C CNN
F 3 "" H 6400 9500 60  0001 C CNN
	1    6400 9500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D4
U 1 1 5C763659
P 6400 8900
F 0 "D4" H 6400 9000 50  0000 C CNN
F 1 "Yellow LED" H 6200 8750 50  0000 C CNN
F 2 "LEDs.pretty:LED-1206" H 6400 8900 60  0001 C CNN
F 3 "" H 6400 8900 60  0001 C CNN
	1    6400 8900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 9250 6400 9050
$Comp
L arduino_nanoPB-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue R8
U 1 1 5C77D0E3
P 7250 9500
F 0 "R8" V 7250 9500 50  0000 C CNN
F 1 "1k" V 7300 9700 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 7250 9500 60  0001 C CNN
F 3 "" H 7250 9500 60  0001 C CNN
	1    7250 9500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 5C77D0E9
P 7250 8900
F 0 "D3" H 7250 9000 50  0000 C CNN
F 1 "Yellow LED" H 7100 8750 50  0000 C CNN
F 2 "LEDs.pretty:LED-1206" H 7250 8900 60  0001 C CNN
F 3 "" H 7250 8900 60  0001 C CNN
	1    7250 8900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7250 9250 7250 9050
$Comp
L Device:CP C3
U 1 1 5C7BB603
P 1900 7850
F 0 "C3" H 1782 7804 50  0000 R CNN
F 1 "1u" H 1782 7895 50  0000 R CNN
F 2 "Capacitors_Tantalum_SMD.pretty:TantalC_SizeA_EIA-3216_Wave" H 1938 7700 50  0001 C CNN
F 3 "~" H 1900 7850 50  0001 C CNN
	1    1900 7850
	1    0    0    -1  
$EndComp
$Comp
L arduino_nanoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0118
U 1 1 5C7C6DFD
P 1900 8100
F 0 "#PWR0118" H 1900 8100 30  0001 C CNN
F 1 "GND" H 1900 8030 30  0001 C CNN
F 2 "" H 1900 8100 60  0001 C CNN
F 3 "" H 1900 8100 60  0001 C CNN
	1    1900 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 8100 1900 8000
Wire Wire Line
	9800 9450 10200 9450
Wire Wire Line
	9800 9650 10200 9650
Wire Wire Line
	9800 9750 10200 9750
$Comp
L arduino_nanoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0119
U 1 1 5C7A8DAF
P 3050 10500
F 0 "#PWR0119" H 3050 10500 30  0001 C CNN
F 1 "GND" H 3050 10430 30  0001 C CNN
F 2 "" H 3050 10500 60  0001 C CNN
F 3 "" H 3050 10500 60  0001 C CNN
	1    3050 10500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 10050 9400 10150
Wire Wire Line
	9500 10150 9500 10050
$Comp
L arduino_nanoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0120
U 1 1 5C8A8D6B
P 8850 10300
F 0 "#PWR0120" H 8850 10300 30  0001 C CNN
F 1 "GND" H 8850 10230 30  0001 C CNN
F 2 "" H 8850 10300 60  0001 C CNN
F 3 "" H 8850 10300 60  0001 C CNN
	1    8850 10300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 10300 9400 10150
Text Label 10200 9450 2    50   ~ 0
VBUS
Text Label 10200 9650 2    50   ~ 0
D+
Text Label 10200 9750 2    50   ~ 0
D-
Wire Wire Line
	1400 8400 1600 8400
Wire Wire Line
	1850 8300 1700 8300
Wire Wire Line
	2550 8200 2450 8200
Text Label 2100 8200 0    50   ~ 0
VBUS
Text Label 1400 8300 0    50   ~ 0
D+
Text Label 1400 8400 0    50   ~ 0
D-
$Comp
L Connector:USB_B_Micro J1
U 1 1 5CAA269F
P 9500 9650
F 0 "J1" H 9557 10117 50  0000 C CNN
F 1 "USB_B_Micro" H 9557 10026 50  0000 C CNN
F 2 "Connect.pretty:USB_Micro-B" H 9650 9600 50  0001 C CNN
F 3 "~" H 9650 9600 50  0001 C CNN
	1    9500 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4250 2200 4250
Wire Wire Line
	2600 4350 2200 4350
Text Label 2200 4350 0    50   ~ 0
MEGA6
Text Label 2200 4250 0    50   ~ 0
MEGA3
$Comp
L arduino_nanoPB-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue R1
U 1 1 5CE23A7A
P 2100 8400
F 0 "R1" V 2100 8400 50  0000 C CNN
F 1 "22" V 2150 8600 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 2100 8400 60  0001 C CNN
F 3 "" H 2100 8400 60  0001 C CNN
	1    2100 8400
	0    1    1    0   
$EndComp
$Comp
L arduino_nanoPB-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue R2
U 1 1 5CE24456
P 2100 8300
F 0 "R2" V 2100 8300 50  0000 C CNN
F 1 "22" V 2150 8500 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 2100 8300 60  0001 C CNN
F 3 "" H 2100 8300 60  0001 C CNN
	1    2100 8300
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 8400 2550 8400
Wire Wire Line
	2550 8300 2350 8300
Wire Wire Line
	9400 10150 9500 10150
Connection ~ 9400 10150
$Comp
L Device:L L1
U 1 1 5CF48A5E
P 9150 10150
F 0 "L1" V 9340 10150 50  0000 C CNN
F 1 "L" V 9249 10150 50  0000 C CNN
F 2 "Choke_SMD.pretty:Choke_SMD_1206_Standard" H 9150 10150 50  0001 C CNN
F 3 "~" H 9150 10150 50  0001 C CNN
	1    9150 10150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9000 10150 8850 10150
Wire Wire Line
	8850 10150 8850 10300
$Comp
L Device:Thermistor TH1
U 1 1 5D03145C
P 1550 8900
F 0 "TH1" H 1655 8946 50  0000 L CNN
F 1 "CG0603MLC-05E" H 1655 8855 50  0000 L CNN
F 2 "Resistors_SMD.pretty:R_0603_HandSoldering" H 1550 8900 50  0001 C CNN
F 3 "~" H 1550 8900 50  0001 C CNN
	1    1550 8900
	1    0    0    -1  
$EndComp
$Comp
L Device:Thermistor TH2
U 1 1 5D03180C
P 1850 8900
F 0 "TH2" H 1955 8946 50  0000 L CNN
F 1 "CG0603MLC-05E" H 1955 8855 50  0000 L CNN
F 2 "Resistors_SMD.pretty:R_0603_HandSoldering" H 1850 8900 50  0001 C CNN
F 3 "~" H 1850 8900 50  0001 C CNN
	1    1850 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 9100 1550 9350
Wire Wire Line
	1550 9350 1700 9350
Wire Wire Line
	1850 9350 1850 9100
$Comp
L arduino_nanoPB-rescue:GNDPWR-power #PWR0130
U 1 1 5D05925D
P 9400 10300
F 0 "#PWR0130" H 9400 10100 50  0001 C CNN
F 1 "GNDPWR" H 9600 10300 50  0000 C CNN
F 2 "" H 9400 10250 50  0001 C CNN
F 3 "" H 9400 10250 50  0001 C CNN
	1    9400 10300
	1    0    0    -1  
$EndComp
$Comp
L arduino_nanoPB-rescue:GNDPWR-power #PWR0131
U 1 1 5D059CB7
P 1700 9550
F 0 "#PWR0131" H 1700 9350 50  0001 C CNN
F 1 "GNDPWR" H 1704 9624 50  0000 C CNN
F 2 "" H 1700 9500 50  0001 C CNN
F 3 "" H 1700 9500 50  0001 C CNN
	1    1700 9550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 9550 1700 9350
Connection ~ 1700 9350
Wire Wire Line
	1700 9350 1850 9350
Wire Wire Line
	1550 8700 1600 8700
Connection ~ 1600 8400
Wire Wire Line
	1600 8400 1850 8400
Wire Wire Line
	1850 8700 1700 8700
Wire Wire Line
	1700 8700 1700 8300
Connection ~ 1700 8300
Wire Wire Line
	1700 8300 1400 8300
Text Label 2400 8400 0    50   ~ 0
DD-
Text Label 2400 8300 0    50   ~ 0
DD+
Text Label 2200 4450 0    60   ~ 0
A6
Text Label 2200 4550 0    60   ~ 0
A7
$Comp
L arduino_nanoPB-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue C2
U 1 1 5331718F
P 2200 3000
F 0 "C2" H 2250 3100 50  0000 L CNN
F 1 "0.1m" H 2250 2900 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 2200 3000 60  0001 C CNN
F 3 "" H 2200 3000 60  0001 C CNN
	1    2200 3000
	-1   0    0    1   
$EndComp
$Comp
L arduino_nanoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0132
U 1 1 53317195
P 2200 3300
F 0 "#PWR0132" H 2200 3300 30  0001 C CNN
F 1 "GND" H 2200 3230 30  0001 C CNN
F 2 "" H 2200 3300 60  0001 C CNN
F 3 "" H 2200 3300 60  0001 C CNN
	1    2200 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3200 2200 3300
Wire Wire Line
	2300 2750 2600 2750
Wire Wire Line
	2200 2050 3600 2050
Wire Wire Line
	2200 2050 2200 2800
$Comp
L arduino_nanoPB-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue C1
U 1 1 5D428A9F
P 2000 2400
F 0 "C1" H 1900 2500 50  0000 L CNN
F 1 "0.1m" H 1800 2300 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 2000 2400 60  0001 C CNN
F 3 "" H 2000 2400 60  0001 C CNN
	1    2000 2400
	-1   0    0    1   
$EndComp
$Comp
L arduino_nanoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0133
U 1 1 5D428AA5
P 2000 2700
F 0 "#PWR0133" H 2000 2700 30  0001 C CNN
F 1 "GND" H 2000 2630 30  0001 C CNN
F 2 "" H 2000 2700 60  0001 C CNN
F 3 "" H 2000 2700 60  0001 C CNN
	1    2000 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2600 2000 2700
Wire Wire Line
	2000 2050 2200 2050
Wire Wire Line
	2000 2050 2000 2200
Connection ~ 2200 2050
$Comp
L power:GND #PWR02
U 1 1 56D746ED
P 15100 2650
F 0 "#PWR02" H 15100 2400 50  0001 C CNN
F 1 "GND" H 15100 2500 50  0000 C CNN
F 2 "" H 15100 2650 50  0000 C CNN
F 3 "" H 15100 2650 50  0000 C CNN
	1    15100 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	14100 1400 14100 2650
Wire Wire Line
	15100 1200 15100 2650
Wire Wire Line
	14200 2600 13500 2600
Text Label 13500 2600 0    50   ~ 0
D23
Text Label 13500 1800 0    60   ~ 0
5(**)
Text Label 13500 1900 0    60   ~ 0
6(**)
Text Label 13500 2000 0    60   ~ 0
7
Text Label 13500 2100 0    60   ~ 0
8
Text Label 13500 2200 0    60   ~ 0
9(**)
Text Label 13500 2300 0    60   ~ 0
10(**/SS)
Text Label 13500 2400 0    60   ~ 0
11(**/MOSI)
Text Label 13500 2500 0    60   ~ 0
12(MISO)
Wire Wire Line
	15000 2600 15600 2600
Text Label 15600 2600 2    50   ~ 0
D24
Text Label 5800 4250 2    60   ~ 0
1(Tx)
Text Label 5800 4150 2    60   ~ 0
0(Rx)
Text Label 5800 3950 2    60   ~ 0
Reset
Text Label 5800 4350 2    60   ~ 0
2
Text Label 5800 4450 2    60   ~ 0
3(**)
Text Label 5800 4550 2    60   ~ 0
4
Wire Wire Line
	5200 4250 5800 4250
Wire Wire Line
	5800 4150 5200 4150
Wire Wire Line
	5800 4350 5200 4350
Wire Wire Line
	5200 4450 5800 4450
Wire Wire Line
	5800 4550 5200 4550
Wire Wire Line
	5200 4650 5800 4650
Wire Wire Line
	5800 4750 5200 4750
Wire Wire Line
	5200 4850 5800 4850
Wire Wire Line
	5800 2450 5200 2450
Wire Wire Line
	5200 2550 5800 2550
Wire Wire Line
	5800 2650 5200 2650
Wire Wire Line
	5200 2750 5800 2750
Wire Wire Line
	5800 2850 5200 2850
Text Label 5800 4650 2    60   ~ 0
5(**)
Text Label 5800 4750 2    60   ~ 0
6(**)
Text Label 5800 4850 2    60   ~ 0
7
Text Label 5800 2450 2    60   ~ 0
8
Text Label 5800 2550 2    60   ~ 0
9(**)
Text Label 5800 2650 2    60   ~ 0
10(**/SS)
Text Label 5800 2750 2    60   ~ 0
11(**/MOSI)
Text Label 5800 2850 2    60   ~ 0
12(MISO)
Text Label 5800 2950 2    60   ~ 0
13(SCK)
Wire Wire Line
	5200 2950 5800 2950
Wire Wire Line
	9300 10150 9400 10150
Text Label 5400 9200 2    60   ~ 0
Reset
$Comp
L arduino_nanoPB-rescue:3V3-pwr #PWR0134
U 1 1 5C37B536
P 15300 950
F 0 "#PWR0134" H 15300 910 30  0001 C CNN
F 1 "3V3" H 15325 1111 60  0000 C CNN
F 2 "" H 15300 950 50  0001 C CNN
F 3 "" H 15300 950 50  0001 C CNN
	1    15300 950 
	1    0    0    -1  
$EndComp
Text Label 5500 8000 0    60   ~ 0
Reset
Text Label 7400 7900 2    60   ~ 0
11(**/MOSI)
Text Label 5500 7800 0    60   ~ 0
12(MISO)
Text Label 5500 7900 0    60   ~ 0
13(SCK)
Text Label 5300 8450 0    60   ~ 0
13(SCK)
Text Label 8300 8800 0    60   ~ 0
Reset
Wire Wire Line
	15500 9300 15300 9300
Wire Wire Line
	15500 9150 15500 9300
Wire Wire Line
	15000 9300 14850 9300
$Comp
L Device:D_Schottky D5
U 1 1 5CFE3369
P 15150 9300
F 0 "D5" H 15300 9200 50  0000 R CNN
F 1 "MBR120" H 15300 9400 50  0000 R CNN
F 2 "Diodes_SMD.pretty:SOD-123" H 15150 9300 50  0001 C CNN
F 3 "~" H 15150 9300 50  0001 C CNN
	1    15150 9300
	-1   0    0    1   
$EndComp
$Comp
L arduino_nanoPB-rescue:+5V-power1-arduino_atmega328PB-rescue #PWR0129
U 1 1 5CFE2B31
P 15500 9150
F 0 "#PWR0129" H 15500 9240 20  0001 C CNN
F 1 "+5V" H 15500 9240 30  0000 C CNN
F 2 "" H 15500 9150 60  0001 C CNN
F 3 "" H 15500 9150 60  0001 C CNN
	1    15500 9150
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5CFE0C1B
P 14700 9300
F 0 "F1" V 14503 9300 50  0000 C CNN
F 1 "Fuse" V 14594 9300 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD1206_Wave" V 14630 9300 50  0001 C CNN
F 3 "~" H 14700 9300 50  0001 C CNN
	1    14700 9300
	0    1    1    0   
$EndComp
Text Label 14150 9300 0    50   ~ 0
VBUS
Wire Wire Line
	14550 9300 14150 9300
$Comp
L arduino_nanoPB-rescue:3V3-pwr #PWR0126
U 1 1 5CE8434C
P 11150 3200
F 0 "#PWR0126" H 11150 3160 30  0001 C CNN
F 1 "3V3" H 11175 3361 60  0000 C CNN
F 2 "" H 11150 3200 50  0001 C CNN
F 3 "" H 11150 3200 50  0001 C CNN
	1    11150 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	11150 3500 11150 3200
Connection ~ 10100 3500
Wire Wire Line
	10950 3500 11150 3500
Wire Wire Line
	10100 3500 10350 3500
$Comp
L arduino_nanoPB-rescue:AP1117-50-Regulator_Linear U4
U 1 1 5CE53770
P 10650 3500
F 0 "U4" H 10650 3742 50  0000 C CNN
F 1 "AP1117-50" H 10650 3651 50  0000 C CNN
F 2 "modules:AB2_SOT223" H 10650 3700 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 10750 3250 50  0001 C CNN
	1    10650 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 3500 10100 3700
$Comp
L arduino_nanoPB-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue C10
U 1 1 5CE53769
P 10100 3900
F 0 "C10" H 10150 4000 50  0000 L CNN
F 1 "0.1m" H 10150 3800 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 10100 3900 60  0001 C CNN
F 3 "" H 10100 3900 60  0001 C CNN
	1    10100 3900
	1    0    0    -1  
$EndComp
$Comp
L arduino_nanoPB-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue C11
U 1 1 5CE53763
P 11150 3950
F 0 "C11" H 11200 4050 50  0000 L CNN
F 1 "0.1m" H 11200 3850 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 11150 3950 60  0001 C CNN
F 3 "" H 11150 3950 60  0001 C CNN
	1    11150 3950
	1    0    0    -1  
$EndComp
$Comp
L arduino_nanoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0125
U 1 1 5CE53756
P 10100 4250
F 0 "#PWR0125" H 10100 4250 30  0001 C CNN
F 1 "GND" H 10100 4180 30  0001 C CNN
F 2 "" H 10100 4250 60  0001 C CNN
F 3 "" H 10100 4250 60  0001 C CNN
	1    10100 4250
	1    0    0    -1  
$EndComp
$Comp
L arduino_nanoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0124
U 1 1 5CE53750
P 11150 4250
F 0 "#PWR0124" H 11150 4250 30  0001 C CNN
F 1 "GND" H 11150 4180 30  0001 C CNN
F 2 "" H 11150 4250 60  0001 C CNN
F 3 "" H 11150 4250 60  0001 C CNN
	1    11150 4250
	1    0    0    -1  
$EndComp
$Comp
L arduino_nanoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0123
U 1 1 5CE5374A
P 10650 4250
F 0 "#PWR0123" H 10650 4250 30  0001 C CNN
F 1 "GND" H 10650 4180 30  0001 C CNN
F 2 "" H 10650 4250 60  0001 C CNN
F 3 "" H 10650 4250 60  0001 C CNN
	1    10650 4250
	1    0    0    -1  
$EndComp
Connection ~ 11150 3500
Wire Wire Line
	10100 4100 10100 4250
Wire Wire Line
	10650 3800 10650 4250
Wire Wire Line
	11150 4150 11150 4250
Wire Wire Line
	11150 3500 11150 3750
Wire Wire Line
	9950 3500 10100 3500
Wire Wire Line
	9500 3500 9650 3500
$Comp
L Device:D_Schottky D6
U 1 1 5CDAAF31
P 9800 3500
F 0 "D6" H 9950 3400 50  0000 R CNN
F 1 "MBR120" H 9950 3600 50  0000 R CNN
F 2 "Diodes_SMD.pretty:SOD-123" H 9800 3500 50  0001 C CNN
F 3 "~" H 9800 3500 50  0001 C CNN
	1    9800 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	9300 3500 9500 3500
Wire Wire Line
	8450 3500 8700 3500
$Comp
L arduino_nanoPB-rescue:AP1117-50-Regulator_Linear U3
U 1 1 5C385EC8
P 9000 3500
F 0 "U3" H 9000 3742 50  0000 C CNN
F 1 "AP1117-50" H 9000 3651 50  0000 C CNN
F 2 "modules:AB2_SOT223" H 9000 3700 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 9100 3250 50  0001 C CNN
	1    9000 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3500 8450 3700
$Comp
L arduino_nanoPB-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue C7
U 1 1 5335A581
P 8450 3900
F 0 "C7" H 8500 4000 50  0000 L CNN
F 1 "0.1m" H 8500 3800 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 8450 3900 60  0001 C CNN
F 3 "" H 8450 3900 60  0001 C CNN
	1    8450 3900
	1    0    0    -1  
$EndComp
$Comp
L arduino_nanoPB-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue C9
U 1 1 5335A584
P 9500 3950
F 0 "C9" H 9550 4050 50  0000 L CNN
F 1 "0.1m" H 9550 3850 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 9500 3950 60  0001 C CNN
F 3 "" H 9500 3950 60  0001 C CNN
	1    9500 3950
	1    0    0    -1  
$EndComp
$Comp
L arduino_nanoPB-rescue:+5V-power1-arduino_atmega328PB-rescue #PWR0104
U 1 1 5335A59A
P 10100 3250
F 0 "#PWR0104" H 10100 3340 20  0001 C CNN
F 1 "+5V" H 10100 3340 30  0000 C CNN
F 2 "" H 10100 3250 60  0001 C CNN
F 3 "" H 10100 3250 60  0001 C CNN
	1    10100 3250
	1    0    0    -1  
$EndComp
Text Label 8450 3150 0    60   ~ 0
Vin
$Comp
L arduino_nanoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0103
U 1 1 5335A5B7
P 8450 4250
F 0 "#PWR0103" H 8450 4250 30  0001 C CNN
F 1 "GND" H 8450 4180 30  0001 C CNN
F 2 "" H 8450 4250 60  0001 C CNN
F 3 "" H 8450 4250 60  0001 C CNN
	1    8450 4250
	1    0    0    -1  
$EndComp
$Comp
L arduino_nanoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0102
U 1 1 5335A5B8
P 9500 4250
F 0 "#PWR0102" H 9500 4250 30  0001 C CNN
F 1 "GND" H 9500 4180 30  0001 C CNN
F 2 "" H 9500 4250 60  0001 C CNN
F 3 "" H 9500 4250 60  0001 C CNN
	1    9500 4250
	1    0    0    -1  
$EndComp
$Comp
L arduino_nanoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0101
U 1 1 5335A5BD
P 9000 4250
F 0 "#PWR0101" H 9000 4250 30  0001 C CNN
F 1 "GND" H 9000 4180 30  0001 C CNN
F 2 "" H 9000 4250 60  0001 C CNN
F 3 "" H 9000 4250 60  0001 C CNN
	1    9000 4250
	1    0    0    -1  
$EndComp
Connection ~ 9500 3500
Wire Wire Line
	8450 4100 8450 4250
Connection ~ 8450 3500
Wire Wire Line
	8450 3150 8450 3500
Wire Wire Line
	9000 3800 9000 4250
Wire Wire Line
	9500 4150 9500 4250
Wire Wire Line
	9500 3500 9500 3750
Wire Wire Line
	10100 3250 10100 3500
Connection ~ 12550 8500
Wire Wire Line
	12150 8500 12550 8500
Wire Wire Line
	13300 8950 13300 9200
Wire Wire Line
	12950 9100 12950 9400
Wire Wire Line
	12950 8800 12950 8500
Wire Wire Line
	13150 8950 13300 8950
$Comp
L Device:Resonator Y1
U 1 1 5C486A6F
P 12950 8950
F 0 "Y1" V 12750 9000 50  0000 L CNN
F 1 "Resonator" V 12600 8950 50  0000 L CNN
F 2 "modules:MURATA_CSTCE_V53" H 12925 8950 50  0001 C CNN
F 3 "~" H 12925 8950 50  0001 C CNN
	1    12950 8950
	0    -1   -1   0   
$EndComp
$Comp
L arduino_nanoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0116
U 1 1 5C485E14
P 13300 9200
F 0 "#PWR0116" H 13300 9200 30  0001 C CNN
F 1 "GND" H 13300 9130 30  0001 C CNN
F 2 "" H 13300 9200 60  0001 C CNN
F 3 "" H 13300 9200 60  0001 C CNN
	1    13300 9200
	1    0    0    -1  
$EndComp
Wire Wire Line
	12550 9400 12950 9400
Wire Wire Line
	12550 8500 12950 8500
Wire Wire Line
	12550 8700 12550 8500
Connection ~ 12550 9400
Wire Wire Line
	12550 9200 12550 9400
Text Label 12150 9400 0    50   ~ 0
XTAL2
Wire Wire Line
	12150 9400 12550 9400
Text Label 12150 8500 0    50   ~ 0
XTAL1
$Comp
L arduino_nanoPB-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue R4
U 1 1 5452671C
P 12550 8950
F 0 "R4" V 12550 8950 50  0000 C CNN
F 1 "1M" V 12600 9200 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 12550 8950 60  0001 C CNN
F 3 "" H 12550 8950 60  0001 C CNN
	1    12550 8950
	1    0    0    -1  
$EndComp
Text Label 10950 9250 1    50   ~ 0
D23
Wire Wire Line
	10950 8800 10950 9250
$Comp
L Jumper:Jumper_3_Open JP1
U 1 1 5D2C4B75
P 11200 8800
F 0 "JP1" H 11200 9024 50  0000 C CNN
F 1 "Jumper_3_Open" H 11200 8933 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 11200 8800 50  0001 C CNN
F 3 "~" H 11200 8800 50  0001 C CNN
	1    11200 8800
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_3_Open JP2
U 1 1 5D2C48C6
P 11200 9800
F 0 "JP2" H 11200 10024 50  0000 C CNN
F 1 "Jumper_3_Open" H 11200 9933 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 11200 9800 50  0001 C CNN
F 3 "~" H 11200 9800 50  0001 C CNN
	1    11200 9800
	1    0    0    -1  
$EndComp
Wire Wire Line
	11200 8950 11200 9350
Wire Wire Line
	11200 9950 11200 10350
Wire Wire Line
	10950 9800 10950 10200
Text Label 10950 10200 1    50   ~ 0
D24
Wire Wire Line
	11450 10100 11450 9800
$Comp
L arduino_nanoPB-rescue:+5V-power1-arduino_atmega328PB-rescue #PWR0128
U 1 1 5C66C74F
P 11450 10100
F 0 "#PWR0128" H 11450 10190 20  0001 C CNN
F 1 "+5V" H 11450 10190 30  0000 C CNN
F 2 "" H 11450 10100 60  0001 C CNN
F 3 "" H 11450 10100 60  0001 C CNN
	1    11450 10100
	-1   0    0    1   
$EndComp
Wire Wire Line
	11450 9200 11450 8800
$Comp
L arduino_nanoPB-rescue:GND-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue #PWR0127
U 1 1 5C64DD05
P 11450 9200
F 0 "#PWR0127" H 11450 9200 30  0001 C CNN
F 1 "GND" H 11450 9130 30  0001 C CNN
F 2 "" H 11450 9200 60  0001 C CNN
F 3 "" H 11450 9200 60  0001 C CNN
	1    11450 9200
	1    0    0    -1  
$EndComp
Text Label 11200 10350 1    50   ~ 0
MEGA6
Text Label 11200 9350 1    50   ~ 0
MEGA3
$Comp
L Jumper:Jumper_2_Open JP3
U 1 1 5C5707F6
P 9300 8800
F 0 "JP3" H 9300 8913 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 9300 8914 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 9300 8800 50  0001 C CNN
F 3 "~" H 9300 8800 50  0001 C CNN
	1    9300 8800
	1    0    0    -1  
$EndComp
Text Label 2100 8000 0    50   ~ 0
#RST
Wire Wire Line
	2550 8000 2350 8000
Wire Wire Line
	3050 10200 3050 10350
Wire Wire Line
	1600 8700 1600 8400
$Comp
L arduino_nanoPB-rescue:R-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue R5
U 1 1 5C7F4520
P 2350 7550
F 0 "R5" V 2350 7550 50  0000 C CNN
F 1 "10k" V 2400 7750 50  0000 C CNN
F 2 "Resistors_SMD.pretty:R_0805_HandSoldering" H 2350 7550 60  0001 C CNN
F 3 "" H 2350 7550 60  0001 C CNN
	1    2350 7550
	-1   0    0    1   
$EndComp
Wire Wire Line
	3050 7100 2350 7100
Wire Wire Line
	3050 7100 3050 7600
Wire Wire Line
	1900 7100 1900 7700
Wire Wire Line
	2450 8200 2450 7500
Wire Wire Line
	2450 7500 2950 7500
Wire Wire Line
	2950 7500 2950 7600
Connection ~ 2450 8200
Wire Wire Line
	2450 8200 2100 8200
Wire Wire Line
	2350 7800 2350 8000
Connection ~ 2350 8000
Wire Wire Line
	2350 8000 2100 8000
Wire Wire Line
	2350 7300 2350 7100
Connection ~ 2350 7100
Wire Wire Line
	2350 7100 1900 7100
$Comp
L arduino_nanoPB-rescue:C-RESCUE-arduino_atmega88-arduino_atmega88-rescue-arduino_atmega328PB-rescue C4
U 1 1 5C836565
P 2350 9850
F 0 "C4" H 2400 9950 50  0000 L CNN
F 1 "0.1m" H 2400 9750 50  0000 L CNN
F 2 "Capacitors_SMD.pretty:C_0805_HandSoldering" H 2350 9850 60  0001 C CNN
F 3 "" H 2350 9850 60  0001 C CNN
	1    2350 9850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 9650 2350 9400
Wire Wire Line
	2350 9400 2100 9400
Text Label 2100 9400 0    50   ~ 0
VBUS
Wire Wire Line
	2350 10050 2350 10350
Wire Wire Line
	2350 10350 3050 10350
Connection ~ 3050 10350
Wire Wire Line
	3050 10350 3050 10500
$Comp
L arduino_nanoPB-rescue:+5V-power1-arduino_atmega328PB-rescue #PWR0114
U 1 1 5C85FCDC
P 6400 8450
F 0 "#PWR0114" H 6400 8540 20  0001 C CNN
F 1 "+5V" H 6400 8540 30  0000 C CNN
F 2 "" H 6400 8450 60  0001 C CNN
F 3 "" H 6400 8450 60  0001 C CNN
	1    6400 8450
	1    0    0    -1  
$EndComp
Text Label 4000 9500 2    50   ~ 0
RXLED
Wire Wire Line
	3550 9500 4000 9500
Text Label 4000 10000 2    50   ~ 0
GPIO.6
Text Label 4000 9900 2    50   ~ 0
GPIO.5
Text Label 4000 9800 2    50   ~ 0
GPIO.4
Wire Wire Line
	3550 10000 4000 10000
Wire Wire Line
	3550 9900 4000 9900
Wire Wire Line
	3550 9800 4000 9800
Text Label 4000 9700 2    50   ~ 0
GPIO.3
Text Label 4000 9600 2    50   ~ 0
GPIO.2
Wire Wire Line
	4000 9700 3550 9700
Wire Wire Line
	3550 9600 4000 9600
Text Label 4050 8700 2    50   ~ 0
#SUSPEND
Text Label 4050 8800 2    50   ~ 0
SUSPEND
Wire Wire Line
	3550 8700 4050 8700
Wire Wire Line
	3550 8800 4050 8800
Text Label 3850 8100 2    60   ~ 0
0(Rx)
Text Label 4050 7800 2    50   ~ 0
CTS
Text Label 4050 7900 2    50   ~ 0
RTS
Text Label 4050 8200 2    50   ~ 0
DSR
Text Label 4050 8400 2    50   ~ 0
DCD
Text Label 4050 8500 2    50   ~ 0
RI
Wire Wire Line
	3550 8500 4050 8500
Wire Wire Line
	3550 8400 4050 8400
Wire Wire Line
	3550 8200 4050 8200
Wire Wire Line
	3550 7800 4050 7800
Wire Wire Line
	3550 7900 4050 7900
Text Label 4050 8100 2    60   ~ 0
RX
Text Label 4050 8000 2    60   ~ 0
TX
Text Label 4050 8300 2    60   ~ 0
DTR
Wire Wire Line
	3550 8300 4050 8300
Wire Wire Line
	3550 8100 4050 8100
$Comp
L Interface_USB:CP2102N-A01-GQFN28 U2
U 1 1 5C62B096
P 3050 8900
F 0 "U2" H 3400 7600 50  0000 C CNN
F 1 "CP2102N-A01-GQFN28" H 3600 7500 50  0000 C CNN
F 2 "Housings_DFN_QFN.pretty:QFN-28-1EP_5x5mm_Pitch0.5mm" H 3500 7700 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/cp2102n-datasheet.pdf" H 3100 8150 50  0001 C CNN
	1    3050 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 9400 4000 9400
Text Label 4000 9400 2    50   ~ 0
TXLED
Wire Wire Line
	3550 8000 4050 8000
Text Label 3850 8000 2    60   ~ 0
1(Tx)
Wire Wire Line
	6400 8450 6400 8750
$Comp
L arduino_nanoPB-rescue:+5V-power1-arduino_atmega328PB-rescue #PWR0115
U 1 1 5C94ABD9
P 7250 8450
F 0 "#PWR0115" H 7250 8540 20  0001 C CNN
F 1 "+5V" H 7250 8540 30  0000 C CNN
F 2 "" H 7250 8450 60  0001 C CNN
F 3 "" H 7250 8450 60  0001 C CNN
	1    7250 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 8450 7250 8750
Wire Wire Line
	6400 9750 6400 10200
Wire Wire Line
	7250 9750 7250 10200
Text Label 6400 10200 1    60   ~ 0
RX
Text Label 7250 10200 1    60   ~ 0
TX
$EndSCHEMATC
