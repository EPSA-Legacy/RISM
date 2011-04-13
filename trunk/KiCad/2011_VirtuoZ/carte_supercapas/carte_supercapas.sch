EESchema Schematic File Version 2  date 12/04/2011 18:59:40
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
Title "Carte supercapas"
Date "12 apr 2011"
Rev "1.0"
Comp "EPSA -  Virtuoz"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	7200 5150 900  5150
Wire Notes Line
	7200 5150 7200 6800
Wire Notes Line
	7200 6800 900  6800
Wire Notes Line
	900  6800 900  5150
Wire Wire Line
	2750 5550 2750 5650
Wire Notes Line
	6950 4950 900  4950
Wire Notes Line
	6950 4950 6950 3250
Wire Notes Line
	6950 3250 900  3250
Wire Wire Line
	1900 6400 1900 6550
Wire Wire Line
	3900 6050 3350 6050
Wire Wire Line
	2350 5950 1850 5950
Wire Wire Line
	5800 4450 5650 4450
Wire Wire Line
	2700 4450 2550 4450
Connection ~ 2900 4200
Connection ~ 1050 4450
Wire Wire Line
	1050 4500 1050 4100
Wire Wire Line
	2900 4450 2900 4200
Wire Wire Line
	2550 3700 2900 3700
Wire Notes Line
	1550 2550 900  2550
Wire Notes Line
	1550 2550 1550 3150
Wire Notes Line
	1550 3150 900  3150
Wire Notes Line
	900  3150 900  2550
Wire Wire Line
	3000 1500 3450 1500
Wire Wire Line
	950  1500 1300 1500
Wire Wire Line
	2850 1500 2400 1500
Wire Wire Line
	5000 1500 4550 1500
Wire Wire Line
	4550 1900 4800 1900
Connection ~ 4650 2100
Wire Wire Line
	4650 2150 4650 2100
Wire Wire Line
	4550 2100 4850 2100
Wire Wire Line
	1150 2100 1300 2100
Wire Notes Line
	900  700  900  2400
Wire Wire Line
	2400 2100 2500 2100
Wire Wire Line
	1200 2150 1200 2100
Connection ~ 1200 2100
Wire Wire Line
	4750 1850 4750 1900
Connection ~ 4750 1900
Wire Wire Line
	5000 1300 4550 1300
Wire Wire Line
	2850 1300 2400 1300
Wire Wire Line
	2850 1700 2400 1700
Wire Wire Line
	950  1300 1300 1300
Wire Notes Line
	5000 2400 5000 2400
Wire Notes Line
	850  700  5050 700 
Wire Notes Line
	5050 700  5050 2400
Wire Notes Line
	5050 2400 900  2400
Wire Wire Line
	1750 3700 1050 3700
Connection ~ 1450 3700
Wire Wire Line
	1450 4450 1450 4100
Wire Wire Line
	1050 3700 1050 3600
Wire Wire Line
	3750 4200 2150 4200
Wire Notes Line
	900  3250 900  4950
Connection ~ 1450 4450
Wire Wire Line
	1900 6000 1900 5950
Connection ~ 1900 5950
Wire Wire Line
	2350 6150 2350 6700
Wire Wire Line
	2350 6700 3350 6700
Wire Wire Line
	3350 6700 3350 6050
Wire Wire Line
	2750 6450 2750 6550
Wire Wire Line
	1050 4450 2350 4450
Wire Wire Line
	4150 4450 5450 4450
Connection ~ 4550 4450
Wire Wire Line
	6850 4200 5250 4200
Wire Wire Line
	4150 3600 4150 3700
Wire Wire Line
	4550 4450 4550 4100
Connection ~ 4550 3700
Wire Wire Line
	4150 3700 4850 3700
Wire Wire Line
	5650 3700 6000 3700
Wire Wire Line
	6000 4450 6000 4200
Wire Wire Line
	4150 4500 4150 4100
Connection ~ 4150 4450
Connection ~ 6000 4200
Wire Wire Line
	1350 5950 1350 5800
Wire Wire Line
	1350 5800 1000 5800
Wire Wire Line
	4200 5800 4550 5800
Wire Wire Line
	4550 5800 4550 5950
Wire Wire Line
	5950 6450 5950 6550
Wire Wire Line
	6550 6700 6550 6050
Wire Wire Line
	6550 6700 5550 6700
Wire Wire Line
	5550 6700 5550 6150
Connection ~ 5100 5950
Wire Wire Line
	5100 6000 5100 5950
Wire Wire Line
	5550 5950 5050 5950
Wire Wire Line
	6550 6050 7100 6050
Wire Wire Line
	5100 6400 5100 6550
Wire Wire Line
	5950 5550 5950 5650
Text Notes 1100 5300 0    60   ~ 0
Régulation température
Text Label 7100 6050 2    60   ~ 0
TS34
Text Label 3900 6050 2    60   ~ 0
TS12
Text Label 4200 5800 0    60   ~ 0
Temp_supercap34
$Comp
L C C?
U 1 1 4DA483B6
P 5100 6200
F 0 "C?" H 5150 6300 50  0000 L CNN
F 1 "330n" H 5150 6100 50  0000 L CNN
	1    5100 6200
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4DA483B5
P 4800 5950
F 0 "R?" V 4880 5950 50  0000 C CNN
F 1 "R" V 4800 5950 50  0000 C CNN
	1    4800 5950
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 4DA483B4
P 5950 6550
F 0 "#PWR?" H 5950 6550 30  0001 C CNN
F 1 "GND" H 5950 6480 30  0001 C CNN
	1    5950 6550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4DA483B3
P 5100 6550
F 0 "#PWR?" H 5100 6550 30  0001 C CNN
F 1 "GND" H 5100 6480 30  0001 C CNN
	1    5100 6550
	1    0    0    -1  
$EndComp
$Comp
L LM358 U?
U 2 1 4DA483B2
P 6050 6050
F 0 "U?" H 6000 6250 60  0000 L CNN
F 1 "LM358" H 6000 5800 60  0000 L CNN
	2    6050 6050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 4DA483B1
P 5950 5550
F 0 "#PWR?" H 5950 5640 20  0001 C CNN
F 1 "+5V" H 5950 5640 30  0000 C CNN
	1    5950 5550
	1    0    0    -1  
$EndComp
Text Label 1000 5800 0    60   ~ 0
Temp_supercap12
$Comp
L +5V #PWR?
U 1 1 4DA48331
P 2750 5550
F 0 "#PWR?" H 2750 5640 20  0001 C CNN
F 1 "+5V" H 2750 5640 30  0000 C CNN
	1    2750 5550
	1    0    0    -1  
$EndComp
$Comp
L LM358 U?
U 1 1 4DA4831A
P 2850 6050
F 0 "U?" H 2800 6250 60  0000 L CNN
F 1 "LM358" H 2800 5800 60  0000 L CNN
	1    2850 6050
	1    0    0    -1  
$EndComp
$Comp
L LM317 U?
U 1 1 4DA4827F
P 5250 3850
F 0 "U?" H 5250 4150 60  0000 C CNN
F 1 "LM317" H 5300 3600 60  0000 L CNN
	1    5250 3850
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4DA4827D
P 6000 3950
F 0 "R?" V 6080 3950 50  0000 C CNN
F 1 "33" V 6000 3950 50  0000 C CNN
	1    6000 3950
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4DA4827C
P 4550 3900
F 0 "C?" H 4600 4000 50  0000 L CNN
F 1 "100n" H 4600 3800 50  0000 L CNN
	1    4550 3900
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 4DA4827B
P 4150 3900
F 0 "C?" H 4200 4000 50  0000 L CNN
F 1 "1u" H 4200 3800 50  0000 L CNN
	1    4150 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4DA4827A
P 4150 4500
F 0 "#PWR?" H 4150 4500 30  0001 C CNN
F 1 "GND" H 4150 4430 30  0001 C CNN
	1    4150 4500
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 4DA48279
P 4150 3600
F 0 "#PWR?" H 4150 3550 20  0001 C CNN
F 1 "+12V" H 4150 3700 30  0000 C CNN
	1    4150 3600
	1    0    0    -1  
$EndComp
Text Label 6850 4200 2    60   ~ 0
Temp_supercap34
$Comp
L GND #PWR?
U 1 1 4DA481CE
P 1900 6550
F 0 "#PWR?" H 1900 6550 30  0001 C CNN
F 1 "GND" H 1900 6480 30  0001 C CNN
	1    1900 6550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4DA481C9
P 2750 6550
F 0 "#PWR?" H 2750 6550 30  0001 C CNN
F 1 "GND" H 2750 6480 30  0001 C CNN
	1    2750 6550
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4DA48138
P 1600 5950
F 0 "R?" V 1680 5950 50  0000 C CNN
F 1 "R" V 1600 5950 50  0000 C CNN
	1    1600 5950
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 4DA480D8
P 1900 6200
F 0 "C?" H 1950 6300 50  0000 L CNN
F 1 "330n" H 1950 6100 50  0000 L CNN
	1    1900 6200
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 4DA47B9F
P 5550 4800
F 0 "P?" V 5500 4800 40  0000 C CNN
F 1 "Temp4" V 5600 4800 40  0000 C CNN
	1    5550 4800
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P?
U 1 1 4DA47B9C
P 5900 4800
F 0 "P?" V 5850 4800 40  0000 C CNN
F 1 "Temp3" V 5950 4800 40  0000 C CNN
	1    5900 4800
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P?
U 1 1 4DA47B9A
P 2450 4800
F 0 "P?" V 2400 4800 40  0000 C CNN
F 1 "Temp2" V 2500 4800 40  0000 C CNN
	1    2450 4800
	0    1    1    0   
$EndComp
Text Notes 1400 3400 0    60   ~ 0
mesure température
Text Label 3750 4200 2    60   ~ 0
Temp_supercap12
$Comp
L +12V #PWR?
U 1 1 4DA47793
P 1050 3600
F 0 "#PWR?" H 1050 3550 20  0001 C CNN
F 1 "+12V" H 1050 3700 30  0000 C CNN
	1    1050 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4DA47775
P 1050 4500
F 0 "#PWR?" H 1050 4500 30  0001 C CNN
F 1 "GND" H 1050 4430 30  0001 C CNN
	1    1050 4500
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 4DA476C4
P 1050 3900
F 0 "C?" H 1100 4000 50  0000 L CNN
F 1 "1u" H 1100 3800 50  0000 L CNN
	1    1050 3900
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4DA4767B
P 1450 3900
F 0 "C?" H 1500 4000 50  0000 L CNN
F 1 "100n" H 1500 3800 50  0000 L CNN
	1    1450 3900
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4DA475AC
P 2900 3950
F 0 "R?" V 2980 3950 50  0000 C CNN
F 1 "33" V 2900 3950 50  0000 C CNN
	1    2900 3950
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 4DA475A3
P 2800 4800
F 0 "P?" V 2750 4800 40  0000 C CNN
F 1 "Temp1" V 2850 4800 40  0000 C CNN
	1    2800 4800
	0    1    1    0   
$EndComp
$Comp
L LM317 U?
U 1 1 4DA4759A
P 2150 3850
F 0 "U?" H 2150 4150 60  0000 C CNN
F 1 "LM317" H 2200 3600 60  0000 L CNN
	1    2150 3850
	1    0    0    -1  
$EndComp
Text Notes 950  2650 0    60   ~ 0
Trous meca
$Comp
L CONN_1 MECA3
U 1 1 4DA45DA4
P 1200 2950
F 0 "MECA3" H 1280 2950 40  0000 L CNN
F 1 "CONN_1" H 1200 3005 30  0001 C CNN
	1    1200 2950
	1    0    0    -1  
$EndComp
NoConn ~ 1050 2950
NoConn ~ 1050 3050
$Comp
L CONN_1 MECA4
U 1 1 4DA45DA3
P 1200 3050
F 0 "MECA4" H 1280 3050 40  0000 L CNN
F 1 "CONN_1" H 1200 3105 30  0001 C CNN
	1    1200 3050
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 MECA2
U 1 1 4DA45D9D
P 1200 2850
F 0 "MECA2" H 1280 2850 40  0000 L CNN
F 1 "CONN_1" H 1200 2905 30  0001 C CNN
	1    1200 2850
	1    0    0    -1  
$EndComp
NoConn ~ 1050 2850
NoConn ~ 1050 2750
$Comp
L CONN_1 MECA1
U 1 1 4DA45D63
P 1200 2750
F 0 "MECA1" H 1280 2750 40  0000 L CNN
F 1 "CONN_1" H 1200 2805 30  0001 C CNN
	1    1200 2750
	1    0    0    -1  
$EndComp
NoConn ~ 1300 1900
NoConn ~ 3450 1300
$Comp
L VCC #PWR032
U 1 1 4D6BBCA5
P 1150 2100
F 0 "#PWR032" H 1150 2200 30  0001 C CNN
F 1 "VCC" H 1150 2200 30  0000 C CNN
	1    1150 2100
	0    -1   -1   0   
$EndComp
$Comp
L PWR_FLAG #FLG033
U 1 1 4D6BBAA8
P 1200 2150
F 0 "#FLG033" H 1200 2420 30  0001 C CNN
F 1 "PWR_FLAG" H 1200 2380 30  0000 C CNN
	1    1200 2150
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG034
U 1 1 4D6BBA9C
P 4650 2150
F 0 "#FLG034" H 4650 2420 30  0001 C CNN
F 1 "PWR_FLAG" H 4650 2380 30  0000 C CNN
	1    4650 2150
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG035
U 1 1 4D6BBA97
P 4750 1850
F 0 "#FLG035" H 4750 2120 30  0001 C CNN
F 1 "PWR_FLAG" H 4750 2080 30  0000 C CNN
	1    4750 1850
	1    0    0    -1  
$EndComp
Text Label 2850 1500 2    60   ~ 0
Cligno G
Text Label 2850 1300 2    60   ~ 0
Phares G
Text Label 2850 1700 2    60   ~ 0
Codes G
Text Label 5000 1300 2    60   ~ 0
Cligno D
NoConn ~ 4550 1700
Text Label 5000 1500 2    60   ~ 0
Codes D
Text Label 3000 1500 0    60   ~ 0
Phares D
Text Label 950  1500 0    60   ~ 0
W2_out
Text Label 950  1300 0    60   ~ 0
W1_out
Text Notes 1050 900  0    60   ~ 0
Conn. MEZZA
NoConn ~ 1300 1700
NoConn ~ 2400 1900
NoConn ~ 3450 2100
NoConn ~ 3450 1900
NoConn ~ 3450 1700
$Comp
L GND #PWR046
U 1 1 4D6BA5D6
P 4850 2100
F 0 "#PWR046" H 4850 2100 30  0001 C CNN
F 1 "GND" H 4850 2030 30  0001 C CNN
	1    4850 2100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR047
U 1 1 4D6BA5CF
P 2500 2100
F 0 "#PWR047" H 2500 2100 30  0001 C CNN
F 1 "GND" H 2500 2030 30  0001 C CNN
	1    2500 2100
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR048
U 1 1 4D6BA593
P 4800 1900
F 0 "#PWR048" H 4800 1850 20  0001 C CNN
F 1 "+12V" H 4800 2000 30  0000 C CNN
	1    4800 1900
	0    1    1    0   
$EndComp
$Comp
L MEZZA-10 MEZZA2
U 1 1 4D6BA2F1
P 4000 1700
F 0 "MEZZA2" H 4000 2250 70  0000 C CNN
F 1 "MEZZA-10" H 4000 1100 70  0000 C CNN
	1    4000 1700
	1    0    0    -1  
$EndComp
$Comp
L MEZZA-10 MEZZA1
U 1 1 4D6BA2EC
P 1850 1700
F 0 "MEZZA1" H 1850 2250 70  0000 C CNN
F 1 "MEZZA-10" H 1850 1100 70  0000 C CNN
	1    1850 1700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
