#!/usr/bin/env bash
#
# Make a global Mollweide map center at 65º W (W-65) from the Day Satalital Image (Blue Marble).

gmt begin 1_earth-day png
#   Sets the region and projection of the map for the map. (-B+n plots nohing)
#   -Rg: specify the global domain (0/360/-90/90)
    gmt basemap -Rg -JW-65/15c -B+n

#   DCW-Collections
#    gmt basemap -JM15c -B+n -RIHO1 # Baltic Sea
#    gmt basemap -JM15c -B+n -RCSPS  # Caspian Sea
#    gmt basemap -JM15c -B+n -RBRNI  # Borneo Island
#    gmt basemap -JM15c -B+n -RUN005 # South America (UN)
#    gmt basemap -JM15c -B+n -RSAM   # South America (geographically)
#    gmt basemap -JM15c -B+n -RSHRD  # Sahara Desert


#   Use the Day Image to make the map 
    #gmt grdimage @earth_day_30m  # Resolution define by the user
    gmt grdimage @earth_day     # Resolution define by GMT

#   Plot other things on top of the image
    gmt coast -N1/thinnest,red     # National Boundaries

#   Draw simple border
    gmt basemap -B0

gmt end #show

# Exercise
# Change the name of the file to make a map with the nighttime view.