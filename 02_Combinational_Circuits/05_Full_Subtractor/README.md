# Full Subtractor

A **Full Subtractor** is a combinational logic circuit that subtracts three 1-bit binary numbers: Minuend ($A$), Subtrahend ($B$), and Borrow-In ($C_{in}$). It produces two single-bit outputs: **Difference** and **Borrow-Out** ($B_{out}$).

## Logic Equations
- $\text{Difference} = A \oplus B \oplus C_{in}$
- $\text{Borrow} = (\overline{A} \cdot B) + (\overline{A} \cdot C_{in}) + (B \cdot C_{in})$

## Truth Table
| A | B | $C_{in}$ | Difference | Borrow |
|---|---|---|------------|--------|
| 0 | 0 | 0 | 0          | 0      |
| 0 | 0 | 1 | 1          | 1      |
| 0 | 1 | 0 | 1          | 1      |
| 0 | 1 | 1 | 0          | 1      |
| 1 | 0 | 0 | 1          | 0      |
| 1 | 0 | 1 | 0          | 0      |
| 1 | 1 | 0 | 0          | 0      |
| 1 | 1 | 1 | 1          | 1      |

## Waveform Simulation
![waveform](waveform.png)
