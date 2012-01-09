EESchema Schematic File Version 2  date 09/01/2012 19:11:18
LIBS:epsa_cmos
LIBS:epsa_puissance
LIBS:epsa_relais
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
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "Carte standard 28"
Date "9 jan 2012"
Rev "2.0"
Comp "EPSA - SymbioZ"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 850  750  0    60   ~ 0
Au Lecteur,\n\nL'utilité d'un convertisseur DC/DC est qu'il s'agit d'un hacheur.\n Les seule pertes qui existent viennent des commutations de ce hacheur.\n\nRendement : 85%\n\nUn régulateur linéaire 5V alimenté en 12V provoque des pertes par effet joule pour faire tomber la tension.\nSi on demande 100mA en sortie, on va perdre P=(12V-5V)*100mA par effet Joule soit 700mW pour 500mW de consommés.\n\n Rendement : 41%
Wire Notes Line
	3750 3050 5100 3050
Wire Notes Line
	5100 2000 5100 3050
Wire Notes Line
	5100 2000 800  2000
Wire Wire Line
	2050 2350 1300 2350
Connection ~ 3700 2750
Wire Wire Line
	4200 2750 3700 2750
Wire Wire Line
	2050 2750 1300 2750
Wire Wire Line
	9950 5650 10150 5650
Wire Wire Line
	10350 5950 10100 5950
Wire Wire Line
	10100 5950 10100 5850
Wire Wire Line
	10100 5850 9950 5850
Wire Notes Line
	900  6950 900  6400
Wire Notes Line
	900  6950 1800 6950
Wire Notes Line
	1800 6950 1800 6400
Wire Notes Line
	1800 6400 900  6400
Connection ~ 3250 5650
Wire Wire Line
	3500 5650 3250 5650
Wire Wire Line
	3050 5750 3050 5450
Wire Notes Line
	7750 3800 7750 750 
Wire Notes Line
	7750 3800 10900 3800
Wire Notes Line
	10900 3800 10900 750 
Wire Wire Line
	8500 3650 8200 3650
Connection ~ 8500 3250
Wire Wire Line
	7850 3100 7900 3100
Wire Notes Line
	4450 6150 7100 6150
Wire Notes Line
	4450 6150 4450 5050
Wire Notes Line
	4450 5050 7100 5050
Connection ~ 4950 5600
Wire Wire Line
	5150 5600 4650 5600
Connection ~ 4950 5200
Wire Wire Line
	4650 5200 5150 5200
Connection ~ 10550 5150
Wire Wire Line
	10550 5150 9950 5150
Wire Wire Line
	10400 4950 10700 4950
Wire Wire Line
	10150 4950 9950 4950
Connection ~ 10400 4550
Wire Wire Line
	8150 5650 8350 5650
Connection ~ 7900 2650
Connection ~ 8350 2650
Wire Wire Line
	8600 2650 8300 2650
Wire Wire Line
	8600 1900 8350 1900
Wire Wire Line
	10550 2350 10800 2350
Wire Wire Line
	10550 1750 10850 1750
Wire Wire Line
	2300 4300 2350 4300
Wire Notes Line
	7100 5050 7100 6150
Connection ~ 7000 5600
Wire Wire Line
	7000 5650 7000 5500
Wire Wire Line
	7000 5500 6450 5500
Wire Wire Line
	4900 5800 5150 5800
Wire Wire Line
	6450 5800 6750 5800
Wire Notes Line
	7750 4050 7750 6200
Wire Notes Line
	7750 4050 10900 4050
Wire Notes Line
	10900 4050 10900 6200
Wire Notes Line
	10900 6200 7750 6200
Wire Wire Line
	9950 5450 10050 5450
Wire Wire Line
	8350 5450 8150 5450
Wire Wire Line
	8350 5050 8150 5050
Wire Wire Line
	8350 4950 8150 4950
Wire Wire Line
	8350 4550 8150 4550
Wire Notes Line
	4750 4750 800  4750
Wire Notes Line
	4750 4750 4750 3350
Wire Notes Line
	4750 3350 800  3350
Wire Notes Line
	800  3350 800  4750
Wire Wire Line
	2950 4300 3300 4300
Wire Wire Line
	2950 4100 3300 4100
Wire Wire Line
	2950 3900 3300 3900
Wire Wire Line
	2950 3700 3300 3700
Wire Wire Line
	850  4300 1200 4300
Wire Wire Line
	850  4100 1200 4100
Wire Wire Line
	850  3900 1200 3900
Wire Wire Line
	850  3700 1200 3700
Wire Wire Line
	4400 4300 4450 4300
Wire Wire Line
	4700 3700 4400 3700
Wire Wire Line
	4700 3900 4400 3900
Wire Wire Line
	2600 4100 2300 4100
Wire Wire Line
	1200 4500 1100 4500
Wire Wire Line
	3300 4500 3200 4500
Wire Wire Line
	6950 3050 7250 3050
Wire Wire Line
	10550 1450 10800 1450
Connection ~ 7900 2350
Wire Wire Line
	7900 2350 7850 2350
Wire Wire Line
	10550 1300 10800 1300
Wire Wire Line
	8600 1600 8350 1600
Wire Notes Line
	5800 3400 7350 3400
Wire Notes Line
	5800 3400 5800 2150
Wire Wire Line
	6950 2750 7250 2750
Wire Wire Line
	6950 2450 7250 2450
Wire Wire Line
	4700 4100 4400 4100
Wire Wire Line
	2300 3900 2600 3900
Wire Wire Line
	2300 3700 2600 3700
Wire Wire Line
	4400 4500 4400 4600
Wire Wire Line
	2300 4500 2300 4600
Wire Wire Line
	10550 2950 10800 2950
Wire Wire Line
	10800 3250 10550 3250
Wire Wire Line
	10800 3100 10550 3100
Wire Wire Line
	10800 3400 10550 3400
Wire Wire Line
	10800 2800 10550 2800
Wire Wire Line
	10800 2650 10550 2650
Wire Wire Line
	6950 3200 7250 3200
Wire Wire Line
	6950 2600 7200 2600
Wire Wire Line
	8350 1150 8600 1150
Wire Wire Line
	8600 1450 8350 1450
Wire Wire Line
	8600 1750 8350 1750
Wire Wire Line
	8600 1300 8350 1300
Wire Wire Line
	10550 2050 10800 2050
Wire Wire Line
	6950 2900 7250 2900
Wire Wire Line
	10550 2200 10800 2200
Wire Notes Line
	5800 2150 7350 2150
Wire Notes Line
	7350 2150 7350 3400
Wire Wire Line
	6450 5900 6750 5900
Wire Wire Line
	5150 5900 4900 5900
Wire Wire Line
	6450 5600 6500 5600
Wire Wire Line
	10550 1150 10800 1150
Wire Wire Line
	10550 1900 10850 1900
Wire Wire Line
	10550 2500 10800 2500
Wire Wire Line
	8600 2500 8600 2050
Wire Wire Line
	8600 2050 8300 2050
Connection ~ 8350 2050
Wire Wire Line
	8600 2800 8600 2950
Wire Notes Line
	10900 750  7750 750 
Wire Wire Line
	8150 5850 8350 5850
Wire Wire Line
	10150 4550 10150 4500
Connection ~ 10150 4550
Wire Wire Line
	10700 4550 9950 4550
Wire Wire Line
	10450 5450 10550 5450
Connection ~ 10550 4950
Wire Wire Line
	10550 5500 10550 4950
Connection ~ 10550 5450
Wire Wire Line
	5150 5200 5150 5500
Wire Wire Line
	4800 5600 4800 5650
Connection ~ 4800 5600
Wire Wire Line
	8600 3100 8400 3100
Wire Wire Line
	8600 2950 7900 2950
Wire Wire Line
	7900 2950 7900 2050
Wire Wire Line
	8600 3250 7900 3250
Wire Wire Line
	7900 3250 7900 3100
Connection ~ 8200 3250
Wire Wire Line
	8350 3650 8350 3700
Connection ~ 8350 3650
Wire Wire Line
	3250 5750 3250 5450
Connection ~ 3050 5550
Wire Wire Line
	3500 5550 3050 5550
Wire Notes Line
	3600 4950 2750 4950
Wire Notes Line
	3600 4950 3600 6250
Wire Notes Line
	3600 6250 2750 6250
Wire Notes Line
	2750 6250 2750 4950
Wire Wire Line
	10150 5650 10150 5850
Wire Wire Line
	10150 5850 10350 5850
Wire Wire Line
	10350 5750 10300 5750
Wire Notes Line
	3800 3050 800  3050
Connection ~ 4150 2350
Connection ~ 3850 2350
Connection ~ 1550 2750
Connection ~ 1700 2350
Wire Wire Line
	1700 2350 1700 2300
Connection ~ 1850 2750
Wire Wire Line
	1300 2350 1300 2450
Connection ~ 1850 2350
Wire Wire Line
	1300 2750 1300 2650
Wire Notes Line
	800  3050 800  2000
Wire Wire Line
	4750 2750 4700 2750
Connection ~ 1550 2350
Wire Wire Line
	4000 2350 4000 2300
Connection ~ 4000 2350
Connection ~ 3850 2750
Connection ~ 4150 2750
Wire Wire Line
	2050 2650 2050 2850
Wire Wire Line
	2050 2850 3700 2850
Wire Wire Line
	3700 2850 3700 2650
Connection ~ 2050 2750
Wire Wire Line
	3700 2350 4750 2350
Wire Wire Line
	2850 2850 2850 2950
Connection ~ 2850 2850
$Comp
L TMH_1205S U?
U 1 1 4F0B2A7E
P 2900 2500
F 0 "U?" H 2900 2400 60  0000 C CNN
F 1 "TMH_1205S" H 2900 2550 60  0000 C CNN
	1    2900 2500
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4F0B2A4F
P 1550 2550
F 0 "C?" H 1600 2650 50  0000 L CNN
F 1 "27p" H 1600 2450 50  0000 L CNN
	1    1550 2550
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C?
U 1 1 4F0B2A4E
P 1850 2550
F 0 "C?" H 1900 2650 50  0000 L CNN
F 1 "100u" H 2000 2600 50  0000 L CNN
	1    1850 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4F0B2A4D
P 2850 2950
F 0 "#PWR?" H 2850 2950 30  0001 C CNN
F 1 "GND" H 2850 2880 30  0001 C CNN
	1    2850 2950
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 4F0B2A4C
P 4750 2550
F 0 "D?" H 4750 2650 50  0000 C CNN
F 1 "RED" H 4750 2450 50  0000 C CNN
	1    4750 2550
	0    -1   1    0   
$EndComp
Text Notes 3200 2100 0    60   ~ 0
Alimentation
$Comp
L PWR_FLAG #FLG?
U 1 1 4F0B2A4B
P 1300 2350
F 0 "#FLG?" H 1300 2620 30  0001 C CNN
F 1 "PWR_FLAG" H 1300 2580 30  0000 C CNN
	1    1300 2350
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 4F0B2A4A
P 1300 2750
F 0 "#FLG?" H 1300 3020 30  0001 C CNN
F 1 "PWR_FLAG" H 1300 2980 30  0000 C CNN
	1    1300 2750
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P?
U 1 1 4F0B2A49
P 950 2550
F 0 "P?" V 900 2550 40  0000 C CNN
F 1 "ALIM" V 1000 2550 40  0000 C CNN
	1    950  2550
	-1   0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4F0B2A48
P 4150 2550
F 0 "C?" H 4200 2650 50  0000 L CNN
F 1 "27p" H 4200 2450 50  0000 L CNN
	1    4150 2550
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C?
U 1 1 4F0B2A47
P 3850 2550
F 0 "C?" H 3900 2650 50  0000 L CNN
F 1 "10u" H 3900 2450 50  0000 L CNN
	1    3850 2550
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4F0B2A46
P 4450 2750
F 0 "R?" V 4530 2750 50  0000 C CNN
F 1 "1K" V 4450 2750 50  0000 C CNN
	1    4450 2750
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR?
U 1 1 4F0B2A45
P 1700 2300
F 0 "#PWR?" H 1700 2250 20  0001 C CNN
F 1 "+12V" H 1700 2400 30  0000 C CNN
	1    1700 2300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 4F0B2A44
P 4000 2300
F 0 "#PWR?" H 4000 2400 30  0001 C CNN
F 1 "VCC" H 4000 2400 30  0000 C CNN
	1    4000 2300
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 MECA3
U 1 1 4D04E109
P 1350 6850
F 0 "MECA3" H 1500 6850 40  0000 C CNN
F 1 "5mm" H 1300 6890 30  0001 C CNN
	1    1350 6850
	1    0    0    -1  
$EndComp
NoConn ~ 1200 6850
$Comp
L CONN_1 MECA2
U 1 1 4D04E103
P 1350 6750
F 0 "MECA2" H 1500 6750 40  0000 C CNN
F 1 "5mm" H 1300 6790 30  0001 C CNN
	1    1350 6750
	1    0    0    -1  
$EndComp
NoConn ~ 1200 6750
NoConn ~ 1200 6650
$Comp
L CONN_1 MECA1
U 1 1 4D04E0EC
P 1350 6650
F 0 "MECA1" H 1500 6650 40  0000 C CNN
F 1 "5mm" H 1300 6690 30  0001 C CNN
	1    1350 6650
	1    0    0    -1  
$EndComp
Text Notes 950  6550 0    60   ~ 0
Trous mécaniques
$Comp
L PIC18F258 U5
U 1 1 4CFE7057
P 9450 1750
F 0 "U5" H 9450 -50 60  0000 C CNN
F 1 "PIC18F258" H 9450 2500 60  0000 C CNN
	1    9450 1750
	1    0    0    -1  
$EndComp
Text Notes 2900 6000 1    60   ~ 0
Connecteurs CAN
Text Label 3500 5650 2    60   ~ 0
CANH
Text Label 3500 5550 2    60   ~ 0
CANL
$Comp
L CONN_2 P3
U 1 1 4CFE6DE3
P 3150 6100
F 0 "P3" V 3100 6100 40  0000 C CNN
F 1 "CAN2" V 3200 6100 40  0000 C CNN
	1    3150 6100
	0    -1   1    0   
$EndComp
$Comp
L CONN_2 P2
U 1 1 4CFE6DC8
P 3150 5100
F 0 "P2" V 3100 5100 40  0000 C CNN
F 1 "CAN1" V 3200 5100 40  0000 C CNN
	1    3150 5100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR01
U 1 1 4CFE6D3F
P 10300 5750
F 0 "#PWR01" H 10300 5750 30  0001 C CNN
F 1 "GND" H 10300 5680 30  0001 C CNN
	1    10300 5750
	0    1    1    0   
$EndComp
$Comp
L CONN_3 K1
U 1 1 4CFE6D2D
P 10700 5850
F 0 "K1" V 10650 5850 50  0000 C CNN
F 1 "RS232" V 10750 5850 40  0000 C CNN
	1    10700 5850
	1    0    0    1   
$EndComp
$Comp
L GND #PWR02
U 1 1 4CFE6CDB
P 8350 3700
F 0 "#PWR02" H 8350 3700 30  0001 C CNN
F 1 "GND" H 8350 3630 30  0001 C CNN
	1    8350 3700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 4CFE6CB2
P 7850 3100
F 0 "#PWR03" H 7850 3200 30  0001 C CNN
F 1 "VCC" H 7850 3200 30  0000 C CNN
	1    7850 3100
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 4B2790FC
P 8150 3100
F 0 "R3" V 8230 3100 50  0000 C CNN
F 1 "47K" V 8150 3100 50  0000 C CNN
	1    8150 3100
	0    1    1    0   
$EndComp
NoConn ~ 10550 1600
$Comp
L +12V #PWR04
U 1 1 4CFE6717
P 2350 4300
F 0 "#PWR04" H 2350 4250 20  0001 C CNN
F 1 "+12V" H 2350 4400 30  0000 C CNN
	1    2350 4300
	0    1    1    0   
$EndComp
$Comp
L MEZZA-10 MEZZA2
U 1 1 4CFE638A
P 3850 4100
F 0 "MEZZA2" H 3850 4650 70  0000 C CNN
F 1 "MEZZA-10" H 3850 3500 70  0000 C CNN
	1    3850 4100
	1    0    0    -1  
$EndComp
$Comp
L MEZZA-10 MEZZA1
U 1 1 4CFE6387
P 1750 4100
F 0 "MEZZA1" H 1750 4650 70  0000 C CNN
F 1 "MEZZA-10" H 1750 3500 70  0000 C CNN
	1    1750 4100
	1    0    0    -1  
$EndComp
Text Label 10800 1150 2    60   ~ 0
RB7
Text Notes 8800 4250 0    60   ~ 0
Module MAX232
NoConn ~ 9950 5750
NoConn ~ 9950 5950
NoConn ~ 8350 5950
NoConn ~ 8350 5750
Text Label 8150 5850 0    60   ~ 0
RX
Text Label 8150 5650 0    60   ~ 0
TX
$Comp
L C C15
U 1 1 4BF244DE
P 10400 4750
F 0 "C15" H 10450 4850 50  0000 L CNN
F 1 "27p" H 10450 4650 50  0000 L CNN
	1    10400 4750
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C16
U 1 1 4BF244D6
P 10700 4750
F 0 "C16" H 10750 4850 50  0000 L CNN
F 1 "1u" H 10750 4650 50  0000 L CNN
	1    10700 4750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 4BF24248
P 10150 4500
F 0 "#PWR05" H 10150 4600 30  0001 C CNN
F 1 "VCC" H 10150 4600 30  0000 C CNN
	1    10150 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 4BF24247
P 10550 5500
F 0 "#PWR06" H 10550 5500 30  0001 C CNN
F 1 "GND" H 10550 5430 30  0001 C CNN
	1    10550 5500
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C13
U 1 1 4BF24246
P 10150 4750
F 0 "C13" H 10200 4850 50  0000 L CNN
F 1 "1u" H 10200 4650 50  0000 L CNN
	1    10150 4750
	-1   0    0    1   
$EndComp
$Comp
L CAPAPOL C14
U 1 1 4BF24245
P 10250 5450
F 0 "C14" H 10300 5550 50  0000 L CNN
F 1 "1u" H 10300 5350 50  0000 L CNN
	1    10250 5450
	0    1    -1   0   
$EndComp
$Comp
L CAPAPOL C10
U 1 1 4BF24244
P 8150 5250
F 0 "C10" H 8200 5350 50  0000 L CNN
F 1 "1u" H 8200 5150 50  0000 L CNN
	1    8150 5250
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C9
U 1 1 4BF24243
P 8150 4750
F 0 "C9" H 8200 4850 50  0000 L CNN
F 1 "1u" H 8200 4650 50  0000 L CNN
	1    8150 4750
	1    0    0    -1  
$EndComp
$Comp
L MAX232 U4
U 1 1 4BF24242
P 9150 5250
F 0 "U4" H 9150 6100 70  0000 C CNN
F 1 "MAX232" H 9150 4400 70  0000 C CNN
	1    9150 5250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 4BD0064A
P 1100 4500
F 0 "#PWR07" H 1100 4600 30  0001 C CNN
F 1 "VCC" H 1100 4600 30  0000 C CNN
	1    1100 4500
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR08
U 1 1 4BD0062E
P 4450 4300
F 0 "#PWR08" H 4450 4250 20  0001 C CNN
F 1 "+12V" H 4450 4400 30  0000 C CNN
	1    4450 4300
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR09
U 1 1 4BCC77C2
P 3200 4500
F 0 "#PWR09" H 3200 4600 30  0001 C CNN
F 1 "VCC" H 3200 4600 30  0000 C CNN
	1    3200 4500
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR010
U 1 1 4BCC77BE
P 5150 5200
F 0 "#PWR010" H 5150 5300 30  0001 C CNN
F 1 "VCC" H 5150 5300 30  0000 C CNN
	1    5150 5200
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR012
U 1 1 4BCC776C
P 7200 2600
F 0 "#PWR012" H 7200 2700 30  0001 C CNN
F 1 "VCC" H 7200 2700 30  0000 C CNN
	1    7200 2600
	1    0    0    -1  
$EndComp
Text Label 850  4100 0    60   ~ 0
RB0
Text Label 8350 1750 0    60   ~ 0
RA4
Text Label 10800 2200 2    60   ~ 0
RB0
Text Label 7250 3050 2    60   ~ 0
RB6
Text Label 7250 2900 2    60   ~ 0
RB7
Text Label 10800 1450 2    60   ~ 0
RB5
Text Label 8400 3100 0    60   ~ 0
Mclr
Text Label 4700 4100 2    60   ~ 0
RC4
Text Label 10800 2050 2    60   ~ 0
RB1
$Comp
L R R2
U 1 1 4B27919F
P 6750 5600
F 0 "R2" V 6830 5600 50  0000 C CNN
F 1 "1K" V 6750 5600 50  0000 C CNN
	1    6750 5600
	0    1    1    0   
$EndComp
$Comp
L CAPAPOL C6
U 1 1 4B2128A6
P 4950 5400
F 0 "C6" H 5000 5500 50  0000 L CNN
F 1 "1u" H 5000 5300 50  0000 L CNN
	1    4950 5400
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 4B2128A5
P 4650 5400
F 0 "C5" H 4700 5500 50  0000 L CNN
F 1 "27p" H 4700 5300 50  0000 L CNN
	1    4650 5400
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C11
U 1 1 4B21289C
P 8200 3450
F 0 "C11" H 8250 3550 50  0000 L CNN
F 1 "1u" H 8250 3350 50  0000 L CNN
	1    8200 3450
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 4B21289B
P 8500 3450
F 0 "C12" H 8550 3550 50  0000 L CNN
F 1 "27p" H 8550 3350 50  0000 L CNN
	1    8500 3450
	1    0    0    -1  
$EndComp
Text Label 6750 5900 2    60   ~ 0
CANTX
Text Label 6750 5800 2    60   ~ 0
CANRX
Text Notes 2150 3450 0    60   ~ 0
Connexion Mezzanine
Text Label 2950 4100 0    60   ~ 0
RC3
Text Label 2600 4100 2    60   ~ 0
RB1
Text Label 2950 4300 0    60   ~ 0
RC5
Text Label 850  4300 0    60   ~ 0
RC2
Text Label 4700 3900 2    60   ~ 0
RC1
Text Label 2950 3900 0    60   ~ 0
RC0
Text Label 2600 3900 2    60   ~ 0
RA5
Text Label 850  3900 0    60   ~ 0
RA4
Text Label 4700 3700 2    60   ~ 0
RA3
Text Label 2950 3700 0    60   ~ 0
RA2
Text Label 2600 3700 2    60   ~ 0
RA1
Text Label 850  3700 0    60   ~ 0
RA0
$Comp
L GND #PWR016
U 1 1 4B20D524
P 4400 4600
F 0 "#PWR016" H 4400 4600 30  0001 C CNN
F 1 "GND" H 4400 4530 30  0001 C CNN
	1    4400 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 4B20D519
P 2300 4600
F 0 "#PWR017" H 2300 4600 30  0001 C CNN
F 1 "GND" H 2300 4530 30  0001 C CNN
	1    2300 4600
	1    0    0    -1  
$EndComp
Text Notes 9200 900  0    60   ~ 0
Micro-controleur
$Comp
L GND #PWR018
U 1 1 4B052057
P 4800 5650
F 0 "#PWR018" H 4800 5650 30  0001 C CNN
F 1 "GND" H 4800 5580 30  0001 C CNN
	1    4800 5650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 4B051F79
P 7250 2750
F 0 "#PWR019" H 7250 2750 30  0001 C CNN
F 1 "GND" H 7250 2680 30  0001 C CNN
	1    7250 2750
	0    -1   -1   0   
$EndComp
Text Label 8350 1900 0    60   ~ 0
RA5
Text Label 8350 1600 0    60   ~ 0
RA3
Text Label 8350 1450 0    60   ~ 0
RA2
Text Label 8350 1300 0    60   ~ 0
RA1
Text Label 8350 1150 0    60   ~ 0
RA0
Text Label 4900 5900 0    60   ~ 0
CANL
Text Label 4900 5800 0    60   ~ 0
CANH
Text Notes 5500 5200 0    60   ~ 0
Tranceiver CAN
Text Notes 5950 2250 0    60   ~ 0
Programmateur PIC
Text Label 10800 2350 2    60   ~ 0
RX
Text Label 10800 2500 2    60   ~ 0
TX
Text Label 10800 2650 2    60   ~ 0
RC5
Text Label 10800 2800 2    60   ~ 0
RC4
Text Label 10800 2950 2    60   ~ 0
RC3
$Comp
L GND #PWR020
U 1 1 47B1984C
P 7000 5650
F 0 "#PWR020" H 7000 5650 30  0001 C CNN
F 1 "GND" H 7000 5580 30  0001 C CNN
	1    7000 5650
	1    0    0    -1  
$EndComp
Text Label 10850 1900 2    60   ~ 0
CANTX
Text Label 10850 1750 2    60   ~ 0
CANRX
$Comp
L CAN_MCP2551 U2
U 1 1 47B197F8
P 5750 6100
F 0 "U2" H 5750 6100 60  0000 C CNN
F 1 "CAN_MCP2551" H 5850 6850 60  0000 C CNN
	1    5750 6100
	1    0    0    -1  
$EndComp
Text Label 10800 3250 2    60   ~ 0
RC1
Text Label 10800 3100 2    60   ~ 0
RC2
Text Label 10800 3400 2    60   ~ 0
RC0
Text Label 7250 3200 2    60   ~ 0
RB5
Text Label 7250 2450 2    60   ~ 0
Mclr
$Comp
L CNT_RJ12 U3
U 1 1 453CACE9
P 6550 3050
F 0 "U3" H 6850 2750 60  0000 C CNN
F 1 "ICD" H 6850 3800 60  0000 C CNN
	1    6550 3050
	-1   0    0    -1  
$EndComp
Text Label 10800 1300 2    60   ~ 0
RB6
$Comp
L GND #PWR022
U 1 1 453CA2A4
P 7850 2350
F 0 "#PWR022" H 7850 2350 30  0001 C CNN
F 1 "GND" H 7850 2280 30  0001 C CNN
	1    7850 2350
	0    1    1    0   
$EndComp
$Comp
L C C8
U 1 1 453CA28F
P 8100 2650
F 0 "C8" H 8150 2750 50  0000 L CNN
F 1 "27p" H 8150 2550 50  0000 L CNN
	1    8100 2650
	0    1    1    0   
$EndComp
$Comp
L C C7
U 1 1 453CA280
P 8100 2050
F 0 "C7" H 8150 2150 50  0000 L CNN
F 1 "27p" H 8150 1950 50  0000 L CNN
	1    8100 2050
	0    1    1    0   
$EndComp
$Comp
L CRYSTAL X1
U 1 1 453CA252
P 8350 2350
F 0 "X1" H 8350 2500 60  0000 C CNN
F 1 "10M" H 8350 2200 60  0000 C CNN
	1    8350 2350
	0    1    1    0   
$EndComp
$EndSCHEMATC
