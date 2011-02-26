EESchema Schematic File Version 1
LIBS:power,device,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,analog_switches,motorola,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib,./carte_interface.cache
EELAYER 23  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "Carte Interface"
Date "15 apr 2010"
Rev "1.0"
Comp "EPSA"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L +12C #PWR5
U 1 1 4BC218E3
P 4500 2900
F 0 "#PWR5" H 4500 2870 30  0001 C C
F 1 "+12C" H 4500 3010 40  0000 C C
	1    4500 2900
	1    0    0    -1  
$EndComp
Connection ~ 4500 2950
Wire Wire Line
	4500 2900 4500 2950
Wire Wire Line
	4650 2950 4350 2950
Connection ~ 4500 3350
Wire Wire Line
	4500 3400 4500 3350
Wire Wire Line
	4650 3350 4350 3350
$Comp
L GND #PWR25
U 1 1 4BC2183E
P 4500 3400
F 0 "#PWR25" H 4500 3400 30  0001 C C
F 1 "GND" H 4500 3330 30  0001 C C
	1    4500 3400
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C6
U 1 1 4BC2183C
P 4650 3150
F 0 "C6" H 4700 3250 50  0000 L C
F 1 "1u" H 4700 3050 50  0000 L C
	1    4650 3150
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 4BC2183B
P 4350 3150
F 0 "C5" H 4400 3250 50  0000 L C
F 1 "17p" H 4400 3050 50  0000 L C
	1    4350 3150
	1    0    0    -1  
$EndComp
$Comp
L LM324 U2
U 2 1 4BC2093E
P 2450 3200
F 0 "U2" H 2500 3400 60  0000 C C
F 1 "LM324" H 2600 3000 50  0000 C C
	2    2450 3200
	1    0    0    -1  
$EndComp
$Comp
L LM324 U2
U 1 1 4B962A03
P 2900 1600
F 0 "U2" H 2950 1800 60  0000 C C
F 1 "LM324" H 3050 1400 50  0000 C C
	1    2900 1600
	1    0    0    -1  
$EndComp
$Comp
L +12C #PWR4
U 1 1 4BC208FD
P 2350 2750
F 0 "#PWR4" H 2350 2720 30  0001 C C
F 1 "+12C" H 2350 2860 40  0000 C C
	1    2350 2750
	1    0    0    -1  
$EndComp
$Comp
L +12C #PWR3
U 1 1 4BC208D6
P 2850 1200
F 0 "#PWR3" H 2850 1170 30  0001 C C
F 1 "+12C" H 2850 1310 40  0000 C C
	1    2850 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 5600 8700 5600
$Comp
L GND #PWR24
U 1 1 4BC207EF
P 8700 5600
F 0 "#PWR24" H 8700 5600 30  0001 C C
F 1 "GND" H 8700 5530 30  0001 C C
	1    8700 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 7150 8700 7150
Wire Wire Line
	8750 6650 8700 6650
Wire Wire Line
	8750 6350 8700 6350
$Comp
L GND #PWR23
U 1 1 4BC207D3
P 8700 7150
F 0 "#PWR23" H 8700 7150 30  0001 C C
F 1 "GND" H 8700 7080 30  0001 C C
	1    8700 7150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR22
U 1 1 4BC207CD
P 8700 6650
F 0 "#PWR22" H 8700 6650 30  0001 C C
F 1 "GND" H 8700 6580 30  0001 C C
	1    8700 6650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR21
U 1 1 4BC207C4
P 8700 6350
F 0 "#PWR21" H 8700 6350 30  0001 C C
F 1 "GND" H 8700 6280 30  0001 C C
	1    8700 6350
	0    1    1    0   
$EndComp
Connection ~ 9100 2350
Wire Wire Line
	9100 2300 9100 2350
Connection ~ 9100 1850
Wire Wire Line
	9100 1800 9100 1850
$Comp
L VCC #PWR29
U 1 1 4BC1F3EE
P 9100 2300
F 0 "#PWR29" H 9100 2400 30  0001 C C
F 1 "VCC" H 9100 2400 30  0000 C C
	1    9100 2300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR28
U 1 1 4BC1F3E2
P 9100 1800
F 0 "#PWR28" H 9100 1900 30  0001 C C
F 1 "VCC" H 9100 1900 30  0000 C C
	1    9100 1800
	1    0    0    -1  
$EndComp
Connection ~ 8050 1150
$Comp
L PWR_FLAG #FLG2
U 1 1 4BC1ECC6
P 8050 1150
F 0 "#FLG2" H 8050 1420 30  0001 C C
F 1 "PWR_FLAG" H 8050 1380 30  0000 C C
	1    8050 1150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 1700 2400 1700
Wire Wire Line
	8050 800  8900 800 
Connection ~ 8150 800 
$Comp
L PWR_FLAG #FLG1
U 1 1 4BC1EC34
P 8150 800
F 0 "#FLG1" H 8150 1070 30  0001 C C
F 1 "PWR_FLAG" H 8150 1030 30  0000 C C
	1    8150 800 
	1    0    0    -1  
$EndComp
Text Notes 9550 1400 0    60   ~
Régulateur Tension (5V)
Text Notes 7600 1400 0    60   ~
Connecteur Alim (12V)
Wire Notes Line
	11100 550  9050 550 
Wire Notes Line
	11100 550  11100 1400
Wire Notes Line
	11100 1400 9050 1400
Wire Notes Line
	9050 1400 9050 550 
Wire Notes Line
	7450 550  9000 550 
Wire Notes Line
	7450 550  7450 1400
Wire Notes Line
	9000 550  9000 1400
Wire Notes Line
	9000 1400 7450 1400
$Comp
L GND #PWR20
U 1 1 4BC1EB34
P 10950 1250
F 0 "#PWR20" H 10950 1250 30  0001 C C
F 1 "GND" H 10950 1180 30  0001 C C
	1    10950 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 1200 10950 1250
Wire Wire Line
	10850 800  10950 800 
Wire Wire Line
	9700 800  10350 800 
Connection ~ 10100 800 
Connection ~ 8650 800 
Connection ~ 8400 800 
Connection ~ 9850 800 
$Comp
L LED D1
U 1 1 4BC1EA34
P 10950 1000
F 0 "D1" H 10950 1100 50  0000 C C
F 1 "RED" H 10950 900 50  0000 C C
	1    10950 1000
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 4BC1EA25
P 10600 800
F 0 "R9" V 10680 800 50  0000 C C
F 1 "500" V 10600 800 50  0000 C C
	1    10600 800 
	0    1    1    0   
$EndComp
Wire Wire Line
	10100 1200 10100 1250
Wire Wire Line
	9850 1200 9850 1250
$Comp
L GND #PWR19
U 1 1 4BC1E9DB
P 10100 1250
F 0 "#PWR19" H 10100 1250 30  0001 C C
F 1 "GND" H 10100 1180 30  0001 C C
	1    10100 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR18
U 1 1 4BC1E9DA
P 9850 1250
F 0 "#PWR18" H 9850 1250 30  0001 C C
F 1 "GND" H 9850 1180 30  0001 C C
	1    9850 1250
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C4
U 1 1 4BC1E9D9
P 10100 1000
F 0 "C4" H 10150 1100 50  0000 L C
F 1 "10u" H 10150 900 50  0000 L C
	1    10100 1000
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 4BC1E9D8
P 9850 1000
F 0 "C2" H 9900 1100 50  0000 L C
F 1 "17p" H 9900 900 50  0000 L C
	1    9850 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 800  8400 750 
$Comp
L +12C #PWR2
U 1 1 4BC1E9A9
P 8400 750
F 0 "#PWR2" H 8400 720 30  0001 C C
F 1 "+12C" H 8400 860 40  0000 C C
	1    8400 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1250 8050 1000
$Comp
L GND #PWR17
U 1 1 4BC1E990
P 8050 1250
F 0 "#PWR17" H 8050 1250 30  0001 C C
F 1 "GND" H 8050 1180 30  0001 C C
	1    8050 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 1250 9300 1100
$Comp
L GND #PWR16
U 1 1 4BC1E951
P 9300 1250
F 0 "#PWR16" H 9300 1250 30  0001 C C
F 1 "GND" H 9300 1180 30  0001 C C
	1    9300 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1200 8650 1250
Wire Wire Line
	8400 1200 8400 1250
$Comp
L GND #PWR15
U 1 1 4BC1E936
P 8650 1250
F 0 "#PWR15" H 8650 1250 30  0001 C C
F 1 "GND" H 8650 1180 30  0001 C C
	1    8650 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR14
U 1 1 4BC1E930
P 8400 1250
F 0 "#PWR14" H 8400 1250 30  0001 C C
F 1 "GND" H 8400 1180 30  0001 C C
	1    8400 1250
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C3
U 1 1 4BC1E8DF
P 8650 1000
F 0 "C3" H 8700 1100 50  0000 L C
F 1 "10u" H 8700 900 50  0000 L C
	1    8650 1000
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 4BC1E8C7
P 8400 1000
F 0 "C1" H 8450 1100 50  0000 L C
F 1 "17p" H 8450 900 50  0000 L C
	1    8400 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 800  9850 750 
$Comp
L VCC #PWR27
U 1 1 4BC1E672
P 9850 750
F 0 "#PWR27" H 9850 850 30  0001 C C
F 1 "VCC" H 9850 850 30  0000 C C
	1    9850 750 
	1    0    0    -1  
$EndComp
Wire Notes Line
	1150 2500 1150 750 
Wire Notes Line
	1150 2500 4300 2500
Wire Notes Line
	4300 2500 4300 750 
Wire Notes Line
	4300 750  1150 750 
Wire Wire Line
	1750 1500 1850 1500
Wire Wire Line
	1850 1700 1250 1700
Wire Wire Line
	2400 950  2400 900 
Wire Wire Line
	2400 1450 2400 1500
Wire Wire Line
	3400 2200 3400 1600
Wire Wire Line
	3400 2200 3100 2200
Wire Wire Line
	2600 2200 2400 2200
Wire Wire Line
	2400 2200 2400 1700
Wire Wire Line
	2400 1500 2350 1500
$Comp
L GND #PWR13
U 1 1 4BC1E2D2
P 2800 2050
F 0 "#PWR13" H 2800 2050 30  0001 C C
F 1 "GND" H 2800 1980 30  0001 C C
	1    2800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2000 2800 2050
Wire Wire Line
	2800 1200 2850 1200
$Comp
L VCC #PWR26
U 1 1 4BC1E2A2
P 1750 1500
F 0 "#PWR26" H 1750 1600 30  0001 C C
F 1 "VCC" H 1750 1600 30  0000 C C
	1    1750 1500
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR12
U 1 1 4BC1E225
P 2400 3600
F 0 "#PWR12" H 2400 3600 30  0001 C C
F 1 "GND" H 2400 3530 30  0001 C C
	1    2400 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 3600 2400 3600
Wire Wire Line
	2350 2800 2350 2750
Connection ~ 3050 3200
Wire Wire Line
	3050 3200 3050 3700
Wire Wire Line
	3050 3700 1950 3700
Wire Wire Line
	1950 3700 1950 3300
Wire Wire Line
	1550 3100 1950 3100
Wire Wire Line
	1350 7050 1500 7050
$Comp
L +12C #PWR1
U 1 1 4BC1E01B
P 1350 7050
F 0 "#PWR1" H 1350 7020 30  0001 C C
F 1 "+12C" H 1350 7160 40  0000 C C
	1    1350 7050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2700 7050 2800 7050
$Comp
L GND #PWR11
U 1 1 4BC1E002
P 2800 7050
F 0 "#PWR11" H 2800 7050 30  0001 C C
F 1 "GND" H 2800 6980 30  0001 C C
	1    2800 7050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR10
U 1 1 4BC1DEB6
P 2400 900
F 0 "#PWR10" H 2400 900 30  0001 C C
F 1 "GND" H 2400 830 30  0001 C C
	1    2400 900 
	1    0    0    1   
$EndComp
Text Label 8000 6150 0    60   ~
UscError1
Text Notes 6300 5950 0    60   ~
Connecteur Vitesse
Wire Notes Line
	7500 4600 6000 4600
Wire Notes Line
	7500 4600 7500 5950
Wire Notes Line
	7500 5950 6000 5950
Wire Notes Line
	6000 5950 6000 4600
$Comp
L GND #PWR9
U 1 1 4BC1DA42
P 6100 5650
F 0 "#PWR9" H 6100 5650 30  0001 C C
F 1 "GND" H 6100 5580 30  0001 C C
	1    6100 5650
	1    0    0    -1  
$EndComp
Connection ~ 6100 5500
Wire Wire Line
	6850 5500 6100 5500
Connection ~ 6100 5300
Wire Wire Line
	6100 5300 6850 5300
Connection ~ 6100 5200
Wire Wire Line
	6100 5200 6850 5200
Connection ~ 6100 5100
Wire Wire Line
	6100 5100 6850 5100
Connection ~ 6100 5000
Wire Wire Line
	6100 5000 6850 5000
Connection ~ 6100 4900
Wire Wire Line
	6100 4900 6850 4900
Wire Wire Line
	6100 5650 6100 4800
Wire Wire Line
	6100 4800 6850 4800
Wire Wire Line
	6850 5600 6250 5600
Wire Wire Line
	6850 5400 6250 5400
Text Label 6300 5400 0    60   ~
W2
Text Label 6300 5600 0    60   ~
W1
$Comp
L DB9 J3
U 1 1 4BC1D831
P 7300 5200
F 0 "J3" H 7300 5750 70  0000 C C
F 1 "VITESSE" H 7300 4650 70  0000 C C
	1    7300 5200
	1    0    0    -1  
$EndComp
Text Notes 9700 7400 0    60   ~
Connecteur Contacteur
Wire Notes Line
	11100 5850 9550 5850
Wire Notes Line
	11100 5850 11100 7400
Wire Notes Line
	11100 7400 9550 7400
Wire Notes Line
	9550 7400 9550 5850
$Comp
L GND #PWR8
U 1 1 4BC1D7CD
P 9650 7250
F 0 "#PWR8" H 9650 7250 30  0001 C C
F 1 "GND" H 9650 7180 30  0001 C C
	1    9650 7250
	1    0    0    -1  
$EndComp
Connection ~ 9650 7000
Wire Wire Line
	10600 7000 9650 7000
Connection ~ 9650 6650
Wire Wire Line
	9650 6650 10600 6650
Connection ~ 9650 6300
Wire Wire Line
	9650 6300 10600 6300
Wire Wire Line
	9650 7250 9650 5950
Wire Wire Line
	9650 5950 10600 5950
Text Label 9850 6150 0    60   ~
Contacteur4
Text Label 9850 6500 0    60   ~
Contacteur3
Text Label 9850 6850 0    60   ~
Contacteur2
Wire Wire Line
	9800 6150 10600 6150
Wire Wire Line
	9800 6500 10600 6500
Wire Wire Line
	9800 6850 10600 6850
Wire Wire Line
	9800 7200 10600 7200
Text Label 9850 7200 0    60   ~
Contacteur1
$Comp
L CONN_2 P14
U 1 1 4BC1D6B5
P 10950 7100
F 0 "P14" V 10900 7100 40  0000 C C
F 1 "CONT_1" V 11000 7100 40  0000 C C
	1    10950 7100
	1    0    0    1   
$EndComp
$Comp
L CONN_2 P13
U 1 1 4BC1D6A8
P 10950 6750
F 0 "P13" V 10900 6750 40  0000 C C
F 1 "CONT_2" V 11000 6750 40  0000 C C
	1    10950 6750
	1    0    0    1   
$EndComp
$Comp
L CONN_2 P12
U 1 1 4BC1D6A1
P 10950 6400
F 0 "P12" V 10900 6400 40  0000 C C
F 1 "CONT_3" V 11000 6400 40  0000 C C
	1    10950 6400
	1    0    0    1   
$EndComp
$Comp
L CONN_2 P11
U 1 1 4BC1D689
P 10950 6050
F 0 "P11" V 10900 6050 40  0000 C C
F 1 "CONT_4" V 11000 6050 40  0000 C C
	1    10950 6050
	1    0    0    1   
$EndComp
Text Notes 6750 7400 0    60   ~
Connecteur TdB
Wire Notes Line
	7700 7400 7700 6050
Wire Notes Line
	7700 7400 6000 7400
Wire Notes Line
	6000 7400 6000 6050
Wire Notes Line
	6000 6050 7700 6050
$Comp
L GND #PWR7
U 1 1 4BC1D43B
P 6100 7100
F 0 "#PWR7" H 6100 7100 30  0001 C C
F 1 "GND" H 6100 7030 30  0001 C C
	1    6100 7100
	1    0    0    -1  
$EndComp
Connection ~ 6100 6750
Wire Wire Line
	7050 6750 6100 6750
Connection ~ 6100 6550
Wire Wire Line
	6100 6550 7050 6550
Wire Wire Line
	6100 7100 6100 6350
Wire Wire Line
	6100 6350 7050 6350
Text Label 6300 6950 0    60   ~
SecuVi
Text Label 6300 6450 0    60   ~
SecuCr
Text Label 6300 6250 0    60   ~
SecuPl
Text Label 6300 6650 0    60   ~
Mode Elec
Text Label 6300 6850 0    60   ~
Frein
Text Label 6300 7050 0    60   ~
Boost
Wire Wire Line
	7050 7050 6250 7050
Wire Wire Line
	7050 6950 6250 6950
Wire Wire Line
	7050 6850 6250 6850
Wire Wire Line
	7050 6650 6250 6650
Wire Wire Line
	7050 6450 6250 6450
Wire Wire Line
	7050 6250 6250 6250
$Comp
L DB9 J2
U 1 1 4BC1D2F5
P 7500 6650
F 0 "J2" H 7500 7200 70  0000 C C
F 1 "TDB" H 7500 6100 70  0000 C C
	1    7500 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 7150 4200 4700
$Comp
L GND #PWR6
U 1 1 4BC1D21A
P 4200 7150
F 0 "#PWR6" H 4200 7150 30  0001 C C
F 1 "GND" H 4200 7080 30  0001 C C
	1    4200 7150
	1    0    0    -1  
$EndComp
Text Notes 4200 7400 0    60   ~
Connecteur Convertisseur
Wire Notes Line
	5850 4400 4000 4400
Wire Notes Line
	5850 4400 5850 7400
Wire Notes Line
	5850 7400 4000 7400
Wire Notes Line
	4000 7400 4000 4400
Connection ~ 4200 4900
Wire Wire Line
	5200 4900 4200 4900
Connection ~ 4200 5100
Wire Wire Line
	5200 5100 4200 5100
Connection ~ 4200 5300
Wire Wire Line
	5200 5300 4200 5300
Connection ~ 4200 5500
Wire Wire Line
	5200 5500 4200 5500
Connection ~ 4200 5700
Wire Wire Line
	5200 5700 4200 5700
Connection ~ 4200 5900
Wire Wire Line
	5200 5900 4200 5900
Connection ~ 4200 6100
Wire Wire Line
	5200 6100 4200 6100
Connection ~ 4200 6300
Wire Wire Line
	5200 6300 4200 6300
Connection ~ 4200 6500
Wire Wire Line
	5200 6500 4200 6500
Connection ~ 4200 6700
Wire Wire Line
	4200 6700 5200 6700
Wire Wire Line
	4200 4700 5200 4700
Text Label 4400 6900 0    60   ~
Derr2
Text Label 4400 4600 0    60   ~
Derr1
Text Label 4400 4800 0    60   ~
enable2
Text Label 4400 5000 0    60   ~
enable1
Text Label 4400 5200 0    60   ~
PWM2
Text Label 4400 5400 0    60   ~
PWM1
Text Label 4400 5600 0    60   ~
Tconv
Text Label 4400 5800 0    60   ~
Usc1
Text Label 4400 6000 0    60   ~
Umot2
Text Label 4400 6200 0    60   ~
Umot1
Text Label 4400 6400 0    60   ~
Isc2
Text Label 4400 6600 0    60   ~
Isc1
Text Label 4400 6800 0    60   ~
Imot2
Text Label 4400 7000 0    60   ~
Imot1
Wire Wire Line
	5200 6900 4350 6900
Wire Wire Line
	5200 4600 4350 4600
Wire Wire Line
	5200 4800 4350 4800
Wire Wire Line
	5200 5000 4350 5000
Wire Wire Line
	5200 5200 4350 5200
Wire Wire Line
	5200 5400 4350 5400
Wire Wire Line
	5200 5600 4350 5600
Wire Wire Line
	5200 5800 4350 5800
Wire Wire Line
	5200 6000 4350 6000
Wire Wire Line
	5200 6200 4350 6200
Wire Wire Line
	5200 6400 4350 6400
Wire Wire Line
	5200 6600 4350 6600
Wire Wire Line
	5200 6800 4350 6800
Wire Wire Line
	5200 7000 4350 7000
$Comp
L DB25 J1
U 1 1 4BC1CFBC
P 5650 5800
F 0 "J1" H 5700 7150 70  0000 C C
F 1 "CONVERT" H 5600 4450 70  0000 C C
	1    5650 5800
	1    0    0    -1  
$EndComp
Text Notes 10150 2600 0    60   ~
MEF signaux SC
Wire Notes Line
	8900 1550 8900 2600
Wire Notes Line
	8900 1550 11100 1550
Wire Notes Line
	11100 1550 11100 2600
Wire Notes Line
	11100 2600 8900 2600
Text Notes 1450 2500 0    60   ~
Montage Différentiel Amplificateur (Klaric)
Text Notes 3150 3750 0    60   ~
Suiveur Tsc2
Wire Notes Line
	4000 2600 1150 2600
Wire Notes Line
	4000 2600 4000 3750
Wire Notes Line
	4000 3750 1150 3750
Wire Notes Line
	1150 3750 1150 2600
Text Label 3150 3200 0    60   ~
Tsc2_out
Text Label 1600 3100 0    60   ~
Tsc2
Wire Wire Line
	3700 3200 2950 3200
Text Label 1300 1700 0    60   ~
Tsc2_out
Text Label 3550 1600 0    60   ~
SgnKlaric
Wire Wire Line
	3400 1600 4200 1600
Text Label 10650 2350 0    60   ~
Tsc2
Wire Wire Line
	10200 2350 10900 2350
Wire Wire Line
	9700 2350 9000 2350
Wire Wire Line
	9000 1850 9700 1850
Connection ~ 9600 1850
Wire Wire Line
	9600 2000 9600 1700
Wire Wire Line
	9600 2000 9700 2000
Wire Wire Line
	9600 1700 9700 1700
Text Label 10250 2000 0    60   ~
UscError3
Text Label 10250 1850 0    60   ~
UscError2
Text Label 10250 1700 0    60   ~
UscError1
Wire Wire Line
	10200 2000 10900 2000
Wire Wire Line
	10200 1850 10900 1850
Wire Wire Line
	10200 1700 10900 1700
Text Notes 8250 5850 0    60   ~
Connecteur Klaric
Wire Notes Line
	9400 5200 7850 5200
Wire Notes Line
	9400 5200 9400 5850
Wire Notes Line
	9400 5850 7850 5850
Wire Notes Line
	7850 5850 7850 5200
Text Notes 8000 7400 0    60   ~
Connecteurs SuperCapa
Wire Notes Line
	9400 6000 7850 6000
Wire Notes Line
	9400 6000 9400 7400
Wire Notes Line
	9400 7400 7850 7400
Wire Notes Line
	7850 7400 7850 6000
Text Notes 2350 7400 0    60   ~
Connecteur Calculateur
Wire Notes Line
	3800 4800 600  4800
Wire Notes Line
	3800 4800 3800 7400
Wire Notes Line
	3800 7400 600  7400
Wire Notes Line
	600  7400 600  4800
Text Label 2800 6950 0    60   ~
Contacteur4
Text Label 750  6950 0    60   ~
Contacteur3
Text Label 2800 6850 0    60   ~
Contacteur2
Text Label 750  6850 0    60   ~
Contacteur1
Text Label 2800 6750 0    60   ~
Enable2
Text Label 750  6750 0    60   ~
Enable1
Text Label 2800 6650 0    60   ~
PWM2
Text Label 750  6650 0    60   ~
PWM1
Text Label 2800 6550 0    60   ~
SecuVi
Text Label 750  6550 0    60   ~
SecuPl
Text Label 2800 6450 0    60   ~
SecuCr
Text Label 750  6450 0    60   ~
Mode Elec
Text Label 2800 6350 0    60   ~
Frein
Text Label 750  6350 0    60   ~
Boost
Text Label 2800 5750 0    60   ~
Tconv
Text Label 750  5750 0    60   ~
W2
Text Label 2800 5650 0    60   ~
W1
Text Label 750  5650 0    60   ~
UscError3
Text Label 2800 5550 0    60   ~
UscError2
Text Label 750  5550 0    60   ~
UscError1
Text Label 2800 5450 0    60   ~
Tsc2_out
Text Label 750  5450 0    60   ~
Usc1
Text Label 2800 5350 0    60   ~
Derr2
Text Label 750  5350 0    60   ~
Derr1
Text Label 2800 5250 0    60   ~
Umot2
Text Label 750  5250 0    60   ~
Umot1
Text Label 2800 5150 0    60   ~
Isc2
Text Label 750  5150 0    60   ~
Isc1
Text Label 2800 5050 0    60   ~
Imot2
Text Label 750  5050 0    60   ~
Imot1
Text Label 8000 5400 0    60   ~
SgnKlaric
Wire Wire Line
	8750 5400 7950 5400
$Comp
L CONN_2 P4
U 1 1 4BB23D9B
P 9100 5500
F 0 "P4" V 9050 5500 40  0000 C C
F 1 "KLARIC" V 9150 5500 40  0000 C C
	1    9100 5500
	1    0    0    -1  
$EndComp
Text Label 8000 6750 0    60   ~
Tsc2
Text Label 8000 6550 0    60   ~
UscError2
Wire Wire Line
	8750 6550 7950 6550
Wire Wire Line
	8750 6750 7950 6750
$Comp
L CONN_3 K1
U 1 1 4BB23C87
P 9100 6650
F 0 "K1" V 9050 6650 50  0000 C C
F 1 "SC2" V 9150 6650 40  0000 C C
	1    9100 6650
	1    0    0    -1  
$EndComp
Text Label 8000 6950 0    60   ~
UscError3
Wire Wire Line
	8750 6950 7950 6950
$Comp
L CONN_2 P3
U 1 1 4BB23C6D
P 9100 7050
F 0 "P3" V 9050 7050 40  0000 C C
F 1 "SC3" V 9150 7050 40  0000 C C
	1    9100 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 6150 7950 6150
$Comp
L CONN_2 P2
U 1 1 4BB23C5E
P 9100 6250
F 0 "P2" V 9050 6250 40  0000 C C
F 1 "SC1" V 9150 6250 40  0000 C C
	1    9100 6250
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P1
U 1 1 4BB23744
P 7700 900
F 0 "P1" V 7650 900 40  0000 C C
F 1 "ALIM" V 7750 900 40  0000 C C
	1    7700 900 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1500 5050 700  5050
Wire Wire Line
	1500 5150 700  5150
Wire Wire Line
	1500 5250 700  5250
Wire Wire Line
	1500 5350 700  5350
Wire Wire Line
	1500 5450 700  5450
Wire Wire Line
	1500 5550 700  5550
Wire Wire Line
	1500 5650 700  5650
Wire Wire Line
	1500 5750 700  5750
Wire Wire Line
	1500 6950 700  6950
Wire Wire Line
	1500 6850 700  6850
Wire Wire Line
	1500 6750 700  6750
Wire Wire Line
	1500 6650 700  6650
Wire Wire Line
	1500 6550 700  6550
Wire Wire Line
	1500 6450 700  6450
Wire Wire Line
	1500 6350 700  6350
Wire Wire Line
	2700 6950 3500 6950
Wire Wire Line
	2700 6850 3500 6850
Wire Wire Line
	2700 6750 3500 6750
Wire Wire Line
	2700 6650 3500 6650
Wire Wire Line
	2700 6550 3500 6550
Wire Wire Line
	2700 6450 3500 6450
Wire Wire Line
	2700 6350 3500 6350
Wire Wire Line
	2700 5750 3500 5750
Wire Wire Line
	2700 5650 3500 5650
Wire Wire Line
	2700 5550 3500 5550
Wire Wire Line
	2700 5450 3500 5450
Wire Wire Line
	2700 5350 3500 5350
Wire Wire Line
	2700 5250 3500 5250
Wire Wire Line
	2700 5150 3500 5150
Wire Wire Line
	3500 5050 2700 5050
$Comp
L HE10-16 P10
U 1 1 4BB1ACE1
P 2100 6700
F 0 "P10" H 2100 7150 70  0000 C C
F 1 "CALC_OUT" H 2100 6250 70  0000 C C
	1    2100 6700
	-1   0    0    -1  
$EndComp
$Comp
L HE10-16 P9
U 1 1 4BB1ACA3
P 2100 5400
F 0 "P9" H 2100 5850 70  0000 C C
F 1 "CALC_IN" H 2100 4950 70  0000 C C
	1    2100 5400
	-1   0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 4B9627F7
P 2850 2200
F 0 "R8" V 2930 2200 50  0000 C C
F 1 "3.5k" V 2850 2200 50  0000 C C
	1    2850 2200
	0    -1   1    0   
$EndComp
$Comp
L R R7
U 1 1 4B961BDA
P 2100 1700
F 0 "R7" V 2180 1700 50  0000 C C
F 1 "1k" V 2100 1700 50  0000 C C
	1    2100 1700
	0    -1   1    0   
$EndComp
$Comp
L R R6
U 1 1 4B961BC1
P 2400 1200
F 0 "R6" V 2480 1200 50  0000 C C
F 1 "3.5k" V 2400 1200 50  0000 C C
	1    2400 1200
	-1   0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 4B961BC0
P 2100 1500
F 0 "R5" V 2180 1500 50  0000 C C
F 1 "1k" V 2100 1500 50  0000 C C
	1    2100 1500
	0    -1   1    0   
$EndComp
$Comp
L R R4
U 1 1 4B961B86
P 9950 2350
F 0 "R4" V 10030 2350 50  0000 C C
F 1 "2.3k" V 9950 2350 50  0000 C C
	1    9950 2350
	0    1    1    0   
$EndComp
$Comp
L 7805 U1
U 1 1 4B961B3A
P 9300 850
F 0 "U1" H 9450 654 60  0000 C C
F 1 "7805" H 9300 1050 60  0000 C C
	1    9300 850 
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 4B961B10
P 9950 2000
F 0 "R3" V 10030 2000 50  0000 C C
F 1 "1k" V 9950 2000 50  0000 C C
	1    9950 2000
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 4B961AFD
P 9950 1850
F 0 "R2" V 10030 1850 50  0000 C C
F 1 "1k" V 9950 1850 50  0000 C C
	1    9950 1850
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 4B961AB8
P 9950 1700
F 0 "R1" V 10030 1700 50  0000 C C
F 1 "1k" V 9950 1700 50  0000 C C
	1    9950 1700
	0    1    1    0   
$EndComp
$EndSCHEMATC
