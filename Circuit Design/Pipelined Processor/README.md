# Pipelined Processor

A complete 5-stage 32-bit pipelined MIPS32 processor designed and verified in Verilog, along with a multiplier, branch predictor, and cache.

The processor includes:

- **5-stage pipeline** (fetch, decode, execute, memory, writeback) with hazard detection and forwarding via a hazard unit
- **ALU**, register file, instruction and data memory, and a controller
- **Multiplier** for multiply/divide operations
- **2-bit 2-way branch predictor** to reduce control hazard stalls
- **32KB 2-way 4-word-block cache** to model cache/main memory hierarchy

Every module has its own testbench for verification (`*_tb.v`), exercising each unit individually.

## Contents

- `Verilog Files/` - all RTL modules and testbenches
- `Reports/` - design documentation
- `Instruction Table.txt` - MIPS32 instruction set implemented
- `Input Files/` - memory images and test inputs
