initSidebarItems({"struct":[["CA_EN_R","Field `CA_EN` reader - Cache enable: 0: Disabled. The cache tag valid bits are reset to ’0’s and the cache LRU information is set to ’1’s (making way 0 the LRU way and way 3 the MRU way). 1: Enabled."],["CA_EN_W","Field `CA_EN` writer - Cache enable: 0: Disabled. The cache tag valid bits are reset to ’0’s and the cache LRU information is set to ’1’s (making way 0 the LRU way and way 3 the MRU way). 1: Enabled."],["CM0_CA_CTL0_SPEC","CM0+ cache control"],["PREF_EN_R","Field `PREF_EN` reader - Prefetch enable: 0: Disabled. 1: Enabled. Prefetching requires the cache to be enabled; i.e. ENABLED is ‘1’."],["PREF_EN_W","Field `PREF_EN` writer - Prefetch enable: 0: Disabled. 1: Enabled. Prefetching requires the cache to be enabled; i.e. ENABLED is ‘1’."],["R","Register `CM0_CA_CTL0` reader"],["RAM_ECC_EN_R","Field `RAM_ECC_EN` reader - Enable ECC checking for cache accesses: 0: Disabled. 1: Enabled."],["RAM_ECC_EN_W","Field `RAM_ECC_EN` writer - Enable ECC checking for cache accesses: 0: Disabled. 1: Enabled."],["RAM_ECC_INJ_EN_R","Field `RAM_ECC_INJ_EN` reader - Enable error injection for cache. When ‘1’, the parity (ECC_CTL.PARITY[6:0]) is used when a refill is done from the FLASH macro to the ECC_CTL.WORD_ADDR[23:0] word address."],["RAM_ECC_INJ_EN_W","Field `RAM_ECC_INJ_EN` writer - Enable error injection for cache. When ‘1’, the parity (ECC_CTL.PARITY[6:0]) is used when a refill is done from the FLASH macro to the ECC_CTL.WORD_ADDR[23:0] word address."],["SET_ADDR_R","Field `SET_ADDR` reader - Specifies the cache set for which cache information is provided in CM0_CA_STATUS0/1/2."],["SET_ADDR_W","Field `SET_ADDR` writer - Specifies the cache set for which cache information is provided in CM0_CA_STATUS0/1/2."],["W","Register `CM0_CA_CTL0` writer"],["WAY_R","Field `WAY` reader - Specifies the cache way for which cache information is provided in CM0_CA_STATUS0/1/2."],["WAY_W","Field `WAY` writer - Specifies the cache way for which cache information is provided in CM0_CA_STATUS0/1/2."]]});