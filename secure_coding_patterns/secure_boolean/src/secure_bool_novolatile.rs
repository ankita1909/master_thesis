#![allow(dead_code)]
use cortex_m_semihosting::hprintln;

enum SecBool {
    SecTrue = 3333,
    SecFalse = 2222,
    SecInit = 1111
}

fn get_random_bool(value : u32) -> SecBool {
    if value % 17 == 0 {
        return SecBool::SecTrue;
    }
    return SecBool::SecFalse;
}


fn unsec_bool()  {
    hprintln!("Bool, True/False Test!").expect("Error");

    for i in 1 ..= 1000 {
        let mut val = SecBool::SecInit;
        val = get_random_bool(i);
        
        match val {
            SecBool::SecTrue =>  hprintln!("TRUE").expect("Error"),
            SecBool::SecFalse => hprintln!("FALSE").expect("Error"),
               _ => panic!()
        };
        
    }
    
}
