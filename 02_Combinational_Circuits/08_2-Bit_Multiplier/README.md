# 2-Bit x 2-Bit Multiplier

## Overview
A 2-Bit x 2-Bit Binary Multiplier is a combinational circuit that computes the product of two 2-bit unsigned binary numbers ($A$ and $B$) to produce a 4-bit output product ($Y$).

The multiplication process uses **AND gates** to generate partial products and **Half Adders** to sum the aligned partial products into the final output bits.

---

## Truth Table

| $A_1$ | $A_0$ | $B_1$ | $B_0$ | $Y_3$ | $Y_2$ | $Y_1$ | $Y_0$ | Decimal ($A \times B = Y$) |
|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:--------------------------:|
|   0   |   0   |   0   |   0   |   0   |   0   |   0   |   0   |       $0 \times 0 = 0$     |
|   0   |   1   |   0   |   1   |   0   |   0   |   0   |   1   |       $1 \times 1 = 1$     |
|   0   |   1   |   1   |   0   |   0   |   0   |   1   |   0   |       $1 \times 2 = 2$     |
|   0   |   1   |   1   |   1   |   0   |   0   |   1   |   1   |       $1 \times 3 = 3$     |
|   1   |   0   |   1   |   0   |   0   |   1   |   0   |   0   |       $2 \times 2 = 4$     |
|   1   |   0   |   1   |   1   |   0   |   1   |   1   |   0   |       $2 \times 3 = 6$     |
|   1   |   1   |   1   |   0   |   0   |   1   |   1   |   0   |       $3 \times 2 = 6$     |
|   1   |   1   |   1   |   1   |   1   |   0   |   0   |   1   |       $3 \times 3 = 9$     |

---

## Architecture & Logic Realization

### 1. Partial Products Generation
Each bit of input $A$ is multiplied (ANDed) with each bit of input $B$:
- $m_0 = A_0 \cdot B_0$
- $m_1 = A_1 \cdot B_0$
- $m_2 = A_0 \cdot B_1$
- $m_3 = A_1 \cdot B_1$

### 2. Column Summation
The product bits are derived using two cascaded Half Adders:
- **Bit 0 ($Y_0$):** $m_0$
- **Bit 1 ($Y_1$):** Sum of `HA1` ($m_1 \oplus m_2$)
- **Bit 2 ($Y_2$):** Sum of `HA2` ($m_3 \oplus \text{Carry}_{HA1}$)
- **Bit 3 ($Y_3$):** Carry out of `HA2`
