initSidebarItems({"enum":[["LFSR_BITS_A","Selects the number of LSB bits to use from the LSFR to provide the clock dithering variation on the base period. Caveat make sure that SENSE_DIV > the maximum absolute range (e.g. for 4B SENSE_DIV > 8), otherwise results are undefined."],["LFSR_SIZE_A","Selects the length of the LFSR which determines the LFSR repeat period. LFSR_BITS LSB of the LFSR are used for the clock dithering variation on the base period (was PRS in CSDv1). Whenever the LFSR is used (non zero value in this field) the LFSR_CLEAR bit should also be set."]],"struct":[["LFSR_BITS_R","Field `LFSR_BITS` reader - Selects the number of LSB bits to use from the LSFR to provide the clock dithering variation on the base period. Caveat make sure that SENSE_DIV > the maximum absolute range (e.g. for 4B SENSE_DIV > 8), otherwise results are undefined."],["LFSR_BITS_W","Field `LFSR_BITS` writer - Selects the number of LSB bits to use from the LSFR to provide the clock dithering variation on the base period. Caveat make sure that SENSE_DIV > the maximum absolute range (e.g. for 4B SENSE_DIV > 8), otherwise results are undefined."],["LFSR_CLEAR_R","Field `LFSR_CLEAR` reader - When set, forces the LFSR to it’s initial state (all ones). This bit is automatically cleared by hardware after the LFSR is cleared, which is at the next clk_csd positive edge. This bit should be set whenever this register is written and the LFSR is used. Note that the LFSR will also get reset to all ones during the AutoZero_1/2 states."],["LFSR_CLEAR_W","Field `LFSR_CLEAR` writer - When set, forces the LFSR to it’s initial state (all ones). This bit is automatically cleared by hardware after the LFSR is cleared, which is at the next clk_csd positive edge. This bit should be set whenever this register is written and the LFSR is used. Note that the LFSR will also get reset to all ones during the AutoZero_1/2 states."],["LFSR_SCALE_R","Field `LFSR_SCALE` reader - Shift the LFSR output left by LSFR_SCALE bits before adding to SENSE_DIV. This dithering is disabled when SEL_LSFR_MSB is set. The clock divider to be used = (SENSE_DIV+1) + (SEL_LSFR_MSB ? 0 : (LFSR_OUT<<LFSR_SCALE)). Note that the clock divider including the dithering term must fit in 12 bits, otherwise the result is undefined."],["LFSR_SCALE_W","Field `LFSR_SCALE` writer - Shift the LFSR output left by LSFR_SCALE bits before adding to SENSE_DIV. This dithering is disabled when SEL_LSFR_MSB is set. The clock divider to be used = (SENSE_DIV+1) + (SEL_LSFR_MSB ? 0 : (LFSR_OUT<<LFSR_SCALE)). Note that the clock divider including the dithering term must fit in 12 bits, otherwise the result is undefined."],["LFSR_SIZE_R","Field `LFSR_SIZE` reader - Selects the length of the LFSR which determines the LFSR repeat period. LFSR_BITS LSB of the LFSR are used for the clock dithering variation on the base period (was PRS in CSDv1). Whenever the LFSR is used (non zero value in this field) the LFSR_CLEAR bit should also be set."],["LFSR_SIZE_W","Field `LFSR_SIZE` writer - Selects the length of the LFSR which determines the LFSR repeat period. LFSR_BITS LSB of the LFSR are used for the clock dithering variation on the base period (was PRS in CSDv1). Whenever the LFSR is used (non zero value in this field) the LFSR_CLEAR bit should also be set."],["R","Register `SENSE_PERIOD` reader"],["SEL_LFSR_MSB_R","Field `SEL_LFSR_MSB` reader - Use the MSB of configured LSFR size as csd_sense signal. Intended to be used only with bit 8 or 12-bit LFSR size for CSDv1 backward compatibility (PRS). When this bit is set then clock divider dithering is disabled and SENSE_WIDTH is disabled."],["SEL_LFSR_MSB_W","Field `SEL_LFSR_MSB` writer - Use the MSB of configured LSFR size as csd_sense signal. Intended to be used only with bit 8 or 12-bit LFSR size for CSDv1 backward compatibility (PRS). When this bit is set then clock divider dithering is disabled and SENSE_WIDTH is disabled."],["SENSE_DIV_R","Field `SENSE_DIV` reader - The length-1 of the Sense modulation ‘clock’ period in clk_csd cycles. For regular CSD one sense clock cycle = one conversion (=phi1+phi2) . Note this is the base divider, clock dithering may change the actual period length. Note that SENSE_DIV must be at least 1 and additionally also allow for one clk_hf of non overlap (if OVERLAP_HI1/2 is set) on both phases, i.e. if clk_csd=clk_hf then SENSE_DIV must be >=3. In addition the FILTER_DELAY needs to be added to the minimum allowed SENSE_DIV value."],["SENSE_DIV_W","Field `SENSE_DIV` writer - The length-1 of the Sense modulation ‘clock’ period in clk_csd cycles. For regular CSD one sense clock cycle = one conversion (=phi1+phi2) . Note this is the base divider, clock dithering may change the actual period length. Note that SENSE_DIV must be at least 1 and additionally also allow for one clk_hf of non overlap (if OVERLAP_HI1/2 is set) on both phases, i.e. if clk_csd=clk_hf then SENSE_DIV must be >=3. In addition the FILTER_DELAY needs to be added to the minimum allowed SENSE_DIV value."],["SENSE_PERIOD_SPEC","Sense clock period"],["W","Register `SENSE_PERIOD` writer"]]});