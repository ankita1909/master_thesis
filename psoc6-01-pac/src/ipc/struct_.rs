#[doc = "ACQUIRE register accessor: an alias for `Reg<ACQUIRE_SPEC>`"]
pub type ACQUIRE = crate::Reg<acquire::ACQUIRE_SPEC>;
#[doc = "IPC acquire"]
pub mod acquire;
#[doc = "RELEASE register accessor: an alias for `Reg<RELEASE_SPEC>`"]
pub type RELEASE = crate::Reg<release::RELEASE_SPEC>;
#[doc = "IPC release"]
pub mod release;
#[doc = "NOTIFY register accessor: an alias for `Reg<NOTIFY_SPEC>`"]
pub type NOTIFY = crate::Reg<notify::NOTIFY_SPEC>;
#[doc = "IPC notification"]
pub mod notify;
#[doc = "DATA0 register accessor: an alias for `Reg<DATA0_SPEC>`"]
pub type DATA0 = crate::Reg<data0::DATA0_SPEC>;
#[doc = "IPC data 0"]
pub mod data0;
#[doc = "DATA1 register accessor: an alias for `Reg<DATA1_SPEC>`"]
pub type DATA1 = crate::Reg<data1::DATA1_SPEC>;
#[doc = "IPC data 1"]
pub mod data1;
#[doc = "LOCK_STATUS register accessor: an alias for `Reg<LOCK_STATUS_SPEC>`"]
pub type LOCK_STATUS = crate::Reg<lock_status::LOCK_STATUS_SPEC>;
#[doc = "IPC lock status"]
pub mod lock_status;
