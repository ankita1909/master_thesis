initSidebarItems({"struct":[["COUNTER_ENABLED_R","Field `COUNTER_ENABLED` reader - Counter enables for counters 0 up to CNT_NR-1. ‘0’: counter disabled. ‘1’: counter enabled. Counter static configuration information (e.g. CTRL.MODE, all TR_CTRL0, TR_CTRL1, and TR_CTRL2 register fields) should only be modified when the counter is disabled. When a counter is disabled, command and status information associated to the counter is cleared by HW, this includes: - the associated counter triggers in the CMD register are set to ‘0’. - the counter’s interrupt cause fields in counter’s INTR register. - the counter’s status fields in counter’s STATUS register.. - the counter’s trigger outputs (‘tr_overflow’, ‘tr_underflow’ and ‘tr_compare_match’). - the counter’s line outputs (‘line_out’ and ‘line_compl_out’). In multi-core environments, use the CTRL_SET/CTRL_CLR registers to avoid race-conditions on read-modify-write attempts to this register."],["COUNTER_ENABLED_W","Field `COUNTER_ENABLED` writer - Counter enables for counters 0 up to CNT_NR-1. ‘0’: counter disabled. ‘1’: counter enabled. Counter static configuration information (e.g. CTRL.MODE, all TR_CTRL0, TR_CTRL1, and TR_CTRL2 register fields) should only be modified when the counter is disabled. When a counter is disabled, command and status information associated to the counter is cleared by HW, this includes: - the associated counter triggers in the CMD register are set to ‘0’. - the counter’s interrupt cause fields in counter’s INTR register. - the counter’s status fields in counter’s STATUS register.. - the counter’s trigger outputs (‘tr_overflow’, ‘tr_underflow’ and ‘tr_compare_match’). - the counter’s line outputs (‘line_out’ and ‘line_compl_out’). In multi-core environments, use the CTRL_SET/CTRL_CLR registers to avoid race-conditions on read-modify-write attempts to this register."],["CTRL_SPEC","TCPWM control register"],["R","Register `CTRL` reader"],["W","Register `CTRL` writer"]]});