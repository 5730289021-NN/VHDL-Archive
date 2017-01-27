
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name VendingMachine -dir "C:/Users/noraw/Documents/VHDL/VendingMachine/planAhead_run_1" -part xc3s200tq144-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/noraw/Documents/VHDL/VendingMachine/Vending.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/noraw/Documents/VHDL/VendingMachine} }
set_property target_constrs_file "Vending.ucf" [current_fileset -constrset]
add_files [list {Vending.ucf}] -fileset [get_property constrset [current_run]]
link_design
