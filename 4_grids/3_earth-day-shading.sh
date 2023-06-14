#!/usr/bin/env bash
#
# Add a hill-shading effect on a satelital map.
# Use DCW-Collections

gmt begin 3_earth-day-shading png
#   0. Set the region and projection of the map for the map (-B+n plots nothing).
    gmt basemap -Rg -JW-65/15c -B+nc

#   4. Use DCW-Collections to set the region
#   gmt basemap -JM15c -B+n -RIHO27     # Caribbean Sea
#   gmt basemap -JM15c -B+n -RIHO1      # Baltic Sea
#   gmt basemap -JM15c -B+n -RCSPS      # Caspian Sea
#   gmt basemap -JM15c -B+n -RBRNI      # Borneo Island
#   gmt basemap -JM15c -B+n -RUN005     # South America (UN)
#   gmt basemap -JM15c -B+n -RSAM       # South America (geographically)
#   gmt basemap -JM15c -B+n -RSHRD      # Sahara Desert

#   1. Calculate intesity grids from the relief grid 
    # Here I must indicate a resolution since grdgradient do not plot anything.
    gmt grdgradient @earth_synbath_10m -A45 -Nt1 -Grelief_gradient.nc -Rg

#   2. Plot satelital image with hill shading efect (from the grid created in 1)
    gmt grdimage @earth_day_10m -Irelief_gradient.nc

#   3. Map frame. Add a border
    gmt basemap -B0
gmt end #show

# Delete intensity files
rm relief_gradient.nc

#   Bonus exercise:
#   Try the DCW Collections to define the region. You can get the full list with: 
#   gmt pscoast -E+n