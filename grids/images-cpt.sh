#!/usr/bin/env bash
#
# Choose a different CPT for our pseudo-color plot of Antarctica relief

gmt begin images-cpt png
    # Create the map frame and set the region (-RAQ for Antarctica) and
    # projection. The projection is stereographic (-JS) centered at the South
    # pole (0/-90).
    gmt basemap -RAQ -JS0/-90/15c -B

    # Create a custom CPT that only plots the ocean bathymetry (limiting the
    # range of values from -5000 to 0 with -T) based on the "abyss" colormap.
    # This sets the "current" CPT for GMT commands, which we can use with
    # grdimage.
    gmt makecpt -Cabyss -T-5000/0

    # Now grdimage will use the current CPT instead of the default one without
    # us having to do anything.
    gmt grdimage @earth_relief_10m

    # Add a colorbar using the default placement and style.
    gmt colorbar
gmt end show
