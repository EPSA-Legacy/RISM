EESchema Schematic File Version 2  date 06/04/2011 18:11:22
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
Title "noname.sch"
Date "6 apr 2011"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2250 2850 1400 2850
Connection ~ 1950 3050
Wire Wire Line
	2250 3050 1950 3050
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
	1400 3300 1950 3300
Wire Wire Line
	1950 3300 1950 3050
$Comp
L TL082 U?
U 1 1 4D9C908F
P 2750 2950
F 0 "U?" H 2700 3150 60  0000 L CNN
F 1 "TL082" H 2700 2700 60  0000 L CNN
	1    2750 2950
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
