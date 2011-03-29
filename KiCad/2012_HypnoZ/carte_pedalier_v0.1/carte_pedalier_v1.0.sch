EESchema Schematic File Version 2  date 29/03/2011 19:01:31
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
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "carte pedalier v0.1"
Date "29 mar 2011"
Rev ""
Comp "EPSA Hypnoz"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 1350 2450 0    60   ~ 0
Trous meca
Wire Notes Line
	2200 2350 1300 2350
Wire Notes Line
	2200 2350 2200 3100
Wire Notes Line
	2200 3100 1300 3100
Wire Notes Line
	1300 3100 1300 2350
Wire Wire Line
	6500 5300 6500 5100
Wire Wire Line
	2550 5100 2700 5100
Wire Wire Line
	6500 5100 7000 5100
Wire Wire Line
	5500 2100 4950 2100
Wire Wire Line
	3250 2100 3850 2100
Wire Wire Line
	3650 2900 3850 2900
Wire Notes Line
	8150 4550 5150 4550
Wire Notes Line
	8150 4550 8150 5500
Wire Notes Line
	8150 5500 5150 5500
Wire Notes Line
	5150 5500 5150 4550
Wire Notes Line
	2950 1650 8600 1650
Wire Notes Line
	2950 1650 2950 3550
Wire Notes Line
	2950 3550 8600 3550
Wire Notes Line
	8600 3550 8600 1650
Wire Wire Line
	4950 2900 5150 2900
Wire Wire Line
	5150 2900 5150 2950
Wire Notes Line
	3400 4550 1300 4550
Wire Notes Line
	3400 4550 3400 5500
Wire Notes Line
	3400 5500 1300 5500
Wire Notes Line
	1300 5500 1300 4550
Wire Wire Line
	3700 2950 3700 2900
Connection ~ 3700 2900
Wire Notes Line
	1300 6650 1300 5700
Wire Notes Line
	1300 6650 3400 6650
Wire Notes Line
	3400 6650 3400 5700
Wire Notes Line
	3400 5700 1300 5700
Wire Wire Line
	3250 2300 3850 2300
Wire Wire Line
	6950 4900 6500 4900
Wire Wire Line
	2050 5100 1850 5100
Wire Wire Line
	2300 4950 2300 4850
Wire Wire Line
	2300 4850 2800 4850
Wire Wire Line
	2800 6050 2300 6050
Wire Wire Line
	2300 6050 2300 6150
Wire Wire Line
	2050 6300 1850 6300
Wire Wire Line
	2550 6300 2700 6300
Wire Wire Line
	7000 5300 7250 5300
NoConn ~ 1650 2900
NoConn ~ 1650 2700
$Comp
L CONN_1 P3
U 1 1 4D920C6E
P 1800 2900
F 0 "P3" H 1880 2900 40  0000 L CNN
F 1 "MECA" H 1800 2955 30  0001 C CNN
	1    1800 2900
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P2
U 1 1 4D920C69
P 1800 2700
F 0 "P2" H 1880 2700 40  0000 L CNN
F 1 "MECA" H 1800 2755 30  0001 C CNN
	1    1800 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 4D920C2B
P 7250 5300
F 0 "#PWR01" H 7250 5300 30  0001 C CNN
F 1 "GND" H 7250 5230 30  0001 C CNN
	1    7250 5300
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 4D920C00
P 6750 5300
F 0 "R1" V 6830 5300 50  0000 C CNN
F 1 "10K" V 6750 5300 50  0000 C CNN
	1    6750 5300
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR02
U 1 1 4D920BAA
P 3650 2900
F 0 "#PWR02" H 3650 3000 30  0001 C CNN
F 1 "VCC" H 3650 3000 30  0000 C CNN
	1    3650 2900
	0    -1   -1   0   
$EndComp
$Comp
L POT RV2
U 1 1 4D920B50
P 2300 6300
F 0 "RV2" H 2300 6200 50  0000 C CNN
F 1 "Freins" H 2300 6300 50  0000 C CNN
	1    2300 6300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 4D920B4F
P 1850 6300
F 0 "#PWR03" H 1850 6400 30  0001 C CNN
F 1 "VCC" H 1850 6400 30  0000 C CNN
	1    1850 6300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR04
U 1 1 4D920B4E
P 2700 6300
F 0 "#PWR04" H 2700 6300 30  0001 C CNN
F 1 "GND" H 2700 6230 30  0001 C CNN
	1    2700 6300
	0    -1   -1   0   
$EndComp
Text Label 2800 6050 2    60   ~ 0
Freins_pied
Text Label 2800 4850 2    60   ~ 0
Accelerateur
$Comp
L GND #PWR05
U 1 1 4D920B31
P 2700 5100
F 0 "#PWR05" H 2700 5100 30  0001 C CNN
F 1 "GND" H 2700 5030 30  0001 C CNN
	1    2700 5100
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR06
U 1 1 4D920B1F
P 1850 5100
F 0 "#PWR06" H 1850 5200 30  0001 C CNN
F 1 "VCC" H 1850 5200 30  0000 C CNN
	1    1850 5100
	0    -1   -1   0   
$EndComp
$Comp
L POT RV1
U 1 1 4D920AFF
P 2300 5100
F 0 "RV1" H 2300 5000 50  0000 C CNN
F 1 "Accel." H 2300 5100 50  0000 C CNN
	1    2300 5100
	1    0    0    -1  
$EndComp
Text Label 7000 5100 2    60   ~ 0
Frein_main
$Comp
L VCC #PWR07
U 1 1 4D920AD7
P 6950 4900
F 0 "#PWR07" H 6950 5000 30  0001 C CNN
F 1 "VCC" H 6950 5000 30  0000 C CNN
	1    6950 4900
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P1
U 1 1 4D920AA1
P 6150 5000
F 0 "P1" V 6100 5000 40  0000 C CNN
F 1 "Frein_Main" V 6200 5000 40  0000 C CNN
	1    6150 5000
	-1   0    0    1   
$EndComp
NoConn ~ 4950 2300
Text Label 3250 2300 0    60   ~ 0
Frein_main
Text Notes 1350 5800 0    60   ~ 0
Potentiomètre frein
Text Notes 5200 4650 0    60   ~ 0
Frein à main
Text Notes 1350 4650 0    60   ~ 0
Potentiomètre accélérateur
Text Notes 3050 1750 0    60   ~ 0
Connecteurs MEZZA
Text Label 5500 2100 2    60   ~ 0
Freins_pied
NoConn ~ 4950 2500
NoConn ~ 3850 2700
NoConn ~ 3850 2500
Text Label 3250 2100 0    60   ~ 0
Accelerateur
$Comp
L PWR_FLAG #FLG08
U 1 1 4D7797FC
P 3700 2950
F 0 "#FLG08" H 3700 3220 30  0001 C CNN
F 1 "PWR_FLAG" H 3700 3180 30  0000 C CNN
	1    3700 2950
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG09
U 1 1 4D7797F5
P 5150 2900
F 0 "#FLG09" H 5150 3170 30  0001 C CNN
F 1 "PWR_FLAG" H 5150 3130 30  0000 C CNN
	1    5150 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 4D7797E6
P 5150 2950
F 0 "#PWR010" H 5150 2950 30  0001 C CNN
F 1 "GND" H 5150 2880 30  0001 C CNN
	1    5150 2950
	1    0    0    -1  
$EndComp
NoConn ~ 4950 2700
$Comp
L MEZZA-10 MEZZA1
U 1 1 4D7796C0
P 4400 2500
F 0 "MEZZA1" H 4400 3050 70  0000 C CNN
F 1 "MEZZA-10" H 4400 1900 70  0000 C CNN
	1    4400 2500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
