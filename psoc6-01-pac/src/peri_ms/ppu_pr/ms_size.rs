#[doc = "Register `MS_SIZE` reader"]
pub struct R(crate::R<MS_SIZE_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<MS_SIZE_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<MS_SIZE_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<MS_SIZE_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Field `REGION_SIZE` reader - This field specifies the size of the master region: '5': 64 B region The master region includes the SL_ADDR, SL_SIZE, SL_ATT0, ..., SL_ATT3, MS_ADDR, MS_SIZE, MS_ATT0, ..., MS_ATT3 registers. Therefore, the access privileges for all these registers is determined by MS_ATT0, ..., MS_ATT3."]
pub struct REGION_SIZE_R(crate::FieldReader<u8, u8>);
impl REGION_SIZE_R {
    pub(crate) fn new(bits: u8) -> Self {
        REGION_SIZE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for REGION_SIZE_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `VALID` reader - Master region enable: '1': Enabled."]
pub struct VALID_R(crate::FieldReader<bool, bool>);
impl VALID_R {
    pub(crate) fn new(bits: bool) -> Self {
        VALID_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for VALID_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl R {
    #[doc = "Bits 24:28 - This field specifies the size of the master region: '5': 64 B region The master region includes the SL_ADDR, SL_SIZE, SL_ATT0, ..., SL_ATT3, MS_ADDR, MS_SIZE, MS_ATT0, ..., MS_ATT3 registers. Therefore, the access privileges for all these registers is determined by MS_ATT0, ..., MS_ATT3."]
    #[inline(always)]
    pub fn region_size(&self) -> REGION_SIZE_R {
        REGION_SIZE_R::new(((self.bits >> 24) & 0x1f) as u8)
    }
    #[doc = "Bit 31 - Master region enable: '1': Enabled."]
    #[inline(always)]
    pub fn valid(&self) -> VALID_R {
        VALID_R::new(((self.bits >> 31) & 0x01) != 0)
    }
}
#[doc = "Master region, size\n\nThis register you can [`read`](crate::generic::Reg::read). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [ms_size](index.html) module"]
pub struct MS_SIZE_SPEC;
impl crate::RegisterSpec for MS_SIZE_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [ms_size::R](R) reader structure"]
impl crate::Readable for MS_SIZE_SPEC {
    type Reader = R;
}
#[doc = "`reset()` method sets MS_SIZE to value 0x8500_0000"]
impl crate::Resettable for MS_SIZE_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0x8500_0000
    }
}
