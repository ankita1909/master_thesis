initSidebarItems({"struct":[["HOST_RTIMER_SPEC","Host Retry Timer Setup Register"],["R","Register `HOST_RTIMER` reader"],["RTIMER_R","Field `RTIMER` reader - These bits are used to specify the retry time in this register. The retry timer is activated when token sending starts while the RETRY bit of Host Control 2 Register (HOST_CTL2) is ‘1’. The retry time is then decremented by one when a 1-bit transfer clock (12 MHz in the full-speed mode) is output. When the retry timer reaches 0, the target token is sent, and processing ends. If a token retry occurs in the EOF area, the retry timer is stopped until SOF sending is ended. After SOF sending has been completed, the retry timer restarts with the value that is set when the timer stopped."],["RTIMER_W","Field `RTIMER` writer - These bits are used to specify the retry time in this register. The retry timer is activated when token sending starts while the RETRY bit of Host Control 2 Register (HOST_CTL2) is ‘1’. The retry time is then decremented by one when a 1-bit transfer clock (12 MHz in the full-speed mode) is output. When the retry timer reaches 0, the target token is sent, and processing ends. If a token retry occurs in the EOF area, the retry timer is stopped until SOF sending is ended. After SOF sending has been completed, the retry timer restarts with the value that is set when the timer stopped."],["W","Register `HOST_RTIMER` writer"]]});