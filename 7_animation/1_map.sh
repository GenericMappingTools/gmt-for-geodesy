#!/usr/bin/env bash
# Make a very simple map of the globe vied from lon = 30W, lat = 30N
gmt begin 1_map png
    gmt coast -Rg -JG30W/30N/12c -Gburlywood -Bg -Stomato
gmt end show
