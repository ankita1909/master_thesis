#[doc = "Register `CRC_DATA_CTL` reader"]
pub struct R(crate::R<CRC_DATA_CTL_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CRC_DATA_CTL_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CRC_DATA_CTL_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CRC_DATA_CTL_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `CRC_DATA_CTL` writer"]
pub struct W(crate::W<CRC_DATA_CTL_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<CRC_DATA_CTL_SPEC>;
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
impl From<crate::W<CRC_DATA_CTL_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<CRC_DATA_CTL_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `DATA_XOR` reader - Specifies a byte mask with which each data byte is XOR'd. The XOR is performed before data reversal."]
pub struct DATA_XOR_R(crate::FieldReader<u8, u8>);
impl DATA_XOR_R {
    pub(crate) fn new(bits: u8) -> Self {
        DATA_XOR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DATA_XOR_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DATA_XOR` writer - Specifies a byte mask with which each data byte is XOR'd. The XOR is performed before data reversal."]
pub struct DATA_XOR_W<'a> {
    w: &'a mut W,
}
impl<'a> DATA_XOR_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !0xff) | (value as u32 & 0xff);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:7 - Specifies a byte mask with which each data byte is XOR'd. The XOR is performed before data reversal."]
    #[inline(always)]
    pub fn data_xor(&self) -> DATA_XOR_R {
        DATA_XOR_R::new((self.bits & 0xff) as u8)
    }
}
impl W {
    #[doc = "Bits 0:7 - Specifies a byte mask with which each data byte is XOR'd. The XOR is performed before data reversal."]
    #[inline(always)]
    pub fn data_xor(&mut self) -> DATA_XOR_W {
        DATA_XOR_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "CRC data control\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [crc_data_ctl](index.html) module"]
pub struct CRC_DATA_CTL_SPEC;
impl crate::RegisterSpec for CRC_DATA_CTL_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [crc_data_ctl::R](R) reader structure"]
impl crate::Readable for CRC_DATA_CTL_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [crc_data_ctl::W](W) writer structure"]
impl crate::Writable for CRC_DATA_CTL_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets CRC_DATA_CTL to value 0"]
impl crate::Resettable for CRC_DATA_CTL_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
