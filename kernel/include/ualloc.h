/*
 * user_alloc.h
 *
 *  Created on: 3 sept. 2014
 *      Author: XIATAN
 */

#ifndef USER_ALLOC_H_
#define USER_ALLOC_H_

#include "types.h"
#include "compiler.h"

class Ualloc
{
//    private:
//        mword begin;
//        mword end;

    public:
//        Ualloc(mword user_begin, mword user_end): begin(user_begin), end(user_end){};

//    	static Ualloc allocator;

    	static mword virt2phys (mword , mword );

//        void *alloc(mword size);

};

#endif /* USER_ALLOC_H_ */
