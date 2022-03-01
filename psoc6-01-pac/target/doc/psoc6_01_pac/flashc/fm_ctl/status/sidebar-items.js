initSidebarItems({"struct":[["CBUS_RA_MATCH_R","Field `CBUS_RA_MATCH` reader - Test_only, internal node: mpcon ra match"],["CBUS_RED_ROW_EN_R","Field `CBUS_RED_ROW_EN` reader - Test_only, internal node: mpcon red_row_en"],["FM_BUSY_R","Field `FM_BUSY` reader - 0’: FM not busy 1: FM BUSY : R_GRANT is 0 as result of a busy request from FM ready, or from HV operations."],["FM_READY_R","Field `FM_READY` reader - 0: FM not ready 1: FM ready"],["HVOP_BULK_ALL_R","Field `HVOP_BULK_ALL` reader - Test_only, internal node: mpcon bk_all"],["HVOP_SECTOR_R","Field `HVOP_SECTOR` reader - Test_only, internal node: mpcon bk_sec"],["HVOP_SUB_SECTOR_N_R","Field `HVOP_SUB_SECTOR_N` reader - Test_only, internal node: mpcon bk_subb"],["HV_REGS_ISOLATED_R","Field `HV_REGS_ISOLATED` reader - Indicates the isolation status at HV trim and redundancy registers inputs 0: Not isolated, writing permitted 1: isolated writing disabled"],["IF_SEL_MON_R","Field `IF_SEL_MON` reader - FM_CTL.IF_SEL bit after being synchronized in clk_r domain"],["ILLEGAL_HVOP_R","Field `ILLEGAL_HVOP` reader - Indicates a bulk, sector erase, program has been requested when axa=1 0: no error 1: illegal HV operation error"],["MAX_DOUT_WIDTH_R","Field `MAX_DOUT_WIDTH` reader - Internal memory core max data out size (number of data out bits per column): 0: x128 bits 1: x256 bits"],["NEG_PUMP_VHI_R","Field `NEG_PUMP_VHI` reader - NEG pump VHI"],["POS_PUMP_VLO_R","Field `POS_PUMP_VLO` reader - POS pump VLO"],["PUMP_NDAC_R","Field `PUMP_NDAC` reader - Test_only, internal node: regif ndac outputs to pos pump"],["PUMP_PDAC_R","Field `PUMP_PDAC` reader - Test_only, internal node: regif pdac outputs to pos pump"],["R","Register `STATUS` reader"],["RESET_MM_R","Field `RESET_MM` reader - Test_only, internal node: mpcon reset_mm"],["ROW_EVEN_R","Field `ROW_EVEN` reader - Test_only, internal node: mpcon row_even"],["ROW_ODD_R","Field `ROW_ODD` reader - Test_only, internal node: mpcon row_odd"],["RQ_ERROR_R","Field `RQ_ERROR` reader - Test_only, internal node: rq_error sync-de in clk_c domain"],["RWW_R","Field `RWW` reader - FM Type (Read While Write or Not Read While Write): 0: Non RWW FM Type 1: RWW FM Type"],["R_GRANT_DELAY_STATUS_R","Field `R_GRANT_DELAY_STATUS` reader - 0: R_GRANT_DELAY timer is not running 1: R_GRANT_DELAY timer is running"],["SECTOR0_SR_R","Field `SECTOR0_SR` reader - 0: Sector 0 does not contain special rows. The special rows are located in separate special sectors. 1: Sector 0 contains special rows"],["STATUS_SPEC","Status"],["TIMER_ENABLED_R","Field `TIMER_ENABLED` reader - This is the timer_en bit set by writing a ‘1’ in the TIMER_CTL bit 31. It is reset by HW when the timer expires 0: timer not running 1: Timer is enabled and not expired yet"],["TIMER_STATUS_R","Field `TIMER_STATUS` reader - The actual timer state sync-ed in clk_c domain: 0: timer is not running: 1: timer is running;"],["TURBO_N_R","Field `TURBO_N` reader - After FM power up indicates the analog blocks currents are boosted to faster reach their functional state.. Used in the testchip boot only as an ‘FM READY’ flag. 0: turbo mode 1: normal mode"],["WR_EN_MON_R","Field `WR_EN_MON` reader - FM_CTL.WR_EN bit after being synchronized in clk_r domain"]]});