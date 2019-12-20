/*
 * ec.h
 *
 *  Created on: 27 févr. 2014
 *      Author: XIATAN
 */

#ifndef EC_H_
#define EC_H_

#include "compiler.h"
#include "kalloc.h"
#include "ualloc.h"
#include "regs.h"
#include "types.h"
#include "memory.h"
#include "msg.h"
#include <stddef.h>
#include "print.h"

#include "vfp.h"
#include "vgic.h"
#include "decode.h"
#include "../cpu/cpu.h"
#include "../cpu/ptrace.h"

// Xilinx BSP Files
#include "xil_printf.h"


extern mword KERN_PDIR;

class Fpc;

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
	IVC_Channel		Local_IVCChn;
}VM_PSR;


class Ec
{
	private:
		static unsigned const priorities = 8;
		static unsigned const max_vm_number = 16;
		static Ec * list[priorities];
		static Ec * vm_list[max_vm_number]; // The LUT for all ECs via VM ID
		static unsigned prio_top;
		static int vmid_counter; 		// Added by 1 when a new EC is created
		static int hw_mgr_id;  			// The preserved ID for HW Task Manager
		static Ec * RTOS;

		int 		prio; 	// the priority level of EC
		int			id;		// Unique id number for each EC
	    int 		asid;	// Address space ID register

		void (*cont)();
		Sys_regs    regs;	// Banked system registers (r0 - r14, pc, cpsr)
		mword 		ttbr0;	// Base address of user shadow pdir
		VM_PSR 		* vpsr;	// Pointer to VM PSR register

		IVC_Channel ivc_chn;

	    mword 		TimeSlice;
		vGicContext vGicState = {0, 0, 0, 0, {0,0,0},{0,0,0}, {0,0,0,0,0,0}, 0, 0};
	    Fpc 		* fpc;
	    Ec 			* prev;
	    Ec 			* next;

	public:

		static Ec * current;
		static Ec * suspend_list; // This should be set as PRIVATE in actual use case

	    Ec (void (*)(), mword = 0);
	    Ec (mword, mword, int);
	    Ec (mword, int, mword, int);

	    void	enqueue();
		void 	dequeue();
		void	requeue();
		static void	schedule();
		static void RTOS_enqueue();
		static void RTOS_dequeue();
		static void Service_enqueue(int service_id);

	    ALWAYS_INLINE NORETURN
	    inline void make_current()
	    {
	        current = this;

	        asm volatile (	"mov sp, %0;"
	        				"ldr pc,%1"
	        				:
	        				:"r"(KSTCK_ADDR + PAGE_SIZE),"m"(cont)
	        				:"cc","memory"
	        		);
	        UNREACHED;
	    }

	    void ttbr0_load();
	    inline void IVC_load(){
	    	if(ivc_chn.IVC_bitmap){
	    		vpsr->Local_IVCChn = ivc_chn;
	    		ivc_chn.IVC_bitmap = 0;
	    	}
	    }

	    mword virt2phys( mword virt ){
	    	return Ualloc::virt2phys(ttbr0, (mword) virt);
	    }

	    ALWAYS_INLINE NORETURN
	    inline void set_current()
	    {
	    	current = this;
	    }

	    HOT NORETURN
	    static void ret_user_sysexit();

	    NORETURN
	    static void root_invoke();

	    HOT NORETURN REGPARM (1)
	    static void syscall_handler (uint8) asm ("syscall_handler");

	    HOT NORETURN REGPARM (1)
	    static void irq_handler () asm ("irq_handler");

	    static void sys_create_ec();
	    static void sys_create_guest_os(int);

	    static void sys_change_to_ec(Ec*);
	    static void sys_yield();
	    static void sys_dma();

	    static void ec_irq_disable();
	    static void ec_irq_enable();

	    static void sys_remap();
	    static void sys_insert_mapping();
	    static void sys_create_pdir();

	    static void ec_vtimer_ctrl();
	    static void ec_vtimer_update(Ec*);

	    static void ec_virq_ctrl();
	    static void ec_virq_handler(int);

	    void 		ec_vgic_SetInterruptState(int id, int state);

	    static void sys_create_messagebox();
	    static void ec_mbox_post();
	    static void ec_mbox_read();
	    void		IVC_Channel_Send(int IVC_id,int msg);

	    NORETURN
	    static void und_handler_vfp () asm ("und_handler_vfp");
	    NORETURN
	    static void abort_handler()  asm ("abort_handler");

	    void 		ec_psr_op(mword);
	    void 		ec_ldm_op(mword);

/*	    ALWAYS_INLINE
	    inline void ec_vcpsr_update()
	    {
	    	vcpsr = ( regs.cpsr & apsr_mask ) | ( vcpsr & ~apsr_mask);
	    }

	    ALWAYS_INLINE
	    inline void ec_vcpsr_mask_irq()
	    {
	    	vcpsr = vcpsr | PSR_I_BIT;
	    	Gic_PriorityMask = vGicState.VMInterruptPriorityLevel;
	    }

	    ALWAYS_INLINE
	    inline void ec_vcpsr_unmask_irq()
	    {
	    	vcpsr = vcpsr & (~PSR_I_BIT);
	   		Gic_PriorityMask = IRQPriorityMaskDefault;
	    }
*/
	    ALWAYS_INLINE
	    static inline void *operator new(size_t)
	    {
	    	return Kalloc::allocator.alloc(sizeof (Ec));
	    }

	    ALWAYS_INLINE
	    static inline void operator delete (void *) { /* nop */ }
};


#endif /* EC_H_ */
