#include "xparameters.h"
#include "xuartps_hw.h"

#ifdef __cplusplus
extern "C" {
#endif
void outbyte(char c); 

#define STDIN_BASEADDRESS  0xE0001000
#define STDOUT_BASEADDRESS 0xE0001000

#ifdef __cplusplus
}
#endif 

void outbyte(char c) {
	 XUartPs_SendByte(STDOUT_BASEADDRESS, c);
}
