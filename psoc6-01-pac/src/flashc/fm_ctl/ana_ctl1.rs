#[doc = "Register `ANA_CTL1` reader"]
pub struct R(crate::R<ANA_CTL1_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<ANA_CTL1_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<ANA_CTL1_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<ANA_CTL1_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `ANA_CTL1` writer"]
pub struct W(crate::W<ANA_CTL1_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<ANA_CTL1_SPEC>;
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
impl From<crate::W<ANA_CTL1_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<ANA_CTL1_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `NDAC_MAX` reader - Ndac Max Value.Trimming of negative pump output Voltage."]
pub struct NDAC_MAX_R(crate::FieldReader<u8, u8>);
impl NDAC_MAX_R {
    pub(crate) fn new(bits: u8) -> Self {
        NDAC_MAX_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for NDAC_MAX_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `NDAC_MAX` writer - Ndac Max Value.Trimming of negative pump output Voltage."]
pub struct NDAC_MAX_W<'a> {
    w: &'a mut W,
}
impl<'a> NDAC_MAX_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !0x0f) | (value as u32 & 0x0f);
        self.w
    }
}
#[doc = "Field `NDAC_STEP` reader - Ndac step increment"]
pub struct NDAC_STEP_R(crate::FieldReader<u8, u8>);
impl NDAC_STEP_R {
    pub(crate) fn new(bits: u8) -> Self {
        NDAC_STEP_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for NDAC_STEP_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `NDAC_STEP` writer - Ndac step increment"]
pub struct NDAC_STEP_W<'a> {
    w: &'a mut W,
}
impl<'a> NDAC_STEP_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x0f << 4)) | ((value as u32 & 0x0f) << 4);
        self.w
    }
}
#[doc = "Field `PDAC_MAX` reader - Pdac Max Value.Trimming of positive pump output Voltage:"]
pub struct PDAC_MAX_R(crate::FieldReader<u8, u8>);
impl PDAC_MAX_R {
    pub(crate) fn new(bits: u8) -> Self {
        PDAC_MAX_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PDAC_MAX_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PDAC_MAX` writer - Pdac Max Value.Trimming of positive pump output Voltage:"]
pub struct PDAC_MAX_W<'a> {
    w: &'a mut W,
}
impl<'a> PDAC_MAX_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x0f << 8)) | ((value as u32 & 0x0f) << 8);
        self.w
    }
}
#[doc = "Field `PDAC_STEP` reader - Pdac step increment"]
pub struct PDAC_STEP_R(crate::FieldReader<u8, u8>);
impl PDAC_STEP_R {
    pub(crate) fn new(bits: u8) -> Self {
        PDAC_STEP_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PDAC_STEP_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PDAC_STEP` writer - Pdac step increment"]
pub struct PDAC_STEP_W<'a> {
    w: &'a mut W,
}
impl<'a> PDAC_STEP_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x0f << 12)) | ((value as u32 & 0x0f) << 12);
        self.w
    }
}
#[doc = "Field `NPDAC_STEP_TIME` reader - Ndac/Pdac step duration: (1uS .. 255uS) * 8 When = 0 N/PDAC_MAX control the pumps"]
pub struct NPDAC_STEP_TIME_R(crate::FieldReader<u8, u8>);
impl NPDAC_STEP_TIME_R {
    pub(crate) fn new(bits: u8) -> Self {
        NPDAC_STEP_TIME_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for NPDAC_STEP_TIME_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `NPDAC_STEP_TIME` writer - Ndac/Pdac step duration: (1uS .. 255uS) * 8 When = 0 N/PDAC_MAX control the pumps"]
pub struct NPDAC_STEP_TIME_W<'a> {
    w: &'a mut W,
}
impl<'a> NPDAC_STEP_TIME_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0xff << 16)) | ((value as u32 & 0xff) << 16);
        self.w
    }
}
#[doc = "Field `NPDAC_ZERO_TIME` reader - Ndac/Pdac LO duration: (1uS .. 255uS) * 8 When 0, N/PDAC don't return to 0"]
pub struct NPDAC_ZERO_TIME_R(crate::FieldReader<u8, u8>);
impl NPDAC_ZERO_TIME_R {
    pub(crate) fn new(bits: u8) -> Self {
        NPDAC_ZERO_TIME_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for NPDAC_ZERO_TIME_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `NPDAC_ZERO_TIME` writer - Ndac/Pdac LO duration: (1uS .. 255uS) * 8 When 0, N/PDAC don't return to 0"]
pub struct NPDAC_ZERO_TIME_W<'a> {
    w: &'a mut W,
}
impl<'a> NPDAC_ZERO_TIME_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0xff << 24)) | ((value as u32 & 0xff) << 24);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:3 - Ndac Max Value.Trimming of negative pump output Voltage."]
    #[inline(always)]
    pub fn ndac_max(&self) -> NDAC_MAX_R {
        NDAC_MAX_R::new((self.bits & 0x0f) as u8)
    }
    #[doc = "Bits 4:7 - Ndac step increment"]
    #[inline(always)]
    pub fn ndac_step(&self) -> NDAC_STEP_R {
        NDAC_STEP_R::new(((self.bits >> 4) & 0x0f) as u8)
    }
    #[doc = "Bits 8:11 - Pdac Max Value.Trimming of positive pump output Voltage:"]
    #[inline(always)]
    pub fn pdac_max(&self) -> PDAC_MAX_R {
        PDAC_MAX_R::new(((self.bits >> 8) & 0x0f) as u8)
    }
    #[doc = "Bits 12:15 - Pdac step increment"]
    #[inline(always)]
    pub fn pdac_step(&self) -> PDAC_STEP_R {
        PDAC_STEP_R::new(((self.bits >> 12) & 0x0f) as u8)
    }
    #[doc = "Bits 16:23 - Ndac/Pdac step duration: (1uS .. 255uS) * 8 When = 0 N/PDAC_MAX control the pumps"]
    #[inline(always)]
    pub fn npdac_step_time(&self) -> NPDAC_STEP_TIME_R {
        NPDAC_STEP_TIME_R::new(((self.bits >> 16) & 0xff) as u8)
    }
    #[doc = "Bits 24:31 - Ndac/Pdac LO duration: (1uS .. 255uS) * 8 When 0, N/PDAC don't return to 0"]
    #[inline(always)]
    pub fn npdac_zero_time(&self) -> NPDAC_ZERO_TIME_R {
        NPDAC_ZERO_TIME_R::new(((self.bits >> 24) & 0xff) as u8)
    }
}
impl W {
    #[doc = "Bits 0:3 - Ndac Max Value.Trimming of negative pump output Voltage."]
    #[inline(always)]
    pub fn ndac_max(&mut self) -> NDAC_MAX_W {
        NDAC_MAX_W { w: self }
    }
    #[doc = "Bits 4:7 - Ndac step increment"]
    #[inline(always)]
    pub fn ndac_step(&mut self) -> NDAC_STEP_W {
        NDAC_STEP_W { w: self }
    }
    #[doc = "Bits 8:11 - Pdac Max Value.Trimming of positive pump output Voltage:"]
    #[inline(always)]
    pub fn pdac_max(&mut self) -> PDAC_MAX_W {
        PDAC_MAX_W { w: self }
    }
    #[doc = "Bits 12:15 - Pdac step increment"]
    #[inline(always)]
    pub fn pdac_step(&mut self) -> PDAC_STEP_W {
        PDAC_STEP_W { w: self }
    }
    #[doc = "Bits 16:23 - Ndac/Pdac step duration: (1uS .. 255uS) * 8 When = 0 N/PDAC_MAX control the pumps"]
    #[inline(always)]
    pub fn npdac_step_time(&mut self) -> NPDAC_STEP_TIME_W {
        NPDAC_STEP_TIME_W { w: self }
    }
    #[doc = "Bits 24:31 - Ndac/Pdac LO duration: (1uS .. 255uS) * 8 When 0, N/PDAC don't return to 0"]
    #[inline(always)]
    pub fn npdac_zero_time(&mut self) -> NPDAC_ZERO_TIME_W {
        NPDAC_ZERO_TIME_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Analog control 1\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [ana_ctl1](index.html) module"]
pub struct ANA_CTL1_SPEC;
impl crate::RegisterSpec for ANA_CTL1_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [ana_ctl1::R](R) reader structure"]
impl crate::Readable for ANA_CTL1_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [ana_ctl1::W](W) writer structure"]
impl crate::Writable for ANA_CTL1_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets ANA_CTL1 to value 0x0d32_fafa"]
impl crate::Resettable for ANA_CTL1_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0x0d32_fafa
    }
}
