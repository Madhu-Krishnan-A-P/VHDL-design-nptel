# 3-bit Synchronous Down Counter (sync_downcntr)

This folder contains the VHDL implementation of a **3-bit synchronous down counter** that counts down on each rising clock edge and resets to `111` when the reset is asserted.

## Contents

- VHDL design file for the synchronous down counter (`sync_downcntr.vhdl`)  
- Device Under Test (DUT) files  
- Testbench files for functional simulation  
- Waveform tracefiles for verification of simulation results  
- Circuit schematics in PDF format  

## Design Overview

The synchronous down counter counts down from 7 (`111`) to 0 (`000`) on each rising clock edge. The counter resets to 7 asynchronously when the reset input is high.

- `clk`: Clock input signal  
- `rst`: Active-high reset input  
- `Q`: 3-bit output representing the current count value

## How to Simulate Using Quartus Prime Lite

1. Open Quartus Prime Lite and create or open a project in this folder.  
2. Add the design file `sync_downcntr.vhdl` along with the DUT, testbench, and any supporting packages to the project.  
3. Compile the design files.  
4. Run the simulation and verify the counter functionality using waveform tracefiles in the Quartus waveform viewer.

## Notes

- The counter uses `unsigned` arithmetic from the `ieee.numeric_std` package.  
- The output `Q` is a `std_logic_vector` converted from the internal `unsigned` count signal.  
- The counter wraps around from `000` back to `111` after counting down.

---

⚠️ **Disclaimer:** While the synchronous down counter VHDL design (`sync_downcntr.vhdl`) is authored by me, the testbench, DUT, waveform tracefiles, and any supporting packages are provided by Wadhwani Electronics Laboratory, IIT Bombay for academic evaluation. I do not claim ownership of these support files—they are used strictly for educational purposes.
