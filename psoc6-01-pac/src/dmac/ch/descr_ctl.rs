#[doc = "Register `DESCR_CTL` reader"]
pub struct R(crate::R<DESCR_CTL_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<DESCR_CTL_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<DESCR_CTL_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<DESCR_CTL_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Field `WAIT_FOR_DEACT` reader - N/A"]
pub struct WAIT_FOR_DEACT_R(crate::FieldReader<u8, u8>);
impl WAIT_FOR_DEACT_R {
    pub(crate) fn new(bits: u8) -> Self {
        WAIT_FOR_DEACT_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for WAIT_FOR_DEACT_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `INTR_TYPE` reader - N/A"]
pub struct INTR_TYPE_R(crate::FieldReader<u8, u8>);
impl INTR_TYPE_R {
    pub(crate) fn new(bits: u8) -> Self {
        INTR_TYPE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for INTR_TYPE_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `TR_OUT_TYPE` reader - N/A"]
pub struct TR_OUT_TYPE_R(crate::FieldReader<u8, u8>);
impl TR_OUT_TYPE_R {
    pub(crate) fn new(bits: u8) -> Self {
        TR_OUT_TYPE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for TR_OUT_TYPE_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `TR_IN_TYPE` reader - N/A"]
pub struct TR_IN_TYPE_R(crate::FieldReader<u8, u8>);
impl TR_IN_TYPE_R {
    pub(crate) fn new(bits: u8) -> Self {
        TR_IN_TYPE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for TR_IN_TYPE_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DATA_PREFETCH` reader - N/A"]
pub struct DATA_PREFETCH_R(crate::FieldReader<bool, bool>);
impl DATA_PREFETCH_R {
    pub(crate) fn new(bits: bool) -> Self {
        DATA_PREFETCH_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DATA_PREFETCH_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DATA_SIZE` reader - N/A"]
pub struct DATA_SIZE_R(crate::FieldReader<u8, u8>);
impl DATA_SIZE_R {
    pub(crate) fn new(bits: u8) -> Self {
        DATA_SIZE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DATA_SIZE_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CH_DISABLE` reader - N/A"]
pub struct CH_DISABLE_R(crate::FieldReader<bool, bool>);
impl CH_DISABLE_R {
    pub(crate) fn new(bits: bool) -> Self {
        CH_DISABLE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CH_DISABLE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SRC_TRANSFER_SIZE` reader - N/A"]
pub struct SRC_TRANSFER_SIZE_R(crate::FieldReader<bool, bool>);
impl SRC_TRANSFER_SIZE_R {
    pub(crate) fn new(bits: bool) -> Self {
        SRC_TRANSFER_SIZE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SRC_TRANSFER_SIZE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DST_TRANSFER_SIZE` reader - N/A"]
pub struct DST_TRANSFER_SIZE_R(crate::FieldReader<bool, bool>);
impl DST_TRANSFER_SIZE_R {
    pub(crate) fn new(bits: bool) -> Self {
        DST_TRANSFER_SIZE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DST_TRANSFER_SIZE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DESCR_TYPE` reader - N/A"]
pub struct DESCR_TYPE_R(crate::FieldReader<u8, u8>);
impl DESCR_TYPE_R {
    pub(crate) fn new(bits: u8) -> Self {
        DESCR_TYPE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DESCR_TYPE_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl R {
    #[doc = "Bits 0:1 - N/A"]
    #[inline(always)]
    pub fn wait_for_deact(&self) -> WAIT_FOR_DEACT_R {
        WAIT_FOR_DEACT_R::new((self.bits & 0x03) as u8)
    }
    #[doc = "Bits 2:3 - N/A"]
    #[inline(always)]
    pub fn intr_type(&self) -> INTR_TYPE_R {
        INTR_TYPE_R::new(((self.bits >> 2) & 0x03) as u8)
    }
    #[doc = "Bits 4:5 - N/A"]
    #[inline(always)]
    pub fn tr_out_type(&self) -> TR_OUT_TYPE_R {
        TR_OUT_TYPE_R::new(((self.bits >> 4) & 0x03) as u8)
    }
    #[doc = "Bits 6:7 - N/A"]
    #[inline(always)]
    pub fn tr_in_type(&self) -> TR_IN_TYPE_R {
        TR_IN_TYPE_R::new(((self.bits >> 6) & 0x03) as u8)
    }
    #[doc = "Bit 8 - N/A"]
    #[inline(always)]
    pub fn data_prefetch(&self) -> DATA_PREFETCH_R {
        DATA_PREFETCH_R::new(((self.bits >> 8) & 0x01) != 0)
    }
    #[doc = "Bits 16:17 - N/A"]
    #[inline(always)]
    pub fn data_size(&self) -> DATA_SIZE_R {
        DATA_SIZE_R::new(((self.bits >> 16) & 0x03) as u8)
    }
    #[doc = "Bit 24 - N/A"]
    #[inline(always)]
    pub fn ch_disable(&self) -> CH_DISABLE_R {
        CH_DISABLE_R::new(((self.bits >> 24) & 0x01) != 0)
    }
    #[doc = "Bit 26 - N/A"]
    #[inline(always)]
    pub fn src_transfer_size(&self) -> SRC_TRANSFER_SIZE_R {
        SRC_TRANSFER_SIZE_R::new(((self.bits >> 26) & 0x01) != 0)
    }
    #[doc = "Bit 27 - N/A"]
    #[inline(always)]
    pub fn dst_transfer_size(&self) -> DST_TRANSFER_SIZE_R {
        DST_TRANSFER_SIZE_R::new(((self.bits >> 27) & 0x01) != 0)
    }
    #[doc = "Bits 28:30 - N/A"]
    #[inline(always)]
    pub fn descr_type(&self) -> DESCR_TYPE_R {
        DESCR_TYPE_R::new(((self.bits >> 28) & 0x07) as u8)
    }
}
#[doc = "Channel descriptor control\n\nThis register you can [`read`](crate::generic::Reg::read). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [descr_ctl](index.html) module"]
pub struct DESCR_CTL_SPEC;
impl crate::RegisterSpec for DESCR_CTL_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [descr_ctl::R](R) reader structure"]
impl crate::Readable for DESCR_CTL_SPEC {
    type Reader = R;
}
#[doc = "`reset()` method sets DESCR_CTL to value 0"]
impl crate::Resettable for DESCR_CTL_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
