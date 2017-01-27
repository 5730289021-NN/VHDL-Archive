
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name tulza -dir "C:/Users/noraw/Documents/VHDL/tulza/planAhead_run_3" -part xc3s200tq144-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "UART_ME.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {dcm133.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {UART_ME.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top UART_ME $srcset
add_files [list {UART_ME.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s200tq144-4
