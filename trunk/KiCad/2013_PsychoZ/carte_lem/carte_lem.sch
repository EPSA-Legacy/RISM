EESchema Schematic File Version 2  date 25/09/2012 17:02:59
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
Title "Carte LEM"
Date "25 sep 2012"
Rev "1.0"
Comp "EPSA - PsychoZ"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 4200 2250
Connection ~ 4500 1850
Connection ~ 4000 1850
Wire Bus Line
	2600 6900 2600 3450
Wire Bus Line
	2600 6900 6300 6900
Wire Bus Line
	6300 6900 6300 3450
Wire Bus Line
	6300 3450 2600 3450
Wire Wire Line
	5650 6350 5300 6350
Wire Wire Line
	4350 5550 4800 5550
Wire Wire Line
	5300 4750 5550 4750
Wire Wire Line
	4800 3950 4350 3950
Wire Wire Line
	5650 5350 5650 5650
Wire Wire Line
	5650 5150 5550 5150
Wire Wire Line
	5550 5150 5550 4750
Wire Wire Line
	4550 5050 4550 4950
Wire Wire Line
	4550 4950 4350 4950
Wire Wire Line
	2850 6450 3650 6450
Wire Wire Line
	2850 5650 3650 5650
Wire Wire Line
	3650 4050 2850 4050
Wire Wire Line
	3550 6350 3650 6350
Wire Wire Line
	3550 5550 3650 5550
Wire Wire Line
	3550 4750 3650 4750
Wire Wire Line
	3550 3950 3650 3950
Wire Wire Line
	3750 3050 4200 3050
Wire Wire Line
	3750 2850 4200 2850
Wire Wire Line
	4700 2250 3850 2250
Wire Wire Line
	3850 2250 3850 2150
Wire Wire Line
	3850 2150 3750 2150
Wire Wire Line
	3750 1950 3850 1950
Wire Wire Line
	3850 1950 3850 1850
Wire Wire Line
	4200 2750 3750 2750
Wire Wire Line
	3750 2950 4200 2950
Wire Notes Line
	3050 3200 3050 1350
Wire Notes Line
	3050 3200 5000 3200
Wire Notes Line
	5000 3200 5000 1350
Wire Notes Line
	5000 1350 3050 1350
Wire Wire Line
	3550 4150 3650 4150
Wire Wire Line
	3550 4950 3650 4950
Wire Wire Line
	3550 5750 3650 5750
Wire Wire Line
	3550 6550 3650 6550
Wire Wire Line
	3650 4850 2850 4850
Wire Wire Line
	4500 4300 4500 4150
Wire Wire Line
	4500 4150 4350 4150
Wire Wire Line
	4350 5750 4550 5750
Wire Wire Line
	4550 5750 4550 5850
Wire Wire Line
	5650 5050 5650 3950
Wire Wire Line
	5650 5250 5550 5250
Wire Wire Line
	5550 5250 5550 5550
Wire Wire Line
	5750 5550 5650 5550
Connection ~ 5650 5550
Wire Wire Line
	5650 6550 4350 6550
Wire Wire Line
	5650 3950 5300 3950
Wire Wire Line
	4800 4750 4350 4750
Wire Wire Line
	5550 5550 5300 5550
Wire Wire Line
	4800 6350 4350 6350
Wire Wire Line
	4000 2300 4000 2250
Connection ~ 4000 2250
Wire Wire Line
	3850 1850 4700 1850
Connection ~ 4200 1850
Connection ~ 4500 2250
$Comp
L -VAA #PWR01
U 1 1 5061C659
P 4700 2250
F 0 "#PWR01" H 4700 2350 20  0001 C CNN
F 1 "-VAA" H 4700 2350 30  0000 C CNN
	1    4700 2250
	0    1    1    0   
$EndComp
$Comp
L VAA #PWR02
U 1 1 5061C64E
P 4700 1850
F 0 "#PWR02" H 4700 1910 30  0001 C CNN
F 1 "VAA" H 4700 1960 30  0000 C CNN
	1    4700 1850
	0    1    1    0   
$EndComp
Text Notes 2900 3650 0    60   ~ 0
Mesure tension
$Comp
L R R4
U 1 1 5061BF1C
P 5050 6350
F 0 "R4" V 5130 6350 50  0000 C CNN
F 1 "27k" V 5050 6350 50  0000 C CNN
	1    5050 6350
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 5061BF11
P 5050 5550
F 0 "R3" V 5130 5550 50  0000 C CNN
F 1 "27k" V 5050 5550 50  0000 C CNN
	1    5050 5550
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 5061BF07
P 5050 4750
F 0 "R2" V 5130 4750 50  0000 C CNN
F 1 "12k" V 5050 4750 50  0000 C CNN
	1    5050 4750
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 5061BEF6
P 5050 3950
F 0 "R1" V 5130 3950 50  0000 C CNN
F 1 "12k" V 5050 3950 50  0000 C CNN
	1    5050 3950
	0    -1   -1   0   
$EndComp
$Comp
L CONN_2 P4
U 1 1 5061BE91
P 6000 6450
F 0 "P4" V 5950 6450 40  0000 C CNN
F 1 "SC" V 6050 6450 40  0000 C CNN
	1    6000 6450
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 5061BE3C
P 5750 5550
F 0 "#FLG03" H 5750 5645 30  0001 C CNN
F 1 "PWR_FLAG" H 5750 5730 30  0000 C CNN
	1    5750 5550
	0    1    1    0   
$EndComp
$Comp
L GNDPWR #PWR04
U 1 1 5061BE1A
P 5650 5650
F 0 "#PWR04" H 5650 5700 40  0001 C CNN
F 1 "GNDPWR" H 5650 5570 40  0000 C CNN
	1    5650 5650
	1    0    0    -1  
$EndComp
$Comp
L CONN_4 P3
U 1 1 5061BDDE
P 6000 5200
F 0 "P3" V 5950 5200 50  0000 C CNN
F 1 "TENSIONS" V 6050 5200 50  0000 C CNN
	1    6000 5200
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR05
U 1 1 5061BD9F
P 4550 5850
F 0 "#PWR05" H 4550 5900 40  0001 C CNN
F 1 "GNDPWR" H 4550 5770 40  0000 C CNN
	1    4550 5850
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR06
U 1 1 5061BD8F
P 4550 5050
F 0 "#PWR06" H 4550 5100 40  0001 C CNN
F 1 "GNDPWR" H 4550 4970 40  0000 C CNN
	1    4550 5050
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR07
U 1 1 5061BD83
P 4500 4300
F 0 "#PWR07" H 4500 4350 40  0001 C CNN
F 1 "GNDPWR" H 4500 4220 40  0000 C CNN
	1    4500 4300
	1    0    0    -1  
$EndComp
Text Label 2900 6450 0    60   ~ 0
Usc
Text Label 2900 5650 0    60   ~ 0
Uconv
Text Label 2900 4850 0    60   ~ 0
Umot2
Text Label 2900 4050 0    60   ~ 0
Umot1
$Comp
L -VAA #PWR08
U 1 1 5061BC0D
P 3550 6550
F 0 "#PWR08" H 3550 6650 20  0001 C CNN
F 1 "-VAA" H 3550 6650 30  0000 C CNN
	1    3550 6550
	0    -1   -1   0   
$EndComp
$Comp
L -VAA #PWR09
U 1 1 5061BC06
P 3550 5750
F 0 "#PWR09" H 3550 5850 20  0001 C CNN
F 1 "-VAA" H 3550 5850 30  0000 C CNN
	1    3550 5750
	0    -1   -1   0   
$EndComp
$Comp
L -VAA #PWR010
U 1 1 5061BBFC
P 3550 4950
F 0 "#PWR010" H 3550 5050 20  0001 C CNN
F 1 "-VAA" H 3550 5050 30  0000 C CNN
	1    3550 4950
	0    -1   -1   0   
$EndComp
$Comp
L -VAA #PWR011
U 1 1 5061BBD9
P 3550 4150
F 0 "#PWR011" H 3550 4250 20  0001 C CNN
F 1 "-VAA" H 3550 4250 30  0000 C CNN
	1    3550 4150
	0    -1   -1   0   
$EndComp
$Comp
L VAA #PWR012
U 1 1 5061BBBA
P 3550 6350
F 0 "#PWR012" H 3550 6410 30  0001 C CNN
F 1 "VAA" H 3550 6460 30  0000 C CNN
	1    3550 6350
	0    -1   -1   0   
$EndComp
$Comp
L VAA #PWR013
U 1 1 5061BBB4
P 3550 5550
F 0 "#PWR013" H 3550 5610 30  0001 C CNN
F 1 "VAA" H 3550 5660 30  0000 C CNN
	1    3550 5550
	0    -1   -1   0   
$EndComp
$Comp
L VAA #PWR014
U 1 1 5061BBAB
P 3550 4750
F 0 "#PWR014" H 3550 4810 30  0001 C CNN
F 1 "VAA" H 3550 4860 30  0000 C CNN
	1    3550 4750
	0    -1   -1   0   
$EndComp
$Comp
L VAA #PWR015
U 1 1 5061BB6A
P 3550 3950
F 0 "#PWR015" H 3550 4010 30  0001 C CNN
F 1 "VAA" H 3550 4060 30  0000 C CNN
	1    3550 3950
	0    -1   -1   0   
$EndComp
$Comp
L LEM U4
U 1 1 5061B9A1
P 4000 6450
F 0 "U4" H 4000 6200 60  0000 C CNN
F 1 "LEM" H 4000 6700 60  0000 C CNN
	1    4000 6450
	1    0    0    -1  
$EndComp
$Comp
L LEM U3
U 1 1 5061B99B
P 4000 5650
F 0 "U3" H 4000 5400 60  0000 C CNN
F 1 "LEM" H 4000 5900 60  0000 C CNN
	1    4000 5650
	1    0    0    -1  
$EndComp
$Comp
L LEM U2
U 1 1 5061B997
P 4000 4850
F 0 "U2" H 4000 4600 60  0000 C CNN
F 1 "LEM" H 4000 5100 60  0000 C CNN
	1    4000 4850
	1    0    0    -1  
$EndComp
$Comp
L LEM U1
U 1 1 5061B993
P 4000 4050
F 0 "U1" H 4000 3800 60  0000 C CNN
F 1 "LEM" H 4000 4300 60  0000 C CNN
	1    4000 4050
	1    0    0    -1  
$EndComp
Text Notes 3200 1550 0    60   ~ 0
Connexion carte interface\n
Text Label 3850 3050 0    60   ~ 0
Usc
Text Label 3850 2950 0    60   ~ 0
Uconv
Text Label 3850 2850 0    60   ~ 0
Umot2
Text Label 3850 2750 0    60   ~ 0
Umot1
$Comp
L PWR_FLAG #FLG016
U 1 1 5061B4A4
P 4000 2300
F 0 "#FLG016" H 4000 2395 30  0001 C CNN
F 1 "PWR_FLAG" H 4000 2480 30  0000 C CNN
	1    4000 2300
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG017
U 1 1 5061B49D
P 4000 1850
F 0 "#FLG017" H 4000 1945 30  0001 C CNN
F 1 "PWR_FLAG" H 4000 2030 30  0000 C CNN
	1    4000 1850
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C2
U 1 1 5061B440
P 4500 2050
F 0 "C2" H 4550 2150 50  0000 L CNN
F 1 "1000u" H 4550 1950 50  0000 L CNN
	1    4500 2050
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5061B410
P 4200 2050
F 0 "C1" H 4250 2150 50  0000 L CNN
F 1 "27p" H 4250 1950 50  0000 L CNN
	1    4200 2050
	1    0    0    -1  
$EndComp
$Comp
L CONN_4 P2
U 1 1 5061B3D1
P 3400 2900
F 0 "P2" V 3350 2900 50  0000 C CNN
F 1 "MESURES" V 3450 2900 50  0000 C CNN
	1    3400 2900
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P1
U 1 1 5061B3C7
P 3400 2050
F 0 "P1" V 3350 2050 40  0000 C CNN
F 1 "ALIM" V 3450 2050 40  0000 C CNN
	1    3400 2050
	-1   0    0    1   
$EndComp
$EndSCHEMATC
