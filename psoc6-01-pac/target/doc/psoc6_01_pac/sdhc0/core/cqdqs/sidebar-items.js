initSidebarItems({"struct":[["CQDQS_SPEC","Device queue status register"],["DQS_R","Field `DQS` reader - Device Queue Status Each of the 32 bits are bit mapped to the 32 tasks. - Bit-N(1): Device has marked task N as ready for execution - Bit-N(0): Task-N is not ready for execution. This task could be pending in device or not submitted. Host controller updates this register with response of the Device Queue Status command."],["R","Register `CQDQS` reader"]]});