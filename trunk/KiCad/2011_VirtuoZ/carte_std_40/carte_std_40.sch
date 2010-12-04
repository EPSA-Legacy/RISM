EESchema Schematic File Version 2  date 04/12/2010 17:37:03
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
LIBS:carte_std_40-cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title ""
Date "4 dec 2010"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	3600 2450 3600 2150
Connection ~ 2400 2450
Wire Wire Line
	2700 2450 2700 2500
Wire Wire Line
	3200 2150 3100 2150
Wire Wire Line
	2050 2350 2050 2450
Wire Wire Line
	2300 2150 2050 2150
Wire Wire Line
	2150 2050 2150 2150
Connection ~ 2150 2150
Connection ~ 2700 2450
Wire Wire Line
	2250 2150 2250 2100
Connection ~ 2250 2150
Wire Wire Line
	2050 2450 3100 2450
$Comp
L R R1
U 1 1 4CFA685A
P 3350 2450
F 0 "R1" V 3430 2450 50  0000 C CNN
F 1 "520" V 3350 2450 50  0000 C CNN
	1    3350 2450
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG01
U 1 1 4CFA68A4
P 2400 2450
F 0 "#FLG01" H 2400 2720 30  0001 C CNN
F 1 "PWR_FLAG" H 2400 2680 30  0000 C CNN
	1    2400 2450
	-1   0    0    1   
$EndComp
$Comp
L LED D1
U 1 1 4CFA6855
P 3400 2150
F 0 "D1" H 3400 2250 50  0000 C CNN
F 1 "RED" H 3400 2050 50  0000 C CNN
	1    3400 2150
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 4CFA683F
P 2150 2050
F 0 "#FLG03" H 2150 2320 30  0001 C CNN
F 1 "PWR_FLAG" H 2150 2280 30  0000 C CNN
	1    2150 2050
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR04
U 1 1 4CFA6832
P 2250 2100
F 0 "#PWR04" H 2250 2050 20  0001 C CNN
F 1 "+12V" H 2250 2200 30  0000 C CNN
	1    2250 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 4CFA682B
P 2700 2500
F 0 "#PWR05" H 2700 2500 30  0001 C CNN
F 1 "GND" H 2700 2430 30  0001 C CNN
	1    2700 2500
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P1
U 1 1 4CFA681B
P 1700 2250
F 0 "P1" V 1650 2250 40  0000 C CNN
F 1 "ALIM" V 1750 2250 40  0000 C CNN
	1    1700 2250
	-1   0    0    -1  
$EndComp
$Comp
L 7805 U1
U 1 1 4CFA680D
P 2700 2200
F 0 "U1" H 2850 2004 60  0000 C CNN
F 1 "7805" H 2700 2400 60  0000 C CNN
	1    2700 2200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
