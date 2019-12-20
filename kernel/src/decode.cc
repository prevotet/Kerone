/*
 * decode.cc
 *
 *  Created on: 18 sept. 2014
 *      Author: XIATAN
 */


#include "decode.h"

int inst_decode(mword inst){
	if( (inst & vfp_inst_mask1) == vfp_inst_flag1 ){
		if((inst & vfp_inst_mask2) == vfp_inst_flag2)
			return 0;
		else if((inst & vfp_inst_mask3) == vfp_inst_flag3)
			return 0;
	}

	return 1;
}

 /* Detect CPSR READ/WRITE instructions (MSR, MRS)
int sr_instruction_decode(mword insr){

}
*/
