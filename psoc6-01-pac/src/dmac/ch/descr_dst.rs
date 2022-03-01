#[doc = "Register `DESCR_DST` reader"]
pub struct R(crate::R<DESCR_DST_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<DESCR_DST_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<DESCR_DST_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<DESCR_DST_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Field `ADDR` reader - N/A"]
pub struct ADDR_R(crate::FieldReader<u32, u32>);
impl ADDR_R {
    pub(crate) fn new(bits: u32) -> Self {
        ADDR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ADDR_R {
    type Target = crate::FieldReader<u32, u32>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl R {
    #[doc = "Bits 0:31 - N/A"]
    #[inline(always)]
    pub fn addr(&self) -> ADDR_R {
        ADDR_R::new((self.bits & 0xffff_ffff) as u32)
    }
}
#[doc = "Channel descriptor destination\n\nThis register you can [`read`](crate::generic::Reg::read). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [descr_dst](index.html) module"]
pub struct DESCR_DST_SPEC;
impl crate::RegisterSpec for DESCR_DST_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [descr_dst::R](R) reader structure"]
impl crate::Readable for DESCR_DST_SPEC {
    type Reader = R;
}
#[doc = "`reset()` method sets DESCR_DST to value 0"]
impl crate::Resettable for DESCR_DST_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
