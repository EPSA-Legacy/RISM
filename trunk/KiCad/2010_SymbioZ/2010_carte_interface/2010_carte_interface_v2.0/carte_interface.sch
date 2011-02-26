EESchema Schematic File Version 1
LIBS:power,device,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,analog_switches,motorola,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib,./carte_interface.cache
EELAYER 23  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "Carte Interface"
Date "21 may 2010"
Rev "1.3"
Comp "EPSA - SymbioZ"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 7805 U3
U 1 1 4BF60835
P 2150 4400
F 0 "U3" H 2300 4204 60  0000 C C
F 1 "7805" H 2150 4600 60  0000 C C
	1    2150 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 3300 10350 3300
Connection ~ 1700 4350
Wire Notes Line
	1500 4900 1500 3950
Wire Notes Line
	1500 4900 2900 4900
Wire Notes Line
	2900 4900 2900 3950
Wire Notes Line
	2900 3950 1500 3950
Text Notes 1800 4100 0    60   ~
Alimentation
$Comp
L GND #PWR21
U 1 1 4BF5FD6A
P 2150 4800
F 0 "#PWR21" H 2150 4800 30  0001 C C
F 1 "GND" H 2150 4730 30  0001 C C
	1    2150 4800
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR25
U 1 1 4BF5FD63
P 2650 4350
F 0 "#PWR25" H 2650 4450 30  0001 C C
F 1 "VCC" H 2650 4450 30  0000 C C
	1    2650 4350
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR5
U 1 1 4BF5FD5B
P 1650 4350
F 0 "#PWR5" H 1650 4300 20  0001 C C
F 1 "+12V" H 1650 4450 30  0000 C C
	1    1650 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4750 2600 4750
$Comp
L CP C8
U 1 1 4BF5FD3D
P 1700 4550
F 0 "C8" H 1750 4650 50  0000 L C
F 1 "10u" H 1750 4450 50  0000 L C
	1    1700 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4350 1750 4350
Connection ~ 2150 4750
Wire Wire Line
	2150 4800 2150 4650
Connection ~ 2600 4350
Wire Wire Line
	2650 4350 2550 4350
$Comp
L CP C7
U 1 1 4BF5FD22
P 2600 4550
F 0 "C7" H 2650 4650 50  0000 L C
F 1 "10u" H 2650 4450 50  0000 L C
	1    2600 4550
	1    0    0    -1  
$EndComp
Connection ~ 6000 3150
Connection ~ 7350 3150
$Comp
L PWR_FLAG #FLG2
U 1 1 4BF5FC97
P 7350 3150
F 0 "#FLG2" H 7350 3420 30  0001 C C
F 1 "PWR_FLAG" H 7350 3380 30  0000 C C
	1    7350 3150
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG1
U 1 1 4BF5FC8F
P 6000 3150
F 0 "#FLG1" H 6000 3420 30  0001 C C
F 1 "PWR_FLAG" H 6000 3380 30  0000 C C
	1    6000 3150
	-1   0    0    1   
$EndComp
Connection ~ 7650 6450
Wire Wire Line
	8600 6450 7650 6450
Wire Notes Line
	4750 900  8650 900 
Wire Notes Line
	4750 900  4750 3500
Wire Notes Line
	4750 3500 8650 3500
Wire Notes Line
	8650 3500 8650 900 
Wire Wire Line
	6100 2450 5300 2450
Wire Wire Line
	5300 2550 6100 2550
Wire Wire Line
	6100 2650 5300 2650
Wire Wire Line
	7300 2650 8150 2650
Wire Wire Line
	7300 2550 8150 2550
Wire Wire Line
	7300 2450 8150 2450
Wire Wire Line
	7300 2750 8150 2750
Wire Wire Line
	6100 2750 5300 2750
Wire Wire Line
	5300 1850 6100 1850
Wire Wire Line
	7300 1750 8050 1750
Wire Wire Line
	8550 3050 7300 3050
Wire Wire Line
	8550 2950 7300 2950
Wire Wire Line
	8550 2850 7300 2850
Wire Wire Line
	4850 3050 6100 3050
Wire Wire Line
	4850 2950 6100 2950
Wire Wire Line
	4850 2850 6100 2850
Wire Wire Line
	4850 1750 6100 1750
Wire Wire Line
	4850 1650 6100 1650
Wire Wire Line
	4850 1550 6100 1550
Wire Wire Line
	4850 1450 6100 1450
Wire Wire Line
	4850 1350 6100 1350
Wire Wire Line
	4850 1250 6100 1250
Wire Wire Line
	4850 1150 6100 1150
Wire Wire Line
	8550 1850 7300 1850
Wire Wire Line
	8550 1650 7300 1650
Wire Wire Line
	8550 1550 7300 1550
Wire Wire Line
	8550 1450 7300 1450
Wire Wire Line
	8550 1350 7300 1350
Wire Wire Line
	8550 1250 7300 1250
Wire Wire Line
	8550 1150 7300 1150
Wire Notes Line
	4500 3750 850  3750
Wire Notes Line
	4500 3750 4500 2600
Wire Notes Line
	4500 2600 850  2600
$Comp
L +12V #PWR4
U 1 1 3E1F99B7
P 5950 3150
F 0 "#PWR4" H 5950 3100 20  0001 C C
F 1 "+12V" H 5950 3250 30  0000 C C
	1    5950 3150
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR3
U 1 1 3E1F99AC
P 4100 2900
F 0 "#PWR3" H 4100 2850 20  0001 C C
F 1 "+12V" H 4100 3000 30  0000 C C
	1    4100 2900
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR2
U 1 1 3E1F99A6
P 2050 2750
F 0 "#PWR2" H 2050 2700 20  0001 C C
F 1 "+12V" H 2050 2850 30  0000 C C
	1    2050 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1200 2500 1150
$Comp
L +12V #PWR1
U 1 1 3E1F9991
P 2500 1150
F 0 "#PWR1" H 2500 1100 20  0001 C C
F 1 "+12V" H 2500 1250 30  0000 C C
	1    2500 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 2550 10100 2500
Connection ~ 10200 2500
Wire Wire Line
	10100 2500 10200 2500
Wire Wire Line
	10200 2700 10200 2300
Wire Wire Line
	10200 2700 10250 2700
Connection ~ 10200 2600
Wire Wire Line
	10250 2600 10200 2600
Wire Wire Line
	9650 3300 9800 3300
Wire Wire Line
	10750 3300 10800 3300
Wire Notes Line
	9550 3450 9550 3000
Wire Notes Line
	9550 3450 10900 3450
Wire Notes Line
	10900 3450 10900 3000
Wire Notes Line
	10900 3000 9550 3000
Wire Wire Line
	10200 2400 10250 2400
Connection ~ 10200 2400
Wire Wire Line
	10200 2300 10250 2300
$Comp
L CONN_1 GND5
U 1 1 3E1F9719
P 10400 2400
F 0 "GND5" H 10480 2400 40  0000 C C
F 1 "Meca" H 10350 2440 30  0001 C C
	1    10400 2400
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 GND4
U 1 1 3E1F9718
P 10400 2300
F 0 "GND4" H 10480 2300 40  0000 C C
F 1 "Meca" H 10350 2340 30  0001 C C
	1    10400 2300
	1    0    0    -1  
$EndComp
Text Notes 9850 3100 0    60   ~
témoin alim
$Comp
L GND #PWR8
U 1 1 3E1F9717
P 10800 3300
F 0 "#PWR8" H 10800 3300 30  0001 C C
F 1 "GND" H 10800 3230 30  0001 C C
	1    10800 3300
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR22
U 1 1 3E1F9716
P 9650 3300
F 0 "#PWR22" H 9650 3400 30  0001 C C
F 1 "VCC" H 9650 3400 30  0000 C C
	1    9650 3300
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 3E1F9715
P 10050 3300
F 0 "R9" V 10130 3300 50  0000 C C
F 1 "1k" V 10050 3300 50  0000 C C
	1    10050 3300
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 3E1F9714
P 10550 3300
F 0 "D1" H 10550 3400 50  0000 C C
F 1 "RED" H 10550 3200 50  0000 C C
	1    10550 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR7
U 1 1 3E1F9713
P 10100 2550
F 0 "#PWR7" H 10100 2550 30  0001 C C
F 1 "GND" H 10100 2480 30  0001 C C
	1    10100 2550
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 GND2
U 1 1 3E1F9711
P 10400 2600
F 0 "GND2" H 10480 2600 40  0000 C C
F 1 "Meca" H 10350 2640 30  0001 C C
	1    10400 2600
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 GND1
U 1 1 3E1F9710
P 10400 2700
F 0 "GND1" H 10480 2700 40  0000 C C
F 1 "Meca" H 10350 2740 30  0001 C C
	1    10400 2700
	1    0    0    -1  
$EndComp
Connection ~ 9100 1150
Wire Wire Line
	9100 1100 9100 1650
Wire Notes Line
	9250 5450 7550 5450
Wire Notes Line
	9250 5450 9250 4100
Wire Notes Line
	9250 4100 7550 4100
Wire Wire Line
	9650 6850 10450 6850
Wire Wire Line
	9650 6650 10450 6650
Wire Wire Line
	9650 6450 10450 6450
Wire Wire Line
	9650 6250 10450 6250
Wire Notes Line
	11150 7200 9450 7200
Wire Notes Line
	11150 7200 11150 5850
Wire Notes Line
	11150 5850 9450 5850
Wire Wire Line
	10450 6050 9550 6050
Wire Wire Line
	9550 6150 10450 6150
Wire Wire Line
	9550 6350 10450 6350
Wire Wire Line
	9550 6550 10450 6550
Wire Wire Line
	10450 6750 9550 6750
Wire Notes Line
	9450 5850 9450 7200
$Comp
L GND #PWR6
U 1 1 3E1F9258
P 9550 6900
F 0 "#PWR6" H 9550 6900 30  0001 C C
F 1 "GND" H 9550 6830 30  0001 C C
	1    9550 6900
	1    0    0    -1  
$EndComp
Connection ~ 9550 6750
Connection ~ 9550 6550
Connection ~ 9550 6350
Connection ~ 9550 6150
Wire Wire Line
	9550 6050 9550 6900
$Comp
L DB9 J4
U 1 1 3E1F9257
P 10900 6450
F 0 "J4" H 10900 7000 70  0000 C C
F 1 "RELAIS" H 10900 5900 70  0000 C C
	1    10900 6450
	1    0    0    -1  
$EndComp
Connection ~ 4100 2950
Wire Wire Line
	4100 2900 4100 2950
Wire Wire Line
	4250 2950 3950 2950
Connection ~ 4100 3350
Wire Wire Line
	4100 3400 4100 3350
Wire Wire Line
	4250 3350 3950 3350
$Comp
L GND #PWR20
U 1 1 4BC2183E
P 4100 3400
F 0 "#PWR20" H 4100 3400 30  0001 C C
F 1 "GND" H 4100 3330 30  0001 C C
	1    4100 3400
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C6
U 1 1 4BC2183C
P 4250 3150
F 0 "C6" H 4300 3250 50  0000 L C
F 1 "1u" H 4300 3050 50  0000 L C
	1    4250 3150
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 4BC2183B
P 3950 3150
F 0 "C5" H 4000 3250 50  0000 L C
F 1 "17p" H 4000 3050 50  0000 L C
	1    3950 3150
	1    0    0    -1  
$EndComp
$Comp
L LM324 U2
U 2 1 4BC2093E
P 2150 3200
F 0 "U2" H 2200 3400 60  0000 C C
F 1 "LM324" H 2300 3000 50  0000 C C
	2    2150 3200
	1    0    0    -1  
$EndComp
$Comp
L LM324 U2
U 1 1 4B962A03
P 2600 1600
F 0 "U2" H 2650 1800 60  0000 C C
F 1 "LM324" H 2750 1400 50  0000 C C
	1    2600 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 4000 10350 4000
$Comp
L GND #PWR19
U 1 1 4BC207EF
P 10350 4000
F 0 "#PWR19" H 10350 4000 30  0001 C C
F 1 "GND" H 10350 3930 30  0001 C C
	1    10350 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	10400 5550 10350 5550
Wire Wire Line
	10400 5050 10350 5050
Wire Wire Line
	10400 4750 10350 4750
$Comp
L GND #PWR18
U 1 1 4BC207D3
P 10350 5550
F 0 "#PWR18" H 10350 5550 30  0001 C C
F 1 "GND" H 10350 5480 30  0001 C C
	1    10350 5550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR17
U 1 1 4BC207CD
P 10350 5050
F 0 "#PWR17" H 10350 5050 30  0001 C C
F 1 "GND" H 10350 4980 30  0001 C C
	1    10350 5050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR16
U 1 1 4BC207C4
P 10350 4750
F 0 "#PWR16" H 10350 4750 30  0001 C C
F 1 "GND" H 10350 4680 30  0001 C C
	1    10350 4750
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR24
U 1 1 4BC1F3E2
P 9100 1100
F 0 "#PWR24" H 9100 1200 30  0001 C C
F 1 "VCC" H 9100 1200 30  0000 C C
	1    9100 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1700 2100 1700
Wire Notes Line
	850  2500 850  750 
Wire Notes Line
	850  2500 4000 2500
Wire Notes Line
	4000 2500 4000 750 
Wire Notes Line
	4000 750  850  750 
Wire Wire Line
	1450 1500 1550 1500
Wire Wire Line
	1550 1700 950  1700
Wire Wire Line
	2100 950  2100 900 
Wire Wire Line
	2100 1450 2100 1500
Wire Wire Line
	3100 2200 3100 1600
Wire Wire Line
	3100 2200 2800 2200
Wire Wire Line
	2300 2200 2100 2200
Wire Wire Line
	2100 2200 2100 1700
Wire Wire Line
	2100 1500 2050 1500
$Comp
L GND #PWR15
U 1 1 4BC1E2D2
P 2500 2050
F 0 "#PWR15" H 2500 2050 30  0001 C C
F 1 "GND" H 2500 1980 30  0001 C C
	1    2500 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2000 2500 2050
$Comp
L VCC #PWR23
U 1 1 4BC1E2A2
P 1450 1500
F 0 "#PWR23" H 1450 1600 30  0001 C C
F 1 "VCC" H 1450 1600 30  0000 C C
	1    1450 1500
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR14
U 1 1 4BC1E225
P 2100 3600
F 0 "#PWR14" H 2100 3600 30  0001 C C
F 1 "GND" H 2100 3530 30  0001 C C
	1    2100 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 3600 2100 3600
Wire Wire Line
	2050 2800 2050 2750
Connection ~ 2750 3200
Wire Wire Line
	2750 3200 2750 3700
Wire Wire Line
	2750 3700 1650 3700
Wire Wire Line
	1650 3700 1650 3300
Wire Wire Line
	1250 3100 1650 3100
Wire Wire Line
	5950 3150 6100 3150
Wire Wire Line
	7300 3150 7400 3150
$Comp
L GND #PWR13
U 1 1 4BC1E002
P 7400 3150
F 0 "#PWR13" H 7400 3150 30  0001 C C
F 1 "GND" H 7400 3080 30  0001 C C
	1    7400 3150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR12
U 1 1 4BC1DEB6
P 2100 900
F 0 "#PWR12" H 2100 900 30  0001 C C
F 1 "GND" H 2100 830 30  0001 C C
	1    2100 900 
	1    0    0    1   
$EndComp
Text Label 9650 4550 0    60   ~
UscError1
Text Notes 7800 5400 0    60   ~
Connecteur Vitesse
Wire Notes Line
	7550 4100 7550 5450
$Comp
L GND #PWR11
U 1 1 4BC1DA42
P 7650 5150
F 0 "#PWR11" H 7650 5150 30  0001 C C
F 1 "GND" H 7650 5080 30  0001 C C
	1    7650 5150
	1    0    0    -1  
$EndComp
Connection ~ 7650 5000
Wire Wire Line
	8400 5000 7650 5000
Connection ~ 7650 4800
Wire Wire Line
	7650 4800 8400 4800
Connection ~ 7650 4700
Wire Wire Line
	7650 4700 8400 4700
Connection ~ 7650 4600
Wire Wire Line
	7650 4600 8400 4600
Connection ~ 7650 4500
Wire Wire Line
	7650 4500 8400 4500
Connection ~ 7650 4400
Wire Wire Line
	7650 4400 8400 4400
Wire Wire Line
	7650 5150 7650 4300
Wire Wire Line
	7650 4300 8400 4300
Wire Wire Line
	8400 5100 7800 5100
Wire Wire Line
	8400 4900 7800 4900
Text Label 7850 4900 0    60   ~
W2
Text Label 7850 5100 0    60   ~
W1
$Comp
L DB9 J3
U 1 1 4BC1D831
P 8850 4700
F 0 "J3" H 8850 5250 70  0000 C C
F 1 "VITESSE" H 8850 4150 70  0000 C C
	1    8850 4700
	1    0    0    -1  
$EndComp
Text Notes 9600 7150 0    60   ~
Connecteur Contacteur
Text Label 9700 6250 0    60   ~
Contacteur4
Text Label 9700 6450 0    60   ~
Contacteur3
Text Label 9700 6650 0    60   ~
Contacteur2
Text Label 9700 6850 0    60   ~
Contacteur1
Text Notes 7950 6850 0    60   ~
Connecteur TdB
Wire Notes Line
	9250 6900 9250 5550
Wire Notes Line
	9250 6900 7550 6900
Wire Notes Line
	7550 6900 7550 5550
Wire Notes Line
	7550 5550 9250 5550
$Comp
L GND #PWR10
U 1 1 4BC1D43B
P 7650 6600
F 0 "#PWR10" H 7650 6600 30  0001 C C
F 1 "GND" H 7650 6530 30  0001 C C
	1    7650 6600
	1    0    0    -1  
$EndComp
Connection ~ 7650 6250
Wire Wire Line
	7650 6250 8600 6250
Wire Wire Line
	8600 6050 7650 6050
Wire Wire Line
	7650 6050 7650 6600
Text Label 7850 5850 0    60   ~
SecuVi
Text Label 7850 5950 0    60   ~
SecuCr
Text Label 7850 5750 0    60   ~
SecuPl
Text Label 7850 6150 0    60   ~
Mode Elec
Text Label 7850 6350 0    60   ~
Frein
Text Label 7850 6550 0    60   ~
Boost
Wire Wire Line
	8600 6550 7800 6550
Wire Wire Line
	8600 5850 7800 5850
Wire Wire Line
	8600 6350 7800 6350
Wire Wire Line
	8600 6150 7800 6150
Wire Wire Line
	8600 5950 7800 5950
Wire Wire Line
	8600 5750 7800 5750
$Comp
L DB9 J2
U 1 1 4BC1D2F5
P 9050 6150
F 0 "J2" H 9050 6700 70  0000 C C
F 1 "TDB" H 9050 5600 70  0000 C C
	1    9050 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 6850 5750 4400
$Comp
L GND #PWR9
U 1 1 4BC1D21A
P 5750 6850
F 0 "#PWR9" H 5750 6850 30  0001 C C
F 1 "GND" H 5750 6780 30  0001 C C
	1    5750 6850
	1    0    0    -1  
$EndComp
Text Notes 5750 7050 0    60   ~
Connecteur Convertisseur
Wire Notes Line
	7400 4100 5550 4100
Wire Notes Line
	7400 4100 7400 7100
Wire Notes Line
	7400 7100 5550 7100
Wire Notes Line
	5550 7100 5550 4100
Connection ~ 5750 4600
Wire Wire Line
	6750 4600 5750 4600
Connection ~ 5750 4800
Wire Wire Line
	6750 4800 5750 4800
Connection ~ 5750 5000
Wire Wire Line
	6750 5000 5750 5000
Connection ~ 5750 5200
Wire Wire Line
	6750 5200 5750 5200
Connection ~ 5750 5400
Wire Wire Line
	6750 5400 5750 5400
Connection ~ 5750 5600
Wire Wire Line
	6750 5600 5750 5600
Connection ~ 5750 5800
Wire Wire Line
	6750 5800 5750 5800
Connection ~ 5750 6000
Wire Wire Line
	6750 6000 5750 6000
Connection ~ 5750 6200
Wire Wire Line
	6750 6200 5750 6200
Connection ~ 5750 6400
Wire Wire Line
	5750 6400 6750 6400
Wire Wire Line
	5750 4400 6750 4400
Text Label 5950 6600 0    60   ~
Derr2
Text Label 5950 4300 0    60   ~
Derr1
Text Label 5950 4500 0    60   ~
enable2
Text Label 5950 4700 0    60   ~
enable1
Text Label 5950 4900 0    60   ~
PWM2
Text Label 5950 5100 0    60   ~
PWM1
Text Label 5950 5300 0    60   ~
Tconv
Text Label 5950 5500 0    60   ~
Usc1
Text Label 5950 5700 0    60   ~
Umot2
Text Label 5950 5900 0    60   ~
Umot1
Text Label 5950 6100 0    60   ~
Isc2
Text Label 5950 6300 0    60   ~
Isc1
Text Label 5950 6500 0    60   ~
Imot2
Text Label 5950 6700 0    60   ~
Imot1
Wire Wire Line
	6750 6600 5900 6600
Wire Wire Line
	6750 4300 5900 4300
Wire Wire Line
	6750 4500 5900 4500
Wire Wire Line
	6750 4700 5900 4700
Wire Wire Line
	6750 4900 5900 4900
Wire Wire Line
	6750 5100 5900 5100
Wire Wire Line
	6750 5300 5900 5300
Wire Wire Line
	6750 5500 5900 5500
Wire Wire Line
	6750 5700 5900 5700
Wire Wire Line
	6750 5900 5900 5900
Wire Wire Line
	6750 6100 5900 6100
Wire Wire Line
	6750 6300 5900 6300
Wire Wire Line
	6750 6500 5900 6500
Wire Wire Line
	6750 6700 5900 6700
$Comp
L DB25 J1
U 1 1 4BC1CFBC
P 7200 5500
F 0 "J1" H 7250 6850 70  0000 C C
F 1 "CONVERT" H 7150 4150 70  0000 C C
	1    7200 5500
	1    0    0    -1  
$EndComp
Text Notes 10150 1850 0    60   ~
MEF signaux SC
Wire Notes Line
	8900 850  8900 1900
Wire Notes Line
	8900 850  11100 850 
Wire Notes Line
	11100 850  11100 1900
Wire Notes Line
	11100 1900 8900 1900
Text Notes 1100 2450 0    60   ~
Montage Différentiel Amplificateur (Klaric)
Text Notes 2850 3700 0    60   ~
Suiveur Tsc2
Wire Notes Line
	850  2600 850  3750
Text Label 2850 3200 0    60   ~
Tsc2_out
Text Label 1300 3100 0    60   ~
Tsc2
Wire Wire Line
	3400 3200 2650 3200
Text Label 1000 1700 0    60   ~
Tsc2_out
Text Label 3250 1600 0    60   ~
SgnKlaric
Wire Wire Line
	3100 1600 3900 1600
Text Label 10250 1650 0    60   ~
Tsc2
Wire Wire Line
	10200 1650 10900 1650
Wire Wire Line
	9100 1650 9700 1650
Wire Wire Line
	9100 1150 9700 1150
Connection ~ 9600 1150
Wire Wire Line
	9600 1300 9600 1000
Wire Wire Line
	9600 1300 9700 1300
Wire Wire Line
	9600 1000 9700 1000
Text Label 10250 1300 0    60   ~
UscError3
Text Label 10250 1150 0    60   ~
UscError2
Text Label 10250 1000 0    60   ~
UscError1
Wire Wire Line
	10200 1300 10900 1300
Wire Wire Line
	10200 1150 10900 1150
Wire Wire Line
	10200 1000 10900 1000
Text Notes 9850 4200 0    60   ~
Connecteur Klaric
Wire Notes Line
	11050 3600 9500 3600
Wire Notes Line
	11050 3600 11050 4250
Wire Notes Line
	11050 4250 9500 4250
Wire Notes Line
	9500 4250 9500 3600
Text Notes 9600 5750 0    60   ~
Connecteurs SuperCapa
Wire Notes Line
	11050 4400 9500 4400
Wire Notes Line
	11050 4400 11050 5800
Wire Notes Line
	11050 5800 9500 5800
Wire Notes Line
	9500 5800 9500 4400
Text Notes 6000 2200 0    60   ~
Connecteur Calculateur
Text Label 7400 3050 0    60   ~
Contacteur4
Text Label 5350 3050 0    60   ~
Contacteur3
Text Label 7400 2950 0    60   ~
Contacteur2
Text Label 5350 2950 0    60   ~
Contacteur1
Text Label 7400 2850 0    60   ~
Enable2
Text Label 5350 2850 0    60   ~
Enable1
Text Label 7400 2750 0    60   ~
PWM2
Text Label 5350 2750 0    60   ~
PWM1
Text Label 7400 2650 0    60   ~
SecuVi
Text Label 5350 2650 0    60   ~
SecuPl
Text Label 7400 2550 0    60   ~
SecuCr
Text Label 5350 2550 0    60   ~
Mode Elec
Text Label 7400 2450 0    60   ~
Frein
Text Label 5350 2450 0    60   ~
Boost
Text Label 7400 1850 0    60   ~
Tconv
Text Label 5350 1850 0    60   ~
W2
Text Label 7400 1750 0    60   ~
W1
Text Label 5350 1750 0    60   ~
UscError3
Text Label 7400 1650 0    60   ~
UscError2
Text Label 5350 1650 0    60   ~
UscError1
Text Label 7400 1550 0    60   ~
Tsc2_out
Text Label 5350 1550 0    60   ~
Usc1
Text Label 7400 1450 0    60   ~
Derr2
Text Label 5350 1450 0    60   ~
Derr1
Text Label 7400 1350 0    60   ~
Umot2
Text Label 5350 1350 0    60   ~
Umot1
Text Label 7400 1250 0    60   ~
Isc2
Text Label 5350 1250 0    60   ~
Isc1
Text Label 7400 1150 0    60   ~
Imot2
Text Label 5350 1150 0    60   ~
Imot1
Text Label 9650 3800 0    60   ~
SgnKlaric
Wire Wire Line
	10400 3800 9600 3800
$Comp
L CONN_2 P2
U 1 1 4BB23D9B
P 10750 3900
F 0 "P2" V 10700 3900 40  0000 C C
F 1 "KLARIC" V 10800 3900 40  0000 C C
	1    10750 3900
	1    0    0    -1  
$EndComp
Text Label 9650 5150 0    60   ~
Tsc2
Text Label 9650 4950 0    60   ~
UscError2
Wire Wire Line
	10400 4950 9600 4950
Wire Wire Line
	10400 5150 9600 5150
$Comp
L CONN_3 P4
U 1 1 4BB23C87
P 10750 5050
F 0 "P4" V 10700 5050 50  0000 C C
F 1 "SC2" V 10800 5050 40  0000 C C
	1    10750 5050
	1    0    0    -1  
$EndComp
Text Label 9650 5350 0    60   ~
UscError3
Wire Wire Line
	10400 5350 9600 5350
$Comp
L CONN_2 P3
U 1 1 4BB23C6D
P 10750 5450
F 0 "P3" V 10700 5450 40  0000 C C
F 1 "SC3" V 10800 5450 40  0000 C C
	1    10750 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 4550 9600 4550
$Comp
L CONN_2 P5
U 1 1 4BB23C5E
P 10750 4650
F 0 "P5" V 10700 4650 40  0000 C C
F 1 "SC1" V 10800 4650 40  0000 C C
	1    10750 4650
	1    0    0    -1  
$EndComp
$Comp
L HE10-16 CALC2
U 1 1 4BB1ACE1
P 6700 2800
F 0 "CALC2" H 6700 3250 70  0000 C C
F 1 "CALC_OUT" H 6700 2350 70  0000 C C
	1    6700 2800
	-1   0    0    -1  
$EndComp
$Comp
L HE10-16 CALC1
U 1 1 4BB1ACA3
P 6700 1500
F 0 "CALC1" H 6700 1950 70  0000 C C
F 1 "CALC_IN" H 6700 1050 70  0000 C C
	1    6700 1500
	-1   0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 4B9627F7
P 2550 2200
F 0 "R8" V 2630 2200 50  0000 C C
F 1 "3.5k" V 2550 2200 50  0000 C C
	1    2550 2200
	0    -1   1    0   
$EndComp
$Comp
L R R7
U 1 1 4B961BDA
P 1800 1700
F 0 "R7" V 1880 1700 50  0000 C C
F 1 "1k" V 1800 1700 50  0000 C C
	1    1800 1700
	0    -1   1    0   
$EndComp
$Comp
L R R6
U 1 1 4B961BC1
P 2100 1200
F 0 "R6" V 2180 1200 50  0000 C C
F 1 "3.5k" V 2100 1200 50  0000 C C
	1    2100 1200
	-1   0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 4B961BC0
P 1800 1500
F 0 "R5" V 1880 1500 50  0000 C C
F 1 "1k" V 1800 1500 50  0000 C C
	1    1800 1500
	0    -1   1    0   
$EndComp
$Comp
L R R4
U 1 1 4B961B86
P 9950 1650
F 0 "R4" V 10030 1650 50  0000 C C
F 1 "2.3k" V 9950 1650 50  0000 C C
	1    9950 1650
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 4B961B10
P 9950 1300
F 0 "R3" V 10030 1300 50  0000 C C
F 1 "1k" V 9950 1300 50  0000 C C
	1    9950 1300
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 4B961AFD
P 9950 1150
F 0 "R2" V 10030 1150 50  0000 C C
F 1 "1k" V 9950 1150 50  0000 C C
	1    9950 1150
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 4B961AB8
P 9950 1000
F 0 "R1" V 10030 1000 50  0000 C C
F 1 "1k" V 9950 1000 50  0000 C C
	1    9950 1000
	0    1    1    0   
$EndComp
$EndSCHEMATC
