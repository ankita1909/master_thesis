#[doc = r"Register block"]
#[repr(C)]
pub struct RegisterBlock {
    #[doc = "0x00..0x200 - Programmable protection structure pair"]
    pub ppu_pr: [PPU_PR; 8],
    _reserved1: [u8; 0x0600],
    #[doc = "0x800..0x4140 - Fixed protection structure pair"]
    pub ppu_fx: [PPU_FX; 229],
}
#[doc = r"Register block"]
#[repr(C)]
pub struct PPU_PR {
    #[doc = "0x00 - Slave region, base address"]
    pub sl_addr: crate::Reg<self::ppu_pr::sl_addr::SL_ADDR_SPEC>,
    #[doc = "0x04 - Slave region, size"]
    pub sl_size: crate::Reg<self::ppu_pr::sl_size::SL_SIZE_SPEC>,
    _reserved2: [u8; 0x08],
    #[doc = "0x10 - Slave attributes 0"]
    pub sl_att0: crate::Reg<self::ppu_pr::sl_att0::SL_ATT0_SPEC>,
    #[doc = "0x14 - Slave attributes 1"]
    pub sl_att1: crate::Reg<self::ppu_pr::sl_att1::SL_ATT1_SPEC>,
    #[doc = "0x18 - Slave attributes 2"]
    pub sl_att2: crate::Reg<self::ppu_pr::sl_att2::SL_ATT2_SPEC>,
    #[doc = "0x1c - Slave attributes 3"]
    pub sl_att3: crate::Reg<self::ppu_pr::sl_att3::SL_ATT3_SPEC>,
    #[doc = "0x20 - Master region, base address"]
    pub ms_addr: crate::Reg<self::ppu_pr::ms_addr::MS_ADDR_SPEC>,
    #[doc = "0x24 - Master region, size"]
    pub ms_size: crate::Reg<self::ppu_pr::ms_size::MS_SIZE_SPEC>,
    _reserved8: [u8; 0x08],
    #[doc = "0x30 - Master attributes 0"]
    pub ms_att0: crate::Reg<self::ppu_pr::ms_att0::MS_ATT0_SPEC>,
    #[doc = "0x34 - Master attributes 1"]
    pub ms_att1: crate::Reg<self::ppu_pr::ms_att1::MS_ATT1_SPEC>,
    #[doc = "0x38 - Master attributes 2"]
    pub ms_att2: crate::Reg<self::ppu_pr::ms_att2::MS_ATT2_SPEC>,
    #[doc = "0x3c - Master attributes 3"]
    pub ms_att3: crate::Reg<self::ppu_pr::ms_att3::MS_ATT3_SPEC>,
}
#[doc = r"Register block"]
#[doc = "Programmable protection structure pair"]
pub mod ppu_pr;
#[doc = r"Register block"]
#[repr(C)]
pub struct PPU_FX {
    #[doc = "0x00 - Slave region, base address"]
    pub sl_addr: crate::Reg<self::ppu_fx::sl_addr::SL_ADDR_SPEC>,
    #[doc = "0x04 - Slave region, size"]
    pub sl_size: crate::Reg<self::ppu_fx::sl_size::SL_SIZE_SPEC>,
    _reserved2: [u8; 0x08],
    #[doc = "0x10 - Slave attributes 0"]
    pub sl_att0: crate::Reg<self::ppu_fx::sl_att0::SL_ATT0_SPEC>,
    #[doc = "0x14 - Slave attributes 1"]
    pub sl_att1: crate::Reg<self::ppu_fx::sl_att1::SL_ATT1_SPEC>,
    #[doc = "0x18 - Slave attributes 2"]
    pub sl_att2: crate::Reg<self::ppu_fx::sl_att2::SL_ATT2_SPEC>,
    #[doc = "0x1c - Slave attributes 3"]
    pub sl_att3: crate::Reg<self::ppu_fx::sl_att3::SL_ATT3_SPEC>,
    #[doc = "0x20 - Master region, base address"]
    pub ms_addr: crate::Reg<self::ppu_fx::ms_addr::MS_ADDR_SPEC>,
    #[doc = "0x24 - Master region, size"]
    pub ms_size: crate::Reg<self::ppu_fx::ms_size::MS_SIZE_SPEC>,
    _reserved8: [u8; 0x08],
    #[doc = "0x30 - Master attributes 0"]
    pub ms_att0: crate::Reg<self::ppu_fx::ms_att0::MS_ATT0_SPEC>,
    #[doc = "0x34 - Master attributes 1"]
    pub ms_att1: crate::Reg<self::ppu_fx::ms_att1::MS_ATT1_SPEC>,
    #[doc = "0x38 - Master attributes 2"]
    pub ms_att2: crate::Reg<self::ppu_fx::ms_att2::MS_ATT2_SPEC>,
    #[doc = "0x3c - Master attributes 3"]
    pub ms_att3: crate::Reg<self::ppu_fx::ms_att3::MS_ATT3_SPEC>,
}
#[doc = r"Register block"]
#[doc = "Fixed protection structure pair"]
pub mod ppu_fx;
