initSidebarItems({"enum":[["BLOCK_A","Specifies what happens for MMIO interface read accesses to an empty RX data FIFO or to a full TX format/data FIFO. Note: the FIFOs can only be accessed in MMIO_MODE. This field is not used for test controller accesses."],["ENABLED_A","IP enable: ‘0’: Disabled. All non-retention registers are reset to their default value when the IP is disabled. When the IP is disabled, the XIP accesses produce AHB-Lite bus errors. ‘1’: Enabled. Note: Before disabling the IP, SW should ensure that the IP is NOT busy (STATUS.BUSY is ‘0’), otherwise illegal interface transfers may occur."],["XIP_MODE_A","Mode of operation. Note: this field should only be changed when the IP is disabled or when STATUS.BUSY is ‘0’ and SW should not be executing from the XIP interface or MMIO interface."]],"struct":[["BLOCK_R","Field `BLOCK` reader - Specifies what happens for MMIO interface read accesses to an empty RX data FIFO or to a full TX format/data FIFO. Note: the FIFOs can only be accessed in MMIO_MODE. This field is not used for test controller accesses."],["BLOCK_W","Field `BLOCK` writer - Specifies what happens for MMIO interface read accesses to an empty RX data FIFO or to a full TX format/data FIFO. Note: the FIFOs can only be accessed in MMIO_MODE. This field is not used for test controller accesses."],["CLOCK_IF_RX_SEL_R","Field `CLOCK_IF_RX_SEL` reader - Specifies device interface receiver clock ‘clk_if_rx’ source. MISO data is captured on the rising edge of ‘clk_if_rx’. ‘0’: ‘spi_clk_out’ (internal clock) ‘1’: !‘spi_clk_out’ (internal clock) ‘2’: ‘spi_clk_in’ (feedback clock) ‘3’: !‘spi_clk_in’ (feedback clock) Note: the device interface transmitter clock ‘clk_if_tx’ is fixed and is ‘spi_clk_out’ MOSI data is driven on the falling edge of ‘clk_if_tx’."],["CLOCK_IF_RX_SEL_W","Field `CLOCK_IF_RX_SEL` writer - Specifies device interface receiver clock ‘clk_if_rx’ source. MISO data is captured on the rising edge of ‘clk_if_rx’. ‘0’: ‘spi_clk_out’ (internal clock) ‘1’: !‘spi_clk_out’ (internal clock) ‘2’: ‘spi_clk_in’ (feedback clock) ‘3’: !‘spi_clk_in’ (feedback clock) Note: the device interface transmitter clock ‘clk_if_tx’ is fixed and is ‘spi_clk_out’ MOSI data is driven on the falling edge of ‘clk_if_tx’."],["CTL_SPEC","Control"],["DESELECT_DELAY_R","Field `DESELECT_DELAY` reader - Specifies the minimum duration of SPI deselection (‘spi_select_out[]’ is high/‘1’) in between SPI transfers: ‘0’: 1 interface clock cycle. ‘1’: 2 interface clock cycles. ‘2’: 3 interface clock cycles. ‘3’: 4 interface clock cycles. ‘4’: 5 interface clock cycles. ‘5’: 6 interface clock cycles. ‘6’: 7 interface clock cycles. ‘7’: 8 interface clock cycles. During SPI deselection, ‘spi_select_out[]’ are ‘1’/inactive, ‘spi_data_out[]’ are ‘1’ and ‘spi_clk_out’ is ‘0’/inactive."],["DESELECT_DELAY_W","Field `DESELECT_DELAY` writer - Specifies the minimum duration of SPI deselection (‘spi_select_out[]’ is high/‘1’) in between SPI transfers: ‘0’: 1 interface clock cycle. ‘1’: 2 interface clock cycles. ‘2’: 3 interface clock cycles. ‘3’: 4 interface clock cycles. ‘4’: 5 interface clock cycles. ‘5’: 6 interface clock cycles. ‘6’: 7 interface clock cycles. ‘7’: 8 interface clock cycles. During SPI deselection, ‘spi_select_out[]’ are ‘1’/inactive, ‘spi_data_out[]’ are ‘1’ and ‘spi_clk_out’ is ‘0’/inactive."],["ENABLED_R","Field `ENABLED` reader - IP enable: ‘0’: Disabled. All non-retention registers are reset to their default value when the IP is disabled. When the IP is disabled, the XIP accesses produce AHB-Lite bus errors. ‘1’: Enabled. Note: Before disabling the IP, SW should ensure that the IP is NOT busy (STATUS.BUSY is ‘0’), otherwise illegal interface transfers may occur."],["ENABLED_W","Field `ENABLED` writer - IP enable: ‘0’: Disabled. All non-retention registers are reset to their default value when the IP is disabled. When the IP is disabled, the XIP accesses produce AHB-Lite bus errors. ‘1’: Enabled. Note: Before disabling the IP, SW should ensure that the IP is NOT busy (STATUS.BUSY is ‘0’), otherwise illegal interface transfers may occur."],["R","Register `CTL` reader"],["W","Register `CTL` writer"],["XIP_MODE_R","Field `XIP_MODE` reader - Mode of operation. Note: this field should only be changed when the IP is disabled or when STATUS.BUSY is ‘0’ and SW should not be executing from the XIP interface or MMIO interface."],["XIP_MODE_W","Field `XIP_MODE` writer - Mode of operation. Note: this field should only be changed when the IP is disabled or when STATUS.BUSY is ‘0’ and SW should not be executing from the XIP interface or MMIO interface."]]});