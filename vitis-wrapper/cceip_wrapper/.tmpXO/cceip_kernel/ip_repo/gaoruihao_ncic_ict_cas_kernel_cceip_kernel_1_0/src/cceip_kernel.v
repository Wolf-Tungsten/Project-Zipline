// This is a generated file. Use and modify at your own risk.
//////////////////////////////////////////////////////////////////////////////// 
// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1 ns / 1 ps
// Top level of the kernel. Do not modify module name, parameters or ports.
module cceip_kernel #(
  parameter integer C_S_AXI_CONTROL_ADDR_WIDTH = 12,
  parameter integer C_S_AXI_CONTROL_DATA_WIDTH = 32,
  parameter integer C_M00_AXI_ADDR_WIDTH       = 64,
  parameter integer C_M00_AXI_DATA_WIDTH       = 64
)
(
  // System Signals
  input  wire                                    ap_clk               ,
  input  wire                                    ap_rst_n             ,
  //  Note: A minimum subset of AXI4 memory mapped signals are declared.  AXI
  // signals omitted from these interfaces are automatically inferred with the
  // optimal values for Xilinx accleration platforms.  This allows Xilinx AXI4 Interconnects
  // within the system to be optimized by removing logic for AXI4 protocol
  // features that are not necessary. When adapting AXI4 masters within the RTL
  // kernel that have signals not declared below, it is suitable to add the
  // signals to the declarations below to connect them to the AXI4 Master.
  // 
  // List of ommited signals - effect
  // -------------------------------
  // ID - Transaction ID are used for multithreading and out of order
  // transactions.  This increases complexity. This saves logic and increases Fmax
  // in the system when ommited.
  // SIZE - Default value is log2(data width in bytes). Needed for subsize bursts.
  // This saves logic and increases Fmax in the system when ommited.
  // BURST - Default value (0b01) is incremental.  Wrap and fixed bursts are not
  // recommended. This saves logic and increases Fmax in the system when ommited.
  // LOCK - Not supported in AXI4
  // CACHE - Default value (0b0011) allows modifiable transactions. No benefit to
  // changing this.
  // PROT - Has no effect in current acceleration platforms.
  // QOS - Has no effect in current acceleration platforms.
  // REGION - Has no effect in current acceleration platforms.
  // USER - Has no effect in current acceleration platforms.
  // RESP - Not useful in most acceleration platforms.
  // 
  // AXI4 master interface m00_axi
  output wire                                    m00_axi_awvalid      ,
  input  wire                                    m00_axi_awready      ,
  output wire [C_M00_AXI_ADDR_WIDTH-1:0]         m00_axi_awaddr       ,
  output wire [8-1:0]                            m00_axi_awlen        ,
  output wire                                    m00_axi_wvalid       ,
  input  wire                                    m00_axi_wready       ,
  output wire [C_M00_AXI_DATA_WIDTH-1:0]         m00_axi_wdata        ,
  output wire [C_M00_AXI_DATA_WIDTH/8-1:0]       m00_axi_wstrb        ,
  output wire                                    m00_axi_wlast        ,
  input  wire                                    m00_axi_bvalid       ,
  output wire                                    m00_axi_bready       ,
  output wire                                    m00_axi_arvalid      ,
  input  wire                                    m00_axi_arready      ,
  output wire [C_M00_AXI_ADDR_WIDTH-1:0]         m00_axi_araddr       ,
  output wire [8-1:0]                            m00_axi_arlen        ,
  input  wire                                    m00_axi_rvalid       ,
  output wire                                    m00_axi_rready       ,
  input  wire [C_M00_AXI_DATA_WIDTH-1:0]         m00_axi_rdata        ,
  input  wire                                    m00_axi_rlast        ,
  // AXI4-Lite slave interface
  input  wire                                    s_axi_control_awvalid,
  output wire                                    s_axi_control_awready,
  input  wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0]   s_axi_control_awaddr ,
  input  wire                                    s_axi_control_wvalid ,
  output wire                                    s_axi_control_wready ,
  input  wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0]   s_axi_control_wdata  ,
  input  wire [C_S_AXI_CONTROL_DATA_WIDTH/8-1:0] s_axi_control_wstrb  ,
  input  wire                                    s_axi_control_arvalid,
  output wire                                    s_axi_control_arready,
  input  wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0]   s_axi_control_araddr ,
  output wire                                    s_axi_control_rvalid ,
  input  wire                                    s_axi_control_rready ,
  output wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0]   s_axi_control_rdata  ,
  output wire [2-1:0]                            s_axi_control_rresp  ,
  output wire                                    s_axi_control_bvalid ,
  input  wire                                    s_axi_control_bready ,
  output wire [2-1:0]                            s_axi_control_bresp  ,
  output wire                                    interrupt            
);

///////////////////////////////////////////////////////////////////////////////
// Local Parameters
///////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
// Wires and Variables
///////////////////////////////////////////////////////////////////////////////
(* DONT_TOUCH = "yes" *)
reg                                 areset                         = 1'b0;
wire                                ap_start                      ;
wire                                ap_idle                       ;
wire                                ap_done                       ;
wire                                ap_ready                      ;
wire [64-1:0]                       input_size                    ;
wire [64-1:0]                       input_addr                    ;
wire [64-1:0]                       output_size_addr              ;
wire [64-1:0]                       output_addr                   ;

// Register and invert reset signal.
always @(posedge ap_clk) begin
  areset <= ~ap_rst_n;
end

///////////////////////////////////////////////////////////////////////////////
// Begin control interface RTL.  Modifying not recommended.
///////////////////////////////////////////////////////////////////////////////


// AXI4-Lite slave interface
cceip_kernel_control_s_axi #(
  .C_S_AXI_ADDR_WIDTH ( C_S_AXI_CONTROL_ADDR_WIDTH ),
  .C_S_AXI_DATA_WIDTH ( C_S_AXI_CONTROL_DATA_WIDTH )
)
inst_control_s_axi (
  .ACLK             ( ap_clk                ),
  .ARESET           ( areset                ),
  .ACLK_EN          ( 1'b1                  ),
  .AWVALID          ( s_axi_control_awvalid ),
  .AWREADY          ( s_axi_control_awready ),
  .AWADDR           ( s_axi_control_awaddr  ),
  .WVALID           ( s_axi_control_wvalid  ),
  .WREADY           ( s_axi_control_wready  ),
  .WDATA            ( s_axi_control_wdata   ),
  .WSTRB            ( s_axi_control_wstrb   ),
  .ARVALID          ( s_axi_control_arvalid ),
  .ARREADY          ( s_axi_control_arready ),
  .ARADDR           ( s_axi_control_araddr  ),
  .RVALID           ( s_axi_control_rvalid  ),
  .RREADY           ( s_axi_control_rready  ),
  .RDATA            ( s_axi_control_rdata   ),
  .RRESP            ( s_axi_control_rresp   ),
  .BVALID           ( s_axi_control_bvalid  ),
  .BREADY           ( s_axi_control_bready  ),
  .BRESP            ( s_axi_control_bresp   ),
  .interrupt        ( interrupt             ),
  .ap_start         ( ap_start              ),
  .ap_done          ( ap_done               ),
  .ap_ready         ( ap_ready              ),
  .ap_idle          ( ap_idle               ),
  .input_size       ( input_size            ),
  .input_addr       ( input_addr            ),
  .output_size_addr ( output_size_addr      ),
  .output_addr      ( output_addr           )
);

///////////////////////////////////////////////////////////////////////////////
// Add kernel logic here.  Modify/remove example code as necessary.
///////////////////////////////////////////////////////////////////////////////


cceip_kernel_core #(
  .C_M00_AXI_ADDR_WIDTH ( C_M00_AXI_ADDR_WIDTH ),
  .C_M00_AXI_DATA_WIDTH ( C_M00_AXI_DATA_WIDTH ),
  .C_XFER_SIZE_WIDTH ( 64 )
)
inst_core (
  .ap_clk           ( ap_clk           ),
  .areset           ( areset           ),
  .kernel_clk       ( ap_clk           ),
  .kernel_rst       ( areset           ),
  .m00_axi_awvalid  ( m00_axi_awvalid  ),
  .m00_axi_awready  ( m00_axi_awready  ),
  .m00_axi_awaddr   ( m00_axi_awaddr   ),
  .m00_axi_awlen    ( m00_axi_awlen    ),
  .m00_axi_wvalid   ( m00_axi_wvalid   ),
  .m00_axi_wready   ( m00_axi_wready   ),
  .m00_axi_wdata    ( m00_axi_wdata    ),
  .m00_axi_wstrb    ( m00_axi_wstrb    ),
  .m00_axi_wlast    ( m00_axi_wlast    ),
  .m00_axi_bvalid   ( m00_axi_bvalid   ),
  .m00_axi_bready   ( m00_axi_bready   ),
  .m00_axi_arvalid  ( m00_axi_arvalid  ),
  .m00_axi_arready  ( m00_axi_arready  ),
  .m00_axi_araddr   ( m00_axi_araddr   ),
  .m00_axi_arlen    ( m00_axi_arlen    ),
  .m00_axi_rvalid   ( m00_axi_rvalid   ),
  .m00_axi_rready   ( m00_axi_rready   ),
  .m00_axi_rdata    ( m00_axi_rdata    ),
  .m00_axi_rlast    ( m00_axi_rlast    ),
  .ap_start         ( ap_start         ),
  .ap_done          ( ap_done          ),
  .ap_idle          ( ap_idle          ),
  .ap_ready         ( ap_ready         ),
  .input_size       ( input_size       ),
  .input_addr       ( input_addr       ),
  .output_size_addr ( output_size_addr ),
  .output_addr      ( output_addr      )
);

endmodule
`default_nettype wire
