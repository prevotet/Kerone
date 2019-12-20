/*
 * types.h
 *
 * Constant-wdith types
 *
 *  Created on: 5 déc. 2013
 *      Author: XIATAN
 */

#ifndef TYPES_H_
#define TYPES_H_

typedef unsigned char       uint8;
typedef unsigned short      uint16;
typedef unsigned int        uint32;
typedef unsigned long long  uint64;

typedef unsigned long       mword;
typedef unsigned long       Paddr;

/* The size_t type is defined by ISO for use by functions such as
 * malloc and strlen (among others, of course), for representing
 * size information. It is required to be an unsigned integral
 * type, but need not be unsigned int. It could equally be
 * unsigned long or unsigned long long on some systems. It could
 * even (perhaps a touch pathologically) be unsigned char.
 */

typedef unsigned int 		__kernel_size_t;

#endif /* TYPES_H_ */
