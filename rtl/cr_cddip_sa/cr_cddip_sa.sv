/*************************************************************************
*
* Copyright � Microsoft Corporation. All rights reserved.
* Copyright � Broadcom Inc. All rights reserved.
* Licensed under the MIT License.
*
*************************************************************************/













`include "cr_cddip_sa.vh"
`include "crPKG.svp"

module cr_cddip_sa

  (
  
  rbus_ring_o,
  
  clk, rst_n, scan_en, scan_mode, scan_rst_n, ovstb, lvm, mlvm,
  rbus_ring_i, cfg_start_addr, cfg_end_addr, isf_stat_events,
  osf_stat_events, xp10_decomp_lz77d_stat_events,
  xp10_decomp_hufd_stat_events, crcc0_stat_events, crcg0_stat_events,
  cg_stat_events, cddip_sa_module_id
  );

import cr_native_types::*;
import cr_error_codes::*;
  import cr_structs::*; // grh fix

  import cr_cddip_saPKG::*;
  import cr_cddip_sa_regsPKG::*;
  
  
  
  input         clk;
  input         rst_n; 

  
  
  
  input         scan_en;
  input         scan_mode;
  input         scan_rst_n;

  
  
  
  input         ovstb;
  input         lvm;
  input         mlvm;

  
  
  
  input         rbus_ring_t rbus_ring_i;
  output        rbus_ring_t rbus_ring_o;
   input [`N_RBUS_ADDR_BITS-1:0] cfg_start_addr;
   input [`N_RBUS_ADDR_BITS-1:0] cfg_end_addr;
   
  
  
  
  input [`ISF_STATS_WIDTH-1:0]            isf_stat_events;
  input osf_stats_t                       osf_stat_events;
  input [`LZ77D_STATS_WIDTH-1:0]          xp10_decomp_lz77d_stat_events;
  input [`HUFD_STATS_WIDTH-1:0]           xp10_decomp_hufd_stat_events;
  input [`CRCGC_STATS_WIDTH-1:0]          crcc0_stat_events;  
  input [`CRCGC_STATS_WIDTH-1:0]          crcg0_stat_events;
  input [`CG_STATS_WIDTH-1:0]             cg_stat_events;

  
  
  
  input [`MODULE_ID_WIDTH-1:0]            cddip_sa_module_id;


  logic [49:0]             sa_snapshot[63:0];
  logic [49:0]             sa_count[63:0];
  

  
  
  
  logic                 regs_sa_clear_live;     
  sa_ctrl_t             regs_sa_ctrl [63:0];    
  logic                 regs_sa_snap;           
  

  cr_cddip_sa_core u_cr_cddip_sa_core
  (
   
   
   .sa_snapshot                         (sa_snapshot),
   .sa_count                            (sa_count),
   
   .clk                                 (clk),
   .rst_n                               (rst_n),
   .scan_en                             (scan_en),
   .scan_mode                           (scan_mode),
   .scan_rst_n                          (scan_rst_n),
   .isf_stat_events                     (isf_stat_events[`ISF_STATS_WIDTH-1:0]),
   .osf_stat_events                     (osf_stat_events),
   .xp10_decomp_lz77d_stat_events       (xp10_decomp_lz77d_stat_events[`LZ77D_STATS_WIDTH-1:0]),
   .xp10_decomp_hufd_stat_events        (xp10_decomp_hufd_stat_events[`HUFD_STATS_WIDTH-1:0]),
   .crcc0_stat_events                   (crcc0_stat_events[`CRCGC_STATS_WIDTH-1:0]),
   .crcg0_stat_events                   (crcg0_stat_events[`CRCGC_STATS_WIDTH-1:0]),
   .cg_stat_events                      (cg_stat_events[`CG_STATS_WIDTH-1:0]),
   .cddip_sa_module_id                  (cddip_sa_module_id[`MODULE_ID_WIDTH-1:0]),
   .regs_sa_snap                        (regs_sa_snap),
   .regs_sa_clear_live                  (regs_sa_clear_live),
   .regs_sa_ctrl                        (regs_sa_ctrl));

  cr_cddip_sa_regfile
 
  u_cr_cddip_sa_regfile 
  (
   
   
   .rbus_ring_o                         (rbus_ring_o),
   .regs_sa_snap                        (regs_sa_snap),
   .regs_sa_clear_live                  (regs_sa_clear_live),
   .regs_sa_ctrl                        (regs_sa_ctrl),
   
   .clk                                 (clk),
   .rst_n                               (rst_n),
   .rbus_ring_i                         (rbus_ring_i),
   .cfg_start_addr                      (cfg_start_addr[`N_RBUS_ADDR_BITS-1:0]),
   .cfg_end_addr                        (cfg_end_addr[`N_RBUS_ADDR_BITS-1:0]),
   .sa_snapshot                         (sa_snapshot),
   .sa_count                            (sa_count));
  
endmodule











