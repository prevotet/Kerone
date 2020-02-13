/*
 * ec.cc
 *
 *  Created on: 27 févr. 2014
 *      Author: XIATAN
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
//#include "D:/kernel_2017/boards/zedboard/kerone_bsp/ps7_cortexa9_0/libsrc/standalone_v6_2/src/xtime_l.h"
/*#include "bsp/include/private_timer.h"
#include "bsp/include/performance.h"
#include "bsp/include/xil_printf.h"
#include "bsp/ttcps_v1_01_a/src/xttcps.h"
#include "bsp/scugic_v1_05_a/src/xscugic.h"
#include "bsp/include/xstatus.h"
#include "bsp/include/xil_exception.h"
#include "bsp/include/xil_cache.h"
#include "cpu/cp15.h"*/

#include "ec.h"
#include "ptab.h"
#include "elf.h"
#include "bit.h"
#include "memory.h"
#include "print.h"
#include "config.h"

#include "msg.h"
#include "ualloc.h"

// BSP Xilinx Files
#include "private_timer.h"
#include "performance.h"
#include "xil_printf.h"
#include "xttcps.h"
#include "xscugic.h"
#include "xstatus.h"
#include "xil_exception.h"
#include "xil_cache.h"
#include "cp15.h"


//#include "ff.h"


//extern void XTime_SetTime(unsigned long long);



/*int i;
int Index;
int len;
u8 *TxBufferPtr= (u8 *)TX_BUFFER_BASE;
u8 *RxBufferPtr= (u8 *)RX_BUFFER_BASE;
u8 Value;*/



extern "C" XScuGic gicInst;
extern mword KERN_PDIR;
extern int IRQ_ID;

#if IS_PM_MEASURE
extern PMKernel PM_FLAG;
#endif
#if IS_PRRMONITOR_MEASURE
bool prr_irq = false;
mword high_val = 0;
mword low_val = 0;
mword average_val = 0;
mword pmdata_count = 0;

void PM_record(unsigned int time)
{
	if((low_val > time) | (low_val == 0) ) low_val = time;
	if(high_val < time) high_val = time;
	average_val = average_val + time;

	pmdata_count++;

	//xil_printf("%d ", time);

	if(pmdata_count >= 4000){
		xil_printf("\n\r Evaluation (%d sampls): max:%d min:%d, avr:%d \n\r",
				pmdata_count, high_val, low_val, average_val/4000);
		while(1);
	}
}
#endif

/*
 * Initialize all static EC class members
 */
Ec * Ec::current = 0; // Static data member current is default as 0
Ec * Ec::list[Ec::priorities]={0};
Ec * Ec::vm_list[Ec::max_vm_number];
Ec * Ec::suspend_list;
Ec * Ec::RTOS;

unsigned Ec::prio_top;
int Ec::vmid_counter;
int Ec::hw_mgr_id;

//int cnt1, cnt2 = 0;

/*
 * Constructor of Ec class, only used by bootstrap().
 *
 * f  : pointer of Ec::revoke();
 * mbi: information of user module;
 *
 * The first Ec object is to launch user module.
 *
 */
Ec::Ec (void (*f)(), mword mbi) : cont (f)
{
	regs.r0    = mbi;
	regs.cpsr  = USER_PSR_DEFAULT;
	prio	   = 0;	 // At lowest priority level
	ttbr0	   = (mword)&KERN_PDIR;
	id		   = 1;
	asid	   = (1<<8) | 1;;
	vmid_counter = 1;
	vm_list[id] = this;


	vGicState.VMInterruptPriorityLevel = IRQPriorityVM;

	xil_printf("(VMID=%d)\n\r", id);

	enqueue();
}

/*
 * Another constructor of Ec class, used by syscall_ec_create().
 * By using this constructor, the entry and stack of user code is determined.
 * Kernel use ec_pc and ec_sp to enter the user thread.
 */

Ec::Ec (mword ec_pc, mword ec_sp, int ec_prio)
{
	vmid_counter++;

	cont 	  = ret_user_sysexit;
    regs.cpsr = USER_PSR_DEFAULT;
    regs.pc   = ec_pc;
    regs.sp   = ec_sp;
    prio	  = ec_prio;
    ttbr0	  = (mword)&KERN_PDIR;
    id		  = vmid_counter;
    asid	  = (1<<8) | 1;
    vm_list[id] = this;

    vGicState.VMInterruptPriorityLevel = IRQPriorityThread;

    xil_printf("(VMID=%d)\n\r", id);

}



/*
 *  Ec constructor for guest OS. In this scenario sp is always initially
 *  0 for guest OS. ec_ttbr0 is the BASE ADDRESS of OS shadow pdir table
 *
 *  constructor_type defines the type of gust OS:
 *   0: general guest OS
 *   1: Real-time guest OS (RTOS)
 */

Ec::Ec(mword ec_pc, int ec_prio, mword ec_ttbr0, int constructor_type)
{
	vmid_counter++;

	cont 	  = ret_user_sysexit;
	regs.cpsr = USER_PSR_DEFAULT
	regs.pc   = ec_pc;
	regs.sp   = 0;
	ttbr0	  = ec_ttbr0;
	prio      = ec_prio;
	id		  = vmid_counter;
	asid	  = (id<<8) | id;
	vm_list[id] = this;

	switch(constructor_type){
	case 0:
		vGicState.VirtualTimerID = vtimer_id;
		vGicState.VMInterruptPriorityLevel = IRQPriorityVM;
		break;
	case 1:
		vGicState.VirtualTimerID = rtos_timer_id;
		vGicState.VMInterruptPriorityLevel = IRQPriorityRTOS;
		RTOS = this;
		break;
	default:
		panic("ERROR: Unknown guest OS type! \n\r");
		break;
	}

	xil_printf("(VMID=%d)\n\r", id);
}

/*
 * ret_user_sysexit() is to return to user space to the point where previous
 * system call is made. We have saved the interrupt scene in ec->regs, to return
 * we should pop ec->regs.
 *
 * Note that when we enter ret_user_sysexit(), ec is:
 * 		-------------------------
 * 		cont
 * 		-------------------------
 * 		regs.r0-r12		user
 * 		regs.sp			sp_usr
 * 		regs.lr			lr_sur
 * 		regs.pc			pc_usr-4
 * 		regs.cpsr		cpsr_usr
 * 		-------------------------
 * 		prev
 * 		-------------------------
 * 		next
 * 		-------------------------
 * For regs.pc and regs.cpsr, we use RFE instruction so that then can be popped together.
 */
void Ec::ret_user_sysexit()
{
	mword regs_addr = reinterpret_cast<mword>( & current->regs );

#if IS_KERNEL_CRITICAL_MEASURE
	timeprint_low(PM_FLAG, PM_TimerCounter);
#endif
#if IS_PRRMONITOR_MEASURE
	if(prr_irq == true){
		PM_record(Xil_In32(GLOBAL_TMR_BASEADDR+GTIMER_COUNTER_LOWER_OFFSET));
		prr_irq = false;
	}
#endif

	asm volatile (	"ldr 	sp, %0;"
					"ldmia 	sp, {r0-r12,sp,lr}^;"
					"add	sp, sp, #0xf<<2;"
					"rfe	sp!"
					:
					:"m"(regs_addr)
					:
			);
}

/*
 * 1) To simplify situation, we assume the registers are:
 * 			regs.r0 = elf_pointer;  --multiboot info
 * 			regs.cpsr = PSR_USER
 * 2) We also assume that mbi holds physical address of user code elf header
 * 3) We ignore the ph->count(number of program headers), for now we only use
 * 	  one user application
 */
void Ec::root_invoke()
{
		print("\n\rEc::root_invoke: Start  \n\r");
		// remap elf header
		mword elf_pointer = current->regs.r0;
	    Eh * e = static_cast<Eh *>(Ptab::remap (elf_pointer));
	    if (e->ei_magic != 0x464c457f || e->ei_data != 1 || e->type != 2)
	        panic ("Ec::root_invoke: No ELF\n");

	    unsigned count = e->ph_count;

	    current->regs.pc = e->entry;

	    // remap program headers
	    Ph * p = static_cast<Ph *>(Ptab::remap (elf_pointer + e->ph_offset));

	    //2 program headers in user.elf: data and text
	    for (; count--; p++) {
	    	if (p->type == Ph::PT_LOAD) {

	    		print("Ec::root_invoke: begin to load program  \n\r");

	    		// To set the authority of program
	    		//unsigned attr = p->flags & Ph::PF_W ? 7 : 5;

	    		if (p->f_size != p->m_size || p->v_addr % PAGE_SIZE != p->f_offs % PAGE_SIZE)
	    			panic ("Ec::root_invoke: Bad ELF\n");


	    		mword user_phys = align_dn (p->f_offs + elf_pointer, PAGE_SIZE);
	    		mword user_virt = align_dn (p->v_addr, PAGE_SIZE);
	    		mword user_size = align_up (p->f_size, PAGE_SIZE);

	    		while (user_size) {
		    		Ptab::insert_mapping (user_virt, user_phys, 0);
	    			user_virt += PAGE_SIZE;
	    			user_phys += PAGE_SIZE;
	    			user_size -= PAGE_SIZE;
	    		}

	    		print("Ec::root_invoke: success to load user program  \n\r");
	    		//xil_printf("VMID(%d)\n\r", current->id);

	    	}
	    }

	    current->cont = ret_user_sysexit;

	    mtcp(XREG_CP15_CONTEXT_ID, current->asid);

	    ret_user_sysexit();

	    FAIL;

}

/*
 * Two SYSTEM CALL methods:
 * 		1. call number given by r0:
 * 			-------------------
 * 			r0 = call number
 * 			swi
 * 			-------------------
 *
 * 		2. call number included in swi instruction (immediate number):
 * 			-------------------
 * 			swi call_number
 * 			-------------------
 * */
void Ec::syscall_handler (uint8 swi_imm)
{
	mword value;
	int syscall_id = swi_imm? swi_imm : current->regs.r0;
	Ec * e_handler;

#if IS_KERNEL_CRITICAL_MEASURE
	PM_FLAG = svc_entry;
#endif

	switch (syscall_id) {
    case 0: //sys_create_ec
    	print ("	SYSCALL - sys_create_ec\n\r");
		sys_create_ec ();
    	break;

    case 1: //sys_yield
    	//print ("syscall - sys_yield\n\r");
    	sys_yield();
  	   	break;

    case 3: //DCache disable
        //print ("	SYSCALL - DCache disable\n\r");
    	Xil_DCacheDisable();
        break;

    case 4: //ICache disable
    	//print ("	SYSCALL - ICache disable\n\r");
    	Xil_ICacheDisable();
    	break;

    case 5: //DCache enable
    	//print ("	SYSCALL - DCache enable\n\r");
    	Xil_DCacheEnable();
    	break;

    case 6: //ICache enable
    	//print ("	SYSCALL - ICache enable\n\r");
    	Xil_ICacheEnable();
    	break;

    case 8: // Manage and control virtual IRQs
    	ec_virq_ctrl();
    	break;

    case 9: // Remap user space to USER_SPACE_REMAP position
    	print ("	SYSCALL - Remap user space\n\r");
    	sys_remap();
    	break;

    case 10:// Insert mapping for user space
    	print ("	SYSCALL - Insert mapping\n\r");
    	sys_insert_mapping();
    	break;

    case 11:// Control the virtual timer of guest OS
    	//print ("	SYSCALL - Register Timer of EC\n\r");
    	ec_vtimer_ctrl();
    	break;

    case 12: // Generate message box for user
    	print ("	SYSCALL - Create message boxes \n\r");
    	sys_create_messagebox();
    	break;

    case 13: // Post a message
    	print ("	SYSCALL - Post a message \n\r");
    	ec_mbox_post();
    	break;

    case 14: // Read a message
    	print ("	SYSCALL - Read a message \n\r");
    	ec_mbox_read();
    	break;

    case 15: //Create a shadow mapping for OS \n\r
    	print ("	SYSCALL - Create a shadow mapping \n\r");
    	sys_create_pdir();
    	break;

    case 16: //Create a guest OS EC
    	print ("	SYSCALL - Create a guest OS EC \n\r");
    	sys_create_guest_os(0);
    	break;

    case 17: //Reschedule all ECs
    	print ("	SYSCALL - Reschedule all ECs \n\r");
    	schedule();
    	break;

    case 18: /* Suspend EC(return re-entry position is enable)
    		  * Use the value of R1 as the suspended location, where the suspended
    		  * VM will be resumed for the next awaking
    		  */
    	//print ("	SYSCALL - Suspend EC \n\r");
    	value = current->regs.r1;
    	if(value)
    		current->regs.pc = value;
    	current->dequeue();
    	schedule();
    	break;

    case 19: // Register hw task manager
    	print ("	SYSCALL - Register hw task manager \n\r");
    	hw_mgr_id = current->id;
    	//Ptab::insert_section(current->ttbr0, PRECO_SADDR, PRECO_PHYS_ADDR, 0);
    	break;

    /*
     * This hyper call is only used by << HW Manager >>:
     * Insert fpga mapping (4K) for user:
     * (r1 = VM ID, r2 = virt addr, r3 = phys addr)
     */
    case 23:
    	Ptab::insert_shadow_mapping(vm_list[current->regs.r1]->ttbr0, current->regs.r2,
    								current->regs.r3, 2);
       	break;
    /*
     * This hyper call is only used by << HW Manager >>:
     * Change fpga mapping attribute(4K) for user:
     * (r1 = VM ID, r2 = virt addr, r3 = phys addr)
     */
    case 24:
    	e_handler = vm_list[current->regs.r1];
    	Ptab::set_page_attribute(e_handler->ttbr0, current->regs.r2,
    								current->regs.r3, e_handler->asid);
    	break;

    case 26: // Return VM's physical address
    	current->regs.r0 = Ualloc::virt2phys(current->ttbr0, current->regs.r1);
    	//xil_printf(" VM Virt %x --> %x \n\r",current->regs.r1, current->regs.r0 );
    	//while(1);
    	break;

    case 27: // Create a Real-Time OS
    	print ("	SYSCALL - Create a guest RTOS \n\r");
    	sys_create_guest_os(1);
    	break;

   case 28: // RTOS Idle
	    RTOS_dequeue();
	    break;

   case 30: // Inter-VM Commu Interrupt Send
	   	    // r1: Target Virtual Machine ID
	   	    // r2: IVC ID
	   	    // r3: Message
	   vm_list[current->regs.r1]->IVC_Channel_Send(current->regs.r2,current->regs.r3);
	   break;

   case 31: // Guest OS has a masked IRQ to be delivered
	   //vGic_SetPending(current->vpsr->MaskedIRQ);
	   ec_virq_handler(current->vpsr->MaskedIRQ);
	   current->vpsr->MaskedIRQ = 0;
	   break;

   case 32:
	   //sys_dma();
	   break;
   case 33:
	   sys_dma();
	   break;

#if IS_KERNEL_FUNCTION_MEASURE
   case 99: // Void syscall to measure performance

    	if(!current->regs.r1){
    		timeprint_low(svc_entry, PM_TimerCounter);
    		XTime_SetTime(0);
    	}
    	else
    		timeprint_svcexit(current->regs.r1);
    	break;

#endif
    default:
    	xil_printf ("syscall %d - unknown\n", syscall_id);
    	_exit(1);
    };

    ret_user_sysexit();

    UNREACHED;
}


void Ec::irq_handler() {
#if IS_KERNEL_FUNCTION_MEASURE
	XTime_SetTime(0);
#endif
	XScuGic_InterruptHandler(&gicInst);
#if IS_KERNEL_FUNCTION_MEASURE
	timeprint_low(PM_FLAG, PM_TimerCounter);
#endif
	ret_user_sysexit();
}


void Ec::enqueue() {
	if (prio > prio_top)
	    prio_top = prio;

	if (!list[prio])
		list[prio] = prev = next = this;
	else {
		next = list[prio];
		prev = list[prio]->prev;
		next->prev = prev->next = this;
	}

}


void Ec::dequeue(){
	/* Remove from queue list	*/
	if (list[prio] == this)
		list[prio] = next == this ? 0 : next;
	next->prev = prev;
	prev->next = next;
		//prev = next = 0;
	if(prio == prio_top){				/* prio == prio_top: prio_top declines */
		while (!list[prio_top] && prio_top)
			prio_top--;
	}

	/* Add to suspend list */
	if(!suspend_list)
		suspend_list = prev = next = this;
	else{
		next = suspend_list;
		prev = suspend_list->prev;
		next->prev = prev->next = this;
	}

	//xil_printf ("	---EC:Dequeue: %x\n\r", this);
}

void Ec::requeue(){
	/* Remove from suspend list */
	if(suspend_list == this)
		suspend_list = next == this ? 0 : next;
	next->prev = prev;
	prev->next = next;

	/* Add to queue list */
	enqueue();
	//xil_printf ("	---EC:Requeue: %x\n\r", this);

	/* Since current EC may be INTERRUPTED by requeue(), change list[priority] to current EC, so that when
	 * returning to current priority level by schedule(), the INTERRUPTED EC would continue. */
	list[current->prio] = current;
}

void Ec::schedule(){
	/* Select the highest priority EC	*/
	if(!list[prio_top])
		panic("	  ---Ec::Schedule: ERROR: No valid EC.\n\r");

	/* Get highest priority EC 	*/
	Ec *ec = list[prio_top];

	/* Load new EC (Switch VM)	*/
	sys_change_to_ec(ec);

	xil_printf ("---Ec:Schedule: Activate EC=%x\n\r", ec);

	return;
}

/*
 * 	Invoke RTOS when RTOS timer/interrupt is received:
 * 		1) Save the time quantum of current OS (from the kerone timer register)
 * 		2) Enqueue RTOS to the run queue
 * 		3) Reschedule to activate RTOS
 */
void Ec::RTOS_enqueue(){
	if(current != RTOS){
		current->TimeSlice = kerone_getTimeSlice();
		RTOS->requeue();
		schedule();
#if IS_PM_MEASURE
		PM_FLAG = rtos_revoke;
#endif
	}
#if IS_PM_MEASURE
	else
		PM_FLAG = virq_entry;
#endif
}

/*
 *  Suspend RTOS when RTOS is at IDLE (and give syscall):
 *  	1) Dequeue RTOS from run queue
 *  	2) Reschedule to activate low-priority OS
 *  	3) Resume the time quantum of low-priority OS
 */
void Ec::RTOS_dequeue(){
	RTOS->dequeue();
	schedule();
	kerone_setTimeSlice(current->TimeSlice);
}

void Ec::Service_enqueue(int service_id){
	Ec *ec;

	switch(service_id){
	case 1:
		ec = vm_list[hw_mgr_id]; 	// EC points to HW Task Manager
		ec->requeue();
		schedule();
		break;
	default:
		print("Error: unknown service! \n\r");
		break;
	}

	return;
}

/*--------------------------------------------------------------------------------
 * Arguments for system call are transmitted with r0-r3,
 * 		r0: system call number
 * 		r1: argument 1
 * 		r2: argument 2
 * 		r3: argument 3
 * When entering SVC mode with SWI, we have saved all registers in current->regs
 * -------------------------------------------------------------------------------
 */
void Ec::sys_create_ec ()
{
	Ec * ec = new Ec (current->regs.r1, current->regs.r2, current->regs.r3);
	xil_printf ("	---EC:%x : Sys_create_ec EC:%x (PC=%x SP=%x Pr=%d)\n\r", current,
			ec, current->regs.r1, current->regs.r2, current->regs.r3);

	ec->enqueue();
}

void Ec::sys_yield()
{
	sys_change_to_ec(current->next);
}




void Ec::sys_dma()
{
	//dma_config(current->regs.r1, (mword*)current->regs.r2, (mword*)current->regs.r3);
	/*switch(current->regs.r1){
		//case 0:
			//axi_dma_test();
			//break;
	xil_printf ("	---\n\r", current->regs.r1, current->regs.r3);
		case 1:
			dma_config(1, current->regs.r3);
			break;
		case 2:
			dma_config(2, current->regs.r3);
			break;
		case 3:
			dma_config(3, current->regs.r3);
			break;
		default:
			print("Invalid operation! \n\r");
			break;
	}*/
	switch(current->regs.r1){
		//case 0:
			//axi_dma_test();
			//break;
		case 1:
			dma_config(1, (mword*)current->regs.r2, (mword*)current->regs.r3);
			break;
		case 2:
			dma_config(2, (mword*)current->regs.r2, (mword*)current->regs.r3);
			break;
		case 3:
			dma_config(3, (mword*)current->regs.r2, (mword*)current->regs.r3);
			break;
		default:
			print("Invalid operation! \n\r");
			break;
	}

}


void Ec::sys_change_to_ec(Ec *successor)
{
	xil_printf ("		---EC:%d : Change to next EC:%d\n\r", current->id, successor->id);
	if(successor != current){
		Fpc::vfp_disable();
		vGic_Switch(&(current->vGicState), &(successor->vGicState));
		successor->ttbr0_load();
		//successor->IVC_load();
		successor->set_current();
	}
	print("\n");
}

void Ec::IVC_Channel_Send(int IVC_id, int message){
	vGic_InsertPending(&vGicState, irq_IVC);
	ivc_chn.IVC_bitmap |= (1 << IVC_id);
	ivc_chn.IVC_message[IVC_id] = message;
	return;
}

/*
 * The virtual timer is using private timer (ID=29) by default
 * ---------------------------------------------
 *  r1: 0 (virtual timer register)
 * 	r2: the virtual timer frequency
 * ---------------------------------------------
 *  r1: 1 (disable virtual timer)
 * ---------------------------------------------
 *  r1: 2 (enable virtual timer)
 * ---------------------------------------------
 *  r1: 3 (mask/unmask all IRQs except kerone timer)
 *  r2: 0 mask
 *  	1 unmask;
 * ---------------------------------------------
 */
void Ec::ec_vtimer_ctrl()
{
	switch(current->regs.r1){
		/*
		 * 	When registering virtual timer:
		 * 	1. timer frequency is set
		 * 	2. timer ticking is started
		 */
		case 0:
			current->vGicState.VirtualTimerFreq 	 = current->regs.r2;
			vtimer_config(current->vGicState.VirtualTimerID, current->vGicState.VirtualTimerFreq);
			//xil_printf ("	SYSCALL - Register virtual timer\n\r		--Parameters : %d, %d \n\r",
			//	current->vGicState.VirtualTimerID, current->vGicState.VirtualTimerFreq);
			break;

		case 1:
			vGIC_DisableInterrupt(current->vGicState.VirtualTimerID);
			//xil_printf("DisE:%d(%x)\n\r", current->vGicState.VirtualTimerID, Gic_EnableStateReg1);
			break;

		case 2:
			vGIC_EnableInterrupt(current->vGicState.VirtualTimerID);
			//xil_printf("En:%d(%x)\n\r", current->vGicState.VirtualTimerID, Gic_EnableStateReg1);
			break;

		default:
			print("Invalid virtual timer operation! \n\r");
			break;
	}
}

/*
 *  This function is used to control VM's virtual interrupts.
 *  -----------------------------------------------------------------
 *  	r1=0: register IRQ service
 *  	r2  : routine entry address
 *  	r3	: VPSR pointer address
 *  -----------------------------------------------------------------
 *  	r1=1: disable IRQ
 *  	r2  : interrupt ID number
 *  -----------------------------------------------------------------
 *  	r1=2: enable IRQ
 *		r2  : interrupt ID number
 *  -----------------------------------------------------------------
 *  	r1=3: mask IRQs (all VIRTUAL interrupts, the kerone kernel timer is not affected)
 *  -----------------------------------------------------------------
 *  	r1=4: unmask IRQs
 *  -----------------------------------------------------------------
 *  	r1=5: VM reads acknowledge register (return current IRQ id)
 *  	return: current IRQ id
 *  -----------------------------------------------------------------
 *  	r1=6: VM writes EOI register (enable this interrupt again)
 *  	r2	: interrupt ID number
 */
void Ec::ec_virq_ctrl()
{

	switch(current->regs.r1){
		case 0:
			vGIC_SetInterruptRoutineEntry(&(current->vGicState), current->regs.r2);
			current->vpsr = (VM_PSR*)current->regs.r3;
			// Initialize VCPSR and VSPSR
			current->vpsr->VCPSR_NA = USER_VCPSR_DEFAULT;
			current->vpsr->VSPSR = 0;
			current->vpsr->MaskedIRQ = 0;
			//xil_printf(" Virtual IRQ entry: 0x%x \n\r VPSR: 0x%x \n\r",
			//		current->vGicState.InterruptRoutineEntry, current->vpsr);
			break;
		case 1:
			vGIC_DisableInterrupt(current->regs.r2);
			break;
		case 2:
			vGIC_EnableInterrupt(current->regs.r2);
			break;

//		case 3:
//			current->ec_vcpsr_mask_irq();
//			break;
//		case 4:
//			current->ec_vcpsr_unmask_irq();
//			break;

//		case 5:
//			//print(" vIRQ ACK ");
//			current->regs.r0 = vGIC_ACK(&(current->vGicState));
//			break;
//		case 6:
//			//print(" vIRQ EOI ");
//			vGIC_EOI(&(current->vGicState), current->regs.r2);
//			break;
		default:
			print("Virtual IRQ operation error! \n\r");
	}
}

/*--------------------------------------------------------------------------------
 * This function is used for injecting virtual IRQ to VM by forcing VM to jump to
 * the IRS entry of corresponding IRQ ID.
 *
 * Note that, when inserting to the guest OS' interrupt handler, the involved IRQ
 * should be set disabled, so that, while the OS is handling the current IRQ, the
 * same IRQ won't be released to the CPU.
 *--------------------------------------------------------------------------------
 */

void Ec::ec_virq_handler(int virq_id)
{
	mword *ec_stack_pointer;
	u8 prio;

	mword vcpsr_flags = current->vpsr->VCPSR_NA ;

	//xil_printf("VCPSR: 0x%x at 0x%x \n\r", vcpsr_flags, current->vpsr);

	// Check VCPSR.I bit to decide if mask this IRQ
	if(vcpsr_flags & PSR_I_BIT){
		// Check if this IRQ is higher-priority than current VM,
		// continue to handle this interrupt, otherwise ignore it.
		vGIC_GetPriority(virq_id, &prio);
		//xil_printf("Prio: %d VM: %d\n\r", prio, current->vGicState.VMInterruptPriorityLevel);
		if(prio >= current->vGicState.VMInterruptPriorityLevel){
			if(!current->vpsr->MaskedIRQ)
				current->vpsr->MaskedIRQ = virq_id;
			//else	cnt2++;
			return;
		}
	}

	// Check if this IRQ is in pending/active state
	if(current->vGicState.InterruptState[virq_id]!=Inactive){
		if(current->vpsr->VEOI[virq_id]){ // If vEOI == 1, vIRQ is over
			current->vpsr->VEOI[virq_id] = 0;
			vGic_SetInterruptState(&(current->vGicState), virq_id, Inactive);
		}
		else
			return;
	}

	// Update VM stack pointer, Pushing PC into stack
	ec_stack_pointer = (mword *)current->regs.sp;  	// Save pc to ec stack
	ec_stack_pointer--;								// Update ec stack pointer sp
	*ec_stack_pointer = current->regs.pc;
	current->regs.sp = (mword)ec_stack_pointer;

	// Change pc to IRS to jump to irs while returning
	current->regs.pc = current->vGicState.InterruptRoutineEntry;

	//Set interrupt state to 'Pending' & disable IRQ
	vGic_SetInterruptState(&(current->vGicState), virq_id, Pending);
	current->vpsr->VACK = virq_id;

	/* Update virtual CPSR/SPSR */
	// Save the complete vCPSR to vSPSR: (APSR + vFlags)
	current->vpsr->VSPSR 	= (current->regs.cpsr & APSR_MASK) |
			(vcpsr_flags & NON_APSR_MASK);
	// Set the vCPSR I.bit
	current->vpsr->VCPSR_NA = vcpsr_flags | PSR_I_BIT;
	//xil_printf("	-- Return IRQ to %x \n\r", current->regs.pc);
}


void Ec::sys_remap()
{
	mword phys_addr = current->regs.r1;
	Ptab::user_remap(phys_addr);
}

void Ec::sys_insert_mapping()
{
	mword user_phys = current->regs.r1;
	mword user_virt = current->regs.r2;
	mword user_size = current->regs.r3;

	xil_printf ("At : %x , %x , %x \n\r", user_phys, user_virt, user_size);

	while (user_size) {
		Ptab::insert_mapping (user_virt, user_phys, 0);
		user_virt += PAGE_SIZE;
		user_phys += PAGE_SIZE;
		user_size -= PAGE_SIZE;
	}
}


/*	r1: guest_os_phys
 * 	r2: guest_os_virt
 * 	r3: guest_os_size
 */
void Ec::sys_create_pdir(){
	mword shadow_pdir;

	mword user_phys = current->regs.r1;
	mword user_virt = current->regs.r2;
	mword user_size = current->regs.r3;

	xil_printf ("New OS info: %x , %x , %x \n\r", user_phys, user_virt, user_size);

	/* Allocate 16 KB for shadow pdir table */
	shadow_pdir = Kalloc::allocator.alloc_shadow_pdir();

	xil_printf ("Shadow pdir is created at : %x  \n\r", shadow_pdir);

	/* Copy some system mapping to the pdir table (0xc0000000 - 0xffffffff) */
	memcpy((void *)Kalloc::phys2virt(shadow_pdir + 0x3000),
			static_cast<mword*>(Kalloc::phys2virt(reinterpret_cast<mword>(&KERN_PDIR))+0x3000),
			0x1000);

	/* Mapping for guest OS	*/
	while (user_size) {
		Ptab::insert_shadow_mapping (shadow_pdir, user_virt, user_phys, 0);
		user_virt += PAGE_SIZE;
		user_phys += PAGE_SIZE;
		user_size -= PAGE_SIZE;
	}

	current->regs.r0 = shadow_pdir;

	return;
}

/*	r1: guest_os_entry
 * 	r2: guest_os_priority
 * 	r3: guest_os_pdir
 *
 * 	type: defines OS type
 * 		0: general OS
 * 		1: RTOS
 */
void Ec::sys_create_guest_os(int type){
	Ec * ec = new Ec (current->regs.r1, current->regs.r2, current->regs.r3, type);
	xil_printf ("	---EC:%x : sys_create_guest_os EC:%x (PC=%x Pr=%d PDIR=%x)\n\r",
			current, ec, ec->regs.pc, ec->prio, ec->ttbr0);

	ec->enqueue();
}

void Ec::ttbr0_load()
	    {
	    	mword ttbr0_value;

	    	if(ttbr0 != current->ttbr0){
		    	mtcp(XREG_CP15_CONTEXT_ID, 0);

	    		/* get current ttbr0 value 	*/
	    		ttbr0_value = mfcp(XREG_CP15_TTBR0);
	    		//xil_printf("		---Current TTBR0 : %x \n\r", ttbr0_value);

	    		/* change ttbr0 base addr 	*/
	    		if(ttbr0 & 0x3ff){
	    			print("ec_change error: invalid shadow pdir \n\r");
	    			return;
	    		}
	    		ttbr0_value = (ttbr0_value & 0x3ff) + ttbr0;

	    		/* load ttbr0 value */
	    		//xil_printf("		---TTBR0 is changed to: %x \n\r", ttbr0_value);
	    		mtcp(XREG_CP15_TTBR0, ttbr0_value);

	    		/* Set ASID register */
	    		mtcp(XREG_CP15_CONTEXT_ID, asid);
	    		//	xil_printf("ASID is %x \n\r", asid);

//	    		/* Invalidate entire unified TLB */
//	    		asm volatile ("mcr p15, 0, %0, c8, c7, 0" : : "r" (0));
//	    		/* Invalidate entire data TLB */
//	    		asm volatile ("mcr p15, 0, %0, c8, c6, 0" : : "r" (0));
//	    		/* Invalidate entire instruction TLB */
//	    		asm volatile ("mcr p15, 0, %0, c8, c5, 0" : : "r" (0));
	    	}
	    }




/*	r1: num of message box */
void Ec::sys_create_messagebox(){
	int num = current->regs.r1;
	int i = 0;

	for(i=0;i<num;i++){
		msgbox::msg_create(i);
	}
}

/*	r1: mbox ID
 * 	r2: data
 * 	r0: return value
 */
void Ec::ec_mbox_post(){
	int id = current->regs.r1;
	mword data = current->regs.r2;
	int status;

	status = msgbox::mbox[id]->msg_post(data);
	if(status == msgbox::success){
		current->regs.r0 = 0;
		return;
	}
	current->regs.r0 = 1;
	return;
}

/*	r1: mbox ID
 * 	r2: pointer to data
 * 	r0: return value
 */
void Ec::ec_mbox_read(){
	int id = current->regs.r1;
	mword* data = (mword*)current->regs.r2;
	int status;

	status = msgbox::mbox[id]->msg_read(data);
	if(status == msgbox::success){
		current->regs.r0 = 0;
		return;
	}
	current->regs.r0 = 1;
	return;
}


void Ec::und_handler_vfp()
{
	mword bounce_inst;

	int sw_flag = 0 ;

#if IS_KERNEL_FUNCTION_MEASURE
	XTime_SetTime(0);
#endif

	bounce_inst = *((mword*)current->regs.pc);
	if(inst_decode(bounce_inst)){
		xil_printf("At [0x%x]: ", current->regs.pc);
		panic("Instruction trap error. \n\r");
	}

	Fpc::vfp_enable();

	/* If current EC have no fp context, create one 	*/
	if(!current->fpc){
		Fpc *f = new Fpc(current->id);
		current->fpc = f;
	}

	/* If no fpc is running, restore new vfp	*/
	if(!Fpc::fpc_current){
		current->fpc->fpc_restore();
	}
	else if(Fpc::fpc_current->ec_id != current->id){
		/* Save vfp context if vfp is occupied by other fpc*/
		Fpc::fpc_current->fpc_save();
		current->fpc->fpc_restore();
		sw_flag = 1;
	}

	/* Update current vfp	*/
	Fpc::fpc_current = current->fpc;

#if IS_KERNEL_FUNCTION_MEASURE
	if(sw_flag)
		timeprint_low(fpc_switch, PM_TimerCounter);
#endif
	ret_user_sysexit();
}

void Ec::abort_handler(){
	Ec* ec;

	mword AbtAddr = mfcp(XREG_CP15_DATA_FAULT_ADDRESS);
	mword AbtStat = mfcp(XREG_CP15_DATA_FAULT_STATUS);

	xil_printf("DATA ABORT: PC=%x, Addr=%x, OP=%x \n\r", current->regs.pc,AbtAddr, AbtStat&DFSR_WnR);
	xil_printf("r0 : %d; r2 : %d; hw_mgr_id: %d \n\r",current->id,current->prio,hw_mgr_id);


	/* If trying to access PL Accelerators */
	if( (AbtAddr>=PL_BASE_ADDR) & (AbtAddr<PL_E) ){
		ec = vm_list[hw_mgr_id]; 	// EC points to HW Task Manager
		ec->regs.r0 = current->id;
		ec->regs.r1 = AbtAddr;   	// HW Task Interface Address
		ec->regs.r2 = current->prio;// HW Task Priority
		ec->requeue();
		schedule();

	}
	else{
		print("Abort: ERROR! \n\r");
		while (1){}
	}

	ret_user_sysexit();
}


