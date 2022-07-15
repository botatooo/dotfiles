#!/bin/bash

# Touchscreen setup (dell touchscreen names suck)
touchscreen="CUST0000:00 04F3:2ADF"

case ${MONS_NUMBER} in
  1)
    mons -o
    bash $HOME/.fehbg
    nimg="display"
    nsum="HDMI disconnected"
    ndesc="A single monitor has been detected: eDP1"
    ;;
  2)
    mons -e right
    bash $HOME/.fehbg
    xinput --map-to-output "$touchscreen" $(xrandr --prop | grep eDP | cut -f1 -d" ")
    nimg="display"
    nsum="HDMI connected"
    ndesc="Two monitors have been detected: eDP1 and HDMI1"
    ;;
  *)
    # Handle it manually
    bash $HOME/.fehbg
    xinput --map-to-output "$touchscreen" $(xrandr --prop | grep eDP | cut -f1 -d" ")
    dunstify --icon=display "when tf did you get rich"
    ;;
esac

dunstify --icon=$nimg "$nsum" "$ndesc"
