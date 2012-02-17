EESchema Schematic File Version 2  date 17/02/2012 19:53:51
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
Title "Carte mesure tension"
Date "17 feb 2012"
Rev "1.0"
Comp "EPSA - HypnoZ"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	6200 6650 2400 6650
Wire Notes Line
	6200 6650 6200 3500
Wire Notes Line
	6200 3500 2400 3500
Wire Wire Line
	5550 4800 5300 4800
Wire Wire Line
	4800 5450 4450 5450
Wire Wire Line
	5300 6100 5550 6100
Wire Wire Line
	5300 4150 5550 4150
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
	3800 2250 3800 2100
Wire Wire Line
	3800 2100 3500 2100
Wire Notes Line
	2700 3300 2700 1200
Connection ~ 3600 1900
Wire Wire Line
	3600 1800 3600 1900
Wire Wire Line
	3150 5550 2600 5550
Wire Wire Line
	3150 5450 3100 5450
Wire Wire Line
	3150 5650 3100 5650
Wire Wire Line
	3850 5450 3950 5450
Wire Wire Line
	3850 5650 5550 5650
Wire Wire Line
	3850 6300 5550 6300
Wire Wire Line
	3850 6100 3950 6100
Wire Wire Line
	3150 6300 3100 6300
Wire Wire Line
	3150 6100 3100 6100
Wire Wire Line
	3150 6200 2600 6200
Wire Wire Line
	3150 4900 2600 4900
Wire Wire Line
	3150 4800 3050 4800
Wire Wire Line
	3150 5000 3050 5000
Wire Wire Line
	3850 4800 3950 4800
Wire Wire Line
	3850 4350 5550 4350
Wire Wire Line
	3850 4150 3950 4150
Wire Wire Line
	3150 4350 3050 4350
Wire Wire Line
	3500 3050 3800 3050
Wire Wire Line
	3500 2850 3800 2850
Wire Wire Line
	3500 2750 3800 2750
Wire Wire Line
	3500 2950 3800 2950
Wire Wire Line
	3150 4150 3050 4150
Wire Wire Line
	3150 4250 2600 4250
Wire Wire Line
	4450 4150 4800 4150
Wire Wire Line
	3650 2250 3650 2100
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
	4800 6100 4450 6100
Wire Wire Line
	5550 5450 5300 5450
Wire Wire Line
	5550 5000 3850 5000
Wire Wire Line
	4800 4800 4450 4800
$Comp
L FUSE F4
U 1 1 4F15951E
P 4200 6100
F 0 "F4" H 4300 6150 40  0000 C CNN
F 1 "100mA" H 4100 6050 40  0000 C CNN
	1    4200 6100
	1    0    0    -1  
$EndComp
$Comp
L FUSE F3
U 1 1 4F15951A
P 4200 5450
F 0 "F3" H 4300 5500 40  0000 C CNN
F 1 "100mA" H 4100 5400 40  0000 C CNN
	1    4200 5450
	1    0    0    -1  
$EndComp
$Comp
L FUSE F2
U 1 1 4F159517
P 4200 4800
F 0 "F2" H 4300 4850 40  0000 C CNN
F 1 "100mA" H 4100 4750 40  0000 C CNN
	1    4200 4800
	1    0    0    -1  
$EndComp
$Comp
L FUSE F1
U 1 1 4F1594EA
P 4200 4150
F 0 "F1" H 4300 4200 40  0000 C CNN
F 1 "100mA" H 4100 4100 40  0000 C CNN
	1    4200 4150
	1    0    0    -1  
$EndComp
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
L CONN_2 P2
U 1 1 4F159438
P 3150 2000
F 0 "P2" V 3100 2000 40  0000 C CNN
F 1 "Conv" V 3200 2000 40  0000 C CNN
	1    3150 2000
	-1   0    0    1   
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
P 3650 2250
F 0 "#FLG01" H 3650 2520 30  0001 C CNN
F 1 "PWR_FLAG" H 3650 2480 30  0000 C CNN
	1    3650 2250
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 4EDE4343
P 3600 1800
F 0 "#FLG02" H 3600 2070 30  0001 C CNN
F 1 "PWR_FLAG" H 3600 2030 30  0000 C CNN
	1    3600 1800
	1    0    0    -1  
$EndComp
$Comp
L LEM U3
U 1 1 4EDE419D
P 3500 5550
F 0 "U3" H 3500 5300 60  0000 C CNN
F 1 "LEM" H 3500 5800 60  0000 C CNN
	1    3500 5550
	1    0    0    -1  
$EndComp
$Comp
L VAA #PWR03
U 1 1 4EDE419C
P 3100 5450
F 0 "#PWR03" H 3100 5510 30  0001 C CNN
F 1 "VAA" H 3100 5560 30  0000 C CNN
	1    3100 5450
	0    -1   -1   0   
$EndComp
$Comp
L -VAA #PWR04
U 1 1 4EDE419B
P 3100 5650
F 0 "#PWR04" H 3100 5750 20  0001 C CNN
F 1 "-VAA" H 3100 5750 30  0000 C CNN
	1    3100 5650
	0    -1   -1   0   
$EndComp
Text Label 2600 5550 0    60   ~ 0
Uconv
$Comp
L R R3
U 1 1 4EDE419A
P 5050 5450
F 0 "R3" V 5130 5450 50  0000 C CNN
F 1 "27k" V 5050 5450 50  0000 C CNN
	1    5050 5450
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P4
U 1 1 4EDE4199
P 5900 5550
F 0 "P4" V 5850 5550 40  0000 C CNN
F 1 "Conv" V 5950 5550 40  0000 C CNN
	1    5900 5550
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P6
U 1 1 4EDE4198
P 5900 6200
F 0 "P6" V 5850 6200 40  0000 C CNN
F 1 "SC" V 5950 6200 40  0000 C CNN
	1    5900 6200
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 4EDE4197
P 5050 6100
F 0 "R4" V 5130 6100 50  0000 C CNN
F 1 "27k" V 5050 6100 50  0000 C CNN
	1    5050 6100
	0    1    1    0   
$EndComp
Text Label 2600 6200 0    60   ~ 0
Usc
$Comp
L -VAA #PWR05
U 1 1 4EDE4196
P 3100 6300
F 0 "#PWR05" H 3100 6400 20  0001 C CNN
F 1 "-VAA" H 3100 6400 30  0000 C CNN
	1    3100 6300
	0    -1   -1   0   
$EndComp
$Comp
L VAA #PWR06
U 1 1 4EDE4195
P 3100 6100
F 0 "#PWR06" H 3100 6160 30  0001 C CNN
F 1 "VAA" H 3100 6210 30  0000 C CNN
	1    3100 6100
	0    -1   -1   0   
$EndComp
$Comp
L LEM U4
U 1 1 4EDE4194
P 3500 6200
F 0 "U4" H 3500 5950 60  0000 C CNN
F 1 "LEM" H 3500 6450 60  0000 C CNN
	1    3500 6200
	1    0    0    -1  
$EndComp
$Comp
L LEM U2
U 1 1 4EDE416B
P 3500 4900
F 0 "U2" H 3500 4650 60  0000 C CNN
F 1 "LEM" H 3500 5150 60  0000 C CNN
	1    3500 4900
	1    0    0    -1  
$EndComp
$Comp
L VAA #PWR07
U 1 1 4EDE416A
P 3050 4800
F 0 "#PWR07" H 3050 4860 30  0001 C CNN
F 1 "VAA" H 3050 4910 30  0000 C CNN
	1    3050 4800
	0    -1   -1   0   
$EndComp
$Comp
L -VAA #PWR08
U 1 1 4EDE4169
P 3050 5000
F 0 "#PWR08" H 3050 5100 20  0001 C CNN
F 1 "-VAA" H 3050 5100 30  0000 C CNN
	1    3050 5000
	0    -1   -1   0   
$EndComp
Text Label 2600 4900 0    60   ~ 0
Umot2
$Comp
L R R2
U 1 1 4EDE4168
P 5050 4800
F 0 "R2" V 5130 4800 50  0000 C CNN
F 1 "12k" V 5050 4800 50  0000 C CNN
	1    5050 4800
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P3
U 1 1 4EDE4167
P 5900 4900
F 0 "P3" V 5850 4900 40  0000 C CNN
F 1 "Mot2" V 5950 4900 40  0000 C CNN
	1    5900 4900
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P1
U 1 1 4EDE414E
P 5900 4250
F 0 "P1" V 5850 4250 40  0000 C CNN
F 1 "Mot1" V 5950 4250 40  0000 C CNN
	1    5900 4250
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4EDE411F
P 5050 4150
F 0 "R1" V 5130 4150 50  0000 C CNN
F 1 "12k" V 5050 4150 50  0000 C CNN
	1    5050 4150
	0    1    1    0   
$EndComp
Text Label 2600 4250 0    60   ~ 0
Umot1
$Comp
L -VAA #PWR09
U 1 1 4EDE4101
P 3050 4350
F 0 "#PWR09" H 3050 4450 20  0001 C CNN
F 1 "-VAA" H 3050 4450 30  0000 C CNN
	1    3050 4350
	0    -1   -1   0   
$EndComp
$Comp
L VAA #PWR010
U 1 1 4EDE40FD
P 3050 4150
F 0 "#PWR010" H 3050 4210 30  0001 C CNN
F 1 "VAA" H 3050 4260 30  0000 C CNN
	1    3050 4150
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
L CONN_4 P5
U 1 1 4EDE3FAA
P 3150 2900
F 0 "P5" V 3100 2900 50  0000 C CNN
F 1 "Mesures" V 3200 2900 50  0000 C CNN
	1    3150 2900
	-1   0    0    -1  
$EndComp
$Comp
L LEM U1
U 1 1 4EDE3F77
P 3500 4250
F 0 "U1" H 3500 4000 60  0000 C CNN
F 1 "LEM" H 3500 4500 60  0000 C CNN
	1    3500 4250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
