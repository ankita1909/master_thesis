#[doc = r"Register block"]
#[repr(C)]
pub struct RegisterBlock {
    #[doc = "0x00 - MMIO at SDHC wrapper level"]
    pub wrap: WRAP,
    _reserved1: [u8; 0x0ffc],
    #[doc = "0x1000..0x1538 - MMIO for Synopsys Mobile Storage Host Controller IP"]
    pub core: CORE,
}
#[doc = r"Register block"]
#[repr(C)]
pub struct WRAP {
    #[doc = "0x00 - Top level wrapper control"]
    pub ctl: crate::Reg<self::wrap::ctl::CTL_SPEC>,
}
#[doc = r"Register block"]
#[doc = "MMIO at SDHC wrapper level"]
pub mod wrap;
#[doc = r"Register block"]
#[repr(C)]
pub struct CORE {
    #[doc = "0x00 - SDMA System Address register"]
    pub sdmasa_r: crate::Reg<self::core::sdmasa_r::SDMASA_R_SPEC>,
    #[doc = "0x04 - Block Size register"]
    pub blocksize_r: crate::Reg<self::core::blocksize_r::BLOCKSIZE_R_SPEC>,
    #[doc = "0x06 - 16-bit Block Count register"]
    pub blockcount_r: crate::Reg<self::core::blockcount_r::BLOCKCOUNT_R_SPEC>,
    #[doc = "0x08 - Argument register"]
    pub argument_r: crate::Reg<self::core::argument_r::ARGUMENT_R_SPEC>,
    #[doc = "0x0c - Transfer Mode register"]
    pub xfer_mode_r: crate::Reg<self::core::xfer_mode_r::XFER_MODE_R_SPEC>,
    #[doc = "0x0e - Command register"]
    pub cmd_r: crate::Reg<self::core::cmd_r::CMD_R_SPEC>,
    #[doc = "0x10 - Response Register 0/1"]
    pub resp01_r: crate::Reg<self::core::resp01_r::RESP01_R_SPEC>,
    #[doc = "0x14 - Response Register 2/3"]
    pub resp23_r: crate::Reg<self::core::resp23_r::RESP23_R_SPEC>,
    #[doc = "0x18 - Response Register 4/5"]
    pub resp45_r: crate::Reg<self::core::resp45_r::RESP45_R_SPEC>,
    #[doc = "0x1c - Response Register 6/7"]
    pub resp67_r: crate::Reg<self::core::resp67_r::RESP67_R_SPEC>,
    #[doc = "0x20 - Buffer Data Port Register"]
    pub buf_data_r: crate::Reg<self::core::buf_data_r::BUF_DATA_R_SPEC>,
    #[doc = "0x24 - Present State Register"]
    pub pstate_reg: crate::Reg<self::core::pstate_reg::PSTATE_REG_SPEC>,
    #[doc = "0x28 - Host Control 1 Register"]
    pub host_ctrl1_r: crate::Reg<self::core::host_ctrl1_r::HOST_CTRL1_R_SPEC>,
    #[doc = "0x29 - Power Control Register"]
    pub pwr_ctrl_r: crate::Reg<self::core::pwr_ctrl_r::PWR_CTRL_R_SPEC>,
    #[doc = "0x2a - Block Gap Control Register"]
    pub bgap_ctrl_r: crate::Reg<self::core::bgap_ctrl_r::BGAP_CTRL_R_SPEC>,
    #[doc = "0x2b - Wakeup Control Register"]
    pub wup_ctrl_r: crate::Reg<self::core::wup_ctrl_r::WUP_CTRL_R_SPEC>,
    #[doc = "0x2c - Clock Control Register"]
    pub clk_ctrl_r: crate::Reg<self::core::clk_ctrl_r::CLK_CTRL_R_SPEC>,
    #[doc = "0x2e - Timeout Control Register"]
    pub tout_ctrl_r: crate::Reg<self::core::tout_ctrl_r::TOUT_CTRL_R_SPEC>,
    #[doc = "0x2f - Software Reset Register"]
    pub sw_rst_r: crate::Reg<self::core::sw_rst_r::SW_RST_R_SPEC>,
    #[doc = "0x30 - Normal Interrupt Status Register"]
    pub normal_int_stat_r: crate::Reg<self::core::normal_int_stat_r::NORMAL_INT_STAT_R_SPEC>,
    #[doc = "0x32 - Error Interrupt Status Register"]
    pub error_int_stat_r: crate::Reg<self::core::error_int_stat_r::ERROR_INT_STAT_R_SPEC>,
    #[doc = "0x34 - Normal Interrupt Status Enable Register"]
    pub normal_int_stat_en_r:
        crate::Reg<self::core::normal_int_stat_en_r::NORMAL_INT_STAT_EN_R_SPEC>,
    #[doc = "0x36 - Error Interrupt Status Enable Register"]
    pub error_int_stat_en_r: crate::Reg<self::core::error_int_stat_en_r::ERROR_INT_STAT_EN_R_SPEC>,
    #[doc = "0x38 - Normal Interrupt Signal Enable Register"]
    pub normal_int_signal_en_r:
        crate::Reg<self::core::normal_int_signal_en_r::NORMAL_INT_SIGNAL_EN_R_SPEC>,
    #[doc = "0x3a - Error Interrupt Signal Enable Register"]
    pub error_int_signal_en_r:
        crate::Reg<self::core::error_int_signal_en_r::ERROR_INT_SIGNAL_EN_R_SPEC>,
    #[doc = "0x3c - Auto CMD Status Register"]
    pub auto_cmd_stat_r: crate::Reg<self::core::auto_cmd_stat_r::AUTO_CMD_STAT_R_SPEC>,
    #[doc = "0x3e - Host Control 2 Register"]
    pub host_ctrl2_r: crate::Reg<self::core::host_ctrl2_r::HOST_CTRL2_R_SPEC>,
    #[doc = "0x40 - Capabilities 1 Register - 0 to 31"]
    pub capabilities1_r: crate::Reg<self::core::capabilities1_r::CAPABILITIES1_R_SPEC>,
    #[doc = "0x44 - Capabilities Register - 32 to 63"]
    pub capabilities2_r: crate::Reg<self::core::capabilities2_r::CAPABILITIES2_R_SPEC>,
    #[doc = "0x48 - Current Capabilities Register - 0 to 31"]
    pub curr_capabilities1_r:
        crate::Reg<self::core::curr_capabilities1_r::CURR_CAPABILITIES1_R_SPEC>,
    #[doc = "0x4c - Maximum Current Capabilities Register - 32 to 63"]
    pub curr_capabilities2_r:
        crate::Reg<self::core::curr_capabilities2_r::CURR_CAPABILITIES2_R_SPEC>,
    #[doc = "0x50 - Force Event Register for Auto CMD Error Status register"]
    pub force_auto_cmd_stat_r:
        crate::Reg<self::core::force_auto_cmd_stat_r::FORCE_AUTO_CMD_STAT_R_SPEC>,
    #[doc = "0x52 - Force Event Register for Error Interrupt Status"]
    pub force_error_int_stat_r:
        crate::Reg<self::core::force_error_int_stat_r::FORCE_ERROR_INT_STAT_R_SPEC>,
    #[doc = "0x54 - ADMA Error Status Register"]
    pub adma_err_stat_r: crate::Reg<self::core::adma_err_stat_r::ADMA_ERR_STAT_R_SPEC>,
    _reserved34: [u8; 0x03],
    #[doc = "0x58 - ADMA System Address Register - Low"]
    pub adma_sa_low_r: crate::Reg<self::core::adma_sa_low_r::ADMA_SA_LOW_R_SPEC>,
    _reserved35: [u8; 0x1c],
    #[doc = "0x78 - ADMA3 Integrated Descriptor Address Register - Low"]
    pub adma_id_low_r: crate::Reg<self::core::adma_id_low_r::ADMA_ID_LOW_R_SPEC>,
    _reserved36: [u8; 0x82],
    #[doc = "0xfe - Host Controller Version"]
    pub host_cntrl_vers_r: crate::Reg<self::core::host_cntrl_vers_r::HOST_CNTRL_VERS_R_SPEC>,
    _reserved37: [u8; 0x80],
    #[doc = "0x180 - Command Queuing Version register"]
    pub cqver: crate::Reg<self::core::cqver::CQVER_SPEC>,
    #[doc = "0x184 - Command Queuing Capabilities register"]
    pub cqcap: crate::Reg<self::core::cqcap::CQCAP_SPEC>,
    #[doc = "0x188 - Command Queuing Configuration register"]
    pub cqcfg: crate::Reg<self::core::cqcfg::CQCFG_SPEC>,
    #[doc = "0x18c - Command Queuing Control register"]
    pub cqctl: crate::Reg<self::core::cqctl::CQCTL_SPEC>,
    #[doc = "0x190 - Command Queuing Interrupt Status register"]
    pub cqis: crate::Reg<self::core::cqis::CQIS_SPEC>,
    #[doc = "0x194 - Command Queuing Interrupt Status Enable register"]
    pub cqise: crate::Reg<self::core::cqise::CQISE_SPEC>,
    #[doc = "0x198 - Command Queuing Interrupt signal enable register"]
    pub cqisge: crate::Reg<self::core::cqisge::CQISGE_SPEC>,
    #[doc = "0x19c - Command Queuing Interrupt Coalescing register"]
    pub cqic: crate::Reg<self::core::cqic::CQIC_SPEC>,
    #[doc = "0x1a0 - Command Queuing Task Descriptor List Base Address register"]
    pub cqtdlba: crate::Reg<self::core::cqtdlba::CQTDLBA_SPEC>,
    _reserved46: [u8; 0x04],
    #[doc = "0x1a8 - Command Queuing DoorBell register"]
    pub cqtdbr: crate::Reg<self::core::cqtdbr::CQTDBR_SPEC>,
    #[doc = "0x1ac - Command Queuing TaskClear Notification register"]
    pub cqtcn: crate::Reg<self::core::cqtcn::CQTCN_SPEC>,
    #[doc = "0x1b0 - Device queue status register"]
    pub cqdqs: crate::Reg<self::core::cqdqs::CQDQS_SPEC>,
    #[doc = "0x1b4 - Device pending tasks register"]
    pub cqdpt: crate::Reg<self::core::cqdpt::CQDPT_SPEC>,
    #[doc = "0x1b8 - Command Queuing DoorBell register"]
    pub cqtclr: crate::Reg<self::core::cqtclr::CQTCLR_SPEC>,
    _reserved51: [u8; 0x04],
    #[doc = "0x1c0 - CQ Send Status Configuration 1 register"]
    pub cqssc1: crate::Reg<self::core::cqssc1::CQSSC1_SPEC>,
    #[doc = "0x1c4 - CQ Send Status Configuration 2 register"]
    pub cqssc2: crate::Reg<self::core::cqssc2::CQSSC2_SPEC>,
    #[doc = "0x1c8 - Command response for direct command register"]
    pub cqcrdct: crate::Reg<self::core::cqcrdct::CQCRDCT_SPEC>,
    _reserved54: [u8; 0x04],
    #[doc = "0x1d0 - Command response mode error mask register"]
    pub cqrmem: crate::Reg<self::core::cqrmem::CQRMEM_SPEC>,
    #[doc = "0x1d4 - CQ Task Error Information register"]
    pub cqterri: crate::Reg<self::core::cqterri::CQTERRI_SPEC>,
    #[doc = "0x1d8 - CQ Command response index"]
    pub cqcri: crate::Reg<self::core::cqcri::CQCRI_SPEC>,
    #[doc = "0x1dc - CQ Command response argument register"]
    pub cqcra: crate::Reg<self::core::cqcra::CQCRA_SPEC>,
    _reserved58: [u8; 0x0320],
    #[doc = "0x500 - MSHC version"]
    pub mshc_ver_id_r: crate::Reg<self::core::mshc_ver_id_r::MSHC_VER_ID_R_SPEC>,
    #[doc = "0x504 - MSHC version type"]
    pub mshc_ver_type_r: crate::Reg<self::core::mshc_ver_type_r::MSHC_VER_TYPE_R_SPEC>,
    #[doc = "0x508 - MSHC Control register"]
    pub mshc_ctrl_r: crate::Reg<self::core::mshc_ctrl_r::MSHC_CTRL_R_SPEC>,
    _reserved61: [u8; 0x07],
    #[doc = "0x510 - MBIU Control register"]
    pub mbiu_ctrl_r: crate::Reg<self::core::mbiu_ctrl_r::MBIU_CTRL_R_SPEC>,
    _reserved62: [u8; 0x1b],
    #[doc = "0x52c - eMMC Control register"]
    pub emmc_ctrl_r: crate::Reg<self::core::emmc_ctrl_r::EMMC_CTRL_R_SPEC>,
    #[doc = "0x52e - eMMC Boot Control register"]
    pub boot_ctrl_r: crate::Reg<self::core::boot_ctrl_r::BOOT_CTRL_R_SPEC>,
    #[doc = "0x530 - General Purpose Input register"]
    pub gp_in_r: crate::Reg<self::core::gp_in_r::GP_IN_R_SPEC>,
    #[doc = "0x534 - General Purpose Output register"]
    pub gp_out_r: crate::Reg<self::core::gp_out_r::GP_OUT_R_SPEC>,
}
#[doc = r"Register block"]
#[doc = "MMIO for Synopsys Mobile Storage Host Controller IP"]
pub mod core;
