/*
 * guest_os_vpsr.h
 *
 *  Created on: 20 janv. 2016
 *      Author: XIATAN
 */

#ifndef GUEST_OS_VPSR_H_
#define GUEST_OS_VPSR_H_

typedef struct{
	unsigned int IVC_bitmap;
	unsigned int IVC_message[8];
}IVC_Channel;

typedef struct{
	unsigned int	VCPSR_NA;
	unsigned int	VSPSR;
	int				MaskedIRQ;
	int				VACK;
	unsigned char	VEOI[96];
	IVC_Channel		IVCChn;
}VM_PSR;

#endif /* GUEST_OS_VPSR_H_ */
