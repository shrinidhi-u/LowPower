read_vhdl [ list "../Opt/*.vhd" ]
elaborate
set_mode mv
check_consistency -category model_building
read_itl all.vhi
check [ get_assertions ]
check [ get_properties ]
check_completeness
