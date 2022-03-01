initSidebarItems({"struct":[["EP1DRQ_R","Field `EP1DRQ` reader - This bit indicates that the EP1 packet transfer has normally ended, and processing of the data is required. The DRQ bit is an interrupt cause, and writing ‘0’ is ignored. Clear the DRQ bit by writing ‘1’. ‘0’ : Clears the interrupt cause ‘1’ : Packet transfer normally ended Note : - If automatic buffer transfer mode (DMAE = ‘1’) is not used, ‘1’ must be written to the DRQ bit after data has been written or read to/from the send/receive buffer. Switch the access buffers once the DRQ bit is cleared. That DRQ = ‘0’ may not be read after the DRQ bit is cleared. If the transfer direction is set to OUT, and the DRQ bit is cleared without writing buffer data while the DRQ bit is ‘1’, it implies that 0-byte data is set. If DIR of the Host Endpoint 1 Control Register (HOST_EP1_CTL) is set to ‘1’ at initial settings, the DRQ bit of corresponding Endpoint is set at the same time. Also while the DRQ bit is not set, ‘1’ must not be written."],["EP1DRQ_W","Field `EP1DRQ` writer - This bit indicates that the EP1 packet transfer has normally ended, and processing of the data is required. The DRQ bit is an interrupt cause, and writing ‘0’ is ignored. Clear the DRQ bit by writing ‘1’. ‘0’ : Clears the interrupt cause ‘1’ : Packet transfer normally ended Note : - If automatic buffer transfer mode (DMAE = ‘1’) is not used, ‘1’ must be written to the DRQ bit after data has been written or read to/from the send/receive buffer. Switch the access buffers once the DRQ bit is cleared. That DRQ = ‘0’ may not be read after the DRQ bit is cleared. If the transfer direction is set to OUT, and the DRQ bit is cleared without writing buffer data while the DRQ bit is ‘1’, it implies that 0-byte data is set. If DIR of the Host Endpoint 1 Control Register (HOST_EP1_CTL) is set to ‘1’ at initial settings, the DRQ bit of corresponding Endpoint is set at the same time. Also while the DRQ bit is not set, ‘1’ must not be written."],["EP1SPK_R","Field `EP1SPK` reader - This bit indicates that the data size transferred from the host does not satisfy the maximum packet size (including 0-byte) set by PKS in the Host Endpoint 1 Control Register (HOST_EP1_CTL) when the data has been received successfully. This bit is an interrupt cause, and writing ‘0’ is ignored. Clear it by writing ‘1’. ‘0’ : Received data size satisfies the maximum packet size ‘1’ : Received data size does not satisfy the maximum packet size Note : - The EP1SPK bit is not set during data transfer in the OUT direction."],["EP1SPK_W","Field `EP1SPK` writer - This bit indicates that the data size transferred from the host does not satisfy the maximum packet size (including 0-byte) set by PKS in the Host Endpoint 1 Control Register (HOST_EP1_CTL) when the data has been received successfully. This bit is an interrupt cause, and writing ‘0’ is ignored. Clear it by writing ‘1’. ‘0’ : Received data size satisfies the maximum packet size ‘1’ : Received data size does not satisfy the maximum packet size Note : - The EP1SPK bit is not set during data transfer in the OUT direction."],["EP2DRQ_R","Field `EP2DRQ` reader - This bit indicates that the EP2 packet transfer has normally ended, and processing of the data is required. The DRQ bit is an interrupt cause, and writing ‘0’ is ignored. Clear the DRQ bit by writing ‘1’. ‘0’ : Clears the interrupt cause ‘1’ : Packet transfer normally ended Note : - If packet transfer mode (DMAE = ‘1’) is not used, ‘1’ must be written to the DRQ bit after data has been written or read to/from the send/receive buffer. Switch the access buffers once the DRQ bit is cleared. That DRQ = ‘0’ may not be read after the DRQ bit is cleared. If the transfer direction is set to OUT, and the DRQ bit is cleared without writing buffer data while the DRQ bit is ‘1’, it implies that 0-byte data is set. If DIR of the Host Endpoint 2 Control Register (HOST_EP2_CTL) is set to ‘1’ at initial settings, the DRQ bit of corresponding Endpoint is set at the same time. Also while the DRQ bit is not set, ‘1’ must not be written."],["EP2DRQ_W","Field `EP2DRQ` writer - This bit indicates that the EP2 packet transfer has normally ended, and processing of the data is required. The DRQ bit is an interrupt cause, and writing ‘0’ is ignored. Clear the DRQ bit by writing ‘1’. ‘0’ : Clears the interrupt cause ‘1’ : Packet transfer normally ended Note : - If packet transfer mode (DMAE = ‘1’) is not used, ‘1’ must be written to the DRQ bit after data has been written or read to/from the send/receive buffer. Switch the access buffers once the DRQ bit is cleared. That DRQ = ‘0’ may not be read after the DRQ bit is cleared. If the transfer direction is set to OUT, and the DRQ bit is cleared without writing buffer data while the DRQ bit is ‘1’, it implies that 0-byte data is set. If DIR of the Host Endpoint 2 Control Register (HOST_EP2_CTL) is set to ‘1’ at initial settings, the DRQ bit of corresponding Endpoint is set at the same time. Also while the DRQ bit is not set, ‘1’ must not be written."],["EP2SPK_R","Field `EP2SPK` reader - This bit indicates that the data size transferred from the host does not satisfy the maximum packet size (including 0-byte) set by PKS1 in the Host Endpoint 2 Control Register (HOST_EP2_CTL) when the data has been received successfully. This bit is an interrupt cause, and writing ‘0’ is ignored. Clear it by writing ‘1’. ‘0’ : Received data size satisfies the maximum packet size ‘1’ : Received data size does not satisfy the maximum packet size Note : - The SPK bit is not set during data transfer in the OUT direction."],["EP2SPK_W","Field `EP2SPK` writer - This bit indicates that the data size transferred from the host does not satisfy the maximum packet size (including 0-byte) set by PKS1 in the Host Endpoint 2 Control Register (HOST_EP2_CTL) when the data has been received successfully. This bit is an interrupt cause, and writing ‘0’ is ignored. Clear it by writing ‘1’. ‘0’ : Received data size satisfies the maximum packet size ‘1’ : Received data size does not satisfy the maximum packet size Note : - The SPK bit is not set during data transfer in the OUT direction."],["INTR_HOST_EP_SPEC","Interrupt USB Host Endpoint Register"],["R","Register `INTR_HOST_EP` reader"],["W","Register `INTR_HOST_EP` writer"]]});