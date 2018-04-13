EESchema Schematic File Version 4
LIBS:sot23-6_breadboard_adapter-cache
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
L sot23-6_breadboard_adapter-rescue:CONN_01X03-RESCUE-sot23-6_breadboard_adapter P2
U 1 1 56250FDB
P 6000 4050
F 0 "P2" H 6000 4250 50  0000 C CNN
F 1 "CONN_01X03" V 6100 4050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 6000 4050 60  0001 C CNN
F 3 "" H 6000 4050 60  0000 C CNN
	1    6000 4050
	1    0    0    -1  
$EndComp
$Comp
L sot23-6_breadboard_adapter-rescue:CONN_01X03-RESCUE-sot23-6_breadboard_adapter P1
U 1 1 56251035
P 4100 4000
F 0 "P1" H 4100 4200 50  0000 C CNN
F 1 "CONN_01X03" V 4200 4000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4100 4000 60  0001 C CNN
F 3 "" H 4100 4000 60  0000 C CNN
	1    4100 4000
	-1   0    0    1   
$EndComp
$Comp
L sot23-6_breadboard_adapter-rescue:MCP3421A0T-E_CH-RESCUE-sot23-6_breadboard_adapter U1
U 1 1 56251573
P 5050 4000
F 0 "U1" H 4650 4300 50  0000 L CNN
F 1 "MCP3421A0T-E/CH" H 5150 4300 50  0000 L CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6.pretty:SOT-23-6" H 5050 4000 50  0001 C CIN
F 3 "" H 5050 4000 50  0000 C CNN
	1    5050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3900 4300 3500
Wire Wire Line
	5600 3500 5600 3900
Wire Wire Line
	5600 3900 5550 3900
Wire Wire Line
	4300 4000 4350 4000
Wire Wire Line
	4350 4000 4350 4450
Wire Wire Line
	4350 4450 5050 4450
Wire Wire Line
	5050 4450 5050 4400
Wire Wire Line
	4300 4100 4400 4100
Wire Wire Line
	4400 4100 4400 3900
Wire Wire Line
	4400 3900 4550 3900
Wire Wire Line
	5550 4000 5550 3950
Wire Wire Line
	5800 4050 5750 4050
Wire Wire Line
	5750 4050 5750 3550
Wire Wire Line
	5750 3550 5050 3550
Wire Wire Line
	5050 3550 5050 3600
Wire Wire Line
	4500 4100 4550 4100
Wire Wire Line
	4500 4100 4500 4500
Wire Wire Line
	4500 4500 5750 4500
Wire Wire Line
	5750 4500 5750 4150
Wire Wire Line
	5750 4150 5800 4150
Wire Wire Line
	5550 3950 5800 3950
$Comp
L sot23-6_breadboard_adapter-rescue:MCP3421A0T-E_CH-RESCUE-sot23-6_breadboard_adapter U2
U 1 1 5A8EFB11
P 5050 5100
F 0 "U2" H 4650 5400 50  0000 L CNN
F 1 "MCP3421A0T-E/CH" H 5150 5400 50  0000 L CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6.pretty:SOT-23-6" H 5050 5100 50  0001 C CIN
F 3 "" H 5050 5100 50  0000 C CNN
	1    5050 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4100 4400 4600
Wire Wire Line
	4400 4600 5650 4600
Wire Wire Line
	5650 4600 5650 5000
Wire Wire Line
	5650 5000 5550 5000
Connection ~ 4400 4100
Wire Wire Line
	5050 5500 5050 5550
Wire Wire Line
	5050 5550 4350 5550
Wire Wire Line
	4350 5550 4350 4450
Connection ~ 4350 4450
Wire Wire Line
	4300 3500 4450 3500
Wire Wire Line
	4450 5000 4450 3500
Wire Wire Line
	4450 5000 4550 5000
Connection ~ 4450 3500
Wire Wire Line
	4450 3500 5600 3500
Wire Wire Line
	5750 4500 5750 5100
Wire Wire Line
	5750 5100 5550 5100
Connection ~ 5750 4500
Wire Wire Line
	5050 4700 5050 4650
Wire Wire Line
	5050 4650 5700 4650
Wire Wire Line
	5700 4650 5700 4050
Wire Wire Line
	5700 4050 5750 4050
Connection ~ 5750 4050
Wire Wire Line
	4550 5200 4500 5200
Wire Wire Line
	4500 5200 4500 4650
Wire Wire Line
	4500 4650 4950 4650
Wire Wire Line
	4950 4650 4950 4550
Wire Wire Line
	4950 4550 5550 4550
Wire Wire Line
	5550 4550 5550 4000
Connection ~ 5550 4000
$EndSCHEMATC
