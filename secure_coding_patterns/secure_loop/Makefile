all: example

rebuild: clean all

clean:
	rm -rf example ./target

example: example.c ./target/thumbv7em-none-eabi/debug/libffi_use_rust_in_c.a
	cc -o example example.c ./target/thumbv7em-none-eabi/debug/libffi_use_rust_in_c.a

./target/thumbv7em-none-eabi/debug/libffi_use_rust_in_c.a: ./src/lib.rs ./Cargo.toml
	cargo build --target thumbv7em-none-eabi

.PHONY: all clean rebuild
