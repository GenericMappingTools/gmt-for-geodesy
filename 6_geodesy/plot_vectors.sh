echo 0 0 1 1 0 0 0  > tmp.dat
JRB="-JX3/3 -R-1/2/-1/2 -Ba1f1g1"
gmt begin vectors jpg
    gmt velo tmp.dat $JRB -Se1.0/0.65/10 -W1p -A20p+ea+gblack+l
    gmt velo tmp.dat -Se1.0/0.65/10 -W1p -A20p+ba+gblack+r -Y-0.2
gmt end show
