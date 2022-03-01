#[doc = "Register `CRC_CTL` reader"]
pub struct R(crate::R<CRC_CTL_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CRC_CTL_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CRC_CTL_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CRC_CTL_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `CRC_CTL` writer"]
pub struct W(crate::W<CRC_CTL_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<CRC_CTL_SPEC>;
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
impl From<crate::W<CRC_CTL_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<CRC_CTL_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `DATA_REVERSE` reader - Specifies the bit order in which a data Byte is processed (reversal is performed after XORing): '0': Most significant bit (bit 1) first. '1': Least significant bit (bit 0) first."]
pub struct DATA_REVERSE_R(crate::FieldReader<bool, bool>);
impl DATA_REVERSE_R {
    pub(crate) fn new(bits: bool) -> Self {
        DATA_REVERSE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DATA_REVERSE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DATA_REVERSE` writer - Specifies the bit order in which a data Byte is processed (reversal is performed after XORing): '0': Most significant bit (bit 1) first. '1': Least significant bit (bit 0) first."]
pub struct DATA_REVERSE_W<'a> {
    w: &'a mut W,
}
impl<'a> DATA_REVERSE_W<'a> {
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
        self.w.bits = (self.w.bits & !0x01) | (value as u32 & 0x01);
        self.w
    }
}
#[doc = "Field `REM_REVERSE` reader - Specifies whether the remainder is bit reversed (reversal is performed after XORing): '0': No. '1': Yes."]
pub struct REM_REVERSE_R(crate::FieldReader<bool, bool>);
impl REM_REVERSE_R {
    pub(crate) fn new(bits: bool) -> Self {
        REM_REVERSE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for REM_REVERSE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `REM_REVERSE` writer - Specifies whether the remainder is bit reversed (reversal is performed after XORing): '0': No. '1': Yes."]
pub struct REM_REVERSE_W<'a> {
    w: &'a mut W,
}
impl<'a> REM_REVERSE_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 8)) | ((value as u32 & 0x01) << 8);
        self.w
    }
}
impl R {
    #[doc = "Bit 0 - Specifies the bit order in which a data Byte is processed (reversal is performed after XORing): '0': Most significant bit (bit 1) first. '1': Least significant bit (bit 0) first."]
    #[inline(always)]
    pub fn data_reverse(&self) -> DATA_REVERSE_R {
        DATA_REVERSE_R::new((self.bits & 0x01) != 0)
    }
    #[doc = "Bit 8 - Specifies whether the remainder is bit reversed (reversal is performed after XORing): '0': No. '1': Yes."]
    #[inline(always)]
    pub fn rem_reverse(&self) -> REM_REVERSE_R {
        REM_REVERSE_R::new(((self.bits >> 8) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bit 0 - Specifies the bit order in which a data Byte is processed (reversal is performed after XORing): '0': Most significant bit (bit 1) first. '1': Least significant bit (bit 0) first."]
    #[inline(always)]
    pub fn data_reverse(&mut self) -> DATA_REVERSE_W {
        DATA_REVERSE_W { w: self }
    }
    #[doc = "Bit 8 - Specifies whether the remainder is bit reversed (reversal is performed after XORing): '0': No. '1': Yes."]
    #[inline(always)]
    pub fn rem_reverse(&mut self) -> REM_REVERSE_W {
        REM_REVERSE_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "CRC control\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [crc_ctl](index.html) module"]
pub struct CRC_CTL_SPEC;
impl crate::RegisterSpec for CRC_CTL_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [crc_ctl::R](R) reader structure"]
impl crate::Readable for CRC_CTL_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [crc_ctl::W](W) writer structure"]
impl crate::Writable for CRC_CTL_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets CRC_CTL to value 0"]
impl crate::Resettable for CRC_CTL_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
