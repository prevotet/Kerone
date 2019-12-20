/*
 * extern.h
 *
 * External symbols
 *
 *  Created on: 5 déc. 2013
 *      Author: XIATAN
 */

#ifndef EXTERN_H_
#define EXTERN_H_

#include "types.h"

/*
extern char LINK_P;
extern char LINK_E;
extern char LOAD_E;
extern char OFFSET;

extern void (*CTORS_L)();
extern void (*CTORS_G)();
extern void (*CTORS_E)();
*/

extern char entry_sysenter;
extern mword handlers[];
extern mword hwdev_addr;


#endif /* EXTERN_H_ */
