EESchema Schematic File Version 4
LIBS:dsp2_breakout-cache
EELAYER 29 0
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
L Connector_Generic:Conn_02x11_Odd_Even J5
U 1 1 61D49D41
P 3700 6000
F 0 "J5" H 3750 6717 50  0000 C CNN
F 1 "Conn_02x11_Odd_Even" H 3750 6626 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x11_P2.54mm_Vertical" H 3700 6000 50  0001 C CNN
F 3 "~" H 3700 6000 50  0001 C CNN
	1    3700 6000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x09 J6
U 1 1 61D4C309
P 3700 7150
F 0 "J6" H 3780 7192 50  0000 L CNN
F 1 "Conn_01x09" H 3780 7101 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x09_P2.54mm_Vertical" H 3700 7150 50  0001 C CNN
F 3 "~" H 3700 7150 50  0001 C CNN
	1    3700 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5600 3150 5600
Text Label 3150 5600 0    50   ~ 0
~RESET
Text Label 3150 5500 0    50   ~ 0
3V3
Text Label 2900 5800 0    50   ~ 0
MP0_IN_SDAT1
Text Label 2900 5700 0    50   ~ 0
MP5_INPUT_BCLK
Text Label 2900 6000 0    50   ~ 0
MP11_OUT_SCLK
Text Label 2900 5900 0    50   ~ 0
MP6_OUT_SDAT0
Wire Wire Line
	3500 6200 3150 6200
Text Label 3150 6200 0    50   ~ 0
SCL
Text Label 2900 6400 0    50   ~ 0
MCLK_EXT_UNUSED
Text Label 2900 6300 0    50   ~ 0
MP8_OUT_SDAT2
Wire Wire Line
	3500 6750 3150 6750
Text Label 3150 6750 0    50   ~ 0
5V
Wire Wire Line
	3500 7050 3150 7050
Text Label 3150 7050 0    50   ~ 0
SCL
Wire Wire Line
	3500 6950 3150 6950
Text Label 3150 6950 0    50   ~ 0
SDA
Wire Wire Line
	3500 7250 3150 7250
Text Label 3150 7250 0    50   ~ 0
SELFBOOT
Wire Wire Line
	3500 7150 3150 7150
Text Label 3150 7150 0    50   ~ 0
WP
Wire Wire Line
	3500 7350 3150 7350
Text Label 3150 7350 0    50   ~ 0
~DSP_RESET
$Comp
L power:GND #PWR034
U 1 1 61D5CC59
P 3500 6850
F 0 "#PWR034" H 3500 6600 50  0001 C CNN
F 1 "GND" V 3505 6722 50  0000 R CNN
F 2 "" H 3500 6850 50  0001 C CNN
F 3 "" H 3500 6850 50  0001 C CNN
	1    3500 6850
	0    1    1    0   
$EndComp
NoConn ~ 3500 7550
NoConn ~ 3500 7450
$Comp
L power:GND #PWR036
U 1 1 61D5E787
P 4000 6500
F 0 "#PWR036" H 4000 6250 50  0001 C CNN
F 1 "GND" V 4005 6372 50  0000 R CNN
F 2 "" H 4000 6500 50  0001 C CNN
F 3 "" H 4000 6500 50  0001 C CNN
	1    4000 6500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR035
U 1 1 61D5F32F
P 4000 6400
F 0 "#PWR035" H 4000 6150 50  0001 C CNN
F 1 "GND" V 4005 6272 50  0000 R CNN
F 2 "" H 4000 6400 50  0001 C CNN
F 3 "" H 4000 6400 50  0001 C CNN
	1    4000 6400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR033
U 1 1 61D5F980
P 3500 6500
F 0 "#PWR033" H 3500 6250 50  0001 C CNN
F 1 "GND" V 3505 6372 50  0000 R CNN
F 2 "" H 3500 6500 50  0001 C CNN
F 3 "" H 3500 6500 50  0001 C CNN
	1    3500 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 5500 3150 5500
Text Label 4000 5500 0    50   ~ 0
3V3
Text Label 4000 5600 0    50   ~ 0
MP4_IN_LRCLK
Text Label 4000 5700 0    50   ~ 0
MP1_IN_SDAT0
Text Label 4000 5900 0    50   ~ 0
MP10_OUT_LRCLK
Text Label 4000 6000 0    50   ~ 0
SDA
Text Label 4000 6100 0    50   ~ 0
MP9_OUT_SDAT3
Text Label 4000 6200 0    50   ~ 0
MP3_IN_SDAT3
Text Label 4050 6300 0    50   ~ 0
MP2_IN_SDAT2
NoConn ~ 3500 6100
NoConn ~ 3750 7800
Wire Wire Line
	2900 6000 3500 6000
Wire Wire Line
	2900 5700 3500 5700
Wire Wire Line
	2900 5900 3500 5900
NoConn ~ 4950 5750
NoConn ~ 4950 6050
NoConn ~ 4950 6150
Wire Wire Line
	5250 5350 5250 5150
Text Label 5250 5150 0    50   ~ 0
5V
Wire Wire Line
	5750 5850 6200 5850
Text Label 5850 5850 0    50   ~ 0
SCL
Wire Wire Line
	5750 5950 6200 5950
Text Label 5850 5950 0    50   ~ 0
SDA
Wire Wire Line
	5750 6250 6250 6250
Text Label 5800 6250 0    50   ~ 0
ENCODER1
Wire Wire Line
	5750 6350 6250 6350
Text Label 5800 6350 0    50   ~ 0
ENCODER2
Wire Wire Line
	5750 6450 6250 6450
Text Label 5850 6450 0    50   ~ 0
~DSP_RESET
$Comp
L Connector_Generic:Conn_01x05 J7
U 1 1 61D7C575
P 7700 5750
F 0 "J7" H 7780 5792 50  0000 L CNN
F 1 "Conn_01x05" H 7780 5701 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 7700 5750 50  0001 C CNN
F 3 "~" H 7700 5750 50  0001 C CNN
	1    7700 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 5650 7150 5650
Text Label 7150 5650 0    50   ~ 0
3V3
Wire Wire Line
	7500 5550 7150 5550
Text Label 7150 5550 0    50   ~ 0
GND
Wire Wire Line
	7500 5850 7150 5850
Text Label 7150 5850 0    50   ~ 0
ENCODER2
Wire Wire Line
	7500 5750 7150 5750
Text Label 7150 5750 0    50   ~ 0
SW
Wire Wire Line
	7500 5950 7150 5950
Text Label 7150 5950 0    50   ~ 0
ENCODER1
$Comp
L MCU_Module:WeMos_D1_mini U1
U 1 1 61D701DA
P 5350 6150
F 0 "U1" H 5350 5261 50  0000 C CNN
F 1 "WeMos_D1_mini" H 5350 5170 50  0000 C CNN
F 2 "Module:WEMOS_D1_mini_light" H 5350 5000 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H 3500 5000 50  0001 C CNN
	1    5350 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5350 5450 5100
$Comp
L Connector_Generic:Conn_01x04 J8
U 1 1 61D81817
P 7700 6250
F 0 "J8" H 7780 6242 50  0000 L CNN
F 1 "Conn_01x04" H 7780 6151 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7700 6250 50  0001 C CNN
F 3 "~" H 7700 6250 50  0001 C CNN
	1    7700 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 6150 7150 6150
Text Label 7150 6150 0    50   ~ 0
3V3
Wire Wire Line
	7500 6350 7150 6350
Wire Wire Line
	7500 6450 7150 6450
NoConn ~ 5450 5100
$Comp
L power:GND #PWR037
U 1 1 61D885B7
P 7500 6250
F 0 "#PWR037" H 7500 6000 50  0001 C CNN
F 1 "GND" V 7505 6122 50  0000 R CNN
F 2 "" H 7500 6250 50  0001 C CNN
F 3 "" H 7500 6250 50  0001 C CNN
	1    7500 6250
	0    1    1    0   
$EndComp
Text Label 7150 6350 0    50   ~ 0
SCL
Text Label 7150 6450 0    50   ~ 0
SDA
Text Notes 8450 5750 0    50   ~ 0
OPTICAL ENCODER
Text Notes 8450 6200 0    50   ~ 0
LCD
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J2
U 1 1 61D8CEF4
P 3700 3700
F 0 "J2" H 3750 4217 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 3750 4126 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x08_P2.54mm_Vertical" H 3700 3700 50  0001 C CNN
F 3 "~" H 3700 3700 50  0001 C CNN
	1    3700 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J3
U 1 1 61D994F7
P 3750 1900
F 0 "J3" H 3800 2417 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 3800 2326 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x08_P2.54mm_Vertical" H 3750 1900 50  0001 C CNN
F 3 "~" H 3750 1900 50  0001 C CNN
	1    3750 1900
	1    0    0    -1  
$EndComp
Text Label 3250 1600 0    50   ~ 0
5V
$Comp
L power:GND #PWR042
U 1 1 61F63B83
P 4050 1600
F 0 "#PWR042" H 4050 1350 50  0001 C CNN
F 1 "GND" V 4055 1472 50  0000 R CNN
F 2 "" H 4050 1600 50  0001 C CNN
F 3 "" H 4050 1600 50  0001 C CNN
	1    4050 1600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR043
U 1 1 61F63B8D
P 4050 1700
F 0 "#PWR043" H 4050 1450 50  0001 C CNN
F 1 "GND" V 4055 1572 50  0000 R CNN
F 2 "" H 4050 1700 50  0001 C CNN
F 3 "" H 4050 1700 50  0001 C CNN
	1    4050 1700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR044
U 1 1 61F63B97
P 4050 1800
F 0 "#PWR044" H 4050 1550 50  0001 C CNN
F 1 "GND" V 4055 1672 50  0000 R CNN
F 2 "" H 4050 1800 50  0001 C CNN
F 3 "" H 4050 1800 50  0001 C CNN
	1    4050 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR045
U 1 1 61F63BA1
P 4050 1900
F 0 "#PWR045" H 4050 1650 50  0001 C CNN
F 1 "GND" V 4055 1772 50  0000 R CNN
F 2 "" H 4050 1900 50  0001 C CNN
F 3 "" H 4050 1900 50  0001 C CNN
	1    4050 1900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR046
U 1 1 61F63BAB
P 4050 2000
F 0 "#PWR046" H 4050 1750 50  0001 C CNN
F 1 "GND" V 4055 1872 50  0000 R CNN
F 2 "" H 4050 2000 50  0001 C CNN
F 3 "" H 4050 2000 50  0001 C CNN
	1    4050 2000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR047
U 1 1 61F63BB5
P 4050 2100
F 0 "#PWR047" H 4050 1850 50  0001 C CNN
F 1 "GND" V 4055 1972 50  0000 R CNN
F 2 "" H 4050 2100 50  0001 C CNN
F 3 "" H 4050 2100 50  0001 C CNN
	1    4050 2100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR048
U 1 1 61F63BBF
P 4050 2200
F 0 "#PWR048" H 4050 1950 50  0001 C CNN
F 1 "GND" V 4055 2072 50  0000 R CNN
F 2 "" H 4050 2200 50  0001 C CNN
F 3 "" H 4050 2200 50  0001 C CNN
	1    4050 2200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR049
U 1 1 61F63BC9
P 4050 2300
F 0 "#PWR049" H 4050 2050 50  0001 C CNN
F 1 "GND" V 4055 2172 50  0000 R CNN
F 2 "" H 4050 2300 50  0001 C CNN
F 3 "" H 4050 2300 50  0001 C CNN
	1    4050 2300
	0    -1   -1   0   
$EndComp
Text Label 2950 2100 0    50   ~ 0
SDA
Text Label 2950 2200 0    50   ~ 0
SCL
Wire Wire Line
	3500 3400 3200 3400
Text Label 3200 3400 0    50   ~ 0
5V
$Comp
L power:GND #PWR019
U 1 1 62004B89
P 4000 3400
F 0 "#PWR019" H 4000 3150 50  0001 C CNN
F 1 "GND" V 4005 3272 50  0000 R CNN
F 2 "" H 4000 3400 50  0001 C CNN
F 3 "" H 4000 3400 50  0001 C CNN
	1    4000 3400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 62004B93
P 4000 3500
F 0 "#PWR020" H 4000 3250 50  0001 C CNN
F 1 "GND" V 4005 3372 50  0000 R CNN
F 2 "" H 4000 3500 50  0001 C CNN
F 3 "" H 4000 3500 50  0001 C CNN
	1    4000 3500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 62004B9D
P 4000 3600
F 0 "#PWR021" H 4000 3350 50  0001 C CNN
F 1 "GND" V 4005 3472 50  0000 R CNN
F 2 "" H 4000 3600 50  0001 C CNN
F 3 "" H 4000 3600 50  0001 C CNN
	1    4000 3600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR022
U 1 1 62004BA7
P 4000 3700
F 0 "#PWR022" H 4000 3450 50  0001 C CNN
F 1 "GND" V 4005 3572 50  0000 R CNN
F 2 "" H 4000 3700 50  0001 C CNN
F 3 "" H 4000 3700 50  0001 C CNN
	1    4000 3700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 62004BB1
P 4000 3800
F 0 "#PWR023" H 4000 3550 50  0001 C CNN
F 1 "GND" V 4005 3672 50  0000 R CNN
F 2 "" H 4000 3800 50  0001 C CNN
F 3 "" H 4000 3800 50  0001 C CNN
	1    4000 3800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR024
U 1 1 62004BBB
P 4000 3900
F 0 "#PWR024" H 4000 3650 50  0001 C CNN
F 1 "GND" V 4005 3772 50  0000 R CNN
F 2 "" H 4000 3900 50  0001 C CNN
F 3 "" H 4000 3900 50  0001 C CNN
	1    4000 3900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 62004BC5
P 4000 4000
F 0 "#PWR025" H 4000 3750 50  0001 C CNN
F 1 "GND" V 4005 3872 50  0000 R CNN
F 2 "" H 4000 4000 50  0001 C CNN
F 3 "" H 4000 4000 50  0001 C CNN
	1    4000 4000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR026
U 1 1 62004BCF
P 4000 4100
F 0 "#PWR026" H 4000 3850 50  0001 C CNN
F 1 "GND" V 4005 3972 50  0000 R CNN
F 2 "" H 4000 4100 50  0001 C CNN
F 3 "" H 4000 4100 50  0001 C CNN
	1    4000 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 3500 3500 3500
Wire Wire Line
	650  3450 1250 3450
Text Label 650  4150 0    50   ~ 0
MP10_OUT_LRCLK
Wire Wire Line
	650  3800 1250 3800
Text Label 2900 3900 0    50   ~ 0
SDA
Wire Wire Line
	650  4150 1250 4150
Text Label 2900 4000 0    50   ~ 0
SCL
Wire Wire Line
	2900 3900 3500 3900
Text Label 650  4500 0    50   ~ 0
MCLK_CHOSEN
Wire Wire Line
	2900 4000 3500 4000
Wire Wire Line
	650  4500 1250 4500
Text Label 650  3800 0    50   ~ 0
MP11_OUT_SCLK
$Comp
L dsp2_breakout_lib:SN74LVC125A U3
U 1 1 62004BE7
P 1550 4750
F 0 "U3" H 1725 6681 50  0000 C CNN
F 1 "SN74LVC125A" H 1725 6590 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 1550 4750 50  0001 C CNN
F 3 "" H 1550 4750 50  0001 C CNN
	1    1550 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 62004BF1
P 1250 4350
F 0 "#PWR016" H 1250 4100 50  0001 C CNN
F 1 "GND" V 1255 4222 50  0000 R CNN
F 2 "" H 1250 4350 50  0001 C CNN
F 3 "" H 1250 4350 50  0001 C CNN
	1    1250 4350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 62004BFB
P 1250 4000
F 0 "#PWR015" H 1250 3750 50  0001 C CNN
F 1 "GND" V 1255 3872 50  0000 R CNN
F 2 "" H 1250 4000 50  0001 C CNN
F 3 "" H 1250 4000 50  0001 C CNN
	1    1250 4000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 62004C05
P 1250 3650
F 0 "#PWR014" H 1250 3400 50  0001 C CNN
F 1 "GND" V 1255 3522 50  0000 R CNN
F 2 "" H 1250 3650 50  0001 C CNN
F 3 "" H 1250 3650 50  0001 C CNN
	1    1250 3650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 62004C0F
P 1250 3300
F 0 "#PWR013" H 1250 3050 50  0001 C CNN
F 1 "GND" V 1255 3172 50  0000 R CNN
F 2 "" H 1250 3300 50  0001 C CNN
F 3 "" H 1250 3300 50  0001 C CNN
	1    1250 3300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 62004C19
P 1900 4700
F 0 "#PWR018" H 1900 4450 50  0001 C CNN
F 1 "GND" H 1905 4527 50  0000 C CNN
F 2 "" H 1900 4700 50  0001 C CNN
F 3 "" H 1900 4700 50  0001 C CNN
	1    1900 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3000 1550 3000
Text Label 1550 3000 0    50   ~ 0
3V3
$Comp
L Device:R R5
U 1 1 62004C25
P 2350 3400
F 0 "R5" V 2143 3400 50  0000 C CNN
F 1 "22" V 2234 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2280 3400 50  0001 C CNN
F 3 "~" H 2350 3400 50  0001 C CNN
	1    2350 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 62004C2F
P 2350 3800
F 0 "R6" V 2143 3800 50  0000 C CNN
F 1 "22" V 2234 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2280 3800 50  0001 C CNN
F 3 "~" H 2350 3800 50  0001 C CNN
	1    2350 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 62004C39
P 2350 4150
F 0 "R7" V 2143 4150 50  0000 C CNN
F 1 "22" V 2234 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2280 4150 50  0001 C CNN
F 3 "~" H 2350 4150 50  0001 C CNN
	1    2350 4150
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 62004C43
P 2350 4500
F 0 "R8" V 2143 4500 50  0000 C CNN
F 1 "22" V 2234 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2280 4500 50  0001 C CNN
F 3 "~" H 2350 4500 50  0001 C CNN
	1    2350 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 4150 2750 4150
Wire Wire Line
	2750 4150 2750 3800
Wire Wire Line
	2750 3800 3500 3800
Wire Wire Line
	2500 3800 2650 3800
Wire Wire Line
	2650 3800 2650 3700
Text Label 2950 2300 0    50   ~ 0
MCLK_IN
$Comp
L Connector_Generic:Conn_01x03 J9
U 1 1 61D5EDAC
P 6800 3400
F 0 "J9" H 6880 3442 50  0000 L CNN
F 1 "Conn_01x03" H 6880 3351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6800 3400 50  0001 C CNN
F 3 "~" H 6800 3400 50  0001 C CNN
	1    6800 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3400 6100 3400
Text Label 6100 3400 0    50   ~ 0
MCLK_CHOSEN
$Comp
L Oscillator:SG-615 X1
U 1 1 61D67932
P 5550 3300
F 0 "X1" H 5894 3346 50  0000 L CNN
F 1 "SG-615" H 5894 3255 50  0000 L CNN
F 2 "cheapskate_amp_footprints:7.0x5.0_SMD_OSCILLATOR_HCOMS_TTLCUSTOM" H 6250 2950 50  0001 C CNN
F 3 "https://support.epson.biz/td/api/doc_check.php?mode=dl&lang=en&Parts=SG-51P" H 5450 3300 50  0001 C CNN
	1    5550 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3300 5950 3300
$Comp
L power:GND #PWR0101
U 1 1 61D73570
P 5550 3600
F 0 "#PWR0101" H 5550 3350 50  0001 C CNN
F 1 "GND" H 5555 3427 50  0000 C CNN
F 2 "" H 5550 3600 50  0001 C CNN
F 3 "" H 5550 3600 50  0001 C CNN
	1    5550 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3300 4900 3300
Text Label 5000 3300 0    50   ~ 0
3V3
Wire Wire Line
	5550 2650 5550 3000
Text Label 5550 2900 1    50   ~ 0
3V3
Wire Wire Line
	6600 3500 6100 3500
Text Label 6100 3500 0    50   ~ 0
MCLK_IN
Text Label 6100 3300 0    50   ~ 0
MCLK_GEN
Wire Wire Line
	2900 5800 3500 5800
Wire Wire Line
	4000 5800 4600 5800
Text Label 4000 5800 0    50   ~ 0
MP7_OUT_SDAT1
Wire Wire Line
	2900 6300 3500 6300
Wire Wire Line
	4000 6300 4600 6300
Wire Wire Line
	4000 6200 4600 6200
Wire Wire Line
	4000 6100 4600 6100
Wire Wire Line
	4000 6000 4600 6000
Wire Wire Line
	4000 5900 4600 5900
Wire Wire Line
	4000 5700 4600 5700
Wire Wire Line
	4000 5600 4600 5600
Wire Wire Line
	4000 5500 4600 5500
Wire Wire Line
	2900 6400 3500 6400
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 61DD1CAC
P 1500 6850
F 0 "J4" V 1372 7030 50  0000 L CNN
F 1 "Conn_01x03" V 1463 7030 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 1500 6850 50  0001 C CNN
F 3 "~" H 1500 6850 50  0001 C CNN
	1    1500 6850
	0    1    1    0   
$EndComp
NoConn ~ 1400 6650
NoConn ~ 1600 6650
Wire Wire Line
	1500 6650 1500 6450
Text Label 1500 6550 0    50   ~ 0
MCLK_CHOSEN
Text Label 2950 2000 0    50   ~ 0
MP4_IN_LRCLK
Text Label 2900 1900 0    50   ~ 0
MP5_INPUT_BCLK
Wire Wire Line
	2900 1900 3550 1900
Wire Wire Line
	2900 1800 3550 1800
Wire Wire Line
	2900 1700 3550 1700
Wire Wire Line
	2900 1600 3550 1600
Wire Wire Line
	2900 2000 3550 2000
Wire Wire Line
	2900 2100 3550 2100
Wire Wire Line
	2900 2200 3550 2200
Wire Wire Line
	3550 2300 2900 2300
NoConn ~ 2900 1800
Text Label 650  3450 0    50   ~ 0
MP6_OUT_SDAT0
Connection ~ 5950 3300
Wire Wire Line
	5950 3300 6600 3300
Wire Wire Line
	5950 3300 5950 3650
$Comp
L Device:C C5
U 1 1 61E53E39
P 5950 3800
F 0 "C5" H 6065 3846 50  0000 L CNN
F 1 "15pF" H 6065 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5988 3650 50  0001 C CNN
F 3 "~" H 5950 3800 50  0001 C CNN
	1    5950 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 61E534E8
P 5950 3950
F 0 "#PWR0102" H 5950 3700 50  0001 C CNN
F 1 "GND" H 5955 3777 50  0000 C CNN
F 2 "" H 5950 3950 50  0001 C CNN
F 3 "" H 5950 3950 50  0001 C CNN
	1    5950 3950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J1
U 1 1 61ED3389
P 3750 4650
F 0 "J1" H 3800 5167 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 3800 5076 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x08_P2.54mm_Vertical" H 3750 4650 50  0001 C CNN
F 3 "~" H 3750 4650 50  0001 C CNN
	1    3750 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 61ED3393
P 4050 4350
F 0 "#PWR01" H 4050 4100 50  0001 C CNN
F 1 "GND" V 4055 4222 50  0000 R CNN
F 2 "" H 4050 4350 50  0001 C CNN
F 3 "" H 4050 4350 50  0001 C CNN
	1    4050 4350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 61ED339D
P 4050 4450
F 0 "#PWR02" H 4050 4200 50  0001 C CNN
F 1 "GND" V 4055 4322 50  0000 R CNN
F 2 "" H 4050 4450 50  0001 C CNN
F 3 "" H 4050 4450 50  0001 C CNN
	1    4050 4450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 61ED33A7
P 4050 4550
F 0 "#PWR03" H 4050 4300 50  0001 C CNN
F 1 "GND" V 4055 4422 50  0000 R CNN
F 2 "" H 4050 4550 50  0001 C CNN
F 3 "" H 4050 4550 50  0001 C CNN
	1    4050 4550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 61ED33B1
P 4050 4650
F 0 "#PWR04" H 4050 4400 50  0001 C CNN
F 1 "GND" V 4055 4522 50  0000 R CNN
F 2 "" H 4050 4650 50  0001 C CNN
F 3 "" H 4050 4650 50  0001 C CNN
	1    4050 4650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 61ED33BB
P 4050 4750
F 0 "#PWR05" H 4050 4500 50  0001 C CNN
F 1 "GND" V 4055 4622 50  0000 R CNN
F 2 "" H 4050 4750 50  0001 C CNN
F 3 "" H 4050 4750 50  0001 C CNN
	1    4050 4750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 61ED33C5
P 4050 4850
F 0 "#PWR06" H 4050 4600 50  0001 C CNN
F 1 "GND" V 4055 4722 50  0000 R CNN
F 2 "" H 4050 4850 50  0001 C CNN
F 3 "" H 4050 4850 50  0001 C CNN
	1    4050 4850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 61ED33CF
P 4050 4950
F 0 "#PWR07" H 4050 4700 50  0001 C CNN
F 1 "GND" V 4055 4822 50  0000 R CNN
F 2 "" H 4050 4950 50  0001 C CNN
F 3 "" H 4050 4950 50  0001 C CNN
	1    4050 4950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 61ED33D9
P 4050 5050
F 0 "#PWR08" H 4050 4800 50  0001 C CNN
F 1 "GND" V 4055 4922 50  0000 R CNN
F 2 "" H 4050 5050 50  0001 C CNN
F 3 "" H 4050 5050 50  0001 C CNN
	1    4050 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3500 4100 2900 4100
Wire Wire Line
	2900 4100 2900 4500
Wire Wire Line
	3550 4350 3250 4350
Text Label 3250 4350 0    50   ~ 0
5V
Wire Wire Line
	2950 4450 3550 4450
Text Label 2950 4850 0    50   ~ 0
SDA
Text Label 2950 4950 0    50   ~ 0
SCL
Wire Wire Line
	2950 4850 3550 4850
Wire Wire Line
	2950 4950 3550 4950
Wire Wire Line
	2750 4150 2750 4750
Wire Wire Line
	2750 4750 3550 4750
Connection ~ 2750 4150
Wire Wire Line
	2650 4650 2650 3800
Connection ~ 2650 3800
Wire Wire Line
	2650 3700 3500 3700
Wire Wire Line
	2650 4650 3550 4650
Wire Wire Line
	2550 3400 2550 3600
Wire Wire Line
	2550 3400 2500 3400
Wire Wire Line
	2550 4550 3550 4550
Wire Wire Line
	2550 3600 3500 3600
Connection ~ 2550 3600
Wire Wire Line
	2550 3600 2550 4550
Wire Wire Line
	2900 4500 2900 5050
Connection ~ 2900 4500
Wire Wire Line
	2900 5050 3550 5050
Wire Wire Line
	2500 4500 2900 4500
Text Label 2950 4450 0    50   ~ 0
MP1_IN_SDAT0
Text Label 2900 3500 0    50   ~ 0
MP1_IN_SDAT0
Text Label 2900 1700 0    50   ~ 0
MP1_IN_SDAT0
Wire Wire Line
	10050 1100 10050 1200
Wire Wire Line
	9650 1100 10050 1100
Text Label 9650 1100 0    50   ~ 0
3V3
$Comp
L power:GND #PWR061
U 1 1 61EBE551
P 10050 1500
F 0 "#PWR061" H 10050 1250 50  0001 C CNN
F 1 "GND" H 10055 1327 50  0000 C CNN
F 2 "" H 10050 1500 50  0001 C CNN
F 3 "" H 10050 1500 50  0001 C CNN
	1    10050 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 61EBE545
P 10050 1350
F 0 "C4" H 10165 1396 50  0000 L CNN
F 1 "C" H 10165 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10088 1200 50  0001 C CNN
F 3 "~" H 10050 1350 50  0001 C CNN
	1    10050 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1700 9150 1800
Wire Wire Line
	8750 1700 9150 1700
Text Label 8750 1700 0    50   ~ 0
3V3
$Comp
L power:GND #PWR058
U 1 1 61F85D90
P 9150 2100
F 0 "#PWR058" H 9150 1850 50  0001 C CNN
F 1 "GND" H 9155 1927 50  0000 C CNN
F 2 "" H 9150 2100 50  0001 C CNN
F 3 "" H 9150 2100 50  0001 C CNN
	1    9150 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 61F85D84
P 9150 1950
F 0 "C1" H 9265 1996 50  0000 L CNN
F 1 "C" H 9265 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9188 1800 50  0001 C CNN
F 3 "~" H 9150 1950 50  0001 C CNN
	1    9150 1950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
