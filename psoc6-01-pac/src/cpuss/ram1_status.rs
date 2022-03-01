#[doc = "Register `RAM1_STATUS` reader"]
pub struct R(crate::R<RAM1_STATUS_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<RAM1_STATUS_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<RAM1_STATUS_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<RAM1_STATUS_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Field `WB_EMPTY` reader - See RAM0_STATUS."]
pub struct WB_EMPTY_R(crate::FieldReader<bool, bool>);
impl WB_EMPTY_R {
    pub(crate) fn new(bits: bool) -> Self {
        WB_EMPTY_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for WB_EMPTY_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl R {
    #[doc = "Bit 0 - See RAM0_STATUS."]
    #[inline(always)]
    pub fn wb_empty(&self) -> WB_EMPTY_R {
        WB_EMPTY_R::new((self.bits & 0x01) != 0)
    }
}
#[doc = "RAM 1 status\n\nThis register you can [`read`](crate::generic::Reg::read). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [ram1_status](index.html) module"]
pub struct RAM1_STATUS_SPEC;
impl crate::RegisterSpec for RAM1_STATUS_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [ram1_status::R](R) reader structure"]
impl crate::Readable for RAM1_STATUS_SPEC {
    type Reader = R;
}
#[doc = "`reset()` method sets RAM1_STATUS to value 0x01"]
impl crate::Resettable for RAM1_STATUS_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0x01
    }
}
