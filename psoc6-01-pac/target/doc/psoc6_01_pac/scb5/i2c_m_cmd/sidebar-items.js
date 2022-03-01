initSidebarItems({"struct":[["I2C_M_CMD_SPEC","I2C master command"],["M_ACK_R","Field `M_ACK` reader - When ‘1’, attempt to transmit an acknowledgement (ACK). When this action is performed, the hardware sets this field to ‘0’."],["M_ACK_W","Field `M_ACK` writer - When ‘1’, attempt to transmit an acknowledgement (ACK). When this action is performed, the hardware sets this field to ‘0’."],["M_NACK_R","Field `M_NACK` reader - When ‘1’, attempt to transmit a negative acknowledgement (NACK). When this action is performed, the hardware sets this field to ‘0’."],["M_NACK_W","Field `M_NACK` writer - When ‘1’, attempt to transmit a negative acknowledgement (NACK). When this action is performed, the hardware sets this field to ‘0’."],["M_START_ON_IDLE_R","Field `M_START_ON_IDLE` reader - When ‘1’, transmit a START as soon as the bus is idle (I2C_STATUS.BUS_BUSY is ‘0’, note that BUSY has a default value of ‘0’). For bus idle detection the hardware relies on STOP detection. As a result, bus idle detection is only functional after at least one I2C bus transfer has been detected on the bus (default/reset value of BUSY is ‘0’) . A START is only transmitted when the master state machine is in the default state. When this action is performed, the hardware sets this field to ‘0’."],["M_START_ON_IDLE_W","Field `M_START_ON_IDLE` writer - When ‘1’, transmit a START as soon as the bus is idle (I2C_STATUS.BUS_BUSY is ‘0’, note that BUSY has a default value of ‘0’). For bus idle detection the hardware relies on STOP detection. As a result, bus idle detection is only functional after at least one I2C bus transfer has been detected on the bus (default/reset value of BUSY is ‘0’) . A START is only transmitted when the master state machine is in the default state. When this action is performed, the hardware sets this field to ‘0’."],["M_START_R","Field `M_START` reader - When ‘1’, transmit a START or REPEATED START. Whether a START or REPEATED START is transmitted depends on the state of the master state machine. A START is only transmitted when the master state machine is in the default state. A REPEATED START is transmitted when the master state machine is not in the default state, but is working on an ongoing transaction. The REPEATED START can only be transmitted after a NACK or ACK has been received for a transmitted data element or after a NACK has been transmitted for a received data element. When this action is performed, the hardware sets this field to ‘0’."],["M_START_W","Field `M_START` writer - When ‘1’, transmit a START or REPEATED START. Whether a START or REPEATED START is transmitted depends on the state of the master state machine. A START is only transmitted when the master state machine is in the default state. A REPEATED START is transmitted when the master state machine is not in the default state, but is working on an ongoing transaction. The REPEATED START can only be transmitted after a NACK or ACK has been received for a transmitted data element or after a NACK has been transmitted for a received data element. When this action is performed, the hardware sets this field to ‘0’."],["M_STOP_R","Field `M_STOP` reader - When ‘1’, attempt to transmit a STOP. When this action is performed, the hardware sets this field to ‘0’. I2C_M_CMD.M_START has a higher priority than this command: in situations where both a STOP and a REPEATED START could be transmitted, M_START takes precedence over M_STOP."],["M_STOP_W","Field `M_STOP` writer - When ‘1’, attempt to transmit a STOP. When this action is performed, the hardware sets this field to ‘0’. I2C_M_CMD.M_START has a higher priority than this command: in situations where both a STOP and a REPEATED START could be transmitted, M_START takes precedence over M_STOP."],["R","Register `I2C_M_CMD` reader"],["W","Register `I2C_M_CMD` writer"]]});