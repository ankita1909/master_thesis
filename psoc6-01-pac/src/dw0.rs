#[doc = r"Register block"]
#[repr(C)]
pub struct RegisterBlock {
    #[doc = "0x00 - Control"]
    pub ctl: crate::Reg<ctl::CTL_SPEC>,
    #[doc = "0x04 - Status"]
    pub status: crate::Reg<status::STATUS_SPEC>,
    _reserved2: [u8; 0x18],
    #[doc = "0x20 - Active descriptor control"]
    pub act_descr_ctl: crate::Reg<act_descr_ctl::ACT_DESCR_CTL_SPEC>,
    #[doc = "0x24 - Active descriptor source"]
    pub act_descr_src: crate::Reg<act_descr_src::ACT_DESCR_SRC_SPEC>,
    #[doc = "0x28 - Active descriptor destination"]
    pub act_descr_dst: crate::Reg<act_descr_dst::ACT_DESCR_DST_SPEC>,
    _reserved5: [u8; 0x04],
    #[doc = "0x30 - Active descriptor X loop control"]
    pub act_descr_x_ctl: crate::Reg<act_descr_x_ctl::ACT_DESCR_X_CTL_SPEC>,
    #[doc = "0x34 - Active descriptor Y loop control"]
    pub act_descr_y_ctl: crate::Reg<act_descr_y_ctl::ACT_DESCR_Y_CTL_SPEC>,
    #[doc = "0x38 - Active descriptor next pointer"]
    pub act_descr_next_ptr: crate::Reg<act_descr_next_ptr::ACT_DESCR_NEXT_PTR_SPEC>,
    _reserved8: [u8; 0x04],
    #[doc = "0x40 - Active source"]
    pub act_src: crate::Reg<act_src::ACT_SRC_SPEC>,
    #[doc = "0x44 - Active destination"]
    pub act_dst: crate::Reg<act_dst::ACT_DST_SPEC>,
    _reserved10: [u8; 0x38],
    #[doc = "0x80 - ECC control"]
    pub ecc_ctl: crate::Reg<ecc_ctl::ECC_CTL_SPEC>,
    _reserved11: [u8; 0x7c],
    #[doc = "0x100 - CRC control"]
    pub crc_ctl: crate::Reg<crc_ctl::CRC_CTL_SPEC>,
    _reserved12: [u8; 0x0c],
    #[doc = "0x110 - CRC data control"]
    pub crc_data_ctl: crate::Reg<crc_data_ctl::CRC_DATA_CTL_SPEC>,
    _reserved13: [u8; 0x0c],
    #[doc = "0x120 - CRC polynomial control"]
    pub crc_pol_ctl: crate::Reg<crc_pol_ctl::CRC_POL_CTL_SPEC>,
    _reserved14: [u8; 0x0c],
    #[doc = "0x130 - CRC LFSR control"]
    pub crc_lfsr_ctl: crate::Reg<crc_lfsr_ctl::CRC_LFSR_CTL_SPEC>,
    _reserved15: [u8; 0x0c],
    #[doc = "0x140 - CRC remainder control"]
    pub crc_rem_ctl: crate::Reg<crc_rem_ctl::CRC_REM_CTL_SPEC>,
    _reserved16: [u8; 0x04],
    #[doc = "0x148 - CRC remainder result"]
    pub crc_rem_result: crate::Reg<crc_rem_result::CRC_REM_RESULT_SPEC>,
    _reserved17: [u8; 0x7eb4],
    #[doc = "0x8000..0x802c - DW channel structure"]
    pub ch_struct0: CH_STRUCT,
    _reserved18: [u8; 0x14],
    #[doc = "0x8040..0x806c - DW channel structure"]
    pub ch_struct1: CH_STRUCT,
    _reserved19: [u8; 0x14],
    #[doc = "0x8080..0x80ac - DW channel structure"]
    pub ch_struct2: CH_STRUCT,
    _reserved20: [u8; 0x14],
    #[doc = "0x80c0..0x80ec - DW channel structure"]
    pub ch_struct3: CH_STRUCT,
    _reserved21: [u8; 0x14],
    #[doc = "0x8100..0x812c - DW channel structure"]
    pub ch_struct4: CH_STRUCT,
    _reserved22: [u8; 0x14],
    #[doc = "0x8140..0x816c - DW channel structure"]
    pub ch_struct5: CH_STRUCT,
    _reserved23: [u8; 0x14],
    #[doc = "0x8180..0x81ac - DW channel structure"]
    pub ch_struct6: CH_STRUCT,
    _reserved24: [u8; 0x14],
    #[doc = "0x81c0..0x81ec - DW channel structure"]
    pub ch_struct7: CH_STRUCT,
    _reserved25: [u8; 0x14],
    #[doc = "0x8200..0x822c - DW channel structure"]
    pub ch_struct8: CH_STRUCT,
    _reserved26: [u8; 0x14],
    #[doc = "0x8240..0x826c - DW channel structure"]
    pub ch_struct9: CH_STRUCT,
    _reserved27: [u8; 0x14],
    #[doc = "0x8280..0x82ac - DW channel structure"]
    pub ch_struct10: CH_STRUCT,
    _reserved28: [u8; 0x14],
    #[doc = "0x82c0..0x82ec - DW channel structure"]
    pub ch_struct11: CH_STRUCT,
    _reserved29: [u8; 0x14],
    #[doc = "0x8300..0x832c - DW channel structure"]
    pub ch_struct12: CH_STRUCT,
    _reserved30: [u8; 0x14],
    #[doc = "0x8340..0x836c - DW channel structure"]
    pub ch_struct13: CH_STRUCT,
    _reserved31: [u8; 0x14],
    #[doc = "0x8380..0x83ac - DW channel structure"]
    pub ch_struct14: CH_STRUCT,
    _reserved32: [u8; 0x14],
    #[doc = "0x83c0..0x83ec - DW channel structure"]
    pub ch_struct15: CH_STRUCT,
    _reserved33: [u8; 0x14],
    #[doc = "0x8400..0x842c - DW channel structure"]
    pub ch_struct16: CH_STRUCT,
    _reserved34: [u8; 0x14],
    #[doc = "0x8440..0x846c - DW channel structure"]
    pub ch_struct17: CH_STRUCT,
    _reserved35: [u8; 0x14],
    #[doc = "0x8480..0x84ac - DW channel structure"]
    pub ch_struct18: CH_STRUCT,
    _reserved36: [u8; 0x14],
    #[doc = "0x84c0..0x84ec - DW channel structure"]
    pub ch_struct19: CH_STRUCT,
    _reserved37: [u8; 0x14],
    #[doc = "0x8500..0x852c - DW channel structure"]
    pub ch_struct20: CH_STRUCT,
    _reserved38: [u8; 0x14],
    #[doc = "0x8540..0x856c - DW channel structure"]
    pub ch_struct21: CH_STRUCT,
    _reserved39: [u8; 0x14],
    #[doc = "0x8580..0x85ac - DW channel structure"]
    pub ch_struct22: CH_STRUCT,
    _reserved40: [u8; 0x14],
    #[doc = "0x85c0..0x85ec - DW channel structure"]
    pub ch_struct23: CH_STRUCT,
    _reserved41: [u8; 0x14],
    #[doc = "0x8600..0x862c - DW channel structure"]
    pub ch_struct24: CH_STRUCT,
    _reserved42: [u8; 0x14],
    #[doc = "0x8640..0x866c - DW channel structure"]
    pub ch_struct25: CH_STRUCT,
    _reserved43: [u8; 0x14],
    #[doc = "0x8680..0x86ac - DW channel structure"]
    pub ch_struct26: CH_STRUCT,
    _reserved44: [u8; 0x14],
    #[doc = "0x86c0..0x86ec - DW channel structure"]
    pub ch_struct27: CH_STRUCT,
    _reserved45: [u8; 0x14],
    #[doc = "0x8700..0x872c - DW channel structure"]
    pub ch_struct28: CH_STRUCT,
}
#[doc = r"Register block"]
#[repr(C)]
pub struct CH_STRUCT {
    #[doc = "0x00 - Channel control"]
    pub ch_ctl: crate::Reg<self::ch_struct::ch_ctl::CH_CTL_SPEC>,
    #[doc = "0x04 - Channel status"]
    pub ch_status: crate::Reg<self::ch_struct::ch_status::CH_STATUS_SPEC>,
    #[doc = "0x08 - Channel current indices"]
    pub ch_idx: crate::Reg<self::ch_struct::ch_idx::CH_IDX_SPEC>,
    #[doc = "0x0c - Channel current descriptor pointer"]
    pub ch_curr_ptr: crate::Reg<self::ch_struct::ch_curr_ptr::CH_CURR_PTR_SPEC>,
    #[doc = "0x10 - Interrupt"]
    pub intr: crate::Reg<self::ch_struct::intr::INTR_SPEC>,
    #[doc = "0x14 - Interrupt set"]
    pub intr_set: crate::Reg<self::ch_struct::intr_set::INTR_SET_SPEC>,
    #[doc = "0x18 - Interrupt mask"]
    pub intr_mask: crate::Reg<self::ch_struct::intr_mask::INTR_MASK_SPEC>,
    #[doc = "0x1c - Interrupt masked"]
    pub intr_masked: crate::Reg<self::ch_struct::intr_masked::INTR_MASKED_SPEC>,
    #[doc = "0x20 - SRAM data 0"]
    pub sram_data0: crate::Reg<self::ch_struct::sram_data0::SRAM_DATA0_SPEC>,
    #[doc = "0x24 - SRAM data 1"]
    pub sram_data1: crate::Reg<self::ch_struct::sram_data1::SRAM_DATA1_SPEC>,
    #[doc = "0x28 - Channel software trigger"]
    pub tr_cmd: crate::Reg<self::ch_struct::tr_cmd::TR_CMD_SPEC>,
}
#[doc = r"Register block"]
#[doc = "DW channel structure"]
pub mod ch_struct;
#[doc = "CTL register accessor: an alias for `Reg<CTL_SPEC>`"]
pub type CTL = crate::Reg<ctl::CTL_SPEC>;
#[doc = "Control"]
pub mod ctl;
#[doc = "STATUS register accessor: an alias for `Reg<STATUS_SPEC>`"]
pub type STATUS = crate::Reg<status::STATUS_SPEC>;
#[doc = "Status"]
pub mod status;
#[doc = "ACT_DESCR_CTL register accessor: an alias for `Reg<ACT_DESCR_CTL_SPEC>`"]
pub type ACT_DESCR_CTL = crate::Reg<act_descr_ctl::ACT_DESCR_CTL_SPEC>;
#[doc = "Active descriptor control"]
pub mod act_descr_ctl;
#[doc = "ACT_DESCR_SRC register accessor: an alias for `Reg<ACT_DESCR_SRC_SPEC>`"]
pub type ACT_DESCR_SRC = crate::Reg<act_descr_src::ACT_DESCR_SRC_SPEC>;
#[doc = "Active descriptor source"]
pub mod act_descr_src;
#[doc = "ACT_DESCR_DST register accessor: an alias for `Reg<ACT_DESCR_DST_SPEC>`"]
pub type ACT_DESCR_DST = crate::Reg<act_descr_dst::ACT_DESCR_DST_SPEC>;
#[doc = "Active descriptor destination"]
pub mod act_descr_dst;
#[doc = "ACT_DESCR_X_CTL register accessor: an alias for `Reg<ACT_DESCR_X_CTL_SPEC>`"]
pub type ACT_DESCR_X_CTL = crate::Reg<act_descr_x_ctl::ACT_DESCR_X_CTL_SPEC>;
#[doc = "Active descriptor X loop control"]
pub mod act_descr_x_ctl;
#[doc = "ACT_DESCR_Y_CTL register accessor: an alias for `Reg<ACT_DESCR_Y_CTL_SPEC>`"]
pub type ACT_DESCR_Y_CTL = crate::Reg<act_descr_y_ctl::ACT_DESCR_Y_CTL_SPEC>;
#[doc = "Active descriptor Y loop control"]
pub mod act_descr_y_ctl;
#[doc = "ACT_DESCR_NEXT_PTR register accessor: an alias for `Reg<ACT_DESCR_NEXT_PTR_SPEC>`"]
pub type ACT_DESCR_NEXT_PTR = crate::Reg<act_descr_next_ptr::ACT_DESCR_NEXT_PTR_SPEC>;
#[doc = "Active descriptor next pointer"]
pub mod act_descr_next_ptr;
#[doc = "ACT_SRC register accessor: an alias for `Reg<ACT_SRC_SPEC>`"]
pub type ACT_SRC = crate::Reg<act_src::ACT_SRC_SPEC>;
#[doc = "Active source"]
pub mod act_src;
#[doc = "ACT_DST register accessor: an alias for `Reg<ACT_DST_SPEC>`"]
pub type ACT_DST = crate::Reg<act_dst::ACT_DST_SPEC>;
#[doc = "Active destination"]
pub mod act_dst;
#[doc = "ECC_CTL register accessor: an alias for `Reg<ECC_CTL_SPEC>`"]
pub type ECC_CTL = crate::Reg<ecc_ctl::ECC_CTL_SPEC>;
#[doc = "ECC control"]
pub mod ecc_ctl;
#[doc = "CRC_CTL register accessor: an alias for `Reg<CRC_CTL_SPEC>`"]
pub type CRC_CTL = crate::Reg<crc_ctl::CRC_CTL_SPEC>;
#[doc = "CRC control"]
pub mod crc_ctl;
#[doc = "CRC_DATA_CTL register accessor: an alias for `Reg<CRC_DATA_CTL_SPEC>`"]
pub type CRC_DATA_CTL = crate::Reg<crc_data_ctl::CRC_DATA_CTL_SPEC>;
#[doc = "CRC data control"]
pub mod crc_data_ctl;
#[doc = "CRC_POL_CTL register accessor: an alias for `Reg<CRC_POL_CTL_SPEC>`"]
pub type CRC_POL_CTL = crate::Reg<crc_pol_ctl::CRC_POL_CTL_SPEC>;
#[doc = "CRC polynomial control"]
pub mod crc_pol_ctl;
#[doc = "CRC_LFSR_CTL register accessor: an alias for `Reg<CRC_LFSR_CTL_SPEC>`"]
pub type CRC_LFSR_CTL = crate::Reg<crc_lfsr_ctl::CRC_LFSR_CTL_SPEC>;
#[doc = "CRC LFSR control"]
pub mod crc_lfsr_ctl;
#[doc = "CRC_REM_CTL register accessor: an alias for `Reg<CRC_REM_CTL_SPEC>`"]
pub type CRC_REM_CTL = crate::Reg<crc_rem_ctl::CRC_REM_CTL_SPEC>;
#[doc = "CRC remainder control"]
pub mod crc_rem_ctl;
#[doc = "CRC_REM_RESULT register accessor: an alias for `Reg<CRC_REM_RESULT_SPEC>`"]
pub type CRC_REM_RESULT = crate::Reg<crc_rem_result::CRC_REM_RESULT_SPEC>;
#[doc = "CRC remainder result"]
pub mod crc_rem_result;
