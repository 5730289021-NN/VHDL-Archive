
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Melody -dir "C:/Users/noraw/Documents/VHDL/Melody/planAhead_run_2" -part xc3s200tq144-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/noraw/Documents/VHDL/Melody/buzz.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/noraw/Documents/VHDL/Melody} }
set_property target_constrs_file "buzz.ucf" [current_fileset -constrset]
add_files [list {buzz.ucf}] -fileset [get_property constrset [current_run]]
link_design
