initSidebarItems({"enum":[["MCWDT_LOCK_A","Prohibits writing control and configuration registers related to this MCWDT when not equal 0 (as specified in the other register descriptions). Requires at least two different writes to unlock. Note that this field is 2 bits to force multiple writes only. Each MCWDT has a separate local lock. LFCLK settings are locked by the global WDT_LOCK register, and this register has no effect on that."]],"struct":[["MCWDT_LOCK_R","Field `MCWDT_LOCK` reader - Prohibits writing control and configuration registers related to this MCWDT when not equal 0 (as specified in the other register descriptions). Requires at least two different writes to unlock. Note that this field is 2 bits to force multiple writes only. Each MCWDT has a separate local lock. LFCLK settings are locked by the global WDT_LOCK register, and this register has no effect on that."],["MCWDT_LOCK_SPEC","Multi-Counter Watchdog Counter Lock Register"],["MCWDT_LOCK_W","Field `MCWDT_LOCK` writer - Prohibits writing control and configuration registers related to this MCWDT when not equal 0 (as specified in the other register descriptions). Requires at least two different writes to unlock. Note that this field is 2 bits to force multiple writes only. Each MCWDT has a separate local lock. LFCLK settings are locked by the global WDT_LOCK register, and this register has no effect on that."],["R","Register `MCWDT_LOCK` reader"],["W","Register `MCWDT_LOCK` writer"]]});