#[doc = "Register `TIMER_CLK_CTL` reader"]
pub struct R(crate::R<TIMER_CLK_CTL_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<TIMER_CLK_CTL_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<TIMER_CLK_CTL_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<TIMER_CLK_CTL_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `TIMER_CLK_CTL` writer"]
pub struct W(crate::W<TIMER_CLK_CTL_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<TIMER_CLK_CTL_SPEC>;
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
impl From<crate::W<TIMER_CLK_CTL_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<TIMER_CLK_CTL_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `TIMER_CLOCK_FREQ` reader - Clk_t frequency divider to provide the 1MHz reference clock for the Regif Timer. Equal to the frequency in MHz of the timer clock 'clk_t'. Example: if 'clk_t' has a frequency of 4 MHz then this field value is '4' Max clk_t frequency = 100MHz. This field is updated at runtime with the 'SW_TIMER_CLOCK_FREQ ' value from the HV parameters table"]
pub struct TIMER_CLOCK_FREQ_R(crate::FieldReader<u8, u8>);
impl TIMER_CLOCK_FREQ_R {
    pub(crate) fn new(bits: u8) -> Self {
        TIMER_CLOCK_FREQ_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for TIMER_CLOCK_FREQ_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `TIMER_CLOCK_FREQ` writer - Clk_t frequency divider to provide the 1MHz reference clock for the Regif Timer. Equal to the frequency in MHz of the timer clock 'clk_t'. Example: if 'clk_t' has a frequency of 4 MHz then this field value is '4' Max clk_t frequency = 100MHz. This field is updated at runtime with the 'SW_TIMER_CLOCK_FREQ ' value from the HV parameters table"]
pub struct TIMER_CLOCK_FREQ_W<'a> {
    w: &'a mut W,
}
impl<'a> TIMER_CLOCK_FREQ_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !0xff) | (value as u32 & 0xff);
        self.w
    }
}
#[doc = "Field `RGRANT_DELAY_PRG_PEON` reader - PROG&PRE_PROG: R-grant blocking delay on PE ON. Scale = ANA_CTL0.SCALE_PEON When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
pub struct RGRANT_DELAY_PRG_PEON_R(crate::FieldReader<u8, u8>);
impl RGRANT_DELAY_PRG_PEON_R {
    pub(crate) fn new(bits: u8) -> Self {
        RGRANT_DELAY_PRG_PEON_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RGRANT_DELAY_PRG_PEON_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `RGRANT_DELAY_PRG_PEON` writer - PROG&PRE_PROG: R-grant blocking delay on PE ON. Scale = ANA_CTL0.SCALE_PEON When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
pub struct RGRANT_DELAY_PRG_PEON_W<'a> {
    w: &'a mut W,
}
impl<'a> RGRANT_DELAY_PRG_PEON_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0xff << 8)) | ((value as u32 & 0xff) << 8);
        self.w
    }
}
#[doc = "Field `RGRANT_DELAY_PRG_PEOFF` reader - PROG&PRE_PROG: R-grant blocking delay on PE OFF. Scale = ANA_CTL0.SCALE_PEOFF When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
pub struct RGRANT_DELAY_PRG_PEOFF_R(crate::FieldReader<u8, u8>);
impl RGRANT_DELAY_PRG_PEOFF_R {
    pub(crate) fn new(bits: u8) -> Self {
        RGRANT_DELAY_PRG_PEOFF_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RGRANT_DELAY_PRG_PEOFF_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `RGRANT_DELAY_PRG_PEOFF` writer - PROG&PRE_PROG: R-grant blocking delay on PE OFF. Scale = ANA_CTL0.SCALE_PEOFF When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
pub struct RGRANT_DELAY_PRG_PEOFF_W<'a> {
    w: &'a mut W,
}
impl<'a> RGRANT_DELAY_PRG_PEOFF_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0xff << 16)) | ((value as u32 & 0xff) << 16);
        self.w
    }
}
#[doc = "Field `RGRANT_DELAY_PRG_SEQ01` reader - PROG&PRE_PROG: R-grant blocking delay on seq0-seq1 transition. Scale = ANA_CTL0.SCALE_SEQ01 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
pub struct RGRANT_DELAY_PRG_SEQ01_R(crate::FieldReader<u8, u8>);
impl RGRANT_DELAY_PRG_SEQ01_R {
    pub(crate) fn new(bits: u8) -> Self {
        RGRANT_DELAY_PRG_SEQ01_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RGRANT_DELAY_PRG_SEQ01_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `RGRANT_DELAY_PRG_SEQ01` writer - PROG&PRE_PROG: R-grant blocking delay on seq0-seq1 transition. Scale = ANA_CTL0.SCALE_SEQ01 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
pub struct RGRANT_DELAY_PRG_SEQ01_W<'a> {
    w: &'a mut W,
}
impl<'a> RGRANT_DELAY_PRG_SEQ01_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0xff << 24)) | ((value as u32 & 0xff) << 24);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:7 - Clk_t frequency divider to provide the 1MHz reference clock for the Regif Timer. Equal to the frequency in MHz of the timer clock 'clk_t'. Example: if 'clk_t' has a frequency of 4 MHz then this field value is '4' Max clk_t frequency = 100MHz. This field is updated at runtime with the 'SW_TIMER_CLOCK_FREQ ' value from the HV parameters table"]
    #[inline(always)]
    pub fn timer_clock_freq(&self) -> TIMER_CLOCK_FREQ_R {
        TIMER_CLOCK_FREQ_R::new((self.bits & 0xff) as u8)
    }
    #[doc = "Bits 8:15 - PROG&PRE_PROG: R-grant blocking delay on PE ON. Scale = ANA_CTL0.SCALE_PEON When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
    #[inline(always)]
    pub fn rgrant_delay_prg_peon(&self) -> RGRANT_DELAY_PRG_PEON_R {
        RGRANT_DELAY_PRG_PEON_R::new(((self.bits >> 8) & 0xff) as u8)
    }
    #[doc = "Bits 16:23 - PROG&PRE_PROG: R-grant blocking delay on PE OFF. Scale = ANA_CTL0.SCALE_PEOFF When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
    #[inline(always)]
    pub fn rgrant_delay_prg_peoff(&self) -> RGRANT_DELAY_PRG_PEOFF_R {
        RGRANT_DELAY_PRG_PEOFF_R::new(((self.bits >> 16) & 0xff) as u8)
    }
    #[doc = "Bits 24:31 - PROG&PRE_PROG: R-grant blocking delay on seq0-seq1 transition. Scale = ANA_CTL0.SCALE_SEQ01 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
    #[inline(always)]
    pub fn rgrant_delay_prg_seq01(&self) -> RGRANT_DELAY_PRG_SEQ01_R {
        RGRANT_DELAY_PRG_SEQ01_R::new(((self.bits >> 24) & 0xff) as u8)
    }
}
impl W {
    #[doc = "Bits 0:7 - Clk_t frequency divider to provide the 1MHz reference clock for the Regif Timer. Equal to the frequency in MHz of the timer clock 'clk_t'. Example: if 'clk_t' has a frequency of 4 MHz then this field value is '4' Max clk_t frequency = 100MHz. This field is updated at runtime with the 'SW_TIMER_CLOCK_FREQ ' value from the HV parameters table"]
    #[inline(always)]
    pub fn timer_clock_freq(&mut self) -> TIMER_CLOCK_FREQ_W {
        TIMER_CLOCK_FREQ_W { w: self }
    }
    #[doc = "Bits 8:15 - PROG&PRE_PROG: R-grant blocking delay on PE ON. Scale = ANA_CTL0.SCALE_PEON When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
    #[inline(always)]
    pub fn rgrant_delay_prg_peon(&mut self) -> RGRANT_DELAY_PRG_PEON_W {
        RGRANT_DELAY_PRG_PEON_W { w: self }
    }
    #[doc = "Bits 16:23 - PROG&PRE_PROG: R-grant blocking delay on PE OFF. Scale = ANA_CTL0.SCALE_PEOFF When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
    #[inline(always)]
    pub fn rgrant_delay_prg_peoff(&mut self) -> RGRANT_DELAY_PRG_PEOFF_W {
        RGRANT_DELAY_PRG_PEOFF_W { w: self }
    }
    #[doc = "Bits 24:31 - PROG&PRE_PROG: R-grant blocking delay on seq0-seq1 transition. Scale = ANA_CTL0.SCALE_SEQ01 When = 0 R_GRANT_DELAY control is disabled when IF_SEL=1 R_GRANT_DELAY control is disabled"]
    #[inline(always)]
    pub fn rgrant_delay_prg_seq01(&mut self) -> RGRANT_DELAY_PRG_SEQ01_W {
        RGRANT_DELAY_PRG_SEQ01_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Timer prescaler (clk_t to timer clock frequency divider)\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [timer_clk_ctl](index.html) module"]
pub struct TIMER_CLK_CTL_SPEC;
impl crate::RegisterSpec for TIMER_CLK_CTL_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [timer_clk_ctl::R](R) reader structure"]
impl crate::Readable for TIMER_CLK_CTL_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [timer_clk_ctl::W](W) writer structure"]
impl crate::Writable for TIMER_CLK_CTL_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets TIMER_CLK_CTL to value 0x08"]
impl crate::Resettable for TIMER_CLK_CTL_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0x08
    }
}
