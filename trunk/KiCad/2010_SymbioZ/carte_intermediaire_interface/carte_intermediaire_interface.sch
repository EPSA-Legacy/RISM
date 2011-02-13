EESchema Schematic File Version 2  date 13/02/2011 13:21:47
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
LIBS:carte_intermediaire_interface-cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title ""
Date "13 feb 2011"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	4900 800  4150 800 
Wire Notes Line
	4150 800  4150 4100
Wire Notes Line
	4150 4100 5950 4100
Wire Notes Line
	5950 4100 5950 800 
Wire Notes Line
	5950 800  4800 800 
Wire Wire Line
	4900 3700 5750 3700
Wire Wire Line
	4900 3500 5750 3500
Wire Wire Line
	4900 3300 5750 3300
Wire Wire Line
	4900 3100 5750 3100
Wire Wire Line
	4900 2900 5750 2900
Wire Wire Line
	4900 2700 5750 2700
Wire Wire Line
	4900 2500 5750 2500
Wire Wire Line
	4900 2300 5750 2300
Wire Wire Line
	4900 2100 5750 2100
Wire Wire Line
	4900 1900 5750 1900
Wire Wire Line
	4900 1700 5750 1700
Wire Wire Line
	4900 1500 5750 1500
Wire Notes Line
	2550 2000 2550 800 
Wire Notes Line
	2550 2000 3850 2000
Wire Notes Line
	3850 2000 3850 800 
Wire Notes Line
	3850 800  2550 800 
Wire Wire Line
	3150 1750 3750 1750
Wire Wire Line
	3150 1550 3750 1550
Wire Wire Line
	3150 1350 3750 1350
Wire Notes Line
	950  4400 950  800 
Wire Notes Line
	950  4400 2250 4400
Wire Notes Line
	2250 4400 2250 800 
Wire Notes Line
	2250 800  950  800 
Wire Wire Line
	1650 3800 2000 3800
Wire Wire Line
	1650 3400 2000 3400
Wire Wire Line
	1650 3000 2000 3000
Wire Wire Line
	1650 2600 2000 2600
Wire Wire Line
	1650 2200 2000 2200
Wire Wire Line
	1650 1800 2000 1800
Wire Wire Line
	1650 1400 2000 1400
Wire Wire Line
	1650 1200 2000 1200
Wire Wire Line
	1650 1600 2000 1600
Wire Wire Line
	1650 2000 2000 2000
Wire Wire Line
	1650 2400 2000 2400
Wire Wire Line
	1650 2800 2000 2800
Wire Wire Line
	1650 3200 2000 3200
Wire Wire Line
	1650 3600 2000 3600
Wire Wire Line
	1650 4000 2000 4000
Wire Wire Line
	1650 4200 1950 4200
Wire Wire Line
	3150 1250 3750 1250
Wire Wire Line
	3150 1450 3750 1450
Wire Wire Line
	3150 1650 3750 1650
Wire Wire Line
	3150 1850 3250 1850
Wire Wire Line
	4900 1400 5750 1400
Wire Wire Line
	4900 1600 5750 1600
Wire Wire Line
	4900 1800 5750 1800
Wire Wire Line
	4900 2000 5750 2000
Wire Wire Line
	4900 2200 5750 2200
Wire Wire Line
	4900 2400 5750 2400
Wire Wire Line
	4900 2600 5750 2600
Wire Wire Line
	4900 2800 5750 2800
Wire Wire Line
	4900 3000 5750 3000
Wire Wire Line
	4900 3200 5750 3200
Wire Wire Line
	4900 3400 5750 3400
Wire Wire Line
	4900 3600 5750 3600
Wire Wire Line
	4900 3800 5750 3800
Text Notes 4650 950  0    60   ~ 0
Connecteur vers \ncarte interface
$Comp
L DB25 J?
U 1 1 4D57CAB1
P 4450 2600
F 0 "J?" H 4500 3950 70  0000 C CNN
F 1 "DB25" H 4400 1250 70  0000 C CNN
	1    4450 2600
	-1   0    0    1   
$EndComp
Text Notes 2700 950  0    60   ~ 0
Connecteur vers carte\nconvertisseur driver
Text Label 3750 1750 2    60   ~ 0
Err2_OUT
Text Label 3750 1650 2    60   ~ 0
PWM2_IN
Text Label 3750 1550 2    60   ~ 0
INB2_IN
Text Label 3750 1450 2    60   ~ 0
Err1_OUT
Text Label 3750 1350 2    60   ~ 0
PWM1_IN
Text Label 3750 1250 2    60   ~ 0
INB1_IN
$Comp
L GND #PWR?
U 1 1 4D57C9DF
P 3250 1850
F 0 "#PWR?" H 3250 1850 30  0001 C CNN
F 1 "GND" H 3250 1780 30  0001 C CNN
	1    3250 1850
	0    -1   -1   0   
$EndComp
$Comp
L CONN_7 P?
U 1 1 4D57C9A9
P 2800 1550
F 0 "P?" V 2770 1550 60  0000 C CNN
F 1 "CONN_7" V 2870 1550 60  0000 C CNN
	1    2800 1550
	-1   0    0    -1  
$EndComp
Text Notes 1050 950  0    60   ~ 0
Connecteurs vers carte\nconvertisseur acquisition
$Comp
L GND #PWR?
U 1 1 4D57C90F
P 1950 4200
F 0 "#PWR?" H 1950 4200 30  0001 C CNN
F 1 "GND" H 1950 4130 30  0001 C CNN
	1    1950 4200
	0    -1   -1   0   
$EndComp
Text Label 2000 4000 2    60   ~ 0
TempIn
Text Label 2000 3800 2    60   ~ 0
UMot1-
Text Label 2000 3600 2    60   ~ 0
UMot1+
Text Label 2000 3400 2    60   ~ 0
UMot2-
Text Label 2000 3200 2    60   ~ 0
UMot2+
Text Label 2000 3000 2    60   ~ 0
Usc-
Text Label 2000 2800 2    60   ~ 0
Usc+
Text Label 2000 2600 2    60   ~ 0
IMot1-
Text Label 2000 2400 2    60   ~ 0
IMot1+
Text Label 2000 2200 2    60   ~ 0
IMot2-
Text Label 2000 2000 2    60   ~ 0
IMot2+
Text Label 2000 1800 2    60   ~ 0
Isc2-
Text Label 2000 1600 2    60   ~ 0
Isc2+
Text Label 2000 1400 2    60   ~ 0
Isc1-
Text Label 2000 1200 2    60   ~ 0
Isc1+
$Comp
L CONN_2 P?
U 1 1 4D57C803
P 1300 4100
F 0 "P?" V 1250 4100 40  0000 C CNN
F 1 "CONN_2" V 1350 4100 40  0000 C CNN
	1    1300 4100
	-1   0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 4D57C800
P 1300 3700
F 0 "P?" V 1250 3700 40  0000 C CNN
F 1 "CONN_2" V 1350 3700 40  0000 C CNN
	1    1300 3700
	-1   0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 4D57C7F9
P 1300 3300
F 0 "P?" V 1250 3300 40  0000 C CNN
F 1 "CONN_2" V 1350 3300 40  0000 C CNN
	1    1300 3300
	-1   0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 4D57C7F7
P 1300 2900
F 0 "P?" V 1250 2900 40  0000 C CNN
F 1 "CONN_2" V 1350 2900 40  0000 C CNN
	1    1300 2900
	-1   0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 4D57C7F5
P 1300 2500
F 0 "P?" V 1250 2500 40  0000 C CNN
F 1 "CONN_2" V 1350 2500 40  0000 C CNN
	1    1300 2500
	-1   0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 4D57C7F1
P 1300 2100
F 0 "P?" V 1250 2100 40  0000 C CNN
F 1 "CONN_2" V 1350 2100 40  0000 C CNN
	1    1300 2100
	-1   0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 4D57C7EF
P 1300 1700
F 0 "P?" V 1250 1700 40  0000 C CNN
F 1 "CONN_2" V 1350 1700 40  0000 C CNN
	1    1300 1700
	-1   0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 4D57C782
P 1300 1300
F 0 "P?" V 1250 1300 40  0000 C CNN
F 1 "CONN_2" V 1350 1300 40  0000 C CNN
	1    1300 1300
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
