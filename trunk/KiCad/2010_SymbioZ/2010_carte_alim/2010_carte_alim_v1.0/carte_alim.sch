EESchema Schematic File Version 1
LIBS:power,symbioz,device,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,analog_switches,motorola,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib,./carte_alim.cache
EELAYER 23  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "Carte alimentation"
Date "18 jan 2003"
Rev "1.0"
Comp "EPSA - SymbioZ"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 2450 3000
Wire Wire Line
	2450 3000 3000 3000
Wire Wire Line
	3000 3000 3000 2900
Connection ~ 3550 2900
Wire Wire Line
	3550 2900 3150 2900
Wire Wire Line
	2300 2300 2650 2300
Wire Wire Line
	2650 2300 2650 2900
Wire Wire Line
	2650 2900 2850 2900
Connection ~ 3550 3600
Connection ~ 3550 3250
Wire Wire Line
	3550 3650 3550 2700
NoConn ~ 3150 1850
$Comp
L RELAIS_JS-M K1
U 1 1 3E293BD5
P 3000 2400
F 0 "K1" H 3000 2150 60  0000 C C
F 1 "RELAIS_JS-M" H 3000 2675 60  0000 C C
	1    3000 2400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR4
U 1 1 3E21448A
P 3550 3650
F 0 "#PWR4" H 3550 3650 30  0001 C C
F 1 "GND" H 3550 3580 30  0001 C C
	1    3550 3650
	1    0    0    -1  
$EndComp
Connection ~ 2700 1550
Wire Wire Line
	2750 1550 2700 1550
$Comp
L PWR_FLAG #FLG2
U 1 1 3E212B09
P 2750 1550
F 0 "#FLG2" H 2750 1820 30  0001 C C
F 1 "PWR_FLAG" H 2750 1780 30  0000 C C
	1    2750 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 1600 2700 1400
Connection ~ 2900 1200
Wire Wire Line
	2900 1150 2900 1200
$Comp
L PWR_FLAG #FLG1
U 1 1 3E212AEB
P 2900 1150
F 0 "#FLG1" H 2900 1420 30  0001 C C
F 1 "PWR_FLAG" H 2900 1380 30  0000 C C
	1    2900 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1400 3200 1400
Text Label 3000 1400 0    60   ~
ON
Connection ~ 2700 1200
Wire Wire Line
	3200 1200 2650 1200
$Comp
L CONN_2 P1
U 1 1 3E212A96
P 3550 1300
F 0 "P1" V 3500 1300 40  0000 C C
F 1 "INTER" V 3600 1300 40  0000 C C
	1    3550 1300
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR2
U 1 1 3E212A59
P 2700 1150
F 0 "#PWR2" H 2700 1100 20  0001 C C
F 1 "+12V" H 2700 1250 30  0000 C C
	1    2700 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1200 2700 1150
$Comp
L GND #PWR3
U 1 1 3E212A46
P 2700 1600
F 0 "#PWR3" H 2700 1600 30  0001 C C
F 1 "GND" H 2700 1530 30  0001 C C
	1    2700 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1400 2650 1400
Wire Wire Line
	3550 3250 3200 3250
Wire Wire Line
	2450 3600 2450 2700
Connection ~ 2450 3250
Wire Wire Line
	2450 3250 2800 3250
Wire Wire Line
	2850 3600 3050 3600
Text Label 2350 2300 0    60   ~
ON
$Comp
L +12V #PWR1
U 1 1 3E212858
P 2850 1800
F 0 "#PWR1" H 2850 1750 20  0001 C C
F 1 "+12V" H 2850 1900 30  0000 C C
	1    2850 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1850 2850 1800
Connection ~ 2000 2700
Connection ~ 2100 2700
Wire Wire Line
	2450 2700 1000 2700
Connection ~ 1900 2700
Connection ~ 1800 2700
Connection ~ 1700 2700
Connection ~ 1600 2700
Connection ~ 1500 2700
Connection ~ 1400 2700
Connection ~ 1300 2700
Connection ~ 1200 2700
Connection ~ 1100 2700
$Comp
L CONN_12 P4
U 1 1 3E2127EE
P 1550 2350
F 0 "P4" V 1500 2350 60  0000 C C
F 1 "12V" V 1600 2350 60  0000 C C
	1    1550 2350
	0    1    -1   0   
$EndComp
Connection ~ 4000 2700
Connection ~ 3900 2700
Wire Wire Line
	3550 2700 5000 2700
Connection ~ 4100 2700
Connection ~ 4200 2700
Connection ~ 4300 2700
Connection ~ 4400 2700
Connection ~ 4500 2700
Connection ~ 4600 2700
Connection ~ 4700 2700
Connection ~ 4800 2700
Connection ~ 4900 2700
$Comp
L CONN_12 P3
U 1 1 3E2127BE
P 4450 2350
F 0 "P3" V 4400 2350 60  0000 C C
F 1 "Masse" V 4500 2350 60  0000 C C
	1    4450 2350
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 3E2113CB
P 3300 3600
F 0 "R1" V 3380 3600 50  0000 C C
F 1 "2k" V 3300 3600 50  0000 C C
	1    3300 3600
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 3E2113B8
P 2650 3600
F 0 "D1" H 2650 3700 50  0000 C C
F 1 "JAUNE" H 2650 3500 50  0000 C C
	1    2650 3600
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 3E211382
P 3000 3250
F 0 "C1" H 3050 3350 50  0000 L C
F 1 "1m" H 3050 3150 50  0000 L C
	1    3000 3250
	0    -1   -1   0   
$EndComp
$Comp
L CONN_2 P2
U 1 1 3E210EE6
P 2300 1300
F 0 "P2" V 2250 1300 40  0000 C C
F 1 "MAIN" V 2350 1300 40  0000 C C
	1    2300 1300
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
