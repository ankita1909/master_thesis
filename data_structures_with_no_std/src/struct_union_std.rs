use std::mem;

fn data_struct() {
    println!("Hello, world!");
    let a:i8 = 97;
    let b:i32 = 12345678;
   // let c:String = String::from("Hello World!");
    let d:char = 'a';
    let e:i64 = 32456776543;
    let f:f32 = 22.7;
    println!("{}",a);
    let test_str = "0110020502a".as_bytes();
    let number:u16 = (test_str[0]  + test_str[1]) as u16 ;
    println!("{}",number);
    #[repr(C)]
    struct data_packet
    {
		id : i32,
		len : i16,
		data : String,

	}

	
    //let mystruct = data_packet{id:32,len: 4,data: String::from("Hello4567")};
    
 //   println!("Struct data = {}, id = {}, len = {}",mystruct.data, mystruct.id, mystruct.len);

   /*
    #[repr(C)]
    union MyUnion {
        f1: u16,
        f2: f32,
        f3: std::mem::ManuallyDrop<data_packet>,
    }

    let u = MyUnion { f1: 1 };
    let v = MyUnion { f2: 2.5};
    let w = MyUnion { f3: std::mem::ManuallyDrop::new(data_packet{id:5,len:4,data:String::from("Hi")} )};
    unsafe {
        let f = u.f1;
        let k = v.f2;
        let l = w.f3;
        println!("f: {}",f);
        println!("k: {}",k);
        println!("l: {}",l.data);

    }
    */
}
/*
#[repr(C)]
pub struct Inner {
    f: u8,
    a: u8,
}

#[repr(C)]
union S {
    //inner: Inner,
    af: u16,
}

// Usage:

// Putting data is safe:
//let s = S { af: 12345 };
// but retrieving is not:
//let a = unsafe { s.inner.a };
    

    }
*/

