# master_thesis
This folder contains the Evaluation work done for anylising the Rust language for Embedded system development.
The evaluation is based on security, performance and usability and is structured as follows :
# Rust_for_Embedded_Systems
- blinky_initial_setup : This project contains the peripheral initialisations in order to setup a LED blinking.
- configure_uart_n_parse_datasream : Implementation of UART with parsing the received data into different fields of data structure. Also contains how in place memory operations are done in Rust and use of different data structures in Rust
- data_structures_with_no_std : An attempt to achieve dynamic allocation with no_std Rust
# Security
- exploiting_rust : contains the vulnerabilities implemented using the unsafe. Also contains Heartbleed vulnerability implementation in safe Rust.
- Secure_coding_patterns : contains implementation of secure coding patterns to avoid Invasive attacks
# Performance
-performance_eval_files :  contains assembly and map files generated for the evaluation of Rust. Also contains python scripts to extract values from these files and the results
