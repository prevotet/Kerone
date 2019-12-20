/*
 * abort.h
 *
 *  Created on: 6 mars 2014
 *      Author: XIATAN
 */

#ifndef ABORT_H_
#define ABORT_H_

//extern "C" void abort_handler(void);
extern "C" void prefetch(void) asm ("prefetch");


#endif /* ABORT_H_ */
