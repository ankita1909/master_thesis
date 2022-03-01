#[doc = "Register `RESP01_R` reader"]
pub struct R(crate::R<RESP01_R_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<RESP01_R_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<RESP01_R_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<RESP01_R_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Field `RESP01` reader - Command Response These bits reflect 39-8 bits of SD/eMMC Response Field. Note: For Auto CMD, the 32-bit response (bits 39-8 of the Response Field) is updated in the RESP67_R register."]
pub struct RESP01_R(crate::FieldReader<u32, u32>);
impl RESP01_R {
    pub(crate) fn new(bits: u32) -> Self {
        RESP01_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RESP01_R {
    type Target = crate::FieldReader<u32, u32>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl R {
    #[doc = "Bits 0:31 - Command Response These bits reflect 39-8 bits of SD/eMMC Response Field. Note: For Auto CMD, the 32-bit response (bits 39-8 of the Response Field) is updated in the RESP67_R register."]
    #[inline(always)]
    pub fn resp01(&self) -> RESP01_R {
        RESP01_R::new((self.bits & 0xffff_ffff) as u32)
    }
}
#[doc = "Response Register 0/1\n\nThis register you can [`read`](crate::generic::Reg::read). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [resp01_r](index.html) module"]
pub struct RESP01_R_SPEC;
impl crate::RegisterSpec for RESP01_R_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [resp01_r::R](R) reader structure"]
impl crate::Readable for RESP01_R_SPEC {
    type Reader = R;
}
#[doc = "`reset()` method sets RESP01_R to value 0"]
impl crate::Resettable for RESP01_R_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
