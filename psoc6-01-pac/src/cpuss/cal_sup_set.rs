#[doc = "Register `CAL_SUP_SET` reader"]
pub struct R(crate::R<CAL_SUP_SET_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CAL_SUP_SET_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CAL_SUP_SET_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CAL_SUP_SET_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `CAL_SUP_SET` writer"]
pub struct W(crate::W<CAL_SUP_SET_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<CAL_SUP_SET_SPEC>;
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
impl From<crate::W<CAL_SUP_SET_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<CAL_SUP_SET_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `DATA` reader - Read without side effect, write 1 to set"]
pub struct DATA_R(crate::FieldReader<u32, u32>);
impl DATA_R {
    pub(crate) fn new(bits: u32) -> Self {
        DATA_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DATA_R {
    type Target = crate::FieldReader<u32, u32>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DATA` writer - Read without side effect, write 1 to set"]
pub struct DATA_W<'a> {
    w: &'a mut W,
}
impl<'a> DATA_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u32) -> &'a mut W {
        self.w.bits = (self.w.bits & !0xffff_ffff) | (value as u32 & 0xffff_ffff);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:31 - Read without side effect, write 1 to set"]
    #[inline(always)]
    pub fn data(&self) -> DATA_R {
        DATA_R::new((self.bits & 0xffff_ffff) as u32)
    }
}
impl W {
    #[doc = "Bits 0:31 - Read without side effect, write 1 to set"]
    #[inline(always)]
    pub fn data(&mut self) -> DATA_W {
        DATA_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Calibration support set and read\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [cal_sup_set](index.html) module"]
pub struct CAL_SUP_SET_SPEC;
impl crate::RegisterSpec for CAL_SUP_SET_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [cal_sup_set::R](R) reader structure"]
impl crate::Readable for CAL_SUP_SET_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [cal_sup_set::W](W) writer structure"]
impl crate::Writable for CAL_SUP_SET_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets CAL_SUP_SET to value 0"]
impl crate::Resettable for CAL_SUP_SET_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
