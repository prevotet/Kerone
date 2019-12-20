/*
 * shutdown.cc
 *
 *  Created on: 17 déc. 2013
 *      Author: XIATAN
 */

//#include "cacheflush.h"

// Xilinx BSP Files
#include "xil_cache.h"

#include "cp15.h"
#include "barrier.h"

static inline void cpu_enter_lowpower(void)
{
        unsigned int v;

        Xil_DCacheFlush();
        Xil_ICacheInvalidate();

        asm volatile(
        "        mcr        p15, 0, %1, c7, c5, 0\n"
        "        dsb\n"
        /*
         * Turn off coherency
         */
        "        mrc        p15, 0, %0, c1, c0, 1\n"
        "        bic        %0, %0, #0x40\n"
        "        mcr        p15, 0, %0, c1, c0, 1\n"
        "        mrc        p15, 0, %0, c1, c0, 0\n"
        "        bic        %0, %0, %2\n"
        "        mcr        p15, 0, %0, c1, c0, 0\n"
         : "=&r" (v)
         : "r" (0), "Ir" (CR_C)
         : "cc");
}

static inline void cpu_leave_lowpower(void)
{
        unsigned int v;

        asm volatile(
        "        mrc        p15, 0, %0, c1, c0, 0\n"
        "        orr        %0, %0, %1\n"
        "        mcr        p15, 0, %0, c1, c0, 0\n"
        "        mrc        p15, 0, %0, c1, c0, 1\n"
        "        orr        %0, %0, #0x40\n"
        "        mcr        p15, 0, %0, c1, c0, 1\n"
         : "=&r" (v)
         : "Ir" (CR_C)
         : "cc");
}

static inline void platform_do_lowpower(unsigned int cpu, int *spurious)
{
        /*
         * there is no power-control hardware on this platform, so all
         * we can do is put the core into WFI; this is safe as the calling
         * code will have already disabled interrupts
         */
        for (;;) {
                dsb();
                wfi();

                /*
                 * Getting here, means that we have come out of WFI without
                 * having been woken up - this shouldn't happen
                 *
                 * Just note it happening - when we're woken, we can report
                 * its occurrence.
                 */
                (*spurious)++;
        }
}


/*
* platform-specific code to shutdown a CPU
*
* Called with IRQs disabled
*/
void platform_cpu_die(unsigned int cpu)
{
		int spurious = 0;

        /*
         * we're ready for shutdown now, so do it
         */
        cpu_enter_lowpower();
        platform_do_lowpower(cpu, &spurious);

        /*
         * bring this CPU back into the world of cache
         * coherency, and then restore interrupts
         */
        cpu_leave_lowpower();

//        if (spurious)
//pr_warn("CPU%u: %u spurious wakeup calls\n", cpu, spurious);

}



