# 2:1 Multiplexer (mux_2) — Structural Modeling

This folder contains the VHDL implementation of a **2-input multiplexer (2:1 MUX)** using structural modeling with basic gates.

## Contents

- VHDL design files for the 2:1 multiplexer  
- Device Under Test (DUT) files  
- Testbench files for functional simulation  
- Waveform tracefiles for verification of simulation results  
- Circuit schematics in PDF format  

## Design Overview

The 2:1 MUX selects one of two input signals based on a select line `S`. It is implemented using basic gates:

- An inverter to invert the select signal  
- Two AND gates to gate inputs `in0` and `in1` based on `S` and its inversion  
- An OR gate to combine the outputs of the AND gates into the final output `Y`

## How to Simulate Using Quartus Prime Lite

1. Open Quartus Prime Lite and create or open a project in this folder.  
2. Add the design, DUT, testbench, and Gates package VHDL files to the project.  
3. Compile the design files.  
4. Run simulation and verify functionality using the waveform tracefiles with the Quartus waveform viewer.  

## Notes

- The design depends on components defined in the `Gates` package—ensure these files are included in your project.  
- Use the waveform tracefiles to confirm the correctness of the design during verification.

---

⚠️ **Disclaimer:** While the 2:1 multiplexer VHDL design is authored by me, the testbench, DUT, tracefiles, and the `Gates` package are provided by Wadhwani Electronics Laboratory, IIT Bombay for academic evaluation. I do not claim ownership of these support files—they are used strictly for educational purposes.
