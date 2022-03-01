#[doc = "Register `CQTERRI` reader"]
pub struct R(crate::R<CQTERRI_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<CQTERRI_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<CQTERRI_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<CQTERRI_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Field `RESP_ERR_CMD_INDX` reader - This field captures the index of the command that was executed on the command line when the error occurred."]
pub struct RESP_ERR_CMD_INDX_R(crate::FieldReader<u8, u8>);
impl RESP_ERR_CMD_INDX_R {
    pub(crate) fn new(bits: u8) -> Self {
        RESP_ERR_CMD_INDX_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RESP_ERR_CMD_INDX_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `RESP_ERR_TASKID` reader - This field captures the ID of the task which was executed on the command line when the error occurred."]
pub struct RESP_ERR_TASKID_R(crate::FieldReader<u8, u8>);
impl RESP_ERR_TASKID_R {
    pub(crate) fn new(bits: u8) -> Self {
        RESP_ERR_TASKID_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RESP_ERR_TASKID_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `RESP_ERR_FIELDS_VALID` reader - This bit is updated when an error is detected while a command transaction was in progress. Values: - 0x1 (SET): Response-related error is detected. Check contents of RESP_ERR_TASKID and RESP_ERR_CMD_INDX fields - 0x0 (NOT_SET): Ignore contents of RESP_ERR_TASKID and RESP_ERR_CMD_INDX"]
pub struct RESP_ERR_FIELDS_VALID_R(crate::FieldReader<bool, bool>);
impl RESP_ERR_FIELDS_VALID_R {
    pub(crate) fn new(bits: bool) -> Self {
        RESP_ERR_FIELDS_VALID_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for RESP_ERR_FIELDS_VALID_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `TRANS_ERR_CMD_INDX` reader - This field captures the index of the command that was executed and whose data transfer has errors."]
pub struct TRANS_ERR_CMD_INDX_R(crate::FieldReader<u8, u8>);
impl TRANS_ERR_CMD_INDX_R {
    pub(crate) fn new(bits: u8) -> Self {
        TRANS_ERR_CMD_INDX_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for TRANS_ERR_CMD_INDX_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `TRANS_ERR_TASKID` reader - This field captures the ID of the task that was executed and whose data transfer has errors."]
pub struct TRANS_ERR_TASKID_R(crate::FieldReader<u8, u8>);
impl TRANS_ERR_TASKID_R {
    pub(crate) fn new(bits: u8) -> Self {
        TRANS_ERR_TASKID_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for TRANS_ERR_TASKID_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `TRANS_ERR_FIELDS_VALID` reader - This bit is updated when an error is detected while a data transfer transaction was in progress. Values: - 0x1 (SET): data transfer related error detected. Check contents of TRANS_ERR_TASKID and TRANS_ERR_CMD_INDX fields - 0x0 (NOT_SET): Ignore contents of TRANS_ERR_TASKID and TRANS_ERR_CMD_INDX"]
pub struct TRANS_ERR_FIELDS_VALID_R(crate::FieldReader<bool, bool>);
impl TRANS_ERR_FIELDS_VALID_R {
    pub(crate) fn new(bits: bool) -> Self {
        TRANS_ERR_FIELDS_VALID_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for TRANS_ERR_FIELDS_VALID_R {
    type Target = crate::FieldReader<bool, bool>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl R {
    #[doc = "Bits 0:5 - This field captures the index of the command that was executed on the command line when the error occurred."]
    #[inline(always)]
    pub fn resp_err_cmd_indx(&self) -> RESP_ERR_CMD_INDX_R {
        RESP_ERR_CMD_INDX_R::new((self.bits & 0x3f) as u8)
    }
    #[doc = "Bits 8:12 - This field captures the ID of the task which was executed on the command line when the error occurred."]
    #[inline(always)]
    pub fn resp_err_taskid(&self) -> RESP_ERR_TASKID_R {
        RESP_ERR_TASKID_R::new(((self.bits >> 8) & 0x1f) as u8)
    }
    #[doc = "Bit 15 - This bit is updated when an error is detected while a command transaction was in progress. Values: - 0x1 (SET): Response-related error is detected. Check contents of RESP_ERR_TASKID and RESP_ERR_CMD_INDX fields - 0x0 (NOT_SET): Ignore contents of RESP_ERR_TASKID and RESP_ERR_CMD_INDX"]
    #[inline(always)]
    pub fn resp_err_fields_valid(&self) -> RESP_ERR_FIELDS_VALID_R {
        RESP_ERR_FIELDS_VALID_R::new(((self.bits >> 15) & 0x01) != 0)
    }
    #[doc = "Bits 16:21 - This field captures the index of the command that was executed and whose data transfer has errors."]
    #[inline(always)]
    pub fn trans_err_cmd_indx(&self) -> TRANS_ERR_CMD_INDX_R {
        TRANS_ERR_CMD_INDX_R::new(((self.bits >> 16) & 0x3f) as u8)
    }
    #[doc = "Bits 24:28 - This field captures the ID of the task that was executed and whose data transfer has errors."]
    #[inline(always)]
    pub fn trans_err_taskid(&self) -> TRANS_ERR_TASKID_R {
        TRANS_ERR_TASKID_R::new(((self.bits >> 24) & 0x1f) as u8)
    }
    #[doc = "Bit 31 - This bit is updated when an error is detected while a data transfer transaction was in progress. Values: - 0x1 (SET): data transfer related error detected. Check contents of TRANS_ERR_TASKID and TRANS_ERR_CMD_INDX fields - 0x0 (NOT_SET): Ignore contents of TRANS_ERR_TASKID and TRANS_ERR_CMD_INDX"]
    #[inline(always)]
    pub fn trans_err_fields_valid(&self) -> TRANS_ERR_FIELDS_VALID_R {
        TRANS_ERR_FIELDS_VALID_R::new(((self.bits >> 31) & 0x01) != 0)
    }
}
#[doc = "CQ Task Error Information register\n\nThis register you can [`read`](crate::generic::Reg::read). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [cqterri](index.html) module"]
pub struct CQTERRI_SPEC;
impl crate::RegisterSpec for CQTERRI_SPEC {
    type Ux = u32;
}
#[doc = "`read()` method returns [cqterri::R](R) reader structure"]
impl crate::Readable for CQTERRI_SPEC {
    type Reader = R;
}
#[doc = "`reset()` method sets CQTERRI to value 0"]
impl crate::Resettable for CQTERRI_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
