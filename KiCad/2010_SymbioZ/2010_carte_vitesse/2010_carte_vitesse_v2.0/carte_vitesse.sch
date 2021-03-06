EESchema Schematic File Version 1
LIBS:power,device,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,analog_switches,motorola,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib,./carte_vitesse.cache
EELAYER 23  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "Carte vitesse"
Date "19 jan 2003"
Rev "2.0"
Comp "EPSA - SymbioZ"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 1250 1900
NoConn ~ 3400 1900
$Comp
L +6V #PWR9
U 1 1 3E29E912
P 3350 4350
F 0 "#PWR9" H 3350 4480 20  0001 C C
F 1 "+6V" H 3350 4450 30  0000 C C
	1    3350 4350
	1    0    0    -1  
$EndComp
$Comp
L +6V #PWR8
U 1 1 3E29E8B9
P 8000 4600
F 0 "#PWR8" H 8000 4730 20  0001 C C
F 1 "+6V" H 8000 4700 30  0000 C C
	1    8000 4600
	1    0    0    -1  
$EndComp
$Comp
L +6V #PWR7
U 1 1 3E29E8B2
P 9450 4600
F 0 "#PWR7" H 9450 4730 20  0001 C C
F 1 "+6V" H 9450 4700 30  0000 C C
	1    9450 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4650 5650 4700
Wire Wire Line
	6450 4650 6450 4600
$Comp
L +6V #PWR6
U 1 1 3E29E859
P 6450 4600
F 0 "#PWR6" H 6450 4730 20  0001 C C
F 1 "+6V" H 6450 4700 30  0000 C C
	1    6450 4600
	1    0    0    -1  
$EndComp
$Comp
L +6V #PWR5
U 1 1 3E29E83E
P 5000 4600
F 0 "#PWR5" H 5000 4730 20  0001 C C
F 1 "+6V" H 5000 4700 30  0000 C C
	1    5000 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4650 5000 4600
$Comp
L LM324 U1
U 4 1 4BC4B468
P 9050 4750
F 0 "U1" H 9100 4950 60  0000 C C
F 1 "LM324" H 9200 4550 50  0000 C C
	4    9050 4750
	0    1    1    0   
$EndComp
$Comp
L +6V #PWR4
U 1 1 3E29E77B
P 7700 1400
F 0 "#PWR4" H 7700 1530 20  0001 C C
F 1 "+6V" H 7700 1500 30  0000 C C
	1    7700 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR12
U 1 1 3E29E771
P 7250 1750
F 0 "#PWR12" H 7250 1750 30  0001 C C
F 1 "GND" H 7250 1680 30  0001 C C
	1    7250 1750
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR2
U 1 1 3E29E74D
P 6800 1400
F 0 "#PWR2" H 6800 1350 20  0001 C C
F 1 "+12V" H 6800 1500 30  0000 C C
	1    6800 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1700 7250 1750
Wire Wire Line
	7650 1400 7700 1400
Wire Wire Line
	6850 1400 6800 1400
$Comp
L 7805 U2
U 1 1 3E29E703
P 7250 1450
F 0 "U2" H 7400 1254 60  0000 C C
F 1 "7806" H 7250 1650 60  0000 C C
	1    7250 1450
	1    0    0    -1  
$EndComp
NoConn ~ 950  1700
NoConn ~ 4800 1100
NoConn ~ 4800 1300
NoConn ~ 4800 1500
NoConn ~ 3050 1300
NoConn ~ 3050 1500
NoConn ~ 3050 1700
NoConn ~ 2700 1300
NoConn ~ 2700 1500
NoConn ~ 2700 1700
NoConn ~ 950  1500
NoConn ~ 950  1300
NoConn ~ 950  1100
Connection ~ 2400 1950
$Comp
L PWR_FLAG #FLG3
U 1 1 3E22458E
P 2400 1950
F 0 "#FLG3" H 2400 2220 30  0001 C C
F 1 "PWR_FLAG" H 2400 2180 30  0000 C C
	1    2400 1950
	0    1    1    0   
$EndComp
Connection ~ 4650 1700
Wire Wire Line
	4700 1700 4500 1700
$Comp
L PWR_FLAG #FLG2
U 1 1 3E22457E
P 1250 1900
F 0 "#FLG2" H 1250 2170 30  0001 C C
F 1 "PWR_FLAG" H 1250 2130 30  0000 C C
	1    1250 1900
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG1
U 1 1 3E224575
P 4650 1700
F 0 "#FLG1" H 4650 1970 30  0001 C C
F 1 "PWR_FLAG" H 4650 1930 30  0000 C C
	1    4650 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 1900 2400 2000
Wire Wire Line
	4500 1900 4500 2000
Wire Wire Line
	2400 1100 2700 1100
Wire Wire Line
	2400 1300 2700 1300
Wire Wire Line
	4800 1500 4500 1500
Wire Wire Line
	2400 1700 2700 1700
Wire Wire Line
	1300 1900 1200 1900
Wire Wire Line
	2700 1500 2400 1500
Wire Wire Line
	4800 1300 4500 1300
Wire Wire Line
	4800 1100 4500 1100
Wire Wire Line
	950  1100 1300 1100
Wire Wire Line
	950  1300 1300 1300
Wire Wire Line
	950  1500 1300 1500
Wire Wire Line
	950  1700 1300 1700
Wire Wire Line
	3050 1100 3400 1100
Wire Wire Line
	3050 1300 3400 1300
Wire Wire Line
	3050 1500 3400 1500
Wire Wire Line
	3050 1700 3400 1700
Wire Notes Line
	900  750  900  2150
Wire Notes Line
	900  750  4850 750 
Wire Notes Line
	4850 750  4850 2150
Wire Notes Line
	4850 2150 900  2150
$Comp
L VCC #PWR23
U 1 1 3E224542
P 1200 1900
F 0 "#PWR23" H 1200 2000 30  0001 C C
F 1 "VCC" H 1200 2000 30  0000 C C
	1    1200 1900
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR1
U 1 1 3E224541
P 4700 1700
F 0 "#PWR1" H 4700 1650 20  0001 C C
F 1 "+12V" H 4700 1800 30  0000 C C
	1    4700 1700
	0    1    1    0   
$EndComp
Text Label 2450 1500 0    60   ~
RB0
Text Label 2450 1700 0    60   ~
RB1
Text Label 4550 1100 0    60   ~
RC4
Text Notes 2250 850  0    60   ~
module de connexion 
Text Label 3100 1700 0    60   ~
RC3
Text Label 4550 1500 0    60   ~
RB4
Text Label 4550 1300 0    60   ~
RC5
Text Label 3100 1500 0    60   ~
RC2
Text Label 3100 1300 0    60   ~
RC1
Text Label 3100 1100 0    60   ~
RC0
Text Label 2450 1300 0    60   ~
RA5
Text Label 2450 1100 0    60   ~
RA4
Text Label 1000 1700 0    60   ~
RA3
Text Label 1000 1500 0    60   ~
RA2
Text Label 1000 1300 0    60   ~
RA1
Text Label 1000 1100 0    60   ~
RA0
$Comp
L GND #PWR11
U 1 1 3E22453F
P 4500 2000
F 0 "#PWR11" H 4500 2000 30  0001 C C
F 1 "GND" H 4500 1930 30  0001 C C
	1    4500 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR10
U 1 1 3E22453E
P 2400 2000
F 0 "#PWR10" H 2400 2000 30  0001 C C
F 1 "GND" H 2400 1930 30  0001 C C
	1    2400 2000
	1    0    0    -1  
$EndComp
$Comp
L HE10-10 HE2
U 1 1 3E22453D
P 3950 1500
F 0 "HE2" H 3950 2050 70  0000 C C
F 1 "HE10-10" H 3950 900 70  0000 C C
	1    3950 1500
	1    0    0    -1  
$EndComp
$Comp
L HE10-10 HE1
U 1 1 3E22453C
P 1850 1500
F 0 "HE1" H 1850 2050 70  0000 C C
F 1 "HE10-10" H 1850 900 70  0000 C C
	1    1850 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1100 5850 1300
Wire Wire Line
	5750 1250 5750 1200
Wire Wire Line
	5750 1200 5900 1200
Wire Wire Line
	5850 1100 5900 1100
Wire Wire Line
	5850 1300 5900 1300
Connection ~ 5850 1200
Wire Wire Line
	5300 1900 5450 1900
Wire Wire Line
	5850 1900 5900 1900
Wire Wire Line
	6400 1900 6450 1900
Wire Notes Line
	5200 2050 5200 1600
Wire Notes Line
	5200 2050 6550 2050
Wire Notes Line
	6550 2050 6550 1600
Wire Notes Line
	6550 1600 5200 1600
Text Notes 5500 1700 0    60   ~
témoin alim
$Comp
L GND #PWR22
U 1 1 4BE90EC3
P 6450 1900
F 0 "#PWR22" H 6450 1900 30  0001 C C
F 1 "GND" H 6450 1830 30  0001 C C
	1    6450 1900
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR26
U 1 1 4BE90EC2
P 5300 1900
F 0 "#PWR26" H 5300 2000 30  0001 C C
F 1 "VCC" H 5300 2000 30  0000 C C
	1    5300 1900
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 4BE90EC1
P 6150 1900
F 0 "R7" V 6230 1900 50  0000 C C
F 1 "1k" V 6150 1900 50  0000 C C
	1    6150 1900
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 4BE90EC0
P 5650 1900
F 0 "D1" H 5650 2000 50  0000 C C
F 1 "RED" H 5650 1800 50  0000 C C
	1    5650 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR21
U 1 1 4BE90EBF
P 5750 1250
F 0 "#PWR21" H 5750 1250 30  0001 C C
F 1 "GND" H 5750 1180 30  0001 C C
	1    5750 1250
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 GND3
U 1 1 4BE90EBE
P 6050 1100
F 0 "GND3" H 6130 1100 40  0000 C C
F 1 "Meca" H 6000 1140 30  0001 C C
	1    6050 1100
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 GND2
U 1 1 4BE90EBD
P 6050 1200
F 0 "GND2" H 6130 1200 40  0000 C C
F 1 "Meca" H 6000 1240 30  0001 C C
	1    6050 1200
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 GND1
U 1 1 4BE90EBC
P 6050 1300
F 0 "GND1" H 6130 1300 40  0000 C C
F 1 "Meca" H 6000 1340 30  0001 C C
	1    6050 1300
	1    0    0    -1  
$EndComp
Text Label 6250 5400 0    60   ~
RA4
Text Label 9250 5400 0    60   ~
RC0
Connection ~ 9050 5300
Wire Wire Line
	9550 5400 9050 5400
Wire Wire Line
	9050 5400 9050 5250
Connection ~ 6050 5300
Wire Wire Line
	6550 5400 6050 5400
Wire Wire Line
	6050 5400 6050 5250
$Comp
L LM324 U1
U 3 1 4BC4B45F
P 6050 4750
F 0 "U1" H 6100 4950 60  0000 C C
F 1 "LM324" H 6200 4550 50  0000 C C
	3    6050 4750
	0    1    1    0   
$EndComp
$Comp
L LM324 U1
U 2 1 4BC4B452
P 4600 4750
F 0 "U1" H 4650 4950 60  0000 C C
F 1 "LM324" H 4750 4550 50  0000 C C
	2    4600 4750
	0    1    1    0   
$EndComp
Wire Notes Line
	9650 3600 2850 3600
Wire Notes Line
	9650 6050 2850 6050
Wire Notes Line
	9650 6050 9650 3600
Wire Wire Line
	8450 5300 7100 5300
Wire Wire Line
	8450 5300 8450 4100
Connection ~ 7700 4100
Wire Wire Line
	7700 4250 7700 4100
Wire Wire Line
	7250 5600 7000 5600
Wire Wire Line
	7000 5600 7000 4100
Wire Wire Line
	7000 4100 8050 4100
Wire Wire Line
	9150 4250 9150 4100
Wire Wire Line
	9150 4100 8450 4100
Wire Wire Line
	8550 5600 8550 4200
Connection ~ 8550 5600
Wire Wire Line
	8450 5600 8650 5600
Connection ~ 7850 5600
Wire Wire Line
	7850 5450 7850 5600
Wire Wire Line
	7750 5600 7950 5600
$Comp
L VCC #PWR25
U 1 1 4BC4AACA
P 9200 5600
F 0 "#PWR25" H 9200 5700 30  0001 C C
F 1 "VCC" H 9200 5700 30  0000 C C
	1    9200 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 5600 9200 5600
$Comp
L GND #PWR20
U 1 1 4BC4AAC9
P 7850 5450
F 0 "#PWR20" H 7850 5450 30  0001 C C
F 1 "GND" H 7850 5380 30  0001 C C
	1    7850 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	8550 4200 8950 4200
Wire Wire Line
	8950 4200 8950 4250
Text Label 9300 5300 0    60   ~
Vd
Wire Wire Line
	9050 5300 9550 5300
Connection ~ 7600 5300
Wire Wire Line
	7100 5300 7100 4200
Wire Wire Line
	7100 4200 7500 4200
Wire Wire Line
	7500 4200 7500 4250
Wire Wire Line
	7600 5300 7600 5250
Text Label 7800 4100 0    60   ~
Vnd
Wire Wire Line
	9450 4650 9450 4600
$Comp
L GND #PWR19
U 1 1 4BC4AAC8
P 8650 4700
F 0 "#PWR19" H 8650 4700 30  0001 C C
F 1 "GND" H 8650 4630 30  0001 C C
	1    8650 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 4650 8650 4700
$Comp
L R R2
U 1 1 4BC4AAC5
P 8900 5600
F 0 "R2" V 8980 5600 50  0000 C C
F 1 "10k" V 8900 5600 50  0000 C C
	1    8900 5600
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 4BC4AAC4
P 8200 5600
F 0 "R4" V 8280 5600 50  0000 C C
F 1 "22k" V 8200 5600 50  0000 C C
	1    8200 5600
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 4BC4AAC3
P 7500 5600
F 0 "R6" V 7580 5600 50  0000 C C
F 1 "330" V 7500 5600 50  0000 C C
	1    7500 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 4650 8000 4600
$Comp
L GND #PWR18
U 1 1 4BC4AAC2
P 7200 4700
F 0 "#PWR18" H 7200 4700 30  0001 C C
F 1 "GND" H 7200 4630 30  0001 C C
	1    7200 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4650 7200 4700
$Comp
L LM324 U1
U 1 1 4BC4AAC0
P 7600 4750
F 0 "U1" H 7650 4950 60  0000 C C
F 1 "LM324" H 7750 4550 50  0000 C C
	1    7600 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 5300 4100 5300
Wire Wire Line
	5450 5300 5450 4100
Connection ~ 4700 4100
Wire Wire Line
	4700 4250 4700 4100
Wire Wire Line
	4250 5600 4000 5600
Wire Wire Line
	4000 5600 4000 4100
Wire Wire Line
	4000 4100 5050 4100
Wire Wire Line
	6150 4250 6150 4100
Wire Wire Line
	6150 4100 5450 4100
Wire Wire Line
	5550 5600 5550 4200
Wire Notes Line
	2700 4450 1600 4450
Wire Notes Line
	2700 4450 2700 3600
Wire Notes Line
	2700 3600 1600 3600
Connection ~ 5550 5600
Wire Wire Line
	5450 5600 5650 5600
Connection ~ 4850 5600
Wire Wire Line
	4850 5450 4850 5600
Wire Wire Line
	4750 5600 4950 5600
$Comp
L +12V #PWR3
U 1 1 4BC4A586
P 2450 3950
F 0 "#PWR3" H 2450 3900 20  0001 C C
F 1 "+12V" H 2450 4050 30  0000 C C
	1    2450 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4350 2450 4350
Wire Wire Line
	2450 4350 2450 3950
Wire Wire Line
	2450 3950 2150 3950
Text Notes 4900 2750 0    197  ~
Carte Vitesse
Text Notes 5100 3500 0    60   ~
Mise a l echelle 0-5V de la vitesse
Wire Notes Line
	2850 6050 2850 3600
$Comp
L VCC #PWR24
U 1 1 4BC49E1D
P 6200 5600
F 0 "#PWR24" H 6200 5700 30  0001 C C
F 1 "VCC" H 6200 5700 30  0000 C C
	1    6200 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 5600 6200 5600
$Comp
L GND #PWR17
U 1 1 4BC49D98
P 4850 5450
F 0 "#PWR17" H 4850 5450 30  0001 C C
F 1 "GND" H 4850 5380 30  0001 C C
	1    4850 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5550 4200 5950 4200
Wire Wire Line
	5950 4200 5950 4250
Text Label 6300 5300 0    60   ~
Vg
Wire Wire Line
	6050 5300 6550 5300
Connection ~ 4600 5300
Wire Wire Line
	4100 5300 4100 4200
Wire Wire Line
	4100 4200 4500 4200
Wire Wire Line
	4500 4200 4500 4250
Wire Wire Line
	4600 5300 4600 5250
Text Label 4800 4100 0    60   ~
Vng
$Comp
L GND #PWR16
U 1 1 4BC49BF7
P 5650 4700
F 0 "#PWR16" H 5650 4700 30  0001 C C
F 1 "GND" H 5650 4630 30  0001 C C
	1    5650 4700
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4BC49A9B
P 5900 5600
F 0 "R1" V 5980 5600 50  0000 C C
F 1 "10k" V 5900 5600 50  0000 C C
	1    5900 5600
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 4BC49A98
P 5200 5600
F 0 "R3" V 5280 5600 50  0000 C C
F 1 "22k" V 5200 5600 50  0000 C C
	1    5200 5600
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 4BC49A94
P 4500 5600
F 0 "R5" V 4580 5600 50  0000 C C
F 1 "330" V 4500 5600 50  0000 C C
	1    4500 5600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR15
U 1 1 4BC49A6E
P 4200 4700
F 0 "#PWR15" H 4200 4700 30  0001 C C
F 1 "GND" H 4200 4630 30  0001 C C
	1    4200 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4650 4200 4700
$Comp
L GND #PWR14
U 1 1 4BC49A38
P 3350 5150
F 0 "#PWR14" H 3350 5150 30  0001 C C
F 1 "GND" H 3350 5080 30  0001 C C
	1    3350 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4950 3150 4950
Wire Wire Line
	3550 4550 3150 4550
Connection ~ 3350 4550
Wire Wire Line
	3350 4550 3350 4350
Connection ~ 3350 4950
Wire Wire Line
	3350 4950 3350 5150
$Comp
L C C1
U 1 1 4BC499DB
P 3550 4750
F 0 "C1" H 3600 4850 50  0000 L C
F 1 "17p" H 3600 4650 50  0000 L C
	1    3550 4750
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 4BC499D7
P 3150 4750
F 0 "C2" H 3200 4850 50  0000 L C
F 1 "1u" H 3200 4650 50  0000 L C
	1    3150 4750
	1    0    0    -1  
$EndComp
Text Notes 1850 4700 0    60   ~
Interface
Text Notes 1650 4600 0    60   ~
Connecteurs vers
Wire Notes Line
	2700 4750 1600 4750
Wire Notes Line
	2700 4750 2700 6050
Wire Notes Line
	2700 6050 1600 6050
Wire Notes Line
	1600 6050 1600 4750
Connection ~ 2600 5800
Wire Wire Line
	2600 5850 2600 5100
$Comp
L GND #PWR13
U 1 1 4BC4992B
P 2600 5850
F 0 "#PWR13" H 2600 5850 30  0001 C C
F 1 "GND" H 2600 5780 30  0001 C C
	1    2600 5850
	1    0    0    -1  
$EndComp
Connection ~ 2600 5700
Wire Wire Line
	2600 5800 2300 5800
Connection ~ 2600 5600
Wire Wire Line
	2600 5700 2300 5700
Connection ~ 2600 5500
Wire Wire Line
	2600 5600 2300 5600
Connection ~ 2600 5400
Wire Wire Line
	2600 5500 2300 5500
Connection ~ 2600 5300
Wire Wire Line
	2600 5400 2300 5400
Wire Wire Line
	2600 5300 2300 5300
Wire Wire Line
	2600 5100 2300 5100
Text Label 2350 5200 0    60   ~
Vd
Text Label 2350 5000 0    60   ~
Vg
Wire Wire Line
	2300 5200 2500 5200
Wire Wire Line
	2500 5000 2300 5000
Text Notes 1800 3550 0    60   ~
Capteurs
Text Notes 1700 3450 0    60   ~
Connecteurs
Wire Notes Line
	1600 3600 1600 4450
Wire Wire Line
	2400 4150 2150 4150
Wire Wire Line
	2400 3750 2150 3750
Text Label 2200 4150 0    60   ~
Vnd
Text Label 2200 3750 0    60   ~
Vng
$Comp
L DB9 J1
U 1 1 4BC4959D
P 1850 5400
F 0 "J1" H 1850 5950 70  0000 C C
F 1 "DB9" H 1850 4850 70  0000 C C
	1    1850 5400
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P1
U 1 1 4BC49511
P 1800 4250
F 0 "P1" V 1750 4250 40  0000 C C
F 1 "VitD" V 1850 4250 40  0000 C C
	1    1800 4250
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P2
U 1 1 4BC49510
P 1800 3850
F 0 "P2" V 1750 3850 40  0000 C C
F 1 "VitG" V 1850 3850 40  0000 C C
	1    1800 3850
	-1   0    0    1   
$EndComp
$EndSCHEMATC
