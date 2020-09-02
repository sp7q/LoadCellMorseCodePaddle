EESchema Schematic File Version 4
LIBS:TinkerShieldPaddle-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Analog_ADC:ADS1115IDGS U1
U 1 1 5F29876E
P 6100 4350
F 0 "U1" H 6100 5028 50  0000 C CNN
F 1 "ADS1115IDGS" H 6100 4937 50  0000 C CNN
F 2 "Package_SO:TSSOP-10_3x3mm_P0.5mm" H 6100 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ads1113.pdf" H 6050 3450 50  0001 C CNN
	1    6100 4350
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 5F298B3E
P 5600 4200
F 0 "C1" H 5715 4246 50  0000 L CNN
F 1 "1uF" H 5715 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5638 4050 50  0001 C CNN
F 3 "" H 5600 4200 50  0001 C CNN
	1    5600 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5F2E3A88
P 8050 4300
F 0 "R5" H 8120 4346 50  0000 L CNN
F 1 "10k" H 8120 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7980 4300 50  0001 C CNN
F 3 "" H 8050 4300 50  0001 C CNN
	1    8050 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5F2E3A99
P 8200 4300
F 0 "R6" H 8270 4346 50  0000 L CNN
F 1 "10k" H 8270 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8130 4300 50  0001 C CNN
F 3 "" H 8200 4300 50  0001 C CNN
	1    8200 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02 J1
U 1 1 5F2E3BC9
P 2300 3450
F 0 "J1" H 2380 3442 50  0000 L CNN
F 1 "Batt" H 2380 3351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2300 3450 50  0001 C CNN
F 3 "~" H 2300 3450 50  0001 C CNN
	1    2300 3450
	-1   0    0    1   
$EndComp
$Comp
L Connector:Audio-Jack-3 J3
U 1 1 5F2E40A7
P 6500 2350
F 0 "J3" V 6430 2537 50  0000 L CNN
F 1 "Audio-Jack-3" V 6521 2537 50  0000 L CNN
F 2 "Connector_Audio:Jack_3.5mm_1503_Horizontal" H 6750 2450 50  0001 C CNN
F 3 "~" H 6750 2450 50  0001 C CNN
	1    6500 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 3900 8300 3900
$Comp
L power:GND #PWR0101
U 1 1 5F2E4BCF
P 6100 2900
F 0 "#PWR0101" H 6100 2650 50  0001 C CNN
F 1 "GND" H 6105 2727 50  0000 C CNN
F 2 "" H 6100 2900 50  0001 C CNN
F 3 "" H 6100 2900 50  0001 C CNN
	1    6100 2900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F2E4C0F
P 7350 2900
F 0 "#PWR0102" H 7350 2650 50  0001 C CNN
F 1 "GND" H 7355 2727 50  0000 C CNN
F 2 "" H 7350 2900 50  0001 C CNN
F 3 "" H 7350 2900 50  0001 C CNN
	1    7350 2900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5F2E5112
P 6500 4350
F 0 "#PWR0104" H 6500 4100 50  0001 C CNN
F 1 "GND" H 6505 4177 50  0000 C CNN
F 2 "" H 6500 4350 50  0001 C CNN
F 3 "" H 6500 4350 50  0001 C CNN
	1    6500 4350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5F2E5152
P 6300 3300
F 0 "#PWR0105" H 6300 3050 50  0001 C CNN
F 1 "GND" H 6305 3127 50  0000 C CNN
F 2 "" H 6300 3300 50  0001 C CNN
F 3 "" H 6300 3300 50  0001 C CNN
	1    6300 3300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5F2E51A1
P 6400 2150
F 0 "#PWR0106" H 6400 1900 50  0001 C CNN
F 1 "GND" H 6405 1977 50  0000 C CNN
F 2 "" H 6400 2150 50  0001 C CNN
F 3 "" H 6400 2150 50  0001 C CNN
	1    6400 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 3800 8200 3800
Wire Wire Line
	8300 4450 8200 4450
Connection ~ 8200 4450
Wire Wire Line
	8200 4450 8050 4450
Connection ~ 8200 3800
Connection ~ 8050 3600
Wire Wire Line
	8050 3600 8600 3600
Wire Wire Line
	6100 3950 6100 3800
Wire Wire Line
	6200 3600 6200 3950
Wire Wire Line
	6300 3950 6300 3300
Wire Wire Line
	5600 4350 5600 4800
Wire Wire Line
	8300 4800 8300 4450
$Comp
L power:GND #PWR0108
U 1 1 5F2F45FD
P 5600 4050
F 0 "#PWR0108" H 5600 3800 50  0001 C CNN
F 1 "GND" V 5605 3922 50  0000 R CNN
F 2 "" H 5600 4050 50  0001 C CNN
F 3 "" H 5600 4050 50  0001 C CNN
	1    5600 4050
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:2N7002 Q1
U 1 1 5F2F8466
P 5900 3000
F 0 "Q1" V 6243 3000 50  0000 C CNN
F 1 "2N7002" V 6152 3000 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6100 2925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 5900 3000 50  0001 L CNN
	1    5900 3000
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:2N7002 Q2
U 1 1 5F2F924C
P 7150 3000
F 0 "Q2" H 7355 3046 50  0000 L CNN
F 1 "2N7002" H 7355 2955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7350 2925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 7150 3000 50  0001 L CNN
	1    7150 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7250 4750 7250 5050
Wire Wire Line
	7350 4750 7350 5100
Wire Wire Line
	6100 3800 7350 3800
Wire Wire Line
	6200 3600 7450 3600
$Comp
L power:GND #PWR0107
U 1 1 5F2F7C88
P 7750 4350
F 0 "#PWR0107" H 7750 4100 50  0001 C CNN
F 1 "GND" H 7755 4177 50  0000 C CNN
F 2 "" H 7750 4350 50  0001 C CNN
F 3 "" H 7750 4350 50  0001 C CNN
	1    7750 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6850 4350 6850 4800
Connection ~ 6850 4800
Wire Wire Line
	6850 4800 8300 4800
$Comp
L Analog_ADC:ADS1115IDGS U3
U 1 1 5F2F0A68
P 7350 4350
F 0 "U3" H 7350 5028 50  0000 C CNN
F 1 "ADS1115IDGS" H 7350 4937 50  0000 C CNN
F 2 "Package_SO:TSSOP-10_3x3mm_P0.5mm" H 7350 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ads1113.pdf" H 7300 3450 50  0001 C CNN
	1    7350 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7350 3950 7350 3800
Connection ~ 7350 3800
Wire Wire Line
	7350 3800 8200 3800
Wire Wire Line
	7450 3950 7450 3600
Connection ~ 7450 3600
Wire Wire Line
	7450 3600 8050 3600
Connection ~ 8300 4450
Wire Wire Line
	8300 3900 8300 3950
Wire Wire Line
	8050 3600 8050 4150
Wire Wire Line
	8200 3800 8200 4150
Wire Wire Line
	7550 3950 8300 3950
Connection ~ 8300 3950
Wire Wire Line
	8300 3950 8300 4450
Wire Wire Line
	6500 2550 5700 2550
Wire Wire Line
	5700 2550 5700 2900
Wire Wire Line
	6600 2550 6950 2550
Wire Wire Line
	6950 2550 6950 2900
$Comp
L Battery_Management:MCP73831-2-OT U2
U 1 1 5F306234
P 3600 3500
F 0 "U2" H 3600 3978 50  0000 C CNN
F 1 "MCP73831-2-OT" H 3600 3887 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 3650 3250 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 3450 3450 50  0001 C CNN
	1    3600 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5F30632F
P 4000 3950
F 0 "R7" H 4070 3996 50  0000 L CNN
F 1 "1k" H 4070 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3930 3950 50  0001 C CNN
F 3 "" H 4000 3950 50  0001 C CNN
	1    4000 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5F306C3C
P 4000 4300
F 0 "R8" H 4070 4346 50  0000 L CNN
F 1 "1k" H 4070 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3930 4300 50  0001 C CNN
F 3 "" H 4000 4300 50  0001 C CNN
	1    4000 4300
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5F307E37
P 5000 3650
F 0 "C3" H 5115 3696 50  0000 L CNN
F 1 "1uF" H 5115 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5038 3500 50  0001 C CNN
F 3 "" H 5000 3650 50  0001 C CNN
	1    5000 3650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5F308759
P 3500 2800
F 0 "R2" H 3570 2846 50  0000 L CNN
F 1 "10k" H 3570 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3430 2800 50  0001 C CNN
F 3 "" H 3500 2800 50  0001 C CNN
	1    3500 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5F30905C
P 3900 2800
F 0 "R4" H 3970 2846 50  0000 L CNN
F 1 "2.5k" H 3970 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3830 2800 50  0001 C CNN
F 3 "" H 3900 2800 50  0001 C CNN
	1    3900 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 5F30A521
P 4300 4300
F 0 "D2" H 4292 4045 50  0000 C CNN
F 1 "LED GREEN" H 4292 4136 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4300 4300 50  0001 C CNN
F 3 "~" H 4300 4300 50  0001 C CNN
	1    4300 4300
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D1
U 1 1 5F30A597
P 4300 3950
F 0 "D1" H 4291 4166 50  0000 C CNN
F 1 "LED RED" H 4291 4075 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4300 3950 50  0001 C CNN
F 3 "~" H 4300 3950 50  0001 C CNN
	1    4300 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3800 4050 3800
Connection ~ 5000 3500
$Comp
L power:GND #PWR0109
U 1 1 5F30FC45
P 5000 3800
F 0 "#PWR0109" H 5000 3550 50  0001 C CNN
F 1 "GND" H 5005 3627 50  0000 C CNN
F 2 "" H 5000 3800 50  0001 C CNN
F 3 "" H 5000 3800 50  0001 C CNN
	1    5000 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5F31066B
P 2500 4250
F 0 "#PWR0110" H 2500 4000 50  0001 C CNN
F 1 "GND" H 2505 4077 50  0000 C CNN
F 2 "" H 2500 4250 50  0001 C CNN
F 3 "" H 2500 4250 50  0001 C CNN
	1    2500 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3900 3500 4450 3500
$Comp
L power:GND #PWR0111
U 1 1 5F318ADA
P 3300 3500
F 0 "#PWR0111" H 3300 3250 50  0001 C CNN
F 1 "GND" H 3305 3327 50  0000 C CNN
F 2 "" H 3300 3500 50  0001 C CNN
F 3 "" H 3300 3500 50  0001 C CNN
	1    3300 3500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5F31C773
P 3050 4450
F 0 "#PWR0112" H 3050 4200 50  0001 C CNN
F 1 "GND" H 3055 4277 50  0000 C CNN
F 2 "" H 3050 4450 50  0001 C CNN
F 3 "" H 3050 4450 50  0001 C CNN
	1    3050 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4150 3700 3900
$Comp
L power:GND #PWR0113
U 1 1 5F327A79
P 4450 4300
F 0 "#PWR0113" H 4450 4050 50  0001 C CNN
F 1 "GND" H 4455 4127 50  0000 C CNN
F 2 "" H 4450 4300 50  0001 C CNN
F 3 "" H 4450 4300 50  0001 C CNN
	1    4450 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3500 3950 3500 3900
Wire Wire Line
	3850 4300 3500 4300
Connection ~ 3500 3950
Wire Wire Line
	3500 3950 3850 3950
Wire Wire Line
	4450 3950 4450 3500
Connection ~ 4450 3500
Wire Wire Line
	4450 3500 5000 3500
Wire Wire Line
	3500 3100 3500 3050
$Comp
L power:GND #PWR0114
U 1 1 5F330689
P 2500 3450
F 0 "#PWR0114" H 2500 3200 50  0001 C CNN
F 1 "GND" H 2505 3277 50  0000 C CNN
F 2 "" H 2500 3450 50  0001 C CNN
F 3 "" H 2500 3450 50  0001 C CNN
	1    2500 3450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5F331735
P 3700 2650
F 0 "#PWR0115" H 3700 2400 50  0001 C CNN
F 1 "GND" H 3705 2477 50  0000 C CNN
F 2 "" H 3700 2650 50  0001 C CNN
F 3 "" H 3700 2650 50  0001 C CNN
	1    3700 2650
	-1   0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 5F30754C
P 3050 4300
F 0 "C2" H 3165 4346 50  0000 L CNN
F 1 "1uF" H 3165 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3088 4150 50  0001 C CNN
F 3 "" H 3050 4300 50  0001 C CNN
	1    3050 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 3350 2750 3350
Wire Wire Line
	2750 4150 3050 4150
Connection ~ 3050 4150
Wire Wire Line
	3050 4150 3700 4150
$Comp
L Jumper:Jumper_2_Open JP1
U 1 1 5F33ED24
P 3700 3050
F 0 "JP1" H 3700 3285 50  0000 C CNN
F 1 "Jumper_2_Open" H 3700 3194 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3700 3050 50  0001 C CNN
F 3 "~" H 3700 3050 50  0001 C CNN
	1    3700 3050
	1    0    0    -1  
$EndComp
Connection ~ 3500 3050
Wire Wire Line
	3500 3050 3500 2950
Wire Wire Line
	3900 3050 3900 2950
Connection ~ 3700 2650
Wire Wire Line
	3700 2650 3900 2650
Wire Wire Line
	3500 2650 3700 2650
$Comp
L Connector:Conn_01x02 J4
U 1 1 5F3471FC
P 2300 4250
F 0 "J4" H 2380 4242 50  0000 L CNN
F 1 "Conn_01x02" H 2380 4151 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2300 4250 50  0001 C CNN
F 3 "~" H 2300 4250 50  0001 C CNN
	1    2300 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	6100 4750 6100 5500
Wire Wire Line
	6000 4750 6000 5500
Wire Wire Line
	2500 4150 2750 4150
Connection ~ 2750 4150
Wire Wire Line
	6200 5050 6200 5500
Wire Wire Line
	6200 5050 7250 5050
Wire Wire Line
	6300 5100 6300 5500
Wire Wire Line
	6300 5100 7350 5100
$Comp
L Device:C C4
U 1 1 5F35241C
P 6850 4200
F 0 "C4" H 6965 4246 50  0000 L CNN
F 1 "1uF" H 6965 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6888 4050 50  0001 C CNN
F 3 "" H 6850 4200 50  0001 C CNN
	1    6850 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5F352423
P 6850 4050
F 0 "#PWR0103" H 6850 3800 50  0001 C CNN
F 1 "GND" V 6855 3922 50  0000 R CNN
F 2 "" H 6850 4050 50  0001 C CNN
F 3 "" H 6850 4050 50  0001 C CNN
	1    6850 4050
	-1   0    0    1   
$EndComp
Connection ~ 6850 4350
Connection ~ 5600 4350
$Comp
L Connector:Conn_01x04 J5
U 1 1 5F360404
P 6200 5700
F 0 "J5" V 6073 5880 50  0000 L CNN
F 1 "Conn_01x04" V 6164 5880 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6200 5700 50  0001 C CNN
F 3 "~" H 6200 5700 50  0001 C CNN
	1    6200 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 4800 6850 4800
$Comp
L power:GND #PWR0116
U 1 1 5F36B857
P 8600 4350
F 0 "#PWR0116" H 8600 4100 50  0001 C CNN
F 1 "GND" H 8605 4177 50  0000 C CNN
F 2 "" H 8600 4350 50  0001 C CNN
F 3 "" H 8600 4350 50  0001 C CNN
	1    8600 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4250 8600 4350
Wire Wire Line
	2750 3350 2750 4150
Wire Wire Line
	5000 3500 8600 3500
Wire Wire Line
	5900 3200 5900 3950
Wire Wire Line
	7150 3950 7150 3200
$Comp
L Connector:Conn_01x04 J6
U 1 1 5F3460B5
P 8800 4150
F 0 "J6" H 8880 4142 50  0000 L CNN
F 1 "Conn_01x04" H 8880 4051 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8800 4150 50  0001 C CNN
F 3 "~" H 8800 4150 50  0001 C CNN
	1    8800 4150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05 J2
U 1 1 5F346292
P 8800 3700
F 0 "J2" H 8880 3742 50  0000 L CNN
F 1 "Conn_01x05" H 8880 3651 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 8800 3700 50  0001 C CNN
F 3 "~" H 8800 3700 50  0001 C CNN
	1    8800 3700
	1    0    0    -1  
$EndComp
Connection ~ 8600 4350
Wire Wire Line
	8600 4150 8600 4050
Connection ~ 8600 3900
Connection ~ 8600 4050
Wire Wire Line
	8600 4050 8600 3900
Wire Wire Line
	3500 3950 3500 4300
$EndSCHEMATC
