# 2-to-4 Decoder (decoder_4) — Structural Modeling

This folder contains the VHDL implementation of a **2-to-4 line decoder** using structural modeling with basic gates.

## Contents

- VHDL design files for the 2-to-4 decoder  
- Device Under Test (DUT) files  
- Testbench files for functional simulation  
- Waveform tracefiles for verification of simulation results  
- Circuit schematics in PDF format  

## Design Overview

The 2-to-4 decoder converts a 2-bit input into one of four outputs, with an enable input `en` to control output activation.

- Inverters generate complements of the input bits.  
- AND gates combine inputs and their complements to produce each output line.  
- The enable input gates the outputs, enabling the decoder only when `en` is high.

## How to Simulate Using Quartus Prime Lite

1. Open Quartus Prime Lite and create or open a project in this folder.  
2. Add the design, DUT, testbench, and Gates package VHDL files to the project.  
3. Compile the design files.  
4. Run simulation and verify functionality using the waveform tracefiles with the Quartus waveform viewer.  

## Notes

- The design depends on components defined in the `Gates` package—ensure these files are included in your project.  
- Use the waveform tracefiles to confirm the correctness of the design during verification.

---

⚠️ **Disclaimer:** While the 2-to-4 decoder VHDL design is authored by me, the testbench, DUT, tracefiles, and the `Gates` package are provided by Wadhwani Electronics Laboratory, IIT Bombay for academic evaluation. I do not claim ownership of these support files—they are used strictly for educational purposes.
