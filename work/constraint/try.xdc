# clk => 100000000Hz
create_clock -period 10.0 -name clk_0 -waveform {0.000 5.000} [get_ports clk]
set_property PACKAGE_PIN N14 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]
set_property PACKAGE_PIN P6 [get_ports {rst_n}]
set_property IOSTANDARD LVCMOS33 [get_ports {rst_n}]
set_property PACKAGE_PIN K13 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property PACKAGE_PIN K12 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property PACKAGE_PIN L14 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property PACKAGE_PIN L13 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property PACKAGE_PIN M16 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
set_property PACKAGE_PIN M14 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
set_property PACKAGE_PIN M12 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
set_property PACKAGE_PIN N16 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]
set_property PACKAGE_PIN P15 [get_ports {usb_rx}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_rx}]
set_property PACKAGE_PIN P16 [get_ports {usb_tx}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_tx}]
set_property PACKAGE_PIN T9 [get_ports {option_a[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_a[5]}]
set_property PACKAGE_PIN R7 [get_ports {option_a_sel[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_a_sel[1]}]
set_property PACKAGE_PIN N9 [get_ports {option_a_sel[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_a_sel[0]}]
set_property PACKAGE_PIN K3 [get_ports {option_a[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_a[1]}]
set_property PACKAGE_PIN J5 [get_ports {option_a[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_a[0]}]
set_property PACKAGE_PIN T10 [get_ports {option_a[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_a[6]}]
set_property PACKAGE_PIN R6 [get_ports {option_a[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_a[3]}]
set_property PACKAGE_PIN P9 [get_ports {option_a[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_a[4]}]
set_property PACKAGE_PIN J4 [get_ports {option_a[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_a[2]}]
set_property PACKAGE_PIN T7 [get_ports {option_b[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_b[5]}]
set_property PACKAGE_PIN R5 [get_ports {option_b_sel[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_b_sel[1]}]
set_property PACKAGE_PIN P8 [get_ports {option_b_sel[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_b_sel[0]}]
set_property PACKAGE_PIN L3 [get_ports {option_b[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_b[1]}]
set_property PACKAGE_PIN K1 [get_ports {option_b[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_b[0]}]
set_property PACKAGE_PIN T8 [get_ports {option_b[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_b[6]}]
set_property PACKAGE_PIN T5 [get_ports {option_b[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_b[3]}]
set_property PACKAGE_PIN R8 [get_ports {option_b[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_b[4]}]
set_property PACKAGE_PIN J1 [get_ports {option_b[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_b[2]}]
set_property PACKAGE_PIN D4 [get_ports {option_c[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_c[5]}]
set_property PACKAGE_PIN G5 [get_ports {option_c_sel[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_c_sel[1]}]
set_property PACKAGE_PIN F5 [get_ports {option_c_sel[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_c_sel[0]}]
set_property PACKAGE_PIN D6 [get_ports {option_c[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_c[1]}]
set_property PACKAGE_PIN C7 [get_ports {option_c[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_c[0]}]
set_property PACKAGE_PIN C4 [get_ports {option_c[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_c[6]}]
set_property PACKAGE_PIN G4 [get_ports {option_c[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_c[3]}]
set_property PACKAGE_PIN E5 [get_ports {option_c[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_c[4]}]
set_property PACKAGE_PIN C6 [get_ports {option_c[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_c[2]}]
set_property PACKAGE_PIN F4 [get_ports {option_d[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_d[5]}]
set_property PACKAGE_PIN B4 [get_ports {option_d_sel[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_d_sel[1]}]
set_property PACKAGE_PIN A5 [get_ports {option_d_sel[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_d_sel[0]}]
set_property PACKAGE_PIN B6 [get_ports {option_d[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_d[1]}]
set_property PACKAGE_PIN B7 [get_ports {option_d[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_d[0]}]
set_property PACKAGE_PIN F3 [get_ports {option_d[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_d[6]}]
set_property PACKAGE_PIN A3 [get_ports {option_d[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_d[3]}]
set_property PACKAGE_PIN A4 [get_ports {option_d[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_d[4]}]
set_property PACKAGE_PIN A7 [get_ports {option_d[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {option_d[2]}]
set_property PACKAGE_PIN T13 [get_ports {current[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {current[5]}]
set_property PACKAGE_PIN T12 [get_ports {current_sel[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {current_sel[1]}]
set_property PACKAGE_PIN R11 [get_ports {current_sel[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {current_sel[0]}]
set_property PACKAGE_PIN N2 [get_ports {current[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {current[1]}]
set_property PACKAGE_PIN P3 [get_ports {current[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {current[0]}]
set_property PACKAGE_PIN R13 [get_ports {current[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {current[6]}]
set_property PACKAGE_PIN R12 [get_ports {current[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {current[3]}]
set_property PACKAGE_PIN R10 [get_ports {current[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {current[4]}]
set_property PACKAGE_PIN P4 [get_ports {current[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {current[2]}]
set_property PACKAGE_PIN N12 [get_ports {target[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {target[5]}]
set_property PACKAGE_PIN P13 [get_ports {target_sel[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {target_sel[1]}]
set_property PACKAGE_PIN M1 [get_ports {target_sel[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {target_sel[0]}]
set_property PACKAGE_PIN P1 [get_ports {target[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {target[1]}]
set_property PACKAGE_PIN R1 [get_ports {target[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {target[0]}]
set_property PACKAGE_PIN N11 [get_ports {target[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {target[6]}]
set_property PACKAGE_PIN N13 [get_ports {target[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {target[3]}]
set_property PACKAGE_PIN M2 [get_ports {target[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {target[4]}]
set_property PACKAGE_PIN R2 [get_ports {target[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {target[2]}]
set_property PACKAGE_PIN M6 [get_ports {a_button}]
set_property IOSTANDARD LVCMOS33 [get_ports {a_button}]
set_property PULLDOWN true [get_ports {a_button}]
set_property PACKAGE_PIN H5 [get_ports {b_button}]
set_property IOSTANDARD LVCMOS33 [get_ports {b_button}]
set_property PULLDOWN true [get_ports {b_button}]
set_property PACKAGE_PIN C3 [get_ports {c_button}]
set_property IOSTANDARD LVCMOS33 [get_ports {c_button}]
set_property PULLDOWN true [get_ports {c_button}]
set_property PACKAGE_PIN C1 [get_ports {d_button}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_button}]
set_property PULLDOWN true [get_ports {d_button}]
set_property PACKAGE_PIN J3 [get_ports {next_player_button}]
set_property IOSTANDARD LVCMOS33 [get_ports {next_player_button}]
set_property PULLDOWN true [get_ports {next_player_button}]
