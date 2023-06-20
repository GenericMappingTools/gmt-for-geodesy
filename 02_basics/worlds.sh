#!/usr/bin/env -S bash -e
# Show how subplot works. Here a 3 by 1.
gmt begin worlds png
    # See subplot man page for the mysterious -F option
    gmt subplot begin 3x1 -Ff16c/25c -M0 -A
        gmt coast -Rg -JH0/? -Gpurple -Bg
        gmt coast -Rg -JR0/? -Ggreen -Bg -c
        gmt coast -Rg -JN0/? -Gorange -Bg -c
    gmt subplot end
gmt end show
