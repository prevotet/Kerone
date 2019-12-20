/*
 * ptab.h
 *
 *  Created on: 3 févr. 2014
 *      Author: XIATAN
 */

#ifndef PTAB_H_
#define PTAB_H_

#include "types.h"
//#include "cpu.h"

class Ptab
{
    public:

        static void insert_mapping (mword virt, mword phys, mword attr);

        static void insert_section (mword pdir, mword virt, mword phys, mword attr);

        static void insert_shadow_mapping(mword user_pdir, mword virt, mword phys, int attr);

        static void set_page_attribute(mword user_pdir, mword virt, int attr, int asid);

        static void * remap (mword addr);

        static void  user_remap(mword addr);
};

#endif /* PTAB_H_ */
