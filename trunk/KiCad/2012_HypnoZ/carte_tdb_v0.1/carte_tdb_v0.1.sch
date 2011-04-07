EESchema Schematic File Version 2  date 07/04/2011 08:47:24
LIBS:symbioz
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
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "noname.sch"
Date "7 apr 2011"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 850  1500 0    60   ~ 0
warning_in
Wire Wire Line
	1350 1500 850  1500
Wire Wire Line
	1350 1300 850  1300
Connection ~ 1500 7000
Wire Wire Line
	1350 7000 2000 7000
Wire Wire Line
	1500 7100 1500 7000
Wire Wire Line
	2150 6650 2050 6650
Connection ~ 1550 6550
Wire Wire Line
	1550 6650 1550 6550
Wire Wire Line
	2000 6550 1350 6550
Wire Wire Line
	1550 6450 1350 6450
Wire Notes Line
	800  3950 800  2350
Wire Notes Line
	800  3950 3850 3950
Wire Notes Line
	3850 3950 3850 2350
Wire Notes Line
	3850 2350 800  2350
Wire Wire Line
	2350 5150 2350 5650
Wire Wire Line
	2350 5650 3450 5650
Connection ~ 3450 5050
Wire Wire Line
	3450 5650 3450 5050
Wire Wire Line
	2750 5450 2750 5550
Connection ~ 2000 4950
Wire Wire Line
	2350 4950 2000 4950
Connection ~ 1550 4650
Wire Wire Line
	1550 4650 1550 4500
Wire Wire Line
	1550 4500 1650 4500
Wire Wire Line
	1400 4650 2000 4650
Wire Wire Line
	2000 4650 2000 5100
Wire Wire Line
	2000 5100 1400 5100
Wire Wire Line
	1650 4900 1650 4850
Wire Wire Line
	1650 4850 1400 4850
Wire Wire Line
	1800 5300 1400 5300
Wire Wire Line
	2150 4500 2300 4500
Wire Wire Line
	2750 4550 2750 4650
Wire Wire Line
	3350 5050 3750 5050
Wire Wire Line
	3350 3250 3750 3250
Wire Wire Line
	2750 2750 2750 2850
Wire Wire Line
	2150 2700 2300 2700
Wire Wire Line
	1800 3500 1400 3500
Wire Wire Line
	1350 1100 1050 1100
Wire Wire Line
	1150 1800 1350 1800
Wire Wire Line
	2550 1700 2750 1700
Wire Wire Line
	2550 2050 2550 1800
Wire Wire Line
	4750 2050 4750 1800
Wire Wire Line
	4750 1700 4950 1700
Wire Wire Line
	3350 1800 3550 1800
Wire Wire Line
	1400 3050 1650 3050
Wire Wire Line
	1650 3050 1650 3100
Wire Wire Line
	1400 3300 2000 3300
Wire Wire Line
	2000 3300 2000 2850
Wire Wire Line
	2000 2850 1400 2850
Wire Wire Line
	1650 2700 1550 2700
Wire Wire Line
	1550 2700 1550 2850
Connection ~ 1550 2850
Wire Wire Line
	2350 3150 2000 3150
Connection ~ 2000 3150
Wire Wire Line
	2750 3650 2750 3750
Wire Wire Line
	3450 3250 3450 3850
Connection ~ 3450 3250
Wire Wire Line
	3450 3850 2350 3850
Wire Wire Line
	2350 3850 2350 3350
Wire Wire Line
	1350 1200 1050 1200
Wire Notes Line
	3850 4100 700  4100
Wire Notes Line
	3850 4100 3850 5750
Wire Notes Line
	3850 5750 700  5750
Wire Notes Line
	700  5750 700  4100
Wire Wire Line
	2000 6350 1350 6350
Wire Wire Line
	1550 6200 1550 6350
Connection ~ 1550 6350
Wire Wire Line
	2050 6200 2150 6200
Wire Wire Line
	2150 7100 2000 7100
Wire Wire Line
	1500 7200 1350 7200
Wire Notes Line
	700  7400 700  5950
Wire Notes Line
	700  7400 2350 7400
Wire Notes Line
	2350 7400 2350 5950
Wire Notes Line
	2350 5950 700  5950
Wire Wire Line
	1350 1400 850  1400
Text Label 850  1400 0    60   ~ 0
clign_d_in
Text Label 850  1300 0    60   ~ 0
clign_g_in
Text Notes 750  6100 0    60   ~ 0
Clignotants interrupteurs
Text Label 2000 7000 2    60   ~ 0
warning_in
$Comp
L GND #PWR?
U 1 1 4D9D5D2A
P 2150 7100
F 0 "#PWR?" H 2150 7100 30  0001 C CNN
F 1 "GND" H 2150 7030 30  0001 C CNN
	1    2150 7100
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 4D9D5D24
P 1750 7100
F 0 "R?" V 1830 7100 50  0000 C CNN
F 1 "10k" V 1750 7100 50  0000 C CNN
	1    1750 7100
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 4D9D5D1E
P 1500 7200
F 0 "#PWR?" H 1500 7290 20  0001 C CNN
F 1 "+5V" H 1500 7290 30  0000 C CNN
	1    1500 7200
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P?
U 1 1 4D9D5D00
P 1000 7100
F 0 "P?" V 950 7100 40  0000 C CNN
F 1 "warning" V 1050 7100 40  0000 C CNN
	1    1000 7100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 4D9D5CB1
P 2150 6650
F 0 "#PWR?" H 2150 6650 30  0001 C CNN
F 1 "GND" H 2150 6580 30  0001 C CNN
	1    2150 6650
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 4D9D5CAC
P 2150 6200
F 0 "#PWR?" H 2150 6200 30  0001 C CNN
F 1 "GND" H 2150 6130 30  0001 C CNN
	1    2150 6200
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 4D9D5C9C
P 1800 6200
F 0 "R?" V 1880 6200 50  0000 C CNN
F 1 "10k" V 1800 6200 50  0000 C CNN
	1    1800 6200
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 4D9D5C8D
P 1800 6650
F 0 "R?" V 1880 6650 50  0000 C CNN
F 1 "10k" V 1800 6650 50  0000 C CNN
	1    1800 6650
	0    1    1    0   
$EndComp
Text Label 2000 6550 2    60   ~ 0
clign_d_in
Text Label 2000 6350 2    60   ~ 0
clign_g_in
$Comp
L +5V #PWR?
U 1 1 4D9D5C17
P 1550 6450
F 0 "#PWR?" H 1550 6540 20  0001 C CNN
F 1 "+5V" H 1550 6540 30  0000 C CNN
	1    1550 6450
	0    1    1    0   
$EndComp
NoConn ~ 1350 6250
$Comp
L CONN_4 P?
U 1 1 4D9D5BED
P 1000 6400
F 0 "P?" V 950 6400 50  0000 C CNN
F 1 "clign" V 1050 6400 50  0000 C CNN
	1    1000 6400
	-1   0    0    1   
$EndComp
Text Notes 800  4250 0    60   ~ 0
Boost
Text Notes 900  2500 0    60   ~ 0
Freins
Text Label 1050 1200 0    60   ~ 0
boost_in
$Comp
L CONN_2 P?
U 1 1 4D9D5AD2
P 1050 4750
F 0 "P?" V 1000 4750 40  0000 C CNN
F 1 "boost_analog" V 1100 4750 40  0000 C CNN
	1    1050 4750
	-1   0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 4D9D5AD1
P 1050 5200
F 0 "P?" V 1000 5200 40  0000 C CNN
F 1 "boost_input" V 1100 5200 40  0000 C CNN
	1    1050 5200
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4D9D5AD0
P 1650 4900
F 0 "#PWR?" H 1650 4900 30  0001 C CNN
F 1 "GND" H 1650 4830 30  0001 C CNN
	1    1650 4900
	1    0    0    -1  
$EndComp
$Comp
L TL082 U?
U 1 1 4D9D5ACF
P 2850 5050
F 0 "U?" H 2800 5250 60  0000 L CNN
F 1 "TL082" H 2800 4800 60  0000 L CNN
	1    2850 5050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 4D9D5ACE
P 1800 5300
F 0 "#PWR?" H 1800 5390 20  0001 C CNN
F 1 "+5V" H 1800 5390 30  0000 C CNN
	1    1800 5300
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 4D9D5ACD
P 1900 4500
F 0 "R?" V 1980 4500 50  0000 C CNN
F 1 "10k" V 1900 4500 50  0000 C CNN
	1    1900 4500
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 4D9D5ACC
P 2300 4500
F 0 "#PWR?" H 2300 4500 30  0001 C CNN
F 1 "GND" H 2300 4430 30  0001 C CNN
	1    2300 4500
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 4D9D5ACB
P 2750 4550
F 0 "#PWR?" H 2750 4640 20  0001 C CNN
F 1 "+5V" H 2750 4640 30  0000 C CNN
	1    2750 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4D9D5ACA
P 2750 5550
F 0 "#PWR?" H 2750 5550 30  0001 C CNN
F 1 "GND" H 2750 5480 30  0001 C CNN
	1    2750 5550
	1    0    0    -1  
$EndComp
Text Label 3750 5050 2    60   ~ 0
boost_in
Text Label 3750 3250 2    60   ~ 0
brake_in
$Comp
L GND #PWR?
U 1 1 4D9D5A3D
P 2750 3750
F 0 "#PWR?" H 2750 3750 30  0001 C CNN
F 1 "GND" H 2750 3680 30  0001 C CNN
	1    2750 3750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 4D9D5A38
P 2750 2750
F 0 "#PWR?" H 2750 2840 20  0001 C CNN
F 1 "+5V" H 2750 2840 30  0000 C CNN
	1    2750 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4D9D5986
P 2300 2700
F 0 "#PWR?" H 2300 2700 30  0001 C CNN
F 1 "GND" H 2300 2630 30  0001 C CNN
	1    2300 2700
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 4D9D595B
P 1900 2700
F 0 "R?" V 1980 2700 50  0000 C CNN
F 1 "10k" V 1900 2700 50  0000 C CNN
	1    1900 2700
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 4D9D594B
P 1800 3500
F 0 "#PWR?" H 1800 3590 20  0001 C CNN
F 1 "+5V" H 1800 3590 30  0000 C CNN
	1    1800 3500
	0    1    1    0   
$EndComp
$Comp
L TL082 U?
U 1 1 4D9C908F
P 2850 3250
F 0 "U?" H 2800 3450 60  0000 L CNN
F 1 "TL082" H 2800 3000 60  0000 L CNN
	1    2850 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4D9C8F8F
P 1650 3100
F 0 "#PWR?" H 1650 3100 30  0001 C CNN
F 1 "GND" H 1650 3030 30  0001 C CNN
	1    1650 3100
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 4D9C8F0F
P 1050 3400
F 0 "P?" V 1000 3400 40  0000 C CNN
F 1 "brake_input" V 1100 3400 40  0000 C CNN
	1    1050 3400
	-1   0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 4D9C8F0C
P 1050 2950
F 0 "P?" V 1000 2950 40  0000 C CNN
F 1 "brake_analog" V 1100 2950 40  0000 C CNN
	1    1050 2950
	-1   0    0    -1  
$EndComp
Text Label 1050 1100 0    60   ~ 0
brake_in
$Comp
L MEZZA-16 MEZZA?
U 1 1 4D9C8ED8
P 4150 1450
F 0 "MEZZA?" H 4150 1900 70  0000 C CNN
F 1 "MEZZA-16" H 4150 1000 70  0000 C CNN
	1    4150 1450
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 4D9C8ED7
P 4950 1700
F 0 "#PWR?" H 4950 1650 20  0001 C CNN
F 1 "+12V" H 4950 1800 30  0000 C CNN
	1    4950 1700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 4D9C8ED6
P 4750 2050
F 0 "#PWR?" H 4750 2050 30  0001 C CNN
F 1 "GND" H 4750 1980 30  0001 C CNN
	1    4750 2050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 4D9C8ED5
P 3350 1800
F 0 "#PWR?" H 3350 1890 20  0001 C CNN
F 1 "+5V" H 3350 1890 30  0000 C CNN
	1    3350 1800
	0    -1   -1   0   
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 4D9C8ED4
P 4900 1700
F 0 "#FLG?" H 4900 1970 30  0001 C CNN
F 1 "PWR_FLAG" H 4900 1930 30  0000 C CNN
	1    4900 1700
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 4D9C8ED3
P 4750 1950
F 0 "#FLG?" H 4750 2220 30  0001 C CNN
F 1 "PWR_FLAG" H 4750 2180 30  0000 C CNN
	1    4750 1950
	0    -1   -1   0   
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 4D9C8ED2
P 3450 1800
F 0 "#FLG?" H 3450 2070 30  0001 C CNN
F 1 "PWR_FLAG" H 3450 2030 30  0000 C CNN
	1    3450 1800
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 4D9C8EC1
P 1250 1800
F 0 "#FLG?" H 1250 2070 30  0001 C CNN
F 1 "PWR_FLAG" H 1250 2030 30  0000 C CNN
	1    1250 1800
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 4D9C8EBA
P 2550 1950
F 0 "#FLG?" H 2550 2220 30  0001 C CNN
F 1 "PWR_FLAG" H 2550 2180 30  0000 C CNN
	1    2550 1950
	0    -1   -1   0   
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 4D9C8EA2
P 2700 1700
F 0 "#FLG?" H 2700 1970 30  0001 C CNN
F 1 "PWR_FLAG" H 2700 1930 30  0000 C CNN
	1    2700 1700
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR?
U 1 1 4D9C8E8D
P 1150 1800
F 0 "#PWR?" H 1150 1890 20  0001 C CNN
F 1 "+5V" H 1150 1890 30  0000 C CNN
	1    1150 1800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 4D9C8E87
P 2550 2050
F 0 "#PWR?" H 2550 2050 30  0001 C CNN
F 1 "GND" H 2550 1980 30  0001 C CNN
	1    2550 2050
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 4D9C8E79
P 2750 1700
F 0 "#PWR?" H 2750 1650 20  0001 C CNN
F 1 "+12V" H 2750 1800 30  0000 C CNN
	1    2750 1700
	0    1    1    0   
$EndComp
$Comp
L MEZZA-16 MEZZA?
U 1 1 4D9C8E5B
P 1950 1450
F 0 "MEZZA?" H 1950 1900 70  0000 C CNN
F 1 "MEZZA-16" H 1950 1000 70  0000 C CNN
	1    1950 1450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
