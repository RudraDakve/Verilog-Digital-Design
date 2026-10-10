# 1-to-4 Demultiplexer (DEMUX)

## 📝 Description
A **1-to-4 Demultiplexer (DEMUX)** is a combinational logic circuit that routes a single input data line to one of four possible output lines. The active output path is determined by a 2-bit select line (`sel[1:0]`). This project implements a 1:4 DEMUX utilizing behavioral Verilog modeling with a 4-bit output vector.

## 📊 Truth Table

| Data Input (`in`) | Select `sel[1]` | Select `sel[0]` | Output Vector (`out[3:0]`) |
| :---: | :---: | :---: | :---: |
| D | 0 | 0 | 000D |
| D | 0 | 1 | 00D0 |
| D | 1 | 0 | 0D00 |
| D | 1 | 1 | D000 |

*(Note: Unselected bits within the output vector default to `0` to prevent latches.)*

## 🛠️ Tools Used
* **Language:** Verilog HDL
* **Simulation Platform:** [EDA Playground](https://edaplayground.com/)
* **Simulator:** Cadence Xcelium / Icarus Verilog
* **Waveform Viewer:** EPWave

## 🚀 Simulation Waveform
![Waveform Simulation](waveform.png)
