initSidebarItems({"struct":[["CQCFG_SPEC","Command Queuing Configuration register"],["CQ_EN_R","Field `CQ_EN` reader - Enable command queuing engine (CQE). When CQE is disable, the software controls the eMMC bus using the registers between the addresses 0x000 to 0x1FF. Before the software writes to this bit, the software verifies that the eMMC host controller is in idle state and there are no ongoing commands or data transfers. When software wants to exit command queuing mode, it clears all previous tasks (if any) before setting this bit to 0. Values: - 0x1 (CQE_ENABLE): Enable command queuing - 0x0 (CQE_DISABLE): Disable command queuing"],["CQ_EN_W","Field `CQ_EN` writer - Enable command queuing engine (CQE). When CQE is disable, the software controls the eMMC bus using the registers between the addresses 0x000 to 0x1FF. Before the software writes to this bit, the software verifies that the eMMC host controller is in idle state and there are no ongoing commands or data transfers. When software wants to exit command queuing mode, it clears all previous tasks (if any) before setting this bit to 0. Values: - 0x1 (CQE_ENABLE): Enable command queuing - 0x0 (CQE_DISABLE): Disable command queuing"],["CR_GENERAL_EN_R","Field `CR_GENERAL_EN` reader - N/A"],["CR_GENERAL_EN_W","Field `CR_GENERAL_EN` writer - N/A"],["DCMD_EN_R","Field `DCMD_EN` reader - This bit indicates to the hardware whether the Task Descriptor in slot #31 of the TDL is a data transfer descriptor or a direct-command descriptor. CQE uses this bit when a task is issued in slot #31, to determine how to decode the Task Descriptor. Values: - 0x1 (SLOT31_DCMD_ENABLE): Task descriptor in slot #31 is a DCMD Task Descriptor - 0x0 (SLOT31_DCMD_DISABLE): Task descriptor in slot #31 is a data Transfer Task Descriptor"],["DCMD_EN_W","Field `DCMD_EN` writer - This bit indicates to the hardware whether the Task Descriptor in slot #31 of the TDL is a data transfer descriptor or a direct-command descriptor. CQE uses this bit when a task is issued in slot #31, to determine how to decode the Task Descriptor. Values: - 0x1 (SLOT31_DCMD_ENABLE): Task descriptor in slot #31 is a DCMD Task Descriptor - 0x0 (SLOT31_DCMD_DISABLE): Task descriptor in slot #31 is a data Transfer Task Descriptor"],["R","Register `CQCFG` reader"],["TASK_DESC_SIZE_R","Field `TASK_DESC_SIZE` reader - Bit Value Description This bit indicates the size of task descriptor used in host memory. This bit can only be configured when Command Queuing Enable bit is 0 (command queuing is disabled). Values: - 0x1 (TASK_DESC_128b): Task descriptor size is 128 bits - 0x0 (TASK_DESC_64b): Task descriptor size is 64 bits"],["TASK_DESC_SIZE_W","Field `TASK_DESC_SIZE` writer - Bit Value Description This bit indicates the size of task descriptor used in host memory. This bit can only be configured when Command Queuing Enable bit is 0 (command queuing is disabled). Values: - 0x1 (TASK_DESC_128b): Task descriptor size is 128 bits - 0x0 (TASK_DESC_64b): Task descriptor size is 64 bits"],["W","Register `CQCFG` writer"]]});