initSidebarItems({"struct":[["ABORT_R","Field `ABORT` reader - When a 1 is written the CSD and ADC sequencers will be aborted (if they are running) and the START bit will be cleared. This bit always read as 0."],["ABORT_W","Field `ABORT` writer - When a 1 is written the CSD and ADC sequencers will be aborted (if they are running) and the START bit will be cleared. This bit always read as 0."],["AZ0_SKIP_R","Field `AZ0_SKIP` reader - When set the AutoZero_0 state will be skipped"],["AZ0_SKIP_W","Field `AZ0_SKIP` writer - When set the AutoZero_0 state will be skipped"],["AZ1_SKIP_R","Field `AZ1_SKIP` reader - When set the AutoZero_1 state will be skipped"],["AZ1_SKIP_W","Field `AZ1_SKIP` writer - When set the AutoZero_1 state will be skipped"],["DSI_START_EN_R","Field `DSI_START_EN` reader - When this bit is set a positive edge on dsi_start will start the CSD sequencer and if enabled also the ADC sequencer."],["DSI_START_EN_W","Field `DSI_START_EN` writer - When this bit is set a positive edge on dsi_start will start the CSD sequencer and if enabled also the ADC sequencer."],["R","Register `SEQ_START` reader"],["SEQ_MODE_R","Field `SEQ_MODE` reader - 0 = regular CSD scan + optional ADC 1 = coarse initialization, the Sequencer will go to the INIT_COARSE state."],["SEQ_MODE_W","Field `SEQ_MODE` writer - 0 = regular CSD scan + optional ADC 1 = coarse initialization, the Sequencer will go to the INIT_COARSE state."],["SEQ_START_SPEC","Sequencer start"],["START_R","Field `START` reader - Start the CSD sequencer. The sequencer will clear this bit when it is done. Depending on the mode the sequencer is done when a sample has been accumulated, when the high speed comparator trips or if the sequencer is aborted. When the ADC is enabled the ADC sequencer will start when the CSD sequencer reaches the Sample_norm state (only with the regular CSD scan mode)."],["START_W","Field `START` writer - Start the CSD sequencer. The sequencer will clear this bit when it is done. Depending on the mode the sequencer is done when a sample has been accumulated, when the high speed comparator trips or if the sequencer is aborted. When the ADC is enabled the ADC sequencer will start when the CSD sequencer reaches the Sample_norm state (only with the regular CSD scan mode)."],["W","Register `SEQ_START` writer"]]});