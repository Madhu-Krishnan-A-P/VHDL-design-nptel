# 🧠 Finite State Machine – "students" Pattern Detector

This project implements a **Moore-style FSM** in VHDL that detects the sequence of characters `"students"` from a serial stream of 5-bit encoded alphabet inputs (1–26 representing `'a'` to `'z'`). The FSM outputs `'1'` each time it fully recognizes the pattern `"students"` in the input stream — with support for overlapping matches.

## 🧾 Design Summary

- **Input:**  
  `inp` – 5-bit vector representing alphabets (e.g., "s" = 10011 = 19)  
  `clock`, `reset` – synchronous reset and clock signals  

- **Output:**  
  `outp` – logic high (`'1'`) when the full pattern `"students"` is detected

- **FSM States:**
  - `rst` → initial reset state
  - `s1` to `s7` → intermediate states tracking the sequence of `"students"`
  - FSM resets partially to support **overlapping pattern detection**

## 🔁 Transition Highlights

| State | Input Char | Next State |
|-------|------------|------------|
| rst   | `'s'`      | s1         |
| s1    | `'t'`      | s2         |
| s2    | `'u'`      | s3         |
| s3    | `'d'`      | s4         |
| s4    | `'e'`      | s5         |
| s5    | `'n'`      | s6         |
| s6    | `'t'`      | s7         |
| s7    | `'s'`      | s1 & `outp=1` |

> Pattern detected on transition to `s1` **from `s7` with input `'s'`**.

## 🧪 Verification

To verify the functionality:
- Provide a character stream like `"studentsstudents..."` as 5-bit encoded inputs.
- Observe `outp = '1'` at the 8th character of each `"students"` sequence.

---

⚠️ **Disclaimer:** While the VHDL design (`students.vhdl`) is authored by me, the testbench, DUT, waveform tracefiles, and the `Gates` package are provided by Wadhwani Electronics Laboratory, IIT Bombay for academic evaluation. I do not claim ownership of these support files—they are used strictly for educational purposes.
