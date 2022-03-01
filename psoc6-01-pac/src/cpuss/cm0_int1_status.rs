#[doc = "Register `CM0_INT1_STATUS` reader"]
pub struct R(crate::R<CM0_INT1_STATUS_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CM0_INT1_STATUS_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CM0_INT1_STATUS_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CM0_INT1_STATUS_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Field `SYSTEM_INT_IDX` reader - Lowest CM0+ activated system interrupt index for CPU interrupt 1. See description of CM0_INT0_STATUS."]
pub struct SYSTEM_INT_IDX_R(crate::FieldReader<u16, u16>);
impl SYSTEM_INT_IDX_R {
    pub(crate) fn new(bits: u16) -> Self {
        SYSTEM_INT_IDX_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SYSTEM_INT_IDX_R {
    type Target = crate::FieldReader<u16, u16>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SYSTEM_INT_VALID` reader - See description of CM0_INT0_STATUS."]
pub struct SYSTEM_INT_VALID_R(crate::FieldReader<bool, bool>);
impl SYSTEM_INT_VALID_R {
    pub(crate) fn new(bits: bool) -> Self {
        SYSTEM_INT_VALID_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SYSTEM_INT_VALID_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl R {
    #[doc = "Bits 0:9 - Lowest CM0+ activated system interrupt index for CPU interrupt 1. See description of CM0_INT0_STATUS."]
    #[inline(always)]
    pub fn system_int_idx(&self) -> SYSTEM_INT_IDX_R {
        SYSTEM_INT_IDX_R::new((self.bits & 0x03ff) as u16)
    }
    #[doc = "Bit 31 - See description of CM0_INT0_STATUS."]
    #[inline(always)]
    pub fn system_int_valid(&self) -> SYSTEM_INT_VALID_R {
        SYSTEM_INT_VALID_R::new(((self.bits >> 31) & 0x01) != 0)
    }
}
#[doc = "CM0+ interrupt 1 status\n\nThis register you can [`read`](crate::generic::Reg::read). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [cm0_int1_status](index.html) module"]
pub struct CM0_INT1_STATUS_SPEC;
impl crate::RegisterSpec for CM0_INT1_STATUS_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [cm0_int1_status::R](R) reader structure"]
impl crate::Readable for CM0_INT1_STATUS_SPEC {
    type Reader = R;
}
#[doc = "`reset()` method sets CM0_INT1_STATUS to value 0"]
impl crate::Resettable for CM0_INT1_STATUS_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
