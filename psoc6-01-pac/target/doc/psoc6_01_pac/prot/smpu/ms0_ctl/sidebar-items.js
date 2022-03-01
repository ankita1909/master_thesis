initSidebarItems({"struct":[["MS0_CTL_SPEC","Master 0 protection context control"],["NS_R","Field `NS` reader - Security setting (‘0’: secure mode; ‘1’: non-secure mode). Notes: This field is ONLY used for masters that do NOT provide their own secure/non-secure access control attribute. Note that the default/reset field value provides non-secure mode access capabilities to all masters."],["NS_W","Field `NS` writer - Security setting (‘0’: secure mode; ‘1’: non-secure mode). Notes: This field is ONLY used for masters that do NOT provide their own secure/non-secure access control attribute. Note that the default/reset field value provides non-secure mode access capabilities to all masters."],["PC_MASK_0_R","Field `PC_MASK_0` reader - Protection context mask for protection context ‘0’. This field is a constant ‘0’: - PC_MASK_0 is ‘0’: MPU MS_CTL.PC[3:0] can NOT be set to ‘0’ and PC[3:0] is not changed. If the protection context of the write transfer is ‘0’, protection is not applied and PC[3:0] can be changed."],["PC_MASK_15_TO_1_R","Field `PC_MASK_15_TO_1` reader - Protection context mask for protection contexts ‘15’ down to ‘1’. Bit PC_MASK_15_TO_1[i] indicates if the MPU MS_CTL.PC[3:0] protection context field can be set to the value ‘i+1’: - PC_MASK_15_TO_1[i] is ‘0’: MPU MS_CTL.PC[3:0] can NOT be set to ‘i+1’; and PC[3:0] is not changed. If the protection context of the write transfer is ‘0’, protection is not applied and PC[3:0] can be changed. - PC_MASK_15_TO_1[i] is ‘1’: MPU MS_CTL.PC[3:0] can be set to ‘i+1’. Note: When CPUSS_CM0_PC_CTL.VALID[i] is ‘1’ (the associated protection context handler is valid), write transfers to PC_MASK_15_TO_1[i-1] always write ‘0’, regardless of data written. This ensures that when valid protection context handlers are used to enter protection contexts 1, 2 or 3 through (HW modifies MPU MS_CTL.PC[3:0] on entry of the handler), it is NOT possible for SW to enter those protection contexts (SW modifies MPU MS_CTL.PC[3:0])."],["PC_MASK_15_TO_1_W","Field `PC_MASK_15_TO_1` writer - Protection context mask for protection contexts ‘15’ down to ‘1’. Bit PC_MASK_15_TO_1[i] indicates if the MPU MS_CTL.PC[3:0] protection context field can be set to the value ‘i+1’: - PC_MASK_15_TO_1[i] is ‘0’: MPU MS_CTL.PC[3:0] can NOT be set to ‘i+1’; and PC[3:0] is not changed. If the protection context of the write transfer is ‘0’, protection is not applied and PC[3:0] can be changed. - PC_MASK_15_TO_1[i] is ‘1’: MPU MS_CTL.PC[3:0] can be set to ‘i+1’. Note: When CPUSS_CM0_PC_CTL.VALID[i] is ‘1’ (the associated protection context handler is valid), write transfers to PC_MASK_15_TO_1[i-1] always write ‘0’, regardless of data written. This ensures that when valid protection context handlers are used to enter protection contexts 1, 2 or 3 through (HW modifies MPU MS_CTL.PC[3:0] on entry of the handler), it is NOT possible for SW to enter those protection contexts (SW modifies MPU MS_CTL.PC[3:0])."],["PRIO_R","Field `PRIO` reader - Device wide bus arbitration priority setting (‘0’: highest priority, ‘3’: lowest priority). Notes: The AHB-Lite interconnect performs arbitration on the individual beats/transfers of a burst (this optimizes latency over locality/bandwidth). The AXI-Lite interconnects performs a single arbitration for the complete burst (this optimizes locality/bandwidth over latency). Masters with the same priority setting form a ‘priority group’. Within a ‘priority group’, round robin arbitration is performed."],["PRIO_W","Field `PRIO` writer - Device wide bus arbitration priority setting (‘0’: highest priority, ‘3’: lowest priority). Notes: The AHB-Lite interconnect performs arbitration on the individual beats/transfers of a burst (this optimizes latency over locality/bandwidth). The AXI-Lite interconnects performs a single arbitration for the complete burst (this optimizes locality/bandwidth over latency). Masters with the same priority setting form a ‘priority group’. Within a ‘priority group’, round robin arbitration is performed."],["P_R","Field `P` reader - Privileged setting (‘0’: user mode; ‘1’: privileged mode). Notes: This field is ONLY used for masters that do NOT provide their own user/privileged access control attribute. The default/reset field value provides privileged mode access capabilities."],["P_W","Field `P` writer - Privileged setting (‘0’: user mode; ‘1’: privileged mode). Notes: This field is ONLY used for masters that do NOT provide their own user/privileged access control attribute. The default/reset field value provides privileged mode access capabilities."],["R","Register `MS0_CTL` reader"],["W","Register `MS0_CTL` writer"]]});