#!/usr/bin/env bash
gmt begin beachball png
    gmt basemap -JM10c -R110/120/30/35 -Baf
    gmt meca meca.dat -Sa1c
gmt end show
