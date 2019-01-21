# Dynamic Power Optimization based on Formal Property Checking


This repository provides files for demonstrating a low power flow which achieves dynamic power reduction based on formal property checking of operations. An initial version of the low power flow can be found in this [paper](https://ieeexplore.ieee.org/document/7884783/).

In order to demonstrate the flow based on the files provided here, the following tools are needed:
* A formal property checking tool that can process properties written in ITL (InTerval Language), such as [OneSpin 360-DV](https://www.onespin.com/products/360-dv-verify/).
* A synthesis tool such as [Synopsys Design Compiler](https://www.synopsys.com/implementation-and-signoff/rtl-synthesis-test/dc-ultra.html) (with [Power Compiler](https://www.synopsys.com/implementation-and-signoff/rtl-synthesis-test/power-compiler.html)) that can perform a clock-gating based low power synthesis.
* A VHDL simulator such as [Modelsim](https://www.mentor.com/products/fv/modelsim/) that can generate switching activity information.

This folder contains the original and optimized RTL versions of two designs, namely, DMA and Quicksort. Alongside the VHDL source code we have provided a testbench, synthesis scripts and property suite (for verificaiton) for each of the designs.


    
            
