EESchema Schematic File Version 2  date 06/03/2012 17:07:57
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
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title "carte_alimentation"
Date "6 mar 2012"
Rev "1.0"
Comp "EPSA - Hypnoz"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 5200 1900
Wire Wire Line
	5200 2000 5200 1900
Connection ~ 2450 3150
Wire Wire Line
	2450 3150 2450 3100
Connection ~ 4000 3250
Wire Wire Line
	3800 3250 4000 3250
Connection ~ 2450 3650
Wire Wire Line
	2450 3700 2450 3650
Wire Notes Line
	3500 750  3500 2200
Wire Notes Line
	3500 750  5550 750 
Wire Notes Line
	5550 750  5550 2200
Wire Notes Line
	5550 2200 3500 2200
Wire Wire Line
	5250 1900 5150 1900
Wire Notes Line
	3000 1900 3000 750 
Wire Notes Line
	3000 1900 1800 1900
Wire Notes Line
	1800 1900 1800 750 
Wire Wire Line
	2250 1050 2250 1150
Wire Notes Line
	850  4150 850  2350
Wire Wire Line
	1100 2750 1100 2700
Wire Wire Line
	1100 4000 1100 3900
Connection ~ 1200 1200
Wire Wire Line
	1200 1150 1200 1200
Connection ~ 5350 1450
Wire Wire Line
	5350 1550 5350 1100
Wire Wire Line
	4350 1100 4350 1450
Wire Wire Line
	4350 1450 4150 1450
Wire Wire Line
	5150 1450 5350 1450
Wire Wire Line
	4350 1800 3850 1800
Wire Wire Line
	2250 3600 2250 3650
Wire Wire Line
	2350 5900 2450 5900
Wire Wire Line
	2450 6200 2450 6100
Wire Wire Line
	2450 6100 2350 6100
Wire Wire Line
	3350 5300 2950 5300
Wire Wire Line
	1200 1500 1200 1400
Wire Wire Line
	2650 3600 2650 3650
Wire Wire Line
	4800 3300 4800 3200
Wire Wire Line
	4800 3200 4900 3200
Wire Wire Line
	4500 3500 4900 3500
Wire Wire Line
	4500 3000 4900 3000
Wire Wire Line
	4000 3500 4000 3000
Wire Wire Line
	1250 5300 850  5300
Wire Wire Line
	4450 6100 4550 6100
Wire Wire Line
	4550 6100 4550 6200
Wire Wire Line
	1100 1200 1400 1200
Wire Wire Line
	4450 5900 4550 5900
Wire Notes Line
	4950 6400 750  6400
Wire Notes Line
	4950 6400 4950 4800
Wire Notes Line
	4950 4800 750  4800
Wire Notes Line
	750  4800 750  6400
Wire Notes Line
	600  1600 600  800 
Wire Notes Line
	600  1600 1600 1600
Wire Notes Line
	1600 1600 1600 800 
Wire Notes Line
	1600 800  600  800 
Wire Wire Line
	4850 1100 4750 1100
Wire Notes Line
	1800 750  3000 750 
Wire Wire Line
	4900 3700 4800 3700
Wire Wire Line
	4800 3700 4800 3800
Wire Wire Line
	1300 1400 1100 1400
Connection ~ 1200 1400
Wire Wire Line
	1100 3400 1100 3250
Wire Wire Line
	1550 3300 1100 3300
Connection ~ 1100 3300
Wire Notes Line
	850  4150 1750 4150
Wire Notes Line
	1750 4150 1750 2350
Wire Notes Line
	1750 2350 850  2350
Wire Wire Line
	2250 1650 2250 1750
Wire Wire Line
	2400 1400 2700 1400
Wire Wire Line
	3950 1450 3950 1800
Connection ~ 3950 1800
Wire Wire Line
	2650 3650 2250 3650
Wire Wire Line
	2250 3200 2250 3150
Wire Wire Line
	2250 3150 2650 3150
Wire Wire Line
	2650 3150 2650 3200
Wire Notes Line
	3500 3950 3500 2550
Wire Notes Line
	3500 3950 5450 3950
Wire Notes Line
	5450 3950 5450 2550
Wire Notes Line
	5450 2550 3500 2550
Wire Notes Line
	2050 2900 2050 3900
Wire Notes Line
	2050 3900 2950 3900
Wire Notes Line
	2950 3900 2950 2850
Wire Notes Line
	2950 2850 2050 2850
Wire Notes Line
	2050 2850 2050 2950
$Comp
L PWR_FLAG #FLG?
U 1 1 4F563654
P 5200 2000
F 0 "#FLG?" H 5200 2095 30  0001 C CNN
F 1 "PWR_FLAG" H 5200 2180 30  0000 C CNN
	1    5200 2000
	-1   0    0    1   
$EndComp
Text Notes 2100 2950 0    60   ~ 0
Filtrage
$Comp
L +12V #PWR01
U 1 1 4F563619
P 2450 3100
F 0 "#PWR01" H 2450 3050 20  0001 C CNN
F 1 "+12V" H 2450 3200 30  0000 C CNN
	1    2450 3100
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR02
U 1 1 4F5635F4
P 3800 3250
F 0 "#PWR02" H 3800 3200 20  0001 C CNN
F 1 "+12V" H 3800 3350 30  0000 C CNN
	1    3800 3250
	0    -1   -1   0   
$EndComp
$Comp
L +12C #PWR03
U 1 1 4F5635E5
P 3850 1800
F 0 "#PWR03" H 3850 1770 30  0001 C CNN
F 1 "+12C" H 3850 1910 40  0000 C CNN
	1    3850 1800
	0    -1   -1   0   
$EndComp
$Comp
L +12C #PWR04
U 1 1 4F5635D9
P 1400 1200
F 0 "#PWR04" H 1400 1170 30  0001 C CNN
F 1 "+12C" H 1400 1310 40  0000 C CNN
	1    1400 1200
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR05
U 1 1 4F428059
P 5250 1900
F 0 "#PWR05" H 5250 1850 20  0001 C CNN
F 1 "+12V" H 5250 2000 30  0000 C CNN
	1    5250 1900
	0    1    1    0   
$EndComp
Text Notes 3550 900  0    60   ~ 0
Coupe circuit BP
$Comp
L +12V #PWR06
U 1 1 4F563415
P 2250 1050
F 0 "#PWR06" H 2250 1000 20  0001 C CNN
F 1 "+12V" H 2250 1150 30  0000 C CNN
	1    2250 1050
	1    0    0    -1  
$EndComp
Text Label 2950 5300 0    60   ~ 0
Seuil
Text Label 850  5300 0    60   ~ 0
Tens_batt
Text Notes 3550 2700 0    60   ~ 0
Distribution
Text Notes 950  2500 0    60   ~ 0
Diviseur
Text Notes 1850 900  0    60   ~ 0
Valeur_reference
$Comp
L PWR_FLAG #FLG07
U 1 1 4F4397BD
P 1300 1400
F 0 "#FLG07" H 1300 1495 30  0001 C CNN
F 1 "PWR_FLAG" H 1300 1580 30  0000 C CNN
	1    1300 1400
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG08
U 1 1 4F4397B5
P 1200 1150
F 0 "#FLG08" H 1200 1245 30  0001 C CNN
F 1 "PWR_FLAG" H 1200 1330 30  0000 C CNN
	1    1200 1150
	1    0    0    -1  
$EndComp
Text Notes 650  900  0    60   ~ 0
Alimentation
NoConn ~ 2350 5700
NoConn ~ 2350 5500
NoConn ~ 2350 5300
NoConn ~ 1250 5500
NoConn ~ 1250 5700
NoConn ~ 1250 5900
NoConn ~ 1250 6100
NoConn ~ 3350 6100
NoConn ~ 3350 5900
NoConn ~ 3350 5700
NoConn ~ 3350 5500
NoConn ~ 4450 5700
NoConn ~ 4450 5500
NoConn ~ 4450 5300
$Comp
L R R3
U 1 1 4F42855F
P 5100 1100
F 0 "R3" V 5180 1100 50  0000 C CNN
F 1 "1k" V 5100 1100 50  0000 C CNN
	1    5100 1100
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D1
U 1 1 4F42851E
P 4550 1100
F 0 "D1" H 4550 1200 40  0000 C CNN
F 1 "DIODE" H 4550 1000 40  0000 C CNN
	1    4550 1100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR09
U 1 1 4F428471
P 4800 3800
F 0 "#PWR09" H 4800 3800 30  0001 C CNN
F 1 "GND" H 4800 3730 30  0001 C CNN
	1    4800 3800
	1    0    0    -1  
$EndComp
NoConn ~ 5150 1700
$Comp
L GND #PWR010
U 1 1 4F42819F
P 5350 1550
F 0 "#PWR010" H 5350 1550 30  0001 C CNN
F 1 "GND" H 5350 1480 30  0001 C CNN
	1    5350 1550
	1    0    0    -1  
$EndComp
$Comp
L RELAIS-SPDT K1
U 1 1 4F42808B
P 4750 1600
F 0 "K1" H 5200 1700 60  0000 C CNN
F 1 "Relais BP" H 4750 1600 60  0000 C CNN
	1    4750 1600
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P1
U 1 1 4F427FA9
P 4050 1100
F 0 "P1" V 4000 1100 40  0000 C CNN
F 1 "Tableau_de_bord" V 4100 1100 40  0000 C CNN
	1    4050 1100
	0    -1   -1   0   
$EndComp
Text Notes 900  4950 0    60   ~ 0
Connecteurs_mezzanine
$Comp
L +12V #PWR011
U 1 1 4F427DAB
P 4550 5900
F 0 "#PWR011" H 4550 5850 20  0001 C CNN
F 1 "+12V" H 4550 6000 30  0000 C CNN
	1    4550 5900
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR012
U 1 1 4F427DA3
P 2450 5900
F 0 "#PWR012" H 2450 5850 20  0001 C CNN
F 1 "+12V" H 2450 6000 30  0000 C CNN
	1    2450 5900
	0    1    1    0   
$EndComp
Text Label 2700 1400 2    60   ~ 0
Seuil
Text Label 1550 3300 2    60   ~ 0
Tens_batt
$Comp
L +12V #PWR013
U 1 1 4F427D3E
P 1100 2700
F 0 "#PWR013" H 1100 2650 20  0001 C CNN
F 1 "+12V" H 1100 2800 30  0000 C CNN
	1    1100 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 4F427C88
P 2250 1750
F 0 "#PWR014" H 2250 1750 30  0001 C CNN
F 1 "GND" H 2250 1680 30  0001 C CNN
	1    2250 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 4F427BAE
P 2450 6200
F 0 "#PWR015" H 2450 6200 30  0001 C CNN
F 1 "GND" H 2450 6130 30  0001 C CNN
	1    2450 6200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 4F427BA8
P 4550 6200
F 0 "#PWR016" H 4550 6200 30  0001 C CNN
F 1 "GND" H 4550 6130 30  0001 C CNN
	1    4550 6200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 4F4279F1
P 1200 1500
F 0 "#PWR017" H 1200 1500 30  0001 C CNN
F 1 "GND" H 1200 1430 30  0001 C CNN
	1    1200 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 4F4279DA
P 2450 3700
F 0 "#PWR018" H 2450 3700 30  0001 C CNN
F 1 "GND" H 2450 3630 30  0001 C CNN
	1    2450 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 4F4279B3
P 4800 3300
F 0 "#PWR019" H 4800 3300 30  0001 C CNN
F 1 "GND" H 4800 3230 30  0001 C CNN
	1    4800 3300
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 4F42795F
P 2250 1400
F 0 "RV1" H 2250 1300 50  0000 C CNN
F 1 "V-" H 2250 1400 50  0000 C CNN
	1    2250 1400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR020
U 1 1 4F42792E
P 1100 4000
F 0 "#PWR020" H 1100 4000 30  0001 C CNN
F 1 "GND" H 1100 3930 30  0001 C CNN
	1    1100 4000
	1    0    0    -1  
$EndComp
$Comp
L MEZZA-10 MEZZA1
U 1 1 4F426D8A
P 1800 5700
F 0 "MEZZA1" H 1800 6250 70  0000 C CNN
F 1 "MEZZA-10" H 1800 5100 70  0000 C CNN
	1    1800 5700
	1    0    0    -1  
$EndComp
$Comp
L MEZZA-10 MEZZA2
U 1 1 4F426D6B
P 3900 5700
F 0 "MEZZA2" H 3900 6250 70  0000 C CNN
F 1 "MEZZA-10" H 3900 5100 70  0000 C CNN
	1    3900 5700
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P4
U 1 1 4F426D10
P 5250 3600
F 0 "P4" V 5200 3600 40  0000 C CNN
F 1 "circuit_arriere" V 5300 3600 40  0000 C CNN
	1    5250 3600
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P3
U 1 1 4F426D05
P 5250 3100
F 0 "P3" V 5200 3100 40  0000 C CNN
F 1 "circuit_avant" V 5300 3100 40  0000 C CNN
	1    5250 3100
	1    0    0    -1  
$EndComp
$Comp
L FUSE F2
U 1 1 4F426CF8
P 4250 3500
F 0 "F2" H 4350 3550 40  0000 C CNN
F 1 "FUSE" H 4150 3450 40  0000 C CNN
	1    4250 3500
	1    0    0    -1  
$EndComp
$Comp
L FUSE F1
U 1 1 4F426CF4
P 4250 3000
F 0 "F1" H 4350 3050 40  0000 C CNN
F 1 "FUSE" H 4150 2950 40  0000 C CNN
	1    4250 3000
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 4F426C72
P 1100 3650
F 0 "R2" V 1180 3650 50  0000 C CNN
F 1 "4k" V 1100 3650 50  0000 C CNN
	1    1100 3650
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 4F426C66
P 1100 3000
F 0 "R1" V 1180 3000 50  0000 C CNN
F 1 "5.6k" V 1100 3000 50  0000 C CNN
	1    1100 3000
	-1   0    0    1   
$EndComp
$Comp
L CP C2
U 1 1 4F426C2F
P 2650 3400
F 0 "C2" H 2700 3500 50  0000 L CNN
F 1 "1000u" H 2700 3300 50  0000 L CNN
	1    2650 3400
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 4F426C2A
P 2250 3400
F 0 "C1" H 2300 3500 50  0000 L CNN
F 1 "1000u" H 2300 3300 50  0000 L CNN
	1    2250 3400
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P2
U 1 1 4F426BBA
P 750 1300
F 0 "P2" V 700 1300 40  0000 C CNN
F 1 "Alim" V 800 1300 40  0000 C CNN
	1    750  1300
	-1   0    0    1   
$EndComp
$EndSCHEMATC
