EESchema Schematic File Version 2  date 13/03/2012 17:49:18
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
LIBS:carte_alimentation-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title "carte_alimentation"
Date "13 mar 2012"
Rev "1.0"
Comp "EPSA - Hypnoz"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 6050 1500
Wire Wire Line
	5800 1150 6050 1150
Wire Wire Line
	6050 1150 6050 1550
Wire Wire Line
	4750 3200 4750 3250
Wire Wire Line
	4750 3250 5650 3250
Wire Wire Line
	2500 1250 2600 1250
Wire Notes Line
	5950 4050 4200 4050
Wire Notes Line
	5950 4050 5950 2700
Wire Notes Line
	5950 2700 4200 2700
Wire Notes Line
	2800 850  1450 850 
Wire Notes Line
	2800 850  2800 1650
Wire Notes Line
	2800 1650 1450 1650
Connection ~ 5850 3500
Connection ~ 5150 3500
Wire Wire Line
	5650 3550 5650 3200
Wire Wire Line
	5300 3550 5300 3200
Wire Wire Line
	4950 3550 4950 3200
Connection ~ 5650 3250
Connection ~ 4950 3250
Connection ~ 5300 3250
Wire Wire Line
	5150 3550 5150 3200
Wire Wire Line
	5500 3550 5500 3200
Wire Wire Line
	5850 3550 5850 3200
Connection ~ 5500 3500
Wire Notes Line
	4200 2700 4200 4050
Wire Wire Line
	5200 1150 5200 1500
Wire Wire Line
	5200 1150 5400 1150
Connection ~ 6050 1950
Wire Wire Line
	6050 2000 6050 1950
Connection ~ 3300 3200
Wire Wire Line
	3300 3150 3300 3200
Connection ~ 3300 3700
Wire Wire Line
	3300 3750 3300 3700
Wire Notes Line
	4350 800  4350 2250
Wire Notes Line
	4350 800  6400 800 
Wire Notes Line
	4350 2250 6400 2250
Wire Wire Line
	6100 1950 6000 1950
Wire Notes Line
	4250 2000 4250 850 
Wire Notes Line
	4250 2000 3050 2000
Wire Notes Line
	3050 2000 3050 850 
Wire Wire Line
	3500 1150 3500 1250
Wire Notes Line
	1700 4200 1700 2400
Wire Wire Line
	1950 2800 1950 2750
Wire Wire Line
	1950 4050 1950 3950
Wire Wire Line
	5200 1500 5000 1500
Wire Wire Line
	5200 1850 4700 1850
Wire Wire Line
	3100 3650 3100 3700
Wire Wire Line
	3200 5950 3300 5950
Wire Wire Line
	3300 6250 3300 6150
Wire Wire Line
	3300 6150 3200 6150
Wire Wire Line
	4200 5350 3800 5350
Wire Wire Line
	2050 1550 2050 1450
Wire Wire Line
	3500 3650 3500 3700
Wire Wire Line
	2100 5350 1700 5350
Wire Wire Line
	5300 6150 5400 6150
Wire Wire Line
	5400 6150 5400 6250
Wire Wire Line
	5300 5950 5400 5950
Wire Notes Line
	5800 6450 1600 6450
Wire Notes Line
	5800 6450 5800 4850
Wire Notes Line
	5800 4850 1600 4850
Wire Notes Line
	1600 4850 1600 6450
Wire Notes Line
	1450 1650 1450 850 
Wire Notes Line
	3050 850  4250 850 
Wire Wire Line
	2150 1450 1950 1450
Connection ~ 2050 1450
Wire Wire Line
	1950 3450 1950 3300
Wire Wire Line
	2400 3350 1950 3350
Connection ~ 1950 3350
Wire Notes Line
	1700 4200 2600 4200
Wire Notes Line
	2600 4200 2600 2400
Wire Notes Line
	2600 2400 1700 2400
Wire Wire Line
	3500 1750 3500 1850
Wire Wire Line
	3650 1500 3950 1500
Wire Wire Line
	4800 1500 4800 1850
Connection ~ 4800 1850
Wire Wire Line
	3500 3700 3100 3700
Wire Wire Line
	3100 3250 3100 3200
Wire Wire Line
	3100 3200 3500 3200
Wire Wire Line
	3500 3200 3500 3250
Wire Notes Line
	2900 2950 2900 3950
Wire Notes Line
	2900 3950 3800 3950
Wire Notes Line
	3800 3950 3800 2900
Wire Notes Line
	3800 2900 2900 2900
Wire Notes Line
	2900 2900 2900 3000
Wire Wire Line
	6000 1500 6050 1500
Wire Notes Line
	6400 2250 6400 800 
Wire Wire Line
	1950 1250 2000 1250
Wire Wire Line
	2550 1150 2550 1250
Connection ~ 2550 1250
Wire Wire Line
	5850 3500 4750 3500
Wire Wire Line
	4750 3500 4750 3600
Text Notes 4350 3900 1    60   ~ 0
Distribution
$Comp
L CONN_2 P3
U 1 1 4F5F77A2
P 5050 2850
F 0 "P3" V 5000 2850 40  0000 C CNN
F 1 "ALIM11" V 5100 2850 40  0000 C CNN
	1    5050 2850
	0    -1   -1   0   
$EndComp
$Comp
L CONN_2 P4
U 1 1 4F5F77A1
P 5400 2850
F 0 "P4" V 5350 2850 40  0000 C CNN
F 1 "ALIM12" V 5450 2850 40  0000 C CNN
	1    5400 2850
	0    -1   -1   0   
$EndComp
$Comp
L CONN_2 P5
U 1 1 4F5F77A0
P 5750 2850
F 0 "P5" V 5700 2850 40  0000 C CNN
F 1 "ALIM13" V 5800 2850 40  0000 C CNN
	1    5750 2850
	0    -1   -1   0   
$EndComp
$Comp
L CONN_2 P8
U 1 1 4F5F779F
P 5750 3900
F 0 "P8" V 5700 3900 40  0000 C CNN
F 1 "ALIM23" V 5800 3900 40  0000 C CNN
	1    5750 3900
	0    -1   1    0   
$EndComp
$Comp
L CONN_2 P7
U 1 1 4F5F779E
P 5400 3900
F 0 "P7" V 5350 3900 40  0000 C CNN
F 1 "ALIM22" V 5450 3900 40  0000 C CNN
	1    5400 3900
	0    -1   1    0   
$EndComp
$Comp
L CONN_2 P6
U 1 1 4F5F779D
P 5050 3900
F 0 "P6" V 5000 3900 40  0000 C CNN
F 1 "ALIM21" V 5100 3900 40  0000 C CNN
	1    5050 3900
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR01
U 1 1 4F5F779C
P 4750 3600
F 0 "#PWR01" H 4750 3600 30  0001 C CNN
F 1 "GND" H 4750 3530 30  0001 C CNN
	1    4750 3600
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR02
U 1 1 4F5F779B
P 4750 3200
F 0 "#PWR02" H 4750 3150 20  0001 C CNN
F 1 "+12V" H 4750 3300 30  0000 C CNN
	1    4750 3200
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 4F5F75E3
P 2550 1150
F 0 "#FLG03" H 2550 1245 30  0001 C CNN
F 1 "PWR_FLAG" H 2550 1330 30  0000 C CNN
	1    2550 1150
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG04
U 1 1 4F563654
P 6050 2000
F 0 "#FLG04" H 6050 2095 30  0001 C CNN
F 1 "PWR_FLAG" H 6050 2180 30  0000 C CNN
	1    6050 2000
	-1   0    0    1   
$EndComp
Text Notes 2950 3000 0    60   ~ 0
Filtrage
$Comp
L +12V #PWR05
U 1 1 4F563619
P 3300 3150
F 0 "#PWR05" H 3300 3100 20  0001 C CNN
F 1 "+12V" H 3300 3250 30  0000 C CNN
	1    3300 3150
	1    0    0    -1  
$EndComp
$Comp
L +12C #PWR06
U 1 1 4F5635E5
P 4700 1850
F 0 "#PWR06" H 4700 1820 30  0001 C CNN
F 1 "+12C" H 4700 1960 40  0000 C CNN
	1    4700 1850
	0    -1   -1   0   
$EndComp
$Comp
L +12C #PWR07
U 1 1 4F5635D9
P 2600 1250
F 0 "#PWR07" H 2600 1220 30  0001 C CNN
F 1 "+12C" H 2600 1360 40  0000 C CNN
	1    2600 1250
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR08
U 1 1 4F428059
P 6100 1950
F 0 "#PWR08" H 6100 1900 20  0001 C CNN
F 1 "+12V" H 6100 2050 30  0000 C CNN
	1    6100 1950
	0    1    1    0   
$EndComp
Text Notes 4400 950  0    60   ~ 0
Coupe circuit BP
$Comp
L +12V #PWR09
U 1 1 4F563415
P 3500 1150
F 0 "#PWR09" H 3500 1100 20  0001 C CNN
F 1 "+12V" H 3500 1250 30  0000 C CNN
	1    3500 1150
	1    0    0    -1  
$EndComp
Text Label 3800 5350 0    60   ~ 0
Seuil
Text Label 1700 5350 0    60   ~ 0
Tens_batt
Text Notes 1800 2550 0    60   ~ 0
Diviseur
Text Notes 3100 1000 0    60   ~ 0
Valeur_reference
$Comp
L PWR_FLAG #FLG010
U 1 1 4F4397BD
P 2150 1450
F 0 "#FLG010" H 2150 1545 30  0001 C CNN
F 1 "PWR_FLAG" H 2150 1630 30  0000 C CNN
	1    2150 1450
	0    1    1    0   
$EndComp
Text Notes 1500 950  0    60   ~ 0
Alimentation
NoConn ~ 3200 5750
NoConn ~ 3200 5550
NoConn ~ 3200 5350
NoConn ~ 2100 5550
NoConn ~ 2100 5750
NoConn ~ 2100 5950
NoConn ~ 2100 6150
NoConn ~ 4200 6150
NoConn ~ 4200 5950
NoConn ~ 4200 5750
NoConn ~ 4200 5550
NoConn ~ 5300 5750
NoConn ~ 5300 5550
NoConn ~ 5300 5350
$Comp
L DIODE D1
U 1 1 4F42851E
P 5600 1150
F 0 "D1" H 5600 1250 40  0000 C CNN
F 1 "DIODE" H 5600 1050 40  0000 C CNN
	1    5600 1150
	-1   0    0    1   
$EndComp
NoConn ~ 6000 1750
$Comp
L GND #PWR011
U 1 1 4F42819F
P 6050 1550
F 0 "#PWR011" H 6050 1550 30  0001 C CNN
F 1 "GND" H 6050 1480 30  0001 C CNN
	1    6050 1550
	1    0    0    -1  
$EndComp
$Comp
L RELAIS-SPDT K1
U 1 1 4F42808B
P 5600 1650
F 0 "K1" H 6050 1750 60  0000 C CNN
F 1 "Relais BP" H 5600 1650 60  0000 C CNN
	1    5600 1650
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P1
U 1 1 4F427FA9
P 4900 1150
F 0 "P1" V 4850 1150 40  0000 C CNN
F 1 "Tableau_de_bord" V 4950 1150 40  0000 C CNN
	1    4900 1150
	0    -1   -1   0   
$EndComp
Text Notes 1750 5000 0    60   ~ 0
Connecteurs_mezzanine
$Comp
L +12V #PWR012
U 1 1 4F427DAB
P 5400 5950
F 0 "#PWR012" H 5400 5900 20  0001 C CNN
F 1 "+12V" H 5400 6050 30  0000 C CNN
	1    5400 5950
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR013
U 1 1 4F427DA3
P 3300 5950
F 0 "#PWR013" H 3300 5900 20  0001 C CNN
F 1 "+12V" H 3300 6050 30  0000 C CNN
	1    3300 5950
	0    1    1    0   
$EndComp
Text Label 3950 1500 2    60   ~ 0
Seuil
Text Label 2400 3350 2    60   ~ 0
Tens_batt
$Comp
L +12V #PWR014
U 1 1 4F427D3E
P 1950 2750
F 0 "#PWR014" H 1950 2700 20  0001 C CNN
F 1 "+12V" H 1950 2850 30  0000 C CNN
	1    1950 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 4F427C88
P 3500 1850
F 0 "#PWR015" H 3500 1850 30  0001 C CNN
F 1 "GND" H 3500 1780 30  0001 C CNN
	1    3500 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 4F427BAE
P 3300 6250
F 0 "#PWR016" H 3300 6250 30  0001 C CNN
F 1 "GND" H 3300 6180 30  0001 C CNN
	1    3300 6250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 4F427BA8
P 5400 6250
F 0 "#PWR017" H 5400 6250 30  0001 C CNN
F 1 "GND" H 5400 6180 30  0001 C CNN
	1    5400 6250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 4F4279F1
P 2050 1550
F 0 "#PWR018" H 2050 1550 30  0001 C CNN
F 1 "GND" H 2050 1480 30  0001 C CNN
	1    2050 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 4F4279DA
P 3300 3750
F 0 "#PWR019" H 3300 3750 30  0001 C CNN
F 1 "GND" H 3300 3680 30  0001 C CNN
	1    3300 3750
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 4F42795F
P 3500 1500
F 0 "RV1" H 3500 1400 50  0000 C CNN
F 1 "V-" H 3500 1500 50  0000 C CNN
	1    3500 1500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR020
U 1 1 4F42792E
P 1950 4050
F 0 "#PWR020" H 1950 4050 30  0001 C CNN
F 1 "GND" H 1950 3980 30  0001 C CNN
	1    1950 4050
	1    0    0    -1  
$EndComp
$Comp
L MEZZA-10 MEZZA1
U 1 1 4F426D8A
P 2650 5750
F 0 "MEZZA1" H 2650 6300 70  0000 C CNN
F 1 "MEZZA-10" H 2650 5150 70  0000 C CNN
	1    2650 5750
	1    0    0    -1  
$EndComp
$Comp
L MEZZA-10 MEZZA2
U 1 1 4F426D6B
P 4750 5750
F 0 "MEZZA2" H 4750 6300 70  0000 C CNN
F 1 "MEZZA-10" H 4750 5150 70  0000 C CNN
	1    4750 5750
	1    0    0    -1  
$EndComp
$Comp
L FUSE F1
U 1 1 4F426CF4
P 2250 1250
F 0 "F1" H 2350 1300 40  0000 C CNN
F 1 "FUSE" H 2150 1200 40  0000 C CNN
	1    2250 1250
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 4F426C72
P 1950 3700
F 0 "R2" V 2030 3700 50  0000 C CNN
F 1 "4k" V 1950 3700 50  0000 C CNN
	1    1950 3700
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 4F426C66
P 1950 3050
F 0 "R1" V 2030 3050 50  0000 C CNN
F 1 "5.6k" V 1950 3050 50  0000 C CNN
	1    1950 3050
	-1   0    0    1   
$EndComp
$Comp
L CP C2
U 1 1 4F426C2F
P 3500 3450
F 0 "C2" H 3550 3550 50  0000 L CNN
F 1 "1000u" H 3550 3350 50  0000 L CNN
	1    3500 3450
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 4F426C2A
P 3100 3450
F 0 "C1" H 3150 3550 50  0000 L CNN
F 1 "1000u" H 3150 3350 50  0000 L CNN
	1    3100 3450
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P2
U 1 1 4F426BBA
P 1600 1350
F 0 "P2" V 1550 1350 40  0000 C CNN
F 1 "Alim" V 1650 1350 40  0000 C CNN
	1    1600 1350
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
