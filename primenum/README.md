# Prime Number Detector (primenum) — Structural Modeling

This folder contains the VHDL implementation of a **prime number checker** for 5-bit unsigned inputs, constructed using only basic logic gates through structural modelling.

## Contents

- VHDL design file: `primenum.vhdl`
- Testbench and DUT files for simulation
- Waveform tracefiles for output verification
- Logic gate schematics (if provided)

## Design Overview

The module `primenum` checks whether the input value `A(4:0)` (ranging from 0 to 31) is a **prime number**. It outputs `'1'` on `Y` if the input is a prime number, otherwise `'0'`.

### Key Features

- Input: 5-bit binary number `A(4:0)`
- Output: 1-bit signal `Y`
- Detection of hardcoded prime numbers in the range [0–31]
- Implemented strictly using:
  - `INVERTER`
  - `AND_2`
  - `OR_2` gates
  - **Structural modelling only** (no behavioural or dataflow code)

### Implementation Details

- The design checks specific combinations of `A(4:0)` that correspond to prime numbers by encoding those patterns using **AND gate chains**.
- The output of each detection path is logically OR-ed to produce the final output `Y`.
- Optimized for simulation clarity rather than general arithmetic primality checking.

## Simulation Instructions

1. Open Quartus Prime Lite (or your simulation tool).
2. Create a new project and include:
   - `primenum.vhdl`
   - Basic gate definitions from the `Gates` package
   - The provided testbench and waveform tracefiles
3. Compile the design.
4. Run the simulation and observe the waveform to validate the output `Y` for various `A` inputs.

## Notes

- This is a **literal-based design** — it only identifies primes hardcoded into the gate structure.
- Ensure all supporting gate files from the `Gates` package are added before compilation.
- Inputs outside the 0–31 range are not applicable due to the 5-bit width.

---

⚠️ **Disclaimer:** While the Prime Number Detector VHDL design (`primenum.vhdl`) is authored by me, the testbench, DUT, waveform tracefiles, and the `Gates` package are provided by Wadhwani Electronics Laboratory, IIT Bombay for academic evaluation. I do not claim ownership of these support files—they are used strictly for educational purposes.
