# Full Adder Using Structural Modeling with NAND Gates

This folder contains the VHDL implementation of a **1-bit full adder** designed using structural modeling. The full adder is built entirely from NAND gate components instantiated and connected explicitly.

## Contents

- VHDL design file for the full adder (`fulladder.vhdl`)  
- Device Under Test (DUT) file  
- Testbench files for functional simulation  
- Waveform tracefiles for verifying simulation results  
- Circuit schematic (if available)  

## Design Overview

The full adder performs the sum of three 1-bit inputs: `A`, `B`, and `Cin` (carry-in), producing two outputs: `S` (sum) and `Cout` (carry-out).

- The design uses seven intermediate signals (`W1` to `W7`) for internal wiring of NAND gates.  
- The architecture `Struct` instantiates multiple 2-input NAND gate components (`NAND_2`) from the `Gates` package.  
- The carry and sum outputs are realized purely using NAND gate logic, demonstrating gate-level structural modeling.  

## How to Simulate Using Quartus Prime Lite or Other Tools

1. Open your preferred VHDL simulator or Quartus Prime Lite and create/open a project in this folder.  
2. Add the full adder design file `fulladder.vhdl`, along with the DUT, testbench, and the `Gates` package files.  
3. Compile all design files.  
4. Run simulation and verify the functionality of the full adder using the waveform tracefiles or testbench outputs.

## Notes

- The design depends on the `Gates` package which must be included in the project and contains the NAND gate entity (`NAND_2`).  
- Structural modeling makes the gate-level logic explicit by instantiating components and connecting signals.  
- This full adder design is a classic example of gate-level design using only NAND gates.

---

⚠️ **Disclaimer:** While the full adder VHDL design is authored by me, the testbench, DUT, tracefiles, and the `Gates` package are provided by Wadhwani Electronics Laboratory, IIT Bombay for academic evaluation. I do not claim ownership of these support files—they are used strictly for educational purposes.
