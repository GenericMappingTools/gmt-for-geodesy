#!/usr/bin/env bash
#
# Make a global Mollweide map center at 65º W (W-65) from the Day Satelital Image (Blue Marble).

gmt begin 1_earth-day png
#   1. Set the region and projection of the map for the map (-B+n plots nothing)
#   -Rg: specify the global domain (0/360/-90/90)
    gmt basemap -Rg -JW-65/15c -B+n

#   2. Use the Day Image to make the map 
    gmt grdimage @earth_day_30m     # Resolution define by the user
    #gmt grdimage @earth_day        # Resolution define by GMT
    #gmt grdimage @earth_night      # Nighttime view

#   3. Plot other things on top of the image
    gmt coast -N1/thinnest,red     # National Boundaries

#   4. Draw simple border
    gmt basemap -B0

gmt end #show