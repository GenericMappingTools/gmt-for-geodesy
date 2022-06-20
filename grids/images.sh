#!/usr/bin/env bash
#
# Make a pseudo-color plot of Antarctica relief using the defaults

gmt begin images png
    # Create the map frame and set the region (-RAQ for Antarctica) and
    # projection. The projection is stereographic (-JS) centered at the South
    # pole (0/-90).
    gmt basemap -RAQ -JS0/-90/15c -B

    # Plot Earth relief by mapping values to colors using the default CPT
    # chosen by GMT.
    gmt grdimage @earth_relief_10m

    # Add a colorbar using the default placement and style.
    gmt colorbar
gmt end show
