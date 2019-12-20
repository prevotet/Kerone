/*
 * kalloc.h
 *
 * Kernel page allocate
 *
 *  Created on: 5 déc. 2013
 *      Author: XIATAN
 */

#ifndef KALLOC_H_
#define KALLOC_H_

#include "types.h"
#include "compiler.h"

class Kalloc
{
    private:
        mword begin, end;

    public:

        enum Fill
        {
            NOFILL = 0,
            FILL_0,
            FILL_1
        };

        //CTORS
        static Kalloc allocator;

        Kalloc (mword virt_begin, mword virt_end) : begin (virt_begin), end (virt_end) {}

        void * alloc(unsigned size);

        void * alloc_page (unsigned size, Fill fill = NOFILL);

        mword  alloc_shadow_pdir();

        static void * phys2virt (mword);

        static mword virt2phys (void *);
};


#endif /* KALLOC_H_ */
