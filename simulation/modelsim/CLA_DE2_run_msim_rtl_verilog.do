transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/SoC_document/CLA_DE2 {D:/SoC_document/CLA_DE2/full_adder.v}
vlog -vlog01compat -work work +incdir+D:/SoC_document/CLA_DE2 {D:/SoC_document/CLA_DE2/carry_lookahead_adder.v}
vlog -vlog01compat -work work +incdir+D:/SoC_document/CLA_DE2 {D:/SoC_document/CLA_DE2/CLA_DE2.v}
vlib system
vmap system system
vlog -vlog01compat -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis {D:/SoC_document/CLA_DE2/system/synthesis/system.v}
vlog -vlog01compat -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_mm_interconnect_0.v}
vlog -vlog01compat -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_mm_interconnect_0_avalon_st_adapter.v}
vlog -vlog01compat -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/altera_avalon_sc_fifo.v}
vlog -vlog01compat -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_onchip_memory2_0.v}
vlog -vlog01compat -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_nios2_gen2_0.v}
vlog -vlog01compat -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_nios2_gen2_0_cpu.v}
vlog -vlog01compat -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_nios2_gen2_0_cpu_debug_slave_sysclk.v}
vlog -vlog01compat -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_nios2_gen2_0_cpu_debug_slave_tck.v}
vlog -vlog01compat -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_nios2_gen2_0_cpu_debug_slave_wrapper.v}
vlog -vlog01compat -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_nios2_gen2_0_cpu_test_bench.v}
vlog -vlog01compat -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_jtag_uart_0.v}
vlog -vlog01compat -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/carry_lookahead_adder.v}
vlog -sv -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_irq_mapper.sv}
vlog -sv -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv}
vlog -sv -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_mm_interconnect_0_rsp_mux_001.sv}
vlog -sv -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/altera_merlin_arbitrator.sv}
vlog -sv -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_mm_interconnect_0_rsp_mux.sv}
vlog -sv -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_mm_interconnect_0_rsp_demux_001.sv}
vlog -sv -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_mm_interconnect_0_rsp_demux.sv}
vlog -sv -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_mm_interconnect_0_cmd_mux_001.sv}
vlog -sv -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_mm_interconnect_0_cmd_mux.sv}
vlog -sv -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_mm_interconnect_0_cmd_demux_001.sv}
vlog -sv -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_mm_interconnect_0_cmd_demux.sv}
vlog -sv -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_mm_interconnect_0_router_003.sv}
vlog -sv -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_mm_interconnect_0_router_002.sv}
vlog -sv -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_mm_interconnect_0_router_001.sv}
vlog -sv -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/system_mm_interconnect_0_router.sv}
vlog -sv -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/altera_merlin_slave_agent.sv}
vlog -sv -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/altera_merlin_burst_uncompressor.sv}
vlog -sv -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/altera_merlin_master_agent.sv}
vlog -sv -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/altera_merlin_slave_translator.sv}
vlog -sv -work system +incdir+D:/SoC_document/CLA_DE2/system/synthesis/submodules {D:/SoC_document/CLA_DE2/system/synthesis/submodules/altera_merlin_master_translator.sv}

vlog -vlog01compat -work work +incdir+D:/SoC_document/CLA_DE2/../CLA {D:/SoC_document/CLA_DE2/../CLA/CLA_32bit_TB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -L system -voptargs="+acc"  CLA_32bit_TB.v

add wave *
view structure
view signals
run -all
