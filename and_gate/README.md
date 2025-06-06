# AND Gate Design — Structural Modeling

This folder contains the VHDL implementation of a **2-input AND gate** using structural modeling with NAND gates.

## Contents

- VHDL design files for the AND gate  
- Device Under Test (DUT) files  
- Testbench files for functional simulation  
- Waveform tracefiles for verification of simulation results  
- Circuit schematics in PDF format  

## Design Overview

The AND gate is constructed using two NAND gates connected structurally:

- The first NAND gate produces an intermediate signal  
- The second NAND gate inverts that intermediate to output the AND function

## How to Simulate Using Quartus Prime Lite

1. Open Quartus Prime Lite and create or open a project in this folder.  
2. Add the design, DUT, and testbench VHDL files to the project.  
3. Compile the design files.  
4. Run simulation and verify functionality using the waveform tracefiles with the Quartus waveform viewer.  

## Notes

- The design depends on components defined in the `Gates` package—ensure these files are included in your project.  
- Use the waveform tracefiles to confirm the correctness of the design during verification.

---

⚠️ **Disclaimer:** While all VHDL designs are authored by me, the testbench, DUT, and tracefiles were provided by Wadhwani Electronics Laboratory, IIT Bombay for academic evaluation. I do not claim ownership of these support files — they are used strictly for educational purposes.
