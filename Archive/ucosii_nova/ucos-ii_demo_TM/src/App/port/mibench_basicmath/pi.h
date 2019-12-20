/* +++Date last modified: 05-Jul-1997 */

#include <guest_os_parameters.h>
#if IS_MIBENCH_BASICMATH

#ifndef PI__H
#define PI__H

#ifndef PI
 #define PI         (4*atan(1))
#endif

#define deg2rad(d) ((d)*PI/180)
#define rad2deg(r) ((r)*180/PI)

#endif /* PI__H */

#endif
