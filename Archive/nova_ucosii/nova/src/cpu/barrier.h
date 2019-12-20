/*
 * barrier.h
 *
 *  Created on: 2 déc. 2013
 *      Author: XIATAN
 */

#ifndef BARRIER_H_
#define BARRIER_H_

#define isb() __asm__ __volatile__ ("isb" : : : "memory")
#define dsb() __asm__ __volatile__ ("dsb" : : : "memory")
#define dmb() __asm__ __volatile__ ("dmb" : : : "memory")
#define wfi() __asm__ __volatile__ ("wfi" : : : "memory")

#endif /* BARRIER_H_ */
