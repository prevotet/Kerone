/*!
  \file vgic.cc

   \date 20 mars 2014
   \author XIATAN
 */

// Custom BSP

#include "private_timer.h"


// Xilinx BSP Files
#include "xttcps.h"
#include "xscugic.h"
#include "xstatus.h"
#include "xil_io.h"
#include "performance.h"
#include "xuartps_hw.h"

#include "ec.h"
#include "vgic.h"
#include "memory.h"
#include "config.h"
#include "xil_types.h"
#include "custom_api.h"

#include "xaxidma.h"
#include "xparameters.h"
#include "xdebug.h"
#include "xdevcfg.h"
#include "xil_types.h"

#define MEM_BASE_ADDR       0x2000000//0xC0000000


#define DMA_IN1		XPAR_DMA_IN1_DEVICE_ID
#define DMA_IN2     XPAR_DMA_IN2_DEVICE_ID
#define DMA_OUT     XPAR_DMA_OUT_DEVICE_ID

//#define TX_BUFFER_BASE      (MEM_BASE_ADDR + 0x00010000)//0x00100000)
//#define RX_BUFFER_BASE      (MEM_BASE_ADDR + 0x00030000)//0x00300000)
#define TX_BUFFER_In1      (MEM_BASE_ADDR + 0x00010000)
#define TX_BUFFER_In2      (MEM_BASE_ADDR + 0x00020000)
#define RX_BUFFER_Out      (MEM_BASE_ADDR + 0x00030000)

#define N_samples		4

XAxiDma AxiDma_In1, AxiDma_In2, AxiDma_Out;

mword Value_Out0[N_samples], Value_Out1[N_samples];

XTtcPs_Config *tmrConfig[2];
XTtcPs tmrInst[2]={0};

XScuGic_Config *gicConfig;
XScuGic gicInst;

#if IS_PM_MEASURE
extern PMKernel PM_FLAG;
#endif

extern int IRQ_ID;

void kerone_tmrHandler(void* data);
void ucos_tmrHandler(void* data);
void rtos_tmrHandler(void* data);
void PRR_monitor_irqHandler(void* data);
void DEMO_UART_Init();

typedef struct {
	u32 OutputHz;	/* Output frequency */
	u16 Interval;	/* Interval value */
	u8 Prescaler;	/* Prescaler value */
	u16 Options;	/* Option settings */
} TmrCntrSetup;

TmrCntrSetup SettingsTable[2] = {
	{0, 0, 0, 0},	/* Ticker timer counter initial setup, only output freq */
	{0, 0, 0, 0},
};



void TTC_TmrCfg(int tmr_nbr, int freq){
	TmrCntrSetup *TimerSetup = &SettingsTable[tmr_nbr];

	if(!freq) return;

	TimerSetup->OutputHz = freq;

	XTtcPs_CalcIntervalFromFreq(&tmrInst[tmr_nbr], TimerSetup->OutputHz,&(TimerSetup->Interval), &(TimerSetup->Prescaler));
	XTtcPs_SetPrescaler(&tmrInst[tmr_nbr], TimerSetup->Prescaler);
	XTtcPs_SetInterval(&tmrInst[tmr_nbr], TimerSetup->Interval);

	xil_printf("TTC%d: OutputHz = %d; Options = %x; Prescaler = %d; Interval = %d \n\r", tmr_nbr,
				TimerSetup->OutputHz,  TimerSetup->Options,
				TimerSetup->Prescaler, TimerSetup->Interval);
}

void TTC_TmrInit(int tmr_nbr){
	u32 xStatus;

	TmrCntrSetup *TimerSetup = &SettingsTable[tmr_nbr];

	tmrConfig[tmr_nbr] = XTtcPs_LookupConfig(tmr_nbr);

	if(tmrConfig[tmr_nbr] == NULL) print("timer get config error!!\n\r");

	xStatus = XTtcPs_CfgInitialize(&tmrInst[tmr_nbr], tmrConfig[tmr_nbr], tmrConfig[tmr_nbr]->BaseAddress);
	if(xStatus != XST_SUCCESS) print("timer initialize error!!\n\r");

	TimerSetup->Options |= (XTTCPS_OPTION_INTERVAL_MODE | XTTCPS_OPTION_WAVE_DISABLE);
	XTtcPs_SetOptions(&tmrInst[tmr_nbr], TimerSetup->Options);

	TTC_TmrCfg(tmr_nbr, TimerSetup->OutputHz);

	xil_printf("TTC%d: OutputHz = %d; Options = %x; Prescaler = %d; Interval = %d \n\r", tmr_nbr,
			TimerSetup->OutputHz,  TimerSetup->Options,
			TimerSetup->Prescaler, TimerSetup->Interval);
}



void GIC_Init(){
	u32 xStatus;
	u8 int_priority, int_trgr;

	gicConfig = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
	if(gicConfig == NULL) print("GIC get config error!!\n\r");
	xStatus = XScuGic_CfgInitialize(&gicInst, gicConfig, gicConfig->CpuBaseAddress);
	if(xStatus != XST_SUCCESS) print("GIC initialize error!!\n\r");

	/* Set priority levels to interrupts:
	 *  0 is highest priority, 0xF8 (248) is lowest. There are 32 priority levels
	 *	supported with a step of 8. Hence the supported priorities are
	 *	0, 8, 16, 32, 40 ..., 248.
	 *
	 *	By default, all interrupts(0 - 93) are set to priority 128
	 */
	for(int i = 0; i < 93; i++){
		XScuGic_GetPriorityTriggerType(&gicInst, i, &int_priority, &int_trgr);
		XScuGic_SetPriorityTriggerType(&gicInst, i, IRQPriorityDefault, int_trgr);
	}
	XScuGic_SetPriorityTriggerType(&gicInst, ktimer_id, 	IRQPriorityKernel, 	3); //b11: Rising edge sensitive
	XScuGic_SetPriorityTriggerType(&gicInst, vtimer_id, 	IRQPriorityVM, 		3); //b11: Rising edge sensitive
	XScuGic_SetPriorityTriggerType(&gicInst, rtos_timer_id, IRQPriorityRTOS, 	3); //b11: Rising edge sensitive

	/* Set priority mask:
	 *  	by default, mask is set as the lowest level to permit all IRQs
	 */
	Gic_PriorityMask = IRQPriorityMaskDefault;

	/* Register all IRQ routine services (IRQ Handlers) */
	xStatus = XScuGic_Connect(&gicInst, ktimer_id, kerone_tmrHandler, &tmrInst[0]);
	if(xStatus != XST_SUCCESS) print("GIC connect Private Timer handler error!!\n\r");

	xStatus = XScuGic_Connect(&gicInst, vtimer_id, ucos_tmrHandler, 0);
	if(xStatus != XST_SUCCESS) print("GIC connect TTC0 handler error!!\n\r");

	xStatus = XScuGic_Connect(&gicInst, rtos_timer_id, rtos_tmrHandler, 0);
	if(xStatus != XST_SUCCESS) print("GIC connect TTC1 handler error!!\n\r");

	xStatus = XScuGic_Connect(&gicInst, PRR_monitor_irq, PRR_monitor_irqHandler, 0);
	if(xStatus != XST_SUCCESS) print("GIC connect PRR monitor error!!\n\r");
}

void irq_init(){
	print("\n\r");
	/* Initialize GPOS Timer (TTC 0) */
	TTC_TmrInit(0);
	XTtcPs_EnableInterrupts(&tmrInst[0], XTTCPS_IXR_INTERVAL_MASK);

	/* Initialize RTOS Timer (TTC 1)*/
	TTC_TmrInit(1);
	XTtcPs_EnableInterrupts(&tmrInst[1], XTTCPS_IXR_INTERVAL_MASK);

	/* Initialize Kerone Timer (Private Timer) */
	Private_TmrCfg(ktimer_freq);
	Private_TmrStart();

	/* Initialize GIC */
	GIC_Init();
	XScuGic_Enable(&gicInst, ktimer_id); // Enable the global timer (for kerone kernel)

#if DEMO_UART
	DEMO_UART_Init();
#endif

	print("GIC config is done.\n\r");

}

void Default_Handler(void* data){
	print(" EEROR: Undefined IRQ signal! \n\r");
	Ec::current->ec_virq_handler(IRQ_ID);
}

/*
 *  TTC 0 interrupt handler: ID = 42
 *  	This timer is global tick. It's used for kerone kernel ONLY.
 */
void kerone_tmrHandler(void* data){
	//print("+");
	Private_TmrIntClr(); //Clear IRQ
	Ec::sys_yield();
#if IS_PM_MEASURE
	PM_FLAG = world_switch;
#endif

	//while(1);
	//xil_printf("%c",XUartPs_RecvByte(XPAR_XUARTPS_0_BASEADDR));

}

/*
 * Private timer interrupt handler: ID = 29
 * 		This timer is user-sensitive timer. It's used for ucos ONLY.
 * 			1. Save   (ucos)Ec->regs.pc  at  Ec->regs.lr
 * 			2. Change (ucos)Ec->regs.pc  to  Ec->irs
 * 			3. Disable Private Timer in SCU
 *
 * 		This handler now can be used as UNIVERSAL IRQ handler to insert IRQ to VMs
 */
void ucos_tmrHandler(void* data){
	u32 StatusEvent;

	//print(" | ");

	/*  Clear the ttc IRQ status, or interrupt will be continuously triggered  */
	StatusEvent = XTtcPs_GetInterruptStatus((XTtcPs *)&tmrInst[0]);
	XTtcPs_ClearInterruptStatus((XTtcPs *)&tmrInst[0], StatusEvent);

	Ec::current->ec_virq_handler(vtimer_id);
#if IS_PM_MEASURE
	PM_FLAG = virq_entry;
#endif
}

void rtos_tmrHandler(void* data){
	u32 StatusEvent;

	//print(" # ");
	/*  Clear the ttc IRQ status, or interrupt will be continuously triggered  */
	StatusEvent = XTtcPs_GetInterruptStatus((XTtcPs *)&tmrInst[1]);
	XTtcPs_ClearInterruptStatus((XTtcPs *)&tmrInst[1], StatusEvent);

	/* Invoke RTOS */
	Ec::RTOS_enqueue();

	/* Handle RTOS Timer */
	Ec::current->ec_virq_handler(rtos_timer_id);
}


#if IS_PRRMONITOR_MEASURE
extern bool prr_irq;
#endif

void PRR_monitor_irqHandler(void* data){

#if IS_PRRMONITOR_MEASURE
	prr_irq = true;
#endif

	//print("P");
	Ec::Service_enqueue(1);
	*(mword*)(0x10000000) = 0;
	Ec::current->ec_virq_handler(IRQ_ID);
}

/*
 *  Update the frequency of certain timer.
 *  TTC 0 timer (ID  = 42) : Guest OS
 *  TTC 1 Timer (ID  = 43) : RTOS
 */
void vtimer_config(mword id, mword freq){
	switch(id){
		/* The code to control Private timer (ID = 29) is from uC/OS-II */
		case vtimer_id:  // TTC 0 (ID = 42)
			TTC_TmrCfg(0, freq);
			XTtcPs_Start(&tmrInst[0]);
			break;

		case rtos_timer_id: // TTC 1 (ID = 43)
			TTC_TmrCfg(1, freq);
			XTtcPs_Start(&tmrInst[1]);
			break;

		default:
			xil_printf("Timer config error: ID = %d \n\r", id);
	}
}



int dma_init(u32 DeviceId, XAxiDma * InstancePtr)
{
	XAxiDma_Config *CfgPtr;
	int Status;

	CfgPtr = XAxiDma_LookupConfig(DeviceId);
	if (!CfgPtr) {
		xil_printf("No config found for %d\r\n", DeviceId);
		return XST_FAILURE;
	}

	Status = XAxiDma_CfgInitialize(InstancePtr, CfgPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}

	if(XAxiDma_HasSg(InstancePtr)){
		xil_printf("Device configured as SG mode \r\n");
		return XST_FAILURE;
	}

	XAxiDma_IntrDisable(InstancePtr, XAXIDMA_IRQ_ALL_MASK,
						XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(InstancePtr, XAXIDMA_IRQ_ALL_MASK,
						XAXIDMA_DMA_TO_DEVICE);


	return XST_SUCCESS;
}

int test_dma(mword id,/*mword N_samples, */mword Value_In1[], mword Value_In2[])
{
	mword BYTES_TO_TRANSFER = N_samples;


	dma_init(DMA_IN1, &AxiDma_In1);
	dma_init(DMA_IN2, &AxiDma_In2);
	dma_init(DMA_OUT, &AxiDma_Out);

	u8 *TxBufferPtr_In1= (u8 *)TX_BUFFER_In1;
	u8 *TxBufferPtr_In2= (u8 *)TX_BUFFER_In2;
	u8 *RxBufferPtr_Out= (u8 *)RX_BUFFER_Out;

    for(int Index = 0; Index < N_samples; Index++) {
    	TxBufferPtr_In1[Index] = Value_In1[Index];//Value_In1--;
    	TxBufferPtr_In2[Index] = Value_In2[Index];//Value_In2--;
    	RxBufferPtr_Out[Index] = 0;
    }

    Xil_DCacheFlushRange((u32)TxBufferPtr_In1, BYTES_TO_TRANSFER);
    Xil_DCacheFlushRange((u32)TxBufferPtr_In2, BYTES_TO_TRANSFER);
    Xil_DCacheFlushRange((u32)RxBufferPtr_Out, BYTES_TO_TRANSFER);

	int Status = XAxiDma_SimpleTransfer(&AxiDma_In1 ,(u32)TxBufferPtr_In1, BYTES_TO_TRANSFER, XAXIDMA_DMA_TO_DEVICE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = XAxiDma_SimpleTransfer(&AxiDma_In2 ,(u32)TxBufferPtr_In2, BYTES_TO_TRANSFER, XAXIDMA_DMA_TO_DEVICE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = XAxiDma_SimpleTransfer(&AxiDma_Out ,(u32) RxBufferPtr_Out, BYTES_TO_TRANSFER, XAXIDMA_DEVICE_TO_DMA);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	while (XAxiDma_Busy(&AxiDma_In1,XAXIDMA_DMA_TO_DEVICE)) {
				/* Wait */
		}

	while (XAxiDma_Busy(&AxiDma_In2,XAXIDMA_DMA_TO_DEVICE)) {
				/* Wait */
		}

	while (XAxiDma_Busy(&AxiDma_Out,XAXIDMA_DEVICE_TO_DMA)) {
				/* Wait */
		}

    Xil_DCacheInvalidateRange((u32)RxBufferPtr_Out, BYTES_TO_TRANSFER);

    xil_printf("\r\nDone sending data\r\n");

    if(id == 1)
    {
    	for(int Index = 0; Index < N_samples; Index ++) {

    		Value_Out0[Index] = RxBufferPtr_Out[Index];
    		xil_printf("dma_in1 %d	dma_in2 %d	dma_out %d	\r\n",
    		    			TxBufferPtr_In1[Index], TxBufferPtr_In2[Index], RxBufferPtr_Out[Index]);
    	}
    }


    if(id == 2)
    {
    	for(int Index = 0; Index < N_samples; Index ++) {

    		Value_Out1[Index] = RxBufferPtr_Out[Index];
    		xil_printf("dma_in1 %d	dma_in2 %d	dma_out %d\r\n",
    		    			TxBufferPtr_In1[Index], TxBufferPtr_In2[Index], RxBufferPtr_Out[Index]);
    	}
    }

    if(id == 3)
    {
    	for(int Index = 0; Index < N_samples; Index ++) {

    	    xil_printf("dma_in1 %d	dma_in2 %d	dma_out %d\r\n",
    	    		    	TxBufferPtr_In1[Index], TxBufferPtr_In2[Index], RxBufferPtr_Out[Index]);
    	  }
    }

    return 0;
}


void dma_config(mword id,/* mword N_samples, */mword Value_In1[], mword Value_In2[])
{

	switch(id){
		case 1:
			test_dma(1, Value_In1, Value_In2);
			break;
		case 2:
			test_dma(2, Value_In1, Value_In2);
			break;
		case 3:
			test_dma(3, Value_Out0, Value_Out1);
			break;
		default:
			print("Invalid operation! \n\r");
			break;
		}

}


/* Insert Pending flag in virtual Pending States */
void vGic_InsertPending(vGicContext* ctx, int irq_id){
	mword Mask;

	Mask = 0x00000001 << (irq_id % 32);
	ctx->InterruptPendingState[irq_id / 32] |= Mask ;
}

/* Generate an IRQ (immediately) */
void vGic_SetPending(int irq_id){
	Gic_SetPending(&gicInst,irq_id);
}


void vGic_Switch(vGicContext *prev, vGicContext *next){
	mword temp_flag[3];
	/*--------------------------------------------------------------------------------
	 * Change the virtual timer frequency for next EC.
	 *	 (1) Note that virtual timer is fixed by using private timer (ID=29)
	 *	 (2) If frequency need to be updated:
	 *	  	 next EC uses virtual timer AND freq is different
	 *	 (3) If next EC doesn't use virtual timer OR if the new frequency is the same:
	 * 		 get over directly
	 *--------------------------------------------------------------------------------
	 */
	if( (next->VirtualTimerID == prev->VirtualTimerID) &
		(next->VirtualTimerFreq != 0) &
		(next->VirtualTimerFreq != prev->VirtualTimerFreq) )
		vtimer_config(vtimer_id, next->VirtualTimerFreq);

	/*--------------------------------------------------------------------------------
     * Change the interrupt mask
     *--------------------------------------------------------------------------------*/
//	/* Save current priority mask */
//	prev->InterruptPriorityMask = Gic_PriorityMask;
//	/* Resume next priority mask */
//	Gic_PriorityMask = next->InterruptPriorityMask;

	/*--------------------------------------------------------------------------------
	 * Change the interrupt enable states
	 *--------------------------------------------------------------------------------*/
	/* Save current enable state */
	Gic_GetEnableStateGroup( &gicInst, &(prev->InterruptEnableState[0]) );
	/* Resume next enable state */
	Gic_SetEnableGroup( &gicInst, &(next->InterruptEnableState[0]) );
	/* Clear interrupts unused by next EC */
	for(int i=0; i<3; i++)
		temp_flag[i] = prev->InterruptEnableState[i] &
			(~(next->InterruptEnableState[i]) ) & (~ReserveIrqMask[i]);
	Gic_ClearEnableGroup( &gicInst, &temp_flag[0]);

	/*--------------------------------------------------------------------------------
	 * Change the pending states
	 *--------------------------------------------------------------------------------*/
	/* Check if there is any previous pendings */
//	if( mfcp(XREG_CP15_INTERRUPT_STATUS) & 0x80){
//		/* Save previous pending state */
//		Gic_GetPendingStateGroup( &gicInst, &(prev->InterruptPendingState[0]) );
//		/* Clear previous pendings */
//		for(int i=0; i<3; i++)
//			//temp_flag[i] = prev->InterruptPendingState[i] & (~ReserveIrqMask[i]);
//			temp_flag[i] = 0xffffffff & (~ReserveIrqMask[i]);
//		Gic_ClearPendingGroup( &gicInst, &temp_flag[0]);
////	}
////	else
		for(int i=0; i<3; i++)
			prev->InterruptPendingState[i] = 0;
//	/* Resume next pending state */
	Gic_SetPendingGroup( &gicInst, &(next->InterruptPendingState[0]) );

}

void vGIC_GetPriority(int virq_id, u8 *Priority){
	Gic_GetPriority(&gicInst, virq_id, Priority);
}

/*
 * 	Set virtual IRQ state to:
 * 		2'b00: inactive
		2'b01: pending
		2'b10: active
 */
void vGic_SetInterruptState( vGicContext * vgctx, int interrupt_id, IRQState state){

	vgctx->InterruptState[interrupt_id] = state;

	switch(state){
	case 0: // EOI: set to inactive
		//XScuGic_Enable(&gicInst, interrupt_id);
		vgctx->PendingID = 0;
		vgctx->ActiveID  = 0;
		//xil_printf("enable %d \n\r", interrupt_id);
		break;
	case 1: // IRQ: set to pending
		//XScuGic_Disable(&gicInst, interrupt_id);
		vgctx->PendingID = interrupt_id;
		//xil_printf("disable %d \n\r", interrupt_id);
		break;
	case 2: // ACK: set to active
		vgctx->PendingID = 0;
		vgctx->ActiveID  = interrupt_id;
		break;
	default:
		break;
	}
}

void vGIC_SetInterruptRoutineEntry( vGicContext * vgctx, mword value){
	vgctx->InterruptRoutineEntry = value;
}

void vGIC_EnableInterrupt(int virq_id){
	if(virq_id != ktimer_id)
		XScuGic_Enable(&gicInst, virq_id);
}

void vGIC_DisableInterrupt(int virq_id){
	if(virq_id != ktimer_id)
		XScuGic_Disable(&gicInst, virq_id);
}

int vGIC_ACK(vGicContext * vgctx){
	int vACK;

	//Return vACK with the currently-pending vIRQ
	vACK = vgctx->PendingID;
	// Set state from pending to active (2)
	vGic_SetInterruptState(vgctx, vACK, Active);

	return vACK;
}

void vGIC_EOI(vGicContext * vgctx, int virq_id){

	// Set state from active to inactive (0)
	vGic_SetInterruptState(vgctx, virq_id, Inactive);
}


#if DEMO_UART

extern int demo_cmd_handler(char *ptr);
extern char UART_RX_Buffer[32];
extern int stat;
void Uart_Handler(void *data){
	int cmd_cnt;
	cmd_cnt = XUartPs_IntrHandler();
	print(&UART_RX_Buffer[0]);
	if(!cmd_cnt){
		print("(demo error)\n\r");
		stat = 4;
		while(1);
	}
	else
		demo_cmd_handler(&UART_RX_Buffer[4]);
}


void DEMO_UART_Init(){
	XUartPs_Init();

	/* Set UART IRQ as highest priority  */
	XScuGic_SetPriorityTriggerType(&gicInst, XPS_UART1_INT_ID, IRQPriorityKernel, 1);

	int xStatus = XScuGic_Connect(&gicInst, XPS_UART1_INT_ID, Uart_Handler, 0);
	if(xStatus != XST_SUCCESS) print("GIC connect UART handler error!!\n\r");

	XScuGic_Enable(&gicInst, XPS_UART1_INT_ID);
}
#endif
