EESchema Schematic File Version 1
LIBS:power,device,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,analog_switches,motorola,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib,./carte_vitesse.cache
EELAYER 23  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title ""
Date "19 apr 2010"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LM324 U2
U 4 1 4BC4B468
P 9050 4750
F 0 "U2" H 9100 4950 60  0000 C C
F 1 "LM324" H 9200 4550 50  0000 C C
	4    9050 4750
	0    1    1    0   
$EndComp
$Comp
L LM324 U2
U 3 1 4BC4B45F
P 6050 4750
F 0 "U2" H 6100 4950 60  0000 C C
F 1 "LM324" H 6200 4550 50  0000 C C
	3    6050 4750
	0    1    1    0   
$EndComp
$Comp
L LM324 U2
U 2 1 4BC4B452
P 4600 4750
F 0 "U2" H 4650 4950 60  0000 C C
F 1 "LM324" H 4750 4550 50  0000 C C
	2    4600 4750
	0    1    1    0   
$EndComp
Wire Notes Line
	9650 3600 2850 3600
Wire Notes Line
	9650 6050 2850 6050
Wire Notes Line
	9650 6050 9650 3600
Wire Wire Line
	8450 5300 7100 5300
Wire Wire Line
	8450 5300 8450 4100
Connection ~ 7700 4100
Wire Wire Line
	7700 4250 7700 4100
Wire Wire Line
	7250 5600 7000 5600
Wire Wire Line
	7000 5600 7000 4100
Wire Wire Line
	7000 4100 8050 4100
Wire Wire Line
	9150 4250 9150 4100
Wire Wire Line
	9150 4100 8450 4100
Wire Wire Line
	8550 5600 8550 4200
Connection ~ 8550 5600
Wire Wire Line
	8450 5600 8650 5600
Connection ~ 7850 5600
Wire Wire Line
	7850 5450 7850 5600
Wire Wire Line
	7750 5600 7950 5600
$Comp
L VCC #PWR19
U 1 1 4BC4AACA
P 9200 5600
F 0 "#PWR19" H 9200 5700 30  0001 C C
F 1 "VCC" H 9200 5700 30  0000 C C
	1    9200 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 5600 9200 5600
$Comp
L GND #PWR11
U 1 1 4BC4AAC9
P 7850 5450
F 0 "#PWR11" H 7850 5450 30  0001 C C
F 1 "GND" H 7850 5380 30  0001 C C
	1    7850 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	8550 4200 8950 4200
Wire Wire Line
	8950 4200 8950 4250
Text Label 9300 5300 0    60   ~
Vd
Wire Wire Line
	9550 5300 9050 5300
Wire Wire Line
	9050 5300 9050 5250
Connection ~ 7600 5300
Wire Wire Line
	7100 5300 7100 4200
Wire Wire Line
	7100 4200 7500 4200
Wire Wire Line
	7500 4200 7500 4250
Wire Wire Line
	7600 5300 7600 5250
Text Label 7800 4100 0    60   ~
Vnd
Wire Wire Line
	9450 4650 9450 4600
$Comp
L GND #PWR10
U 1 1 4BC4AAC8
P 8650 4700
F 0 "#PWR10" H 8650 4700 30  0001 C C
F 1 "GND" H 8650 4630 30  0001 C C
	1    8650 4700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR18
U 1 1 4BC4AAC7
P 9450 4600
F 0 "#PWR18" H 9450 4700 30  0001 C C
F 1 "VCC" H 9450 4700 30  0000 C C
	1    9450 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 4650 8650 4700
$Comp
L R R2
U 1 1 4BC4AAC5
P 8900 5600
F 0 "R2" V 8980 5600 50  0000 C C
F 1 "10k" V 8900 5600 50  0000 C C
	1    8900 5600
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 4BC4AAC4
P 8200 5600
F 0 "R4" V 8280 5600 50  0000 C C
F 1 "22k" V 8200 5600 50  0000 C C
	1    8200 5600
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 4BC4AAC3
P 7500 5600
F 0 "R6" V 7580 5600 50  0000 C C
F 1 "330" V 7500 5600 50  0000 C C
	1    7500 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 4650 8000 4600
$Comp
L GND #PWR9
U 1 1 4BC4AAC2
P 7200 4700
F 0 "#PWR9" H 7200 4700 30  0001 C C
F 1 "GND" H 7200 4630 30  0001 C C
	1    7200 4700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR17
U 1 1 4BC4AAC1
P 8000 4600
F 0 "#PWR17" H 8000 4700 30  0001 C C
F 1 "VCC" H 8000 4700 30  0000 C C
	1    8000 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4650 7200 4700
$Comp
L LM324 U2
U 1 1 4BC4AAC0
P 7600 4750
F 0 "U2" H 7650 4950 60  0000 C C
F 1 "LM324" H 7750 4550 50  0000 C C
	1    7600 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 5300 4100 5300
Wire Wire Line
	5450 5300 5450 4100
Connection ~ 4700 4100
Wire Wire Line
	4700 4250 4700 4100
Wire Wire Line
	4250 5600 4000 5600
Wire Wire Line
	4000 5600 4000 4100
Wire Wire Line
	4000 4100 5050 4100
Wire Wire Line
	6150 4250 6150 4100
Wire Wire Line
	6150 4100 5450 4100
Wire Wire Line
	5550 5600 5550 4200
Wire Notes Line
	2700 4450 1600 4450
Wire Notes Line
	2700 4450 2700 3600
Wire Notes Line
	2700 3600 1600 3600
Connection ~ 5550 5600
Wire Wire Line
	5450 5600 5650 5600
Connection ~ 4850 5600
Wire Wire Line
	4850 5450 4850 5600
Wire Wire Line
	4750 5600 4950 5600
$Comp
L +12V #PWR2
U 1 1 4BC4A586
P 2450 3950
F 0 "#PWR2" H 2450 3900 20  0001 C C
F 1 "+12V" H 2450 4050 30  0000 C C
	1    2450 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4350 2450 4350
Wire Wire Line
	2450 4350 2450 3950
Wire Wire Line
	2450 3950 2150 3950
Connection ~ 2350 2600
$Comp
L +12V #PWR1
U 1 1 4BC4A545
P 2350 2600
F 0 "#PWR1" H 2350 2550 20  0001 C C
F 1 "+12V" H 2350 2700 30  0000 C C
	1    2350 2600
	1    0    0    -1  
$EndComp
Text Notes 4900 2750 0    197  ~
Carte Vitesse
Text Notes 5100 3500 0    60   ~
Mise a l echelle 0-5V de la vitesse
Wire Notes Line
	2850 6050 2850 3600
$Comp
L VCC #PWR16
U 1 1 4BC49E1D
P 6200 5600
F 0 "#PWR16" H 6200 5700 30  0001 C C
F 1 "VCC" H 6200 5700 30  0000 C C
	1    6200 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 5600 6200 5600
$Comp
L GND #PWR8
U 1 1 4BC49D98
P 4850 5450
F 0 "#PWR8" H 4850 5450 30  0001 C C
F 1 "GND" H 4850 5380 30  0001 C C
	1    4850 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5550 4200 5950 4200
Wire Wire Line
	5950 4200 5950 4250
Text Label 6300 5300 0    60   ~
Vg
Wire Wire Line
	6550 5300 6050 5300
Wire Wire Line
	6050 5300 6050 5250
Connection ~ 4600 5300
Wire Wire Line
	4100 5300 4100 4200
Wire Wire Line
	4100 4200 4500 4200
Wire Wire Line
	4500 4200 4500 4250
Wire Wire Line
	4600 5300 4600 5250
Text Label 4800 4100 0    60   ~
Vng
Wire Wire Line
	6450 4650 6450 4600
$Comp
L GND #PWR7
U 1 1 4BC49BF7
P 5650 4700
F 0 "#PWR7" H 5650 4700 30  0001 C C
F 1 "GND" H 5650 4630 30  0001 C C
	1    5650 4700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR15
U 1 1 4BC49BF6
P 6450 4600
F 0 "#PWR15" H 6450 4700 30  0001 C C
F 1 "VCC" H 6450 4700 30  0000 C C
	1    6450 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4650 5650 4700
$Comp
L R R1
U 1 1 4BC49A9B
P 5900 5600
F 0 "R1" V 5980 5600 50  0000 C C
F 1 "10k" V 5900 5600 50  0000 C C
	1    5900 5600
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 4BC49A98
P 5200 5600
F 0 "R3" V 5280 5600 50  0000 C C
F 1 "22k" V 5200 5600 50  0000 C C
	1    5200 5600
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 4BC49A94
P 4500 5600
F 0 "R5" V 4580 5600 50  0000 C C
F 1 "330" V 4500 5600 50  0000 C C
	1    4500 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 4650 5000 4600
$Comp
L GND #PWR6
U 1 1 4BC49A6E
P 4200 4700
F 0 "#PWR6" H 4200 4700 30  0001 C C
F 1 "GND" H 4200 4630 30  0001 C C
	1    4200 4700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR14
U 1 1 4BC49A64
P 5000 4600
F 0 "#PWR14" H 5000 4700 30  0001 C C
F 1 "VCC" H 5000 4700 30  0000 C C
	1    5000 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4650 4200 4700
Connection ~ 2700 3000
Wire Wire Line
	2700 3000 2700 3100
$Comp
L GND #PWR5
U 1 1 4BC49A38
P 3350 5150
F 0 "#PWR5" H 3350 5150 30  0001 C C
F 1 "GND" H 3350 5080 30  0001 C C
	1    3350 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR4
U 1 1 4BC49A32
P 2700 3100
F 0 "#PWR4" H 2700 3100 30  0001 C C
F 1 "GND" H 2700 3030 30  0001 C C
	1    2700 3100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR13
U 1 1 4BC49A18
P 3350 4350
F 0 "#PWR13" H 3350 4450 30  0001 C C
F 1 "VCC" H 3350 4450 30  0000 C C
	1    3350 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4950 3150 4950
Wire Wire Line
	3550 4550 3150 4550
Connection ~ 3350 4550
Wire Wire Line
	3350 4550 3350 4350
Connection ~ 3350 4950
Wire Wire Line
	3350 4950 3350 5150
$Comp
L C C3
U 1 1 4BC499DB
P 3550 4750
F 0 "C3" H 3600 4850 50  0000 L C
F 1 "17p" H 3600 4650 50  0000 L C
	1    3550 4750
	1    0    0    -1  
$EndComp
$Comp
L CP C4
U 1 1 4BC499D7
P 3150 4750
F 0 "C4" H 3200 4850 50  0000 L C
F 1 "1u" H 3200 4650 50  0000 L C
	1    3150 4750
	1    0    0    -1  
$EndComp
Text Notes 1850 4700 0    60   ~
Interface
Text Notes 1650 4600 0    60   ~
Connecteurs vers
Wire Notes Line
	2700 4750 1600 4750
Wire Notes Line
	2700 4750 2700 6050
Wire Notes Line
	2700 6050 1600 6050
Wire Notes Line
	1600 6050 1600 4750
Connection ~ 2600 5800
Wire Wire Line
	2600 5850 2600 5100
$Comp
L GND #PWR3
U 1 1 4BC4992B
P 2600 5850
F 0 "#PWR3" H 2600 5850 30  0001 C C
F 1 "GND" H 2600 5780 30  0001 C C
	1    2600 5850
	1    0    0    -1  
$EndComp
Connection ~ 2600 5700
Wire Wire Line
	2600 5800 2300 5800
Connection ~ 2600 5600
Wire Wire Line
	2600 5700 2300 5700
Connection ~ 2600 5500
Wire Wire Line
	2600 5600 2300 5600
Connection ~ 2600 5400
Wire Wire Line
	2600 5500 2300 5500
Connection ~ 2600 5300
Wire Wire Line
	2600 5400 2300 5400
Wire Wire Line
	2600 5300 2300 5300
Wire Wire Line
	2600 5100 2300 5100
Text Label 2350 5200 0    60   ~
Vd
Text Label 2350 5000 0    60   ~
Vg
Wire Wire Line
	2300 5200 2500 5200
Wire Wire Line
	2500 5000 2300 5000
Text Notes 1800 3550 0    60   ~
Capteurs
Text Notes 1700 3450 0    60   ~
Connecteurs
Wire Notes Line
	1600 3600 1600 4450
Wire Wire Line
	2400 4150 2150 4150
Wire Wire Line
	2400 3750 2150 3750
Text Label 2200 4150 0    60   ~
Vnd
Text Label 2200 3750 0    60   ~
Vng
Text Notes 2150 2150 0    60   ~
Alimentation Stabilisée
Wire Notes Line
	4250 2200 1600 2200
Wire Notes Line
	4250 2200 4250 3300
Wire Notes Line
	4250 3300 1600 3300
Wire Notes Line
	1600 3300 1600 2200
$Comp
L PWR_FLAG #FLG2
U 1 1 4BC4972D
P 2150 3000
F 0 "#FLG2" H 2150 3270 30  0001 C C
F 1 "PWR_FLAG" H 2150 3230 30  0000 C C
	1    2150 3000
	-1   0    0    1   
$EndComp
Connection ~ 4000 2600
Wire Wire Line
	4150 2600 3800 2600
Wire Wire Line
	3950 3000 4000 3000
Connection ~ 3400 3000
Wire Wire Line
	3450 3000 2150 3000
Connection ~ 2850 3000
Wire Wire Line
	3400 3000 3400 2900
Connection ~ 2850 2600
Wire Wire Line
	3000 2600 2150 2600
Connection ~ 2550 2600
Connection ~ 2550 3000
Wire Wire Line
	2150 3000 2150 2900
Wire Wire Line
	2150 2600 2150 2700
$Comp
L VCC #PWR12
U 1 1 4BC496E7
P 4150 2600
F 0 "#PWR12" H 4150 2700 30  0001 C C
F 1 "VCC" H 4150 2700 30  0000 C C
	1    4150 2600
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 4BC496E1
P 4000 2800
F 0 "D1" H 4000 2900 50  0000 C C
F 1 "RED" H 4000 2700 50  0000 C C
	1    4000 2800
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG1
U 1 1 4BC496DC
P 2150 2600
F 0 "#FLG1" H 2150 2870 30  0001 C C
F 1 "PWR_FLAG" H 2150 2830 30  0000 C C
	1    2150 2600
	1    0    0    -1  
$EndComp
$Comp
L DB9 J1
U 1 1 4BC4959D
P 1850 5400
F 0 "J1" H 1850 5950 70  0000 C C
F 1 "DB9" H 1850 4850 70  0000 C C
	1    1850 5400
	-1   0    0    1   
$EndComp
$Comp
L R R7
U 1 1 4BC49588
P 3700 3000
F 0 "R7" V 3780 3000 50  0000 C C
F 1 "500" V 3700 3000 50  0000 C C
	1    3700 3000
	0    1    1    0   
$EndComp
$Comp
L CP C1
U 1 1 4BC49579
P 2550 2800
F 0 "C1" H 2600 2900 50  0000 L C
F 1 "10u" H 2600 2700 50  0000 L C
	1    2550 2800
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 4BC49575
P 2850 2800
F 0 "C2" H 2900 2900 50  0000 L C
F 1 "17p" H 2900 2700 50  0000 L C
	1    2850 2800
	1    0    0    -1  
$EndComp
$Comp
L 7805 U1
U 1 1 4BC4956E
P 3400 2650
F 0 "U1" H 3550 2454 60  0000 C C
F 1 "7805" H 3400 2850 60  0000 C C
	1    3400 2650
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P2
U 1 1 4BC49511
P 1800 4250
F 0 "P2" V 1750 4250 40  0000 C C
F 1 "VitD" V 1850 4250 40  0000 C C
	1    1800 4250
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P3
U 1 1 4BC49510
P 1800 3850
F 0 "P3" V 1750 3850 40  0000 C C
F 1 "VitG" V 1850 3850 40  0000 C C
	1    1800 3850
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P1
U 1 1 4BC49509
P 1800 2800
F 0 "P1" V 1750 2800 40  0000 C C
F 1 "Alim" V 1850 2800 40  0000 C C
	1    1800 2800
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
