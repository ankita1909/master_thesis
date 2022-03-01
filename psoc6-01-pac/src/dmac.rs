#[doc = r"Register block"]
#[repr(C)]
pub struct RegisterBlock {
    #[doc = "0x00 - Control"]
    pub ctl: crate::Reg<ctl::CTL_SPEC>,
    _reserved1: [u8; 0x04],
    #[doc = "0x08 - Active channels"]
    pub active: crate::Reg<active::ACTIVE_SPEC>,
    _reserved2: [u8; 0x0ff4],
    #[doc = "0x1000..0x1090 - DMA controller channel"]
    pub ch0: CH,
    _reserved3: [u8; 0x70],
    #[doc = "0x1100..0x1190 - DMA controller channel"]
    pub ch1: CH,
    _reserved4: [u8; 0x70],
    #[doc = "0x1200..0x1290 - DMA controller channel"]
    pub ch2: CH,
    _reserved5: [u8; 0x70],
    #[doc = "0x1300..0x1390 - DMA controller channel"]
    pub ch3: CH,
}
#[doc = r"Register block"]
#[repr(C)]
pub struct CH {
    #[doc = "0x00 - Channel control"]
    pub ctl: crate::Reg<self::ch::ctl::CTL_SPEC>,
    _reserved1: [u8; 0x0c],
    #[doc = "0x10 - Channel current indices"]
    pub idx: crate::Reg<self::ch::idx::IDX_SPEC>,
    #[doc = "0x14 - Channel current source address"]
    pub src: crate::Reg<self::ch::src::SRC_SPEC>,
    #[doc = "0x18 - Channel current destination address"]
    pub dst: crate::Reg<self::ch::dst::DST_SPEC>,
    _reserved4: [u8; 0x04],
    #[doc = "0x20 - Channel current descriptor pointer"]
    pub curr: crate::Reg<self::ch::curr::CURR_SPEC>,
    _reserved5: [u8; 0x04],
    #[doc = "0x28 - Channle software trigger"]
    pub tr_cmd: crate::Reg<self::ch::tr_cmd::TR_CMD_SPEC>,
    _reserved6: [u8; 0x14],
    #[doc = "0x40 - Channel descriptor status"]
    pub descr_status: crate::Reg<self::ch::descr_status::DESCR_STATUS_SPEC>,
    _reserved7: [u8; 0x1c],
    #[doc = "0x60 - Channel descriptor control"]
    pub descr_ctl: crate::Reg<self::ch::descr_ctl::DESCR_CTL_SPEC>,
    #[doc = "0x64 - Channel descriptor source"]
    pub descr_src: crate::Reg<self::ch::descr_src::DESCR_SRC_SPEC>,
    #[doc = "0x68 - Channel descriptor destination"]
    pub descr_dst: crate::Reg<self::ch::descr_dst::DESCR_DST_SPEC>,
    #[doc = "0x6c - Channel descriptor X size"]
    pub descr_x_size: crate::Reg<self::ch::descr_x_size::DESCR_X_SIZE_SPEC>,
    #[doc = "0x70 - Channel descriptor X increment"]
    pub descr_x_incr: crate::Reg<self::ch::descr_x_incr::DESCR_X_INCR_SPEC>,
    #[doc = "0x74 - Channel descriptor Y size"]
    pub descr_y_size: crate::Reg<self::ch::descr_y_size::DESCR_Y_SIZE_SPEC>,
    #[doc = "0x78 - Channel descriptor Y increment"]
    pub descr_y_incr: crate::Reg<self::ch::descr_y_incr::DESCR_Y_INCR_SPEC>,
    #[doc = "0x7c - Channel descriptor next pointer"]
    pub descr_next: crate::Reg<self::ch::descr_next::DESCR_NEXT_SPEC>,
    #[doc = "0x80 - Interrupt"]
    pub intr: crate::Reg<self::ch::intr::INTR_SPEC>,
    #[doc = "0x84 - Interrupt set"]
    pub intr_set: crate::Reg<self::ch::intr_set::INTR_SET_SPEC>,
    #[doc = "0x88 - Interrupt mask"]
    pub intr_mask: crate::Reg<self::ch::intr_mask::INTR_MASK_SPEC>,
    #[doc = "0x8c - Interrupt masked"]
    pub intr_masked: crate::Reg<self::ch::intr_masked::INTR_MASKED_SPEC>,
}
#[doc = r"Register block"]
#[doc = "DMA controller channel"]
pub mod ch;
#[doc = "CTL register accessor: an alias for `Reg<CTL_SPEC>`"]
pub type CTL = crate::Reg<ctl::CTL_SPEC>;
#[doc = "Control"]
pub mod ctl;
#[doc = "ACTIVE register accessor: an alias for `Reg<ACTIVE_SPEC>`"]
pub type ACTIVE = crate::Reg<active::ACTIVE_SPEC>;
#[doc = "Active channels"]
pub mod active;
