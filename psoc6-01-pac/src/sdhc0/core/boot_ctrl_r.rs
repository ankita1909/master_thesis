#[doc = "Register `BOOT_CTRL_R` reader"]
pub struct R(crate::R<BOOT_CTRL_R_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<BOOT_CTRL_R_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<BOOT_CTRL_R_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<BOOT_CTRL_R_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `BOOT_CTRL_R` writer"]
pub struct W(crate::W<BOOT_CTRL_R_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<BOOT_CTRL_R_SPEC>;
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
impl From<crate::W<BOOT_CTRL_R_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<BOOT_CTRL_R_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `MAN_BOOT_EN` reader - Mandatory Boot Enable This bit is used to initiate the mandatory boot operation. The application sets this bit along with VALIDATE_BOOT bit. Writing 0 is ignored. The SDHC clears this bit after the boot transfer is completed or terminated. Values: - 0x1 (MAN_BOOT_EN): Mandatory boot enable - 0x0 (MAN_BOOT_DIS): Mandatory boot disable"]
pub struct MAN_BOOT_EN_R(crate::FieldReader<bool, bool>);
impl MAN_BOOT_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        MAN_BOOT_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for MAN_BOOT_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `MAN_BOOT_EN` writer - Mandatory Boot Enable This bit is used to initiate the mandatory boot operation. The application sets this bit along with VALIDATE_BOOT bit. Writing 0 is ignored. The SDHC clears this bit after the boot transfer is completed or terminated. Values: - 0x1 (MAN_BOOT_EN): Mandatory boot enable - 0x0 (MAN_BOOT_DIS): Mandatory boot disable"]
pub struct MAN_BOOT_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> MAN_BOOT_EN_W<'a> {
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
        self.w.bits = (self.w.bits & !0x01) | (value as u16 & 0x01);
        self.w
    }
}
#[doc = "Field `VALIDATE_BOOT` writer - Validate Mandatory Boot Enable bit This bit is used to validate the MAN_BOOT_EN bit. Values: - 0x1 (TRUE): Validate Mandatory boot enable bit - 0x0 (FALSE): Ignore Mandatory boot Enable bit"]
pub struct VALIDATE_BOOT_W<'a> {
    w: &'a mut W,
}
impl<'a> VALIDATE_BOOT_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 7)) | ((value as u16 & 0x01) << 7);
        self.w
    }
}
#[doc = "Field `BOOT_ACK_ENABLE` reader - Boot Acknowledge Enable When this bit set, SDHC checks for boot acknowledge start pattern of 0-1-0 during boot operation. This bit is applicable for both mandatory and alternate boot mode. Values: - 0x1 (TRUE): Boot Ack enable - 0x0 (FALSE): Boot Ack disable"]
pub struct BOOT_ACK_ENABLE_R(crate::FieldReader<bool, bool>);
impl BOOT_ACK_ENABLE_R {
    pub(crate) fn new(bits: bool) -> Self {
        BOOT_ACK_ENABLE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for BOOT_ACK_ENABLE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `BOOT_ACK_ENABLE` writer - Boot Acknowledge Enable When this bit set, SDHC checks for boot acknowledge start pattern of 0-1-0 during boot operation. This bit is applicable for both mandatory and alternate boot mode. Values: - 0x1 (TRUE): Boot Ack enable - 0x0 (FALSE): Boot Ack disable"]
pub struct BOOT_ACK_ENABLE_W<'a> {
    w: &'a mut W,
}
impl<'a> BOOT_ACK_ENABLE_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 8)) | ((value as u16 & 0x01) << 8);
        self.w
    }
}
#[doc = "Field `BOOT_TOUT_CNT` reader - N/A"]
pub struct BOOT_TOUT_CNT_R(crate::FieldReader<u8, u8>);
impl BOOT_TOUT_CNT_R {
    pub(crate) fn new(bits: u8) -> Self {
        BOOT_TOUT_CNT_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for BOOT_TOUT_CNT_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `BOOT_TOUT_CNT` writer - N/A"]
pub struct BOOT_TOUT_CNT_W<'a> {
    w: &'a mut W,
}
impl<'a> BOOT_TOUT_CNT_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x0f << 12)) | ((value as u16 & 0x0f) << 12);
        self.w
    }
}
impl R {
    #[doc = "Bit 0 - Mandatory Boot Enable This bit is used to initiate the mandatory boot operation. The application sets this bit along with VALIDATE_BOOT bit. Writing 0 is ignored. The SDHC clears this bit after the boot transfer is completed or terminated. Values: - 0x1 (MAN_BOOT_EN): Mandatory boot enable - 0x0 (MAN_BOOT_DIS): Mandatory boot disable"]
    #[inline(always)]
    pub fn man_boot_en(&self) -> MAN_BOOT_EN_R {
        MAN_BOOT_EN_R::new((self.bits & 0x01) != 0)
    }
    #[doc = "Bit 8 - Boot Acknowledge Enable When this bit set, SDHC checks for boot acknowledge start pattern of 0-1-0 during boot operation. This bit is applicable for both mandatory and alternate boot mode. Values: - 0x1 (TRUE): Boot Ack enable - 0x0 (FALSE): Boot Ack disable"]
    #[inline(always)]
    pub fn boot_ack_enable(&self) -> BOOT_ACK_ENABLE_R {
        BOOT_ACK_ENABLE_R::new(((self.bits >> 8) & 0x01) != 0)
    }
    #[doc = "Bits 12:15 - N/A"]
    #[inline(always)]
    pub fn boot_tout_cnt(&self) -> BOOT_TOUT_CNT_R {
        BOOT_TOUT_CNT_R::new(((self.bits >> 12) & 0x0f) as u8)
    }
}
impl W {
    #[doc = "Bit 0 - Mandatory Boot Enable This bit is used to initiate the mandatory boot operation. The application sets this bit along with VALIDATE_BOOT bit. Writing 0 is ignored. The SDHC clears this bit after the boot transfer is completed or terminated. Values: - 0x1 (MAN_BOOT_EN): Mandatory boot enable - 0x0 (MAN_BOOT_DIS): Mandatory boot disable"]
    #[inline(always)]
    pub fn man_boot_en(&mut self) -> MAN_BOOT_EN_W {
        MAN_BOOT_EN_W { w: self }
    }
    #[doc = "Bit 7 - Validate Mandatory Boot Enable bit This bit is used to validate the MAN_BOOT_EN bit. Values: - 0x1 (TRUE): Validate Mandatory boot enable bit - 0x0 (FALSE): Ignore Mandatory boot Enable bit"]
    #[inline(always)]
    pub fn validate_boot(&mut self) -> VALIDATE_BOOT_W {
        VALIDATE_BOOT_W { w: self }
    }
    #[doc = "Bit 8 - Boot Acknowledge Enable When this bit set, SDHC checks for boot acknowledge start pattern of 0-1-0 during boot operation. This bit is applicable for both mandatory and alternate boot mode. Values: - 0x1 (TRUE): Boot Ack enable - 0x0 (FALSE): Boot Ack disable"]
    #[inline(always)]
    pub fn boot_ack_enable(&mut self) -> BOOT_ACK_ENABLE_W {
        BOOT_ACK_ENABLE_W { w: self }
    }
    #[doc = "Bits 12:15 - N/A"]
    #[inline(always)]
    pub fn boot_tout_cnt(&mut self) -> BOOT_TOUT_CNT_W {
        BOOT_TOUT_CNT_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u16) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "eMMC Boot Control register\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [boot_ctrl_r](index.html) module"]
pub struct BOOT_CTRL_R_SPEC;
impl crate::RegisterSpec for BOOT_CTRL_R_SPEC {
    type Ux = u16;
}
#[doc = "`read()` method returns [boot_ctrl_r::R](R) reader structure"]
impl crate::Readable for BOOT_CTRL_R_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [boot_ctrl_r::W](W) writer structure"]
impl crate::Writable for BOOT_CTRL_R_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets BOOT_CTRL_R to value 0"]
impl crate::Resettable for BOOT_CTRL_R_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
