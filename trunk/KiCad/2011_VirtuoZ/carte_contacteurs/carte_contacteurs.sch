EESchema Schematic File Version 2  date 05/04/2011 00:04:45
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
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "Carte contacteurs"
Date "4 apr 2011"
Rev "1.0"
Comp "EPSA - VirtuoZ"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6850 2950 6850 3000
Wire Wire Line
	4750 1650 4700 1650
Wire Wire Line
	1600 1750 1600 1800
Wire Wire Line
	4600 5100 4600 5450
Wire Wire Line
	4600 5100 4800 5100
Wire Wire Line
	4750 1850 4500 1850
Wire Wire Line
	4750 1950 3800 1950
Wire Wire Line
	4750 1750 3800 1750
Wire Wire Line
	4750 2500 3800 2500
Wire Wire Line
	4750 2700 3800 2700
Wire Wire Line
	4750 2600 4500 2600
Wire Notes Line
	800  2350 800  1450
Wire Notes Line
	800  2350 2950 2350
Wire Notes Line
	2950 2350 2950 1450
Wire Notes Line
	2950 1450 800  1450
Connection ~ 2000 2200
Connection ~ 2450 1800
Wire Wire Line
	2400 1800 2750 1800
Connection ~ 2100 5250
Wire Wire Line
	2100 5300 2100 5250
Wire Wire Line
	1950 5250 2250 5250
Wire Wire Line
	6650 2000 6650 1950
Wire Wire Line
	6650 1950 6550 1950
Wire Wire Line
	1600 1800 1400 1800
Wire Notes Line
	5800 1350 5800 3900
Wire Notes Line
	5800 1350 3600 1350
Wire Notes Line
	3600 1350 3600 3900
Wire Notes Line
	3600 3900 5800 3900
Wire Notes Line
	5950 2150 5950 1350
Wire Notes Line
	5950 2150 7600 2150
Wire Notes Line
	7600 2150 7600 1350
Wire Notes Line
	7600 1350 5950 1350
Connection ~ 1450 1800
Wire Wire Line
	1450 1750 1450 1800
Wire Wire Line
	6500 4700 6500 4800
Wire Wire Line
	5200 5300 5200 5200
Wire Wire Line
	3800 4600 3800 4700
Connection ~ 6100 5000
Wire Wire Line
	6100 5100 6100 4900
Connection ~ 3400 4900
Wire Wire Line
	3400 5000 3400 4800
Wire Wire Line
	2600 4900 3400 4900
Wire Wire Line
	7300 5000 8250 5000
Wire Wire Line
	4750 3400 4500 3400
Wire Wire Line
	4750 3500 3800 3500
Wire Wire Line
	6850 3100 7450 3100
Wire Wire Line
	6550 1650 7400 1650
Wire Notes Line
	9450 1400 8700 1400
Wire Notes Line
	9450 1400 9450 2250
Wire Notes Line
	9450 2250 8700 2250
Wire Notes Line
	8700 2250 8700 1400
Wire Wire Line
	6850 3300 7450 3300
Wire Wire Line
	6550 1850 7400 1850
Wire Wire Line
	6850 3200 7450 3200
Wire Wire Line
	4750 3300 3800 3300
Wire Wire Line
	4600 4900 4800 4900
Wire Wire Line
	6000 5000 6100 5000
Wire Notes Line
	2300 4150 8350 4150
Wire Notes Line
	8350 4150 8350 5650
Wire Notes Line
	8350 5650 2300 5650
Wire Wire Line
	3800 5100 3800 5200
Wire Wire Line
	5200 4800 5200 4700
Wire Wire Line
	6500 5200 6500 5300
Wire Notes Line
	7600 3450 6100 3450
Wire Notes Line
	7600 3450 7600 2650
Wire Notes Line
	7600 2650 6100 2650
Wire Notes Line
	6100 2650 6100 3450
Wire Wire Line
	1400 2000 1600 2000
Wire Wire Line
	6850 3000 7450 3000
Wire Wire Line
	7400 1750 6550 1750
Wire Wire Line
	1950 4850 2250 4850
Wire Wire Line
	2100 4800 2100 4850
Connection ~ 2100 4850
Wire Notes Line
	2350 4150 1550 4150
Wire Notes Line
	1550 4150 1550 5650
Wire Notes Line
	1550 5650 2350 5650
Wire Wire Line
	2750 1800 2750 1750
Wire Wire Line
	2750 2200 1600 2200
Wire Wire Line
	1600 2200 1600 2000
Wire Wire Line
	2000 2100 2000 2250
Wire Wire Line
	4600 5450 2600 5450
Connection ~ 2450 2200
Wire Wire Line
	4750 2400 4700 2400
Wire Wire Line
	4700 3200 4750 3200
$Comp
L PWR_FLAG #FLG01
U 1 1 4D9A4072
P 6850 2950
F 0 "#FLG01" H 6850 3220 30  0001 C CNN
F 1 "PWR_FLAG" H 6850 3180 30  0000 C CNN
	1    6850 2950
	1    0    0    -1  
$EndComp
$Comp
L +12P #PWR02
U 1 1 4D9A405C
P 4700 3200
F 0 "#PWR02" H 4700 3170 30  0001 C CNN
F 1 "+12P" H 4700 3300 30  0000 C CNN
	1    4700 3200
	1    0    0    -1  
$EndComp
$Comp
L +12P #PWR03
U 1 1 4D9A405B
P 4700 2400
F 0 "#PWR03" H 4700 2370 30  0001 C CNN
F 1 "+12P" H 4700 2500 30  0000 C CNN
	1    4700 2400
	1    0    0    -1  
$EndComp
$Comp
L +12P #PWR04
U 1 1 4D9A4058
P 4700 1650
F 0 "#PWR04" H 4700 1620 30  0001 C CNN
F 1 "+12P" H 4700 1750 30  0000 C CNN
	1    4700 1650
	1    0    0    -1  
$EndComp
$Comp
L +12P #PWR05
U 1 1 4D9A4040
P 7450 3000
F 0 "#PWR05" H 7450 2970 30  0001 C CNN
F 1 "+12P" H 7450 3100 30  0000 C CNN
	1    7450 3000
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR06
U 1 1 4D9A4025
P 1600 1750
F 0 "#PWR06" H 1600 1700 20  0001 C CNN
F 1 "+12V" H 1600 1850 30  0000 C CNN
	1    1600 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 4D9A32D4
P 4500 1850
F 0 "#PWR07" H 4500 1850 30  0001 C CNN
F 1 "GND" H 4500 1780 30  0001 C CNN
	1    4500 1850
	0    1    1    0   
$EndComp
Text Label 3800 1750 0    60   ~ 0
cmd_secu_cont+
Text Label 3800 1950 0    60   ~ 0
contacteur+
$Comp
L REED9081_SYMBIOZ U1
U 1 1 4D9A32D3
P 5150 1800
F 0 "U1" H 5200 2100 60  0000 C CNN
F 1 "REED9081_SYMBIOZ" H 5250 1500 60  0000 C CNN
	1    5150 1800
	1    0    0    -1  
$EndComp
$Comp
L REED9081_SYMBIOZ U3
U 1 1 4D9A32CB
P 5150 2550
F 0 "U3" H 5200 2850 60  0000 C CNN
F 1 "REED9081_SYMBIOZ" H 5250 2250 60  0000 C CNN
	1    5150 2550
	1    0    0    -1  
$EndComp
Text Label 3800 2700 0    60   ~ 0
contacteur-
Text Label 3800 2500 0    60   ~ 0
cmd_contacteur-
$Comp
L GND #PWR08
U 1 1 4D9A32CA
P 4500 2600
F 0 "#PWR08" H 4500 2600 30  0001 C CNN
F 1 "GND" H 4500 2530 30  0001 C CNN
	1    4500 2600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR09
U 1 1 4D9A322C
P 2000 2250
F 0 "#PWR09" H 2000 2250 30  0001 C CNN
F 1 "GND" H 2000 2180 30  0001 C CNN
	1    2000 2250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR010
U 1 1 4D9A31C4
P 2100 4800
F 0 "#PWR010" H 2100 4900 30  0001 C CNN
F 1 "VCC" H 2100 4900 30  0000 C CNN
	1    2100 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 4D9A31C0
P 2100 5300
F 0 "#PWR011" H 2100 5300 30  0001 C CNN
F 1 "GND" H 2100 5230 30  0001 C CNN
	1    2100 5300
	1    0    0    -1  
$EndComp
$Comp
L CP C3
U 1 1 4D9A31A2
P 1950 5050
F 0 "C3" H 2000 5150 50  0000 L CNN
F 1 "1u" H 2000 4950 50  0000 L CNN
	1    1950 5050
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 4D9A319F
P 2450 2000
F 0 "C1" H 2500 2100 50  0000 L CNN
F 1 "10u" H 2500 1900 50  0000 L CNN
	1    2450 2000
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 4D9A319C
P 2750 2000
F 0 "C2" H 2800 2100 50  0000 L CNN
F 1 "27p" H 2800 1900 50  0000 L CNN
	1    2750 2000
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 4D9A3183
P 2250 5050
F 0 "C4" H 2300 5150 50  0000 L CNN
F 1 "27p" H 2300 4950 50  0000 L CNN
	1    2250 5050
	1    0    0    -1  
$EndComp
$Comp
L LM7805 U2
U 1 1 4D9A2FB9
P 2000 1850
F 0 "U2" H 2150 1654 60  0000 C CNN
F 1 "LM7805" H 2000 2050 60  0000 C CNN
	1    2000 1850
	1    0    0    -1  
$EndComp
Text Notes 1050 1600 2    60   ~ 0
Alim
$Comp
L CONN_1 MECA4
U 1 1 4D9A28D3
P 9150 2050
F 0 "MECA4" H 9230 2050 40  0000 L CNN
F 1 "MECA" H 9150 2105 30  0001 C CNN
	1    9150 2050
	-1   0    0    1   
$EndComp
NoConn ~ 9300 2050
$Comp
L GND #PWR012
U 1 1 4D99B9FD
P 3800 5200
F 0 "#PWR012" H 3800 5200 30  0001 C CNN
F 1 "GND" H 3800 5130 30  0001 C CNN
	1    3800 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 4D99B9FB
P 5200 5300
F 0 "#PWR013" H 5200 5300 30  0001 C CNN
F 1 "GND" H 5200 5230 30  0001 C CNN
	1    5200 5300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR014
U 1 1 4D99B9EC
P 3800 4600
F 0 "#PWR014" H 3800 4700 30  0001 C CNN
F 1 "VCC" H 3800 4700 30  0000 C CNN
	1    3800 4600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR015
U 1 1 4D99B9E9
P 5200 4700
F 0 "#PWR015" H 5200 4800 30  0001 C CNN
F 1 "VCC" H 5200 4800 30  0000 C CNN
	1    5200 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 4D99B9DD
P 6500 5300
F 0 "#PWR016" H 6500 5300 30  0001 C CNN
F 1 "GND" H 6500 5230 30  0001 C CNN
	1    6500 5300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR017
U 1 1 4D99B9D8
P 6500 4700
F 0 "#PWR017" H 6500 4800 30  0001 C CNN
F 1 "VCC" H 6500 4800 30  0000 C CNN
	1    6500 4700
	1    0    0    -1  
$EndComp
$Comp
L 4011 U5
U 3 1 4D99B988
P 6700 5000
F 0 "U5" H 6700 5050 60  0000 C CNN
F 1 "4011" H 6700 4950 60  0000 C CNN
	3    6700 5000
	1    0    0    -1  
$EndComp
$Comp
L 4011 U5
U 2 1 4D99B972
P 5400 5000
F 0 "U5" H 5400 5050 60  0000 C CNN
F 1 "4011" H 5400 4950 60  0000 C CNN
	2    5400 5000
	1    0    0    -1  
$EndComp
$Comp
L 4011 U5
U 1 1 4D99B92B
P 4000 4900
F 0 "U5" H 4000 4950 60  0000 C CNN
F 1 "4011" H 4000 4850 60  0000 C CNN
	1    4000 4900
	1    0    0    -1  
$EndComp
$Comp
L CONN_4 P3
U 1 1 4D99B846
P 6500 3150
F 0 "P3" V 6450 3150 50  0000 C CNN
F 1 "CONTACT." V 6550 3150 50  0000 C CNN
	1    6500 3150
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR018
U 1 1 4D99B73F
P 2750 1750
F 0 "#PWR018" H 2750 1850 30  0001 C CNN
F 1 "VCC" H 2750 1850 30  0000 C CNN
	1    2750 1750
	-1   0    0    -1  
$EndComp
$Comp
L CONN_2 P2
U 1 1 4D99B720
P 1050 1900
F 0 "P2" V 1000 1900 40  0000 C CNN
F 1 "ALIM" V 1100 1900 40  0000 C CNN
	1    1050 1900
	-1   0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG019
U 1 1 4D99B6DE
P 1450 1750
F 0 "#FLG019" H 1450 2020 30  0001 C CNN
F 1 "PWR_FLAG" H 1450 1980 30  0000 C CNN
	1    1450 1750
	1    0    0    -1  
$EndComp
Text Notes 1650 4300 0    60   ~ 0
Circuit Logique Etat contacteur +\n
Text Label 8250 5000 2    60   ~ 0
cmd_secu_cont+
Text Label 2600 5450 0    60   ~ 0
cmd_contacteur+
Text Label 2600 4900 0    60   ~ 0
cmd_precharge
$Comp
L GND #PWR020
U 1 1 4D7117C5
P 4500 3400
F 0 "#PWR020" H 4500 3400 30  0001 C CNN
F 1 "GND" H 4500 3330 30  0001 C CNN
	1    4500 3400
	0    1    1    0   
$EndComp
Text Label 3800 3300 0    60   ~ 0
cmd_precharge
Text Label 3800 3500 0    60   ~ 0
precharge
$Comp
L REED9081_SYMBIOZ U4
U 1 1 4D711761
P 5150 3350
F 0 "U4" H 5200 3650 60  0000 C CNN
F 1 "REED9081_SYMBIOZ" H 5250 3050 60  0000 C CNN
	1    5150 3350
	1    0    0    -1  
$EndComp
Text Label 7450 3100 2    60   ~ 0
precharge
Text Label 7400 1850 2    60   ~ 0
cmd_precharge
Text Label 7400 1750 2    60   ~ 0
cmd_contacteur-
$Comp
L CONN_4 P1
U 1 1 4D7116A0
P 6200 1800
F 0 "P1" V 6150 1800 50  0000 C CNN
F 1 "INTERFACE" V 6250 1800 50  0000 C CNN
	1    6200 1800
	-1   0    0    -1  
$EndComp
Text Notes 8750 1500 0    60   ~ 0
Trous meca
NoConn ~ 9300 1950
NoConn ~ 9300 1850
NoConn ~ 9300 1750
$Comp
L CONN_1 MECA3
U 1 1 4D710C6A
P 9150 1950
F 0 "MECA3" H 9230 1950 40  0000 L CNN
F 1 "MECA" H 9150 2005 30  0001 C CNN
	1    9150 1950
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 MECA2
U 1 1 4D710C68
P 9150 1850
F 0 "MECA2" H 9230 1850 40  0000 L CNN
F 1 "MECA" H 9150 1905 30  0001 C CNN
	1    9150 1850
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 MECA1
U 1 1 4D710C67
P 9150 1750
F 0 "MECA1" H 9230 1750 40  0000 L CNN
F 1 "MECA" H 9150 1805 30  0001 C CNN
	1    9150 1750
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG021
U 1 1 4D710A99
P 1600 2200
F 0 "#FLG021" H 1600 2470 30  0001 C CNN
F 1 "PWR_FLAG" H 1600 2430 30  0000 C CNN
	1    1600 2200
	0    -1   -1   0   
$EndComp
Text Notes 3650 1500 0    60   ~ 0
Relais\n
Text Notes 6150 2800 0    60   ~ 0
Contacteurs
Text Notes 6000 1450 0    60   ~ 0
Commande contacteurs
Text Label 7450 3200 2    60   ~ 0
contacteur-
Text Label 7450 3300 2    60   ~ 0
contacteur+
$Comp
L GND #PWR022
U 1 1 4D7108BC
P 6650 2000
F 0 "#PWR022" H 6650 2000 30  0001 C CNN
F 1 "GND" H 6650 1930 30  0001 C CNN
	1    6650 2000
	-1   0    0    -1  
$EndComp
Text Label 7400 1650 2    60   ~ 0
cmd_contacteur+
$EndSCHEMATC
