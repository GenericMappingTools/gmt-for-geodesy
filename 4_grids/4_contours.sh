#!/usr/bin/env bash
#
# Add contour lines to the Caribbean Sea Map

gmt begin 4_contours png
    # 1. Set the region and projection of the map for the map (-B+n plots nothing).
    gmt basemap -RIHO27 -JM15c -B+n
        
    # 2. Plot relief
    gmt grdimage @earth_synbath -Coleron -I

    # 3. Draw contour lines from grid. 
    #gmt grdcontour @earth_synbath                      # Draw default contours.
    #gmt grdcontour @earth_synbath -Ln                  # Draw only negative contours.
    #gmt grdcontour @earth_synbath -Ln -Q500k           # Do NOT draw countour shorter than 500 km.
    #gmt grdcontour @earth_synbath -Ln -Q500k -C200     # Draw contours every 200 m.
    #gmt grdcontour @earth_synbath -Ln -Q500k -C200 -Wc0,gray15,dashed  # Sets the contour lines attributes
    gmt grdcontour @earth_synbath -Ln -Q500k -C200 -Wc0,gray15,dashed \
    -A2000+f5+p+gwhite  -Wa0                           # Set annotation attributes

    #   4. Map frame
    gmt basemap -Baf
gmt end #show

#   Bonus exercise:
#   Change the values for the modifiers of the contours.