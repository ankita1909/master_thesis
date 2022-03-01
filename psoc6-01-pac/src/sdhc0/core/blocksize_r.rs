#[doc = "Register `BLOCKSIZE_R` reader"]
pub struct R(crate::R<BLOCKSIZE_R_SPEC>);
impl core::ops::Deref for R {
    type Target = crate::R<BLOCKSIZE_R_SPEC>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
impl From<crate::R<BLOCKSIZE_R_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<BLOCKSIZE_R_SPEC>) -> Self {
        R(reader)
    }
}
#[doc = "Register `BLOCKSIZE_R` writer"]
pub struct W(crate::W<BLOCKSIZE_R_SPEC>);
impl core::ops::Deref for W {
    type Target = crate::W<BLOCKSIZE_R_SPEC>;
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
impl From<crate::W<BLOCKSIZE_R_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<BLOCKSIZE_R_SPEC>) -> Self {
        W(writer)
    }
}
#[doc = "Field `XFER_BLOCK_SIZE` reader - Transfer Block Size These bits specify the block size of data transfers. In case of memory, it is set to 512 bytes. It can be accessed only if no transaction is executing. Read operations during transfers may return an invalid value, and write operations are ignored. Following are the values for XFER_BLOCK_SIZE: - 0x1: 1 byte - 0x2: 2 bytes - 0x3: 3 bytes - ...... - 0x1FF: 511 byte - 0x200: 512 bytes - ...... - 0x800: 2048 bytes Note: This register must be programmed with a non-zero value for data transfer."]
pub struct XFER_BLOCK_SIZE_R(crate::FieldReader<u16, u16>);
impl XFER_BLOCK_SIZE_R {
    pub(crate) fn new(bits: u16) -> Self {
        XFER_BLOCK_SIZE_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for XFER_BLOCK_SIZE_R {
    type Target = crate::FieldReader<u16, u16>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `XFER_BLOCK_SIZE` writer - Transfer Block Size These bits specify the block size of data transfers. In case of memory, it is set to 512 bytes. It can be accessed only if no transaction is executing. Read operations during transfers may return an invalid value, and write operations are ignored. Following are the values for XFER_BLOCK_SIZE: - 0x1: 1 byte - 0x2: 2 bytes - 0x3: 3 bytes - ...... - 0x1FF: 511 byte - 0x200: 512 bytes - ...... - 0x800: 2048 bytes Note: This register must be programmed with a non-zero value for data transfer."]
pub struct XFER_BLOCK_SIZE_W<'a> {
    w: &'a mut W,
}
impl<'a> XFER_BLOCK_SIZE_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u16) -> &'a mut W {
        self.w.bits = (self.w.bits & !0x0fff) | (value as u16 & 0x0fff);
        self.w
    }
}
#[doc = "Field `SDMA_BUF_BDARY` reader - SDMA Buffer Boundary These bits specify the size of contiguous buffer in system memory. The SDMA transfer waits at every boundary specified by these fields and the Host Controller generates the DMA interrupt to request the Host Driver to update the SDMA System Address register. Values: - 0x0 (BYTES_4K): 4K bytes SDMA Buffer Boundary - 0x1 (BYTES_8K): 8K bytes SDMA Buffer Boundary - 0x2 (BYTES_16K): 16K bytes SDMA Buffer Boundary - 0x3 (BYTES_32K): 32K bytes SDMA Buffer Boundary - 0x4 (BYTES_64K): 64K bytes SDMA Buffer Boundary - 0x5 (BYTES_128K): 128K bytes SDMA Buffer Boundary - 0x6 (BYTES_256K): 256K bytes SDMA Buffer Boundary - 0x7 (BYTES_512K): 512K bytes SDMA Buffer Boundary"]
pub struct SDMA_BUF_BDARY_R(crate::FieldReader<u8, u8>);
impl SDMA_BUF_BDARY_R {
    pub(crate) fn new(bits: u8) -> Self {
        SDMA_BUF_BDARY_R(crate::FieldReader::new(bits))
    }
}
impl core::ops::Deref for SDMA_BUF_BDARY_R {
    type Target = crate::FieldReader<u8, u8>;
    #[inline(always)]
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}
#[doc = "Field `SDMA_BUF_BDARY` writer - SDMA Buffer Boundary These bits specify the size of contiguous buffer in system memory. The SDMA transfer waits at every boundary specified by these fields and the Host Controller generates the DMA interrupt to request the Host Driver to update the SDMA System Address register. Values: - 0x0 (BYTES_4K): 4K bytes SDMA Buffer Boundary - 0x1 (BYTES_8K): 8K bytes SDMA Buffer Boundary - 0x2 (BYTES_16K): 16K bytes SDMA Buffer Boundary - 0x3 (BYTES_32K): 32K bytes SDMA Buffer Boundary - 0x4 (BYTES_64K): 64K bytes SDMA Buffer Boundary - 0x5 (BYTES_128K): 128K bytes SDMA Buffer Boundary - 0x6 (BYTES_256K): 256K bytes SDMA Buffer Boundary - 0x7 (BYTES_512K): 512K bytes SDMA Buffer Boundary"]
pub struct SDMA_BUF_BDARY_W<'a> {
    w: &'a mut W,
}
impl<'a> SDMA_BUF_BDARY_W<'a> {
    #[doc = r"Writes raw bits to the field"]
    #[inline(always)]
    pub unsafe fn bits(self, value: u8) -> &'a mut W {
        self.w.bits = (self.w.bits & !(0x07 << 12)) | ((value as u16 & 0x07) << 12);
        self.w
    }
}
impl R {
    #[doc = "Bits 0:11 - Transfer Block Size These bits specify the block size of data transfers. In case of memory, it is set to 512 bytes. It can be accessed only if no transaction is executing. Read operations during transfers may return an invalid value, and write operations are ignored. Following are the values for XFER_BLOCK_SIZE: - 0x1: 1 byte - 0x2: 2 bytes - 0x3: 3 bytes - ...... - 0x1FF: 511 byte - 0x200: 512 bytes - ...... - 0x800: 2048 bytes Note: This register must be programmed with a non-zero value for data transfer."]
    #[inline(always)]
    pub fn xfer_block_size(&self) -> XFER_BLOCK_SIZE_R {
        XFER_BLOCK_SIZE_R::new((self.bits & 0x0fff) as u16)
    }
    #[doc = "Bits 12:14 - SDMA Buffer Boundary These bits specify the size of contiguous buffer in system memory. The SDMA transfer waits at every boundary specified by these fields and the Host Controller generates the DMA interrupt to request the Host Driver to update the SDMA System Address register. Values: - 0x0 (BYTES_4K): 4K bytes SDMA Buffer Boundary - 0x1 (BYTES_8K): 8K bytes SDMA Buffer Boundary - 0x2 (BYTES_16K): 16K bytes SDMA Buffer Boundary - 0x3 (BYTES_32K): 32K bytes SDMA Buffer Boundary - 0x4 (BYTES_64K): 64K bytes SDMA Buffer Boundary - 0x5 (BYTES_128K): 128K bytes SDMA Buffer Boundary - 0x6 (BYTES_256K): 256K bytes SDMA Buffer Boundary - 0x7 (BYTES_512K): 512K bytes SDMA Buffer Boundary"]
    #[inline(always)]
    pub fn sdma_buf_bdary(&self) -> SDMA_BUF_BDARY_R {
        SDMA_BUF_BDARY_R::new(((self.bits >> 12) & 0x07) as u8)
    }
}
impl W {
    #[doc = "Bits 0:11 - Transfer Block Size These bits specify the block size of data transfers. In case of memory, it is set to 512 bytes. It can be accessed only if no transaction is executing. Read operations during transfers may return an invalid value, and write operations are ignored. Following are the values for XFER_BLOCK_SIZE: - 0x1: 1 byte - 0x2: 2 bytes - 0x3: 3 bytes - ...... - 0x1FF: 511 byte - 0x200: 512 bytes - ...... - 0x800: 2048 bytes Note: This register must be programmed with a non-zero value for data transfer."]
    #[inline(always)]
    pub fn xfer_block_size(&mut self) -> XFER_BLOCK_SIZE_W {
        XFER_BLOCK_SIZE_W { w: self }
    }
    #[doc = "Bits 12:14 - SDMA Buffer Boundary These bits specify the size of contiguous buffer in system memory. The SDMA transfer waits at every boundary specified by these fields and the Host Controller generates the DMA interrupt to request the Host Driver to update the SDMA System Address register. Values: - 0x0 (BYTES_4K): 4K bytes SDMA Buffer Boundary - 0x1 (BYTES_8K): 8K bytes SDMA Buffer Boundary - 0x2 (BYTES_16K): 16K bytes SDMA Buffer Boundary - 0x3 (BYTES_32K): 32K bytes SDMA Buffer Boundary - 0x4 (BYTES_64K): 64K bytes SDMA Buffer Boundary - 0x5 (BYTES_128K): 128K bytes SDMA Buffer Boundary - 0x6 (BYTES_256K): 256K bytes SDMA Buffer Boundary - 0x7 (BYTES_512K): 512K bytes SDMA Buffer Boundary"]
    #[inline(always)]
    pub fn sdma_buf_bdary(&mut self) -> SDMA_BUF_BDARY_W {
        SDMA_BUF_BDARY_W { w: self }
    }
    #[doc = "Writes raw bits to the register."]
    #[inline(always)]
    pub unsafe fn bits(&mut self, bits: u16) -> &mut Self {
        self.0.bits(bits);
        self
    }
}
#[doc = "Block Size register\n\nThis register you can [`read`](crate::generic::Reg::read), [`write_with_zero`](crate::generic::Reg::write_with_zero), [`reset`](crate::generic::Reg::reset), [`write`](crate::generic::Reg::write), [`modify`](crate::generic::Reg::modify). See [API](https://docs.rs/svd2rust/#read--modify--write-api).\n\nFor information about available fields see [blocksize_r](index.html) module"]
pub struct BLOCKSIZE_R_SPEC;
impl crate::RegisterSpec for BLOCKSIZE_R_SPEC {
    type Ux = u16;
}
#[doc = "`read()` method returns [blocksize_r::R](R) reader structure"]
impl crate::Readable for BLOCKSIZE_R_SPEC {
    type Reader = R;
}
#[doc = "`write(|w| ..)` method takes [blocksize_r::W](W) writer structure"]
impl crate::Writable for BLOCKSIZE_R_SPEC {
    type Writer = W;
}
#[doc = "`reset()` method sets BLOCKSIZE_R to value 0"]
impl crate::Resettable for BLOCKSIZE_R_SPEC {
    #[inline(always)]
    fn reset_value() -> Self::Ux {
        0
    }
}
