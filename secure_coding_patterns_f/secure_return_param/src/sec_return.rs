use cortex_m_semihosting::hprintln;


pub fn sub_function_1 (value: u32) -> u32 {
    hprintln!("1That is only text to create code");
    hprintln!("2That is only text to create code");
    hprintln!("3That is only text to create code");
    hprintln!("4That is only text to create code");
    hprintln!("5That is only text to create code");
    hprintln!("6That is only text to create code");
    hprintln!("7That is only text to create code");
    hprintln!("8That is only text to create code");
    hprintln!("9That is only text to create code");
    hprintln!("10That is only text to create code");
    value * value
}

pub fn sub_function_2 (value: u32) -> u32 {
    hprintln!("1That is only text to create code1");
    hprintln!("2That is only text to create code2");
    hprintln!("3That is only text to create code3");
    hprintln!("4That is only text to create code4");
    hprintln!("5That is only text to create code5");
    hprintln!("6That is only text to create code6");
    hprintln!("7That is only text to create code7");
    hprintln!("8That is only text to create code8");
    hprintln!("9That is only text to create code9");
    hprintln!("10That is only text to create code10");
    value + value
}

pub fn sub_function_3 (value: &mut i32) -> &mut i32 {
    hprintln!("1That is only text to create code1");
    hprintln!("2That is only text to create code2");
    hprintln!("3That is only text to create code3");
    hprintln!("4That is only text to create code4");
    hprintln!("5That is only text to create code5");
    hprintln!("6That is only text to create code6");
    hprintln!("7That is only text to create code7");
    hprintln!("8That is only text to create code8");
    hprintln!("9That is only text to create code9");
    hprintln!("10That is only text to create code10");
    *value += 5;
    value
}