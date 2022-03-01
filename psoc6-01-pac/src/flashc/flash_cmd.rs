#[doc = "Register `FLASH_CMD` reader"]
pub struct R(crate::R<FLASH_CMD_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<FLASH_CMD_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<FLASH_CMD_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<FLASH_CMD_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `FLASH_CMD` writer"]
pub struct W(crate::W<FLASH_CMD_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<FLASH_CMD_SPEC>;
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
impl From<crate::W<FLASH_CMD_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<FLASH_CMD_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `INV` reader - Invalidation of ALL caches (for CM0+ and CM4) and ALL buffers. SW writes a '1' to clear the caches. HW sets this field to '0' when the operation is completed. The operation takes a maximum of three clock cycles on the slowest of the clk_slow and clk_fast clocks. The caches' LRU structures are also reset to their default state."]
pub struct INV_R(crate::FieldReader<bool, bool>);
impl INV_R {
    pub(crate) fn new(bits: bool) -> Self {
        INV_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for INV_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `INV` writer - Invalidation of ALL caches (for CM0+ and CM4) and ALL buffers. SW writes a '1' to clear the caches. HW sets this field to '0' when the operation is completed. The operation takes a maximum of three clock cycles on the slowest of the clk_slow and clk_fast clocks. The caches' LRU structures are also reset to their default state."]
pub struct INV_W<'a> {
    w: &'a mut W,
}
impl<'a> INV_W<'a> {
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
#[doc = "Field `BUFF_INV` reader - Invalidation of ALL buffers (does not invalidate the caches). SW writes a '1' to clear the buffers. HW sets this field to '0' when the operation is completed. The operation takes a maximum of three clock cycles on the slowest of the clk_slow and clk_fast clocks. Note: the caches only capture FLASH macro main array data. Therefore, invalidating just the buffers (BUFF_INV) does not invalidate captures main array data in the caches."]
pub struct BUFF_INV_R(crate::FieldReader<bool, bool>);
impl BUFF_INV_R {
    pub(crate) fn new(bits: bool) -> Self {
        BUFF_INV_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for BUFF_INV_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `BUFF_INV` writer - Invalidation of ALL buffers (does not invalidate the caches). SW writes a '1' to clear the buffers. HW sets this field to '0' when the operation is completed. The operation takes a maximum of three clock cycles on the slowest of the clk_slow and clk_fast clocks. Note: the caches only capture FLASH macro main array data. Therefore, invalidating just the buffers (BUFF_INV) does not invalidate captures main array data in the caches."]
pub struct BUFF_INV_W<'a> {
    w: &'a mut W,
}
impl<'a> BUFF_INV_W<'a> {
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
    #[doc = "Bit 0 - Invalidation of ALL caches (for CM0+ and CM4) and ALL buffers. SW writes a '1' to clear the caches. HW sets this field to '0' when the operation is completed. The operation takes a maximum of three clock cycles on the slowest of the clk_slow and clk_fast clocks. The caches' LRU structures are also reset to their default state."]
    #[inline(always)]
    pub fn inv(&self) -> INV_R {
        INV_R::new((self.bits & 0x01) != 0)
    }
    #[doc = "Bit 1 - Invalidation of ALL buffers (does not invalidate the caches). SW writes a '1' to clear the buffers. HW sets this field to '0' when the operation is completed. The operation takes a maximum of three clock cycles on the slowest of the clk_slow and clk_fast clocks. Note: the caches only capture FLASH macro main array data. Therefore, invalidating just the buffers (BUFF_INV) does not invalidate captures main array data in the caches."]
    #[inline(always)]
    pub fn buff_inv(&self) -> BUFF_INV_R {
        BUFF_INV_R::new(((self.bits >> 1) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bit 0 - Invalidation of ALL caches (for CM0+ and CM4) and ALL buffers. SW writes a '1' to clear the caches. HW sets this field to '0' when the operation is completed. The operation takes a maximum of three clock cycles on the slowest of the clk_slow and clk_fast clocks. The caches' LRU structures are also reset to their default state."]
    #[inline(always)]
    pub fn inv(&mut self) -> INV_W {
        INV_W { w: self }
    }
    #[doc = "Bit 1 - Invalidation of ALL buffers (does not invalidate the caches). SW writes a '1' to clear the buffers. HW sets this field to '0' when the operation is completed. The operation takes a maximum of three clock cycles on the slowest of the clk_slow and clk_fast clocks. Note: the caches only capture FLASH macro main array data. Therefore, invalidating just the buffers (BUFF_INV) does not invalidate captures main array data in the caches."]
    #[inline(always)]
    pub fn buff_inv(&mut self) -> BUFF_INV_W {
        BUFF_INV_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Command\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [flash_cmd](index.html) module"]
pub struct FLASH_CMD_SPEC;
impl crate::RegisterSpec for FLASH_CMD_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [flash_cmd::R](R) reader structure"]
impl crate::Readable for FLASH_CMD_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [flash_cmd::W](W) writer structure"]
impl crate::Writable for FLASH_CMD_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets FLASH_CMD to value 0"]
impl crate::Resettable for FLASH_CMD_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
