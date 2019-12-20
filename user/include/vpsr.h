/*
 * vpsr.h
 *
 *  Created on: 19 janv. 2016
 *      Author: XIATAN
 */

#ifndef VPSR_H_
#define VPSR_H_

extern "C" void VM_IRQ_En();
extern "C" void VM_IRQ_Dis();

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

#endif /* VPSR_H_ */
