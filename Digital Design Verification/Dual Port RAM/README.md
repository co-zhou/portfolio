# Dual Port RAM

A synchronous dual-port RAM with a complete UVM verification environment. The RTL design (taken from [SystemVerilogReference](https://github.com/VerificationExcellence/SystemVerilogReference)) implements a 256x8-bit memory with separate read and write ports, each with independent addresses and enable signals.

## Verification

The testbench uses a full UVM architecture to verify the design:

- **Sequence** generates randomized transactions, each writing to a random address and then reading from the previously written address. This pipelined approach means the write to the current address and the read from the previous address happen in the same cycle, verifying that concurrent read/write operations work correctly.
- **Scoreboard** maintains a reference memory model and compares DUT output against expected data on every read, flagging mismatches as errors.
- **Coverage** is collected through a subscriber with coverpoints on `data_in`, `data_out`, `write_address`, and `read_address`. The covergroup runs and outputs a coverage database, but Vivado BASIC does not support viewing coverage reports, so the setup could not be verified visually.

## Contents

- `rtl/` - RAM design and interface (`design.sv`, `interface.sv`)
- `verification/` - UVM testbench: test, environment, agent (driver, monitor, subscriber), scoreboard, sequence, and transaction classes