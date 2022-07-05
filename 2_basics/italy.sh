#!/usr/bin/env -S bash -e
# Purpose: Make our completed GMT map of Italy
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin italy pdf,png # Starting our new gmt modern mode session, calling plot italy and ask for pdf and png
    # Lay down painted continent with national borders on a Mercator map
    gmt coast -R5/20/35/50 -Wthin -Gwheat -EIT+gred -Df -Sazure -B -N1/thick,red -JM15c
    # Show where Italy is in the world via a map inset
    gmt inset begin -DjTR+w4c+o0.2c -M0 -F+gwhite+pthick
        gmt coast -Rg -JG10E/25N/4c -Gwheat -Bg -EIT+gred
    gmt inset end
gmt end show # end will finish the plots and open them in a viewer
