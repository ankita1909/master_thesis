initSidebarItems({"struct":[["DATA_R","Field `DATA` reader - Data read from the RX FIFO. Reading a data frame will NOT remove the data frame from the RX FIFO; i.e. behavior is similar to that of a PEEK operation. This field is used only for debugging purposes. Notes: - Don’t access to this register while RX_FIFO_CTL.CLEAR is ‘1’. - Two stored data may be not valid after CMD.RX_START is set ‘1’. Therefore we recommend software discard those data."],["R","Register `RX_FIFO_RD_SILENT` reader"],["RX_FIFO_RD_SILENT_SPEC","RX FIFO silent read"]]});