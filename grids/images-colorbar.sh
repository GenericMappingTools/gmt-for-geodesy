#!/usr/bin/env bash
#
# Add a colorbar to our pseudo-color plot of Antarctica relief

gmt begin images-colorbar png
    # Create the map frame and set the region (-RAQ for Antarctica) and
    # projection. The projection is stereographic (-JS) centered at the South
    # pole (0/-90).
    gmt basemap -RAQ -JS0/-90/15c -B

    # Plot Earth relief by mapping values to colors using the default CPT
    # chosen by GMT.
    gmt grdimage @earth_relief_10m

    # Place the colorbar (-D) on the outside of the plot (-DJ) in the middle
    # right (-DJMR) of the plot. Set the annoation interval to 1000 and add a
    # label for meters "m" to the y axis of the colorbar.
    gmt colorbar -DJMR -B1000 -By+l"m"
gmt end show

