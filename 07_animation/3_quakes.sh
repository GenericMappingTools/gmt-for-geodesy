#!/usr/bin/env bash
# Make sure you run get_3_quakes.sh FIRST to obtain some data and create the CPT
# and times data file needed by movie script 3_quakes.sh.
#
# This script (below) creates a single frame, laying down a coast map and then
# plotting only the events that should be visible for the given time (set by -T).
gmt begin
    gmt coast -Rg -JG${MOVIE_COL1}/30/12c -Gburlywood -Bg -Sgray -X6c -Y0.75c
    gmt events 3_quakes.txt -C3_quakes.cpt -T${MOVIE_COL0} -SE- -Es+r2+d6 \
        -Ms5+c0.5 -Mi1+c-0.6 -Mt+c0 --TIME_UNIT=d 
gmt end show
# 1. Test that script works by just making a single frame (50) as PDF, no movie generated
# gmt movie 3_quakes.sh -C360p -T3_times.txt -M50,pdf -N3_quakes -Lc0 --FORMAT_CLOCK_MAP=-
# 2. Test that script works by just making a single frame (50) as PNG, no movie generated
# gmt movie 3_quakes.sh -C360p -T3_times.txt -M50,png -N3_quakes -Lc0 --FORMAT_CLOCK_MAP=-
# 3. Run the movie and build a MP4 animation at 360p resolution
# gmt movie 3_quakes.sh -C360p -T3_times.txt -Fmp4 -N3_quakes_360p -Pb -Lc0 -Z --FORMAT_CLOCK_MAP=-
# 4. Run the movie and build a MP4 animation at 720p resolution
# gmt movie 3_quakes.sh -C720p -T3_times.txt -Fmp4 -N3_quakes_720p -Pb -Lc0 -Z --FORMAT_CLOCK_MAP=-
# 5. Run the movie and build a GIF animation at 360p resolution
# gmt movie 3_quakes.sh -C360p -T3_times.txt -Fgif -N3_quakes_360p -Pb -Lc0 -Z --FORMAT_CLOCK_MAP=-
