initSidebarItems({"struct":[["FRAMECOMP_R","Field `FRAMECOMP` reader - These bits are used to specify the data to be compared with the low-order eight bits of a frame number when sending a SOF token. If the SOFSTEP bit of Host Control 2 Register (HOST_CTL2) is ‘0’, the frame number of SOF is compared with the value of this register when sending a SOF token. If they match, the SOFIRQ bit of the Interrupt USB Host Register (INTR_USBHOST) is set to ‘1’. The setting of this register is invalid when the SOFSTEP bit of Host Control 2 Register (HOST_CTL2) is ‘1’. Note: - This bit is not reset to default even if the RST bit of the Host Control 1 Register (HOST_CTL1) is set to ‘1’."],["FRAMECOMP_W","Field `FRAMECOMP` writer - These bits are used to specify the data to be compared with the low-order eight bits of a frame number when sending a SOF token. If the SOFSTEP bit of Host Control 2 Register (HOST_CTL2) is ‘0’, the frame number of SOF is compared with the value of this register when sending a SOF token. If they match, the SOFIRQ bit of the Interrupt USB Host Register (INTR_USBHOST) is set to ‘1’. The setting of this register is invalid when the SOFSTEP bit of Host Control 2 Register (HOST_CTL2) is ‘1’. Note: - This bit is not reset to default even if the RST bit of the Host Control 1 Register (HOST_CTL1) is set to ‘1’."],["HOST_FCOMP_SPEC","Host SOF Interrupt Frame Compare Register"],["R","Register `HOST_FCOMP` reader"],["W","Register `HOST_FCOMP` writer"]]});