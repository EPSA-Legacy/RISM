EESchema Schematic File Version 1
LIBS:power,device,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,analog_switches,motorola,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib,./2010_carte_relais.cache
EELAYER 23  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "Carte relais"
Date "18 jan 2003"
Rev "1.0"
Comp "EPSA - SymbioZ"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L +12V #PWR4
U 1 1 3E29366D
P 6850 2100
F 0 "#PWR4" H 6850 2050 20  0001 C C
F 1 "+12V" H 6850 2200 30  0000 C C
	1    6850 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR11
U 1 1 3E293667
P 6850 2600
F 0 "#PWR11" H 6850 2600 30  0001 C C
F 1 "GND" H 6850 2530 30  0001 C C
	1    6850 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2550 6850 2600
Wire Wire Line
	6850 2150 6850 2100
$Comp
L CP C3
U 1 1 3E293654
P 6850 2350
F 0 "C3" H 6900 2450 50  0000 L C
F 1 "1u" H 6900 2250 50  0000 L C
	1    6850 2350
	1    0    0    -1  
$EndComp
$Comp
L LM358 U1
U 2 1 3E292F07
P 6400 3650
F 0 "U1" H 6350 3850 60  0000 L C
F 1 "LM358" H 6350 3400 60  0000 L C
	2    6400 3650
	1    0    0    -1  
$EndComp
$Comp
L LM358 U1
U 1 1 3E292EFA
P 4850 3650
F 0 "U1" H 4800 3850 60  0000 L C
F 1 "LM358" H 4800 3400 60  0000 L C
	1    4850 3650
	1    0    0    -1  
$EndComp
Connection ~ 5450 2150
Wire Wire Line
	5450 2100 5450 2150
$Comp
L +12V #PWR3
U 1 1 3E292ED4
P 5450 2100
F 0 "#PWR3" H 5450 2050 20  0001 C C
F 1 "+12V" H 5450 2200 30  0000 C C
	1    5450 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2150 6200 2550
Connection ~ 5600 2550
Wire Wire Line
	5700 2550 4950 2550
$Comp
L +12V #PWR2
U 1 1 3E292EA4
P 6400 3250
F 0 "#PWR2" H 6400 3200 20  0001 C C
F 1 "+12V" H 6400 3350 30  0000 C C
	1    6400 3250
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR1
U 1 1 3E292EA1
P 4850 3250
F 0 "#PWR1" H 4850 3200 20  0001 C C
F 1 "+12V" H 4850 3350 30  0000 C C
	1    4850 3250
	1    0    0    -1  
$EndComp
NoConn ~ 3350 3450
NoConn ~ 3350 3850
Wire Wire Line
	3350 3350 3850 3350
Connection ~ 3850 4050
Wire Wire Line
	3850 4050 3350 4050
Wire Notes Line
	4000 4300 2700 4300
Wire Notes Line
	4000 4300 4000 1850
Wire Notes Line
	4000 1850 2700 1850
Wire Notes Line
	2700 1850 2700 4300
$Comp
L GND #PWR10
U 1 1 4BE914F0
P 3850 4150
F 0 "#PWR10" H 3850 4150 30  0001 C C
F 1 "GND" H 3850 4080 30  0001 C C
	1    3850 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3350 3850 4150
Connection ~ 3850 3950
Connection ~ 3850 3850
Wire Wire Line
	3850 3950 3350 3950
Connection ~ 3850 3750
Connection ~ 3850 3550
Wire Wire Line
	3850 3750 3350 3750
Connection ~ 3850 3450
Wire Wire Line
	3850 3550 3350 3550
Text Label 3450 3650 0    60   ~
Int2
Text Label 3450 3250 0    60   ~
Int1
$Comp
L DB9 J1
U 1 1 4BE91446
P 2900 3650
F 0 "J1" H 2900 4200 70  0000 C C
F 1 "DB9" H 2900 3100 70  0000 C C
	1    2900 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	3350 3650 3800 3650
Wire Wire Line
	3350 3250 3800 3250
Text Label 4350 3500 1    60   ~
Int1
Text Label 5900 3500 1    60   ~
Int2
Wire Wire Line
	5900 3200 5900 3550
Wire Wire Line
	4350 3550 4350 3200
Wire Wire Line
	4750 3250 4850 3250
Wire Wire Line
	6300 3250 6400 3250
Connection ~ 5450 2550
Wire Wire Line
	5450 2550 5450 2650
$Comp
L GND #PWR9
U 1 1 4BE0A01A
P 5450 2650
F 0 "#PWR9" H 5450 2650 30  0001 C C
F 1 "GND" H 5450 2580 30  0001 C C
	1    5450 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2600 8500 2600
Text Label 3050 3000 0    60   ~
Rel22
Wire Wire Line
	2900 3000 3500 3000
$Comp
L GND #PWR8
U 1 1 4BE08049
P 2900 3000
F 0 "#PWR8" H 2900 3000 30  0001 C C
F 1 "GND" H 2900 2930 30  0001 C C
	1    2900 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 3650 6900 4200
Text Notes 7900 1800 0    60   ~
Relais
Wire Notes Line
	8600 1850 8600 2800
Wire Notes Line
	8600 1850 7500 1850
Wire Notes Line
	7500 1850 7500 2800
Wire Notes Line
	7500 2800 8600 2800
Text Label 8150 2700 0    60   ~
Rel21
Text Label 8150 2600 0    60   ~
Rel22
Text Label 8150 2500 0    60   ~
Rel23
Text Label 8150 2400 0    60   ~
Rel24
Text Label 8150 2250 0    60   ~
Rel11
Text Label 8150 2150 0    60   ~
Rel12
Text Label 8150 2050 0    60   ~
Rel13
Text Label 8150 1950 0    60   ~
Rel14
Wire Wire Line
	8100 2700 8500 2700
Wire Wire Line
	8100 2500 8500 2500
Wire Wire Line
	8100 2400 8500 2400
Wire Wire Line
	8100 2250 8500 2250
Wire Wire Line
	8100 2150 8500 2150
Wire Wire Line
	8100 2050 8500 2050
Wire Wire Line
	8100 1950 8500 1950
$Comp
L CONN_4 P5
U 1 1 4BE07E22
P 7750 2550
F 0 "P5" V 7700 2550 50  0000 C C
F 1 "CONN_4" V 7800 2550 50  0000 C C
	1    7750 2550
	-1   0    0    1   
$EndComp
$Comp
L CONN_4 P4
U 1 1 4BE07DFF
P 7750 2100
F 0 "P4" V 7700 2100 50  0000 C C
F 1 "CONN_4" V 7800 2100 50  0000 C C
	1    7750 2100
	-1   0    0    1   
$EndComp
Wire Notes Line
	7300 1850 4150 1850
Wire Notes Line
	7300 1850 7300 2850
Wire Notes Line
	7300 2850 4150 2850
Wire Notes Line
	4150 2850 4150 1850
Text Notes 3050 1500 0    315  ~
Carte Relais
Text Notes 5000 3050 0    60   ~
Amplificateurs Suiveurs
Text Label 3050 2800 0    60   ~
Rel12
Wire Wire Line
	3500 2800 2900 2800
$Comp
L GND #PWR7
U 1 1 4BE06E63
P 2900 2800
F 0 "#PWR7" H 2900 2800 30  0001 C C
F 1 "GND" H 2900 2730 30  0001 C C
	1    2900 2800
	0    1    1    0   
$EndComp
Wire Notes Line
	4200 4300 4200 3100
Wire Notes Line
	4200 4300 7350 4300
Wire Notes Line
	7350 4300 7350 3100
Wire Notes Line
	7350 3100 4200 3100
Wire Wire Line
	6900 3650 7300 3650
Text Label 6950 3650 0    60   ~
Rel21
Wire Wire Line
	6300 4050 6400 4050
$Comp
L GND #PWR6
U 1 1 4BE06DA3
P 6400 4050
F 0 "#PWR6" H 6400 4050 30  0001 C C
F 1 "GND" H 6400 3980 30  0001 C C
	1    6400 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 3750 5900 4200
Wire Wire Line
	5900 4200 6900 4200
Wire Wire Line
	5750 3650 5350 3650
Text Label 5400 3650 0    60   ~
Rel11
Wire Wire Line
	4750 4050 4850 4050
$Comp
L GND #PWR5
U 1 1 4BE06D17
P 4850 4050
F 0 "#PWR5" H 4850 4050 30  0001 C C
F 1 "GND" H 4850 3980 30  0001 C C
	1    4850 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 3750 4350 4200
Wire Wire Line
	4350 4200 5350 4200
Wire Wire Line
	5350 4200 5350 3650
Text Notes 2950 1800 0    60   ~
Connecteurs
Text Label 3350 2550 0    60   ~
Rel24
Text Label 3350 2350 0    60   ~
Rel23
Text Label 3350 2200 0    60   ~
Rel14
Text Label 3350 2000 0    60   ~
Rel13
Wire Wire Line
	3300 2550 3700 2550
Wire Wire Line
	3300 2350 3700 2350
Wire Wire Line
	3300 2200 3700 2200
Wire Wire Line
	3700 2000 3300 2000
$Comp
L CONN_2 P3
U 1 1 4BE066D8
P 2950 2450
F 0 "P3" V 2900 2450 40  0000 C C
F 1 "CONN_2" V 3000 2450 40  0000 C C
	1    2950 2450
	-1   0    0    -1  
$EndComp
$Comp
L CONN_2 P2
U 1 1 4BE066C7
P 2950 2100
F 0 "P2" V 2900 2100 40  0000 C C
F 1 "CONN_2" V 3000 2100 40  0000 C C
	1    2950 2100
	-1   0    0    -1  
$EndComp
Text Notes 5200 1800 0    60   ~
Alimentation
Wire Wire Line
	4950 2550 4950 2450
Wire Wire Line
	4950 2450 4850 2450
Wire Wire Line
	4950 2250 4950 2150
Wire Wire Line
	4950 2250 4850 2250
Connection ~ 5300 2550
$Comp
L PWR_FLAG #FLG2
U 1 1 4BD7F9CA
P 4950 2550
F 0 "#FLG2" H 4950 2820 30  0001 C C
F 1 "PWR_FLAG" H 4950 2780 30  0000 C C
	1    4950 2550
	-1   0    0    1   
$EndComp
Connection ~ 5600 2150
Connection ~ 5300 2150
Wire Wire Line
	4950 2150 5800 2150
$Comp
L R R1
U 1 1 4BD7F87A
P 5950 2550
F 0 "R1" V 6030 2550 50  0000 C C
F 1 "500" V 5950 2550 50  0000 C C
	1    5950 2550
	0    -1   -1   0   
$EndComp
$Comp
L LED D1
U 1 1 4BD7F860
P 6000 2150
F 0 "D1" H 6000 2250 50  0000 C C
F 1 "JAUNE" H 6000 2050 50  0000 C C
	1    6000 2150
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 4BD7F83F
P 5600 2350
F 0 "C2" H 5650 2450 50  0000 L C
F 1 "10u" H 5650 2250 50  0000 L C
	1    5600 2350
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 4BD7F806
P 5300 2350
F 0 "C1" H 5350 2450 50  0000 L C
F 1 "17p" H 5350 2250 50  0000 L C
	1    5300 2350
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG1
U 1 1 4BD7F26F
P 4950 2150
F 0 "#FLG1" H 4950 2420 30  0001 C C
F 1 "PWR_FLAG" H 4950 2380 30  0000 C C
	1    4950 2150
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P1
U 1 1 4BD7F1A2
P 4500 2350
F 0 "P1" V 4450 2350 40  0000 C C
F 1 "Alim" V 4550 2350 40  0000 C C
	1    4500 2350
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
