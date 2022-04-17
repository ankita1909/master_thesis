#![no_std]
#![no_main]
#![allow(unused_imports)]
#![allow(non_snake_case)]
#![allow(unused_must_use)]
#![allow(unused_results)]


use panic_halt as _; // you can put a breakpoint on `rust_begin_unwind` to catch panics
use cortex_m_rt::entry;
use cortex_m_semihosting::hprintln;

use psoc6_helloworld::secure_boolean_max::*;
use psoc6_helloworld::secure_bool::*;


#[link_section=".cm0boot"]
#[no_mangle]
static CM0_BOOT: [u8; 6224]=*(include_bytes!("psoc6_02_cm0p_sleep.bin"));

fn checkPassword(value : u32) -> bool {
    if (value & 0x05)  == 0x5 {
        return true;
    }
    return false;
}

#[entry]
fn main() -> ! {

hprintln!("Hello!").expect("Error");
for i in 1 .. 100
{
let val = checkPassword(i);

if val
{
    hprintln!("paswword was correct").expect("Error");
}
else if !val
{
    hprintln!("wrong password").expect("Error");
}
else {
    sec_reset();
}

}

loop
   {

   }

}

fn sec_reset()
{
    panic!("Attack")
}


