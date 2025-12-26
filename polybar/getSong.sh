#!/bin/sh

#xwininfo -root -tree lists all the offshoots of the -root window, grep all the lines with spotify, awk sets delimiter to " and prints out the second value, grep -v is inverted so excluedes spotify
xwininfo -root -tree | grep spotify | awk -F'"' '{print $2}' | grep -v 'spotify'
