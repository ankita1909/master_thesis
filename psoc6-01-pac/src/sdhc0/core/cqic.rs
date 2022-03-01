#[doc = "Register `CQIC` reader"]
pub struct R(crate::R<CQIC_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CQIC_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CQIC_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CQIC_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `CQIC` writer"]
pub struct W(crate::W<CQIC_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<CQIC_SPEC>;
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
impl From<crate::W<CQIC_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<CQIC_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `TOUT_VAL` reader - Interrupt Coalescing Timeout Value Software uses this field to configure the maximum time allowed between the completion of a task on the bus and the generation of an interrupt. Timer Operation: The timer is reset by software during the interrupt service routine. It starts running when the first data transfer task with INT=0 is completed, after the timer was reset. When the timer reaches the value configured in ICTOVAL field, it generates an interrupt and stops. The timer's unit is equal to 1024 clock periods of the clock whose frequency is specified in the Internal Timer Clock Frequency field CQCAP register. - 0x0: Timer is disabled. Timeout-based interrupt is not generated - 0x1: Timeout on 01x1024 cycles of timer clock frequency - 0x2: Timeout on 02x1024 cycles of timer clock frequency - ........ - 0x7f: Timeout on 127x1024 cycles of timer clock frequency In order to write to this field, the TOUT_VAL_WEN bit must be set at the same write operation."]
pub struct TOUT_VAL_R(crate::FieldReader<u8, u8>);
impl TOUT_VAL_R {
    pub(crate) fn new(bits: u8) -> Self {
        TOUT_VAL_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for TOUT_VAL_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `TOUT_VAL` writer - Interrupt Coalescing Timeout Value Software uses this field to configure the maximum time allowed between the completion of a task on the bus and the generation of an interrupt. Timer Operation: The timer is reset by software during the interrupt service routine. It starts running when the first data transfer task with INT=0 is completed, after the timer was reset. When the timer reaches the value configured in ICTOVAL field, it generates an interrupt and stops. The timer's unit is equal to 1024 clock periods of the clock whose frequency is specified in the Internal Timer Clock Frequency field CQCAP register. - 0x0: Timer is disabled. Timeout-based interrupt is not generated - 0x1: Timeout on 01x1024 cycles of timer clock frequency - 0x2: Timeout on 02x1024 cycles of timer clock frequency - ........ - 0x7f: Timeout on 127x1024 cycles of timer clock frequency In order to write to this field, the TOUT_VAL_WEN bit must be set at the same write operation."]
pub struct TOUT_VAL_W<'a> {
    w: &'a mut W,
}
impl<'a> TOUT_VAL_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !0x7f) | (value as u32 & 0x7f);
        self.w
    }
}
#[doc = "Field `TOUT_VAL_WEN` writer - When software writes 1 to this bit, the value TOUT_VAL is updated with the contents written on the same cycle. Values: - 0x1 (WEN_SET): Sets TOUT_VAL_WEN - 0x0 (WEN_CLR): clears TOUT_VAL_WEN"]
pub struct TOUT_VAL_WEN_W<'a> {
    w: &'a mut W,
}
impl<'a> TOUT_VAL_WEN_W<'a> {
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
#[doc = "Field `INTC_TH` writer - Interrupt Coalescing Counter Threshold filed Software uses this field to configure the number of task completions (only tasks with INT=0 in the Task Descriptor), which are required in order to generate an interrupt. Counter Operation: As data transfer tasks with INT=0 complete, they are counted by CQE. The counter is reset by software during the interrupt service routine. The counter stops counting when it reaches the value configured in INTC_TH, and generates interrupt. - 0x0: Interrupt coalescing feature disabled - 0x1: Interrupt coalescing interrupt generated after 1 task when INT=0 completes - 0x2: Interrupt coalescing interrupt generated after 2 tasks when INT=0 completes - ........ - 0x1f: Interrupt coalescing interrupt generated after 31 tasks when INT=0 completes To write to this field, the INTC_TH_WEN bit must be set during the same write operation."]
pub struct INTC_TH_W<'a> {
    w: &'a mut W,
}
impl<'a> INTC_TH_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x1f << 8)) | ((value as u32 & 0x1f) << 8);
        self.w
    }
}
#[doc = "Field `INTC_TH_WEN` writer - Interrupt Coalescing Counter Threshold Write Enable When software writes 1 to this bit, the value INTC_TH is updated with the contents written on the same cycle. Values: - 0x1 (WEN_SET): Sets INTC_TH_WEN - 0x0 (WEN_CLR): Clears INTC_TH_WEN"]
pub struct INTC_TH_WEN_W<'a> {
    w: &'a mut W,
}
impl<'a> INTC_TH_WEN_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 15)) | ((value as u32 & 0x01) << 15);
        self.w
    }
}
#[doc = "Field `INTC_RST` writer - Counter and Timer Reset When host driver writes 1, the interrupt coalescing timer and counter are reset. Values: - 0x1 (ASSERT_INTC_RESET): Interrupt coalescing timer and counter are reset - 0x0 (NO_EFFECT): No Effect"]
pub struct INTC_RST_W<'a> {
    w: &'a mut W,
}
impl<'a> INTC_RST_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 16)) | ((value as u32 & 0x01) << 16);
        self.w
    }
}
#[doc = "Field `INTC_STAT` reader - Interrupt Coalescing Status Bit This bit indicates to the software whether any tasks (with INT=0) have completed and counted towards interrupt coalescing (that is, this is set if and only if INTC counter > 0). Values: - 0x1 (INTC_ATLEAST1_COMP): At least one INT0 task completion has been counted (INTC counter > 0) - 0x0 (INTC_NO_TASK_COMP): INT0 Task completions have not occurred since last counter reset (INTC counter == 0)"]
pub struct INTC_STAT_R(crate::FieldReader<bool, bool>);
impl INTC_STAT_R {
    pub(crate) fn new(bits: bool) -> Self {
        INTC_STAT_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for INTC_STAT_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `INTC_EN` reader - Interrupt Coalescing Enable Bit Values: - 0x1 (ENABLE_INT_COALESCING): Interrupt coalescing mechanism is active. Interrupts are counted and timed, and coalesced interrupts are generated - 0x0 (DISABLE_INT_COALESCING): Interrupt coalescing mechanism is disabled (Default)."]
pub struct INTC_EN_R(crate::FieldReader<bool, bool>);
impl INTC_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        INTC_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for INTC_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `INTC_EN` writer - Interrupt Coalescing Enable Bit Values: - 0x1 (ENABLE_INT_COALESCING): Interrupt coalescing mechanism is active. Interrupts are counted and timed, and coalesced interrupts are generated - 0x0 (DISABLE_INT_COALESCING): Interrupt coalescing mechanism is disabled (Default)."]
pub struct INTC_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> INTC_EN_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 31)) | ((value as u32 & 0x01) << 31);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:6 - Interrupt Coalescing Timeout Value Software uses this field to configure the maximum time allowed between the completion of a task on the bus and the generation of an interrupt. Timer Operation: The timer is reset by software during the interrupt service routine. It starts running when the first data transfer task with INT=0 is completed, after the timer was reset. When the timer reaches the value configured in ICTOVAL field, it generates an interrupt and stops. The timer's unit is equal to 1024 clock periods of the clock whose frequency is specified in the Internal Timer Clock Frequency field CQCAP register. - 0x0: Timer is disabled. Timeout-based interrupt is not generated - 0x1: Timeout on 01x1024 cycles of timer clock frequency - 0x2: Timeout on 02x1024 cycles of timer clock frequency - ........ - 0x7f: Timeout on 127x1024 cycles of timer clock frequency In order to write to this field, the TOUT_VAL_WEN bit must be set at the same write operation."]
    #[inline(always)]
    pub fn tout_val(&self) -> TOUT_VAL_R {
        TOUT_VAL_R::new((self.bits & 0x7f) as u8)
    }
    #[doc = "Bit 20 - Interrupt Coalescing Status Bit This bit indicates to the software whether any tasks (with INT=0) have completed and counted towards interrupt coalescing (that is, this is set if and only if INTC counter > 0). Values: - 0x1 (INTC_ATLEAST1_COMP): At least one INT0 task completion has been counted (INTC counter > 0) - 0x0 (INTC_NO_TASK_COMP): INT0 Task completions have not occurred since last counter reset (INTC counter == 0)"]
    #[inline(always)]
    pub fn intc_stat(&self) -> INTC_STAT_R {
        INTC_STAT_R::new(((self.bits >> 20) & 0x01) != 0)
    }
    #[doc = "Bit 31 - Interrupt Coalescing Enable Bit Values: - 0x1 (ENABLE_INT_COALESCING): Interrupt coalescing mechanism is active. Interrupts are counted and timed, and coalesced interrupts are generated - 0x0 (DISABLE_INT_COALESCING): Interrupt coalescing mechanism is disabled (Default)."]
    #[inline(always)]
    pub fn intc_en(&self) -> INTC_EN_R {
        INTC_EN_R::new(((self.bits >> 31) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bits 0:6 - Interrupt Coalescing Timeout Value Software uses this field to configure the maximum time allowed between the completion of a task on the bus and the generation of an interrupt. Timer Operation: The timer is reset by software during the interrupt service routine. It starts running when the first data transfer task with INT=0 is completed, after the timer was reset. When the timer reaches the value configured in ICTOVAL field, it generates an interrupt and stops. The timer's unit is equal to 1024 clock periods of the clock whose frequency is specified in the Internal Timer Clock Frequency field CQCAP register. - 0x0: Timer is disabled. Timeout-based interrupt is not generated - 0x1: Timeout on 01x1024 cycles of timer clock frequency - 0x2: Timeout on 02x1024 cycles of timer clock frequency - ........ - 0x7f: Timeout on 127x1024 cycles of timer clock frequency In order to write to this field, the TOUT_VAL_WEN bit must be set at the same write operation."]
    #[inline(always)]
    pub fn tout_val(&mut self) -> TOUT_VAL_W {
        TOUT_VAL_W { w: self }
    }
    #[doc = "Bit 7 - When software writes 1 to this bit, the value TOUT_VAL is updated with the contents written on the same cycle. Values: - 0x1 (WEN_SET): Sets TOUT_VAL_WEN - 0x0 (WEN_CLR): clears TOUT_VAL_WEN"]
    #[inline(always)]
    pub fn tout_val_wen(&mut self) -> TOUT_VAL_WEN_W {
        TOUT_VAL_WEN_W { w: self }
    }
    #[doc = "Bits 8:12 - Interrupt Coalescing Counter Threshold filed Software uses this field to configure the number of task completions (only tasks with INT=0 in the Task Descriptor), which are required in order to generate an interrupt. Counter Operation: As data transfer tasks with INT=0 complete, they are counted by CQE. The counter is reset by software during the interrupt service routine. The counter stops counting when it reaches the value configured in INTC_TH, and generates interrupt. - 0x0: Interrupt coalescing feature disabled - 0x1: Interrupt coalescing interrupt generated after 1 task when INT=0 completes - 0x2: Interrupt coalescing interrupt generated after 2 tasks when INT=0 completes - ........ - 0x1f: Interrupt coalescing interrupt generated after 31 tasks when INT=0 completes To write to this field, the INTC_TH_WEN bit must be set during the same write operation."]
    #[inline(always)]
    pub fn intc_th(&mut self) -> INTC_TH_W {
        INTC_TH_W { w: self }
    }
    #[doc = "Bit 15 - Interrupt Coalescing Counter Threshold Write Enable When software writes 1 to this bit, the value INTC_TH is updated with the contents written on the same cycle. Values: - 0x1 (WEN_SET): Sets INTC_TH_WEN - 0x0 (WEN_CLR): Clears INTC_TH_WEN"]
    #[inline(always)]
    pub fn intc_th_wen(&mut self) -> INTC_TH_WEN_W {
        INTC_TH_WEN_W { w: self }
    }
    #[doc = "Bit 16 - Counter and Timer Reset When host driver writes 1, the interrupt coalescing timer and counter are reset. Values: - 0x1 (ASSERT_INTC_RESET): Interrupt coalescing timer and counter are reset - 0x0 (NO_EFFECT): No Effect"]
    #[inline(always)]
    pub fn intc_rst(&mut self) -> INTC_RST_W {
        INTC_RST_W { w: self }
    }
    #[doc = "Bit 31 - Interrupt Coalescing Enable Bit Values: - 0x1 (ENABLE_INT_COALESCING): Interrupt coalescing mechanism is active. Interrupts are counted and timed, and coalesced interrupts are generated - 0x0 (DISABLE_INT_COALESCING): Interrupt coalescing mechanism is disabled (Default)."]
    #[inline(always)]
    pub fn intc_en(&mut self) -> INTC_EN_W {
        INTC_EN_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Command Queuing Interrupt Coalescing register\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [cqic](index.html) module"]
pub struct CQIC_SPEC;
impl crate::RegisterSpec for CQIC_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [cqic::R](R) reader structure"]
impl crate::Readable for CQIC_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [cqic::W](W) writer structure"]
impl crate::Writable for CQIC_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets CQIC to value 0"]
impl crate::Resettable for CQIC_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
