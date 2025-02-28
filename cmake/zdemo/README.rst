Introduction
============

This repository demonstrates how the |CPS|_ can be used
to both describe and consume a package.
It uses CMake as the consuming build system.

It provides two projects:

- ``zwrap`` is a very basic header-only C++ wrapper around zlib-ng.

- ``zdemo`` provides a very basic demonstration of ``zwrap``.

What is notable is that ``zwrap`` exports a CPS format description of itself,
which includes its transitive dependency on zlib-ng.
This package description is in turn consumed by ``zdemo``.

Build Instructions
==================

Build and install the ``zwrap`` project as you would any CMake project,
installing it to a location of your choosing.
Then configure ``zdemo`` as normal,
pointing ``zwrap_DIR`` at the location of ``zwrap.cps``.

You will also need to have `zlib-ng`_ installed.
We recommend building on a Linux platform (Ubuntu, Fedora, etc.).

.. ... .. ... .. ... .. ... .. ... .. ... .. ... .. ... .. ... .. ... .. ... ..

.. _CPS: https://cps-org.github.io/cps/
.. _zlib-ng: https://github.com/zlib-ng/zlib-ng

.. |CPS| replace:: Common Package Specification
