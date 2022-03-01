#[doc = "Register `SL_ATT3` reader"]
pub struct R(crate::R<SL_ATT3_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<SL_ATT3_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<SL_ATT3_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<SL_ATT3_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `SL_ATT3` writer"]
pub struct W(crate::W<SL_ATT3_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<SL_ATT3_SPEC>;
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
impl From<crate::W<SL_ATT3_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<SL_ATT3_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `PC12_UR` reader - Protection context 12, user read enable."]
pub struct PC12_UR_R(crate::FieldReader<bool, bool>);
impl PC12_UR_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC12_UR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC12_UR_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC12_UR` writer - Protection context 12, user read enable."]
pub struct PC12_UR_W<'a> {
    w: &'a mut W,
}
impl<'a> PC12_UR_W<'a> {
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
#[doc = "Field `PC12_UW` reader - Protection context 12, user write enable."]
pub struct PC12_UW_R(crate::FieldReader<bool, bool>);
impl PC12_UW_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC12_UW_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC12_UW_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC12_UW` writer - Protection context 12, user write enable."]
pub struct PC12_UW_W<'a> {
    w: &'a mut W,
}
impl<'a> PC12_UW_W<'a> {
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
#[doc = "Field `PC12_PR` reader - Protection context 12, privileged read enable."]
pub struct PC12_PR_R(crate::FieldReader<bool, bool>);
impl PC12_PR_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC12_PR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC12_PR_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC12_PR` writer - Protection context 12, privileged read enable."]
pub struct PC12_PR_W<'a> {
    w: &'a mut W,
}
impl<'a> PC12_PR_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 2)) | ((value as u32 & 0x01) << 2);
        self.w
    }
}
#[doc = "Field `PC12_PW` reader - Protection context 12, privileged write enable."]
pub struct PC12_PW_R(crate::FieldReader<bool, bool>);
impl PC12_PW_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC12_PW_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC12_PW_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC12_PW` writer - Protection context 12, privileged write enable."]
pub struct PC12_PW_W<'a> {
    w: &'a mut W,
}
impl<'a> PC12_PW_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 3)) | ((value as u32 & 0x01) << 3);
        self.w
    }
}
#[doc = "Field `PC12_NS` reader - Protection context 12, non-secure."]
pub struct PC12_NS_R(crate::FieldReader<bool, bool>);
impl PC12_NS_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC12_NS_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC12_NS_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC12_NS` writer - Protection context 12, non-secure."]
pub struct PC12_NS_W<'a> {
    w: &'a mut W,
}
impl<'a> PC12_NS_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 4)) | ((value as u32 & 0x01) << 4);
        self.w
    }
}
#[doc = "Field `PC13_UR` reader - Protection context 13, user read enable."]
pub struct PC13_UR_R(crate::FieldReader<bool, bool>);
impl PC13_UR_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC13_UR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC13_UR_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC13_UR` writer - Protection context 13, user read enable."]
pub struct PC13_UR_W<'a> {
    w: &'a mut W,
}
impl<'a> PC13_UR_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 8)) | ((value as u32 & 0x01) << 8);
        self.w
    }
}
#[doc = "Field `PC13_UW` reader - Protection context 13, user write enable."]
pub struct PC13_UW_R(crate::FieldReader<bool, bool>);
impl PC13_UW_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC13_UW_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC13_UW_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC13_UW` writer - Protection context 13, user write enable."]
pub struct PC13_UW_W<'a> {
    w: &'a mut W,
}
impl<'a> PC13_UW_W<'a> {
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
#[doc = "Field `PC13_PR` reader - Protection context 13, privileged read enable."]
pub struct PC13_PR_R(crate::FieldReader<bool, bool>);
impl PC13_PR_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC13_PR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC13_PR_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC13_PR` writer - Protection context 13, privileged read enable."]
pub struct PC13_PR_W<'a> {
    w: &'a mut W,
}
impl<'a> PC13_PR_W<'a> {
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
#[doc = "Field `PC13_PW` reader - Protection context 13, privileged write enable."]
pub struct PC13_PW_R(crate::FieldReader<bool, bool>);
impl PC13_PW_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC13_PW_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC13_PW_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC13_PW` writer - Protection context 13, privileged write enable."]
pub struct PC13_PW_W<'a> {
    w: &'a mut W,
}
impl<'a> PC13_PW_W<'a> {
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
#[doc = "Field `PC13_NS` reader - Protection context 13, non-secure."]
pub struct PC13_NS_R(crate::FieldReader<bool, bool>);
impl PC13_NS_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC13_NS_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC13_NS_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC13_NS` writer - Protection context 13, non-secure."]
pub struct PC13_NS_W<'a> {
    w: &'a mut W,
}
impl<'a> PC13_NS_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 12)) | ((value as u32 & 0x01) << 12);
        self.w
    }
}
#[doc = "Field `PC14_UR` reader - Protection context 14, user read enable."]
pub struct PC14_UR_R(crate::FieldReader<bool, bool>);
impl PC14_UR_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC14_UR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC14_UR_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC14_UR` writer - Protection context 14, user read enable."]
pub struct PC14_UR_W<'a> {
    w: &'a mut W,
}
impl<'a> PC14_UR_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 16)) | ((value as u32 & 0x01) << 16);
        self.w
    }
}
#[doc = "Field `PC14_UW` reader - Protection context 14, user write enable."]
pub struct PC14_UW_R(crate::FieldReader<bool, bool>);
impl PC14_UW_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC14_UW_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC14_UW_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC14_UW` writer - Protection context 14, user write enable."]
pub struct PC14_UW_W<'a> {
    w: &'a mut W,
}
impl<'a> PC14_UW_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 17)) | ((value as u32 & 0x01) << 17);
        self.w
    }
}
#[doc = "Field `PC14_PR` reader - Protection context 14, privileged read enable."]
pub struct PC14_PR_R(crate::FieldReader<bool, bool>);
impl PC14_PR_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC14_PR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC14_PR_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC14_PR` writer - Protection context 14, privileged read enable."]
pub struct PC14_PR_W<'a> {
    w: &'a mut W,
}
impl<'a> PC14_PR_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 18)) | ((value as u32 & 0x01) << 18);
        self.w
    }
}
#[doc = "Field `PC14_PW` reader - Protection context 14, privileged write enable."]
pub struct PC14_PW_R(crate::FieldReader<bool, bool>);
impl PC14_PW_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC14_PW_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC14_PW_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC14_PW` writer - Protection context 14, privileged write enable."]
pub struct PC14_PW_W<'a> {
    w: &'a mut W,
}
impl<'a> PC14_PW_W<'a> {
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
#[doc = "Field `PC14_NS` reader - Protection context 14, non-secure."]
pub struct PC14_NS_R(crate::FieldReader<bool, bool>);
impl PC14_NS_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC14_NS_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC14_NS_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC14_NS` writer - Protection context 14, non-secure."]
pub struct PC14_NS_W<'a> {
    w: &'a mut W,
}
impl<'a> PC14_NS_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 20)) | ((value as u32 & 0x01) << 20);
        self.w
    }
}
#[doc = "Field `PC15_UR` reader - Protection context 15, user read enable."]
pub struct PC15_UR_R(crate::FieldReader<bool, bool>);
impl PC15_UR_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC15_UR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC15_UR_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC15_UR` writer - Protection context 15, user read enable."]
pub struct PC15_UR_W<'a> {
    w: &'a mut W,
}
impl<'a> PC15_UR_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 24)) | ((value as u32 & 0x01) << 24);
        self.w
    }
}
#[doc = "Field `PC15_UW` reader - Protection context 15, user write enable."]
pub struct PC15_UW_R(crate::FieldReader<bool, bool>);
impl PC15_UW_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC15_UW_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC15_UW_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC15_UW` writer - Protection context 15, user write enable."]
pub struct PC15_UW_W<'a> {
    w: &'a mut W,
}
impl<'a> PC15_UW_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 25)) | ((value as u32 & 0x01) << 25);
        self.w
    }
}
#[doc = "Field `PC15_PR` reader - Protection context 15, privileged read enable."]
pub struct PC15_PR_R(crate::FieldReader<bool, bool>);
impl PC15_PR_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC15_PR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC15_PR_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC15_PR` writer - Protection context 15, privileged read enable."]
pub struct PC15_PR_W<'a> {
    w: &'a mut W,
}
impl<'a> PC15_PR_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 26)) | ((value as u32 & 0x01) << 26);
        self.w
    }
}
#[doc = "Field `PC15_PW` reader - Protection context 15, privileged write enable."]
pub struct PC15_PW_R(crate::FieldReader<bool, bool>);
impl PC15_PW_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC15_PW_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC15_PW_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC15_PW` writer - Protection context 15, privileged write enable."]
pub struct PC15_PW_W<'a> {
    w: &'a mut W,
}
impl<'a> PC15_PW_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 27)) | ((value as u32 & 0x01) << 27);
        self.w
    }
}
#[doc = "Field `PC15_NS` reader - Protection context 15, non-secure."]
pub struct PC15_NS_R(crate::FieldReader<bool, bool>);
impl PC15_NS_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC15_NS_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC15_NS_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC15_NS` writer - Protection context 15, non-secure."]
pub struct PC15_NS_W<'a> {
    w: &'a mut W,
}
impl<'a> PC15_NS_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 28)) | ((value as u32 & 0x01) << 28);
        self.w
    }
}
impl R {
    #[doc = "Bit 0 - Protection context 12, user read enable."]
    #[inline(always)]
    pub fn pc12_ur(&self) -> PC12_UR_R {
        PC12_UR_R::new((self.bits & 0x01) != 0)
    }
    #[doc = "Bit 1 - Protection context 12, user write enable."]
    #[inline(always)]
    pub fn pc12_uw(&self) -> PC12_UW_R {
        PC12_UW_R::new(((self.bits >> 1) & 0x01) != 0)
    }
    #[doc = "Bit 2 - Protection context 12, privileged read enable."]
    #[inline(always)]
    pub fn pc12_pr(&self) -> PC12_PR_R {
        PC12_PR_R::new(((self.bits >> 2) & 0x01) != 0)
    }
    #[doc = "Bit 3 - Protection context 12, privileged write enable."]
    #[inline(always)]
    pub fn pc12_pw(&self) -> PC12_PW_R {
        PC12_PW_R::new(((self.bits >> 3) & 0x01) != 0)
    }
    #[doc = "Bit 4 - Protection context 12, non-secure."]
    #[inline(always)]
    pub fn pc12_ns(&self) -> PC12_NS_R {
        PC12_NS_R::new(((self.bits >> 4) & 0x01) != 0)
    }
    #[doc = "Bit 8 - Protection context 13, user read enable."]
    #[inline(always)]
    pub fn pc13_ur(&self) -> PC13_UR_R {
        PC13_UR_R::new(((self.bits >> 8) & 0x01) != 0)
    }
    #[doc = "Bit 9 - Protection context 13, user write enable."]
    #[inline(always)]
    pub fn pc13_uw(&self) -> PC13_UW_R {
        PC13_UW_R::new(((self.bits >> 9) & 0x01) != 0)
    }
    #[doc = "Bit 10 - Protection context 13, privileged read enable."]
    #[inline(always)]
    pub fn pc13_pr(&self) -> PC13_PR_R {
        PC13_PR_R::new(((self.bits >> 10) & 0x01) != 0)
    }
    #[doc = "Bit 11 - Protection context 13, privileged write enable."]
    #[inline(always)]
    pub fn pc13_pw(&self) -> PC13_PW_R {
        PC13_PW_R::new(((self.bits >> 11) & 0x01) != 0)
    }
    #[doc = "Bit 12 - Protection context 13, non-secure."]
    #[inline(always)]
    pub fn pc13_ns(&self) -> PC13_NS_R {
        PC13_NS_R::new(((self.bits >> 12) & 0x01) != 0)
    }
    #[doc = "Bit 16 - Protection context 14, user read enable."]
    #[inline(always)]
    pub fn pc14_ur(&self) -> PC14_UR_R {
        PC14_UR_R::new(((self.bits >> 16) & 0x01) != 0)
    }
    #[doc = "Bit 17 - Protection context 14, user write enable."]
    #[inline(always)]
    pub fn pc14_uw(&self) -> PC14_UW_R {
        PC14_UW_R::new(((self.bits >> 17) & 0x01) != 0)
    }
    #[doc = "Bit 18 - Protection context 14, privileged read enable."]
    #[inline(always)]
    pub fn pc14_pr(&self) -> PC14_PR_R {
        PC14_PR_R::new(((self.bits >> 18) & 0x01) != 0)
    }
    #[doc = "Bit 19 - Protection context 14, privileged write enable."]
    #[inline(always)]
    pub fn pc14_pw(&self) -> PC14_PW_R {
        PC14_PW_R::new(((self.bits >> 19) & 0x01) != 0)
    }
    #[doc = "Bit 20 - Protection context 14, non-secure."]
    #[inline(always)]
    pub fn pc14_ns(&self) -> PC14_NS_R {
        PC14_NS_R::new(((self.bits >> 20) & 0x01) != 0)
    }
    #[doc = "Bit 24 - Protection context 15, user read enable."]
    #[inline(always)]
    pub fn pc15_ur(&self) -> PC15_UR_R {
        PC15_UR_R::new(((self.bits >> 24) & 0x01) != 0)
    }
    #[doc = "Bit 25 - Protection context 15, user write enable."]
    #[inline(always)]
    pub fn pc15_uw(&self) -> PC15_UW_R {
        PC15_UW_R::new(((self.bits >> 25) & 0x01) != 0)
    }
    #[doc = "Bit 26 - Protection context 15, privileged read enable."]
    #[inline(always)]
    pub fn pc15_pr(&self) -> PC15_PR_R {
        PC15_PR_R::new(((self.bits >> 26) & 0x01) != 0)
    }
    #[doc = "Bit 27 - Protection context 15, privileged write enable."]
    #[inline(always)]
    pub fn pc15_pw(&self) -> PC15_PW_R {
        PC15_PW_R::new(((self.bits >> 27) & 0x01) != 0)
    }
    #[doc = "Bit 28 - Protection context 15, non-secure."]
    #[inline(always)]
    pub fn pc15_ns(&self) -> PC15_NS_R {
        PC15_NS_R::new(((self.bits >> 28) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bit 0 - Protection context 12, user read enable."]
    #[inline(always)]
    pub fn pc12_ur(&mut self) -> PC12_UR_W {
        PC12_UR_W { w: self }
    }
    #[doc = "Bit 1 - Protection context 12, user write enable."]
    #[inline(always)]
    pub fn pc12_uw(&mut self) -> PC12_UW_W {
        PC12_UW_W { w: self }
    }
    #[doc = "Bit 2 - Protection context 12, privileged read enable."]
    #[inline(always)]
    pub fn pc12_pr(&mut self) -> PC12_PR_W {
        PC12_PR_W { w: self }
    }
    #[doc = "Bit 3 - Protection context 12, privileged write enable."]
    #[inline(always)]
    pub fn pc12_pw(&mut self) -> PC12_PW_W {
        PC12_PW_W { w: self }
    }
    #[doc = "Bit 4 - Protection context 12, non-secure."]
    #[inline(always)]
    pub fn pc12_ns(&mut self) -> PC12_NS_W {
        PC12_NS_W { w: self }
    }
    #[doc = "Bit 8 - Protection context 13, user read enable."]
    #[inline(always)]
    pub fn pc13_ur(&mut self) -> PC13_UR_W {
        PC13_UR_W { w: self }
    }
    #[doc = "Bit 9 - Protection context 13, user write enable."]
    #[inline(always)]
    pub fn pc13_uw(&mut self) -> PC13_UW_W {
        PC13_UW_W { w: self }
    }
    #[doc = "Bit 10 - Protection context 13, privileged read enable."]
    #[inline(always)]
    pub fn pc13_pr(&mut self) -> PC13_PR_W {
        PC13_PR_W { w: self }
    }
    #[doc = "Bit 11 - Protection context 13, privileged write enable."]
    #[inline(always)]
    pub fn pc13_pw(&mut self) -> PC13_PW_W {
        PC13_PW_W { w: self }
    }
    #[doc = "Bit 12 - Protection context 13, non-secure."]
    #[inline(always)]
    pub fn pc13_ns(&mut self) -> PC13_NS_W {
        PC13_NS_W { w: self }
    }
    #[doc = "Bit 16 - Protection context 14, user read enable."]
    #[inline(always)]
    pub fn pc14_ur(&mut self) -> PC14_UR_W {
        PC14_UR_W { w: self }
    }
    #[doc = "Bit 17 - Protection context 14, user write enable."]
    #[inline(always)]
    pub fn pc14_uw(&mut self) -> PC14_UW_W {
        PC14_UW_W { w: self }
    }
    #[doc = "Bit 18 - Protection context 14, privileged read enable."]
    #[inline(always)]
    pub fn pc14_pr(&mut self) -> PC14_PR_W {
        PC14_PR_W { w: self }
    }
    #[doc = "Bit 19 - Protection context 14, privileged write enable."]
    #[inline(always)]
    pub fn pc14_pw(&mut self) -> PC14_PW_W {
        PC14_PW_W { w: self }
    }
    #[doc = "Bit 20 - Protection context 14, non-secure."]
    #[inline(always)]
    pub fn pc14_ns(&mut self) -> PC14_NS_W {
        PC14_NS_W { w: self }
    }
    #[doc = "Bit 24 - Protection context 15, user read enable."]
    #[inline(always)]
    pub fn pc15_ur(&mut self) -> PC15_UR_W {
        PC15_UR_W { w: self }
    }
    #[doc = "Bit 25 - Protection context 15, user write enable."]
    #[inline(always)]
    pub fn pc15_uw(&mut self) -> PC15_UW_W {
        PC15_UW_W { w: self }
    }
    #[doc = "Bit 26 - Protection context 15, privileged read enable."]
    #[inline(always)]
    pub fn pc15_pr(&mut self) -> PC15_PR_W {
        PC15_PR_W { w: self }
    }
    #[doc = "Bit 27 - Protection context 15, privileged write enable."]
    #[inline(always)]
    pub fn pc15_pw(&mut self) -> PC15_PW_W {
        PC15_PW_W { w: self }
    }
    #[doc = "Bit 28 - Protection context 15, non-secure."]
    #[inline(always)]
    pub fn pc15_ns(&mut self) -> PC15_NS_W {
        PC15_NS_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Slave attributes 3\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [sl_att3](index.html) module"]
pub struct SL_ATT3_SPEC;
impl crate::RegisterSpec for SL_ATT3_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [sl_att3::R](R) reader structure"]
impl crate::Readable for SL_ATT3_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [sl_att3::W](W) writer structure"]
impl crate::Writable for SL_ATT3_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets SL_ATT3 to value 0x1f1f_1f1f"]
impl crate::Resettable for SL_ATT3_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0x1f1f_1f1f
    }
}
