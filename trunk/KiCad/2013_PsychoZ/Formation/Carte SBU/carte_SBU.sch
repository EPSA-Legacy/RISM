EESchema Schematic File Version 2  date 16/02/2012 17:09:27
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
Title "Carte de formation Kicad"
Date "16 feb 2012"
Rev "1.0"
Comp "EPSA - PsychoZ"
Comment1 "carte d'entrainement de SBU"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 1200 1200 0    60   ~ 0
12V
Text Notes 1400 2650 0    60   ~ 0
module série
Wire Notes Line
	4400 2500 1300 2500
Wire Notes Line
	700  1700 700  1900
Wire Notes Line
	700  1900 4450 1900
Wire Notes Line
	4450 1900 4450 750 
Wire Wire Line
	3550 4350 3550 4300
Wire Wire Line
	3550 4300 3600 4300
Wire Wire Line
	3600 4100 3400 4100
Wire Wire Line
	3400 4100 3400 4050
Wire Wire Line
	3400 4050 3200 4050
Connection ~ 3700 3850
Wire Wire Line
	3700 3950 3700 3350
Connection ~ 3900 3350
Connection ~ 3700 3550
Wire Wire Line
	3700 3350 4200 3350
Connection ~ 3900 2950
Wire Wire Line
	4200 2950 3200 2950
Wire Wire Line
	3700 3550 3200 3550
Wire Wire Line
	1450 3850 1600 3850
Wire Wire Line
	1450 3350 1600 3350
Wire Notes Line
	700  1750 700  750 
Wire Notes Line
	700  750  4450 750 
Connection ~ 2950 1200
Wire Wire Line
	2950 1150 2950 1200
Wire Wire Line
	4250 1600 4250 1200
Wire Wire Line
	4250 1200 4200 1200
Connection ~ 3100 1600
Connection ~ 3100 1200
Connection ~ 1800 1600
Connection ~ 2500 1600
Wire Wire Line
	1200 1300 1200 1200
Wire Wire Line
	1200 1200 2100 1200
Connection ~ 1400 1200
Wire Wire Line
	1200 1500 1200 1600
Connection ~ 1400 1600
Connection ~ 1800 1200
Wire Wire Line
	2900 1200 3800 1200
Connection ~ 3500 1200
Wire Wire Line
	1200 1600 3750 1600
Connection ~ 3500 1600
Wire Wire Line
	1450 2950 1600 2950
Wire Wire Line
	1450 3450 1600 3450
Wire Wire Line
	3200 3850 3300 3850
Wire Wire Line
	3200 3350 3350 3350
Connection ~ 3350 2950
Wire Wire Line
	3200 2950 3200 2850
Wire Wire Line
	2500 1500 2500 1650
Wire Wire Line
	3200 4250 3400 4250
Wire Wire Line
	3400 4250 3400 4200
Wire Wire Line
	3400 4200 3600 4200
Wire Wire Line
	1600 4050 1550 4050
Wire Wire Line
	1550 4050 1550 4250
Wire Wire Line
	1550 4250 1600 4250
Wire Notes Line
	4400 2500 4400 4600
Wire Notes Line
	4400 4600 1300 4600
Wire Notes Line
	1300 4600 1300 2500
$Comp
L PWR_FLAG #FLG01
U 1 1 4F3D1E92
P 1200 1600
F 0 "#FLG01" H 1200 1695 30  0001 C CNN
F 1 "PWR_FLAG" H 1200 1780 30  0000 C CNN
	1    1200 1600
	-1   0    0    1   
$EndComp
NoConn ~ 1600 4350
NoConn ~ 1600 4150
NoConn ~ 3200 4350
NoConn ~ 3200 4150
$Comp
L GND #PWR02
U 1 1 4F3D1DE5
P 3550 4350
F 0 "#PWR02" H 3550 4350 30  0001 C CNN
F 1 "GND" H 3550 4280 30  0001 C CNN
	1    3550 4350
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 K1
U 1 1 4F3D1D61
P 3950 4200
F 0 "K1" V 3900 4200 50  0000 C CNN
F 1 "RS132" V 4000 4200 40  0000 C CNN
	1    3950 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 4F3D1D07
P 2500 1650
F 0 "#PWR03" H 2500 1650 30  0001 C CNN
F 1 "GND" H 2500 1580 30  0001 C CNN
	1    2500 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 4F3D1CD1
P 3700 3950
F 0 "#PWR04" H 3700 3950 30  0001 C CNN
F 1 "GND" H 3700 3880 30  0001 C CNN
	1    3700 3950
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 4F3D1CB1
P 3200 2850
F 0 "#PWR05" H 3200 2950 30  0001 C CNN
F 1 "VCC" H 3200 2950 30  0000 C CNN
	1    3200 2850
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 4F3D1C43
P 3900 3150
F 0 "C7" H 3950 3250 50  0000 L CNN
F 1 "27p" H 3950 3050 50  0000 L CNN
	1    3900 3150
	-1   0    0    -1  
$EndComp
$Comp
L CP C8
U 1 1 4F3D1C39
P 4200 3150
F 0 "C8" H 4250 3250 50  0000 L CNN
F 1 "1u" H 4250 3050 50  0000 L CNN
	1    4200 3150
	1    0    0    -1  
$EndComp
$Comp
L CP C6
U 1 1 4F3D1C32
P 3350 3150
F 0 "C6" H 3400 3250 50  0000 L CNN
F 1 "1u" H 3400 3050 50  0000 L CNN
	1    3350 3150
	-1   0    0    1   
$EndComp
$Comp
L CP C10
U 1 1 4F3D1C2A
P 3500 3850
F 0 "C10" H 3550 3950 50  0000 L CNN
F 1 "1u" H 3550 3750 50  0000 L CNN
	1    3500 3850
	0    1    -1   0   
$EndComp
$Comp
L CP C9
U 1 1 4F3D1B92
P 1450 3650
F 0 "C9" H 1500 3750 50  0000 L CNN
F 1 "1u" H 1500 3550 50  0000 L CNN
	1    1450 3650
	1    0    0    -1  
$EndComp
$Comp
L CP C5
U 1 1 4F3D1B85
P 1450 3150
F 0 "C5" H 1500 3250 50  0000 L CNN
F 1 "1u" H 1500 3050 50  0000 L CNN
	1    1450 3150
	1    0    0    -1  
$EndComp
$Comp
L MAX232 U2
U 1 1 4F3D1B30
P 2400 3650
F 0 "U2" H 2400 4500 70  0000 C CNN
F 1 "MAX232" H 2400 2800 70  0000 C CNN
	1    2400 3650
	1    0    0    -1  
$EndComp
Text Notes 850  900  0    60   ~ 0
Alimentation
$Comp
L VCC #PWR06
U 1 1 4F3D19F2
P 2950 1150
F 0 "#PWR06" H 2950 1250 30  0001 C CNN
F 1 "VCC" H 2950 1250 30  0000 C CNN
	1    2950 1150
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4F3D18FA
P 4000 1600
F 0 "R1" V 4080 1600 50  0000 C CNN
F 1 "510" V 4000 1600 50  0000 C CNN
	1    4000 1600
	0    -1   -1   0   
$EndComp
$Comp
L LED D1
U 1 1 4F3D18DC
P 4000 1200
F 0 "D1" H 4000 1300 50  0000 C CNN
F 1 "LED" H 4000 1100 50  0000 C CNN
	1    4000 1200
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P1
U 1 1 4F3D163C
P 850 1400
F 0 "P1" V 800 1400 40  0000 C CNN
F 1 "ALIM" V 900 1400 40  0000 C CNN
	1    850  1400
	-1   0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 4F3D14F4
P 3500 1400
F 0 "C4" H 3550 1500 50  0000 L CNN
F 1 "27p" H 3550 1300 50  0000 L CNN
	1    3500 1400
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 4F3D14F0
P 1800 1400
F 0 "C2" H 1850 1500 50  0000 L CNN
F 1 "27p" H 1850 1300 50  0000 L CNN
	1    1800 1400
	1    0    0    -1  
$EndComp
$Comp
L CP C3
U 1 1 4F3D1453
P 3100 1400
F 0 "C3" H 3150 1500 50  0000 L CNN
F 1 "10u" H 3150 1300 50  0000 L CNN
	1    3100 1400
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 4F3D1418
P 1400 1400
F 0 "C1" H 1450 1500 50  0000 L CNN
F 1 "100u" H 1450 1300 50  0000 L CNN
	1    1400 1400
	1    0    0    -1  
$EndComp
$Comp
L 7805 U1
U 1 1 4F3D138C
P 2500 1250
F 0 "U1" H 2650 1054 60  0000 C CNN
F 1 "7805" H 2500 1450 60  0000 C CNN
	1    2500 1250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
