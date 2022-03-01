#[doc = "FM_CTL register accessor: an alias for `Reg<FM_CTL_SPEC>`"]
pub type FM_CTL = crate::Reg<fm_ctl::FM_CTL_SPEC>;
#[doc = "Flash macro control"]
pub mod fm_ctl;
#[doc = "STATUS register accessor: an alias for `Reg<STATUS_SPEC>`"]
pub type STATUS = crate::Reg<status::STATUS_SPEC>;
#[doc = "Status"]
pub mod status;
#[doc = "FM_ADDR register accessor: an alias for `Reg<FM_ADDR_SPEC>`"]
pub type FM_ADDR = crate::Reg<fm_addr::FM_ADDR_SPEC>;
#[doc = "Flash macro address"]
pub mod fm_addr;
#[doc = "BOOKMARK register accessor: an alias for `Reg<BOOKMARK_SPEC>`"]
pub type BOOKMARK = crate::Reg<bookmark::BOOKMARK_SPEC>;
#[doc = "Bookmark register - keeps the current FW HV seq"]
pub mod bookmark;
#[doc = "GEOMETRY register accessor: an alias for `Reg<GEOMETRY_SPEC>`"]
pub type GEOMETRY = crate::Reg<geometry::GEOMETRY_SPEC>;
#[doc = "Regular flash geometry"]
pub mod geometry;
#[doc = "GEOMETRY_SUPERVISORY register accessor: an alias for `Reg<GEOMETRY_SUPERVISORY_SPEC>`"]
pub type GEOMETRY_SUPERVISORY = crate::Reg<geometry_supervisory::GEOMETRY_SUPERVISORY_SPEC>;
#[doc = "Supervisory flash geometry"]
pub mod geometry_supervisory;
#[doc = "ANA_CTL0 register accessor: an alias for `Reg<ANA_CTL0_SPEC>`"]
pub type ANA_CTL0 = crate::Reg<ana_ctl0::ANA_CTL0_SPEC>;
#[doc = "Analog control 0"]
pub mod ana_ctl0;
#[doc = "ANA_CTL1 register accessor: an alias for `Reg<ANA_CTL1_SPEC>`"]
pub type ANA_CTL1 = crate::Reg<ana_ctl1::ANA_CTL1_SPEC>;
#[doc = "Analog control 1"]
pub mod ana_ctl1;
#[doc = "WAIT_CTL register accessor: an alias for `Reg<WAIT_CTL_SPEC>`"]
pub type WAIT_CTL = crate::Reg<wait_ctl::WAIT_CTL_SPEC>;
#[doc = "Wait State control"]
pub mod wait_ctl;
#[doc = "TIMER_CLK_CTL register accessor: an alias for `Reg<TIMER_CLK_CTL_SPEC>`"]
pub type TIMER_CLK_CTL = crate::Reg<timer_clk_ctl::TIMER_CLK_CTL_SPEC>;
#[doc = "Timer prescaler (clk_t to timer clock frequency divider)"]
pub mod timer_clk_ctl;
#[doc = "TIMER_CTL register accessor: an alias for `Reg<TIMER_CTL_SPEC>`"]
pub type TIMER_CTL = crate::Reg<timer_ctl::TIMER_CTL_SPEC>;
#[doc = "Timer control"]
pub mod timer_ctl;
#[doc = "ACLK_CTL register accessor: an alias for `Reg<ACLK_CTL_SPEC>`"]
pub type ACLK_CTL = crate::Reg<aclk_ctl::ACLK_CTL_SPEC>;
#[doc = "MPCON clock"]
pub mod aclk_ctl;
#[doc = "INTR register accessor: an alias for `Reg<INTR_SPEC>`"]
pub type INTR = crate::Reg<intr::INTR_SPEC>;
#[doc = "Interrupt"]
pub mod intr;
#[doc = "INTR_SET register accessor: an alias for `Reg<INTR_SET_SPEC>`"]
pub type INTR_SET = crate::Reg<intr_set::INTR_SET_SPEC>;
#[doc = "Interrupt set"]
pub mod intr_set;
#[doc = "INTR_MASK register accessor: an alias for `Reg<INTR_MASK_SPEC>`"]
pub type INTR_MASK = crate::Reg<intr_mask::INTR_MASK_SPEC>;
#[doc = "Interrupt mask"]
pub mod intr_mask;
#[doc = "INTR_MASKED register accessor: an alias for `Reg<INTR_MASKED_SPEC>`"]
pub type INTR_MASKED = crate::Reg<intr_masked::INTR_MASKED_SPEC>;
#[doc = "Interrupt masked"]
pub mod intr_masked;
#[doc = "CAL_CTL0 register accessor: an alias for `Reg<CAL_CTL0_SPEC>`"]
pub type CAL_CTL0 = crate::Reg<cal_ctl0::CAL_CTL0_SPEC>;
#[doc = "Cal control BG LO trim bits"]
pub mod cal_ctl0;
#[doc = "CAL_CTL1 register accessor: an alias for `Reg<CAL_CTL1_SPEC>`"]
pub type CAL_CTL1 = crate::Reg<cal_ctl1::CAL_CTL1_SPEC>;
#[doc = "Cal control BG HI trim bits"]
pub mod cal_ctl1;
#[doc = "CAL_CTL2 register accessor: an alias for `Reg<CAL_CTL2_SPEC>`"]
pub type CAL_CTL2 = crate::Reg<cal_ctl2::CAL_CTL2_SPEC>;
#[doc = "Cal control BG LO&HI trim bits"]
pub mod cal_ctl2;
#[doc = "CAL_CTL3 register accessor: an alias for `Reg<CAL_CTL3_SPEC>`"]
pub type CAL_CTL3 = crate::Reg<cal_ctl3::CAL_CTL3_SPEC>;
#[doc = "Cal control osc trim bits, idac, sdac, itim"]
pub mod cal_ctl3;
#[doc = "CAL_CTL4 register accessor: an alias for `Reg<CAL_CTL4_SPEC>`"]
pub type CAL_CTL4 = crate::Reg<cal_ctl4::CAL_CTL4_SPEC>;
#[doc = "Cal Control Vlim, SA, fdiv, reg_act"]
pub mod cal_ctl4;
#[doc = "CAL_CTL5 register accessor: an alias for `Reg<CAL_CTL5_SPEC>`"]
pub type CAL_CTL5 = crate::Reg<cal_ctl5::CAL_CTL5_SPEC>;
#[doc = "Cal control"]
pub mod cal_ctl5;
#[doc = "CAL_CTL6 register accessor: an alias for `Reg<CAL_CTL6_SPEC>`"]
pub type CAL_CTL6 = crate::Reg<cal_ctl6::CAL_CTL6_SPEC>;
#[doc = "SA trim LP/ULP"]
pub mod cal_ctl6;
#[doc = "CAL_CTL7 register accessor: an alias for `Reg<CAL_CTL7_SPEC>`"]
pub type CAL_CTL7 = crate::Reg<cal_ctl7::CAL_CTL7_SPEC>;
#[doc = "Cal control"]
pub mod cal_ctl7;
#[doc = "RED_CTL01 register accessor: an alias for `Reg<RED_CTL01_SPEC>`"]
pub type RED_CTL01 = crate::Reg<red_ctl01::RED_CTL01_SPEC>;
#[doc = "Redundancy Control normal sectors 0,1"]
pub mod red_ctl01;
#[doc = "RED_CTL23 register accessor: an alias for `Reg<RED_CTL23_SPEC>`"]
pub type RED_CTL23 = crate::Reg<red_ctl23::RED_CTL23_SPEC>;
#[doc = "Redundancy Control normal sectors 2,3"]
pub mod red_ctl23;
#[doc = "RED_CTL45 register accessor: an alias for `Reg<RED_CTL45_SPEC>`"]
pub type RED_CTL45 = crate::Reg<red_ctl45::RED_CTL45_SPEC>;
#[doc = "Redundancy Control normal sectors 4,5"]
pub mod red_ctl45;
#[doc = "RED_CTL67 register accessor: an alias for `Reg<RED_CTL67_SPEC>`"]
pub type RED_CTL67 = crate::Reg<red_ctl67::RED_CTL67_SPEC>;
#[doc = "Redundancy Control normal sectors 6,7"]
pub mod red_ctl67;
#[doc = "RED_CTL_SM01 register accessor: an alias for `Reg<RED_CTL_SM01_SPEC>`"]
pub type RED_CTL_SM01 = crate::Reg<red_ctl_sm01::RED_CTL_SM01_SPEC>;
#[doc = "Redundancy Control special sectors 0,1"]
pub mod red_ctl_sm01;
#[doc = "RGRANT_DELAY_PRG register accessor: an alias for `Reg<RGRANT_DELAY_PRG_SPEC>`"]
pub type RGRANT_DELAY_PRG = crate::Reg<rgrant_delay_prg::RGRANT_DELAY_PRG_SPEC>;
#[doc = "R-grant delay for program"]
pub mod rgrant_delay_prg;
#[doc = "PW_SEQ12 register accessor: an alias for `Reg<PW_SEQ12_SPEC>`"]
pub type PW_SEQ12 = crate::Reg<pw_seq12::PW_SEQ12_SPEC>;
#[doc = "HV Pulse Delay for seq 1&2 pre"]
pub mod pw_seq12;
#[doc = "PW_SEQ23 register accessor: an alias for `Reg<PW_SEQ23_SPEC>`"]
pub type PW_SEQ23 = crate::Reg<pw_seq23::PW_SEQ23_SPEC>;
#[doc = "HV Pulse Delay for seq2 post & seq3"]
pub mod pw_seq23;
#[doc = "RGRANT_SCALE_ERS register accessor: an alias for `Reg<RGRANT_SCALE_ERS_SPEC>`"]
pub type RGRANT_SCALE_ERS = crate::Reg<rgrant_scale_ers::RGRANT_SCALE_ERS_SPEC>;
#[doc = "R-grant delay scale for erase"]
pub mod rgrant_scale_ers;
#[doc = "RGRANT_DELAY_ERS register accessor: an alias for `Reg<RGRANT_DELAY_ERS_SPEC>`"]
pub type RGRANT_DELAY_ERS = crate::Reg<rgrant_delay_ers::RGRANT_DELAY_ERS_SPEC>;
#[doc = "R-grant delay for erase"]
pub mod rgrant_delay_ers;
#[doc = "FM_PL_WRDATA_ALL register accessor: an alias for `Reg<FM_PL_WRDATA_ALL_SPEC>`"]
pub type FM_PL_WRDATA_ALL = crate::Reg<fm_pl_wrdata_all::FM_PL_WRDATA_ALL_SPEC>;
#[doc = "Flash macro write page latches all"]
pub mod fm_pl_wrdata_all;
#[doc = "FM_PL_DATA register accessor: an alias for `Reg<FM_PL_DATA_SPEC>`"]
pub type FM_PL_DATA = crate::Reg<fm_pl_data::FM_PL_DATA_SPEC>;
#[doc = "Flash macro Page Latches data"]
pub mod fm_pl_data;
#[doc = "FM_MEM_DATA register accessor: an alias for `Reg<FM_MEM_DATA_SPEC>`"]
pub type FM_MEM_DATA = crate::Reg<fm_mem_data::FM_MEM_DATA_SPEC>;
#[doc = "Flash macro memory sense amplifier and column decoder data"]
pub mod fm_mem_data;
