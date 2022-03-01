initSidebarItems({"struct":[["CLK_CTRL_R_SPEC","Clock Control Register"],["CLK_GEN_SELECT_R","Field `CLK_GEN_SELECT` reader - Clock Generator Select This bit is used to select the clock generator mode in SDCLK Frequency Select. Values: - 0x0 (FALSE): Divided Clock Mode - 0x1 (TRUE): Programmable Clock Mode"],["CLK_GEN_SELECT_W","Field `CLK_GEN_SELECT` writer - Clock Generator Select This bit is used to select the clock generator mode in SDCLK Frequency Select. Values: - 0x0 (FALSE): Divided Clock Mode - 0x1 (TRUE): Programmable Clock Mode"],["FREQ_SEL_R","Field `FREQ_SEL` reader - SDCLK Frequency Select These bits are used to select the frequency of the SDCLK signal. 10-bit Divided Clock Mode: - 0x3FF - 1/2046 Divided clock - ………. - N - 1/2N Divided Clock - ………. - 0x002 - 1/4 Divided Clock - 0x001 - 1/2 Divided Clock - 0x000 - Base clock (10MHz - 255 MHz)"],["FREQ_SEL_W","Field `FREQ_SEL` writer - SDCLK Frequency Select These bits are used to select the frequency of the SDCLK signal. 10-bit Divided Clock Mode: - 0x3FF - 1/2046 Divided clock - ………. - N - 1/2N Divided Clock - ………. - 0x002 - 1/4 Divided Clock - 0x001 - 1/2 Divided Clock - 0x000 - Base clock (10MHz - 255 MHz)"],["INTERNAL_CLK_EN_R","Field `INTERNAL_CLK_EN` reader - Internal Clock Enable This bit is set to 0 when the Host Driver is not using the Host Controller or the Host Controller awaits a wakeup interrupt. The Host Controller must stop its internal clock to enter a very low power state. Certain registers are not accessible when this bit is off. So, to be safe turn it on for any register access. Values: - 0x0 (FALSE): Stop - 0x1 (TRUE): Oscillate"],["INTERNAL_CLK_EN_W","Field `INTERNAL_CLK_EN` writer - Internal Clock Enable This bit is set to 0 when the Host Driver is not using the Host Controller or the Host Controller awaits a wakeup interrupt. The Host Controller must stop its internal clock to enter a very low power state. Certain registers are not accessible when this bit is off. So, to be safe turn it on for any register access. Values: - 0x0 (FALSE): Stop - 0x1 (TRUE): Oscillate"],["INTERNAL_CLK_STABLE_R","Field `INTERNAL_CLK_STABLE` reader - Internal Clock Stable This bit enables the Host Driver to check the clock stability twice after the Internal Clock Enable bit is set and after the PLL Enable bit is set. This bit reflects the synchronized value of the Internal Clock Stable signal after the Internal Clock Enable bit is set to 1 and also reflects the synchronized value of the Card Clock Stable signal after the PLL Enable bit is set to 1. Values: - 0x0 (FALSE): Not Ready - 0x1 (TRUE): Ready"],["PLL_ENABLE_R","Field `PLL_ENABLE` reader - PLL Enable This bit is used to activate the PLL (applicable when Host Version 4 Enable = 1). Values: - 0x0 (FALSE): PLL is in low power mode - 0x1 (TRUE): PLL is enabled"],["PLL_ENABLE_W","Field `PLL_ENABLE` writer - PLL Enable This bit is used to activate the PLL (applicable when Host Version 4 Enable = 1). Values: - 0x0 (FALSE): PLL is in low power mode - 0x1 (TRUE): PLL is enabled"],["R","Register `CLK_CTRL_R` reader"],["SD_CLK_EN_R","Field `SD_CLK_EN` reader - SD/eMMC Clock Enable This bit stops the clk_card output when set to 0. The SDCLK Frequency Select bit can be changed when this bit is set to 0. Values: - 0x0 (FALSE): Disable providing clk_card - 0x1 (TRUE): Enable providing clk_card"],["SD_CLK_EN_W","Field `SD_CLK_EN` writer - SD/eMMC Clock Enable This bit stops the clk_card output when set to 0. The SDCLK Frequency Select bit can be changed when this bit is set to 0. Values: - 0x0 (FALSE): Disable providing clk_card - 0x1 (TRUE): Enable providing clk_card"],["UPPER_FREQ_SEL_R","Field `UPPER_FREQ_SEL` reader - These bits specify the upper 2 bits of 10-bit SDCLK Frequency Select control."],["UPPER_FREQ_SEL_W","Field `UPPER_FREQ_SEL` writer - These bits specify the upper 2 bits of 10-bit SDCLK Frequency Select control."],["W","Register `CLK_CTRL_R` writer"]]});