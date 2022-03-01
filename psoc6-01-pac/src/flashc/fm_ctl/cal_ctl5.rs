#[doc = "Register `CAL_CTL5` reader"]
pub struct R(crate::R<CAL_CTL5_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CAL_CTL5_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CAL_CTL5_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CAL_CTL5_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `CAL_CTL5` writer"]
pub struct W(crate::W<CAL_CTL5_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<CAL_CTL5_SPEC>;
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
impl From<crate::W<CAL_CTL5_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<CAL_CTL5_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `VLIM_TRIM_LP_HV` reader - VLIM_TRIM\\[1:0\\]: 00: V2 = 650mV 01: V2 = 600mV 10: V2 = 750mV 11: V2 = 700mV"]
pub struct VLIM_TRIM_LP_HV_R(crate::FieldReader<u8, u8>);
impl VLIM_TRIM_LP_HV_R {
    pub(crate) fn new(bits: u8) -> Self {
        VLIM_TRIM_LP_HV_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for VLIM_TRIM_LP_HV_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `VLIM_TRIM_LP_HV` writer - VLIM_TRIM\\[1:0\\]: 00: V2 = 650mV 01: V2 = 600mV 10: V2 = 750mV 11: V2 = 700mV"]
pub struct VLIM_TRIM_LP_HV_W<'a> {
    w: &'a mut W,
}
impl<'a> VLIM_TRIM_LP_HV_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !0x03) | (value as u32 & 0x03);
        self.w
    }
}
#[doc = "Field `IDAC_LP_HV` reader - Sets the sense current reference offset value. Refer to trim tables for details."]
pub struct IDAC_LP_HV_R(crate::FieldReader<u8, u8>);
impl IDAC_LP_HV_R {
    pub(crate) fn new(bits: u8) -> Self {
        IDAC_LP_HV_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for IDAC_LP_HV_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `IDAC_LP_HV` writer - Sets the sense current reference offset value. Refer to trim tables for details."]
pub struct IDAC_LP_HV_W<'a> {
    w: &'a mut W,
}
impl<'a> IDAC_LP_HV_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x0f << 2)) | ((value as u32 & 0x0f) << 2);
        self.w
    }
}
#[doc = "Field `SDAC_LP_HV` reader - Sets the sense current reference temp slope. Refer to trim tables for details."]
pub struct SDAC_LP_HV_R(crate::FieldReader<u8, u8>);
impl SDAC_LP_HV_R {
    pub(crate) fn new(bits: u8) -> Self {
        SDAC_LP_HV_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SDAC_LP_HV_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SDAC_LP_HV` writer - Sets the sense current reference temp slope. Refer to trim tables for details."]
pub struct SDAC_LP_HV_W<'a> {
    w: &'a mut W,
}
impl<'a> SDAC_LP_HV_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x03 << 6)) | ((value as u32 & 0x03) << 6);
        self.w
    }
}
#[doc = "Field `ITIM_LP_HV` reader - Trimming of timing current"]
pub struct ITIM_LP_HV_R(crate::FieldReader<u8, u8>);
impl ITIM_LP_HV_R {
    pub(crate) fn new(bits: u8) -> Self {
        ITIM_LP_HV_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ITIM_LP_HV_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ITIM_LP_HV` writer - Trimming of timing current"]
pub struct ITIM_LP_HV_W<'a> {
    w: &'a mut W,
}
impl<'a> ITIM_LP_HV_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x1f << 8)) | ((value as u32 & 0x1f) << 8);
        self.w
    }
}
#[doc = "Field `FM_READY_DEL_LP_HV` reader - 00: Delayed by 1us 01: Delayed by 1.5us 10: Delayed by 2.0us 11: Delayed by 2.5us"]
pub struct FM_READY_DEL_LP_HV_R(crate::FieldReader<u8, u8>);
impl FM_READY_DEL_LP_HV_R {
    pub(crate) fn new(bits: u8) -> Self {
        FM_READY_DEL_LP_HV_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for FM_READY_DEL_LP_HV_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `FM_READY_DEL_LP_HV` writer - 00: Delayed by 1us 01: Delayed by 1.5us 10: Delayed by 2.0us 11: Delayed by 2.5us"]
pub struct FM_READY_DEL_LP_HV_W<'a> {
    w: &'a mut W,
}
impl<'a> FM_READY_DEL_LP_HV_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x03 << 13)) | ((value as u32 & 0x03) << 13);
        self.w
    }
}
#[doc = "Field `SPARE451_LP_HV` reader - N/A"]
pub struct SPARE451_LP_HV_R(crate::FieldReader<bool, bool>);
impl SPARE451_LP_HV_R {
    pub(crate) fn new(bits: bool) -> Self {
        SPARE451_LP_HV_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SPARE451_LP_HV_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SPARE451_LP_HV` writer - N/A"]
pub struct SPARE451_LP_HV_W<'a> {
    w: &'a mut W,
}
impl<'a> SPARE451_LP_HV_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 15)) | ((value as u32 & 0x01) << 15);
        self.w
    }
}
#[doc = "Field `SPARE52_HV` reader - N/A"]
pub struct SPARE52_HV_R(crate::FieldReader<u8, u8>);
impl SPARE52_HV_R {
    pub(crate) fn new(bits: u8) -> Self {
        SPARE52_HV_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SPARE52_HV_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SPARE52_HV` writer - N/A"]
pub struct SPARE52_HV_W<'a> {
    w: &'a mut W,
}
impl<'a> SPARE52_HV_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x03 << 16)) | ((value as u32 & 0x03) << 16);
        self.w
    }
}
#[doc = "Field `AMUX_SEL_HV` reader - Amux Select in AMUX_UGB 00: Bypass UGB for both amuxbusa and amuxbusb 01: Bypass UGB for amuxbusb while passing amuxbusa through UGB. 10: Bypass UGB for amuxbusa while passing amuxbusb through UGB. 11: UGB Calibrate mode"]
pub struct AMUX_SEL_HV_R(crate::FieldReader<u8, u8>);
impl AMUX_SEL_HV_R {
    pub(crate) fn new(bits: u8) -> Self {
        AMUX_SEL_HV_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for AMUX_SEL_HV_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `AMUX_SEL_HV` writer - Amux Select in AMUX_UGB 00: Bypass UGB for both amuxbusa and amuxbusb 01: Bypass UGB for amuxbusb while passing amuxbusa through UGB. 10: Bypass UGB for amuxbusa while passing amuxbusb through UGB. 11: UGB Calibrate mode"]
pub struct AMUX_SEL_HV_W<'a> {
    w: &'a mut W,
}
impl<'a> AMUX_SEL_HV_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x03 << 18)) | ((value as u32 & 0x03) << 18);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:1 - VLIM_TRIM\\[1:0\\]: 00: V2 = 650mV 01: V2 = 600mV 10: V2 = 750mV 11: V2 = 700mV"]
    #[inline(always)]
    pub fn vlim_trim_lp_hv(&self) -> VLIM_TRIM_LP_HV_R {
        VLIM_TRIM_LP_HV_R::new((self.bits & 0x03) as u8)
    }
    #[doc = "Bits 2:5 - Sets the sense current reference offset value. Refer to trim tables for details."]
    #[inline(always)]
    pub fn idac_lp_hv(&self) -> IDAC_LP_HV_R {
        IDAC_LP_HV_R::new(((self.bits >> 2) & 0x0f) as u8)
    }
    #[doc = "Bits 6:7 - Sets the sense current reference temp slope. Refer to trim tables for details."]
    #[inline(always)]
    pub fn sdac_lp_hv(&self) -> SDAC_LP_HV_R {
        SDAC_LP_HV_R::new(((self.bits >> 6) & 0x03) as u8)
    }
    #[doc = "Bits 8:12 - Trimming of timing current"]
    #[inline(always)]
    pub fn itim_lp_hv(&self) -> ITIM_LP_HV_R {
        ITIM_LP_HV_R::new(((self.bits >> 8) & 0x1f) as u8)
    }
    #[doc = "Bits 13:14 - 00: Delayed by 1us 01: Delayed by 1.5us 10: Delayed by 2.0us 11: Delayed by 2.5us"]
    #[inline(always)]
    pub fn fm_ready_del_lp_hv(&self) -> FM_READY_DEL_LP_HV_R {
        FM_READY_DEL_LP_HV_R::new(((self.bits >> 13) & 0x03) as u8)
    }
    #[doc = "Bit 15 - N/A"]
    #[inline(always)]
    pub fn spare451_lp_hv(&self) -> SPARE451_LP_HV_R {
        SPARE451_LP_HV_R::new(((self.bits >> 15) & 0x01) != 0)
    }
    #[doc = "Bits 16:17 - N/A"]
    #[inline(always)]
    pub fn spare52_hv(&self) -> SPARE52_HV_R {
        SPARE52_HV_R::new(((self.bits >> 16) & 0x03) as u8)
    }
    #[doc = "Bits 18:19 - Amux Select in AMUX_UGB 00: Bypass UGB for both amuxbusa and amuxbusb 01: Bypass UGB for amuxbusb while passing amuxbusa through UGB. 10: Bypass UGB for amuxbusa while passing amuxbusb through UGB. 11: UGB Calibrate mode"]
    #[inline(always)]
    pub fn amux_sel_hv(&self) -> AMUX_SEL_HV_R {
        AMUX_SEL_HV_R::new(((self.bits >> 18) & 0x03) as u8)
    }
}
impl W {
    #[doc = "Bits 0:1 - VLIM_TRIM\\[1:0\\]: 00: V2 = 650mV 01: V2 = 600mV 10: V2 = 750mV 11: V2 = 700mV"]
    #[inline(always)]
    pub fn vlim_trim_lp_hv(&mut self) -> VLIM_TRIM_LP_HV_W {
        VLIM_TRIM_LP_HV_W { w: self }
    }
    #[doc = "Bits 2:5 - Sets the sense current reference offset value. Refer to trim tables for details."]
    #[inline(always)]
    pub fn idac_lp_hv(&mut self) -> IDAC_LP_HV_W {
        IDAC_LP_HV_W { w: self }
    }
    #[doc = "Bits 6:7 - Sets the sense current reference temp slope. Refer to trim tables for details."]
    #[inline(always)]
    pub fn sdac_lp_hv(&mut self) -> SDAC_LP_HV_W {
        SDAC_LP_HV_W { w: self }
    }
    #[doc = "Bits 8:12 - Trimming of timing current"]
    #[inline(always)]
    pub fn itim_lp_hv(&mut self) -> ITIM_LP_HV_W {
        ITIM_LP_HV_W { w: self }
    }
    #[doc = "Bits 13:14 - 00: Delayed by 1us 01: Delayed by 1.5us 10: Delayed by 2.0us 11: Delayed by 2.5us"]
    #[inline(always)]
    pub fn fm_ready_del_lp_hv(&mut self) -> FM_READY_DEL_LP_HV_W {
        FM_READY_DEL_LP_HV_W { w: self }
    }
    #[doc = "Bit 15 - N/A"]
    #[inline(always)]
    pub fn spare451_lp_hv(&mut self) -> SPARE451_LP_HV_W {
        SPARE451_LP_HV_W { w: self }
    }
    #[doc = "Bits 16:17 - N/A"]
    #[inline(always)]
    pub fn spare52_hv(&mut self) -> SPARE52_HV_W {
        SPARE52_HV_W { w: self }
    }
    #[doc = "Bits 18:19 - Amux Select in AMUX_UGB 00: Bypass UGB for both amuxbusa and amuxbusb 01: Bypass UGB for amuxbusb while passing amuxbusa through UGB. 10: Bypass UGB for amuxbusa while passing amuxbusb through UGB. 11: UGB Calibrate mode"]
    #[inline(always)]
    pub fn amux_sel_hv(&mut self) -> AMUX_SEL_HV_W {
        AMUX_SEL_HV_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Cal control\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [cal_ctl5](index.html) module"]
pub struct CAL_CTL5_SPEC;
impl crate::RegisterSpec for CAL_CTL5_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [cal_ctl5::R](R) reader structure"]
impl crate::Readable for CAL_CTL5_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [cal_ctl5::W](W) writer structure"]
impl crate::Writable for CAL_CTL5_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets CAL_CTL5 to value 0x2ae0"]
impl crate::Resettable for CAL_CTL5_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0x2ae0
    }
}
