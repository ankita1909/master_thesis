initSidebarItems({"struct":[["CLEAR_R","Field `CLEAR` reader - When ‘1’, the RX FIFO and RX_BUF are cleared/invalidated. Invalidation will last for as long as this field is ‘1’. If a quick clear/invalidation is required, the field should be set to ‘1’ and be followed by a set to ‘0’. If a clear/invalidation is required for an extended time period, the field should be set to ‘1’ during the complete time period."],["CLEAR_W","Field `CLEAR` writer - When ‘1’, the RX FIFO and RX_BUF are cleared/invalidated. Invalidation will last for as long as this field is ‘1’. If a quick clear/invalidation is required, the field should be set to ‘1’ and be followed by a set to ‘0’. If a clear/invalidation is required for an extended time period, the field should be set to ‘1’ during the complete time period."],["FREEZE_R","Field `FREEZE` reader - When ‘1’, hardware writes to the RX FIFO have no effect. Freeze will not advance the RX FIFO write pointer.This field is used only for debugging purposes."],["FREEZE_W","Field `FREEZE` writer - When ‘1’, hardware writes to the RX FIFO have no effect. Freeze will not advance the RX FIFO write pointer.This field is used only for debugging purposes."],["R","Register `RX_FIFO_CTL` reader"],["RX_FIFO_CTL_SPEC","RX FIFO control"],["TRIGGER_LEVEL_R","Field `TRIGGER_LEVEL` reader - Trigger level. When the RX FIFO has more entries than the number of this field, a receiver trigger event is generated. Note: software can configure up to 254 in Mono channel enabled (MODE_CTL.PCM_CH_SET = ‘1’ or ‘2’), up to 253 in Stereo channel enabled (MODE_CTL.PCM_CH_SET = ‘3’)."],["TRIGGER_LEVEL_W","Field `TRIGGER_LEVEL` writer - Trigger level. When the RX FIFO has more entries than the number of this field, a receiver trigger event is generated. Note: software can configure up to 254 in Mono channel enabled (MODE_CTL.PCM_CH_SET = ‘1’ or ‘2’), up to 253 in Stereo channel enabled (MODE_CTL.PCM_CH_SET = ‘3’)."],["W","Register `RX_FIFO_CTL` writer"]]});