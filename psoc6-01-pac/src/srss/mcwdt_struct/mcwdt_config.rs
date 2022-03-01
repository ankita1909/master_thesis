#[doc = "Register `MCWDT_CONFIG` reader"]
pub struct R(crate::R<MCWDT_CONFIG_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<MCWDT_CONFIG_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<MCWDT_CONFIG_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<MCWDT_CONFIG_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `MCWDT_CONFIG` writer"]
pub struct W(crate::W<MCWDT_CONFIG_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<MCWDT_CONFIG_SPEC>;
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
impl From<crate::W<MCWDT_CONFIG_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<MCWDT_CONFIG_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Watchdog Counter Action on Match. Action is taken on the next increment after the values match (WDT_CTR0=WDT_MATCH0).\n\nValue on reset: 0"]
#[derive(Clone, Copy, Debug, PartialEq)]
#[repr(u8)]
pub enum WDT_MODE0_A {
    #[doc = "0: Do nothing"]
    NOTHING = 0,
    #[doc = "1: Assert WDT_INTx"]
    INT = 1,
    #[doc = "2: Assert WDT Reset"]
    RESET = 2,
    #[doc = "3: Assert WDT_INTx, assert WDT Reset after 3rd unhandled interrupt"]
    INT_THEN_RESET = 3,
}
impl From<WDT_MODE0_A> for u8 {
    #[inline(always)]
    fn from(variant: WDT_MODE0_A) -> Self {
        variant as _
    }
}
#[doc = "Field `WDT_MODE0` reader - Watchdog Counter Action on Match. Action is taken on the next increment after the values match (WDT_CTR0=WDT_MATCH0)."]
pub struct WDT_MODE0_R(crate::FieldReader<u8, WDT_MODE0_A>);
impl WDT_MODE0_R {
    pub(crate) fn new(bits: u8) -> Self {
        WDT_MODE0_R(crate::FieldReader::new(bits))
    }
    #[doc = r"Get enumerated values variant"]
    #[inline(always)]
    pub fn variant(&self) -> WDT_MODE0_A {
        match self.bits {
            0 => WDT_MODE0_A::NOTHING,
            1 => WDT_MODE0_A::INT,
            2 => WDT_MODE0_A::RESET,
            3 => WDT_MODE0_A::INT_THEN_RESET,
            _ => unreachable!(),
        }
    }
    #[doc = "Checks if the value of the field is `NOTHING`"]
    #[inline(always)]
    pub fn is_nothing(&self) -> bool {
        **self == WDT_MODE0_A::NOTHING
    }
    #[doc = "Checks if the value of the field is `INT`"]
    #[inline(always)]
    pub fn is_int(&self) -> bool {
        **self == WDT_MODE0_A::INT
    }
    #[doc = "Checks if the value of the field is `RESET`"]
    #[inline(always)]
    pub fn is_reset(&self) -> bool {
        **self == WDT_MODE0_A::RESET
    }
    #[doc = "Checks if the value of the field is `INT_THEN_RESET`"]
    #[inline(always)]
    pub fn is_int_then_reset(&self) -> bool {
        **self == WDT_MODE0_A::INT_THEN_RESET
    }
}
impl core::ops::Deref for WDT_MODE0_R {
    type Target = crate::FieldReader<u8, WDT_MODE0_A>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `WDT_MODE0` writer - Watchdog Counter Action on Match. Action is taken on the next increment after the values match (WDT_CTR0=WDT_MATCH0)."]
pub struct WDT_MODE0_W<'a> {
    w: &'a mut W,
}
impl<'a> WDT_MODE0_W<'a> {
    #[doc = r"Writes `variant` to the field"]
    #[inline(always)]
    pub fn variant(self, variant: WDT_MODE0_A) -> &'a mut W {
        self.bits(variant.into())
    }
    #[doc = "Do nothing"]
    #[inline(always)]
    pub fn nothing(self) -> &'a mut W {
        self.variant(WDT_MODE0_A::NOTHING)
    }
    #[doc = "Assert WDT_INTx"]
    #[inline(always)]
    pub fn int(self) -> &'a mut W {
        self.variant(WDT_MODE0_A::INT)
    }
    #[doc = "Assert WDT Reset"]
    #[inline(always)]
    pub fn reset(self) -> &'a mut W {
        self.variant(WDT_MODE0_A::RESET)
    }
    #[doc = "Assert WDT_INTx, assert WDT Reset after 3rd unhandled interrupt"]
    #[inline(always)]
    pub fn int_then_reset(self) -> &'a mut W {
        self.variant(WDT_MODE0_A::INT_THEN_RESET)
    }
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !0x03) | (value as u32 & 0x03);
        self.w
    }
}
#[doc = "Field `WDT_CLEAR0` reader - Clear Watchdog Counter when WDT_CTR0=WDT_MATCH0. In other words WDT_CTR0 divides LFCLK by (WDT_MATCH0+1). 0: Free running counter 1: Clear on match. In this mode, the minimum legal setting of WDT_MATCH0 is 1."]
pub struct WDT_CLEAR0_R(crate::FieldReader<bool, bool>);
impl WDT_CLEAR0_R {
    pub(crate) fn new(bits: bool) -> Self {
        WDT_CLEAR0_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for WDT_CLEAR0_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `WDT_CLEAR0` writer - Clear Watchdog Counter when WDT_CTR0=WDT_MATCH0. In other words WDT_CTR0 divides LFCLK by (WDT_MATCH0+1). 0: Free running counter 1: Clear on match. In this mode, the minimum legal setting of WDT_MATCH0 is 1."]
pub struct WDT_CLEAR0_W<'a> {
    w: &'a mut W,
}
impl<'a> WDT_CLEAR0_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 2)) | ((value as u32 & 0x01) << 2);
        self.w
    }
}
#[doc = "Field `WDT_CASCADE0_1` reader - Cascade Watchdog Counters 0,1. Counter 1 increments the cycle after WDT_CTR0=WDT_MATCH0. 0: Independent counters 1: Cascaded counters"]
pub struct WDT_CASCADE0_1_R(crate::FieldReader<bool, bool>);
impl WDT_CASCADE0_1_R {
    pub(crate) fn new(bits: bool) -> Self {
        WDT_CASCADE0_1_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for WDT_CASCADE0_1_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `WDT_CASCADE0_1` writer - Cascade Watchdog Counters 0,1. Counter 1 increments the cycle after WDT_CTR0=WDT_MATCH0. 0: Independent counters 1: Cascaded counters"]
pub struct WDT_CASCADE0_1_W<'a> {
    w: &'a mut W,
}
impl<'a> WDT_CASCADE0_1_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 3)) | ((value as u32 & 0x01) << 3);
        self.w
    }
}
#[doc = "Watchdog Counter Action on Match. Action is taken on the next increment after the values match (WDT_CTR1=WDT_MATCH1).\n\nValue on reset: 0"]
#[derive(Clone, Copy, Debug, PartialEq)]
#[repr(u8)]
pub enum WDT_MODE1_A {
    #[doc = "0: Do nothing"]
    NOTHING = 0,
    #[doc = "1: Assert WDT_INTx"]
    INT = 1,
    #[doc = "2: Assert WDT Reset"]
    RESET = 2,
    #[doc = "3: Assert WDT_INTx, assert WDT Reset after 3rd unhandled interrupt"]
    INT_THEN_RESET = 3,
}
impl From<WDT_MODE1_A> for u8 {
    #[inline(always)]
    fn from(variant: WDT_MODE1_A) -> Self {
        variant as _
    }
}
#[doc = "Field `WDT_MODE1` reader - Watchdog Counter Action on Match. Action is taken on the next increment after the values match (WDT_CTR1=WDT_MATCH1)."]
pub struct WDT_MODE1_R(crate::FieldReader<u8, WDT_MODE1_A>);
impl WDT_MODE1_R {
    pub(crate) fn new(bits: u8) -> Self {
        WDT_MODE1_R(crate::FieldReader::new(bits))
    }
    #[doc = r"Get enumerated values variant"]
    #[inline(always)]
    pub fn variant(&self) -> WDT_MODE1_A {
        match self.bits {
            0 => WDT_MODE1_A::NOTHING,
            1 => WDT_MODE1_A::INT,
            2 => WDT_MODE1_A::RESET,
            3 => WDT_MODE1_A::INT_THEN_RESET,
            _ => unreachable!(),
        }
    }
    #[doc = "Checks if the value of the field is `NOTHING`"]
    #[inline(always)]
    pub fn is_nothing(&self) -> bool {
        **self == WDT_MODE1_A::NOTHING
    }
    #[doc = "Checks if the value of the field is `INT`"]
    #[inline(always)]
    pub fn is_int(&self) -> bool {
        **self == WDT_MODE1_A::INT
    }
    #[doc = "Checks if the value of the field is `RESET`"]
    #[inline(always)]
    pub fn is_reset(&self) -> bool {
        **self == WDT_MODE1_A::RESET
    }
    #[doc = "Checks if the value of the field is `INT_THEN_RESET`"]
    #[inline(always)]
    pub fn is_int_then_reset(&self) -> bool {
        **self == WDT_MODE1_A::INT_THEN_RESET
    }
}
impl core::ops::Deref for WDT_MODE1_R {
    type Target = crate::FieldReader<u8, WDT_MODE1_A>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `WDT_MODE1` writer - Watchdog Counter Action on Match. Action is taken on the next increment after the values match (WDT_CTR1=WDT_MATCH1)."]
pub struct WDT_MODE1_W<'a> {
    w: &'a mut W,
}
impl<'a> WDT_MODE1_W<'a> {
    #[doc = r"Writes `variant` to the field"]
    #[inline(always)]
    pub fn variant(self, variant: WDT_MODE1_A) -> &'a mut W {
        self.bits(variant.into())
    }
    #[doc = "Do nothing"]
    #[inline(always)]
    pub fn nothing(self) -> &'a mut W {
        self.variant(WDT_MODE1_A::NOTHING)
    }
    #[doc = "Assert WDT_INTx"]
    #[inline(always)]
    pub fn int(self) -> &'a mut W {
        self.variant(WDT_MODE1_A::INT)
    }
    #[doc = "Assert WDT Reset"]
    #[inline(always)]
    pub fn reset(self) -> &'a mut W {
        self.variant(WDT_MODE1_A::RESET)
    }
    #[doc = "Assert WDT_INTx, assert WDT Reset after 3rd unhandled interrupt"]
    #[inline(always)]
    pub fn int_then_reset(self) -> &'a mut W {
        self.variant(WDT_MODE1_A::INT_THEN_RESET)
    }
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x03 << 8)) | ((value as u32 & 0x03) << 8);
        self.w
    }
}
#[doc = "Field `WDT_CLEAR1` reader - Clear Watchdog Counter when WDT_CTR1==WDT_MATCH1. In other words WDT_CTR1 divides LFCLK by (WDT_MATCH1+1). 0: Free running counter 1: Clear on match. In this mode, the minimum legal setting of WDT_MATCH1 is 1."]
pub struct WDT_CLEAR1_R(crate::FieldReader<bool, bool>);
impl WDT_CLEAR1_R {
    pub(crate) fn new(bits: bool) -> Self {
        WDT_CLEAR1_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for WDT_CLEAR1_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `WDT_CLEAR1` writer - Clear Watchdog Counter when WDT_CTR1==WDT_MATCH1. In other words WDT_CTR1 divides LFCLK by (WDT_MATCH1+1). 0: Free running counter 1: Clear on match. In this mode, the minimum legal setting of WDT_MATCH1 is 1."]
pub struct WDT_CLEAR1_W<'a> {
    w: &'a mut W,
}
impl<'a> WDT_CLEAR1_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 10)) | ((value as u32 & 0x01) << 10);
        self.w
    }
}
#[doc = "Field `WDT_CASCADE1_2` reader - Cascade Watchdog Counters 1,2. Counter 2 increments the cycle after WDT_CTR1=WDT_MATCH1. It is allowed to cascade all three WDT counters. 0: Independent counters 1: Cascaded counters. When cascading all three counters, WDT_CLEAR1 must be 1."]
pub struct WDT_CASCADE1_2_R(crate::FieldReader<bool, bool>);
impl WDT_CASCADE1_2_R {
    pub(crate) fn new(bits: bool) -> Self {
        WDT_CASCADE1_2_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for WDT_CASCADE1_2_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `WDT_CASCADE1_2` writer - Cascade Watchdog Counters 1,2. Counter 2 increments the cycle after WDT_CTR1=WDT_MATCH1. It is allowed to cascade all three WDT counters. 0: Independent counters 1: Cascaded counters. When cascading all three counters, WDT_CLEAR1 must be 1."]
pub struct WDT_CASCADE1_2_W<'a> {
    w: &'a mut W,
}
impl<'a> WDT_CASCADE1_2_W<'a> {
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
        self.w.bits = (self.w.bits & !(0x01 << 11)) | ((value as u32 & 0x01) << 11);
        self.w
    }
}
#[doc = "Watchdog Counter 2 Mode.\n\nValue on reset: 0"]
#[derive(Clone, Copy, Debug, PartialEq)]
pub enum WDT_MODE2_A {
    #[doc = "0: Free running counter with no interrupt requests"]
    NOTHING = 0,
    #[doc = "1: Free running counter with interrupt request that occurs one LFCLK cycle after the specified bit in CTR2 toggles (see WDT_BITS2)."]
    INT = 1,
}
impl From<WDT_MODE2_A> for bool {
    #[inline(always)]
    fn from(variant: WDT_MODE2_A) -> Self {
        variant as u8 != 0
    }
}
#[doc = "Field `WDT_MODE2` reader - Watchdog Counter 2 Mode."]
pub struct WDT_MODE2_R(crate::FieldReader<bool, WDT_MODE2_A>);
impl WDT_MODE2_R {
    pub(crate) fn new(bits: bool) -> Self {
        WDT_MODE2_R(crate::FieldReader::new(bits))
    }
    #[doc = r"Get enumerated values variant"]
    #[inline(always)]
    pub fn variant(&self) -> WDT_MODE2_A {
        match self.bits {
            false => WDT_MODE2_A::NOTHING,
            true => WDT_MODE2_A::INT,
        }
    }
    #[doc = "Checks if the value of the field is `NOTHING`"]
    #[inline(always)]
    pub fn is_nothing(&self) -> bool {
        **self == WDT_MODE2_A::NOTHING
    }
    #[doc = "Checks if the value of the field is `INT`"]
    #[inline(always)]
    pub fn is_int(&self) -> bool {
        **self == WDT_MODE2_A::INT
    }
}
impl core::ops::Deref for WDT_MODE2_R {
    type Target = crate::FieldReader<bool, WDT_MODE2_A>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `WDT_MODE2` writer - Watchdog Counter 2 Mode."]
pub struct WDT_MODE2_W<'a> {
    w: &'a mut W,
}
impl<'a> WDT_MODE2_W<'a> {
    #[doc = r"Writes `variant` to the field"]
    #[inline(always)]
    pub fn variant(self, variant: WDT_MODE2_A) -> &'a mut W {
        self.bit(variant.into())
    }
    #[doc = "Free running counter with no interrupt requests"]
    #[inline(always)]
    pub fn nothing(self) -> &'a mut W {
        self.variant(WDT_MODE2_A::NOTHING)
    }
    #[doc = "Free running counter with interrupt request that occurs one LFCLK cycle after the specified bit in CTR2 toggles (see WDT_BITS2)."]
    #[inline(always)]
    pub fn int(self) -> &'a mut W {
        self.variant(WDT_MODE2_A::INT)
    }
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
        self.w.bits = (self.w.bits & !(0x01 << 16)) | ((value as u32 & 0x01) << 16);
        self.w
    }
}
#[doc = "Field `WDT_BITS2` reader - Bit to observe for WDT_INT2: 0: Assert after bit0 of WDT_CTR2 toggles (one int every tick) ... 31: Assert after bit31 of WDT_CTR2 toggles (one int every 2^31 ticks)"]
pub struct WDT_BITS2_R(crate::FieldReader<u8, u8>);
impl WDT_BITS2_R {
    pub(crate) fn new(bits: u8) -> Self {
        WDT_BITS2_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for WDT_BITS2_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `WDT_BITS2` writer - Bit to observe for WDT_INT2: 0: Assert after bit0 of WDT_CTR2 toggles (one int every tick) ... 31: Assert after bit31 of WDT_CTR2 toggles (one int every 2^31 ticks)"]
pub struct WDT_BITS2_W<'a> {
    w: &'a mut W,
}
impl<'a> WDT_BITS2_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x1f << 24)) | ((value as u32 & 0x1f) << 24);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:1 - Watchdog Counter Action on Match. Action is taken on the next increment after the values match (WDT_CTR0=WDT_MATCH0)."]
    #[inline(always)]
    pub fn wdt_mode0(&self) -> WDT_MODE0_R {
        WDT_MODE0_R::new((self.bits & 0x03) as u8)
    }
    #[doc = "Bit 2 - Clear Watchdog Counter when WDT_CTR0=WDT_MATCH0. In other words WDT_CTR0 divides LFCLK by (WDT_MATCH0+1). 0: Free running counter 1: Clear on match. In this mode, the minimum legal setting of WDT_MATCH0 is 1."]
    #[inline(always)]
    pub fn wdt_clear0(&self) -> WDT_CLEAR0_R {
        WDT_CLEAR0_R::new(((self.bits >> 2) & 0x01) != 0)
    }
    #[doc = "Bit 3 - Cascade Watchdog Counters 0,1. Counter 1 increments the cycle after WDT_CTR0=WDT_MATCH0. 0: Independent counters 1: Cascaded counters"]
    #[inline(always)]
    pub fn wdt_cascade0_1(&self) -> WDT_CASCADE0_1_R {
        WDT_CASCADE0_1_R::new(((self.bits >> 3) & 0x01) != 0)
    }
    #[doc = "Bits 8:9 - Watchdog Counter Action on Match. Action is taken on the next increment after the values match (WDT_CTR1=WDT_MATCH1)."]
    #[inline(always)]
    pub fn wdt_mode1(&self) -> WDT_MODE1_R {
        WDT_MODE1_R::new(((self.bits >> 8) & 0x03) as u8)
    }
    #[doc = "Bit 10 - Clear Watchdog Counter when WDT_CTR1==WDT_MATCH1. In other words WDT_CTR1 divides LFCLK by (WDT_MATCH1+1). 0: Free running counter 1: Clear on match. In this mode, the minimum legal setting of WDT_MATCH1 is 1."]
    #[inline(always)]
    pub fn wdt_clear1(&self) -> WDT_CLEAR1_R {
        WDT_CLEAR1_R::new(((self.bits >> 10) & 0x01) != 0)
    }
    #[doc = "Bit 11 - Cascade Watchdog Counters 1,2. Counter 2 increments the cycle after WDT_CTR1=WDT_MATCH1. It is allowed to cascade all three WDT counters. 0: Independent counters 1: Cascaded counters. When cascading all three counters, WDT_CLEAR1 must be 1."]
    #[inline(always)]
    pub fn wdt_cascade1_2(&self) -> WDT_CASCADE1_2_R {
        WDT_CASCADE1_2_R::new(((self.bits >> 11) & 0x01) != 0)
    }
    #[doc = "Bit 16 - Watchdog Counter 2 Mode."]
    #[inline(always)]
    pub fn wdt_mode2(&self) -> WDT_MODE2_R {
        WDT_MODE2_R::new(((self.bits >> 16) & 0x01) != 0)
    }
    #[doc = "Bits 24:28 - Bit to observe for WDT_INT2: 0: Assert after bit0 of WDT_CTR2 toggles (one int every tick) ... 31: Assert after bit31 of WDT_CTR2 toggles (one int every 2^31 ticks)"]
    #[inline(always)]
    pub fn wdt_bits2(&self) -> WDT_BITS2_R {
        WDT_BITS2_R::new(((self.bits >> 24) & 0x1f) as u8)
    }
}
impl W {
    #[doc = "Bits 0:1 - Watchdog Counter Action on Match. Action is taken on the next increment after the values match (WDT_CTR0=WDT_MATCH0)."]
    #[inline(always)]
    pub fn wdt_mode0(&mut self) -> WDT_MODE0_W {
        WDT_MODE0_W { w: self }
    }
    #[doc = "Bit 2 - Clear Watchdog Counter when WDT_CTR0=WDT_MATCH0. In other words WDT_CTR0 divides LFCLK by (WDT_MATCH0+1). 0: Free running counter 1: Clear on match. In this mode, the minimum legal setting of WDT_MATCH0 is 1."]
    #[inline(always)]
    pub fn wdt_clear0(&mut self) -> WDT_CLEAR0_W {
        WDT_CLEAR0_W { w: self }
    }
    #[doc = "Bit 3 - Cascade Watchdog Counters 0,1. Counter 1 increments the cycle after WDT_CTR0=WDT_MATCH0. 0: Independent counters 1: Cascaded counters"]
    #[inline(always)]
    pub fn wdt_cascade0_1(&mut self) -> WDT_CASCADE0_1_W {
        WDT_CASCADE0_1_W { w: self }
    }
    #[doc = "Bits 8:9 - Watchdog Counter Action on Match. Action is taken on the next increment after the values match (WDT_CTR1=WDT_MATCH1)."]
    #[inline(always)]
    pub fn wdt_mode1(&mut self) -> WDT_MODE1_W {
        WDT_MODE1_W { w: self }
    }
    #[doc = "Bit 10 - Clear Watchdog Counter when WDT_CTR1==WDT_MATCH1. In other words WDT_CTR1 divides LFCLK by (WDT_MATCH1+1). 0: Free running counter 1: Clear on match. In this mode, the minimum legal setting of WDT_MATCH1 is 1."]
    #[inline(always)]
    pub fn wdt_clear1(&mut self) -> WDT_CLEAR1_W {
        WDT_CLEAR1_W { w: self }
    }
    #[doc = "Bit 11 - Cascade Watchdog Counters 1,2. Counter 2 increments the cycle after WDT_CTR1=WDT_MATCH1. It is allowed to cascade all three WDT counters. 0: Independent counters 1: Cascaded counters. When cascading all three counters, WDT_CLEAR1 must be 1."]
    #[inline(always)]
    pub fn wdt_cascade1_2(&mut self) -> WDT_CASCADE1_2_W {
        WDT_CASCADE1_2_W { w: self }
    }
    #[doc = "Bit 16 - Watchdog Counter 2 Mode."]
    #[inline(always)]
    pub fn wdt_mode2(&mut self) -> WDT_MODE2_W {
        WDT_MODE2_W { w: self }
    }
    #[doc = "Bits 24:28 - Bit to observe for WDT_INT2: 0: Assert after bit0 of WDT_CTR2 toggles (one int every tick) ... 31: Assert after bit31 of WDT_CTR2 toggles (one int every 2^31 ticks)"]
    #[inline(always)]
    pub fn wdt_bits2(&mut self) -> WDT_BITS2_W {
        WDT_BITS2_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Multi-Counter Watchdog Counter Configuration\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [mcwdt_config](index.html) module"]
pub struct MCWDT_CONFIG_SPEC;
impl crate::RegisterSpec for MCWDT_CONFIG_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [mcwdt_config::R](R) reader structure"]
impl crate::Readable for MCWDT_CONFIG_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [mcwdt_config::W](W) writer structure"]
impl crate::Writable for MCWDT_CONFIG_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets MCWDT_CONFIG to value 0"]
impl crate::Resettable for MCWDT_CONFIG_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
