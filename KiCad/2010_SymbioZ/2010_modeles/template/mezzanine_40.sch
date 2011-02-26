EESchema Schematic File Version 2  date 09/05/2010 15:30:36
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
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "Template carte mezzanine 28"
Date "9 may 2010"
Rev "1.1"
Comp "EPSA - SymbioZ"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 4600 1400 0    60   ~ 0
RA0
Text Label 4600 1500 0    60   ~ 0
RA1
Text Label 4600 1600 0    60   ~ 0
RA2
Text Label 4600 1700 0    60   ~ 0
RA3
Text Label 4600 1800 0    60   ~ 0
RA4
Text Label 4600 1900 0    60   ~ 0
RA5
Text Label 4600 2100 0    60   ~ 0
RC0
Text Label 3100 2100 0    60   ~ 0
RC1
Text Label 3100 2000 0    60   ~ 0
RC2
Text Label 3100 1900 0    60   ~ 0
RC3
Text Label 2650 1400 0    60   ~ 0
RD0
Text Notes 2450 1050 0    60   ~ 0
module de connexion 
Text Label 2650 1500 0    60   ~ 0
RD1
Wire Wire Line
	4850 1400 4550 1400
Wire Wire Line
	4850 1600 4550 1600
Wire Wire Line
	4850 1700 4550 1700
Wire Wire Line
	4550 1800 4850 1800
Wire Wire Line
	4550 1900 4850 1900
Wire Wire Line
	3350 2000 3050 2000
Wire Wire Line
	3350 1800 3050 1800
Wire Wire Line
	3350 1700 3050 1700
Wire Notes Line
	1050 950  1050 2350
Wire Wire Line
	4850 1500 4550 1500
$Comp
L HE10-16 HE2
U 1 1 4BE6B7CA
P 3950 1750
F 0 "HE2" H 3950 2200 70  0000 C CNN
F 1 "HE10-16" H 3950 1300 70  0000 C CNN
	1    3950 1750
	1    0    0    -1  
$EndComp
Text Label 1150 2100 0    60   ~ 0
RE0
Text Label 1150 2000 0    60   ~ 0
RE1
Text Label 4600 2000 0    60   ~ 0
RE2
Wire Wire Line
	4850 2000 4550 2000
Wire Wire Line
	3350 2100 3050 2100
Wire Wire Line
	4850 2100 4550 2100
Text Label 2650 1600 0    60   ~ 0
RD2
Text Label 2650 1700 0    60   ~ 0
RD3
Text Label 3100 1700 0    60   ~ 0
RC4
Text Label 3100 1800 0    60   ~ 0
RC5
Text Label 2650 1800 0    60   ~ 0
RD4
Text Label 2650 1900 0    60   ~ 0
RD5
Text Label 1150 1800 0    60   ~ 0
RB1
Text Label 1150 1700 0    60   ~ 0
RB4
Wire Wire Line
	2600 1600 2900 1600
Wire Wire Line
	2600 1800 2900 1800
Wire Wire Line
	2600 1900 2900 1900
Wire Wire Line
	2900 2000 2600 2000
Wire Wire Line
	2900 2100 2600 2100
Wire Wire Line
	1100 1800 1400 1800
Wire Wire Line
	1100 1700 1400 1700
Wire Wire Line
	2600 1700 2900 1700
$Comp
L HE10-16 HE1
U 1 1 4BE6B7C9
P 2000 1750
F 0 "HE1" H 2000 2200 70  0000 C CNN
F 1 "HE10-16" H 2000 1300 70  0000 C CNN
	1    2000 1750
	1    0    0    -1  
$EndComp
Text Label 2650 2000 0    60   ~ 0
RD6
Text Label 2650 2100 0    60   ~ 0
RD7
Text Label 1150 1900 0    60   ~ 0
RB0
Wire Wire Line
	1100 2100 1400 2100
Wire Wire Line
	1100 1900 1400 1900
Wire Wire Line
	1100 2000 1400 2000
Wire Wire Line
	2600 1400 2900 1400
Wire Wire Line
	2600 1500 2900 1500
Wire Notes Line
	4950 950  1050 950 
Wire Notes Line
	4950 2350 4950 950 
Wire Notes Line
	4950 2350 1050 2350
$Comp
L +12V #PWR?
U 1 1 4BE6B7C8
P 3250 1400
F 0 "#PWR?" H 3250 1350 20  0001 C CNN
F 1 "+12V" H 3250 1500 30  0000 C CNN
	1    3250 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4BE6B7C7
P 3100 1550
F 0 "#PWR?" H 3100 1550 30  0001 C CNN
F 1 "GND" H 3100 1480 30  0001 C CNN
	1    3100 1550
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR?
U 1 1 4BE6B7C6
P 3150 1500
F 0 "#PWR?" H 3150 1600 30  0001 C CNN
F 1 "VCC" H 3150 1600 30  0000 C CNN
	1    3150 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1400 3350 1400
Wire Wire Line
	3350 1900 3050 1900
Wire Wire Line
	3350 1500 3150 1500
Wire Wire Line
	3350 1550 3100 1550
Wire Wire Line
	3350 1600 3350 1550
$Comp
L +12V #PWR?
U 1 1 4BE6B7C5
P 1300 1400
F 0 "#PWR?" H 1300 1350 20  0001 C CNN
F 1 "+12V" H 1300 1500 30  0000 C CNN
	1    1300 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4BE6B7C4
P 1150 1550
F 0 "#PWR?" H 1150 1550 30  0001 C CNN
F 1 "GND" H 1150 1480 30  0001 C CNN
	1    1150 1550
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR?
U 1 1 4BE6B7C3
P 1200 1500
F 0 "#PWR?" H 1200 1600 30  0001 C CNN
F 1 "VCC" H 1200 1600 30  0000 C CNN
	1    1200 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1400 1400 1400
Wire Wire Line
	1400 1500 1200 1500
Wire Wire Line
	1400 1550 1150 1550
Wire Wire Line
	1400 1600 1400 1550
Wire Wire Line
	5950 1500 5950 1550
Connection ~ 6050 1500
Wire Wire Line
	6100 1500 6050 1500
Wire Wire Line
	6050 1500 5950 1500
Wire Wire Line
	6050 1700 6050 1600
Wire Wire Line
	6050 1600 6050 1500
Wire Wire Line
	6050 1500 6050 1400
Wire Wire Line
	6050 1400 6050 1300
Wire Wire Line
	6050 1700 6100 1700
Connection ~ 6050 1600
Wire Wire Line
	6100 1600 6050 1600
Wire Wire Line
	5500 2300 5650 2300
Wire Wire Line
	6050 2300 6100 2300
Wire Wire Line
	6600 2300 6650 2300
Wire Notes Line
	5400 2450 5400 2000
Wire Notes Line
	5400 2450 6750 2450
Wire Notes Line
	6750 2450 6750 2000
Wire Notes Line
	6750 2000 5400 2000
Wire Wire Line
	6050 1400 6100 1400
Connection ~ 6050 1400
Wire Wire Line
	6050 1300 6100 1300
$Comp
L CONN_1 GND4
U 1 1 4BE6ADA0
P 6250 1400
F 0 "GND4" H 6330 1400 40  0000 C CNN
F 1 "Meca" H 6200 1440 30  0001 C CNN
	1    6250 1400
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 GND5
U 1 1 4BE6AD9F
P 6250 1300
F 0 "GND5" H 6330 1300 40  0000 C CNN
F 1 "Meca" H 6200 1340 30  0001 C CNN
	1    6250 1300
	1    0    0    -1  
$EndComp
Text Notes 5700 2100 0    60   ~ 0
témoin alim
$Comp
L GND #PWR5
U 1 1 4BCD89D1
P 6650 2300
F 0 "#PWR5" H 6650 2300 30  0001 C CNN
F 1 "GND" H 6650 2230 30  0001 C CNN
	1    6650 2300
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR8
U 1 1 4BCD89D0
P 5500 2300
F 0 "#PWR8" H 5500 2400 30  0001 C CNN
F 1 "VCC" H 5500 2400 30  0000 C CNN
	1    5500 2300
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4BCD89CF
P 6350 2300
F 0 "R1" V 6430 2300 50  0000 C CNN
F 1 "1k" V 6350 2300 50  0000 C CNN
	1    6350 2300
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 4BCD89CE
P 5850 2300
F 0 "D1" H 5850 2400 50  0000 C CNN
F 1 "RED" H 5850 2200 50  0000 C CNN
	1    5850 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR4
U 1 1 4BCC9127
P 5950 1550
F 0 "#PWR4" H 5950 1550 30  0001 C CNN
F 1 "GND" H 5950 1480 30  0001 C CNN
	1    5950 1550
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 GND3
U 1 1 4BCC9113
P 6250 1500
F 0 "GND3" H 6330 1500 40  0000 C CNN
F 1 "Meca" H 6200 1540 30  0001 C CNN
	1    6250 1500
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 GND2
U 1 1 4BCC910F
P 6250 1600
F 0 "GND2" H 6330 1600 40  0000 C CNN
F 1 "Meca" H 6200 1640 30  0001 C CNN
	1    6250 1600
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 GND1
U 1 1 4BCC90F8
P 6250 1700
F 0 "GND1" H 6330 1700 40  0000 C CNN
F 1 "Meca" H 6200 1740 30  0001 C CNN
	1    6250 1700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
