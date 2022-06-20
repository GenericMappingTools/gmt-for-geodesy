#!/usr/bin/env bash
#
# Exercise: make a pseudo-color map with overlayed contours and hillshading of
# the country of your choice.
#
# This is my solution for my home country of Brazil.

gmt begin exercise png

    # Set the basemap with annotations, a Mercator projection, and region for
    # Brazil. I added some padding around the region using the +r modifier
    # (the number is degrees). Use the default borders (-Bafg) and add a title
    # to the plot (-B+t)
    gmt basemap -RBR+r2 -JM20c -Bafg -B+t"Relief map of Brazil"

    # Plot the earth relief data using the "geo" CPT. Adding shading at a 45
    # degree azimuth (+a45) with intensity scaled to 2 (+nt2; the default is
    # +nt1).
    gmt grdimage @earth_relief_05m -I+a45+nt2 -Cgeo

    # Plate a colorbar on the right side at a larger offset in x (+o) and
    # customize the width and height (+w). Set the label interval (-B) and add
    # an annotation to the x axis (-Bx+l).
    gmt colorbar -DJMR+o1.6c/0+w10c/0.3c -B2000 -Bx+l"meters"

    # Plot contours on top of the shaded grid. Limit to positive contours only
    # (-Lp) and ommit contours less 100km long (-Q). For the annotations,
    # configure the font size to be 7pt (+f).
    gmt grdcontour @earth_relief_10m -Lp -Q100k \
        -C250 -Wcthinnest,gray20 \
        -A500+f7p -Wathinnest,gray20

    # Plot the country borders (-N1) in white.
    gmt coast -N1/white

gmt end show
