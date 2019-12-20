/*
 * Copyright 1992 by Jutta Degener and Carsten Bormann, Technische
 * Universitaet Berlin.  See the accompanying file "COPYRIGHT" for
 * details.  THERE IS ABSOLUTELY NO WARRANTY FOR THIS SOFTWARE.
 */

/* $Header: /home/mguthaus/.cvsroot/mibench/telecomm/gsm/src/toast.c,v 1.1.1.1 2000/11/06 19:54:26 mguthaus Exp $ */

#include "../inc/toast.h"
#include "xil_printf.h"
#include "../../sd/ff.h"
#include "../../sd/sd.h"




/*  toast -- lossy sound compression using the gsm library.
 */

char   * progname;

int	f_decode   = 0;		/* decode rather than encode	 (-d) */
int f_cat	   = 0;		/* write to stdout, not foo.gsm	 (-c) */
int	f_force	   = 0;		/* force deletion 		 (-f) */
int	f_precious = 0;		/* avoid deletion		 (-p) */
int	f_fast	   = 0;		/* use faster fpt algorithm	 (-F) */
int	f_verbose  = 0;		/* debugging			 (-V) */

struct stat instat;		/* stat (inname) 		 */

FILE	*in, 	 *out;
char	*inname, *outname;




/*
 *  The function (*output)() writes a frame of 160 samples given as
 *  160 signed 16 bit values (gsm_signals) to <out>.
 *  The function (*input)() reads one such frame from <in>.
 *  The function (*init_output)() begins output (e.g. writes a header).,
 *  The function (*init_input)() begins input (e.g. skips a header).
 *
 *  There are different versions of input, output, init_input and init_output
 *  for different formats understood by toast; which ones are used 
 *  depends on the command line arguments and, in their absence, the
 *  filename; the fallback is #defined in toast.h
 *
 *  The specific implementations of input, output, init_input and init_output
 *  for a format `foo' live in toast_foo.c.
 */

int	(*output   ) P((gsm_signal *)),
	(*input    ) P((gsm_signal *));
int	(*init_input)  P((void)),
	(*init_output) P((void));

static int	generic_init P0() { return 0; }	/* NOP */

struct fmtdesc {

	char * name, * longname, * suffix;

	int  (* init_input )  P((void)),
	     (* init_output)  P((void));

	int  (* input ) P((gsm_signal * )),
	     (* output) P((gsm_signal * ));

} f_audio = {
		"audio",
		"8 kHz, 8 bit u-law encoding with Sun audio header", ".au",
		audio_init_input,
		audio_init_output,
		ulaw_input,
		ulaw_output
}, f_ulaw = {
		"u-law", "plain 8 kHz, 8 bit u-law encoding", ".u",
		generic_init,
		generic_init,
		ulaw_input,
		ulaw_output 

}, f_alaw = {
		"A-law", "8 kHz, 8 bit A-law encoding", ".A",
		generic_init,
		generic_init,
		alaw_input,
		alaw_output

}, f_linear = {
		"linear",
		"16 bit (13 significant) signed 8 kHz signal", ".l",
		generic_init,
		generic_init,
		linear_input,
		linear_output
};

struct fmtdesc * alldescs[] = {
	&f_audio,
	&f_alaw,
	&f_ulaw,
	&f_linear,
	(struct fmtdesc *)NULL
};

#define	DEFAULT_FORMAT	f_ulaw		/* default audio format, others	*/
					/* are: f_alaw,f_audio,f_linear */
struct fmtdesc * f_format  = 0;



static void prepare_io P1(( desc), struct fmtdesc * desc)
{
	output      = desc->output;
	input       = desc->input;

	init_input  = desc->init_input;
	init_output = desc->init_output;
}


static int open_input( char * name, struct stat * st)
{
	struct fmtdesc * f = f_format;

	st->st_nlink = 0;	/* indicates `undefined' value */

	if (!name) {
		inname = (char *)NULL;
	/*	in     = stdin;		*/
	}
	else {
		if (f_decode)
			inname = 0;
		else
			inname =  name;

		if (SDOpen(inname, &fil1)) {
			print("cannot open for reading\n");
			return 0;
		}

/*		if (!okay_as_input(inname, in, st)) return 0;

		if (!f) f = grok_format(inname);
		*/
	}
	prepare_io( f ? f : & DEFAULT_FORMAT );
	return 1;
}

static int open_output(char *name)
{
	if (!name || f_cat) {
	/*	out     = stdout;			*/
		outname = (char *)NULL;
	}
	else {
		outname = name;
		if (SDOpen(outname, &fil2)) {
			xil_printf("%s: cannot open \"%s\" for reading\n", progname, inname);
			return 0;
		}


		/*
		int outfd = -1;
		char * o;

		o = (*(f_decode ? plainname : codename))(name);
		if (!length_okay(o)) return 0;
		if ((outfd = open(o, O_WRITE_EXCL, 0666)) >= 0)
			out = fdopen(outfd, WRITE);
		else if (errno != EEXIST) out = (FILE *)NULL;
		else if (ok_to_replace(o)) out = fopen(o, WRITE);
		else return 0;

		if (!out) {
			perror(o);
			fprintf(stderr,
				"%s: can't open \"%s\" for writing\n",
				progname, o);
			if (outfd >= 0) (void)close(outfd);
			return 0;

		}

		outname = o;
		*/


	}
	return 1;
}

static int process_encode()
{
	gsm      		r;
	gsm_signal    	s[ 160 ];
	gsm_frame		d;
 
	int		cc;

	int round = 0;

	unsigned int sdr;

	sdr = 0;

	if (!(r = gsm_create())) {
		print("gsm_create error \n\r");
		return -1;
	}
	(void)gsm_option(r, GSM_OPT_FAST,    &f_fast);
	(void)gsm_option(r, GSM_OPT_VERBOSE, &f_verbose);

	while ((cc = (*input)(s)) > 0) {
		if (cc < sizeof(s) / sizeof(*s))
			memset((char *)(s+cc), 0, sizeof(s)-(cc * sizeof(*s)));

		gsm_encode(r, s, d);

		sdr = SDAccess_write(w_ptr, &d, sizeof(d), &w_count, &fil2);

/*		if ( fwrite((char *)d, sizeof(d), 1, out) != 1) {*/
		if(sdr){
			print("error writing\n");
			gsm_destroy(r);
			return -1;
		}
		w_ptr = w_ptr + w_count;

		round ++;
	}

	if (cc < 0) {
		print("error reading\n");
		gsm_destroy(r);
		return -1;
	}
	gsm_destroy(r);

	return 0;
}

static int process_decode()
{
/*
	gsm      	r;
	gsm_frame	s;
	gsm_signal	d[ 160 ];
 
	int		cc;

	if (!(r = gsm_create())) {	/* malloc failed */
/*		perror(progname);
		return -1;
	}
	(void)gsm_option(r, GSM_OPT_FAST,    &f_fast);
	(void)gsm_option(r, GSM_OPT_VERBOSE, &f_verbose);

	while ((cc = fread(s, 1, sizeof(s), in)) > 0) {

		if (cc != sizeof(s)) {
			if (cc >= 0) fprintf(stderr,
			"%s: incomplete frame (%d byte%s missing) from %s\n",
					progname, sizeof(s) - cc,
					"s" + (sizeof(s) - cc == 1),
					inname ? inname : "stdin" );
			gsm_destroy(r);
			errno = 0;
			return -1;
		}
		if (gsm_decode(r, s, d)) {
			fprintf(stderr, "%s: bad frame in %s\n", 
				progname, inname ? inname : "stdin");
			gsm_destroy(r);
			errno = 0;
			return -1;
		}

		if ((*output)(d) < 0) {
			perror(outname);
			fprintf(stderr, "%s: error writing to %s\n",
					progname, outname);
			gsm_destroy(r);
			return -1;
		}
	}

	if (cc < 0) {
		perror(inname ? inname : "stdin" );
		fprintf(stderr, "%s: error reading from %s\n", progname,
			inname ? inname : "stdin");
		gsm_destroy(r);
		return -1;
	}

	gsm_destroy(r);
	return 0;
	*/
}

static int process(char * name1, char * name2)
{
	int step = 0;

/*	out     = (FILE *)0;
	in      = (FILE *)0;
*/


	outname = (char *)0;
	inname  = (char *)0;

	if (!open_input(name1, &instat) || !open_output(name2))
		goto err;

	if ((*(f_decode ? init_output    : init_input))()) {
		xil_printf("%s: error %s %s\n", progname,
			f_decode ? "writing header to" : "reading header from",
			f_decode ? (outname ? outname : "stdout") : (inname ? inname : "stdin"));
		goto err;
	}

	if ((*(f_decode ? process_decode : process_encode))())
		goto err;

	if(SDClose(&fil1)| SDClose(&fil2))
		goto err;

	return 0;

	/*
	if (fflush(out) < 0 || ferror(out)) {
		perror(outname ? outname : "stdout");
		fprintf(stderr, "%s: error writing \"%s\"\n", progname,
				outname ? outname:"stdout");
		goto err;
	}

	if (out != stdout) {

		if (fclose(out) < 0) {
			perror(outname);
			fprintf(stderr, "%s: error writing \"%s\"\n",
				progname, outname);
			goto err;
		}
		if (outname != name) free(outname);
		outname = (char *)0;
	}
	out = (FILE *)0;
	if (in  != stdin) {
		(void)fclose(in), in = (FILE *)0;
		if (!f_cat && !f_precious) {
			if (unlink(inname) < 0) {
				perror(inname);
				fprintf(stderr,
					"%s: source \"%s\" not deleted.\n",
					progname, inname);
			}
			goto err;
		}
		if (inname != name) free(inname);
		inname = (char *)0;
	}
	return 0;
*/


	/*
	 *  Error handling and cleanup: 
	 *  - error out: close out, unlink it, close in, free the names.
	 *  - 
	 */
err:
	print("Process error. \n\r");
	return -1;

	/*
	if (out && out != stdout) {
		(void)fclose(out), out = (FILE *)0;
		if (unlink(outname) < 0 && errno != ENOENT && errno != EINTR) {
			perror(outname);
			fprintf(stderr, "%s: could not unlink \"%s\"\n",
				progname, outname);
		}
	}
	if (in && in != stdin) (void)fclose(in), in = (FILE *)0;

	if (inname  && inname  != name) free(inname);
	if (outname && outname != name) free(outname);

	return -1;
	*/


}





static void set_format P1((f), struct fmtdesc * f)
{
	if (f_format && f_format != f) {
		xil_printf("%s: only one of -[uals] is possible (%s -h for help)\n",
			progname, progname);
		exit(1);
	}

	f_format = f;
}

void gsm_bench()
{
	int  		opt;

	char * av = "ausmall.au";
	char * rs = "resau";

	opt = 's';

	switch (opt) {

	case 'd': f_decode   = 1; break;
	case 'f': f_force    = 1; break;
	case 'c': f_cat      = 1; break;
	case 'p': f_precious = 1; break;
	case 'F': f_fast     = 1; break;

	case 's': set_format( &f_audio  ); break;

	default: 
		xil_printf("Usage: %s [-fcpdhvuaslF] [files...] (-h for help)\n",
			progname);
		exit(1);
	}

	r_ptr = 0;
	w_ptr = 0;
	r_count = 0;
	w_count = 0;

	InitSD();

	f_precious |= f_cat;

/*	catch_signals(onintr);*/

//	SDOpen("ausmall.au", &fil1);
//	SDOpen("small", &fil2);

	process( av, rs );
}

void _stat(){
	return;
}
