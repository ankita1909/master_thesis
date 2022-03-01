This project contains implementation of unions in rust. How unions can include a struct and work similar to the C implementation. The led blinking along with accessing the value of the struct defined within an union is implemented by using `ManuallyDrop<T>` crate. Because we need to use `#no_std` for embedded systems, `core::mem::ManuallyDrop<T>` crate needs to be used.

To run the project:

- Install the required tools as described in [Embedded Rust Book](https://doc.rust-lang.org/beta/embedded-book/intro/install.html)
- Build this project using `cargo build`
- Upgrade Board KitProg to KitProg3

- Install Cypress OpenOCD
    [Manual](https://www.cypress.com/file/463231/download)
    [Download](https://github.com/cypresssemiconductorco/openocd/releases)

For Debugiing 

- Open the project in in vscode.
- Run -> Start Debugging
- In the Debug Console after the GDB server starts, run `interrupt` and then ``load`` and `continue` in the debug console terminal.

For running the project

- From VS code terminal window
    - `cargo build`
    - `cargo run`
    - when GDB server starts,
        - `interrupt`
        - `load`
        - `continue`

- Or In vscode menu,
- Run -> Run without debugging
    - when GDB server starts,
        - `interrupt`
        - `load`
        - `continue`
