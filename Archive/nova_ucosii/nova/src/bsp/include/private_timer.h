/*
 * private_timer.h
 *
 *  Created on: 30 mars 2015
 *      Author: XIATAN
 */

#ifndef PRIVATE_TIMER_H_
#define PRIVATE_TIMER_H_

extern void  Private_TmrCfg (unsigned long freq);
extern void  Private_TmrStart ();
extern unsigned char Private_TmrOutCmpCfg ();
extern void  Private_TmrIntClr ();
extern void  Private_TmrRst ();
extern unsigned long  Private_TmrRd  ();
extern void  Private_TmrStop  ();
extern void  Private_TmrWr  (unsigned long  tmr_val);


#endif /* PRIVATE_TIMER_H_ */
