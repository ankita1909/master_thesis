initSidebarItems({"struct":[["ACT_REG_BOOST_R","Field `ACT_REG_BOOST` reader - Controls the tradeoff between output current and internal operating current for the Active Regulator. The maximum output current depends on the silicon implementation, but an application may limit its maximum current to less than that. This may allow a reduction in the internal operating current of the regulator. The regulator internal operating current depends on the boost setting: 2’b00: 50uA 2’b01: 100uA 2’b10: 150uA 2’b11: 200uA The allowed setting is a lookup table based on the chip-specific maximum (set in factory) and an application-specific maximum (set by customer). The defaults are set assuming the application consumes the maximum allowed by the chip. 50mA chip: 2’b00 (default); 100mA chip: 2’b00 (default); 150mA chip: 50..100mA app => 2’b00, 150mA app => 2’b01 (default); 200mA chip: 50mA app => 2’b00, 100..150mA app => 2’b01, 200mA app => 2’b10 (default); 250mA chip: 50mA app => 2’b00, 100..150mA app => 2’b01, 200..250mA app => 2’b10 (default); 300mA chip: 50mA app => 2’b00, 100..150mA app => 2’b01, 200..250mA app => 2’b10, 300mA app => 2’b11 (default); This register is only reset by XRES/POR/BOD/HIBERNATE."],["ACT_REG_BOOST_W","Field `ACT_REG_BOOST` writer - Controls the tradeoff between output current and internal operating current for the Active Regulator. The maximum output current depends on the silicon implementation, but an application may limit its maximum current to less than that. This may allow a reduction in the internal operating current of the regulator. The regulator internal operating current depends on the boost setting: 2’b00: 50uA 2’b01: 100uA 2’b10: 150uA 2’b11: 200uA The allowed setting is a lookup table based on the chip-specific maximum (set in factory) and an application-specific maximum (set by customer). The defaults are set assuming the application consumes the maximum allowed by the chip. 50mA chip: 2’b00 (default); 100mA chip: 2’b00 (default); 150mA chip: 50..100mA app => 2’b00, 150mA app => 2’b01 (default); 200mA chip: 50mA app => 2’b00, 100..150mA app => 2’b01, 200mA app => 2’b10 (default); 250mA chip: 50mA app => 2’b00, 100..150mA app => 2’b01, 200..250mA app => 2’b10 (default); 300mA chip: 50mA app => 2’b00, 100..150mA app => 2’b01, 200..250mA app => 2’b10, 300mA app => 2’b11 (default); This register is only reset by XRES/POR/BOD/HIBERNATE."],["ACT_REG_TRIM_R","Field `ACT_REG_TRIM` reader - Trim for the Active-Regulator. This sets the output voltage level. This register is only reset by XRES/POR/BOD/HIBERNATE. Two voltages are supported: 0.9V and 1.1V. The codes for these are stored in SFLASH_LDO_0P9V_TRIM and SFLASH_LDO_1P1V_TRIM, respectively."],["ACT_REG_TRIM_W","Field `ACT_REG_TRIM` writer - Trim for the Active-Regulator. This sets the output voltage level. This register is only reset by XRES/POR/BOD/HIBERNATE. Two voltages are supported: 0.9V and 1.1V. The codes for these are stored in SFLASH_LDO_0P9V_TRIM and SFLASH_LDO_1P1V_TRIM, respectively."],["PWR_TRIM_PWRSYS_CTL_SPEC","Power System Trim Register"],["R","Register `PWR_TRIM_PWRSYS_CTL` reader"],["W","Register `PWR_TRIM_PWRSYS_CTL` writer"]]});