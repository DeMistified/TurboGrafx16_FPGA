set_global_assignment -name QIP_FILE ../rtl/shared/tgfx16.qip
set_global_assignment -name VHDL_FILE ../rtl/shared/demistify_config_pkg.vhd
set_global_assignment -name QIP_FILE ../DeMiSTify/controller/controller.qip
set_global_assignment -name VHDL_FILE ../firmware/controller_rom1_byte.vhd
set_global_assignment -name VHDL_FILE ../firmware/controller_rom2_byte.vhd
set_global_assignment -name PRE_FLOW_SCRIPT_FILE quartus_sh:../rtl/shared/build_id_verilog.tcl
