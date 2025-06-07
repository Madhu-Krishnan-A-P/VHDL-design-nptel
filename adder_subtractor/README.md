# 4-bit Adder/Subtractor — Structural Modeling in VHDL

This folder contains a structural VHDL implementation of a **4-bit Adder/Subtractor** using a custom-built **full adder** designed entirely from NAND gates.

## 📁 Folder Contents

- `fulladder.vhdl` — Full adder design using only `NAND_2` gates  
- `addersub.vhdl` — 4-bit adder/subtractor using the full adder as a building block  
- DUT (Device Under Test) file  
- Testbench file for simulation  
- Waveform tracefile (.vwf) for result verification  
- Optional schematic diagrams

## 🔧 Design Overview

### 🔹 Full Adder (`fulladder.vhdl`)
Implements 1-bit full adder using **only NAND gates**, generating both Sum and Carry-out.

### 🔹 4-bit Adder/Subtractor (`addersub.vhdl`)
Implements a 4-bit wide arithmetic unit that performs:
- **Addition** when `M = 0`
- **Subtraction** when `M = 1`  
This is achieved by conditionally inverting `b` using XOR gates (controlled by `M`) and using `M` as the initial carry-in (for 2's complement subtraction).

### 🔗 Interconnections
- Four `fulladder` instances are cascaded to perform bit-wise operations with proper carry propagation.
- All logic uses components from the provided `Gates` package (`NAND_2`, `XOR_2`, etc.).

## ▶️ How to Simulate (Quartus Prime Lite)

1. Launch **Quartus Prime Lite** and create/open a project.
2. Add all VHDL files: `addersub.vhdl`, `fulladder.vhdl`, DUT, testbench, and the `Gates` package.
3. Compile the project.
4. Run simulation and verify output with the provided waveform tracefile.

## 📌 Notes

- This design is fully **structural**: no behavioral statements like `+`, `-`, or `if`.
- Good example of low-level design abstraction, gate-level design, and hierarchy.
- Demonstrates subtraction via **2's complement logic** and carry chaining.

---

⚠️ **Disclaimer:** While the VHDL designs (`addersub.vhdl` and `fulladder.vhdl`) are authored by me, the testbench, DUT, waveform tracefiles, and the `Gates` package are provided by **Wadhwani Electronics Laboratory, IIT Bombay** for academic evaluation. I do not claim ownership of these support files—they are used strictly for educational purposes.
