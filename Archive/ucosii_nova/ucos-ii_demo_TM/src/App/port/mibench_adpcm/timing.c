/*
** Timing - Test timing on adpcm coder and decoder.
**
** The program creates 10Kb garbage, and runs the compressor and
** the decompressor on it.
*/
#include <guest_os_parameters.h>
#if IS_MIBENCH_ADPCM

#include <stdio.h>
#include <math.h>
#include "adpcm.h"
#include "../sd/sd.h"

char *orginal = "small";
char *admpcrc = "admpc";
char *recover = "small2";

extern int CodeFile(const char* inname, const char* outname);

void admpc_bench() {

	InitSD();

	CodeFile(orginal, admpcrc);
	DecodeFile(admpcrc, recover);
}

#endif
