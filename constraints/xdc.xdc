#clock
set_property PACKAGE_PIN W5 [get_ports clock]
set_property IOSTANDARD LVCMOS33 [get_ports clock]
create_clock -add -name sys_clock_pin -period 10.00 -waveform {0 5} [get_ports clock]

##Pmod Header JA
##Sch name = JA1
## MSB YI 1 E MI 7 YE MI TAKICAM???
set_property PACKAGE_PIN J1 [get_ports {note[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {note[0]}]
##Sch name = JA2
set_property PACKAGE_PIN L2 [get_ports {note[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {note[1]}]
##Sch name = JA3
set_property PACKAGE_PIN J2 [get_ports {note[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {note[2]}]
##Sch name = JA4
set_property PACKAGE_PIN G2 [get_ports {note[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {note[3]}]
##Sch name = JA7
set_property PACKAGE_PIN H1 [get_ports {note[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {note[4]}]
##Sch name = JA8
set_property PACKAGE_PIN K2 [get_ports {note[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {note[5]}]
##Sch name = JA9
set_property PACKAGE_PIN H2 [get_ports {note[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {note[6]}]
##Sch name = JA10
set_property PACKAGE_PIN G3 [get_ports {note[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {note[7]}]

##Sch name = JB1
#For Flat
set_property PACKAGE_PIN A14 [get_ports {n_out}]
set_property IOSTANDARD LVCMOS33 [get_ports {n_out}]

#7 segment display
set_property PACKAGE_PIN W7 [get_ports {sgmt[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sgmt[6]}]
set_property PACKAGE_PIN W6 [get_ports {sgmt[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sgmt[5]}]
set_property PACKAGE_PIN U8 [get_ports {sgmt[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sgmt[4]}]
set_property PACKAGE_PIN V8 [get_ports {sgmt[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sgmt[3]}]
set_property PACKAGE_PIN U5 [get_ports {sgmt[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sgmt[2]}]
set_property PACKAGE_PIN V5 [get_ports {sgmt[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sgmt[1]}]
set_property PACKAGE_PIN U7 [get_ports {sgmt[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sgmt[0]}]

set_property PACKAGE_PIN U2 [get_ports {anode[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {anode[0]}]
set_property PACKAGE_PIN U4 [get_ports {anode[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {anode[1]}]
set_property PACKAGE_PIN V4 [get_ports {anode[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {anode[2]}]
set_property PACKAGE_PIN W4 [get_ports {anode[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {anode[3]}]

# Switches
set_property PACKAGE_PIN V17 [get_ports {oct[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oct[0]}]
set_property PACKAGE_PIN V16 [get_ports {oct[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oct[1]}]
set_property PACKAGE_PIN W16 [get_ports {oct[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oct[2]}]
set_property PACKAGE_PIN W17 [get_ports {oct[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oct[3]}]
