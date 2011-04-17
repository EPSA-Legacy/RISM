EESchema Schematic File Version 2  date ven. 15 avril 2011 21:29:58 CEST
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
Sheet 1 1
Title ""
Date "15 apr 2011"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 2150 1500
Wire Wire Line
	2150 1500 2150 1450
Wire Wire Line
	2150 1450 2350 1450
Wire Notes Line
	2950 1950 950  1950
Wire Notes Line
	2950 1950 2950 2700
Wire Notes Line
	2950 2700 950  2700
Wire Notes Line
	950  2700 950  1950
Wire Wire Line
	1750 3350 2000 3350
Connection ~ 1950 2250
Wire Wire Line
	1950 2250 1950 2600
Wire Wire Line
	1850 2250 2050 2250
Wire Wire Line
	2050 1300 2600 1300
Wire Wire Line
	2050 1500 2200 1500
Wire Wire Line
	1000 2250 1350 2250
Wire Wire Line
	2550 2250 2750 2250
Wire Wire Line
	1750 3150 2350 3150
Wire Notes Line
	1200 1650 1200 1050
Wire Notes Line
	1200 1650 2750 1650
Wire Notes Line
	2750 1650 2750 1050
Wire Notes Line
	2750 1050 1200 1050
Wire Notes Line
	1050 3550 1050 2900
Wire Notes Line
	1050 3550 2550 3550
Wire Notes Line
	2550 3550 2550 2900
Wire Notes Line
	2550 2900 1050 2900
$Comp
L PWR_FLAG #FLG01
U 1 1 4DA89C95
P 2350 1450
F 0 "#FLG01" H 2350 1720 30  0001 C CNN
F 1 "PWR_FLAG" H 2350 1680 30  0000 C CNN
	1    2350 1450
	0    1    1    0   
$EndComp
Text Notes 1100 3000 0    60   ~ 0
Output\n
Text Notes 1000 2050 0    60   ~ 0
Pont\n
Text Notes 1250 1150 0    60   ~ 0
Input
$Comp
L GND #PWR02
U 1 1 4DA89C09
P 2000 3350
F 0 "#PWR02" H 2000 3350 30  0001 C CNN
F 1 "GND" H 2000 3280 30  0001 C CNN
	1    2000 3350
	0    -1   -1   0   
$EndComp
Text Label 2350 3150 2    60   ~ 0
+5V
$Comp
L CONN_2 P1
U 1 1 4DA89BEF
P 1400 3250
F 0 "P1" V 1350 3250 40  0000 C CNN
F 1 "Output" V 1450 3250 40  0000 C CNN
	1    1400 3250
	-1   0    0    1   
$EndComp
Text Label 1950 2600 1    60   ~ 0
+5V
Text Label 1000 2250 0    60   ~ 0
+15V
$Comp
L GND #PWR03
U 1 1 4DA89B88
P 2750 2250
F 0 "#PWR03" H 2750 2250 30  0001 C CNN
F 1 "GND" H 2750 2180 30  0001 C CNN
	1    2750 2250
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 4DA89B63
P 2300 2250
F 0 "R2" V 2380 2250 50  0000 C CNN
F 1 "10k" V 2300 2250 50  0000 C CNN
	1    2300 2250
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 4DA89B51
P 1600 2250
F 0 "R1" V 1680 2250 50  0000 C CNN
F 1 "20k" V 1600 2250 50  0000 C CNN
	1    1600 2250
	0    -1   -1   0   
$EndComp
Text Label 2600 1300 2    60   ~ 0
+15V
$Comp
L GND #PWR04
U 1 1 4DA89B1C
P 2200 1500
F 0 "#PWR04" H 2200 1500 30  0001 C CNN
F 1 "GND" H 2200 1430 30  0001 C CNN
	1    2200 1500
	0    -1   -1   0   
$EndComp
$Comp
L CONN_2 P2
U 1 1 4DA89B0A
P 1700 1400
F 0 "P2" V 1650 1400 40  0000 C CNN
F 1 "Input" V 1750 1400 40  0000 C CNN
	1    1700 1400
	-1   0    0    1   
$EndComp
$EndSCHEMATC
