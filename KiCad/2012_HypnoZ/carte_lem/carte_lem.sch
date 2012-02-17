EESchema Schematic File Version 2  date 18/02/2012 00:01:54
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
LIBS:carte_lem-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title "Carte mesure tension"
Date "17 feb 2012"
Rev "1.0"
Comp "EPSA - HypnoZ"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5000 6300 4300 6300
Wire Wire Line
	5000 5650 4300 5650
Wire Wire Line
	5000 5000 4300 5000
Wire Wire Line
	5000 4350 4300 4350
Wire Notes Line
	6200 6650 2400 6650
Wire Notes Line
	6200 6650 6200 3500
Wire Notes Line
	6200 3500 2400 3500
Wire Wire Line
	4650 1750 3800 1750
Connection ~ 4050 1750
Wire Wire Line
	3500 1900 3800 1900
Wire Wire Line
	3800 1900 3800 1750
Connection ~ 4450 2250
Wire Wire Line
	4450 2200 4450 2250
Wire Wire Line
	4700 2250 3800 2250
Wire Wire Line
	3800 2100 3800 2250
Wire Wire Line
	3500 2100 3800 2100
Wire Notes Line
	2700 3300 2700 1200
Connection ~ 3650 1900
Wire Wire Line
	3650 1850 3650 1900
Wire Wire Line
	3600 5550 3050 5550
Wire Wire Line
	3600 5450 3550 5450
Wire Wire Line
	3600 5650 3550 5650
Wire Wire Line
	4300 5450 4400 5450
Wire Wire Line
	4300 6100 4400 6100
Wire Wire Line
	3600 6300 3550 6300
Wire Wire Line
	3600 6100 3550 6100
Wire Wire Line
	3600 6200 3050 6200
Wire Wire Line
	3600 4900 3050 4900
Wire Wire Line
	3600 4800 3500 4800
Wire Wire Line
	3600 5000 3500 5000
Wire Wire Line
	4300 4800 4400 4800
Wire Wire Line
	4300 4150 4400 4150
Wire Wire Line
	3600 4350 3500 4350
Wire Wire Line
	3500 3050 3800 3050
Wire Wire Line
	3500 2850 3800 2850
Wire Wire Line
	3500 2750 3800 2750
Wire Wire Line
	3500 2950 3800 2950
Wire Wire Line
	3600 4150 3500 4150
Wire Wire Line
	3600 4250 3050 4250
Wire Wire Line
	3650 2150 3650 2100
Connection ~ 3650 2100
Wire Notes Line
	2400 3500 2400 6650
Wire Wire Line
	4050 2200 4050 2250
Connection ~ 4050 2250
Wire Wire Line
	4050 1800 4050 1750
Wire Wire Line
	4450 1750 4450 1800
Connection ~ 4450 1750
Wire Notes Line
	2700 3300 5000 3300
Wire Notes Line
	5000 3300 5000 1200
Wire Notes Line
	5000 1200 2700 1200
Wire Wire Line
	5000 4150 4900 4150
Wire Wire Line
	4900 4800 5000 4800
Wire Wire Line
	4900 5450 5000 5450
Wire Wire Line
	4900 6100 5000 6100
$Comp
L C C2
U 1 1 4F159478
P 4450 2000
F 0 "C2" H 4500 2100 50  0000 L CNN
F 1 "27p" H 4500 1900 50  0000 L CNN
	1    4450 2000
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C1
U 1 1 4F15946B
P 4050 2000
F 0 "C1" H 4100 2100 50  0000 L CNN
F 1 "1000u" H 4100 1900 50  0000 L CNN
	1    4050 2000
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P1
U 1 1 4F159438
P 3150 2000
F 0 "P1" V 3100 2000 40  0000 C CNN
F 1 "ALIM" V 3200 2000 40  0000 C CNN
	1    3150 2000
	-1   0    0    -1  
$EndComp
Text Notes 9150 950  0    60   ~ 0
0 250\n
Text Notes 2800 1350 0    60   ~ 0
Connexions carte interface
Text Notes 2700 3700 0    60   ~ 0
Mesure tensions
Text Notes 8200 950  0    60   ~ 0
Résistances X W\n
$Comp
L PWR_FLAG #FLG01
U 1 1 4EDE4348
P 3650 2150
F 0 "#FLG01" H 3650 2420 30  0001 C CNN
F 1 "PWR_FLAG" H 3650 2380 30  0000 C CNN
	1    3650 2150
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 4EDE4343
P 3650 1850
F 0 "#FLG02" H 3650 2120 30  0001 C CNN
F 1 "PWR_FLAG" H 3650 2080 30  0000 C CNN
	1    3650 1850
	1    0    0    -1  
$EndComp
$Comp
L LEM U3
U 1 1 4EDE419D
P 3950 5550
F 0 "U3" H 3950 5300 60  0000 C CNN
F 1 "LEM" H 3950 5800 60  0000 C CNN
	1    3950 5550
	1    0    0    -1  
$EndComp
$Comp
L VAA #PWR03
U 1 1 4EDE419C
P 3550 5450
F 0 "#PWR03" H 3550 5510 30  0001 C CNN
F 1 "VAA" H 3550 5560 30  0000 C CNN
	1    3550 5450
	0    -1   -1   0   
$EndComp
$Comp
L -VAA #PWR04
U 1 1 4EDE419B
P 3550 5650
F 0 "#PWR04" H 3550 5750 20  0001 C CNN
F 1 "-VAA" H 3550 5750 30  0000 C CNN
	1    3550 5650
	0    -1   -1   0   
$EndComp
Text Label 3050 5550 0    60   ~ 0
Uconv
$Comp
L R R3
U 1 1 4EDE419A
P 4650 5450
F 0 "R3" V 4730 5450 50  0000 C CNN
F 1 "27k" V 4650 5450 50  0000 C CNN
	1    4650 5450
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P5
U 1 1 4EDE4199
P 5350 5550
F 0 "P5" V 5300 5550 40  0000 C CNN
F 1 "Conv" V 5400 5550 40  0000 C CNN
	1    5350 5550
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P6
U 1 1 4EDE4198
P 5350 6200
F 0 "P6" V 5300 6200 40  0000 C CNN
F 1 "SC" V 5400 6200 40  0000 C CNN
	1    5350 6200
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 4EDE4197
P 4650 6100
F 0 "R4" V 4730 6100 50  0000 C CNN
F 1 "27k" V 4650 6100 50  0000 C CNN
	1    4650 6100
	0    1    1    0   
$EndComp
Text Label 3050 6200 0    60   ~ 0
Usc
$Comp
L -VAA #PWR05
U 1 1 4EDE4196
P 3550 6300
F 0 "#PWR05" H 3550 6400 20  0001 C CNN
F 1 "-VAA" H 3550 6400 30  0000 C CNN
	1    3550 6300
	0    -1   -1   0   
$EndComp
$Comp
L VAA #PWR06
U 1 1 4EDE4195
P 3550 6100
F 0 "#PWR06" H 3550 6160 30  0001 C CNN
F 1 "VAA" H 3550 6210 30  0000 C CNN
	1    3550 6100
	0    -1   -1   0   
$EndComp
$Comp
L LEM U4
U 1 1 4EDE4194
P 3950 6200
F 0 "U4" H 3950 5950 60  0000 C CNN
F 1 "LEM" H 3950 6450 60  0000 C CNN
	1    3950 6200
	1    0    0    -1  
$EndComp
$Comp
L LEM U2
U 1 1 4EDE416B
P 3950 4900
F 0 "U2" H 3950 4650 60  0000 C CNN
F 1 "LEM" H 3950 5150 60  0000 C CNN
	1    3950 4900
	1    0    0    -1  
$EndComp
$Comp
L VAA #PWR07
U 1 1 4EDE416A
P 3500 4800
F 0 "#PWR07" H 3500 4860 30  0001 C CNN
F 1 "VAA" H 3500 4910 30  0000 C CNN
	1    3500 4800
	0    -1   -1   0   
$EndComp
$Comp
L -VAA #PWR08
U 1 1 4EDE4169
P 3500 5000
F 0 "#PWR08" H 3500 5100 20  0001 C CNN
F 1 "-VAA" H 3500 5100 30  0000 C CNN
	1    3500 5000
	0    -1   -1   0   
$EndComp
Text Label 3050 4900 0    60   ~ 0
Umot2
$Comp
L R R2
U 1 1 4EDE4168
P 4650 4800
F 0 "R2" V 4730 4800 50  0000 C CNN
F 1 "12k" V 4650 4800 50  0000 C CNN
	1    4650 4800
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P4
U 1 1 4EDE4167
P 5350 4900
F 0 "P4" V 5300 4900 40  0000 C CNN
F 1 "Mot2" V 5400 4900 40  0000 C CNN
	1    5350 4900
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P3
U 1 1 4EDE414E
P 5350 4250
F 0 "P3" V 5300 4250 40  0000 C CNN
F 1 "Mot1" V 5400 4250 40  0000 C CNN
	1    5350 4250
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4EDE411F
P 4650 4150
F 0 "R1" V 4730 4150 50  0000 C CNN
F 1 "12k" V 4650 4150 50  0000 C CNN
	1    4650 4150
	0    1    1    0   
$EndComp
Text Label 3050 4250 0    60   ~ 0
Umot1
$Comp
L -VAA #PWR09
U 1 1 4EDE4101
P 3500 4350
F 0 "#PWR09" H 3500 4450 20  0001 C CNN
F 1 "-VAA" H 3500 4450 30  0000 C CNN
	1    3500 4350
	0    -1   -1   0   
$EndComp
$Comp
L VAA #PWR010
U 1 1 4EDE40FD
P 3500 4150
F 0 "#PWR010" H 3500 4210 30  0001 C CNN
F 1 "VAA" H 3500 4260 30  0000 C CNN
	1    3500 4150
	0    -1   -1   0   
$EndComp
Text Label 3800 3050 2    60   ~ 0
Usc
Text Label 3800 2950 2    60   ~ 0
Uconv
Text Label 3800 2850 2    60   ~ 0
Umot2
Text Label 3800 2750 2    60   ~ 0
Umot1
$Comp
L -VAA #PWR011
U 1 1 4EDE403B
P 4700 2250
F 0 "#PWR011" H 4700 2350 20  0001 C CNN
F 1 "-VAA" H 4700 2350 30  0000 C CNN
	1    4700 2250
	0    1    1    0   
$EndComp
$Comp
L VAA #PWR012
U 1 1 4EDE4030
P 4650 1750
F 0 "#PWR012" H 4650 1810 30  0001 C CNN
F 1 "VAA" H 4650 1860 30  0000 C CNN
	1    4650 1750
	0    1    1    0   
$EndComp
$Comp
L CONN_4 P2
U 1 1 4EDE3FAA
P 3150 2900
F 0 "P2" V 3100 2900 50  0000 C CNN
F 1 "Mesures" V 3200 2900 50  0000 C CNN
	1    3150 2900
	-1   0    0    -1  
$EndComp
$Comp
L LEM U1
U 1 1 4EDE3F77
P 3950 4250
F 0 "U1" H 3950 4000 60  0000 C CNN
F 1 "LEM" H 3950 4500 60  0000 C CNN
	1    3950 4250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
