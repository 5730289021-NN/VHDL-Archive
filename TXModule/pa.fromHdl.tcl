
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name TXModule -dir "C:/Users/noraw/Documents/VHDL/TXModule/planAhead_run_3" -part xc3s200tq144-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "TXModule.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {dcm133.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {TX.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top TXModule $srcset
add_files [list {TXModule.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s200tq144-4
