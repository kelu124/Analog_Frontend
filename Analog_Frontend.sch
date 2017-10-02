EESchema Schematic File Version 2
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
LIBS:Analog_Frontend-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Analog Frontend for Low Cost Ultrasound Device"
Date "2017-07-31"
Rev "v2.1"
Comp "Columbia University - Creative Machines Lab"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R1
U 1 1 58E08CD5
P 8600 1500
F 0 "R1" V 8680 1500 50  0000 C CNN
F 1 "100" V 8600 1500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8530 1500 50  0001 C CNN
F 3 "" H 8600 1500 50  0000 C CNN
	1    8600 1500
	0    1    1    0   
$EndComp
$Comp
L L L1
U 1 1 58E08D29
P 8800 1850
F 0 "L1" V 8750 1850 50  0000 C CNN
F 1 "1u" V 8875 1850 50  0000 C CNN
F 2 "Inductors_SMD:L_0603" H 8800 1850 50  0001 C CNN
F 3 "" H 8800 1850 50  0000 C CNN
	1    8800 1850
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 58E08E96
P 9100 1850
F 0 "C5" H 9125 1950 50  0000 L CNN
F 1 "1n" H 9125 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9138 1700 50  0001 C CNN
F 3 "" H 9100 1850 50  0000 C CNN
	1    9100 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR37
U 1 1 58E09076
P 8900 2200
F 0 "#PWR37" H 8900 1950 50  0001 C CNN
F 1 "GND" H 8900 2050 50  0000 C CNN
F 2 "" H 8900 2200 50  0000 C CNN
F 3 "" H 8900 2200 50  0000 C CNN
	1    8900 2200
	1    0    0    -1  
$EndComp
Text Notes 8250 800  0    30   ~ 0
make sure to use a 10:1 probe on Vfiltered to minimize parasitic capacitance\nplace the VGA input close to this filter's output in order to minimize noise\n
$Comp
L LTC5507 U6
U 1 1 58FBDBA6
P 2400 6800
F 0 "U6" H 2450 7250 60  0000 C CNN
F 1 "LTC5507" H 2450 6350 60  0000 C CNN
F 2 "custom:TSOT-23-6_MK06A" H 2400 6400 60  0001 C CNN
F 3 "http://cds.linear.com/docs/en/datasheet/5507f.pdf" H 2400 6400 60  0001 C CNN
	1    2400 6800
	1    0    0    -1  
$EndComp
$Comp
L C C21
U 1 1 58FBF128
P 3100 6950
F 0 "C21" H 3125 7050 50  0000 L CNN
F 1 "2.2nF" H 3200 6900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3138 6800 50  0001 C CNN
F 3 "" H 3100 6950 50  0001 C CNN
	1    3100 6950
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 58FC016E
P 3100 6350
F 0 "C20" H 3125 6450 50  0000 L CNN
F 1 "6.8nF" H 3125 6250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3138 6200 50  0001 C CNN
F 3 "" H 3100 6350 50  0001 C CNN
	1    3100 6350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR10
U 1 1 58FC23C4
P 1600 7500
F 0 "#PWR10" H 1600 7250 50  0001 C CNN
F 1 "GND" H 1600 7350 50  0000 C CNN
F 2 "" H 1600 7500 50  0000 C CNN
F 3 "" H 1600 7500 50  0000 C CNN
	1    1600 7500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR13
U 1 1 58FC2495
P 1950 6800
F 0 "#PWR13" H 1950 6550 50  0001 C CNN
F 1 "GND" H 1950 6650 50  0000 C CNN
F 2 "" H 1950 6800 50  0000 C CNN
F 3 "" H 1950 6800 50  0000 C CNN
	1    1950 6800
	1    0    0    -1  
$EndComp
Text GLabel 3400 6150 2    60   Input ~ 0
V_VGA
Text Notes 5050 2750 0    80   ~ 0
VGA
$Comp
L AD8331 U5
U 1 1 591C075D
P 7000 4550
F 0 "U5" H 7250 5850 60  0000 C CNN
F 1 "AD8331" H 7300 3250 60  0000 C CNN
F 2 "custom:QSOP-20_3.9x8.6mm_Pitch0.64mm" H 7050 5200 60  0001 C CNN
F 3 "" H 7050 5200 60  0001 C CNN
	1    7000 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR24
U 1 1 591C0CD4
P 6700 3100
F 0 "#PWR24" H 6700 2850 50  0001 C CNN
F 1 "GND" H 6700 2950 50  0000 C CNN
F 2 "" H 6700 3100 50  0001 C CNN
F 3 "" H 6700 3100 50  0001 C CNN
	1    6700 3100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR29
U 1 1 591C115F
P 7800 3400
F 0 "#PWR29" H 7800 3150 50  0001 C CNN
F 1 "GND" H 7800 3250 50  0000 C CNN
F 2 "" H 7800 3400 50  0001 C CNN
F 3 "" H 7800 3400 50  0001 C CNN
	1    7800 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR30
U 1 1 591C132C
P 7800 4150
F 0 "#PWR30" H 7800 3900 50  0001 C CNN
F 1 "GND" H 7800 4000 50  0000 C CNN
F 2 "" H 7800 4150 50  0001 C CNN
F 3 "" H 7800 4150 50  0001 C CNN
	1    7800 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR26
U 1 1 591C18B7
P 6750 4650
F 0 "#PWR26" H 6750 4400 50  0001 C CNN
F 1 "GND" H 6750 4500 50  0000 C CNN
F 2 "" H 6750 4650 50  0001 C CNN
F 3 "" H 6750 4650 50  0001 C CNN
	1    6750 4650
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 591C1AD6
P 6450 4650
F 0 "C14" H 6475 4750 50  0000 L CNN
F 1 "0.1µF" H 6475 4550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6488 4500 50  0001 C CNN
F 3 "" H 6450 4650 50  0001 C CNN
	1    6450 4650
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 591C253F
P 6100 4650
F 0 "C13" H 6125 4750 50  0000 L CNN
F 1 "0.1µF" H 6125 4550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6138 4500 50  0001 C CNN
F 3 "" H 6100 4650 50  0001 C CNN
	1    6100 4650
	1    0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 591C3A41
P 6700 5800
F 0 "C18" H 6725 5900 50  0000 L CNN
F 1 "1nF" H 6725 5700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6738 5650 50  0001 C CNN
F 3 "" H 6700 5800 50  0001 C CNN
	1    6700 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR25
U 1 1 591C3ADA
P 6700 5950
F 0 "#PWR25" H 6700 5700 50  0001 C CNN
F 1 "GND" H 6700 5800 50  0000 C CNN
F 2 "" H 6700 5950 50  0001 C CNN
F 3 "" H 6700 5950 50  0001 C CNN
	1    6700 5950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR34
U 1 1 591C50AA
P 8100 5400
F 0 "#PWR34" H 8100 5150 50  0001 C CNN
F 1 "GND" H 8100 5250 50  0000 C CNN
F 2 "" H 8100 5400 50  0001 C CNN
F 3 "" H 8100 5400 50  0001 C CNN
	1    8100 5400
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 591C7038
P 8750 3650
F 0 "C16" H 8775 3750 50  0000 L CNN
F 1 "0.1µF" H 8775 3550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8788 3500 50  0001 C CNN
F 3 "" H 8750 3650 50  0001 C CNN
	1    8750 3650
	1    0    0    -1  
$EndComp
$Comp
L L L6
U 1 1 591C70E1
P 8750 3250
F 0 "L6" V 8700 3250 50  0000 C CNN
F 1 "120nH FB" V 8825 3250 30  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 8750 3250 50  0001 C CNN
F 3 "" H 8750 3250 50  0001 C CNN
	1    8750 3250
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR36
U 1 1 591C7197
P 8750 3800
F 0 "#PWR36" H 8750 3550 50  0001 C CNN
F 1 "GND" H 8750 3650 50  0000 C CNN
F 2 "" H 8750 3800 50  0001 C CNN
F 3 "" H 8750 3800 50  0001 C CNN
	1    8750 3800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR35
U 1 1 591C74F2
P 8750 3050
F 0 "#PWR35" H 8750 2900 50  0001 C CNN
F 1 "+5V" H 8750 3190 50  0000 C CNN
F 2 "" H 8750 3050 50  0001 C CNN
F 3 "" H 8750 3050 50  0001 C CNN
	1    8750 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR27
U 1 1 591C7E2D
P 6750 5400
F 0 "#PWR27" H 6750 5150 50  0001 C CNN
F 1 "GND" H 6750 5250 50  0000 C CNN
F 2 "" H 6750 5400 50  0001 C CNN
F 3 "" H 6750 5400 50  0001 C CNN
	1    6750 5400
	1    0    0    -1  
$EndComp
$Comp
L C C19
U 1 1 591C80AF
P 7800 5800
F 0 "C19" H 7825 5900 50  0000 L CNN
F 1 "1nF" H 7825 5700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7838 5650 50  0001 C CNN
F 3 "" H 7800 5800 50  0001 C CNN
	1    7800 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR31
U 1 1 591C8222
P 7800 5950
F 0 "#PWR31" H 7800 5700 50  0001 C CNN
F 1 "GND" H 7800 5800 50  0000 C CNN
F 2 "" H 7800 5950 50  0001 C CNN
F 3 "" H 7800 5950 50  0001 C CNN
	1    7800 5950
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 591C8787
P 5750 4050
F 0 "C11" H 5775 4150 50  0000 L CNN
F 1 "0.1µF" H 5775 3950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5788 3900 50  0001 C CNN
F 3 "" H 5750 4050 50  0001 C CNN
	1    5750 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR21
U 1 1 591C8FE3
P 5750 4200
F 0 "#PWR21" H 5750 3950 50  0001 C CNN
F 1 "GND" H 5750 4050 50  0000 C CNN
F 2 "" H 5750 4200 50  0001 C CNN
F 3 "" H 5750 4200 50  0001 C CNN
	1    5750 4200
	1    0    0    -1  
$EndComp
$Comp
L L L3
U 1 1 591C91FE
P 5500 3900
F 0 "L3" V 5450 3900 50  0000 C CNN
F 1 "120nH FB" V 5575 3900 30  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 5500 3900 50  0001 C CNN
F 3 "" H 5500 3900 50  0001 C CNN
	1    5500 3900
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR20
U 1 1 591C92A6
P 5350 3900
F 0 "#PWR20" H 5350 3750 50  0001 C CNN
F 1 "+5V" H 5350 4040 50  0000 C CNN
F 2 "" H 5350 3900 50  0001 C CNN
F 3 "" H 5350 3900 50  0001 C CNN
	1    5350 3900
	0    -1   -1   0   
$EndComp
$Comp
L L L2
U 1 1 591C9538
P 5800 3450
F 0 "L2" V 5750 3450 50  0000 C CNN
F 1 "120nH FB" V 5875 3450 30  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 5800 3450 50  0001 C CNN
F 3 "" H 5800 3450 50  0001 C CNN
	1    5800 3450
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR23
U 1 1 591CB23B
P 6350 3650
F 0 "#PWR23" H 6350 3400 50  0001 C CNN
F 1 "GND" H 6350 3500 50  0000 C CNN
F 2 "" H 6350 3650 50  0001 C CNN
F 3 "" H 6350 3650 50  0001 C CNN
	1    6350 3650
	1    0    0    -1  
$EndComp
Text GLabel 5550 3450 0    60   Input ~ 0
Vfiltered
$Comp
L R R8
U 1 1 591CCE56
P 8100 4450
F 0 "R8" V 8150 4300 50  0000 C CNN
F 1 "100" V 8100 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8030 4450 50  0001 C CNN
F 3 "" H 8100 4450 50  0001 C CNN
	1    8100 4450
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 591CCF43
P 8100 4600
F 0 "R9" V 8050 4750 50  0000 C CNN
F 1 "100" V 8100 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8030 4600 50  0001 C CNN
F 3 "" H 8100 4600 50  0001 C CNN
	1    8100 4600
	0    1    1    0   
$EndComp
$Comp
L L L4
U 1 1 591CCFF6
P 8100 4300
F 0 "L4" V 8050 4300 50  0000 C CNN
F 1 "120nH FB" V 8175 4300 30  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 8100 4300 50  0001 C CNN
F 3 "" H 8100 4300 50  0001 C CNN
	1    8100 4300
	0    -1   -1   0   
$EndComp
$Comp
L C C12
U 1 1 591CF666
P 8450 4400
F 0 "C12" H 8475 4500 50  0000 L CNN
F 1 "0.1µF" H 8475 4300 30  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8488 4250 50  0001 C CNN
F 3 "" H 8450 4400 50  0001 C CNN
	1    8450 4400
	0    -1   -1   0   
$EndComp
$Comp
L C C15
U 1 1 591CF7EE
P 8450 4650
F 0 "C15" H 8475 4750 50  0000 L CNN
F 1 "0.1µF" H 8475 4550 30  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8488 4500 50  0001 C CNN
F 3 "" H 8450 4650 50  0001 C CNN
	1    8450 4650
	0    -1   -1   0   
$EndComp
$Comp
L L L5
U 1 1 591CD8FF
P 8100 4750
F 0 "L5" V 8050 4750 50  0000 C CNN
F 1 "120nH FB" V 8175 4750 30  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 8100 4750 50  0001 C CNN
F 3 "" H 8100 4750 50  0001 C CNN
	1    8100 4750
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 591CFF75
P 8800 4400
F 0 "R6" V 8880 4400 50  0000 C CNN
F 1 "237" V 8800 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8730 4400 50  0001 C CNN
F 3 "" H 8800 4400 50  0001 C CNN
	1    8800 4400
	0    -1   -1   0   
$EndComp
$Comp
L R R10
U 1 1 591D00FA
P 8800 4650
F 0 "R10" V 8880 4650 50  0000 C CNN
F 1 "237" V 8800 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8730 4650 50  0001 C CNN
F 3 "" H 8800 4650 50  0001 C CNN
	1    8800 4650
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR39
U 1 1 591D0E99
P 9950 4250
F 0 "#PWR39" H 9950 4000 50  0001 C CNN
F 1 "GND" H 9950 4100 50  0000 C CNN
F 2 "" H 9950 4250 50  0001 C CNN
F 3 "" H 9950 4250 50  0001 C CNN
	1    9950 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR38
U 1 1 591D0F55
P 9150 4450
F 0 "#PWR38" H 9150 4200 50  0001 C CNN
F 1 "GND" H 9150 4300 50  0000 C CNN
F 2 "" H 9150 4450 50  0001 C CNN
F 3 "" H 9150 4450 50  0001 C CNN
	1    9150 4450
	1    0    0    -1  
$EndComp
Text GLabel 9950 4650 2    60   Input ~ 0
V_VGA
$Comp
L C C17
U 1 1 591D36CE
P 7950 5400
F 0 "C17" H 7975 5500 50  0000 L CNN
F 1 "0.1µF" H 7975 5300 30  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7988 5250 50  0001 C CNN
F 3 "" H 7950 5400 50  0001 C CNN
	1    7950 5400
	0    -1   -1   0   
$EndComp
$Comp
L CX2041NLT T1
U 1 1 591D38EB
P 9550 4450
F 0 "T1" H 9550 4700 50  0000 C CNN
F 1 "CX2041NLT" H 9550 4150 50  0000 C CNN
F 2 "custom:CX2041NLT" H 9550 4450 50  0001 C CNN
F 3 "" H 9550 4450 50  0001 C CNN
	1    9550 4450
	1    0    0    -1  
$EndComp
Text Label 8300 5650 0    60   ~ 0
VCM
$Comp
L +5V #PWR18
U 1 1 591D68B8
P 3450 7100
F 0 "#PWR18" H 3450 6950 50  0001 C CNN
F 1 "+5V" H 3450 7240 50  0000 C CNN
F 2 "" H 3450 7100 50  0001 C CNN
F 3 "" H 3450 7100 50  0001 C CNN
	1    3450 7100
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR11
U 1 1 591D6B8B
P 1650 6500
F 0 "#PWR11" H 1650 6350 50  0001 C CNN
F 1 "+5V" H 1650 6640 50  0000 C CNN
F 2 "" H 1650 6500 50  0001 C CNN
F 3 "" H 1650 6500 50  0001 C CNN
	1    1650 6500
	0    -1   -1   0   
$EndComp
$Comp
L C C23
U 1 1 591D88F9
P 3250 7350
F 0 "C23" H 3275 7450 50  0000 L CNN
F 1 "0.1µF" H 3275 7250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3288 7200 50  0001 C CNN
F 3 "" H 3250 7350 50  0001 C CNN
	1    3250 7350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR15
U 1 1 591D8A80
P 3250 7500
F 0 "#PWR15" H 3250 7250 50  0001 C CNN
F 1 "GND" H 3250 7350 50  0000 C CNN
F 2 "" H 3250 7500 50  0000 C CNN
F 3 "" H 3250 7500 50  0000 C CNN
	1    3250 7500
	1    0    0    -1  
$EndComp
Text GLabel 9150 1350 0    60   Input ~ 0
Vfiltered
Text GLabel 6500 5550 1    60   Input ~ 0
GAIN
$Comp
L C_Small CFB1
U 1 1 591F49DF
P 6600 3750
F 0 "CFB1" H 6610 3820 50  0000 L CNN
F 1 "18nF" H 6610 3670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6600 3750 50  0001 C CNN
F 3 "" H 6600 3750 50  0001 C CNN
	1    6600 3750
	1    0    0    -1  
$EndComp
$Comp
L R_Small RFB1
U 1 1 591F4EDF
P 6600 4050
F 0 "RFB1" H 6630 4070 50  0000 L CNN
F 1 "274" H 6630 4010 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6600 4050 50  0001 C CNN
F 3 "" H 6600 4050 50  0001 C CNN
	1    6600 4050
	1    0    0    -1  
$EndComp
$Comp
L C_Small CSH1
U 1 1 591F55DF
P 6350 3550
F 0 "CSH1" H 6360 3620 50  0000 L CNN
F 1 "22pF" H 6360 3470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6350 3550 50  0001 C CNN
F 3 "" H 6350 3550 50  0001 C CNN
	1    6350 3550
	1    0    0    -1  
$EndComp
$Comp
L C CLMD1
U 1 1 591C095D
P 6700 3250
F 0 "CLMD1" H 6725 3350 50  0000 L CNN
F 1 "0.1µF" H 6725 3150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6738 3100 50  0001 C CNN
F 3 "" H 6700 3250 50  0001 C CNN
	1    6700 3250
	1    0    0    -1  
$EndComp
$Comp
L Speaker_Ultrasound LS1
U 1 1 591F749E
P 5900 1000
F 0 "LS1" H 5925 1225 50  0000 R CNN
F 1 "Piezo" H 5925 1150 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 5865 950 50  0001 C CNN
F 3 "" H 5865 950 50  0001 C CNN
	1    5900 1000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR22
U 1 1 591F7883
P 6000 1200
F 0 "#PWR22" H 6000 950 50  0001 C CNN
F 1 "GND" H 6000 1050 50  0000 C CNN
F 2 "" H 6000 1200 50  0000 C CNN
F 3 "" H 6000 1200 50  0000 C CNN
	1    6000 1200
	1    0    0    -1  
$EndComp
$Comp
L BAV99T D1
U 1 1 591F8367
P 7800 1800
F 0 "D1" H 8000 1600 50  0000 C CNN
F 1 "BAV99T" H 7500 1600 50  0000 C CNN
F 2 "custom:SOT-523" V 8100 2000 50  0001 C CNN
F 3 "" V 8100 2000 50  0001 C CNN
	1    7800 1800
	1    0    0    -1  
$EndComp
$Comp
L MD0100N8 U2
U 1 1 591F8A64
P 7150 1750
F 0 "U2" H 6850 2400 60  0000 C CNN
F 1 "MD0100N8" H 7000 2300 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT89-3_Housing_Handsoldering" H 7150 1900 60  0001 C CNN
F 3 "" H 7150 1900 60  0001 C CNN
	1    7150 1750
	1    0    0    -1  
$EndComp
Text Notes 3150 650  0    80   ~ 0
Transmitter
Text Notes 8250 650  0    80   ~ 0
Bandpass Filter
$Comp
L GND #PWR28
U 1 1 591FC8B2
P 7800 2050
F 0 "#PWR28" H 7800 1800 50  0001 C CNN
F 1 "GND" H 7800 1900 50  0000 C CNN
F 2 "" H 7800 2050 50  0000 C CNN
F 3 "" H 7800 2050 50  0000 C CNN
	1    7800 2050
	1    0    0    -1  
$EndComp
NoConn ~ 7100 1850
Text Notes 6550 900  0    80   ~ 0
T/R Switch
$Comp
L C_Small CINH1
U 1 1 592085D9
P 6150 3450
F 0 "CINH1" H 6160 3520 50  0000 L CNN
F 1 "0.1µF" H 6160 3370 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6150 3450 50  0001 C CNN
F 3 "" H 6150 3450 50  0001 C CNN
	1    6150 3450
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR7
U 1 1 5921C538
P 1450 7300
F 0 "#PWR7" H 1450 7050 50  0001 C CNN
F 1 "GND" H 1450 7150 50  0000 C CNN
F 2 "" H 1450 7300 50  0001 C CNN
F 3 "" H 1450 7300 50  0001 C CNN
	1    1450 7300
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C22
U 1 1 5921E51F
P 1600 7400
F 0 "C22" H 1610 7470 50  0000 L CNN
F 1 "470pF" H 1610 7320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1600 7400 50  0001 C CNN
F 3 "" H 1600 7400 50  0001 C CNN
	1    1600 7400
	1    0    0    -1  
$EndComp
$Comp
L R_Small R11
U 1 1 5921E895
P 1800 7100
F 0 "R11" H 1830 7120 50  0000 L CNN
F 1 "68" H 1830 7060 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 1800 7100 50  0001 C CNN
F 3 "" H 1800 7100 50  0001 C CNN
	1    1800 7100
	0    1    1    0   
$EndComp
Text Label 7950 4400 2    60   ~ 0
VGA-
Text Label 7950 4650 2    60   ~ 0
VGA+
Text Label 7750 4900 0    60   ~ 0
VGA_PWR
Text Label 7750 5150 0    60   ~ 0
VGA_PWR
Text Label 8850 3450 0    60   ~ 0
VGA_PWR
Text Label 3100 6500 2    60   ~ 0
RFin
Text Label 3100 6800 2    60   ~ 0
PCAP
Text Notes 2750 6650 0    20   ~ 0
Decreasing the value of PCAP makes the signal have a faster fall time. We \nshould find that smallest capacitance possible that will track the envelope \nwithout tracking individual peaks of the envelope.
Text Label 1150 2850 2    60   ~ 0
PULSE
Text GLabel 1150 2950 0    60   Input ~ 0
GAIN
$Comp
L GND #PWR12
U 1 1 59444FED
P 1700 3100
F 0 "#PWR12" H 1700 2850 50  0001 C CNN
F 1 "GND" H 1700 2950 50  0000 C CNN
F 2 "" H 1700 3100 50  0001 C CNN
F 3 "" H 1700 3100 50  0001 C CNN
	1    1700 3100
	1    0    0    -1  
$EndComp
Text Notes 1100 2600 0    60   ~ 0
Edge Connector
$Comp
L +5V #PWR32
U 1 1 5944A2F3
P 7850 3650
F 0 "#PWR32" H 7850 3500 50  0001 C CNN
F 1 "+5V" H 7850 3790 50  0000 C CNN
F 2 "" H 7850 3650 50  0001 C CNN
F 3 "" H 7850 3650 50  0001 C CNN
	1    7850 3650
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR33
U 1 1 5944A500
P 7850 3900
F 0 "#PWR33" H 7850 3750 50  0001 C CNN
F 1 "+5V" H 7850 4040 50  0000 C CNN
F 2 "" H 7850 3900 50  0001 C CNN
F 3 "" H 7850 3900 50  0001 C CNN
	1    7850 3900
	0    1    1    0   
$EndComp
Text Notes 900  5950 0    80   ~ 0
Envelope Detector\n
$Comp
L CONN_02X04 J1
U 1 1 597B5015
P 1400 2900
F 0 "J1" H 1400 3150 50  0000 C CNN
F 1 "CONN_02X03" H 1400 2700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x04_Pitch2.54mm" H 1400 1700 50  0001 C CNN
F 3 "" H 1400 1700 50  0001 C CNN
	1    1400 2900
	1    0    0    -1  
$EndComp
$Comp
L DIN_5 J5
U 1 1 597F59C1
P 1050 7100
F 0 "J5" H 1050 6750 50  0000 C CNN
F 1 "DIN_5" H 1050 6675 50  0000 C CNN
F 2 "custom:SAM8857-ND" H 1050 7100 50  0001 C CNN
F 3 "" H 1050 7100 50  0001 C CNN
	1    1050 7100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR3
U 1 1 597F753F
P 1050 7500
F 0 "#PWR3" H 1050 7250 50  0001 C CNN
F 1 "GND" H 1050 7350 50  0000 C CNN
F 2 "" H 1050 7500 50  0001 C CNN
F 3 "" H 1050 7500 50  0001 C CNN
	1    1050 7500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR6
U 1 1 597F75B1
P 1250 7500
F 0 "#PWR6" H 1250 7250 50  0001 C CNN
F 1 "GND" H 1250 7350 50  0000 C CNN
F 2 "" H 1250 7500 50  0001 C CNN
F 3 "" H 1250 7500 50  0001 C CNN
	1    1250 7500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 597F77EF
P 1050 6700
F 0 "#PWR2" H 1050 6450 50  0001 C CNN
F 1 "GND" H 1050 6550 50  0000 C CNN
F 2 "" H 1050 6700 50  0001 C CNN
F 3 "" H 1050 6700 50  0001 C CNN
	1    1050 6700
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR5
U 1 1 597F7861
P 1250 6700
F 0 "#PWR5" H 1250 6450 50  0001 C CNN
F 1 "GND" H 1250 6550 50  0000 C CNN
F 2 "" H 1250 6700 50  0001 C CNN
F 3 "" H 1250 6700 50  0001 C CNN
	1    1250 6700
	-1   0    0    1   
$EndComp
$Comp
L Screw_Terminal_1x01 J6
U 1 1 5980FFF4
P 1100 1100
F 0 "J6" H 1100 1250 50  0000 C TNN
F 1 "Screw_Terminal_1x01" V 950 1100 50  0000 C TNN
F 2 "custom:SCREWM3" H 1100 975 50  0001 C CNN
F 3 "" H 1100 1000 50  0001 C CNN
	1    1100 1100
	0    1    1    0   
$EndComp
$Comp
L Screw_Terminal_1x01 J2
U 1 1 598103B0
P 1100 1550
F 0 "J2" H 1100 1700 50  0000 C TNN
F 1 "Screw_Terminal_1x01" V 950 1550 50  0000 C TNN
F 2 "custom:SCREWM3" H 1100 1425 50  0001 C CNN
F 3 "" H 1100 1450 50  0001 C CNN
	1    1100 1550
	0    1    1    0   
$EndComp
$Comp
L Screw_Terminal_1x01 J3
U 1 1 59810461
P 2100 1550
F 0 "J3" H 2100 1700 50  0000 C TNN
F 1 "Screw_Terminal_1x01" V 1950 1550 50  0000 C TNN
F 2 "custom:SCREWM3" H 2100 1425 50  0001 C CNN
F 3 "" H 2100 1450 50  0001 C CNN
	1    2100 1550
	0    1    1    0   
$EndComp
$Comp
L Screw_Terminal_1x01 J4
U 1 1 59810517
P 2100 1100
F 0 "J4" H 2100 1250 50  0000 C TNN
F 1 "Screw_Terminal_1x01" V 1950 1100 50  0000 C TNN
F 2 "custom:SCREWM3" H 2100 975 50  0001 C CNN
F 3 "" H 2100 1000 50  0001 C CNN
	1    2100 1100
	0    1    1    0   
$EndComp
Text GLabel 3150 1000 0    60   Input ~ 0
20V
$Comp
L C C26
U 1 1 59C81D72
P 4250 1000
F 0 "C26" H 4275 1100 50  0000 L CNN
F 1 "500P" H 4275 900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4288 850 50  0001 C CNN
F 3 "" H 4250 1000 50  0001 C CNN
	1    4250 1000
	0    1    1    0   
$EndComp
$Comp
L Q_NMOS_SDG Q2
U 1 1 59C81F08
P 3650 1500
F 0 "Q2" H 3850 1550 50  0000 L CNN
F 1 "Q_NMOS_SDG" H 3850 1450 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3850 1600 50  0001 C CNN
F 3 "" H 3650 1500 50  0001 C CNN
	1    3650 1500
	1    0    0    -1  
$EndComp
$Comp
L D D4
U 1 1 59C82315
P 4650 2000
F 0 "D4" H 4650 2100 50  0000 C CNN
F 1 "BZX84C6V2L" H 4650 1900 50  0000 C CNN
F 2 "Diodes_SMD:D_SMB" H 4650 2000 50  0001 C CNN
F 3 "" H 4650 2000 50  0001 C CNN
	1    4650 2000
	0    1    1    0   
$EndComp
$Comp
L D D3
U 1 1 59C823DF
P 4650 1600
F 0 "D3" H 4650 1700 50  0000 C CNN
F 1 "BZX84C6V2L" H 4650 1500 50  0000 C CNN
F 2 "Diodes_SMD:D_SMB" H 4650 1600 50  0001 C CNN
F 3 "" H 4650 1600 50  0001 C CNN
	1    4650 1600
	0    -1   -1   0   
$EndComp
$Comp
L R Rdamp1
U 1 1 59C827AE
P 5050 1750
F 0 "Rdamp1" V 5130 1750 50  0000 C CNN
F 1 "10" V 5050 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4980 1750 50  0001 C CNN
F 3 "" H 5050 1750 50  0001 C CNN
	1    5050 1750
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 59C8297E
P 3600 1000
F 0 "R12" V 3680 1000 50  0000 C CNN
F 1 "10" V 3600 1000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3530 1000 50  0001 C CNN
F 3 "" H 3600 1000 50  0001 C CNN
	1    3600 1000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR19
U 1 1 59C854EB
P 4300 2500
F 0 "#PWR19" H 4300 2250 50  0001 C CNN
F 1 "GND" H 4300 2350 50  0000 C CNN
F 2 "" H 4300 2500 50  0001 C CNN
F 3 "" H 4300 2500 50  0001 C CNN
	1    4300 2500
	1    0    0    -1  
$EndComp
Text Label 3300 2000 3    60   ~ 0
PULSE
Text GLabel 1150 2750 0    60   Input ~ 0
20V
NoConn ~ 1100 1300
NoConn ~ 1100 1750
NoConn ~ 2100 1300
NoConn ~ 2100 1750
$Comp
L PWR_FLAG #FLG4
U 1 1 59CEC005
P 8750 3450
F 0 "#FLG4" H 8750 3525 50  0001 C CNN
F 1 "PWR_FLAG" H 8750 3600 50  0000 C CNN
F 2 "" H 8750 3450 50  0001 C CNN
F 3 "" H 8750 3450 50  0001 C CNN
	1    8750 3450
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR4
U 1 1 59CED31B
P 1150 3050
F 0 "#PWR4" H 1150 2900 50  0001 C CNN
F 1 "+5V" H 1150 3190 50  0000 C CNN
F 2 "" H 1150 3050 50  0001 C CNN
F 3 "" H 1150 3050 50  0001 C CNN
	1    1150 3050
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR14
U 1 1 59CED5B0
P 3100 4050
F 0 "#PWR14" H 3100 3900 50  0001 C CNN
F 1 "+5V" H 3100 4190 50  0000 C CNN
F 2 "" H 3100 4050 50  0001 C CNN
F 3 "" H 3100 4050 50  0001 C CNN
	1    3100 4050
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG2
U 1 1 59CED650
P 3100 4050
F 0 "#FLG2" H 3100 4125 50  0001 C CNN
F 1 "PWR_FLAG" H 3100 4200 50  0000 C CNN
F 2 "" H 3100 4050 50  0001 C CNN
F 3 "" H 3100 4050 50  0001 C CNN
	1    3100 4050
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR17
U 1 1 59CEDA6C
P 3450 4050
F 0 "#PWR17" H 3450 3800 50  0001 C CNN
F 1 "GND" H 3450 3900 50  0000 C CNN
F 2 "" H 3450 4050 50  0001 C CNN
F 3 "" H 3450 4050 50  0001 C CNN
	1    3450 4050
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG3
U 1 1 59CEDB0A
P 3450 4050
F 0 "#FLG3" H 3450 4125 50  0001 C CNN
F 1 "PWR_FLAG" H 3450 4200 50  0000 C CNN
F 2 "" H 3450 4050 50  0001 C CNN
F 3 "" H 3450 4050 50  0001 C CNN
	1    3450 4050
	1    0    0    -1  
$EndComp
Text GLabel 1000 4050 1    60   Input ~ 0
20V
$Comp
L PWR_FLAG #FLG1
U 1 1 59CEF568
P 2650 4100
F 0 "#FLG1" H 2650 4175 50  0001 C CNN
F 1 "PWR_FLAG" H 2650 4250 50  0000 C CNN
F 2 "" H 2650 4100 50  0001 C CNN
F 3 "" H 2650 4100 50  0001 C CNN
	1    2650 4100
	-1   0    0    1   
$EndComp
Text Label 1600 7100 1    60   ~ 0
V_ENVLP
Wire Notes Line
	10400 6200 10400 2800
Wire Notes Line
	5000 6200 10400 6200
Wire Wire Line
	6250 3450 6600 3450
Wire Wire Line
	5050 1500 6650 1500
Wire Notes Line
	8300 2500 9600 2500
Wire Notes Line
	8300 900  8300 2500
Wire Notes Line
	9600 2500 9600 900 
Wire Notes Line
	9600 900  8300 900 
Wire Notes Line
	5400 700  5400 2500
Wire Notes Line
	6500 2350 6500 950 
Wire Notes Line
	8100 2350 6500 2350
Wire Notes Line
	8100 950  8100 2350
Wire Notes Line
	6500 950  8100 950 
Connection ~ 5900 1500
Wire Wire Line
	5900 1200 5900 1600
Connection ~ 7800 1500
Wire Wire Line
	7800 1550 7800 1500
Wire Wire Line
	7550 1500 8450 1500
Connection ~ 7800 2000
Wire Wire Line
	7800 2000 7800 2050
Wire Wire Line
	7900 2000 7900 1950
Wire Wire Line
	7700 2000 7900 2000
Wire Wire Line
	7700 1950 7700 2000
Connection ~ 6600 3650
Wire Wire Line
	6600 3450 6600 3650
Connection ~ 6600 4150
Wire Wire Line
	6600 3850 6600 3950
Wire Wire Line
	8750 1500 9200 1500
Connection ~ 6500 5650
Wire Wire Line
	6500 5550 6500 5650
Connection ~ 9200 1350
Wire Wire Line
	9150 1350 9200 1350
Connection ~ 3250 7100
Wire Wire Line
	3250 7100 3250 7200
Connection ~ 7800 5650
Wire Wire Line
	8650 4650 8600 4650
Wire Wire Line
	8650 4400 8600 4400
Connection ~ 8250 4650
Wire Wire Line
	8300 4650 8250 4650
Connection ~ 8250 4400
Wire Wire Line
	8300 4400 8250 4400
Wire Wire Line
	8950 4250 8950 4400
Wire Wire Line
	9150 4250 8950 4250
Wire Wire Line
	8950 4650 9150 4650
Wire Wire Line
	8250 4600 8250 4750
Wire Wire Line
	7950 4600 7950 4750
Wire Wire Line
	8250 4300 8250 4450
Connection ~ 7950 4650
Wire Wire Line
	7750 4650 7950 4650
Connection ~ 7950 4400
Wire Wire Line
	7950 4300 7950 4450
Wire Wire Line
	7750 4400 7950 4400
Wire Wire Line
	5650 3450 5550 3450
Connection ~ 6350 3450
Wire Wire Line
	5950 3450 6050 3450
Wire Wire Line
	6600 3650 6800 3650
Connection ~ 5750 3900
Wire Wire Line
	5650 3900 6800 3900
Wire Wire Line
	7750 5650 8300 5650
Wire Wire Line
	6800 5400 6750 5400
Wire Wire Line
	8750 3050 8750 3100
Wire Wire Line
	7850 3900 7750 3900
Wire Wire Line
	7850 3650 7750 3650
Wire Wire Line
	7750 5400 7800 5400
Connection ~ 6700 5650
Wire Wire Line
	6400 5650 6800 5650
Wire Wire Line
	6100 5150 6100 4800
Wire Wire Line
	6800 5150 6100 5150
Wire Wire Line
	6100 4150 6100 4500
Wire Wire Line
	6100 4150 6800 4150
Wire Wire Line
	6450 4900 6450 4800
Wire Wire Line
	6800 4900 6450 4900
Wire Wire Line
	6450 4400 6450 4500
Wire Wire Line
	6800 4400 6450 4400
Wire Wire Line
	6800 4650 6750 4650
Wire Wire Line
	7800 4150 7750 4150
Wire Wire Line
	7800 3400 7750 3400
Wire Notes Line
	3850 7800 3850 6000
Wire Notes Line
	850  7800 3850 7800
Wire Notes Line
	850  6000 850  7800
Wire Notes Line
	3850 6000 850  6000
Wire Wire Line
	3100 6150 3100 6200
Wire Wire Line
	3400 6150 3100 6150
Wire Wire Line
	1650 6500 1950 6500
Wire Wire Line
	2900 6500 3100 6500
Connection ~ 3100 7100
Wire Wire Line
	2900 7100 3450 7100
Wire Wire Line
	2900 6800 3100 6800
Connection ~ 9200 1500
Connection ~ 8900 1500
Connection ~ 8900 1600
Wire Wire Line
	8900 1500 8900 1600
Connection ~ 8900 2100
Wire Wire Line
	8900 2200 8900 2100
Wire Wire Line
	9100 2100 9100 2000
Wire Wire Line
	8800 2100 9100 2100
Wire Wire Line
	8800 2000 8800 2100
Wire Wire Line
	9100 1600 9100 1700
Wire Wire Line
	8800 1600 9100 1600
Wire Wire Line
	8800 1700 8800 1600
Wire Wire Line
	6800 3400 6700 3400
Wire Wire Line
	8750 3400 8750 3500
Wire Wire Line
	8750 3450 8850 3450
Connection ~ 8750 3450
Wire Wire Line
	1450 7100 1700 7100
Connection ~ 1600 7100
Wire Wire Line
	1950 7100 1900 7100
Wire Wire Line
	1700 2850 1650 2850
Connection ~ 1700 2850
Wire Wire Line
	1700 2950 1650 2950
Connection ~ 1700 2950
Wire Wire Line
	1700 3050 1650 3050
Connection ~ 1700 3050
Wire Notes Line
	5000 2800 5000 6200
Wire Notes Line
	10400 2800 5000 2800
Wire Wire Line
	1700 2750 1700 3100
Wire Wire Line
	3750 1000 4100 1000
Wire Wire Line
	3750 1000 3750 1300
Wire Wire Line
	4650 1000 4650 1450
Wire Wire Line
	4650 1750 4650 1850
Wire Wire Line
	3750 1700 3750 2400
Wire Wire Line
	4650 2400 4650 2150
Wire Wire Line
	5050 1000 5050 1600
Connection ~ 4650 1000
Wire Wire Line
	5050 2400 5050 1900
Connection ~ 4650 2400
Connection ~ 5050 1000
Connection ~ 5050 2400
Wire Wire Line
	4300 2400 4300 2500
Connection ~ 4300 2400
Wire Wire Line
	3450 1500 3300 1500
Wire Wire Line
	3300 1500 3300 2000
Wire Wire Line
	1650 2750 1700 2750
Wire Wire Line
	4400 1000 5050 1000
Wire Wire Line
	3750 2400 5050 2400
Wire Wire Line
	3150 1000 3450 1000
Connection ~ 5050 1500
Wire Wire Line
	9200 1350 9200 1500
Wire Notes Line
	2850 700  2850 2500
Wire Wire Line
	1600 7300 1600 7100
Text Notes 1050 800  0    60   ~ 0
Holes for Mounting screws
Text Label 5900 1600 3    60   ~ 0
Vpiezo
Wire Wire Line
	3300 1050 3300 1000
Connection ~ 3300 1000
$Comp
L C_Small C3
U 1 1 59CE9F4E
P 3300 1150
F 0 "C3" H 3310 1220 50  0000 L CNN
F 1 "0.1u" H 3310 1070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3300 1150 50  0001 C CNN
F 3 "" H 3300 1150 50  0001 C CNN
	1    3300 1150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR16
U 1 1 59CEA24B
P 3300 1250
F 0 "#PWR16" H 3300 1000 50  0001 C CNN
F 1 "GND" H 3300 1100 50  0000 C CNN
F 2 "" H 3300 1250 50  0001 C CNN
F 3 "" H 3300 1250 50  0001 C CNN
	1    3300 1250
	1    0    0    -1  
$EndComp
Wire Notes Line
	2850 2500 5400 2500
Wire Notes Line
	2850 700  5400 700 
$Comp
L C C1
U 1 1 59CEB4BB
P 1000 4200
F 0 "C1" H 1025 4300 50  0000 L CNN
F 1 "0.1u" H 1025 4100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1038 4050 50  0001 C CNN
F 3 "" H 1000 4200 50  0001 C CNN
	1    1000 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 59CEBB90
P 1000 4350
F 0 "#PWR1" H 1000 4100 50  0001 C CNN
F 1 "GND" H 1000 4200 50  0000 C CNN
F 2 "" H 1000 4350 50  0001 C CNN
F 3 "" H 1000 4350 50  0001 C CNN
	1    1000 4350
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 59CEBD90
P 1500 4200
F 0 "C2" H 1525 4300 50  0000 L CNN
F 1 "0.1u" H 1525 4100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1538 4050 50  0001 C CNN
F 3 "" H 1500 4200 50  0001 C CNN
	1    1500 4200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR8
U 1 1 59CEBE43
P 1500 4050
F 0 "#PWR8" H 1500 3900 50  0001 C CNN
F 1 "+5V" H 1500 4190 50  0000 C CNN
F 2 "" H 1500 4050 50  0001 C CNN
F 3 "" H 1500 4050 50  0001 C CNN
	1    1500 4050
	1    0    0    -1  
$EndComp
Text Notes 850  3750 0    60   ~ 0
Decoupling Capacitors
$Comp
L GND #PWR9
U 1 1 59CEC429
P 1500 4350
F 0 "#PWR9" H 1500 4100 50  0001 C CNN
F 1 "GND" H 1500 4200 50  0000 C CNN
F 2 "" H 1500 4350 50  0001 C CNN
F 3 "" H 1500 4350 50  0001 C CNN
	1    1500 4350
	1    0    0    -1  
$EndComp
Text GLabel 2650 4100 1    60   Input ~ 0
20V
Text Notes 2800 3750 0    60   ~ 0
Power Flags
$EndSCHEMATC
