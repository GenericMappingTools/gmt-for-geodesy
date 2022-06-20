#!/usr/bin/env bash
#
# Make a global relief map with hill shading and change the colormap/CPT

gmt begin images-shading png
    # Create the map frame and set the region (-Rg for global) and
    # projection. The projection is Robinson (-JN).
    gmt basemap -Rg -JN15c -B

    # To add automatic hill shading, use the -I option with default arguments
    # (+d). To really make it pop, use the "gray" colormap instead of the
    # default using the -C option.
    gmt grdimage @earth_relief_10m -Cgray -I+d

    # Add a colorbar using the default placement and style.
    gmt colorbar
gmt end show
