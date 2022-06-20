#!/bin/bash
dem="dem_dsamp.grd"
gps="GPS.dat"
RR=`gmt grdinfo -I- $dem`
output="demo"
format="jpg"

gmt begin $output $format
    gmt basemap -JM6 $RR -Ba1f0.5
    gmt grdimage $dem -I+nt.3 -Cdem.cpt
    gmt coast -Na/0.5p,black,-.- -Slightblue -Df
    gmt grdsample dE.grd -I0.1 -Gtmpe.grd
    gmt grdsample dN.grd -I0.1 -Gtmpn.grd
    gmt grd2xyz tmpe.grd > tmpe.lld
    gmt grd2xyz tmpn.grd > tmpn.lld
    paste tmpe.lld tmpn.lld | awk '{print $1,$2,$3,$6,"0","0","0"}' > defo.dat

    gmt velo defo.dat -W0.1p,black -Se0.02/0.65/10 -A10p+eA+n10
    gmt plot new_faults.gmt -W0.5p,red
    gmt velo $gps -W1p,blue -Gblack -Se0.02/0.65/12 -A10p+ea+n10 

gmt plot -W1p,black << EOF
-117.54 35.70
-117.0 35.25
EOF

gmt plot -Sa0.2 -W0.5p,black -Ggreen <<EOF
-117.54 35.70
EOF

gmt plot -W1p,black  << EOF 
-117.59 35.79
-117.90 35.0
EOF

gmt plot -Sa0.25 -W0.5p,black -Gred <<EOF
-117.59 35.79
EOF

gmt meca -Sc0.3/5 -Gblack -h1 <<EOF 
#lon      lat     depth str1 dip1 rake1 str2  dip2  rake2  mont    exp   nlon   nlat  title
#-117.54 35.70 14 228 81 0 318 90 -171 6.4 25 0 0
-117.0 35.25 14 228 81 0 318 90 -171 6.4 23 0 0
#-117.59 35.79 12 322 78 -177 231 87 -12 7.1 26 0 0
-117.90 35.0 12 322 78 -177 231 87 -12 7.1 26 0 0
EOF

echo "-117.9 35.0 Mw7.1" | gmt text -F+f13,Helvetica,black+j5 -D0.2/0.2
echo "-117.0 35.25 Mw6.4" | gmt text -F+f13,Helvetica,black+j5 -D0.2/0.2

gmt colorbar -Dx13c/1c+w4c/0.2c -Ctmp_Dem.cpt -Bx1000 -By+lm

rm tmp*
gmt end show

