# 4-Bit Magnitude Comparator

## Overview
This repository contains the SystemVerilog implementation and testbench for a **4-Bit Magnitude Comparator**. A magnitude comparator is a combinational logic circuit that compares two binary numbers, $A$ and $B$, and determines their relative magnitude by outputting three distinct signals:
- **A > B** (`a_gt_b`)
- **A = B** (`a_eq_b`)
- **A < B** (`a_lt_b`)

---

## Design Specifications

### Inputs and Outputs
| Port Name | Direction | Width | Description |
|-----------|-----------|-------|-------------|
| `a`       | Input     | 4-bit | First binary input vector |
| `b`       | Input     | 4-bit | Second binary input vector |
| `a_gt_b`  | Output    | 1-bit | Active high when $A > B$ |
| `a_eq_b`  | Output    | 1-bit | Active high when $A = B$ |
| `a_lt_b`  | Output    | 1-bit | Active high when $A < B$ |

---

## Logic Description
The magnitude comparison operates sequentially using behavioral SystemVerilog:
1. All outputs are initialized to `0` at the start of evaluation.
2. The inputs `a` and `b` are evaluated using relational operators:
   - If `a > b`, `a_gt_b` is set to `1`.
   - Else if `a == b`, `a_eq_b` is set to `1`.
   - Else, `a_lt_b` is set to `1`.
