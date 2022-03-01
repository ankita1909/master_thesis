#[doc = "Register `CQIS` reader"]
pub struct R(crate::R<CQIS_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CQIS_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CQIS_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CQIS_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `CQIS` writer"]
pub struct W(crate::W<CQIS_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<CQIS_SPEC>;
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
impl From<crate::W<CQIS_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<CQIS_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `HAC` reader - Halt complete interrupt This status bit is asserted (only if CQISE.HAC_STE=1) when halt bit in the CQCTL register transitions from 0 to 1 indicating that the host controller has completed its current ongoing task and has entered halt state. A value of 1 clears this status bit. Values: - 0x1 (SET): HAC Interrupt is set - 0x0 (NOTSET): HAC Interrupt is not set"]
pub struct HAC_R(crate::FieldReader<bool, bool>);
impl HAC_R {
    pub(crate) fn new(bits: bool) -> Self {
        HAC_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for HAC_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `HAC` writer - Halt complete interrupt This status bit is asserted (only if CQISE.HAC_STE=1) when halt bit in the CQCTL register transitions from 0 to 1 indicating that the host controller has completed its current ongoing task and has entered halt state. A value of 1 clears this status bit. Values: - 0x1 (SET): HAC Interrupt is set - 0x0 (NOTSET): HAC Interrupt is not set"]
pub struct HAC_W<'a> {
    w: &'a mut W,
}
impl<'a> HAC_W<'a> {
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
#[doc = "Field `TCC` reader - Task complete interrupt This status bit is asserted (if CQISE.TCC_STE=1) when at least one of the following conditions are met: - A task is completed and the INT bit is set in its Task Descriptor - Interrupt caused by Interrupt Coalescing logic due to timeout - Interrupt Coalescing logic reached the configured threshold A value of 1 clears this status bit Values: - 0x1 (SET): TCC Interrupt is set - 0x0 (NOTSET): TCC Interrupt is not set"]
pub struct TCC_R(crate::FieldReader<bool, bool>);
impl TCC_R {
    pub(crate) fn new(bits: bool) -> Self {
        TCC_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for TCC_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `TCC` writer - Task complete interrupt This status bit is asserted (if CQISE.TCC_STE=1) when at least one of the following conditions are met: - A task is completed and the INT bit is set in its Task Descriptor - Interrupt caused by Interrupt Coalescing logic due to timeout - Interrupt Coalescing logic reached the configured threshold A value of 1 clears this status bit Values: - 0x1 (SET): TCC Interrupt is set - 0x0 (NOTSET): TCC Interrupt is not set"]
pub struct TCC_W<'a> {
    w: &'a mut W,
}
impl<'a> TCC_W<'a> {
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
#[doc = "Field `RED` reader - Response error detected interrupt This status bit is asserted (if CQISE.RED_STE=1) when a response is received with an error bit set in the device status field. Configure the CQRMEM register to identify device status bit fields that may trigger an interrupt and that are masked. A value of 1 clears this status bit. Values: - 0x1 (SET): RED Interrupt is set - 0x0 (NOTSET): RED Interrupt is not set"]
pub struct RED_R(crate::FieldReader<bool, bool>);
impl RED_R {
    pub(crate) fn new(bits: bool) -> Self {
        RED_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RED_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `RED` writer - Response error detected interrupt This status bit is asserted (if CQISE.RED_STE=1) when a response is received with an error bit set in the device status field. Configure the CQRMEM register to identify device status bit fields that may trigger an interrupt and that are masked. A value of 1 clears this status bit. Values: - 0x1 (SET): RED Interrupt is set - 0x0 (NOTSET): RED Interrupt is not set"]
pub struct RED_W<'a> {
    w: &'a mut W,
}
impl<'a> RED_W<'a> {
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
#[doc = "Field `TCL` reader - Task cleared interrupt This status bit is asserted (if CQISE.TCL_STE=1) when a task clear operation is completed by CQE. The completed task clear operation is either an individual task clear (by writing CQTCLR) or clearing of all tasks (by writing CQCTL). A value of 1 clears this status bit. Values: - 0x1 (SET): TCL Interrupt is set - 0x0 (NOTSET): TCL Interrupt is not set"]
pub struct TCL_R(crate::FieldReader<bool, bool>);
impl TCL_R {
    pub(crate) fn new(bits: bool) -> Self {
        TCL_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for TCL_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `TCL` writer - Task cleared interrupt This status bit is asserted (if CQISE.TCL_STE=1) when a task clear operation is completed by CQE. The completed task clear operation is either an individual task clear (by writing CQTCLR) or clearing of all tasks (by writing CQCTL). A value of 1 clears this status bit. Values: - 0x1 (SET): TCL Interrupt is set - 0x0 (NOTSET): TCL Interrupt is not set"]
pub struct TCL_W<'a> {
    w: &'a mut W,
}
impl<'a> TCL_W<'a> {
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
#[doc = "Field `GCE` reader - N/A"]
pub struct GCE_R(crate::FieldReader<bool, bool>);
impl GCE_R {
    pub(crate) fn new(bits: bool) -> Self {
        GCE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for GCE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `GCE` writer - N/A"]
pub struct GCE_W<'a> {
    w: &'a mut W,
}
impl<'a> GCE_W<'a> {
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
#[doc = "Field `ICCE` reader - N/A"]
pub struct ICCE_R(crate::FieldReader<bool, bool>);
impl ICCE_R {
    pub(crate) fn new(bits: bool) -> Self {
        ICCE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ICCE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ICCE` writer - N/A"]
pub struct ICCE_W<'a> {
    w: &'a mut W,
}
impl<'a> ICCE_W<'a> {
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
    #[doc = "Bit 0 - Halt complete interrupt This status bit is asserted (only if CQISE.HAC_STE=1) when halt bit in the CQCTL register transitions from 0 to 1 indicating that the host controller has completed its current ongoing task and has entered halt state. A value of 1 clears this status bit. Values: - 0x1 (SET): HAC Interrupt is set - 0x0 (NOTSET): HAC Interrupt is not set"]
    #[inline(always)]
    pub fn hac(&self) -> HAC_R {
        HAC_R::new((self.bits & 0x01) != 0)
    }
    #[doc = "Bit 1 - Task complete interrupt This status bit is asserted (if CQISE.TCC_STE=1) when at least one of the following conditions are met: - A task is completed and the INT bit is set in its Task Descriptor - Interrupt caused by Interrupt Coalescing logic due to timeout - Interrupt Coalescing logic reached the configured threshold A value of 1 clears this status bit Values: - 0x1 (SET): TCC Interrupt is set - 0x0 (NOTSET): TCC Interrupt is not set"]
    #[inline(always)]
    pub fn tcc(&self) -> TCC_R {
        TCC_R::new(((self.bits >> 1) & 0x01) != 0)
    }
    #[doc = "Bit 2 - Response error detected interrupt This status bit is asserted (if CQISE.RED_STE=1) when a response is received with an error bit set in the device status field. Configure the CQRMEM register to identify device status bit fields that may trigger an interrupt and that are masked. A value of 1 clears this status bit. Values: - 0x1 (SET): RED Interrupt is set - 0x0 (NOTSET): RED Interrupt is not set"]
    #[inline(always)]
    pub fn red(&self) -> RED_R {
        RED_R::new(((self.bits >> 2) & 0x01) != 0)
    }
    #[doc = "Bit 3 - Task cleared interrupt This status bit is asserted (if CQISE.TCL_STE=1) when a task clear operation is completed by CQE. The completed task clear operation is either an individual task clear (by writing CQTCLR) or clearing of all tasks (by writing CQCTL). A value of 1 clears this status bit. Values: - 0x1 (SET): TCL Interrupt is set - 0x0 (NOTSET): TCL Interrupt is not set"]
    #[inline(always)]
    pub fn tcl(&self) -> TCL_R {
        TCL_R::new(((self.bits >> 3) & 0x01) != 0)
    }
    #[doc = "Bit 4 - N/A"]
    #[inline(always)]
    pub fn gce(&self) -> GCE_R {
        GCE_R::new(((self.bits >> 4) & 0x01) != 0)
    }
    #[doc = "Bit 5 - N/A"]
    #[inline(always)]
    pub fn icce(&self) -> ICCE_R {
        ICCE_R::new(((self.bits >> 5) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bit 0 - Halt complete interrupt This status bit is asserted (only if CQISE.HAC_STE=1) when halt bit in the CQCTL register transitions from 0 to 1 indicating that the host controller has completed its current ongoing task and has entered halt state. A value of 1 clears this status bit. Values: - 0x1 (SET): HAC Interrupt is set - 0x0 (NOTSET): HAC Interrupt is not set"]
    #[inline(always)]
    pub fn hac(&mut self) -> HAC_W {
        HAC_W { w: self }
    }
    #[doc = "Bit 1 - Task complete interrupt This status bit is asserted (if CQISE.TCC_STE=1) when at least one of the following conditions are met: - A task is completed and the INT bit is set in its Task Descriptor - Interrupt caused by Interrupt Coalescing logic due to timeout - Interrupt Coalescing logic reached the configured threshold A value of 1 clears this status bit Values: - 0x1 (SET): TCC Interrupt is set - 0x0 (NOTSET): TCC Interrupt is not set"]
    #[inline(always)]
    pub fn tcc(&mut self) -> TCC_W {
        TCC_W { w: self }
    }
    #[doc = "Bit 2 - Response error detected interrupt This status bit is asserted (if CQISE.RED_STE=1) when a response is received with an error bit set in the device status field. Configure the CQRMEM register to identify device status bit fields that may trigger an interrupt and that are masked. A value of 1 clears this status bit. Values: - 0x1 (SET): RED Interrupt is set - 0x0 (NOTSET): RED Interrupt is not set"]
    #[inline(always)]
    pub fn red(&mut self) -> RED_W {
        RED_W { w: self }
    }
    #[doc = "Bit 3 - Task cleared interrupt This status bit is asserted (if CQISE.TCL_STE=1) when a task clear operation is completed by CQE. The completed task clear operation is either an individual task clear (by writing CQTCLR) or clearing of all tasks (by writing CQCTL). A value of 1 clears this status bit. Values: - 0x1 (SET): TCL Interrupt is set - 0x0 (NOTSET): TCL Interrupt is not set"]
    #[inline(always)]
    pub fn tcl(&mut self) -> TCL_W {
        TCL_W { w: self }
    }
    #[doc = "Bit 4 - N/A"]
    #[inline(always)]
    pub fn gce(&mut self) -> GCE_W {
        GCE_W { w: self }
    }
    #[doc = "Bit 5 - N/A"]
    #[inline(always)]
    pub fn icce(&mut self) -> ICCE_W {
        ICCE_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Command Queuing Interrupt Status register\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [cqis](index.html) module"]
pub struct CQIS_SPEC;
impl crate::RegisterSpec for CQIS_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [cqis::R](R) reader structure"]
impl crate::Readable for CQIS_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [cqis::W](W) writer structure"]
impl crate::Writable for CQIS_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets CQIS to value 0"]
impl crate::Resettable for CQIS_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
