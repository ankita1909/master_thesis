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
#[doc = "Field `CSD_SENSE` reader - Signal used to drive the Cs switches."]
pub struct CSD_SENSE_R(crate::FieldReader<bool, bool>);
impl CSD_SENSE_R {
    pub(crate) fn new(bits: bool) -> Self {
        CSD_SENSE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CSD_SENSE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Output of reference buffer comparator used to charge up Cmod and/or Csh_tank (synchronized)\n\nValue on reset: 0"]
#[derive(Clone, Copy, Debug, PartialEq)]
pub enum HSCMP_OUT_A {
    #[doc = "0: Vin < Vref"]
    C_LT_VREF = 0,
    #[doc = "1: Vin > Vref"]
    C_GT_VREF = 1,
}
impl From<HSCMP_OUT_A> for bool {
    #[inline(always)]
    fn from(variant: HSCMP_OUT_A) -> Self {
        variant as u8 != 0
    }
}
#[doc = "Field `HSCMP_OUT` reader - Output of reference buffer comparator used to charge up Cmod and/or Csh_tank (synchronized)"]
pub struct HSCMP_OUT_R(crate::FieldReader<bool, HSCMP_OUT_A>);
impl HSCMP_OUT_R {
    pub(crate) fn new(bits: bool) -> Self {
        HSCMP_OUT_R(crate::FieldReader::new(bits))
    }
    #[doc = r"Get enumerated values variant"]
    #[inline(always)]
    pub fn variant(&self) -> HSCMP_OUT_A {
        match self.bits {
            false => HSCMP_OUT_A::C_LT_VREF,
            true => HSCMP_OUT_A::C_GT_VREF,
        }
    }
    #[doc = "Checks if the value of the field is `C_LT_VREF`"]
    #[inline(always)]
    pub fn is_c_lt_vref(&self) -> bool {
        **self == HSCMP_OUT_A::C_LT_VREF
    }
    #[doc = "Checks if the value of the field is `C_GT_VREF`"]
    #[inline(always)]
    pub fn is_c_gt_vref(&self) -> bool {
        **self == HSCMP_OUT_A::C_GT_VREF
    }
}
impl core::ops::Deref for HSCMP_OUT_R {
    type Target = crate::FieldReader<bool, HSCMP_OUT_A>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CSDCMP_OUT` reader - Output of main sensing comparator (synchronized)"]
pub struct CSDCMP_OUT_R(crate::FieldReader<bool, bool>);
impl CSDCMP_OUT_R {
    pub(crate) fn new(bits: bool) -> Self {
        CSDCMP_OUT_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CSDCMP_OUT_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl R {
    #[doc = "Bit 1 - Signal used to drive the Cs switches."]
    #[inline(always)]
    pub fn csd_sense(&self) -> CSD_SENSE_R {
        CSD_SENSE_R::new(((self.bits >> 1) & 0x01) != 0)
    }
    #[doc = "Bit 2 - Output of reference buffer comparator used to charge up Cmod and/or Csh_tank (synchronized)"]
    #[inline(always)]
    pub fn hscmp_out(&self) -> HSCMP_OUT_R {
        HSCMP_OUT_R::new(((self.bits >> 2) & 0x01) != 0)
    }
    #[doc = "Bit 3 - Output of main sensing comparator (synchronized)"]
    #[inline(always)]
    pub fn csdcmp_out(&self) -> CSDCMP_OUT_R {
        CSDCMP_OUT_R::new(((self.bits >> 3) & 0x01) != 0)
    }
}
#[doc = "Status Register\n\nThis register you can [`read`](crate::generic::Reg::read). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [status](index.html) module"]
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
