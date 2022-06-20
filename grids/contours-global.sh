#!/usr/bin/env bash
#
# Sample contour plot using global Earth relief

gmt begin contours-global png
    # Create the map frame and set the region to global (-Rg) and projection to
    # Robinson (-JN)
    gmt basemap -Rg -JR15c -Bf

    # Plot the positive and negative contours separately using different
    # colors. Only plot contours with more than 1000km length to remove all of
    # the small islands and features that polute the map.
    gmt grdcontour @earth_relief_01d -LP -Q1000k \
        -C500 -Wcthinnest,gray60 \
        -A2000+f4p -Wathinner,gray40
    gmt grdcontour @earth_relief_01d -Ln -Q1000k \
        -C500 -Wcthinnest,lightblue2 \
        -A2000+f4p -Wathinner,lightblue3
gmt end show
