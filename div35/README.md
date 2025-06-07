# Divisible by 3 or 5 Detector (div35) — Structural Modeling

This folder contains the VHDL implementation of a **combinational circuit to detect if a 5-bit input number is divisible by 3 or 5**, based on a control input `D`.

---

## Problem Statement

- **Inputs:**  
  - `A` : 5-bit input vector (`A4` down to `A0`) representing an unsigned number.  
  - `D` : 1-bit input signal.  
- **Output:**  
  - `Y` : 1-bit output signal.  
- **Functionality:**  
  - If `D = 0`, check if the number represented by `A` is divisible by 5.  
  - If `D = 1`, check if the number represented by `A` is divisible by 3.

Example:  
For input `A = 00000111` (decimal 7),  
- If `D = 0`, output `Y` indicates whether 7 is divisible by 5 (which it is not).  
- If `D = 1`, output `Y` indicates whether 7 is divisible by 3 (which it is not).

---

## Design Overview

- The design is implemented using **structural modeling in VHDL** by instantiating and interconnecting basic logic gates and smaller components.  
- The circuit generates combinational logic expressions that check divisibility conditions for 3 and 5 separately, then uses `D` as a selector to output the correct result.  
- The architecture is hierarchical with signals clearly labeled and mapped to reflect the pen-paper design.

---

## Files Included

- **`div35.vhdl`**: VHDL design file describing the divisibility detection circuit using structural modeling.  
- **Component files**: Basic gates or modules instantiated in the design.  
- **Testbench**: A testbench file to simulate the circuit using input vectors and verify output correctness.  
- **Tracefile**: Input stimulus and expected output values to verify the design functionality during simulation.  
- **Waveform files**: Simulation output waveforms for visual verification.  

---

## Simulation Instructions (Using Your Preferred Simulator)

1. Open your VHDL simulator project and add all design files, including `div35.vhdl` and component files.  
2. Add the provided testbench and the tracefile to the project.  
3. Compile the design files.  
4. Run the simulation using the testbench; apply the inputs from the tracefile.  
5. Verify that the output `Y` matches expected values for divisibility by 3 or 5 based on input `D`.  
6. Use waveform viewers for timing and logic confirmation.

---

## Notes

- Ensure proper inclusion of all instantiated component files used in the structural design.  
- The signal names in the code correspond to those in the pen-paper design for easy traceability.  
- The design strictly follows combinational logic principles without using behavioral constructs.

---

⚠️ **Disclaimer:** While the divisibility detection VHDL design (`div35.vhdl`) is authored by me, the testbench, tracefile, and any component files are provided by Wadhwani Electronics Laboratory, IIT Bombay for academic evaluation. I do not claim ownership of these support files—they are used strictly for educational purposes.
