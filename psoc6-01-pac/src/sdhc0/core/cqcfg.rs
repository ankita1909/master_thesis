#[doc = "Register `CQCFG` reader"]
pub struct R(crate::R<CQCFG_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CQCFG_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CQCFG_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CQCFG_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `CQCFG` writer"]
pub struct W(crate::W<CQCFG_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<CQCFG_SPEC>;
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
impl From<crate::W<CQCFG_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<CQCFG_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `CQ_EN` reader - Enable command queuing engine (CQE). When CQE is disable, the software controls the eMMC bus using the registers between the addresses 0x000 to 0x1FF. Before the software writes to this bit, the software verifies that the eMMC host controller is in idle state and there are no ongoing commands or data transfers. When software wants to exit command queuing mode, it clears all previous tasks (if any) before setting this bit to 0. Values: - 0x1 (CQE_ENABLE): Enable command queuing - 0x0 (CQE_DISABLE): Disable command queuing"]
pub struct CQ_EN_R(crate::FieldReader<bool, bool>);
impl CQ_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        CQ_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CQ_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CQ_EN` writer - Enable command queuing engine (CQE). When CQE is disable, the software controls the eMMC bus using the registers between the addresses 0x000 to 0x1FF. Before the software writes to this bit, the software verifies that the eMMC host controller is in idle state and there are no ongoing commands or data transfers. When software wants to exit command queuing mode, it clears all previous tasks (if any) before setting this bit to 0. Values: - 0x1 (CQE_ENABLE): Enable command queuing - 0x0 (CQE_DISABLE): Disable command queuing"]
pub struct CQ_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> CQ_EN_W<'a> {
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
#[doc = "Field `CR_GENERAL_EN` reader - N/A"]
pub struct CR_GENERAL_EN_R(crate::FieldReader<bool, bool>);
impl CR_GENERAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        CR_GENERAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CR_GENERAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CR_GENERAL_EN` writer - N/A"]
pub struct CR_GENERAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> CR_GENERAL_EN_W<'a> {
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
#[doc = "Field `TASK_DESC_SIZE` reader - Bit Value Description This bit indicates the size of task descriptor used in host memory. This bit can only be configured when Command Queuing Enable bit is 0 (command queuing is disabled). Values: - 0x1 (TASK_DESC_128b): Task descriptor size is 128 bits - 0x0 (TASK_DESC_64b): Task descriptor size is 64 bits"]
pub struct TASK_DESC_SIZE_R(crate::FieldReader<bool, bool>);
impl TASK_DESC_SIZE_R {
    pub(crate) fn new(bits: bool) -> Self {
        TASK_DESC_SIZE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for TASK_DESC_SIZE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `TASK_DESC_SIZE` writer - Bit Value Description This bit indicates the size of task descriptor used in host memory. This bit can only be configured when Command Queuing Enable bit is 0 (command queuing is disabled). Values: - 0x1 (TASK_DESC_128b): Task descriptor size is 128 bits - 0x0 (TASK_DESC_64b): Task descriptor size is 64 bits"]
pub struct TASK_DESC_SIZE_W<'a> {
    w: &'a mut W,
}
impl<'a> TASK_DESC_SIZE_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 8)) | ((value as u32 & 0x01) << 8);
        self.w
    }
}
#[doc = "Field `DCMD_EN` reader - This bit indicates to the hardware whether the Task Descriptor in slot #31 of the TDL is a data transfer descriptor or a direct-command descriptor. CQE uses this bit when a task is issued in slot #31, to determine how to decode the Task Descriptor. Values: - 0x1 (SLOT31_DCMD_ENABLE): Task descriptor in slot #31 is a DCMD Task Descriptor - 0x0 (SLOT31_DCMD_DISABLE): Task descriptor in slot #31 is a data Transfer Task Descriptor"]
pub struct DCMD_EN_R(crate::FieldReader<bool, bool>);
impl DCMD_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        DCMD_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DCMD_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DCMD_EN` writer - This bit indicates to the hardware whether the Task Descriptor in slot #31 of the TDL is a data transfer descriptor or a direct-command descriptor. CQE uses this bit when a task is issued in slot #31, to determine how to decode the Task Descriptor. Values: - 0x1 (SLOT31_DCMD_ENABLE): Task descriptor in slot #31 is a DCMD Task Descriptor - 0x0 (SLOT31_DCMD_DISABLE): Task descriptor in slot #31 is a data Transfer Task Descriptor"]
pub struct DCMD_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> DCMD_EN_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 12)) | ((value as u32 & 0x01) << 12);
        self.w
    }
}
impl R {
    #[doc = "Bit 0 - Enable command queuing engine (CQE). When CQE is disable, the software controls the eMMC bus using the registers between the addresses 0x000 to 0x1FF. Before the software writes to this bit, the software verifies that the eMMC host controller is in idle state and there are no ongoing commands or data transfers. When software wants to exit command queuing mode, it clears all previous tasks (if any) before setting this bit to 0. Values: - 0x1 (CQE_ENABLE): Enable command queuing - 0x0 (CQE_DISABLE): Disable command queuing"]
    #[inline(always)]
    pub fn cq_en(&self) -> CQ_EN_R {
        CQ_EN_R::new((self.bits & 0x01) != 0)
    }
    #[doc = "Bit 1 - N/A"]
    #[inline(always)]
    pub fn cr_general_en(&self) -> CR_GENERAL_EN_R {
        CR_GENERAL_EN_R::new(((self.bits >> 1) & 0x01) != 0)
    }
    #[doc = "Bit 8 - Bit Value Description This bit indicates the size of task descriptor used in host memory. This bit can only be configured when Command Queuing Enable bit is 0 (command queuing is disabled). Values: - 0x1 (TASK_DESC_128b): Task descriptor size is 128 bits - 0x0 (TASK_DESC_64b): Task descriptor size is 64 bits"]
    #[inline(always)]
    pub fn task_desc_size(&self) -> TASK_DESC_SIZE_R {
        TASK_DESC_SIZE_R::new(((self.bits >> 8) & 0x01) != 0)
    }
    #[doc = "Bit 12 - This bit indicates to the hardware whether the Task Descriptor in slot #31 of the TDL is a data transfer descriptor or a direct-command descriptor. CQE uses this bit when a task is issued in slot #31, to determine how to decode the Task Descriptor. Values: - 0x1 (SLOT31_DCMD_ENABLE): Task descriptor in slot #31 is a DCMD Task Descriptor - 0x0 (SLOT31_DCMD_DISABLE): Task descriptor in slot #31 is a data Transfer Task Descriptor"]
    #[inline(always)]
    pub fn dcmd_en(&self) -> DCMD_EN_R {
        DCMD_EN_R::new(((self.bits >> 12) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bit 0 - Enable command queuing engine (CQE). When CQE is disable, the software controls the eMMC bus using the registers between the addresses 0x000 to 0x1FF. Before the software writes to this bit, the software verifies that the eMMC host controller is in idle state and there are no ongoing commands or data transfers. When software wants to exit command queuing mode, it clears all previous tasks (if any) before setting this bit to 0. Values: - 0x1 (CQE_ENABLE): Enable command queuing - 0x0 (CQE_DISABLE): Disable command queuing"]
    #[inline(always)]
    pub fn cq_en(&mut self) -> CQ_EN_W {
        CQ_EN_W { w: self }
    }
    #[doc = "Bit 1 - N/A"]
    #[inline(always)]
    pub fn cr_general_en(&mut self) -> CR_GENERAL_EN_W {
        CR_GENERAL_EN_W { w: self }
    }
    #[doc = "Bit 8 - Bit Value Description This bit indicates the size of task descriptor used in host memory. This bit can only be configured when Command Queuing Enable bit is 0 (command queuing is disabled). Values: - 0x1 (TASK_DESC_128b): Task descriptor size is 128 bits - 0x0 (TASK_DESC_64b): Task descriptor size is 64 bits"]
    #[inline(always)]
    pub fn task_desc_size(&mut self) -> TASK_DESC_SIZE_W {
        TASK_DESC_SIZE_W { w: self }
    }
    #[doc = "Bit 12 - This bit indicates to the hardware whether the Task Descriptor in slot #31 of the TDL is a data transfer descriptor or a direct-command descriptor. CQE uses this bit when a task is issued in slot #31, to determine how to decode the Task Descriptor. Values: - 0x1 (SLOT31_DCMD_ENABLE): Task descriptor in slot #31 is a DCMD Task Descriptor - 0x0 (SLOT31_DCMD_DISABLE): Task descriptor in slot #31 is a data Transfer Task Descriptor"]
    #[inline(always)]
    pub fn dcmd_en(&mut self) -> DCMD_EN_W {
        DCMD_EN_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Command Queuing Configuration register\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [cqcfg](index.html) module"]
pub struct CQCFG_SPEC;
impl crate::RegisterSpec for CQCFG_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [cqcfg::R](R) reader structure"]
impl crate::Readable for CQCFG_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [cqcfg::W](W) writer structure"]
impl crate::Writable for CQCFG_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets CQCFG to value 0"]
impl crate::Resettable for CQCFG_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
