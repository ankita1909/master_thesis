#[doc = "Register `CM4_CTL` reader"]
pub struct R(crate::R<CM4_CTL_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CM4_CTL_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CM4_CTL_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CM4_CTL_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `CM4_CTL` writer"]
pub struct W(crate::W<CM4_CTL_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<CM4_CTL_SPEC>;
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
impl From<crate::W<CM4_CTL_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<CM4_CTL_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `IOC_MASK` reader - CPU floating point unit (FPU) exception mask for the CPU's FPCSR.IOC 'invalid operation' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt. Note: the ARM architecture does NOT support FPU exceptions; i.e. there is no precise FPU exception handler. Instead, FPU conditions are captured in the CPU's FPCSR register and the conditions are provided as CPU interface signals. The interface signals are 'masked' with the fields a provide by this register (CM7_0_CTL). The 'masked' signals are reduced/OR-ed into a single CPU floating point interrupt signal. The associated CPU interrupt handler allows for imprecise handling of FPU exception conditions. Note: the CPU's FPCSR exception conditions are 'sticky'. Typically, the CPU FPU interrupt handler will clear the exception condition(s) to '0'. Note: by default, the FPU exception masks are '0'. Therefore, FPU exception conditions will NOT activate the CPU's floating point interrupt."]
pub struct IOC_MASK_R(crate::FieldReader<bool, bool>);
impl IOC_MASK_R {
    pub(crate) fn new(bits: bool) -> Self {
        IOC_MASK_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for IOC_MASK_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `IOC_MASK` writer - CPU floating point unit (FPU) exception mask for the CPU's FPCSR.IOC 'invalid operation' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt. Note: the ARM architecture does NOT support FPU exceptions; i.e. there is no precise FPU exception handler. Instead, FPU conditions are captured in the CPU's FPCSR register and the conditions are provided as CPU interface signals. The interface signals are 'masked' with the fields a provide by this register (CM7_0_CTL). The 'masked' signals are reduced/OR-ed into a single CPU floating point interrupt signal. The associated CPU interrupt handler allows for imprecise handling of FPU exception conditions. Note: the CPU's FPCSR exception conditions are 'sticky'. Typically, the CPU FPU interrupt handler will clear the exception condition(s) to '0'. Note: by default, the FPU exception masks are '0'. Therefore, FPU exception conditions will NOT activate the CPU's floating point interrupt."]
pub struct IOC_MASK_W<'a> {
    w: &'a mut W,
}
impl<'a> IOC_MASK_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 24)) | ((value as u32 & 0x01) << 24);
        self.w
    }
}
#[doc = "Field `DZC_MASK` reader - CPU FPU exception mask for the CPU's FPCSR.DZC 'divide by zero' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt."]
pub struct DZC_MASK_R(crate::FieldReader<bool, bool>);
impl DZC_MASK_R {
    pub(crate) fn new(bits: bool) -> Self {
        DZC_MASK_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for DZC_MASK_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `DZC_MASK` writer - CPU FPU exception mask for the CPU's FPCSR.DZC 'divide by zero' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt."]
pub struct DZC_MASK_W<'a> {
    w: &'a mut W,
}
impl<'a> DZC_MASK_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 25)) | ((value as u32 & 0x01) << 25);
        self.w
    }
}
#[doc = "Field `OFC_MASK` reader - CPU FPU exception mask for the CPU's FPCSR.OFC 'overflow' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt."]
pub struct OFC_MASK_R(crate::FieldReader<bool, bool>);
impl OFC_MASK_R {
    pub(crate) fn new(bits: bool) -> Self {
        OFC_MASK_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for OFC_MASK_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `OFC_MASK` writer - CPU FPU exception mask for the CPU's FPCSR.OFC 'overflow' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt."]
pub struct OFC_MASK_W<'a> {
    w: &'a mut W,
}
impl<'a> OFC_MASK_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 26)) | ((value as u32 & 0x01) << 26);
        self.w
    }
}
#[doc = "Field `UFC_MASK` reader - CPU FPU exception mask for the CPU's FPCSR.UFC 'underflow' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt."]
pub struct UFC_MASK_R(crate::FieldReader<bool, bool>);
impl UFC_MASK_R {
    pub(crate) fn new(bits: bool) -> Self {
        UFC_MASK_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for UFC_MASK_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `UFC_MASK` writer - CPU FPU exception mask for the CPU's FPCSR.UFC 'underflow' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt."]
pub struct UFC_MASK_W<'a> {
    w: &'a mut W,
}
impl<'a> UFC_MASK_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 27)) | ((value as u32 & 0x01) << 27);
        self.w
    }
}
#[doc = "Field `IXC_MASK` reader - CPU FPU exception mask for the CPU's FPCSR.IXC 'inexact' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt. Note: the 'inexact' condition is set as a result of rounding. Rounding may occur frequently and is typically not an error condition. To prevent frequent CPU FPU interrupts as a result of rounding, this field is typically set to '0'."]
pub struct IXC_MASK_R(crate::FieldReader<bool, bool>);
impl IXC_MASK_R {
    pub(crate) fn new(bits: bool) -> Self {
        IXC_MASK_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for IXC_MASK_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `IXC_MASK` writer - CPU FPU exception mask for the CPU's FPCSR.IXC 'inexact' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt. Note: the 'inexact' condition is set as a result of rounding. Rounding may occur frequently and is typically not an error condition. To prevent frequent CPU FPU interrupts as a result of rounding, this field is typically set to '0'."]
pub struct IXC_MASK_W<'a> {
    w: &'a mut W,
}
impl<'a> IXC_MASK_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 28)) | ((value as u32 & 0x01) << 28);
        self.w
    }
}
#[doc = "Field `IDC_MASK` reader - CPU FPU exception mask for the CPU's FPCSR.IDC 'input denormalized' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt. Note: if the CPU FPCSR.FZ field is set to '1', denormalized inputs are 'flushed to zero'. Dependent on the FPU algorithm, this may or may not occur frequently. To prevent frequent CPU FPU interrupts as a result of denormalized inputs, this field may be set to '0'."]
pub struct IDC_MASK_R(crate::FieldReader<bool, bool>);
impl IDC_MASK_R {
    pub(crate) fn new(bits: bool) -> Self {
        IDC_MASK_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for IDC_MASK_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `IDC_MASK` writer - CPU FPU exception mask for the CPU's FPCSR.IDC 'input denormalized' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt. Note: if the CPU FPCSR.FZ field is set to '1', denormalized inputs are 'flushed to zero'. Dependent on the FPU algorithm, this may or may not occur frequently. To prevent frequent CPU FPU interrupts as a result of denormalized inputs, this field may be set to '0'."]
pub struct IDC_MASK_W<'a> {
    w: &'a mut W,
}
impl<'a> IDC_MASK_W<'a> {
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
    #[doc = "Bit 24 - CPU floating point unit (FPU) exception mask for the CPU's FPCSR.IOC 'invalid operation' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt. Note: the ARM architecture does NOT support FPU exceptions; i.e. there is no precise FPU exception handler. Instead, FPU conditions are captured in the CPU's FPCSR register and the conditions are provided as CPU interface signals. The interface signals are 'masked' with the fields a provide by this register (CM7_0_CTL). The 'masked' signals are reduced/OR-ed into a single CPU floating point interrupt signal. The associated CPU interrupt handler allows for imprecise handling of FPU exception conditions. Note: the CPU's FPCSR exception conditions are 'sticky'. Typically, the CPU FPU interrupt handler will clear the exception condition(s) to '0'. Note: by default, the FPU exception masks are '0'. Therefore, FPU exception conditions will NOT activate the CPU's floating point interrupt."]
    #[inline(always)]
    pub fn ioc_mask(&self) -> IOC_MASK_R {
        IOC_MASK_R::new(((self.bits >> 24) & 0x01) != 0)
    }
    #[doc = "Bit 25 - CPU FPU exception mask for the CPU's FPCSR.DZC 'divide by zero' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt."]
    #[inline(always)]
    pub fn dzc_mask(&self) -> DZC_MASK_R {
        DZC_MASK_R::new(((self.bits >> 25) & 0x01) != 0)
    }
    #[doc = "Bit 26 - CPU FPU exception mask for the CPU's FPCSR.OFC 'overflow' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt."]
    #[inline(always)]
    pub fn ofc_mask(&self) -> OFC_MASK_R {
        OFC_MASK_R::new(((self.bits >> 26) & 0x01) != 0)
    }
    #[doc = "Bit 27 - CPU FPU exception mask for the CPU's FPCSR.UFC 'underflow' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt."]
    #[inline(always)]
    pub fn ufc_mask(&self) -> UFC_MASK_R {
        UFC_MASK_R::new(((self.bits >> 27) & 0x01) != 0)
    }
    #[doc = "Bit 28 - CPU FPU exception mask for the CPU's FPCSR.IXC 'inexact' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt. Note: the 'inexact' condition is set as a result of rounding. Rounding may occur frequently and is typically not an error condition. To prevent frequent CPU FPU interrupts as a result of rounding, this field is typically set to '0'."]
    #[inline(always)]
    pub fn ixc_mask(&self) -> IXC_MASK_R {
        IXC_MASK_R::new(((self.bits >> 28) & 0x01) != 0)
    }
    #[doc = "Bit 31 - CPU FPU exception mask for the CPU's FPCSR.IDC 'input denormalized' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt. Note: if the CPU FPCSR.FZ field is set to '1', denormalized inputs are 'flushed to zero'. Dependent on the FPU algorithm, this may or may not occur frequently. To prevent frequent CPU FPU interrupts as a result of denormalized inputs, this field may be set to '0'."]
    #[inline(always)]
    pub fn idc_mask(&self) -> IDC_MASK_R {
        IDC_MASK_R::new(((self.bits >> 31) & 0x01) != 0)
    }
}
impl W {
    #[doc = "Bit 24 - CPU floating point unit (FPU) exception mask for the CPU's FPCSR.IOC 'invalid operation' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt. Note: the ARM architecture does NOT support FPU exceptions; i.e. there is no precise FPU exception handler. Instead, FPU conditions are captured in the CPU's FPCSR register and the conditions are provided as CPU interface signals. The interface signals are 'masked' with the fields a provide by this register (CM7_0_CTL). The 'masked' signals are reduced/OR-ed into a single CPU floating point interrupt signal. The associated CPU interrupt handler allows for imprecise handling of FPU exception conditions. Note: the CPU's FPCSR exception conditions are 'sticky'. Typically, the CPU FPU interrupt handler will clear the exception condition(s) to '0'. Note: by default, the FPU exception masks are '0'. Therefore, FPU exception conditions will NOT activate the CPU's floating point interrupt."]
    #[inline(always)]
    pub fn ioc_mask(&mut self) -> IOC_MASK_W {
        IOC_MASK_W { w: self }
    }
    #[doc = "Bit 25 - CPU FPU exception mask for the CPU's FPCSR.DZC 'divide by zero' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt."]
    #[inline(always)]
    pub fn dzc_mask(&mut self) -> DZC_MASK_W {
        DZC_MASK_W { w: self }
    }
    #[doc = "Bit 26 - CPU FPU exception mask for the CPU's FPCSR.OFC 'overflow' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt."]
    #[inline(always)]
    pub fn ofc_mask(&mut self) -> OFC_MASK_W {
        OFC_MASK_W { w: self }
    }
    #[doc = "Bit 27 - CPU FPU exception mask for the CPU's FPCSR.UFC 'underflow' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt."]
    #[inline(always)]
    pub fn ufc_mask(&mut self) -> UFC_MASK_W {
        UFC_MASK_W { w: self }
    }
    #[doc = "Bit 28 - CPU FPU exception mask for the CPU's FPCSR.IXC 'inexact' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt. Note: the 'inexact' condition is set as a result of rounding. Rounding may occur frequently and is typically not an error condition. To prevent frequent CPU FPU interrupts as a result of rounding, this field is typically set to '0'."]
    #[inline(always)]
    pub fn ixc_mask(&mut self) -> IXC_MASK_W {
        IXC_MASK_W { w: self }
    }
    #[doc = "Bit 31 - CPU FPU exception mask for the CPU's FPCSR.IDC 'input denormalized' exception condition: '0': The CPU's exception condition does NOT activate the CPU's floating point interrupt. '1': the CPU's exception condition activates the CPU's floating point interrupt. Note: if the CPU FPCSR.FZ field is set to '1', denormalized inputs are 'flushed to zero'. Dependent on the FPU algorithm, this may or may not occur frequently. To prevent frequent CPU FPU interrupts as a result of denormalized inputs, this field may be set to '0'."]
    #[inline(always)]
    pub fn idc_mask(&mut self) -> IDC_MASK_W {
        IDC_MASK_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "CM4 control\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [cm4_ctl](index.html) module"]
pub struct CM4_CTL_SPEC;
impl crate::RegisterSpec for CM4_CTL_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [cm4_ctl::R](R) reader structure"]
impl crate::Readable for CM4_CTL_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [cm4_ctl::W](W) writer structure"]
impl crate::Writable for CM4_CTL_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets CM4_CTL to value 0"]
impl crate::Resettable for CM4_CTL_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
