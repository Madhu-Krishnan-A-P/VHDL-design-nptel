# 4-bit ALU Design in VHDL

This project implements a 4-bit Arithmetic Logic Unit (ALU) using **behavioural modelling** in VHDL. The ALU selects different operations based on specific bits of its inputs, combining arithmetic and logic functions into a single compact module.

## 📁 Folder Contents

- `ALU.vhdl` — Main ALU module implementing 4 operations
- Testbench (user-provided or lab-supplied)
- Waveform configuration files (for simulation results)
- Supporting component library `Gates` (if required)

---

## ⚙️ ALU Specification

### 🔢 Inputs:
- `A`, `B`: 4-bit `std_logic_vector` inputs
- Selector lines are derived from `A(3)` and `B(3)`

### 📤 Output:
- `Y`: 6-bit `std_logic_vector` output  
  (higher 2 bits are zero-padded to support future extensions)

---

## 🔁 Functionality (Based on Selector `S = B(3) & A(3)`):

| Selector `S` | Operation          | Description                                           |
|--------------|--------------------|-------------------------------------------------------|
| `00`         | `MAX(A, B)`        | Returns the larger of `A` and `B`, or `0000` if equal |
| `01`         | `AND(A, B)`        | Bitwise AND                                           |
| `10`         | `ROTATE(A)`        | Rotates `A` by `B(1:0)` bits <br> L/R based on `B(3)` |
| `11`         | `EQUAL(A, B)`      | Returns `A` if `A == B`, else returns `0000`          |

- Rotation uses `shift_left` and `shift_right` to implement bit-wise circular movement.
- Final output is padded to 6 bits using `"00" & temp`.

---

## ▶️ How to Run (Using ModelSim or Quartus)

1. Create or open a VHDL project.
2. Add `ALU.vhdl`, testbench, and `Gates` library if needed.
3. Compile the design.
4. Simulate with a waveform viewer to validate outputs.

---

## 📌 Notes

- The design is written in **pure behavioural style**, making it readable and modifiable.
- Uses the `numeric_std` package for type-safe conversions between vectors and integers.
- Padded 6-bit output makes the design scalable for future operations or flags.

---

⚠️ **Disclaimer:** While the VHDL design (`alu.vhdl`) is authored by me, the testbench, DUT, waveform tracefiles, and the Gates package are provided by Wadhwani Electronics Laboratory, IIT Bombay for academic evaluation. I do not claim ownership of these support files—they are used strictly for educational purposes.
