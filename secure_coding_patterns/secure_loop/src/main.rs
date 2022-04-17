#![no_std]
#![no_main]


use panic_halt as _; // you can put a breakpoint on `rust_begin_unwind` to catch panics
use cortex_m_rt::entry;
use cortex_m_semihosting::hprintln;


#[link_section=".cm0boot"]
#[no_mangle]
static CM0_BOOT: [u8; 6224]=*(include_bytes!("psoc6_02_cm0p_sleep.bin"));

const COUNT: u32 = 100;


fn sec_reset()
{
    panic!("Attack")
}

#[entry]
fn main() -> ! {

    let mut up = 0;
    let mut down = 0;

    for (i,j) in (0 .. COUNT).zip((0 .. COUNT).rev())
    {
        hprintln!("{} and {}", i, j);
        if i+j != COUNT
        {
            sec_reset();
        }
        up = i;
        down = j;
       //perform critical operations
    }
    
    if up!=COUNT && down != 0
    {
        sec_reset();
    }

    loop
        {

        }


}




