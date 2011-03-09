EESchema Schematic File Version 2  date 09/03/2011 12:15:54
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
LIBS:symbioz
LIBS:epsa_relais
LIBS:carte_tableau_electrique-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "Carte tableau électrique"
Date "9 mar 2011"
Rev "v1.0"
Comp "EPSA - Benchy"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PWR_FLAG #FLG01
U 1 1 4D775646
P 7350 3750
F 0 "#FLG01" H 7350 4020 30  0001 C CNN
F 1 "PWR_FLAG" H 7350 3980 30  0000 C CNN
	1    7350 3750
	-1   0    0    1   
$EndComp
Wire Notes Line
	7800 6700 7800 5100
Wire Notes Line
	7800 6700 9700 6700
Wire Notes Line
	9700 6700 9700 5100
Wire Notes Line
	9700 5100 7800 5100
Wire Wire Line
	8350 5500 8400 5500
Wire Wire Line
	8350 5700 8500 5700
Wire Notes Line
	4650 6900 4650 5050
Wire Notes Line
	4650 6900 6500 6900
Wire Notes Line
	6500 6900 6500 5050
Wire Notes Line
	6500 5050 4650 5050
Wire Wire Line
	5850 6300 5850 5400
Wire Wire Line
	5550 5450 5550 5400
Wire Wire Line
	5100 6700 5100 6250
Wire Notes Line
	1650 3200 1650 1700
Wire Notes Line
	1650 3200 2750 3200
Wire Notes Line
	2750 3200 2750 1700
Wire Wire Line
	6450 4150 6450 4200
Wire Wire Line
	5800 2550 5850 2550
Connection ~ 7150 3750
Wire Wire Line
	7350 3750 7350 3700
Wire Wire Line
	7350 3750 6450 3750
Connection ~ 9000 6150
Wire Wire Line
	9000 6150 9150 6150
Wire Wire Line
	9000 6550 9000 5800
Wire Wire Line
	9000 5800 9150 5800
Wire Wire Line
	2050 7150 2050 7200
Wire Wire Line
	2250 2400 2250 2800
Wire Wire Line
	6800 2400 6800 2450
Connection ~ 2550 2800
Wire Wire Line
	2250 2800 2550 2800
Wire Wire Line
	3250 5400 2350 5400
Wire Wire Line
	2550 2200 2250 2200
Wire Wire Line
	2200 6900 2750 6900
Wire Wire Line
	2200 6900 2200 6700
Connection ~ 2200 5100
Wire Wire Line
	2200 5800 2200 5100
Wire Wire Line
	7150 1200 7150 1400
Wire Wire Line
	1700 5400 1750 5400
Wire Wire Line
	1750 5100 1750 5400
Wire Wire Line
	2750 5100 2750 6900
Connection ~ 1750 5100
Wire Wire Line
	2550 2900 2550 2750
Wire Wire Line
	1400 5100 2750 5100
Wire Notes Line
	1200 7350 1200 4700
Wire Notes Line
	1200 7350 3400 7350
Wire Notes Line
	3400 7350 3400 4700
Wire Notes Line
	3400 4700 1200 4700
Wire Wire Line
	6800 1400 5300 1400
Wire Wire Line
	7150 2400 7150 2550
Connection ~ 2550 2200
Wire Wire Line
	1700 5600 1750 5600
Wire Wire Line
	1750 5600 1750 5800
Wire Wire Line
	7150 3750 7150 3550
Wire Wire Line
	2350 5400 2350 5800
Wire Wire Line
	2550 2350 2550 2150
Wire Wire Line
	5450 6300 5450 6250
Wire Wire Line
	6100 1200 6150 1200
Wire Wire Line
	6800 3600 6800 3550
Wire Wire Line
	2250 2200 2250 2150
Wire Wire Line
	2050 6700 2050 6750
Wire Wire Line
	1750 6750 1750 6700
Wire Wire Line
	9150 6500 9000 6500
Connection ~ 9000 6500
Wire Wire Line
	6800 2550 6450 2550
Wire Wire Line
	6450 2550 6450 3750
Wire Notes Line
	7700 850  5150 850 
Wire Notes Line
	7700 850  7700 4400
Wire Notes Line
	7700 4400 5150 4400
Wire Notes Line
	5150 4400 5150 850 
Wire Notes Line
	2750 1700 1650 1700
Wire Wire Line
	5450 6750 5450 6700
Wire Wire Line
	5100 5450 5100 5400
Wire Wire Line
	5100 5400 4700 5400
Wire Wire Line
	5850 6700 5100 6700
Connection ~ 5450 6700
Wire Wire Line
	5850 5400 6350 5400
Wire Wire Line
	8350 5600 9150 5600
Wire Wire Line
	8350 5800 8350 6300
Wire Wire Line
	8350 6300 9150 6300
Wire Wire Line
	9150 5950 8500 5950
Wire Wire Line
	8500 5950 8500 5700
Text Notes 9200 5250 2    60   ~ 0
Connexion contacteurs
Text Label 8450 6300 0    60   ~ 0
Precharge
Text Label 8650 5950 0    60   ~ 0
Cont-
$Comp
L +12C #PWR02
U 1 1 4D775561
P 8400 5500
F 0 "#PWR02" H 8400 5470 30  0001 C CNN
F 1 "+12C" H 8400 5610 40  0000 C CNN
	1    8400 5500
	1    0    0    -1  
$EndComp
Text Notes 5850 5200 2    60   ~ 0
Voyants contacteurs
Text Label 6350 5400 2    60   ~ 0
Precharge
$Comp
L LED D4
U 1 1 4D7754E4
P 5850 6500
F 0 "D4" H 5850 6600 50  0000 C CNN
F 1 "JAUNE" H 5850 6400 50  0000 C CNN
	1    5850 6500
	0    1    1    0   
$EndComp
Text Label 4700 5400 0    60   ~ 0
Cont-
$Comp
L +12C #PWR03
U 1 1 4D7754B1
P 5550 5400
F 0 "#PWR03" H 5550 5370 30  0001 C CNN
F 1 "+12C" H 5550 5510 40  0000 C CNN
	1    5550 5400
	1    0    0    -1  
$EndComp
$Comp
L RELAIS-SPST-NO K2
U 1 1 4B830109
P 6950 3050
F 0 "K2" H 7400 3150 60  0000 C CNN
F 1 "RELAIS-SPST-NO" H 6900 3050 60  0000 C CNN
	1    6950 3050
	1    0    0    -1  
$EndComp
$Comp
L +12C #PWR04
U 1 1 4D7753F2
P 7350 3700
F 0 "#PWR04" H 7350 3670 30  0001 C CNN
F 1 "+12C" H 7350 3810 40  0000 C CNN
	1    7350 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 4D775372
P 9000 6550
F 0 "#PWR05" H 9000 6550 30  0001 C CNN
F 1 "GND" H 9000 6480 30  0001 C CNN
	1    9000 6550
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P4
U 1 1 4D775349
P 9500 5700
F 0 "P4" V 9450 5700 40  0000 C CNN
F 1 "CONT+" V 9550 5700 40  0000 C CNN
	1    9500 5700
	1    0    0    -1  
$EndComp
$Comp
L CONN_4 P3
U 1 1 4D7752F3
P 8000 5650
F 0 "P3" V 7950 5650 50  0000 C CNN
F 1 "CTE_CONT" V 8050 5650 50  0000 C CNN
	1    8000 5650
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR06
U 1 1 4D6CFADC
P 2050 7200
F 0 "#PWR06" H 2050 7200 30  0001 C CNN
F 1 "GND" H 2050 7130 30  0001 C CNN
	1    2050 7200
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG07
U 1 1 4D6BBA73
P 2250 2800
F 0 "#FLG07" H 2250 3070 30  0001 C CNN
F 1 "PWR_FLAG" H 2250 3030 30  0000 C CNN
	1    2250 2800
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG08
U 1 1 4D6BBA6E
P 2250 2150
F 0 "#FLG08" H 2250 2420 30  0001 C CNN
F 1 "PWR_FLAG" H 2250 2380 30  0000 C CNN
	1    2250 2150
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P6
U 1 1 4D6BB8CC
P 9500 6400
F 0 "P6" V 9450 6400 40  0000 C CNN
F 1 "PRECHRG" V 9550 6400 40  0000 C CNN
	1    9500 6400
	1    0    0    -1  
$EndComp
$Comp
L SPST SW1
U 1 1 4D6BADDB
P 4000 2100
F 0 "SW1" H 4000 2200 70  0000 C CNN
F 1 "ARRET_URGENCE" H 4000 2000 70  0000 C CNN
	1    4000 2100
	1    0    0    -1  
$EndComp
NoConn ~ 5350 5450
NoConn ~ 2350 6700
NoConn ~ 2050 5800
$Comp
L CONN_2 P1
U 1 1 4D6BA96F
P 1900 2300
F 0 "P1" V 1850 2300 40  0000 C CNN
F 1 "PWR_IN" V 1950 2300 40  0000 C CNN
	1    1900 2300
	-1   0    0    -1  
$EndComp
$Comp
L RELAIS-SPDT K3
U 1 1 4D6B9D2A
P 5250 5850
F 0 "K3" H 5700 5950 60  0000 C CNN
F 1 "RELAIS-SPDT" H 5250 5850 60  0000 C CNN
	1    5250 5850
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P5
U 1 1 4D6A1C1D
P 9500 6050
F 0 "P5" V 9450 6050 40  0000 C CNN
F 1 "CONT-" V 9550 6050 40  0000 C CNN
	1    9500 6050
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR09
U 1 1 4D6A1B80
P 5800 2550
F 0 "#PWR09" H 5800 2500 20  0001 C CNN
F 1 "+12V" H 5800 2650 30  0000 C CNN
	1    5800 2550
	1    0    0    -1  
$EndComp
Text Label 5300 1400 0    60   ~ 0
porte fermée
$Comp
L CONN_2 P2
U 1 1 4D6A1ABA
P 1350 5500
F 0 "P2" V 1300 5500 40  0000 C CNN
F 1 "PORTE" V 1400 5500 40  0000 C CNN
	1    1350 5500
	-1   0    0    -1  
$EndComp
$Comp
L +12V #PWR010
U 1 1 4D6A1AA3
P 1400 5100
F 0 "#PWR010" H 1400 5050 20  0001 C CNN
F 1 "+12V" H 1400 5200 30  0000 C CNN
	1    1400 5100
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR011
U 1 1 4D6A1A70
P 2550 2150
F 0 "#PWR011" H 2550 2100 20  0001 C CNN
F 1 "+12V" H 2550 2250 30  0000 C CNN
	1    2550 2150
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR012
U 1 1 4B854DCF
P 6100 1200
F 0 "#PWR012" H 6100 1150 20  0001 C CNN
F 1 "+12V" H 6100 1300 30  0000 C CNN
	1    6100 1200
	1    0    0    -1  
$EndComp
Text Notes 5200 1000 0    60   ~ 0
Sécurisation alimentation
$Comp
L GND #PWR013
U 1 1 4B830354
P 5450 6750
F 0 "#PWR013" H 5450 6750 30  0001 C CNN
F 1 "GND" H 5450 6680 30  0001 C CNN
	1    5450 6750
	1    0    0    -1  
$EndComp
$Comp
L LED D3
U 1 1 4B830353
P 5450 6500
F 0 "D3" H 5450 6600 50  0000 C CNN
F 1 "ROUGE" H 5450 6400 50  0000 C CNN
	1    5450 6500
	0    1    1    0   
$EndComp
$Comp
L LED D2
U 1 1 4B83034A
P 6450 3950
F 0 "D2" H 6450 4050 50  0000 C CNN
F 1 "VERT" H 6450 3850 50  0000 C CNN
	1    6450 3950
	0    1    1    0   
$EndComp
$Comp
L GND #PWR014
U 1 1 4B830349
P 6450 4200
F 0 "#PWR014" H 6450 4200 30  0001 C CNN
F 1 "GND" H 6450 4130 30  0001 C CNN
	1    6450 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 4B8301D8
P 6800 3600
F 0 "#PWR015" H 6800 3600 30  0001 C CNN
F 1 "GND" H 6800 3530 30  0001 C CNN
	1    6800 3600
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 4B830193
P 6150 2550
F 0 "SW2" H 6300 2660 50  0000 C CNN
F 1 "ON" H 6150 2470 50  0000 C CNN
	1    6150 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 4B830098
P 6800 2450
F 0 "#PWR016" H 6800 2450 30  0001 C CNN
F 1 "GND" H 6800 2380 30  0001 C CNN
	1    6800 2450
	1    0    0    -1  
$EndComp
$Comp
L RELAIS-SPST-NO K1
U 1 1 4B830066
P 6950 1900
F 0 "K1" H 7400 2000 60  0000 C CNN
F 1 "RELAIS-SPST-NO" H 6900 1900 60  0000 C CNN
	1    6950 1900
	1    0    0    -1  
$EndComp
Text Label 3250 5400 2    40   ~ 0
porte fermée
Text Notes 1450 4900 0    60   ~ 0
Détection porte
$Comp
L LED D5
U 1 1 4B82FE15
P 2050 6950
F 0 "D5" H 2050 7050 50  0000 C CNN
F 1 "ROUGE" H 2050 6850 50  0000 C CNN
	1    2050 6950
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR017
U 1 1 4B82FD90
P 1750 6750
F 0 "#PWR017" H 1750 6750 30  0001 C CNN
F 1 "GND" H 1750 6680 30  0001 C CNN
	1    1750 6750
	1    0    0    -1  
$EndComp
$Comp
L RELAIS-DPDT K4
U 1 1 4B82FD15
P 1900 6250
F 0 "K4" H 2500 6400 60  0000 C CNN
F 1 "RELAIS-DPDT" H 2000 6250 60  0000 C CNN
	1    1900 6250
	1    0    0    -1  
$EndComp
Text Notes 2000 1850 0    60   ~ 0
Alimentation
$Comp
L GND #PWR018
U 1 1 4B82ADBC
P 2550 2900
F 0 "#PWR018" H 2550 2900 30  0001 C CNN
F 1 "GND" H 2550 2830 30  0001 C CNN
	1    2550 2900
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 4B82ACBD
P 2550 2550
F 0 "D1" H 2550 2650 50  0000 C CNN
F 1 "JAUNE" H 2550 2450 50  0000 C CNN
	1    2550 2550
	0    1    1    0   
$EndComp
$EndSCHEMATC
