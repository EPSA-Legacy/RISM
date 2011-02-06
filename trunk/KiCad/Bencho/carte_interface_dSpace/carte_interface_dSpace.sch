EESchema Schematic File Version 2  date 06/02/2011 02:19:21
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
LIBS:carte_interface_dSpace-cache
EELAYER 25  0
EELAYER END
$Descr A3 16535 11700
Sheet 1 1
Title "carte interface dSpace"
Date "6 feb 2011"
Rev "1.0"
Comp "EPSA Bencho"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L C C11
U 1 1 4D4D8DBB
P 5400 7150
F 0 "C11" H 5450 7250 50  0000 L CNN
F 1 "27p" H 5450 7050 50  0000 L CNN
	1    5400 7150
	1    0    0    -1  
$EndComp
$Comp
L CP C12
U 1 1 4D4D8DBA
P 5700 7150
F 0 "C12" H 5750 7250 50  0000 L CNN
F 1 "1u" H 5750 7050 50  0000 L CNN
	1    5700 7150
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR01
U 1 1 4D4D8DB9
P 5550 6900
F 0 "#PWR01" H 5550 6850 20  0001 C CNN
F 1 "+12V" H 5550 7000 30  0000 C CNN
	1    5550 6900
	1    0    0    -1  
$EndComp
$Comp
L -12V #PWR02
U 1 1 4D4D8DB8
P 5550 7400
F 0 "#PWR02" H 5550 7530 20  0001 C CNN
F 1 "-12V" H 5550 7500 30  0000 C CNN
	1    5550 7400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 7350 5700 7350
Wire Wire Line
	5400 6950 5700 6950
Wire Wire Line
	5550 6900 5550 6950
Connection ~ 5550 6950
Wire Wire Line
	5550 7400 5550 7350
Connection ~ 5550 7350
Connection ~ 4400 7350
Wire Wire Line
	4400 7400 4400 7350
Connection ~ 4400 6950
Wire Wire Line
	4400 6900 4400 6950
Wire Bus Line
	3300 5850 8900 5850
Wire Bus Line
	8900 5850 8900 10950
Wire Bus Line
	12600 5350 10400 5350
Wire Notes Line
	4650 2100 750  2100
Wire Notes Line
	4650 2100 4650 650 
Wire Notes Line
	4650 650  3700 650 
Connection ~ 4000 1400
Wire Wire Line
	4000 1300 4000 1450
Connection ~ 3300 1000
Wire Wire Line
	3600 1000 2900 1000
Connection ~ 15600 2250
Wire Wire Line
	15600 2300 15600 2150
Wire Wire Line
	15550 3850 15550 3750
Wire Wire Line
	11450 5850 10800 5850
Wire Notes Line
	12600 5350 12600 8350
Wire Notes Line
	2900 10950 8900 10950
Wire Notes Line
	750  6200 750  5850
Wire Wire Line
	6000 8500 5650 8500
Wire Wire Line
	800  10000 1200 10000
Wire Wire Line
	3250 8550 2900 8550
Wire Wire Line
	6000 10100 5650 10100
Wire Wire Line
	3250 10100 2900 10100
Wire Wire Line
	8750 10100 8400 10100
Wire Wire Line
	8750 8500 8400 8500
Wire Wire Line
	6300 8400 6700 8400
Wire Wire Line
	3550 8400 3950 8400
Wire Wire Line
	800  7100 1200 7100
Wire Wire Line
	3250 7000 2900 7000
Wire Wire Line
	1800 6400 1800 6350
Wire Wire Line
	1500 4450 1400 4450
Wire Wire Line
	2450 4450 2100 4450
Wire Wire Line
	2350 5300 2450 5300
Wire Wire Line
	2450 5300 2450 5350
Wire Wire Line
	2350 4700 2450 4700
Wire Wire Line
	2450 4700 2450 4750
Wire Wire Line
	1850 4700 1950 4700
Connection ~ 1800 7100
Wire Wire Line
	1800 7100 1800 7650
Wire Wire Line
	1800 7650 2050 7650
Connection ~ 1800 6900
Wire Wire Line
	1900 6900 1700 6900
Wire Wire Line
	3000 1850 3000 1800
Wire Wire Line
	11450 7550 10850 7550
Wire Wire Line
	10850 7550 10850 7600
Wire Wire Line
	10850 6200 10850 6150
Wire Wire Line
	10850 6150 11450 6150
Wire Wire Line
	15550 3850 14800 3850
Wire Wire Line
	15600 2250 14800 2250
Wire Wire Line
	14800 1050 15600 1050
Wire Wire Line
	10800 5850 10800 5900
Wire Wire Line
	11450 5950 10850 5950
Wire Wire Line
	10950 7650 11450 7650
Connection ~ 2000 1800
Wire Wire Line
	2100 1800 1300 1800
Connection ~ 1700 1800
Wire Notes Line
	750  3450 750  3700
Wire Wire Line
	1100 3500 1150 3500
Wire Wire Line
	2150 3500 2300 3500
Wire Wire Line
	2300 3500 2300 3550
Wire Wire Line
	1650 3500 1750 3500
Connection ~ 3300 1400
Connection ~ 3000 1800
Wire Wire Line
	3300 1800 2900 1800
Wire Wire Line
	15500 1250 14800 1250
Wire Wire Line
	15500 1450 14800 1450
Wire Wire Line
	15500 1650 14800 1650
Wire Wire Line
	15500 2650 14800 2650
Wire Wire Line
	15500 3050 14800 3050
Wire Wire Line
	15500 3250 14800 3250
Wire Wire Line
	15500 3350 14800 3350
Wire Wire Line
	15500 2350 14800 2350
Wire Wire Line
	15500 3550 14800 3550
Wire Wire Line
	14800 2050 15500 2050
Wire Wire Line
	15500 2550 14800 2550
Wire Wire Line
	11450 7250 10950 7250
Wire Wire Line
	11450 8250 10950 8250
Wire Wire Line
	11450 7750 10950 7750
Wire Wire Line
	11450 6750 10950 6750
Wire Wire Line
	11450 7150 10950 7150
Wire Wire Line
	10950 6650 11450 6650
Wire Wire Line
	10950 6050 11450 6050
Wire Notes Line
	3000 5450 4450 5450
Wire Notes Line
	3000 5450 3000 4150
Wire Notes Line
	3000 4150 4450 4150
Wire Notes Line
	4450 4150 4450 5450
Connection ~ 3100 5150
Wire Wire Line
	3100 5150 3750 5150
Wire Wire Line
	3200 4450 3750 4450
Wire Wire Line
	3200 4650 3750 4650
Wire Wire Line
	3200 5050 3750 5050
Wire Notes Line
	6400 4150 6400 5450
Wire Notes Line
	6400 4150 5150 4150
Wire Notes Line
	5150 4150 5150 5450
Wire Notes Line
	5150 5450 6400 5450
Connection ~ 5250 4950
Wire Wire Line
	5250 4950 5700 4950
Connection ~ 5250 4750
Wire Wire Line
	5250 4750 5700 4750
Connection ~ 5250 4550
Wire Wire Line
	5250 4550 5700 4550
Wire Wire Line
	5700 5250 5400 5250
Wire Notes Line
	15800 650  12850 650 
Wire Notes Line
	15800 650  15800 4000
Wire Notes Line
	15800 4000 12850 4000
Wire Notes Line
	12850 4000 12850 650 
Wire Wire Line
	12950 3650 13500 3650
Wire Wire Line
	13500 3450 12950 3450
Wire Wire Line
	12950 3250 13500 3250
Wire Wire Line
	12950 2950 13500 2950
Wire Wire Line
	12950 2750 13500 2750
Wire Wire Line
	12950 2550 13500 2550
Wire Wire Line
	13500 2350 12950 2350
Wire Wire Line
	13500 2150 12950 2150
Wire Wire Line
	12950 1950 13500 1950
Wire Wire Line
	12950 1750 13500 1750
Wire Wire Line
	12950 1550 13500 1550
Wire Wire Line
	12950 1350 13500 1350
Wire Wire Line
	12950 1150 13500 1150
Wire Wire Line
	12950 950  13500 950 
Wire Notes Line
	5950 650  5950 3700
Wire Notes Line
	5950 650  10550 650 
Wire Notes Line
	10550 650  10550 3700
Wire Notes Line
	10550 3700 5950 3700
Wire Wire Line
	10200 1500 9650 1500
Wire Wire Line
	10200 1700 9650 1700
Wire Wire Line
	10200 1900 9650 1900
Wire Wire Line
	10200 2700 9650 2700
Wire Wire Line
	9650 3300 10200 3300
Wire Wire Line
	8300 2800 8850 2800
Wire Wire Line
	8300 2000 8850 2000
Wire Wire Line
	8850 1200 8300 1200
Wire Wire Line
	8050 3400 7500 3400
Wire Wire Line
	8050 2700 7500 2700
Wire Wire Line
	6250 1100 6700 1100
Wire Wire Line
	6200 2000 6700 2000
Wire Wire Line
	8050 1800 7500 1800
Wire Wire Line
	8050 1600 7500 1600
Connection ~ 6100 3300
Wire Wire Line
	6100 3300 6700 3300
Connection ~ 6100 2900
Wire Wire Line
	6100 2900 6700 2900
Connection ~ 6100 1800
Wire Wire Line
	6100 1800 6700 1800
Connection ~ 6100 1600
Wire Wire Line
	6100 1600 6700 1600
Wire Wire Line
	6100 3450 6100 1000
Wire Wire Line
	9650 2400 10300 2400
Connection ~ 8150 2500
Wire Wire Line
	8150 2500 7500 2500
Connection ~ 8150 3300
Wire Wire Line
	8150 3300 8850 3300
Connection ~ 8150 3200
Wire Wire Line
	8150 3200 8850 3200
Connection ~ 8150 2200
Wire Wire Line
	8150 2200 8850 2200
Connection ~ 8150 1700
Wire Wire Line
	8150 1700 8850 1700
Wire Wire Line
	8850 1000 8150 1000
Wire Wire Line
	1650 3150 1750 3150
Wire Notes Line
	750  3500 750  2800
Wire Notes Line
	750  3700 2550 3700
Wire Notes Line
	750  2800 2550 2800
Wire Wire Line
	3000 950  3000 1000
Connection ~ 2000 1400
Connection ~ 3000 1400
Connection ~ 2000 1000
Wire Wire Line
	1300 1000 2100 1000
Connection ~ 1700 1000
Connection ~ 2500 1400
Wire Notes Line
	3600 650  750  650 
Connection ~ 3000 1000
Connection ~ 1700 1400
Wire Wire Line
	2300 3200 2300 3150
Wire Wire Line
	2300 3150 2150 3150
Wire Wire Line
	1100 3150 1150 3150
Wire Wire Line
	8150 1000 8150 3450
Wire Wire Line
	8150 1600 8850 1600
Connection ~ 8150 1600
Wire Wire Line
	8150 1800 8850 1800
Connection ~ 8150 1800
Wire Wire Line
	8150 2900 8850 2900
Connection ~ 8150 2900
Wire Wire Line
	8850 3400 8150 3400
Connection ~ 8150 3400
Wire Wire Line
	8150 2400 7500 2400
Connection ~ 8150 2400
Wire Wire Line
	10300 2400 10300 3450
Wire Wire Line
	9650 2500 10300 2500
Connection ~ 10300 2500
Wire Wire Line
	6100 1000 6700 1000
Wire Wire Line
	6100 1700 6700 1700
Connection ~ 6100 1700
Wire Wire Line
	6100 2200 6700 2200
Connection ~ 6100 2200
Wire Wire Line
	6100 3200 6700 3200
Connection ~ 6100 3200
Wire Wire Line
	6100 3400 6700 3400
Connection ~ 6100 3400
Wire Wire Line
	8050 1500 7500 1500
Wire Wire Line
	8050 1700 7500 1700
Wire Wire Line
	6200 1900 6700 1900
Wire Wire Line
	6200 2600 6700 2600
Wire Wire Line
	8050 1900 7500 1900
Wire Wire Line
	8050 3300 7500 3300
Wire Wire Line
	8300 1100 8850 1100
Wire Wire Line
	8300 1900 8850 1900
Wire Wire Line
	8300 2600 8850 2600
Wire Wire Line
	10200 3400 9650 3400
Wire Wire Line
	10200 2800 9650 2800
Wire Wire Line
	10200 2000 9650 2000
Wire Wire Line
	10200 1800 9650 1800
Wire Wire Line
	10200 1600 9650 1600
Wire Wire Line
	10200 1200 9650 1200
Wire Wire Line
	13500 3850 13500 3900
Wire Wire Line
	13500 1050 12950 1050
Wire Wire Line
	13500 1250 12950 1250
Wire Wire Line
	13500 1450 12950 1450
Wire Wire Line
	13500 1650 12950 1650
Wire Wire Line
	13500 1850 12950 1850
Wire Wire Line
	13500 2050 12950 2050
Wire Wire Line
	12950 2250 13500 2250
Wire Wire Line
	12950 2450 13500 2450
Wire Wire Line
	13500 2650 12950 2650
Wire Wire Line
	13500 2850 12950 2850
Wire Wire Line
	13500 3050 12950 3050
Wire Wire Line
	13500 3150 12950 3150
Wire Wire Line
	13500 3350 12950 3350
Wire Wire Line
	12950 3550 13500 3550
Wire Wire Line
	12950 3750 13500 3750
Wire Wire Line
	5400 5050 5700 5050
Wire Wire Line
	5250 5300 5250 4450
Wire Wire Line
	5250 4450 5700 4450
Wire Wire Line
	5250 4650 5700 4650
Connection ~ 5250 4650
Wire Wire Line
	5250 4850 5700 4850
Connection ~ 5250 4850
Wire Wire Line
	5250 5150 5700 5150
Connection ~ 5250 5150
Wire Wire Line
	3750 5250 3200 5250
Wire Wire Line
	3750 4850 3200 4850
Wire Wire Line
	3750 4550 3200 4550
Wire Wire Line
	3750 4750 3100 4750
Wire Wire Line
	3100 4750 3100 5300
Wire Wire Line
	3100 4950 3750 4950
Connection ~ 3100 4950
Wire Wire Line
	11450 6350 10950 6350
Wire Wire Line
	10950 6850 11450 6850
Wire Wire Line
	10950 7350 11450 7350
Wire Wire Line
	10950 6950 11450 6950
Wire Wire Line
	10950 8150 11450 8150
Wire Wire Line
	10950 7850 11450 7850
Wire Wire Line
	11450 6550 10950 6550
Wire Wire Line
	14800 1950 15500 1950
Wire Wire Line
	15500 3650 14800 3650
Wire Wire Line
	15500 2450 14800 2450
Wire Wire Line
	15500 3450 14800 3450
Wire Wire Line
	15500 3150 14800 3150
Wire Wire Line
	15500 2950 14800 2950
Wire Wire Line
	15500 2750 14800 2750
Wire Wire Line
	15500 2850 14800 2850
Wire Wire Line
	15500 1550 14800 1550
Wire Wire Line
	15500 1350 14800 1350
Wire Wire Line
	15500 1150 14800 1150
Wire Wire Line
	2500 1300 2500 1500
Wire Bus Line
	3550 650  3700 650 
Wire Notes Line
	750  650  750  2000
Wire Notes Line
	750  2100 750  1850
Wire Notes Line
	2550 2800 2550 3700
Wire Wire Line
	10950 7950 11450 7950
Wire Wire Line
	11450 8050 10950 8050
Wire Wire Line
	10950 7050 11450 7050
Wire Wire Line
	11450 7450 10950 7450
Wire Wire Line
	10950 6250 11450 6250
Wire Wire Line
	10950 6450 11450 6450
Wire Wire Line
	10850 5950 10850 6000
Wire Wire Line
	14800 1850 15600 1850
Wire Wire Line
	14800 950  15600 950 
Wire Wire Line
	15600 2150 14800 2150
Wire Wire Line
	15550 3750 14800 3750
Wire Wire Line
	1850 5300 1950 5300
Wire Wire Line
	2300 6600 2300 6550
Wire Wire Line
	2300 7450 2300 7400
Wire Wire Line
	1900 7100 1700 7100
Wire Wire Line
	2550 7650 2900 7650
Wire Wire Line
	2900 7650 2900 7000
Wire Wire Line
	1350 5000 800  5000
Wire Wire Line
	800  5300 1350 5300
Wire Wire Line
	800  4700 1350 4700
Wire Wire Line
	1950 5000 1850 5000
Wire Wire Line
	2450 5050 2450 5000
Wire Wire Line
	2450 5000 2350 5000
Wire Wire Line
	2100 4100 2450 4100
Wire Wire Line
	1500 4100 1400 4100
Wire Notes Line
	2550 3850 2550 5450
Wire Notes Line
	2550 3850 750  3850
Wire Notes Line
	750  3850 750  5450
Wire Notes Line
	750  5450 2550 5450
Wire Notes Line
	800  5850 3350 5850
Wire Wire Line
	2900 8550 2900 9200
Wire Wire Line
	2900 9200 2550 9200
Wire Wire Line
	1900 8650 1700 8650
Wire Wire Line
	2300 9000 2300 8950
Wire Wire Line
	2300 8150 2300 8100
Wire Wire Line
	1900 8450 1700 8450
Connection ~ 1800 8450
Wire Wire Line
	2050 9200 1800 9200
Wire Wire Line
	1800 9200 1800 8650
Connection ~ 1800 8650
Wire Wire Line
	1800 7950 1800 7900
Wire Wire Line
	1800 9500 1800 9450
Connection ~ 1800 10200
Wire Wire Line
	1800 10200 1800 10750
Wire Wire Line
	1800 10750 2050 10750
Connection ~ 1800 10000
Wire Wire Line
	1900 10000 1700 10000
Wire Wire Line
	2300 9700 2300 9650
Wire Wire Line
	2300 10550 2300 10500
Wire Wire Line
	1900 10200 1700 10200
Wire Wire Line
	2550 10750 2900 10750
Wire Wire Line
	2900 10750 2900 10100
Wire Wire Line
	5650 10100 5650 10750
Wire Wire Line
	5650 10750 5300 10750
Wire Wire Line
	4650 10200 4450 10200
Wire Wire Line
	5050 10550 5050 10500
Wire Wire Line
	5050 9700 5050 9650
Wire Wire Line
	4650 10000 4450 10000
Connection ~ 4550 10000
Wire Wire Line
	4800 10750 4550 10750
Wire Wire Line
	4550 10750 4550 10200
Connection ~ 4550 10200
Wire Wire Line
	4550 9500 4550 9450
Wire Wire Line
	7300 7900 7300 7850
Connection ~ 7300 8600
Wire Wire Line
	7300 8600 7300 9150
Wire Wire Line
	7300 9150 7550 9150
Connection ~ 7300 8400
Wire Wire Line
	7400 8400 7200 8400
Wire Wire Line
	7800 8100 7800 8050
Wire Wire Line
	7800 8950 7800 8900
Wire Wire Line
	7400 8600 7200 8600
Wire Wire Line
	8050 9150 8400 9150
Wire Wire Line
	8400 9150 8400 8500
Wire Wire Line
	5650 8500 5650 9150
Wire Wire Line
	5650 9150 5300 9150
Wire Wire Line
	4650 8600 4450 8600
Wire Wire Line
	5050 8950 5050 8900
Wire Wire Line
	5050 8100 5050 8050
Wire Wire Line
	4650 8400 4450 8400
Connection ~ 4550 8400
Wire Wire Line
	4800 9150 4550 9150
Wire Wire Line
	4550 9150 4550 8600
Connection ~ 4550 8600
Wire Wire Line
	4550 7900 4550 7850
Wire Wire Line
	8400 10100 8400 10750
Wire Wire Line
	8400 10750 8050 10750
Wire Wire Line
	7400 10200 7200 10200
Wire Wire Line
	7800 10550 7800 10500
Wire Wire Line
	7800 9700 7800 9650
Wire Wire Line
	7400 10000 7200 10000
Connection ~ 7300 10000
Wire Wire Line
	7550 10750 7300 10750
Wire Wire Line
	7300 10750 7300 10200
Connection ~ 7300 10200
Wire Wire Line
	7300 9500 7300 9450
Wire Wire Line
	800  6900 1200 6900
Wire Wire Line
	800  8450 1200 8450
Wire Wire Line
	3550 8600 3950 8600
Wire Wire Line
	6300 10000 6700 10000
Wire Wire Line
	6300 10200 6700 10200
Wire Wire Line
	3550 10000 3950 10000
Wire Wire Line
	3550 10200 3950 10200
Wire Wire Line
	6300 8600 6700 8600
Wire Wire Line
	800  8650 1200 8650
Wire Wire Line
	800  10200 1200 10200
Wire Notes Line
	750  5850 1150 5850
Wire Notes Line
	750  5950 750  10950
Wire Notes Line
	750  10950 2950 10950
Wire Bus Line
	10400 8600 12600 8600
Wire Bus Line
	10400 8600 10400 5350
Connection ~ 1400 1400
Wire Wire Line
	15600 950  15600 1050
Wire Wire Line
	15600 1900 15600 1750
Connection ~ 15600 1850
Wire Wire Line
	15600 1750 14800 1750
Wire Wire Line
	4000 1400 1300 1400
Wire Wire Line
	4400 1000 4500 1000
Wire Wire Line
	4500 1000 4500 900 
Wire Notes Line
	2950 2450 3650 2450
Wire Notes Line
	2950 2450 2950 3000
Wire Notes Line
	2950 3000 3650 3000
Wire Notes Line
	3650 3000 3650 2450
Wire Bus Line
	12600 8600 12600 8350
Wire Wire Line
	4250 6950 4550 6950
Wire Wire Line
	4250 7350 4550 7350
$Comp
L -12V #PWR03
U 1 1 4D4D8D94
P 4400 7400
F 0 "#PWR03" H 4400 7530 20  0001 C CNN
F 1 "-12V" H 4400 7500 30  0000 C CNN
	1    4400 7400
	-1   0    0    1   
$EndComp
$Comp
L +12V #PWR04
U 1 1 4D4D8D7F
P 4400 6900
F 0 "#PWR04" H 4400 6850 20  0001 C CNN
F 1 "+12V" H 4400 7000 30  0000 C CNN
	1    4400 6900
	1    0    0    -1  
$EndComp
$Comp
L CP C10
U 1 1 4D4D8CE4
P 4550 7150
F 0 "C10" H 4600 7250 50  0000 L CNN
F 1 "1u" H 4600 7050 50  0000 L CNN
	1    4550 7150
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 4D4D8CDE
P 4250 7150
F 0 "C9" H 4300 7250 50  0000 L CNN
F 1 "27p" H 4300 7050 50  0000 L CNN
	1    4250 7150
	1    0    0    -1  
$EndComp
Text Notes 3000 2550 0    60   ~ 0
Trous fixation
NoConn ~ 3100 2600
NoConn ~ 3100 2700
NoConn ~ 3100 2800
NoConn ~ 3100 2900
$Comp
L CONN_1 MECA4
U 1 1 4D4D8336
P 3250 2900
F 0 "MECA4" H 3330 2900 40  0000 L CNN
F 1 "MECA" H 3250 2955 30  0001 C CNN
	1    3250 2900
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 MECA3
U 1 1 4D4D8335
P 3250 2800
F 0 "MECA3" H 3330 2800 40  0000 L CNN
F 1 "MECA" H 3250 2855 30  0001 C CNN
	1    3250 2800
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 MECA2
U 1 1 4D4D8333
P 3250 2700
F 0 "MECA2" H 3330 2700 40  0000 L CNN
F 1 "MECA" H 3250 2755 30  0001 C CNN
	1    3250 2700
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 MECA1
U 1 1 4D4D830A
P 3250 2600
F 0 "MECA1" H 3330 2600 40  0000 L CNN
F 1 "MECA" H 3250 2655 30  0001 C CNN
	1    3250 2600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 4D4D70EC
P 1400 4450
F 0 "#PWR05" H 1400 4550 30  0001 C CNN
F 1 "VCC" H 1400 4550 30  0000 C CNN
	1    1400 4450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR06
U 1 1 4D4D70E9
P 1400 4100
F 0 "#PWR06" H 1400 4200 30  0001 C CNN
F 1 "VCC" H 1400 4200 30  0000 C CNN
	1    1400 4100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 4D4D70AA
P 4500 900
F 0 "#PWR07" H 4500 1000 30  0001 C CNN
F 1 "VCC" H 4500 1000 30  0000 C CNN
	1    4500 900 
	1    0    0    -1  
$EndComp
$Comp
L 7805 U5
U 1 1 4D4D705A
P 4000 1050
F 0 "U5" H 4150 854 60  0000 C CNN
F 1 "LM7805" H 4000 1250 60  0000 C CNN
	1    4000 1050
	1    0    0    -1  
$EndComp
$Comp
L R R24
U 1 1 4D4B3E7C
P 7300 9750
F 0 "R24" V 7380 9750 50  0000 C CNN
F 1 "5k" V 7300 9750 50  0000 C CNN
	1    7300 9750
	1    0    0    -1  
$EndComp
$Comp
L R R27
U 1 1 4D4B3E7B
P 6950 10000
F 0 "R27" V 7030 10000 50  0000 C CNN
F 1 "10k" V 6950 10000 50  0000 C CNN
	1    6950 10000
	0    1    1    0   
$EndComp
$Comp
L R R30
U 1 1 4D4B3E7A
P 6950 10200
F 0 "R30" V 7030 10200 50  0000 C CNN
F 1 "10k" V 6950 10200 50  0000 C CNN
	1    6950 10200
	0    1    1    0   
$EndComp
$Comp
L R R33
U 1 1 4D4B3E79
P 7800 10750
F 0 "R33" V 7880 10750 50  0000 C CNN
F 1 "5k" V 7800 10750 50  0000 C CNN
	1    7800 10750
	0    1    1    0   
$EndComp
$Comp
L LM324 U4
U 4 1 4D4B3E78
P 7900 10100
F 0 "U4" H 7950 10300 60  0000 C CNN
F 1 "LM358" H 8050 9900 50  0000 C CNN
	4    7900 10100
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR08
U 1 1 4D4B3E77
P 7800 9650
F 0 "#PWR08" H 7800 9600 20  0001 C CNN
F 1 "+12V" H 7800 9750 30  0000 C CNN
	1    7800 9650
	1    0    0    -1  
$EndComp
Text Label 8750 10100 2    60   ~ 0
Isc2
$Comp
L -12V #PWR09
U 1 1 4D4B3E76
P 7800 10550
F 0 "#PWR09" H 7800 10680 20  0001 C CNN
F 1 "-12V" H 7800 10650 30  0000 C CNN
	1    7800 10550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR010
U 1 1 4D4B3E75
P 7300 9450
F 0 "#PWR010" H 7300 9450 30  0001 C CNN
F 1 "GND" H 7300 9380 30  0001 C CNN
	1    7300 9450
	-1   0    0    1   
$EndComp
Text Label 6300 10000 0    60   ~ 0
Isc2+
Text Label 6300 10200 0    60   ~ 0
Isc2-
$Comp
L R R10
U 1 1 4D4B3E73
P 4550 8150
F 0 "R10" V 4630 8150 50  0000 C CNN
F 1 "5k" V 4550 8150 50  0000 C CNN
	1    4550 8150
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 4D4B3E72
P 4200 8400
F 0 "R11" V 4280 8400 50  0000 C CNN
F 1 "10k" V 4200 8400 50  0000 C CNN
	1    4200 8400
	0    1    1    0   
$EndComp
$Comp
L R R12
U 1 1 4D4B3E71
P 4200 8600
F 0 "R12" V 4280 8600 50  0000 C CNN
F 1 "10k" V 4200 8600 50  0000 C CNN
	1    4200 8600
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 4D4B3E70
P 5050 9150
F 0 "R13" V 5130 9150 50  0000 C CNN
F 1 "5k" V 5050 9150 50  0000 C CNN
	1    5050 9150
	0    1    1    0   
$EndComp
$Comp
L LM324 U4
U 1 1 4D4B3E6F
P 5150 8500
F 0 "U4" H 5200 8700 60  0000 C CNN
F 1 "LM358" H 5300 8300 50  0000 C CNN
	1    5150 8500
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR011
U 1 1 4D4B3E6E
P 5050 8050
F 0 "#PWR011" H 5050 8000 20  0001 C CNN
F 1 "+12V" H 5050 8150 30  0000 C CNN
	1    5050 8050
	1    0    0    -1  
$EndComp
Text Label 6000 8500 2    60   ~ 0
Imot1
$Comp
L -12V #PWR012
U 1 1 4D4B3E6D
P 5050 8950
F 0 "#PWR012" H 5050 9080 20  0001 C CNN
F 1 "-12V" H 5050 9050 30  0000 C CNN
	1    5050 8950
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR013
U 1 1 4D4B3E6C
P 4550 7850
F 0 "#PWR013" H 4550 7850 30  0001 C CNN
F 1 "GND" H 4550 7780 30  0001 C CNN
	1    4550 7850
	-1   0    0    1   
$EndComp
Text Label 3550 8400 0    60   ~ 0
Imot1+
Text Label 3550 8600 0    60   ~ 0
Imot1-
Text Label 6300 8600 0    60   ~ 0
Imot2-
Text Label 6300 8400 0    60   ~ 0
Imot2+
$Comp
L GND #PWR014
U 1 1 4D4B3E6B
P 7300 7850
F 0 "#PWR014" H 7300 7850 30  0001 C CNN
F 1 "GND" H 7300 7780 30  0001 C CNN
	1    7300 7850
	-1   0    0    1   
$EndComp
$Comp
L -12V #PWR015
U 1 1 4D4B3E6A
P 7800 8950
F 0 "#PWR015" H 7800 9080 20  0001 C CNN
F 1 "-12V" H 7800 9050 30  0000 C CNN
	1    7800 8950
	-1   0    0    1   
$EndComp
Text Label 8750 8500 2    60   ~ 0
Imot2
$Comp
L +12V #PWR016
U 1 1 4D4B3E69
P 7800 8050
F 0 "#PWR016" H 7800 8000 20  0001 C CNN
F 1 "+12V" H 7800 8150 30  0000 C CNN
	1    7800 8050
	1    0    0    -1  
$EndComp
$Comp
L LM324 U4
U 2 1 4D4B3E68
P 7900 8500
F 0 "U4" H 7950 8700 60  0000 C CNN
F 1 "LM358" H 8050 8300 50  0000 C CNN
	2    7900 8500
	1    0    0    -1  
$EndComp
$Comp
L R R21
U 1 1 4D4B3E67
P 7800 9150
F 0 "R21" V 7880 9150 50  0000 C CNN
F 1 "5k" V 7800 9150 50  0000 C CNN
	1    7800 9150
	0    1    1    0   
$EndComp
$Comp
L R R19
U 1 1 4D4B3E66
P 6950 8600
F 0 "R19" V 7030 8600 50  0000 C CNN
F 1 "10k" V 6950 8600 50  0000 C CNN
	1    6950 8600
	0    1    1    0   
$EndComp
$Comp
L R R17
U 1 1 4D4B3E65
P 6950 8400
F 0 "R17" V 7030 8400 50  0000 C CNN
F 1 "10k" V 6950 8400 50  0000 C CNN
	1    6950 8400
	0    1    1    0   
$EndComp
$Comp
L R R15
U 1 1 4D4B3E64
P 7300 8150
F 0 "R15" V 7380 8150 50  0000 C CNN
F 1 "5k" V 7300 8150 50  0000 C CNN
	1    7300 8150
	1    0    0    -1  
$EndComp
$Comp
L R R23
U 1 1 4D4B3E63
P 4550 9750
F 0 "R23" V 4630 9750 50  0000 C CNN
F 1 "5k" V 4550 9750 50  0000 C CNN
	1    4550 9750
	1    0    0    -1  
$EndComp
$Comp
L R R26
U 1 1 4D4B3E62
P 4200 10000
F 0 "R26" V 4280 10000 50  0000 C CNN
F 1 "10k" V 4200 10000 50  0000 C CNN
	1    4200 10000
	0    1    1    0   
$EndComp
$Comp
L R R29
U 1 1 4D4B3E61
P 4200 10200
F 0 "R29" V 4280 10200 50  0000 C CNN
F 1 "10k" V 4200 10200 50  0000 C CNN
	1    4200 10200
	0    1    1    0   
$EndComp
$Comp
L R R32
U 1 1 4D4B3E60
P 5050 10750
F 0 "R32" V 5130 10750 50  0000 C CNN
F 1 "5k" V 5050 10750 50  0000 C CNN
	1    5050 10750
	0    1    1    0   
$EndComp
$Comp
L LM324 U4
U 3 1 4D4B3E5F
P 5150 10100
F 0 "U4" H 5200 10300 60  0000 C CNN
F 1 "LM358" H 5300 9900 50  0000 C CNN
	3    5150 10100
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR017
U 1 1 4D4B3E5E
P 5050 9650
F 0 "#PWR017" H 5050 9600 20  0001 C CNN
F 1 "+12V" H 5050 9750 30  0000 C CNN
	1    5050 9650
	1    0    0    -1  
$EndComp
Text Label 6000 10100 2    60   ~ 0
Isc1
$Comp
L -12V #PWR018
U 1 1 4D4B3E5D
P 5050 10550
F 0 "#PWR018" H 5050 10680 20  0001 C CNN
F 1 "-12V" H 5050 10650 30  0000 C CNN
	1    5050 10550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR019
U 1 1 4D4B3E5C
P 4550 9450
F 0 "#PWR019" H 4550 9450 30  0001 C CNN
F 1 "GND" H 4550 9380 30  0001 C CNN
	1    4550 9450
	-1   0    0    1   
$EndComp
Text Label 3550 10000 0    60   ~ 0
Isc1+
Text Label 3550 10200 0    60   ~ 0
Isc1-
Text Label 800  10200 0    60   ~ 0
Umot2-
Text Label 800  10000 0    60   ~ 0
Umot2+
$Comp
L GND #PWR020
U 1 1 4D4B3E5B
P 1800 9450
F 0 "#PWR020" H 1800 9450 30  0001 C CNN
F 1 "GND" H 1800 9380 30  0001 C CNN
	1    1800 9450
	-1   0    0    1   
$EndComp
$Comp
L -12V #PWR021
U 1 1 4D4B3E5A
P 2300 10550
F 0 "#PWR021" H 2300 10680 20  0001 C CNN
F 1 "-12V" H 2300 10650 30  0000 C CNN
	1    2300 10550
	-1   0    0    1   
$EndComp
Text Label 3250 10100 2    60   ~ 0
Umot2
$Comp
L +12V #PWR022
U 1 1 4D4B3E59
P 2300 9650
F 0 "#PWR022" H 2300 9600 20  0001 C CNN
F 1 "+12V" H 2300 9750 30  0000 C CNN
	1    2300 9650
	1    0    0    -1  
$EndComp
$Comp
L LM324 U3
U 3 1 4D4B3E58
P 2400 10100
F 0 "U3" H 2450 10300 60  0000 C CNN
F 1 "LM358" H 2550 9900 50  0000 C CNN
	3    2400 10100
	1    0    0    -1  
$EndComp
$Comp
L R R31
U 1 1 4D4B3E57
P 2300 10750
F 0 "R31" V 2380 10750 50  0000 C CNN
F 1 "5k" V 2300 10750 50  0000 C CNN
	1    2300 10750
	0    1    1    0   
$EndComp
$Comp
L R R28
U 1 1 4D4B3E56
P 1450 10200
F 0 "R28" V 1530 10200 50  0000 C CNN
F 1 "10k" V 1450 10200 50  0000 C CNN
	1    1450 10200
	0    1    1    0   
$EndComp
$Comp
L R R25
U 1 1 4D4B3E55
P 1450 10000
F 0 "R25" V 1530 10000 50  0000 C CNN
F 1 "10k" V 1450 10000 50  0000 C CNN
	1    1450 10000
	0    1    1    0   
$EndComp
$Comp
L R R22
U 1 1 4D4B3E54
P 1800 9750
F 0 "R22" V 1880 9750 50  0000 C CNN
F 1 "5k" V 1800 9750 50  0000 C CNN
	1    1800 9750
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 4D4B3E43
P 1800 8200
F 0 "R14" V 1880 8200 50  0000 C CNN
F 1 "5k" V 1800 8200 50  0000 C CNN
	1    1800 8200
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 4D4B3E42
P 1450 8450
F 0 "R16" V 1530 8450 50  0000 C CNN
F 1 "10k" V 1450 8450 50  0000 C CNN
	1    1450 8450
	0    1    1    0   
$EndComp
$Comp
L R R18
U 1 1 4D4B3E41
P 1450 8650
F 0 "R18" V 1530 8650 50  0000 C CNN
F 1 "10k" V 1450 8650 50  0000 C CNN
	1    1450 8650
	0    1    1    0   
$EndComp
$Comp
L R R20
U 1 1 4D4B3E40
P 2300 9200
F 0 "R20" V 2380 9200 50  0000 C CNN
F 1 "5k" V 2300 9200 50  0000 C CNN
	1    2300 9200
	0    1    1    0   
$EndComp
$Comp
L LM324 U3
U 2 1 4D4B3E3F
P 2400 8550
F 0 "U3" H 2450 8750 60  0000 C CNN
F 1 "LM358" H 2550 8350 50  0000 C CNN
	2    2400 8550
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR023
U 1 1 4D4B3E3E
P 2300 8100
F 0 "#PWR023" H 2300 8050 20  0001 C CNN
F 1 "+12V" H 2300 8200 30  0000 C CNN
	1    2300 8100
	1    0    0    -1  
$EndComp
Text Label 3250 8550 2    60   ~ 0
Umot1
$Comp
L -12V #PWR024
U 1 1 4D4B3E3D
P 2300 9000
F 0 "#PWR024" H 2300 9130 20  0001 C CNN
F 1 "-12V" H 2300 9100 30  0000 C CNN
	1    2300 9000
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR025
U 1 1 4D4B3E3C
P 1800 7900
F 0 "#PWR025" H 1800 7900 30  0001 C CNN
F 1 "GND" H 1800 7830 30  0001 C CNN
	1    1800 7900
	-1   0    0    1   
$EndComp
Text Label 800  8450 0    60   ~ 0
Umot1+
Text Label 800  8650 0    60   ~ 0
Umot1-
Text Notes 850  5950 0    60   ~ 0
Transformation Signaux Convertisseur
Text Notes 800  3950 0    60   ~ 0
Simulation Tableau de bord
Text Label 2450 4450 2    60   ~ 0
Boost
Text Label 2450 4100 2    60   ~ 0
Frein
$Comp
L GND #PWR026
U 1 1 4D4B0A00
P 2450 5350
F 0 "#PWR026" H 2450 5350 30  0001 C CNN
F 1 "GND" H 2450 5280 30  0001 C CNN
	1    2450 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 4D4B09FD
P 2450 5050
F 0 "#PWR027" H 2450 5050 30  0001 C CNN
F 1 "GND" H 2450 4980 30  0001 C CNN
	1    2450 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 4D4B09F8
P 2450 4750
F 0 "#PWR028" H 2450 4750 30  0001 C CNN
F 1 "GND" H 2450 4680 30  0001 C CNN
	1    2450 4750
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 4D4B09A5
P 1600 4700
F 0 "R8" V 1680 4700 50  0000 C CNN
F 1 "350" V 1600 4700 50  0000 C CNN
	1    1600 4700
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 4D4B09A3
P 1600 5000
F 0 "R9" V 1680 5000 50  0000 C CNN
F 1 "350" V 1600 5000 50  0000 C CNN
	1    1600 5000
	0    -1   -1   0   
$EndComp
Text Label 800  5300 0    60   ~ 0
SecuCr
Text Label 800  5000 0    60   ~ 0
SecuVi
Text Label 800  4700 0    60   ~ 0
SecuPl
Text Label 800  7100 0    60   ~ 0
Usc-
Text Label 800  6900 0    60   ~ 0
Usc+
$Comp
L GND #PWR029
U 1 1 4D4AE0AA
P 1800 6350
F 0 "#PWR029" H 1800 6350 30  0001 C CNN
F 1 "GND" H 1800 6280 30  0001 C CNN
	1    1800 6350
	-1   0    0    1   
$EndComp
$Comp
L -12V #PWR030
U 1 1 4D4AE088
P 2300 7450
F 0 "#PWR030" H 2300 7580 20  0001 C CNN
F 1 "-12V" H 2300 7550 30  0000 C CNN
	1    2300 7450
	-1   0    0    1   
$EndComp
Text Label 3250 7000 2    60   ~ 0
Usc
$Comp
L +12V #PWR031
U 1 1 4D4ADD36
P 2300 6550
F 0 "#PWR031" H 2300 6500 20  0001 C CNN
F 1 "+12V" H 2300 6650 30  0000 C CNN
	1    2300 6550
	1    0    0    -1  
$EndComp
$Comp
L LM324 U3
U 1 1 4D4ADCE2
P 2400 7000
F 0 "U3" H 2450 7200 60  0000 C CNN
F 1 "LM358" H 2550 6800 50  0000 C CNN
	1    2400 7000
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 4D4ADCB6
P 2300 7650
F 0 "R4" V 2380 7650 50  0000 C CNN
F 1 "5k" V 2300 7650 50  0000 C CNN
	1    2300 7650
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 4D4ADC7F
P 1450 7100
F 0 "R6" V 1530 7100 50  0000 C CNN
F 1 "10k" V 1450 7100 50  0000 C CNN
	1    1450 7100
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 4D4ADC7C
P 1450 6900
F 0 "R5" V 1530 6900 50  0000 C CNN
F 1 "10k" V 1450 6900 50  0000 C CNN
	1    1450 6900
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 4D4ADC79
P 1800 6650
F 0 "R7" V 1880 6650 50  0000 C CNN
F 1 "5k" V 1800 6650 50  0000 C CNN
	1    1800 6650
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 4D4AD8C3
P 1600 5300
F 0 "R3" V 1680 5300 50  0000 C CNN
F 1 "350" V 1600 5300 50  0000 C CNN
	1    1600 5300
	0    -1   -1   0   
$EndComp
$Comp
L LED D3
U 1 1 4D4AD8B1
P 2150 5300
F 0 "D3" H 2150 5400 50  0000 C CNN
F 1 "ROUGE" H 2150 5200 50  0000 C CNN
	1    2150 5300
	1    0    0    -1  
$EndComp
$Comp
L LED D4
U 1 1 4D4AD8B0
P 2150 5000
F 0 "D4" H 2150 5100 50  0000 C CNN
F 1 "JAUNE" H 2150 4900 50  0000 C CNN
	1    2150 5000
	1    0    0    -1  
$EndComp
$Comp
L LED D5
U 1 1 4D4AD8A7
P 2150 4700
F 0 "D5" H 2150 4800 50  0000 C CNN
F 1 "VERT" H 2150 4600 50  0000 C CNN
	1    2150 4700
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 4D4AD7AE
P 1800 4100
F 0 "SW2" H 1950 4210 50  0000 C CNN
F 1 "BOOST" H 1800 4020 50  0000 C CNN
	1    1800 4100
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 4D4AD7AB
P 1800 4450
F 0 "SW1" H 1950 4560 50  0000 C CNN
F 1 "FREIN" H 1800 4370 50  0000 C CNN
	1    1800 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR032
U 1 1 4D4AD745
P 10850 7600
F 0 "#PWR032" H 10850 7600 30  0001 C CNN
F 1 "GND" H 10850 7530 30  0001 C CNN
	1    10850 7600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 4D4AD740
P 10850 6200
F 0 "#PWR033" H 10850 6200 30  0001 C CNN
F 1 "GND" H 10850 6130 30  0001 C CNN
	1    10850 6200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 4D4AD679
P 10850 6000
F 0 "#PWR034" H 10850 6000 30  0001 C CNN
F 1 "GND" H 10850 5930 30  0001 C CNN
	1    10850 6000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 4D4AD674
P 10800 5900
F 0 "#PWR035" H 10800 5900 30  0001 C CNN
F 1 "GND" H 10800 5830 30  0001 C CNN
	1    10800 5900
	1    0    0    -1  
$EndComp
Text Label 10950 6450 0    60   ~ 0
Imot2-
Text Label 10950 6250 0    60   ~ 0
Imot1+
Text Label 10950 7450 0    60   ~ 0
Isc2+
Text Label 10950 7050 0    60   ~ 0
Isc1+
Text Label 10950 8050 0    60   ~ 0
Umot2-
Text Label 10950 7650 0    60   ~ 0
Umot1-
Text Label 10950 7950 0    60   ~ 0
Usc+
$Comp
L +12V #PWR036
U 1 1 4D4AD49A
P 15600 950
F 0 "#PWR036" H 15600 900 20  0001 C CNN
F 1 "+12V" H 15600 1050 30  0000 C CNN
	1    15600 950 
	1    0    0    -1  
$EndComp
$Comp
L -12V #PWR037
U 1 1 4D4AD48F
P 15550 3850
F 0 "#PWR037" H 15550 3980 20  0001 C CNN
F 1 "-12V" H 15550 3950 30  0000 C CNN
	1    15550 3850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR038
U 1 1 4D4AD477
P 15600 1900
F 0 "#PWR038" H 15600 1900 30  0001 C CNN
F 1 "GND" H 15600 1830 30  0001 C CNN
	1    15600 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR039
U 1 1 4D4AD462
P 15600 2300
F 0 "#PWR039" H 15600 2300 30  0001 C CNN
F 1 "GND" H 15600 2230 30  0001 C CNN
	1    15600 2300
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR040
U 1 1 4D4ACEF0
P 3000 950
F 0 "#PWR040" H 3000 900 20  0001 C CNN
F 1 "+12V" H 3000 1050 30  0000 C CNN
	1    3000 950 
	1    0    0    -1  
$EndComp
$Comp
L -12V #PWR041
U 1 1 4D4AD002
P 1100 3500
F 0 "#PWR041" H 1100 3630 20  0001 C CNN
F 1 "-12V" H 1100 3600 30  0000 C CNN
	1    1100 3500
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 4D4ACFF7
P 1950 3500
F 0 "D2" H 1950 3600 50  0000 C CNN
F 1 "JAUNE" H 1950 3400 50  0000 C CNN
	1    1950 3500
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR042
U 1 1 4D4ACFF6
P 2300 3550
F 0 "#PWR042" H 2300 3550 30  0001 C CNN
F 1 "GND" H 2300 3480 30  0001 C CNN
	1    2300 3550
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 4D4ACFF5
P 1400 3500
F 0 "R2" V 1480 3500 50  0000 C CNN
F 1 "1k" V 1400 3500 50  0000 C CNN
	1    1400 3500
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR043
U 1 1 4D4ACFDD
P 1100 3150
F 0 "#PWR043" H 1100 3100 20  0001 C CNN
F 1 "+12V" H 1100 3250 30  0000 C CNN
	1    1100 3150
	1    0    0    -1  
$EndComp
$Comp
L -12V #PWR044
U 1 1 4D4ACED6
P 3000 1850
F 0 "#PWR044" H 3000 1980 20  0001 C CNN
F 1 "-12V" H 3000 1950 30  0000 C CNN
	1    3000 1850
	-1   0    0    1   
$EndComp
$Comp
L CP C8
U 1 1 4D4ACE6F
P 3300 1600
F 0 "C8" H 3350 1700 50  0000 L CNN
F 1 "10u" H 3350 1500 50  0000 L CNN
	1    3300 1600
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 4D4ACE66
P 3000 1600
F 0 "C7" H 3050 1700 50  0000 L CNN
F 1 "27p" H 3050 1500 50  0000 L CNN
	1    3000 1600
	1    0    0    -1  
$EndComp
$Comp
L LM7912 U2
U 1 1 4D4ACE16
P 2500 1750
F 0 "U2" H 2650 1555 60  0000 C CNN
F 1 "LM7912" H 2500 1950 60  0000 C CNN
	1    2500 1750
	1    0    0    1   
$EndComp
$Comp
L CP C5
U 1 1 4D4ACDD5
P 1700 1600
F 0 "C5" H 1750 1700 50  0000 L CNN
F 1 "100u" H 1750 1500 50  0000 L CNN
	1    1700 1600
	-1   0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 4D4ACDD6
P 2000 1600
F 0 "C6" H 2050 1700 50  0000 L CNN
F 1 "27p" H 2050 1500 50  0000 L CNN
	1    2000 1600
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 P6
U 1 1 4D4ACD46
P 1150 1800
F 0 "P6" H 1230 1800 40  0000 L CNN
F 1 "ALIM-" H 1150 1855 30  0001 C CNN
	1    1150 1800
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 P7
U 1 1 4D4ACD43
P 1150 1400
F 0 "P7" H 1230 1400 40  0000 L CNN
F 1 "MASSE" H 1150 1455 30  0001 C CNN
	1    1150 1400
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 P1
U 1 1 4D4ACD3D
P 1150 1000
F 0 "P1" H 1230 1000 40  0000 L CNN
F 1 "ALIM+" H 1150 1055 30  0001 C CNN
	1    1150 1000
	-1   0    0    1   
$EndComp
$Comp
L LM7812 U1
U 1 1 4D4ACD11
P 2500 1050
F 0 "U1" H 2650 854 60  0000 C CNN
F 1 "LM7812" H 2500 1250 60  0000 C CNN
	1    2500 1050
	1    0    0    -1  
$EndComp
Text Label 15500 2850 2    60   ~ 0
Imot2
Text Label 15500 2450 2    60   ~ 0
Derr2
Text Label 15500 2750 2    60   ~ 0
Imot1
Text Label 15500 3050 2    60   ~ 0
Isc2
Text Label 15500 2950 2    60   ~ 0
Isc1
Text Label 15500 3250 2    60   ~ 0
Umot2
Text Label 15500 3150 2    60   ~ 0
Umot1
Text Label 15500 3350 2    60   ~ 0
Usc
Text Label 15500 3450 2    60   ~ 0
Tconv
Text Label 15500 2550 2    60   ~ 0
PWM1
Text Label 15500 2650 2    60   ~ 0
PWM2
Text Label 15500 3550 2    60   ~ 0
Enable1
Text Label 15500 3650 2    60   ~ 0
Enable2
Text Label 15500 2350 2    60   ~ 0
Derr1
Text Label 15500 1650 2    60   ~ 0
Boost
Text Label 15500 1550 2    60   ~ 0
Frein
Text Label 15500 1450 2    60   ~ 0
Mode Elec
Text Label 15500 1350 2    60   ~ 0
SecuCr
Text Label 15500 1250 2    60   ~ 0
SecuVi
Text Label 15500 1150 2    60   ~ 0
SecuPl
Text Label 15500 2050 2    60   ~ 0
W2
Text Label 15500 1950 2    60   ~ 0
W1
Text Notes 10450 5450 0    60   ~ 0
Connecteur Carte Convertisseur
Text Label 10950 6350 0    60   ~ 0
Derr1
Text Label 10950 7350 0    60   ~ 0
Enable2
Text Label 10950 7150 0    60   ~ 0
Enable1
Text Label 10950 6950 0    60   ~ 0
PWM2
Text Label 10950 6750 0    60   ~ 0
PWM1
Text Label 10950 7750 0    60   ~ 0
Tconv
Text Label 10950 8150 0    60   ~ 0
Usc-
Text Label 10950 8250 0    60   ~ 0
Umot2+
Text Label 10950 7850 0    60   ~ 0
Umot1+
Text Label 10950 7250 0    60   ~ 0
Isc2-
Text Label 10950 6850 0    60   ~ 0
Isc1-
Text Label 10950 6650 0    60   ~ 0
Imot2+
Text Label 10950 6550 0    60   ~ 0
Derr2
Text Label 10950 6050 0    60   ~ 0
Imot1-
$Comp
L DB25 J4
U 1 1 4D4A62E0
P 11900 7050
F 0 "J4" H 11950 8400 70  0000 C CNN
F 1 "CONVERTISSEUR" H 11850 5700 70  0000 C CNN
	1    11900 7050
	1    0    0    -1  
$EndComp
Text Notes 3050 4250 0    60   ~ 0
Connecteur Carte TdB
$Comp
L GND #PWR045
U 1 1 4D4A5A22
P 3100 5300
F 0 "#PWR045" H 3100 5300 30  0001 C CNN
F 1 "GND" H 3100 5230 30  0001 C CNN
	1    3100 5300
	1    0    0    -1  
$EndComp
Text Label 3200 4450 0    60   ~ 0
SecuPl
Text Label 3200 4550 0    60   ~ 0
SecuVi
Text Label 3200 4650 0    60   ~ 0
SecuCr
Text Label 3200 4850 0    60   ~ 0
Mode Elec
Text Label 3200 5050 0    60   ~ 0
Frein
Text Label 3200 5250 0    60   ~ 0
Boost
$Comp
L DB9 J2
U 1 1 4D4A5969
P 4200 4850
F 0 "J2" H 4200 5400 70  0000 C CNN
F 1 "TDB" H 4200 4300 70  0000 C CNN
	1    4200 4850
	1    0    0    -1  
$EndComp
Text Notes 5200 4250 0    60   ~ 0
Connecteur Carte Vitesse\n
$Comp
L GND #PWR046
U 1 1 4D4A5842
P 5250 5300
F 0 "#PWR046" H 5250 5300 30  0001 C CNN
F 1 "GND" H 5250 5230 30  0001 C CNN
	1    5250 5300
	1    0    0    -1  
$EndComp
Text Label 5400 5050 0    60   ~ 0
W2
Text Label 5400 5250 0    60   ~ 0
W1
$Comp
L DB9 J1
U 1 1 4D4A57F5
P 6150 4850
F 0 "J1" H 6150 5400 70  0000 C CNN
F 1 "VITESSE" H 6150 4300 70  0000 C CNN
	1    6150 4850
	1    0    0    -1  
$EndComp
Text Notes 12900 750  0    60   ~ 0
Pontage manuel
$Comp
L CONN_30 P5
U 1 1 4D483DE5
P 14450 2400
F 0 "P5" V 14401 2400 60  0000 C CNN
F 1 "BRASAGE_R" V 14500 2400 60  0000 C CNN
	1    14450 2400
	-1   0    0    -1  
$EndComp
Text Label 12950 3150 0    60   ~ 0
SPWM7
Text Label 12950 2950 0    60   ~ 0
ST1PWM
Text Label 12950 2650 0    60   ~ 0
SSIMO
Text Label 12950 2450 0    60   ~ 0
CTS (\CTS)
Text Label 12950 2550 0    60   ~ 0
SSOMI
Text Label 12950 2350 0    60   ~ 0
SSTE
Text Label 12950 2750 0    60   ~ 0
SSCLK
Text Label 12950 2250 0    60   ~ 0
ST3PWM
Text Label 12950 2850 0    60   ~ 0
ST2PWM
Text Label 12950 2150 0    60   ~ 0
SPWM9
Text Label 12950 3050 0    60   ~ 0
SPWM8
Text Label 12950 3750 0    60   ~ 0
ADCH8
Text Label 12950 3650 0    60   ~ 0
ADCH2
Text Label 12950 3550 0    60   ~ 0
ADCH4
Text Label 12950 3450 0    60   ~ 0
ADCH6
Text Label 12950 3350 0    60   ~ 0
DACH4
Text Label 12950 3250 0    60   ~ 0
IO1
$Comp
L GND #PWR047
U 1 1 4D483873
P 13500 3900
F 0 "#PWR047" H 13500 3900 30  0001 C CNN
F 1 "GND" H 13500 3830 30  0001 C CNN
	1    13500 3900
	1    0    0    -1  
$EndComp
Text Label 12950 1250 0    60   ~ 0
SCAP3
Text Label 12950 1050 0    60   ~ 0
RTS (\RTS)
Text Label 12950 1150 0    60   ~ 0
SCAP4
Text Label 12950 1350 0    60   ~ 0
SCAP1
Text Label 12950 950  0    60   ~ 0
SCAP2
Text Label 12950 1450 0    60   ~ 0
SPWM5
Text Label 12950 2050 0    60   ~ 0
ADCH7
Text Label 12950 1950 0    60   ~ 0
ADCH1
Text Label 12950 1850 0    60   ~ 0
ADCH3
Text Label 12950 1750 0    60   ~ 0
ADCH5
Text Label 12950 1650 0    60   ~ 0
DACH3
Text Label 12950 1550 0    60   ~ 0
IO0
$Comp
L CONN_30 P4
U 1 1 4D4832B5
P 13850 2400
F 0 "P4" V 13801 2400 60  0000 C CNN
F 1 "BRASSAGE_L" V 13900 2400 60  0000 C CNN
	1    13850 2400
	1    0    0    -1  
$EndComp
Text Notes 6000 750  0    60   ~ 0
Connecteurs dSpace
Text Label 10200 3400 2    60   ~ 0
ADCH2
Text Label 10200 3300 2    60   ~ 0
ADCH8
Text Label 10200 2800 2    60   ~ 0
SPWM9
Text Label 10200 2700 2    60   ~ 0
SSTE
Text Label 10200 2000 2    60   ~ 0
SPWM8
Text Label 10200 1900 2    60   ~ 0
SSCLK
Text Label 10200 1800 2    60   ~ 0
CTS (\CTS)
Text Label 10200 1700 2    60   ~ 0
ADCH6
Text Label 10200 1600 2    60   ~ 0
DACH4
Text Label 10200 1500 2    60   ~ 0
IO1
Text Label 10200 1200 2    60   ~ 0
SPWM7
Text Label 8300 2800 0    60   ~ 0
ST3PWM
Text Label 8300 2600 0    60   ~ 0
ADCH4
Text Label 8300 2000 0    60   ~ 0
ST2PWM
Text Label 8300 1900 0    60   ~ 0
SSOMI
Text Label 8300 1200 0    60   ~ 0
ST1PWM
Text Label 8300 1100 0    60   ~ 0
SSIMO
Text Label 8050 3400 2    60   ~ 0
ADCH1
Text Label 8050 3300 2    60   ~ 0
ADCH7
Text Label 8050 2700 2    60   ~ 0
SCAP2
Text Label 8050 1900 2    60   ~ 0
SCAP1
Text Label 8050 1800 2    60   ~ 0
RTS (\RTS)
Text Label 8050 1700 2    60   ~ 0
ADCH5
Text Label 8050 1600 2    60   ~ 0
DACH3
Text Label 8050 1500 2    60   ~ 0
IO0
Text Label 6200 2600 0    60   ~ 0
ADCH3
Text Label 6200 2000 0    60   ~ 0
SPWM5
Text Label 6200 1900 0    60   ~ 0
SCAP4
Text Label 6250 1100 0    60   ~ 0
SCAP3
NoConn ~ 9650 3200
NoConn ~ 9650 3100
NoConn ~ 8850 3100
NoConn ~ 9650 3000
NoConn ~ 8850 3000
NoConn ~ 9650 2900
NoConn ~ 8850 2700
NoConn ~ 9650 2600
NoConn ~ 8850 2500
NoConn ~ 8850 2400
NoConn ~ 9650 2300
NoConn ~ 8850 2300
NoConn ~ 9650 2200
NoConn ~ 9650 2100
NoConn ~ 8850 2100
NoConn ~ 9650 1400
NoConn ~ 8850 1500
NoConn ~ 8850 1400
NoConn ~ 9650 1300
NoConn ~ 8850 1300
NoConn ~ 9650 1100
NoConn ~ 9650 1000
NoConn ~ 7500 1000
NoConn ~ 7500 1100
NoConn ~ 7500 1200
NoConn ~ 7500 1300
NoConn ~ 7500 1400
NoConn ~ 6700 1500
NoConn ~ 6700 1400
NoConn ~ 6700 1300
NoConn ~ 6700 1200
NoConn ~ 6700 2500
NoConn ~ 6700 2400
NoConn ~ 6700 2300
NoConn ~ 6700 2100
NoConn ~ 6700 3100
NoConn ~ 6700 3000
NoConn ~ 6700 2800
NoConn ~ 6700 2700
NoConn ~ 7500 2600
NoConn ~ 7500 2800
NoConn ~ 7500 2900
NoConn ~ 7500 3000
NoConn ~ 7500 3100
NoConn ~ 7500 3200
NoConn ~ 7500 2000
NoConn ~ 7500 2100
NoConn ~ 7500 2200
NoConn ~ 7500 2300
$Comp
L GND #PWR048
U 1 1 4D4829BD
P 6100 3450
F 0 "#PWR048" H 6100 3450 30  0001 C CNN
F 1 "GND" H 6100 3380 30  0001 C CNN
	1    6100 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR049
U 1 1 4D48296F
P 10300 3450
F 0 "#PWR049" H 10300 3450 30  0001 C CNN
F 1 "GND" H 10300 3380 30  0001 C CNN
	1    10300 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR050
U 1 1 4D4828E3
P 8150 3450
F 0 "#PWR050" H 8150 3450 30  0001 C CNN
F 1 "GND" H 8150 3380 30  0001 C CNN
	1    8150 3450
	1    0    0    -1  
$EndComp
$Comp
L CONN_25X2 P3
U 1 1 4D482689
P 9250 2200
F 0 "P3" H 9250 3500 60  0000 C CNN
F 1 "DSPACE8_P1B" V 9250 2200 50  0000 C CNN
	1    9250 2200
	1    0    0    -1  
$EndComp
$Comp
L CONN_25X2 P2
U 1 1 4D482684
P 7100 2200
F 0 "P2" H 7100 3500 60  0000 C CNN
F 1 "DSPACE_P1A" V 7100 2200 50  0000 C CNN
	1    7100 2200
	1    0    0    -1  
$EndComp
Text Notes 800  2900 0    60   ~ 0
Témoins alimentation
$Comp
L R R1
U 1 1 4D4823B1
P 1400 3150
F 0 "R1" V 1480 3150 50  0000 C CNN
F 1 "1k" V 1400 3150 50  0000 C CNN
	1    1400 3150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR051
U 1 1 4D4822D9
P 2300 3200
F 0 "#PWR051" H 2300 3200 30  0001 C CNN
F 1 "GND" H 2300 3130 30  0001 C CNN
	1    2300 3200
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 4D4822C9
P 1950 3150
F 0 "D1" H 1950 3250 50  0000 C CNN
F 1 "JAUNE" H 1950 3050 50  0000 C CNN
	1    1950 3150
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG052
U 1 1 4D47E5F0
P 1400 1400
F 0 "#FLG052" H 1400 1670 30  0001 C CNN
F 1 "PWR_FLAG" H 1400 1630 30  0000 C CNN
	1    1400 1400
	-1   0    0    1   
$EndComp
Text Notes 800  750  0    60   ~ 0
Alimentation
$Comp
L GND #PWR053
U 1 1 4D47E4D0
P 4000 1450
F 0 "#PWR053" H 4000 1450 30  0001 C CNN
F 1 "GND" H 4000 1380 30  0001 C CNN
	1    4000 1450
	1    0    0    -1  
$EndComp
$Comp
L CP C4
U 1 1 4D47E2F6
P 3300 1200
F 0 "C4" H 3350 1300 50  0000 L CNN
F 1 "10u" H 3350 1100 50  0000 L CNN
	1    3300 1200
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 4D47E2CA
P 1700 1200
F 0 "C1" H 1750 1300 50  0000 L CNN
F 1 "100u" H 1750 1100 50  0000 L CNN
	1    1700 1200
	-1   0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 4D47E274
P 3000 1200
F 0 "C3" H 3050 1300 50  0000 L CNN
F 1 "27p" H 3050 1100 50  0000 L CNN
	1    3000 1200
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 4D47E25F
P 2000 1200
F 0 "C2" H 2050 1300 50  0000 L CNN
F 1 "27p" H 2050 1100 50  0000 L CNN
	1    2000 1200
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
