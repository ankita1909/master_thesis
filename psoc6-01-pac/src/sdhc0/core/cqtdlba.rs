#[doc = "Register `CQTDLBA` reader"]
pub struct R(crate::R<CQTDLBA_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CQTDLBA_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CQTDLBA_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CQTDLBA_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `CQTDLBA` writer"]
pub struct W(crate::W<CQTDLBA_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<CQTDLBA_SPEC>;
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
impl From<crate::W<CQTDLBA_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<CQTDLBA_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `TDLBA` reader - This register stores the LSB bits (31:0) of the byte address of the head of the Task Descriptor List in system memory. The size of the task descriptor list is 32 * (Task Descriptor size + Transfer Descriptor size) as configured by the host driver. This address is set on 1 KB boundary. The lower 10 bits of this register are set to 0 by the software and are ignored by CQE."]
pub struct TDLBA_R(crate::FieldReader<u32, u32>);
impl TDLBA_R {
    pub(crate) fn new(bits: u32) -> Self {
        TDLBA_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for TDLBA_R {
    type Target = crate::FieldReader<u32, u32>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `TDLBA` writer - This register stores the LSB bits (31:0) of the byte address of the head of the Task Descriptor List in system memory. The size of the task descriptor list is 32 * (Task Descriptor size + Transfer Descriptor size) as configured by the host driver. This address is set on 1 KB boundary. The lower 10 bits of this register are set to 0 by the software and are ignored by CQE."]
pub struct TDLBA_W<'a> {
    w: &'a mut W,
}
impl<'a> TDLBA_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u32) -> &'a mut W {
        self.w.bits = (self.w.bits & !0xffff_ffff) | (value as u32 & 0xffff_ffff);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:31 - This register stores the LSB bits (31:0) of the byte address of the head of the Task Descriptor List in system memory. The size of the task descriptor list is 32 * (Task Descriptor size + Transfer Descriptor size) as configured by the host driver. This address is set on 1 KB boundary. The lower 10 bits of this register are set to 0 by the software and are ignored by CQE."]
    #[inline(always)]
    pub fn tdlba(&self) -> TDLBA_R {
        TDLBA_R::new((self.bits & 0xffff_ffff) as u32)
    }
}
impl W {
    #[doc = "Bits 0:31 - This register stores the LSB bits (31:0) of the byte address of the head of the Task Descriptor List in system memory. The size of the task descriptor list is 32 * (Task Descriptor size + Transfer Descriptor size) as configured by the host driver. This address is set on 1 KB boundary. The lower 10 bits of this register are set to 0 by the software and are ignored by CQE."]
    #[inline(always)]
    pub fn tdlba(&mut self) -> TDLBA_W {
        TDLBA_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Command Queuing Task Descriptor List Base Address register\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [cqtdlba](index.html) module"]
pub struct CQTDLBA_SPEC;
impl crate::RegisterSpec for CQTDLBA_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [cqtdlba::R](R) reader structure"]
impl crate::Readable for CQTDLBA_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [cqtdlba::W](W) writer structure"]
impl crate::Writable for CQTDLBA_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets CQTDLBA to value 0"]
impl crate::Resettable for CQTDLBA_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
