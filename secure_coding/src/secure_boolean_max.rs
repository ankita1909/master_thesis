use cortex_m_semihosting::hprintln;

#[derive(Copy,Clone)]
enum SecBool {

    SecInit = 1111,
    SecTrue = 2222,
    SecFalse = 3333,
    None = 4444

}

impl SecBool {
    fn init (&mut self) {
        unsafe {core::ptr::write_volatile(self,  SecBool::SecInit)}
    }

    fn write (&mut self, value: SecBool) {
        unsafe {core::ptr::write_volatile(self,  value)}
    }

    fn read (&self) -> SecBool {
        let value = unsafe { *core::ptr::read_volatile(&self)};
        match value {
            SecBool::SecTrue | SecBool::SecFalse => value,
            _ => panic!()
        }
    }

    fn is_false (&self) -> bool {
        match &self {
            SecBool::SecTrue => false,
            SecBool::SecFalse => true,
            _ => panic!()
        }
    }

    fn is_true (&self) -> bool {
        match &self {
            SecBool::SecTrue => true,
            SecBool::SecFalse => false,
            _ => panic!()
        }
    }

    fn check_if_false (&self) -> () {
        let value = unsafe { *core::ptr::read_volatile(&self)};
        match value {
            SecBool::SecFalse => (),
            _ => panic!()
        }
    }

    fn check_if_true (&self) -> () {
        let value = unsafe { *core::ptr::read_volatile(&self)};
        match value {
            SecBool::SecTrue => (),
            _ => panic!()
        }
    }


}

use SecBool::*;

fn get_random_bool(value : u32) -> SecBool {
    if (value & 0x08)  == 0x8 {
        return SecBool::SecTrue;
    }
    return SecBool::SecFalse;
}

fn sec_bool() {
    //use SecBool::*;

    hprintln!("Bool, True/False Test!");

    
    let mut sec_ret: SecBool = None;
    sec_ret.init();

    for i in 1 ..= 10 {
        
        sec_ret.write(get_random_bool(i));

        match sec_ret.read() {
            SecTrue =>  hprintln!("TRUE"),
            SecFalse => hprintln!("FALSE"),
            _ => panic!()
        };

        if sec_ret.is_false() {
            hprintln!("Second check shows False");
            sec_ret.check_if_false(); // checking again the if condition so that if assembler command is bypassed we have the sam evalues
            //jump over 4 assembler commands
        }

        if sec_ret.is_true() {
            hprintln!("Second check shows: True");
            sec_ret.check_if_true(); //for branch protection
        }
        
    }
}