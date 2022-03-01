initSidebarItems({"enum":[["WDT_LOCK_A","Prohibits writing to WDT_*, CLK_ILO_CONFIG, CLK_SELECT.LFCLK_SEL, and CLK_TRIM_ILO_CTL registers when not equal 0. Requires at least two different writes to unlock. A change in WDT_LOCK takes effect beginning with the next write cycle. Note that this field is 2 bits to force multiple writes only. It represents only a single write protect signal protecting all those registers at the same time. WDT will lock on any reset. This field is not retained during DEEPSLEEP or HIBERNATE mode, so the WDT will be locked after wakeup from these modes."]],"struct":[["R","Register `WDT_CTL` reader"],["W","Register `WDT_CTL` writer"],["WDT_CTL_SPEC","Watchdog Counter Control Register"],["WDT_EN_R","Field `WDT_EN` reader - Enable this watchdog timer. This field is retained during DEEPSLEEP and HIBERNATE modes."],["WDT_EN_W","Field `WDT_EN` writer - Enable this watchdog timer. This field is retained during DEEPSLEEP and HIBERNATE modes."],["WDT_LOCK_R","Field `WDT_LOCK` reader - Prohibits writing to WDT_*, CLK_ILO_CONFIG, CLK_SELECT.LFCLK_SEL, and CLK_TRIM_ILO_CTL registers when not equal 0. Requires at least two different writes to unlock. A change in WDT_LOCK takes effect beginning with the next write cycle. Note that this field is 2 bits to force multiple writes only. It represents only a single write protect signal protecting all those registers at the same time. WDT will lock on any reset. This field is not retained during DEEPSLEEP or HIBERNATE mode, so the WDT will be locked after wakeup from these modes."],["WDT_LOCK_W","Field `WDT_LOCK` writer - Prohibits writing to WDT_*, CLK_ILO_CONFIG, CLK_SELECT.LFCLK_SEL, and CLK_TRIM_ILO_CTL registers when not equal 0. Requires at least two different writes to unlock. A change in WDT_LOCK takes effect beginning with the next write cycle. Note that this field is 2 bits to force multiple writes only. It represents only a single write protect signal protecting all those registers at the same time. WDT will lock on any reset. This field is not retained during DEEPSLEEP or HIBERNATE mode, so the WDT will be locked after wakeup from these modes."]]});