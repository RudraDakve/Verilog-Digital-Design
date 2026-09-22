# Tri-State Buffer Design in Verilog HDL

## 1. Description
A Tri-State Buffer is a 3-port digital logic element that controls data flow on a shared bus. In addition to standard HIGH (`1`) and LOW (`0`) logic levels, it introduces a third state: **High Impedance (`Z`)**.

When `enable = 1`, the buffer outputs the value of `in`. When `enable = 0`, the output enters state `Z` (electrically disconnected).

## 2. Truth Table
| Enable | Input (`In`) | Output (`Out`) | Mode / State |
| :---: | :---: | :---: | :---: |
| 0 | 0 | Z | High Impedance (Disabled) |
| 0 | 1 | Z | High Impedance (Disabled) |
| 1 | 0 | 0 | Active (Pass-through) |
| 1 | 1 | 1 | Active (Pass-through) |

## 3. Waveform
![Waveform](./waveform.png)