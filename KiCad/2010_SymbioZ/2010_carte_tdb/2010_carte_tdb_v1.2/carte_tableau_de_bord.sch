EESchema Schematic File Version 1
LIBS:power,device,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,analog_switches,motorola,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib,./carte_tableau_de_bord.cache
EELAYER 23  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title ""
Date "11 may 2010"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 8900 2650
Wire Wire Line
	8850 3050 8900 3050
$Comp
L R R4
U 1 1 4BC2E72A
P 8600 3050
F 0 "R4" V 8680 3050 50  0000 C C
F 1 "500" V 8600 3050 50  0000 C C
	1    8600 3050
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 4BC2E71B
P 8900 2850
F 0 "D1" H 8900 2950 50  0000 C C
F 1 "RED" H 8900 2750 50  0000 C C
	1    8900 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	9100 5000 8000 5000
Wire Wire Line
	7900 5000 6750 5000
Connection ~ 4200 3200
Wire Wire Line
	3650 3200 4300 3200
Connection ~ 5950 5000
Wire Wire Line
	6600 5000 5450 5000
Wire Wire Line
	6050 4000 6600 4000
Wire Wire Line
	8600 4000 9100 4000
Wire Wire Line
	7350 4000 7900 4000
Connection ~ 8500 5000
Connection ~ 7250 5000
Wire Wire Line
	4050 2500 3650 2500
Wire Wire Line
	4050 2800 3650 2800
Wire Wire Line
	4050 3100 3650 3100
Wire Wire Line
	3650 3400 4050 3400
Wire Wire Line
	4050 3700 3650 3700
Wire Wire Line
	4050 4000 3650 4000
Wire Wire Line
	4200 5050 3700 5050
Wire Wire Line
	4200 4650 3700 4650
Wire Wire Line
	4200 4850 3700 4850
Wire Wire Line
	4200 4450 3700 4450
Wire Wire Line
	4200 4350 3700 4350
Wire Wire Line
	4200 4250 3700 4250
$Comp
L GND #PWR10
U 1 1 4BC20000
P 8150 4600
F 0 "#PWR10" H 8150 4600 30  0001 C C
F 1 "GND" H 8150 4530 30  0001 C C
	1    8150 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR9
U 1 1 4BC1FFFD
P 6850 4450
F 0 "#PWR9" H 6850 4450 30  0001 C C
F 1 "GND" H 6850 4380 30  0001 C C
	1    6850 4450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR16
U 1 1 4BC1FFF5
P 7700 4400
F 0 "#PWR16" H 7700 4500 30  0001 C C
F 1 "VCC" H 7700 4500 30  0000 C C
	1    7700 4400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR15
U 1 1 4BC1FFF3
P 8950 4400
F 0 "#PWR15" H 8950 4500 30  0001 C C
F 1 "VCC" H 8950 4500 30  0000 C C
	1    8950 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4400 8950 4400
Wire Wire Line
	6850 4400 6850 4450
Wire Wire Line
	7650 4400 7700 4400
Wire Wire Line
	8100 4400 8100 4450
$Comp
L VCC #PWR14
U 1 1 4BC1FF9F
P 8950 2650
F 0 "#PWR14" H 8950 2750 30  0001 C C
F 1 "VCC" H 8950 2750 30  0000 C C
	1    8950 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4400 6400 4400
Wire Wire Line
	5550 4400 5550 4450
$Comp
L VCC #PWR13
U 1 1 4BC1FF6B
P 6400 4400
F 0 "#PWR13" H 6400 4500 30  0001 C C
F 1 "VCC" H 6400 4500 30  0000 C C
	1    6400 4400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR12
U 1 1 4BC1FF62
P 5000 4150
F 0 "#PWR12" H 5000 4250 30  0001 C C
F 1 "VCC" H 5000 4250 30  0000 C C
	1    5000 4150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR11
U 1 1 4BC1FF53
P 4300 3200
F 0 "#PWR11" H 4300 3300 30  0001 C C
F 1 "VCC" H 4300 3300 30  0000 C C
	1    4300 3200
	1    0    0    -1  
$EndComp
Wire Notes Line
	6150 3450 6150 2200
Wire Notes Line
	4550 3450 4550 2200
Wire Notes Line
	4550 3450 6150 3450
Wire Notes Line
	9200 3450 9200 2200
Wire Notes Line
	6200 3450 6200 2200
Wire Notes Line
	6200 3450 9200 3450
Wire Notes Line
	4550 3700 4550 5300
Connection ~ 5000 4700
Wire Wire Line
	5000 4700 5000 4850
Connection ~ 5000 4300
Wire Wire Line
	5000 4300 5000 4150
Wire Wire Line
	5150 4700 4850 4700
Wire Wire Line
	4850 4300 5150 4300
Connection ~ 4350 4550
Wire Wire Line
	3700 4550 4350 4550
Wire Notes Line
	3050 2200 4500 2200
Wire Notes Line
	3050 2200 3050 5300
Wire Notes Line
	3050 5300 4500 5300
Wire Notes Line
	4500 5300 4500 2200
Wire Wire Line
	4350 4500 4350 4950
Connection ~ 4350 4750
Wire Wire Line
	4350 4950 3700 4950
Wire Wire Line
	4350 4750 3700 4750
$Comp
L DB9 J1
U 1 1 4BC1E016
P 3250 4650
F 0 "J1" H 3250 5200 70  0000 C C
F 1 "DB9" H 3250 4100 70  0000 C C
	1    3250 4650
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR8
U 1 1 4BC1DF84
P 5000 4850
F 0 "#PWR8" H 5000 4850 30  0001 C C
F 1 "GND" H 5000 4780 30  0001 C C
	1    5000 4850
	1    0    0    -1  
$EndComp
$Comp
L CP C3
U 1 1 4BC1DE5B
P 4850 4500
F 0 "C3" H 4900 4600 50  0000 L C
F 1 "1u" H 4900 4400 50  0000 L C
	1    4850 4500
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 4BC1DE57
P 5150 4500
F 0 "C4" H 5200 4600 50  0000 L C
F 1 "17p" H 5200 4400 50  0000 L C
	1    5150 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR7
U 1 1 4BC1BD82
P 4300 2300
F 0 "#PWR7" H 4300 2300 30  0001 C C
F 1 "GND" H 4300 2230 30  0001 C C
	1    4300 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 2300 4200 2900
Wire Wire Line
	4200 3200 4200 3800
Connection ~ 4200 2900
Connection ~ 4200 2600
Wire Wire Line
	4200 2900 3650 2900
Connection ~ 4200 2300
Wire Wire Line
	4200 2600 3650 2600
Wire Wire Line
	3650 2300 4300 2300
$Comp
L GND #PWR6
U 1 1 4BC1BBC5
P 5950 3250
F 0 "#PWR6" H 5950 3250 30  0001 C C
F 1 "GND" H 5950 3180 30  0001 C C
	1    5950 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 3250 5950 3250
$Comp
L GND #PWR5
U 1 1 4BC1BBC2
P 5950 2850
F 0 "#PWR5" H 5950 2850 30  0001 C C
F 1 "GND" H 5950 2780 30  0001 C C
	1    5950 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 2850 5950 2850
$Comp
L GND #PWR4
U 1 1 4BC1BBAA
P 5950 2450
F 0 "#PWR4" H 5950 2450 30  0001 C C
F 1 "GND" H 5950 2380 30  0001 C C
	1    5950 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 2450 5950 2450
Connection ~ 4200 3500
Wire Wire Line
	3650 3500 4200 3500
Wire Wire Line
	4200 3800 3650 3800
$Comp
L CONN_2 P7
U 1 1 4BBAFAD1
P 3300 3900
F 0 "P7" V 3250 3900 40  0000 C C
F 1 "Boost" V 3350 3900 40  0000 C C
	1    3300 3900
	-1   0    0    -1  
$EndComp
$Comp
L CONN_2 P6
U 1 1 4BBAFACF
P 3300 3600
F 0 "P6" V 3250 3600 40  0000 C C
F 1 "Frein" V 3350 3600 40  0000 C C
	1    3300 3600
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 4BBAFAA4
P 4350 4500
F 0 "#PWR3" H 4350 4500 30  0001 C C
F 1 "GND" H 4350 4430 30  0001 C C
	1    4350 4500
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P5
U 1 1 4BBAFA7F
P 3300 3300
F 0 "P5" V 3250 3300 40  0000 C C
F 1 "Mode" V 3350 3300 40  0000 C C
	1    3300 3300
	-1   0    0    -1  
$EndComp
$Comp
L CONN_2 P4
U 1 1 4BBAFA7D
P 3300 3000
F 0 "P4" V 3250 3000 40  0000 C C
F 1 "Critic" V 3350 3000 40  0000 C C
	1    3300 3000
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P3
U 1 1 4BBAFA7A
P 3300 2700
F 0 "P3" V 3250 2700 40  0000 C C
F 1 "Vsc_h" V 3350 2700 40  0000 C C
	1    3300 2700
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P2
U 1 1 4BBAFA69
P 3300 2400
F 0 "P2" V 3250 2400 40  0000 C C
F 1 "Vsc_l" V 3350 2400 40  0000 C C
	1    3300 2400
	-1   0    0    1   
$EndComp
$Comp
L LM324 U2
U 3 1 4BBAF5D3
P 8500 4500
F 0 "U2" H 8550 4700 60  0000 C C
F 1 "LM324" H 8650 4300 50  0000 C C
	3    8500 4500
	0    1    1    0   
$EndComp
$Comp
L LM324 U2
U 2 1 4BBAF5CB
P 7250 4500
F 0 "U2" H 7300 4700 60  0000 C C
F 1 "LM324" H 7400 4300 50  0000 C C
	2    7250 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 5000 8000 4000
Wire Wire Line
	8000 4000 8400 4000
Wire Wire Line
	6750 5000 6750 4000
Wire Wire Line
	6750 4000 7150 4000
Wire Wire Line
	5450 5000 5450 4000
Wire Wire Line
	5450 4000 5850 4000
$Comp
L GND #PWR2
U 1 1 4BBAF53B
P 5550 4450
F 0 "#PWR2" H 5550 4450 30  0001 C C
F 1 "GND" H 5550 4380 30  0001 C C
	1    5550 4450
	1    0    0    -1  
$EndComp
$Comp
L LM324 U2
U 1 1 4BBAF526
P 5950 4500
F 0 "U2" H 6000 4700 60  0000 C C
F 1 "LM324" H 6100 4300 50  0000 C C
	1    5950 4500
	0    1    1    0   
$EndComp
Text Notes 5550 3650 0    60   ~
Amplificateurs suiveurs vers les Voyants
Text Notes 3500 2150 0    60   ~
Connecteurs
Text Notes 4600 2150 0    60   ~
Résistances de tirage
Text Notes 7000 2150 0    60   ~
Alimentation stabilisée
Wire Notes Line
	4550 3700 9200 3700
Wire Notes Line
	9200 3700 9200 5300
Wire Notes Line
	9200 5300 4550 5300
Text Label 8600 5000 0    60   ~
SDech
Text Label 8650 4000 0    60   ~
SDechS
Text Label 7400 5000 0    60   ~
SSurch
Text Label 7450 4000 0    60   ~
SSurchS
Text Label 6100 5000 0    60   ~
SCrit
Text Label 6150 4000 0    60   ~
SCritS
Wire Notes Line
	4550 2200 6150 2200
Wire Notes Line
	6200 2200 9200 2200
Text Label 4650 3250 0    60   ~
MElec
Wire Wire Line
	5050 3250 4650 3250
$Comp
L R R3
U 1 1 4BBADCFF
P 5300 3250
F 0 "R3" V 5380 3250 50  0000 C C
F 1 "10k" V 5300 3250 50  0000 C C
	1    5300 3250
	0    1    1    0   
$EndComp
Text Label 4650 2850 0    60   ~
Frein
Wire Wire Line
	5050 2850 4650 2850
$Comp
L R R2
U 1 1 4BBADCFB
P 5300 2850
F 0 "R2" V 5380 2850 50  0000 C C
F 1 "10k" V 5300 2850 50  0000 C C
	1    5300 2850
	0    1    1    0   
$EndComp
Text Label 4650 2450 0    60   ~
Boost
Wire Wire Line
	5050 2450 4650 2450
Text Notes 4150 1450 0    157  ~
Carte Tableau de Bord
Wire Wire Line
	8950 2650 8750 2650
$Comp
L GND #PWR1
U 1 1 4BA892B0
P 7400 3150
F 0 "#PWR1" H 7400 3150 30  0001 C C
F 1 "GND" H 7400 3080 30  0001 C C
	1    7400 3150
	1    0    0    -1  
$EndComp
Connection ~ 7400 3050
Wire Wire Line
	7400 3050 7400 3150
Connection ~ 7600 3050
Wire Wire Line
	8350 2950 8350 3050
Wire Wire Line
	8350 3050 6800 3050
Connection ~ 7200 3050
Wire Wire Line
	6800 3050 6800 2950
Connection ~ 7200 2650
Wire Wire Line
	6800 2750 6800 2650
Wire Wire Line
	6800 2650 7950 2650
Connection ~ 7600 2650
$Comp
L 7805 U1
U 1 1 4BA89278
P 8350 2700
F 0 "U1" H 8500 2504 60  0000 C C
F 1 "7805" H 8350 2900 60  0000 C C
	1    8350 2700
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 4BA8926D
P 7200 2850
F 0 "C2" H 7250 2950 50  0000 L C
F 1 "17p" H 7250 2750 50  0000 L C
	1    7200 2850
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 4BA89266
P 7600 2850
F 0 "C1" H 7650 2950 50  0000 L C
F 1 "10u" H 7650 2750 50  0000 L C
	1    7600 2850
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG2
U 1 1 4BA8924A
P 6800 3050
F 0 "#FLG2" H 6800 3320 30  0001 C C
F 1 "PWR_FLAG" H 6800 3280 30  0000 C C
	1    6800 3050
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG1
U 1 1 4BA89245
P 6800 2650
F 0 "#FLG1" H 6800 2920 30  0001 C C
F 1 "PWR_FLAG" H 6800 2880 30  0000 C C
	1    6800 2650
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P1
U 1 1 4BA89234
P 6450 2850
F 0 "P1" V 6400 2850 40  0000 C C
F 1 "Alim" V 6500 2850 40  0000 C C
	1    6450 2850
	-1   0    0    -1  
$EndComp
Text Label 3800 4350 0    60   ~
SDechS
Text Label 3800 5050 0    60   ~
SSurchS
Text Label 3800 4850 0    60   ~
SCritS
Text Label 3800 4650 0    60   ~
MElec
Text Label 3800 4450 0    60   ~
Frein
Text Label 3800 4250 0    60   ~
Boost
Text Label 3700 2500 0    60   ~
SDech
Text Label 3650 2800 0    60   ~
SSurch
Text Label 3700 3100 0    60   ~
SCrit
Text Label 3700 3400 0    60   ~
MElec
Text Label 3700 3700 0    60   ~
Frein
Text Label 3700 4000 0    60   ~
Boost
$Comp
L R R1
U 1 1 4BA886BA
P 5300 2450
F 0 "R1" V 5380 2450 50  0000 C C
F 1 "10k" V 5300 2450 50  0000 C C
	1    5300 2450
	0    1    1    0   
$EndComp
$EndSCHEMATC
