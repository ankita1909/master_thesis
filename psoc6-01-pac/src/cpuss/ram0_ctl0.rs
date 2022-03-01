#[doc = "Register `RAM0_CTL0` reader"]
pub struct R(crate::R<RAM0_CTL0_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<RAM0_CTL0_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<RAM0_CTL0_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<RAM0_CTL0_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `RAM0_CTL0` writer"]
pub struct W(crate::W<RAM0_CTL0_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<RAM0_CTL0_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl core::ops::DerefMut for W {
    #[inline(always)]
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}
impl From<crate::W<RAM0_CTL0_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<RAM0_CTL0_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `SLOW_WS` reader - Memory wait states for the slow clock domain ('clk_slow'). The number of wait states is expressed in 'clk_hf' clock domain cycles."]
pub struct SLOW_WS_R(crate::FieldReader<u8, u8>);
impl SLOW_WS_R {
    pub(crate) fn new(bits: u8) -> Self {
        SLOW_WS_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SLOW_WS_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SLOW_WS` writer - Memory wait states for the slow clock domain ('clk_slow'). The number of wait states is expressed in 'clk_hf' clock domain cycles."]
pub struct SLOW_WS_W<'a> {
    w: &'a mut W,
}
impl<'a> SLOW_WS_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !0x03) | (value as u32 & 0x03);
        self.w
    }
}
#[doc = "Field `FAST_WS` reader - Memory wait states for the fast clock domain ('clk_fast'). The number of wait states is expressed in 'clk_hf' clock domain cycles."]
pub struct FAST_WS_R(crate::FieldReader<u8, u8>);
impl FAST_WS_R {
    pub(crate) fn new(bits: u8) -> Self {
        FAST_WS_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for FAST_WS_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `FAST_WS` writer - Memory wait states for the fast clock domain ('clk_fast'). The number of wait states is expressed in 'clk_hf' clock domain cycles."]
pub struct FAST_WS_W<'a> {
    w: &'a mut W,
}
impl<'a> FAST_WS_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x03 << 8)) | ((value as u32 & 0x03) << 8);
        self.w
    }
}
#[doc = "Field `ECC_EN` reader - Enable ECC checking: '0': Disabled. '1': Enabled."]
pub struct ECC_EN_R(crate::FieldReader<bool, bool>);
impl ECC_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        ECC_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ECC_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ECC_EN` writer - Enable ECC checking: '0': Disabled. '1': Enabled."]
pub struct ECC_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> ECC_EN_W<'a> {
    #[doc = r"Sets the field bit"]
    #[inline(always)]
    pub fn set_bit(self) -> &'a mut W {
        self.bit(true)
    }
    #[doc = r"Clears the field bit"]
    #[inline(always)]
    pub fn clear_bit(self) -> &'a mut W {
        self.bit(false)
    }
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub fn bit(self, value: bool) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x01 << 16)) | ((value as u32 & 0x01) << 16);
        self.w
    }
}
#[doc = "Field `ECC_AUTO_CORRECT` reader - HW ECC autocorrect functionality: '0': Disabled. '1': Enabled. HW automatically writes back SRAM with corrected data when a recoverable ECC error is detected."]
pub struct ECC_AUTO_CORRECT_R(crate::FieldReader<bool, bool>);
impl ECC_AUTO_CORRECT_R {
    pub(crate) fn new(bits: bool) -> Self {
        ECC_AUTO_CORRECT_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ECC_AUTO_CORRECT_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ECC_AUTO_CORRECT` writer - HW ECC autocorrect functionality: '0': Disabled. '1': Enabled. HW automatically writes back SRAM with corrected data when a recoverable ECC error is detected."]
pub struct ECC_AUTO_CORRECT_W<'a> {
    w: &'a mut W,
}
impl<'a> ECC_AUTO_CORRECT_W<'a> {
    #[doc = r"Sets the field bit"]
    #[inline(always)]
    pub fn set_bit(self) -> &'a mut W {
        self.bit(true)
    }
    #[doc = r"Clears the field bit"]
    #[inline(always)]
    pub fn clear_bit(self) -> &'a mut W {
        self.bit(false)
    }
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub fn bit(self, value: bool) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x01 << 17)) | ((value as u32 & 0x01) << 17);
        self.w
    }
}
#[doc = "Field `ECC_INJ_EN` reader - Enable error injection for system SRAM 0. When '1', the parity (ECC_CTL.PARITY) is used when a full 32-bit write is done to the ECC_CTL.WORD_ADDR word address of system SRAM 0."]
pub struct ECC_INJ_EN_R(crate::FieldReader<bool, bool>);
impl ECC_INJ_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        ECC_INJ_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ECC_INJ_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ECC_INJ_EN` writer - Enable error injection for system SRAM 0. When '1', the parity (ECC_CTL.PARITY) is used when a full 32-bit write is done to the ECC_CTL.WORD_ADDR word address of system SRAM 0."]
pub struct ECC_INJ_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> ECC_INJ_EN_W<'a> {
    #[doc = r"Sets the field bit"]
    #[inline(always)]
    pub fn set_bit(self) -> &'a mut W {
        self.bit(true)
    }
    #[doc = r"Clears the field bit"]
    #[inline(always)]
    pub fn clear_bit(self) -> &'a mut W {
        self.bit(false)
    }
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub fn bit(self, value: bool) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x01 << 18)) | ((value as u32 & 0x01) << 18);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:1 - Memory wait states for the slow clock domain ('clk_slow'). The number of wait states is expressed in 'clk_hf' clock domain cycles."]
    #[inline(always)]
    pub fn slow_ws(&self) -> SLOW_WS_R {
        SLOW_WS_R::new((self.bits & 0x03) as u8)
    }
    #[doc = "Bits 8:9 - Memory wait states for the fast clock domain ('clk_fast'). The number of wait states is expressed in 'clk_hf' clock domain cycles."]
    #[inline(always)]
    pub fn fast_ws(&self) -> FAST_WS_R {
        FAST_WS_R::new(((self.bits >> 8) & 0x03) as u8)
    }
    #[doc = "Bit 16 - Enable ECC checking: '0': Disabled. '1': Enabled."]
    #[inline(always)]
    pub fn ecc_en(&self) -> ECC_EN_R {
        ECC_EN_R::new(((self.bits >> 16) & 0x01) != 0)
    }
    #[doc = "Bit 17 - HW ECC autocorrect functionality: '0': Disabled. '1': Enabled. HW automatically writes back SRAM with corrected data when a recoverable ECC error is detected."]
    #[inline(always)]
    pub fn ecc_auto_correct(&self) -> ECC_AUTO_CORRECT_R {
        ECC_AUTO_CORRECT_R::new(((self.bits >> 17) & 0x01) != 0)
    }
    #[doc = "Bit 18 - Enable error injection for system SRAM 0. When '1', the parity (ECC_CTL.PARITY) is used when a full 32-bit write is done to the ECC_CTL.WORD_ADDR word address of system SRAM 0."]
    #[inline(always)]
    pub fn ecc_inj_en(&self) -> ECC_INJ_EN_R {
        ECC_INJ_EN_R::new(((self.bits >> 18) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bits 0:1 - Memory wait states for the slow clock domain ('clk_slow'). The number of wait states is expressed in 'clk_hf' clock domain cycles."]
    #[inline(always)]
    pub fn slow_ws(&mut self) -> SLOW_WS_W {
        SLOW_WS_W { w: self }
    }
    #[doc = "Bits 8:9 - Memory wait states for the fast clock domain ('clk_fast'). The number of wait states is expressed in 'clk_hf' clock domain cycles."]
    #[inline(always)]
    pub fn fast_ws(&mut self) -> FAST_WS_W {
        FAST_WS_W { w: self }
    }
    #[doc = "Bit 16 - Enable ECC checking: '0': Disabled. '1': Enabled."]
    #[inline(always)]
    pub fn ecc_en(&mut self) -> ECC_EN_W {
        ECC_EN_W { w: self }
    }
    #[doc = "Bit 17 - HW ECC autocorrect functionality: '0': Disabled. '1': Enabled. HW automatically writes back SRAM with corrected data when a recoverable ECC error is detected."]
    #[inline(always)]
    pub fn ecc_auto_correct(&mut self) -> ECC_AUTO_CORRECT_W {
        ECC_AUTO_CORRECT_W { w: self }
    }
    #[doc = "Bit 18 - Enable error injection for system SRAM 0. When '1', the parity (ECC_CTL.PARITY) is used when a full 32-bit write is done to the ECC_CTL.WORD_ADDR word address of system SRAM 0."]
    #[inline(always)]
    pub fn ecc_inj_en(&mut self) -> ECC_INJ_EN_W {
        ECC_INJ_EN_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "RAM 0 control\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [ram0_ctl0](index.html) module"]
pub struct RAM0_CTL0_SPEC;
impl crate::RegisterSpec for RAM0_CTL0_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [ram0_ctl0::R](R) reader structure"]
impl crate::Readable for RAM0_CTL0_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [ram0_ctl0::W](W) writer structure"]
impl crate::Writable for RAM0_CTL0_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets RAM0_CTL0 to value 0x0003_0001"]
impl crate::Resettable for RAM0_CTL0_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0x0003_0001
    }
}
