cps_version: "0.9"
name: graphics
version: "2.0.0"
description: "A graphics library with multiple components"
components:
  core:
    description: "Core graphics routines"
    libs: [graphics_core]
    cflags: [ -I${prefix}/include/graphics/core ]
    ldflags: [ -L${prefix}/lib, -lgraphics_core ]
  image:
    description: "Image loading and saving"
    libs: [graphics_image]
    requires: [ core ]
    cflags: [ -I${prefix}/include/graphics/image ]
    ldflags: [ -L${prefix}/lib, -lgraphics_image ]
  ui:
    description: "UI widgets"
    libs: [graphics_ui]
    requires: [ core, image ]
    cflags: [ -I${prefix}/include/graphics/ui ]
    ldflags: [ -L${prefix}/lib, -lgraphics_ui ]
