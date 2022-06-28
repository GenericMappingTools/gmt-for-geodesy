#!/usr/bin/env bash
#
# Plot beachballs of three basic faults, with the compressive quadrants color
# determined by earthquake depth
#
gmt begin beachball-color-by-depth png
	# create a CPT from the seis master CPT, for earthquake depth from 0 to 50 km
	gmt makecpt -Cseis -T0/50
	# -C: let compressive part color be determined by the z-value in the third column.
	gmt meca meca.dat -JM15c -R110/120/30/35 -Sa1c -Baf -C
	# Plot the colorbar in the Middle Right (MR) and set the label using -Bx+l
    gmt colorbar -DJMR -Bx+l"Depth (km)"
gmt end show
