
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name tulza -dir "C:/Users/noraw/Documents/VHDL/tulza/planAhead_run_4" -part xc3s200tq144-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/noraw/Documents/VHDL/tulza/UART_ME.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/noraw/Documents/VHDL/tulza} }
set_property target_constrs_file "UART_ME.ucf" [current_fileset -constrset]
add_files [list {UART_ME.ucf}] -fileset [get_property constrset [current_run]]
link_design
