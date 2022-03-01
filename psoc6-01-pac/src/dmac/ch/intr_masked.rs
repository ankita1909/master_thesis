#[doc = "Register `INTR_MASKED` reader"]
pub struct R(crate::R<INTR_MASKED_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<INTR_MASKED_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<INTR_MASKED_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<INTR_MASKED_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Field `COMPLETION` reader - Logical and of corresponding INTR and INTR_MASK fields."]
pub struct COMPLETION_R(crate::FieldReader<bool, bool>);
impl COMPLETION_R {
    pub(crate) fn new(bits: bool) -> Self {
        COMPLETION_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for COMPLETION_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SRC_BUS_ERROR` reader - N/A"]
pub struct SRC_BUS_ERROR_R(crate::FieldReader<bool, bool>);
impl SRC_BUS_ERROR_R {
    pub(crate) fn new(bits: bool) -> Self {
        SRC_BUS_ERROR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SRC_BUS_ERROR_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DST_BUS_ERROR` reader - N/A"]
pub struct DST_BUS_ERROR_R(crate::FieldReader<bool, bool>);
impl DST_BUS_ERROR_R {
    pub(crate) fn new(bits: bool) -> Self {
        DST_BUS_ERROR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DST_BUS_ERROR_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SRC_MISAL` reader - N/A"]
pub struct SRC_MISAL_R(crate::FieldReader<bool, bool>);
impl SRC_MISAL_R {
    pub(crate) fn new(bits: bool) -> Self {
        SRC_MISAL_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SRC_MISAL_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DST_MISAL` reader - N/A"]
pub struct DST_MISAL_R(crate::FieldReader<bool, bool>);
impl DST_MISAL_R {
    pub(crate) fn new(bits: bool) -> Self {
        DST_MISAL_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DST_MISAL_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CURR_PTR_NULL` reader - N/A"]
pub struct CURR_PTR_NULL_R(crate::FieldReader<bool, bool>);
impl CURR_PTR_NULL_R {
    pub(crate) fn new(bits: bool) -> Self {
        CURR_PTR_NULL_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CURR_PTR_NULL_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ACTIVE_CH_DISABLED` reader - N/A"]
pub struct ACTIVE_CH_DISABLED_R(crate::FieldReader<bool, bool>);
impl ACTIVE_CH_DISABLED_R {
    pub(crate) fn new(bits: bool) -> Self {
        ACTIVE_CH_DISABLED_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ACTIVE_CH_DISABLED_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DESCR_BUS_ERROR` reader - N/A"]
pub struct DESCR_BUS_ERROR_R(crate::FieldReader<bool, bool>);
impl DESCR_BUS_ERROR_R {
    pub(crate) fn new(bits: bool) -> Self {
        DESCR_BUS_ERROR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DESCR_BUS_ERROR_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl R {
    #[doc = "Bit 0 - Logical and of corresponding INTR and INTR_MASK fields."]
    #[inline(always)]
    pub fn completion(&self) -> COMPLETION_R {
        COMPLETION_R::new((self.bits & 0x01) != 0)
    }
    #[doc = "Bit 1 - N/A"]
    #[inline(always)]
    pub fn src_bus_error(&self) -> SRC_BUS_ERROR_R {
        SRC_BUS_ERROR_R::new(((self.bits >> 1) & 0x01) != 0)
    }
    #[doc = "Bit 2 - N/A"]
    #[inline(always)]
    pub fn dst_bus_error(&self) -> DST_BUS_ERROR_R {
        DST_BUS_ERROR_R::new(((self.bits >> 2) & 0x01) != 0)
    }
    #[doc = "Bit 3 - N/A"]
    #[inline(always)]
    pub fn src_misal(&self) -> SRC_MISAL_R {
        SRC_MISAL_R::new(((self.bits >> 3) & 0x01) != 0)
    }
    #[doc = "Bit 4 - N/A"]
    #[inline(always)]
    pub fn dst_misal(&self) -> DST_MISAL_R {
        DST_MISAL_R::new(((self.bits >> 4) & 0x01) != 0)
    }
    #[doc = "Bit 5 - N/A"]
    #[inline(always)]
    pub fn curr_ptr_null(&self) -> CURR_PTR_NULL_R {
        CURR_PTR_NULL_R::new(((self.bits >> 5) & 0x01) != 0)
    }
    #[doc = "Bit 6 - N/A"]
    #[inline(always)]
    pub fn active_ch_disabled(&self) -> ACTIVE_CH_DISABLED_R {
        ACTIVE_CH_DISABLED_R::new(((self.bits >> 6) & 0x01) != 0)
    }
    #[doc = "Bit 7 - N/A"]
    #[inline(always)]
    pub fn descr_bus_error(&self) -> DESCR_BUS_ERROR_R {
        DESCR_BUS_ERROR_R::new(((self.bits >> 7) & 0x01) != 0)
    }
}
#[doc = "Interrupt masked\n\nThis register you can [`read`](crate::generic::Reg::read). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [intr_masked](index.html) module"]
pub struct INTR_MASKED_SPEC;
impl crate::RegisterSpec for INTR_MASKED_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [intr_masked::R](R) reader structure"]
impl crate::Readable for INTR_MASKED_SPEC {
    type Reader = R;
}
#[doc = "`reset()` method sets INTR_MASKED to value 0"]
impl crate::Resettable for INTR_MASKED_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
