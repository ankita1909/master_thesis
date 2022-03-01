#[doc = "Register `CQCAP` reader"]
pub struct R(crate::R<CQCAP_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CQCAP_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CQCAP_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CQCAP_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Field `ITCFVAL` reader - Internal Timer Clock Frequency Value (ITCFVAL) This field scales the frequency of the timer clock provided by ITCFMUL. The Final clock frequency of actual timer clock is calculated as ITCFVAL* ITCFMUL."]
pub struct ITCFVAL_R(crate::FieldReader<u16, u16>);
impl ITCFVAL_R {
    pub(crate) fn new(bits: u16) -> Self {
        ITCFVAL_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ITCFVAL_R {
    type Target = crate::FieldReader<u16, u16>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ITCFMUL` reader - N/A"]
pub struct ITCFMUL_R(crate::FieldReader<u8, u8>);
impl ITCFMUL_R {
    pub(crate) fn new(bits: u8) -> Self {
        ITCFMUL_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ITCFMUL_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CRYPTO_SUPPORT` reader - Crypto Support This bit indicates whether the Host Controller supports cryptographic operations. Values: - 0x0 (FALSE): Crypto not Supported - 0x1 (TRUE): Crypto Supported"]
pub struct CRYPTO_SUPPORT_R(crate::FieldReader<bool, bool>);
impl CRYPTO_SUPPORT_R {
    pub(crate) fn new(bits: bool) -> Self {
        CRYPTO_SUPPORT_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CRYPTO_SUPPORT_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl R {
    #[doc = "Bits 0:9 - Internal Timer Clock Frequency Value (ITCFVAL) This field scales the frequency of the timer clock provided by ITCFMUL. The Final clock frequency of actual timer clock is calculated as ITCFVAL* ITCFMUL."]
    #[inline(always)]
    pub fn itcfval(&self) -> ITCFVAL_R {
        ITCFVAL_R::new((self.bits & 0x03ff) as u16)
    }
    #[doc = "Bits 12:15 - N/A"]
    #[inline(always)]
    pub fn itcfmul(&self) -> ITCFMUL_R {
        ITCFMUL_R::new(((self.bits >> 12) & 0x0f) as u8)
    }
    #[doc = "Bit 28 - Crypto Support This bit indicates whether the Host Controller supports cryptographic operations. Values: - 0x0 (FALSE): Crypto not Supported - 0x1 (TRUE): Crypto Supported"]
    #[inline(always)]
    pub fn crypto_support(&self) -> CRYPTO_SUPPORT_R {
        CRYPTO_SUPPORT_R::new(((self.bits >> 28) & 0x01) != 0)
    }
}
#[doc = "Command Queuing Capabilities register\n\nThis register you can [`read`](crate::generic::Reg::read). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [cqcap](index.html) module"]
pub struct CQCAP_SPEC;
impl crate::RegisterSpec for CQCAP_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [cqcap::R](R) reader structure"]
impl crate::Readable for CQCAP_SPEC {
    type Reader = R;
}
#[doc = "`reset()` method sets CQCAP to value 0x30c8"]
impl crate::Resettable for CQCAP_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0x30c8
    }
}
