# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/Van/CMPE_140/Lab 5/Lab 5.cache/wt} [current_project]
set_property parent.project_path {C:/Users/Van/CMPE_140/Lab 5/Lab 5.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {
  {C:/Users/Van/CMPE_140/Lab 5/Lab 5.srcs/sources_1/new/cu_parts.v}
  {C:/Users/Van/CMPE_140/Lab 5/Lab 5.srcs/sources_1/new/dp_parts.v}
  {C:/Users/Van/CMPE_140/Lab 5/Lab 5.srcs/sources_1/new/datapath.v}
  {C:/Users/Van/CMPE_140/Lab 5/Lab 5.srcs/sources_1/new/controlunit.v}
  {C:/Users/Van/CMPE_140/Lab 5/Lab 5.srcs/sources_1/new/mem_parts.v}
  {C:/Users/Van/CMPE_140/Lab 5/Lab 5.srcs/sources_1/new/mips.v}
  {C:/Users/Van/CMPE_140/Lab 5/Lab 5.srcs/sources_1/new/mips_top.v}
  {C:/Users/Van/CMPE_140/Lab 5/Lab 5.srcs/sources_1/new/tb_mips_top.v}
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top tb_mips_top -part xc7a100tcsg324-1


write_checkpoint -force -noxdef tb_mips_top.dcp

catch { report_utilization -file tb_mips_top_utilization_synth.rpt -pb tb_mips_top_utilization_synth.pb }
