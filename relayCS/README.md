# 🔌 Relay Control System — Structural Modeling in VHDL

This project implements a **Relay Control System** using structural VHDL modeling. The logic controls a relay output (`F`) based on specific 5-bit input combinations (`A`, `B`, `C`, `D`, `E`). The system is constructed using logic gate components from the `Gates` package and verified through RTL simulation with tracefile support.

---

## 📘 Problem Statement

Design a digital system with five inputs (`A`, `B`, `C`, `D`, `E`) and one output (`F`). The output should control a relay based on the following conditions:

✅ **Relay ON** (`F = 1`) for inputs:

00000, 00010, 00101, 00111, 01000, 01010, 01101, 01111, 10000, 10010, 10011, 11000, 11010, 11011


❌ **Relay OFF** (`F = 0`) for all other combinations.

---

## 🏗️ Design Details

### 📥 Inputs
- `A`, `B`, `C`, `D`, `E`: 1-bit `std_logic` inputs

### 📤 Output
- `F`: 1-bit `std_logic` output that controls the relay

### 🧩 Modeling Approach
- **Structural Modeling**: Only logic gates (`AND_2`, `OR_2`, `INVERTER`) are instantiated
- **Pen-and-paper design**: Done using K-map minimization and carefully labeled intermediate signals (e.g., `W1` to `W6`)
- **Labels in VHDL** match the schematic design

---

## 🧪 Simulation Instructions

1. Load the following files into your VHDL simulator:
   - `relay_ctrl.vhdl` — Structural design file
   - `Gates.vhdl` — Logic gate definitions
   - Provided testbench (`relay_tb.vhdl`)
   - Corresponding tracefile for waveform comparison
2. Compile and simulate using your preferred tool (ModelSim, GHDL, Vivado etc.)
3. View the waveform output and match with expected values in the tracefile.

---

## 📂 Files Included

- `relay_ctrl.vhdl`: Structural implementation of the relay controller.
- `Gates.vhdl`: Contains definitions for `INVERTER`, `AND_2`, `OR_2`.
- `relay_tb.vhdl`: Testbench for RTL simulation.
- `relay_trace.txt`: Reference tracefile for result verification.

---

## 🧾 Reference Logic Expression

From K-map simplification, the minimized expression implemented is: 
❌ **Relay OFF** (`F = 0`) for all other combinations.

---

## 🏗️ Design Details

### 📥 Inputs
- `A`, `B`, `C`, `D`, `E`: 1-bit `std_logic` inputs

### 📤 Output
- `F`: 1-bit `std_logic` output that controls the relay

### 🧩 Modeling Approach
- **Structural Modeling**: Only logic gates (`AND_2`, `OR_2`, `INVERTER`) are instantiated
- **Pen-and-paper design**: Done using K-map minimization and carefully labeled intermediate signals (e.g., `W1` to `W6`)
- **Labels in VHDL** match the schematic design

---

## 🧪 Simulation Instructions

1. Load the following files into your VHDL simulator:
   - `relay_ctrl.vhdl` — Structural design file
   - `Gates.vhdl` — Logic gate definitions
   - Provided testbench (`relay_tb.vhdl`)
   - Corresponding tracefile for waveform comparison
2. Compile and simulate using your preferred tool (ModelSim, GHDL, Vivado etc.)
3. View the waveform output and match with expected values in the tracefile.

---

## 📂 Files Included

- `relay_ctrl.vhdl`: Structural implementation of the relay controller.
- `Gates.vhdl`: Contains definitions for `INVERTER`, `AND_2`, `OR_2`.
- `relay_tb.vhdl`: Testbench for RTL simulation.
- `relay_trace.txt`: Reference tracefile for result verification.

---

## 🧾 Reference Logic Expression

From K-map simplification, the minimized expression implemented is:


❌ **Relay OFF** (`F = 0`) for all other combinations.

---

## 🏗️ Design Details

### 📥 Inputs
- `A`, `B`, `C`, `D`, `E`: 1-bit `std_logic` inputs

### 📤 Output
- `F`: 1-bit `std_logic` output that controls the relay

### 🧩 Modeling Approach
- **Structural Modeling**: Only logic gates (`AND_2`, `OR_2`, `INVERTER`) are instantiated
- **Pen-and-paper design**: Done using K-map minimization and carefully labeled intermediate signals (e.g., `W1` to `W6`)
- **Labels in VHDL** match the schematic design

---

## 🧪 Simulation Instructions

1. Load the following files into your VHDL simulator:
   - `relay_ctrl.vhdl` — Structural design file
   - `Gates.vhdl` — Logic gate definitions
   - Provided testbench (`relay_tb.vhdl`)
   - Corresponding tracefile for waveform comparison
2. Compile and simulate using your preferred tool (ModelSim, GHDL, Vivado etc.)
3. View the waveform output and match with expected values in the tracefile.

---

## 📂 Files Included

- `relay_ctrl.vhdl`: Structural implementation of the relay controller.
- `Gates.vhdl`: Contains definitions for `INVERTER`, `AND_2`, `OR_2`.
- `relay_tb.vhdl`: Testbench for RTL simulation.
- `relay_trace.txt`: Reference tracefile for result verification.

---

## 🧾 Reference Logic Expression

From K-map simplification, the minimized expression implemented is: F = (~C ∧ ~E) ∨ (A ∧ ~C ∧ D) ∨ (~A ∧ C ∧ E)


This expression directly maps to your gate-level circuit.

---

⚠️ **Disclaimer:** While the Relay Control System VHDL design (`relay_ctrl.vhdl`) is authored by me, the testbench, DUT, waveform tracefiles, and the `Gates` package are provided by Wadhwani Electronics Laboratory, IIT Bombay for academic evaluation. I do not claim ownership of these support files—they are used strictly for educational purposes.
