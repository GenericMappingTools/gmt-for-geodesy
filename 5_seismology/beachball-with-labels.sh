#!/usr/bin/env bash
#
# Plot beacballs, with better labels
#
gmt begin beachball-with-labels png
	# red labels below beachballs
	gmt meca meca.dat -JM15c -R110/120/30/35 -Sa2c+f12p,red+jBC -Baf
gmt end show
