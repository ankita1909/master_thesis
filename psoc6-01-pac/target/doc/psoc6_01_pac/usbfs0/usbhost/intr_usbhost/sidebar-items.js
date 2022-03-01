initSidebarItems({"struct":[["CMPIRQ_R","Field `CMPIRQ` reader - If this bit is set to ‘1’, it means that a token is completed. When this bit is ‘0’, it has no meaning. Write ‘1’ to clear, a write of ‘0’ is ignored. ‘0’ : Issues no interrupt request by token completion. ‘1’ : Issues an interrupt request by token completion. Note : - This bit is set to the initial value when the RST bit of the Host Control 1 Register (HOST_CTL1) is set to ‘1’. - This bit is not set to ‘1’ even if the TCAN bit of the Interrupt USBHost Register (INTR_USBHOST) changes to ‘1’. - Take the following steps when this bit is set to ‘1’ by finishing IN token or Isochronous IN token. 1. Read HS bit of Host Error Status Register (HOST_ERR), then set CMPIRQ bit to ‘0’. 2. Set EPn bit of Host DMA Enable Register (HOST_DMA_ENBL) (n=1 or 2) to ‘1’ if HS bit of Host Error Status Register (HOST_ERR) is equal to ‘00’ and wait until EPn bit of Host DMA Data Request Register (HOST_DMA_DREQ) changes to ‘1’. Finish the IN token processing if HS bit is not equal to ‘00’. 3. Read the received data if EPn bit of Host DMA Data Requet (HOST_DMA_DREQ) (n=1 or 2) changes to ‘1’."],["CMPIRQ_W","Field `CMPIRQ` writer - If this bit is set to ‘1’, it means that a token is completed. When this bit is ‘0’, it has no meaning. Write ‘1’ to clear, a write of ‘0’ is ignored. ‘0’ : Issues no interrupt request by token completion. ‘1’ : Issues an interrupt request by token completion. Note : - This bit is set to the initial value when the RST bit of the Host Control 1 Register (HOST_CTL1) is set to ‘1’. - This bit is not set to ‘1’ even if the TCAN bit of the Interrupt USBHost Register (INTR_USBHOST) changes to ‘1’. - Take the following steps when this bit is set to ‘1’ by finishing IN token or Isochronous IN token. 1. Read HS bit of Host Error Status Register (HOST_ERR), then set CMPIRQ bit to ‘0’. 2. Set EPn bit of Host DMA Enable Register (HOST_DMA_ENBL) (n=1 or 2) to ‘1’ if HS bit of Host Error Status Register (HOST_ERR) is equal to ‘00’ and wait until EPn bit of Host DMA Data Request Register (HOST_DMA_DREQ) changes to ‘1’. Finish the IN token processing if HS bit is not equal to ‘00’. 3. Read the received data if EPn bit of Host DMA Data Requet (HOST_DMA_DREQ) (n=1 or 2) changes to ‘1’."],["CNNIRQ_R","Field `CNNIRQ` reader - If this bit is set to ‘1’, it means that a device connection is detected. When this bit is ‘0’, it has no meaning. Write ‘1’ to clear, a write of ‘0’ is ignored. ‘0’ : Issues no interrupt request by detecting a device connection. ‘1’ : Issues an interrupt request by detecting a device connection. Note : - This bit is set to the default value when the RST bit of the Host Control 1 Register (HOST_CTL1) is set to ‘1’."],["CNNIRQ_W","Field `CNNIRQ` writer - If this bit is set to ‘1’, it means that a device connection is detected. When this bit is ‘0’, it has no meaning. Write ‘1’ to clear, a write of ‘0’ is ignored. ‘0’ : Issues no interrupt request by detecting a device connection. ‘1’ : Issues an interrupt request by detecting a device connection. Note : - This bit is set to the default value when the RST bit of the Host Control 1 Register (HOST_CTL1) is set to ‘1’."],["DIRQ_R","Field `DIRQ` reader - If this bit is set to ‘1’, it means that a device disconnection is detected. When this bit is ‘0’, it has no meaning. Write ‘1’ to clear, a write of ‘0’ is ignored. ‘0’ : Issues no interrupt request by detecting a device disconnection. ‘1’ : Issues an interrupt request by detecting a device disconnection. Note : - This bit is set to the default value when the RST bit of the Host Control 1 Register (HOST_CTL1) is set to ‘1’."],["DIRQ_W","Field `DIRQ` writer - If this bit is set to ‘1’, it means that a device disconnection is detected. When this bit is ‘0’, it has no meaning. Write ‘1’ to clear, a write of ‘0’ is ignored. ‘0’ : Issues no interrupt request by detecting a device disconnection. ‘1’ : Issues an interrupt request by detecting a device disconnection. Note : - This bit is set to the default value when the RST bit of the Host Control 1 Register (HOST_CTL1) is set to ‘1’."],["INTR_USBHOST_SPEC","Interrupt USB Host Register"],["R","Register `INTR_USBHOST` reader"],["RSVD_6_R","Field `RSVD_6` reader - N/A"],["RSVD_6_W","Field `RSVD_6` writer - N/A"],["RWKIRQ_R","Field `RWKIRQ` reader - If this bit is set to ‘1’, it means that remote Wake-up is ended. When this bit is ‘0’, it has no meaning. Write ‘1’ to clear, a write of ‘0’ is ignored. ‘0’ : Issues no interrupt request by restart. ‘1’ : Issues an interrupt request by restart. Note : - This bit is set to the default value when the RST bit of the Host Control 1 Register (HOST_CTL1) is set to ‘1’."],["RWKIRQ_W","Field `RWKIRQ` writer - If this bit is set to ‘1’, it means that remote Wake-up is ended. When this bit is ‘0’, it has no meaning. Write ‘1’ to clear, a write of ‘0’ is ignored. ‘0’ : Issues no interrupt request by restart. ‘1’ : Issues an interrupt request by restart. Note : - This bit is set to the default value when the RST bit of the Host Control 1 Register (HOST_CTL1) is set to ‘1’."],["SOFIRQ_R","Field `SOFIRQ` reader - If this bit is set to ‘1’, it means that SOF token sending is started. When this bit is ‘0’, it has no meaning. Write ‘1’ to clear, a write of ‘0’ is ignored. ‘0’ : Does not issue an interrupt request by starting a SOF token. ‘1’ : Issues an interrupt request by starting a SOF token. Note : - This bit is set to the default value when the RST bit of the Host Control 1 Register (HOST_CTL1) is set to ‘1’."],["SOFIRQ_W","Field `SOFIRQ` writer - If this bit is set to ‘1’, it means that SOF token sending is started. When this bit is ‘0’, it has no meaning. Write ‘1’ to clear, a write of ‘0’ is ignored. ‘0’ : Does not issue an interrupt request by starting a SOF token. ‘1’ : Issues an interrupt request by starting a SOF token. Note : - This bit is set to the default value when the RST bit of the Host Control 1 Register (HOST_CTL1) is set to ‘1’."],["TCAN_R","Field `TCAN` reader - If this bit is set to ‘1’, it means that token sending is canceled based on the setting of the CANCEL bit of Host Control 2 Register (HOST_CTL2). When this bit is ‘0’, it means that token sending is not canceled. Write ‘1’ to clear, a write of ‘0’ is ignored. ‘0’ : Does not cancel token sending. ‘1’ : Cancels token sending. Note : - This bit is set to the default value when the RST bit of the Host Control 1 Register (HOST_CTL1) is set to ‘1’."],["TCAN_W","Field `TCAN` writer - If this bit is set to ‘1’, it means that token sending is canceled based on the setting of the CANCEL bit of Host Control 2 Register (HOST_CTL2). When this bit is ‘0’, it means that token sending is not canceled. Write ‘1’ to clear, a write of ‘0’ is ignored. ‘0’ : Does not cancel token sending. ‘1’ : Cancels token sending. Note : - This bit is set to the default value when the RST bit of the Host Control 1 Register (HOST_CTL1) is set to ‘1’."],["URIRQ_R","Field `URIRQ` reader - If this bit is set to ‘1’, it means that USB bus resetting is ended. When this bit is ‘0’, it has no meaning. If this bit is written with ‘1’, it is set to ‘0’. However, if this bit is written with ‘0’, its value is ignored. ‘0’ : Issues no interrupt request by USB bus resetting. ‘1’ : Issues an interrupt request by USB bus resetting. Note : - This bit is set to the initial value when the RST bit of the Host Control 1 Register (HOST_CTL1) is set to ‘1’."],["URIRQ_W","Field `URIRQ` writer - If this bit is set to ‘1’, it means that USB bus resetting is ended. When this bit is ‘0’, it has no meaning. If this bit is written with ‘1’, it is set to ‘0’. However, if this bit is written with ‘0’, its value is ignored. ‘0’ : Issues no interrupt request by USB bus resetting. ‘1’ : Issues an interrupt request by USB bus resetting. Note : - This bit is set to the initial value when the RST bit of the Host Control 1 Register (HOST_CTL1) is set to ‘1’."],["W","Register `INTR_USBHOST` writer"]]});