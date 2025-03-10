-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.1
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity a0_Sobel is
port (
    p_src_mat_rows_read : IN STD_LOGIC_VECTOR (31 downto 0);
    p_src_mat_cols_read : IN STD_LOGIC_VECTOR (31 downto 0);
    p_src_mat_data_V_address0 : OUT STD_LOGIC_VECTOR (18 downto 0);
    p_src_mat_data_V_ce0 : OUT STD_LOGIC;
    p_src_mat_data_V_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    p_src_mat_data_V_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    p_src_mat_data_V_we0 : OUT STD_LOGIC;
    p_src_mat_data_V_address1 : OUT STD_LOGIC_VECTOR (18 downto 0);
    p_src_mat_data_V_ce1 : OUT STD_LOGIC;
    p_src_mat_data_V_d1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    p_src_mat_data_V_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    p_src_mat_data_V_we1 : OUT STD_LOGIC;
    p_dst_matx_rows_read : IN STD_LOGIC_VECTOR (31 downto 0);
    p_dst_matx_cols_read : IN STD_LOGIC_VECTOR (31 downto 0);
    p_dst_matx_data_V_address0 : OUT STD_LOGIC_VECTOR (18 downto 0);
    p_dst_matx_data_V_ce0 : OUT STD_LOGIC;
    p_dst_matx_data_V_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    p_dst_matx_data_V_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    p_dst_matx_data_V_we0 : OUT STD_LOGIC;
    p_dst_matx_data_V_address1 : OUT STD_LOGIC_VECTOR (18 downto 0);
    p_dst_matx_data_V_ce1 : OUT STD_LOGIC;
    p_dst_matx_data_V_d1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    p_dst_matx_data_V_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    p_dst_matx_data_V_we1 : OUT STD_LOGIC;
    p_dst_maty_cols_read : IN STD_LOGIC_VECTOR (31 downto 0);
    p_dst_maty_data_V_address0 : OUT STD_LOGIC_VECTOR (18 downto 0);
    p_dst_maty_data_V_ce0 : OUT STD_LOGIC;
    p_dst_maty_data_V_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    p_dst_maty_data_V_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    p_dst_maty_data_V_we0 : OUT STD_LOGIC;
    p_dst_maty_data_V_address1 : OUT STD_LOGIC_VECTOR (18 downto 0);
    p_dst_maty_data_V_ce1 : OUT STD_LOGIC;
    p_dst_maty_data_V_d1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    p_dst_maty_data_V_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    p_dst_maty_data_V_we1 : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    p_src_mat_rows_read_ap_vld : IN STD_LOGIC;
    p_src_mat_cols_read_ap_vld : IN STD_LOGIC;
    p_dst_matx_rows_read_ap_vld : IN STD_LOGIC;
    p_dst_matx_cols_read_ap_vld : IN STD_LOGIC;
    p_dst_maty_cols_read_ap_vld : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of a0_Sobel is 
    constant ap_const_lv19_0 : STD_LOGIC_VECTOR (18 downto 0) := "0000000000000000000";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_logic_1 : STD_LOGIC := '1';

    signal Sobel_Loop_1_proc374_U0_ap_start : STD_LOGIC;
    signal Sobel_Loop_1_proc374_U0_start_full_n : STD_LOGIC;
    signal Sobel_Loop_1_proc374_U0_ap_done : STD_LOGIC;
    signal Sobel_Loop_1_proc374_U0_ap_continue : STD_LOGIC;
    signal Sobel_Loop_1_proc374_U0_ap_idle : STD_LOGIC;
    signal Sobel_Loop_1_proc374_U0_ap_ready : STD_LOGIC;
    signal Sobel_Loop_1_proc374_U0_start_out : STD_LOGIC;
    signal Sobel_Loop_1_proc374_U0_start_write : STD_LOGIC;
    signal Sobel_Loop_1_proc374_U0_p_src_mat_data_V_address0 : STD_LOGIC_VECTOR (18 downto 0);
    signal Sobel_Loop_1_proc374_U0_p_src_mat_data_V_ce0 : STD_LOGIC;
    signal Sobel_Loop_1_proc374_U0_p_src_V_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal Sobel_Loop_1_proc374_U0_p_src_V_V_write : STD_LOGIC;
    signal Sobel_Loop_1_proc374_U0_p_src_mat_rows_read_out_din : STD_LOGIC_VECTOR (31 downto 0);
    signal Sobel_Loop_1_proc374_U0_p_src_mat_rows_read_out_write : STD_LOGIC;
    signal Sobel_Loop_1_proc374_U0_p_src_mat_cols_read_out_din : STD_LOGIC_VECTOR (31 downto 0);
    signal Sobel_Loop_1_proc374_U0_p_src_mat_cols_read_out_write : STD_LOGIC;
    signal Sobel_Loop_1_proc374_U0_p_dst_matx_rows_read_out_din : STD_LOGIC_VECTOR (31 downto 0);
    signal Sobel_Loop_1_proc374_U0_p_dst_matx_rows_read_out_write : STD_LOGIC;
    signal Sobel_Loop_1_proc374_U0_p_dst_matx_cols_read_out_din : STD_LOGIC_VECTOR (31 downto 0);
    signal Sobel_Loop_1_proc374_U0_p_dst_matx_cols_read_out_write : STD_LOGIC;
    signal Sobel_Loop_1_proc374_U0_p_dst_maty_cols_read_out_din : STD_LOGIC_VECTOR (31 downto 0);
    signal Sobel_Loop_1_proc374_U0_p_dst_maty_cols_read_out_write : STD_LOGIC;
    signal xFSobelFilter3x3_U0_ap_start : STD_LOGIC;
    signal xFSobelFilter3x3_U0_ap_done : STD_LOGIC;
    signal xFSobelFilter3x3_U0_ap_continue : STD_LOGIC;
    signal xFSobelFilter3x3_U0_ap_idle : STD_LOGIC;
    signal xFSobelFilter3x3_U0_ap_ready : STD_LOGIC;
    signal xFSobelFilter3x3_U0_p_src_mat_V_V_read : STD_LOGIC;
    signal xFSobelFilter3x3_U0_p_gradx_mat_V_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal xFSobelFilter3x3_U0_p_gradx_mat_V_V_write : STD_LOGIC;
    signal xFSobelFilter3x3_U0_p_grady_mat_V_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal xFSobelFilter3x3_U0_p_grady_mat_V_V_write : STD_LOGIC;
    signal xFSobelFilter3x3_U0_p_src_mat_rows_read_read : STD_LOGIC;
    signal xFSobelFilter3x3_U0_p_src_mat_cols_read_read : STD_LOGIC;
    signal Sobel_Loop_2_proc38_U0_ap_start : STD_LOGIC;
    signal Sobel_Loop_2_proc38_U0_ap_done : STD_LOGIC;
    signal Sobel_Loop_2_proc38_U0_ap_continue : STD_LOGIC;
    signal Sobel_Loop_2_proc38_U0_ap_idle : STD_LOGIC;
    signal Sobel_Loop_2_proc38_U0_ap_ready : STD_LOGIC;
    signal Sobel_Loop_2_proc38_U0_p_dst_matx_rows_read_read : STD_LOGIC;
    signal Sobel_Loop_2_proc38_U0_p_dst_matx_cols_read_read : STD_LOGIC;
    signal Sobel_Loop_2_proc38_U0_p_dstx_V_V_read : STD_LOGIC;
    signal Sobel_Loop_2_proc38_U0_p_dst_matx_data_V_address0 : STD_LOGIC_VECTOR (18 downto 0);
    signal Sobel_Loop_2_proc38_U0_p_dst_matx_data_V_ce0 : STD_LOGIC;
    signal Sobel_Loop_2_proc38_U0_p_dst_matx_data_V_we0 : STD_LOGIC;
    signal Sobel_Loop_2_proc38_U0_p_dst_matx_data_V_d0 : STD_LOGIC_VECTOR (7 downto 0);
    signal Sobel_Loop_2_proc38_U0_p_dst_maty_cols_read_read : STD_LOGIC;
    signal Sobel_Loop_2_proc38_U0_p_dsty_V_V_read : STD_LOGIC;
    signal Sobel_Loop_2_proc38_U0_p_dst_maty_data_V_address0 : STD_LOGIC_VECTOR (18 downto 0);
    signal Sobel_Loop_2_proc38_U0_p_dst_maty_data_V_ce0 : STD_LOGIC;
    signal Sobel_Loop_2_proc38_U0_p_dst_maty_data_V_we0 : STD_LOGIC;
    signal Sobel_Loop_2_proc38_U0_p_dst_maty_data_V_d0 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_sync_continue : STD_LOGIC;
    signal p_src_V_V_full_n : STD_LOGIC;
    signal p_src_V_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal p_src_V_V_empty_n : STD_LOGIC;
    signal p_src_mat_rows_read_c_full_n : STD_LOGIC;
    signal p_src_mat_rows_read_c_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal p_src_mat_rows_read_c_empty_n : STD_LOGIC;
    signal p_src_mat_cols_read_c_full_n : STD_LOGIC;
    signal p_src_mat_cols_read_c_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal p_src_mat_cols_read_c_empty_n : STD_LOGIC;
    signal p_dst_matx_rows_read_s_full_n : STD_LOGIC;
    signal p_dst_matx_rows_read_s_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal p_dst_matx_rows_read_s_empty_n : STD_LOGIC;
    signal p_dst_matx_cols_read_s_full_n : STD_LOGIC;
    signal p_dst_matx_cols_read_s_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal p_dst_matx_cols_read_s_empty_n : STD_LOGIC;
    signal p_dst_maty_cols_read_s_full_n : STD_LOGIC;
    signal p_dst_maty_cols_read_s_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal p_dst_maty_cols_read_s_empty_n : STD_LOGIC;
    signal p_dstx_V_V_full_n : STD_LOGIC;
    signal p_dstx_V_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal p_dstx_V_V_empty_n : STD_LOGIC;
    signal p_dsty_V_V_full_n : STD_LOGIC;
    signal p_dsty_V_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal p_dsty_V_V_empty_n : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal start_for_xFSobelFilter3x3_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_xFSobelFilter3x3_U0_full_n : STD_LOGIC;
    signal start_for_xFSobelFilter3x3_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_xFSobelFilter3x3_U0_empty_n : STD_LOGIC;
    signal start_for_Sobel_Loop_2_proc38_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_Sobel_Loop_2_proc38_U0_full_n : STD_LOGIC;
    signal start_for_Sobel_Loop_2_proc38_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_Sobel_Loop_2_proc38_U0_empty_n : STD_LOGIC;
    signal xFSobelFilter3x3_U0_start_full_n : STD_LOGIC;
    signal xFSobelFilter3x3_U0_start_write : STD_LOGIC;
    signal Sobel_Loop_2_proc38_U0_start_full_n : STD_LOGIC;
    signal Sobel_Loop_2_proc38_U0_start_write : STD_LOGIC;

    component a0_Sobel_Loop_1_proc374 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        p_src_mat_rows_read : IN STD_LOGIC_VECTOR (31 downto 0);
        p_src_mat_cols_read : IN STD_LOGIC_VECTOR (31 downto 0);
        p_src_mat_data_V_address0 : OUT STD_LOGIC_VECTOR (18 downto 0);
        p_src_mat_data_V_ce0 : OUT STD_LOGIC;
        p_src_mat_data_V_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
        p_src_V_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_src_V_V_full_n : IN STD_LOGIC;
        p_src_V_V_write : OUT STD_LOGIC;
        p_dst_matx_rows_read : IN STD_LOGIC_VECTOR (31 downto 0);
        p_dst_matx_cols_read : IN STD_LOGIC_VECTOR (31 downto 0);
        p_dst_maty_cols_read : IN STD_LOGIC_VECTOR (31 downto 0);
        p_src_mat_rows_read_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        p_src_mat_rows_read_out_full_n : IN STD_LOGIC;
        p_src_mat_rows_read_out_write : OUT STD_LOGIC;
        p_src_mat_cols_read_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        p_src_mat_cols_read_out_full_n : IN STD_LOGIC;
        p_src_mat_cols_read_out_write : OUT STD_LOGIC;
        p_dst_matx_rows_read_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        p_dst_matx_rows_read_out_full_n : IN STD_LOGIC;
        p_dst_matx_rows_read_out_write : OUT STD_LOGIC;
        p_dst_matx_cols_read_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        p_dst_matx_cols_read_out_full_n : IN STD_LOGIC;
        p_dst_matx_cols_read_out_write : OUT STD_LOGIC;
        p_dst_maty_cols_read_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        p_dst_maty_cols_read_out_full_n : IN STD_LOGIC;
        p_dst_maty_cols_read_out_write : OUT STD_LOGIC );
    end component;


    component a0_xFSobelFilter3x3 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        p_src_mat_V_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_src_mat_V_V_empty_n : IN STD_LOGIC;
        p_src_mat_V_V_read : OUT STD_LOGIC;
        p_gradx_mat_V_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_gradx_mat_V_V_full_n : IN STD_LOGIC;
        p_gradx_mat_V_V_write : OUT STD_LOGIC;
        p_grady_mat_V_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_grady_mat_V_V_full_n : IN STD_LOGIC;
        p_grady_mat_V_V_write : OUT STD_LOGIC;
        p_src_mat_rows_read_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        p_src_mat_rows_read_empty_n : IN STD_LOGIC;
        p_src_mat_rows_read_read : OUT STD_LOGIC;
        p_src_mat_cols_read_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        p_src_mat_cols_read_empty_n : IN STD_LOGIC;
        p_src_mat_cols_read_read : OUT STD_LOGIC );
    end component;


    component a0_Sobel_Loop_2_proc38 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        p_dst_matx_rows_read_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        p_dst_matx_rows_read_empty_n : IN STD_LOGIC;
        p_dst_matx_rows_read_read : OUT STD_LOGIC;
        p_dst_matx_cols_read_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        p_dst_matx_cols_read_empty_n : IN STD_LOGIC;
        p_dst_matx_cols_read_read : OUT STD_LOGIC;
        p_dstx_V_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_dstx_V_V_empty_n : IN STD_LOGIC;
        p_dstx_V_V_read : OUT STD_LOGIC;
        p_dst_matx_data_V_address0 : OUT STD_LOGIC_VECTOR (18 downto 0);
        p_dst_matx_data_V_ce0 : OUT STD_LOGIC;
        p_dst_matx_data_V_we0 : OUT STD_LOGIC;
        p_dst_matx_data_V_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_dst_maty_cols_read_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        p_dst_maty_cols_read_empty_n : IN STD_LOGIC;
        p_dst_maty_cols_read_read : OUT STD_LOGIC;
        p_dsty_V_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_dsty_V_V_empty_n : IN STD_LOGIC;
        p_dsty_V_V_read : OUT STD_LOGIC;
        p_dst_maty_data_V_address0 : OUT STD_LOGIC_VECTOR (18 downto 0);
        p_dst_maty_data_V_ce0 : OUT STD_LOGIC;
        p_dst_maty_data_V_we0 : OUT STD_LOGIC;
        p_dst_maty_data_V_d0 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;


    component a0_fifo_w8_d2_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (7 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (7 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component a0_fifo_w32_d2_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component a0_fifo_w32_d3_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component a0_start_for_xFSobelfYi IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component a0_start_for_Sobel_Lg8j IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    Sobel_Loop_1_proc374_U0 : component a0_Sobel_Loop_1_proc374
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => Sobel_Loop_1_proc374_U0_ap_start,
        start_full_n => Sobel_Loop_1_proc374_U0_start_full_n,
        ap_done => Sobel_Loop_1_proc374_U0_ap_done,
        ap_continue => Sobel_Loop_1_proc374_U0_ap_continue,
        ap_idle => Sobel_Loop_1_proc374_U0_ap_idle,
        ap_ready => Sobel_Loop_1_proc374_U0_ap_ready,
        start_out => Sobel_Loop_1_proc374_U0_start_out,
        start_write => Sobel_Loop_1_proc374_U0_start_write,
        p_src_mat_rows_read => p_src_mat_rows_read,
        p_src_mat_cols_read => p_src_mat_cols_read,
        p_src_mat_data_V_address0 => Sobel_Loop_1_proc374_U0_p_src_mat_data_V_address0,
        p_src_mat_data_V_ce0 => Sobel_Loop_1_proc374_U0_p_src_mat_data_V_ce0,
        p_src_mat_data_V_q0 => p_src_mat_data_V_q0,
        p_src_V_V_din => Sobel_Loop_1_proc374_U0_p_src_V_V_din,
        p_src_V_V_full_n => p_src_V_V_full_n,
        p_src_V_V_write => Sobel_Loop_1_proc374_U0_p_src_V_V_write,
        p_dst_matx_rows_read => p_dst_matx_rows_read,
        p_dst_matx_cols_read => p_dst_matx_cols_read,
        p_dst_maty_cols_read => p_dst_maty_cols_read,
        p_src_mat_rows_read_out_din => Sobel_Loop_1_proc374_U0_p_src_mat_rows_read_out_din,
        p_src_mat_rows_read_out_full_n => p_src_mat_rows_read_c_full_n,
        p_src_mat_rows_read_out_write => Sobel_Loop_1_proc374_U0_p_src_mat_rows_read_out_write,
        p_src_mat_cols_read_out_din => Sobel_Loop_1_proc374_U0_p_src_mat_cols_read_out_din,
        p_src_mat_cols_read_out_full_n => p_src_mat_cols_read_c_full_n,
        p_src_mat_cols_read_out_write => Sobel_Loop_1_proc374_U0_p_src_mat_cols_read_out_write,
        p_dst_matx_rows_read_out_din => Sobel_Loop_1_proc374_U0_p_dst_matx_rows_read_out_din,
        p_dst_matx_rows_read_out_full_n => p_dst_matx_rows_read_s_full_n,
        p_dst_matx_rows_read_out_write => Sobel_Loop_1_proc374_U0_p_dst_matx_rows_read_out_write,
        p_dst_matx_cols_read_out_din => Sobel_Loop_1_proc374_U0_p_dst_matx_cols_read_out_din,
        p_dst_matx_cols_read_out_full_n => p_dst_matx_cols_read_s_full_n,
        p_dst_matx_cols_read_out_write => Sobel_Loop_1_proc374_U0_p_dst_matx_cols_read_out_write,
        p_dst_maty_cols_read_out_din => Sobel_Loop_1_proc374_U0_p_dst_maty_cols_read_out_din,
        p_dst_maty_cols_read_out_full_n => p_dst_maty_cols_read_s_full_n,
        p_dst_maty_cols_read_out_write => Sobel_Loop_1_proc374_U0_p_dst_maty_cols_read_out_write);

    xFSobelFilter3x3_U0 : component a0_xFSobelFilter3x3
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => xFSobelFilter3x3_U0_ap_start,
        ap_done => xFSobelFilter3x3_U0_ap_done,
        ap_continue => xFSobelFilter3x3_U0_ap_continue,
        ap_idle => xFSobelFilter3x3_U0_ap_idle,
        ap_ready => xFSobelFilter3x3_U0_ap_ready,
        p_src_mat_V_V_dout => p_src_V_V_dout,
        p_src_mat_V_V_empty_n => p_src_V_V_empty_n,
        p_src_mat_V_V_read => xFSobelFilter3x3_U0_p_src_mat_V_V_read,
        p_gradx_mat_V_V_din => xFSobelFilter3x3_U0_p_gradx_mat_V_V_din,
        p_gradx_mat_V_V_full_n => p_dstx_V_V_full_n,
        p_gradx_mat_V_V_write => xFSobelFilter3x3_U0_p_gradx_mat_V_V_write,
        p_grady_mat_V_V_din => xFSobelFilter3x3_U0_p_grady_mat_V_V_din,
        p_grady_mat_V_V_full_n => p_dsty_V_V_full_n,
        p_grady_mat_V_V_write => xFSobelFilter3x3_U0_p_grady_mat_V_V_write,
        p_src_mat_rows_read_dout => p_src_mat_rows_read_c_dout,
        p_src_mat_rows_read_empty_n => p_src_mat_rows_read_c_empty_n,
        p_src_mat_rows_read_read => xFSobelFilter3x3_U0_p_src_mat_rows_read_read,
        p_src_mat_cols_read_dout => p_src_mat_cols_read_c_dout,
        p_src_mat_cols_read_empty_n => p_src_mat_cols_read_c_empty_n,
        p_src_mat_cols_read_read => xFSobelFilter3x3_U0_p_src_mat_cols_read_read);

    Sobel_Loop_2_proc38_U0 : component a0_Sobel_Loop_2_proc38
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => Sobel_Loop_2_proc38_U0_ap_start,
        ap_done => Sobel_Loop_2_proc38_U0_ap_done,
        ap_continue => Sobel_Loop_2_proc38_U0_ap_continue,
        ap_idle => Sobel_Loop_2_proc38_U0_ap_idle,
        ap_ready => Sobel_Loop_2_proc38_U0_ap_ready,
        p_dst_matx_rows_read_dout => p_dst_matx_rows_read_s_dout,
        p_dst_matx_rows_read_empty_n => p_dst_matx_rows_read_s_empty_n,
        p_dst_matx_rows_read_read => Sobel_Loop_2_proc38_U0_p_dst_matx_rows_read_read,
        p_dst_matx_cols_read_dout => p_dst_matx_cols_read_s_dout,
        p_dst_matx_cols_read_empty_n => p_dst_matx_cols_read_s_empty_n,
        p_dst_matx_cols_read_read => Sobel_Loop_2_proc38_U0_p_dst_matx_cols_read_read,
        p_dstx_V_V_dout => p_dstx_V_V_dout,
        p_dstx_V_V_empty_n => p_dstx_V_V_empty_n,
        p_dstx_V_V_read => Sobel_Loop_2_proc38_U0_p_dstx_V_V_read,
        p_dst_matx_data_V_address0 => Sobel_Loop_2_proc38_U0_p_dst_matx_data_V_address0,
        p_dst_matx_data_V_ce0 => Sobel_Loop_2_proc38_U0_p_dst_matx_data_V_ce0,
        p_dst_matx_data_V_we0 => Sobel_Loop_2_proc38_U0_p_dst_matx_data_V_we0,
        p_dst_matx_data_V_d0 => Sobel_Loop_2_proc38_U0_p_dst_matx_data_V_d0,
        p_dst_maty_cols_read_dout => p_dst_maty_cols_read_s_dout,
        p_dst_maty_cols_read_empty_n => p_dst_maty_cols_read_s_empty_n,
        p_dst_maty_cols_read_read => Sobel_Loop_2_proc38_U0_p_dst_maty_cols_read_read,
        p_dsty_V_V_dout => p_dsty_V_V_dout,
        p_dsty_V_V_empty_n => p_dsty_V_V_empty_n,
        p_dsty_V_V_read => Sobel_Loop_2_proc38_U0_p_dsty_V_V_read,
        p_dst_maty_data_V_address0 => Sobel_Loop_2_proc38_U0_p_dst_maty_data_V_address0,
        p_dst_maty_data_V_ce0 => Sobel_Loop_2_proc38_U0_p_dst_maty_data_V_ce0,
        p_dst_maty_data_V_we0 => Sobel_Loop_2_proc38_U0_p_dst_maty_data_V_we0,
        p_dst_maty_data_V_d0 => Sobel_Loop_2_proc38_U0_p_dst_maty_data_V_d0);

    p_src_V_V_U : component a0_fifo_w8_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Sobel_Loop_1_proc374_U0_p_src_V_V_din,
        if_full_n => p_src_V_V_full_n,
        if_write => Sobel_Loop_1_proc374_U0_p_src_V_V_write,
        if_dout => p_src_V_V_dout,
        if_empty_n => p_src_V_V_empty_n,
        if_read => xFSobelFilter3x3_U0_p_src_mat_V_V_read);

    p_src_mat_rows_read_c_U : component a0_fifo_w32_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Sobel_Loop_1_proc374_U0_p_src_mat_rows_read_out_din,
        if_full_n => p_src_mat_rows_read_c_full_n,
        if_write => Sobel_Loop_1_proc374_U0_p_src_mat_rows_read_out_write,
        if_dout => p_src_mat_rows_read_c_dout,
        if_empty_n => p_src_mat_rows_read_c_empty_n,
        if_read => xFSobelFilter3x3_U0_p_src_mat_rows_read_read);

    p_src_mat_cols_read_c_U : component a0_fifo_w32_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Sobel_Loop_1_proc374_U0_p_src_mat_cols_read_out_din,
        if_full_n => p_src_mat_cols_read_c_full_n,
        if_write => Sobel_Loop_1_proc374_U0_p_src_mat_cols_read_out_write,
        if_dout => p_src_mat_cols_read_c_dout,
        if_empty_n => p_src_mat_cols_read_c_empty_n,
        if_read => xFSobelFilter3x3_U0_p_src_mat_cols_read_read);

    p_dst_matx_rows_read_s_U : component a0_fifo_w32_d3_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Sobel_Loop_1_proc374_U0_p_dst_matx_rows_read_out_din,
        if_full_n => p_dst_matx_rows_read_s_full_n,
        if_write => Sobel_Loop_1_proc374_U0_p_dst_matx_rows_read_out_write,
        if_dout => p_dst_matx_rows_read_s_dout,
        if_empty_n => p_dst_matx_rows_read_s_empty_n,
        if_read => Sobel_Loop_2_proc38_U0_p_dst_matx_rows_read_read);

    p_dst_matx_cols_read_s_U : component a0_fifo_w32_d3_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Sobel_Loop_1_proc374_U0_p_dst_matx_cols_read_out_din,
        if_full_n => p_dst_matx_cols_read_s_full_n,
        if_write => Sobel_Loop_1_proc374_U0_p_dst_matx_cols_read_out_write,
        if_dout => p_dst_matx_cols_read_s_dout,
        if_empty_n => p_dst_matx_cols_read_s_empty_n,
        if_read => Sobel_Loop_2_proc38_U0_p_dst_matx_cols_read_read);

    p_dst_maty_cols_read_s_U : component a0_fifo_w32_d3_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Sobel_Loop_1_proc374_U0_p_dst_maty_cols_read_out_din,
        if_full_n => p_dst_maty_cols_read_s_full_n,
        if_write => Sobel_Loop_1_proc374_U0_p_dst_maty_cols_read_out_write,
        if_dout => p_dst_maty_cols_read_s_dout,
        if_empty_n => p_dst_maty_cols_read_s_empty_n,
        if_read => Sobel_Loop_2_proc38_U0_p_dst_maty_cols_read_read);

    p_dstx_V_V_U : component a0_fifo_w8_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => xFSobelFilter3x3_U0_p_gradx_mat_V_V_din,
        if_full_n => p_dstx_V_V_full_n,
        if_write => xFSobelFilter3x3_U0_p_gradx_mat_V_V_write,
        if_dout => p_dstx_V_V_dout,
        if_empty_n => p_dstx_V_V_empty_n,
        if_read => Sobel_Loop_2_proc38_U0_p_dstx_V_V_read);

    p_dsty_V_V_U : component a0_fifo_w8_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => xFSobelFilter3x3_U0_p_grady_mat_V_V_din,
        if_full_n => p_dsty_V_V_full_n,
        if_write => xFSobelFilter3x3_U0_p_grady_mat_V_V_write,
        if_dout => p_dsty_V_V_dout,
        if_empty_n => p_dsty_V_V_empty_n,
        if_read => Sobel_Loop_2_proc38_U0_p_dsty_V_V_read);

    start_for_xFSobelfYi_U : component a0_start_for_xFSobelfYi
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_xFSobelFilter3x3_U0_din,
        if_full_n => start_for_xFSobelFilter3x3_U0_full_n,
        if_write => Sobel_Loop_1_proc374_U0_start_write,
        if_dout => start_for_xFSobelFilter3x3_U0_dout,
        if_empty_n => start_for_xFSobelFilter3x3_U0_empty_n,
        if_read => xFSobelFilter3x3_U0_ap_ready);

    start_for_Sobel_Lg8j_U : component a0_start_for_Sobel_Lg8j
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_Sobel_Loop_2_proc38_U0_din,
        if_full_n => start_for_Sobel_Loop_2_proc38_U0_full_n,
        if_write => Sobel_Loop_1_proc374_U0_start_write,
        if_dout => start_for_Sobel_Loop_2_proc38_U0_dout,
        if_empty_n => start_for_Sobel_Loop_2_proc38_U0_empty_n,
        if_read => Sobel_Loop_2_proc38_U0_ap_ready);




    Sobel_Loop_1_proc374_U0_ap_continue <= ap_const_logic_1;
    Sobel_Loop_1_proc374_U0_ap_start <= ap_start;
    Sobel_Loop_1_proc374_U0_start_full_n <= (start_for_xFSobelFilter3x3_U0_full_n and start_for_Sobel_Loop_2_proc38_U0_full_n);
    Sobel_Loop_2_proc38_U0_ap_continue <= ap_continue;
    Sobel_Loop_2_proc38_U0_ap_start <= start_for_Sobel_Loop_2_proc38_U0_empty_n;
    Sobel_Loop_2_proc38_U0_start_full_n <= ap_const_logic_1;
    Sobel_Loop_2_proc38_U0_start_write <= ap_const_logic_0;
    ap_done <= Sobel_Loop_2_proc38_U0_ap_done;
    ap_idle <= (xFSobelFilter3x3_U0_ap_idle and Sobel_Loop_2_proc38_U0_ap_idle and Sobel_Loop_1_proc374_U0_ap_idle);
    ap_ready <= Sobel_Loop_1_proc374_U0_ap_ready;
    ap_sync_continue <= ap_continue;
    ap_sync_done <= Sobel_Loop_2_proc38_U0_ap_done;
    ap_sync_ready <= Sobel_Loop_1_proc374_U0_ap_ready;
    p_dst_matx_data_V_address0 <= Sobel_Loop_2_proc38_U0_p_dst_matx_data_V_address0;
    p_dst_matx_data_V_address1 <= ap_const_lv19_0;
    p_dst_matx_data_V_ce0 <= Sobel_Loop_2_proc38_U0_p_dst_matx_data_V_ce0;
    p_dst_matx_data_V_ce1 <= ap_const_logic_0;
    p_dst_matx_data_V_d0 <= Sobel_Loop_2_proc38_U0_p_dst_matx_data_V_d0;
    p_dst_matx_data_V_d1 <= ap_const_lv8_0;
    p_dst_matx_data_V_we0 <= Sobel_Loop_2_proc38_U0_p_dst_matx_data_V_we0;
    p_dst_matx_data_V_we1 <= ap_const_logic_0;
    p_dst_maty_data_V_address0 <= Sobel_Loop_2_proc38_U0_p_dst_maty_data_V_address0;
    p_dst_maty_data_V_address1 <= ap_const_lv19_0;
    p_dst_maty_data_V_ce0 <= Sobel_Loop_2_proc38_U0_p_dst_maty_data_V_ce0;
    p_dst_maty_data_V_ce1 <= ap_const_logic_0;
    p_dst_maty_data_V_d0 <= Sobel_Loop_2_proc38_U0_p_dst_maty_data_V_d0;
    p_dst_maty_data_V_d1 <= ap_const_lv8_0;
    p_dst_maty_data_V_we0 <= Sobel_Loop_2_proc38_U0_p_dst_maty_data_V_we0;
    p_dst_maty_data_V_we1 <= ap_const_logic_0;
    p_src_mat_data_V_address0 <= Sobel_Loop_1_proc374_U0_p_src_mat_data_V_address0;
    p_src_mat_data_V_address1 <= ap_const_lv19_0;
    p_src_mat_data_V_ce0 <= Sobel_Loop_1_proc374_U0_p_src_mat_data_V_ce0;
    p_src_mat_data_V_ce1 <= ap_const_logic_0;
    p_src_mat_data_V_d0 <= ap_const_lv8_0;
    p_src_mat_data_V_d1 <= ap_const_lv8_0;
    p_src_mat_data_V_we0 <= ap_const_logic_0;
    p_src_mat_data_V_we1 <= ap_const_logic_0;
    start_for_Sobel_Loop_2_proc38_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_xFSobelFilter3x3_U0_din <= (0=>ap_const_logic_1, others=>'-');
    xFSobelFilter3x3_U0_ap_continue <= ap_const_logic_1;
    xFSobelFilter3x3_U0_ap_start <= start_for_xFSobelFilter3x3_U0_empty_n;
    xFSobelFilter3x3_U0_start_full_n <= ap_const_logic_1;
    xFSobelFilter3x3_U0_start_write <= ap_const_logic_0;
end behav;
