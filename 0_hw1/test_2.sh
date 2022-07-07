#!/usr/bin/env bash
# Test script 2: Make sure supplemental modules like meca are available.
gmt begin test2 png
	echo 0 0 0 30 90 0 4 | gmt meca -Sa2c -R-2/2/-2/2 -JX5c -Baf
gmt end show
