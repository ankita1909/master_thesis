initSidebarItems({"enum":[["CLK_CLOCK_DIV_A","PDM CLK (FPDM_CLK) (1st divider): This configures a frequency of PDM CLK. The configured frequency is used to operate PDM core. I.e. the frequency is input to MCLKQ_CLOCK_DIV register. Note: configure a frequency of PDM CLK as lower than or equal 50MHz with this divider."],["MCLKQ_CLOCK_DIV_A","MCLKQ divider (2nd divider) (Note: These bits are connected to AR36U12.PDM_CORE2_CFG.DIV_MCLKQ)"]],"struct":[["CKO_CLOCK_DIV_R","Field `CKO_CLOCK_DIV` reader - PDM CKO (FPDM_CKO) clock divider (3rd divider): FPDM_CKO = MCLKQ / (CKO_CLOCK_DIV + 1) Note: To configure ‘0’ to this field is prohibited. (Note: PDM_CKO is configured by MCLKQ_CLOCK_DIV, CLK_CLOCK_DIV and CKO_CLOCK_DIV. ) (Note: These bits are connected to AR36U12.PDM_CORE_CFG.MCLKDIV)"],["CKO_CLOCK_DIV_W","Field `CKO_CLOCK_DIV` writer - PDM CKO (FPDM_CKO) clock divider (3rd divider): FPDM_CKO = MCLKQ / (CKO_CLOCK_DIV + 1) Note: To configure ‘0’ to this field is prohibited. (Note: PDM_CKO is configured by MCLKQ_CLOCK_DIV, CLK_CLOCK_DIV and CKO_CLOCK_DIV. ) (Note: These bits are connected to AR36U12.PDM_CORE_CFG.MCLKDIV)"],["CLK_CLOCK_DIV_R","Field `CLK_CLOCK_DIV` reader - PDM CLK (FPDM_CLK) (1st divider): This configures a frequency of PDM CLK. The configured frequency is used to operate PDM core. I.e. the frequency is input to MCLKQ_CLOCK_DIV register. Note: configure a frequency of PDM CLK as lower than or equal 50MHz with this divider."],["CLK_CLOCK_DIV_W","Field `CLK_CLOCK_DIV` writer - PDM CLK (FPDM_CLK) (1st divider): This configures a frequency of PDM CLK. The configured frequency is used to operate PDM core. I.e. the frequency is input to MCLKQ_CLOCK_DIV register. Note: configure a frequency of PDM CLK as lower than or equal 50MHz with this divider."],["CLOCK_CTL_SPEC","Clock control"],["MCLKQ_CLOCK_DIV_R","Field `MCLKQ_CLOCK_DIV` reader - MCLKQ divider (2nd divider) (Note: These bits are connected to AR36U12.PDM_CORE2_CFG.DIV_MCLKQ)"],["MCLKQ_CLOCK_DIV_W","Field `MCLKQ_CLOCK_DIV` writer - MCLKQ divider (2nd divider) (Note: These bits are connected to AR36U12.PDM_CORE2_CFG.DIV_MCLKQ)"],["R","Register `CLOCK_CTL` reader"],["SINC_RATE_R","Field `SINC_RATE` reader - SINC Decimation Rate. For details, see the data sheet provided by Archband. Oversampling Ratio = Decimation Rate = 2 X SINC_RATE (Note: These bits are connected to AR36U12.PDM_CORE_CFG.SINC_RATE)"],["SINC_RATE_W","Field `SINC_RATE` writer - SINC Decimation Rate. For details, see the data sheet provided by Archband. Oversampling Ratio = Decimation Rate = 2 X SINC_RATE (Note: These bits are connected to AR36U12.PDM_CORE_CFG.SINC_RATE)"],["W","Register `CLOCK_CTL` writer"]]});