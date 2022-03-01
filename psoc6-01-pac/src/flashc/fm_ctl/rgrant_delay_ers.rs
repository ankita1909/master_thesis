#[doc = "Register `RGRANT_DELAY_ERS` reader"]
pub struct R(crate::R<RGRANT_DELAY_ERS_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<RGRANT_DELAY_ERS_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<RGRANT_DELAY_ERS_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<RGRANT_DELAY_ERS_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `RGRANT_DELAY_ERS` writer"]
pub struct W(crate::W<RGRANT_DELAY_ERS_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<RGRANT_DELAY_ERS_SPEC>;
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
impl From<crate::W<RGRANT_DELAY_ERS_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<RGRANT_DELAY_ERS_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `RGRANT_DELAY_ERS_SEQ01` reader - ERASE: R-grant blocking delay on seq0-seq1 transition. Scale = ANA_CTL0.SCALE_SEQ01 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
pub struct RGRANT_DELAY_ERS_SEQ01_R(crate::FieldReader<u8, u8>);
impl RGRANT_DELAY_ERS_SEQ01_R {
    pub(crate) fn new(bits: u8) -> Self {
        RGRANT_DELAY_ERS_SEQ01_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RGRANT_DELAY_ERS_SEQ01_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `RGRANT_DELAY_ERS_SEQ01` writer - ERASE: R-grant blocking delay on seq0-seq1 transition. Scale = ANA_CTL0.SCALE_SEQ01 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
pub struct RGRANT_DELAY_ERS_SEQ01_W<'a> {
    w: &'a mut W,
}
impl<'a> RGRANT_DELAY_ERS_SEQ01_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !0xff) | (value as u32 & 0xff);
        self.w
    }
}
#[doc = "Field `RGRANT_DELAY_ERS_SEQ12` reader - ERASE: R-grant blocking delay on seq1-seq2 transition. Scale = ANA_CTL0.SCALE_SEQ12 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
pub struct RGRANT_DELAY_ERS_SEQ12_R(crate::FieldReader<u8, u8>);
impl RGRANT_DELAY_ERS_SEQ12_R {
    pub(crate) fn new(bits: u8) -> Self {
        RGRANT_DELAY_ERS_SEQ12_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RGRANT_DELAY_ERS_SEQ12_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `RGRANT_DELAY_ERS_SEQ12` writer - ERASE: R-grant blocking delay on seq1-seq2 transition. Scale = ANA_CTL0.SCALE_SEQ12 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
pub struct RGRANT_DELAY_ERS_SEQ12_W<'a> {
    w: &'a mut W,
}
impl<'a> RGRANT_DELAY_ERS_SEQ12_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0xff << 8)) | ((value as u32 & 0xff) << 8);
        self.w
    }
}
#[doc = "Field `RGRANT_DELAY_ERS_SEQ23` reader - ERASE: R-grant blocking delay on seq2-seq3 transition. Scale = ANA_CTL0.SCALE_SEQ23 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
pub struct RGRANT_DELAY_ERS_SEQ23_R(crate::FieldReader<u8, u8>);
impl RGRANT_DELAY_ERS_SEQ23_R {
    pub(crate) fn new(bits: u8) -> Self {
        RGRANT_DELAY_ERS_SEQ23_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RGRANT_DELAY_ERS_SEQ23_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `RGRANT_DELAY_ERS_SEQ23` writer - ERASE: R-grant blocking delay on seq2-seq3 transition. Scale = ANA_CTL0.SCALE_SEQ23 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
pub struct RGRANT_DELAY_ERS_SEQ23_W<'a> {
    w: &'a mut W,
}
impl<'a> RGRANT_DELAY_ERS_SEQ23_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0xff << 16)) | ((value as u32 & 0xff) << 16);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:7 - ERASE: R-grant blocking delay on seq0-seq1 transition. Scale = ANA_CTL0.SCALE_SEQ01 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
    #[inline(always)]
    pub fn rgrant_delay_ers_seq01(&self) -> RGRANT_DELAY_ERS_SEQ01_R {
        RGRANT_DELAY_ERS_SEQ01_R::new((self.bits & 0xff) as u8)
    }
    #[doc = "Bits 8:15 - ERASE: R-grant blocking delay on seq1-seq2 transition. Scale = ANA_CTL0.SCALE_SEQ12 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
    #[inline(always)]
    pub fn rgrant_delay_ers_seq12(&self) -> RGRANT_DELAY_ERS_SEQ12_R {
        RGRANT_DELAY_ERS_SEQ12_R::new(((self.bits >> 8) & 0xff) as u8)
    }
    #[doc = "Bits 16:23 - ERASE: R-grant blocking delay on seq2-seq3 transition. Scale = ANA_CTL0.SCALE_SEQ23 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
    #[inline(always)]
    pub fn rgrant_delay_ers_seq23(&self) -> RGRANT_DELAY_ERS_SEQ23_R {
        RGRANT_DELAY_ERS_SEQ23_R::new(((self.bits >> 16) & 0xff) as u8)
    }
}
impl W {
    #[doc = "Bits 0:7 - ERASE: R-grant blocking delay on seq0-seq1 transition. Scale = ANA_CTL0.SCALE_SEQ01 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
    #[inline(always)]
    pub fn rgrant_delay_ers_seq01(&mut self) -> RGRANT_DELAY_ERS_SEQ01_W {
        RGRANT_DELAY_ERS_SEQ01_W { w: self }
    }
    #[doc = "Bits 8:15 - ERASE: R-grant blocking delay on seq1-seq2 transition. Scale = ANA_CTL0.SCALE_SEQ12 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
    #[inline(always)]
    pub fn rgrant_delay_ers_seq12(&mut self) -> RGRANT_DELAY_ERS_SEQ12_W {
        RGRANT_DELAY_ERS_SEQ12_W { w: self }
    }
    #[doc = "Bits 16:23 - ERASE: R-grant blocking delay on seq2-seq3 transition. Scale = ANA_CTL0.SCALE_SEQ23 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
    #[inline(always)]
    pub fn rgrant_delay_ers_seq23(&mut self) -> RGRANT_DELAY_ERS_SEQ23_W {
        RGRANT_DELAY_ERS_SEQ23_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "R-grant delay for erase\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [rgrant_delay_ers](index.html) module"]
pub struct RGRANT_DELAY_ERS_SPEC;
impl crate::RegisterSpec for RGRANT_DELAY_ERS_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [rgrant_delay_ers::R](R) reader structure"]
impl crate::Readable for RGRANT_DELAY_ERS_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [rgrant_delay_ers::W](W) writer structure"]
impl crate::Writable for RGRANT_DELAY_ERS_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets RGRANT_DELAY_ERS to value 0"]
impl crate::Resettable for RGRANT_DELAY_ERS_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
