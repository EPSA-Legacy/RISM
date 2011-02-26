EESchema Schematic File Version 1
LIBS:power,device,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,analog_switches,motorola,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib,./2010_carte_buzzer.cache
EELAYER 23  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "Carte buzzer"
Date "14 may 2010"
Rev "1.0"
Comp "EPSA - SymbioZ"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 3150 2500 0    394  ~
Carte Buzzer
Wire Notes Line
	7400 2800 3600 2800
Wire Notes Line
	7400 2800 7400 3650
Wire Notes Line
	7400 3650 3600 3650
Wire Notes Line
	3600 3650 3600 2800
Wire Wire Line
	4250 3150 4650 3150
Wire Wire Line
	4250 2950 5250 2950
Connection ~ 5250 3150
Wire Wire Line
	5250 2950 5250 3150
Connection ~ 4450 3150
Wire Wire Line
	6750 3350 4450 3350
Wire Wire Line
	4450 3350 4450 3150
Wire Wire Line
	6550 3150 6750 3150
Wire Wire Line
	5850 3150 6050 3150
Wire Wire Line
	5150 3150 5350 3150
$Comp
L CONN_2 P2
U 1 1 4BED8C1A
P 3900 3050
F 0 "P2" V 3850 3050 40  0000 C C
F 1 "CONN_2" V 3950 3050 40  0000 C C
	1    3900 3050
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 4BED8C18
P 6300 3150
F 0 "R3" V 6380 3150 50  0000 C C
F 1 "3,3k" V 6300 3150 50  0000 C C
	1    6300 3150
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 4BED8C16
P 5600 3150
F 0 "R2" V 5680 3150 50  0000 C C
F 1 "3,3k" V 5600 3150 50  0000 C C
	1    5600 3150
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P1
U 1 1 4BED8C0F
P 7100 3250
F 0 "P1" V 7050 3250 40  0000 C C
F 1 "CONN_2" V 7150 3250 40  0000 C C
	1    7100 3250
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4BED8BFE
P 4900 3150
F 0 "R1" V 4980 3150 50  0000 C C
F 1 "10k" V 4900 3150 50  0000 C C
	1    4900 3150
	0    1    1    0   
$EndComp
$EndSCHEMATC
