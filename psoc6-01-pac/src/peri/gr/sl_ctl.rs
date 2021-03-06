#[doc = "Register `SL_CTL` reader"]
pub struct R(crate::R<SL_CTL_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<SL_CTL_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<SL_CTL_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<SL_CTL_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `SL_CTL` writer"]
pub struct W(crate::W<SL_CTL_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<SL_CTL_SPEC>;
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
impl From<crate::W<SL_CTL_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<SL_CTL_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `ENABLED_0` reader - Peripheral group, slave 0 enable. If the slave is disabled, its clock is gated off (constant '0') and its resets are activated. Note: For peripheral group 0 (the peripheral interconnect MMIO registers), this field is a constant '1' (SW: R): the slave can NOT be disabled."]
pub struct ENABLED_0_R(crate::FieldReader<bool, bool>);
impl ENABLED_0_R {
    pub(crate) fn new(bits: bool) -> Self {
        ENABLED_0_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ENABLED_0_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ENABLED_0` writer - Peripheral group, slave 0 enable. If the slave is disabled, its clock is gated off (constant '0') and its resets are activated. Note: For peripheral group 0 (the peripheral interconnect MMIO registers), this field is a constant '1' (SW: R): the slave can NOT be disabled."]
pub struct ENABLED_0_W<'a> {
    w: &'a mut W,
}
impl<'a> ENABLED_0_W<'a> {
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
#[doc = "Field `ENABLED_1` reader - Peripheral group, slave 1 enable. If the slave is disabled, its clock is gated off (constant '0') and its resets are activated. Note: For peripheral group 0 (the peripheral interconnect, master interface MMIO registers), this field is a constant '1' (SW: R): the slave can NOT be disabled."]
pub struct ENABLED_1_R(crate::FieldReader<bool, bool>);
impl ENABLED_1_R {
    pub(crate) fn new(bits: bool) -> Self {
        ENABLED_1_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ENABLED_1_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ENABLED_1` writer - Peripheral group, slave 1 enable. If the slave is disabled, its clock is gated off (constant '0') and its resets are activated. Note: For peripheral group 0 (the peripheral interconnect, master interface MMIO registers), this field is a constant '1' (SW: R): the slave can NOT be disabled."]
pub struct ENABLED_1_W<'a> {
    w: &'a mut W,
}
impl<'a> ENABLED_1_W<'a> {
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
#[doc = "Field `ENABLED_2` reader - N/A"]
pub struct ENABLED_2_R(crate::FieldReader<bool, bool>);
impl ENABLED_2_R {
    pub(crate) fn new(bits: bool) -> Self {
        ENABLED_2_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ENABLED_2_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ENABLED_2` writer - N/A"]
pub struct ENABLED_2_W<'a> {
    w: &'a mut W,
}
impl<'a> ENABLED_2_W<'a> {
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
#[doc = "Field `ENABLED_3` reader - N/A"]
pub struct ENABLED_3_R(crate::FieldReader<bool, bool>);
impl ENABLED_3_R {
    pub(crate) fn new(bits: bool) -> Self {
        ENABLED_3_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ENABLED_3_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ENABLED_3` writer - N/A"]
pub struct ENABLED_3_W<'a> {
    w: &'a mut W,
}
impl<'a> ENABLED_3_W<'a> {
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
#[doc = "Field `ENABLED_4` reader - N/A"]
pub struct ENABLED_4_R(crate::FieldReader<bool, bool>);
impl ENABLED_4_R {
    pub(crate) fn new(bits: bool) -> Self {
        ENABLED_4_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ENABLED_4_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ENABLED_4` writer - N/A"]
pub struct ENABLED_4_W<'a> {
    w: &'a mut W,
}
impl<'a> ENABLED_4_W<'a> {
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
#[doc = "Field `ENABLED_5` reader - N/A"]
pub struct ENABLED_5_R(crate::FieldReader<bool, bool>);
impl ENABLED_5_R {
    pub(crate) fn new(bits: bool) -> Self {
        ENABLED_5_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ENABLED_5_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ENABLED_5` writer - N/A"]
pub struct ENABLED_5_W<'a> {
    w: &'a mut W,
}
impl<'a> ENABLED_5_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 5)) | ((value as u32 & 0x01) << 5);
        self.w
    }
}
#[doc = "Field `ENABLED_6` reader - N/A"]
pub struct ENABLED_6_R(crate::FieldReader<bool, bool>);
impl ENABLED_6_R {
    pub(crate) fn new(bits: bool) -> Self {
        ENABLED_6_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ENABLED_6_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ENABLED_6` writer - N/A"]
pub struct ENABLED_6_W<'a> {
    w: &'a mut W,
}
impl<'a> ENABLED_6_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 6)) | ((value as u32 & 0x01) << 6);
        self.w
    }
}
#[doc = "Field `ENABLED_7` reader - N/A"]
pub struct ENABLED_7_R(crate::FieldReader<bool, bool>);
impl ENABLED_7_R {
    pub(crate) fn new(bits: bool) -> Self {
        ENABLED_7_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ENABLED_7_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ENABLED_7` writer - N/A"]
pub struct ENABLED_7_W<'a> {
    w: &'a mut W,
}
impl<'a> ENABLED_7_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 7)) | ((value as u32 & 0x01) << 7);
        self.w
    }
}
#[doc = "Field `ENABLED_8` reader - N/A"]
pub struct ENABLED_8_R(crate::FieldReader<bool, bool>);
impl ENABLED_8_R {
    pub(crate) fn new(bits: bool) -> Self {
        ENABLED_8_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ENABLED_8_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ENABLED_8` writer - N/A"]
pub struct ENABLED_8_W<'a> {
    w: &'a mut W,
}
impl<'a> ENABLED_8_W<'a> {
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
#[doc = "Field `ENABLED_9` reader - N/A"]
pub struct ENABLED_9_R(crate::FieldReader<bool, bool>);
impl ENABLED_9_R {
    pub(crate) fn new(bits: bool) -> Self {
        ENABLED_9_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ENABLED_9_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ENABLED_9` writer - N/A"]
pub struct ENABLED_9_W<'a> {
    w: &'a mut W,
}
impl<'a> ENABLED_9_W<'a> {
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
#[doc = "Field `ENABLED_10` reader - N/A"]
pub struct ENABLED_10_R(crate::FieldReader<bool, bool>);
impl ENABLED_10_R {
    pub(crate) fn new(bits: bool) -> Self {
        ENABLED_10_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ENABLED_10_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ENABLED_10` writer - N/A"]
pub struct ENABLED_10_W<'a> {
    w: &'a mut W,
}
impl<'a> ENABLED_10_W<'a> {
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
#[doc = "Field `ENABLED_11` reader - N/A"]
pub struct ENABLED_11_R(crate::FieldReader<bool, bool>);
impl ENABLED_11_R {
    pub(crate) fn new(bits: bool) -> Self {
        ENABLED_11_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ENABLED_11_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ENABLED_11` writer - N/A"]
pub struct ENABLED_11_W<'a> {
    w: &'a mut W,
}
impl<'a> ENABLED_11_W<'a> {
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
#[doc = "Field `ENABLED_12` reader - N/A"]
pub struct ENABLED_12_R(crate::FieldReader<bool, bool>);
impl ENABLED_12_R {
    pub(crate) fn new(bits: bool) -> Self {
        ENABLED_12_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ENABLED_12_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ENABLED_12` writer - N/A"]
pub struct ENABLED_12_W<'a> {
    w: &'a mut W,
}
impl<'a> ENABLED_12_W<'a> {
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
#[doc = "Field `ENABLED_13` reader - N/A"]
pub struct ENABLED_13_R(crate::FieldReader<bool, bool>);
impl ENABLED_13_R {
    pub(crate) fn new(bits: bool) -> Self {
        ENABLED_13_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ENABLED_13_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ENABLED_13` writer - N/A"]
pub struct ENABLED_13_W<'a> {
    w: &'a mut W,
}
impl<'a> ENABLED_13_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 13)) | ((value as u32 & 0x01) << 13);
        self.w
    }
}
#[doc = "Field `ENABLED_14` reader - N/A"]
pub struct ENABLED_14_R(crate::FieldReader<bool, bool>);
impl ENABLED_14_R {
    pub(crate) fn new(bits: bool) -> Self {
        ENABLED_14_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ENABLED_14_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ENABLED_14` writer - N/A"]
pub struct ENABLED_14_W<'a> {
    w: &'a mut W,
}
impl<'a> ENABLED_14_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 14)) | ((value as u32 & 0x01) << 14);
        self.w
    }
}
#[doc = "Field `ENABLED_15` reader - N/A"]
pub struct ENABLED_15_R(crate::FieldReader<bool, bool>);
impl ENABLED_15_R {
    pub(crate) fn new(bits: bool) -> Self {
        ENABLED_15_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ENABLED_15_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ENABLED_15` writer - N/A"]
pub struct ENABLED_15_W<'a> {
    w: &'a mut W,
}
impl<'a> ENABLED_15_W<'a> {
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
#[doc = "Field `DISABLED_0` reader - Peripheral group, slave 0 permanent disable. Setting this bit to 1 has the same effect as setting ENABLED_0 to 0. However, once set to 1, this bit cannot be changed back to 0 anymore."]
pub struct DISABLED_0_R(crate::FieldReader<bool, bool>);
impl DISABLED_0_R {
    pub(crate) fn new(bits: bool) -> Self {
        DISABLED_0_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DISABLED_0_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DISABLED_0` writer - Peripheral group, slave 0 permanent disable. Setting this bit to 1 has the same effect as setting ENABLED_0 to 0. However, once set to 1, this bit cannot be changed back to 0 anymore."]
pub struct DISABLED_0_W<'a> {
    w: &'a mut W,
}
impl<'a> DISABLED_0_W<'a> {
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
#[doc = "Field `DISABLED_1` reader - N/A"]
pub struct DISABLED_1_R(crate::FieldReader<bool, bool>);
impl DISABLED_1_R {
    pub(crate) fn new(bits: bool) -> Self {
        DISABLED_1_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DISABLED_1_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DISABLED_1` writer - N/A"]
pub struct DISABLED_1_W<'a> {
    w: &'a mut W,
}
impl<'a> DISABLED_1_W<'a> {
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
#[doc = "Field `DISABLED_2` reader - N/A"]
pub struct DISABLED_2_R(crate::FieldReader<bool, bool>);
impl DISABLED_2_R {
    pub(crate) fn new(bits: bool) -> Self {
        DISABLED_2_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DISABLED_2_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DISABLED_2` writer - N/A"]
pub struct DISABLED_2_W<'a> {
    w: &'a mut W,
}
impl<'a> DISABLED_2_W<'a> {
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
#[doc = "Field `DISABLED_3` reader - N/A"]
pub struct DISABLED_3_R(crate::FieldReader<bool, bool>);
impl DISABLED_3_R {
    pub(crate) fn new(bits: bool) -> Self {
        DISABLED_3_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DISABLED_3_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DISABLED_3` writer - N/A"]
pub struct DISABLED_3_W<'a> {
    w: &'a mut W,
}
impl<'a> DISABLED_3_W<'a> {
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
#[doc = "Field `DISABLED_4` reader - N/A"]
pub struct DISABLED_4_R(crate::FieldReader<bool, bool>);
impl DISABLED_4_R {
    pub(crate) fn new(bits: bool) -> Self {
        DISABLED_4_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DISABLED_4_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DISABLED_4` writer - N/A"]
pub struct DISABLED_4_W<'a> {
    w: &'a mut W,
}
impl<'a> DISABLED_4_W<'a> {
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
#[doc = "Field `DISABLED_5` reader - N/A"]
pub struct DISABLED_5_R(crate::FieldReader<bool, bool>);
impl DISABLED_5_R {
    pub(crate) fn new(bits: bool) -> Self {
        DISABLED_5_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DISABLED_5_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DISABLED_5` writer - N/A"]
pub struct DISABLED_5_W<'a> {
    w: &'a mut W,
}
impl<'a> DISABLED_5_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 21)) | ((value as u32 & 0x01) << 21);
        self.w
    }
}
#[doc = "Field `DISABLED_6` reader - N/A"]
pub struct DISABLED_6_R(crate::FieldReader<bool, bool>);
impl DISABLED_6_R {
    pub(crate) fn new(bits: bool) -> Self {
        DISABLED_6_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DISABLED_6_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DISABLED_6` writer - N/A"]
pub struct DISABLED_6_W<'a> {
    w: &'a mut W,
}
impl<'a> DISABLED_6_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 22)) | ((value as u32 & 0x01) << 22);
        self.w
    }
}
#[doc = "Field `DISABLED_7` reader - N/A"]
pub struct DISABLED_7_R(crate::FieldReader<bool, bool>);
impl DISABLED_7_R {
    pub(crate) fn new(bits: bool) -> Self {
        DISABLED_7_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DISABLED_7_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DISABLED_7` writer - N/A"]
pub struct DISABLED_7_W<'a> {
    w: &'a mut W,
}
impl<'a> DISABLED_7_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 23)) | ((value as u32 & 0x01) << 23);
        self.w
    }
}
#[doc = "Field `DISABLED_8` reader - N/A"]
pub struct DISABLED_8_R(crate::FieldReader<bool, bool>);
impl DISABLED_8_R {
    pub(crate) fn new(bits: bool) -> Self {
        DISABLED_8_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DISABLED_8_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DISABLED_8` writer - N/A"]
pub struct DISABLED_8_W<'a> {
    w: &'a mut W,
}
impl<'a> DISABLED_8_W<'a> {
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
#[doc = "Field `DISABLED_9` reader - N/A"]
pub struct DISABLED_9_R(crate::FieldReader<bool, bool>);
impl DISABLED_9_R {
    pub(crate) fn new(bits: bool) -> Self {
        DISABLED_9_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DISABLED_9_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DISABLED_9` writer - N/A"]
pub struct DISABLED_9_W<'a> {
    w: &'a mut W,
}
impl<'a> DISABLED_9_W<'a> {
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
#[doc = "Field `DISABLED_10` reader - N/A"]
pub struct DISABLED_10_R(crate::FieldReader<bool, bool>);
impl DISABLED_10_R {
    pub(crate) fn new(bits: bool) -> Self {
        DISABLED_10_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DISABLED_10_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DISABLED_10` writer - N/A"]
pub struct DISABLED_10_W<'a> {
    w: &'a mut W,
}
impl<'a> DISABLED_10_W<'a> {
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
#[doc = "Field `DISABLED_11` reader - N/A"]
pub struct DISABLED_11_R(crate::FieldReader<bool, bool>);
impl DISABLED_11_R {
    pub(crate) fn new(bits: bool) -> Self {
        DISABLED_11_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DISABLED_11_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DISABLED_11` writer - N/A"]
pub struct DISABLED_11_W<'a> {
    w: &'a mut W,
}
impl<'a> DISABLED_11_W<'a> {
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
#[doc = "Field `DISABLED_12` reader - N/A"]
pub struct DISABLED_12_R(crate::FieldReader<bool, bool>);
impl DISABLED_12_R {
    pub(crate) fn new(bits: bool) -> Self {
        DISABLED_12_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DISABLED_12_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DISABLED_12` writer - N/A"]
pub struct DISABLED_12_W<'a> {
    w: &'a mut W,
}
impl<'a> DISABLED_12_W<'a> {
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
#[doc = "Field `DISABLED_13` reader - N/A"]
pub struct DISABLED_13_R(crate::FieldReader<bool, bool>);
impl DISABLED_13_R {
    pub(crate) fn new(bits: bool) -> Self {
        DISABLED_13_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DISABLED_13_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DISABLED_13` writer - N/A"]
pub struct DISABLED_13_W<'a> {
    w: &'a mut W,
}
impl<'a> DISABLED_13_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 29)) | ((value as u32 & 0x01) << 29);
        self.w
    }
}
#[doc = "Field `DISABLED_14` reader - N/A"]
pub struct DISABLED_14_R(crate::FieldReader<bool, bool>);
impl DISABLED_14_R {
    pub(crate) fn new(bits: bool) -> Self {
        DISABLED_14_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DISABLED_14_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DISABLED_14` writer - N/A"]
pub struct DISABLED_14_W<'a> {
    w: &'a mut W,
}
impl<'a> DISABLED_14_W<'a> {
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
#[doc = "Field `DISABLED_15` reader - N/A"]
pub struct DISABLED_15_R(crate::FieldReader<bool, bool>);
impl DISABLED_15_R {
    pub(crate) fn new(bits: bool) -> Self {
        DISABLED_15_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DISABLED_15_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DISABLED_15` writer - N/A"]
pub struct DISABLED_15_W<'a> {
    w: &'a mut W,
}
impl<'a> DISABLED_15_W<'a> {
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
    #[doc = "Bit 0 - Peripheral group, slave 0 enable. If the slave is disabled, its clock is gated off (constant '0') and its resets are activated. Note: For peripheral group 0 (the peripheral interconnect MMIO registers), this field is a constant '1' (SW: R): the slave can NOT be disabled."]
    #[inline(always)]
    pub fn enabled_0(&self) -> ENABLED_0_R {
        ENABLED_0_R::new((self.bits & 0x01) != 0)
    }
    #[doc = "Bit 1 - Peripheral group, slave 1 enable. If the slave is disabled, its clock is gated off (constant '0') and its resets are activated. Note: For peripheral group 0 (the peripheral interconnect, master interface MMIO registers), this field is a constant '1' (SW: R): the slave can NOT be disabled."]
    #[inline(always)]
    pub fn enabled_1(&self) -> ENABLED_1_R {
        ENABLED_1_R::new(((self.bits >> 1) & 0x01) != 0)
    }
    #[doc = "Bit 2 - N/A"]
    #[inline(always)]
    pub fn enabled_2(&self) -> ENABLED_2_R {
        ENABLED_2_R::new(((self.bits >> 2) & 0x01) != 0)
    }
    #[doc = "Bit 3 - N/A"]
    #[inline(always)]
    pub fn enabled_3(&self) -> ENABLED_3_R {
        ENABLED_3_R::new(((self.bits >> 3) & 0x01) != 0)
    }
    #[doc = "Bit 4 - N/A"]
    #[inline(always)]
    pub fn enabled_4(&self) -> ENABLED_4_R {
        ENABLED_4_R::new(((self.bits >> 4) & 0x01) != 0)
    }
    #[doc = "Bit 5 - N/A"]
    #[inline(always)]
    pub fn enabled_5(&self) -> ENABLED_5_R {
        ENABLED_5_R::new(((self.bits >> 5) & 0x01) != 0)
    }
    #[doc = "Bit 6 - N/A"]
    #[inline(always)]
    pub fn enabled_6(&self) -> ENABLED_6_R {
        ENABLED_6_R::new(((self.bits >> 6) & 0x01) != 0)
    }
    #[doc = "Bit 7 - N/A"]
    #[inline(always)]
    pub fn enabled_7(&self) -> ENABLED_7_R {
        ENABLED_7_R::new(((self.bits >> 7) & 0x01) != 0)
    }
    #[doc = "Bit 8 - N/A"]
    #[inline(always)]
    pub fn enabled_8(&self) -> ENABLED_8_R {
        ENABLED_8_R::new(((self.bits >> 8) & 0x01) != 0)
    }
    #[doc = "Bit 9 - N/A"]
    #[inline(always)]
    pub fn enabled_9(&self) -> ENABLED_9_R {
        ENABLED_9_R::new(((self.bits >> 9) & 0x01) != 0)
    }
    #[doc = "Bit 10 - N/A"]
    #[inline(always)]
    pub fn enabled_10(&self) -> ENABLED_10_R {
        ENABLED_10_R::new(((self.bits >> 10) & 0x01) != 0)
    }
    #[doc = "Bit 11 - N/A"]
    #[inline(always)]
    pub fn enabled_11(&self) -> ENABLED_11_R {
        ENABLED_11_R::new(((self.bits >> 11) & 0x01) != 0)
    }
    #[doc = "Bit 12 - N/A"]
    #[inline(always)]
    pub fn enabled_12(&self) -> ENABLED_12_R {
        ENABLED_12_R::new(((self.bits >> 12) & 0x01) != 0)
    }
    #[doc = "Bit 13 - N/A"]
    #[inline(always)]
    pub fn enabled_13(&self) -> ENABLED_13_R {
        ENABLED_13_R::new(((self.bits >> 13) & 0x01) != 0)
    }
    #[doc = "Bit 14 - N/A"]
    #[inline(always)]
    pub fn enabled_14(&self) -> ENABLED_14_R {
        ENABLED_14_R::new(((self.bits >> 14) & 0x01) != 0)
    }
    #[doc = "Bit 15 - N/A"]
    #[inline(always)]
    pub fn enabled_15(&self) -> ENABLED_15_R {
        ENABLED_15_R::new(((self.bits >> 15) & 0x01) != 0)
    }
    #[doc = "Bit 16 - Peripheral group, slave 0 permanent disable. Setting this bit to 1 has the same effect as setting ENABLED_0 to 0. However, once set to 1, this bit cannot be changed back to 0 anymore."]
    #[inline(always)]
    pub fn disabled_0(&self) -> DISABLED_0_R {
        DISABLED_0_R::new(((self.bits >> 16) & 0x01) != 0)
    }
    #[doc = "Bit 17 - N/A"]
    #[inline(always)]
    pub fn disabled_1(&self) -> DISABLED_1_R {
        DISABLED_1_R::new(((self.bits >> 17) & 0x01) != 0)
    }
    #[doc = "Bit 18 - N/A"]
    #[inline(always)]
    pub fn disabled_2(&self) -> DISABLED_2_R {
        DISABLED_2_R::new(((self.bits >> 18) & 0x01) != 0)
    }
    #[doc = "Bit 19 - N/A"]
    #[inline(always)]
    pub fn disabled_3(&self) -> DISABLED_3_R {
        DISABLED_3_R::new(((self.bits >> 19) & 0x01) != 0)
    }
    #[doc = "Bit 20 - N/A"]
    #[inline(always)]
    pub fn disabled_4(&self) -> DISABLED_4_R {
        DISABLED_4_R::new(((self.bits >> 20) & 0x01) != 0)
    }
    #[doc = "Bit 21 - N/A"]
    #[inline(always)]
    pub fn disabled_5(&self) -> DISABLED_5_R {
        DISABLED_5_R::new(((self.bits >> 21) & 0x01) != 0)
    }
    #[doc = "Bit 22 - N/A"]
    #[inline(always)]
    pub fn disabled_6(&self) -> DISABLED_6_R {
        DISABLED_6_R::new(((self.bits >> 22) & 0x01) != 0)
    }
    #[doc = "Bit 23 - N/A"]
    #[inline(always)]
    pub fn disabled_7(&self) -> DISABLED_7_R {
        DISABLED_7_R::new(((self.bits >> 23) & 0x01) != 0)
    }
    #[doc = "Bit 24 - N/A"]
    #[inline(always)]
    pub fn disabled_8(&self) -> DISABLED_8_R {
        DISABLED_8_R::new(((self.bits >> 24) & 0x01) != 0)
    }
    #[doc = "Bit 25 - N/A"]
    #[inline(always)]
    pub fn disabled_9(&self) -> DISABLED_9_R {
        DISABLED_9_R::new(((self.bits >> 25) & 0x01) != 0)
    }
    #[doc = "Bit 26 - N/A"]
    #[inline(always)]
    pub fn disabled_10(&self) -> DISABLED_10_R {
        DISABLED_10_R::new(((self.bits >> 26) & 0x01) != 0)
    }
    #[doc = "Bit 27 - N/A"]
    #[inline(always)]
    pub fn disabled_11(&self) -> DISABLED_11_R {
        DISABLED_11_R::new(((self.bits >> 27) & 0x01) != 0)
    }
    #[doc = "Bit 28 - N/A"]
    #[inline(always)]
    pub fn disabled_12(&self) -> DISABLED_12_R {
        DISABLED_12_R::new(((self.bits >> 28) & 0x01) != 0)
    }
    #[doc = "Bit 29 - N/A"]
    #[inline(always)]
    pub fn disabled_13(&self) -> DISABLED_13_R {
        DISABLED_13_R::new(((self.bits >> 29) & 0x01) != 0)
    }
    #[doc = "Bit 30 - N/A"]
    #[inline(always)]
    pub fn disabled_14(&self) -> DISABLED_14_R {
        DISABLED_14_R::new(((self.bits >> 30) & 0x01) != 0)
    }
    #[doc = "Bit 31 - N/A"]
    #[inline(always)]
    pub fn disabled_15(&self) -> DISABLED_15_R {
        DISABLED_15_R::new(((self.bits >> 31) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bit 0 - Peripheral group, slave 0 enable. If the slave is disabled, its clock is gated off (constant '0') and its resets are activated. Note: For peripheral group 0 (the peripheral interconnect MMIO registers), this field is a constant '1' (SW: R): the slave can NOT be disabled."]
    #[inline(always)]
    pub fn enabled_0(&mut self) -> ENABLED_0_W {
        ENABLED_0_W { w: self }
    }
    #[doc = "Bit 1 - Peripheral group, slave 1 enable. If the slave is disabled, its clock is gated off (constant '0') and its resets are activated. Note: For peripheral group 0 (the peripheral interconnect, master interface MMIO registers), this field is a constant '1' (SW: R): the slave can NOT be disabled."]
    #[inline(always)]
    pub fn enabled_1(&mut self) -> ENABLED_1_W {
        ENABLED_1_W { w: self }
    }
    #[doc = "Bit 2 - N/A"]
    #[inline(always)]
    pub fn enabled_2(&mut self) -> ENABLED_2_W {
        ENABLED_2_W { w: self }
    }
    #[doc = "Bit 3 - N/A"]
    #[inline(always)]
    pub fn enabled_3(&mut self) -> ENABLED_3_W {
        ENABLED_3_W { w: self }
    }
    #[doc = "Bit 4 - N/A"]
    #[inline(always)]
    pub fn enabled_4(&mut self) -> ENABLED_4_W {
        ENABLED_4_W { w: self }
    }
    #[doc = "Bit 5 - N/A"]
    #[inline(always)]
    pub fn enabled_5(&mut self) -> ENABLED_5_W {
        ENABLED_5_W { w: self }
    }
    #[doc = "Bit 6 - N/A"]
    #[inline(always)]
    pub fn enabled_6(&mut self) -> ENABLED_6_W {
        ENABLED_6_W { w: self }
    }
    #[doc = "Bit 7 - N/A"]
    #[inline(always)]
    pub fn enabled_7(&mut self) -> ENABLED_7_W {
        ENABLED_7_W { w: self }
    }
    #[doc = "Bit 8 - N/A"]
    #[inline(always)]
    pub fn enabled_8(&mut self) -> ENABLED_8_W {
        ENABLED_8_W { w: self }
    }
    #[doc = "Bit 9 - N/A"]
    #[inline(always)]
    pub fn enabled_9(&mut self) -> ENABLED_9_W {
        ENABLED_9_W { w: self }
    }
    #[doc = "Bit 10 - N/A"]
    #[inline(always)]
    pub fn enabled_10(&mut self) -> ENABLED_10_W {
        ENABLED_10_W { w: self }
    }
    #[doc = "Bit 11 - N/A"]
    #[inline(always)]
    pub fn enabled_11(&mut self) -> ENABLED_11_W {
        ENABLED_11_W { w: self }
    }
    #[doc = "Bit 12 - N/A"]
    #[inline(always)]
    pub fn enabled_12(&mut self) -> ENABLED_12_W {
        ENABLED_12_W { w: self }
    }
    #[doc = "Bit 13 - N/A"]
    #[inline(always)]
    pub fn enabled_13(&mut self) -> ENABLED_13_W {
        ENABLED_13_W { w: self }
    }
    #[doc = "Bit 14 - N/A"]
    #[inline(always)]
    pub fn enabled_14(&mut self) -> ENABLED_14_W {
        ENABLED_14_W { w: self }
    }
    #[doc = "Bit 15 - N/A"]
    #[inline(always)]
    pub fn enabled_15(&mut self) -> ENABLED_15_W {
        ENABLED_15_W { w: self }
    }
    #[doc = "Bit 16 - Peripheral group, slave 0 permanent disable. Setting this bit to 1 has the same effect as setting ENABLED_0 to 0. However, once set to 1, this bit cannot be changed back to 0 anymore."]
    #[inline(always)]
    pub fn disabled_0(&mut self) -> DISABLED_0_W {
        DISABLED_0_W { w: self }
    }
    #[doc = "Bit 17 - N/A"]
    #[inline(always)]
    pub fn disabled_1(&mut self) -> DISABLED_1_W {
        DISABLED_1_W { w: self }
    }
    #[doc = "Bit 18 - N/A"]
    #[inline(always)]
    pub fn disabled_2(&mut self) -> DISABLED_2_W {
        DISABLED_2_W { w: self }
    }
    #[doc = "Bit 19 - N/A"]
    #[inline(always)]
    pub fn disabled_3(&mut self) -> DISABLED_3_W {
        DISABLED_3_W { w: self }
    }
    #[doc = "Bit 20 - N/A"]
    #[inline(always)]
    pub fn disabled_4(&mut self) -> DISABLED_4_W {
        DISABLED_4_W { w: self }
    }
    #[doc = "Bit 21 - N/A"]
    #[inline(always)]
    pub fn disabled_5(&mut self) -> DISABLED_5_W {
        DISABLED_5_W { w: self }
    }
    #[doc = "Bit 22 - N/A"]
    #[inline(always)]
    pub fn disabled_6(&mut self) -> DISABLED_6_W {
        DISABLED_6_W { w: self }
    }
    #[doc = "Bit 23 - N/A"]
    #[inline(always)]
    pub fn disabled_7(&mut self) -> DISABLED_7_W {
        DISABLED_7_W { w: self }
    }
    #[doc = "Bit 24 - N/A"]
    #[inline(always)]
    pub fn disabled_8(&mut self) -> DISABLED_8_W {
        DISABLED_8_W { w: self }
    }
    #[doc = "Bit 25 - N/A"]
    #[inline(always)]
    pub fn disabled_9(&mut self) -> DISABLED_9_W {
        DISABLED_9_W { w: self }
    }
    #[doc = "Bit 26 - N/A"]
    #[inline(always)]
    pub fn disabled_10(&mut self) -> DISABLED_10_W {
        DISABLED_10_W { w: self }
    }
    #[doc = "Bit 27 - N/A"]
    #[inline(always)]
    pub fn disabled_11(&mut self) -> DISABLED_11_W {
        DISABLED_11_W { w: self }
    }
    #[doc = "Bit 28 - N/A"]
    #[inline(always)]
    pub fn disabled_12(&mut self) -> DISABLED_12_W {
        DISABLED_12_W { w: self }
    }
    #[doc = "Bit 29 - N/A"]
    #[inline(always)]
    pub fn disabled_13(&mut self) -> DISABLED_13_W {
        DISABLED_13_W { w: self }
    }
    #[doc = "Bit 30 - N/A"]
    #[inline(always)]
    pub fn disabled_14(&mut self) -> DISABLED_14_W {
        DISABLED_14_W { w: self }
    }
    #[doc = "Bit 31 - N/A"]
    #[inline(always)]
    pub fn disabled_15(&mut self) -> DISABLED_15_W {
        DISABLED_15_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Slave control\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [sl_ctl](index.html) module"]
pub struct SL_CTL_SPEC;
impl crate::RegisterSpec for SL_CTL_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [sl_ctl::R](R) reader structure"]
impl crate::Readable for SL_CTL_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [sl_ctl::W](W) writer structure"]
impl crate::Writable for SL_CTL_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets SL_CTL to value 0xffff"]
impl crate::Resettable for SL_CTL_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0xffff
    }
}
