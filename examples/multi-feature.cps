cps_version: "0.9"
name: multi-feature
version: "1.0.0"
description: "A library with multiple optional features"
libs:
  - multi-feature
features:
  - name: ssl
    description: "Enable SSL support"
    requires: [ openssl ]
    cflags: [ -DENABLE_SSL ]
  - name: zlib
    description: "Enable zlib compression"
    requires: [ zlib ]
    cflags: [ -DENABLE_ZLIB ]
