initSidebarItems({"struct":[["CLEAR_R","Field `CLEAR` reader - When ‘1’, the transmitter FIFO and transmitter shift register are cleared/invalidated. Invalidation will last for as long as this field is ‘1’. If a quick clear/invalidation is required, the field should be set to ‘1’ and be followed by a set to ‘0’. If a clear/invalidation is required for an extended time period, the field should be set to ‘1’ during the complete time period."],["CLEAR_W","Field `CLEAR` writer - When ‘1’, the transmitter FIFO and transmitter shift register are cleared/invalidated. Invalidation will last for as long as this field is ‘1’. If a quick clear/invalidation is required, the field should be set to ‘1’ and be followed by a set to ‘0’. If a clear/invalidation is required for an extended time period, the field should be set to ‘1’ during the complete time period."],["FREEZE_R","Field `FREEZE` reader - When ‘1’, hardware reads from the transmitter FIFO do not remove FIFO entries. Freeze will not advance the TX FIFO read pointer."],["FREEZE_W","Field `FREEZE` writer - When ‘1’, hardware reads from the transmitter FIFO do not remove FIFO entries. Freeze will not advance the TX FIFO read pointer."],["R","Register `TX_FIFO_CTRL` reader"],["TRIGGER_LEVEL_R","Field `TRIGGER_LEVEL` reader - Trigger level. When the transmitter FIFO has less entries than the number of this field, a transmitter trigger event INTR_TX.TRIGGER is generated."],["TRIGGER_LEVEL_W","Field `TRIGGER_LEVEL` writer - Trigger level. When the transmitter FIFO has less entries than the number of this field, a transmitter trigger event INTR_TX.TRIGGER is generated."],["TX_FIFO_CTRL_SPEC","Transmitter FIFO control"],["W","Register `TX_FIFO_CTRL` writer"]]});