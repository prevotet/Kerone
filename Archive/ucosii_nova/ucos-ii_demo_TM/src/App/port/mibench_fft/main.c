#include <guest_os_parameters.h>
#if IS_MIBENCH_FFT

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "xil_printf.h"

extern void fft_float (
    unsigned  NumSamples,
    int       InverseTransform,
    float    *RealIn,
    float    *ImagIn,
    float    *RealOut,
    float    *ImagOut );


int task_mibench_fft(){

	unsigned MAXSIZE;
	unsigned MAXWAVES;
	unsigned i,j;
	float *RealIn;
	float *ImagIn;
	float *RealOut;
	float *ImagOut;
	float *coeff;
	float *amp;
	int invfft=0;

	int argc;
	char *argv[4];

	argc = 4;
	argv[0] = "fft";
	argv[1] = "4";
	argv[2] = "8192";
	argv[3] = "-i";

	if (argc<3)
	{
		print("Usage: fft <waves> <length> -i\n");
		print("-i performs an inverse fft\n");
		print("make <waves> random sinusoids");
		print("<length> is the number of samples\n");
		exit(-1);
	}
	else if (argc==4)
		invfft = !strncmp(argv[3],"-i",2);
	MAXSIZE=atoi(argv[2]);
	MAXWAVES=atoi(argv[1]);

 srand(1);

 RealIn=(float*)malloc(sizeof(float)*MAXSIZE);
 ImagIn=(float*)malloc(sizeof(float)*MAXSIZE);
 RealOut=(float*)malloc(sizeof(float)*MAXSIZE);
 ImagOut=(float*)malloc(sizeof(float)*MAXSIZE);
 coeff=(float*)malloc(sizeof(float)*MAXWAVES);
 amp=(float*)malloc(sizeof(float)*MAXWAVES);


 /* Makes MAXWAVES waves of random amplitude and period */
	for(i=0;i<MAXWAVES;i++) 
	{
		coeff[i] = rand()%1000;
		amp[i] = rand()%1000;
	}
 for(i=0;i<MAXSIZE;i++) 
 {
   /*   RealIn[i]=rand();*/
	 RealIn[i]=0;
	 for(j=0;j<MAXWAVES;j++) 
	 {
		 /* randomly select sin or cos */
		 if (rand()%2)
		 {
		 		RealIn[i]+=coeff[j]*cos(amp[j]*i);
			}
		 else
		 {
		 	RealIn[i]+=coeff[j]*sin(amp[j]*i);
		 }
  	 ImagIn[i]=0;
	 }
 }


 /* regular*/
 fft_float (MAXSIZE,invfft,RealIn,ImagIn,RealOut,ImagOut);


 free(RealIn);
 free(ImagIn);
 free(RealOut);
 free(ImagOut);
 free(coeff);
 free(amp);

 return 0;


}

#endif
