initSidebarItems({"struct":[["DATA_WIDTH_R","Field `DATA_WIDTH` reader - Dataframe width. DATA_WIDTH + 1 is the amount of bits in a transmitted data frame. This number does not include start, parity and stop bits. For UART mode, the valid range is [3, 8]. For SPI, the valid range is [3, 15]. For I2C the only valid value is 7."],["DATA_WIDTH_W","Field `DATA_WIDTH` writer - Dataframe width. DATA_WIDTH + 1 is the amount of bits in a transmitted data frame. This number does not include start, parity and stop bits. For UART mode, the valid range is [3, 8]. For SPI, the valid range is [3, 15]. For I2C the only valid value is 7."],["MSB_FIRST_R","Field `MSB_FIRST` reader - Least significant bit first (‘0’) or most significant bit first (‘1’). For I2C, this field should be ‘1’."],["MSB_FIRST_W","Field `MSB_FIRST` writer - Least significant bit first (‘0’) or most significant bit first (‘1’). For I2C, this field should be ‘1’."],["OPEN_DRAIN_R","Field `OPEN_DRAIN` reader - Each IO cell ‘xxx’ has two associated IP output signals ‘xxx_out_en’ and ‘xxx_out’. ‘0’: Normal operation mode. Typically, this operation mode is used for IO cells that are connected to (board) wires/lines that are driven by a single IO cell. In this operation mode, for an IO cell ‘xxx’ that is used as an output, the ‘xxx_out_en’ output enable signal is typically constant ‘1’ the ‘xxx_out’ output is the outputted value. In other words, in normal operation mode, the ‘xxx_out’ output is used to control the IO cell output value: ‘xxx_out’ is ‘0’ to drive an IO cell output value of ‘0’ and ‘xxx_out’ is ‘1’ to drive an IO cell output value of ‘1’. ‘1’: Open drain operation mode. Typically this operation mode is used for IO cells that are connected to (board) wires/lines that are driven by multiple IO cells (possibly on multiple chips). In this operation mode, for and IO cell ‘xxx’ that is used as an output, the ‘xxx_out_en’ output controls the outputted value. Typically, open drain operation mode drives low/‘0’ and the ‘xxx_out’ output is constant ‘1’. In other words, in open drain operation mode, the ‘xxx_out_en’ output is used to control the IO cell output value: in drive low/‘0’ mode: ‘xxx_out_en’ is ‘1’ (drive enabled) to drive an IO cell output value of ‘0’ and ‘xxx_out_en’ is ‘1’ (drive disabled) to not drive an IO cell output value (another IO cell can drive the wire/line or a pull up results in a wire/line value ‘1’). The open drain mode is supported for: - I2C mode, ‘i2c_scl’ and ‘i2c_sda’ IO cells. - UART mode, ‘uart_tx’ IO cell (SPI slave). - SPI mode, ‘spi_miso’ IO cell."],["OPEN_DRAIN_W","Field `OPEN_DRAIN` writer - Each IO cell ‘xxx’ has two associated IP output signals ‘xxx_out_en’ and ‘xxx_out’. ‘0’: Normal operation mode. Typically, this operation mode is used for IO cells that are connected to (board) wires/lines that are driven by a single IO cell. In this operation mode, for an IO cell ‘xxx’ that is used as an output, the ‘xxx_out_en’ output enable signal is typically constant ‘1’ the ‘xxx_out’ output is the outputted value. In other words, in normal operation mode, the ‘xxx_out’ output is used to control the IO cell output value: ‘xxx_out’ is ‘0’ to drive an IO cell output value of ‘0’ and ‘xxx_out’ is ‘1’ to drive an IO cell output value of ‘1’. ‘1’: Open drain operation mode. Typically this operation mode is used for IO cells that are connected to (board) wires/lines that are driven by multiple IO cells (possibly on multiple chips). In this operation mode, for and IO cell ‘xxx’ that is used as an output, the ‘xxx_out_en’ output controls the outputted value. Typically, open drain operation mode drives low/‘0’ and the ‘xxx_out’ output is constant ‘1’. In other words, in open drain operation mode, the ‘xxx_out_en’ output is used to control the IO cell output value: in drive low/‘0’ mode: ‘xxx_out_en’ is ‘1’ (drive enabled) to drive an IO cell output value of ‘0’ and ‘xxx_out_en’ is ‘1’ (drive disabled) to not drive an IO cell output value (another IO cell can drive the wire/line or a pull up results in a wire/line value ‘1’). The open drain mode is supported for: - I2C mode, ‘i2c_scl’ and ‘i2c_sda’ IO cells. - UART mode, ‘uart_tx’ IO cell (SPI slave). - SPI mode, ‘spi_miso’ IO cell."],["R","Register `TX_CTRL` reader"],["TX_CTRL_SPEC","Transmitter control"],["W","Register `TX_CTRL` writer"]]});