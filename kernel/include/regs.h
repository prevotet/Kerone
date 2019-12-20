/*
 * regs.h
 *
 *  Created on: 12 févr. 2014
 *      Author: XIATAN
 */

#ifndef REGS_H_
#define REGS_H_

#include "types.h"

class Sys_regs
{
	public:
		struct{
			mword r0;
			mword r1;
			mword r2;
			mword r3;
			mword r4;
			mword r5;
			mword r6;
			mword r7;
			mword r8;
			mword r9;
			mword r10;
			mword r11;
			mword r12;
			mword sp;
			mword lr;
			mword pc;
			mword cpsr;
		};
};

#endif /* REGS_H_ */
