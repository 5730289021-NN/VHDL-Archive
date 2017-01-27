
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Note -dir "C:/Users/noraw/Documents/VHDL/Note/planAhead_run_4" -part xc3s400tq144-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/noraw/Documents/VHDL/Note/Note.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/noraw/Documents/VHDL/Note} }
set_property target_constrs_file "Note.ucf" [current_fileset -constrset]
add_files [list {Note.ucf}] -fileset [get_property constrset [current_run]]
link_design
