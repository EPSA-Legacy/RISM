EESchema Schematic File Version 2  date 11/11/2012 22:09:39
LIBS:epsa_cmos
LIBS:epsa_puissance
LIBS:epsa_relais
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
EELAYER 43  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "11 nov 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 4450 1500 0    60   ~ 0
Frein_main
$Comp
L GND #PWR?
U 1 1 50A012E7
P 4450 1900
F 0 "#PWR?" H 4450 1900 30  0001 C CNN
F 1 "GND" H 4450 1830 30  0001 C CNN
	1    4450 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 1900 4450 1900
Wire Wire Line
	3250 1900 3150 1900
Connection ~ 2600 1700
Wire Wire Line
	2450 1700 2700 1700
Wire Wire Line
	1350 1900 1150 1900
Wire Wire Line
	1350 1100 800  1100
Wire Wire Line
	2450 1100 2850 1100
Wire Wire Line
	2450 1900 2700 1900
Connection ~ 2600 1900
Wire Wire Line
	4350 1500 4950 1500
NoConn ~ 4350 1100
NoConn ~ 4350 1300
NoConn ~ 4350 1700
NoConn ~ 3250 1700
NoConn ~ 3250 1500
NoConn ~ 3250 1300
NoConn ~ 3250 1100
$Comp
L VCC #PWR?
U 1 1 50A012C9
P 3150 1900
F 0 "#PWR?" H 3150 2000 30  0001 C CNN
F 1 "VCC" H 3150 2000 30  0000 C CNN
	1    3150 1900
	1    0    0    -1  
$EndComp
$Comp
L MEZZA-10 MEZZA2
U 1 1 50A012BA
P 3800 1500
F 0 "MEZZA2" H 3800 2050 70  0000 C CNN
F 1 "MEZZA-10" H 3800 900 70  0000 C CNN
	1    3800 1500
	1    0    0    -1  
$EndComp
NoConn ~ 2450 1300
NoConn ~ 2450 1500
NoConn ~ 1350 1700
NoConn ~ 1350 1500
NoConn ~ 1350 1300
$Comp
L GND #PWR?
U 1 1 50A012A1
P 2700 1900
F 0 "#PWR?" H 2700 1900 30  0001 C CNN
F 1 "GND" H 2700 1830 30  0001 C CNN
	1    2700 1900
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR?
U 1 1 50A0129B
P 2700 1700
F 0 "#PWR?" H 2700 1650 20  0001 C CNN
F 1 "+12V" H 2700 1800 30  0000 C CNN
	1    2700 1700
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 50A01288
P 2600 1900
F 0 "#FLG?" H 2600 1995 30  0001 C CNN
F 1 "PWR_FLAG" H 2600 2080 30  0000 C CNN
	1    2600 1900
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 50A0127F
P 2600 1700
F 0 "#FLG?" H 2600 1795 30  0001 C CNN
F 1 "PWR_FLAG" H 2600 1880 30  0000 C CNN
	1    2600 1700
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 50A01279
P 1350 1900
F 0 "#FLG?" H 1350 1995 30  0001 C CNN
F 1 "PWR_FLAG" H 1350 2080 30  0000 C CNN
	1    1350 1900
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR?
U 1 1 50A01271
P 1150 1900
F 0 "#PWR?" H 1150 2000 30  0001 C CNN
F 1 "VCC" H 1150 2000 30  0000 C CNN
	1    1150 1900
	1    0    0    -1  
$EndComp
Text Label 2600 1100 0    60   ~ 0
Frein
Text Label 800  1100 0    60   ~ 0
Uacc_in
$Comp
L MEZZA-10 MEZZA1
U 1 1 50A01239
P 1900 1500
F 0 "MEZZA1" H 1900 2050 70  0000 C CNN
F 1 "MEZZA-10" H 1900 900 70  0000 C CNN
	1    1900 1500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
