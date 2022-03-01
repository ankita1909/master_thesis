initSidebarItems({"enum":[["DATA_VALID_A","This bit is used for OUT transactions only and is read only. It is cleared to ‘0’ if CRC bit stuffing errors or PID errors occur. This bit does not update for some endpoint mode settings."]],"struct":[["DATA_COUNT_MSB_R","Field `DATA_COUNT_MSB` reader - These bits are the 3 MSb bits of an 11-bit counter. The LSb are the Data Count[7:0] bits of the CNT1 register. Refer to the CNT1 register for more information."],["DATA_COUNT_MSB_W","Field `DATA_COUNT_MSB` writer - These bits are the 3 MSb bits of an 11-bit counter. The LSb are the Data Count[7:0] bits of the CNT1 register. Refer to the CNT1 register for more information."],["DATA_TOGGLE_R","Field `DATA_TOGGLE` reader - This bit selects the DATA packet’s toggle state. For IN transactions firmware must set this bit to the expected state. For OUT transactions the hardware sets this bit to the state of the received Data Toggle bit."],["DATA_TOGGLE_W","Field `DATA_TOGGLE` writer - This bit selects the DATA packet’s toggle state. For IN transactions firmware must set this bit to the expected state. For OUT transactions the hardware sets this bit to the state of the received Data Toggle bit."],["DATA_VALID_R","Field `DATA_VALID` reader - This bit is used for OUT transactions only and is read only. It is cleared to ‘0’ if CRC bit stuffing errors or PID errors occur. This bit does not update for some endpoint mode settings."],["DATA_VALID_W","Field `DATA_VALID` writer - This bit is used for OUT transactions only and is read only. It is cleared to ‘0’ if CRC bit stuffing errors or PID errors occur. This bit does not update for some endpoint mode settings."],["R","Register `SIE_EP2_CNT0` reader"],["SIE_EP2_CNT0_SPEC","Non-control endpoint count register"],["W","Register `SIE_EP2_CNT0` writer"]]});