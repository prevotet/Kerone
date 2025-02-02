/* testc - Test adpcm coder */
#include <guest_os_parameters.h>
#if IS_MIBENCH_ADPCM

#include "adpcm.h"
#include <stdio.h>

#include "../sd/sd.h"
#include "../sd/ff.h"
#include "xparameters.h"
#include "xstatus.h"

struct adpcm_state state;

#define NSAMPLES 1000

char	abuf[NSAMPLES/2];
short	sbuf[NSAMPLES];



int CodeFile(const char* inname, const char* outname){

	unsigned int n,m, r_ptr, w_ptr;
	FRESULT rc;

	r_ptr = 0;
	w_ptr = 0;

	SDOpen(inname, &fil1);
	SDOpen(outname,&fil2);

    while(1) {
    	rc = SDAccess_read(r_ptr, sbuf, NSAMPLES*2, &n, &fil1);
    	if (rc) {
    		print("input file error");
    		exit(1);
    	}
    	r_ptr = r_ptr + n;

    	if ( n == 0 ) break;

    	adpcm_coder(sbuf, abuf, n/2, &state);

    	rc = SDAccess_write(w_ptr, abuf, n/4, &m, &fil2);
    	if (rc) {
    	    print("output file error");
    	    exit(1);
    	}
    	w_ptr = w_ptr + m;

    }
    SDClose(&fil1);
    SDClose(&fil2);
}

#endif
