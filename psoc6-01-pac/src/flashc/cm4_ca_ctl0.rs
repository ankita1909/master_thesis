#[doc = "Register `CM4_CA_CTL0` reader"]
pub struct R(crate::R<CM4_CA_CTL0_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CM4_CA_CTL0_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CM4_CA_CTL0_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CM4_CA_CTL0_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `CM4_CA_CTL0` writer"]
pub struct W(crate::W<CM4_CA_CTL0_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<CM4_CA_CTL0_SPEC>;
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
impl From<crate::W<CM4_CA_CTL0_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<CM4_CA_CTL0_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `RAM_ECC_EN` reader - See CM0_CA_CTL."]
pub struct RAM_ECC_EN_R(crate::FieldReader<bool, bool>);
impl RAM_ECC_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        RAM_ECC_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RAM_ECC_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `RAM_ECC_EN` writer - See CM0_CA_CTL."]
pub struct RAM_ECC_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> RAM_ECC_EN_W<'a> {
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
#[doc = "Field `RAM_ECC_INJ_EN` reader - See CM0_CA_CTL."]
pub struct RAM_ECC_INJ_EN_R(crate::FieldReader<bool, bool>);
impl RAM_ECC_INJ_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        RAM_ECC_INJ_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RAM_ECC_INJ_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `RAM_ECC_INJ_EN` writer - See CM0_CA_CTL."]
pub struct RAM_ECC_INJ_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> RAM_ECC_INJ_EN_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 1)) | ((value as u32 & 0x01) << 1);
        self.w
    }
}
#[doc = "Field `WAY` reader - See CM0_CA_CTL."]
pub struct WAY_R(crate::FieldReader<u8, u8>);
impl WAY_R {
    pub(crate) fn new(bits: u8) -> Self {
        WAY_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for WAY_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `WAY` writer - See CM0_CA_CTL."]
pub struct WAY_W<'a> {
    w: &'a mut W,
}
impl<'a> WAY_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x03 << 16)) | ((value as u32 & 0x03) << 16);
        self.w
    }
}
#[doc = "Field `SET_ADDR` reader - See CM0_CA_CTL."]
pub struct SET_ADDR_R(crate::FieldReader<u8, u8>);
impl SET_ADDR_R {
    pub(crate) fn new(bits: u8) -> Self {
        SET_ADDR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SET_ADDR_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SET_ADDR` writer - See CM0_CA_CTL."]
pub struct SET_ADDR_W<'a> {
    w: &'a mut W,
}
impl<'a> SET_ADDR_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x07 << 24)) | ((value as u32 & 0x07) << 24);
        self.w
    }
}
#[doc = "Field `PREF_EN` reader - See CM0_CA_CTL."]
pub struct PREF_EN_R(crate::FieldReader<bool, bool>);
impl PREF_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        PREF_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PREF_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PREF_EN` writer - See CM0_CA_CTL."]
pub struct PREF_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> PREF_EN_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 30)) | ((value as u32 & 0x01) << 30);
        self.w
    }
}
#[doc = "Field `CA_EN` reader - See CM0_CA_CTL."]
pub struct CA_EN_R(crate::FieldReader<bool, bool>);
impl CA_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        CA_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CA_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CA_EN` writer - See CM0_CA_CTL."]
pub struct CA_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> CA_EN_W<'a> {
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
    #[doc = "Bit 0 - See CM0_CA_CTL."]
    #[inline(always)]
    pub fn ram_ecc_en(&self) -> RAM_ECC_EN_R {
        RAM_ECC_EN_R::new((self.bits & 0x01) != 0)
    }
    #[doc = "Bit 1 - See CM0_CA_CTL."]
    #[inline(always)]
    pub fn ram_ecc_inj_en(&self) -> RAM_ECC_INJ_EN_R {
        RAM_ECC_INJ_EN_R::new(((self.bits >> 1) & 0x01) != 0)
    }
    #[doc = "Bits 16:17 - See CM0_CA_CTL."]
    #[inline(always)]
    pub fn way(&self) -> WAY_R {
        WAY_R::new(((self.bits >> 16) & 0x03) as u8)
    }
    #[doc = "Bits 24:26 - See CM0_CA_CTL."]
    #[inline(always)]
    pub fn set_addr(&self) -> SET_ADDR_R {
        SET_ADDR_R::new(((self.bits >> 24) & 0x07) as u8)
    }
    #[doc = "Bit 30 - See CM0_CA_CTL."]
    #[inline(always)]
    pub fn pref_en(&self) -> PREF_EN_R {
        PREF_EN_R::new(((self.bits >> 30) & 0x01) != 0)
    }
    #[doc = "Bit 31 - See CM0_CA_CTL."]
    #[inline(always)]
    pub fn ca_en(&self) -> CA_EN_R {
        CA_EN_R::new(((self.bits >> 31) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bit 0 - See CM0_CA_CTL."]
    #[inline(always)]
    pub fn ram_ecc_en(&mut self) -> RAM_ECC_EN_W {
        RAM_ECC_EN_W { w: self }
    }
    #[doc = "Bit 1 - See CM0_CA_CTL."]
    #[inline(always)]
    pub fn ram_ecc_inj_en(&mut self) -> RAM_ECC_INJ_EN_W {
        RAM_ECC_INJ_EN_W { w: self }
    }
    #[doc = "Bits 16:17 - See CM0_CA_CTL."]
    #[inline(always)]
    pub fn way(&mut self) -> WAY_W {
        WAY_W { w: self }
    }
    #[doc = "Bits 24:26 - See CM0_CA_CTL."]
    #[inline(always)]
    pub fn set_addr(&mut self) -> SET_ADDR_W {
        SET_ADDR_W { w: self }
    }
    #[doc = "Bit 30 - See CM0_CA_CTL."]
    #[inline(always)]
    pub fn pref_en(&mut self) -> PREF_EN_W {
        PREF_EN_W { w: self }
    }
    #[doc = "Bit 31 - See CM0_CA_CTL."]
    #[inline(always)]
    pub fn ca_en(&mut self) -> CA_EN_W {
        CA_EN_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "CM4 cache control\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [cm4_ca_ctl0](index.html) module"]
pub struct CM4_CA_CTL0_SPEC;
impl crate::RegisterSpec for CM4_CA_CTL0_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [cm4_ca_ctl0::R](R) reader structure"]
impl crate::Readable for CM4_CA_CTL0_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [cm4_ca_ctl0::W](W) writer structure"]
impl crate::Writable for CM4_CA_CTL0_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets CM4_CA_CTL0 to value 0xc000_0001"]
impl crate::Resettable for CM4_CA_CTL0_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0xc000_0001
    }
}
