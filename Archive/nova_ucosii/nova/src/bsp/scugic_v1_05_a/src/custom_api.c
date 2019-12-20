/*
 * custom_api.c
 *
 *  Created on: 14 sept. 2015
 *      Author: XIATAN
 */

#include "../../include/xparameters.h"
#include "../../include/xil_types.h"
#include "../../include/xil_assert.h"
#include "xscugic.h"


void Gic_SetPending(XScuGic *InstancePtr, u32 Int_Id)
{
	u32 Mask;

	//SPI or PPI
	if(Int_Id > 15){
		Mask = 0x00000001 << (Int_Id % 32);
		XScuGic_DistWriteReg(InstancePtr, XSCUGIC_PENDING_SET_OFFSET +
						((Int_Id / 32) * 4), Mask);
	}
	//SGI
	else
		XScuGic_SoftwareIntr(InstancePtr, Int_Id, 1);
}

void Gic_ClearPending(XScuGic *InstancePtr, u32 Int_Id)
{
	u32 Mask;

	Mask = 0x00000001 << (Int_Id % 32);
	XScuGic_DistWriteReg(InstancePtr, XSCUGIC_PENDING_CLR_OFFSET +
					((Int_Id / 32) * 4), Mask);
}

/*
 *  PendState[] holds the state of all interrupts(0-92).
 *  Gic_SetPendingGroup() set pendings to the corresponding IRQs in PendState
 */
void Gic_SetPendingGroup(XScuGic *InstancePtr, u32 *PendState){
	int SGI_Flag = PendState[0] & 0xffff;
	int SGI_id = 0;

	for(int i=0; i<3; i++)
		if(PendState[i])
			XScuGic_DistWriteReg(InstancePtr, XSCUGIC_PENDING_SET_OFFSET + i*4, PendState[i]);

	//xil_printf("%x, %x, %x \n\r",PendState[0],PendState[1], PendState[2] );

	while(SGI_Flag){
		if(SGI_Flag & 0x1)
			XScuGic_SoftwareIntr(InstancePtr, SGI_id, 1);
		SGI_Flag = SGI_Flag >> 1;
		SGI_id++;
	}
}

/*
 * Note that currently there is no way to clear SGI
 * ( Writing 1 to corresponding ICDICPR(Clear-Pending) seems useless )
 */
void Gic_ClearPendingGroup(XScuGic *InstancePtr, u32 *ClearFlag){
	for(int i=0; i<3; i++)
		if(ClearFlag[i])
			XScuGic_DistWriteReg(InstancePtr, XSCUGIC_PENDING_CLR_OFFSET + i*4, ClearFlag[i]);
}

void Gic_GetPendingStateGroup(XScuGic *InstancePtr, u32 *PendState){
	for(int i=0; i<3; i++)
		PendState[i] = XScuGic_DistReadReg(InstancePtr, XSCUGIC_PENDING_SET_OFFSET + i*4);
}

void Gic_SetEnableGroup(XScuGic *InstancePtr, u32 *EnableState){
	for(int i=0; i<3; i++)
		if(EnableState[i])
			XScuGic_DistWriteReg(InstancePtr, XSCUGIC_ENABLE_SET_OFFSET + i*4, EnableState[i]);
}

void Gic_ClearEnableGroup(XScuGic *InstancePtr, u32 *DisableFlag){
	for(int i=0; i<3; i++)
		if(DisableFlag[i])
			XScuGic_DistWriteReg(InstancePtr, XSCUGIC_DISABLE_OFFSET + i*4, DisableFlag[i]);
}

void Gic_GetEnableStateGroup(XScuGic *InstancePtr, u32 *EnableState){
	for(int i=0; i<3; i++)
		EnableState[i] = XScuGic_DistReadReg(InstancePtr, XSCUGIC_ENABLE_SET_OFFSET + i*4);
}

void Gic_GetPriority(XScuGic *InstancePtr, u32 Int_Id, u8 *Priority){
	u32 RegValue;

	/* Determine the register to read to using the Int_Id */
	RegValue = XScuGic_DistReadReg(InstancePtr,
			XSCUGIC_PRIORITY_OFFSET_CALC(Int_Id));

	/* Shift and Mask the correct bits for the priority and trigger in the
	 * register */
	RegValue = RegValue >> ((Int_Id%4)*8);
	*Priority = RegValue & XSCUGIC_PRIORITY_MASK;
}

