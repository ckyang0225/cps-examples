cps_version: "0.9"
name: foo
version: "1.0.0"
description: "A minimal C library"
libs:
  - foo
cflags:
  - -I${prefix}/include
ldflags:
  - -L${prefix}/lib
  - -lfoo
