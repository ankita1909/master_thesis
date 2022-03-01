initSidebarItems({"struct":[["ACTIVATE_R","Field `ACTIVATE` reader - SW sets this field to ‘1’ to activate (set to ‘1’) a trigger as identified by TR_SEL, TR_EDGE and OUT_SEL. HW sets this field to ‘0’ for edge sensitive triggers AFTER the selected trigger is activated for two clk_peri cycles. Note: when ACTIVATE is ‘1’, SW should not modify the other register fields."],["ACTIVATE_W","Field `ACTIVATE` writer - SW sets this field to ‘1’ to activate (set to ‘1’) a trigger as identified by TR_SEL, TR_EDGE and OUT_SEL. HW sets this field to ‘0’ for edge sensitive triggers AFTER the selected trigger is activated for two clk_peri cycles. Note: when ACTIVATE is ‘1’, SW should not modify the other register fields."],["GROUP_SEL_R","Field `GROUP_SEL` reader - Specifies the trigger group: ‘0’-‘15’: trigger multiplexer groups. ‘16’-‘31’: trigger 1-to-1 groups."],["GROUP_SEL_W","Field `GROUP_SEL` writer - Specifies the trigger group: ‘0’-‘15’: trigger multiplexer groups. ‘16’-‘31’: trigger 1-to-1 groups."],["OUT_SEL_R","Field `OUT_SEL` reader - Specifies whether trigger activation is for a specific input or output trigger of the trigger multiplexer. Activation of a specific input trigger, will result in activation of all output triggers that have the specific input trigger selected through their TR_OUT_CTL.TR_SEL field. Activation of a specific output trigger, will result in activation of the specified TR_SEL output trigger only. ‘0’: TR_SEL selection and trigger activation is for an input trigger to the trigger multiplexer. ‘1’: TR_SEL selection and trigger activation is for an output trigger from the trigger multiplexer. Note: this field is not used for trigger 1-to-1 groups."],["OUT_SEL_W","Field `OUT_SEL` writer - Specifies whether trigger activation is for a specific input or output trigger of the trigger multiplexer. Activation of a specific input trigger, will result in activation of all output triggers that have the specific input trigger selected through their TR_OUT_CTL.TR_SEL field. Activation of a specific output trigger, will result in activation of the specified TR_SEL output trigger only. ‘0’: TR_SEL selection and trigger activation is for an input trigger to the trigger multiplexer. ‘1’: TR_SEL selection and trigger activation is for an output trigger from the trigger multiplexer. Note: this field is not used for trigger 1-to-1 groups."],["R","Register `TR_CMD` reader"],["TR_CMD_SPEC","Trigger command"],["TR_EDGE_R","Field `TR_EDGE` reader - Specifies if the activated trigger is treated as a level sensitive or edge sensitive trigger. ‘0’: level sensitive. The trigger reflects TR_CMD.ACTIVATE. ‘1’: edge sensitive trigger. The trigger is activated for two clk_peri cycles."],["TR_EDGE_W","Field `TR_EDGE` writer - Specifies if the activated trigger is treated as a level sensitive or edge sensitive trigger. ‘0’: level sensitive. The trigger reflects TR_CMD.ACTIVATE. ‘1’: edge sensitive trigger. The trigger is activated for two clk_peri cycles."],["TR_SEL_R","Field `TR_SEL` reader - Specifies the activated trigger when ACTIVATE is ‘1’. If the specified trigger is not present, the trigger activation has no effect."],["TR_SEL_W","Field `TR_SEL` writer - Specifies the activated trigger when ACTIVATE is ‘1’. If the specified trigger is not present, the trigger activation has no effect."],["W","Register `TR_CMD` writer"]]});