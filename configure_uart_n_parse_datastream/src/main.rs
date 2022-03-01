#![no_std]
#![no_main]
//#![feature(allocator_api)]

use core::alloc;
use core::mem;
// pick a panicking behavior
use panic_halt as _; // you can put a breakpoint on `rust_begin_unwind` to catch panics
use cortex_m_rt::entry;
use cortex_m_semihosting::hprintln;
use psoc6_01_pac as psoc;
mod uart;
use byteorder::{ByteOrder, LittleEndian};
//mod command_execution;
//mod dynamic_array_vec;

#[link_section=".cm0boot"]
#[no_mangle]
static CM0_BOOT: [u8; 6224]=*(include_bytes!("psoc6_02_cm0p_sleep.bin"));

#[entry]
fn main() -> ! {

    hprintln!("Hello, world!").unwrap();

    let p=psoc::Peripherals::take().unwrap();
    let p_after = uart::init_uart_registers(p);

    let tx_fifo_wr = &p_after.SCB5.tx_fifo_wr;
    let rx_fifo_rd = &p_after.SCB5.rx_fifo_rd;

 
    struct data_array<'b>
    {
        parameter_length : u16,
        parameter_id : u16,
        parameter_data : &'b mut [u8],
    }
    struct data_uint8
    {
        parameter_length : u16,
        parameter_id : u16,
        parameter_data : u8,
    }
    struct data_uint16
    {
        parameter_length : u16,
        parameter_id : u16,
        parameter_data : u16,
    }
     
    enum data_type<'b>
    {
        uint8(data_uint8),
        uint16(data_uint16),
        uintarray(data_array<'b>),

    }

    union data <'b>
    {
        data_array: core::mem::ManuallyDrop<data_array<'b>>,
        data_uint8 : core::mem::ManuallyDrop<data_uint8>,
        data_uint16 : core::mem::ManuallyDrop<data_uint16>,
    }
    struct message_header<'a>
    {
        session_id : u16,
        message_length : u16,
        message_id : u16,
        message_parameter : &'a mut [u8],
    }
    //let init_val: [u8;10] = [0;10];
    let mut incoming_data:[u8;70] = [0;70];

   loop{
    let mut i = 0;
    let mut end_of_data = 0;
    loop
    {
        let data = rx_fifo_rd.read().bits();

        if data != 0xffffffff
        {
            tx_fifo_wr.write(|w| unsafe{w.bits(data)});
            hprintln!("{}",data);
            if i < 64 {
            incoming_data[i] = data as u8;
            i = i+1;
            }
        }
        if data == 0xd || data == 13
        {
            end_of_data = i;
            i = 0;
            break;
        }

    }

    /* parsing the data packet */
    let session_id_rec = u16::from_le_bytes([incoming_data[0],incoming_data[1]]);
    hprintln!("le bytes {}",session_id_rec);
    //[0x31,0x32] -> 0x3231
    let message_length_rec = incoming_data[i+2];
    let message_id_rec = incoming_data[i+4] - 0x30;
    let data = [1, 16,1,2];
    let current = &data[..];
    let v = LittleEndian::read_u16(&incoming_data[2..]);
    let v1 = LittleEndian::read_u16(&incoming_data);
    let v2 = LittleEndian::read_u16(&incoming_data[4..]);
    //let v3 = ByteOrder::read_u16(&incoming_data[2..]);
    //my_func(&incoming_data[2..4],&incoming_data[6..12]);
    hprintln!("{} {} {}",v,v1,v2);
    let mut message_header_def = message_header{session_id: ((incoming_data[0] as u16) << 8)| incoming_data[1] as u16, 
                                                message_length:incoming_data[2] as u16, 
                                                message_id:incoming_data[4] as u16, 
                                                message_parameter:&mut incoming_data[6..]};
      
   //let bla = &mut incoming_data[1..2]; // to prevent the data races
    hprintln!("session_id {}",message_header_def.session_id);
    hprintln!("msg id {}",message_header_def.message_id);
    hprintln!("msg len {}",message_header_def.message_length);

    hprintln!("Size of initialised message header struct {}", mem::size_of_val(&message_header_def)).unwrap();
/*
    message_header_def.session_id = session_id_rec as u16;
    message_header_def.message_length = message_length_rec as u16;
    message_header_def.message_id = message_id_rec as u16;
*/
    /* ways to give reference to a part of data to another array */
    /* One way is to use clone_from_slice */
    /* Problem is that the referred array slice should be of the same size as the referring array */
    /*Rust enforces that there can only be one mutable reference with no immutable references to a particular piece of data in a 
        particular scope. Because of this, attempting to use clone_from_slice on a single slice will result in a compile failure:*/

    //message_header_def.message_parameter.clone_from_slice(&incoming_data[6..]);

    /* 2. Using slice references */
    /* In case the array we are pointing to changes the slice will point to another value, 
    In the below example, message_parameter is now directly pointing to incoming_data */

    message_header_def.message_parameter[0] = 5;
    message_header_def.message_parameter[0] += 5;

    for n in 0..4
    {
    hprintln!("{}",message_header_def.message_parameter[n]).unwrap();
    }

    /* 3. Deep Copy */
    /*
    while incoming_data[d+6] != 0xd
    {
        message_header_def.message_parameter[d] = incoming_data[d+6];
        d=d+1;
    }
    */

    //let param_len = (message_header_def.message_parameter[0] - 0x30) * 10 + (message_header_def.message_parameter[1] - 0x30);
    let param_len = 15;

    /* For using unions */

    if param_len == 5
    {
        let u = data {data_uint8: core::mem::ManuallyDrop::new(data_uint8{parameter_length : 0, 
                                                                            parameter_id : 10, 
                                                                            parameter_data : 10})};
        //let v = data_type(uint8);
        hprintln!("For debugging {}", mem::size_of_val(&u)).unwrap();

    }

    else if param_len > 5 &&  param_len < 10
    {
        let u = data {data_uint16: core::mem::ManuallyDrop::new(data_uint16{parameter_length : 0, 
                                                                            parameter_id : 10, 
                                                                            parameter_data : 10})};
        hprintln!("For debugging {}", mem::size_of_val(&u)).unwrap();

    }

    else 

    {
        let u = data {data_array: core::mem::ManuallyDrop::new(data_array{parameter_length : 0, 
                                                                            parameter_id : 10, 
                                                                            parameter_data : &mut message_header_def.message_parameter[12..]
                                                                        })
                                                                        };
        hprintln!("For debugging {}",unsafe {u.data_array.parameter_length}).unwrap();
        hprintln!("For debugging {}", mem::size_of_val(&u)).unwrap();

    }

    /* In all the cases u occupies 10bytes?? */

}
}

