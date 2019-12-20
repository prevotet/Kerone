/*
 * elf.h
 *
 *  Created on: 6 mars 2014
 *      Author: XIATAN
 */

#ifndef ELF_H_
#define ELF_H_


#include "compiler.h"
#include "types.h"

class Eh
{
    public:
        uint32          ei_magic;
        uint8           ei_class, ei_data, ei_version, ei_pad[9];
        uint16          type, machine;
        uint32          version;
        mword           entry, ph_offset, sh_offset;
        uint32          flags;
        uint16          eh_size, ph_size, ph_count, sh_size, sh_count, strtab;
};

class Ph
{
    public:
        enum
        {
            PT_NULL     = 0,
            PT_LOAD     = 1,
            PT_DYNAMIC  = 2,
            PT_INTERP   = 3,
            PT_NOTE     = 4,
            PT_SHLIB    = 5,
            PT_PHDR     = 6,
        };

        enum
        {
            PF_X        = 0x1,
            PF_W        = 0x2,
            PF_R        = 0x4,
        };

        uint32          type;
        uint32          f_offs;
        uint32          v_addr;
        uint32          p_addr;
        uint32          f_size;
        uint32          m_size;
        uint32          flags;
        uint32          align;
};



#endif /* ELF_H_ */
