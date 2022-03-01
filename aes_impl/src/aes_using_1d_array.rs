const total_number_rounds:u8 = 10;
//const key_length:i32 = 16; //128bit key
const NB:u8 = 4;
const NK:u8 = 4;

//use cortex_m_semihosting::hprintln;

//#[global_allocator]
//static ALLOC: jemallocator::Jemalloc = jemallocator::Jemalloc;

static sbox: [u8;256] =   [
    //0     1    2      3     4    5     6     7      8    9     A      B    C     D     E     F
    0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76,
    0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0, 0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0,
    0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15,
    0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a, 0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75,
    0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0, 0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84,
    0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b, 0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf,
    0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85, 0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8,
    0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5, 0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2,
    0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17, 0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73,
    0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb,
    0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c, 0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79,
    0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9, 0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08,
    0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6, 0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a,
    0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e, 0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e,
    0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94, 0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf,
    0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16 ];
 /*
static  rsbox: [u8;256] =
    [ 0x52, 0x09, 0x6a, 0xd5, 0x30, 0x36, 0xa5, 0x38, 0xbf, 0x40, 0xa3, 0x9e, 0x81, 0xf3, 0xd7, 0xfb,
      0x7c, 0xe3, 0x39, 0x82, 0x9b, 0x2f, 0xff, 0x87, 0x34, 0x8e, 0x43, 0x44, 0xc4, 0xde, 0xe9, 0xcb,
      0x54, 0x7b, 0x94, 0x32, 0xa6, 0xc2, 0x23, 0x3d, 0xee, 0x4c, 0x95, 0x0b, 0x42, 0xfa, 0xc3, 0x4e,
      0x08, 0x2e, 0xa1, 0x66, 0x28, 0xd9, 0x24, 0xb2, 0x76, 0x5b, 0xa2, 0x49, 0x6d, 0x8b, 0xd1, 0x25,
      0x72, 0xf8, 0xf6, 0x64, 0x86, 0x68, 0x98, 0x16, 0xd4, 0xa4, 0x5c, 0xcc, 0x5d, 0x65, 0xb6, 0x92,
      0x6c, 0x70, 0x48, 0x50, 0xfd, 0xed, 0xb9, 0xda, 0x5e, 0x15, 0x46, 0x57, 0xa7, 0x8d, 0x9d, 0x84,
      0x90, 0xd8, 0xab, 0x00, 0x8c, 0xbc, 0xd3, 0x0a, 0xf7, 0xe4, 0x58, 0x05, 0xb8, 0xb3, 0x45, 0x06,
      0xd0, 0x2c, 0x1e, 0x8f, 0xca, 0x3f, 0x0f, 0x02, 0xc1, 0xaf, 0xbd, 0x03, 0x01, 0x13, 0x8a, 0x6b,
      0x3a, 0x91, 0x11, 0x41, 0x4f, 0x67, 0xdc, 0xea, 0x97, 0xf2, 0xcf, 0xce, 0xf0, 0xb4, 0xe6, 0x73,
      0x96, 0xac, 0x74, 0x22, 0xe7, 0xad, 0x35, 0x85, 0xe2, 0xf9, 0x37, 0xe8, 0x1c, 0x75, 0xdf, 0x6e,
      0x47, 0xf1, 0x1a, 0x71, 0x1d, 0x29, 0xc5, 0x89, 0x6f, 0xb7, 0x62, 0x0e, 0xaa, 0x18, 0xbe, 0x1b,
      0xfc, 0x56, 0x3e, 0x4b, 0xc6, 0xd2, 0x79, 0x20, 0x9a, 0xdb, 0xc0, 0xfe, 0x78, 0xcd, 0x5a, 0xf4,
      0x1f, 0xdd, 0xa8, 0x33, 0x88, 0x07, 0xc7, 0x31, 0xb1, 0x12, 0x10, 0x59, 0x27, 0x80, 0xec, 0x5f,
      0x60, 0x51, 0x7f, 0xa9, 0x19, 0xb5, 0x4a, 0x0d, 0x2d, 0xe5, 0x7a, 0x9f, 0x93, 0xc9, 0x9c, 0xef,
      0xa0, 0xe0, 0x3b, 0x4d, 0xae, 0x2a, 0xf5, 0xb0, 0xc8, 0xeb, 0xbb, 0x3c, 0x83, 0x53, 0x99, 0x61,
      0x17, 0x2b, 0x04, 0x7e, 0xba, 0x77, 0xd6, 0x26, 0xe1, 0x69, 0x14, 0x63, 0x55, 0x21, 0x0c, 0x7d ];  
*/
      static Rcon: [u8;255] = [
        0x8d, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8, 0xab, 0x4d, 0x9a, 
        0x2f, 0x5e, 0xbc, 0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4, 0xb3, 0x7d, 0xfa, 0xef, 0xc5, 0x91, 0x39, 
        0x72, 0xe4, 0xd3, 0xbd, 0x61, 0xc2, 0x9f, 0x25, 0x4a, 0x94, 0x33, 0x66, 0xcc, 0x83, 0x1d, 0x3a, 
        0x74, 0xe8, 0xcb, 0x8d, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8, 
        0xab, 0x4d, 0x9a, 0x2f, 0x5e, 0xbc, 0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4, 0xb3, 0x7d, 0xfa, 0xef, 
        0xc5, 0x91, 0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61, 0xc2, 0x9f, 0x25, 0x4a, 0x94, 0x33, 0x66, 0xcc, 
        0x83, 0x1d, 0x3a, 0x74, 0xe8, 0xcb, 0x8d, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 
        0x36, 0x6c, 0xd8, 0xab, 0x4d, 0x9a, 0x2f, 0x5e, 0xbc, 0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4, 0xb3, 
        0x7d, 0xfa, 0xef, 0xc5, 0x91, 0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61, 0xc2, 0x9f, 0x25, 0x4a, 0x94, 
        0x33, 0x66, 0xcc, 0x83, 0x1d, 0x3a, 0x74, 0xe8, 0xcb, 0x8d, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 
        0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8, 0xab, 0x4d, 0x9a, 0x2f, 0x5e, 0xbc, 0x63, 0xc6, 0x97, 0x35, 
        0x6a, 0xd4, 0xb3, 0x7d, 0xfa, 0xef, 0xc5, 0x91, 0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61, 0xc2, 0x9f, 
        0x25, 0x4a, 0x94, 0x33, 0x66, 0xcc, 0x83, 0x1d, 0x3a, 0x74, 0xe8, 0xcb, 0x8d, 0x01, 0x02, 0x04, 
        0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8, 0xab, 0x4d, 0x9a, 0x2f, 0x5e, 0xbc, 0x63, 
        0xc6, 0x97, 0x35, 0x6a, 0xd4, 0xb3, 0x7d, 0xfa, 0xef, 0xc5, 0x91, 0x39, 0x72, 0xe4, 0xd3, 0xbd, 
        0x61, 0xc2, 0x9f, 0x25, 0x4a, 0x94, 0x33, 0x66, 0xcc, 0x83, 0x1d, 0x3a, 0x74, 0xe8, 0xcb  ];
      
fn get_sbox_value(num:u8) -> u8
  {
    sbox[num as usize]
  }
/*
fn get_sbox_invert(num:u8) -> u8
  {
    rsbox[num as usize]
  }*/
#[derive(Debug)]
pub struct AES<'a>
{
    pub state_t:&'a mut [u8;16],
    pub RoundKey:[u8;176],
    pub Key: &'a [u8;16]
}

impl<'a> AES<'a> 
{
    pub fn key_expansion(&mut self)
        {
            let mut i:u8 = 0;
            let mut j:u8 = 0;
            let mut k:u8 = 0;
        
            let mut tempa:[u8;4] = [0;4];
        
            for i in 0..NK
          {
            self.RoundKey[((i * 4) + 0) as usize] = self.Key[((i * 4) + 0) as usize];
            self.RoundKey[((i * 4) + 1) as usize] = self.Key[((i * 4) + 1) as usize];
            self.RoundKey[((i * 4) + 2) as usize] = self.Key[((i * 4) + 2) as usize];
            self.RoundKey[((i * 4) + 3) as usize] = self.Key[((i * 4) + 3) as usize];
        
           } // All other round keys are found from the previous round keys.
          //for(; (i < (NB * (total_number_rounds + 1))); ++i)
          for i in NK..(NB * (total_number_rounds + 1))
          {
            for j in 0..4
            {
              let ind:u8 = (i-1) * 4 + j;
              tempa[j as usize]=self.RoundKey[ind as usize];
            }
            if i % NK == 0
            {
              // This function rotates the 4 bytes in a word to the left once.
              // [a0,a1,a2,a3] becomes [a1,a2,a3,a0]
        
              // Function RotWord()
              {
                k = tempa[0];
                tempa[0] = tempa[1];
                tempa[1] = tempa[2];
                tempa[2] = tempa[3];
                tempa[3] = k;
              }
        
              // SubWord() is a function that takes a four-byte input word and 
              // applies the S-box to each of the four bytes to produce an output word.
        
              // Function Subword()
              {
                tempa[0] = get_sbox_value(tempa[0]);
                tempa[1] = get_sbox_value(tempa[1]);
                tempa[2] = get_sbox_value(tempa[2]);
                tempa[3] = get_sbox_value(tempa[3]);
              }
        
              tempa[0] =  tempa[0] ^ Rcon[(i/NK) as usize];
            }
            else if NK > 6 && i % NK == 4
            {
              // Function Subword()
              {
                tempa[0] = get_sbox_value(tempa[0]);
                tempa[1] = get_sbox_value(tempa[1]);
                tempa[2] = get_sbox_value(tempa[2]);
                tempa[3] = get_sbox_value(tempa[3]);
              }
            }
            self.RoundKey[(i * 4 + 0) as usize] = self.RoundKey[((i - NK) * 4 + 0) as usize] ^ tempa[0];
            self.RoundKey[(i * 4 + 1) as usize] = self.RoundKey[((i - NK) * 4 + 1) as usize] ^ tempa[1];
            self.RoundKey[(i * 4 + 2) as usize] = self.RoundKey[((i - NK) * 4 + 2) as usize] ^ tempa[2];
            self.RoundKey[(i * 4 + 3) as usize] = self.RoundKey[((i - NK) * 4 + 3) as usize] ^ tempa[3];
          //  i=i+1;
          }
          }
          pub fn add_round_key(&mut self, r:u8)
          {
              let mut i:u8;
              let mut j:u8;
              for i in 0..16
              {
                    let ind = r * NB * 4 + i;
                    self.state_t[i as usize]^= self.RoundKey[ind as usize];                 
              } 
          }

        pub fn sub_bytes(&mut self)
            {
                for i in 0..16
                {         
                    self.state_t[i] = get_sbox_value(self.state_t[i]);
                
                }
            }

        pub fn shift_rows(&mut self)
            {
                /*
                0   1   2   3
                4   5   6   7
                8   9   10  11
                12  13  14  15
                */

             // R0<<0

        // Rotate first row 1 columns to left. R1 << 1
            let R1_1 = self.state_t[1];
            let R1_2 = self.state_t[5];
            let R1_3 = self.state_t[9];
            let R1_4 = self.state_t[13]; 
            self.state_t[1] = R1_2;
            self.state_t[5] = R1_3;
            self.state_t[9] = R1_4;
            self.state_t[13] = R1_1;

            // Rotate second row 2 columns to left . R2 << 2
            let R2_1 = self.state_t[2];
            let R2_2 = self.state_t[6];
            let R2_3 = self.state_t[10];
            let R2_4 = self.state_t[14]; 

            self.state_t[2] = R2_3;
            self.state_t[6] = R2_4;
            self.state_t[10] = R2_1;
            self.state_t[14] = R2_2;


            // Rotate third row 3 columns to left. R3 << 3
            let R3_1 = self.state_t[3];
            let R3_2 = self.state_t[7];
            let R3_3 = self.state_t[11];
            let R3_4 = self.state_t[15]; 

            self.state_t[3] = R3_4;
            self.state_t[7] = R3_1;
            self.state_t[11] = R3_2;
            self.state_t[15] = R3_3;
            }

        pub fn xtime(x:u8) -> u8
            {
            return (x<<1) ^ (((x>>7) & 1) * 0x1b);
            }
        pub fn mix_columns(&mut self)
            {
                //a linear mixing operation which operates on the columns of the state, combining the four bytes in each column.
            let mut tmp;
            let mut tm:u8;
            let mut t:u8;
            let mut i = 0;
            while  i < 16
            {  
                t   = self.state_t[i];
                tmp = self.state_t[i] ^ self.state_t[i+1] ^ self.state_t[i+2] ^ self.state_t[i+3] ;
                tm  = self.state_t[i] ^ self.state_t[i+1] ; 
                tm = AES::xtime(tm);  
                self.state_t[i] ^= tm ^ tmp ;
                tm  = self.state_t[i+1] ^ self.state_t[i+2] ; 
                tm = AES::xtime(tm);  
                self.state_t[i+1] ^= tm ^ tmp ;
                tm  = self.state_t[i+2] ^ self.state_t[i+3] ; 
                tm = AES::xtime(tm);  
                self.state_t[i+2] ^= tm ^ tmp ;
                tm  = self.state_t[i+3] ^ t ; 
                tm = AES::xtime(tm);  
                self.state_t[i+3] ^= tm ^ tmp ;

                i=i+4;
            }
            }
        pub fn gen_cipher(&mut self)
        {
            //AES::key_expansion(self);
            AES::add_round_key(self,0);
            
            for no_round in 1..total_number_rounds
            {
                AES::sub_bytes(self);
                
                AES::shift_rows(self);
                AES::mix_columns(self);
                AES::add_round_key(self, no_round);
            }

            AES::sub_bytes(self);
            AES::shift_rows(self);
            AES::add_round_key(self, total_number_rounds);
            
        }

        /*-----------------------------Decryption methods-----------------------------------------------*/
/*
        pub fn inv_sub_bytes(&mut self){
            
            let i:usize;
            for i in 0..16
            {
            
                self.state_t[i] = get_sbox_invert(self.state_t[i]);
            
            }
        }
        
        pub fn inv_shift_rows(&mut self)
        {
            /*
                0   1   2   3
                4   5   6   7
                8   9   10  11
                12  13  14  15
                */

                // R0>>0

                // Rotate first row 1 columns to right. R1 >> 1
                let R1_1 = self.state_t[1];
                let R1_2 = self.state_t[5];
                let R1_3 = self.state_t[9];
                let R1_4 = self.state_t[13]; 
                self.state_t[1] = R1_4;
                self.state_t[5] = R1_1;
                self.state_t[9] = R1_2;
                self.state_t[13] = R1_3;

                // Rotate second row 2 columns to right . R2 >> 2
                let R2_1 = self.state_t[2];
                let R2_2 = self.state_t[6];
                let R2_3 = self.state_t[10];
                let R2_4 = self.state_t[14]; 

                self.state_t[2] = R2_3;
                self.state_t[6] = R2_4;
                self.state_t[10] = R2_1;
                self.state_t[14] = R2_2;


                // Rotate third row 3 columns to right. R3 >> 3
                let R3_1 = self.state_t[3];
                let R3_2 = self.state_t[7];
                let R3_3 = self.state_t[11];
                let R3_4 = self.state_t[15]; 

                self.state_t[3] = R3_2;
                self.state_t[7] = R3_3;
                self.state_t[11] = R3_4;
                self.state_t[15] = R3_1;
                }
        
        pub fn multiply(x:u8,y:u8) -> u8
        {
            ((y & 1) * x) ^ ((y>>1 & 1) * AES::xtime(x)) ^ ((y>>2 & 1) * AES::xtime(AES::xtime(x))) ^ ((y>>3 & 1) * AES::xtime(AES::xtime(AES::xtime(x)))) ^ ((y>>4 & 1) * AES::xtime(AES::xtime(AES::xtime(AES::xtime(x)))))
        }

        pub fn inv_mix_columns(&mut self)
        {
            let mut i = 0;

            while(i<16)
            { 
              let a = self.state_t[i+0];
              let b = self.state_t[i+1];
              let c = self.state_t[i+2];
              let d = self.state_t[i+3];
          
              self.state_t[i+0] = AES::multiply(a, 0x0e) ^ AES::multiply(b, 0x0b) ^ AES::multiply(c, 0x0d) ^ AES::multiply(d, 0x09);
              self.state_t[i+1] = AES::multiply(a, 0x09) ^ AES::multiply(b, 0x0e) ^ AES::multiply(c, 0x0b) ^ AES::multiply(d, 0x0d);
              self.state_t[i+2] = AES::multiply(a, 0x0d) ^ AES::multiply(b, 0x09) ^ AES::multiply(c, 0x0e) ^ AES::multiply(d, 0x0b);
              self.state_t[i+3] = AES::multiply(a, 0x0b) ^ AES::multiply(b, 0x0d) ^ AES::multiply(c, 0x09) ^ AES::multiply(d, 0x0e);

              i=i+4;
            }
        }

        pub fn inv_cipher(&mut self)
        {
            AES::add_round_key(self, total_number_rounds);   

            for round in (1 .. total_number_rounds).rev()
                {
                    AES::inv_shift_rows(self);
                    AES::inv_sub_bytes(self);
                    AES::add_round_key(self, round);
                    AES::inv_mix_columns(self);
                }

            AES::inv_shift_rows(self);
            AES::inv_sub_bytes(self);
            AES::add_round_key(self, 0);

        }

       

        pub fn AES128_ECB_decrypt(&mut self)
        {
       // AES::key_expansion(self);
        AES::inv_cipher(self);
   //     hprintln!("lets check the output of first element in 1d array after decryption {}",self.state_t[0]);
        }
        */
        pub fn AES128_ECB_encrypt(&mut self)
        {
        //AES::key_expansion(self);
        AES::gen_cipher(self);
        //hprintln!("lets check the output of first element in 1d array {}",self.state_t[0]);
        //hprintln!("lets check the output of first element in 1d array {}",self.state_t[8]);
        }
}




