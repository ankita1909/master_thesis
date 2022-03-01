#[doc = "Register `CQISGE` reader"]
pub struct R(crate::R<CQISGE_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CQISGE_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CQISGE_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CQISGE_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `CQISGE` writer"]
pub struct W(crate::W<CQISGE_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<CQISGE_SPEC>;
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
impl From<crate::W<CQISGE_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<CQISGE_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `HAC_SGE` reader - Halt complete interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.HAC interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.HAC interrupt signal generation is disabled"]
pub struct HAC_SGE_R(crate::FieldReader<bool, bool>);
impl HAC_SGE_R {
    pub(crate) fn new(bits: bool) -> Self {
        HAC_SGE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for HAC_SGE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `HAC_SGE` writer - Halt complete interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.HAC interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.HAC interrupt signal generation is disabled"]
pub struct HAC_SGE_W<'a> {
    w: &'a mut W,
}
impl<'a> HAC_SGE_W<'a> {
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
#[doc = "Field `TCC_SGE` reader - Task complete interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.TCC interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.TCC interrupt signal generation is disabled"]
pub struct TCC_SGE_R(crate::FieldReader<bool, bool>);
impl TCC_SGE_R {
    pub(crate) fn new(bits: bool) -> Self {
        TCC_SGE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for TCC_SGE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `TCC_SGE` writer - Task complete interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.TCC interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.TCC interrupt signal generation is disabled"]
pub struct TCC_SGE_W<'a> {
    w: &'a mut W,
}
impl<'a> TCC_SGE_W<'a> {
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
#[doc = "Field `RED_SGE` reader - Response error detected interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.RED interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.RED interrupt signal generation is disabled"]
pub struct RED_SGE_R(crate::FieldReader<bool, bool>);
impl RED_SGE_R {
    pub(crate) fn new(bits: bool) -> Self {
        RED_SGE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RED_SGE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `RED_SGE` writer - Response error detected interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.RED interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.RED interrupt signal generation is disabled"]
pub struct RED_SGE_W<'a> {
    w: &'a mut W,
}
impl<'a> RED_SGE_W<'a> {
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
#[doc = "Field `TCL_SGE` reader - Task cleared interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.TCL interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.TCL interrupt signal generation is disabled"]
pub struct TCL_SGE_R(crate::FieldReader<bool, bool>);
impl TCL_SGE_R {
    pub(crate) fn new(bits: bool) -> Self {
        TCL_SGE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for TCL_SGE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `TCL_SGE` writer - Task cleared interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.TCL interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.TCL interrupt signal generation is disabled"]
pub struct TCL_SGE_W<'a> {
    w: &'a mut W,
}
impl<'a> TCL_SGE_W<'a> {
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
#[doc = "Field `GCE_SGE` reader - General Crypto Error interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.GCE interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.GCE interrupt signal generation is disabled"]
pub struct GCE_SGE_R(crate::FieldReader<bool, bool>);
impl GCE_SGE_R {
    pub(crate) fn new(bits: bool) -> Self {
        GCE_SGE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for GCE_SGE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `GCE_SGE` writer - General Crypto Error interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.GCE interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.GCE interrupt signal generation is disabled"]
pub struct GCE_SGE_W<'a> {
    w: &'a mut W,
}
impl<'a> GCE_SGE_W<'a> {
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
#[doc = "Field `ICCE_SGE` reader - Invalid Crypto Configuration Error interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.ICCE interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.ICCE interrupt signal generation is disabled"]
pub struct ICCE_SGE_R(crate::FieldReader<bool, bool>);
impl ICCE_SGE_R {
    pub(crate) fn new(bits: bool) -> Self {
        ICCE_SGE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ICCE_SGE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ICCE_SGE` writer - Invalid Crypto Configuration Error interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.ICCE interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.ICCE interrupt signal generation is disabled"]
pub struct ICCE_SGE_W<'a> {
    w: &'a mut W,
}
impl<'a> ICCE_SGE_W<'a> {
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
    #[doc = "Bit 0 - Halt complete interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.HAC interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.HAC interrupt signal generation is disabled"]
    #[inline(always)]
    pub fn hac_sge(&self) -> HAC_SGE_R {
        HAC_SGE_R::new((self.bits & 0x01) != 0)
    }
    #[doc = "Bit 1 - Task complete interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.TCC interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.TCC interrupt signal generation is disabled"]
    #[inline(always)]
    pub fn tcc_sge(&self) -> TCC_SGE_R {
        TCC_SGE_R::new(((self.bits >> 1) & 0x01) != 0)
    }
    #[doc = "Bit 2 - Response error detected interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.RED interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.RED interrupt signal generation is disabled"]
    #[inline(always)]
    pub fn red_sge(&self) -> RED_SGE_R {
        RED_SGE_R::new(((self.bits >> 2) & 0x01) != 0)
    }
    #[doc = "Bit 3 - Task cleared interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.TCL interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.TCL interrupt signal generation is disabled"]
    #[inline(always)]
    pub fn tcl_sge(&self) -> TCL_SGE_R {
        TCL_SGE_R::new(((self.bits >> 3) & 0x01) != 0)
    }
    #[doc = "Bit 4 - General Crypto Error interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.GCE interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.GCE interrupt signal generation is disabled"]
    #[inline(always)]
    pub fn gce_sge(&self) -> GCE_SGE_R {
        GCE_SGE_R::new(((self.bits >> 4) & 0x01) != 0)
    }
    #[doc = "Bit 5 - Invalid Crypto Configuration Error interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.ICCE interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.ICCE interrupt signal generation is disabled"]
    #[inline(always)]
    pub fn icce_sge(&self) -> ICCE_SGE_R {
        ICCE_SGE_R::new(((self.bits >> 5) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bit 0 - Halt complete interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.HAC interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.HAC interrupt signal generation is disabled"]
    #[inline(always)]
    pub fn hac_sge(&mut self) -> HAC_SGE_W {
        HAC_SGE_W { w: self }
    }
    #[doc = "Bit 1 - Task complete interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.TCC interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.TCC interrupt signal generation is disabled"]
    #[inline(always)]
    pub fn tcc_sge(&mut self) -> TCC_SGE_W {
        TCC_SGE_W { w: self }
    }
    #[doc = "Bit 2 - Response error detected interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.RED interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.RED interrupt signal generation is disabled"]
    #[inline(always)]
    pub fn red_sge(&mut self) -> RED_SGE_W {
        RED_SGE_W { w: self }
    }
    #[doc = "Bit 3 - Task cleared interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.TCL interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.TCL interrupt signal generation is disabled"]
    #[inline(always)]
    pub fn tcl_sge(&mut self) -> TCL_SGE_W {
        TCL_SGE_W { w: self }
    }
    #[doc = "Bit 4 - General Crypto Error interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.GCE interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.GCE interrupt signal generation is disabled"]
    #[inline(always)]
    pub fn gce_sge(&mut self) -> GCE_SGE_W {
        GCE_SGE_W { w: self }
    }
    #[doc = "Bit 5 - Invalid Crypto Configuration Error interrupt signal enable Values: - 0x1 (INT_SIG_ENABLE): CQIS.ICCE interrupt signal generation is active - 0x0 (INT_SIG_DISABLE): CQIS.ICCE interrupt signal generation is disabled"]
    #[inline(always)]
    pub fn icce_sge(&mut self) -> ICCE_SGE_W {
        ICCE_SGE_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Command Queuing Interrupt signal enable register\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [cqisge](index.html) module"]
pub struct CQISGE_SPEC;
impl crate::RegisterSpec for CQISGE_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [cqisge::R](R) reader structure"]
impl crate::Readable for CQISGE_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [cqisge::W](W) writer structure"]
impl crate::Writable for CQISGE_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets CQISGE to value 0"]
impl crate::Resettable for CQISGE_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
