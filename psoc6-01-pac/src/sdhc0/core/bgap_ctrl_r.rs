#[doc = "Register `BGAP_CTRL_R` reader"]
pub struct R(crate::R<BGAP_CTRL_R_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<BGAP_CTRL_R_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<BGAP_CTRL_R_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<BGAP_CTRL_R_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `BGAP_CTRL_R` writer"]
pub struct W(crate::W<BGAP_CTRL_R_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<BGAP_CTRL_R_SPEC>;
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
impl From<crate::W<BGAP_CTRL_R_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<BGAP_CTRL_R_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `STOP_BG_REQ` reader - Stop At Block Gap Request This bit is used to stop executing read and write transactions at the next block gap for non-DMA, SDMA, and ADMA transfers. Values: - 0x0 (XFER): Transfer - 0x1 (STOP): Stop"]
pub struct STOP_BG_REQ_R(crate::FieldReader<bool, bool>);
impl STOP_BG_REQ_R {
    pub(crate) fn new(bits: bool) -> Self {
        STOP_BG_REQ_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for STOP_BG_REQ_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `STOP_BG_REQ` writer - Stop At Block Gap Request This bit is used to stop executing read and write transactions at the next block gap for non-DMA, SDMA, and ADMA transfers. Values: - 0x0 (XFER): Transfer - 0x1 (STOP): Stop"]
pub struct STOP_BG_REQ_W<'a> {
    w: &'a mut W,
}
impl<'a> STOP_BG_REQ_W<'a> {
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
        self.w.bits = (self.w.bits & !0x01) | (value as u8 & 0x01);
        self.w
    }
}
#[doc = "Field `CONTINUE_REQ` reader - Continue Request This bit is used to restart the transaction, which was stopped using the Stop At Block Gap Request. The Host Controller automatically clears this bit when the transaction restarts. If stop at block gap request is set to 1, any write to this bit is ignored. Values: - 0x0 (NO_AFFECT): No Affect - 0x1 (RESTART): Restart"]
pub struct CONTINUE_REQ_R(crate::FieldReader<bool, bool>);
impl CONTINUE_REQ_R {
    pub(crate) fn new(bits: bool) -> Self {
        CONTINUE_REQ_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CONTINUE_REQ_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CONTINUE_REQ` writer - Continue Request This bit is used to restart the transaction, which was stopped using the Stop At Block Gap Request. The Host Controller automatically clears this bit when the transaction restarts. If stop at block gap request is set to 1, any write to this bit is ignored. Values: - 0x0 (NO_AFFECT): No Affect - 0x1 (RESTART): Restart"]
pub struct CONTINUE_REQ_W<'a> {
    w: &'a mut W,
}
impl<'a> CONTINUE_REQ_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 1)) | ((value as u8 & 0x01) << 1);
        self.w
    }
}
#[doc = "Field `RD_WAIT_CTRL` reader - N/A"]
pub struct RD_WAIT_CTRL_R(crate::FieldReader<bool, bool>);
impl RD_WAIT_CTRL_R {
    pub(crate) fn new(bits: bool) -> Self {
        RD_WAIT_CTRL_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RD_WAIT_CTRL_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `RD_WAIT_CTRL` writer - N/A"]
pub struct RD_WAIT_CTRL_W<'a> {
    w: &'a mut W,
}
impl<'a> RD_WAIT_CTRL_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 2)) | ((value as u8 & 0x01) << 2);
        self.w
    }
}
#[doc = "Field `INT_AT_BGAP` reader - Interrupt At Block Gap This bit is valid only in the 4-bit mode of an SDIO card and is used to select a sample point in the interrupt cycle. Setting to 1 enables interrupt detection at the block gap for a multiple block transfer. Values: - 0x0 (DISABLE): Disabled - 0x1 (ENABLE): Enabled"]
pub struct INT_AT_BGAP_R(crate::FieldReader<bool, bool>);
impl INT_AT_BGAP_R {
    pub(crate) fn new(bits: bool) -> Self {
        INT_AT_BGAP_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for INT_AT_BGAP_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `INT_AT_BGAP` writer - Interrupt At Block Gap This bit is valid only in the 4-bit mode of an SDIO card and is used to select a sample point in the interrupt cycle. Setting to 1 enables interrupt detection at the block gap for a multiple block transfer. Values: - 0x0 (DISABLE): Disabled - 0x1 (ENABLE): Enabled"]
pub struct INT_AT_BGAP_W<'a> {
    w: &'a mut W,
}
impl<'a> INT_AT_BGAP_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 3)) | ((value as u8 & 0x01) << 3);
        self.w
    }
}
impl R {
    #[doc = "Bit 0 - Stop At Block Gap Request This bit is used to stop executing read and write transactions at the next block gap for non-DMA, SDMA, and ADMA transfers. Values: - 0x0 (XFER): Transfer - 0x1 (STOP): Stop"]
    #[inline(always)]
    pub fn stop_bg_req(&self) -> STOP_BG_REQ_R {
        STOP_BG_REQ_R::new((self.bits & 0x01) != 0)
    }
    #[doc = "Bit 1 - Continue Request This bit is used to restart the transaction, which was stopped using the Stop At Block Gap Request. The Host Controller automatically clears this bit when the transaction restarts. If stop at block gap request is set to 1, any write to this bit is ignored. Values: - 0x0 (NO_AFFECT): No Affect - 0x1 (RESTART): Restart"]
    #[inline(always)]
    pub fn continue_req(&self) -> CONTINUE_REQ_R {
        CONTINUE_REQ_R::new(((self.bits >> 1) & 0x01) != 0)
    }
    #[doc = "Bit 2 - N/A"]
    #[inline(always)]
    pub fn rd_wait_ctrl(&self) -> RD_WAIT_CTRL_R {
        RD_WAIT_CTRL_R::new(((self.bits >> 2) & 0x01) != 0)
    }
    #[doc = "Bit 3 - Interrupt At Block Gap This bit is valid only in the 4-bit mode of an SDIO card and is used to select a sample point in the interrupt cycle. Setting to 1 enables interrupt detection at the block gap for a multiple block transfer. Values: - 0x0 (DISABLE): Disabled - 0x1 (ENABLE): Enabled"]
    #[inline(always)]
    pub fn int_at_bgap(&self) -> INT_AT_BGAP_R {
        INT_AT_BGAP_R::new(((self.bits >> 3) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bit 0 - Stop At Block Gap Request This bit is used to stop executing read and write transactions at the next block gap for non-DMA, SDMA, and ADMA transfers. Values: - 0x0 (XFER): Transfer - 0x1 (STOP): Stop"]
    #[inline(always)]
    pub fn stop_bg_req(&mut self) -> STOP_BG_REQ_W {
        STOP_BG_REQ_W { w: self }
    }
    #[doc = "Bit 1 - Continue Request This bit is used to restart the transaction, which was stopped using the Stop At Block Gap Request. The Host Controller automatically clears this bit when the transaction restarts. If stop at block gap request is set to 1, any write to this bit is ignored. Values: - 0x0 (NO_AFFECT): No Affect - 0x1 (RESTART): Restart"]
    #[inline(always)]
    pub fn continue_req(&mut self) -> CONTINUE_REQ_W {
        CONTINUE_REQ_W { w: self }
    }
    #[doc = "Bit 2 - N/A"]
    #[inline(always)]
    pub fn rd_wait_ctrl(&mut self) -> RD_WAIT_CTRL_W {
        RD_WAIT_CTRL_W { w: self }
    }
    #[doc = "Bit 3 - Interrupt At Block Gap This bit is valid only in the 4-bit mode of an SDIO card and is used to select a sample point in the interrupt cycle. Setting to 1 enables interrupt detection at the block gap for a multiple block transfer. Values: - 0x0 (DISABLE): Disabled - 0x1 (ENABLE): Enabled"]
    #[inline(always)]
    pub fn int_at_bgap(&mut self) -> INT_AT_BGAP_W {
        INT_AT_BGAP_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u8) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Block Gap Control Register\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [bgap_ctrl_r](index.html) module"]
pub struct BGAP_CTRL_R_SPEC;
impl crate::RegisterSpec for BGAP_CTRL_R_SPEC {
    type Ux = u8;
}
#[doc = "`read()` method returns [bgap_ctrl_r::R](R) reader structure"]
impl crate::Readable for BGAP_CTRL_R_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [bgap_ctrl_r::W](W) writer structure"]
impl crate::Writable for BGAP_CTRL_R_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets BGAP_CTRL_R to value 0"]
impl crate::Resettable for BGAP_CTRL_R_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
