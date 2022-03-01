#[doc = "Register `ECC_CTL` reader"]
pub struct R(crate::R<ECC_CTL_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<ECC_CTL_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<ECC_CTL_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<ECC_CTL_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `ECC_CTL` writer"]
pub struct W(crate::W<ECC_CTL_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<ECC_CTL_SPEC>;
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
impl From<crate::W<ECC_CTL_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<ECC_CTL_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `WORD_ADDR` reader - Specifies the word address where the parity is injected. - On a 32-bit write access to this SRAM address and when ECC_INJ_EN bit is '1', the parity (PARITY) is injected."]
pub struct WORD_ADDR_R(crate::FieldReader<u16, u16>);
impl WORD_ADDR_R {
    pub(crate) fn new(bits: u16) -> Self {
        WORD_ADDR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for WORD_ADDR_R {
    type Target = crate::FieldReader<u16, u16>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `WORD_ADDR` writer - Specifies the word address where the parity is injected. - On a 32-bit write access to this SRAM address and when ECC_INJ_EN bit is '1', the parity (PARITY) is injected."]
pub struct WORD_ADDR_W<'a> {
    w: &'a mut W,
}
impl<'a> WORD_ADDR_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u16) -> &'a mut W {
        self.w.bits = (self.w.bits & !0x07ff) | (value as u32 & 0x07ff);
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
#[doc = "Field `ECC_INJ_EN` reader - Enable error injection for PERI protection structure SRAM. When '1', the parity (PARITY) is used when a write is done to the WORD_ADDR word address of the SRAM."]
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
#[doc = "Field `ECC_INJ_EN` writer - Enable error injection for PERI protection structure SRAM. When '1', the parity (PARITY) is used when a write is done to the WORD_ADDR word address of the SRAM."]
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
#[doc = "Field `PARITY` reader - ECC parity to use for ECC error injection at address WORD_ADDR."]
pub struct PARITY_R(crate::FieldReader<u8, u8>);
impl PARITY_R {
    pub(crate) fn new(bits: u8) -> Self {
        PARITY_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PARITY_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PARITY` writer - ECC parity to use for ECC error injection at address WORD_ADDR."]
pub struct PARITY_W<'a> {
    w: &'a mut W,
}
impl<'a> PARITY_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0xff << 24)) | ((value as u32 & 0xff) << 24);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:10 - Specifies the word address where the parity is injected. - On a 32-bit write access to this SRAM address and when ECC_INJ_EN bit is '1', the parity (PARITY) is injected."]
    #[inline(always)]
    pub fn word_addr(&self) -> WORD_ADDR_R {
        WORD_ADDR_R::new((self.bits & 0x07ff) as u16)
    }
    #[doc = "Bit 16 - Enable ECC checking: '0': Disabled. '1': Enabled."]
    #[inline(always)]
    pub fn ecc_en(&self) -> ECC_EN_R {
        ECC_EN_R::new(((self.bits >> 16) & 0x01) != 0)
    }
    #[doc = "Bit 18 - Enable error injection for PERI protection structure SRAM. When '1', the parity (PARITY) is used when a write is done to the WORD_ADDR word address of the SRAM."]
    #[inline(always)]
    pub fn ecc_inj_en(&self) -> ECC_INJ_EN_R {
        ECC_INJ_EN_R::new(((self.bits >> 18) & 0x01) != 0)
    }
    #[doc = "Bits 24:31 - ECC parity to use for ECC error injection at address WORD_ADDR."]
    #[inline(always)]
    pub fn parity(&self) -> PARITY_R {
        PARITY_R::new(((self.bits >> 24) & 0xff) as u8)
    }
}
impl W {
    #[doc = "Bits 0:10 - Specifies the word address where the parity is injected. - On a 32-bit write access to this SRAM address and when ECC_INJ_EN bit is '1', the parity (PARITY) is injected."]
    #[inline(always)]
    pub fn word_addr(&mut self) -> WORD_ADDR_W {
        WORD_ADDR_W { w: self }
    }
    #[doc = "Bit 16 - Enable ECC checking: '0': Disabled. '1': Enabled."]
    #[inline(always)]
    pub fn ecc_en(&mut self) -> ECC_EN_W {
        ECC_EN_W { w: self }
    }
    #[doc = "Bit 18 - Enable error injection for PERI protection structure SRAM. When '1', the parity (PARITY) is used when a write is done to the WORD_ADDR word address of the SRAM."]
    #[inline(always)]
    pub fn ecc_inj_en(&mut self) -> ECC_INJ_EN_W {
        ECC_INJ_EN_W { w: self }
    }
    #[doc = "Bits 24:31 - ECC parity to use for ECC error injection at address WORD_ADDR."]
    #[inline(always)]
    pub fn parity(&mut self) -> PARITY_W {
        PARITY_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "ECC control\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [ecc_ctl](index.html) module"]
pub struct ECC_CTL_SPEC;
impl crate::RegisterSpec for ECC_CTL_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [ecc_ctl::R](R) reader structure"]
impl crate::Readable for ECC_CTL_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [ecc_ctl::W](W) writer structure"]
impl crate::Writable for ECC_CTL_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets ECC_CTL to value 0x0001_0000"]
impl crate::Resettable for ECC_CTL_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0x0001_0000
    }
}
