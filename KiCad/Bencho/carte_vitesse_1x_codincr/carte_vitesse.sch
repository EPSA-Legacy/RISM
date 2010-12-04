EESchema Schematic File Version 2  date 04/12/2010 19:50:32
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
LIBS:carte_vitesse-cache
EELAYER 23  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "Carte vitesse Bencho 1x codeur incrémental"
Date "4 dec 2010"
Rev "1.0"
Comp "EPSA -  Bencho"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 7050 3950 0    60   ~ 0
U_out
Text Label 6700 3050 2    60   ~ 0
U_int
Connection ~ 6100 4200
Wire Wire Line
	6100 4200 6150 4200
Connection ~ 7800 3150
Wire Wire Line
	7800 3100 7800 3150
Connection ~ 7800 3550
Wire Wire Line
	7800 3550 7800 3600
Wire Wire Line
	7750 2750 7900 2750
Wire Wire Line
	5400 4550 5400 4650
Wire Wire Line
	3350 3600 2950 3600
Wire Wire Line
	4550 4300 4550 3050
Wire Wire Line
	6350 4550 6750 4550
Wire Wire Line
	6200 3600 6200 3650
Wire Wire Line
	7000 3600 7000 3550
Wire Wire Line
	5550 3600 5550 3550
Wire Notes Line
	8950 2500 2150 2500
Wire Notes Line
	8950 4950 2150 4950
Wire Notes Line
	8950 4950 8950 2500
Wire Wire Line
	6000 4250 4650 4250
Wire Wire Line
	6000 4250 6000 3050
Connection ~ 5250 3050
Wire Wire Line
	5250 3200 5250 3050
Wire Wire Line
	4550 3050 5600 3050
Wire Wire Line
	6700 3200 6700 3050
Wire Wire Line
	6700 3050 6000 3050
Connection ~ 5400 4550
Wire Wire Line
	3250 3800 2950 3800
Wire Notes Line
	2150 4950 2150 2500
Wire Wire Line
	6500 3150 6100 3150
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
	4100 3900 3700 3900
Wire Wire Line
	4100 3500 3700 3500
Connection ~ 3900 3500
Wire Wire Line
	3900 3300 3900 3500
Connection ~ 3900 3900
Wire Wire Line
	3900 4100 3900 3900
Wire Wire Line
	6100 3150 6100 4400
Wire Wire Line
	4700 4550 5850 4550
Wire Wire Line
	8700 4750 8750 4750
Wire Wire Line
	8150 4750 8200 4750
Wire Wire Line
	7600 4750 7750 4750
Wire Wire Line
	7600 4350 7750 4350
Wire Wire Line
	8150 4350 8200 4350
Wire Wire Line
	8700 4350 8750 4350
Wire Wire Line
	7750 3550 7900 3550
Wire Wire Line
	7750 3150 7900 3150
Wire Wire Line
	6600 4200 7050 4200
Wire Wire Line
	7800 2700 7800 2750
Connection ~ 7800 2750
Wire Wire Line
	7450 3950 7050 3950
Wire Wire Line
	7050 3950 7050 4200
$Comp
L CONN_1 P?
U 1 1 4CFA8CB2
P 6300 4200
F 0 "P?" H 6380 4200 40  0000 L CNN
F 1 "U_seuil" H 6300 4255 30  0001 C CNN
	1    6300 4200
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P?
U 1 1 4CFA8CA9
P 6000 2900
F 0 "P?" H 6080 2900 40  0000 L CNN
F 1 "U_int" H 6000 2955 30  0001 C CNN
	1    6000 2900
	0    -1   -1   0   
$EndComp
$Comp
L CONN_1 P?
U 1 1 4CFA8C92
P 4550 2900
F 0 "P?" H 4630 2900 40  0000 L CNN
F 1 "U_in" H 4550 2955 30  0001 C CNN
	1    4550 2900
	0    -1   -1   0   
$EndComp
$Comp
L PWR_FLAG #FLG01
U 1 1 4CFA8C13
P 7900 3550
F 0 "#FLG01" H 7900 3820 30  0001 C CNN
F 1 "PWR_FLAG" H 7900 3780 30  0000 C CNN
	1    7900 3550
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 4CFA8C12
P 7900 3150
F 0 "#FLG02" H 7900 3420 30  0001 C CNN
F 1 "PWR_FLAG" H 7900 3380 30  0000 C CNN
	1    7900 3150
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 4CFA8C0A
P 7900 2750
F 0 "#FLG03" H 7900 3020 30  0001 C CNN
F 1 "PWR_FLAG" H 7900 2980 30  0000 C CNN
	1    7900 2750
	0    1    1    0   
$EndComp
$Comp
L CONN_1 P6
U 1 1 4CFA8ADE
P 7600 3950
F 0 "P6" H 7680 3950 40  0000 L CNN
F 1 "U_out" H 7600 4005 30  0001 C CNN
	1    7600 3950
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 4CFA8B0F
P 7800 3100
F 0 "#PWR04" H 7800 3200 30  0001 C CNN
F 1 "VCC" H 7800 3200 30  0000 C CNN
	1    7800 3100
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR05
U 1 1 4CFA8B07
P 7800 2700
F 0 "#PWR05" H 7800 2800 30  0001 C CNN
F 1 "VDD" H 7800 2810 30  0000 C CNN
	1    7800 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 4CFA8AEE
P 7800 3600
F 0 "#PWR06" H 7800 3600 30  0001 C CNN
F 1 "GND" H 7800 3530 30  0001 C CNN
	1    7800 3600
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P5
U 1 1 4CFA8ADC
P 7600 3150
F 0 "P5" H 7680 3150 40  0000 L CNN
F 1 "VCC" H 7600 3205 30  0001 C CNN
	1    7600 3150
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 P4
U 1 1 4CFA8AD7
P 7600 2750
F 0 "P4" H 7680 2750 40  0000 L CNN
F 1 "VDD" H 7600 2805 30  0001 C CNN
	1    7600 2750
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 P3
U 1 1 4CFA8AC4
P 7600 3550
F 0 "P3" H 7680 3550 40  0000 L CNN
F 1 "GND" H 7600 3605 30  0001 C CNN
	1    7600 3550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR07
U 1 1 4CFA8AA6
P 5400 4650
F 0 "#PWR07" H 5400 4650 30  0001 C CNN
F 1 "GND" H 5400 4580 30  0001 C CNN
	1    5400 4650
	1    0    0    -1  
$EndComp
NoConn ~ 4550 4800
$Comp
L VDD #PWR08
U 1 1 4CFA8A15
P 7600 4350
F 0 "#PWR08" H 7600 4450 30  0001 C CNN
F 1 "VDD" H 7600 4460 30  0000 C CNN
	1    7600 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 4CFA8A10
P 8750 4350
F 0 "#PWR09" H 8750 4350 30  0001 C CNN
F 1 "GND" H 8750 4280 30  0001 C CNN
	1    8750 4350
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 4CFA8A0E
P 8450 4350
F 0 "R1" V 8530 4350 50  0000 C CNN
F 1 "1k" V 8450 4350 50  0000 C CNN
	1    8450 4350
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 4CFA8A0D
P 7950 4350
F 0 "D1" H 7950 4450 50  0000 C CNN
F 1 "YELLOW" H 7950 4250 50  0000 C CNN
	1    7950 4350
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 4CFA8A09
P 7950 4750
F 0 "D2" H 7950 4850 50  0000 C CNN
F 1 "RED" H 7950 4650 50  0000 C CNN
	1    7950 4750
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 4CFA8A08
P 8450 4750
F 0 "R2" V 8530 4750 50  0000 C CNN
F 1 "1k" V 8450 4750 50  0000 C CNN
	1    8450 4750
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR010
U 1 1 4CFA8A07
P 7600 4750
F 0 "#PWR010" H 7600 4850 30  0001 C CNN
F 1 "VCC" H 7600 4850 30  0000 C CNN
	1    7600 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 4CFA8A06
P 8750 4750
F 0 "#PWR011" H 8750 4750 30  0001 C CNN
F 1 "GND" H 8750 4680 30  0001 C CNN
	1    8750 4750
	0    -1   -1   0   
$EndComp
$Comp
L VDD #PWR012
U 1 1 4CFA870F
P 3250 3800
F 0 "#PWR012" H 3250 3900 30  0001 C CNN
F 1 "VDD" H 3250 3910 30  0000 C CNN
	1    3250 3800
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR013
U 1 1 4CFA86F4
P 3900 3300
F 0 "#PWR013" H 3900 3400 30  0001 C CNN
F 1 "VCC" H 3900 3400 30  0000 C CNN
	1    3900 3300
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
L POT RV1
U 1 1 4CFA84A4
P 4550 4550
F 0 "RV1" H 4550 4450 50  0000 C CNN
F 1 "1k" H 4550 4550 50  0000 C CNN
	1    4550 4550
	0    1    1    0   
$EndComp
$Comp
L POT RV2
U 1 1 4CFA846A
P 6100 4550
F 0 "RV2" H 6100 4450 50  0000 C CNN
F 1 "20k" H 6100 4550 50  0000 C CNN
	1    6100 4550
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
capt_in
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
P 3900 4100
F 0 "#PWR019" H 3900 4100 30  0001 C CNN
F 1 "GND" H 3900 4030 30  0001 C CNN
	1    3900 4100
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 4BC499DB
P 4100 3700
F 0 "C1" H 4150 3800 50  0000 L CNN
F 1 "17p" H 4150 3600 50  0000 L CNN
	1    4100 3700
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 4BC499D7
P 3700 3700
F 0 "C2" H 3750 3800 50  0000 L CNN
F 1 "1u" H 3750 3600 50  0000 L CNN
	1    3700 3700
	1    0    0    -1  
$EndComp
Text Label 3350 3600 2    60   ~ 0
capt_in
$Comp
L CONN_2 P2
U 1 1 4BC49510
P 2600 3700
F 0 "P2" V 2550 3700 40  0000 C CNN
F 1 "CAPT" V 2650 3700 40  0000 C CNN
	1    2600 3700
	-1   0    0    1   
$EndComp
$EndSCHEMATC
