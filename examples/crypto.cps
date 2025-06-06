cps_version: "0.9"
name: crypto
version: "1.5.0"
description: "A cryptography library with optional features"
libs:
  - crypto
features:
  - name: openssl
    description: "Enable OpenSSL backend"
    requires: [ openssl ]
    cflags: [ -DENABLE_OPENSSL ]
  - name: gnutls
    description: "Enable GnuTLS backend"
    requires: [ gnutls ]
    cflags: [ -DENABLE_GNUTLS ]
