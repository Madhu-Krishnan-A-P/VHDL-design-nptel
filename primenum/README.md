# 4-to-2 Priority Encoder (priencoder) — Structural Modeling

This folder contains the VHDL implementation of a **4-to-2 priority encoder** using structural modeling. The design is constructed using only basic gates from the `Gates` package.

## Contents

- VHDL design file for the priority encoder (`priencoder.vhdl`)
- Testbench file and Device Under Test (DUT)  
- Waveform tracefiles for simulation and result verification  
- Gate-level schematic (if provided)

## Design Overview

The 4-to-2 priority encoder outputs a 2-bit binary representation (`Y[1:0]`) of the **highest-priority active input** among four inputs `A`, `B`, `C`, `D`, where `A` has the highest priority and `D` the lowest. If none of the inputs are high, the `Valid` output `V` is set to 0; otherwise, it is set to 1.

### Priority Encoding Logic

- Input Priority: `A > B > C > D`
- `Y[1] = A OR B`
- `Y[0] = A OR (C AND NOT B)`
- `V    = A OR B OR C OR D`

### Gate-Level Breakdown

- The design uses:
  - `OR_2`, `AND_2`, and `INVERTER` gates
  - Only **structural modeling**, with no behavioral or dataflow elements

## How to Simulate

1. Open Quartus Prime Lite or your preferred simulator.
2. Add the `priencoder.vhdl`, testbench, and `Gates` package files.
3. Compile the project.
4. Simulate using the provided waveform tracefiles or waveform viewer to verify priority encoding behavior.

## Notes

- The `Gates` package must be present in your working directory for the basic gates to be resolved.
- Ensure correct mapping and hierarchy in your simulation project.
- Structural modeling reinforces digital circuit understanding by emphasizing gate-level behavior.

---

⚠️ **Disclaimer:** While the 4-to-2 priority encoder VHDL design is authored by me, the testbench, DUT, waveform tracefiles, and the `Gates` package are provided by Wadhwani Electronics Laboratory, IIT Bombay for academic evaluation. I do not claim ownership of these support files—they are used strictly for educational purposes.
