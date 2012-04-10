EESchema Schematic File Version 2  date 10/04/2012 15:01:05
LIBS:epsa_cmos
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
LIBS:carte_moteur_thermique-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "10 apr 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	2650 7300 3650 7300
Wire Notes Line
	3650 7300 3650 6400
Wire Notes Line
	3650 6400 1350 6400
Wire Notes Line
	1000 6200 1000 4900
Wire Notes Line
	1000 6200 7350 6200
Wire Notes Line
	7350 6200 7350 4900
Wire Notes Line
	7350 4900 1000 4900
Wire Wire Line
	4250 5550 3900 5550
Wire Wire Line
	2700 5350 2800 5350
Wire Wire Line
	3000 5850 3200 5850
Wire Wire Line
	3000 5050 3200 5050
Wire Wire Line
	4450 5050 4650 5050
Wire Wire Line
	4450 5850 4650 5850
Wire Notes Line
	2700 7300 1350 7300
Wire Notes Line
	1350 7300 1350 6400
Wire Wire Line
	2400 7100 2400 6650
Wire Wire Line
	2000 7100 2000 6650
Wire Notes Line
	3650 3700 1200 3700
Wire Notes Line
	3650 3700 3650 4600
Wire Notes Line
	3650 4600 1200 4600
Wire Notes Line
	1200 4600 1200 3700
Connection ~ 2000 1900
Wire Wire Line
	2000 1900 2000 2100
Wire Wire Line
	2000 2100 1950 2100
Connection ~ 3200 1700
Wire Wire Line
	3200 1700 3200 1600
Wire Wire Line
	3200 1600 3450 1600
Wire Wire Line
	2050 1100 1050 1100
Wire Wire Line
	3250 4200 3350 4200
Wire Wire Line
	1900 4200 2050 4200
Wire Wire Line
	3150 1900 3250 1900
Wire Wire Line
	3250 1700 3150 1700
Wire Wire Line
	1950 1900 2050 1900
Wire Wire Line
	2550 4200 2750 4200
Wire Wire Line
	2650 4200 2650 4450
Connection ~ 2650 4200
Wire Wire Line
	2650 4450 2950 4450
Wire Wire Line
	3250 2050 3200 2050
Wire Wire Line
	3200 2050 3200 1900
Connection ~ 3200 1900
Wire Notes Line
	750  3000 750  650 
Wire Notes Line
	750  3000 6300 3000
Wire Notes Line
	6300 3000 6300 650 
Wire Notes Line
	6300 650  750  650 
Wire Wire Line
	1750 6900 2000 6900
Connection ~ 2000 6900
Wire Wire Line
	2500 6900 2400 6900
Connection ~ 2400 6900
Wire Wire Line
	1650 5350 2300 5350
Wire Wire Line
	2800 5950 3800 5950
Wire Wire Line
	2800 5950 2800 5550
Wire Wire Line
	3800 5950 3800 5350
Wire Wire Line
	3800 5350 4250 5350
Connection ~ 3800 5450
Wire Wire Line
	1650 5550 1900 5550
Wire Wire Line
	6050 5450 5250 5450
Connection ~ 3400 6900
Wire Wire Line
	3500 6900 3400 6900
Connection ~ 3000 6900
Wire Wire Line
	2750 6900 3000 6900
Wire Wire Line
	3000 7100 3000 6650
Wire Wire Line
	3400 7100 3400 6650
$Comp
L VCC #PWR01
U 1 1 4F842BEE
P 2750 6900
F 0 "#PWR01" H 2750 7000 30  0001 C CNN
F 1 "VCC" H 2750 7000 30  0000 C CNN
	1    2750 6900
	0    -1   -1   0   
$EndComp
$Comp
L C C3
U 1 1 4F842BED
P 3200 6650
F 0 "C3" H 3250 6750 50  0000 L CNN
F 1 "27p" H 3250 6550 50  0000 L CNN
	1    3200 6650
	0    1    1    0   
$EndComp
$Comp
L CP C4
U 1 1 4F842BEC
P 3200 7100
F 0 "C4" H 3250 7200 50  0000 L CNN
F 1 "1u" H 3250 7000 50  0000 L CNN
	1    3200 7100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR02
U 1 1 4F842BEB
P 3500 6900
F 0 "#PWR02" H 3500 6900 30  0001 C CNN
F 1 "GND" H 3500 6830 30  0001 C CNN
	1    3500 6900
	0    -1   -1   0   
$EndComp
$Comp
L LM324 U1
U 1 1 4F842B64
P 3300 5450
F 0 "U1" H 3350 5650 60  0000 C CNN
F 1 "LM324" H 3450 5250 50  0000 C CNN
	1    3300 5450
	1    0    0    -1  
$EndComp
$Comp
L TL082 U2
U 1 1 4F8423DE
P 4750 5450
F 0 "U2" H 4700 5650 60  0000 L CNN
F 1 "TL082" H 4700 5200 60  0000 L CNN
	1    4750 5450
	1    0    0    -1  
$EndComp
NoConn ~ 3150 1100
Text Label 1050 1100 0    60   ~ 0
Vitesse_moteur_th
Text Label 1650 5350 0    60   ~ 0
bougie
Text Label 6050 5450 2    60   ~ 0
Vitesse_moteur_th
Text Label 3900 5550 0    60   ~ 0
+2.5V
$Comp
L GND #PWR03
U 1 1 4EE75FB8
P 1900 5550
F 0 "#PWR03" H 1900 5550 30  0001 C CNN
F 1 "GND" H 1900 5480 30  0001 C CNN
	1    1900 5550
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D1
U 1 1 4EE75F1F
P 2500 5350
F 0 "D1" H 2500 5450 40  0000 C CNN
F 1 "DIODE" H 2500 5250 40  0000 C CNN
	1    2500 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 4EE75F07
P 3000 5850
F 0 "#PWR04" H 3000 5850 30  0001 C CNN
F 1 "GND" H 3000 5780 30  0001 C CNN
	1    3000 5850
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR05
U 1 1 4EE75F06
P 3000 5050
F 0 "#PWR05" H 3000 5150 30  0001 C CNN
F 1 "VCC" H 3000 5150 30  0000 C CNN
	1    3000 5050
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR06
U 1 1 4EE75EF9
P 4450 5050
F 0 "#PWR06" H 4450 5150 30  0001 C CNN
F 1 "VCC" H 4450 5150 30  0000 C CNN
	1    4450 5050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR07
U 1 1 4EE75EF8
P 4450 5850
F 0 "#PWR07" H 4450 5850 30  0001 C CNN
F 1 "GND" H 4450 5780 30  0001 C CNN
	1    4450 5850
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P1
U 1 1 4EE75EBC
P 1300 5450
F 0 "P1" V 1250 5450 40  0000 C CNN
F 1 "Entrees" V 1350 5450 40  0000 C CNN
	1    1300 5450
	-1   0    0    -1  
$EndComp
Text Notes 1400 6500 0    60   ~ 0
Filtre tension
$Comp
L GND #PWR08
U 1 1 4E5F938C
P 2500 6900
F 0 "#PWR08" H 2500 6900 30  0001 C CNN
F 1 "GND" H 2500 6830 30  0001 C CNN
	1    2500 6900
	0    -1   -1   0   
$EndComp
$Comp
L CP C2
U 1 1 4E5F936E
P 2200 7100
F 0 "C2" H 2250 7200 50  0000 L CNN
F 1 "1u" H 2250 7000 50  0000 L CNN
	1    2200 7100
	0    -1   -1   0   
$EndComp
$Comp
L C C1
U 1 1 4E5F9365
P 2200 6650
F 0 "C1" H 2250 6750 50  0000 L CNN
F 1 "27p" H 2250 6550 50  0000 L CNN
	1    2200 6650
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR09
U 1 1 4E5F9358
P 1750 6900
F 0 "#PWR09" H 1750 7000 30  0001 C CNN
F 1 "VCC" H 1750 7000 30  0000 C CNN
	1    1750 6900
	0    -1   -1   0   
$EndComp
Text Notes 5300 5700 0    60   ~ 0
Entree :\nCommande bougie (creneau 0 - 4V)\n\nSortie\nCopie commande bougie creneau 0 - 5V
Text Notes 1250 3850 0    60   ~ 0
Generation d'une tension de +2,5V
Text Notes 850  2750 0    60   ~ 0
Connecteur MEZZA\nEntrees : Nulle\nSorties : vitesse moteur thermique
$Comp
L PWR_FLAG #FLG010
U 1 1 4E5F917D
P 3450 1600
F 0 "#FLG010" H 3450 1870 30  0001 C CNN
F 1 "PWR_FLAG" H 3450 1830 30  0000 C CNN
	1    3450 1600
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG011
U 1 1 4E5F9174
P 3250 2050
F 0 "#FLG011" H 3250 2320 30  0001 C CNN
F 1 "PWR_FLAG" H 3250 2280 30  0000 C CNN
	1    3250 2050
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG012
U 1 1 4E5F916A
P 1950 2100
F 0 "#FLG012" H 1950 2370 30  0001 C CNN
F 1 "PWR_FLAG" H 1950 2330 30  0000 C CNN
	1    1950 2100
	0    -1   -1   0   
$EndComp
NoConn ~ 6150 1100
NoConn ~ 6150 1300
NoConn ~ 6150 1500
NoConn ~ 6150 1700
NoConn ~ 6150 1900
NoConn ~ 5050 1900
NoConn ~ 5050 1700
NoConn ~ 5050 1500
NoConn ~ 5050 1300
NoConn ~ 5050 1100
NoConn ~ 3150 1300
NoConn ~ 3150 1500
NoConn ~ 2050 1700
NoConn ~ 2050 1500
NoConn ~ 2050 1300
Text Label 2950 4450 2    60   ~ 0
+2.5V
$Comp
L R R2
U 1 1 4E5F8F41
P 3000 4200
F 0 "R2" V 3080 4200 50  0000 C CNN
F 1 "10k" V 3000 4200 50  0000 C CNN
	1    3000 4200
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 4E5F8F3B
P 2300 4200
F 0 "R1" V 2380 4200 50  0000 C CNN
F 1 "10k" V 2300 4200 50  0000 C CNN
	1    2300 4200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR013
U 1 1 4E5F8F36
P 3350 4200
F 0 "#PWR013" H 3350 4200 30  0001 C CNN
F 1 "GND" H 3350 4130 30  0001 C CNN
	1    3350 4200
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR014
U 1 1 4E5F8F31
P 1900 4200
F 0 "#PWR014" H 1900 4300 30  0001 C CNN
F 1 "VCC" H 1900 4300 30  0000 C CNN
	1    1900 4200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR015
U 1 1 4E5F893C
P 3250 1900
F 0 "#PWR015" H 3250 1900 30  0001 C CNN
F 1 "GND" H 3250 1830 30  0001 C CNN
	1    3250 1900
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR016
U 1 1 4E5F8935
P 1950 1900
F 0 "#PWR016" H 1950 2000 30  0001 C CNN
F 1 "VCC" H 1950 2000 30  0000 C CNN
	1    1950 1900
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR017
U 1 1 4E5F8929
P 3250 1700
F 0 "#PWR017" H 3250 1650 20  0001 C CNN
F 1 "+12V" H 3250 1800 30  0000 C CNN
	1    3250 1700
	0    1    1    0   
$EndComp
$Comp
L MEZZA-10 MEZZA2
U 1 1 4E5F88F2
P 5600 1500
F 0 "MEZZA2" H 5600 2050 70  0000 C CNN
F 1 "MEZZA-10" H 5600 900 70  0000 C CNN
	1    5600 1500
	1    0    0    -1  
$EndComp
$Comp
L MEZZA-10 MEZZA1
U 1 1 4E5F88EF
P 2600 1500
F 0 "MEZZA1" H 2600 2050 70  0000 C CNN
F 1 "MEZZA-10" H 2600 900 70  0000 C CNN
	1    2600 1500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
