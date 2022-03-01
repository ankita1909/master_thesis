#[doc = "Register `CAL_CTL6` reader"]
pub struct R(crate::R<CAL_CTL6_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CAL_CTL6_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CAL_CTL6_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CAL_CTL6_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `CAL_CTL6` writer"]
pub struct W(crate::W<CAL_CTL6_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<CAL_CTL6_SPEC>;
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
impl From<crate::W<CAL_CTL6_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<CAL_CTL6_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `SA_CTL_TRIM_T1_ULP_HV` reader - clk_trk delay"]
pub struct SA_CTL_TRIM_T1_ULP_HV_R(crate::FieldReader<bool, bool>);
impl SA_CTL_TRIM_T1_ULP_HV_R {
    pub(crate) fn new(bits: bool) -> Self {
        SA_CTL_TRIM_T1_ULP_HV_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SA_CTL_TRIM_T1_ULP_HV_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SA_CTL_TRIM_T1_ULP_HV` writer - clk_trk delay"]
pub struct SA_CTL_TRIM_T1_ULP_HV_W<'a> {
    w: &'a mut W,
}
impl<'a> SA_CTL_TRIM_T1_ULP_HV_W<'a> {
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
        self.w.bits = (self.w.bits & !0x01) | (value as u32 & 0x01);
        self.w
    }
}
#[doc = "Field `SA_CTL_TRIM_T4_ULP_HV` reader - SA_CTL_TRIM_T4_ULP_HV<2>= eqi (eq current trim) SA_CTL_TRIM_T4_ULP_HV<1:0> = eqc (eq cap trim)"]
pub struct SA_CTL_TRIM_T4_ULP_HV_R(crate::FieldReader<u8, u8>);
impl SA_CTL_TRIM_T4_ULP_HV_R {
    pub(crate) fn new(bits: u8) -> Self {
        SA_CTL_TRIM_T4_ULP_HV_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SA_CTL_TRIM_T4_ULP_HV_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SA_CTL_TRIM_T4_ULP_HV` writer - SA_CTL_TRIM_T4_ULP_HV<2>= eqi (eq current trim) SA_CTL_TRIM_T4_ULP_HV<1:0> = eqc (eq cap trim)"]
pub struct SA_CTL_TRIM_T4_ULP_HV_W<'a> {
    w: &'a mut W,
}
impl<'a> SA_CTL_TRIM_T4_ULP_HV_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x07 << 1)) | ((value as u32 & 0x07) << 1);
        self.w
    }
}
#[doc = "Field `SA_CTL_TRIM_T5_ULP_HV` reader - SA_CTL_TRIM_T5_ULP_HV<2>= evi (integration current trim) SA_CTL_TRIM_T5_ULP_HV<1:0> = evc (integration cap trim)"]
pub struct SA_CTL_TRIM_T5_ULP_HV_R(crate::FieldReader<u8, u8>);
impl SA_CTL_TRIM_T5_ULP_HV_R {
    pub(crate) fn new(bits: u8) -> Self {
        SA_CTL_TRIM_T5_ULP_HV_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SA_CTL_TRIM_T5_ULP_HV_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SA_CTL_TRIM_T5_ULP_HV` writer - SA_CTL_TRIM_T5_ULP_HV<2>= evi (integration current trim) SA_CTL_TRIM_T5_ULP_HV<1:0> = evc (integration cap trim)"]
pub struct SA_CTL_TRIM_T5_ULP_HV_W<'a> {
    w: &'a mut W,
}
impl<'a> SA_CTL_TRIM_T5_ULP_HV_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x07 << 4)) | ((value as u32 & 0x07) << 4);
        self.w
    }
}
#[doc = "Field `SA_CTL_TRIM_T6_ULP_HV` reader - SA_CTL_TRIM_T6_ULP_HV<1>= eni (enable current trim) SA_CTL_TRIM_T6_ULP_HV<0> = ecn (enable cap trim)"]
pub struct SA_CTL_TRIM_T6_ULP_HV_R(crate::FieldReader<u8, u8>);
impl SA_CTL_TRIM_T6_ULP_HV_R {
    pub(crate) fn new(bits: u8) -> Self {
        SA_CTL_TRIM_T6_ULP_HV_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SA_CTL_TRIM_T6_ULP_HV_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SA_CTL_TRIM_T6_ULP_HV` writer - SA_CTL_TRIM_T6_ULP_HV<1>= eni (enable current trim) SA_CTL_TRIM_T6_ULP_HV<0> = ecn (enable cap trim)"]
pub struct SA_CTL_TRIM_T6_ULP_HV_W<'a> {
    w: &'a mut W,
}
impl<'a> SA_CTL_TRIM_T6_ULP_HV_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x03 << 7)) | ((value as u32 & 0x03) << 7);
        self.w
    }
}
#[doc = "Field `SA_CTL_TRIM_T8_ULP_HV` reader - saen3 pulse width trim (Current trim)"]
pub struct SA_CTL_TRIM_T8_ULP_HV_R(crate::FieldReader<bool, bool>);
impl SA_CTL_TRIM_T8_ULP_HV_R {
    pub(crate) fn new(bits: bool) -> Self {
        SA_CTL_TRIM_T8_ULP_HV_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SA_CTL_TRIM_T8_ULP_HV_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SA_CTL_TRIM_T8_ULP_HV` writer - saen3 pulse width trim (Current trim)"]
pub struct SA_CTL_TRIM_T8_ULP_HV_W<'a> {
    w: &'a mut W,
}
impl<'a> SA_CTL_TRIM_T8_ULP_HV_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 9)) | ((value as u32 & 0x01) << 9);
        self.w
    }
}
#[doc = "Field `SA_CTL_TRIM_T1_LP_HV` reader - clk_trk delay"]
pub struct SA_CTL_TRIM_T1_LP_HV_R(crate::FieldReader<bool, bool>);
impl SA_CTL_TRIM_T1_LP_HV_R {
    pub(crate) fn new(bits: bool) -> Self {
        SA_CTL_TRIM_T1_LP_HV_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SA_CTL_TRIM_T1_LP_HV_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SA_CTL_TRIM_T1_LP_HV` writer - clk_trk delay"]
pub struct SA_CTL_TRIM_T1_LP_HV_W<'a> {
    w: &'a mut W,
}
impl<'a> SA_CTL_TRIM_T1_LP_HV_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 10)) | ((value as u32 & 0x01) << 10);
        self.w
    }
}
#[doc = "Field `SA_CTL_TRIM_T4_LP_HV` reader - SA_CTL_TRIM_T4_LP_HV<2>= eqi (eq current trim) SA_CTL_TRIM_T4_LP_HV<1:0> = eqc (eq cap trim)"]
pub struct SA_CTL_TRIM_T4_LP_HV_R(crate::FieldReader<u8, u8>);
impl SA_CTL_TRIM_T4_LP_HV_R {
    pub(crate) fn new(bits: u8) -> Self {
        SA_CTL_TRIM_T4_LP_HV_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SA_CTL_TRIM_T4_LP_HV_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SA_CTL_TRIM_T4_LP_HV` writer - SA_CTL_TRIM_T4_LP_HV<2>= eqi (eq current trim) SA_CTL_TRIM_T4_LP_HV<1:0> = eqc (eq cap trim)"]
pub struct SA_CTL_TRIM_T4_LP_HV_W<'a> {
    w: &'a mut W,
}
impl<'a> SA_CTL_TRIM_T4_LP_HV_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x07 << 11)) | ((value as u32 & 0x07) << 11);
        self.w
    }
}
#[doc = "Field `SA_CTL_TRIM_T5_LP_HV` reader - SA_CTL_TRIM_T5_LP_HV<2>= evi (integration current trim) SA_CTL_TRIM_T5_LP_HV<1:0> = evc (integration cap trim)"]
pub struct SA_CTL_TRIM_T5_LP_HV_R(crate::FieldReader<u8, u8>);
impl SA_CTL_TRIM_T5_LP_HV_R {
    pub(crate) fn new(bits: u8) -> Self {
        SA_CTL_TRIM_T5_LP_HV_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SA_CTL_TRIM_T5_LP_HV_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SA_CTL_TRIM_T5_LP_HV` writer - SA_CTL_TRIM_T5_LP_HV<2>= evi (integration current trim) SA_CTL_TRIM_T5_LP_HV<1:0> = evc (integration cap trim)"]
pub struct SA_CTL_TRIM_T5_LP_HV_W<'a> {
    w: &'a mut W,
}
impl<'a> SA_CTL_TRIM_T5_LP_HV_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x07 << 14)) | ((value as u32 & 0x07) << 14);
        self.w
    }
}
#[doc = "Field `SA_CTL_TRIM_T6_LP_HV` reader - SA_CTL_TRIM_T6_LP_HV<1>= eni (enable current trim) SA_CTL_TRIM_T6_LP_HV<0> = ecn (enable cap trim)"]
pub struct SA_CTL_TRIM_T6_LP_HV_R(crate::FieldReader<u8, u8>);
impl SA_CTL_TRIM_T6_LP_HV_R {
    pub(crate) fn new(bits: u8) -> Self {
        SA_CTL_TRIM_T6_LP_HV_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SA_CTL_TRIM_T6_LP_HV_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SA_CTL_TRIM_T6_LP_HV` writer - SA_CTL_TRIM_T6_LP_HV<1>= eni (enable current trim) SA_CTL_TRIM_T6_LP_HV<0> = ecn (enable cap trim)"]
pub struct SA_CTL_TRIM_T6_LP_HV_W<'a> {
    w: &'a mut W,
}
impl<'a> SA_CTL_TRIM_T6_LP_HV_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x03 << 17)) | ((value as u32 & 0x03) << 17);
        self.w
    }
}
#[doc = "Field `SA_CTL_TRIM_T8_LP_HV` reader - saen3 pulse width trim (Current trim)"]
pub struct SA_CTL_TRIM_T8_LP_HV_R(crate::FieldReader<bool, bool>);
impl SA_CTL_TRIM_T8_LP_HV_R {
    pub(crate) fn new(bits: bool) -> Self {
        SA_CTL_TRIM_T8_LP_HV_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SA_CTL_TRIM_T8_LP_HV_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SA_CTL_TRIM_T8_LP_HV` writer - saen3 pulse width trim (Current trim)"]
pub struct SA_CTL_TRIM_T8_LP_HV_W<'a> {
    w: &'a mut W,
}
impl<'a> SA_CTL_TRIM_T8_LP_HV_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 19)) | ((value as u32 & 0x01) << 19);
        self.w
    }
}
impl R {
    #[doc = "Bit 0 - clk_trk delay"]
    #[inline(always)]
    pub fn sa_ctl_trim_t1_ulp_hv(&self) -> SA_CTL_TRIM_T1_ULP_HV_R {
        SA_CTL_TRIM_T1_ULP_HV_R::new((self.bits & 0x01) != 0)
    }
    #[doc = "Bits 1:3 - SA_CTL_TRIM_T4_ULP_HV<2>= eqi (eq current trim) SA_CTL_TRIM_T4_ULP_HV<1:0> = eqc (eq cap trim)"]
    #[inline(always)]
    pub fn sa_ctl_trim_t4_ulp_hv(&self) -> SA_CTL_TRIM_T4_ULP_HV_R {
        SA_CTL_TRIM_T4_ULP_HV_R::new(((self.bits >> 1) & 0x07) as u8)
    }
    #[doc = "Bits 4:6 - SA_CTL_TRIM_T5_ULP_HV<2>= evi (integration current trim) SA_CTL_TRIM_T5_ULP_HV<1:0> = evc (integration cap trim)"]
    #[inline(always)]
    pub fn sa_ctl_trim_t5_ulp_hv(&self) -> SA_CTL_TRIM_T5_ULP_HV_R {
        SA_CTL_TRIM_T5_ULP_HV_R::new(((self.bits >> 4) & 0x07) as u8)
    }
    #[doc = "Bits 7:8 - SA_CTL_TRIM_T6_ULP_HV<1>= eni (enable current trim) SA_CTL_TRIM_T6_ULP_HV<0> = ecn (enable cap trim)"]
    #[inline(always)]
    pub fn sa_ctl_trim_t6_ulp_hv(&self) -> SA_CTL_TRIM_T6_ULP_HV_R {
        SA_CTL_TRIM_T6_ULP_HV_R::new(((self.bits >> 7) & 0x03) as u8)
    }
    #[doc = "Bit 9 - saen3 pulse width trim (Current trim)"]
    #[inline(always)]
    pub fn sa_ctl_trim_t8_ulp_hv(&self) -> SA_CTL_TRIM_T8_ULP_HV_R {
        SA_CTL_TRIM_T8_ULP_HV_R::new(((self.bits >> 9) & 0x01) != 0)
    }
    #[doc = "Bit 10 - clk_trk delay"]
    #[inline(always)]
    pub fn sa_ctl_trim_t1_lp_hv(&self) -> SA_CTL_TRIM_T1_LP_HV_R {
        SA_CTL_TRIM_T1_LP_HV_R::new(((self.bits >> 10) & 0x01) != 0)
    }
    #[doc = "Bits 11:13 - SA_CTL_TRIM_T4_LP_HV<2>= eqi (eq current trim) SA_CTL_TRIM_T4_LP_HV<1:0> = eqc (eq cap trim)"]
    #[inline(always)]
    pub fn sa_ctl_trim_t4_lp_hv(&self) -> SA_CTL_TRIM_T4_LP_HV_R {
        SA_CTL_TRIM_T4_LP_HV_R::new(((self.bits >> 11) & 0x07) as u8)
    }
    #[doc = "Bits 14:16 - SA_CTL_TRIM_T5_LP_HV<2>= evi (integration current trim) SA_CTL_TRIM_T5_LP_HV<1:0> = evc (integration cap trim)"]
    #[inline(always)]
    pub fn sa_ctl_trim_t5_lp_hv(&self) -> SA_CTL_TRIM_T5_LP_HV_R {
        SA_CTL_TRIM_T5_LP_HV_R::new(((self.bits >> 14) & 0x07) as u8)
    }
    #[doc = "Bits 17:18 - SA_CTL_TRIM_T6_LP_HV<1>= eni (enable current trim) SA_CTL_TRIM_T6_LP_HV<0> = ecn (enable cap trim)"]
    #[inline(always)]
    pub fn sa_ctl_trim_t6_lp_hv(&self) -> SA_CTL_TRIM_T6_LP_HV_R {
        SA_CTL_TRIM_T6_LP_HV_R::new(((self.bits >> 17) & 0x03) as u8)
    }
    #[doc = "Bit 19 - saen3 pulse width trim (Current trim)"]
    #[inline(always)]
    pub fn sa_ctl_trim_t8_lp_hv(&self) -> SA_CTL_TRIM_T8_LP_HV_R {
        SA_CTL_TRIM_T8_LP_HV_R::new(((self.bits >> 19) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bit 0 - clk_trk delay"]
    #[inline(always)]
    pub fn sa_ctl_trim_t1_ulp_hv(&mut self) -> SA_CTL_TRIM_T1_ULP_HV_W {
        SA_CTL_TRIM_T1_ULP_HV_W { w: self }
    }
    #[doc = "Bits 1:3 - SA_CTL_TRIM_T4_ULP_HV<2>= eqi (eq current trim) SA_CTL_TRIM_T4_ULP_HV<1:0> = eqc (eq cap trim)"]
    #[inline(always)]
    pub fn sa_ctl_trim_t4_ulp_hv(&mut self) -> SA_CTL_TRIM_T4_ULP_HV_W {
        SA_CTL_TRIM_T4_ULP_HV_W { w: self }
    }
    #[doc = "Bits 4:6 - SA_CTL_TRIM_T5_ULP_HV<2>= evi (integration current trim) SA_CTL_TRIM_T5_ULP_HV<1:0> = evc (integration cap trim)"]
    #[inline(always)]
    pub fn sa_ctl_trim_t5_ulp_hv(&mut self) -> SA_CTL_TRIM_T5_ULP_HV_W {
        SA_CTL_TRIM_T5_ULP_HV_W { w: self }
    }
    #[doc = "Bits 7:8 - SA_CTL_TRIM_T6_ULP_HV<1>= eni (enable current trim) SA_CTL_TRIM_T6_ULP_HV<0> = ecn (enable cap trim)"]
    #[inline(always)]
    pub fn sa_ctl_trim_t6_ulp_hv(&mut self) -> SA_CTL_TRIM_T6_ULP_HV_W {
        SA_CTL_TRIM_T6_ULP_HV_W { w: self }
    }
    #[doc = "Bit 9 - saen3 pulse width trim (Current trim)"]
    #[inline(always)]
    pub fn sa_ctl_trim_t8_ulp_hv(&mut self) -> SA_CTL_TRIM_T8_ULP_HV_W {
        SA_CTL_TRIM_T8_ULP_HV_W { w: self }
    }
    #[doc = "Bit 10 - clk_trk delay"]
    #[inline(always)]
    pub fn sa_ctl_trim_t1_lp_hv(&mut self) -> SA_CTL_TRIM_T1_LP_HV_W {
        SA_CTL_TRIM_T1_LP_HV_W { w: self }
    }
    #[doc = "Bits 11:13 - SA_CTL_TRIM_T4_LP_HV<2>= eqi (eq current trim) SA_CTL_TRIM_T4_LP_HV<1:0> = eqc (eq cap trim)"]
    #[inline(always)]
    pub fn sa_ctl_trim_t4_lp_hv(&mut self) -> SA_CTL_TRIM_T4_LP_HV_W {
        SA_CTL_TRIM_T4_LP_HV_W { w: self }
    }
    #[doc = "Bits 14:16 - SA_CTL_TRIM_T5_LP_HV<2>= evi (integration current trim) SA_CTL_TRIM_T5_LP_HV<1:0> = evc (integration cap trim)"]
    #[inline(always)]
    pub fn sa_ctl_trim_t5_lp_hv(&mut self) -> SA_CTL_TRIM_T5_LP_HV_W {
        SA_CTL_TRIM_T5_LP_HV_W { w: self }
    }
    #[doc = "Bits 17:18 - SA_CTL_TRIM_T6_LP_HV<1>= eni (enable current trim) SA_CTL_TRIM_T6_LP_HV<0> = ecn (enable cap trim)"]
    #[inline(always)]
    pub fn sa_ctl_trim_t6_lp_hv(&mut self) -> SA_CTL_TRIM_T6_LP_HV_W {
        SA_CTL_TRIM_T6_LP_HV_W { w: self }
    }
    #[doc = "Bit 19 - saen3 pulse width trim (Current trim)"]
    #[inline(always)]
    pub fn sa_ctl_trim_t8_lp_hv(&mut self) -> SA_CTL_TRIM_T8_LP_HV_W {
        SA_CTL_TRIM_T8_LP_HV_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "SA trim LP/ULP\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [cal_ctl6](index.html) module"]
pub struct CAL_CTL6_SPEC;
impl crate::RegisterSpec for CAL_CTL6_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [cal_ctl6::R](R) reader structure"]
impl crate::Readable for CAL_CTL6_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [cal_ctl6::W](W) writer structure"]
impl crate::Writable for CAL_CTL6_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets CAL_CTL6 to value 0x0003_6f7f"]
impl crate::Resettable for CAL_CTL6_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0x0003_6f7f
    }
}
