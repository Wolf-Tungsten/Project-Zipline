vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_vip_v1_1_7

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_vip_v1_1_7 questa_lib/msim/axi_vip_v1_1_7

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_7 -L xilinx_vip "+incdir+/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -sv -L axi_vip_v1_1_7 -L xilinx_vip "+incdir+../../../ipstatic/hdl" "+incdir+/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../ipstatic/hdl" "+incdir+/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_7 -L xilinx_vip "+incdir+../../../ipstatic/hdl" "+incdir+/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../cceip_kernel_ex.srcs/sources_1/ip/slv_m00_axi_vip/sim/slv_m00_axi_vip_pkg.sv" \

vlog -work axi_vip_v1_1_7 -64 -sv -L axi_vip_v1_1_7 -L xilinx_vip "+incdir+../../../ipstatic/hdl" "+incdir+/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_7 -L xilinx_vip "+incdir+../../../ipstatic/hdl" "+incdir+/nvme0n1/Applications/Xilinx2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../cceip_kernel_ex.srcs/sources_1/ip/slv_m00_axi_vip/sim/slv_m00_axi_vip.sv" \

vlog -work xil_defaultlib \
"glbl.v"

