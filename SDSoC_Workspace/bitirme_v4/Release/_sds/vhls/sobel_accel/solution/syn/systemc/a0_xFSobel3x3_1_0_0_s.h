// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _a0_xFSobel3x3_1_0_0_s_HH_
#define _a0_xFSobel3x3_1_0_0_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "a0_xFGradientX3x3_0_0_s.h"
#include "a0_xFGradientY3x3_0_0_s.h"

namespace ap_rtl {

struct a0_xFSobel3x3_1_0_0_s : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_lv<8> > src_buf1_0_V_read;
    sc_in< sc_lv<8> > src_buf1_1_V_read;
    sc_in< sc_lv<8> > src_buf1_2_V_read;
    sc_in< sc_lv<8> > src_buf2_0_V_read;
    sc_in< sc_lv<8> > src_buf2_2_V_read;
    sc_in< sc_lv<8> > src_buf3_0_V_read;
    sc_in< sc_lv<8> > src_buf3_1_V_read;
    sc_in< sc_lv<8> > src_buf3_2_V_read;
    sc_out< sc_lv<8> > ap_return_0;
    sc_out< sc_lv<8> > ap_return_1;
    sc_in< sc_logic > ap_ce;


    // Module declarations
    a0_xFSobel3x3_1_0_0_s(sc_module_name name);
    SC_HAS_PROCESS(a0_xFSobel3x3_1_0_0_s);

    ~a0_xFSobel3x3_1_0_0_s();

    sc_trace_file* mVcdFile;

    a0_xFGradientX3x3_0_0_s* grp_xFGradientX3x3_0_0_s_fu_72;
    a0_xFGradientY3x3_0_0_s* grp_xFGradientY3x3_0_0_s_fu_88;
    sc_signal< sc_lv<8> > grp_xFGradientX3x3_0_0_s_fu_72_ap_return;
    sc_signal< sc_logic > grp_xFGradientX3x3_0_0_s_fu_72_ap_ce;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0_ignore_call8;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1_ignore_call8;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<8> > grp_xFGradientY3x3_0_0_s_fu_88_ap_return;
    sc_signal< sc_logic > grp_xFGradientY3x3_0_0_s_fu_88_ap_ce;
    sc_signal< bool > ap_block_pp0_stage0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const bool ap_const_boolean_1;
    static const bool ap_const_boolean_0;
    // Thread declarations
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_state1_pp0_stage0_iter0_ignore_call8();
    void thread_ap_block_state2_pp0_stage0_iter1_ignore_call8();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_grp_xFGradientX3x3_0_0_s_fu_72_ap_ce();
    void thread_grp_xFGradientY3x3_0_0_s_fu_88_ap_ce();
};

}

using namespace ap_rtl;

#endif
