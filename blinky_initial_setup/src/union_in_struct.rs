//creting a struct inside an union

fn struct_union()
{
   struct DataPacket
    {
		id : i16,
		len : i16,
		data : i8,

	}
   
    union MyUnion {
        number_of_chars: u8,
        f2: u32,
        f3: core::mem::ManuallyDrop<DataPacket>,
    }
    let test_str = "0110020502a".as_bytes();
    let u = test_str[2];
    let u = MyUnion { number_of_chars: 4 };
    let v = MyUnion { f2: 0x12345678};
    let w = MyUnion { f3: core::mem::ManuallyDrop::new(DataPacket{id:5,len:4,data:28} )};
    unsafe {
        let f = u.number_of_chars;
        let k = v.f2;
        let l = w.f3;
    }
        
        hprintln!("k: {}",k);
        hprintln!("l: {}",l.data);
        hprintln!("data: {}", l.data);
        hprintln!("len: {}",l.len);
        hprintln!("id: {}",l.id);

    }
