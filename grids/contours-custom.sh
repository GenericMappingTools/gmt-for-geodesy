#!/usr/bin/env bash
#
# Configure the contour intervals and the pen for regurlar and annotated
# contours (the ones with data values).

gmt begin contours-custom png
    # Create the map frame and set the region (-RAQ for Antarctica) and
    # projection. The projection is stereographic (-JS) centered at the South
    # pole (0/-90).
    gmt basemap -RAQ -JS0/-90/15c -B

    # Set the regular (-C) and annotated (-A) contour intervals and the
    # respective pens (Wc and Wa).
    gmt grdcontour @earth_relief_10m \
        -C1000 -Wcthinnest,black \
        -A2000 -Wathinner,black
gmt end show
