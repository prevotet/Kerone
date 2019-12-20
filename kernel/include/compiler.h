/*
 * compiler.h
 *
 *  Created on: 10 déc. 2013
 *      Author: XIATAN
 */

#ifndef COMPILER_H_
#define COMPILER_H_

#define STRING(x) #x
#define EXPAND(x) STRING(x)

#if defined(__GNUC__)

        #define COMPILER            "gcc "__VERSION__
    #if defined(__GNUC_PATCHLEVEL__)
        #define COMPILER_STRING     "gcc " EXPAND(__GNUC__) "." EXPAND(__GNUC_MINOR__) "." EXPAND(__GNUC_PATCHLEVEL__)
        #define COMPILER_VERSION    (__GNUC__ * 100 + __GNUC_MINOR__ * 10 + __GNUC_PATCHLEVEL__)
    #else
        #define COMPILER_STRING     "gcc " EXPAND(__GNUC__) "." EXPAND(__GNUC_MINOR__)
        #define COMPILER_VERSION    (__GNUC__ * 100 + __GNUC_MINOR__ * 10)
    #endif

    #if (COMPILER_VERSION < 430)
        #define COLD
        #define HOT
    #else
        #define COLD                __attribute__((cold))
        #define HOT                 __attribute__((hot))
    #endif

        #define ALIGNED(X)          __attribute__((aligned(X)))
        #define ALWAYS_INLINE       __attribute__((always_inline))
        #define FORMAT(X,Y)         __attribute__((format (printf, (X),(Y))))
        #define USER                __attribute__((section (".user")))
        #define INIT                __attribute__((section (".init")))
        #define INITDATA            __attribute__((section (".initdata")))
        #define INIT_PRIORITY(X)    __attribute__((init_priority((X))))
		#define CTORS				__attribute__((section (".ctors")))
        #define NOINLINE            __attribute__((noinline))
        #define NONNULL             __attribute__((nonnull))
        #define NORETURN            __attribute__((noreturn))
        #define REGPARM(X)          __attribute__((regparm(X)))
        #define EXTERN_C            extern "C"
        #define WARN_UNUSED_RESULT  __attribute__((warn_unused_result))

        #define EXPECT_FALSE(X)     __builtin_expect(!!(X), 0)
        #define EXPECT_TRUE(X)      __builtin_expect(!!(X), 1)

        #define FAIL                __builtin_trap()
    #if (COMPILER_VERSION < 450)
        #define UNREACHED           __builtin_trap()
    #else
        #define UNREACHED           __builtin_unreachable()
    #endif


        #define ACCESS_ONCE(x)      (*static_cast<volatile typeof(x) *>(&(x)))

#else
        #define COMPILER            "unknown compiler"
        #define COMPILER_VERSION    0
#endif


#endif /* COMPILER_H_ */
