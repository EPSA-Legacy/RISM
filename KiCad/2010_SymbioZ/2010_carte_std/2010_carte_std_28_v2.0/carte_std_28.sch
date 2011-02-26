EESchema Schematic File Version 1
LIBS:power,device,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,analog_switches,motorola,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib,./carte_std_28.cache
EELAYER 23  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "Carte standard 28"
Date "18 may 2010"
Rev "2.0"
Comp "EPSA - SymbioZ"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	4900 3300 3650 3300
Wire Notes Line
	4900 3300 4900 1850
Wire Notes Line
	4900 1850 3650 1850
Wire Notes Line
	3650 1850 3650 3300
Text Notes 3750 2000 0    60   ~
Port Série
Wire Notes Line
	3550 1550 3550 900 
Wire Notes Line
	3550 1550 4300 1550
Wire Notes Line
	4300 1550 4300 900 
Wire Notes Line
	4300 900  3550 900 
Text Notes 3650 800  0    60   ~
Trous de fixation
Text Label 9350 1400 0    60   ~
RB7
Wire Wire Line
	9300 1400 9600 1400
Kmarq B 9300 1700 "Warning Pin input non pilotée (Net 47)" F=1
Kmarq B 9300 1400 "Warning Pin input non pilotée (Net 46)" F=1
Kmarq B 9300 1550 "Warning Pin input non pilotée (Net 45)" F=1
Kmarq B 9000 4800 "Warning Pin input non pilotée (Net 42)" F=1
Kmarq B 9000 4900 "Warning Pin input non pilotée (Net 41)" F=1
NoConn ~ 4400 2950
NoConn ~ 4400 2850
NoConn ~ 4400 2750
NoConn ~ 4400 2550
NoConn ~ 4400 2350
NoConn ~ 4400 2250
Text Label 4500 2650 0    60   ~
TX_PC
Text Label 4500 2450 0    60   ~
RX_PC
Wire Wire Line
	4400 2650 4800 2650
Wire Wire Line
	4400 2450 4800 2450
Wire Wire Line
	4600 3200 4600 3050
Wire Wire Line
	4600 3050 4400 3050
$Comp
L GND #PWR20
U 1 1 4BF246F6
P 4600 3200
F 0 "#PWR20" H 4600 3200 30  0001 C C
F 1 "GND" H 4600 3130 30  0001 C C
	1    4600 3200
	1    0    0    -1  
$EndComp
$Comp
L DB9 J1
U 1 1 4BF246AE
P 3950 2650
F 0 "J1" H 3950 3200 70  0000 C C
F 1 "DB9" H 3950 2100 70  0000 C C
	1    3950 2650
	-1   0    0    1   
$EndComp
Wire Notes Line
	3100 3400 3100 5550
Wire Notes Line
	3100 3400 6250 3400
Wire Notes Line
	6250 3400 6250 5550
Wire Notes Line
	6250 5550 3100 5550
Text Notes 4150 3600 0    60   ~
Module MAX232
Text Label 5850 5200 0    60   ~
TX_PC
Text Label 5850 5000 0    60   ~
RX_PC
Wire Wire Line
	5300 5200 6050 5200
Wire Wire Line
	5300 5000 6050 5000
NoConn ~ 5300 5100
NoConn ~ 5300 5300
NoConn ~ 3700 5300
NoConn ~ 3700 5100
Text Label 3350 5200 0    60   ~
RX
Text Label 3350 5000 0    60   ~
TX
Wire Wire Line
	3700 5200 3250 5200
Wire Wire Line
	3700 5000 3250 5000
Wire Notes Line
	11150 7050 6250 7050
Wire Notes Line
	11150 7050 11150 5800
Wire Notes Line
	11150 5800 6250 5800
Text Notes 10600 6050 0    60   ~
MAX232
Connection ~ 10050 6300
Connection ~ 10800 6400
Wire Wire Line
	10800 6400 10800 6300
Wire Wire Line
	10800 6300 6600 6300
Connection ~ 10800 6800
Wire Wire Line
	10800 6950 10800 6800
Wire Wire Line
	10600 6800 10950 6800
Wire Wire Line
	10600 6400 10950 6400
$Comp
L GND #PWR19
U 1 1 4BF244F6
P 10800 6950
F 0 "#PWR19" H 10800 6950 30  0001 C C
F 1 "GND" H 10800 6880 30  0001 C C
	1    10800 6950
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 4BF244DE
P 10600 6600
F 0 "C20" H 10650 6700 50  0000 L C
F 1 "27p" H 10650 6500 50  0000 L C
	1    10600 6600
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C19
U 1 1 4BF244D6
P 10950 6600
F 0 "C19" H 11000 6700 50  0000 L C
F 1 "1u" H 11000 6500 50  0000 L C
	1    10950 6600
	1    0    0    -1  
$EndComp
Connection ~ 5800 4500
Wire Wire Line
	5800 4800 5800 4500
Wire Wire Line
	5950 4500 5300 4500
Wire Wire Line
	5300 4800 5400 4800
Wire Wire Line
	5300 4300 5450 4300
Wire Wire Line
	5450 3800 5450 3900
Wire Wire Line
	5450 3900 5300 3900
$Comp
L VCC #PWR29
U 1 1 4BF24248
P 5450 3800
F 0 "#PWR29" H 5450 3900 30  0001 C C
F 1 "VCC" H 5450 3900 30  0000 C C
	1    5450 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR18
U 1 1 4BF24247
P 5950 4500
F 0 "#PWR18" H 5950 4500 30  0001 C C
F 1 "GND" H 5950 4430 30  0001 C C
	1    5950 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 4800 3500 4800
Wire Wire Line
	3700 4400 3500 4400
Wire Wire Line
	3700 4300 3500 4300
Wire Wire Line
	3700 3900 3500 3900
$Comp
L CAPAPOL C18
U 1 1 4BF24246
P 5450 4100
F 0 "C18" H 5500 4200 50  0000 L C
F 1 "1u" H 5500 4000 50  0000 L C
	1    5450 4100
	-1   0    0    1   
$EndComp
$Comp
L CAPAPOL C17
U 1 1 4BF24245
P 5600 4800
F 0 "C17" H 5650 4900 50  0000 L C
F 1 "1u" H 5650 4700 50  0000 L C
	1    5600 4800
	0    1    1    0   
$EndComp
$Comp
L CAPAPOL C16
U 1 1 4BF24244
P 3500 4600
F 0 "C16" H 3550 4700 50  0000 L C
F 1 "1u" H 3550 4500 50  0000 L C
	1    3500 4600
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C15
U 1 1 4BF24243
P 3500 4100
F 0 "C15" H 3550 4200 50  0000 L C
F 1 "1u" H 3550 4000 50  0000 L C
	1    3500 4100
	1    0    0    -1  
$EndComp
$Comp
L MAX232 U5
U 1 1 4BF24242
P 4500 4600
F 0 "U5" H 4500 5450 70  0000 C C
F 1 "MAX232" H 4500 3750 70  0000 C C
	1    4500 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1300 3700 1250
Connection ~ 3800 1200
Wire Wire Line
	3800 1100 3800 1400
Wire Wire Line
	3800 1100 3850 1100
Connection ~ 3800 1250
Wire Wire Line
	3700 1250 3800 1250
$Comp
L CONN_1 GND4
U 1 1 3E1F8635
P 4000 1100
F 0 "GND4" H 4080 1100 40  0000 C C
F 1 "CONN_1" H 3950 1140 30  0001 C C
	1    4000 1100
	1    0    0    -1  
$EndComp
Wire Notes Line
	6000 7400 2050 7400
Wire Notes Line
	6000 7400 6000 6000
Wire Notes Line
	6000 6000 2050 6000
Wire Notes Line
	2050 6000 2050 7400
Wire Wire Line
	4200 6950 4550 6950
Wire Wire Line
	4200 6750 4550 6750
Wire Wire Line
	4200 6550 4550 6550
Wire Wire Line
	4200 6350 4550 6350
Wire Wire Line
	2100 6950 2450 6950
Wire Wire Line
	2100 6750 2450 6750
Wire Wire Line
	2100 6550 2450 6550
Wire Wire Line
	2100 6350 2450 6350
Wire Wire Line
	5650 6950 5700 6950
Wire Wire Line
	5950 6350 5650 6350
Wire Wire Line
	5950 6550 5650 6550
Wire Wire Line
	1200 6850 1200 6750
Wire Notes Line
	2450 5200 1300 5200
Wire Notes Line
	2450 5200 2450 3400
Wire Notes Line
	2450 3400 1300 3400
Wire Notes Line
	1300 3400 1300 5200
Wire Wire Line
	2300 4450 1800 4450
Wire Wire Line
	2300 4300 1900 4300
NoConn ~ 2200 4700
NoConn ~ 2100 4700
NoConn ~ 2000 4700
NoConn ~ 1700 4700
NoConn ~ 1600 4700
NoConn ~ 1500 4700
NoConn ~ 1500 4050
NoConn ~ 1600 4050
NoConn ~ 1700 4050
NoConn ~ 2000 4050
NoConn ~ 2100 4050
NoConn ~ 2200 4050
Connection ~ 1900 4300
Connection ~ 1800 4450
Wire Wire Line
	1900 4700 1900 4050
Wire Wire Line
	1800 4050 1800 4700
$Comp
L CONN_8 P8
U 1 1 4BD158BE
P 1850 3700
F 0 "P8" V 1800 3700 60  0000 C C
F 1 "CAN1" V 1900 3700 60  0000 C C
	1    1850 3700
	0    -1   -1   0   
$EndComp
$Comp
L CONN_8 P9
U 1 1 4BD15873
P 1850 5050
F 0 "P9" V 1800 5050 60  0000 C C
F 1 "CAN2" V 1900 5050 60  0000 C C
	1    1850 5050
	0    -1   1    0   
$EndComp
$Comp
L VCC #PWR28
U 1 1 4BD0064A
P 2350 7150
F 0 "#PWR28" H 2350 7250 30  0001 C C
F 1 "VCC" H 2350 7250 30  0000 C C
	1    2350 7150
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR2
U 1 1 4BD0062E
P 5700 6950
F 0 "#PWR2" H 5700 6900 20  0001 C C
F 1 "+12V" H 5700 7050 30  0000 C C
	1    5700 6950
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 6750 3550 6750
$Comp
L GND #PWR17
U 1 1 4BCD78F2
P 3700 1300
F 0 "#PWR17" H 3700 1300 30  0001 C C
F 1 "GND" H 3700 1230 30  0001 C C
	1    3700 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1300 3800 1300
Connection ~ 3800 1300
Wire Wire Line
	3800 1400 3850 1400
Wire Wire Line
	3800 1200 3850 1200
$Comp
L CONN_1 GND3
U 1 1 4BCD78F1
P 4000 1200
F 0 "GND3" H 4080 1200 40  0000 C C
F 1 "CONN_1" H 3950 1240 30  0001 C C
	1    4000 1200
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 GND2
U 1 1 4BCD78F0
P 4000 1300
F 0 "GND2" H 4080 1300 40  0000 C C
F 1 "CONN_1" H 3950 1340 30  0001 C C
	1    4000 1300
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 GND1
U 1 1 4BCD78EF
P 4000 1400
F 0 "GND1" H 4080 1400 40  0000 C C
F 1 "CONN_1" H 3950 1440 30  0001 C C
	1    4000 1400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR27
U 1 1 4BCC77E8
P 6850 3550
F 0 "#PWR27" H 6850 3650 30  0001 C C
F 1 "VCC" H 6850 3650 30  0000 C C
	1    6850 3550
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR26
U 1 1 4BCC77C2
P 4450 7150
F 0 "#PWR26" H 4450 7250 30  0001 C C
F 1 "VCC" H 4450 7250 30  0000 C C
	1    4450 7150
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR25
U 1 1 4BCC77BE
P 7350 4450
F 0 "#PWR25" H 7350 4550 30  0001 C C
F 1 "VCC" H 7350 4550 30  0000 C C
	1    7350 4450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR24
U 1 1 4BCC77B6
P 8350 6250
F 0 "#PWR24" H 8350 6350 30  0001 C C
F 1 "VCC" H 8350 6350 30  0000 C C
	1    8350 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 6250 8350 6400
Connection ~ 9250 6400
Connection ~ 9250 6300
Wire Wire Line
	9250 6300 9250 6400
Connection ~ 8350 6300
Connection ~ 7500 6300
$Comp
L VCC #PWR23
U 1 1 4BCC7771
P 3150 1100
F 0 "#PWR23" H 3150 1200 30  0001 C C
F 1 "VCC" H 3150 1200 30  0000 C C
	1    3150 1100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR22
U 1 1 4BCC776C
P 2600 2400
F 0 "#PWR22" H 2600 2500 30  0001 C C
F 1 "VCC" H 2600 2500 30  0000 C C
	1    2600 2400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR21
U 1 1 4BCC7763
P 1200 6300
F 0 "#PWR21" H 1200 6400 30  0001 C C
F 1 "VCC" H 1200 6400 30  0000 C C
	1    1200 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 7150 2350 7150
Wire Wire Line
	4550 7150 4450 7150
Connection ~ 2050 1100
$Comp
L +12V #PWR1
U 1 1 4BCC15F6
P 2050 1100
F 0 "#PWR1" H 2050 1050 20  0001 C C
F 1 "+12V" H 2050 1200 30  0000 C C
	1    2050 1100
	1    0    0    -1  
$EndComp
Text Label 3600 6750 0    60   ~
RB0
Text Label 7150 2000 0    60   ~
RA4
Wire Wire Line
	7200 2100 7200 2100
Wire Wire Line
	3550 6950 3850 6950
Wire Wire Line
	2350 2850 2650 2850
Wire Wire Line
	9300 1700 9550 1700
Wire Notes Line
	6550 2300 6550 2200
Wire Notes Line
	6550 2200 7350 2200
Wire Notes Line
	7350 2200 7350 3100
Wire Notes Line
	6550 3100 6550 2250
Wire Wire Line
	7250 3350 7350 3350
Wire Wire Line
	7350 3500 6750 3500
Connection ~ 6650 2700
Wire Wire Line
	6600 2700 6650 2700
Connection ~ 7150 2400
Wire Wire Line
	7350 2750 7350 2400
Wire Wire Line
	7350 2400 7050 2400
Connection ~ 7150 3000
Wire Wire Line
	7050 3000 7200 3000
Wire Wire Line
	9300 2150 9700 2150
Wire Wire Line
	9300 1850 9550 1850
Wire Wire Line
	9300 1550 9550 1550
Wire Wire Line
	7350 2150 7100 2150
Wire Wire Line
	7350 1850 7100 1850
Wire Notes Line
	3150 1950 1200 1950
Wire Notes Line
	3150 1950 3150 2500
Wire Notes Line
	3150 2500 2750 2500
Wire Notes Line
	2750 2500 2750 3200
Wire Notes Line
	2750 3200 1200 3200
Wire Notes Line
	1200 3200 1200 1950
Wire Wire Line
	2350 2550 2650 2550
Wire Wire Line
	2350 2250 2650 2250
Wire Notes Line
	6950 5200 6950 4100
Wire Notes Line
	6950 5200 9800 5200
Wire Notes Line
	9800 5200 9800 4100
Wire Notes Line
	9800 4100 6950 4100
Connection ~ 9750 4600
Wire Wire Line
	9700 4600 9750 4600
Wire Wire Line
	1200 7350 1200 7400
Wire Notes Line
	1200 1800 1200 750 
Wire Notes Line
	1200 1800 3450 1800
Wire Notes Line
	3450 1800 3450 750 
Wire Notes Line
	3450 750  1200 750 
Wire Wire Line
	2700 1400 2700 1500
Wire Wire Line
	2700 1500 1700 1500
Connection ~ 1900 1500
Wire Wire Line
	1700 1500 1700 1400
Connection ~ 10050 6400
Wire Wire Line
	10050 6300 10050 6400
Connection ~ 10100 6800
Wire Wire Line
	10100 6950 10100 6800
Wire Wire Line
	9850 6800 10250 6800
Wire Wire Line
	9850 6400 10250 6400
Connection ~ 9300 6800
Wire Wire Line
	9300 6950 9300 6800
Wire Wire Line
	9050 6800 9450 6800
Wire Wire Line
	9050 6400 9450 6400
Connection ~ 8350 6400
Connection ~ 8400 6800
Wire Wire Line
	8400 6950 8400 6800
Wire Wire Line
	8150 6800 8550 6800
Wire Wire Line
	8150 6400 8550 6400
Connection ~ 7500 6400
Wire Wire Line
	7500 6300 7500 6400
Connection ~ 7550 6800
Wire Wire Line
	7550 6950 7550 6800
Wire Wire Line
	7300 6800 7700 6800
Wire Wire Line
	7300 6400 7700 6400
Wire Wire Line
	7700 4500 7350 4500
Wire Wire Line
	7350 4500 7350 4450
Wire Wire Line
	10050 2800 10050 2750
Wire Wire Line
	10050 2750 9300 2750
Wire Wire Line
	9000 4900 9500 4900
Wire Wire Line
	9000 4800 9500 4800
Wire Wire Line
	9300 2600 10050 2600
Wire Wire Line
	5950 6750 5650 6750
Wire Wire Line
	3550 6550 3850 6550
Wire Wire Line
	3550 6350 3850 6350
Wire Wire Line
	5650 7150 5650 7250
Wire Wire Line
	3550 7150 3550 7250
Connection ~ 6600 6400
Wire Wire Line
	6600 6300 6600 6400
Connection ~ 6650 6800
Wire Wire Line
	6650 6950 6650 6800
Wire Wire Line
	6400 6800 6800 6800
Wire Wire Line
	6400 6400 6800 6400
Wire Wire Line
	7700 4600 7700 4650
Wire Wire Line
	7250 5150 7250 4900
Wire Wire Line
	7250 5150 7050 5150
Wire Wire Line
	7250 4650 7250 4800
Wire Wire Line
	7250 4650 7050 4650
Wire Wire Line
	7250 4900 7700 4900
Wire Wire Line
	7250 4800 7700 4800
Connection ~ 2250 1100
Wire Wire Line
	9300 3200 9550 3200
Wire Wire Line
	9750 4700 9750 4500
Wire Wire Line
	9200 4600 9000 4600
Wire Wire Line
	9550 3500 9300 3500
Wire Wire Line
	9550 3350 9300 3350
Wire Wire Line
	9550 3650 9300 3650
Wire Wire Line
	9550 3050 9300 3050
Wire Wire Line
	9550 2900 9300 2900
Connection ~ 2100 1500
Wire Wire Line
	2100 1500 2100 1600
Wire Wire Line
	7350 3050 7350 3200
Wire Wire Line
	1700 1200 1700 1100
Wire Wire Line
	1700 1100 2300 1100
Connection ~ 1900 1100
Connection ~ 2250 1500
Wire Wire Line
	3100 1100 3150 1100
Wire Wire Line
	1200 6300 1200 6350
Wire Notes Line
	1850 7500 1850 6000
Wire Notes Line
	1850 7500 700  7500
Wire Notes Line
	700  7500 700  6000
Wire Notes Line
	700  6000 1850 6000
Wire Wire Line
	9750 4500 9000 4500
Wire Notes Line
	6250 5800 6250 7050
Wire Wire Line
	2350 3000 2650 3000
Wire Wire Line
	2350 2400 2600 2400
Wire Wire Line
	7100 1400 7350 1400
Wire Wire Line
	7350 1700 7100 1700
Wire Wire Line
	7350 2000 7100 2000
Wire Wire Line
	9300 2000 9700 2000
Wire Wire Line
	7250 3100 7350 3100
Connection ~ 7350 3100
Wire Notes Line
	9750 2900 9750 2400
Wire Notes Line
	9750 2900 10900 2900
Wire Notes Line
	10900 2900 10900 2400
Wire Notes Line
	10900 2400 9750 2400
Wire Wire Line
	7350 1550 7100 1550
Wire Wire Line
	7350 2900 7200 2900
Wire Wire Line
	7200 2900 7200 3000
Wire Wire Line
	6650 3000 6650 2400
Wire Wire Line
	6750 3500 6750 3350
Wire Wire Line
	6850 3550 6850 3500
Connection ~ 6850 3500
Wire Notes Line
	6400 3650 6400 3200
Wire Notes Line
	6400 3650 7400 3650
Wire Notes Line
	7400 3650 7400 3200
Wire Notes Line
	7400 3200 6400 3200
Wire Notes Line
	6350 3800 6350 1000
Wire Notes Line
	6350 3800 9700 3800
Wire Notes Line
	9700 3800 9700 1000
Wire Notes Line
	9700 1000 6350 1000
Wire Wire Line
	9300 2300 9550 2300
Wire Wire Line
	2350 2700 2650 2700
Wire Wire Line
	9300 2450 9550 2450
Text Label 3600 6950 0    60   ~
RB1
Text Label 9350 2450 0    60   ~
RB0
Text Label 2400 2850 0    60   ~
RB6
Text Label 2400 2700 0    60   ~
RB7
Text Label 9350 1700 0    60   ~
RB5
Text Label 7300 3350 0    60   ~
Mclr
Text Label 5700 6350 0    60   ~
RC4
Text Label 9350 2300 0    60   ~
RB1
Text Notes 6600 3300 0    60   ~
master-clear
Text Notes 6600 2300 0    60   ~
oscillateur
$Comp
L R R2
U 1 1 4B27919F
P 9450 4600
F 0 "R2" V 9530 4600 50  0000 C C
F 1 "1K" V 9450 4600 50  0000 C C
	1    9450 4600
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 4B279151
P 7050 4900
F 0 "R4" V 7130 4900 50  0000 C C
F 1 "xxK" V 7050 4900 50  0000 C C
	1    7050 4900
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4B279141
P 1200 7100
F 0 "R1" V 1280 7100 50  0000 C C
F 1 "1K" V 1200 7100 50  0000 C C
	1    1200 7100
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 4B2790FC
P 7000 3350
F 0 "R3" V 7080 3350 50  0000 C C
F 1 "47K" V 7000 3350 50  0000 C C
	1    7000 3350
	0    1    1    0   
$EndComp
Text Notes 2900 1300 0    60   ~
generale
$Comp
L GND #PWR16
U 1 1 4B2128A7
P 10100 6950
F 0 "#PWR16" H 10100 6950 30  0001 C C
F 1 "GND" H 10100 6880 30  0001 C C
	1    10100 6950
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C6
U 1 1 4B2128A6
P 10250 6600
F 0 "C6" H 10300 6700 50  0000 L C
F 1 "1u" H 10300 6500 50  0000 L C
	1    10250 6600
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 4B2128A5
P 9850 6600
F 0 "C14" H 9900 6700 50  0000 L C
F 1 "27p" H 9900 6500 50  0000 L C
	1    9850 6600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR15
U 1 1 4B2128A1
P 9300 6950
F 0 "#PWR15" H 9300 6950 30  0001 C C
F 1 "GND" H 9300 6880 30  0001 C C
	1    9300 6950
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C5
U 1 1 4B2128A0
P 9450 6600
F 0 "C5" H 9500 6700 50  0000 L C
F 1 "1u" H 9500 6500 50  0000 L C
	1    9450 6600
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 4B21289F
P 9050 6600
F 0 "C13" H 9100 6700 50  0000 L C
F 1 "27p" H 9100 6500 50  0000 L C
	1    9050 6600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR14
U 1 1 4B21289D
P 8400 6950
F 0 "#PWR14" H 8400 6950 30  0001 C C
F 1 "GND" H 8400 6880 30  0001 C C
	1    8400 6950
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C4
U 1 1 4B21289C
P 8550 6600
F 0 "C4" H 8600 6700 50  0000 L C
F 1 "1u" H 8600 6500 50  0000 L C
	1    8550 6600
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 4B21289B
P 8150 6600
F 0 "C12" H 8200 6700 50  0000 L C
F 1 "27p" H 8200 6500 50  0000 L C
	1    8150 6600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR13
U 1 1 4B21288C
P 7550 6950
F 0 "#PWR13" H 7550 6950 30  0001 C C
F 1 "GND" H 7550 6880 30  0001 C C
	1    7550 6950
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C3
U 1 1 4B21288B
P 7700 6600
F 0 "C3" H 7750 6700 50  0000 L C
F 1 "1u" H 7750 6500 50  0000 L C
	1    7700 6600
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 4B21288A
P 7300 6600
F 0 "C11" H 7350 6700 50  0000 L C
F 1 "27p" H 7350 6500 50  0000 L C
	1    7300 6600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR12
U 1 1 4B2127D2
P 7250 3100
F 0 "#PWR12" H 7250 3100 30  0001 C C
F 1 "GND" H 7250 3030 30  0001 C C
	1    7250 3100
	0    1    1    0   
$EndComp
Text Notes 3000 1200 0    60   ~
alim
Text Notes 2200 2500 0    60   ~
alim emulateur
Text Notes 7150 4300 0    60   ~
alim CAN
Text Notes 6950 3600 0    60   ~
alim micro
$Comp
L CONN_2 P1
U 1 1 4B211E6C
P 1350 1300
F 0 "P1" V 1300 1300 40  0000 C C
F 1 "ALIM" V 1400 1300 40  0000 C C
	1    1350 1300
	-1   0    0    -1  
$EndComp
$Comp
L CONN_2 P7
U 1 1 4B211DA7
P 10400 2700
F 0 "P7" V 10350 2700 40  0000 C C
F 1 "SERIE" V 10450 2700 40  0000 C C
	1    10400 2700
	1    0    0    -1  
$EndComp
Text Notes 9950 6050 0    60   ~
CAN
Text Notes 8900 6050 0    60   ~
he10alim
Text Notes 8150 6050 0    60   ~
micro
Text Notes 7250 6050 0    60   ~
generale
Text Notes 6300 6050 0    60   ~
he10alim
$Comp
L PWR_FLAG #FLG2
U 1 1 4B20DE1B
P 1700 1500
F 0 "#FLG2" H 1700 1770 30  0001 C C
F 1 "PWR_FLAG" H 1700 1730 30  0000 C C
	1    1700 1500
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG1
U 1 1 4B20DE01
P 1700 1100
F 0 "#FLG1" H 1700 1370 30  0001 C C
F 1 "PWR_FLAG" H 1700 1330 30  0000 C C
	1    1700 1100
	1    0    0    -1  
$EndComp
Text Label 9000 4900 0    60   ~
CANTX
Text Label 9000 4800 0    60   ~
CANRX
Text Notes 7400 5900 0    60   ~
module de protection alimentation
Text Notes 3400 6100 0    60   ~
module de connexion 
Text Notes 700  6100 0    60   ~
led alim generale
Text Notes 9800 2500 0    60   ~
sniffer(debogage)
Text Label 4250 6950 0    60   ~
RC3
Text Label 5700 6750 0    60   ~
RB4
Text Label 5700 6550 0    60   ~
RC5
Text Label 4250 6750 0    60   ~
RC2
Text Label 4250 6550 0    60   ~
RC1
Text Label 4250 6350 0    60   ~
RC0
Text Label 3600 6550 0    60   ~
RA5
Text Label 3600 6350 0    60   ~
RA4
Text Label 2150 6950 0    60   ~
RA3
Text Label 2150 6750 0    60   ~
RA2
Text Label 2150 6550 0    60   ~
RA1
Text Label 2150 6350 0    60   ~
RA0
$Comp
L GND #PWR11
U 1 1 4B20D524
P 5650 7250
F 0 "#PWR11" H 5650 7250 30  0001 C C
F 1 "GND" H 5650 7180 30  0001 C C
	1    5650 7250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR10
U 1 1 4B20D519
P 3550 7250
F 0 "#PWR10" H 3550 7250 30  0001 C C
F 1 "GND" H 3550 7180 30  0001 C C
	1    3550 7250
	1    0    0    -1  
$EndComp
$Comp
L HE10-10 HE1
U 1 1 4B20D4E0
P 5100 6750
F 0 "HE1" H 5100 7300 70  0000 C C
F 1 "HE10-10" H 5100 6150 70  0000 C C
	1    5100 6750
	1    0    0    -1  
$EndComp
$Comp
L HE10-10 HE2
U 1 1 4B20D4B5
P 3000 6750
F 0 "HE2" H 3000 7300 70  0000 C C
F 1 "HE10-10" H 3000 6150 70  0000 C C
	1    3000 6750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR9
U 1 1 4B20D3E4
P 6650 6950
F 0 "#PWR9" H 6650 6950 30  0001 C C
F 1 "GND" H 6650 6880 30  0001 C C
	1    6650 6950
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C2
U 1 1 4B20D3E3
P 6800 6600
F 0 "C2" H 6850 6700 50  0000 L C
F 1 "10u" H 6850 6500 50  0000 L C
	1    6800 6600
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 4B20D3E2
P 6400 6600
F 0 "C10" H 6450 6700 50  0000 L C
F 1 "27p" H 6450 6500 50  0000 L C
	1    6400 6600
	1    0    0    -1  
$EndComp
Text Notes 7750 1100 0    60   ~
Micro-controleur
$Comp
L GND #PWR8
U 1 1 4B052057
P 7700 4650
F 0 "#PWR8" H 7700 4650 30  0001 C C
F 1 "GND" H 7700 4580 30  0001 C C
	1    7700 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR7
U 1 1 4B051F79
P 2650 2550
F 0 "#PWR7" H 2650 2550 30  0001 C C
F 1 "GND" H 2650 2480 30  0001 C C
	1    2650 2550
	0    -1   -1   0   
$EndComp
Text Label 2000 4450 0    60   ~
CANL
Text Label 2000 4300 0    60   ~
CANH
Text Notes 1350 3500 0    60   ~
RJ45 pour le Can
Text Label 7150 2150 0    60   ~
RA5
Text Label 7150 1850 0    60   ~
RA3
Text Label 7150 1700 0    60   ~
RA2
Text Label 7150 1550 0    60   ~
RA1
Text Label 7150 1400 0    60   ~
RA0
Text Label 9350 1850 0    60   ~
RB4
Text Label 7350 4900 0    60   ~
CANL
Text Label 7350 4800 0    60   ~
CANH
Text Notes 8050 4200 0    60   ~
Module CAN
Text Notes 1350 2050 0    60   ~
Module Emulateur
Text Notes 1900 850  0    60   ~
Module Alimentation
Text Label 9350 2600 0    60   ~
RX
Text Label 9350 2750 0    60   ~
TX
Text Label 9350 2900 0    60   ~
RC5
Text Label 9350 3050 0    60   ~
RC4
Text Label 9350 3200 0    60   ~
RC3
$Comp
L GND #PWR6
U 1 1 47B1984C
P 9750 4700
F 0 "#PWR6" H 9750 4700 30  0001 C C
F 1 "GND" H 9750 4630 30  0001 C C
	1    9750 4700
	1    0    0    -1  
$EndComp
Text Label 9350 2150 0    60   ~
CANTX
Text Label 9350 2000 0    60   ~
CANRX
$Comp
L CAN_MCP2551 U2
U 1 1 47B197F8
P 8300 5100
F 0 "U2" H 8300 5100 60  0000 C C
F 1 "CAN_MCP2551" H 8400 5850 60  0000 C C
	1    8300 5100
	1    0    0    -1  
$EndComp
Text Label 9350 3500 0    60   ~
RC1
Text Label 9350 3350 0    60   ~
RC2
Text Label 9350 3650 0    60   ~
RC0
$Comp
L PIC18F258 U4
U 1 1 47B178B3
P 8200 2000
F 0 "U4" H 8200 200 60  0000 C C
F 1 "PIC18F258" H 8200 2750 60  0000 C C
	1    8200 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR5
U 1 1 45F6A904
P 1200 7400
F 0 "#PWR5" H 1200 7400 30  0001 C C
F 1 "GND" H 1200 7330 30  0001 C C
	1    1200 7400
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 45F6A8F9
P 1200 6550
F 0 "D1" H 1200 6650 50  0000 C C
F 1 "RED" H 1200 6450 50  0000 C C
	1    1200 6550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR4
U 1 1 453CDC95
P 2100 1600
F 0 "#PWR4" H 2100 1600 30  0001 C C
F 1 "GND" H 2100 1530 30  0001 C C
	1    2100 1600
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C1
U 1 1 453CDC72
P 2250 1300
F 0 "C1" H 2300 1400 50  0000 L C
F 1 "10u" H 2300 1200 50  0000 L C
	1    2250 1300
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 453CDC47
P 1900 1300
F 0 "C9" H 1950 1400 50  0000 L C
F 1 "27p" H 1950 1200 50  0000 L C
	1    1900 1300
	1    0    0    -1  
$EndComp
$Comp
L 7805 U1
U 1 1 453CD743
P 2700 1150
F 0 "U1" H 2850 954 60  0000 C C
F 1 "7805" H 2700 1350 60  0000 C C
	1    2700 1150
	1    0    0    -1  
$EndComp
Text Label 2400 3000 0    60   ~
RB5
Text Label 2400 2250 0    60   ~
Mclr
$Comp
L CNT_RJ12 U3
U 1 1 453CACE9
P 1950 2850
F 0 "U3" H 2250 2550 60  0000 C C
F 1 "ICD" H 2250 3600 60  0000 C C
	1    1950 2850
	-1   0    0    -1  
$EndComp
Text Label 9350 1550 0    60   ~
RB6
$Comp
L GND #PWR3
U 1 1 453CA2A4
P 6600 2700
F 0 "#PWR3" H 6600 2700 30  0001 C C
F 1 "GND" H 6600 2630 30  0001 C C
	1    6600 2700
	0    1    1    0   
$EndComp
$Comp
L C C8
U 1 1 453CA28F
P 6850 3000
F 0 "C8" H 6900 3100 50  0000 L C
F 1 "27p" H 6900 2900 50  0000 L C
	1    6850 3000
	0    1    1    0   
$EndComp
$Comp
L C C7
U 1 1 453CA280
P 6850 2400
F 0 "C7" H 6900 2500 50  0000 L C
F 1 "27p" H 6900 2300 50  0000 L C
	1    6850 2400
	0    1    1    0   
$EndComp
$Comp
L CRYSTAL X1
U 1 1 453CA252
P 7150 2700
F 0 "X1" H 7150 2850 60  0000 C C
F 1 "QUARTZ" H 7150 2550 60  0000 C C
	1    7150 2700
	0    1    1    0   
$EndComp
$EndSCHEMATC
