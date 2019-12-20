/*
 * decode.h
 *
 *  Created on: 18 sept. 2014
 *      Author: XIATAN
 */

#ifndef DECODE_H_
#define DECODE_H_

#include "types.h"

#define vfp_inst_mask1   0xe00
#define vfp_inst_mask2 	 0xe000000	/* Bit[27:25]	*/
#define vfp_inst_mask3 	 0xf000000 /* Bit[27:24]	*/

#define vfp_inst_flag1	 0xa00		/* 1010	*/
#define vfp_inst_flag2	 0xc000000 /* 1100	*/
#define vfp_inst_flag3	 0xe000000	/* 1110 */

//#define	msr_flag		0x0120f000
//#define msr_spsr_mask   0x00400000
//#define msr_mask		0x0fb0fff0 //0x0ff0fff0
//#define msr_Rn_mask 	0x0000000f
//#define msr_mask_mask 	0x000f0000

//static unsigned long mask_decode[16] = {
//		0x00000000,/* 0000 */
//		0x000000ff,/* 0001 */
//		0x0000ff00,/* 0010 */
//		0x0000ffff,/* 0011 */
//		0x00ff0000,/* 0100 */
//		0x00ff00ff,/* 0101 */
//		0x00ffff00,/* 0110 */
//		0x00ffffff,/* 0111 */
//		0xff000000,/* 1000 */
//		0xff0000ff,/* 1001 */
//		0xff00ff00,/* 1010 */
//		0xff00ffff,/* 1011 */
//		0xffff0000,/* 1100 */
//		0xffff00ff,/* 1101 */
//		0xffffff00,/* 1110 */
//		0xffffffff,/* 1111 */
//};

//#define mrs_flag		0x010f0000
//#define mrs_mask		0x0fbf0fff
//#define mrs_Rd_mask		0x0000f000
//#define mrs_spsr_mask	0x00400000

//#define apsr_mask		0xf80f0000

//#define ldm_mask		0x0e508000

extern int inst_decode(mword);
extern int sr_instruction_decode(mword);

#endif /* DECODE_H_ */
