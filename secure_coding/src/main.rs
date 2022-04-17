#![no_std]
#![no_main]


use core::alloc;
use core::mem;

use panic_halt as _; // you can put a breakpoint on `rust_begin_unwind` to catch panics
use cortex_m_rt::entry;
use cortex_m_semihosting::hprintln;
mod secure_bool;
//mod secure_boolean_max;
use secure_bool::*;

const count:u32=10;

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

hprintln!("Hello!");
for i in 1 .. 10
{
let val = checkPassword(i);

if val
{
    hprintln!("paswword was correct");
}
else if !val
{
    hprintln!("wrong password");
}
else {
    sec_reset();
}

}

for (i,j) in (0..count).zip((0..count).rev()) //secure_loop
{
    hprintln!("{} and {}",i,j);
    if i+j != count
    {
        panic!()
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


