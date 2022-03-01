#[doc = r"Register block"]
#[repr(C)]
pub struct RegisterBlock {
    #[doc = "0x00..0x200 - IPC structure"]
    pub struct_: [STRUCT; 16],
    _reserved1: [u8; 0x0e00],
    #[doc = "0x1000..0x1010 - IPC interrupt structure"]
    pub intr_struct0: INTR_STRUCT,
    _reserved2: [u8; 0x10],
    #[doc = "0x1020..0x1030 - IPC interrupt structure"]
    pub intr_struct1: INTR_STRUCT,
    _reserved3: [u8; 0x10],
    #[doc = "0x1040..0x1050 - IPC interrupt structure"]
    pub intr_struct2: INTR_STRUCT,
    _reserved4: [u8; 0x10],
    #[doc = "0x1060..0x1070 - IPC interrupt structure"]
    pub intr_struct3: INTR_STRUCT,
    _reserved5: [u8; 0x10],
    #[doc = "0x1080..0x1090 - IPC interrupt structure"]
    pub intr_struct4: INTR_STRUCT,
    _reserved6: [u8; 0x10],
    #[doc = "0x10a0..0x10b0 - IPC interrupt structure"]
    pub intr_struct5: INTR_STRUCT,
    _reserved7: [u8; 0x10],
    #[doc = "0x10c0..0x10d0 - IPC interrupt structure"]
    pub intr_struct6: INTR_STRUCT,
    _reserved8: [u8; 0x10],
    #[doc = "0x10e0..0x10f0 - IPC interrupt structure"]
    pub intr_struct7: INTR_STRUCT,
    _reserved9: [u8; 0x10],
    #[doc = "0x1100..0x1110 - IPC interrupt structure"]
    pub intr_struct8: INTR_STRUCT,
    _reserved10: [u8; 0x10],
    #[doc = "0x1120..0x1130 - IPC interrupt structure"]
    pub intr_struct9: INTR_STRUCT,
    _reserved11: [u8; 0x10],
    #[doc = "0x1140..0x1150 - IPC interrupt structure"]
    pub intr_struct10: INTR_STRUCT,
    _reserved12: [u8; 0x10],
    #[doc = "0x1160..0x1170 - IPC interrupt structure"]
    pub intr_struct11: INTR_STRUCT,
    _reserved13: [u8; 0x10],
    #[doc = "0x1180..0x1190 - IPC interrupt structure"]
    pub intr_struct12: INTR_STRUCT,
    _reserved14: [u8; 0x10],
    #[doc = "0x11a0..0x11b0 - IPC interrupt structure"]
    pub intr_struct13: INTR_STRUCT,
    _reserved15: [u8; 0x10],
    #[doc = "0x11c0..0x11d0 - IPC interrupt structure"]
    pub intr_struct14: INTR_STRUCT,
    _reserved16: [u8; 0x10],
    #[doc = "0x11e0..0x11f0 - IPC interrupt structure"]
    pub intr_struct15: INTR_STRUCT,
}
#[doc = r"Register block"]
#[repr(C)]
pub struct STRUCT {
    #[doc = "0x00 - IPC acquire"]
    pub acquire: crate::Reg<self::struct_::acquire::ACQUIRE_SPEC>,
    #[doc = "0x04 - IPC release"]
    pub release: crate::Reg<self::struct_::release::RELEASE_SPEC>,
    #[doc = "0x08 - IPC notification"]
    pub notify: crate::Reg<self::struct_::notify::NOTIFY_SPEC>,
    #[doc = "0x0c - IPC data 0"]
    pub data0: crate::Reg<self::struct_::data0::DATA0_SPEC>,
    #[doc = "0x10 - IPC data 1"]
    pub data1: crate::Reg<self::struct_::data1::DATA1_SPEC>,
    _reserved5: [u8; 0x08],
    #[doc = "0x1c - IPC lock status"]
    pub lock_status: crate::Reg<self::struct_::lock_status::LOCK_STATUS_SPEC>,
}
#[doc = r"Register block"]
#[doc = "IPC structure"]
pub mod struct_;
#[doc = r"Register block"]
#[repr(C)]
pub struct INTR_STRUCT {
    #[doc = "0x00 - Interrupt"]
    pub intr: crate::Reg<self::intr_struct::intr::INTR_SPEC>,
    #[doc = "0x04 - Interrupt set"]
    pub intr_set: crate::Reg<self::intr_struct::intr_set::INTR_SET_SPEC>,
    #[doc = "0x08 - Interrupt mask"]
    pub intr_mask: crate::Reg<self::intr_struct::intr_mask::INTR_MASK_SPEC>,
    #[doc = "0x0c - Interrupt masked"]
    pub intr_masked: crate::Reg<self::intr_struct::intr_masked::INTR_MASKED_SPEC>,
}
#[doc = r"Register block"]
#[doc = "IPC interrupt structure"]
pub mod intr_struct;
