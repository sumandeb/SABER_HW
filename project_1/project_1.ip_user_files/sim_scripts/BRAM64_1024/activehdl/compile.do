vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/blk_mem_gen_v8_4_1

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap blk_mem_gen_v8_4_1 activehdl/blk_mem_gen_v8_4_1

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Vivado2018_installed/Vivado/2018.1/data/xilinx_vip/include" "+incdir+D:/Vivado2018_installed/Vivado/2018.1/data/xilinx_vip/include" \
"D:/Vivado2018_installed/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Vivado2018_installed/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Vivado2018_installed/Vivado/2018.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Vivado2018_installed/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Vivado2018_installed/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Vivado2018_installed/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Vivado2018_installed/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Vivado2018_installed/Vivado/2018.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Vivado2018_installed/Vivado/2018.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+D:/Vivado2018_installed/Vivado/2018.1/data/xilinx_vip/include" "+incdir+D:/Vivado2018_installed/Vivado/2018.1/data/xilinx_vip/include" \
"D:/Vivado2018_installed/Vivado/2018.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Vivado2018_installed/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"D:/Vivado2018_installed/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"D:/Vivado2018_installed/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_1  -v2k5 "+incdir+D:/Vivado2018_installed/Vivado/2018.1/data/xilinx_vip/include" "+incdir+D:/Vivado2018_installed/Vivado/2018.1/data/xilinx_vip/include" \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+D:/Vivado2018_installed/Vivado/2018.1/data/xilinx_vip/include" "+incdir+D:/Vivado2018_installed/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/ip/BRAM64_1024/sim/BRAM64_1024.v" \

vlog -work xil_defaultlib \
"glbl.v"

