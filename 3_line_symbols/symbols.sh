#!/usr/bin/env bash
# Examples of symbols with different filling and outline pens

gmt begin symbols png
	echo 0 0 | gmt plot -R-1/6/-1/6 -JX15/15 -BWSen+t"Symbols & pens" -Ba2g1 -Ggreen -Sc0.75c
	echo 1 0 | gmt plot -Ggreen -W1,black -Sc0.75c
	echo 2 0 | gmt plot -Ggreen -W1,0/130/0 -Sc0.75c
	echo 3 0 | gmt plot -Ggreen -W1,black,dashed -Sc0.75c
	echo 4 0 | gmt plot -Ggreen -W1,black,-. -Sc0.75c
	echo 5 0 | gmt plot -G- -W1,0/130/0 -Sc0.75c
	echo 0 1 | gmt plot -Gred -W1,black -Sa0.75c
	echo 1 1 | gmt plot -Gred -W1,black,dashed -Sc0.75c
	echo 2 1 | gmt plot -Gred -Sd0.75c
	echo 3 1 | gmt plot -Gred -W0.5,black -Sh0.75c
	echo 4 1 | gmt plot -W2,red -S+0.75c
	echo 5 1 | gmt plot -Gred -Ss0.75c
	echo 0 3 | gmt plot -Gbrown -W1 -Skflash/1.5c
	echo 1 3 | gmt plot -Gblue -W1 -Skhurricane/1.5c
	echo 2 3 | gmt plot -Ggray -W1 -Skpacman/1.5c
	echo 3 3 | gmt plot -Gbrown -W1 -Skstar3/1.5c
	echo 4 3 | gmt plot -Gyellow -W1 -Sksun/1.5c
	echo 5 3 | gmt plot -Gred -W1 -Skvolcano/1.5c
	echo 1 5 | gmt plot -Sk@gallo/3.5c
	echo 4 5 | gmt plot -Sk@sardinha/6c
gmt end show
