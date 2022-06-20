# Extract the ouline of mainland Italia and use it as example for filling polygons

# Extract the main land polygon of Italia
D = coast(DCW=:IT, dump=true, largest=true);

# Plot it with a fill pattern using a Mercator projection
plot(D, region=(6,19,37,47.5), proj=:Mercator, pen=1,
     fill=(pattern=32, dpi=100, fgcolor=:blue))

# Plot a "meca" custom symbol
plot!([14 39], marker=(custom=:meca, size="3c"), fill=100, ml=0.25)

# Add a polygon at the bottom to simulate the grass
plot!([6 37.9; 19 37.9; 19 37; 6 37; 6 37.9], straight_lines=true,
      fill=(pattern=47, dpi=200, bg=:green, fg=(0,150,0)), show=1)