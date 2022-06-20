#!/usr/bin/env bash
#
# Pseudo-color plot of the Earth relief data

gmt begin earth-relief png E100
    # Make a global Mollweide map centered at 0 longitude
    gmt basemap -Rg -JW0/25c -Bf

    # Plot the GMT Earth relief data using the default colormap/CPT and with
    # automatic hill shading (-I+d)
    gmt grdimage @earth_relief_10m -I+d
gmt end show
