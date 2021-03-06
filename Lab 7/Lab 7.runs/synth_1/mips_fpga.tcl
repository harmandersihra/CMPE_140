# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/Van/CMPE_140/Lab 7/Lab 7.cache/wt} [current_project]
set_property parent.project_path {C:/Users/Van/CMPE_140/Lab 7/Lab 7.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_mem {{C:/Users/Van/CMPE_140/Lab 7/Lab 7.srcs/sources_1/new/Lab_5_Stuff/memfile.dat}}
read_verilog -library xil_defaultlib {
  {C:/Users/Van/CMPE_140/Lab 7/Lab 7.srcs/sources_1/new/Lab_5_Stuff/cu_parts.v}
  {C:/Users/Van/CMPE_140/Lab 7/Lab 7.srcs/sources_1/new/Lab_5_Stuff/dp_parts.v}
  {C:/Users/Van/CMPE_140/Lab 7/Lab 7.srcs/sources_1/new/Lab_5_Stuff/controlunit.v}
  {C:/Users/Van/CMPE_140/Lab 7/Lab 7.srcs/sources_1/new/Lab_5_Stuff/datapath.v}
  {C:/Users/Van/CMPE_140/Lab 7/Lab 7.srcs/sources_1/new/Lab_6_Stuff/utility.v}
  {C:/Users/Van/CMPE_140/Lab 7/Lab 7.srcs/sources_1/new/Lab_5_Stuff/mem_parts.v}
  {C:/Users/Van/CMPE_140/Lab 7/Lab 7.srcs/sources_1/new/Lab_5_Stuff/mips.v}
  {C:/Users/Van/CMPE_140/Lab 7/Lab 7.srcs/sources_1/new/Lab_6_Stuff/mips_fpga.v}
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc {{C:/Users/Van/CMPE_140/Lab 6/Lab 6.srcs/sources_1/new/Lab_6_Stuff/mips_fpga.xdc}}
set_property used_in_implementation false [get_files {{C:/Users/Van/CMPE_140/Lab 6/Lab 6.srcs/sources_1/new/Lab_6_Stuff/mips_fpga.xdc}}]


synth_design -top mips_fpga -part xc7a100tcsg324-1


write_checkpoint -force -noxdef mips_fpga.dcp

catch { report_utilization -file mips_fpga_utilization_synth.rpt -pb mips_fpga_utilization_synth.pb }
