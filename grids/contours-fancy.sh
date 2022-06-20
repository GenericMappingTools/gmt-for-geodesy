#!/usr/bin/env bash
#
# Make a fancier contour map using different colors for the oceanic and
# continental parts.

gmt begin contours-fancy png
    # Create the map frame and set the region (-RAQ for Antarctica) and
    # projection. The projection is stereographic (-JS) centered at the South
    # pole (0/-90).
    gmt basemap -RAQ -JS0/-90/15c -B

    # GMT is all about *layering* plot elements. We'll first add a layer with
    # the continental part in black contours. We can do this by restricting
    # grdcontour to only plot the positive contours with -L (p for positive).
    # We can also configure the font size of the annoations using +f with -A
    # (6p means 6 pt size font).
    gmt grdcontour @earth_relief_10m -Lp \
        -C500 -Wcthinnest,gray50 \
        -A2000+f6p -Wathin,gray50

    # Now the negative parts in light blue (n for negative)
    gmt grdcontour @earth_relief_10m -Ln \
        -C500 -Wcthinnest,lightblue \
        -A2000+f6p -Wathin,lightblue

    # Plot the coastlines using a thick black line
    gmt coast -Wthick,black
gmt end show
