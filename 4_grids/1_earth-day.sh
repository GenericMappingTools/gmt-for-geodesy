#!/usr/bin/env bash
#
# Make a global Mollweide map center at 65º W (W-65) from the Day Satalital Image (Blue Marble).

gmt begin 1_earth-day png
#   Sets the region and projection of the map for the map. (-B+n plots nohing)
#   -Rg: specify the global domain (0/360/-90/90)
    gmt basemap -Rg -JW-65/15c -B+n

#   Use the Day Image to make the map 
    #gmt grdimage @earth_day_30m  # Resolution define by the user
    gmt grdimage @earth_day       # Resolution define by GMT

#   Plot other things on top of the image
    gmt coast -N1/thinnest,red     # National Boundaries

#   Draw simple border
    gmt basemap -B0

gmt end #show

# Exercise
# Change the name of the file to make a map with the nighttime view.