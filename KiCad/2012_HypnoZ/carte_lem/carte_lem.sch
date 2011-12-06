EESchema Schematic File Version 2  date 06/12/2011 17:38:50
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
Title ""
Date "6 dec 2011"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 7650 1750 0    60   ~ 0
Résistances 3W\n
Connection ~ 5750 2800
Wire Wire Line
	5750 2700 5750 2800
Connection ~ 5450 2900
Wire Wire Line
	5450 3050 5450 2900
Wire Wire Line
	8200 2100 8300 2100
Wire Wire Line
	6900 2200 6350 2200
Wire Wire Line
	6900 2100 6800 2100
Wire Wire Line
	5300 3750 5600 3750
Wire Wire Line
	5300 3550 5600 3550
Wire Wire Line
	5300 2900 5500 2900
Wire Wire Line
	5300 2700 5500 2700
Wire Wire Line
	5300 2800 5900 2800
Wire Wire Line
	5300 3650 5600 3650
Wire Wire Line
	5300 3850 5600 3850
Wire Wire Line
	6900 2300 6800 2300
Wire Wire Line
	7600 2100 7700 2100
Wire Wire Line
	7600 2300 8300 2300
Wire Wire Line
	7600 2950 8300 2950
Wire Wire Line
	7600 2750 7700 2750
Wire Wire Line
	6900 2950 6800 2950
Wire Wire Line
	6900 2750 6800 2750
Wire Wire Line
	6900 2850 6350 2850
Wire Wire Line
	8200 2750 8300 2750
Wire Wire Line
	8200 4050 8300 4050
Wire Wire Line
	6900 4150 6350 4150
Wire Wire Line
	6900 4050 6850 4050
Wire Wire Line
	6900 4250 6850 4250
Wire Wire Line
	7600 4050 7700 4050
Wire Wire Line
	7600 4250 8300 4250
Wire Wire Line
	7600 3600 8300 3600
Wire Wire Line
	7600 3400 7700 3400
Wire Wire Line
	6900 3600 6850 3600
Wire Wire Line
	6900 3400 6850 3400
Wire Wire Line
	6900 3500 6350 3500
Wire Wire Line
	8200 3400 8300 3400
Wire Wire Line
	5400 2700 5400 2600
Connection ~ 5400 2700
$Comp
L PWR_FLAG #FLG01
U 1 1 4EDE4348
P 5450 3050
F 0 "#FLG01" H 5450 3320 30  0001 C CNN
F 1 "PWR_FLAG" H 5450 3280 30  0000 C CNN
	1    5450 3050
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 4EDE4347
P 5750 2700
F 0 "#FLG02" H 5750 2970 30  0001 C CNN
F 1 "PWR_FLAG" H 5750 2930 30  0000 C CNN
	1    5750 2700
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 4EDE4343
P 5400 2600
F 0 "#FLG03" H 5400 2870 30  0001 C CNN
F 1 "PWR_FLAG" H 5400 2830 30  0000 C CNN
	1    5400 2600
	1    0    0    -1  
$EndComp
$Comp
L LEM U3
U 1 1 4EDE419D
P 7250 3500
F 0 "U3" H 7250 3250 60  0000 C CNN
F 1 "LEM" H 7250 3750 60  0000 C CNN
	1    7250 3500
	1    0    0    -1  
$EndComp
$Comp
L VAA #PWR04
U 1 1 4EDE419C
P 6850 3400
F 0 "#PWR04" H 6850 3460 30  0001 C CNN
F 1 "VAA" H 6850 3510 30  0000 C CNN
	1    6850 3400
	0    -1   -1   0   
$EndComp
$Comp
L -VAA #PWR05
U 1 1 4EDE419B
P 6850 3600
F 0 "#PWR05" H 6850 3700 20  0001 C CNN
F 1 "-VAA" H 6850 3700 30  0000 C CNN
	1    6850 3600
	0    -1   -1   0   
$EndComp
Text Label 6350 3500 0    60   ~ 0
Uconv
$Comp
L R R3
U 1 1 4EDE419A
P 7950 3400
F 0 "R3" V 8030 3400 50  0000 C CNN
F 1 "25k" V 7950 3400 50  0000 C CNN
	1    7950 3400
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P4
U 1 1 4EDE4199
P 8650 3500
F 0 "P4" V 8600 3500 40  0000 C CNN
F 1 "Conv" V 8700 3500 40  0000 C CNN
	1    8650 3500
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P6
U 1 1 4EDE4198
P 8650 4150
F 0 "P6" V 8600 4150 40  0000 C CNN
F 1 "SC" V 8700 4150 40  0000 C CNN
	1    8650 4150
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 4EDE4197
P 7950 4050
F 0 "R4" V 8030 4050 50  0000 C CNN
F 1 "25k" V 7950 4050 50  0000 C CNN
	1    7950 4050
	0    1    1    0   
$EndComp
Text Label 6350 4150 0    60   ~ 0
Usc
$Comp
L -VAA #PWR06
U 1 1 4EDE4196
P 6850 4250
F 0 "#PWR06" H 6850 4350 20  0001 C CNN
F 1 "-VAA" H 6850 4350 30  0000 C CNN
	1    6850 4250
	0    -1   -1   0   
$EndComp
$Comp
L VAA #PWR07
U 1 1 4EDE4195
P 6850 4050
F 0 "#PWR07" H 6850 4110 30  0001 C CNN
F 1 "VAA" H 6850 4160 30  0000 C CNN
	1    6850 4050
	0    -1   -1   0   
$EndComp
$Comp
L LEM U4
U 1 1 4EDE4194
P 7250 4150
F 0 "U4" H 7250 3900 60  0000 C CNN
F 1 "LEM" H 7250 4400 60  0000 C CNN
	1    7250 4150
	1    0    0    -1  
$EndComp
$Comp
L LEM U2
U 1 1 4EDE416B
P 7250 2850
F 0 "U2" H 7250 2600 60  0000 C CNN
F 1 "LEM" H 7250 3100 60  0000 C CNN
	1    7250 2850
	1    0    0    -1  
$EndComp
$Comp
L VAA #PWR08
U 1 1 4EDE416A
P 6800 2750
F 0 "#PWR08" H 6800 2810 30  0001 C CNN
F 1 "VAA" H 6800 2860 30  0000 C CNN
	1    6800 2750
	0    -1   -1   0   
$EndComp
$Comp
L -VAA #PWR09
U 1 1 4EDE4169
P 6800 2950
F 0 "#PWR09" H 6800 3050 20  0001 C CNN
F 1 "-VAA" H 6800 3050 30  0000 C CNN
	1    6800 2950
	0    -1   -1   0   
$EndComp
Text Label 6350 2850 0    60   ~ 0
Umot2
$Comp
L R R2
U 1 1 4EDE4168
P 7950 2750
F 0 "R2" V 8030 2750 50  0000 C CNN
F 1 "25k" V 7950 2750 50  0000 C CNN
	1    7950 2750
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P3
U 1 1 4EDE4167
P 8650 2850
F 0 "P3" V 8600 2850 40  0000 C CNN
F 1 "Mot2" V 8700 2850 40  0000 C CNN
	1    8650 2850
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P1
U 1 1 4EDE414E
P 8650 2200
F 0 "P1" V 8600 2200 40  0000 C CNN
F 1 "Mot1" V 8700 2200 40  0000 C CNN
	1    8650 2200
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4EDE411F
P 7950 2100
F 0 "R1" V 8030 2100 50  0000 C CNN
F 1 "25k" V 7950 2100 50  0000 C CNN
	1    7950 2100
	0    1    1    0   
$EndComp
Text Label 6350 2200 0    60   ~ 0
Umot1
$Comp
L -VAA #PWR010
U 1 1 4EDE4101
P 6800 2300
F 0 "#PWR010" H 6800 2400 20  0001 C CNN
F 1 "-VAA" H 6800 2400 30  0000 C CNN
	1    6800 2300
	0    -1   -1   0   
$EndComp
$Comp
L VAA #PWR011
U 1 1 4EDE40FD
P 6800 2100
F 0 "#PWR011" H 6800 2160 30  0001 C CNN
F 1 "VAA" H 6800 2210 30  0000 C CNN
	1    6800 2100
	0    -1   -1   0   
$EndComp
Text Label 5600 3850 2    60   ~ 0
Usc
Text Label 5600 3750 2    60   ~ 0
Uconv
Text Label 5600 3650 2    60   ~ 0
Umot2
Text Label 5600 3550 2    60   ~ 0
Umot1
NoConn ~ 5300 3000
$Comp
L GND #PWR012
U 1 1 4EDE4045
P 5900 2800
F 0 "#PWR012" H 5900 2800 30  0001 C CNN
F 1 "GND" H 5900 2730 30  0001 C CNN
	1    5900 2800
	0    -1   -1   0   
$EndComp
$Comp
L -VAA #PWR013
U 1 1 4EDE403B
P 5500 2900
F 0 "#PWR013" H 5500 3000 20  0001 C CNN
F 1 "-VAA" H 5500 3000 30  0000 C CNN
	1    5500 2900
	0    1    1    0   
$EndComp
$Comp
L VAA #PWR014
U 1 1 4EDE4030
P 5500 2700
F 0 "#PWR014" H 5500 2760 30  0001 C CNN
F 1 "VAA" H 5500 2810 30  0000 C CNN
	1    5500 2700
	0    1    1    0   
$EndComp
$Comp
L CONN_4 P5
U 1 1 4EDE3FAA
P 4950 3700
F 0 "P5" V 4900 3700 50  0000 C CNN
F 1 "Mesures" V 5000 3700 50  0000 C CNN
	1    4950 3700
	-1   0    0    -1  
$EndComp
$Comp
L CONN_4 P2
U 1 1 4EDE3FA2
P 4950 2850
F 0 "P2" V 4900 2850 50  0000 C CNN
F 1 "Alim" V 5000 2850 50  0000 C CNN
	1    4950 2850
	-1   0    0    -1  
$EndComp
$Comp
L LEM U1
U 1 1 4EDE3F77
P 7250 2200
F 0 "U1" H 7250 1950 60  0000 C CNN
F 1 "LEM" H 7250 2450 60  0000 C CNN
	1    7250 2200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
