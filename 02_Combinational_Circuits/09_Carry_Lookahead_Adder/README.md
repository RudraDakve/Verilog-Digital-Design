# 4-Bit Carry Lookahead Adder (CLA)

## Overview
A Carry Lookahead Adder improves speed compared to a Ripple Carry Adder by reducing the time required to determine carry bits. It calculates carry signals in parallel using **Generate ($G$)** and **Propagate ($P$)** logic functions.

## Equations
- $G_i = A_i \cdot B_i$
- $P_i = A_i \oplus B_i$
- $C_{i+1} = G_i + P_i \cdot C_i$
- $S_i = P_i \oplus C_i$

## File Structure
- `design.sv`: Verilog HDL implementation of 4-bit CLA logic.
- `testbench.sv`: Verification environment checking addition and carry-out vectors.
- `waveform.png`: EPWave output visual representation.