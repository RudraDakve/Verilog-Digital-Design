# 8-to-1 Multiplexer (Verilog HDL)

This folder contains the Verilog HDL implementation and automated testbench for an **8-to-1 Multiplexer (MUX)**.

## 📌 Overview
An 8-to-1 Multiplexer is a combinational logic circuit that routes one of eight binary data input lines to a single output line based on a 3-bit select signal (`sel[2:0]`).

### Truth Table
| Select Line (`sel[2:0]`) | Output (`out`) |
| :----------------------: | :------------: |
|          `000`           |    `in[0]`     |
|          `001`           |    `in[1]`     |
|          `010`           |    `in[2]`     |
|          `011`           |    `in[3]`     |
|          `100`           |    `in[4]`     |
|          `101`           |    `in[5]`     |
|          `110`           |    `in[6]`     |
|          `111`           |    `in[7]`     |

## 📁 Repository Contents
* `design.sv`: RTL code using behavioral modeling (`case` statement).
* `testbench.sv`: Testbench verifying output for all select bit combinations.

## 💡 Concepts Learned
* Behavioral modeling in Verilog with `always @(*)` and `case` constructs.
* Writing a loop-driven testbench for full input verification.

## 🛠️ Simulation Link
Open [EDA Playground](https://edaplayground.com/x/DpWb).
