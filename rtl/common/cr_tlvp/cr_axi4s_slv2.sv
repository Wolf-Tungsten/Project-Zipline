/*************************************************************************
*
* Copyright � Microsoft Corporation. All rights reserved.
* Copyright � Broadcom Inc. All rights reserved.
* Licensed under the MIT License.
*
*************************************************************************/




















module cr_axi4s_slv2
  
  (
  
  axi4s_ib_out, axi4s_slv_out, axi4s_slv_empty, axi4s_slv_aempty,
  overflow,
  
  clk, rst_n, axi4s_ib_in, axi4s_slv_rd
  );

import cr_native_types::*;
import cr_error_codes::*;
  import cr_structs::*; // grh fix
  
  
  
  
  parameter N_ENTRIES    = 16;
  parameter N_AFULL_VAL  = 1;
  parameter N_AEMPTY_VAL = 1;
  
    
  
  
  
  localparam N_DATA_BITS = $bits(axi4s_dp_bus_t);
  
  
  
  
  input                  clk;
  input                  rst_n; 

  
  
  
  input  axi4s_dp_bus_t axi4s_ib_in;
  output axi4s_dp_rdy_t axi4s_ib_out;
    
  
  
  
  input                 axi4s_slv_rd;
  output axi4s_dp_bus_t axi4s_slv_out;
  output                axi4s_slv_empty;
  output                axi4s_slv_aempty;
  
  
  
  
  output                overflow;
  
  
  axi4s_dp_bus_t axi_datain;

  logic [N_DATA_BITS-1:0]     axi4s_slv_datain;
  logic                       axi4s_slv_wen ;
  
  
  
  logic                 axi4s_slv_afull;        
  logic                 axi4s_slv_full;         
  
  
  assign axi4s_ib_out.tready = ~axi4s_slv_afull;
  
  always @(posedge clk or negedge rst_n) begin
    if (~rst_n) 
      begin
        axi4s_slv_datain  <= {N_DATA_BITS{1'b0}};
        axi4s_slv_wen <= 1'b0;
      end
    else 
      begin
        axi4s_slv_datain <= axi4s_ib_in ;
         axi4s_slv_wen <= axi4s_ib_in.tvalid & axi4s_ib_out.tready;
      end
   end
  
 
  
  
  
  
  
  cr_fifo_wrap3 # 
    (
     
     .N_DATA_BITS          (N_DATA_BITS),
     .N_ENTRIES            (N_ENTRIES),
     .N_AFULL_VAL          (N_AFULL_VAL),
     .N_AEMPTY_VAL         (N_AEMPTY_VAL))
  u_cr_fifo_wrap1                         
    (
     
     .full                              (axi4s_slv_full),        
     .afull                             (axi4s_slv_afull),       
     .rdata                             (axi4s_slv_out),         
     .empty                             (axi4s_slv_empty),       
     .aempty                            (axi4s_slv_aempty),      
     .overflow                          (overflow),
     
     .clk                               (clk),                   
     .rst_n                             (rst_n),                 
     .wdata                             (axi4s_slv_datain),      
     .wen                               (axi4s_slv_wen),         
     .ren                               (axi4s_slv_rd));          



endmodule












