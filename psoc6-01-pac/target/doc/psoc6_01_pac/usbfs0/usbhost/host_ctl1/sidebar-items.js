initSidebarItems({"struct":[["CLKSEL_R","Field `CLKSEL` reader - This bit selects the operating clock of USB Host. ‘0’ : Low-speed clock ‘1’ : Full-speed clock Notes: - This bit is set to it’s default vaulue ‘1’ if the ENABLE bit of the Host Control 0 Register (HOST_CTL0) changes from ‘1’ to ‘0’. - This bit must always be set to ‘1’ in the USB Device mode."],["CLKSEL_W","Field `CLKSEL` writer - This bit selects the operating clock of USB Host. ‘0’ : Low-speed clock ‘1’ : Full-speed clock Notes: - This bit is set to it’s default vaulue ‘1’ if the ENABLE bit of the Host Control 0 Register (HOST_CTL0) changes from ‘1’ to ‘0’. - This bit must always be set to ‘1’ in the USB Device mode."],["HOST_CTL1_SPEC","Host Control 1 Register."],["R","Register `HOST_CTL1` reader"],["RST_R","Field `RST` reader - This bit resets the USB Host. ‘0’ : Normal operating mode. ‘1’ : USB Host is reset. Notes: - This bit is to it’s default value ‘1’ if the ENABLE bit of the Host Control 0 Register (HOST_CTL0) changes from ‘1’ to ‘0’. - If this bit is set to ‘1’, both the BFINI bits of the Host Endpoint 1 Control Register (HOST_EP1_CTL) and Host Endpoint 2 Control Register (HOST_EP2_CTL) are set to ‘1’."],["RST_W","Field `RST` writer - This bit resets the USB Host. ‘0’ : Normal operating mode. ‘1’ : USB Host is reset. Notes: - This bit is to it’s default value ‘1’ if the ENABLE bit of the Host Control 0 Register (HOST_CTL0) changes from ‘1’ to ‘0’. - If this bit is set to ‘1’, both the BFINI bits of the Host Endpoint 1 Control Register (HOST_EP1_CTL) and Host Endpoint 2 Control Register (HOST_EP2_CTL) are set to ‘1’."],["USTP_R","Field `USTP` reader - This bit stops the clock for the USB Host operating unit. When this bit is ‘1’, power consumption can be reduced by configuring this bit. ‘0’ : Normal operating mode. ‘1’ : Stops the clock for the USB Host operating unit. Notes: - If this bit is set to ‘1’, the function of USB Host can’t be used because internal clock is stopped. - This bit is initialized if ENABLE bit of the Host Control 0 Register (HOST_CTL0) changes from ‘1’ to ‘0’."],["USTP_W","Field `USTP` writer - This bit stops the clock for the USB Host operating unit. When this bit is ‘1’, power consumption can be reduced by configuring this bit. ‘0’ : Normal operating mode. ‘1’ : Stops the clock for the USB Host operating unit. Notes: - If this bit is set to ‘1’, the function of USB Host can’t be used because internal clock is stopped. - This bit is initialized if ENABLE bit of the Host Control 0 Register (HOST_CTL0) changes from ‘1’ to ‘0’."],["W","Register `HOST_CTL1` writer"]]});