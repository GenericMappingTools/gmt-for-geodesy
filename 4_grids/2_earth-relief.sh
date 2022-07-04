#!/usr/bin/env bash
#
# Pseudo-color plot of the Earth relief data
# Make a relief map of the Caribbean Sea.

gmt begin 2_earth-relief png
    # Sets the region and projection of the map for the map. (-B+n plots nohing)
    gmt basemap -R"Caribbean Sea" -JM15c -B+n

    # Plot the GMT Earth relief data
    gmt grdimage @earth_synbath          # Using default CPT
    #gmt grdimage @earth_synbath -Coleron  # Using another CPT

    # With automatic hill shading (-I+d)
    # gmt grdimage @earth_synbath -I+d

    # Add a colorbar
    # gmt colorbar           # Using the default placement and style.
    # gmt colorbar -DJRM      # Place outside the map to the Right Middle

#   Other options
    # gmt colorbar -DJRM -Ba1000f          # Anotation every 1000 values
    # gmt colorbar -DJRM -Ba1000f -By+l"m" # Add label in Y axis
    # gmt colorbar -DJRM -Baf -By+l"km" -W0.001 # Scale the values (to km)


#   Map Frame
    gmt basemap -Baf
gmt end #show


#   Bonus Exercise:
#   Try the other options for the colorbar