#!/usr/bin/env bash
#
# Plot real-world beachballs on maps and cross-sections
#
# The focal mechanism information is obtained from Global CMT project
# - region: 125E-150E, 30N-47N
# - time range: 2010-01-01 to 2019-07-01
# - magnitude: >=5.5

gmt begin
	# Figure 1: Beachballs on maps
	gmt figure japan-beachballs-mapview png

	# plot basemap, setting map width, region and frames
	gmt basemap -R122/147/30/48 -JM15c -BWSen -Baf
	# Plot Earth relief by mapping values to colors using the "globe" CPT
	# Set automatic shading effects
	gmt grdimage @earth_relief_02m -I+d
	# Add the colorbar to the Top Right (TR) and shift to the right by 2 cm.
	# The colorbar width is set to be 6 cm.
	gmt colorbar -DjTR+o-2c/0c+w6c+ml -Ba2000+l"Earth relief (m)"

	# Customize the jet CPT for earthquake depth from 0 to 700
	gmt makecpt -Cjet -T0/700/100
	# Plot beachballs using the "current" CPT, by using -Z with no arguments.
	# Use -i0-9 to skip the trailing "event title" in the 13rd column (column number starts at 0).
	gmt meca japan-focal.dat -Sd0.5c -C -i0-9
	# Add the colorbar to the Bottom Right (BR) and shift to the right by 2 cm.
	# The colorbar is reversed by giving a negative length (+w-6c).
	gmt colorbar -DjBR+o-2c/0c+w-6c+ml -Ba100+l"Focal depth (km)"

	# Prepare data file for plotting and label the cross-section line
	echo 126 42 A > xsection.dat
	echo 146 40 B >> xsection.dat
	# plot the cross-section line, with a 2 point, red pen
	# the plot column only needs the longitude and latitude of the input file, and ignores the third column
	gmt plot xsection.dat -W2p,red
	# label the cross-section by "A" and "B", with a font size of 15 points
	gmt text xsection.dat -F+f15p


	# Figure 2: Beachball cross-sections
	gmt figure japan-beachballs-sideview png
	# Customize the jet CPT for earthquake depth from 0 -700
	gmt makecpt -Cjet -T0/700/100
	# The cross-section is selected by specifly the locations (longitude and latitude) of a starting point (126/42),
	# and a ending point (146/40). The cross-section plane is vertical (dip angle=90), with the width set to be 500 km,
	# and depth to be 0-70 km.
	#
	# To reverse the Y axis, set the figure heigth to a negative value (-10 cm)
	# Use -i0-11 to skip the trailing "event title" in the 13rd column (column number starts at 0).
	gmt coupe japan-focal.dat -Sd0.5c -Aa126/42/146/40+d90+w500+z0/700+r -Q -C \
		-JX15c/-10c -BWSen -Bxaf+l"Distance (km)" -Byaf+l"Depth (km)" -i0-9
	# Add the colorbar to the Bottom Right (BR) and shift to the right by 2 cm.
	# The colorbar is reversed by giving a negative length (+w-10c).
	gmt colorbar -DjBR+o-2c/0c+w-10c+ml -Np -Ba100+l"Focal depth (km)"

	# cleanup temporary files
	rm xsection.dat
gmt end show
