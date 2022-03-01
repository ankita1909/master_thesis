#[doc = "Register `ERROR_INT_SIGNAL_EN_R` reader"]
pub struct R(crate::R<ERROR_INT_SIGNAL_EN_R_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<ERROR_INT_SIGNAL_EN_R_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<ERROR_INT_SIGNAL_EN_R_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<ERROR_INT_SIGNAL_EN_R_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `ERROR_INT_SIGNAL_EN_R` writer"]
pub struct W(crate::W<ERROR_INT_SIGNAL_EN_R_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<ERROR_INT_SIGNAL_EN_R_SPEC>;
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
impl From<crate::W<ERROR_INT_SIGNAL_EN_R_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<ERROR_INT_SIGNAL_EN_R_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `CMD_TOUT_ERR_SIGNAL_EN` reader - Command Timeout Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct CMD_TOUT_ERR_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl CMD_TOUT_ERR_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        CMD_TOUT_ERR_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CMD_TOUT_ERR_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CMD_TOUT_ERR_SIGNAL_EN` writer - Command Timeout Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct CMD_TOUT_ERR_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> CMD_TOUT_ERR_SIGNAL_EN_W<'a> {
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
#[doc = "Field `CMD_CRC_ERR_SIGNAL_EN` reader - Command CRC Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct CMD_CRC_ERR_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl CMD_CRC_ERR_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        CMD_CRC_ERR_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CMD_CRC_ERR_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CMD_CRC_ERR_SIGNAL_EN` writer - Command CRC Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct CMD_CRC_ERR_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> CMD_CRC_ERR_SIGNAL_EN_W<'a> {
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
#[doc = "Field `CMD_END_BIT_ERR_SIGNAL_EN` reader - Command End Bit Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct CMD_END_BIT_ERR_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl CMD_END_BIT_ERR_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        CMD_END_BIT_ERR_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CMD_END_BIT_ERR_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CMD_END_BIT_ERR_SIGNAL_EN` writer - Command End Bit Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct CMD_END_BIT_ERR_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> CMD_END_BIT_ERR_SIGNAL_EN_W<'a> {
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
#[doc = "Field `CMD_IDX_ERR_SIGNAL_EN` reader - Command Index Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): No error - 0x1 (TRUE): Error"]
pub struct CMD_IDX_ERR_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl CMD_IDX_ERR_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        CMD_IDX_ERR_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CMD_IDX_ERR_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CMD_IDX_ERR_SIGNAL_EN` writer - Command Index Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): No error - 0x1 (TRUE): Error"]
pub struct CMD_IDX_ERR_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> CMD_IDX_ERR_SIGNAL_EN_W<'a> {
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
#[doc = "Field `DATA_TOUT_ERR_SIGNAL_EN` reader - Data Timeout Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct DATA_TOUT_ERR_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl DATA_TOUT_ERR_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        DATA_TOUT_ERR_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DATA_TOUT_ERR_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DATA_TOUT_ERR_SIGNAL_EN` writer - Data Timeout Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct DATA_TOUT_ERR_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> DATA_TOUT_ERR_SIGNAL_EN_W<'a> {
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
#[doc = "Field `DATA_CRC_ERR_SIGNAL_EN` reader - Data CRC Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct DATA_CRC_ERR_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl DATA_CRC_ERR_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        DATA_CRC_ERR_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DATA_CRC_ERR_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DATA_CRC_ERR_SIGNAL_EN` writer - Data CRC Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct DATA_CRC_ERR_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> DATA_CRC_ERR_SIGNAL_EN_W<'a> {
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
#[doc = "Field `DATA_END_BIT_ERR_SIGNAL_EN` reader - Data End Bit Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct DATA_END_BIT_ERR_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl DATA_END_BIT_ERR_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        DATA_END_BIT_ERR_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DATA_END_BIT_ERR_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DATA_END_BIT_ERR_SIGNAL_EN` writer - Data End Bit Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct DATA_END_BIT_ERR_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> DATA_END_BIT_ERR_SIGNAL_EN_W<'a> {
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
#[doc = "Field `CUR_LMT_ERR_SIGNAL_EN` reader - Current Limit Error Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct CUR_LMT_ERR_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl CUR_LMT_ERR_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        CUR_LMT_ERR_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CUR_LMT_ERR_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CUR_LMT_ERR_SIGNAL_EN` writer - Current Limit Error Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct CUR_LMT_ERR_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> CUR_LMT_ERR_SIGNAL_EN_W<'a> {
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
#[doc = "Field `AUTO_CMD_ERR_SIGNAL_EN` reader - Auto CMD Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct AUTO_CMD_ERR_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl AUTO_CMD_ERR_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        AUTO_CMD_ERR_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for AUTO_CMD_ERR_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `AUTO_CMD_ERR_SIGNAL_EN` writer - Auto CMD Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct AUTO_CMD_ERR_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> AUTO_CMD_ERR_SIGNAL_EN_W<'a> {
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
#[doc = "Field `ADMA_ERR_SIGNAL_EN` reader - ADMA Error Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct ADMA_ERR_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl ADMA_ERR_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        ADMA_ERR_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ADMA_ERR_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ADMA_ERR_SIGNAL_EN` writer - ADMA Error Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct ADMA_ERR_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> ADMA_ERR_SIGNAL_EN_W<'a> {
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
#[doc = "Field `TUNING_ERR_SIGNAL_EN` reader - N/A"]
pub struct TUNING_ERR_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl TUNING_ERR_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        TUNING_ERR_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for TUNING_ERR_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `TUNING_ERR_SIGNAL_EN` writer - N/A"]
pub struct TUNING_ERR_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> TUNING_ERR_SIGNAL_EN_W<'a> {
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
#[doc = "Field `RESP_ERR_SIGNAL_EN` reader - Response Error Signal Enable (SD Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct RESP_ERR_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl RESP_ERR_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        RESP_ERR_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RESP_ERR_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `RESP_ERR_SIGNAL_EN` writer - Response Error Signal Enable (SD Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct RESP_ERR_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> RESP_ERR_SIGNAL_EN_W<'a> {
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
#[doc = "Field `BOOT_ACK_ERR_SIGNAL_EN` reader - Boot Acknowledgment Error (eMMC Mode only). Setting this bit to 1 enables generating interrupt signal when Boot Acknowledgement Error in Error Interrupt Status register is set. Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct BOOT_ACK_ERR_SIGNAL_EN_R(crate::FieldReader<bool, bool>);
impl BOOT_ACK_ERR_SIGNAL_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        BOOT_ACK_ERR_SIGNAL_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for BOOT_ACK_ERR_SIGNAL_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `BOOT_ACK_ERR_SIGNAL_EN` writer - Boot Acknowledgment Error (eMMC Mode only). Setting this bit to 1 enables generating interrupt signal when Boot Acknowledgement Error in Error Interrupt Status register is set. Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
pub struct BOOT_ACK_ERR_SIGNAL_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> BOOT_ACK_ERR_SIGNAL_EN_W<'a> {
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
#[doc = "Field `VENDOR_ERR_SIGNAL_EN1` reader - N/A"]
pub struct VENDOR_ERR_SIGNAL_EN1_R(crate::FieldReader<bool, bool>);
impl VENDOR_ERR_SIGNAL_EN1_R {
    pub(crate) fn new(bits: bool) -> Self {
        VENDOR_ERR_SIGNAL_EN1_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for VENDOR_ERR_SIGNAL_EN1_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `VENDOR_ERR_SIGNAL_EN1` writer - N/A"]
pub struct VENDOR_ERR_SIGNAL_EN1_W<'a> {
    w: &'a mut W,
}
impl<'a> VENDOR_ERR_SIGNAL_EN1_W<'a> {
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
#[doc = "Field `VENDOR_ERR_SIGNAL_EN2` reader - N/A"]
pub struct VENDOR_ERR_SIGNAL_EN2_R(crate::FieldReader<bool, bool>);
impl VENDOR_ERR_SIGNAL_EN2_R {
    pub(crate) fn new(bits: bool) -> Self {
        VENDOR_ERR_SIGNAL_EN2_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for VENDOR_ERR_SIGNAL_EN2_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `VENDOR_ERR_SIGNAL_EN2` writer - N/A"]
pub struct VENDOR_ERR_SIGNAL_EN2_W<'a> {
    w: &'a mut W,
}
impl<'a> VENDOR_ERR_SIGNAL_EN2_W<'a> {
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
#[doc = "Field `VENDOR_ERR_SIGNAL_EN3` reader - N/A"]
pub struct VENDOR_ERR_SIGNAL_EN3_R(crate::FieldReader<bool, bool>);
impl VENDOR_ERR_SIGNAL_EN3_R {
    pub(crate) fn new(bits: bool) -> Self {
        VENDOR_ERR_SIGNAL_EN3_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for VENDOR_ERR_SIGNAL_EN3_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `VENDOR_ERR_SIGNAL_EN3` writer - N/A"]
pub struct VENDOR_ERR_SIGNAL_EN3_W<'a> {
    w: &'a mut W,
}
impl<'a> VENDOR_ERR_SIGNAL_EN3_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 15)) | ((value as u16 & 0x01) << 15);
        self.w
    }
}
impl R {
    #[doc = "Bit 0 - Command Timeout Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn cmd_tout_err_signal_en(&self) -> CMD_TOUT_ERR_SIGNAL_EN_R {
        CMD_TOUT_ERR_SIGNAL_EN_R::new((self.bits & 0x01) != 0)
    }
    #[doc = "Bit 1 - Command CRC Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn cmd_crc_err_signal_en(&self) -> CMD_CRC_ERR_SIGNAL_EN_R {
        CMD_CRC_ERR_SIGNAL_EN_R::new(((self.bits >> 1) & 0x01) != 0)
    }
    #[doc = "Bit 2 - Command End Bit Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn cmd_end_bit_err_signal_en(&self) -> CMD_END_BIT_ERR_SIGNAL_EN_R {
        CMD_END_BIT_ERR_SIGNAL_EN_R::new(((self.bits >> 2) & 0x01) != 0)
    }
    #[doc = "Bit 3 - Command Index Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): No error - 0x1 (TRUE): Error"]
    #[inline(always)]
    pub fn cmd_idx_err_signal_en(&self) -> CMD_IDX_ERR_SIGNAL_EN_R {
        CMD_IDX_ERR_SIGNAL_EN_R::new(((self.bits >> 3) & 0x01) != 0)
    }
    #[doc = "Bit 4 - Data Timeout Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn data_tout_err_signal_en(&self) -> DATA_TOUT_ERR_SIGNAL_EN_R {
        DATA_TOUT_ERR_SIGNAL_EN_R::new(((self.bits >> 4) & 0x01) != 0)
    }
    #[doc = "Bit 5 - Data CRC Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn data_crc_err_signal_en(&self) -> DATA_CRC_ERR_SIGNAL_EN_R {
        DATA_CRC_ERR_SIGNAL_EN_R::new(((self.bits >> 5) & 0x01) != 0)
    }
    #[doc = "Bit 6 - Data End Bit Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn data_end_bit_err_signal_en(&self) -> DATA_END_BIT_ERR_SIGNAL_EN_R {
        DATA_END_BIT_ERR_SIGNAL_EN_R::new(((self.bits >> 6) & 0x01) != 0)
    }
    #[doc = "Bit 7 - Current Limit Error Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn cur_lmt_err_signal_en(&self) -> CUR_LMT_ERR_SIGNAL_EN_R {
        CUR_LMT_ERR_SIGNAL_EN_R::new(((self.bits >> 7) & 0x01) != 0)
    }
    #[doc = "Bit 8 - Auto CMD Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn auto_cmd_err_signal_en(&self) -> AUTO_CMD_ERR_SIGNAL_EN_R {
        AUTO_CMD_ERR_SIGNAL_EN_R::new(((self.bits >> 8) & 0x01) != 0)
    }
    #[doc = "Bit 9 - ADMA Error Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn adma_err_signal_en(&self) -> ADMA_ERR_SIGNAL_EN_R {
        ADMA_ERR_SIGNAL_EN_R::new(((self.bits >> 9) & 0x01) != 0)
    }
    #[doc = "Bit 10 - N/A"]
    #[inline(always)]
    pub fn tuning_err_signal_en(&self) -> TUNING_ERR_SIGNAL_EN_R {
        TUNING_ERR_SIGNAL_EN_R::new(((self.bits >> 10) & 0x01) != 0)
    }
    #[doc = "Bit 11 - Response Error Signal Enable (SD Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn resp_err_signal_en(&self) -> RESP_ERR_SIGNAL_EN_R {
        RESP_ERR_SIGNAL_EN_R::new(((self.bits >> 11) & 0x01) != 0)
    }
    #[doc = "Bit 12 - Boot Acknowledgment Error (eMMC Mode only). Setting this bit to 1 enables generating interrupt signal when Boot Acknowledgement Error in Error Interrupt Status register is set. Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn boot_ack_err_signal_en(&self) -> BOOT_ACK_ERR_SIGNAL_EN_R {
        BOOT_ACK_ERR_SIGNAL_EN_R::new(((self.bits >> 12) & 0x01) != 0)
    }
    #[doc = "Bit 13 - N/A"]
    #[inline(always)]
    pub fn vendor_err_signal_en1(&self) -> VENDOR_ERR_SIGNAL_EN1_R {
        VENDOR_ERR_SIGNAL_EN1_R::new(((self.bits >> 13) & 0x01) != 0)
    }
    #[doc = "Bit 14 - N/A"]
    #[inline(always)]
    pub fn vendor_err_signal_en2(&self) -> VENDOR_ERR_SIGNAL_EN2_R {
        VENDOR_ERR_SIGNAL_EN2_R::new(((self.bits >> 14) & 0x01) != 0)
    }
    #[doc = "Bit 15 - N/A"]
    #[inline(always)]
    pub fn vendor_err_signal_en3(&self) -> VENDOR_ERR_SIGNAL_EN3_R {
        VENDOR_ERR_SIGNAL_EN3_R::new(((self.bits >> 15) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bit 0 - Command Timeout Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn cmd_tout_err_signal_en(&mut self) -> CMD_TOUT_ERR_SIGNAL_EN_W {
        CMD_TOUT_ERR_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 1 - Command CRC Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn cmd_crc_err_signal_en(&mut self) -> CMD_CRC_ERR_SIGNAL_EN_W {
        CMD_CRC_ERR_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 2 - Command End Bit Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn cmd_end_bit_err_signal_en(&mut self) -> CMD_END_BIT_ERR_SIGNAL_EN_W {
        CMD_END_BIT_ERR_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 3 - Command Index Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): No error - 0x1 (TRUE): Error"]
    #[inline(always)]
    pub fn cmd_idx_err_signal_en(&mut self) -> CMD_IDX_ERR_SIGNAL_EN_W {
        CMD_IDX_ERR_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 4 - Data Timeout Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn data_tout_err_signal_en(&mut self) -> DATA_TOUT_ERR_SIGNAL_EN_W {
        DATA_TOUT_ERR_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 5 - Data CRC Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn data_crc_err_signal_en(&mut self) -> DATA_CRC_ERR_SIGNAL_EN_W {
        DATA_CRC_ERR_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 6 - Data End Bit Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn data_end_bit_err_signal_en(&mut self) -> DATA_END_BIT_ERR_SIGNAL_EN_W {
        DATA_END_BIT_ERR_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 7 - Current Limit Error Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn cur_lmt_err_signal_en(&mut self) -> CUR_LMT_ERR_SIGNAL_EN_W {
        CUR_LMT_ERR_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 8 - Auto CMD Error Signal Enable (SD/eMMC Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn auto_cmd_err_signal_en(&mut self) -> AUTO_CMD_ERR_SIGNAL_EN_W {
        AUTO_CMD_ERR_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 9 - ADMA Error Signal Enable Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn adma_err_signal_en(&mut self) -> ADMA_ERR_SIGNAL_EN_W {
        ADMA_ERR_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 10 - N/A"]
    #[inline(always)]
    pub fn tuning_err_signal_en(&mut self) -> TUNING_ERR_SIGNAL_EN_W {
        TUNING_ERR_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 11 - Response Error Signal Enable (SD Mode only) Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn resp_err_signal_en(&mut self) -> RESP_ERR_SIGNAL_EN_W {
        RESP_ERR_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 12 - Boot Acknowledgment Error (eMMC Mode only). Setting this bit to 1 enables generating interrupt signal when Boot Acknowledgement Error in Error Interrupt Status register is set. Values: - 0x0 (FALSE): Masked - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn boot_ack_err_signal_en(&mut self) -> BOOT_ACK_ERR_SIGNAL_EN_W {
        BOOT_ACK_ERR_SIGNAL_EN_W { w: self }
    }
    #[doc = "Bit 13 - N/A"]
    #[inline(always)]
    pub fn vendor_err_signal_en1(&mut self) -> VENDOR_ERR_SIGNAL_EN1_W {
        VENDOR_ERR_SIGNAL_EN1_W { w: self }
    }
    #[doc = "Bit 14 - N/A"]
    #[inline(always)]
    pub fn vendor_err_signal_en2(&mut self) -> VENDOR_ERR_SIGNAL_EN2_W {
        VENDOR_ERR_SIGNAL_EN2_W { w: self }
    }
    #[doc = "Bit 15 - N/A"]
    #[inline(always)]
    pub fn vendor_err_signal_en3(&mut self) -> VENDOR_ERR_SIGNAL_EN3_W {
        VENDOR_ERR_SIGNAL_EN3_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u16) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Error Interrupt Signal Enable Register\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [error_int_signal_en_r](index.html) module"]
pub struct ERROR_INT_SIGNAL_EN_R_SPEC;
impl crate::RegisterSpec for ERROR_INT_SIGNAL_EN_R_SPEC {
    type Ux = u16;
}
#[doc = "`read()` method returns [error_int_signal_en_r::R](R) reader structure"]
impl crate::Readable for ERROR_INT_SIGNAL_EN_R_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [error_int_signal_en_r::W](W) writer structure"]
impl crate::Writable for ERROR_INT_SIGNAL_EN_R_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets ERROR_INT_SIGNAL_EN_R to value 0"]
impl crate::Resettable for ERROR_INT_SIGNAL_EN_R_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
