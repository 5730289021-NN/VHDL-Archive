
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Chula2016 -dir "C:/Users/noraw/Documents/VHDL/Chula2016/planAhead_run_1" -part xc3s200tq144-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/noraw/Documents/VHDL/Chula2016/Core.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/noraw/Documents/VHDL/Chula2016} }
set_property target_constrs_file "Core.ucf" [current_fileset -constrset]
add_files [list {Core.ucf}] -fileset [get_property constrset [current_run]]
link_design
