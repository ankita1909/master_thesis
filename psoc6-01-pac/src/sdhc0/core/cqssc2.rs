#[doc = "Register `CQSSC2` reader"]
pub struct R(crate::R<CQSSC2_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CQSSC2_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CQSSC2_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CQSSC2_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `CQSSC2` writer"]
pub struct W(crate::W<CQSSC2_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<CQSSC2_SPEC>;
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
impl From<crate::W<CQSSC2_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<CQSSC2_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `SQSCMD_RCA` reader - This field provides CQE with the contents of the 16-bit RCA field in SEND_QUEUE_STATUS (CMD13) command argument. CQE copies this field to bits 31:16 of the argument when transmitting SEND_ QUEUE_STATUS (CMD13) command."]
pub struct SQSCMD_RCA_R(crate::FieldReader<u16, u16>);
impl SQSCMD_RCA_R {
    pub(crate) fn new(bits: u16) -> Self {
        SQSCMD_RCA_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SQSCMD_RCA_R {
    type Target = crate::FieldReader<u16, u16>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SQSCMD_RCA` writer - This field provides CQE with the contents of the 16-bit RCA field in SEND_QUEUE_STATUS (CMD13) command argument. CQE copies this field to bits 31:16 of the argument when transmitting SEND_ QUEUE_STATUS (CMD13) command."]
pub struct SQSCMD_RCA_W<'a> {
    w: &'a mut W,
}
impl<'a> SQSCMD_RCA_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u16) -> &'a mut W {
        self.w.bits = (self.w.bits & !0xffff) | (value as u32 & 0xffff);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:15 - This field provides CQE with the contents of the 16-bit RCA field in SEND_QUEUE_STATUS (CMD13) command argument. CQE copies this field to bits 31:16 of the argument when transmitting SEND_ QUEUE_STATUS (CMD13) command."]
    #[inline(always)]
    pub fn sqscmd_rca(&self) -> SQSCMD_RCA_R {
        SQSCMD_RCA_R::new((self.bits & 0xffff) as u16)
    }
}
impl W {
    #[doc = "Bits 0:15 - This field provides CQE with the contents of the 16-bit RCA field in SEND_QUEUE_STATUS (CMD13) command argument. CQE copies this field to bits 31:16 of the argument when transmitting SEND_ QUEUE_STATUS (CMD13) command."]
    #[inline(always)]
    pub fn sqscmd_rca(&mut self) -> SQSCMD_RCA_W {
        SQSCMD_RCA_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "CQ Send Status Configuration 2 register\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [cqssc2](index.html) module"]
pub struct CQSSC2_SPEC;
impl crate::RegisterSpec for CQSSC2_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [cqssc2::R](R) reader structure"]
impl crate::Readable for CQSSC2_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [cqssc2::W](W) writer structure"]
impl crate::Writable for CQSSC2_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets CQSSC2 to value 0"]
impl crate::Resettable for CQSSC2_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
