initSidebarItems({"struct":[["CLOCK_CTL_SPEC","Clock control"],["INT8_DIV_R","Field `INT8_DIV` reader - Specifies a group clock divider (from the peripheral clock ‘clk_peri’ to the group clock ‘clk_group[3/4/5/…15]’). Integer division by (1+INT8_DIV). Allows for integer divisions in the range [1, 256]. Note that this field is retained. However, the counter that is used to implement the division is not and will be initialized by HW to ‘0’ when transitioning from DeepSleep to Active power mode."],["INT8_DIV_W","Field `INT8_DIV` writer - Specifies a group clock divider (from the peripheral clock ‘clk_peri’ to the group clock ‘clk_group[3/4/5/…15]’). Integer division by (1+INT8_DIV). Allows for integer divisions in the range [1, 256]. Note that this field is retained. However, the counter that is used to implement the division is not and will be initialized by HW to ‘0’ when transitioning from DeepSleep to Active power mode."],["R","Register `CLOCK_CTL` reader"],["W","Register `CLOCK_CTL` writer"]]});