# Load RUCKUS environment and library
source -quiet $::env(RUCKUS_DIR)/vivado_proc.tcl

# Dev board type
set_property board_part xilinx.com:vck190:part0:3.0 [current_project]

# Load submodule ruckus.tcl files
loadRuckusTcl $::env(TOP_DIR)/submodules/surf

# Load local source Code and constraints
loadSource      -dir  "$::DIR_PATH/hdl"
loadConstraints -dir  "$::DIR_PATH/hdl"
#loadBlockDesign -path "$::DIR_PATH/bd/design_1.bd"
loadBlockDesign -path "$::DIR_PATH/bd/design_1.tcl"
