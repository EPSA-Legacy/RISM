EESchema Schematic File Version 2  date 17/03/2011 18:39:53
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
LIBS:carte_contacteurs-cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title ""
Date "17 mar 2011"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4250 5100 4400 5100
Wire Wire Line
	4250 5200 4250 5100
Wire Wire Line
	2600 5200 4250 5200
Wire Wire Line
	4300 4900 4400 4900
Wire Bus Line
	2650 3100 2650 3900
Wire Bus Line
	2650 3900 5050 3900
Wire Bus Line
	5050 3900 5050 3100
Wire Wire Line
	3750 3350 2800 3350
Wire Wire Line
	2800 3250 3750 3250
Wire Wire Line
	6650 1700 7500 1700
Connection ~ 3050 2450
Wire Wire Line
	3050 2300 3050 2450
Wire Bus Line
	5900 3400 5900 2700
Wire Bus Line
	5900 3400 7900 3400
Wire Bus Line
	7900 3400 7900 2700
Wire Bus Line
	7900 2700 5900 2700
Wire Wire Line
	6650 3100 7250 3100
Wire Wire Line
	6650 2000 7250 2000
Wire Wire Line
	6650 1800 7500 1800
Wire Wire Line
	3350 1750 3750 1750
Wire Wire Line
	3750 1950 3050 1950
Wire Wire Line
	3750 1650 3250 1650
Wire Wire Line
	3250 1650 3050 1650
Wire Wire Line
	3250 1650 3250 2450
Wire Wire Line
	3250 2450 3750 2450
Connection ~ 3250 1650
Wire Wire Line
	3750 2750 3050 2750
Wire Wire Line
	3750 2550 3350 2550
Wire Wire Line
	6650 3000 7250 3000
Wire Wire Line
	3750 1850 3450 1850
Wire Bus Line
	5900 2300 5900 1300
Wire Bus Line
	5900 2300 7900 2300
Wire Bus Line
	7900 2300 7900 1300
Wire Bus Line
	7900 1300 5900 1300
Wire Bus Line
	5050 1250 2650 1250
Wire Bus Line
	5050 1250 5050 3150
Wire Bus Line
	2650 1250 2650 3150
Wire Wire Line
	3750 2650 3100 2650
Wire Wire Line
	3100 2650 3100 2450
Wire Wire Line
	3100 2450 3050 2450
Wire Wire Line
	3050 2450 2800 2450
Wire Notes Line
	8700 2250 8700 1400
Wire Notes Line
	8700 2250 9450 2250
Wire Notes Line
	9450 2250 9450 1400
Wire Notes Line
	9450 1400 8700 1400
Wire Wire Line
	6650 1900 7500 1900
Wire Wire Line
	6650 3200 7250 3200
Wire Wire Line
	3750 3550 2800 3550
Wire Wire Line
	3750 3450 3500 3450
Wire Wire Line
	5600 5000 6550 5000
Wire Bus Line
	6750 4250 2300 4250
Wire Bus Line
	6750 4250 6750 5550
Wire Bus Line
	6750 5550 2300 5550
Wire Bus Line
	2300 5550 2300 4250
Wire Wire Line
	2600 4900 3400 4900
Text Notes 2350 4350 0    60   ~ 0
Circuit Logique Etat contacteur +\n
Text Label 6550 5000 2    60   ~ 0
etat_contacteur+
Text Label 2600 5200 0    60   ~ 0
cmd_contacteur+
Text Label 2600 4900 0    60   ~ 0
cmd_precharge
$Comp
L 74LS08 U?
U 1 1 4D711A82
P 5000 5000
F 0 "U?" H 5000 5050 60  0000 C CNN
F 1 "74LS08" H 5000 4950 60  0000 C CNN
	1    5000 5000
	1    0    0    -1  
$EndComp
$Comp
L 74LS04 U?
U 1 1 4D711A74
P 3850 4900
F 0 "U?" H 4045 5015 60  0000 C CNN
F 1 "74LS04" H 4040 4775 60  0000 C CNN
	1    3850 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4D7117C5
P 3500 3450
F 0 "#PWR?" H 3500 3450 30  0001 C CNN
F 1 "GND" H 3500 3380 30  0001 C CNN
	1    3500 3450
	0    1    1    0   
$EndComp
Text Label 2800 3350 0    60   ~ 0
cmd_precharge
Text Label 2800 3550 0    60   ~ 0
precharge
Text Label 2800 3250 0    60   ~ 0
Alim contacteurs
$Comp
L REED9081_SYMBIOZ U?
U 1 1 4D711761
P 4150 3400
F 0 "U?" H 4200 3700 60  0000 C CNN
F 1 "REED9081_SYMBIOZ" H 4250 3100 60  0000 C CNN
	1    4150 3400
	1    0    0    -1  
$EndComp
Text Label 7250 3200 2    60   ~ 0
precharge
$Comp
L CONN_3 K?
U 1 1 4D71171F
P 6300 3100
F 0 "K?" V 6250 3100 50  0000 C CNN
F 1 "CONN_3" V 6350 3100 40  0000 C CNN
	1    6300 3100
	-1   0    0    1   
$EndComp
Text Label 7500 1900 2    60   ~ 0
cmd_precharge
Text Label 7500 1700 2    60   ~ 0
cmd_contacteur-
$Comp
L CONN_4 P?
U 1 1 4D7116A0
P 6300 1850
F 0 "P?" V 6250 1850 50  0000 C CNN
F 1 "CONN_4" V 6350 1850 50  0000 C CNN
	1    6300 1850
	-1   0    0    1   
$EndComp
Text Notes 8750 1500 0    60   ~ 0
Trous meca
NoConn ~ 9300 2100
NoConn ~ 9300 1950
NoConn ~ 9300 1800
$Comp
L CONN_1 P7
U 1 1 4D710C6A
P 9150 2100
F 0 "P7" H 9230 2100 40  0000 L CNN
F 1 "CONN_1" H 9150 2155 30  0001 C CNN
	1    9150 2100
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 P6
U 1 1 4D710C68
P 9150 1950
F 0 "P6" H 9230 1950 40  0000 L CNN
F 1 "CONN_1" H 9150 2005 30  0001 C CNN
	1    9150 1950
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 P5
U 1 1 4D710C67
P 9150 1800
F 0 "P5" H 9230 1800 40  0000 L CNN
F 1 "CONN_1" H 9150 1855 30  0001 C CNN
	1    9150 1800
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG01
U 1 1 4D710A99
P 3050 2300
F 0 "#FLG01" H 3050 2570 30  0001 C CNN
F 1 "PWR_FLAG" H 3050 2530 30  0000 C CNN
	1    3050 2300
	1    0    0    -1  
$EndComp
Text Notes 2750 1400 0    60   ~ 0
Relais\n
Text Notes 5950 2800 0    60   ~ 0
commande contacteurs
Text Notes 6000 1450 0    60   ~ 0
commande relais
$Comp
L GND #PWR02
U 1 1 4D710936
P 2800 2450
F 0 "#PWR02" H 2800 2450 30  0001 C CNN
F 1 "GND" H 2800 2380 30  0001 C CNN
	1    2800 2450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 4D71091B
P 3450 1850
F 0 "#PWR03" H 3450 1850 30  0001 C CNN
F 1 "GND" H 3450 1780 30  0001 C CNN
	1    3450 1850
	0    1    1    0   
$EndComp
Text Label 7250 3100 2    60   ~ 0
contacteur-
Text Label 7250 3000 2    60   ~ 0
contacteur+
Text Label 3050 2750 0    60   ~ 0
contacteur-
Text Label 3050 1950 0    60   ~ 0
contacteur+
$Comp
L GND #PWR04
U 1 1 4D7108BC
P 7250 2000
F 0 "#PWR04" H 7250 2000 30  0001 C CNN
F 1 "GND" H 7250 1930 30  0001 C CNN
	1    7250 2000
	0    -1   -1   0   
$EndComp
Text Label 7500 1800 2    60   ~ 0
cmd_contacteur+
Text Label 3350 2550 0    60   ~ 0
cmd_contacteur-
Text Label 3350 1750 0    60   ~ 0
etat_contacteur+
Text Label 3100 1650 0    60   ~ 0
Alim contacteurs
$Comp
L CONN_1 P1
U 1 1 4D7107A4
P 2900 1650
F 0 "P1" H 2980 1650 40  0000 L CNN
F 1 "CONN_1" H 2900 1705 30  0001 C CNN
	1    2900 1650
	-1   0    0    1   
$EndComp
$Comp
L REED9081_SYMBIOZ U2
U 1 1 4D71074E
P 4150 2600
F 0 "U2" H 4200 2900 60  0000 C CNN
F 1 "REED9081_SYMBIOZ" H 4250 2300 60  0000 C CNN
	1    4150 2600
	1    0    0    -1  
$EndComp
$Comp
L REED9081_SYMBIOZ U1
U 1 1 4D71073F
P 4150 1800
F 0 "U1" H 4200 2100 60  0000 C CNN
F 1 "REED9081_SYMBIOZ" H 4250 1500 60  0000 C CNN
	1    4150 1800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
