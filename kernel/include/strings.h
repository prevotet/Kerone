/*
 * string.h
 *
 * String functions, this file is referenced to linux source file
 * linux-digilent/arch/arm/include/asm/string.h
 *
 *  Created on: 5 déc. 2013
 *      Author: XIATAN
 */

#ifndef STRING_H_
#define STRING_H_

// To use memset, it's obliged to include stddef.h and string.h
#include <stddef.h>
#include <string.h>

/*
* We don't do inline string functions, since the
* optimised inline asm versions are not small.
*/

#define __HAVE_ARCH_STRRCHR
extern char * strrchr(const char * s, int c);

#define __HAVE_ARCH_STRCHR
extern char * strchr(const char * s, int c);

#define __HAVE_ARCH_MEMCPY
extern void * memcpy(void *, const void *, __kernel_size_t);

#define __HAVE_ARCH_MEMMOVE
extern void * memmove(void *, const void *, __kernel_size_t);

#define __HAVE_ARCH_MEMCHR
extern void * memchr(const void *, int, __kernel_size_t);

#define __HAVE_ARCH_MEMSET
extern void * memset(void *, int, __kernel_size_t);

extern void __memzero(void *ptr, __kernel_size_t n);

#define memset(p,v,n)                                                        \
        ({                                                                \
                 void *__p = (p); size_t __n = n;                        \
                if ((__n) != 0) {                                        \
                        if (__builtin_constant_p((v)) && (v) == 0)        \
                                __memzero((__p),(__n));                        \
                        else                                                \
                                memset((__p),(v),(__n));                \
                }                                                        \
                (__p);                                                        \
        })




#endif /* STRING_H_ */
