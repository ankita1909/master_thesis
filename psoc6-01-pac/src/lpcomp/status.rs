#[doc = "Register `STATUS` reader"]
pub struct R(crate::R<STATUS_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<STATUS_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<STATUS_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<STATUS_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Field `OUT0` reader - Current output value of the comparator 0."]
pub struct OUT0_R(crate::FieldReader<bool, bool>);
impl OUT0_R {
    pub(crate) fn new(bits: bool) -> Self {
        OUT0_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for OUT0_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `OUT1` reader - Current output value of the comparator 1."]
pub struct OUT1_R(crate::FieldReader<bool, bool>);
impl OUT1_R {
    pub(crate) fn new(bits: bool) -> Self {
        OUT1_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for OUT1_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl R {
    #[doc = "Bit 0 - Current output value of the comparator 0."]
    #[inline(always)]
    pub fn out0(&self) -> OUT0_R {
        OUT0_R::new((self.bits & 0x01) != 0)
    }
    #[doc = "Bit 16 - Current output value of the comparator 1."]
    #[inline(always)]
    pub fn out1(&self) -> OUT1_R {
        OUT1_R::new(((self.bits >> 16) & 0x01) != 0)
    }
}
#[doc = "LPCOMP Status Register\n\nThis register you can [`read`](crate::generic::Reg::read). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [status](index.html) module"]
pub struct STATUS_SPEC;
impl crate::RegisterSpec for STATUS_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [status::R](R) reader structure"]
impl crate::Readable for STATUS_SPEC {
    type Reader = R;
}
#[doc = "`reset()` method sets STATUS to value 0"]
impl crate::Resettable for STATUS_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
