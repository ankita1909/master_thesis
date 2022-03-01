#[doc = "Register `CM4_SYSTEM_INT_CTL[%s]` reader"]
pub struct R(crate::R<CM4_SYSTEM_INT_CTL_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CM4_SYSTEM_INT_CTL_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CM4_SYSTEM_INT_CTL_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CM4_SYSTEM_INT_CTL_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `CM4_SYSTEM_INT_CTL[%s]` writer"]
pub struct W(crate::W<CM4_SYSTEM_INT_CTL_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<CM4_SYSTEM_INT_CTL_SPEC>;
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
impl From<crate::W<CM4_SYSTEM_INT_CTL_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<CM4_SYSTEM_INT_CTL_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `CPU_INT_IDX` reader - N/A"]
pub struct CPU_INT_IDX_R(crate::FieldReader<u8, u8>);
impl CPU_INT_IDX_R {
    pub(crate) fn new(bits: u8) -> Self {
        CPU_INT_IDX_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CPU_INT_IDX_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CPU_INT_IDX` writer - N/A"]
pub struct CPU_INT_IDX_W<'a> {
    w: &'a mut W,
}
impl<'a> CPU_INT_IDX_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !0x07) | (value as u32 & 0x07);
        self.w
    }
}
#[doc = "Field `CPU_INT_VALID` reader - N/A"]
pub struct CPU_INT_VALID_R(crate::FieldReader<bool, bool>);
impl CPU_INT_VALID_R {
    pub(crate) fn new(bits: bool) -> Self {
        CPU_INT_VALID_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for CPU_INT_VALID_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `CPU_INT_VALID` writer - N/A"]
pub struct CPU_INT_VALID_W<'a> {
    w: &'a mut W,
}
impl<'a> CPU_INT_VALID_W<'a> {
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
    #[doc = "Bits 0:2 - N/A"]
    #[inline(always)]
    pub fn cpu_int_idx(&self) -> CPU_INT_IDX_R {
        CPU_INT_IDX_R::new((self.bits & 0x07) as u8)
    }
    #[doc = "Bit 31 - N/A"]
    #[inline(always)]
    pub fn cpu_int_valid(&self) -> CPU_INT_VALID_R {
        CPU_INT_VALID_R::new(((self.bits >> 31) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bits 0:2 - N/A"]
    #[inline(always)]
    pub fn cpu_int_idx(&mut self) -> CPU_INT_IDX_W {
        CPU_INT_IDX_W { w: self }
    }
    #[doc = "Bit 31 - N/A"]
    #[inline(always)]
    pub fn cpu_int_valid(&mut self) -> CPU_INT_VALID_W {
        CPU_INT_VALID_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "CM4 system interrupt control\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [cm4_system_int_ctl](index.html) module"]
pub struct CM4_SYSTEM_INT_CTL_SPEC;
impl crate::RegisterSpec for CM4_SYSTEM_INT_CTL_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [cm4_system_int_ctl::R](R) reader structure"]
impl crate::Readable for CM4_SYSTEM_INT_CTL_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [cm4_system_int_ctl::W](W) writer structure"]
impl crate::Writable for CM4_SYSTEM_INT_CTL_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets CM4_SYSTEM_INT_CTL[%s]
to value 0"]
impl crate::Resettable for CM4_SYSTEM_INT_CTL_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
