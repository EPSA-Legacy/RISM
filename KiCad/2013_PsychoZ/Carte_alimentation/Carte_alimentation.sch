EESchema Schematic File Version 2  date 27/11/2012 16:29:12
LIBS:epsa_cmos
LIBS:epsa_puissance
LIBS:epsa_relais
LIBS:symbioz
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Carte_alimentation-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title "Carte alimentation"
Date "27 nov 2012"
Rev "1.0"
Comp "EPSA - Psychoz"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 6150 5150
NoConn ~ 6150 4950
NoConn ~ 6150 4750
NoConn ~ 5050 4950
NoConn ~ 5050 5150
NoConn ~ 5050 5350
NoConn ~ 5050 5550
Wire Notes Line
	6400 4300 2550 4300
Wire Notes Line
	6400 4300 6400 5850
Wire Notes Line
	6400 5850 2550 5850
Wire Notes Line
	2550 5850 2550 4300
Wire Wire Line
	6150 5350 6300 5350
Wire Wire Line
	4300 5550 4500 5550
Wire Wire Line
	4500 5550 4500 5650
Wire Wire Line
	3200 4750 2650 4750
Connection ~ 5050 3300
Connection ~ 5450 3300
Wire Wire Line
	4650 3450 4650 3300
Connection ~ 5850 3300
Wire Wire Line
	4650 3300 5850 3300
Wire Wire Line
	4850 3400 4850 3100
Wire Wire Line
	5250 3400 5250 3100
Wire Wire Line
	5650 3400 5650 3100
Wire Notes Line
	3500 2150 2500 2150
Wire Notes Line
	3500 2150 3500 3300
Wire Notes Line
	3500 3300 2500 3300
Wire Notes Line
	2500 3300 2500 2150
Wire Wire Line
	3150 3050 2650 3050
Wire Wire Line
	3150 2650 2650 2650
Connection ~ 1350 2750
Wire Wire Line
	1350 2750 1900 2750
Wire Wire Line
	1350 2850 1350 2650
Wire Notes Line
	5800 600  3850 600 
Wire Notes Line
	5800 600  5800 2300
Wire Notes Line
	5800 2300 3850 2300
Wire Notes Line
	3850 2300 3850 600 
Wire Wire Line
	5450 1900 5700 1900
Wire Wire Line
	5200 1050 5500 1050
Wire Wire Line
	5500 1050 5500 1450
Wire Wire Line
	4800 1050 4650 1050
Wire Wire Line
	4650 1050 4650 1450
Wire Wire Line
	4200 1800 4200 1300
Wire Notes Line
	3550 550  2500 550 
Wire Notes Line
	3550 550  3550 1700
Wire Notes Line
	3550 1700 2500 1700
Wire Notes Line
	2500 1700 2500 550 
Wire Wire Line
	2950 1600 2950 1500
Wire Notes Line
	2250 700  750  700 
Wire Notes Line
	2250 700  2250 1500
Wire Notes Line
	2250 1500 750  1500
Wire Notes Line
	750  1500 750  700 
Wire Wire Line
	1600 1300 1250 1300
Wire Wire Line
	1850 1100 2050 1100
Wire Wire Line
	1250 1100 1350 1100
Wire Wire Line
	1950 1000 1950 1100
Connection ~ 1950 1100
Wire Wire Line
	1350 1400 1350 1300
Connection ~ 1350 1300
Wire Wire Line
	2950 1000 2950 900 
Wire Wire Line
	3100 1250 3500 1250
Wire Wire Line
	4650 1450 4400 1450
Wire Wire Line
	4400 1450 4400 1300
Wire Wire Line
	4100 1800 4650 1800
Connection ~ 4200 1800
Wire Wire Line
	5600 1450 5450 1450
Connection ~ 5500 1450
Wire Wire Line
	5550 1900 5550 2000
Connection ~ 5550 1900
Wire Wire Line
	1350 3500 1350 3350
Wire Wire Line
	1350 2150 1350 2050
Wire Notes Line
	2000 3600 1100 3600
Wire Notes Line
	2000 3600 2000 1800
Wire Notes Line
	2000 1800 1100 1800
Wire Notes Line
	1100 1800 1100 3600
Wire Wire Line
	2900 2500 2900 2650
Connection ~ 2900 2650
Wire Wire Line
	2900 3050 2900 3200
Connection ~ 2900 3050
Wire Wire Line
	5850 3400 5850 3100
Wire Wire Line
	5450 3400 5450 3100
Wire Wire Line
	5050 3400 5050 3100
Wire Wire Line
	5650 3150 4650 3150
Wire Wire Line
	4650 3150 4650 3100
Connection ~ 5650 3150
Connection ~ 5250 3150
Connection ~ 4850 3150
Wire Notes Line
	4500 3900 4500 2500
Wire Notes Line
	4500 3900 6000 3900
Wire Notes Line
	6000 3900 6000 2500
Wire Notes Line
	6000 2500 4500 2500
Wire Wire Line
	4450 5350 4300 5350
Wire Wire Line
	5050 4750 4600 4750
Wire Wire Line
	6150 5550 6250 5550
Wire Wire Line
	6250 5550 6250 5650
Text Notes 2700 4450 0    60   ~ 0
Connecteurs mezzanine\n
$Comp
L GND #PWR01
U 1 1 50992A24
P 6250 5650
F 0 "#PWR01" H 6250 5650 30  0001 C CNN
F 1 "GND" H 6250 5580 30  0001 C CNN
	1    6250 5650
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR02
U 1 1 50992A1D
P 6300 5350
F 0 "#PWR02" H 6300 5300 20  0001 C CNN
F 1 "+12V" H 6300 5450 30  0000 C CNN
	1    6300 5350
	0    1    1    0   
$EndComp
Text Label 4600 4750 0    60   ~ 0
Seuil
$Comp
L GND #PWR03
U 1 1 509929BF
P 4500 5650
F 0 "#PWR03" H 4500 5650 30  0001 C CNN
F 1 "GND" H 4500 5580 30  0001 C CNN
	1    4500 5650
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR04
U 1 1 509929B9
P 4450 5350
F 0 "#PWR04" H 4450 5300 20  0001 C CNN
F 1 "+12V" H 4450 5450 30  0000 C CNN
	1    4450 5350
	0    1    1    0   
$EndComp
NoConn ~ 4300 4750
NoConn ~ 4300 4950
NoConn ~ 4300 5150
NoConn ~ 3200 5550
NoConn ~ 3200 5350
NoConn ~ 3200 5150
NoConn ~ 3200 4950
Text Label 2650 4750 0    60   ~ 0
Tens_batt
$Comp
L MEZZA-10 MEZZA2
U 1 1 509928FD
P 5600 5150
F 0 "MEZZA2" H 5600 5700 70  0000 C CNN
F 1 "MEZZA-10" H 5600 4550 70  0000 C CNN
	1    5600 5150
	1    0    0    -1  
$EndComp
$Comp
L MEZZA-10 MEZZA1
U 1 1 509928F9
P 3750 5150
F 0 "MEZZA1" H 3750 5700 70  0000 C CNN
F 1 "MEZZA-10" H 3750 4550 70  0000 C CNN
	1    3750 5150
	1    0    0    -1  
$EndComp
Text Notes 4750 2600 0    60   ~ 0
Distribuition\n
$Comp
L GND #PWR05
U 1 1 50992764
P 4650 3450
F 0 "#PWR05" H 4650 3450 30  0001 C CNN
F 1 "GND" H 4650 3380 30  0001 C CNN
	1    4650 3450
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR06
U 1 1 5099275D
P 4650 3100
F 0 "#PWR06" H 4650 3050 20  0001 C CNN
F 1 "+12V" H 4650 3200 30  0000 C CNN
	1    4650 3100
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P8
U 1 1 5099274A
P 5750 3750
F 0 "P8" V 5700 3750 40  0000 C CNN
F 1 "ALIM23" V 5800 3750 40  0000 C CNN
	1    5750 3750
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P7
U 1 1 50992744
P 5350 3750
F 0 "P7" V 5300 3750 40  0000 C CNN
F 1 "ALIM22" V 5400 3750 40  0000 C CNN
	1    5350 3750
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P6
U 1 1 5099272E
P 4950 3750
F 0 "P6" V 4900 3750 40  0000 C CNN
F 1 "ALIM21" V 5000 3750 40  0000 C CNN
	1    4950 3750
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P5
U 1 1 50992729
P 5750 2750
F 0 "P5" V 5700 2750 40  0000 C CNN
F 1 "ALIM13" V 5800 2750 40  0000 C CNN
	1    5750 2750
	0    -1   -1   0   
$EndComp
$Comp
L CONN_2 P4
U 1 1 50992725
P 5350 2750
F 0 "P4" V 5300 2750 40  0000 C CNN
F 1 "ALIM12" V 5400 2750 40  0000 C CNN
	1    5350 2750
	0    -1   -1   0   
$EndComp
$Comp
L CONN_2 P3
U 1 1 5099271A
P 4950 2750
F 0 "P3" V 4900 2750 40  0000 C CNN
F 1 "ALIM11" V 5000 2750 40  0000 C CNN
	1    4950 2750
	0    -1   -1   0   
$EndComp
Text Notes 2600 2300 0    60   ~ 0
Filtrage\n
$Comp
L GND #PWR07
U 1 1 509926CE
P 2900 3200
F 0 "#PWR07" H 2900 3200 30  0001 C CNN
F 1 "GND" H 2900 3130 30  0001 C CNN
	1    2900 3200
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR08
U 1 1 50992693
P 2900 2500
F 0 "#PWR08" H 2900 2450 20  0001 C CNN
F 1 "+12V" H 2900 2600 30  0000 C CNN
	1    2900 2500
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C2
U 1 1 5099265E
P 3150 2850
F 0 "C2" H 3200 2950 50  0000 L CNN
F 1 "1000u" H 3200 2750 50  0000 L CNN
	1    3150 2850
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C1
U 1 1 50992654
P 2650 2850
F 0 "C1" H 2700 2950 50  0000 L CNN
F 1 "1000u" H 2700 2750 50  0000 L CNN
	1    2650 2850
	1    0    0    -1  
$EndComp
Text Notes 1500 2150 0    60   ~ 0
Diviseur\n
Text Label 1400 2750 0    60   ~ 0
Tens_batt
$Comp
L GND #PWR09
U 1 1 509925B6
P 1350 3500
F 0 "#PWR09" H 1350 3500 30  0001 C CNN
F 1 "GND" H 1350 3430 30  0001 C CNN
	1    1350 3500
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR010
U 1 1 509925B2
P 1350 2050
F 0 "#PWR010" H 1350 2000 20  0001 C CNN
F 1 "+12V" H 1350 2150 30  0000 C CNN
	1    1350 2050
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 509925AB
P 1350 3100
F 0 "R2" V 1430 3100 50  0000 C CNN
F 1 "4k" V 1350 3100 50  0000 C CNN
	1    1350 3100
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 509925A6
P 1350 2400
F 0 "R1" V 1430 2400 50  0000 C CNN
F 1 "5,6k" V 1350 2400 50  0000 C CNN
	1    1350 2400
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG011
U 1 1 50992513
P 5550 2000
F 0 "#FLG011" H 5550 2095 30  0001 C CNN
F 1 "PWR_FLAG" H 5550 2180 30  0000 C CNN
	1    5550 2000
	-1   0    0    1   
$EndComp
$Comp
L +12V #PWR012
U 1 1 509924F1
P 5700 1900
F 0 "#PWR012" H 5700 1850 20  0001 C CNN
F 1 "+12V" H 5700 2000 30  0000 C CNN
	1    5700 1900
	1    0    0    -1  
$EndComp
NoConn ~ 5450 1700
$Comp
L GND #PWR013
U 1 1 509924E4
P 5600 1450
F 0 "#PWR013" H 5600 1450 30  0001 C CNN
F 1 "GND" H 5600 1380 30  0001 C CNN
	1    5600 1450
	0    -1   -1   0   
$EndComp
$Comp
L +12C #PWR014
U 1 1 509924DB
P 4100 1800
F 0 "#PWR014" H 4100 1770 30  0001 C CNN
F 1 "+12C" H 4100 1910 40  0000 C CNN
	1    4100 1800
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D1
U 1 1 509923C0
P 5000 1050
F 0 "D1" H 5000 1150 40  0000 C CNN
F 1 "DIODE" H 5000 950 40  0000 C CNN
	1    5000 1050
	-1   0    0    1   
$EndComp
$Comp
L RELAIS-SPDT K1
U 1 1 509923B2
P 5050 1600
F 0 "K1" H 5500 1700 60  0000 C CNN
F 1 "RELAIS-SPDT" H 5050 1600 60  0000 C CNN
	1    5050 1600
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P2
U 1 1 509922A6
P 4300 950
F 0 "P2" V 4250 950 40  0000 C CNN
F 1 "Tableau de bord" V 4350 950 40  0000 C CNN
	1    4300 950 
	0    -1   -1   0   
$EndComp
Text Notes 3900 750  0    60   ~ 0
Coupe circuit BP\n
Text Notes 2600 700  0    60   ~ 0
Valeur reference\n
Text Label 3200 1250 0    60   ~ 0
Seuil
$Comp
L GND #PWR015
U 1 1 50992225
P 2950 1600
F 0 "#PWR015" H 2950 1600 30  0001 C CNN
F 1 "GND" H 2950 1530 30  0001 C CNN
	1    2950 1600
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR016
U 1 1 5099221E
P 2950 900
F 0 "#PWR016" H 2950 850 20  0001 C CNN
F 1 "+12V" H 2950 1000 30  0000 C CNN
	1    2950 900 
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 50992214
P 2950 1250
F 0 "RV1" H 2950 1150 50  0000 C CNN
F 1 "POT" H 2950 1250 50  0000 C CNN
	1    2950 1250
	0    1    1    0   
$EndComp
Text Notes 850  850  0    60   ~ 0
Alimentation\n
$Comp
L +12C #PWR017
U 1 1 509921CA
P 2050 1100
F 0 "#PWR017" H 2050 1070 30  0001 C CNN
F 1 "+12C" H 2050 1210 40  0000 C CNN
	1    2050 1100
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG018
U 1 1 509921B7
P 1600 1300
F 0 "#FLG018" H 1600 1395 30  0001 C CNN
F 1 "PWR_FLAG" H 1600 1480 30  0000 C CNN
	1    1600 1300
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG019
U 1 1 509921B0
P 1950 1000
F 0 "#FLG019" H 1950 1095 30  0001 C CNN
F 1 "PWR_FLAG" H 1950 1180 30  0000 C CNN
	1    1950 1000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 50992195
P 1350 1400
F 0 "#PWR020" H 1350 1400 30  0001 C CNN
F 1 "GND" H 1350 1330 30  0001 C CNN
	1    1350 1400
	1    0    0    -1  
$EndComp
$Comp
L FUSE F1
U 1 1 50992159
P 1600 1100
F 0 "F1" H 1700 1150 40  0000 C CNN
F 1 "FUSE" H 1500 1050 40  0000 C CNN
	1    1600 1100
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P1
U 1 1 50992142
P 900 1200
F 0 "P1" V 850 1200 40  0000 C CNN
F 1 "Alim" V 950 1200 40  0000 C CNN
	1    900  1200
	-1   0    0    1   
$EndComp
$EndSCHEMATC
