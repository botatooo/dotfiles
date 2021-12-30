#!/bin/sh
case ${MONS_NUMBER} in
    1)
        mons -o
        ;;
    2)
        mons -e right
        ;;
    # 3)
    #     xrandr \
    #         --fb 4566x2648 \
    #         --output eDP --primary --mode 1920x1080 --rate 144 --pos 0x0 --rotate normal \
    #         --output HDMI-1-0 --mode 1366x768 --right-of eDP --rotate normal \
    #         --output Virtual-2-1 --mode 1280x800 --right-of HDMI-1-0 --rotate normal
    #     ;;
    *)
        # Handle it manually
        ;;
esac

feh --bg-scale /usr/share/wallpapers/MilkyWay/contents/images/5120x2880.png
