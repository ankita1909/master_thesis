#[doc = "Register `FM_PL_WRDATA_ALL` reader"]
pub struct R(crate::R<FM_PL_WRDATA_ALL_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<FM_PL_WRDATA_ALL_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<FM_PL_WRDATA_ALL_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<FM_PL_WRDATA_ALL_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `FM_PL_WRDATA_ALL` writer"]
pub struct W(crate::W<FM_PL_WRDATA_ALL_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<FM_PL_WRDATA_ALL_SPEC>;
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
impl From<crate::W<FM_PL_WRDATA_ALL_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<FM_PL_WRDATA_ALL_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `DATA32` reader - Write all high Voltage page latches with the same 32-bit data in a single write cycle Read always returns 0."]
pub struct DATA32_R(crate::FieldReader<u32, u32>);
impl DATA32_R {
    pub(crate) fn new(bits: u32) -> Self {
        DATA32_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DATA32_R {
    type Target = crate::FieldReader<u32, u32>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DATA32` writer - Write all high Voltage page latches with the same 32-bit data in a single write cycle Read always returns 0."]
pub struct DATA32_W<'a> {
    w: &'a mut W,
}
impl<'a> DATA32_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u32) -> &'a mut W {
        self.w.bits = (self.w.bits & !0xffff_ffff) | (value as u32 & 0xffff_ffff);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:31 - Write all high Voltage page latches with the same 32-bit data in a single write cycle Read always returns 0."]
    #[inline(always)]
    pub fn data32(&self) -> DATA32_R {
        DATA32_R::new((self.bits & 0xffff_ffff) as u32)
    }
}
impl W {
    #[doc = "Bits 0:31 - Write all high Voltage page latches with the same 32-bit data in a single write cycle Read always returns 0."]
    #[inline(always)]
    pub fn data32(&mut self) -> DATA32_W {
        DATA32_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Flash macro write page latches all\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [fm_pl_wrdata_all](index.html) module"]
pub struct FM_PL_WRDATA_ALL_SPEC;
impl crate::RegisterSpec for FM_PL_WRDATA_ALL_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [fm_pl_wrdata_all::R](R) reader structure"]
impl crate::Readable for FM_PL_WRDATA_ALL_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [fm_pl_wrdata_all::W](W) writer structure"]
impl crate::Writable for FM_PL_WRDATA_ALL_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets FM_PL_WRDATA_ALL to value 0"]
impl crate::Resettable for FM_PL_WRDATA_ALL_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
