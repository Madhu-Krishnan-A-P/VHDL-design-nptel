# OR Gate Using Structural Modeling with NAND Gates

This folder contains the VHDL implementation of a **2-input OR gate** designed using structural modelling with only NAND gates.

## Contents

- VHDL design file for the OR gate (`or_gate.vhdl`)  
- Device Under Test (DUT) file  
- Testbench files for simulation  
- Waveform tracefiles for verification  
- Circuit schematic (if provided)  

## Design Overview

The 2-input OR gate produces a logical high (`1`) output if **either** input `A` or `B` is high. The gate is constructed using NAND gates from the `Gates` package, following De Morgan’s transformation:

A OR B = NOT ( (NOT A) AND (NOT B) )


Which is implemented using:

- Inverting `A` and `B` individually using NAND gates:  
  `W1 = NOT A`, `W2 = NOT B`  
- Then applying NAND on these inverted inputs:  
  `C = W1 NAND W2`  

## How to Simulate Using Quartus Prime Lite or Similar Tools

1. Open your simulation environment or Quartus Prime Lite and create a project in this directory.  
2. Add the `or_gate.vhdl` design file, testbench file, and the `Gates` package to your project.  
3. Compile all files successfully.  
4. Run the simulation and verify the correctness using waveform or tracefile output.

## Notes

- All logic is implemented using only 2-input NAND gates.  
- The `Gates` package must be included—it contains the definition for the `NAND_2` gate.  
- Design uses structural modelling (not dataflow or behavioural).

---

⚠️ **Disclaimer:** While the OR gate VHDL design is authored by me, the testbench, DUT, tracefiles, and the `Gates` package are provided by Wadhwani Electronics Laboratory, IIT Bombay for academic evaluation. I do not claim ownership of these support files—they are used strictly for educational purposes.
