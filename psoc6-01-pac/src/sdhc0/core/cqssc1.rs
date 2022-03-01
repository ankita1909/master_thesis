#[doc = "Register `CQSSC1` reader"]
pub struct R(crate::R<CQSSC1_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CQSSC1_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CQSSC1_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CQSSC1_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `CQSSC1` writer"]
pub struct W(crate::W<CQSSC1_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<CQSSC1_SPEC>;
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
impl From<crate::W<CQSSC1_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<CQSSC1_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `SQSCMD_IDLE_TMR` reader - This field configures the polling period to be used when using periodic SEND_QUEUE_STATUS (CMD13) polling. Periodic polling is used when tasks are pending in the device, but no data transfer is in progress. When a SEND_QUEUE_STATUS response indicates that no task is ready for execution, CQE counts the configured time until it issues the next SEND_QUEUE_STATUS. Timer units are clock periods of the clock whose frequency is specified in the Internal Timer Clock Frequency field CQCAP register. The minimum value is 0001h (1 clock period) and the maximum value is FFFFh (65535 clock periods). For example, a CQCAP field value of 0 indicates a 19.2 MHz clock frequency (period = 52.08 ns). If the setting in CQSSC1.CIT is 1000h, the calculated polling period is 4096*52.08 ns= 213.33 ns. Should be programmed only when CQCFG.CQ_EN is '0'."]
pub struct SQSCMD_IDLE_TMR_R(crate::FieldReader<u16, u16>);
impl SQSCMD_IDLE_TMR_R {
    pub(crate) fn new(bits: u16) -> Self {
        SQSCMD_IDLE_TMR_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SQSCMD_IDLE_TMR_R {
    type Target = crate::FieldReader<u16, u16>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SQSCMD_IDLE_TMR` writer - This field configures the polling period to be used when using periodic SEND_QUEUE_STATUS (CMD13) polling. Periodic polling is used when tasks are pending in the device, but no data transfer is in progress. When a SEND_QUEUE_STATUS response indicates that no task is ready for execution, CQE counts the configured time until it issues the next SEND_QUEUE_STATUS. Timer units are clock periods of the clock whose frequency is specified in the Internal Timer Clock Frequency field CQCAP register. The minimum value is 0001h (1 clock period) and the maximum value is FFFFh (65535 clock periods). For example, a CQCAP field value of 0 indicates a 19.2 MHz clock frequency (period = 52.08 ns). If the setting in CQSSC1.CIT is 1000h, the calculated polling period is 4096*52.08 ns= 213.33 ns. Should be programmed only when CQCFG.CQ_EN is '0'."]
pub struct SQSCMD_IDLE_TMR_W<'a> {
    w: &'a mut W,
}
impl<'a> SQSCMD_IDLE_TMR_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u16) -> &'a mut W {
        self.w.bits = (self.w.bits & !0xffff) | (value as u32 & 0xffff);
        self.w
    }
}
#[doc = "Field `SQSCMD_BLK_CNT` reader - This field indicates when SQS CMD is sent while data transfer is in progress. A value of 'n' indicates that CQE sends status command on the CMD line, during the transfer of data block BLOCK_CNTn, on the data lines, where BLOCK_CNT is the number of blocks in the current transaction. - 0x0: SEND_QUEUE_STATUS (CMD13) command is not sent during the transaction. Instead, it is sent only when the data lines are idle. - 0x1: SEND_QUEUE_STATUS command is to be sent during the last block of the transaction. - 0x2: SEND_QUEUE_STATUS command when last 2 blocks are pending. - 0x3: SEND_QUEUE_STATUS command when last 3 blocks are pending. - ........ - 0xf: SEND_QUEUE_STATUS command when last 15 blocks are pending. Should be programmed only when CQCFG.CQ_EN is '0'"]
pub struct SQSCMD_BLK_CNT_R(crate::FieldReader<u8, u8>);
impl SQSCMD_BLK_CNT_R {
    pub(crate) fn new(bits: u8) -> Self {
        SQSCMD_BLK_CNT_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SQSCMD_BLK_CNT_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SQSCMD_BLK_CNT` writer - This field indicates when SQS CMD is sent while data transfer is in progress. A value of 'n' indicates that CQE sends status command on the CMD line, during the transfer of data block BLOCK_CNTn, on the data lines, where BLOCK_CNT is the number of blocks in the current transaction. - 0x0: SEND_QUEUE_STATUS (CMD13) command is not sent during the transaction. Instead, it is sent only when the data lines are idle. - 0x1: SEND_QUEUE_STATUS command is to be sent during the last block of the transaction. - 0x2: SEND_QUEUE_STATUS command when last 2 blocks are pending. - 0x3: SEND_QUEUE_STATUS command when last 3 blocks are pending. - ........ - 0xf: SEND_QUEUE_STATUS command when last 15 blocks are pending. Should be programmed only when CQCFG.CQ_EN is '0'"]
pub struct SQSCMD_BLK_CNT_W<'a> {
    w: &'a mut W,
}
impl<'a> SQSCMD_BLK_CNT_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x0f << 16)) | ((value as u32 & 0x0f) << 16);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:15 - This field configures the polling period to be used when using periodic SEND_QUEUE_STATUS (CMD13) polling. Periodic polling is used when tasks are pending in the device, but no data transfer is in progress. When a SEND_QUEUE_STATUS response indicates that no task is ready for execution, CQE counts the configured time until it issues the next SEND_QUEUE_STATUS. Timer units are clock periods of the clock whose frequency is specified in the Internal Timer Clock Frequency field CQCAP register. The minimum value is 0001h (1 clock period) and the maximum value is FFFFh (65535 clock periods). For example, a CQCAP field value of 0 indicates a 19.2 MHz clock frequency (period = 52.08 ns). If the setting in CQSSC1.CIT is 1000h, the calculated polling period is 4096*52.08 ns= 213.33 ns. Should be programmed only when CQCFG.CQ_EN is '0'."]
    #[inline(always)]
    pub fn sqscmd_idle_tmr(&self) -> SQSCMD_IDLE_TMR_R {
        SQSCMD_IDLE_TMR_R::new((self.bits & 0xffff) as u16)
    }
    #[doc = "Bits 16:19 - This field indicates when SQS CMD is sent while data transfer is in progress. A value of 'n' indicates that CQE sends status command on the CMD line, during the transfer of data block BLOCK_CNTn, on the data lines, where BLOCK_CNT is the number of blocks in the current transaction. - 0x0: SEND_QUEUE_STATUS (CMD13) command is not sent during the transaction. Instead, it is sent only when the data lines are idle. - 0x1: SEND_QUEUE_STATUS command is to be sent during the last block of the transaction. - 0x2: SEND_QUEUE_STATUS command when last 2 blocks are pending. - 0x3: SEND_QUEUE_STATUS command when last 3 blocks are pending. - ........ - 0xf: SEND_QUEUE_STATUS command when last 15 blocks are pending. Should be programmed only when CQCFG.CQ_EN is '0'"]
    #[inline(always)]
    pub fn sqscmd_blk_cnt(&self) -> SQSCMD_BLK_CNT_R {
        SQSCMD_BLK_CNT_R::new(((self.bits >> 16) & 0x0f) as u8)
    }
}
impl W {
    #[doc = "Bits 0:15 - This field configures the polling period to be used when using periodic SEND_QUEUE_STATUS (CMD13) polling. Periodic polling is used when tasks are pending in the device, but no data transfer is in progress. When a SEND_QUEUE_STATUS response indicates that no task is ready for execution, CQE counts the configured time until it issues the next SEND_QUEUE_STATUS. Timer units are clock periods of the clock whose frequency is specified in the Internal Timer Clock Frequency field CQCAP register. The minimum value is 0001h (1 clock period) and the maximum value is FFFFh (65535 clock periods). For example, a CQCAP field value of 0 indicates a 19.2 MHz clock frequency (period = 52.08 ns). If the setting in CQSSC1.CIT is 1000h, the calculated polling period is 4096*52.08 ns= 213.33 ns. Should be programmed only when CQCFG.CQ_EN is '0'."]
    #[inline(always)]
    pub fn sqscmd_idle_tmr(&mut self) -> SQSCMD_IDLE_TMR_W {
        SQSCMD_IDLE_TMR_W { w: self }
    }
    #[doc = "Bits 16:19 - This field indicates when SQS CMD is sent while data transfer is in progress. A value of 'n' indicates that CQE sends status command on the CMD line, during the transfer of data block BLOCK_CNTn, on the data lines, where BLOCK_CNT is the number of blocks in the current transaction. - 0x0: SEND_QUEUE_STATUS (CMD13) command is not sent during the transaction. Instead, it is sent only when the data lines are idle. - 0x1: SEND_QUEUE_STATUS command is to be sent during the last block of the transaction. - 0x2: SEND_QUEUE_STATUS command when last 2 blocks are pending. - 0x3: SEND_QUEUE_STATUS command when last 3 blocks are pending. - ........ - 0xf: SEND_QUEUE_STATUS command when last 15 blocks are pending. Should be programmed only when CQCFG.CQ_EN is '0'"]
    #[inline(always)]
    pub fn sqscmd_blk_cnt(&mut self) -> SQSCMD_BLK_CNT_W {
        SQSCMD_BLK_CNT_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "CQ Send Status Configuration 1 register\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [cqssc1](index.html) module"]
pub struct CQSSC1_SPEC;
impl crate::RegisterSpec for CQSSC1_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [cqssc1::R](R) reader structure"]
impl crate::Readable for CQSSC1_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [cqssc1::W](W) writer structure"]
impl crate::Writable for CQSSC1_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets CQSSC1 to value 0x0001_1000"]
impl crate::Resettable for CQSSC1_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0x0001_1000
    }
}
