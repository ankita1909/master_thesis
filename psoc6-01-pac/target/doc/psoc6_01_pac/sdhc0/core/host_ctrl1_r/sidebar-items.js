initSidebarItems({"struct":[["CARD_DETECT_SIG_SEL_R","Field `CARD_DETECT_SIG_SEL` reader - Card Detect Signal Selection This bit selects a source for card detection. When the source for the card detection is switched, the interrupt must be disabled during the switching period. Values: - 0x1 (CARD_DT_TEST_LEVEL): Card Detect Test Level is selected (for test purpose) - 0x0 (card_detect_n): card_detect_n signal is selected (for normal use)"],["CARD_DETECT_SIG_SEL_W","Field `CARD_DETECT_SIG_SEL` writer - Card Detect Signal Selection This bit selects a source for card detection. When the source for the card detection is switched, the interrupt must be disabled during the switching period. Values: - 0x1 (CARD_DT_TEST_LEVEL): Card Detect Test Level is selected (for test purpose) - 0x0 (card_detect_n): card_detect_n signal is selected (for normal use)"],["CARD_DETECT_TEST_LVL_R","Field `CARD_DETECT_TEST_LVL` reader - Card Detect Test Level This bit is enabled while the Card Detect Signal Selection is set to 1 and it indicates whether a card inserted or not. Values: - 0x1 (CARD_INSERTED): Card Inserted - 0x0 (No_CARD): No Card"],["CARD_DETECT_TEST_LVL_W","Field `CARD_DETECT_TEST_LVL` writer - Card Detect Test Level This bit is enabled while the Card Detect Signal Selection is set to 1 and it indicates whether a card inserted or not. Values: - 0x1 (CARD_INSERTED): Card Inserted - 0x0 (No_CARD): No Card"],["DAT_XFER_WIDTH_R","Field `DAT_XFER_WIDTH` reader - Data Transfer Width For SD/eMMC mode,this bit selects the data transfer width of the Host Controller. The Host Driver sets it to match the data width of the SD/eMMC card. Values: - 0x1 (FOUR_BIT): 4-bit mode - 0x0 (ONE_BIT): 1-bit mode"],["DAT_XFER_WIDTH_W","Field `DAT_XFER_WIDTH` writer - Data Transfer Width For SD/eMMC mode,this bit selects the data transfer width of the Host Controller. The Host Driver sets it to match the data width of the SD/eMMC card. Values: - 0x1 (FOUR_BIT): 4-bit mode - 0x0 (ONE_BIT): 1-bit mode"],["DMA_SEL_R","Field `DMA_SEL` reader - N/A"],["DMA_SEL_W","Field `DMA_SEL` writer - N/A"],["EXT_DAT_XFER_R","Field `EXT_DAT_XFER` reader - Extended Data Transfer Width This bit controls 8-bit bus width mode of embedded device. Values: - 0x1 (EIGHT_BIT): 8-bit Bus Width - 0x0 (DEFAULT): Bus Width is selected by the Data Transfer Width"],["EXT_DAT_XFER_W","Field `EXT_DAT_XFER` writer - Extended Data Transfer Width This bit controls 8-bit bus width mode of embedded device. Values: - 0x1 (EIGHT_BIT): 8-bit Bus Width - 0x0 (DEFAULT): Bus Width is selected by the Data Transfer Width"],["HIGH_SPEED_EN_R","Field `HIGH_SPEED_EN` reader - High Speed Enable (SD/eMMC Mode only) Before setting this bit, the Host Driver checks the High Speed Support in the Capabilities register. Note: SDHC always outputs the sd_cmd_out and sd_dat_out lines at the rising edge of card clock irrespective of this bit. Values: - 0x1 (HIGH_SPEED): High Speed mode - 0x0 (NORMAL_SPEED): Normal Speed mode"],["HIGH_SPEED_EN_W","Field `HIGH_SPEED_EN` writer - High Speed Enable (SD/eMMC Mode only) Before setting this bit, the Host Driver checks the High Speed Support in the Capabilities register. Note: SDHC always outputs the sd_cmd_out and sd_dat_out lines at the rising edge of card clock irrespective of this bit. Values: - 0x1 (HIGH_SPEED): High Speed mode - 0x0 (NORMAL_SPEED): Normal Speed mode"],["HOST_CTRL1_R_SPEC","Host Control 1 Register"],["LED_CTRL_R","Field `LED_CTRL` reader - LED Control This bit is used to caution the user not to remove the card while the SD card is being accessed. The value is reflected on the led_ctrl ouput. Values: - 0x0 (OFF): LED off - 0x1 (ON): LED on"],["LED_CTRL_W","Field `LED_CTRL` writer - LED Control This bit is used to caution the user not to remove the card while the SD card is being accessed. The value is reflected on the led_ctrl ouput. Values: - 0x0 (OFF): LED off - 0x1 (ON): LED on"],["R","Register `HOST_CTRL1_R` reader"],["W","Register `HOST_CTRL1_R` writer"]]});