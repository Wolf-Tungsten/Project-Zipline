# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_resetJobStats
    rt::HARTNDb_resetSystemStats
    rt::HARTNDb_startSystemStats
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "./.Xil/Vivado-4942-qqq/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    rt::set_parameter datapathDensePacking false
    set rt::partid xcu280-fsvh2892-2L-e
    source $::env(HRT_TCL_PATH)/rtSynthParallelPrep.tcl
     file delete -force synth_hints.os

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common.tcl
    set rt::defaultWorkLibName xil_defaultlib

    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv -include {
    /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/include
    /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cceip_64
    /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library
    /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/axi
    /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_isf
    /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_osf
    /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cg
    /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_crcgc
    /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix
    /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix_attach
    /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp
    /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp
    /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp
    /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cceip_64_support
    /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cceip_64_sa
    /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_su
    /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/mem_wrappers/bimc_master/top
  } -define {ENA_BIMC SYNTHESIS} {
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cceip_64/cr_cceip_64.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_clk_gate.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_mux_32.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/CR_TIE_CELL.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_rst_sync.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_dual_rank_synchronizer.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/include/nx_mem_typePKG_v2.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/include/cr_structs.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/include/nx_stat_counter.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/include/nx_mem_typePKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/include/cr_error_codes.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/include/cr_native_types.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/include/nx_cdc_fifo_typePKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/include/crPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_ram_1r1w.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_indirect_access_cntrl_v2.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_fifo_ctrl_ram_1r1w.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_sync_flop.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_bit_pack.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_table_monitor.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_srfram_channelized.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_srf_stat_counter_indirect_access.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_sp_sch.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_ipchecksum.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_interface_monitor_pipe.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_indirect_access_cntrl.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_ram_2rw.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_stat_counter_ctrl.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_ppdpram.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_lfsr.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_rbus_ring.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_srfram_indirect_access.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_event_counter_array_wide.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_tcam_cambist.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_roreg_indirect_access.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_ram_indirect_access.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_event_counter_array.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_ram_2rw_indirect_access.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_credit_manager.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_tcam.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_fifo_1r1w_indirect_access_debug.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_fifo_srfram.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_event_interrupt.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/sync_fifo.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_ram_1rw_indirect_access.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_rbus_retime.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_fifo_ctrl.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_reg_indirect_access.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_tcam_scrubbed_indirect_access.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_rr_arb.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_cdc_fifo_ctrl.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_fifo_1r1w_indirect_access_debug_cntrl.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_ram_1r1w_indirect_access.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_indirect_access_cntrl_v3.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_rbus_apb.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_fifo.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_spram.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_cdc_fifo.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_ram_1ar1w.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_interface_monitor.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_stat_counter_indirect_access_cntrl.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_dpram.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_fifo_ram_1r1w.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_ram_1rw.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_tcam_indirect_access.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/nx_library/nx_spram_init.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_tlvp/cr_axi4s_slv.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_tlvp/cr_tlvp2_top.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_tlvp/cr_tlvp2.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_tlvp/cr_axi4s_mstr.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_tlvp/cr_tlvp2_dsm.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_tlvp/cr_axi4s_slv2.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_tlvp/cr_tlvp_top.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_tlvp/cr_tlvp2_rsm.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_tlvp/cr_axi4s_mstr_su.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_tlvp/cr_tlvp2_rsm_core.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_tlvp/cr_tlvp_spl.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_tlvp/cr_tlvp_dsm.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_tlvp/cr_tlvp_id.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_tlvp/cr_axi4s2_slv.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_tlvp/cr_tlvp_rsm.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_tlvp/cr_tlvp.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_tlvp_apps/cr_tlvp_axi_in_top.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_tlvp_apps/cr_tlvp_axi_in_axi_out_top.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_tlvp_apps/cr_tlvp_axi_out_top.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_crc/cr_crc.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/axi/ace_ac_reg_slice.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/axi/axi_r_reg_slice.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/axi/ace_r_reg_slice.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/axi/axi_reg_slice.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/axi/ace_reg_slice.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/axi/axi_b_reg_slice.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/axi/axi_channel_reg_slice.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/axi/axi4_w_reg_slice.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/axi/axi_channel_split_slice.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/axi/axi_ax_reg_slice.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/axi/ace_ax_reg_slice.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/axi/axi4_ax_reg_slice.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/axi/ace_cr_reg_slice.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/axi/axi_hndshk_split.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/axi/ace_cd_reg_slice.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/axi/axi4_reg_slice.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/axi/axi_w_reg_slice.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_adler/cr_adler.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/cr_crc16t/cr_crc16t.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/fifo/cr_fifo_wrap1.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/fifo/cr_fifo_wrap2.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/fifo/cr_cdc_fifo_wrap1.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/common/fifo/cr_fifo_wrap3.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_isf/cr_isf_tlv_mods.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_isf/cr_isf_regfile.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_isf/cr_isf.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_isf/cr_isf_support.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_isf/cr_isfPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_isf/cr_isf_regfilePKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_isf/cr_isf_regs.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_isf/cr_isf_core.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_isf/cr_isf_regsPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_osf/cr_osf_dbg2fifo_ctl.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_osf/cr_osf_regsPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_osf/cr_osf_regfile.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_osf/cr_osf_regs.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_osf/cr_osf.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_osf/cr_osf_latency.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_osf/cr_osf_core.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_osf/cr_osf_regfilePKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_osf/cr_osf_debug_ctl.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_osf/cr_osf_ctl.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_osf/cr_osfPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_osf/cr_osf_support.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cg/cr_cg.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cg/cr_cg_regsPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cg/cr_cg_tlv_mods.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cg/cr_cg_regfile.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cg/cr_cg_regfilePKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cg/cr_cgPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cg/cr_cg_regs.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cg/cr_cg_core.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_crcgc/cr_crcgc_crc.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_crcgc/cr_crcgc_regfilePKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_crcgc/cr_crcgc_cts.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_crcgc/cr_crcgc_regfile.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_crcgc/cr_crcgc_core.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_crcgc/cr_crcgc.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_crcgc/cr_crcgc_regs.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_crcgc/cr_crcgcPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_crcgc/cr_crcgc_regsPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefix_fe_counter.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefix_rec_alu.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefixPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefix_core.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefix_rec_do.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefix_rec_di.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefix_fe_cmpa.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefix_fe_ctr.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefix_fe.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefix_fe_cmp.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefix_fe_grp.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefix_regs.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefix_fe_cmpx4.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefix_regfilePKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefix_regfile.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefix_ibc.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefix_rec.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefix_obc.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefix_fe_char.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefix_rec_us.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefix_rec_act.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefix.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefix_fe_ctlr.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix/cr_prefix_regsPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix_attach/cr_prefix_attach_regs.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix_attach/cr_prefix_attach_ibp.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix_attach/cr_prefix_attach_regfile.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix_attach/cr_prefix_attach_regfilePKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix_attach/cr_prefix_attachPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix_attach/cr_prefix_attach_ctlr.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix_attach/cr_prefix_attach_core.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix_attach/cr_prefix_attach_pmc.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix_attach/cr_prefix_attach_pac.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix_attach/cr_prefix_attach_regsPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix_attach/cr_prefix_attach_pti.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_prefix_attach/cr_prefix_attach.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_htw_short.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_ph.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_regfile.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_twin_buffer.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_encoder_engine.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_fifo.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_sm_tlvp_top.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_sim_is.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_lut_long.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_htb_short.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_htw_long.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_core.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_st_builder.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_sch_update_stub.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_htw_stsg.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_htb.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_regsPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_lut.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_st_queue.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_is.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_compPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_htw_type_b.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_sa_enc_func_pipe.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_sm_deflate.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_st_sc.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_st_long.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_st_short.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_fifo_ctrl.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_sa_tlvp_top.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_htw_type_a.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_example_top.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_regfilePKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_seq_id_array.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_sc_short.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_htb_long.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_is_short.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_is_sorter.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_lut_short.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_stcl_builder.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_is_long.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_ism_catcher.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_sm.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_st.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_sq.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_sm_fifo.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_st_fsm.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_min_bits.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_sc_long.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_is_counter.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_reconstruct.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_htw_type_st.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_sa.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_sm_xp.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_huf_comp/cr_huf_comp_regs.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_htf_small_tables.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_fe_lfa_fifo.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_sdd_ld.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decompPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_lz77_pl.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_fe_lfa.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_htf_blt.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_hufd.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_fe_bhp_dflate.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_htf_predef_buf.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_fe.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_fe_tlvp.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_sdd_wf.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_fe_bhp.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_htf_hdr_fifo.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_be_frm_chk.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_regfilePKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_fe_fhp.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_htf_bct_sat_writer.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_htf_table_writer.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_regfile.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_sdd_ss.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_be.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_fe_data_aligner.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_htf_symtab_dec_retro.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_htf_symtab_dec_pipeline_UNUSED.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_core.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_fe_crc.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_sdd.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_lz77.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_unpacker.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_be_tlvp.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_htf.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_lz77_if.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_htf_symtab_dec_retro_huff.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_htf_symtab_dec.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_lz77_ep.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_lz77_do.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_sdd_dec_tables.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_lz77_ag.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_sdd_sp.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_lz77_bm.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_sch_update_stub.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_mtf.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_lz77_hb.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_regsPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_htf_array_inc.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_htf_svt_writer.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_htf_histogram.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_regs.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_be_fifos.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_xp10_decomp/cr_xp10_decomp_htf_slt_writer.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cceip_64_support/cr_cceip_64_support.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cceip_64_support/cr_cceip_64_support_core.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cceip_64_support/cr_cceip_64_support_regfilePKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cceip_64_support/cr_cceip_64_support_regsPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cceip_64_support/cr_cceip_64_support_regs.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cceip_64_support/cr_cceip_64_supportPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cceip_64_support/cr_cceip_64_support_regfile.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cceip_64_sa/cr_cceip_64_sa.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cceip_64_sa/cr_cceip_64_sa_regfilePKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cceip_64_sa/cr_cceip_64_saPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cceip_64_sa/cr_sa_counter.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cceip_64_sa/cr_cceip_64_sa_regfile.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cceip_64_sa/cr_cceip_64_sa_regs.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cceip_64_sa/cr_cceip_64_sa_regsPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_cceip_64_sa/cr_cceip_64_sa_core.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_su/cr_suPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_su/cr_su.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_su/cr_su_regfile.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_su/cr_su_regs.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_su/cr_su_ctl.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_su/cr_su_regsPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_su/cr_su_regfilePKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_su/cr_su_core.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/mem_wrappers/bimc_master/top/bimc_master.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_tile_x8.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_lpo_xN_negedge.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_regsPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_hb_xN.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_compPKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_core.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_tile_xN.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_mdl.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_exg.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_pmu.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_snode.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_clt_x16.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_tile_x16.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_regfile.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_lpo_x1.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_tile_x16_negedge.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_tile_x1.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_clt_0.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_match.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_tile_xN_negedge.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_lob_v3.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_lpt_xN.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_prc.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_lpt_x1.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_stree.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_regs.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_lec_v3.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_mob.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_cif.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_clt_x8.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_msm.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_tile_x8_negedge.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_regfilePKG.svp
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_pac_v3.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_lpo_xN.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_comp_tile_x8_shift3.sv
      /nvme0n1/gaoruihao/zipline/Project-Zipline-FPGA/rtl/cr_lz77_comp/cr_lz77_engine_v3.sv
    }
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top cr_cceip_64
    rt::set_parameter enableIncremental true
    rt::set_parameter markDebugPreservationLevel "enable"
    set rt::reportTiming false
    rt::set_parameter elaborateOnly false
    rt::set_parameter elaborateRtl false
    rt::set_parameter eliminateRedundantBitOperator true
    rt::set_parameter elaborateRtlOnlyFlow false
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter ramStyle auto
    rt::set_parameter merge_flipflops true
# MODE: 
    rt::set_parameter webTalkPath {./.Xil/Vivado-4942-qqq/wt}
    rt::set_parameter synthDebugLog false
    rt::set_parameter printModuleName false
    rt::set_parameter enableSplitFlowPath "./.Xil/Vivado-4942-qqq/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_synthesis -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    rt::HARTNDb_reportJobStats "Synthesis Optimization Runtime"
    rt::HARTNDb_stopSystemStats
    if { $rt::flowresult == 1 } { return -code error }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  rt::set_parameter helper_shm_key "" 
    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
