# Carry Skip Adder

A full-custom 16-bit Low Voltage Swing Carry Skip Adder designed and verified through the complete custom IC design flow.

The design uses pass transistor logic, sense amplifiers, and complementary domino logic to create the propagate, generate, kill, and sum bits at full voltage swing, with carry skip propagation across blocks to speed up addition.

This project demonstrates a full custom circuit design workflow:

- **SPICE simulations** of every circuit block and the full adder (HSpice)
- **SUE schematics** for each custom cell
- **Waveform analysis** of all blocks
- **PVT corner graphs** (process, voltage, temperature variations)
- **Final Report** documenting the design, simulations, and analysis

## Contents

- `Spice/` - HSpice netlists for the adder, bit slice, sense amplifier, and domino logic cells
- `Sue Schematics/` - custom schematic files
- `Waveforms/` - simulation waveforms for each block
- `Graphs/` - PVT corner and timing/power graphs
- `Final Report.pdf` - the full project report
