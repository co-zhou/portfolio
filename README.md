# Corey Zhou
**Computer Engineering @ UC Santa Barbara · Functional Verification Engineer**

Focused on functional verification of digital designs. My verification work centers on processor designs: constrained-random assembly test generation, SystemVerilog assertions, coverage-driven testbenches, and per-module testbenches that verify every stage of a pipelined CPU. I also have full-custom IC design experience (HSpice, schematics, PVT corners) and applied AI/Machine Learning to design and test automation.

**Contact:** coreyzh@gmail.com · [LinkedIn](https://www.linkedin.com/in/corey-z-2a7781231/) · [Resume](Resume.pdf)

---

## Highlight Projects

- **[Dual Port RAM](Digital%20Design%20Verification/Dual%20Port%20RAM/)** - UVM verification environment for a 256x8-bit synchronous dual-port RAM: randomized pipelined transactions, scoreboard with reference memory model, and functional coverage.
- **[Pipelined Processor](Circuit%20Design/Pipelined%20Processor/)** - Complete 5-stage 32-bit RISC-V processor in Verilog with hazard unit, branch predictor, cache, and individual testbenches for every module.
- **[Assertion and Constrained Random Verification](Digital%20Design%20Verification/Assertion%20and%20Constrained%20Random%20Verification/)** - Constrained-random assembly test generator and RISC-V assembler that stress the processor design with randomized arithmetic, branches, and jumps.
- **[Carry Skip Adder](Circuit%20Design/Carry%20Skip%20Adder/)** - Full-custom 16-bit low-voltage swing carry skip adder through the complete IC flow: HSpice simulation, SUE schematics, waveform and PVT corner analysis.

---

## Verification & Hardware

| Project | Description |
|---|---|
| [Dual Port RAM](Digital%20Design%20Verification/Dual%20Port%20RAM/) | UVM testbench for a 256x8-bit dual-port RAM: randomized pipelined transactions, scoreboard reference model, and functional coverage |
| [Pipelined Processor](Circuit%20Design/Pipelined%20Processor/) | 5-stage 32-bit RISC-V CPU in Verilog: hazard detection/forwarding, 2-bit branch predictor, 32KB writeback cache, multiplier, per-module testbenches |
| [Assertion and Constrained Random Verification](Digital%20Design%20Verification/Assertion%20and%20Constrained%20Random%20Verification/) | Python toolchain that generates constrained-random RISC-V assembly programs and assembles them to machine code for processor verification |
| [Carry Skip Adder](Circuit%20Design/Carry%20Skip%20Adder/) | Full-custom 16-bit low-voltage carry skip adder using pass-transistor logic, sense amplifiers, and complementary domino logic |

## Machine Learning

| Project | Description |
|---|---|
| [PyEDA Monomial Learning](Python/PyEDA%20Monomial%20Learning/) | SAT-based root-cause analysis: learns the exact feature combination causing an error from positive/negative test samples |
| [Neural Networks](Python/Neural%20Networks/) | CNN (Keras/TensorFlow) that classifies silicon wafer defect types from images for automated inspection |
| [Stock Market Prediction](Python/Stock%20Market%20Prediction/) | LSTM network that forecasts S&P 500 prices from live Yahoo Finance data |
| [Decision Tree Classifier](Python/Decision%20Tree%20Classifier/) | Decision tree implemented from scratch using entropy impurity minimization |
| [Supervised Learning](Python/Supervised%20Learning/) | Comparison of six scikit-learn classifiers on a Pokémon stat classification task |
| [Unsupervised Learning](Python/Unsupervised%20Learning/) | K-Means, Mean Shift, and DBSCAN clustering of glass samples with PCA |
| [Linear Classifier](Python/Linear%20Classifier/) | 3-class linear classifier implemented from scratch using centroid-based decision boundaries |

## Software Engineering

| Project | Description |
|---|---|
| [SlamOptix](https://slamoptix.com) | E-commerce website for selling fiber optic enclosures and accessories, built with an AI-assisted development pipeline. Stack: Next.js/React, Node.js, MongoDB, Nginx, Jest |
| [Ping - Device Monitoring App](Web%20App%20Development/Ping/) | Multi-container web app (Next.js/React, Node.js, MariaDB, Nginx) that continuously pings and monitors devices |
| [Rail Web App](Web%20App%20Development/Rail%20Web%20App/) | Flask + MySQL train route app with bcrypt auth, Flask-Session, and containerized deployment |
| [Website Test Automation](Web%20App%20Development/Website%20Test%20Automation/) | SeleniumBase end-to-end browser tests automating login and site navigation |
| [Pentest](Web%20App%20Development/Pentest/) | Scapy-based DHCP fuzzer that probes every option field for server vulnerabilities |
| [Unreal Engine Projects](Unreal%20Engine/) | First-person movement system and game mode prototype built with Blueprints |
| [C++ Projects](C%2B%2B/) | Data structures and algorithms built from scratch: graphs, two-level hash tables, expression solver, word search |

---

## Skills

- **Functional Verification:** constrained-random testing, SystemVerilog Assertions (SVA), coverage-driven verification, UVM (coursework/self-study), ModelSim
- **RTL/HDL:** SystemVerilog, Verilog, Vivado, MIPS32 and RISC-V ISA
- **Custom IC Design:** HSpice, SUE schematics, pass-transistor and complementary domino logic, PVT corner analysis
- **Programming:** Python, C++, JavaScript/TypeScript, SQL, Bash
- **Web:** Next.js/React, Flask, Node.js, Docker, Nginx, MariaDB/MySQL

## Additional Experience

- **Math Interactives Internship, CK-12 Foundation** - Designed interactive math programs for K-12 textbooks using GeoGebra's JavaScript API; responsible for testing and QA of other interns' content.
- **Senior Capstone Project (Anchorless)** - Lead cellular communication and main software for an autonomous marine vehicle that navigates to user-specified coordinates.