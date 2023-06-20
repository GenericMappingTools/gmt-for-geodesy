#!/usr/bin/env bash
#
# Plot cross-section of beachballs
#
gmt begin beachball-cross-section png
    # The cross-section is selected by specifying the locations (longitude and latitude)
    # of a starting point (110/33), and an ending point (120/33).
    #
    # To reverse the Y axis, set the figure heigth to a negative value (-5c)
    gmt coupe meca.dat -Sa1c -Aa110/33/120/33 \
        -JX15c/-5c -Bxaf+l"Distance (km)" -Byaf+l"Depth (km)" -BWSen \
        -R0/1000/0/60
gmt end show
