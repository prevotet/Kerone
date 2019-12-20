/*
 * assert.h
 *
 *  Created on: 10 déc. 2013
 *      Author: XIATAN
 */

#ifndef ASSERT_H_
#define ASSERT_H_

#include "compiler.h"
//#include "stdio.h"

#ifdef DEBUG
#define assert(X)   do {                                                                            \
                        if (EXPECT_FALSE (!(X)))                                                    \
                            printf ("Assertion \"%s\" failed at %s:%d\n", #X, __FILE__, __LINE__);  \
                            FAIL;                                                                   \
                    } while (0)
#else
#define assert(X)   do { (void) sizeof (X); } while (0)
#endif


#endif /* ASSERT_H_ */
