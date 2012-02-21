EESchema Schematic File Version 2  date 21/02/2012 16:10:05
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
Date "21 feb 2012"
Rev "1.0"
Comp "EPSA - Hypnoz"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 4300 850  0    60   ~ 0
Distribution
Text Notes 2250 1400 0    60   ~ 0
Diviseur
Text Notes 2400 1800 0    60   ~ 0
Valeur_reference
Connection ~ 1200 1400
Wire Wire Line
	1300 1400 1100 1400
Wire Wire Line
	7600 2800 7600 2700
Wire Wire Line
	7600 2700 7700 2700
Wire Notes Line
	3550 1650 2350 1650
Wire Notes Line
	3550 1650 3550 2600
Wire Notes Line
	3550 2600 2350 2600
Wire Notes Line
	2350 2600 2350 1650
Wire Wire Line
	5400 1200 5300 1200
Wire Wire Line
	4400 1550 4500 1550
Wire Notes Line
	1600 800  600  800 
Wire Notes Line
	1600 800  1600 1600
Wire Notes Line
	1600 1600 600  1600
Wire Notes Line
	600  1600 600  800 
Connection ~ 5950 2000
Wire Notes Line
	1400 3400 1400 5000
Wire Notes Line
	1400 3400 5600 3400
Wire Notes Line
	5600 3400 5600 5000
Wire Notes Line
	5600 5000 1400 5000
Wire Wire Line
	5100 4500 5200 4500
Wire Wire Line
	2750 2050 2550 2050
Wire Wire Line
	1100 1200 1400 1200
Wire Wire Line
	3350 2150 3350 2050
Wire Wire Line
	3350 2050 3250 2050
Wire Wire Line
	3000 2200 3000 2550
Wire Wire Line
	5200 4800 5200 4700
Wire Wire Line
	5200 4700 5100 4700
Wire Wire Line
	1900 3900 1500 3900
Wire Wire Line
	3850 1100 3850 1000
Wire Wire Line
	3850 1000 3650 1000
Wire Wire Line
	5700 2000 6800 2000
Wire Wire Line
	6800 2000 6800 2500
Wire Wire Line
	7300 2000 7700 2000
Wire Wire Line
	7300 2500 7700 2500
Connection ~ 6400 2000
Wire Wire Line
	3150 1000 3000 1000
Wire Wire Line
	7700 2200 7600 2200
Wire Wire Line
	7600 2200 7600 2300
Wire Wire Line
	6400 2500 6400 2400
Wire Wire Line
	1200 1400 1200 1500
Wire Wire Line
	4000 3900 3600 3900
Wire Wire Line
	3000 4700 3100 4700
Wire Wire Line
	3100 4700 3100 4800
Wire Wire Line
	3000 1000 3000 1400
Wire Wire Line
	2500 1000 2300 1000
Wire Wire Line
	3000 4500 3100 4500
Wire Wire Line
	5950 2400 5950 2500
Wire Wire Line
	4900 1900 4800 1900
Wire Wire Line
	5700 1550 5900 1550
Wire Wire Line
	4700 1550 4900 1550
Wire Wire Line
	4900 1550 4900 1200
Wire Wire Line
	5900 1650 5900 1200
Connection ~ 5900 1550
Wire Notes Line
	4200 2950 4200 700 
Wire Notes Line
	4200 2950 8300 2950
Wire Notes Line
	8300 2950 8300 700 
Wire Notes Line
	8300 700  4200 700 
Wire Notes Line
	2150 1450 2150 750 
Wire Notes Line
	2150 1450 3950 1450
Wire Notes Line
	3950 1450 3950 750 
Wire Notes Line
	3950 750  2150 750 
Wire Wire Line
	1200 1150 1200 1200
Connection ~ 1200 1200
$Comp
L PWR_FLAG #FLG01
U 1 1 4F4397BD
P 1300 1400
F 0 "#FLG01" H 1300 1495 30  0001 C CNN
F 1 "PWR_FLAG" H 1300 1580 30  0000 C CNN
	1    1300 1400
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 4F4397B5
P 1200 1150
F 0 "#FLG02" H 1200 1245 30  0001 C CNN
F 1 "PWR_FLAG" H 1200 1330 30  0000 C CNN
	1    1200 1150
	1    0    0    -1  
$EndComp
Text Notes 650  900  0    60   ~ 0
Alimentation
NoConn ~ 3000 4300
NoConn ~ 3000 4100
NoConn ~ 3000 3900
NoConn ~ 1900 4100
NoConn ~ 1900 4300
NoConn ~ 1900 4500
NoConn ~ 1900 4700
NoConn ~ 4000 4700
NoConn ~ 4000 4500
NoConn ~ 4000 4300
NoConn ~ 4000 4100
NoConn ~ 5100 4300
NoConn ~ 5100 4100
NoConn ~ 5100 3900
$Comp
L R R3
U 1 1 4F42855F
P 5650 1200
F 0 "R3" V 5730 1200 50  0000 C CNN
F 1 "1k" V 5650 1200 50  0000 C CNN
	1    5650 1200
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D1
U 1 1 4F42851E
P 5100 1200
F 0 "D1" H 5100 1300 40  0000 C CNN
F 1 "DIODE" H 5100 1100 40  0000 C CNN
	1    5100 1200
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR03
U 1 1 4F428471
P 7600 2800
F 0 "#PWR03" H 7600 2800 30  0001 C CNN
F 1 "GND" H 7600 2730 30  0001 C CNN
	1    7600 2800
	1    0    0    -1  
$EndComp
NoConn ~ 5700 1800
$Comp
L GND #PWR04
U 1 1 4F42819F
P 5900 1650
F 0 "#PWR04" H 5900 1650 30  0001 C CNN
F 1 "GND" H 5900 1580 30  0001 C CNN
	1    5900 1650
	1    0    0    -1  
$EndComp
$Comp
L RELAIS-SPDT K1
U 1 1 4F42808B
P 5300 1700
F 0 "K1" H 5750 1800 60  0000 C CNN
F 1 "Relais BP" H 5300 1700 60  0000 C CNN
	1    5300 1700
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR05
U 1 1 4F428059
P 4400 1550
F 0 "#PWR05" H 4400 1500 20  0001 C CNN
F 1 "+12V" H 4400 1650 30  0000 C CNN
	1    4400 1550
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR06
U 1 1 4F42802B
P 4800 1900
F 0 "#PWR06" H 4800 1850 20  0001 C CNN
F 1 "+12V" H 4800 2000 30  0000 C CNN
	1    4800 1900
	0    -1   -1   0   
$EndComp
$Comp
L CONN_2 P1
U 1 1 4F427FA9
P 4600 1200
F 0 "P1" V 4550 1200 40  0000 C CNN
F 1 "Tableau_de_bord" V 4650 1200 40  0000 C CNN
	1    4600 1200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR07
U 1 1 4F427EB1
P 5950 2500
F 0 "#PWR07" H 5950 2500 30  0001 C CNN
F 1 "GND" H 5950 2430 30  0001 C CNN
	1    5950 2500
	1    0    0    -1  
$EndComp
Text Notes 1550 3550 0    60   ~ 0
Connecteurs_mezzanine
$Comp
L +12V #PWR08
U 1 1 4F427DAB
P 5200 4500
F 0 "#PWR08" H 5200 4450 20  0001 C CNN
F 1 "+12V" H 5200 4600 30  0000 C CNN
	1    5200 4500
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR09
U 1 1 4F427DA3
P 3100 4500
F 0 "#PWR09" H 3100 4450 20  0001 C CNN
F 1 "+12V" H 3100 4600 30  0000 C CNN
	1    3100 4500
	0    1    1    0   
$EndComp
Text Label 3000 2450 0    60   ~ 0
RA2
Text Label 3000 1250 0    60   ~ 0
RA0
$Comp
L +12V #PWR010
U 1 1 4F427D3E
P 2300 1000
F 0 "#PWR010" H 2300 950 20  0001 C CNN
F 1 "+12V" H 2300 1100 30  0000 C CNN
	1    2300 1000
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR011
U 1 1 4F427D2F
P 2550 2050
F 0 "#PWR011" H 2550 2000 20  0001 C CNN
F 1 "+12V" H 2550 2150 30  0000 C CNN
	1    2550 2050
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR012
U 1 1 4F427D02
P 1400 1200
F 0 "#PWR012" H 1400 1150 20  0001 C CNN
F 1 "+12V" H 1400 1300 30  0000 C CNN
	1    1400 1200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR013
U 1 1 4F427C88
P 3350 2150
F 0 "#PWR013" H 3350 2150 30  0001 C CNN
F 1 "GND" H 3350 2080 30  0001 C CNN
	1    3350 2150
	1    0    0    -1  
$EndComp
Text Label 3650 3900 0    60   ~ 0
RA2
Text Label 1550 3900 0    60   ~ 0
RA0
$Comp
L GND #PWR014
U 1 1 4F427BAE
P 3100 4800
F 0 "#PWR014" H 3100 4800 30  0001 C CNN
F 1 "GND" H 3100 4730 30  0001 C CNN
	1    3100 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 4F427BA8
P 5200 4800
F 0 "#PWR015" H 5200 4800 30  0001 C CNN
F 1 "GND" H 5200 4730 30  0001 C CNN
	1    5200 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 4F4279F1
P 1200 1500
F 0 "#PWR016" H 1200 1500 30  0001 C CNN
F 1 "GND" H 1200 1430 30  0001 C CNN
	1    1200 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 4F4279DA
P 6400 2500
F 0 "#PWR017" H 6400 2500 30  0001 C CNN
F 1 "GND" H 6400 2430 30  0001 C CNN
	1    6400 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 4F4279B3
P 7600 2300
F 0 "#PWR018" H 7600 2300 30  0001 C CNN
F 1 "GND" H 7600 2230 30  0001 C CNN
	1    7600 2300
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 4F42795F
P 3000 2050
F 0 "RV1" H 3000 1950 50  0000 C CNN
F 1 "V-" H 3000 2050 50  0000 C CNN
	1    3000 2050
	1    0    0    1   
$EndComp
$Comp
L GND #PWR020
U 1 1 4F42792E
P 3850 1100
F 0 "#PWR020" H 3850 1100 30  0001 C CNN
F 1 "GND" H 3850 1030 30  0001 C CNN
	1    3850 1100
	1    0    0    -1  
$EndComp
$Comp
L MEZZA-10 MEZZA1
U 1 1 4F426D8A
P 2450 4300
F 0 "MEZZA1" H 2450 4850 70  0000 C CNN
F 1 "MEZZA-10" H 2450 3700 70  0000 C CNN
	1    2450 4300
	1    0    0    -1  
$EndComp
$Comp
L MEZZA-10 MEZZA2
U 1 1 4F426D6B
P 4550 4300
F 0 "MEZZA2" H 4550 4850 70  0000 C CNN
F 1 "MEZZA-10" H 4550 3700 70  0000 C CNN
	1    4550 4300
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P4
U 1 1 4F426D10
P 8050 2600
F 0 "P4" V 8000 2600 40  0000 C CNN
F 1 "circuit_arriere" V 8100 2600 40  0000 C CNN
	1    8050 2600
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P3
U 1 1 4F426D05
P 8050 2100
F 0 "P3" V 8000 2100 40  0000 C CNN
F 1 "circuit_avant" V 8100 2100 40  0000 C CNN
	1    8050 2100
	1    0    0    -1  
$EndComp
$Comp
L FUSE F2
U 1 1 4F426CF8
P 7050 2500
F 0 "F2" H 7150 2550 40  0000 C CNN
F 1 "FUSE" H 6950 2450 40  0000 C CNN
	1    7050 2500
	1    0    0    -1  
$EndComp
$Comp
L FUSE F1
U 1 1 4F426CF4
P 7050 2000
F 0 "F1" H 7150 2050 40  0000 C CNN
F 1 "FUSE" H 6950 1950 40  0000 C CNN
	1    7050 2000
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 4F426C72
P 3400 1000
F 0 "R2" V 3480 1000 50  0000 C CNN
F 1 "4k" V 3400 1000 50  0000 C CNN
	1    3400 1000
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 4F426C66
P 2750 1000
F 0 "R1" V 2830 1000 50  0000 C CNN
F 1 "5.6k" V 2750 1000 50  0000 C CNN
	1    2750 1000
	0    -1   -1   0   
$EndComp
$Comp
L CP C2
U 1 1 4F426C2F
P 6400 2200
F 0 "C2" H 6450 2300 50  0000 L CNN
F 1 "1000u" H 6450 2100 50  0000 L CNN
	1    6400 2200
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 4F426C2A
P 5950 2200
F 0 "C1" H 6000 2300 50  0000 L CNN
F 1 "1000u" H 6000 2100 50  0000 L CNN
	1    5950 2200
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
