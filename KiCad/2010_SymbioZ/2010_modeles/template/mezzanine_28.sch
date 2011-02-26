EESchema Schematic File Version 2  date 09/05/2010 14:44:32
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
EELAYER 23  0
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
	2750 2350 2750 2450
Wire Wire Line
	4850 2350 4850 2450
Wire Wire Line
	2750 1550 3050 1550
Wire Wire Line
	2750 1750 3050 1750
Wire Wire Line
	5150 1950 4850 1950
Wire Wire Line
	2750 2150 3050 2150
Wire Wire Line
	3750 2350 3650 2350
Wire Wire Line
	1650 2350 1550 2350
Wire Wire Line
	3050 1950 2750 1950
Wire Wire Line
	5150 1750 4850 1750
Wire Wire Line
	5150 1550 4850 1550
Wire Wire Line
	4850 2150 4900 2150
Wire Wire Line
	1300 1550 1650 1550
Wire Wire Line
	1300 1750 1650 1750
Wire Wire Line
	1300 1950 1650 1950
Wire Wire Line
	1300 2150 1650 2150
Wire Wire Line
	3400 1550 3750 1550
Wire Wire Line
	3400 1750 3750 1750
Wire Wire Line
	3400 1950 3750 1950
Wire Wire Line
	3400 2150 3750 2150
Wire Notes Line
	1250 1200 1250 2600
Wire Notes Line
	1250 1200 5200 1200
Wire Notes Line
	5200 1200 5200 2600
Wire Notes Line
	5200 2600 1250 2600
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
$Comp
L VCC #PWR7
U 1 1 3E1D5C75
P 1550 2350
F 0 "#PWR7" H 1550 2450 30  0001 C CNN
F 1 "VCC" H 1550 2450 30  0000 C CNN
	1    1550 2350
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR1
U 1 1 3E1D5C74
P 4900 2150
F 0 "#PWR1" H 4900 2100 20  0001 C CNN
F 1 "+12V" H 4900 2250 30  0000 C CNN
	1    4900 2150
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR6
U 1 1 3E1D5C73
P 3650 2350
F 0 "#PWR6" H 3650 2450 30  0001 C CNN
F 1 "VCC" H 3650 2450 30  0000 C CNN
	1    3650 2350
	0    -1   -1   0   
$EndComp
Text Label 2800 1950 0    60   ~ 0
RB0
Text Label 2800 2150 0    60   ~ 0
RB1
Text Label 4900 1550 0    60   ~ 0
RC4
Text Notes 2600 1300 0    60   ~ 0
module de connexion 
Text Label 3450 2150 0    60   ~ 0
RC3
Text Label 4900 1950 0    60   ~ 0
RB4
Text Label 4900 1750 0    60   ~ 0
RC5
Text Label 3450 1950 0    60   ~ 0
RC2
Text Label 3450 1750 0    60   ~ 0
RC1
Text Label 3450 1550 0    60   ~ 0
RC0
Text Label 2800 1750 0    60   ~ 0
RA5
Text Label 2800 1550 0    60   ~ 0
RA4
Text Label 1350 2150 0    60   ~ 0
RA3
Text Label 1350 1950 0    60   ~ 0
RA2
Text Label 1350 1750 0    60   ~ 0
RA1
Text Label 1350 1550 0    60   ~ 0
RA0
$Comp
L GND #PWR3
U 1 1 3E1D5C72
P 4850 2450
F 0 "#PWR3" H 4850 2450 30  0001 C CNN
F 1 "GND" H 4850 2380 30  0001 C CNN
	1    4850 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 3E1D5C71
P 2750 2450
F 0 "#PWR2" H 2750 2450 30  0001 C CNN
F 1 "GND" H 2750 2380 30  0001 C CNN
	1    2750 2450
	1    0    0    -1  
$EndComp
$Comp
L HE10-10 HE1
U 1 1 3E1D5C70
P 4300 1950
F 0 "HE1" H 4300 2500 70  0000 C CNN
F 1 "HE10-10" H 4300 1350 70  0000 C CNN
	1    4300 1950
	1    0    0    -1  
$EndComp
$Comp
L HE10-10 HE2
U 1 1 3E1D5C6F
P 2200 1950
F 0 "HE2" H 2200 2500 70  0000 C CNN
F 1 "HE10-10" H 2200 1350 70  0000 C CNN
	1    2200 1950
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
