#[doc = "SDMASA_R register accessor: an alias for `Reg<SDMASA_R_SPEC>`"]
pub type SDMASA_R = crate::Reg<sdmasa_r::SDMASA_R_SPEC>;
#[doc = "SDMA System Address register"]
pub mod sdmasa_r;
#[doc = "BLOCKSIZE_R register accessor: an alias for `Reg<BLOCKSIZE_R_SPEC>`"]
pub type BLOCKSIZE_R = crate::Reg<blocksize_r::BLOCKSIZE_R_SPEC>;
#[doc = "Block Size register"]
pub mod blocksize_r;
#[doc = "BLOCKCOUNT_R register accessor: an alias for `Reg<BLOCKCOUNT_R_SPEC>`"]
pub type BLOCKCOUNT_R = crate::Reg<blockcount_r::BLOCKCOUNT_R_SPEC>;
#[doc = "16-bit Block Count register"]
pub mod blockcount_r;
#[doc = "ARGUMENT_R register accessor: an alias for `Reg<ARGUMENT_R_SPEC>`"]
pub type ARGUMENT_R = crate::Reg<argument_r::ARGUMENT_R_SPEC>;
#[doc = "Argument register"]
pub mod argument_r;
#[doc = "XFER_MODE_R register accessor: an alias for `Reg<XFER_MODE_R_SPEC>`"]
pub type XFER_MODE_R = crate::Reg<xfer_mode_r::XFER_MODE_R_SPEC>;
#[doc = "Transfer Mode register"]
pub mod xfer_mode_r;
#[doc = "CMD_R register accessor: an alias for `Reg<CMD_R_SPEC>`"]
pub type CMD_R = crate::Reg<cmd_r::CMD_R_SPEC>;
#[doc = "Command register"]
pub mod cmd_r;
#[doc = "RESP01_R register accessor: an alias for `Reg<RESP01_R_SPEC>`"]
pub type RESP01_R = crate::Reg<resp01_r::RESP01_R_SPEC>;
#[doc = "Response Register 0/1"]
pub mod resp01_r;
#[doc = "RESP23_R register accessor: an alias for `Reg<RESP23_R_SPEC>`"]
pub type RESP23_R = crate::Reg<resp23_r::RESP23_R_SPEC>;
#[doc = "Response Register 2/3"]
pub mod resp23_r;
#[doc = "RESP45_R register accessor: an alias for `Reg<RESP45_R_SPEC>`"]
pub type RESP45_R = crate::Reg<resp45_r::RESP45_R_SPEC>;
#[doc = "Response Register 4/5"]
pub mod resp45_r;
#[doc = "RESP67_R register accessor: an alias for `Reg<RESP67_R_SPEC>`"]
pub type RESP67_R = crate::Reg<resp67_r::RESP67_R_SPEC>;
#[doc = "Response Register 6/7"]
pub mod resp67_r;
#[doc = "BUF_DATA_R register accessor: an alias for `Reg<BUF_DATA_R_SPEC>`"]
pub type BUF_DATA_R = crate::Reg<buf_data_r::BUF_DATA_R_SPEC>;
#[doc = "Buffer Data Port Register"]
pub mod buf_data_r;
#[doc = "PSTATE_REG register accessor: an alias for `Reg<PSTATE_REG_SPEC>`"]
pub type PSTATE_REG = crate::Reg<pstate_reg::PSTATE_REG_SPEC>;
#[doc = "Present State Register"]
pub mod pstate_reg;
#[doc = "HOST_CTRL1_R register accessor: an alias for `Reg<HOST_CTRL1_R_SPEC>`"]
pub type HOST_CTRL1_R = crate::Reg<host_ctrl1_r::HOST_CTRL1_R_SPEC>;
#[doc = "Host Control 1 Register"]
pub mod host_ctrl1_r;
#[doc = "PWR_CTRL_R register accessor: an alias for `Reg<PWR_CTRL_R_SPEC>`"]
pub type PWR_CTRL_R = crate::Reg<pwr_ctrl_r::PWR_CTRL_R_SPEC>;
#[doc = "Power Control Register"]
pub mod pwr_ctrl_r;
#[doc = "BGAP_CTRL_R register accessor: an alias for `Reg<BGAP_CTRL_R_SPEC>`"]
pub type BGAP_CTRL_R = crate::Reg<bgap_ctrl_r::BGAP_CTRL_R_SPEC>;
#[doc = "Block Gap Control Register"]
pub mod bgap_ctrl_r;
#[doc = "WUP_CTRL_R register accessor: an alias for `Reg<WUP_CTRL_R_SPEC>`"]
pub type WUP_CTRL_R = crate::Reg<wup_ctrl_r::WUP_CTRL_R_SPEC>;
#[doc = "Wakeup Control Register"]
pub mod wup_ctrl_r;
#[doc = "CLK_CTRL_R register accessor: an alias for `Reg<CLK_CTRL_R_SPEC>`"]
pub type CLK_CTRL_R = crate::Reg<clk_ctrl_r::CLK_CTRL_R_SPEC>;
#[doc = "Clock Control Register"]
pub mod clk_ctrl_r;
#[doc = "TOUT_CTRL_R register accessor: an alias for `Reg<TOUT_CTRL_R_SPEC>`"]
pub type TOUT_CTRL_R = crate::Reg<tout_ctrl_r::TOUT_CTRL_R_SPEC>;
#[doc = "Timeout Control Register"]
pub mod tout_ctrl_r;
#[doc = "SW_RST_R register accessor: an alias for `Reg<SW_RST_R_SPEC>`"]
pub type SW_RST_R = crate::Reg<sw_rst_r::SW_RST_R_SPEC>;
#[doc = "Software Reset Register"]
pub mod sw_rst_r;
#[doc = "NORMAL_INT_STAT_R register accessor: an alias for `Reg<NORMAL_INT_STAT_R_SPEC>`"]
pub type NORMAL_INT_STAT_R = crate::Reg<normal_int_stat_r::NORMAL_INT_STAT_R_SPEC>;
#[doc = "Normal Interrupt Status Register"]
pub mod normal_int_stat_r;
#[doc = "ERROR_INT_STAT_R register accessor: an alias for `Reg<ERROR_INT_STAT_R_SPEC>`"]
pub type ERROR_INT_STAT_R = crate::Reg<error_int_stat_r::ERROR_INT_STAT_R_SPEC>;
#[doc = "Error Interrupt Status Register"]
pub mod error_int_stat_r;
#[doc = "NORMAL_INT_STAT_EN_R register accessor: an alias for `Reg<NORMAL_INT_STAT_EN_R_SPEC>`"]
pub type NORMAL_INT_STAT_EN_R = crate::Reg<normal_int_stat_en_r::NORMAL_INT_STAT_EN_R_SPEC>;
#[doc = "Normal Interrupt Status Enable Register"]
pub mod normal_int_stat_en_r;
#[doc = "ERROR_INT_STAT_EN_R register accessor: an alias for `Reg<ERROR_INT_STAT_EN_R_SPEC>`"]
pub type ERROR_INT_STAT_EN_R = crate::Reg<error_int_stat_en_r::ERROR_INT_STAT_EN_R_SPEC>;
#[doc = "Error Interrupt Status Enable Register"]
pub mod error_int_stat_en_r;
#[doc = "NORMAL_INT_SIGNAL_EN_R register accessor: an alias for `Reg<NORMAL_INT_SIGNAL_EN_R_SPEC>`"]
pub type NORMAL_INT_SIGNAL_EN_R = crate::Reg<normal_int_signal_en_r::NORMAL_INT_SIGNAL_EN_R_SPEC>;
#[doc = "Normal Interrupt Signal Enable Register"]
pub mod normal_int_signal_en_r;
#[doc = "ERROR_INT_SIGNAL_EN_R register accessor: an alias for `Reg<ERROR_INT_SIGNAL_EN_R_SPEC>`"]
pub type ERROR_INT_SIGNAL_EN_R = crate::Reg<error_int_signal_en_r::ERROR_INT_SIGNAL_EN_R_SPEC>;
#[doc = "Error Interrupt Signal Enable Register"]
pub mod error_int_signal_en_r;
#[doc = "AUTO_CMD_STAT_R register accessor: an alias for `Reg<AUTO_CMD_STAT_R_SPEC>`"]
pub type AUTO_CMD_STAT_R = crate::Reg<auto_cmd_stat_r::AUTO_CMD_STAT_R_SPEC>;
#[doc = "Auto CMD Status Register"]
pub mod auto_cmd_stat_r;
#[doc = "HOST_CTRL2_R register accessor: an alias for `Reg<HOST_CTRL2_R_SPEC>`"]
pub type HOST_CTRL2_R = crate::Reg<host_ctrl2_r::HOST_CTRL2_R_SPEC>;
#[doc = "Host Control 2 Register"]
pub mod host_ctrl2_r;
#[doc = "CAPABILITIES1_R register accessor: an alias for `Reg<CAPABILITIES1_R_SPEC>`"]
pub type CAPABILITIES1_R = crate::Reg<capabilities1_r::CAPABILITIES1_R_SPEC>;
#[doc = "Capabilities 1 Register - 0 to 31"]
pub mod capabilities1_r;
#[doc = "CAPABILITIES2_R register accessor: an alias for `Reg<CAPABILITIES2_R_SPEC>`"]
pub type CAPABILITIES2_R = crate::Reg<capabilities2_r::CAPABILITIES2_R_SPEC>;
#[doc = "Capabilities Register - 32 to 63"]
pub mod capabilities2_r;
#[doc = "CURR_CAPABILITIES1_R register accessor: an alias for `Reg<CURR_CAPABILITIES1_R_SPEC>`"]
pub type CURR_CAPABILITIES1_R = crate::Reg<curr_capabilities1_r::CURR_CAPABILITIES1_R_SPEC>;
#[doc = "Current Capabilities Register - 0 to 31"]
pub mod curr_capabilities1_r;
#[doc = "CURR_CAPABILITIES2_R register accessor: an alias for `Reg<CURR_CAPABILITIES2_R_SPEC>`"]
pub type CURR_CAPABILITIES2_R = crate::Reg<curr_capabilities2_r::CURR_CAPABILITIES2_R_SPEC>;
#[doc = "Maximum Current Capabilities Register - 32 to 63"]
pub mod curr_capabilities2_r;
#[doc = "FORCE_AUTO_CMD_STAT_R register accessor: an alias for `Reg<FORCE_AUTO_CMD_STAT_R_SPEC>`"]
pub type FORCE_AUTO_CMD_STAT_R = crate::Reg<force_auto_cmd_stat_r::FORCE_AUTO_CMD_STAT_R_SPEC>;
#[doc = "Force Event Register for Auto CMD Error Status register"]
pub mod force_auto_cmd_stat_r;
#[doc = "FORCE_ERROR_INT_STAT_R register accessor: an alias for `Reg<FORCE_ERROR_INT_STAT_R_SPEC>`"]
pub type FORCE_ERROR_INT_STAT_R = crate::Reg<force_error_int_stat_r::FORCE_ERROR_INT_STAT_R_SPEC>;
#[doc = "Force Event Register for Error Interrupt Status"]
pub mod force_error_int_stat_r;
#[doc = "ADMA_ERR_STAT_R register accessor: an alias for `Reg<ADMA_ERR_STAT_R_SPEC>`"]
pub type ADMA_ERR_STAT_R = crate::Reg<adma_err_stat_r::ADMA_ERR_STAT_R_SPEC>;
#[doc = "ADMA Error Status Register"]
pub mod adma_err_stat_r;
#[doc = "ADMA_SA_LOW_R register accessor: an alias for `Reg<ADMA_SA_LOW_R_SPEC>`"]
pub type ADMA_SA_LOW_R = crate::Reg<adma_sa_low_r::ADMA_SA_LOW_R_SPEC>;
#[doc = "ADMA System Address Register - Low"]
pub mod adma_sa_low_r;
#[doc = "ADMA_ID_LOW_R register accessor: an alias for `Reg<ADMA_ID_LOW_R_SPEC>`"]
pub type ADMA_ID_LOW_R = crate::Reg<adma_id_low_r::ADMA_ID_LOW_R_SPEC>;
#[doc = "ADMA3 Integrated Descriptor Address Register - Low"]
pub mod adma_id_low_r;
#[doc = "HOST_CNTRL_VERS_R register accessor: an alias for `Reg<HOST_CNTRL_VERS_R_SPEC>`"]
pub type HOST_CNTRL_VERS_R = crate::Reg<host_cntrl_vers_r::HOST_CNTRL_VERS_R_SPEC>;
#[doc = "Host Controller Version"]
pub mod host_cntrl_vers_r;
#[doc = "CQVER register accessor: an alias for `Reg<CQVER_SPEC>`"]
pub type CQVER = crate::Reg<cqver::CQVER_SPEC>;
#[doc = "Command Queuing Version register"]
pub mod cqver;
#[doc = "CQCAP register accessor: an alias for `Reg<CQCAP_SPEC>`"]
pub type CQCAP = crate::Reg<cqcap::CQCAP_SPEC>;
#[doc = "Command Queuing Capabilities register"]
pub mod cqcap;
#[doc = "CQCFG register accessor: an alias for `Reg<CQCFG_SPEC>`"]
pub type CQCFG = crate::Reg<cqcfg::CQCFG_SPEC>;
#[doc = "Command Queuing Configuration register"]
pub mod cqcfg;
#[doc = "CQCTL register accessor: an alias for `Reg<CQCTL_SPEC>`"]
pub type CQCTL = crate::Reg<cqctl::CQCTL_SPEC>;
#[doc = "Command Queuing Control register"]
pub mod cqctl;
#[doc = "CQIS register accessor: an alias for `Reg<CQIS_SPEC>`"]
pub type CQIS = crate::Reg<cqis::CQIS_SPEC>;
#[doc = "Command Queuing Interrupt Status register"]
pub mod cqis;
#[doc = "CQISE register accessor: an alias for `Reg<CQISE_SPEC>`"]
pub type CQISE = crate::Reg<cqise::CQISE_SPEC>;
#[doc = "Command Queuing Interrupt Status Enable register"]
pub mod cqise;
#[doc = "CQISGE register accessor: an alias for `Reg<CQISGE_SPEC>`"]
pub type CQISGE = crate::Reg<cqisge::CQISGE_SPEC>;
#[doc = "Command Queuing Interrupt signal enable register"]
pub mod cqisge;
#[doc = "CQIC register accessor: an alias for `Reg<CQIC_SPEC>`"]
pub type CQIC = crate::Reg<cqic::CQIC_SPEC>;
#[doc = "Command Queuing Interrupt Coalescing register"]
pub mod cqic;
#[doc = "CQTDLBA register accessor: an alias for `Reg<CQTDLBA_SPEC>`"]
pub type CQTDLBA = crate::Reg<cqtdlba::CQTDLBA_SPEC>;
#[doc = "Command Queuing Task Descriptor List Base Address register"]
pub mod cqtdlba;
#[doc = "CQTDBR register accessor: an alias for `Reg<CQTDBR_SPEC>`"]
pub type CQTDBR = crate::Reg<cqtdbr::CQTDBR_SPEC>;
#[doc = "Command Queuing DoorBell register"]
pub mod cqtdbr;
#[doc = "CQTCN register accessor: an alias for `Reg<CQTCN_SPEC>`"]
pub type CQTCN = crate::Reg<cqtcn::CQTCN_SPEC>;
#[doc = "Command Queuing TaskClear Notification register"]
pub mod cqtcn;
#[doc = "CQDQS register accessor: an alias for `Reg<CQDQS_SPEC>`"]
pub type CQDQS = crate::Reg<cqdqs::CQDQS_SPEC>;
#[doc = "Device queue status register"]
pub mod cqdqs;
#[doc = "CQDPT register accessor: an alias for `Reg<CQDPT_SPEC>`"]
pub type CQDPT = crate::Reg<cqdpt::CQDPT_SPEC>;
#[doc = "Device pending tasks register"]
pub mod cqdpt;
#[doc = "CQTCLR register accessor: an alias for `Reg<CQTCLR_SPEC>`"]
pub type CQTCLR = crate::Reg<cqtclr::CQTCLR_SPEC>;
#[doc = "Command Queuing DoorBell register"]
pub mod cqtclr;
#[doc = "CQSSC1 register accessor: an alias for `Reg<CQSSC1_SPEC>`"]
pub type CQSSC1 = crate::Reg<cqssc1::CQSSC1_SPEC>;
#[doc = "CQ Send Status Configuration 1 register"]
pub mod cqssc1;
#[doc = "CQSSC2 register accessor: an alias for `Reg<CQSSC2_SPEC>`"]
pub type CQSSC2 = crate::Reg<cqssc2::CQSSC2_SPEC>;
#[doc = "CQ Send Status Configuration 2 register"]
pub mod cqssc2;
#[doc = "CQCRDCT register accessor: an alias for `Reg<CQCRDCT_SPEC>`"]
pub type CQCRDCT = crate::Reg<cqcrdct::CQCRDCT_SPEC>;
#[doc = "Command response for direct command register"]
pub mod cqcrdct;
#[doc = "CQRMEM register accessor: an alias for `Reg<CQRMEM_SPEC>`"]
pub type CQRMEM = crate::Reg<cqrmem::CQRMEM_SPEC>;
#[doc = "Command response mode error mask register"]
pub mod cqrmem;
#[doc = "CQTERRI register accessor: an alias for `Reg<CQTERRI_SPEC>`"]
pub type CQTERRI = crate::Reg<cqterri::CQTERRI_SPEC>;
#[doc = "CQ Task Error Information register"]
pub mod cqterri;
#[doc = "CQCRI register accessor: an alias for `Reg<CQCRI_SPEC>`"]
pub type CQCRI = crate::Reg<cqcri::CQCRI_SPEC>;
#[doc = "CQ Command response index"]
pub mod cqcri;
#[doc = "CQCRA register accessor: an alias for `Reg<CQCRA_SPEC>`"]
pub type CQCRA = crate::Reg<cqcra::CQCRA_SPEC>;
#[doc = "CQ Command response argument register"]
pub mod cqcra;
#[doc = "MSHC_VER_ID_R register accessor: an alias for `Reg<MSHC_VER_ID_R_SPEC>`"]
pub type MSHC_VER_ID_R = crate::Reg<mshc_ver_id_r::MSHC_VER_ID_R_SPEC>;
#[doc = "MSHC version"]
pub mod mshc_ver_id_r;
#[doc = "MSHC_VER_TYPE_R register accessor: an alias for `Reg<MSHC_VER_TYPE_R_SPEC>`"]
pub type MSHC_VER_TYPE_R = crate::Reg<mshc_ver_type_r::MSHC_VER_TYPE_R_SPEC>;
#[doc = "MSHC version type"]
pub mod mshc_ver_type_r;
#[doc = "MSHC_CTRL_R register accessor: an alias for `Reg<MSHC_CTRL_R_SPEC>`"]
pub type MSHC_CTRL_R = crate::Reg<mshc_ctrl_r::MSHC_CTRL_R_SPEC>;
#[doc = "MSHC Control register"]
pub mod mshc_ctrl_r;
#[doc = "MBIU_CTRL_R register accessor: an alias for `Reg<MBIU_CTRL_R_SPEC>`"]
pub type MBIU_CTRL_R = crate::Reg<mbiu_ctrl_r::MBIU_CTRL_R_SPEC>;
#[doc = "MBIU Control register"]
pub mod mbiu_ctrl_r;
#[doc = "EMMC_CTRL_R register accessor: an alias for `Reg<EMMC_CTRL_R_SPEC>`"]
pub type EMMC_CTRL_R = crate::Reg<emmc_ctrl_r::EMMC_CTRL_R_SPEC>;
#[doc = "eMMC Control register"]
pub mod emmc_ctrl_r;
#[doc = "BOOT_CTRL_R register accessor: an alias for `Reg<BOOT_CTRL_R_SPEC>`"]
pub type BOOT_CTRL_R = crate::Reg<boot_ctrl_r::BOOT_CTRL_R_SPEC>;
#[doc = "eMMC Boot Control register"]
pub mod boot_ctrl_r;
#[doc = "GP_IN_R register accessor: an alias for `Reg<GP_IN_R_SPEC>`"]
pub type GP_IN_R = crate::Reg<gp_in_r::GP_IN_R_SPEC>;
#[doc = "General Purpose Input register"]
pub mod gp_in_r;
#[doc = "GP_OUT_R register accessor: an alias for `Reg<GP_OUT_R_SPEC>`"]
pub type GP_OUT_R = crate::Reg<gp_out_r::GP_OUT_R_SPEC>;
#[doc = "General Purpose Output register"]
pub mod gp_out_r;
