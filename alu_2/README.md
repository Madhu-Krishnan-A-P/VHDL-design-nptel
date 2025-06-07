# Behavioral ALU Design – VHDL Implementation

This project contains a **behavioral model** of a 4-bit Arithmetic Logic Unit (ALU) implemented in VHDL. The ALU performs one of four operations based on the 2-bit selector `sel`.

---

## ⚙️ ALU Operations

| Selector (`sel`) | Operation            | Description                                               |
|------------------|----------------------|-----------------------------------------------------------|
| `00`             | Concatenate A & B    | Result = `A & B` (8-bit)                                  |
| `01`             | Subtraction          | Result = A − B (signed 2's complement, 8-bit output)      |
| `10`             | Bitwise XOR          | Result = `0000 & (A xor B)`                               |
| `11`             | Shift A by B         | Left/Right shift A by `B(1 downto 0)` based on `B(3)`     |

---

## 📥 Inputs

- `A`: 4-bit input operand
- `B`: 4-bit input operand and control bits for shifting
- `sel`: 2-bit selector for operation choice

## 📤 Output

- `op`: 8-bit result of the selected operation

---

## 🔍 Operation Details

- **Subtraction (`A - B`)**:
  - Implemented via custom logic using full subtractor-style carry logic
  - Signed output represented as 8 bits with sign-extension
- **Shift (`A << or >> B`)**:
  - Direction determined by `B(3)`:
    - `'0'`: left shift
    - `'1'`: right shift
  - Amount taken from `B(1 downto 0)`
- **Concat (`A & B`)**:
  - Simple concatenation of both operands
- **XOR**:
  - Only lower 4 bits show XOR result, upper 4 bits are zero

---

## 🧪 Simulation & Testbench

- Testbench should iterate through all `sel` combinations with representative A and B inputs
- Verify:
  - Signed subtraction behavior
  - Bit shifts for 0–3 bit distances
  - Concatenation and bitwise results

---

⚠️ **Disclaimer:** While the VHDL design (`alu_beh.vhdl`) is authored by me, the testbench, DUT, waveform tracefiles, and the Gates package are provided by Wadhwani Electronics Laboratory, IIT Bombay for academic evaluation. I do not claim ownership of these support files—they are used strictly for educational purposes.
