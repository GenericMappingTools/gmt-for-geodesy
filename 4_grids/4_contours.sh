#!/usr/bin/env bash
#
# Make a contour plot of Earth relief in Antarctica

gmt begin 4_contours png
    # Sets the region and projection of the map for the map. (-B+n plots nothing)
    gmt basemap -R-88.9369/-59.3818/7.9049/22.7054 -JM15c -B+n
        
    # Plot relief
    gmt grdimage @earth_synbath -Coleron -I+d

    # Draw contour lines from grid. 
    #gmt grdcontour @earth_synbath                      # Draw default contours.
    #gmt grdcontour @earth_synbath -Ln                  # Draw only negative contours.
    #gmt grdcontour @earth_synbath -Ln -Q500k           # Do NOT draw countour shorter than 500 km.
    #gmt grdcontour @earth_synbath -Ln -Q500k -C200     # Draw contours every 200 m.
    #gmt grdcontour @earth_synbath -Ln -Q500k -C200 -Wc0,gray15,dashed  # Sets the contour lines attributes
    #gmt grdcontour @earth_synbath -Ln -Q500k -C200 -Wc0,gray15,dashed \
    #-A2000+f5+p+gwhite  -Wa0                           # Set annotation attributes

    #   Map frame
    gmt basemap -Baf
gmt end #show
