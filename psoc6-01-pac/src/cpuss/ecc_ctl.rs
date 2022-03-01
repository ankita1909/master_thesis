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
#[doc = "Field `WORD_ADDR` reader - Specifies the word address where an error will be injected. - On a write transfer to this SRAM address and when the corresponding RAM0/RAM1/RAM2_CTL0.ECC_INJ_EN bit is '1', the parity (PARITY) is injected. This field needs to be written with the offset address within the memory, divided by 4. For example, if the RAM1 start address is 0x08010000, and an error is to be injected to address 0x08010040, then this field needs to configured to 0x000010."]
pub struct WORD_ADDR_R(crate::FieldReader<u32, u32>);
impl WORD_ADDR_R {
    pub(crate) fn new(bits: u32) -> Self {
        WORD_ADDR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for WORD_ADDR_R {
    type Target = crate::FieldReader<u32, u32>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `WORD_ADDR` writer - Specifies the word address where an error will be injected. - On a write transfer to this SRAM address and when the corresponding RAM0/RAM1/RAM2_CTL0.ECC_INJ_EN bit is '1', the parity (PARITY) is injected. This field needs to be written with the offset address within the memory, divided by 4. For example, if the RAM1 start address is 0x08010000, and an error is to be injected to address 0x08010040, then this field needs to configured to 0x000010."]
pub struct WORD_ADDR_W<'a> {
    w: &'a mut W,
}
impl<'a> WORD_ADDR_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u32) -> &'a mut W {
        self.w.bits = (self.w.bits & !0x01ff_ffff) | (value as u32 & 0x01ff_ffff);
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
        self.w.bits = (self.w.bits & !(0x7f << 25)) | ((value as u32 & 0x7f) << 25);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:24 - Specifies the word address where an error will be injected. - On a write transfer to this SRAM address and when the corresponding RAM0/RAM1/RAM2_CTL0.ECC_INJ_EN bit is '1', the parity (PARITY) is injected. This field needs to be written with the offset address within the memory, divided by 4. For example, if the RAM1 start address is 0x08010000, and an error is to be injected to address 0x08010040, then this field needs to configured to 0x000010."]
    #[inline(always)]
    pub fn word_addr(&self) -> WORD_ADDR_R {
        WORD_ADDR_R::new((self.bits & 0x01ff_ffff) as u32)
    }
    #[doc = "Bits 25:31 - ECC parity to use for ECC error injection at address WORD_ADDR."]
    #[inline(always)]
    pub fn parity(&self) -> PARITY_R {
        PARITY_R::new(((self.bits >> 25) & 0x7f) as u8)
    }
}
impl W {
    #[doc = "Bits 0:24 - Specifies the word address where an error will be injected. - On a write transfer to this SRAM address and when the corresponding RAM0/RAM1/RAM2_CTL0.ECC_INJ_EN bit is '1', the parity (PARITY) is injected. This field needs to be written with the offset address within the memory, divided by 4. For example, if the RAM1 start address is 0x08010000, and an error is to be injected to address 0x08010040, then this field needs to configured to 0x000010."]
    #[inline(always)]
    pub fn word_addr(&mut self) -> WORD_ADDR_W {
        WORD_ADDR_W { w: self }
    }
    #[doc = "Bits 25:31 - ECC parity to use for ECC error injection at address WORD_ADDR."]
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
#[doc = "`reset()` method sets ECC_CTL to value 0"]
impl crate::Resettable for ECC_CTL_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
