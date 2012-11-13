EESchema Schematic File Version 2  date 06/11/2012 15:33:59
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
EELAYER 43  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title "Carte Moteur Thermique"
Date "6 nov 2012"
Rev "1.0"
Comp "EPSA - Psychoz"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LM324 U2
U 1 1 50991FA1
P 4300 4450
F 0 "U2" H 4350 4650 60  0000 C CNN
F 1 "LM324" H 4450 4250 50  0000 C CNN
	1    4300 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4550 3800 4550
Connection ~ 2900 6050
Wire Wire Line
	3100 6050 2900 6050
Connection ~ 2500 6050
Wire Wire Line
	2500 6050 2450 6050
Connection ~ 1800 6050
Wire Wire Line
	2000 6050 1800 6050
Connection ~ 1400 6050
Wire Wire Line
	1400 6050 1300 6050
Wire Notes Line
	750  3850 750  5050
Wire Notes Line
	750  3850 7750 3850
Wire Notes Line
	7750 3850 7750 5050
Wire Notes Line
	7750 5050 750  5050
Wire Wire Line
	4200 4850 3900 4850
Wire Wire Line
	2850 4850 2650 4850
Wire Wire Line
	2300 4350 2450 4350
Wire Wire Line
	1300 4550 1500 4550
Wire Wire Line
	2650 3650 2350 3650
Connection ~ 2350 3450
Wire Wire Line
	2350 3650 2350 3450
Wire Wire Line
	1550 3450 1700 3450
Wire Wire Line
	1100 1500 1950 1500
Wire Wire Line
	3050 2300 3200 2300
Wire Wire Line
	3050 2100 3250 2100
Wire Wire Line
	1950 2300 1850 2300
Wire Wire Line
	1900 2300 1900 2450
Connection ~ 1900 2300
Wire Wire Line
	1900 2450 1850 2450
Wire Wire Line
	3150 2100 3150 2000
Connection ~ 3150 2100
Wire Wire Line
	3150 2000 3450 2000
Wire Wire Line
	3100 2300 3100 2400
Connection ~ 3100 2300
Wire Wire Line
	3100 2400 3250 2400
Wire Notes Line
	1000 2650 1000 1000
Wire Notes Line
	1000 2650 5450 2650
Wire Notes Line
	5450 2650 5450 1000
Wire Notes Line
	5450 1000 1000 1000
Wire Wire Line
	2200 3450 2550 3450
Wire Wire Line
	3200 3450 3050 3450
Wire Notes Line
	1350 3750 1350 3100
Wire Notes Line
	1350 3750 3300 3750
Wire Notes Line
	3300 3750 3300 3100
Wire Notes Line
	3300 3100 1350 3100
Wire Wire Line
	1300 4350 1900 4350
Wire Wire Line
	2850 4050 2650 4050
Wire Wire Line
	3450 5000 3450 4350
Wire Wire Line
	3450 5000 2350 5000
Wire Wire Line
	2350 5000 2350 4550
Wire Wire Line
	2350 4550 2450 4550
Connection ~ 3450 4450
Wire Wire Line
	3450 4350 3800 4350
Wire Wire Line
	4200 4050 3950 4050
Wire Wire Line
	5600 4450 4800 4450
Wire Wire Line
	1400 5800 1400 6250
Wire Wire Line
	1800 6250 1800 5800
Wire Wire Line
	2500 6300 2500 5800
Wire Wire Line
	2900 6300 2900 5800
Wire Notes Line
	1100 6450 1100 5400
Wire Notes Line
	1100 6450 3200 6450
Wire Notes Line
	3200 6450 3200 5400
Wire Notes Line
	3200 5400 1100 5400
Text Notes 1250 5550 0    60   ~ 0
Filtre tension\n
$Comp
L GND #PWR01
U 1 1 50991E5E
P 3100 6050
F 0 "#PWR01" H 3100 6050 30  0001 C CNN
F 1 "GND" H 3100 5980 30  0001 C CNN
	1    3100 6050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR02
U 1 1 50991E59
P 2000 6050
F 0 "#PWR02" H 2000 6050 30  0001 C CNN
F 1 "GND" H 2000 5980 30  0001 C CNN
	1    2000 6050
	0    -1   -1   0   
$EndComp
$Comp
L CAPAPOL C4
U 1 1 50991E51
P 2700 6300
F 0 "C4" H 2750 6400 50  0000 L CNN
F 1 "1u" H 2750 6200 50  0000 L CNN
	1    2700 6300
	0    -1   -1   0   
$EndComp
$Comp
L CAPAPOL C3
U 1 1 50991E3B
P 1600 6250
F 0 "C3" H 1650 6350 50  0000 L CNN
F 1 "1u" H 1650 6150 50  0000 L CNN
	1    1600 6250
	0    -1   -1   0   
$EndComp
$Comp
L C C2
U 1 1 50991E14
P 2700 5800
F 0 "C2" H 2750 5900 50  0000 L CNN
F 1 "27p" H 2750 5700 50  0000 L CNN
	1    2700 5800
	0    -1   -1   0   
$EndComp
$Comp
L C C1
U 1 1 50991E0B
P 1600 5800
F 0 "C1" H 1650 5900 50  0000 L CNN
F 1 "27p" H 1650 5700 50  0000 L CNN
	1    1600 5800
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR03
U 1 1 50991E02
P 2450 6050
F 0 "#PWR03" H 2450 6150 30  0001 C CNN
F 1 "VCC" H 2450 6150 30  0000 C CNN
	1    2450 6050
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR04
U 1 1 50991DFC
P 1300 6050
F 0 "#PWR04" H 1300 6150 30  0001 C CNN
F 1 "VCC" H 1300 6150 30  0000 C CNN
	1    1300 6050
	0    -1   -1   0   
$EndComp
Text Notes 5800 4250 0    60   ~ 0
Entree :\nCommande bougie (creneau 0 - 4V)\n\nSortie\nCopie commande bougie creneau 0 - 5V
Text Label 4800 4450 0    60   ~ 0
Vitesse_moteur_th
Text Label 3500 4550 0    60   ~ 0
+2.5V
$Comp
L GND #PWR05
U 1 1 50991C88
P 3900 4850
F 0 "#PWR05" H 3900 4850 30  0001 C CNN
F 1 "GND" H 3900 4780 30  0001 C CNN
	1    3900 4850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR06
U 1 1 50991C82
P 2650 4850
F 0 "#PWR06" H 2650 4850 30  0001 C CNN
F 1 "GND" H 2650 4780 30  0001 C CNN
	1    2650 4850
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR07
U 1 1 50991C71
P 3950 4050
F 0 "#PWR07" H 3950 4150 30  0001 C CNN
F 1 "VCC" H 3950 4150 30  0000 C CNN
	1    3950 4050
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR08
U 1 1 50991C6C
P 2650 4050
F 0 "#PWR08" H 2650 4150 30  0001 C CNN
F 1 "VCC" H 2650 4150 30  0000 C CNN
	1    2650 4050
	0    -1   -1   0   
$EndComp
$Comp
L LM324 U1
U 1 1 50991BD1
P 2950 4450
F 0 "U1" H 3000 4650 60  0000 C CNN
F 1 "LM324" H 3100 4250 50  0000 C CNN
	1    2950 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 50991BAE
P 1500 4550
F 0 "#PWR09" H 1500 4550 30  0001 C CNN
F 1 "GND" H 1500 4480 30  0001 C CNN
	1    1500 4550
	0    -1   -1   0   
$EndComp
Text Label 1400 4350 0    60   ~ 0
bougie
$Comp
L DIODE D1
U 1 1 50991B91
P 2100 4350
F 0 "D1" H 2100 4450 40  0000 C CNN
F 1 "DIODE" H 2100 4250 40  0000 C CNN
	1    2100 4350
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P1
U 1 1 50991AF6
P 950 4450
F 0 "P1" V 900 4450 40  0000 C CNN
F 1 "Entree" V 1000 4450 40  0000 C CNN
	1    950  4450
	-1   0    0    1   
$EndComp
Text Notes 1450 3250 0    60   ~ 0
Generation d'une tension de +2,5V\n
Text Label 2350 3650 0    60   ~ 0
+2.5V
$Comp
L GND #PWR010
U 1 1 509919E7
P 3200 3450
F 0 "#PWR010" H 3200 3450 30  0001 C CNN
F 1 "GND" H 3200 3380 30  0001 C CNN
	1    3200 3450
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR011
U 1 1 509919E0
P 1550 3450
F 0 "#PWR011" H 1550 3550 30  0001 C CNN
F 1 "VCC" H 1550 3550 30  0000 C CNN
	1    1550 3450
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 509919D5
P 2800 3450
F 0 "R2" V 2880 3450 50  0000 C CNN
F 1 "10k" V 2800 3450 50  0000 C CNN
	1    2800 3450
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 509919D0
P 1950 3450
F 0 "R1" V 2030 3450 50  0000 C CNN
F 1 "10k" V 1950 3450 50  0000 C CNN
	1    1950 3450
	0    -1   -1   0   
$EndComp
Text Notes 1150 1200 0    60   ~ 0
Connecteur MEZZA\n
NoConn ~ 4200 1500
NoConn ~ 4200 1700
NoConn ~ 4200 1900
NoConn ~ 4200 2100
NoConn ~ 4200 2300
NoConn ~ 5300 2300
NoConn ~ 5300 2100
NoConn ~ 5300 1900
NoConn ~ 5300 1700
NoConn ~ 5300 1500
NoConn ~ 3050 1500
NoConn ~ 3050 1700
NoConn ~ 3050 1900
NoConn ~ 1950 2100
NoConn ~ 1950 1900
NoConn ~ 1950 1700
$Comp
L GND #PWR012
U 1 1 509918A9
P 3200 2300
F 0 "#PWR012" H 3200 2300 30  0001 C CNN
F 1 "GND" H 3200 2230 30  0001 C CNN
	1    3200 2300
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR013
U 1 1 509918A0
P 3250 2100
F 0 "#PWR013" H 3250 2050 20  0001 C CNN
F 1 "+12V" H 3250 2200 30  0000 C CNN
	1    3250 2100
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG014
U 1 1 50991886
P 3250 2400
F 0 "#FLG014" H 3250 2495 30  0001 C CNN
F 1 "PWR_FLAG" H 3250 2580 30  0000 C CNN
	1    3250 2400
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG015
U 1 1 50991880
P 3450 2000
F 0 "#FLG015" H 3450 2095 30  0001 C CNN
F 1 "PWR_FLAG" H 3450 2180 30  0000 C CNN
	1    3450 2000
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG016
U 1 1 50991873
P 1850 2450
F 0 "#FLG016" H 1850 2545 30  0001 C CNN
F 1 "PWR_FLAG" H 1850 2630 30  0000 C CNN
	1    1850 2450
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR017
U 1 1 50991857
P 1850 2300
F 0 "#PWR017" H 1850 2400 30  0001 C CNN
F 1 "VCC" H 1850 2400 30  0000 C CNN
	1    1850 2300
	0    -1   -1   0   
$EndComp
Text Label 1100 1500 0    60   ~ 0
Vitesse_moteur_th
$Comp
L MEZZA-10 MEZZA2
U 1 1 509917C9
P 4750 1900
F 0 "MEZZA2" H 4750 2450 70  0000 C CNN
F 1 "MEZZA-10" H 4750 1300 70  0000 C CNN
	1    4750 1900
	1    0    0    -1  
$EndComp
$Comp
L MEZZA-10 MEZZA1
U 1 1 509917C5
P 2500 1900
F 0 "MEZZA1" H 2500 2450 70  0000 C CNN
F 1 "MEZZA-10" H 2500 1300 70  0000 C CNN
	1    2500 1900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
