
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name MiniProj -dir "C:/Users/noraw/Documents/VHDL/MiniProj/planAhead_run_3" -part xc3s200tq144-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/noraw/Documents/VHDL/MiniProj/Segment.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/noraw/Documents/VHDL/MiniProj} }
set_property target_constrs_file "Segment.ucf" [current_fileset -constrset]
add_files [list {Segment.ucf}] -fileset [get_property constrset [current_run]]
link_design
