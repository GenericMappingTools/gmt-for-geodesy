#!/usr/bin/env bash
# Examples of lines with different pen settings

gmt begin lines png

	# Continous red line
	echo  0 0  > t.dat
	echo 10 1 >> t.dat
	gmt plot t.dat -R-1/11/-1/11 -JX14 -Baf -BWSen -W1,red

	# Continous thick green line
	echo  0 1  > t.dat
	echo 10 2 >> t.dat
	gmt plot t.dat -W3,green

	# Dashed thick blue line
	echo  0 2  > t.dat
	echo 10 3 >> t.dat
	gmt plot t.dat -W3,blue,dashed

	# Dotted black line
	echo  0 3  > t.dat
	echo 10 4 >> t.dat
	gmt plot t.dat -W1,black,dotted

	# Dash-Dot green line
	echo  0 4  > t.dat
	echo 10 5 >> t.dat
	gmt plot t.dat -W1,0/150/0,-.

	# Using round corners
	echo  0 5  > t.dat
	echo 10 6 >> t.dat
	gmt plot t.dat --PS_LINE_CAP=round -W4,black,dashed

	# Annotated line
	echo  0 7  > t.dat
	echo 10 7 >> t.dat
	gmt plot t.dat  -Sqn15:+f25+l~ -W1,sienna

	echo 5 7.1 Now, a bit harder | gmt text -C -F+f18+jMC -Gwhite

	# Simulating circles with a dashed line
	echo  0 8  > t.dat
	echo 10 9 >> t.dat
	gmt plot t.dat --PS_LINE_CAP=round -W10,orange,0_20:0

	# Alternating larger and smaller circles
	echo  0  9  > t.dat
	echo 10 10 >> t.dat
	gmt plot t.dat --PS_LINE_CAP=round -W6,brown,0_20:0

	echo  0  9  > t.dat
	echo 10 10 >> t.dat
	gmt plot t.dat --PS_LINE_CAP=round -W3,green,0_20:10

gmt end show
