#[doc = "Register `WUP_CTRL_R` reader"]
pub struct R(crate::R<WUP_CTRL_R_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<WUP_CTRL_R_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<WUP_CTRL_R_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<WUP_CTRL_R_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `WUP_CTRL_R` writer"]
pub struct W(crate::W<WUP_CTRL_R_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<WUP_CTRL_R_SPEC>;
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
impl From<crate::W<WUP_CTRL_R_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<WUP_CTRL_R_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `WUP_CARD_INT` reader - Wakeup Event Enable on SDIO Card Interrupt (through DAT\\[1\\]). This bit enables wakeup event through an SDIO Card Interrupt assertion in the Normal Interrupt Status register. This bit can be set to 1 if FN_WUS (Wake Up Support) in CIS is set to 1. Values: - 0x0 (DISABLED): Disable - 0x1 (ENABLED): Enable"]
pub struct WUP_CARD_INT_R(crate::FieldReader<bool, bool>);
impl WUP_CARD_INT_R {
    pub(crate) fn new(bits: bool) -> Self {
        WUP_CARD_INT_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for WUP_CARD_INT_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `WUP_CARD_INT` writer - Wakeup Event Enable on SDIO Card Interrupt (through DAT\\[1\\]). This bit enables wakeup event through an SDIO Card Interrupt assertion in the Normal Interrupt Status register. This bit can be set to 1 if FN_WUS (Wake Up Support) in CIS is set to 1. Values: - 0x0 (DISABLED): Disable - 0x1 (ENABLED): Enable"]
pub struct WUP_CARD_INT_W<'a> {
    w: &'a mut W,
}
impl<'a> WUP_CARD_INT_W<'a> {
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
#[doc = "Field `WUP_CARD_INSERT` reader - Wakeup Event Enable on SD Card Insertion This bit enables wakeup event through Card Insertion assertion in the Normal Interrupt Status register. FN_WUS (Wake Up Support) in CIS does not affect this bit. Values: - 0x0 (DISABLED): Disable - 0x1 (ENABLED): Enable"]
pub struct WUP_CARD_INSERT_R(crate::FieldReader<bool, bool>);
impl WUP_CARD_INSERT_R {
    pub(crate) fn new(bits: bool) -> Self {
        WUP_CARD_INSERT_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for WUP_CARD_INSERT_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `WUP_CARD_INSERT` writer - Wakeup Event Enable on SD Card Insertion This bit enables wakeup event through Card Insertion assertion in the Normal Interrupt Status register. FN_WUS (Wake Up Support) in CIS does not affect this bit. Values: - 0x0 (DISABLED): Disable - 0x1 (ENABLED): Enable"]
pub struct WUP_CARD_INSERT_W<'a> {
    w: &'a mut W,
}
impl<'a> WUP_CARD_INSERT_W<'a> {
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
#[doc = "Field `WUP_CARD_REMOVAL` reader - Wakeup Event Enable on SD Card Removal This bit enables wakeup event through Card Removal assertion in the Normal Interrupt Status register. For the SDIO card, Wake Up Support (FN_WUS) in the Card Information Structure (CIS) register does not affect this bit. Values: - 0x0 (DISABLED): Disable - 0x1 (ENABLED): Enable"]
pub struct WUP_CARD_REMOVAL_R(crate::FieldReader<bool, bool>);
impl WUP_CARD_REMOVAL_R {
    pub(crate) fn new(bits: bool) -> Self {
        WUP_CARD_REMOVAL_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for WUP_CARD_REMOVAL_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `WUP_CARD_REMOVAL` writer - Wakeup Event Enable on SD Card Removal This bit enables wakeup event through Card Removal assertion in the Normal Interrupt Status register. For the SDIO card, Wake Up Support (FN_WUS) in the Card Information Structure (CIS) register does not affect this bit. Values: - 0x0 (DISABLED): Disable - 0x1 (ENABLED): Enable"]
pub struct WUP_CARD_REMOVAL_W<'a> {
    w: &'a mut W,
}
impl<'a> WUP_CARD_REMOVAL_W<'a> {
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
impl R {
    #[doc = "Bit 0 - Wakeup Event Enable on SDIO Card Interrupt (through DAT\\[1\\]). This bit enables wakeup event through an SDIO Card Interrupt assertion in the Normal Interrupt Status register. This bit can be set to 1 if FN_WUS (Wake Up Support) in CIS is set to 1. Values: - 0x0 (DISABLED): Disable - 0x1 (ENABLED): Enable"]
    #[inline(always)]
    pub fn wup_card_int(&self) -> WUP_CARD_INT_R {
        WUP_CARD_INT_R::new((self.bits & 0x01) != 0)
    }
    #[doc = "Bit 1 - Wakeup Event Enable on SD Card Insertion This bit enables wakeup event through Card Insertion assertion in the Normal Interrupt Status register. FN_WUS (Wake Up Support) in CIS does not affect this bit. Values: - 0x0 (DISABLED): Disable - 0x1 (ENABLED): Enable"]
    #[inline(always)]
    pub fn wup_card_insert(&self) -> WUP_CARD_INSERT_R {
        WUP_CARD_INSERT_R::new(((self.bits >> 1) & 0x01) != 0)
    }
    #[doc = "Bit 2 - Wakeup Event Enable on SD Card Removal This bit enables wakeup event through Card Removal assertion in the Normal Interrupt Status register. For the SDIO card, Wake Up Support (FN_WUS) in the Card Information Structure (CIS) register does not affect this bit. Values: - 0x0 (DISABLED): Disable - 0x1 (ENABLED): Enable"]
    #[inline(always)]
    pub fn wup_card_removal(&self) -> WUP_CARD_REMOVAL_R {
        WUP_CARD_REMOVAL_R::new(((self.bits >> 2) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bit 0 - Wakeup Event Enable on SDIO Card Interrupt (through DAT\\[1\\]). This bit enables wakeup event through an SDIO Card Interrupt assertion in the Normal Interrupt Status register. This bit can be set to 1 if FN_WUS (Wake Up Support) in CIS is set to 1. Values: - 0x0 (DISABLED): Disable - 0x1 (ENABLED): Enable"]
    #[inline(always)]
    pub fn wup_card_int(&mut self) -> WUP_CARD_INT_W {
        WUP_CARD_INT_W { w: self }
    }
    #[doc = "Bit 1 - Wakeup Event Enable on SD Card Insertion This bit enables wakeup event through Card Insertion assertion in the Normal Interrupt Status register. FN_WUS (Wake Up Support) in CIS does not affect this bit. Values: - 0x0 (DISABLED): Disable - 0x1 (ENABLED): Enable"]
    #[inline(always)]
    pub fn wup_card_insert(&mut self) -> WUP_CARD_INSERT_W {
        WUP_CARD_INSERT_W { w: self }
    }
    #[doc = "Bit 2 - Wakeup Event Enable on SD Card Removal This bit enables wakeup event through Card Removal assertion in the Normal Interrupt Status register. For the SDIO card, Wake Up Support (FN_WUS) in the Card Information Structure (CIS) register does not affect this bit. Values: - 0x0 (DISABLED): Disable - 0x1 (ENABLED): Enable"]
    #[inline(always)]
    pub fn wup_card_removal(&mut self) -> WUP_CARD_REMOVAL_W {
        WUP_CARD_REMOVAL_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u8) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Wakeup Control Register\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [wup_ctrl_r](index.html) module"]
pub struct WUP_CTRL_R_SPEC;
impl crate::RegisterSpec for WUP_CTRL_R_SPEC {
    type Ux = u8;
}
#[doc = "`read()` method returns [wup_ctrl_r::R](R) reader structure"]
impl crate::Readable for WUP_CTRL_R_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [wup_ctrl_r::W](W) writer structure"]
impl crate::Writable for WUP_CTRL_R_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets WUP_CTRL_R to value 0"]
impl crate::Resettable for WUP_CTRL_R_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
