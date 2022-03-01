initSidebarItems({"enum":[["ROOT_DIV_A","Selects predivider value for this clock root and DSI input."],["ROOT_MUX_A","Selects a clock path as the root of HFCLK and for SRSS DSI input . Use CLK_SELECT_PATH[i] to configure the desired path. Some paths may have FLL or PLL available (product-specific), and the control and bypass mux selections of these are in other registers. Configure the FLL using CLK_FLL_CONFIG register. Configure a PLL using the related CLK_PLL_CONFIG[k] register. Note that not all products support all clock sources. Selecting a clock source that is not supported will result in undefined behavior."]],"struct":[["CLK_ROOT_SELECT_SPEC","Clock Root Select Register"],["ENABLE_R","Field `ENABLE` reader - Enable for this clock root. All clock roots default to disabled (ENABLE==0) except HFCLK0, which cannot be disabled."],["ENABLE_W","Field `ENABLE` writer - Enable for this clock root. All clock roots default to disabled (ENABLE==0) except HFCLK0, which cannot be disabled."],["R","Register `CLK_ROOT_SELECT[%s]` reader"],["ROOT_DIV_R","Field `ROOT_DIV` reader - Selects predivider value for this clock root and DSI input."],["ROOT_DIV_W","Field `ROOT_DIV` writer - Selects predivider value for this clock root and DSI input."],["ROOT_MUX_R","Field `ROOT_MUX` reader - Selects a clock path as the root of HFCLK and for SRSS DSI input . Use CLK_SELECT_PATH[i] to configure the desired path. Some paths may have FLL or PLL available (product-specific), and the control and bypass mux selections of these are in other registers. Configure the FLL using CLK_FLL_CONFIG register. Configure a PLL using the related CLK_PLL_CONFIG[k] register. Note that not all products support all clock sources. Selecting a clock source that is not supported will result in undefined behavior."],["ROOT_MUX_W","Field `ROOT_MUX` writer - Selects a clock path as the root of HFCLK and for SRSS DSI input . Use CLK_SELECT_PATH[i] to configure the desired path. Some paths may have FLL or PLL available (product-specific), and the control and bypass mux selections of these are in other registers. Configure the FLL using CLK_FLL_CONFIG register. Configure a PLL using the related CLK_PLL_CONFIG[k] register. Note that not all products support all clock sources. Selecting a clock source that is not supported will result in undefined behavior."],["W","Register `CLK_ROOT_SELECT[%s]` writer"]]});