initSidebarItems({"struct":[["BASE_EZ_ADDR_R","Field `BASE_EZ_ADDR` reader - I2C slave base EZ address. Address as provided by an I2C write transfer. This field is only reliable in internally clocked mode. In externally clocked mode the field may be unreliable, as clock domain synchronization is not performed in the design."],["BUS_BUSY_R","Field `BUS_BUSY` reader - I2C bus is busy. The bus is considered busy (‘1’), from the time a START is detected or from the time the SCL line is ‘0’. The bus is considered idle (‘0’), from the time a STOP is detected. If the IP is disabled, BUS_BUSY is ‘0’. After enabling the IP, it takes time for the BUS_BUSY to detect a busy bus. This time is the maximum high time of the SCL line. For a 100 kHz interface frequency, this maximum high time may last roughly 5 us (half a bit period). For single master systems, BUS_BUSY does not have to be used to detect an idle bus before a master starts a transfer using I2C_M_CMD.M_START (no bus collisions). For multi-master systems, BUS_BUSY can be used to detect an idle bus before a master starts a transfer using I2C_M_CMD.M_START_ON_IDLE (to prevent bus collisions)."],["CURR_EZ_ADDR_R","Field `CURR_EZ_ADDR` reader - I2C slave current EZ address. Current address pointer. This field is only reliable in internally clocked mode. In externally clocked mode the field may be unreliable (during an ongoing transfer when I2C_EC_BUSY is ‘1’), as clock domain synchronization is not performed in the design."],["I2C_EC_BUSY_R","Field `I2C_EC_BUSY` reader - Indicates whether the externally clocked logic is potentially accessing the EZ memory and/or updating BASE_EZ_ADDR or CURR_EZ_ADDR (this is only possible in EZ mode). This bit can be used by SW to determine whether BASE_EZ_ADDR and CURR_EZ_ADDR are reliable."],["I2C_STATUS_SPEC","I2C status"],["M_READ_R","Field `M_READ` reader - I2C master read transfer (‘1’) or I2C master write transfer (‘0’). When the I2C master is inactive/idle or transmitting START, REPEATED START, STOP or an address, this field is ‘0’’."],["R","Register `I2C_STATUS` reader"],["S_READ_R","Field `S_READ` reader - I2C slave read transfer (‘1’) or I2C slave write transfer (‘0’). When the I2C slave is inactive/idle or receiving START, REPEATED START, STOP or an address, this field is ‘0’’."]]});