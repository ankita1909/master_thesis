#[doc = "Register `MBIU_CTRL_R` reader"]
pub struct R(crate::R<MBIU_CTRL_R_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<MBIU_CTRL_R_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<MBIU_CTRL_R_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<MBIU_CTRL_R_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `MBIU_CTRL_R` writer"]
pub struct W(crate::W<MBIU_CTRL_R_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<MBIU_CTRL_R_SPEC>;
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
impl From<crate::W<MBIU_CTRL_R_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<MBIU_CTRL_R_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `UNDEFL_INCR_EN` reader - Undefined INCR Burst Controls generation of undefined length INCR transfer on Master interface. Values: - 0x0 (FALSE): Undefined INCR type burst is the least preferred burst on AHB Master I/F - 0x1 (TRUE): Undefined INCR type burst is the most preferred burst on AHB Master I/F"]
pub struct UNDEFL_INCR_EN_R(crate::FieldReader<bool, bool>);
impl UNDEFL_INCR_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        UNDEFL_INCR_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for UNDEFL_INCR_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `UNDEFL_INCR_EN` writer - Undefined INCR Burst Controls generation of undefined length INCR transfer on Master interface. Values: - 0x0 (FALSE): Undefined INCR type burst is the least preferred burst on AHB Master I/F - 0x1 (TRUE): Undefined INCR type burst is the most preferred burst on AHB Master I/F"]
pub struct UNDEFL_INCR_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> UNDEFL_INCR_EN_W<'a> {
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
        self.w.bits = (self.w.bits & !0x01) | (value as u8 & 0x01);
        self.w
    }
}
#[doc = "Field `BURST_INCR4_EN` reader - INCR4 Burst Controls generation of INCR4 transfers on Master interface. Values: - 0x0 (FALSE): AHB INCR4 burst type is not generated on Master I/F - 0x1 (TRUE): AHB INCR4 burst type can be generated on Master I/F"]
pub struct BURST_INCR4_EN_R(crate::FieldReader<bool, bool>);
impl BURST_INCR4_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        BURST_INCR4_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for BURST_INCR4_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `BURST_INCR4_EN` writer - INCR4 Burst Controls generation of INCR4 transfers on Master interface. Values: - 0x0 (FALSE): AHB INCR4 burst type is not generated on Master I/F - 0x1 (TRUE): AHB INCR4 burst type can be generated on Master I/F"]
pub struct BURST_INCR4_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> BURST_INCR4_EN_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 1)) | ((value as u8 & 0x01) << 1);
        self.w
    }
}
#[doc = "Field `BURST_INCR8_EN` reader - INCR8 Burst Controls generation of INCR8 transfers on Master interface. Values: - 0x0 (FALSE): AHB INCR8 burst type is not generated on Master I/F - 0x1 (TRUE): AHB INCR8 burst type can be generated on Master I/F"]
pub struct BURST_INCR8_EN_R(crate::FieldReader<bool, bool>);
impl BURST_INCR8_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        BURST_INCR8_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for BURST_INCR8_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `BURST_INCR8_EN` writer - INCR8 Burst Controls generation of INCR8 transfers on Master interface. Values: - 0x0 (FALSE): AHB INCR8 burst type is not generated on Master I/F - 0x1 (TRUE): AHB INCR8 burst type can be generated on Master I/F"]
pub struct BURST_INCR8_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> BURST_INCR8_EN_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 2)) | ((value as u8 & 0x01) << 2);
        self.w
    }
}
#[doc = "Field `BURST_INCR16_EN` reader - INCR16 Burst Controls generation of INCR16 transfers on Master interface. Values: - 0x0 (FALSE): AHB INCR16 burst type is not generated on Master I/F - 0x1 (TRUE): AHB INCR16 burst type can be generated on Master I/F"]
pub struct BURST_INCR16_EN_R(crate::FieldReader<bool, bool>);
impl BURST_INCR16_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        BURST_INCR16_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for BURST_INCR16_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `BURST_INCR16_EN` writer - INCR16 Burst Controls generation of INCR16 transfers on Master interface. Values: - 0x0 (FALSE): AHB INCR16 burst type is not generated on Master I/F - 0x1 (TRUE): AHB INCR16 burst type can be generated on Master I/F"]
pub struct BURST_INCR16_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> BURST_INCR16_EN_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 3)) | ((value as u8 & 0x01) << 3);
        self.w
    }
}
impl R {
    #[doc = "Bit 0 - Undefined INCR Burst Controls generation of undefined length INCR transfer on Master interface. Values: - 0x0 (FALSE): Undefined INCR type burst is the least preferred burst on AHB Master I/F - 0x1 (TRUE): Undefined INCR type burst is the most preferred burst on AHB Master I/F"]
    #[inline(always)]
    pub fn undefl_incr_en(&self) -> UNDEFL_INCR_EN_R {
        UNDEFL_INCR_EN_R::new((self.bits & 0x01) != 0)
    }
    #[doc = "Bit 1 - INCR4 Burst Controls generation of INCR4 transfers on Master interface. Values: - 0x0 (FALSE): AHB INCR4 burst type is not generated on Master I/F - 0x1 (TRUE): AHB INCR4 burst type can be generated on Master I/F"]
    #[inline(always)]
    pub fn burst_incr4_en(&self) -> BURST_INCR4_EN_R {
        BURST_INCR4_EN_R::new(((self.bits >> 1) & 0x01) != 0)
    }
    #[doc = "Bit 2 - INCR8 Burst Controls generation of INCR8 transfers on Master interface. Values: - 0x0 (FALSE): AHB INCR8 burst type is not generated on Master I/F - 0x1 (TRUE): AHB INCR8 burst type can be generated on Master I/F"]
    #[inline(always)]
    pub fn burst_incr8_en(&self) -> BURST_INCR8_EN_R {
        BURST_INCR8_EN_R::new(((self.bits >> 2) & 0x01) != 0)
    }
    #[doc = "Bit 3 - INCR16 Burst Controls generation of INCR16 transfers on Master interface. Values: - 0x0 (FALSE): AHB INCR16 burst type is not generated on Master I/F - 0x1 (TRUE): AHB INCR16 burst type can be generated on Master I/F"]
    #[inline(always)]
    pub fn burst_incr16_en(&self) -> BURST_INCR16_EN_R {
        BURST_INCR16_EN_R::new(((self.bits >> 3) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bit 0 - Undefined INCR Burst Controls generation of undefined length INCR transfer on Master interface. Values: - 0x0 (FALSE): Undefined INCR type burst is the least preferred burst on AHB Master I/F - 0x1 (TRUE): Undefined INCR type burst is the most preferred burst on AHB Master I/F"]
    #[inline(always)]
    pub fn undefl_incr_en(&mut self) -> UNDEFL_INCR_EN_W {
        UNDEFL_INCR_EN_W { w: self }
    }
    #[doc = "Bit 1 - INCR4 Burst Controls generation of INCR4 transfers on Master interface. Values: - 0x0 (FALSE): AHB INCR4 burst type is not generated on Master I/F - 0x1 (TRUE): AHB INCR4 burst type can be generated on Master I/F"]
    #[inline(always)]
    pub fn burst_incr4_en(&mut self) -> BURST_INCR4_EN_W {
        BURST_INCR4_EN_W { w: self }
    }
    #[doc = "Bit 2 - INCR8 Burst Controls generation of INCR8 transfers on Master interface. Values: - 0x0 (FALSE): AHB INCR8 burst type is not generated on Master I/F - 0x1 (TRUE): AHB INCR8 burst type can be generated on Master I/F"]
    #[inline(always)]
    pub fn burst_incr8_en(&mut self) -> BURST_INCR8_EN_W {
        BURST_INCR8_EN_W { w: self }
    }
    #[doc = "Bit 3 - INCR16 Burst Controls generation of INCR16 transfers on Master interface. Values: - 0x0 (FALSE): AHB INCR16 burst type is not generated on Master I/F - 0x1 (TRUE): AHB INCR16 burst type can be generated on Master I/F"]
    #[inline(always)]
    pub fn burst_incr16_en(&mut self) -> BURST_INCR16_EN_W {
        BURST_INCR16_EN_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u8) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "MBIU Control register\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [mbiu_ctrl_r](index.html) module"]
pub struct MBIU_CTRL_R_SPEC;
impl crate::RegisterSpec for MBIU_CTRL_R_SPEC {
    type Ux = u8;
}
#[doc = "`read()` method returns [mbiu_ctrl_r::R](R) reader structure"]
impl crate::Readable for MBIU_CTRL_R_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [mbiu_ctrl_r::W](W) writer structure"]
impl crate::Writable for MBIU_CTRL_R_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets MBIU_CTRL_R to value 0x01"]
impl crate::Resettable for MBIU_CTRL_R_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0x01
    }
}
