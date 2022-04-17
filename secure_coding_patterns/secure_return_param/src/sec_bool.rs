#![allow(dead_code)]

#[derive(Debug, Copy, Clone, PartialEq)]
pub enum SecBool {

    SecInit = 0x9999,
    SecTrue = 0x3C3C,
    SecFalse = 0x5A5A
}

impl SecBool {
    pub fn new () -> SecBool {
        let mut local_sec_bool : SecBool = SecBool::SecInit;
        unsafe {core::ptr::write_volatile(&mut local_sec_bool,  SecBool::SecInit)}
        local_sec_bool
    }

    pub fn write (&mut self, value: SecBool) {
        unsafe {core::ptr::write_volatile(self,  value)}
    }

    pub fn read (&self) -> SecBool {
        let value = unsafe { *core::ptr::read_volatile(&self)};
        match value {
            SecBool::SecTrue | SecBool::SecFalse => value,
            _ => panic!()
        }
    }

    pub fn is_false (&self) -> bool {
        let value = unsafe { *core::ptr::read_volatile(&self)};
        match value {
            SecBool::SecTrue => false,
            SecBool::SecFalse => true,
            _ => panic!()
        }
    }

    pub fn is_true (&self) -> bool {
        let value = unsafe { *core::ptr::read_volatile(&self)};
        match value {
            SecBool::SecTrue => true,
            SecBool::SecFalse => false,
            _ => panic!()
        }
    }
    
    pub fn check_false (&self) -> () {
        let value = unsafe { *core::ptr::read_volatile(&self)};
        match value {
            SecBool::SecFalse => (),
            _ => panic!()
        }
    }

    pub fn check_true (&self) -> () {
        let value = unsafe { *core::ptr::read_volatile(&self)};
        match value {
            SecBool::SecTrue => (),
            _ => panic!()
        }
    }
}

