#[doc = "Register `ANA_CTL0` reader"]
pub struct R(crate::R<ANA_CTL0_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<ANA_CTL0_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<ANA_CTL0_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<ANA_CTL0_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `ANA_CTL0` writer"]
pub struct W(crate::W<ANA_CTL0_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<ANA_CTL0_SPEC>;
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
impl From<crate::W<ANA_CTL0_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<ANA_CTL0_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `MDAC` reader - Trimming of the output margin Voltage as a function of Vpos and Vneg."]
pub struct MDAC_R(crate::FieldReader<u8, u8>);
impl MDAC_R {
    pub(crate) fn new(bits: u8) -> Self {
        MDAC_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for MDAC_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `MDAC` writer - Trimming of the output margin Voltage as a function of Vpos and Vneg."]
pub struct MDAC_W<'a> {
    w: &'a mut W,
}
impl<'a> MDAC_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !0xff) | (value as u32 & 0xff);
        self.w
    }
}
#[doc = "Field `CSLDAC` reader - Trimming of common source line DAC."]
pub struct CSLDAC_R(crate::FieldReader<u8, u8>);
impl CSLDAC_R {
    pub(crate) fn new(bits: u8) -> Self {
        CSLDAC_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CSLDAC_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CSLDAC` writer - Trimming of common source line DAC."]
pub struct CSLDAC_W<'a> {
    w: &'a mut W,
}
impl<'a> CSLDAC_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x07 << 8)) | ((value as u32 & 0x07) << 8);
        self.w
    }
}
#[doc = "Field `FLIP_AMUXBUS_AB` reader - Flips amuxbusa and amuxbusb 0: amuxbusa, amuxbusb 1: amuxbusb, amuxbusb"]
pub struct FLIP_AMUXBUS_AB_R(crate::FieldReader<bool, bool>);
impl FLIP_AMUXBUS_AB_R {
    pub(crate) fn new(bits: bool) -> Self {
        FLIP_AMUXBUS_AB_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for FLIP_AMUXBUS_AB_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `FLIP_AMUXBUS_AB` writer - Flips amuxbusa and amuxbusb 0: amuxbusa, amuxbusb 1: amuxbusb, amuxbusb"]
pub struct FLIP_AMUXBUS_AB_W<'a> {
    w: &'a mut W,
}
impl<'a> FLIP_AMUXBUS_AB_W<'a> {
    #[doc = r"Sets the field bit"]
    #[inline(always)]
    pub fn set_bit(self) -> &'a mut W {
        self.bit(true)
    }
    #[doc = r"Clears the field bit"]
    #[inline(always)]
    pub fn clear_bit(self) -> &'a mut W {
        self.bit(false)
    }
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub fn bit(self, value: bool) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x01 << 11)) | ((value as u32 & 0x01) << 11);
        self.w
    }
}
#[doc = "Field `NDAC_MIN` reader - NDAC staircase min value"]
pub struct NDAC_MIN_R(crate::FieldReader<u8, u8>);
impl NDAC_MIN_R {
    pub(crate) fn new(bits: u8) -> Self {
        NDAC_MIN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for NDAC_MIN_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `NDAC_MIN` writer - NDAC staircase min value"]
pub struct NDAC_MIN_W<'a> {
    w: &'a mut W,
}
impl<'a> NDAC_MIN_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x0f << 12)) | ((value as u32 & 0x0f) << 12);
        self.w
    }
}
#[doc = "Field `PDAC_MIN` reader - PDAC staircase min value"]
pub struct PDAC_MIN_R(crate::FieldReader<u8, u8>);
impl PDAC_MIN_R {
    pub(crate) fn new(bits: u8) -> Self {
        PDAC_MIN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PDAC_MIN_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PDAC_MIN` writer - PDAC staircase min value"]
pub struct PDAC_MIN_W<'a> {
    w: &'a mut W,
}
impl<'a> PDAC_MIN_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x0f << 16)) | ((value as u32 & 0x0f) << 16);
        self.w
    }
}
#[doc = "Field `SCALE_PRG_SEQ01` reader - PROG&PRE_PROG: Scale for R_GRANT_DELAY on seq0-seq1 transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
pub struct SCALE_PRG_SEQ01_R(crate::FieldReader<u8, u8>);
impl SCALE_PRG_SEQ01_R {
    pub(crate) fn new(bits: u8) -> Self {
        SCALE_PRG_SEQ01_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SCALE_PRG_SEQ01_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SCALE_PRG_SEQ01` writer - PROG&PRE_PROG: Scale for R_GRANT_DELAY on seq0-seq1 transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
pub struct SCALE_PRG_SEQ01_W<'a> {
    w: &'a mut W,
}
impl<'a> SCALE_PRG_SEQ01_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x03 << 20)) | ((value as u32 & 0x03) << 20);
        self.w
    }
}
#[doc = "Field `SCALE_PRG_SEQ12` reader - PROG&PRE_PROG: Scale for R_GRANT_DELAY on seq1-seq2 transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
pub struct SCALE_PRG_SEQ12_R(crate::FieldReader<u8, u8>);
impl SCALE_PRG_SEQ12_R {
    pub(crate) fn new(bits: u8) -> Self {
        SCALE_PRG_SEQ12_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SCALE_PRG_SEQ12_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SCALE_PRG_SEQ12` writer - PROG&PRE_PROG: Scale for R_GRANT_DELAY on seq1-seq2 transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
pub struct SCALE_PRG_SEQ12_W<'a> {
    w: &'a mut W,
}
impl<'a> SCALE_PRG_SEQ12_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x03 << 22)) | ((value as u32 & 0x03) << 22);
        self.w
    }
}
#[doc = "Field `SCALE_PRG_SEQ23` reader - PROG&PRE_PROG: Scale for R_GRANT_DELAY on seq2-seq3 transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
pub struct SCALE_PRG_SEQ23_R(crate::FieldReader<u8, u8>);
impl SCALE_PRG_SEQ23_R {
    pub(crate) fn new(bits: u8) -> Self {
        SCALE_PRG_SEQ23_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SCALE_PRG_SEQ23_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SCALE_PRG_SEQ23` writer - PROG&PRE_PROG: Scale for R_GRANT_DELAY on seq2-seq3 transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
pub struct SCALE_PRG_SEQ23_W<'a> {
    w: &'a mut W,
}
impl<'a> SCALE_PRG_SEQ23_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x03 << 24)) | ((value as u32 & 0x03) << 24);
        self.w
    }
}
#[doc = "Field `SCALE_SEQ30` reader - PROG&PRE_PROG& ERASE: Scale for R_GRANT_DELAY on seq3-seq0 transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
pub struct SCALE_SEQ30_R(crate::FieldReader<u8, u8>);
impl SCALE_SEQ30_R {
    pub(crate) fn new(bits: u8) -> Self {
        SCALE_SEQ30_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SCALE_SEQ30_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SCALE_SEQ30` writer - PROG&PRE_PROG& ERASE: Scale for R_GRANT_DELAY on seq3-seq0 transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
pub struct SCALE_SEQ30_W<'a> {
    w: &'a mut W,
}
impl<'a> SCALE_SEQ30_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x03 << 26)) | ((value as u32 & 0x03) << 26);
        self.w
    }
}
#[doc = "Field `SCALE_PRG_PEON` reader - PROG&PRE_PROG: Scale for R_GRANT_DELAY on PE On transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
pub struct SCALE_PRG_PEON_R(crate::FieldReader<u8, u8>);
impl SCALE_PRG_PEON_R {
    pub(crate) fn new(bits: u8) -> Self {
        SCALE_PRG_PEON_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SCALE_PRG_PEON_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SCALE_PRG_PEON` writer - PROG&PRE_PROG: Scale for R_GRANT_DELAY on PE On transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
pub struct SCALE_PRG_PEON_W<'a> {
    w: &'a mut W,
}
impl<'a> SCALE_PRG_PEON_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x03 << 28)) | ((value as u32 & 0x03) << 28);
        self.w
    }
}
#[doc = "Field `SCALE_PRG_PEOFF` reader - PROG&PRE_PROG: Scale for R_GRANT_DELAY on PE OFF transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
pub struct SCALE_PRG_PEOFF_R(crate::FieldReader<u8, u8>);
impl SCALE_PRG_PEOFF_R {
    pub(crate) fn new(bits: u8) -> Self {
        SCALE_PRG_PEOFF_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SCALE_PRG_PEOFF_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SCALE_PRG_PEOFF` writer - PROG&PRE_PROG: Scale for R_GRANT_DELAY on PE OFF transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
pub struct SCALE_PRG_PEOFF_W<'a> {
    w: &'a mut W,
}
impl<'a> SCALE_PRG_PEOFF_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x03 << 30)) | ((value as u32 & 0x03) << 30);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:7 - Trimming of the output margin Voltage as a function of Vpos and Vneg."]
    #[inline(always)]
    pub fn mdac(&self) -> MDAC_R {
        MDAC_R::new((self.bits & 0xff) as u8)
    }
    #[doc = "Bits 8:10 - Trimming of common source line DAC."]
    #[inline(always)]
    pub fn csldac(&self) -> CSLDAC_R {
        CSLDAC_R::new(((self.bits >> 8) & 0x07) as u8)
    }
    #[doc = "Bit 11 - Flips amuxbusa and amuxbusb 0: amuxbusa, amuxbusb 1: amuxbusb, amuxbusb"]
    #[inline(always)]
    pub fn flip_amuxbus_ab(&self) -> FLIP_AMUXBUS_AB_R {
        FLIP_AMUXBUS_AB_R::new(((self.bits >> 11) & 0x01) != 0)
    }
    #[doc = "Bits 12:15 - NDAC staircase min value"]
    #[inline(always)]
    pub fn ndac_min(&self) -> NDAC_MIN_R {
        NDAC_MIN_R::new(((self.bits >> 12) & 0x0f) as u8)
    }
    #[doc = "Bits 16:19 - PDAC staircase min value"]
    #[inline(always)]
    pub fn pdac_min(&self) -> PDAC_MIN_R {
        PDAC_MIN_R::new(((self.bits >> 16) & 0x0f) as u8)
    }
    #[doc = "Bits 20:21 - PROG&PRE_PROG: Scale for R_GRANT_DELAY on seq0-seq1 transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
    #[inline(always)]
    pub fn scale_prg_seq01(&self) -> SCALE_PRG_SEQ01_R {
        SCALE_PRG_SEQ01_R::new(((self.bits >> 20) & 0x03) as u8)
    }
    #[doc = "Bits 22:23 - PROG&PRE_PROG: Scale for R_GRANT_DELAY on seq1-seq2 transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
    #[inline(always)]
    pub fn scale_prg_seq12(&self) -> SCALE_PRG_SEQ12_R {
        SCALE_PRG_SEQ12_R::new(((self.bits >> 22) & 0x03) as u8)
    }
    #[doc = "Bits 24:25 - PROG&PRE_PROG: Scale for R_GRANT_DELAY on seq2-seq3 transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
    #[inline(always)]
    pub fn scale_prg_seq23(&self) -> SCALE_PRG_SEQ23_R {
        SCALE_PRG_SEQ23_R::new(((self.bits >> 24) & 0x03) as u8)
    }
    #[doc = "Bits 26:27 - PROG&PRE_PROG& ERASE: Scale for R_GRANT_DELAY on seq3-seq0 transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
    #[inline(always)]
    pub fn scale_seq30(&self) -> SCALE_SEQ30_R {
        SCALE_SEQ30_R::new(((self.bits >> 26) & 0x03) as u8)
    }
    #[doc = "Bits 28:29 - PROG&PRE_PROG: Scale for R_GRANT_DELAY on PE On transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
    #[inline(always)]
    pub fn scale_prg_peon(&self) -> SCALE_PRG_PEON_R {
        SCALE_PRG_PEON_R::new(((self.bits >> 28) & 0x03) as u8)
    }
    #[doc = "Bits 30:31 - PROG&PRE_PROG: Scale for R_GRANT_DELAY on PE OFF transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
    #[inline(always)]
    pub fn scale_prg_peoff(&self) -> SCALE_PRG_PEOFF_R {
        SCALE_PRG_PEOFF_R::new(((self.bits >> 30) & 0x03) as u8)
    }
}
impl W {
    #[doc = "Bits 0:7 - Trimming of the output margin Voltage as a function of Vpos and Vneg."]
    #[inline(always)]
    pub fn mdac(&mut self) -> MDAC_W {
        MDAC_W { w: self }
    }
    #[doc = "Bits 8:10 - Trimming of common source line DAC."]
    #[inline(always)]
    pub fn csldac(&mut self) -> CSLDAC_W {
        CSLDAC_W { w: self }
    }
    #[doc = "Bit 11 - Flips amuxbusa and amuxbusb 0: amuxbusa, amuxbusb 1: amuxbusb, amuxbusb"]
    #[inline(always)]
    pub fn flip_amuxbus_ab(&mut self) -> FLIP_AMUXBUS_AB_W {
        FLIP_AMUXBUS_AB_W { w: self }
    }
    #[doc = "Bits 12:15 - NDAC staircase min value"]
    #[inline(always)]
    pub fn ndac_min(&mut self) -> NDAC_MIN_W {
        NDAC_MIN_W { w: self }
    }
    #[doc = "Bits 16:19 - PDAC staircase min value"]
    #[inline(always)]
    pub fn pdac_min(&mut self) -> PDAC_MIN_W {
        PDAC_MIN_W { w: self }
    }
    #[doc = "Bits 20:21 - PROG&PRE_PROG: Scale for R_GRANT_DELAY on seq0-seq1 transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
    #[inline(always)]
    pub fn scale_prg_seq01(&mut self) -> SCALE_PRG_SEQ01_W {
        SCALE_PRG_SEQ01_W { w: self }
    }
    #[doc = "Bits 22:23 - PROG&PRE_PROG: Scale for R_GRANT_DELAY on seq1-seq2 transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
    #[inline(always)]
    pub fn scale_prg_seq12(&mut self) -> SCALE_PRG_SEQ12_W {
        SCALE_PRG_SEQ12_W { w: self }
    }
    #[doc = "Bits 24:25 - PROG&PRE_PROG: Scale for R_GRANT_DELAY on seq2-seq3 transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
    #[inline(always)]
    pub fn scale_prg_seq23(&mut self) -> SCALE_PRG_SEQ23_W {
        SCALE_PRG_SEQ23_W { w: self }
    }
    #[doc = "Bits 26:27 - PROG&PRE_PROG& ERASE: Scale for R_GRANT_DELAY on seq3-seq0 transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
    #[inline(always)]
    pub fn scale_seq30(&mut self) -> SCALE_SEQ30_W {
        SCALE_SEQ30_W { w: self }
    }
    #[doc = "Bits 28:29 - PROG&PRE_PROG: Scale for R_GRANT_DELAY on PE On transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
    #[inline(always)]
    pub fn scale_prg_peon(&mut self) -> SCALE_PRG_PEON_W {
        SCALE_PRG_PEON_W { w: self }
    }
    #[doc = "Bits 30:31 - PROG&PRE_PROG: Scale for R_GRANT_DELAY on PE OFF transition: 00: 0.125uS 01: 1uS 10: 10uS 11: 100uS"]
    #[inline(always)]
    pub fn scale_prg_peoff(&mut self) -> SCALE_PRG_PEOFF_W {
        SCALE_PRG_PEOFF_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Analog control 0\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [ana_ctl0](index.html) module"]
pub struct ANA_CTL0_SPEC;
impl crate::RegisterSpec for ANA_CTL0_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [ana_ctl0::R](R) reader structure"]
impl crate::Readable for ANA_CTL0_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [ana_ctl0::W](W) writer structure"]
impl crate::Writable for ANA_CTL0_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets ANA_CTL0 to value 0x0400"]
impl crate::Resettable for ANA_CTL0_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0x0400
    }
}
