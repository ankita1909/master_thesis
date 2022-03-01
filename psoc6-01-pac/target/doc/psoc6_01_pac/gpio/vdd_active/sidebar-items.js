initSidebarItems({"struct":[["R","Register `VDD_ACTIVE` reader"],["VDDA_ACTIVE_R","Field `VDDA_ACTIVE` reader - Same as VDDIO_ACTIVE for the analog supply VDDA."],["VDDD_ACTIVE_R","Field `VDDD_ACTIVE` reader - This bit indicates presence of the VDDD supply. This bit will always read-back 1. The VDDD supply has robust brown-out protection monitoring and it is not possible to read back this register without a valid supply. (This bit is used in certain test-modes to observe the brown-out detector status.)"],["VDDIO_ACTIVE_R","Field `VDDIO_ACTIVE` reader - Indicates presence or absence of VDDIO supplies (i.e. other than VDDD, VDDA) on the device (supplies are numbered 0..n-1). Note that VDDIO supplies have basic (crude) supply detectors only. If separate, robust, brown-out detection is desired on IO supplies, on-chip or off-chip analog resources need to provide it. For these bits to work reliable, the supply must be within valid spec range (per datasheet) or held at ground. Any in-between voltage has an undefined result. ‘0’: Supply is not present ‘1’: Supply is present When multiple VDDIO supplies are present, they will be assigned in alphanumeric ascending order to these bits during implementation. For example ‘vddusb, vddio_0, vddio_a, vbackup, vddio_r, vddio_1’ are present then they will be assigned to these bits as below: 0: vbackup, 1: vddio_0, 2: vddio_1, 3: vddio_a, 4: vddio_r, 5: vddusb’"],["VDD_ACTIVE_SPEC","Extern power supply detection register"]]});