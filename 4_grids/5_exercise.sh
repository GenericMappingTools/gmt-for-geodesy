#!/usr/bin/env bash
#
# Script adapted from https://github.com/GenericMappingTools/2021-unavco-course/blob/main/grids/exercise.sh)
# done by Leonardo Uieda,
# Exercise: make a pseudo-color map with overlayed contours and hillshading of
# the country of your choice.
#
# This is my solution for my home country of Argentina.

gmt begin 5_exercise png

    # Set a Mercator projection, and region for Argentina.
    gmt basemap -RAR,FK,GS+r2 -JM15c -B+n
    
    # Set the default freme (-Baf) and add a title to the plot (-B+t).
    gmt basemap -Baf -B+t"Relief map of Argentina"

    # Plot the earth synbath data using the "oleron" CPT. Adding shading at a 45
    # degree azimuth (+a45) with intensity scaled to 2 (+nt2)
    gmt grdimage @earth_synbath -I+a45+nt2 -Coleron

    # Plot contours on top of the shaded grid. Limit to negative contours only
    # (-Ln) and ommit contours less 1000 km long (-Q). For the annotations,
    # configure the font size to be 6pt (+f).
    gmt grdcontour @earth_synbath -Ln -Q1000k \
        -C200 -Wcthinnest,gray20 \
        -A1000+f6p+gwhite+p -Wathinnest,gray20

    # Plot the country borders (-N1) in white.
    gmt coast -N1/white

    # Plate a colorbar inside ner the right top with and offset in x (+o) and
    # customize the width and height (+w). Set the label interval (-B) and add
    # an annotation to the x axis (-Bx+l). Add a frame around the colorbar (-F).
    gmt colorbar -DjTR+o1.7c/0.4c+w70%/0.5c -I -Ba1 -Bx+l"km" -W0.001 -F+gwhite+p+r+s

gmt end #show
