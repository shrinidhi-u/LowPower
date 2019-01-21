**Remarks:**
- A prerequisite for running the synthesis is the availability of the 45nm Nangate Open Cell Library.
It can be downloaded [here](http://projects.si2.org/openeda.si2.org/projects/nangatelib). Please specify the directory that contains the library in the *common_setup_st.tcl* file with the *DESIGN_REF_DATA_PATH* variable.
- In order to annotate switching activity for power estimation, a *.saif* file is provided in the SAIF folder for the original (*before.saif*) and optimized (*after.saif*) designs.
- Run the *run_xxx.tcl* scripts for synthesizing a clock-gated version of the corresponding design *xxx*.
- After the script's execution, two folders, *REPORTS_\** and *RESULTS_\** will be created, containing the reports and results, respectively.
