EESchema Schematic File Version 2  date 04/04/2011 15:15:47
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
Date "4 apr 2011"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6500 5200 6500 5300
Wire Wire Line
	5200 4800 5200 4700
Wire Wire Line
	3800 5100 3800 5200
Wire Notes Line
	2300 5650 2300 4150
Wire Notes Line
	2300 5650 8350 5650
Wire Notes Line
	8350 5650 8350 4150
Wire Notes Line
	8350 4150 2300 4150
Wire Wire Line
	6100 5000 6000 5000
Wire Wire Line
	4600 4900 4800 4900
Wire Wire Line
	1900 1950 1750 1950
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
	6650 1900 7250 1900
Wire Wire Line
	6650 1800 7500 1800
Wire Wire Line
	3350 1750 3750 1750
Wire Wire Line
	3750 1950 3050 1950
Wire Wire Line
	3050 1650 3750 1650
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
	3100 2450 2800 2450
Wire Notes Line
	8700 2250 8700 1400
Wire Notes Line
	8700 2250 9450 2250
Wire Notes Line
	9450 2250 9450 1400
Wire Notes Line
	9450 1400 8700 1400
Wire Wire Line
	6650 2000 7500 2000
Wire Wire Line
	6650 3200 7250 3200
Wire Wire Line
	3750 3550 2800 3550
Wire Wire Line
	3750 3450 3500 3450
Wire Wire Line
	7300 5000 8250 5000
Wire Wire Line
	3400 4900 2600 4900
Wire Wire Line
	4400 5450 4400 5100
Wire Wire Line
	4400 5450 2600 5450
Wire Wire Line
	1750 2150 1900 2150
Wire Notes Line
	1150 2350 1150 1700
Wire Notes Line
	1150 2350 2250 2350
Wire Notes Line
	2250 2350 2250 1700
Wire Notes Line
	2250 1700 1150 1700
Wire Wire Line
	3400 5000 3400 4800
Connection ~ 3400 4900
Wire Wire Line
	4400 5100 4800 5100
Wire Wire Line
	6100 5100 6100 4900
Connection ~ 6100 5000
Wire Wire Line
	3800 4600 3800 4700
Wire Wire Line
	5200 5300 5200 5200
Wire Wire Line
	6500 4700 6500 4800
$Comp
L GND #PWR01
U 1 1 4D99B9FD
P 3800 5200
F 0 "#PWR01" H 3800 5200 30  0001 C CNN
F 1 "GND" H 3800 5130 30  0001 C CNN
	1    3800 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 4D99B9FB
P 5200 5300
F 0 "#PWR02" H 5200 5300 30  0001 C CNN
F 1 "GND" H 5200 5230 30  0001 C CNN
	1    5200 5300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 4D99B9EC
P 3800 4600
F 0 "#PWR03" H 3800 4700 30  0001 C CNN
F 1 "VCC" H 3800 4700 30  0000 C CNN
	1    3800 4600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 4D99B9E9
P 5200 4700
F 0 "#PWR04" H 5200 4800 30  0001 C CNN
F 1 "VCC" H 5200 4800 30  0000 C CNN
	1    5200 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 4D99B9DD
P 6500 5300
F 0 "#PWR05" H 6500 5300 30  0001 C CNN
F 1 "GND" H 6500 5230 30  0001 C CNN
	1    6500 5300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR06
U 1 1 4D99B9D8
P 6500 4700
F 0 "#PWR06" H 6500 4800 30  0001 C CNN
F 1 "VCC" H 6500 4800 30  0000 C CNN
	1    6500 4700
	1    0    0    -1  
$EndComp
$Comp
L 4011 U4
U 3 1 4D99B988
P 6700 5000
F 0 "U4" H 6700 5050 60  0000 C CNN
F 1 "4011" H 6700 4950 60  0000 C CNN
	3    6700 5000
	1    0    0    -1  
$EndComp
$Comp
L 4011 U4
U 2 1 4D99B972
P 5400 5000
F 0 "U4" H 5400 5050 60  0000 C CNN
F 1 "4011" H 5400 4950 60  0000 C CNN
	2    5400 5000
	1    0    0    -1  
$EndComp
$Comp
L 4011 U4
U 1 1 4D99B92B
P 4000 4900
F 0 "U4" H 4000 4950 60  0000 C CNN
F 1 "4011" H 4000 4850 60  0000 C CNN
	1    4000 4900
	1    0    0    -1  
$EndComp
NoConn ~ 6650 3300
$Comp
L CONN_4 P10
U 1 1 4D99B846
P 6300 3150
F 0 "P10" V 6250 3150 50  0000 C CNN
F 1 "CONN_4" V 6350 3150 50  0000 C CNN
	1    6300 3150
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR07
U 1 1 4D99B745
P 1900 1950
F 0 "#PWR07" H 1900 1950 30  0001 C CNN
F 1 "GND" H 1900 1880 30  0001 C CNN
	1    1900 1950
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR08
U 1 1 4D99B73F
P 1900 2150
F 0 "#PWR08" H 1900 2250 30  0001 C CNN
F 1 "VCC" H 1900 2250 30  0000 C CNN
	1    1900 2150
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P9
U 1 1 4D99B720
P 1400 2050
F 0 "P9" V 1350 2050 40  0000 C CNN
F 1 "CONN_2" V 1450 2050 40  0000 C CNN
	1    1400 2050
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG09
U 1 1 4D99B6DE
P 3250 1650
F 0 "#FLG09" H 3250 1920 30  0001 C CNN
F 1 "PWR_FLAG" H 3250 1880 30  0000 C CNN
	1    3250 1650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR010
U 1 1 4D99B676
P 3050 1650
F 0 "#PWR010" H 3050 1750 30  0001 C CNN
F 1 "VCC" H 3050 1750 30  0000 C CNN
	1    3050 1650
	0    -1   -1   0   
$EndComp
Text Notes 2350 4350 0    60   ~ 0
Circuit Logique Etat contacteur +\n
Text Label 8250 5000 2    60   ~ 0
etat_contacteur+
Text Label 2600 5450 0    60   ~ 0
cmd_contacteur+
Text Label 2600 4900 0    60   ~ 0
cmd_precharge
$Comp
L GND #PWR011
U 1 1 4D7117C5
P 3500 3450
F 0 "#PWR011" H 3500 3450 30  0001 C CNN
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
L REED9081_SYMBIOZ U3
U 1 1 4D711761
P 4150 3400
F 0 "U3" H 4200 3700 60  0000 C CNN
F 1 "REED9081_SYMBIOZ" H 4250 3100 60  0000 C CNN
	1    4150 3400
	1    0    0    -1  
$EndComp
Text Label 7250 3200 2    60   ~ 0
precharge
Text Label 7500 1700 2    60   ~ 0
cmd_precharge
Text Label 7500 1800 2    60   ~ 0
cmd_contacteur-
$Comp
L CONN_4 P8
U 1 1 4D7116A0
P 6300 1850
F 0 "P8" V 6250 1850 50  0000 C CNN
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
L PWR_FLAG #FLG012
U 1 1 4D710A99
P 3050 2300
F 0 "#FLG012" H 3050 2570 30  0001 C CNN
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
L GND #PWR013
U 1 1 4D710936
P 2800 2450
F 0 "#PWR013" H 2800 2450 30  0001 C CNN
F 1 "GND" H 2800 2380 30  0001 C CNN
	1    2800 2450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR014
U 1 1 4D71091B
P 3450 1850
F 0 "#PWR014" H 3450 1850 30  0001 C CNN
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
L GND #PWR015
U 1 1 4D7108BC
P 7250 1900
F 0 "#PWR015" H 7250 1900 30  0001 C CNN
F 1 "GND" H 7250 1830 30  0001 C CNN
	1    7250 1900
	0    -1   -1   0   
$EndComp
Text Label 7500 2000 2    60   ~ 0
cmd_contacteur+
Text Label 3350 2550 0    60   ~ 0
cmd_contacteur-
Text Label 3350 1750 0    60   ~ 0
etat_contacteur+
Text Label 3100 1650 0    60   ~ 0
Alim contacteurs
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
