#[doc = "Register `ADMA_ID_LOW_R` reader"]
pub struct R(crate::R<ADMA_ID_LOW_R_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<ADMA_ID_LOW_R_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<ADMA_ID_LOW_R_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<ADMA_ID_LOW_R_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `ADMA_ID_LOW_R` writer"]
pub struct W(crate::W<ADMA_ID_LOW_R_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<ADMA_ID_LOW_R_SPEC>;
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
impl From<crate::W<ADMA_ID_LOW_R_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<ADMA_ID_LOW_R_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `ADMA_ID_LOW` reader - ADMA Integrated Descriptor Address These bits indicate the lower 32-bit of the ADMA Integrated Descriptor address. The start address of Integrated Descriptor is set to these register bits. The ADMA3 fetches one Descriptor Address and increments these bits to indicate the next Descriptor address."]
pub struct ADMA_ID_LOW_R(crate::FieldReader<u32, u32>);
impl ADMA_ID_LOW_R {
    pub(crate) fn new(bits: u32) -> Self {
        ADMA_ID_LOW_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ADMA_ID_LOW_R {
    type Target = crate::FieldReader<u32, u32>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ADMA_ID_LOW` writer - ADMA Integrated Descriptor Address These bits indicate the lower 32-bit of the ADMA Integrated Descriptor address. The start address of Integrated Descriptor is set to these register bits. The ADMA3 fetches one Descriptor Address and increments these bits to indicate the next Descriptor address."]
pub struct ADMA_ID_LOW_W<'a> {
    w: &'a mut W,
}
impl<'a> ADMA_ID_LOW_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u32) -> &'a mut W {
        self.w.bits = (self.w.bits & !0xffff_ffff) | (value as u32 & 0xffff_ffff);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:31 - ADMA Integrated Descriptor Address These bits indicate the lower 32-bit of the ADMA Integrated Descriptor address. The start address of Integrated Descriptor is set to these register bits. The ADMA3 fetches one Descriptor Address and increments these bits to indicate the next Descriptor address."]
    #[inline(always)]
    pub fn adma_id_low(&self) -> ADMA_ID_LOW_R {
        ADMA_ID_LOW_R::new((self.bits & 0xffff_ffff) as u32)
    }
}
impl W {
    #[doc = "Bits 0:31 - ADMA Integrated Descriptor Address These bits indicate the lower 32-bit of the ADMA Integrated Descriptor address. The start address of Integrated Descriptor is set to these register bits. The ADMA3 fetches one Descriptor Address and increments these bits to indicate the next Descriptor address."]
    #[inline(always)]
    pub fn adma_id_low(&mut self) -> ADMA_ID_LOW_W {
        ADMA_ID_LOW_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "ADMA3 Integrated Descriptor Address Register - Low\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [adma_id_low_r](index.html) module"]
pub struct ADMA_ID_LOW_R_SPEC;
impl crate::RegisterSpec for ADMA_ID_LOW_R_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [adma_id_low_r::R](R) reader structure"]
impl crate::Readable for ADMA_ID_LOW_R_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [adma_id_low_r::W](W) writer structure"]
impl crate::Writable for ADMA_ID_LOW_R_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets ADMA_ID_LOW_R to value 0"]
impl crate::Resettable for ADMA_ID_LOW_R_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
