initSidebarItems({"struct":[["IGNORE_BITS_R","Field `IGNORE_BITS` reader - The number of MSB bits of the watchdog timer that are NOT checked against MATCH. This value provides control over the time-to-reset of the watchdog (which happens after 3 successive matches). Up to 12 MSB can be ignored. Settings >12 behave like a setting of 12."],["IGNORE_BITS_W","Field `IGNORE_BITS` writer - The number of MSB bits of the watchdog timer that are NOT checked against MATCH. This value provides control over the time-to-reset of the watchdog (which happens after 3 successive matches). Up to 12 MSB can be ignored. Settings >12 behave like a setting of 12."],["MATCH_R","Field `MATCH` reader - Match value for Watchdog counter. Every time WDT_COUNTER reaches MATCH an interrupt is generated. Two unserviced interrupts will lead to a system reset (i.e. at the third match)."],["MATCH_W","Field `MATCH` writer - Match value for Watchdog counter. Every time WDT_COUNTER reaches MATCH an interrupt is generated. Two unserviced interrupts will lead to a system reset (i.e. at the third match)."],["R","Register `WDT_MATCH` reader"],["W","Register `WDT_MATCH` writer"],["WDT_MATCH_SPEC","Watchdog Counter Match Register"]]});