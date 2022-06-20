#!/usr/bin/env bash
# Make a very simple spinning globe movie using coast
# Run one of the gmt movie commands commented out below
gmt begin
    gmt coast -Rg -JG${MOVIE_FRAME}/30/12c -Gburlywood -Bg -Stomato -Xc -Yc
gmt end show
# 1. Test that script works by just making a single frame (55) as PDF, no movie generated
# gmt movie earth.sh -C360p -T91 -M55,pdf -Fnone -Nearth
# 2. Test that script works by just making a single frame (55) as PNG, no movie generated
# gmt movie earth.sh -C360p -T91 -M55,png -Fnone -Nearth
# 3. Run the movie and build a MP4 animation, with elapsed time
# gmt movie earth.sh -C360p -T91 -Fmp4 -Nearth -Lf -Z
# 4. Run the movie and build a MP4 animation at 720p, with 360 degrees and progress indicator
# gmt movie earth.sh -C720p -T360 -Fmp4 -Nearth -Pa -Lf -Z
# 5. Run the movie and build a GIF animation, with A progress indicator
# gmt movie earth.sh -C360p -T91 -A -Nearth -Pc
