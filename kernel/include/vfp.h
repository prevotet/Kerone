/*
 * vfp.h
 *
 *  Created on: 16 sept. 2014
 *      Author: XIATAN
 */

#ifndef VFP_H_
#define VFP_H_

#include "ec.h"
#include "types.h"
#include "../cpu/cpu.h"
#include "compiler.h"
#include "kalloc.h"
#include "regs.h"
#include "memory.h"
#include <stddef.h>

class vfp_reg
{
	public:
		struct{
				//			mword fpsid;
				//			mword mvfr1;
				//			mword mvfr0;
				//			mword fpexc;
			mword s[64];
			mword fpscr;
		};
};

class Fpc
{
	private:
		static unsigned const default_fpexc	= 0x40000000;
		static unsigned const default_fpscr = 0;

		vfp_reg fp_regs;


	public:
		static Fpc *fpc_current;
		mword ec_id;

		Fpc (mword);
		void fpc_save(void);
		void fpc_restore();

		ALWAYS_INLINE
		inline static void vfp_enable(){
			mword value = default_fpexc;//default_fpexc;
			asm volatile (	"fmxr	FPEXC, %0"
							:
							:"r"(value)
							:"cc"
			);
		}

		ALWAYS_INLINE
		inline static void vfp_disable(){
			mword value = 0;
			asm volatile (	"fmxr	FPEXC, %0"
							:
							:"r"(value)
							:"cc"
			);
		}


		ALWAYS_INLINE
		static inline void *operator new(size_t)
		{
			return Kalloc::allocator.alloc(sizeof (Fpc));
		}

		ALWAYS_INLINE
		static inline void operator delete (void *) { /* nop */ }
};


#endif /* VFP_H_ */
