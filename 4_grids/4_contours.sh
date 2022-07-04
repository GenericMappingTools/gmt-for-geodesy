#!/usr/bin/env bash
#
# Make a contour plot of Earth relief in Antarctica

gmt begin 4_contours_4 png
    # Sets the region and projection of the map for the map. (-B+n plots nothing)
    gmt basemap -R-88.9369/-59.3818/7.9049/22.7054 -JM15c -B+n

    # Without any options will use the defaults.
    # Draw contour lines from grid. 
    # -C: sets contour interval
    # -L: Limits the range
    # -Q: Do not draw contours with less than n number of points
    # -Wc: sets pen to draw lines
    # -Wa: sets pen to draw annotaions.
    #gmt grdcontour @earth_synbath
    #gmt grdcontour @earth_synbath -Ln              # Draw only negative contours.
    #gmt grdcontour @earth_synbath -Ln -Q500k       # Do NOT draw countour shorter than 500 km.
    gmt grdcontour @earth_synbath -Ln -Q500k -C500  # Draw contours every 500 m.
    #gmt grdcontour @earth_synbath -C1000 -Lp -Wcthinnest,black   # Sets the properties of the lines.
    #gmt grdcontour @earth_synbath -C1000 -Wcthinnest,black  -A2000 -Wathinner,black
    
    #gmt grdcontour @earth_relief_10m \
    #    -C1000 -Wcthinnest,black \
    #    -A2000 -Wathinner,black

    gmt coast -Wred
#   Map frame
    gmt basemap -Baf
gmt end show
