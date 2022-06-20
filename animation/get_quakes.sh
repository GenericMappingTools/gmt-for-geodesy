#!/usr/bin/env bash
# This script is a helper script to obtain NEIC seismicity from the USGS
# You can edit the dates, times, magnitudes, and output order.
SITE="https://earthquake.usgs.gov/fdsnws/event/1/query.csv"
TIME="starttime=2021-01-01%2000:00:00&endtime=2021-12-31%2000:00:00"
MAG="minmagnitude=5"
ORDER="orderby=time-asc"
URL="${SITE}?${TIME}&${MAG}&${ORDER}"
# We get the data via the URL and reformat using gmt convert.  Here we use the
# -i option to shuffle the columns, plus scaling the magnitude (col 4) by 50 to
# yield a fake symbol size in km
gmt convert ${URL} -i2,1,3,4+s50,0 -hi1 > quakes.txt
# Make a standard r,g,b seismicity depth color table
gmt makecpt -Cred,green,blue -T0,70,300,10000 > quakes.cpt
# Create a file with one record per day in 2021 in the first column, with
# longitudes spanning the Pacific (from 160 to 240 evenly) in the second column.
# We will use this file to make the quakes movie in quakes.sh
gmt math -T2021-01-01T/2021-12-31T/1 --TIME_UNIT=d TNORM 40 MUL 200 ADD = times.txt
