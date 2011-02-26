EESchema Schematic File Version 1
LIBS:power,device,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,analog_switches,motorola,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib
EELAYER 23  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title ""
Date "27 apr 2010"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6550 3850 6150 3850
Wire Wire Line
	6250 3500 6250 3650
Wire Wire Line
	6250 3500 7300 3500
Wire Wire Line
	7300 3500 7300 4550
Wire Wire Line
	7300 4550 5750 4550
Wire Wire Line
	5750 4550 5750 4150
Connection ~ 4100 3150
Connection ~ 4300 3150
Wire Wire Line
	3950 3750 4300 3750
Wire Wire Line
	4300 3750 4300 3150
Wire Wire Line
	7550 1550 7200 1550
Wire Wire Line
	6250 3650 6150 3650
Wire Wire Line
	5950 2050 5650 2050
Connection ~ 4100 2050
Wire Wire Line
	4100 2000 4100 2050
Wire Wire Line
	3950 2450 4250 2450
Wire Wire Line
	3950 4150 3950 3850
Wire Wire Line
	3950 3650 3950 3350
Connection ~ 8550 2050
Wire Wire Line
	5150 3750 4900 3750
Wire Wire Line
	5750 3350 6050 3350
Wire Wire Line
	7000 1550 7000 2050
Wire Wire Line
	7000 2050 7900 2050
Wire Wire Line
	7100 1550 7100 1750
Wire Wire Line
	5650 3350 5650 3200
Wire Wire Line
	5650 3200 5800 3200
Wire Wire Line
	5800 3200 5800 2900
Wire Wire Line
	5550 3350 5550 3200
Wire Wire Line
	5550 3200 5400 3200
Wire Wire Line
	5400 3200 5400 2900
Wire Wire Line
	7100 1750 7850 1750
Wire Wire Line
	8350 1750 8550 1750
Wire Wire Line
	8550 1750 8550 2400
Wire Wire Line
	8550 2400 8400 2400
Wire Wire Line
	4050 3500 3950 3500
Connection ~ 3950 3500
Wire Wire Line
	4350 3150 3950 3150
Wire Wire Line
	3950 4350 4000 4350
Wire Wire Line
	4200 4000 3950 4000
Connection ~ 3950 4000
Wire Wire Line
	3950 2050 4250 2050
Wire Wire Line
	4100 2500 4100 2450
Connection ~ 4100 2450
Wire Wire Line
	5950 1850 5650 1850
Wire Wire Line
	8850 2050 8400 2050
Connection ~ 6400 3850
Wire Wire Line
	6400 4350 6800 4350
Wire Wire Line
	7900 2400 6900 2400
Wire Wire Line
	6900 2400 6900 1550
Wire Wire Line
	3950 3350 4000 3350
$Comp
L PWR_FLAG #FLG2
U 1 1 4BCFFFE6
P 4000 3350
F 0 "#FLG2" H 4000 3620 30  0001 C C
F 1 "PWR_FLAG" H 4000 3580 30  0000 C C
	1    4000 3350
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG1
U 1 1 4BCFFFE1
P 4100 3150
F 0 "#FLG1" H 4100 3420 30  0001 C C
F 1 "PWR_FLAG" H 4100 3380 30  0000 C C
	1    4100 3150
	1    0    0    -1  
$EndComp
Text Label 7200 1750 0    60   ~
ref9
Text Label 7200 2050 0    60   ~
ref8
Text Label 7200 2400 0    60   ~
ref7
Text Label 7300 1550 0    60   ~
Vimg
Text Label 6550 4350 0    60   ~
Vsc+
$Comp
L R R3
U 1 1 4BCFFD73
P 6400 4100
F 0 "R3" V 6480 4100 50  0000 C C
F 1 "10k 9W" V 6400 4100 50  0000 C C
	1    6400 4100
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 4BCFFCD7
P 3950 2250
F 0 "C2" H 4000 2350 50  0000 L C
F 1 "22p" H 4000 2150 50  0000 L C
	1    3950 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR7
U 1 1 4BCFFCC1
P 4100 2500
F 0 "#PWR7" H 4100 2500 30  0001 C C
F 1 "GND" H 4100 2430 30  0001 C C
	1    4100 2500
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR3
U 1 1 4BCFFCBA
P 4100 2000
F 0 "#PWR3" H 4100 1950 20  0001 C C
F 1 "+12V" H 4100 2100 30  0000 C C
	1    4100 2000
	1    0    0    -1  
$EndComp
$Comp
L CP C3
U 1 1 4BCFFC81
P 4250 2250
F 0 "C3" H 4300 2350 50  0000 L C
F 1 "1u" H 4300 2150 50  0000 L C
	1    4250 2250
	1    0    0    -1  
$EndComp
Text Label 5000 3750 0    60   ~
VS
Text Label 4050 4000 0    60   ~
VS
$Comp
L GND #PWR6
U 1 1 4BCFFC1E
P 4000 4350
F 0 "#PWR6" H 4000 4350 30  0001 C C
F 1 "GND" H 4000 4280 30  0001 C C
	1    4000 4350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR5
U 1 1 4BCFFBE9
P 4050 3500
F 0 "#PWR5" H 4050 3500 30  0001 C C
F 1 "GND" H 4050 3430 30  0001 C C
	1    4050 3500
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR4
U 1 1 4BCFFBDB
P 6050 3350
F 0 "#PWR4" H 6050 3350 30  0001 C C
F 1 "GND" H 6050 3280 30  0001 C C
	1    6050 3350
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR2
U 1 1 4BCFFBA4
P 6250 3650
F 0 "#PWR2" H 6250 3600 20  0001 C C
F 1 "+12V" H 6250 3750 30  0000 C C
	1    6250 3650
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR1
U 1 1 4BCFFB96
P 4350 3150
F 0 "#PWR1" H 4350 3100 20  0001 C C
F 1 "+12V" H 4350 3250 30  0000 C C
	1    4350 3150
	1    0    0    -1  
$EndComp
$Comp
L CONN_4 P5
U 1 1 4BC7915E
P 7050 1200
F 0 "P5" V 7000 1200 50  0000 C C
F 1 "Select" V 7100 1200 50  0000 C C
	1    7050 1200
	0    -1   -1   0   
$EndComp
Text Label 8650 2050 0    60   ~
Vsc-
Text Label 6550 3850 0    60   ~
Vimg
$Comp
L CONN_3 P2
U 1 1 4BC4FDF0
P 3600 3750
F 0 "P2" V 3550 3750 50  0000 C C
F 1 "Display" V 3650 3750 40  0000 C C
	1    3600 3750
	-1   0    0    1   
$EndComp
Text Label 5700 1850 0    60   ~
Vsc+
Text Label 5700 2050 0    60   ~
Vsc-
$Comp
L CONN_2 P3
U 1 1 4BC4B36A
P 3600 4250
F 0 "P3" V 3550 4250 40  0000 C C
F 1 "Relais" V 3650 4250 40  0000 C C
	1    3600 4250
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P1
U 1 1 4BC4B361
P 3600 3250
F 0 "P1" V 3550 3250 40  0000 C C
F 1 "Alim" V 3650 3250 40  0000 C C
	1    3600 3250
	-1   0    0    -1  
$EndComp
$Comp
L R R41
U 1 1 4BC4A2D1
P 8150 2400
F 0 "R41" V 8230 2400 50  0000 C C
F 1 "3.3k 1W" V 8150 2400 50  0000 C C
	1    8150 2400
	0    1    1    0   
$EndComp
$Comp
L R R42
U 1 1 4BC4A2CB
P 8150 2050
F 0 "R42" V 8230 2050 50  0000 C C
F 1 "1.5k 1W" V 8150 2050 50  0000 C C
	1    8150 2050
	0    1    1    0   
$EndComp
$Comp
L R R43
U 1 1 4BC4A2C6
P 8100 1750
F 0 "R43" V 8180 1750 50  0000 C C
F 1 "870 1W" V 8100 1750 50  0000 C C
	1    8100 1750
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P4
U 1 1 4BC4A22D
P 5300 1950
F 0 "P4" V 5250 1950 40  0000 C C
F 1 "SCapa" V 5350 1950 40  0000 C C
	1    5300 1950
	-1   0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 4BC4A1CF
P 5600 2900
F 0 "C1" H 5650 3000 50  0000 L C
F 1 "1n" H 5650 2800 50  0000 L C
	1    5600 2900
	0    -1   -1   0   
$EndComp
$Comp
L LM6161 U1
U 1 1 4BC4A197
P 5650 3750
F 0 "U1" H 5800 4050 60  0000 C C
F 1 "LT1008" H 5800 3950 60  0000 C C
	1    5650 3750
	-1   0    0    1   
$EndComp
$EndSCHEMATC
