choices="laptop\nexternal"                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                               
# Your choice in dmenu will determine what xrandr command to run                                                                                                                                                                                               
chosen=$(echo -e $choices | dmenu -i)

case "$chosen" in
laptop) 
    xrandr --output DP-1 --off
    xrandr --output HDMI-2 --off
    xrandr --output eDP-1 --auto
    ./wallpaper.sh
    ;;
external)
    xrandr --output eDP-1 --off
    xrandr --output DP-1 --auto
    xrandr --output HDMI-2 --auto
    xrandr --output DP-1 --primary --left-of HDMI-2
    xrandr --output HDMI-2 --rotate left
    ./wallpaper.sh
    ;;
esac