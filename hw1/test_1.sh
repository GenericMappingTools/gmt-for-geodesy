#!/usr/bin/env bash
# Test script 1: Make sure your GMT installation works
gmt begin test1
	gmt grdimage @earth_relief_20m -R0/40/0/40 -JM15c -I+d -U
	gmt coast -W1p -B
gmt end show
