# 2:4 and 3:8 Decoder Design using Structural Verilog

This project implements **2-to-4** and **3-to-8** decoders using **structural modeling** in Verilog.

## 📘 Decoder Details

### ✅ 2:4 Decoder

- **Inputs**: 2-bit input `A[1:0]`
- **Outputs**: 4-bit one-hot output `Y[3:0]`
- **Gate-level logic**: Uses `NOT` and `AND` gates to decode all 4 combinations of input.

### ✅ 3:8 Decoder

- **Inputs**: 3-bit input `A[2:0]`
- **Outputs**: 8-bit one-hot output `Y[7:0]`
- **Gate-level logic**: Uses `NOT` and `AND` gates to activate one output line based on input value.

---
