# The script is designed for teaching purpose
# -------------------------------------------------------------
# Version | Programmer                 | Date       | Remark
# -------------------------------------------------------------
# V1      | Dr Kwen-Siong Chong        | 31/07/2013 | Initial version
# -------------------------------------------------------------  

# Script file for constraining the design
set rpt_file "report.rpt"
set design "StateMachine" 

current_design StateMachine
source "${script_path}/MyDefaults.con"

# Define design environment 
set_load $MAX_OUTPUT_LOAD [all_outputs] 
set_driving_cell -lib_cell $DRIVE_CELL [all_inputs]

# Define design constraints 
set_input_delay  $INPUT_DELAY -clock $CLK_PORT [all_inputs]
set_output_delay $OUTPUT_DELAY -clock $CLK_PORT [all_outputs]
set_max_area 0

# Ungroup DesignWare parts 
set designware_cells [get_cells -filter "@is_oper==true" *]
if {[sizeof_collection $designware_cells] > 0} {
   set_ungroup $designware_cells true
}

set_fix_hold [all_clocks]
compile
write -format verilog -output ${netlist_path}/Syn_$design.v -hier
write -format ddc -hierarchy -output "${ddc_path}/${design}.ddc"
write_sdf ${netlist_path}/Syn_$design.sdf
source "${script_path}/report.tcl"
