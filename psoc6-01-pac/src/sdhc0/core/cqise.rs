#[doc = "Register `CQISE` reader"]
pub struct R(crate::R<CQISE_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CQISE_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CQISE_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CQISE_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `CQISE` writer"]
pub struct W(crate::W<CQISE_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<CQISE_SPEC>;
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
impl From<crate::W<CQISE_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<CQISE_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `HAC_STE` reader - Halt complete interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.HAC is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.HAC is disabled"]
pub struct HAC_STE_R(crate::FieldReader<bool, bool>);
impl HAC_STE_R {
    pub(crate) fn new(bits: bool) -> Self {
        HAC_STE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for HAC_STE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `HAC_STE` writer - Halt complete interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.HAC is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.HAC is disabled"]
pub struct HAC_STE_W<'a> {
    w: &'a mut W,
}
impl<'a> HAC_STE_W<'a> {
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
#[doc = "Field `TCC_STE` reader - Task complete interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.TCC is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.TCC is disabled"]
pub struct TCC_STE_R(crate::FieldReader<bool, bool>);
impl TCC_STE_R {
    pub(crate) fn new(bits: bool) -> Self {
        TCC_STE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for TCC_STE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `TCC_STE` writer - Task complete interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.TCC is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.TCC is disabled"]
pub struct TCC_STE_W<'a> {
    w: &'a mut W,
}
impl<'a> TCC_STE_W<'a> {
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
#[doc = "Field `RED_STE` reader - Response error detected interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.RED is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.RED is disabled"]
pub struct RED_STE_R(crate::FieldReader<bool, bool>);
impl RED_STE_R {
    pub(crate) fn new(bits: bool) -> Self {
        RED_STE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RED_STE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `RED_STE` writer - Response error detected interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.RED is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.RED is disabled"]
pub struct RED_STE_W<'a> {
    w: &'a mut W,
}
impl<'a> RED_STE_W<'a> {
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
#[doc = "Field `TCL_STE` reader - Task cleared interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.TCL is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.TCL is disabled"]
pub struct TCL_STE_R(crate::FieldReader<bool, bool>);
impl TCL_STE_R {
    pub(crate) fn new(bits: bool) -> Self {
        TCL_STE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for TCL_STE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `TCL_STE` writer - Task cleared interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.TCL is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.TCL is disabled"]
pub struct TCL_STE_W<'a> {
    w: &'a mut W,
}
impl<'a> TCL_STE_W<'a> {
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
#[doc = "Field `GCE_STE` reader - General Crypto Error interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.GCE is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.GCE is disabled"]
pub struct GCE_STE_R(crate::FieldReader<bool, bool>);
impl GCE_STE_R {
    pub(crate) fn new(bits: bool) -> Self {
        GCE_STE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for GCE_STE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `GCE_STE` writer - General Crypto Error interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.GCE is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.GCE is disabled"]
pub struct GCE_STE_W<'a> {
    w: &'a mut W,
}
impl<'a> GCE_STE_W<'a> {
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
#[doc = "Field `ICCE_STE` reader - Invalid Crypto Configuration Error interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.ICCE is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.ICCE is disabled"]
pub struct ICCE_STE_R(crate::FieldReader<bool, bool>);
impl ICCE_STE_R {
    pub(crate) fn new(bits: bool) -> Self {
        ICCE_STE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ICCE_STE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ICCE_STE` writer - Invalid Crypto Configuration Error interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.ICCE is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.ICCE is disabled"]
pub struct ICCE_STE_W<'a> {
    w: &'a mut W,
}
impl<'a> ICCE_STE_W<'a> {
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
impl R {
    #[doc = "Bit 0 - Halt complete interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.HAC is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.HAC is disabled"]
    #[inline(always)]
    pub fn hac_ste(&self) -> HAC_STE_R {
        HAC_STE_R::new((self.bits & 0x01) != 0)
    }
    #[doc = "Bit 1 - Task complete interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.TCC is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.TCC is disabled"]
    #[inline(always)]
    pub fn tcc_ste(&self) -> TCC_STE_R {
        TCC_STE_R::new(((self.bits >> 1) & 0x01) != 0)
    }
    #[doc = "Bit 2 - Response error detected interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.RED is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.RED is disabled"]
    #[inline(always)]
    pub fn red_ste(&self) -> RED_STE_R {
        RED_STE_R::new(((self.bits >> 2) & 0x01) != 0)
    }
    #[doc = "Bit 3 - Task cleared interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.TCL is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.TCL is disabled"]
    #[inline(always)]
    pub fn tcl_ste(&self) -> TCL_STE_R {
        TCL_STE_R::new(((self.bits >> 3) & 0x01) != 0)
    }
    #[doc = "Bit 4 - General Crypto Error interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.GCE is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.GCE is disabled"]
    #[inline(always)]
    pub fn gce_ste(&self) -> GCE_STE_R {
        GCE_STE_R::new(((self.bits >> 4) & 0x01) != 0)
    }
    #[doc = "Bit 5 - Invalid Crypto Configuration Error interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.ICCE is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.ICCE is disabled"]
    #[inline(always)]
    pub fn icce_ste(&self) -> ICCE_STE_R {
        ICCE_STE_R::new(((self.bits >> 5) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bit 0 - Halt complete interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.HAC is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.HAC is disabled"]
    #[inline(always)]
    pub fn hac_ste(&mut self) -> HAC_STE_W {
        HAC_STE_W { w: self }
    }
    #[doc = "Bit 1 - Task complete interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.TCC is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.TCC is disabled"]
    #[inline(always)]
    pub fn tcc_ste(&mut self) -> TCC_STE_W {
        TCC_STE_W { w: self }
    }
    #[doc = "Bit 2 - Response error detected interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.RED is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.RED is disabled"]
    #[inline(always)]
    pub fn red_ste(&mut self) -> RED_STE_W {
        RED_STE_W { w: self }
    }
    #[doc = "Bit 3 - Task cleared interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.TCL is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.TCL is disabled"]
    #[inline(always)]
    pub fn tcl_ste(&mut self) -> TCL_STE_W {
        TCL_STE_W { w: self }
    }
    #[doc = "Bit 4 - General Crypto Error interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.GCE is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.GCE is disabled"]
    #[inline(always)]
    pub fn gce_ste(&mut self) -> GCE_STE_W {
        GCE_STE_W { w: self }
    }
    #[doc = "Bit 5 - Invalid Crypto Configuration Error interrupt status enable Values: - 0x1 (INT_STS_ENABLE): CQIS.ICCE is set when its interrupt condition is active - 0x0 (INT_STS_DISABLE): CQIS.ICCE is disabled"]
    #[inline(always)]
    pub fn icce_ste(&mut self) -> ICCE_STE_W {
        ICCE_STE_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Command Queuing Interrupt Status Enable register\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [cqise](index.html) module"]
pub struct CQISE_SPEC;
impl crate::RegisterSpec for CQISE_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [cqise::R](R) reader structure"]
impl crate::Readable for CQISE_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [cqise::W](W) writer structure"]
impl crate::Writable for CQISE_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets CQISE to value 0"]
impl crate::Resettable for CQISE_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
