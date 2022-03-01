#[doc = "Register `CQDQS` reader"]
pub struct R(crate::R<CQDQS_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CQDQS_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CQDQS_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CQDQS_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Field `DQS` reader - Device Queue Status Each of the 32 bits are bit mapped to the 32 tasks. - Bit-N(1): Device has marked task N as ready for execution - Bit-N(0): Task-N is not ready for execution. This task could be pending in device or not submitted. Host controller updates this register with response of the Device Queue Status command."]
pub struct DQS_R(crate::FieldReader<u32, u32>);
impl DQS_R {
    pub(crate) fn new(bits: u32) -> Self {
        DQS_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DQS_R {
    type Target = crate::FieldReader<u32, u32>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl R {
    #[doc = "Bits 0:31 - Device Queue Status Each of the 32 bits are bit mapped to the 32 tasks. - Bit-N(1): Device has marked task N as ready for execution - Bit-N(0): Task-N is not ready for execution. This task could be pending in device or not submitted. Host controller updates this register with response of the Device Queue Status command."]
    #[inline(always)]
    pub fn dqs(&self) -> DQS_R {
        DQS_R::new((self.bits & 0xffff_ffff) as u32)
    }
}
#[doc = "Device queue status register\n\nThis register you can [`read`](crate::generic::Reg::read). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [cqdqs](index.html) module"]
pub struct CQDQS_SPEC;
impl crate::RegisterSpec for CQDQS_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [cqdqs::R](R) reader structure"]
impl crate::Readable for CQDQS_SPEC {
    type Reader = R;
}
#[doc = "`reset()` method sets CQDQS to value 0"]
impl crate::Resettable for CQDQS_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
