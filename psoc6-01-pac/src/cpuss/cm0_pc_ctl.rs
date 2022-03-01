#[doc = "Register `CM0_PC_CTL` reader"]
pub struct R(crate::R<CM0_PC_CTL_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CM0_PC_CTL_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CM0_PC_CTL_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CM0_PC_CTL_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `CM0_PC_CTL` writer"]
pub struct W(crate::W<CM0_PC_CTL_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<CM0_PC_CTL_SPEC>;
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
impl From<crate::W<CM0_PC_CTL_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<CM0_PC_CTL_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `VALID` reader - Valid fields for the protection context handler CM0_PCi_HANDLER registers: Bit 0: Valid field for CM0_PC0_HANDLER. Bit 1: Valid field for CM0_PC1_HANDLER. Bit 2: Valid field for CM0_PC2_HANDLER. Bit 3: Valid field for CM0_PC3_HANDLER."]
pub struct VALID_R(crate::FieldReader<u8, u8>);
impl VALID_R {
    pub(crate) fn new(bits: u8) -> Self {
        VALID_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for VALID_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `VALID` writer - Valid fields for the protection context handler CM0_PCi_HANDLER registers: Bit 0: Valid field for CM0_PC0_HANDLER. Bit 1: Valid field for CM0_PC1_HANDLER. Bit 2: Valid field for CM0_PC2_HANDLER. Bit 3: Valid field for CM0_PC3_HANDLER."]
pub struct VALID_W<'a> {
    w: &'a mut W,
}
impl<'a> VALID_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !0x0f) | (value as u32 & 0x0f);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:3 - Valid fields for the protection context handler CM0_PCi_HANDLER registers: Bit 0: Valid field for CM0_PC0_HANDLER. Bit 1: Valid field for CM0_PC1_HANDLER. Bit 2: Valid field for CM0_PC2_HANDLER. Bit 3: Valid field for CM0_PC3_HANDLER."]
    #[inline(always)]
    pub fn valid(&self) -> VALID_R {
        VALID_R::new((self.bits & 0x0f) as u8)
    }
}
impl W {
    #[doc = "Bits 0:3 - Valid fields for the protection context handler CM0_PCi_HANDLER registers: Bit 0: Valid field for CM0_PC0_HANDLER. Bit 1: Valid field for CM0_PC1_HANDLER. Bit 2: Valid field for CM0_PC2_HANDLER. Bit 3: Valid field for CM0_PC3_HANDLER."]
    #[inline(always)]
    pub fn valid(&mut self) -> VALID_W {
        VALID_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "CM0+ protection context control\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [cm0_pc_ctl](index.html) module"]
pub struct CM0_PC_CTL_SPEC;
impl crate::RegisterSpec for CM0_PC_CTL_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [cm0_pc_ctl::R](R) reader structure"]
impl crate::Readable for CM0_PC_CTL_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [cm0_pc_ctl::W](W) writer structure"]
impl crate::Writable for CM0_PC_CTL_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets CM0_PC_CTL to value 0"]
impl crate::Resettable for CM0_PC_CTL_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
