EESchema Schematic File Version 2  date 19/04/2011 11:51:19
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
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "Carte pont diviseur"
Date "19 apr 2011"
Rev "1.0"
Comp "EPSA - Benchy"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 1200 1200 0    60   ~ 0
Connecteur
Wire Bus Line
	2450 1100 1150 1100
Wire Bus Line
	2450 1100 2450 1850
Wire Bus Line
	2450 1850 1150 1850
Wire Bus Line
	1150 1850 1150 1100
Wire Wire Line
	1750 1500 2200 1500
Wire Wire Line
	1750 1300 2200 1300
Wire Wire Line
	2550 2250 2750 2250
Wire Wire Line
	1000 2250 1350 2250
Wire Wire Line
	1850 2250 2050 2250
Wire Wire Line
	1950 2250 1950 2600
Connection ~ 1950 2250
Wire Notes Line
	950  2700 950  1950
Wire Notes Line
	950  2700 2950 2700
Wire Notes Line
	2950 2700 2950 1950
Wire Notes Line
	2950 1950 950  1950
Wire Wire Line
	1750 1400 2200 1400
Wire Wire Line
	1950 1550 1950 1500
Connection ~ 1950 1500
$Comp
L CONN_3 K?
U 1 1 4DAD5092
P 1400 1400
F 0 "K?" V 1350 1400 50  0000 C CNN
F 1 "CONN_3" V 1450 1400 40  0000 C CNN
	1    1400 1400
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG01
U 1 1 4DA89C95
P 1950 1550
F 0 "#FLG01" H 1950 1820 30  0001 C CNN
F 1 "PWR_FLAG" H 1950 1780 30  0000 C CNN
	1    1950 1550
	-1   0    0    1   
$EndComp
Text Notes 1000 2050 0    60   ~ 0
Pont\n
Text Label 2200 1400 2    60   ~ 0
+5V
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
Text Label 2200 1300 2    60   ~ 0
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
$EndSCHEMATC
