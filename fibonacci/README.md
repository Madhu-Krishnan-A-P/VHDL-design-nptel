# 10-bit Fibonacci Number Checker (fibo_checker)

This folder contains the VHDL implementation of a **10-bit Fibonacci number checker** that verifies whether a given 10-bit input matches any Fibonacci number within a predefined range.

## Contents

- VHDL design file for `fibo_checker`  
- Device Under Test (DUT) file  
- Testbench files for functional simulation  
- Waveform tracefiles for verification of simulation results  
- Design schematics (if any) in PDF format  

## Design Overview

The `fibo_checker` module takes a 10-bit input vector `x` and outputs a single bit `Y`. The output `Y` is set to `'1'` if the input corresponds to any Fibonacci number from the start of the sequence up to the maximum number that fits within 10 bits (i.e., ≤ 1023). Otherwise, `Y` is `'0'`.

Key points:

- The Fibonacci sequence array is generated combinationally at elaboration time using a VHDL function.  
- The checker compares the input against all stored Fibonacci numbers in the array.  
- The output indicates membership of the input number in the Fibonacci sequence.

## How to Simulate Using Quartus Prime Lite or Other Tools

1. Open your preferred VHDL simulator or Quartus Prime Lite and create/open a project in this folder.  
2. Add the design file `fibo_checker.vhdl` along with the DUT and testbench files to the project.  
3. Compile the design.  
4. Run simulation and verify the output using the provided waveform tracefiles or testbench assertions.

## Notes

- The Fibonacci array is computed only once at elaboration time for efficiency.  
- The input width is fixed to 10 bits, supporting values up to 1023.  
- Ensure that the testbench covers various inputs including Fibonacci and non-Fibonacci numbers for verification.

---

⚠️ **Disclaimer:** While the Fibonacci Checker VHDL design is authored by me, the testbench, DUT, and tracefiles are provided by Wadhwani Electronics Laboratory, IIT Bombay for academic evaluation. I do not claim ownership of these support files—they are used strictly for educational purposes.
