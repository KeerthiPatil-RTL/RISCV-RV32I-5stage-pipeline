# RISC-V RV32I Single-Cycle Processor
SystemVerilog RTL Implementation

# Architecture Overview
![RISCV ARCHITECTURE](https://github.com/user-attachments/assets/f9a596f0-9a32-4406-8403-595ba16ff130)

# Overview
I designed and implemented a fully functional RV32I RISC-V single-cycle processor from scratch in SystemVerilog.This processor fetches, decodes, and executes real RISC-V instructions and successfully runs assembly programs such as Fibonacci, Maximum Finder, and Bubble Sort.The project demonstrates end-to-end CPU design at the RTL level - from instruction decoding to datapath integration and waveform-level debugging.

# Microarchitecture
The processor follows a classic single-cycle architecture where each instruction completes in one clock cycle.
<img width="1058" height="428" alt="pipeline" src="https://github.com/user-attachments/assets/ab226992-3aa3-49a5-bc88-21a33afd2687" />   


# Datapath Blocks Implemented
• Program Counter with branch/jump update logic  
• Instruction Memory  
• Control Unit (opcode, funct3, funct7 decoding)  
• 32 × 32 Register File  
• Immediate Generator  
• ALU (Arithmetic, Logical, Shift operations)  
• Branch Comparator  
• Data Memory Interface  
• Writeback Multiplexer  
• Top-level CPU integration  
All modules were developed independently and integrated into a complete CPU.  

# Instruction Set Support (RV32I)  
![ISA](https://github.com/user-attachments/assets/169ee185-f026-4bfe-8b43-962e513d8f94)   
• R-Type: ADD, SUB, AND, OR, XOR, SLL, SRL   
• I-Type: ADDI, Logical Immediate, Loads   
• S-Type: SW  
• B-Type: BEQ, BNE  
• J-Type: JAL  
Control logic generates correct signals for ALU operation, memory access, register writeback, and PC updates.  

# Verification Strategy
I developed a custom SystemVerilog testbench to verify:  
• Instruction decoding correctness  
• ALU functionality  
• Register file updates  
• Memory read/write behavior  
• Branch decisions and PC redirection  
Waveform debugging was performed in ModelSim to validate full instruction execution flow.Assembly programs executed successfully, confirming correct CPU behavior.     

# Technical Highlights
• Clean modular RTL architecture  
• Explicit separation of datapath and control  
• Full ISA-level instruction decoding  
• Deterministic single-cycle execution  
• CPU-level integration and debug   
• Strong alignment with RTL design and microarchitecture roles  

# Tools
• SystemVerilog  
• ModelSim  
• RISC-V Assembly  


