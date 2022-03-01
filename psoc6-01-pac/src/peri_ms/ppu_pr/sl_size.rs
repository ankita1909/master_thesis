#[doc = "Register `SL_SIZE` reader"]
pub struct R(crate::R<SL_SIZE_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<SL_SIZE_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<SL_SIZE_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<SL_SIZE_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `SL_SIZE` writer"]
pub struct W(crate::W<SL_SIZE_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<SL_SIZE_SPEC>;
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
impl From<crate::W<SL_SIZE_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<SL_SIZE_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `REGION_SIZE` reader - This field specifies the size of the slave region: '0': Undefined. '1': 4 B region (this is the smallest region size). '2': 8 B region '3': 16 B region '4': 32 B region '5': 64 B region '6': 128 B region '7': 256 B region '8': 512 B region '9': 1 KB region '10': 2 KB region '11': 4 KB region '12': 8 KB region '13': 16 KB region '14': 32 KB region '15': 64 KB region '16': 128 KB region '17': 256 KB region '18': 512 KB region '19': 1 MB region '20': 2 MB region '21': 4 MB region '22': 8 MB region '23': 16 MB region '24': 32 MB region '25': 64 MB region '26': 128 MB region '27': 256 MB region '28': 512 MB region '29': 1 GB region '30': 2 GB region '31': 4 GB region"]
pub struct REGION_SIZE_R(crate::FieldReader<u8, u8>);
impl REGION_SIZE_R {
    pub(crate) fn new(bits: u8) -> Self {
        REGION_SIZE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for REGION_SIZE_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `REGION_SIZE` writer - This field specifies the size of the slave region: '0': Undefined. '1': 4 B region (this is the smallest region size). '2': 8 B region '3': 16 B region '4': 32 B region '5': 64 B region '6': 128 B region '7': 256 B region '8': 512 B region '9': 1 KB region '10': 2 KB region '11': 4 KB region '12': 8 KB region '13': 16 KB region '14': 32 KB region '15': 64 KB region '16': 128 KB region '17': 256 KB region '18': 512 KB region '19': 1 MB region '20': 2 MB region '21': 4 MB region '22': 8 MB region '23': 16 MB region '24': 32 MB region '25': 64 MB region '26': 128 MB region '27': 256 MB region '28': 512 MB region '29': 1 GB region '30': 2 GB region '31': 4 GB region"]
pub struct REGION_SIZE_W<'a> {
    w: &'a mut W,
}
impl<'a> REGION_SIZE_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x1f << 24)) | ((value as u32 & 0x1f) << 24);
        self.w
    }
}
#[doc = "Field `VALID` reader - Slave region enable: '0': Disabled. A disabled region will never result in a match on the transfer address. '1': Enabled."]
pub struct VALID_R(crate::FieldReader<bool, bool>);
impl VALID_R {
    pub(crate) fn new(bits: bool) -> Self {
        VALID_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for VALID_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `VALID` writer - Slave region enable: '0': Disabled. A disabled region will never result in a match on the transfer address. '1': Enabled."]
pub struct VALID_W<'a> {
    w: &'a mut W,
}
impl<'a> VALID_W<'a> {
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
    #[doc = "Bits 24:28 - This field specifies the size of the slave region: '0': Undefined. '1': 4 B region (this is the smallest region size). '2': 8 B region '3': 16 B region '4': 32 B region '5': 64 B region '6': 128 B region '7': 256 B region '8': 512 B region '9': 1 KB region '10': 2 KB region '11': 4 KB region '12': 8 KB region '13': 16 KB region '14': 32 KB region '15': 64 KB region '16': 128 KB region '17': 256 KB region '18': 512 KB region '19': 1 MB region '20': 2 MB region '21': 4 MB region '22': 8 MB region '23': 16 MB region '24': 32 MB region '25': 64 MB region '26': 128 MB region '27': 256 MB region '28': 512 MB region '29': 1 GB region '30': 2 GB region '31': 4 GB region"]
    #[inline(always)]
    pub fn region_size(&self) -> REGION_SIZE_R {
        REGION_SIZE_R::new(((self.bits >> 24) & 0x1f) as u8)
    }
    #[doc = "Bit 31 - Slave region enable: '0': Disabled. A disabled region will never result in a match on the transfer address. '1': Enabled."]
    #[inline(always)]
    pub fn valid(&self) -> VALID_R {
        VALID_R::new(((self.bits >> 31) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bits 24:28 - This field specifies the size of the slave region: '0': Undefined. '1': 4 B region (this is the smallest region size). '2': 8 B region '3': 16 B region '4': 32 B region '5': 64 B region '6': 128 B region '7': 256 B region '8': 512 B region '9': 1 KB region '10': 2 KB region '11': 4 KB region '12': 8 KB region '13': 16 KB region '14': 32 KB region '15': 64 KB region '16': 128 KB region '17': 256 KB region '18': 512 KB region '19': 1 MB region '20': 2 MB region '21': 4 MB region '22': 8 MB region '23': 16 MB region '24': 32 MB region '25': 64 MB region '26': 128 MB region '27': 256 MB region '28': 512 MB region '29': 1 GB region '30': 2 GB region '31': 4 GB region"]
    #[inline(always)]
    pub fn region_size(&mut self) -> REGION_SIZE_W {
        REGION_SIZE_W { w: self }
    }
    #[doc = "Bit 31 - Slave region enable: '0': Disabled. A disabled region will never result in a match on the transfer address. '1': Enabled."]
    #[inline(always)]
    pub fn valid(&mut self) -> VALID_W {
        VALID_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Slave region, size\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [sl_size](index.html) module"]
pub struct SL_SIZE_SPEC;
impl crate::RegisterSpec for SL_SIZE_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [sl_size::R](R) reader structure"]
impl crate::Readable for SL_SIZE_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [sl_size::W](W) writer structure"]
impl crate::Writable for SL_SIZE_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets SL_SIZE to value 0"]
impl crate::Resettable for SL_SIZE_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
