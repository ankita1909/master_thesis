#[doc = "Register `NORMAL_INT_STAT_R` reader"]
pub struct R(crate::R<NORMAL_INT_STAT_R_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<NORMAL_INT_STAT_R_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<NORMAL_INT_STAT_R_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<NORMAL_INT_STAT_R_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `NORMAL_INT_STAT_R` writer"]
pub struct W(crate::W<NORMAL_INT_STAT_R_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<NORMAL_INT_STAT_R_SPEC>;
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
impl From<crate::W<NORMAL_INT_STAT_R_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<NORMAL_INT_STAT_R_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `CMD_COMPLETE` reader - Command Complete In an SD/eMMC Mode, this bit is set when the end bit of a response except for Auto CMD12 and Auto CMD23. This interrupt is not generated when the Response Interrupt Disable in Transfer Mode Register is set to 1. Values: - 0x0 (FALSE): No command complete - 0x1 (TRUE): Command Complete"]
pub struct CMD_COMPLETE_R(crate::FieldReader<bool, bool>);
impl CMD_COMPLETE_R {
    pub(crate) fn new(bits: bool) -> Self {
        CMD_COMPLETE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CMD_COMPLETE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CMD_COMPLETE` writer - Command Complete In an SD/eMMC Mode, this bit is set when the end bit of a response except for Auto CMD12 and Auto CMD23. This interrupt is not generated when the Response Interrupt Disable in Transfer Mode Register is set to 1. Values: - 0x0 (FALSE): No command complete - 0x1 (TRUE): Command Complete"]
pub struct CMD_COMPLETE_W<'a> {
    w: &'a mut W,
}
impl<'a> CMD_COMPLETE_W<'a> {
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
#[doc = "Field `XFER_COMPLETE` reader - Transfer Complete This bit is set when a read/write transfer and a command with status busy is completed. Values: - 0x0 (FALSE): Not complete - 0x1 (TRUE): Command execution is completed"]
pub struct XFER_COMPLETE_R(crate::FieldReader<bool, bool>);
impl XFER_COMPLETE_R {
    pub(crate) fn new(bits: bool) -> Self {
        XFER_COMPLETE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for XFER_COMPLETE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `XFER_COMPLETE` writer - Transfer Complete This bit is set when a read/write transfer and a command with status busy is completed. Values: - 0x0 (FALSE): Not complete - 0x1 (TRUE): Command execution is completed"]
pub struct XFER_COMPLETE_W<'a> {
    w: &'a mut W,
}
impl<'a> XFER_COMPLETE_W<'a> {
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
#[doc = "Field `BGAP_EVENT` reader - Block Gap Event This bit is set when both read/write transaction is stopped at block gap due to a Stop at Block Gap Request. Values: - 0x0 (FALSE): No Block Gap Event - 0x1 (TRUE): Transaction stopped at block gap"]
pub struct BGAP_EVENT_R(crate::FieldReader<bool, bool>);
impl BGAP_EVENT_R {
    pub(crate) fn new(bits: bool) -> Self {
        BGAP_EVENT_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for BGAP_EVENT_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `BGAP_EVENT` writer - Block Gap Event This bit is set when both read/write transaction is stopped at block gap due to a Stop at Block Gap Request. Values: - 0x0 (FALSE): No Block Gap Event - 0x1 (TRUE): Transaction stopped at block gap"]
pub struct BGAP_EVENT_W<'a> {
    w: &'a mut W,
}
impl<'a> BGAP_EVENT_W<'a> {
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
#[doc = "Field `DMA_INTERRUPT` reader - DMA Interrupt This bit is set if the Host Controller detects the SDMA Buffer Boundary during transfer. In case of ADMA, by setting the Int field in the descriptor table, the Host controller generates this interrupt. This interrupt is not generated after a Transfer Complete. Values: - 0x0 (FALSE): No DMA Interrupt - 0x1 (TRUE): DMA Interrupt is generated"]
pub struct DMA_INTERRUPT_R(crate::FieldReader<bool, bool>);
impl DMA_INTERRUPT_R {
    pub(crate) fn new(bits: bool) -> Self {
        DMA_INTERRUPT_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DMA_INTERRUPT_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DMA_INTERRUPT` writer - DMA Interrupt This bit is set if the Host Controller detects the SDMA Buffer Boundary during transfer. In case of ADMA, by setting the Int field in the descriptor table, the Host controller generates this interrupt. This interrupt is not generated after a Transfer Complete. Values: - 0x0 (FALSE): No DMA Interrupt - 0x1 (TRUE): DMA Interrupt is generated"]
pub struct DMA_INTERRUPT_W<'a> {
    w: &'a mut W,
}
impl<'a> DMA_INTERRUPT_W<'a> {
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
#[doc = "Field `BUF_WR_READY` reader - Buffer Write Ready This bit is set if the Buffer Write Enable changes from 0 to 1. Values: - 0x0 (FALSE): Not ready to write buffer - 0x1 (TRUE): Ready to write buffer"]
pub struct BUF_WR_READY_R(crate::FieldReader<bool, bool>);
impl BUF_WR_READY_R {
    pub(crate) fn new(bits: bool) -> Self {
        BUF_WR_READY_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for BUF_WR_READY_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `BUF_WR_READY` writer - Buffer Write Ready This bit is set if the Buffer Write Enable changes from 0 to 1. Values: - 0x0 (FALSE): Not ready to write buffer - 0x1 (TRUE): Ready to write buffer"]
pub struct BUF_WR_READY_W<'a> {
    w: &'a mut W,
}
impl<'a> BUF_WR_READY_W<'a> {
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
#[doc = "Field `BUF_RD_READY` reader - Buffer Read Ready This bit is set if the Buffer Read Enable changes from 0 to 1. Values: - 0x0 (FALSE): Not ready to read buffer - 0x1 (TRUE): Ready to read buffer"]
pub struct BUF_RD_READY_R(crate::FieldReader<bool, bool>);
impl BUF_RD_READY_R {
    pub(crate) fn new(bits: bool) -> Self {
        BUF_RD_READY_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for BUF_RD_READY_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `BUF_RD_READY` writer - Buffer Read Ready This bit is set if the Buffer Read Enable changes from 0 to 1. Values: - 0x0 (FALSE): Not ready to read buffer - 0x1 (TRUE): Ready to read buffer"]
pub struct BUF_RD_READY_W<'a> {
    w: &'a mut W,
}
impl<'a> BUF_RD_READY_W<'a> {
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
#[doc = "Field `CARD_INSERTION` reader - Card Insertion This bit is set if the Card Inserted in the Present State register changes from 0 to 1. Values: - 0x0 (FALSE): Card state stable or Debouncing - 0x1 (TRUE): Card Inserted"]
pub struct CARD_INSERTION_R(crate::FieldReader<bool, bool>);
impl CARD_INSERTION_R {
    pub(crate) fn new(bits: bool) -> Self {
        CARD_INSERTION_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CARD_INSERTION_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CARD_INSERTION` writer - Card Insertion This bit is set if the Card Inserted in the Present State register changes from 0 to 1. Values: - 0x0 (FALSE): Card state stable or Debouncing - 0x1 (TRUE): Card Inserted"]
pub struct CARD_INSERTION_W<'a> {
    w: &'a mut W,
}
impl<'a> CARD_INSERTION_W<'a> {
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
#[doc = "Field `CARD_REMOVAL` reader - Card Removal This bit is set if the Card Inserted in the Present State register changes from 1 to 0. Values: - 0x0 (FALSE): Card state stable or Debouncing - 0x1 (TRUE): Card Removed"]
pub struct CARD_REMOVAL_R(crate::FieldReader<bool, bool>);
impl CARD_REMOVAL_R {
    pub(crate) fn new(bits: bool) -> Self {
        CARD_REMOVAL_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CARD_REMOVAL_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CARD_REMOVAL` writer - Card Removal This bit is set if the Card Inserted in the Present State register changes from 1 to 0. Values: - 0x0 (FALSE): Card state stable or Debouncing - 0x1 (TRUE): Card Removed"]
pub struct CARD_REMOVAL_W<'a> {
    w: &'a mut W,
}
impl<'a> CARD_REMOVAL_W<'a> {
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
#[doc = "Field `CARD_INTERRUPT` reader - Card Interrupt This bit reflects the synchronized value of: - DAT\\[1\\]
Interrupt Input for SD Mode Values: - 0x0 (FALSE): No Card Interrupt - 0x1 (TRUE): Generate Card Interrupt"]
pub struct CARD_INTERRUPT_R(crate::FieldReader<bool, bool>);
impl CARD_INTERRUPT_R {
    pub(crate) fn new(bits: bool) -> Self {
        CARD_INTERRUPT_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CARD_INTERRUPT_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `FX_EVENT` reader - FX Event This status is set when R\\[14\\]
of response register is set to 1 and Response Type R1/R5 is set to 0 in Transfer Mode register. This interrupt is used with response check function. Values: - 0x0 (FALSE): No Event - 0x1 (TRUE): FX Event is detected"]
pub struct FX_EVENT_R(crate::FieldReader<bool, bool>);
impl FX_EVENT_R {
    pub(crate) fn new(bits: bool) -> Self {
        FX_EVENT_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for FX_EVENT_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CQE_EVENT` reader - Command Queuing Event This status is set if Command Queuing/Crypto related event has occurred in eMMC/SD mode. Read CQHCI's CQIS/CRNQIS register for more details. In UHS-II Mode, this bit is irrelevant. Values: - 0x0 (FALSE): No Event - 0x1 (TRUE): Command Queuing Event is detected"]
pub struct CQE_EVENT_R(crate::FieldReader<bool, bool>);
impl CQE_EVENT_R {
    pub(crate) fn new(bits: bool) -> Self {
        CQE_EVENT_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CQE_EVENT_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CQE_EVENT` writer - Command Queuing Event This status is set if Command Queuing/Crypto related event has occurred in eMMC/SD mode. Read CQHCI's CQIS/CRNQIS register for more details. In UHS-II Mode, this bit is irrelevant. Values: - 0x0 (FALSE): No Event - 0x1 (TRUE): Command Queuing Event is detected"]
pub struct CQE_EVENT_W<'a> {
    w: &'a mut W,
}
impl<'a> CQE_EVENT_W<'a> {
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
#[doc = "Field `ERR_INTERRUPT` reader - Error Interrupt If any of the bits in the Error Interrupt Status register are set, then this bit is set. Values: - 0x0 (FALSE): No Error - 0x1 (TRUE): Error"]
pub struct ERR_INTERRUPT_R(crate::FieldReader<bool, bool>);
impl ERR_INTERRUPT_R {
    pub(crate) fn new(bits: bool) -> Self {
        ERR_INTERRUPT_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ERR_INTERRUPT_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl R {
    #[doc = "Bit 0 - Command Complete In an SD/eMMC Mode, this bit is set when the end bit of a response except for Auto CMD12 and Auto CMD23. This interrupt is not generated when the Response Interrupt Disable in Transfer Mode Register is set to 1. Values: - 0x0 (FALSE): No command complete - 0x1 (TRUE): Command Complete"]
    #[inline(always)]
    pub fn cmd_complete(&self) -> CMD_COMPLETE_R {
        CMD_COMPLETE_R::new((self.bits & 0x01) != 0)
    }
    #[doc = "Bit 1 - Transfer Complete This bit is set when a read/write transfer and a command with status busy is completed. Values: - 0x0 (FALSE): Not complete - 0x1 (TRUE): Command execution is completed"]
    #[inline(always)]
    pub fn xfer_complete(&self) -> XFER_COMPLETE_R {
        XFER_COMPLETE_R::new(((self.bits >> 1) & 0x01) != 0)
    }
    #[doc = "Bit 2 - Block Gap Event This bit is set when both read/write transaction is stopped at block gap due to a Stop at Block Gap Request. Values: - 0x0 (FALSE): No Block Gap Event - 0x1 (TRUE): Transaction stopped at block gap"]
    #[inline(always)]
    pub fn bgap_event(&self) -> BGAP_EVENT_R {
        BGAP_EVENT_R::new(((self.bits >> 2) & 0x01) != 0)
    }
    #[doc = "Bit 3 - DMA Interrupt This bit is set if the Host Controller detects the SDMA Buffer Boundary during transfer. In case of ADMA, by setting the Int field in the descriptor table, the Host controller generates this interrupt. This interrupt is not generated after a Transfer Complete. Values: - 0x0 (FALSE): No DMA Interrupt - 0x1 (TRUE): DMA Interrupt is generated"]
    #[inline(always)]
    pub fn dma_interrupt(&self) -> DMA_INTERRUPT_R {
        DMA_INTERRUPT_R::new(((self.bits >> 3) & 0x01) != 0)
    }
    #[doc = "Bit 4 - Buffer Write Ready This bit is set if the Buffer Write Enable changes from 0 to 1. Values: - 0x0 (FALSE): Not ready to write buffer - 0x1 (TRUE): Ready to write buffer"]
    #[inline(always)]
    pub fn buf_wr_ready(&self) -> BUF_WR_READY_R {
        BUF_WR_READY_R::new(((self.bits >> 4) & 0x01) != 0)
    }
    #[doc = "Bit 5 - Buffer Read Ready This bit is set if the Buffer Read Enable changes from 0 to 1. Values: - 0x0 (FALSE): Not ready to read buffer - 0x1 (TRUE): Ready to read buffer"]
    #[inline(always)]
    pub fn buf_rd_ready(&self) -> BUF_RD_READY_R {
        BUF_RD_READY_R::new(((self.bits >> 5) & 0x01) != 0)
    }
    #[doc = "Bit 6 - Card Insertion This bit is set if the Card Inserted in the Present State register changes from 0 to 1. Values: - 0x0 (FALSE): Card state stable or Debouncing - 0x1 (TRUE): Card Inserted"]
    #[inline(always)]
    pub fn card_insertion(&self) -> CARD_INSERTION_R {
        CARD_INSERTION_R::new(((self.bits >> 6) & 0x01) != 0)
    }
    #[doc = "Bit 7 - Card Removal This bit is set if the Card Inserted in the Present State register changes from 1 to 0. Values: - 0x0 (FALSE): Card state stable or Debouncing - 0x1 (TRUE): Card Removed"]
    #[inline(always)]
    pub fn card_removal(&self) -> CARD_REMOVAL_R {
        CARD_REMOVAL_R::new(((self.bits >> 7) & 0x01) != 0)
    }
    #[doc = "Bit 8 - Card Interrupt This bit reflects the synchronized value of: - DAT\\[1\\]
Interrupt Input for SD Mode Values: - 0x0 (FALSE): No Card Interrupt - 0x1 (TRUE): Generate Card Interrupt"]
    #[inline(always)]
    pub fn card_interrupt(&self) -> CARD_INTERRUPT_R {
        CARD_INTERRUPT_R::new(((self.bits >> 8) & 0x01) != 0)
    }
    #[doc = "Bit 13 - FX Event This status is set when R\\[14\\]
of response register is set to 1 and Response Type R1/R5 is set to 0 in Transfer Mode register. This interrupt is used with response check function. Values: - 0x0 (FALSE): No Event - 0x1 (TRUE): FX Event is detected"]
    #[inline(always)]
    pub fn fx_event(&self) -> FX_EVENT_R {
        FX_EVENT_R::new(((self.bits >> 13) & 0x01) != 0)
    }
    #[doc = "Bit 14 - Command Queuing Event This status is set if Command Queuing/Crypto related event has occurred in eMMC/SD mode. Read CQHCI's CQIS/CRNQIS register for more details. In UHS-II Mode, this bit is irrelevant. Values: - 0x0 (FALSE): No Event - 0x1 (TRUE): Command Queuing Event is detected"]
    #[inline(always)]
    pub fn cqe_event(&self) -> CQE_EVENT_R {
        CQE_EVENT_R::new(((self.bits >> 14) & 0x01) != 0)
    }
    #[doc = "Bit 15 - Error Interrupt If any of the bits in the Error Interrupt Status register are set, then this bit is set. Values: - 0x0 (FALSE): No Error - 0x1 (TRUE): Error"]
    #[inline(always)]
    pub fn err_interrupt(&self) -> ERR_INTERRUPT_R {
        ERR_INTERRUPT_R::new(((self.bits >> 15) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bit 0 - Command Complete In an SD/eMMC Mode, this bit is set when the end bit of a response except for Auto CMD12 and Auto CMD23. This interrupt is not generated when the Response Interrupt Disable in Transfer Mode Register is set to 1. Values: - 0x0 (FALSE): No command complete - 0x1 (TRUE): Command Complete"]
    #[inline(always)]
    pub fn cmd_complete(&mut self) -> CMD_COMPLETE_W {
        CMD_COMPLETE_W { w: self }
    }
    #[doc = "Bit 1 - Transfer Complete This bit is set when a read/write transfer and a command with status busy is completed. Values: - 0x0 (FALSE): Not complete - 0x1 (TRUE): Command execution is completed"]
    #[inline(always)]
    pub fn xfer_complete(&mut self) -> XFER_COMPLETE_W {
        XFER_COMPLETE_W { w: self }
    }
    #[doc = "Bit 2 - Block Gap Event This bit is set when both read/write transaction is stopped at block gap due to a Stop at Block Gap Request. Values: - 0x0 (FALSE): No Block Gap Event - 0x1 (TRUE): Transaction stopped at block gap"]
    #[inline(always)]
    pub fn bgap_event(&mut self) -> BGAP_EVENT_W {
        BGAP_EVENT_W { w: self }
    }
    #[doc = "Bit 3 - DMA Interrupt This bit is set if the Host Controller detects the SDMA Buffer Boundary during transfer. In case of ADMA, by setting the Int field in the descriptor table, the Host controller generates this interrupt. This interrupt is not generated after a Transfer Complete. Values: - 0x0 (FALSE): No DMA Interrupt - 0x1 (TRUE): DMA Interrupt is generated"]
    #[inline(always)]
    pub fn dma_interrupt(&mut self) -> DMA_INTERRUPT_W {
        DMA_INTERRUPT_W { w: self }
    }
    #[doc = "Bit 4 - Buffer Write Ready This bit is set if the Buffer Write Enable changes from 0 to 1. Values: - 0x0 (FALSE): Not ready to write buffer - 0x1 (TRUE): Ready to write buffer"]
    #[inline(always)]
    pub fn buf_wr_ready(&mut self) -> BUF_WR_READY_W {
        BUF_WR_READY_W { w: self }
    }
    #[doc = "Bit 5 - Buffer Read Ready This bit is set if the Buffer Read Enable changes from 0 to 1. Values: - 0x0 (FALSE): Not ready to read buffer - 0x1 (TRUE): Ready to read buffer"]
    #[inline(always)]
    pub fn buf_rd_ready(&mut self) -> BUF_RD_READY_W {
        BUF_RD_READY_W { w: self }
    }
    #[doc = "Bit 6 - Card Insertion This bit is set if the Card Inserted in the Present State register changes from 0 to 1. Values: - 0x0 (FALSE): Card state stable or Debouncing - 0x1 (TRUE): Card Inserted"]
    #[inline(always)]
    pub fn card_insertion(&mut self) -> CARD_INSERTION_W {
        CARD_INSERTION_W { w: self }
    }
    #[doc = "Bit 7 - Card Removal This bit is set if the Card Inserted in the Present State register changes from 1 to 0. Values: - 0x0 (FALSE): Card state stable or Debouncing - 0x1 (TRUE): Card Removed"]
    #[inline(always)]
    pub fn card_removal(&mut self) -> CARD_REMOVAL_W {
        CARD_REMOVAL_W { w: self }
    }
    #[doc = "Bit 14 - Command Queuing Event This status is set if Command Queuing/Crypto related event has occurred in eMMC/SD mode. Read CQHCI's CQIS/CRNQIS register for more details. In UHS-II Mode, this bit is irrelevant. Values: - 0x0 (FALSE): No Event - 0x1 (TRUE): Command Queuing Event is detected"]
    #[inline(always)]
    pub fn cqe_event(&mut self) -> CQE_EVENT_W {
        CQE_EVENT_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u16) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Normal Interrupt Status Register\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [normal_int_stat_r](index.html) module"]
pub struct NORMAL_INT_STAT_R_SPEC;
impl crate::RegisterSpec for NORMAL_INT_STAT_R_SPEC {
    type Ux = u16;
}
#[doc = "`read()` method returns [normal_int_stat_r::R](R) reader structure"]
impl crate::Readable for NORMAL_INT_STAT_R_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [normal_int_stat_r::W](W) writer structure"]
impl crate::Writable for NORMAL_INT_STAT_R_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets NORMAL_INT_STAT_R to value 0"]
impl crate::Resettable for NORMAL_INT_STAT_R_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
