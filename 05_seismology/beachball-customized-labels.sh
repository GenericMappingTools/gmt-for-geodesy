#!/usr/bin/env bash
#
# Plot beachballs with customized labels
#

gmt begin beachball-customized-labels png
    gmt basemap -JM10c -R110/120/30/35 -Baf
    # +a: angle of lables
    # +f: size and color of labels
    # +j: location of labels
    # +o: extra offsets in x- and y- directions
    gmt meca meca.dat -Sa1c+a30+f6p,blue+jBC+o0.2c/0c
gmt end show
