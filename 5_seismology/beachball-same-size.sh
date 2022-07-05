#!/usr/bin/env bash
#
# Plot beachballs with the same size.
#
gmt begin beachball-same-size png
    gmt basemap -JM10c -R110/120/30/35 -Baf
    gmt meca meca.dat -Sa1c+m
gmt end show
