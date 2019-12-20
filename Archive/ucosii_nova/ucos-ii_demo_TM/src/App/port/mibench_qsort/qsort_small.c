#include <guest_os_parameters.h>
#if IS_MIBENCH_BITCNT

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "../sd/sd.h"
#include "../sd/ff.h"

#define IS_SMALL 1

#if IS_SMALL

#define UNLIMIT
#define MAXARRAY 3000 /* this number, if too large, will cause a seg. fault!! */

struct myStringStruct {
  char qstring[16];
};

int compare(const void *elem1, const void *elem2)
{
  int result;
  
  result = strcmp((*((struct myStringStruct *)elem1)).qstring, (*((struct myStringStruct *)elem2)).qstring);

  return (result < 0) ? 1 : ((result == 0) ? 0 : -1);
}


int qsort_test() {
  struct myStringStruct array[MAXARRAY];

  int i,count=0;
  
  char *infile = "qsorti.dat";

  InitSD();
/*
  if (argc<2) {
    print("Usage: qsort_small <file>\n");
    exit(-1);
  }
  else {
*/

  SDOpen(infile, &fil1);
/*
  while((f_gets((char *)&array[count].qstring, sizeof(struct myStringStruct), &fil1)!=0) && (count < MAXARRAY-1))
	  count++;
*/
  for(count=0; count < MAXARRAY; count++){
	  if(f_gets((char *)&array[count].qstring, sizeof(struct myStringStruct), &fil1) ==0 )
		  break;
  }
  /*
    while((fscanf(fp, "%s", &array[count].qstring) == 1) && (count < MAXARRAY)) {
	 count++;
    }
  }
  */
  //xil_printf("\n\r Sorting %d elements.\n\r",count);
  qsort(array,count,sizeof(struct myStringStruct),compare);
  
/*
  for(i=0;i<count;i++)
    xil_printf("%s\n\r", array[i].qstring);
  return 0;
*/
  SDClose(&fil1);
}

#endif

#endif
