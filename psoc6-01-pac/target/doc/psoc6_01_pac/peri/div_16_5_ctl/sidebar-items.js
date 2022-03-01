initSidebarItems({"struct":[["DIV_16_5_CTL_SPEC","Divider control (for 16.5 divider)"],["EN_R","Field `EN` reader - Divider enabled. HW sets this field to ‘1’ as a result of an ENABLE command. HW sets this field to ‘0’ as a result on a DISABLE command. Note that this field is retained. As a result, the divider does NOT have to be re-enabled after transitioning from DeepSleep to Active power mode."],["FRAC5_DIV_R","Field `FRAC5_DIV` reader - Fractional division by (FRAC5_DIV/32). Allows for fractional divisions in the range [0, 31/32]. Note that fractional division results in clock jitter as some clock periods may be 1 ‘clk_peri’ cycle longer than other clock periods. Note that this field is retained. However, the counter that is used to implement the division is not and will be initialized by HW to ‘0’ when transitioning from DeepSleep to Active power mode."],["FRAC5_DIV_W","Field `FRAC5_DIV` writer - Fractional division by (FRAC5_DIV/32). Allows for fractional divisions in the range [0, 31/32]. Note that fractional division results in clock jitter as some clock periods may be 1 ‘clk_peri’ cycle longer than other clock periods. Note that this field is retained. However, the counter that is used to implement the division is not and will be initialized by HW to ‘0’ when transitioning from DeepSleep to Active power mode."],["INT16_DIV_R","Field `INT16_DIV` reader - Integer division by (1+INT16_DIV). Allows for integer divisions in the range [1, 65,536]. Note: combined with fractional division, this divider type allows for a division in the range [1, 65,536 31/32] in 1/32 increments. For the generation of a divided clock, the division range is restricted to [2, 65,536 31/32]. For the generation of a 50/50 percent duty cycle divided clock, the division range is restricted to [2, 65,536]. Note that this field is retained. However, the counter that is used to implement the division is not and will be initialized by HW to ‘0’ when transitioning from DeepSleep to Active power mode."],["INT16_DIV_W","Field `INT16_DIV` writer - Integer division by (1+INT16_DIV). Allows for integer divisions in the range [1, 65,536]. Note: combined with fractional division, this divider type allows for a division in the range [1, 65,536 31/32] in 1/32 increments. For the generation of a divided clock, the division range is restricted to [2, 65,536 31/32]. For the generation of a 50/50 percent duty cycle divided clock, the division range is restricted to [2, 65,536]. Note that this field is retained. However, the counter that is used to implement the division is not and will be initialized by HW to ‘0’ when transitioning from DeepSleep to Active power mode."],["R","Register `DIV_16_5_CTL[%s]` reader"],["W","Register `DIV_16_5_CTL[%s]` writer"]]});