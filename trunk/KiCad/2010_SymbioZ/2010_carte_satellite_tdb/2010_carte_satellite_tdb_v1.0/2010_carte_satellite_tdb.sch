EESchema Schematic File Version 1
LIBS:power,symbioz,device,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,analog_switches,motorola,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib,./2010_carte_satellite_tdb.cache
EELAYER 23  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "Carte satellite TdB"
Date "21 may 2010"
Rev "1.0"
Comp "EPSA - SymbioZ"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 4250 1550
NoConn ~ 4250 2800
NoConn ~ 4250 4050
Text Label 4400 5500 0    60   ~
Enbl_G
Text Label 4400 6100 0    60   ~
LE2
Text Label 4250 5400 0    60   ~
LE1
Text Label 4400 5700 0    60   ~
Enbl_R
Text Label 4400 5900 0    60   ~
LE3
Text Label 4250 5600 0    60   ~
D
Text Label 4250 5800 0    60   ~
C
Text Label 4250 6000 0    60   ~
B
Text Label 4250 6200 0    60   ~
A
Wire Wire Line
	4800 6200 4200 6200
Wire Wire Line
	4800 6100 4350 6100
Wire Wire Line
	4800 6000 4200 6000
Wire Wire Line
	4800 5900 4350 5900
Wire Wire Line
	4800 5800 4200 5800
Wire Wire Line
	4800 5700 4350 5700
Wire Wire Line
	4800 5600 4200 5600
Wire Wire Line
	4800 5500 4350 5500
Wire Wire Line
	4800 5400 4200 5400
$Comp
L DB9 J2
U 1 1 4BF5DA92
P 5250 5800
F 0 "J2" H 5250 6350 70  0000 C C
F 1 "DB9" H 5250 5250 70  0000 C C
	1    5250 5800
	1    0    0    -1  
$EndComp
Wire Notes Line
	8650 3900 8650 5600
Wire Notes Line
	7100 3900 7100 5600
Wire Notes Line
	9850 550  7100 550 
Wire Notes Line
	9850 550  9850 1600
Wire Notes Line
	9850 1600 7100 1600
Connection ~ 9150 1300
Wire Wire Line
	9450 1300 7600 1300
Connection ~ 8600 1300
Connection ~ 9150 900 
Wire Wire Line
	9450 900  9000 900 
Connection ~ 9050 900 
$Comp
L CAPAPOL C3
U 1 1 4BF59B83
P 9450 1100
F 0 "C3" H 9500 1200 50  0000 L C
F 1 "10u" H 9500 1000 50  0000 L C
	1    9450 1100
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 4BF59B7D
P 9150 1100
F 0 "C4" H 9200 1200 50  0000 L C
F 1 "27p" H 9200 1000 50  0000 L C
	1    9150 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 6500 1550 6500
Text Notes 9600 5800 0    60   ~
BarGraph Temp
Text Notes 9500 4700 0    60   ~
BarGraph Charge
Wire Notes Line
	10500 5000 9100 5000
Wire Notes Line
	10500 5000 10500 5850
Wire Notes Line
	10500 5850 9100 5850
Wire Notes Line
	9100 5850 9100 5000
Wire Notes Line
	10500 3900 9100 3900
Wire Notes Line
	10500 3900 10500 4750
Wire Notes Line
	10500 4750 9100 4750
Wire Notes Line
	9100 4750 9100 3900
$Comp
L GND #PWR24
U 1 1 4BF59972
P 9800 5600
F 0 "#PWR24" H 9800 5600 30  0001 C C
F 1 "GND" H 9800 5530 30  0001 C C
	1    9800 5600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR23
U 1 1 4BF5996C
P 9800 4500
F 0 "#PWR23" H 9800 4500 30  0001 C C
F 1 "GND" H 9800 4430 30  0001 C C
	1    9800 4500
	0    1    1    0   
$EndComp
Text Label 9550 5200 0    60   ~
LT2
Text Label 1900 6400 0    60   ~
LT3
Text Label 9550 5500 0    60   ~
LT5
Text Label 9550 5400 0    60   ~
LT4
Text Label 9550 5300 0    60   ~
LT3
Text Label 9550 5100 0    60   ~
LT1
Text Label 9550 4400 0    60   ~
LC5
Text Label 9550 4300 0    60   ~
LC4
Text Label 9550 4200 0    60   ~
LC3
Text Label 9550 4100 0    60   ~
LC2
Text Label 9550 4000 0    60   ~
LC1
Wire Wire Line
	9950 5600 9800 5600
Wire Wire Line
	9950 4500 9800 4500
Wire Wire Line
	9950 5500 9450 5500
Wire Wire Line
	9950 5400 9450 5400
Wire Wire Line
	9950 5300 9450 5300
Wire Wire Line
	9950 5200 9450 5200
Wire Wire Line
	9950 5100 9450 5100
Wire Wire Line
	9950 4400 9450 4400
Wire Wire Line
	9950 4300 9450 4300
Wire Wire Line
	9950 4200 9450 4200
Wire Wire Line
	9950 4100 9450 4100
Wire Wire Line
	9950 4000 9450 4000
$Comp
L CONN_6 P3
U 1 1 4BF5987F
P 10300 5350
F 0 "P3" V 10250 5350 60  0000 C C
F 1 "Temp" V 10350 5350 60  0000 C C
	1    10300 5350
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P2
U 1 1 4BF5986E
P 10300 4250
F 0 "P2" V 10250 4250 60  0000 C C
F 1 "Charge" V 10350 4250 60  0000 C C
	1    10300 4250
	1    0    0    -1  
$EndComp
Text Notes 1700 7650 0    60   ~
Connecteur DB25
Wire Notes Line
	2700 4650 800  4650
Wire Notes Line
	2700 4650 2700 7700
Wire Notes Line
	2700 7700 800  7700
Wire Notes Line
	800  7700 800  4650
$Comp
L +12V #PWR2
U 1 1 4BF59777
P 2450 6800
F 0 "#PWR2" H 2450 6750 20  0001 C C
F 1 "+12V" H 2450 6900 30  0000 C C
	1    2450 6800
	1    0    0    -1  
$EndComp
Connection ~ 2350 6800
Wire Wire Line
	2350 6800 2450 6800
Wire Wire Line
	2350 6900 2350 6700
$Comp
L GND #PWR22
U 1 1 4BF59761
P 2450 7150
F 0 "#PWR22" H 2450 7150 30  0001 C C
F 1 "GND" H 2450 7080 30  0001 C C
	1    2450 7150
	0    -1   -1   0   
$EndComp
Connection ~ 2350 7150
Wire Wire Line
	2350 7150 2450 7150
Connection ~ 2350 7100
Connection ~ 2350 7200
Wire Wire Line
	2350 7000 2350 7300
Wire Wire Line
	2350 7200 1550 7200
Wire Wire Line
	2350 7000 1550 7000
Text Label 1900 6800 0    60   ~
LT5
Text Label 1900 6600 0    60   ~
LT4
Text Label 1900 6200 0    60   ~
LT2
Text Label 1900 6000 0    60   ~
LT1
Text Label 1900 5800 0    60   ~
LC5
Text Label 1900 5600 0    60   ~
LC4
Text Label 1900 5400 0    60   ~
LC3
Text Label 1900 5200 0    60   ~
LC2
Text Label 1900 5000 0    60   ~
LC1
Text Label 2200 6500 0    60   ~
Enbl_G
Text Label 2200 6300 0    60   ~
Enbl_R
Text Label 2200 6100 0    60   ~
LE3
Text Label 2200 5900 0    60   ~
LE2
Text Label 2200 5700 0    60   ~
LE1
Text Label 2200 5500 0    60   ~
D
Text Label 2200 5300 0    60   ~
C
Text Label 2200 5100 0    60   ~
B
Text Label 2200 4900 0    60   ~
A
Wire Wire Line
	1550 4900 2350 4900
Wire Wire Line
	1550 5100 2350 5100
Wire Wire Line
	1550 5300 2350 5300
Wire Wire Line
	1550 5500 2350 5500
Wire Wire Line
	2350 7300 1550 7300
Wire Wire Line
	1550 7100 2350 7100
Wire Wire Line
	2350 6900 1550 6900
Wire Wire Line
	1550 6800 2050 6800
Wire Wire Line
	2350 6700 1550 6700
Wire Wire Line
	1550 6600 2050 6600
Wire Wire Line
	1550 6400 2050 6400
Wire Wire Line
	1550 6300 2350 6300
Wire Wire Line
	1550 6200 2050 6200
Wire Wire Line
	1550 6100 2350 6100
Wire Wire Line
	1550 6000 2050 6000
Wire Wire Line
	1550 5900 2350 5900
Wire Wire Line
	1550 5800 2050 5800
Wire Wire Line
	1550 5700 2350 5700
Wire Wire Line
	1550 5600 2050 5600
Wire Wire Line
	1550 5400 2050 5400
Wire Wire Line
	1550 5200 2050 5200
Wire Wire Line
	1550 5000 2050 5000
$Comp
L DB25 J1
U 1 1 4BF595AC
P 1100 6100
F 0 "J1" H 1150 7450 70  0000 C C
F 1 "DB25" H 1050 4750 70  0000 C C
	1    1100 6100
	-1   0    0    1   
$EndComp
$Comp
L +6V #PWR8
U 1 1 4BF57F4C
P 9050 900
F 0 "#PWR8" H 9050 1030 20  0001 C C
F 1 "+6V" H 9050 1000 30  0000 C C
	1    9050 900 
	1    0    0    -1  
$EndComp
Connection ~ 7950 900 
$Comp
L +12V #PWR1
U 1 1 4BF57F38
P 7950 900
F 0 "#PWR1" H 7950 850 20  0001 C C
F 1 "+12V" H 7950 1000 30  0000 C C
	1    7950 900 
	1    0    0    -1  
$EndComp
Wire Notes Line
	7100 1600 7100 550 
Wire Wire Line
	8600 1300 8600 1200
Connection ~ 7800 1300
Wire Wire Line
	7600 1300 7600 1200
Connection ~ 8150 900 
Connection ~ 8000 1300
Wire Wire Line
	8000 1300 8000 1400
Wire Wire Line
	7600 1000 7600 900 
Wire Wire Line
	7600 900  8200 900 
Connection ~ 7800 900 
Connection ~ 8150 1300
$Comp
L CONN_2 P1
U 1 1 4BF57F37
P 7250 1100
F 0 "P1" V 7200 1100 40  0000 C C
F 1 "ALIM" V 7300 1100 40  0000 C C
	1    7250 1100
	-1   0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG2
U 1 1 4BF57F36
P 7600 1300
F 0 "#FLG2" H 7600 1570 30  0001 C C
F 1 "PWR_FLAG" H 7600 1530 30  0000 C C
	1    7600 1300
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG1
U 1 1 4BF57F35
P 7600 900
F 0 "#FLG1" H 7600 1170 30  0001 C C
F 1 "PWR_FLAG" H 7600 1130 30  0000 C C
	1    7600 900 
	1    0    0    -1  
$EndComp
Text Notes 8100 1550 0    60   ~
Module Alimentation
$Comp
L GND #PWR21
U 1 1 4BF57F34
P 8000 1400
F 0 "#PWR21" H 8000 1400 30  0001 C C
F 1 "GND" H 8000 1330 30  0001 C C
	1    8000 1400
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C1
U 1 1 4BF57F33
P 8150 1100
F 0 "C1" H 8200 1200 50  0000 L C
F 1 "10u" H 8200 1000 50  0000 L C
	1    8150 1100
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 4BF57F32
P 7800 1100
F 0 "C2" H 7850 1200 50  0000 L C
F 1 "27p" H 7850 1000 50  0000 L C
	1    7800 1100
	1    0    0    -1  
$EndComp
$Comp
L 7805 U10
U 1 1 4BF57F31
P 8600 950
F 0 "U10" H 8750 754 60  0000 C C
F 1 "7806" H 8600 1150 60  0000 C C
	1    8600 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1200 2300 1200
Wire Wire Line
	2700 700  2300 700 
$Comp
L +6V #PWR7
U 1 1 4BF57BEE
P 8500 4900
F 0 "#PWR7" H 8500 5030 20  0001 C C
F 1 "+6V" H 8500 5000 30  0000 C C
	1    8500 4900
	1    0    0    -1  
$EndComp
$Comp
L +6V #PWR6
U 1 1 4BF57BEA
P 8500 4150
F 0 "#PWR6" H 8500 4280 20  0001 C C
F 1 "+6V" H 8500 4250 30  0000 C C
	1    8500 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2950 9400 2950
Wire Wire Line
	9400 2850 8200 2850
Wire Wire Line
	8900 2350 9400 2350
Wire Wire Line
	9400 2450 8200 2450
Text Notes 7750 5550 0    60   ~
Bloc Securite
Wire Notes Line
	7100 3900 8650 3900
Wire Notes Line
	7100 5600 8650 5600
Text Notes 9400 3650 0    60   ~
 Bloc Coloration
Wire Notes Line
	10500 1750 7100 1750
Wire Notes Line
	10500 1750 10500 3700
Wire Notes Line
	10500 3700 7100 3700
Wire Notes Line
	7100 3700 7100 1750
Text Label 8950 2950 0    60   ~
Enbl_G
Text Label 8950 2350 0    60   ~
Enbl_R
$Comp
L GND #PWR17
U 1 1 4BF579D6
P 8600 1850
F 0 "#PWR17" H 8600 1850 30  0001 C C
F 1 "GND" H 8600 1780 30  0001 C C
	1    8600 1850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR16
U 1 1 4BF579CE
P 8600 3450
F 0 "#PWR16" H 8600 3450 30  0001 C C
F 1 "GND" H 8600 3380 30  0001 C C
	1    8600 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8500 3450 8600 3450
Wire Wire Line
	8500 1850 8600 1850
$Comp
L GND #PWR15
U 1 1 4BF579A5
P 9200 3100
F 0 "#PWR15" H 9200 3100 30  0001 C C
F 1 "GND" H 9200 3030 30  0001 C C
	1    9200 3100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR14
U 1 1 4BF5799F
P 9200 2200
F 0 "#PWR14" H 9200 2200 30  0001 C C
F 1 "GND" H 9200 2130 30  0001 C C
	1    9200 2200
	0    1    1    0   
$EndComp
Connection ~ 9400 2200
Wire Wire Line
	9400 2200 9200 2200
Wire Wire Line
	9400 2250 9400 2150
Connection ~ 9400 3100
Wire Wire Line
	9400 3100 9200 3100
Wire Wire Line
	9400 3050 9400 3150
Connection ~ 8500 2450
Connection ~ 8500 2850
Wire Wire Line
	7200 2850 7700 2850
Wire Wire Line
	7200 2450 7700 2450
$Comp
L JUMPER JP6
U 1 1 4BF57898
P 8500 3150
F 0 "JP6" H 8500 3300 60  0000 C C
F 1 "G_GND" H 8500 3070 40  0000 C C
	1    8500 3150
	0    1    1    0   
$EndComp
$Comp
L JUMPER JP5
U 1 1 4BF57886
P 8500 2150
F 0 "JP5" H 8500 2300 60  0000 C C
F 1 "R_GND" H 8500 2070 40  0000 C C
	1    8500 2150
	0    1    1    0   
$EndComp
$Comp
L REED9081_SYMBIOZ U9
U 1 1 4BF5773B
P 9800 3000
F 0 "U9" H 9850 3300 60  0000 C C
F 1 "REED9081_SYMBIOZ" H 9900 2700 60  0000 C C
	1    9800 3000
	1    0    0    -1  
$EndComp
$Comp
L REED9081_SYMBIOZ U8
U 1 1 4BF57730
P 9800 2300
F 0 "U8" H 9850 2600 60  0000 C C
F 1 "REED9081_SYMBIOZ" H 9900 2000 60  0000 C C
	1    9800 2300
	1    0    0    1   
$EndComp
Text Notes 5000 4600 0    60   ~
Afficheurs 7-Segments
Wire Notes Line
	6400 550  3600 550 
Wire Notes Line
	6400 550  6400 4650
Wire Notes Line
	6400 4650 3600 4650
Wire Notes Line
	3600 4650 3600 550 
Wire Wire Line
	6250 3700 5750 3700
Wire Wire Line
	6250 3500 5750 3500
Wire Wire Line
	4250 3850 3750 3850
Wire Wire Line
	4250 3750 3750 3750
Wire Wire Line
	4250 3650 3750 3650
Wire Wire Line
	4250 3550 3750 3550
Wire Wire Line
	4250 3450 3750 3450
Wire Wire Line
	4250 3350 3750 3350
Wire Wire Line
	4250 3250 3750 3250
Text Notes 1600 4400 0    60   ~
Drivers 7-Segments
Wire Notes Line
	550  550  550  4450
Wire Notes Line
	550  550  2850 550 
Wire Notes Line
	2850 550  2850 4450
Wire Notes Line
	2850 4450 550  4450
Wire Wire Line
	1150 1550 1050 1550
Wire Wire Line
	1150 2750 1050 2750
Wire Wire Line
	1150 3950 1050 3950
$Comp
L GND #PWR13
U 1 1 4BF2537A
P 1050 3950
F 0 "#PWR13" H 1050 3950 30  0001 C C
F 1 "GND" H 1050 3880 30  0001 C C
	1    1050 3950
	0    1    1    0   
$EndComp
$Comp
L GND #PWR12
U 1 1 4BF25373
P 1050 2750
F 0 "#PWR12" H 1050 2750 30  0001 C C
F 1 "GND" H 1050 2680 30  0001 C C
	1    1050 2750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR11
U 1 1 4BF25368
P 1050 1550
F 0 "#PWR11" H 1050 1550 30  0001 C C
F 1 "GND" H 1050 1480 30  0001 C C
	1    1050 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 1500 2450 1550
Wire Wire Line
	2450 1550 2300 1550
$Comp
L +6V #PWR5
U 1 1 4BF25358
P 2450 1500
F 0 "#PWR5" H 2450 1630 20  0001 C C
F 1 "+6V" H 2450 1600 30  0000 C C
	1    2450 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2700 2450 2750
Wire Wire Line
	2450 2750 2300 2750
$Comp
L +6V #PWR4
U 1 1 4BF25344
P 2450 2700
F 0 "#PWR4" H 2450 2830 20  0001 C C
F 1 "+6V" H 2450 2800 30  0000 C C
	1    2450 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3900 2450 3950
Wire Wire Line
	2450 3950 2300 3950
$Comp
L +6V #PWR3
U 1 1 4BF2531A
P 2450 3900
F 0 "#PWR3" H 2450 4030 20  0001 C C
F 1 "+6V" H 2450 4000 30  0000 C C
	1    2450 3900
	1    0    0    -1  
$EndComp
Text Label 7250 2850 0    60   ~
GND_G
Text Label 7250 2450 0    60   ~
GND_R
$Comp
L RVAR R2
U 1 1 4BF2521F
P 7950 2850
F 0 "R2" V 8030 2800 50  0000 C C
F 1 "RVAR" V 7870 2910 50  0000 C C
	1    7950 2850
	0    1    -1   0   
$EndComp
$Comp
L RVAR R1
U 1 1 4BF251FE
P 7950 2450
F 0 "R1" V 8030 2400 50  0000 C C
F 1 "RVAR" V 7870 2510 50  0000 C C
	1    7950 2450
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR10
U 1 1 4BF2509F
P 8500 5300
F 0 "#PWR10" H 8500 5300 30  0001 C C
F 1 "GND" H 8500 5230 30  0001 C C
	1    8500 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 5300 8500 5250
Wire Wire Line
	8500 4550 8500 4500
$Comp
L GND #PWR9
U 1 1 4BF2507F
P 8500 4550
F 0 "#PWR9" H 8500 4550 30  0001 C C
F 1 "GND" H 8500 4480 30  0001 C C
	1    8500 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4150 8500 4150
Wire Wire Line
	8500 4500 8250 4500
Wire Wire Line
	8500 5250 8250 5250
Wire Wire Line
	8250 4900 8500 4900
Text Label 7250 5050 0    60   ~
BI
Text Label 7250 4300 0    60   ~
LT
Wire Wire Line
	7200 4300 7650 4300
Connection ~ 7650 4300
Wire Wire Line
	7650 4150 7650 4500
Connection ~ 7650 5050
Wire Wire Line
	7200 5050 7650 5050
Wire Wire Line
	7650 4900 7650 5250
$Comp
L JUMPER JP4
U 1 1 4BF24FA7
P 7950 5250
F 0 "JP4" H 7950 5400 60  0000 C C
F 1 "BI_GND" H 7950 5170 40  0000 C C
	1    7950 5250
	1    0    0    -1  
$EndComp
$Comp
L JUMPER JP3
U 1 1 4BF24FA6
P 7950 4900
F 0 "JP3" H 7950 5050 60  0000 C C
F 1 "BI_6V" H 7950 4820 40  0000 C C
	1    7950 4900
	1    0    0    -1  
$EndComp
$Comp
L JUMPER JP2
U 1 1 4BF24F9A
P 7950 4500
F 0 "JP2" H 7950 4650 60  0000 C C
F 1 "LT_GND" H 7950 4420 40  0000 C C
	1    7950 4500
	1    0    0    -1  
$EndComp
$Comp
L JUMPER JP1
U 1 1 4BF24F99
P 7950 4150
F 0 "JP1" H 7950 4300 60  0000 C C
F 1 "LT_6V" H 7950 4070 40  0000 C C
	1    7950 4150
	1    0    0    -1  
$EndComp
Text Label 800  3700 0    60   ~
BI
Text Label 800  3600 0    60   ~
LT
Text Label 800  2500 0    60   ~
BI
Text Label 800  2400 0    60   ~
LT
Text Label 800  1300 0    60   ~
BI
Text Label 800  1200 0    60   ~
LT
Text Label 800  3800 0    60   ~
LE3
Text Label 800  2600 0    60   ~
LE2
Text Label 800  1400 0    60   ~
LE1
Text Label 800  3400 0    60   ~
D
Text Label 800  3300 0    60   ~
C
Text Label 800  3200 0    60   ~
B
Text Label 800  3100 0    60   ~
A
Text Label 800  2200 0    60   ~
D
Text Label 800  2100 0    60   ~
C
Text Label 800  2000 0    60   ~
B
Text Label 800  1900 0    60   ~
A
Text Label 800  1000 0    60   ~
D
Text Label 800  900  0    60   ~
C
Text Label 800  800  0    60   ~
B
Text Label 800  700  0    60   ~
A
Text Label 2550 3700 0    60   ~
g3
Text Label 2550 3600 0    60   ~
f3
Text Label 2550 3500 0    60   ~
e3
Text Label 2550 3400 0    60   ~
d3
Text Label 2550 3300 0    60   ~
c3
Text Label 2550 3200 0    60   ~
b3
Text Label 2550 3100 0    60   ~
a3
Text Label 2550 2500 0    60   ~
g2
Text Label 2550 2400 0    60   ~
f2
Text Label 2550 2300 0    60   ~
e2
Text Label 2550 2200 0    60   ~
d2
Text Label 2550 2100 0    60   ~
c2
Text Label 2550 2000 0    60   ~
b2
Text Label 2550 1900 0    60   ~
a2
Text Label 2550 1300 0    60   ~
g1
Text Label 2550 1200 0    60   ~
f1
Text Label 2550 1100 0    60   ~
e1
Text Label 2550 1000 0    60   ~
d1
Text Label 2550 900  0    60   ~
c1
Text Label 2550 800  0    60   ~
b1
Text Label 2550 700  0    60   ~
a1
Wire Wire Line
	2300 3700 2700 3700
Wire Wire Line
	2300 3600 2700 3600
Wire Wire Line
	2300 3500 2700 3500
Wire Wire Line
	2300 3400 2700 3400
Wire Wire Line
	2300 3300 2700 3300
Wire Wire Line
	2300 3200 2700 3200
Wire Wire Line
	2300 3100 2700 3100
Wire Wire Line
	1150 3800 750  3800
Wire Wire Line
	1150 3700 750  3700
Wire Wire Line
	1150 3600 750  3600
Wire Wire Line
	1150 3400 750  3400
Wire Wire Line
	1150 3300 750  3300
Wire Wire Line
	1150 3200 750  3200
Wire Wire Line
	1150 3100 750  3100
Wire Wire Line
	2300 2500 2700 2500
Wire Wire Line
	2300 2400 2700 2400
Wire Wire Line
	2300 2300 2700 2300
Wire Wire Line
	2300 2200 2700 2200
Wire Wire Line
	2300 2100 2700 2100
Wire Wire Line
	2300 2000 2700 2000
Wire Wire Line
	2300 1900 2700 1900
Wire Wire Line
	1150 2600 750  2600
Wire Wire Line
	1150 2500 750  2500
Wire Wire Line
	1150 2400 750  2400
Wire Wire Line
	1150 2200 750  2200
Wire Wire Line
	1150 2100 750  2100
Wire Wire Line
	1150 2000 750  2000
Wire Wire Line
	1150 1900 750  1900
Wire Wire Line
	2300 1300 2700 1300
Wire Wire Line
	2300 1100 2700 1100
Wire Wire Line
	2300 1000 2700 1000
Wire Wire Line
	2300 900  2700 900 
Wire Wire Line
	2300 800  2700 800 
Wire Wire Line
	1150 1400 750  1400
Wire Wire Line
	1150 1300 750  1300
Wire Wire Line
	1150 1200 750  1200
Wire Wire Line
	1150 1000 750  1000
Wire Wire Line
	1150 900  750  900 
Wire Wire Line
	1150 800  750  800 
Wire Wire Line
	1150 700  750  700 
Text Label 5850 3700 0    60   ~
GND_G
Text Label 5850 3500 0    60   ~
GND_R
Text Label 3800 3850 0    60   ~
g3
Text Label 3800 3750 0    60   ~
f3
Text Label 3800 3650 0    60   ~
e3
Text Label 3800 3550 0    60   ~
d3
Text Label 3800 3450 0    60   ~
c3
Text Label 3800 3350 0    60   ~
b3
Text Label 3800 3250 0    60   ~
a3
Text Label 5850 2450 0    60   ~
GND_G
Text Label 5850 2250 0    60   ~
GND_R
Text Label 3800 2600 0    60   ~
g2
Text Label 3800 2500 0    60   ~
f2
Text Label 3800 2400 0    60   ~
e2
Text Label 3800 2300 0    60   ~
d2
Text Label 3800 2200 0    60   ~
c2
Text Label 3800 2100 0    60   ~
b2
Text Label 3800 2000 0    60   ~
a2
Text Label 5850 1200 0    60   ~
GND_G
Text Label 5850 1000 0    60   ~
GND_R
Text Label 3800 1350 0    60   ~
g1
Text Label 3800 1250 0    60   ~
f1
Text Label 3800 1150 0    60   ~
e1
Text Label 3800 1050 0    60   ~
d1
Text Label 3800 950  0    60   ~
c1
Text Label 3800 850  0    60   ~
b1
Text Label 3800 750  0    60   ~
a1
Wire Wire Line
	5750 2450 6250 2450
Wire Wire Line
	5750 2250 6250 2250
Wire Wire Line
	4250 2600 3750 2600
Wire Wire Line
	4250 2500 3750 2500
Wire Wire Line
	4250 2400 3750 2400
Wire Wire Line
	4250 2300 3750 2300
Wire Wire Line
	4250 2200 3750 2200
Wire Wire Line
	4250 2100 3750 2100
Wire Wire Line
	4250 2000 3750 2000
Wire Wire Line
	5750 1200 6200 1200
Wire Wire Line
	5750 1000 6200 1000
Wire Wire Line
	4250 1350 3750 1350
Wire Wire Line
	4250 1250 3750 1250
Wire Wire Line
	4250 1150 3750 1150
Wire Wire Line
	4250 1050 3750 1050
Wire Wire Line
	4250 950  3750 950 
Wire Wire Line
	4250 850  3750 850 
Wire Wire Line
	4250 750  3750 750 
$Comp
L BCD_4011 U7
U 1 1 4BF1A124
P 1750 3750
F 0 "U7" H 1700 4500 60  0000 C C
F 1 "BCD_4011" H 1750 3450 60  0000 C C
	1    1750 3750
	1    0    0    -1  
$EndComp
$Comp
L BCD_4011 U6
U 1 1 4BF1A11B
P 1750 2550
F 0 "U6" H 1700 3300 60  0000 C C
F 1 "BCD_4011" H 1750 2250 60  0000 C C
	1    1750 2550
	1    0    0    -1  
$EndComp
$Comp
L BCD_4011 U5
U 1 1 4BF1A114
P 1750 1350
F 0 "U5" H 1700 2100 60  0000 C C
F 1 "BCD_4011" H 1750 1050 60  0000 C C
	1    1750 1350
	1    0    0    -1  
$EndComp
$Comp
L 7-SEG-RV U3
U 1 1 4BF1A0E7
P 5000 3650
F 0 "U3" H 5000 4200 60  0000 C C
F 1 "7-SEG-RV" H 5000 3050 60  0000 C C
	1    5000 3650
	1    0    0    -1  
$EndComp
$Comp
L 7-SEG-RV U2
U 1 1 4BF1A0CE
P 5000 2400
F 0 "U2" H 5000 2950 60  0000 C C
F 1 "7-SEG-RV" H 5000 1800 60  0000 C C
	1    5000 2400
	1    0    0    -1  
$EndComp
$Comp
L 7-SEG-RV U1
U 1 1 4BF1A0C0
P 5000 1150
F 0 "U1" H 5000 1700 60  0000 C C
F 1 "7-SEG-RV" H 5000 550 60  0000 C C
	1    5000 1150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
