# Clock Signal
set_property PACKAGE_PIN W5 [get_ports clk_in]
set_property IOSTANDARD LVCMOS33 [get_ports clk_in]

# Push Button f�r Addition (links)
set_property PACKAGE_PIN W19 [get_ports pb]
set_property IOSTANDARD LVCMOS33 [get_ports pb]

# Push Button 2 f�r Subtraktion (rechts)
set_property PACKAGE_PIN T17 [get_ports pb2]
set_property IOSTANDARD LVCMOS33 [get_ports pb2]

# Push Button 3 f�r Multiplikation (oben)
set_property PACKAGE_PIN T18 [get_ports pb3]
set_property IOSTANDARD LVCMOS33 [get_ports pb3]

# Push Button 4 f�r XOR (Mitte)
set_property PACKAGE_PIN U18 [get_ports pb4]
set_property IOSTANDARD LVCMOS33 [get_ports pb4]

# Push Button 5 f�r NAND (unten)
set_property PACKAGE_PIN U17 [get_ports pb5]
set_property IOSTANDARD LVCMOS33 [get_ports pb5]

# Switches
set_property PACKAGE_PIN V2 [get_ports {a[0]}]
set_property PACKAGE_PIN T3 [get_ports {a[1]}]
set_property PACKAGE_PIN T2 [get_ports {a[2]}]
set_property PACKAGE_PIN R3 [get_ports {a[3]}]
set_property PACKAGE_PIN W2 [get_ports {a[4]}]
set_property PACKAGE_PIN U1 [get_ports {a[5]}]
set_property PACKAGE_PIN T1 [get_ports {a[6]}]
set_property PACKAGE_PIN R2 [get_ports {a[7]}]
set_property PACKAGE_PIN V17 [get_ports {b[0]}]
set_property PACKAGE_PIN V16 [get_ports {b[1]}]
set_property PACKAGE_PIN W16 [get_ports {b[2]}]
set_property PACKAGE_PIN W17 [get_ports {b[3]}]
set_property PACKAGE_PIN W15 [get_ports {b[4]}]
set_property PACKAGE_PIN V15 [get_ports {b[5]}]
set_property PACKAGE_PIN W14 [get_ports {b[6]}]
set_property PACKAGE_PIN W13 [get_ports {b[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[0]}]

#LED's
set_property PACKAGE_PIN U16 [get_ports {s[0]}]
set_property PACKAGE_PIN E19 [get_ports {s[1]}]
set_property PACKAGE_PIN U19 [get_ports {s[2]}]
set_property PACKAGE_PIN V19 [get_ports {s[3]}]
set_property PACKAGE_PIN W18 [get_ports {s[4]}]
set_property PACKAGE_PIN U15 [get_ports {s[5]}]
set_property PACKAGE_PIN U14 [get_ports {s[6]}]
set_property PACKAGE_PIN V14 [get_ports {s[7]}]
set_property PACKAGE_PIN V13 [get_ports {s[8]}]
set_property PACKAGE_PIN V3 [get_ports {s[9]}]
set_property PACKAGE_PIN W3 [get_ports {s[10]}]
set_property PACKAGE_PIN U3 [get_ports {s[11]}]
set_property PACKAGE_PIN P3 [get_ports {s[12]}]
set_property PACKAGE_PIN N3 [get_ports {s[13]}]
set_property PACKAGE_PIN P1 [get_ports {s[14]}]
set_property PACKAGE_PIN L1 [get_ports {s[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {s[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {s[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {s[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {s[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {s[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {s[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {s[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {s[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {s[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {s[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {s[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {s[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {s[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {s[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {s[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {s[0]}]

#7-segment-display cathodes a_to_g und dp
set_property IOSTANDARD LVCMOS33 [get_ports {a_to_g[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a_to_g[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a_to_g[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a_to_g[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a_to_g[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a_to_g[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a_to_g[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports dp]
set_property PACKAGE_PIN V7 [get_ports dp]
set_property PACKAGE_PIN W7 [get_ports {a_to_g[6]}]
set_property PACKAGE_PIN W6 [get_ports {a_to_g[5]}]
set_property PACKAGE_PIN U8 [get_ports {a_to_g[4]}]
set_property PACKAGE_PIN V8 [get_ports {a_to_g[3]}]
set_property PACKAGE_PIN U5 [get_ports {a_to_g[2]}]
set_property PACKAGE_PIN V5 [get_ports {a_to_g[1]}]
set_property PACKAGE_PIN U7 [get_ports {a_to_g[0]}]

#7-segment-display anodes
set_property PACKAGE_PIN U2 [get_ports {anodes[0]}]
set_property PACKAGE_PIN U4 [get_ports {anodes[1]}]
set_property PACKAGE_PIN V4 [get_ports {anodes[2]}]
set_property PACKAGE_PIN W4 [get_ports {anodes[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {anodes[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {anodes[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {anodes[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {anodes[0]}]