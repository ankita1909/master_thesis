#![no_std]
#![no_main]

use panic_halt as _; // you can put a breakpoint on `rust_begin_unwind` to catch panics
use cortex_m_rt::entry;
use cortex_m_semihosting::hprintln;

use psoc6_helloworld::sec_bool::*;
use psoc6_helloworld::sec_bool::SecBool::*;

use psoc6_helloworld::sec_return::*;

#[link_section=".cm0boot"]
#[no_mangle]
static CM0_BOOT: [u8; 6224]=*(include_bytes!("psoc6_02_cm0p_sleep.bin"));

fn sec_reset()
{
    panic!("Attack")
}

fn get_random_bool(value : u32) -> SecBool {
    if (value & 0x08)  == 0x8 {
        return SecTrue;
    }
    return SecFalse;
}

#[entry]
fn main() -> ! {

    let mut sec_ret = SecBool::new();
    let mut result = 0;
    //sub_function_3(&mut result);
    let mut new_val:u32 = 9999;
    hprintln!("{}", new_val);

    new_val = sub_function_2(200);
    hprintln!("{}", new_val);
   
    for i in 1 ..= 10 {
        
        sec_ret.write(get_random_bool(i));

        hprintln!("{}", sub_function_1(20));

        match sec_ret.read() {
            SecTrue =>  hprintln!("TRUE"),
            SecFalse => hprintln!("FALSE"),
            _ => panic!()
        };

        if sec_ret.is_false() {
            hprintln!("Second check shows False");
            hprintln!("{}", sub_function_1(30));
            sec_ret.check_false(); // Branch protection use case example
        }

        if sec_ret.is_true() {
            hprintln!("{}", sub_function_1(40));
            hprintln!("{}", sub_function_2(50));
            hprintln!("Second check shows: True");
        }

        sub_function_3(&mut result);
        sub_function_3(&mut result);
        


    }

loop
   {

   }

}



