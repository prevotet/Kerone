/*
 * msg.h
 *
 *  Created on: 2 sept. 2014
 *      Author: XIATAN
 */

#ifndef MSG_H_
#define MSG_H_


#include "types.h"
#include "../cpu/cpu.h"
#include "compiler.h"
#include "kalloc.h"
#include "regs.h"
#include "memory.h"
#include <stddef.h>


class msgbox
{
	private:
		int 	id;
		int 	flag;
		mword 	message[8];
		int	  	msg_num;
		int		post_position;
		int		read_position;

	public:

		enum{
			msg_empty = 0,
			msg_valid = 1,
			msg_full  = 2,
		};

		enum{
			success 	= 0,
			error_full 	= 1,
			error_empty	= 2,
			error_unknown = 3,
		};

		msgbox(int);

		static void msg_create(int box_id);
		int msg_post(mword);
		int msg_read(mword *);

		static msgbox * mbox[4];

		ALWAYS_INLINE
		static inline void *operator new(size_t)
		{
			return Kalloc::allocator.alloc(sizeof (msgbox));
		}

		ALWAYS_INLINE
			static inline void operator delete (void *) { /* nop */ }

};

#endif /* MSG_H_ */
