initSidebarItems({"enum":[["CLK_SEL_A","Clock select for BAK clock"]],"struct":[["CLK_SEL_R","Field `CLK_SEL` reader - Clock select for BAK clock"],["CLK_SEL_W","Field `CLK_SEL` writer - Clock select for BAK clock"],["CTL_SPEC","Control"],["EN_CHARGE_KEY_R","Field `EN_CHARGE_KEY` reader - When set to 3C, the supercap charger circuit is enabled. Any other code disables the supercap charger. THIS CHARGING CIRCUIT IS FOR A SUPERCAP ONLY AND CANNOT SAFELY CHARGE A BATTERY. DO NOT WRITE THIS KEY WHEN VBACKUP IS CONNECTED TO A BATTERY."],["EN_CHARGE_KEY_W","Field `EN_CHARGE_KEY` writer - When set to 3C, the supercap charger circuit is enabled. Any other code disables the supercap charger. THIS CHARGING CIRCUIT IS FOR A SUPERCAP ONLY AND CANNOT SAFELY CHARGE A BATTERY. DO NOT WRITE THIS KEY WHEN VBACKUP IS CONNECTED TO A BATTERY."],["PRESCALER_R","Field `PRESCALER` reader - N/A"],["PRESCALER_W","Field `PRESCALER` writer - N/A"],["R","Register `CTL` reader"],["VBACKUP_MEAS_R","Field `VBACKUP_MEAS` reader - Connect vbackup supply to the vbackup_meas output for measurement by an ADC attached to amuxbusa_adft_vddd. The vbackup_meas signal is scaled to 10 percent of vbackup, so it is within the supply range of the ADC."],["VBACKUP_MEAS_W","Field `VBACKUP_MEAS` writer - Connect vbackup supply to the vbackup_meas output for measurement by an ADC attached to amuxbusa_adft_vddd. The vbackup_meas signal is scaled to 10 percent of vbackup, so it is within the supply range of the ADC."],["VDDBAK_CTL_R","Field `VDDBAK_CTL` reader - Controls the behavior of the switch that generates vddbak from vbackup or vddd. 0: automatically select vddd if its brownout detector says it is valid. If the brownout says its not valid, then use vmax which is the highest of vddd or vbackup. 1,2,3: force vddbak and vmax to select vbackup, regardless of its voltage."],["VDDBAK_CTL_W","Field `VDDBAK_CTL` writer - Controls the behavior of the switch that generates vddbak from vbackup or vddd. 0: automatically select vddd if its brownout detector says it is valid. If the brownout says its not valid, then use vmax which is the highest of vddd or vbackup. 1,2,3: force vddbak and vmax to select vbackup, regardless of its voltage."],["W","Register `CTL` writer"],["WCO_BYPASS_R","Field `WCO_BYPASS` reader - Configures the WCO for different board-level connections to the WCO pins. For example, this can be used to connect an external watch crystal oscillator instead of a watch crystal. In all cases, the two related GPIO pins (WCO input and output pins) must be configured as analog connections using GPIO registers, and they must be hooked at the board level as described below. Configure this field before enabling the WCO, and do not change this setting when WCO_EN=1. 0: Watch crystal. Connect a 32.768 kHz watch crystal between WCO input and output pins. 1: Clock signal, either a square wave or sine wave. See PRESCALER field for connection information."],["WCO_BYPASS_W","Field `WCO_BYPASS` writer - Configures the WCO for different board-level connections to the WCO pins. For example, this can be used to connect an external watch crystal oscillator instead of a watch crystal. In all cases, the two related GPIO pins (WCO input and output pins) must be configured as analog connections using GPIO registers, and they must be hooked at the board level as described below. Configure this field before enabling the WCO, and do not change this setting when WCO_EN=1. 0: Watch crystal. Connect a 32.768 kHz watch crystal between WCO input and output pins. 1: Clock signal, either a square wave or sine wave. See PRESCALER field for connection information."],["WCO_EN_R","Field `WCO_EN` reader - Watch-crystal oscillator (WCO) enable. If there is a write in progress when this bit is cleared, the WCO will be internally kept on until the write completes. After enabling the WCO software must wait until STATUS.WCO_OK=1 before configuring any component that depends on clk_lf/clk_bak, like for example RTC or WDTs. Follow the procedure in BACKUP_RTC_RW to access this bit."],["WCO_EN_W","Field `WCO_EN` writer - Watch-crystal oscillator (WCO) enable. If there is a write in progress when this bit is cleared, the WCO will be internally kept on until the write completes. After enabling the WCO software must wait until STATUS.WCO_OK=1 before configuring any component that depends on clk_lf/clk_bak, like for example RTC or WDTs. Follow the procedure in BACKUP_RTC_RW to access this bit."]]});