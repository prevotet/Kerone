/*
 * bit.h
 *
 *  Created on: 6 mars 2014
 *      Author: XIATAN
 */

#ifndef BIT_H_
#define BIT_H_

#include"compiler.h"

ALWAYS_INLINE
static inline mword align_dn (mword val, mword align)
{
    val &= ~(align - 1);                // Expect power-of-2
    return val;
}

ALWAYS_INLINE
static inline mword align_up (mword val, mword align)
{
    val += (align - 1);                 // Expect power-of-2
    return align_dn (val, align);
}


#endif /* BIT_H_ */
