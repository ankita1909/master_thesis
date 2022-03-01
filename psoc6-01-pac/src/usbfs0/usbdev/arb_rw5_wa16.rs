#[doc = "Register `ARB_RW5_WA16` reader"]
pub struct R(crate::R<ARB_RW5_WA16_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<ARB_RW5_WA16_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<ARB_RW5_WA16_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<ARB_RW5_WA16_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `ARB_RW5_WA16` writer"]
pub struct W(crate::W<ARB_RW5_WA16_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<ARB_RW5_WA16_SPEC>;
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
impl From<crate::W<ARB_RW5_WA16_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<ARB_RW5_WA16_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `WA16` reader - Write Address for EP"]
pub struct WA16_R(crate::FieldReader<u16, u16>);
impl WA16_R {
    pub(crate) fn new(bits: u16) -> Self {
        WA16_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for WA16_R {
    type Target = crate::FieldReader<u16, u16>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `WA16` writer - Write Address for EP"]
pub struct WA16_W<'a> {
    w: &'a mut W,
}
impl<'a> WA16_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u16) -> &'a mut W {
        self.w.bits = (self.w.bits & !0x01ff) | (value as u32 & 0x01ff);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:8 - Write Address for EP"]
    #[inline(always)]
    pub fn wa16(&self) -> WA16_R {
        WA16_R::new((self.bits & 0x01ff) as u16)
    }
}
impl W {
    #[doc = "Bits 0:8 - Write Address for EP"]
    #[inline(always)]
    pub fn wa16(&mut self) -> WA16_W {
        WA16_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Endpoint Write Address value *3\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [arb_rw5_wa16](index.html) module"]
pub struct ARB_RW5_WA16_SPEC;
impl crate::RegisterSpec for ARB_RW5_WA16_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [arb_rw5_wa16::R](R) reader structure"]
impl crate::Readable for ARB_RW5_WA16_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [arb_rw5_wa16::W](W) writer structure"]
impl crate::Writable for ARB_RW5_WA16_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets ARB_RW5_WA16 to value 0"]
impl crate::Resettable for ARB_RW5_WA16_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
