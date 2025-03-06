Introduction
============

This repository demonstrates how the |CPS|_ can be used
to both describe and consume a package.
It uses CMake as both the producing and consuming build system.

It provides two projects:

- ``zwrap`` is a very basic header-only C++ wrapper around zlib-ng.

- ``zdemo`` provides a very basic demonstration of ``zwrap``.

What is notable is that ``zwrap`` exports a CPS format description of itself,
which includes its transitive dependency on zlib-ng.
This package description is in turn consumed by ``zdemo``.

Build Instructions
==================

Setup
-----

You will also need to have `zlib-ng`_ installed.
We recommend building on a Linux platform (Ubuntu, Fedora, etc.).

Superbuild
----------

Build the ``zdemo`` project as you would any CMake project.
This will build both the ``zwrap`` and ``ztest`` projects
as external projects and will automatically handle
pointing ``ztest`` at the "installed" ``zwrap``.

Separate Builds
---------------

Build and install the ``zwrap`` project as you would any CMake project,
installing it to a location of your choosing.
Then configure ``zdemo`` as normal,
pointing ``zwrap_DIR`` at the location of ``zwrap.cps``.

If using CMake 4.1 or later, you can skip installing
and point at the build-tree ``zwrap.cps``.

.. ... .. ... .. ... .. ... .. ... .. ... .. ... .. ... .. ... .. ... .. ... ..

.. _CPS: https://cps-org.github.io/cps/
.. _zlib-ng: https://github.com/zlib-ng/zlib-ng

.. |CPS| replace:: Common Package Specification
