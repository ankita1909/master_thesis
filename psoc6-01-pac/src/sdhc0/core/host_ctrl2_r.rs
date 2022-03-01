#[doc = "Register `HOST_CTRL2_R` reader"]
pub struct R(crate::R<HOST_CTRL2_R_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<HOST_CTRL2_R_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<HOST_CTRL2_R_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<HOST_CTRL2_R_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `HOST_CTRL2_R` writer"]
pub struct W(crate::W<HOST_CTRL2_R_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<HOST_CTRL2_R_SPEC>;
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
impl From<crate::W<HOST_CTRL2_R_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<HOST_CTRL2_R_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `UHS_MODE_SEL` reader - N/A"]
pub struct UHS_MODE_SEL_R(crate::FieldReader<u8, u8>);
impl UHS_MODE_SEL_R {
    pub(crate) fn new(bits: u8) -> Self {
        UHS_MODE_SEL_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for UHS_MODE_SEL_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `UHS_MODE_SEL` writer - N/A"]
pub struct UHS_MODE_SEL_W<'a> {
    w: &'a mut W,
}
impl<'a> UHS_MODE_SEL_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !0x07) | (value as u16 & 0x07);
        self.w
    }
}
#[doc = "Field `SIGNALING_EN` reader - 1.8V Signaling Enable This bit controls voltage regulator for I/O cell in SD UHS-I mode. Setting this bit from 0 to 1 starts changing the signal voltage from 3.3V to 1.8V. Host Controller clears this bit if switching to 1.8V signaling fails per protocol. The value is reflected on the io_volt_sel output which can then be used to change an external regulator to supply 1.8V instead of 3.3V on the VDDIO pin associated with the CLK/CMD/DAT signals. Note: This bit must be set for all UHS-I speed modes (SDR12/SDR25/SDR50/DDR50). Values: - 0x0 (V_3_3): 3.3V Signalling - 0x1 (V_1_8): 1.8V Signalling"]
pub struct SIGNALING_EN_R(crate::FieldReader<bool, bool>);
impl SIGNALING_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        SIGNALING_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SIGNALING_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SIGNALING_EN` writer - 1.8V Signaling Enable This bit controls voltage regulator for I/O cell in SD UHS-I mode. Setting this bit from 0 to 1 starts changing the signal voltage from 3.3V to 1.8V. Host Controller clears this bit if switching to 1.8V signaling fails per protocol. The value is reflected on the io_volt_sel output which can then be used to change an external regulator to supply 1.8V instead of 3.3V on the VDDIO pin associated with the CLK/CMD/DAT signals. Note: This bit must be set for all UHS-I speed modes (SDR12/SDR25/SDR50/DDR50). Values: - 0x0 (V_3_3): 3.3V Signalling - 0x1 (V_1_8): 1.8V Signalling"]
pub struct SIGNALING_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> SIGNALING_EN_W<'a> {
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
#[doc = "Field `DRV_STRENGTH_SEL` reader - Driver Strength Select These bits are used to select the Host Controller output driver in 1.8V signaling UHS-I/eMMC speed modes. The value is reflected on the io_drive_strength\\[1:0\\]
output. - 0x0 (TYPEB): Driver TYPEB is selected - 0x1 (TYPEA): Driver TYPEA is selected - 0x2 (TYPEC): Driver TYPEC is selected - 0x3 (TYPED): Driver TYPED is selected"]
pub struct DRV_STRENGTH_SEL_R(crate::FieldReader<u8, u8>);
impl DRV_STRENGTH_SEL_R {
    pub(crate) fn new(bits: u8) -> Self {
        DRV_STRENGTH_SEL_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DRV_STRENGTH_SEL_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DRV_STRENGTH_SEL` writer - Driver Strength Select These bits are used to select the Host Controller output driver in 1.8V signaling UHS-I/eMMC speed modes. The value is reflected on the io_drive_strength\\[1:0\\]
output. - 0x0 (TYPEB): Driver TYPEB is selected - 0x1 (TYPEA): Driver TYPEA is selected - 0x2 (TYPEC): Driver TYPEC is selected - 0x3 (TYPED): Driver TYPED is selected"]
pub struct DRV_STRENGTH_SEL_W<'a> {
    w: &'a mut W,
}
impl<'a> DRV_STRENGTH_SEL_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x03 << 4)) | ((value as u16 & 0x03) << 4);
        self.w
    }
}
#[doc = "Field `EXEC_TUNING` reader - N/A"]
pub struct EXEC_TUNING_R(crate::FieldReader<bool, bool>);
impl EXEC_TUNING_R {
    pub(crate) fn new(bits: bool) -> Self {
        EXEC_TUNING_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for EXEC_TUNING_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `EXEC_TUNING` writer - N/A"]
pub struct EXEC_TUNING_W<'a> {
    w: &'a mut W,
}
impl<'a> EXEC_TUNING_W<'a> {
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
#[doc = "Field `SAMPLE_CLK_SEL` reader - N/A"]
pub struct SAMPLE_CLK_SEL_R(crate::FieldReader<bool, bool>);
impl SAMPLE_CLK_SEL_R {
    pub(crate) fn new(bits: bool) -> Self {
        SAMPLE_CLK_SEL_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SAMPLE_CLK_SEL_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SAMPLE_CLK_SEL` writer - N/A"]
pub struct SAMPLE_CLK_SEL_W<'a> {
    w: &'a mut W,
}
impl<'a> SAMPLE_CLK_SEL_W<'a> {
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
#[doc = "Field `UHS2_IF_ENABLE` reader - N/A"]
pub struct UHS2_IF_ENABLE_R(crate::FieldReader<bool, bool>);
impl UHS2_IF_ENABLE_R {
    pub(crate) fn new(bits: bool) -> Self {
        UHS2_IF_ENABLE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for UHS2_IF_ENABLE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `UHS2_IF_ENABLE` writer - N/A"]
pub struct UHS2_IF_ENABLE_W<'a> {
    w: &'a mut W,
}
impl<'a> UHS2_IF_ENABLE_W<'a> {
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
#[doc = "Field `ADMA2_LEN_MODE` reader - ADMA2 Length Mode This bit selects ADMA2 Length mode to be either 16-bit or 26-bit. Values: - 0x0 (FALSE): 16-bit Data Length Mode - 0x1 (TRUE): 26-bit Data Length Mode"]
pub struct ADMA2_LEN_MODE_R(crate::FieldReader<bool, bool>);
impl ADMA2_LEN_MODE_R {
    pub(crate) fn new(bits: bool) -> Self {
        ADMA2_LEN_MODE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ADMA2_LEN_MODE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ADMA2_LEN_MODE` writer - ADMA2 Length Mode This bit selects ADMA2 Length mode to be either 16-bit or 26-bit. Values: - 0x0 (FALSE): 16-bit Data Length Mode - 0x1 (TRUE): 26-bit Data Length Mode"]
pub struct ADMA2_LEN_MODE_W<'a> {
    w: &'a mut W,
}
impl<'a> ADMA2_LEN_MODE_W<'a> {
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
#[doc = "Field `CMD23_ENABLE` reader - CMD23 Enable If the card supports CMD23, this bit is set to 1. This bit is used to select Auto CMD23 or Auto CMD12 for ADMA3 data transfer. Values: - 0x0 (FALSE): Auto CMD23 is disabled - 0x1 (TRUE): Auto CMD23 is enabled"]
pub struct CMD23_ENABLE_R(crate::FieldReader<bool, bool>);
impl CMD23_ENABLE_R {
    pub(crate) fn new(bits: bool) -> Self {
        CMD23_ENABLE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CMD23_ENABLE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CMD23_ENABLE` writer - CMD23 Enable If the card supports CMD23, this bit is set to 1. This bit is used to select Auto CMD23 or Auto CMD12 for ADMA3 data transfer. Values: - 0x0 (FALSE): Auto CMD23 is disabled - 0x1 (TRUE): Auto CMD23 is enabled"]
pub struct CMD23_ENABLE_W<'a> {
    w: &'a mut W,
}
impl<'a> CMD23_ENABLE_W<'a> {
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
#[doc = "Field `HOST_VER4_ENABLE` reader - Host Version 4 Enable This bit selects either Version 3.00 compatible mode or Version 4 mode. Functions of following fields are modified for Host Version 4 mode: - SDMA Address: SDMA uses ADMA System Address (05Fh-058h) instead of SDMA System Address register (003h-000h) - ADMA2/ADMA3 selection: ADMA3 is selected by DMA select in Host Control 1 register - 32-bit Block Count: SDMA System Address register (003h-000h) is modified to 32-bit Block Count register Note: It is recommended not to program ADMA3 Integrated Descriptor Address registers and Command Queuing registers (if applicable) while operating in Host version less than 4 mode (Host Version 4 Enable = 0). Values: - 0x0 (FALSE): Version 3.00 compatible mode - 0x1 (TRUE): Version 4 mode"]
pub struct HOST_VER4_ENABLE_R(crate::FieldReader<bool, bool>);
impl HOST_VER4_ENABLE_R {
    pub(crate) fn new(bits: bool) -> Self {
        HOST_VER4_ENABLE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for HOST_VER4_ENABLE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `HOST_VER4_ENABLE` writer - Host Version 4 Enable This bit selects either Version 3.00 compatible mode or Version 4 mode. Functions of following fields are modified for Host Version 4 mode: - SDMA Address: SDMA uses ADMA System Address (05Fh-058h) instead of SDMA System Address register (003h-000h) - ADMA2/ADMA3 selection: ADMA3 is selected by DMA select in Host Control 1 register - 32-bit Block Count: SDMA System Address register (003h-000h) is modified to 32-bit Block Count register Note: It is recommended not to program ADMA3 Integrated Descriptor Address registers and Command Queuing registers (if applicable) while operating in Host version less than 4 mode (Host Version 4 Enable = 0). Values: - 0x0 (FALSE): Version 3.00 compatible mode - 0x1 (TRUE): Version 4 mode"]
pub struct HOST_VER4_ENABLE_W<'a> {
    w: &'a mut W,
}
impl<'a> HOST_VER4_ENABLE_W<'a> {
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
#[doc = "Field `ADDRESSING` reader - N/A"]
pub struct ADDRESSING_R(crate::FieldReader<bool, bool>);
impl ADDRESSING_R {
    pub(crate) fn new(bits: bool) -> Self {
        ADDRESSING_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ADDRESSING_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ADDRESSING` writer - N/A"]
pub struct ADDRESSING_W<'a> {
    w: &'a mut W,
}
impl<'a> ADDRESSING_W<'a> {
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
#[doc = "Field `ASYNC_INT_ENABLE` reader - Asynchronous Interrupt Enable This bit can be set if a card supports asynchronous interrupts and Asynchronous Interrupt Support is set to 1 in the Capabilities register. Values: - 0x0 (FALSE): Disabled - 0x1 (TRUE): Enabled"]
pub struct ASYNC_INT_ENABLE_R(crate::FieldReader<bool, bool>);
impl ASYNC_INT_ENABLE_R {
    pub(crate) fn new(bits: bool) -> Self {
        ASYNC_INT_ENABLE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ASYNC_INT_ENABLE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ASYNC_INT_ENABLE` writer - Asynchronous Interrupt Enable This bit can be set if a card supports asynchronous interrupts and Asynchronous Interrupt Support is set to 1 in the Capabilities register. Values: - 0x0 (FALSE): Disabled - 0x1 (TRUE): Enabled"]
pub struct ASYNC_INT_ENABLE_W<'a> {
    w: &'a mut W,
}
impl<'a> ASYNC_INT_ENABLE_W<'a> {
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
#[doc = "Field `PRESET_VAL_ENABLE` reader - N/A"]
pub struct PRESET_VAL_ENABLE_R(crate::FieldReader<bool, bool>);
impl PRESET_VAL_ENABLE_R {
    pub(crate) fn new(bits: bool) -> Self {
        PRESET_VAL_ENABLE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PRESET_VAL_ENABLE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PRESET_VAL_ENABLE` writer - N/A"]
pub struct PRESET_VAL_ENABLE_W<'a> {
    w: &'a mut W,
}
impl<'a> PRESET_VAL_ENABLE_W<'a> {
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
    #[doc = "Bits 0:2 - N/A"]
    #[inline(always)]
    pub fn uhs_mode_sel(&self) -> UHS_MODE_SEL_R {
        UHS_MODE_SEL_R::new((self.bits & 0x07) as u8)
    }
    #[doc = "Bit 3 - 1.8V Signaling Enable This bit controls voltage regulator for I/O cell in SD UHS-I mode. Setting this bit from 0 to 1 starts changing the signal voltage from 3.3V to 1.8V. Host Controller clears this bit if switching to 1.8V signaling fails per protocol. The value is reflected on the io_volt_sel output which can then be used to change an external regulator to supply 1.8V instead of 3.3V on the VDDIO pin associated with the CLK/CMD/DAT signals. Note: This bit must be set for all UHS-I speed modes (SDR12/SDR25/SDR50/DDR50). Values: - 0x0 (V_3_3): 3.3V Signalling - 0x1 (V_1_8): 1.8V Signalling"]
    #[inline(always)]
    pub fn signaling_en(&self) -> SIGNALING_EN_R {
        SIGNALING_EN_R::new(((self.bits >> 3) & 0x01) != 0)
    }
    #[doc = "Bits 4:5 - Driver Strength Select These bits are used to select the Host Controller output driver in 1.8V signaling UHS-I/eMMC speed modes. The value is reflected on the io_drive_strength\\[1:0\\]
output. - 0x0 (TYPEB): Driver TYPEB is selected - 0x1 (TYPEA): Driver TYPEA is selected - 0x2 (TYPEC): Driver TYPEC is selected - 0x3 (TYPED): Driver TYPED is selected"]
    #[inline(always)]
    pub fn drv_strength_sel(&self) -> DRV_STRENGTH_SEL_R {
        DRV_STRENGTH_SEL_R::new(((self.bits >> 4) & 0x03) as u8)
    }
    #[doc = "Bit 6 - N/A"]
    #[inline(always)]
    pub fn exec_tuning(&self) -> EXEC_TUNING_R {
        EXEC_TUNING_R::new(((self.bits >> 6) & 0x01) != 0)
    }
    #[doc = "Bit 7 - N/A"]
    #[inline(always)]
    pub fn sample_clk_sel(&self) -> SAMPLE_CLK_SEL_R {
        SAMPLE_CLK_SEL_R::new(((self.bits >> 7) & 0x01) != 0)
    }
    #[doc = "Bit 8 - N/A"]
    #[inline(always)]
    pub fn uhs2_if_enable(&self) -> UHS2_IF_ENABLE_R {
        UHS2_IF_ENABLE_R::new(((self.bits >> 8) & 0x01) != 0)
    }
    #[doc = "Bit 10 - ADMA2 Length Mode This bit selects ADMA2 Length mode to be either 16-bit or 26-bit. Values: - 0x0 (FALSE): 16-bit Data Length Mode - 0x1 (TRUE): 26-bit Data Length Mode"]
    #[inline(always)]
    pub fn adma2_len_mode(&self) -> ADMA2_LEN_MODE_R {
        ADMA2_LEN_MODE_R::new(((self.bits >> 10) & 0x01) != 0)
    }
    #[doc = "Bit 11 - CMD23 Enable If the card supports CMD23, this bit is set to 1. This bit is used to select Auto CMD23 or Auto CMD12 for ADMA3 data transfer. Values: - 0x0 (FALSE): Auto CMD23 is disabled - 0x1 (TRUE): Auto CMD23 is enabled"]
    #[inline(always)]
    pub fn cmd23_enable(&self) -> CMD23_ENABLE_R {
        CMD23_ENABLE_R::new(((self.bits >> 11) & 0x01) != 0)
    }
    #[doc = "Bit 12 - Host Version 4 Enable This bit selects either Version 3.00 compatible mode or Version 4 mode. Functions of following fields are modified for Host Version 4 mode: - SDMA Address: SDMA uses ADMA System Address (05Fh-058h) instead of SDMA System Address register (003h-000h) - ADMA2/ADMA3 selection: ADMA3 is selected by DMA select in Host Control 1 register - 32-bit Block Count: SDMA System Address register (003h-000h) is modified to 32-bit Block Count register Note: It is recommended not to program ADMA3 Integrated Descriptor Address registers and Command Queuing registers (if applicable) while operating in Host version less than 4 mode (Host Version 4 Enable = 0). Values: - 0x0 (FALSE): Version 3.00 compatible mode - 0x1 (TRUE): Version 4 mode"]
    #[inline(always)]
    pub fn host_ver4_enable(&self) -> HOST_VER4_ENABLE_R {
        HOST_VER4_ENABLE_R::new(((self.bits >> 12) & 0x01) != 0)
    }
    #[doc = "Bit 13 - N/A"]
    #[inline(always)]
    pub fn addressing(&self) -> ADDRESSING_R {
        ADDRESSING_R::new(((self.bits >> 13) & 0x01) != 0)
    }
    #[doc = "Bit 14 - Asynchronous Interrupt Enable This bit can be set if a card supports asynchronous interrupts and Asynchronous Interrupt Support is set to 1 in the Capabilities register. Values: - 0x0 (FALSE): Disabled - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn async_int_enable(&self) -> ASYNC_INT_ENABLE_R {
        ASYNC_INT_ENABLE_R::new(((self.bits >> 14) & 0x01) != 0)
    }
    #[doc = "Bit 15 - N/A"]
    #[inline(always)]
    pub fn preset_val_enable(&self) -> PRESET_VAL_ENABLE_R {
        PRESET_VAL_ENABLE_R::new(((self.bits >> 15) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bits 0:2 - N/A"]
    #[inline(always)]
    pub fn uhs_mode_sel(&mut self) -> UHS_MODE_SEL_W {
        UHS_MODE_SEL_W { w: self }
    }
    #[doc = "Bit 3 - 1.8V Signaling Enable This bit controls voltage regulator for I/O cell in SD UHS-I mode. Setting this bit from 0 to 1 starts changing the signal voltage from 3.3V to 1.8V. Host Controller clears this bit if switching to 1.8V signaling fails per protocol. The value is reflected on the io_volt_sel output which can then be used to change an external regulator to supply 1.8V instead of 3.3V on the VDDIO pin associated with the CLK/CMD/DAT signals. Note: This bit must be set for all UHS-I speed modes (SDR12/SDR25/SDR50/DDR50). Values: - 0x0 (V_3_3): 3.3V Signalling - 0x1 (V_1_8): 1.8V Signalling"]
    #[inline(always)]
    pub fn signaling_en(&mut self) -> SIGNALING_EN_W {
        SIGNALING_EN_W { w: self }
    }
    #[doc = "Bits 4:5 - Driver Strength Select These bits are used to select the Host Controller output driver in 1.8V signaling UHS-I/eMMC speed modes. The value is reflected on the io_drive_strength\\[1:0\\]
output. - 0x0 (TYPEB): Driver TYPEB is selected - 0x1 (TYPEA): Driver TYPEA is selected - 0x2 (TYPEC): Driver TYPEC is selected - 0x3 (TYPED): Driver TYPED is selected"]
    #[inline(always)]
    pub fn drv_strength_sel(&mut self) -> DRV_STRENGTH_SEL_W {
        DRV_STRENGTH_SEL_W { w: self }
    }
    #[doc = "Bit 6 - N/A"]
    #[inline(always)]
    pub fn exec_tuning(&mut self) -> EXEC_TUNING_W {
        EXEC_TUNING_W { w: self }
    }
    #[doc = "Bit 7 - N/A"]
    #[inline(always)]
    pub fn sample_clk_sel(&mut self) -> SAMPLE_CLK_SEL_W {
        SAMPLE_CLK_SEL_W { w: self }
    }
    #[doc = "Bit 8 - N/A"]
    #[inline(always)]
    pub fn uhs2_if_enable(&mut self) -> UHS2_IF_ENABLE_W {
        UHS2_IF_ENABLE_W { w: self }
    }
    #[doc = "Bit 10 - ADMA2 Length Mode This bit selects ADMA2 Length mode to be either 16-bit or 26-bit. Values: - 0x0 (FALSE): 16-bit Data Length Mode - 0x1 (TRUE): 26-bit Data Length Mode"]
    #[inline(always)]
    pub fn adma2_len_mode(&mut self) -> ADMA2_LEN_MODE_W {
        ADMA2_LEN_MODE_W { w: self }
    }
    #[doc = "Bit 11 - CMD23 Enable If the card supports CMD23, this bit is set to 1. This bit is used to select Auto CMD23 or Auto CMD12 for ADMA3 data transfer. Values: - 0x0 (FALSE): Auto CMD23 is disabled - 0x1 (TRUE): Auto CMD23 is enabled"]
    #[inline(always)]
    pub fn cmd23_enable(&mut self) -> CMD23_ENABLE_W {
        CMD23_ENABLE_W { w: self }
    }
    #[doc = "Bit 12 - Host Version 4 Enable This bit selects either Version 3.00 compatible mode or Version 4 mode. Functions of following fields are modified for Host Version 4 mode: - SDMA Address: SDMA uses ADMA System Address (05Fh-058h) instead of SDMA System Address register (003h-000h) - ADMA2/ADMA3 selection: ADMA3 is selected by DMA select in Host Control 1 register - 32-bit Block Count: SDMA System Address register (003h-000h) is modified to 32-bit Block Count register Note: It is recommended not to program ADMA3 Integrated Descriptor Address registers and Command Queuing registers (if applicable) while operating in Host version less than 4 mode (Host Version 4 Enable = 0). Values: - 0x0 (FALSE): Version 3.00 compatible mode - 0x1 (TRUE): Version 4 mode"]
    #[inline(always)]
    pub fn host_ver4_enable(&mut self) -> HOST_VER4_ENABLE_W {
        HOST_VER4_ENABLE_W { w: self }
    }
    #[doc = "Bit 13 - N/A"]
    #[inline(always)]
    pub fn addressing(&mut self) -> ADDRESSING_W {
        ADDRESSING_W { w: self }
    }
    #[doc = "Bit 14 - Asynchronous Interrupt Enable This bit can be set if a card supports asynchronous interrupts and Asynchronous Interrupt Support is set to 1 in the Capabilities register. Values: - 0x0 (FALSE): Disabled - 0x1 (TRUE): Enabled"]
    #[inline(always)]
    pub fn async_int_enable(&mut self) -> ASYNC_INT_ENABLE_W {
        ASYNC_INT_ENABLE_W { w: self }
    }
    #[doc = "Bit 15 - N/A"]
    #[inline(always)]
    pub fn preset_val_enable(&mut self) -> PRESET_VAL_ENABLE_W {
        PRESET_VAL_ENABLE_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u16) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Host Control 2 Register\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [host_ctrl2_r](index.html) module"]
pub struct HOST_CTRL2_R_SPEC;
impl crate::RegisterSpec for HOST_CTRL2_R_SPEC {
    type Ux = u16;
}
#[doc = "`read()` method returns [host_ctrl2_r::R](R) reader structure"]
impl crate::Readable for HOST_CTRL2_R_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [host_ctrl2_r::W](W) writer structure"]
impl crate::Writable for HOST_CTRL2_R_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets HOST_CTRL2_R to value 0"]
impl crate::Resettable for HOST_CTRL2_R_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
