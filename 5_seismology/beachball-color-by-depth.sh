#!/usr/bin/env bash
#
# Plot beachballs of three basic faults, with the colors of the compressive quadrants
# determined by earthquake depths.
#
gmt begin beachball-color-by-depth png
    gmt basemap -JM15c -R110/120/30/35 -Baf
    # create a CPT from the batlow CPT, for earthquake depth from 0 to 50 km
    gmt makecpt -Cbatlow -T0/50
    # -C: let compressive part color be determined by the z-value in the third column.
    gmt meca meca.dat -Sa1c -C
    # Plot the colorbar in the Middle Right (MR) and set the label using -Bxaf+l
    gmt colorbar -Bxaf+l"Depth (km)" -DJMR
gmt end show
