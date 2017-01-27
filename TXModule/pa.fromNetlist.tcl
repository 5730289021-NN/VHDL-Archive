
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name TXModule -dir "C:/Users/Oak/Documents/Xilinx ISE Workspace/TXModule/planAhead_run_2" -part xc3s200tq144-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Oak/Documents/Xilinx ISE Workspace/TXModule/TXModule.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Oak/Documents/Xilinx ISE Workspace/TXModule} }
set_property target_constrs_file "TXModule.ucf" [current_fileset -constrset]
add_files [list {TXModule.ucf}] -fileset [get_property constrset [current_run]]
link_design
