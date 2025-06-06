# 4-bit 4x1 Multiplexer (mux_4bit) — Structural Modeling

This folder contains the VHDL implementation of a **4-bit 4-to-1 multiplexer** built hierarchically from smaller multiplexers using structural modeling.

## Contents

- VHDL design files for the 4-bit 4x1 multiplexer  
- Device Under Test (DUT) files  
- Testbench files for functional simulation  
- Waveform tracefiles for verification of simulation results  
- Circuit schematics in PDF format  

## Design Overview

The 4-bit 4x1 multiplexer selects one of four 4-bit input buses (`a`, `b`, `c`, `d`) based on a 2-bit select signal `s`. The design hierarchy is:

- `mux_2`: Basic 2-to-1 multiplexer using gates  
- `mux_4`: 4-to-1 multiplexer built by combining three `mux_2` modules  
- `mux_4bit`: Top-level 4-bit 4x1 multiplexer constructed by instantiating four `mux_4` multiplexers for each bit of the 4-bit inputs

## How to Simulate Using Quartus Prime Lite

1. Open Quartus Prime Lite and create or open a project in this folder.  
2. Add the design files for `mux_2`, `mux_4`, and `mux_4bit`, along with the DUT, testbench, and Gates package VHDL files to the project.  
3. Compile the design files.  
4. Run simulation and verify functionality using the waveform tracefiles with the Quartus waveform viewer.

## Notes

- The design relies on the `Gates` package for basic gates—make sure it is included in your project.  
- The design is hierarchical, with `mux_4bit` instantiating `mux_4`, which in turn instantiates `mux_2`.  
- Use the waveform tracefiles to confirm the correctness of the design during verification.

---

⚠️ **Disclaimer:** While the 4-bit 4x1 multiplexer VHDL design is authored by me, the testbench, DUT, tracefiles, and the `Gates` package are provided by Wadhwani Electronics Laboratory, IIT Bombay for academic evaluation. I do not claim ownership of these support files—they are used strictly for educational purposes.
