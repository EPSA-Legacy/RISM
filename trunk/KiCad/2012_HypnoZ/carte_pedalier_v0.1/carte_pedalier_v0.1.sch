EESchema Schematic File Version 2  date 09/03/2011 17:49:18
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
EELAYER 43  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "carte pedalier v0.1"
Date "9 mar 2011"
Rev ""
Comp "EPSA Hypnoz"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 7350 2300
Wire Wire Line
	7350 2100 7600 2100
Connection ~ 2750 5200
Wire Wire Line
	2400 5200 2750 5200
Wire Wire Line
	3650 2900 3850 2900
Connection ~ 7500 2700
Wire Wire Line
	7500 2650 7500 2700
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
	7000 4900 6750 4900
Wire Wire Line
	4950 2100 5300 2100
Wire Wire Line
	3850 2100 3600 2100
Wire Wire Line
	2400 5100 2750 5100
Wire Wire Line
	2400 4900 2750 4900
Wire Wire Line
	4950 2900 5150 2900
Wire Wire Line
	5150 2900 5150 2950
Wire Wire Line
	7350 2900 7550 2900
Wire Wire Line
	7550 2900 7550 2950
Wire Wire Line
	2400 5000 2750 5000
Wire Wire Line
	6250 2100 6000 2100
Wire Wire Line
	5950 4900 6250 4900
Wire Wire Line
	5950 5100 6250 5100
Wire Wire Line
	6250 5100 6250 5150
Wire Notes Line
	3400 4550 1300 4550
Wire Notes Line
	3400 4550 3400 5500
Wire Notes Line
	3400 5500 1300 5500
Wire Notes Line
	1300 5500 1300 4550
Wire Wire Line
	7550 2700 7350 2700
Wire Wire Line
	5100 2850 5100 2900
Connection ~ 5100 2900
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
	2400 6150 2750 6150
Wire Wire Line
	2400 6050 2750 6050
Wire Wire Line
	2400 6250 2750 6250
Wire Wire Line
	2750 5100 2750 5250
Wire Wire Line
	2750 6250 2750 6400
Wire Wire Line
	2400 6350 2750 6350
Connection ~ 2750 6350
Wire Wire Line
	4950 2300 5350 2300
NoConn ~ 3850 2300
NoConn ~ 6250 2300
$Comp
L CONN_4 P3
U 1 1 4D77A0D8
P 2050 6200
F 0 "P3" V 2000 6200 50  0000 C CNN
F 1 "conn_frein" V 2100 6200 50  0000 C CNN
	1    2050 6200
	-1   0    0    -1  
$EndComp
$Comp
L CONN_4 P2
U 1 1 4D77A0C2
P 2050 5050
F 0 "P2" V 2000 5050 50  0000 C CNN
F 1 "conn_acc" V 2100 5050 50  0000 C CNN
	1    2050 5050
	-1   0    0    -1  
$EndComp
Text Label 6200 2100 2    60   ~ 0
U2_frein
Text Label 5000 2300 0    60   ~ 0
U1_frein
$Comp
L GND #PWR01
U 1 1 4D779AB2
P 2750 6400
F 0 "#PWR01" H 2750 6400 30  0001 C CNN
F 1 "GND" H 2750 6330 30  0001 C CNN
	1    2750 6400
	1    0    0    -1  
$EndComp
Text Label 2600 6050 0    60   ~ 0
U1_frein
Text Label 2600 6150 0    60   ~ 0
U2_frein
Text Notes 1350 5800 0    60   ~ 0
Potentiomètre frein
Text Notes 5200 4650 0    60   ~ 0
Frein à main
Text Notes 1350 4650 0    60   ~ 0
Potentiomètre accélérateur
Text Notes 3050 1750 0    60   ~ 0
Connecteurs MEZZA
Text Label 5000 2100 0    60   ~ 0
U_frein_main
$Comp
L GND #PWR02
U 1 1 4D779966
P 6250 5150
F 0 "#PWR02" H 6250 5150 30  0001 C CNN
F 1 "GND" H 6250 5080 30  0001 C CNN
	1    6250 5150
	1    0    0    -1  
$EndComp
Text Label 6850 4900 0    60   ~ 0
U_frein_main
NoConn ~ 6250 2700
NoConn ~ 6250 2500
NoConn ~ 4950 2500
NoConn ~ 3850 2700
NoConn ~ 3850 2500
Text Label 7400 2100 0    60   ~ 0
U2_potentio
Text Label 3800 2100 2    60   ~ 0
U1_potentio
Text Label 2600 5000 0    60   ~ 0
U2_potentio
Text Label 2600 4900 0    60   ~ 0
U1_potentio
$Comp
L GND #PWR03
U 1 1 4D77988D
P 2750 5250
F 0 "#PWR03" H 2750 5250 30  0001 C CNN
F 1 "GND" H 2750 5180 30  0001 C CNN
	1    2750 5250
	1    0    0    -1  
$EndComp
NoConn ~ 7350 2500
$Comp
L PWR_FLAG #FLG04
U 1 1 4D779803
P 7500 2650
F 0 "#FLG04" H 7500 2920 30  0001 C CNN
F 1 "PWR_FLAG" H 7500 2880 30  0000 C CNN
	1    7500 2650
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG05
U 1 1 4D7797FC
P 3700 2950
F 0 "#FLG05" H 3700 3220 30  0001 C CNN
F 1 "PWR_FLAG" H 3700 3180 30  0000 C CNN
	1    3700 2950
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG06
U 1 1 4D7797F5
P 5100 2850
F 0 "#FLG06" H 5100 3120 30  0001 C CNN
F 1 "PWR_FLAG" H 5100 3080 30  0000 C CNN
	1    5100 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 4D7797EA
P 7550 2950
F 0 "#PWR07" H 7550 2950 30  0001 C CNN
F 1 "GND" H 7550 2880 30  0001 C CNN
	1    7550 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 4D7797E6
P 5150 2950
F 0 "#PWR08" H 5150 2950 30  0001 C CNN
F 1 "GND" H 5150 2880 30  0001 C CNN
	1    5150 2950
	1    0    0    -1  
$EndComp
NoConn ~ 4950 2700
NoConn ~ 6250 2900
$Comp
L +12V #PWR09
U 1 1 4D7797B7
P 7550 2700
F 0 "#PWR09" H 7550 2650 20  0001 C CNN
F 1 "+12V" H 7550 2800 30  0000 C CNN
	1    7550 2700
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR010
U 1 1 4D779774
P 3650 2900
F 0 "#PWR010" H 3650 2990 20  0001 C CNN
F 1 "+5V" H 3650 2990 30  0000 C CNN
	1    3650 2900
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 4D779757
P 6500 4900
F 0 "R1" V 6580 4900 50  0000 C CNN
F 1 "R" V 6500 4900 50  0000 C CNN
	1    6500 4900
	0    -1   -1   0   
$EndComp
$Comp
L CONN_2 P1
U 1 1 4D77973A
P 5600 5000
F 0 "P1" V 5550 5000 40  0000 C CNN
F 1 "conn_frein_main" V 5650 5000 40  0000 C CNN
	1    5600 5000
	-1   0    0    -1  
$EndComp
$Comp
L MEZZA-10 MEZZA2
U 1 1 4D7796C4
P 6800 2500
F 0 "MEZZA2" H 6800 3050 70  0000 C CNN
F 1 "MEZZA-10" H 6800 1900 70  0000 C CNN
	1    6800 2500
	1    0    0    -1  
$EndComp
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
