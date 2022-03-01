initSidebarItems({"struct":[["OVERLAP_PHI1_R","Field `OVERLAP_PHI1` reader - NonOverlap or not for Phi1 (csd_sense=0). 0 = Non-overlap for Phi1, the Phi1 signal is csd_sense inverted except that the signal goes low 1 clk_sample before csd_sense goes high. Intended usage: new low EMI CSD/CSX with static GPIO. 1 = ‘Overlap’ (= not non-overlap) for Phi1, the Phi1 signal is csd_sense inverted. Intended usage: legacy CSD with GPIO switching, the GPIO internal circuit ensures that the switches are non-overlapping."],["OVERLAP_PHI1_W","Field `OVERLAP_PHI1` writer - NonOverlap or not for Phi1 (csd_sense=0). 0 = Non-overlap for Phi1, the Phi1 signal is csd_sense inverted except that the signal goes low 1 clk_sample before csd_sense goes high. Intended usage: new low EMI CSD/CSX with static GPIO. 1 = ‘Overlap’ (= not non-overlap) for Phi1, the Phi1 signal is csd_sense inverted. Intended usage: legacy CSD with GPIO switching, the GPIO internal circuit ensures that the switches are non-overlapping."],["OVERLAP_PHI2_R","Field `OVERLAP_PHI2` reader - Same as OVERLAP_PHI1 but for Phi2 (csd_sense=1)."],["OVERLAP_PHI2_W","Field `OVERLAP_PHI2` writer - Same as OVERLAP_PHI1 but for Phi2 (csd_sense=1)."],["R","Register `SENSE_DUTY` reader"],["SENSE_DUTY_SPEC","Sense clock duty cycle"],["SENSE_POL_R","Field `SENSE_POL` reader - Polarity of the sense clock 0 = start with low phase (typical for regular negative transfer CSD) 1 = start with high phase"],["SENSE_POL_W","Field `SENSE_POL` writer - Polarity of the sense clock 0 = start with low phase (typical for regular negative transfer CSD) 1 = start with high phase"],["SENSE_WIDTH_R","Field `SENSE_WIDTH` reader - Defines the length of the first phase of the sense clock in clk_csd cycles. A value of 0 disables this feature and the duty cycle of csd_sense will be 50 percent, which is equal to SENSE_WIDTH = (SENSE_DIV+1)/2, or when clock dithering is used that becomes [(SENSE_DIV+1) + (LFSR_OUT << LSFR_SCALE)]/2. At all times it must be assured that the phases are at least 2 clk_csd cycles (1 for non overlap, if used), if this rule is violated the result is undefined. Note that this feature is not available when SEL_LFSR_MSB (PRS) is selected."],["SENSE_WIDTH_W","Field `SENSE_WIDTH` writer - Defines the length of the first phase of the sense clock in clk_csd cycles. A value of 0 disables this feature and the duty cycle of csd_sense will be 50 percent, which is equal to SENSE_WIDTH = (SENSE_DIV+1)/2, or when clock dithering is used that becomes [(SENSE_DIV+1) + (LFSR_OUT << LSFR_SCALE)]/2. At all times it must be assured that the phases are at least 2 clk_csd cycles (1 for non overlap, if used), if this rule is violated the result is undefined. Note that this feature is not available when SEL_LFSR_MSB (PRS) is selected."],["W","Register `SENSE_DUTY` writer"]]});