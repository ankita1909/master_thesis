initSidebarItems({"struct":[["CQTERRI_SPEC","CQ Task Error Information register"],["R","Register `CQTERRI` reader"],["RESP_ERR_CMD_INDX_R","Field `RESP_ERR_CMD_INDX` reader - This field captures the index of the command that was executed on the command line when the error occurred."],["RESP_ERR_FIELDS_VALID_R","Field `RESP_ERR_FIELDS_VALID` reader - This bit is updated when an error is detected while a command transaction was in progress. Values: - 0x1 (SET): Response-related error is detected. Check contents of RESP_ERR_TASKID and RESP_ERR_CMD_INDX fields - 0x0 (NOT_SET): Ignore contents of RESP_ERR_TASKID and RESP_ERR_CMD_INDX"],["RESP_ERR_TASKID_R","Field `RESP_ERR_TASKID` reader - This field captures the ID of the task which was executed on the command line when the error occurred."],["TRANS_ERR_CMD_INDX_R","Field `TRANS_ERR_CMD_INDX` reader - This field captures the index of the command that was executed and whose data transfer has errors."],["TRANS_ERR_FIELDS_VALID_R","Field `TRANS_ERR_FIELDS_VALID` reader - This bit is updated when an error is detected while a data transfer transaction was in progress. Values: - 0x1 (SET): data transfer related error detected. Check contents of TRANS_ERR_TASKID and TRANS_ERR_CMD_INDX fields - 0x0 (NOT_SET): Ignore contents of TRANS_ERR_TASKID and TRANS_ERR_CMD_INDX"],["TRANS_ERR_TASKID_R","Field `TRANS_ERR_TASKID` reader - This field captures the ID of the task that was executed and whose data transfer has errors."]]});