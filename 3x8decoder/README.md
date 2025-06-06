# 3-to-8 Decoder (decoder_8) — Structural Modeling

This folder contains the VHDL implementation of a **3-to-8 line decoder** using structural modeling by instantiating two 2-to-4 decoders.

## Contents

- VHDL design files for the 3-to-8 decoder  
- Device Under Test (DUT) files  
- Testbench files for functional simulation  
- Waveform tracefiles for verification of simulation results  
- Circuit schematics in PDF format  

## Design Overview

The 3-to-8 decoder uses the following approach:

- The most significant input bit `a(2)` is inverted and combined with the enable `en` to generate two enable signals for two 2-to-4 decoder instances.  
- Two 2-to-4 decoders decode the lower two bits `a(1 downto 0)` independently, gated by these enable signals.  
- The outputs of these two decoders form the full 8 output lines of the 3-to-8 decoder.

## How to Simulate Using Quartus Prime Lite

1. Open Quartus Prime Lite and create or open a project in this folder.  
2. Add the design, DUT, testbench, and Gates package VHDL files to the project.  
3. Ensure that the `decoder_4` module is included, as it is instantiated inside this design.  
4. Compile the design files.  
5. Run simulation and verify functionality using the waveform tracefiles with the Quartus waveform viewer.  

## Notes

- The design depends on components defined in the `Gates` package—ensure these files are included in your project.  
- The 3-to-8 decoder instantiates the 2-to-4 decoder `decoder_4` as a sub-module.  
- Use the waveform tracefiles to confirm the correctness of the design during verification.

---

⚠️ **Disclaimer:** While the 3-to-8 decoder VHDL design is authored by me, the testbench, DUT, tracefiles, and the `Gates` package are provided by Wadhwani Electronics Laboratory, IIT Bombay for academic evaluation. I do not claim ownership of these support files—they are used strictly for educational purposes.
