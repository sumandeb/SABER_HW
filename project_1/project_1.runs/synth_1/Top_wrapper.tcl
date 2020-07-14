# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param power.enableUnconnectedCarry8PinPower 1
set_param power.BramSDPPropagationFix 1
set_param power.enableCarry8RouteBelPower 1
set_param power.enableLutRouteBelPower 1
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xczu9eg-ffvb1156-2-e

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/SABER_FPGA_cleaned_for_Github/project_1/project_1.cache/wt [current_project]
set_property parent.project_path D:/SABER_FPGA_cleaned_for_Github/project_1/project_1.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:zcu102:part0:3.2 [current_project]
set_property ip_repo_paths {
  d:/SABER_FPGA_cleaned_for_Github/ip_repo/AXI_Slave8Ports_1.0
  d:/SABER_FPGA_cleaned_for_Github/ip_repo/AXIslave_1.0
} [current_project]
set_property ip_output_repo d:/SABER_FPGA_cleaned_for_Github/project_1/project_1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib D:/SABER_FPGA_cleaned_for_Github/project_1/project_1.srcs/sources_1/bd/Top/hdl/Top_wrapper.v
add_files D:/SABER_FPGA_cleaned_for_Github/project_1/project_1.srcs/sources_1/bd/Top/Top.bd
set_property used_in_implementation false [get_files -all d:/SABER_FPGA_cleaned_for_Github/project_1/project_1.srcs/sources_1/bd/Top/ip/Top_zynq_ultra_ps_e_0_0_1/Top_zynq_ultra_ps_e_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/SABER_FPGA_cleaned_for_Github/project_1/project_1.srcs/sources_1/bd/Top/ip/Top_zynq_ultra_ps_e_0_0_1/Top_zynq_ultra_ps_e_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/SABER_FPGA_cleaned_for_Github/project_1/project_1.srcs/sources_1/bd/Top/ip/Top_rst_ps8_0_99M_0/Top_rst_ps8_0_99M_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/SABER_FPGA_cleaned_for_Github/project_1/project_1.srcs/sources_1/bd/Top/ip/Top_rst_ps8_0_99M_0/Top_rst_ps8_0_99M_0.xdc]
set_property used_in_implementation false [get_files -all d:/SABER_FPGA_cleaned_for_Github/project_1/project_1.srcs/sources_1/bd/Top/ip/Top_rst_ps8_0_99M_0/Top_rst_ps8_0_99M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/SABER_FPGA_cleaned_for_Github/project_1/project_1.srcs/sources_1/bd/Top/ip/Top_ComputeCoreWrapper_0_0/Top_ComputeCoreWrapper_0_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all d:/SABER_FPGA_cleaned_for_Github/project_1/project_1.srcs/sources_1/bd/Top/ip/Top_auto_ds_0/Top_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/SABER_FPGA_cleaned_for_Github/project_1/project_1.srcs/sources_1/bd/Top/ip/Top_auto_ds_0/Top_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/SABER_FPGA_cleaned_for_Github/project_1/project_1.srcs/sources_1/bd/Top/ip/Top_auto_ds_0/Top_auto_ds_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/SABER_FPGA_cleaned_for_Github/project_1/project_1.srcs/sources_1/bd/Top/ip/Top_auto_pc_0/Top_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all D:/SABER_FPGA_cleaned_for_Github/project_1/project_1.srcs/sources_1/bd/Top/Top_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top Top_wrapper -part xczu9eg-ffvb1156-2-e


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Top_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file Top_wrapper_utilization_synth.rpt -pb Top_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
