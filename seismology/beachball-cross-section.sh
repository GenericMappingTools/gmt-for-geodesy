#!/usr/bin/env bash
#
# Plot cross-section of beachballs
#
gmt begin beachball-cross-section png
	# The cross-section is selected by specifying the locations (longitude and latitude)
	# of a starting point (111/33), and an ending point (119/33).
	# The cross-section plane is vertical (dip angle=90), with the width set to be 500 km,
	# and depth to be 0-50 km.
	# +r automatically determine the frame region for us. So -R is not necessary.
	#
	# To reverse the Y axis, set the figure heigth to a negative value (-8c)
	gmt coupe meca.dat -Sa1c -Aa111/33/119/33+d90+w500+z0/50+r -Q \
		-JX15c/-8c -Bxaf+l"Distance (km)" -Byaf+l"Depth (km)" -BWSen
gmt end show
