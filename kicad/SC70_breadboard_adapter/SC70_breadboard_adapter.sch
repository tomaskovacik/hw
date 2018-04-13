EESchema Schematic File Version 4
LIBS:SC70_breadboard_adapter-cache
EELAYER 26 0
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
$EndDescr
$Comp
L SC70_breadboard_adapter-rescue:CONN_01X03-RESCUE-SC70_breadboard_adapter P2
U 1 1 565EEBEC
P 6750 3400
F 0 "P2" H 6750 3600 50  0000 C CNN
F 1 "CONN_01X03" V 6850 3400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 6750 3400 50  0001 C CNN
F 3 "" H 6750 3400 50  0000 C CNN
	1    6750 3400
	1    0    0    -1  
$EndComp
$Comp
L SC70_breadboard_adapter-rescue:CONN_01X03-RESCUE-SC70_breadboard_adapter P1
U 1 1 565EEC09
P 4850 3400
F 0 "P1" H 4850 3600 50  0000 C CNN
F 1 "CONN_01X03" V 4950 3400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4850 3400 50  0001 C CNN
F 3 "" H 4850 3400 50  0000 C CNN
	1    4850 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6150 3400 6400 3400
$Comp
L SC70_breadboard_adapter-rescue:DIL6-RESCUE-SC70_breadboard_adapter P3
U 1 1 565EEF9E
P 5800 3400
F 0 "P3" H 5800 3600 50  0000 C CNN
F 1 "DIL6" V 5800 3400 50  0000 C CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6.pretty:SC-70-6_Handsoldering" H 5800 3400 50  0001 C CNN
F 3 "" H 5800 3400 50  0000 C CNN
	1    5800 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3300 5200 3300
Wire Wire Line
	5050 3400 5300 3400
Wire Wire Line
	5450 3500 5400 3500
Wire Wire Line
	6150 3300 6500 3300
$Comp
L SC70_breadboard_adapter-rescue:DIL6-RESCUE-SC70_breadboard_adapter P4
U 1 1 5A8F1D8E
P 5850 3900
F 0 "P4" H 5850 4100 50  0000 C CNN
F 1 "DIL6" V 5850 3900 50  0000 C CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6.pretty:SC-70-6_Handsoldering" H 5850 3900 50  0001 C CNN
F 3 "" H 5850 3900 50  0000 C CNN
	1    5850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3900 6400 3900
Wire Wire Line
	6400 3900 6400 3400
Connection ~ 6400 3400
Wire Wire Line
	6400 3400 6550 3400
Wire Wire Line
	6200 4000 6500 4000
Wire Wire Line
	6500 4000 6500 3300
Connection ~ 6500 3300
Wire Wire Line
	6500 3300 6550 3300
Wire Wire Line
	5500 3900 5300 3900
Wire Wire Line
	5300 3900 5300 3400
Connection ~ 5300 3400
Wire Wire Line
	5300 3400 5450 3400
Wire Wire Line
	5500 3800 5400 3800
Wire Wire Line
	5400 3800 5400 3500
Connection ~ 5400 3500
Wire Wire Line
	5400 3500 5050 3500
Wire Wire Line
	5200 3300 5200 4000
Wire Wire Line
	5200 4000 5500 4000
Connection ~ 5200 3300
Wire Wire Line
	5200 3300 5050 3300
Wire Wire Line
	6150 3500 6300 3500
Wire Wire Line
	6300 3800 6300 3500
Wire Wire Line
	6200 3800 6300 3800
Connection ~ 6300 3500
Wire Wire Line
	6300 3500 6550 3500
$EndSCHEMATC
