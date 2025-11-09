# 10Base-T Ethernet Hub on FPGA

This repository contains a complete implementation of a 10Base-T Ethernet hub based on the IEEE 802.3-9 multiport repeater specification, designed for FPGA deployment. The project was developed as part of a university engineering course and demonstrates functional Ethernet communication at the physical and data link layers.

## Project Overview

The hub implements five 10Base-T Ethernet ports with full transmit and receive pathways, including:
- Differential signaling with RS-485 line drivers
- Manchester encoding/decoding
- Frame delineation and CRC32 validation
- Network Link Pulse (NLP) functionality
- AXI4-Stream internal communication
- Packet routing with broadcast distribution and loopback prevention
- FIFO buffers for congestion management

## Repository Structure

### Main Source Files (Root Directory)
The primary VHDL source files are located in the repository root. Files follow a consistent naming convention:

- **`tx_*.vhd`** - Transmit path components
  - `tx_fsm_axi.vhd` - AXI4-Stream receiver FSM
  - `tx_fsm_pt.vhd` - Packet transmitter FSM
  - `tx_phy.vhd` - Physical layer with Manchester encoder and NLP generation
  - `sr_piso.vhd` - Parallel-in, serial-out shift register

- **`rx_*.vhd`** - Receive path components
  - `rx_decoder.vhd` - Manchester decoder
  - `rx_fsm_pr.vhd` - Packet receiver FSM
  - `rx_fsm_adr.vhd` - Address reader FSM
  - `rx_fsm_axi.vhd` - AXI4-Stream transmitter FSM
  - `rx_fcs_crc.vhd` & `rx_fcs_verify.vhd` - CRC validation
  - `rx_2ff.vhd` - Two flip-flop synchronizer
  - `sr_sipo.vhd` - Serial-in, parallel-out shift register

- **`eth_*.vhd`** - Top-level integration components
  - `eth_tx.vhd` - Complete transmit module
  - `eth_rx.vhd` - Complete receive module
  - `eth_port.vhd` - Single Ethernet port (TX + RX)
  - `ethernet_switch.vhd` - Top-level five-port hub

- **`axi4s_interconnect.vhd`** - Five-port broadcast interconnect with loopback prevention
- **`ringbuffer.vhd`** - FIFO buffer for egress packet queuing
- **`reset_ctrl.vhd`** - System reset controller
- **`pll_main.vhd`** - PLL for clock generation

### Subdirectories

- **`tb/`** - Testbenches for all modules and system-level integration testing
- **`va/`** - Validation code used for on-FPGA testing and debugging
- **`old/`** - Deprecated code from previous design iterations (not used in final implementation)
- **`output_files/`** - Quartus compilation outputs
- **`simulation/`** - Simulation artifacts and waveforms
- **`db/`, `incremental_db/`** - Quartus project database files
- **`greybox_tmp/`, `atom_netlists/`** - Synthesis intermediate files

### Other Important Files

- **`.qpf`, `.qsf`** - Quartus project files
- **`.gtkw`** - GTKWave waveform configuration files
- **`.hex`** - Memory initialization files for RAM blocks
- **`stla.stp`** - SignalTap logic analyzer configuration

## Development Environment

**This project is best opened in Visual Studio Code or VSCodium.** The repository includes VS Code workspace settings that automatically hide build artifacts, intermediate files, and other clutter to keep the file explorer clean and focused on source files.

## Building and Testing

The project is configured for Intel/Altera Quartus Prime. Compilation outputs will be generated in the `output_files/` directory.

Testbenches use GHDL for simulation and GTKWave for waveform viewing. Compiled testbench executables (`.exe`) and waveform files (`.ghw`) are included in the root directory for quick verification.

## Hardware Platform

The design targets a custom PCB with:
- Five RJ45 connectors with integrated 1:1 isolation transformers
- SN65HVD33DR RS-485 line drivers for differential signaling
- Connection to FPGA via expansion headers
- Proper impedance matching and EMI protection

## Authors

Macauley Lim, Rhyse Williams, Jaylen Avtarovski, Luke Skjellerup

© All Rights Reserved.

## License

This project was developed for educational purposes as part of university coursework.
Please feel free to learn from this code for educational purposes.
