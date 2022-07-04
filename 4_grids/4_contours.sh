#!/usr/bin/env bash
#
# Make a contour plot of Earth relief in Antarctica

gmt begin 4_contours_1 png
    # Create the map frame and set the region (-RAQ for Antarctica) and
    # Sets the region and projection of the map for the map. (-B+n plots nothing)
    # The projection is stereographic (-JS) centered at the South pole (0/-90).
    gmt basemap -RAQ -JS-65/-90/15c -B+n

    # Without any options will use the defaults.
    #gmt grdcontour @earth_synbath_10m
    #gmt grdcontour @earth_synbath_10m -C1000                     # Draw every contour every 1000 (m)
    #gmt grdcontour @earth_synbath_10m -C1000 -Wcthinnest,black   # Sets the properties of the lines.
    #gmt grdcontour @earth_synbath_10m -C1000 -Wcthinnest,black   # Sets the properties of the lines.
    gmt grdcontour @earth_synbath_10m -C1000 -Wcthinnest,black  -A2000 -Wathinner,black
    
    #gmt grdcontour @earth_relief_10m \
    #    -C1000 -Wcthinnest,black \
    #    -A2000 -Wathinner,black

#   Map frame
    gmt basemap -Baf
gmt end #show
