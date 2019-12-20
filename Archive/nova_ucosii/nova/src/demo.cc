/*
 * demo.cc
 *
 *  Created on: May 27, 2016
 *      Author: Summer
 */


#include "include/config.h"
#include "include/print.h"

#if DEMO_UART

int stat;

int demo_cmd_handler(char *ptr){
	//char rx[2];

	/* Skip all spaces */
	while(*ptr == ' ')
		ptr++;

	switch(*ptr){
		case('r'):
			stat = 1;
			while(1);
		case('s'):
			stat = 2;
			while(1);

//		case("c"):
//			rx[0] = *(++ptr);
//			rx[1] = *(++ptr);
//			switch(rx){
//				case("01"):
//				case("00"):
//				case("11"):
//				case("10"):
//				case("21"):
//				case("20"):
//				case("31"):
//				case("30"):
//				default:
//					print("invalid cfg");
//			}
//			break;

		default:
			print("invalid cmd");
			stat = 3;
			while(1);
	}
}




#endif
