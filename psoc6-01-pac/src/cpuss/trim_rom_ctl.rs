#[doc = "Register `TRIM_ROM_CTL` reader"]
pub struct R(crate::R<TRIM_ROM_CTL_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<TRIM_ROM_CTL_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<TRIM_ROM_CTL_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<TRIM_ROM_CTL_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `TRIM_ROM_CTL` writer"]
pub struct W(crate::W<TRIM_ROM_CTL_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<TRIM_ROM_CTL_SPEC>;
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
impl From<crate::W<TRIM_ROM_CTL_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<TRIM_ROM_CTL_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `TRIM` reader - N/A"]
pub struct TRIM_R(crate::FieldReader<u32, u32>);
impl TRIM_R {
    pub(crate) fn new(bits: u32) -> Self {
        TRIM_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for TRIM_R {
    type Target = crate::FieldReader<u32, u32>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `TRIM` writer - N/A"]
pub struct TRIM_W<'a> {
    w: &'a mut W,
}
impl<'a> TRIM_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u32) -> &'a mut W {
        self.w.bits = (self.w.bits & !0xffff_ffff) | (value as u32 & 0xffff_ffff);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:31 - N/A"]
    #[inline(always)]
    pub fn trim(&self) -> TRIM_R {
        TRIM_R::new((self.bits & 0xffff_ffff) as u32)
    }
}
impl W {
    #[doc = "Bits 0:31 - N/A"]
    #[inline(always)]
    pub fn trim(&mut self) -> TRIM_W {
        TRIM_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "ROM trim control\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [trim_rom_ctl](index.html) module"]
pub struct TRIM_ROM_CTL_SPEC;
impl crate::RegisterSpec for TRIM_ROM_CTL_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [trim_rom_ctl::R](R) reader structure"]
impl crate::Readable for TRIM_ROM_CTL_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [trim_rom_ctl::W](W) writer structure"]
impl crate::Writable for TRIM_ROM_CTL_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets TRIM_ROM_CTL to value 0"]
impl crate::Resettable for TRIM_ROM_CTL_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
