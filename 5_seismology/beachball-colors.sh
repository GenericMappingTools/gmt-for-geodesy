#!/usr/bin/env bash
#
# Plot beachballs of three basic faults (strike-slip, normal and reverse faults),
# with the compressional and extensive quadrants filled by different colors.
#
gmt begin beachball-colors png
	# -G select the filling of the compressional quadrants
    # -E select the filling of the extensive quadrants
	gmt meca meca.dat -JM10c -R110/120/30/35 -Sa1c -Baf -Elightyellow -Gred
gmt end show
