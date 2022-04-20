#![no_std]
#![no_main]
#![allow(unused_imports)]
#![allow(non_snake_case)]
#![allow(unused_must_use)]
#![allow(unused_results)]


use panic_halt as _; // you can put a breakpoint on `rust_begin_unwind` to catch panics
use cortex_m_rt::entry;
use cortex_m_semihosting::hprintln;

use psoc6_helloworld::sec_bool::*;
use psoc6_helloworld::sec_bool::SecBool::*;


#[link_section=".cm0boot"]
#[no_mangle]
static CM0_BOOT: [u8; 6224]=*(include_bytes!("psoc6_02_cm0p_sleep.bin"));

fn get_random_bool(value : u32) -> SecBool {
    if (value & 0x08)  == 0x8 {
        return SecTrue;
    }
    return SecFalse;
}

#[entry]
fn main() -> ! {

    hprintln!("Bool, True/False Test!");

    let mut sec_ret = SecBool::new();

    for i in 1 ..= 10 {
        
        sec_ret.write(get_random_bool(i));

        match sec_ret.read() {
            SecTrue =>  hprintln!("TRUE"),
            SecFalse => hprintln!("FALSE"),
            _ => panic!()
        };

        if sec_ret.is_false() {
            hprintln!("Second check shows False");
            sec_ret.check_false(); // Branch protection use case example
        }

        if sec_ret.is_true() {
            hprintln!("Second check shows: True");
        }
    }

loop
   {

   }

}



