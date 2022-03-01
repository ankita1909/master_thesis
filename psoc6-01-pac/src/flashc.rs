#[doc = r"Register block"]
#[repr(C)]
pub struct RegisterBlock {
    #[doc = "0x00 - Control"]
    pub flash_ctl: crate::Reg<flash_ctl::FLASH_CTL_SPEC>,
    #[doc = "0x04 - Flash power control"]
    pub flash_pwr_ctl: crate::Reg<flash_pwr_ctl::FLASH_PWR_CTL_SPEC>,
    #[doc = "0x08 - Command"]
    pub flash_cmd: crate::Reg<flash_cmd::FLASH_CMD_SPEC>,
    _reserved3: [u8; 0x0294],
    #[doc = "0x2a0 - ECC control"]
    pub ecc_ctl: crate::Reg<ecc_ctl::ECC_CTL_SPEC>,
    _reserved4: [u8; 0x0c],
    #[doc = "0x2b0 - eCT Flash SRAM ECC control 0"]
    pub fm_sram_ecc_ctl0: crate::Reg<fm_sram_ecc_ctl0::FM_SRAM_ECC_CTL0_SPEC>,
    #[doc = "0x2b4 - eCT Flash SRAM ECC control 1"]
    pub fm_sram_ecc_ctl1: crate::Reg<fm_sram_ecc_ctl1::FM_SRAM_ECC_CTL1_SPEC>,
    #[doc = "0x2b8 - eCT Flash SRAM ECC control 2"]
    pub fm_sram_ecc_ctl2: crate::Reg<fm_sram_ecc_ctl2::FM_SRAM_ECC_CTL2_SPEC>,
    #[doc = "0x2bc - eCT Flash SRAM ECC control 3"]
    pub fm_sram_ecc_ctl3: crate::Reg<fm_sram_ecc_ctl3::FM_SRAM_ECC_CTL3_SPEC>,
    _reserved8: [u8; 0x0140],
    #[doc = "0x400 - CM0+ cache control"]
    pub cm0_ca_ctl0: crate::Reg<cm0_ca_ctl0::CM0_CA_CTL0_SPEC>,
    #[doc = "0x404 - CM0+ cache control"]
    pub cm0_ca_ctl1: crate::Reg<cm0_ca_ctl1::CM0_CA_CTL1_SPEC>,
    #[doc = "0x408 - CM0+ cache control"]
    pub cm0_ca_ctl2: crate::Reg<cm0_ca_ctl2::CM0_CA_CTL2_SPEC>,
    _reserved11: [u8; 0x34],
    #[doc = "0x440 - CM0+ cache status 0"]
    pub cm0_ca_status0: crate::Reg<cm0_ca_status0::CM0_CA_STATUS0_SPEC>,
    #[doc = "0x444 - CM0+ cache status 1"]
    pub cm0_ca_status1: crate::Reg<cm0_ca_status1::CM0_CA_STATUS1_SPEC>,
    #[doc = "0x448 - CM0+ cache status 2"]
    pub cm0_ca_status2: crate::Reg<cm0_ca_status2::CM0_CA_STATUS2_SPEC>,
    _reserved14: [u8; 0x14],
    #[doc = "0x460 - CM0+ interface status"]
    pub cm0_status: crate::Reg<cm0_status::CM0_STATUS_SPEC>,
    _reserved15: [u8; 0x1c],
    #[doc = "0x480 - CM4 cache control"]
    pub cm4_ca_ctl0: crate::Reg<cm4_ca_ctl0::CM4_CA_CTL0_SPEC>,
    #[doc = "0x484 - CM4 cache control"]
    pub cm4_ca_ctl1: crate::Reg<cm4_ca_ctl1::CM4_CA_CTL1_SPEC>,
    #[doc = "0x488 - CM4 cache control"]
    pub cm4_ca_ctl2: crate::Reg<cm4_ca_ctl2::CM4_CA_CTL2_SPEC>,
    _reserved18: [u8; 0x34],
    #[doc = "0x4c0 - CM4 cache status 0"]
    pub cm4_ca_status0: crate::Reg<cm4_ca_status0::CM4_CA_STATUS0_SPEC>,
    #[doc = "0x4c4 - CM4 cache status 1"]
    pub cm4_ca_status1: crate::Reg<cm4_ca_status1::CM4_CA_STATUS1_SPEC>,
    #[doc = "0x4c8 - CM4 cache status 2"]
    pub cm4_ca_status2: crate::Reg<cm4_ca_status2::CM4_CA_STATUS2_SPEC>,
    _reserved21: [u8; 0x14],
    #[doc = "0x4e0 - CM4 interface status"]
    pub cm4_status: crate::Reg<cm4_status::CM4_STATUS_SPEC>,
    _reserved22: [u8; 0x1c],
    #[doc = "0x500 - Cryptography buffer control"]
    pub crypto_buff_ctl: crate::Reg<crypto_buff_ctl::CRYPTO_BUFF_CTL_SPEC>,
    _reserved23: [u8; 0x7c],
    #[doc = "0x580 - Datawire 0 buffer control"]
    pub dw0_buff_ctl: crate::Reg<dw0_buff_ctl::DW0_BUFF_CTL_SPEC>,
    _reserved24: [u8; 0x7c],
    #[doc = "0x600 - Datawire 1 buffer control"]
    pub dw1_buff_ctl: crate::Reg<dw1_buff_ctl::DW1_BUFF_CTL_SPEC>,
    _reserved25: [u8; 0x7c],
    #[doc = "0x680 - DMA controller buffer control"]
    pub dmac_buff_ctl: crate::Reg<dmac_buff_ctl::DMAC_BUFF_CTL_SPEC>,
    _reserved26: [u8; 0x7c],
    #[doc = "0x700 - External master 0 buffer control"]
    pub ext_ms0_buff_ctl: crate::Reg<ext_ms0_buff_ctl::EXT_MS0_BUFF_CTL_SPEC>,
    _reserved27: [u8; 0x7c],
    #[doc = "0x780 - External master 1 buffer control"]
    pub ext_ms1_buff_ctl: crate::Reg<ext_ms1_buff_ctl::EXT_MS1_BUFF_CTL_SPEC>,
    _reserved28: [u8; 0xe87c],
    #[doc = "0xf000..0x10000 - Flash Macro Registers"]
    pub fm_ctl: FM_CTL,
}
#[doc = r"Register block"]
#[repr(C)]
pub struct FM_CTL {
    #[doc = "0x00 - Flash macro control"]
    pub fm_ctl: crate::Reg<self::fm_ctl::fm_ctl::FM_CTL_SPEC>,
    #[doc = "0x04 - Status"]
    pub status: crate::Reg<self::fm_ctl::status::STATUS_SPEC>,
    #[doc = "0x08 - Flash macro address"]
    pub fm_addr: crate::Reg<self::fm_ctl::fm_addr::FM_ADDR_SPEC>,
    #[doc = "0x0c - Bookmark register - keeps the current FW HV seq"]
    pub bookmark: crate::Reg<self::fm_ctl::bookmark::BOOKMARK_SPEC>,
    #[doc = "0x10 - Regular flash geometry"]
    pub geometry: crate::Reg<self::fm_ctl::geometry::GEOMETRY_SPEC>,
    #[doc = "0x14 - Supervisory flash geometry"]
    pub geometry_supervisory:
        crate::Reg<self::fm_ctl::geometry_supervisory::GEOMETRY_SUPERVISORY_SPEC>,
    #[doc = "0x18 - Analog control 0"]
    pub ana_ctl0: crate::Reg<self::fm_ctl::ana_ctl0::ANA_CTL0_SPEC>,
    #[doc = "0x1c - Analog control 1"]
    pub ana_ctl1: crate::Reg<self::fm_ctl::ana_ctl1::ANA_CTL1_SPEC>,
    _reserved8: [u8; 0x08],
    #[doc = "0x28 - Wait State control"]
    pub wait_ctl: crate::Reg<self::fm_ctl::wait_ctl::WAIT_CTL_SPEC>,
    _reserved9: [u8; 0x08],
    #[doc = "0x34 - Timer prescaler (clk_t to timer clock frequency divider)"]
    pub timer_clk_ctl: crate::Reg<self::fm_ctl::timer_clk_ctl::TIMER_CLK_CTL_SPEC>,
    #[doc = "0x38 - Timer control"]
    pub timer_ctl: crate::Reg<self::fm_ctl::timer_ctl::TIMER_CTL_SPEC>,
    #[doc = "0x3c - MPCON clock"]
    pub aclk_ctl: crate::Reg<self::fm_ctl::aclk_ctl::ACLK_CTL_SPEC>,
    #[doc = "0x40 - Interrupt"]
    pub intr: crate::Reg<self::fm_ctl::intr::INTR_SPEC>,
    #[doc = "0x44 - Interrupt set"]
    pub intr_set: crate::Reg<self::fm_ctl::intr_set::INTR_SET_SPEC>,
    #[doc = "0x48 - Interrupt mask"]
    pub intr_mask: crate::Reg<self::fm_ctl::intr_mask::INTR_MASK_SPEC>,
    #[doc = "0x4c - Interrupt masked"]
    pub intr_masked: crate::Reg<self::fm_ctl::intr_masked::INTR_MASKED_SPEC>,
    #[doc = "0x50 - Cal control BG LO trim bits"]
    pub cal_ctl0: crate::Reg<self::fm_ctl::cal_ctl0::CAL_CTL0_SPEC>,
    #[doc = "0x54 - Cal control BG HI trim bits"]
    pub cal_ctl1: crate::Reg<self::fm_ctl::cal_ctl1::CAL_CTL1_SPEC>,
    #[doc = "0x58 - Cal control BG LO&HI trim bits"]
    pub cal_ctl2: crate::Reg<self::fm_ctl::cal_ctl2::CAL_CTL2_SPEC>,
    #[doc = "0x5c - Cal control osc trim bits, idac, sdac, itim"]
    pub cal_ctl3: crate::Reg<self::fm_ctl::cal_ctl3::CAL_CTL3_SPEC>,
    #[doc = "0x60 - Cal Control Vlim, SA, fdiv, reg_act"]
    pub cal_ctl4: crate::Reg<self::fm_ctl::cal_ctl4::CAL_CTL4_SPEC>,
    #[doc = "0x64 - Cal control"]
    pub cal_ctl5: crate::Reg<self::fm_ctl::cal_ctl5::CAL_CTL5_SPEC>,
    #[doc = "0x68 - SA trim LP/ULP"]
    pub cal_ctl6: crate::Reg<self::fm_ctl::cal_ctl6::CAL_CTL6_SPEC>,
    #[doc = "0x6c - Cal control"]
    pub cal_ctl7: crate::Reg<self::fm_ctl::cal_ctl7::CAL_CTL7_SPEC>,
    _reserved24: [u8; 0x10],
    #[doc = "0x80 - Redundancy Control normal sectors 0,1"]
    pub red_ctl01: crate::Reg<self::fm_ctl::red_ctl01::RED_CTL01_SPEC>,
    #[doc = "0x84 - Redundancy Control normal sectors 2,3"]
    pub red_ctl23: crate::Reg<self::fm_ctl::red_ctl23::RED_CTL23_SPEC>,
    #[doc = "0x88 - Redundancy Control normal sectors 4,5"]
    pub red_ctl45: crate::Reg<self::fm_ctl::red_ctl45::RED_CTL45_SPEC>,
    #[doc = "0x8c - Redundancy Control normal sectors 6,7"]
    pub red_ctl67: crate::Reg<self::fm_ctl::red_ctl67::RED_CTL67_SPEC>,
    #[doc = "0x90 - Redundancy Control special sectors 0,1"]
    pub red_ctl_sm01: crate::Reg<self::fm_ctl::red_ctl_sm01::RED_CTL_SM01_SPEC>,
    _reserved29: [u8; 0x04],
    #[doc = "0x98 - R-grant delay for program"]
    pub rgrant_delay_prg: crate::Reg<self::fm_ctl::rgrant_delay_prg::RGRANT_DELAY_PRG_SPEC>,
    _reserved30: [u8; 0x04],
    #[doc = "0xa0 - HV Pulse Delay for seq 1&2 pre"]
    pub pw_seq12: crate::Reg<self::fm_ctl::pw_seq12::PW_SEQ12_SPEC>,
    #[doc = "0xa4 - HV Pulse Delay for seq2 post & seq3"]
    pub pw_seq23: crate::Reg<self::fm_ctl::pw_seq23::PW_SEQ23_SPEC>,
    #[doc = "0xa8 - R-grant delay scale for erase"]
    pub rgrant_scale_ers: crate::Reg<self::fm_ctl::rgrant_scale_ers::RGRANT_SCALE_ERS_SPEC>,
    #[doc = "0xac - R-grant delay for erase"]
    pub rgrant_delay_ers: crate::Reg<self::fm_ctl::rgrant_delay_ers::RGRANT_DELAY_ERS_SPEC>,
    _reserved34: [u8; 0x074c],
    #[doc = "0x7fc - Flash macro write page latches all"]
    pub fm_pl_wrdata_all: crate::Reg<self::fm_ctl::fm_pl_wrdata_all::FM_PL_WRDATA_ALL_SPEC>,
    #[doc = "0x800..0xc00 - Flash macro Page Latches data"]
    pub fm_pl_data: [crate::Reg<self::fm_ctl::fm_pl_data::FM_PL_DATA_SPEC>; 256],
    #[doc = "0xc00..0x1000 - Flash macro memory sense amplifier and column decoder data"]
    pub fm_mem_data: [crate::Reg<self::fm_ctl::fm_mem_data::FM_MEM_DATA_SPEC>; 256],
}
#[doc = r"Register block"]
#[doc = "Flash Macro Registers"]
pub mod fm_ctl;
#[doc = "FLASH_CTL register accessor: an alias for `Reg<FLASH_CTL_SPEC>`"]
pub type FLASH_CTL = crate::Reg<flash_ctl::FLASH_CTL_SPEC>;
#[doc = "Control"]
pub mod flash_ctl;
#[doc = "FLASH_PWR_CTL register accessor: an alias for `Reg<FLASH_PWR_CTL_SPEC>`"]
pub type FLASH_PWR_CTL = crate::Reg<flash_pwr_ctl::FLASH_PWR_CTL_SPEC>;
#[doc = "Flash power control"]
pub mod flash_pwr_ctl;
#[doc = "FLASH_CMD register accessor: an alias for `Reg<FLASH_CMD_SPEC>`"]
pub type FLASH_CMD = crate::Reg<flash_cmd::FLASH_CMD_SPEC>;
#[doc = "Command"]
pub mod flash_cmd;
#[doc = "ECC_CTL register accessor: an alias for `Reg<ECC_CTL_SPEC>`"]
pub type ECC_CTL = crate::Reg<ecc_ctl::ECC_CTL_SPEC>;
#[doc = "ECC control"]
pub mod ecc_ctl;
#[doc = "FM_SRAM_ECC_CTL0 register accessor: an alias for `Reg<FM_SRAM_ECC_CTL0_SPEC>`"]
pub type FM_SRAM_ECC_CTL0 = crate::Reg<fm_sram_ecc_ctl0::FM_SRAM_ECC_CTL0_SPEC>;
#[doc = "eCT Flash SRAM ECC control 0"]
pub mod fm_sram_ecc_ctl0;
#[doc = "FM_SRAM_ECC_CTL1 register accessor: an alias for `Reg<FM_SRAM_ECC_CTL1_SPEC>`"]
pub type FM_SRAM_ECC_CTL1 = crate::Reg<fm_sram_ecc_ctl1::FM_SRAM_ECC_CTL1_SPEC>;
#[doc = "eCT Flash SRAM ECC control 1"]
pub mod fm_sram_ecc_ctl1;
#[doc = "FM_SRAM_ECC_CTL2 register accessor: an alias for `Reg<FM_SRAM_ECC_CTL2_SPEC>`"]
pub type FM_SRAM_ECC_CTL2 = crate::Reg<fm_sram_ecc_ctl2::FM_SRAM_ECC_CTL2_SPEC>;
#[doc = "eCT Flash SRAM ECC control 2"]
pub mod fm_sram_ecc_ctl2;
#[doc = "FM_SRAM_ECC_CTL3 register accessor: an alias for `Reg<FM_SRAM_ECC_CTL3_SPEC>`"]
pub type FM_SRAM_ECC_CTL3 = crate::Reg<fm_sram_ecc_ctl3::FM_SRAM_ECC_CTL3_SPEC>;
#[doc = "eCT Flash SRAM ECC control 3"]
pub mod fm_sram_ecc_ctl3;
#[doc = "CM0_CA_CTL0 register accessor: an alias for `Reg<CM0_CA_CTL0_SPEC>`"]
pub type CM0_CA_CTL0 = crate::Reg<cm0_ca_ctl0::CM0_CA_CTL0_SPEC>;
#[doc = "CM0+ cache control"]
pub mod cm0_ca_ctl0;
#[doc = "CM0_CA_CTL1 register accessor: an alias for `Reg<CM0_CA_CTL1_SPEC>`"]
pub type CM0_CA_CTL1 = crate::Reg<cm0_ca_ctl1::CM0_CA_CTL1_SPEC>;
#[doc = "CM0+ cache control"]
pub mod cm0_ca_ctl1;
#[doc = "CM0_CA_CTL2 register accessor: an alias for `Reg<CM0_CA_CTL2_SPEC>`"]
pub type CM0_CA_CTL2 = crate::Reg<cm0_ca_ctl2::CM0_CA_CTL2_SPEC>;
#[doc = "CM0+ cache control"]
pub mod cm0_ca_ctl2;
#[doc = "CM0_CA_STATUS0 register accessor: an alias for `Reg<CM0_CA_STATUS0_SPEC>`"]
pub type CM0_CA_STATUS0 = crate::Reg<cm0_ca_status0::CM0_CA_STATUS0_SPEC>;
#[doc = "CM0+ cache status 0"]
pub mod cm0_ca_status0;
#[doc = "CM0_CA_STATUS1 register accessor: an alias for `Reg<CM0_CA_STATUS1_SPEC>`"]
pub type CM0_CA_STATUS1 = crate::Reg<cm0_ca_status1::CM0_CA_STATUS1_SPEC>;
#[doc = "CM0+ cache status 1"]
pub mod cm0_ca_status1;
#[doc = "CM0_CA_STATUS2 register accessor: an alias for `Reg<CM0_CA_STATUS2_SPEC>`"]
pub type CM0_CA_STATUS2 = crate::Reg<cm0_ca_status2::CM0_CA_STATUS2_SPEC>;
#[doc = "CM0+ cache status 2"]
pub mod cm0_ca_status2;
#[doc = "CM0_STATUS register accessor: an alias for `Reg<CM0_STATUS_SPEC>`"]
pub type CM0_STATUS = crate::Reg<cm0_status::CM0_STATUS_SPEC>;
#[doc = "CM0+ interface status"]
pub mod cm0_status;
#[doc = "CM4_CA_CTL0 register accessor: an alias for `Reg<CM4_CA_CTL0_SPEC>`"]
pub type CM4_CA_CTL0 = crate::Reg<cm4_ca_ctl0::CM4_CA_CTL0_SPEC>;
#[doc = "CM4 cache control"]
pub mod cm4_ca_ctl0;
#[doc = "CM4_CA_CTL1 register accessor: an alias for `Reg<CM4_CA_CTL1_SPEC>`"]
pub type CM4_CA_CTL1 = crate::Reg<cm4_ca_ctl1::CM4_CA_CTL1_SPEC>;
#[doc = "CM4 cache control"]
pub mod cm4_ca_ctl1;
#[doc = "CM4_CA_CTL2 register accessor: an alias for `Reg<CM4_CA_CTL2_SPEC>`"]
pub type CM4_CA_CTL2 = crate::Reg<cm4_ca_ctl2::CM4_CA_CTL2_SPEC>;
#[doc = "CM4 cache control"]
pub mod cm4_ca_ctl2;
#[doc = "CM4_CA_STATUS0 register accessor: an alias for `Reg<CM4_CA_STATUS0_SPEC>`"]
pub type CM4_CA_STATUS0 = crate::Reg<cm4_ca_status0::CM4_CA_STATUS0_SPEC>;
#[doc = "CM4 cache status 0"]
pub mod cm4_ca_status0;
#[doc = "CM4_CA_STATUS1 register accessor: an alias for `Reg<CM4_CA_STATUS1_SPEC>`"]
pub type CM4_CA_STATUS1 = crate::Reg<cm4_ca_status1::CM4_CA_STATUS1_SPEC>;
#[doc = "CM4 cache status 1"]
pub mod cm4_ca_status1;
#[doc = "CM4_CA_STATUS2 register accessor: an alias for `Reg<CM4_CA_STATUS2_SPEC>`"]
pub type CM4_CA_STATUS2 = crate::Reg<cm4_ca_status2::CM4_CA_STATUS2_SPEC>;
#[doc = "CM4 cache status 2"]
pub mod cm4_ca_status2;
#[doc = "CM4_STATUS register accessor: an alias for `Reg<CM4_STATUS_SPEC>`"]
pub type CM4_STATUS = crate::Reg<cm4_status::CM4_STATUS_SPEC>;
#[doc = "CM4 interface status"]
pub mod cm4_status;
#[doc = "CRYPTO_BUFF_CTL register accessor: an alias for `Reg<CRYPTO_BUFF_CTL_SPEC>`"]
pub type CRYPTO_BUFF_CTL = crate::Reg<crypto_buff_ctl::CRYPTO_BUFF_CTL_SPEC>;
#[doc = "Cryptography buffer control"]
pub mod crypto_buff_ctl;
#[doc = "DW0_BUFF_CTL register accessor: an alias for `Reg<DW0_BUFF_CTL_SPEC>`"]
pub type DW0_BUFF_CTL = crate::Reg<dw0_buff_ctl::DW0_BUFF_CTL_SPEC>;
#[doc = "Datawire 0 buffer control"]
pub mod dw0_buff_ctl;
#[doc = "DW1_BUFF_CTL register accessor: an alias for `Reg<DW1_BUFF_CTL_SPEC>`"]
pub type DW1_BUFF_CTL = crate::Reg<dw1_buff_ctl::DW1_BUFF_CTL_SPEC>;
#[doc = "Datawire 1 buffer control"]
pub mod dw1_buff_ctl;
#[doc = "DMAC_BUFF_CTL register accessor: an alias for `Reg<DMAC_BUFF_CTL_SPEC>`"]
pub type DMAC_BUFF_CTL = crate::Reg<dmac_buff_ctl::DMAC_BUFF_CTL_SPEC>;
#[doc = "DMA controller buffer control"]
pub mod dmac_buff_ctl;
#[doc = "EXT_MS0_BUFF_CTL register accessor: an alias for `Reg<EXT_MS0_BUFF_CTL_SPEC>`"]
pub type EXT_MS0_BUFF_CTL = crate::Reg<ext_ms0_buff_ctl::EXT_MS0_BUFF_CTL_SPEC>;
#[doc = "External master 0 buffer control"]
pub mod ext_ms0_buff_ctl;
#[doc = "EXT_MS1_BUFF_CTL register accessor: an alias for `Reg<EXT_MS1_BUFF_CTL_SPEC>`"]
pub type EXT_MS1_BUFF_CTL = crate::Reg<ext_ms1_buff_ctl::EXT_MS1_BUFF_CTL_SPEC>;
#[doc = "External master 1 buffer control"]
pub mod ext_ms1_buff_ctl;
