// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _cceip_kernel_HH_
#define _cceip_kernel_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "cceip_kernel_m00_axi_input_buffer.h"
#include "cceip_kernel_control_s_axi.h"
#include "cceip_kernel_m00_axi_m_axi.h"

namespace ap_rtl {

template<unsigned int C_M_AXI_M00_AXI_ADDR_WIDTH = 64,
         unsigned int C_M_AXI_M00_AXI_ID_WIDTH = 1,
         unsigned int C_M_AXI_M00_AXI_AWUSER_WIDTH = 1,
         unsigned int C_M_AXI_M00_AXI_DATA_WIDTH = 32,
         unsigned int C_M_AXI_M00_AXI_WUSER_WIDTH = 1,
         unsigned int C_M_AXI_M00_AXI_ARUSER_WIDTH = 1,
         unsigned int C_M_AXI_M00_AXI_RUSER_WIDTH = 1,
         unsigned int C_M_AXI_M00_AXI_BUSER_WIDTH = 1,
         unsigned int C_S_AXI_CONTROL_ADDR_WIDTH = 6,
         unsigned int C_S_AXI_CONTROL_DATA_WIDTH = 32>
struct cceip_kernel : public sc_module {
    // Port declarations 65
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_out< sc_logic > m_axi_m00_axi_AWVALID;
    sc_in< sc_logic > m_axi_m00_axi_AWREADY;
    sc_out< sc_uint<C_M_AXI_M00_AXI_ADDR_WIDTH> > m_axi_m00_axi_AWADDR;
    sc_out< sc_uint<C_M_AXI_M00_AXI_ID_WIDTH> > m_axi_m00_axi_AWID;
    sc_out< sc_lv<8> > m_axi_m00_axi_AWLEN;
    sc_out< sc_lv<3> > m_axi_m00_axi_AWSIZE;
    sc_out< sc_lv<2> > m_axi_m00_axi_AWBURST;
    sc_out< sc_lv<2> > m_axi_m00_axi_AWLOCK;
    sc_out< sc_lv<4> > m_axi_m00_axi_AWCACHE;
    sc_out< sc_lv<3> > m_axi_m00_axi_AWPROT;
    sc_out< sc_lv<4> > m_axi_m00_axi_AWQOS;
    sc_out< sc_lv<4> > m_axi_m00_axi_AWREGION;
    sc_out< sc_uint<C_M_AXI_M00_AXI_AWUSER_WIDTH> > m_axi_m00_axi_AWUSER;
    sc_out< sc_logic > m_axi_m00_axi_WVALID;
    sc_in< sc_logic > m_axi_m00_axi_WREADY;
    sc_out< sc_uint<C_M_AXI_M00_AXI_DATA_WIDTH> > m_axi_m00_axi_WDATA;
    sc_out< sc_uint<C_M_AXI_M00_AXI_DATA_WIDTH/8> > m_axi_m00_axi_WSTRB;
    sc_out< sc_logic > m_axi_m00_axi_WLAST;
    sc_out< sc_uint<C_M_AXI_M00_AXI_ID_WIDTH> > m_axi_m00_axi_WID;
    sc_out< sc_uint<C_M_AXI_M00_AXI_WUSER_WIDTH> > m_axi_m00_axi_WUSER;
    sc_out< sc_logic > m_axi_m00_axi_ARVALID;
    sc_in< sc_logic > m_axi_m00_axi_ARREADY;
    sc_out< sc_uint<C_M_AXI_M00_AXI_ADDR_WIDTH> > m_axi_m00_axi_ARADDR;
    sc_out< sc_uint<C_M_AXI_M00_AXI_ID_WIDTH> > m_axi_m00_axi_ARID;
    sc_out< sc_lv<8> > m_axi_m00_axi_ARLEN;
    sc_out< sc_lv<3> > m_axi_m00_axi_ARSIZE;
    sc_out< sc_lv<2> > m_axi_m00_axi_ARBURST;
    sc_out< sc_lv<2> > m_axi_m00_axi_ARLOCK;
    sc_out< sc_lv<4> > m_axi_m00_axi_ARCACHE;
    sc_out< sc_lv<3> > m_axi_m00_axi_ARPROT;
    sc_out< sc_lv<4> > m_axi_m00_axi_ARQOS;
    sc_out< sc_lv<4> > m_axi_m00_axi_ARREGION;
    sc_out< sc_uint<C_M_AXI_M00_AXI_ARUSER_WIDTH> > m_axi_m00_axi_ARUSER;
    sc_in< sc_logic > m_axi_m00_axi_RVALID;
    sc_out< sc_logic > m_axi_m00_axi_RREADY;
    sc_in< sc_uint<C_M_AXI_M00_AXI_DATA_WIDTH> > m_axi_m00_axi_RDATA;
    sc_in< sc_logic > m_axi_m00_axi_RLAST;
    sc_in< sc_uint<C_M_AXI_M00_AXI_ID_WIDTH> > m_axi_m00_axi_RID;
    sc_in< sc_uint<C_M_AXI_M00_AXI_RUSER_WIDTH> > m_axi_m00_axi_RUSER;
    sc_in< sc_lv<2> > m_axi_m00_axi_RRESP;
    sc_in< sc_logic > m_axi_m00_axi_BVALID;
    sc_out< sc_logic > m_axi_m00_axi_BREADY;
    sc_in< sc_lv<2> > m_axi_m00_axi_BRESP;
    sc_in< sc_uint<C_M_AXI_M00_AXI_ID_WIDTH> > m_axi_m00_axi_BID;
    sc_in< sc_uint<C_M_AXI_M00_AXI_BUSER_WIDTH> > m_axi_m00_axi_BUSER;
    sc_in< sc_logic > s_axi_control_AWVALID;
    sc_out< sc_logic > s_axi_control_AWREADY;
    sc_in< sc_uint<C_S_AXI_CONTROL_ADDR_WIDTH> > s_axi_control_AWADDR;
    sc_in< sc_logic > s_axi_control_WVALID;
    sc_out< sc_logic > s_axi_control_WREADY;
    sc_in< sc_uint<C_S_AXI_CONTROL_DATA_WIDTH> > s_axi_control_WDATA;
    sc_in< sc_uint<C_S_AXI_CONTROL_DATA_WIDTH/8> > s_axi_control_WSTRB;
    sc_in< sc_logic > s_axi_control_ARVALID;
    sc_out< sc_logic > s_axi_control_ARREADY;
    sc_in< sc_uint<C_S_AXI_CONTROL_ADDR_WIDTH> > s_axi_control_ARADDR;
    sc_out< sc_logic > s_axi_control_RVALID;
    sc_in< sc_logic > s_axi_control_RREADY;
    sc_out< sc_uint<C_S_AXI_CONTROL_DATA_WIDTH> > s_axi_control_RDATA;
    sc_out< sc_lv<2> > s_axi_control_RRESP;
    sc_out< sc_logic > s_axi_control_BVALID;
    sc_in< sc_logic > s_axi_control_BREADY;
    sc_out< sc_lv<2> > s_axi_control_BRESP;
    sc_out< sc_logic > interrupt;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_logic > ap_var_for_const6;
    sc_signal< sc_lv<1> > ap_var_for_const1;
    sc_signal< sc_lv<32> > ap_var_for_const2;
    sc_signal< sc_lv<3> > ap_var_for_const3;
    sc_signal< sc_lv<2> > ap_var_for_const4;
    sc_signal< sc_lv<4> > ap_var_for_const5;
    sc_signal< sc_lv<4> > ap_var_for_const7;


    // Module declarations
    cceip_kernel(sc_module_name name);
    SC_HAS_PROCESS(cceip_kernel);

    ~cceip_kernel();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    cceip_kernel_control_s_axi<C_S_AXI_CONTROL_ADDR_WIDTH,C_S_AXI_CONTROL_DATA_WIDTH>* cceip_kernel_control_s_axi_U;
    cceip_kernel_m00_axi_m_axi<0,32,64,5,16,16,16,16,C_M_AXI_M00_AXI_ID_WIDTH,C_M_AXI_M00_AXI_ADDR_WIDTH,C_M_AXI_M00_AXI_DATA_WIDTH,C_M_AXI_M00_AXI_AWUSER_WIDTH,C_M_AXI_M00_AXI_ARUSER_WIDTH,C_M_AXI_M00_AXI_WUSER_WIDTH,C_M_AXI_M00_AXI_RUSER_WIDTH,C_M_AXI_M00_AXI_BUSER_WIDTH,C_M_AXI_M00_AXI_USER_VALUE,C_M_AXI_M00_AXI_PROT_VALUE,C_M_AXI_M00_AXI_CACHE_VALUE>* cceip_kernel_m00_axi_m_axi_U;
    cceip_kernel_m00_axi_input_buffer* m00_axi_input_buffer_U;
    cceip_kernel_m00_axi_input_buffer* m00_axi_output_buffer_U;
    sc_signal< sc_logic > ap_rst_reg_2;
    sc_signal< sc_logic > ap_rst_reg_1;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_lv<18> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_lv<64> > input_size;
    sc_signal< sc_lv<64> > input_addr;
    sc_signal< sc_lv<64> > output_size_addr;
    sc_signal< sc_lv<64> > output_addr;
    sc_signal< sc_logic > m00_axi_blk_n_AR;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > m00_axi_blk_n_R;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln55_reg_291;
    sc_signal< sc_logic > m00_axi_blk_n_AW;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > m00_axi_blk_n_W;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter2;
    sc_signal< bool > ap_block_pp2_stage0;
    sc_signal< sc_lv<1> > icmp_ln63_reg_324;
    sc_signal< sc_lv<1> > icmp_ln63_reg_324_pp2_iter1_reg;
    sc_signal< sc_logic > m00_axi_blk_n_B;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_logic > m00_axi_AWVALID;
    sc_signal< sc_logic > m00_axi_AWREADY;
    sc_signal< sc_logic > m00_axi_WVALID;
    sc_signal< sc_logic > m00_axi_WREADY;
    sc_signal< sc_logic > m00_axi_ARVALID;
    sc_signal< sc_logic > m00_axi_ARREADY;
    sc_signal< sc_logic > m00_axi_RVALID;
    sc_signal< sc_logic > m00_axi_RREADY;
    sc_signal< sc_lv<32> > m00_axi_RDATA;
    sc_signal< sc_logic > m00_axi_RLAST;
    sc_signal< sc_lv<1> > m00_axi_RID;
    sc_signal< sc_lv<1> > m00_axi_RUSER;
    sc_signal< sc_lv<2> > m00_axi_RRESP;
    sc_signal< sc_logic > m00_axi_BVALID;
    sc_signal< sc_logic > m00_axi_BREADY;
    sc_signal< sc_lv<2> > m00_axi_BRESP;
    sc_signal< sc_lv<1> > m00_axi_BID;
    sc_signal< sc_lv<1> > m00_axi_BUSER;
    sc_signal< sc_lv<13> > phi_ln55_reg_172;
    sc_signal< sc_lv<13> > phi_ln55_reg_172_pp0_iter1_reg;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state11_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<13> > i_0_reg_184;
    sc_signal< sc_lv<13> > phi_ln63_reg_195;
    sc_signal< sc_lv<64> > m00_axi_addr_reg_284;
    sc_signal< sc_lv<1> > icmp_ln55_fu_226_p2;
    sc_signal< sc_lv<1> > icmp_ln55_reg_291_pp0_iter1_reg;
    sc_signal< sc_lv<13> > add_ln55_fu_232_p2;
    sc_signal< sc_lv<13> > add_ln55_reg_295;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<32> > m00_axi_addr_read_reg_300;
    sc_signal< sc_lv<1> > icmp_ln58_fu_243_p2;
    sc_signal< sc_lv<1> > icmp_ln58_reg_305;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< bool > ap_block_state13_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state14_pp1_stage0_iter1;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<13> > i_fu_249_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<64> > zext_ln59_fu_255_p1;
    sc_signal< sc_lv<64> > zext_ln59_reg_314;
    sc_signal< sc_lv<1> > icmp_ln63_fu_267_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp2_stage0;
    sc_signal< bool > ap_block_state16_pp2_stage0_iter0;
    sc_signal< bool > ap_block_state17_pp2_stage0_iter1;
    sc_signal< bool > ap_block_state18_pp2_stage0_iter2;
    sc_signal< bool > ap_block_state18_io;
    sc_signal< bool > ap_block_pp2_stage0_11001;
    sc_signal< sc_lv<13> > add_ln63_fu_273_p2;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter0;
    sc_signal< sc_lv<32> > m00_axi_output_buffer_q0;
    sc_signal< sc_lv<32> > m00_axi_output_buffer_load_reg_338;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter1;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state9;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state13;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< bool > ap_block_pp2_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp2_exit_iter0_state16;
    sc_signal< sc_lv<13> > m00_axi_input_buffer_address0;
    sc_signal< sc_logic > m00_axi_input_buffer_ce0;
    sc_signal< sc_logic > m00_axi_input_buffer_we0;
    sc_signal< sc_lv<32> > m00_axi_input_buffer_q0;
    sc_signal< sc_lv<13> > m00_axi_output_buffer_address0;
    sc_signal< sc_logic > m00_axi_output_buffer_ce0;
    sc_signal< sc_logic > m00_axi_output_buffer_we0;
    sc_signal< sc_lv<32> > m00_axi_output_buffer_d0;
    sc_signal< sc_lv<13> > ap_phi_mux_phi_ln55_phi_fu_176_p4;
    sc_signal< sc_lv<64> > zext_ln55_fu_238_p1;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_lv<64> > zext_ln63_fu_279_p1;
    sc_signal< sc_lv<64> > empty_fu_216_p1;
    sc_signal< bool > ap_block_pp2_stage0_01001;
    sc_signal< sc_lv<62> > input_addr1_fu_206_p4;
    sc_signal< sc_lv<18> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    sc_signal< sc_logic > ap_idle_pp2;
    sc_signal< sc_logic > ap_enable_pp2;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<18> ap_ST_fsm_state1;
    static const sc_lv<18> ap_ST_fsm_state2;
    static const sc_lv<18> ap_ST_fsm_state3;
    static const sc_lv<18> ap_ST_fsm_state4;
    static const sc_lv<18> ap_ST_fsm_state5;
    static const sc_lv<18> ap_ST_fsm_state6;
    static const sc_lv<18> ap_ST_fsm_state7;
    static const sc_lv<18> ap_ST_fsm_state8;
    static const sc_lv<18> ap_ST_fsm_pp0_stage0;
    static const sc_lv<18> ap_ST_fsm_state12;
    static const sc_lv<18> ap_ST_fsm_pp1_stage0;
    static const sc_lv<18> ap_ST_fsm_state15;
    static const sc_lv<18> ap_ST_fsm_pp2_stage0;
    static const sc_lv<18> ap_ST_fsm_state19;
    static const sc_lv<18> ap_ST_fsm_state20;
    static const sc_lv<18> ap_ST_fsm_state21;
    static const sc_lv<18> ap_ST_fsm_state22;
    static const sc_lv<18> ap_ST_fsm_state23;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_11;
    static const int C_S_AXI_DATA_WIDTH;
    static const int C_M_AXI_M00_AXI_USER_VALUE;
    static const int C_M_AXI_M00_AXI_PROT_VALUE;
    static const int C_M_AXI_M00_AXI_CACHE_VALUE;
    static const int C_M_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<13> ap_const_lv13_0;
    static const sc_lv<32> ap_const_lv32_1000;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<13> ap_const_lv13_1000;
    static const sc_lv<13> ap_const_lv13_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const6();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const3();
    void thread_ap_var_for_const4();
    void thread_ap_var_for_const5();
    void thread_ap_var_for_const7();
    void thread_ap_clk_no_reset_();
    void thread_add_ln55_fu_232_p2();
    void thread_add_ln63_fu_273_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_pp2_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state8();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_pp2_stage0();
    void thread_ap_block_pp2_stage0_01001();
    void thread_ap_block_pp2_stage0_11001();
    void thread_ap_block_pp2_stage0_subdone();
    void thread_ap_block_state10_pp0_stage0_iter1();
    void thread_ap_block_state11_pp0_stage0_iter2();
    void thread_ap_block_state13_pp1_stage0_iter0();
    void thread_ap_block_state14_pp1_stage0_iter1();
    void thread_ap_block_state16_pp2_stage0_iter0();
    void thread_ap_block_state17_pp2_stage0_iter1();
    void thread_ap_block_state18_io();
    void thread_ap_block_state18_pp2_stage0_iter2();
    void thread_ap_block_state9_pp0_stage0_iter0();
    void thread_ap_condition_pp0_exit_iter0_state9();
    void thread_ap_condition_pp1_exit_iter0_state13();
    void thread_ap_condition_pp2_exit_iter0_state16();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_pp1();
    void thread_ap_enable_pp2();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp1();
    void thread_ap_idle_pp2();
    void thread_ap_phi_mux_phi_ln55_phi_fu_176_p4();
    void thread_ap_ready();
    void thread_empty_fu_216_p1();
    void thread_i_fu_249_p2();
    void thread_icmp_ln55_fu_226_p2();
    void thread_icmp_ln58_fu_243_p2();
    void thread_icmp_ln63_fu_267_p2();
    void thread_input_addr1_fu_206_p4();
    void thread_m00_axi_ARVALID();
    void thread_m00_axi_AWVALID();
    void thread_m00_axi_BREADY();
    void thread_m00_axi_RREADY();
    void thread_m00_axi_WVALID();
    void thread_m00_axi_blk_n_AR();
    void thread_m00_axi_blk_n_AW();
    void thread_m00_axi_blk_n_B();
    void thread_m00_axi_blk_n_R();
    void thread_m00_axi_blk_n_W();
    void thread_m00_axi_input_buffer_address0();
    void thread_m00_axi_input_buffer_ce0();
    void thread_m00_axi_input_buffer_we0();
    void thread_m00_axi_output_buffer_address0();
    void thread_m00_axi_output_buffer_ce0();
    void thread_m00_axi_output_buffer_d0();
    void thread_m00_axi_output_buffer_we0();
    void thread_zext_ln55_fu_238_p1();
    void thread_zext_ln59_fu_255_p1();
    void thread_zext_ln63_fu_279_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif