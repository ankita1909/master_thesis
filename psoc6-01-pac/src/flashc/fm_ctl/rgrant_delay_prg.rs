#[doc = "Register `RGRANT_DELAY_PRG` reader"]
pub struct R(crate::R<RGRANT_DELAY_PRG_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<RGRANT_DELAY_PRG_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<RGRANT_DELAY_PRG_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<RGRANT_DELAY_PRG_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `RGRANT_DELAY_PRG` writer"]
pub struct W(crate::W<RGRANT_DELAY_PRG_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<RGRANT_DELAY_PRG_SPEC>;
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
impl From<crate::W<RGRANT_DELAY_PRG_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<RGRANT_DELAY_PRG_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `RGRANT_DELAY_PRG_SEQ12` reader - PROG&PRE_PROG: R-grant blocking delay on seq1-seq2 transition. Scale = ANA_CTL0.SCALE_SEQ12 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
pub struct RGRANT_DELAY_PRG_SEQ12_R(crate::FieldReader<u8, u8>);
impl RGRANT_DELAY_PRG_SEQ12_R {
    pub(crate) fn new(bits: u8) -> Self {
        RGRANT_DELAY_PRG_SEQ12_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RGRANT_DELAY_PRG_SEQ12_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `RGRANT_DELAY_PRG_SEQ12` writer - PROG&PRE_PROG: R-grant blocking delay on seq1-seq2 transition. Scale = ANA_CTL0.SCALE_SEQ12 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
pub struct RGRANT_DELAY_PRG_SEQ12_W<'a> {
    w: &'a mut W,
}
impl<'a> RGRANT_DELAY_PRG_SEQ12_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !0xff) | (value as u32 & 0xff);
        self.w
    }
}
#[doc = "Field `RGRANT_DELAY_PRG_SEQ23` reader - PROG&PRE_PROG: R-grant blocking delay on seq2-seq3 transition. Scale = ANA_CTL0.SCALE_SEQ23 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
pub struct RGRANT_DELAY_PRG_SEQ23_R(crate::FieldReader<u8, u8>);
impl RGRANT_DELAY_PRG_SEQ23_R {
    pub(crate) fn new(bits: u8) -> Self {
        RGRANT_DELAY_PRG_SEQ23_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RGRANT_DELAY_PRG_SEQ23_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `RGRANT_DELAY_PRG_SEQ23` writer - PROG&PRE_PROG: R-grant blocking delay on seq2-seq3 transition. Scale = ANA_CTL0.SCALE_SEQ23 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
pub struct RGRANT_DELAY_PRG_SEQ23_W<'a> {
    w: &'a mut W,
}
impl<'a> RGRANT_DELAY_PRG_SEQ23_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0xff << 8)) | ((value as u32 & 0xff) << 8);
        self.w
    }
}
#[doc = "Field `RGRANT_DELAY_SEQ30` reader - PROG&PRE_PROG & ERASE: R-grant blocking delay on seq3-seq0 transition. Scale = ANA_CTL0.SCALE_SEQ30 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
pub struct RGRANT_DELAY_SEQ30_R(crate::FieldReader<u8, u8>);
impl RGRANT_DELAY_SEQ30_R {
    pub(crate) fn new(bits: u8) -> Self {
        RGRANT_DELAY_SEQ30_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RGRANT_DELAY_SEQ30_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `RGRANT_DELAY_SEQ30` writer - PROG&PRE_PROG & ERASE: R-grant blocking delay on seq3-seq0 transition. Scale = ANA_CTL0.SCALE_SEQ30 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
pub struct RGRANT_DELAY_SEQ30_W<'a> {
    w: &'a mut W,
}
impl<'a> RGRANT_DELAY_SEQ30_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0xff << 16)) | ((value as u32 & 0xff) << 16);
        self.w
    }
}
#[doc = "Field `RGRANT_DELAY_CLK` reader - Frequency divider from clk_t to create the 8MHz reference clock for R_grant delay The value of this field is the integer result of 'clk_t frequency / 8'. Example: for clk_t=100 this field is INT(100/8) =12. This field is updated at runtime with the 'SW_RGRANT_DELAY_CLK ' value from the HV parameters table"]
pub struct RGRANT_DELAY_CLK_R(crate::FieldReader<u8, u8>);
impl RGRANT_DELAY_CLK_R {
    pub(crate) fn new(bits: u8) -> Self {
        RGRANT_DELAY_CLK_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RGRANT_DELAY_CLK_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `RGRANT_DELAY_CLK` writer - Frequency divider from clk_t to create the 8MHz reference clock for R_grant delay The value of this field is the integer result of 'clk_t frequency / 8'. Example: for clk_t=100 this field is INT(100/8) =12. This field is updated at runtime with the 'SW_RGRANT_DELAY_CLK ' value from the HV parameters table"]
pub struct RGRANT_DELAY_CLK_W<'a> {
    w: &'a mut W,
}
impl<'a> RGRANT_DELAY_CLK_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x0f << 24)) | ((value as u32 & 0x0f) << 24);
        self.w
    }
}
#[doc = "Field `HV_PARAMS_LOADED` reader - 0: HV Pulse common params not loaded 1: HV Pulse common params loaded: r-grant delays, r-grant scale, prescaler, timer values for seq1,seq2_pre, seq2_post, seq3"]
pub struct HV_PARAMS_LOADED_R(crate::FieldReader<bool, bool>);
impl HV_PARAMS_LOADED_R {
    pub(crate) fn new(bits: bool) -> Self {
        HV_PARAMS_LOADED_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for HV_PARAMS_LOADED_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `HV_PARAMS_LOADED` writer - 0: HV Pulse common params not loaded 1: HV Pulse common params loaded: r-grant delays, r-grant scale, prescaler, timer values for seq1,seq2_pre, seq2_post, seq3"]
pub struct HV_PARAMS_LOADED_W<'a> {
    w: &'a mut W,
}
impl<'a> HV_PARAMS_LOADED_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 31)) | ((value as u32 & 0x01) << 31);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:7 - PROG&PRE_PROG: R-grant blocking delay on seq1-seq2 transition. Scale = ANA_CTL0.SCALE_SEQ12 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
    #[inline(always)]
    pub fn rgrant_delay_prg_seq12(&self) -> RGRANT_DELAY_PRG_SEQ12_R {
        RGRANT_DELAY_PRG_SEQ12_R::new((self.bits & 0xff) as u8)
    }
    #[doc = "Bits 8:15 - PROG&PRE_PROG: R-grant blocking delay on seq2-seq3 transition. Scale = ANA_CTL0.SCALE_SEQ23 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
    #[inline(always)]
    pub fn rgrant_delay_prg_seq23(&self) -> RGRANT_DELAY_PRG_SEQ23_R {
        RGRANT_DELAY_PRG_SEQ23_R::new(((self.bits >> 8) & 0xff) as u8)
    }
    #[doc = "Bits 16:23 - PROG&PRE_PROG & ERASE: R-grant blocking delay on seq3-seq0 transition. Scale = ANA_CTL0.SCALE_SEQ30 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
    #[inline(always)]
    pub fn rgrant_delay_seq30(&self) -> RGRANT_DELAY_SEQ30_R {
        RGRANT_DELAY_SEQ30_R::new(((self.bits >> 16) & 0xff) as u8)
    }
    #[doc = "Bits 24:27 - Frequency divider from clk_t to create the 8MHz reference clock for R_grant delay The value of this field is the integer result of 'clk_t frequency / 8'. Example: for clk_t=100 this field is INT(100/8) =12. This field is updated at runtime with the 'SW_RGRANT_DELAY_CLK ' value from the HV parameters table"]
    #[inline(always)]
    pub fn rgrant_delay_clk(&self) -> RGRANT_DELAY_CLK_R {
        RGRANT_DELAY_CLK_R::new(((self.bits >> 24) & 0x0f) as u8)
    }
    #[doc = "Bit 31 - 0: HV Pulse common params not loaded 1: HV Pulse common params loaded: r-grant delays, r-grant scale, prescaler, timer values for seq1,seq2_pre, seq2_post, seq3"]
    #[inline(always)]
    pub fn hv_params_loaded(&self) -> HV_PARAMS_LOADED_R {
        HV_PARAMS_LOADED_R::new(((self.bits >> 31) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bits 0:7 - PROG&PRE_PROG: R-grant blocking delay on seq1-seq2 transition. Scale = ANA_CTL0.SCALE_SEQ12 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
    #[inline(always)]
    pub fn rgrant_delay_prg_seq12(&mut self) -> RGRANT_DELAY_PRG_SEQ12_W {
        RGRANT_DELAY_PRG_SEQ12_W { w: self }
    }
    #[doc = "Bits 8:15 - PROG&PRE_PROG: R-grant blocking delay on seq2-seq3 transition. Scale = ANA_CTL0.SCALE_SEQ23 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
    #[inline(always)]
    pub fn rgrant_delay_prg_seq23(&mut self) -> RGRANT_DELAY_PRG_SEQ23_W {
        RGRANT_DELAY_PRG_SEQ23_W { w: self }
    }
    #[doc = "Bits 16:23 - PROG&PRE_PROG & ERASE: R-grant blocking delay on seq3-seq0 transition. Scale = ANA_CTL0.SCALE_SEQ30 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
    #[inline(always)]
    pub fn rgrant_delay_seq30(&mut self) -> RGRANT_DELAY_SEQ30_W {
        RGRANT_DELAY_SEQ30_W { w: self }
    }
    #[doc = "Bits 24:27 - Frequency divider from clk_t to create the 8MHz reference clock for R_grant delay The value of this field is the integer result of 'clk_t frequency / 8'. Example: for clk_t=100 this field is INT(100/8) =12. This field is updated at runtime with the 'SW_RGRANT_DELAY_CLK ' value from the HV parameters table"]
    #[inline(always)]
    pub fn rgrant_delay_clk(&mut self) -> RGRANT_DELAY_CLK_W {
        RGRANT_DELAY_CLK_W { w: self }
    }
    #[doc = "Bit 31 - 0: HV Pulse common params not loaded 1: HV Pulse common params loaded: r-grant delays, r-grant scale, prescaler, timer values for seq1,seq2_pre, seq2_post, seq3"]
    #[inline(always)]
    pub fn hv_params_loaded(&mut self) -> HV_PARAMS_LOADED_W {
        HV_PARAMS_LOADED_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "R-grant delay for program\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [rgrant_delay_prg](index.html) module"]
pub struct RGRANT_DELAY_PRG_SPEC;
impl crate::RegisterSpec for RGRANT_DELAY_PRG_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [rgrant_delay_prg::R](R) reader structure"]
impl crate::Readable for RGRANT_DELAY_PRG_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [rgrant_delay_prg::W](W) writer structure"]
impl crate::Writable for RGRANT_DELAY_PRG_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets RGRANT_DELAY_PRG to value 0x0100_0000"]
impl crate::Resettable for RGRANT_DELAY_PRG_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0x0100_0000
    }
}
