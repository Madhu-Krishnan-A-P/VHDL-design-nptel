# 4x1 Multiplexer (mux_4) — Structural Modeling

This folder contains the VHDL implementation of a **4-to-1 multiplexer** built using hierarchical structural modeling in VHDL.

## Contents

- VHDL design files for:
  - `mux_2`: 2-to-1 multiplexer using basic logic gates
  - `mux_4`: 4-to-1 multiplexer constructed from three `mux_2` instances
- Device Under Test (DUT) file
- Testbench for simulation
- Waveform tracefile for functional verification
- Circuit schematics (PDF)

## Design Overview

This 4x1 multiplexer design selects one of four input bits (`inp(0)` to `inp(3)`) based on two select lines `s1` and `s0`. The structure is as follows:

- `mux_2` is the fundamental building block using AND, OR, and NOT gates.
- Two `mux_2` instances select between `inp(0)/inp(1)` and `inp(2)/inp(3)` based on `s0`.
- A third `mux_2` selects between the intermediate results using `s1`.

This structural hierarchy allows for scalable and modular multiplexer designs.

## How to Simulate Using Quartus Prime Lite

1. Launch **Quartus Prime Lite** and open your project.
2. Add the VHDL source files: `mux_2.vhdl`, `mux_4.vhdl`, `DUT`, `testbench`, and the `Gates` package.
3. Compile the project.
4. Simulate the design and verify the output using the included waveform tracefile.

## Notes

- The design is fully structural, relying on basic gates (`AND_2`, `OR_2`, `INVERTER`) from the `Gates` package.
- The `mux_4` module demonstrates hierarchical instantiation of simpler modules.
- The waveform tracefile confirms the functional correctness of all possible input and select combinations.

---

⚠️ **Disclaimer:** While the VHDL design for the 4x1 multiplexer (`mux_4`) is authored by me, the testbench, DUT, waveform tracefiles, and the `Gates` package are provided by **Wadhwani Electronics Laboratory, IIT Bombay** for academic evaluation. I do not claim ownership of these support files—they are used strictly for educational purposes.
