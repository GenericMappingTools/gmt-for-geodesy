#!/usr/bin/env bash
gmt begin seis-modules png
	gmt subplot begin 2x2 -Fs10c/8c -T"GMT for Seismology" -M1c/1c
		# meca
		gmt meca meca.dat -JX?d/?d -R110/120/30/35 -Sa1c -Baf -BWSen+t"meca" -c

		# coupe
		gmt coupe meca.dat -Sa1c -Aa111/33/119/33/90/500/0/60+f -JX?/-? \
			-Bxaf+l"Distance (km)" -Byaf+l"Depth (km)" -BWSen+t"coupe" -Q -c

		# polar
		gmt meca -R85/89/25/50 -JX? -B0 -M -Sm5c -N -L -G150 -T0 -c <<- EOF
		87  35 50 -0.26 -0.71 0.97 -0.20 -0.61 2.60 27
		EOF
		gmt polar -D87/35 -M5c -N -Sc0.2c -Qe -B+t"polar" <<- EOF
		1 147.8 53 c
		2 318.6 53 c
		3 311.9 53 c
		4 122.5 45 c
		5 87.1 44 c
		6 259.9 44 c
		7 358.0 43 d
		8 32.3 40 d
		9 144.5 40 c
		10 206.2 40 d
		11 30.0 36 d
		12 88.3 31 c
		13 326.5 31 c
		14 298.4 29 c
		15 298.3 29 c
		16 316.2 28 c
		17 301.5 27 c
		18 300.7 27 c
		19 303.0 27 d
		20 302.7 26 c
		21 301.7 26 c
		22 302.3 26 c
		23 302.2 26 c
		24 314.1 26 c
		25 296.2 26 c
		26 302.3 26 c
		27 146.8 26 c
		28 145.7 26 d
		29 145.7 26 c
		30 307.0 26 c
		31 311.9 26 c
		32 136.4 25 c
		33 297.6 25 c
		34 306.1 25 c
		35 306.8 25 c
		36 307.6 25 c
		37 346.5 25 c
		39 306.5 24 c
		40 317.3 24 c
		41 305.2 24 c
		42 305.9 24 c
		43 311.9 24 c
		44 307.5 24 c
		45 138.7 24 d
		46 322.4 24 c
		47 305.3 24 c
		48 304.9 24 c
		49 309.3 24 c
		50 307.6 24 c
		51 315.5 24 d
		52 310.3 24 c
		53 308.5 24 c
		54 307.4 24 c
		55 307.5 24 c
		56 307.4 24 c
		57 307.6 24 c
		58 307.1 24 c
		59 311.5 23 d
		61 243.5 23 d
		63 345.2 23 c
		64 117.0 21 d
		65 133.1 20 c
		66 116.0 20 c
		67 231.3 17 d
		68 139.9 16 c
		69 131.7 15 d
		70 114.1 15 c
		EOF

		# sac
		gmt sac -R200/1600/12/45 -JX? -Bxa200+l'Time (s)' -By5+l"Distance (\260)" -BWSen+t'sac' \
			-Ed -M1.5c -W1.5p,red -c \
			https://github.com/GenericMappingTools/gmt/raw/master/test/pssac/ntkl.z \
			https://github.com/GenericMappingTools/gmt/raw/master/test/pssac/nykl.z \
			https://github.com/GenericMappingTools/gmt/raw/master/test/pssac/onkl.z \
			https://github.com/GenericMappingTools/gmt/raw/master/test/pssac/sdkl.z
	gmt subplot end
gmt end show
