initSidebarItems({"struct":[["ENABLE_R","Field `ENABLE` reader - This bit enables the operation of this IP. ‘0’ : Disable USB Host ‘1’ : Enable USB Host Note: - This bit doesn’t affect the USB Device."],["ENABLE_W","Field `ENABLE` writer - This bit enables the operation of this IP. ‘0’ : Disable USB Host ‘1’ : Enable USB Host Note: - This bit doesn’t affect the USB Device."],["HOST_CTL0_SPEC","Host Control 0 Register."],["HOST_R","Field `HOST` reader - This bit selects an operating mode of this IP. ‘0’ : USB Device ‘1’ : USB Host Notes: - The mode of operation mode does not transition immediately after setting this bit. Read this bit to confirm that the operation mode has changed. - This bit is reset to ‘0’ if the ENABLE bit in this register changes from ‘1’ to ‘0’. - Before changing from the USB Host to the USB Device, check that the following conditions are satisfied and also set the RST bit of the Host Control 1 Register (HOST_CTL1). to ‘1’. * The SOFBUSY bit of the Host Status Register (HOST_STATUS) is set to ‘0’. * The TKNEN bits of the Host Token Endpoint Register (HOST_TOKEN) is set to ‘000’. * The SUSP bit of the Host Status Register (HOST_STATUS) is set to ‘0’."],["HOST_W","Field `HOST` writer - This bit selects an operating mode of this IP. ‘0’ : USB Device ‘1’ : USB Host Notes: - The mode of operation mode does not transition immediately after setting this bit. Read this bit to confirm that the operation mode has changed. - This bit is reset to ‘0’ if the ENABLE bit in this register changes from ‘1’ to ‘0’. - Before changing from the USB Host to the USB Device, check that the following conditions are satisfied and also set the RST bit of the Host Control 1 Register (HOST_CTL1). to ‘1’. * The SOFBUSY bit of the Host Status Register (HOST_STATUS) is set to ‘0’. * The TKNEN bits of the Host Token Endpoint Register (HOST_TOKEN) is set to ‘000’. * The SUSP bit of the Host Status Register (HOST_STATUS) is set to ‘0’."],["R","Register `HOST_CTL0` reader"],["W","Register `HOST_CTL0` writer"]]});