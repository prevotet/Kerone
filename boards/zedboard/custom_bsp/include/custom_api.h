#ifndef CUSTOM_API_H
#define CUSTOM_API_H

#include "xscugic.h"
#include "xil_types.h"

void Gic_SetPending(XScuGic *InstancePtr, u32 Int_Id);
void Gic_ClearPending(XScuGic *InstancePtr, u32 Int_Id);
void Gic_SetPendingGroup(XScuGic *InstancePtr, u32 *PendState);
void Gic_ClearPendingGroup(XScuGic *InstancePtr, u32 *ClearFlag);
void Gic_GetPendingStateGroup(XScuGic *InstancePtr, u32 *PendState);
void Gic_SetEnableGroup(XScuGic *InstancePtr, u32 *EnableState);
void Gic_ClearEnableGroup(XScuGic *InstancePtr, u32 *DisableFlag);
void Gic_GetEnableStateGroup(XScuGic *InstancePtr, u32 *EnableState);
void Gic_GetPriority(XScuGic *InstancePtr, u32 Int_Id, u8 *Priority);

#endif /* CUSTOM_API_H */
