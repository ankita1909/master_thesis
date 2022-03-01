initSidebarItems({"struct":[["CARD_IS_EMMC_R","Field `CARD_IS_EMMC` reader - eMMC Card present This bit indicates the type of card connected. An application program this bit based on the card connected to SDHC. Values: - 0x1 (EMMC_CARD): Card connected to SDHC is an eMMC card - 0x0 (NON_EMMC_CARD): Card connected to SDHC is a non-eMMC card"],["CARD_IS_EMMC_W","Field `CARD_IS_EMMC` writer - eMMC Card present This bit indicates the type of card connected. An application program this bit based on the card connected to SDHC. Values: - 0x1 (EMMC_CARD): Card connected to SDHC is an eMMC card - 0x0 (NON_EMMC_CARD): Card connected to SDHC is a non-eMMC card"],["CQE_ALGO_SEL_R","Field `CQE_ALGO_SEL` reader - Scheduler algorithm selected for execution This bit selects the Algorithm used for selecting one of the many ready tasks for execution. Values: - 0x0 (PRI_REORDER_PLUS_FCFS): Priority based reordering with FCFS to resolve equal priority tasks - 0x1 (FCFS_ONLY): First come First serve, in the order of DBR rings"],["CQE_ALGO_SEL_W","Field `CQE_ALGO_SEL` writer - Scheduler algorithm selected for execution This bit selects the Algorithm used for selecting one of the many ready tasks for execution. Values: - 0x0 (PRI_REORDER_PLUS_FCFS): Priority based reordering with FCFS to resolve equal priority tasks - 0x1 (FCFS_ONLY): First come First serve, in the order of DBR rings"],["CQE_PREFETCH_DISABLE_R","Field `CQE_PREFETCH_DISABLE` reader - Enable or Disable CQE’s PREFETCH feature This field allows Software to disable CQE’s data prefetch feature when set to 1. Values: - 0x0 (PREFETCH_ENABLE): CQE can Prefetch data for sucessive WRITE transfers and pipeline sucessive READ transfers - 0x1 (PREFETCH_DISABLE): Prefetch for WRITE and Pipeline for READ are disabled"],["CQE_PREFETCH_DISABLE_W","Field `CQE_PREFETCH_DISABLE` writer - Enable or Disable CQE’s PREFETCH feature This field allows Software to disable CQE’s data prefetch feature when set to 1. Values: - 0x0 (PREFETCH_ENABLE): CQE can Prefetch data for sucessive WRITE transfers and pipeline sucessive READ transfers - 0x1 (PREFETCH_DISABLE): Prefetch for WRITE and Pipeline for READ are disabled"],["DISABLE_DATA_CRC_CHK_R","Field `DISABLE_DATA_CRC_CHK` reader - Disable Data CRC Check This bit controls masking of CRC16 error for Card Write in eMMC mode. This is useful in bus testing (CMD19) for an eMMC device. In bus testing, an eMMC card does not send CRC status for a block, which may generate CRC error. This CRC error can be masked using this bit during bus testing. Values: - 0x1 (DISABLE): DATA CRC check is disabled - 0x0 (ENABLE): DATA CRC check is enabled"],["DISABLE_DATA_CRC_CHK_W","Field `DISABLE_DATA_CRC_CHK` writer - Disable Data CRC Check This bit controls masking of CRC16 error for Card Write in eMMC mode. This is useful in bus testing (CMD19) for an eMMC device. In bus testing, an eMMC card does not send CRC status for a block, which may generate CRC error. This CRC error can be masked using this bit during bus testing. Values: - 0x1 (DISABLE): DATA CRC check is disabled - 0x0 (ENABLE): DATA CRC check is enabled"],["EMMC_CTRL_R_SPEC","eMMC Control register"],["EMMC_RST_N_OE_R","Field `EMMC_RST_N_OE` reader - Output Enable (OE) control for EMMC Device Reset signal (card_emmc_reset_n). Values: - 0x1 (ENABLE): OE for card_emmc_reset_n is 1 - 0x0 (DISABLE): OE for card_emmc_reset_n is 0"],["EMMC_RST_N_OE_W","Field `EMMC_RST_N_OE` writer - Output Enable (OE) control for EMMC Device Reset signal (card_emmc_reset_n). Values: - 0x1 (ENABLE): OE for card_emmc_reset_n is 1 - 0x0 (DISABLE): OE for card_emmc_reset_n is 0"],["EMMC_RST_N_R","Field `EMMC_RST_N` reader - EMMC Device Reset signal control. This register field controls the card_emmc_reset_n output of SDHC Values: - 0x1 (RST_DEASSERT): Reset to eMMC device is deasserted - 0x0 (RST_ASSERT): Reset to eMMC device asserted (active low)"],["EMMC_RST_N_W","Field `EMMC_RST_N` writer - EMMC Device Reset signal control. This register field controls the card_emmc_reset_n output of SDHC Values: - 0x1 (RST_DEASSERT): Reset to eMMC device is deasserted - 0x0 (RST_ASSERT): Reset to eMMC device asserted (active low)"],["R","Register `EMMC_CTRL_R` reader"],["W","Register `EMMC_CTRL_R` writer"]]});