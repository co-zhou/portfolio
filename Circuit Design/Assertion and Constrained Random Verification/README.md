# Assertion and Constrained Random Verification

A RISC-V verification toolchain written in Python. It generates constrained-random assembly test programs and assembles them into machine code for exercising a processor design.

- `constrained_random_generator.py` produces randomized assembly programs that stress the processor: arithmetic/logic operations (`add`, `sub`, `mul`, `div`, `and`, `xor`, `sll`, `slt`), immediate operations (`addi`, `ori`), memory access (`lw`, `sw`), and control flow including branches, jumps, and function calls (`beq`, `bne`, `blt`, `jal`, `jr`) with randomized operands and immediates.
- `assembler.py` converts the generated RISC-V assembly into hexadecimal machine code, implementing each instruction encoding (R/I/S/B/J types), two's-complement immediates, and label resolution for branches and jumps.

## Run

`python constrained_random_generator.py` then `python assembler.py -f generator.asm`
