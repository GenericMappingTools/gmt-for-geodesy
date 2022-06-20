#!/usr/bin/env -S bash -e
# To make more than one plot per session you need to use gmt figure
gmt begin
    # Initiate a new figure called world1
    gmt figure world1 png
    gmt coast -Rg -JH0/15c -Gpurple -Bg
    # Initiate a second figure called world2
    gmt figure world2 png
    gmt coast -Rg -JR0/15c -Ggreen -Bg
gmt end show
