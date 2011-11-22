EESchema Schematic File Version 2  date 08/11/2011 16:12:43
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
LIBS:carte_test_ldc-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "8 nov 2011"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 4400 2200
Wire Wire Line
	4400 2350 4400 2200
Wire Wire Line
	4300 1600 4650 1600
Wire Notes Line
	10050 3250 8150 3250
Wire Notes Line
	10050 3250 10050 5650
Wire Notes Line
	10050 5650 8150 5650
Wire Notes Line
	8150 5650 8150 3250
Wire Wire Line
	9250 5150 8700 5150
Wire Wire Line
	9250 5350 9050 5350
Wire Wire Line
	9250 4950 9050 4950
Wire Wire Line
	9250 4750 8700 4750
Wire Wire Line
	9250 3950 8700 3950
Wire Wire Line
	9250 4150 9050 4150
Wire Wire Line
	9250 4550 9050 4550
Wire Wire Line
	5250 4150 5250 4000
Wire Wire Line
	5250 5400 5250 5650
Wire Wire Line
	3300 4450 3750 4450
Wire Wire Line
	3200 2200 2900 2200
Wire Wire Line
	3200 1400 2800 1400
Wire Wire Line
	4300 1400 4650 1400
Wire Wire Line
	4300 2200 4500 2200
Wire Bus Line
	2400 2650 2400 900 
Wire Bus Line
	2400 2650 7100 2650
Wire Bus Line
	7100 2650 7100 900 
Wire Bus Line
	7100 900  2400 900 
Wire Bus Line
	8050 2050 8050 1400
Wire Bus Line
	8050 2050 8650 2050
Wire Bus Line
	8650 2050 8650 1400
Wire Bus Line
	8650 1400 8050 1400
Wire Wire Line
	3150 4200 3150 4000
Wire Wire Line
	4150 4200 4150 4000
Wire Wire Line
	4300 4450 4750 4450
Wire Wire Line
	5250 4650 5250 4800
Wire Wire Line
	5250 4700 5800 4700
Connection ~ 5250 4700
Connection ~ 6000 4700
Wire Wire Line
	6550 4700 6000 4700
Wire Wire Line
	6000 4650 6000 4800
Wire Wire Line
	6000 5400 6000 5650
Wire Wire Line
	6000 4150 6000 4000
Wire Wire Line
	4150 4950 4150 4700
Wire Wire Line
	3150 4950 3150 4700
Wire Wire Line
	9250 4350 8700 4350
Wire Notes Line
	6950 5900 2650 5900
Wire Notes Line
	6950 5900 6950 3450
Wire Notes Line
	6950 3450 2650 3450
Wire Notes Line
	2650 3450 2650 5900
Wire Wire Line
	3200 1600 2800 1600
Wire Wire Line
	3050 2300 3050 2200
Connection ~ 3050 2200
$Comp
L PWR_FLAG #FLG01
U 1 1 4EB93B23
P 4400 2350
F 0 "#FLG01" H 4400 2620 30  0001 C CNN
F 1 "PWR_FLAG" H 4400 2580 30  0000 C CNN
	1    4400 2350
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 4EB93B1F
P 3050 2300
F 0 "#FLG02" H 3050 2570 30  0001 C CNN
F 1 "PWR_FLAG" H 3050 2530 30  0000 C CNN
	1    3050 2300
	-1   0    0    1   
$EndComp
NoConn ~ 6250 2200
NoConn ~ 6250 1800
NoConn ~ 6250 1600
NoConn ~ 6250 1400
NoConn ~ 5150 1400
NoConn ~ 5150 1600
NoConn ~ 5150 1800
NoConn ~ 5150 2000
NoConn ~ 4300 1800
NoConn ~ 3200 1800
NoConn ~ 3200 2000
Text Label 4650 1600 2    60   ~ 0
Int_frein
Text Label 2800 1600 0    60   ~ 0
Int_boost
$Comp
L CONN_2 P9
U 1 1 4EB93976
P 9600 5250
F 0 "P9" V 9550 5250 40  0000 C CNN
F 1 "CONN_2" V 9650 5250 40  0000 C CNN
	1    9600 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 4EB93975
P 9050 5350
F 0 "#PWR03" H 9050 5350 30  0001 C CNN
F 1 "GND" H 9050 5280 30  0001 C CNN
	1    9050 5350
	0    1    1    0   
$EndComp
Text Label 8700 5150 0    60   ~ 0
Int_frein
Text Label 8700 4750 0    60   ~ 0
Int_boost
$Comp
L GND #PWR04
U 1 1 4EB93974
P 9050 4950
F 0 "#PWR04" H 9050 4950 30  0001 C CNN
F 1 "GND" H 9050 4880 30  0001 C CNN
	1    9050 4950
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P8
U 1 1 4EB93973
P 9600 4850
F 0 "P8" V 9550 4850 40  0000 C CNN
F 1 "CONN_2" V 9650 4850 40  0000 C CNN
	1    9600 4850
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P6
U 1 1 4EB9395D
P 9600 4050
F 0 "P6" V 9550 4050 40  0000 C CNN
F 1 "CONN_2" V 9650 4050 40  0000 C CNN
	1    9600 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 4EB9395C
P 9050 4150
F 0 "#PWR05" H 9050 4150 30  0001 C CNN
F 1 "GND" H 9050 4080 30  0001 C CNN
	1    9050 4150
	0    1    1    0   
$EndComp
Text Label 8700 3950 0    60   ~ 0
Pot_acc
Text Label 8700 4350 0    60   ~ 0
Pot_mot
$Comp
L GND #PWR06
U 1 1 4EB93949
P 9050 4550
F 0 "#PWR06" H 9050 4550 30  0001 C CNN
F 1 "GND" H 9050 4480 30  0001 C CNN
	1    9050 4550
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P7
U 1 1 4EB92D67
P 9600 4450
F 0 "P7" V 9550 4450 40  0000 C CNN
F 1 "CONN_2" V 9650 4450 40  0000 C CNN
	1    9600 4450
	1    0    0    -1  
$EndComp
Text Label 4650 1400 2    60   ~ 0
Pot_mot
$Comp
L R R2
U 1 1 4EB93804
P 6000 4400
F 0 "R2" V 6080 4400 50  0000 C CNN
F 1 "R" V 6000 4400 50  0000 C CNN
	1    6000 4400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 4EB93803
P 6000 4000
F 0 "#PWR07" H 6000 4100 30  0001 C CNN
F 1 "VCC" H 6000 4100 30  0000 C CNN
	1    6000 4000
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 4EB93802
P 6000 5100
F 0 "SW2" H 6150 5210 50  0000 C CNN
F 1 "SW_PUSH" H 6000 5020 50  0000 C CNN
	1    6000 5100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR08
U 1 1 4EB93801
P 6000 5650
F 0 "#PWR08" H 6000 5650 30  0001 C CNN
F 1 "GND" H 6000 5580 30  0001 C CNN
	1    6000 5650
	1    0    0    -1  
$EndComp
Text Label 6550 4700 2    60   ~ 0
Int_frein
Text Label 5800 4700 2    60   ~ 0
Int_boost
$Comp
L GND #PWR09
U 1 1 4EB937CC
P 5250 5650
F 0 "#PWR09" H 5250 5650 30  0001 C CNN
F 1 "GND" H 5250 5580 30  0001 C CNN
	1    5250 5650
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 4EB937B7
P 5250 5100
F 0 "SW1" H 5400 5210 50  0000 C CNN
F 1 "SW_PUSH" H 5250 5020 50  0000 C CNN
	1    5250 5100
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR010
U 1 1 4EB9377D
P 5250 4000
F 0 "#PWR010" H 5250 4100 30  0001 C CNN
F 1 "VCC" H 5250 4100 30  0000 C CNN
	1    5250 4000
	1    0    0    -1  
$EndComp
$Comp
L POT RV2
U 1 1 4EB93744
P 4150 4450
F 0 "RV2" H 4150 4350 50  0000 C CNN
F 1 "POT" H 4150 4450 50  0000 C CNN
	1    4150 4450
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR011
U 1 1 4EB93743
P 4150 4000
F 0 "#PWR011" H 4150 4100 30  0001 C CNN
F 1 "VCC" H 4150 4100 30  0000 C CNN
	1    4150 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 4EB93742
P 4150 4950
F 0 "#PWR012" H 4150 4950 30  0001 C CNN
F 1 "GND" H 4150 4880 30  0001 C CNN
	1    4150 4950
	1    0    0    -1  
$EndComp
Text Label 4750 4450 2    60   ~ 0
Pot_mot
Text Label 3750 4450 2    60   ~ 0
Pot_acc
$Comp
L GND #PWR013
U 1 1 4EB92CF9
P 3150 4950
F 0 "#PWR013" H 3150 4950 30  0001 C CNN
F 1 "GND" H 3150 4880 30  0001 C CNN
	1    3150 4950
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR014
U 1 1 4EB92CE3
P 3150 4000
F 0 "#PWR014" H 3150 4100 30  0001 C CNN
F 1 "VCC" H 3150 4100 30  0000 C CNN
	1    3150 4000
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4EB92CDA
P 5250 4400
F 0 "R1" V 5330 4400 50  0000 C CNN
F 1 "R" V 5250 4400 50  0000 C CNN
	1    5250 4400
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 4EB92CD5
P 3150 4450
F 0 "RV1" H 3150 4350 50  0000 C CNN
F 1 "POT" H 3150 4450 50  0000 C CNN
	1    3150 4450
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR015
U 1 1 4EB92C75
P 2900 2200
F 0 "#PWR015" H 2900 2300 30  0001 C CNN
F 1 "VCC" H 2900 2300 30  0000 C CNN
	1    2900 2200
	0    -1   -1   0   
$EndComp
Text Notes 2550 1050 0    60   ~ 0
Connecteurs
Text Notes 8100 1500 0    60   ~ 0
Trous meca
$Comp
L GND #PWR016
U 1 1 4E81CD93
P 4500 2200
F 0 "#PWR016" H 4500 2200 30  0001 C CNN
F 1 "GND" H 4500 2130 30  0001 C CNN
	1    4500 2200
	0    -1   -1   0   
$EndComp
$Comp
L HE10-10 P1
U 1 1 4E7A0E2F
P 3750 1800
F 0 "P1" H 3750 2350 70  0000 C CNN
F 1 "HE10-10" H 3750 1200 70  0000 C CNN
	1    3750 1800
	1    0    0    -1  
$EndComp
NoConn ~ 8250 1850
NoConn ~ 8250 1750
NoConn ~ 8250 1650
$Comp
L CONN_1 P5
U 1 1 4E81C4C1
P 8400 1850
F 0 "P5" H 8480 1850 40  0000 L CNN
F 1 "CONN_1" H 8400 1905 30  0001 C CNN
	1    8400 1850
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P4
U 1 1 4E81C4BD
P 8400 1750
F 0 "P4" H 8480 1750 40  0000 L CNN
F 1 "CONN_1" H 8400 1805 30  0001 C CNN
	1    8400 1750
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P3
U 1 1 4E81C4B6
P 8400 1650
F 0 "P3" H 8480 1650 40  0000 L CNN
F 1 "CONN_1" H 8400 1705 30  0001 C CNN
	1    8400 1650
	1    0    0    -1  
$EndComp
Text Label 2800 1400 0    60   ~ 0
Pot_acc
NoConn ~ 6250 2000
NoConn ~ 5150 2200
NoConn ~ 4300 2000
$Comp
L HE10-10 P2
U 1 1 4E7A0E32
P 5700 1800
F 0 "P2" H 5700 2350 70  0000 C CNN
F 1 "HE10-10" H 5700 1200 70  0000 C CNN
	1    5700 1800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
