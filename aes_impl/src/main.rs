#![no_std]
#![no_main]
//#![feature(allocator_api)]
//#[global_allocator]
//static ALLOC: jemallocator::Jemalloc = jemallocator::Jemalloc;

use core::alloc;
use core::mem;

use cortex_m_semihosting::hprintln;
// pick a panicking behavior
use panic_halt as _; // you can put a breakpoint on `rust_begin_unwind` to catch panics
use cortex_m_rt::entry;
//use cortex_m_semihosting::hprintln;
use psoc6_01_pac as psoc;
use cortex_m::peripheral::{DWT, SYST, Peripherals};


//mod aes_rustway;
mod aes_using_1d_array;
//mod aes_rust_2;
//mod command_execution;
//mod dynamic_array_vec;

#[link_section=".cm0boot"]
#[no_mangle]
static CM0_BOOT: [u8; 6224]=*(include_bytes!("psoc6_02_cm0p_sleep.bin"));
/*
pub use cortex_m::volatile_register::{RW, RO};

pub struct SystemTimer {
    p: &'static mut RegisterBlock
}

#[repr(C)]
struct RegisterBlock {
    pub csr: RW<u32>,
    pub rvr: RW<u32>,
    pub cvr: RW<u32>,
    pub calib: RO<u32>,
}

impl SystemTimer {
    pub fn new() -> SystemTimer {
        SystemTimer {
            p: unsafe { &mut *(0x1600 as *mut RegisterBlock) }
        }
    }

    pub fn get_time(&self) -> u32 {
        self.p.cvr.read()
    }

    pub fn set_reload(&mut self, reload_value: u32) {
        unsafe { self.p.rvr.write(reload_value) }
    }
}

pub fn example_usage() {
    let mut st = SystemTimer::new();
    st.set_reload(0x40000147);
    st.get_time();
}
*/
 fn stack_init()
{
    let mut use_stack:[u32; 1024] = [0;1024];
    unsafe {
        for mut i in 0..1024
        {
            let A: *mut u32 = (0x800ee00 + i) as *mut u32;
            core::ptr::write_volatile(A , 0xBEEEEEEB);
            i=i+8;

        }
        core::ptr::write_volatile::<[u32; 1024]>(use_stack.as_mut_ptr() as *mut [u32; 1024], [0xBEEEEEEB; 1024]); // Stop LLVM from optimizing out everything due to -O.
    }

}

#[entry]
fn main() -> ! {

let p=psoc::Peripherals::take().unwrap();

let ctrl=&p.CPUSS.systick_ctl;
let a = ctrl.write(|w| unsafe{w.noref().set_bit()});

//let ctrl = &p.TCPWM0.cnt;

{
let mut peripherals = Peripherals::take().unwrap();
//peripherals.DWT.enable_cycle_counter();

//*using the systick counter in syst.rs*/ 
peripherals.SYST.set_reload(0x00FFFFFF);
peripherals.SYST.clear_current();
peripherals.SYST.enable_counter();
peripherals.SYST.set_clock_source(cortex_m::peripheral::syst::SystClkSource::Core);

}


//let cyccnt = DWT::get_cycle_count();
/*while SYST::get_current() != 0
{
    
}
*/

//aes_rustway::test_aes();
//aes_rust_2::test_aes();


//stack_init();

test_aes();


/* 

hprintln!("After call using Systick {}",sys_cnt - sys_cnt_after).unwrap();
*/

pub fn test_aes()
{
    
    let key:[u8;16] = [0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6, 0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c];   
    let key_2:[u8;16] =  [ 0x2b, 0x2e, 0x15, 0x36, 0x28, 0xae, 0xd2, 0xa6, 0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c];   

    let inp:[u8;16]  = [0xae,0x2d,0x8a,0x57,0x1e,0x03,0xac,0x9c,0x9e,0xb7,0x6f,0xac,0x45,0xaf,0x8e,0x51];
    let inp_2:[u8;16]  = [0x2d,0x8a,0x57,0x1e,0x03,0xac,0x9c,0x9e,0xb7,0x6f,0xac,0x45,0xaf,0x8e,0x51,0xae];

    let out:[u8;16] =[0xf5, 0xd3, 0xd5, 0x85, 0x03, 0xb9, 0x69, 0x9d, 0xe7, 0x85, 0x89, 0x5a, 0x96, 0xfd, 0xba, 0xaf];
    let out_2:[u8;16] =[0xd3, 0xd5, 0x85, 0x43, 0xb9, 0x69, 0x9d, 0xe7, 0x85, 0x89, 0x5a, 0x96, 0xfd, 0xba, 0xaf, 0xf5];

    let mut buffer: [u8;16] = [0;16];
    let mut buffer_2: [u8;16] = [0;16];

    
    buffer.copy_from_slice(&inp);

    let mut test_1 = aes_using_1d_array::AES {  state_t : &mut buffer,
                            RoundKey:[0;176],
                            Key: &key
                            };
   // hprintln!("size of test_1 struct = {:?}", test_1);
    test_1.key_expansion();

    //let sys_cnt_before:u32 = SYST::get_current();

    //stack_init();
    test_1.AES128_ECB_encrypt();

    //let sys_cnt:u32 = SYST::get_current();

    //hprintln!("difference = {}", sys_cnt_before - sys_cnt);

    buffer_2.copy_from_slice(&inp_2);
    let mut test_2 = aes_using_1d_array::AES {  state_t : &mut buffer_2,
      RoundKey:[0;176],
      Key: &key_2
      };

     // let sys_cnt_before:u32 = SYST::get_current();
      test_2.AES128_ECB_encrypt();
     // let sys_cnt:u32 = SYST::get_current();
  
     // hprintln!("difference = {}", sys_cnt_before - sys_cnt);

    assert_eq!(buffer,out);
    //assert_eq!(buffer_2,out_2);

    //assert_eq!(buffer_2,out_2);

    
                        

}

loop
   {

   }
}

