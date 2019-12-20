#include "include/xparameters.h"
#include "include/xuartps_hw.h"

extern "C" {
void outbyte(char c); 
}

void outbyte(char c) {
	 XUartPs_SendByte(STDOUT_BASEADDRESS, c);
}
