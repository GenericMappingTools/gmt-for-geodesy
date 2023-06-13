#!/usr/bin/env bash
#
# Make a global Mollweide map center at 65º W (W-65) from the Day Satelital Image (Blue Marble).

gmt begin 1_earth-day png
#   1. Set the region and projection of the map for the map (-B+n plots nothing)
#   -Rg: specify the global domain (0/360/-90/90)
    gmt basemap -Rg -JW-65/15c -B+n

#   5. Use DCW-Collections to set the region
   gmt basemap -JM15c -B+n -RIHO1 # Baltic Sea
#   gmt basemap -JM15c -B+n -RCSPS  # Caspian Sea
#   gmt basemap -JM15c -B+n -RBRNI  # Borneo Island
#   gmt basemap -JM15c -B+n -RUN005 # South America (UN)
#   gmt basemap -JM15c -B+n -RSAM   # South America (geographically)
#   gmt basemap -JM15c -B+n -RSHRD  # Sahara Desert

#   2. Use the Day Image to make the map 
    #gmt grdimage @earth_day_30m    # Resolution define by the user
    gmt grdimage @earth_day         # Resolution define by GMT
    #gmt grdimage @earth_night      # Nightime view

#   3. Plot other things on top of the image
    gmt coast -N1/thinnest,red     # National Boundaries

#   4. Draw simple border
    gmt basemap -B0

gmt end #show

# Exercise
# Change the name of the file to make a map with the nighttime view.