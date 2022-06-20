#!/usr/bin/env bash
# Plot a filled polygon and a line with custom symbol at its vertex

# Extract the the Italian border from the GMT DCW countries database
gmt pscoast -EIT -M | gmt convert -C+l3000 -bof > italia.bin 

gmt begin italia_II png

	# Create a polyline simutating an arc
	echo 15.0 39.0  > t.dat
	echo 13.0 40.0 >> t.dat
	echo 11.0 40.5 >> t.dat
	echo 9.0  40.2 >> t.dat
	echo 7.0  39.5 >> t.dat

	# Plot the polygon and fill it with a pattern. Also add a title to the plot
	gmt plot italia.bin -bi2f -R6/19/37/47.5 -JM15 -Baf -BWSen+t"The Italian seismologist" -W1 -Gp32+r100+fblue
	
	# Plot a dashed line
	gmt plot t.dat -W1,dashed+s

	# Repeat the symbol at the polyline vertices
	gmt plot t.dat -Skmeca/1.5c -G100 -Wfaint
gmt end show
