#!/usr/bin/env bash
#
# Pseudo-color plot of the Earth relief data.
# How to make a Mercator relief map of the Caribbean Sea (IHO27),
# How to add hill-shading efect and colorbar.

gmt begin 2_earth-relief png
    # 1. Set the region and projection of the map for the map (-B+n plots nothing).
    gmt basemap -JM15c -B+n -R-88.9369/-59.3818/7.9049/22.7054
    
#   5. Use DCW-Collections to set the region
#   gmt basemap -JM15c -B+n -RIHO27     # Caribbean Sea
#   gmt basemap -JM15c -B+n -RIHO1      # Baltic Sea
#   gmt basemap -JM15c -B+n -RCSPS      # Caspian Sea
#   gmt basemap -JM15c -B+n -RBRNI      # Borneo Island
#   gmt basemap -JM15c -B+n -RUN005     # South America (UN)
#   gmt basemap -JM15c -B+n -RSAM       # South America (geographically)
#   gmt basemap -JM15c -B+n -RSHRD      # Sahara Desert


    # 2. Plot the GMT Earth relief data
    gmt grdimage @earth_synbath           # Using default CPT
    # gmt grdimage @earth_synbath -Coleron  # Using another CPT

    # 4. With automatic hill shading (-I)
    # gmt grdimage @earth_synbath -Coleron -I
    # gmt grdimage @earth_synbath_10m -Coleron -I  # Lower resolution 

    # 3. Add a colorbar
    # gmt colorbar            # Using the default placement and style.

    # 5. Other options for the colorbar. 
    # gmt colorbar -DJRM                        # Place outside the map to the Right Middle
    # gmt colorbar -DJRM -Ba1000f               # Anotation every 1000 values
    # gmt colorbar -DJRM -Ba1000f -By+l"m"      # Add label in Y axis
    # gmt colorbar -DJRM -Baf -By+l"km" -W0.001 # Scale the values (to km)

#   6. Map Frame
    gmt basemap -Baf
gmt end #show

#   Bonus exercise:
#   1. Try the other options for the colorbar.
#   2. Try the DCW Collections to define the region. Full list at: 