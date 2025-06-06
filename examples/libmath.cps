cps_version: "0.9"
name: libmath
version: "3.2.1"
description: "A math library with public and private dependencies"
requires:
  - libcore >=1.0
requires_private:
  - libm
libs:
  - math
cflags:
  - -I${prefix}/include/libmath
ldflags:
  - -L${prefix}/lib
  - -lmath
