initSidebarItems({"enum":[["ACKED_TXN_A","The ACK’d transaction bit is set whenever the SIE engages in a transaction to the register’s endpoint that completes with an ACK packet. This bit is cleared by any writes to the register."],["MODE_A","The mode controls how the USB SIE responds to traffic and how the USB SIE changes the mode of that endpoint as a result of host packets to the endpoint."]],"struct":[["ACKED_TXN_R","Field `ACKED_TXN` reader - The ACK’d transaction bit is set whenever the SIE engages in a transaction to the register’s endpoint that completes with an ACK packet. This bit is cleared by any writes to the register."],["ACKED_TXN_W","Field `ACKED_TXN` writer - The ACK’d transaction bit is set whenever the SIE engages in a transaction to the register’s endpoint that completes with an ACK packet. This bit is cleared by any writes to the register."],["ERR_IN_TXN_R","Field `ERR_IN_TXN` reader - The Error in transaction bit is set whenever an error is detected. For an IN transaction, this indicates a no response from HOST scenario. For an OUT transaction, this represents an RxErr (PID error/ CRC error/ bit-stuff error scenario). This bit is cleared by any writes to the register."],["ERR_IN_TXN_W","Field `ERR_IN_TXN` writer - The Error in transaction bit is set whenever an error is detected. For an IN transaction, this indicates a no response from HOST scenario. For an OUT transaction, this represents an RxErr (PID error/ CRC error/ bit-stuff error scenario). This bit is cleared by any writes to the register."],["MODE_R","Field `MODE` reader - The mode controls how the USB SIE responds to traffic and how the USB SIE changes the mode of that endpoint as a result of host packets to the endpoint."],["MODE_W","Field `MODE` writer - The mode controls how the USB SIE responds to traffic and how the USB SIE changes the mode of that endpoint as a result of host packets to the endpoint."],["NAK_INT_EN_R","Field `NAK_INT_EN` reader - When set this bit causes an endpoint interrupt to be generated even when a transfer completes with a NAK."],["NAK_INT_EN_W","Field `NAK_INT_EN` writer - When set this bit causes an endpoint interrupt to be generated even when a transfer completes with a NAK."],["R","Register `SIE_EP7_CR0` reader"],["SIE_EP7_CR0_SPEC","Non-control endpoint’s control Register"],["STALL_R","Field `STALL` reader - When this bit is set the SIE stalls an OUT packet if the Mode bits are set to ACK-OUT. The SIE stalls an IN packet if the mode bits are set to ACK-IN. This bit must be clear for all other modes."],["STALL_W","Field `STALL` writer - When this bit is set the SIE stalls an OUT packet if the Mode bits are set to ACK-OUT. The SIE stalls an IN packet if the mode bits are set to ACK-IN. This bit must be clear for all other modes."],["W","Register `SIE_EP7_CR0` writer"]]});