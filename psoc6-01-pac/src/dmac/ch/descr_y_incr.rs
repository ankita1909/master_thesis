#[doc = "Register `DESCR_Y_INCR` reader"]
pub struct R(crate::R<DESCR_Y_INCR_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<DESCR_Y_INCR_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<DESCR_Y_INCR_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<DESCR_Y_INCR_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Field `SRC_Y` reader - N/A"]
pub struct SRC_Y_R(crate::FieldReader<u16, u16>);
impl SRC_Y_R {
    pub(crate) fn new(bits: u16) -> Self {
        SRC_Y_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SRC_Y_R {
    type Target = crate::FieldReader<u16, u16>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DST_Y` reader - N/A"]
pub struct DST_Y_R(crate::FieldReader<u16, u16>);
impl DST_Y_R {
    pub(crate) fn new(bits: u16) -> Self {
        DST_Y_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DST_Y_R {
    type Target = crate::FieldReader<u16, u16>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl R {
    #[doc = "Bits 0:15 - N/A"]
    #[inline(always)]
    pub fn src_y(&self) -> SRC_Y_R {
        SRC_Y_R::new((self.bits & 0xffff) as u16)
    }
    #[doc = "Bits 16:31 - N/A"]
    #[inline(always)]
    pub fn dst_y(&self) -> DST_Y_R {
        DST_Y_R::new(((self.bits >> 16) & 0xffff) as u16)
    }
}
#[doc = "Channel descriptor Y increment\n\nThis register you can [`read`](crate::generic::Reg::read). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [descr_y_incr](index.html) module"]
pub struct DESCR_Y_INCR_SPEC;
impl crate::RegisterSpec for DESCR_Y_INCR_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [descr_y_incr::R](R) reader structure"]
impl crate::Readable for DESCR_Y_INCR_SPEC {
    type Reader = R;
}
#[doc = "`reset()` method sets DESCR_Y_INCR to value 0"]
impl crate::Resettable for DESCR_Y_INCR_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
