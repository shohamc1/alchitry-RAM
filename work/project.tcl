set projDir "C:/Users/Shoham/Desktop/Textbooks/Test/work/vivado"
set projName "Test"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/Shoham/Desktop/Textbooks/Test/work/verilog/au_top_0.v" "C:/Users/Shoham/Desktop/Textbooks/Test/work/verilog/lookuptable_1.v" "C:/Users/Shoham/Desktop/Textbooks/Test/work/verilog/reset_conditioner_2.v" "C:/Users/Shoham/Desktop/Textbooks/Test/work/verilog/game_engine_3.v" "C:/Users/Shoham/Desktop/Textbooks/Test/work/verilog/multi_seven_seg_a_4.v" "C:/Users/Shoham/Desktop/Textbooks/Test/work/verilog/multi_seven_seg_b_5.v" "C:/Users/Shoham/Desktop/Textbooks/Test/work/verilog/multi_seven_seg_c_6.v" "C:/Users/Shoham/Desktop/Textbooks/Test/work/verilog/multi_seven_seg_d_7.v" "C:/Users/Shoham/Desktop/Textbooks/Test/work/verilog/multi_seven_seg_current_8.v" "C:/Users/Shoham/Desktop/Textbooks/Test/work/verilog/multi_seven_seg_target_9.v" "C:/Users/Shoham/Desktop/Textbooks/Test/work/verilog/ram_handler_10.v" "C:/Users/Shoham/Desktop/Textbooks/Test/work/verilog/edge_detector_11.v" "C:/Users/Shoham/Desktop/Textbooks/Test/work/verilog/button_conditioner_12.v" "C:/Users/Shoham/Desktop/Textbooks/Test/work/verilog/random_13.v" "C:/Users/Shoham/Desktop/Textbooks/Test/work/verilog/counter_14.v" "C:/Users/Shoham/Desktop/Textbooks/Test/work/verilog/seven_seg_15.v" "C:/Users/Shoham/Desktop/Textbooks/Test/work/verilog/decoder_16.v" "C:/Users/Shoham/Desktop/Textbooks/Test/work/verilog/simple_ram_17.v" "C:/Users/Shoham/Desktop/Textbooks/Test/work/verilog/pipeline_18.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/Shoham/Desktop/Textbooks/Test/constraint/try.xdc" "C:/Users/Shoham/Desktop/Textbooks/Test/work/constraint/try.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
