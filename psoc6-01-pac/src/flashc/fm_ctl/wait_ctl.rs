#[doc = "Register `WAIT_CTL` reader"]
pub struct R(crate::R<WAIT_CTL_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<WAIT_CTL_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<WAIT_CTL_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<WAIT_CTL_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `WAIT_CTL` writer"]
pub struct W(crate::W<WAIT_CTL_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<WAIT_CTL_SPEC>;
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
impl From<crate::W<WAIT_CTL_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<WAIT_CTL_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `WAIT_FM_MEM_RD` reader - Number of C interface wait cycles (on 'clk_c') for a read from the memory"]
pub struct WAIT_FM_MEM_RD_R(crate::FieldReader<u8, u8>);
impl WAIT_FM_MEM_RD_R {
    pub(crate) fn new(bits: u8) -> Self {
        WAIT_FM_MEM_RD_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for WAIT_FM_MEM_RD_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `WAIT_FM_MEM_RD` writer - Number of C interface wait cycles (on 'clk_c') for a read from the memory"]
pub struct WAIT_FM_MEM_RD_W<'a> {
    w: &'a mut W,
}
impl<'a> WAIT_FM_MEM_RD_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !0x0f) | (value as u32 & 0x0f);
        self.w
    }
}
#[doc = "Field `WAIT_FM_HV_RD` reader - Number of C interface wait cycles (on 'clk_c') for a read from the high Voltage page latches. Common for reading HV Page Latches and the DATA_COMP_RESULT bit"]
pub struct WAIT_FM_HV_RD_R(crate::FieldReader<u8, u8>);
impl WAIT_FM_HV_RD_R {
    pub(crate) fn new(bits: u8) -> Self {
        WAIT_FM_HV_RD_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for WAIT_FM_HV_RD_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `WAIT_FM_HV_RD` writer - Number of C interface wait cycles (on 'clk_c') for a read from the high Voltage page latches. Common for reading HV Page Latches and the DATA_COMP_RESULT bit"]
pub struct WAIT_FM_HV_RD_W<'a> {
    w: &'a mut W,
}
impl<'a> WAIT_FM_HV_RD_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x0f << 8)) | ((value as u32 & 0x0f) << 8);
        self.w
    }
}
#[doc = "Field `WAIT_FM_HV_WR` reader - Number of C interface wait cycles (on 'clk_c') for a write to the high Voltage page latches."]
pub struct WAIT_FM_HV_WR_R(crate::FieldReader<u8, u8>);
impl WAIT_FM_HV_WR_R {
    pub(crate) fn new(bits: u8) -> Self {
        WAIT_FM_HV_WR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for WAIT_FM_HV_WR_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `WAIT_FM_HV_WR` writer - Number of C interface wait cycles (on 'clk_c') for a write to the high Voltage page latches."]
pub struct WAIT_FM_HV_WR_W<'a> {
    w: &'a mut W,
}
impl<'a> WAIT_FM_HV_WR_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x07 << 16)) | ((value as u32 & 0x07) << 16);
        self.w
    }
}
#[doc = "Field `FM_RWW_MODE` reader - 00: Full CBUS MODE 01: RWW 10: RWW. R_GRANT is stalling r_bus for the whole program/erase duration"]
pub struct FM_RWW_MODE_R(crate::FieldReader<u8, u8>);
impl FM_RWW_MODE_R {
    pub(crate) fn new(bits: u8) -> Self {
        FM_RWW_MODE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for FM_RWW_MODE_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `FM_RWW_MODE` writer - 00: Full CBUS MODE 01: RWW 10: RWW. R_GRANT is stalling r_bus for the whole program/erase duration"]
pub struct FM_RWW_MODE_W<'a> {
    w: &'a mut W,
}
impl<'a> FM_RWW_MODE_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x03 << 24)) | ((value as u32 & 0x03) << 24);
        self.w
    }
}
#[doc = "Field `LV_SPARE_1` reader - Spare register"]
pub struct LV_SPARE_1_R(crate::FieldReader<bool, bool>);
impl LV_SPARE_1_R {
    pub(crate) fn new(bits: bool) -> Self {
        LV_SPARE_1_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for LV_SPARE_1_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `LV_SPARE_1` writer - Spare register"]
pub struct LV_SPARE_1_W<'a> {
    w: &'a mut W,
}
impl<'a> LV_SPARE_1_W<'a> {
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
#[doc = "Field `DRMM` reader - 0: Normal 1: Test mode to enable Margin mode for 2 rows at a time"]
pub struct DRMM_R(crate::FieldReader<bool, bool>);
impl DRMM_R {
    pub(crate) fn new(bits: bool) -> Self {
        DRMM_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DRMM_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DRMM` writer - 0: Normal 1: Test mode to enable Margin mode for 2 rows at a time"]
pub struct DRMM_W<'a> {
    w: &'a mut W,
}
impl<'a> DRMM_W<'a> {
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
#[doc = "Field `MBA` reader - 0: Normal 1: Test mode to enable Master Bulk Access which allows both normal rows and redundant rows to be erased / programmed in one HV cycle (Bulk / Sector Erase and Sector Program)."]
pub struct MBA_R(crate::FieldReader<bool, bool>);
impl MBA_R {
    pub(crate) fn new(bits: bool) -> Self {
        MBA_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for MBA_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `MBA` writer - 0: Normal 1: Test mode to enable Master Bulk Access which allows both normal rows and redundant rows to be erased / programmed in one HV cycle (Bulk / Sector Erase and Sector Program)."]
pub struct MBA_W<'a> {
    w: &'a mut W,
}
impl<'a> MBA_W<'a> {
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
#[doc = "Field `PL_SOFT_SET_EN` reader - Page latch soft set enable, 0 = disabled, 1 = enabled (at end of seq_2), taken care in API"]
pub struct PL_SOFT_SET_EN_R(crate::FieldReader<bool, bool>);
impl PL_SOFT_SET_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        PL_SOFT_SET_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for PL_SOFT_SET_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `PL_SOFT_SET_EN` writer - Page latch soft set enable, 0 = disabled, 1 = enabled (at end of seq_2), taken care in API"]
pub struct PL_SOFT_SET_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> PL_SOFT_SET_EN_W<'a> {
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
impl R {
    #[doc = "Bits 0:3 - Number of C interface wait cycles (on 'clk_c') for a read from the memory"]
    #[inline(always)]
    pub fn wait_fm_mem_rd(&self) -> WAIT_FM_MEM_RD_R {
        WAIT_FM_MEM_RD_R::new((self.bits & 0x0f) as u8)
    }
    #[doc = "Bits 8:11 - Number of C interface wait cycles (on 'clk_c') for a read from the high Voltage page latches. Common for reading HV Page Latches and the DATA_COMP_RESULT bit"]
    #[inline(always)]
    pub fn wait_fm_hv_rd(&self) -> WAIT_FM_HV_RD_R {
        WAIT_FM_HV_RD_R::new(((self.bits >> 8) & 0x0f) as u8)
    }
    #[doc = "Bits 16:18 - Number of C interface wait cycles (on 'clk_c') for a write to the high Voltage page latches."]
    #[inline(always)]
    pub fn wait_fm_hv_wr(&self) -> WAIT_FM_HV_WR_R {
        WAIT_FM_HV_WR_R::new(((self.bits >> 16) & 0x07) as u8)
    }
    #[doc = "Bits 24:25 - 00: Full CBUS MODE 01: RWW 10: RWW. R_GRANT is stalling r_bus for the whole program/erase duration"]
    #[inline(always)]
    pub fn fm_rww_mode(&self) -> FM_RWW_MODE_R {
        FM_RWW_MODE_R::new(((self.bits >> 24) & 0x03) as u8)
    }
    #[doc = "Bit 26 - Spare register"]
    #[inline(always)]
    pub fn lv_spare_1(&self) -> LV_SPARE_1_R {
        LV_SPARE_1_R::new(((self.bits >> 26) & 0x01) != 0)
    }
    #[doc = "Bit 27 - 0: Normal 1: Test mode to enable Margin mode for 2 rows at a time"]
    #[inline(always)]
    pub fn drmm(&self) -> DRMM_R {
        DRMM_R::new(((self.bits >> 27) & 0x01) != 0)
    }
    #[doc = "Bit 28 - 0: Normal 1: Test mode to enable Master Bulk Access which allows both normal rows and redundant rows to be erased / programmed in one HV cycle (Bulk / Sector Erase and Sector Program)."]
    #[inline(always)]
    pub fn mba(&self) -> MBA_R {
        MBA_R::new(((self.bits >> 28) & 0x01) != 0)
    }
    #[doc = "Bit 29 - Page latch soft set enable, 0 = disabled, 1 = enabled (at end of seq_2), taken care in API"]
    #[inline(always)]
    pub fn pl_soft_set_en(&self) -> PL_SOFT_SET_EN_R {
        PL_SOFT_SET_EN_R::new(((self.bits >> 29) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bits 0:3 - Number of C interface wait cycles (on 'clk_c') for a read from the memory"]
    #[inline(always)]
    pub fn wait_fm_mem_rd(&mut self) -> WAIT_FM_MEM_RD_W {
        WAIT_FM_MEM_RD_W { w: self }
    }
    #[doc = "Bits 8:11 - Number of C interface wait cycles (on 'clk_c') for a read from the high Voltage page latches. Common for reading HV Page Latches and the DATA_COMP_RESULT bit"]
    #[inline(always)]
    pub fn wait_fm_hv_rd(&mut self) -> WAIT_FM_HV_RD_W {
        WAIT_FM_HV_RD_W { w: self }
    }
    #[doc = "Bits 16:18 - Number of C interface wait cycles (on 'clk_c') for a write to the high Voltage page latches."]
    #[inline(always)]
    pub fn wait_fm_hv_wr(&mut self) -> WAIT_FM_HV_WR_W {
        WAIT_FM_HV_WR_W { w: self }
    }
    #[doc = "Bits 24:25 - 00: Full CBUS MODE 01: RWW 10: RWW. R_GRANT is stalling r_bus for the whole program/erase duration"]
    #[inline(always)]
    pub fn fm_rww_mode(&mut self) -> FM_RWW_MODE_W {
        FM_RWW_MODE_W { w: self }
    }
    #[doc = "Bit 26 - Spare register"]
    #[inline(always)]
    pub fn lv_spare_1(&mut self) -> LV_SPARE_1_W {
        LV_SPARE_1_W { w: self }
    }
    #[doc = "Bit 27 - 0: Normal 1: Test mode to enable Margin mode for 2 rows at a time"]
    #[inline(always)]
    pub fn drmm(&mut self) -> DRMM_W {
        DRMM_W { w: self }
    }
    #[doc = "Bit 28 - 0: Normal 1: Test mode to enable Master Bulk Access which allows both normal rows and redundant rows to be erased / programmed in one HV cycle (Bulk / Sector Erase and Sector Program)."]
    #[inline(always)]
    pub fn mba(&mut self) -> MBA_W {
        MBA_W { w: self }
    }
    #[doc = "Bit 29 - Page latch soft set enable, 0 = disabled, 1 = enabled (at end of seq_2), taken care in API"]
    #[inline(always)]
    pub fn pl_soft_set_en(&mut self) -> PL_SOFT_SET_EN_W {
        PL_SOFT_SET_EN_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Wait State control\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [wait_ctl](index.html) module"]
pub struct WAIT_CTL_SPEC;
impl crate::RegisterSpec for WAIT_CTL_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [wait_ctl::R](R) reader structure"]
impl crate::Readable for WAIT_CTL_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [wait_ctl::W](W) writer structure"]
impl crate::Writable for WAIT_CTL_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets WAIT_CTL to value 0x0003_0b09"]
impl crate::Resettable for WAIT_CTL_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0x0003_0b09
    }
}
