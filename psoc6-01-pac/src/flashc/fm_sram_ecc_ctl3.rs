#[doc = "Register `FM_SRAM_ECC_CTL3` reader"]
pub struct R(crate::R<FM_SRAM_ECC_CTL3_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<FM_SRAM_ECC_CTL3_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<FM_SRAM_ECC_CTL3_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<FM_SRAM_ECC_CTL3_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `FM_SRAM_ECC_CTL3` writer"]
pub struct W(crate::W<FM_SRAM_ECC_CTL3_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<FM_SRAM_ECC_CTL3_SPEC>;
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
impl From<crate::W<FM_SRAM_ECC_CTL3_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<FM_SRAM_ECC_CTL3_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `ECC_ENABLE` reader - ECC generation/check enable for eCT Flash SRAM memory."]
pub struct ECC_ENABLE_R(crate::FieldReader<bool, bool>);
impl ECC_ENABLE_R {
    pub(crate) fn new(bits: bool) -> Self {
        ECC_ENABLE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ECC_ENABLE_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ECC_ENABLE` writer - ECC generation/check enable for eCT Flash SRAM memory."]
pub struct ECC_ENABLE_W<'a> {
    w: &'a mut W,
}
impl<'a> ECC_ENABLE_W<'a> {
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
#[doc = "Field `ECC_INJ_EN` reader - eCT Flash SRAM ECC error injection test enable. Follow the steps below for ECC logic test: 1. Write corrupted or uncorrupted 39-bit data to FM_SRAM_ECC_CTL0/1 registers. 2. Set the ECC_INJ_EN bit to '1'. 3. Confirm that the bit ECC_TEST_FAIL is '0'. If this is not the case, start over at item 1 because the eCT Flash was not idle. 4. Check the corrected data in FM_SRAM_ECC_CTL2. 5. Confirm that fault was reported to fault structure, and check syndrome (only applicable if corrupted data was written in step 1). 6. If not finished, start over at 1 with different data."]
pub struct ECC_INJ_EN_R(crate::FieldReader<bool, bool>);
impl ECC_INJ_EN_R {
    pub(crate) fn new(bits: bool) -> Self {
        ECC_INJ_EN_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ECC_INJ_EN_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `ECC_INJ_EN` writer - eCT Flash SRAM ECC error injection test enable. Follow the steps below for ECC logic test: 1. Write corrupted or uncorrupted 39-bit data to FM_SRAM_ECC_CTL0/1 registers. 2. Set the ECC_INJ_EN bit to '1'. 3. Confirm that the bit ECC_TEST_FAIL is '0'. If this is not the case, start over at item 1 because the eCT Flash was not idle. 4. Check the corrected data in FM_SRAM_ECC_CTL2. 5. Confirm that fault was reported to fault structure, and check syndrome (only applicable if corrupted data was written in step 1). 6. If not finished, start over at 1 with different data."]
pub struct ECC_INJ_EN_W<'a> {
    w: &'a mut W,
}
impl<'a> ECC_INJ_EN_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 4)) | ((value as u32 & 0x01) << 4);
        self.w
    }
}
#[doc = "Field `ECC_TEST_FAIL` reader - Status of ECC test. 1 : ECC test failed because eCT Flash macro is busy and using the SRAM. 0: ECC was performed."]
pub struct ECC_TEST_FAIL_R(crate::FieldReader<bool, bool>);
impl ECC_TEST_FAIL_R {
    pub(crate) fn new(bits: bool) -> Self {
        ECC_TEST_FAIL_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for ECC_TEST_FAIL_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl R {
    #[doc = "Bit 0 - ECC generation/check enable for eCT Flash SRAM memory."]
    #[inline(always)]
    pub fn ecc_enable(&self) -> ECC_ENABLE_R {
        ECC_ENABLE_R::new((self.bits & 0x01) != 0)
    }
    #[doc = "Bit 4 - eCT Flash SRAM ECC error injection test enable. Follow the steps below for ECC logic test: 1. Write corrupted or uncorrupted 39-bit data to FM_SRAM_ECC_CTL0/1 registers. 2. Set the ECC_INJ_EN bit to '1'. 3. Confirm that the bit ECC_TEST_FAIL is '0'. If this is not the case, start over at item 1 because the eCT Flash was not idle. 4. Check the corrected data in FM_SRAM_ECC_CTL2. 5. Confirm that fault was reported to fault structure, and check syndrome (only applicable if corrupted data was written in step 1). 6. If not finished, start over at 1 with different data."]
    #[inline(always)]
    pub fn ecc_inj_en(&self) -> ECC_INJ_EN_R {
        ECC_INJ_EN_R::new(((self.bits >> 4) & 0x01) != 0)
    }
    #[doc = "Bit 8 - Status of ECC test. 1 : ECC test failed because eCT Flash macro is busy and using the SRAM. 0: ECC was performed."]
    #[inline(always)]
    pub fn ecc_test_fail(&self) -> ECC_TEST_FAIL_R {
        ECC_TEST_FAIL_R::new(((self.bits >> 8) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bit 0 - ECC generation/check enable for eCT Flash SRAM memory."]
    #[inline(always)]
    pub fn ecc_enable(&mut self) -> ECC_ENABLE_W {
        ECC_ENABLE_W { w: self }
    }
    #[doc = "Bit 4 - eCT Flash SRAM ECC error injection test enable. Follow the steps below for ECC logic test: 1. Write corrupted or uncorrupted 39-bit data to FM_SRAM_ECC_CTL0/1 registers. 2. Set the ECC_INJ_EN bit to '1'. 3. Confirm that the bit ECC_TEST_FAIL is '0'. If this is not the case, start over at item 1 because the eCT Flash was not idle. 4. Check the corrected data in FM_SRAM_ECC_CTL2. 5. Confirm that fault was reported to fault structure, and check syndrome (only applicable if corrupted data was written in step 1). 6. If not finished, start over at 1 with different data."]
    #[inline(always)]
    pub fn ecc_inj_en(&mut self) -> ECC_INJ_EN_W {
        ECC_INJ_EN_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "eCT Flash SRAM ECC control 3\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [fm_sram_ecc_ctl3](index.html) module"]
pub struct FM_SRAM_ECC_CTL3_SPEC;
impl crate::RegisterSpec for FM_SRAM_ECC_CTL3_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [fm_sram_ecc_ctl3::R](R) reader structure"]
impl crate::Readable for FM_SRAM_ECC_CTL3_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [fm_sram_ecc_ctl3::W](W) writer structure"]
impl crate::Writable for FM_SRAM_ECC_CTL3_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets FM_SRAM_ECC_CTL3 to value 0x01"]
impl crate::Resettable for FM_SRAM_ECC_CTL3_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0x01
    }
}
