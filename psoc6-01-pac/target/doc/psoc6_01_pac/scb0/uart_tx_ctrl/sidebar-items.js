initSidebarItems({"struct":[["PARITY_ENABLED_R","Field `PARITY_ENABLED` reader - Parity generation enabled (‘1’) or not (‘0’). Only applicable in standard UART submodes. In SmartCard submode, parity generation is always enabled through hardware. In IrDA submode, parity generation is always disabled through hardware"],["PARITY_ENABLED_W","Field `PARITY_ENABLED` writer - Parity generation enabled (‘1’) or not (‘0’). Only applicable in standard UART submodes. In SmartCard submode, parity generation is always enabled through hardware. In IrDA submode, parity generation is always disabled through hardware"],["PARITY_R","Field `PARITY` reader - Parity bit. When ‘0’, the transmitter generates an even parity. When ‘1’, the transmitter generates an odd parity. Only applicable in standard UART and SmartCard submodes."],["PARITY_W","Field `PARITY` writer - Parity bit. When ‘0’, the transmitter generates an even parity. When ‘1’, the transmitter generates an odd parity. Only applicable in standard UART and SmartCard submodes."],["R","Register `UART_TX_CTRL` reader"],["RETRY_ON_NACK_R","Field `RETRY_ON_NACK` reader - When ‘1’, a data frame is retransmitted when a negative acknowledgement is received. Only applicable to the SmartCard submode."],["RETRY_ON_NACK_W","Field `RETRY_ON_NACK` writer - When ‘1’, a data frame is retransmitted when a negative acknowledgement is received. Only applicable to the SmartCard submode."],["STOP_BITS_R","Field `STOP_BITS` reader - Stop bits. STOP_BITS + 1 is the duration of the stop period in terms of halve bit periods. Valid range is [1, 7]; i.e. a stop period should last at least one bit period."],["STOP_BITS_W","Field `STOP_BITS` writer - Stop bits. STOP_BITS + 1 is the duration of the stop period in terms of halve bit periods. Valid range is [1, 7]; i.e. a stop period should last at least one bit period."],["UART_TX_CTRL_SPEC","UART transmitter control"],["W","Register `UART_TX_CTRL` writer"]]});