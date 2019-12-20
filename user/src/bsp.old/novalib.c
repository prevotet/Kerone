/*
 * novalib.c
 *
 *  Created on: 23 sept. 2015
 *      Author: XIATAN
 */

extern "C" {

unsigned int _getpid() { return 0; }
int _kill( int id, int sig ) { return 0; }
void _sbrk( int id) {}
int _fstat (int fd, void* buf) { return 0; }
int _write( int fd, char *buf, int count ) { return 0; }
int _read( int fd, char *buf, int count ) { return 0; }
int _lseek( int fd, int count ) { return 0; }
int _close( int fd ) { return 0; }
int _isatty( int fd ) { return 0; }

}


