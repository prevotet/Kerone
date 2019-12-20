/* +++Date last modified: 05-Jul-1997 */

#include <guest_os_parameters.h>
#if IS_MIBENCH_BITCNT

/*
**  BITCNTS.C - Test program for bit counting functions
**
**  public domain by Bob Stout & Auke Reitsma
*/

#include <stdio.h>
#include <stdlib.h>
#include "conio.h"
#include <limits.h>
#include <time.h>
#include <float.h>
#include "bitops.h"

#define FUNCS  7

static int CDECL bit_shifter(long int x);

//int bitcount_test(int argc, char *argv[])
int bitcount_test()
{
  clock_t start, stop;
  unsigned long ct, cmin = 2, cmax = 0;
  int i, cminix, cmaxix;
  long j, n, seed;
  int iterations;
  static int (* CDECL pBitCntFunc[FUNCS])(long) = {
    bit_count,
    bitcount,
    ntbl_bitcnt,
    ntbl_bitcount,
    /*            btbl_bitcnt, DOESNT WORK*/
    BW_btbl_bitcount,
    AR_btbl_bitcount,
    bit_shifter
  };
  static char *text[FUNCS] = {
    "Optimized 1 bit/loop counter",
    "Ratko's mystery algorithm",
    "Recursive bit count by nybbles",
    "Non-recursive bit count by nybbles",
    /*            "Recursive bit count by bytes",*/
    "Non-recursive bit count by bytes (BW)",
    "Non-recursive bit count by bytes (AR)",
    "Shift and count bits"
  };
  /*
  if (argc<2) {
    print("Usage: bitcnts <iterations>\n\r");
    exit(-1);
	}
   */
  iterations=75000;// Small: 75000  Large: 1125000
  
//  print("Bit counter algorithm benchmark\n\r");
  
  for (i = 0; i < FUNCS; i++) {
    start = *(unsigned long*)(0xF8F00200);
    
    for (j = n = 0, seed = rand(); j < iterations; j++, seed += 13)
	 n += pBitCntFunc[i](seed);
    
    stop = *(unsigned long*)(0xF8F00200);
    ct = (stop - start);
    if (ct < cmin) {
	 cmin = ct;
	 cminix = i;
    }
    if (ct > cmax) {
	 cmax = ct;
	 cmaxix = i;
    }
    
//    xil_printf("%-38s> Time: %d; Bits: %d\n\r", text[i], ct, n);
  }
//  xil_printf("\nBest  > %s\n\r", text[cminix]);
//  xil_printf("Worst > %s\n\r", text[cmaxix]);
  return 0;
}

static int CDECL bit_shifter(long int x)
{
  int i, n;
  
  for (i = n = 0; x && (i < (sizeof(long) * CHAR_BIT)); ++i, x >>= 1)
    n += (int)(x & 1L);
  return n;
}

#endif
