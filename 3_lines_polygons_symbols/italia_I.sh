#!/usr/bin/env bash
# Extract the ouline of mainland Italia and use it as example for filling polygons

# Extract the the Italian border from the GMT DCW countries database
gmt pscoast -EIT -M | gmt convert -C+l3000 -bof > italia.bin 

gmt begin italia_I png
	#gmt plot italia.bin -bi2f -R6/19/37/47.5 -JM15 -Baf -W1,dash -Glightblue
	# Plot the Italian birder using the polygon in binary format, and paint it
	gmt plot italia.bin -bi2f -R6/19/37/47.5 -JM15 -Baf -W1 -Gp32+r100+fblue

	# Add the "meca" symbol at the tip of the Italian "boot"
	echo 14 39 | gmt plot -Skmeca/3c -G100 -Wfaint
gmt end show
