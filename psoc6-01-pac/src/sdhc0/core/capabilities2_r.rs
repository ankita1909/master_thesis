#[doc = "Register `CAPABILITIES2_R` reader"]
pub struct R(crate::R<CAPABILITIES2_R_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CAPABILITIES2_R_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CAPABILITIES2_R_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CAPABILITIES2_R_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Field `SDR50_SUPPORT` reader - SDR50 Support (UHS-I only) Thsi bit indicates that SDR50 is supported. The bit 13 (USE_TUNING_SDR50) indicates whether SDR50 requires tuning or not. Values: - 0x0 (FALSE): SDR50 is not supported - 0x1 (TRUE): SDR50 is supported"]
pub struct SDR50_SUPPORT_R(crate::FieldReader<bool, bool>);
impl SDR50_SUPPORT_R {
    pub(crate) fn new(bits: bool) -> Self {
        SDR50_SUPPORT_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SDR50_SUPPORT_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SDR104_SUPPORT` reader - SDR104 Support (UHS-I only) This bit mentions that SDR104 requires tuning. Values: - 0x0 (FALSE): SDR104 is not supported - 0x1 (TRUE): SDR104 is supported (NOT ACTUALLY SUPPORTED)"]
pub struct SDR104_SUPPORT_R(crate::FieldReader<bool, bool>);
impl SDR104_SUPPORT_R {
    pub(crate) fn new(bits: bool) -> Self {
        SDR104_SUPPORT_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SDR104_SUPPORT_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DDR50_SUPPORT` reader - DDR50 Support (UHS-I only) Values: - 0x0 (FALSE): DDR50 is not supported - 0x1 (TRUE): DDR50 is supported"]
pub struct DDR50_SUPPORT_R(crate::FieldReader<bool, bool>);
impl DDR50_SUPPORT_R {
    pub(crate) fn new(bits: bool) -> Self {
        DDR50_SUPPORT_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DDR50_SUPPORT_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `UHS2_SUPPORT` reader - UHS-II Support (UHS-II only) This bit indicates whether Host Controller supports UHS-II. Values: - 0x0 (FALSE): UHS-II is not supported - 0x1 (TRUE): UHS-II is supported"]
pub struct UHS2_SUPPORT_R(crate::FieldReader<bool, bool>);
impl UHS2_SUPPORT_R {
    pub(crate) fn new(bits: bool) -> Self {
        UHS2_SUPPORT_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for UHS2_SUPPORT_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DRV_TYPEA` reader - Driver Type A Support (UHS-I only) This bit indicates support of Driver Type A for 1.8 Signaling. Values: - 0x0 (FALSE): Driver Type A is not supported - 0x1 (TRUE): Driver Type A is supported"]
pub struct DRV_TYPEA_R(crate::FieldReader<bool, bool>);
impl DRV_TYPEA_R {
    pub(crate) fn new(bits: bool) -> Self {
        DRV_TYPEA_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DRV_TYPEA_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DRV_TYPEC` reader - Driver Type C Support (UHS-I only) This bit indicates support of Driver Type C for 1.8 Signaling. Values: - 0x0 (FALSE): Driver Type C is not supported - 0x1 (TRUE): Driver Type C is supported"]
pub struct DRV_TYPEC_R(crate::FieldReader<bool, bool>);
impl DRV_TYPEC_R {
    pub(crate) fn new(bits: bool) -> Self {
        DRV_TYPEC_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DRV_TYPEC_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DRV_TYPED` reader - Driver Type D Support (UHS-I only) This bit indicates support of Driver Type D for 1.8 Signaling. Values: - 0x0 (FALSE): Driver Type D is not supported - 0x1 (TRUE): Driver Type D is supported"]
pub struct DRV_TYPED_R(crate::FieldReader<bool, bool>);
impl DRV_TYPED_R {
    pub(crate) fn new(bits: bool) -> Self {
        DRV_TYPED_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DRV_TYPED_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `RETUNE_CNT` reader - N/A"]
pub struct RETUNE_CNT_R(crate::FieldReader<u8, u8>);
impl RETUNE_CNT_R {
    pub(crate) fn new(bits: u8) -> Self {
        RETUNE_CNT_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RETUNE_CNT_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `USE_TUNING_SDR50` reader - Use Tuning for SDR50 (UHS-I only) Values: - 0x0 (ZERO): SDR50 does not require tuning - 0x1 (ONE): SDR50 requires tuning"]
pub struct USE_TUNING_SDR50_R(crate::FieldReader<bool, bool>);
impl USE_TUNING_SDR50_R {
    pub(crate) fn new(bits: bool) -> Self {
        USE_TUNING_SDR50_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for USE_TUNING_SDR50_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `RE_TUNING_MODES` reader - N/A"]
pub struct RE_TUNING_MODES_R(crate::FieldReader<u8, u8>);
impl RE_TUNING_MODES_R {
    pub(crate) fn new(bits: u8) -> Self {
        RE_TUNING_MODES_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RE_TUNING_MODES_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CLK_MUL` reader - Clock Multiplier These bits indicate the clock multiplier of the programmable clock generator. Setting these bits to 0 means that the Host Controller does not support a programmable clock generator. - 0x0: Clock Multiplier is not Supported - 0x1: Clock Multiplier M = 2 - 0x2: Clock Multiplier M = 3 - ......... - 0xFF: Clock Multiplier M = 256"]
pub struct CLK_MUL_R(crate::FieldReader<u8, u8>);
impl CLK_MUL_R {
    pub(crate) fn new(bits: u8) -> Self {
        CLK_MUL_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CLK_MUL_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ADMA3_SUPPORT` reader - ADMA3 Support This bit indicates whether the Host Controller is capable of using ADMA3. Values: - 0x0 (FALSE): ADMA3 not Supported - 0x1 (TRUE): ADMA3 Supported"]
pub struct ADMA3_SUPPORT_R(crate::FieldReader<bool, bool>);
impl ADMA3_SUPPORT_R {
    pub(crate) fn new(bits: bool) -> Self {
        ADMA3_SUPPORT_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ADMA3_SUPPORT_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `VDD2_18V_SUPPORT` reader - 1.8V VDD2 Support This bit indicates support of VDD2 for the Host System. Values: - 0x0 (FALSE): 1.8V VDD2 is not Supported - 0x1 (TRUE): 1.8V VDD2 is Supported"]
pub struct VDD2_18V_SUPPORT_R(crate::FieldReader<bool, bool>);
impl VDD2_18V_SUPPORT_R {
    pub(crate) fn new(bits: bool) -> Self {
        VDD2_18V_SUPPORT_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for VDD2_18V_SUPPORT_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl R {
    #[doc = "Bit 0 - SDR50 Support (UHS-I only) Thsi bit indicates that SDR50 is supported. The bit 13 (USE_TUNING_SDR50) indicates whether SDR50 requires tuning or not. Values: - 0x0 (FALSE): SDR50 is not supported - 0x1 (TRUE): SDR50 is supported"]
    #[inline(always)]
    pub fn sdr50_support(&self) -> SDR50_SUPPORT_R {
        SDR50_SUPPORT_R::new((self.bits & 0x01) != 0)
    }
    #[doc = "Bit 1 - SDR104 Support (UHS-I only) This bit mentions that SDR104 requires tuning. Values: - 0x0 (FALSE): SDR104 is not supported - 0x1 (TRUE): SDR104 is supported (NOT ACTUALLY SUPPORTED)"]
    #[inline(always)]
    pub fn sdr104_support(&self) -> SDR104_SUPPORT_R {
        SDR104_SUPPORT_R::new(((self.bits >> 1) & 0x01) != 0)
    }
    #[doc = "Bit 2 - DDR50 Support (UHS-I only) Values: - 0x0 (FALSE): DDR50 is not supported - 0x1 (TRUE): DDR50 is supported"]
    #[inline(always)]
    pub fn ddr50_support(&self) -> DDR50_SUPPORT_R {
        DDR50_SUPPORT_R::new(((self.bits >> 2) & 0x01) != 0)
    }
    #[doc = "Bit 3 - UHS-II Support (UHS-II only) This bit indicates whether Host Controller supports UHS-II. Values: - 0x0 (FALSE): UHS-II is not supported - 0x1 (TRUE): UHS-II is supported"]
    #[inline(always)]
    pub fn uhs2_support(&self) -> UHS2_SUPPORT_R {
        UHS2_SUPPORT_R::new(((self.bits >> 3) & 0x01) != 0)
    }
    #[doc = "Bit 4 - Driver Type A Support (UHS-I only) This bit indicates support of Driver Type A for 1.8 Signaling. Values: - 0x0 (FALSE): Driver Type A is not supported - 0x1 (TRUE): Driver Type A is supported"]
    #[inline(always)]
    pub fn drv_typea(&self) -> DRV_TYPEA_R {
        DRV_TYPEA_R::new(((self.bits >> 4) & 0x01) != 0)
    }
    #[doc = "Bit 5 - Driver Type C Support (UHS-I only) This bit indicates support of Driver Type C for 1.8 Signaling. Values: - 0x0 (FALSE): Driver Type C is not supported - 0x1 (TRUE): Driver Type C is supported"]
    #[inline(always)]
    pub fn drv_typec(&self) -> DRV_TYPEC_R {
        DRV_TYPEC_R::new(((self.bits >> 5) & 0x01) != 0)
    }
    #[doc = "Bit 6 - Driver Type D Support (UHS-I only) This bit indicates support of Driver Type D for 1.8 Signaling. Values: - 0x0 (FALSE): Driver Type D is not supported - 0x1 (TRUE): Driver Type D is supported"]
    #[inline(always)]
    pub fn drv_typed(&self) -> DRV_TYPED_R {
        DRV_TYPED_R::new(((self.bits >> 6) & 0x01) != 0)
    }
    #[doc = "Bits 8:11 - N/A"]
    #[inline(always)]
    pub fn retune_cnt(&self) -> RETUNE_CNT_R {
        RETUNE_CNT_R::new(((self.bits >> 8) & 0x0f) as u8)
    }
    #[doc = "Bit 13 - Use Tuning for SDR50 (UHS-I only) Values: - 0x0 (ZERO): SDR50 does not require tuning - 0x1 (ONE): SDR50 requires tuning"]
    #[inline(always)]
    pub fn use_tuning_sdr50(&self) -> USE_TUNING_SDR50_R {
        USE_TUNING_SDR50_R::new(((self.bits >> 13) & 0x01) != 0)
    }
    #[doc = "Bits 14:15 - N/A"]
    #[inline(always)]
    pub fn re_tuning_modes(&self) -> RE_TUNING_MODES_R {
        RE_TUNING_MODES_R::new(((self.bits >> 14) & 0x03) as u8)
    }
    #[doc = "Bits 16:23 - Clock Multiplier These bits indicate the clock multiplier of the programmable clock generator. Setting these bits to 0 means that the Host Controller does not support a programmable clock generator. - 0x0: Clock Multiplier is not Supported - 0x1: Clock Multiplier M = 2 - 0x2: Clock Multiplier M = 3 - ......... - 0xFF: Clock Multiplier M = 256"]
    #[inline(always)]
    pub fn clk_mul(&self) -> CLK_MUL_R {
        CLK_MUL_R::new(((self.bits >> 16) & 0xff) as u8)
    }
    #[doc = "Bit 27 - ADMA3 Support This bit indicates whether the Host Controller is capable of using ADMA3. Values: - 0x0 (FALSE): ADMA3 not Supported - 0x1 (TRUE): ADMA3 Supported"]
    #[inline(always)]
    pub fn adma3_support(&self) -> ADMA3_SUPPORT_R {
        ADMA3_SUPPORT_R::new(((self.bits >> 27) & 0x01) != 0)
    }
    #[doc = "Bit 28 - 1.8V VDD2 Support This bit indicates support of VDD2 for the Host System. Values: - 0x0 (FALSE): 1.8V VDD2 is not Supported - 0x1 (TRUE): 1.8V VDD2 is Supported"]
    #[inline(always)]
    pub fn vdd2_18v_support(&self) -> VDD2_18V_SUPPORT_R {
        VDD2_18V_SUPPORT_R::new(((self.bits >> 28) & 0x01) != 0)
    }
}
#[doc = "Capabilities Register - 32 to 63\n\nThis register you can [`read`](crate::generic::Reg::read). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [capabilities2_r](index.html) module"]
pub struct CAPABILITIES2_R_SPEC;
impl crate::RegisterSpec for CAPABILITIES2_R_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [capabilities2_r::R](R) reader structure"]
impl crate::Readable for CAPABILITIES2_R_SPEC {
    type Reader = R;
}
#[doc = "`reset()` method sets CAPABILITIES2_R to value 0x0800_0077"]
impl crate::Resettable for CAPABILITIES2_R_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0x0800_0077
    }
}
