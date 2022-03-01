initSidebarItems({"struct":[["PMIC_ALWAYSEN_R","Field `PMIC_ALWAYSEN` reader - Override normal PMIC controls to prevent accidentally turning off the PMIC by errant firmware. 0: Normal operation, PMIC_EN and PMIC_OUTEN work as described 1: PMIC_EN and PMIC_OUTEN are ignored and the output pad is forced enabled. Note: This bit is a write-once bit until the next backup reset."],["PMIC_ALWAYSEN_W","Field `PMIC_ALWAYSEN` writer - Override normal PMIC controls to prevent accidentally turning off the PMIC by errant firmware. 0: Normal operation, PMIC_EN and PMIC_OUTEN work as described 1: PMIC_EN and PMIC_OUTEN are ignored and the output pad is forced enabled. Note: This bit is a write-once bit until the next backup reset."],["PMIC_CTL_SPEC","PMIC control register"],["PMIC_EN_OUTEN_R","Field `PMIC_EN_OUTEN` reader - Output enable for the output driver in the PMIC_EN pad. 0: Output pad is tristate for PMIC_EN pin. This can allow this pin to be used for another purpose. Tristate condition is kept only if the UNLOCK key (0x3A) is present 1: Output pad is enabled for PMIC_EN pin."],["PMIC_EN_OUTEN_W","Field `PMIC_EN_OUTEN` writer - Output enable for the output driver in the PMIC_EN pad. 0: Output pad is tristate for PMIC_EN pin. This can allow this pin to be used for another purpose. Tristate condition is kept only if the UNLOCK key (0x3A) is present 1: Output pad is enabled for PMIC_EN pin."],["PMIC_EN_R","Field `PMIC_EN` reader - Enable for external PMIC that supplies vddd (if present). This bit will only clear if UNLOCK was written correctly in a previous write operation and PMIC_ALWAYSEN=0. When PMIC_EN=0, the system functions normally until vddd is no longer present (OFF w/Backup mode). Firmware can set this bit, if it does so before vddd is actually removed. This bit is also set by any RTC alarm or PMIC pin wakeup event regardless of UNLOCK setting."],["PMIC_EN_W","Field `PMIC_EN` writer - Enable for external PMIC that supplies vddd (if present). This bit will only clear if UNLOCK was written correctly in a previous write operation and PMIC_ALWAYSEN=0. When PMIC_EN=0, the system functions normally until vddd is no longer present (OFF w/Backup mode). Firmware can set this bit, if it does so before vddd is actually removed. This bit is also set by any RTC alarm or PMIC pin wakeup event regardless of UNLOCK setting."],["POLARITY_R","Field `POLARITY` reader - N/A"],["POLARITY_W","Field `POLARITY` writer - N/A"],["R","Register `PMIC_CTL` reader"],["UNLOCK_R","Field `UNLOCK` reader - This byte must be set to 0x3A for PMIC to be disabled. When the UNLOCK code is not present: writes to PMIC_EN field are ignored and the hardware ignores the value in PMIC_EN. Do not change PMIC_EN in the same write cycle as setting/clearing the UNLOCK code; do these in separate write cycles."],["UNLOCK_W","Field `UNLOCK` writer - This byte must be set to 0x3A for PMIC to be disabled. When the UNLOCK code is not present: writes to PMIC_EN field are ignored and the hardware ignores the value in PMIC_EN. Do not change PMIC_EN in the same write cycle as setting/clearing the UNLOCK code; do these in separate write cycles."],["W","Register `PMIC_CTL` writer"]]});