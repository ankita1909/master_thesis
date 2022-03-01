#[doc = "Register `CQRMEM` reader"]
pub struct R(crate::R<CQRMEM_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CQRMEM_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CQRMEM_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CQRMEM_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `CQRMEM` writer"]
pub struct W(crate::W<CQRMEM_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<CQRMEM_SPEC>;
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
impl From<crate::W<CQRMEM_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<CQRMEM_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `RESP_ERR_MASK` reader - The bits of this field are bit mapped to the device response. This bit is used as an interrupt mask on the device status filed that is received in R1/R1b responses. - 1: When a R1/R1b response is received, with a bit i in the device status set, a RED interrupt is generated. - 0: When a R1/R1b response is received, bit i in the device status is ignored. The reset value of this register is set to trigger an interrupt on all 'Error' type bits in the device status. Note: Responses to CMD13 (SQS) encode the QSR so that they are ignored by this logic."]
pub struct RESP_ERR_MASK_R(crate::FieldReader<u32, u32>);
impl RESP_ERR_MASK_R {
    pub(crate) fn new(bits: u32) -> Self {
        RESP_ERR_MASK_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RESP_ERR_MASK_R {
    type Target = crate::FieldReader<u32, u32>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `RESP_ERR_MASK` writer - The bits of this field are bit mapped to the device response. This bit is used as an interrupt mask on the device status filed that is received in R1/R1b responses. - 1: When a R1/R1b response is received, with a bit i in the device status set, a RED interrupt is generated. - 0: When a R1/R1b response is received, bit i in the device status is ignored. The reset value of this register is set to trigger an interrupt on all 'Error' type bits in the device status. Note: Responses to CMD13 (SQS) encode the QSR so that they are ignored by this logic."]
pub struct RESP_ERR_MASK_W<'a> {
    w: &'a mut W,
}
impl<'a> RESP_ERR_MASK_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u32) -> &'a mut W {
        self.w.bits = (self.w.bits & !0xffff_ffff) | (value as u32 & 0xffff_ffff);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:31 - The bits of this field are bit mapped to the device response. This bit is used as an interrupt mask on the device status filed that is received in R1/R1b responses. - 1: When a R1/R1b response is received, with a bit i in the device status set, a RED interrupt is generated. - 0: When a R1/R1b response is received, bit i in the device status is ignored. The reset value of this register is set to trigger an interrupt on all 'Error' type bits in the device status. Note: Responses to CMD13 (SQS) encode the QSR so that they are ignored by this logic."]
    #[inline(always)]
    pub fn resp_err_mask(&self) -> RESP_ERR_MASK_R {
        RESP_ERR_MASK_R::new((self.bits & 0xffff_ffff) as u32)
    }
}
impl W {
    #[doc = "Bits 0:31 - The bits of this field are bit mapped to the device response. This bit is used as an interrupt mask on the device status filed that is received in R1/R1b responses. - 1: When a R1/R1b response is received, with a bit i in the device status set, a RED interrupt is generated. - 0: When a R1/R1b response is received, bit i in the device status is ignored. The reset value of this register is set to trigger an interrupt on all 'Error' type bits in the device status. Note: Responses to CMD13 (SQS) encode the QSR so that they are ignored by this logic."]
    #[inline(always)]
    pub fn resp_err_mask(&mut self) -> RESP_ERR_MASK_W {
        RESP_ERR_MASK_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Command response mode error mask register\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [cqrmem](index.html) module"]
pub struct CQRMEM_SPEC;
impl crate::RegisterSpec for CQRMEM_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [cqrmem::R](R) reader structure"]
impl crate::Readable for CQRMEM_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [cqrmem::W](W) writer structure"]
impl crate::Writable for CQRMEM_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets CQRMEM to value 0xfdf9_a080"]
impl crate::Resettable for CQRMEM_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0xfdf9_a080
    }
}
