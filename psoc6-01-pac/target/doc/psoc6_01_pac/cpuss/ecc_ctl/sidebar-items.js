initSidebarItems({"struct":[["ECC_CTL_SPEC","ECC control"],["PARITY_R","Field `PARITY` reader - ECC parity to use for ECC error injection at address WORD_ADDR."],["PARITY_W","Field `PARITY` writer - ECC parity to use for ECC error injection at address WORD_ADDR."],["R","Register `ECC_CTL` reader"],["W","Register `ECC_CTL` writer"],["WORD_ADDR_R","Field `WORD_ADDR` reader - Specifies the word address where an error will be injected. - On a write transfer to this SRAM address and when the corresponding RAM0/RAM1/RAM2_CTL0.ECC_INJ_EN bit is ‘1’, the parity (PARITY) is injected. This field needs to be written with the offset address within the memory, divided by 4. For example, if the RAM1 start address is 0x08010000, and an error is to be injected to address 0x08010040, then this field needs to configured to 0x000010."],["WORD_ADDR_W","Field `WORD_ADDR` writer - Specifies the word address where an error will be injected. - On a write transfer to this SRAM address and when the corresponding RAM0/RAM1/RAM2_CTL0.ECC_INJ_EN bit is ‘1’, the parity (PARITY) is injected. This field needs to be written with the offset address within the memory, divided by 4. For example, if the RAM1 start address is 0x08010000, and an error is to be injected to address 0x08010040, then this field needs to configured to 0x000010."]]});