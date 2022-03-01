initSidebarItems({"struct":[["CR0_SPEC","USB control 0 Register"],["DEVICE_ADDRESS_R","Field `DEVICE_ADDRESS` reader - These bits specify the USB device address to which the SIE will respond. This address must be set by firmware and is specified by the USB Host with a SET ADDRESS command during USB enumeration. This value must be programmed by firmware when assigned during enumeration. It is not set automatically by the hardware. If USB bus reset is detected, these bits are initialized."],["DEVICE_ADDRESS_W","Field `DEVICE_ADDRESS` writer - These bits specify the USB device address to which the SIE will respond. This address must be set by firmware and is specified by the USB Host with a SET ADDRESS command during USB enumeration. This value must be programmed by firmware when assigned during enumeration. It is not set automatically by the hardware. If USB bus reset is detected, these bits are initialized."],["R","Register `CR0` reader"],["USB_ENABLE_R","Field `USB_ENABLE` reader - This bit enables the device to respond to USB traffic. If USB bus reset is detected, this bit is cleared. Note: When USB PHY is GPIO mode(USBIO_CR1.IOMODE=0), USB bus reset is detected. Therefore, when USB PHY is GPIO mode, this bit is cleared even if this bit is set to 1. If this bit is set to 1, write this bit upon USB bus reset interrupt, and do not write to this bit during initialization steps."],["USB_ENABLE_W","Field `USB_ENABLE` writer - This bit enables the device to respond to USB traffic. If USB bus reset is detected, this bit is cleared. Note: When USB PHY is GPIO mode(USBIO_CR1.IOMODE=0), USB bus reset is detected. Therefore, when USB PHY is GPIO mode, this bit is cleared even if this bit is set to 1. If this bit is set to 1, write this bit upon USB bus reset interrupt, and do not write to this bit during initialization steps."],["W","Register `CR0` writer"]]});