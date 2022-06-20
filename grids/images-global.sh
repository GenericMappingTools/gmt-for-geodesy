#!/usr/bin/env bash
#
# Sample contour plot using global Earth relief

gmt begin images-global png
    # Create the map frame and set the region to global (-Rg) and projection to
    # Robinson (-JN)
    gmt basemap -R-180/180/-60/60 -JM20c -Baf

    gmt grdimage @earth_relief_30m -I+d

    # Place the colorbar (-D) on the outside of the plot (-DJ) in the middle
    # right (-DJMR) of the plot. Set the annoation interval to 1000 and add a
    # label for meters "m" to the y axis of the colorbar.
    gmt colorbar -DJMR+w6c/0.2c -B2500 -By+l"m"
gmt end show
