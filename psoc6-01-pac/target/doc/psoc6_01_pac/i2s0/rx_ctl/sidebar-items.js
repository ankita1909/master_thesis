initSidebarItems({"enum":[["B_CLOCK_INV_A","Serial data capture is delayed by 0.5 SCK cycles. This bit is valid only in RX master mode. When set to ‘1’, the serial data will be captured 0.5 SCK cycles later than when set to ‘0’. 1) RX_CTL.SCKO_POL=0 and RX_CTL.B_CLOCK_INV=0: Serial data will be captured by the SCK rising edge 2) RX_CTL.SCKO_POL=0 and RX_CTL.B_CLOCK_INV=1: Serial data will be captured by the SCK falling edge that is 0.5 SCK cycles after the SCK rising edge in 1) 3) RX_CTL.SCKO_POL=1 and RX_CTL.B_CLOCK_INV=0: Serial data will be captured by the SCK falling edge 4) RX_CTL.SCKO_POL=1 and RX_CTL.B_CLOCK_INV=1: Serial data will be captured by the SCK rising edge that is 0.5 SCK cycles after the SCK falling edge in 3) (Note that this is only the appearance w.r.t. SCK edge, the actual capture timing is derived from an internal clock that runs 8x the SCK frequency). The word sync (RX_WS) signal is not affected by this bit setting. Note: When Slave mode, must be ‘0’. (Note: This bit is connected to AR38U12.TX_CFG.RX_BCLKINV)"],["CH_LEN_A","Channel length in number of bits: Note: - When this field is configured to ‘6’ or ‘7’, the length is set to 32-bit (same as ‘5’). - When TDM mode, must be 32-bit length to this field. (Note: These bits are connected to AR38U12.RX_CFG.RX_CHLEN)"],["CH_NR_A","Specifies number of channels per frame: Note: only ‘2channels’ is supported during Left Justfied or I2S mode. Hence software must set ‘1’ to this field in the modes. (Note: These bits are connected to AR38U12.RX_CFG.RX_CHSET)"],["I2S_MODE_A","Select I2S, left-justified or TDM: (Note: These bits are connected to AR38U12.RX_CFG.RX_I2S_MODE)"],["MS_A","Set interface in master or slave mode: (Note: This bit is connected to AR38U12.TX_CFG.RX_MS)"],["WORD_LEN_A","Word length in number of bits: Note: - When this field is configured to ‘6’ or ‘7’, the length is set to 32-bit (same as ‘5’). - Don’t configure this field as beyond Channel length. (Note: These bits are connected to AR38U12.RX_CFG.RX_IWL)"],["WS_PULSE_A","Set WS pulse width in TDM mode: (Note: This bit is connected to AR38U12.RX_CFG.RX_WS_PULSE) Note: When not TDM mode, must be ‘1’."]],"struct":[["BIT_EXTENSION_R","Field `BIT_EXTENSION` reader - When reception word length is shorter than the word length of RX_FIFO_RD, extension mode of upper bit should be set. ‘0’: Extended by ‘0’ ‘1’: Extended by sign bit (if MSB word is ‘1’, then it is extended by ‘1’, if MSB is ‘0’ then it is extended by ‘0’)"],["BIT_EXTENSION_W","Field `BIT_EXTENSION` writer - When reception word length is shorter than the word length of RX_FIFO_RD, extension mode of upper bit should be set. ‘0’: Extended by ‘0’ ‘1’: Extended by sign bit (if MSB word is ‘1’, then it is extended by ‘1’, if MSB is ‘0’ then it is extended by ‘0’)"],["B_CLOCK_INV_R","Field `B_CLOCK_INV` reader - Serial data capture is delayed by 0.5 SCK cycles. This bit is valid only in RX master mode. When set to ‘1’, the serial data will be captured 0.5 SCK cycles later than when set to ‘0’. 1) RX_CTL.SCKO_POL=0 and RX_CTL.B_CLOCK_INV=0: Serial data will be captured by the SCK rising edge 2) RX_CTL.SCKO_POL=0 and RX_CTL.B_CLOCK_INV=1: Serial data will be captured by the SCK falling edge that is 0.5 SCK cycles after the SCK rising edge in 1) 3) RX_CTL.SCKO_POL=1 and RX_CTL.B_CLOCK_INV=0: Serial data will be captured by the SCK falling edge 4) RX_CTL.SCKO_POL=1 and RX_CTL.B_CLOCK_INV=1: Serial data will be captured by the SCK rising edge that is 0.5 SCK cycles after the SCK falling edge in 3) (Note that this is only the appearance w.r.t. SCK edge, the actual capture timing is derived from an internal clock that runs 8x the SCK frequency). The word sync (RX_WS) signal is not affected by this bit setting. Note: When Slave mode, must be ‘0’. (Note: This bit is connected to AR38U12.TX_CFG.RX_BCLKINV)"],["B_CLOCK_INV_W","Field `B_CLOCK_INV` writer - Serial data capture is delayed by 0.5 SCK cycles. This bit is valid only in RX master mode. When set to ‘1’, the serial data will be captured 0.5 SCK cycles later than when set to ‘0’. 1) RX_CTL.SCKO_POL=0 and RX_CTL.B_CLOCK_INV=0: Serial data will be captured by the SCK rising edge 2) RX_CTL.SCKO_POL=0 and RX_CTL.B_CLOCK_INV=1: Serial data will be captured by the SCK falling edge that is 0.5 SCK cycles after the SCK rising edge in 1) 3) RX_CTL.SCKO_POL=1 and RX_CTL.B_CLOCK_INV=0: Serial data will be captured by the SCK falling edge 4) RX_CTL.SCKO_POL=1 and RX_CTL.B_CLOCK_INV=1: Serial data will be captured by the SCK rising edge that is 0.5 SCK cycles after the SCK falling edge in 3) (Note that this is only the appearance w.r.t. SCK edge, the actual capture timing is derived from an internal clock that runs 8x the SCK frequency). The word sync (RX_WS) signal is not affected by this bit setting. Note: When Slave mode, must be ‘0’. (Note: This bit is connected to AR38U12.TX_CFG.RX_BCLKINV)"],["CH_LEN_R","Field `CH_LEN` reader - Channel length in number of bits: Note: - When this field is configured to ‘6’ or ‘7’, the length is set to 32-bit (same as ‘5’). - When TDM mode, must be 32-bit length to this field. (Note: These bits are connected to AR38U12.RX_CFG.RX_CHLEN)"],["CH_LEN_W","Field `CH_LEN` writer - Channel length in number of bits: Note: - When this field is configured to ‘6’ or ‘7’, the length is set to 32-bit (same as ‘5’). - When TDM mode, must be 32-bit length to this field. (Note: These bits are connected to AR38U12.RX_CFG.RX_CHLEN)"],["CH_NR_R","Field `CH_NR` reader - Specifies number of channels per frame: Note: only ‘2channels’ is supported during Left Justfied or I2S mode. Hence software must set ‘1’ to this field in the modes. (Note: These bits are connected to AR38U12.RX_CFG.RX_CHSET)"],["CH_NR_W","Field `CH_NR` writer - Specifies number of channels per frame: Note: only ‘2channels’ is supported during Left Justfied or I2S mode. Hence software must set ‘1’ to this field in the modes. (Note: These bits are connected to AR38U12.RX_CFG.RX_CHSET)"],["I2S_MODE_R","Field `I2S_MODE` reader - Select I2S, left-justified or TDM: (Note: These bits are connected to AR38U12.RX_CFG.RX_I2S_MODE)"],["I2S_MODE_W","Field `I2S_MODE` writer - Select I2S, left-justified or TDM: (Note: These bits are connected to AR38U12.RX_CFG.RX_I2S_MODE)"],["MS_R","Field `MS` reader - Set interface in master or slave mode: (Note: This bit is connected to AR38U12.TX_CFG.RX_MS)"],["MS_W","Field `MS` writer - Set interface in master or slave mode: (Note: This bit is connected to AR38U12.TX_CFG.RX_MS)"],["R","Register `RX_CTL` reader"],["RX_CTL_SPEC","Receiver control"],["SCKI_POL_R","Field `SCKI_POL` reader - RX slave bit clock polarity. When this bit is 1, the incoming rx_sck signal is inverted before it is received by the I2S receiver core. This bit does not affect the internal serial data capture timing. The word sync (RX_WS) signal is not affected by this bit setting. ‘0’: When receiver is in slave mode, serial data is sampled on the rising bit clock edge ‘1’: When receiver is in slave mode, serial data is sampled on the falling bit clock edge"],["SCKI_POL_W","Field `SCKI_POL` writer - RX slave bit clock polarity. When this bit is 1, the incoming rx_sck signal is inverted before it is received by the I2S receiver core. This bit does not affect the internal serial data capture timing. The word sync (RX_WS) signal is not affected by this bit setting. ‘0’: When receiver is in slave mode, serial data is sampled on the rising bit clock edge ‘1’: When receiver is in slave mode, serial data is sampled on the falling bit clock edge"],["SCKO_POL_R","Field `SCKO_POL` reader - RX master bit clock polarity. When this bit is 1, the outgoing rx_sck signal is inverted after it has been transmitted from the I2S receiver core. This bit does not affect the internal serial data capture timing. The word sync (RX_WS) signal is not affected by this bit setting.See RX_CTL.B_CLOCK_INV for more details."],["SCKO_POL_W","Field `SCKO_POL` writer - RX master bit clock polarity. When this bit is 1, the outgoing rx_sck signal is inverted after it has been transmitted from the I2S receiver core. This bit does not affect the internal serial data capture timing. The word sync (RX_WS) signal is not affected by this bit setting.See RX_CTL.B_CLOCK_INV for more details."],["W","Register `RX_CTL` writer"],["WD_EN_R","Field `WD_EN` reader - Set watchdog for ‘rx_ws_in’ ‘0’: Disabled. ‘1’: Enabled."],["WD_EN_W","Field `WD_EN` writer - Set watchdog for ‘rx_ws_in’ ‘0’: Disabled. ‘1’: Enabled."],["WORD_LEN_R","Field `WORD_LEN` reader - Word length in number of bits: Note: - When this field is configured to ‘6’ or ‘7’, the length is set to 32-bit (same as ‘5’). - Don’t configure this field as beyond Channel length. (Note: These bits are connected to AR38U12.RX_CFG.RX_IWL)"],["WORD_LEN_W","Field `WORD_LEN` writer - Word length in number of bits: Note: - When this field is configured to ‘6’ or ‘7’, the length is set to 32-bit (same as ‘5’). - Don’t configure this field as beyond Channel length. (Note: These bits are connected to AR38U12.RX_CFG.RX_IWL)"],["WS_PULSE_R","Field `WS_PULSE` reader - Set WS pulse width in TDM mode: (Note: This bit is connected to AR38U12.RX_CFG.RX_WS_PULSE) Note: When not TDM mode, must be ‘1’."],["WS_PULSE_W","Field `WS_PULSE` writer - Set WS pulse width in TDM mode: (Note: This bit is connected to AR38U12.RX_CFG.RX_WS_PULSE) Note: When not TDM mode, must be ‘1’."]]});