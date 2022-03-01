#[doc = "CTL register accessor: an alias for `Reg<CTL_SPEC>`"]
pub type CTL = crate::Reg<ctl::CTL_SPEC>;
#[doc = "Channel control"]
pub mod ctl;
#[doc = "IDX register accessor: an alias for `Reg<IDX_SPEC>`"]
pub type IDX = crate::Reg<idx::IDX_SPEC>;
#[doc = "Channel current indices"]
pub mod idx;
#[doc = "SRC register accessor: an alias for `Reg<SRC_SPEC>`"]
pub type SRC = crate::Reg<src::SRC_SPEC>;
#[doc = "Channel current source address"]
pub mod src;
#[doc = "DST register accessor: an alias for `Reg<DST_SPEC>`"]
pub type DST = crate::Reg<dst::DST_SPEC>;
#[doc = "Channel current destination address"]
pub mod dst;
#[doc = "CURR register accessor: an alias for `Reg<CURR_SPEC>`"]
pub type CURR = crate::Reg<curr::CURR_SPEC>;
#[doc = "Channel current descriptor pointer"]
pub mod curr;
#[doc = "TR_CMD register accessor: an alias for `Reg<TR_CMD_SPEC>`"]
pub type TR_CMD = crate::Reg<tr_cmd::TR_CMD_SPEC>;
#[doc = "Channle software trigger"]
pub mod tr_cmd;
#[doc = "DESCR_STATUS register accessor: an alias for `Reg<DESCR_STATUS_SPEC>`"]
pub type DESCR_STATUS = crate::Reg<descr_status::DESCR_STATUS_SPEC>;
#[doc = "Channel descriptor status"]
pub mod descr_status;
#[doc = "DESCR_CTL register accessor: an alias for `Reg<DESCR_CTL_SPEC>`"]
pub type DESCR_CTL = crate::Reg<descr_ctl::DESCR_CTL_SPEC>;
#[doc = "Channel descriptor control"]
pub mod descr_ctl;
#[doc = "DESCR_SRC register accessor: an alias for `Reg<DESCR_SRC_SPEC>`"]
pub type DESCR_SRC = crate::Reg<descr_src::DESCR_SRC_SPEC>;
#[doc = "Channel descriptor source"]
pub mod descr_src;
#[doc = "DESCR_DST register accessor: an alias for `Reg<DESCR_DST_SPEC>`"]
pub type DESCR_DST = crate::Reg<descr_dst::DESCR_DST_SPEC>;
#[doc = "Channel descriptor destination"]
pub mod descr_dst;
#[doc = "DESCR_X_SIZE register accessor: an alias for `Reg<DESCR_X_SIZE_SPEC>`"]
pub type DESCR_X_SIZE = crate::Reg<descr_x_size::DESCR_X_SIZE_SPEC>;
#[doc = "Channel descriptor X size"]
pub mod descr_x_size;
#[doc = "DESCR_X_INCR register accessor: an alias for `Reg<DESCR_X_INCR_SPEC>`"]
pub type DESCR_X_INCR = crate::Reg<descr_x_incr::DESCR_X_INCR_SPEC>;
#[doc = "Channel descriptor X increment"]
pub mod descr_x_incr;
#[doc = "DESCR_Y_SIZE register accessor: an alias for `Reg<DESCR_Y_SIZE_SPEC>`"]
pub type DESCR_Y_SIZE = crate::Reg<descr_y_size::DESCR_Y_SIZE_SPEC>;
#[doc = "Channel descriptor Y size"]
pub mod descr_y_size;
#[doc = "DESCR_Y_INCR register accessor: an alias for `Reg<DESCR_Y_INCR_SPEC>`"]
pub type DESCR_Y_INCR = crate::Reg<descr_y_incr::DESCR_Y_INCR_SPEC>;
#[doc = "Channel descriptor Y increment"]
pub mod descr_y_incr;
#[doc = "DESCR_NEXT register accessor: an alias for `Reg<DESCR_NEXT_SPEC>`"]
pub type DESCR_NEXT = crate::Reg<descr_next::DESCR_NEXT_SPEC>;
#[doc = "Channel descriptor next pointer"]
pub mod descr_next;
#[doc = "INTR register accessor: an alias for `Reg<INTR_SPEC>`"]
pub type INTR = crate::Reg<intr::INTR_SPEC>;
#[doc = "Interrupt"]
pub mod intr;
#[doc = "INTR_SET register accessor: an alias for `Reg<INTR_SET_SPEC>`"]
pub type INTR_SET = crate::Reg<intr_set::INTR_SET_SPEC>;
#[doc = "Interrupt set"]
pub mod intr_set;
#[doc = "INTR_MASK register accessor: an alias for `Reg<INTR_MASK_SPEC>`"]
pub type INTR_MASK = crate::Reg<intr_mask::INTR_MASK_SPEC>;
#[doc = "Interrupt mask"]
pub mod intr_mask;
#[doc = "INTR_MASKED register accessor: an alias for `Reg<INTR_MASKED_SPEC>`"]
pub type INTR_MASKED = crate::Reg<intr_masked::INTR_MASKED_SPEC>;
#[doc = "Interrupt masked"]
pub mod intr_masked;
