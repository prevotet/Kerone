/*
 * msg.cc
 *
 *  Created on: 3 sept. 2014
 *      Author: XIATAN
 */

#include "bsp/include/xil_printf.h"

#include "include/msg.h"
#include "include/print.h"


msgbox *msgbox::mbox[4];

msgbox::msgbox(int box_id){
	id = box_id;
}

void msgbox::msg_create(int box_id){
	msgbox *m = new msgbox(box_id);
	mbox[box_id] = m;
	xil_printf("		--Msgbox created: ID = %d, addr = %x \n\r", box_id, mbox[box_id]);
}

int msgbox::msg_post(mword data){
	int status;

	switch(flag){
		case msg_empty:
			message[post_position] = data;
			post_position++;
			if(post_position == 8)
				post_position = 0;
			msg_num++;
			flag = msg_valid;
			status = success;
			break;

		case msg_valid:
			message[post_position] = data;
			post_position++;
			if(post_position == 8)
				post_position = 0;
			msg_num++;
			if(msg_num == 8)
				flag = msg_full;
			status = success;
			break;

		case msg_full:
			print ("		---Message box post error: FULL \n\r");
			status = error_full;
			break;

		default:
			print ("		---Message box post error: Unknown state \n\r");
			status = error_unknown;
			break;
	}

	return status;
}

int msgbox::msg_read(mword *data){
	int status;

	switch(flag){
		case msg_empty:
			print ("		---Message box read error: EMPTY \n\r");
			status = error_empty;
			break;

		case msg_valid:
			*data = message[read_position];
			read_position ++;
			if(read_position == 8)
				read_position = 0;
			msg_num--;
			if(msg_num == 0)
				flag = msg_empty;
			status = success;
			break;

		case msg_full:
			*data = message[read_position];
			read_position ++;
			if(read_position == 8)
				read_position = 0;
			msg_num--;
			flag = msg_valid;
			status = success;
			break;

		default:
			print ("		---Message box read error: Unknown state \n\r");
			status = error_unknown;
			break;
	}

	return status;
}


