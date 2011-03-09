EESchema Schematic File Version 2  date 01/03/2011 16:15:42
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
LIBS:symbioz
LIBS:epsa_relais
LIBS:carte_tableau_electrique-cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title ""
Date "1 mar 2011"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2700 5900 2700 5850
Wire Wire Line
	3000 5850 3000 5900
Wire Wire Line
	3500 2000 3500 2050
Connection ~ 7850 4050
Wire Wire Line
	7800 4050 9000 4050
Wire Wire Line
	9000 4150 9000 4400
Wire Wire Line
	8200 3800 8200 3750
Wire Wire Line
	7500 1400 7550 1400
Wire Wire Line
	7300 6300 7300 5700
Wire Wire Line
	8200 5300 8200 5250
Wire Wire Line
	9000 3950 8550 3950
Wire Wire Line
	3800 2200 3800 2000
Wire Notes Line
	2000 3550 4350 3550
Wire Notes Line
	2000 3550 2000 1550
Wire Notes Line
	2000 1550 4350 1550
Wire Wire Line
	3300 4950 3300 4550
Wire Wire Line
	7300 5300 7300 3900
Wire Wire Line
	8300 4400 8300 4450
Wire Wire Line
	7850 5250 7850 5300
Wire Wire Line
	8550 3950 8550 3750
Wire Wire Line
	7300 3900 8550 3900
Wire Wire Line
	2700 4950 2700 4750
Wire Wire Line
	2700 4750 2650 4750
Connection ~ 3800 2050
Connection ~ 7600 3900
Wire Wire Line
	7600 2750 7600 3900
Wire Wire Line
	8550 2600 8550 2750
Connection ~ 7600 2750
Wire Wire Line
	6950 2750 6700 2750
Wire Wire Line
	8200 1600 6700 1600
Wire Notes Line
	4350 3850 2150 3850
Wire Notes Line
	4350 3850 4350 6500
Wire Notes Line
	4350 6500 2150 6500
Wire Notes Line
	2150 6500 2150 3850
Wire Wire Line
	2350 4250 3700 4250
Wire Wire Line
	3800 2750 3800 2600
Wire Notes Line
	4350 1550 4350 3550
Connection ~ 2700 4250
Wire Wire Line
	3700 4250 3700 6050
Wire Wire Line
	7550 2750 8200 2750
Wire Notes Line
	6500 6550 6500 1000
Wire Notes Line
	6500 6550 9700 6550
Wire Notes Line
	9700 6550 9700 1000
Wire Notes Line
	9700 1000 6500 1000
Wire Wire Line
	2700 4250 2700 4550
Wire Wire Line
	2700 4550 2650 4550
Wire Wire Line
	8550 1400 8550 1600
Connection ~ 8550 3900
Wire Wire Line
	8550 4600 9000 4600
Wire Wire Line
	3150 4250 3150 4950
Connection ~ 3150 4250
Wire Wire Line
	3150 5850 3150 6050
Wire Wire Line
	3150 6050 3700 6050
Wire Wire Line
	3500 2050 3800 2050
Wire Wire Line
	3300 4550 4200 4550
Wire Wire Line
	8200 6300 8200 5700
Wire Wire Line
	3500 2650 3800 2650
Connection ~ 3800 2650
Wire Wire Line
	8200 2600 8200 2650
Wire Wire Line
	7850 4450 7850 4050
Wire Wire Line
	7800 4250 8550 4250
Wire Wire Line
	8550 4250 8550 4650
Connection ~ 8550 4600
Wire Wire Line
	3500 2700 3500 2250
Connection ~ 3500 2650
Wire Wire Line
	3000 6300 3000 6350
$Comp
L GND #PWR01
U 1 1 4D6CFADC
P 3000 6350
F 0 "#PWR01" H 3000 6350 30  0001 C CNN
F 1 "GND" H 3000 6280 30  0001 C CNN
	1    3000 6350
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 4D6BBA73
P 3500 2700
F 0 "#FLG02" H 3500 2970 30  0001 C CNN
F 1 "PWR_FLAG" H 3500 2930 30  0000 C CNN
	1    3500 2700
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 4D6BBA6E
P 3500 2000
F 0 "#FLG03" H 3500 2270 30  0001 C CNN
F 1 "PWR_FLAG" H 3500 2230 30  0000 C CNN
	1    3500 2000
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P2
U 1 1 4D6BB8CC
P 7450 4150
F 0 "P2" V 7400 4150 40  0000 C CNN
F 1 "CONTACT." V 7500 4150 40  0000 C CNN
	1    7450 4150
	-1   0    0    1   
$EndComp
$Comp
L CONN_3 K3
U 1 1 4D6BB8A4
P 9350 4050
F 0 "K3" V 9300 4050 50  0000 C CNN
F 1 "C_CONT." V 9400 4050 40  0000 C CNN
	1    9350 4050
	1    0    0    -1  
$EndComp
$Comp
L SPST SW1
U 1 1 4D6BADDB
P 8050 1400
F 0 "SW1" H 8050 1500 70  0000 C CNN
F 1 "ARRET_URGENCE" H 8050 1300 70  0000 C CNN
	1    8050 1400
	1    0    0    -1  
$EndComp
NoConn ~ 8100 4450
NoConn ~ 3300 5850
NoConn ~ 3000 4950
$Comp
L CONN_2 P1
U 1 1 4D6BA96F
P 3150 2150
F 0 "P1" V 3100 2150 40  0000 C CNN
F 1 "PWR_IN" V 3200 2150 40  0000 C CNN
	1    3150 2150
	-1   0    0    -1  
$EndComp
$Comp
L RELAIS-SPDT K4
U 1 1 4D6B9D2A
P 8000 4850
F 0 "K4" H 8450 4950 60  0000 C CNN
F 1 "RELAIS-SPDT" H 8000 4850 60  0000 C CNN
	1    8000 4850
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P3
U 1 1 4D6A1C1D
P 9350 4500
F 0 "P3" V 9300 4500 40  0000 C CNN
F 1 "CONTACT." V 9400 4500 40  0000 C CNN
	1    9350 4500
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR04
U 1 1 4D6A1BFC
P 8300 4400
F 0 "#PWR04" H 8300 4350 20  0001 C CNN
F 1 "+12V" H 8300 4500 30  0000 C CNN
	1    8300 4400
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR05
U 1 1 4D6A1B80
P 6700 2750
F 0 "#PWR05" H 6700 2700 20  0001 C CNN
F 1 "+12V" H 6700 2850 30  0000 C CNN
	1    6700 2750
	1    0    0    -1  
$EndComp
Text Label 6700 1600 0    60   ~ 0
porte fermée
$Comp
L CONN_2 P4
U 1 1 4D6A1ABA
P 2300 4650
F 0 "P4" V 2250 4650 40  0000 C CNN
F 1 "PORTE" V 2350 4650 40  0000 C CNN
	1    2300 4650
	-1   0    0    -1  
$EndComp
$Comp
L +12V #PWR06
U 1 1 4D6A1AA3
P 2350 4250
F 0 "#PWR06" H 2350 4200 20  0001 C CNN
F 1 "+12V" H 2350 4350 30  0000 C CNN
	1    2350 4250
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR07
U 1 1 4D6A1A70
P 3800 2000
F 0 "#PWR07" H 3800 1950 20  0001 C CNN
F 1 "+12V" H 3800 2100 30  0000 C CNN
	1    3800 2000
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR08
U 1 1 4B854DCF
P 7500 1400
F 0 "#PWR08" H 7500 1350 20  0001 C CNN
F 1 "+12V" H 7500 1500 30  0000 C CNN
	1    7500 1400
	1    0    0    -1  
$EndComp
Text Notes 6600 1250 0    60   ~ 0
Commande contacteurs
$Comp
L GND #PWR09
U 1 1 4B830382
P 7850 5300
F 0 "#PWR09" H 7850 5300 30  0001 C CNN
F 1 "GND" H 7850 5230 30  0001 C CNN
	1    7850 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 4B830354
P 8200 6300
F 0 "#PWR010" H 8200 6300 30  0001 C CNN
F 1 "GND" H 8200 6230 30  0001 C CNN
	1    8200 6300
	1    0    0    -1  
$EndComp
$Comp
L LED D3
U 1 1 4B830353
P 8200 5500
F 0 "D3" H 8200 5600 50  0000 C CNN
F 1 "ROUGE" H 8200 5400 50  0000 C CNN
	1    8200 5500
	0    1    1    0   
$EndComp
$Comp
L LED D2
U 1 1 4B83034A
P 7300 5500
F 0 "D2" H 7300 5600 50  0000 C CNN
F 1 "VERT" H 7300 5400 50  0000 C CNN
	1    7300 5500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR011
U 1 1 4B830349
P 7300 6300
F 0 "#PWR011" H 7300 6300 30  0001 C CNN
F 1 "GND" H 7300 6230 30  0001 C CNN
	1    7300 6300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 4B830269
P 8550 4650
F 0 "#PWR012" H 8550 4650 30  0001 C CNN
F 1 "GND" H 8550 4580 30  0001 C CNN
	1    8550 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 4B8301D8
P 8200 3800
F 0 "#PWR013" H 8200 3800 30  0001 C CNN
F 1 "GND" H 8200 3730 30  0001 C CNN
	1    8200 3800
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 4B830193
P 7250 2750
F 0 "SW2" H 7400 2860 50  0000 C CNN
F 1 "ON" H 7250 2670 50  0000 C CNN
	1    7250 2750
	1    0    0    -1  
$EndComp
$Comp
L RELAIS-SPST-NO K2
U 1 1 4B830109
P 8350 3250
F 0 "K2" H 8800 3350 60  0000 C CNN
F 1 "RELAIS-SPST-NO" H 8300 3250 60  0000 C CNN
	1    8350 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 4B830098
P 8200 2650
F 0 "#PWR014" H 8200 2650 30  0001 C CNN
F 1 "GND" H 8200 2580 30  0001 C CNN
	1    8200 2650
	1    0    0    -1  
$EndComp
$Comp
L RELAIS-SPST-NO K1
U 1 1 4B830066
P 8350 2100
F 0 "K1" H 8800 2200 60  0000 C CNN
F 1 "RELAIS-SPST-NO" H 8300 2100 60  0000 C CNN
	1    8350 2100
	1    0    0    -1  
$EndComp
Text Label 4200 4550 2    40   ~ 0
porte fermée
Text Notes 2400 4050 0    60   ~ 0
Détection porte
$Comp
L LED D4
U 1 1 4B82FE15
P 3000 6100
F 0 "D4" H 3000 6200 50  0000 C CNN
F 1 "ROUGE" H 3000 6000 50  0000 C CNN
	1    3000 6100
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR015
U 1 1 4B82FD90
P 2700 5900
F 0 "#PWR015" H 2700 5900 30  0001 C CNN
F 1 "GND" H 2700 5830 30  0001 C CNN
	1    2700 5900
	1    0    0    -1  
$EndComp
$Comp
L RELAIS-DPDT K5
U 1 1 4B82FD15
P 2850 5400
F 0 "K5" H 3450 5550 60  0000 C CNN
F 1 "RELAIS-DPDT" H 2950 5400 60  0000 C CNN
	1    2850 5400
	1    0    0    -1  
$EndComp
Text Notes 2350 1750 0    60   ~ 0
Alimentation
$Comp
L GND #PWR016
U 1 1 4B82ADBC
P 3800 2750
F 0 "#PWR016" H 3800 2750 30  0001 C CNN
F 1 "GND" H 3800 2680 30  0001 C CNN
	1    3800 2750
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 4B82ACBD
P 3800 2400
F 0 "D1" H 3800 2500 50  0000 C CNN
F 1 "JAUNE" H 3800 2300 50  0000 C CNN
	1    3800 2400
	0    1    1    0   
$EndComp
$EndSCHEMATC
