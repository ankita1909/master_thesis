#[doc = "Register `FM_SRAM_ECC_CTL2` reader"]
pub struct R(crate::R<FM_SRAM_ECC_CTL2_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<FM_SRAM_ECC_CTL2_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<FM_SRAM_ECC_CTL2_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<FM_SRAM_ECC_CTL2_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Field `CORRECTED_DATA` reader - 32-bit corrected data output of the ECC syndrome logic."]
pub struct CORRECTED_DATA_R(crate::FieldReader<u32, u32>);
impl CORRECTED_DATA_R {
    pub(crate) fn new(bits: u32) -> Self {
        CORRECTED_DATA_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CORRECTED_DATA_R {
    type Target = crate::FieldReader<u32, u32>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl R {
    #[doc = "Bits 0:31 - 32-bit corrected data output of the ECC syndrome logic."]
    #[inline(always)]
    pub fn corrected_data(&self) -> CORRECTED_DATA_R {
        CORRECTED_DATA_R::new((self.bits & 0xffff_ffff) as u32)
    }
}
#[doc = "eCT Flash SRAM ECC control 2\n\nThis register you can [`read`](crate::generic::Reg::read). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [fm_sram_ecc_ctl2](index.html) module"]
pub struct FM_SRAM_ECC_CTL2_SPEC;
impl crate::RegisterSpec for FM_SRAM_ECC_CTL2_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [fm_sram_ecc_ctl2::R](R) reader structure"]
impl crate::Readable for FM_SRAM_ECC_CTL2_SPEC {
    type Reader = R;
}
#[doc = "`reset()` method sets FM_SRAM_ECC_CTL2 to value 0"]
impl crate::Resettable for FM_SRAM_ECC_CTL2_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
