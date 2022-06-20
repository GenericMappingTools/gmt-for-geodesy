#!/usr/bin/env bash
#
# Make a contour plot of Earth relief in Antarctica

gmt begin contours png
    # Create the map frame and set the region (-RAQ for Antarctica) and
    # projection. The projection is stereographic (-JS) centered at the South
    # pole (0/-90).
    gmt basemap -RAQ -JS0/-90/15c -B

    # Without any options will use the defaults.
    gmt grdcontour @earth_relief_10m
gmt end show
