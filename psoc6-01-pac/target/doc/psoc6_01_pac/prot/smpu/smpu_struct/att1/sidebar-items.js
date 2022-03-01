initSidebarItems({"struct":[["ATT1_SPEC","SMPU region attributes 1 (master structure)"],["ENABLED_R","Field `ENABLED` reader - Region enable: ‘0’: Disabled. A disabled region will never result in a match on the bus transfer address. ‘1’: Enabled."],["ENABLED_W","Field `ENABLED` writer - Region enable: ‘0’: Disabled. A disabled region will never result in a match on the bus transfer address. ‘1’: Enabled."],["NS_R","Field `NS` reader - Non-secure: ‘0’: Secure (secure accesses allowed, non-secure access NOT allowed). ‘1’: Non-secure (both secure and non-secure accesses allowed)."],["NS_W","Field `NS` writer - Non-secure: ‘0’: Secure (secure accesses allowed, non-secure access NOT allowed). ‘1’: Non-secure (both secure and non-secure accesses allowed)."],["PC_MASK_0_R","Field `PC_MASK_0` reader - This field specifies protection context identifier based access control for protection context ‘0’."],["PC_MASK_15_TO_1_R","Field `PC_MASK_15_TO_1` reader - This field specifies protection context identifier based access control. Bit i: protection context i+1 enable. If ‘0’, protection context i+1 access is disabled; i.e. not allowed. If ‘1’, protection context i+1 access is enabled; i.e. allowed."],["PC_MASK_15_TO_1_W","Field `PC_MASK_15_TO_1` writer - This field specifies protection context identifier based access control. Bit i: protection context i+1 enable. If ‘0’, protection context i+1 access is disabled; i.e. not allowed. If ‘1’, protection context i+1 access is enabled; i.e. allowed."],["PC_MATCH_R","Field `PC_MATCH` reader - This field specifies if the PC field participates in the ‘matching’ process or the ‘access evaluation’ process: ‘0’: PC field participates in ‘access evaluation’. ‘1’: PC field participates in ‘matching’. ‘Matching’ process. For each protection structure, the process identifies if a transfer address is contained within the address range. This identifies the ‘matching’ regions. ‘Access evaluation’ process. For each protection structure, the process evaluates the bus transfer access attributes against the access control attributes. Note that it is possible to define different access control for multiple protection contexts by using multiple protection structures with the same address region and PC_MATCH set to ‘1’."],["PC_MATCH_W","Field `PC_MATCH` writer - This field specifies if the PC field participates in the ‘matching’ process or the ‘access evaluation’ process: ‘0’: PC field participates in ‘access evaluation’. ‘1’: PC field participates in ‘matching’. ‘Matching’ process. For each protection structure, the process identifies if a transfer address is contained within the address range. This identifies the ‘matching’ regions. ‘Access evaluation’ process. For each protection structure, the process evaluates the bus transfer access attributes against the access control attributes. Note that it is possible to define different access control for multiple protection contexts by using multiple protection structures with the same address region and PC_MATCH set to ‘1’."],["PR_R","Field `PR` reader - Privileged read enable: ‘0’: Disabled (privileged, read accesses are NOT allowed). ‘1’: Enabled (privileged, read accesses are allowed). Note that this register is constant ‘1’; i.e. privileged read accesses are ALWAYS allowed."],["PW_R","Field `PW` reader - Privileged write enable: ‘0’: Disabled (privileged, write accesses are NOT allowed). ‘1’: Enabled (privileged, write accesses are allowed)."],["PW_W","Field `PW` writer - Privileged write enable: ‘0’: Disabled (privileged, write accesses are NOT allowed). ‘1’: Enabled (privileged, write accesses are allowed)."],["PX_R","Field `PX` reader - Privileged execute enable: ‘0’: Disabled (privileged, execute accesses are NOT allowed). ‘1’: Enabled (privileged, execute accesses are allowed). Note that this register is constant ‘0’; i.e. privileged execute accesses are NEVER allowed."],["R","Register `ATT1` reader"],["REGION_SIZE_R","Field `REGION_SIZE` reader - This field specifies the region size: ‘7’: 256 B region (8 32 B subregions) Note: this field is read-only."],["UR_R","Field `UR` reader - User read enable: ‘0’: Disabled (user, read accesses are NOT allowed). ‘1’: Enabled (user, read accesses are allowed). Note that this register is constant ‘1’; i.e. user read accesses are ALWAYS allowed."],["UW_R","Field `UW` reader - User write enable: ‘0’: Disabled (user, write accesses are NOT allowed). ‘1’: Enabled (user, write accesses are allowed)."],["UW_W","Field `UW` writer - User write enable: ‘0’: Disabled (user, write accesses are NOT allowed). ‘1’: Enabled (user, write accesses are allowed)."],["UX_R","Field `UX` reader - User execute enable: ‘0’: Disabled (user, execute accesses are NOT allowed). ‘1’: Enabled (user, execute accesses are allowed). Note that this register is constant ‘0’; i.e. user execute accesses are NEVER allowed."],["W","Register `ATT1` writer"]]});