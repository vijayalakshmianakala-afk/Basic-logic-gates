# Basic Logic Gates Using Verilog

## Description

This project implements the basic digital logic gates using **Verilog HDL**. The design includes **AND, OR, NOT, NAND, NOR, XOR, and XNOR gates**.

The project demonstrates the fundamental building blocks of digital circuits and verifies their operation using a Verilog testbench and simulation.

## Logic Gates Included

* AND Gate
* OR Gate
* NOT Gate
* NAND Gate
* NOR Gate
* XOR Gate
* XNOR Gate

## Inputs and Outputs

| Signal | Description          |
| ------ | -------------------- |
| A      | First 1-bit input    |
| B      | Second 1-bit input   |
| AND    | AND gate output      |
| OR     | OR gate output       |
| NOT_A  | NOT gate output of A |
| NAND   | NAND gate output     |
| NOR    | NOR gate output      |
| XOR    | XOR gate output      |
| XNOR   | XNOR gate output     |

## Truth Table

| A | B | AND | OR | NAND | NOR | XOR | XNOR |
| - | - | --- | -- | ---- | --- | --- | ---- |
| 0 | 0 | 0   | 0  | 1    | 1   | 0   | 1    |
| 0 | 1 | 0   | 1  | 1    | 0   | 1   | 0    |
| 1 | 0 | 0   | 1  | 1    | 0   | 1   | 0    |
| 1 | 1 | 1   | 1  | 0    | 0   | 0   | 1    |

For the NOT gate:

| A | NOT_A |
| - | ----- |
| 0 | 1     |
| 1 | 0     |

## Verilog Operators Used

| Gate | Verilog Operator |   |
| ---- | ---------------- | - |
| AND  | `&`              |   |
| OR   | `                | ` |
| NOT  | `~`              |   |
| NAND | `~&`             |   |
| NOR  | `~               | ` |
| XOR  | `^`              |   |
| XNOR | `~^`             |   |

## Files

* `logic_gates.v` – Verilog design containing all basic logic gates.
* `logic_gates_tb.v` – Testbench used to verify the design.
* `simulation_output.txt` – Expected simulation results.
* `README.md` – Project documentation.

## Tools Used

* Verilog HDL
* Icarus Verilog / ModelSim / Vivado
* GTKWave
* GitHub

## How to Run

Compile the design and testbench:

```bash
iverilog -o logic_gates_sim logic_gates.v logic_gates_tb.v
```

Run the simulation:

```bash
vvp logic_gates_sim
```

To view the waveform:

```bash
gtkwave logic_gates.vcd
```

## Applications

Basic logic gates are used in:

* Digital computers
* Arithmetic circuits
* Control circuits
* Memory circuits
* Multiplexers and demultiplexers
* Processors
* Communication systems

## Conclusion

The project successfully implements and verifies the basic logic gates using Verilog HDL. The simulation confirms that the outputs match the expected truth tables for all possible input combinations.
