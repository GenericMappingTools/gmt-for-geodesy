#!/usr/bin/env bash
#
# Plot beachballs without labels
#
gmt begin beachball-no-labels png
    gmt basemap -JM10c -R110/120/30/35 -Baf
    # set lable font size to 0p to hide the labels
    gmt meca meca.dat -Sa1c+f0p
gmt end show
