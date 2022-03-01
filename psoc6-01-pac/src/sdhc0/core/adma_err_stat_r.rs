#[doc = "Register `ADMA_ERR_STAT_R` reader"]
pub struct R(crate::R<ADMA_ERR_STAT_R_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<ADMA_ERR_STAT_R_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<ADMA_ERR_STAT_R_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<ADMA_ERR_STAT_R_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Field `ADMA_ERR_STATES` reader - ADMA Error States These bits indicate the state of ADMA when an error occurs during ADMA data transfer. Values: - 0x0 (ST_STOP): Stop DMA - SYS_ADR register points to a location next to the error descriptor - 0x1 (ST_FDS): Fetch Descriptor - SYS_ADR register points to the error descriptor - 0x2 (UNUSED): Never set this state - 0x3 (ST_TFR): Transfer Data - SYS_ADR register points to a location next to the error descriptor"]
pub struct ADMA_ERR_STATES_R(crate::FieldReader<u8, u8>);
impl ADMA_ERR_STATES_R {
    pub(crate) fn new(bits: u8) -> Self {
        ADMA_ERR_STATES_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ADMA_ERR_STATES_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ADMA_LEN_ERR` reader - ADMA Length Mismatch Error States This error occurs in the following instances: - While the Block Count Enable is being set, the total data length specified by the Descriptor table is different from that specified by the Block Count and Block Length - When the total data length cannot be divided by the block length Values: - 0x0 (NO_ERR): No Error - 0x1 (ERROR): Error"]
pub struct ADMA_LEN_ERR_R(crate::FieldReader<bool, bool>);
impl ADMA_LEN_ERR_R {
    pub(crate) fn new(bits: bool) -> Self {
        ADMA_LEN_ERR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ADMA_LEN_ERR_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl R {
    #[doc = "Bits 0:1 - ADMA Error States These bits indicate the state of ADMA when an error occurs during ADMA data transfer. Values: - 0x0 (ST_STOP): Stop DMA - SYS_ADR register points to a location next to the error descriptor - 0x1 (ST_FDS): Fetch Descriptor - SYS_ADR register points to the error descriptor - 0x2 (UNUSED): Never set this state - 0x3 (ST_TFR): Transfer Data - SYS_ADR register points to a location next to the error descriptor"]
    #[inline(always)]
    pub fn adma_err_states(&self) -> ADMA_ERR_STATES_R {
        ADMA_ERR_STATES_R::new((self.bits & 0x03) as u8)
    }
    #[doc = "Bit 2 - ADMA Length Mismatch Error States This error occurs in the following instances: - While the Block Count Enable is being set, the total data length specified by the Descriptor table is different from that specified by the Block Count and Block Length - When the total data length cannot be divided by the block length Values: - 0x0 (NO_ERR): No Error - 0x1 (ERROR): Error"]
    #[inline(always)]
    pub fn adma_len_err(&self) -> ADMA_LEN_ERR_R {
        ADMA_LEN_ERR_R::new(((self.bits >> 2) & 0x01) != 0)
    }
}
#[doc = "ADMA Error Status Register\n\nThis register you can [`read`](crate::generic::Reg::read). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [adma_err_stat_r](index.html) module"]
pub struct ADMA_ERR_STAT_R_SPEC;
impl crate::RegisterSpec for ADMA_ERR_STAT_R_SPEC {
    type Ux = u8;
}
#[doc = "`read()` method returns [adma_err_stat_r::R](R) reader structure"]
impl crate::Readable for ADMA_ERR_STAT_R_SPEC {
    type Reader = R;
}
#[doc = "`reset()` method sets ADMA_ERR_STAT_R to value 0"]
impl crate::Resettable for ADMA_ERR_STAT_R_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
