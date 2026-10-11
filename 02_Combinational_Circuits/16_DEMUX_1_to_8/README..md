# 1-to-8 Demultiplexer (DEMUX)

## 📝 Description
A **1-to-8 Demultiplexer (DEMUX)** is a combinational digital logic circuit that routes a single data input line (`in`) to one of eight output lines (`out[7:0]`), as determined by a 3-bit select vector (`sel[2:0]`). This implementation uses behavioral Verilog modeling with default signal assignments to ensure a robust, latch-free design.

## 📊 Truth Table / Routing Logic

| Data Input (`in`) | Select Vector (`sel[2:0]`) | Active Output Line | Output Vector (`out[7:0]`) |
| :---: | :---: | :---: | :---: |
| D | `000` | `out[0]` | `0000000D` |
| D | `001` | `out[1]` | `000000D0` |
| D | `010` | `out[2]` | `00000D00` |
| D | `011` | `out[3]` | `0000D000` |
| D | `100` | `out[4]` | `000D0000` |
| D | `101` | `out[5]` | `00D00000` |
| D | `110` | `out[6]` | `0D000000` |
| D | `111` | `out[7]` | `D0000000` |

*(Note: All unselected output bits default to `0`)*

## 🛠️ Tools Used
* **Language:** Verilog HDL
* **Simulation Platform:** [EDA Playground](https://edaplayground.com/)
* **Simulator:** Cadence Xcelium / Icarus Verilog
* **Waveform Viewer:** EPWave

## 🚀 Simulation Waveform
![Waveform Simulation](wavefrom.png)
