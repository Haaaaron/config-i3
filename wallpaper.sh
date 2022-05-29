#!/bin/bash
wal -n -i /home/$USER/Pictures/wallpapers/
image=$(cat /home/$USER/.cache/wal/wal)
color=$(head -1 /home/$USER/.cache/wal/colors)
feh --bg-center $image -B $color