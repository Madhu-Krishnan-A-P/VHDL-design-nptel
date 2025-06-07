# ❌⭕

## XOR Gate Using NAND – Structural VHDL Design

This project demonstrates a **2-input XOR gate** built using **only NAND gates**, modeled structurally in VHDL. Structural modeling highlights how complex logic can be synthesized from basic gates.

---

## 📄 Design Details

- **Inputs:**  
  `A`, `B` – 1-bit standard logic inputs

- **Output:**  
  `C` – XOR output of A and B (`C = A ⊕ B`)

- **Gate Components Used:**  
  All logic is realized using only `NAND_2` gates from the `Gates` library.

---

## 🔧 Structural Breakdown

C = (A ⊕ B) = NAND (NAND (A, NAND (A, B)), NAND (B, NAND (A, B)))


This translates to the following internal structure:

| Signal | Expression        |
|--------|-------------------|
| W1     | A NAND B          |
| W2     | A NAND W1         |
| W3     | B NAND W1         |
| C      | W2 NAND W3        |

---

## 🧪 Verification

To test correctness:
- Apply all combinations of inputs A and B (`00`, `01`, `10`, `11`)
- Expected output for `C`:

| A | B | C (A ⊕ B) |
|---|---|-----------|
| 0 | 0 |     0     |
| 0 | 1 |     1     |
| 1 | 0 |     1     |
| 1 | 1 |     0     |

---

⚠️ **Disclaimer:** While the VHDL design (`xor_gate.vhdl`) is authored by me, the testbench, DUT, waveform tracefiles, and the `Gates` package are provided by Wadhwani Electronics Laboratory, IIT Bombay for academic evaluation. I do not claim ownership of these support files—they are used strictly for educational purposes.
