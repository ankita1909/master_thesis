#[doc = "Register `CM0_STATUS` reader"]
pub struct R(crate::R<CM0_STATUS_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CM0_STATUS_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CM0_STATUS_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CM0_STATUS_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `CM0_STATUS` writer"]
pub struct W(crate::W<CM0_STATUS_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<CM0_STATUS_SPEC>;
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
impl From<crate::W<CM0_STATUS_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<CM0_STATUS_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `MAIN_INTERNAL_ERR` reader - Specifies/registers the occurrence of a FLASH macro main interface internal error (typically the result of a read access while a program erase operation is ongoing) as a result of a CM0+ access. SW clears this field to '0'. HW sets this field to '1' on a FLASH macro main interface internal error. Typically, SW reads this field after a code section to detect the occurrence of an error. Note: this field is independent of FLASH_CTL.MAIN_ERR_SILENT."]
pub struct MAIN_INTERNAL_ERR_R(crate::FieldReader<bool, bool>);
impl MAIN_INTERNAL_ERR_R {
    pub(crate) fn new(bits: bool) -> Self {
        MAIN_INTERNAL_ERR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for MAIN_INTERNAL_ERR_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `MAIN_INTERNAL_ERR` writer - Specifies/registers the occurrence of a FLASH macro main interface internal error (typically the result of a read access while a program erase operation is ongoing) as a result of a CM0+ access. SW clears this field to '0'. HW sets this field to '1' on a FLASH macro main interface internal error. Typically, SW reads this field after a code section to detect the occurrence of an error. Note: this field is independent of FLASH_CTL.MAIN_ERR_SILENT."]
pub struct MAIN_INTERNAL_ERR_W<'a> {
    w: &'a mut W,
}
impl<'a> MAIN_INTERNAL_ERR_W<'a> {
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
        self.w.bits = (self.w.bits & !0x01) | (value as u32 & 0x01);
        self.w
    }
}
#[doc = "Field `WORK_INTERNAL_ERR` reader - See CM0_STATUS.MAIN_INTERNAL_ERROR."]
pub struct WORK_INTERNAL_ERR_R(crate::FieldReader<bool, bool>);
impl WORK_INTERNAL_ERR_R {
    pub(crate) fn new(bits: bool) -> Self {
        WORK_INTERNAL_ERR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for WORK_INTERNAL_ERR_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `WORK_INTERNAL_ERR` writer - See CM0_STATUS.MAIN_INTERNAL_ERROR."]
pub struct WORK_INTERNAL_ERR_W<'a> {
    w: &'a mut W,
}
impl<'a> WORK_INTERNAL_ERR_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 1)) | ((value as u32 & 0x01) << 1);
        self.w
    }
}
impl R {
    #[doc = "Bit 0 - Specifies/registers the occurrence of a FLASH macro main interface internal error (typically the result of a read access while a program erase operation is ongoing) as a result of a CM0+ access. SW clears this field to '0'. HW sets this field to '1' on a FLASH macro main interface internal error. Typically, SW reads this field after a code section to detect the occurrence of an error. Note: this field is independent of FLASH_CTL.MAIN_ERR_SILENT."]
    #[inline(always)]
    pub fn main_internal_err(&self) -> MAIN_INTERNAL_ERR_R {
        MAIN_INTERNAL_ERR_R::new((self.bits & 0x01) != 0)
    }
    #[doc = "Bit 1 - See CM0_STATUS.MAIN_INTERNAL_ERROR."]
    #[inline(always)]
    pub fn work_internal_err(&self) -> WORK_INTERNAL_ERR_R {
        WORK_INTERNAL_ERR_R::new(((self.bits >> 1) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bit 0 - Specifies/registers the occurrence of a FLASH macro main interface internal error (typically the result of a read access while a program erase operation is ongoing) as a result of a CM0+ access. SW clears this field to '0'. HW sets this field to '1' on a FLASH macro main interface internal error. Typically, SW reads this field after a code section to detect the occurrence of an error. Note: this field is independent of FLASH_CTL.MAIN_ERR_SILENT."]
    #[inline(always)]
    pub fn main_internal_err(&mut self) -> MAIN_INTERNAL_ERR_W {
        MAIN_INTERNAL_ERR_W { w: self }
    }
    #[doc = "Bit 1 - See CM0_STATUS.MAIN_INTERNAL_ERROR."]
    #[inline(always)]
    pub fn work_internal_err(&mut self) -> WORK_INTERNAL_ERR_W {
        WORK_INTERNAL_ERR_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "CM0+ interface status\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [cm0_status](index.html) module"]
pub struct CM0_STATUS_SPEC;
impl crate::RegisterSpec for CM0_STATUS_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [cm0_status::R](R) reader structure"]
impl crate::Readable for CM0_STATUS_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [cm0_status::W](W) writer structure"]
impl crate::Writable for CM0_STATUS_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets CM0_STATUS to value 0"]
impl crate::Resettable for CM0_STATUS_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
