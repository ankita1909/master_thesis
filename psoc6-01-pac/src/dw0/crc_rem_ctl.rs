#[doc = "Register `CRC_REM_CTL` reader"]
pub struct R(crate::R<CRC_REM_CTL_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CRC_REM_CTL_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CRC_REM_CTL_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CRC_REM_CTL_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `CRC_REM_CTL` writer"]
pub struct W(crate::W<CRC_REM_CTL_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<CRC_REM_CTL_SPEC>;
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
impl From<crate::W<CRC_REM_CTL_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<CRC_REM_CTL_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `REM_XOR` reader - Specifies a mask with which the CRC_LFSR_CTL.LFSR32 register is XOR'd to produce a remainder. The XOR is performed before remainder reversal."]
pub struct REM_XOR_R(crate::FieldReader<u32, u32>);
impl REM_XOR_R {
    pub(crate) fn new(bits: u32) -> Self {
        REM_XOR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for REM_XOR_R {
    type Target = crate::FieldReader<u32, u32>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `REM_XOR` writer - Specifies a mask with which the CRC_LFSR_CTL.LFSR32 register is XOR'd to produce a remainder. The XOR is performed before remainder reversal."]
pub struct REM_XOR_W<'a> {
    w: &'a mut W,
}
impl<'a> REM_XOR_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u32) -> &'a mut W {
        self.w.bits = (self.w.bits & !0xffff_ffff) | (value as u32 & 0xffff_ffff);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:31 - Specifies a mask with which the CRC_LFSR_CTL.LFSR32 register is XOR'd to produce a remainder. The XOR is performed before remainder reversal."]
    #[inline(always)]
    pub fn rem_xor(&self) -> REM_XOR_R {
        REM_XOR_R::new((self.bits & 0xffff_ffff) as u32)
    }
}
impl W {
    #[doc = "Bits 0:31 - Specifies a mask with which the CRC_LFSR_CTL.LFSR32 register is XOR'd to produce a remainder. The XOR is performed before remainder reversal."]
    #[inline(always)]
    pub fn rem_xor(&mut self) -> REM_XOR_W {
        REM_XOR_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "CRC remainder control\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [crc_rem_ctl](index.html) module"]
pub struct CRC_REM_CTL_SPEC;
impl crate::RegisterSpec for CRC_REM_CTL_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [crc_rem_ctl::R](R) reader structure"]
impl crate::Readable for CRC_REM_CTL_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [crc_rem_ctl::W](W) writer structure"]
impl crate::Writable for CRC_REM_CTL_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets CRC_REM_CTL to value 0"]
impl crate::Resettable for CRC_REM_CTL_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
