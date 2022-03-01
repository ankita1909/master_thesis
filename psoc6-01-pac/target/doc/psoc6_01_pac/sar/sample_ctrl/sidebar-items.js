initSidebarItems({"enum":[["AVG_MODE_A","Averaging mode, in DSI mode this bit is ignored and only AccuNDump mode is available."],["DIFFERENTIAL_SIGNED_A","Output data from a differential conversion as a signed value when DIFFERENTIAL_EN or NEG_ADDR_EN is set to 1 If AVG_MODE = 1 (Interleaved averaging), then DIFFERENTIAL_SIGNED must be configured identically to SINGLE_ENDED_SIGNED."],["SINGLE_ENDED_SIGNED_A","Output data from a single ended conversion as a signed value If AVG_MODE = 1 (Interleaved averaging), then SINGLE_ENDED_SIGNED must be configured identically to DIFFERENTIAL_SIGNED."],["UAB_SCAN_MODE_A","Select whether UABs are scheduled or unscheduled. When no UAB is scanned this selection is ignored."]],"struct":[["AVG_CNT_R","Field `AVG_CNT` reader - Averaging Count for channels that have averaging enabled (AVG_EN). A channel will be sampled (1<<(AVG_CNT+1)) = [2..256] times. - In ACCUNDUMP mode (1st order accumulate and dump filter) a channel will be sampled back to back, the average result is calculated and stored and then the next enabled channel is sampled. If shifting is not enabled (AVG_SHIFT=0) then the result is forced to shift right so that is fits in 16 bits, so right shift is done by max(0,AVG_CNT-3). - In INTERLEAVED mode one sample is taken per triggered scan, only in the scan where the final averaging count is reached a valid average is calculated and stored in the RESULT register (by definition the same scan for all the channels that have averaging enabled). In all other scans the RESULT register for averaged channels will have an invalid result and the intermediate accumulated value is stored in the 16-bit WORK register. In this mode make sure that the averaging count is low enough to ensure that the intermediate value does not exceed 16-bits otherwise the MSBs will be lost. So for a 12-bit resolution the averaging count should be set to 16 or less (AVG_CNT=<3)."],["AVG_CNT_W","Field `AVG_CNT` writer - Averaging Count for channels that have averaging enabled (AVG_EN). A channel will be sampled (1<<(AVG_CNT+1)) = [2..256] times. - In ACCUNDUMP mode (1st order accumulate and dump filter) a channel will be sampled back to back, the average result is calculated and stored and then the next enabled channel is sampled. If shifting is not enabled (AVG_SHIFT=0) then the result is forced to shift right so that is fits in 16 bits, so right shift is done by max(0,AVG_CNT-3). - In INTERLEAVED mode one sample is taken per triggered scan, only in the scan where the final averaging count is reached a valid average is calculated and stored in the RESULT register (by definition the same scan for all the channels that have averaging enabled). In all other scans the RESULT register for averaged channels will have an invalid result and the intermediate accumulated value is stored in the 16-bit WORK register. In this mode make sure that the averaging count is low enough to ensure that the intermediate value does not exceed 16-bits otherwise the MSBs will be lost. So for a 12-bit resolution the averaging count should be set to 16 or less (AVG_CNT=<3)."],["AVG_MODE_R","Field `AVG_MODE` reader - Averaging mode, in DSI mode this bit is ignored and only AccuNDump mode is available."],["AVG_MODE_W","Field `AVG_MODE` writer - Averaging mode, in DSI mode this bit is ignored and only AccuNDump mode is available."],["AVG_SHIFT_R","Field `AVG_SHIFT` reader - Averaging shifting: after averaging the result is shifted right to fit in 12 bits."],["AVG_SHIFT_W","Field `AVG_SHIFT` writer - Averaging shifting: after averaging the result is shifted right to fit in 12 bits."],["CONTINUOUS_R","Field `CONTINUOUS` reader - - 0: Wait for next FW_TRIGGER (one shot) or hardware trigger (e.g. from TPWM for periodic triggering) before scanning enabled channels. - 1: Continuously scan enabled channels, ignore triggers."],["CONTINUOUS_W","Field `CONTINUOUS` writer - - 0: Wait for next FW_TRIGGER (one shot) or hardware trigger (e.g. from TPWM for periodic triggering) before scanning enabled channels. - 1: Continuously scan enabled channels, ignore triggers."],["DIFFERENTIAL_SIGNED_R","Field `DIFFERENTIAL_SIGNED` reader - Output data from a differential conversion as a signed value when DIFFERENTIAL_EN or NEG_ADDR_EN is set to 1 If AVG_MODE = 1 (Interleaved averaging), then DIFFERENTIAL_SIGNED must be configured identically to SINGLE_ENDED_SIGNED."],["DIFFERENTIAL_SIGNED_W","Field `DIFFERENTIAL_SIGNED` writer - Output data from a differential conversion as a signed value when DIFFERENTIAL_EN or NEG_ADDR_EN is set to 1 If AVG_MODE = 1 (Interleaved averaging), then DIFFERENTIAL_SIGNED must be configured identically to SINGLE_ENDED_SIGNED."],["DSI_SYNC_TRIGGER_R","Field `DSI_SYNC_TRIGGER` reader - - 0: bypass clock domain synchronization of the trigger signal. - 1: synchronize the trigger signal to the SAR clock domain, if needed an edge detect is done in the peripheral clock domain."],["DSI_SYNC_TRIGGER_W","Field `DSI_SYNC_TRIGGER` writer - - 0: bypass clock domain synchronization of the trigger signal. - 1: synchronize the trigger signal to the SAR clock domain, if needed an edge detect is done in the peripheral clock domain."],["DSI_TRIGGER_EN_R","Field `DSI_TRIGGER_EN` reader - - 0: firmware trigger only: disable hardware trigger tr_sar_in. - 1: enable hardware trigger tr_sar_in (e.g. from TCPWM, GPIO or UDB)."],["DSI_TRIGGER_EN_W","Field `DSI_TRIGGER_EN` writer - - 0: firmware trigger only: disable hardware trigger tr_sar_in. - 1: enable hardware trigger tr_sar_in (e.g. from TCPWM, GPIO or UDB)."],["DSI_TRIGGER_LEVEL_R","Field `DSI_TRIGGER_LEVEL` reader - - 0: trigger signal is a pulse input, a positive edge detected on the trigger signal triggers a new scan. - 1: trigger signal is a level input, as long as the trigger signal remains high the SAR will do continuous scans."],["DSI_TRIGGER_LEVEL_W","Field `DSI_TRIGGER_LEVEL` writer - - 0: trigger signal is a pulse input, a positive edge detected on the trigger signal triggers a new scan. - 1: trigger signal is a level input, as long as the trigger signal remains high the SAR will do continuous scans."],["EOS_DSI_OUT_EN_R","Field `EOS_DSI_OUT_EN` reader - Enable to output EOS_INTR to DSI. When enabled each time EOS_INTR is set by the hardware also a trigger pulse is send on the tr_sar_out signal."],["EOS_DSI_OUT_EN_W","Field `EOS_DSI_OUT_EN` writer - Enable to output EOS_INTR to DSI. When enabled each time EOS_INTR is set by the hardware also a trigger pulse is send on the tr_sar_out signal."],["LEFT_ALIGN_R","Field `LEFT_ALIGN` reader - Left align data in data[15:0], default data is right aligned in data[11:0], with sign extension to 16 bits if the channel is differential."],["LEFT_ALIGN_W","Field `LEFT_ALIGN` writer - Left align data in data[15:0], default data is right aligned in data[11:0], with sign extension to 16 bits if the channel is differential."],["R","Register `SAMPLE_CTRL` reader"],["REPEAT_INVALID_R","Field `REPEAT_INVALID` reader - For unscheduled UAB_SCAN_MODE only, do the following if an invalid sample is received: - 0: use the last known valid sample for that channel and clear the NEWVALUE flag - 1: repeat the conversions until a valid sample is received (caveat: could be never if the UAB valid window is incorrectly schedule w.r.t. SAR sampling)"],["REPEAT_INVALID_W","Field `REPEAT_INVALID` writer - For unscheduled UAB_SCAN_MODE only, do the following if an invalid sample is received: - 0: use the last known valid sample for that channel and clear the NEWVALUE flag - 1: repeat the conversions until a valid sample is received (caveat: could be never if the UAB valid window is incorrectly schedule w.r.t. SAR sampling)"],["SAMPLE_CTRL_SPEC","Sample control register."],["SINGLE_ENDED_SIGNED_R","Field `SINGLE_ENDED_SIGNED` reader - Output data from a single ended conversion as a signed value If AVG_MODE = 1 (Interleaved averaging), then SINGLE_ENDED_SIGNED must be configured identically to DIFFERENTIAL_SIGNED."],["SINGLE_ENDED_SIGNED_W","Field `SINGLE_ENDED_SIGNED` writer - Output data from a single ended conversion as a signed value If AVG_MODE = 1 (Interleaved averaging), then SINGLE_ENDED_SIGNED must be configured identically to DIFFERENTIAL_SIGNED."],["TRIGGER_OUT_EN_R","Field `TRIGGER_OUT_EN` reader - SAR output trigger enable (used for UAB synchronization). To ensure multiple UABs starting at the same trigger it is recommended to use this bit to temporarily disable the trigger output until all those UABs are set to run (UAB.SRAM_CTRL.RUN=1)."],["TRIGGER_OUT_EN_W","Field `TRIGGER_OUT_EN` writer - SAR output trigger enable (used for UAB synchronization). To ensure multiple UABs starting at the same trigger it is recommended to use this bit to temporarily disable the trigger output until all those UABs are set to run (UAB.SRAM_CTRL.RUN=1)."],["UAB_SCAN_MODE_R","Field `UAB_SCAN_MODE` reader - Select whether UABs are scheduled or unscheduled. When no UAB is scanned this selection is ignored."],["UAB_SCAN_MODE_W","Field `UAB_SCAN_MODE` writer - Select whether UABs are scheduled or unscheduled. When no UAB is scanned this selection is ignored."],["VALID_IGNORE_R","Field `VALID_IGNORE` reader - Ignore UAB valid signal, including the dynamic/Hardware from AROUTE and the static Valid selection from the VALID_SEL fields above"],["VALID_IGNORE_W","Field `VALID_IGNORE` writer - Ignore UAB valid signal, including the dynamic/Hardware from AROUTE and the static Valid selection from the VALID_SEL fields above"],["VALID_SEL_EN_R","Field `VALID_SEL_EN` reader - Enable static UAB Valid selection (override Hardware)"],["VALID_SEL_EN_W","Field `VALID_SEL_EN` writer - Enable static UAB Valid selection (override Hardware)"],["VALID_SEL_R","Field `VALID_SEL` reader - Static UAB Valid select 0=UAB0 half 0 Valid output 1=UAB0 half 1 Valid output 2=UAB1 half 0 Valid output 3=UAB1 half 1 Valid output 4=UAB2 half 0 Valid output 5=UAB2 half 1 Valid output 6=UAB3 half 0 Valid output 7=UAB3 half 1 Valid output"],["VALID_SEL_W","Field `VALID_SEL` writer - Static UAB Valid select 0=UAB0 half 0 Valid output 1=UAB0 half 1 Valid output 2=UAB1 half 0 Valid output 3=UAB1 half 1 Valid output 4=UAB2 half 0 Valid output 5=UAB2 half 1 Valid output 6=UAB3 half 0 Valid output 7=UAB3 half 1 Valid output"],["W","Register `SAMPLE_CTRL` writer"]]});