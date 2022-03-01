#[doc = "Register `RESP45_R` reader"]
pub struct R(crate::R<RESP45_R_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<RESP45_R_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<RESP45_R_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<RESP45_R_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Field `RESP45` reader - Command Response These bits reflect 103-72 bits of the Response Field."]
pub struct RESP45_R(crate::FieldReader<u32, u32>);
impl RESP45_R {
    pub(crate) fn new(bits: u32) -> Self {
        RESP45_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RESP45_R {
    type Target = crate::FieldReader<u32, u32>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl R {
    #[doc = "Bits 0:31 - Command Response These bits reflect 103-72 bits of the Response Field."]
    #[inline(always)]
    pub fn resp45(&self) -> RESP45_R {
        RESP45_R::new((self.bits & 0xffff_ffff) as u32)
    }
}
#[doc = "Response Register 4/5\n\nThis register you can [`read`](crate::generic::Reg::read). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [resp45_r](index.html) module"]
pub struct RESP45_R_SPEC;
impl crate::RegisterSpec for RESP45_R_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [resp45_r::R](R) reader structure"]
impl crate::Readable for RESP45_R_SPEC {
    type Reader = R;
}
#[doc = "`reset()` method sets RESP45_R to value 0"]
impl crate::Resettable for RESP45_R_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
