#[doc = "Register `PRODUCT_ID` reader"]
pub struct R(crate::R<PRODUCT_ID_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<PRODUCT_ID_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<PRODUCT_ID_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<PRODUCT_ID_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Field `FAMILY_ID` reader - Family ID. Common ID for a product family."]
pub struct FAMILY_ID_R(crate::FieldReader<u16, u16>);
impl FAMILY_ID_R {
    pub(crate) fn new(bits: u16) -> Self {
        FAMILY_ID_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for FAMILY_ID_R {
    type Target = crate::FieldReader<u16, u16>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `MAJOR_REV` reader - Major Revision, starts with 1, increments with all layer tape-out (implemented with metal ECO-able tie-off)"]
pub struct MAJOR_REV_R(crate::FieldReader<u8, u8>);
impl MAJOR_REV_R {
    pub(crate) fn new(bits: u8) -> Self {
        MAJOR_REV_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for MAJOR_REV_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `MINOR_REV` reader - Minor Revision, starts with 1, increments with metal layer only tape-out (implemented with metal ECO-able tie-off)"]
pub struct MINOR_REV_R(crate::FieldReader<u8, u8>);
impl MINOR_REV_R {
    pub(crate) fn new(bits: u8) -> Self {
        MINOR_REV_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for MINOR_REV_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl R {
    #[doc = "Bits 0:11 - Family ID. Common ID for a product family."]
    #[inline(always)]
    pub fn family_id(&self) -> FAMILY_ID_R {
        FAMILY_ID_R::new((self.bits & 0x0fff) as u16)
    }
    #[doc = "Bits 16:19 - Major Revision, starts with 1, increments with all layer tape-out (implemented with metal ECO-able tie-off)"]
    #[inline(always)]
    pub fn major_rev(&self) -> MAJOR_REV_R {
        MAJOR_REV_R::new(((self.bits >> 16) & 0x0f) as u8)
    }
    #[doc = "Bits 20:23 - Minor Revision, starts with 1, increments with metal layer only tape-out (implemented with metal ECO-able tie-off)"]
    #[inline(always)]
    pub fn minor_rev(&self) -> MINOR_REV_R {
        MINOR_REV_R::new(((self.bits >> 20) & 0x0f) as u8)
    }
}
#[doc = "Product identifier and version (same as CoreSight RomTables)\n\nThis register you can [`read`](crate::generic::Reg::read). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [product_id](index.html) module"]
pub struct PRODUCT_ID_SPEC;
impl crate::RegisterSpec for PRODUCT_ID_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [product_id::R](R) reader structure"]
impl crate::Readable for PRODUCT_ID_SPEC {
    type Reader = R;
}
#[doc = "`reset()` method sets PRODUCT_ID to value 0"]
impl crate::Resettable for PRODUCT_ID_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
