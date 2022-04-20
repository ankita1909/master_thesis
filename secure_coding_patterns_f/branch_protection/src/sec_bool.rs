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

#[cfg(test)]
mod test {
    // Note this useful idiom: importing names from outer (for mod tests) scope.
    use crate::sec_bool::*;
    use crate::sec_bool::SecBool::*;

    #[test]
    fn test_new() {
        let sec_bool = SecBool::new();
        // Check init value       
        assert_eq!(sec_bool, SecInit);
    }

    #[test]
    fn test_write() {
        let mut sec_bool = SecBool::new();
        // Check write true false and init
        sec_bool.write(SecTrue);
        assert_eq!(sec_bool, SecTrue);
        sec_bool.write(SecFalse);
        assert_eq!(sec_bool, SecFalse);
        sec_bool.write(SecInit);
        assert_eq!(sec_bool, SecInit);
    }

    #[test]
    fn test_read() {
        let mut sec_bool = SecBool::new();
        // Check write true and false
        sec_bool.write(SecTrue);
        assert_eq!(sec_bool.read(), SecTrue);
        sec_bool.write(SecFalse);
        assert_eq!(sec_bool.read(), SecFalse);
    }

    #[test]
    fn test_is_funtions() {
        let mut sec_bool = SecBool::new();
        // Check write true and false
        sec_bool.write(SecTrue);
        assert_eq!(sec_bool.is_true(), true);
        assert_eq!(sec_bool.is_false(), false);
        sec_bool.write(SecFalse);
        assert_eq!(sec_bool.is_false(), true);
        assert_eq!(sec_bool.is_true(), false);
    }

    #[test]
    fn test_check_funtions() {
        let mut sec_bool = SecBool::new();
        // Check write true and false
        sec_bool.write(SecTrue);
        sec_bool.check_true();
        sec_bool.write(SecFalse);
        sec_bool.check_false();
    }

    #[test]
    #[should_panic]
    fn test_check_panic_read() {
        let sec_bool = SecBool::new();
        assert_eq!(sec_bool.read(), SecTrue);
    }

    #[test]
    #[should_panic]
    fn test_check_panic_check_false() {
        let mut sec_bool = SecBool::new();
        sec_bool.write(SecTrue);
        sec_bool.check_false();
    }

    #[test]
    #[should_panic]
    fn test_check_panic_check_true() {
        let mut sec_bool = SecBool::new();
        sec_bool.write(SecFalse);
        sec_bool.check_true();
    }

    #[test]
    #[should_panic]
    fn test_check_panic_is_false() {
        let sec_bool = SecBool::new();
        assert_eq!(sec_bool.is_false(), true);
    }

    #[test]
    #[should_panic]
    fn test_check_panic_is_true() {
        let sec_bool = SecBool::new();
        assert_eq!(sec_bool.is_true(), true);
    }
}