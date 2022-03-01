#[doc = "Register `MS_ATT1` reader"]
pub struct R(crate::R<MS_ATT1_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<MS_ATT1_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<MS_ATT1_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<MS_ATT1_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `MS_ATT1` writer"]
pub struct W(crate::W<MS_ATT1_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<MS_ATT1_SPEC>;
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
impl From<crate::W<MS_ATT1_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<MS_ATT1_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `PC4_UR` reader - Protection context 4, user read enable."]
pub struct PC4_UR_R(crate::FieldReader<bool, bool>);
impl PC4_UR_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC4_UR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC4_UR_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC4_UW` reader - Protection context 4, user write enable."]
pub struct PC4_UW_R(crate::FieldReader<bool, bool>);
impl PC4_UW_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC4_UW_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC4_UW_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC4_UW` writer - Protection context 4, user write enable."]
pub struct PC4_UW_W<'a> {
    w: &'a mut W,
}
impl<'a> PC4_UW_W<'a> {
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
#[doc = "Field `PC4_PR` reader - Protection context 4, privileged read enable."]
pub struct PC4_PR_R(crate::FieldReader<bool, bool>);
impl PC4_PR_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC4_PR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC4_PR_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC4_PW` reader - Protection context 4, privileged write enable."]
pub struct PC4_PW_R(crate::FieldReader<bool, bool>);
impl PC4_PW_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC4_PW_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC4_PW_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC4_PW` writer - Protection context 4, privileged write enable."]
pub struct PC4_PW_W<'a> {
    w: &'a mut W,
}
impl<'a> PC4_PW_W<'a> {
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
#[doc = "Field `PC4_NS` reader - Protection context 4, non-secure."]
pub struct PC4_NS_R(crate::FieldReader<bool, bool>);
impl PC4_NS_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC4_NS_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC4_NS_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC4_NS` writer - Protection context 4, non-secure."]
pub struct PC4_NS_W<'a> {
    w: &'a mut W,
}
impl<'a> PC4_NS_W<'a> {
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
#[doc = "Field `PC5_UR` reader - Protection context 5, user read enable."]
pub struct PC5_UR_R(crate::FieldReader<bool, bool>);
impl PC5_UR_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC5_UR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC5_UR_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC5_UW` reader - Protection context 5, user write enable."]
pub struct PC5_UW_R(crate::FieldReader<bool, bool>);
impl PC5_UW_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC5_UW_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC5_UW_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC5_UW` writer - Protection context 5, user write enable."]
pub struct PC5_UW_W<'a> {
    w: &'a mut W,
}
impl<'a> PC5_UW_W<'a> {
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
#[doc = "Field `PC5_PR` reader - Protection context 5, privileged read enable."]
pub struct PC5_PR_R(crate::FieldReader<bool, bool>);
impl PC5_PR_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC5_PR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC5_PR_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC5_PW` reader - Protection context 5, privileged write enable."]
pub struct PC5_PW_R(crate::FieldReader<bool, bool>);
impl PC5_PW_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC5_PW_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC5_PW_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC5_PW` writer - Protection context 5, privileged write enable."]
pub struct PC5_PW_W<'a> {
    w: &'a mut W,
}
impl<'a> PC5_PW_W<'a> {
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
#[doc = "Field `PC5_NS` reader - Protection context 5, non-secure."]
pub struct PC5_NS_R(crate::FieldReader<bool, bool>);
impl PC5_NS_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC5_NS_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC5_NS_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC5_NS` writer - Protection context 5, non-secure."]
pub struct PC5_NS_W<'a> {
    w: &'a mut W,
}
impl<'a> PC5_NS_W<'a> {
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
#[doc = "Field `PC6_UR` reader - Protection context 6, user read enable."]
pub struct PC6_UR_R(crate::FieldReader<bool, bool>);
impl PC6_UR_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC6_UR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC6_UR_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC6_UW` reader - Protection context 6, user write enable."]
pub struct PC6_UW_R(crate::FieldReader<bool, bool>);
impl PC6_UW_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC6_UW_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC6_UW_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC6_UW` writer - Protection context 6, user write enable."]
pub struct PC6_UW_W<'a> {
    w: &'a mut W,
}
impl<'a> PC6_UW_W<'a> {
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
#[doc = "Field `PC6_PR` reader - Protection context 6, privileged read enable."]
pub struct PC6_PR_R(crate::FieldReader<bool, bool>);
impl PC6_PR_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC6_PR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC6_PR_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC6_PW` reader - Protection context 6, privileged write enable."]
pub struct PC6_PW_R(crate::FieldReader<bool, bool>);
impl PC6_PW_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC6_PW_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC6_PW_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC6_PW` writer - Protection context 6, privileged write enable."]
pub struct PC6_PW_W<'a> {
    w: &'a mut W,
}
impl<'a> PC6_PW_W<'a> {
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
#[doc = "Field `PC6_NS` reader - Protection context 6, non-secure."]
pub struct PC6_NS_R(crate::FieldReader<bool, bool>);
impl PC6_NS_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC6_NS_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC6_NS_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC6_NS` writer - Protection context 6, non-secure."]
pub struct PC6_NS_W<'a> {
    w: &'a mut W,
}
impl<'a> PC6_NS_W<'a> {
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
#[doc = "Field `PC7_UR` reader - Protection context 7, user read enable."]
pub struct PC7_UR_R(crate::FieldReader<bool, bool>);
impl PC7_UR_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC7_UR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC7_UR_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC7_UW` reader - Protection context 7, user write enable."]
pub struct PC7_UW_R(crate::FieldReader<bool, bool>);
impl PC7_UW_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC7_UW_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC7_UW_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC7_UW` writer - Protection context 7, user write enable."]
pub struct PC7_UW_W<'a> {
    w: &'a mut W,
}
impl<'a> PC7_UW_W<'a> {
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
#[doc = "Field `PC7_PR` reader - Protection context 7, privileged read enable."]
pub struct PC7_PR_R(crate::FieldReader<bool, bool>);
impl PC7_PR_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC7_PR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC7_PR_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC7_PW` reader - Protection context 7, privileged write enable."]
pub struct PC7_PW_R(crate::FieldReader<bool, bool>);
impl PC7_PW_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC7_PW_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC7_PW_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC7_PW` writer - Protection context 7, privileged write enable."]
pub struct PC7_PW_W<'a> {
    w: &'a mut W,
}
impl<'a> PC7_PW_W<'a> {
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
#[doc = "Field `PC7_NS` reader - Protection context 7, non-secure."]
pub struct PC7_NS_R(crate::FieldReader<bool, bool>);
impl PC7_NS_R {
    pub(crate) fn new(bits: bool) -> Self {
        PC7_NS_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PC7_NS_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PC7_NS` writer - Protection context 7, non-secure."]
pub struct PC7_NS_W<'a> {
    w: &'a mut W,
}
impl<'a> PC7_NS_W<'a> {
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
    #[doc = "Bit 0 - Protection context 4, user read enable."]
    #[inline(always)]
    pub fn pc4_ur(&self) -> PC4_UR_R {
        PC4_UR_R::new((self.bits & 0x01) != 0)
    }
    #[doc = "Bit 1 - Protection context 4, user write enable."]
    #[inline(always)]
    pub fn pc4_uw(&self) -> PC4_UW_R {
        PC4_UW_R::new(((self.bits >> 1) & 0x01) != 0)
    }
    #[doc = "Bit 2 - Protection context 4, privileged read enable."]
    #[inline(always)]
    pub fn pc4_pr(&self) -> PC4_PR_R {
        PC4_PR_R::new(((self.bits >> 2) & 0x01) != 0)
    }
    #[doc = "Bit 3 - Protection context 4, privileged write enable."]
    #[inline(always)]
    pub fn pc4_pw(&self) -> PC4_PW_R {
        PC4_PW_R::new(((self.bits >> 3) & 0x01) != 0)
    }
    #[doc = "Bit 4 - Protection context 4, non-secure."]
    #[inline(always)]
    pub fn pc4_ns(&self) -> PC4_NS_R {
        PC4_NS_R::new(((self.bits >> 4) & 0x01) != 0)
    }
    #[doc = "Bit 8 - Protection context 5, user read enable."]
    #[inline(always)]
    pub fn pc5_ur(&self) -> PC5_UR_R {
        PC5_UR_R::new(((self.bits >> 8) & 0x01) != 0)
    }
    #[doc = "Bit 9 - Protection context 5, user write enable."]
    #[inline(always)]
    pub fn pc5_uw(&self) -> PC5_UW_R {
        PC5_UW_R::new(((self.bits >> 9) & 0x01) != 0)
    }
    #[doc = "Bit 10 - Protection context 5, privileged read enable."]
    #[inline(always)]
    pub fn pc5_pr(&self) -> PC5_PR_R {
        PC5_PR_R::new(((self.bits >> 10) & 0x01) != 0)
    }
    #[doc = "Bit 11 - Protection context 5, privileged write enable."]
    #[inline(always)]
    pub fn pc5_pw(&self) -> PC5_PW_R {
        PC5_PW_R::new(((self.bits >> 11) & 0x01) != 0)
    }
    #[doc = "Bit 12 - Protection context 5, non-secure."]
    #[inline(always)]
    pub fn pc5_ns(&self) -> PC5_NS_R {
        PC5_NS_R::new(((self.bits >> 12) & 0x01) != 0)
    }
    #[doc = "Bit 16 - Protection context 6, user read enable."]
    #[inline(always)]
    pub fn pc6_ur(&self) -> PC6_UR_R {
        PC6_UR_R::new(((self.bits >> 16) & 0x01) != 0)
    }
    #[doc = "Bit 17 - Protection context 6, user write enable."]
    #[inline(always)]
    pub fn pc6_uw(&self) -> PC6_UW_R {
        PC6_UW_R::new(((self.bits >> 17) & 0x01) != 0)
    }
    #[doc = "Bit 18 - Protection context 6, privileged read enable."]
    #[inline(always)]
    pub fn pc6_pr(&self) -> PC6_PR_R {
        PC6_PR_R::new(((self.bits >> 18) & 0x01) != 0)
    }
    #[doc = "Bit 19 - Protection context 6, privileged write enable."]
    #[inline(always)]
    pub fn pc6_pw(&self) -> PC6_PW_R {
        PC6_PW_R::new(((self.bits >> 19) & 0x01) != 0)
    }
    #[doc = "Bit 20 - Protection context 6, non-secure."]
    #[inline(always)]
    pub fn pc6_ns(&self) -> PC6_NS_R {
        PC6_NS_R::new(((self.bits >> 20) & 0x01) != 0)
    }
    #[doc = "Bit 24 - Protection context 7, user read enable."]
    #[inline(always)]
    pub fn pc7_ur(&self) -> PC7_UR_R {
        PC7_UR_R::new(((self.bits >> 24) & 0x01) != 0)
    }
    #[doc = "Bit 25 - Protection context 7, user write enable."]
    #[inline(always)]
    pub fn pc7_uw(&self) -> PC7_UW_R {
        PC7_UW_R::new(((self.bits >> 25) & 0x01) != 0)
    }
    #[doc = "Bit 26 - Protection context 7, privileged read enable."]
    #[inline(always)]
    pub fn pc7_pr(&self) -> PC7_PR_R {
        PC7_PR_R::new(((self.bits >> 26) & 0x01) != 0)
    }
    #[doc = "Bit 27 - Protection context 7, privileged write enable."]
    #[inline(always)]
    pub fn pc7_pw(&self) -> PC7_PW_R {
        PC7_PW_R::new(((self.bits >> 27) & 0x01) != 0)
    }
    #[doc = "Bit 28 - Protection context 7, non-secure."]
    #[inline(always)]
    pub fn pc7_ns(&self) -> PC7_NS_R {
        PC7_NS_R::new(((self.bits >> 28) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bit 1 - Protection context 4, user write enable."]
    #[inline(always)]
    pub fn pc4_uw(&mut self) -> PC4_UW_W {
        PC4_UW_W { w: self }
    }
    #[doc = "Bit 3 - Protection context 4, privileged write enable."]
    #[inline(always)]
    pub fn pc4_pw(&mut self) -> PC4_PW_W {
        PC4_PW_W { w: self }
    }
    #[doc = "Bit 4 - Protection context 4, non-secure."]
    #[inline(always)]
    pub fn pc4_ns(&mut self) -> PC4_NS_W {
        PC4_NS_W { w: self }
    }
    #[doc = "Bit 9 - Protection context 5, user write enable."]
    #[inline(always)]
    pub fn pc5_uw(&mut self) -> PC5_UW_W {
        PC5_UW_W { w: self }
    }
    #[doc = "Bit 11 - Protection context 5, privileged write enable."]
    #[inline(always)]
    pub fn pc5_pw(&mut self) -> PC5_PW_W {
        PC5_PW_W { w: self }
    }
    #[doc = "Bit 12 - Protection context 5, non-secure."]
    #[inline(always)]
    pub fn pc5_ns(&mut self) -> PC5_NS_W {
        PC5_NS_W { w: self }
    }
    #[doc = "Bit 17 - Protection context 6, user write enable."]
    #[inline(always)]
    pub fn pc6_uw(&mut self) -> PC6_UW_W {
        PC6_UW_W { w: self }
    }
    #[doc = "Bit 19 - Protection context 6, privileged write enable."]
    #[inline(always)]
    pub fn pc6_pw(&mut self) -> PC6_PW_W {
        PC6_PW_W { w: self }
    }
    #[doc = "Bit 20 - Protection context 6, non-secure."]
    #[inline(always)]
    pub fn pc6_ns(&mut self) -> PC6_NS_W {
        PC6_NS_W { w: self }
    }
    #[doc = "Bit 25 - Protection context 7, user write enable."]
    #[inline(always)]
    pub fn pc7_uw(&mut self) -> PC7_UW_W {
        PC7_UW_W { w: self }
    }
    #[doc = "Bit 27 - Protection context 7, privileged write enable."]
    #[inline(always)]
    pub fn pc7_pw(&mut self) -> PC7_PW_W {
        PC7_PW_W { w: self }
    }
    #[doc = "Bit 28 - Protection context 7, non-secure."]
    #[inline(always)]
    pub fn pc7_ns(&mut self) -> PC7_NS_W {
        PC7_NS_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Master attributes 1\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [ms_att1](index.html) module"]
pub struct MS_ATT1_SPEC;
impl crate::RegisterSpec for MS_ATT1_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [ms_att1::R](R) reader structure"]
impl crate::Readable for MS_ATT1_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [ms_att1::W](W) writer structure"]
impl crate::Writable for MS_ATT1_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets MS_ATT1 to value 0x1f1f_1f1f"]
impl crate::Resettable for MS_ATT1_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0x1f1f_1f1f
    }
}
