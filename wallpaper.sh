#!/bin/bash
/home/main/Software/wal/wal -n -i /home/main/Pictures/wallpapers/
image=$(cat /home/main/.cache/wal/wal)
color=$(head -1 /home/main/.cache/wal/colors)
feh --bg-center $image -B $color