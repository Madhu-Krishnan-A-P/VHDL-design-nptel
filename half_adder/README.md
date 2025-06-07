# Half Adder Using Structural Modeling with NAND Gates

This folder contains the VHDL implementation of a **1-bit half adder** designed using structural modeling. The design uses only NAND gates and demonstrates basic combinational logic constructed from primitive gates.

## Contents

- VHDL design file for the half adder (`halfadder.vhdl`)  
- Device Under Test (DUT) file  
- Testbench files for simulation  
- Waveform tracefiles for result verification  
- Circuit schematic (if provided)  

## Design Overview

The half adder performs binary addition of two 1-bit inputs `A` and `B`. It produces two outputs:

- `S` – Sum of inputs  
- `Cout` – Carry-out  

The logic is realized using only 2-input NAND gates from the `Gates` package. The internal structure includes intermediate signals `W1`, `W2`, and `W3` to connect between gates.

- `S` is computed as A XOR B using four NAND gates  
- `Cout` is computed as A AND B using a NAND gate followed by a NAND inverter

## How to Simulate Using Quartus Prime Lite or Other Tools

1. Open your simulation tool or Quartus Prime Lite and set up a new project in this folder.  
2. Add the design file `halfadder.vhdl`, the testbench, and the `Gates` package file to the project.  
3. Compile all files.  
4. Run the simulation and verify functionality using waveform outputs or text-based tracefiles.

## Notes

- The `Gates` package must be included in your project. It provides the definition for the `NAND_2` gate used in this design.  
- This half adder is built fully using structural modeling with component instantiations.  
- Useful for understanding basic logic design using only NAND gates.

---

⚠️ **Disclaimer:** While the half adder VHDL design is authored by me, the testbench, DUT, tracefiles, and the `Gates` package are provided by Wadhwani Electronics Laboratory, IIT Bombay for academic evaluation. I do not claim ownership of these support files—they are used strictly for educational purposes.
