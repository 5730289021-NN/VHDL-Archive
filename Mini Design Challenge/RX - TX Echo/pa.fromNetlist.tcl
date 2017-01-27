
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name MiniDesignChallenge -dir "C:/Users/Oak/Documents/Xilinx ISE Workspace/MiniDesignChallenge/planAhead_run_2" -part xc3s200tq144-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Oak/Documents/Xilinx ISE Workspace/MiniDesignChallenge/MainModule.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Oak/Documents/Xilinx ISE Workspace/MiniDesignChallenge} }
set_property target_constrs_file "MainModule.ucf" [current_fileset -constrset]
add_files [list {MainModule.ucf}] -fileset [get_property constrset [current_run]]
link_design
