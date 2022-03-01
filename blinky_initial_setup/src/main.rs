#![no_std]
#![no_main]

// pick a panicking behavior
use panic_halt as _; // you can put a breakpoint on `rust_begin_unwind` to catch panics
                     // use panic_abort as _; // requires nightly
                     // use panic_itm as _; // logs messages over ITM; requires ITM support
                     // use panic_semihosting as _; // logs messages to the host stderr; requires a debugger

use cortex_m::asm;
use cortex_m_rt::entry;
use cortex_m_semihosting::hprintln;
use psoc6_01_pac as psoc;

#[link_section = ".cm0boot"]
#[no_mangle]
static CM0_BOOT: [u8; 6224] = *(include_bytes!("psoc6_02_cm0p_sleep.bin"));

#[entry]
fn main() -> ! {
    hprintln!("Hello, world!").unwrap();

    let p = psoc::Peripherals::take().unwrap();
    let _cp = cortex_m::Peripherals::take().unwrap();

    let p13 = &p.GPIO.prt13;

    p13.cfg.write(|w| unsafe { w.drive_mode7().bits(6) });
    

    loop {
        p13.out_inv.write(|w| w.out7().set_bit());
        asm::delay(2000);
        hprintln!("input 4 is {}!",  p13.in_.read().in4().bit_is_clear()).unwrap();

        
    }

}