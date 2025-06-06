cps_version: "0.9"
name: bar
version: "2.1.0"
description: "A C++ library depending on foo"
requires:
  - foo >=1.0.0
libs:
  - bar
cflags:
  - -I${prefix}/include/bar
ldflags:
  - -L${prefix}/lib
  - -lbar
features:
  - name: debug
    description: "Enable debug symbols"
    cflags: [ -g ]
