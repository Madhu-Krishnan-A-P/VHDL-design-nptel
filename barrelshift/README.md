# 8-bit Barrel Shifter — Structural Modeling

This folder contains a hierarchical VHDL implementation of an **8-bit barrel shifter** with left/right shift control.

---

## Contents

- VHDL design files for the barrel shifter and its submodules:  
  - `bitreverse` — Bitwise reverser (for left/right control)  
  - `mux_2` — 2-to-1 multiplexer (basic building block)  
  - `shift_1`, `shift_2`, `shift_4` — Shift stages (shift by 1, 2, and 4 bits)  
  - `barrelshift` — Top-level barrel shifter module  
- Device Under Test (DUT) files  
- Testbench files for simulation and verification  
- Waveform tracefiles  
- Circuit schematics (PDF)  

---

## Design Overview

The **8-bit barrel shifter** performs variable shifts on an 8-bit input vector `A` according to a 3-bit shift amount `B` and a direction control `L`.

- `A` (8 bits): Input data  
- `B` (3 bits): Shift amount  
- `L` (1 bit): Shift direction (`0` for right shift, `1` for left shift)  
- `S` (8 bits): Shifted output  

### Architecture and Modules

- **bitreverse:** Reverses the bit order of the input vector, used to handle left shifts by reversing, right shifting, and reversing back.  
- **mux_2:** 2-to-1 multiplexer used extensively to select bits for shifting and zero-filling.  
- **shift_1, shift_2, shift_4:** Implement single-bit, two-bit, and four-bit shifts respectively, built using multiplexers.  
- **barrelshift:** Top-level module combining bit reversal and staged shifts to perform arbitrary shifts with direction control.

---

## How to Simulate Using Quartus Prime Lite

1. Create or open a Quartus Prime Lite project and add all VHDL source files.  
2. Compile the design files.  
3. Run simulations with the provided testbench to verify correct functionality.  
4. Use waveform viewers to analyze output waveforms and validate shifting behavior.  

---

## Notes

- The design uses the `Gates` package for basic gate components (inverters, AND, OR gates). Make sure to include it in the project.  
- Shifts are performed logically with zero-filling.  
- The bit reversal technique allows easy support for both left and right shifts using the same shift logic.  

---

⚠️ **Disclaimer:** While the barrel shifter VHDL design files are authored by me, the testbench, DUT, waveform tracefiles, and `Gates` package are provided by Wadhwani Electronics Laboratory, IIT Bombay for academic evaluation. I do not claim ownership of these support files—they are used strictly for educational purposes.
