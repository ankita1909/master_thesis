#[doc = "Register `INTR_MASK` reader"]
pub struct R(crate::R<INTR_MASK_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<INTR_MASK_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<INTR_MASK_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<INTR_MASK_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `INTR_MASK` writer"]
pub struct W(crate::W<INTR_MASK_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<INTR_MASK_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl core::ops::DerefMut for W {
    #[inline(always)]
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}
impl From<crate::W<INTR_MASK_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<INTR_MASK_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `COMPLETION` reader - Mask for corresponding field in INTR register."]
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
#[doc = "Field `COMPLETION` writer - Mask for corresponding field in INTR register."]
pub struct COMPLETION_W<'a> {
    w: &'a mut W,
}
impl<'a> COMPLETION_W<'a> {
    #[doc = r"Sets the field bit"]
    #[inline(always)]
    pub fn set_bit(self) -> &'a mut W {
        self.bit(true)
    }
    #[doc = r"Clears the field bit"]
    #[inline(always)]
    pub fn clear_bit(self) -> &'a mut W {
        self.bit(false)
    }
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub fn bit(self, value: bool) -> &'a mut W {
        self.w.bits = (self.w.bits & !0x01) | (value as u32 & 0x01);
        self.w
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
#[doc = "Field `SRC_BUS_ERROR` writer - N/A"]
pub struct SRC_BUS_ERROR_W<'a> {
    w: &'a mut W,
}
impl<'a> SRC_BUS_ERROR_W<'a> {
    #[doc = r"Sets the field bit"]
    #[inline(always)]
    pub fn set_bit(self) -> &'a mut W {
        self.bit(true)
    }
    #[doc = r"Clears the field bit"]
    #[inline(always)]
    pub fn clear_bit(self) -> &'a mut W {
        self.bit(false)
    }
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub fn bit(self, value: bool) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x01 << 1)) | ((value as u32 & 0x01) << 1);
        self.w
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
#[doc = "Field `DST_BUS_ERROR` writer - N/A"]
pub struct DST_BUS_ERROR_W<'a> {
    w: &'a mut W,
}
impl<'a> DST_BUS_ERROR_W<'a> {
    #[doc = r"Sets the field bit"]
    #[inline(always)]
    pub fn set_bit(self) -> &'a mut W {
        self.bit(true)
    }
    #[doc = r"Clears the field bit"]
    #[inline(always)]
    pub fn clear_bit(self) -> &'a mut W {
        self.bit(false)
    }
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub fn bit(self, value: bool) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x01 << 2)) | ((value as u32 & 0x01) << 2);
        self.w
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
#[doc = "Field `SRC_MISAL` writer - N/A"]
pub struct SRC_MISAL_W<'a> {
    w: &'a mut W,
}
impl<'a> SRC_MISAL_W<'a> {
    #[doc = r"Sets the field bit"]
    #[inline(always)]
    pub fn set_bit(self) -> &'a mut W {
        self.bit(true)
    }
    #[doc = r"Clears the field bit"]
    #[inline(always)]
    pub fn clear_bit(self) -> &'a mut W {
        self.bit(false)
    }
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub fn bit(self, value: bool) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x01 << 3)) | ((value as u32 & 0x01) << 3);
        self.w
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
#[doc = "Field `DST_MISAL` writer - N/A"]
pub struct DST_MISAL_W<'a> {
    w: &'a mut W,
}
impl<'a> DST_MISAL_W<'a> {
    #[doc = r"Sets the field bit"]
    #[inline(always)]
    pub fn set_bit(self) -> &'a mut W {
        self.bit(true)
    }
    #[doc = r"Clears the field bit"]
    #[inline(always)]
    pub fn clear_bit(self) -> &'a mut W {
        self.bit(false)
    }
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub fn bit(self, value: bool) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x01 << 4)) | ((value as u32 & 0x01) << 4);
        self.w
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
#[doc = "Field `CURR_PTR_NULL` writer - N/A"]
pub struct CURR_PTR_NULL_W<'a> {
    w: &'a mut W,
}
impl<'a> CURR_PTR_NULL_W<'a> {
    #[doc = r"Sets the field bit"]
    #[inline(always)]
    pub fn set_bit(self) -> &'a mut W {
        self.bit(true)
    }
    #[doc = r"Clears the field bit"]
    #[inline(always)]
    pub fn clear_bit(self) -> &'a mut W {
        self.bit(false)
    }
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub fn bit(self, value: bool) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x01 << 5)) | ((value as u32 & 0x01) << 5);
        self.w
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
#[doc = "Field `ACTIVE_CH_DISABLED` writer - N/A"]
pub struct ACTIVE_CH_DISABLED_W<'a> {
    w: &'a mut W,
}
impl<'a> ACTIVE_CH_DISABLED_W<'a> {
    #[doc = r"Sets the field bit"]
    #[inline(always)]
    pub fn set_bit(self) -> &'a mut W {
        self.bit(true)
    }
    #[doc = r"Clears the field bit"]
    #[inline(always)]
    pub fn clear_bit(self) -> &'a mut W {
        self.bit(false)
    }
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub fn bit(self, value: bool) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x01 << 6)) | ((value as u32 & 0x01) << 6);
        self.w
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
#[doc = "Field `DESCR_BUS_ERROR` writer - N/A"]
pub struct DESCR_BUS_ERROR_W<'a> {
    w: &'a mut W,
}
impl<'a> DESCR_BUS_ERROR_W<'a> {
    #[doc = r"Sets the field bit"]
    #[inline(always)]
    pub fn set_bit(self) -> &'a mut W {
        self.bit(true)
    }
    #[doc = r"Clears the field bit"]
    #[inline(always)]
    pub fn clear_bit(self) -> &'a mut W {
        self.bit(false)
    }
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub fn bit(self, value: bool) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x01 << 7)) | ((value as u32 & 0x01) << 7);
        self.w
    }
}
impl R {
    #[doc = "Bit 0 - Mask for corresponding field in INTR register."]
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
impl W {
    #[doc = "Bit 0 - Mask for corresponding field in INTR register."]
    #[inline(always)]
    pub fn completion(&mut self) -> COMPLETION_W {
        COMPLETION_W { w: self }
    }
    #[doc = "Bit 1 - N/A"]
    #[inline(always)]
    pub fn src_bus_error(&mut self) -> SRC_BUS_ERROR_W {
        SRC_BUS_ERROR_W { w: self }
    }
    #[doc = "Bit 2 - N/A"]
    #[inline(always)]
    pub fn dst_bus_error(&mut self) -> DST_BUS_ERROR_W {
        DST_BUS_ERROR_W { w: self }
    }
    #[doc = "Bit 3 - N/A"]
    #[inline(always)]
    pub fn src_misal(&mut self) -> SRC_MISAL_W {
        SRC_MISAL_W { w: self }
    }
    #[doc = "Bit 4 - N/A"]
    #[inline(always)]
    pub fn dst_misal(&mut self) -> DST_MISAL_W {
        DST_MISAL_W { w: self }
    }
    #[doc = "Bit 5 - N/A"]
    #[inline(always)]
    pub fn curr_ptr_null(&mut self) -> CURR_PTR_NULL_W {
        CURR_PTR_NULL_W { w: self }
    }
    #[doc = "Bit 6 - N/A"]
    #[inline(always)]
    pub fn active_ch_disabled(&mut self) -> ACTIVE_CH_DISABLED_W {
        ACTIVE_CH_DISABLED_W { w: self }
    }
    #[doc = "Bit 7 - N/A"]
    #[inline(always)]
    pub fn descr_bus_error(&mut self) -> DESCR_BUS_ERROR_W {
        DESCR_BUS_ERROR_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Interrupt mask\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [intr_mask](index.html) module"]
pub struct INTR_MASK_SPEC;
impl crate::RegisterSpec for INTR_MASK_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [intr_mask::R](R) reader structure"]
impl crate::Readable for INTR_MASK_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [intr_mask::W](W) writer structure"]
impl crate::Writable for INTR_MASK_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets INTR_MASK to value 0"]
impl crate::Resettable for INTR_MASK_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
