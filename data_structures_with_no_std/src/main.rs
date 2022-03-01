//#![feature(alloc)]
#![no_std]
#![no_main]
extern crate alloc;

use alloc::vec::Vec;

extern crate cortex_m;

use core::alloc::GlobalAlloc;
use core::ptr;
use core::cell::UnsafeCell;
use core::alloc::Layout;
use cortex_m::interrupt;

mod dynamic_array;

#[entry]
fn main() -> ! {
  
    dynamic_array();

    loop {
    }
}