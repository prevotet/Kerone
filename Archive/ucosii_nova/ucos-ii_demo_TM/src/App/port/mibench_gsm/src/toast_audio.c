/*
 * Copyright 1992 by Jutta Degener and Carsten Bormann, Technische
 * Universitaet Berlin.  See the accompanying file "COPYRIGHT" for
 * details.  THERE IS ABSOLUTELY NO WARRANTY FOR THIS SOFTWARE.
 */

/* $Header: /home/mguthaus/.cvsroot/mibench/telecomm/gsm/src/toast_audio.c,v 1.1.1.1 2000/11/06 19:54:26 mguthaus Exp $ */

#include	"../inc/toast.h"
#include 	"../../sd/ff.h"

/*  toast_audio -- functions to manipulate SunOS audio files.
 *
 *  This is reverse engineered from our present soundfiles
 *  and in no way portable, durable or aesthetically pleasing.
 */

extern FILE	* in, 	  * out;
extern char	* inname;
extern char	* progname;

extern int	(*output) P((gsm_signal *)),
		(*input ) P((gsm_signal *));

extern int	alaw_input   P((gsm_signal *)),
		ulaw_input   P((gsm_signal *)),
		linear_input P((gsm_signal *));

extern int	ulaw_output P((gsm_signal *));

extern BYTE SD_getc(FIL*);
extern int SD_fseek(FIL*, unsigned int, int);

static int put_u32 P2((f, u), FILE * f, unsigned long u)
{
	/*  Write a 32-bit unsigned value msb first. 
	 */
	if (  putc( (char)((u>>24) & 0x0FF), f) == EOF
	   || putc( (char)((u>>16) & 0x0FF), f) == EOF
	   || putc( (char)((u>> 8) & 0x0FF), f) == EOF
	   || putc( (char)( u      & 0x0FF), f) == EOF) return -1;

	return 0;
}

static int get_u32(FIL * f, unsigned long * up)
{
	/*  Read a 32-bit unsigned value msb first.
	 */
	int		i;
	unsigned long 	u;

	if (  				      (i = SD_getc(f)) == EOF
	   || ((u =        (unsigned char)i), (i = SD_getc(f)) == EOF)
	   || ((u = (u<<8)|(unsigned char)i), (i = SD_getc(f)) == EOF)
	   || ((u = (u<<8)|(unsigned char)i), (i = SD_getc(f)) == EOF))
		return -1;

	*up = 	    (u<<8)|(unsigned char)i;

	return 0;
}

int audio_init_input P0()
{
	unsigned long	len, enc;	/* unsigned 32 bits	*/

	if (  SD_getc (&fil1) != '.'
	   || SD_getc (&fil1) != 's'
	   || SD_getc (&fil1) != 'n'
	   || SD_getc (&fil1) != 'd'
	   || get_u32 (&fil1, &len )
	   || get_u32 (&fil1, &enc )	/* skip this */
	   || get_u32 (&fil1, &enc )
	   || SD_fseek(&fil1, (long)(len - 4*4), 1) < 0) {
		print( "Bad (missing?) header in Sun audio file\n");
		return -1;
	}

	switch (enc) {
	case 1:	input = ulaw_input;  	break;
	case 2: input = alaw_input;  	break;
	case 3: input = linear_input; 	break;
	default:
		print("warning: file format #%lu for %s not implemented, defaulting to u-law.\n");
		input = ulaw_input;
		break;
	}
	return 0;
}

int audio_init_output P0()
{
	if (  fputs(".snd", out) == EOF
	   || put_u32(out, 32)
	   || put_u32(out, ~(unsigned long)0)
	   || put_u32(out, 1)
	   || put_u32(out, 8000)
	   || put_u32(out, 1)
	   || put_u32(out, 0)
	   || put_u32(out, 0)) return -1;

	return 0;
}

