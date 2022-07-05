#!/usr/bin/env bash
#
# Pseudo-color plot of the Earth relief data
# Make a relief map of the Caribbean Sea.

gmt begin 3_earth-day-shading png
#   0. Sets the region and projection of the map for the map. (-B+n plots nohing)
    gmt basemap -Rg -JW-65/15c -B+nc

#   1. Calculate intesity grids from the relief grid 
    gmt grdgradient @earth_synbath_10m_p -A45 -Nt1 -Grelief_gradient.nc -Rg

#   2. Plot satelital image with hill shading efect (from the grid created in 1)
    gmt grdimage @earth_day_10m_p -Irelief_gradient.nc

#   3. Map frame. Add a border
    gmt basemap -B0
gmt end #show

# Delete intensity files
rm relief_gradient.nc