EESchema Schematic File Version 1
LIBS:power,device,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,analog_switches,motorola,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib,./carte_interface_L.cache
EELAYER 23  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "Carte Interface Bas"
Date "25 jan 2003"
Rev "1.0"
Comp "EPSA - SymbioZ"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	4500 7650 4500 600 
Wire Notes Line
	4500 7650 600  7650
Wire Notes Line
	600  7650 600  7600
Wire Wire Line
	3900 7150 3100 7150
Wire Wire Line
	3900 6950 3100 6950
Wire Wire Line
	3900 6750 3100 6750
Wire Wire Line
	3900 6550 3100 6550
Wire Wire Line
	1150 7150 2000 7150
Wire Wire Line
	1150 6950 2000 6950
Wire Wire Line
	1150 6750 2000 6750
Wire Wire Line
	1150 6550 2000 6550
Wire Wire Line
	700  4950 1950 4950
Wire Wire Line
	700  4850 1950 4850
Wire Wire Line
	700  4650 1950 4650
Wire Wire Line
	4400 4850 3150 4850
Wire Wire Line
	4400 4750 3150 4750
Wire Wire Line
	4400 4650 3150 4650
NoConn ~ 2900 1150
$Comp
L +12V #PWR4
U 1 1 3E326196
P 3200 7350
F 0 "#PWR4" H 3200 7300 20  0001 C C
F 1 "+12V" H 3200 7450 30  0000 C C
	1    3200 7350
	1    0    0    -1  
$EndComp
Text Label 3150 7150 0    60   ~
TconvA
Text Label 1500 7150 0    60   ~
Usc1A
Text Label 3150 6950 0    60   ~
Umot2A
Text Label 1500 6950 0    60   ~
Umot1A
Text Label 3150 6750 0    60   ~
Isc2A
Text Label 3150 6550 0    60   ~
Imot2A
Text Label 1500 6750 0    60   ~
Isc1A
Text Label 1500 6550 0    60   ~
Imot1A
$Comp
L GND #PWR9
U 1 1 3E326152
P 1950 7400
F 0 "#PWR9" H 1950 7400 30  0001 C C
F 1 "GND" H 1950 7330 30  0001 C C
	1    1950 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 7400 1950 7350
Wire Wire Line
	3200 7350 3100 7350
Wire Wire Line
	1950 7350 2000 7350
$Comp
L HE10-10 P6
U 1 1 3E32614F
P 2550 6950
F 0 "P6" H 2550 7500 70  0000 C C
F 1 "HE10-10" H 2550 6350 70  0000 C C
	1    2550 6950
	1    0    0    -1  
$EndComp
Wire Notes Line
	600  7550 600  600 
Wire Wire Line
	1950 4750 1150 4750
Wire Wire Line
	1950 4550 1150 4550
Wire Wire Line
	1950 4450 1150 4450
Wire Wire Line
	1950 4350 1150 4350
Wire Wire Line
	3150 5050 3900 5050
Wire Wire Line
	3150 4550 3900 4550
Wire Wire Line
	3150 4450 3900 4450
Wire Wire Line
	3150 4350 3900 4350
Wire Wire Line
	1950 3650 1150 3650
Wire Wire Line
	1950 3750 1150 3750
Wire Wire Line
	1950 3850 1150 3850
Wire Wire Line
	3150 3850 4000 3850
Wire Wire Line
	3150 3750 4000 3750
Wire Wire Line
	3150 3650 4000 3650
Wire Wire Line
	1950 2150 1150 2150
Wire Wire Line
	1950 2250 1150 2250
Wire Wire Line
	1950 2350 1150 2350
Wire Wire Line
	1950 2450 1150 2450
Wire Wire Line
	1950 2550 1150 2550
Wire Wire Line
	1950 2650 1150 2650
Wire Wire Line
	1950 2750 1150 2750
Wire Wire Line
	3150 2850 3900 2850
Wire Wire Line
	3150 2650 3900 2650
Wire Wire Line
	3150 2550 3900 2550
Wire Wire Line
	3150 2450 3900 2450
Wire Wire Line
	3150 2350 3900 2350
Wire Wire Line
	3150 2250 3900 2250
Wire Wire Line
	3150 2150 3900 2150
Text Label 1200 6550 0    60   ~
RA0
Text Label 3650 6550 0    60   ~
RA1
Text Label 1200 6750 0    60   ~
RA2
Text Label 3650 6750 0    60   ~
RA3
Text Label 1200 6950 0    60   ~
RA5
Text Label 800  4650 0    60   ~
RC0
Text Label 4100 4650 0    60   ~
RC1
Text Label 800  4850 0    60   ~
RC2
Text Label 4100 4850 0    60   ~
RC3
Text Label 3650 6950 0    60   ~
RE2
Text Label 800  4950 0    60   ~
RC4
Text Label 4100 4750 0    60   ~
RB1
Text Label 3650 7150 0    60   ~
RB4
Text Label 1200 7150 0    60   ~
RB0
Wire Wire Line
	1950 5450 1150 5450
Wire Wire Line
	1150 5550 1950 5550
Wire Wire Line
	1950 5650 1150 5650
Wire Wire Line
	3150 5650 4000 5650
Wire Wire Line
	3150 5550 4000 5550
Wire Wire Line
	3150 5450 4000 5450
Wire Wire Line
	3150 5750 4000 5750
Wire Wire Line
	1950 5750 1150 5750
Wire Wire Line
	1150 5050 1950 5050
Wire Wire Line
	3150 4950 3900 4950
Wire Wire Line
	4400 6050 3150 6050
Wire Wire Line
	4400 5950 3150 5950
Wire Wire Line
	4400 5850 3150 5850
Wire Wire Line
	700  6050 1950 6050
Wire Wire Line
	700  5950 1950 5950
Wire Wire Line
	700  5850 1950 5850
Text Label 800  6050 0    60   ~
RA4
Text Label 800  5950 0    60   ~
RE0
Text Label 4100 5950 0    60   ~
RE1
Text Label 4100 6050 0    60   ~
RC5
Text Label 4100 5850 0    60   ~
RD6
Text Label 800  5850 0    60   ~
RD7
$Comp
L +12V #PWR3
U 1 1 3E2E5FED
P 1800 6150
F 0 "#PWR3" H 1800 6100 20  0001 C C
F 1 "+12V" H 1800 6250 30  0000 C C
	1    1800 6150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 6150 1950 6150
Wire Wire Line
	3150 6150 3250 6150
$Comp
L GND #PWR8
U 1 1 3E2E5FEC
P 3250 6150
F 0 "#PWR8" H 3250 6150 30  0001 C C
F 1 "GND" H 3250 6080 30  0001 C C
	1    3250 6150
	0    -1   -1   0   
$EndComp
Text Label 3250 6050 0    60   ~
Contacteur4
Text Label 1200 6050 0    60   ~
Contacteur3
Text Label 3250 5950 0    60   ~
Contacteur2
Text Label 1200 5950 0    60   ~
Contacteur1
Text Label 3250 5850 0    60   ~
Enable2
Text Label 1200 5850 0    60   ~
Enable1
Text Label 3250 5750 0    60   ~
PWM2
Text Label 1200 5750 0    60   ~
PWM1
Text Label 3250 5650 0    60   ~
SecuVi
Text Label 1200 5650 0    60   ~
SecuPl
Text Label 3250 5550 0    60   ~
SecuCr
Text Label 1200 5550 0    60   ~
Mode Elec
Text Label 3250 5450 0    60   ~
Frein
Text Label 1200 5450 0    60   ~
Boost
Text Label 3250 5050 0    60   ~
Tconv
Text Label 1200 5050 0    60   ~
W2
Text Label 3250 4950 0    60   ~
W1
Text Label 1200 4950 0    60   ~
UscError3
Text Label 3250 4850 0    60   ~
UscError2
Text Label 1200 4850 0    60   ~
UscError1
Text Label 3250 4750 0    60   ~
Tsc2_out
Text Label 1200 4750 0    60   ~
Usc1
Text Label 3250 4650 0    60   ~
Derr2
Text Label 1200 4650 0    60   ~
Derr1
Text Label 3250 4550 0    60   ~
Umot2
Text Label 1200 4550 0    60   ~
Umot1
Text Label 3250 4450 0    60   ~
Isc2
Text Label 1200 4450 0    60   ~
Isc1
Text Label 3250 4350 0    60   ~
Imot2
Text Label 1200 4350 0    60   ~
Imot1
$Comp
L HE10-16 P1
U 1 1 3E2E5FEB
P 2550 5800
F 0 "P1" H 2550 6250 70  0000 C C
F 1 "COMMON" H 2550 5350 70  0000 C C
	1    2550 5800
	-1   0    0    -1  
$EndComp
$Comp
L HE10-16 P2
U 1 1 3E2E5FEA
P 2550 4700
F 0 "P2" H 2550 5150 70  0000 C C
F 1 "DSPACE" H 2550 4250 70  0000 C C
	1    2550 4700
	-1   0    0    -1  
$EndComp
NoConn ~ 950  1150
Connection ~ 950  950 
Wire Wire Line
	900  950  1050 950 
NoConn ~ 2900 1050
Wire Wire Line
	1950 3250 1150 3250
Wire Wire Line
	1150 3350 1950 3350
Wire Wire Line
	1950 3450 1150 3450
Wire Wire Line
	3150 3450 4000 3450
Wire Wire Line
	3150 3350 4000 3350
Wire Wire Line
	3150 3250 4000 3250
Wire Notes Line
	4600 1950 4600 650 
Wire Notes Line
	4600 1950 8150 1950
Wire Notes Line
	8150 1950 8150 650 
Wire Notes Line
	8150 650  4600 650 
Text Notes 5700 1900 0    60   ~
Sécurité connexion TdB
Wire Wire Line
	7500 1600 8000 1600
Wire Wire Line
	7500 1250 8000 1250
Wire Wire Line
	7500 900  8000 900 
Wire Wire Line
	6900 900  6600 900 
Wire Wire Line
	6900 1250 6600 1250
Wire Wire Line
	6900 1600 6600 1600
Wire Wire Line
	6000 900  6300 900 
Wire Wire Line
	6000 1250 6300 1250
Wire Wire Line
	6300 1600 6000 1600
Wire Wire Line
	4700 1600 5400 1600
Wire Wire Line
	4700 1250 5400 1250
Wire Wire Line
	4700 900  5400 900 
Text Label 6050 900  0    60   ~
RD0
Text Label 6650 900  0    60   ~
RD1
Text Label 6050 1250 0    60   ~
RD2
Text Label 6650 1250 0    60   ~
RD3
Text Label 6050 1600 0    60   ~
RD4
Text Label 6650 1600 0    60   ~
RD5
Text Label 7550 1600 0    60   ~
SecuVi
Text Label 4750 1600 0    60   ~
SecuPl
Text Label 7550 1250 0    60   ~
SecuCr
Text Label 4750 1250 0    60   ~
Mode Elec
Text Label 7550 900  0    60   ~
Frein
Text Label 4750 900  0    60   ~
Boost
$Comp
L JUMPER JP6
U 1 1 3E1FA39B
P 7200 1600
F 0 "JP6" H 7200 1750 60  0000 C C
F 1 "JUMPER" H 7200 1520 40  0000 C C
	1    7200 1600
	-1   0    0    -1  
$EndComp
$Comp
L JUMPER JP5
U 1 1 3E1FA399
P 7200 900
F 0 "JP5" H 7200 1050 60  0000 C C
F 1 "JUMPER" H 7200 820 40  0000 C C
	1    7200 900 
	-1   0    0    -1  
$EndComp
$Comp
L JUMPER JP4
U 1 1 3E1FA397
P 5700 1600
F 0 "JP4" H 5700 1750 60  0000 C C
F 1 "JUMPER" H 5700 1520 40  0000 C C
	1    5700 1600
	1    0    0    -1  
$EndComp
$Comp
L JUMPER JP3
U 1 1 3E1FA396
P 7200 1250
F 0 "JP3" H 7200 1400 60  0000 C C
F 1 "JUMPER" H 7200 1170 40  0000 C C
	1    7200 1250
	-1   0    0    -1  
$EndComp
$Comp
L JUMPER JP2
U 1 1 3E1FA393
P 5700 1250
F 0 "JP2" H 5700 1400 60  0000 C C
F 1 "JUMPER" H 5700 1170 40  0000 C C
	1    5700 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3550 4000 3550
Wire Wire Line
	1950 3550 1150 3550
Wire Wire Line
	1150 2850 1950 2850
Wire Wire Line
	3150 2750 3900 2750
$Comp
L JUMPER JP1
U 1 1 3E1FA2E5
P 5700 900
F 0 "JP1" H 5700 1050 60  0000 C C
F 1 "JUMPER" H 5700 820 40  0000 C C
	1    5700 900 
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR2
U 1 1 3E1F99B7
P 1800 3950
F 0 "#PWR2" H 1800 3900 20  0001 C C
F 1 "+12V" H 1800 4050 30  0000 C C
	1    1800 3950
	0    -1   -1   0   
$EndComp
Connection ~ 800  1250
Wire Wire Line
	800  1200 800  1250
Wire Wire Line
	950  1250 700  1250
$Comp
L PWR_FLAG #FLG3
U 1 1 3E1F995C
P 700 1250
F 0 "#FLG3" H 700 1520 30  0001 C C
F 1 "PWR_FLAG" H 700 1480 30  0000 C C
	1    700  1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  950  950  1050
$Comp
L PWR_FLAG #FLG1
U 1 1 3E1F98CB
P 1050 950
F 0 "#FLG1" H 1050 1220 30  0001 C C
F 1 "PWR_FLAG" H 1050 1180 30  0000 C C
	1    1050 950 
	1    0    0    -1  
$EndComp
Text Label 4150 1050 0    60   ~
RA0
Text Label 4150 1150 0    60   ~
RA1
Text Label 4150 1250 0    60   ~
RA2
Text Label 4150 1350 0    60   ~
RA3
Text Label 4150 1450 0    60   ~
RA4
Text Label 4150 1550 0    60   ~
RA5
Text Label 4150 1750 0    60   ~
RC0
Text Label 2650 1750 0    60   ~
RC1
Text Label 2650 1650 0    60   ~
RC2
Text Label 2650 1550 0    60   ~
RC3
Text Label 2200 1050 0    60   ~
RD0
Text Label 2200 1150 0    60   ~
RD1
Wire Wire Line
	4400 1050 4100 1050
Wire Wire Line
	4400 1250 4100 1250
Wire Wire Line
	4400 1350 4100 1350
Wire Wire Line
	4100 1450 4400 1450
Wire Wire Line
	4100 1550 4400 1550
Wire Wire Line
	2900 1650 2600 1650
Wire Wire Line
	2900 1450 2600 1450
Wire Wire Line
	2900 1350 2600 1350
Wire Wire Line
	4400 1150 4100 1150
$Comp
L HE10-16 HE2
U 1 1 3E1F9721
P 3500 1400
F 0 "HE2" H 3500 1850 70  0000 C C
F 1 "HE10-16" H 3500 950 70  0000 C C
	1    3500 1400
	1    0    0    -1  
$EndComp
Text Label 700  1750 0    60   ~
RE0
Text Label 700  1650 0    60   ~
RE1
Text Label 4150 1650 0    60   ~
RE2
Wire Wire Line
	4400 1650 4100 1650
Wire Wire Line
	2900 1750 2600 1750
Wire Wire Line
	4400 1750 4100 1750
Text Label 2200 1250 0    60   ~
RD2
Text Label 2200 1350 0    60   ~
RD3
Text Label 2650 1350 0    60   ~
RC4
Text Label 2650 1450 0    60   ~
RC5
Text Label 2200 1450 0    60   ~
RD4
Text Label 2200 1550 0    60   ~
RD5
Text Label 700  1450 0    60   ~
RB1
Text Label 700  1350 0    60   ~
RB4
Wire Wire Line
	2150 1250 2450 1250
Wire Wire Line
	2150 1450 2450 1450
Wire Wire Line
	2150 1550 2450 1550
Wire Wire Line
	2450 1650 2150 1650
Wire Wire Line
	2450 1750 2150 1750
Wire Wire Line
	650  1450 950  1450
Wire Wire Line
	650  1350 950  1350
Wire Wire Line
	2150 1350 2450 1350
$Comp
L HE10-16 HE1
U 1 1 3E1F9720
P 1550 1400
F 0 "HE1" H 1550 1850 70  0000 C C
F 1 "HE10-16" H 1550 950 70  0000 C C
	1    1550 1400
	1    0    0    -1  
$EndComp
Text Label 2200 1650 0    60   ~
RD6
Text Label 2200 1750 0    60   ~
RD7
Text Label 700  1550 0    60   ~
RB0
Wire Wire Line
	650  1750 950  1750
Wire Wire Line
	650  1550 950  1550
Wire Wire Line
	650  1650 950  1650
Wire Wire Line
	2150 1050 2450 1050
Wire Wire Line
	2150 1150 2450 1150
Wire Notes Line
	600  600  4500 600 
$Comp
L GND #PWR7
U 1 1 3E1F971E
P 2650 1200
F 0 "#PWR7" H 2650 1200 30  0001 C C
F 1 "GND" H 2650 1130 30  0001 C C
	1    2650 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 1550 2600 1550
Wire Wire Line
	2650 1200 2900 1200
Wire Wire Line
	2900 1200 2900 1250
$Comp
L +12V #PWR1
U 1 1 3E1F971C
P 900 950
F 0 "#PWR1" H 900 900 20  0001 C C
F 1 "+12V" H 900 1050 30  0000 C C
	1    900  950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR6
U 1 1 3E1F971B
P 800 1200
F 0 "#PWR6" H 800 1200 30  0001 C C
F 1 "GND" H 800 1130 30  0001 C C
	1    800  1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	8450 1300 8450 1250
Connection ~ 8550 1250
Wire Wire Line
	8450 1250 8600 1250
Wire Wire Line
	8550 1450 8550 1050
Wire Wire Line
	8550 1450 8600 1450
Connection ~ 8550 1350
Wire Wire Line
	8600 1350 8550 1350
Wire Wire Line
	8550 1150 8600 1150
Connection ~ 8550 1150
Wire Wire Line
	8550 1050 8600 1050
$Comp
L CONN_1 GND5
U 1 1 3E1F9719
P 8750 1150
F 0 "GND5" H 8830 1150 40  0000 C C
F 1 "Meca" H 8700 1190 30  0001 C C
	1    8750 1150
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 GND4
U 1 1 3E1F9718
P 8750 1050
F 0 "GND4" H 8830 1050 40  0000 C C
F 1 "Meca" H 8700 1090 30  0001 C C
	1    8750 1050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR5
U 1 1 3E1F9713
P 8450 1300
F 0 "#PWR5" H 8450 1300 30  0001 C C
F 1 "GND" H 8450 1230 30  0001 C C
	1    8450 1300
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 GND3
U 1 1 3E1F9712
P 8750 1250
F 0 "GND3" H 8830 1250 40  0000 C C
F 1 "Meca" H 8700 1290 30  0001 C C
	1    8750 1250
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 GND2
U 1 1 3E1F9711
P 8750 1350
F 0 "GND2" H 8830 1350 40  0000 C C
F 1 "Meca" H 8700 1390 30  0001 C C
	1    8750 1350
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 GND1
U 1 1 3E1F9710
P 8750 1450
F 0 "GND1" H 8830 1450 40  0000 C C
F 1 "Meca" H 8700 1490 30  0001 C C
	1    8750 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3950 1950 3950
Wire Wire Line
	3150 3950 3250 3950
$Comp
L GND #PWR10
U 1 1 4BC1E002
P 3250 3950
F 0 "#PWR10" H 3250 3950 30  0001 C C
F 1 "GND" H 3250 3880 30  0001 C C
	1    3250 3950
	0    -1   -1   0   
$EndComp
Text Notes 2050 750  0    60   ~
Connecteurs HE10
Text Label 3250 3850 0    60   ~
Contacteur4
Text Label 1200 3850 0    60   ~
Contacteur3
Text Label 3250 3750 0    60   ~
Contacteur2
Text Label 1200 3750 0    60   ~
Contacteur1
Text Label 3250 3650 0    60   ~
Enable2
Text Label 1200 3650 0    60   ~
Enable1
Text Label 3250 3550 0    60   ~
PWM2
Text Label 1200 3550 0    60   ~
PWM1
Text Label 3250 3450 0    60   ~
SecuVi
Text Label 1200 3450 0    60   ~
SecuPl
Text Label 3250 3350 0    60   ~
SecuCr
Text Label 1200 3350 0    60   ~
Mode Elec
Text Label 3250 3250 0    60   ~
Frein
Text Label 1200 3250 0    60   ~
Boost
Text Label 3250 2850 0    60   ~
Tconv
Text Label 1200 2850 0    60   ~
W2
Text Label 3250 2750 0    60   ~
W1
Text Label 1200 2750 0    60   ~
UscError3
Text Label 3250 2650 0    60   ~
UscError2
Text Label 1200 2650 0    60   ~
UscError1
Text Label 3250 2550 0    60   ~
Tsc2_out
Text Label 1200 2550 0    60   ~
Usc1
Text Label 3250 2450 0    60   ~
Derr2
Text Label 1200 2450 0    60   ~
Derr1
Text Label 3250 2350 0    60   ~
Umot2
Text Label 1200 2350 0    60   ~
Umot1
Text Label 3250 2250 0    60   ~
Isc2
Text Label 1200 2250 0    60   ~
Isc1
Text Label 3250 2150 0    60   ~
Imot2
Text Label 1200 2150 0    60   ~
Imot1
$Comp
L HE10-16 P5
U 1 1 4BB1ACE1
P 2550 3600
F 0 "P5" H 2550 4050 70  0000 C C
F 1 "INTFCE_2" H 2550 3150 70  0000 C C
	1    2550 3600
	-1   0    0    -1  
$EndComp
$Comp
L HE10-16 P4
U 1 1 4BB1ACA3
P 2550 2500
F 0 "P4" H 2550 2950 70  0000 C C
F 1 "INTFCE_1" H 2550 2050 70  0000 C C
	1    2550 2500
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
