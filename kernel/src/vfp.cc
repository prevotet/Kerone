/*
 * vfp.cc
 *
 *  Created on: 17 sept. 2014
 *      Author: XIATAN
 */


#include "vfp.h"
#include "ec.h"

Fpc *Fpc::fpc_current;

Fpc::Fpc(mword id){
	ec_id = id;
	fp_regs.fpscr = default_fpscr;
}

void Fpc::fpc_save(){
	mword fp_regs_end = (mword)(&fp_regs) + sizeof(vfp_reg);
	asm volatile (	"mov 	r0, sp;"
					"ldr 	sp, %0;"
					"vmrs	r1, fpscr;"
					"push	{r1};"			//(str r0, [sp, #-4]!)
					"vpush	{s0-s31};"
					"vpush	{d16-d31};"
					"mov	sp, r0"
					:
					:"m"(fp_regs_end)
					:"cc","r0","r1","sp"
				);
}

void Fpc::fpc_restore(){
	mword fp_regs_top = (mword)(&fp_regs);
	asm volatile (	"mov 	r0, sp;"
					"ldr 	sp, %0;"
					"vpop	{d16-d31};"
					"vpop	{s0-s31};"
					"pop	{r1};"			//(str r0, [sp, #-4]!)
					"vmsr	fpscr, r1;"
					"mov	sp, r0"
					:
					:"m"(fp_regs_top)
					:"cc","r0","r1","sp"
					);
}

