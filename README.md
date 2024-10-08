# SPI-Slave-Interface
This repository contains Verilog code for an SPI (Serial Peripheral Interface) Wrapper module that integrates an SPI Slave and a RAM module to facilitate communication between a master device and a memory block. The design is optimized to operate at the highest possible frequency by choosing the best state encoding based on timing analysis.

## Project Overview
This repository contains a Verilog-based SPI Slave Interface designed to communicate with a master device and a RAM module, creating a testbench(Master) for verification, and running the design flow using Vivado and QuestaSim.
High-Frequency Operation: Optimized for performance with the best state encoding based on timing analysis.
Comprehensive Files: Includes bitstream, constraints, do files, netlist, documentation, RTL, and testbench verification

## Directory Structure
#### Top Module (SPI Wrapper): Contains the RTL code for the Wrapper that connects between RAM & Slave.
#### RAM Module: The part used in storing data coming from Slave.
#### Slave Module: The part used in Sending data coming from Master in a specific protocol.
#### RAM Testbench: Includes the testbench code for checking RAM functionality.
#### Slave Testbench: Includes the testbench code for checking Slave functionality.
#### Master: Includes the testbench code for the overall system to check the whole functionality is running well. 
#### Constraints File: Constraints file to connect ports to FPGA.
#### Do File: A scripted running file to automate questa sim flow.
#### Bitstream: Bitstream file generated after implementation on FPGA.
#### Netlist: This is a Verilog netlist of the current design or from a specific cell of the design. The output is anIEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input design files.

## Some Snippets :
### Elaborated Design Schematic : 
![elabor](https://github.com/user-attachments/assets/ba2b0f7d-f54d-483f-a6fe-ed33a839c5d7)
### Synthesis Schematic : 
![syn](https://github.com/user-attachments/assets/8de357ea-7f2f-4e7a-818a-797b2e06df64)

### Device After Implementation on FPGA Artex7 - Basys 3
![imp](https://github.com/user-attachments/assets/49e1faa1-a512-4a35-827a-cfa1c2042121)
