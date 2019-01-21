The directory structure is shown below.

Level 0 | Level 1 | Level 2 | Remarks |
-------|---------|---------|---------|
Design |         |         | DMA        |
  --   | Orig    |         |  Original design files.      |      
  --   | Opt     |         |  Power-optimized version of the original design.      | 
  --   | Properties |      |  ITL property suite that was created based on Complete Interval Property Checking methodology.      |
  --   | Testbench   |     |  Testbench (usecase) used to generate switching activity information.      |
  --   | dc_scripts  |     |  Tcl scripts that can be run in Synopsys Design Compiler for synthesizing a clock-gated design.   
  --   | --       |SAIF    |  Contains a switching activity file for use by the tool.
  --   | --       |run_orig.tcl    |  Run this script to synthesize the original design and generate reports.
  --   | --       |run_opt.tcl    |  Run this script to synthesize the optimized design and generate reports.
