
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:012

00:00:052	
603.8482	
219.137Z17-268h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
�
�Failed to load user IP repository '%s'; %s
If this directory should no longer be in your list of user repositories, go to the IP Settings dialog and remove it.
1318*coregen2U
Sc:/Users/xjh/WorkSpace/verilog/tools/Xilinx/library/vivado-library-zmod-v1-2019.1-22 
Can't find the specified path.Z19-2248h px� 
j
"Loaded Vivado IP repository '%s'.
1332*coregen2!
C:/Xilinx/Vivado/2023.2/data/ipZ19-2313h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/xjh/WorkSpace/verilog/craft_implementation/vivado/CipherSystem.srcs/utils_1/imports/synth_1/top.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2n
lC:/Users/xjh/WorkSpace/verilog/craft_implementation/vivado/CipherSystem.srcs/utils_1/imports/synth_1/top.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
^
Command: %s
53*	vivadotcl2-
+synth_design -top top -part xc7k70tfbg484-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7k70tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7k70tZ17-349h px� 
D
Loading part %s157*device2
xc7k70tfbg484-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
L
#Helper process launched with PID %s4824*oasys2
392Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:01 ; elapsed = 00:00:04 . Memory (MB): peak = 1442.184 ; gain = 439.969
h px� 
�
.identifier '%s' is used before its declaration4750*oasys2	
add_key2v
rC:/Users/xjh/WorkSpace/verilog/craft_implementation/vivado/CipherSystem.srcs/sources_1/imports/src/craft_encrypt.v2
268@Z8-6901h px� 
�
.identifier '%s' is used before its declaration4750*oasys2
WIDTH2s
oC:/Users/xjh/WorkSpace/verilog/craft_implementation/vivado/CipherSystem.srcs/sources_1/imports/src/craft_sbox.v2
28@Z8-6901h px� 
�
.identifier '%s' is used before its declaration4750*oasys2
WIDTH2s
oC:/Users/xjh/WorkSpace/verilog/craft_implementation/vivado/CipherSystem.srcs/sources_1/imports/src/craft_sbox.v2
38@Z8-6901h px� 
�
$data object '%s' is already declared5597*oasys2
tweak2A
=C:/Users/xjh/WorkSpace/verilog/craft_implementation/src/top.v2
668@Z8-9339h px� 
�
)previous declaration of '%s' is from here4683*oasys2
tweak2A
=C:/Users/xjh/WorkSpace/verilog/craft_implementation/src/top.v2
128@Z8-6826h px� 
�
%second declaration of '%s' is ignored7413*oasys2
tweak2A
=C:/Users/xjh/WorkSpace/verilog/craft_implementation/src/top.v2
668@Z8-11152h px� 
�
$data object '%s' is already declared5597*oasys2
key2A
=C:/Users/xjh/WorkSpace/verilog/craft_implementation/src/top.v2
678@Z8-9339h px� 
�
)previous declaration of '%s' is from here4683*oasys2
key2A
=C:/Users/xjh/WorkSpace/verilog/craft_implementation/src/top.v2
118@Z8-6826h px� 
�
%second declaration of '%s' is ignored7413*oasys2
key2A
=C:/Users/xjh/WorkSpace/verilog/craft_implementation/src/top.v2
678@Z8-11152h px� 
�
synthesizing module '%s'%s4497*oasys2
top2
 2A
=C:/Users/xjh/WorkSpace/verilog/craft_implementation/src/top.v2
38@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
craft_encrypt2
 2v
rC:/Users/xjh/WorkSpace/verilog/craft_implementation/vivado/CipherSystem.srcs/sources_1/imports/src/craft_encrypt.v2
18@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
craft_round_constants2
 2~
zC:/Users/xjh/WorkSpace/verilog/craft_implementation/vivado/CipherSystem.srcs/sources_1/imports/src/craft_round_constants.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
craft_round_constants2
 2
02
12~
zC:/Users/xjh/WorkSpace/verilog/craft_implementation/vivado/CipherSystem.srcs/sources_1/imports/src/craft_round_constants.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
craft_key_schedule2
 2{
wC:/Users/xjh/WorkSpace/verilog/craft_implementation/vivado/CipherSystem.srcs/sources_1/imports/src/craft_key_schedule.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
craft_key_schedule2
 2
02
12{
wC:/Users/xjh/WorkSpace/verilog/craft_implementation/vivado/CipherSystem.srcs/sources_1/imports/src/craft_key_schedule.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
craft_round2
 2t
pC:/Users/xjh/WorkSpace/verilog/craft_implementation/vivado/CipherSystem.srcs/sources_1/imports/src/craft_round.v2
18@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

craft_sbox2
 2s
oC:/Users/xjh/WorkSpace/verilog/craft_implementation/vivado/CipherSystem.srcs/sources_1/imports/src/craft_sbox.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

craft_sbox2
 2
02
12s
oC:/Users/xjh/WorkSpace/verilog/craft_implementation/vivado/CipherSystem.srcs/sources_1/imports/src/craft_sbox.v2
18@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
craft_round2
 2
02
12t
pC:/Users/xjh/WorkSpace/verilog/craft_implementation/vivado/CipherSystem.srcs/sources_1/imports/src/craft_round.v2
18@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
craft_encrypt2
 2
02
12v
rC:/Users/xjh/WorkSpace/verilog/craft_implementation/vivado/CipherSystem.srcs/sources_1/imports/src/craft_encrypt.v2
18@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2
 2
02
12A
=C:/Users/xjh/WorkSpace/verilog/craft_implementation/src/top.v2
38@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
TK2
top2A
=C:/Users/xjh/WorkSpace/verilog/craft_implementation/src/top.v2
138@Z8-3848h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:05 . Memory (MB): peak = 1549.996 ; gain = 547.781
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:02 ; elapsed = 00:00:05 . Memory (MB): peak = 1549.996 ; gain = 547.781
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:02 ; elapsed = 00:00:05 . Memory (MB): peak = 1549.996 ; gain = 547.781
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0072

1549.9962
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2�
�C:/Users/xjh/WorkSpace/verilog/craft_implementation/vivado/CipherSystem.srcs/constrs_1/imports/digilent-xdc-master/Nexys-A7-100T-Master.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
�C:/Users/xjh/WorkSpace/verilog/craft_implementation/vivado/CipherSystem.srcs/constrs_1/imports/digilent-xdc-master/Nexys-A7-100T-Master.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
�C:/Users/xjh/WorkSpace/verilog/craft_implementation/vivado/CipherSystem.srcs/constrs_1/imports/digilent-xdc-master/Nexys-A7-100T-Master.xdc2
.Xil/top_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1577.1372
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0022

1577.1372
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:04 ; elapsed = 00:00:10 . Memory (MB): peak = 1577.137 ; gain = 574.922
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7k70tfbg484-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:04 ; elapsed = 00:00:10 . Memory (MB): peak = 1577.137 ; gain = 574.922
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:04 ; elapsed = 00:00:10 . Memory (MB): peak = 1577.137 ; gain = 574.922
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:10 . Memory (MB): peak = 1577.137 ; gain = 574.922
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 1     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input     64 Bit         XORs := 1     
h p
x
� 
H
%s
*synth20
.	   2 Input     16 Bit         XORs := 3     
h p
x
� 
H
%s
*synth20
.	   4 Input     16 Bit         XORs := 1     
h p
x
� 
H
%s
*synth20
.	   2 Input      8 Bit         XORs := 2     
h p
x
� 
H
%s
*synth20
.	   2 Input      4 Bit         XORs := 2     
h p
x
� 
H
%s
*synth20
.	   2 Input      1 Bit         XORs := 2     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               64 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 2     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   64 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 2     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:05 ; elapsed = 00:00:12 . Memory (MB): peak = 1577.137 ; gain = 574.922
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:06 ; elapsed = 00:00:15 . Memory (MB): peak = 1577.137 ; gain = 574.922
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:06 ; elapsed = 00:00:16 . Memory (MB): peak = 1595.328 ; gain = 593.113
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:06 ; elapsed = 00:00:16 . Memory (MB): peak = 1595.328 ; gain = 593.113
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:07 ; elapsed = 00:00:19 . Memory (MB): peak = 1595.328 ; gain = 593.113
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:07 ; elapsed = 00:00:19 . Memory (MB): peak = 1595.328 ; gain = 593.113
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:07 ; elapsed = 00:00:19 . Memory (MB): peak = 1595.328 ; gain = 593.113
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:07 ; elapsed = 00:00:19 . Memory (MB): peak = 1595.328 ; gain = 593.113
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:19 . Memory (MB): peak = 1595.328 ; gain = 593.113
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:07 ; elapsed = 00:00:19 . Memory (MB): peak = 1595.328 ; gain = 593.113
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|      |Cell |Count |
h px� 
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|1     |BUFG |     1|
h px� 
0
%s*synth2
|2     |LUT1 |     3|
h px� 
0
%s*synth2
|3     |LUT2 |    37|
h px� 
0
%s*synth2
|4     |LUT3 |    12|
h px� 
0
%s*synth2
|5     |LUT4 |    25|
h px� 
0
%s*synth2
|6     |LUT5 |    17|
h px� 
0
%s*synth2
|7     |LUT6 |   115|
h px� 
0
%s*synth2
|8     |FDRE |   142|
h px� 
0
%s*synth2
|9     |FDSE |     2|
h px� 
0
%s*synth2
|10    |IBUF |     2|
h px� 
0
%s*synth2
|11    |OBUF |     1|
h px� 
0
%s*synth2
+------+-----+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:07 ; elapsed = 00:00:19 . Memory (MB): peak = 1595.328 ; gain = 593.113
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:06 ; elapsed = 00:00:18 . Memory (MB): peak = 1595.328 ; gain = 565.973
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:08 ; elapsed = 00:00:19 . Memory (MB): peak = 1595.328 ; gain = 593.113
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0032

1607.1482
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1610.7702
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

20fa57afZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
352
62
42
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:092

00:00:232

1610.7702	
999.688Z17-268h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

1610.7702
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2^
\C:/Users/xjh/WorkSpace/verilog/craft_implementation/vivado/CipherSystem.runs/synth_1/top.dcpZ17-1381h px� 
z
%s4*runtcl2^
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Sun Feb 18 09:45:17 2024Z17-206h px� 


End Record