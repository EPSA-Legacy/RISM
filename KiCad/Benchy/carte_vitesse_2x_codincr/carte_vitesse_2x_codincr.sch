EESchema Schematic File Version 2  date 08/02/2011 18:10:57
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
LIBS:carte_vitesse_2x_codincr-cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "Carte vitesse Bencho 1x codeur incrémental"
Date "8 feb 2011"
Rev "1.0"
Comp "EPSA -  Bencho"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2550 5150 2950 5150
Wire Wire Line
	2850 5350 2550 5350
Wire Wire Line
	2850 6150 2550 6150
Wire Wire Line
	2950 5950 2550 5950
Connection ~ 6100 2700
Wire Wire Line
	6200 2700 6000 2700
Connection ~ 5400 2700
Wire Wire Line
	5500 2700 4550 2700
Wire Wire Line
	4550 2050 4550 1200
Wire Wire Line
	7050 2100 7050 2350
Wire Wire Line
	7050 2100 7450 2100
Wire Wire Line
	7050 2350 6600 2350
Wire Wire Line
	3750 2400 3750 2200
Connection ~ 3750 2200
Wire Wire Line
	3750 1600 3750 1800
Connection ~ 3750 1800
Wire Wire Line
	3950 1800 3550 1800
Wire Wire Line
	3950 2200 3550 2200
Wire Wire Line
	4750 1750 4750 1800
Wire Wire Line
	5150 2350 5150 2400
Wire Wire Line
	5050 1350 5050 1300
Wire Wire Line
	5050 1300 4650 1300
Wire Wire Line
	4650 1300 4650 2400
Connection ~ 5150 2400
Wire Wire Line
	6500 1350 6500 1300
Wire Wire Line
	6500 1300 6100 1300
Wire Wire Line
	6700 1200 6000 1200
Wire Wire Line
	6700 1200 6700 1350
Wire Wire Line
	4550 1200 5600 1200
Wire Wire Line
	5250 1350 5250 1200
Connection ~ 5250 1200
Wire Wire Line
	6000 1200 6000 2400
Wire Wire Line
	6000 2400 4650 2400
Wire Wire Line
	5550 1750 5550 1700
Wire Wire Line
	7000 1750 7000 1700
Wire Wire Line
	6200 1750 6200 1800
Wire Wire Line
	5400 2800 5400 2700
Wire Wire Line
	4550 2700 4550 2550
Wire Wire Line
	6100 1300 6100 2700
Wire Wire Line
	6700 2700 6750 2700
Wire Wire Line
	6700 4550 6750 4550
Wire Wire Line
	6100 4550 6100 3150
Wire Wire Line
	4550 4400 4550 4550
Wire Wire Line
	5400 4550 5400 4650
Wire Wire Line
	2950 6350 2550 6350
Wire Wire Line
	6200 3600 6200 3650
Wire Wire Line
	7000 3600 7000 3550
Wire Wire Line
	5550 3600 5550 3550
Wire Wire Line
	6000 4250 4650 4250
Wire Wire Line
	6000 4250 6000 3050
Connection ~ 5250 3050
Wire Wire Line
	5250 3200 5250 3050
Wire Wire Line
	5600 3050 4550 3050
Wire Wire Line
	6700 3200 6700 3050
Wire Wire Line
	6700 3050 6000 3050
Wire Wire Line
	2850 6550 2550 6550
Wire Wire Line
	6100 3150 6500 3150
Wire Wire Line
	6500 3150 6500 3200
Connection ~ 5150 4250
Wire Wire Line
	4650 4250 4650 3150
Wire Wire Line
	4650 3150 5050 3150
Wire Wire Line
	5050 3150 5050 3200
Wire Wire Line
	5150 4200 5150 4250
Wire Wire Line
	4750 3600 4750 3650
Wire Wire Line
	3550 4050 3950 4050
Wire Wire Line
	3550 3650 3950 3650
Connection ~ 3750 3650
Wire Wire Line
	3750 3450 3750 3650
Connection ~ 3750 4050
Wire Wire Line
	3750 4250 3750 4050
Wire Wire Line
	7050 6250 7100 6250
Wire Wire Line
	6500 6250 6550 6250
Wire Wire Line
	5950 6250 6100 6250
Wire Wire Line
	5950 5850 6100 5850
Wire Wire Line
	6500 5850 6550 5850
Wire Wire Line
	7050 5850 7100 5850
Wire Wire Line
	6600 4200 7050 4200
Wire Wire Line
	7450 3950 7050 3950
Wire Wire Line
	7050 3950 7050 4200
Wire Wire Line
	4550 3050 4550 3900
Wire Wire Line
	4550 4550 5500 4550
Connection ~ 5400 4550
Wire Wire Line
	6000 4550 6200 4550
Connection ~ 6100 4550
Wire Wire Line
	2550 5750 2850 5750
Wire Wire Line
	2550 5550 2950 5550
Text Label 2950 5550 2    60   ~ 0
U2_out
Text Label 2950 5150 2    60   ~ 0
U1_out
$Comp
L GND #PWR?
U 1 1 4D517587
P 2850 5350
F 0 "#PWR?" H 2850 5350 30  0001 C CNN
F 1 "GND" H 2850 5280 30  0001 C CNN
	1    2850 5350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 4D517506
P 2850 5750
F 0 "#PWR?" H 2850 5750 30  0001 C CNN
F 1 "GND" H 2850 5680 30  0001 C CNN
	1    2850 5750
	0    -1   -1   0   
$EndComp
$Comp
L CONN_2 P?
U 1 1 4D5174FC
P 2200 5250
F 0 "P?" V 2150 5250 40  0000 C CNN
F 1 "CAPT" V 2250 5250 40  0000 C CNN
	1    2200 5250
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P?
U 1 1 4D5174F2
P 2200 5650
F 0 "P?" V 2150 5650 40  0000 C CNN
F 1 "CAPT" V 2250 5650 40  0000 C CNN
	1    2200 5650
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P?
U 1 1 4D516B6C
P 2200 6050
F 0 "P?" V 2150 6050 40  0000 C CNN
F 1 "CAPT" V 2250 6050 40  0000 C CNN
	1    2200 6050
	-1   0    0    1   
$EndComp
Text Label 2950 5950 2    60   ~ 0
capt1_in
$Comp
L VDD #PWR?
U 1 1 4D516B6B
P 2850 6150
F 0 "#PWR?" H 2850 6250 30  0001 C CNN
F 1 "VDD" H 2850 6260 30  0000 C CNN
	1    2850 6150
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 4D51649D
P 3550 2000
F 0 "C?" H 3600 2100 50  0000 L CNN
F 1 "1u" H 3600 1900 50  0000 L CNN
	1    3550 2000
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4D51649C
P 3950 2000
F 0 "C?" H 4000 2100 50  0000 L CNN
F 1 "17p" H 4000 1900 50  0000 L CNN
	1    3950 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4D51649B
P 3750 2400
F 0 "#PWR?" H 3750 2400 30  0001 C CNN
F 1 "GND" H 3750 2330 30  0001 C CNN
	1    3750 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4D51649A
P 4750 1800
F 0 "#PWR?" H 4750 1800 30  0001 C CNN
F 1 "GND" H 4750 1730 30  0001 C CNN
	1    4750 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4D516499
P 6200 1800
F 0 "#PWR?" H 6200 1800 30  0001 C CNN
F 1 "GND" H 6200 1730 30  0001 C CNN
	1    6200 1800
	1    0    0    -1  
$EndComp
Text Label 5600 1200 2    60   ~ 0
capt1_in
$Comp
L VCC #PWR?
U 1 1 4D516498
P 6750 2700
F 0 "#PWR?" H 6750 2800 30  0001 C CNN
F 1 "VCC" H 6750 2800 30  0000 C CNN
	1    6750 2700
	0    1    1    0   
$EndComp
$Comp
L TL082 U?
U 1 1 4D516497
P 5150 1850
F 0 "U?" H 5100 2050 60  0000 L CNN
F 1 "TL082" H 5100 1600 60  0000 L CNN
	1    5150 1850
	0    1    1    0   
$EndComp
$Comp
L TL082 U?
U 1 1 4D516496
P 6600 1850
F 0 "U?" H 6550 2050 60  0000 L CNN
F 1 "TL082" H 6550 1600 60  0000 L CNN
	1    6600 1850
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR?
U 1 1 4D516495
P 5550 1700
F 0 "#PWR?" H 5550 1800 30  0001 C CNN
F 1 "VCC" H 5550 1800 30  0000 C CNN
	1    5550 1700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 4D516494
P 7000 1700
F 0 "#PWR?" H 7000 1800 30  0001 C CNN
F 1 "VCC" H 7000 1800 30  0000 C CNN
	1    7000 1700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 4D516493
P 3750 1600
F 0 "#PWR?" H 3750 1700 30  0001 C CNN
F 1 "VCC" H 3750 1700 30  0000 C CNN
	1    3750 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4D516492
P 5400 2800
F 0 "#PWR?" H 5400 2800 30  0001 C CNN
F 1 "GND" H 5400 2730 30  0001 C CNN
	1    5400 2800
	1    0    0    -1  
$EndComp
Text Label 7450 2100 2    60   ~ 0
U1_out
$Comp
L R R?
U 1 1 4D516490
P 4550 2300
F 0 "R?" V 4630 2300 50  0000 C CNN
F 1 "?" V 4550 2300 50  0000 C CNN
	1    4550 2300
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 4D51648F
P 5750 2700
F 0 "R?" V 5830 2700 50  0000 C CNN
F 1 "?" V 5750 2700 50  0000 C CNN
	1    5750 2700
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 4D51648E
P 6450 2700
F 0 "R?" V 6530 2700 50  0000 C CNN
F 1 "?" V 6450 2700 50  0000 C CNN
	1    6450 2700
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 4D515C0E
P 6450 4550
F 0 "R?" V 6530 4550 50  0000 C CNN
F 1 "?" V 6450 4550 50  0000 C CNN
	1    6450 4550
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 4D515BFE
P 5750 4550
F 0 "R?" V 5830 4550 50  0000 C CNN
F 1 "?" V 5750 4550 50  0000 C CNN
	1    5750 4550
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 4D515B9E
P 4550 4150
F 0 "R?" V 4630 4150 50  0000 C CNN
F 1 "?" V 4550 4150 50  0000 C CNN
	1    4550 4150
	-1   0    0    1   
$EndComp
Text Label 7450 3950 2    60   ~ 0
U2_out
$Comp
L GND #PWR07
U 1 1 4CFA8AA6
P 5400 4650
F 0 "#PWR07" H 5400 4650 30  0001 C CNN
F 1 "GND" H 5400 4580 30  0001 C CNN
	1    5400 4650
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR08
U 1 1 4CFA8A15
P 5950 5850
F 0 "#PWR08" H 5950 5950 30  0001 C CNN
F 1 "VDD" H 5950 5960 30  0000 C CNN
	1    5950 5850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 4CFA8A10
P 7100 5850
F 0 "#PWR09" H 7100 5850 30  0001 C CNN
F 1 "GND" H 7100 5780 30  0001 C CNN
	1    7100 5850
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 4CFA8A0E
P 6800 5850
F 0 "R1" V 6880 5850 50  0000 C CNN
F 1 "1k" V 6800 5850 50  0000 C CNN
	1    6800 5850
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 4CFA8A0D
P 6300 5850
F 0 "D1" H 6300 5950 50  0000 C CNN
F 1 "YELLOW" H 6300 5750 50  0000 C CNN
	1    6300 5850
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 4CFA8A09
P 6300 6250
F 0 "D2" H 6300 6350 50  0000 C CNN
F 1 "RED" H 6300 6150 50  0000 C CNN
	1    6300 6250
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 4CFA8A08
P 6800 6250
F 0 "R2" V 6880 6250 50  0000 C CNN
F 1 "1k" V 6800 6250 50  0000 C CNN
	1    6800 6250
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR010
U 1 1 4CFA8A07
P 5950 6250
F 0 "#PWR010" H 5950 6350 30  0001 C CNN
F 1 "VCC" H 5950 6350 30  0000 C CNN
	1    5950 6250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 4CFA8A06
P 7100 6250
F 0 "#PWR011" H 7100 6250 30  0001 C CNN
F 1 "GND" H 7100 6180 30  0001 C CNN
	1    7100 6250
	0    -1   -1   0   
$EndComp
$Comp
L VDD #PWR012
U 1 1 4CFA870F
P 2850 6550
F 0 "#PWR012" H 2850 6650 30  0001 C CNN
F 1 "VDD" H 2850 6660 30  0000 C CNN
	1    2850 6550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR013
U 1 1 4CFA86F4
P 3750 3450
F 0 "#PWR013" H 3750 3550 30  0001 C CNN
F 1 "VCC" H 3750 3550 30  0000 C CNN
	1    3750 3450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR014
U 1 1 4CFA86F2
P 7000 3550
F 0 "#PWR014" H 7000 3650 30  0001 C CNN
F 1 "VCC" H 7000 3650 30  0000 C CNN
	1    7000 3550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR015
U 1 1 4CFA86EC
P 5550 3550
F 0 "#PWR015" H 5550 3650 30  0001 C CNN
F 1 "VCC" H 5550 3650 30  0000 C CNN
	1    5550 3550
	1    0    0    -1  
$EndComp
$Comp
L TL082 U1
U 2 1 4CFA8397
P 6600 3700
F 0 "U1" H 6550 3900 60  0000 L CNN
F 1 "TL082" H 6550 3450 60  0000 L CNN
	2    6600 3700
	0    1    1    0   
$EndComp
$Comp
L TL082 U1
U 1 1 4CFA8390
P 5150 3700
F 0 "U1" H 5100 3900 60  0000 L CNN
F 1 "TL082" H 5100 3450 60  0000 L CNN
	1    5150 3700
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR016
U 1 1 4BC49E1D
P 6750 4550
F 0 "#PWR016" H 6750 4650 30  0001 C CNN
F 1 "VCC" H 6750 4650 30  0000 C CNN
	1    6750 4550
	0    1    1    0   
$EndComp
Text Label 5600 3050 2    60   ~ 0
capt2_in
$Comp
L GND #PWR017
U 1 1 4BC49BF7
P 6200 3650
F 0 "#PWR017" H 6200 3650 30  0001 C CNN
F 1 "GND" H 6200 3580 30  0001 C CNN
	1    6200 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 4BC49A6E
P 4750 3650
F 0 "#PWR018" H 4750 3650 30  0001 C CNN
F 1 "GND" H 4750 3580 30  0001 C CNN
	1    4750 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 4BC49A38
P 3750 4250
F 0 "#PWR019" H 3750 4250 30  0001 C CNN
F 1 "GND" H 3750 4180 30  0001 C CNN
	1    3750 4250
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 4BC499DB
P 3950 3850
F 0 "C1" H 4000 3950 50  0000 L CNN
F 1 "17p" H 4000 3750 50  0000 L CNN
	1    3950 3850
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 4BC499D7
P 3550 3850
F 0 "C2" H 3600 3950 50  0000 L CNN
F 1 "1u" H 3600 3750 50  0000 L CNN
	1    3550 3850
	1    0    0    -1  
$EndComp
Text Label 2950 6350 2    60   ~ 0
capt2_in
$Comp
L CONN_2 P2
U 1 1 4BC49510
P 2200 6450
F 0 "P2" V 2150 6450 40  0000 C CNN
F 1 "CAPT" V 2250 6450 40  0000 C CNN
	1    2200 6450
	-1   0    0    1   
$EndComp
$EndSCHEMATC
