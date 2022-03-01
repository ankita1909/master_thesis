#[doc = "Register `NORMAL_INT_SIGNAL_EN_R` reader"]
pub struct R(crate::R<NORMAL_INT_SIGNAL_EN_R_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<NORMAL_INT_SIGNAL_EN_R_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<NORMAL_INT_SIGNAL_EN_R_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<NORMAL_INT_SIGNAL_EN_R_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `NORMAL_INT_SIGNAL_EN_R` writer"]
pub struct W(crate::W<NORMAL_INT_SIGNAL_EN_R_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<NORMAL_INT_SIGNAL_EN_R_SPEC>;
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
impl From<crate::W<NORMAL_INT_SIGNAL_EN_R_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<NORMAL_INT_SIGNAL_EN_R_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `CMD_COMPLETE_SIGNAL_EN` reader - Command Complete Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct CMD_COMPLETE_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl CMD_COMPLETE_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        CMD_COMPLETE_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CMD_COMPLETE_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CMD_COMPLETE_SIGNAL_EN` writer - Command Complete Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct CMD_COMPLETE_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> CMD_COMPLETE_SIGNAL_EN_W<'a> {
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
#[doc = "Field `XFER_COMPLETE_SIGNAL_EN` reader - Transfer Complete Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct XFER_COMPLETE_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl XFER_COMPLETE_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        XFER_COMPLETE_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for XFER_COMPLETE_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `XFER_COMPLETE_SIGNAL_EN` writer - Transfer Complete Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct XFER_COMPLETE_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> XFER_COMPLETE_SIGNAL_EN_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 1)) | ((value as u16 & 0x01) << 1);
        self.w
    }
}
#[doc = "Field `BGAP_EVENT_SIGNAL_EN` reader - Block Gap Event Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct BGAP_EVENT_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl BGAP_EVENT_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        BGAP_EVENT_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for BGAP_EVENT_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `BGAP_EVENT_SIGNAL_EN` writer - Block Gap Event Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct BGAP_EVENT_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> BGAP_EVENT_SIGNAL_EN_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 2)) | ((value as u16 & 0x01) << 2);
        self.w
    }
}
#[doc = "Field `DMA_INTERRUPT_SIGNAL_EN` reader - DMA Interrupt Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct DMA_INTERRUPT_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl DMA_INTERRUPT_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        DMA_INTERRUPT_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DMA_INTERRUPT_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DMA_INTERRUPT_SIGNAL_EN` writer - DMA Interrupt Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct DMA_INTERRUPT_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> DMA_INTERRUPT_SIGNAL_EN_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 3)) | ((value as u16 & 0x01) << 3);
        self.w
    }
}
#[doc = "Field `BUF_WR_READY_SIGNAL_EN` reader - Buffer Write Ready Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct BUF_WR_READY_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl BUF_WR_READY_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        BUF_WR_READY_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for BUF_WR_READY_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `BUF_WR_READY_SIGNAL_EN` writer - Buffer Write Ready Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct BUF_WR_READY_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> BUF_WR_READY_SIGNAL_EN_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 4)) | ((value as u16 & 0x01) << 4);
        self.w
    }
}
#[doc = "Field `BUF_RD_READY_SIGNAL_EN` reader - Buffer Read Ready Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct BUF_RD_READY_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl BUF_RD_READY_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        BUF_RD_READY_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for BUF_RD_READY_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `BUF_RD_READY_SIGNAL_EN` writer - Buffer Read Ready Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct BUF_RD_READY_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> BUF_RD_READY_SIGNAL_EN_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 5)) | ((value as u16 & 0x01) << 5);
        self.w
    }
}
#[doc = "Field `CARD_INSERTION_SIGNAL_EN` reader - Card Insertion Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct CARD_INSERTION_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl CARD_INSERTION_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        CARD_INSERTION_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CARD_INSERTION_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CARD_INSERTION_SIGNAL_EN` writer - Card Insertion Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct CARD_INSERTION_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> CARD_INSERTION_SIGNAL_EN_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 6)) | ((value as u16 & 0x01) << 6);
        self.w
    }
}
#[doc = "Field `CARD_REMOVAL_SIGNAL_EN` reader - Card Removal Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct CARD_REMOVAL_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl CARD_REMOVAL_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        CARD_REMOVAL_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CARD_REMOVAL_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CARD_REMOVAL_SIGNAL_EN` writer - Card Removal Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct CARD_REMOVAL_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> CARD_REMOVAL_SIGNAL_EN_W<'a> {
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
#[doc = "Field `CARD_INTERRUPT_SIGNAL_EN` reader - Card Interrupt Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct CARD_INTERRUPT_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl CARD_INTERRUPT_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        CARD_INTERRUPT_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CARD_INTERRUPT_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CARD_INTERRUPT_SIGNAL_EN` writer - Card Interrupt Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct CARD_INTERRUPT_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> CARD_INTERRUPT_SIGNAL_EN_W<'a> {
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
#[doc = "Field `INT_A_SIGNAL_EN` reader - N/A"]
pub struct INT_A_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl INT_A_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        INT_A_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for INT_A_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `INT_A_SIGNAL_EN` writer - N/A"]
pub struct INT_A_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> INT_A_SIGNAL_EN_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 9)) | ((value as u16 & 0x01) << 9);
        self.w
    }
}
#[doc = "Field `INT_B_SIGNAL_EN` reader - N/A"]
pub struct INT_B_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl INT_B_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        INT_B_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for INT_B_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `INT_B_SIGNAL_EN` writer - N/A"]
pub struct INT_B_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> INT_B_SIGNAL_EN_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 10)) | ((value as u16 & 0x01) << 10);
        self.w
    }
}
#[doc = "Field `INT_C_SIGNAL_EN` reader - N/A"]
pub struct INT_C_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl INT_C_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        INT_C_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for INT_C_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `INT_C_SIGNAL_EN` writer - N/A"]
pub struct INT_C_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> INT_C_SIGNAL_EN_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 11)) | ((value as u16 & 0x01) << 11);
        self.w
    }
}
#[doc = "Field `RE_TUNE_EVENT_SIGNAL_EN` reader - N/A"]
pub struct RE_TUNE_EVENT_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl RE_TUNE_EVENT_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        RE_TUNE_EVENT_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RE_TUNE_EVENT_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `RE_TUNE_EVENT_SIGNAL_EN` writer - N/A"]
pub struct RE_TUNE_EVENT_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> RE_TUNE_EVENT_SIGNAL_EN_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 12)) | ((value as u16 & 0x01) << 12);
        self.w
    }
}
#[doc = "Field `FX_EVENT_SIGNAL_EN` reader - FX Event Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct FX_EVENT_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl FX_EVENT_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        FX_EVENT_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for FX_EVENT_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `FX_EVENT_SIGNAL_EN` writer - FX Event Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct FX_EVENT_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> FX_EVENT_SIGNAL_EN_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 13)) | ((value as u16 & 0x01) << 13);
        self.w
    }
}
#[doc = "Field `CQE_EVENT_SIGNAL_EN` reader - Command Queuing Engine Event Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct CQE_EVENT_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl CQE_EVENT_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        CQE_EVENT_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CQE_EVENT_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CQE_EVENT_SIGNAL_EN` writer - Command Queuing Engine Event Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct CQE_EVENT_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> CQE_EVENT_SIGNAL_EN_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 14)) | ((value as u16 & 0x01) << 14);
        self.w
    }
}
impl R {
    #[doc = "Bit 0 - Command Complete Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn cmd_complete_signal_en(&self) -> CMD_COMPLETE_SIGNAL_EN_R {
        CMD_COMPLETE_SIGNAL_EN_R::new((self.bits & 0x01) != 0)
    }
    #[doc = "Bit 1 - Transfer Complete Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn xfer_complete_signal_en(&self) -> XFER_COMPLETE_SIGNAL_EN_R {
        XFER_COMPLETE_SIGNAL_EN_R::new(((self.bits >> 1) & 0x01) != 0)
    }
    #[doc = "Bit 2 - Block Gap Event Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn bgap_event_signal_en(&self) -> BGAP_EVENT_SIGNAL_EN_R {
        BGAP_EVENT_SIGNAL_EN_R::new(((self.bits >> 2) & 0x01) != 0)
    }
    #[doc = "Bit 3 - DMA Interrupt Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn dma_interrupt_signal_en(&self) -> DMA_INTERRUPT_SIGNAL_EN_R {
        DMA_INTERRUPT_SIGNAL_EN_R::new(((self.bits >> 3) & 0x01) != 0)
    }
    #[doc = "Bit 4 - Buffer Write Ready Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn buf_wr_ready_signal_en(&self) -> BUF_WR_READY_SIGNAL_EN_R {
        BUF_WR_READY_SIGNAL_EN_R::new(((self.bits >> 4) & 0x01) != 0)
    }
    #[doc = "Bit 5 - Buffer Read Ready Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn buf_rd_ready_signal_en(&self) -> BUF_RD_READY_SIGNAL_EN_R {
        BUF_RD_READY_SIGNAL_EN_R::new(((self.bits >> 5) & 0x01) != 0)
    }
    #[doc = "Bit 6 - Card Insertion Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn card_insertion_signal_en(&self) -> CARD_INSERTION_SIGNAL_EN_R {
        CARD_INSERTION_SIGNAL_EN_R::new(((self.bits >> 6) & 0x01) != 0)
    }
    #[doc = "Bit 7 - Card Removal Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn card_removal_signal_en(&self) -> CARD_REMOVAL_SIGNAL_EN_R {
        CARD_REMOVAL_SIGNAL_EN_R::new(((self.bits >> 7) & 0x01) != 0)
    }
    #[doc = "Bit 8 - Card Interrupt Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn card_interrupt_signal_en(&self) -> CARD_INTERRUPT_SIGNAL_EN_R {
        CARD_INTERRUPT_SIGNAL_EN_R::new(((self.bits >> 8) & 0x01) != 0)
    }
    #[doc = "Bit 9 - N/A"]
    #[inline(always)]
    pub fn int_a_signal_en(&self) -> INT_A_SIGNAL_EN_R {
        INT_A_SIGNAL_EN_R::new(((self.bits >> 9) & 0x01) != 0)
    }
    #[doc = "Bit 10 - N/A"]
    #[inline(always)]
    pub fn int_b_signal_en(&self) -> INT_B_SIGNAL_EN_R {
        INT_B_SIGNAL_EN_R::new(((self.bits >> 10) & 0x01) != 0)
    }
    #[doc = "Bit 11 - N/A"]
    #[inline(always)]
    pub fn int_c_signal_en(&self) -> INT_C_SIGNAL_EN_R {
        INT_C_SIGNAL_EN_R::new(((self.bits >> 11) & 0x01) != 0)
    }
    #[doc = "Bit 12 - N/A"]
    #[inline(always)]
    pub fn re_tune_event_signal_en(&self) -> RE_TUNE_EVENT_SIGNAL_EN_R {
        RE_TUNE_EVENT_SIGNAL_EN_R::new(((self.bits >> 12) & 0x01) != 0)
    }
    #[doc = "Bit 13 - FX Event Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn fx_event_signal_en(&self) -> FX_EVENT_SIGNAL_EN_R {
        FX_EVENT_SIGNAL_EN_R::new(((self.bits >> 13) & 0x01) != 0)
    }
    #[doc = "Bit 14 - Command Queuing Engine Event Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn cqe_event_signal_en(&self) -> CQE_EVENT_SIGNAL_EN_R {
        CQE_EVENT_SIGNAL_EN_R::new(((self.bits >> 14) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bit 0 - Command Complete Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn cmd_complete_signal_en(&mut self) -> CMD_COMPLETE_SIGNAL_EN_W {
        CMD_COMPLETE_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 1 - Transfer Complete Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn xfer_complete_signal_en(&mut self) -> XFER_COMPLETE_SIGNAL_EN_W {
        XFER_COMPLETE_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 2 - Block Gap Event Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn bgap_event_signal_en(&mut self) -> BGAP_EVENT_SIGNAL_EN_W {
        BGAP_EVENT_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 3 - DMA Interrupt Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn dma_interrupt_signal_en(&mut self) -> DMA_INTERRUPT_SIGNAL_EN_W {
        DMA_INTERRUPT_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 4 - Buffer Write Ready Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn buf_wr_ready_signal_en(&mut self) -> BUF_WR_READY_SIGNAL_EN_W {
        BUF_WR_READY_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 5 - Buffer Read Ready Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn buf_rd_ready_signal_en(&mut self) -> BUF_RD_READY_SIGNAL_EN_W {
        BUF_RD_READY_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 6 - Card Insertion Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn card_insertion_signal_en(&mut self) -> CARD_INSERTION_SIGNAL_EN_W {
        CARD_INSERTION_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 7 - Card Removal Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn card_removal_signal_en(&mut self) -> CARD_REMOVAL_SIGNAL_EN_W {
        CARD_REMOVAL_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 8 - Card Interrupt Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn card_interrupt_signal_en(&mut self) -> CARD_INTERRUPT_SIGNAL_EN_W {
        CARD_INTERRUPT_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 9 - N/A"]
    #[inline(always)]
    pub fn int_a_signal_en(&mut self) -> INT_A_SIGNAL_EN_W {
        INT_A_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 10 - N/A"]
    #[inline(always)]
    pub fn int_b_signal_en(&mut self) -> INT_B_SIGNAL_EN_W {
        INT_B_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 11 - N/A"]
    #[inline(always)]
    pub fn int_c_signal_en(&mut self) -> INT_C_SIGNAL_EN_W {
        INT_C_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 12 - N/A"]
    #[inline(always)]
    pub fn re_tune_event_signal_en(&mut self) -> RE_TUNE_EVENT_SIGNAL_EN_W {
        RE_TUNE_EVENT_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 13 - FX Event Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn fx_event_signal_en(&mut self) -> FX_EVENT_SIGNAL_EN_W {
        FX_EVENT_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 14 - Command Queuing Engine Event Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn cqe_event_signal_en(&mut self) -> CQE_EVENT_SIGNAL_EN_W {
        CQE_EVENT_SIGNAL_EN_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u16) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Normal Interrupt Signal Enable Register\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [normal_int_signal_en_r](index.html) module"]
pub struct NORMAL_INT_SIGNAL_EN_R_SPEC;
impl crate::RegisterSpec for NORMAL_INT_SIGNAL_EN_R_SPEC {
    type Ux = u16;
}
#[doc = "`read()` method returns [normal_int_signal_en_r::R](R) reader structure"]
impl crate::Readable for NORMAL_INT_SIGNAL_EN_R_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [normal_int_signal_en_r::W](W) writer structure"]
impl crate::Writable for NORMAL_INT_SIGNAL_EN_R_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets NORMAL_INT_SIGNAL_EN_R to value 0"]
impl crate::Resettable for NORMAL_INT_SIGNAL_EN_R_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
