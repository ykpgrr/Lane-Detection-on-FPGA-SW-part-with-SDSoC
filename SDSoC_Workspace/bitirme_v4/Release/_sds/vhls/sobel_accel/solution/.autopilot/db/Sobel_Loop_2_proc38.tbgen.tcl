set moduleName Sobel_Loop_2_proc38
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {Sobel_Loop_2_proc38}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_dst_matx_rows_read int 32 regular {fifo 0}  }
	{ p_dst_matx_cols_read int 32 regular {fifo 0}  }
	{ p_dstx_V_V int 8 regular {fifo 0 volatile }  }
	{ p_dst_matx_data_V int 8 regular {array 307200 { 0 3 } 0 1 }  }
	{ p_dst_maty_cols_read int 32 regular {fifo 0}  }
	{ p_dsty_V_V int 8 regular {fifo 0 volatile }  }
	{ p_dst_maty_data_V int 8 regular {array 307200 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_dst_matx_rows_read", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst_matx_cols_read", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_dstx_V_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst_matx_data_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_dst_maty_cols_read", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_dsty_V_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst_maty_data_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_dst_matx_rows_read_dout sc_in sc_lv 32 signal 0 } 
	{ p_dst_matx_rows_read_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_dst_matx_rows_read_read sc_out sc_logic 1 signal 0 } 
	{ p_dst_matx_cols_read_dout sc_in sc_lv 32 signal 1 } 
	{ p_dst_matx_cols_read_empty_n sc_in sc_logic 1 signal 1 } 
	{ p_dst_matx_cols_read_read sc_out sc_logic 1 signal 1 } 
	{ p_dstx_V_V_dout sc_in sc_lv 8 signal 2 } 
	{ p_dstx_V_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_dstx_V_V_read sc_out sc_logic 1 signal 2 } 
	{ p_dst_matx_data_V_address0 sc_out sc_lv 19 signal 3 } 
	{ p_dst_matx_data_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ p_dst_matx_data_V_we0 sc_out sc_logic 1 signal 3 } 
	{ p_dst_matx_data_V_d0 sc_out sc_lv 8 signal 3 } 
	{ p_dst_maty_cols_read_dout sc_in sc_lv 32 signal 4 } 
	{ p_dst_maty_cols_read_empty_n sc_in sc_logic 1 signal 4 } 
	{ p_dst_maty_cols_read_read sc_out sc_logic 1 signal 4 } 
	{ p_dsty_V_V_dout sc_in sc_lv 8 signal 5 } 
	{ p_dsty_V_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ p_dsty_V_V_read sc_out sc_logic 1 signal 5 } 
	{ p_dst_maty_data_V_address0 sc_out sc_lv 19 signal 6 } 
	{ p_dst_maty_data_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ p_dst_maty_data_V_we0 sc_out sc_logic 1 signal 6 } 
	{ p_dst_maty_data_V_d0 sc_out sc_lv 8 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_dst_matx_rows_read_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_dst_matx_rows_read", "role": "dout" }} , 
 	{ "name": "p_dst_matx_rows_read_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_matx_rows_read", "role": "empty_n" }} , 
 	{ "name": "p_dst_matx_rows_read_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_matx_rows_read", "role": "read" }} , 
 	{ "name": "p_dst_matx_cols_read_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_dst_matx_cols_read", "role": "dout" }} , 
 	{ "name": "p_dst_matx_cols_read_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_matx_cols_read", "role": "empty_n" }} , 
 	{ "name": "p_dst_matx_cols_read_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_matx_cols_read", "role": "read" }} , 
 	{ "name": "p_dstx_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dstx_V_V", "role": "dout" }} , 
 	{ "name": "p_dstx_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dstx_V_V", "role": "empty_n" }} , 
 	{ "name": "p_dstx_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dstx_V_V", "role": "read" }} , 
 	{ "name": "p_dst_matx_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "p_dst_matx_data_V", "role": "address0" }} , 
 	{ "name": "p_dst_matx_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_matx_data_V", "role": "ce0" }} , 
 	{ "name": "p_dst_matx_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_matx_data_V", "role": "we0" }} , 
 	{ "name": "p_dst_matx_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst_matx_data_V", "role": "d0" }} , 
 	{ "name": "p_dst_maty_cols_read_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_dst_maty_cols_read", "role": "dout" }} , 
 	{ "name": "p_dst_maty_cols_read_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_maty_cols_read", "role": "empty_n" }} , 
 	{ "name": "p_dst_maty_cols_read_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_maty_cols_read", "role": "read" }} , 
 	{ "name": "p_dsty_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dsty_V_V", "role": "dout" }} , 
 	{ "name": "p_dsty_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dsty_V_V", "role": "empty_n" }} , 
 	{ "name": "p_dsty_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dsty_V_V", "role": "read" }} , 
 	{ "name": "p_dst_maty_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "p_dst_maty_data_V", "role": "address0" }} , 
 	{ "name": "p_dst_maty_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_maty_data_V", "role": "ce0" }} , 
 	{ "name": "p_dst_maty_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_maty_data_V", "role": "we0" }} , 
 	{ "name": "p_dst_maty_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst_maty_data_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Sobel_Loop_2_proc38",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "308641",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "1",
		"Port" : [
			{"Name" : "p_dst_matx_rows_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dst_matx_rows_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_matx_cols_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dst_matx_cols_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dstx_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dstx_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_matx_data_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_dst_maty_cols_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dst_maty_cols_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dsty_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dsty_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_maty_data_V", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	Sobel_Loop_2_proc38 {
		p_dst_matx_rows_read {Type I LastRead 0 FirstWrite -1}
		p_dst_matx_cols_read {Type I LastRead 0 FirstWrite -1}
		p_dstx_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst_matx_data_V {Type O LastRead -1 FirstWrite 3}
		p_dst_maty_cols_read {Type I LastRead 0 FirstWrite -1}
		p_dsty_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst_maty_data_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "308641"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "308641"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_dst_matx_rows_read { ap_fifo {  { p_dst_matx_rows_read_dout fifo_data 0 32 }  { p_dst_matx_rows_read_empty_n fifo_status 0 1 }  { p_dst_matx_rows_read_read fifo_update 1 1 } } }
	p_dst_matx_cols_read { ap_fifo {  { p_dst_matx_cols_read_dout fifo_data 0 32 }  { p_dst_matx_cols_read_empty_n fifo_status 0 1 }  { p_dst_matx_cols_read_read fifo_update 1 1 } } }
	p_dstx_V_V { ap_fifo {  { p_dstx_V_V_dout fifo_data 0 8 }  { p_dstx_V_V_empty_n fifo_status 0 1 }  { p_dstx_V_V_read fifo_update 1 1 } } }
	p_dst_matx_data_V { ap_memory {  { p_dst_matx_data_V_address0 mem_address 1 19 }  { p_dst_matx_data_V_ce0 mem_ce 1 1 }  { p_dst_matx_data_V_we0 mem_we 1 1 }  { p_dst_matx_data_V_d0 mem_din 1 8 } } }
	p_dst_maty_cols_read { ap_fifo {  { p_dst_maty_cols_read_dout fifo_data 0 32 }  { p_dst_maty_cols_read_empty_n fifo_status 0 1 }  { p_dst_maty_cols_read_read fifo_update 1 1 } } }
	p_dsty_V_V { ap_fifo {  { p_dsty_V_V_dout fifo_data 0 8 }  { p_dsty_V_V_empty_n fifo_status 0 1 }  { p_dsty_V_V_read fifo_update 1 1 } } }
	p_dst_maty_data_V { ap_memory {  { p_dst_maty_data_V_address0 mem_address 1 19 }  { p_dst_maty_data_V_ce0 mem_ce 1 1 }  { p_dst_maty_data_V_we0 mem_we 1 1 }  { p_dst_maty_data_V_d0 mem_din 1 8 } } }
}
