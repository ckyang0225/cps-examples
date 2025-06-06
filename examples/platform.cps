cps_version: "0.9"
name: platform
version: "1.0.0"
description: "A library with platform-specific flags"
libs:
  - platform
cflags:
  - -I${prefix}/include
cflags.windows:
  - -DPLATFORM_WINDOWS
cflags.linux:
  - -DPLATFORM_LINUX
ldflags:
  - -L${prefix}/lib
  - -lplatform
