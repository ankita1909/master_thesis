#[doc = "Register `CQTCN` reader"]
pub struct R(crate::R<CQTCN_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CQTCN_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CQTCN_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CQTCN_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `CQTCN` writer"]
pub struct W(crate::W<CQTCN_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<CQTCN_SPEC>;
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
impl From<crate::W<CQTCN_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<CQTCN_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `TCN` reader - Task Completion Notification Each of the 32 bits are bit mapped to the 32 tasks. - Bit-N(1): Task-N has completed execution (with success or errors) - Bit-N(0): Task-N has not completed, could be pending or not submitted. On task completion, software may read this register to know tasks that have completed. After reading this register, software may clear the relevant bit fields by writing 1 to the corresponding bits."]
pub struct TCN_R(crate::FieldReader<u32, u32>);
impl TCN_R {
    pub(crate) fn new(bits: u32) -> Self {
        TCN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for TCN_R {
    type Target = crate::FieldReader<u32, u32>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `TCN` writer - Task Completion Notification Each of the 32 bits are bit mapped to the 32 tasks. - Bit-N(1): Task-N has completed execution (with success or errors) - Bit-N(0): Task-N has not completed, could be pending or not submitted. On task completion, software may read this register to know tasks that have completed. After reading this register, software may clear the relevant bit fields by writing 1 to the corresponding bits."]
pub struct TCN_W<'a> {
    w: &'a mut W,
}
impl<'a> TCN_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u32) -> &'a mut W {
        self.w.bits = (self.w.bits & !0xffff_ffff) | (value as u32 & 0xffff_ffff);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:31 - Task Completion Notification Each of the 32 bits are bit mapped to the 32 tasks. - Bit-N(1): Task-N has completed execution (with success or errors) - Bit-N(0): Task-N has not completed, could be pending or not submitted. On task completion, software may read this register to know tasks that have completed. After reading this register, software may clear the relevant bit fields by writing 1 to the corresponding bits."]
    #[inline(always)]
    pub fn tcn(&self) -> TCN_R {
        TCN_R::new((self.bits & 0xffff_ffff) as u32)
    }
}
impl W {
    #[doc = "Bits 0:31 - Task Completion Notification Each of the 32 bits are bit mapped to the 32 tasks. - Bit-N(1): Task-N has completed execution (with success or errors) - Bit-N(0): Task-N has not completed, could be pending or not submitted. On task completion, software may read this register to know tasks that have completed. After reading this register, software may clear the relevant bit fields by writing 1 to the corresponding bits."]
    #[inline(always)]
    pub fn tcn(&mut self) -> TCN_W {
        TCN_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Command Queuing TaskClear Notification register\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [cqtcn](index.html) module"]
pub struct CQTCN_SPEC;
impl crate::RegisterSpec for CQTCN_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [cqtcn::R](R) reader structure"]
impl crate::Readable for CQTCN_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [cqtcn::W](W) writer structure"]
impl crate::Writable for CQTCN_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets CQTCN to value 0"]
impl crate::Resettable for CQTCN_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
