initSidebarItems({"struct":[["CAL_COUNTER1_R","Field `CAL_COUNTER1` reader - Down-counter clocked on fast clock output #0 (see CLK_OUTPUT_FAST). This register always reads as zero. Counting starts internally when this register is written with a nonzero value. CAL_COUNTER_DONE goes immediately low to indicate that the counter has started and will be asserted when the counters are done. Do not write this field unless CAL_COUNTER_DONE==1. Both clocks must be running or the measurement will not complete. A stalled counter can be recovered by selecting valid clocks, waiting until the measurement completes, and discarding the first result."],["CAL_COUNTER1_W","Field `CAL_COUNTER1` writer - Down-counter clocked on fast clock output #0 (see CLK_OUTPUT_FAST). This register always reads as zero. Counting starts internally when this register is written with a nonzero value. CAL_COUNTER_DONE goes immediately low to indicate that the counter has started and will be asserted when the counters are done. Do not write this field unless CAL_COUNTER_DONE==1. Both clocks must be running or the measurement will not complete. A stalled counter can be recovered by selecting valid clocks, waiting until the measurement completes, and discarding the first result."],["CAL_COUNTER_DONE_R","Field `CAL_COUNTER_DONE` reader - Status bit indicating that the internal counter #1 is finished counting and CLK_CAL_CNT2.COUNTER stopped counting up"],["CLK_CAL_CNT1_SPEC","Clock Calibration Counter 1"],["R","Register `CLK_CAL_CNT1` reader"],["W","Register `CLK_CAL_CNT1` writer"]]});